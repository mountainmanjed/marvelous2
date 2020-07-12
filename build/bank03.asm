;==============================================
loc_8c03012c:
	mov.l @(0x60,PC),r2
	mov 0x00,r3
	sts.l pr,@-r15
	mov.w r3,@r2
	mov.l @(0x60,PC),r2
	mov.l @(0x5C,PC),r1
	mov.l @(0x60,PC),r0
	mov.w r3,@r1
	mov.w r3,@r2
	mov.l @(0x60,PC),r2
	jsr @r2
	mov.w r3,@r0
	mov.l @(0x5C,PC),r1
	jsr @r1
	nop
	mov.l @(0x5C,PC),r2
	jsr @r2
	nop
	mov.l @(0x58,PC),r1
	jsr @r1
	nop
	mov.l @(0x58,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c03015c:
	mov.l @(0x3C,PC),r4
	mov.w @(0x24,PC),r3
	mov.w @r4,r2
	add r3,r2
	mov.w @(0x24,PC),r3
	mov.w r2,@r4
	mov.l @(0x2C,PC),r4
	mov.w @(0x1A,PC),r2
	mov.w @r4,r1
	add r2,r1
	mov.w r1,@r4
	mov.l @(0x20,PC),r4
	mov.w @(0x12,PC),r1
	mov.w @r4,r0
	add r1,r0
	mov.w r0,@r4
	mov.l @(0x10,PC),r4
	mov.w @r4,r0
	add r3,r0
	rts
	mov.w r0,@r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x1000
	#data 0x0800
	#data 0x0400
	#data 0x0200
	#align4
	#data 0x8c289bd6
	#data 0x8c289bd4
	#data 0x8c289bd2
	#data 0x8c289bd0
	#data bank0f.loc_8c0f0408
	#data bank0f.loc_8c0f048e
	#data bank0f.loc_8c0f1410
	#data bank0f.loc_8c0f1698
	#data bank0f.loc_8c0f236c

;==============================================
loc_8c0301b4:
	mov 0x04,r0
	fmov @r4,fr4
	fmov @(r0,r4),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0301c0
	fmov @(r0,r4),fr4

loc_8c0301c0:
	mov 0x08,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0301ca
	fmov @(r0,r4),fr4

loc_8c0301ca:
	rts
	fmov fr4,fr0

;==============================================
loc_8c0301ce:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l @(0x48,PC),r0
	extu.b r13,r14
	shll2 r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c0301ee

loc_8c0301e2:
	mov r13,r5
	bsr loc_8c0301f6
	mov r14,r4
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c0301e2

loc_8c0301ee:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0301f6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov.l @(0x20,PC),r3
	mov r4,r14
	mov.b r5,@r15
	jsr @r3
	mov 0x00,r4
	mov.w @(0xE,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c03022c
	mov.l @(0x10,PC),r3
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030232
	nop

;##############################################
	#data 0x00c8
	#align4
	#data 0x8c287a5c
	#data bank12.loc_8c120950
	#data bank12.loc_8c1201e0

;----------------------------------------------
loc_8c03022c:
	mov.l @(0x80,PC),r3
	jsr @r3
	nop

loc_8c030232:
	mov.w @(0x72,PC),r0
	mov.w @(0x6E,PC),r3
	mov.l @(r0,r14),r2
	tst r3,r2
	bt loc_8c030244
	mov.l @(0x74,PC),r2
	mov.w @(0x68,PC),r4
	jsr @r2
	add r14,r4

loc_8c030244:
	mov.l @(0x70,PC),r3
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bf loc_8c030274
	mov.w @(0x58,PC),r0
	mov.l @(0x6C,PC),r2
	mov.l @(r0,r14),r1
	tst r2,r1
	bt loc_8c030274
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x0B,r0
	bf loc_8c030274
	mov.w @(0x4A,PC),r0
	mov.l @(r0,r14),r1
	tst r1,r1
	bf loc_8c030274
	mova @(0x58,PC),r0
	mov.l @(0x58,PC),r3
	fmov @r0,fr5
	fldi1 fr15
	fmov fr15,fr6
	jsr @r3
	fmov fr15,fr4

loc_8c030274:
	mov.w @(0x30,PC),r0
	mov.l @(r0,r14),r0
	tst 0x01,r0
	bt loc_8c030302
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c0302a0
	cmp/eq 0x06,r0
	bt loc_8c0302a0
	cmp/eq 0x0B,r0
	bt loc_8c0302a0
	cmp/eq 0x0D,r0
	bt loc_8c0302a0
	cmp/eq 0x07,r0
	bt loc_8c0302c8
	cmp/eq 0x08,r0
	bt loc_8c0302c8
	cmp/eq 0x09,r0
	bt loc_8c0302c8
	bra loc_8c030302
	nop

loc_8c0302a0:
	mov r14,r4
	bra loc_8c0302fc
	add 0x34,r4

;##############################################
	#data 0x4000
	#data 0x00cc
	#data 0x0088
	#data 0x00c8
	#align4
	#data bank12.loc_8c121100
	#data bank12.loc_8c120540
	#data 0x8c212c14
	#data 0x00010000
	#data 0x3f6e147b
	#data bank12.loc_8c120fc0

;----------------------------------------------
loc_8c0302c8:
	mov r14,r2
	mov.l @(0x118,PC),r3
	mov r15,r1
	add 0x34,r2
	add 0x10,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x110,PC),r0
	mov r15,r4
	fmov @r0,fr4
	mov 0x10,r0
	fmov @(r0,r15),fr3
	mov 0x10,r0
	add 0x10,r4
	fmul fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r15),fr3
	mov 0x14,r0
	fmul fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	fmov @(r0,r15),fr3
	mov 0x18,r0
	fmul fr4,fr3
	fmov fr3,@(r0,r15)

loc_8c0302fc:
	mov.l @(0xEC,PC),r3
	jsr @r3
	nop

loc_8c030302:
	mov.w @(0xD8,PC),r3
	mov.l @(0xE8,PC),r12
	mov r3,r0
	nop
	add 0xCC,r0
	mov.l @(r0,r14),r2
	tst r3,r2
	bt loc_8c030340
	mov 0x34,r0
	mov r15,r13
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov @(r0,r12),fr2
	mov 0x3C,r0
	add 0x04,r13
	mov.l @(0xD0,PC),r2
	fsub fr3,fr2
	fmov fr2,@r13
	fmov @(r0,r14),fr3
	mov 0x20,r0
	fmov @(r0,r12),fr2
	mov 0x08,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r13)
	fmov @r13,fr4
	fmov fr2,fr3
	jsr @r2
	fdiv fr3,fr4
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r0,r4

loc_8c030340:
	mov.w @(0x9C,PC),r0
	mov.l @(r0,r14),r0
	tst 0x80,r0
	bt loc_8c030380
	mov 0x38,r0
	mov r15,r13
	fmov @(r0,r14),fr3
	mov 0x1C,r0
	fmov @(r0,r12),fr2
	mov 0x04,r0
	add 0x04,r13
	mov.l @(0x9C,PC),r3
	fsub fr3,fr2
	fmov fr2,@(r0,r13)
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x20,r0
	fmov @(r0,r12),fr2
	mov 0x08,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r13)
	mov 0x04,r0
	fmov @(r0,r13),fr3
	mov 0x08,r0
	fmov @(r0,r13),fr2
	fneg fr3
	fmov fr3,fr4
	jsr @r3
	fdiv fr2,fr4
	mov.l @(0x80,PC),r2
	jsr @r2
	mov r0,r4

loc_8c030380:
	mov.w @(0x5C,PC),r0
	mov.l @(r0,r14),r0
	tst 0x08,r0
	bt loc_8c030390
	mov.l @(0x74,PC),r3
	mov 0x48,r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c030390:
	mov.w @(0x4C,PC),r0
	mov.l @(r0,r14),r0
	tst 0x04,r0
	bt loc_8c0303a0
	mov.l @(0x5C,PC),r3
	mov 0x44,r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c0303a0:
	mov.w @(0x3C,PC),r0
	mov.l @(r0,r14),r0
	tst 0x02,r0
	bt loc_8c0303b2
	mov.l @(0x50,PC),r3
	mov r14,r4
	add 0x40,r4
	jsr @r3
	mov.l @r4,r4

loc_8c0303b2:
	mov.w @(0x2A,PC),r0
	mov.l @(r0,r14),r0
	tst 0x10,r0
	bt loc_8c0303c2
	mov.l @(0x48,PC),r3
	mov r14,r4
	jsr @r3
	add 0x50,r4

loc_8c0303c2:
	mov.l @(0x44,PC),r2
	mov.w @(0x1A,PC),r4
	jsr @r2
	add r14,r4
	mov.l @(0x40,PC),r3
	jsr @r3
	mov 0x01,r4
	add 0x1C,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0100
	#data 0x00cc
	#data 0x0088
	#align4
	#data bank12.loc_8c1294c8
	#data 0x3dcccccd
	#data bank12.loc_8c1210e0
	#data 0x8c26a518
	#data bank11.loc_8c11e170
	#data bank12.loc_8c120cd0
	#data bank12.loc_8c120b20
	#data bank12.loc_8c120d90
	#data bank12.loc_8c120ff0
	#data bank11.loc_8c11fa80
	#data bank12.loc_8c120900

;==============================================
loc_8c030410:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l @(0xE0,PC),r0
	extu.b r13,r14
	shll2 r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c03044a

loc_8c030424:
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c030444
	mov.w @(0xBE,PC),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c030444
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c03043e
	bsr loc_8c0305ce
	mov r14,r4

loc_8c03043e:
	mov r13,r5
	bsr loc_8c030452
	mov r14,r4

loc_8c030444:
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c030424

loc_8c03044a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c030452:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA0,PC),r3
	mov r4,r14
	mov.b r5,@r15
	jsr @r3
	mov 0x00,r4
	mov.l @(0x9C,PC),r2
	mov.w @(0x88,PC),r4
	jsr @r2
	add r14,r4
	mov.w @(0x84,PC),r0
	mov.l @(r0,r14),r0
	tst 0x10,r0
	bt loc_8c03047e
	mov r14,r4
	bsr loc_8c0301b4
	add 0x50,r4
	mov.l @(0x88,PC),r3
	jsr @r3
	fmov fr0,fr4

loc_8c03047e:
	bsr loc_8c030550
	mov r14,r4
	mov.w @(0x6C,PC),r0
	mov.w @(0x6C,PC),r3
	mov.l @(r0,r14),r2
	tst r3,r2
	bt loc_8c0304a0
	mov.l @(0x78,PC),r2
	mov.w @(0x64,PC),r4
	jsr @r2
	nop
	mov.l @(0x74,PC),r3
	mov.w @(0x54,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030544
	nop

loc_8c0304a0:
	mov.l @(r0,r14),r1
	mov.l @(0x6C,PC),r2
	tst r2,r1
	bt loc_8c0304b0
	mov.l @(0x68,PC),r3
	mov.w @(0x40,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c0304b0:
	mov.w @(0x3E,PC),r0
	mov.b @r15,r1
	mov.l @(r0,r14),r0
	tst 0x20,r0
	bt.s loc_8c030520
	extu.b r1,r1
	mov r1,r0
	nop
	cmp/eq 0x0B,r0
	bt loc_8c0304cc
	mov r1,r0
	nop
	cmp/eq 0x0D,r0
	bf loc_8c0304dc

loc_8c0304cc:
	mov 0x74,r0
	mov.l @(0x48,PC),r3
	fmov @(r0,r14),fr4
	add 0x10,r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030544
	nop

loc_8c0304dc:
	mov 0x74,r0
	mov.l @(0x3C,PC),r3
	fmov @(r0,r14),fr4
	add 0x10,r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030544
	nop

;##############################################
	#data 0x012c
	#data 0x0084
	#data 0x0088
	#data 0x00cc
	#data 0x2000
	#data 0x0080
	#align4
	#data 0x8c287a5c
	#data bank12.loc_8c120950
	#data bank12.loc_8c1201e0
	#data bank12.loc_8c122710
	#data bank12.loc_8c123370
	#data bank12.loc_8c123410
	#data 0x00008000
	#data bank13.loc_8c132640
	#data bank12.loc_8c123610
	#data bank12.loc_8c123650

;----------------------------------------------
loc_8c030520:
	mov r1,r0
	nop
	cmp/eq 0x0B,r0
	bt loc_8c030530
	mov r1,r0
	nop
	cmp/eq 0x0D,r0
	bf loc_8c03053c

loc_8c030530:
	mov.l @(0xFC,PC),r3
	mov.w @(0xF0,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030544
	nop

loc_8c03053c:
	mov.l @(0xF4,PC),r3
	mov.w @(0xE4,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c030544:
	mov 0x01,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xEC,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c030550:
	mov.w @(0xD8,PC),r0
	mov.w @(0xD4,PC),r3
	fmov fr15,@-r15
	mov.l @(0xE4,PC),r6
	fmov fr14,@-r15
	mov.w @(0xCA,PC),r5
	fmov fr13,@-r15
	mov.l @(r0,r4),r2
	tst r3,r2
	bt loc_8c03059c
	mov.l @(r0,r4),r2
	tst r2,r5
	bt loc_8c03058e
	mov r6,r5
	mov 0x04,r0
	add 0x08,r5
	fmov @(r0,r5),fr3
	mov 0x78,r0
	fmov @(r0,r4),fr15
	mov 0x08,r0
	fmul fr3,fr15
	fmov @(r0,r5),fr3
	mov 0x7C,r0
	fmov @(r0,r4),fr14
	mov 0x0C,r0
	fmul fr3,fr14
	fmov @(r0,r5),fr3
	add 0x74,r0
	fmov @(r0,r4),fr13
	bra loc_8c0305ba
	fmul fr3,fr13

loc_8c03058e:
	mov 0x78,r0
	fmov @(r0,r4),fr15
	mov 0x7C,r0
	fmov @(r0,r4),fr14
	add 0x04,r0
	bra loc_8c0305ba
	fmov @(r0,r4),fr13

loc_8c03059c:
	tst r2,r5
	bt loc_8c0305b2
	mov r6,r4
	mov 0x04,r0
	add 0x08,r4
	fmov @(r0,r4),fr15
	mov 0x08,r0
	fmov @(r0,r4),fr14
	mov 0x0C,r0
	bra loc_8c0305ba
	fmov @(r0,r4),fr13

loc_8c0305b2:
	fldi1 fr4
	fmov fr4,fr13
	fmov fr4,fr14
	fmov fr4,fr15

loc_8c0305ba:
	fmov fr13,fr6
	fmov @r15+,fr13
	fmov fr14,fr5
	fmov @r15+,fr14
	mov.l @(0x7C,PC),r3
	fmov fr15,fr4
	jmp @r3
	fmov @r15+,fr15

loc_8c0305ca:
	rts
	mov.l r5,@(0x28,r4)

;==============================================
loc_8c0305ce:
	mov r4,r3
	mov.l r4,@-r15
	mov.l @(0x28,r3),r2
	jmp @r2
	add 0x04,r15

;==============================================
loc_8c0305d8:
	sts.l pr,@-r15
	mov.l @(0x68,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(0x5C,PC),r3
	mov.w @(0x40,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x01,r2
	cmp/gt r2,r1
	bt loc_8c030620
	mov.l @(0x54,PC),r1
	jsr @r1
	nop
	bsr loc_8c0301ce
	mov 0x05,r4
	bsr loc_8c030410
	mov 0x05,r4
	mov.l @(0x48,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x07,r4
	bsr loc_8c030410
	mov 0x07,r4
	bsr loc_8c0301ce
	mov 0x01,r4
	bsr loc_8c030410
	mov 0x01,r4
	mov.l @(0x38,PC),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c030620:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0084
	#data 0x0800
	#data 0x0400
	#data 0x00cc
	#data 0x008e
	#align4
	#data bank12.loc_8c1235b0
	#data bank12.loc_8c1235e0
	#data bank12.loc_8c120900
	#data 0x8c26a89c
	#data bank12.loc_8c123780
	#data bank02.loc_8c02e334
	#data 0x8c26823c
	#data bank02.loc_8c02e1a4
	#data bank02.loc_8c02e246
	#data loc_8c031504

;==============================================
loc_8c030658:
	sts.l pr,@-r15
	mov.l @(0xE0,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(0xD4,PC),r3
	mov.w @(0xC8,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x01,r2
	cmp/gt r2,r1
	bt loc_8c030686
	mov.l @(0xCC,PC),r1
	jsr @r1
	nop
	bsr loc_8c0301ce
	mov 0x05,r4
	mov 0x05,r4
	bra loc_8c030410
	lds.l @r15+,pr

loc_8c030686:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03068c:
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	mov 0x0B,r4
	bra loc_8c030410
	lds.l @r15+,pr

;==============================================
loc_8c03069e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x94,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(0x98,PC),r2
	mov.l @(0x90,PC),r5
	jsr @r2
	mov 0x04,r4
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x90,PC),r14
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c0306d6
	mov.l @(0x8C,PC),r13

loc_8c0306ca:
	mov.w @(0x6A,PC),r4
	jsr @r13
	add r14,r4
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c0306ca

loc_8c0306d6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0306de:
	sts.l pr,@-r15
	mov.l @(0x58,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(0x50,PC),r3
	mov.w @(0x42,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x01,r2
	cmp/gt r2,r1
	bt loc_8c03070c
	mov.l @(0x44,PC),r1
	jsr @r1
	nop
	bsr loc_8c0301ce
	mov 0x05,r4
	mov 0x05,r4
	bra loc_8c030410
	lds.l @r15+,pr

loc_8c03070c:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c030712:
	sts.l pr,@-r15
	mov.l @(0x24,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	mov 0x0B,r4
	bra loc_8c030410
	lds.l @r15+,pr

loc_8c030724:
	sts.l pr,@-r15
	mov.l @(0x34,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x05,r4
	mov 0x05,r4
	bra loc_8c030410
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x008e
	#data 0x00dc
	#align4
	#data bank02.loc_8c02e334
	#data 0x8c26823c
	#data bank02.loc_8c02e1a4
	#data bank14.loc_8c14cadc
	#data bank12.loc_8c127af0
	#data bank11.loc_8c11b800
	#data 0x8c287a74
	#data bank12.loc_8c1244b0
	#data bank02.loc_8c02e378

;==============================================
loc_8c030760:
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x05,r4
	bsr loc_8c030410
	mov 0x05,r4
	mov.l @(0xC8,PC),r2
	jsr @r2
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	mov 0x0B,r4
	bra loc_8c030410
	lds.l @r15+,pr

;==============================================
loc_8c030780:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xB4,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(0xA8,PC),r3
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c0307ae
	bsr loc_8c0301ce
	mov 0x0C,r4
	lds.l @r15+,pr
	mov 0x0C,r4
	mov.l @r15+,r13
	bra loc_8c030410
	mov.l @r15+,r14

loc_8c0307ae:
	mov.l @(0x94,PC),r14
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c0307ca
	mov.l @(0x90,PC),r13

loc_8c0307b8:
	mov.w @(0x76,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0307c4
	jsr @r13
	mov r14,r4

loc_8c0307c4:
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c0307b8

loc_8c0307ca:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0307d2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x60,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0D,r4
	mov.l @(0x68,PC),r14
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c030810
	mov.l @(0x64,PC),r13

loc_8c0307ec:
	mov.w @(0x42,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c03080a
	mov.w @(0x3C,PC),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c030804
	jsr @r13
	mov r14,r4
	bra loc_8c03080a
	nop

loc_8c030804:
	mov 0x0D,r5
	bsr loc_8c030452
	mov r14,r4

loc_8c03080a:
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c0307ec

loc_8c030810:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c030818:
	sts.l pr,@-r15
	mov.l @(0x20,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	mov 0x0B,r4
	bra loc_8c030410
	lds.l @r15+,pr

;==============================================
loc_8c03082a:
	mov.l @(0x28,PC),r3
	mov 0x0C,r5
	jmp @r3
	mov r5,r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x00d4
	#align4
	#data bank02.loc_8c02e1a4
	#data bank02.loc_8c02e334
	#data 0x8c26823c
	#data 0x8c287a8c
	#data bank01.loc_8c01836c
	#data 0x8c287a90
	#data bank02.loc_8c02861e
	#data loc_8c0312d6

;==============================================
;Render Characters?
loc_8c030858:
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3 ;8c0310f2
	jsr @r3
	nop
	tst r0,r0
	bt.s loc_8c030886
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c030876
	bsr loc_8c030d56
	nop
	bra loc_8c0308a6
	nop

loc_8c030876:
	bsr loc_8c0308c2
	nop
	bsr loc_8c030d36
	nop
	bsr loc_8c030d56
	nop
	bra loc_8c0308aa
	nop

loc_8c030886:
	bsr loc_8c0308c2
	nop
	mov.l @(0xA0,PC),r3 ;8c26823c
	mov.w @(0x92,PC),r0 ;98
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c03089e
	bsr loc_8c030cc0
	nop
	bsr loc_8c030d12
	nop

loc_8c03089e:
	bsr loc_8c030d24
	nop
	bsr loc_8c030d36
	nop

loc_8c0308a6:
	bsr loc_8c030dcc
	nop

loc_8c0308aa:
	mov.l @(0x80,PC),r1 ;8c26823c
	mov 0x2E,r2
	mov.l @r1,r0
	mov.b @(r0,r2),r0
	cmp/eq 0x01,r0
	bf loc_8c0308bc
	mov.l @(0x78,PC),r3;8c031470
	jmp @r3
	lds.l @r15+,pr

loc_8c0308bc:
	lds.l @r15+,pr
	rts
	nop

;==============================================
;Render_sprites:
loc_8c0308c2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x00,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(0x64,PC),r4;8c2895e0
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x4A,PC),r9
	mov r4,r8
	mov.l @(0x58,PC),r12
	add 0x10,r8
	mov r4,r13

loc_8c0308e0:
	mov r11,r14
	bra loc_8c030902
	mov r12,r10

loc_8c0308e6:
	mov r14,r0
	nop
	shll2 r0
	mov.l @(r0,r10),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c0308fc
	bsr loc_8c03093c
	nop
	bra loc_8c030900
	nop

loc_8c0308fc:
	bsr loc_8c030af8
	nop

loc_8c030900:
	add 0x01,r14

loc_8c030902:
	mov.b @r13,r3
	cmp/ge r3,r14
	bf loc_8c0308e6
	add 0x01,r13
	cmp/hs r8,r13
	bf.s loc_8c0308e0
	add r9,r12

loc_8c030910:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0098
	#data 0x0180
	#align4
	#data loc_8c0310f2
	#data 0x8c26823c
	#data loc_8c031470
	#data 0x8c287de0
	#data 0x8c2895e0

;==============================================
;Render Main Sprite
loc_8c03093c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x15E,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c030950
	bra loc_8c030a9c
	nop

loc_8c030950:
	mov.l @(0x168,PC),r3
	jsr @r3
	nop
	mova @(0x168,PC),r0
	mov.l @(0x16C,PC),r3
	fmov @r0,fr5
	mova @(0x164,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov 0x3C,r0
	mov.l @(0x164,PC),r3
	fmov @(r0,r14),fr6
	mov 0x38,r0
	fmov @(r0,r14),fr5
	mov r15,r6
	mov r15,r5
	mov 0x34,r0
	add 0x08,r6
	mov r15,r4
	add 0x04,r5
	jsr @r3
	fmov @(r0,r14),fr4
	mov.w @(0x126,PC),r0
	fmov @r15,fr3
	mov.l @(0x14C,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(0x11C,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r14),r3
	mov.l @(0x140,PC),r0
	shll2 r3
	fmov @(r0,r3),fr3
	mova @(0x140,PC),r0
	fmov @r0,fr0
	mov 0x20,r0
	fmov @(r0,r4),fr2
	mov.w @(0x108,PC),r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mova @(0x134,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	mov.w @(0xFC,PC),r0
	fmul fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x12C,PC),r0
	fmov @r0,fr2
	mov 0x54,r0
	fmov @(r0,r14),fr1
	fmul fr2,fr1
	mov.w @(0xEE,PC),r0
	fmov fr1,@(r0,r14)
	mov 0x48,r0
	mov.l @(r0,r14),r3
	mov.w @(0xE8,PC),r0
	mov.l r3,@(r0,r14)
	add 0x2C,r0
	mov.w @(r0,r14),r2
	add 0xE0,r0
	mov 0x00,r3
	mov.l r2,@(r0,r14)
	add 0xFC,r0
	mov.l r3,@(r0,r14)
	mov 0x4C,r0
	mov.w @(r0,r14),r2
	mov.w @(0xD4,PC),r0
	mov.w r2,@(r0,r14)
	mov 0x4E,r0
	mov.w @(r0,r14),r3
	mov.w @(0xCE,PC),r0
	mov.w r3,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr1
	mov 0x20,r0
	fmov @(r0,r4),fr4
	mov.w @(0xBA,PC),r0
	fdiv fr1,fr4
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	add 0x04,r0
	fmov @(r0,r14),fr0
	fdiv fr4,fr0
	fmov fr0,@(r0,r14)
	add 0x5D,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c030a74
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r14),r4
	add 0x1B,r0
	mov.l @(r0,r14),r3
	mova @(0xD4,PC),r0
	extu.b r4,r4
	fmov @r0,fr4
	shll2 r4
	mov.w @(0x90,PC),r0
	shll2 r4
	add r3,r4
	fmov @(r0,r14),fr0
	mov.w @r4,r3
	extu.w r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr4,fr3
	fmul fr3,fr0
	fmov fr0,@(r0,r14)
	add 0x04,r0
	mov r0,r2
	mov.w @(0x2,r4),r0
	add r14,r2
	extu.w r0,r3
	fmov @r2,fr0
	lds r3,fpul
	mov.w @(0x70,PC),r3
	float fpul,fr3
	fdiv fr4,fr3
	fmul fr3,fr0
	fmov fr0,@r2
	mov.w @(0x4,r4),r0
	add r14,r3
	mov.w @(0x62,PC),r1
	mov.w @r3,r3
	add r14,r1
	mov.w @(0x5E,PC),r2
	add r3,r0
	mov.w @(0x60,PC),r3
	extu.w r0,r0
	mov.l r0,@r1
	add r14,r2
	mov.w @(0x6,r4),r0
	add r14,r3
	mov.w @(0x50,PC),r1
	mov.w r0,@r2
	mov.w @(0x8,r4),r0
	add r14,r1
	mov.w r0,@r1
	mov.w @(0xA,r4),r0
	mov.l @r3,r2
	extu.w r0,r0
	xor r0,r2
	mov.l r2,@r3

loc_8c030a74:
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x74,PC),r3
	mov r0,r4
	lds r4,fpul
	mov 0x24,r0
	mov.l @r3,r2
	mov.l @(0x24,r2),r1
	float fpul,fr3
	add r4,r1
	mov.l r1,@(0x24,r2)
	mov.b @(r0,r14),r2
	mova @(0x64,PC),r0
	fmov @r0,fr0
	mov.l @(0x40,PC),r0
	shll2 r2
	fmov @(r0,r2),fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r2)

loc_8c030a9c:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x00e0
	#data 0x00e4
	#data 0x00e8
	#data 0x00ec
	#data 0x00f0
	#data 0x0104
	#data 0x0134
	#data 0x0136
	#data 0x014d
	#data 0x0110
	#align4
	#data bank02.loc_8c02e1a4
	#data 0x43f00000
	#data 0x44200000
	#data bank12.loc_8c1216c0
	#data bank12.loc_8c122560
	#data 0x8c26a518
	#data 0x8c26a974
	#data 0x3dcccccd
	#data work.CpsXScale
	#data work.CpsYScale
	#data 0x444b16de
	#data 0x447a0000
	#data loc_8c034bea
	#data 0x8c26823c
	#data 0x3a83126f

;==============================================
;r4 = pladdr
loc_8c030af8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.w @(0x164,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c030b0c
	bra loc_8c030cb8
	nop

loc_8c030b0c:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/pl r0
	bt loc_8c030b18
	bra loc_8c030cb8
	nop

loc_8c030b18:
	mov.b @(0x3,r14),r0
	mov 0x05,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c030b26
	bra loc_8c030cb8
	nop

loc_8c030b26:
	mov 0x24,r0
	mov.l @(0x154,PC),r3
	mov.b @(r0,r14),r1
	mov 0x3C,r0
	mov r15,r6
	mov r15,r5
	add 0x08,r6
	mov.l r1,@(0xC,r15)
	fmov @(r0,r14),fr6
	mov 0x38,r0
	fmov @(r0,r14),fr5
	mov 0x34,r0
	mov r15,r4
	add 0x04,r5
	jsr @r3
	fmov @(r0,r14),fr4
	mov.w @(0x11E,PC),r0
	fmov @r15,fr3
	mov.l @(0x138,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(0x114,PC),r0
	fmov fr3,@(r0,r14)
	mov.l @(0xC,r15),r3
	mov.l @(0x12C,PC),r0
	shll2 r3
	mov.l r3,@(0x10,r15)
	fmov @(r0,r3),fr3
	mova @(0x128,PC),r0
	fmov @r0,fr0
	mov 0x20,r0
	fmov @(r0,r4),fr2
	mov.w @(0x100,PC),r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	mov.w @(0xF4,PC),r0
	fmul fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x114,PC),r0
	fmov @r0,fr2
	mov 0x54,r0
	fmov @(r0,r14),fr1
	fmul fr2,fr1
	mov.w @(0xE6,PC),r0
	fmov fr1,@(r0,r14)
	mov 0x48,r0
	mov.l @(r0,r14),r3
	mov.w @(0xE0,PC),r0
	mov.l r3,@(r0,r14)
	add 0x2C,r0
	mov.w @(r0,r14),r2
	add 0xE0,r0
	mov 0x00,r3
	mov.l r2,@(r0,r14)
	add 0xFC,r0
	mov.l r3,@(r0,r14)
	mov 0x4C,r0
	mov.w @(r0,r14),r2
	mov.w @(0xCC,PC),r0
	mov.w r2,@(r0,r14)
	mov 0x4E,r0
	mov.w @(r0,r14),r3
	mov.w @(0xC6,PC),r0
	mov.w r3,@(r0,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr1
	mov 0x20,r0
	fmov @(r0,r4),fr4
	mov.w @(0xB2,PC),r0
	fdiv fr1,fr4
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	add 0x04,r0
	fmov @(r0,r14),fr0
	fdiv fr4,fr0
	fmov fr0,@(r0,r14)
	add 0x5D,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c030c4a
	mov.w @(0xA2,PC),r0
	mov.w @(0xA2,PC),r3
	mov.b @(r0,r14),r4
	add 0xA9,r0
	mov.b @(r0,r14),r2
	extu.b r4,r4
	mov.l @(0xBC,PC),r0
	mulu.w r3,r4
	extu.b r2,r2
	shll2 r2
	shll2 r2
	sts macl,r4
	mov.l @(r0,r4),r4
	mova @(0xB0,PC),r0
	fmov @r0,fr4
	add r2,r4
	mov.w @(0x78,PC),r0
	mov.w @r4,r2
	fmov @(r0,r14),fr0
	extu.w r2,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr4,fr3
	fmul fr3,fr0
	fmov fr0,@(r0,r14)
	add 0x04,r0
	mov r0,r1
	mov.w @(0x2,r4),r0
	add r14,r1
	extu.w r0,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr4,fr3
	fmov @r1,fr0
	mov.w @(0x58,PC),r2
	add r14,r2
	fmul fr3,fr0
	fmov fr0,@r1
	mov.w @r2,r2
	mov.w @(0x4,r4),r0
	mov.w @(0x4C,PC),r1
	add r2,r0
	mov.w @(0x4A,PC),r2
	add r14,r1
	extu.w r0,r0
	mov.l r0,@r1
	add r14,r2
	mov.w @(0x6,r4),r0
	mov.w @(0x40,PC),r1
	mov.w r0,@r2
	mov.w @(0x8,r4),r0
	add r14,r1
	mov.w @(0x3E,PC),r2
	mov.w r0,@r1
	mov.w @(0xA,r4),r0
	add r14,r2
	mov.l @r2,r1
	extu.w r0,r0
	xor r0,r1
	mov.l r1,@r2

loc_8c030c4a:
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x54,PC),r3
	mov r0,r4
	lds r4,fpul
	mov.l @r3,r2
	mov.l @(0x24,r2),r1
	float fpul,fr3
	add r4,r1
	mov.l r1,@(0x24,r2)
	mov.l @(0x10,r15),r2
	bra loc_8c030cac
	nop

;##############################################
	#data 0x012c
	#data 0x00e0
	#data 0x00e4
	#data 0x00e8
	#data 0x00ec
	#data 0x00f0
	#data 0x0104
	#data 0x0134
	#data 0x0136
	#data 0x01a4
	#data 0x05a4
	#data 0x0110
	#align4
	#data bank12.loc_8c122560
	#data 0x8c26a518
	#data 0x8c26a974
	#data 0x3dcccccd
	#data work.CpsXScale
	#data work.CpsYScale
	#data 0x444b16de
	#data 0x8c2684a8
	#data 0x447a0000
	#data loc_8c034bea
	#data 0x8c26823c

;----------------------------------------------
loc_8c030cac:
	mova @(0xE4,PC),r0
	fmov @r0,fr0
	mov.l @(0xE4,PC),r0
	fmov @(r0,r2),fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r2)

loc_8c030cb8:
	add 0x14,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c030cc0:
	mov.l @(0xD8,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8c030cf6
	mov.l @(0xD0,PC),r3
	jsr @r3
	nop
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0xCC,PC),r3
	jsr @r3
	nop
	bsr loc_8c030cfc
	nop
	mov.l @(0xC8,PC),r3
	mov.l @(0xC8,PC),r2
	mov.l @r3,r4
	mov.l @r4,r4
	jsr @r2
	mov.l @r4,r4
	mov.l @(0xC4,PC),r3
	mov 0x01,r4
	jmp @r3
	lds.l @r15+,pr

loc_8c030cf6:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c030cfc:
	mov.l r14,@-r15
	mov 0x0C,r0
	mov.l @(0xB4,PC),r14
	mov.l @(0xB8,PC),r3
	fmov @(r0,r14),fr6
	mov 0x08,r0
	fmov @(r0,r14),fr5
	mov 0x04,r0
	fmov @(r0,r14),fr4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c030d12:
	sts.l pr,@-r15
	mov.l @(0x88,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x05,r4
	mov 0x05,r4
	bra loc_8c030410
	lds.l @r15+,pr

;==============================================
loc_8c030d24:
	sts.l pr,@-r15
	mov.l @(0x78,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x06,r4

	mov 0x06,r4
	bra loc_8c030410
	lds.l @r15+,pr

;==============================================
loc_8c030d36:
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x07,r4
	bsr loc_8c030410
	mov 0x07,r4
	mov.l @(0x78,PC),r2
	jsr @r2
	nop
	bsr loc_8c0301ce
	mov 0x08,r4
	mov 0x08,r4
	bra loc_8c030410
	lds.l @r15+,pr

;==============================================
loc_8c030d56:
	sts.l pr,@-r15
	mov.l @(0x64,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x09,r4

	mov 0x09,r4
	bra loc_8c030410
	lds.l @r15+,pr

;==============================================
loc_8c030d68:
	mov.l r14,@-r15
	mov.l @(0x58,PC),r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c030d8a
	mov.l @(0x50,PC),r13

loc_8c030d78:
	mov.w @(0x16,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c030d84
	jsr @r13
	mov r14,r4

loc_8c030d84:
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c030d78

loc_8c030d8a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#align4
	#data 0x3a83126f
	#data 0x8c26a974
	#data 0x8c26a95c
	#data bank02.loc_8c02e1a4
	#data bank12.loc_8c120950
	#data bank12.loc_8c121100
	#data 0x8c26a904
	#data bank12.loc_8c1235e0
	#data bank12.loc_8c120900
	#data 0x8c26a8a4
	#data bank12.loc_8c123780
	#data bank02.loc_8c02e246
	#data 0x8c287a8c
	#data bank0f.loc_8c0f215e

;==============================================
loc_8c030dcc:
	sts.l pr,@-r15
	mov.l @(0x48,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(0x3C,PC),r3
	mov.l @r3,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bt loc_8c030dea
	bra loc_8c030d68
	lds.l @r15+,pr

loc_8c030dea:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c030df0:
	mov.l @(0x2C,PC),r7
	sts.l pr,@-r15
	mov.l @(0x2C,PC),r5
	mov r7,r6
	add 0x40,r6
	mov r7,r4

loc_8c030dfc:
	mov.l @(0x8,r5),r3
	mov.l r3,@(0xC,r4)
	add 0x10,r4
	cmp/hs r6,r4
	bf loc_8c030dfc
	mov.l @(0x20,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x1C,PC),r2
	mov 0x04,r4
	mov.l @(0xC,PC),r5
	jmp @r2
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data bank02.loc_8c02e334
	#data 0x8c26823c
	#data bank14.loc_8c14cb1c
	#data 0x8c26a8d0
	#data bank12.loc_8c127850
	#data bank12.loc_8c127af0

;==============================================
loc_8c030e30:
	mov.l @(0xD4,PC),r3
	mov.l @(0xD0,PC),r4
	mov.w @(0xC6,PC),r6
	jmp @r3
	mov 0x00,r5

;==============================================
loc_8c030e3a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xC0,PC),r14
	mov 0x00,r4
	bra loc_8c030e66
	fldi1 fr4

loc_8c030e48:
	mov r14,r3
	mov r4,r2
	lds r4,fpul
	add 0x10,r3
	shll2 r2
	add r3,r2
	mov.l @(0x4,r14),r3
	float fpul,fr3
	add 0x01,r4
	lds r3,fpul
	float fpul,fr2
	fdiv fr2,fr3
	fneg fr3
	fadd fr4,fr3
	fmov fr3,@r2

loc_8c030e66:
	mov.l @(0x4,r14),r3
	cmp/ge r3,r4
	bf loc_8c030e48
	mov.w @(0x90,PC),r5
	shll2 r4
	cmp/hs r5,r4
	bt.s loc_8c030e84
	fldi0 fr4

loc_8c030e76:
	mov r14,r2
	add 0x10,r2
	add r4,r2
	add 0x04,r4
	cmp/hs r5,r4
	bf.s loc_8c030e76
	fmov fr4,@r2

loc_8c030e84:
	mov.l @(0x84,PC),r3
	mov 0x0C,r0
	jsr @r3
	fmov @(r0,r14),fr4
	mov.b @(0x9,r14),r0
	mov.l @(0x80,PC),r4
	extu.b r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.b r0,@(0x4,r15)
	mov.b @(0xA,r14),r0
	extu.b r0,r3
	lds r3,fpul
	mov 0x08,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr3,fr2
	ftrc fr2,fpul
	sts fpul,r3
	mov.b r3,@r15
	mov.b @(0xB,r14),r0
	extu.b r0,r3
	lds r3,fpul
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.b r0,@(0x8,r15)
	mov.b @(0x4,r15),r0
	mov.b @r15,r4
	extu.b r0,r0
	shll16 r0
	extu.b r4,r4
	shll8 r4
	or r0,r4
	mov.b @(0x8,r15),r0
	extu.b r0,r0
	or r0,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c030ee8:
	mov.l @(0x18,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c030ef8
	mov.l @(0x28,PC),r3
	mov.l @(0x24,PC),r4
	jmp @r3
	nop

loc_8c030ef8:
	mov.l @(0x24,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0214
	#data 0x0204
	#align4
	#data 0x8c26a688
	#data bank12.loc_8c129728
	#data bank11.loc_8c11f2e0
	#data 0x8c26a8a4
	#data bank11.loc_8c11f280
	#data 0x8c26a698
	#data bank11.loc_8c11f2d0
	#data bank11.loc_8c11f250

;==============================================
loc_8c030f24:
	sts.l pr,@-r15
	mov.l @(0x40,PC),r4
	mov 0x18,r6
	mov.l @(0x40,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.l @(0x3C,PC),r4
	mov 0x0C,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	lds.l @r15+,pr
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c030f44:
	mov.l @(0x28,PC),r4
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mov 0x08,r0
	fmov fr4,@(r0,r4)
	mov 0x04,r0
	rts
	fmov fr4,@(r0,r4)

;==============================================
loc_8c030f54:
	mov.l @(0x1C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c030f60
	bra loc_8c030f64
	fldi1 fr4

loc_8c030f60:
	mova @(0x14,PC),r0
	fmov @r0,fr4

loc_8c030f64:
	bra loc_8c030f44
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26a89c
	#data bank12.loc_8c129728
	#data 0x8c26a8a4
	#data 0x8c2895f6
	#data 0x3f000000

;==============================================
loc_8c030f7c:
	mov.l @(0x108,PC),r2
	mov 0x28,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c030f9a
	mov.l @(0x100,PC),r4
	mov.l @(0x8,r4),r3
	tst r3,r3
	bf loc_8c030f9a
	mov.l @(0xFC,PC),r3
	mov 0x02,r5
	mov.l r5,@(0x4,r4)
	mov.l r5,@(0x8,r4)
	mov.l r3,@(0xC,r4)

loc_8c030f9a:
	rts
	nop

;==============================================
loc_8c030f9e:
	mov.l @(0xEC,PC),r4
	mov 0x01,r3
	mov 0x10,r2
	mov.l r3,@(0x4,r4)
	mov.l @(0xE8,PC),r3
	mov.l r2,@(0x8,r4)
	rts
	mov.l r3,@(0xC,r4)

;==============================================
loc_8c030fae:
	mov.l @(0xD8,PC),r1
	mov 0x28,r0
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c030fc8
	mov.l @(0xD0,PC),r4
	mov 0x06,r3
	mov 0x18,r2
	mov.l r3,@(0x4,r4)
	mov.l @(0xCC,PC),r3
	mov.l r2,@(0x8,r4)
	mov.l r3,@(0xC,r4)

loc_8c030fc8:
	rts
	nop

;==============================================
loc_8c030fcc:
	mov.l @(0xB8,PC),r1
	mov 0x28,r0
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c030fdc
	rts
	nop

loc_8c030fdc:
	mov.l @(0xAC,PC),r4
	mov 0x00,r3
	mov 0x78,r2
	mov.l r3,@(0x4,r4)
	mov 0xFF,r3
	mov.l r2,@(0x8,r4)
	rts
	mov.l r3,@(0xC,r4)

;==============================================
loc_8c030fec:
	mov.l @(0x9C,PC),r4
	mov 0x78,r3
	mov 0x00,r5
	mov.l r5,@(0x4,r4)
	mov.l r3,@(0x8,r4)
	rts
	mov.l r5,@(0xC,r4)

;==============================================
loc_8c030ffa:
	mov.l @(0x90,PC),r4
	mov 0x1E,r3
	mov 0x00,r5
	mov.l r5,@(0x4,r4)
	mov.l r3,@(0x8,r4)
	rts
	mov.l r5,@(0xC,r4)

;==============================================
loc_8c031008:
	mov.l @(0x80,PC),r4
	mov 0x08,r3
	mov.w @(0x74,PC),r2
	mov.l r3,@(0x4,r4)
	mov 0x00,r3
	mov.l r2,@(0x8,r4)
	rts
	mov.l r3,@(0xC,r4)

;==============================================
loc_8c031018:
	mov.l @(0x70,PC),r4
	mov.l @(0x4,r4),r0
	cmp/eq 0x08,r0
	bt loc_8c03102c
	mov 0x09,r2
	mov.w @(0x60,PC),r3
	mov.l r2,@(0x4,r4)
	mov 0x00,r2
	mov.l r3,@(0x8,r4)
	mov.l r2,@(0xC,r4)

loc_8c03102c:
	rts
	nop

;==============================================
loc_8c031030:
	mov.l @(0x58,PC),r4
	mov 0x01,r2
	mov.l @(0x8,r4),r3
	add 0xFF,r3
	mov.l r3,@(0x8,r4)
	rts
	mov.l r2,@r4

;==============================================
loc_8c03103e:
	mov.l @(0x4C,PC),r4
	mov.l @(0x8,r4),r3
	add 0xFF,r3
	mov.l r3,@(0x8,r4)
	mov r3,r0
	nop
	and 0x01,r0
	mov.l r0,@r4
	rts
	tst r0,r0

;==============================================
loc_8c031052:
	mov.l @(0x38,PC),r4
	mov.l @(0x8,r4),r3
	add 0xFF,r3
	mov.l r3,@(0x8,r4)
	mov r3,r0
	nop
	shar r0
	and 0x01,r0
	mov.l r0,@r4
	rts
	tst r0,r0

;==============================================
loc_8c031068:
	mov.l @(0x20,PC),r4
	mov 0x02,r2
	mov.l @(0x8,r4),r3
	add 0xFF,r3
	mov.l r3,@(0x8,r4)
	rts
	mov.l r2,@r4

;==============================================
loc_8c031076:
	mov.l @(0x14,PC),r4
	mov 0x03,r2
	mov.l @(0x8,r4),r3
	add 0xFF,r3
	mov.l r3,@(0x8,r4)
	rts
	mov.l r2,@r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00b9
	#data 0x00b4
	#align4
	#data 0x8c26823c
	#data 0x8c26a8e4
	#data 0x00ffffff

;==============================================
loc_8c031094:
	mov.l @(0x18,PC),r4
	mov.l @(0x8,r4),r3
	tst r3,r3
	bt loc_8c0310ea
	mov.l @(0x4,r4),r0
	mov 0x0D,r1
	cmp/hs r1,r0
	bt loc_8c0310e6
	shll r0
	mov r0,r1
	mova @(0x8,PC),r0
	mov.w @(r0,r1),r0
	braf r0
	nop

;##############################################
	#align4
	#data 0x8c26a8e4
	#data 0x001e
	#data 0x0022
	#data 0x0026
	#data 0x002a
	#data 0x002a
	#data 0x002a
	#data 0x002a
	#data 0x002e
	#data 0x002e
	#data 0x0032
	#data 0x0036
	#data 0x0036
	#data 0x0036

;----------------------------------------------
loc_8c0310ce:
	bra loc_8c031030
	nop

;----------------------------------------------
loc_8c0310d2:
	bra loc_8c0310da
	nop

;----------------------------------------------
loc_8c0310d6:
	bra loc_8c03103e
	nop

;----------------------------------------------
loc_8c0310da:
	bra loc_8c031052
	nop

;----------------------------------------------
loc_8c0310de:
	bra loc_8c031068
	nop

;----------------------------------------------
loc_8c0310e2:
	bra loc_8c031076
	nop

;----------------------------------------------
loc_8c0310e6:
	bra loc_8c0310ee
	nop

loc_8c0310ea:
	mov 0x00,r3
	mov.l r3,@r4

loc_8c0310ee:
	rts
	nop

;==============================================
loc_8c0310f2:
	mov.l @(0x10,PC),r2
	mov.l @r2,r4
	tst r4,r4
	bt loc_8c0310fe
	rts
	mov r4,r0

loc_8c0310fe:
	mov 0x00,r0
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x8c26a8e4

;==============================================
loc_8c031108:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x2,r14),r0
	mov.l @(0x2FC,PC),r13
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x2F8,PC),r2
	shll2 r0
	add r0,r13
	jsr @r2
	mov.l @r13,r4
	mov 0x04,r0
	mov.l @(0x2F0,PC),r3
	fmov @(r0,r13),fr3
	ftrc fr3,fpul
	sts fpul,r5
	mov.l r5,@r15
	jsr @r3
	mov r5,r4
	mov.b @(0x1,r14),r0
	mov.b @r14,r4
	mov.l @(0x2E4,PC),r3
	extu.b r0,r5
	jsr @r3
	extu.b r4,r4
	mov r14,r4
	add 0x03,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x2D8,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c031152:
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
	add 0x90,r15
	mov.l @(0x2B8,PC),r3
	mov r4,r13
	jsr @r3
	mov 0x00,r4
	mov r13,r4
	bra loc_8c03117c
	add 0x03,r4
  
loc_8c03117a:
	add 0x01,r4

loc_8c03117c:
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c03117a
	mov.b @(0x2,r13),r0
	mov r13,r10
	mov.b @r13,r2
	mov r15,r8
	mov r0,r14
	mov.l @(0x29C,PC),r3
	shll2 r14
	mov.l @(0x2A4,PC),r5
	extu.b r2,r2
	mov.l @(0x298,PC),r4
	lds r2,fpul
	shll2 r14
	mov 0x08,r0
	add r3,r14
	fmov @(r0,r14),fr5
	float fpul,fr3
	mov.b @(0x1,r13),r0
	add 0x03,r10
	fmov fr5,fr4
	extu.b r0,r2
	lds r2,fpul
	mova @(0x284,PC),r0
	fmul fr3,fr4
	fmov @r0,fr6
	mov 0x10,r0
	float fpul,fr3
	fmul fr3,fr5
	fmov @(r0,r5),fr3
	mov 0x14,r0
	fadd fr3,fr4
	fmov @(r0,r5),fr3
	fadd fr3,fr5
	mov 0x0C,r0
	mov r8,r12
	mov r12,r11
	add 0x38,r11
	fmov fr4,@r12
	mov r12,r13
	fmov fr4,@r11
	add 0x1C,r13
	fmov @(r0,r14),fr0
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov r12,r9
	add 0x54,r9
	fmac fr0,fr3,fr4
	fmov fr4,@r13
	fmov fr4,@r9
	fmov fr5,@(r0,r12)
	fmov fr5,@(r0,r13)
	fmov @(r0,r14),fr3
	fadd fr3,fr5
	fmov fr5,@(r0,r11)
	fmov fr5,@(r0,r9)
	mov 0x08,r0
	fmov fr6,@(r0,r12)
	fmov fr6,@(r0,r13)
	fmov fr6,@(r0,r11)
	fmov fr6,@(r0,r9)
	mov.b @r14,r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r4),r2
	mov.l r2,@(0x14,r12)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r4),r2
	mov.l r2,@(0x14,r13)
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r4),r2
	mov.l r2,@(0x14,r11)
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r4),r2
	mova @(0x21C,PC),r0
	mov.l r2,@(0x14,r9)
	fmov @r0,fr12
	mova @(0x218,PC),r0
	fmov @r0,fr13
	mova @(0x218,PC),r0
	fmov @r0,fr14
	mova @(0x218,PC),r0
	bra loc_8c0312b2
	fmov @r0,fr15

loc_8c031232:
	extu.b r4,r0
	cmp/eq 0x5E,r0
	bf loc_8c031248
	add 0x01,r10
	mov.b @r10,r5
	extu.b r5,r0
	mov r5,r4
	cmp/eq 0x5A,r0
	bf.s loc_8c031248
	add 0x3C,r4
	mov 0x5C,r4

loc_8c031248:
	add 0xE0,r4
	mov 0x0F,r2
	extu.b r4,r5
	and r5,r2
	lds r2,fpul
	mov 0x0C,r0
	mov 0xFC,r3
	shad r3,r5
	mov.l @(0x1F0,PC),r3
	float fpul,fr3
	lds r5,fpul
	mov r8,r5
	mov 0x00,r6
	fmov fr3,fr4
	fdiv fr14,fr4
	fmov fr4,@(r0,r12)
	fmov fr4,@(r0,r11)
	fmov @(r0,r14),fr3
	fdiv fr14,fr3
	fadd fr3,fr4
	float fpul,fr3
	fmov fr4,@(r0,r13)
	fmov fr4,@(r0,r9)
	mov 0x10,r0
	fdiv fr12,fr3
	fldi1 fr4
	fsub fr3,fr4
	fmov fr4,@(r0,r12)
	fmov fr4,@(r0,r13)
	fadd fr13,fr4
	fmov fr4,@(r0,r11)
	fmov fr4,@(r0,r9)
	jsr @r3
	mov 0x04,r4
	mov 0x04,r0
	fmov @r12,fr2
	fmov @(r0,r14),fr3
	add 0x01,r10
	fmov fr15,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r12
	fmov @r13,fr2
	fmov @(r0,r14),fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r13
	fmov @r11,fr2
	fmov @(r0,r14),fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r11
	fmov @r9,fr2
	fmov @(r0,r14),fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r9

loc_8c0312b2:
	mov.b @r10,r4
	extu.b r4,r3
	tst r3,r3
	bf loc_8c031232
	add 0x70,r15
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

;==============================================
loc_8c0312d6:
	mov.l r14,@-r15
	shll2 r5
	mov.l r13,@-r15
	mov.l @(0x170,PC),r0
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	mov.l @(0x164,PC),r14
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r5),r5
	mova @(0x160,PC),r0
	mov.l @(0x164,PC),r9
	mov.b @r5+,r11
	mov.l @(0x15C,PC),r8
	mov.b @r5+,r3
	extu.b r11,r11
	mov.l @(0x134,PC),r10
	extu.b r3,r3
	mov r5,r13
	add r3,r4
	mov.l r4,@r14
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r14)
	mova @(0x150,PC),r0
	fmov @r0,fr13
	mova @(0x150,PC),r0
	cmp/pl r11
	fmov @r0,fr14
	mova @(0x14C,PC),r0
	bf.s loc_8c0313f4
	fmov @r0,fr15

loc_8c031322:
	mov.b @r13,r4
	mov 0x04,r0
	mov 0x10,r1
	extu.b r4,r4
	mov r4,r3
	shll2 r4
	add r3,r4
	shll2 r4
	add r9,r4
	fmov @(r0,r4),fr3
	add r10,r1
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x14,r1
	add r10,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.b @r4,r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr15,fr3
	mov 0x18,r0
	fmov fr3,@(r0,r14)
	mov.b @(0x1,r4),r0
	extu.b r0,r3
	lds r3,fpul
	mov 0x1C,r0
	float fpul,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r14)
	mov.b @(0x2,r4),r0
	mov.b @r4,r3
	extu.b r0,r0
	extu.b r3,r3
	add r0,r3
	lds r3,fpul
	mov 0x20,r0
	float fpul,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r14)
	mov.b @(0x1,r4),r0
	extu.b r0,r3
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	add r0,r3
	lds r3,fpul
	mov 0x24,r0
	float fpul,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r14)
	mov.b @(0x2,r4),r0
	extu.b r0,r3
	lds r3,fpul
	float fpul,fr3
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov 0x10,r0
	fdiv fr15,fr3
	fmul fr2,fr3
	fdiv fr14,fr3
	fmov fr3,@(r0,r14)
	mov.b @(0x3,r4),r0
	extu.b r0,r3
	lds r3,fpul
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov 0x14,r0
	float fpul,fr3
	fdiv fr15,fr3
	fmul fr2,fr3
	fdiv fr14,fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x10,r4),r3
	tst r3,r3
	bt loc_8c0313de
	mov 0x18,r0
	fmov @(r0,r14),fr4
	mov 0x20,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	fmov fr4,@(r0,r14)

loc_8c0313de:
	mov.l @(0x74,PC),r4
	jsr @r8
	nop
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	add 0x01,r12
	cmp/ge r11,r12
	fadd fr13,fr3
	fmov fr3,@(r0,r14)
	bf.s loc_8c031322
	add 0x01,r13

loc_8c0313f4:
	lds.l @r15+,pr
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

;==============================================
loc_8c03140c:
	rts
	nop

;==============================================
loc_8c031410:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data bank13.loc_8c135cc0
	#data bank11.loc_8c11f1c0
	#data bank11.loc_8c11efc0
	#data bank11.loc_8c11f130
	#data bank11.loc_8c11efd0
	#data bank12.loc_8c127850
	#data bank13.loc_8c135d68
	#data bank14.loc_8c14cbf0
	#data 0x3f666666
	#data 0x8c212bfc
	#data 0x41000000
	#data 0xbe000000
	#data 0x41800000
	#data 0x3f400000
	#data bank12.loc_8c127b60
	#data bank14.loc_8c14cbac
	#data bank14.loc_8c14cb5c
	#data 0x3f733333
	#data bank12.loc_8c1244b0
	#data bank13.loc_8c135720
	#data 0x3a83126f
	#data 0x42c80000
	#data 0x43800000

;==============================================
loc_8c031470:
	mova @(0x78,PC),r0
	mov.l @(0x74,PC),r4
	mov.l @(0x7C,PC),r5
	mov 0x10,r1
	mov.w @(0x68,PC),r3
	add r5,r1
	fldi0 fr4
	mov.l r3,@r4
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x14,r1
	add r5,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov 0x18,r0
	fmov fr4,@(r0,r4)
	mov 0x1C,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	fldi1 fr4
	mov 0xFF,r6
	fmov fr4,@(r0,r4)
	mova @(0x3C,PC),r0
	fmov @r0,fr5
	mov 0x24,r0
	mov 0x05,r3
	mov.l @(0x38,PC),r2
	fmov fr5,@(r0,r4)
	mov 0x10,r0
	fmov fr4,@(r0,r4)
	mov 0x14,r0
	fmov fr5,@(r0,r4)
	mov 0x2C,r0
	mov 0x00,r5
	mov.l r5,@(0x28,r4)
	fmov fr4,@(r0,r4)
	mov.l r6,@(0x30,r4)
	mov.l r3,@(0x34,r4)
	mov.l r6,@(0x38,r4)
	jmp @r2
	mov.l r5,@(0x3C,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
#data 0x0d50
#align4
	#data bank14.loc_8c14cb5c
	#data 0x42200000
	#data 0x43c50000
	#data 0x8c212bfc
	#data 0x3f75c28f
	#data 0x3f200000
	#data bank12.loc_8c1244b0

;==============================================
loc_8c031504:
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
	add 0xD8,r15
	mov.l @(0x148,PC),r3
	mov 0x4C,r0
	mov.l @r3,r4
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c03152e
	bra loc_8c031a72
	nop

loc_8c03152e:
	mov.b @(0x3,r4),r0
	cmp/eq 0x02,r0
	bt loc_8c031538
	bra loc_8c031a72
	nop

loc_8c031538:
	mov.l @(0x130,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0x134,PC),r3
	mov 0x14,r5
	mov.l @(0x12C,PC),r14
	mov 0x17,r6
	mov.l r3,@-r15
	jsr @r14
	mov 0x29,r4
	mov.l @(0x124,PC),r2
	mov 0x14,r5
	mov 0x18,r6
	mov.l r2,@-r15
	jsr @r14
	mov 0x61,r4
	mov.l @(0x11C,PC),r3
	mov 0x14,r5
	mov 0x17,r6
	mov.l r3,@-r15
	jsr @r14
	mov 0x3C,r4
	mov.l @(0x114,PC),r2
	mov 0x14,r5
	mov 0x18,r6
	mov.l r2,@-r15
	jsr @r14
	mov 0x74,r4
	add 0x10,r15
	mov.w @(0xE8,PC),r10
	mov 0x00,r9
	mov r9,r13
 
loc_8c031578:
	mul.l r10,r13
	mov 0x38,r8
	mov.l @(0x100,PC),r3
	mov.w @(0xDE,PC),r0
	mov 0x20,r5
	mov.l @(0x100,PC),r1
	mov 0x19,r6
	sts macl,r12
	mulu.w r8,r13
	add r3,r12
	mov.b @(r0,r12),r2
	sts macl,r8
	extu.b r2,r2
	mov.l r2,@-r15
	mov r8,r11
	add 0x25,r11
	mov.l r1,@-r15
	jsr @r14
	mov r11,r4
	mov.w @(0xC0,PC),r0
	mov 0x28,r5
	mov.l @(0xE4,PC),r2
	mov 0x1A,r6
	mov.b @(r0,r12),r3
	extu.b r3,r3
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r14
	mov r11,r4
	mov.w @(0xAE,PC),r0
	mov 0x30,r5
	mov.l @(0xD4,PC),r2
	mov 0x1B,r6
	mov.b @(r0,r12),r3
	extu.b r3,r3
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r14
	mov r11,r4
	mov.l @(0xC8,PC),r3
	mov 0x3A,r5
	mov r8,r4
	mov 0x1C,r6
	mov.l r3,@-r15
	jsr @r14
	add 0x28,r4
	mov 0x02,r2
	add 0x01,r13
	cmp/ge r2,r13
	bf.s loc_8c031578
	add 0x1C,r15
	mova @(0xBC,PC),r0
	mov.l @(0xB4,PC),r14
	fmov @r0,fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mova @(0xB4,PC),r0
	mov.l @(0xA8,PC),r5
	fadd fr3,fr2
	mov r5,r7
	add 0x20,r7
	mov r5,r4
	mov r5,r6
	add 0x30,r4
	fmov fr2,@r7
	add 0x10,r6
	fmov fr2,@r5
	fmov @r0,fr2
	mov 0x10,r0
	fmov @(r0,r14),fr1
	mova @(0x9C,PC),r0
	fadd fr2,fr1
	fmov fr1,@r4
	fmov fr1,@r6
	fmov @r0,fr1
	mov 0x14,r0
	fmov @(r0,r14),fr0
	mov 0x04,r0
	fadd fr1,fr0
	fmov fr0,@(r0,r6)
	fmov fr0,@(r0,r5)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	mov.l @(0x88,PC),r3
	fmov @(r0,r14),fr0
	mov 0x04,r0
	fadd fr3,fr0
	fmov fr0,@(r0,r4)
	fmov fr0,@(r0,r7)
	jsr @r3
	mov r0,r4
	mova @(0x80,PC),r0
	mov.l @(0x7C,PC),r5
	fmov @r0,fr13
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov r5,r4
	add 0x20,r4
	mov r5,r7
	fadd fr13,fr3
	mova @(0x74,PC),r0
	mov r5,r6
	add 0x10,r6
	add 0x30,r7
	fmov fr3,@r4
	fmov fr3,@r5
	fmov @r0,fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@r7
	fmov fr2,@r6
	bra loc_8c0316bc
	nop

;##############################################
	#data 0x05a4
	#data 0x0540
	#data 0x0541
	#data 0x0542
	#align4
	#data 0x8c26823c
	#data bank12.loc_8c127850
	#data loc_8c0395c6
	#data bank13.loc_8c136164
	#data bank13.loc_8c13616c
	#data bank13.loc_8c136170
	#data 0x8c268340
	#data bank13.loc_8c136174
	#data bank13.loc_8c136184
	#data bank13.loc_8c136194
	#data bank13.loc_8c1361a4
	#data bank14.loc_8c14ccd0
	#data 0x8c212bfc
	#data 0x42d80000
	#data 0x44050000
	#data 0x42700000
	#data 0x43d20000
	#data bank12.loc_8c127af0
	#data bank14.loc_8c14cd10
	#data 0x42e00000
	#data 0x44040000

;----------------------------------------------
loc_8c0316bc:
	mova @(0x178,PC),r0
	mov.l @(0x180,PC),r3
	fmov @r0,fr2
	mov 0x14,r0
	fmov @(r0,r14),fr1
	mov 0x04,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r6)
	fmov fr1,@(r0,r5)
	mova @(0x16C,PC),r0
	fmov @r0,fr1
	mov 0x14,r0
	fmov @(r0,r14),fr0
	mov 0x04,r0
	fadd fr1,fr0
	fmov fr0,@(r0,r7)
	fmov fr0,@(r0,r4)
	jsr @r3
	mov r0,r4
	mov.l @(0x164,PC),r8
	mov 0x10,r0
	mov.l @(0x15C,PC),r13
	mov.w @(0x144,PC),r4
	add r4,r13
	mov r13,r3
	add 0x38,r3
	mov.l r3,@(0x20,r15)
	mov r13,r2
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @r8+,fr2
	add 0x54,r2
	fadd fr3,fr2
	fmov fr2,@r3
	mov r13,r3
	fmov fr2,@r13
	add 0x1C,r3
	mov.l r3,@(0x18,r15)
	mov.l r2,@(0x24,r15)
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @r8+,fr2
	fadd fr3,fr2
	fmov fr2,@r2
	mov.w @(0x11A,PC),r2
	fmov fr2,@r3
	mov r13,r3
	add r13,r2
	add 0x70,r3
	mov.l r3,@r15
	mov.l r2,@(0x14,r15)
	fmov @r8+,fr2
	add r13,r4
	fmov @(r0,r14),fr3
	mov 0x10,r0
	mov.l @(0x124,PC),r11
	fadd fr3,fr2
	fmov fr2,@r2
	fmov fr2,@r3
	mov.w @(0xFE,PC),r3
	mov.w @(0xFE,PC),r2
	add r13,r3
	add r13,r2
	mov.l r3,@(0x1C,r15)
	mov.l r2,@(0x10,r15)
	fmov @(r0,r14),fr3
	mova @(0x108,PC),r0
	fmov @r8+,fr2
	fadd fr3,fr2
	fmov fr2,@r2
	mov 0x02,r2
	fmov fr2,@r3
	mov r8,r3
	add 0x28,r3
	mov.l r4,@(0x8,r15)
	mov.l r3,@(0xC,r15)
	fmov @r0,fr15
	mov.l r2,@(0x4,r15)

loc_8c031758:
	mov r8,r12

loc_8c03175a:
	mov 0x14,r0
	fmov @r12,fr2
	fmov @(r0,r14),fr3
	mov 0x04,r0
	mov.l @(0x1C,r15),r1
	mov 0x0B,r6
	fadd fr3,fr2
	mov.l @(0x18,r15),r3
	mov.l @r15,r2
	mov r13,r5
	fmov fr2,@(r0,r1)
	fmov fr2,@(r0,r2)
	mov 0x04,r2
	fmov fr2,@(r0,r3)
	fmov fr2,@(r0,r13)
	mov 0x14,r0
	mov.l @(0x20,r15),r3
	add r3,r2
	mov.l r2,@-r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov @(r0,r12),fr2
	mov.l @(0x18,r15),r1
	fadd fr3,fr2
	mov.l @(0x28,r15),r2
	mov.l @(0x14,r15),r3
	add 0x04,r3
	fmov fr2,@r3
	fmov fr2,@(r0,r1)
	fmov fr2,@(r0,r2)
	mov.l @r15+,r1
	fmov fr2,@r1
	jsr @r11
	mov r0,r4
	mov.l @r15,r5
	mov 0x0B,r6
	jsr @r11
	mov 0x04,r4
	mov.l @(0xC,r15),r3
	add 0x08,r12
	cmp/hs r3,r12
	bf loc_8c03175a
	mov r13,r4

loc_8c0317b0:
	fmov @r4,fr3
	fadd fr15,fr3
	fmov fr3,@r4
	add 0x1C,r4
	mov.l @(0x8,r15),r3
	cmp/hs r3,r4
	bf loc_8c0317b0
	mov.l @(0x4,r15),r1
	add 0xFF,r1
	tst r1,r1
	bf.s loc_8c031758
	mov.l r1,@(0x4,r15)
	mova @(0x88,PC),r0
	mov.l @(0x78,PC),r12
	mov r12,r2
	add 0x38,r2
	mov.l r2,@(0x4,r15)
	mov r12,r3
	fmov @r0,fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mova @(0x7C,PC),r0
	add 0x1C,r3
	fadd fr3,fr2
	fmov fr2,@r2
	mov r12,r2
	fmov fr2,@r12
	add 0x54,r2
	mov.l r3,@r15
	mov.l r2,@(0xC,r15)
	fmov @r0,fr2
	mov 0x10,r0
	fmov @(r0,r14),fr1
	mova @(0x68,PC),r0
	fadd fr2,fr1
	fmov fr1,@r2
	fmov fr1,@r3
	fmov @r0,fr1
	mov 0x14,r0
	fmov @(r0,r14),fr0
	mov 0x04,r0
	mov.l @r15,r3
	fadd fr1,fr0
	fmov fr0,@(r0,r3)
	fmov fr0,@(r0,r12)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r14),fr0
	mov 0x04,r0
	mov.l @(0xC,r15),r2
	fadd fr3,fr0
	mov.l @(0x4,r15),r3
	mov.l @(0x48,PC),r4
	mov r4,r8
	fmov fr0,@(r0,r2)
	fmov fr0,@(r0,r3)
	mov r12,r3
	mova @(0x40,PC),r0
	add 0x70,r3
	mov.l r3,@(0x8,r15)
	fmov @r0,fr12
	bra loc_8c03186c
	nop

;##############################################
	#data 0x00e0
	#data 0x00a8
	#data 0x008c
	#data 0x00c4
	#align4
	#data 0x42800000
	#data 0x43d00000
	#data bank12.loc_8c127af0
	#data bank14.loc_8c14cd50
	#data bank13.loc_8c136118
	#data 0x43600000
	#data bank12.loc_8c127b60
	#data 0x43080000
	#data 0x43180000
	#data 0x43800000
	#data 0x43880000
	#data 0x8c268340
	#data 0x41800000

;----------------------------------------------
loc_8c03186c:
	mov.w @(0x14E,PC),r2
	mova @(0x154,PC),r0
	fmov @r0,fr15
	add r2,r4
	fldi1 fr14
	mov.l r4,@(0x14,r15)

loc_8c031878:
	mov r9,r13
	mov.l r8,@(0x10,r15)

loc_8c03187c:
	mov 0x03,r4
	mov.l @(0x4,r15),r3
	and r13,r4
	lds r4,fpul
	add 0x01,r4
	mov 0x0C,r0
	float fpul,fr3
	lds r4,fpul
	mov r13,r4
	cmp/pz r4
	fmul fr15,fr3
	fmov fr3,@(r0,r3)
	fmov fr3,@(r0,r12)
	float fpul,fr3
	mov.l @r15,r3
	mov 0x0C,r0
	mov.l @(0xC,r15),r2
	fmul fr15,fr3
	fmov fr3,@(r0,r2)
	fmov fr3,@(r0,r3)
	bt.s loc_8c0318aa
	mov.l @r15,r3
	add 0x03,r4

loc_8c0318aa:
	shar r4
	fmov fr14,fr2
	shar r4
	mov r13,r6
	lds r4,fpul
	add 0x01,r4
	mov 0x10,r0
	mov r12,r5
	shll2 r6
	float fpul,fr3
	lds r4,fpul
	mov r12,r4
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fmov fr3,@(r0,r3)
	fmov fr3,@(r0,r12)
	float fpul,fr3
	mov.l @(0x4,r15),r3
	mov 0x10,r0
	mov.l @(0xC,r15),r2
	fmul fr15,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r2)
	fmov fr2,@(r0,r3)
	mov.l @(0xE8,PC),r3
	add r3,r6

loc_8c0318e0:
	mov.w @(0xDC,PC),r0
	fmov @r4,fr3
	fadd fr12,fr3
	fmov fr3,@r4
	mov.l @r6,r3
	mov.l r3,@(0x14,r4)
	mov.l @(0x10,r15),r2
	mov.b @(r0,r2),r3
	extu.b r3,r3
	add 0x01,r3
	cmp/gt r3,r13
	bf loc_8c031904
	mov r13,r0
	nop
	cmp/eq 0x06,r0
	bt loc_8c031904
	mov.l @(0xC8,PC),r3
	mov.l r3,@(0x14,r5)

loc_8c031904:
	mov.l @(0x8,r15),r2
	add 0x1C,r4
	cmp/hs r2,r4
	bf.s loc_8c0318e0
	add 0x1C,r5
	mov r12,r5
	mov 0x0B,r6
	jsr @r11
	mov 0x04,r4
	mov 0x07,r2
	add 0x01,r13
	cmp/ge r2,r13
	bf loc_8c03187c
	mov r12,r4

loc_8c031920:
	fmov @r4,fr3
	fadd fr13,fr3
	fmov fr3,@r4
	add 0x1C,r4
	mov.l @(0x8,r15),r3
	cmp/hs r3,r4
	bf loc_8c031920
	mov.l @(0x14,r15),r3
	add r10,r8
	cmp/hs r3,r8
	bf loc_8c031878
	mova @(0x9C,PC),r0
	mov.l @(0x94,PC),r13
	fmov @r0,fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov r13,r10
	add 0x38,r10
	mov r13,r12
	fadd fr3,fr2
	mova @(0x8C,PC),r0
	mov r13,r8
	add 0x54,r8
	add 0x1C,r12
	fmov fr2,@r10
	fmov fr2,@r13
	fmov @r0,fr2
	mov 0x10,r0
	fmov @(r0,r14),fr1
	mova @(0x80,PC),r0
	fadd fr2,fr1
	fmov fr1,@r8
	fmov fr1,@r12
	fmov @r0,fr1
	mov 0x14,r0
	fmov @(r0,r14),fr0
	mov 0x04,r0
	fadd fr1,fr0
	fmov fr0,@(r0,r12)
	fmov fr0,@(r0,r13)
	mova @(0x6C,PC),r0
	fmov @r0,fr12
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	mov 0x0B,r6
	mov r13,r5
	fadd fr12,fr3
	fmov fr3,@(r0,r8)
	fmov fr3,@(r0,r10)
	mova @(0x5C,PC),r0
	fmov @r0,fr15
	mov 0x10,r0
	fmov fr15,@(r0,r12)
	fmov fr15,@(r0,r13)
	mova @(0x58,PC),r0
	fmov @r0,fr13
	mov 0x10,r0
	fmov fr13,@(r0,r8)
	fmov fr13,@(r0,r10)
	jsr @r11
	mov 0x04,r4
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r12)
	fmov fr2,@(r0,r13)
	mova @(0x40,PC),r0
	fmov @r0,fr2
	mov 0x14,r0
	fmov @(r0,r14),fr1
	mov 0x04,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r8)
	bra loc_8c0319f4
	nop

;##############################################
	#data 0x0b48
	#data 0x0543
	#align4
	#data 0x3e800000
	#data bank13.loc_8c1360f8
	#data 0xff777777
	#data bank14.loc_8c14cdc0
	#data 0x439c0000
	#data 0x43a40000
	#data 0x43850000
	#data 0x438d0000
	#data 0x3f400000
	#data 0x3f000000
	#data 0x43c90000
	#data 0x43d10000

;----------------------------------------------
loc_8c0319f4:
	fmov fr1,@(r0,r10)
	mov 0x10,r0
	mov 0x0B,r6
	mov r13,r5
	fmov fr13,@(r0,r12)
	fmov fr13,@(r0,r13)
	fmov fr15,@(r0,r8)
	fmov fr15,@(r0,r10)
	jsr @r11
	mov 0x04,r4
	mova @(0x88,PC),r0
	mov.l @(0x84,PC),r13
	fldi0 fr4
	mov.w @(0x7C,PC),r3
	mov.l r3,@r13
	fmov @r0,fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r13)
	mov 0x14,r0
	fmov @(r0,r14),fr2
	mov 0x08,r0
	fadd fr12,fr2
	fmov fr2,@(r0,r13)
	mova @(0x6C,PC),r0
	fmov @r0,fr2
	mov 0x0C,r0
	fmov fr2,@(r0,r13)
	mov 0x18,r0
	fmov fr4,@(r0,r13)
	mov 0x1C,r0
	fmov fr4,@(r0,r13)
	mov 0x20,r0
	fmov fr14,@(r0,r13)
	mov 0x24,r0
	fmov fr14,@(r0,r13)
	mova @(0x58,PC),r0
	fmov @r0,fr2
	mov 0x10,r0
	fmov fr2,@(r0,r13)
	mova @(0x54,PC),r0
	fmov @r0,fr2
	mov 0x05,r3
	mov 0x14,r0
	fmov fr2,@(r0,r13)
	mov 0xFF,r2
	mov 0x2C,r0
	mov.l r9,@(0x28,r13)
	fmov fr14,@(r0,r13)
	mov.l r9,@(0x30,r13)
	mov.l r3,@(0x34,r13)
	mov.l @(0x44,PC),r3
	mov.l r2,@(0x38,r13)
	mov.l r9,@(0x3C,r13)
	jsr @r3
	mov 0x00,r4
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov r13,r4
	mov 0xFF,r3
	mov.l r3,@(0x30,r13)

loc_8c031a72:
	add 0x28,r15
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

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0914
	#align4
	#data bank14.loc_8c14cb5c
	#data 0x43700000
	#data 0x3f75c28f
	#data 0x3fa00000
	#data 0x3f700000
	#data bank11.loc_8c11b800
	#data bank12.loc_8c1244b0

;==============================================
loc_8c031aac:
	sts.l pr,@-r15
	mov.l @(0x174,PC),r2
	mov 0x01,r3
	mov.l @(0x174,PC),r1
	jsr @r1
	mov.l r3,@r2
	mov.l @(0x170,PC),r3
	jsr @r3
	nop
	mov.l @(0x170,PC),r1
	jsr @r1
	nop
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c031aca:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0x158,PC),r13
	jsr @r13
	nop
	mov.l @(0x15C,PC),r11
	mov.l @(0x15C,PC),r14
	mov.l @(0x154,PC),r9
	mov.l @(0x13C,PC),r10
	bra loc_8c031afe
	mov r0,r12

;==============================================
loc_8c031aea:
	jsr @r13
	nop
	mov r0,r5
	jsr @r9
	mov r12,r4
	jsr @r11
	mov r0,r4
	mov r0,r4
	cmp/hi r14,r4
	bt loc_8c031b04

loc_8c031afe:
	mov.l @r10,r2
	tst r2,r2
	bt loc_8c031aea

loc_8c031b04:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c031b14:
	mov.l r12,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r5
	mov 0x01,r4
	mov.l @(0x124,PC),r6
	mov 0x00,r7
	mov r5,r2
	mov.l @(0x124,PC),r12
	add 0x10,r2
	mov.l r5,@r15

loc_8c031b28:
	mov r12,r1
	add 0x02,r12
	mov.l r7,@r5
	mov.l r7,@(0x4,r5)
	mov.b r4,@r1
	mov r4,r0
	nop
	add 0x08,r5
	mov.b r0,@(0x1,r1)
	cmp/hs r2,r5
	mov.b r0,@r6
	bf.s loc_8c031b28
	add 0x01,r6
	add 0x04,r15
	rts
	mov.l @r15+,r12

;==============================================
loc_8c031b48:
	mov.l @(0x108,PC),r1
	mov 0x01,r7
	mov.l @(0x100,PC),r3
	mov.l r14,@-r15
	mov.b @r1,r2
	tst r2,r2
	bf.s loc_8c031b6e
	mov.l @r3,r6
	mov 0x4C,r0
	mov.b @(r0,r6),r0
	cmp/eq 0x02,r0
	bf loc_8c031b6e
	mov.l @(0xF4,PC),r3
	mov.b @r3,r2
	mov r7,r0
	nop
	shad r4,r0
	tst r0,r2
	bt loc_8c031bb6

loc_8c031b6e:
	mov 0x4C,r0
	mov.b @(r0,r6),r0
	cmp/eq 0x05,r0
	bf loc_8c031b8e
	mov.l @(0xE4,PC),r3
	mov.b @r3,r2
	add 0xFF,r2
	cmp/eq r4,r2
	bf loc_8c031bb6
	mov.l @(0xDC,PC),r3
	mov.b @r3,r4
	tst r7,r4
	bt loc_8c031b8c
	bra loc_8c031b8e
	mov 0x00,r4

loc_8c031b8c:
	mov r7,r4

loc_8c031b8e:
	mov r4,r14
	mov.l @(0xB8,PC),r3
	shll2 r14
	shll r14
	add r3,r14
	mov.l @r14,r2
	tst r2,r2
	bt loc_8c031ba4
	mov.l @(0x4,r14),r2
	cmp/ge r5,r2
	bf loc_8c031bb6

loc_8c031ba4:
	mov.l @(0xBC,PC),r1
	mov 0x01,r2
	shad r4,r2
	mov.b @r1,r3
	tst r2,r3
	bt loc_8c031bb6
	mov 0xFF,r2
	mov.l r2,@r14
	mov.l r5,@(0x4,r14)

loc_8c031bb6:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c031bba:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x98,PC),r5
	mov 0x00,r14
	mov.l @(0x78,PC),r10
	mov r5,r9
	mov r5,r11
	mov r5,r4
	add 0x10,r5
	mov.l r5,@r15

loc_8c031bdc:
	mov r9,r12
	mov r11,r13
	mov r14,r8

loc_8c031be2:
	mov.l @(0x88,PC),r3
	jsr @r3
	mov.l @r12,r4
	tst r0,r0
	bt loc_8c031bf2
	mov.l @(0x80,PC),r3
	jsr @r3
	mov.l @r13,r4

loc_8c031bf2:
	mov 0x02,r2
	add 0x01,r8
	cmp/ge r2,r8
	add 0x04,r13
	bf.s loc_8c031be2
	add 0x04,r12
	add 0x08,r11
	mov.l r14,@r10
	mov.l r14,@(0x4,r10)
	add 0x08,r10
	mov.l @r15,r2
	cmp/hs r2,r11
	bf.s loc_8c031bdc
	add 0x08,r9
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

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c2152d4
	#data bank11.loc_8c11bfc0
	#data loc_8c030ee8
	#data loc_8c03a004
	#data bank17.loc_8c17878a
	#data bank17.loc_8c178794
	#data bank17.loc_8c17879a
	#data 0x00028c58
	#data 0x8c1f9d6c
	#data 0x8c1f9d6e
	#data 0x8c26822c
	#data 0x8c26823c
	#data 0x8c212c9c
	#data 0x8c212c9d
	#data 0x8c213044
	#data 0x8c2142a7
	#data 0x8c212c02
	#data bank14.loc_8c14cf7c
	#data bank17.loc_8c17a4b4
	#data bank17.loc_8c17a54c

;==============================================
loc_8c031c74:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l @(0xE4,PC),r10
	mov 0x00,r3
	mov.l @(0xDC,PC),r4
	mov 0x00,r14
	mov.l @(0xD0,PC),r11
	add r10,r3
	mov.l @(0xD0,PC),r12
	mov 0x02,r13
	mov r14,r9
	mov.l r14,@r12
	mov.l r14,@r11
	mov.l r4,@(0xC,r15)
	mov.l r4,@(0x14,r15)
	mov.l r3,@(0x10,r15)

loc_8c031ca2:
	mov.l @(0xCC,PC),r0
	mov r9,r2
	shll2 r2
	mov r9,r4
	mov.l @(r0,r2),r3
	mov 0x76,r0
	shll r4
	mov.l @(0x30,r3),r1
	mov.l @r12,r3
	mov.w @(r0,r1),r2
	extu.w r2,r2
	add r2,r3
	mov r9,r2
	mov.l r3,@r12
	shll2 r2
	mov.l @(0xB0,PC),r3
	shll r2
	add r10,r2
	mov.l r14,@(0x4,r15)
	add r3,r4
	mov r4,r8
	mov.l r4,@r15
	mov.l r2,@(0x8,r15)

loc_8c031cd0:
	mov.l @(0xA4,PC),r3
	mov.l @(0x8,r15),r4
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	mov 0x76,r0
	mov.w @(r0,r4),r2
	mov.l @r12,r3
	extu.w r2,r2
	add r2,r3
	mov.w @(0x72,PC),r2
	mov r3,r1
	mov.l r3,@r12
	cmp/ge r2,r1
	bt loc_8c031cf8
	mov.l @r15,r3
	mov 0x01,r1
	mov.b r1,@r3
	bra loc_8c031cfa
	nop

loc_8c031cf8:
	mov.b r14,@r8

loc_8c031cfa:
	mov.l @r4,r2
	mov.w @(0x5C,PC),r3
	tst r3,r2
	bt loc_8c031d08
	mov.l @r11,r0
	add 0x01,r0
	mov.l r0,@r11

loc_8c031d08:
	mov.l @(0x4,r15),r3
	add 0x01,r3
	mov.l r3,@(0x4,r15)
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.l @(0x8,r15),r1
	add 0x04,r1
	mov.l r1,@(0x8,r15)
	mov.l @(0x4,r15),r3
	cmp/ge r13,r3
	bf.s loc_8c031cd0
	add 0x01,r8
	mov r9,r0
	nop
	mov r9,r3
	shll2 r3
	shll r0
	mov.l @(0x10,r15),r2
	add r3,r0
	mov.l @(0x44,PC),r3
	add 0x05,r0
	shll2 r0
	jsr @r3
	mov.l @(r0,r2),r4
	mov r0,r4
	mov.l @r4,r2
	mov.w @(0x1A,PC),r3
	tst r3,r2
	bt.s loc_8c031d4c
	mov 0x04,r3
	mov.l @r11,r0
	add 0x02,r0
	mov.l r0,@r11

loc_8c031d4c:
	mov.l @r11,r2
	cmp/gt r3,r2
	bf.s loc_8c031d7c
	add 0x01,r9
	mov.l @(0x14,r15),r0
	bra loc_8c031d82
	mov.b r14,@r0

;##############################################
	#data 0x2710
	#data 0x0100
	#align4
	#data 0x8c1f9d78
	#data 0x8c1f9d74
	#data 0x8c1f9d6c
	#data bank14.loc_8c14cf7c
	#data 0x8c212be0
	#data 0x8c1f9d6e
	#data bank17.loc_8c177aca

;----------------------------------------------
loc_8c031d7c:
	mov.l @(0xC,r15),r1
	mov 0x01,r2
	mov.b r2,@r1

loc_8c031d82:
	mov.l @(0xC,r15),r3
	cmp/ge r13,r9
	add 0x01,r3
	mov.l r3,@(0xC,r15)
	mov.l @(0x14,r15),r2
	add 0x01,r2
	mov.l r2,@(0x14,r15)
	mov.l @(0x10,r15),r1
	add 0x08,r1
	bf.s loc_8c031ca2
	mov.l r1,@(0x10,r15)
	mov.l @(0x104,PC),r11
	mov r14,r9

loc_8c031d9c:
	mov r9,r12
	shll2 r12
	shll r12
	mov r12,r2
	add r11,r2
	mov.l @r2,r3
	cmp/pz r3
	bt loc_8c031e62
	mov.l @(0xC,r15),r3
	mov r12,r1
	mov.l @(0xF0,PC),r0
	add r11,r1
	mov r3,r2
	shll r3
	add r2,r3
	mov.l @(0xEC,PC),r2
	shll2 r3
	mov.l @(r0,r3),r3
	mov.l r3,@r1
	mov.l @r2,r4
	mov.b @r4,r4
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c031ddc
	mov.w @(0xCC,PC),r1
	mov.l @(0xD8,PC),r0
	mul.l r1,r9
	sts macl,r1
	mov.b @(r0,r1),r3
	tst r3,r3
	bt loc_8c031dec

loc_8c031ddc:
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bt loc_8c031dec
	mov.l @(0xC8,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c031e62

loc_8c031dec:
	mov r9,r3
	mov.l @(0xC4,PC),r2
	shll r3
	mov.l @(0xC4,PC),r1
	add r3,r2
	mov r12,r3
	add r10,r3
	mov.l r14,@(0x4,r15)
	add r9,r1
	mov r14,r8
	mov.l r2,@(0x8,r15)
	mov.l r3,@r15
	mov.l r1,@(0x10,r15)

loc_8c031e06:
	mov.l @(0xB4,PC),r3
	mov.l @r15,r4
	jsr @r3
	mov.l @r4,r4
	tst r0,r0
	bt loc_8c031e4a
	mov.l @(0x8,r15),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c031e4a
	mov.l @(0x10,r15),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c031e4a
	mov r12,r4
	add r11,r4
	mov.l @(0x4,r4),r3
	mov.l @(0x94,PC),r1
	mov r3,r2
	shll r2
	add r3,r2
	mov.l r3,@(0xC,r15)
	shll2 r2
	add r1,r2
	mov.l r2,@(0x14,r15)
	mov.l @(0x8,r2),r3
	mov.l r3,@r4
	mov.l @(0x14,r15),r5
	mov r12,r0
	nop
	mov.l @(0x80,PC),r3
	add r10,r0
	jsr @r3
	mov.l @(r0,r8),r4

loc_8c031e4a:
	mov.l @(0x4,r15),r2
	add 0x04,r8
	add 0x01,r2
	cmp/ge r13,r2
	mov.l r2,@(0x4,r15)
	mov.l @(0x8,r15),r3
	add 0x01,r3
	mov.l r3,@(0x8,r15)
	mov.l @r15,r1
	add 0x04,r1
	bf.s loc_8c031e06
	mov.l r1,@r15

loc_8c031e62:
	mov r12,r2
	mov r11,r4
	add r4,r2
	mov.l @r2,r3
	cmp/pl r3
	bf loc_8c031ed8
	mov r12,r5
	add r4,r5
	mov.l @r5,r3
	add 0xFF,r3
	mov r3,r2
	tst r2,r2
	bf.s loc_8c031ed8
	mov.l r3,@r5
	mov r12,r4
	add r10,r4
	mov r4,r8
	mov r4,r12
	mov.l r14,@r15

loc_8c031e88:
	mov.l @(0x30,PC),r3
	jsr @r3
	mov.l @r8,r4
	tst r0,r0
	bt loc_8c031e98
	mov.l @(0x34,PC),r3
	jsr @r3
	mov.l @r12,r4

loc_8c031e98:
	mov.l @r15,r2
	bra loc_8c031ecc
	nop

;##############################################
	#data 0x05a4
	#align4
	#data 0x8c26822c
	#data bank14.loc_8c14cf18
	#data 0x8c26823c
	#data 0x8c268865
	#data 0x8c212c9c
	#data 0x8c1f9d6e
	#data 0x8c1f9d6c
	#data bank17.loc_8c17a4b4
	#data bank14.loc_8c14cf10
	#data bank17.loc_8c17a51e
	#data bank17.loc_8c17a54c

;----------------------------------------------
loc_8c031ecc:
	add 0x01,r2
	cmp/ge r13,r2
	add 0x04,r12
	mov.l r2,@r15
	bf.s loc_8c031e88
	add 0x04,r8

loc_8c031ed8:
	add 0x01,r9
	cmp/ge r13,r9
	bt loc_8c031ee2
	bra loc_8c031d9c
	nop

loc_8c031ee2:
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

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4

;==============================================
loc_8c031ef8:
	sts.l pr,@-r15
	mov.l @(0x38,PC),r4
	mov 0x10,r6
	mov.l @(0x38,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.l @(0x34,PC),r4
	bsr loc_8c031f10
	nop
	fldi1 fr4
	bra loc_8c031f24
	lds.l @r15+,pr

loc_8c031f10:
	sts.l pr,@-r15
	mov.l @(0x2C,PC),r3
	mov r4,r2
	mov.l @(0x1C,PC),r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x24,PC),r2
	mov.l @(0x14,PC),r4
	jmp @r2
	lds.l @r15+,pr

loc_8c031f24:
	mov.l @(0x20,PC),r3
	mov.l @(0x24,PC),r1
	mov r3,r2
	fmov fr4,@r3
	jmp @r1
	fmov @r2,fr4

loc_8c031f30:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26a8f4
	#data bank12.loc_8c129728
	#data bank14.loc_8c14cf8c
	#data bank12.loc_8c1294c8
	#data bank12.loc_8c1236e0
	#data 0x8c26a900
	#data bank12.loc_8c123680

;==============================================
loc_8c031f50:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(0x40,PC),r3
	jsr @r3
	mov 0x01,r6
	mov 0x00,r4
	mov r0,r6
	mov 0x00,r5
	bra loc_8c031f74
	add r13,r4

loc_8c031f6a:
	mov.l @(0x8,r4),r3
	add 0x01,r5
	add r14,r3
	mov.l r3,@(0x8,r4)
	add 0x10,r4

loc_8c031f74:
	mov r5,r2
	shll2 r2
	shll2 r2
	add r13,r2
	mov.l @(0x8,r2),r3
	cmp/pl r3
	bt loc_8c031f6a
	mov r6,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c031f8e:
	sts.l pr,@-r15
	mov.l @(0x8,PC),r3
	jsr @r3
	mov 0x01,r6
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data bank02.loc_8c027366

;==============================================
loc_8c031fa0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r13
	shll2 r13
	mov.l @(0x168,PC),r0
	mov r4,r14
	mov.l r13,@r15
	mov.l @(0x168,PC),r3
	mov.l @(r0,r13),r13
	jsr @r3
	mov 0x03,r4
	mov.w @(0x13C,PC),r0
	mov.l r13,@(r0,r14)
	mov.l @r13,r3
	mov.w @(0x138,PC),r0
	add r13,r3
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l @(0x4,r13),r2
	add r13,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l @(0x8,r13),r3
	add r13,r3
	mov.l r3,@(r0,r14)
	add 0x14,r0
	mov.l @(0xC,r13),r2
	add r13,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l @(0x10,r13),r3
	add r13,r3
	mov.l r3,@(r0,r14)
	mov.l @(0x138,PC),r0
	mov.l @r15,r2
	mov.l @(r0,r2),r3
	mov 0x01,r2
	mov.w @(0x10C,PC),r0
	mov.l r3,@(r0,r14)
	add 0xAD,r0
	mov.b r2,@(r0,r14)
	mov.w @(0x106,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(0x128,PC),r0
	mov.b @(r0,r3),r2
	mov.w @(0x100,PC),r0
	mov.w r2,@(r0,r14)
	mov.w @(0xFE,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(0x120,PC),r0
	mov.b @(r0,r3),r2
	mov 0x30,r0
	mov.w @(0xF6,PC),r3
	mov.b r2,@(r0,r14)
	mov r3,r0
	nop
	add 0x32,r0
	mov.w r3,@(r0,r14)
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x34,r0
	bf.s loc_8c032028
	mov 0x08,r6
	mov.w @(0xE4,PC),r0
	mov.w @(0xE0,PC),r2
	mov.w r2,@(r0,r14)

loc_8c032028:
	mov.w @(0xD6,PC),r0
	mov.w @(r0,r14),r5
	mov.w @(0xDC,PC),r0 ;0x52d
	mov.b @(r0,r14),r4
	mov.w @(0xDA,PC),r0
	shll2 r4
	shll2 r4
	mov.l @(r0,r14),r3
	shll2 r4
	shll r4
	shll r4
	add r3,r4
	mov.l @(0xE8,PC),r3
	jsr @r3
	nop
	mov.l @(0x18,r13),r2
	mov.w @(0xC4,PC),r0
	add r13,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l @(0x1C,r13),r3
	add r13,r3
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l @(0x20,r13),r2
	add r13,r2
	mov.l r2,@(r0,r14)
	add 0xF4,r0
	mov.l @(0x14,r13),r3
	add r13,r3
	mov.l r3,@(r0,r14)
	add 0x20,r0
	mov.l @(0x24,r13),r2
	add r13,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l @(0x28,r13),r3
	add r13,r3
	mov.l r3,@(r0,r14)
	add 0x08,r0
	mov.l @(0x30,r13),r2
	add r13,r2
	mov.l r2,@(r0,r14)
	add 0xFC,r0
	mov.l @(0x2C,r13),r3
	add r13,r3
	mov.l r3,@(r0,r14)
	mov.l @(0x34,r13),r2
	add 0x08,r0
	mov.l @(0xA4,PC),r3
	mov 0x01,r6
	add r13,r2
	mov.l r2,@(r0,r14)
	mov 0x3B,r2
	mov.w @(0x68,PC),r0
	mov.b @(r0,r14),r5
	add 0x30,r0
	shll8 r5
	shll2 r5
	shll2 r5
	shll2 r5
	shll r5
	add r3,r5
	mov.l r5,@(r0,r14)
	add 0xD0,r0
	mov.b @(r0,r14),r4
	add 0x08,r0
	mov.b @(r0,r14),r3
	muls.w r2,r4
	sts macl,r4
	add r3,r4
	mov.w @(0x58,PC),r3
	add r3,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x74,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0320c6:
	rts
	nop

;==============================================
loc_8c0320ca:
	rts
	nop

;==============================================
loc_8c0320ce:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x64,PC),r3
	jsr @r3
	nop
	mov.w @(0x38,PC),r4
	extu.b r0,r0
	mov.l @(0x5C,PC),r5
	and 0x03,r0
	mov.l @(0x5C,PC),r2
	add r0,r4
	jsr @r2
	mov 0x01,r6
	mov.l @(0x5C,PC),r3
	mov.l @(0x50,PC),r4
	mov.l @(0x54,PC),r14
	jsr @r3
	mov r14,r5
	mov 0x00,r5
	mov r14,r6
	bra loc_8c032156
	mov r14,r4

;##############################################
	#data 0x0528
	#data 0x015c
	#data 0x0180
	#data 0x0524
	#data 0x012e
	#data 0x052c
	#data 0x0100
	#data 0x0200
	#data 0x0132
	#data 0x052d
	#data 0x0164
	#data 0x016c
	#data 0x010c
	#data 0x02bd
	#align4
	#data bank13.loc_8c135574
	#data bank02.loc_8c027b30
	#data bank13.loc_8c135594
	#data bank13.loc_8c1355d4
	#data bank13.loc_8c13565c
	#data loc_8c033aca
	#data 0x0ce30000
	#data bank02.loc_8c02738a
	#data bank11.loc_8c11e730
	#data 0x0cc00000
	#data bank02.loc_8c027366
	#data 0x0ce60000
	#data loc_8c03552a

;----------------------------------------------
loc_8c03214c:
	mov.l @(0x8,r4),r3
	add 0x01,r5
	add r14,r3
	mov.l r3,@(0x8,r4)
	add 0x10,r4

loc_8c032156:
	mov r5,r2
	shll2 r2
	shll2 r2
	add r6,r2
	mov.l @(0x8,r2),r3
	cmp/pl r3
	bt loc_8c03214c
	mov.l @(0x100,PC),r3
	mov.l @(0xFC,PC),r5
	jsr @r3
	mov r14,r4
	mov.l @(0xFC,PC),r2
	jsr @r2
	mov 0x0C,r4
	mov.l @(0xFC,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xEC,PC),r2
	mov 0x00,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c032184:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xF0,PC),r3
	mov.l @(0xEC,PC),r4
	mov.l @(0xE4,PC),r14
	jsr @r3
	mov r14,r5
	mov 0x00,r5
	mov r14,r6
	bra loc_8c0321a4
	mov r14,r4

loc_8c03219a:
	mov.l @(0x8,r4),r3
	add 0x01,r5
	add r14,r3
	mov.l r3,@(0x8,r4)
	add 0x10,r4

loc_8c0321a4:
	mov r5,r2
	shll2 r2
	shll2 r2
	add r6,r2
	mov.l @(0x8,r2),r3
	cmp/pl r3
	bt loc_8c03219a
	mov.l @(0xB4,PC),r3
	mov.l @(0xAC,PC),r5
	jsr @r3
	mov r14,r4
	mov.l @(0xB0,PC),r2
	jsr @r2
	mov 0x0D,r4
	mov.l @(0xAC,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r2
	mov 0x00,r4
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0321d2:
	mov.l @(0xB0,PC),r3
	mov.w @(0x82,PC),r4
	mov.l @(0xA8,PC),r5
	jmp @r3
	mov 0x01,r6

;==============================================
loc_8c0321dc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r3
	mov.w @(0x76,PC),r4
	mov.l @(0x8C,PC),r5
	jsr @r3
	mov 0x01,r6
	mov.l @(0x90,PC),r2
	mov.l @(0x84,PC),r4
	mov.l @(0x98,PC),r14
	jsr @r2
	mov r14,r5
	mov 0x00,r5
	mov r14,r6
	bra loc_8c032206
	mov r14,r4

loc_8c0321fc:
	mov.l @(0x8,r4),r2
	add 0x01,r5
	add r14,r2
	mov.l r2,@(0x8,r4)
	add 0x10,r4

loc_8c032206:
	mov r5,r3
	shll2 r3
	shll2 r3
	add r6,r3
	mov.l @(0x8,r3),r2
	cmp/pl r2
	bt loc_8c0321fc
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03221a:
	sts.l pr,@-r15
	mov.l @(0x48,PC),r3
	mov.l @(0x68,PC),r4
	mov.l @(0x68,PC),r5
	jsr @r3
	nop
	mov.l @(0x44,PC),r2
	mov.w @(0x32,PC),r4
	jsr @r2
	nop
	mov.l @(0x40,PC),r3
	mov.l @(0x54,PC),r4
	jsr @r3
	mov 0x00,r5
	mov.l @(0x34,PC),r2
	mov 0x00,r4
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c03223e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x24,PC),r3
	mov.w @(0x14,PC),r4
	jsr @r3
	nop
	mov.l @(0x44,PC),r2
	mov.l @(0x3C,PC),r14
	mov.l @(0x44,PC),r12
	mov.l r2,@r14
	bra loc_8c0322ae
	mov 0x00,r13

;##############################################
	#data 0x02c5
	#data 0x0093
	#data 0x0850
	#data 0x0c10
	#align4
	#data 0x00020000
	#data bank02.loc_8c02ded6
	#data bank11.loc_8c11b800
	#data bank12.loc_8c1240a0
	#data 0x0ce60000
	#data 0x0ce2ea00
	#data loc_8c03552a
	#data 0x0cd00000
	#data bank02.loc_8c027366
	#data 0x0cc00000
	#data 0x00200000
	#data 0x8c26a904
	#data 0x0cea0000
	#data bank12.loc_8c122fd0

;----------------------------------------------
loc_8c03229c:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c0322ae:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c03229c
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0322c0:
	mov.l r5,@-r15
	shll2 r4
	mov.l @(0x8,r6),r5
	shll2 r4
	mov.l @(0xC4,PC),r3
	add r5,r4
	mov.l @(0x8,r4),r5
	mov.l @r15,r4
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0322d4:
	mov r4,r6
	mov.l r14,@-r15
	mov.l @r6,r7
	mov r6,r14
	mov.l @r6,r3
	sub r4,r7
	add 0xF0,r7
	sub r7,r3
	mov.l r3,@r6
	mov.l @(0x8,r6),r2
	sub r7,r2
	mov.l r2,@(0x8,r6)
	mov.l @r6,r1
	bra loc_8c032300
	mov 0x00,r4

loc_8c0322f2:
	mov r4,r0
	nop
	shll2 r0
	mov.l @(r0,r1),r3
	add 0x01,r4
	sub r7,r3
	mov.l r3,@(r0,r1)

loc_8c032300:
	mov.l @(0x4,r14),r2
	cmp/ge r2,r4
	bf loc_8c0322f2
	mov.l @(0x8,r14),r4
	mov.l @(0x8,r4),r6
	bra loc_8c032316
	sub r5,r6

loc_8c03230e:
	mov.l @(0x8,r4),r3
	sub r6,r3
	mov.l r3,@(0x8,r4)
	add 0x10,r4

loc_8c032316:
	mov.w @r4,r2
	tst r2,r2
	bf loc_8c03230e
	rts
	mov.l @r15+,r14

loc_8c032320:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x64,PC),r3
	mov r5,r13
	jsr @r3
	mov.l r6,@r15
	mov.l @r15,r2
	mov.l @(0x60,PC),r11
	mov.l r2,@r13
	bra loc_8c03234e
	mov 0x00,r14

loc_8c03233e:
	mov.l @r13,r12
	mov r14,r4
	shll2 r4
	mov.l @r12,r0
	mov.l @(0x8,r12),r5
	jsr @r11
	mov.l @(r0,r4),r4
	add 0x01,r14

loc_8c03234e:
	mov.l @r13,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r14
	bf loc_8c03233e
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c032364:
	mov.l r14,@-r15
	mov.l @(0x34,PC),r14
	mov.l r13,@-r15
	mov.l @(0x34,PC),r2
	mov.w @(0x1A,PC),r0
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.l @r14,r4
	mov r4,r0
	nop
	mov.w @(0xE,PC),r1
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8c0323a4
	cmp/eq 0x01,r0
	bt loc_8c0323ac
	bra loc_8c0323b2
	nop

;##############################################
	#data 0x0094
	#data 0x0084
	#align4
	#data loc_8c03552a
	#data bank11.loc_8c11b800
	#data bank12.loc_8c122fd0
	#data 0x8c26823c
	#data 0x0c420000

;----------------------------------------------
loc_8c0323a4:
	mov.w @(0xD6,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c0323b2

loc_8c0323ac:
	mov.w @(0xD0,PC),r0
	mov.l @(0xE0,PC),r3
	mov.l r3,@(r0,r4)

loc_8c0323b2:
	mov.l @(0xE0,PC),r4
	mov.l @(0xE0,PC),r3
	mov.l @r14,r5
	mov.w @(0xC4,PC),r0
	jsr @r3
	mov.l @(r0,r5),r5
	mov.l @(0xE4,PC),r4
	mov.l @(0xE4,PC),r2
	mov.l @(0xD8,PC),r6
	mov.l @(0xD8,PC),r5
	jsr @r2
	nop
	mov.w @(0xB4,PC),r4
	mov.l @(0xC4,PC),r5
	mov.l @(0xDC,PC),r13
	jsr @r13
	mov 0x00,r6
	mov.l @r14,r3
	mov 0x29,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0323e6
	mov.w @(0xA2,PC),r4
	mov.l @(0xCC,PC),r5
	bra loc_8c0323ec
	mov 0x00,r6

loc_8c0323e6:
	mov.w @(0x9C,PC),r4
	mov 0x00,r6
	mov.l @(0xC4,PC),r5

loc_8c0323ec:
	jsr @r13
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0323f8:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x06,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0xA4,PC),r10
	mov.l @(0x80,PC),r11
	mov.w @(0x74,PC),r8

loc_8c032412:
	mul.l r8,r14
	mov.l @(0xA0,PC),r3
	mov.w @(0x70,PC),r0
	sts macl,r13
	add r3,r13
	mov.b @(r0,r13),r2
	mov.l @(0x9C,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r1
	mov.w @(0x62,PC),r0
	mov.l r1,@(r0,r13)
	mov.l @(0x94,PC),r1
	mov.w @(0x50,PC),r0
	mov.l @r1,r2
	mov.l @(r0,r2),r3
	cmp/eq r11,r3
	bf.s loc_8c03243a
	mov r14,r4
	add 0x06,r4

loc_8c03243a:
	mov.l @(0x88,PC),r3
	mov r4,r12
	shll2 r12
	add r3,r12
	mov.l @r12,r2
	tst r2,r2
	bt loc_8c032454
	mov.w @(0x40,PC),r0
	mov r10,r6
	mov.l @(0x58,PC),r2
	mov.l @r12,r5
	jsr @r2
	mov.l @(r0,r13),r4

loc_8c032454:
	add 0x01,r14
	cmp/ge r9,r14
	bf loc_8c032412
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
loc_8c03246c:
	sts.l pr,@-r15
	mov.l @(0x34,PC),r4
	mov.l @(0x34,PC),r3
	mov.l @(0x54,PC),r6
	mov.l @(0x54,PC),r5
	jsr @r3
	nop
	bra loc_8c0323f8
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0085
	#data 0x0094
	#data 0x0295
	#data 0x0098
	#data 0x0097
	#data 0x05a4
	#data 0x055c
	#data 0x0184
	#align4
	#data 0x0c810000
	#data 0x0cc00000
	#data loc_8c03552a
	#data 0x0001f000
	#data 0x0cd85000
	#data 0x0ce80000
	#data bank12.loc_8c129668
	#data bank02.loc_8c027366
	#data 0x0ce60000
	#data 0x00008000
	#data 0x8c268340
	#data bank13.loc_8c1355b4
	#data 0x8c26823c
	#data bank14.loc_8c14d020
	#data 0x0000bc00
	#data 0x0cc49000

;==============================================
loc_8c0324d0:
	mov.l r14,@-r15
	mov.l @(0xD0,PC),r14
	mov.w @(0xB8,PC),r0
	mov.l @(0xD0,PC),r2
	mov.w @(0xB6,PC),r1
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c0324f4
	mov.w @(0xA0,PC),r0
	mov.l @(0xBC,PC),r3
	mov.l @r14,r2
	mov.l r3,@(r0,r2)

loc_8c0324f4:
	mov.l @(0xBC,PC),r13
	mov 0x00,r6
	mov.l @(0xB4,PC),r12
	mov r13,r5
	jsr @r12
	mov 0x3E,r4
	mov.w @(0x8C,PC),r0
	mov.l @r14,r5
	mov.l @(0xB0,PC),r3
	mov.l @(r0,r5),r5
	jsr @r3
	mov r13,r4
	mov.w @(0x84,PC),r4
	mov.l @(0xAC,PC),r5
	jsr @r12
	mov 0x00,r6
	mov.w @(0x7E,PC),r4
	mov 0x00,r6
	jsr @r12
	mov r13,r5
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c032526:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x68,PC),r12
	mov.w @(0x5A,PC),r1
	mov.l @r12,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8c032550
	cmp/eq 0x01,r0
	bt loc_8c032558
	cmp/eq 0x02,r0
	bt loc_8c032560
	bra loc_8c032566
	nop

loc_8c032550:
	mov.w @(0x46,PC),r4
	mov r4,r14
	bra loc_8c032566
	add 0x01,r14

loc_8c032558:
	mov.w @(0x40,PC),r4
	mov r4,r14
	bra loc_8c032566
	add 0x01,r14

loc_8c032560:
	mov.w @(0x3A,PC),r4
	mov r4,r14
	add 0x01,r14

loc_8c032566:
	mov.l @(0x48,PC),r2
	mov.l @(0x50,PC),r5
	jsr @r2
	mov 0x00,r6
	mov.l @(0x40,PC),r3
	mov 0x00,r6
	mov.l @(0x40,PC),r5
	jsr @r3
	mov r14,r4
	mov.w @(0x24,PC),r0
	mov 0x01,r3
	mov.l @r12,r4
	mov.b @(r0,r4),r4
	xor r4,r3
	tst r3,r3
	bt.s loc_8c0325c0
	mov.l @r12,r5
	mov.w @(0x4,PC),r0
	mov.l @(0x1C,PC),r1
	bra loc_8c0325c6
	mov.l r1,@(r0,r5)

;##############################################
	#data 0x0094
	#data 0x0084
	#data 0x029a
	#data 0x029b
	#data 0x00ad
	#data 0x029c
	#data 0x02b9
	#data 0x02bb
	#data 0x009b
	#align4
	#data 0x8c26823c
	#data 0x0c810000
	#data 0x0c420000
	#data bank02.loc_8c027366
	#data 0x0cc00000
	#data loc_8c03552a
	#data 0x0ce80000

;----------------------------------------------
loc_8c0325c0:
	mov.w @(0x116,PC),r0
	mov.l @(0x12C,PC),r2
	mov.l r2,@(r0,r5)

loc_8c0325c6:
	mov r4,r3
	shll r4
	mov.l @(0x128,PC),r9
	add r3,r4
	shll2 r4
	mov.w @(0x108,PC),r0
	mov r9,r3
	add 0x18,r3
	mov.l r4,@r15
	add r3,r4
	mov.l @r4,r4
	mov 0x0C,r8
	mov.l @r12,r2
	mov 0x00,r14
	mov.b @(r0,r4),r3
	mov.w @(0xF6,PC),r0
	mov.l @(0x110,PC),r13
	mov.l @(0x110,PC),r11
	mov.b r3,@(r0,r2)

loc_8c0325ec:
	mov.l @r15,r3
	mov r9,r0
	nop
	add 0x18,r0
	mov r13,r5
	add r3,r0
	mov.l @(0x108,PC),r3
	mov.l @(r0,r14),r10
	mov 0x01,r6
	mov.w @(0xDA,PC),r0
	mov.b @(r0,r10),r4
	mov.l @(0xFC,PC),r0
	shll r4
	mov.w @(r0,r4),r4
	jsr @r3
	extu.w r4,r4
	add 0x04,r14
	cmp/hs r8,r14
	bf.s loc_8c0325ec
	add r11,r13
	mov.w @(0xC8,PC),r0
	mov.l @r12,r5
	mov.l @(0xEC,PC),r6
	mov.b @(r0,r5),r0
	cmp/eq 0x01,r0
	bf.s loc_8c032624
	mov r6,r4
	mov.l @(0xE8,PC),r4

loc_8c032624:
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x02,r0
	bf loc_8c03262e
	mov r6,r4

loc_8c03262e:
	mov.w @(0xA8,PC),r0
	mov.l @(0xDC,PC),r2
	mov.l @(r0,r5),r5
	add r2,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xD8,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03264c:
	rts
	nop

;==============================================
loc_8c032650:
	mov.l @(0xCC,PC),r2
	mov 0x29,r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0xB8,PC),r13
	mov.b @(r0,r3),r1
	mov.l @(0xB8,PC),r14
	tst r1,r1
	bf loc_8c032676
	mov.w @(0x78,PC),r4
	mov.l @(0xB8,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.w @(0x72,PC),r4
	mov 0x00,r6
	bra loc_8c032684
	mov r13,r5

loc_8c032676:
	mov.w @(0x6C,PC),r4
	mov.l @(0xA8,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.w @(0x66,PC),r4
	mov r13,r5
	mov 0x00,r6

loc_8c032684:
	jsr @r14
	nop
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(0x84,PC),r2
	mov.l @(0x80,PC),r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c032696:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x78,PC),r4
	mov.l @(0x7C,PC),r13
	mov.w @(0x3A,PC),r3
	mov.l r4,@r13
	mov.l @(0x8,r4),r8
	mov.l @(0x78,PC),r4
	mov r4,r9
	mov r4,r10
	mov.l @(0x74,PC),r4
	mov r4,r12
	add r3,r4
	bra loc_8c0327d4
	mov.l r4,@r15

;----------------------------------------------
loc_8c0326c2:
	mov.l @(0x5C,PC),r4
	mov 0x29,r0
	mov.l @r4,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf.s loc_8c032734
	mov r12,r14
	mov.w @(0x18,PC),r0
	mov.l @(r0,r14),r5
	mov.l @r5,r4
	bra loc_8c03276e
	add r5,r4

;##############################################
	#data 0x0094
	#data 0x052c
	#data 0x008f
	#data 0x00ad
	#data 0x02a4
	#data 0x02a5
	#data 0x02a8
	#data 0x02a9
	#data 0x21d8
	#data 0x0184
	#align4
	#data 0x0c420000
	#data 0x8c2895f0
	#data 0x0cdd0000
	#data 0x00010000
	#data bank13.loc_8c1354fc
	#data bank02.loc_8c02738a
	#data 0x00024000
	#data 0x0002c000
	#data 0x0cc00000
	#data loc_8c03552a
	#data 0x0cd00000
	#data bank02.loc_8c027366
	#data 0x8c26823c
	#data 0x0ce80000
	#data 0x8c26a90c
	#data bank14.loc_8c14d053
	#data 0x8c268340

;----------------------------------------------
loc_8c032734:
	mov.w @(0x100,PC),r0
	mov 0x20,r6
	mov r11,r5
	mov.b @(r0,r14),r2
	cmp/ge r6,r2
	bt.s loc_8c032750
	mov 0x01,r4
	mov.b @(r0,r14),r2
	mov.l @(0x104,PC),r6
	shad r2,r4
	tst r6,r4
	bf loc_8c03275c
	bra loc_8c032760
	nop

loc_8c032750:
	mov.b @(r0,r14),r2
	mov.l @(0xFC,PC),r6
	add 0xE0,r2
	shad r2,r4
	tst r6,r4
	bt loc_8c032760

loc_8c03275c:
	mov 0x03,r4
	mov r4,r5

loc_8c032760:
	mov.w @(0xD6,PC),r0
	mov.l @(r0,r14),r6
	mov r5,r0
	nop
	shll2 r0
	mov.l @(r0,r6),r4
	add r6,r4

loc_8c03276e:
	mov.l @(0xE8,PC),r3
	mov.l @(0xE0,PC),r11
	jsr @r3
	mov r11,r5
	mov.b @r9,r7
	mov.w @(0xC0,PC),r4
	extu.b r7,r7
	mov.w @(0xBE,PC),r0
	shll2 r7
	mov.w @(0xBC,PC),r5
	shll2 r7
	mov.b @(r0,r14),r0
	add r8,r7
	add r4,r7
	mov.l @(0xD0,PC),r4
	mov.l @(0x8,r7),r7
	mov.b @(r0,r4),r6
	extu.b r6,r6
	shll8 r6
	shll2 r6
	shll r6
	add r11,r6
	bra loc_8c0327a6
	mov r5,r4

loc_8c03279e:
	mov.l @r6+,r3
	add 0xFF,r4
	mov.l r3,@r7
	add 0x04,r7

loc_8c0327a6:
	tst r4,r4
	bf loc_8c03279e
	mov.b @r10,r6
	mov.w @(0x92,PC),r4
	extu.b r6,r6
	mov.l @(0xAC,PC),r7
	shll2 r6
	shll2 r6
	add r8,r6
	add r4,r6
	mov.l @(0x8,r6),r6
	bra loc_8c0327c8
	mov r5,r4

loc_8c0327c0:
	mov.l @r7+,r3
	add 0xFF,r4
	mov.l r3,@r6
	add 0x04,r6

loc_8c0327c8:
	tst r4,r4
	bf loc_8c0327c0
	mov.w @(0x74,PC),r4
	add 0x01,r9
	add 0x01,r10
	add r4,r12

loc_8c0327d4:
	mov.l @r15,r3
	cmp/hs r3,r12
	bt.s loc_8c0327e0
	mov 0x00,r11
	bra loc_8c0326c2
	nop

loc_8c0327e0:
	mov.l @(0x80,PC),r3
	mov.w @(0x60,PC),r4
	jsr @r3
	nop
	mov.l @(0x7C,PC),r12
	bra loc_8c032800
	mov r11,r14

loc_8c0327ee:
	mov.l @r13,r0
	mov r14,r4
	mov.l @r13,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r14

loc_8c032800:
	mov.l @r13,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r14
	bf loc_8c0327ee
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
loc_8c03281c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r12
	mov.w @(0x1C,PC),r4
	mov.l @(0x40,PC),r14
	mov.l @(0x40,PC),r3
	jsr @r12
	mov.l r3,@r14
	mov.l @(0x34,PC),r11
	bra loc_8c032886
	mov 0x00,r13

;##############################################
	#data 0x052c
	#data 0x0184
	#data 0x00a0
	#data 0x04c9
	#data 0x0200
	#data 0x0100
	#data 0x05a4
	#data 0x0c90
	#data 0x0810
	#align4
	#data 0xd0010000
	#data 0x04000042
	#data 0x0ce60000
	#data loc_8c03552a
	#data bank14.loc_8c14d050
	#data 0x0ce61000
	#data bank11.loc_8c11b800
	#data bank12.loc_8c122fd0
	#data 0x8c26a910
	#data 0x0ce80000

;----------------------------------------------
loc_8c032874:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r11
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c032886:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c032874
	mov.w @(0xD2,PC),r4
	jsr @r12
	nop
	mov.l @(0xDC,PC),r2
	mov.l @(0xD8,PC),r4
	jsr @r2
	mov 0x00,r5
	mov.l @(0xD8,PC),r3
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c0328e2
	mov.l @(0xD4,PC),r3
	mov.w @(0xB8,PC),r4
	mov.l @(0xCC,PC),r5
	jsr @r3
	mov 0x00,r6
	mov.l @(0xD4,PC),r2
	mov.l @(0xC4,PC),r4
	mov.l @(0xCC,PC),r5
	jsr @r2
	nop
	jsr @r12
	mov 0x00,r4
	mov.l @(0xCC,PC),r3
	mov.l @(0xC8,PC),r5
	jsr @r3
	mov 0x0B,r4
	mov.w @(0x9C,PC),r4
	jsr @r12
	nop
	lds.l @r15+,pr
	mov.l @(0xC4,PC),r2
	mov 0x00,r6
	mov.l @(0xBC,PC),r4
	mov r6,r5
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0328e2:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0328ee:
	mov.l r14,@-r15
	mov.l @(0xA8,PC),r4
	mov.l @(0xAC,PC),r14
	mov.l @(0xAC,PC),r3
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l r4,@r14
	mov.l r4,@r3
	mov.l @(0xA4,PC),r2
	mov.w @(0x64,PC),r4
	jsr @r2
	nop
	mov.l @(0xA0,PC),r12
	bra loc_8c032920
	mov 0x00,r13

loc_8c03290e:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c032920:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c03290e
	mov.l @(0x4C,PC),r4
	mov.w @(0x3E,PC),r0
	mov.l @r4,r2
	mov.l @(0x80,PC),r14
	mov.l @(r0,r2),r3
	mov.l r3,@(0x8,r14)
	mov.l @r4,r2
	mov.l @(r0,r2),r3
	mov.l r3,@(0x18,r14)
	mov.l @r4,r2
	mov.l @(0x74,PC),r3
	mov.l @(r0,r2),r1
	add r3,r1
	mov.l @(0x64,PC),r3
	mov.l r1,@(0x28,r14)
	mov.l @r4,r2
	mov.l @(0x6C,PC),r1
	mov.l @(r0,r2),r0
	mov.w @(0x14,PC),r4
	add r1,r0
	jsr @r3
	mov.l r0,@(0x38,r14)
	lds.l @r15+,pr
	mov.l @(0x1C,PC),r2
	mov 0x00,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0910
	#data 0x0095
	#data 0x0914
	#data 0x0810
	#data 0x0094
	#align4
	#data bank14.loc_8c14d05c
	#data bank12.loc_8c1240a0
	#data 0x8c26823c
	#data 0x0ccf8000
	#data bank02.loc_8c027366
	#data 0x0cc60000
	#data loc_8c03552a
	#data bank14.loc_8c14d09c
	#data bank12.loc_8c127860
	#data bank14.loc_8c14d07c
	#data bank12.loc_8c124080
	#data 0x0ce80000
	#data 0x8c26a920
	#data 0x8c26a928
	#data bank11.loc_8c11b800
	#data bank12.loc_8c122fd0
	#data bank14.loc_8c14d0bc
	#data 0x00200000
	#data 0x00208000

;==============================================
loc_8c0329bc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0xF0,PC),r4
	mov.w @(0xD4,PC),r10
	mov.l @(0xE4,PC),r3
	mov r4,r13
	mov.l @(0xDC,PC),r14
	add r4,r10
	sts.l pr,@-r15
	mov.w @(0xC6,PC),r11
	mov.l @(0xDC,PC),r12
	mov.l r3,@r14

loc_8c0329da:
	mov.w @(0xC4,PC),r0
	mov r13,r5
	mov.l @r14,r6
	mov.l @(r0,r5),r4
	mov.l @(0x8,r4),r5
	add r4,r5
	mov.b @r12+,r4
	bsr loc_8c0322c0
	add 0x02,r4
	add r11,r13
	cmp/hs r10,r13
	bf loc_8c0329da
	mov.l @(0xC8,PC),r3
	mov.w @(0xAC,PC),r4
	jsr @r3
	nop
	mov.l @(0xC4,PC),r12
	bra loc_8c032a12
	mov 0x00,r13

loc_8c032a00:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c032a12:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c032a00
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c032a28:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x8C,PC),r10
	mov.w @(0x66,PC),r0
	mov.l @(0x84,PC),r14
	mov.l @(0x6C,PC),r4
	mov.l @(0x88,PC),r3
	mov.l r4,@r14
	mov.l @r10,r12
	mov.l @(0x8,r4),r4
	mov.l @(r0,r12),r12
	add r3,r12
	bra loc_8c032a60
	mov r12,r5

loc_8c032a52:
	mov r4,r2
	mov.l @(0x78,PC),r3
	mov r5,r1
	add 0x10,r4
	add 0x10,r5
	jsr @r3
	mov 0x10,r0

loc_8c032a60:
	mov.w @r4,r0
	tst r0,r0
	bf loc_8c032a52

;==============================================
loc_8c032a66:
	mov.l @(0x68,PC),r3
	mov r4,r2
	mov r5,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x34,PC),r0
	mov 0x09,r5
	mov.l @r10,r2
	mov.w @(0x30,PC),r1
	mov.b @(r0,r2),r3
	mov.l r3,@r15
	mov.l @r10,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf.s loc_8c032a88
	mov r5,r4
	mov 0x0D,r4

loc_8c032a88:
	mov.w @(0x1E,PC),r1
	mov.l @r10,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c032a94
	mov r5,r4

loc_8c032a94:
	mov.l @(0x44,PC),r9
	mov.l @(0x40,PC),r8
	mov.l @(0x38,PC),r13
	bra loc_8c032aec
	mov r4,r11

;##############################################
	#data 0x05a4
	#data 0x21d8
	#data 0x0184
	#data 0x0810
	#data 0x0094
	#data 0x009b
	#data 0x00ad
	#align4
	#data 0x8c26a914
	#data 0x0ce80000
	#data bank14.loc_8c14d10c
	#data 0x8c268340
	#data bank11.loc_8c11b800
	#data bank12.loc_8c122fd0
	#data 0x8c26a924
	#data 0x8c26823c
	#data 0x00014000
	#data bank12.loc_8c1294bc
	#data 0x0cdd0000
	#data 0x00010000
	#data 0x0ce00000

;----------------------------------------------
loc_8c032ae0:
	mov.l @r14,r6
	mov r13,r5
	bsr loc_8c0322c0
	mov r11,r4
	add r8,r13
	add 0x01,r11

loc_8c032aec:
	cmp/ge r9,r13
	bf loc_8c032ae0
	mov.l @r15,r2
	mov.w @(0xAA,PC),r3
	mov.l @r10,r4
	mul.l r3,r2
	mov.w @(0xA6,PC),r0
	mov.l @(0xB8,PC),r1
	mov.b @(r0,r4),r0
	sts macl,r13
	cmp/eq 0x01,r0
	bf.s loc_8c032b14
	add r1,r13
	mov.l @(0xB0,PC),r3
	mov r12,r5
	mov.w @(0x96,PC),r0
	jsr @r3
	mov.b @(r0,r13),r4
	bra loc_8c032b48
	nop

loc_8c032b14:
	mov.w @(0x8A,PC),r0
	mov.l @(0xA4,PC),r7
	mov.b @(r0,r4),r3
	mov.w @(0x88,PC),r0
	tst r3,r3
	mov 0x08,r3
	mov r3,r6
	shll2 r6
	shll2 r6
	mov.l r3,@(0x4,r15)
	add r12,r6
	mov.l @(0x94,PC),r3
	mov.l r6,@r15
	mov.l @(r0,r13),r5
	add 0xFC,r0
	mov.l @(0x8,r6),r6
	jsr @r3
	mov.l @(r0,r13),r4
	mov.l @r15,r4
	mov 0x00,r5
	mov.l @(0x84,PC),r2
	mov.l @(0x8,r4),r4
	mov.w @(0x66,PC),r3
	mov.w @(0x62,PC),r6
	jsr @r2
	add r3,r4

loc_8c032b48:
	mov.l @(0x7C,PC),r3
	mov.w @(0x5E,PC),r4
	jsr @r3
	nop
	mov.l @(0x78,PC),r11
	bra loc_8c032b66
	mov 0x00,r13

loc_8c032b56:
	mov.l @r14,r0
	mov r13,r4
	mov r12,r5
	shll2 r4
	mov.l @r0,r0
	jsr @r11
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c032b66:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c032b56
	add 0x08,r15
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
loc_8c032b82:
	sts.l pr,@-r15
	mov.w @(0x26,PC),r4
	mov.l @(0x4C,PC),r5
	mov.l @(0x44,PC),r6
	bsr loc_8c032320
	nop
	mov.l @(0x38,PC),r2
	mov.w @(0x1C,PC),r4
	jsr @r2
	nop
	mov.l @(0x44,PC),r3
	mov 0x00,r5
	mov.l @(0x3C,PC),r4
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x05a4
	#data 0x00ad
	#data 0x0527
	#data 0x0538
	#data 0x0200
	#data 0x1600
	#data 0x0810
	#data 0x0d10
	#data 0x0d50
	#align4
	#data 0x8c268340
	#data loc_8c039bb8
	#data bank13.loc_8c1361b0
	#data loc_8c039a74
	#data bank12.loc_8c129728
	#data bank11.loc_8c11b800
	#data bank12.loc_8c122fd0
	#data 0x0ce80000
	#data 0x8c26a934
	#data bank14.loc_8c14d114
	#data bank12.loc_8c1240a0

;==============================================
loc_8c032be0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0x4C,PC),r3
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @r3,r8
	mov.l @(0x3C,PC),r14
	extu.b r8,r8
	mov.l @(0x34,PC),r13
	mov.l @(0x2C,PC),r10
	shll2 r8
	mov.l @(0x24,PC),r9
	mov.l @(0x28,PC),r12
	mov.w @(0x1A,PC),r11
	mov r4,r0
	nop
	add 0xFF,r0
	mov 0x19,r1
	cmp/hs r1,r0
	bf loc_8c032c14
	bra loc_8c032f6e
	nop

loc_8c032c14:
	shll r0
	mov r0,r1
	mova @(0x20,PC),r0
	mov.w @(r0,r1),r0
	braf r0
	nop

;##############################################
	#data 0x0850
	#align4
	#data bank12.loc_8c129668
	#data 0x0ced0000
	#data 0x0cc00000
	#data bank02.loc_8c027366
	#data 0x0ce80000
	#data 0x8c26a95c

;8c032c1c
	#data 0x004e
	#data 0x0056
	#data 0x034e
	#data 0x0060
	#data 0x0088
	#data 0x009e
	#data 0x034e
	#data 0x00b4
	#data 0x00c8
	#data 0x00de
	#data 0x00f4
	#data 0x0108
	#data 0x012a
	#data 0x013a
	#data 0x0198
	#data 0x01b0
	#data 0x01fc
	#data 0x0240
	#data 0x0258
	#data 0x0270
	#data 0x0288
	#data 0x034e
	#data 0x0304
	#data 0x0320
	#data 0x032e

;----------------------------------------------
loc_8c032c6e:
	mov.l @(0x108,PC),r0
	mov 0x00,r6
	bra loc_8c032f2a
	mov r12,r5

loc_8c032c76:
	mov.l @(0x104,PC),r5
	bsr loc_8c0322d4
	mov r10,r4
	bra loc_8c032f46
	nop

loc_8c032c80:
	mov.l @(0x100,PC),r5
	mov.l @(0xFC,PC),r6
	jsr @r9
	mov r14,r4
	mov.l @(0xFC,PC),r5
	bsr loc_8c0322d4
	mov r14,r4
	bsr loc_8c032696
	nop
	lds.l @r15+,pr
	mov.l @(0xF4,PC),r3
	mov.l @r15+,r8
	mov.l @r3,r4
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c032f80
	mov.l @r15+,r14

loc_8c032ca8:
	bsr loc_8c032364
	nop
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c03281c
	mov.l @r15+,r14

loc_8c032cbe:
	bsr loc_8c03246c
	nop
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0329bc
	mov.l @r15+,r14

loc_8c032cd4:
	mov.l @(0xC0,PC),r2
	mov.l @(0xBC,PC),r4
	mov.l @(0xB4,PC),r5
	jsr @r2
	nop
	mov.w @(0x8E,PC),r4
	mov.l @(0xB8,PC),r5
	mov.l @(0xB0,PC),r6
	bra loc_8c032f5c
	nop

loc_8c032ce8:
	bsr loc_8c0324d0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0328ee
	mov.l @r15+,r14

loc_8c032cfe:
	bsr loc_8c032526
	nop
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c032a28
	mov.l @r15+,r14

loc_8c032d14:
	mov.w @(0x5A,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(0x54,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	bra loc_8c032f56
	nop

loc_8c032d28:
	mov.l @(0x78,PC),r5
	mov.l @(0x74,PC),r6
	jsr @r9
	mov r14,r4
	mov.w @(0x42,PC),r4
	mov.l @(0x74,PC),r5
	bsr loc_8c032320
	mov r14,r6
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c03264c
	mov.l @r15+,r14

loc_8c032d4a:
	mov.l @(0x64,PC),r5
	mov.l @(0x5C,PC),r6
	jsr @r9
	mov r14,r4
	mov.w @(0x20,PC),r4
	mov.l @(0x5C,PC),r5
	bra loc_8c032ebe
	mov r14,r6

loc_8c032d5a:
	bsr loc_8c032650
	nop
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c032b82
	mov.l @r15+,r14

;##############################################
	#data 0x0d10
	#data 0x029e
	#data 0x029f
	#data 0x0810
	#align4
	#data bank14.loc_8c14cf98
	#data 0x0cda4000
	#data 0x00017000
	#data 0x0cd8d000
	#data 0x0cd6f000
	#data 0x8c26a90c
	#data 0x0000a000
	#data 0x0ce08000
	#data bank02.loc_8c02ded6
	#data 0x8c26a91c
	#data 0x00027000
	#data 0x0ccb7000
	#data 0x8c26a92c
	#data 0x00014000
	#data 0x0cc40000
	#data 0x8c26a930

;----------------------------------------------
loc_8c032db8:
	mov.w @(0x114,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r10,r5
	mov.w @(0x10E,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(0x124,PC),r5
	mov r10,r6
	bra loc_8c032f5c
	mov r11,r4

;----------------------------------------------
loc_8c032dd0:
	mov.l @(0x120,PC),r2
	mov 0x5C,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r0
	tst r0,r0
	bt loc_8c032de2
	mov.l @(0x118,PC),r3
	jsr @r3
	mov 0x00,r4

loc_8c032de2:
	mov.l @(0x118,PC),r2
	jsr @r2
	nop
	mov.w @(0xE8,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(0xE2,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(0x104,PC),r5
	mov r14,r6
	bsr loc_8c032320
	mov r11,r4
	mov.l @(0x100,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(0xFC,PC),r3
	mov 0x08,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8c032e1c:
	mov.l @(0xD8,PC),r1
	jsr @r1
	mov 0x01,r4
	mov.w @(0xB2,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(0xAC,PC),r4
	mov.l @(0xDC,PC),r5
	jsr @r13
	mov 0x00,r6
	mov.w @(0xA6,PC),r4
	mov.l @(0xD8,PC),r5
	bsr loc_8c032320
	mov r14,r6
	bsr loc_8c0321dc
	nop
	bsr loc_8c03221a
	nop
	bsr loc_8c032184
	nop
	bsr loc_8c0321d2
	nop
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r2
	mov 0x00,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8c032e60:
	mov.w @(0x7A,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(0x74,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(0xA0,PC),r5
	mov r14,r6
	bra loc_8c032ebe
	mov r11,r4
	mov.w @(0x66,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(0x60,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(0x8C,PC),r5
	mov r14,r6
	bra loc_8c032ebe
	mov r11,r4

;----------------------------------------------
loc_8c032e90:
	mov.w @(0x52,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(0x4C,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(0x78,PC),r5
	mov r14,r6
	bra loc_8c032ebe
	mov r11,r4
	mov.w @(0x3E,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(0x38,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(0x64,PC),r5
	mov r11,r4
	mov r14,r6

loc_8c032ebe:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c032320
	mov.l @r15+,r14

;##############################################
	#data 0x02a6
	#data 0x02a7
	#data 0x02ad
	#data 0x02ae
	#data 0x02af
	#data 0x02b0
	#data 0x0860
	#data 0x02b1
	#data 0x02b2
	#data 0x02b3
	#data 0x02b4
	#data 0x02b5
	#data 0x02b6
	#data 0x02b7
	#data 0x02b8
	#align4
	#data 0x8c26a938
	#data 0x8c26823c
	#data loc_8c036cc6
	#data bank02.loc_8c0273f4
	#data 0x8c26a93c
	#data bank02.loc_8c027ada
	#data bank02.loc_8c027b64
	#data 0x0c420000
	#data 0x8c26a940
	#data 0x8c26a944
	#data 0x8c26a948
	#data 0x8c26a94c
	#data 0x8c26a950

;----------------------------------------------
loc_8c032f24:
	mov.l @(0x110,PC),r0
	mov 0x00,r6
	mov.l @(0x108,PC),r5

loc_8c032f2a:
	jsr @r13
	mov.l @(r0,r8),r4
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c03223e
	mov.l @r15+,r14

;----------------------------------------------
loc_8c032f40:
	mov.l @(0xF8,PC),r5
	bsr loc_8c0322d4
	mov r10,r4

loc_8c032f46:
	mov.w @(0xE2,PC),r4
	mov.l @(0xF4,PC),r5
	bra loc_8c032f5c
	mov r10,r6

loc_08c32f4e:
	mov.l @(0xF8,PC),r5
	mov.l @(0xF0,PC),r6
	jsr @r9
	mov r14,r4

loc_8c032f56:
	mov.w @(0xD4,PC),r4
	mov r14,r6
	mov.l @(0xF0,PC),r5

loc_8c032f5c:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c032320
	mov.l @r15+,r14

loc_8c032f6e:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c032f80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r4,r13
	mov.l @(0xC0,PC),r4
	mov.l @(0xC4,PC),r11
	mov r4,r12
	add 0x30,r12
	mov r4,r14

loc_8c032f96:
	mov r14,r5
	jsr @r11
	mov.l @r13+,r4
	add 0x10,r14
	cmp/hi r12,r14
	bf loc_8c032f96
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c032fae:
	mov.l r5,@-r15
	shll2 r5
	mov.l @(0x9C,PC),r3
	shll2 r5
	mov.l @(0xA0,PC),r2
	add r3,r5
	jmp @r2
	add 0x04,r15

;==============================================
loc_8c032fbe:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x64,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x00,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x8C,PC),r11
	mov.l @(0x8C,PC),r14
	mov.w @(0x56,PC),r10
	mov.l @(0x80,PC),r8

loc_8c032fda:
	jsr @r14
	nop
	mov.l @(0x88,PC),r3
	mov r11,r5
	mov r0,r12
	mov r10,r6
	jsr @r3
	mov r8,r4
	jsr @r14
	nop
	dt r13
	sub r12,r0
	bf.s loc_8c032fda
	add r0,r9
	mov.l @(0x74,PC),r3
	mov r9,r1
	jsr @r3
	mov 0x64,r0
	mov.l @(0x70,PC),r2
	jsr @r2
	mov r0,r4
	mov.l @(0x6C,PC),r3
	jsr @r3
	nop
	mov.l @(0x6C,PC),r2
	jsr @r2
	nop
	mov.l @(0x68,PC),r3
	jsr @r3
	mov 0x00,r4
	lds.l @r15+,pr
	mov.l @(0x60,PC),r2
	mov 0x01,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0c50
	#data 0x0810
	#data 0x1000
	#align4
	#data 0x0cea0000
	#data bank14.loc_8c14cfdc
	#data 0x0cda0000
	#data 0x8c26a908
	#data 0x0002c000
	#data 0x0cd00000
	#data 0x8c26a928
	#data 0x8c2896f0
	#data bank10.loc_8c10830c
	#data bank10.loc_8c108348
	#data 0x0cc00000
	#data 0xc4200000
	#data bank11.loc_8c11d430
	#data bank12.loc_8c129668
	#data bank12.loc_8c129128
	#data bank02.loc_8c02823a
	#data bank02.loc_8c027910
	#data bank02.loc_8c02797c
	#data bank02.loc_8c028246

;==============================================
loc_8c033080:
	sts fpscr,r4
	mov 0xFC,r3
	mov.l @(0xA8,PC),r1
	mov.l @(0xA4,PC),r2
	and r3,r4
	mov.l @(0xA8,PC),r3
	lds r4,fpscr
	jsr @r3
	mov.l r2,@r1
	mov.l @(0xA4,PC),r3
	jsr @r3
	nop
	mov.l @(0xA0,PC),r13
	jsr @r13
	nop
	mov.l @(0xA0,PC),r2
	jsr @r2
	nop
	mov.l @(0x9C,PC),r4
	mov 0x00,r14
	mov.l @(0xA4,PC),r12
	mov r4,r11
	mov.l @(0x9C,PC),r10
	mov.l @(0x98,PC),r9
	add 0x14,r11
	mov r4,r8

loc_8c0330b4:
	jsr @r13
	nop
	jsr @r9
	nop
	jsr @r12
	mov r8,r4
	jsr @r12
	mov r11,r4
	mov.l @(0x8C,PC),r2
	jsr @r2
	nop
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop
	mov.l @(0x88,PC),r2
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c0330f8
	mov.l @(0x84,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0330f8
	mov.l @(0x80,PC),r3
	jsr @r3
	nop
	jsr @r13
	nop
	mov.l @(0x78,PC),r2
	jsr @r2
	nop
	mov.l @(0x78,PC),r3
	jsr @r3
	nop

loc_8c0330f8:
	mov.l @(0x74,PC),r2
	jsr @r2
	nop
	mov.l @(0x74,PC),r3
	mov.l @(0x74,PC),r2
	mov.l @(0x78,PC),r1
	mov.l r14,@r3
	jsr @r1
	mov.l r14,@r2
	mov.l @(0x74,PC),r3
	jsr @r3
	nop
	mov.l @(0x70,PC),r1
	jsr @r1
	nop
	mov.l @(0x70,PC),r3
	jsr @r3
	nop
	mov.l @(0x6C,PC),r1
	jsr @r1
	nop
	jsr @r10
	nop
	bra loc_8c0330b4
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c268240
	#data 0x8c26823c
	#data bank01.loc_8c010540
	#data loc_8c032fbe
	#data bank11.loc_8c11c0c0
	#data loc_8c03565c
	#data 0x8c2681dc
	#data bank11.loc_8c11d420
	#data bank02.loc_8c0274b0
	#data bank01.loc_8c0102c0
	#data loc_8c03967a
	#data bank01.loc_8c010458
	#data 0x8c212bf8
	#data 0x8c2897a2
	#data loc_8c031bba
	#data bank01.loc_8c010326
	#data bank01.loc_8c01033c
	#data bank04.loc_8c041dda
	#data 0x8c2152d4
	#data 0x8c2152d0
	#data loc_8c03589a
	#data bank11.loc_8c115b34
	#data loc_8c039632
	#data loc_8c03973a
	#data loc_8c031aca

;==============================================
loc_8c033190:
	mov.l @(0x10C,PC),r2
	mov 0x01,r3
	mov.w @(0x104,PC),r1
	mov.l @(0x10C,PC),r0
	mov.b r3,@r2
	rts
	mov.b r1,@r0

;==============================================
loc_8c03319e:
	mov.l @(0x100,PC),r6
	mov.l @(0x100,PC),r4
	mov.b @r6,r5
	mov.b @r4,r3
	extu.b r5,r5
	extu.b r3,r3
	shll8 r5
	add r3,r5
	extu.w r5,r5
	mov r5,r3
	shll r5
	add r3,r5
	cmp/pz r5
	bt loc_8c0331be
	mov.w @(0xE0,PC),r3
	add r3,r5

loc_8c0331be:
	mov.b @r4,r2
	mov 0xF8,r3
	shad r3,r5
	add r5,r2
	mov.b r2,@r4
	mov.b r5,@r6
	mov.b @r4,r0
	rts
	extu.b r0,r0

;==============================================
loc_8c0331d0:
	mov.l @(0xD8,PC),r2
	mov.l @(0xD4,PC),r3
	jmp @r2
	mov.l r4,@r3

;==============================================
loc_8c0331d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xE0,r15
	mov.l @(0xC8,PC),r3
	mov r4,r13
	jsr @r3
	mov r5,r14
	mova @(0xC4,PC),r0
	mov.l @(0xCC,PC),r3
	fmov @r0,fr14
	mova @(0xC4,PC),r0
	fmov @r0,fr15
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c033270
	mov.l @(0xBC,PC),r3
	mov r15,r1
	mov r13,r2
	add 0x14,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0xB4,PC),r13
	jsr @r13
	mov 0x02,r4
	mov.l @(0xB0,PC),r3
	mov r15,r5
	mov r15,r4
	add 0x14,r5
	jsr @r3
	add 0x14,r4
	jsr @r13
	mov 0x03,r4
	mov.l @(0xA4,PC),r2
	mov r15,r5
	mov r15,r4
	add 0x04,r5
	jsr @r2
	add 0x14,r4
	jsr @r13
	mov 0x01,r4
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x01,r4
	mov 0x10,r0
	fldi1 fr5
	fmov @(r0,r15),fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x10,r0
	fldi1 fr4
	fadd fr4,fr4
	fdiv fr3,fr2
	fadd fr5,fr2
	fdiv fr4,fr2
	fmul fr14,fr2
	fmov fr2,@r14
	fmov @(r0,r15),fr3
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fdiv fr3,fr2
	fadd fr5,fr2
	fdiv fr4,fr2
	fmul fr15,fr2
	fneg fr2
	fadd fr15,fr2
	bra loc_8c03328e
	fmov fr2,@(r0,r14)

loc_8c033270:
	mov.l @(0x64,PC),r2
	fmov fr15,fr5
	jsr @r2
	fmov fr14,fr4
	mov 0x08,r0
	mov r14,r5
	fmov @(r0,r13),fr6
	mov 0x04,r0
	fmov @(r0,r13),fr5
	add 0x04,r5
	mov.l @(0x54,PC),r3
	mov r14,r4
	mov r15,r6
	jsr @r3
	fmov @r13,fr4

loc_8c03328e:
	add 0x20,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00c3
	#data 0x00ff
	#align4
	#data 0x8c1f9d7c
	#data 0x8c1f9d7d
	#data 0x8c2152d8
	#data bank11.loc_8c11d6d0
	#data bank02.loc_8c02e1a4
	#data 0x44200000
	#data 0x43f00000
	#data 0x8c26823c
	#data bank12.loc_8c1294c8
	#data bank12.loc_8c120950
	#data bank12.loc_8c1204f0
	#data bank11.loc_8c11f8b0
	#data bank11.loc_8c11f870
	#data bank12.loc_8c120900
	#data bank12.loc_8c1216c0
	#data bank12.loc_8c122560

;==============================================
loc_8c0332e0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r5
	add 0x08,r5
	mov r4,r14
	bsr loc_8c0331d8
	add 0x34,r4
	mova @(0xF8,PC),r0
	mov r15,r4
	fmov @r0,fr4
	mov r4,r13
	mov.w @(0xE4,PC),r0
	mov r13,r1
	add 0x04,r1
	mov.b @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	extu.b r3,r3
	mov.w @(0xD8,PC),r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r13
	mov.b @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	extu.b r3,r3
	mov.w @(0xC6,PC),r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r1
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c033334
	fmov @r1,fr3
	bra loc_8c033336
	fmov @r1,fr4

loc_8c033334:
	fmov @r13,fr4

loc_8c033336:
	fmov @r13,fr2
	mova @(0xB4,PC),r0
	fadd fr3,fr2
	fmov @r0,fr3
	mova @(0xB4,PC),r0
	fadd fr3,fr2
	fmov fr2,@r13
	fmov @r0,fr2
	mov 0x08,r0
	fmov @(r0,r15),fr1
	mov 0x08,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r15)
	fadd fr4,fr1
	mova @(0xA4,PC),r0
	fmov @r13,fr0
	ftrc fr1,fpul
	fmov @r0,fr1
	fadd fr1,fr0
	sts fpul,r3
	ftrc fr0,fpul
	extu.w r3,r3
	sts fpul,r2
	extu.w r2,r2
	cmp/gt r2,r3
	bt loc_8c0333d2
	mova @(0x90,PC),r0
	fmov @r0,fr4
	mov.w @(0x76,PC),r0
	fmov fr4,fr0
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr5
	extu.b r3,r3
	mov.w @(0x6C,PC),r0
	lds r3,fpul
	mov.b @(r0,r14),r3
	mova @(0x7C,PC),r0
	float fpul,fr3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr2
	fmul fr5,fr3
	fmul fr5,fr2
	fmul fr4,fr2
	fmac fr0,fr3,fr2
	fmov @r0,fr3
	mov.w @(0x52,PC),r0
	fadd fr3,fr2
	fmov fr2,@r13
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mova @(0x60,PC),r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr2
	fmul fr0,fr2
	fmov @r0,fr1
	mov 0x0C,r0
	fmov fr4,fr0
	fmac fr0,fr2,fr1
	fmov fr1,fr2
	fmov fr1,@r1
	fmov @(r0,r15),fr1
	mova @(0x4C,PC),r0
	fadd fr2,fr1
	fmov @r0,fr2
	ftrc fr1,fpul
	fmov @r13,fr1
	fadd fr2,fr1
	sts fpul,r3
	ftrc fr1,fpul
	extu.w r3,r3
	sts fpul,r2
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c0333d6

loc_8c0333d2:
	bra loc_8c0333d8
	mov 0x00,r0

loc_8c0333d6:
	mov 0x01,r0

loc_8c0333d8:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x013e
	#data 0x013f
	#data 0x0130
	#data 0x013c
	#data 0x013d
	#align4
	#data 0x3fd55555
	#data 0x43555555
	#data 0x42d55555
	#data 0x44200000
	#data 0x40092492
	#data 0x42892492
	#data 0x42092492
	#data 0x43f00000

;==============================================
loc_8c03340c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r5
	add 0x08,r5
	mov r4,r14
	bsr loc_8c0331d8
	add 0x34,r4
	mova @(0x128,PC),r0
	mov r15,r6
	fmov @r0,fr4
	mov r6,r4
	mov.w @(0x114,PC),r0
	mov r4,r5
	add 0x04,r5
	mov.b @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	extu.b r3,r3
	mov.w @(0x108,PC),r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r4
	mov.b @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	extu.b r3,r3
	mov.w @(0xF6,PC),r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r5
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c03345e
	fmov @r5,fr3
	bra loc_8c033460
	fmov @r5,fr4

loc_8c03345e:
	fmov @r4,fr4

loc_8c033460:
	fmov @r4,fr2
	mova @(0xE8,PC),r0
	fadd fr3,fr2
	fmov @r0,fr3
	mova @(0xE4,PC),r0
	fadd fr3,fr2
	fmov fr2,@r4
	fmov @r0,fr2
	mov 0x08,r0
	fmov @(r0,r15),fr1
	mov 0x08,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r15)
	fadd fr4,fr1
	mova @(0xD4,PC),r0
	fmov @r4,fr0
	ftrc fr1,fpul
	fmov @r0,fr1
	fadd fr1,fr0
	sts fpul,r3
	ftrc fr0,fpul
	extu.w r3,r3
	sts fpul,r2
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c03349e
	mov 0x00,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c03349e:
	mov 0x01,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0334a8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r5
	add 0x08,r5
	mov r4,r14
	bsr loc_8c0331d8
	add 0x34,r4
	mova @(0x9C,PC),r0
	mov r15,r5
	fmov @r0,fr4
	mov r5,r4
	mov.w @(0x7E,PC),r0
	mov r4,r6
	fmov fr4,fr0
	add 0x04,r6
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr5
	mov.w @(0x72,PC),r0
	extu.b r3,r3
	lds r3,fpul
	mov.b @(r0,r14),r3
	mova @(0x84,PC),r0
	extu.b r3,r3
	float fpul,fr3
	lds r3,fpul
	float fpul,fr2
	fmul fr5,fr3
	fmul fr5,fr2
	fmul fr4,fr2
	fmac fr0,fr3,fr2
	fmov @r0,fr3
	mov.w @(0x56,PC),r0
	fadd fr3,fr2
	fmov fr2,@r4
	mov.b @(r0,r14),r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr2
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mova @(0x60,PC),r0
	fmov @r0,fr1
	mov 0x0C,r0
	fmul fr0,fr2
	fmov fr4,fr0
	fmac fr0,fr2,fr1
	fmov fr1,fr2
	fmov fr1,@r6
	fmov @(r0,r15),fr1
	mova @(0x54,PC),r0
	fadd fr2,fr1
	fmov @r0,fr2
	ftrc fr1,fpul
	fmov @r4,fr1
	fadd fr2,fr1
	sts fpul,r3
	ftrc fr1,fpul
	extu.w r3,r3
	sts fpul,r2
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c033532
	mov 0x00,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c033532:
	mov 0x01,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x013e
	#data 0x013f
	#data 0x0130
	#data 0x013c
	#data 0x013d
	#align4
	#data 0x3fd55555
	#data 0x43555555
	#data 0x42d55555
	#data 0x44200000
	#data 0x40092492
	#data 0x42892492
	#data 0x42092492
	#data 0x43f00000

;==============================================
loc_8c033568:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r5
	mov r4,r14
	bsr loc_8c0331d8
	add 0x34,r4
	mov.w @(0xDC,PC),r0
	fldi0 fr2
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mova @(0xD8,PC),r0
	extu.b r3,r3
	fmov @r0,fr4
	lds r3,fpul
	mova @(0xD4,PC),r0
	float fpul,fr3
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x04,r0
	fmac fr0,fr3,fr4
	fmov @(r0,r15),fr3
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bf loc_8c0335a6
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0335a6:
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0335b0:
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r4),r3
	mov 0x54,r0
	fmov @(r0,r4),fr0
	mova @(0xA8,PC),r0
	extu.b r3,r3
	fmov @r0,fr4
	lds r3,fpul
	mova @(0x9C,PC),r0
	mov.l @(0xA4,PC),r3
	float fpul,fr3
	fmov @r3,fr2
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr4
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fcmp/gt fr2,fr3
	bf loc_8c0335dc
	rts
	mov 0x00,r0

loc_8c0335dc:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c0335e2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r5
	mov r4,r14
	bsr loc_8c0331d8
	add 0x34,r4
	mov.w @(0x64,PC),r0
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mova @(0x60,PC),r0
	extu.b r3,r3
	fmov @r0,fr4
	lds r3,fpul
	mova @(0x5C,PC),r0
	float fpul,fr3
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x04,r0
	fmac fr0,fr3,fr4
	fmov @(r0,r15),fr3
	mova @(0x5C,PC),r0
	fmov @r0,fr2
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bf loc_8c033622
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c033622:
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03362c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r3
	mov 0x04,r0
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov.l @r15,r2
	fmov @r3,fr5
	fmov @r2,fr3
	fmov @(r0,r3),fr4
	fsub fr3,fr5
	mov.l @(0x2C,PC),r3
	fmov @(r0,r2),fr3
	jsr @r3
	fsub fr3,fr4
	neg r0,r0
	add 0x40,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	and 0xFF,r0

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x013d
	#data 0x013c
	#align4
	#data 0x42092492
	#data 0x40092492
	#data 0xc2092492
	#data 0x8c26a5b8
	#data 0x43f00000
	#data bank13.loc_8c132540

;==============================================
loc_8c033674:
	mov.l r14,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mova @(0x118,PC),r0
	mov r4,r14
	fmov @r0,fr15
	mov 0x22,r0
	mov.b @(r0,r14),r0
	exts.w r5,r5
	lds r5,fpul
	extu.b r0,r0
	mov.l @(0x110,PC),r3
	neg r0,r0
	add 0x28,r0
	float fpul,fr3
	and 0x1F,r0
	shll8 r0
	shll2 r0
	shll r0
	mov.w r0,@(0x4,r15)
	mova @(0xFC,PC),r0
	fmov fr3,fr14
	fmul fr15,fr14
	fmov @r0,fr13
	mov.w @(0x4,r15),r0
	mov.l r0,@r15
	jsr @r3
	mov r0,r4
	fmov fr14,fr3
	fmul fr0,fr3
	mova @(0xF0,PC),r0
	mov.l @(0xF4,PC),r3
	fmov @r0,fr0
	mov 0x68,r0
	fmov @(r0,r14),fr2
	mova @(0xE8,PC),r0
	fmul fr13,fr3
	fdiv fr0,fr3
	fmov @r0,fr0
	mov 0x5C,r0
	fdiv fr15,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov.l @r15,r4
	fmul fr0,fr14
	mova @(0xDC,PC),r0
	fmov @r0,fr0
	mov 0x6C,r0
	fmov @(r0,r14),fr3
	mova @(0xD8,PC),r0
	mov 0x5C,r1
	fmul fr13,fr14
	add r14,r1
	fdiv fr0,fr14
	fmov @r0,fr0
	mov 0x60,r0
	fdiv fr15,fr14
	fmac fr0,fr14,fr3
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
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c033718:
	mov.l r14,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mova @(0x74,PC),r0
	mov r4,r14
	fmov @r0,fr15
	mov 0x22,r0
	mov.b @(r0,r14),r0
	exts.w r5,r5
	lds r5,fpul
	extu.b r0,r0
	mov.l @(0x6C,PC),r3
	neg r0,r0
	add 0x28,r0
	float fpul,fr3
	and 0x1F,r0
	shll8 r0
	shll2 r0
	shll r0
	mov.w r0,@(0x4,r15)
	mova @(0x58,PC),r0
	fmov fr3,fr14
	fmul fr15,fr14
	fmov @r0,fr13
	mov.w @(0x4,r15),r0
	mov.l r0,@r15
	jsr @r3
	mov r0,r4
	fmov fr14,fr3
	fmul fr0,fr3
	mova @(0x4C,PC),r0
	mov.l @(0x50,PC),r3
	fmov @r0,fr0
	mova @(0x48,PC),r0
	fmul fr13,fr3
	fdiv fr0,fr3
	fmov @r0,fr0
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fdiv fr15,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov.l @r15,r4
	fmul fr0,fr14
	mova @(0x38,PC),r0
	fmov @r0,fr0
	mova @(0x38,PC),r0
	fmul fr13,fr14
	fdiv fr0,fr14
	fmov @r0,fr0
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fdiv fr15,fr14
	fmac fr0,fr14,fr3
	fmov fr3,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x43800000
	#data 0x447a0000
	#data bank11.loc_8c11e2e0
	#data 0x47c35000
	#data 0x3fd55555
	#data bank11.loc_8c11e860
	#data 0x47f42400

;==============================================
loc_8c0337b8:
	mov.l r9,@r4
	shlr2 r0

loc_8c0337bc:
	mov.l r14,@-r15
	mov.l @(0xE8,PC),r4
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c033850
	mov.l @(0xE4,PC),r0
	mov 0x00,r13
	mov.l @(0xD8,PC),r3
	mov 0x10,r1
	mov.l @(0xD8,PC),r2
	mov.l r13,@r3
	mov.w @(0xBC,PC),r3
	fldi1 fr3
	fmov fr3,@r2
	mov.l r1,@r0
	mov.l @(0xD4,PC),r1
	mov.l @(0xD8,PC),r2
	mov.l r3,@r1
	mov.l @(0xD8,PC),r3
	mov.l @(0xD8,PC),r1
	mov.w @(0xAC,PC),r12
	mov.l r13,@r2
	mov.l r3,@r1
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c0337f8
	mov.w @(0xA2,PC),r12

loc_8c0337f8:
	mov.l @(0xD0,PC),r3
	mov 0x00,r5
	mov.w @(0x9E,PC),r6
	mov.l @(0xC8,PC),r14
	jsr @r3
	mov r14,r4
	mov.w @(0x98,PC),r6
	mov 0x20,r5
	mov.l @(0xC4,PC),r4

loc_8c03380a:
	mov.w r5,@r4
	mov r5,r0
	nop
	dt r6
	mov.w r0,@(0x2,r4)
	mov.l r12,@(0x4,r4)
	mov.l r14,@(0x8,r4)
	mov.l r13,@(0xC,r4)
	bf.s loc_8c03380a
	add 0x10,r4
	mov 0xFF,r5
	mov.w r5,@r4
	mov r5,r0
	nop
	mov.l @(0x8C,PC),r3
	mov.l @(0xA8,PC),r2
	mov.w r0,@(0x2,r4)
	mov.l r0,@(0x4,r4)
	mov.l r0,@(0x8,r4)
	mov.l r0,@(0xC,r4)
	jsr @r2
	mov.l @r3,r4
	mov.l @(0xA0,PC),r3
	mov.l @(0x94,PC),r4
	jsr @r3
	mov r14,r5
	mov.l @(0x94,PC),r2
	jsr @r2
	mov 0x00,r4
	lds.l @r15+,pr
	mov 0x00,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c03385a
	mov.l @r15+,r14

loc_8c033850:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c03385a:
	mov.l @(0x80,PC),r1
	mov 0x02,r3
	mov 0x01,r2
	mov.l r3,@r1
	tst r4,r2
	mov r3,r0
	nop
	tst r4,r0
	bt loc_8c033872
	mov.w @(0x32,PC),r2
	bra loc_8c033874
	nop

loc_8c033872:
	mov.w @(0x2E,PC),r2

loc_8c033874:
	mov.l @(0x68,PC),r3
	mov 0x07,r0
	mov.l r2,@r3
	rts
	and r4,r0

;==============================================
loc_8c03387e:
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	jsr @r3
	mov 0x0E,r4
	mov.l @(0x50,PC),r2
	mov.l @(0x5C,PC),r4
	mov.l @(0x58,PC),r5
	jsr @r2
	nop
	mov.l @(0x40,PC),r3
	mov 0x00,r4
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0190
	#data 0x0502
	#data 0x0101
	#data 0x0c00
	#data 0x0300
	#data 0x1400
	#data 0x0400
	#align4
	#data 0x8c26a95f
	#data 0x8c1f9d80
	#data 0x8c1f9d8c
	#data 0x8c1f9d90
	#data 0x8c1f9d94
	#data 0x8c1f9d98
	#data 0x8c1f9f9c
	#data 0x8c1fab9c
	#data 0x0ce60000
	#data bank12.loc_8c129728
	#data 0x0ce60c00
	#data bank11.loc_8c11b800
	#data bank12.loc_8c1240a0
	#data 0x8c1f9d84
	#data 0x8c1f9d88
	#data 0x0cc00000
	#data bank14.loc_8c14d184

;==============================================
loc_8c0338ec:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xFC,PC),r5
	mov 0x1A,r0
	mov.l @(0xF4,PC),r6
	mov.l @r5,r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c033932
	mov.w @(0xDE,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c033932
	mov.l @(0xE8,PC),r4
	mova @(0xEC,PC),r0
	fldi1 fr1
	mov.l @r6,r3
	add 0x01,r3
	mov.l r3,@r6
	fmov @r0,fr3
	fmov @r4,fr2
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf.s loc_8c033932
	fmov fr2,@r4
	mova @(0xD8,PC),r0
	fmov @r0,fr2
	fmov fr2,@r4

loc_8c033932:
	mov.l @r5,r3
	mov 0x1A,r0
	mov 0x01,r8
	mov.w @(0xB4,PC),r4
	mov.b @(r0,r3),r2
	mov.l @r6,r3
	mov.l @(0xCC,PC),r7
	add r3,r2
	tst r8,r2
	bt.s loc_8c033950
	mov 0x10,r9
	mov.l @(0xC4,PC),r3
	mov.l r4,@r7
	bra loc_8c033956
	mov.l r9,@r3

loc_8c033950:
	mov.l @(0xBC,PC),r3
	mov.l r9,@r7
	mov.l r4,@r3

loc_8c033956:
	mova @(0xC0,PC),r0
	mov.l @(0xB8,PC),r4
	mov.l @r5,r2
	mov 0x00,r10
	mov.l r10,@(0x24,r2)
	fmov @r0,fr3
	mov 0x20,r0
	fmov fr3,@(r0,r4)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x24,r0
	fmov fr3,@(r0,r4)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x28,r0
	fmov fr3,@(r0,r4)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x2C,r0
	fmov fr3,@(r0,r4)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x30,r0
	fmov fr3,@(r0,r4)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0x9C,PC),r0
	mov.l @(0x9C,PC),r7
	fmov @r0,fr3
	mov 0x3C,r0
	mov r10,r5
	mov 0x20,r6
	fmov fr3,@(r0,r4)

loc_8c0339a4:
	mov r5,r0
	nop
	add 0x04,r5
	fmov @(r0,r7),fr3
	cmp/hs r6,r5
	bf.s loc_8c0339a4
	fmov fr3,@(r0,r4)
	mov.l @(0x8C,PC),r3
	mov.l @(0x8C,PC),r1
	mov.l @(0x84,PC),r2
	mov.l r10,@r2
	mov.l r3,@r1
	mov.l @(0x88,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x8C,PC),r4
	mov.w @(0x2C,PC),r2
	mov r4,r12
	mov.l @(0x80,PC),r14
	add r2,r4
	mov.w @(0x22,PC),r13
	mov.l r4,@(0xC,r15)

loc_8c0339d0:
	mov.l @(0x8,r14),r3
	tst r3,r3
	bt loc_8c033aac
	mov r14,r4
	mov r12,r5
	mov r9,r11
	add 0x10,r4
	mov r12,r6

loc_8c0339e0:
	mov.l @(0x8,r14),r3
	tst r8,r3
	bt loc_8c033a54
	mov.w @r4+,r3
	mov.w r3,@r6
	bra loc_8c033a9a
	add 0x02,r6

;##############################################
	#data 0x008d
	#data 0x0190
	#data 0x0f00
	#data 0x1000
	#align4
	#data 0x8c1f9d80
	#data 0x8c26823c
	#data 0x8c1f9d8c
	#data 0x3c23d70a
	#data 0x3f000000
	#data 0x8c1f9d90
	#data 0x8c1f9d94
	#data 0x8c26a974
	#data 0x41200000
	#data 0x41300000
	#data 0x41400000
	#data 0x41500000
	#data 0x41f00000
	#data 0x41f80000
	#data 0x42000000
	#data 0x42040000
	#data bank13.loc_8c1355dc
	#data 0x8c1f9d98
	#data 0x8c1f9f9c
	#data 0x8c1fab9c
	#data bank11.loc_8c11b800
	#data 0x8c2659dc
	#data 0x8c2671dc

;----------------------------------------------
loc_8c033a54:
	mov.l @(0x8,r14),r0
	tst 0x02,r0
	bt loc_8c033a9a
	mov.w @r4+,r0
	mov.w @(0x11A,PC),r3
	mov.w r0,@r15
	and r3,r0
	mov.w r0,@(0x8,r15)
	mov.w @r15,r7
	extu.w r7,r7
	mov r7,r0
	nop
	and r13,r0
	shar r0
	and r13,r0
	mov.w r0,@(0x4,r15)
	mov.w @(0x104,PC),r0
	and r7,r0
	shar r0
	and 0xF0,r0
	mov.w r0,@r15
	mov 0x0F,r0
	and r7,r0
	mov 0x0F,r7
	shar r0
	and r0,r7
	mov.w @(0x4,r15),r0
	mov r0,r2
	mov.w @(0x8,r15),r0
	or r2,r0
	mov.w @r15,r2
	or r2,r0
	or r7,r0
	mov.w r0,@r6
	add 0x02,r6

loc_8c033a9a:
	dt r11
	bf loc_8c0339e0
	mov.l @(0xE8,PC),r2
	mov.l r10,@(0x8,r14)
	mov.l @r14,r4
	mov.l @(0x4,r14),r6
	shll2 r4
	jsr @r2
	shll2 r4

loc_8c033aac:
	mov.l @(0xC,r15),r3
	add 0x20,r12
	cmp/hs r3,r12
	bf.s loc_8c0339d0
	add 0x30,r14
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

;==============================================
loc_8c033aca:
	mov r5,r3
	shll r5
	add r3,r5
	mov.l @(0xB8,PC),r2
	shll2 r5
	mov.l r12,@-r15
	mov.l r11,@-r15
	shll2 r5
	mov 0x00,r7
	mov r4,r11
	mov 0x10,r12
	add r2,r5
	bra loc_8c033b00
	mov 0x01,r1

loc_8c033ae6:
	mov.l r1,@(0x8,r5)
	mov r5,r0
	nop
	mov r12,r4
	add 0x10,r0

loc_8c033af0:
	mov.w @r11+,r3
	add 0xFF,r4
	tst r4,r4
	mov.w r3,@r0
	bf.s loc_8c033af0
	add 0x02,r0
	add 0x01,r7
	add 0x30,r5

loc_8c033b00:
	cmp/ge r6,r7
	bf loc_8c033ae6
	mov.l @r15+,r11
	rts
	mov.l @r15+,r12

;==============================================
loc_8c033b0a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xD8,r15
	mov.l @(0x70,PC),r11
	mov.l r4,@(0x4,r15)
	mov r4,r0
	nop
	mov.w @(0x56,PC),r1
	mov.l @(r0,r1),r0
	cmp/eq 0xFF,r0
	bf loc_8c033b30
	bra loc_8c033d62
	nop

loc_8c033b30:
	mov.w @(0x4A,PC),r0
	mov.l @(0x4,r15),r2
	mov.l @(0x5C,PC),r3
	mov.l @(r0,r2),r1
	tst r3,r1
	bt loc_8c033b40
	bra loc_8c033d62
	nop

loc_8c033b40:
	mov.w @(0x3C,PC),r0
	mov.l @r11,r3
	mov.l @(0x4,r15),r14
	mov.l @(0x50,PC),r2
	mov.l r3,@(r0,r14)
	mov.l @(0x50,PC),r5
	mov.l @(0x50,PC),r3
	mov.l r2,@(0xC,r15)
	jsr @r3
	mov r2,r4
	mov.w @(0x2A,PC),r0
	mov.w @(0x2A,PC),r3
	mov.l @(r0,r14),r4
	add 0xE4,r0
	mov.l @(r0,r14),r0
	mov.l @(0x44,PC),r14
	and r3,r0
	shll2 r0
	mov.l @(r0,r4),r2
	add r4,r2
	mov.l r2,@(0x8,r15)
	mov.w @r2+,r1
	extu.w r1,r1
	mov.l r1,@(0x24,r15)
	mov 0x00,r1
	mov.l r2,@(0x8,r15)
	mov.l r1,@(0x18,r15)
	bra loc_8c033d56
	mov 0x20,r10

;##############################################
	#data 0xf000
	#data 0x00f0
	#data 0x0144
	#data 0x00dc
	#data 0x0160
	#align4
	#data 0x00007fff
	#data bank11.loc_8c11f7f0
	#data 0x8c2659dc
	#data 0x8c1f9d98
	#data 0x00008000
	#data 0x0ce60000
	#data 0x00020000
	#data bank02.loc_8c02deb8
	#data 0x8c1fab9c

;----------------------------------------------
loc_8c033ba8:
	mov.w @(0x10C,PC),r0
	mov.l @(0x4,r15),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c033bc4
	mov.l @(0x8,r15),r1
	mov 0xFC,r2
	mov.w @(0x100,PC),r3
	mov.w @(0x4,r1),r0
	extu.w r0,r0
	and r3,r0
	shad r2,r0
	bra loc_8c033be0
	mov.l r0,@(0x20,r15)

loc_8c033bc4:
	mov.w @(0xF4,PC),r0
	mov 0xFC,r1
	mov.l @(0x4,r15),r3
	mov.w @(r0,r3),r2
	mov.l @(0x8,r15),r3
	shll2 r2
	mov.w @(0x4,r3),r0
	shll2 r2
	mov.w @(0xE2,PC),r3
	extu.w r0,r0
	add r0,r2
	and r3,r2
	shad r1,r2
	mov.l r2,@(0x20,r15)

loc_8c033be0:
	mov.w @(0xDA,PC),r0
	mov.l @(0x4,r15),r4
	mov.l @(0xE0,PC),r2
	mov.l @(r0,r4),r4
	mov.l @(0x8,r15),r0
	mov.w @(0x6,r0),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r4),r3
	add r3,r4
	add 0x02,r4
	mov.b @r4+,r8
	mov.b @r4+,r9
	extu.b r8,r8
	shll2 r8
	extu.b r9,r9
	shll2 r9
	shll r8
	shll r9
	muls.w r9,r8
	sts macl,r3
	shar r3
	mov.l r3,@r15
	mov.l @(0xC,r15),r6
	jsr @r2
	mov r3,r5
	exts.w r9,r2
	exts.w r8,r3
	cmp/gt r2,r3
	bt loc_8c033c66
	exts.w r8,r0
	cmp/eq 0x10,r0
	bf.s loc_8c033c2a
	mov 0x01,r4
	mov.w @(0x98,PC),r12
	bra loc_8c033c42
	mov 0x10,r13

loc_8c033c2a:
	cmp/eq 0x08,r0
	bf loc_8c033c34
	mov r10,r12
	bra loc_8c033c42
	mov 0x08,r13

loc_8c033c34:
	mov.l @(0x94,PC),r3
	exts.w r8,r1
	mov.w @(0x86,PC),r12
	mov r10,r13
	jsr @r3
	mov r10,r0
	mov r0,r4

loc_8c033c42:
	mov.l @(0x88,PC),r3
	exts.w r9,r1
	jsr @r3
	mov r13,r0
	mov.l @(0x84,PC),r2
	mov.l r0,@(0x14,r15)
	mov.l @r11,r8
	mov.l @r2,r3
	mov.l @r15,r1
	add r3,r8
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r12,r0
	mov r0,r9
	mov.l @(0x78,PC),r0
	shll2 r4
	bra loc_8c033ca8
	mov.l @(r0,r4),r3

loc_8c033c66:
	exts.w r9,r0
	mov 0x01,r2
	cmp/eq 0x10,r0
	mov.l r2,@(0x14,r15)
	bf loc_8c033c76
	mov.w @(0x4C,PC),r12
	bra loc_8c033c8e
	mov 0x10,r13

loc_8c033c76:
	cmp/eq 0x08,r0
	bf loc_8c033c80
	mov r10,r12
	bra loc_8c033c8e
	mov 0x08,r13

loc_8c033c80:
	mov.l @(0x48,PC),r3
	exts.w r9,r1
	mov.w @(0x3A,PC),r12
	mov r10,r13
	jsr @r3
	mov r10,r0
	mov.l r0,@(0x14,r15)

loc_8c033c8e:
	mov.l @(0x40,PC),r2
	mov.l @r11,r8
	mov.l @r2,r3
	mov.l @r15,r1
	add r3,r8
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r12,r0
	mov.l @(0x14,r15),r3
	mov r0,r9
	mov.l @(0x38,PC),r0
	shll2 r3
	mov.l @(r0,r3),r3

loc_8c033ca8:
	mov.l r3,@r15
	mov.l @r11,r2
	mov.w @(0x14,PC),r3
	add r9,r2
	cmp/gt r3,r2
	bf loc_8c033ce0
	bra loc_8c033d64
	mov 0xFF,r0

;##############################################
	#data 0x012d
	#data 0x03ff
	#data 0x012e
	#data 0x015c
	#data 0x0080
	#data 0x0200
	#data 0x0180
	#align4
	#data loc_8c0354c0
	#data bank12.loc_8c129128
	#data 0x8c1f9d90
	#data bank12.loc_8c1291dc
	#data bank14.loc_8c14d8e8
	#data bank14.loc_8c14d860

;----------------------------------------------
loc_8c033ce0:
	mov.w @(0x128,PC),r2
	mov 0x00,r3
	mov 0x1C,r0
	cmp/pl r9
	mov.l r3,@(0x10,r15)
	add r9,r2
	bf.s loc_8c033d44
	mov.b r2,@(r0,r15)

loc_8c033cf0:
	mov.l @(0x128,PC),r3
	mov.l @(0x20,r15),r5
	jsr @r3
	mov r8,r4
	mov.l @(0x124,PC),r3
	mov.l @(0xC,r15),r5
	jsr @r3
	mov r8,r4
	mov 0x1C,r0
	mov.l @r14,r2
	add 0x01,r8
	mov.b r13,@r2
	mov.b @(r0,r15),r0
	mov.l @r14,r3
	mov.b r0,@(0x1,r3)
	mov.l @r15,r0
	mov.l @r14,r3
	add 0x01,r0
	mov.l r0,@r15
	add 0xFF,r0
	mov.b @r0,r0
	mov.b r0,@(0x2,r3)
	mov.l @r15,r2
	mov.l @(0x14,r15),r0
	add 0x01,r2
	mov.l @r14,r3
	mov.l r2,@r15
	add 0xFF,r2
	mov.b @r2,r2
	sub r2,r0
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	add 0x04,r3
	mov.l r3,@r14
	mov.l @(0xC,r15),r2
	add r12,r2
	mov.l r2,@(0xC,r15)
	mov.l @(0x10,r15),r3
	add 0x01,r3
	cmp/ge r9,r3
	bf.s loc_8c033cf0
	mov.l r3,@(0x10,r15)

loc_8c033d44:
	mov.l @r11,r3
	add r9,r3
	mov.l r3,@r11
	mov.l @(0x8,r15),r2
	add 0x08,r2
	mov.l r2,@(0x8,r15)
	mov.l @(0x18,r15),r3
	add 0x01,r3
	mov.l r3,@(0x18,r15)

loc_8c033d56:
	mov.l @(0x24,r15),r1
	mov.l @(0x18,r15),r2
	cmp/gt r2,r1
	bf loc_8c033d62
	bra loc_8c033ba8
	nop

;----------------------------------------------
loc_8c033d62:
	mov.l @r11,r0

loc_8c033d64:
	add 0x28,r15
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
loc_8c033d78:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov.w @(0x80,PC),r0
	mov r4,r10
	mov.w @(0x7E,PC),r3
	mov 0x00,r12
	mov.w @(0x7C,PC),r2
	mov r12,r11
	mov.w @(0x7A,PC),r1
	mov.l r5,@(0x28,r15)
	mov.l @(r0,r10),r4
	mov.w @(0x76,PC),r0
	add r4,r3
	mov.l r4,@(0x8,r15)
	mov.l r3,@(0x24,r15)
	add r4,r2
	mov.l r2,@(0x30,r15)
	add r1,r4
	mov.l @(0x7C,PC),r8
	mov.l @(0x7C,PC),r5
	mov.l r4,@(0x2C,r15)
	mov.l r2,@r15
	mov.l @(0x2C,r15),r14
	mov.l r12,@(0xC,r15)
	mov.l r12,@(0x10,r15)
	mov.b @(r0,r10),r3
	mov.l @(0x68,PC),r0
	shll r3
	mov.w @(r0,r3),r2
	mov.l @(0x6C,PC),r3
	mov.l r2,@(0x1C,r15)
	jsr @r3
	mov r8,r4
	mov r11,r2
	mov.l r12,@(0x14,r15)
	mov.l @(0x8,r15),r3
	mov.l r3,@(0x18,r15)
	bra loc_8c033f08
	mov.l r2,@(0x8,r15)

;==============================================
loc_8c033dd4:
	mov.w @(0x40,PC),r0
	mov.l @(r0,r10),r4
	mov.l @(0x8,r15),r0
	mov.l @(r0,r4),r13
	add r4,r13
	mov.w @r13+,r3
	extu.w r3,r3
	mov.l r3,@(0x20,r15)
	mov.l @(0x18,r15),r2
	mov.l @(0x10,r15),r1
	mov.w r1,@r2
	bra loc_8c033eea
	mov.l r12,@(0x4,r15)

;==============================================
loc_8c033dee:
	cmp/pl r11
	mov 0x01,r5
	bf.s loc_8c033e3e
	mov r12,r4

loc_8c033df6:
	mov.l @(0x3C,PC),r0
	mov r4,r3
	shll r3
	mov.w @(r0,r3),r2
	mov.w @(0x6,r13),r0
	extu.w r2,r2
	extu.w r0,r0
	cmp/eq r0,r2
	bf loc_8c033e38
	bra loc_8c033e3e
	mov r12,r5

;##############################################
	#data 0x00ff
	#data 0x0180
	#data 0x0220
	#data 0x0a20
	#data 0x0e20
	#data 0x052c
	#data 0x0160
	#align4
	#data bank12.loc_8c124910
	#data bank11.loc_8c11b810
	#data bank0e.loc_8c0efd4a
	#data 0x0ce60000
	#data 0x00020000
	#data bank02.loc_8c02deb8
	#data 0x8c1f9d9c

;----------------------------------------------
loc_8c033e38:
	add 0x01,r4
	cmp/ge r11,r4
	bf loc_8c033df6

loc_8c033e3e:
	mov.l @(0x10,r15),r2
	tst r5,r5
	add 0x01,r2
	mov.l r2,@(0x10,r15)
	add 0xFF,r2
	mov.l @(0x24,r15),r0
	bt.s loc_8c033ee2
	mov.b r4,@(r0,r2)
	mov.l @(0x128,PC),r0
	mov r11,r2
	shll r2
	add r0,r2
	mov.w @(0x6,r13),r0
	mov.w r0,@r2
	mov.w @(0x10E,PC),r0
	mov.b @(r0,r10),r3
	tst r3,r3
	bf loc_8c033e76
	mov.w @(0x4,r13),r0
	mov 0xFC,r2
	mov.w @(0x104,PC),r3
	extu.w r0,r0
	mov.l @r15,r1
	and r3,r0
	shad r2,r0
	mov.l r0,@r1
	bra loc_8c033e90
	nop

loc_8c033e76:
	mov.w @(0xF6,PC),r0
	mov.w @(0xF2,PC),r1
	mov.w @(r0,r10),r2
	mov.w @(0x4,r13),r0
	shll2 r2
	mov.l @r15,r3
	extu.w r0,r0
	shll2 r2
	add r0,r2
	mov 0xFC,r0
	and r1,r2
	shad r0,r2
	mov.l r2,@r3

loc_8c033e90:
	mov.w @(0xDE,PC),r0
	mov r8,r6
	mov.l @(0xE4,PC),r2
	mov.l @(r0,r10),r4
	mov.w @(0x6,r13),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r4),r3
	add r3,r4
	add 0x02,r4
	mov.b @r4+,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	mov.w r3,@r14
	mov.b @r4+,r0
	mov.w @(0xC0,PC),r3
	extu.b r0,r0
	shll2 r0
	shll r0
	mov.w r0,@(0x2,r14)
	mov.l r3,@(0x4,r14)
	mov.l r8,@(0x8,r14)
	mov.l r12,@(0xC,r14)
	mov.w @r14,r3
	mov.w @(0x2,r14),r0
	muls.w r0,r3
	sts macl,r0
	mov r0,r9
	shar r9
	jsr @r2
	mov r9,r5
	mov.l @(0xC,r15),r3
	add 0x10,r14
	add r9,r8
	add r9,r3
	add 0x01,r11
	mov.l r3,@(0xC,r15)
	mov.l @r15,r2
	add 0x04,r2
	mov.l r2,@r15

loc_8c033ee2:
	mov.l @(0x4,r15),r3
	add 0x08,r13
	add 0x01,r3
	mov.l r3,@(0x4,r15)

loc_8c033eea:
	mov.l @(0x20,r15),r1
	mov.l @(0x4,r15),r2
	cmp/gt r2,r1
	bf loc_8c033ef6
	bra loc_8c033dee
	nop

loc_8c033ef6:
	mov.l @(0x14,r15),r3
	add 0x01,r3
	mov.l r3,@(0x14,r15)
	mov.l @(0x18,r15),r2
	add 0x02,r2
	mov.l r2,@(0x18,r15)
	mov.l @(0x8,r15),r1
	add 0x04,r1
	mov.l r1,@(0x8,r15)

loc_8c033f08:
	mov.l @(0x14,r15),r2
	mov.l @(0x1C,r15),r3
	cmp/ge r3,r2
	bt loc_8c033f14
	bra loc_8c033dd4
	nop

loc_8c033f14:
	mov.l @(0x1C,r15),r3
	tst r3,r3
	bt loc_8c033f44
	mov 0xFF,r4
	mov.w r4,@r14
	mov r4,r0
	nop
	mov.w @(0x50,PC),r3
	mov.l @(0x58,PC),r2
	mov.w r0,@(0x2,r14)
	mov.l r0,@(0x4,r14)
	mov.l r0,@(0x8,r14)
	mov.l r0,@(0xC,r14)
	mov.l @(0x28,r15),r4
	shll8 r4
	jsr @r2
	add r3,r4
	mov.l @(0x4C,PC),r3
	mov.l @(0x30,r15),r5
	jsr @r3
	mov.l @(0x2C,r15),r4
	mov.l @(0x40,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c033f44:
	mov.l @(0x28,r15),r3
	mov.l @(0x40,PC),r0
	shll r3
	mov.w r11,@(r0,r3)
	mov.l @(0x28,r15),r3
	mov.l @(0xC,r15),r2
	mov.l @(0x38,PC),r0
	shll2 r3
	mov.l r2,@(r0,r3)
	mov.l @(0xC,r15),r0
	add 0x34,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012d
	#data 0x03ff
	#data 0x012e
	#data 0x015c
	#data 0x0502
	#data 0x0390
	#align4
	#data 0x8c1f9d9c
	#data loc_8c0354c0
	#data bank11.loc_8c11b800
	#data bank12.loc_8c1240a0
	#data 0x8c26aa24
	#data 0x8c26aa34

;==============================================
loc_8c033f90:
	sts.l pr,@-r15
	add 0xF4,r15
	mov r5,r3
	mov.l @(0xC8,PC),r0
	shll r3
	mov.l r5,@r15
	mov.w @(r0,r3),r3
	tst r3,r3
	bt loc_8c033fd0
	mov.w @(0xAA,PC),r0
	mov.w @(0xAA,PC),r3
	mov.l @(r0,r4),r5
	mov.w @(0xA8,PC),r2
	add r5,r3
	mov.w @(0xA6,PC),r1
	mov.l r3,@(0x8,r15)
	add r2,r5
	mov.l @(0xB0,PC),r3
	mov.l r5,@(0x4,r15)
	mov.l @r15,r4
	shll8 r4
	jsr @r3
	add r1,r4
	mov.l @(0xA8,PC),r3
	mov.l @(0x8,r15),r5
	jsr @r3
	mov.l @(0x4,r15),r4
	mov 0x00,r4
	add 0x0C,r15
	mov.l @(0x98,PC),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c033fd0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c033fd8:
	rts
	nop

;==============================================
loc_8c033fdc:
	mov.w @(0x78,PC),r0
	mov 0x03,r3
	mov.l @(0x88,PC),r5
	mov.l @(0x8C,PC),r1
	mov.l r3,@r5
	fmov @(r0,r4),fr3
	mov 0x04,r0
	lds r1,fpul
	fmov fr3,@(r0,r5)
	mov.w @(0x68,PC),r0
	mov.w @(0x68,PC),r3
	fmov @(r0,r4),fr3
	mov 0x08,r0
	mov.l @(0x7C,PC),r2
	fmov fr3,@(r0,r5)
	mov 0x0C,r0
	fmov @(r0,r5),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r5)
	mov.l r3,@(0x34,r5)
	jmp @r2
	mov r5,r4

;==============================================
loc_8c03400a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mova @(0x5C,PC),r0
	fmov fr4,fr0
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r4),fr2
	mova @(0x54,PC),r0
	fmul fr3,fr2
	fmov fr2,fr5
	fdiv fr4,fr5
	fmov @r0,fr2
	mov 0x54,r0
	fmov @(r0,r4),fr1
	mov.w @(0x28,PC),r0
	fmul fr2,fr1
	mov.l @(r0,r4),r3
	tst r3,r3
	fmov fr1,fr4
	bf.s loc_8c034080
	fdiv fr0,fr4
	mov.w @r5,r3
	mov.w @(0x12,PC),r0
	lds r3,fpul
	fmov @(r0,r4),fr15
	fmov fr5,fr0
	float fpul,fr1
	bra loc_8c03408e
	fmac fr0,fr1,fr15

;##############################################
	#data 0x0180
	#data 0x0a20
	#data 0x0e20
	#data 0x0390
	#data 0x00e0
	#data 0x00e4
	#data 0x040a
	#data 0x0110
	#align4
	#data 0x8c26aa24
	#data bank11.loc_8c11b800
	#data bank12.loc_8c1243e0
	#data bank14.loc_8c14d134
	#data 0x3a83126f
	#data bank12.loc_8c1244b0
	#data 0x3fd55555
	#data 0x40092492

;----------------------------------------------
loc_8c034080:
	mov.w @r5,r3
	mov.w @(0xD4,PC),r0
	lds r3,fpul
	fmov @(r0,r4),fr15
	float fpul,fr1
	fmul fr5,fr1
	fsub fr1,fr15

loc_8c03408e:
	mov.w @(0x2,r5),r0
	fmov fr4,fr0
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr2
	mov.l @(0xCC,PC),r14
	float fpul,fr3
	fmul fr5,fr3
	fmov fr3,@r15
	mov.w @(0x4,r5),r0
	mov r0,r3
	mov.w @(0xB4,PC),r0
	lds r3,fpul
	fmov @(r0,r4),fr12
	mov.w @(0x6,r5),r0
	float fpul,fr3
	neg r0,r0
	lds r0,fpul
	mov 0x0C,r0
	fmac fr0,fr3,fr12
	float fpul,fr3
	fmov fr3,fr13
	fmul fr4,fr13
	fmov @r15,fr3
	fadd fr3,fr2
	fmov fr12,fr3
	fadd fr13,fr3
	fmov fr2,@(r0,r15)
	mov 0x04,r0
	fmov fr2,@(r0,r14)
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	mov.w @(0x8A,PC),r3
	fmov fr3,@(r0,r14)
	mova @(0x94,PC),r0
	fmov @r0,fr14
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov.l @(0x90,PC),r13
	fsub fr14,fr3
	fmov fr3,@(r0,r14)
	mov.l r3,@(0x34,r14)
	jsr @r13
	mov r14,r4
	mov 0x0C,r0
	fsub fr13,fr12
	fmov @(r0,r15),fr3
	mov 0x04,r0
	mov.w @(0x6C,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov fr12,@(r0,r15)
	mov 0x08,r0
	fmov fr12,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	fsub fr14,fr3
	fmov fr3,@(r0,r14)
	mov.l r3,@(0x34,r14)
	jsr @r13
	mov r14,r4
	fmov @r15,fr3
	mov 0x04,r0
	fmov fr15,fr13
	fsub fr3,fr13
	mov.w @(0x4C,PC),r3
	fmov fr13,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	fsub fr14,fr3
	fmov fr3,@(r0,r14)
	mov.l r3,@(0x34,r14)
	jsr @r13
	mov r14,r4
	mov 0x04,r0
	mov.w @(0x32,PC),r3
	fmov fr13,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	fsub fr14,fr3
	fmov fr3,@(r0,r14)
	mov.l r3,@(0x34,r14)
	jsr @r13
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00e0
	#data 0x00e4
	#data 0x0417
	#data 0x043f
	#data 0x0405
	#data 0x042d
	#align4
	#data bank14.loc_8c14d134
	#data 0x3a83126f
	#data bank12.loc_8c1244b0

;==============================================
loc_8c034174:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x128,PC),r0
	mov r4,r14
	mov.l @(0x130,PC),r12
	mov.l @(r0,r14),r13
	mov.w @(0x12,r13),r0
	extu.w r0,r13
	mov.w @(0x11E,PC),r0
	shll2 r13
	mov.l @(r0,r14),r3
	shll2 r13
	mov.w @(0x118,PC),r0
	add r3,r13
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r12)
	mov 0x2C,r0
	fldi1 fr3
	fmov fr3,@(r0,r12)
	mov.b @(0x3,r14),r0
	extu.b r0,r4
	tst r4,r4
	bt loc_8c0341b4
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0342a8

loc_8c0341b4:
	mova @(0x108,PC),r0
	mov.l @(0x104,PC),r2
	fmov @r0,fr3
	mov 0x08,r0
	fmov @(r0,r2),fr15
	mov.w @(0x4,r13),r0
	tst r0,r0
	bt.s loc_8c0341de
	fdiv fr3,fr15
	mov 0x05,r3
	fmov fr15,fr4
	mov.l r3,@r12
	mov.w @(0x4,r13),r0
	extu.b r0,r5
	mov.w @(0xDE,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c0341de:
	mov.w @(0x6,r13),r0
	tst r0,r0
	bt loc_8c0341fc
	mov 0x06,r3
	fmov fr15,fr4
	mov.l r3,@r12
	mov.w @(0x6,r13),r0
	extu.b r0,r5
	mov.w @(0xC0,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c0341fc:
	mov.w @(0x8,r13),r0
	tst r0,r0
	bt loc_8c03421a
	mov 0x07,r3
	fmov fr15,fr4
	mov.l r3,@r12
	mov.w @(0x8,r13),r0
	extu.b r0,r5
	mov.w @(0xA2,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c03421a:
	mov.w @(0xC,r13),r0
	tst r0,r0
	bt loc_8c034238
	mov 0x08,r3
	fmov fr15,fr4
	mov.l r3,@r12
	mov.w @(0xC,r13),r0
	extu.b r0,r5
	mov.w @(0x84,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c034238:
	mov.w @r13,r2
	tst r2,r2
	bt loc_8c034256
	mov.w @(0x70,PC),r0
	mov 0x04,r3
	mov.l r3,@r12
	mov.b @r13,r5
	mov.l @(r0,r14),r3
	extu.b r5,r5
	fmov fr15,fr4
	shll2 r5
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c034256:
	mov.w @(0x2,r13),r0
	tst r0,r0
	bt loc_8c034274
	mov 0x0A,r3
	fmov fr15,fr4
	mov.l r3,@r12
	mov.w @(0x2,r13),r0
	extu.b r0,r5
	mov.w @(0x48,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c034274:
	mov.b @(0x3,r14),r0
	tst r0,r0
	bf loc_8c0342a8
	mov.w @(0x36,PC),r0
	mov 0x09,r2
	mov.l r2,@r12
	mov r15,r1
	mov.b @(r0,r14),r2
	mov.w @(0x2A,PC),r0
	extu.b r2,r2
	mov.l @(r0,r14),r3
	shll2 r2
	shll r2
	add r3,r2
	mov.w @(0x22,PC),r3
	add r3,r2
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov 0x08,r0
	mov.w @(0x4,r15),r0
	mov r15,r5
	fmov fr15,fr4
	neg r0,r0
	mov.w r0,@(0x4,r15)
	bsr loc_8c03400a
	mov r14,r4

loc_8c0342a8:
	bra loc_8c0342c8
	mov r14,r4

;##############################################
	#data 0x0154
	#data 0x016c
	#data 0x00e8
	#data 0x0170
	#data 0x01f9
	#data 0x07e0
	#align4
	#data bank14.loc_8c14d134
	#data 0x8c26a530
	#data 0x444b16de
	#data bank12.loc_8c129620

;----------------------------------------------
loc_8c0342c8:
	bsr loc_8c033fdc
	nop
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0342da:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0xDA,PC),r0
	mov r4,r14
	mov.l @(0xE0,PC),r13
	mov.l @(r0,r14),r12
	mov.w @(0x12,r12),r0
	extu.w r0,r12
	mov.w @(0xD0,PC),r0
	shll2 r12
	mov.l @(r0,r14),r3
	shll2 r12
	mov.w @(0xCA,PC),r0
	add r3,r12
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r13)
	mov.b @(0x3,r14),r0
	extu.b r0,r4
	tst r4,r4
	bt.s loc_8c03431e
	mov r5,r11
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c03431e
	bra loc_8c0344b4
	nop

loc_8c03431e:
	mova @(0xB4,PC),r0
	fmov @r0,fr14
	mov.w @(0x4,r12),r0
	tst r0,r0
	bt.s loc_8c034354
	fldi1 fr15
	mov r11,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c034338
	mov 0x2C,r0
	bra loc_8c03433c
	fmov fr15,@(r0,r13)

loc_8c034338:
	mov 0x2C,r0
	fmov fr14,@(r0,r13)

loc_8c03433c:
	mov 0x05,r3
	fmov fr15,fr4
	mov.l r3,@r13
	mov.w @(0x4,r12),r0
	extu.b r0,r5
	mov.w @(0x84,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c034354:
	mov.w @(0x6,r12),r0
	tst r0,r0
	bt loc_8c034384
	mov r11,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c034368
	mov 0x2C,r0
	bra loc_8c03436c
	fmov fr15,@(r0,r13)

loc_8c034368:
	mov 0x2C,r0
	fmov fr14,@(r0,r13)

loc_8c03436c:
	mov 0x06,r3
	fmov fr15,fr4
	mov.l r3,@r13
	mov.w @(0x6,r12),r0
	extu.b r0,r5
	mov.w @(0x54,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c034384:
	mov.w @(0x8,r12),r0
	tst r0,r0
	bt loc_8c0343b4
	mov r11,r0
	nop
	cmp/eq 0x04,r0
	bf loc_8c034398
	mov 0x2C,r0
	bra loc_8c03439c
	fmov fr15,@(r0,r13)

loc_8c034398:
	mov 0x2C,r0
	fmov fr14,@(r0,r13)

loc_8c03439c:
	mov 0x07,r3
	fmov fr15,fr4
	mov.l r3,@r13
	mov.w @(0x8,r12),r0
	extu.b r0,r5
	mov.w @(0x24,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c0343b4:
	mov.w @(0xA,r12),r0
	tst r0,r0
	bt loc_8c0343f4
	mov r11,r0
	nop
	cmp/eq 0x05,r0
	bf loc_8c0343d8
	mov 0x2C,r0
	bra loc_8c0343dc
	fmov fr15,@(r0,r13)


;##############################################
	#data 0x0154
	#data 0x016c
	#data 0x00e8
	#data 0x0170
	#data bank14.loc_8c14d134
	#data 0x3f000000

;----------------------------------------------   
loc_8c0343d8:
	mov 0x2C,r0
	fmov fr14,@(r0,r13)

loc_8c0343dc:
	mov 0x06,r3
	fmov fr15,fr4
	mov.l r3,@r13
	mov.w @(0xA,r12),r0
	extu.b r0,r5
	mov.w @(0xE0,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c0343f4:
	mov.w @(0xC,r12),r0
	tst r0,r0
	bt loc_8c034424
	mov r11,r0
	nop
	cmp/eq 0x06,r0
	bf loc_8c034408
	mov 0x2C,r0
	bra loc_8c03440c
	fmov fr15,@(r0,r13)

loc_8c034408:
	mov 0x2C,r0
	fmov fr14,@(r0,r13)

loc_8c03440c:
	mov 0x08,r3
	fmov fr15,fr4
	mov.l r3,@r13
	mov.w @(0xC,r12),r0
	extu.b r0,r5
	mov.w @(0xB0,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c034424:
	mov.w @r12,r2
	tst r2,r2
	bt loc_8c034450
	tst r11,r11
	bf loc_8c034434
	mov 0x2C,r0
	bra loc_8c034438
	fmov fr15,@(r0,r13)

loc_8c034434:
	mov 0x2C,r0
	fmov fr14,@(r0,r13)

loc_8c034438:
	mov.w @(0x8E,PC),r0
	mov 0x04,r3
	mov.l r3,@r13
	mov.b @r12,r5
	mov.l @(r0,r14),r3
	extu.b r5,r5
	fmov fr15,fr4
	shll2 r5
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c034450:
	mov.w @(0x2,r12),r0
	tst r0,r0
	bt loc_8c034480
	mov r11,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c034464
	mov 0x2C,r0
	bra loc_8c034468
	fmov fr15,@(r0,r13)

loc_8c034464:
	mov 0x2C,r0
	fmov fr14,@(r0,r13)

loc_8c034468:
	mov 0x0A,r3
	fmov fr15,fr4
	mov.l r3,@r13
	mov.w @(0x2,r12),r0
	extu.b r0,r5
	mov.w @(0x54,PC),r0
	shll2 r5
	mov.l @(r0,r14),r3
	shll r5
	add r3,r5
	bsr loc_8c03400a
	mov r14,r4

loc_8c034480:
	mov.b @(0x3,r14),r0
	tst r0,r0
	bf loc_8c0344b4
	mov.w @(0x42,PC),r0
	mov 0x09,r2
	mov.l r2,@r13
	mov r15,r1
	mov.b @(r0,r14),r2
	mov.w @(0x36,PC),r0
	extu.b r2,r2
	mov.l @(r0,r14),r3
	shll2 r2
	shll r2
	add r3,r2
	mov.w @(0x2E,PC),r3
	add r3,r2
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov 0x08,r0
	mov.w @(0x4,r15),r0
	mov r15,r5
	fmov fr15,fr4
	neg r0,r0
	mov.w r0,@(0x4,r15)
	bsr loc_8c03400a
	mov r14,r4

loc_8c0344b4:
	bsr loc_8c033fdc
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0170
	#data 0x01f9
	#data 0x07e0
	#align4
	#data bank12.loc_8c129620

;==============================================
loc_8c0344d4:
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
	add 0x84,r15
	mov.w @(0x10A,PC),r0
	mov r4,r14
	mov.w @(0x108,PC),r3
	mov.l @(r0,r14),r4
	add 0xE4,r0
	mov.l @(r0,r14),r0
	mov.l @(0x120,PC),r9
	and r3,r0
	shll2 r0
	mov.l @(r0,r4),r11
	mov.w @(0xFA,PC),r0
	add r4,r11
	mov.w @r11+,r2
	extu.w r2,r2
	mov.l r2,@(0x28,r15)
	mov.l @(r0,r14),r13
	add 0x28,r0
	mov.l @(r0,r14),r3
	mov.l @(0x104,PC),r2
	shll2 r13
	tst r3,r3
	add r2,r13
	bf.s loc_8c03453a
	mov 0x00,r12
	mov.w @(0xE0,PC),r0
	jsr @r9
	fmov @(r0,r14),fr4
	mov 0x0C,r0
	fmov fr0,@(r0,r15)
	mov.w @(0xD8,PC),r0
	jsr @r9
	fmov @(r0,r14),fr4
	mov 0x10,r0
	mov r12,r10
	fmov fr0,@(r0,r15)
	mov r12,r0
	bra loc_8c034588
	mov.w r0,@(0x14,r15)

loc_8c03453a:
	mov.w @(0xC8,PC),r0
	mov.l @(r0,r14),r1
	tst r1,r1
	bf loc_8c034548
	mov.w @(0xC2,PC),r0
	bra loc_8c03454e
	mov.w @(r0,r14),r10

loc_8c034548:
	mov.w @(0xBC,PC),r0
	mov.w @(r0,r14),r10
	neg r10,r10

loc_8c03454e:
	mov.w @(0xB8,PC),r0
	mov.w @(r0,r14),r8
	add 0xAA,r0
	jsr @r9
	fmov @(r0,r14),fr4
	exts.w r10,r3
	mov.w @(0xAE,PC),r0
	lds r3,fpul
	fmov fr0,fr2
	fmov @(r0,r14),fr0
	mov 0x0C,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(0x96,PC),r0
	jsr @r9
	fmov @(r0,r14),fr4
	exts.w r8,r3
	mov.w @(0x98,PC),r0
	lds r3,fpul
	neg r10,r10
	fmov fr0,fr2
	fmov @(r0,r14),fr0
	mov 0x10,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	neg r8,r0
	mov.w r0,@(0x14,r15)

loc_8c034588:
	mov.w @(0x84,PC),r0
	mov 0x20,r8
	mov.l @(0x90,PC),r1
	mov 0x10,r9
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fldi0 fr14
	fmov fr3,@(r0,r15)
	mov.w @(0x64,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r14),r2
	mov.w @(0x70,PC),r0
	add r3,r2
	mov.l r2,@(0x2C,r15)
	mov.l @(0x7C,PC),r2
	fmov @(r0,r14),fr3
	mov 0x58,r0
	fmov fr3,@(r0,r15)
	mov 0x5C,r0
	mov.l @r2,r3
	mov.l r3,@(r0,r15)
	mov 0x64,r0
	mov 0xFF,r3
	mov.l r3,@(r0,r15)
	mov 0x68,r0
	mov.l r12,@(r0,r15)
	mov.l r12,@(0x18,r15)
	mov.l r12,@(0x1C,r15)
	bra loc_8c03489e
	fldi1 fr15

;==============================================
loc_8c0345c4:
	mov.w @(0x4C,PC),r0
	mov.w @(0x4C,PC),r1
	mov.l @(r0,r14),r4
	mov.w @(0x6,r11),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r4),r3
	mov.b @(0x1,r13),r0
	add r3,r4
	extu.b r0,r0
	add 0x01,r0
	mov.l r0,@(0x4,r15)
	mova @(0x48,PC),r0
	mov.b @r13,r3
	fmov @r0,fr2
	extu.b r3,r3
	mov.w @(0x18,PC),r0
	lds r3,fpul
	mov.l @(0x4,r15),r2
	mov.l @(r0,r14),r3
	float fpul,fr3
	add r3,r2
	cmp/gt r1,r2
	fmov fr3,fr4
	bf.s loc_8c03462c
	fdiv fr2,fr4
	bra loc_8c0348ac
	mov 0xFF,r0

;##############################################
	#data 0x0160
	#data 0x7fff
	#data 0x00dc
	#data 0x00e0
	#data 0x00e4
	#data 0x0110
	#data 0x0134
	#data 0x0136
	#data 0x00ec
	#data 0x00f0
	#data 0x00e8
	#data 0x0108
	#data 0x015c
	#data 0x0180
	#align4
	#data 0x8c1f9f9c
	#data bank11.loc_8c11e460
	#data 0x8c1f9d94
	#data 0x8c1f9d84
	#data 0x42000000

;----------------------------------------------
loc_8c03462c:
	fmov fr15,fr5
	fsub fr4,fr5
	mov 0x44,r0
	fmov fr14,@(r0,r15)
	mov 0x48,r0
	fmov fr5,@(r0,r15)
	mov 0x4C,r0
	fmov fr4,@(r0,r15)
	mov 0x50,r0
	fmov fr15,@(r0,r15)
	mov.w @(0xB0,PC),r0
	fmov @(r0,r14),fr3
	mov 0x3C,r0
	fmul fr4,fr3
	fmov fr3,@(r0,r15)
	mov.w @(0xA8,PC),r0
	fmov @(r0,r14),fr3
	mov 0x40,r0
	fmul fr4,fr3
	fmov fr3,@(r0,r15)
	mov.w @(0x2,r11),r0
	mov.w @r11,r5
	mov.w r0,@(0x8,r15)
	mov 0x24,r0
	mov.w r12,@(r0,r15)
	mov 0x20,r0
	mov.w r12,@(r0,r15)
	mov.w @(0x8,r15),r0
	mov r0,r3
	mov.w @(0x14,r15),r0
	mov r0,r6
	sub r3,r6
	mov.w @(0x88,PC),r0
	mov r4,r1
	mov.l @(0x8C,PC),r2
	add 0x01,r1
	mov.l @r2,r7
	mov.l r1,@r15
	mov.l @(r0,r14),r3
	tst r3,r3
	bf loc_8c034708
	mov r6,r0
	nop
	mov 0x0D,r3
	mov.w r0,@(0x14,r15)
	mov 0x60,r0
	mov.w @(0x70,PC),r2
	or r3,r7
	mov.l r7,@(r0,r15)
	mov.w @(0x68,PC),r0
	mov.l @(r0,r14),r1
	mov 0x54,r0
	mov.l r1,@(r0,r15)
	mov.w @(0x4,r11),r0
	extu.w r0,r0
	tst r2,r0
	bt.s loc_8c0346c4
	sub r5,r10
	mov.l @(0x5C,PC),r1
	mov.l @r1,r0
	or 0x05,r0
	mov r0,r3
	mov 0x60,r0
	or r8,r3
	mov.l r3,@(r0,r15)
	mov 0x48,r0
	fmov fr14,@(r0,r15)
	mov 0x50,r0
	fmov fr4,@(r0,r15)
	mov 0x20,r0
	mov.l @r15,r3
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	mov.w r3,@(r0,r15)

loc_8c0346c4:
	mov.w @(0x4,r11),r0
	mov.l @(0x3C,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c034782
	mov 0x60,r0
	mov.l @(r0,r15),r1
	mov 0x60,r0
	or r9,r1
	mov.l r1,@(r0,r15)
	mov 0x44,r0
	fmov fr5,@(r0,r15)
	mov 0x4C,r0
	fmov fr15,@(r0,r15)
	mov 0x24,r0
	mov.b @r4,r2
	mov.b @r13,r1
	extu.b r2,r2
	shll2 r2
	extu.b r1,r1
	shll r2
	sub r1,r2
	bra loc_8c034782
	mov.w r2,@(r0,r15)

;##############################################
	#data 0x00ec
	#data 0x00f0
	#data 0x0110
	#data 0x0104
	#data 0x4000
	#align4
	#data 0x8c1f9d88
	#data 0x00008000

;----------------------------------------------
loc_8c034708:
	mov r6,r0
	nop
	mov 0x0F,r3
	mov.w r0,@(0x14,r15)
	mov 0x60,r0
	or r3,r7
	mov.l r7,@(r0,r15)
	mov.w @(0xF2,PC),r0
	mov.l @(r0,r14),r1
	mov 0x54,r0
	neg r1,r1
	mov.l r1,@(r0,r15)
	mov 0x24,r0
	mov.b @r4,r2
	mov.b @r13,r1
	extu.b r2,r2
	shll2 r2
	extu.b r1,r1
	shll r2
	sub r1,r2
	mov.w r2,@(r0,r15)
	mov.w @(0x4,r11),r0
	mov.w @(0xD6,PC),r2
	extu.w r0,r0
	tst r2,r0
	bt.s loc_8c034762
	add r5,r10
	mov.l @(0xD4,PC),r1
	mov.l @r1,r0
	or 0x07,r0
	mov r0,r3
	mov 0x60,r0
	or r8,r3
	mov.l r3,@(r0,r15)
	mov 0x48,r0
	fmov fr14,@(r0,r15)
	mov 0x50,r0
	fmov fr4,@(r0,r15)
	mov 0x20,r0
	mov.l @r15,r3
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	mov.w r3,@(r0,r15)

loc_8c034762:
	mov.w @(0x4,r11),r0
	mov.l @(0xB0,PC),r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c034782
	mov 0x60,r0
	mov.l @(r0,r15),r1
	mov 0x60,r0
	or r9,r1
	mov.l r1,@(r0,r15)
	mov 0x44,r0
	fmov fr5,@(r0,r15)
	mov 0x4C,r0
	fmov fr15,@(r0,r15)
	mov 0x24,r0
	mov.w r12,@(r0,r15)

loc_8c034782:
	mov.l r12,@(0x8,r15)
	mov.l @(0x4,r15),r3
	cmp/pl r3
	bt loc_8c03478e
	bra loc_8c03488e
	nop

loc_8c03478e:
	mov.b @r13,r5
	mov r15,r1
	mov.b @(0x2,r13),r0
	add 0x20,r1
	extu.b r5,r5
	extu.b r0,r0
	muls.w r5,r0
	mov 0x24,r0
	mov.w @(r0,r15),r3
	mov.b @(0x3,r13),r0
	sts macl,r4
	extu.b r0,r0
	muls.w r5,r0
	sub r3,r4
	mov.w @r1,r3
	sts macl,r0
	mov r0,r5
	mov 0x60,r0
	mov.l @(r0,r15),r2
	tst r9,r2
	bt.s loc_8c0347bc
	sub r3,r5
	neg r4,r4

loc_8c0347bc:
	mov 0x60,r0
	mov.l @(r0,r15),r3
	tst r8,r3
	bt.s loc_8c0347c8
	exts.w r10,r3
	neg r5,r5

loc_8c0347c8:
	exts.w r4,r4
	mov.w @(0x42,PC),r0
	add r4,r3
	lds r3,fpul
	exts.w r5,r5
	fmov @(r0,r14),fr2
	mov.w @(0x14,r15),r0
	float fpul,fr3
	add r5,r0
	lds r0,fpul
	mov.w @(0x32,PC),r0
	fmov fr3,fr12
	float fpul,fr3
	fmul fr2,fr12
	fmov @(r0,r14),fr2
	mov 0x54,r0
	mov.l @(r0,r15),r3
	fmov fr3,fr13
	fmul fr2,fr13
	mov r3,r2
	tst r2,r2
	bf.s loc_8c03481c
	mov.l r3,@r15
	mov 0x0C,r0
	fmov @(r0,r15),fr3
	mov 0x30,r0
	fadd fr12,fr3
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r15),fr3
	mov 0x34,r0
	fadd fr13,fr3
	bra loc_8c034864
	fmov fr3,@(r0,r15)

;##############################################
	#data 0x0104
	#data 0x4000
	#data 0x00ec
	#data 0x00f0
	#align4
	#data 0x8c1f9d88
	#data 0x00008000

;----------------------------------------------
loc_8c03481c:
	mov.l @(0x118,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov 0x0C,r0
	mov.l @(0x114,PC),r3
	fmov @(r0,r15),fr3
	mov 0x58,r0
	fmac fr0,fr12,fr3
	fmov fr3,@-r15
	jsr @r3
	mov.l @(r0,r15),r4
	fmov @r15+,fr2
	mov 0x30,r0
	fmov fr0,fr3
	fmov fr13,fr0
	fmac fr0,fr3,fr2
	mov.l @(0xFC,PC),r3
	fmov fr2,@(r0,r15)
	mov 0x54,r0
	jsr @r3
	mov.l @(r0,r15),r4
	fmul fr0,fr12
	mov 0x10,r0
	fmov @(r0,r15),fr3
	mov 0x58,r0
	mov.l @(0xE8,PC),r3
	fsub fr12,fr3
	fmov fr3,@-r15
	jsr @r3
	mov.l @(r0,r15),r4
	fmov @r15+,fr2
	mov 0x34,r0
	fmov fr0,fr3
	fmov fr13,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)

loc_8c034864:
	mova @(0xD8,PC),r0
	mov.l @(0xDC,PC),r3
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r15),fr2
	mov 0x38,r0
	mov r15,r4
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	add 0x2C,r4
	mov.l @(0x2C,r15),r2
	add 0x01,r2
	mov.l r2,@(0x2C,r15)
	mov.l @(0x8,r15),r3
	add 0x01,r3
	mov.l r3,@(0x8,r15)
	mov.l @(0x4,r15),r2
	cmp/ge r2,r3
	bf.s loc_8c03478e
	add 0x04,r13

loc_8c03488e:
	mov.l @(0x1C,r15),r1
	add 0x08,r11
	mov.l @(0x4,r15),r3
	add r3,r1
	mov.l r1,@(0x1C,r15)
	mov.l @(0x18,r15),r2
	add 0x01,r2
	mov.l r2,@(0x18,r15)

loc_8c03489e:
	mov.l @(0x28,r15),r1
	mov.l @(0x18,r15),r3
	cmp/gt r3,r1
	bf loc_8c0348aa
	bra loc_8c0345c4
	nop

loc_8c0348aa:
	mov.l @(0x1C,r15),r0

loc_8c0348ac:
	add 0x7C,r15
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

;==============================================
loc_8c0348c8:
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
	add 0xA4,r15
	mov.w @(0x44,PC),r0
	mov r4,r14
	mov.w @(0x42,PC),r3
	mov.l @(r0,r14),r4
	add 0xE4,r0
	mov.l @(r0,r14),r0
	mov.l @(0x58,PC),r11
	and r3,r0
	shll2 r0
	mov.l @(r0,r4),r13
	mov.w @(0x34,PC),r0
	add r4,r13
	mov.l @(r0,r14),r2
	mov.w @r13+,r9
	tst r2,r2
	extu.w r9,r9
	bf.s loc_8c03491c
	mov 0x00,r8
	mov.w @(0x26,PC),r0
	jsr @r11
	fmov @(r0,r14),fr4
	mov.w @(0x22,PC),r0
	fmov fr0,fr15
	jsr @r11
	fmov @(r0,r14),fr4
	mov r8,r12
	fmov fr0,fr12
	bra loc_8c034986
	mov r8,r11

loc_8c03491c:
	mov.w @(0x14,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bf loc_8c03494c
	mov.w @(0xE,PC),r0
	bra loc_8c034952
	mov.w @(r0,r14),r12

;##############################################
	#data 0x0160
	#data 0x7fff
	#data 0x0104
	#data 0x00e0
	#data 0x00e4
	#data 0x0110
	#data 0x0134
	#align4
	#data bank11.loc_8c11e2e0
	#data bank11.loc_8c11e860
	#data 0x3a83126f
	#data bank12.loc_8c1244b0
	#data bank11.loc_8c11e460

;----------------------------------------------
loc_8c03494c:
	mov.w @(0x158,PC),r0
	mov.w @(r0,r14),r12
	neg r12,r12

loc_8c034952:
	mov.w @(0x154,PC),r0
	mov.w @(r0,r14),r10
	add 0xAA,r0
	jsr @r11
	fmov @(r0,r14),fr4
	exts.w r12,r3
	mov.w @(0x14A,PC),r0
	lds r3,fpul
	fmov fr0,fr2
	fmov @(r0,r14),fr0
	add 0xF8,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr15
	jsr @r11
	fmov @(r0,r14),fr4
	exts.w r10,r3
	mov.w @(0x136,PC),r0
	lds r3,fpul
	neg r10,r11
	fmov fr0,fr2
	neg r12,r12
	fmov @(r0,r14),fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr12

loc_8c034986:
	mov.w @(0x126,PC),r0
	mov 0xFF,r1
	mov.l @(0x13C,PC),r2
	mov r8,r10
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.w @(0x11A,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r15)
	mov 0x44,r0
	mov.l @r2,r3
	mov.w @(0x114,PC),r2
	mov.l r3,@(0x3C,r15)
	mov.l r1,@(r0,r15)
	mov 0x48,r0
	mov.l r8,@(r0,r15)
	mov.w @(0x106,PC),r0
	mov.w @(0x106,PC),r3
	mov.l @(r0,r14),r5
	add 0xC4,r0
	mov.l @(r0,r14),r0
	and r3,r0
	shll r0
	cmp/pl r9
	mov.w @(r0,r5),r4
	add r2,r5
	extu.w r4,r4
	add r4,r5
	mov.l r5,@(0x8,r15)
	bt.s loc_8c0349cc
	mov.l r8,@r15
	bra loc_8c034bcc
	nop

loc_8c0349cc:
	mov.l @(0x8,r15),r3
	mov.w @(0xEA,PC),r0
	add 0x01,r3
	mov.w @(0xE4,PC),r4
	mov.l r3,@(0x8,r15)
	add 0xFF,r3
	mov.b @r3,r2
	mov.b @(r0,r14),r3
	extu.b r2,r2
	mov.w @(0xDC,PC),r0
	extu.b r3,r3
	fldi0 fr4
	shll8 r3
	add r3,r2
	add r4,r2
	mov.l r2,@(0xC,r15)
	mov.l @(r0,r14),r4
	mov.w @(0x6,r13),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r4),r3
	mov 0x24,r0
	fmov fr4,@(r0,r15)
	mov 0x28,r0
	add r3,r4
	fmov fr4,@(r0,r15)
	mov.b @r4,r3
	mov.b @(0x2,r4),r0
	extu.b r3,r3
	lds r3,fpul
	extu.b r0,r3
	float fpul,fr3
	lds r3,fpul
	mov 0x2C,r0
	float fpul,fr2
	fdiv fr2,fr3
	fmov fr3,@(r0,r15)
	mov.b @(0x1,r4),r0
	extu.b r0,r3
	mov.b @(0x3,r4),r0
	lds r3,fpul
	extu.b r0,r3
	mov 0x30,r0
	float fpul,fr3
	lds r3,fpul
	float fpul,fr2
	fdiv fr2,fr3
	fmov fr3,@(r0,r15)
	mov 0x2C,r0
	fmov @(r0,r15),fr3
	mov.w @(0x78,PC),r0
	fmov @(r0,r14),fr2
	mov 0x1C,r0
	fmul fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x30,r0
	fmov @(r0,r15),fr3
	mov.w @(0x6C,PC),r0
	fmov @(r0,r14),fr2
	mov 0x20,r0
	fmul fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(0x2,r13),r0
	mov.w @r13,r8
	mov.w r0,@(0x4,r15)
	mov r11,r7
	mov.w @(0x4,r15),r0
	mov 0x20,r5
	mov.w @(0x68,PC),r4
	sub r0,r7
	mov.w @(0x66,PC),r0
	mov.l @(0x70,PC),r6
	mov.l @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c034ad4
	fldi1 fr4
	mov.w @(0x5C,PC),r0
	mov r7,r11
	mov.l @(0x64,PC),r2
	mov 0x05,r7
	mov.l @(r0,r14),r3
	mov 0x40,r0
	mov.l r3,@(0x34,r15)
	mov.l @r2,r3
	or r7,r3
	mov.l r3,@(r0,r15)
	mov.w @(0x4,r13),r0
	extu.w r0,r0
	tst r4,r0
	bt.s loc_8c034a9c
	sub r8,r12
	mov 0x40,r0
	mov.l @(r0,r15),r1
	mov 0x40,r0
	or r5,r1
	mov.l r1,@(r0,r15)
	mov 0x30,r0
	fmov @(r0,r15),fr3
	mov 0x28,r0
	fneg fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x30,r0
	fmov fr4,@(r0,r15)

loc_8c034a9c:
	mov.w @(0x4,r13),r0
	extu.w r0,r0
	tst r6,r0
	bf loc_8c034b16
	bra loc_8c034b32
	nop

;##############################################
	#data 0x0134
	#data 0x0136
	#data 0x00ec
	#data 0x00f0
	#data 0x00e8
	#data 0x0108
	#data 0x0180
	#data 0x01ff
	#data 0x0220
	#data 0x0390
	#data 0x01a4
	#data 0x015c
	#data 0x4000
	#data 0x0110
	#data 0x0104
	#align4
	#data 0x8c1f9d84
	#data 0x00008000
	#data 0x8c1f9d88

;----------------------------------------------
loc_8c034ad4:
	mov.w @(0x140,PC),r0
	mov r7,r11
	mov 0x07,r7
	mov.l @(r0,r14),r2
	mov 0x40,r0
	neg r2,r2
	mov.l r2,@(0x34,r15)
	mov.l @(0x13C,PC),r2
	mov.l @r2,r3
	or r7,r3
	mov.l r3,@(r0,r15)
	mov.w @(0x4,r13),r0
	extu.w r0,r0
	tst r4,r0
	bt.s loc_8c034b0e
	add r8,r12
	mov 0x40,r0
	mov.l @(r0,r15),r1
	mov 0x40,r0
	or r5,r1
	mov.l r1,@(r0,r15)
	mov 0x30,r0
	fmov @(r0,r15),fr3
	mov 0x28,r0
	fneg fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x30,r0
	fmov fr4,@(r0,r15)

loc_8c034b0e:
	mov.w @(0x4,r13),r0
	extu.w r0,r0
	tst r6,r0
	bf loc_8c034b32

loc_8c034b16:
	mov 0x40,r0
	mov.l @(r0,r15),r2
	mov 0x10,r4
	mov 0x40,r0
	or r4,r2
	mov.l r2,@(r0,r15)
	mov 0x2C,r0
	fmov @(r0,r15),fr3
	mov 0x24,r0
	fneg fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x2C,r0
	fmov fr4,@(r0,r15)

loc_8c034b32:
	exts.w r12,r3
	mov.w @(0xE2,PC),r0
	lds r3,fpul
	exts.w r11,r3
	fmov @(r0,r14),fr2
	add 0x04,r0
	mov.l @(0x34,r15),r8
	float fpul,fr3
	lds r3,fpul
	tst r8,r8
	fmov fr3,fr14
	float fpul,fr3
	fmul fr2,fr14
	fmov @(r0,r14),fr2
	fmov fr3,fr13
	bf.s loc_8c034b66
	fmul fr2,fr13
	fmov fr15,fr3
	fadd fr14,fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov fr12,fr3
	fadd fr13,fr3
	bra loc_8c034ba4
	fmov fr3,@(r0,r15)

loc_8c034b66:
	mov.l @(0xBC,PC),r2
	jsr @r2
	mov r8,r4
	fmov fr15,fr3
	fmac fr0,fr14,fr3
	mov.l @(0xB4,PC),r3
	fmov fr3,@-r15
	jsr @r3
	mov.l @(0x38,r15),r4
	fmov @r15+,fr2
	mov 0x10,r0
	fmov fr0,fr3
	fmov fr13,fr0
	fmac fr0,fr3,fr2
	mov.l @(0xA4,PC),r3
	fmov fr2,@(r0,r15)
	jsr @r3
	mov.l @(0x34,r15),r4
	fmul fr0,fr14
	fmov fr12,fr3
	mov.l @(0x94,PC),r3
	fsub fr14,fr3
	fmov fr3,@-r15
	jsr @r3
	mov.l @(0x38,r15),r4
	fmov @r15+,fr2
	mov 0x14,r0
	fmov fr0,fr3
	fmov fr13,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)

loc_8c034ba4:
	mova @(0x84,PC),r0
	mov.l @(0x88,PC),r8
	fmov @r0,fr4
	mov 0x18,r0
	fmov @(r0,r15),fr3
	mov 0x18,r0
	mov r15,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r15)
	jsr @r8
	add 0x0C,r4
	mov.l @r15,r3
	add 0x01,r10
	cmp/gt r10,r9
	add 0x01,r3
	mov.l r3,@r15
	bf.s loc_8c034bcc
	add 0x08,r13
	bra loc_8c0349cc
	nop

loc_8c034bcc:
	mov.l @r15,r0
	add 0x5C,r15
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

;==============================================
loc_8c034bea:
	mov.w @(0x2E,PC),r0
	sts.l pr,@-r15
	mov.l @(r0,r4),r0
	cmp/eq 0xFF,r0
	bf loc_8c034bfa
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c034bfa:
	mov.w @(0x1E,PC),r0
	mov.l @(0x34,PC),r3
	mov.l @(r0,r4),r2
	tst r3,r2
	bt loc_8c034c0c
	bsr loc_8c0348c8
	nop
	bra loc_8c034c10
	nop

loc_8c034c0c:
	bsr loc_8c0344d4
	nop

loc_8c034c10:
	mov r0,r5
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0104
	#data 0x00ec
	#data 0x0144
	#align4
	#data 0x8c1f9d88
	#data bank11.loc_8c11e2e0
	#data bank11.loc_8c11e860
	#data 0x3a83126f
	#data bank12.loc_8c1244b0
	#data 0x00008000

;==============================================
loc_8c034c38:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x13E,PC),r0
	mov.w @(0x140,PC),r1
	mov.b r5,@(r0,r4)
	add 0xFF,r0
	mov.b r6,@(r0,r4)
	add 0x10,r0
	mov.l @(r0,r4),r7
	add 0xCA,r0
	mov.w @(r0,r4),r3
	extu.b r5,r5
	shll2 r5
	extu.w r3,r3
	add r7,r3
	add r3,r5
	mov.l r3,@r15
	mov.l @r5,r5
	extu.b r6,r0
	shll2 r0
	add r7,r5
	mov.l @(r0,r5),r3
	add r4,r1
	mov.w @(0x116,PC),r0
	add r7,r3
	mov.l r3,@(r0,r4)
	mov.l @(0x118,PC),r3
	mov.l @(r0,r4),r2
	jsr @r3
	mov 0x08,r0
	mov.w @(0x10C,PC),r0
	mov 0x00,r5
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0xF2,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c034cce
	mov.w @(0xF8,PC),r6

loc_8c034c8c:
	mov.w @(0xF0,PC),r0
	mov.l @(r0,r4),r3
	add 0x08,r3
	mov.l r3,@(r0,r4)
	add 0xEF,r0
	mov.b @(r0,r4),r2
	tst r6,r2
	bt loc_8c034cac
	mov.w @(0xE0,PC),r0
	mov.l @(r0,r4),r1
	add 0x14,r0
	mov.l @(r0,r4),r2
	add 0xEC,r0
	mov.l @r1,r3
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c034cac:
	mov.w @(0xD0,PC),r0
	mov.w @(0xD0,PC),r1
	mov.l @(0xD4,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x08,r0
	mov.w @(0xC6,PC),r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0xF2,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c034c8c

loc_8c034cce:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c034cd6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xA0,PC),r0
	shll2 r7
	shll r7
	mov.b r5,@(r0,r4)
	add 0xFF,r0
	mov.b r6,@(r0,r4)
	add 0x10,r0
	mov.l @(r0,r4),r1
	add 0xCA,r0
	mov.w @(r0,r4),r3
	extu.b r5,r5
	shll2 r5
	extu.w r3,r3
	add r1,r3
	add r3,r5
	mov.l r3,@r15
	mov.l @r5,r5
	extu.b r6,r0
	shll2 r0
	add r1,r5
	mov.l @(r0,r5),r3
	mov.w @(0x78,PC),r0
	add r1,r3
	mov.w @(0x76,PC),r1
	mov.l r3,@(r0,r4)
	mov.l @(r0,r4),r3
	add r4,r1
	add r3,r7
	mov.l @(0x74,PC),r3
	mov.l r7,@(r0,r4)
	mov.l @(r0,r4),r2
	jsr @r3
	mov 0x08,r0
	mov.w @(0x64,PC),r0
	mov 0x00,r5
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0xF2,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c034d76
	mov.w @(0x50,PC),r6

loc_8c034d34:
	mov.w @(0x48,PC),r0
	mov.l @(r0,r4),r3
	add 0x08,r3
	mov.l r3,@(r0,r4)
	add 0xEF,r0
	mov.b @(r0,r4),r2
	tst r6,r2
	bt loc_8c034d54
	mov.w @(0x38,PC),r0
	mov.l @(r0,r4),r1
	add 0x14,r0
	mov.l @(r0,r4),r2
	add 0xEC,r0
	mov.l @r1,r3
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c034d54:
	mov.w @(0x28,PC),r0
	mov.w @(0x28,PC),r1
	mov.l @(0x2C,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x08,r0
	mov.w @(0x1E,PC),r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0xF2,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c034d34

loc_8c034d76:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0159
	#data 0x0154
	#data 0x0140
	#data 0x0148
	#data 0x0080
	#align4
	#data bank12.loc_8c1294bc

;==============================================
loc_8c034d8c:
	mov.w @(0xE0,PC),r0
	mov 0x00,r5
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bf.s loc_8c034de8
	mov r5,r6

loc_8c034da0:
	mov.w @(0xCE,PC),r0
	mov.l @(r0,r4),r1
	add 0x08,r1
	mov.l r1,@(r0,r4)
	add 0xEF,r0
	mov.b @(r0,r4),r0
	and 0x80,r0
	mov r0,r6
	exts.b r0,r0
	tst r0,r0
	bt loc_8c034dc6
	mov.w @(0xB8,PC),r0
	mov.l @(r0,r4),r2
	add 0x14,r0
	mov.l @(r0,r4),r1
	add 0xEC,r0
	mov.l @r2,r3
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c034dc6:
	mov.w @(0xA8,PC),r0
	mov.w @(0xA8,PC),r1
	mov.l @(0xB4,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x08,r0
	mov.w @(0x9E,PC),r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0xF2,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c034da0

loc_8c034de8:
	lds.l @r15+,pr
	rts
	mov r6,r0

;==============================================
;Animation
loc_8c034dee:
	mov.w @(0x7E,PC),r0 ;142
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bf.s loc_8c034e66
	mov 0x00,r14

loc_8c034e02:
	mov.w @(0x6C,PC),r0
	mov.l @(r0,r4),r3
	add 0x14,r3
	mov.l r3,@(r0,r4)
	add 0xEF,r0
	mov.b @(r0,r4),r0
	and 0x80,r0
	mov r0,r14
	exts.b r0,r0
	tst r0,r0
	bt loc_8c034e28
	mov.w @(0x56,PC),r0
	mov.l @(r0,r4),r3
	add 0x14,r0
	mov.l @(r0,r4),r2
	add 0xEC,r0
	mov.l @r3,r3
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c034e28:
	mov.w @(0x46,PC),r0
	mov.w @(0x46,PC),r1
	mov.l @(0x54,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x14,r0
	mov.w @(0x36,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c034e02
	mov.w @(0x30,PC),r0
	mov.w @(0x34,PC),r3
	mov.l @(r0,r4),r1
	add r4,r3
	mov.w @(0x12,r1),r0
	mov.l @r3,r3
	extu.w r0,r0
	mov.w @(0x2A,PC),r1
	shll2 r0
	shll2 r0
	add r4,r1
	add r3,r0
	mov.l r0,@r1
	mov.w @(0x20,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c034e66
	mov.l @(0x24,PC),r3
	jsr @r3
	nop

loc_8c034e66:
	mov r14,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0142
	#data 0x0154
	#data 0x0140
	#data 0x0148
	#data 0x016c
	#data 0x01c0
	#data 0x014c
	#align4
	#data bank12.loc_8c1294bc
	#data bank12.loc_8c1294c8
	#data bank04.loc_8c042014

;=============================================
;Load new animation with Ryu LP as an example
;R4 = player memory = 8c268340
;R5 = Group Id = 07
;R6 = Animation Id = 00
;==============================================
loc_8c034e8c:
	sts.l pr,@-r15		; add pr to stackpointer and -4
	add 0xFC,r15 		; add -4 to Stack pointer
	mov.w @(0xA6,PC),r0	; r0 = 159
	mov.w @(0xA8,PC),r1	; r1 = 140
	mov.b r5,@(r0,r4)	; move Group Id to 159
	add 0xFF,r0  		; add -1 to R0
	mov.b r6,@(r0,r4)	; move AnimID to 158
	add 0x10,r0  		; r0 = 168
	mov.l @(r0,r4),r7	; move DATanim pointer to r7 ; c49eb60
	add 0xCA,r0  		; r0 = 132
	mov.w @(r0,r4),r3	; grab anim offset ; 100
	extu.b r5,r5 		; r5 is now a byte ; 07
	shll2 r5 			; r5 left shift 2 ; 1c
	extu.w r3,r3 		; r3 is now a word ; 0x0100
	add r7,r3			; make animastartpnt ;c49ec60
	add r3,r5			; add animastartpnt to r5 ; c49ec7c
	mov.l r3,@r15		; move animstartpnt to sp ; c49ec60 to sp
	mov.l @r5,r5 		; read r5 to get animoffset ; 228
	extu.b r6,r0 		; grab byte from r6 to r0 ; r0 = 00
	shll2 r0 			; shift AnimID left 2 ; 00
	add r7,r5			; add r7 to groupoffset ;  c49ed88
	mov.l @(r0,r5),r3	; read animid +groupoffset = animation offset ; e48

	add r4,r1			; plmem +140  = r1
	mov.w @(0x7E,PC),r0	; r0 = 0x154
	add r7,r3			; Animation start ;c49f9a8
	mov.l r3,@(r0,r4)	; Animation start moved to plmem
	mov.l @(0x88,PC),r3	; r3 = 8c1294c8
	mov.l @(r0,r4),r2	; read Current Cell from memory
	jsr @r3  			; jsr to bank12.loc_8c1294c8
	mov 0x14,r0			; r0 = 14

	mov.w @(0x74,PC),r0	; 
	mov.b @(r0,r4),r1	; 
	tst r1,r1			; 
	bf loc_8c034f08		; 
	mov.w @(0x6E,PC),r5	; 

loc_8c034ed2:
	mov.w @(0x66,PC),r0	;
	mov.l @(r0,r4),r3	;
	add 0x14,r3 		;
	mov.l r3,@(r0,r4)	;
	add 0xEF,r0 		;
	mov.b @(r0,r4),r2	;
	tst r5,r2			;
	bt loc_8c034ef2 	;


	mov.w @(0x56,PC),r0	;
	mov.l @(r0,r4),r1	;
	add 0x14,r0 		;
	mov.l @(r0,r4),r2	;
	add 0xEC,r0 		;
	mov.l @r1,r3		;
	add r3,r2			;
	mov.l r2,@(r0,r4)	;

loc_8c034ef2:
	mov.w @(0x46,PC),r0	;
	mov.w @(0x46,PC),r1	;
	mov.l @(0x54,PC),r3	;
	mov.l @(r0,r4),r2	;
	add r4,r1			;
	jsr @r3 			;
	mov 0x14,r0 		;
	mov.w @(0x3C,PC),r0	;
	mov.b @(r0,r4),r1	;
	tst r1,r1			;
	bt loc_8c034ed2 	;

loc_8c034f08:
	mov.w @(0x30,PC),r0	;
	mov.w @(0x36,PC),r3	;
	mov.l @(r0,r4),r1	;
	add r4,r3			;
	mov.w @(0x12,r1),r0	;
	mov.l @r3,r3		;
	extu.w r0,r0		;
	mov.w @(0x2C,PC),r1	;
	shll2 r0			;
	shll2 r0			;
	add r4,r1			;
	add r3,r0			;
	mov.l r0,@r1		;
	mov.w @(0x22,PC),r0	;
	mov.b @(r0,r4),r3	;
	tst r3,r3			;
	bt loc_8c034f32		;
	add 0x04,r15		;
	mov.l @(0x20,PC),r3	; bank04.loc_8c042014
	jmp @r3 			;
	lds.l @r15+,pr		;

loc_8c034f32:
	add 0x04,r15		;
	lds.l @r15+,pr		;
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0159
	#data 0x0154
	#data 0x0140
	#data 0x0142
	#data 0x0080
	#data 0x016c
	#data 0x01c0
	#data 0x014c
	#align4
	#data bank12.loc_8c1294c8
	#data bank04.loc_8c042014

;==============================================
loc_8c034f54:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x108,PC),r0
	mov.b r5,@(r0,r4)
	add 0xFF,r0
	mov.b r6,@(r0,r4)
	add 0x10,r0
	mov.l @(r0,r4),r1
	add 0xCA,r0
	mov.w @(r0,r4),r3
	extu.b r5,r5
	shll2 r5
	extu.w r3,r3
	add r1,r3
	add r3,r5
	mov.l r3,@r15
	mov.l @r5,r5
	extu.b r6,r0
	shll2 r0
	add r1,r5
	mov.l @(r0,r5),r3
	mov.w @(0xE4,PC),r0
	add r1,r3
	mov.w @(0xE2,PC),r1
	mov.l r3,@(r0,r4)
	mov r7,r3
	shll2 r7
	mov.l @(r0,r4),r2
	add r3,r7
	shll2 r7
	add r7,r2
	mov.l r2,@(r0,r4)
	add r4,r1
	mov.l @(r0,r4),r2
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov 0x14,r0
	mov.w @(0xC8,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c034fde
	mov.w @(0xC2,PC),r5

loc_8c034fa8:
	mov.w @(0xBA,PC),r0
	mov.l @(r0,r4),r3
	add 0x14,r3
	mov.l r3,@(r0,r4)
	add 0xEF,r0
	mov.b @(r0,r4),r2
	tst r5,r2
	bt loc_8c034fc8
	mov.w @(0xAA,PC),r0
	mov.l @(r0,r4),r1
	add 0x14,r0
	mov.l @(r0,r4),r2
	add 0xEC,r0
	mov.l @r1,r3
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c034fc8:
	mov.w @(0x9A,PC),r0
	mov.w @(0x9A,PC),r1
	mov.l @(0xAC,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x14,r0
	mov.w @(0x90,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c034fa8

loc_8c034fde:
	mov.w @(0x84,PC),r0
	mov.w @(0x8A,PC),r3
	mov.l @(r0,r4),r1
	add r4,r3
	mov.w @(0x12,r1),r0
	mov.l @r3,r3
	extu.w r0,r0
	mov.w @(0x80,PC),r1
	shll2 r0
	shll2 r0
	add r4,r1
	add r3,r0
	mov.l r0,@r1
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c035000:
	mov 0x25,r0
	mov.w @(0x6C,PC),r7
	mov.b @(r0,r4),r5
	mov.w @(0x6A,PC),r0
	add r4,r7
	extu.b r5,r5
	mov.w @(0x66,PC),r6
	mov.l @(r0,r4),r3
	shll2 r5
	mov.b @(0x1,r4),r0
	shll2 r5
	shll2 r5
	shll r5
	extu.b r0,r0
	shll r5
	cmp/eq 0x01,r0
	bt.s loc_8c035034
	add r3,r5
	cmp/eq 0x22,r0
	bt loc_8c035080
	cmp/eq 0x37,r0
	bt loc_8c0350b0
	cmp/eq 0x14,r0
	bt loc_8c0350e6
	bra loc_8c035114
	nop

loc_8c035034:
	mov.w @(0x40,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c035114
	mov 0x30,r0
	mov.b @(r0,r4),r5
	mov.w @(0x30,PC),r0
	shll2 r5
	mov.l @(r0,r4),r3
	mov 0x25,r0
	mov.b @(r0,r4),r2
	shll2 r5
	shll2 r5
	extu.b r2,r2
	add 0x08,r2
	shll r5
	shll2 r2
	add r6,r5
	shll2 r2
	shll r5
	shll r2
	add r3,r5
	bra loc_8c035114
	add r2,r5

;##############################################
	#data 0x0159
	#data 0x0154
	#data 0x0140
	#data 0x0142
	#data 0x0080
	#data 0x016c
	#data 0x01c0
	#data 0x02a4
	#data 0x0164
	#data 0x0300
	#data 0x0202
	#align4
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c035080:
	mov.w @(0xD8,PC),r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bt loc_8c035114
	mov 0x30,r0
	mov.b @(r0,r4),r5
	mov.w @(0xCE,PC),r0
	shll2 r5
	mov.l @(r0,r4),r3
	mov 0x25,r0
	mov.b @(r0,r4),r2
	shll2 r5
	shll2 r5
	extu.b r2,r2
	add 0x14,r2
	shll r5
	shll2 r2
	add r6,r5
	shll2 r2
	shll r5
	shll r2
	add r3,r5
	bra loc_8c035114
	add r2,r5

loc_8c0350b0:
	mov.b @(0x8,r7),r0
	tst r0,r0
	bt loc_8c035114
	mov 0x30,r0
	mov.b @(r0,r4),r5
	mov.w @(0xA0,PC),r0
	shll2 r5
	shll2 r5
	mov.l @(r0,r4),r3
	shll2 r5
	shll r5
	mov 0x25,r0
	mov.b @(r0,r4),r2
	add r6,r5
	shll r5
	extu.b r2,r2
	add r3,r5
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	shll2 r2
	shll r2
	shll r2
	add r2,r5
	bra loc_8c035114
	nop

loc_8c0350e6:
	mov.w @(0x76,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c035114
	mov 0x30,r0
	mov.b @(r0,r4),r5
	mov.w @(0x68,PC),r0
	shll2 r5
	mov.l @(r0,r4),r3
	mov 0x25,r0
	mov.b @(r0,r4),r2
	shll2 r5
	shll2 r5
	extu.b r2,r2
	shll r5
	add 0x06,r2
	shll2 r2
	add r6,r5
	shll2 r2
	shll r5
	shll r2
	add r3,r5
	add r2,r5

loc_8c035114:
	rts
	mov r5,r0

;==============================================
loc_8c035118:
	mov.l r12,@-r15
	mov r5,r4
	mov.l r11,@-r15
	mov 0x10,r12
	mov 0x00,r5
	mov r6,r11
	bra loc_8c035142
	mov 0x01,r6

loc_8c035128:
	mov r4,r1
	add 0x10,r1
	mov.l r6,@(0x8,r4)
	mov r12,r0
	nop

loc_8c035132:
	mov.w @r11+,r3
	add 0xFF,r0
	tst r0,r0
	mov.w r3,@r1
	bf.s loc_8c035132
	add 0x02,r1
	add 0x01,r5
	add 0x30,r4

loc_8c035142:
	cmp/ge r7,r5
	bf loc_8c035128
	mov 0x08,r7
	cmp/ge r7,r5
	bt loc_8c035156

loc_8c03514c:
	add 0x01,r5
	mov.l r6,@(0x8,r4)
	cmp/ge r7,r5
	bf.s loc_8c03514c
	add 0x30,r4

loc_8c035156:
	mov.l @r15+,r11
	rts
	mov.l @r15+,r12

;==============================================
loc_8c03515c:
	mov.b @(r0,r12),r0
	mov.b r6,@(r0,r1)
	stc sr,r2

loc_8c035162:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xDA,PC),r0
	mov r4,r13
	mov.l @(0xE0,PC),r2
	mov 0x01,r12
	mov.w @(r0,r13),r14
	mov 0x08,r11
	mov.w @(0xD0,PC),r10
	mov 0x00,r6
	mov r14,r3
	shll r14
	add r3,r14
	mov.l @(0xD0,PC),r7
	shll2 r14
	mov.l @(0xD0,PC),r3
	shll2 r14
	add r2,r14
	mov 0x0F,r4
	mov r5,r0
	nop
	cmp/eq 0x00,r0
	bt.s loc_8c0351e6
	mov.l @r3,r9
	cmp/eq 0x08,r0
	bt loc_8c03524a
	cmp/eq 0x09,r0
	bt loc_8c035288
	cmp/eq 0x03,r0
	bf loc_8c0351ae
	bra loc_8c0352ae
	nop

loc_8c0351ae:
	cmp/eq 0x04,r0
	bf loc_8c0351b6
	bra loc_8c0352ea
	nop

loc_8c0351b6:
	cmp/eq 0x05,r0
	bf loc_8c0351be
	bra loc_8c0352ea
	nop

loc_8c0351be:
	cmp/eq 0x06,r0
	bf loc_8c0351c6
	bra loc_8c0352ea
	nop

loc_8c0351c6:
	cmp/eq 0x07,r0
	bf loc_8c0351ce
	bra loc_8c035326
	nop

loc_8c0351ce:
	cmp/eq 0x02,r0
	bf loc_8c0351d6
	bra loc_8c03535c
	nop

loc_8c0351d6:
	cmp/eq 0x0A,r0
	bf loc_8c0351de
	bra loc_8c03536e
	nop

loc_8c0351de:
	cmp/eq 0x01,r0
	bf loc_8c0351e6
	bra loc_8c035388
	nop

loc_8c0351e6:
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	mov.b @(r0,r7),r3
	mov.w @(0x5E,PC),r0
	mov.w r3,@(r0,r13)
	bsr loc_8c035000
	mov r13,r4
	mov r14,r7
	mov 0x10,r5
	mov r0,r6
	mov r5,r4
	mov.l r12,@(0x8,r14)
	add 0x10,r7

loc_8c035202:
	mov.w @r6+,r3
	add 0xFF,r4
	tst r4,r4
	mov.w r3,@r7
	bf.s loc_8c035202
	add 0x02,r7
	mov 0x25,r0
	mov.b @(r0,r13),r4
	mov 0x01,r6
	mov.w @(0x3E,PC),r0
	add 0x30,r14
	extu.b r4,r4
	shll2 r4
	mov.l @(r0,r13),r13
	shll r4
	add 0x01,r4
	shll2 r4
	shll2 r4
	shll r4
	add r4,r13

loc_8c03522a:
	mov r14,r7
	mov r5,r4
	add 0x10,r7
	mov.l r12,@(0x8,r14)

loc_8c035232:
	mov.w @r13+,r2
	add 0xFF,r4
	tst r4,r4
	mov.w r2,@r7
	bf.s loc_8c035232
	add 0x02,r7
	add 0x01,r6
	cmp/ge r11,r6
	bf.s loc_8c03522a
	add 0x30,r14
	bra loc_8c0353dc
	nop

loc_8c03524a:
	mov.l @(0x18,PC),r11
	bra loc_8c03527c
	mov r6,r7


;##############################################
	#data 0x012e
	#data 0x0300
	#data 0x01a4
	#data 0x0164
	#align4
	#data 0x8c2659dc
	#data bank13.loc_8c1355d4
	#data 0x8c26823c
	#data 0x0000ffff

;----------------------------------------------
loc_8c035268:
	mov r14,r6
	mov r4,r5
	add 0x12,r6
	mov.l r12,@(0x8,r14)

loc_8c035270:
	dt r5
	mov.w r11,@r6
	bf.s loc_8c035270
	add 0x02,r6
	add 0x01,r7
	add 0x30,r14

loc_8c03527c:
	mov 0x30,r0
	mov.b @(r0,r13),r3
	cmp/ge r3,r7
	bf loc_8c035268
	bra loc_8c0353dc
	nop

loc_8c035288:
	mov.l @(0xF8,PC),r11
	bra loc_8c0352a2
	mov r6,r7

loc_8c03528e:
	mov r14,r6
	mov r4,r5
	add 0x12,r6
	mov.l r12,@(0x8,r14)


loc_8c035296:
	dt r5
	mov.w r11,@r6
	bf.s loc_8c035296
	add 0x02,r6
	add 0x01,r7
	add 0x30,r14

loc_8c0352a2:
	mov 0x30,r0
	mov.b @(r0,r13),r3
	cmp/ge r3,r7
	bf loc_8c03528e
	bra loc_8c0353dc
	nop

loc_8c0352ae:
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0352ea
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r13),r1
	tst r1,r1
	bt loc_8c0352ea
	mov 0x30,r0
	mov.b @(r0,r13),r7
	mov.w @(0xBA,PC),r0
	mov r7,r6
	shll2 r6
	mov.l @(r0,r13),r3
	mov 0x25,r0
	mov.b @(r0,r13),r2
	shll2 r6
	shll2 r6
	extu.b r2,r2
	shll r6
	add 0x0E,r2
	shll2 r2
	add r10,r6
	shll2 r2
	shll r6
	shll r2
	add r3,r6
	add r2,r6
	bra loc_8c035310
	nop

loc_8c0352ea:
	add 0xFD,r5
	mov 0x30,r0
	shll r5
	mov.b @(r0,r13),r4
	mov.w @(0x8A,PC),r0
	mov.l r4,@r15
	mov.l @(0x1C,r9),r3
	mov.l @r15,r7
	and r3,r12
	mov.l @(r0,r13),r3
	add r12,r5
	mul.l r5,r4
	sts macl,r4
	shll2 r4
	shll2 r4
	add r10,r4
	mov r4,r6
	shll r6
	add r3,r6

loc_8c035310:
	mov r13,r4
	mov r14,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c035118
	mov.l @r15+,r14

;==============================================
loc_8c035326:
	mov.l @(0x1C,r9),r4
	mov 0x30,r0
	mov.b @(r0,r13),r7
	mov r14,r5
	and r12,r4
	mov.w @(0x4C,PC),r0
	shll r4
	add 0x03,r4
	mov.l @(r0,r13),r2
	mul.l r4,r7
	sts macl,r4
	shll2 r4
	shll2 r4
	add r10,r4
	mov r4,r6
	shll r6
	mov r13,r4
	add r2,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c035118
	mov.l @r15+,r14

;----------------------------------------------
loc_8c03535c:
	mov 0x02,r5
	mov r6,r4

loc_8c035360:
	add 0x01,r4
	mov.l r5,@(0x8,r14)
	cmp/ge r11,r4
	bf.s loc_8c035360
	add 0x30,r14
	bra loc_8c0353dc
	nop

loc_8c03536e:
	mov r6,r4

loc_8c035370:
	add 0x01,r4
	mov.l r12,@(0x8,r14)
	cmp/ge r11,r4
	bf.s loc_8c035370
	add 0x30,r14
	bra loc_8c0353dc
	nop

;##############################################
	#data 0x0202
	#data 0x0164
	#align4
	#data 0x0000ff00

;----------------------------------------------
loc_8c035388:
	mov.w @(0x126,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	mov.b @(r0,r7),r2
	mov.w @(0x120,PC),r0
	mov.w r2,@(r0,r13)
	bsr loc_8c035000
	mov r13,r4
	mov r0,r6
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bt loc_8c0353b2
	cmp/eq 0x1C,r0
	bt loc_8c0353b2
	cmp/eq 0x1D,r0
	bt loc_8c0353b2
	cmp/eq 0x2D,r0
	bt loc_8c0353ba
	bra loc_8c0353c2
	nop

loc_8c0353b2:
	mov 0x30,r0
	mov.b @(r0,r13),r7
	bra loc_8c0353c6
	add 0x02,r7

loc_8c0353ba:
	mov 0x30,r0
	mov.b @(r0,r13),r7
	bra loc_8c0353c6
	add 0x01,r7

loc_8c0353c2:
	mov 0x30,r0
	mov.b @(r0,r13),r7

loc_8c0353c6:
	mov r13,r4
	mov r14,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c035118
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0353dc:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0353ee:
	mov.w @(0xC2,PC),r0
	extu.w r6,r6
	mov.l r12,@-r15
	mov 0x10,r12
	mov.l r11,@-r15
	mov.w @(r0,r4),r3
	mov 0x25,r0
	mov.b @(r0,r4),r11
	add r5,r3
	mov.l @(0xB8,PC),r5
	mov r3,r2
	extu.b r11,r11
	shll r3
	mov.w @(0xAA,PC),r0
	shll2 r11
	add r2,r3
	shll r11
	shll2 r3
	add r6,r11
	shll2 r3
	shll2 r11
	add r3,r5
	mov.l @(r0,r4),r3
	shll2 r11
	shll r11
	mov 0x00,r6
	add r3,r11
	bra loc_8c035442
	mov 0x01,r1

loc_8c035428:
	mov.l r1,@(0x8,r5)
	mov r5,r0
	nop
	mov r12,r4
	add 0x10,r0

loc_8c035432:
	mov.w @r11+,r3
	add 0xFF,r4
	tst r4,r4
	mov.w r3,@r0
	bf.s loc_8c035432
	add 0x02,r0
	add 0x01,r6
	add 0x30,r5

loc_8c035442:
	cmp/ge r7,r6
	bf loc_8c035428
	mov.l @r15+,r11
	rts
	mov.l @r15+,r12

;==============================================
loc_8c03544c:
	mov.w @(0x64,PC),r0
	extu.w r6,r6
	mov.l r12,@-r15
	shll2 r6
	mov.l r11,@-r15
	shll2 r6
	mov.w @(r0,r4),r3
	mov 0x30,r0
	mov.b @(r0,r4),r11
	mov 0x10,r12
	add r5,r3
	mov.l @(0x58,PC),r5
	mov r3,r2
	shll r3
	add r2,r3
	mov.w @(0x48,PC),r0
	shll2 r3
	shll2 r3
	mov.l @(r0,r4),r2
	shll2 r11
	shll2 r11
	add r3,r5
	mov.w @(0x3C,PC),r3
	shll2 r11
	shll r11
	add r3,r11
	shll r11
	shll r6
	add r2,r11
	add r6,r11
	mov 0x00,r6
	bra loc_8c0354a8
	mov 0x01,r1

loc_8c03548e:
	mov.l r1,@(0x8,r5)
	mov r5,r0
	nop
	mov r12,r4
	add 0x10,r0

loc_8c035498:
	mov.w @r11+,r2
	add 0xFF,r4
	tst r4,r4
	mov.w r2,@r0
	bf.s loc_8c035498
	add 0x02,r0
	add 0x01,r6
	add 0x30,r5

loc_8c0354a8:
	cmp/ge r7,r6
	bf loc_8c03548e
	mov.l @r15+,r11
	rts
	mov.l @r15+,r12

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x01a4
	#data 0x012e
	#data 0x0164
	#data 0x0300
	#align4
	#data 0x8c2659dc

;==============================================
loc_8c0354c0:
	mov.l r14,@-r15
	mov 0x00,r7
	mov.l r12,@-r15
	mov 0x0F,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov r5,r9
	mov.w @(loc_8c0355a0,PC),r10 ; 0x0080
	add r6,r9

loc_8c0354d4:
	tst r7,r7
	bf loc_8c0354dc
	mov.b @r4+,r11
	mov r10,r7

loc_8c0354dc:
	mov r11,r3
	tst r7,r3
	bt loc_8c03550e
	mov.b @r4+,r14
	extu.b r14,r14
	mov r14,r0
	nop
	shlr2 r14
	mov r6,r2
	shlr2 r14
	sub r14,r2
	mov r2,r14
	add 0xFF,r14
	mov.b @r14+,r2
	and r12,r0
	mov.b r2,@r6
	add 0x01,r6

loc_8c0354fe:
	mov.b @r14+,r2
	tst r0,r0
	mov.b r2,@r6
	add 0x01,r6
	bf.s loc_8c0354fe
	add 0xFF,r0
	bra loc_8c035514
	nop

loc_8c03550e:
	mov.b @r4+,r3
	mov.b r3,@r6
	add 0x01,r6

loc_8c035514:
	shar r7
	cmp/hs r9,r6
	bf loc_8c0354d4
	mov r5,r0
	nop
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;==============================================
;Texture_compression
;r0 pixel copy location
;r1 Chunk Header
;r3 
;r4 Texture Location
;r5 Decompress Buffer location
;r6
;r7 Repeat
;r9 2byte compression checker 0x07ff
;r10 binary count down
;r13
;r14 Pixel check
;==============================================
loc_8c03552a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r10,@-r15
	mov r13,r14
	mov.l r9,@-r15
	mov.w @(loc_8c0355a2,PC),r9  ; 0x07ff
	mov.l @(loc_8c0355a4,PC),r10 ; 0x00008000

loc_8c03553a:
	tst r14,r14
	bf loc_8c035542

;load from texture data
	mov.w @r4+,r1
	mov r10,r14

;Compress Check
loc_8c035542:
	mov r1,r3
	tst r14,r3
	bt loc_8c03558c

loc_8c035548:
	mov.w @r4+,r6
	extu.w r6,r6
	mov r6,r7
	shlr8 r7
	shlr2 r7
	shlr r7
	tst r7,r7
	bt loc_8c03555c
	bra loc_8c035560
	and r9,r6

loc_8c03555c:
	mov.w @r4+,r7
	extu.w r7,r7

loc_8c035560:
	tst r6,r6
	bf loc_8c035574
	tst r7,r7
	bt loc_8c035596

loc_8c035568:
	dt r7
	mov.w r13,@r5
	bf.s loc_8c035568
	add 0x02,r5
	bra loc_8c035592
	nop

loc_8c035574:
	shll r6
	mov r5,r0
	nop
	sub r6,r0

loc_8c03557c:
	mov.w @r0+,r3
	add 0xFF,r7
	tst r7,r7
	mov.w r3,@r5
	bf.s loc_8c03557c

	add 0x02,r5
	bra loc_8c035592
	nop

loc_8c03558c:
	mov.w @r4+,r3
	mov.w r3,@r5
	add 0x02,r5

loc_8c035592:
	bra loc_8c03553a
	shar r14

loc_8c035596:
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c0355a0:
	#data 0x0080

loc_8c0355a2:
	#data 0x07ff
	#align4

loc_8c0355a4:
	#data 0x000008000

;==============================================
loc_8c0355a8:
	mov.l @(0x98,PC),r3
	mov 0x14,r6
	mov.l @(0x90,PC),r4
	jmp @r3
	mov 0x00,r5

;==============================================
loc_8c0355b2:
	mov.l @(0x8C,PC),r7
	mov 0x01,r3
	mov.l r3,@r7
	mov.l r4,@(0x8,r7)
	mov.l r5,@(0xC,r7)
	mov.l r5,@(0x10,r7)
	rts
	mov.l r6,@(0x4,r7)

;==============================================
loc_8c0355c2:
	mov.l @(0x7C,PC),r4
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r4,r3
	tst r3,r3
	bt loc_8c035634
	mov.l @(0xC,r4),r2
	mov 0x00,r3
	cmp/hi r3,r2
	bf loc_8c0355dc
	mov.l @(0xC,r4),r0
	add 0xFF,r0
	mov.l r0,@(0xC,r4)

loc_8c0355dc:
	mov.l @(0xC,r4),r5
	tst r5,r5
	bf loc_8c0355f2
	mov.l @(0x4,r4),r2
	tst r2,r2
	bf loc_8c0355f2
	mov 0x00,r3
	mov.l r3,@r4
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0355f2:
	mov.l @(0x4,r4),r2
	tst r2,r2
	bf.s loc_8c035606
	mov.l @(0x10,r4),r14
	mov r5,r1
	shll8 r1
	mov r5,r3
	sub r3,r1
	bra loc_8c035610
	nop

loc_8c035606:
	mov r14,r1
	sub r5,r1
	mov r1,r3
	shll8 r1
	sub r3,r1

loc_8c035610:
	mov.l @(0x34,PC),r2
	jsr @r2
	mov r14,r0
	mov.l @(0x8,r4),r2
	mov r0,r6
	mov.l @(0x30,PC),r3
	extu.b r6,r6
	shll16 r6
	and r3,r2
	mov r2,r1
	shll8 r6
	or r6,r1
	mov.l @(0x28,PC),r2
	mov.l r1,@(0x8,r4)
	lds.l @r15+,pr
	mov.l @(0x20,PC),r4
	jmp @r2
	mov.l @r15+,r14

loc_8c035634:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03563a:
	mov.l @(0x1C,PC),r3
	rts
	mov.l @r3,r0

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26a8d0
	#data bank12.loc_8c129728
	#data bank12.loc_8c1291dc
	#data 0x00ffffff
	#data loc_8c030df0
	#data loc_8c0395ac
	#data 0x8c26a8dc

;==============================================
;preload atleast load default unlocks
loc_8c03565c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0xF4,PC),r3;8c03575c
	jsr @r3
	mov 0x01,r4
	mov.l @(0xF4,PC),r2;8c035764
	mov 0x00,r5
	mov.l @(0xEC,PC),r14 ;8c035760
	mov.w @(0xE2,PC),r6  ;8c035758
	mov.l @(0xF0,PC),r3  ;8c035768
	mov.l r2,@r14
	jsr @r3
	mov r2,r4
	mov.l @r14,r2
	mov 0x20,r3
	mov 0x40,r0
	mov.l @(0xEC,PC),r1  ;8c035770
	mov.l r3,@(0x14,r2)
	mov 0x00,r13
	mov.l @r14,r2
	mov 0x06,r3
	mov 0x01,r12
	mov.l @(0xE8,PC),r11 ;8c035778
	mov.b r13,@(r0,r2)
	mov 0x29,r0
	mov.l @(0xD4,PC),r2 ;8c03576c
	mov.b r3,@r2
	mov.l @(0xD8,PC),r3 ;8c035774
	mov.b r13,@r1
	mov.b r13,@r3
	mov.l @r14,r2
	mov.b r12,@(r0,r2)
	mov.l @(0xD8,PC),r2 ;8c03577c
	jsr @r2
	nop
	cmp/eq 0x01,r0
	bt loc_8c0356b8
	cmp/eq 0x00,r0
	bt loc_8c0356c2
	cmp/eq 0x02,r0
	bt loc_8c0356c6
	bra loc_8c0356ca
	nop

loc_8c0356b8:
	mov.l @r14,r3
	mov 0x40,r0
	mov.b r12,@(r0,r3)
	bra loc_8c0356ca
	mov.l r13,@(0x18,r11)

loc_8c0356c2:
	bra loc_8c0356ca
	mov.l r12,@(0x18,r11)

loc_8c0356c6:
	mov 0x02,r3
	mov.l r3,@(0x18,r11)

loc_8c0356ca:
	mov.l @r14,r1
	mov 0x4E,r0
	mov 0x08,r3
	mov.b r3,@(r0,r1)
	mov 0x59,r0
	mov.l @r14,r2
	mov 0xFF,r3
	mov.b r3,@(r0,r2)
	mov.l @(0xA4,PC),r2 ;8c035780
	jsr @r2
	nop
	mov.l @(0xA0,PC),r1 ;8c035784
	jsr @r1
	nop
	mov.l @(0xA0,PC),r2 ;8c035788
	jsr @r2
	nop
	mov.l @r14,r1
	mov 0x2B,r0
	mov.l @(0x98,PC),r2 ;8c03578c
	mov.b r13,@(r0,r1)
	mov 0x2F,r0
	mov.l @r14,r3
	mov.l @(0x94,PC),r1 ;8c035790 stage
	mov.b r13,@(r0,r3)
	mov 0x03,r3
	mov.l r3,@r2
	mov.l @(0x94,PC),r2 ;8c035798
	mov.l @(0xA0,PC),r0 ;8c0357a4
	mov.l @(0x8C,PC),r3 ;8c035794
	mov.b r13,@r1
	mov.b r13,@r3
	mov.b r13,@r2
	mov.l @(0x90,PC),r3 ;8c0357a0
	mov.l @(0x8C,PC),r1 ;8c03579c
	mov.b r13,@r1
	mov.b r13,@r3
	mov.l @r14,r2
	mov.l r0,@(0x30,r2)
	mov.l @(0x8C,PC),r0
	mov.l @r14,r2
	mov.l r0,@(0x34,r2)
	bsr loc_8c0357d8
	nop
	bsr loc_8c03580c
	nop

	mov.l @(0x84,PC),r2 ;8c0357ac
	jsr @r2
	nop
	mov.l @(0x80,PC),r3 ;8c0357b0
	jsr @r3
	nop
	mov.l @(0x80,PC),r2 ;8c0357b4
	jsr @r2
	mov 0x0A,r4
	mov.l @(0x7C,PC),r3 ;8c0357b8
	jsr @r3
	nop
	mov.l @(0x7C,PC),r2 ;8c0357bc
	jsr @r2
	nop
	mov.l @r14,r3
	mov 0x42,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0357c4
	mov.l @(0x70,PC),r2 ;8c0357c0
	jsr @r2
	nop
	bra loc_8c0357ca
	nop

;##############################################
	#data 0x0080
	#align4
	#data loc_8c0331d0
	#data 0x8c26823c
	#data 0x8c268240
	#data bank12.loc_8c129728
	#data 0x8c26a964
	#data 0x8c26a965
	#data 0x8c26a966
	#data 0x8c212bfc
	#data bank17.loc_8c178d1a
	#data bank01.loc_8c010a5a
	#data loc_8c0370a4
	#data loc_8c031b14
	#data 0x8c2152cc
	#data 0x8c26a95c
	#data 0x8c26a95d
	#data 0x8c26a960
	#data 0x8c26a961
	#data 0x8c26a95f
	#data 0x00ffff77
	#data 0x02000004
	#data loc_8c0355a8
	#data loc_8c030f24
	#data loc_8c030e30
	#data loc_8c0391f8
	#data bank04.loc_8c041044
	#data bank04.loc_8c041b00

;----------------------------------------------
loc_8c0357c4:
	mov.l @(0x1A8,PC),r2
	jsr @r2
	nop

loc_8c0357ca:
	lds.l @r15+,pr
	mov.l @(0x1A4,PC),r1
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0357d8:
;after default loaded
	sts.l pr,@-r15
	mov.l @(0x19C,PC),r2
	jsr @r2
	nop
	mov 0x10,r0
	mov.l @(0x198,PC),r1
	mov 0x00,r6
	mov r0,r7
	mov r6,r4
	add 0x70,r7

loc_8c0357ec:
	mov r4,r5
	shll r5
	mov r4,r3
	add r3,r5
	shll2 r5
	shll2 r5
	add r1,r5
	mov.l r4,@r5
	add 0x01,r4
	cmp/ge r7,r4
	mov.l r0,@(0x4,r5)
	bf.s loc_8c0357ec
	mov.l r6,@(0x8,r5)
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03580c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x16C,PC),r3
	jsr @r3
	nop
	mov.l @(0x16C,PC),r14
	jsr @r14
	mov 0x00,r4
	mov.l @(0x16C,PC),r2
	mov.l @(0x168,PC),r5
	jsr @r2
	mov 0x00,r4
	jsr @r14
	mov 0x02,r4
	mov.l @(0x168,PC),r3
	mov.l @(0x164,PC),r4
	jsr @r3
	mov 0x00,r5
	jsr @r14
	mov 0x00,r4
	jsr @r14
	mov 0x00,r4
	mov.l @(0x15C,PC),r2
	jsr @r2
	nop
	mov.l @(0x15C,PC),r3
	mov 0x00,r4
	mov.l @(0x160,PC),r1
	mov.l @(0x158,PC),r2
	mov.b r4,@r3
	mov.l @(0x15C,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(0x160,PC),r1
	mov.l @(0x158,PC),r2
	mov.l r4,@r3
	mov.l @(0x15C,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(0x160,PC),r1
	mov.l @(0x158,PC),r2
	mov.l r4,@r3
	mov.l @(0x15C,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(0x160,PC),r1
	mov.l @(0x158,PC),r2
	mov.l r4,@r3
	mov.l @(0x15C,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(0x160,PC),r1
	mov.l @(0x158,PC),r2
	mov.l r4,@r3
	mov.l @(0x15C,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(0x160,PC),r1
	mov.l @(0x158,PC),r2
	mov.l r4,@r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(0x160,PC),r1
	mov.l @(0x15C,PC),r2
	mov.l @(0x154,PC),r3
	mov.l r4,@r3
	mov.l r4,@r2
	mov.l r4,@r1
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03589a:
	mov.l @(0x154,PC),r2
	mov 0x1A,r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c0358ac
	bsr loc_8c0358be
	nop

loc_8c0358ac:
	mov.l @(0x140,PC),r1
	mov 0x1A,r2
	mov 0x00,r3
	mov.l @r1,r0
	add r0,r2
	mov.b r3,@r2
	mov.l @(0x138,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c0358be:
	mov.l @(0x138,PC),r2
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0x128,PC),r14
	tst r3,r3
	bf loc_8c0358f2
	mov.l @(0x12C,PC),r3
	jsr @r3
	nop
	mov.l @(0x12C,PC),r2
	jsr @r2
	nop
	mov.l @r14,r3
	mov.l @(0x128,PC),r0
	mov.b @r3,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jsr @r3
	nop
	mov.l @(0x120,PC),r1
	jsr @r1
	nop
	mov.l @(0x11C,PC),r3
	jsr @r3
	nop

loc_8c0358f2:
	mov.l @(0x11C,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c035916
	mov.l @r14,r1
	mov.l @(0x1C,r1),r2
	add 0x01,r2
	mov.l r2,@(0x1C,r1)
	mov.l @r14,r1
	mov.l @(0x20,r1),r2
	add 0x50,r2
	mov.l r2,@(0x20,r1)
	mov.l @(0x108,PC),r1
	cmp/ge r1,r2
	bf loc_8c035916
	mov.l @r14,r0
	mov 0x00,r2
	mov.l r2,@(0x20,r0)

loc_8c035916:
	lds.l @r15+,pr
	mov.l @(0xFC,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03591e:
	mov.l @(0xD0,PC),r3
	mov.l @r3,r4
	mov.b @r4,r0
	cmp/eq 0x02,r0
	bf loc_8c035938
	mov.b @(0x1,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c035938
	mov.b @(0x2,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c035938
	rts
	mov 0x01,r0

loc_8c035938:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c03593e:
	mov.l @(0xB0,PC),r3
	mov 0x2E,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	rts
	and 0x01,r0

;==============================================
loc_8c03594a:
	mov.l @(0xA4,PC),r3
	mov.l @r3,r4
	mov.b @r4,r0
	cmp/eq 0x02,r0
	bf loc_8c035964
	mov.b @(0x1,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c035964
	mov.b @(0x2,r4),r0
	cmp/eq 0x04,r0
	bf loc_8c035964
	rts
	mov 0x01,r0

loc_8c035964:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c03596a:
	mov.l @(0xB0,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data bank04.loc_8c041b10
	#data bank11.loc_8c1159f0
	#data bank11.loc_8c11bdb0
	#data 0x8c2659dc
	#data bank11.loc_8c11b7a0
	#data bank11.loc_8c11b800
	#data 0x0ce0a000
	#data bank12.loc_8c127860
	#data 0x0ce1d000
	#data bank12.loc_8c1240a0
	#data loc_8c0337bc
	#data 0x8c26a95f
	#data 0x8c26a904
	#data 0x8c26a908
	#data 0x8c26a90c
	#data 0x8c26a910
	#data 0x8c26a914
	#data 0x8c26a918
	#data 0x8c26a91c
	#data 0x8c26a920
	#data 0x8c26a924
	#data 0x8c26a928
	#data 0x8c26a92c
	#data 0x8c26a930
	#data 0x8c26a934
	#data 0x8c26a938
	#data 0x8c26a93c
	#data 0x8c26a940
	#data 0x8c26a944
	#data 0x8c26a948
	#data 0x8c26a94c
	#data 0x8c26a950
	#data 0x8c26823c
	#data loc_8c0338ec
	#data 0x8c2152cc
	#data loc_8c0395a0
	#data loc_8c030f54
	#data bank14.loc_8c14d1a4
	#data bank02.loc_8c02dc4c
	#data loc_8c0355c2
	#data 0x8c213046
	#data 0x00010000
	#data loc_8c031c74
	#data bank01.loc_8c011f68

;==============================================
loc_8c035a20:
	mov.l @(0x38,PC),r2
	mov.l @(0x3C,PC),r1
	mov.l @r2,r3
	mov.b @(0x1,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

;==============================================
loc_8c035a30:
	mov.l @(0x28,PC),r3
	mov.l @r3,r2
	mov.b @(0x1,r2),r0
	add 0x01,r0
	mov.b r0,@(0x1,r2)
	mov.l @(0x28,PC),r2
	jmp @r2
	nop

;==============================================
loc_8c035a40:
	mov.l @(0x18,PC),r4
	mov 0x40,r2
	mov 0x00,r0
	mov.l @r4,r3
	mov.l r2,@(0x14,r3)
	mov 0x01,r2
	mov.l @r4,r3
	mov.b r2,@r3
	mov.l @r4,r3
	mov.b r0,@(0x1,r3)
	mov.l @r4,r3
	rts
	mov.b r0,@(0x2,r3)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26823c
	#data bank14.loc_8c14d1b4
	#data loc_8c033190

;==============================================
loc_8c035a68:
	mov.l r14,@-r15
	mov 0x2E,r0
	mov.l @(0x11C,PC),r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l @(0x11C,PC),r1
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	mov.l @r14,r3
	mov.b @(0x1,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x10C,PC),r2
	jsr @r2
	nop
	mov.l @(0x108,PC),r3
	jsr @r3
	nop
	mov.l @r14,r0
	mov.b @(0x1,r0),r0
	cmp/eq 0x0A,r0
	bt.s loc_8c035aa4
	mov r13,r4
	mov.l @(0xFC,PC),r2
	jsr @r2
	mov 0x00,r4
	mov r0,r4

loc_8c035aa4:
	tst r4,r4
	bf loc_8c035b26
	mov.l @r14,r4
	mov.l @(0x14,r4),r0
	cmp/eq 0x40,r0
	bf loc_8c035b26
	mov.l @(0xF0,PC),r5
	mov.l @(0xEC,PC),r6
	mov.w @(0x4,r5),r0
	extu.w r0,r0
	tst r6,r0
	bf loc_8c035ac4
	mov.w @(0x18,r5),r0
	extu.w r0,r0
	tst r6,r0
	bt loc_8c035b26

loc_8c035ac4:
	mov.b @(0x1,r4),r0
	cmp/eq 0x07,r0
	bt.s loc_8c035b26
	mov r0,r5
	mov r5,r0
	nop
	cmp/eq 0x08,r0
	bt loc_8c035b26
	mov r5,r0
	nop
	cmp/eq 0x0A,r0
	bt loc_8c035b26
	mov 0x07,r0
	mov.b r0,@(0x1,r4)
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x2,r3)
	mov.l @(0xBC,PC),r3
	jsr @r3
	nop
	mov.l @(0xBC,PC),r2
	jsr @r2
	nop
	mov.l @(0xB8,PC),r3
	jsr @r3
	nop
	mov.l @(0xB8,PC),r2
	jsr @r2
	mov 0x7F,r4
	mov.l @(0xB4,PC),r3
	mov 0x01,r5
	jsr @r3
	mov 0x00,r4
	mov.l @(0xAC,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov 0x00,r4
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c035b26:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c035b2e:
	mov.l @(0x5C,PC),r4
	mov 0x40,r1
	mov 0x00,r5
	mov.l @(0x90,PC),r3
	sts.l pr,@-r15
	mov.l r5,@r3
	mov.l @r4,r2
	mov.b @(0x1,r2),r0
	add 0x01,r0
	mov.b r0,@(0x1,r2)
	mov 0x1A,r0
	mov.l @r4,r2
	mov.l r1,@(0x14,r2)
	mov.l @r4,r2
	mov.b r5,@(r0,r2)
	add 0x73,r0
	mov.l @r4,r2
	mov.b r5,@(r0,r2)
	mov 0x59,r0
	mov.l @r4,r6
	mov r6,r2
	mov.b @(r0,r2),r1
	cmp/pz r1
	bf loc_8c035bcc
	mov.b @(r0,r6),r7
	tst r7,r7
	bt loc_8c035b7c
	mov r7,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c035b7c
	mov r7,r0
	nop
	cmp/eq 0x02,r0
	bt loc_8c035b7c
	mov r7,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c035bde

loc_8c035b7c:
	mov 0x0A,r0
	mov.b r0,@(0x1,r6)
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.b r0,@(0x2,r3)
	bra loc_8c035bde
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26823c
	#data bank14.loc_8c14d1e0
	#data bank11.loc_8c11e730
	#data loc_8c03319e
	#data bank01.loc_8c010b18
	#data 0x00008000
	#data 0x8c2681dc
	#data bank04.loc_8c041ecc
	#data bank04.loc_8c04182e
	#data bank04.loc_8c04185e
	#data bank04.loc_8c041b4c
	#data bank04.loc_8c041a14
	#data bank04.loc_8c041aa6
	#data bank04.loc_8c04257c
	#data bank02.loc_8c027ada
	#data 0x8c212bf4

;==============================================
loc_8c035bcc:
	mov 0x4E,r0
	mov.b @(r0,r6),r2
	tst r2,r2
	bt loc_8c035bde
	mov.b @(r0,r6),r0
	mov.b r0,@(0x1,r6)
	mov 0x4E,r0
	mov.l @r4,r2
	mov.b r5,@(r0,r2)

loc_8c035bde:
	mov.l @(0xFC,PC),r2
	mov 0x01,r3
	mov.l @(0xFC,PC),r0
	mov 0x14,r1
	mov.b r3,@r2
	mov.b r1,@r0
	mov 0x2A,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x4A,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov.l @(0xEC,PC),r3
	jsr @r3
	nop
	mov.l @(0xE8,PC),r2
	jsr @r2
	nop
	mov.l @(0xE8,PC),r3
	jsr @r3
	nop
	mov.l @(0xE8,PC),r2
	mov.l @(0xE4,PC),r4
	mov.w @(0xC6,PC),r6
	jsr @r2
	mov 0x00,r5
	mov.l @(0xE0,PC),r3
	mov.l @(0xE0,PC),r4
	mov.w @(0xBE,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(0xDC,PC),r2
	jsr @r2
	nop
	mov.l @(0xDC,PC),r3
	jsr @r3
	nop
	mov.l @(0xD8,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c035c2e:
	mov.l @(0xD8,PC),r2
	mov.l @(0xD8,PC),r1
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

;==============================================
loc_8c035c3e:
	mov.l @(0xC8,PC),r4
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov 0x3C,r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.l @(0x94,PC),r3
	jsr @r3
	nop
	mov.l @(0x94,PC),r2
	jsr @r2
	nop
	mov.l @(0x9C,PC),r3
	jsr @r3
	nop
	mov.l @(0xAC,PC),r2
	jsr @r2
	nop
	mov.l @(0xA8,PC),r3
	jsr @r3
	nop
	mov.l @(0xA8,PC),r2
	jsr @r2
	nop
	mov.l @(0xA8,PC),r3
	mov.l @(0xA4,PC),r4
	jsr @r3
	nop
	mov.l @(0xA4,PC),r2
	jsr @r2
	fldi1 fr4
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0xA0,PC),r2
	mov 0xFF,r4
	mov 0x00,r6
	mov 0x14,r5
	jmp @r2
	lds.l @r15+,pr
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x6C,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bf loc_8c035d34
	mov.l @(0x7C,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c035cc4
	mov.l @r13,r2
	mov.w @(0x8,r2),r0
	add 0x01,r0
	bra loc_8c035d5a
	mov.w r0,@(0x8,r2)

loc_8c035cc4:
	mov.l @r13,r2
	mov.b @(0x1,r2),r0
	add 0x01,r0
	mov.b r0,@(0x1,r2)
	mov 0x00,r0
	mov.l @r13,r3
	mov.b r0,@(0x2,r3)
	bra loc_8c035d5a
	nop

;##############################################
	#data 0x0080
	#data 0x00c0
	#align4
	#data 0x8c289f78
	#data 0x8c289f79
	#data loc_8c0370a4
	#data loc_8c0357d8
	#data loc_8c03580c
	#data 0x8c2682c0
	#data bank12.loc_8c129728
	#data 0x8c2895f0
	#data bank04.loc_8c044d8c
	#data bank04.loc_8c041c08
	#data bank04.loc_8c0411ce
	#data 0x8c26823c
	#data bank14.loc_8c14d20c
	#data bank02.loc_8c02e014
	#data loc_8c030f24
	#data loc_8c030e30
	#data bank14.loc_8c14d1bc
	#data loc_8c031f10
	#data loc_8c031f24
	#data bank02.loc_8c02dc1c
	#data loc_8c0355b2
	#data bank02.loc_8c0279a4

;----------------------------------------------
loc_8c035d34:
	mov.l @r13,r0
	mov 0x29,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c035d44
	mov.l @(0x54,PC),r14
	bra loc_8c035d46
	nop

loc_8c035d44:
	mov.l @(0x50,PC),r14

loc_8c035d46:
	mov.l @(0x54,PC),r11
	bra loc_8c035d52
	mov 0x64,r12

loc_8c035d4c:
	jsr @r11
	mov r14,r4
	add 0x40,r14

loc_8c035d52:
	mov.b @r14,r2
	extu.b r2,r2
	cmp/ge r12,r2
	bf loc_8c035d4c

loc_8c035d5a:
	mov.l @r13,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x23,r0
	bf loc_8c035d70
	lds.l @r15+,pr
	mov.l @(0x38,PC),r2
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c035d70:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c035d7c:
	mov.l @(0x24,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c035d82:
	mov.l @(0x24,PC),r2
	mov.l @(0x24,PC),r1
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data bank13.loc_8c136400
	#data bank13.loc_8c1361c0
	#data loc_8c031152
	#data loc_8c03e730
	#data bank0f.loc_8c0fbf3e
	#data 0x8c26823c
	#data bank14.loc_8c14d214

;==============================================
loc_8c035db0:
	sts.l pr,@-r15
	mov.l @(0x100,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c035e68
	mov.l @(0xF8,PC),r4
	mov.l @r4,r2
	mov.b @(0x2,r2),r0
	add 0x01,r0
	mov.b r0,@(0x2,r2)
	mov.w @(0xE6,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0xA6,r0
	mov.l @r4,r3
	mov.w r0,@(0xA,r3)
	mov.l @(0xE8,PC),r3
	jsr @r3
	nop
	mov.l @(0xE4,PC),r2
	jsr @r2
	nop
	mov.l @(0xE4,PC),r3
	jsr @r3
	nop
	mov.l @(0xE0,PC),r2
	jsr @r2
	mov 0x19,r4
	mov.l @(0xE0,PC),r3
	jsr @r3
	nop
	mov.l @(0xDC,PC),r2
	jsr @r2
	nop
	mov.l @(0xDC,PC),r3
	jsr @r3
	nop
	mov.l @(0xD8,PC),r2
	jsr @r2
	nop
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0xD8,PC),r2
	mov.l @(0xD4,PC),r4
	jsr @r2
	nop
	mov.l @(0xD4,PC),r3
	jsr @r3
	fldi1 fr4
	mov.l @(0xD4,PC),r2
	jsr @r2
	nop
	mova @(0xD4,PC),r0
	mov.l @(0xD0,PC),r4
	mov 0x01,r3
	mov 0x5B,r5
	mov.b r3,@r4
	mov.l r5,@(0x4,r4)
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov 0x13,r0
	mov.b r0,@(0x9,r4)
	mov 0x18,r0
	mov.b r0,@(0xA,r4)
	mov r5,r0
	nop
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov.b r0,@(0xB,r4)
	mov.l @(0xB8,PC),r2
	jsr @r2
	nop
	mov.l @(0xB8,PC),r3
	jsr @r3
	nop
	mov.l @(0xB4,PC),r2
	jsr @r2
	nop
	mov.l @(0xB4,PC),r3
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r3
	mov 0xFF,r4
	bsr loc_8c0360fa
	nop
	mov.l @(0xAC,PC),r3
	mov.l @(0xA8,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c035e68:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c035e6e:
	mov.l r14,@-r15
	mov.l @(0x44,PC),r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bf loc_8c035f14
	mov.l @(0x28,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c035e9e
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	add 0x01,r0
	bra loc_8c035f14
	mov.w r0,@(0x8,r2)

loc_8c035e9e:
	mov.l @r14,r3
	mov.b @(0x1,r3),r0
	add 0x01,r0
	mov.b r0,@(0x1,r3)
	mov 0x00,r0
	mov.l @r14,r3
	mov.b r0,@(0x2,r3)
	bra loc_8c035f1c
	nop

;##############################################
	#data 0x0348
	#align4
	#data bank02.loc_8c0279a4
	#data 0x8c26823c
	#data loc_8c0357d8
	#data loc_8c03580c
	#data bank04.loc_8c041c08
	#data loc_8c032be0
	#data bank04.loc_8c044d8c
	#data bank02.loc_8c02e014
	#data loc_8c030f24
	#data loc_8c0355a8
	#data bank02.loc_8c02dc1c
	#data bank14.loc_8c14d1bc
	#data loc_8c031f10
	#data loc_8c031f24
	#data loc_8c030e30
	#data 0x8c26a688
	#data 0x44de8000
	#data bank0f.loc_8c0f9dd8
	#data bank0f.loc_8c0f9924
	#data bank0f.loc_8c0fa2ec
	#data loc_8c030e3a
	#data loc_8c0355b2
	#data loc_8c030712
	#data loc_8c0395ac

;----------------------------------------------
loc_8c035f14:
	bsr loc_8c036686
	nop
	bsr loc_8c036682
	nop

loc_8c035f1c:
	mov.l @r14,r2
	mov.w @(0x80,PC),r1
	mov.w @(0xA,r2),r0
	mov.l @(0x98,PC),r13
	add 0x01,r0
	mov.w r0,@(0xA,r2)
	mov.l @r14,r0
	mov.w @(0xA,r0),r0
	cmp/eq r1,r0
	bt loc_8c035f76
	mov.w @(0x70,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f7a
	mov.w @(0x6C,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f7e
	mov.w @(0x68,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f82
	mov.w @(0x64,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f86
	mov.w @(0x60,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f8a
	mov.w @(0x5C,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f8e
	mov.w @(0x58,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f92
	mov.w @(0x54,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f96
	mov.w @(0x50,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f9a
	mov.w @(0x4C,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f9e
	mov.w @(0x48,PC),r1
	cmp/eq r1,r0
	bt loc_8c035fc0
	bra loc_8c035fc6
	nop

loc_8c035f76:
	bra loc_8c035fc2
	mov 0x00,r4

loc_8c035f7a:
	bra loc_8c035fc2
	mov 0x01,r4

loc_8c035f7e:
	bra loc_8c035fc2
	mov 0x02,r4

loc_8c035f82:
	bra loc_8c035fc2
	mov 0x03,r4

loc_8c035f86:
	bra loc_8c035fc2
	mov 0x04,r4

loc_8c035f8a:
	bra loc_8c035fc2
	mov 0x05,r4

loc_8c035f8e:
	bra loc_8c035fc2
	mov 0x06,r4

loc_8c035f92:
	bra loc_8c035fc2
	mov 0x07,r4

loc_8c035f96:
	bra loc_8c035fc2
	mov 0x08,r4

loc_8c035f9a:
	bra loc_8c035fc2
	mov 0x09,r4

loc_8c035f9e:
	bra loc_8c035fc2
	mov 0x0A,r4

;##############################################
	#data 0x00f0
	#data 0x00fa
	#data 0x0104
	#data 0x010e
	#data 0x0118
	#data 0x0122
	#data 0x00bc
	#data 0x00c6
	#data 0x00d0
	#data 0x00da
	#data 0x00e4
	#data 0x00ee
	#align4
	#data bank0f.loc_8c0f9a6c

;----------------------------------------------
loc_8c035fc0:
	mov 0x0B,r4

loc_8c035fc2:
	jsr @r13
	nop

loc_8c035fc6:
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	mov.w @(0x72,PC),r3
	cmp/eq r3,r0
	bf loc_8c035fd6
	mov.l @(0x80,PC),r1
	jsr @r1
	nop

loc_8c035fd6:
	mov.l @r14,r2
	mov.w @(0x66,PC),r3
	mov.w @(0xA,r2),r0
	cmp/eq r3,r0
	bf loc_8c035fe6
	mov.l @(0x74,PC),r1
	jsr @r1
	nop

loc_8c035fe6:
	mov.l @r14,r3
	mov.w @(0x58,PC),r11
	mov.w @(0xA,r3),r0
	mov.l @(0x6C,PC),r12
	cmp/eq r11,r0
	bf loc_8c035ffe
	jsr @r12
	mov 0x00,r4
	jsr @r12
	mov 0x01,r4
	jsr @r12
	mov 0x02,r4

loc_8c035ffe:
	mov.l @r14,r0
	mov.w @(0x42,PC),r1
	mov.w @(0xA,r0),r0
	mov.l @(0x58,PC),r13
	cmp/eq r1,r0
	bt loc_8c03602c
	mov.w @(0x3A,PC),r1
	cmp/eq r1,r0
	bt loc_8c036030
	mov.w @(0x36,PC),r1
	cmp/eq r1,r0
	bt loc_8c036034
	mov.w @(0x32,PC),r1
	cmp/eq r1,r0
	bt loc_8c036038
	mov.w @(0x2E,PC),r1
	cmp/eq r1,r0
	bt loc_8c03603c
	mov.w @(0x2A,PC),r1
	cmp/eq r1,r0
	bt loc_8c036064
	bra loc_8c03606a
	nop

loc_8c03602c:
	bra loc_8c036066
	mov 0x00,r4

loc_8c036030:
	bra loc_8c036066
	mov 0x01,r4

loc_8c036034:
	bra loc_8c036066
	mov 0x02,r4

loc_8c036038:
	bra loc_8c036066
	mov 0x03,r4

loc_8c03603c:
	bra loc_8c036066
	mov 0x04,r4

;##############################################
	#data 0x0177
	#data 0x017c
	#data 0x015e
	#data 0x019a
	#data 0x01a4
	#data 0x01c2
	#data 0x01cc
	#data 0x01ea
	#data 0x01f4
	#align4
	#data bank0f.loc_8c0fa488
	#data bank0f.loc_8c0fa3fc
	#data bank0f.loc_8c0f9880
	#data bank0f.loc_8c0f9cc4

;----------------------------------------------
loc_8c036064:
	mov 0x05,r4

loc_8c036066:
	jsr @r13
	nop

loc_8c03606a:
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	mov.w @(0xDE,PC),r3
	cmp/eq r3,r0
	bf loc_8c03607c
	jsr @r12
	mov 0x03,r4
	jsr @r12
	mov 0x04,r4

loc_8c03607c:
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	cmp/eq r11,r0
	bf loc_8c03608a
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov 0x02,r4

loc_8c03608a:
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	mov.w @(0xC0,PC),r3
	cmp/ge r3,r0
	bt.s loc_8c0360a2
	mov 0x0B,r4
	mov.l @(0xC4,PC),r1
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	fmov @r1,fr2
	fadd fr3,fr2
	fmov fr2,@r1

loc_8c0360a2:
	mov.l @(0xC0,PC),r3
	jsr @r3
	nop
	mov.l @(0xBC,PC),r2
	jsr @r2
	nop
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	cmp/eq r11,r0
	bf loc_8c0360c0
	mov.l @(0xB4,PC),r2
	mov 0x14,r5
	mov 0x00,r6
	jsr @r2
	mov 0xFF,r4

loc_8c0360c0:
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	mov.w @(0x8C,PC),r3
	cmp/eq r3,r0
	bf loc_8c0360da
	mov.l @(0xA4,PC),r1
	jsr @r1
	nop
	mov.l @(0x98,PC),r3
	mov 0x3C,r5
	mov 0x01,r6
	jsr @r3
	mov 0xFF,r4

loc_8c0360da:
	lds.l @r15+,pr
	mov.l @(0x98,PC),r2
	mov.l @(0x94,PC),r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0360ea:
	sts.l pr,@-r15
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop
	bsr loc_8c036686
	nop
	bra loc_8c036682
	lds.l @r15+,pr

;==============================================
loc_8c0360fa:
	mov.l @(0x84,PC),r3
	jmp @r3
	mov 0x04,r4

;==============================================
loc_8c036100:
	mov.l @(0x80,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036106:
	mov.l @(0x80,PC),r2
	mov.l @(0x80,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x6C,PC),r3
	mov.l @r3,r2
	mov.b @(0x2,r2),r0
	tst r0,r0
	bt loc_8c03613c
	mov.l @(0x40,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(0x64,PC),r2
	jsr @r2
	nop
	mov.l @(0x38,PC),r3
	jsr @r3
	nop
	mov.l @(0x40,PC),r2
	mov.l @(0x5C,PC),r4
	jmp @r2
	lds.l @r15+,pr

loc_8c03613c:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c036142:
	mov.l @(0x54,PC),r4
	mov 0x00,r0
	mov 0x01,r3
	mov.b r3,@r4
	mov.b r0,@(0x7,r4)
	rts
	mov.b r0,@(0x8,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0190
	#data 0x0140
	#data 0x0348
	#align4
	#data bank04.loc_8c042538
	#data 0x8c26a694
	#data 0x40940000
	#data bank04.loc_8c044ef0
	#data loc_8c030e3a
	#data loc_8c0355b2
	#data bank04.loc_8c041ecc
	#data loc_8c030712
	#data loc_8c0395ac
	#data loc_8c03e888
	#data bank02.loc_8c027b64
	#data bank04.loc_8c040d60
	#data 0x8c26823c
	#data bank14.loc_8c14d21c
	#data bank02.loc_8c02e7bc
	#data loc_8c030724
	#data 0x8c26a518

;==============================================
loc_8c03619c:
	sts.l pr,@-r15
	mov.l @(0x118,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c036232
	mov.l @(0x110,PC),r4
	mov.l @r4,r3
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov.w @(0xFA,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.l @(0x104,PC),r3
	jsr @r3
	nop
	mov.l @(0x104,PC),r2
	jsr @r2
	nop
	mov.l @(0x100,PC),r3
	jsr @r3
	mov 0x0D,r4
	mov.l @(0x100,PC),r2
	jsr @r2
	nop
	mov.l @(0xFC,PC),r3
	jsr @r3
	nop
	bsr loc_8c036142
	nop
	mov.l @(0xF8,PC),r3
	jsr @r3
	nop
	mov.l @(0xF4,PC),r2
	jsr @r2
	nop
	mov.l @(0xF4,PC),r3
	jsr @r3
	nop
	mov.l @(0xF0,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0xF4,PC),r3
	mov.l @(0xEC,PC),r4
	jsr @r3
	nop
	mov.l @(0xF4,PC),r3
	mova @(0xEC,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(0xF0,PC),r2
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r2
	mov 0xFF,r4
	mov.l @(0xE8,PC),r3
	jsr @r3
	nop
	mov.l @(0xE8,PC),r2
	jsr @r2
	mov 0x15,r4
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(0xE4,PC),r2
	jsr @r2
	nop
	mov.l @(0xE0,PC),r3
	jsr @r3
	nop
	mov.l @(0xE0,PC),r2
	mov 0x07,r4
	jmp @r2
	lds.l @r15+,pr

loc_8c036232:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c036238:
	mov.l r14,@-r15
	mov.l @(0x80,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bf loc_8c03627a
	mov.l @(0x68,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c036266
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	add 0x01,r0
	mov.w r0,@(0x8,r2)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c036266:
	mov.l @r14,r3
	mov.b @(0x1,r3),r0
	add 0x01,r0
	mov.b r0,@(0x1,r3)
	mov 0x00,r0
	mov.l @r14,r3
	mov.b r0,@(0x2,r3)
	mov.l @(0x98,PC),r3
	jsr @r3
	nop

loc_8c03627a:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	mov.w @(0x30,PC),r3
	cmp/eq r3,r0
	bf loc_8c03628e
	mov.l @(0x6C,PC),r1
	mov 0x3C,r5
	mov 0x01,r6
	jsr @r1
	mov 0xFF,r4

loc_8c03628e:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	mov.w @(0x1E,PC),r3
	cmp/eq r3,r0
	bf loc_8c0362aa
	mov.l @(0x58,PC),r1
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r1
	mov 0xFF,r4
	lds.l @r15+,pr
	mov.l @(0x6C,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0362aa:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x01e0
	#data 0x014f
	#data 0x00eb
	#align4
	#data bank02.loc_8c0279a4
	#data 0x8c26823c
	#data loc_8c0357d8
	#data loc_8c03580c
	#data loc_8c032be0
	#data bank04.loc_8c044d8c
	#data bank02.loc_8c02e014
	#data loc_8c030f24
	#data loc_8c030e30
	#data loc_8c0355a8
	#data bank02.loc_8c02dc1c
	#data bank14.loc_8c14d1c8
	#data loc_8c031f10
	#data 0x3e99999a
	#data loc_8c031f24
	#data loc_8c0355b2
	#data bank0f.loc_8c0fbf5c
	#data bank04.loc_8c041dde
	#data bank04.loc_8c041aa6
	#data bank04.loc_8c041e44
	#data loc_8c03e7ba
	#data bank02.loc_8c027b64
	#data bank04.loc_8c041ecc
	#data bank0f.loc_8c0fc2c4

;==============================================
loc_8c036318:
	mov.l @(0x108,PC),r2
	mov.l @(0x10C,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x100,PC),r2
	jsr @r2
	nop
	mov.l @(0x100,PC),r3
	mov.l @(0xFC,PC),r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c036338:
	mov.l @(0xE8,PC),r4
	mov 0x00,r2
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.w @(0xDA,PC),r6
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov.w @(0xD0,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0x4C,r0
	mov.l @r4,r3
	mov.l @(0xE0,PC),r4
	mov.b r2,@(r0,r3)
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov r2,r5
	mov.l @(0xDC,PC),r2
	mov.l @(0xDC,PC),r4
	mov.w @(0xBC,PC),r6
	jsr @r2
	mov 0x00,r5
	mov.l @(0xD8,PC),r3
	jsr @r3
	nop
	mov.l @(0xD8,PC),r2
	jsr @r2
	nop
	mov.l @(0xD4,PC),r3
	jsr @r3
	nop
	mov.l @(0xD4,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(0xD0,PC),r3
	jsr @r3
	nop
	mov.l @(0xD0,PC),r2
	jsr @r2
	nop
	mov.l @(0xCC,PC),r3
	jsr @r3
	nop
	mov.l @(0xCC,PC),r2
	jsr @r2
	nop
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0xCC,PC),r2
	mov.l @(0xC4,PC),r4
	jsr @r2
	nop
	mov.l @(0xC8,PC),r3
	jsr @r3
	fldi1 fr4
	mov.l @(0xC4,PC),r2
	jsr @r2
	nop
	mova @(0xC8,PC),r0
	mov.l @(0xC0,PC),r4
	mov 0x01,r3
	mov 0x5B,r5
	mov.b r3,@r4
	mov.l r5,@(0x4,r4)
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov 0x13,r0
	mov.b r0,@(0x9,r4)
	mov 0x18,r0
	mov.b r0,@(0xA,r4)
	mov r5,r0
	nop
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov.b r0,@(0xB,r4)
	mov.l @(0xAC,PC),r2
	jsr @r2
	nop
	mov.l @(0xA8,PC),r3
	jsr @r3
	nop
	mov.l @(0xA8,PC),r2
	jsr @r2
	nop
	mov.l @(0xA4,PC),r14
	jsr @r14
	mov 0x00,r4
	jsr @r14
	mov 0x01,r4
	jsr @r14
	mov 0x02,r4
	jsr @r14
	mov 0x03,r4
	jsr @r14
	mov 0x04,r4
	mov.l @(0x94,PC),r3
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	mov.l @(0x8C,PC),r2
	jsr @r2
	nop
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(0x88,PC),r2
	mov 0x06,r4
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0708
	#data 0x0080
	#data 0x00c0
	#align4
	#data 0x8c26823c
	#data bank14.loc_8c14d224
	#data loc_8c030e3a
	#data loc_8c030712
	#data loc_8c0395ac
	#data 0x8c2682c0
	#data bank12.loc_8c129728
	#data 0x8c2895f0
	#data loc_8c0357d8
	#data loc_8c03580c
	#data bank04.loc_8c041d54
	#data loc_8c032be0
	#data bank04.loc_8c044d8c
	#data loc_8c030f24
	#data bank02.loc_8c02e014
	#data loc_8c0355a8
	#data bank02.loc_8c02dc1c
	#data bank14.loc_8c14d1bc
	#data loc_8c031f10
	#data loc_8c031f24
	#data loc_8c030e30
	#data 0x8c26a688
	#data 0x44de8000
	#data bank0f.loc_8c0fa588
	#data bank0f.loc_8c0f9924
	#data bank0f.loc_8c0fa2ec
	#data bank0f.loc_8c0fa488
	#data bank0f.loc_8c0f9880
	#data loc_8c0355b2
	#data bank04.loc_8c041ecc
	#data bank04.loc_8c042538
	#data bank02.loc_8c027b64

;==============================================
loc_8c0364a4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xB8,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0364b6
	bsr loc_8c036686
	nop

loc_8c0364b6:
	mov.l @(0xB0,PC),r14
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r2)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0364f2
	mov.l @r14,r2
	mov 0x01,r0
	mov 0x00,r4
	mov.b r0,@(0x1,r2)
	mov.l @r14,r3
	mov r4,r0
	nop
	mov.b r0,@(0x2,r3)
	mov.l @r14,r3
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0364f2:
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(0x68,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c03651e
	bsr loc_8c036590
	nop
	mov.l @r14,r0
	mov.b @r0,r0
	cmp/eq 0x03,r0
	bf loc_8c03651e
	mov.l @(0x64,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(0x60,PC),r3
	mov 0x02,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c03651e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c036524:
	sts.l pr,@-r15
	mov.l @(0x54,PC),r3
	jsr @r3
	nop
	mov.l @(0x40,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(0x50,PC),r3
	mov.l @(0x48,PC),r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c03653a:
	sts.l pr,@-r15
	mov.l @(0x48,PC),r3
	jsr @r3
	nop
	mov.l @(0x2C,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(0x38,PC),r3
	mov.l @(0x34,PC),r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c036550:
	mov.l @(0x14,PC),r5
	mov 0x00,r0
	mov.l @r5,r3
	mov.b r0,@(0x1,r3)
	mov.l @r5,r3
	mov.b r0,@(0x2,r3)
	mov.l @(0x2C,PC),r3
	jmp @r3
	mov 0x06,r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data loc_8c03563a
	#data 0x8c26823c
	#data bank04.loc_8c044d8c
	#data bank04.loc_8c044ef0
	#data bank04.loc_8c04185e
	#data bank04.loc_8c04257c
	#data bank01.loc_8c010f24
	#data loc_8c030818
	#data loc_8c0395ac
	#data bank01.loc_8c0113e8
	#data bank02.loc_8c027b64

;==============================================
loc_8c036590:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov r13,r4
	mov.l r11,@-r15
	mov.l @(0x118,PC),r5
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x10C,PC),r6
	sts.l pr,@-r15
	mov.w @(0x4,r5),r0
	extu.w r0,r0
	tst r6,r0
	bt.s loc_8c0365b4
	mov 0x01,r9
	mov r9,r4

loc_8c0365b4:
	mov.w @(0x18,r5),r0
	extu.w r0,r0
	tst r6,r0
	bt loc_8c0365be
	add 0x02,r4

loc_8c0365be:
	exts.b r4,r2
	tst r2,r2
	bt loc_8c036670
	mov.l @(0xF4,PC),r14
	mov 0x2A,r0
	mov.l @r14,r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bt.s loc_8c0365d4
	mov 0x18,r0
	mov 0x03,r4

loc_8c0365d4:
	mov.b r4,@(r0,r5)
	add 0x6D,r0
	mov.l @r14,r3
	mov 0x60,r2
	mov.l @(0xE0,PC),r11
	mov r13,r12
	mov.b r4,@(r0,r3)
	mov 0x06,r8
	mov.l @r14,r3
	mov.l r2,@(0x14,r3)

loc_8c0365e8:
	mov.w @(0xC0,PC),r3
	exts.b r12,r10
	mov.l @(0xD4,PC),r2
	mov 0x00,r5
	muls.w r3,r10
	mov r3,r6
	sts macl,r10
	add r11,r10
	jsr @r2
	mov r10,r4
	mov.w @(0xAE,PC),r0
	mov.l @(0xC8,PC),r3
	mov.b r12,@(r0,r10)
	jsr @r3
	mov r10,r4
	add 0x01,r12
	exts.b r12,r2
	cmp/ge r8,r2
	bf loc_8c0365e8
	mov.l @r14,r2
	mov 0x18,r0
	mov.b @(r0,r2),r3
	tst r9,r3
	bt loc_8c03661c
	mov.w @(0x94,PC),r0
	mov.b r9,@(r0,r11)

loc_8c03661c:
	mov.l @r14,r3
	mov 0x18,r0
	mov 0x02,r4
	mov.w @(0x86,PC),r5
	mov.b @(r0,r3),r2
	tst r4,r2
	bt loc_8c036632
	mov.w @(0x82,PC),r0
	mov r11,r1
	add r5,r1
	mov.b r9,@(r0,r1)

loc_8c036632:
	mov.w @(0x7C,PC),r0
	mov 0x03,r2
	mov.b r9,@(r0,r11)
	add r5,r11
	mov.b r4,@(r0,r11)
	mov.l @r14,r3
	mov.b r2,@r3
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x1,r3)
	mov.l @r14,r3
	mov.b r0,@(0x2,r3)
	mov.l @r14,r3
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov.l @r14,r3
	mov.w r0,@(0xA,r3)
	mov.l @r14,r3
	mov.w r0,@(0xC,r3)
	mov.l @r14,r3
	mov.w r0,@(0xE,r3)

loc_8c036670:
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
loc_8c036682:
	rts
	nop

;==============================================
loc_8c036686:
	mov.l @(0x44,PC),r4
	sts.l pr,@-r15
	mov.b @r4,r3
	mov.l @(0x40,PC),r5
	add 0xFF,r3
	mov.b r3,@r4
	mov.b @r4,r2
	tst r2,r2
	bf loc_8c0366d8
	mov.b @r5,r3
	mov 0x01,r1
	sub r3,r1
	mov.b r1,@r5
	mov.b @r5,r3
	tst r3,r3
	bf loc_8c0366d4
	mov 0x0F,r1
	bra loc_8c0366d8
	mov.b r1,@r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x05a4
	#data 0x0524
	#data 0x04bc
	#data 0x04c8
	#data 0x8000
	#align4
	#data 0x8c2681dc
	#data 0x8c26823c
	#data 0x8c268340
	#data bank12.loc_8c129728
	#data bank04.loc_8c043b42
	#data 0x8c289f79
	#data 0x8c289f78

;==============================================
loc_8c0366d4:
	mov 0x14,r2
	mov.b r2,@r4

loc_8c0366d8:
	mov.b @r5,r0
	cmp/eq 0x01,r0
	bf loc_8c0366ee
	mov.l @(0x14,PC),r2
	mov 0x62,r5
	mov.l @(0x14,PC),r3
	mov 0x0B,r6
	mov.l r2,@-r15
	jsr @r3
	mov 0x34,r4
	add 0x04,r15

loc_8c0366ee:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data bank13.loc_8c136680
	#data loc_8c0395c6

;==============================================
loc_8c0366fc:
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	jsr @r3
	nop
	mov.l @(0xD4,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c03671e
	mov.l @(0xD0,PC),r1
	mov.w @(0xBE,PC),r0
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	add 0x01,r3
	mov.b r3,@(r0,r2)
	mov.l @(0xC8,PC),r2
	jsr @r2
	nop

loc_8c03671e:
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov 0x01,r4
	tst r0,r0
	bf loc_8c036738
	mov.l @(0xB4,PC),r2
	mov.l @(0xC0,PC),r1
	mov.l @r2,r3
	mov.b @(0x1,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c036738:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03673e:
	mov.l r14,@-r15
	mov.l @(0x9C,PC),r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l @(0xA0,PC),r3
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r4
	mov.w @(0x7A,PC),r6
	mov.l r13,@r3
	mov.l @r14,r2
	mov.b @(0x1,r2),r0
	add 0x01,r0
	mov.b r0,@(0x1,r2)
	mov 0x19,r0
	mov.l @r14,r2
	mov.b r12,@(r0,r2)
	mov.l @(0x90,PC),r2
	jsr @r2
	mov r13,r5
	mov.l @(0x8C,PC),r3
	mov.l @(0x8C,PC),r4
	mov.w @(0x60,PC),r6
	jsr @r3
	mov r13,r5
	mov.l @r14,r2
	mov 0x18,r0
	mov 0x06,r11
	mov r2,r3
	mov.b @(r0,r3),r1
	add 0x6D,r0
	mov.b r1,@(r0,r2)
	mov 0x2E,r0
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	mov 0x4F,r0
	mov.l @r14,r3
	mov r3,r2
	mov.b @(r0,r2),r1
	add 0x34,r0
	mov.b r1,@(r0,r3)
	mov 0x4E,r0
	mov.l @r14,r3
	mov 0x03,r2
	mov.b r11,@(r0,r3)
	mov 0x2C,r0
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	mov.w @(0x2E,PC),r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov.l @(0x54,PC),r3
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bf loc_8c0367b8
	mov.w @(0x20,PC),r0
	mov 0x07,r2
	mov.l @r14,r1
	mov.b r2,@(r0,r1)

loc_8c0367b8:
	mov.l @r14,r3
	mov 0x4C,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c03680c
	mov.w @(0x10,PC),r1
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bt loc_8c036804
	bra loc_8c036806
	mov 0x64,r4

;##############################################
	#data 0x0080
	#data 0x00c0
	#data 0x00b2
	#data 0x0085
	#align4
	#data bank04.loc_8c042d8c
	#data 0x8c213046
	#data 0x8c26823c
	#data loc_8c036bd4
	#data bank01.loc_8c010b18
	#data bank14.loc_8c14d22c
	#data 0x8c212bf4
	#data 0x8c2682c0
	#data bank12.loc_8c129728
	#data 0x8c2895f0
	#data 0x8c212c14

;----------------------------------------------
loc_8c036804:
	mov.w @(0x104,PC),r4

loc_8c036806:
	mov.l @(0x114,PC),r2
	jsr @r2
	nop

loc_8c03680c:
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c036822
	mov.l @(0x108,PC),r2
	jsr @r2
	nop
	mov.w @(0xEE,PC),r0
	mov.l @r14,r3
	mov.b r12,@(r0,r3)

loc_8c036822:
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c036832
	mov.l @(0xF4,PC),r2
	jsr @r2
	nop

loc_8c036832:
	mov.l @(0xF4,PC),r3
	jsr @r3
	nop
	mov.l @(0xF0,PC),r2
	jsr @r2
	nop
	mov.l @(0xF0,PC),r3
	jsr @r3
	nop
	mov.l @(0xEC,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0xEC,PC),r3
	jsr @r3
	nop
	mov.l @(0xE8,PC),r2
	jsr @r2
	nop
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x7F,r4
	mov.l @(0xE8,PC),r2
	mov.l @(0xE4,PC),r4
	jsr @r2
	mov 0x40,r5
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov 0x03,r4
	mov.l @(0xE4,PC),r2
	jsr @r2
	nop
	mova @(0xE0,PC),r0
	mov.w @(0x9A,PC),r4
	fmov @r0,fr6
	mova @(0xE0,PC),r0
	mov.l @(0xE4,PC),r3
	fmov @r0,fr5
	mova @(0xDC,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(0xC8,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(0xDC,PC),r3
	mov.w @(0x84,PC),r5
	mov.l @(0xD4,PC),r6
	jsr @r3
	mov r6,r4
	mov.l @(0xE0,PC),r2
	mov.l @(0xD8,PC),r4
	mov.l @(0xD4,PC),r5
	jsr @r2
	nop
	mov.l @(0xD8,PC),r3
	jsr @r3
	nop
	mov.l @(0xD8,PC),r2
	jsr @r2
	nop
	mov.l @(0xD4,PC),r3
	jsr @r3
	nop
	mov.w @(0x62,PC),r7
	mov r13,r4
	mov.l @(0xD0,PC),r14
	mov 0x02,r6

loc_8c0368b6:
	mul.l r7,r4
	mov.w @(0x5A,PC),r0
	sts macl,r5
	add r14,r5
	mov.b r12,@r5
	mov.b r13,@(r0,r5)
	mov.w @(0x52,PC),r0
	mov.b r4,@(r0,r5)
	mov r4,r0
	nop
	mov.b r0,@(0x1,r5)
	mov r4,r3
	mov 0x00,r2
	mov.w @(0x46,PC),r0
	cmp/gt r3,r2
	addc r2,r3
	mov.b r4,@(r0,r5)
	add 0x13,r0
	shar r3
	add 0x01,r4
	mov.b r3,@(r0,r5)
	cmp/ge r11,r4
	add 0x04,r0
	bf.s loc_8c0368b6
	mov.b r6,@(r0,r5)
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0368f4:
	mov.l @(0x90,PC),r2
	mov.l @(0x94,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x88,PC),r2
	jmp @r2
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00c8
	#data 0x00a6
	#data 0x1d28
	#data 0x0080
	#data 0x05a4
	#data 0x012c
	#data 0x0524
	#data 0x052c
	#align4
	#data bank01.loc_8c011780
	#data loc_8c038028
	#data loc_8c038f4c
	#data loc_8c0357d8
	#data loc_8c03580c
	#data loc_8c0355a8
	#data bank02.loc_8c02dc1c
	#data bank04.loc_8c041ecc
	#data bank04.loc_8c04182e
	#data bank04.loc_8c041b4c
	#data 0x8c2152dc
	#data bank11.loc_8c11fcd0
	#data bank12.loc_8c1204f0
	#data bank12.loc_8c121100
	#data 0x463b8000
	#data 0x3e99999a
	#data 0x3faaaaab
	#data bank12.loc_8c121730
	#data 0x00808080
	#data bank11.loc_8c11c420
	#data 0x8c311de0
	#data 0x8c2df160
	#data bank11.loc_8c11b570
	#data bank12.loc_8c1234f0
	#data bank11.loc_8c11f340
	#data bank04.loc_8c044d8c
	#data 0x8c268340
	#data 0x8c26823c
	#data bank14.loc_8c14d234
	#data loc_8c031f30

;==============================================
loc_8c036994:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l @(0x124,PC),r14
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x2,r3)
	mov 0x00,r13
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov.l @(0x110,PC),r11
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	mov.w @(0xE6,PC),r0
	mov.l @r14,r3
	mov.b r12,@(r0,r3)
	mov 0x50,r0
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	add 0x35,r0
	mov.l @r14,r3
	mov r3,r2
	mov.b @(r0,r2),r1
	add 0x20,r0
	mov.b r1,@(r0,r3)
	add 0xDC,r0
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	mov.l @r14,r4
	mov r4,r0
	nop
	mov.w @(0xC6,PC),r2
	mov r4,r3
	mov.w @(0xC0,PC),r1
	add r3,r2
	mov.b @r2,r2
	mov.b @(r0,r1),r0
	or r2,r0
	cmp/eq 0x03,r0
	bt loc_8c036a12
	mov.w @(0xB2,PC),r0
	mov.w @(0xB4,PC),r3
	mov.b @(r0,r4),r2
	mov.w @(0xB2,PC),r0
	add 0xFF,r2
	mul.l r3,r2
	sts macl,r2
	add r11,r2
	mov.b @(r0,r2),r1
	mov.w @(0xA8,PC),r0
	mov.b r1,@(r0,r4)

loc_8c036a12:
	mov.l @(0xB8,PC),r3
	jsr @r3
	nop
	mov.l @(0xB4,PC),r2
	jsr @r2
	nop
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0xB0,PC),r2
	jsr @r2
	nop
	mov.l @(0xB0,PC),r3
	jsr @r3
	nop
	mov.w @(0x8A,PC),r3
	mov.w @(0x86,PC),r2
	mov.l @(0xA8,PC),r4
	add r11,r3
	add r11,r2
	mov.w @(0x82,PC),r0
	mov.l r2,@r4
	mov.l r3,@(0x4,r4)
	mov.l @(0xA0,PC),r3
	mov.l @r14,r2
	jsr @r3
	mov.b r13,@(r0,r2)
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8c036aa4
	cmp/eq 0x02,r0
	bt loc_8c036aa4
	cmp/eq 0x01,r0
	bt loc_8c036a66
	cmp/eq 0x07,r0
	bt loc_8c036a66
	cmp/eq 0x05,r0
	bt loc_8c036a76
	bra loc_8c036aa4
	nop

loc_8c036a66:
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r2
	mov 0x64,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c036a76:
	mov.l @(0x74,PC),r3
	mov.w @(0x44,PC),r0
	mov.l @r14,r2
	mov.l @(0x74,PC),r1
	mov.b r12,@(r0,r2)
	mov.b r12,@r3
	mov.l @(0x74,PC),r3
	mov.l @(0x68,PC),r2
	mov.b r12,@r2
	mov.b r12,@r1
	mov.b r12,@r3
	mov.l @(0x70,PC),r3
	mov.l @(0x74,PC),r1
	mov.l @(0x68,PC),r2
	mov.b r13,@r2
	mov.b r13,@r3
	mov.b r13,@r1
	mov.l @(0x70,PC),r3
	mov.l @(0x74,PC),r1
	mov.l @(0x68,PC),r2
	mov.b r12,@r2
	mov.b r13,@r3
	mov.b r13,@r1

loc_8c036aa4:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x009a
	#data 0x0085
	#data 0x0084
	#data 0x05a4
	#data 0x052e
	#data 0x0081
	#data 0x04f0
	#data 0x0a94
	#data 0x00b0
	#align4
	#data 0x8c26823c
	#data 0x8c268340
	#data loc_8c0357d8
	#data loc_8c03580c
	#data bank02.loc_8c02dc1c
	#data bank04.loc_8c045e74
	#data bank04.loc_8c0472fc
	#data 0x8c212f28
	#data loc_8c0370a4
	#data bank01.loc_8c011780
	#data 0x8c2132cb
	#data 0x8c2132ca
	#data 0x8c2134cd
	#data 0x8c2134cc
	#data 0x8c2134ce
	#data 0x8c213049
	#data 0x8c213048
	#data 0x8c213046
	#data 0x8c2136d0
	#data 0x8c2136d1

;==============================================
loc_8c036b14:
	mov.l @(0x90,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b1a:
	mov.l @(0x90,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b20:
	mov.l @(0x8C,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b26:
	mov.l @(0x8C,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b2c:
	mov.l @(0x88,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b32:
	mov.l @(0x88,PC),r4
	mov 0x40,r2
	sts.l pr,@-r15
	mov.l @r4,r3
	mov 0x00,r5
	mov.l r2,@(0x14,r3)
	mov 0x01,r2
	mov.l @r4,r3
	mov.b r2,@r3
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.b r0,@(0x1,r3)
	mov 0x4C,r1
	mov.l @r4,r3
	mov.b r0,@(0x2,r3)
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov.b r0,@(0x4,r3)
	mov.l @r4,r3
	mov.b r0,@(0x5,r3)
	mov.l @r4,r3
	mov.b r0,@(0x6,r3)
	mov.l @r4,r3
	mov.b r0,@(0x7,r3)
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w r0,@(0xA,r3)
	mov.l @r4,r3
	mov.w r0,@(0xC,r3)
	mov.l @r4,r3
	mov.w r0,@(0xE,r3)
	mov.l @r4,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bf loc_8c036b86
	mov.l @r4,r2
	mov 0x2C,r0
	mov 0x02,r3
	mov.b r3,@(r0,r2)

loc_8c036b86:
	mov.l @(0x38,PC),r2
	jsr @r2
	nop
	mov.l @(0x34,PC),r1
	jsr @r1
	nop
	mov.l @(0x34,PC),r2
	jsr @r2
	nop
	mov.l @(0x30,PC),r1
	jsr @r1
	nop
	mov.l @(0x30,PC),r3
	mov 0x00,r4
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data loc_8c03a1a4
	#data loc_8c03d988
	#data loc_8c03eba4
	#data loc_8c03ee6c
	#data loc_8c03f0d4
	#data 0x8c26823c
	#data bank04.loc_8c044d8c
	#data loc_8c030f24
	#data loc_8c030e30
	#data loc_8c0355a8
	#data bank02.loc_8c02dc1c

;==============================================
loc_8c036bd4:
	mov.l r14,@-r15
	mov 0x01,r6
	mov.l r13,@-r15
	mov 0x06,r5
	mov.l r12,@-r15
	mov 0x00,r12
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r13
	mov r12,r4
	mov.w @(0xF4,PC),r14
	mov.l @(0x100,PC),r7

loc_8c036bea:
	mul.l r14,r4
	mov r4,r2
	and r6,r2
	mov r2,r3
	shll2 r2
	add r3,r2
	mov.w @(0xE6,PC),r0
	sts macl,r1
	mov.l @(0xF8,PC),r3
	shll2 r2
	add r7,r2
	add r13,r1
	add r0,r1
	jsr @r3
	mov 0x14,r0
	add 0x01,r4
	cmp/ge r5,r4
	bf loc_8c036bea
	mov.l @(0xE8,PC),r2
	jsr @r2
	nop
	mov.l @(0xE4,PC),r5
	mov.b @(0xF,r5),r0
	mov r0,r4
	cmp/pl r4
	bf loc_8c036cae
	neg r4,r4
	mov.b @(0x5,r5),r0
	add 0x02,r4
	mul.l r14,r4
	cmp/eq 0x00,r0
	sts macl,r4
	bt.s loc_8c036c50
	add r13,r4
	cmp/eq 0x01,r0
	bt loc_8c036c3e
	cmp/eq 0x02,r0
	bt loc_8c036c44
	cmp/eq 0x03,r0
	bt loc_8c036c50
	bra loc_8c036c52
	nop

loc_8c036c3e:
	mov.w @(0xA0,PC),r6
	bra loc_8c036c52
	nop

loc_8c036c44:
	mov.w @(0x9C,PC),r0
	mov.w @(0x9C,PC),r6
	mov.b r12,@(r0,r4)
	add 0x01,r0
	bra loc_8c036c52
	mov.b r12,@(r0,r4)

loc_8c036c50:
	mov r12,r6

loc_8c036c52:
	mov.w @(0x92,PC),r0
	mov.w @(r0,r4),r3
	add 0x02,r0
	mov.w r3,@(r0,r4)
	add 0xFE,r0
	mov.w r6,@(r0,r4)
	add 0x02,r0
	mov.w @(r0,r4),r3
	add 0xFE,r0
	mov.w @(r0,r4),r2
	add 0x04,r0
	not r3,r3
	and r2,r3
	mov.w r3,@(r0,r4)
	add 0xFC,r0
	mov.w @(r0,r4),r2
	add 0x02,r0
	mov.w @(r0,r4),r3
	add 0x04,r0
	not r2,r2
	and r3,r2
	mov.l @(0x74,PC),r3
	mov.w r2,@(r0,r4)
	mov.b @(0xF,r5),r0
	mov.w @(0x62,PC),r2
	neg r0,r1
	add 0x04,r1
	mul.l r14,r1
	sts macl,r1
	add r13,r1
	add r2,r1
	add r4,r2
	jsr @r3
	mov 0x14,r0
	mov.b @(0xF,r5),r0
	mov.w @(0x4C,PC),r2
	neg r0,r1
	mov.l @(0x54,PC),r3
	add 0x06,r1
	mul.l r14,r1
	sts macl,r1
	add r13,r1
	add r2,r1
	add r4,r2
	jsr @r3
	mov 0x14,r0

loc_8c036cae:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c036cb8:
	mov.w @(0x2C,PC),r0
	mov.w @(r0,r4),r0
	mov.w @(0x2A,PC),r4
	extu.w r0,r0
	and r0,r4
	rts
	mov r4,r0

;==============================================
loc_8c036cc6:
	mov.l @(0x38,PC),r2
	mov 0x5C,r0
	mov r4,r1
	mov.l r4,@-r15
	mov.l @r2,r3
	mov.b r1,@(r0,r3)
	mov.l @(0x30,PC),r3
	mov.l @(0x30,PC),r1
	mov.l @r3,r4
	mov.l @r15,r5
	jmp @r1
	add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x05a4
	#data 0x04f0
	#data 0x1000
	#data 0x035c
	#data 0x2000
	#data 0x04dc
	#data 0x03f0
	#align4
	#data 0x8c2681dc
	#data 0x8c268340
	#data bank12.loc_8c129620
	#data bank01.loc_8c011d3c
	#data 0x8c212ccc
	#data 0x8c26823c
	#data 0x8c1f8ac4
	#data bank17.loc_8c174e96

;==============================================
loc_8c036d0c:
	mov.l @(0xD4,PC),r1
	mov.w @(0xCC,PC),r0
	mov.l r14,@-r15
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c036dda
	mov 0x01,r14
	mov.b @(0x1,r4),r0
	mov r14,r3
	shad r5,r3
	tst r3,r0
	bt loc_8c036dda
	mov.l @(0xC0,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c036dda
	mov.l @(0xBC,PC),r0
	mov r5,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.l @(0x30,r2),r1
	mov.l @r1,r3
	tst r3,r3
	bt loc_8c036dc6
	mov.b @r4,r0
	mov r5,r6
	tst 0x04,r0
	bt.s loc_8c036d5e
	add 0x01,r6
	mov r4,r2
	add 0x04,r2
	add r5,r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c036dda
	mov.b @r4,r3
	tst r6,r3
	bf loc_8c036dba
	bra loc_8c036d90
	nop

loc_8c036d5e:
	mov r5,r7
	shll2 r7
	mov r5,r3
	mov.l @(0x88,PC),r2
	add r3,r7
	mov.l @(0x88,PC),r1
	shll2 r7
	add r2,r7
	mov.w @r7,r3
	extu.w r3,r3
	and r1,r3
	cmp/eq r1,r3
	bt loc_8c036dda
	mov.w @(0x4,r7),r0
	mov.l @(0x7C,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c036dda
	mov.b @r4,r1
	tst r6,r1
	bt loc_8c036d9c
	mov 0x18,r0
	mov.b @(r0,r4),r0
	tst r0,r0
	bf loc_8c036dda

loc_8c036d90:
	mov r4,r3
	add 0x06,r3
	mov 0x00,r2
	add r3,r5
	bra loc_8c036dda
	mov.b r2,@r5

loc_8c036d9c:
	sub r5,r14
	mov r4,r0
	nop
	add 0x06,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bt loc_8c036dda
	mov.w @(0x32,PC),r0
	mov.l @(0x4C,PC),r1
	mul.l r0,r5
	sts macl,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x40,r0
	bf loc_8c036dda

loc_8c036dba:
	mov r4,r2
	add 0x06,r2
	mov 0x02,r3
	add r2,r5
	bra loc_8c036dda
	mov.b r3,@r5

loc_8c036dc6:
	mov r4,r1
	add 0x04,r1
	add r5,r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c036dda
	mov r4,r3
	add 0x06,r3
	add r3,r5
	mov.b r14,@r5

loc_8c036dda:
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00b0
	#data 0x05a4
	#align4
	#data 0x8c26823c
	#data 0x8c212cda
	#data 0x8c212be0
	#data 0x8c2681dc
	#data 0x00008360
	#data 0x00008000
	#data 0x8c26881c

;==============================================
loc_8c036e00:
	sts.l pr,@-r15
	mov 0x00,r6
	mov r6,r0
	nop
	mov.b r0,@(0x2,r4)
	tst r5,r5
	mov.b r0,@(0x3,r4)
	mov.b r0,@(0xC,r4)
	mov 0x1A,r0
	mov.b r6,@(r0,r4)
	mov.w @(0x7A,PC),r0
	mov.w r0,@(0x8,r4)
	mov 0x0A,r0
	bt.s loc_8c036e5a
	mov.w r0,@(0xA,r4)
	mova @(0x74,PC),r0
	fmov @r0,fr4
	mov 0x10,r0
	fmov fr4,@(r0,r4)
	mov 0x14,r0
	fmov fr4,@(r0,r4)
	mov 0x19,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c036e42
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x10,r0
	fmov fr3,@(r0,r4)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov fr3,@(r0,r4)

loc_8c036e42:
	mov.l @(0x5C,PC),r2
	mov 0x5C,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c036e8c
	mov.b @r4,r1
	tst r1,r1
	bf loc_8c036e8c
	mov 0x00,r4
	bra loc_8c036cc6
	lds.l @r15+,pr

loc_8c036e5a:
	mova @(0x48,PC),r0
	mov.l @(0x4C,PC),r3
	fmov @r0,fr3
	mov 0x10,r0
	fmov fr3,@(r0,r4)
	mova @(0x40,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	jsr @r3
	fmov fr3,@(r0,r4)
	mov.l @(0x30,PC),r3
	mov 0x5C,r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c036e84
	bsr loc_8c036cc6
	mov 0x01,r4
	mov.l @(0x30,PC),r3
	jsr @r3
	nop

loc_8c036e84:
	mov.l @(0x2C,PC),r2
	mov 0x39,r4
	jmp @r2
	lds.l @r15+,pr

loc_8c036e8c:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x4650
	#align4
	#data 0x42a00000
	#data 0x43480000
	#data 0x42c80000
	#data 0x8c26823c
	#data 0x43400000
	#data 0x42000000
	#data loc_8c031bba
	#data bank04.loc_8c04185e
	#data bank04.loc_8c04257c

;==============================================
;pause menu window render
;==============================================
loc_8c036eb8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r4
	sts.l pr,@-r15
	mov r4,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0xC,r14)
	mov.b r0,@(0xD,r14)
	mov.b r0,@(0xE,r14)
	mov.b r0,@(0xF,r14)
	mov 0x18,r0
	mov.b r4,@(r0,r14)
	mov 0x19,r0
	mov.l @(0xA0,PC),r13 ; 8c036f7c ; 8c26823c
	mov.b r4,@(r0,r14)
	mov 0x1A,r0
	mov.b r4,@(r0,r14)
	mov 0x5C,r0
	mov.l @r13,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c036ef4
	bsr loc_8c036cc6
	mov 0x01,r4
	mov.l @(0x90,PC),r2 ; 8c036f80 ; 8c04185e
	jsr @r2
	nop

loc_8c036ef4:
	mov.l @(0x8C,PC),r3 ; 8c036f84 ; 8c04257c
	jsr @r3
	mov 0x39,r4
	mov.w @(0x78,PC),r0 ; 8c036f76 ; 4650
	mov.l @(0x8C,PC),r3 ; 8c036f8c ; 8c031bba
	mov.w r0,@(0x8,r14)
	mov 0x0A,r0
	mov.w r0,@(0xA,r14)
	mova @(0x80,PC),r0  ; 8c036f88 ; 42a00000; box size
	fmov @r0,fr4
	mov 0x10,r0
	fmov fr4,@(r0,r14)
	mov 0x14,r0
	jsr @r3
	fmov fr4,@(r0,r14)
	mov.l @r13,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c036f20
	mov 0x02,r0
	mov.b r0,@(0xD,r14)

loc_8c036f20:
	mov.l @r13,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8c036f48
	cmp/eq 0x01,r0
	bt loc_8c036f48
	cmp/eq 0x05,r0
	bt loc_8c036f48
	cmp/eq 0x02,r0
	bt loc_8c036f48
	cmp/eq 0x07,r0
	bt loc_8c036f48
	cmp/eq 0x03,r0
	bt loc_8c036f48
	cmp/eq 0x04,r0
	bt loc_8c036f48
	cmp/eq 0x06,r0
	bt loc_8c036f48
	cmp/eq 0x08,r0

loc_8c036f48:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c036f50:
	mov 0x00,r5
	mov.b r5,@r4
	mov r5,r0
	nop
	mov.b r0,@(0x6,r4)
	mov.b r0,@(0x7,r4)
	mov.l @(0x1C,PC),r4 ; 8c036f7c ; 8c26823c
	mov.w @(0x16,PC),r0 ; 8c036f78 ; 008d
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x5C,r0
	mov.l @r4,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c036f72
	bra loc_8c036cc6
	mov 0x00,r4

loc_8c036f72:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x4650
	#data 0x008d
	#align4
	#data 0x8c26823c
	#data bank04.loc_8c04185e
	#data bank04.loc_8c04257c
	#data 0x42a00000
	#data loc_8c031bba

;==============================================
;Pause Check
loc_8c036f90:
	mov.l r14,@-r15
	mov 0x00,r5
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0xDC,PC),r14
	bsr loc_8c036d0c
	mov r14,r4
	mov 0x01,r5
	bsr loc_8c036d0c
	mov r14,r4
	mov.b @r14,r3
	tst r3,r3
	bf.s loc_8c036ff6
	mov 0x00,r13
	mov r14,r4
	add 0x06,r4
	mov.b @r4,r0
	cmp/eq 0x01,r0
	bt loc_8c037034
	mov.b @(0x1,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c037034
	mov.b @(0x6,r14),r0
	cmp/eq 0x02,r0
	bf.s loc_8c036fda
	mov 0x02,r12
	mov 0x01,r2
	mov.b r2,@r14
	mov r12,r0
	nop
	mov.b r0,@(0x6,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	bsr loc_8c036eb8
	mov r14,r4

loc_8c036fda:
	mov.b @(0x7,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c037064
	mov.b r12,@r14
	mov r13,r0
	nop
	mov.b r0,@(0x6,r14)
	mov r12,r0
	nop
	mov.b r0,@(0x7,r14)
	bsr loc_8c036eb8
	mov r14,r4
	bra loc_8c037064
	nop

loc_8c036ff6:
	mov.b @r14,r0
	tst 0x04,r0
	bt loc_8c037024
	mov r14,r4
	add 0x06,r4
	mov.b @r4,r0
	cmp/eq 0x01,r0
	bt loc_8c037064
	mov.b @(0x1,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c037064
	mov.b @r14,r0
	mov 0x01,r5
	mov.l @(0x68,PC),r3
	and 0x03,r0
	mov.b r0,@r14
	mov.w @(0x5A,PC),r0
	mov.l @r3,r2
	mov.b r13,@(r0,r2)
	bsr loc_8c036e00
	mov r14,r4
	bra loc_8c037064
	nop

loc_8c037024:
	mov r14,r4
	add 0x06,r4
	mov.b @r4,r0
	cmp/eq 0x01,r0
	bt loc_8c037034
	mov.b @(0x1,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c037044

loc_8c037034:
	mov.b @r14,r0
	mov 0x00,r5
	or 0x04,r0
	mov.b r0,@r14
	bsr loc_8c036e00
	mov r14,r4
	bra loc_8c037064
	nop

loc_8c037044:
	mov.b @r14,r0
	cmp/eq 0x01,r0
	bf.s loc_8c037052
	mov r0,r4
	mov.b @(0x6,r14),r0
	tst r0,r0
	bt loc_8c037060

loc_8c037052:
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c037064
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c037064

loc_8c037060:
	bsr loc_8c036f50
	mov r14,r4

loc_8c037064:
	mov.l @(0x18,PC),r4
	mov.l @r4,r0
	mov.l @(0x30,r0),r0
	mov.l @r0,r3
	tst r3,r3
	bt loc_8c037084
	bra loc_8c037086
	mov 0x01,r0

;##############################################
	#data 0x008d
	#align4
	#data 0x8c212c9c
	#data 0x8c26823c
	#data 0x8c212be0

;----------------------------------------------
loc_8c037084:
	mov 0x00,r0

loc_8c037086:
	mov.b r0,@(0x4,r14)
	mov.l @(0x4,r4),r0
	mov.l @(0x30,r0),r0
	mov.l @r0,r3
	tst r3,r3
	bt loc_8c037096
	bra loc_8c037098
	mov 0x01,r0

loc_8c037096:
	mov 0x00,r0

loc_8c037098:
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0370a4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l @(0xD0,PC),r14
	sts.l pr,@-r15
	mov.b r13,@r14
	mov r13,r0
	nop
	mov.b r0,@(0x1,r14)
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0xC,r14)
	mov.b r0,@(0xD,r14)
	mov.b r0,@(0xF,r14)
	mov.b r0,@(0xE,r14)
	mov 0x18,r0
	mov.b r13,@(r0,r14)
	mov 0x19,r0
	mov.b r13,@(r0,r14)
	mov 0x1A,r0
	mov.b r13,@(r0,r14)
	bsr loc_8c036cc6
	mov r13,r4
	mov.w @(0xA0,PC),r0
	mov.w r0,@(0x8,r14)
	mov 0x0A,r0
	mov.w r0,@(0xA,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr4
	mov 0x10,r0
	fmov fr4,@(r0,r14)
	mov 0x14,r0
	fmov fr4,@(r0,r14)
	mov r13,r0
	nop
	mov.l @(0x98,PC),r6
	mov.b r0,@(0x4,r14)
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	mov.l @r6,r4
	mov.l @(0x14,r4),r0
	cmp/eq 0x60,r0
	bf loc_8c03716e
	mov 0x4C,r0
	mov.b @(r0,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_8c03712a
	mov 0x02,r5
	cmp/eq 0x01,r0
	bt loc_8c037130
	cmp/eq 0x05,r0
	bt loc_8c037130
	cmp/eq 0x02,r0
	bt loc_8c037134
	cmp/eq 0x07,r0
	bt loc_8c037148
	cmp/eq 0x03,r0
	bt loc_8c03714e
	cmp/eq 0x04,r0
	bt loc_8c03714e
	cmp/eq 0x06,r0
	bt loc_8c03714e
	cmp/eq 0x08,r0
	bt loc_8c03714e
	bra loc_8c037154
	nop

loc_8c03712a:
	mov.w @(0x4A,PC),r0
	bra loc_8c03714a
	nop

loc_8c037130:
	bra loc_8c037152
	mov 0x03,r0

loc_8c037134:
	mov r5,r0
	nop
	mov.b r0,@(0xD,r14)
	mov 0x18,r1
	mov.l @r6,r0
	mov.l @(0x48,PC),r3
	mov.b @(r0,r1),r0
	mov.b r0,@(0x1,r14)
	bra loc_8c037154
	mov.b r13,@r3

loc_8c037148:
	mov 0x18,r0

loc_8c03714a:
	bra loc_8c037152
	mov.b @(r0,r4),r0

loc_8c03714e:
	mov r13,r0
	nop

loc_8c037152:
	mov.b r0,@(0x1,r14)

loc_8c037154:
	mov.b @(0x1,r14),r0
	mov 0x01,r4
	tst r4,r0
	bt loc_8c037162
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)

loc_8c037162:
	mov.b @(0x1,r14),r0
	tst r5,r0
	bt loc_8c03716e
	mov r4,r0
	nop
	mov.b r0,@(0x5,r14)

loc_8c03716e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x4650
	#data 0x0084
	#align4
	#data 0x8c212c9c
	#data 0x42a00000
	#data 0x8c26823c
	#data 0x8c212ce8

;==============================================
;internal pause render
;white border, green selector, window bg postion?, etc
;==============================================
loc_8c03718c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(0x1CC,PC),r13
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @r13,r3
	tst r3,r3
	bf loc_8c0371a4
	bra loc_8c037352
	nop

loc_8c0371a4:
	mov.b @(0x2,r13),r0
	mov.l @(0x1BC,PC),r14
	mov r0,r4
	extu.b r4,r5
	extu.b r4,r4
	add 0x60,r5
	tst r4,r4
	shll16 r5
	bt.s loc_8c0371be
	shll8 r5
	mova @(0x1AC,PC),r0
	bra loc_8c0371c2
	fmov @r0,fr4

loc_8c0371be:
	mova @(0x1AC,PC),r0
	fmov @r0,fr4

loc_8c0371c2:
	mov r14,r6
	add 0x40,r6
	mov r14,r4

loc_8c0371c8:
	mov 0x08,r0
	mov.l r5,@(0xC,r4)
	fmov fr4,@(r0,r4)
	add 0x10,r4
	cmp/hs r6,r4
	bf loc_8c0371c8
	mov.l @(0x198,PC),r11  ;8c127af0
	mov r14,r5
	jsr @r11
	mov 0x04,r4

	mov.w @(0xA,r13),r0
	add 0x40,r14
	mov.l @(0x194,PC),r12
	mov r14,r6
	neg r0,r0
	mov r14,r4
	add 0x0B,r0
	mov r14,r5
	lds r0,fpul
	mova @(0x184,PC),r0
	fmov @r0,fr2
	mov 0x10,r0
	fmov @(r0,r12),fr1
	add 0x20,r6
	float fpul,fr3
	add 0x10,r5
	add 0x30,r4
	fmov fr3,fr15
	fdiv fr2,fr15
	fmov @(r0,r13),fr3
	mova @(0x174,PC),r0
	fmul fr15,fr3
	fmov fr15,fr0
	fneg fr3
	fadd fr1,fr3
	fmov @r0,fr1
	mov 0x10,r0
	fadd fr1,fr3
	fmov fr3,@r6
	fmov fr3,@r14
	fmov @(r0,r12),fr3
	fmov @(r0,r13),fr2
	fmac fr0,fr2,fr3
	mova @(0x160,PC),r0
	fmov @r0,fr2
	mov 0x14,r0
	fadd fr2,fr3
	fmov fr3,@r4
	fmov fr3,@r5
	fmov @(r0,r13),fr3
	fmov @(r0,r12),fr0
	mova @(0x154,PC),r0
	fmul fr15,fr3
	fneg fr3
	fadd fr0,fr3
	fmov @r0,fr0
	mov 0x04,r0
	fadd fr0,fr3
	fmov fr15,fr0
	fmov fr3,@(r0,r5)
	mov r14,r5
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r13),fr1
	fmov @(r0,r12),fr3
	mova @(0x13C,PC),r0
	fmac fr0,fr1,fr3
	fmov @r0,fr1
	mov 0x04,r0
	fadd fr1,fr3
	fmov fr3,@(r0,r4)
	fmov fr3,@(r0,r6)
	jsr @r11
	mov r0,r4

;Blue BG X pos
	mova @(0x12C,PC),r0 ;8c03738c
	fmov fr15,fr0
	fmov @r0,fr4
	mov 0x10,r0
	fmov @(r0,r13),fr3
	add 0x40,r14
	fmov @(r0,r12),fr2
	mov r14,r4
	fmul fr15,fr3
	add 0x20,r4
	mov r14,r6
	mov r14,r5
	add 0x30,r5
	add 0x10,r6
	fneg fr3
	fadd fr2,fr3
	fadd fr4,fr3
	fmov fr3,@r4
	fmov fr3,@r14
	fmov @(r0,r12),fr3
	fmov @(r0,r13),fr2

;Blue BG Y pos
	mova @(0x108,PC),r0 ;8c037390
	fmac fr0,fr2,fr3
	fadd fr4,fr3
	fmov fr3,@r5
	fmov fr3,@r6
	fmov @r0,fr4
	mov 0x14,r0
	fmov @(r0,r13),fr3
	fmov @(r0,r12),fr2
	fmul fr15,fr3
	fneg fr3
	fadd fr2,fr3
	mov 0x04,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r6)
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r13),fr2
	fmov @(r0,r12),fr3
	mov 0x04,r0
	fmac fr0,fr2,fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r5)
	mov r14,r5
	fmov fr3,@(r0,r4)
	jsr @r11
	mov r0,r4

	mov.w @(0xA,r13),r0
	tst r0,r0
	bf loc_8c037352
	mov.b @(0xC,r13),r0
	tst r0,r0
	bt loc_8c037352
	mov.b @(0xF,r13),r0
	add 0x40,r14
	mov.l @(0xC4,PC),r3
	mov r14,r6
	mov r0,r4
	shll2 r4
	shll r4
	mov r14,r7
	add r3,r4
	mov r14,r5
	mov.b @r4,r2
	mova @(0xB8,PC),r0
	fmov @r0,fr4
	mov 0x10,r0
	extu.b r2,r2
	fmov @(r0,r12),fr2
	lds r2,fpul
	mova @(0xB0,PC),r0
	fmov fr4,fr0
	add 0x20,r6
	add 0x10,r7
	float fpul,fr3
	add 0x30,r5
	fmac fr0,fr3,fr2
	fmov @r0,fr3
	fadd fr3,fr2
	fmov fr2,@r6
	fmov fr2,@r14
	mov.b @(0x2,r4),r0
	extu.b r0,r2
	lds r2,fpul
	float fpul,fr2
	mov 0x10,r0
	fmov @(r0,r12),fr1
	mova @(0x90,PC),r0
	fmac fr0,fr2,fr1
	fmov @r0,fr2
	fadd fr2,fr1
	fmov fr1,@r5
	fmov fr1,@r7
	mov.b @(0x1,r4),r0
	extu.b r0,r2
	lds r2,fpul
	mov 0x14,r0
	fmov @(r0,r12),fr3
	mova @(0x80,PC),r0
	float fpul,fr1
	fmac fr0,fr1,fr3
	fmov @r0,fr1
	mov 0x04,r0
	fadd fr1,fr3
	fmov fr3,@(r0,r7)
	fmov fr3,@(r0,r14)
	mov.b @(0x1,r4),r0
	extu.b r0,r2
	lds r2,fpul
	mov 0x14,r0
	fmov @(r0,r12),fr2
	mova @(0x68,PC),r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov @r0,fr3
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov r14,r5
	fmov fr2,@(r0,r6)
	jsr @r11
	mov r0,r4

loc_8c037352:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c212c9c
	#data bank14.loc_8c14d250
	#data 0x3f4ccccd
	#data 0x3f7d70a4
	#data bank12.loc_8c127af0
	#data 0x41200000
	#data 0x8c212bfc
	#data 0x439e0000
	#data 0x43a20000
	#data 0x436c0000
	#data 0x43740000
	#data 0x43a00000
	#data 0x43700000
	#data bank13.loc_8c136694
	#data 0x40800000
	#data 0xc0800000
	#data 0x41000000
	#data 0xc0000000
	#data 0x41880000

;==============================================
loc_8c0373ac:
	sts.l pr,@-r15
	bsr loc_8c03718c
	nop
	mov.l @(0x70,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c0373cc
	mov.l @(0x6C,PC),r3
	mov 0x0D,r4
	mov.w @(0x5E,PC),r0
	mov.l @r3,r5
	mov.l @(0x68,PC),r2
	mov.b @(r0,r5),r5
	add 0x0D,r5
	jmp @r2
	lds.l @r15+,pr

loc_8c0373cc:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0373d2:
	mov.l @(0x54,PC),r2
	mov 0x01,r5
	mov.w @(0x48,PC),r0
	mov.l @r2,r3
	mov.b r5,@(r0,r3)
	mov.b @(0xC,r4),r0
	tst r0,r0
	bf loc_8c0373fc
	mov.w @(0xA,r4),r0
	tst r0,r0
	bt loc_8c0373ee
	mov.w @(0xA,r4),r0
	bra loc_8c0373f8
	add 0xFF,r0

loc_8c0373ee:
	mov.b @(0xC,r4),r0
	add 0x01,r0
	mov.b r0,@(0xC,r4)
	mov r5,r0
	nop

loc_8c0373f8:
	bra loc_8c037418
	mov.w r0,@(0xA,r4)

loc_8c0373fc:
	mov.w @(0x8,r4),r0
	tst r0,r0
	bt loc_8c03740a
	mov.w @(0x8,r4),r0
	add 0xFF,r0
	bra loc_8c037418
	mov.w r0,@(0x8,r4)

loc_8c03740a:
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	cmp/eq 0x60,r0
	bt loc_8c037418
	mov.b @(0x2,r4),r0
	add 0x01,r0
	mov.b r0,@(0x2,r4)

loc_8c037418:
	mov.l @(0x18,PC),r3
	mov.l @(0x14,PC),r4
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00b1
	#data 0x008d
	#align4
	#data 0x8c212ca8
	#data 0x8c26823c
	#data loc_8c0312d6
	#data loc_8c0373ac
	#data loc_8c0395ac

;==============================================
loc_8c037438:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov 0x03,r11
	mov.l r10,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x118,PC),r10
	mov.l @(0x114,PC),r13

loc_8c037450:
	mov.l @(0x4,r13),r3
	mov.l r3,@-r15
	mov.b @(0x3,r13),r0
	mov r0,r6
	mov.b @(0x1,r13),r0
	mov r0,r5
	jsr @r10
	mov.b @r13,r4
	add 0x04,r15
	dt r11
	bf.s loc_8c037450

	add 0x08,r13
	mov r12,r5
	mov r12,r3
	shll2 r5
	mov.l @(0xFC,PC),r13
	add r3,r5
	mov.b @(0xE,r14),r0
	shll2 r5
	mov.w @(0xE2,PC),r2
	add r13,r5
	mov r0,r4
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c037492
	mov r12,r5
	mov.b @(0xE,r14),r0
	add 0xFF,r0
	mov.b r0,@(0xE,r14)

loc_8c037492:
	shll2 r5
	mov r12,r3
	add r3,r5
	mov.w @(0xC2,PC),r2
	shll2 r5
	add r13,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c0374b2
	mov.b @(0xE,r14),r0
	add 0x01,r0
	mov.b r0,@(0xE,r14)

loc_8c0374b2:
	mov.b @(0xE,r14),r0
	mov.l @(0xB8,PC),r3
	mov r0,r1
	add 0x03,r1
	jsr @r3
	mov 0x03,r0
	mov.b r0,@(0xE,r14)
	exts.b r4,r4
	mov.b @(0xE,r14),r0
	mov.b r0,@(0xF,r14)
	mov.b @(0xE,r14),r0
	cmp/eq r0,r4
	bt loc_8c0374d2
	mov.l @(0xA4,PC),r2
	jsr @r2
	mov 0x01,r4

loc_8c0374d2:
	mov r12,r3
	shll2 r3
	mov r12,r2
	add r2,r3
	shll2 r3
	add r13,r3
	mov.w @(0x4,r3),r0
	mov.l @(0x94,PC),r3
	extu.w r0,r8
	jsr @r3
	mov r12,r4
	extu.w r0,r0
	tst r0,r8
	bt loc_8c037584
	mov.b @(0xE,r14),r0
	cmp/eq 0x00,r0
	bt.s loc_8c037502
	mov 0x01,r5
	cmp/eq 0x01,r0
	bt loc_8c03750a
	cmp/eq 0x02,r0
	bt loc_8c03753c
	bra loc_8c037548
	nop

loc_8c037502:
	bsr loc_8c036f50
	mov r14,r4
	bra loc_8c037548
	nop

loc_8c03750a:
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0xC,r14)
	mov.w @(0x46,PC),r0
	mov.w r0,@(0x8,r14)
	mov 0x0A,r0
	mov.w r0,@(0xA,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x10,r0
	fmov fr3,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov fr3,@(r0,r14)
	mov 0x19,r0
	mov.b r5,@(r0,r14)
	mov 0x1A,r0
	bsr loc_8c0379bc
	mov.b r4,@(r0,r14)
	bra loc_8c037548
	nop

loc_8c03753c:
	mov.b @(0xD,r14),r0
	add 0x01,r0
	mov.b r0,@(0xD,r14)
	mov r5,r0
	nop
	mov.b r0,@(0xE,r14)

loc_8c037548:
	lds.l @r15+,pr
	mov.l @(0x28,PC),r2
	mov 0x02,r4
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;##############################################
	#data 0x2000
	#data 0x1000
	#data 0x4650
	#align4
	#data bank13.loc_8c136694
	#data loc_8c0395c6
	#data 0x8c2681dc
	#data bank12.loc_8c1292d4
	#data bank04.loc_8c04257c
	#data bank01.loc_8c011a64
	#data 0x43480000
	#data 0x42c80000

;----------------------------------------------
loc_8c037584:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c037594:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov 0x03,r11
	mov.l r10,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x11C,PC),r10
	mov.l @(0x118,PC),r13

loc_8c0375ac:
	mov.l @(0x4,r13),r3
	mov.l r3,@-r15
	mov.b @(0x3,r13),r0
	mov r0,r6
	mov.b @(0x1,r13),r0
	mov r0,r5
	jsr @r10
	mov.b @r13,r4
	add 0x04,r15
	dt r11
	bf.s loc_8c0375ac
	add 0x08,r13
	mov r12,r5
	mov r12,r3
	shll2 r5
	mov.l @(0x100,PC),r13
	add r3,r5
	mov.b @(0xE,r14),r0
	shll2 r5
	mov.w @(0xE8,PC),r2
	add r13,r5
	mov r0,r4
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c0375ee
	mov r12,r5
	mov.b @(0xE,r14),r0
	add 0xFF,r0
	mov.b r0,@(0xE,r14)

loc_8c0375ee:
	shll2 r5
	mov r12,r3
	add r3,r5
	mov.w @(0xC8,PC),r2
	shll2 r5
	add r13,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c03760e
	mov.b @(0xE,r14),r0
	add 0x01,r0
	mov.b r0,@(0xE,r14)

loc_8c03760e:
	mov.b @(0xE,r14),r0
	add 0x02,r0
	cmp/pz r0
	bf loc_8c03761a
	bra loc_8c037624
	and 0x01,r0

loc_8c03761a:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c037624:
	mov.b r0,@(0xE,r14)
	exts.b r4,r4
	mov.b @(0xE,r14),r0
	add 0x04,r0
	mov.b r0,@(0xF,r14)
	mov.b @(0xE,r14),r0
	cmp/eq r0,r4
	bt loc_8c03763a
	mov.l @(0x98,PC),r2
	jsr @r2
	mov 0x01,r4

loc_8c03763a:
	mov r12,r3
	shll2 r3
	mov r12,r2
	add r2,r3
	shll2 r3
	add r13,r3
	mov.w @(0x4,r3),r0
	mov.l @(0x88,PC),r3
	extu.w r0,r8
	jsr @r3
	mov r12,r4
	extu.w r0,r0
	tst r0,r8
	bt loc_8c0376ae
	mov.b @(0xE,r14),r0
	mov.l @(0x7C,PC),r13
	tst r0,r0
	bf loc_8c03767a
	mov.l @r13,r3
	mov 0x50,r0
	mov 0x01,r2
	mov.b r2,@(r0,r3)
	mov.l @(0x74,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @r13,r2
	mov 0x4C,r0
	mov r2,r3
	mov.b @(r0,r3),r1
	mov 0x59,r0
	bra loc_8c03769a
	mov.b r1,@(r0,r2)

loc_8c03767a:
	mov 0x00,r0
	mov 0x02,r4
	mov.b r0,@(0xD,r14)
	mov r4,r0
	nop
	mov.b r0,@(0xE,r14)
	mov 0x4C,r1
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c03769a
	mov r4,r0
	nop
	mov.b r0,@(0xD,r14)
	mov 0x03,r0
	mov.b r0,@(0xE,r14)

loc_8c03769a:
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov 0x02,r4
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0376ae:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x2000
	#data 0x1000
	#align4
	#data bank13.loc_8c1366ac
	#data loc_8c0395c6
	#data 0x8c2681dc
	#data bank04.loc_8c04257c
	#data bank01.loc_8c011a64
	#data 0x8c26823c
	#data bank01.loc_8c010bbc


;==============================================
;Training Mode Pause
;==============================================
loc_8c0376e0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov 0x04,r11
	mov.l r10,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r10 ;8c0377f0 ; 8c0395c6
	mov.l @(0xF4,PC),r13 ;8c0377ec ; 8c1366c4

loc_8c0376f8:
	mov.l @(0x4,r13),r3
	mov.l r3,@-r15
	mov.b @(0x3,r13),r0
	mov r0,r6
	mov.b @(0x1,r13),r0
	mov r0,r5
	jsr @r10
	mov.b @r13,r4
	add 0x04,r15
	dt r11
	bf.s loc_8c0376f8
	add 0x08,r13
	mov r12,r5
	mov r12,r3
	shll2 r5
	mov.l @(0xDC,PC),r13 ;8c0377f4 ; 8c2681dc
	add r3,r5
	mov.b @(0xE,r14),r0
	shll2 r5
	mov.w @(0xC6,PC),r2 ;8c0377e8 ; 2000
	add r13,r5
	mov r0,r4
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c03773a
	mov r12,r5
	mov.b @(0xE,r14),r0
	add 0xFF,r0
	mov.b r0,@(0xE,r14)

loc_8c03773a:
	shll2 r5
	mov r12,r3
	add r3,r5
	mov.w @(0xA6,PC),r2 ;8c0377ea
	shll2 r5
	add r13,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c03775a
	mov.b @(0xE,r14),r0
	add 0x01,r0
	mov.b r0,@(0xE,r14)

loc_8c03775a:
	mov.b @(0xE,r14),r0
	add 0x04,r0
	cmp/pz r0
	bf loc_8c037766
	bra loc_8c037770
	and 0x03,r0

loc_8c037766:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c037770:
	mov.b r0,@(0xE,r14)
	exts.b r4,r4
	mov.b @(0xE,r14),r0
	add 0x06,r0
	mov.b r0,@(0xF,r14)
	mov.b @(0xE,r14),r0
	cmp/eq r0,r4
	bt loc_8c037786
	mov.l @(0x74,PC),r2  ;8c0377f8
	jsr @r2
	mov 0x01,r4

loc_8c037786:
	mov r12,r3
	shll2 r3
	mov r12,r2
	add r2,r3
	shll2 r3
	add r13,r3
	mov.w @(0x4,r3),r0
	mov.l @(0x64,PC),r3  ;8c0377fc
	extu.w r0,r8
	jsr @r3
	mov r12,r4
	extu.w r0,r0
	tst r0,r8
	bt loc_8c037854
	mov.b @(0xE,r14),r0
	mov 0x01,r5
	cmp/eq 0x00,r0
	bt.s loc_8c0377bc
	mov 0x00,r4
	cmp/eq 0x01,r0
	bt loc_8c0377c4
	cmp/eq 0x02,r0
	bt loc_8c037808
	cmp/eq 0x03,r0
	bt loc_8c037838
	bra loc_8c037840
	nop

loc_8c0377bc:
	bsr loc_8c036f50
	mov r14,r4
	bra loc_8c037840
	nop

loc_8c0377c4:
	mov.l @(0x38,PC),r6 ;  8c037800
	mov r5,r0
	nop
	mov.b r0,@(0xE,r6)
	mov.b r4,@r6
	mov r4,r0
	nop
	mov.l @(0x30,PC),r5 ;  8c037804
	mov 0x1B,r1
	mov.b r0,@(0x1,r6)
	add r14,r1
	mov.b r0,@(0x2,r6)
	mov.b @(0x6,r5),r0
	mov.b r0,@r1
	mov r4,r0
	nop
	bra loc_8c037840
	mov.b r0,@(0x6,r5)

;##############################################
	#data 0x2000
	#data 0x1000
	#align4
	#data bank13.loc_8c1366c4
	#data loc_8c0395c6
	#data 0x8c2681dc
	#data bank04.loc_8c04257c
	#data bank01.loc_8c011a64
	#data 0x8c212ccc
	#data 0x8c2895f0

;----------------------------------------------
loc_8c037808:
	mov r4,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0xC,r14)
	mov.w @(0xF8,PC),r0
	mov.w r0,@(0x8,r14)
	mov 0x0A,r0
	mov.w r0,@(0xA,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x10,r0
	fmov fr3,@(r0,r14)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov fr3,@(r0,r14)
	mov 0x19,r0
	mov.b r5,@(r0,r14)
	mov 0x1A,r0
	bsr loc_8c0379bc
	mov.b r4,@(r0,r14)
	bra loc_8c037840
	nop

loc_8c037838:
	mov r5,r0
	nop
	mov.b r0,@(0xD,r14)
	mov.b r0,@(0xE,r14)

loc_8c037840:
	lds.l @r15+,pr
	mov.l @(0xD8,PC),r2
	mov 0x02,r4
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c037854:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;Pause Menu "%d Player"
;r00 : 00000001 | r01 : 00008360 | r02 : 8c037864 | r03 : 00000000
;r04 : 8c212c9c | r05 : 00000001 | r06 : 00000002 | r07 : 8c2681f0
;r08 : 8c2681dc | r09 : 8c11d420 | r10 : 8c0274b0 | r11 : 8c2895f0
;r12 : 8c0395ac | r13 : 8c26823c | r14 : 8c26823c | r15 : 8c00f3d8

;8c14d350 Menu items

;8c037438 regular pause
;8c037594 quit

;8c0376e0 training pause

;training menu
;8c03813a training main helps with it's control
;8c0383dc Dummy
;8c038662 Training options
;8c038920 Exit
;8c038ada Character select

;8c212c9c; Menu Render and options

;==============================================
;Render
loc_8c037864:
	mov.l @(loc_8c037920,PC),r2 ; 8c26823c
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c037910,PC),r0 ; 008d
	mov 0x01,r4
	mov.l r13,@-r15
	mov.l r12,@-r15

	mov 0x00,r12 ; Controller ID start
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b r4,@(r0,r3)

	mov 0x18,r0 ; Box
	mov.b r12,@(r0,r14)
	mov.b @(0xC,r14),r0
	tst r0,r0
	bf loc_8c03789a

	mov.w @(0xA,r14),r0
	tst r0,r0
	bt loc_8c037892
	mov.w @(0xA,r14),r0
	add 0xFF,r0 ; Box Growth
	bra loc_8c037900
	mov.w r0,@(0xA,r14)

loc_8c037892:
	mov.b @(0xC,r14),r0
	add 0x01,r0
	bra loc_8c037900
	mov.b r0,@(0xC,r14)

loc_8c03789a:
	mov.b @r14,r0
	cmp/eq 0x01,r0
	bt.s loc_8c0378a4
	mov r12,r13
	mov r4,r13

loc_8c0378a4:
	mov r13,r2
	add 0x01,r2 ; Player number
	mov.l @(loc_8c037924,PC),r3 ; 8c1367c4 ; "%dP PAUSE"
	mov r13,r6
	mov.l r2,@-r15
	mov 0x2C,r5 ; Y postion
	mov.l @(loc_8c037928,PC),r2 ; 8c0395c6
	add 0x20,r6 ; handles color
	mov.l r3,@-r15
	jsr @r2
	mov 0x44,r4

	add 0x08,r15
	mov.b @(0xD,r14),r0
	mov r13,r5
	mov.l @(loc_8c03792c,PC),r1 ; 8c14d350 ;menu items
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4

	mov r13,r3
	shll2 r13
	mov.l @(loc_8c037930,PC),r0 ; 8c2681dc
	add r3,r13
	shll2 r13
	mov.w @(r0,r13),r2
	tst r2,r2
	bt loc_8c0378e4
	mov r12,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.w @(loc_8c03790e,PC),r0 ; 4650
	mov.w r0,@(0x8,r14)

loc_8c0378e4:
	mov.w @(0x8,r14),r0
	tst r0,r0
	bt loc_8c0378f2
	mov.w @(0x8,r14),r0
	add 0xFF,r0
	bra loc_8c037900
	mov.w r0,@(0x8,r14)

loc_8c0378f2:
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	cmp/eq 0x60,r0
	bt loc_8c037900
	mov.b @(0x2,r14),r0
	add 0x01,r0
	mov.b r0,@(0x2,r14)

loc_8c037900:
	lds.l @r15+,pr
	mov.l @(loc_8c037938,PC),r3 ; 8c0395ac
	mov.l @(loc_8c037934,PC),r4 ; 8c03718c
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03790e:
	#data 0x4650
	
loc_8c037910:
	#data 0x008d
	#align4

loc_8c037914:
	#data 0x43480000

loc_8c037918:
	#data 0x42c80000

loc_8c03791c:
	#data bank04.loc_8c04257c

loc_8c037920:
	#data 0x8c26823c

loc_8c037924:
	#data bank13.loc_8c1367c4

loc_8c037928:
	#data loc_8c0395c6

loc_8c03792c:
	#data bank14.loc_8c14d350

loc_8c037930:
	#data 0x8c2681dc

loc_8c037934:
	#data loc_8c03718c

loc_8c037938:
	#data loc_8c0395ac

;==============================================
loc_8c03793c:
	mov.l @(0x24C,PC),r4
	mov 0x00,r5
	mov.l r13,@-r15
	mov r5,r0
	nop
	mov.l @(0x248,PC),r13
	mov r0,r6
	mov 0x02,r1
	mov.b r0,@(0x6,r4)

loc_8c03794e:
	mov r6,r5
	shll2 r5
	shll2 r5
	mov r6,r7
	add r13,r5
	mov r4,r2
	mov.b @(0x2,r5),r0
	shll r7
	add 0x20,r2
	shad r6,r0
	mov r0,r3
	mov.b @(0x6,r4),r0
	or r3,r0
	mov r4,r3
	mov.b r0,@(0x6,r4)
	add 0x08,r3
	mov.b @(0x3,r5),r0
	add r6,r3
	mov.b r0,@r3
	mov r6,r3
	add r3,r7
	mov.b @(0x4,r5),r0
	shll2 r7
	mov r4,r3
	add r7,r2
	mov.w r0,@r2
	add 0x20,r3
	mov.b @(0x5,r5),r0
	add r7,r3
	mov.w r0,@(0x2,r3)
	mov r4,r3
	add 0x20,r3
	mov.b @(0x6,r5),r0
	add r7,r3
	add 0x01,r6
	mov.w r0,@(0x4,r3)
	mov r4,r3
	mov.b @(0x7,r5),r0
	add 0x20,r3
	add r7,r3
	cmp/ge r1,r6
	mov.w r0,@(0x6,r3)
	mov r4,r3
	mov.b @(0x8,r5),r0
	add 0x20,r3
	add r7,r3
	mov.w r0,@(0x8,r3)
	mov r4,r3
	mov.b @(0x9,r5),r0
	add 0x20,r3
	add r3,r7
	bf.s loc_8c03794e
	mov.w r0,@(0xA,r7)
	rts
	mov.l @r15+,r13

;==============================================
loc_8c0379bc:
	mov.l r12,@-r15
	mov 0x00,r1
	mov.l @(0x1CC,PC),r12
	mov r1,r6
	mov.l @(0x1C4,PC),r5
	mov 0x02,r2

loc_8c0379c8:
	mov r6,r4
	shll2 r4
	shll2 r4
	add r12,r4
	mov.b r1,@r4
	mov r6,r0
	nop
	mov.b r0,@(0x1,r4)
	neg r6,r3
	mov.b @(0x6,r5),r0
	shad r3,r0
	and 0x01,r0
	mov.b r0,@(0x2,r4)
	mov r5,r0
	nop
	mov r6,r7
	add 0x08,r0
	mov r6,r3
	shll r7
	mov.b @(r0,r6),r0
	add r3,r7
	shll2 r7
	mov.b r0,@(0x3,r4)
	mov r5,r0
	nop
	add 0x20,r0
	mov.b @(r0,r7),r0
	mov.b r0,@(0x4,r4)
	mov r5,r0
	nop
	add 0x20,r0
	add r7,r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x5,r4)
	mov r5,r0
	nop
	add 0x20,r0
	add r7,r0
	mov.b @(0x4,r0),r0
	mov.b r0,@(0x6,r4)
	mov r5,r0
	nop
	add 0x20,r0
	add r7,r0
	mov.b @(0x6,r0),r0
	mov.b r0,@(0x7,r4)
	mov r5,r0
	nop
	add 0x20,r0
	add r7,r0
	mov.b @(0x8,r0),r0
	mov.b r0,@(0x8,r4)
	mov r5,r0
	nop
	add 0x20,r0
	add r7,r0
	add 0x01,r6
	mov.b @(0xA,r0),r0
	cmp/ge r2,r6
	bf.s loc_8c0379c8
	mov.b r0,@(0x9,r4)
	rts
	mov.l @r15+,r12

;==============================================
loc_8c037a46:
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
	add 0xFC,r15
	bsr loc_8c03718c
	nop
	mov.l @(0x12C,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c037b1a
	mova @(0x12C,PC),r0
	mov.l @(0x120,PC),r4
	mov.l @(0x124,PC),r13
	mov 0x00,r12
	mov r4,r11
	mov.l @(0x114,PC),r14
	mov r13,r10
	add 0x20,r4
	mov r13,r9
	mov r13,r8
	add 0x30,r8
	mov.l r4,@r15
	fmov @r0,fr12
	mova @(0x118,PC),r0
	fmov @r0,fr13
	mova @(0x118,PC),r0
	fmov @r0,fr14
	mova @(0x118,PC),r0
	fmov @r0,fr15
	add 0x20,r9
	add 0x10,r10

loc_8c037a96:
	mov r11,r4
	mov.b @(0xA,r4),r0
	mov.l @(0x110,PC),r3
	mov r0,r5
	shll2 r5
	shll r5
	fmov fr15,fr0
	add r3,r5
	mov.b @r5,r2
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mova @(0x100,PC),r0
	extu.b r2,r2
	add r12,r2
	lds r2,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov @r0,fr3
	fadd fr3,fr2
	fmov fr2,@r9
	fmov fr2,@r13
	mov.b @(0x2,r5),r0
	extu.b r0,r0
	add r12,r0
	lds r0,fpul
	mov 0x10,r0
	fmov @(r0,r14),fr1
	mova @(0xE4,PC),r0
	float fpul,fr2
	fmac fr0,fr2,fr1
	fmov @r0,fr2
	fadd fr2,fr1
	fmov fr1,@r8
	mov 0x14,r0
	fmov fr1,@r10
	mov r13,r5
	mov.b @r4,r2
	fmov @(r0,r14),fr3
	mov 0x04,r0
	add 0x0B,r2
	fmov fr14,fr0
	lds r2,fpul
	float fpul,fr1
	fmac fr0,fr1,fr3
	fadd fr12,fr3
	fmov fr3,@(r0,r10)
	fmov fr3,@(r0,r13)
	mov 0x14,r0
	mov.b @r4,r2
	fmov @(r0,r14),fr1
	mov 0x04,r0
	add 0x0B,r2
	lds r2,fpul
	mov.l @(0xB4,PC),r2
	float fpul,fr3
	fmac fr0,fr3,fr1
	fadd fr13,fr1
	fmov fr1,@(r0,r8)
	fmov fr1,@(r0,r9)
	jsr @r2
	mov r0,r4
	mov.l @r15,r3
	add 0x10,r11
	cmp/hs r3,r11
	bf.s loc_8c037a96
	add 0x35,r12

loc_8c037b1a:
	add 0x04,r15
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

;==============================================
loc_8c037b36:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	shll2 r14
	mov.l @(0x64,PC),r3
	shll r14
	mov.l @(0x70,PC),r11
	mov r6,r12
	cmp/pl r12
	mov.l r4,@r15
	add r3,r14
	bf.s loc_8c037b7e
	mov 0x00,r13

loc_8c037b58:
	mov.l @(0x4,r14),r3
	mov.l r3,@-r15
	mov.b @(0x3,r14),r0
	mov.l @(0x4,r15),r4
	mov r0,r6
	mov.b @(0x1,r14),r0
	mov.b @r14,r3
	mov r0,r5
	mov.b @(0x1,r4),r0
	mov 0x35,r4
	mulu.w r4,r0
	sts macl,r4
	jsr @r11
	add r3,r4
	add 0x04,r15
	add 0x01,r13
	cmp/ge r12,r13
	bf.s loc_8c037b58
	add 0x08,r14

loc_8c037b7e:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c212bfc
	#data 0x8c212ee4
	#data 0x8c212cb6
	#data bank14.loc_8c14d310
	#data 0xc0000000
	#data 0x41880000
	#data 0x41800000
	#data 0x40800000
	#data bank13.loc_8c136694
	#data 0xc0800000
	#data 0x41000000
	#data bank12.loc_8c127af0
	#data loc_8c0395c6

;==============================================
loc_8c037bc0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r14
	mov.l r4,@r15
	mov.b @(0x1,r14),r0
	mov 0x35,r4
	mov.l @(0x54,PC),r2
	mov 0x00,r10
	mov r0,r13
	exts.b r13,r3
	mulu.w r4,r13
	add 0x01,r3
	mov r13,r6
	mov.l @(0x3C,PC),r9
	add 0x20,r6
	mov.l @(0x34,PC),r8
	mov 0x28,r5
	sts macl,r4
	mov.l r3,@-r15
	mov.l @(0x34,PC),r11
	mov.l r2,@-r15
	jsr @r11
	add 0x1E,r4
	mov.b @(0x1,r14),r0
	mov.l @(0x34,PC),r1
	shll2 r0
	mov.w @(0x1C,PC),r2
	mov.l @(r0,r1),r3
	mov.l @(0x4,r3),r3
	tst r2,r3
	bt.s loc_8c037c38
	add 0x08,r15
	mov 0x0A,r5
	mov 0x08,r6
	bsr loc_8c037b36
	mov r14,r4
	mov 0x24,r5
	mov 0x02,r6
	bsr loc_8c037b36
	mov r14,r4
	bra loc_8c037c40
	nop

;##############################################
	#data 0x0101
	#align4
	#data bank04.loc_8c04257c
	#data 0x8c2681dc
	#data loc_8c0395c6
	#data bank13.loc_8c1367d0
	#data 0x8c212be0

;----------------------------------------------
loc_8c037c38:
	mov 0x0A,r6
	mov r6,r5
	bsr loc_8c037b36
	mov r14,r4

loc_8c037c40:
	mov.b @(0x1,r14),r0
	mov r9,r5
	mov.w @(0xB4,PC),r2
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	add r0,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c037c66
	mov.b @r14,r4
	mov.b @r14,r0
	add 0xFF,r0
	mov.b r0,@r14

loc_8c037c66:
	mov.b @(0x1,r14),r0
	mov r9,r5
	mov.w @(0x90,PC),r2
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	add r0,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c037c8a
	mov.b @r14,r0
	add 0x01,r0
	mov.b r0,@r14

loc_8c037c8a:
	mov.b @r14,r1
	mov.l @(0x70,PC),r3
	add 0x0A,r1
	jsr @r3
	mov 0x0A,r0
	exts.b r4,r4
	mov.b r0,@r14
	mov.b @r14,r2
	cmp/eq r2,r4
	bt loc_8c037ca2
	jsr @r8
	mov 0x01,r4

loc_8c037ca2:
	mov.b @r14,r0
	mov 0xFF,r4
	cmp/eq 0x00,r0
	bt.s loc_8c037cd4
	mov 0x02,r12
	cmp/eq 0x01,r0
	bt loc_8c037cd4
	cmp/eq 0x02,r0
	bt loc_8c037cd4
	cmp/eq 0x03,r0
	bt loc_8c037cd4
	cmp/eq 0x04,r0
	bt loc_8c037cd4
	cmp/eq 0x05,r0
	bt loc_8c037cd4
	cmp/eq 0x06,r0
	bt loc_8c037ce4
	cmp/eq 0x07,r0
	bt loc_8c037cf0
	cmp/eq 0x08,r0
	bt loc_8c037d04
	cmp/eq 0x09,r0
	bt loc_8c037d50
	bra loc_8c037d8a
	nop

loc_8c037cd4:
	mov r14,r3
	mov 0x14,r0
	add 0x04,r3
	mov.b r0,@(0xA,r14)
	mov.b @r14,r12
	mov 0x0C,r13
	bra loc_8c037d8a
	add r3,r12

loc_8c037ce4:
	mov r12,r13
	mov 0x20,r0
	mov r14,r12
	mov.b r0,@(0xA,r14)
	bra loc_8c037d8a
	add 0x02,r12

loc_8c037cf0:
	mov r12,r13
	mov 0x22,r0
	mov r14,r12
	mov.b r0,@(0xA,r14)
	bra loc_8c037d8a
	add 0x03,r12

;##############################################
loc_8c037cfc:
	#data 0x2000

loc_8c037cfe:
	#data 0x1000
	#align4

loc_8c037d00:
	#data bank12.loc_8c1292d4

;----------------------------------------------
loc_8c037d04:
	mov 0x12,r0
	mov r4,r13
	mov.b r0,@(0xA,r14)
	mov.b @(0x1,r14),r0
	mov r0,r3
	mov.b r0,@r15
	shll2 r0
	add r3,r0
	mov.l @(0x108,PC),r3
	shll2 r0
	add r9,r0
	mov.w @(0x4,r0),r0
	extu.w r0,r0
	mov.l r0,@-r15
	mov.b @(0x4,r15),r0
	jsr @r3
	mov r0,r4
	mov.l @r15+,r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c037d8a
	mov r10,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0x4,r14)
	mov 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r12,r0
	nop
	mov.b r0,@(0x6,r14)
	mov 0x03,r0
	mov.b r0,@(0x7,r14)
	mov 0x04,r0
	mov.b r0,@(0x8,r14)
	mov 0x05,r0
	bra loc_8c037d86
	mov.b r0,@(0x9,r14)

loc_8c037d50:
	mov 0x13,r0
	mov r4,r13
	mov.b r0,@(0xA,r14)
	mov.b @(0x1,r14),r0
	mov r0,r3
	mov.b r0,@(0x4,r15)
	shll2 r0
	add r3,r0
	mov.l @(0xBC,PC),r3
	shll2 r0
	add r9,r0
	mov.w @(0x4,r0),r0
	extu.w r0,r0
	mov.l r0,@-r15
	mov.b @(0x8,r15),r0
	jsr @r3
	mov r0,r4
	mov.l @r15+,r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c037d8a
	mov.l @r15,r1
	mov 0x19,r0
	mov.b r10,@(r0,r1)
	mov 0x1A,r0
	mov.l @r15,r3
	mov.b r10,@(r0,r3)

loc_8c037d86:
	jsr @r8
	mov 0x02,r4

loc_8c037d8a:
	cmp/pl r13
	bf loc_8c037e16
	mov.b @(0x1,r14),r0
	mov r9,r5
	mov.w @(0x84,PC),r2
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	add r0,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c037db4
	mov.b @r12,r4
	mov.b @r12,r0
	add 0xFF,r0
	mov.b r0,@r12

loc_8c037db4:
	mov.b @(0x1,r14),r0
	mov r9,r5
	mov.w @(0x60,PC),r2
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	add r0,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c037dd8
	mov.b @r12,r0
	add 0x01,r0
	mov.b r0,@r12

loc_8c037dd8:
	mov.b @r12,r1
	add r13,r1
	mov r13,r0
	nop
	mov.l @(0x40,PC),r3
	jsr @r3
	nop
	exts.b r4,r4
	mov.b r0,@r12
	mov.b @r12,r2
	cmp/eq r2,r4
	bt loc_8c037e0e
	bsr loc_8c03793c
	nop
	jsr @r8
	mov 0x04,r4
	mov.b @r14,r0
	cmp/eq 0x06,r0
	bf loc_8c037e0e
	mov.b @r12,r2
	tst r2,r2
	bt loc_8c037e0e
	mov.l @(0x20,PC),r3
	mov 0x08,r5
	mov.b @(0x1,r14),r0
	jsr @r3
	mov r0,r4

loc_8c037e0e:
	mov.b @(0xA,r14),r0
	mov.b @r12,r3
	add r3,r0
	mov.b r0,@(0xA,r14)

loc_8c037e16:
	bra loc_8c037e66
	mov r10,r13

;##############################################
	#data 0x0800
	#data 0x0400
	#align4
	#data bank01.loc_8c011a64
	#data bank12.loc_8c1292d4
	#data loc_8c031b48

;----------------------------------------------
loc_8c037e2c:
	mov r14,r12
	add 0x04,r12
	add r13,r12
	mov.l @(0x124,PC),r3
	mov.b @r12,r12
	mov 0x35,r4
	mov.w @(0x112,PC),r2
	mov r13,r5
	shll2 r12
	shll r12
	add r3,r12
	add r2,r12
	mov.l @(0x4,r12),r1
	shll2 r5
	mov.l r1,@-r15
	mov.b @(0x3,r12),r0
	mov r0,r6
	mov.b @(0x1,r12),r0
	add r13,r6
	mov r0,r1
	mov.b @(0x1,r14),r0
	add r1,r5
	mov.b @r12,r1
	mulu.w r4,r0
	sts macl,r4
	jsr @r11
	add r1,r4
	add 0x04,r15
	add 0x01,r13

loc_8c037e66:
	mov 0x06,r3
	cmp/ge r3,r13
	bf loc_8c037e2c
	mov.b @(0x2,r14),r0
	mov 0x35,r4
	mov.l @(0xE4,PC),r3
	mov r0,r13
	shll2 r13
	mov.w @(0xD6,PC),r2
	shll r13
	add r3,r13
	add r2,r13
	mov.l @(0x4,r13),r1
	mov.l r1,@-r15
	mov.b @(0x3,r13),r0
	mov.b @r13,r1
	mov r0,r6
	mov.b @(0x1,r13),r0
	mov r0,r5
	mov.b @(0x1,r14),r0
	mulu.w r4,r0
	sts macl,r4
	jsr @r11
	add r1,r4
	mov.b @(0x3,r14),r0
	mov 0x35,r4
	mov.l @(0xBC,PC),r3
	mov r0,r13
	shll2 r13
	mov.w @(0xAE,PC),r2
	shll r13
	add r3,r13
	add r2,r13
	mov.l @(0x4,r13),r1
	mov.l r1,@-r15
	mov.b @(0x3,r13),r0
	mov.b @r13,r1
	mov r0,r6
	mov.b @(0x1,r13),r0
	mov r0,r5
	mov.b @(0x1,r14),r0
	mulu.w r4,r0
	sts macl,r4
	jsr @r11
	add r1,r4
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

;==============================================
loc_8c037ed4:
	mov.l @(0x84,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x76,PC),r0
	mov 0x01,r4
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b r4,@(r0,r3)
	mov 0x18,r0
	mov.b r4,@(r0,r14)
	mov 0x1A,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c037f0c
	mov 0x00,r13
	mov.w @(0xA,r14),r0
	tst r0,r0
	bt loc_8c037f02
	mov.w @(0xA,r14),r0
	add 0xFF,r0
	bra loc_8c037f82
	mov.w r0,@(0xA,r14)

loc_8c037f02:
	mov 0x1A,r0
	mov.b @(r0,r14),r1
	add 0x01,r1
	bra loc_8c037f82
	mov.b r1,@(r0,r14)

loc_8c037f0c:
	mov.l @(0x50,PC),r3
	mov 0x22,r5
	mov.l @(0x50,PC),r2
	mov 0x33,r6
	mov.l r3,@-r15
	jsr @r2
	mov 0x3C,r4
	add 0x04,r15
	mov.l @(0x48,PC),r5
	bsr loc_8c037bc0
	mov r14,r4
	mov.l @(0x48,PC),r5
	bsr loc_8c037bc0
	mov r14,r4
	mov.l @(0x44,PC),r4
	mov.w @r4,r3
	tst r3,r3
	bf loc_8c037f36
	mov.w @(0x14,r4),r0
	tst r0,r0
	bt loc_8c037f40

loc_8c037f36:
	mov r13,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.w @(0x16,PC),r0
	mov.w r0,@(0x8,r14)

loc_8c037f40:
	mov.w @(0x8,r14),r0
	tst r0,r0
	bt loc_8c037f74
	mov.w @(0x8,r14),r0
	add 0xFF,r0
	bra loc_8c037f82
	mov.w r0,@(0x8,r14)

;##############################################
	#data 0x00a0
	#data 0x0100
	#data 0x0110
	#data 0x008d
	#data 0x4650
	#align4
	#data bank13.loc_8c136694
	#data 0x8c26823c
	#data bank13.loc_8c1367e8
	#data loc_8c0395c6
	#data 0x8c212ee4
	#data 0x8c212ef4
	#data 0x8c2681dc

;----------------------------------------------
loc_8c037f74:
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	cmp/eq 0x60,r0
	bt loc_8c037f82
	mov.b @(0x2,r14),r0
	add 0x01,r0
	mov.b r0,@(0x2,r14)

loc_8c037f82:
	mov.l @(0x12C,PC),r3
	mov.l @(0x124,PC),r4
	jsr @r3
	nop
	mov 0x19,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c037fb8
	mov r13,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0xC,r14)
	mov.w @(0xF8,PC),r0
	mov.w r0,@(0x8,r14)
	mov 0x0A,r0
	mov.w r0,@(0xA,r14)
	mova @(0x10C,PC),r0
	fmov @r0,fr4
	mov 0x10,r0
	fmov fr4,@(r0,r14)
	mov 0x14,r0
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c03793c
	mov.l @r15+,r14

loc_8c037fb8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c037fc0:
	mov.l @(0xF4,PC),r5
	mov 0x00,r0
	mov.w @(0xD2,PC),r1
	mov.b r0,@(0xE,r4)
	mov.l @r5,r3
	mov.b @(0x6,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(0xC8,PC),r1
	mov.l @r5,r3
	mov.b @(0x7,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(0xC0,PC),r1
	mov.l @r5,r3
	mov.b @(0x8,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(0xB8,PC),r1
	mov.l @r5,r3
	mov.b @(0xD,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(0xB0,PC),r1
	mov.l @r5,r3
	mov.b @(0xA,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x1B,r1
	mov.l @r5,r3
	mov.b @(0xB,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(0x9E,PC),r1
	mov.l @r5,r3
	mov.b @(0xC,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(0x96,PC),r1
	mov.l @r5,r3
	mov.b @(0x9,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x19,r0
	mov.b @(r0,r4),r2
	mov.w @(0x8A,PC),r0
	mov.l @r5,r3
	mov.l @(0x9C,PC),r4
	mov.b r2,@(r0,r3)
	mov.l @(0x9C,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c038028:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x90,PC),r14
	mov r13,r0
	nop
	mov.b r0,@(0xE,r14)
	mov 0x01,r12
	mov.b r0,@(0xF,r14)
	mov.b r0,@r14
	mov.b r0,@(0x1,r14)
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0x4,r14)
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x8,r14)
	mov.b r0,@(0x9,r14)
	mov 0x19,r0
	mov.b r13,@(r0,r14)
	mov r12,r0
	nop
	mov.b r0,@(0xA,r14)
	mov.b r0,@(0xB,r14)
	mov.b r0,@(0xC,r14)
	mov r13,r0
	nop
	mov.b r0,@(0xD,r14)
	bsr loc_8c037fc0
	mov r14,r4
	mov.l @(0x4C,PC),r4
	mov 0x4C,r1
	mov.w @(0x38,PC),r0
	mov.l @r4,r2
	mov.b r13,@(r0,r2)
	mov.l @r4,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c03808a
	mov.w @(0x2A,PC),r0
	mov 0x18,r1
	mov.l @r4,r2
	mov.b r12,@(r0,r2)
	mov.l @r4,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0xF,r14)

loc_8c03808a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c038094:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x4650
	#data 0x00a7
	#data 0x00a8
	#data 0x00a9
	#data 0x00aa
	#data 0x0083
	#data 0x0089
	#data 0x00ae
	#data 0x00ac
	#data 0x00a6
	#align4
	#data loc_8c037a46
	#data loc_8c0395ac
	#data 0x42a00000
	#data 0x8c26823c
	#data 0x8c2895f0
	#data bank04.loc_8c046a2a
	#data 0x8c212ccc

;==============================================
loc_8c0380c8:
	mov.l @(0xE4,PC),r4
	mov 0x00,r5
	sts.l pr,@-r15
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.b r0,@(0x2,r3)
	mov 0x01,r2
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov.b r0,@(0x4,r3)
	mov.l @r4,r3
	mov.b r0,@(0x5,r3)
	mov.l @r4,r3
	mov.b r0,@(0x6,r3)
	mov.l @r4,r3
	mov.b r0,@(0x7,r3)
	mov.w @(0xBC,PC),r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	add 0x01,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov.l @(0xB4,PC),r3
	jsr @r3
	nop
	mov.l @(0xB0,PC),r4
	bsr loc_8c037fc0
	nop
	mov.l @(0xB4,PC),r3
	mov.l @(0xAC,PC),r4
	jsr @r3
	nop
	mov.l @(0xB4,PC),r2
	mov.l @(0xAC,PC),r4
	jsr @r2
	nop
	mov.l @(0xB0,PC),r3
	jsr @r3
	nop
	mov.l @(0xAC,PC),r2
	jsr @r2
	nop
	mov.l @(0xAC,PC),r3
	jsr @r3
	nop
	mov.l @(0xA8,PC),r2
	jsr @r2
	nop
	mov.l @(0xA8,PC),r3
	mov 0x0C,r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c03813a:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov r4,r0
	nop
	add 0x1A,r0
	mov.b @r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c03816e
	mov 0x00,r13
	cmp/eq 0x01,r0
	bt loc_8c038190
	cmp/eq 0x02,r0
	bt loc_8c0381e8
	cmp/eq 0x03,r0
	bf loc_8c03816a
	bra loc_8c0382da
	nop

loc_8c03816a:
	bra loc_8c0383cc
	nop

loc_8c03816e:
	mov r14,r3
	add 0x1A,r3
	mov.b @r3,r2
	mov 0x00,r6
	mov.l @(0x4C,PC),r4
	mov 0x0A,r5
	add 0x01,r2
	mov.b r2,@r3
	lds.l @r15+,pr
	mov.l @(0x5C,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c038190:
	mov.l @(0x50,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c03819e
	bra loc_8c0383cc
	nop

loc_8c03819e:
	mov r14,r3
	add 0x1A,r3
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	bra loc_8c0383cc
	nop

;##############################################
	#data 0x008d
	#align4
	#data 0x8c26823c
	#data bank04.loc_8c044d8c
	#data 0x8c212ccc
	#data 0x8c212c9c
	#data loc_8c036f50
	#data 0xff000000
	#data bank02.loc_8c02dc1c
	#data bank04.loc_8c04182e
	#data bank04.loc_8c04185e
	#data bank04.loc_8c041ecc
	#data bank02.loc_8c027ada
	#data bank02.loc_8c027b64
	#data loc_8c0355b2
	#data loc_8c03563a

;----------------------------------------------
loc_8c0381e8:
	mov r12,r5
	mov r12,r3
	shll2 r5
	mov.l @(0x118,PC),r11
	add r3,r5
	mov.b @(0x1,r14),r0
	shll2 r5
	mov.w @(0x108,PC),r2
	add r11,r5
	mov r0,r4
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c038212
	mov r12,r5
	mov.b @(0x1,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r14)

loc_8c038212:
	shll2 r5
	mov r12,r3
	add r3,r5
	mov.w @(0xE8,PC),r2
	shll2 r5
	add r11,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c038232
	mov.b @(0x1,r14),r0
	add 0x01,r0
	mov.b r0,@(0x1,r14)

loc_8c038232:
	mov.b @(0x1,r14),r0
	mov.l @(0xD4,PC),r3
	mov r0,r1
	add 0x05,r1
	jsr @r3
	mov 0x05,r0
	mov.b r0,@(0x1,r14)
	exts.b r4,r4
	mov.b @(0x1,r14),r0
	mov.l @(0xC8,PC),r10
	cmp/eq r0,r4
	bt loc_8c03824e
	jsr @r10
	mov 0x01,r4

loc_8c03824e:
	mov r12,r2
	shll2 r2
	mov r12,r3
	add r3,r2
	shll2 r2
	mov.l @(0xB8,PC),r3
	add r11,r2
	mov.w @(0x4,r2),r0
	extu.w r0,r8
	jsr @r3
	mov r12,r4
	extu.w r0,r0
	tst r0,r8
	bt loc_8c0382a4
	mov r14,r2
	add 0x1A,r2
	mov.b @r2,r3
	mov 0x1B,r1
	add r14,r1
	add 0x01,r3
	mov.b r3,@r2
	mov.b @(0x1,r14),r0
	mov.b r0,@r1
	jsr @r10
	mov 0x02,r4
	mov 0x1B,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c03828c
	bra loc_8c0383cc
	nop

loc_8c03828c:
	lds.l @r15+,pr
	mov.l @(0x8C,PC),r3
	mov 0x01,r6
	mov.l @(0x84,PC),r4
	mov 0x0A,r5
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0382a4:
	mov r12,r0
	nop
	shll2 r0
	mov r12,r3
	add r3,r0
	shll2 r0
	add r11,r0
	mov.w @(0x4,r0),r0
	extu.w r0,r0
	tst 0x20,r0
	bf loc_8c0382be
	bra loc_8c0383cc
	nop

loc_8c0382be:
	mov 0x1C,r0
	mov.b r13,@(r0,r14)
	bsr loc_8c037fc0
	mov r14,r4
	mov r14,r4
	add 0x1A,r4
	mov r13,r0
	nop
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	jsr @r10
	mov 0x03,r4
	bra loc_8c0383cc
	nop

loc_8c0382da:
	mov.l @(0x44,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c0383cc
	mov 0x1B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x00,r0
	bt.s loc_8c038324
	mov 0x03,r12
	cmp/eq 0x01,r0
	bt loc_8c038342
	cmp/eq 0x02,r0
	bt loc_8c038362
	cmp/eq 0x03,r0
	bt loc_8c03837a
	cmp/eq 0x04,r0
	bt loc_8c0383a4
	bra loc_8c0383c0
	nop

;##############################################
	#data 0x2000
	#data 0x1000
	#align4
	#data 0x8c2681dc
	#data bank12.loc_8c1292d4
	#data bank04.loc_8c04257c
	#data bank01.loc_8c011a64
	#data 0xff000000
	#data loc_8c0355b2
	#data loc_8c03563a

;----------------------------------------------
loc_8c038324:
	mov 0x1C,r0
	mov.b r13,@(r0,r14)
	bsr loc_8c037fc0
	mov r14,r4
	mov r14,r4
	add 0x1A,r4
	mov r13,r0
	nop
	mov.l @(0x114,PC),r2
	mov.l @(0x118,PC),r1
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov.b @r2,r3
	bra loc_8c0383c0
	mov.b r3,@r1

loc_8c038342:
	mov 0x1C,r0
	mov.b r12,@(r0,r14)
	mov.b @(0x1,r14),r0
	mov.b r0,@r14
	mov.b @(0x4,r14),r0
	mov.b r0,@(0x2,r14)
	mov r13,r0
	nop
	mov.l @(0x100,PC),r3
	jsr @r3
	mov.b r0,@(0x3,r14)
	mov.l @(0xFC,PC),r2
	jsr @r2
	nop
	bra loc_8c0383c0
	nop

loc_8c038362:
	mov.l @(0xF8,PC),r2
	jsr @r2
	nop
	mov 0x1C,r0
	mov.b r12,@(r0,r14)
	mov.b @(0x1,r14),r0
	mov.b r0,@r14
	mov r13,r0
	nop
	mov.b r0,@(0x2,r14)
	bra loc_8c0383c0
	mov.b r0,@(0x3,r14)

loc_8c03837a:
	mov.l @(0xE4,PC),r4
	mov.w @(0xCA,PC),r0
	mov.l @r4,r2
	mov.b r13,@(r0,r2)
	mov 0x18,r0
	mov.l @r4,r3
	mov r3,r2
	mov.b @(r0,r2),r1
	add 0x6D,r0
	mov.b r1,@(r0,r3)
	mov 0x18,r0
	mov.l @r4,r3
	mov r3,r2
	mov.b @(r0,r2),r1
	add 0x74,r0
	mov.b r1,@(r0,r3)
	mov 0x1C,r0
	bsr loc_8c0380c8
	mov.b r13,@(r0,r14)
	bra loc_8c0383c0
	nop

loc_8c0383a4:
	mov 0x01,r0
	mov.b r12,@r14
	mov.b r0,@(0x2,r14)
	mov r13,r0
	nop
	mov.l @(0xB4,PC),r2
	mov 0x05,r3
	mov.b r0,@(0x3,r14)
	mov 0x1C,r0
	jsr @r2
	mov.b r3,@(r0,r14)
	mov.l @(0xAC,PC),r1
	jsr @r1
	nop

loc_8c0383c0:
	mov r14,r4
	add 0x1A,r4
	mov r13,r0
	nop
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4

loc_8c0383cc:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0383dc:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x78,PC),r8
	mov.l @(0x7C,PC),r10
	mov.l @(0x68,PC),r12
	mov r4,r0
	nop
	add 0x1A,r0
	mov.b @r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c038418
	mov r5,r11
	cmp/eq 0x01,r0
	bt loc_8c03842e
	cmp/eq 0x02,r0
	bt loc_8c038478
	cmp/eq 0x03,r0
	bf loc_8c038414
	bra loc_8c038580
	nop

loc_8c038414:
	bra loc_8c038650
	nop

loc_8c038418:
	mov r14,r3
	add 0x1A,r3
	mov.b @r3,r2
	mov 0x0A,r5
	mov 0x00,r6
	add 0x01,r2
	mov.b r2,@r3
	jsr @r10
	mov r8,r4
	bra loc_8c038650
	nop

loc_8c03842e:
	mov.l @(0x44,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c03843c
	bra loc_8c038650
	nop

loc_8c03843c:
	mov r14,r2
	add 0x1A,r2
	mov.b @r2,r3
	add 0x01,r3
	mov.b r3,@r2
	bra loc_8c038650
	nop

;##############################################
	#data 0x0084
	#align4
	#data 0x8c212cb7
	#data 0x8c2895f6
	#data bank02.loc_8c028934
	#data bank02.loc_8c028988
	#data bank02.loc_8c029290
	#data 0x8c26823c
	#data bank02.loc_8c028768
	#data bank02.loc_8c0287bc
	#data 0xff000000
	#data loc_8c0355b2
	#data loc_8c03563a

;----------------------------------------------
loc_8c038478:
	mov r11,r5
	mov r11,r3
	shll2 r5
	mov.l @(0x128,PC),r9
	add r3,r5
	mov.b @(0x2,r14),r0
	shll2 r5
	mov.w @(0x11A,PC),r2
	add r9,r5
	mov r0,r4
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c0384a2
	mov r11,r5
	mov.b @(0x2,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x2,r14)

loc_8c0384a2:
	shll2 r5
	mov r11,r3
	add r3,r5
	mov.w @(0xFA,PC),r2
	shll2 r5
	add r9,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c0384c2
	mov.b @(0x2,r14),r0
	add 0x01,r0
	mov.b r0,@(0x2,r14)

loc_8c0384c2:
	mov.b @(0x2,r14),r0
	add 0x04,r0
	cmp/pz r0
	bf loc_8c0384ce
	bra loc_8c0384d8
	and 0x03,r0

loc_8c0384ce:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c0384d8:
	mov.b r0,@(0x2,r14)
	exts.b r4,r4
	mov.b @(0x2,r14),r0
	cmp/eq r0,r4
	bt loc_8c0384e8
	mov.l @(0xC8,PC),r2
	jsr @r2
	mov 0x01,r4

loc_8c0384e8:
	mov r11,r3
	shll2 r3
	mov r11,r2
	add r2,r3
	shll2 r3
	add r9,r3
	mov.w @(0x4,r3),r0
	mov.l @(0xB8,PC),r3
	extu.w r0,r0
	mov.l r0,@-r15
	jsr @r3
	mov r11,r4
	mov.l @r15+,r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c038538
	mov r14,r1
	add 0x1A,r1
	mov.b @r1,r3
	mov 0x0A,r5
	mov 0x01,r6
	add 0x01,r3
	mov.b r3,@r1
	mov 0x1B,r1
	mov.b @(0x2,r14),r0
	add r14,r1
	mov.b r0,@r1
	jsr @r10
	mov r8,r4
	lds.l @r15+,pr
	mov.l @(0x84,PC),r3
	mov 0x02,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c038538:
	mov r11,r0
	nop
	shll2 r0
	mov r11,r3
	add r3,r0
	shll2 r0
	add r9,r0
	mov.w @(0x4,r0),r0
	extu.w r0,r0
	tst 0x20,r0
	bf loc_8c038552
	bra loc_8c038650
	nop

loc_8c038552:
	mov r14,r2
	add 0x1A,r2
	mov.b @r2,r3
	mov 0x1B,r0
	mov 0x0A,r5
	add 0x01,r3
	mov.b r3,@r2
	mov 0x03,r2
	mov 0x01,r6
	mov.b r2,@(r0,r14)
	jsr @r10
	mov r8,r4
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov 0x03,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c038580:
	mov.l @(0x30,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c038650
	mov 0x1B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x00,r0
	bt.s loc_8c0385b8
	mov 0x01,r4
	cmp/eq 0x01,r0
	bt loc_8c0385dc
	cmp/eq 0x02,r0
	bt loc_8c0385fe
	cmp/eq 0x03,r0
	bt loc_8c03863e
	bra loc_8c038644
	nop

;##############################################
	#data 0x2000
	#data 0x1000
	#align4
	#data 0x8c2681dc
	#data bank04.loc_8c04257c
	#data bank01.loc_8c011a64
	#data loc_8c03563a

;----------------------------------------------
loc_8c0385b8:
	mov.b @(0x4,r14),r0
	tst r0,r0
	bt loc_8c0385cc
	mov r13,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	bra loc_8c0385e4
	shad r11,r0

loc_8c0385cc:
	mov.l @(0x110,PC),r3
	mov 0x1C,r0
	mov 0x04,r4
	mov.b r4,@(r0,r14)
	jsr @r3
	mov.b r4,@r14
	bra loc_8c038644
	nop

loc_8c0385dc:
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov 0xFF,r0

loc_8c0385e4:
	mov.b r0,@(0xF,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)
	shad r11,r4
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x8,r14)
	mov 0x18,r0
	mov.l @r12,r3
	mov.b r4,@(r0,r3)
	bra loc_8c038618
	nop

loc_8c0385fe:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.b r0,@(0xF,r14)
	mov 0x03,r2
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x8,r14)
	mov 0x18,r0
	mov.l @r12,r3
	mov.b r2,@(r0,r3)

loc_8c038618:
	mov.w @(0xC2,PC),r0
	mov.l @r12,r3
	mov.b r13,@(r0,r3)
	mov 0x18,r0
	mov.l @r12,r3
	mov r3,r2
	mov.b @(r0,r2),r1
	add 0x6D,r0
	mov.b r1,@(r0,r3)
	mov 0x18,r0
	mov.l @r12,r3
	mov r3,r2
	mov.b @(r0,r2),r1
	add 0x74,r0
	mov.b r1,@(r0,r3)
	bsr loc_8c0380c8
	nop
	bra loc_8c038644
	nop

loc_8c03863e:
	mov 0x1C,r0
	mov.b r13,@r14
	mov.b r4,@(r0,r14)

loc_8c038644:
	mov r14,r4
	add 0x1A,r4
	mov r13,r0
	nop
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4

loc_8c038650:
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
loc_8c038662:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x01,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x6C,PC),r11
	mov.l @(0x68,PC),r8
	mov r4,r0
	nop
	add 0x1A,r0
	mov.b @r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c03869e
	mov 0x00,r10
	cmp/eq 0x01,r0
	bt loc_8c0386c2
	cmp/eq 0x02,r0
	bt loc_8c0386f8
	cmp/eq 0x03,r0
	bf loc_8c03869a
	bra loc_8c0388da
	nop

loc_8c03869a:
	bra loc_8c0388f6
	nop

loc_8c03869e:
	mov r14,r3
	add 0x1A,r3
	mov.b @r3,r2
	mov 0x00,r6
	mov.l @(0x44,PC),r4
	mov 0x0A,r5
	add 0x01,r2
	mov.b r2,@r3
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0386c2:
	mov.l @(0x30,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0386d0
	bra loc_8c0388f6
	nop

loc_8c0386d0:
	mov r14,r3
	add 0x1A,r3
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	bra loc_8c0388f6
	nop

;##############################################
	#data 0x0084
	#align4
	#data bank02.loc_8c028a3c
	#data bank04.loc_8c04257c
	#data 0x8c2681dc
	#data 0xff000000
	#data loc_8c0355b2
	#data loc_8c03563a

;----------------------------------------------
loc_8c0386f8:
	mov r12,r5
	mov r12,r3
	shll2 r5
	mov.b @(0x2,r14),r0
	add r3,r5
	mov.w @(0xE2,PC),r2
	shll2 r5
	mov r0,r4
	add r11,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c038720
	mov r12,r5
	mov.b @(0x2,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x2,r14)

loc_8c038720:
	shll2 r5
	mov r12,r3
	add r3,r5
	mov.w @(0xC0,PC),r2
	shll2 r5
	add r11,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c038740
	mov.b @(0x2,r14),r0
	add 0x01,r0
	mov.b r0,@(0x2,r14)

loc_8c038740:
	mov.b @(0x2,r14),r0
	add 0x08,r0
	cmp/pz r0
	bf loc_8c03874c
	bra loc_8c038756
	and 0x07,r0

loc_8c03874c:
	not r0,r0
	add 0x01,r0
	and 0x07,r0
	not r0,r0
	add 0x01,r0

loc_8c038756:
	mov.b r0,@(0x2,r14)
	exts.b r4,r4
	mov.b @(0x2,r14),r0
	cmp/eq r0,r4
	bt loc_8c038764
	jsr @r8
	mov 0x01,r4

loc_8c038764:
	mov r12,r0
	nop
	shll2 r0
	mov r12,r3
	add r3,r0
	shll2 r0
	add r11,r0
	mov.w @(0x4,r0),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c038796
	mov r14,r2
	add 0x1A,r2
	mov.b @r2,r3
	mov 0x01,r6
	mov.l @(0x68,PC),r4
	add 0x01,r3
	mov.b r3,@r2
	mov.l @(0x64,PC),r2
	jsr @r2
	mov 0x0A,r5
	jsr @r8
	mov 0x03,r4
	bra loc_8c0388f6
	nop

loc_8c038796:
	mov.b @(0x2,r14),r0
	mov 0xFF,r5
	cmp/eq 0x00,r0
	bt.s loc_8c0387c0
	mov 0x02,r4
	cmp/eq 0x01,r0
	bt loc_8c0387c8
	cmp/eq 0x02,r0
	bt loc_8c0387d0
	cmp/eq 0x03,r0
	bt loc_8c0387d8
	cmp/eq 0x04,r0
	bt loc_8c0387e0
	cmp/eq 0x05,r0
	bt loc_8c0387f4
	cmp/eq 0x06,r0
	bt loc_8c0387fc
	cmp/eq 0x07,r0
	bt loc_8c038836
	bra loc_8c038870
	nop

loc_8c0387c0:
	mov r4,r13
	mov r14,r4
	bra loc_8c038870
	add 0x0D,r4

loc_8c0387c8:
	mov r4,r13
	mov r14,r4
	bra loc_8c038870
	add 0x19,r4

loc_8c0387d0:
	mov r4,r13
	mov r14,r4
	bra loc_8c038870
	add 0x09,r4

loc_8c0387d8:
	mov r14,r4
	mov 0x08,r13
	bra loc_8c038870
	add 0x0A,r4

loc_8c0387e0:
	mov r14,r4
	mov 0x04,r13
	bra loc_8c038870
	add 0x0B,r4

;##############################################
	#data 0x2000
	#data 0x1000
	#align4
	#data 0xff000000
	#data loc_8c0355b2

;----------------------------------------------
loc_8c0387f4:
	mov r14,r4
	mov 0x03,r13
	bra loc_8c038870
	add 0x0C,r4

loc_8c0387fc:
	mov r12,r3
	shll2 r3
	mov r12,r2
	add r2,r3
	shll2 r3
	mov r5,r13
	add r11,r3
	mov.w @(0x4,r3),r0
	mov.l @(0xFC,PC),r3
	extu.w r0,r0
	mov.l r0,@-r15
	jsr @r3
	mov r12,r4
	mov.l @r15+,r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c038870
	mov r9,r0
	nop
	mov.b r0,@(0xA,r14)
	mov.b r0,@(0xB,r14)
	mov.b r0,@(0xC,r14)
	mov r10,r0
	nop
	mov.b r0,@(0xD,r14)
	mov.b r0,@(0x9,r14)
	mov 0x19,r0
	bra loc_8c03886c
	mov.b r10,@(r0,r14)

loc_8c038836:
	mov r12,r3
	shll2 r3
	mov r12,r2
	add r2,r3
	shll2 r3
	mov r5,r13
	add r11,r3
	mov.w @(0x4,r3),r0
	mov.l @(0xC4,PC),r3
	extu.w r0,r0
	mov.l r0,@-r15
	jsr @r3
	mov r12,r4
	mov.l @r15+,r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c038870
	mov r14,r1
	add 0x1A,r1
	mov.b @r1,r3
	mov 0x01,r6
	mov.l @(0xAC,PC),r4
	mov.l @(0xB0,PC),r2
	add 0x01,r3
	mov.b r3,@r1
	jsr @r2
	mov 0x0A,r5

loc_8c03886c:
	jsr @r8
	mov 0x02,r4

loc_8c038870:
	cmp/pl r13
	bf loc_8c0388f6
	mov r12,r6
	shll2 r6
	mov r12,r3
	add r3,r6
	shll2 r6
	mov.w @(0x86,PC),r2
	add r11,r6
	mov.w @(0x4,r6),r0
	extu.w r0,r3
	mov.w @(0x10,r6),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c038898
	mov.b @r4,r5
	mov.b @r4,r0
	add 0xFF,r0
	mov.b r0,@r4

loc_8c038898:
	mov r12,r6
	shll2 r6
	mov r12,r3
	add r3,r6
	shll2 r6
	mov.w @(0x64,PC),r2
	add r11,r6
	mov.w @(0x4,r6),r0
	extu.w r0,r3
	mov.w @(0x10,r6),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c0388ba
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4

loc_8c0388ba:
	mov.b @r4,r1
	add r13,r1
	mov r13,r0
	nop
	mov.l @(0x54,PC),r3
	jsr @r3
	nop
	exts.b r5,r5
	mov.b r0,@r4
	mov.b @r4,r2
	cmp/eq r2,r5
	bt loc_8c0388f6
	jsr @r8
	mov 0x04,r4
	bra loc_8c0388f6
	nop
 
loc_8c0388da:
	mov.l @(0x40,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0388f6
	mov r14,r4
	mov 0x1C,r0
	add 0x1A,r4
	mov.b r10,@r14
	mov.b r9,@(r0,r14)
	mov r10,r0
	nop
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4

loc_8c0388f6:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0800
	#data 0x0400
	#align4
	#data bank01.loc_8c011a64
	#data 0xff000000
	#data loc_8c0355b2
	#data bank12.loc_8c1292d4
	#data loc_8c03563a

;==============================================
loc_8c038920:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x104,PC),r9
	mov.l @(0x108,PC),r10
	mov r4,r0
	nop
	add 0x1A,r0
	mov.b @r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c03895a
	mov 0x01,r11
	cmp/eq 0x01,r0
	bt loc_8c038968
	cmp/eq 0x02,r0
	bt loc_8c038984
	cmp/eq 0x03,r0
	bf loc_8c038956
	bra loc_8c038a88
	nop

loc_8c038956:
	bra loc_8c038ac8
	nop

loc_8c03895a:
	mov r14,r3
	add 0x1A,r3
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	bra loc_8c038a2c
	mov 0x00,r6

loc_8c038968:
	mov.l @(0xD8,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c038976
	bra loc_8c038ac8
	nop

loc_8c038976:
	mov r14,r2
	add 0x1A,r2
	mov.b @r2,r3
	add 0x01,r3
	mov.b r3,@r2
	bra loc_8c038ac8
	nop

loc_8c038984:
	mov r13,r5
	mov r13,r3
	shll2 r5
	mov.l @(0xBC,PC),r12
	add r3,r5
	mov.b @(0x2,r14),r0
	shll2 r5
	mov.w @(0xA0,PC),r2
	add r12,r5
	mov r0,r4
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c0389ae
	mov r13,r5
	mov.b @(0x2,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x2,r14)

loc_8c0389ae:
	shll2 r5
	mov r13,r3
	add r3,r5
	mov.w @(0x80,PC),r2
	shll2 r5
	add r12,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c0389ce
	mov.b @(0x2,r14),r0
	add 0x01,r0
	mov.b r0,@(0x2,r14)

loc_8c0389ce:
	mov.b @(0x2,r14),r0
	add 0x02,r0
	cmp/pz r0
	bf loc_8c0389da
	bra loc_8c0389e4
	and 0x01,r0

loc_8c0389da:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c0389e4:
	mov.b r0,@(0x2,r14)
	exts.b r4,r4
	mov.b @(0x2,r14),r0
	mov.l @(0x60,PC),r8
	cmp/eq r0,r4
	bt loc_8c0389f4
	jsr @r8
	mov 0x01,r4

loc_8c0389f4:
	mov r13,r2
	shll2 r2
	mov r13,r3
	add r3,r2
	shll2 r2
	mov.l @(0x50,PC),r3
	add r12,r2
	mov.w @(0x4,r2),r0
	extu.w r0,r0
	mov.l r0,@-r15
	jsr @r3
	mov r13,r4
	mov.l @r15+,r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c038a54
	mov r14,r1
	add 0x1A,r1
	mov.b @r1,r3
	add 0x01,r3
	mov.b r3,@r1
	mov 0x1B,r1
	mov.b @(0x2,r14),r0
	add r14,r1
	mov.b r0,@r1
	jsr @r8
	mov 0x02,r4
	mov 0x01,r6

loc_8c038a2c:
	mov 0x0A,r5
	jsr @r9
	mov r10,r4
	bra loc_8c038ac8
	nop

;##############################################
	#data 0x2000
	#data 0x1000
	#align4
	#data loc_8c0355b2
	#data 0xff000000
	#data loc_8c03563a
	#data 0x8c2681dc
	#data bank04.loc_8c04257c
	#data bank01.loc_8c011a64

;----------------------------------------------
loc_8c038a54:
	mov r13,r0
	nop
	shll2 r0
	mov r13,r3
	add r3,r0
	shll2 r0
	add r12,r0
	mov.w @(0x4,r0),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c038ac8
	mov r14,r2
	add 0x1A,r2
	mov.b @r2,r3
	mov 0x1B,r0
	mov 0x01,r6
	add 0x01,r3
	mov 0x0A,r5
	mov.b r3,@r2
	mov.b r11,@(r0,r14)
	jsr @r9
	mov r10,r4
	jsr @r8
	mov 0x03,r4
	bra loc_8c038ac8
	nop

loc_8c038a88:
	mov.l @(0xC0,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c038ac8
	mov 0x1B,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c038ab6
	mov.l @(0xB4,PC),r13
	mov 0x50,r0
	mov.l @r13,r3
	mov.b r11,@(r0,r3)
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @r13,r2
	mov 0x4C,r0
	mov r2,r3
	mov.b @(r0,r3),r1
	mov 0x59,r0
	bra loc_8c038abe
	mov.b r1,@(r0,r2)

loc_8c038ab6:
	mov 0x1C,r0
	mov 0x00,r2
	mov.b r2,@r14
	mov.b r11,@(r0,r14)

loc_8c038abe:
	mov r14,r4
	mov 0x00,r0
	add 0x1A,r4
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4

loc_8c038ac8:
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
loc_8c038ada:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x70,PC),r8
	mov.l @(0x68,PC),r11
	mov.l @(0x64,PC),r9
	mov r4,r0
	nop
	add 0x1A,r0
	mov.b @r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c038b16
	mov 0x00,r10
	cmp/eq 0x01,r0
	bt loc_8c038b2e
	cmp/eq 0x02,r0
	bt loc_8c038b68
	cmp/eq 0x03,r0
	bf loc_8c038b12
	bra loc_8c038cbe
	nop

loc_8c038b12:
	bra loc_8c038cf2
	nop

loc_8c038b16:
	mov r14,r3
	add 0x1A,r3
	mov.b @r3,r2
	mov 0x0A,r5
	mov 0x00,r6
	add 0x01,r2
	mov.b r2,@r3
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r8,r4
	bra loc_8c038cf2
	nop

loc_8c038b2e:
	mov.l @(0x1C,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c038b3c
	bra loc_8c038cf2
	nop

loc_8c038b3c:
	mov r14,r3
	add 0x1A,r3
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	bra loc_8c038cf2
	nop

;##############################################
	#align4
	#data loc_8c03563a
	#data 0x8c26823c
	#data bank01.loc_8c010bbc
	#data bank04.loc_8c04257c
	#data 0x8c2681dc
	#data 0xff000000
	#data loc_8c0355b2

;----------------------------------------------
loc_8c038b68:
	mov r13,r4
	mov r13,r3
	shll2 r4
	mov.b @(0x3,r14),r0
	add r3,r4
	mov.w @(0xF8,PC),r2
	shll2 r4
	mov r0,r5
	add r11,r4
	mov.w @(0x4,r4),r0
	extu.w r0,r3
	mov.w @(0x10,r4),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c038b90
	mov r13,r4
	mov.b @(0x3,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x3,r14)

loc_8c038b90:
	shll2 r4
	mov r13,r3
	add r3,r4
	mov.w @(0xD6,PC),r2
	shll2 r4
	add r11,r4
	mov.w @(0x4,r4),r0
	extu.w r0,r3
	mov.w @(0x10,r4),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c038bb0
	mov.b @(0x3,r14),r0
	add 0x01,r0
	mov.b r0,@(0x3,r14)

loc_8c038bb0:
	mov.b @(0x3,r14),r0
	mov.l @(0xC0,PC),r3
	mov r0,r1
	add 0x06,r1
	jsr @r3
	mov 0x06,r0
	mov.b r0,@(0x3,r14)
	exts.b r5,r5
	mov.b @(0x3,r14),r0
	cmp/eq r0,r5
	bt loc_8c038bca
	jsr @r9
	mov 0x01,r4
 
loc_8c038bca:
	mov r13,r0
	nop
	shll2 r0
	mov r13,r3
	add r3,r0
	shll2 r0
	add r11,r0
	mov.w @(0x4,r0),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c038bfc
	mov r14,r2
	add 0x1A,r2
	mov.b @r2,r3
	mov 0x0A,r5
	mov 0x01,r6
	add 0x01,r3
	mov.b r3,@r2
	mov.l @(0x88,PC),r2
	jsr @r2
	mov r8,r4
	jsr @r9
	mov 0x03,r4
	bra loc_8c038d58
	nop

loc_8c038bfc:
	mov.b @(0x3,r14),r0
	mov 0xFF,r5
	cmp/eq 0x00,r0
	bt.s loc_8c038c1e
	mov 0x02,r4
	cmp/eq 0x01,r0
	bt loc_8c038c26
	cmp/eq 0x02,r0
	bt loc_8c038c2e
	cmp/eq 0x03,r0
	bt loc_8c038c36
	cmp/eq 0x04,r0
	bt loc_8c038c3e
	cmp/eq 0x05,r0
	bt loc_8c038c80
	bra loc_8c038cf2
	nop

loc_8c038c1e:
	mov r14,r4
	mov 0x04,r12
	bra loc_8c038cf2
	add 0x05,r4

loc_8c038c26:
	mov r14,r4
	mov 0x03,r12
	bra loc_8c038cf2
	add 0x06,r4

loc_8c038c2e:
	mov r4,r12
	mov r14,r4
	bra loc_8c038cf2
	add 0x07,r4

loc_8c038c36:
	mov r4,r12
	mov r14,r4
	bra loc_8c038cf2
	add 0x08,r4

loc_8c038c3e:
	mov r13,r3
	shll2 r3
	mov r13,r2
	add r2,r3
	shll2 r3
	mov r5,r12
	add r11,r3
	mov.w @(0x4,r3),r0
	mov.l @(0x2C,PC),r3
	extu.w r0,r0
	mov.l r0,@-r15
	jsr @r3
	mov r13,r4
	mov.l @r15+,r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c038cf2
	mov r10,r0
	nop
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	bra loc_8c038cb6
	mov.b r0,@(0x8,r14)

;##############################################
	#data 0x2000
	#data 0x1000
	#align4
	#data bank12.loc_8c1292d4
	#data loc_8c0355b2
	#data bank01.loc_8c011a64

;----------------------------------------------
loc_8c038c80:
	mov r13,r3
	shll2 r3
	mov r13,r2
	add r2,r3
	shll2 r3
	mov r5,r12
	add r11,r3
	mov.w @(0x4,r3),r0
	mov.l @(0x118,PC),r3
	extu.w r0,r0
	mov.l r0,@-r15
	jsr @r3
	mov r13,r4
	mov.l @r15+,r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c038cf2
	mov r14,r1
	add 0x1A,r1
	mov.b @r1,r3
	mov 0x0A,r5
	mov.l @(0x104,PC),r2
	mov 0x01,r6
	add 0x01,r3
	mov.b r3,@r1
	jsr @r2
	mov r8,r4

loc_8c038cb6:
	jsr @r9
	mov 0x02,r4
	bra loc_8c038cf2
	nop

loc_8c038cbe:
	mov.l @(0xF4,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c038cf2
	mov r14,r4
	mov 0x1C,r0
	mov 0x03,r2
	add 0x1A,r4
	mov.b r2,@(r0,r14)
	mov r10,r0
	nop
	mov.b r0,@(0x1,r4)
	mov 0x01,r3
	mov.b r0,@r4
	mov.b r3,@r14
	mov.b @(0x4,r14),r0
	mov.b r0,@(0x2,r14)
	mov r10,r0
	nop
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov.b r0,@(0x3,r14)
	mov.l @(0xCC,PC),r2
	jsr @r2
	nop

loc_8c038cf2:
	cmp/pl r12
	bf loc_8c038d58
	mov r13,r6
	shll2 r6
	mov r13,r3
	add r3,r6
	shll2 r6
	mov.w @(0xA0,PC),r2
	add r11,r6
	mov.w @(0x4,r6),r0
	extu.w r0,r3
	mov.w @(0x10,r6),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c038d1a
	mov.b @r4,r5
	mov.b @r4,r0
	add 0xFF,r0
	mov.b r0,@r4

loc_8c038d1a:
	mov r13,r6
	shll2 r6
	mov r13,r3
	add r3,r6
	shll2 r6
	mov.w @(0x7E,PC),r2
	add r11,r6
	mov.w @(0x4,r6),r0
	extu.w r0,r3
	mov.w @(0x10,r6),r0
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt loc_8c038d3c
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4

loc_8c038d3c:
	mov.b @r4,r1
	add r12,r1
	mov r12,r0
	nop
	mov.l @(0x78,PC),r3
	jsr @r3
	nop
	exts.b r5,r5
	mov.b r0,@r4
	mov.b @r4,r2
	cmp/eq r2,r5
	bt loc_8c038d58
	jsr @r9
	mov 0x04,r4

loc_8c038d58:
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
loc_8c038d6a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x54,PC),r2
	mov.w @(0x34,PC),r0
	mov.l r5,@-r15
	mov 0x01,r5
	mov.l @r2,r3
	mov.b r5,@(r0,r3)
	mov 0x18,r0
	mov.b r5,@(r0,r4)
	mov.b @r4,r0
	cmp/eq 0x01,r0
	bt.s loc_8c038d88
	mov 0x00,r14
	mov r5,r14

loc_8c038d88:
	mov.l @r15,r2
	mov r14,r5
	mov.l @(0x38,PC),r0
	mov.b @r2,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	mov.l @r15,r4
	mov.l @(0x30,PC),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0800
	#data 0x0400
	#data 0x008d
	#align4
	#data bank01.loc_8c011a64
	#data loc_8c0355b2
	#data loc_8c03563a
	#data bank02.loc_8c028934
	#data bank02.loc_8c028988
	#data bank12.loc_8c1292d4
	#data 0x8c26823c
	#data bank14.loc_8c14d35c
	#data loc_8c038094
	#data loc_8c0395ac

;==============================================
;Pause menu code ;loc_8c038ebc = strings
;==============================================
loc_8c038dd4:
	mov.l r14,@-r15
	mov.l @(0xC8,PC),r14;8c038ea0;0x8c212c9c
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @r14,r0
	mov.l @(0xC4,PC),r13
	tst 0x04,r0
	bt loc_8c038df0
	lds.l @r15+,pr
	mov.l @(0xC0,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c038df0:
	mov 0x19,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c038e02
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c037ed4
	mov.l @r15+,r14

loc_8c038e02:
	mov.b @(0xE,r13),r0
	tst r0,r0
	bt loc_8c038e50
	mov 0x1C,r0
	mov.b @(r0,r13),r0
	cmp/eq 0x00,r0
	bt loc_8c038e18
	cmp/eq 0x01,r0
	bt loc_8c038e2e
	bra loc_8c038e3e
	nop

loc_8c038e18:
	mov.l @(0x90,PC),r2
	mov 0x1C,r0
	mov 0x01,r3
	jsr @r2
	mov.b r3,@(r0,r13)
	mov r13,r4
	mov 0x00,r0
	add 0x1A,r4
	mov.b r0,@(0x1,r4)
	bra loc_8c038e3e
	mov.b r0,@r4

loc_8c038e2e:
	mov.l @(0x80,PC),r3
	mov 0x1C,r0
	mov 0x02,r2
	jsr @r3
	mov.b r2,@(r0,r13)
	mov.l @(0x78,PC),r1
	jsr @r1
	nop

loc_8c038e3e:
	mov r13,r5
	bsr loc_8c038d6a
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x70,PC),r3
	mov 0x0D,r4
	mov.l @r15+,r13
	jmp @r3 ; 8c044ef0
	mov.l @r15+,r14

loc_8c038e50:
	mov.b @r14,r0
	tst 0x03,r0
	bt loc_8c038e62
	lds.l @r15+,pr
	mov.l @(0x60,PC),r2 ;8c038ebc
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2; 8c037864;Render strings
	mov.l @r15+,r14

loc_8c038e62:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c038e6a:
	mov.l @(0x54,PC),r2
	mov.w @(0x2C,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0x50,PC),r1
	mov.b r4,@(r0,r3)
	mov 0x04,r3
	mov.l @(0x24,PC),r4
	mov.b r3,@r4
	jsr @r1
	mov 0x00,r5
	mov.l @(0x44,PC),r3
	jsr @r3
	nop
	mov.l @(0x38,PC),r3
	mov.l @r3,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x60,r0
	bf loc_8c038e96
	mov.l @(0x38,PC),r1
	jmp @r1
	lds.l @r15+,pr

loc_8c038e96:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00b1
	#align4
	#data 0x8c212c9c
	#data 0x8c212ccc
	#data loc_8c0373d2
	#data bank02.loc_8c028294
	#data bank02.loc_8c028448
	#data bank02.loc_8c02849c
	#data bank04.loc_8c044ef0
	#data loc_8c037864
	#data 0x8c26823c
	#data loc_8c036e00
	#data loc_8c031bba
	#data loc_8c032184

;==============================================
loc_8c038ed0:
	mov.l @(0x68,PC),r6
	mov 0x4C,r0
	mov.l @r6,r5
	mov.b @(r0,r5),r0
	cmp/eq 0x05,r0
	bf loc_8c038f30
	mov.w @(0x54,PC),r0
	mov.l @(0x60,PC),r4
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c038f28
	mov.w @(0x4C,PC),r0
	mov 0x01,r7
	mov.b r7,@(r0,r5)
	mov.b @(0xC,r4),r0
	tst r0,r0
	bf loc_8c038f12
	mov.w @(0xA,r4),r0
	tst r0,r0
	bt loc_8c038f00
	mov.w @(0xA,r4),r0
	add 0xFF,r0
	bra loc_8c038f28
	mov.w r0,@(0xA,r4)

loc_8c038f00:
	mov.b @(0xC,r4),r0
	add 0x01,r0
	mov.b r0,@(0xC,r4)
	mov r7,r0
	nop
	mov.w r0,@(0xA,r4)
	mov.w @(0x28,PC),r0
	bra loc_8c038f28
	mov.w r0,@(0x8,r4)

loc_8c038f12:
	mov.w @(0x8,r4),r0
	tst r0,r0
	bt loc_8c038f20
	mov.w @(0x8,r4),r0
	add 0xFF,r0
	bra loc_8c038f28
	mov.w r0,@(0x8,r4)

loc_8c038f20:
	mov.w @(0x10,PC),r0
	mov 0x00,r3
	mov.l @r6,r2
	mov.b r3,@(r0,r2)

loc_8c038f28:
	mov.l @(0x1C,PC),r3
	mov.l @(0x18,PC),r4
	jmp @r3
	nop

loc_8c038f30:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00b1
	#data 0x008d
	#data 0x00f0
	#align4
	#data 0x8c26823c
	#data 0x8c212c9c
	#data loc_8c0373ac
	#data loc_8c0395ac

;==============================================
loc_8c038f4c:
	mov.l @(0x17C,PC),r5
	mov 0x1B,r0
	mov.l @(0x174,PC),r4
	mov 0x46,r1
	mov.l @r5,r3
	mov.b @r4,r2
	mov.b r2,@(r0,r3)
	mov.l @r5,r3
	mov.b @(0x1,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x4D,r1
	mov.l @r5,r3
	mov.b @(0x2,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x49,r1
	mov.l @r5,r3
	mov.b @(0x3,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(0x140,PC),r1
	mov.l @r5,r3
	mov.b @(0x4,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x52,r1
	mov.l @r5,r3
	mov.b @(0x5,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.l @r5,r3
	mov 0x53,r1
	mov.b @(0x6,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x54,r1
	mov.l @r5,r3
	mov.b @(0x7,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x55,r1
	mov.l @r5,r3
	mov.b @(0x8,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x56,r1
	mov.l @r5,r3
	mov.b @(0x9,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x57,r1
	mov.l @r5,r3
	mov.b @(0xA,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x58,r1
	mov.l @r5,r3
	mov.b @(0xB,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(0xF2,PC),r1
	mov.b @(0xC,r4),r0
	mov.l @r5,r3
	add r3,r1
	mov.b r0,@r1
	mov 0x00,r7
	mov.w @(0xE8,PC),r1
	mov.l @r5,r3
	mov.b @(0xD,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(0xE0,PC),r1
	mov.l @r5,r3
	mov.b @(0xE,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.l @r5,r3
	mov.w @(0xD6,PC),r0
	mov.b r7,@(r0,r3)
	add 0x01,r0
	mov.l @r5,r3
	mov.b r7,@(r0,r3)
	mov.b @(0xF,r4),r0
	cmp/eq 0x01,r0
	bf.s loc_8c039000
	mov 0x01,r6
	mov.w @(0xC4,PC),r0
	mov.l @r5,r2
	mov.b r6,@(r0,r2)

loc_8c039000:
	mov.b @(0xF,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c03900c
	mov.w @(0xBA,PC),r0
	mov.l @r5,r2
	mov.b r6,@(r0,r2)

loc_8c03900c:
	mov.l @r5,r3
	mov 0x58,r0
	mov.b r7,@(r0,r3)
	add 0x5F,r0
	mov.l @r5,r3
	mov.b r7,@(r0,r3)
	mov.b @(0xB,r4),r0
	tst r6,r0
	bt loc_8c039024
	mov.l @r5,r2
	mov 0x58,r0
	mov.b r6,@(r0,r2)

loc_8c039024:
	mov.b @(0xB,r4),r0
	tst 0x02,r0
	bt loc_8c039030
	mov.w @(0x98,PC),r0
	mov.l @r5,r2
	mov.b r6,@(r0,r2)

loc_8c039030:
	mov r4,r5
	add 0x50,r5
	mov.l @r5,r3
	tst r3,r3
	bf loc_8c03904e
	mov.l @(0x4,r5),r3
	tst r3,r3
	bf loc_8c03904e
	mov.l @(0x8C,PC),r2
	mov r4,r3
	add 0x50,r3
	mov.l r2,@r3
	mov 0x54,r0
	mov.l @(0x88,PC),r3
	mov.l r3,@(r0,r4)

loc_8c03904e:
	mov r4,r2
	mov.l @(0x84,PC),r5
	add 0x70,r2
	mov r4,r3
	mov.l @r2,r2
	add 0x60,r3
	mov.l @(0x4,r5),r1
	or r2,r1
	mov r4,r0
	nop
	add 0x50,r0
	mov.l @r0,r2
	or r2,r1
	mov r4,r0
	nop
	add 0x40,r0
	mov.l @r0,r2
	mov 0x74,r0
	and r2,r1
	mov.l r1,@r3
	mov.l @(r0,r4),r3
	mov 0x54,r0
	mov.l @(0x8,r5),r2
	mov.l @(r0,r4),r1
	mov 0x44,r0
	or r3,r2
	mov.l @(r0,r4),r3
	or r1,r2
	mov 0x64,r0
	and r3,r2
	mov r4,r3
	mov.l r2,@(r0,r4)
	mov r4,r2
	add 0x78,r2
	mov.l @(0xC,r5),r1
	mov.l @r2,r2
	add 0x68,r3
	or r2,r1
	mov r4,r2
	add 0x58,r2
	mov.l @r2,r2
	or r2,r1
	mov r4,r2
	add 0x48,r2
	mov.l @r2,r2
	and r2,r1
	mov.l r1,@r3
	mov 0x7C,r0
	mov.l @(0x10,r5),r2
	mov.l @(r0,r4),r3
	mov 0x5C,r0
	or r3,r2
	bra loc_8c0390dc
	nop

;##############################################
	#data 0x00aa
	#data 0x00ac
	#data 0x00b3
	#data 0x00b4
	#data 0x00b5
	#data 0x00b6
	#data 0x00b7
	#align4
	#data 0x8c212f30
	#data 0x8c26823c
	#data 0x00ffff77
	#data 0x02000004
	#data 0x8c289750

;----------------------------------------------
loc_8c0390dc:
	mov.l @(r0,r4),r1
	mov 0x4C,r0
	mov.l @(r0,r4),r3
	mov 0x6C,r0
	or r1,r2
	and r3,r2
	rts
	mov.l r2,@(r0,r4)

;==============================================
loc_8c0390ec:
	mov.l @(0xE8,PC),r4
	mov 0x01,r5
	mov.b r5,@r4
	mov r5,r0
	nop
	mov.b r0,@(0x1,r4)
	mov 0x02,r0
	mov.b r0,@(0x2,r4)
	mov r5,r0
	nop
	mov r4,r3
	mov 0xFF,r5
	add 0x40,r3
	mov.b r0,@(0x3,r4)
	mov 0x00,r0
	mov.l @(0xD0,PC),r2
	mov.b r0,@(0x4,r4)
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x6,r4)
	mov.b r0,@(0x7,r4)
	mov.b r0,@(0x8,r4)
	mov.b r0,@(0x9,r4)
	mov.b r0,@(0xA,r4)
	mov.b r0,@(0xB,r4)
	mov.b r0,@(0xC,r4)
	mov.b r0,@(0xD,r4)
	mov.b r0,@(0xE,r4)
	mov.b r0,@(0xF,r4)
	mov 0x44,r0
	mov.l r5,@r3
	mov r4,r3
	add 0x48,r3
	mov.l r5,@(r0,r4)
	mov.l r5,@r3
	mov r4,r3
	add 0x50,r3
	mov 0x4C,r0
	mov.l r5,@(r0,r4)
	mov 0x54,r0
	mov.l r2,@r3
	mov.l @(0xA0,PC),r3
	mov.l r3,@(r0,r4)
	mov.l @(0xA0,PC),r5
	mov r4,r2
	mov 0x00,r3
	add 0x58,r2
	mov.l r3,@r2
	mov 0x5C,r0
	mov.l r3,@(r0,r4)
	mov r3,r2
	mov r4,r2
	add 0x70,r2
	mov.l @r2,r2
	mov r4,r3
	mov.l @(0x4,r5),r1
	add 0x60,r3
	mov 0x74,r0
	or r2,r1
	mov r4,r2
	add 0x50,r2
	mov.l @r2,r2
	or r2,r1
	mov.l r1,@r3
	mov.l @(r0,r4),r3
	mov 0x54,r0
	mov.l @(0x8,r5),r2
	mov.l @(r0,r4),r1
	mov 0x64,r0
	or r3,r2
	mov r4,r3
	or r1,r2
	mov.l r2,@(r0,r4)
	mov r4,r2
	add 0x68,r3
	add 0x78,r2
	mov.l @(0xC,r5),r1
	mov.l @r2,r2
	mov 0x7C,r0
	or r2,r1
	mov r4,r2
	add 0x58,r2
	mov.l @r2,r2
	or r2,r1
	mov.l r1,@r3
	mov.l @(r0,r4),r3
	mov 0x5C,r0
	mov.l @(0x10,r5),r2
	mov.l @(r0,r4),r1
	mov 0x6C,r0
	or r3,r2
	mov.l @(0x44,PC),r3
	or r1,r2
	mov.l r2,@(r0,r4)
	mov.l @(0x44,PC),r2
	mov.l r3,@(0x10,r4)
	shll2 r3
	mov.l r2,@(0x14,r4)
	mov.l r3,@(0x18,r4)
	mov.l @(0x40,PC),r3
	mov.l @(0x3C,PC),r2
	mov.l r2,@(0x1C,r4)
	mov 0x40,r2
	mov.l r3,@(0x20,r4)
	mov 0x13,r3
	mov.l r2,@(0x24,r4)
	mov.l r3,@(0x28,r4)
	mov 0x14,r2
	mov 0x15,r3
	mov.l r2,@(0x2C,r4)
	mov 0x17,r2
	mov.l r3,@(0x30,r4)
	mov 0x16,r3
	mov.l r2,@(0x34,r4)
	mov 0x06,r2
	mov.l r3,@(0x38,r4)
	rts
	mov.l r2,@(0x3C,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c212f30
	#data 0x00ffff77
	#data 0x02000004
	#data 0x8c289750
	#data 0x00080000
	#data 0x00100000
	#data 0x00800000
	#data 0x00400000

;==============================================
loc_8c0391f8:
	mov.l @(0x64,PC),r3
	mov 0x00,r4
	mov.l @(0x64,PC),r2
	mov r4,r7
	mov.l r13,@-r15
	mov 0x04,r6
	mov.l @(0x60,PC),r13
	mov 0x30,r1
	mov.b r4,@r3
	mov.b r4,@r2

loc_8c03920c:
	mov r7,r5
	add r13,r5
	mov r4,r2

loc_8c039212:
	add 0x01,r2
	mov.b r4,@r5
	cmp/ge r6,r2
	bf.s loc_8c039212
	add 0x01,r5
	add 0x04,r7
	cmp/ge r1,r7
	bf loc_8c03920c
	mov r1,r7
	mov 0x3C,r0

loc_8c039226:
	mov r7,r5
	add r13,r5
	mov r4,r2

loc_8c03922c:
	add 0x01,r2
	mov.b r4,@r5
	cmp/ge r6,r2
	bf.s loc_8c03922c
	add 0x01,r5
	add 0x04,r7
	cmp/ge r0,r7
	bf loc_8c039226
	rts
	mov.l @r15+,r13

;==============================================
loc_8c039240:
	mov.l @(0x28,PC),r2
	mov 0x2F,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c039250
	rts
	mov 0x00,r0

loc_8c039250:
	exts.b r5,r0
	mov.l @(0x14,PC),r1
	exts.b r4,r4
	shll2 r0
	add r4,r0
	mov.b @(r0,r1),r0
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c289f7c
	#data 0x8c289f7d
	#data 0x8c2896b4
	#data 0x8c26823c

;==============================================
loc_8c039270:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0x194,PC),r4
	mov.l @(0x190,PC),r6
	mov r4,r5
	mov.w @(0x4,r5),r0
	mov r4,r7
	add 0x14,r7
	extu.w r0,r3
	mov.w @(0x4,r7),r0
	mov r4,r2
	add 0x28,r2
	extu.w r0,r0
	mov.l r2,@(0x4,r15)
	or r0,r3
	mov.w @(0x4,r2),r0
	mov r5,r2
	add 0x3C,r2
	extu.w r0,r0
	mov.l r2,@r15
	or r0,r3
	mov.w @(0x4,r2),r0
	mov.l @(0x4,r15),r2
	extu.w r0,r0
	or r0,r3
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	or r0,r3
	mov.w @(0x10,r7),r0
	extu.w r0,r0
	or r0,r3
	mov.w @(0x10,r2),r0
	extu.w r0,r0
	or r0,r3
	mov.l @r15,r2
	mov.w @(0x10,r2),r0
	mov.w @(0x142,PC),r2
	extu.w r0,r0
	or r0,r3
	tst r2,r3
	bt.s loc_8c0392ca
	mov r4,r5
	mov.b @r6,r0
	add 0xFF,r0
	mov.b r0,@r6

loc_8c0392ca:
	mov r4,r3
	mov.l r3,@(0x8,r15)
	mov.w @(0x4,r3),r0
	add 0x14,r3
	mov r5,r7
	add 0x28,r7
	extu.w r0,r2
	mov.l r3,@r15
	mov.w @(0x4,r3),r0
	mov r5,r3
	add 0x3C,r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x4,r7),r0
	mov.l r3,@(0x4,r15)
	extu.w r0,r0
	or r0,r2
	mov.w @(0x4,r3),r0
	mov.l @(0x8,r15),r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.l @r15,r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.l @(0x4,r15),r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r7),r0
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.w @(0xF0,PC),r3
	extu.w r0,r0
	or r0,r2
	tst r3,r2
	bt loc_8c03931c
	mov.b @r6,r0
	add 0x01,r0
	mov.b r0,@r6

loc_8c03931c:
	mov r4,r3
	mov.l r3,@(0x4,r15)
	mov.w @(0x4,r3),r0
	add 0x14,r3
	mov.l r3,@(0xC,r15)
	mov r4,r7
	extu.w r0,r2
	mov.w @(0x4,r3),r0
	mov r7,r3
	add 0x28,r3
	extu.w r0,r0
	mov.l r3,@(0x8,r15)
	or r0,r2
	mov.w @(0x4,r3),r0
	mov r7,r3
	add 0x3C,r3
	extu.w r0,r0
	mov.l r3,@r15
	or r0,r2
	mov.w @(0x4,r3),r0
	mov.l @(0x4,r15),r3
	extu.w r0,r0
	mov.l @(0xC4,PC),r5
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.l @(0xC,r15),r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.l @(0x8,r15),r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.l @r15,r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.w @(0x98,PC),r3
	extu.w r0,r0
	or r0,r2
	tst r3,r2
	bt.s loc_8c039378
	mov r4,r7
	mov.b @r5,r0
	add 0xFF,r0
	mov.b r0,@r5

loc_8c039378:
	mov r4,r3
	mov.l r3,@(0x4,r15)
	mov.w @(0x4,r3),r0
	add 0x14,r3
	mov.l r3,@r15
	extu.w r0,r2
	mov.w @(0x4,r3),r0
	mov r7,r3
	add 0x28,r3
	extu.w r0,r0
	mov.l r3,@(0x8,r15)
	or r0,r2
	mov.w @(0x4,r3),r0
	mov r7,r3
	add 0x3C,r3
	extu.w r0,r0
	mov.l r3,@(0xC,r15)
	or r0,r2
	mov.w @(0x4,r3),r0
	mov.l @(0x4,r15),r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.l @r15,r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.l @(0x8,r15),r3
	extu.w r0,r0
	or r0,r2
	mov.w @(0x10,r3),r0
	extu.w r0,r0
	mov.l @(0xC,r15),r3
	or r0,r2
	mov.w @(0x10,r3),r0
	mov.w @(0x42,PC),r3
	extu.w r0,r0
	or r0,r2
	tst r3,r2
	bt loc_8c0393ce
	mov.b @r5,r0
	add 0x01,r0
	mov.b r0,@r5

loc_8c0393ce:
	mov.b @r5,r0
	mov.l @(0x40,PC),r3
	and 0x03,r0
	mov.b r0,@r5
	mov.b @r6,r1
	add 0x0F,r1
	jsr @r3
	mov 0x0F,r0
	mov.b r0,@r6
	mov 0x2C,r2
	mov.w @(0x4,r4),r0
	add r4,r2
	mov.w @r2,r2
	extu.w r0,r3
	mov.w @(0x18,r4),r0
	extu.w r2,r2
	extu.w r0,r0
	or r3,r0
	mov 0x40,r3
	add r4,r3
	mov.w @r3,r3
	or r2,r0
	bra loc_8c039418
	nop

;##############################################
	#data 0x2000
	#data 0x1000
	#data 0x0800
	#data 0x0400
	#align4
	#data 0x8c289f7d
	#data 0x8c2681dc
	#data 0x8c289f7c
	#data bank12.loc_8c1292d4

;----------------------------------------------
loc_8c039418:
	extu.w r3,r3
	or r3,r0
	tst 0x40,r0
	bt loc_8c039432
	mov.b @r6,r3
	mov.b @r5,r2
	mov.l @(0xEC,PC),r0
	shll2 r3
	add r2,r3
	mov.b @(r0,r3),r1
	mov 0x01,r2
	xor r2,r1
	mov.b r1,@(r0,r3)

loc_8c039432:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03943a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xC8,PC),r0
	mov.l @r0,r3
	mov 0x2F,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03945e
	mov.l @(0xC0,PC),r14
	bra loc_8c039460
	nop

loc_8c03945e:
	mov.l @(0xC0,PC),r14

loc_8c039460:
	mov.l @(0xC0,PC),r3
	mov r14,r5
	mov r14,r6
	jsr @r3
	mov r14,r4
	mov 0x00,r11
	mov 0x00,r13

loc_8c03946e:
	mov r13,r9
	exts.b r11,r10
	shll r9
	shll2 r10
	mov 0x00,r14
	add 0x04,r9

loc_8c03947a:
	mov.l @(0xAC,PC),r2
	mov 0x07,r3
	mov.b r3,@r15
	exts.b r14,r12
	mov.b @r2,r3
	mov r14,r8
	shll2 r8
	cmp/eq r3,r12
	bf.s loc_8c0394ae
	shll2 r8
	mov.l @(0x9C,PC),r0
	exts.b r11,r1
	mov.b @r0,r3
	cmp/eq r3,r1
	bf loc_8c0394ae
	mov.l @(0x94,PC),r2
	mov r8,r4
	mov.l @(0x94,PC),r3
	mov r9,r5
	mov.l r2,@-r15
	mov 0x08,r6
	jsr @r3
	add 0x03,r4
	add 0x04,r15
	mov 0x09,r2
	mov.b r2,@r15

loc_8c0394ae:
	mov r12,r3
	add r10,r3
	mov.l @(0x84,PC),r2
	shll2 r3
	mov r12,r1
	mov.l @(0x58,PC),r0
	shll2 r3
	mov r8,r4
	add r10,r1
	mov r9,r5
	add r3,r2
	mov.l r2,@-r15
	mov.b @(r0,r1),r3
	mov.l @(0x70,PC),r2
	mov.l r3,@-r15
	mov.l r2,@-r15
	mov.b @(0xC,r15),r0
	mov.l @(0x60,PC),r3
	mov r0,r6
	jsr @r3
	add 0x04,r4
	add 0x01,r14
	mov 0x04,r3
	exts.b r14,r2
	cmp/ge r3,r2
	bf.s loc_8c03947a
	add 0x0C,r15
	add 0x01,r13
	exts.b r13,r0
	cmp/eq 0x08,r0
	bf loc_8c0394ee
	add 0x01,r13

loc_8c0394ee:
	exts.b r13,r0
	cmp/eq 0x0D,r0
	bf.s loc_8c0394f8
	add 0x01,r11
	add 0x01,r13

loc_8c0394f8:
	mov 0x0F,r3
	exts.b r11,r2
	cmp/ge r3,r2
	bf loc_8c03946e
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

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x8c2896b4
	#data 0x8c26823c
	#data 0xff3f3f7f
	#data 0xff7f3f3f
	#data bank11.loc_8c11c420
	#data 0x8c289f7c
	#data 0x8c289f7d
	#data bank13.loc_8c136990
	#data loc_8c0395c6
	#data bank14.loc_8c14d4a0
	#data bank13.loc_8c136994

;==============================================
loc_8c039540:
	mov.l @(0x48,PC),r4
	mov.l r14,@-r15
	mov.b @r4,r0
	mov.l @(0x48,PC),r14
	mov.w @(0x3C,PC),r5
	tst 0x01,r0
	bt loc_8c03956c
	mov.w @(0x4,r14),r0
	extu.w r0,r0
	cmp/eq r5,r0
	bf loc_8c039584
	mov.b @r4,r0
	mov.l @(0x38,PC),r3
	mov.l @(0x3C,PC),r1
	xor 0x01,r0
	mov.b r0,@r4
	mov.l @r3,r2
	mov 0x2F,r3
	mov.b @r1,r0
	add r2,r3
	bra loc_8c039584
	mov.b r0,@r3

loc_8c03956c:
	mov.w @(0x4,r14),r0
	extu.w r0,r0
	cmp/eq r5,r0
	bf loc_8c039584
	mov.w @r14,r2
	mov.l @(0x24,PC),r3
	extu.w r2,r2
	tst r3,r2
	bt loc_8c039584
	mov.b @r4,r0
	xor 0x01,r0
	mov.b r0,@r4

loc_8c039584:
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0200
	#align4
	#data 0x8c26a95d
	#data 0x8c2681dc
	#data 0x8c26823c
	#data 0x8c2896e4
	#data 0x00008000

;==============================================
loc_8c0395a0:
	mov.l @(0x100,PC),r3
	mov 0x00,r4
	mov.l @(0x100,PC),r2
	mov.l r4,@r3
	rts
	mov.l r4,@r2

;==============================================
loc_8c0395ac:
	mov.l @(0xF4,PC),r6
	mov.l @r6,r0
	cmp/eq 0x10,r0
	bt.s loc_8c0395c2
	mov r0,r5
	mov.l @(0xF4,PC),r0
	shll2 r5
	mov.l r4,@(r0,r5)
	mov.l @r6,r2
	add 0x01,r2
	mov.l r2,@r6

loc_8c0395c2:
	rts
	nop

;==============================================
loc_8c0395c6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD8,PC),r13
	mov.w @(0xCC,PC),r3
	mov.l @r13,r7
	cmp/eq r3,r7
	bt loc_8c039628
	mov r15,r0
	add 0x10,r0
	add 0x04,r0
	tst 0x03,r0
	bt loc_8c0395ec
	mov r15,r2
	add 0x10,r2
	mov r2,r1
	bra loc_8c0395f4
	add 0x08,r1

loc_8c0395ec:
	mov r15,r3
	add 0x10,r3
	mov r3,r1
	add 0x04,r1

loc_8c0395f4:
	shll2 r7
	mov.l @(0xB8,PC),r3
	shll2 r7
	mov.l r1,@r15
	shll2 r7
	add r3,r7
	mov.b r4,@r7
	mov r5,r0
	nop
	mov.b r0,@(0x1,r7)
	mov r6,r0
	nop
	mov r7,r4
	mov.l @(0xA4,PC),r2
	add 0x03,r4
	mov.b r0,@(0x2,r7)
	mov.l @r15,r6
	mov r4,r14
	jsr @r2
	mov.l @(0x10,r15),r5
	add r0,r14
	mov 0x00,r3
	mov.b r3,@r14
	mov.l @r13,r2
	add 0x01,r2
	mov.l r2,@r13

loc_8c039628:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c039632:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x70,PC),r13
	mov.l @(0x64,PC),r3
	bra loc_8c03964a
	mov.l @r3,r14

loc_8c039642:
	mov.l @r13+,r3
	jsr @r3
	nop
	add 0xFF,r14

loc_8c03964a:
	tst r14,r14
	bf loc_8c039642
	mov.l @(0x68,PC),r12
	mov.l @(0x5C,PC),r13
	mov.l @(0x54,PC),r3
	bra loc_8c039660
	mov.l @r3,r14

loc_8c039658:
	jsr @r12
	mov r13,r4
	add 0x40,r13
	add 0xFF,r14

loc_8c039660:
	tst r14,r14
	bf loc_8c039658
	mov.l @(0x54,PC),r2
	mov 0x08,r5
	jsr @r2
	mov r5,r4
	lds.l @r15+,pr
	mov.l @(0x50,PC),r3
	mov 0xFF,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03967a:
	mov.l @(0x48,PC),r3
	mov 0x00,r4
	mov.l @(0x48,PC),r2
	mov.l r4,@r3
	rts
	mov.l r4,@r2

loc_8c039686:
	mov.l @(0x3C,PC),r6
	mov.l @r6,r0
	cmp/eq 0x10,r0
	bt.s loc_8c03969c
	mov r0,r5
	mov.l @(0x38,PC),r0
	shll2 r5
	mov.l r4,@(r0,r5)
	mov.l @r6,r2
	add 0x01,r2
	mov.l r2,@r6

loc_8c03969c:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0080
	#align4
	#data 0x8c289f80
	#data 0x8c289f84
	#data 0x8c28c390
	#data 0x8c289f90
	#data bank12.loc_8c129804
	#data loc_8c031152
	#data bank11.loc_8c11efc0
	#data bank11.loc_8c11f1c0
	#data 0x8c289f8c
	#data 0x8c289f88
	#data 0x8c28c3d0

;==============================================
loc_8c0396d0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA8,PC),r13
	mov.l @r13,r0
	cmp/eq 0x10,r0
	bt.s loc_8c039730
	mov r0,r7
	mov r15,r0
	add 0x10,r0
	add 0x04,r0
	tst 0x03,r0
	bt loc_8c0396f4
	mov r15,r2
	add 0x10,r2
	bra loc_8c0396fc
	add 0x08,r2

loc_8c0396f4:
	mov r15,r3
	add 0x10,r3
	mov r3,r2
	add 0x04,r2

loc_8c0396fc:
	shll2 r7
	mov.l @(0x88,PC),r3
	shll2 r7
	mov.l r2,@r15
	shll2 r7
	add r3,r7
	mov.b r4,@r7
	mov r5,r0
	nop
	mov.b r0,@(0x1,r7)
	mov r6,r0
	nop
	mov r7,r4
	mov.l @(0x74,PC),r2
	add 0x03,r4
	mov.b r0,@(0x2,r7)
	mov.l @r15,r6
	mov r4,r14
	jsr @r2
	mov.l @(0x10,r15),r5
	add r0,r14
	mov 0x00,r3
	mov.b r3,@r14
	mov.l @r13,r2
	add 0x01,r2
	mov.l r2,@r13

loc_8c039730:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03973a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x50,PC),r13
	mov.l @(0x48,PC),r3
	bra loc_8c039752
	mov.l @r3,r14

loc_8c03974a:
	mov.l @r13+,r3
	jsr @r3
	nop
	add 0xFF,r14

loc_8c039752:
	tst r14,r14
	bf loc_8c03974a
	mov.l @(0x40,PC),r12
	mov.l @(0x2C,PC),r13
	mov.l @(0x28,PC),r3
	bra loc_8c039768
	mov.l @r3,r14

loc_8c039760:
	jsr @r12
	mov r13,r4
	add 0x40,r13
	add 0xFF,r14

loc_8c039768:
	tst r14,r14
	bf loc_8c039760
	mov.l @(0x2C,PC),r2
	mov 0x08,r5
	jsr @r2
	mov r5,r4
	lds.l @r15+,pr
	mov.l @(0x28,PC),r3
	mov 0xFF,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c289f88
	#data 0x8c28bf90
	#data bank12.loc_8c129804
	#data 0x8c289f8c
	#data 0x8c28c3d0
	#data loc_8c031108
	#data bank11.loc_8c11efc0
	#data bank11.loc_8c11f1c0

;==============================================
loc_8c0397a4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	add 0xFC,r15
	mov.w @(0x11E,PC),r12
	mov.l @(0x12C,PC),r0
	mul.l r12,r4
	mov.w @(0x11A,PC),r6
	mov.l @(0x130,PC),r3
	sts macl,r12
	mov.l r12,@r15
	mov.b @(r0,r12),r12
	mov.l @(0x120,PC),r0
	mov.l @r3,r10
	mov.b @(r0,r12),r12
	mov.l @(0x120,PC),r0
	mov r12,r2
	and r6,r2
	mov.b @(r0,r4),r5
	shll8 r2
	mov.w @(0x102,PC),r0
	shll2 r2
	mov r5,r11
	and r6,r11
	shll2 r2
	mov.l @(r0,r10),r10
	shll2 r2
	shll8 r11
	shll2 r11
	shll r2
	shll2 r11
	add r2,r10
	mov.l @(0x104,PC),r2
	shll2 r11
	shll r11
	add r2,r11
	mov 0x03,r6
	mov.l @(0x100,PC),r13
	mov 0x03,r7
	mov.w @(0xDE,PC),r1
	and r12,r7
	and r5,r6
	mov 0x04,r0
	add r13,r7
	mov 0x00,r14
	add r13,r6

loc_8c039804:
	mov.b @r6,r13
	mov.b @r7,r12
	shll8 r13
	shll8 r12
	shll2 r13
	shll2 r12
	shll2 r12
	shll2 r13
	shll r12
	shll r13
	add r11,r13
	add r10,r12
	bra loc_8c039828
	mov r1,r5

loc_8c039820:
	mov.l @r12+,r3
	add 0xFF,r5
	mov.l r3,@r13
	add 0x04,r13

loc_8c039828:
	tst r5,r5
	bf loc_8c039820
	add 0x01,r14
	cmp/ge r0,r14
	add 0x04,r6
	bf.s loc_8c039804
	add 0x04,r7
	mov.l @(0xB4,PC),r2
	mov 0x29,r0
	mov.l @(0xBC,PC),r3
	mov.l @r2,r6
	mov.l @r15,r7
	mov.b @(r0,r6),r1
	tst r1,r1
	bt.s loc_8c039852
	add r3,r7
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r7),r5
	mov.l @(0xAC,PC),r0
	bra loc_8c039858
	nop

loc_8c039852:
	mov.w @(0x84,PC),r0
	mov.b @(r0,r7),r5
	mov.l @(0xA8,PC),r0

loc_8c039858:
	mov.w @(0x80,PC),r13
	mov 0x01,r11
	mov.b @(r0,r5),r5
	and r4,r11
	mov.w @(0x72,PC),r0
	shll16 r11
	and r5,r13
	mov.l @(0x9C,PC),r14
	shll8 r13
	mov.l @(r0,r6),r3
	shll2 r13
	mov.l @(0x98,PC),r2
	shll2 r13
	mov.w @(0x68,PC),r12
	mov 0x07,r0
	mov r14,r4
	shll2 r13
	mov r14,r10
	and r5,r0
	mov r14,r6
	add r3,r13
	mov.b @(r0,r14),r3
	shll r11
	shll8 r3
	shll2 r3
	shll2 r3
	add r3,r13
	mov.l @(0x60,PC),r3
	add r2,r13
	add r3,r11
	bra loc_8c0398c0
	add 0x08,r10

loc_8c039898:
	mov.b @r6,r7
	mov.b @r4,r14
	shll8 r7
	shll8 r14
	shll2 r14
	shll2 r7
	shll r14
	shll r7
	add r11,r7
	add r13,r14
	bra loc_8c0398b8
	mov r12,r5

loc_8c0398b0:
	mov.l @r14+,r3
	add 0xFF,r5
	mov.l r3,@r7
	add 0x04,r7

loc_8c0398b8:
	tst r5,r5
	bf loc_8c0398b0
	add 0x01,r4
	add 0x01,r6

loc_8c0398c0:
	cmp/hs r10,r4
	bf loc_8c039898
	add 0x04,r15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x05a4
	#data 0x00fc
	#data 0x0094
	#data 0x0800
	#data 0x052c
	#data 0x00f8
	#data 0x0200
	#align4
	#data 0x8c26886c
	#data bank13.loc_8c1380b0
	#data bank14.loc_8c14d970
	#data 0x8c26823c
	#data 0x0cdb0000
	#data bank13.loc_8c1380a0
	#data 0x8c268340
	#data bank13.loc_8c13812c
	#data bank13.loc_8c1380f0
	#data bank14.loc_8c14d976
	#data 0x001e0000

;==============================================
loc_8c03990c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r8,@-r15
	add 0xF8,r15
	mov r4,r3
	mov.l @(0x12C,PC),r2
	shll r4
	mov.w @(0x11E,PC),r14
	add r3,r4
	mov.l @(0x128,PC),r10
	add r4,r2
	mov.l r2,@(0x4,r15)
	mov 0x39,r7
	mov 0x03,r13

loc_8c03992e:
	mov r7,r6
	mov r6,r2
	and r14,r2
	mov.l @(0x11C,PC),r3
	mov.l @(0x4,r15),r4
	shll8 r2
	mov.w @(0x106,PC),r0
	shll2 r2
	add 0x01,r4
	mov.l @(0x114,PC),r1
	shll2 r2
	mov.l r4,@(0x4,r15)
	mov.l @r3,r8
	shll2 r2
	add 0xFF,r4
	mov.l @(r0,r8),r8
	shll r2
	mov.b @r4,r4
	mov 0x00,r12
	add r2,r8
	mov r4,r2
	and r14,r2
	shll8 r2
	mov r4,r5
	shll2 r2
	shll2 r2
	shll2 r2
	shll r2
	and r13,r5
	add r1,r2
	add r10,r5
	mov.l r2,@r15
	mov r6,r4
	and r13,r4
	add r10,r4

loc_8c039974:
	mov.b @r5,r1
	mov.b @r4,r11
	shll8 r1
	mov.l @r15,r3
	shll8 r11
	mov.w @(0xC4,PC),r6
	shll2 r11
	shll2 r1
	shll2 r1
	shll2 r11
	shll r11
	shll r1
	add r3,r1
	add r8,r11

loc_8c039990:
	mov.l @r11+,r2
	add 0xFF,r6
	tst r6,r6
	mov.l r2,@r1
	bf.s loc_8c039990
	add 0x04,r1
	mov 0x04,r2
	add 0x01,r12
	cmp/ge r2,r12
	add 0x04,r5
	bf.s loc_8c039974
	add 0x04,r4
	mov 0x3C,r2
	add 0x01,r7
	cmp/ge r2,r7
	bf loc_8c03992e
	add 0x08,r15
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0399c0:
	mov.w @(0x84,PC),r5
	mov 0x1B,r3
	mov.l @(0x94,PC),r0
	mul.l r5,r4
	sts macl,r5
	mov.b @(r0,r5),r5
	cmp/ge r3,r5
	bf loc_8c0399d2
	add 0xFD,r5

loc_8c0399d2:
	mov r5,r1
	shll2 r5
	mov.l @(0x7C,PC),r2
	shll r5
	mov.w @(0x66,PC),r0
	add r1,r5
	mov.l @r2,r3
	shll8 r5
	shll2 r5
	mov.l @(0x7C,PC),r2
	mov.l @(r0,r3),r3
	mov 0x01,r6
	shll r5
	mov.l @(0x70,PC),r1
	and r4,r6
	mov.w @(0x56,PC),r4
	add r3,r5
	mov r6,r3
	shll2 r6
	shll r6
	add r3,r6
	shll8 r6
	shll2 r6
	shll r6
	add r2,r6
	add r1,r5

loc_8c039a06:
	mov.l @r5+,r2
	add 0xFF,r4
	tst r4,r4
	mov.l r2,@r6
	bf.s loc_8c039a06
	add 0x04,r6
	rts
	nop

;==============================================
loc_8c039a16:
	add 0xFC,r15
	mov 0x1B,r3
	cmp/ge r3,r5
	bf.s loc_8c039a22
	mov r5,r6
	add 0xFD,r6

loc_8c039a22:
	mov.l @(0x44,PC),r5
	mov r6,r0
	nop
	shll2 r0
	mov.l @(0x40,PC),r2
	mov.l @(r0,r5),r3
	mov.l @(0x40,PC),r1
	add r5,r3
	mov r4,r5
	shll16 r5
	mov r3,r4
	shll r5
	mov.l r3,@r15
	add r2,r5
	jmp @r1
	add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00fc
	#data 0x0094
	#data 0x0800
	#data 0x05a4
	#data 0x1200
	#align4
	#data bank14.loc_8c14d97e
	#data bank13.loc_8c1380a0
	#data 0x8c26823c
	#data 0x0cdb0000
	#data 0x8c26886c
	#data 0x002e0000
	#data 0x0cdf0000
	#data 0x0c520000
	#data 0x0c720000
	#data loc_8c03552a

;==============================================
loc_8c039a74:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xEC,r15
	mov.l @(0x124,PC),r2
	shll16 r4
	mov.w @(0x11E,PC),r0
	shll2 r4
	mov.l @r2,r3
	mov 0x01,r10
	shll2 r4
	mov r10,r11
	mov.l @(r0,r3),r1
	mov r7,r3
	add 0x03,r3
	mov.l @(0x114,PC),r9
	mov.l r1,@(0x8,r15)
	mov 0x00,r14
	mov.l r4,@r15
	mov 0x0A,r4
	mov.l r3,@(0x10,r15)
	mov r7,r13
	add 0x7F,r11
	mov 0x0F,r12

loc_8c039aac:
	mov.l @r15,r2
	tst r9,r2
	bf loc_8c039ab6
	tst r14,r14
	bt loc_8c039ac2

loc_8c039ab6:
	mov.l @r15,r8
	mov 0xE4,r3
	mov r10,r14
	shld r3,r8
	bra loc_8c039ac4
	and r12,r8

loc_8c039ac2:
	mov r4,r8

loc_8c039ac4:
	mov.l @(0xEC,PC),r0
	mov.l @r15,r2
	shll2 r2
	shll2 r2
	mov.l r2,@r15
	mov.b @(r0,r8),r3
	mov r11,r8
	mov.l @(0x8,r15),r1
	extu.b r3,r3
	shll8 r3
	shll r3
	add r1,r3
	mov.l r3,@(0x4,r15)
	mov.b @r13,r1
	extu.b r1,r1
	shll8 r1
	shll r1
	add r6,r1
	mov.l r1,@(0xC,r15)

loc_8c039aea:
	mov.l @(0xC,r15),r3
	dt r8
	add 0x04,r3
	mov.l r3,@(0xC,r15)
	mov.l @(0x4,r15),r2
	add 0x04,r2
	mov.l r2,@(0x4,r15)
	add 0xFC,r2
	mov.l @r2,r1
	mov.l r1,@-r3
	bf loc_8c039aea
	mov.l @(0x10,r15),r2
	add 0x01,r13
	cmp/hs r2,r13
	bf loc_8c039aac
	mov r5,r13
	mov 0x03,r5

loc_8c039b0c:
	mov r13,r2
	tst r9,r2
	bf loc_8c039b16
	tst r14,r14
	bt loc_8c039b22

loc_8c039b16:
	mov 0xE4,r3
	mov r13,r8
	shld r3,r8
	mov r10,r14
	bra loc_8c039b24
	and r12,r8

loc_8c039b22:
	mov r4,r8

loc_8c039b24:
	mov.l @(0x8C,PC),r0
	shll2 r13
	mov.l @(0x8,r15),r2
	shll2 r13
	mov.b @(r0,r8),r3
	extu.b r3,r3
	shll8 r3
	shll r3
	add r2,r3
	mov.l r3,@(0x4,r15)
	mov r5,r0
	nop
	mov.b @(r0,r7),r2
	mov r11,r8
	extu.b r2,r2
	shll8 r2
	shll r2
	add r6,r2
	mov.l r2,@r15

loc_8c039b4a:
	mov.l @r15,r3
	dt r8
	add 0x04,r3
	mov.l r3,@r15
	mov.l @(0x4,r15),r2
	add 0x04,r2
	mov.l r2,@(0x4,r15)
	add 0xFC,r2
	mov.l @r2,r1
	mov.l r1,@-r3
	bf loc_8c039b4a
	add 0x01,r5
	cmp/ge r4,r5
	bf loc_8c039b0c
	mov 0xE4,r3
	mov.l @(0x48,PC),r0
	shld r3,r13
	mov.l @(0x8,r15),r3
	mov r13,r4
	and r12,r4
	mov.b @(r0,r4),r14
	extu.b r14,r14
	shll8 r14
	shll r14
	add r3,r14
	mov r5,r0
	nop
	mov.b @(r0,r7),r13
	mov r11,r4
	extu.b r13,r13
	shll8 r13
	shll r13
	add r6,r13

loc_8c039b8c:
	mov.l @r14+,r2
	add 0xFF,r4
	tst r4,r4
	mov.l r2,@r13
	bf.s loc_8c039b8c
	add 0x04,r13
	add 0x14,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0094
	#align4
	#data 0x8c26823c
	#data 0xf0000000
	#data bank13.loc_8c1381e8

;==============================================
loc_8c039bb8:
	mov.l r14,@-r15
	mov r4,r1
	mov.l @(0x120,PC),r3
	mov 0x0A,r7
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(0x10A,PC),r0
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r3,r14
	mov.l @(r0,r14),r14
	mov r7,r0
	nop
	mov.l @(0x110,PC),r2
	jsr @r2
	nop
	mov r0,r6
	tst r6,r6
	bf loc_8c039be0
	mov r7,r6

loc_8c039be0:
	mov.l @(0x104,PC),r10
	mov r6,r0
	nop
	mov.b @(r0,r10),r1
	mov.w @(0xE8,PC),r0
	extu.b r1,r1
	mov.w @(0xE6,PC),r11
	shll8 r1
	mov.l @(r0,r5),r12
	shll r1
	mov r11,r6
	add r14,r1

loc_8c039bf8:
	mov.l @r1+,r2
	add 0xFF,r6
	tst r6,r6
	mov.l r2,@r12
	bf.s loc_8c039bf8
	add 0x04,r12
	mov.l @(0xE4,PC),r2
	mov r4,r1
	jsr @r2
	mov r7,r0
	mov.b @(r0,r10),r12
	mov r11,r6
	mov.w @(0xC4,PC),r0
	extu.b r12,r12
	shll8 r12
	mov.l @(r0,r5),r1
	shll r12
	add r14,r12

loc_8c039c1c:
	mov.l @r12+,r2
	add 0xFF,r6
	tst r6,r6
	mov.l r2,@r1
	bf.s loc_8c039c1c
	add 0x04,r1
	mov 0x01,r2
	cmp/hi r2,r4
	bf loc_8c039c32
	bra loc_8c039c34
	mov 0x0E,r4

loc_8c039c32:
	mov r7,r4

loc_8c039c34:
	mov r4,r0
	nop
	mov.b @(r0,r10),r7
	mov r11,r4
	mov.w @(0x9C,PC),r0
	extu.b r7,r7
	mov.w @(0x96,PC),r3
	shll8 r7
	mov.l @(r0,r5),r6
	shll r7
	add r3,r6
	add r14,r7

loc_8c039c4c:
	mov.l @r7+,r2
	add 0xFF,r4
	tst r4,r4
	mov.l r2,@r6
	bf.s loc_8c039c4c
	add 0x04,r6
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;==============================================
loc_8c039c64:
	mov.l r14,@-r15
	cmp/pz r4
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0x6C,PC),r3
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r7
	mov.l @r3,r6
	mov.l @(0x74,PC),r14
	bt.s loc_8c039d04
	add r5,r7
	mov.b @r7,r11
	mov r14,r9
	mov.w @(0x4A,PC),r0
	add 0x10,r9
	extu.b r11,r11
	mov.l @(0x6C,PC),r1
	mov.l @(r0,r6),r2
	shll8 r11
	shll r11
	mov.l @(0x68,PC),r10
	mov.w @(0x3E,PC),r12
	add r2,r11
	mov r14,r13
	add r1,r11

loc_8c039c9c:
	mov.b @r13+,r4
	mov r12,r6
	mov 0x00,r5
	extu.b r4,r4
	shll8 r4
	shll r4
	jsr @r10
	add r11,r4
	cmp/hs r9,r13
	bf loc_8c039c9c
	mov.l @(0x4C,PC),r2
	mov r14,r9
	add 0x10,r9
	mov r14,r13
	add r2,r11

loc_8c039cba:
	mov.b @r13+,r4
	mov r12,r6
	mov 0x00,r5
	extu.b r4,r4
	shll8 r4
	shll r4
	jsr @r10
	add r11,r4
	cmp/hs r9,r13
	bf loc_8c039cba
	bra loc_8c039f30
	nop

;##############################################
	#data 0x0094
	#data 0x00a8
	#data 0x0200
	#data 0x00c8
	#data 0x1000
	#data 0x0098
	#align4
	#data 0x8c26823c
	#data bank12.loc_8c1291dc
	#data bank13.loc_8c138204
	#data bank12.loc_8c12939c
	#data bank13.loc_8c138213
	#data bank13.loc_8c138223
	#data 0x00020000
	#data bank12.loc_8c129728
	#data 0x00010000

;----------------------------------------------
loc_8c039d04:
	mov.w @(0x80,PC),r0
	mov r4,r5
	shll r5
	mov r4,r3
	mov.b @(r0,r6),r0
	add r3,r5
	shll2 r5
	shll r5
	cmp/eq 0x00,r0
	bt loc_8c039d24
	cmp/eq 0x01,r0
	bt loc_8c039d2a
	cmp/eq 0x02,r0
	bt loc_8c039d30
	bra loc_8c039d34
	nop

loc_8c039d24:
	mov.l @(0x68,PC),r13
	bra loc_8c039d32
	nop

loc_8c039d2a:
	mov.l @(0x68,PC),r13
	bra loc_8c039d32
	nop

loc_8c039d30:
	mov.l @(0x64,PC),r13

loc_8c039d32:
	add r5,r13

loc_8c039d34:
	mov.b @r7,r12
	mov 0x04,r9
	mov.w @(0x4E,PC),r0
	mov 0x00,r4
	extu.b r12,r12
	mov.l @(0x5C,PC),r3
	shll8 r12
	mov.l @(r0,r6),r11
	shll r12
	mov.l @(0x58,PC),r1
	mov.w @(0x40,PC),r5
	add r11,r12
	add r3,r12

loc_8c039d4e:
	mov.b @r13,r0
	add 0xFF,r0
	shll2 r0
	add r4,r0
	mov.b @(r0,r1),r7
	extu.b r7,r7
	shll8 r7
	shll r7
	add r11,r7
	mov r4,r0
	nop
	mov.b @(r0,r14),r10
	mov r5,r6
	extu.b r10,r10
	shll8 r10
	shll r10
	add r12,r10

loc_8c039d70:
	mov.l @r7+,r2
	add 0xFF,r6
	tst r6,r6
	mov.l r2,@r10
	bf.s loc_8c039d70
	add 0x04,r10
	add 0x01,r4
	cmp/ge r9,r4
	bf loc_8c039d4e
	mov.l @(0x20,PC),r1
	bra loc_8c039dde
	mov 0x07,r9

;##############################################
	#data 0x00ad
	#data 0x0094
	#data 0x0080
	#align4
	#data 0x8c2897e0
	#data 0x8c2899d8
	#data 0x8c212cec
	#data 0x00020000
	#data bank13.loc_8c138168
	#data bank13.loc_8c1381bc

;----------------------------------------------
loc_8c039da8:
	mov r4,r0
	nop
	mov r13,r3
	add 0x0C,r3
	add 0xFC,r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	mov.b @(r0,r1),r10
	extu.b r10,r10
	shll8 r10
	shll r10
	add r11,r10
	mov r4,r0
	nop
	mov.b @(r0,r14),r7
	mov r5,r6
	extu.b r7,r7
	shll8 r7
	shll r7
	add r12,r7

loc_8c039dd0:
	mov.l @r10+,r2
	add 0xFF,r6
	tst r6,r6
	mov.l r2,@r7
	bf.s loc_8c039dd0
	add 0x04,r7
	add 0x01,r4

loc_8c039dde:
	cmp/ge r9,r4
	bf loc_8c039da8
	mov.l @(0xE8,PC),r1
	mov.b @(0x7,r13),r0
	mov.b @(r0,r1),r7
	extu.b r7,r7
	shll8 r7
	shll r7
	add r11,r7
	mov r4,r0
	nop
	mov.b @(r0,r14),r10
	mov r5,r6
	extu.b r10,r10
	shll8 r10
	shll r10
	add r12,r10

loc_8c039e00:
	mov.l @r7+,r2
	add 0xFF,r6
	tst r6,r6
	mov.l r2,@r10
	bf.s loc_8c039e00
	add 0x04,r10
	mov.b @(0x8,r13),r0
	add 0x01,r4
	mov 0x0A,r10
	extu.b r0,r1
	mov r10,r0
	nop
	mov.l @(0xB4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c039e26
	mov r0,r7
	mov r10,r7

loc_8c039e26:
	mov.l @(0xAC,PC),r6
	mov r7,r0
	nop
	mov.b @(r0,r6),r9
	extu.b r9,r9
	shll8 r9
	shll r9
	add r11,r9
	mov r4,r0
	nop
	mov.b @(r0,r14),r1
	mov r5,r7
	extu.b r1,r1
	shll8 r1
	shll r1
	add r12,r1

loc_8c039e46:
	mov.l @r9+,r2
	add 0xFF,r7
	tst r7,r7
	mov.l r2,@r1
	bf.s loc_8c039e46
	add 0x04,r1
	mov.b @(0x8,r13),r0
	add 0x01,r4
	mov.l @(0x80,PC),r3
	extu.b r0,r1
	jsr @r3
	mov r10,r0
	mov.b @(r0,r6),r1
	extu.b r1,r1
	shll8 r1
	shll r1
	add r11,r1
	mov r4,r0
	nop
	mov.b @(r0,r14),r9
	mov r5,r7
	extu.b r9,r9
	shll8 r9
	shll r9
	add r12,r9

loc_8c039e78:
	mov.l @r1+,r2
	add 0xFF,r7
	tst r7,r7
	mov.l r2,@r9
	bf.s loc_8c039e78
	add 0x04,r9
	bra loc_8c039eb4
	nop

loc_8c039e88:
	mov r4,r1
	add 0x01,r1
	add r6,r1
	mov.b @r1,r1
	extu.b r1,r1
	shll8 r1
	shll r1
	add r11,r1
	mov r4,r0
	nop
	mov.b @(r0,r14),r9
	mov r5,r7
	extu.b r9,r9
	shll8 r9
	shll r9
	add r12,r9
 
loc_8c039ea8:
	mov.l @r1+,r2
	add 0xFF,r7
	tst r7,r7
	mov.l r2,@r9
	bf.s loc_8c039ea8
	add 0x04,r9

loc_8c039eb4:
	mov 0x0D,r2
	add 0x01,r4
	cmp/ge r2,r4
	bf loc_8c039e88
	mov.b @(0x8,r13),r0
	mov 0x01,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c039edc
	bra loc_8c039ede
	mov 0x0E,r7

;##############################################
	#align4
	#data bank13.loc_8c1381f3
	#data bank12.loc_8c129128
	#data bank13.loc_8c1381f5
	#data bank12.loc_8c1292d4

;----------------------------------------------
loc_8c039edc:
	mov r10,r7

loc_8c039ede:
	mov r7,r0
	nop
	mov.b @(r0,r6),r3
	extu.b r3,r3
	shll8 r3
	shll r3
	add r11,r3
	mov r3,r6
	mov r4,r0
	nop
	mov.b @(r0,r14),r7
	mov r5,r4
	extu.b r7,r7
	shll8 r7
	shll r7
	add r12,r7

loc_8c039efe:
	mov.l @r6+,r2
	add 0xFF,r4
	tst r4,r4
	mov.l r2,@r7
	bf.s loc_8c039efe
	add 0x04,r7
	mov.l @(0xD0,PC),r3
	mov.w @(0xBA,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bt loc_8c039f30
	lds.l @r15+,pr
	mov.l @(0xC4,PC),r6
	mov r14,r7
	mov.l @(0x10,r13),r5
	mov.l @r15+,r9
	add r12,r6
	mov.l @(0x14,r13),r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c039a74
	mov.l @r15+,r14

loc_8c039f30:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c039f40:
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0xA0,PC),r2
	mov.w @(0x7E,PC),r4
	mov.l @(0x98,PC),r5
	jsr @r2
	nop
	mov.l @(0x98,PC),r3
	mov.w @(0x76,PC),r4
	mov.l @(0x98,PC),r5
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c039f5c:
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x84,PC),r2
	mov.w @(0x66,PC),r4
	mov.l @(0x88,PC),r5
	jsr @r2
	nop
	mov.l @(0x7C,PC),r3
	mov.w @(0x5E,PC),r4
	mov.l @(0x84,PC),r5
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c039f78:
	mov.w @(0x58,PC),r0
	sts.l pr,@-r15
	mov.l @(r0,r4),r5
	mov.l @(0x80,PC),r3
	mov.l @(0x4,r5),r4
	add r5,r4
	mov.l @(0x74,PC),r5
	jsr @r3
	nop
	mov.l @(0x58,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0x58,PC),r3
	mov.w @(0x40,PC),r4
	mov.l @(0x64,PC),r5
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c039f9a:
	sts.l pr,@-r15
	mov.w @(0x34,PC),r0
	mov.l @(0x60,PC),r2
	mov.l r4,@-r15
	mov.l @(r0,r4),r4
	mov.l @(0x54,PC),r5
	mov.l @(0x8,r4),r3
	jsr @r2
	add r3,r4
	mov.l @(0x34,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.w @(0x22,PC),r0
	mov.l @r15,r4
	mov.w @(0x20,PC),r2
	mov.b @(r0,r4),r4
	mov.l @(0x40,PC),r5
	extu.b r4,r4
	shlr r4
	add r2,r4
	add 0x04,r15
	mov.l @(0x24,PC),r3
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00ad
	#data 0x0810
	#data 0x081c
	#data 0x0811
	#data 0x081d
	#align4
	#data 0x0c990184
	#data 0x0ca601a4
	#data 0x8c26823c
	#data 0x00010000
	#data bank11.loc_8c11b800
	#data 0x0cdb0000
	#data bank11.loc_8c11b810
	#data 0x0cdf0000
	#data 0x0cdd0000
	#data 0x0cdf4800
	#data 0x0ce60000
	#data loc_8c03552a


;==============================================
loc_8c03a004:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x2C,PC),r10
	mov.l @(0x30,PC),r13
	mov.b @r10,r3
	tst r3,r3
	bf loc_8c03a022
	bra loc_8c03a162
	nop

loc_8c03a022:
	mov.l @(0x30,PC),r14
	mov.b @r13,r0
	mov.l @(0x24,PC),r11
	mov.l @(0x24,PC),r12
	add 0xFF,r0
	mov 0x1D,r1
	cmp/hs r1,r0
	bf loc_8c03a036
	bra loc_8c03a162
	nop

loc_8c03a036:
	shll r0
	mov r0,r1
	mova @(0x1C,PC),r0
	mov.w @(r0,r1),r0

;8c03a03e
	braf r0
	nop

;##############################################
	#align4
	#data 0x8c26a960
	#data 0x8c26a961
	#data 0x8c26823c
	#data bank11.loc_8c11b800
	#data bank11.loc_8c11b810
	;braf 8c03a03e
	#data 0x0050
	#data 0x0058
	#data 0x0060
	#data 0x006e
	#data 0x006e
	#data 0x0084
	#data 0x0084
	#data 0x0084
	#data 0x0084
	#data 0x0084
	#data 0x009e
	#data 0x009e
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2
	#data 0x00e2

;----------------------------------------------
loc_8c03a090:
	stc sr,r1
	bsr loc_8c039f40
	nop
	bra loc_8c03a162
	nop

loc_8c03a09a:
	bsr loc_8c039f5c
	nop
	bra loc_8c03a162
	nop

loc_8c03a0a2:
	bsr loc_8c039f40
	nop
	mov 0x01,r2
	mov 0x02,r3
	mov.b r2,@r10
	bra loc_8c03a168
	mov.b r3,@r13

loc_8c03a0b0:
	jsr @r12
	mov 0x00,r4
	mov.b @r13,r5
	mov.l @(0xD4,PC),r3
	add 0xFC,r5
	mov.w @(0xBC,PC),r4
	shll16 r5
	shll2 r5
	shll r5
	bra loc_8c03a15e
	add r3,r5

loc_8c03a0c6:
	jsr @r12
	mov 0x00,r4
	mov.b @r13,r5
	mov.l @(0xC0,PC),r3
	mov.l r5,@r15
	add 0xFA,r5
	shll16 r5
	mov.w @(0xA4,PC),r2
	mov.l @r15,r4
	shll r5
	add r3,r5
	bra loc_8c03a15e
	add r2,r4

loc_8c03a0e0:
	jsr @r12
	mov 0x00,r4
	mov.w @(0x96,PC),r0
	mov.l @r11,r12
	mov.l @(0xA8,PC),r9
	mov.b @(r0,r12),r0
	cmp/eq 0x00,r0
	bt loc_8c03a106
	cmp/eq 0x01,r0
	bt loc_8c03a0fc
	cmp/eq 0x02,r0
	bt loc_8c03a106
	bra loc_8c03a162
	nop

loc_8c03a0fc:
	mov.w @(0x80,PC),r0
	mov.w @(0x80,PC),r4
	mov.l @(r0,r12),r5
	bra loc_8c03a11c
	add r9,r5

loc_8c03a106:
	mov.w @(0x76,PC),r0
	mov.w @(0x78,PC),r4
	mov.l @(r0,r12),r5
	jsr @r14
	add r9,r5
	mov.w @(0x6C,PC),r0
	mov.l @r11,r5
	mov.l @(0x80,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(0x60,PC),r4
	add r3,r5

loc_8c03a11c:
	jsr @r14
	nop
	bra loc_8c03a162
	nop

loc_8c03a124:
	jsr @r12
	mov 0x00,r4
	mov.b @r13,r3
	mov.w @(0x52,PC),r0
	mov.l @r11,r5
	add 0xF3,r3
	mov.l r3,@r15
	shll16 r3
	mov.l @(r0,r5),r5
	shll r3
	mov.l @r15,r0
	mov.w @(0x48,PC),r4
	add r3,r5
	and 0x01,r0
	bra loc_8c03a15e
	add r0,r4

loc_8c03a144:
	jsr @r12
	mov 0x00,r4
	mov.l @(0x50,PC),r3 ;Stage ID
	mov.l @(0x54,PC),r2
	mov.b @r3,r5
	mov.w @(0x36,PC),r4
	extu.b r5,r5
	shll8 r5
	shll2 r5
	shll2 r5
	shll2 r5
	shll r5
	add r2,r5

loc_8c03a15e:
	jsr @r14
	nop

loc_8c03a162:
	mov 0x00,r4
	mov.b r4,@r10
	mov.b r4,@r13

loc_8c03a168:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x081c
	#data 0x0817
	#data 0x00ad
	#data 0x0094
	#data 0x081b
	#data 0x0816
	#data 0x0910
	#data 0x0914
	#align4
	#data 0x0c420000
	#data 0x0c720000
	#data 0x00020000
	#data 0x00030000
	#data 0x8c26a95c
	#data 0x0cc60000

;==============================================
loc_8c03a1a4:
	add 0xFC,r15
	mov.l @(0x8C,PC),r2
	mov.l @(0x84,PC),r4
	mov.b @r2,r3
	mov.l @(0x78,PC),r7
	mov.l @(0x7C,PC),r5
	tst r3,r3
	bt.s loc_8c03a1f0
	mov r7,r6
	mov.l @(0x80,PC),r1
	mov.w @(0x62,PC),r3
	mov.l @r1,r0
	mov.b @(r0,r3),r3
	tst r3,r3
	bt loc_8c03a1f0
	mov.l @(0x74,PC),r3
	mov 0x01,r7
	mov.w @(0x54,PC),r1
	mov.l @r3,r0
	mov.w @(0x52,PC),r2
	mov.b @(r0,r1),r0
	mov.w @(0x50,PC),r1
	add 0xFF,r0
	mov.w @(0x4E,PC),r3
	xor r0,r7
	exts.b r7,r0
	muls.w r2,r0
	sts macl,r0
	add r6,r0
	mov.l r0,@r15
	mov.w @(r0,r1),r0
	mov.w r0,@(0x2,r4)
	mov.w r0,@r4
	mov.l @r15,r0
	mov.w @(r0,r3),r0
	mov.w r0,@(0x2,r5)
	bra loc_8c03a20e
	mov.w r0,@r5

loc_8c03a1f0:
	mov.w @(0x2E,PC),r0
	mov.l @(0x48,PC),r2
	mov.l r6,@r15
	mov.w @(r0,r6),r3
	mov.w r3,@r4
	mov.w @(0x22,PC),r4
	add r7,r4
	mov.w @(r0,r4),r3
	mov.w @(0x20,PC),r0
	mov.w r3,@r2
	mov.l @r15,r1
	mov.w @(r0,r1),r3
	mov.w r3,@r5
	mov.w @(r0,r4),r0
	mov.w r0,@(0x2,r5)

loc_8c03a20e:
	mov.l @(0x28,PC),r2
	mov.l @(0x2C,PC),r1
	mov.l @r2,r3
	mov.b @(0x3,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x008c
	#data 0x05a4
	#data 0x04f4
	#data 0x04f0
	#align4
	#data 0x8c268340
	#data 0x8c28c478
	#data 0x8c28c474
	#data 0x8c212cdb
	#data 0x8c26823c
	#data 0x8c28c476
	#data bank14.loc_8c14d9b4

;==============================================
loc_8c03a244:
	mov.l r14,@-r15
	mov.l r13,@-r15
	add 0xE0,r15
	mov.w @(0x104,PC),r0
	mov r15,r7
	mov.l @(0x110,PC),r5
	add 0x18,r7
	mov.l @(0x110,PC),r6
	mov r7,r3
	mov.l @(0x104,PC),r13
	add 0x04,r7
	mov.l r3,@(0xC,r15)
	mov.l @(r0,r6),r2
	mov.l @(r0,r5),r1
	mov.w @(0xF0,PC),r0
	or r2,r1
	mov.l @r13,r2
	mov.l @(0x30,r2),r2
	or r2,r1
	mov.l r1,@r3
	mov.l r7,@(0x8,r15)
	mov.l @(r0,r6),r3
	mov.l @(r0,r5),r2
	mov.l @r13,r1
	or r3,r2
	mov.w @(0xDC,PC),r0
	mov.l @(0x34,r1),r3
	or r3,r2
	mov.l r2,@r7
	mov r15,r7
	add 0x10,r7
	mov r7,r2
	mov.l r2,@(0x4,r15)
	mov.l @(r0,r6),r3
	mov.l @(r0,r5),r1
	or r3,r1
	mov.l @r13,r3
	mov.w @(0xC6,PC),r0
	exts.b r4,r14
	mov.l @(0x38,r3),r3
	shll2 r14
	add 0x04,r7
	or r3,r1
	mov.l r1,@r2
	shll r14
	mov.l r7,@r15
	mov.l @(r0,r6),r3
	mov.l @(r0,r5),r2
	mov.l @r13,r1
	or r3,r2
	mov.l @(0xBC,PC),r5
	mov.l @(0x3C,r1),r3
	mov 0x4C,r1
	or r3,r2
	mov r5,r3
	mov.l r2,@r7
	add 0x3C,r3
	mov 0x00,r2
	add r14,r3
	mov.l r2,@r3
	mov r5,r3
	add 0x3C,r3
	add r14,r3
	mov.l r2,@(0x4,r3)
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c03a370
	mov.l @(0x9C,PC),r4
	mov r5,r2
	add 0x10,r2
	mov r4,r3
	add 0x60,r3
	mov.l @r3,r0
	add r14,r2
	mov r5,r3
	add 0x10,r3
	mov.l r0,@r2
	mov r4,r2
	add 0x40,r2
	add r14,r3
	mov.l @r2,r2
	mov.l @r3,r0
	and r2,r0
	mov r5,r2
	add 0x10,r2
	mov.l r0,@r3
	add r14,r2
	mov r5,r3
	mov.l @r2,r0
	add 0x20,r3
	add r14,r3
	mov.l r0,@r3
	mov 0x64,r0
	mov r5,r3
	mov.l @(r0,r4),r2
	add 0x10,r3
	add r14,r3
	mov.l r2,@(0x4,r3)
	mov r5,r3
	add 0x10,r3
	mov 0x44,r0
	add r14,r3
	mov.l @(r0,r4),r2
	mov.l @(0x4,r3),r1
	mov 0x6C,r0
	and r2,r1
	mov r5,r2
	add 0x10,r2
	mov.l r1,@(0x4,r3)
	add r14,r2
	mov r5,r3
	mov.l @(0x4,r2),r1
	add 0x20,r3
	add r14,r3
	mov r4,r2
	mov.l r1,@(0x4,r3)
	mov r5,r3
	add 0x3C,r3
	add 0x68,r2
	add r14,r3
	mov.l @r2,r2
	mov.l @r3,r1
	or r2,r1
	mov.l r1,@r3
	mov r5,r3
	add 0x3C,r3
	mov.l @(r0,r4),r2
	add r14,r3
	mov.l @(0x4,r3),r1
	or r2,r1
	mov.l r1,@(0x4,r3)
	mov.b @(0xE,r4),r0
	bra loc_8c03a3d0
	mov.b r0,@(0xD,r5)

;##############################################
	#data 0x0544
	#data 0x0548
	#data 0x054c
	#data 0x0550
	#align4
	#data 0x8c26823c
	#data 0x8c268340
	#data pl_mem.player_start_charB
	#data 0x8c28c410
	#data 0x8c212f30

;----------------------------------------------
loc_8c03a370:
	mov.l @(0xC,r15),r3
	mov r5,r2
	mov.l @(0x98,PC),r0
	add 0x10,r2
	mov.l @r3,r3
	add r14,r2
	or r0,r3
	mov.l @(0x94,PC),r0
	mov.l r3,@r2
	mov r5,r3
	add 0x10,r3
	mov r5,r2
	add r14,r3
	mov.l @r3,r3
	add 0x20,r2
	add r14,r2
	mov.l r3,@r2
	mov r5,r2
	mov.l @(0x8,r15),r3
	add 0x10,r2
	add r14,r2
	mov.l @r3,r3
	or r0,r3
	mov.l r3,@(0x4,r2)
	mov r5,r3
	add 0x10,r3
	mov r5,r2
	add r14,r3
	mov.l @(0x4,r3),r3
	add 0x20,r2
	add r14,r2
	mov.l r3,@(0x4,r2)
	mov r5,r3
	mov.l @(0x4,r15),r2
	add 0x3C,r3
	add r14,r3
	mov.l @r2,r2
	mov.l @r3,r0
	or r2,r0
	mov.l r0,@r3
	mov r5,r3
	mov.l @r15,r2
	add 0x3C,r3
	add r14,r3
	mov.l @(0x4,r3),r0
	mov.l @r2,r2
	or r2,r0
	mov.l r0,@(0x4,r3)

loc_8c03a3d0:
	mov r5,r3
	add 0x10,r3
	add r14,r3
	mov.l @(0x40,PC),r6
	mov.l @r3,r2
	mov.l @(0x40,PC),r4
	cmp/eq r6,r2
	bf loc_8c03a408
	mov r5,r1
	add 0x10,r1
	add r14,r1
	mov.l @(0x4,r1),r3
	cmp/eq r4,r3
	bf loc_8c03a408
	mov r5,r1
	add 0x3C,r1
	add r14,r1
	mov.l @r1,r3
	cmp/eq r6,r3
	bf loc_8c03a408
	mov r5,r1
	add 0x3C,r1
	add r14,r1
	mov.l @(0x4,r1),r3
	cmp/eq r4,r3
	bf loc_8c03a408
	mov 0x01,r0
	mov.b r0,@(0xD,r5)

loc_8c03a408:
	add 0x20,r15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x00ffff77
	#data 0x02000004
	#data 0xf8ffffff
	#data 0x07ffffff

;==============================================
;max stages check?
loc_8c03a420:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xFC,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c03a43e
	bra loc_8c03a77c
	nop

loc_8c03a43e:
	mov.l @(0xF4,PC),r12
	mov.l @(0xF4,PC),r3
	mov.w @(0xE4,PC),r0
	mov.l @r12,r4
	jsr @r3
	mov.b @(r0,r4),r4
	mov.w @(0xDC,PC),r0
	mov 0x01,r11
	mov.l @r12,r2
	mov.b @(r0,r2),r3
	tst r11,r3
	bf loc_8c03a45c
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov 0x00,r4

loc_8c03a45c:
	mov.w @(0xCA,PC),r0
	mov 0x02,r10
	mov.l @r12,r2
	mov.b @(r0,r2),r3
	tst r10,r3
	bf loc_8c03a46e
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c03a46e:
	mov.l @r12,r2
	mov 0x00,r13
	mov.b @(0x3,r2),r0
	add 0x01,r0
	mov.b r0,@(0x3,r2)
	mov.l @r12,r3
	mov r13,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.l @r12,r3
	mov.b r0,@(0x5,r3)
	mov.l @r12,r3
	mov.b r0,@(0x6,r3)
	mov.l @r12,r3
	mov.b r0,@(0x7,r3)
	mov.l @(0xB0,PC),r3
	jsr @r3
	nop
	mov.l @(0xB0,PC),r2
	jsr @r2
	nop
	mov.l @(0xAC,PC),r3
	jsr @r3
	nop
	mov.l @(0xAC,PC),r9
	mov 0x2A,r0
	mov.l @(0xAC,PC),r14
	mov 0x4C,r1
	mov.b @(r0,r9),r2
	mov 0x4E,r0
	mov.b r2,@(r0,r14)
	mov.l @r12,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c03a4cc
	mov.l @(0x9C,PC),r2
	mov 0x11,r3
	mov 0x4F,r0
	mov.l @(0x9C,PC),r1
	mov.b r13,@(r0,r14)
	mov.b r3,@r2
	mov 0x1D,r3
	mov.l @(0x98,PC),r0
	mov.l @(0x98,PC),r2
	mov.b r11,@r1
	jsr @r2
	mov.b r3,@r0

loc_8c03a4cc:
	mov.w @(0x5C,PC),r0
	mov.l @r12,r1
	mov.b r11,@(r0,r1)
	mov r13,r0
	nop
	mov.b r0,@(0xD,r14)
	mov 0x4C,r1
	mov.l @r12,r0
	mov.l @(0x84,PC),r4
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bt.s loc_8c03a4ee
	mov 0xFF,r5
	mov.l @(0x80,PC),r3
	mov.b @r3,r0
	cmp/eq 0x02,r0
	bf loc_8c03a4fa

loc_8c03a4ee:
	mov.w @(0x3C,PC),r0
	mov.b r5,@r4
	mov.l @r12,r3
	mov.b r13,@(r0,r3)
	bra loc_8c03a574
	nop

loc_8c03a4fa:
	mov.w @(0x2C,PC),r0
	mov.b r13,@r4
	mov.l @r12,r2
	mov.b @(r0,r2),r3
	tst r11,r3
	bt loc_8c03a508
	mov.b r10,@r4
 
loc_8c03a508:
	mov.l @r12,r3
	mov.b @(r0,r3),r2
	tst r10,r2
	bt loc_8c03a512
	mov.b r11,@r4

loc_8c03a512:
	mov.w @(0x18,PC),r0
	mov.l @r12,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c03a56c
	mov.w @(0xA,PC),r0
	mov.l @r12,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c03a574
	bra loc_8c03a574
	mov.b r5,@r4

;##############################################
	#data 0x0084
	#data 0x009a
	#data 0x008c
	#align4
	#data bank02.loc_8c0279a4
	#data 0x8c26823c
	#data bank02.loc_8c027b30
	#data bank02.loc_8c028246
	#data bank04.loc_8c044d8c
	#data loc_8c0357d8
	#data loc_8c03580c
	#data 0x8c289750
	#data 0x8c28c410
	#data 0x8c26a95c
	#data 0x8c26a960
	#data 0x8c26a961
	#data bank11.loc_8c118960
	#data 0x8c28c46c
	#data 0x8c212cd0

;----------------------------------------------
loc_8c03a56c:
	mov.b @(r0,r2),r3
	mov.b r3,@r4
	mov.l @r12,r2
	mov.b r13,@(r0,r2)

loc_8c03a574:
	mov.l @r12,r3
	mov 0x19,r0
	mov.b r13,@(r0,r3)
	add 0x74,r0
	mov.l @r12,r3
	mov.b r13,@(r0,r3)
	add 0x01,r0
	mov.l @r12,r3
	mov.b r13,@(r0,r3)
	mov r13,r0
	nop
	mov r14,r4
	add 0x30,r4
	mov.b r0,@(0xC,r14)
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov r14,r4
	add 0x34,r4
	mov.w @(0xD4,PC),r3
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov 0x38,r0
	mov.b r13,@(r0,r14)
	mov 0x4C,r0
	mov.w r3,@(r0,r14)
	mov r13,r0
	nop
	mov.b r0,@(0xA,r14)
	mov 0x51,r0
	mov r9,r4
	mov.b r13,@(r0,r14)
	add 0x40,r4
	mov 0x50,r0
	mov.b r13,@(r0,r14)
	mov.l r13,@(0x1C,r9)
	mov.l r13,@(0x18,r9)
	mov.l r13,@(0x4,r4)
	mov.l r13,@r4
	mov r13,r0
	nop
	mov.l @(0xAC,PC),r3
	mov.b r0,@(0x8,r14)
	mov.b r0,@(0x9,r14)
	mov.l r0,@r3
	mov.w @(0xA2,PC),r1
	mov.l @r12,r0
	mov.b @(r0,r1),r0
	tst 0x03,r0
	bt loc_8c03a678
	mov.w @(0x98,PC),r0
	mov.l @r12,r2
	mov.b @(r0,r2),r0
	tst r11,r0
	bf loc_8c03a622
	mov r13,r0
	nop
	mov.b r0,@(0x2,r14)
	bsr loc_8c03a244
	mov 0x00,r4
	mov r14,r4
	add 0x10,r4
	mov.l @r4,r2
	mov.l @(0x8,r4),r3
	or r3,r2
	mov.l r2,@r4
	mov r14,r4
	add 0x10,r4
	mov.l @(0x4,r4),r2
	mov.l @(0xC,r4),r3
	or r3,r2
	mov.l r2,@(0x4,r4)
	mov r14,r4
	add 0x3C,r4
	mov.l @(0x10,r14),r1
	mov.l r1,@(0x20,r14)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x24,r14)
	mov.l @(0x8,r4),r3
	mov.l @r4,r2
	or r3,r2
	mov.l r2,@r4
	mov r14,r4
	add 0x3C,r4
	mov.l @(0x4,r4),r2
	mov.l @(0xC,r4),r3
	or r3,r2
	mov.l r2,@(0x4,r4)

loc_8c03a622:
	mov.w @(0x4C,PC),r0
	mov.l @r12,r1
	mov.b @(r0,r1),r3
	tst r10,r3
	bf loc_8c03a68c
	mov r13,r0
	nop
	mov.b r0,@(0x3,r14)
	bsr loc_8c03a244
	mov 0x01,r4
	mov r14,r4
	add 0x10,r4
	mov.l @(0x8,r4),r2
	mov.l @r4,r3
	or r3,r2
	mov.l r2,@(0x8,r4)
	mov r14,r4
	add 0x10,r4
	mov.l @(0xC,r4),r2
	mov.l @(0x4,r4),r3
	or r3,r2
	mov.l r2,@(0xC,r4)
	mov r14,r4
	add 0x3C,r4
	mov.l @(0x18,r14),r1
	mov.l r1,@(0x28,r14)
	mov.l @(0x1C,r14),r3
	mov.l r3,@(0x2C,r14)
	mov.l @r4,r3
	mov.l @(0x8,r4),r2
	or r3,r2
	mov.l r2,@(0x8,r4)
	mov r14,r4
	add 0x3C,r4
	mov.l @(0xC,r4),r2
	mov.l @(0x4,r4),r3
	or r3,r2
	bra loc_8c03a68c
	mov.l r2,@(0xC,r4)

;##############################################
	#data 0x0e10
	#data 0x0084
	#align4
	#data 0x8c28c470

;----------------------------------------------
loc_8c03a678:
	mov r14,r4
	add 0x02,r4
	mov r13,r0
	nop
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	bsr loc_8c03a244
	mov 0x00,r4
	bsr loc_8c03a244
	mov 0x01,r4

loc_8c03a68c:
	mov.l @(0x12C,PC),r2
	jsr @r2
	nop
	mov.l @(0x12C,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(0x128,PC),r2
	jsr @r2
	nop
	mov.l @(0x128,PC),r3
	jsr @r3
	nop
	mov.l @(0x124,PC),r2
	jsr @r2
	nop
	mov.l @(0x124,PC),r3
	jsr @r3
	nop
	mov.l @r12,r0
	mov 0x4C,r1
	mov.l @(0x11C,PC),r4
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf.s loc_8c03a6fa
	fldi0 fr4
	mov 0x04,r0
	mov.b r11,@r4
	mov.b r0,@(0x8,r4)
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mova @(0x10C,PC),r0
	fmov @r0,fr5
	mov 0x10,r0
	fmov fr5,@(r0,r4)
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr5,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	add 0x24,r0
	fmov fr4,@(r0,r4)
	mov.l @r12,r3
	mov r13,r0
	nop
	mov.w r0,@(0x8,r3)
	mov.l @(0xEC,PC),r3
	jsr @r3
	nop
	bra loc_8c03a730
	nop

loc_8c03a6fa:
	mov.b r11,@r4
	mov r11,r0
	nop
	mov.b r0,@(0x8,r4)
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mova @(0xDC,PC),r0
	fmov @r0,fr3
	mov 0x10,r0
	fmov fr3,@(r0,r4)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x58,r0
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	add 0x24,r0
	fmov fr4,@(r0,r4)
	mov 0x64,r0
	mov.l @r12,r3
	mov.w r0,@(0x8,r3)

loc_8c03a730:
	mov 0x33,r0
	mov.l @(0xBC,PC),r3
	mov.b r13,@(r0,r14)
	mov 0x36,r0
	jsr @r3
	mov.b r13,@(r0,r14)
	mov.l @(0xB4,PC),r2
	jsr @r2
	nop
	mov.l @(0xB8,PC),r2
	mov.l @(0xB0,PC),r3
	jsr @r2
	mov.l r0,@r3
	mov.l @(0xB4,PC),r1
	jsr @r1
	nop
	mov.l @(0xB0,PC),r2
	jsr @r2
	nop
	mov.l @(0xB0,PC),r1
	jsr @r1
	nop
	mov 0x04,r0
	fldi1 fr4
	mov.l @(0xA8,PC),r3
	fmov fr4,@r15
	fmov fr4,@(r0,r15)
	mov 0x08,r0
	fmov fr4,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0xA4,PC),r2
	mov.l @(0x9C,PC),r4
	jsr @r2
	nop
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x00,r4

loc_8c03a77c:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03a78e:
	mov.l @(0x8C,PC),r2
	mov.l @(0x8C,PC),r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x80,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(0x60,PC),r3
	mov.l @(0x58,PC),r4
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data loc_8c03d46e
	#data loc_8c032be0
	#data loc_8c0355a8
	#data loc_8c030e30
	#data loc_8c030f24
	#data bank02.loc_8c02e014
	#data 0x8c26a518
	#data 0x433e0000
	#data 0x444b16de
	#data bank02.loc_8c02e7bc
	#data 0x44870000
	#data 0x3dcccccd
	#data 0x42be0000
	#data bank0f.loc_8c0f7074
	#data bank0f.loc_8c0f35fc
	#data 0x8c28c468
	#data bank0f.loc_8c0f3954
	#data bank0f.loc_8c0f5768
	#data bank0f.loc_8c0f6780
	#data loc_8c031ef8
	#data loc_8c031f10
	#data loc_8c0305d8
	#data loc_8c0395ac
	#data bank02.loc_8c027b64
	#data 0x8c26823c
	#data bank14.loc_8c14d9d0
	#data bank04.loc_8c044ef0

;==============================================
loc_8c03a828:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0xF0,PC),r13
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov 0x38,r4
	mov.l @r13,r2
	mov 0x01,r5
	mov.w @(0xCE,PC),r0
	mov.l @(0xDC,PC),r14
	mov.b @(r0,r2),r3
	tst r5,r3
	bt.s loc_8c03a858
	mov 0x00,r12
	mov 0x37,r0
	bra loc_8c03a85c
	mov.b r5,@(r0,r14)

loc_8c03a858:
	mov 0x37,r0
	mov.b r12,@(r0,r14)

loc_8c03a85c:
	mov.w @(0xBA,PC),r3
	mov.l @r13,r4
	mov.w @(0xB4,PC),r0
	add r4,r3
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	or r3,r0
	cmp/eq 0x03,r0
	bt loc_8c03a89c
	mov.w @(0xA8,PC),r3
	mov.w @(0xA4,PC),r0
	add r4,r3
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	or r3,r0
	cmp/eq 0x01,r0
	bf loc_8c03a884
	mov 0x37,r0
	bra loc_8c03a888
	mov.b r5,@(r0,r14)

loc_8c03a884:
	mov 0x37,r0
	mov.b r12,@(r0,r14)

loc_8c03a888:
	mov.l @(0xA0,PC),r3
	mov 0x37,r0
	jsr @r3
	mov.b @(r0,r14),r4
	mov 0x37,r0
	mov r14,r3
	mov.b @(r0,r14),r2
	add 0x02,r3
	add r3,r2
	mov.b r12,@r2

loc_8c03a89c:
	mov.w @(0x7A,PC),r0
	mov.l @r13,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c03a8be
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x03,r0
	bt loc_8c03a8b6
	mov 0x37,r0
	mov.b @(r0,r14),r4
	bra loc_8c03a8b8
	add 0x0F,r4

loc_8c03a8b6:
	mov 0x18,r4

loc_8c03a8b8:
	mov.l @(0x74,PC),r3
	jsr @r3
	nop

loc_8c03a8be:
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c03a8e4
	mov.l @(0x70,PC),r3
	mov.w @(0x50,PC),r8
	mov.l @(0x68,PC),r2
	jsr @r3
	add r2,r8
	cmp/pz r0
	bf loc_8c03a8d8
	bra loc_8c03a8e2
	and 0x03,r0

loc_8c03a8d8:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c03a8e2:
	mov.b r0,@r8

loc_8c03a8e4:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c03a90a
	mov.l @(0x48,PC),r3
	mov.w @(0x2A,PC),r8
	mov.l @(0x48,PC),r2
	jsr @r3
	add r2,r8
	cmp/pz r0
	bf loc_8c03a8fe
	bra loc_8c03a908
	and 0x03,r0

loc_8c03a8fe:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c03a908:
	mov.b r0,@r8

loc_8c03a90a:
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0085
	#data 0x0084
	#data 0x0510
	#align4
	#data 0x8c26823c
	#data bank04.loc_8c04257c
	#data 0x8c28c410
	#data loc_8c03d4bc
	#data bank02.loc_8c027b64
	#data 0x8c268340
	#data bank11.loc_8c11e730
	#data pl_mem.player_start_charB
	#data loc_8c03d928

;==============================================
loc_8c03a944:
	mov.l r14,@-r15
	mov.l @(0x110,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03a966
	mov.l @r14,r2
	mov.l @(0xFC,PC),r3
	mov.b @(0x4,r2),r0
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x4,r2)

loc_8c03a966:
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bt loc_8c03a978
	lds.l @r15+,pr
	mov.l @(0xEC,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c03a978:
	 lds.l @r15+,pr
	 rts
	 mov.l @r15+,r14

;==============================================
loc_8c03a97e:
	mov.l r14,@-r15
	mov.l @(0xD4,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r4
	mov.l @(0xDC,PC),r6
	mov.b @(0x5,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_8c03a99c
	mov 0x00,r5
	cmp/eq 0x01,r0
	bt loc_8c03a9da
	cmp/eq 0x02,r0
	bt loc_8c03a9f2
	bra loc_8c03aa26
	nop

loc_8c03a99c:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov r5,r0
	nop
	mov.l @(0xC0,PC),r3
	mov.b r0,@(0xB,r6)
	jsr @r3
	mov 0x16,r4
	mov.l @(0xBC,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(0xB8,PC),r3
	jsr @r3
	nop
	mov.l @(0xB8,PC),r2
	jsr @r2
	nop
	mov.l @(0xB4,PC),r0
	mov.b @r0,r0
	cmp/eq 0x02,r0
	bt loc_8c03aa26
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bt loc_8c03aa26
	lds.l @r15+,pr
	mov.l @(0x88,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c03a9da:
	mov.l @(0x84,PC),r2
	jsr @r2
	nop
	mov.l @(0x94,PC),r0
	mov.b @r0,r0
	cmp/eq 0x02,r0
	bf loc_8c03aa26
	mov.l @r14,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	bra loc_8c03aa26
	mov.b r0,@(0x5,r2)

loc_8c03a9f2:
	mov.b @(0xB,r6),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c03aa26
	mov 0x4C,r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c03aa06
	bra loc_8c03aa08
	mov 0x03,r0

loc_8c03aa06:
	mov 0x02,r0

loc_8c03aa08:
	mov.b r0,@(0x3,r4)
	mov.l @r14,r3
	mov r5,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	mov.b r0,@(0xB,r6)
	mov 0x19,r0
	mov.l @r14,r3
	mov.b r5,@(r0,r3)
	lds.l @r15+,pr
	mov.l @(0x58,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c03aa26:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03aa2c:
	mov.l @(0x28,PC),r2
	mov.l @(0x50,PC),r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x40,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(0x38,PC),r3
	mov.l @(0x34,PC),r4
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26823c
	#data bank0f.loc_8c0f387c
	#data bank02.loc_8c02e7bc
	#data 0x8c28c410
	#data bank04.loc_8c041dde
	#data bank04.loc_8c041aa6
	#data bank04.loc_8c041e44
	#data bank0f.loc_8c0f3a50
	#data 0x8c26a51f
	#data bank0f.loc_8c0f7960
	#data bank14.loc_8c14d9dc
	#data bank04.loc_8c044ef0
	#data loc_8c0305d8
	#data loc_8c0395ac

;==============================================
loc_8c03aa90:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x118,PC),r13
	mov 0x4F,r0
	mov.l @(0x118,PC),r1
	mov r4,r14
	mov.b @(r0,r13),r3
	mov 0x51,r0
	mov.l @(0x118,PC),r12
	mov.l r3,@(0x4,r15)
	mov.l @r1,r2
	mov.l @(0x10C,PC),r11
	mov.b @(r0,r2),r3
	mov 0x4E,r0
	mov.b @(r0,r13),r0
	mov.w @(0xEE,PC),r2
	add r3,r0
	add 0x0A,r0
	mov.b r0,@r15
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ab1c
	jsr @r11
	mov 0x01,r4
	mov.w @(0xD2,PC),r0
	mov.w @(0xD4,PC),r2
	mov.b @(r0,r14),r0
	mov.b @r15,r10
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03aaf8
	mov 0x4F,r0
	mov.l @(0xE0,PC),r3
	mov.b @(r0,r13),r1
	add r10,r1
	add 0xFF,r1
	jsr @r3
	mov r10,r0
	mov 0x4F,r1
	add r13,r1
	mov.b r0,@r1

loc_8c03aaf8:
	mov.w @(0xAC,PC),r0
	mov.w @(0xB0,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ab1c
	mov 0x4F,r0
	mov.l @(0xBC,PC),r3
	mov.b @(r0,r13),r1
	add r10,r1
	add 0x01,r1
	jsr @r3
	mov r10,r0
	mov 0x4F,r1
	add r13,r1
	mov.b r0,@r1

loc_8c03ab1c:
	mov.w @(0x88,PC),r0
	mov.w @(0x8E,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ab7a
	jsr @r11
	mov 0x04,r4
	mov.w @(0x74,PC),r0
	mov.w @(0x7C,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_8c03ab56
	mov 0x05,r4
	mov.w @(0x6E,PC),r0
	mov.l @(0x80,PC),r3
	mov.b @(r0,r14),r1
	extu.b r1,r1
	add 0x04,r1
	jsr @r3
	mov r4,r0
	mov.w @(0x60,PC),r1
	add r14,r1
	mov.b r0,@r1

loc_8c03ab56:
	mov.w @(0x4E,PC),r0
	mov.w @(0x5A,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ab7a
	mov.w @(0x4A,PC),r0
	mov.l @(0x5C,PC),r3
	mov.b @(r0,r14),r1
	extu.b r1,r1
	add 0x06,r1
	jsr @r3
	mov r4,r0
	mov.w @(0x3C,PC),r1
	add r14,r1
	mov.b r0,@r1

loc_8c03ab7a:
	mov 0x4F,r0
	mov.l @(0x4,r15),r2
	mov.b @(r0,r13),r3
	cmp/eq r2,r3
	bt loc_8c03ab90
	mov.l @(0x48,PC),r0
	mov 0x1D,r2
	mov.l @(0x40,PC),r3
	mov 0x01,r1
	mov.b r1,@r3
	mov.b r2,@r0

loc_8c03ab90:
	mov.l @(0x28,PC),r2
	mov 0x4F,r0
	mov.b @(r0,r13),r4
	mov 0x51,r0
	mov.l @r2,r3
	mov.l @(0x38,PC),r10
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c03abdc
	mov.l @(0x34,PC),r0
	bra loc_8c03abde
	nop

;##############################################
	#data 0x0524
	#data 0x3000
	#data 0x2000
	#data 0x1000
	#data 0x0c00
	#data 0x0800
	#data 0x0543
	#data 0x0400
	#align4
	#data 0x8c28c410
	#data 0x8c26823c
	#data bank04.loc_8c04257c
	#data 0x8c28c474
	#data bank12.loc_8c1292d4
	#data 0x8c26a960
	#data 0x8c26a961
	#data 0x8c26a95c
	#data bank13.loc_8c13822c

;----------------------------------------------
loc_8c03abdc:
	mov.l @(0xEC,PC),r0

loc_8c03abde:
	mov.b @(r0,r4),r3
	mov.w @(0xD4,PC),r0
	mov.b r3,@r10
	mov.b @(r0,r14),r0
	mov.w @(0xD0,PC),r2
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ac28
	jsr @r11
	mov 0x02,r4
	mov 0x4F,r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c03ac24
	mov.l @(0xD0,PC),r3
	jsr @r3
	nop
	cmp/pz r0
	bf loc_8c03ac0c
	bra loc_8c03ac16
	and 0x07,r0

loc_8c03ac0c:
	not r0,r0
	add 0x01,r0
	and 0x07,r0
	not r0,r0
	add 0x01,r0

loc_8c03ac16:
	mov.b r0,@r10
	mov 0x01,r3
	mov.l @(0xBC,PC),r0
	mov 0x1D,r1
	mov.l @(0xB4,PC),r2
	mov.b r3,@r2
	mov.b r1,@r0

loc_8c03ac24:
	bra loc_8c03ac2a
	mov 0x01,r0

loc_8c03ac28:
	mov 0x00,r0

loc_8c03ac2a:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03ac3a:
	sts.l pr,@-r15
	mov.l @(0x9C,PC),r4
	bsr loc_8c03aa90
	nop
	tst r0,r0
	bf loc_8c03ac50
	mov.l @(0x98,PC),r4
	bsr loc_8c03aa90
	nop
	tst r0,r0
	bt loc_8c03ac60

loc_8c03ac50:
	mov.l @(0x90,PC),r4
	mov.l @r4,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x3C,r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)

loc_8c03ac60:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03ac66:
	mov.l @(0x7C,PC),r4
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03ac9a
	mov.l @r4,r2
	mov.l @(0x60,PC),r4
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov.w @(0x36,PC),r0
	mov.b @(r0,r4),r5
	mov.w @(0x34,PC),r0
	mov.b r5,@(r0,r4)
	mov.w @(0x32,PC),r0
	mov.b r5,@(r0,r4)
	mov.w @(0x30,PC),r0
	mov.b @(r0,r4),r5
	mov.w @(0x2E,PC),r0
	mov.b r5,@(r0,r4)
	mov.w @(0x2C,PC),r0
	mov.b r5,@(r0,r4)

loc_8c03ac9a:
	rts
	nop

;==============================================
loc_8c03ac9e:
	mov.l @(0x44,PC),r4
	mov 0x03,r0
	mov 0x00,r5
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.w @(0x14,PC),r0
	mov.l @r4,r3
	rts
	mov.b r5,@(r0,r3)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0524
	#data 0x0360
	#data 0x0543
	#data 0x108b
	#data 0x1bd3
	#data 0x0ae7
	#data 0x162f
	#data 0x2177
	#data 0x00ab
	#align4
	#data bank13.loc_8c13823e
	#data bank11.loc_8c11e730
	#data 0x8c26a960
	#data 0x8c26a961
	#data 0x8c268340
	#data pl_mem.player_start_charB
	#data 0x8c26823c

;==============================================
loc_8c03ace8:
	mov.l r14,@-r15
	mov 0x4C,r1
	mov.l r13,@-r15
	mov.l @(0xDC,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf.s loc_8c03ad12
	mov 0x00,r14
	mov.l @(0xCC,PC),r4
	mov 0x4C,r0
	mov.w @(r0,r4),r2
	add 0xFF,r2
	mov.w r2,@(r0,r4)
	mov.w @(r0,r4),r3
	cmp/pl r3
	bt loc_8c03ad12
	mov.w r14,@(r0,r4)

loc_8c03ad12:
	mov.l @(0xC0,PC),r11
	bsr loc_8c03ad98
	mov r11,r4
	mov.w @(0xA4,PC),r12
	mov r11,r4
	bsr loc_8c03ad98
	add r12,r4
	mov.w @(0x9E,PC),r0
	mov.l @r13,r3
	mov.b @(r0,r3),r2
	add 0x01,r0
	mov.b @(r0,r3),r1
	or r1,r2
	mov.l @(0xA8,PC),r1
	mov.l @r1,r3
	cmp/eq r2,r3
	bf loc_8c03ad76
	mov.w @(0x8A,PC),r3
	mov.l @r13,r4
	mov.w @(0x88,PC),r0
	add r4,r3
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	or r3,r0
	cmp/eq 0x03,r0
	bf loc_8c03ad4a
	bra loc_8c03ad4c
	mov 0x04,r0

loc_8c03ad4a:
	mov 0x05,r0

loc_8c03ad4c:
	mov.b r0,@(0x3,r4)
	mov 0x00,r4
	add r11,r4
	mov r14,r5
	mov 0x02,r6

loc_8c03ad56:
	mov r14,r0
	nop
	add 0x01,r5
	mov.b r0,@(0x5,r4)
	exts.w r5,r3
	mov.b r0,@(0x6,r4)
	cmp/ge r6,r3
	mov.b r0,@(0x7,r4)
	bf.s loc_8c03ad56
	add r12,r4
	mov.w @(0x58,PC),r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)
	add 0x01,r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)

loc_8c03ad76:
	mov.l @(0x64,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(0x5C,PC),r3
	mov.l @(0x54,PC),r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8c03ad94:
	bra loc_8c03ace8
	nop

;==============================================
loc_8c03ad98:
	mov.l @(0x4C,PC),r2
	mov.w @(0x2A,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.b @r2,r3
	mov.b @(r0,r14),r1
	extu.b r3,r3
	tst r1,r3
	bt loc_8c03adb0
	mov r14,r4
	bra loc_8c03ba96
	mov.l @r15+,r14

loc_8c03adb0:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x34,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;##############################################
	#data 0x05a4
	#data 0x0084
	#data 0x0085
	#data 0x008d
	#data 0x04c8
	#align4
	#data 0x8c26823c
	#data 0x8c28c410
	#data 0x8c268340
	#data 0x8c28c470
	#data bank04.loc_8c044ef0
	#data loc_8c0305d8
	#data loc_8c0395ac
	#data 0x8c28c41a
	#data bank14.loc_8c14d9e8

;----------------------------------------------
loc_8c03adf0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0xAC,PC),r10
	mov.w @(0x9C,PC),r0
	sts.l pr,@-r15
	mov.l @r10,r4
	mov.b @(r0,r4),r3
	add 0xFF,r0
	mov.b @(r0,r4),r2
	mov.w @(0x92,PC),r0
	or r2,r3
	mov.b @(r0,r12),r2
	tst r2,r3
	bf loc_8c03ae18
	bra loc_8c03b0b8
	nop

loc_8c03ae18:
	mov 0x01,r5
	mov r5,r0
	nop
	mov 0x00,r11
	mov.b r0,@(0x4,r12)
	mov r11,r0
	nop
	mov.b r0,@(0x5,r12)
	mov.w r0,@(0x1E,r12)
	mov r5,r0
	nop
	mov.l @(0x80,PC),r4
	mov.w @(0x6E,PC),r14
	mov.l @(0x80,PC),r13
	mov.w r0,@(0x1C,r12)
	mov.b @r4,r3
	cmp/pz r3
	bf loc_8c03ae70
	mov.w @(0x60,PC),r0
	mov.l @(0x6C,PC),r1
	mov.b @(r0,r12),r3
	mov.w @(0x5E,PC),r0
	mov.l @r1,r2
	mov.b @(r0,r2),r2
	cmp/eq r2,r3
	bf loc_8c03ae70
	mov.w @(0x56,PC),r0
	mov 0x07,r3
	mov.b @(r0,r12),r6
	xor r5,r6
	mul.l r14,r6
	sts macl,r6
	add r13,r6
	mov.b @(0x4,r6),r0
	mov r0,r6
	extu.b r6,r5
	cmp/ge r3,r5
	bf loc_8c03ae6a
	mov 0x09,r1
	cmp/ge r1,r5
	bf loc_8c03ae70

loc_8c03ae6a:
	mov.w @(0x32,PC),r0
	mov.b @(r0,r12),r3
	mov.b r3,@r4

loc_8c03ae70:
	mov.w @(0x34,PC),r0
	mov.l @r10,r4
	mov.b @(r0,r4),r3
	mov.w @(0x26,PC),r0
	mov.b @(r0,r12),r2
	tst r2,r3
	bt loc_8c03ae82
	bra loc_8c03b0b8
	nop

loc_8c03ae82:
	mov.b @(r0,r12),r1
	mov.w @(0x1C,PC),r0
	mov.b @(r0,r4),r3
	cmp/eq r3,r1
	bf loc_8c03aee0
	mov.l @(0x2C,PC),r1
	mov.l @(0x28,PC),r3
	mov.w @(0x16,PC),r2
	jsr @r1
	mov.w r2,@r3
	cmp/pz r0
	bf loc_8c03aec0
	bra loc_8c03aeca
	and 0x03,r0

;##############################################
	#data 0x0085
	#data 0x04c8
	#data 0x05a4
	#data 0x008c
	#data 0x0524
	#data 0x0084
	#data 0x0e10
	#align4
	#data 0x8c26823c
	#data 0x8c28c46c
	#data 0x8c268340
	#data 0x8c28c45c
	#data bank11.loc_8c11e730

;----------------------------------------------
loc_8c03aec0:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c03aeca:
	mov.w @(0xFE,PC),r1
	mov.l @(0x104,PC),r3
	add r12,r1
	jsr @r3
	mov.b r0,@r1
	mov.l @(0x100,PC),r2
	jsr @r2
	nop
	mov.l @(0x100,PC),r3
	jsr @r3
	mov 0x11,r4

loc_8c03aee0:
	mov.l @r10,r0
	mov 0x4C,r1
	mov.l @(0xF8,PC),r2
	mov 0x03,r4
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf.s loc_8c03afe8
	mov.b @r2,r6
	extu.b r6,r6
	mov.l @(0xF0,PC),r5
	tst r6,r6
	bt loc_8c03af60
	mov r11,r6

loc_8c03aefa:
	mov.w @(0xD0,PC),r0
	exts.b r6,r7
	shll r7
	mov.b @(r0,r12),r10
	add 0x08,r0
	exts.b r10,r3
	exts.b r10,r2
	add r7,r3
	mov r2,r1
	mul.l r14,r3
	shll r2
	add r1,r2
	mov r5,r1
	add 0x28,r1
	shll2 r2
	sts macl,r3
	add r1,r2
	mov.l @r2,r2
	add r13,r3
	mov.b r2,@(r0,r3)
	add 0xF8,r0
	mov.b @(r0,r12),r10
	add 0x08,r0
	add r7,r10
	mul.l r14,r10
	sts macl,r10
	add r13,r10
	mov.b @(r0,r10),r0
	mov.b r0,@(0x1,r10)
	mov.w @(0x96,PC),r0
	mov.b @(r0,r12),r3
	add r7,r3
	mul.l r14,r3
	add 0xA5,r0
	sts macl,r3
	add r13,r3
	mov.b r11,@(r0,r3)
	add 0x5B,r0
	mov.b @(r0,r12),r3
	add 0x1B,r0
	add r3,r7
	mul.l r14,r7
	sts macl,r7
	add r13,r7
	mov.b r6,@(r0,r7)
	add 0x01,r6
	exts.b r6,r3
	cmp/ge r4,r3
	bf loc_8c03aefa
	bra loc_8c03b0b8
	nop

;----------------------------------------------
loc_8c03af60:
	mov r11,r6

loc_8c03af62:
	mov.w @(0x68,PC),r0
	exts.b r6,r7
	shll r7
	mov r5,r1
	mov.b @(r0,r12),r10
	add 0x28,r1
	exts.b r10,r3
	exts.b r10,r0
	add r7,r3
	mov r0,r2
	mul.l r14,r3
	shll r0
	add r2,r0
	exts.b r6,r2
	shll2 r0
	sts macl,r3
	shll2 r2
	add r1,r0
	mov.l @(r0,r2),r1
	add r13,r3
	mov.w @(0x42,PC),r0
	mov.b r1,@(r0,r3)
	add 0xF8,r0
	mov.b @(r0,r12),r10
	add 0x08,r0
	add r7,r10
	mul.l r14,r10
	sts macl,r10
	add r13,r10
	mov.b @(r0,r10),r0
	mov.b r0,@(0x1,r10)
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r12),r3
	add 0xA5,r0
	add r7,r3
	mul.l r14,r3
	sts macl,r3
	add r13,r3
	mov.b r11,@(r0,r3)
	add 0x5B,r0
	mov.b @(r0,r12),r3
	add 0x1B,r0
	add r3,r7
	mul.l r14,r7
	sts macl,r7
	add r13,r7
	mov.b r6,@(r0,r7)
	add 0x01,r6
	exts.b r6,r3
	cmp/ge r4,r3
	bf loc_8c03af62
	bra loc_8c03b0b8
	nop

;##############################################
	#data 0x0510
	#data 0x0524
	#data 0x052c
	#align4
	#data loc_8c03d928
	#data bank02.loc_8c027b00
	#data bank02.loc_8c027b64
	#data 0x8c28c41d
	#data 0x8c212f30

;----------------------------------------------
loc_8c03afe8:
	extu.b r6,r6
	mov.l @(0x120,PC),r5
	tst r6,r6
	bt loc_8c03b054
	mov r11,r6

loc_8c03aff2:
	mov.w @(0x112,PC),r0
	exts.b r6,r7
	shll r7
	mov.b @(r0,r12),r10
	add 0x08,r0
	exts.b r10,r3
	add r7,r3
	exts.b r10,r2
	mul.l r14,r3
	mov r2,r1
	shll r2
	add r1,r2
	shll2 r2
	sts macl,r3
	add r5,r2
	mov.l @r2,r2
	add r13,r3
	mov.b r2,@(r0,r3)
	add 0xF8,r0
	mov.b @(r0,r12),r10
	add 0x08,r0
	add r7,r10
	mul.l r14,r10
	sts macl,r10
	add r13,r10
	mov.b @(r0,r10),r0
	mov.b r0,@(0x1,r10)
	mov.w @(0xDC,PC),r0
	mov.b @(r0,r12),r3
	add r7,r3
	mul.l r14,r3
	sts macl,r3
	add 0xA5,r0
	add r13,r3
	mov.b r11,@(r0,r3)
	add 0x5B,r0
	mov.b @(r0,r12),r3
	add 0x1B,r0
	add r3,r7
	mul.l r14,r7
	sts macl,r7
	add r13,r7
	mov.b r6,@(r0,r7)
	add 0x01,r6
	exts.b r6,r3
	cmp/ge r4,r3
	bf loc_8c03aff2
	bra loc_8c03b0b8
	nop

loc_8c03b054:
	mov r11,r6

loc_8c03b056:
	mov.w @(0xAE,PC),r0
	exts.b r6,r7
	shll r7
	mov.b @(r0,r12),r10
	exts.b r6,r1
	shll2 r1
	exts.b r10,r3
	exts.b r10,r0
	add r7,r3
	mov r0,r2
	mul.l r14,r3
	shll r0
	add r2,r0
	shll2 r0
	sts macl,r3
	add r5,r0
	mov.l @(r0,r1),r2
	mov.w @(0x8E,PC),r0
	add r13,r3
	mov.b r2,@(r0,r3)
	add 0xF8,r0
	mov.b @(r0,r12),r10
	add 0x08,r0
	add r7,r10
	mul.l r14,r10
	sts macl,r10
	add r13,r10
	mov.b @(r0,r10),r0
	mov.b r0,@(0x1,r10)
	mov.w @(0x74,PC),r0
	mov.b @(r0,r12),r3
	add r7,r3
	mul.l r14,r3
	add 0xA5,r0
	sts macl,r3
	add r13,r3
	mov.b r11,@(r0,r3)
	add 0x5B,r0
	mov.b @(r0,r12),r3
	add 0x1B,r0
	add r3,r7
	mul.l r14,r7
	sts macl,r7
	add r13,r7
	mov.b r6,@(r0,r7)
	add 0x01,r6
	exts.b r6,r3
	cmp/ge r4,r3
	bf loc_8c03b056

loc_8c03b0b8:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03b0c6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	mov.l @(0x40,PC),r5
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c03b0e4
	mov 0x00,r4
	cmp/eq 0x01,r0
	bt loc_8c03b11c
	cmp/eq 0x02,r0
	bt loc_8c03b136
	bra loc_8c03b14e
	nop

loc_8c03b0e4:
	mov.b @(0x5,r14),r0
	mov r5,r2
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x16,PC),r0
	mov.b @(r0,r14),r3
	add r2,r3
	mov.b r4,@r3
	mov.l @(0x1C,PC),r3
	jsr @r3
	mov.b @(r0,r14),r4
	mov.w @(0x8,PC),r0
	lds.l @r15+,pr
	mov.l @(0x14,PC),r3
	mov.b @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

;##############################################
	#data 0x0524
	#data 0x052c
	#align4
	#data bank14.loc_8c14d99c
	#data 0x8c28c410
	#data bank0f.loc_8c0f4964
	#data loc_8c03990c

;----------------------------------------------
loc_8c03b11c:
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	mov.l @(0x150,PC),r2
	add 0x01,r0
	mov.l @(0x150,PC),r6
	mov.b r0,@(0x5,r14)
	mov.w @(0x144,PC),r0
	mov.b r3,@r2
	mov.b @(r0,r14),r3
	mov.b @r6,r1
	add 0x01,r3
	or r3,r1
	mov.b r1,@r6

loc_8c03b136:
	mov.w @(0x136,PC),r0
	mov r5,r2
	mov.b @(r0,r14),r3
	add r2,r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c03b14e
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x5,r14)

loc_8c03b14e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03b154:
	mov.w @(0x118,PC),r0
	mov.l @(0x124,PC),r1
	mov.b @(r0,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c03b166
	mov 0x03,r0
	mov.b r0,@(0x4,r4)

loc_8c03b166:
	rts
	nop

;==============================================
loc_8c03b16a:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x04,r0
	mov.w @(0xFC,PC),r13
	mov.l r12,@-r15
	mov r13,r3
	add 0x80,r3
	add r14,r3
	mov.l r11,@-r15
	mov.l @(0x100,PC),r11
	mov.l @(0x100,PC),r1
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b r0,@(0x4,r14)
	mov.w @(0x1E,r14),r0
	mov.b @r3,r3
	shll r0
	add r3,r0
	mul.l r13,r0
	sts macl,r0
	add r11,r0
	mov.l r0,@(0x18,r14)
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r14),r0
	mov.b @(r0,r1),r0
	and 0x07,r0
	mov r0,r4
	extu.b r4,r0
	cmp/eq 0x07,r0
	bt loc_8c03b21a
	mov.l @(0xD8,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0xB8,PC),r3
	mov 0x01,r2
	mov.w @(0xB0,PC),r0
	mov.l @(0xB8,PC),r4
	mov.b r2,@r3
	mov.b @(r0,r14),r2
	mov.b @r4,r1
	add 0x01,r2
	or r2,r1
	mov.b r1,@r4
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(0x9C,PC),r0
	shll r4
	mov.b @(r0,r14),r2
	add r2,r4
	mov.l @(0xB4,PC),r2
	jsr @r2
	nop
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(0x8A,PC),r0
	shll r4
	mov.b @(r0,r14),r3
	add r3,r4
	mov.l @(0xA8,PC),r3
	jsr @r3
	nop
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(0x1E,r14),r0
	mov r0,r3
	mov.l @(0x9C,PC),r0
	add 0x01,r3
	mov.b r3,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(0x1E,r14),r0
	mov.l @(0x98,PC),r3
	mov.l @r15+,r8
	mov r0,r5
	mov.w @(0x64,PC),r0
	mov.l @r15+,r9
	mov.b @(r0,r14),r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03b21a:
	mov 0x02,r0
	mov.w r0,@(0x1E,r14)
	mov 0x00,r4
	mov 0x09,r0
	mov r4,r12
	mov 0x03,r9
	mov.b r0,@(0x4,r14)
	mov r4,r10

loc_8c03b22a:
	mov.w @(0x42,PC),r0
	mov.b @(r0,r14),r3
	add r12,r3
	mul.l r13,r3
	sts macl,r3
	add r11,r3
	mov.l r3,@(0x18,r14)
	mov.b @(r0,r14),r8
	mov.l @(0x64,PC),r3
	exts.b r8,r4
	mov r8,r5
	add r12,r4
	mul.l r13,r4
	sts macl,r4
	jsr @r3
	add r11,r4
	add 0x01,r10
	extu.b r10,r2
	cmp/ge r9,r2
	bf.s loc_8c03b22a
	add 0x02,r12
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
loc_8c03b266:
	mov.l @(0x3C,PC),r3
	mov 0x05,r0
	mov.b r0,@(0x4,r4)
	jmp @r3
	mov 0x00,r5

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0524
	#data 0x05a4
	#data 0x8c26a960
	#data 0x8c26a961
	#data 0x8c28c410
	#data 0x8c268340
	#data 0x8c28c412
	#data loc_8c03cdfe
	#data bank0f.loc_8c0f46e0
	#data loc_8c0397a4
	#data loc_8c0399c0
	#data 0x8c28c444
	#data bank0f.loc_8c0f43ac
	#data bank0f.loc_8c0f5ac8
	#data bank0f.loc_8c0f5838

;==============================================
loc_8c03b2a8:
	mov.l @(0xC0,PC),r3
	mov 0x06,r0
	jmp @r3
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c03b2b0:
	mov.w @(0xAE,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	add r14,r3
	mov.w @(0x1E,r14),r0
	mov.b @r3,r3
	mov r14,r4
	mov.w @(0xA2,PC),r2
	shll r0
	add r3,r0
	mov.l @(0xA8,PC),r3
	mul.l r2,r0
	mov.l @(0xA8,PC),r1
	sts macl,r0
	add r3,r0
	mov.l r0,@(0x18,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r1
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8c03b2dc:
	mov.l r14,@-r15
	mov 0x01,r0
	mov r4,r14
	mov.b r0,@(0x5,r14)
	mov.w @(0x7A,PC),r0
	mov 0x00,r2
	mov.b @(r0,r14),r3
	mov.l @(0x8C,PC),r0
	mov.b r2,@(r0,r3)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c03b300
	mov.w @(0x6A,PC),r0
	mov.l @(0x84,PC),r3
	mov.b @(r0,r14),r4
	add 0x4A,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c03b300:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03b304:
	mov.w @(0x5A,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	add r14,r3
	mov.w @(0x54,PC),r2
	mov.l r13,@-r15
	mov.l @(0x6C,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0x5C,PC),r12
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov.b @r3,r3
	shll r0
	mov.l @(0x60,PC),r11
	add r3,r0
	mov.l @(0x44,PC),r3
	mul.l r2,r0
	sts macl,r0
	add r3,r0
	mov.l @(0x50,PC),r3
	mov.l r0,@r13
	mov r0,r1
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r1),r0
	mov.b r0,@r3
	mov 0x4C,r0
	mov.w @(r0,r12),r1
	tst r1,r1
	bf.s loc_8c03b38c
	mov r11,r4
	mov.w @(0x16,PC),r0
	mov.w @(0x1A,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w r2,@(r0,r4)
	mov.l @r13,r1
	mov r1,r0
	nop
	mov.w @(0xA,PC),r2
	mov.b @(r0,r2),r0
	mov.b r0,@(0x1,r1)
	bra loc_8c03b4ba
	nop

;##############################################
	#data 0x0524
	#data 0x05a4
	#data 0x052c
	#data 0x0200
	#align4
	#data bank0f.loc_8c0f47a4
	#data 0x8c268340
	#data bank14.loc_8c14da14
	#data 0x8c28c410
	#data bank04.loc_8c04257c
	#data 0x8c28c48c
	#data 0x8c28c490
	#data 0x8c28c474

;----------------------------------------------
loc_8c03b38c:
	mov.w @(0x132,PC),r0
	mov.w @(0x132,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b464
	mov.w @(0x122,PC),r0
	mov.l @(0x134,PC),r3
	mov.b @(r0,r14),r4
	shll r4
	jsr @r3
	add 0x40,r4
	mov.w @(0x11E,PC),r10
	mov.w @(0x11A,PC),r9
	mov.w @(0x116,PC),r8

loc_8c03b3ae:
	mov.w @(0x110,PC),r0
	mov.w @(0x118,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b3ce
	mov.w @(0x100,PC),r0
	mov r12,r3
	add 0x04,r3
	mov.b @(r0,r14),r0
	add r3,r0
	mov.b @r0,r1
	add 0xFF,r1
	mov.b r1,@r0

loc_8c03b3ce:
	mov.w @(0xF0,PC),r0
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r10,r3
	bt loc_8c03b3ec
	mov.w @(0xE2,PC),r0
	mov r12,r3
	add 0x04,r3
	mov.b @(r0,r14),r1
	add r3,r1
	mov.b @r1,r2
	add 0x01,r2
	mov.b r2,@r1

loc_8c03b3ec:
	mov.w @(0xD2,PC),r0
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r8,r3
	bt loc_8c03b40a
	mov.w @(0xC4,PC),r0
	mov r12,r3
	add 0x06,r3
	mov.b @(r0,r14),r1
	add r3,r1
	mov.b @r1,r2
	add 0xFF,r2
	mov.b r2,@r1

loc_8c03b40a:
	mov.w @(0xB4,PC),r0
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r9,r3
	bt loc_8c03b428
	mov.w @(0xA6,PC),r0
	mov r12,r3
	add 0x06,r3
	mov.b @(r0,r14),r1
	add r3,r1
	mov.b @r1,r2
	add 0x01,r2
	mov.b r2,@r1

loc_8c03b428:
	mov.l @(0xAC,PC),r3
	mov.w @(0x94,PC),r0
	jsr @r3
	mov.b @(r0,r14),r4
	mov.w @(0x9A,PC),r1
	mov.l @r13,r2
	mov.w @(0x8A,PC),r0
	mov.l @(0xA4,PC),r3
	add r2,r1
	mov.l r1,@-r15
	jsr @r3
	mov.b @(r0,r14),r4
	mov.l @r15+,r3
	mov.b r0,@r3
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c03b3ae
	mov.w @(0x74,PC),r0
	mov.l @(0x90,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov.l @r13,r4
	tst r0,r0
	bt loc_8c03b3ae
	mov.l @r13,r3
	mov r3,r0
	nop
	mov.w @(0x6C,PC),r1
	mov.b @(r0,r1),r0
	mov.b r0,@(0x1,r3)

loc_8c03b464:
	mov.l @r13,r1
	mov.w @(0x64,PC),r0
	mov.l @(0x78,PC),r2
	mov.b @(r0,r1),r0
	mov.b @r2,r3
	cmp/eq r0,r3
	bt loc_8c03b4aa
	mov.l @(0x74,PC),r3
	mov 0x01,r1
	mov.w @(0x48,PC),r0
	mov.l @(0x70,PC),r4
	mov.b r1,@r3
	mov.b @(r0,r14),r1
	mov.b @r4,r2
	add 0x01,r1
	or r1,r2
	mov.b r2,@r4
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(0x34,PC),r0
	shll r4
	mov.b @(r0,r14),r2
	add r2,r4
	mov.l @(0x5C,PC),r2
	jsr @r2
	nop
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(0x22,PC),r0
	shll r4
	mov.b @(r0,r14),r3
	add r3,r4
	mov.l @(0x4C,PC),r3
	jsr @r3
	nop

loc_8c03b4aa:
	mov.w @(0x14,PC),r0
	mov.w @(0x20,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b592

loc_8c03b4ba:
	mov.w @(0x4,PC),r0
	mov.b @(r0,r14),r4
	bra loc_8c03b4f8
	nop

;##############################################
	#data 0x0524
	#data 0x3c00
	#data 0x2000
	#data 0x1000
	#data 0x0400
	#data 0x0800
	#data 0x052c
	#data 0x03f0
	#align4
	#data bank04.loc_8c04257c
	#data bank0f.loc_8c0f4714
	#data bank0f.loc_8c0f4774
	#data loc_8c03cbe8
	#data 0x8c28c490
	#data 0x8c26a960
	#data 0x8c26a961
	#data loc_8c0397a4
	#data loc_8c0399c0

;----------------------------------------------
loc_8c03b4f8:
	mov.l @(0x140,PC),r3
	shll r4
	jsr @r3
	add 0x41,r4
	mov.w @(0x128,PC),r0
	mov.l @(0x13C,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov.l @r13,r4
	mov.w @(0x11E,PC),r0
	mov r12,r3
	add 0x30,r3
	mov.b @(r0,r14),r2
	mov 0x02,r0
	mov 0x00,r4
	add r3,r2
	mov.b r4,@r2
	mov.b r0,@(0x5,r14)
	mov r4,r0
	nop
	mov.l @(0x120,PC),r3
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x100,PC),r0
	mov r12,r2
	add 0x02,r2
	mov.b @(r0,r14),r3
	mov.w @(0x1E,r14),r0
	add r2,r3
	mov.b @r3,r1
	mov 0x01,r2
	shad r0,r2
	mov.w @(0xEE,PC),r0
	or r2,r1
	mov.b r1,@r3
	mov.l @(0x104,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov.l @r13,r4
	mov.w @(0x1C,r14),r0
	mov.l @(0x100,PC),r2
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xDA,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c03b56c
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(0xCA,PC),r0
	shll r4
	mov.b @(r0,r14),r3
	add r3,r4
	mov.l @(0xE8,PC),r3
	jsr @r3
	add 0x12,r4

loc_8c03b56c:
	mov.l @(0xE4,PC),r3
	mov.w @(0xBE,PC),r0
	mov.l @r13,r4
	jsr @r3
	mov.b @(r0,r4),r4
	mov.w @(0xB2,PC),r0
	mov.l @r13,r2
	mov.w @(0xB4,PC),r1
	mov.l @(0xD8,PC),r3
	add r2,r1
	mov.l r1,@-r15
	mov.b @(r0,r14),r0
	mov.l @r13,r5
	shll r0
	mov.w @(r0,r11),r6
	jsr @r3
	mov r14,r4
	mov.l @r15+,r3
	mov.b r0,@r3

loc_8c03b592:
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
loc_8c03b5a4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(0x84,PC),r11
	extu.b r0,r0
	mov.l @(0xA0,PC),r13
	cmp/eq 0x00,r0
	bt loc_8c03b5c8
	cmp/eq 0x01,r0
	bt loc_8c03b5f0
	bra loc_8c03b77c
	nop

loc_8c03b5c8:
	mov.w @(0x60,PC),r0
	mov.b @(r0,r14),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c03b5d8
	bra loc_8c03b77c
	nop

loc_8c03b5d8:
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x4A,PC),r0
	mov.b @(r0,r14),r4
	mov r4,r3
	shll r4
	add r3,r4
	jsr @r11
	add 0x34,r4
	bra loc_8c03b77c
	nop

loc_8c03b5f0:
	mov.w @(0x38,PC),r3
	mov.w @(0x1E,r14),r0
	add r14,r3
	mov.w @(0x3A,PC),r2
	mov.b @r3,r3
	shll r0
	mov.l @(0x60,PC),r10
	add r3,r0
	mov.l @(0x60,PC),r3
	mul.l r2,r0
	mov.l @(0x60,PC),r12
	mov.l @(0x64,PC),r9
	sts macl,r0
	add r3,r0
	mov r0,r1
	mov.l r0,@r10
	mov.w @(0x22,PC),r0
	mov.b @(r0,r1),r0
	mov.b r0,@r12
	mov 0x4C,r0

loc_8c03b618:
	mov.w @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c03b670
	mov r9,r4
	mov.w @(0x8,PC),r0
	mov.w @(0x12,PC),r3
	mov.b @(r0,r14),r0
	shll r0
	bra loc_8c03b6d4
	mov.w r3,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0524
	#data 0x0084
	#data 0x052c
	#data 0x052d
	#data 0x05a4
	#data 0x04c9
	#data 0x0200
	#align4
	#data bank04.loc_8c04257c
	#data bank0f.loc_8c0f5ac8
	#data bank0f.loc_8c0f5bf4
	#data loc_8c03cb92
	#data 0x8c26823c
	#data bank02.loc_8c027b64
	#data bank11.loc_8c1189e0
	#data loc_8c03cf6a
	#data 0x8c28c410
	#data 0x8c28c494
	#data 0x8c268340
	#data 0x8c28c498
	#data 0x8c28c474

;==============================================
loc_8c03b670:
	mov.w @(0x118,PC),r0
	mov.w @(0x118,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r4),r3

loc_8c03b67a:
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b690
	mov.w @(0x108,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x40,r4
	mov.b @r12,r3

loc_8c03b68c:
	add 0xFF,r3
	mov.b r3,@r12

loc_8c03b690:
	mov.w @(0xF8,PC),r0
	mov.w @(0xFA,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r9),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b6b0
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x40,r4
	mov.b @r12,r3
	add 0x01,r3
	mov.b r3,@r12

loc_8c03b6b0:
	mov.b @r12,r1
	mov.l @(0xE4,PC),r3
	add 0x03,r1
	jsr @r3
	mov 0x03,r0
	mov.b r0,@r12
	mov.w @(0xD2,PC),r0
	mov.b @r12,r3
	mov.l @r10,r2
	mov.b r3,@(r0,r2)
	add 0x5B,r0
	mov.b @(r0,r14),r0
	mov.w @(0xC8,PC),r2
	shll r0
	mov.w @(r0,r9),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b77c

loc_8c03b6d4:
	mov.w @(0xB4,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x41,r4
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r14),r4
	jsr @r11
	add 0x35,r4
	mov.w @(0xA2,PC),r0
	mov r13,r2
	add 0x02,r2
	mov.b @(r0,r14),r3
	mov.w @(0x1E,r14),r0
	add r2,r3
	mov.b @r3,r1
	mov 0x10,r2
	shad r0,r2
	or r2,r1
	mov.b r1,@r3
	mov 0x01,r2
	mov.w @(0x8A,PC),r3
	mov 0x36,r0
	add r14,r3
	mov.b @r3,r3
	shad r3,r2
	mov.b @(r0,r13),r3
	or r2,r3
	mov.b r3,@(r0,r13)
	mov 0x03,r0
	mov.b r0,@(0x5,r14)
	mov 0x00,r0
	mov.b r0,@(0x6,r14)
	mov 0x02,r3
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c03b72e
	mov.w @(0x6A,PC),r0
	mov r13,r1
	add 0x08,r1
	mov.b @(r0,r14),r2
	add r1,r2
	mov.b @r2,r0
	or 0x80,r0
	mov.b r0,@r2

loc_8c03b72e:
	mov.w @(0x5A,PC),r0
	mov r13,r3
	add 0x02,r3
	mov.b @(r0,r14),r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	cmp/eq 0x77,r0
	bf loc_8c03b748
	mov.w @(0x4A,PC),r0
	mov.l @(0x58,PC),r3
	mov.b @(r0,r14),r4
	jsr @r3
	add 0x0D,r4

loc_8c03b748:
	mov.b @(0x2,r13),r0
	extu.b r0,r0
	cmp/eq 0x77,r0
	bf loc_8c03b75e
	mov.b @(0x3,r13),r0
	extu.b r0,r0
	cmp/eq 0x77,r0
	bf loc_8c03b75e
	mov.l @(0x40,PC),r2
	jsr @r2
	mov 0x02,r4

loc_8c03b75e:
	mov.l @(0x40,PC),r2
	mov 0x4C,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c03b77c
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03b77c:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0524
	#data 0x2000
	#data 0x1000
	#data 0x04c9
	#data 0x03f0
	#align4
	#data bank12.loc_8c1292d4
	#data bank02.loc_8c027b64
	#data 0x8c26823c
	#data bank11.loc_8c118960

;==============================================
loc_8c03b7a8:
	mov.w @(0xDC,PC),r0
	mov.l @(0xE8,PC),r6

loc_8c03b7ac:
	mov.b @(r0,r4),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c03b85a
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x5,r4)
	mov 0x02,r3
	mov.b r0,@(0x6,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	add 0xFF,r0
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c03b850
	mov.w @(0xB4,PC),r2
	mov.w @(0x1E,r4),r0
	add r4,r2
	mov.w @(0xB0,PC),r1
	mov.b @r2,r2
	shll r0
	add r2,r0
	mov.l @(0xB8,PC),r2
	mul.l r1,r0
	mov.l @(0xB8,PC),r1
	sts macl,r0
	add r2,r0
	mov.l r0,@(0x18,r4)
	mov 0x49,r0
	mov.l @r1,r7
	mov.b @(r0,r7),r3
	tst r3,r3
	bt loc_8c03b810
	mov 0x0A,r0
	mov.b r0,@(0x4,r4)
	mov 0x49,r0
	mov.l @r1,r3
	mov r3,r2
	mov.b @(r0,r2),r0
	mov.w @(0x88,PC),r2
	add r3,r2
	mov.b r0,@r2
	mov 0x32,r0
	mov 0x01,r3
	mov.b r3,@(r0,r6)
	bra loc_8c03ba4a
	nop

loc_8c03b810:
	mov.l @(0x8C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c03b824
	mov.w @(0x72,PC),r0
	mov.b @(r0,r7),r3
	mov.w @(0x70,PC),r0
	mov.b @(r0,r4),r1
	cmp/eq r1,r3
	bt loc_8c03b84a

loc_8c03b824:
	mov.l @(0x7C,PC),r3
	mov.b @r3,r7
	cmp/pz r7
	bt loc_8c03b836
	mov.w @(0x60,PC),r0
	mov.l @(0x74,PC),r2
	mov.b @(r0,r4),r1
	bra loc_8c03b83e
	mov.b r1,@r2

loc_8c03b836:
	mov.w @(0x56,PC),r0
	mov.b @(r0,r4),r2
	cmp/eq r2,r7
	bf loc_8c03b84a

loc_8c03b83e:
	mov 0x07,r0
	mov.l @(0x64,PC),r3
	mov.b r0,@(0x4,r4)
	mov 0x32,r0
	jmp @r3
	mov.b r5,@(r0,r6)

loc_8c03b84a:
	mov 0x0A,r0
	bra loc_8c03b85a
	mov.b r0,@(0x4,r4)

loc_8c03b850:
	mov 0x03,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)

loc_8c03b85a:
	rts
	nop

;==============================================
loc_8c03b85e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(0x2C,PC),r12
	extu.b r0,r0
	mov.l @(0x20,PC),r13
	cmp/eq 0x00,r0
	bt loc_8c03b8ac
	cmp/eq 0x01,r0
	bt loc_8c03b8c0
	cmp/eq 0x02,r0
	bt loc_8c03b8d4
	cmp/eq 0x03,r0
	bt loc_8c03b974
	bra loc_8c03b988
	nop

;##############################################
	#data 0x0524
	#data 0x05a4
	#data 0x0089
	#data 0x008c
	#data 0x04c8
	#align4
	#data 0x8c28c410
	#data 0x8c268340
	#data 0x8c26823c
	#data 0x8c212cdb
	#data 0x8c28c46c
	#data bank0f.loc_8c0f5d24

;----------------------------------------------
loc_8c03b8ac:
	mov.b @(0x6,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x32,r0
	mov.b r3,@(r0,r13)
	add 0x57,r0
	mov.l @r12,r2
	mov 0x01,r3
	mov.b r3,@(r0,r2)

loc_8c03b8c0:
	mov.w @(0xD2,PC),r0
	mov.b @(r0,r14),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c03b988
	mov.b @(0x6,r14),r0
	add 0x01,r0
	bra loc_8c03b988
	mov.b r0,@(0x6,r14)

loc_8c03b8d4:
	mov 0x4C,r0
	mov.l @(0xCC,PC),r10
	mov.w @(r0,r13),r2
	mov.l @(0xCC,PC),r11
	tst r2,r2
	bf.s loc_8c03b8ee
	mov r10,r4
	mov.w @(0xB0,PC),r0
	mov.w @(0xB0,PC),r3
	mov.b @(r0,r14),r0
	shll r0
	bra loc_8c03b95a
	mov.w r3,@(r0,r4)

loc_8c03b8ee:
	mov.w @(0xA4,PC),r0
	mov.w @(0xA6,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b912
	mov.w @(0x9A,PC),r3
	mov.l @r12,r0
	mov.b @(r0,r3),r1
	add 0xFF,r1
	mov.b r1,@(r0,r3)
	mov.w @(0x8A,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x40,r4

loc_8c03b912:
	mov.w @(0x80,PC),r0
	mov.w @(0x86,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r10),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b936
	mov.w @(0x76,PC),r3
	mov.l @r12,r0
	mov.b @(r0,r3),r1
	add 0x01,r1
	mov.b r1,@(r0,r3)
	mov.w @(0x66,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x40,r4

loc_8c03b936:
	mov.w @(0x62,PC),r0
	mov 0x01,r2
	mov.l @r12,r3
	mov.b @(r0,r3),r1
	and r2,r1
	mov.b r1,@(r0,r3)
	mov.l @r12,r3
	mov.b @(r0,r3),r1
	mov.w @(0x56,PC),r0
	mov.b r1,@(r0,r14)
	add 0x5A,r0
	mov.b @(r0,r14),r0
	mov.w @(0x50,PC),r1
	shll r0
	mov.w @(r0,r10),r3
	extu.w r3,r3
	tst r1,r3
	bt loc_8c03b988

loc_8c03b95a:
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x32,r0
	mov.b r3,@(r0,r13)
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x41,r4
	bra loc_8c03b988
	nop

loc_8c03b974:
	mov.w @(0x1E,PC),r0
	mov.b @(r0,r14),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c03b988
	bsr loc_8c03ba4a
	mov r14,r4
	mov 0x0A,r0
	mov.b r0,@(0x4,r14)

loc_8c03b988:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0524
	#data 0x0200
	#data 0x2000
	#data 0x0089
	#data 0x1000
	#data 0x04ca
	#data 0x03f0
	#align4
	#data 0x8c28c474
	#data bank04.loc_8c04257c

;==============================================
loc_8c03b9ac:
	mov.w @(0x128,PC),r0
	mov.l @(0x138,PC),r5
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	mov.w @(0x11E,PC),r2
	shll r0
	mov.l @(0x124,PC),r14 ;StageID 
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b9cc
	mov.b @r14,r0
	add 0xFF,r0
	mov.b r0,@r14

loc_8c03b9cc:
	mov.w @(0x108,PC),r0
	mov.w @(0x10A,PC),r2
	mov.b @(r0,r4),r0
	shll r0
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b9e2
	mov.b @r14,r0
	add 0x01,r0
	mov.b r0,@r14

loc_8c03b9e2:
	mov.b @r14,r1
	mov.l @(0x104,PC),r3
	extu.b r1,r1
	add 0x11,r1
	jsr @r3
	mov 0x11,r0
	mov.b r0,@r14
	mov.w @(0xE4,PC),r0
	mov.w @(0xE8,PC),r2
	mov.b @(r0,r4),r0
	shll r0
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ba04
	mov 0x0A,r0
	mov.b r0,@(0x4,r4)

loc_8c03ba04:
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	mov.w @(0xCA,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c03ba16
	bra loc_8c03ba18
	mov 0x16,r13

loc_8c03ba16:
	mov 0x04,r13

loc_8c03ba18:
	mov.b @r14,r3
	mov 0x16,r5
	mov.l @(0xD0,PC),r2
	mov 0x00,r6
	extu.b r3,r3
	mov.l r3,@-r15
	mov.l @(0xCC,PC),r3
	mov.l r2,@-r15
	jsr @r3
	mov r13,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03ba36:
	mov 0x0A,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c03ba3c:
	mov.w @(0xA0,PC),r0
	mov.l @(0xB8,PC),r5
	mov.b @(r0,r4),r3
	mov.l @r5,r2
	or r3,r2
	rts
	mov.l r2,@r5

;==============================================
loc_8c03ba4a:
	mov.l @(0xB0,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c03ba92
	mov.l @(0xAC,PC),r2
	mov.w @(0x8A,PC),r3
	mov.l @r2,r0
	mov.b @(r0,r3),r3
	tst r3,r3
	bf loc_8c03ba92
	mov.w @(0x76,PC),r0
	mov.l @(0x9C,PC),r5
	mov.b @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c03ba80
	mov.l @r5,r6
	mov.w @(0x74,PC),r0
	mov 0x01,r3
	mov 0x01,r2
	mov.b r3,@(r0,r6)
	add 0xF9,r0
	mov.l @r5,r3
	mov.b @(r0,r3),r1
	or r2,r1
	mov.b r1,@(r0,r3)
	bra loc_8c03ba92
	nop

loc_8c03ba80:
	mov.w @(0x5E,PC),r0
	mov 0x02,r3
	mov 0x02,r2
	mov.b r3,@(r0,r6)
	add 0xF9,r0
	mov.l @r5,r3
	mov.b @(r0,r3),r1
	or r2,r1
	mov.b r1,@(r0,r3)

loc_8c03ba92:
	rts
	nop

loc_8c03ba96:
	rts
	nop

;==============================================
loc_8c03ba9a:
	mov.l @(0x64,PC),r0
	mov.l @(0x64,PC),r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r0,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x58,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(0x50,PC),r3
	mov.l @(0x48,PC),r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03bac6:
	mov.l @(0x38,PC),r4
	mov.l @r4,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x14,r0
	mov.l @r4,r3
	rts
	mov.w r0,@(0x8,r3)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0524
	#data 0x0800
	#data 0x0400
	#data 0x03f0
	#data 0x04c8
	#data 0x008c
	#align4
	#data 0x8c26a95c
	#data 0x8c28c474
	#data bank12.loc_8c1292d4
	#data bank13.loc_8c138250
	#data loc_8c0395c6
	#data 0x8c28c470
	#data 0x8c212cdb
	#data 0x8c26823c
	#data bank14.loc_8c14da2c
	#data bank04.loc_8c044ef0
	#data loc_8c0305d8
	#data loc_8c0395ac

;==============================================
loc_8c03bb14:
	mov.l @(0x128,PC),r4
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03bb3a
	mov.l @r4,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov 0x01,r0
	mov.l @r4,r3
	mov.b r0,@(0x7,r3)
	mov 0x32,r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)

loc_8c03bb3a:
	rts
	nop

;==============================================
loc_8c03bb3e:
	mov.l @(0x100,PC),r4
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03bb68
	mov.l @r4,r2
	mov.l @(0xEC,PC),r3
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	jsr @r3
	mov 0x02,r4
	mov.l @(0xE4,PC),r2
	mov 0x49,r4
	jmp @r2
	lds.l @r15+,pr

loc_8c03bb68:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03bb6e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	jsr @r3
	nop
	mova @(0xD8,PC),r0
	mov.l @(0xD4,PC),r4
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r4),fr2
	mov.l @(0xBC,PC),r14
	fcmp/gt fr2,fr3
	bf loc_8c03bb90
	mov.l @r14,r2
	mov 0x19,r0
	mov 0x01,r3
	mov.b r3,@(r0,r2)

loc_8c03bb90:
	mov.b @(0x7,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c03bbba
	mov.l @r14,r2
	mov.l @(0xBC,PC),r3
	mov.b @(0x4,r2),r0
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x4,r2)
	mov.l @(0xB8,PC),r2
	mov 0x14,r5
	mov 0x01,r6
	jsr @r2
	mov 0xFF,r4
	mov.l @r14,r3
	mov 0x14,r0
	mov 0x01,r2
	mov.w r0,@(0x8,r3)
	mov 0x19,r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)

loc_8c03bbba:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03bbc0:
	mov.l @(0x7C,PC),r4
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03bbde
	mov.l @r4,r2
	mov 0x00,r0
	mov.b r0,@(0x4,r2)
	mov 0x06,r0
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)

loc_8c03bbde:
	rts
	nop

;==============================================
loc_8c03bbe2:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x78,PC),r3
	mov.l @(0x78,PC),r1
	mov.b r4,@r15
	mov.b @r3,r0
	xor 0x01,r0
	shll r0
	mov.w @(r0,r1),r2
	mov.w @(0x46,PC),r0
	extu.w r2,r2
	tst r0,r2
	bt loc_8c03bc6c
	mov.l @(0x5C,PC),r2
	mov 0x14,r5
	mov 0x01,r6
	jsr @r2
	mov 0xFF,r4
	mov.l @(0x38,PC),r4
	mov 0x14,r0
	mov 0x01,r2
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov.b @r15,r3
	tst r3,r3
	bt.s loc_8c03bc22
	mov.l @r4,r5
	bra loc_8c03bc24
	mov 0x07,r0

loc_8c03bc22:
	mov 0x09,r0

loc_8c03bc24:
	mov.l @(0x38,PC),r3
	mov.l @(0x40,PC),r2
	mov.b r0,@(0x4,r5)
	mov.b @r3,r4
	jsr @r2
	add 0x0D,r4
	mov.l @(0x34,PC),r3
	jsr @r3
	mov 0x02,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x03f0
	#align4
	#data 0x8c26823c
	#data bank02.loc_8c02e796
	#data bank04.loc_8c04257c
	#data bank02.loc_8c02e7bc
	#data 0x8c26a518
	#data 0x42200000
	#data loc_8c030f24
	#data loc_8c0355b2
	#data 0x8c28c447
	#data 0x8c28c474
	#data bank02.loc_8c027b64

;==============================================
loc_8c03bc6c:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03bc76:
	mov.l @(0x100,PC),r5
	mov 0x38,r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c03bc8e
	mov.l @(0xF4,PC),r3
	jsr @r3
	nop
	bra loc_8c03bcde
	nop

loc_8c03bc8e:
	mov.l @(0xF0,PC),r4
	mov.w @(0xDC,PC),r0
	mov.l @r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c03bcc4
	mov 0x38,r0
	mov 0x01,r3
	mov.b r3,@(r0,r5)
	mov.l @r4,r2
	mov r2,r0
	nop
	mov.w @(0xC6,PC),r1
	mov 0x00,r5
	mov.w @(0xC4,PC),r3
	mov.b @(r0,r1),r0
	add r2,r3
	xor 0x03,r0
	mov.b r0,@r3
	mov.l @r4,r2
	mov.w @(0xBA,PC),r0
	mov.b r5,@(r0,r2)
	add 0x01,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	bra loc_8c03bcd0
	nop

loc_8c03bcc4:
	mov.b @(0x4,r14),r0
	mov.l @(0xBC,PC),r1
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop

loc_8c03bcd0:
	mov.l @(0xB4,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4

loc_8c03bcde:
	lds.l @r15+,pr
	mov.l @(0xAC,PC),r3
	mov.l @(0xA8,PC),r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03bce8:
	mov.l @(0x94,PC),r4
	mov 0x77,r1
	mov.l r14,@-r15
	mov.l @(0x88,PC),r14
	sts.l pr,@-r15
	mov.l @r4,r3
	mov r14,r2
	add 0x02,r2
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x3C,r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0x37,r0
	mov.b @(r0,r14),r3
	add r2,r3
	mov.b r1,@r3
	mov.l @(0x84,PC),r3
	jsr @r3
	mov.b @(r0,r14),r4
	mov 0x37,r0
	mov r14,r3
	mov.b @(r0,r14),r2
	mov 0x00,r1
	add r3,r2
	mov.b r1,@r2
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03bd24:
	sts.l pr,@-r15
	bsr loc_8c03bbe2
	mov 0x00,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03bd50
	mov.l @(0x4C,PC),r4
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03bd50
	mov.l @r4,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov 0x00,r0
	mov.l @r4,r3
	mov.b r0,@(0x5,r3)

loc_8c03bd50:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03bd56:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x24,PC),r13
	sts.l pr,@-r15
	mov.l @r13,r4
	mov.l @(0x14,PC),r14
	mov.b @(0x5,r4),r0
	cmp/eq 0x00,r0
	bt loc_8c03bd98
	cmp/eq 0x01,r0
	bt loc_8c03bde8
	bra loc_8c03be02
	nop

;##############################################
	#data 0x008c
	#data 0x0084
	#data 0x008d
	#align4
	#data 0x8c28c410
	#data bank04.loc_8c041588
	#data 0x8c26823c
	#data bank14.loc_8c14da40
	#data bank04.loc_8c044ef0
	#data loc_8c0305d8
	#data loc_8c0395ac
	#data loc_8c03d744

;----------------------------------------------
loc_8c03bd98:
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	mov.l @(0x114,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x37,r0
	mov.l @(0x110,PC),r4
	mov.b r3,@r2
	mov.b @(r0,r14),r3
	mov.b @r4,r1
	add 0x01,r3
	or r3,r1
	mov.l @(0x108,PC),r3
	mov.b r1,@r4
	jsr @r3
	mov.b @(r0,r14),r4
	mov.l @(0x104,PC),r3
	mov 0x37,r0
	jsr @r3
	mov.b @(r0,r14),r4
	mov.w @(0xEE,PC),r1
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bf loc_8c03bdd8
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(0xF4,PC),r3
	mov.b @(r0,r14),r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03bdd8:
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(0xE8,PC),r3
	mov.b @(r0,r14),r4
	mov 0x01,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03bde8:
	mov 0x37,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add r2,r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c03be02
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r0
	mov.l @r13,r3
	mov.b r0,@(0x5,r3)

loc_8c03be02:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03be0a:
	mov.l @(0xC0,PC),r4
	mov 0x37,r0
	mov.b @(r0,r4),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c03be22
	mov.l @(0xB4,PC),r3
	mov.l @r3,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)

loc_8c03be22:
	rts
	nop

;==============================================
loc_8c03be26:
	sts.l pr,@-r15
	bsr loc_8c03bbe2
	mov 0x00,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03be42
	mov.l @(0x9C,PC),r4
	mov.l @r4,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x0F,r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)

loc_8c03be42:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03be48:
	mov.l @(0x84,PC),r4
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03be72
	mov.l @r4,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov 0x01,r0
	mov.l @r4,r3
	mov.b r0,@(0x7,r3)
	mov 0x32,r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	bra loc_8c03be76
	nop

loc_8c03be72:
	bra loc_8c03bbe2
	mov 0x00,r4

loc_8c03be76:
	rts
	nop

;==============================================
loc_8c03be7a:
	sts.l pr,@-r15
	bsr loc_8c03bbe2
	mov 0x00,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03beac
	mov.l @(0x48,PC),r4
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03beac
	mov.l @r4,r2
	mov 0x00,r3
	mov.l @(0x38,PC),r1
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov.l @(0x2C,PC),r2
	mov.b r3,@r2
	jmp @r1
	lds.l @r15+,pr

loc_8c03beac:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0081
	#data 0x8c26a960
	#data 0x8c26a961
	#data loc_8c0397a4
	#data loc_8c0399c0
	#data bank0f.loc_8c0f49b0
	#data bank0f.loc_8c0f4964
	#data 0x8c28c410
	#data 0x8c26823c
	#data 0x8c28c41b
	#data bank0f.loc_8c0f71a8

;==============================================
loc_8c03bedc:
	sts.l pr,@-r15
	bsr loc_8c03bbe2
	mov 0x00,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03bf0a
	mov.l @(0xA8,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c03bf0a
	mov.l @(0xA4,PC),r2
	mov.l @r2,r1
	mov.b @(0x4,r1),r0
	add 0x01,r0
	mov.b r0,@(0x4,r1)
	mov.l @(0x9C,PC),r1
	jsr @r1
	mov 0x02,r4
	mov.l @(0x9C,PC),r3
	mov 0x49,r4
	jmp @r3
	lds.l @r15+,pr

loc_8c03bf0a:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03bf10:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop
	mova @(0x90,PC),r0
	mov.l @(0x88,PC),r4
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r4),fr2
	mov.l @(0x70,PC),r14
	fcmp/gt fr2,fr3
	bf loc_8c03bf32
	mov.l @r14,r2
	mov 0x19,r0
	mov 0x01,r3
	mov.b r3,@(r0,r2)

loc_8c03bf32:
	mov.b @(0x7,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c03bf70
	mov.l @r14,r2
	mov.l @(0x74,PC),r3
	mov.b @(0x4,r2),r0
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x4,r2)
	mov.l @(0x6C,PC),r2
	mov 0x14,r5
	mov 0x01,r6
	jsr @r2
	mov 0xFF,r4
	mov.l @r14,r3
	mov 0x14,r0
	mov 0x01,r2
	mov.w r0,@(0x8,r3)
	mov 0x19,r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov.l @(0x58,PC),r3
	mov.l @(0x5C,PC),r2
	mov.b @r3,r4
	jsr @r2
	add 0x0D,r4
	lds.l @r15+,pr
	mov.l @(0x50,PC),r3
	mov 0x02,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c03bf70:
	lds.l @r15+,pr
	mov 0x00,r4
	bra loc_8c03bbe2
	mov.l @r15+,r14

;==============================================
loc_8c03bf78:
	mov.l @(0x1C,PC),r4
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03bf90
	mov.l @r4,r2
	mov 0x06,r0
	mov.b r0,@(0x3,r2)

loc_8c03bf90:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c28c41b
	#data 0x8c26823c
	#data bank02.loc_8c02e796
	#data bank04.loc_8c04257c
	#data bank02.loc_8c02e7bc
	#data 0x8c26a518
	#data 0x42200000
	#data loc_8c030f24
	#data loc_8c0355b2
	#data 0x8c28c447
	#data bank02.loc_8c027b64

;==============================================
loc_8c03bfc0:
	mov.l r14,@-r15
	mov.l @(0x138,PC),r14
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov.w @(0x10E,PC),r2
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.w @(0x106,PC),r1
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov.l @r14,r3
	mov.l @r14,r0
	add r3,r2
	mov.b @r2,r2
	mov.b @(r0,r1),r0
	or r2,r0
	tst 0x01,r0
	bt loc_8c03c008
	mov.l @(0xFC,PC),r4
	bsr loc_8c03cc28
	nop

loc_8c03c008:
	mov.w @(0xE2,PC),r3
	mov.l @r14,r4
	mov.w @(0xDC,PC),r0
	add r4,r3
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	or r3,r0
	tst 0x02,r0
	bt loc_8c03c020
	mov.l @(0xE8,PC),r4
	bsr loc_8c03cc28
	nop

loc_8c03c020:
	mov.w @(0xCA,PC),r0
	mov.l @r14,r3
	mov r0,r1
	add 0x01,r1
	mov r3,r2
	add r2,r1
	mov.b @r1,r2
	mov.b @(r0,r3),r1
	or r2,r1
	mov.l @(0xD8,PC),r2
	mov.b r1,@(r0,r3)
	add 0x01,r0
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	add 0x08,r0
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	add 0x01,r0
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	add 0xFE,r0
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	mov.l @(0xB8,PC),r3
	jsr @r2
	mov.b r13,@r3
	mov.w @(0x98,PC),r0
	mov 0x01,r3
	mov.l @(0xB4,PC),r2
	mov.l @r14,r1
	jsr @r2
	mov.b r3,@(r0,r1)
	lds.l @r15+,pr
	mov.l @(0xB0,PC),r1
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14


;==============================================
loc_8c03c06a:
	mov.l @(0x94,PC),r4
	mov.w @(0x82,PC),r0
	mov.l @(0xA8,PC),r5
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov.w @(0x7A,PC),r0
	mov.w r3,@r5
	mov.w @(r0,r4),r0
	mov.w r0,@(0x2,r5)
	mov 0x38,r0
	mov.l @(0x98,PC),r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c03c092
	mov.l @(0x94,PC),r3
	jsr @r3
	nop
	bra loc_8c03c0e2
	nop

loc_8c03c092:
	mov.l @(0x68,PC),r4
	mov.w @(0x5E,PC),r0
	mov.l @r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c03c0c8
	mov 0x38,r0
	mov 0x01,r3
	mov.b r3,@(r0,r5)
	mov.l @r4,r2
	mov r2,r0
	nop
	mov.w @(0x48,PC),r1
	mov 0x00,r5
	mov.w @(0x3C,PC),r3
	mov.b @(r0,r1),r0
	add r2,r3
	xor 0x03,r0
	mov.b r0,@r3
	mov.l @r4,r2
	mov.w @(0x3A,PC),r0
	mov.b r5,@(r0,r2)
	add 0x01,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	bra loc_8c03c0d4
	nop

loc_8c03c0c8:
	mov.b @(0x4,r14),r0
	mov.l @(0x58,PC),r1
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop

loc_8c03c0d4:
	mov.l @(0x50,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4

loc_8c03c0e2:
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	mov.l @(0x44,PC),r4
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0085
	#data 0x0084
	#data 0x009a
	#data 0x04f4
	#data 0x0a98
	#data 0x008c
	#data 0x008d
	#align4
	#data 0x8c26823c
	#data 0x8c268340
	#data pl_mem.player_start_charB
	#data 0x8c28c448
	#data loc_8c03d46e
	#data bank04.loc_8c04182e
	#data bank04.loc_8c041ecc
	#data 0x8c28c474
	#data 0x8c28c410
	#data bank04.loc_8c041588
	#data bank14.loc_8c14da68
	#data bank04.loc_8c044ef0
	#data loc_8c0305d8
	#data loc_8c0395ac

;==============================================
loc_8c03c134:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x128,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c03c14a
	bra loc_8c03c25a
	nop

loc_8c03c14a:
	mov.l @(0x120,PC),r13
	mov.l @(0x120,PC),r3
	mov.w @(0x112,PC),r0
	mov.l @r13,r4
	jsr @r3
	mov.b @(r0,r4),r4
	mov.l @r13,r2
	mov 0x00,r14
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov.l @r13,r3
	mov r14,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r13,r3
	mov.b r0,@(0x6,r3)
	mov.l @r13,r3
	mov.b r0,@(0x7,r3)
	mov.w @(0xF2,PC),r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)
	mov 0x19,r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)
	add 0x74,r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)
	add 0x01,r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)
	add 0x0C,r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)
	mov.l @(0xE4,PC),r3
	jsr @r3
	nop
	mov.l @(0xE0,PC),r2
	jsr @r2
	nop
	mov.l @(0xE0,PC),r3
	jsr @r3
	nop
	mov.l @(0xDC,PC),r13
	mov r14,r0
	nop
	mov r13,r4
	add 0x30,r4
	mov.l @(0xD8,PC),r3
	mov.b r0,@(0xC,r13)
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov r13,r4
	add 0x34,r4
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov 0x38,r0
	jsr @r3
	mov.b r14,@(r0,r13)
	mov.l @(0xC4,PC),r2
	jsr @r2
	mov 0x05,r4
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov 0x16,r4
	mov.l @(0xC0,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(0xC0,PC),r3
	jsr @r3
	nop
	mov.l @(0xBC,PC),r3
	mov 0x33,r0
	mov 0x03,r2
	jsr @r3
	mov.b r2,@(r0,r13)
	mov.l @(0xBC,PC),r3
	mov.l @(0xB4,PC),r1
	jsr @r3
	mov.l r0,@r1
	mov.l @(0xB8,PC),r2
	jsr @r2
	nop
	mov.l @(0xB4,PC),r3
	jsr @r3
	nop
	mov.l @(0xB4,PC),r2
	jsr @r2
	nop
	mov.l @(0xB0,PC),r3
	jsr @r3
	nop
	mov.l @(0xB0,PC),r2
	jsr @r2
	nop
	mov 0x04,r0
	fldi1 fr4
	mov.l @(0xA8,PC),r3
	fmov fr4,@r15
	fmov fr4,@(r0,r15)
	mov 0x08,r0
	fmov fr4,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0xA0,PC),r2
	jsr @r2
	nop
	mov.l @(0x9C,PC),r4
	mov 0x04,r0
	fldi0 fr4
	mov 0x01,r3
	mov.b r3,@r4
	mov.b r0,@(0x8,r4)
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mova @(0x90,PC),r0
	fmov @r0,fr5
	mov 0x10,r0
	mov.l @(0x94,PC),r3
	fmov fr5,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr5,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	add 0x24,r0
	jsr @r3
	fmov fr4,@(r0,r4)
	mov.l @(0x78,PC),r2
	jsr @r2
	mov r14,r4

loc_8c03c25a:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0084
	#data 0x008c
	#align4
	#data bank02.loc_8c0279a4
	#data 0x8c26823c
	#data bank02.loc_8c027b30
	#data bank04.loc_8c044d8c
	#data loc_8c0357d8
	#data loc_8c03580c
	#data 0x8c28c410
	#data loc_8c03d46e
	#data loc_8c032be0
	#data bank04.loc_8c041dde
	#data bank04.loc_8c041aa6
	#data bank04.loc_8c041e44
	#data bank0f.loc_8c0f35fc
	#data 0x8c28c468
	#data bank0f.loc_8c0f3954
	#data bank0f.loc_8c0f5768
	#data loc_8c0355a8
	#data loc_8c030e30
	#data loc_8c030f24
	#data loc_8c031ef8
	#data loc_8c031f10
	#data bank02.loc_8c02e014
	#data 0x8c26a518
	#data 0x433e0000
	#data 0x444b16de
	#data bank02.loc_8c02e7bc
	#data bank02.loc_8c027b64

;==============================================
loc_8c03c2d4:
	mov.l @(0xD4,PC),r4
	mov.l r14,@-r15
	mov.w @(0xCA,PC),r0
	mov.w @(0xCA,PC),r3
	mov.l @(0xD0,PC),r2
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r4,r14
	mov.l @(0xC8,PC),r11
	mov.b @(r0,r14),r14
	mov.l @(0xC8,PC),r13
	add 0xFF,r14
	mul.l r3,r14
	sts macl,r14
	add r2,r14
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c03c310
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c03c378
	cmp/eq 0x02,r0
	bt loc_8c03c38e
	cmp/eq 0x03,r0
	bt loc_8c03c3d4
	bra loc_8c03c434
	nop

loc_8c03c310:
	mov.b @(0x5,r14),r0
	mov r13,r1
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r14),r3
	add r1,r3
	mov 0x37,r1
	mov.b r12,@r3
	mov.b @(r0,r14),r0
	add r13,r1
	mov.l @(0x94,PC),r3
	xor 0x01,r0
	mov.b r0,@r1
	mov 0x37,r0
	jsr @r3
	mov.b @(r0,r13),r4
	mov 0x37,r0
	mov r13,r3
	mov.b @(r0,r13),r2
	add 0x02,r3
	add r3,r2
	mov.b r12,@r2
	mov.l @(0x80,PC),r2
	jsr @r2
	nop
	mov.l @(0x7C,PC),r3
	mov 0x00,r5
	mov.w @(0x5E,PC),r0
	jsr @r3
	mov.b @(r0,r14),r4
	mov.w @(0x58,PC),r0
	mov 0x01,r2
	mov.l @(0x74,PC),r3
	mov.b r2,@r3
	mov.b @(r0,r14),r1
	mov.b @r11,r2
	add 0x01,r1
	or r1,r2
	mov.b r2,@r11
	mov.l @(0x68,PC),r2
	jsr @r2
	mov.b @(r0,r14),r4
	lds.l @r15+,pr
	mov.w @(0x3E,PC),r0
	mov.l @(0x64,PC),r3
	mov.l @r15+,r11
	mov.b @(r0,r14),r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03c378:
	mov.w @(0x2E,PC),r0
	mov r13,r1
	mov.b @(r0,r14),r3
	add r1,r3
	mov.b @r3,r3
	tst r3,r3
	bf loc_8c03c434
	mov.b @(0x5,r14),r0
	add 0x01,r0
	bra loc_8c03c434
	mov.b r0,@(0x5,r14)

loc_8c03c38e:
	mov.w @(0x18,PC),r0
	mov.b @(r0,r14),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c03c434
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x14,r0
	bra loc_8c03c434
	mov.w r0,@(0x1C,r14)

;##############################################
	#data 0x0084
	#data 0x05a4
	#data 0x0524
	#align4
	#data 0x8c26823c
	#data 0x8c268340
	#data 0x8c26a961
	#data 0x8c28c410
	#data loc_8c03d4bc
	#data loc_8c03d928
	#data bank0f.loc_8c0f4964
	#data 0x8c26a960
	#data loc_8c0397a4
	#data loc_8c0399c0

;----------------------------------------------
loc_8c03c3d4:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bt loc_8c03c434
	mov.l @r4,r1
	mov.b @(0x4,r1),r0
	add 0x01,r0
	mov.b r0,@(0x4,r1)
	mov r12,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x37,r0
	mov r13,r1
	mov.b @(r0,r13),r3
	add 0x02,r1
	add r1,r3
	mov 0x77,r1
	mov.b r1,@r3
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov.b @(r0,r13),r4
	mov 0x37,r0
	mov r13,r3
	mov.b @(r0,r13),r2
	add r3,r2
	mov.l @(0xDC,PC),r3
	mov.b r12,@r2
	mov 0x01,r2
	mov.b r2,@r3
	mov.b @(r0,r13),r1
	mov.b @r11,r2
	add 0x01,r1
	or r1,r2
	mov.b r2,@r11
	mov.l @(0xCC,PC),r2
	jsr @r2
	mov.b @(r0,r13),r4
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(0xC8,PC),r3
	mov.b @(r0,r13),r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03c434:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03c440:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0xAC,PC),r13
	sts.l pr,@-r15
	mov.l @r13,r4
	mov.l @(0xAC,PC),r14
	mov.b @(0x5,r4),r0
	cmp/eq 0x00,r0
	bt loc_8c03c45a
	cmp/eq 0x01,r0
	bt loc_8c03c492
	bra loc_8c03c4b8
	nop

loc_8c03c45a:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	bsr loc_8c03bbe2
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03c4b2
	mov.w @(0x74,PC),r1
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bf loc_8c03c482
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(0x80,PC),r3
	mov.b @(r0,r14),r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03c482:
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(0x78,PC),r3
	mov.b @(r0,r14),r4
	mov 0x01,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03c492:
	bsr loc_8c03bbe2
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03c4b8
	mov 0x37,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add r2,r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c03c4b8
	mov.l @r13,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)

loc_8c03c4b2:
	mov.l @r13,r3
	mov 0x00,r0
	mov.b r0,@(0x5,r3)

loc_8c03c4b8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03c4c0:
	sts.l pr,@-r15
	bsr loc_8c03bbe2
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03c4dc
	mov.l @(0x24,PC),r4
	mov.l @r4,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x0F,r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)

loc_8c03c4dc:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0081
	#align4
	#data loc_8c03d744
	#data 0x8c26a960
	#data loc_8c0397a4
	#data loc_8c0399c0
	#data 0x8c26823c
	#data 0x8c28c410
	#data bank0f.loc_8c0f49b0
	#data bank0f.loc_8c0f4964

;==============================================
loc_8c03c504:
	sts.l pr,@-r15
	bsr loc_8c03bbe2
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03c526
	mov.l @(0x114,PC),r2
	mov.l @(0x118,PC),r1
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x00,r3
	mov.b r3,@r1
	mov.l @(0x10C,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c03c526:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03c52c:
	sts.l pr,@-r15
	bsr loc_8c03bbe2
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03c55a
	mov.l @(0xF0,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c03c55a
	mov.l @(0xE4,PC),r2
	mov.l @r2,r1
	mov.b @(0x4,r1),r0
	add 0x01,r0
	mov.b r0,@(0x4,r1)
	mov.l @(0xE4,PC),r1
	jsr @r1
	mov 0x02,r4
	mov.l @(0xE4,PC),r3
	mov 0x49,r4
	jmp @r3
	lds.l @r15+,pr

loc_8c03c55a:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03c560:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	jsr @r3
	nop
	mov.l @(0xD4,PC),r0
	mov.b @r0,r0
	cmp/eq 0x02,r0
	bf loc_8c03c5ac
	mov.l @(0xB4,PC),r14
	mov.l @(0xCC,PC),r3
	mov.l @r14,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x4,r2)
	mov.l @(0xC4,PC),r2
	mov 0x14,r5
	mov 0x01,r6
	jsr @r2
	mov 0xFF,r4
	mov.l @r14,r3
	mov 0x14,r0
	mov 0x01,r2
	mov.w r0,@(0x8,r3)
	mov 0x19,r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov.l @(0xB0,PC),r3
	mov.l @(0xB4,PC),r2
	mov.b @r3,r4
	jsr @r2
	add 0x0D,r4
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r3
	mov 0x02,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c03c5ac:
	lds.l @r15+,pr
	mov 0x01,r4
	bra loc_8c03bbe2
	mov.l @r15+,r14

;==============================================
loc_8c03c5b4:
	mov.l @(0x70,PC),r4
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03c5ce
	mov.l @r4,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)

loc_8c03c5ce:
	rts
	nop

;==============================================
loc_8c03c5d2:
	mov.l @(0x54,PC),r5
	mov 0x00,r4
	sts.l pr,@-r15
	mov.l @r5,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov.l @r5,r3
	mov r4,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.l @r5,r3
	mov.b r0,@(0x5,r3)
	mov.l @r5,r3
	mov.b r0,@(0x6,r3)
	mov.l @r5,r3
	mov.b r0,@(0x7,r3)
	mov.l @r5,r3
	mov.w r0,@(0x8,r3)
	mov.w @(0x28,PC),r0
	mov.l @r5,r3
	mov.b r4,@(r0,r3)
	add 0x01,r0
	mov.l @r5,r3
	mov.b r4,@(r0,r3)
	add 0xFE,r0
	mov.l @r5,r3
	mov.b r4,@(r0,r3)
	add 0x0E,r0
	mov.l @(0x44,PC),r3
	mov.b r4,@r3
	mov.l @r5,r2
	mov.b r4,@(r0,r2)
	bsr loc_8c03d46e
	nop
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop
	mov.l @(0x3C,PC),r2
	jmp @r2
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x008d
	#align4
	#data 0x8c26823c
	#data 0x8c28c41b
	#data bank0f.loc_8c0f71a8
	#data bank02.loc_8c02e796
	#data bank04.loc_8c04257c
	#data bank02.loc_8c02e7bc
	#data 0x8c26a51f
	#data loc_8c030f24
	#data loc_8c0355b2
	#data 0x8c28c447
	#data bank02.loc_8c027b64
	#data 0x8c28c448
	#data bank04.loc_8c04182e
	#data bank04.loc_8c041ecc

;==============================================
loc_8c03c660:
	mov.l @r4,r3
	mov 0x08,r0
	fmov @(r0,r4),fr2
	mov 0x14,r0
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r4)
	mov 0x18,r0
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c03c678:
	mov.l @r4,r3
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov 0x1C,r0
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r4)
	mov 0x20,r0
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c03c690:
	mov.l @r4,r3
	mov 0x10,r0
	fmov @(r0,r4),fr2
	mov 0x24,r0
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r4)
	mov 0x28,r0
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c03c6a8:
	mov.l @(0x4,r4),r3
	mov 0x08,r0
	fmov @(r0,r4),fr2
	mov 0x18,r0
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x14,r0
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c03c6be:
	mov.l @(0x4,r4),r3
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov 0x20,r0
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x1C,r0
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c03c6d4:
	mov.l @(0x4,r4),r3
	mov 0x10,r0
	fmov @(r0,r4),fr2
	mov 0x28,r0
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x24,r0
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c03c6ea:
	mov.l @(0x4,r4),r3
	mov 0x08,r0
	fmov @(r0,r4),fr2
	mov 0x18,r0
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x14,r0
	mov.l @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x18,r0
	fmov @(r0,r4),fr3
	fneg fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c03c710:
	mov.l @(0x4,r4),r3
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov 0x20,r0
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x1C,r0
	mov.l @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x20,r0
	fmov @(r0,r4),fr3
	fneg fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c03c736:
	mov.l @(0x4,r4),r3
	mov 0x10,r0
	fmov @(r0,r4),fr2
	mov 0x28,r0
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x24,r0
	mov.l @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x28,r0
	fmov @(r0,r4),fr3
	fneg fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c03c75c:
	mov 0x2C,r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c03c76c
	cmp/eq 0x02,r0
	bt loc_8c03c770
	bra loc_8c03c774
	nop

loc_8c03c76c:
	bra loc_8c03c6a8
	nop

loc_8c03c770:
	bra loc_8c03c6ea
	nop

loc_8c03c774:
	bra loc_8c03c660
	nop

loc_8c03c778:
	mov 0x2D,r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c03c788
	cmp/eq 0x02,r0
	bt loc_8c03c78c
	bra loc_8c03c790
	nop
 
loc_8c03c788:
	bra loc_8c03c6be
	nop

loc_8c03c78c:
	bra loc_8c03c710
	nop

loc_8c03c790:
	bra loc_8c03c678
	nop

loc_8c03c794:
	mov 0x2E,r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c03c7a4
	cmp/eq 0x02,r0
	bt loc_8c03c7a8
	bra loc_8c03c7ac
	nop

loc_8c03c7a4:
	bra loc_8c03c6d4
	nop

loc_8c03c7a8:
	bra loc_8c03c736
	nop

loc_8c03c7ac:
	bra loc_8c03c690
	nop

;==============================================
loc_8c03c7b0:
	mov.l @(0x4,r4),r3
	mov 0x18,r0
	fmov @(r0,r4),fr4
	mov 0x08,r0
	lds r3,fpul
	mov.l @r4,r3
	fmov @(r0,r4),fr2
	mov 0x14,r0
	float fpul,fr3
	lds r3,fpul
	fmul fr4,fr3
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fadd fr4,fr2
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c03c7d2:
	mov.l @(0x4,r4),r3
	mov 0x20,r0
	fmov @(r0,r4),fr4
	mov 0x0C,r0
	lds r3,fpul
	mov.l @r4,r3
	fmov @(r0,r4),fr2
	mov 0x1C,r0
	float fpul,fr3
	lds r3,fpul
	fmul fr4,fr3
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fadd fr4,fr2
	rts
	fmov fr2,@(r0,r4)

loc_8c03c7f4:
	mov 0x14,r0
	fldi0 fr2
	fmov @(r0,r4),fr3
	fcmp/eq fr2,fr3
	bt loc_8c03c82a
	mov.l @r4,r2
	mov 0x18,r1
	fmov @(r0,r4),fr2
	mov 0x08,r0
	lds r2,fpul
	add r4,r1
	mov.l @(0x4,r4),r3
	float fpul,fr3
	lds r3,fpul
	fmul fr2,fr3
	fmov @(r0,r4),fr2
	mov 0x18,r0
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	bra loc_8c03c82e
	fmov fr2,@(r0,r4)

loc_8c03c82a:
	bra loc_8c03c75c
	nop

loc_8c03c82e:
	rts
	nop

;==============================================
loc_8c03c832:
	mov 0x1C,r0
	fldi0 fr2
	fmov @(r0,r4),fr3
	fcmp/eq fr2,fr3
	bt loc_8c03c868
	mov.l @r4,r2
	mov 0x20,r1
	fmov @(r0,r4),fr2
	mov 0x0C,r0
	lds r2,fpul
	add r4,r1
	mov.l @(0x4,r4),r3
	float fpul,fr3
	lds r3,fpul
	fmul fr2,fr3
	fmov @(r0,r4),fr2
	mov 0x20,r0
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x1C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	bra loc_8c03c86c
	fmov fr2,@(r0,r4)

loc_8c03c868:
	bra loc_8c03c778
	nop

loc_8c03c86c:
	rts
	nop

;==============================================
loc_8c03c870:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov 0x34,r0
	mov r4,r14
	mov r5,r3
	mov r5,r4
	add 0xFF,r3
	mov.l r5,@r15
	mul.l r3,r4
	mov 0x00,r2
	sts macl,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	add r4,r3
	mov.l r3,@(0x4,r15)
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fsub fr3,fr4
	fmov fr4,@(r0,r15)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fsub fr3,fr5
	fmov fr5,@(r0,r15)
	mov 0x2C,r0
	mov.b r6,@(r0,r15)
	mov 0x2D,r0
	mov.b r7,@(r0,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c03c8c6
	mov 0x20,r0
	fldi0 fr3
	fmov fr3,@(r0,r15)
	mov 0x1C,r0
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	bra loc_8c03c8ce
	fmov fr3,@(r0,r15)

loc_8c03c8c6:
	bsr loc_8c03c75c
	mov r15,r4
	bsr loc_8c03c778
	mov r15,r4

loc_8c03c8ce:
	mov 0x14,r0
	fmov @(r0,r15),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x18,r0
	fmov @(r0,r15),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x1C,r0
	fmov @(r0,r15),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	fmov @(r0,r15),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03c8f6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov r5,r3
	mov r4,r14
	add 0xFF,r3
	mov r5,r4
	mul.l r3,r4
	mov 0x34,r0
	mov.l r5,@r15
	mov 0x00,r2
	sts macl,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	add r4,r3
	mov.l r3,@(0x4,r15)
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fsub fr3,fr4
	fmov fr4,@(r0,r15)
	mov 0x2C,r0
	mov.b r6,@(r0,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c03c936
	mov 0x18,r0
	fldi0 fr3
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	bra loc_8c03c93a
	fmov fr3,@(r0,r15)

loc_8c03c936:
	bsr loc_8c03c75c
	mov r15,r4

loc_8c03c93a:
	mov 0x14,r0
	fmov @(r0,r15),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x18,r0
	fmov @(r0,r15),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03c952:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov r5,r3
	mov r4,r14
	add 0xFF,r3
	mov r5,r4
	mul.l r3,r4
	mov 0x3C,r0
	mov.l r5,@r15
	mov 0x00,r2
	sts macl,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	add r4,r3
	mov.l r3,@(0x4,r15)
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fsub fr3,fr4
	fmov fr4,@(r0,r15)
	mov 0x2E,r0
	mov.b r6,@(r0,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c03c992
	mov 0x28,r0
	fldi0 fr3
	fmov fr3,@(r0,r15)
	mov 0x24,r0
	bra loc_8c03c996
	fmov fr3,@(r0,r15)

loc_8c03c992:
	bsr loc_8c03c794
	mov r15,r4

loc_8c03c996:
	mov 0x24,r0
	fmov @(r0,r15),fr3
	mov 0x64,r0
	fmov fr3,@(r0,r14)
	mov 0x28,r0
	fmov @(r0,r15),fr3
	mov 0x70,r0
	fmov fr3,@(r0,r14)
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03c9ae:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov 0x34,r0
	mov r4,r14
	mov r5,r3
	mov r5,r4
	add 0xFF,r3
	mov.l r5,@r15
	mul.l r3,r4
	mov 0x00,r2
	sts macl,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	add r4,r3
	mov.l r3,@(0x4,r15)
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fsub fr3,fr4
	fmov fr4,@(r0,r15)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fsub fr3,fr5
	fmov fr5,@(r0,r15)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov 0x6C,r0
	fmov @(r0,r14),fr3
	mov 0x20,r0
	fmov fr3,@(r0,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c03ca04
	mov 0x1C,r0
	fldi0 fr3
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	bra loc_8c03ca0c
	fmov fr3,@(r0,r15)

loc_8c03ca04:
	bsr loc_8c03c7b0
	mov r15,r4
	bsr loc_8c03c7d2
	mov r15,r4

loc_8c03ca0c:
	mov 0x14,r0
	fmov @(r0,r15),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x1C,r0
	fmov @(r0,r15),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03ca24:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	extu.b r6,r6
	mov r4,r14
	lds r6,fpul
	mov r5,r3
	mov r5,r4
	add 0xFF,r3
	mul.l r3,r4
	float fpul,fr3
	mov 0x38,r0
	mov 0x00,r2
	mov.l r5,@r15
	sts macl,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	add r4,r3
	mov.l r3,@(0x4,r15)
	fmov @(r0,r14),fr2
	mov 0x0C,r0
	fsub fr2,fr3
	fmov fr3,@(r0,r15)
	mov 0x6C,r0
	fmov @(r0,r14),fr3
	mov 0x20,r0
	fmov fr3,@(r0,r15)
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c03ca66
	bsr loc_8c03c7d2
	mov r15,r4

loc_8c03ca66:
	mov 0x1C,r0
	fmov @(r0,r15),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03ca76:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov 0x34,r0
	mov r4,r14
	mov r5,r3
	mov r5,r4
	add 0xFF,r3
	mov.l r5,@r15
	mul.l r3,r4
	mov 0x00,r2
	sts macl,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	add r4,r3
	mov.l r3,@(0x4,r15)
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fsub fr3,fr4
	fmov fr4,@(r0,r15)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fsub fr3,fr5
	fmov fr5,@(r0,r15)
	mov 0x2C,r0
	mov.b r6,@(r0,r15)
	mov 0x2D,r0
	mov.b r7,@(r0,r15)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x1C,r0
	fmov fr3,@(r0,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c03cad4
	mov 0x20,r0
	fldi0 fr3
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	bra loc_8c03cadc
	fmov fr3,@(r0,r15)

loc_8c03cad4:
	bsr loc_8c03c7f4
	mov r15,r4
	bsr loc_8c03c832
	mov r15,r4

loc_8c03cadc:
	mov 0x14,r0
	fmov @(r0,r15),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x18,r0
	fmov @(r0,r15),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x1C,r0
	fmov @(r0,r15),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	fmov @(r0,r15),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03cb04:
	sts.l pr,@-r15
	add 0xCC,r15
	mov r5,r3
	mov.l r4,@r15
	add 0xFF,r3
	mov r5,r4
	mul.l r3,r4
	mov 0x00,r2
	fldi0 fr4
	mov 0x10,r0
	mov.l r5,@(0x4,r15)
	sts macl,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	add r4,r3
	mov.l r3,@(0x8,r15)
	fmov fr4,@(r0,r15)
	mov 0x6C,r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x24,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x4,r15),r3
	tst r3,r3
	bt loc_8c03cb42
	mov r15,r4
	bsr loc_8c03c7d2
	add 0x04,r4
	bra loc_8c03cb46
	nop

loc_8c03cb42:
	mov 0x20,r0
	fmov fr4,@(r0,r15)

loc_8c03cb46:
	mov 0x20,r0
	mov.l @r15,r3
	fmov @(r0,r15),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r3)
	add 0x34,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03cb58:
	mov 0x64,r1
	add r4,r1
	mov 0x3C,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x70,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x64,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c03cb76:
	mov 0x20,r3
	exts.b r5,r6
	cmp/ge r3,r6
	mov 0x01,r3
	movt r5
	exts.b r5,r2
	shll2 r2
	shll2 r2
	shll r2
	sub r2,r6
	shad r6,r3
	mov.l r3,@r4
	rts
	mov r5,r0

;==============================================
loc_8c03cb92:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(0x80,PC),r14
	mov.b r0,@(0x4,r15)
	mov.b @(0xD,r14),r0
	tst r0,r0
	bf loc_8c03cbe0
	mov.w @(0x70,PC),r0
	mov.l @(0x8,r15),r5
	mov.b @(r0,r5),r5
	bsr loc_8c03cb76
	mov r15,r4
	mov r0,r6
	mov.b @(0x4,r15),r0
	extu.b r6,r4
	extu.b r0,r5
	shll2 r5
	shll2 r4
	shll r5
	mov r14,r0
	nop
	add 0x20,r0
	mov.l @r15,r2
	add r5,r0
	mov.l @(r0,r4),r3
	tst r2,r3
	bt loc_8c03cbe0
	mov r14,r0
	nop
	add 0x20,r0
	mov.l @r15,r3
	add r5,r0
	mov.l @(r0,r4),r2
	xor r3,r2
	mov.l r2,@(r0,r4)

loc_8c03cbe0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03cbe8:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.b r0,@(0x4,r15)
	mov.w @(0x24,PC),r0
	mov.l @(0x8,r15),r5
	mov.b @(r0,r5),r5
	bsr loc_8c03cb76
	mov r15,r4
	mov r0,r4
	mov.b @(0x4,r15),r0
	mov.l @(0x20,PC),r3
	extu.b r4,r4
	extu.b r0,r0
	mov.l @r15,r2
	shll2 r0
	shll r0
	add r3,r0
	shll2 r4
	mov.l @(r0,r4),r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	and r2,r0

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x052c
	#align4
	#data 0x8c28c410
	#data 0x8c28c430

;==============================================
loc_8c03cc28:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov r4,r14
	mov.l @(0x154,PC),r4
	mov.w @(0x146,PC),r0
	mov r15,r5
	mov.l @r4,r3
	add 0x14,r5
	mov.l @(r0,r14),r2
	mov r5,r6
	mov.l @(0x30,r3),r3
	add 0x04,r5
	mov.w @(0x138,PC),r0
	or r3,r2
	mov.l r2,@r6
	mov.l r5,@(0x8,r15)
	mov.l @r4,r3
	mov.l @(r0,r14),r2
	mov.l @(0x34,r3),r3
	mov.w @(0x12C,PC),r0
	or r3,r2
	mov.l r2,@r5
	mov r15,r5
	add 0x0C,r5
	mov r5,r3
	mov r3,r7
	mov.l r3,@(0x4,r15)
	add 0x04,r7
	mov.l @r4,r2
	mov.l @(r0,r14),r1
	mov.l @(0x38,r2),r2
	or r2,r1
	mov.l r1,@r3
	mov.l @r4,r3
	add 0x04,r0
	mov.l @(0x3C,r3),r3
	mov.l @(r0,r14),r2
	add 0xD4,r0
	mov.l @(0x114,PC),r13
	mov 0x00,r1
	or r3,r2
	mov.l r2,@r7
	mov r13,r2
	mov.b @(r0,r14),r3
	add 0x3C,r2
	shll2 r3
	shll r3
	add r2,r3
	mov r13,r2
	mov.l r1,@r3
	add 0x3C,r2
	mov.b @(r0,r14),r3
	shll2 r3
	shll r3
	add r2,r3
	mov r13,r2
	mov.l r1,@(0x4,r3)
	add 0x10,r2
	mov.b @(r0,r14),r3
	mov.l @r6,r1
	shll2 r3
	shll r3
	add r2,r3
	mov.l @(0xE4,PC),r2
	or r2,r1
	mov.l r1,@r3
	mov.b @(r0,r14),r4
	mov r13,r1
	add 0x10,r1
	mov r13,r3
	shll2 r4
	shll r4
	add r4,r1
	mov.l @r1,r1
	add 0x20,r3
	add r4,r3
	mov.l r1,@r3
	mov r13,r1
	mov.b @(r0,r14),r3
	add 0x10,r1
	mov.l @(0xC8,PC),r0
	shll2 r3
	shll r3
	add r1,r3
	mov.l @(0x8,r15),r1
	mov.l @r1,r1
	or r0,r1
	mov.w @(0xA6,PC),r0
	mov.l r1,@(0x4,r3)
	mov r13,r3
	mov.b @(r0,r14),r4
	mov r13,r1
	add 0x10,r1
	shll2 r4
	shll r4
	add 0x20,r3
	add r4,r1
	add r4,r3
	mov.l @(0x4,r1),r1
	mov.l @(0xA4,PC),r5
	mov.l r1,@(0x4,r3)
	mov r13,r1
	mov.b @(r0,r14),r3
	add 0x3C,r1
	mov.l @(0xA0,PC),r4
	shll2 r3
	shll r3
	add r1,r3
	mov.l @(0x4,r15),r1
	mov.l @r3,r0
	mov.l @r1,r1
	or r1,r0
	mov r13,r1
	mov.l r0,@r3
	add 0x3C,r1
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r14),r3
	shll2 r3
	shll r3
	add r1,r3
	mov.l @r7,r1
	mov.l @(0x4,r3),r2
	or r1,r2
	mov.l r2,@(0x4,r3)
	mov r13,r2
	mov.b @(r0,r14),r3
	add 0x10,r2
	shll2 r3
	shll r3
	add r2,r3
	mov.l @r3,r1
	cmp/eq r5,r1
	bf loc_8c03cd7a
	mov.b @(r0,r14),r3
	mov r13,r2
	add 0x10,r2
	shll2 r3
	shll r3
	add r2,r3
	mov.l @(0x4,r3),r1
	cmp/eq r4,r1
	bf loc_8c03cd7a
	mov.b @(r0,r14),r3
	mov r13,r2
	add 0x3C,r2
	shll2 r3
	shll r3
	add r2,r3
	mov.l @r3,r1
	cmp/eq r5,r1
	bf loc_8c03cd7a
	mov.b @(r0,r14),r3
	mov r13,r2
	add 0x3C,r2
	shll2 r3
	shll r3
	add r2,r3
	mov.l @(0x4,r3),r1
	cmp/eq r4,r1
	bf loc_8c03cd7a
	mov 0x01,r0
	mov.b r0,@(0xD,r13)

loc_8c03cd7a:
	mov.l @(0x30,PC),r8
	mov 0x00,r4
	mov.w @(0xE,PC),r9
	mov 0x03,r10
	mov r4,r11
	bra loc_8c03cde4
	mov r4,r12

;##############################################
	#data 0x0544
	#data 0x0548
	#data 0x054c
	#data 0x0524
	#data 0x05a4
	#align4
	#data 0x8c26823c
	#data 0x8c28c410
	#data 0x00ffff77
	#data 0x02000004
	#data 0xf8ffffff
	#data 0x07ffffff
	#data 0x8c268340

;----------------------------------------------
loc_8c03cdb0:
	mov.w @(0x132,PC),r0
	mov.b @(r0,r14),r5
	add 0x08,r0
	add r12,r5
	mul.l r9,r5
	sts macl,r5
	add r8,r5
	mov.b @(r0,r5),r5
	bsr loc_8c03cb76
	mov r15,r4
	mov r0,r4
	mov.w @(0x11C,PC),r0
	mov r13,r3
	add 0x10,r3
	mov.b @(r0,r14),r0
	add 0x02,r12
	mov.l @r15,r2
	add 0x01,r11
	shll2 r0
	shll r0
	add r3,r0
	extu.b r4,r3
	shll2 r3
	mov.l @(r0,r3),r1
	or r2,r1
	mov.l r1,@(r0,r3)

loc_8c03cde4:
	exts.b r11,r3
	cmp/ge r10,r3
	bf loc_8c03cdb0
	add 0x1C,r15
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
loc_8c03cdfe:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xFC,r15
	mov.w @(0x1E,r4),r0
	mov 0x03,r6
	mov.l @(0xD8,PC),r7
	mov r0,r3
	mov.w @(0xCC,PC),r0
	shll r3
	mov.l @(0xD8,PC),r1
	mov.b @(r0,r4),r2
	add r2,r3
	mov.l @(0xCC,PC),r2
	mov.b r3,@r15
	mov.b @r15,r14
	mov.w @(0xBE,PC),r3
	extu.b r14,r14
	mov.b @(0xD,r7),r0
	mulu.w r3,r14
	mov r0,r12
	mov.l @r1,r0
	mov 0x4C,r3
	mov.b @(r0,r3),r0
	sts macl,r14
	cmp/eq 0x05,r0
	add r2,r14
	bf.s loc_8c03cec4
	mov 0x00,r5
	extu.b r12,r12
	mov.l @(0xB4,PC),r13
	tst r12,r12
	bt loc_8c03ce64
	mov.w @(0x9A,PC),r0
	mov r13,r2
	add 0x28,r2
	mov.b @(r0,r4),r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov.l @(r0,r2),r0
	mov.w @(0x8C,PC),r2
	mov.b r0,@(0x1,r14)
	add r14,r2
	bra loc_8c03cf46
	mov.b r0,@r2

loc_8c03ce64:
	mov r5,r11
	mov r5,r12
	mov r5,r10

loc_8c03ce6a:
	mov.w @(0x78,PC),r0
	mov r7,r2
	add 0x20,r2
	mov.b @(r0,r4),r9
	mov r9,r3
	shll2 r3
	shll r3
	add r2,r3
	mov r9,r0
	nop
	shll r0
	mov r9,r2
	mov r13,r1
	add r2,r0
	add 0x10,r1
	mov.l @r3,r3
	shll2 r0
	add r1,r0
	mov.l @(r0,r11),r2
	tst r3,r2
	bt loc_8c03ceb4
	mov.w @(0x4E,PC),r0
	mov r13,r2
	add 0x28,r2
	mov.w @(0x4C,PC),r1
	mov.b @(r0,r4),r0
	add r14,r1
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r12),r0
	mov.b r0,@(0x1,r14)
	mov.b r0,@r1
	bra loc_8c03cf46
	nop

loc_8c03ceb4:
	add 0x01,r10
	extu.b r10,r2
	cmp/ge r6,r2
	add 0x04,r12
	bf.s loc_8c03ce6a
	add 0x04,r11
	bra loc_8c03cf58
	nop

loc_8c03cec4:
	extu.b r12,r12
	mov.l @(0x34,PC),r10
	tst r12,r12
	bt loc_8c03cf00
	mov.w @(0x16,PC),r0
	mov.w @(0x18,PC),r1
	mov.b @(r0,r4),r0
	add r14,r1
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov.l @(r0,r10),r0
	mov.b r0,@(0x1,r14)
	mov.b r0,@r1
	bra loc_8c03cf46
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0524
	#data 0x05a4
	#data 0x052c
	#data 0x8c28c410
	#align4
	#data 0x8c268340
	#data 0x8c26823c
	#data 0x8c212f30
	#data bank14.loc_8c14d99c

;==============================================
loc_8c03cf00:
	mov.l @(0x14C,PC),r8
	mov r5,r12
	mov r5,r11
	mov r5,r13

loc_8c03cf08:
	mov.w @(0x134,PC),r0
	mov r7,r2
	add 0x20,r2
	mov.b @(r0,r4),r9
	mov r9,r3
	shll2 r3
	shll r3
	add r2,r3
	mov r9,r0
	nop
	shll r0
	mov r9,r2
	add r2,r0
	mov.l @r3,r3
	shll2 r0
	add r8,r0
	mov.l @(r0,r12),r1
	tst r3,r1
	bt loc_8c03cf4c
	mov.w @(0x10E,PC),r0
	mov.w @(0x10E,PC),r1
	mov.b @(r0,r4),r0
	add r14,r1
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r10,r0
	mov.l @(r0,r13),r0
	mov.b r0,@(0x1,r14)
	mov.b r0,@r1

loc_8c03cf46:
	mov.w @(0xFA,PC),r0
	bra loc_8c03cf58
	mov.b r5,@(r0,r14)

loc_8c03cf4c:
	add 0x01,r11
	extu.b r11,r2
	cmp/ge r6,r2
	add 0x04,r13
	bf.s loc_8c03cf08
	add 0x04,r12

loc_8c03cf58:
	add 0x04,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03cf6a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE0,r15
	mov r5,r9
	mov r4,r13
	mov r6,r0
	nop
	mov.w r0,@(0x8,r15)
	mov 0x14,r0
	mov.l @(0xC8,PC),r6
	mov 0x01,r14
	mov.b r14,@(r0,r15)
	mov r15,r10
	mov.w @(0xB2,PC),r0
	add 0x18,r10
	mov r10,r5
	mov.l @(0xC0,PC),r12
	mov r10,r4
	mov 0x00,r11
	add 0x04,r5
	mov.l r11,@r5
	mov.l r11,@r4
	mov.l @r6,r3
	mov.b @(r0,r3),r2
	add 0x01,r0
	mov.b @(r0,r3),r1
	or r1,r2
	tst r14,r2
	bt loc_8c03cfc2
	mov.l @r4,r1
	mov 0x40,r0
	mov.l @(0x3C,r12),r3
	or r3,r1
	mov.l r1,@r4
	mov.l @r5,r2
	mov.l @(r0,r12),r3
	or r3,r2
	mov.l r2,@r5

loc_8c03cfc2:
	mov.w @(0x82,PC),r3
	mov.l @r6,r7
	mov.w @(0x7C,PC),r0
	add r7,r3
	mov.b @r3,r3
	mov.b @(r0,r7),r0
	or r3,r0
	tst 0x02,r0
	bt loc_8c03cfe8
	mov 0x44,r0
	mov.l @r4,r2
	mov.l @(r0,r12),r3
	mov 0x48,r0
	or r3,r2
	mov.l r2,@r4
	mov.l @r5,r1
	mov.l @(r0,r12),r3
	or r3,r1
	mov.l r1,@r5

loc_8c03cfe8:
	mov.w @(0x56,PC),r0
	mov r15,r4
	mov.b @(r0,r9),r5
	bsr loc_8c03cb76
	add 0x0C,r4
	mov r0,r4
	extu.b r4,r0
	shll2 r0
	mov.l @(0xC,r15),r2
	mov.l @(r0,r10),r3
	tst r2,r3
	bf loc_8c03d01e
	mov.w @(0x8,r15),r0
	mov.w @(0x44,PC),r3
	mov r0,r4
	cmp/eq r3,r4
	bt loc_8c03d012
	mov r4,r0
	nop
	cmp/eq 0x10,r0
	bf loc_8c03d022

loc_8c03d012:
	mov.w @(0x8,r15),r0
	mov r0,r3
	mov.w @(0x8,r15),r0
	add r3,r0
	bra loc_8c03d022
	mov.w r0,@(0x8,r15)

loc_8c03d01e:
	mov 0x14,r0
	mov.b r11,@(r0,r15)

loc_8c03d022:
	mov.w @(0x1A,PC),r0
	mov r11,r8
	mov.l @(0x34,PC),r5
	mov r11,r6
	mov.b @(r0,r13),r0
	mov.w @(0x1C,PC),r4
	xor 0x01,r0
	mov r0,r10
	extu.b r10,r3
	mov r3,r2
	shll r3
	add r2,r3
	mov.l r3,@(0x4,r15)
	bra loc_8c03d0d0
	mov 0x03,r7

;##############################################
	#data 0x0524
	#data 0x052c
	#data 0x04c9
	#data 0x0084
	#data 0x0085
	#data 0x0080
	#data 0x05a4
	#align4
	#data bank14.loc_8c14d984
	#data 0x8c26823c
	#data 0x8c28c410
	#data 0x8c268340

;----------------------------------------------
loc_8c03d060:
	mov r12,r2
	add 0x02,r2
	extu.b r10,r3
	add r2,r3
	mov r14,r2
	mov.b @r3,r1
	exts.b r6,r3
	shad r3,r2
	extu.b r1,r1
	tst r2,r1
	bt loc_8c03d0ce
	mov.l @(0x4,r15),r0
	exts.b r6,r1
	mov.l @(0x124,PC),r3
	shll r1
	exts.b r6,r2
	add r3,r0
	mov.l r2,@(0x10,r15)
	extu.b r10,r3
	add r3,r1
	mov.w @(0x10E,PC),r3
	mul.l r4,r1
	sts macl,r1
	add r5,r1
	add r1,r3
	mov.l r1,@r15
	mov.b @r3,r3
	mov.b r3,@(r0,r2)
	mov.l @(0x4,r15),r2
	mov.l @(0x108,PC),r3
	mov.l @r15,r1
	add r3,r2
	mov.w @(0xF8,PC),r3
	mov.l @(0x10,r15),r0
	add r1,r3
	mov.b @r3,r1
	mov.b r1,@(r0,r2)
	mov.w @(0xEC,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	mov.b @(r0,r9),r2
	cmp/eq r2,r3
	bf loc_8c03d0ce
	exts.b r6,r2
	mov.w @(0xE0,PC),r0
	extu.b r10,r3
	shll r2
	add r3,r2
	mov r14,r3
	mul.l r4,r2
	sts macl,r2
	add r5,r2
	mov.b @(r0,r2),r1
	shad r1,r3
	or r3,r8

loc_8c03d0ce:
	add 0x01,r6

loc_8c03d0d0:
	exts.b r6,r2
	cmp/ge r7,r2
	bf loc_8c03d060
	bra loc_8c03d17e
	mov r11,r6

;==============================================
loc_8c03d0da:
	mov.w @(0xC0,PC),r0
	exts.b r6,r10
	exts.b r6,r2
	mov.w @(0xB6,PC),r1
	mov.b @(r0,r13),r0
	mov r0,r3
	mov.b r0,@(0x4,r15)
	shll r0
	mov.l r2,@r15
	add r3,r0
	mov.l @(0xB0,PC),r3
	shll r10
	add r0,r3
	mov.b @(0x4,r15),r0
	add r3,r2
	add r10,r0
	mul.l r4,r0
	sts macl,r0
	add r5,r0
	mov.b @(r0,r1),r3
	mov.w @(0x98,PC),r0
	mov.b r3,@r2
	mov.b @(r0,r13),r0
	mov.l @(0x98,PC),r2
	mov r0,r3
	mov.b r0,@(0x4,r15)
	shll r0
	add r3,r0
	mov.l @r15,r3
	add r0,r2
	mov.b @(0x4,r15),r0
	add r3,r2
	add r10,r0
	mov.w @(0x7C,PC),r3
	mul.l r4,r0
	sts macl,r0
	add r5,r0
	mov.b @(r0,r3),r3
	mov.w @(0x74,PC),r0
	mov.b r3,@r2
	mov.b @(r0,r13),r2
	mov.b @(r0,r9),r3
	add r10,r2
	cmp/eq r3,r2
	bt loc_8c03d17c
	mov r12,r3
	mov.b @(r0,r13),r2
	add 0x02,r3
	mov r14,r1
	add r3,r2
	mov.b @r2,r3
	exts.b r6,r2
	shad r2,r1
	extu.b r3,r3
	tst r1,r3
	bt loc_8c03d17c
	mov.w @(0x50,PC),r0
	mov r5,r2
	mov.l r5,@r15
	mov.b @(r0,r13),r3
	add 0x08,r0
	add r10,r3
	mul.l r4,r3
	sts macl,r3
	add r2,r3
	mov.b @(r0,r3),r1
	mov.b @(r0,r9),r3
	cmp/eq r3,r1
	bf loc_8c03d17c
	mov.w @(0x36,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r13),r2
	mov.w @(0x2E,PC),r0
	add r10,r2
	mul.l r4,r2
	sts macl,r2
	add r3,r2
	mov r14,r3
	mov.b @(r0,r2),r1
	shad r1,r3
	or r3,r8

loc_8c03d17c:
	add 0x01,r6

loc_8c03d17e:
	exts.b r6,r2
	cmp/ge r7,r2
	bf loc_8c03d0da
	mov.l @(0x20,PC),r7
	mov 0x06,r5
	mov.l @(0x20,PC),r6
	mov r11,r4
	mov r11,r13

loc_8c03d18e:
	mov.w @r6,r3
	mov.w @(0x8,r15),r0
	cmp/eq r3,r0
	bf loc_8c03d1b0
	bra loc_8c03d1bc
	mov.b @r7,r4

;##############################################
	#data 0x052c
	#data 0x052d
	#data 0x0524
	#align4
	#data 0x8c28c47c
	#data 0x8c28c482
	#data bank14.loc_8c14da98
	#data bank14.loc_8c14da8c

;----------------------------------------------
loc_8c03d1b0:
	add 0x01,r13
	exts.b r13,r2
	cmp/ge r5,r2
	add 0x01,r7
	bf.s loc_8c03d18e
	add 0x02,r6

loc_8c03d1bc:
	mov r14,r3
	exts.b r4,r2
	shad r2,r3
	extu.b r8,r7
	tst r7,r3
	bt loc_8c03d1e0
	mov r11,r6

loc_8c03d1ca:
	mov r14,r2
	exts.b r6,r3
	shad r3,r2
	tst r7,r2
	bf loc_8c03d1d8
	bra loc_8c03d1e0
	mov r6,r4

loc_8c03d1d8:
	add 0x01,r6
	exts.b r6,r3
	cmp/ge r5,r3
	bf loc_8c03d1ca

loc_8c03d1e0:
	mov 0x14,r0
	mov.b @(r0,r15),r3
	tst r3,r3
	bt loc_8c03d202
	exts.b r4,r0
	cmp/eq 0x04,r0
	bf loc_8c03d1f2
	bra loc_8c03d202
	mov r11,r4

loc_8c03d1f2:
	mov 0x14,r0
	mov.b @(r0,r15),r3
	tst r3,r3
	bt loc_8c03d202
	exts.b r4,r0
	cmp/eq 0x05,r0
	bf loc_8c03d202
	mov r14,r4

loc_8c03d202:
	mov r4,r0
	nop
	add 0x20,r15
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
loc_8c03d21a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@(0xC,r15)
	mov r5,r0
	nop
	mov.w r0,@(0x8,r15)
	mov.l @(0xC,r15),r5
	mov.w @(0x98,PC),r0
	mov.l @(0x98,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(0x8,r15),r0
	mov.l @(0x98,PC),r1
	mov r0,r4
	mov.l @r3,r0
	shll2 r4
	fmov fr4,fr14
	mov.l @r0,r2
	fmov fr5,fr15
	add r2,r4
	jsr @r1
	mov.l @r4,r4
	mov.l @(0x90,PC),r14
	mov.l @(0x88,PC),r13
	mov.l @(0x84,PC),r12
	bra loc_8c03d278
	nop

loc_8c03d258:
	mov r15,r5
	add 0x04,r5
	jsr @r14
	mov r15,r4
	mov 0x04,r0
	fmov @r15,fr3
	mov r15,r5
	add 0x04,r5
	fadd fr14,fr3
	fmov fr3,@r15
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fsub fr15,fr2
	fmov fr2,@(r0,r15)
	jsr @r12
	mov r15,r4

loc_8c03d278:
	jsr @r13
	nop
	tst r0,r0
	bt loc_8c03d258
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03d290:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@(0xC,r15)
	mov r5,r0
	nop
	mov.w r0,@(0x8,r15)
	mov.l @(0xC,r15),r5
	mov.w @(0x22,PC),r0
	mov.l @(0x24,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(0x8,r15),r0
	mov.l @(0x20,PC),r1
	mov r0,r4
	mov.l @r3,r0
	shll2 r4
	fmov fr4,fr14
	mov.l @r0,r2
	fmov fr5,fr15
	add r2,r4
	jsr @r1
	mov.l @r4,r4
	mov.l @(0x18,PC),r14
	mov.l @(0x14,PC),r13
	mov.l @(0xC,PC),r12
	bra loc_8c03d2fa
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0084
	#align4
	#data 0x8c26a910
	#data bank10.loc_8c108060
	#data bank10.loc_8c1081e6
	#data bank10.loc_8c108086
	#data bank10.loc_8c108192

;==============================================
loc_8c03d2e4:
	mov r15,r5
	add 0x04,r5
	jsr @r14
	mov r15,r4
	mov r15,r5
	mov 0x04,r0
	add 0x04,r5
	fmov fr14,@r15
	fmov fr15,@(r0,r15)
	jsr @r12
	mov r15,r4

loc_8c03d2fa:
	jsr @r13
	nop
	tst r0,r0
	bt loc_8c03d2e4
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03d312:
	mov.l r14,@-r15
	mov 0x47,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0xCC,PC),r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @r10,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c03d332
	bra loc_8c03d454
	nop

loc_8c03d332:
	mov.l @(0xBC,PC),r13
	mov 0x01,r8
	mov.w @(0xA6,PC),r14
	mov 0x02,r9
	bra loc_8c03d44c
	mov 0x00,r12

loc_8c03d33e:
	mov.w @(0xA0,PC),r0
	mov r8,r6
	mov.l @r10,r5
	shad r12,r6
	mov.b @(r0,r5),r2
	tst r6,r2
	bf loc_8c03d350
	bra loc_8c03d44a
	nop

loc_8c03d350:
	mov.w @(0x90,PC),r4
	mov r12,r2
	mov.l @(0x9C,PC),r3
	mov r12,r11
	mul.l r4,r12
	mov.w @(0x88,PC),r0
	shll2 r2
	shll r11
	sts macl,r4
	add r3,r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c03d382
	add r2,r11
	cmp/eq 0x01,r0
	bt loc_8c03d3a4
	cmp/eq 0x02,r0
	bt loc_8c03d3b8
	cmp/eq 0x04,r0
	bt loc_8c03d408
	cmp/eq 0x03,r0
	bt loc_8c03d434
	bra loc_8c03d44a
	nop

loc_8c03d382:
	mov.w @(0x62,PC),r0
	mov.b @(r0,r5),r2
	tst r6,r2
	bf loc_8c03d44a
	mov.l @(0x6C,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_8c03d44a
	mov.l @(0x68,PC),r2
	mov.l @(0x1C,r5),r1
	jsr @r2
	mov 0x3C,r0
	mov 0x1E,r3
	cmp/gt r3,r0
	bt loc_8c03d44a
	bra loc_8c03d446
	mov r11,r5

loc_8c03d3a4:
	mov.w @(0x42,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c03d44a
	mov.b @(r0,r4),r3
	mov r11,r5
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	bra loc_8c03d446
	add 0x01,r5

loc_8c03d3b8:
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c03d44a
	mov.b @(r0,r4),r3
	mov r11,r5
	add 0x02,r5
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	jsr @r13
	mov r14,r4
	mov r12,r5
	mov.l @(0x2C,PC),r0
	shll2 r5
	mov.l @(0x2C,PC),r3
	mov.l @(r0,r5),r5
	jsr @r3
	mov r12,r4
	bra loc_8c03d44a
	nop

;##############################################
	#data 0x0910
	#data 0x0085
	#data 0x05a4
	#data 0x01d0
	#data 0x0084
	#data 0x01d4
	#align4
	#data 0x8c26823c
	#data loc_8c0312d6
	#data 0x8c268340
	#data 0x8c28c418
	#data bank12.loc_8c1292d4
	#data 0x8c289790
	#data loc_8c03140c

;----------------------------------------------
loc_8c03d408:
	mov.w @(0xA6,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c03d44a
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov 0x29,r0
	mov.l @r10,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf.s loc_8c03d428
	mov r14,r4
	mov r11,r5
	bra loc_8c03d42c
	add 0x04,r5

loc_8c03d428:
	mov r11,r5
	add 0x05,r5

loc_8c03d42c:
	jsr @r13
	nop
	bra loc_8c03d44a
	nop

loc_8c03d434:
	mov.w @(0x7A,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c03d44a
	mov.b @(r0,r4),r3
	mov r11,r5
	add 0x03,r5
	add 0xFF,r3
	mov.b r3,@(r0,r4)

loc_8c03d446:
	jsr @r13
	mov r14,r4

loc_8c03d44a:
	add 0x01,r12

loc_8c03d44c:
	cmp/ge r9,r12
	bt loc_8c03d454
	bra loc_8c03d33e
	nop

loc_8c03d454:
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
loc_8c03d466:
	rts
	nop

;==============================================
loc_8c03d46a:
	rts
	nop

;==============================================
loc_8c03d46e:
	mov.l @(0x48,PC),r6
	mov 0x00,r4
	mov r6,r5
	mov r4,r0
	nop
	mov.b r0,@(0x4,r5)
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x6,r5)
	mov.b r0,@(0x7,r5)
	mov.w @(0x30,PC),r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	mov.b r4,@(r0,r5)
	add 0x03,r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	mov.b r4,@(r0,r5)
	mov.w @(0x22,PC),r5
	add r6,r5
	mov r4,r0
	nop
	mov.b r0,@(0x4,r5)
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x6,r5)
	mov.b r0,@(0x7,r5)
	mov.w @(0x10,PC),r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	mov.b r4,@(r0,r5)
	add 0x03,r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	rts
	mov.b r4,@(r0,r5)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x01d4
	#data 0x01d0
	#data 0x05a4
	#align4
	#data 0x8c268340

;==============================================
loc_8c03d4bc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.w @(0x10E,PC),r3
	exts.b r4,r11
	exts.b r4,r8
	mov.l @(0x118,PC),r0
	muls.w r3,r11
	mov 0x01,r13
	mov.l r8,@r15
	xor r13,r8
	mov.l @(0x114,PC),r2
	mov 0x00,r12
	mov.w @(0xFC,PC),r1
	sts macl,r11
	mul.l r3,r8
	exts.b r4,r4
	mov.l @(0x100,PC),r9
	mov.l r4,@(0x4,r15)
	mov.b r12,@(r0,r4)
	add r9,r11
	mov.l @r2,r0
	sts macl,r8
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	add r9,r8
	bf.s loc_8c03d56c
	mov r3,r10
	bra loc_8c03d55e
	mov r12,r0

loc_8c03d504:
	mov r0,r4
	mov.l @r15,r2
	exts.w r4,r3
	mov.w @(0xD6,PC),r0
	shll r3
	add r2,r3
	mov r4,r2
	mul.l r10,r3
	add 0x18,r2
	sts macl,r3
	add r9,r3
	mov.b r2,@(r0,r3)
	mov.w @(0x1E,r11),r0
	mov.l @r15,r2
	mov r0,r4
	exts.w r4,r3
	shll r3
	add r2,r3
	mul.l r10,r3
	sts macl,r3
	add r9,r3
	mov r4,r0
	nop
	add 0x18,r0
	mov.b r0,@(0x1,r3)
	mov.w @(0x1E,r11),r0
	mov.l @r15,r3
	shll r0
	add r3,r0
	mov.w @(0xA4,PC),r3
	mul.l r10,r0
	sts macl,r0
	add r9,r0
	add r0,r3
	mov.b r12,@r3
	mov 0x11,r3
	mov.w @(0x1E,r11),r0
	mov.l @(0x4,r15),r2
	shad r0,r3
	mov.l @(0x9C,PC),r0
	mov.b @(r0,r2),r1
	or r3,r1
	mov.b r1,@(r0,r2)
	mov.w @(0x1E,r11),r0
	add 0x01,r0

loc_8c03d55e:
	mov.w r0,@(0x1E,r11)
	mov 0x03,r3
	mov.w @(0x1E,r11),r0
	cmp/ge r3,r0
	bf loc_8c03d504
	bra loc_8c03d71c
	nop

loc_8c03d56c:
	mov 0x00,r1
	mov.l r1,@(0x10,r15)
	mov.l r1,@(0xC,r15)
	bra loc_8c03d70e
	mov r12,r0

loc_8c03d576:
	bra loc_8c03d5d0
	mov.l r12,@(0x8,r15)

loc_8c03d57a:
	mov.l @(0x7C,PC),r2
	jsr @r2
	nop
	mov.l @(0x74,PC),r3
	mov 0x1F,r4
	mov r0,r14
	jsr @r3
	and r4,r14
	mov 0x01,r4
	mov.w @(0x58,PC),r3
	and r0,r4
	mov r13,r2
	exts.b r4,r5
	mov r14,r6
	add r8,r3
	shll2 r5
	shad r14,r2
	add r5,r3
	mov r2,r14
	mov.l @r3,r2
	tst r14,r2
	bf loc_8c03d5ca
	mov.w @(0x40,PC),r0
	mov.l @(0x50,PC),r3
	mov.b @(r0,r8),r0
	shll2 r0
	shll r0
	add r0,r3
	add r5,r3
	mov.l @r3,r2
	tst r14,r2
	bt loc_8c03d5ca
	mov r15,r3
	exts.b r4,r1
	add 0x0C,r3
	shll2 r1
	add r3,r1
	mov.l @r1,r2
	tst r14,r2
	bt loc_8c03d698

loc_8c03d5ca:
	mov.l @(0x8,r15),r3
	add 0x01,r3
	mov.l r3,@(0x8,r15)

loc_8c03d5d0:
	mov.l @(0x8,r15),r3
	mov 0x10,r4
	cmp/hs r4,r3
	bf loc_8c03d57a
	bra loc_8c03d644
	mov r12,r4

loc_8c03d5dc:
	bra loc_8c03d63e
	mov r12,r5

;##############################################
	#data 0x05a4
	#data 0x0081
	#data 0x052c
	#data 0x04c9
	#data 0x0504
	#data 0x0524
	#align4
	#data 0x8c268340
	#data 0x8c28c412
	#data 0x8c26823c
	#data bank11.loc_8c11e730
	#data 0x8c28c420

;----------------------------------------------
loc_8c03d600:
	mov.w @(0x12E,PC),r0
	exts.b r4,r14
	mov.l @(0x130,PC),r2
	shll2 r14
	mov.b @(r0,r8),r0
	mov.w @(0x122,PC),r3
	shll2 r0
	shll r0
	add r0,r2
	add r8,r3
	add r14,r2
	add r14,r3
	mov.l @r2,r2
	mov.l @r3,r14
	mov r13,r3
	shad r5,r3
	xor r2,r14
	tst r14,r3
	bt loc_8c03d63c
	exts.b r4,r3
	mov r15,r2
	add 0x0C,r2
	mov r13,r14
	shll2 r3
	add r2,r3
	mov.l @r3,r1
	shad r5,r14
	tst r14,r1
	bt.s loc_8c03d698
	mov r5,r6

loc_8c03d63c:
	add 0x01,r5

loc_8c03d63e:
	cmp/hs r7,r5
	bf loc_8c03d600
	add 0x01,r4

loc_8c03d644:
	mov 0x02,r3
	exts.b r4,r2
	cmp/ge r3,r2
	bf.s loc_8c03d5dc
	mov 0x20,r7
	bra loc_8c03d690
	mov r12,r4

loc_8c03d652:
	bra loc_8c03d68a
	mov r12,r5

loc_8c03d656:
	mov.w @(0xD8,PC),r0
	exts.b r4,r14
	mov.l @(0xDC,PC),r3
	shll2 r14
	mov.b @(r0,r8),r0
	mov r13,r2
	shad r5,r2
	shll2 r0
	shll r0
	add r0,r3
	add r3,r14
	mov.l @r14,r14
	tst r14,r2
	bt loc_8c03d688
	exts.b r4,r2
	mov r15,r3
	add 0x0C,r3
	mov r13,r14
	shll2 r2
	add r3,r2
	mov.l @r2,r1
	shad r5,r14
	tst r14,r1
	bt.s loc_8c03d698
	mov r5,r6

loc_8c03d688:
	add 0x01,r5

loc_8c03d68a:
	cmp/hs r7,r5
	bf loc_8c03d656
	add 0x01,r4

loc_8c03d690:
	mov 0x02,r3
	exts.b r4,r2
	cmp/ge r3,r2
	bf loc_8c03d652

loc_8c03d698:
	mov r15,r2
	exts.b r4,r3
	add 0x0C,r2
	shll2 r3
	add r2,r3
	mov.l @r3,r1
	shll2 r4
	shll2 r4
	or r14,r1
	mov.l r1,@r3
	mov 0x11,r1
	mov.w @(0x1E,r11),r0
	mov.l @(0x4,r15),r3
	shad r0,r1
	mov.l @(0x84,PC),r0
	mov.b @(r0,r3),r0
	or r1,r0
	mov.l @(0x80,PC),r1
	add r3,r1
	mov.b r0,@r1
	mov.w @(0x1E,r11),r0
	mov.l @r15,r3
	shll r0
	add r3,r0
	mov.w @(0x68,PC),r3
	mul.l r10,r0
	shll r4
	add r6,r4
	sts macl,r0
	add r9,r0
	add r0,r3
	mov.b r4,@r3
	mov.w @(0x1E,r11),r0
	mov.l @r15,r3
	mov r0,r4
	shll r4
	add r3,r4
	mov.w @(0x4E,PC),r0
	mul.l r10,r4
	mov.l @(0x58,PC),r5
	sts macl,r4
	add r9,r4
	mov.b @(r0,r4),r0
	mov.b r0,@(0x1,r4)
	mov.w @(0x1E,r11),r0
	mov.l @r15,r3
	mov r0,r4
	shll r4
	add r3,r4
	mov.w @(0x36,PC),r0
	mul.l r10,r4
	sts macl,r4
	add r9,r4
	mov.b @(r0,r4),r0
	mov.b @(r0,r5),r3
	mov.w @(0x2C,PC),r0
	mov.b r3,@(r0,r4)
	mov.w @(0x1E,r11),r0
	add 0x01,r0

loc_8c03d70e:
	mov.w r0,@(0x1E,r11)
	mov 0x03,r3
	mov.w @(0x1E,r11),r0
	cmp/ge r3,r0
	bt loc_8c03d71c
	bra loc_8c03d576
	nop

loc_8c03d71c:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0504
	#data 0x0524
	#data 0x052c
	#data 0x04c9
	#align4
	#data 0x8c28c420
	#data 0x8c28c412
	#data bank16.loc_8c162b2c

;==============================================
loc_8c03d744:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x03,r9
	mov.l r8,@-r15
	mov r4,r8
	mov.w @(0x10A,PC),r3
	exts.b r8,r14
	mov.l @(0x11C,PC),r10
	muls.w r3,r14
	sts.l pr,@-r15
	mov.w @(0x102,PC),r11
	mov r3,r13
	sts macl,r14
	add r10,r14
	bra loc_8c03d78e
	mov 0x00,r0

loc_8c03d76c:
	mov r0,r12
	exts.b r8,r3
	shll r12
	mov.l @(0x108,PC),r2
	add r3,r12
	mov r11,r6
	mul.l r13,r12
	sts macl,r12
	add r10,r12
	mov r12,r5
	jsr @r2
	mov r14,r4
	mov.w @(0xE0,PC),r1
	add r12,r1
	mov.b r0,@r1
	mov.w @(0x1E,r14),r0
	add 0x01,r0

loc_8c03d78e:
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r9,r0
	bf loc_8c03d76c
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
loc_8c03d7a8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xCC,PC),r13
	mov.w @(0xB6,PC),r3
	mov.l @r13,r4
	mov.w @(0xB0,PC),r0
	add r4,r3
	mov.l @(0xC8,PC),r14;Stage ID
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	or r3,r0
	cmp/eq 0x03,r0
	bf loc_8c03d800
	mov.l @(0xC0,PC),r3
	jsr @r3
	nop
	mov.l @(0xBC,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x06,r0
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov.l r0,@r15
	cmp/pz r0
	bf loc_8c03d7e2
	bra loc_8c03d7ec
	and 0x03,r0

loc_8c03d7e2:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c03d7ec:
	mov r0,r4
	mov.l @(0xA0,PC),r2
	shll2 r0
	mov.l @r15,r3
	shll r0
	add r0,r2
	add r3,r2
	mov.b @r2,r0
	bra loc_8c03d852
	mov.b r0,@r14

loc_8c03d800:
	mov.w @(0x68,PC),r3
	mov.w @(0x64,PC),r0
	add r4,r3
	mov.l @(0x70,PC),r6
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	mov.l @(0x80,PC),r5
	or r3,r0
	cmp/eq 0x01,r0
	bf loc_8c03d82a
	mov.w @(0x56,PC),r0
	mov.w @(0x56,PC),r3
	mov.b @(r0,r6),r0
	add r4,r3
	shll2 r0
	mov.b @r3,r3
	shll r0
	add r5,r0
	mov.b @(r0,r3),r2
	bra loc_8c03d83c
	nop

loc_8c03d82a:
	mov.w @(0x44,PC),r0
	mov.w @(0x40,PC),r3
	mov.b @(r0,r6),r0
	add r4,r3
	shll2 r0
	mov.b @r3,r3
	shll r0
	add r5,r0
	mov.b @(r0,r3),r2

loc_8c03d83c:
	mov.b r2,@r14
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c03d852
	mov.w @(0x2A,PC),r0
	mov 0x01,r3
	mov.l @r13,r2
	mov.b r3,@(r0,r2)
	bra loc_8c03d85a
	nop

loc_8c03d852:
	mov.w @(0x1E,PC),r0
	mov 0x00,r3
	mov.l @r13,r1
	mov.b r3,@(r0,r1)

loc_8c03d85a:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#data 0x05a4
	#data 0x0200
	#data 0x052d
	#data 0x0085
	#data 0x0084
	#data 0x0510
	#data 0x0081
	#data 0x0ab4
	#data 0x00ab
	#align4
	#data 0x8c268340
	#data loc_8c03cf6a
	#data 0x8c26823c
	#data 0x8c26a95c
	#data bank11.loc_8c11e730
	#data bank12.loc_8c1292d4
	#data bank14.loc_8c14daa0

;==============================================
loc_8c03d894:
	mov.l @(0xBC,PC),r2
	mov 0x4C,r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r4
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c03d922
	mov 0x4C,r0
	mov.l @(0xB0,PC),r14
	mov.b @(r0,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c03d8b8
	mov 0x0B,r2
	mov.b r2,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c03d8b8:
	cmp/eq 0x05,r0
	bf loc_8c03d8dc
	mov.l @(0xA0,PC),r1
	mov.l @(0x9C,PC),r3
	mov.w @r1,r2
	mov.w @r3,r0
	mov.l @(0x9C,PC),r3
	add r2,r0
	mov.l @(0x9C,PC),r1
	mov.b @r3,r2
	add r2,r0
	mov.b @r1,r2
	add r2,r0
	and 0x07,r0
	mov.b r0,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c03d8dc:
	bsr loc_8c03d7a8
	nop
	mov.l @(0x70,PC),r3
	mov 0x4C,r0
	mov.l @r3,r4
	mov.b @(r0,r4),r4
	tst r4,r4
	bt loc_8c03d8f4
	mov r4,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c03d922

loc_8c03d8f4:
	mov.l @(0x74,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c03d922
	mov.l @(0x70,PC),r3
	jsr @r3
	nop
	mov 0x01,r2
	mov r0,r4
	tst r2,r4
	bt loc_8c03d922
	mov.l @(0x60,PC),r1
	mov.b @r14,r4
	mov.b @r1,r5
	extu.b r4,r3
	add 0xFF,r5
	exts.b r5,r5
	cmp/gt r5,r3
	bt loc_8c03d922
	mov.l @(0x58,PC),r0
	extu.b r4,r4
	mov.b @(r0,r4),r3
	mov.b r3,@r14

loc_8c03d922:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03d928:
	bra loc_8c03d894
	nop

;==============================================
loc_8c03d92c:
	sts.l pr,@-r15
	mov.l @(0x48,PC),r2
	jsr @r2
	nop
	mov.l @(0x44,PC),r3
	mov r0,r7
	mov.l @(0x44,PC),r2
	mov 0x14,r5
	mov.l r3,@-r15
	mov 0x00,r6
	mov.l @(0x40,PC),r1
	mov.l r7,@-r15
	mov.l r2,@-r15
	jsr @r1
	mov 0x08,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26823c
	#data 0x8c26a95c
	#data 0x8c213b90
	#data 0x8c214286
	#data 0x8c213af0
	#data 0x8c21428c
	#data 0x8c28c45e
	#data bank11.loc_8c11e730
	#data bank14.loc_8c14dac0
	#data bank11.loc_8c11b940
	#data 0x00400000
	#data bank13.loc_8c138278
	#data loc_8c0395c6

;==============================================
loc_8c03d988:
	mov.l @(0xC,PC),r2
	mov.l @(0x10,PC),r1
	mov.l @r2,r3
	mov.b @(0x3,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x8c26823c
	#data bank14.loc_8c14dacc

;==============================================
loc_8c03d9a0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xD8,r15
	mov.l @(0x174,PC),r14
	mov 0x00,r7
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov r7,r0
	nop
	mov.b r0,@(0x4,r3)
	mov 0x01,r6
	mov.l @r14,r3
	mov.l @(0x160,PC),r5
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov r5,r13
	mov.w @(0x13A,PC),r12
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	add r5,r12
	mov.w @(0x130,PC),r4
	mov.b r0,@(0x7,r3)
	mov.w @(0x128,PC),r0
	mov.l @r14,r3
	mov.b r7,@(r0,r3)
	mov 0x19,r0
	mov.l @r14,r3
	mov.b r6,@(r0,r3)
	mov.l @r14,r3
	mov.w @(0x11C,PC),r0
	mov.b r7,@(r0,r3)

loc_8c03d9f0:
	mov.w @(0x11E,PC),r0
	mov.b r6,@(r0,r13)
	add r4,r13
	cmp/hs r12,r13
	bf loc_8c03d9f0
	mov r15,r10
	mov r15,r8
	mov 0x06,r11
	mov r7,r13
	add 0x18,r8
	add 0x20,r10

loc_8c03da06:
	mul.l r4,r13
	mov.w @(0x108,PC),r0
	sts macl,r12
	add r5,r12
	mov.b @(r0,r12),r3
	extu.b r3,r3
	mov.l r3,@r15
	mov r13,r0
	nop
	mov.w @(0xFA,PC),r3
	mov.l @r15,r9
	add r12,r3
	mov.w @(0xF6,PC),r2
	mov.b @r3,r3
	shll r9
	and r6,r3
	add r9,r3
	mul.l r4,r3
	sts macl,r3
	add r5,r3
	add r3,r2
	mov.b @r2,r3
	mov.w @(0xE4,PC),r2
	mov.b r3,@(r0,r10)
	mov.w @(0xDC,PC),r3
	add r12,r3
	mov.b @r3,r3
	and r6,r3
	add r9,r3
	mul.l r4,r3
	sts macl,r3
	add r5,r3
	add r3,r2
	mov.b @r2,r3
	mov.w @(0xC8,PC),r2
	mov.b r3,@(r0,r8)
	mov r15,r3
	add r12,r2
	mov.b @r2,r2
	add 0x10,r3
	add r13,r3
	and r6,r2
	mov.w @(0xBE,PC),r1
	add r9,r2
	mul.l r4,r2
	sts macl,r2
	add r5,r2
	add r2,r1
	mov.b @r1,r2
	mov.w @(0xB2,PC),r1
	mov.b r2,@r3
	mov r15,r3
	mov.w @(0xA4,PC),r2
	add 0x08,r3
	add r13,r3
	add r12,r2
	mov.b @r2,r2
	add 0x01,r13
	and r6,r2
	add r9,r2
	mul.l r4,r2
	sts macl,r2
	add r5,r2
	add r2,r1
	mov.b @r1,r2
	mov.b r2,@r3
	mov 0x00,r2
	mov r0,r3
	cmp/gt r3,r2
	mov.w @(0x80,PC),r0
	addc r2,r3
	shar r3
	mov.b r3,@(r0,r12)
	cmp/ge r11,r13
	bf loc_8c03da06
	mov r15,r2
	add 0x10,r2
	mov r15,r9
	mov.l r2,@(0x4,r15)
	mov.l r8,@r15
	add 0x08,r9
	mov r7,r13

loc_8c03daaa:
	mul.l r4,r13
	sts macl,r12
	add r5,r12
	mov r13,r0
	nop
	mov.w @(0x60,PC),r2
	add 0x01,r13
	mov.b @(r0,r10),r3
	cmp/ge r11,r13
	add r12,r2
	mov.w @(0x58,PC),r0
	mov.b r3,@r2
	mov.l @r15,r1
	add 0x01,r1
	mov.l r1,@r15
	add 0xFF,r1
	mov.b @r1,r3
	mov.b r3,@(r0,r12)
	mov.l @(0x4,r15),r2
	mov.w @(0x48,PC),r0
	add 0x01,r2
	mov.l r2,@(0x4,r15)
	add 0xFF,r2
	mov.b @r2,r3
	mov.b r3,@(r0,r12)
	add 0x2F,r0
	mov.b @r9+,r3
	mov.b r3,@(r0,r12)
	bf loc_8c03daaa
	mov.l @r14,r0
	mov.w @(0x36,PC),r2
	mov r0,r3
	mov.w @(0x34,PC),r1
	add r3,r2
	mov.b @r2,r2
	add r0,r1
	exts.b r2,r0
	cmp/eq 0x03,r0
	bf.s loc_8c03db30
	mov.b r2,@r1
	mov.w @(0x26,PC),r0
	mov.l @r14,r2
	mov.b r6,@(r0,r2)
	add 0xF6,r0
	mov.l @r14,r3
	mov.b r7,@(r0,r3)
	bra loc_8c03db82
	nop

;##############################################
	#data 0x0086
	#data 0x00a4
	#data 0x05a4
	#data 0x21d8
	#data 0x0525
	#data 0x053f
	#data 0x0524
	#data 0x052c
	#data 0x04c9
	#data 0x052d
	#data 0x055c
	#data 0x0084
	#data 0x0099
	#data 0x008b
	#align4
	#data 0x8c26823c
	#data 0x8c268340

;----------------------------------------------
loc_8c03db30:
	mov.w @(0xF2,PC),r0
	mov r5,r13
	mov.l @r14,r2
	mov r5,r12
	mov.w @(0xEC,PC),r1
	mov.b r7,@(r0,r2)
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bt.s loc_8c03db4c
	add r4,r12
	mov r5,r13
	mov r5,r12
	add r4,r13

loc_8c03db4c:
	mov.w @(0xDA,PC),r0
	mov.l @(r0,r13),r2
	add 0xA4,r0
	mov.l r2,@(r0,r13)
	add 0x60,r0
	mov.l @(r0,r13),r3
	add 0x9C,r0
	mov.l r3,@(r0,r13)
	add 0x04,r0
	mov.l r7,@(r0,r12)
	add 0xFC,r0
	mov.l r7,@(r0,r12)
	add 0x5A,r0
	mov.b @(r0,r13),r2
	mov.w @(0xC0,PC),r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov 0x49,r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c03db82
	mov.w @(0xB2,PC),r0
	mov.l @r14,r2
	mov.b @(r0,r13),r3
	mov.w @(0xAE,PC),r0
	mov.b r3,@(r0,r2)

loc_8c03db82:
	mov.w @(0xAC,PC),r3
	mov.l @(0xB8,PC),r2
	add r5,r3
	mov.w @(0xA6,PC),r0
	mov.l r3,@r2
	mov r5,r3
	mov.l @(0xB4,PC),r1
	add r4,r3
	add r3,r0
	mov.l r0,@r1
	mov.l @r14,r13
	mov r13,r0
	nop
	mov 0x4C,r3
	mov.b @(r0,r3),r0
	cmp/eq 0x02,r0
	bf loc_8c03dbc8
	mov.l @(0xA0,PC),r2
	mov.b @r2,r0
	cmp/eq 0x01,r0
	bt loc_8c03dbc0
	mov.w @(0x84,PC),r12
	mov r5,r13
	add r5,r12

loc_8c03dbb2:
	mov.w @(0x80,PC),r0
	mov.b r7,@(r0,r13)
	add r4,r13
	cmp/hs r12,r13
	bf loc_8c03dbb2
	bra loc_8c03dbc8
	nop

loc_8c03dbc0:
	mov 0x18,r0
	mov.b @(r0,r13),r1
	add 0x6C,r0
	mov.b r1,@(r0,r13)

loc_8c03dbc8:
	mov.w @(0x5C,PC),r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r6,r2
	bt loc_8c03dbde
	mov.w @(0x60,PC),r0
	mov.b r7,@(r0,r5)
	mov.w @(0x5E,PC),r0
	mov.b r7,@(r0,r5)
	mov.w @(0x5C,PC),r0
	mov.b r7,@(r0,r5)

loc_8c03dbde:
	mov.w @(0x46,PC),r1
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	tst 0x02,r0
	bt loc_8c03dbf6
	mov.w @(0x4A,PC),r0
	add r5,r4
	mov.b r7,@(r0,r4)
	mov.w @(0x4A,PC),r0
	mov.b r7,@(r0,r5)
	mov.w @(0x48,PC),r0
	mov.b r7,@(r0,r5)

loc_8c03dbf6:
	mov.l @(0x54,PC),r3
	jsr @r3
	nop
	mov.l @(0x50,PC),r2
	jsr @r2
	nop
	mov.l @(0x50,PC),r3
	mov 0x01,r5
	jsr @r3
	mov 0x00,r4
	mov.l @(0x48,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	add 0x28,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x008b
	#data 0x0084
	#data 0x0534
	#data 0x0081
	#data 0x04ca
	#data 0x0089
	#data 0x04dc
	#data 0x21d8
	#data 0x0525
	#data 0x106d
	#data 0x1bb5
	#data 0x1611
	#data 0x2159
	#align4
	#data 0x8c212f28
	#data 0x8c212f2c
	#data 0x8c212cd0
	#data bank04.loc_8c04e9dc
	#data bank04.loc_8c044d8c
	#data bank04.loc_8c041a14

;==============================================
loc_8c03dc58:
	mov.l @(0xD4,PC),r4
	mov.w @(0xCC,PC),r0
	mov.l @r4,r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c03dc6c
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c03dc9a

loc_8c03dc6c:
	mov.b @(0x3,r5),r0
	add 0x01,r0
	mov.b r0,@(0x3,r5)
	mov 0x00,r5
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.b r0,@(0x4,r3)
	mov 0x01,r2
	mov.l @r4,r3
	mov.b r0,@(0x5,r3)
	mov.l @r4,r3
	mov.b r0,@(0x6,r3)
	mov.l @r4,r3
	mov.b r0,@(0x7,r3)
	mov.w @(0x9C,PC),r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	bra loc_8c03dca0
	nop

loc_8c03dc9a:
	mov.l @(0x98,PC),r1
	jmp @r1
	nop

loc_8c03dca0:
	rts
	nop

;==============================================
loc_8c03dca4:
	mov.l @(0x90,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c03dcaa:
	mov.l @(0x84,PC),r1
	mov.l @(0x8C,PC),r2
	mov.l @r1,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	nop

;==============================================
loc_8c03dcba:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x74,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bf loc_8c03dcd8
	bra loc_8c03ddfc
	nop

loc_8c03dcd8:
	mov.l @(0x54,PC),r12
	mov 0x4C,r1
	mov.l @r12,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov 0x19,r0
	mov.l @r12,r3
	mov 0x01,r2
	mov.b r2,@(r0,r3)
	add 0x77,r0
	mov.l @r12,r3
	mov 0x00,r2
	mov.l r2,@(r0,r3)
	mov.l @r12,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c03dd08
	mov.l @(0x44,PC),r2
	jsr @r2
	nop
	mov.l @(0x44,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c03dd08:
	mov.l @(0x40,PC),r2
	jsr @r2
	nop
	mov.l @(0x40,PC),r3
	jsr @r3
	nop
	mov.l @r12,r0
	mov.l @(0x3C,PC),r14
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bt loc_8c03dd58
	jsr @r14
	mov 0x02,r4
	jsr @r14
	mov 0x04,r4
	bra loc_8c03dd5e
	mov 0x01,r4

;##############################################
	#data 0x009a
	#data 0x008b
	#align4
	#data 0x8c26823c
	#data loc_8c03c06a
	#data bank04.loc_8c040248
	#data bank14.loc_8c14dae0
	#data bank02.loc_8c0279a4
	#data loc_8c033190
	#data bank11.loc_8c11e770
	#data loc_8c0357d8
	#data loc_8c03580c
	#data loc_8c032be0

;----------------------------------------------
loc_8c03dd58:
	jsr @r14
	mov 0x18,r4
	mov 0x17,r4

loc_8c03dd5e:
	jsr @r14
	nop
	mov.w @(0xA8,PC),r11
	mov 0x00,r14
	mov.l @(0xB0,PC),r9
	mov 0x06,r10
	mov.l @(0xA8,PC),r8

loc_8c03dd6c:
	mul.l r11,r14
	mov.l @(0xAC,PC),r3
	mov.w @(0x9C,PC),r0
	sts macl,r13
	add r3,r13
	mov.b @(r0,r13),r5
	extu.b r5,r5
	jsr @r9
	mov r13,r4
	mov r14,r5
	jsr @r8
	mov r13,r4
	add 0x01,r14
	cmp/ge r10,r14
	bf loc_8c03dd6c
	mov.l @r12,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bf loc_8c03dd98
	mov.l @(0x8C,PC),r2
	jsr @r2
	nop

loc_8c03dd98:
	mov.l @(0x8C,PC),r2
	mov.l @(0x88,PC),r3
	jsr @r2
	mov.b @r3,r4
	mov.l @(0x88,PC),r3
	jsr @r3
	nop
	mov.l @(0x88,PC),r2
	jsr @r2
	nop
	mov.l @(0x84,PC),r3
	jsr @r3
	nop
	mov.l @(0x84,PC),r2
	jsr @r2
	nop
	mov.l @(0x80,PC),r3
	jsr @r3
	nop
	mov.l @(0x80,PC),r2
	jsr @r2
	nop
	mov.l @(0x7C,PC),r3
	jsr @r3
	nop
	mov.l @r12,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bt loc_8c03ddfc
	mov.l @(0x74,PC),r2
	jsr @r2
	nop
	mov.l @(0x70,PC),r3
	jsr @r3
	nop
	mov.l @r12,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c03ddfc
	lds.l @r15+,pr
	mov.l @(0x64,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c03ddfc:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x05a4
	#data 0x055c
	#align4
	#data loc_8c033d78
	#data loc_8c031fa0
	#data 0x8c268340
	#data bank04.loc_8c041c22
	#data 0x8c26a95c
	#data bank04.loc_8c041dde
	#data bank04.loc_8c045ef6
	#data bank04.loc_8c044d8c
	#data bank04.loc_8c04eafc
	#data bank04.loc_8c045708
	#data bank02.loc_8c02e014
	#data loc_8c030e30
	#data loc_8c030f24
	#data bank10.loc_8c1083d8
	#data loc_8c03012c
	#data loc_8c032184

;==============================================
loc_8c03de54:
	mov.l r14,@-r15
	mov 0x01,r2
	mov.l r13,@-r15
	mov 0x00,r14
	mov.l @(0x100,PC),r13
	mov.l @(0x104,PC),r5
	mov.w @(0xF4,PC),r7
	sts.l pr,@-r15
	mov.l @r13,r3
	add r5,r7
	mov.w @(0xEA,PC),r6
	mov r5,r4
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x19,r0
	mov.l @r13,r3
	mov.b r2,@(r0,r3)
	add 0x6E,r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)
	add 0x09,r0
	mov.l @r13,r3
	mov.l r14,@(r0,r3)
	add 0x08,r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)

loc_8c03de8a:
	mov r4,r5
	mov r14,r0
	nop
	add r6,r4
	mov.b r0,@(0x4,r5)
	cmp/hs r7,r4
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x6,r5)
	bf.s loc_8c03de8a
	mov.b r0,@(0x7,r5)
	mov.l @(0xC8,PC),r2
	jsr @r2
	nop
	mov.l @(0xC4,PC),r3
	jsr @r3
	nop
	mov.l @(0xC4,PC),r2
	mov 0x01,r5
	jsr @r2
	mov 0x00,r4
	mov.l @(0xBC,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r5,r4
	mov.l @(0xB8,PC),r2
	jsr @r2
	nop
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(0xB4,PC),r2
	jsr @r2
	nop
	mov.l @r13,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c03dee4
	mov.w @(0x80,PC),r0
	mov.l @r13,r2
	mov.b r14,@(r0,r2)
	mov.l @r13,r3
	mov.l r14,@(0x1C,r3)
	mov.l @r13,r2
	mov.l r14,@(0x20,r2)

loc_8c03dee4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03deec:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x6C,PC),r13
	mov.w @(0x66,PC),r0
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.l @(0x80,PC),r12
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03df20
	mov.l @(0x7C,PC),r2
	jsr @r2
	nop
	mov.w @(0x50,PC),r0
	mov 0x01,r2
	mov.l @r13,r1
	mov.b @(r0,r1),r3
	cmp/gt r2,r3
	bf loc_8c03df4c
	mov.l @(0x70,PC),r4
	jsr @r12
	nop
	bra loc_8c03e132
	nop

loc_8c03df20:
	mov.l @(0x68,PC),r11
	mov.b @r11,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c03df30

;Jump for Pause input and flags
;	macjsr loc_8c036f90,r2
	mov.l @(0x64,PC),r2;8c03df90,8c036f90
	jsr @r2
	nop


loc_8c03df30:
	mov.l @(0x60,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c03dfa8
	mov.l @(0x5C,PC),r3 ;8c03df98 ;8c038dd4
	jsr @r3 			;jump to Pause Menu
	nop
	mov.l @(0x5C,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c03df4c
	mov.l @(0x58,PC),r4
	bra loc_8c03df4e
	nop

loc_8c03df4c:
	mov.l @(0x54,PC),r4


loc_8c03df4e:
	jsr @r12
	nop
	bra loc_8c03e132
	nop

;##############################################
	#data 0x05a4
	#data 0x21d8
	#data 0x0080
	#data 0x008c
	#data 0x008e
	#align4
	#data 0x8c26823c
	#data 0x8c268340
	#data bank04.loc_8c04ebb8
	#data bank10.loc_8c106674
	#data bank04.loc_8c041a14
	#data bank04.loc_8c041e44
	#data bank04.loc_8c041aa6
	#data loc_8c0370a4
	#data loc_8c0395ac
	#data bank04.loc_8c041588
	#data loc_8c03068c
	#data 0x8c2895f0
	#data loc_8c036f90
	#data 0x8c212c9c
	#data loc_8c038dd4
	#data 0x8c212cda
	#data loc_8c0307d2
	#data loc_8c030858

;----------------------------------------------
loc_8c03dfa8:
	mov.b @r11,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c03dfe2
	mov.l @(0xF0,PC),r3
	mov.w @(0xDE,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c03dfe2
	mov.w @(0xD6,PC),r1
	mov.l @r13,r0
	mov.l @(0xE4,PC),r4
	mov.b @(r0,r1),r0
	tst 0x01,r0
	bt loc_8c03dfd0
	mov.w @(0xCC,PC),r0
	mov.l @(r0,r4),r2
	add 0x01,r2
	mov.l r2,@(r0,r4)

loc_8c03dfd0:
	mov.w @(0xC2,PC),r1
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	tst 0x02,r0
	bt loc_8c03dfe2
	mov.w @(0xBC,PC),r0
	mov.l @(r0,r4),r2
	add 0x01,r2
	mov.l r2,@(r0,r4)

loc_8c03dfe2:
	mov.l @(0xC8,PC),r3
	jsr @r3
	nop
	mov.l @(0xC4,PC),r14
	mov 0x32,r0
	mov 0x00,r3
	mov.l @r14,r2
	mov.b r3,@(r0,r2)
	mov 0x30,r0
	mov.l @r14,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c03e006
	mov.l @r14,r3
	mov 0x31,r0
	mov.b @(r0,r3),r2
	add 0xFF,r2
	mov.b r2,@(r0,r3)

loc_8c03e006:
	mov.w @(0x92,PC),r0
	mov.l @r13,r4
	mov.l @(r0,r4),r0
	cmp/eq 0xFF,r0
	bt loc_8c03e018
	mov.w @(0x88,PC),r0
	mov.l @(r0,r4),r2
	add 0x01,r2
	mov.l r2,@(r0,r4)

loc_8c03e018:
	mov.l @r13,r4
	mov 0x4C,r0
	mov.b @(r0,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c03e038
	mov.w @(0x76,PC),r0
	mov.l @(0x8C,PC),r2
	mov.l @(r0,r4),r1
	mov.w @(0x72,PC),r0
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c03e038
	mov.l @(0x84,PC),r2
	jsr @r2
	mov 0x0A,r4

loc_8c03e038:
	mov.l @(0x80,PC),r3
	jsr @r3
	nop
	mov.l @r14,r2
	mov r2,r0
	nop
	mov 0x3B,r1
	mov r1,r3
	mov.b @(r0,r1),r0
	add r2,r3
	mov.l @(0x70,PC),r2
	add 0x01,r0
	and 0x0F,r0
	jsr @r2
	mov.b r0,@r3
	mov.l @(0x6C,PC),r1
	jsr @r1
	nop
	mov.l @(0x68,PC),r2
	jsr @r2
	nop
	mov.l @(0x68,PC),r1
	jsr @r1
	nop
	mov.l @r14,r2
	mov 0x30,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c03e0d0
	mov.l @r14,r3
	mov 0x31,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c03e0d0
	mov.l @r14,r2
	mov 0x30,r0
	mov r2,r3
	mov.b @(r0,r3),r1
	mov 0x31,r0
	mov.b r1,@(r0,r2)
	mov 0x32,r0
	mov.w @(0x12,PC),r2
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	bra loc_8c03e006
	nop

;##############################################
	#data 0x008b
	#data 0x0084
	#data 0x0558
	#data 0x0afc
	#data 0x0090
	#data 0x0e10
	#data 0x00ff
	#align4
	#data 0x8c26823c
	#data 0x8c268340
	#data bank04.loc_8c047338
	#data 0x8c2896b0
	#data bank12.loc_8c12939c
	#data bank01.loc_8c011780
	#data bank04.loc_8c046abc
	#data bank04.loc_8c045ce0
	#data bank04.loc_8c045234
	#data bank04.loc_8c045fd0
	#data loc_8c031094

;----------------------------------------------
loc_8c03e0d0:
	mov.b @r11,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c03e0de
	mov.w @(0x10,r11),r0
	add 0x01,r0
	mov.w r0,@(0x10,r11)

loc_8c03e0de:
	mov.l @(0xFC,PC),r3
	jsr @r3
	nop
	mov.l @(0xF8,PC),r2
	jsr @r2
	nop
	mov.l @(0xF8,PC),r14
	jsr @r14
	mov 0x03,r4
	jsr @r14
	mov 0x04,r4
	jsr @r14
	mov 0x01,r4
	jsr @r14
	mov 0x02,r4
	mov.l @(0xE8,PC),r3
	mov 0x01,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt loc_8c03e110
	mov.l @(0xE4,PC),r3
	mov.l @(0xE0,PC),r4
	jsr @r3
	nop

loc_8c03e110:
	mov.l @(0xE0,PC),r4
	jsr @r12
	nop
	mov.l @(0xD0,PC),r2
	mov 0x01,r5
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt loc_8c03e132
	lds.l @r15+,pr
	mov.l @(0xC8,PC),r2
	mov.l @(0xD0,PC),r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c03e132:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03e13e:
	bra loc_8c03deec
	nop

;==============================================
loc_8c03e142:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xAC,PC),r14
	mov 0x00,r11
	mov.l @(0xA4,PC),r10
	mov 0x01,r12
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	mov 0x19,r0
	mov.l @r14,r3
	mov.b r12,@(r0,r3)
	add 0x6F,r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03e194
	mov.l @r14,r2
	mov 0x04,r0
	mov.b r0,@(0x2,r2)
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x3,r3)

loc_8c03e194:
	mov.w @(0x3C,PC),r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03e1aa
	mov 0x3E,r0
	mov.b @(r0,r10),r0
	cmp/eq 0x01,r0
	bt loc_8c03e1bc
	bra loc_8c03e1b4
	nop

loc_8c03e1aa:
	mov.w @(0x28,PC),r1
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c03e1bc

loc_8c03e1b4:
	mov.w @(0x20,PC),r0
	mov.l @r14,r2
	bra loc_8c03e1c2
	mov.b r11,@(r0,r2)

loc_8c03e1bc:
	mov.w @(0x18,PC),r0
	mov.l @r14,r2
	mov.b r12,@(r0,r2)

loc_8c03e1c2:
	mov 0x3E,r0
	mov.b @(r0,r10),r3
	cmp/pz r3
	bt loc_8c03e204
	mov.w @(0xC,PC),r0
	mov.l @r14,r2
	mov.b r11,@(r0,r2)
	bra loc_8c03e220
	mov 0x03,r4

;##############################################
	#data 0x008b
	#data 0x0099
	#data 0x009b
	#data 0x0084
	#align4
	#data bank04.loc_8c045208
	#data bank04.loc_8c043f60
	#data bank04.loc_8c04508e
	#data loc_8c039240
	#data 0x007f7fff
	#data bank11.loc_8c11c720
	#data loc_8c030858
	#data 0x007fff7f
	#data 0x8c2895f0
	#data 0x8c26823c

;----------------------------------------------
loc_8c03e204:
	mov 0x3E,r2
	mov r12,r1
	add r10,r2
	mov.l @r14,r3
	mov.b @r2,r2
	mov.w @(0x106,PC),r0
	shad r2,r1
	mov.b @(r0,r3),r2
	and r1,r2
	mov.b r2,@(r0,r3)
	mov.l @r14,r4
	mov.b @(r0,r4),r4
	neg r4,r4
	add 0x03,r4

loc_8c03e220:
	bsr loc_8c03e56c
	nop
	mov.l @r14,r2
	mov 0x2A,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c03e234
	mov.w @(0xE6,PC),r0
	mov.l @r14,r3
	mov.b r11,@(r0,r3)

loc_8c03e234:
	mov 0x3E,r0
	mov.w @(0xE0,PC),r6
	mov.b @(r0,r10),r3
	mov.l @(0xF4,PC),r9
	cmp/pz r3
	bt.s loc_8c03e246
	mov 0x63,r5
	bra loc_8c03e344
	nop

loc_8c03e246:
	mov.b @(r0,r10),r4
	add 0x4D,r0
	mov.l @r14,r3
	mul.l r6,r4
	mov r4,r7
	mov.b @(r0,r3),r2
	xor r12,r7
	tst r2,r2
	sts macl,r4
	bt.s loc_8c03e28e
	add r9,r4
	mov.w @(0xBC,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e26c
	mov.b r5,@(r0,r4)

loc_8c03e26c:
	mov.w @(0xAE,PC),r0
	mov.b @(r0,r4),r3
	add 0x08,r0
	mov.b @(r0,r4),r2
	cmp/ge r2,r3
	bt loc_8c03e280
	mov.w @(0xA0,PC),r0
	mov.b @(r0,r4),r2
	add 0xF8,r0
	mov.b r2,@(r0,r4)

loc_8c03e280:
	mov.w @(0x9C,PC),r0
	mov.l @r14,r3
	mov.b @(r0,r4),r2
	mov.w @(0x98,PC),r0
	mov.b r2,@(r0,r3)
	bra loc_8c03e34c
	nop

loc_8c03e28e:
	mov.w @(0x92,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c03e34c
	mov.w @(0x88,PC),r0
	mov.l @r14,r3
	mul.l r6,r7
	mov.b @(r0,r3),r2
	mov 0x20,r7
	add 0x01,r2
	mov.b r2,@(r0,r3)
	mov.l @r14,r3
	sts macl,r1
	mov.b @(r0,r3),r2
	mov.w @(0x72,PC),r0
	mov r1,r13
	add r9,r13
	mov.b r2,@(r0,r4)
	add 0xFE,r0
	mov.b @(r0,r13),r13
	cmp/ge r7,r13
	bt loc_8c03e2c8
	mov.w @(0x68,PC),r0
	mov r12,r2
	shad r13,r2
	mov.l @(r0,r4),r3
	or r2,r3
	bra loc_8c03e2d6
	mov.l r3,@(r0,r4)

loc_8c03e2c8:
	mov.w @(0x5C,PC),r0
	add 0xE0,r13
	mov r12,r3
	shad r13,r3
	mov.l @(r0,r4),r2
	or r3,r2
	mov.l r2,@(r0,r4)

loc_8c03e2d6:
	mov.w @(0x50,PC),r0
	mov r1,r13
	add r9,r13
	mov.b @(r0,r13),r13
	cmp/ge r7,r13
	bt loc_8c03e2f0
	mov.w @(0x40,PC),r0
	mov r12,r2
	shad r13,r2
	mov.l @(r0,r4),r3
	or r2,r3
	bra loc_8c03e2fe
	mov.l r3,@(r0,r4)

loc_8c03e2f0:
	mov.w @(0x34,PC),r0
	add 0xE0,r13
	mov r12,r3
	shad r13,r3
	mov.l @(r0,r4),r2
	or r3,r2
	mov.l r2,@(r0,r4)

loc_8c03e2fe:
	mov.w @(0x2A,PC),r0
	mov r1,r13
	add r9,r13
	mov.b @(r0,r13),r13
	cmp/ge r7,r13
	bt loc_8c03e334
	mov.w @(0x18,PC),r0
	mov r12,r2
	shad r13,r2
	mov.l @(r0,r4),r3
	or r2,r3
	bra loc_8c03e34c
	mov.l r3,@(r0,r4)

;##############################################
	#data 0x0084
	#data 0x05a4
	#data 0x052f
	#data 0x0527
	#data 0x052e
	#data 0x0081
	#data 0x0525
	#data 0x0504
	#data 0x0508
	#data 0x1074
	#data 0x1bbc
	#align4
	#data 0x8c268340

;----------------------------------------------
loc_8c03e334:
	mov.w @(0xD4,PC),r0
	add 0xE0,r13
	mov r12,r3
	shad r13,r3
	mov.l @(r0,r4),r2
	or r3,r2
	bra loc_8c03e34c
	mov.l r2,@(r0,r4)

loc_8c03e344:
	mov.w @(0xC6,PC),r0
	mov.l @r14,r1
	mov.b @(r0,r1),r3
	tst r3,r3

loc_8c03e34c:
	mov r9,r13
	add r6,r13
	mov.l @r14,r6
	mov 0x4C,r0
	mov r9,r7
	mov.b @(r0,r6),r6
	mov r6,r0
	nop
	cmp/eq 0x01,r0
	bt.s loc_8c03e36a
	mov r9,r4
	mov r6,r0
	nop
	cmp/eq 0x05,r0
	bf loc_8c03e3f2

loc_8c03e36a:
	mov 0x3E,r0
	mov.b @(r0,r10),r0
	cmp/eq 0x00,r0
	bt loc_8c03e37e
	cmp/eq 0x01,r0
	bt loc_8c03e3a8
	cmp/eq 0xFF,r0
	bt loc_8c03e3d2
	bra loc_8c03e456
	nop

loc_8c03e37e:
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e38e
	mov.b r5,@(r0,r4)

loc_8c03e38e:
	mov.w @(0x80,PC),r0
	mov.b @(r0,r13),r3
	add 0x01,r3
	mov.b r3,@(r0,r13)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e39e
	mov.b r5,@(r0,r13)

loc_8c03e39e:
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r4),r3
	add 0xEF,r0
	bra loc_8c03e456
	mov.b r3,@(r0,r4)

loc_8c03e3a8:
	mov.w @(0x64,PC),r0
	mov.b @(r0,r13),r3
	add 0x01,r3
	mov.b r3,@(r0,r13)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e3b8
	mov.b r5,@(r0,r13)

loc_8c03e3b8:
	mov.w @(0x56,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e3c8
	mov.b r5,@(r0,r4)

loc_8c03e3c8:
	mov.w @(0x44,PC),r0
	mov.b @(r0,r13),r3
	add 0xEF,r0
	bra loc_8c03e456
	mov.b r3,@(r0,r13)

loc_8c03e3d2:
	mov.w @(0x3E,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e3e2
	mov.b r5,@(r0,r4)

loc_8c03e3e2:
	mov.b @(r0,r13),r3
	add 0x01,r3
	mov.b r3,@(r0,r13)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e456
	bra loc_8c03e456
	mov.b r5,@(r0,r13)

loc_8c03e3f2:
	mov.w @(0x18,PC),r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03e41c
	mov.l @(0x18,PC),r3
	jsr @r3
	nop
	mov.l @(0x14,PC),r2
	jsr @r2
	mov r13,r4
	bra loc_8c03e456
	nop

;##############################################
	#data 0x0508
	#data 0x008b
	#data 0x0540
	#data 0x0541
	#data 0x0542
	#align4
	#data bank04.loc_8c0413cc

;----------------------------------------------
loc_8c03e41c:
	mov.w @(0x92,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c03e438
	mov.w @(0x8C,PC),r0
	mov.l @(r0,r4),r3
	add 0x5C,r0
	mov.l r3,@(r0,r4)
	add 0xA0,r0
	mov.l @(0x8C,PC),r3
	mov.l @(r0,r4),r2
	add 0x64,r0
	jsr @r3
	mov.l r2,@(r0,r4)

loc_8c03e438:
	mov.w @(0x76,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c03e456
	mov.w @(0x70,PC),r0
	mov.l @(r0,r13),r3
	add 0x5C,r0
	mov.l r3,@(r0,r13)
	add 0xA0,r0
	mov.l @(r0,r13),r2
	add 0x64,r0
	mov.l @(0x6C,PC),r3
	mov.l r2,@(r0,r13)
	jsr @r3
	mov r13,r4

loc_8c03e456:
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8c03e474
	cmp/eq 0x01,r0
	bt loc_8c03e4aa
	cmp/eq 0x02,r0
	bt loc_8c03e4aa
	cmp/eq 0x05,r0
	bt loc_8c03e4c4
	cmp/eq 0x07,r0
	bt loc_8c03e4c4
	bra loc_8c03e4ec
	nop

loc_8c03e474:
	mov.w @(0x3E,PC),r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03e4ec
	mov.l @r14,r2
	mov 0x51,r0
	mov.b r12,@(r0,r2)
	add 0x5E,r0
	mov.l @r14,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c03e492
	bra loc_8c03e494
	mov 0x32,r3

loc_8c03e492:
	mov 0x64,r3

loc_8c03e494:
	mov.w @(0x20,PC),r0
	mov.l r3,@r15
	mov.l @r14,r4
	mov.b @(r0,r4),r4
	add 0x01,r4
	mul.l r4,r3
	mov.l @(0x1C,PC),r3
	jsr @r3
	sts macl,r4
	bra loc_8c03e4ec
	nop

loc_8c03e4aa:
	bsr loc_8c03e594
	nop

loc_8c03e4ae:
	bra loc_8c03e4ec
	nop

;##############################################
	#data 0x0525
	#data 0x04d8
	#data 0x0088
	#data 0x0083
	#align4
	#data bank04.loc_8c0411e2
	#data bank01.loc_8c011780

;----------------------------------------------
loc_8c03e4c4:
	mov 0x3E,r0
	mov.w @(0x11C,PC),r2
	mov.b @(r0,r10),r3
	mov.w @(0x11A,PC),r0
	muls.w r2,r3
	sts macl,r3
	add r3,r9
	mov.b @(r0,r9),r3
	tst r3,r3
	bf loc_8c03e4ec
	mov.l @(0x118,PC),r1
	mov.w @(0x10C,PC),r0
	mov.l @r1,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03e4ec
	mov.l @(0x110,PC),r3
	mov.w @(0x102,PC),r4
	jsr @r3
	nop

loc_8c03e4ec:
	mov.l @(0x10C,PC),r2
	jsr @r2
	nop
	mov.l @(0x10C,PC),r3
	jsr @r3
	nop
	mov.l @(0x108,PC),r2
	jsr @r2
	nop
	mov.l @(0x108,PC),r3
	jsr @r3
	nop
	mov.l @(0x104,PC),r2
	jsr @r2
	nop
	mov.l @(0x104,PC),r13
	jsr @r13
	mov 0x03,r4
	jsr @r13
	mov 0x04,r4
	jsr @r13
	mov 0x01,r4
	jsr @r13
	mov 0x02,r4
	mov.l @(0xF4,PC),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xF4,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03e532:
	mov.l @(0xC0,PC),r3
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c03e544
	mov.l @(0xDC,PC),r2
	jmp @r2
	nop

loc_8c03e544:
	rts
	nop

;==============================================
loc_8c03e548:
	mov.w @(0x9A,PC),r6
	mov 0x00,r5
	mov.l @(0xD0,PC),r1
	mov 0x03,r7

loc_8c03e550:
	mov r5,r3
	shll r3
	add r4,r3
	mov.w @(0x94,PC),r0
	mul.l r6,r3
	sts macl,r3
	add r1,r3
	mov.b r5,@(r0,r3)
	add 0x01,r5
	cmp/ge r7,r5
	bf loc_8c03e550
	mov.l @(0xBC,PC),r2
	jmp @r2
	nop

loc_8c03e56c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r4,@r15
	mov r4,r0
	nop
	tst 0x01,r0
	bt loc_8c03e57e
	bsr loc_8c03e548
	mov 0x00,r4

loc_8c03e57e:
	mov.l @r15,r0
	tst 0x02,r0
	bt loc_8c03e58c
	mov 0x01,r4
	add 0x04,r15
	bra loc_8c03e548
	lds.l @r15+,pr

loc_8c03e58c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03e594:
	mov.l @(0x5C,PC),r4
	mov 0x00,r5
	sts.l pr,@-r15
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.b r0,@(0x2,r3)
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov.b r0,@(0x4,r3)
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov.b r0,@(0x5,r3)
	mov.l @r4,r3
	mov.b r0,@(0x6,r3)
	mov.l @r4,r3
	mov.b r0,@(0x7,r3)
	mov.w @(0x32,PC),r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x18,r0
	mov.l @r4,r3
	mov 0x03,r5
	mov.b r5,@(r0,r3)
	add 0x6D,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	add 0x07,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	bsr loc_8c03e56c
	mov r5,r4
	mov.l @(0x4C,PC),r2
	jsr @r2
	nop
	mov.l @(0x4C,PC),r3
	mov 0x0C,r4
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x05a4
	#data 0x053d
	#data 0x0088
	#data 0x03e8
	#data 0x053f
	#data 0x0084
	#align4
	#data 0x8c26823c
	#data bank01.loc_8c011780
	#data bank04.loc_8c04182e
	#data bank04.loc_8c04185e
	#data loc_8c031bba
	#data bank04.loc_8c045208
	#data bank04.loc_8c043f60
	#data bank04.loc_8c04508e
	#data loc_8c030858
	#data loc_8c0395ac
	#data bank04.loc_8c0409e0
	#data 0x8c268340
	#data bank02.loc_8c028246
	#data bank02.loc_8c027ada
	#data bank02.loc_8c027b64

;==============================================
loc_8c03e630:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.b r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x4,r15)
	mov r6,r14
	mov.l @(0xD4,PC),r0
	shll2 r14
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c03e66a
	mov.l @(0xCC,PC),r13

loc_8c03e64e:
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r14),r2
	mov.b @(0x4,r15),r0
	cmp/eq r0,r2
	bf loc_8c03e664
	mov.b @r15,r3
	mov.b @(0x1,r14),r0
	cmp/eq r3,r0
	bf loc_8c03e664
	jsr @r13
	mov r14,r4

loc_8c03e664:
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c03e64e

loc_8c03e66a:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03e674:
	mov.w @(0x92,PC),r0
	mov 0x03,r6
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r5
	mov.b @(0x1,r14),r0
	bsr loc_8c03e630
	mov r0,r4
	mov.w @(0x80,PC),r0
	mov 0x04,r6
	mov.b @(r0,r14),r5
	mov.b @(0x1,r14),r0
	bsr loc_8c03e630
	mov r0,r4
	mov.w @(0x74,PC),r0
	mov 0x02,r6
	mov.b @(r0,r14),r5
	mov.b @(0x1,r14),r0
	bsr loc_8c03e630
	mov r0,r4
	mov.w @(0x68,PC),r0
	mov 0x02,r6
	mov.b @(r0,r14),r5
	mov.b @(0x1,r14),r0
	bsr loc_8c03e630
	mov r0,r4
	mov.w @(0x5E,PC),r0
	mov.l @(0x70,PC),r3
	mov.b @(r0,r14),r0
	mov.b r0,@(0x1,r14)
	mov.w @(0x54,PC),r0
	mov.b @(r0,r14),r5
	extu.b r5,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x4E,PC),r0
	mov.l @(0x64,PC),r3
	mov.b @(r0,r14),r5
	extu.b r5,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x3E,PC),r0
	mov.l @(0x5C,PC),r3
	mov.b @(r0,r14),r5
	extu.b r5,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	mov.w @(0x2A,PC),r0
	mov.w @(0x2A,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bf.s loc_8c03e6f4
	mov r14,r4
	mov 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c03e6f4:
	mov.l @(0x34,PC),r3
	jsr @r3
	nop
	mov.w @(0x16,PC),r0
	mov 0x20,r2
	mov.b r2,@(r0,r14)
	add 0xFE,r0
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x01a4
	#data 0x052c
	#data 0x055c
	#data 0x04f0
	#data 0x0c00
	#data 0x01f3
	#align4
	#data 0x8c287a5c
	#data bank04.loc_8c0450c0
	#data loc_8c033f90
	#data loc_8c0320c6
	#data loc_8c033d78
	#data bank04.loc_8c04f048

;==============================================
loc_8c03e730:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x128,PC),r3
	mov.l @(0x120,PC),r4
	mov.w @(0x110,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(0x120,PC),r14
	mov 0x18,r0
	mov 0x03,r3
	mov.l @r14,r2
	mov 0x00,r13
	mov.b r3,@(r0,r2)
	add 0x6C,r0
	mov.l @r14,r3
	mov 0x01,r2
	mov.b r13,@(r0,r3)
	mov 0x2E,r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov 0x4C,r0
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	mov.l @(0x104,PC),r3
	jsr @r3
	nop
	mov.l @(0x104,PC),r2
	jsr @r2
	nop
	mov.l @(0x100,PC),r3
	jsr @r3
	nop
	bsr loc_8c03d9a0
	nop
	bsr loc_8c03e7ba
	nop
	mov.w @(0xD2,PC),r0
	mov 0x03,r3
	mov.l @r14,r2
	mov.b r3,@(r0,r2)
	bsr loc_8c03dcba
	nop
	mov.l @(0xEC,PC),r1
	jsr @r1
	nop
	mov.l @(0xE8,PC),r4
	mov 0x05,r5
	mov 0x5B,r0
	mov r4,r3
	add 0x5A,r3
	mov.b r5,@r3
	mov.b r5,@(r0,r4)
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03e7ba:
	mov.l r14,@-r15
	mov 0x00,r6
	mov.l r13,@-r15
	mov r6,r5
	mov.l r12,@-r15
	mov 0x06,r13
	mov.l r11,@-r15
	mov 0x03,r11
	mov.l r10,@-r15
	mov 0x01,r14
	mov.l r9,@-r15
	mov.w @(0x7E,PC),r12
	mov.l @(0x90,PC),r7
	mov.l @(0xA8,PC),r10
	mov.l @(0xA4,PC),r9

loc_8c03e7d8:
	mul.l r12,r5
	mov.w @(0x76,PC),r0
	mov 0x2C,r1
	sts macl,r4
	add r10,r4
	mov.b r14,@r4
	mov.b r6,@(r0,r4)
	mov.w @(0x6C,PC),r0
	mov.b r5,@(r0,r4)
	mov.l @r7,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and r11,r0
	mov r0,r3
	shll2 r3
	shll r0
	add r3,r0
	mov r5,r3
	add r5,r0
	mov.b @(r0,r9),r2
	mov.w @(0x54,PC),r0
	mov.b r2,@(r0,r4)
	add 0x9D,r0
	mov 0x00,r2
	mov.b r6,@(r0,r4)
	cmp/gt r3,r2
	add 0x64,r0
	addc r2,r3
	mov.b r6,@(r0,r4)
	add 0x12,r0
	shar r3
	mov.b r3,@(r0,r4)
	add 0x1D,r0
	mov.b r5,@(r0,r4)
	add 0x01,r5
	cmp/ge r13,r5
	bf loc_8c03e7d8
	mov.l @r7,r0
	mov 0x2C,r1
	mov.l @(0x5C,PC),r3 ;Stage 
	mov.b @(r0,r1),r0
	and 0x07,r0
	mov.b r0,@r3
	mov.l @r7,r2
	mov r2,r0
	nop
	mov r1,r3
	mov.b @(r0,r3),r0
	add 0x55,r1
	and 0x07,r0
	add r2,r1
	mov.b r0,@r1
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0080
	#data 0x0084
	#data 0x05a4
	#data 0x012c
	#data 0x0524
	#data 0x052c
	#align4
	#data 0x8c2682c0
	#data bank12.loc_8c129728
	#data 0x8c26823c
	#data bank04.loc_8c045e74
	#data bank04.loc_8c0472fc
	#data bank04.loc_8c04ebb8
	#data bank04.loc_8c041c08
	#data 0x8c2895f0
	#data bank13.loc_8c138280
	#data 0x8c268340
	#data 0x8c26a95c

;==============================================
loc_8c03e888:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xB8,PC),r14
	mov 0x2E,r0
	mov 0x01,r2
	mov.l @(0xB4,PC),r1
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	add 0x52,r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	add 0x01,r2
	mov.b r2,@(r0,r3)
	mov.l @r14,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x9C,PC),r4
	mov.w @(0x8E,PC),r3
	mov r4,r7
	mov.w @(0x88,PC),r5
	mov.w @(0x84,PC),r6
	add r3,r7
	mov.l r4,@r15

loc_8c03e8be:
	mov.w @(0x84,PC),r0
	mov.w r5,@(r0,r4)
	add 0x04,r0
	mov.w r5,@(r0,r4)
	add r6,r4
	cmp/hs r7,r4
	bf loc_8c03e8be
	mov.w @(0x72,PC),r0
	mov.l @r14,r4
	mov.l @(r0,r4),r0
	cmp/eq 0xFF,r0
	bt loc_8c03e8de
	mov.w @(0x68,PC),r0
	mov.l @(r0,r4),r2
	add 0x01,r2
	mov.l r2,@(r0,r4)

loc_8c03e8de:
	mov.l @(0x74,PC),r3
	jsr @r3
	nop
	mov.l @(0x70,PC),r4
	mov 0x3B,r0
	mov 0x3B,r1
	mov.b @(r0,r4),r0
	add r4,r1
	add 0x01,r0
	and 0x0F,r0
	mov.b r0,@r1
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bt loc_8c03e908
	mov.l @(0x5C,PC),r2
	jsr @r2
	nop
	mov.l @(0x5C,PC),r1
	jsr @r1
	nop

loc_8c03e908:
	mov.l @(0x58,PC),r2
	jsr @r2
	nop
	mov.l @(0x58,PC),r1
	jsr @r1
	nop
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	tst r0,r0
	bt loc_8c03e934
	mov.l @(0x4C,PC),r3
	jsr @r3
	nop
	mov.l @(0x4C,PC),r14
	jsr @r14
	mov 0x03,r4
	jsr @r14
	mov 0x04,r4
	jsr @r14
	mov 0x01,r4
	jsr @r14
	mov 0x02,r4

loc_8c03e934:
	mov.l @(0x3C,PC),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r2
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x05a4
	#data 0x0090
	#data 0x21d8
	#data 0x0420
	#align4
	#data 0x8c26823c
	#data bank14.loc_8c14daf0
	#data 0x8c268340
	#data bank04.loc_8c046abc
	#data 0x8c2895f0
	#data bank04.loc_8c045ce0
	#data bank04.loc_8c045234
	#data loc_8c031094
	#data bank04.loc_8c045208
	#data bank04.loc_8c043f60
	#data bank04.loc_8c04508e
	#data loc_8c030858
	#data loc_8c0395ac

;==============================================
loc_8c03e97c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x108,PC),r3
	mov.l @(0x100,PC),r4
	jsr @r3
	mov 0x40,r5
	mov.l @(0x104,PC),r2
	jsr @r2
	mov 0x03,r4
	mov.l @(0x100,PC),r3
	jsr @r3
	nop
	mova @(0x100,PC),r0
	mov.w @(0xE4,PC),r4
	fmov @r0,fr6
	mova @(0xFC,PC),r0
	mov.l @(0x104,PC),r3
	fmov @r0,fr5
	mova @(0xFC,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(0xE4,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(0x100,PC),r3
	mov.l @(0xF8,PC),r4
	mov.l @(0xF4,PC),r5
	jsr @r3
	nop
	mov.l @(0xF8,PC),r2
	jsr @r2
	nop
	mov.l @(0xF8,PC),r3
	jsr @r3
	nop
	mov.l @(0xF4,PC),r2
	jsr @r2
	nop
	bsr loc_8c03de54
	nop
	mov.l @(0xF0,PC),r4
	mov 0x00,r14
	mov.l @r4,r2
	mov.b @(0x2,r2),r0
	add 0x01,r0
	mov.b r0,@(0x2,r2)
	mov.l @r4,r3
	mov r14,r0
	nop
	mov.b r0,@(0x3,r3)
	mov 0x01,r13
	mov.l @r4,r3
	mov.b r0,@(0x4,r3)
	mov.l @r4,r3
	mov.b r0,@(0x5,r3)
	mov.l @r4,r3
	mov.b r0,@(0x6,r3)
	mov.l @r4,r3
	mov.b r0,@(0x7,r3)
	mov.w @(0x8A,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.w @(0x86,PC),r0
	mov.l @r4,r3
	mov.l @(0xC4,PC),r4
	mov.b r14,@(r0,r3)
	mov.l @(0xC4,PC),r3
	mov r3,r2
	mov.l r3,@r4
	mov r13,r0
	nop
	mov.b r0,@(0x1,r2)
	mov.l @r4,r3
	mov r14,r0
	nop
	mov.b r0,@(0x2,r3)
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov.l r0,@(0x8,r3)
	mov.l @r4,r2
	mov.b r0,@(0x7,r2)
	mov.l @r4,r3
	mov.l r0,@(0xC,r3)
	mov 0x3F,r0
	mov.l @r4,r2
	mov.b r14,@(r0,r2)
	mov 0x04,r2
	mov.l @r4,r3
	mov.b r2,@r3
	mov.l @r4,r3
	mov r14,r0
	nop
	mov.l @(0x90,PC),r4
	mov.w r0,@(0x12,r3)
	mov.b r0,@(0x2,r4)
	mov.b r0,@(0x1,r4)
	mov.l @(0x8C,PC),r4
	mov.b r0,@(0x4,r4)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r4)
	mov r14,r0
	nop
	mov.l @(0x84,PC),r3
	mov.b r0,@(0x6,r4)
	jsr @r3
	mov.b r0,@(0x7,r4)
	mov.l @(0x80,PC),r4
	mov r14,r0
	nop
	mov.b r0,@(0x4,r4)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r4)
	mov r14,r0
	nop
	mov.l @(0x68,PC),r3
	mov.b r0,@(0x6,r4)
	jsr @r3
	mov.b r0,@(0x7,r4)
	lds.l @r15+,pr
	mov.l @(0x6C,PC),r2
	mov r14,r6
	mov.l @(0x64,PC),r4
	mov 0x3C,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x1d28
	#data 0x0438
	#data 0x0098
	#align4
	#data 0x8c2152dc
	#data bank11.loc_8c11fcd0
	#data bank12.loc_8c1204f0
	#data bank12.loc_8c121100
	#data 0x463b8000
	#data 0x3e99999a
	#data 0x3faaaaab
	#data bank12.loc_8c121730
	#data 0x8c311de0
	#data 0x8c2df160
	#data bank11.loc_8c11b570
	#data bank12.loc_8c1234f0
	#data bank11.loc_8c11f340
	#data bank10.loc_8c1083d8
	#data 0x8c26823c
	#data 0x8c2896b0
	#data 0x8c2895f0
	#data 0x8c26a518
	#data 0x8c268340
	#data bank04.loc_8c04f048
	#data pl_mem.player_start_charB
	#data 0xff000000
	#data loc_8c0355b2

;==============================================
loc_8c03eae4:
	mov.l r14,@-r15
	mov.l @(0x90,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x3C,r0
	bf loc_8c03eb0a
	mov.l @(0x84,PC),r2
	mov 0x01,r6
	mov.l @(0x7C,PC),r4
	jsr @r2
	mov 0x3C,r5
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov 0x3C,r4

loc_8c03eb0a:
	mov.l @r14,r4
	mov.w @(0x8,r4),r0
	tst r0,r0
	bf loc_8c03eb6c
	mov.b @(0x1,r4),r0
	add 0x01,r0
	mov.b r0,@(0x1,r4)
	mov 0x00,r4
	mov.l @r14,r3
	mov r4,r0
	nop
	mov.b r0,@(0x2,r3)
	mov 0x03,r2
	mov.l @r14,r3
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	mov 0x2E,r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov.l @(0x48,PC),r3
	jsr @r3
	nop
	mov.l @(0x48,PC),r2
	mov.l @(0x44,PC),r4
	mov.w @(0x26,PC),r6
	jsr @r2
	mov 0x00,r5
	mov.l @(0x40,PC),r3
	mov.l @(0x40,PC),r4
	mov.w @(0x1E,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(0x3C,PC),r2
	jsr @r2
	nop
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov.l @(0x38,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c03eb6c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0080
	#data 0x00c0
	#align4
	#data 0x8c26823c
	#data 0xff000000
	#data loc_8c0355b2
	#data bank04.loc_8c041a90
	#data bank04.loc_8c044d8c
	#data 0x8c2682c0
	#data bank12.loc_8c129728
	#data 0x8c2895f0
	#data bank04.loc_8c04182e
	#data bank04.loc_8c04185e
	#data bank04.loc_8c041ecc

;==============================================
loc_8c03eba4:
	mov.l @(0x130,PC),r2
	mov.l @(0x134,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x3,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x128,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(0x120,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(0x114,PC),r2
	mov.l @r2,r3
	mov.b @(0x7,r3),r0
	tst r0,r0
	bf loc_8c03ebd4
	mov.l @(0x118,PC),r3
	mov.l @(0x114,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c03ebd4:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03ebda:
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r3
	jsr @r3
	nop
	mov.l @(0x10C,PC),r2
	jsr @r2
	nop
	mov.l @(0x108,PC),r3
	jsr @r3
	mov 0x0F,r4
	mov.l @(0x10C,PC),r2
	mov.l @(0x104,PC),r5
	jsr @r2
	mov r5,r4
	mov.l @(0xE0,PC),r5
	mov 0x2A,r0
	mov.l @r5,r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c03ec0a
	lds.l @r15+,pr
	mov 0x02,r0
	rts
	mov.b r0,@(0x3,r4)

;==============================================
loc_8c03ec0a:
	mov.b @(0x3,r4),r0
	mov 0x00,r2
	add 0x01,r0
	mov.b r0,@(0x3,r4)
	mov 0x19,r0
	mov.l @r5,r3
	mov.b r2,@(r0,r3)
	mov 0x09,r0
	mov.l @r5,r3
	mov.w r0,@(0xC,r3)
	mov 0x78,r0
	mov.l @r5,r3
	mov 0x01,r5
	mov.w r0,@(0xE,r3)
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov r2,r4
	mov.l @(0xD0,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov 0x17,r4
	mov.l @(0xCC,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(0xC8,PC),r3
	jsr @r3
	nop
	mov.l @(0xC8,PC),r2
	jsr @r2
	mov 0x3C,r4
	mov.l @(0xC4,PC),r3
	jsr @r3
	nop
	mov.l @(0xC4,PC),r2
	jsr @r2
	nop
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov 0xFF,r4
	mov.l @(0xC0,PC),r2
	jsr @r2
	nop
	mov.l @(0xBC,PC),r3
	mov 0x08,r4
	jmp @r3
	lds.l @r15+,pr

loc_8c03ec6c:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03ec72:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xAC,PC),r3
	jsr @r3
	nop
	mov.l @(0x58,PC),r14
	mov.w @(0x4C,PC),r0
	mov.l @r14,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c03ecb0
	mov 0x03,r0
	mov.b r0,@(0x3,r4)
	mov 0x14,r5
	mov.w @(0x3E,PC),r0
	mov.l @r14,r3
	mov.w r0,@(0xA,r3)
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x70,PC),r2
	jsr @r2
	mov 0x41,r4
	mov.l @r14,r3
	mov 0x02,r0
	mov.b r0,@(0x7,r3)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03ecb0:
	mov.w @(0x20,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c03ed30
	mov 0x00,r7
	mov.b @(0x3,r4),r0
	add 0x01,r0
	mov.b r0,@(0x3,r4)
	mov.l @r14,r3
	mov r7,r0
	nop
	mov.w r0,@(0xC,r3)
	mov.l @r14,r3
	mov.w r0,@(0xE,r3)
	bra loc_8c03ed80
	nop

;##############################################
	#data 0x0085
	#data 0x00b4
	#data 0x008a
	#align4
	#data 0x8c26823c
	#data bank14.loc_8c14daf8
	#data bank04.loc_8c044ef0
	#data loc_8c030760
	#data loc_8c0395ac
	#data loc_8c031ef8
	#data loc_8c030f24
	#data loc_8c032be0
	#data 0xff000000
	#data bank02.loc_8c02dc32
	#data bank04.loc_8c041a14
	#data bank04.loc_8c041dde
	#data bank04.loc_8c041aa6
	#data bank04.loc_8c041e44
	#data bank04.loc_8c04257c
	#data bank0f.loc_8c0fc8aa
	#data bank0f.loc_8c0fcca2
	#data bank02.loc_8c02dc1c
	#data bank02.loc_8c027ada
	#data bank02.loc_8c027b64
	#data loc_8c031f30
	#data bank04.loc_8c0418be

;----------------------------------------------
loc_8c03ed30:
	mov.b @(r0,r4),r0
	mov.l @(0x114,PC),r6
	cmp/eq 0x03,r0
	bf loc_8c03ed4c
	mov.w @(0x102,PC),r0
	mov.w @(r0,r6),r2
	mov.w @(0x100,PC),r0
	mov.w @(r0,r6),r3
	cmp/gt r3,r2
	bf loc_8c03ed48
	bra loc_8c03ed52
	mov r7,r5

loc_8c03ed48:
	bra loc_8c03ed52
	mov 0x01,r5

loc_8c03ed4c:
	mov.w @(0xF2,PC),r0
	mov.b @(r0,r4),r5
	add 0xFF,r5

loc_8c03ed52:
	mov.w @(0xEE,PC),r0
	mov.w @(0xE6,PC),r2
	mul.l r0,r5
	mov.w @(0xEA,PC),r1
	sts macl,r0
	add r6,r0
	mov.l r0,@r15
	mov.w @(r0,r2),r0
	add 0xFF,r0
	mov.w r0,@(0xC,r4)
	mov.l @r15,r0
	mov.l @r14,r3
	mov.w @(r0,r1),r0
	add 0xFF,r0
	mov.w r0,@(0xE,r3)
	mov.l @r14,r3
	mov.w @(0xC,r3),r0
	cmp/pz r0
	bt loc_8c03ed80
	mov.l @r14,r0
	mov 0x0C,r3
	add r0,r3
	mov.w r7,@r3

loc_8c03ed80:
	mov.l @r14,r4
	mov.w @(0xC,r4),r0
	tst r0,r0
	bf loc_8c03eda0
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c03eda0
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x3E,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xB0,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c03eda0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03eda8:
	mov.l @(0xA4,PC),r4
	mov 0x05,r0
	mov 0x01,r2
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.b r0,@(0x2,r3)
	mov 0x00,r0
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov.l @(0x90,PC),r3
	jsr @r3
	nop
	mov.l @(0x90,PC),r1
	jmp @r1
	lds.l @r15+,pr

;==============================================
loc_8c03edcc:
	mov.l @(0x80,PC),r4
	sts.l pr,@-r15
	mov.l @r4,r5
	mov.b @(0x7,r5),r0
	tst r0,r0
	bt loc_8c03edde
	mov.b @(0x7,r5),r0
	add 0xFF,r0
	mov.b r0,@(0x7,r5)

loc_8c03edde:
	mov.l @r4,r3
	mov.w @(0xA,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xA,r3)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03ee38
	mov.l @r4,r2
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x2,r2)
	mov 0x01,r2
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov.b r0,@(0x4,r3)
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov.b r0,@(0x5,r3)
	mov.l @r4,r3
	mov.b r0,@(0x6,r3)
	mov.l @r4,r3
	mov.b r0,@(0x7,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov.l @(0x40,PC),r3
	jsr @r3
	nop
	mov.l @(0x44,PC),r2
	mov.l @(0x3C,PC),r4
	jsr @r2
	nop
	mov.l @(0x2C,PC),r3
	jsr @r3
	nop
	mov.l @(0x28,PC),r2
	jsr @r2
	nop
	mov.l @(0x34,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c03ee38:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x04c0
	#data 0x0a64
	#data 0x008a
	#data 0x05a4
	#data 0x04c2
	#align4
	#data 0x8c268340
	#data bank04.loc_8c04257c
	#data 0x8c26823c
	#data bank04.loc_8c04182e
	#data bank04.loc_8c04185e
	#data bank04.loc_8c044d8c
	#data 0xff000000
	#data bank02.loc_8c02dc1c
	#data bank04.loc_8c041ecc

;==============================================
loc_8c03ee6c:
	mov.l @(0xF4,PC),r2
	mov.l @(0xF8,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x3,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(0xE4,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(0xE8,PC),r3
	mov.l @(0xE0,PC),r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c03ee92:
	mov.l @(0xD0,PC),r4
	mov 0x01,r2
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov.l @r4,r3
	mov.w @(0xAC,PC),r0
	mov.b r13,@(r0,r3)
	mov.w @(0xAA,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0x3C,r0
	mov.l @r4,r3
	mov.w r0,@(0xE,r3)
	mov.l @(0xB8,PC),r3
	jsr @r3
	nop
	mov.l @(0xB4,PC),r2
	jsr @r2
	nop
	mov.l @(0xB4,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r13,r4
	mov.l @(0xAC,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov 0x19,r4
	mov.l @(0xA4,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(0xA4,PC),r3
	jsr @r3
	nop
	mov.l @(0xA0,PC),r2
	jsr @r2
	mov 0x3D,r4
	mov.l @(0xA0,PC),r3
	jsr @r3
	nop
	mov.l @(0x9C,PC),r14
	jsr @r14
	mov r13,r4
	jsr @r14
	mov 0x01,r4
	jsr @r14
	mov 0x02,r4
	jsr @r14
	mov 0x03,r4
	jsr @r14
	mov 0x04,r4
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x06,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x08,r4
	jsr @r14
	mov 0x09,r4
	jsr @r14
	mov 0x0A,r4
	jsr @r14
	mov 0x0B,r4
	jsr @r14
	mov 0x0C,r4
	jsr @r14
	mov 0x0D,r4
	mov.l @(0x68,PC),r2
	jsr @r2
	nop
	mova @(0x68,PC),r0
	mov.l @(0x64,PC),r4
	mov 0x01,r3
	mov 0x2A,r2
	mov.b r3,@r4
	mov.l r2,@(0x4,r4)
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov r13,r0
	nop
	mov.l @(0x58,PC),r3
	mov.b r0,@(0x9,r4)
	mov.b r0,@(0xA,r4)
	mov.b r0,@(0xB,r4)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00a4
	#data 0x014a
	#align4
	#data 0x8c26823c
	#data bank14.loc_8c14db08
	#data bank04.loc_8c044ef0
	#data loc_8c030760
	#data loc_8c0395ac
	#data loc_8c031ef8
	#data loc_8c030f24
	#data bank04.loc_8c041a14
	#data bank04.loc_8c041dde
	#data bank04.loc_8c041aa6
	#data bank04.loc_8c041e44
	#data bank04.loc_8c04257c
	#data bank0f.loc_8c0fc3fa
	#data bank0f.loc_8c0fc634
	#data loc_8c030e30
	#data 0x8c26a688
	#data 0x460ca000
	#data loc_8c030e3a

;==============================================
loc_8c03efac:
	mov.l r14,@-r15
	mov.l @(0xF4,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r4
	mov.w @(0xE,r4),r0
	tst r0,r0
	bt loc_8c03f02e
	mov.w @(0xE,r4),r0
	mov.l @(0xEC,PC),r3
	add 0xFF,r0
	mov.w r0,@(0xE,r4)
	mov.l @r14,r1
	mov.l @(0xE0,PC),r4
	mov.w @(0xE,r1),r0
	mov r0,r1
	shll2 r1
	shll2 r1
	shll r1
	jsr @r3
	mov 0x3C,r0
	add 0x0A,r0
	mov.l r0,@(0x4,r4)
	mova @(0xD4,PC),r0
	mov.l @r14,r3
	fmov @r0,fr4
	mov.w @(0xE,r3),r0
	mov 0x02,r3
	neg r0,r0
	add 0x3C,r0
	shad r0,r3
	lds r3,fpul
	mova @(0xC8,PC),r0
	fmov @r0,fr2
	mov 0x0C,r0
	float fpul,fr3
	fdiv fr3,fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov.b @(0x9,r4),r0
	add 0xFC,r0
	mov.b r0,@(0x9,r4)
	mov.b @(0xA,r4),r0
	add 0xFC,r0
	mov.b r0,@(0xA,r4)
	mov.b @(0xB,r4),r0
	add 0xFC,r0
	mov.b r0,@(0xB,r4)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c03f02e
	mov.l @r14,r2
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0xE,r2)
	mov 0x0C,r0
	mov 0x0A,r3
	mov.l r3,@(0x4,r4)
	fmov fr4,@(r0,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x9,r4)
	mov.b r0,@(0xA,r4)
	mov.b r0,@(0xB,r4)

loc_8c03f02e:
	mov.l @(0x88,PC),r3
	jsr @r3
	nop
	mov.l @(0x84,PC),r2
	jsr @r2
	nop
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bt loc_8c03f04a
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r2)

loc_8c03f04a:
	mov.l @r14,r4
	mov 0x2A,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c03f05c
	mov 0x18,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c03f07c

loc_8c03f05c:
	mov.l @(0x64,PC),r5
	mov.l @(0x60,PC),r6
	mov.w @r5,r3
	extu.w r3,r3
	tst r6,r3
	bf loc_8c03f076
	mov.w @(0x14,r5),r0
	extu.w r0,r0
	tst r6,r0
	bf loc_8c03f076
	mov.w @(0x8,r4),r0
	tst r0,r0
	bf loc_8c03f07c

loc_8c03f076:
	mov.b @(0x3,r4),r0
	add 0x01,r0
	mov.b r0,@(0x3,r4)

loc_8c03f07c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03f082:
	mov.l @(0x20,PC),r4
	mov 0x06,r0
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.b r0,@(0x2,r3)
	mov 0x00,r0
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @(0x34,PC),r3
	jsr @r3
	nop
	mov.l @(0x30,PC),r2
	jsr @r2
	nop
	mov.l @(0x30,PC),r3
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26823c
	#data 0x8c26a688
	#data bank12.loc_8c129128
	#data 0x40c00000
	#data 0x460c8800
	#data loc_8c031f30
	#data loc_8c030e3a
	#data 0x00008000
	#data 0x8c2681dc
	#data bank04.loc_8c04182e
	#data bank04.loc_8c04185e
	#data bank04.loc_8c041ecc

;==============================================
loc_8c03f0d4:
	mov.l @(0x124,PC),r2
	mov.l @(0x128,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(0x114,PC),r2
	jsr @r2
	mov 0x06,r4
	mov.l @(0x118,PC),r3
	mov.l @(0x110,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c03f0fa:
	mov.l @(0x100,PC),r4
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r4,r5
	mov.b @(0x6,r5),r0
	tst r0,r0
	bf.s loc_8c03f1d2
	mov 0x00,r14
	mov r14,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r5
	mov.l @r4,r3
	mov.b @(0x6,r3),r0
	add 0x01,r0
	mov.b r0,@(0x6,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov.w @(0xD0,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov r14,r0
	nop
	mov.w r0,@(0xA,r3)
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.w r0,@(0xC,r3)
	mov 0x3C,r0
	mov.l @r4,r3
	mov.l @(0xD8,PC),r2
	mov.w r0,@(0xE,r3)
	mov.l @(0xD0,PC),r3
	mov.l @(0xD8,PC),r0
	mov.l @(0xD4,PC),r1
	mov.l r3,@r2
	mov.l @(0xDC,PC),r2
	mov.l @(0xD4,PC),r3
	mov.l r1,@r0
	mov.l @(0xD8,PC),r1
	mov.b r5,@r3
	mov.b r14,@r2
	mov.l @(0xD8,PC),r3
	mov.l @(0xD8,PC),r2
	mov.b r14,@r1
	jsr @r2
	mov.b r14,@r3
	mov.l @(0xD4,PC),r1
	jsr @r1
	nop
	mov.l @(0xD4,PC),r2
	jsr @r2
	nop
	mov.l @(0xD4,PC),r3
	mov.l @(0xD0,PC),r4
	jsr @r3
	nop
	mov.l @(0xD0,PC),r2
	jsr @r2
	fldi1 fr4
	mov.l @(0xD0,PC),r3
	jsr @r3
	nop
	mov.l @(0xCC,PC),r2
	jsr @r2
	nop
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov 0x09,r4
	mov.l @(0xC8,PC),r2
	jsr @r2
	nop
	mov.l @(0xCC,PC),r3
	mov.l @(0xC4,PC),r4
	jsr @r3
	nop
	mov.l @(0xC8,PC),r2
	jsr @r2
	nop
	mov.l @(0xC4,PC),r3
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r3
	mov 0xFF,r4
	mov.l @(0xC0,PC),r2
	jsr @r2
	nop
	mova @(0xC0,PC),r0
	mov.w @(0x44,PC),r3
	mov.l @(0xB8,PC),r4
	mov.b r14,@r4
	mov.l r3,@(0x4,r4)
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov r14,r0
	nop
	mov.b r0,@(0x9,r4)
	mov.w @(0x32,PC),r0
	mov.l @(0xAC,PC),r3
	mov.b r0,@(0xA,r4)
	add 0x30,r0
	mov.b r0,@(0xB,r4)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c03f1d2:
	mov.b @(0x4,r5),r0
	add 0x01,r0
	mov.b r0,@(0x4,r5)
	mov.l @r4,r3
	mov r14,r0
	nop
	mov.b r0,@(0x6,r3)
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x14,r4
	mov.l @(0x94,PC),r2
	jsr @r2
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(0x90,PC),r3
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x1770
	#data 0x0080
	#data 0x00b0
	#align4
	#data 0x8c26823c
	#data bank14.loc_8c14db50
	#data bank04.loc_8c044ef0
	#data loc_8c03069e
	#data loc_8c0395ac
	#data bank13.loc_8c138298
	#data 0x8c28c49c
	#data bank14.loc_8c14db14
	#data 0x8c28c4a0
	#data 0x8c28c4a4
	#data 0x8c28c4a7
	#data 0x8c28c4a6
	#data 0x8c28c4a5
	#data bank04.loc_8c041daa
	#data bank04.loc_8c044d8c
	#data loc_8c031ef8
	#data bank14.loc_8c14db5c
	#data loc_8c031f10
	#data loc_8c031f24
	#data loc_8c0357d8
	#data loc_8c03580c
	#data loc_8c032be0
	#data bank02.loc_8c02e014
	#data 0xff000000
	#data bank02.loc_8c02dc1c
	#data loc_8c030f24
	#data loc_8c0355b2
	#data loc_8c030e30
	#data 0x8c26a688
	#data 0x460ca000
	#data loc_8c030e3a
	#data bank04.loc_8c041dde
	#data bank04.loc_8c041aa6
	#data bank04.loc_8c041e44

;==============================================
loc_8c03f284:
	mov.l @(0xF8,PC),r2
	mov.l @(0xFC,PC),r1
	mov.l @r2,r3
	mov.b @(0x5,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

loc_8c03f294:
	mov.l @(0xE8,PC),r4
	mov.l @r4,r3
	mov.w @(0xE,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xE,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f2b2
	mov.l @r4,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	mov 0x10,r0
	mov.l @r4,r3
	mov.w r0,@(0xE,r3)

loc_8c03f2b2:
	rts
	nop

loc_8c03f2b6:
	mov.l r14,@-r15

loc_8c03f2b8:
	mov.l @(0xC4,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0xE,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xE,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f2f4
	mov.l @r14,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	mov.w @(0xA4,PC),r0
	mov.l @r14,r3
	mov.w r0,@(0xE,r3)
	mov.l @(0xAC,PC),r3
	jsr @r3
	nop
	mov.l @(0xAC,PC),r2
	jsr @r2
	nop
	mov.l @(0xAC,PC),r3
	mov.l @(0xA8,PC),r4
	mov.w @(0x8E,PC),r5
	jsr @r3
	mov 0x00,r6
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c03f2f4:
	mov.w @(0x84,PC),r0
	mov 0x01,r3
	mov.l @r14,r4
	mov.b @(r0,r4),r4
	tst r4,r3
	bt loc_8c03f30c
	mov.l @(0x98,PC),r1
	mov.l @(0x9C,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c03f31e

loc_8c03f30c:
	mov 0x02,r0
	tst r4,r0
	bt loc_8c03f324
	mov.l @(0x90,PC),r2
	mov.l @(0x88,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bt loc_8c03f324

loc_8c03f31e:
	lds.l @r15+,pr
	bra loc_8c03f81c
	mov.l @r15+,r14

loc_8c03f324:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03f32a:
	mov.l @(0x54,PC),r4
	mov.l @r4,r3
	mov.w @(0xE,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xE,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f348
	mov.l @r4,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	mov 0x18,r0
	mov.l @r4,r3
	mov.w r0,@(0xE,r3)

loc_8c03f348:
	mov.w @(0x30,PC),r0
	mov 0x01,r3
	mov.l @r4,r5
	mov.b @(r0,r5),r5
	tst r5,r3
	bt loc_8c03f360
	mov.l @(0x44,PC),r1
	mov.l @(0x48,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c03f372

loc_8c03f360:
	mov 0x02,r0
	tst r5,r0
	bt loc_8c03f376
	mov.l @(0x3C,PC),r2
	mov.l @(0x34,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bt loc_8c03f376

loc_8c03f372:
	bra loc_8c03f81c
	nop

loc_8c03f376:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x01e0
	#data 0x0084
	#align4
	#data 0x8c26823c
	#data bank14.loc_8c14db68
	#data bank0f.loc_8c0f9924
	#data bank0f.loc_8c0fa2ec
	#data 0xff000000
	#data loc_8c0355b2
	#data bank04.loc_8c04255a
	#data 0x8c2681dc
	#data 0x00008000
	#data 0x8c2681f0

;==============================================
loc_8c03f3a8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x54,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf.s loc_8c03f414
	mov 0x01,r12
	mov.l @r13,r2
	mov 0x01,r6
	mov.l @(0x34,PC),r4
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	mov 0x20,r0
	mov.l @r13,r3
	mov r0,r5
	mov.l @(0x28,PC),r2
	mov.w r0,@(0x8,r3)
	mov.l @(0x1C,PC),r3
	mov.b r12,@r3
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26823c
	#data 0x8c28c4a6
	#data 0xff000000
	#data loc_8c0355b2

;----------------------------------------------
loc_8c03f414:
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	mov.w @(0xE0,PC),r3
	cmp/eq r3,r0
	bf loc_8c03f430
	mov.l @(0xEC,PC),r1
	jsr @r1
	nop
	mov.l @(0xE8,PC),r2
	jsr @r2
	nop
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x14,r4

loc_8c03f430:
	mov.l @(0xE4,PC),r2
	jsr @r2
	nop
	mov.l @r13,r3
	mov.w @(0xC,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xC,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f492
	mov.l @(0xD4,PC),r14
	mov.l @r13,r2
	mov.l @r14,r0
	mov.w @(0xB0,PC),r3
	mov.b @r0,r0
	extu.b r0,r0
	mov.w r0,@(0xC,r2)
	exts.w r0,r0
	cmp/eq r3,r0
	bt loc_8c03f492
	mov.l @r13,r1
	mov 0x3C,r2
	mov.w @(0xC,r1),r0
	muls.w r2,r0
	sts macl,r0
	mov.w r0,@(0xC,r1)
	mov.l @r14,r1
	mov.b @(0x1,r1),r0
	tst r0,r0
	bt loc_8c03f47a
	mov.l @(0xB0,PC),r1
	mov.b r12,@r1
	mov.l @r14,r3
	mov.b @(0x1,r3),r0

loc_8c03f474:
	mov.l @(0xAC,PC),r3
	add 0x0D,r0
	mov.b r0,@r3

loc_8c03f47a:
	mov.l @r14,r2
	mov.w @(0x80,PC),r4
	mov.b @(0x3,r2),r0
	mov r2,r3
	mov r0,r5
	mov.b @(0x2,r3),r0
	extu.b r0,r0
	bsr loc_8c03fad0
	add r0,r4
	mov.l @r14,r2
	add 0x04,r2
	mov.l r2,@r14

loc_8c03f492:
	mov.l @(0x94,PC),r14
	mov.l @r14,r3
	mov.b @r3,r2
	mov.w @(0x62,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c03f4a4
	bra loc_8c03f5a4
	nop

loc_8c03f4a4:
	mov.l @r13,r1
	mov.w @(0xE,r1),r0
	add 0xFF,r0
	mov.w r0,@(0xE,r1)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f5a8
	mov.l @r13,r1
	mov 0x20,r0
	mov.l @(0x78,PC),r9
	mov.w r0,@(0xE,r1)
	mova @(0x70,PC),r0
	mov.l @r14,r2
	mov.b @r2,r1
	mov.w @(0x3E,PC),r2
	extu.b r1,r1
	cmp/eq r2,r1
	bf.s loc_8c03f4cc
	fmov @r0,fr15
	mov.b r12,@r9

loc_8c03f4cc:
	mov.l @r14,r3
	mov.b @r3,r2
	mov.w @(0x30,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c03f4dc
	mov 0x00,r1
	mov.b r1,@r9

loc_8c03f4dc:
	mov.l @r14,r3
	mov.l @(0x54,PC),r11
	mov.b @r3,r2
	mov.w @(0x20,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c03f4ec
	mov.b r12,@r11

loc_8c03f4ec:
	mova @(0x48,PC),r0
	mov.w @(0x16,PC),r10
	fmov @r0,fr13
	mova @(0x48,PC),r0
	fldi1 fr12
	fneg fr12
	bra loc_8c03f566
	fmov @r0,fr14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00dc
	#data 0x00ff
	#data 0x0910
	#data 0x00fe
	#data 0x00fd
	#data 0x00fc
	#data 0x00f0
	#align4
	#data bank04.loc_8c04182e
	#data bank04.loc_8c04185e
	#data bank04.loc_8c041a90
	#data loc_8c030e3a
	#data 0x8c28c4a0
	#data 0x8c26a960
	#data 0x8c26a961
	#data 0x8c28c49c
	#data 0x43980000
	#data 0x8c28c4a4
	#data 0x8c28c4a7
	#data 0x42000000
	#data 0x41800000

;==============================================
loc_8c03f540:
	mov.l @r14,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c03f554
	mov.l @r14,r4
	fmov fr15,fr4
	fmov fr12,fr5
	bsr loc_8c03f880
	mov.b @r4,r4

loc_8c03f554:
	mov.b @r11,r3
	tst r3,r3
	bf.s loc_8c03f560
	mov.l @r14,r2
	bra loc_8c03f562
	fadd fr14,fr15

loc_8c03f560:
	fadd fr13,fr15

loc_8c03f562:
	add 0x01,r2
	mov.l r2,@r14

loc_8c03f566:
	mov.l @r14,r3
	mov.b @r3,r2
	extu.b r2,r2
	cmp/ge r10,r2
	bf loc_8c03f540
	mov.l @r14,r2
	mov.b @r2,r3
	mov.w @(0xC0,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c03f57e
	mov.b r12,@r9

loc_8c03f57e:
	mov.l @r14,r2
	mov.b @r2,r3
	mov.w @(0xB4,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c03f58e
	mov 0x00,r1
	mov.b r1,@r9

loc_8c03f58e:
	mov.l @r14,r3
	mov.b @r3,r2
	mov.w @(0xA6,PC),r3

loc_8c03f594:
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c03f59c
	mov.b r12,@r11

loc_8c03f59c:
	mov.l @r14,r3
	add 0x01,r3
	bra loc_8c03f5a8
	mov.l r3,@r14

loc_8c03f5a4:
	mov.l @(0x9C,PC),r1
	mov.b r12,@r1

loc_8c03f5a8:
	mov.w @(0x92,PC),r0
	mov.l @r13,r4
	mov.b @(r0,r4),r4
	tst r4,r12
	bt loc_8c03f5be
	mov.l @(0x94,PC),r2
	mov.l @(0x94,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bf loc_8c03f5d0

loc_8c03f5be:
	mov 0x02,r0
	tst r4,r0
	bt loc_8c03f5e8
	mov.l @(0x88,PC),r2
	mov.l @(0x84,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bt loc_8c03f5e8

loc_8c03f5d0:
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c03f81c
	mov.l @r15+,r14

loc_8c03f5e8:
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03f600:
	mov.l @(0x50,PC),r4
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f632
	mov.l @r4,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	mov.w @(0x22,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.l @(0x34,PC),r3
	jsr @r3
	nop
	mov.l @(0x34,PC),r4
	mov 0x00,r6
	mov.l @(0x34,PC),r2
	mov 0x20,r5
	jmp @r2
	lds.l @r15+,pr

loc_8c03f632:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00fe
	#data 0x00fd
	#data 0x00fc
	#data 0x0084
	#data 0x00f0
	#align4
	#data 0x8c28c4a5
	#data 0x8c2681dc
	#data 0x00008000
	#data 0x8c2681f0
	#data 0x8c26823c
	#data bank04.loc_8c044d8c
	#data 0xff000000
	#data loc_8c0355b2

;==============================================
loc_8c03f664:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0xF0,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f692
	mov.l @r13,r2
	mov 0x07,r0
	mov.b r0,@(0x5,r2)
	mov 0x78,r0
	mov.l @r13,r3
	mov.w r0,@(0x8,r3)
	bsr loc_8c040194
	nop
	bra loc_8c03f6ca
	nop

loc_8c03f692:
	mov.l @r13,r0
	mov 0x29,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c03f6a2
	mov.l @(0xC0,PC),r14
	bra loc_8c03f6a4
	nop

loc_8c03f6a2:
	mov.l @(0xC0,PC),r14

loc_8c03f6a4:
	mov.l @(0xC0,PC),r11
	bra loc_8c03f6b0
	mov 0x64,r12

loc_8c03f6aa:
	jsr @r11
	mov r14,r4
	add 0x40,r14

loc_8c03f6b0:
	mov.b @r14,r2
	extu.b r2,r2
	cmp/ge r12,r2
	bf loc_8c03f6aa
	mov.l @r13,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x28,r0
	bf loc_8c03f6ca
	mov.l @(0xAC,PC),r2
	mov 0x01,r6
	mov.l @(0xA4,PC),r4
	jsr @r2
	mov 0x20,r5

loc_8c03f6ca:
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03f6d8:
	mov.l r14,@-r15
	mov.l @(0x80,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f6fe
	mov.l @r14,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov 0x00,r0
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	bra loc_8c03f71c
	nop

loc_8c03f6fe:
	mov.l @(0x78,PC),r2
	mov 0x24,r5
	mov.l @(0x78,PC),r3
	mov 0x10,r6
	mov.l r2,@-r15
	jsr @r3
	mov 0x30,r4
	mov.l @(0x70,PC),r2
	mov 0x2E,r5
	mov.l @(0x68,PC),r3
	mov 0x10,r6
	mov.l r2,@-r15
	jsr @r3
	mov 0x3C,r4
	add 0x08,r15

loc_8c03f71c:
	mov.l @(0x54,PC),r2
	jsr @r2
	nop
	mov.w @(0x32,PC),r0
	mov 0x01,r3
	mov.l @r14,r4
	mov.b @(r0,r4),r4
	tst r4,r3
	bt loc_8c03f73a
	mov.l @(0x54,PC),r1
	mov.l @(0x54,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c03f74c

loc_8c03f73a:
	mov 0x02,r0
	tst r4,r0
	bt loc_8c03f752
	mov.l @(0x48,PC),r2
	mov.l @(0x44,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bt loc_8c03f752

loc_8c03f74c:
	lds.l @r15+,pr
	bra loc_8c03f7c6
	mov.l @r15+,r14

loc_8c03f752:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0084
	#align4
	#data 0x8c26823c
	#data bank13.loc_8c136400
	#data bank13.loc_8c1361c0
	#data loc_8c031152
	#data 0xff000000
	#data loc_8c0355b2
	#data loc_8c030e3a
	#data bank13.loc_8c138868
	#data loc_8c0395c6
	#data bank13.loc_8c138880
	#data 0x8c2681dc
	#data 0x00008000
	#data 0x8c2681f0

;==============================================
loc_8c03f790:
	mov.l @(0xC4,PC),r4
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f7c0
	mov.l @r4,r2
	mov 0x06,r0
	mov.b r0,@(0x5,r2)
	mov.w @(0xAA,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	bsr loc_8c03ffe4
	nop
	bsr loc_8c0400ce
	nop
	mov.l @(0xA8,PC),r3
	mov 0x00,r6
	mov.l @(0xA0,PC),r4
	jsr @r3
	mov 0x02,r5

loc_8c03f7c0:
	mov.l @(0xA0,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c03f7c6:
	mov.l @(0x90,PC),r4
	mov 0x05,r0
	sts.l pr,@-r15
	mov.l @r4,r3
	mov 0x00,r5
	mov.b r0,@(0x2,r3)
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov.b r0,@(0x4,r3)
	mov.l @r4,r3
	mov.b r0,@(0x5,r3)
	mov.l @r4,r3
	mov.b r0,@(0x6,r3)
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w r0,@(0xA,r3)
	mov.l @r4,r3
	mov.w r0,@(0xC,r3)
	mov.l @r4,r3
	mov.w r0,@(0xE,r3)
	mov.l @(0x70,PC),r3
	jsr @r3
	nop
	mov.l @(0x6C,PC),r2
	jsr @r2
	mov 0x0F,r4
	mov.l @(0x6C,PC),r3
	mov.l @(0x54,PC),r4
	jsr @r3
	nop
	mov.l @(0x68,PC),r2
	jsr @r2
	nop
	mov.l @(0x64,PC),r3
	jsr @r3
	nop
	mov.l @(0x64,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c03f81c:
	mov.l @(0x38,PC),r4
	mov 0x05,r0
	sts.l pr,@-r15
	mov.l @r4,r3
	mov 0x00,r6
	mov.b r0,@(0x5,r3)
	mov.w @(0x2A,PC),r0
	mov.l @r4,r3
	mov.l @(0x2C,PC),r4
	mov.w r0,@(0x8,r3)
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov 0x20,r5
	mov.l @(0x30,PC),r2
	jsr @r2
	nop
	mov.l @(0x30,PC),r3
	mov.l @(0x1C,PC),r4
	jsr @r3
	nop
	mov.l @(0x2C,PC),r2
	jsr @r2
	nop
	mov.l @(0x2C,PC),r3
	jsr @r3
	nop
	mov.l @(0x28,PC),r2
	jmp @r2
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00f0
	#align4
	#data 0x8c26823c
	#data 0xff000000
	#data loc_8c0355b2
	#data loc_8c030e3a
	#data bank04.loc_8c044d8c
	#data loc_8c032be0
	#data bank02.loc_8c02dc1c
	#data bank04.loc_8c04182e
	#data bank04.loc_8c04185e
	#data bank04.loc_8c041ecc

;==============================================
loc_8c03f880:
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r0
	nop
	mov.b r0,@(0x4,r15)
	mov 0x08,r0
	mov.l @(0x10C,PC),r3
	mov 0x06,r5
	mov 0x01,r6
	fmov fr4,@r15
	fmov fr5,@(r0,r15)
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c03f922
	mov r0,r4
	mov.w @(0xE6,PC),r0
	mov 0x00,r5
	mov 0x20,r1
	mov.l @(0xF8,PC),r3
	mov.b r5,@(r0,r4)
	add r4,r1
	mov.b @(0x4,r15),r0
	mov.l @(0xFC,PC),r6
	mov.b r0,@r1
	mov.l @(0xF0,PC),r1
	mov.l r3,@(0x10,r4)
	mov.b @r1,r2
	mov.w @(0xD0,PC),r3
	mov.w @(0xD0,PC),r0
	extu.b r2,r2
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x10,r2
	mov.w @(0xC8,PC),r0
	add r6,r2
	fmov @r15,fr3
	fmov fr3,@(r0,r4)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov.w @(0xBE,PC),r0
	fmov fr3,@(r0,r4)
	add 0xFC,r0
	fmov @(r0,r4),fr2
	fmov @r2,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x04,r0
	mov 0x14,r2
	fmov @(r0,r4),fr2
	add r6,r2
	fmov @r2,fr3
	mov 0x02,r3
	mov 0x05,r2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov.w @(0x9C,PC),r0
	fmov fr3,@(r0,r4)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov.w @(0x96,PC),r0
	fmov fr3,@(r0,r4)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov.w @(0x90,PC),r0
	fmov fr3,@(r0,r4)
	add 0x14,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	add 0x04,r0
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov.l r2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)

loc_8c03f922:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03f92a:
	mov.l r14,@-r15
	mova @(0x8C,PC),r0
	fmov fr15,@-r15
	mov r4,r14
	fmov fr14,@-r15
	sts.l pr,@-r15
	fmov @r0,fr14
	mova @(0x7C,PC),r0
	fmov @r0,fr15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bt loc_8c03f946
	bra loc_8c03fa3a
	nop

loc_8c03f946:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr6
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x26,r0
	bt loc_8c03f976
	cmp/eq 0x2D,r0
	bt loc_8c03f97a
	cmp/eq 0x2E,r0
	bt loc_8c03f980
	cmp/eq 0x21,r0

loc_8c03f968:
	bt loc_8c03f984
	cmp/eq 0x28,r0
	bt loc_8c03f9cc
	cmp/eq 0x29,r0
	bt loc_8c03f9d0
	bra loc_8c03f9d8
	nop

loc_8c03f976:
	bra loc_8c03f9d4
	fmov fr15,fr4

loc_8c03f97a:
	mova @(0x48,PC),r0
	bra loc_8c03f9d4
	fmov @r0,fr4

loc_8c03f980:
	bra loc_8c03f9d4
	fmov fr14,fr4

loc_8c03f984:
	mova @(0x40,PC),r0
	bra loc_8c03f9d4
	fmov @r0,fr4

;##############################################
	#data 0x012c
	#data 0x0912
	#data 0x00dc
	#data 0x00e0
	#data 0x00e4
	#data 0x00e8
	#data 0x00ec
	#data 0x00f0
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c03f92a
	#data 0x8c28c4a4
	#data 0x43f80000
	#data 0x8c212bfc
	#data 0x3f8ccccd
	#data 0x3e000000
	#data 0x3e800000
	#data 0x3f000000
	#data 0x3f400000
	#data 0x3ec00000
	#data 0x3f200000

;==============================================
loc_8c03f9cc:
	bra loc_8c03f9d4
	fmov fr6,fr4

loc_8c03f9d0:
	mova @(0xD4,PC),r0
	fmov @r0,fr4

loc_8c03f9d4:
	bra loc_8c03fa08
	fmov fr6,fr5

loc_8c03f9d8:
	mov 0x20,r0
	mov.b @(r0,r14),r4
	mov 0x07,r3
	mova @(0xCC,PC),r0
	extu.b r4,r4
	fmov @r0,fr2
	add 0xBF,r4
	and r4,r3
	shll2 r3
	shll r3
	lds r3,fpul
	shar r4
	shar r4
	shar r4
	float fpul,fr3
	shll2 r4
	lds r4,fpul
	mova @(0xB4,PC),r0
	fmov @r0,fr1
	fmov fr3,fr4
	float fpul,fr3
	fdiv fr2,fr4
	fmov fr3,fr5
	fdiv fr1,fr5

loc_8c03fa08:
	mov.w @(0x90,PC),r0
	mov.l @(0xAC,PC),r2
	fmov fr4,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr6
	mov.w @(0x88,PC),r0
	fadd fr6,fr4
	fmov fr4,@(r0,r14)
	add 0xFC,r0
	fmov fr5,@(r0,r14)
	fadd fr15,fr5
	add 0x08,r0
	fmov fr5,@(r0,r14)
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c03fa32
	mov.w @(0x74,PC),r0
	fmov fr6,@(r0,r14)
	add 0x04,r0
	bra loc_8c03fa3a
	fmov fr15,@(r0,r14)

loc_8c03fa32:
	mov.w @(0x6A,PC),r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr14,@(r0,r14)

loc_8c03fa3a:
	mov.l @(0x80,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c03fa50
	mov 0x60,r1
	mov.w @(0x5A,PC),r0
	add r14,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c03fa50:
	mov.l @(0x6C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c03fa78
	mov.l @(0x68,PC),r1
	mov.w @(0x46,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c03fa78
	mov.l @(0x54,PC),r1
	jsr @r1
	mov r14,r4

loc_8c03fa78:
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov.w @(0x22,PC),r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c03fa92
	lds.l @r15+,pr
	mov.l @(0x40,PC),r2
	mov r14,r4
	fmov @r15+,fr14
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

loc_8c03fa92:
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00f4
	#data 0x00fc
	#data 0x00ec
	#data 0x00e4
	#data 0x0108
	#align4
	#data 0x3f600000
	#data 0x42800000
	#data 0x41800000
	#data 0x3e000000
	#data 0x8c28c4a7
	#data 0x8c28c4a5
	#data 0x8c28c4a6
	#data 0x3d000000
	#data bank04.loc_8c0450c0
	#data 0xc2400000

;==============================================
loc_8c03fad0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x158,PC),r3
	mov 0x06,r5
	mov.b r0,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c03fb54
	mov r0,r4
	mov.w @(0x132,PC),r0
	mov 0x00,r5
	mov 0x21,r1
	mov.l @(0x14C,PC),r6
	mov.b r5,@(r0,r4)
	add r4,r1
	mov.b @(0x4,r15),r0
	mov.l @(0x13C,PC),r3
	mov.b r0,@r1
	mov 0x10,r1
	mov.w @(0x120,PC),r0
	add r6,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(r0,r4)
	mova @(0x130,PC),r0
	fmov @r0,fr3
	mov.w @(0x114,PC),r0
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	add 0xFC,r0
	fmov @r1,fr3
	mov 0x14,r1
	fmov @(r0,r4),fr2
	add r6,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x04,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	mov 0x02,r3
	mov.w @(0xF6,PC),r2
	fmov fr2,@(r0,r4)
	mova @(0x10C,PC),r0
	fmov @r0,fr3
	mov.w @(0xEC,PC),r0
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	fadd fr3,fr3
	add 0x04,r0
	fmov fr3,@(r0,r4)
	add 0x14,r0
	mov.l r5,@(r0,r4)
	add 0x08,r0
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov.l r2,@(r0,r4)

loc_8c03fb54:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03fb5c:
	mov 0x21,r0
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
loc_8c03fb70:
	mov r4,r3
	mov.l @(0xD8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c03fb82:
	mov.b @(0x4,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x9A,PC),r0
	mov.w r0,@(0x1E,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov.w @(0x90,PC),r0
	fmov fr3,@(r0,r4)
	add 0xFC,r0
	fmov fr4,@(r0,r4)
	add 0x08,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	add 0x08,r0
	rts
	fmov fr4,@(r0,r4)

;==============================================
loc_8c03fbae:
	mov.l @(0xA4,PC),r1
	mov.w @(0x7C,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03fbd2
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x60,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03fbd2:
	rts
	nop

;==============================================
loc_8c03fbd6:
	mov.l @(0x80,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c03fbe8
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x20,r0
	mov.w r0,@(0x1C,r4)

loc_8c03fbe8:
	rts
	nop

;==============================================
loc_8c03fbec:
	mov.l @(0x6C,PC),r1
	mov.w @(0x3E,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03fc0c
	mov.l @(0x58,PC),r3
	jmp @r3
	nop

loc_8c03fc0c:
	rts
	nop

;==============================================
loc_8c03fc10:
	mov r4,r3
	mov.l @(0x50,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15
  
;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x00dc
	#data 0x00e0
	#data 0x00e8
	#data 0x1005
	#data 0x00f0
	#data 0x00fc
	#data 0x0108
	#data 0x04b0
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c03fb5c
	#data 0x42000000
	#data 0x8c212bfc
	#data 0x3f8ccccd
	#data bank14.loc_8c14db88
	#data bank14.loc_8c14dba0
	#data 0x3f700000
	#data 0x3d800000
	#data 0x8c28c4a6
	#data 0x3d000000
	#data bank04.loc_8c0450c0
	#data bank14.loc_8c14dbb0

;==============================================
loc_8c03fc68:
	mov.b @(0x4,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x20,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x126,PC),r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x124,PC),r0
	fmov fr4,@(r0,r4)
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mov.w @(0x11E,PC),r0
	fmov fr3,@(r0,r4)
	add 0xFC,r0
	fmov fr4,@(r0,r4)
	add 0x08,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	add 0x08,r0
	rts
	fmov fr4,@(r0,r4)

loc_8c03fc94:
	mov.l @(0x118,PC),r1
	mov.w @(0x10A,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst 0x02,r0
	bt loc_8c03fcb2
	bra loc_8c03fcb6
	fldi0 fr2

loc_8c03fcb2:
	mova @(0x100,PC),r0

loc_8c03fcb4:
	fmov @r0,fr2

loc_8c03fcb6:
	mov.w @(0xEC,PC),r0
	mov.l @(0xFC,PC),r3
	fmov fr2,@(r0,r4)
	fmov @(r0,r4),fr2
	fmov @r3,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03fcda
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xCE,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03fcda:
	rts
	nop

loc_8c03fcde:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst 0x02,r0
	bt loc_8c03fcee
	bra loc_8c03fcf2
	fldi0 fr3

loc_8c03fcee:
	mova @(0xC4,PC),r0
	fmov @r0,fr3

loc_8c03fcf2:
	mov.w @(0xB0,PC),r0
	mov.l @(0xC0,PC),r3
	fmov fr3,@(r0,r4)
	fmov @(r0,r4),fr2
	fmov @r3,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03fd16
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)

loc_8c03fd16:
	rts
	nop

;==============================================
loc_8c03fd1a:
	mov.l @(0xA0,PC),r1
	mov.w @(0x84,PC),r0
	lds r1,fpul

loc_8c03fd20:
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2

loc_8c03fd26:
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst 0x02,r0
	bt loc_8c03fd38
	bra loc_8c03fd3c
	fldi0 fr2

loc_8c03fd38:
	mova @(0x78,PC),r0
	fmov @r0,fr2

loc_8c03fd3c:
	mov.w @(0x66,PC),r0
	mov.l @(0x78,PC),r3
	fmov fr2,@(r0,r4)
	fmov @(r0,r4),fr2
	fmov @r3,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03fd5c
	mov.l @(0x68,PC),r2
	jmp @r2
	nop

loc_8c03fd5c:
	rts
	nop

loc_8c03fd60:
	mov r4,r3
	mov.l @(0x60,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c03fd72:
	mov.b @(0x4,r4),r0
	fldi1 fr5
	add 0x01,r0
	fldi0 fr4
	mov.b r0,@(0x4,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x26,PC),r0
	mov.w r0,@(0x1E,r4)
	mova @(0x34,PC),r0
	fmov @r0,fr3
	mov.w @(0x14,PC),r0
	fmov fr3,@(r0,r4)
	add 0x08,r0
	fmov fr5,@(r0,r4)
	add 0xFC,r0
	fmov fr4,@(r0,r4)
	add 0x08,r0
	fmov fr5,@(r0,r4)
	add 0x08,r0
	rts
	fmov fr4,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0278
	#data 0x00f4
	#data 0x00fc
	#data 0x0108
	#data 0x00e4
	#data 0x0248
	#data 0x0168
	#align4
	#data 0x3f700000
	#data 0x3d000000
	#data 0xc0000000
	#data 0x8c212c10
	#data 0x3d800000
	#data bank04.loc_8c0450c0
	#data bank14.loc_8c14dbc0

;==============================================
loc_8c03fdc8:
	mova @(0x154,PC),r0
	fmov @r0,fr4
	mov.w @(0x144,PC),r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	add 0x08,r0
	fmov @(r0,r4),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03fdf2
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x124,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03fdf2:
	rts
	nop

;==============================================
loc_8c03fdf6:
	mov r4,r3
	mov.l @(0x128,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c03fe08:
	mov.b @(0x4,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x100,PC),r0
	mov.w r0,@(0x1E,r4)
	add 0x8C,r0
	fmov fr4,@(r0,r4)
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mov.w @(0xF6,PC),r0
	fmov fr3,@(r0,r4)
	add 0xFC,r0
	fmov fr4,@(r0,r4)
	add 0x08,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	add 0x08,r0
	rts
	fmov fr4,@(r0,r4)

loc_8c03fe34:
	mova @(0xE8,PC),r0
	fmov @r0,fr4
	mov.w @(0xD8,PC),r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	add 0x08,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03fe5e
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xB8,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03fe5e:
	rts
	nop

loc_8c03fe62:
	mov r4,r3
	mov.l @(0xC4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c03fe74:
	mov.b @(0x4,r4),r0
	mov.l @(0xB8,PC),r1
	add 0x01,r0
	fldi0 fr4
	mov.b r0,@(0x4,r4)

loc_8c03fe7e:
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x92,PC),r0
	lds r1,fpul
	mov.w r0,@(0x1E,r4)
	mov.w @(0x90,PC),r0
	fsts fpul,fr3
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x10,r0
	fmov fr4,@(r0,r4)
	mova @(0x90,PC),r0
	fmov @r0,fr2
	mov.w @(0x7C,PC),r0
	fmov fr2,@(r0,r4)
	add 0xFC,r0
	fmov fr4,@(r0,r4)
	add 0x08,r0
	fldi1 fr2
	fmov fr2,@(r0,r4)
	add 0x08,r0
	rts
	fmov fr4,@(r0,r4)

;==============================================
loc_8c03feae:
	mov.l @(0x84,PC),r1
	mov.w @(0x68,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03fed2
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x44,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03fed2:
	rts
	nop

;==============================================
loc_8c03fed6:
	mov r4,r3
	mov.l @(0x5C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c03fee8:
	mov.b @(0x4,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x20,PC),r0
	mov.w r0,@(0x1E,r4)
	add 0x8C,r0
	fmov fr4,@(r0,r4)
	mova @(0x28,PC),r0
	fmov @r0,fr3
	mov.w @(0x16,PC),r0
	fmov fr3,@(r0,r4)
	add 0xFC,r0
	fmov fr4,@(r0,r4)
	add 0x08,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	add 0x08,r0
	rts
	fmov fr4,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00f4
	#data 0x00f0
	#data 0x0168
	#data 0x00fc
	#data 0x00e4
	#align4
	#data 0x3a088889
	#data bank14.loc_8c14dbd8
	#data 0x3f700000
	#data bank14.loc_8c14dbf0
	#data 0x42000000
	#data 0x3e888889
	#data bank14.loc_8c14dc08

;==============================================
loc_8c03ff3c:
	mov.l @(0x120,PC),r1
	mov.w @(0x114,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03ff60
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xF8,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03ff60:
	rts
	nop

loc_8c03ff64:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03ff7a
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x78,r0
	mov.w r0,@(0x1C,r4)

loc_8c03ff7a:
	rts
	nop

loc_8c03ff7e:
	mov.w @(0x1C,r4),r0

loc_8c03ff80:
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03ff94
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)

loc_8c03ff94:
	rts
	nop

;==============================================
loc_8c03ff98:
	mov.l @(0xC8,PC),r1
	mov.w @(0xBC,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03ffbc
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x01,r0
	mov.w r0,@(0x1C,r4)

loc_8c03ffbc:
	rts
	nop

loc_8c03ffc0:
	mov.l @(0xA0,PC),r1
	mov.w @(0x94,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03ffe0
	mov.l @(0x8C,PC),r3
	jmp @r3
	nop

loc_8c03ffe0:
	rts
	nop

loc_8c03ffe4:
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c04003a
	mov r0,r4
	mov.w @(0x62,PC),r0
	mov 0x01,r3
	mov.l @(0x78,PC),r1

loc_8c03fffc:
	mov.l @(0x70,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x5C,r0

loc_8c040002:
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	fldi0 fr4
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x28,r0
	mov.w @(0x4C,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mova @(0x54,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	mov 0x58,r0
	fmov fr3,@(r0,r4)

loc_8c04003a:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c040040:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c040084
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r0
	mov.b r0,@(0x5,r4)
	mov 0x64,r0
	bra loc_8c0400ca
	mov.w r0,@(0x1C,r4)

;##############################################
	#data 0x00e4
	#data 0x00f0
	#data 0x0108
	#data 0x012c
	#data 0x0811
	#align4
	#data 0x3e888889
	#data 0x3d800000
	#data bank04.loc_8c0450c0
	#data bank04.loc_8c044f12
	#data loc_8c040040
	#data 0x8c26a920
	#data 0xbf000000
	#data 0x3cf5c28f
	#data 0x3c23d70a

;----------------------------------------------
loc_8c040084:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c0400b8
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0400ac
	mova @(0xDC,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fsub fr4,fr2
	bra loc_8c0400ca
	fmov fr2,@(r0,r4)

loc_8c0400ac:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xAE,PC),r0
	bra loc_8c0400ca
	mov.w r0,@(0x1C,r4)

loc_8c0400b8:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0400ca
	mov.l @(0xB0,PC),r3
	jmp @r3
	nop

loc_8c0400ca:
	rts
	nop

loc_8c0400ce:
	sts.l pr,@-r15
	mov.l @(0xA8,PC),r3
	mov 0x06,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c040126
	mov r0,r4
	mov.w @(0x82,PC),r0
	mov 0x00,r5
	mov 0x02,r6
	fldi0 fr4
	mov.b r5,@(r0,r4)
	add 0xB0,r0
	mov.l @(0x90,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l r6,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov.w @(0x66,PC),r0
	mov.w @(0x6A,PC),r3
	fmov fr3,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov.w @(0x5E,PC),r0
	fmov fr3,@(r0,r4)
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov.w @(0x58,PC),r0
	fmov fr3,@(r0,r4)
	add 0x14,r0
	mov.l r5,@(r0,r4)
	add 0x08,r0
	mov.l r6,@(r0,r4)
	add 0x04,r0
	mov.l r3,@(r0,r4)
	add 0xF8,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)

loc_8c040126:
	lds.l @r15+,pr
	rts
	nop

loc_8c04012c:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c04013e
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x3C,r0
	bra loc_8c040160
	mov.w r0,@(0x1C,r4)

loc_8c04013e:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c04015a
	mov.l @(0x44,PC),r1
	mov.w @(0x20,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	bra loc_8c040160
	fmov fr2,@(r0,r4)

loc_8c04015a:
	mov.l @(0x1C,PC),r2
	jmp @r2
	nop

loc_8c040160:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x01e0
	#data 0x012c
	#data 0x00e8
	#data 0x00ec
	#data 0x00f0
	#data 0x1005
	#data 0x0108
	#align4
	#data 0x3951b717
	#data bank04.loc_8c0450c0
	#data bank04.loc_8c044f12
	#data loc_8c04012c
	#data 0x3ecccccd
	#data 0x41a00000
	#data 0x41700000
	#data 0x3c888889

;------------------------------------------------------------------------------
loc_8c040194:
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0401ea
	mov r0,r4
	mov.w @(0x78,PC),r0
	mov 0x01,r3
	mov.l @(0x84,PC),r1
	mov.l @(0x7C,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x60,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	fldi0 fr4
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x24,r0
	mov.w @(0x62,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x58,r0
	fmov fr3,@(r0,r4)

loc_8c0401ea:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0401f0:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c040202
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x78,r0
	bra loc_8c04021e
	mov.w r0,@(0x1C,r4)

loc_8c040202:
	mov.l @(0x3C,PC),r3
	mov.l @r3,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bt loc_8c04021e
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c04021e
	mov.l @(0x28,PC),r3
	jmp @r3
	nop

loc_8c04021e:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0811
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c0401f0
	#data 0x8c26a920
	#data 0xbf000000
	#data 0x3dcccccd
	#data 0x3c23d70a
	#data 0x8c26823c
	#data bank04.loc_8c0450c0

