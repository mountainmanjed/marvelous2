;==============================================
loc_8c03012c:
	mov.l @(loc_8c030190,PC),r2
	mov 0x00,r3
	sts.l pr,@-r15
	mov.w r3,@r2
	mov.l @(loc_8c030198,PC),r2
	mov.l @(loc_8c030194,PC),r1
	mov.l @(loc_8c03019c,PC),r0
	mov.w r3,@r1
	mov.w r3,@r2
	mov.l @(loc_8c0301a0,PC),r2
	jsr @r2
	mov.w r3,@r0
	mov.l @(loc_8c0301a4,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c0301a8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0301ac,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c0301b0,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c03015c:
	mov.l @(loc_8c03019c,PC),r4
	mov.w @(loc_8c030186,PC),r3
	mov.w @r4,r2
	add r3,r2
	mov.w @(loc_8c03018c,PC),r3
	mov.w r2,@r4
	mov.l @(loc_8c030198,PC),r4
	mov.w @(loc_8c030188,PC),r2
	mov.w @r4,r1
	add r2,r1
	mov.w r1,@r4
	mov.l @(loc_8c030194,PC),r4
	mov.w @(loc_8c03018a,PC),r1
	mov.w @r4,r0
	add r1,r0
	mov.w r0,@r4
	mov.l @(loc_8c030190,PC),r4
	mov.w @r4,r0
	add r3,r0
	rts
	mov.w r0,@r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c030186:
	#data 0x1000
loc_8c030188:
	#data 0x0800
loc_8c03018a:
	#data 0x0400
loc_8c03018c:
	#data 0x0200
	#align4
loc_8c030190:
	#data 0x8c289bd6
loc_8c030194:
	#data 0x8c289bd4
loc_8c030198:
	#data 0x8c289bd2
loc_8c03019c:
	#data 0x8c289bd0
loc_8c0301a0:
	#data bank0f.loc_8c0f0408
loc_8c0301a4:
	#data bank0f.loc_8c0f048e
loc_8c0301a8:
	#data bank0f.loc_8c0f1410
loc_8c0301ac:
	#data bank0f.loc_8c0f1698
loc_8c0301b0:
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
	mov.l @(loc_8c030220,PC),r0
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
	mov.l @(loc_8c030224,PC),r3
	mov r4,r14
	mov.b r5,@r15
	jsr @r3
	mov 0x00,r4
	mov.w @(loc_8c03021e,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c03022c
	mov.l @(loc_8c030228,PC),r3
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030232
	nop

;##############################################
loc_8c03021e:
	#data 0x00c8
	#align4
loc_8c030220:
	#data 0x8c287a5c
loc_8c030224:
	#data bank12.loc_8c120950
loc_8c030228:
	#data bank12.loc_8c1201e0

;----------------------------------------------
loc_8c03022c:
	mov.l @(loc_8c0302b0,PC),r3
	jsr @r3
	nop

loc_8c030232:
	mov.w @(loc_8c0302a8,PC),r0
	mov.w @(loc_8c0302a6,PC),r3
	mov.l @(r0,r14),r2
	tst r3,r2
	bt loc_8c030244
	mov.l @(loc_8c0302b4,PC),r2
	mov.w @(loc_8c0302aa,PC),r4
	jsr @r2
	add r14,r4

loc_8c030244:
	mov.l @(loc_8c0302b8,PC),r3
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bf loc_8c030274
	mov.w @(loc_8c0302a8,PC),r0
	mov.l @(loc_8c0302bc,PC),r2
	mov.l @(r0,r14),r1
	tst r2,r1
	bt loc_8c030274
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x0B,r0
	bf loc_8c030274
	mov.w @(loc_8c0302ac,PC),r0
	mov.l @(r0,r14),r1
	tst r1,r1
	bf loc_8c030274
	mova @(0x58,PC),r0
	mov.l @(loc_8c0302c4,PC),r3
	fmov @r0,fr5
	fldi1 fr15
	fmov fr15,fr6
	jsr @r3
	fmov fr15,fr4

loc_8c030274:
	mov.w @(loc_8c0302a8,PC),r0
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
loc_8c0302a6:
	#data 0x4000
loc_8c0302a8:
	#data 0x00cc
loc_8c0302aa:
	#data 0x0088
loc_8c0302ac:
	#data 0x00c8
	#align4
loc_8c0302b0:
	#data bank12.loc_8c121100
loc_8c0302b4:
	#data bank12.loc_8c120540
loc_8c0302b8:
	#data 0x8c212c14
loc_8c0302bc:
	#data 0x00010000
	#data 0x3f6e147b
loc_8c0302c4:
	#data bank12.loc_8c120fc0

;----------------------------------------------
loc_8c0302c8:
	mov r14,r2
	mov.l @(loc_8c0303e4,PC),r3
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
	mov.l @(loc_8c0303ec,PC),r3
	jsr @r3
	nop

loc_8c030302:
	mov.w @(loc_8c0303de,PC),r3
	mov.l @(loc_8c0303f0,PC),r12
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
	mov.l @(loc_8c0303f4,PC),r2
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
	mov.l @(loc_8c0303f8,PC),r3
	jsr @r3
	mov r0,r4

loc_8c030340:
	mov.w @(loc_8c0303e0,PC),r0
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
	mov.l @(loc_8c0303f4,PC),r3
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
	mov.l @(loc_8c0303fc,PC),r2
	jsr @r2
	mov r0,r4

loc_8c030380:
	mov.w @(loc_8c0303e0,PC),r0
	mov.l @(r0,r14),r0
	tst 0x08,r0
	bt loc_8c030390
	mov.l @(loc_8c030400,PC),r3
	mov 0x48,r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c030390:
	mov.w @(loc_8c0303e0,PC),r0
	mov.l @(r0,r14),r0
	tst 0x04,r0
	bt loc_8c0303a0
	mov.l @(loc_8c0303f8,PC),r3
	mov 0x44,r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c0303a0:
	mov.w @(loc_8c0303e0,PC),r0
	mov.l @(r0,r14),r0
	tst 0x02,r0
	bt loc_8c0303b2
	mov.l @(loc_8c0303fc,PC),r3
	mov r14,r4
	add 0x40,r4
	jsr @r3
	mov.l @r4,r4

loc_8c0303b2:
	mov.w @(loc_8c0303e0,PC),r0
	mov.l @(r0,r14),r0
	tst 0x10,r0
	bt loc_8c0303c2
	mov.l @(loc_8c030404,PC),r3
	mov r14,r4
	jsr @r3
	add 0x50,r4

loc_8c0303c2:
	mov.l @(loc_8c030408,PC),r2
	mov.w @(loc_8c0303e2,PC),r4
	jsr @r2
	add r14,r4
	mov.l @(loc_8c03040c,PC),r3
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
loc_8c0303de:
	#data 0x0100
loc_8c0303e0:
	#data 0x00cc
loc_8c0303e2:
	#data 0x0088
	#align4
loc_8c0303e4:
	#data bank12.loc_8c1294c8
	#data 0x3dcccccd
loc_8c0303ec:
	#data bank12.loc_8c1210e0
loc_8c0303f0:
	#data 0x8c26a518
loc_8c0303f4:
	#data bank11.loc_8c11e170
loc_8c0303f8:
	#data bank12.loc_8c120cd0
loc_8c0303fc:
	#data bank12.loc_8c120b20
loc_8c030400:
	#data bank12.loc_8c120d90
loc_8c030404:
	#data bank12.loc_8c120ff0
loc_8c030408:
	#data bank11.loc_8c11fa80
loc_8c03040c:
	#data bank12.loc_8c120900

;==============================================
loc_8c030410:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l @(loc_8c0304f8,PC),r0
	extu.b r13,r14
	shll2 r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c03044a

loc_8c030424:
	mov.w @(loc_8c0304ec,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c030444
	mov.w @(loc_8c0304ee,PC),r0
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
	mov.l @(loc_8c0304fc,PC),r3
	mov r4,r14
	mov.b r5,@r15
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c030500,PC),r2
	mov.w @(loc_8c0304f0,PC),r4
	jsr @r2
	add r14,r4
	mov.w @(loc_8c0304f2,PC),r0
	mov.l @(r0,r14),r0
	tst 0x10,r0
	bt loc_8c03047e
	mov r14,r4
	bsr loc_8c0301b4
	add 0x50,r4
	mov.l @(loc_8c030504,PC),r3
	jsr @r3
	fmov fr0,fr4

loc_8c03047e:
	bsr loc_8c030550
	mov r14,r4
	mov.w @(loc_8c0304f2,PC),r0
	mov.w @(loc_8c0304f4,PC),r3
	mov.l @(r0,r14),r2
	tst r3,r2
	bt loc_8c0304a0
	mov.l @(loc_8c030508,PC),r2
	mov.w @(loc_8c0304f6,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c03050c,PC),r3
	mov.w @(loc_8c0304ee,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030544
	nop

loc_8c0304a0:
	mov.l @(r0,r14),r1
	mov.l @(loc_8c030510,PC),r2
	tst r2,r1
	bt loc_8c0304b0
	mov.l @(loc_8c030514,PC),r3
	mov.w @(loc_8c0304ee,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c0304b0:
	mov.w @(loc_8c0304f2,PC),r0
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
	mov.l @(loc_8c030518,PC),r3
	fmov @(r0,r14),fr4
	add 0x10,r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030544
	nop

loc_8c0304dc:
	mov 0x74,r0
	mov.l @(loc_8c03051c,PC),r3
	fmov @(r0,r14),fr4
	add 0x10,r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030544
	nop

;##############################################
loc_8c0304ec:
	#data 0x012c
loc_8c0304ee:
	#data 0x0084
loc_8c0304f0:
	#data 0x0088
loc_8c0304f2:
	#data 0x00cc
loc_8c0304f4:
	#data 0x2000
loc_8c0304f6:
	#data 0x0080
	#align4
loc_8c0304f8:
	#data 0x8c287a5c
loc_8c0304fc:
	#data bank12.loc_8c120950
loc_8c030500:
	#data bank12.loc_8c1201e0
loc_8c030504:
	#data bank12.loc_8c122710
loc_8c030508:
	#data bank12.loc_8c123370
loc_8c03050c:
	#data bank12.loc_8c123410
loc_8c030510:
	#data 0x00008000
loc_8c030514:
	#data bank13.loc_8c132640
loc_8c030518:
	#data bank12.loc_8c123610
loc_8c03051c:
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
	mov.l @(loc_8c030630,PC),r3
	mov.w @(loc_8c030626,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c030544
	nop

loc_8c03053c:
	mov.l @(loc_8c030634,PC),r3
	mov.w @(loc_8c030626,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c030544:
	mov 0x01,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c030638,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c030550:
	mov.w @(loc_8c03062c,PC),r0
	mov.w @(loc_8c03062a,PC),r3
	fmov fr15,@-r15
	mov.l @(loc_8c03063c,PC),r6
	fmov fr14,@-r15
	mov.w @(loc_8c030628,PC),r5
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
	mov.l @(loc_8c030640,PC),r3
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
	mov.l @(loc_8c030644,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(loc_8c030648,PC),r3
	mov.w @(loc_8c03062e,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x01,r2
	cmp/gt r2,r1
	bt loc_8c030620
	mov.l @(loc_8c03064c,PC),r1
	jsr @r1
	nop
	bsr loc_8c0301ce
	mov 0x05,r4
	bsr loc_8c030410
	mov 0x05,r4
	mov.l @(loc_8c030650,PC),r3
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
	mov.l @(loc_8c030654,PC),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c030620:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c030626:
	#data 0x0084
loc_8c030628:
	#data 0x0800
loc_8c03062a:
	#data 0x0400
loc_8c03062c:
	#data 0x00cc
loc_8c03062e:
	#data 0x008e
	#align4
loc_8c030630:
	#data bank12.loc_8c1235b0
loc_8c030634:
	#data bank12.loc_8c1235e0
loc_8c030638:
	#data bank12.loc_8c120900
loc_8c03063c:
	#data 0x8c26a89c
loc_8c030640:
	#data bank12.loc_8c123780
loc_8c030644:
	#data bank02.loc_8c02e334
loc_8c030648:
	#data 0x8c26823c
loc_8c03064c:
	#data bank02.loc_8c02e1a4
loc_8c030650:
	#data bank02.loc_8c02e246
loc_8c030654:
	#data loc_8c031504

;==============================================
loc_8c030658:
	sts.l pr,@-r15
	mov.l @(loc_8c03073c,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(loc_8c030740,PC),r3
	mov.w @(loc_8c030736,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x01,r2
	cmp/gt r2,r1
	bt loc_8c030686
	mov.l @(loc_8c030744,PC),r1
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
	mov.l @(loc_8c03073c,PC),r3
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
	mov.l @(loc_8c03073c,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(loc_8c03074c,PC),r2
	mov.l @(loc_8c030748,PC),r5
	jsr @r2
	mov 0x04,r4
	mov.l @(loc_8c030750,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c030754,PC),r14
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c0306d6
	mov.l @(loc_8c030758,PC),r13

loc_8c0306ca:
	mov.w @(loc_8c030738,PC),r4
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
	mov.l @(loc_8c03073c,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(loc_8c030740,PC),r3
	mov.w @(loc_8c030736,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x01,r2
	cmp/gt r2,r1
	bt loc_8c03070c
	mov.l @(loc_8c030744,PC),r1
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
	mov.l @(loc_8c03073c,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	mov 0x0B,r4
	bra loc_8c030410
	lds.l @r15+,pr

loc_8c030724:
	sts.l pr,@-r15
	mov.l @(loc_8c03075c,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x05,r4
	mov 0x05,r4
	bra loc_8c030410
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c030736:
	#data 0x008e
loc_8c030738:
	#data 0x00dc
	#align4
loc_8c03073c:
	#data bank02.loc_8c02e334
loc_8c030740:
	#data 0x8c26823c
loc_8c030744:
	#data bank02.loc_8c02e1a4
loc_8c030748:
	#data bank14.loc_8c14cadc
loc_8c03074c:
	#data bank12.loc_8c127af0
loc_8c030750:
	#data bank11.loc_8c11b800
loc_8c030754:
	#data 0x8c287a74
loc_8c030758:
	#data bank12.loc_8c1244b0
loc_8c03075c:
	#data bank02.loc_8c02e378

;==============================================
loc_8c030760:
	sts.l pr,@-r15
	mov.l @(loc_8c030838,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x05,r4
	bsr loc_8c030410
	mov 0x05,r4
	mov.l @(loc_8c03083c,PC),r2
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
	mov.l @(loc_8c03083c,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(loc_8c030840,PC),r3
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
	mov.l @(loc_8c030844,PC),r14
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c0307ca
	mov.l @(loc_8c030848,PC),r13

loc_8c0307b8:
	mov.w @(loc_8c030832,PC),r0
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
	mov.l @(loc_8c03083c,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0D,r4
	mov.l @(loc_8c03084c,PC),r14
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c030810
	mov.l @(loc_8c030850,PC),r13

loc_8c0307ec:
	mov.w @(loc_8c030832,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c03080a
	mov.w @(loc_8c030834,PC),r0
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
	mov.l @(loc_8c03083c,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	mov 0x0B,r4
	bra loc_8c030410
	lds.l @r15+,pr

;==============================================
loc_8c03082a:
	mov.l @(loc_8c030854,PC),r3
	mov 0x0C,r5
	jmp @r3
	mov r5,r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c030832:
	#data 0x012c
loc_8c030834:
	#data 0x00d4
	#align4
loc_8c030838:
	#data bank02.loc_8c02e1a4
loc_8c03083c:
	#data bank02.loc_8c02e334
loc_8c030840:
	#data 0x8c26823c
loc_8c030844:
	#data 0x8c287a8c
loc_8c030848:
	#data bank01.loc_8c01836c
loc_8c03084c:
	#data 0x8c287a90
loc_8c030850:
	#data bank02.loc_8c02861e
loc_8c030854:
	#data loc_8c0312d6

;==============================================
;Render Characters?
loc_8c030858:
	sts.l pr,@-r15
	mov.l @(loc_8c030928,PC),r3 ;8c0310f2
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
	mov.l @(loc_8c03092c,PC),r3 ;8c26823c
	mov.w @(loc_8c030922,PC),r0 ;98
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
	mov.l @(loc_8c03092c,PC),r1 ;8c26823c
	mov 0x2E,r2
	mov.l @r1,r0
	mov.b @(r0,r2),r0
	cmp/eq 0x01,r0
	bf loc_8c0308bc
	mov.l @(loc_8c030930,PC),r3;8c031470
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
	mov.l @(loc_8c030938,PC),r4;8c2895e0
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c030924,PC),r9
	mov r4,r8
	mov.l @(loc_8c030934,PC),r12
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
loc_8c030922:
	#data 0x0098
loc_8c030924:
	#data 0x0180
	#align4
loc_8c030928:
	#data loc_8c0310f2
loc_8c03092c:
	#data 0x8c26823c
loc_8c030930:
	#data loc_8c031470
loc_8c030934:
	#data 0x8c287de0
loc_8c030938:
	#data 0x8c2895e0

;==============================================
;Render Main Sprite
loc_8c03093c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8c030aa4,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c030950
	bra loc_8c030a9c
	nop

loc_8c030950:
	mov.l @(loc_8c030abc,PC),r3
	jsr @r3
	nop
	mova @(0x168,PC),r0
	mov.l @(loc_8c030ac8,PC),r3
	fmov @r0,fr5
	mova @(loc_8c030ac4,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov 0x3C,r0
	mov.l @(loc_8c030acc,PC),r3
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
	mov.w @(loc_8c030aa6,PC),r0
	fmov @r15,fr3
	mov.l @(loc_8c030ad0,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c030aa8,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c030ad4,PC),r0
	shll2 r3
	fmov @(r0,r3),fr3
	mova @(0x140,PC),r0
	fmov @r0,fr0
	mov 0x20,r0
	fmov @(r0,r4),fr2
	mov.w @(loc_8c030aaa,PC),r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mova @(loc_8c030adc,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	mov.w @(loc_8c030aac,PC),r0
	fmul fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x12C,PC),r0
	fmov @r0,fr2
	mov 0x54,r0
	fmov @(r0,r14),fr1
	fmul fr2,fr1
	mov.w @(loc_8c030aae,PC),r0
	fmov fr1,@(r0,r14)
	mov 0x48,r0
	mov.l @(r0,r14),r3
	mov.w @(loc_8c030ab0,PC),r0
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
	mov.w @(loc_8c030ab2,PC),r0
	mov.w r2,@(r0,r14)
	mov 0x4E,r0
	mov.w @(r0,r14),r3
	mov.w @(loc_8c030ab4,PC),r0
	mov.w r3,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr1
	mov 0x20,r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c030aac,PC),r0
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
	mov.w @(loc_8c030ab6,PC),r0
	mov.b @(r0,r14),r4
	add 0x1B,r0
	mov.l @(r0,r14),r3
	mova @(loc_8c030ae8,PC),r0
	extu.b r4,r4
	fmov @r0,fr4
	shll2 r4
	mov.w @(loc_8c030aac,PC),r0
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
	mov.w @(loc_8c030ab0,PC),r3
	float fpul,fr3
	fdiv fr4,fr3
	fmul fr3,fr0
	fmov fr0,@r2
	mov.w @(0x4,r4),r0
	add r14,r3
	mov.w @(loc_8c030ab0,PC),r1
	mov.w @r3,r3
	add r14,r1
	mov.w @(loc_8c030ab2,PC),r2
	add r3,r0
	mov.w @(loc_8c030ab8,PC),r3
	extu.w r0,r0
	mov.l r0,@r1
	add r14,r2
	mov.w @(0x6,r4),r0
	add r14,r3
	mov.w @(loc_8c030ab4,PC),r1
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
	mov.l @(loc_8c030aec,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c030af0,PC),r3
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
	mov.l @(loc_8c030ad4,PC),r0
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
loc_8c030aa4:
	#data 0x012c
loc_8c030aa6:
	#data 0x00e0
loc_8c030aa8:
	#data 0x00e4
loc_8c030aaa:
	#data 0x00e8
loc_8c030aac:
	#data 0x00ec
loc_8c030aae:
	#data 0x00f0
loc_8c030ab0:
	#data 0x0104
loc_8c030ab2:
	#data 0x0134
loc_8c030ab4:
	#data 0x0136
loc_8c030ab6:
	#data 0x014d
loc_8c030ab8:
	#data 0x0110
	#align4
loc_8c030abc:
	#data bank02.loc_8c02e1a4
	#data 0x43f00000
loc_8c030ac4:
	#data 0x44200000
loc_8c030ac8:
	#data bank12.loc_8c1216c0
loc_8c030acc:
	#data bank12.loc_8c122560
loc_8c030ad0:
	#data 0x8c26a518
loc_8c030ad4:
	#data 0x8c26a974
	#data 0x3dcccccd
loc_8c030adc:
	#data work.CpsXScale
	#data work.CpsYScale
	#data 0x444b16de
loc_8c030ae8:
	#data 0x447a0000
loc_8c030aec:
	#data loc_8c034bea
loc_8c030af0:
	#data 0x8c26823c
	#data 0x3a83126f

;==============================================
;r4 = pladdr
loc_8c030af8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.w @(loc_8c030c66,PC),r0
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
	mov.l @(loc_8c030c80,PC),r3
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
	mov.w @(loc_8c030c68,PC),r0
	fmov @r15,fr3
	mov.l @(loc_8c030c84,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c030c6a,PC),r0
	fmov fr3,@(r0,r14)
	mov.l @(0xC,r15),r3
	mov.l @(loc_8c030c88,PC),r0
	shll2 r3
	mov.l r3,@(0x10,r15)
	fmov @(r0,r3),fr3
	mova @(loc_8c030c8c,PC),r0
	fmov @r0,fr0
	mov 0x20,r0
	fmov @(r0,r4),fr2
	mov.w @(loc_8c030c6c,PC),r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	mov.w @(loc_8c030c6e,PC),r0
	fmul fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(loc_8c030c94,PC),r0
	fmov @r0,fr2
	mov 0x54,r0
	fmov @(r0,r14),fr1
	fmul fr2,fr1
	mov.w @(loc_8c030c70,PC),r0
	fmov fr1,@(r0,r14)
	mov 0x48,r0
	mov.l @(r0,r14),r3
	mov.w @(loc_8c030c72,PC),r0
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
	mov.w @(loc_8c030c74,PC),r0
	mov.w r2,@(r0,r14)
	mov 0x4E,r0
	mov.w @(r0,r14),r3
	mov.w @(loc_8c030c76,PC),r0
	mov.w r3,@(r0,r14)
	mova @(loc_8c030c98,PC),r0
	fmov @r0,fr1
	mov 0x20,r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c030c6e,PC),r0
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
	mov.w @(loc_8c030c78,PC),r0
	mov.w @(loc_8c030c7a,PC),r3
	mov.b @(r0,r14),r4
	add 0xA9,r0
	mov.b @(r0,r14),r2
	extu.b r4,r4
	mov.l @(loc_8c030c9c,PC),r0
	mulu.w r3,r4
	extu.b r2,r2
	shll2 r2
	shll2 r2
	sts macl,r4
	mov.l @(r0,r4),r4
	mova @(loc_8c030ca0,PC),r0
	fmov @r0,fr4
	add r2,r4
	mov.w @(loc_8c030c6e,PC),r0
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
	mov.w @(loc_8c030c72,PC),r2
	add r14,r2
	fmul fr3,fr0
	fmov fr0,@r1
	mov.w @r2,r2
	mov.w @(0x4,r4),r0
	mov.w @(loc_8c030c72,PC),r1
	add r2,r0
	mov.w @(loc_8c030c74,PC),r2
	add r14,r1
	extu.w r0,r0
	mov.l r0,@r1
	add r14,r2
	mov.w @(0x6,r4),r0
	mov.w @(loc_8c030c76,PC),r1
	mov.w r0,@r2
	mov.w @(0x8,r4),r0
	add r14,r1
	mov.w @(loc_8c030c7c,PC),r2
	mov.w r0,@r1
	mov.w @(0xA,r4),r0
	add r14,r2
	mov.l @r2,r1
	extu.w r0,r0
	xor r0,r1
	mov.l r1,@r2

loc_8c030c4a:
	mov.l @(loc_8c030ca4,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c030ca8,PC),r3
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
loc_8c030c66:
	#data 0x012c
loc_8c030c68:
	#data 0x00e0
loc_8c030c6a:
	#data 0x00e4
loc_8c030c6c:
	#data 0x00e8
loc_8c030c6e:
	#data 0x00ec
loc_8c030c70:
	#data 0x00f0
loc_8c030c72:
	#data 0x0104
loc_8c030c74:
	#data 0x0134
loc_8c030c76:
	#data 0x0136
loc_8c030c78:
	#data 0x01a4
loc_8c030c7a:
	#data 0x05a4
loc_8c030c7c:
	#data 0x0110
	#align4
loc_8c030c80:
	#data bank12.loc_8c122560
loc_8c030c84:
	#data 0x8c26a518
loc_8c030c88:
	#data 0x8c26a974
loc_8c030c8c:
	#data 0x3dcccccd
	#data work.CpsXScale
loc_8c030c94:
	#data work.CpsYScale
loc_8c030c98:
	#data 0x444b16de
loc_8c030c9c:
	#data 0x8c2684a8
loc_8c030ca0:
	#data 0x447a0000
loc_8c030ca4:
	#data loc_8c034bea
loc_8c030ca8:
	#data 0x8c26823c

;----------------------------------------------
loc_8c030cac:
	mova @(loc_8c030d94,PC),r0
	fmov @r0,fr0
	mov.l @(loc_8c030d98,PC),r0
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
	mov.l @(loc_8c030d9c,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8c030cf6
	mov.l @(loc_8c030da0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c030da4,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c030da8,PC),r3
	jsr @r3
	nop
	bsr loc_8c030cfc
	nop
	mov.l @(loc_8c030dac,PC),r3
	mov.l @(loc_8c030db0,PC),r2
	mov.l @r3,r4
	mov.l @r4,r4
	jsr @r2
	mov.l @r4,r4
	mov.l @(loc_8c030db4,PC),r3
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
	mov.l @(loc_8c030db8,PC),r14
	mov.l @(loc_8c030dbc,PC),r3
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
	mov.l @(loc_8c030da0,PC),r3
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
	mov.l @(loc_8c030da0,PC),r3
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
	mov.l @(loc_8c030dc0,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x07,r4
	bsr loc_8c030410
	mov 0x07,r4
	mov.l @(loc_8c030dc0,PC),r2
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
	mov.l @(loc_8c030dc0,PC),r3
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
	mov.l @(loc_8c030dc4,PC),r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c030d8a
	mov.l @(loc_8c030dc8,PC),r13

loc_8c030d78:
	mov.w @(loc_8c030d92,PC),r0
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
loc_8c030d92:
	#data 0x012c
	#align4
loc_8c030d94:
	#data 0x3a83126f
loc_8c030d98:
	#data 0x8c26a974
loc_8c030d9c:
	#data 0x8c26a95c
loc_8c030da0:
	#data bank02.loc_8c02e1a4
loc_8c030da4:
	#data bank12.loc_8c120950
loc_8c030da8:
	#data bank12.loc_8c121100
loc_8c030dac:
	#data 0x8c26a904
loc_8c030db0:
	#data bank12.loc_8c1235e0
loc_8c030db4:
	#data bank12.loc_8c120900
loc_8c030db8:
	#data 0x8c26a8a4
loc_8c030dbc:
	#data bank12.loc_8c123780
loc_8c030dc0:
	#data bank02.loc_8c02e246
loc_8c030dc4:
	#data 0x8c287a8c
loc_8c030dc8:
	#data bank0f.loc_8c0f215e

;==============================================
loc_8c030dcc:
	sts.l pr,@-r15
	mov.l @(loc_8c030e18,PC),r3
	jsr @r3
	nop
	bsr loc_8c0301ce
	mov 0x0B,r4
	bsr loc_8c030410
	mov 0x0B,r4
	mov.l @(loc_8c030e1c,PC),r3
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
	mov.l @(loc_8c030e20,PC),r7
	sts.l pr,@-r15
	mov.l @(loc_8c030e24,PC),r5
	mov r7,r6
	add 0x40,r6
	mov r7,r4

loc_8c030dfc:
	mov.l @(0x8,r5),r3
	mov.l r3,@(0xC,r4)
	add 0x10,r4
	cmp/hs r6,r4
	bf loc_8c030dfc
	mov.l @(loc_8c030e28,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c030e2c,PC),r2
	mov 0x04,r4
	mov.l @(loc_8c030e20,PC),r5
	jmp @r2
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c030e18:
	#data bank02.loc_8c02e334
loc_8c030e1c:
	#data 0x8c26823c
loc_8c030e20:
	#data bank14.loc_8c14cb1c
loc_8c030e24:
	#data 0x8c26a8d0
loc_8c030e28:
	#data bank12.loc_8c127850
loc_8c030e2c:
	#data bank12.loc_8c127af0

;==============================================
loc_8c030e30:
	mov.l @(loc_8c030f08,PC),r3
	mov.l @(loc_8c030f04,PC),r4
	mov.w @(loc_8c030efe,PC),r6
	jmp @r3
	mov 0x00,r5

;==============================================
loc_8c030e3a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c030f04,PC),r14
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
	mov.w @(loc_8c030f00,PC),r5
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
	mov.l @(loc_8c030f0c,PC),r3
	mov 0x0C,r0
	jsr @r3
	fmov @(r0,r14),fr4
	mov.b @(0x9,r14),r0
	mov.l @(loc_8c030f10,PC),r4
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
	mov.l @(loc_8c030f14,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c030ee8:
	mov.l @(loc_8c030f04,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c030ef8
	mov.l @(loc_8c030f1c,PC),r3
	mov.l @(loc_8c030f18,PC),r4
	jmp @r3
	nop

loc_8c030ef8:
	mov.l @(loc_8c030f20,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c030efe:
	#data 0x0214
loc_8c030f00:
	#data 0x0204
	#align4
loc_8c030f04:
	#data 0x8c26a688
loc_8c030f08:
	#data bank12.loc_8c129728
loc_8c030f0c:
	#data bank11.loc_8c11f2e0
loc_8c030f10:
	#data 0x8c26a8a4
loc_8c030f14:
	#data bank11.loc_8c11f280
loc_8c030f18:
	#data 0x8c26a698
loc_8c030f1c:
	#data bank11.loc_8c11f2d0
loc_8c030f20:
	#data bank11.loc_8c11f250

;==============================================
loc_8c030f24:
	sts.l pr,@-r15
	mov.l @(loc_8c030f68,PC),r4
	mov 0x18,r6
	mov.l @(loc_8c030f6c,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.l @(loc_8c030f70,PC),r4
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
	mov.l @(loc_8c030f70,PC),r4
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mov 0x08,r0
	fmov fr4,@(r0,r4)
	mov 0x04,r0
	rts
	fmov fr4,@(r0,r4)

;==============================================
loc_8c030f54:
	mov.l @(loc_8c030f74,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c030f60
	bra loc_8c030f64
	fldi1 fr4

loc_8c030f60:
	mova @(loc_8c030f78,PC),r0
	fmov @r0,fr4

loc_8c030f64:
	bra loc_8c030f44
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c030f68:
	#data 0x8c26a89c
loc_8c030f6c:
	#data bank12.loc_8c129728
loc_8c030f70:
	#data 0x8c26a8a4
loc_8c030f74:
	#data 0x8c2895f6
loc_8c030f78:
	#data 0x3f000000

;==============================================
loc_8c030f7c:
	mov.l @(loc_8c031088,PC),r2
	mov 0x28,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c030f9a
	mov.l @(loc_8c03108c,PC),r4
	mov.l @(0x8,r4),r3
	tst r3,r3
	bf loc_8c030f9a
	mov.l @(loc_8c031090,PC),r3
	mov 0x02,r5
	mov.l r5,@(0x4,r4)
	mov.l r5,@(0x8,r4)
	mov.l r3,@(0xC,r4)

loc_8c030f9a:
	rts
	nop

;==============================================
loc_8c030f9e:
	mov.l @(loc_8c03108c,PC),r4
	mov 0x01,r3
	mov 0x10,r2
	mov.l r3,@(0x4,r4)
	mov.l @(loc_8c031090,PC),r3
	mov.l r2,@(0x8,r4)
	rts
	mov.l r3,@(0xC,r4)

;==============================================
loc_8c030fae:
	mov.l @(loc_8c031088,PC),r1
	mov 0x28,r0
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c030fc8
	mov.l @(loc_8c03108c,PC),r4
	mov 0x06,r3
	mov 0x18,r2
	mov.l r3,@(0x4,r4)
	mov.l @(loc_8c031090,PC),r3
	mov.l r2,@(0x8,r4)
	mov.l r3,@(0xC,r4)

loc_8c030fc8:
	rts
	nop

;==============================================
loc_8c030fcc:
	mov.l @(loc_8c031088,PC),r1
	mov 0x28,r0
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c030fdc
	rts
	nop

loc_8c030fdc:
	mov.l @(loc_8c03108c,PC),r4
	mov 0x00,r3
	mov 0x78,r2
	mov.l r3,@(0x4,r4)
	mov 0xFF,r3
	mov.l r2,@(0x8,r4)
	rts
	mov.l r3,@(0xC,r4)

;==============================================
loc_8c030fec:
	mov.l @(loc_8c03108c,PC),r4
	mov 0x78,r3
	mov 0x00,r5
	mov.l r5,@(0x4,r4)
	mov.l r3,@(0x8,r4)
	rts
	mov.l r5,@(0xC,r4)

;==============================================
loc_8c030ffa:
	mov.l @(loc_8c03108c,PC),r4
	mov 0x1E,r3
	mov 0x00,r5
	mov.l r5,@(0x4,r4)
	mov.l r3,@(0x8,r4)
	rts
	mov.l r5,@(0xC,r4)

;==============================================
loc_8c031008:
	mov.l @(loc_8c03108c,PC),r4
	mov 0x08,r3
	mov.w @(loc_8c031084,PC),r2
	mov.l r3,@(0x4,r4)
	mov 0x00,r3
	mov.l r2,@(0x8,r4)
	rts
	mov.l r3,@(0xC,r4)

;==============================================
loc_8c031018:
	mov.l @(loc_8c03108c,PC),r4
	mov.l @(0x4,r4),r0
	cmp/eq 0x08,r0
	bt loc_8c03102c
	mov 0x09,r2
	mov.w @(loc_8c031086,PC),r3
	mov.l r2,@(0x4,r4)
	mov 0x00,r2
	mov.l r3,@(0x8,r4)
	mov.l r2,@(0xC,r4)

loc_8c03102c:
	rts
	nop

;==============================================
loc_8c031030:
	mov.l @(loc_8c03108c,PC),r4
	mov 0x01,r2
	mov.l @(0x8,r4),r3
	add 0xFF,r3
	mov.l r3,@(0x8,r4)
	rts
	mov.l r2,@r4

;==============================================
loc_8c03103e:
	mov.l @(loc_8c03108c,PC),r4
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
	mov.l @(loc_8c03108c,PC),r4
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
	mov.l @(loc_8c03108c,PC),r4
	mov 0x02,r2
	mov.l @(0x8,r4),r3
	add 0xFF,r3
	mov.l r3,@(0x8,r4)
	rts
	mov.l r2,@r4

;==============================================
loc_8c031076:
	mov.l @(loc_8c03108c,PC),r4
	mov 0x03,r2
	mov.l @(0x8,r4),r3
	add 0xFF,r3
	mov.l r3,@(0x8,r4)
	rts
	mov.l r2,@r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c031084:
	#data 0x00b9
loc_8c031086:
	#data 0x00b4
	#align4
loc_8c031088:
	#data 0x8c26823c
loc_8c03108c:
	#data 0x8c26a8e4
loc_8c031090:
	#data 0x00ffffff

;==============================================
loc_8c031094:
	mov.l @(loc_8c0310b0,PC),r4
	mov.l @(0x8,r4),r3
	tst r3,r3
	bt loc_8c0310ea
	mov.l @(0x4,r4),r0
	mov 0x0D,r1
	cmp/hs r1,r0
	bt loc_8c0310e6
	shll r0
	mov r0,r1
	mova @(loc_8c0310b4,PC),r0
	mov.w @(r0,r1),r0
	braf r0
	nop

;##############################################
	#align4
loc_8c0310b0:
	#data 0x8c26a8e4
loc_8c0310b4:
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
	mov.l @(loc_8c031104,PC),r2
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
loc_8c031104:
	#data 0x8c26a8e4

;==============================================
loc_8c031108:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x2,r14),r0
	mov.l @(loc_8c031414,PC),r13
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c031418,PC),r2
	shll2 r0
	add r0,r13
	jsr @r2
	mov.l @r13,r4
	mov 0x04,r0
	mov.l @(loc_8c03141c,PC),r3
	fmov @(r0,r13),fr3
	ftrc fr3,fpul
	sts fpul,r5
	mov.l r5,@r15
	jsr @r3
	mov r5,r4
	mov.b @(0x1,r14),r0
	mov.b @r14,r4
	mov.l @(loc_8c031420,PC),r3
	extu.b r0,r5
	jsr @r3
	extu.b r4,r4
	mov r14,r4
	add 0x03,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c031424,PC),r2
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
	mov.l @(loc_8c031428,PC),r3
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
	mov.l @(loc_8c03142c,PC),r3
	shll2 r14
	mov.l @(loc_8c031438,PC),r5
	extu.b r2,r2
	mov.l @(loc_8c031430,PC),r4
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
	mova @(loc_8c031434,PC),r0
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
	mova @(loc_8c031440,PC),r0
	fmov @r0,fr13
	mova @(loc_8c031444,PC),r0
	fmov @r0,fr14
	mova @(loc_8c031448,PC),r0
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
	mov.l @(loc_8c03144c,PC),r3
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
	mov.l @(loc_8c031450,PC),r0
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	mov.l @(loc_8c031454,PC),r14
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r5),r5
	mova @(0x160,PC),r0
	mov.l @(loc_8c031460,PC),r9
	mov.b @r5+,r11
	mov.l @(loc_8c03145c,PC),r8
	mov.b @r5+,r3
	extu.b r11,r11
	mov.l @(loc_8c031438,PC),r10
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
	mova @(loc_8c03146c,PC),r0
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
	mov.l @(loc_8c031454,PC),r4
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
loc_8c031414:
	#data bank13.loc_8c135cc0
loc_8c031418:
	#data bank11.loc_8c11f1c0
loc_8c03141c:
	#data bank11.loc_8c11efc0
loc_8c031420:
	#data bank11.loc_8c11f130
loc_8c031424:
	#data bank11.loc_8c11efd0
loc_8c031428:
	#data bank12.loc_8c127850
loc_8c03142c:
	#data bank13.loc_8c135d68
loc_8c031430:
	#data bank14.loc_8c14cbf0
loc_8c031434:
	#data 0x3f666666
loc_8c031438:
	#data 0x8c212bfc
	#data 0x41000000
loc_8c031440:
	#data 0xbe000000
loc_8c031444:
	#data 0x41800000
loc_8c031448:
	#data 0x3f400000
loc_8c03144c:
	#data bank12.loc_8c127b60
loc_8c031450:
	#data bank14.loc_8c14cbac
loc_8c031454:
	#data bank14.loc_8c14cb5c
	#data 0x3f733333
loc_8c03145c:
	#data bank12.loc_8c1244b0
loc_8c031460:
	#data bank13.loc_8c135720
	#data 0x3a83126f
	#data 0x42c80000
loc_8c03146c:
	#data 0x43800000

;==============================================
loc_8c031470:
	mova @(loc_8c0314ec,PC),r0
	mov.l @(loc_8c0314e8,PC),r4
	mov.l @(loc_8c0314f4,PC),r5
	mov 0x10,r1
	mov.w @(loc_8c0314e4,PC),r3
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
	mov.l @(loc_8c031500,PC),r2
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
loc_8c0314e4:
#data 0x0d50
#align4
loc_8c0314e8:
	#data bank14.loc_8c14cb5c
loc_8c0314ec:
	#data 0x42200000
	#data 0x43c50000
loc_8c0314f4:
	#data 0x8c212bfc
	#data 0x3f75c28f
	#data 0x3f200000
loc_8c031500:
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
	mov.l @(loc_8c031668,PC),r3
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
	mov.l @(loc_8c03166c,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c031674,PC),r3
	mov 0x14,r5
	mov.l @(loc_8c031670,PC),r14
	mov 0x17,r6
	mov.l r3,@-r15
	jsr @r14
	mov 0x29,r4
	mov.l @(loc_8c031674,PC),r2
	mov 0x14,r5
	mov 0x18,r6
	mov.l r2,@-r15
	jsr @r14
	mov 0x61,r4
	mov.l @(loc_8c031678,PC),r3
	mov 0x14,r5
	mov 0x17,r6
	mov.l r3,@-r15
	jsr @r14
	mov 0x3C,r4
	mov.l @(loc_8c03167c,PC),r2
	mov 0x14,r5
	mov 0x18,r6
	mov.l r2,@-r15
	jsr @r14
	mov 0x74,r4
	add 0x10,r15
	mov.w @(loc_8c03165e,PC),r10
	mov 0x00,r9
	mov r9,r13
 
loc_8c031578:
	mul.l r10,r13
	mov 0x38,r8
	mov.l @(loc_8c031680,PC),r3
	mov.w @(loc_8c031660,PC),r0
	mov 0x20,r5
	mov.l @(loc_8c031684,PC),r1
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
	mov.w @(loc_8c031662,PC),r0
	mov 0x28,r5
	mov.l @(loc_8c031688,PC),r2
	mov 0x1A,r6
	mov.b @(r0,r12),r3
	extu.b r3,r3
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r14
	mov r11,r4
	mov.w @(loc_8c031664,PC),r0
	mov 0x30,r5
	mov.l @(loc_8c03168c,PC),r2
	mov 0x1B,r6
	mov.b @(r0,r12),r3
	extu.b r3,r3
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r14
	mov r11,r4
	mov.l @(loc_8c031690,PC),r3
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
	mov.l @(loc_8c031698,PC),r14
	fmov @r0,fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mova @(loc_8c0316a0,PC),r0
	mov.l @(loc_8c031694,PC),r5
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
	mova @(loc_8c0316a4,PC),r0
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
	mov.l @(loc_8c0316ac,PC),r3
	fmov @(r0,r14),fr0
	mov 0x04,r0
	fadd fr3,fr0
	fmov fr0,@(r0,r4)
	fmov fr0,@(r0,r7)
	jsr @r3
	mov r0,r4
	mova @(loc_8c0316b4,PC),r0
	mov.l @(loc_8c0316b0,PC),r5
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
loc_8c03165e:
	#data 0x05a4
loc_8c031660:
	#data 0x0540
loc_8c031662:
	#data 0x0541
loc_8c031664:
	#data 0x0542
	#align4
loc_8c031668:
	#data 0x8c26823c
loc_8c03166c:
	#data bank12.loc_8c127850
loc_8c031670:
	#data loc_8c0395c6
loc_8c031674:
	#data bank13.loc_8c136164
loc_8c031678:
	#data bank13.loc_8c13616c
loc_8c03167c:
	#data bank13.loc_8c136170
loc_8c031680:
	#data 0x8c268340
loc_8c031684:
	#data bank13.loc_8c136174
loc_8c031688:
	#data bank13.loc_8c136184
loc_8c03168c:
	#data bank13.loc_8c136194
loc_8c031690:
	#data bank13.loc_8c1361a4
loc_8c031694:
	#data bank14.loc_8c14ccd0
loc_8c031698:
	#data 0x8c212bfc
	#data 0x42d80000
loc_8c0316a0:
	#data 0x44050000
loc_8c0316a4:
	#data 0x42700000
	#data 0x43d20000
loc_8c0316ac:
	#data bank12.loc_8c127af0
loc_8c0316b0:
	#data bank14.loc_8c14cd10
loc_8c0316b4:
	#data 0x42e00000
	#data 0x44040000

;----------------------------------------------
loc_8c0316bc:
	mova @(loc_8c031838,PC),r0
	mov.l @(loc_8c031840,PC),r3
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
	mov.l @(loc_8c031848,PC),r8
	mov 0x10,r0
	mov.l @(loc_8c031844,PC),r13
	mov.w @(loc_8c031830,PC),r4
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
	mov.w @(loc_8c031832,PC),r2
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
	mov.l @(loc_8c031850,PC),r11
	fadd fr3,fr2
	fmov fr2,@r2
	fmov fr2,@r3
	mov.w @(loc_8c031834,PC),r3
	mov.w @(loc_8c031836,PC),r2
	add r13,r3
	add r13,r2
	mov.l r3,@(0x1C,r15)
	mov.l r2,@(0x10,r15)
	fmov @(r0,r14),fr3
	mova @(loc_8c03184c,PC),r0
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
	mova @(loc_8c031854,PC),r0
	mov.l @(loc_8c031844,PC),r12
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
	mov.l @(loc_8c031864,PC),r4
	mov r4,r8
	fmov fr0,@(r0,r2)
	fmov fr0,@(r0,r3)
	mov r12,r3
	mova @(loc_8c031868,PC),r0
	add 0x70,r3
	mov.l r3,@(0x8,r15)
	fmov @r0,fr12
	bra loc_8c03186c
	nop

;##############################################
loc_8c031830:
	#data 0x00e0
loc_8c031832:
	#data 0x00a8
loc_8c031834:
	#data 0x008c
loc_8c031836:
	#data 0x00c4
	#align4
loc_8c031838:
	#data 0x42800000
	#data 0x43d00000
loc_8c031840:
	#data bank12.loc_8c127af0
loc_8c031844:
	#data bank14.loc_8c14cd50
loc_8c031848:
	#data bank13.loc_8c136118
loc_8c03184c:
	#data 0x43600000
loc_8c031850:
	#data bank12.loc_8c127b60
loc_8c031854:
	#data 0x43080000
	#data 0x43180000
	#data 0x43800000
	#data 0x43880000
loc_8c031864:
	#data 0x8c268340
loc_8c031868:
	#data 0x41800000

;----------------------------------------------
loc_8c03186c:
	mov.w @(loc_8c0319be,PC),r2
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
	mov.l @(loc_8c0319c8,PC),r3
	add r3,r6

loc_8c0318e0:
	mov.w @(loc_8c0319c0,PC),r0
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
	mov.l @(loc_8c0319cc,PC),r3
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
	mov.l @(loc_8c0319d0,PC),r13
	fmov @r0,fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov r13,r10
	add 0x38,r10
	mov r13,r12
	fadd fr3,fr2
	mova @(loc_8c0319d8,PC),r0
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
	mova @(loc_8c0319e0,PC),r0
	fmov @r0,fr12
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	mov 0x0B,r6
	mov r13,r5
	fadd fr12,fr3
	fmov fr3,@(r0,r8)
	fmov fr3,@(r0,r10)
	mova @(loc_8c0319e4,PC),r0
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
	mova @(loc_8c0319ec,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r12)
	fmov fr2,@(r0,r13)
	mova @(loc_8c0319f0,PC),r0
	fmov @r0,fr2
	mov 0x14,r0
	fmov @(r0,r14),fr1
	mov 0x04,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r8)
	bra loc_8c0319f4
	nop

;##############################################
loc_8c0319be:
	#data 0x0b48
loc_8c0319c0:
	#data 0x0543
	#align4
	#data 0x3e800000
loc_8c0319c8:
	#data bank13.loc_8c1360f8
loc_8c0319cc:
	#data 0xff777777
loc_8c0319d0:
	#data bank14.loc_8c14cdc0
	#data 0x439c0000
loc_8c0319d8:
	#data 0x43a40000
	#data 0x43850000
loc_8c0319e0:
	#data 0x438d0000
loc_8c0319e4:
	#data 0x3f400000
	#data 0x3f000000
loc_8c0319ec:
	#data 0x43c90000
loc_8c0319f0:
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
	mova @(loc_8c031a94,PC),r0
	mov.l @(loc_8c031a90,PC),r13
	fldi0 fr4
	mov.w @(loc_8c031a8e,PC),r3
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
	mova @(loc_8c031a98,PC),r0
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
	mova @(loc_8c031a9c,PC),r0
	fmov @r0,fr2
	mov 0x10,r0
	fmov fr2,@(r0,r13)
	mova @(loc_8c031aa0,PC),r0
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
	mov.l @(loc_8c031aa4,PC),r3
	mov.l r2,@(0x38,r13)
	mov.l r9,@(0x3C,r13)
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c031aa8,PC),r2
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
loc_8c031a8e:
	#data 0x0914
	#align4
loc_8c031a90:
	#data bank14.loc_8c14cb5c
loc_8c031a94:
	#data 0x43700000
loc_8c031a98:
	#data 0x3f75c28f
loc_8c031a9c:
	#data 0x3fa00000
loc_8c031aa0:
	#data 0x3f700000
loc_8c031aa4:
	#data bank11.loc_8c11b800
loc_8c031aa8:
	#data bank12.loc_8c1244b0

;==============================================
loc_8c031aac:
	sts.l pr,@-r15
	mov.l @(loc_8c031c24,PC),r2
	mov 0x01,r3
	mov.l @(loc_8c031c28,PC),r1
	jsr @r1
	mov.l r3,@r2
	mov.l @(loc_8c031c2c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c031c30,PC),r1
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
	mov.l @(loc_8c031c34,PC),r13
	jsr @r13
	nop
	mov.l @(loc_8c031c3c,PC),r11
	mov.l @(loc_8c031c40,PC),r14
	mov.l @(loc_8c031c38,PC),r9
	mov.l @(loc_8c031c24,PC),r10
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
	mov.l @(loc_8c031c4c,PC),r5
	mov 0x01,r4
	mov.l @(loc_8c031c44,PC),r6
	mov 0x00,r7
	mov r5,r2
	mov.l @(loc_8c031c48,PC),r12
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
	mov.l @(loc_8c031c54,PC),r1
	mov 0x01,r7
	mov.l @(loc_8c031c50,PC),r3
	mov.l r14,@-r15
	mov.b @r1,r2
	tst r2,r2
	bf.s loc_8c031b6e
	mov.l @r3,r6
	mov 0x4C,r0
	mov.b @(r0,r6),r0
	cmp/eq 0x02,r0
	bf loc_8c031b6e
	mov.l @(loc_8c031c58,PC),r3
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
	mov.l @(loc_8c031c5c,PC),r3
	mov.b @r3,r2
	add 0xFF,r2
	cmp/eq r4,r2
	bf loc_8c031bb6
	mov.l @(loc_8c031c60,PC),r3
	mov.b @r3,r4
	tst r7,r4
	bt loc_8c031b8c
	bra loc_8c031b8e
	mov 0x00,r4

loc_8c031b8c:
	mov r7,r4

loc_8c031b8e:
	mov r4,r14
	mov.l @(loc_8c031c4c,PC),r3
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
	mov.l @(loc_8c031c64,PC),r1
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
	mov.l @(loc_8c031c68,PC),r5
	mov 0x00,r14
	mov.l @(loc_8c031c4c,PC),r10
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
	mov.l @(loc_8c031c6c,PC),r3
	jsr @r3
	mov.l @r12,r4
	tst r0,r0
	bt loc_8c031bf2
	mov.l @(loc_8c031c70,PC),r3
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
loc_8c031c24:
	#data 0x8c2152d4
loc_8c031c28:
	#data bank11.loc_8c11bfc0
loc_8c031c2c:
	#data loc_8c030ee8
loc_8c031c30:
	#data loc_8c03a004
loc_8c031c34:
	#data bank17.loc_8c17878a
loc_8c031c38:
	#data bank17.loc_8c178794
loc_8c031c3c:
	#data bank17.loc_8c17879a
loc_8c031c40:
	#data 0x00028c58
loc_8c031c44:
	#data 0x8c1f9d6c
loc_8c031c48:
	#data 0x8c1f9d6e
loc_8c031c4c:
	#data 0x8c26822c
loc_8c031c50:
	#data 0x8c26823c
loc_8c031c54:
	#data 0x8c212c9c
loc_8c031c58:
	#data 0x8c212c9d
loc_8c031c5c:
	#data 0x8c213044
loc_8c031c60:
	#data 0x8c2142a7
loc_8c031c64:
	#data 0x8c212c02
loc_8c031c68:
	#data bank14.loc_8c14cf7c
loc_8c031c6c:
	#data bank17.loc_8c17a4b4
loc_8c031c70:
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
	mov.l @(loc_8c031d6c,PC),r10
	mov 0x00,r3
	mov.l @(loc_8c031d68,PC),r4
	mov 0x00,r14
	mov.l @(loc_8c031d60,PC),r11
	add r10,r3
	mov.l @(loc_8c031d64,PC),r12
	mov 0x02,r13
	mov r14,r9
	mov.l r14,@r12
	mov.l r14,@r11
	mov.l r4,@(0xC,r15)
	mov.l r4,@(0x14,r15)
	mov.l r3,@(0x10,r15)

loc_8c031ca2:
	mov.l @(loc_8c031d70,PC),r0
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
	mov.l @(loc_8c031d74,PC),r3
	shll r2
	add r10,r2
	mov.l r14,@(0x4,r15)
	add r3,r4
	mov r4,r8
	mov.l r4,@r15
	mov.l r2,@(0x8,r15)

loc_8c031cd0:
	mov.l @(loc_8c031d78,PC),r3
	mov.l @(0x8,r15),r4
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	mov 0x76,r0
	mov.w @(r0,r4),r2
	mov.l @r12,r3
	extu.w r2,r2
	add r2,r3
	mov.w @(loc_8c031d5a,PC),r2
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
	mov.w @(loc_8c031d5c,PC),r3
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
	mov.l @(loc_8c031d78,PC),r3
	add 0x05,r0
	shll2 r0
	jsr @r3
	mov.l @(r0,r2),r4
	mov r0,r4
	mov.l @r4,r2
	mov.w @(loc_8c031d5c,PC),r3
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
loc_8c031d5a:
	#data 0x2710
loc_8c031d5c:
	#data 0x0100
	#align4
loc_8c031d60:
	#data 0x8c1f9d78
loc_8c031d64:
	#data 0x8c1f9d74
loc_8c031d68:
	#data 0x8c1f9d6c
loc_8c031d6c:
	#data bank14.loc_8c14cf7c
loc_8c031d70:
	#data 0x8c212be0
loc_8c031d74:
	#data 0x8c1f9d6e
loc_8c031d78:
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
	mov.l @(loc_8c031ea0,PC),r11
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
	mov.l @(loc_8c031ea4,PC),r0
	add r11,r1
	mov r3,r2
	shll r3
	add r2,r3
	mov.l @(loc_8c031ea8,PC),r2
	shll2 r3
	mov.l @(r0,r3),r3
	mov.l r3,@r1
	mov.l @r2,r4
	mov.b @r4,r4
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c031ddc
	mov.w @(loc_8c031e9e,PC),r1
	mov.l @(loc_8c031eac,PC),r0
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
	mov.l @(loc_8c031eb0,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c031e62

loc_8c031dec:
	mov r9,r3
	mov.l @(loc_8c031eb4,PC),r2
	shll r3
	mov.l @(loc_8c031eb8,PC),r1
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
	mov.l @(loc_8c031ebc,PC),r3
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
	mov.l @(loc_8c031ec0,PC),r1
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
	mov.l @(loc_8c031ec4,PC),r3
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
	mov.l @(loc_8c031ebc,PC),r3
	jsr @r3
	mov.l @r8,r4
	tst r0,r0
	bt loc_8c031e98
	mov.l @(loc_8c031ec8,PC),r3
	jsr @r3
	mov.l @r12,r4

loc_8c031e98:
	mov.l @r15,r2
	bra loc_8c031ecc
	nop

;##############################################
loc_8c031e9e:
	#data 0x05a4
	#align4
loc_8c031ea0:
	#data 0x8c26822c
loc_8c031ea4:
	#data bank14.loc_8c14cf18
loc_8c031ea8:
	#data 0x8c26823c
loc_8c031eac:
	#data 0x8c268865
loc_8c031eb0:
	#data 0x8c212c9c
loc_8c031eb4:
	#data 0x8c1f9d6e
loc_8c031eb8:
	#data 0x8c1f9d6c
loc_8c031ebc:
	#data bank17.loc_8c17a4b4
loc_8c031ec0:
	#data bank14.loc_8c14cf10
loc_8c031ec4:
	#data bank17.loc_8c17a51e
loc_8c031ec8:
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
	mov.l @(loc_8c031f34,PC),r4
	mov 0x10,r6
	mov.l @(loc_8c031f38,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.l @(loc_8c031f3c,PC),r4
	bsr loc_8c031f10
	nop
	fldi1 fr4
	bra loc_8c031f24
	lds.l @r15+,pr

loc_8c031f10:
	sts.l pr,@-r15
	mov.l @(loc_8c031f40,PC),r3
	mov r4,r2
	mov.l @(loc_8c031f34,PC),r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c031f44,PC),r2
	mov.l @(loc_8c031f34,PC),r4
	jmp @r2
	lds.l @r15+,pr

loc_8c031f24:
	mov.l @(loc_8c031f48,PC),r3
	mov.l @(loc_8c031f4c,PC),r1
	mov r3,r2
	fmov fr4,@r3
	jmp @r1
	fmov @r2,fr4

loc_8c031f30:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c031f34:
	#data 0x8c26a8f4
loc_8c031f38:
	#data bank12.loc_8c129728
loc_8c031f3c:
	#data bank14.loc_8c14cf8c
loc_8c031f40:
	#data bank12.loc_8c1294c8
loc_8c031f44:
	#data bank12.loc_8c1236e0
loc_8c031f48:
	#data 0x8c26a900
loc_8c031f4c:
	#data bank12.loc_8c123680

;==============================================
loc_8c031f50:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c031f9c,PC),r3
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
	mov.l @(loc_8c031f9c,PC),r3
	jsr @r3
	mov 0x01,r6
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c031f9c:
	#data bank02.loc_8c027366

;==============================================
loc_8c031fa0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r13
	shll2 r13
	mov.l @(loc_8c032118,PC),r0
	mov r4,r14
	mov.l r13,@r15
	mov.l @(loc_8c03211c,PC),r3
	mov.l @(r0,r13),r13
	jsr @r3
	mov 0x03,r4
	mov.w @(loc_8c0320fa,PC),r0
	mov.l r13,@(r0,r14)
	mov.l @r13,r3
	mov.w @(loc_8c0320fc,PC),r0
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
	mov.l @(loc_8c032120,PC),r0
	mov.l @r15,r2
	mov.l @(r0,r2),r3
	mov 0x01,r2
	mov.w @(loc_8c0320fe,PC),r0
	mov.l r3,@(r0,r14)
	add 0xAD,r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c032100,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c032124,PC),r0
	mov.b @(r0,r3),r2
	mov.w @(loc_8c032102,PC),r0
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c032104,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c032128,PC),r0
	mov.b @(r0,r3),r2
	mov 0x30,r0
	mov.w @(loc_8c032106,PC),r3
	mov.b r2,@(r0,r14)
	mov r3,r0
	nop
	add 0x32,r0
	mov.w r3,@(r0,r14)
	mov.w @(loc_8c032104,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x34,r0
	bf.s loc_8c032028
	mov 0x08,r6
	mov.w @(loc_8c03210a,PC),r0
	mov.w @(loc_8c032108,PC),r2
	mov.w r2,@(r0,r14)

loc_8c032028:
	mov.w @(loc_8c032102,PC),r0
	mov.w @(r0,r14),r5
	mov.w @(loc_8c03210c,PC),r0 ;0x52d
	mov.b @(r0,r14),r4
	mov.w @(loc_8c03210e,PC),r0
	shll2 r4
	shll2 r4
	mov.l @(r0,r14),r3
	shll2 r4
	shll r4
	shll r4
	add r3,r4
	mov.l @(loc_8c03212c,PC),r3
	jsr @r3
	nop
	mov.l @(0x18,r13),r2
	mov.w @(loc_8c032110,PC),r0
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
	mov.l @(loc_8c032130,PC),r3
	mov 0x01,r6
	add r13,r2
	mov.l r2,@(r0,r14)
	mov 0x3B,r2
	mov.w @(loc_8c032100,PC),r0
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
	mov.w @(loc_8c032112,PC),r3
	add r3,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c032134,PC),r2
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
	mov.l @(loc_8c032138,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c032114,PC),r4
	extu.b r0,r0
	mov.l @(loc_8c03213c,PC),r5
	and 0x03,r0
	mov.l @(loc_8c032140,PC),r2
	add r0,r4
	jsr @r2
	mov 0x01,r6
	mov.l @(loc_8c032148,PC),r3
	mov.l @(loc_8c03213c,PC),r4
	mov.l @(loc_8c032144,PC),r14
	jsr @r3
	mov r14,r5
	mov 0x00,r5
	mov r14,r6
	bra loc_8c032156
	mov r14,r4

;##############################################
loc_8c0320fa:
	#data 0x0528
loc_8c0320fc:
	#data 0x015c
loc_8c0320fe:
	#data 0x0180
loc_8c032100:
	#data 0x0524
loc_8c032102:
	#data 0x012e
loc_8c032104:
	#data 0x052c
loc_8c032106:
	#data 0x0100
loc_8c032108:
	#data 0x0200
loc_8c03210a:
	#data 0x0132
loc_8c03210c:
	#data 0x052d
loc_8c03210e:
	#data 0x0164
loc_8c032110:
	#data 0x016c
loc_8c032112:
	#data 0x010c
loc_8c032114:
	#data 0x02bd
	#align4
loc_8c032118:
	#data bank13.loc_8c135574
loc_8c03211c:
	#data bank02.loc_8c027b30
loc_8c032120:
	#data bank13.loc_8c135594
loc_8c032124:
	#data bank13.loc_8c1355d4
loc_8c032128:
	#data bank13.loc_8c13565c
loc_8c03212c:
	#data loc_8c033aca
loc_8c032130:
	#data 0x0ce30000
loc_8c032134:
	#data bank02.loc_8c02738a
loc_8c032138:
	#data bank11.loc_8c11e730
loc_8c03213c:
	#data 0x0cc00000
loc_8c032140:
	#data bank02.loc_8c027366
loc_8c032144:
	#data 0x0ce60000
loc_8c032148:
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
	mov.l @(loc_8c032268,PC),r3
	mov.l @(loc_8c032264,PC),r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c03226c,PC),r2
	jsr @r2
	mov 0x0C,r4
	mov.l @(loc_8c032270,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03226c,PC),r2
	mov 0x00,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c032184:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c03227c,PC),r3
	mov.l @(loc_8c032278,PC),r4
	mov.l @(loc_8c032274,PC),r14
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
	mov.l @(loc_8c032268,PC),r3
	mov.l @(loc_8c032264,PC),r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c03226c,PC),r2
	jsr @r2
	mov 0x0D,r4
	mov.l @(loc_8c032270,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03226c,PC),r2
	mov 0x00,r4
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0321d2:
	mov.l @(loc_8c032284,PC),r3
	mov.w @(loc_8c03225a,PC),r4
	mov.l @(loc_8c032280,PC),r5
	jmp @r3
	mov 0x01,r6

;==============================================
loc_8c0321dc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c032284,PC),r3
	mov.w @(loc_8c03225c,PC),r4
	mov.l @(loc_8c032274,PC),r5
	jsr @r3
	mov 0x01,r6
	mov.l @(loc_8c03227c,PC),r2
	mov.l @(loc_8c032274,PC),r4
	mov.l @(loc_8c032288,PC),r14
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
	mov.l @(loc_8c032268,PC),r3
	mov.l @(loc_8c032288,PC),r4
	mov.l @(loc_8c03228c,PC),r5
	jsr @r3
	nop
	mov.l @(loc_8c03226c,PC),r2
	mov.w @(loc_8c03225e,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c032270,PC),r3
	mov.l @(loc_8c032288,PC),r4
	jsr @r3
	mov 0x00,r5
	mov.l @(loc_8c03226c,PC),r2
	mov 0x00,r4
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c03223e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c03226c,PC),r3
	mov.w @(loc_8c032260,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c032294,PC),r2
	mov.l @(loc_8c032290,PC),r14
	mov.l @(loc_8c032298,PC),r12
	mov.l r2,@r14
	bra loc_8c0322ae
	mov 0x00,r13

;##############################################
loc_8c03225a:
	#data 0x02c5
loc_8c03225c:
	#data 0x0093
loc_8c03225e:
	#data 0x0850
loc_8c032260:
	#data 0x0c10
	#align4
loc_8c032264:
	#data 0x00020000
loc_8c032268:
	#data bank02.loc_8c02ded6
loc_8c03226c:
	#data bank11.loc_8c11b800
loc_8c032270:
	#data bank12.loc_8c1240a0
loc_8c032274:
	#data 0x0ce60000
loc_8c032278:
	#data 0x0ce2ea00
loc_8c03227c:
	#data loc_8c03552a
loc_8c032280:
	#data 0x0cd00000
loc_8c032284:
	#data bank02.loc_8c027366
loc_8c032288:
	#data 0x0cc00000
loc_8c03228c:
	#data 0x00200000
loc_8c032290:
	#data 0x8c26a904
loc_8c032294:
	#data 0x0cea0000
loc_8c032298:
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
	mov.l @(loc_8c032390,PC),r3
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
	mov.l @(loc_8c032394,PC),r3
	mov r5,r13
	jsr @r3
	mov.l r6,@r15
	mov.l @r15,r2
	mov.l @(loc_8c032398,PC),r11
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
	mov.l @(loc_8c03239c,PC),r14
	mov.l r13,@-r15
	mov.l @(loc_8c0323a0,PC),r2
	mov.w @(loc_8c03238a,PC),r0
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.l @r14,r4
	mov r4,r0
	nop
	mov.w @(loc_8c03238c,PC),r1
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8c0323a4
	cmp/eq 0x01,r0
	bt loc_8c0323ac
	bra loc_8c0323b2
	nop

;##############################################
loc_8c03238a:
	#data 0x0094
loc_8c03238c:
	#data 0x0084
	#align4
loc_8c032390:
	#data loc_8c03552a
loc_8c032394:
	#data bank11.loc_8c11b800
loc_8c032398:
	#data bank12.loc_8c122fd0
loc_8c03239c:
	#data 0x8c26823c
loc_8c0323a0:
	#data 0x0c420000

;----------------------------------------------
loc_8c0323a4:
	mov.w @(loc_8c03247e,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c0323b2

loc_8c0323ac:
	mov.w @(loc_8c032480,PC),r0
	mov.l @(loc_8c032490,PC),r3
	mov.l r3,@(r0,r4)

loc_8c0323b2:
	mov.l @(loc_8c032494,PC),r4
	mov.l @(loc_8c032498,PC),r3
	mov.l @r14,r5
	mov.w @(loc_8c032480,PC),r0
	jsr @r3
	mov.l @(r0,r5),r5
	mov.l @(loc_8c0324a4,PC),r4
	mov.l @(loc_8c0324a8,PC),r2
	mov.l @(loc_8c03249c,PC),r6
	mov.l @(loc_8c0324a0,PC),r5
	jsr @r2
	nop
	mov.w @(loc_8c032482,PC),r4
	mov.l @(loc_8c032494,PC),r5
	mov.l @(loc_8c0324ac,PC),r13
	jsr @r13
	mov 0x00,r6
	mov.l @r14,r3
	mov 0x29,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0323e6
	mov.w @(loc_8c032484,PC),r4
	mov.l @(loc_8c0324b0,PC),r5
	bra loc_8c0323ec
	mov 0x00,r6

loc_8c0323e6:
	mov.w @(loc_8c032486,PC),r4
	mov 0x00,r6
	mov.l @(loc_8c0324b0,PC),r5

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
	mov.l @(loc_8c0324b4,PC),r10
	mov.l @(loc_8c032490,PC),r11
	mov.w @(loc_8c032488,PC),r8

loc_8c032412:
	mul.l r8,r14
	mov.l @(loc_8c0324b8,PC),r3
	mov.w @(loc_8c03248a,PC),r0
	sts macl,r13
	add r3,r13
	mov.b @(r0,r13),r2
	mov.l @(loc_8c0324bc,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r1
	mov.w @(loc_8c03248c,PC),r0
	mov.l r1,@(r0,r13)
	mov.l @(loc_8c0324c0,PC),r1
	mov.w @(loc_8c032480,PC),r0
	mov.l @r1,r2
	mov.l @(r0,r2),r3
	cmp/eq r11,r3
	bf.s loc_8c03243a
	mov r14,r4
	add 0x06,r4

loc_8c03243a:
	mov.l @(loc_8c0324c4,PC),r3
	mov r4,r12
	shll2 r12
	add r3,r12
	mov.l @r12,r2
	tst r2,r2
	bt loc_8c032454
	mov.w @(loc_8c03248c,PC),r0
	mov r10,r6
	mov.l @(loc_8c0324a8,PC),r2
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
	mov.l @(loc_8c0324a4,PC),r4
	mov.l @(loc_8c0324a8,PC),r3
	mov.l @(loc_8c0324c8,PC),r6
	mov.l @(loc_8c0324cc,PC),r5
	jsr @r3
	nop
	bra loc_8c0323f8
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03247e:
	#data 0x0085
loc_8c032480:
	#data 0x0094
loc_8c032482:
	#data 0x0295
loc_8c032484:
	#data 0x0098
loc_8c032486:
	#data 0x0097
loc_8c032488:
	#data 0x05a4
loc_8c03248a:
	#data 0x055c
loc_8c03248c:
	#data 0x0184
	#align4
loc_8c032490:
	#data 0x0c810000
loc_8c032494:
	#data 0x0cc00000
loc_8c032498:
	#data loc_8c03552a
loc_8c03249c:
	#data 0x0001f000
loc_8c0324a0:
	#data 0x0cd85000
loc_8c0324a4:
	#data 0x0ce80000
loc_8c0324a8:
	#data bank12.loc_8c129668
loc_8c0324ac:
	#data bank02.loc_8c027366
loc_8c0324b0:
	#data 0x0ce60000
loc_8c0324b4:
	#data 0x00008000
loc_8c0324b8:
	#data 0x8c268340
loc_8c0324bc:
	#data bank13.loc_8c1355b4
loc_8c0324c0:
	#data 0x8c26823c
loc_8c0324c4:
	#data bank14.loc_8c14d020
loc_8c0324c8:
	#data 0x0000bc00
loc_8c0324cc:
	#data 0x0cc49000

;==============================================
loc_8c0324d0:
	mov.l r14,@-r15
	mov.l @(loc_8c0325a4,PC),r14
	mov.w @(loc_8c032590,PC),r0
	mov.l @(loc_8c0325a8,PC),r2
	mov.w @(loc_8c032592,PC),r1
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c0324f4
	mov.w @(loc_8c032590,PC),r0
	mov.l @(loc_8c0325ac,PC),r3
	mov.l @r14,r2
	mov.l r3,@(r0,r2)

loc_8c0324f4:
	mov.l @(loc_8c0325b4,PC),r13
	mov 0x00,r6
	mov.l @(loc_8c0325b0,PC),r12
	mov r13,r5
	jsr @r12
	mov 0x3E,r4
	mov.w @(loc_8c032590,PC),r0
	mov.l @r14,r5
	mov.l @(loc_8c0325b8,PC),r3
	mov.l @(r0,r5),r5
	jsr @r3
	mov r13,r4
	mov.w @(loc_8c032594,PC),r4
	mov.l @(loc_8c0325bc,PC),r5
	jsr @r12
	mov 0x00,r6
	mov.w @(loc_8c032596,PC),r4
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
	mov.l @(loc_8c0325a4,PC),r12
	mov.w @(loc_8c032598,PC),r1
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
	mov.w @(loc_8c03259a,PC),r4
	mov r4,r14
	bra loc_8c032566
	add 0x01,r14

loc_8c032558:
	mov.w @(loc_8c03259c,PC),r4
	mov r4,r14
	bra loc_8c032566
	add 0x01,r14

loc_8c032560:
	mov.w @(loc_8c03259e,PC),r4
	mov r4,r14
	add 0x01,r14

loc_8c032566:
	mov.l @(loc_8c0325b0,PC),r2
	mov.l @(loc_8c0325bc,PC),r5
	jsr @r2
	mov 0x00,r6
	mov.l @(loc_8c0325b0,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c0325b4,PC),r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0325a0,PC),r0
	mov 0x01,r3
	mov.l @r12,r4
	mov.b @(r0,r4),r4
	xor r4,r3
	tst r3,r3
	bt.s loc_8c0325c0
	mov.l @r12,r5
	mov.w @(loc_8c032590,PC),r0
	mov.l @(loc_8c0325a8,PC),r1
	bra loc_8c0325c6
	mov.l r1,@(r0,r5)

;##############################################
loc_8c032590:
	#data 0x0094
loc_8c032592:
	#data 0x0084
loc_8c032594:
	#data 0x029a
loc_8c032596:
	#data 0x029b
loc_8c032598:
	#data 0x00ad
loc_8c03259a:
	#data 0x029c
loc_8c03259c:
	#data 0x02b9
loc_8c03259e:
	#data 0x02bb
loc_8c0325a0:
	#data 0x009b
	#align4
loc_8c0325a4:
	#data 0x8c26823c
loc_8c0325a8:
	#data 0x0c810000
loc_8c0325ac:
	#data 0x0c420000
loc_8c0325b0:
	#data bank02.loc_8c027366
loc_8c0325b4:
	#data 0x0cc00000
loc_8c0325b8:
	#data loc_8c03552a
loc_8c0325bc:
	#data 0x0ce80000

;----------------------------------------------
loc_8c0325c0:
	mov.w @(loc_8c0326da,PC),r0
	mov.l @(loc_8c0326f0,PC),r2
	mov.l r2,@(r0,r5)

loc_8c0325c6:
	mov r4,r3
	shll r4
	mov.l @(loc_8c0326f4,PC),r9
	add r3,r4
	shll2 r4
	mov.w @(loc_8c0326dc,PC),r0
	mov r9,r3
	add 0x18,r3
	mov.l r4,@r15
	add r3,r4
	mov.l @r4,r4
	mov 0x0C,r8
	mov.l @r12,r2
	mov 0x00,r14
	mov.b @(r0,r4),r3
	mov.w @(loc_8c0326de,PC),r0
	mov.l @(loc_8c0326f8,PC),r13
	mov.l @(loc_8c0326fc,PC),r11
	mov.b r3,@(r0,r2)

loc_8c0325ec:
	mov.l @r15,r3
	mov r9,r0
	nop
	add 0x18,r0
	mov r13,r5
	add r3,r0
	mov.l @(loc_8c032704,PC),r3
	mov.l @(r0,r14),r10
	mov 0x01,r6
	mov.w @(loc_8c0326dc,PC),r0
	mov.b @(r0,r10),r4
	mov.l @(loc_8c032700,PC),r0
	shll r4
	mov.w @(r0,r4),r4
	jsr @r3
	extu.w r4,r4
	add 0x04,r14
	cmp/hs r8,r14
	bf.s loc_8c0325ec
	add r11,r13
	mov.w @(loc_8c0326e0,PC),r0
	mov.l @r12,r5
	mov.l @(loc_8c032708,PC),r6
	mov.b @(r0,r5),r0
	cmp/eq 0x01,r0
	bf.s loc_8c032624
	mov r6,r4
	mov.l @(loc_8c03270c,PC),r4

loc_8c032624:
	mov.w @(loc_8c0326e0,PC),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x02,r0
	bf loc_8c03262e
	mov r6,r4

loc_8c03262e:
	mov.w @(loc_8c0326da,PC),r0
	mov.l @(loc_8c032710,PC),r2
	mov.l @(r0,r5),r5
	add r2,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c032714,PC),r3
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
	mov.l @(loc_8c032720,PC),r2
	mov 0x29,r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(loc_8c032718,PC),r13
	mov.b @(r0,r3),r1
	mov.l @(loc_8c03271c,PC),r14
	tst r1,r1
	bf loc_8c032676
	mov.w @(loc_8c0326e2,PC),r4
	mov.l @(loc_8c032724,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.w @(loc_8c0326e4,PC),r4
	mov 0x00,r6
	bra loc_8c032684
	mov r13,r5

loc_8c032676:
	mov.w @(loc_8c0326e6,PC),r4
	mov.l @(loc_8c032724,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.w @(loc_8c0326e8,PC),r4
	mov r13,r5
	mov 0x00,r6

loc_8c032684:
	jsr @r14
	nop
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(loc_8c032714,PC),r2
	mov.l @(loc_8c032710,PC),r5
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
	mov.l @(loc_8c032724,PC),r4
	mov.l @(loc_8c032728,PC),r13
	mov.w @(loc_8c0326ea,PC),r3
	mov.l r4,@r13
	mov.l @(0x8,r4),r8
	mov.l @(loc_8c03272c,PC),r4
	mov r4,r9
	mov r4,r10
	mov.l @(loc_8c032730,PC),r4
	mov r4,r12
	add r3,r4
	bra loc_8c0327d4
	mov.l r4,@r15

;----------------------------------------------
loc_8c0326c2:
	mov.l @(loc_8c032720,PC),r4
	mov 0x29,r0
	mov.l @r4,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf.s loc_8c032734
	mov r12,r14
	mov.w @(loc_8c0326ec,PC),r0
	mov.l @(r0,r14),r5
	mov.l @r5,r4
	bra loc_8c03276e
	add r5,r4

;##############################################
loc_8c0326da:
	#data 0x0094
loc_8c0326dc:
	#data 0x052c
loc_8c0326de:
	#data 0x008f
loc_8c0326e0:
	#data 0x00ad
loc_8c0326e2:
	#data 0x02a4
loc_8c0326e4:
	#data 0x02a5
loc_8c0326e6:
	#data 0x02a8
loc_8c0326e8:
	#data 0x02a9
loc_8c0326ea:
	#data 0x21d8
loc_8c0326ec:
	#data 0x0184
	#align4
loc_8c0326f0:
	#data 0x0c420000
loc_8c0326f4:
	#data 0x8c2895f0
loc_8c0326f8:
	#data 0x0cdd0000
loc_8c0326fc:
	#data 0x00010000
loc_8c032700:
	#data bank13.loc_8c1354fc
loc_8c032704:
	#data bank02.loc_8c02738a
loc_8c032708:
	#data 0x00024000
loc_8c03270c:
	#data 0x0002c000
loc_8c032710:
	#data 0x0cc00000
loc_8c032714:
	#data loc_8c03552a
loc_8c032718:
	#data 0x0cd00000
loc_8c03271c:
	#data bank02.loc_8c027366
loc_8c032720:
	#data 0x8c26823c
loc_8c032724:
	#data 0x0ce80000
loc_8c032728:
	#data 0x8c26a90c
loc_8c03272c:
	#data bank14.loc_8c14d053
loc_8c032730:
	#data 0x8c268340

;----------------------------------------------
loc_8c032734:
	mov.w @(loc_8c032838,PC),r0
	mov 0x20,r6
	mov r11,r5
	mov.b @(r0,r14),r2
	cmp/ge r6,r2
	bt.s loc_8c032750
	mov 0x01,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_8c03284c,PC),r6
	shad r2,r4
	tst r6,r4
	bf loc_8c03275c
	bra loc_8c032760
	nop

loc_8c032750:
	mov.b @(r0,r14),r2
	mov.l @(loc_8c032850,PC),r6
	add 0xE0,r2
	shad r2,r4
	tst r6,r4
	bt loc_8c032760

loc_8c03275c:
	mov 0x03,r4
	mov r4,r5

loc_8c032760:
	mov.w @(loc_8c03283a,PC),r0
	mov.l @(r0,r14),r6
	mov r5,r0
	nop
	shll2 r0
	mov.l @(r0,r6),r4
	add r6,r4

loc_8c03276e:
	mov.l @(loc_8c032858,PC),r3
	mov.l @(loc_8c032854,PC),r11
	jsr @r3
	mov r11,r5
	mov.b @r9,r7
	mov.w @(loc_8c03283c,PC),r4
	extu.b r7,r7
	mov.w @(loc_8c03283e,PC),r0
	shll2 r7
	mov.w @(loc_8c032840,PC),r5
	shll2 r7
	mov.b @(r0,r14),r0
	add r8,r7
	add r4,r7
	mov.l @(loc_8c03285c,PC),r4
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
	mov.w @(loc_8c032842,PC),r4
	extu.b r6,r6
	mov.l @(loc_8c032860,PC),r7
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
	mov.w @(loc_8c032844,PC),r4
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
	mov.l @(loc_8c032864,PC),r3
	mov.w @(loc_8c032846,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c032868,PC),r12
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
	mov.l @(loc_8c032864,PC),r12
	mov.w @(loc_8c032848,PC),r4
	mov.l @(loc_8c03286c,PC),r14
	mov.l @(loc_8c032870,PC),r3
	jsr @r12
	mov.l r3,@r14
	mov.l @(loc_8c032868,PC),r11
	bra loc_8c032886
	mov 0x00,r13

;##############################################
loc_8c032838:
	#data 0x052c
loc_8c03283a:
	#data 0x0184
loc_8c03283c:
	#data 0x00a0
loc_8c03283e:
	#data 0x04c9
loc_8c032840:
	#data 0x0200
loc_8c032842:
	#data 0x0100
loc_8c032844:
	#data 0x05a4
loc_8c032846:
	#data 0x0c90
loc_8c032848:
	#data 0x0810
	#align4
loc_8c03284c:
	#data 0xd0010000
loc_8c032850:
	#data 0x04000042
loc_8c032854:
	#data 0x0ce60000
loc_8c032858:
	#data loc_8c03552a
loc_8c03285c:
	#data bank14.loc_8c14d050
loc_8c032860:
	#data 0x0ce61000
loc_8c032864:
	#data bank11.loc_8c11b800
loc_8c032868:
	#data bank12.loc_8c122fd0
loc_8c03286c:
	#data 0x8c26a910
loc_8c032870:
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
	mov.w @(loc_8c032964,PC),r4
	jsr @r12
	nop
	mov.l @(loc_8c032974,PC),r2
	mov.l @(loc_8c032970,PC),r4
	jsr @r2
	mov 0x00,r5
	mov.l @(loc_8c032978,PC),r3
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c0328e2
	mov.l @(loc_8c032980,PC),r3
	mov.w @(loc_8c032966,PC),r4
	mov.l @(loc_8c03297c,PC),r5
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c032988,PC),r2
	mov.l @(loc_8c03297c,PC),r4
	mov.l @(loc_8c032984,PC),r5
	jsr @r2
	nop
	jsr @r12
	mov 0x00,r4
	mov.l @(loc_8c032990,PC),r3
	mov.l @(loc_8c03298c,PC),r5
	jsr @r3
	mov 0x0B,r4
	mov.w @(loc_8c032968,PC),r4
	jsr @r12
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c032998,PC),r2
	mov 0x00,r6
	mov.l @(loc_8c032994,PC),r4
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
	mov.l @(loc_8c03299c,PC),r4
	mov.l @(loc_8c0329a0,PC),r14
	mov.l @(loc_8c0329a4,PC),r3
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l r4,@r14
	mov.l r4,@r3
	mov.l @(loc_8c0329a8,PC),r2
	mov.w @(loc_8c03296a,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c0329ac,PC),r12
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
	mov.l @(loc_8c032978,PC),r4
	mov.w @(loc_8c03296c,PC),r0
	mov.l @r4,r2
	mov.l @(loc_8c0329b0,PC),r14
	mov.l @(r0,r2),r3
	mov.l r3,@(0x8,r14)
	mov.l @r4,r2
	mov.l @(r0,r2),r3
	mov.l r3,@(0x18,r14)
	mov.l @r4,r2
	mov.l @(loc_8c0329b4,PC),r3
	mov.l @(r0,r2),r1
	add r3,r1
	mov.l @(loc_8c0329a8,PC),r3
	mov.l r1,@(0x28,r14)
	mov.l @r4,r2
	mov.l @(loc_8c0329b8,PC),r1
	mov.l @(r0,r2),r0
	mov.w @(loc_8c032964,PC),r4
	add r1,r0
	jsr @r3
	mov.l r0,@(0x38,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c032974,PC),r2
	mov 0x00,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c032964:
	#data 0x0910
loc_8c032966:
	#data 0x0095
loc_8c032968:
	#data 0x0914
loc_8c03296a:
	#data 0x0810
loc_8c03296c:
	#data 0x0094
	#align4
loc_8c032970:
	#data bank14.loc_8c14d05c
loc_8c032974:
	#data bank12.loc_8c1240a0
loc_8c032978:
	#data 0x8c26823c
loc_8c03297c:
	#data 0x0ccf8000
loc_8c032980:
	#data bank02.loc_8c027366
loc_8c032984:
	#data 0x0cc60000
loc_8c032988:
	#data loc_8c03552a
loc_8c03298c:
	#data bank14.loc_8c14d09c
loc_8c032990:
	#data bank12.loc_8c127860
loc_8c032994:
	#data bank14.loc_8c14d07c
loc_8c032998:
	#data bank12.loc_8c124080
loc_8c03299c:
	#data 0x0ce80000
loc_8c0329a0:
	#data 0x8c26a920
loc_8c0329a4:
	#data 0x8c26a928
loc_8c0329a8:
	#data bank11.loc_8c11b800
loc_8c0329ac:
	#data bank12.loc_8c122fd0
loc_8c0329b0:
	#data bank14.loc_8c14d0bc
loc_8c0329b4:
	#data 0x00200000
loc_8c0329b8:
	#data 0x00208000

;==============================================
loc_8c0329bc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c032ab8,PC),r4
	mov.w @(loc_8c032aa0,PC),r10
	mov.l @(loc_8c032ab0,PC),r3
	mov r4,r13
	mov.l @(loc_8c032aac,PC),r14
	add r4,r10
	sts.l pr,@-r15
	mov.w @(loc_8c032a9e,PC),r11
	mov.l @(loc_8c032ab4,PC),r12
	mov.l r3,@r14

loc_8c0329da:
	mov.w @(loc_8c032aa2,PC),r0
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
	mov.l @(loc_8c032abc,PC),r3
	mov.w @(loc_8c032aa4,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c032ac0,PC),r12
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
	mov.l @(loc_8c032ac8,PC),r10
	mov.w @(loc_8c032aa6,PC),r0
	mov.l @(loc_8c032ac4,PC),r14
	mov.l @(loc_8c032ab0,PC),r4
	mov.l @(loc_8c032acc,PC),r3
	mov.l r4,@r14
	mov.l @r10,r12
	mov.l @(0x8,r4),r4
	mov.l @(r0,r12),r12
	add r3,r12
	bra loc_8c032a60
	mov r12,r5

loc_8c032a52:
	mov r4,r2
	mov.l @(loc_8c032ad0,PC),r3
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
	mov.l @(loc_8c032ad0,PC),r3
	mov r4,r2
	mov r5,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c032aa8,PC),r0
	mov 0x09,r5
	mov.l @r10,r2
	mov.w @(loc_8c032aaa,PC),r1
	mov.b @(r0,r2),r3
	mov.l r3,@r15
	mov.l @r10,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf.s loc_8c032a88
	mov r5,r4
	mov 0x0D,r4

loc_8c032a88:
	mov.w @(loc_8c032aaa,PC),r1
	mov.l @r10,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c032a94
	mov r5,r4

loc_8c032a94:
	mov.l @(loc_8c032adc,PC),r9
	mov.l @(loc_8c032ad8,PC),r8
	mov.l @(loc_8c032ad4,PC),r13
	bra loc_8c032aec
	mov r4,r11

;##############################################
loc_8c032a9e:
	#data 0x05a4
loc_8c032aa0:
	#data 0x21d8
loc_8c032aa2:
	#data 0x0184
loc_8c032aa4:
	#data 0x0810
loc_8c032aa6:
	#data 0x0094
loc_8c032aa8:
	#data 0x009b
loc_8c032aaa:
	#data 0x00ad
	#align4
loc_8c032aac:
	#data 0x8c26a914
loc_8c032ab0:
	#data 0x0ce80000
loc_8c032ab4:
	#data bank14.loc_8c14d10c
loc_8c032ab8:
	#data 0x8c268340
loc_8c032abc:
	#data bank11.loc_8c11b800
loc_8c032ac0:
	#data bank12.loc_8c122fd0
loc_8c032ac4:
	#data 0x8c26a924
loc_8c032ac8:
	#data 0x8c26823c
loc_8c032acc:
	#data 0x00014000
loc_8c032ad0:
	#data bank12.loc_8c1294bc
loc_8c032ad4:
	#data 0x0cdd0000
loc_8c032ad8:
	#data 0x00010000
loc_8c032adc:
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
	mov.w @(loc_8c032ba0,PC),r3
	mov.l @r10,r4
	mul.l r3,r2
	mov.w @(loc_8c032ba2,PC),r0
	mov.l @(loc_8c032bb4,PC),r1
	mov.b @(r0,r4),r0
	sts macl,r13
	cmp/eq 0x01,r0
	bf.s loc_8c032b14
	add r1,r13
	mov.l @(loc_8c032bb8,PC),r3
	mov r12,r5
	mov.w @(loc_8c032ba4,PC),r0
	jsr @r3
	mov.b @(r0,r13),r4
	bra loc_8c032b48
	nop

loc_8c032b14:
	mov.w @(loc_8c032ba2,PC),r0
	mov.l @(loc_8c032bbc,PC),r7
	mov.b @(r0,r4),r3
	mov.w @(loc_8c032ba6,PC),r0
	tst r3,r3
	mov 0x08,r3
	mov r3,r6
	shll2 r6
	shll2 r6
	mov.l r3,@(0x4,r15)
	add r12,r6
	mov.l @(loc_8c032bc0,PC),r3
	mov.l r6,@r15
	mov.l @(r0,r13),r5
	add 0xFC,r0
	mov.l @(0x8,r6),r6
	jsr @r3
	mov.l @(r0,r13),r4
	mov.l @r15,r4
	mov 0x00,r5
	mov.l @(loc_8c032bc4,PC),r2
	mov.l @(0x8,r4),r4
	mov.w @(loc_8c032baa,PC),r3
	mov.w @(loc_8c032ba8,PC),r6
	jsr @r2
	add r3,r4

loc_8c032b48:
	mov.l @(loc_8c032bc8,PC),r3
	mov.w @(loc_8c032bac,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c032bcc,PC),r11
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
	mov.w @(loc_8c032bae,PC),r4
	mov.l @(loc_8c032bd4,PC),r5
	mov.l @(loc_8c032bd0,PC),r6
	bsr loc_8c032320
	nop
	mov.l @(loc_8c032bc8,PC),r2
	mov.w @(loc_8c032bb0,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c032bdc,PC),r3
	mov 0x00,r5
	mov.l @(loc_8c032bd8,PC),r4
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c032ba0:
	#data 0x05a4
loc_8c032ba2:
	#data 0x00ad
loc_8c032ba4:
	#data 0x0527
loc_8c032ba6:
	#data 0x0538
loc_8c032ba8:
	#data 0x0200
loc_8c032baa:
	#data 0x1600
loc_8c032bac:
	#data 0x0810
loc_8c032bae:
	#data 0x0d10
loc_8c032bb0:
	#data 0x0d50
	#align4
loc_8c032bb4:
	#data 0x8c268340
loc_8c032bb8:
	#data loc_8c039bb8
loc_8c032bbc:
	#data bank13.loc_8c1361b0
loc_8c032bc0:
	#data loc_8c039a74
loc_8c032bc4:
	#data bank12.loc_8c129728
loc_8c032bc8:
	#data bank11.loc_8c11b800
loc_8c032bcc:
	#data bank12.loc_8c122fd0
loc_8c032bd0:
	#data 0x0ce80000
loc_8c032bd4:
	#data 0x8c26a934
loc_8c032bd8:
	#data bank14.loc_8c14d114
loc_8c032bdc:
	#data bank12.loc_8c1240a0

;==============================================
loc_8c032be0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c032c38,PC),r3
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @r3,r8
	mov.l @(loc_8c032c34,PC),r14
	extu.b r8,r8
	mov.l @(loc_8c032c30,PC),r13
	mov.l @(loc_8c032c28,PC),r10
	shll2 r8
	mov.l @(loc_8c032c24,PC),r9
	mov.l @(loc_8c032c2c,PC),r12
	mov.w @(loc_8c032c20,PC),r11
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
	mova @(loc_8c032c3c,PC),r0
	mov.w @(r0,r1),r0
	braf r0
	nop

;##############################################
loc_8c032c20:
	#data 0x0850
	#align4
loc_8c032c24:
	#data bank12.loc_8c129668
loc_8c032c28:
	#data 0x0ced0000
loc_8c032c2c:
	#data 0x0cc00000
loc_8c032c30:
	#data bank02.loc_8c027366
loc_8c032c34:
	#data 0x0ce80000
loc_8c032c38:
	#data 0x8c26a95c

;8c032c1c
loc_8c032c3c:
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
	mov.l @(loc_8c032d78,PC),r0
	mov 0x00,r6
	bra loc_8c032f2a
	mov r12,r5

loc_8c032c76:
	mov.l @(loc_8c032d7c,PC),r5
	bsr loc_8c0322d4
	mov r10,r4
	bra loc_8c032f46
	nop

loc_8c032c80:
	mov.l @(loc_8c032d84,PC),r5
	mov.l @(loc_8c032d80,PC),r6
	jsr @r9
	mov r14,r4
	mov.l @(loc_8c032d88,PC),r5
	bsr loc_8c0322d4
	mov r14,r4
	bsr loc_8c032696
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c032d8c,PC),r3
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
	mov.l @(loc_8c032d98,PC),r2
	mov.l @(loc_8c032d94,PC),r4
	mov.l @(loc_8c032d90,PC),r5
	jsr @r2
	nop
	mov.w @(loc_8c032d70,PC),r4
	mov.l @(loc_8c032d9c,PC),r5
	mov.l @(loc_8c032d94,PC),r6
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
	mov.w @(loc_8c032d72,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(loc_8c032d74,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	bra loc_8c032f56
	nop

loc_8c032d28:
	mov.l @(loc_8c032da4,PC),r5
	mov.l @(loc_8c032da0,PC),r6
	jsr @r9
	mov r14,r4
	mov.w @(loc_8c032d76,PC),r4
	mov.l @(loc_8c032da8,PC),r5
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
	mov.l @(loc_8c032db0,PC),r5
	mov.l @(loc_8c032dac,PC),r6
	jsr @r9
	mov r14,r4
	mov.w @(loc_8c032d76,PC),r4
	mov.l @(loc_8c032db4,PC),r5
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
loc_8c032d70:
	#data 0x0d10
loc_8c032d72:
	#data 0x029e
loc_8c032d74:
	#data 0x029f
loc_8c032d76:
	#data 0x0810
	#align4
loc_8c032d78:
	#data bank14.loc_8c14cf98
loc_8c032d7c:
	#data 0x0cda4000
loc_8c032d80:
	#data 0x00017000
loc_8c032d84:
	#data 0x0cd8d000
loc_8c032d88:
	#data 0x0cd6f000
loc_8c032d8c:
	#data 0x8c26a90c
loc_8c032d90:
	#data 0x0000a000
loc_8c032d94:
	#data 0x0ce08000
loc_8c032d98:
	#data bank02.loc_8c02ded6
loc_8c032d9c:
	#data 0x8c26a91c
loc_8c032da0:
	#data 0x00027000
loc_8c032da4:
	#data 0x0ccb7000
loc_8c032da8:
	#data 0x8c26a92c
loc_8c032dac:
	#data 0x00014000
loc_8c032db0:
	#data 0x0cc40000
loc_8c032db4:
	#data 0x8c26a930

;----------------------------------------------
loc_8c032db8:
	mov.w @(loc_8c032ed0,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r10,r5
	mov.w @(loc_8c032ed2,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(loc_8c032ef0,PC),r5
	mov r10,r6
	bra loc_8c032f5c
	mov r11,r4

;----------------------------------------------
loc_8c032dd0:
	mov.l @(loc_8c032ef4,PC),r2
	mov 0x5C,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r0
	tst r0,r0
	bt loc_8c032de2
	mov.l @(loc_8c032ef8,PC),r3
	jsr @r3
	mov 0x00,r4

loc_8c032de2:
	mov.l @(loc_8c032efc,PC),r2
	jsr @r2
	nop
	mov.w @(loc_8c032ed4,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(loc_8c032ed6,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(loc_8c032f00,PC),r5
	mov r14,r6
	bsr loc_8c032320
	mov r11,r4
	mov.l @(loc_8c032f04,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c032f08,PC),r3
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
	mov.l @(loc_8c032ef8,PC),r1
	jsr @r1
	mov 0x01,r4
	mov.w @(loc_8c032ed8,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(loc_8c032eda,PC),r4
	mov.l @(loc_8c032f0c,PC),r5
	jsr @r13
	mov 0x00,r6
	mov.w @(loc_8c032edc,PC),r4
	mov.l @(loc_8c032f10,PC),r5
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
	mov.l @(loc_8c032ef8,PC),r2
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
	mov.w @(loc_8c032ede,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(loc_8c032ee0,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(loc_8c032f14,PC),r5
	mov r14,r6
	bra loc_8c032ebe
	mov r11,r4
	mov.w @(loc_8c032ee2,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(loc_8c032ee4,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(loc_8c032f18,PC),r5
	mov r14,r6
	bra loc_8c032ebe
	mov r11,r4

;----------------------------------------------
loc_8c032e90:
	mov.w @(loc_8c032ee6,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(loc_8c032ee8,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(loc_8c032f1c,PC),r5
	mov r14,r6
	bra loc_8c032ebe
	mov r11,r4
	mov.w @(loc_8c032eea,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r14,r5
	mov.w @(loc_8c032eec,PC),r4
	mov 0x00,r6
	jsr @r13
	mov r12,r5
	mov.l @(loc_8c032f20,PC),r5
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
loc_8c032ed0:
	#data 0x02a6
loc_8c032ed2:
	#data 0x02a7
loc_8c032ed4:
	#data 0x02ad
loc_8c032ed6:
	#data 0x02ae
loc_8c032ed8:
	#data 0x02af
loc_8c032eda:
	#data 0x02b0
loc_8c032edc:
	#data 0x0860
loc_8c032ede:
	#data 0x02b1
loc_8c032ee0:
	#data 0x02b2
loc_8c032ee2:
	#data 0x02b3
loc_8c032ee4:
	#data 0x02b4
loc_8c032ee6:
	#data 0x02b5
loc_8c032ee8:
	#data 0x02b6
loc_8c032eea:
	#data 0x02b7
loc_8c032eec:
	#data 0x02b8
	#align4
loc_8c032ef0:
	#data 0x8c26a938
loc_8c032ef4:
	#data 0x8c26823c
loc_8c032ef8:
	#data loc_8c036cc6
loc_8c032efc:
	#data bank02.loc_8c0273f4
loc_8c032f00:
	#data 0x8c26a93c
loc_8c032f04:
	#data bank02.loc_8c027ada
loc_8c032f08:
	#data bank02.loc_8c027b64
loc_8c032f0c:
	#data 0x0c420000
loc_8c032f10:
	#data 0x8c26a940
loc_8c032f14:
	#data 0x8c26a944
loc_8c032f18:
	#data 0x8c26a948
loc_8c032f1c:
	#data 0x8c26a94c
loc_8c032f20:
	#data 0x8c26a950

;----------------------------------------------
loc_8c032f24:
	mov.l @(loc_8c033038,PC),r0
	mov 0x00,r6
	mov.l @(loc_8c033034,PC),r5

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
	mov.l @(loc_8c03303c,PC),r5
	bsr loc_8c0322d4
	mov r10,r4

loc_8c032f46:
	mov.w @(loc_8c03302c,PC),r4
	mov.l @(loc_8c033040,PC),r5
	bra loc_8c032f5c
	mov r10,r6

loc_08c32f4e:
	mov.l @(loc_8c033048,PC),r5
	mov.l @(loc_8c033044,PC),r6
	jsr @r9
	mov r14,r4

loc_8c032f56:
	mov.w @(loc_8c03302e,PC),r4
	mov r14,r6
	mov.l @(loc_8c03304c,PC),r5

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
	mov.l @(loc_8c033050,PC),r4
	mov.l @(loc_8c033054,PC),r11
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
	mov.l @(loc_8c033050,PC),r3
	shll2 r5
	mov.l @(loc_8c033058,PC),r2
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
	mov.l @(loc_8c033060,PC),r11
	mov.l @(loc_8c033064,PC),r14
	mov.w @(loc_8c033030,PC),r10
	mov.l @(loc_8c03305c,PC),r8

loc_8c032fda:
	jsr @r14
	nop
	mov.l @(loc_8c033068,PC),r3
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
	mov.l @(loc_8c03306c,PC),r3
	mov r9,r1
	jsr @r3
	mov 0x64,r0
	mov.l @(loc_8c033070,PC),r2
	jsr @r2
	mov r0,r4
	mov.l @(loc_8c033074,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c033078,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03307c,PC),r3
	jsr @r3
	mov 0x00,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03307c,PC),r2
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
loc_8c03302c:
	#data 0x0c50
loc_8c03302e:
	#data 0x0810
loc_8c033030:
	#data 0x1000
	#align4
loc_8c033034:
	#data 0x0cea0000
loc_8c033038:
	#data bank14.loc_8c14cfdc
loc_8c03303c:
	#data 0x0cda0000
loc_8c033040:
	#data 0x8c26a908
loc_8c033044:
	#data 0x0002c000
loc_8c033048:
	#data 0x0cd00000
loc_8c03304c:
	#data 0x8c26a928
loc_8c033050:
	#data 0x8c2896f0
loc_8c033054:
	#data bank10.loc_8c10830c
loc_8c033058:
	#data bank10.loc_8c108348
loc_8c03305c:
	#data 0x0cc00000
loc_8c033060:
	#data 0xc4200000
loc_8c033064:
	#data bank11.loc_8c11d430
loc_8c033068:
	#data bank12.loc_8c129668
loc_8c03306c:
	#data bank12.loc_8c129128
loc_8c033070:
	#data bank02.loc_8c02823a
loc_8c033074:
	#data bank02.loc_8c027910
loc_8c033078:
	#data bank02.loc_8c02797c
loc_8c03307c:
	#data bank02.loc_8c028246

;==============================================
loc_8c033080:
	sts fpscr,r4
	mov 0xFC,r3
	mov.l @(loc_8c033130,PC),r1
	mov.l @(loc_8c03312c,PC),r2
	and r3,r4
	mov.l @(loc_8c033134,PC),r3
	lds r4,fpscr
	jsr @r3
	mov.l r2,@r1
	mov.l @(loc_8c033138,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03313c,PC),r13
	jsr @r13
	nop
	mov.l @(loc_8c033140,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c033144,PC),r4
	mov 0x00,r14
	mov.l @(loc_8c033150,PC),r12
	mov r4,r11
	mov.l @(loc_8c03314c,PC),r10
	mov.l @(loc_8c033148,PC),r9
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
	mov.l @(loc_8c033154,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c033158,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03315c,PC),r2
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c0330f8
	mov.l @(loc_8c033160,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0330f8
	mov.l @(loc_8c033164,PC),r3
	jsr @r3
	nop
	jsr @r13
	nop
	mov.l @(loc_8c033168,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03316c,PC),r3
	jsr @r3
	nop

loc_8c0330f8:
	mov.l @(loc_8c033170,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c033174,PC),r3
	mov.l @(loc_8c033178,PC),r2
	mov.l @(loc_8c03317c,PC),r1
	mov.l r14,@r3
	jsr @r1
	mov.l r14,@r2
	mov.l @(loc_8c033180,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c033184,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c033188,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03318c,PC),r1
	jsr @r1
	nop
	jsr @r10
	nop
	bra loc_8c0330b4
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c03312c:
	#data 0x8c268240
loc_8c033130:
	#data 0x8c26823c
loc_8c033134:
	#data bank01.loc_8c010540
loc_8c033138:
	#data loc_8c032fbe
loc_8c03313c:
	#data bank11.loc_8c11c0c0
loc_8c033140:
	#data loc_8c03565c
loc_8c033144:
	#data 0x8c2681dc
loc_8c033148:
	#data bank11.loc_8c11d420
loc_8c03314c:
	#data bank02.loc_8c0274b0
loc_8c033150:
	#data bank01.loc_8c0102c0
loc_8c033154:
	#data loc_8c03967a
loc_8c033158:
	#data bank01.loc_8c010458
loc_8c03315c:
	#data 0x8c212bf8
loc_8c033160:
	#data 0x8c2897a2
loc_8c033164:
	#data loc_8c031bba
loc_8c033168:
	#data bank01.loc_8c010326
loc_8c03316c:
	#data bank01.loc_8c01033c
loc_8c033170:
	#data bank04.loc_8c041dda
loc_8c033174:
	#data 0x8c2152d4
loc_8c033178:
	#data 0x8c2152d0
loc_8c03317c:
	#data loc_8c03589a
loc_8c033180:
	#data bank11.loc_8c115b34
loc_8c033184:
	#data loc_8c039632
loc_8c033188:
	#data loc_8c03973a
loc_8c03318c:
	#data loc_8c031aca

;==============================================
loc_8c033190:
	mov.l @(loc_8c0332a0,PC),r2
	mov 0x01,r3
	mov.w @(loc_8c03329c,PC),r1
	mov.l @(loc_8c0332a4,PC),r0
	mov.b r3,@r2
	rts
	mov.b r1,@r0

;==============================================
loc_8c03319e:
	mov.l @(loc_8c0332a0,PC),r6
	mov.l @(loc_8c0332a4,PC),r4
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
	mov.w @(loc_8c03329e,PC),r3
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
	mov.l @(loc_8c0332ac,PC),r2
	mov.l @(loc_8c0332a8,PC),r3
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
	mov.l @(loc_8c0332b0,PC),r3
	mov r4,r13
	jsr @r3
	mov r5,r14
	mova @(loc_8c0332b4,PC),r0
	mov.l @(loc_8c0332bc,PC),r3
	fmov @r0,fr14
	mova @(0xC4,PC),r0
	fmov @r0,fr15
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c033270
	mov.l @(loc_8c0332c0,PC),r3
	mov r15,r1
	mov r13,r2
	add 0x14,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0332c4,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c0332c8,PC),r13
	jsr @r13
	mov 0x02,r4
	mov.l @(loc_8c0332cc,PC),r3
	mov r15,r5
	mov r15,r4
	add 0x14,r5
	jsr @r3
	add 0x14,r4
	jsr @r13
	mov 0x03,r4
	mov.l @(loc_8c0332d0,PC),r2
	mov r15,r5
	mov r15,r4
	add 0x04,r5
	jsr @r2
	add 0x14,r4
	jsr @r13
	mov 0x01,r4
	mov.l @(loc_8c0332d4,PC),r3
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
	mov.l @(loc_8c0332d8,PC),r2
	fmov fr15,fr5
	jsr @r2
	fmov fr14,fr4
	mov 0x08,r0
	mov r14,r5
	fmov @(r0,r13),fr6
	mov 0x04,r0
	fmov @(r0,r13),fr5
	add 0x04,r5
	mov.l @(loc_8c0332dc,PC),r3
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
loc_8c03329c:
	#data 0x00c3
loc_8c03329e:
	#data 0x00ff
	#align4
loc_8c0332a0:
	#data 0x8c1f9d7c
loc_8c0332a4:
	#data 0x8c1f9d7d
loc_8c0332a8:
	#data 0x8c2152d8
loc_8c0332ac:
	#data bank11.loc_8c11d6d0
loc_8c0332b0:
	#data bank02.loc_8c02e1a4
loc_8c0332b4:
	#data 0x44200000
	#data 0x43f00000
loc_8c0332bc:
	#data 0x8c26823c
loc_8c0332c0:
	#data bank12.loc_8c1294c8
loc_8c0332c4:
	#data bank12.loc_8c120950
loc_8c0332c8:
	#data bank12.loc_8c1204f0
loc_8c0332cc:
	#data bank11.loc_8c11f8b0
loc_8c0332d0:
	#data bank11.loc_8c11f870
loc_8c0332d4:
	#data bank12.loc_8c120900
loc_8c0332d8:
	#data bank12.loc_8c1216c0
loc_8c0332dc:
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
	mov.w @(loc_8c0333e2,PC),r0
	mov r13,r1
	add 0x04,r1
	mov.b @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	extu.b r3,r3
	mov.w @(loc_8c0333e4,PC),r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r13
	mov.b @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	extu.b r3,r3
	mov.w @(loc_8c0333e6,PC),r0
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
	mova @(loc_8c0333f0,PC),r0
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
	mov.w @(loc_8c0333e8,PC),r0
	fmov fr4,fr0
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr5
	extu.b r3,r3
	mov.w @(loc_8c0333ea,PC),r0
	lds r3,fpul
	mov.b @(r0,r14),r3
	mova @(loc_8c033400,PC),r0
	float fpul,fr3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr2
	fmul fr5,fr3
	fmul fr5,fr2
	fmul fr4,fr2
	fmac fr0,fr3,fr2
	fmov @r0,fr3
	mov.w @(loc_8c0333ea,PC),r0
	fadd fr3,fr2
	fmov fr2,@r13
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mova @(loc_8c033404,PC),r0
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
	mova @(loc_8c033408,PC),r0
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
loc_8c0333e2:
	#data 0x013e
loc_8c0333e4:
	#data 0x013f
loc_8c0333e6:
	#data 0x0130
loc_8c0333e8:
	#data 0x013c
loc_8c0333ea:
	#data 0x013d
	#align4
	#data 0x3fd55555
loc_8c0333f0:
	#data 0x43555555
	#data 0x42d55555
	#data 0x44200000
	#data 0x40092492
loc_8c033400:
	#data 0x42892492
loc_8c033404:
	#data 0x42092492
loc_8c033408:
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
	mova @(loc_8c033548,PC),r0
	mov r15,r6
	fmov @r0,fr4
	mov r6,r4
	mov.w @(loc_8c03353c,PC),r0
	mov r4,r5
	add 0x04,r5
	mov.b @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	extu.b r3,r3
	mov.w @(loc_8c03353e,PC),r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r4
	mov.b @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	extu.b r3,r3
	mov.w @(loc_8c033540,PC),r0
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
	mova @(loc_8c033550,PC),r0
	fadd fr3,fr2
	fmov fr2,@r4
	fmov @r0,fr2
	mov 0x08,r0
	fmov @(r0,r15),fr1
	mov 0x08,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r15)
	fadd fr4,fr1
	mova @(loc_8c033554,PC),r0
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
	mova @(loc_8c033558,PC),r0
	mov r15,r5
	fmov @r0,fr4
	mov r5,r4
	mov.w @(loc_8c033542,PC),r0
	mov r4,r6
	fmov fr4,fr0
	add 0x04,r6
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr5
	mov.w @(loc_8c033544,PC),r0
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
	mov.w @(loc_8c033544,PC),r0
	fadd fr3,fr2
	fmov fr2,@r4
	mov.b @(r0,r14),r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr2
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mova @(loc_8c033560,PC),r0
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
loc_8c03353c:
	#data 0x013e
loc_8c03353e:
	#data 0x013f
loc_8c033540:
	#data 0x0130
loc_8c033542:
	#data 0x013c
loc_8c033544:
	#data 0x013d
	#align4
loc_8c033548:
	#data 0x3fd55555
	#data 0x43555555
loc_8c033550:
	#data 0x42d55555
loc_8c033554:
	#data 0x44200000
loc_8c033558:
	#data 0x40092492
	#data 0x42892492
loc_8c033560:
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
	mov.w @(loc_8c033656,PC),r0
	fldi0 fr2
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mova @(loc_8c03365c,PC),r0
	extu.b r3,r3
	fmov @r0,fr4
	lds r3,fpul
	mova @(loc_8c033660,PC),r0
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
	mov.w @(loc_8c033656,PC),r0
	mov.b @(r0,r4),r3
	mov 0x54,r0
	fmov @(r0,r4),fr0
	mova @(loc_8c033664,PC),r0
	extu.b r3,r3
	fmov @r0,fr4
	lds r3,fpul
	mova @(loc_8c033660,PC),r0
	mov.l @(loc_8c033668,PC),r3
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
	mov.w @(loc_8c033658,PC),r0
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mova @(loc_8c03365c,PC),r0
	extu.b r3,r3
	fmov @r0,fr4
	lds r3,fpul
	mova @(loc_8c033660,PC),r0
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
	mov.l @(loc_8c033670,PC),r3
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
loc_8c033656:
	#data 0x013d
loc_8c033658:
	#data 0x013c
	#align4
loc_8c03365c:
	#data 0x42092492
loc_8c033660:
	#data 0x40092492
loc_8c033664:
	#data 0xc2092492
loc_8c033668:
	#data 0x8c26a5b8
	#data 0x43f00000
loc_8c033670:
	#data bank13.loc_8c132540

;==============================================
loc_8c033674:
	mov.l r14,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mova @(loc_8c03379c,PC),r0
	mov r4,r14
	fmov @r0,fr15
	mov 0x22,r0
	mov.b @(r0,r14),r0
	exts.w r5,r5
	lds r5,fpul
	extu.b r0,r0
	mov.l @(loc_8c0337a4,PC),r3
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
	mov.l @(loc_8c0337b0,PC),r3
	fmov @r0,fr0
	mov 0x68,r0
	fmov @(r0,r14),fr2
	mova @(loc_8c0337ac,PC),r0
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
	mova @(loc_8c0337ba,PC),r0
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
	mova @(loc_8c03379c,PC),r0
	mov r4,r14
	fmov @r0,fr15
	mov 0x22,r0
	mov.b @(r0,r14),r0
	exts.w r5,r5
	lds r5,fpul
	extu.b r0,r0
	mov.l @(loc_8c0337a4,PC),r3
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
	mov.l @(loc_8c0337b0,PC),r3
	fmov @r0,fr0
	mova @(loc_8c0337ac,PC),r0
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
	mova @(loc_8c0337b4,PC),r0
	fmov @r0,fr0
	mova @(loc_8c0337b8,PC),r0
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
loc_8c03379c:
	#data 0x43800000
	#data 0x447a0000
loc_8c0337a4:
	#data bank11.loc_8c11e2e0
	#data 0x47c35000
loc_8c0337ac:
	#data 0x3fd55555
loc_8c0337b0:
	#data bank11.loc_8c11e860
loc_8c0337b4:
	#data 0x47f42400

;==============================================
loc_8c0337b8:
	mov.l r9,@r4
loc_8c0337ba:
	shlr2 r0

loc_8c0337bc:
	mov.l r14,@-r15
	mov.l @(loc_8c0338a8,PC),r4
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c033850
	mov.l @(loc_8c0338b4,PC),r0
	mov 0x00,r13
	mov.l @(loc_8c0338ac,PC),r3
	mov 0x10,r1
	mov.l @(loc_8c0338b0,PC),r2
	mov.l r13,@r3
	mov.w @(loc_8c033898,PC),r3
	fldi1 fr3
	fmov fr3,@r2
	mov.l r1,@r0
	mov.l @(loc_8c0338b8,PC),r1
	mov.l @(loc_8c0338bc,PC),r2
	mov.l r3,@r1
	mov.l @(loc_8c0338c0,PC),r3
	mov.l @(loc_8c0338c4,PC),r1
	mov.w @(loc_8c03389a,PC),r12
	mov.l r13,@r2
	mov.l r3,@r1
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c0337f8
	mov.w @(loc_8c03389c,PC),r12

loc_8c0337f8:
	mov.l @(loc_8c0338cc,PC),r3
	mov 0x00,r5
	mov.w @(loc_8c03389e,PC),r6
	mov.l @(loc_8c0338c8,PC),r14
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0338a0,PC),r6
	mov 0x20,r5
	mov.l @(loc_8c0338d0,PC),r4

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
	mov.l @(loc_8c0338b4,PC),r3
	mov.l @(loc_8c0338d4,PC),r2
	mov.w r0,@(0x2,r4)
	mov.l r0,@(0x4,r4)
	mov.l r0,@(0x8,r4)
	mov.l r0,@(0xC,r4)
	jsr @r2
	mov.l @r3,r4
	mov.l @(loc_8c0338d8,PC),r3
	mov.l @(loc_8c0338d0,PC),r4
	jsr @r3
	mov r14,r5
	mov.l @(loc_8c0338d4,PC),r2
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
	mov.l @(loc_8c0338dc,PC),r1
	mov 0x02,r3
	mov 0x01,r2
	mov.l r3,@r1
	tst r4,r2
	mov r3,r0
	nop
	tst r4,r0
	bt loc_8c033872
	mov.w @(loc_8c0338a2,PC),r2
	bra loc_8c033874
	nop

loc_8c033872:
	mov.w @(loc_8c0338a4,PC),r2

loc_8c033874:
	mov.l @(loc_8c0338e0,PC),r3
	mov 0x07,r0
	mov.l r2,@r3
	rts
	and r4,r0

;==============================================
loc_8c03387e:
	sts.l pr,@-r15
	mov.l @(loc_8c0338d4,PC),r3
	jsr @r3
	mov 0x0E,r4
	mov.l @(loc_8c0338d8,PC),r2
	mov.l @(loc_8c0338e8,PC),r4
	mov.l @(loc_8c0338e4,PC),r5
	jsr @r2
	nop
	mov.l @(loc_8c0338d4,PC),r3
	mov 0x00,r4
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c033898:
	#data 0x0190
loc_8c03389a:
	#data 0x0502
loc_8c03389c:
	#data 0x0101
loc_8c03389e:
	#data 0x0c00
loc_8c0338a0:
	#data 0x0300
loc_8c0338a2:
	#data 0x1400
loc_8c0338a4:
	#data 0x0400
	#align4
loc_8c0338a8:
	#data 0x8c26a95f
loc_8c0338ac:
	#data 0x8c1f9d80
loc_8c0338b0:
	#data 0x8c1f9d8c
loc_8c0338b4:
	#data 0x8c1f9d90
loc_8c0338b8:
	#data 0x8c1f9d94
loc_8c0338bc:
	#data 0x8c1f9d98
loc_8c0338c0:
	#data 0x8c1f9f9c
loc_8c0338c4:
	#data 0x8c1fab9c
loc_8c0338c8:
	#data 0x0ce60000
loc_8c0338cc:
	#data bank12.loc_8c129728
loc_8c0338d0:
	#data 0x0ce60c00
loc_8c0338d4:
	#data bank11.loc_8c11b800
loc_8c0338d8:
	#data bank12.loc_8c1240a0
loc_8c0338dc:
	#data 0x8c1f9d84
loc_8c0338e0:
	#data 0x8c1f9d88
loc_8c0338e4:
	#data 0x0cc00000
loc_8c0338e8:
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
	mov.l @(loc_8c0339fc,PC),r5
	mov 0x1A,r0
	mov.l @(loc_8c0339f8,PC),r6
	mov.l @r5,r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c033932
	mov.w @(loc_8c0339ee,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c033932
	mov.l @(loc_8c033a00,PC),r4
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
	mova @(loc_8c033a08,PC),r0
	fmov @r0,fr2
	fmov fr2,@r4

loc_8c033932:
	mov.l @r5,r3
	mov 0x1A,r0
	mov 0x01,r8
	mov.w @(loc_8c0339f0,PC),r4
	mov.b @(r0,r3),r2
	mov.l @r6,r3
	mov.l @(loc_8c033a0c,PC),r7
	add r3,r2
	tst r8,r2
	bt.s loc_8c033950
	mov 0x10,r9
	mov.l @(loc_8c033a10,PC),r3
	mov.l r4,@r7
	bra loc_8c033956
	mov.l r9,@r3

loc_8c033950:
	mov.l @(loc_8c033a10,PC),r3
	mov.l r9,@r7
	mov.l r4,@r3

loc_8c033956:
	mova @(0xC0,PC),r0
	mov.l @(loc_8c033a14,PC),r4
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
	mov.l @(loc_8c033a38,PC),r7
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
	mov.l @(loc_8c033a40,PC),r3
	mov.l @(loc_8c033a44,PC),r1
	mov.l @(loc_8c033a3c,PC),r2
	mov.l r10,@r2
	mov.l r3,@r1
	mov.l @(loc_8c033a48,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c033a50,PC),r4
	mov.w @(loc_8c0339f4,PC),r2
	mov r4,r12
	mov.l @(loc_8c033a4c,PC),r14
	add r2,r4
	mov.w @(loc_8c0339f2,PC),r13
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
loc_8c0339ee:
	#data 0x008d
loc_8c0339f0:
	#data 0x0190
loc_8c0339f2:
	#data 0x0f00
loc_8c0339f4:
	#data 0x1000
	#align4
loc_8c0339f8:
	#data 0x8c1f9d80
loc_8c0339fc:
	#data 0x8c26823c
loc_8c033a00:
	#data 0x8c1f9d8c
	#data 0x3c23d70a
loc_8c033a08:
	#data 0x3f000000
loc_8c033a0c:
	#data 0x8c1f9d90
loc_8c033a10:
	#data 0x8c1f9d94
loc_8c033a14:
	#data 0x8c26a974
	#data 0x41200000
	#data 0x41300000
	#data 0x41400000
	#data 0x41500000
	#data 0x41f00000
	#data 0x41f80000
	#data 0x42000000
	#data 0x42040000
loc_8c033a38:
	#data bank13.loc_8c1355dc
loc_8c033a3c:
	#data 0x8c1f9d98
loc_8c033a40:
	#data 0x8c1f9f9c
loc_8c033a44:
	#data 0x8c1fab9c
loc_8c033a48:
	#data bank11.loc_8c11b800
loc_8c033a4c:
	#data 0x8c2659dc
loc_8c033a50:
	#data 0x8c2671dc

;----------------------------------------------
loc_8c033a54:
	mov.l @(0x8,r14),r0
	tst 0x02,r0
	bt loc_8c033a9a
	mov.w @r4+,r0
	mov.w @(loc_8c033b7a,PC),r3
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
	mov.w @(loc_8c033b7c,PC),r0
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
	mov.l @(loc_8c033b88,PC),r2
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
	mov.l @(loc_8c033b8c,PC),r2
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
	mov.l @(loc_8c033b90,PC),r11
	mov.l r4,@(0x4,r15)
	mov r4,r0
	nop
	mov.w @(loc_8c033b7e,PC),r1
	mov.l @(r0,r1),r0
	cmp/eq 0xFF,r0
	bf loc_8c033b30
	bra loc_8c033d62
	nop

loc_8c033b30:
	mov.w @(loc_8c033b7e,PC),r0
	mov.l @(0x4,r15),r2
	mov.l @(loc_8c033b94,PC),r3
	mov.l @(r0,r2),r1
	tst r3,r1
	bt loc_8c033b40
	bra loc_8c033d62
	nop

loc_8c033b40:
	mov.w @(loc_8c033b80,PC),r0
	mov.l @r11,r3
	mov.l @(0x4,r15),r14
	mov.l @(loc_8c033b98,PC),r2
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c033b9c,PC),r5
	mov.l @(loc_8c033ba0,PC),r3
	mov.l r2,@(0xC,r15)
	jsr @r3
	mov r2,r4
	mov.w @(loc_8c033b82,PC),r0
	mov.w @(loc_8c033b84,PC),r3
	mov.l @(r0,r14),r4
	add 0xE4,r0
	mov.l @(r0,r14),r0
	mov.l @(loc_8c033ba4,PC),r14
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
loc_8c033b7a:
	#data 0xf000
loc_8c033b7c:
	#data 0x00f0
loc_8c033b7e:
	#data 0x0144
loc_8c033b80:
	#data 0x00dc
loc_8c033b82:
	#data 0x0160
	#align4
loc_8c033b84:
	#data 0x00007fff
loc_8c033b88:
	#data bank11.loc_8c11f7f0
loc_8c033b8c:
	#data 0x8c2659dc
loc_8c033b90:
	#data 0x8c1f9d98
loc_8c033b94:
	#data 0x00008000
loc_8c033b98:
	#data 0x0ce60000
loc_8c033b9c:
	#data 0x00020000
loc_8c033ba0:
	#data bank02.loc_8c02deb8
loc_8c033ba4:
	#data 0x8c1fab9c

;----------------------------------------------
loc_8c033ba8:
	mov.w @(loc_8c033cb8,PC),r0
	mov.l @(0x4,r15),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c033bc4
	mov.l @(0x8,r15),r1
	mov 0xFC,r2
	mov.w @(loc_8c033cba,PC),r3
	mov.w @(0x4,r1),r0
	extu.w r0,r0
	and r3,r0
	shad r2,r0
	bra loc_8c033be0
	mov.l r0,@(0x20,r15)

loc_8c033bc4:
	mov.w @(loc_8c033cbc,PC),r0
	mov 0xFC,r1
	mov.l @(0x4,r15),r3
	mov.w @(r0,r3),r2
	mov.l @(0x8,r15),r3
	shll2 r2
	mov.w @(0x4,r3),r0
	shll2 r2
	mov.w @(loc_8c033cba,PC),r3
	extu.w r0,r0
	add r0,r2
	and r3,r2
	shad r1,r2
	mov.l r2,@(0x20,r15)

loc_8c033be0:
	mov.w @(loc_8c033cbe,PC),r0
	mov.l @(0x4,r15),r4
	mov.l @(loc_8c033cc8,PC),r2
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
	mov.w @(loc_8c033cc0,PC),r12
	bra loc_8c033c42
	mov 0x10,r13

loc_8c033c2a:
	cmp/eq 0x08,r0
	bf loc_8c033c34
	mov r10,r12
	bra loc_8c033c42
	mov 0x08,r13

loc_8c033c34:
	mov.l @(loc_8c033ccc,PC),r3
	exts.w r8,r1
	mov.w @(loc_8c033cc2,PC),r12
	mov r10,r13
	jsr @r3
	mov r10,r0
	mov r0,r4

loc_8c033c42:
	mov.l @(loc_8c033ccc,PC),r3
	exts.w r9,r1
	jsr @r3
	mov r13,r0
	mov.l @(loc_8c033cd0,PC),r2
	mov.l r0,@(0x14,r15)
	mov.l @r11,r8
	mov.l @r2,r3
	mov.l @r15,r1
	add r3,r8
	mov.l @(loc_8c033cd4,PC),r3
	jsr @r3
	mov r12,r0
	mov r0,r9
	mov.l @(loc_8c033cd8,PC),r0
	shll2 r4
	bra loc_8c033ca8
	mov.l @(r0,r4),r3

loc_8c033c66:
	exts.w r9,r0
	mov 0x01,r2
	cmp/eq 0x10,r0
	mov.l r2,@(0x14,r15)
	bf loc_8c033c76
	mov.w @(loc_8c033cc0,PC),r12
	bra loc_8c033c8e
	mov 0x10,r13

loc_8c033c76:
	cmp/eq 0x08,r0
	bf loc_8c033c80
	mov r10,r12
	bra loc_8c033c8e
	mov 0x08,r13

loc_8c033c80:
	mov.l @(loc_8c033ccc,PC),r3
	exts.w r9,r1
	mov.w @(loc_8c033cc2,PC),r12
	mov r10,r13
	jsr @r3
	mov r10,r0
	mov.l r0,@(0x14,r15)

loc_8c033c8e:
	mov.l @(loc_8c033cd0,PC),r2
	mov.l @r11,r8
	mov.l @r2,r3
	mov.l @r15,r1
	add r3,r8
	mov.l @(loc_8c033cd4,PC),r3
	jsr @r3
	mov r12,r0
	mov.l @(0x14,r15),r3
	mov r0,r9
	mov.l @(loc_8c033cdc,PC),r0
	shll2 r3
	mov.l @(r0,r3),r3

loc_8c033ca8:
	mov.l r3,@r15
	mov.l @r11,r2
	mov.w @(loc_8c033cc4,PC),r3
	add r9,r2
	cmp/gt r3,r2
	bf loc_8c033ce0
	bra loc_8c033d64
	mov 0xFF,r0

;##############################################
loc_8c033cb8:
	#data 0x012d
loc_8c033cba:
	#data 0x03ff
loc_8c033cbc:
	#data 0x012e
loc_8c033cbe:
	#data 0x015c
loc_8c033cc0:
	#data 0x0080
loc_8c033cc2:
	#data 0x0200
loc_8c033cc4:
	#data 0x0180
	#align4
loc_8c033cc8:
	#data loc_8c0354c0
loc_8c033ccc:
	#data bank12.loc_8c129128
loc_8c033cd0:
	#data 0x8c1f9d90
loc_8c033cd4:
	#data bank12.loc_8c1291dc
loc_8c033cd8:
	#data bank14.loc_8c14d8e8
loc_8c033cdc:
	#data bank14.loc_8c14d860

;----------------------------------------------
loc_8c033ce0:
	mov.w @(loc_8c033e0c,PC),r2
	mov 0x00,r3
	mov 0x1C,r0
	cmp/pl r9
	mov.l r3,@(0x10,r15)
	add r9,r2
	bf.s loc_8c033d44
	mov.b r2,@(r0,r15)

loc_8c033cf0:
	mov.l @(loc_8c033e1c,PC),r3
	mov.l @(0x20,r15),r5
	jsr @r3
	mov r8,r4
	mov.l @(loc_8c033e20,PC),r3
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
	mov.w @(loc_8c033e0e,PC),r0
	mov r4,r10
	mov.w @(loc_8c033e10,PC),r3
	mov 0x00,r12
	mov.w @(loc_8c033e12,PC),r2
	mov r12,r11
	mov.w @(loc_8c033e14,PC),r1
	mov.l r5,@(0x28,r15)
	mov.l @(r0,r10),r4
	mov.w @(loc_8c033e16,PC),r0
	add r4,r3
	mov.l r4,@(0x8,r15)
	mov.l r3,@(0x24,r15)
	add r4,r2
	mov.l r2,@(0x30,r15)
	add r1,r4
	mov.l @(loc_8c033e28,PC),r8
	mov.l @(loc_8c033e2c,PC),r5
	mov.l r4,@(0x2C,r15)
	mov.l r2,@r15
	mov.l @(0x2C,r15),r14
	mov.l r12,@(0xC,r15)
	mov.l r12,@(0x10,r15)
	mov.b @(r0,r10),r3
	mov.l @(loc_8c033e24,PC),r0
	shll r3
	mov.w @(r0,r3),r2
	mov.l @(loc_8c033e30,PC),r3
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
	mov.w @(loc_8c033e18,PC),r0
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
	mov.l @(loc_8c033e34,PC),r0
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
loc_8c033e0c:
	#data 0x00ff
loc_8c033e0e:
	#data 0x0180
loc_8c033e10:
	#data 0x0220
loc_8c033e12:
	#data 0x0a20
loc_8c033e14:
	#data 0x0e20
loc_8c033e16:
	#data 0x052c
loc_8c033e18:
	#data 0x0160
	#align4
loc_8c033e1c:
	#data bank12.loc_8c124910
loc_8c033e20:
	#data bank11.loc_8c11b810
loc_8c033e24:
	#data bank0e.loc_8c0efd4a
loc_8c033e28:
	#data 0x0ce60000
loc_8c033e2c:
	#data 0x00020000
loc_8c033e30:
	#data bank02.loc_8c02deb8
loc_8c033e34:
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
	mov.l @(loc_8c033f78,PC),r0
	mov r11,r2
	shll r2
	add r0,r2
	mov.w @(0x6,r13),r0
	mov.w r0,@r2
	mov.w @(loc_8c033f6c,PC),r0
	mov.b @(r0,r10),r3
	tst r3,r3
	bf loc_8c033e76
	mov.w @(0x4,r13),r0
	mov 0xFC,r2
	mov.w @(loc_8c033f6e,PC),r3
	extu.w r0,r0
	mov.l @r15,r1
	and r3,r0
	shad r2,r0
	mov.l r0,@r1
	bra loc_8c033e90
	nop

loc_8c033e76:
	mov.w @(loc_8c033f70,PC),r0
	mov.w @(loc_8c033f6e,PC),r1
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
	mov.w @(loc_8c033f72,PC),r0
	mov r8,r6
	mov.l @(loc_8c033f7c,PC),r2
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
	mov.w @(loc_8c033f74,PC),r3
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
	mov.w @(loc_8c033f76,PC),r3
	mov.l @(loc_8c033f80,PC),r2
	mov.w r0,@(0x2,r14)
	mov.l r0,@(0x4,r14)
	mov.l r0,@(0x8,r14)
	mov.l r0,@(0xC,r14)
	mov.l @(0x28,r15),r4
	shll8 r4
	jsr @r2
	add r3,r4
	mov.l @(loc_8c033f84,PC),r3
	mov.l @(0x30,r15),r5
	jsr @r3
	mov.l @(0x2C,r15),r4
	mov.l @(loc_8c033f80,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c033f44:
	mov.l @(0x28,r15),r3
	mov.l @(loc_8c033f88,PC),r0
	shll r3
	mov.w r11,@(r0,r3)
	mov.l @(0x28,r15),r3
	mov.l @(0xC,r15),r2
	mov.l @(loc_8c033f8c,PC),r0
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
loc_8c033f6c:
	#data 0x012d
loc_8c033f6e:
	#data 0x03ff
loc_8c033f70:
	#data 0x012e
loc_8c033f72:
	#data 0x015c
loc_8c033f74:
	#data 0x0502
loc_8c033f76:
	#data 0x0390
	#align4
loc_8c033f78:
	#data 0x8c1f9d9c
loc_8c033f7c:
	#data loc_8c0354c0
loc_8c033f80:
	#data bank11.loc_8c11b800
loc_8c033f84:
	#data bank12.loc_8c1240a0
loc_8c033f88:
	#data 0x8c26aa24
loc_8c033f8c:
	#data 0x8c26aa34

;==============================================
loc_8c033f90:
	sts.l pr,@-r15
	add 0xF4,r15
	mov r5,r3
	mov.l @(loc_8c034060,PC),r0
	shll r3
	mov.l r5,@r15
	mov.w @(r0,r3),r3
	tst r3,r3
	bt loc_8c033fd0
	mov.w @(loc_8c034050,PC),r0
	mov.w @(loc_8c034052,PC),r3
	mov.l @(r0,r4),r5
	mov.w @(loc_8c034054,PC),r2
	add r5,r3
	mov.w @(loc_8c034056,PC),r1
	mov.l r3,@(0x8,r15)
	add r2,r5
	mov.l @(loc_8c034064,PC),r3
	mov.l r5,@(0x4,r15)
	mov.l @r15,r4
	shll8 r4
	jsr @r3
	add r1,r4
	mov.l @(loc_8c034068,PC),r3
	mov.l @(0x8,r15),r5
	jsr @r3
	mov.l @(0x4,r15),r4
	mov 0x00,r4
	add 0x0C,r15
	mov.l @(loc_8c034064,PC),r2
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
	mov.w @(loc_8c034058,PC),r0
	mov 0x03,r3
	mov.l @(loc_8c03406c,PC),r5
	mov.l @(loc_8c034070,PC),r1
	mov.l r3,@r5
	fmov @(r0,r4),fr3
	mov 0x04,r0
	lds r1,fpul
	fmov fr3,@(r0,r5)
	mov.w @(loc_8c03405a,PC),r0
	mov.w @(loc_8c03405c,PC),r3
	fmov @(r0,r4),fr3
	mov 0x08,r0
	mov.l @(loc_8c034074,PC),r2
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
	mova @(loc_8c03407c,PC),r0
	fmul fr3,fr2
	fmov fr2,fr5
	fdiv fr4,fr5
	fmov @r0,fr2
	mov 0x54,r0
	fmov @(r0,r4),fr1
	mov.w @(loc_8c03405e,PC),r0
	fmul fr2,fr1
	mov.l @(r0,r4),r3
	tst r3,r3
	fmov fr1,fr4
	bf.s loc_8c034080
	fdiv fr0,fr4
	mov.w @r5,r3
	mov.w @(loc_8c034058,PC),r0
	lds r3,fpul
	fmov @(r0,r4),fr15
	fmov fr5,fr0
	float fpul,fr1
	bra loc_8c03408e
	fmac fr0,fr1,fr15

;##############################################
loc_8c034050:
	#data 0x0180
loc_8c034052:
	#data 0x0a20
loc_8c034054:
	#data 0x0e20
loc_8c034056:
	#data 0x0390
loc_8c034058:
	#data 0x00e0
loc_8c03405a:
	#data 0x00e4
loc_8c03405c:
	#data 0x040a
loc_8c03405e:
	#data 0x0110
	#align4
loc_8c034060:
	#data 0x8c26aa24
loc_8c034064:
	#data bank11.loc_8c11b800
loc_8c034068:
	#data bank12.loc_8c1243e0
loc_8c03406c:
	#data bank14.loc_8c14d134
loc_8c034070:
	#data 0x3a83126f
loc_8c034074:
	#data bank12.loc_8c1244b0
	#data 0x3fd55555
loc_8c03407c:
	#data 0x40092492

;----------------------------------------------
loc_8c034080:
	mov.w @r5,r3
	mov.w @(loc_8c03415a,PC),r0
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
	mov.l @(loc_8c034168,PC),r14
	float fpul,fr3
	fmul fr5,fr3
	fmov fr3,@r15
	mov.w @(0x4,r5),r0
	mov r0,r3
	mov.w @(loc_8c03415c,PC),r0
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
	mov.w @(loc_8c03415e,PC),r3
	fmov fr3,@(r0,r14)
	mova @(loc_8c03416c,PC),r0
	fmov @r0,fr14
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov.l @(loc_8c034170,PC),r13
	fsub fr14,fr3
	fmov fr3,@(r0,r14)
	mov.l r3,@(0x34,r14)
	jsr @r13
	mov r14,r4
	mov 0x0C,r0
	fsub fr13,fr12
	fmov @(r0,r15),fr3
	mov 0x04,r0
	mov.w @(loc_8c034160,PC),r3
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
	mov.w @(loc_8c034162,PC),r3
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
	mov.w @(loc_8c034164,PC),r3
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
loc_8c03415a:
	#data 0x00e0
loc_8c03415c:
	#data 0x00e4
loc_8c03415e:
	#data 0x0417
loc_8c034160:
	#data 0x043f
loc_8c034162:
	#data 0x0405
loc_8c034164:
	#data 0x042d
	#align4
loc_8c034168:
	#data bank14.loc_8c14d134
loc_8c03416c:
	#data 0x3a83126f
loc_8c034170:
	#data bank12.loc_8c1244b0

;==============================================
loc_8c034174:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c0342ac,PC),r0
	mov r4,r14
	mov.l @(loc_8c0342b8,PC),r12
	mov.l @(r0,r14),r13
	mov.w @(0x12,r13),r0
	extu.w r0,r13
	mov.w @(loc_8c0342ae,PC),r0
	shll2 r13
	mov.l @(r0,r14),r3
	shll2 r13
	mov.w @(loc_8c0342b0,PC),r0
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
	mova @(loc_8c0342c0,PC),r0
	mov.l @(loc_8c0342bc,PC),r2
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
	mov.w @(loc_8c0342b2,PC),r0
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
	mov.w @(loc_8c0342b2,PC),r0
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
	mov.w @(loc_8c0342b2,PC),r0
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
	mov.w @(loc_8c0342b2,PC),r0
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
	mov.w @(loc_8c0342b2,PC),r0
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
	mov.w @(loc_8c0342b2,PC),r0
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
	mov.w @(loc_8c0342b4,PC),r0
	mov 0x09,r2
	mov.l r2,@r12
	mov r15,r1
	mov.b @(r0,r14),r2
	mov.w @(loc_8c0342b2,PC),r0
	extu.b r2,r2
	mov.l @(r0,r14),r3
	shll2 r2
	shll r2
	add r3,r2
	mov.w @(loc_8c0342b6,PC),r3
	add r3,r2
	mov.l @(loc_8c0342c4,PC),r3
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
loc_8c0342ac:
	#data 0x0154
loc_8c0342ae:
	#data 0x016c
loc_8c0342b0:
	#data 0x00e8
loc_8c0342b2:
	#data 0x0170
loc_8c0342b4:
	#data 0x01f9
loc_8c0342b6:
	#data 0x07e0
	#align4
loc_8c0342b8:
	#data bank14.loc_8c14d134
loc_8c0342bc:
	#data 0x8c26a530
loc_8c0342c0:
	#data 0x444b16de
loc_8c0342c4:
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
	mov.w @(loc_8c0343c8,PC),r0
	mov r4,r14
	mov.l @(loc_8c0343d0,PC),r13
	mov.l @(r0,r14),r12
	mov.w @(0x12,r12),r0
	extu.w r0,r12
	mov.w @(loc_8c0343ca,PC),r0
	shll2 r12
	mov.l @(r0,r14),r3
	shll2 r12
	mov.w @(loc_8c0343cc,PC),r0
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
	mov.w @(loc_8c0343ce,PC),r0
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
	mov.w @(loc_8c0343ce,PC),r0
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
	mov.w @(loc_8c0343ce,PC),r0
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
loc_8c0343c8:
	#data 0x0154
loc_8c0343ca:
	#data 0x016c
loc_8c0343cc:
	#data 0x00e8
loc_8c0343ce:
	#data 0x0170
loc_8c0343d0:
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
	mov.w @(loc_8c0344ca,PC),r0
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
	mov.w @(loc_8c0344ca,PC),r0
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
	mov.w @(loc_8c0344ca,PC),r0
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
	mov.w @(loc_8c0344ca,PC),r0
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
	mov.w @(loc_8c0344cc,PC),r0
	mov 0x09,r2
	mov.l r2,@r13
	mov r15,r1
	mov.b @(r0,r14),r2
	mov.w @(loc_8c0344ca,PC),r0
	extu.b r2,r2
	mov.l @(r0,r14),r3
	shll2 r2
	shll r2
	add r3,r2
	mov.w @(loc_8c0344ce,PC),r3
	add r3,r2
	mov.l @(loc_8c0344d0,PC),r3
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
loc_8c0344ca:
	#data 0x0170
loc_8c0344cc:
	#data 0x01f9
loc_8c0344ce:
	#data 0x07e0
	#align4
loc_8c0344d0:
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
	mov.w @(loc_8c0345fc,PC),r0
	mov r4,r14
	mov.w @(loc_8c0345fe,PC),r3
	mov.l @(r0,r14),r4
	add 0xE4,r0
	mov.l @(r0,r14),r0
	mov.l @(loc_8c03461c,PC),r9
	and r3,r0
	shll2 r0
	mov.l @(r0,r4),r11
	mov.w @(loc_8c034600,PC),r0
	add r4,r11
	mov.w @r11+,r2
	extu.w r2,r2
	mov.l r2,@(0x28,r15)
	mov.l @(r0,r14),r13
	add 0x28,r0
	mov.l @(r0,r14),r3
	mov.l @(loc_8c034618,PC),r2
	shll2 r13
	tst r3,r3
	add r2,r13
	bf.s loc_8c03453a
	mov 0x00,r12
	mov.w @(loc_8c034602,PC),r0
	jsr @r9
	fmov @(r0,r14),fr4
	mov 0x0C,r0
	fmov fr0,@(r0,r15)
	mov.w @(loc_8c034604,PC),r0
	jsr @r9
	fmov @(r0,r14),fr4
	mov 0x10,r0
	mov r12,r10
	fmov fr0,@(r0,r15)
	mov r12,r0
	bra loc_8c034588
	mov.w r0,@(0x14,r15)

loc_8c03453a:
	mov.w @(loc_8c034606,PC),r0
	mov.l @(r0,r14),r1
	tst r1,r1
	bf loc_8c034548
	mov.w @(loc_8c034608,PC),r0
	bra loc_8c03454e
	mov.w @(r0,r14),r10

loc_8c034548:
	mov.w @(loc_8c034608,PC),r0
	mov.w @(r0,r14),r10
	neg r10,r10

loc_8c03454e:
	mov.w @(loc_8c03460a,PC),r0
	mov.w @(r0,r14),r8
	add 0xAA,r0
	jsr @r9
	fmov @(r0,r14),fr4
	exts.w r10,r3
	mov.w @(loc_8c03460c,PC),r0
	lds r3,fpul
	fmov fr0,fr2
	fmov @(r0,r14),fr0
	mov 0x0C,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(loc_8c034604,PC),r0
	jsr @r9
	fmov @(r0,r14),fr4
	exts.w r8,r3
	mov.w @(loc_8c03460e,PC),r0
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
	mov.w @(loc_8c034610,PC),r0
	mov 0x20,r8
	mov.l @(loc_8c034620,PC),r1
	mov 0x10,r9
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fldi0 fr14
	fmov fr3,@(r0,r15)
	mov.w @(loc_8c034600,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r14),r2
	mov.w @(loc_8c034612,PC),r0
	add r3,r2
	mov.l r2,@(0x2C,r15)
	mov.l @(loc_8c034624,PC),r2
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
	mov.w @(loc_8c034614,PC),r0
	mov.w @(loc_8c034616,PC),r1
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
	mova @(loc_8c034628,PC),r0
	mov.b @r13,r3
	fmov @r0,fr2
	extu.b r3,r3
	mov.w @(loc_8c034600,PC),r0
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
loc_8c0345fc:
	#data 0x0160
loc_8c0345fe:
	#data 0x7fff
loc_8c034600:
	#data 0x00dc
loc_8c034602:
	#data 0x00e0
loc_8c034604:
	#data 0x00e4
loc_8c034606:
	#data 0x0110
loc_8c034608:
	#data 0x0134
loc_8c03460a:
	#data 0x0136
loc_8c03460c:
	#data 0x00ec
loc_8c03460e:
	#data 0x00f0
loc_8c034610:
	#data 0x00e8
loc_8c034612:
	#data 0x0108
loc_8c034614:
	#data 0x015c
loc_8c034616:
	#data 0x0180
	#align4
loc_8c034618:
	#data 0x8c1f9f9c
loc_8c03461c:
	#data bank11.loc_8c11e460
loc_8c034620:
	#data 0x8c1f9d94
loc_8c034624:
	#data 0x8c1f9d84
loc_8c034628:
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
	mov.w @(loc_8c0346f4,PC),r0
	fmov @(r0,r14),fr3
	mov 0x3C,r0
	fmul fr4,fr3
	fmov fr3,@(r0,r15)
	mov.w @(loc_8c0346f6,PC),r0
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
	mov.w @(loc_8c0346f8,PC),r0
	mov r4,r1
	mov.l @(loc_8c034700,PC),r2
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
	mov.w @(loc_8c0346fc,PC),r2
	or r3,r7
	mov.l r7,@(r0,r15)
	mov.w @(loc_8c0346fa,PC),r0
	mov.l @(r0,r14),r1
	mov 0x54,r0
	mov.l r1,@(r0,r15)
	mov.w @(0x4,r11),r0
	extu.w r0,r0
	tst r2,r0
	bt.s loc_8c0346c4
	sub r5,r10
	mov.l @(loc_8c034700,PC),r1
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
	mov.l @(loc_8c034704,PC),r3
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
loc_8c0346f4:
	#data 0x00ec
loc_8c0346f6:
	#data 0x00f0
loc_8c0346f8:
	#data 0x0110
loc_8c0346fa:
	#data 0x0104
loc_8c0346fc:
	#data 0x4000
	#align4
loc_8c034700:
	#data 0x8c1f9d88
loc_8c034704:
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
	mov.w @(loc_8c03480c,PC),r0
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
	mov.w @(loc_8c03480e,PC),r2
	extu.w r0,r0
	tst r2,r0
	bt.s loc_8c034762
	add r5,r10
	mov.l @(loc_8c034814,PC),r1
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
	mov.l @(loc_8c034818,PC),r3
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
	mov.w @(loc_8c034810,PC),r0
	add r4,r3
	lds r3,fpul
	exts.w r5,r5
	fmov @(r0,r14),fr2
	mov.w @(0x14,r15),r0
	float fpul,fr3
	add r5,r0
	lds r0,fpul
	mov.w @(loc_8c034812,PC),r0
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
loc_8c03480c:
	#data 0x0104
loc_8c03480e:
	#data 0x4000
loc_8c034810:
	#data 0x00ec
loc_8c034812:
	#data 0x00f0
	#align4
loc_8c034814:
	#data 0x8c1f9d88
loc_8c034818:
	#data 0x00008000

;----------------------------------------------
loc_8c03481c:
	mov.l @(loc_8c034938,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov 0x0C,r0
	mov.l @(loc_8c03493c,PC),r3
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
	mov.l @(loc_8c03493c,PC),r3
	fmov fr2,@(r0,r15)
	mov 0x54,r0
	jsr @r3
	mov.l @(r0,r15),r4
	fmul fr0,fr12
	mov 0x10,r0
	fmov @(r0,r15),fr3
	mov 0x58,r0
	mov.l @(loc_8c034938,PC),r3
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
	mova @(loc_8c034940,PC),r0
	mov.l @(loc_8c034944,PC),r3
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
	mov.w @(loc_8c03492a,PC),r0
	mov r4,r14
	mov.w @(loc_8c03492c,PC),r3
	mov.l @(r0,r14),r4
	add 0xE4,r0
	mov.l @(r0,r14),r0
	mov.l @(loc_8c034948,PC),r11
	and r3,r0
	shll2 r0
	mov.l @(r0,r4),r13
	mov.w @(loc_8c03492e,PC),r0
	add r4,r13
	mov.l @(r0,r14),r2
	mov.w @r13+,r9
	tst r2,r2
	extu.w r9,r9
	bf.s loc_8c03491c
	mov 0x00,r8
	mov.w @(loc_8c034930,PC),r0
	jsr @r11
	fmov @(r0,r14),fr4
	mov.w @(loc_8c034932,PC),r0
	fmov fr0,fr15
	jsr @r11
	fmov @(r0,r14),fr4
	mov r8,r12
	fmov fr0,fr12
	bra loc_8c034986
	mov r8,r11

loc_8c03491c:
	mov.w @(loc_8c034934,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bf loc_8c03494c
	mov.w @(loc_8c034936,PC),r0
	bra loc_8c034952
	mov.w @(r0,r14),r12

;##############################################
loc_8c03492a:
	#data 0x0160
loc_8c03492c:
	#data 0x7fff
loc_8c03492e:
	#data 0x0104
loc_8c034930:
	#data 0x00e0
loc_8c034932:
	#data 0x00e4
loc_8c034934:
	#data 0x0110
loc_8c034936:
	#data 0x0134
	#align4
loc_8c034938:
	#data bank11.loc_8c11e2e0
loc_8c03493c:
	#data bank11.loc_8c11e860
loc_8c034940:
	#data 0x3a83126f
loc_8c034944:
	#data bank12.loc_8c1244b0
loc_8c034948:
	#data bank11.loc_8c11e460

;----------------------------------------------
loc_8c03494c:
	mov.w @(loc_8c034aa8,PC),r0
	mov.w @(r0,r14),r12
	neg r12,r12

loc_8c034952:
	mov.w @(loc_8c034aaa,PC),r0
	mov.w @(r0,r14),r10
	add 0xAA,r0
	jsr @r11
	fmov @(r0,r14),fr4
	exts.w r12,r3
	mov.w @(loc_8c034aac,PC),r0
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
	mov.w @(loc_8c034aae,PC),r0
	lds r3,fpul
	neg r10,r11
	fmov fr0,fr2
	neg r12,r12
	fmov @(r0,r14),fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr12

loc_8c034986:
	mov.w @(loc_8c034ab0,PC),r0
	mov 0xFF,r1
	mov.l @(loc_8c034ac8,PC),r2
	mov r8,r10
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.w @(loc_8c034ab2,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r15)
	mov 0x44,r0
	mov.l @r2,r3
	mov.w @(loc_8c034ab8,PC),r2
	mov.l r3,@(0x3C,r15)
	mov.l r1,@(r0,r15)
	mov 0x48,r0
	mov.l r8,@(r0,r15)
	mov.w @(loc_8c034ab4,PC),r0
	mov.w @(loc_8c034ab6,PC),r3
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
	mov.w @(loc_8c034abc,PC),r0
	add 0x01,r3
	mov.w @(loc_8c034aba,PC),r4
	mov.l r3,@(0x8,r15)
	add 0xFF,r3
	mov.b @r3,r2
	mov.b @(r0,r14),r3
	extu.b r2,r2
	mov.w @(loc_8c034abe,PC),r0
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
	mov.w @(loc_8c034aac,PC),r0
	fmov @(r0,r14),fr2
	mov 0x1C,r0
	fmul fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x30,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c034aae,PC),r0
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
	mov.w @(loc_8c034ac0,PC),r4
	sub r0,r7
	mov.w @(loc_8c034ac2,PC),r0
	mov.l @(loc_8c034acc,PC),r6
	mov.l @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c034ad4
	fldi1 fr4
	mov.w @(loc_8c034ac4,PC),r0
	mov r7,r11
	mov.l @(loc_8c034ad0,PC),r2
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
loc_8c034aa8:
	#data 0x0134
loc_8c034aaa:
	#data 0x0136
loc_8c034aac:
	#data 0x00ec
loc_8c034aae:
	#data 0x00f0
loc_8c034ab0:
	#data 0x00e8
loc_8c034ab2:
	#data 0x0108
loc_8c034ab4:
	#data 0x0180
loc_8c034ab6:
	#data 0x01ff
loc_8c034ab8:
	#data 0x0220
loc_8c034aba:
	#data 0x0390
loc_8c034abc:
	#data 0x01a4
loc_8c034abe:
	#data 0x015c
loc_8c034ac0:
	#data 0x4000
loc_8c034ac2:
	#data 0x0110
loc_8c034ac4:
	#data 0x0104
	#align4
loc_8c034ac8:
	#data 0x8c1f9d84
loc_8c034acc:
	#data 0x00008000
loc_8c034ad0:
	#data 0x8c1f9d88

;----------------------------------------------
loc_8c034ad4:
	mov.w @(loc_8c034c18,PC),r0
	mov r7,r11
	mov 0x07,r7
	mov.l @(r0,r14),r2
	mov 0x40,r0
	neg r2,r2
	mov.l r2,@(0x34,r15)
	mov.l @(loc_8c034c20,PC),r2
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
	mov.w @(loc_8c034c1a,PC),r0
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
	mov.l @(loc_8c034c24,PC),r2
	jsr @r2
	mov r8,r4
	fmov fr15,fr3
	fmac fr0,fr14,fr3
	mov.l @(loc_8c034c28,PC),r3
	fmov fr3,@-r15
	jsr @r3
	mov.l @(0x38,r15),r4
	fmov @r15+,fr2
	mov 0x10,r0
	fmov fr0,fr3
	fmov fr13,fr0
	fmac fr0,fr3,fr2
	mov.l @(loc_8c034c28,PC),r3
	fmov fr2,@(r0,r15)
	jsr @r3
	mov.l @(0x34,r15),r4
	fmul fr0,fr14
	fmov fr12,fr3
	mov.l @(loc_8c034c24,PC),r3
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
	mova @(loc_8c034c2c,PC),r0
	mov.l @(loc_8c034c30,PC),r8
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
	mov.w @(loc_8c034c1c,PC),r0
	sts.l pr,@-r15
	mov.l @(r0,r4),r0
	cmp/eq 0xFF,r0
	bf loc_8c034bfa
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c034bfa:
	mov.w @(loc_8c034c1c,PC),r0
	mov.l @(loc_8c034c34,PC),r3
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
loc_8c034c18:
	#data 0x0104
loc_8c034c1a:
	#data 0x00ec
loc_8c034c1c:
	#data 0x0144
	#align4
loc_8c034c20:
	#data 0x8c1f9d88
loc_8c034c24:
	#data bank11.loc_8c11e2e0
loc_8c034c28:
	#data bank11.loc_8c11e860
loc_8c034c2c:
	#data 0x3a83126f
loc_8c034c30:
	#data bank12.loc_8c1244b0
loc_8c034c34:
	#data 0x00008000

;==============================================
loc_8c034c38:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c034d7e,PC),r0
	mov.w @(loc_8c034d82,PC),r1
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
	mov.w @(loc_8c034d80,PC),r0
	add r7,r3
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c034d88,PC),r3
	mov.l @(r0,r4),r2
	jsr @r3
	mov 0x08,r0
	mov.w @(loc_8c034d84,PC),r0
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
	mov.w @(loc_8c034d86,PC),r6

loc_8c034c8c:
	mov.w @(loc_8c034d80,PC),r0
	mov.l @(r0,r4),r3
	add 0x08,r3
	mov.l r3,@(r0,r4)
	add 0xEF,r0
	mov.b @(r0,r4),r2
	tst r6,r2
	bt loc_8c034cac
	mov.w @(loc_8c034d80,PC),r0
	mov.l @(r0,r4),r1
	add 0x14,r0
	mov.l @(r0,r4),r2
	add 0xEC,r0
	mov.l @r1,r3
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c034cac:
	mov.w @(loc_8c034d80,PC),r0
	mov.w @(loc_8c034d82,PC),r1
	mov.l @(loc_8c034d88,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x08,r0
	mov.w @(loc_8c034d84,PC),r0
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
	mov.w @(loc_8c034d7e,PC),r0
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
	mov.w @(loc_8c034d80,PC),r0
	add r1,r3
	mov.w @(loc_8c034d82,PC),r1
	mov.l r3,@(r0,r4)
	mov.l @(r0,r4),r3
	add r4,r1
	add r3,r7
	mov.l @(loc_8c034d88,PC),r3
	mov.l r7,@(r0,r4)
	mov.l @(r0,r4),r2
	jsr @r3
	mov 0x08,r0
	mov.w @(loc_8c034d84,PC),r0
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
	mov.w @(loc_8c034d86,PC),r6

loc_8c034d34:
	mov.w @(loc_8c034d80,PC),r0
	mov.l @(r0,r4),r3
	add 0x08,r3
	mov.l r3,@(r0,r4)
	add 0xEF,r0
	mov.b @(r0,r4),r2
	tst r6,r2
	bt loc_8c034d54
	mov.w @(loc_8c034d80,PC),r0
	mov.l @(r0,r4),r1
	add 0x14,r0
	mov.l @(r0,r4),r2
	add 0xEC,r0
	mov.l @r1,r3
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c034d54:
	mov.w @(loc_8c034d80,PC),r0
	mov.w @(loc_8c034d82,PC),r1
	mov.l @(loc_8c034d88,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x08,r0
	mov.w @(loc_8c034d84,PC),r0
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
loc_8c034d7e:
	#data 0x0159
loc_8c034d80:
	#data 0x0154
loc_8c034d82:
	#data 0x0140
loc_8c034d84:
	#data 0x0148
loc_8c034d86:
	#data 0x0080
	#align4
loc_8c034d88:
	#data bank12.loc_8c1294bc

;==============================================
loc_8c034d8c:
	mov.w @(loc_8c034e70,PC),r0
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
	mov.w @(loc_8c034e72,PC),r0
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
	mov.w @(loc_8c034e72,PC),r0
	mov.l @(r0,r4),r2
	add 0x14,r0
	mov.l @(r0,r4),r1
	add 0xEC,r0
	mov.l @r2,r3
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c034dc6:
	mov.w @(loc_8c034e72,PC),r0
	mov.w @(loc_8c034e74,PC),r1
	mov.l @(loc_8c034e80,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x08,r0
	mov.w @(loc_8c034e76,PC),r0
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
	mov.w @(loc_8c034e70,PC),r0 ;142
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
	mov.w @(loc_8c034e72,PC),r0
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
	mov.w @(loc_8c034e72,PC),r0
	mov.l @(r0,r4),r3
	add 0x14,r0
	mov.l @(r0,r4),r2
	add 0xEC,r0
	mov.l @r3,r3
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c034e28:
	mov.w @(loc_8c034e72,PC),r0
	mov.w @(loc_8c034e74,PC),r1
	mov.l @(loc_8c034e84,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x14,r0
	mov.w @(loc_8c034e70,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c034e02
	mov.w @(loc_8c034e72,PC),r0
	mov.w @(loc_8c034e78,PC),r3
	mov.l @(r0,r4),r1
	add r4,r3
	mov.w @(0x12,r1),r0
	mov.l @r3,r3
	extu.w r0,r0
	mov.w @(loc_8c034e7a,PC),r1
	shll2 r0
	shll2 r0
	add r4,r1
	add r3,r0
	mov.l r0,@r1
	mov.w @(loc_8c034e7c,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c034e66
	mov.l @(loc_8c034e88,PC),r3
	jsr @r3
	nop

loc_8c034e66:
	mov r14,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c034e70:
	#data 0x0142
loc_8c034e72:
	#data 0x0154
loc_8c034e74:
	#data 0x0140
loc_8c034e76:
	#data 0x0148
loc_8c034e78:
	#data 0x016c
loc_8c034e7a:
	#data 0x01c0
loc_8c034e7c:
	#data 0x014c
	#align4
loc_8c034e80:
	#data bank12.loc_8c1294bc
loc_8c034e84:
	#data bank12.loc_8c1294c8
loc_8c034e88:
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
	mov.w @(loc_8c034f3a,PC),r0	; r0 = 159
	mov.w @(loc_8c034f3e,PC),r1	; r1 = 140
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
	mov.w @(loc_8c034f3c,PC),r0	; r0 = 0x154
	add r7,r3			; Animation start ;c49f9a8
	mov.l r3,@(r0,r4)	; Animation start moved to plmem
	mov.l @(loc_8c034f4c,PC),r3	; r3 = 8c1294c8
	mov.l @(r0,r4),r2	; read Current Cell from memory
	jsr @r3  			; jsr to bank12.loc_8c1294c8
	mov 0x14,r0			; r0 = 14

	mov.w @(loc_8c034f40,PC),r0	; 
	mov.b @(r0,r4),r1	; 
	tst r1,r1			; 
	bf loc_8c034f08		; 
	mov.w @(loc_8c034f42,PC),r5	; 

loc_8c034ed2:
	mov.w @(loc_8c034f3c,PC),r0	;
	mov.l @(r0,r4),r3	;
	add 0x14,r3 		;
	mov.l r3,@(r0,r4)	;
	add 0xEF,r0 		;
	mov.b @(r0,r4),r2	;
	tst r5,r2			;
	bt loc_8c034ef2 	;


	mov.w @(loc_8c034f3c,PC),r0	;
	mov.l @(r0,r4),r1	;
	add 0x14,r0 		;
	mov.l @(r0,r4),r2	;
	add 0xEC,r0 		;
	mov.l @r1,r3		;
	add r3,r2			;
	mov.l r2,@(r0,r4)	;

loc_8c034ef2:
	mov.w @(loc_8c034f3c,PC),r0	;
	mov.w @(loc_8c034f3e,PC),r1	;
	mov.l @(loc_8c034f4c,PC),r3	;
	mov.l @(r0,r4),r2	;
	add r4,r1			;
	jsr @r3 			;
	mov 0x14,r0 		;
	mov.w @(loc_8c034f40,PC),r0	;
	mov.b @(r0,r4),r1	;
	tst r1,r1			;
	bt loc_8c034ed2 	;

loc_8c034f08:
	mov.w @(loc_8c034f3c,PC),r0	;
	mov.w @(loc_8c034f44,PC),r3	;
	mov.l @(r0,r4),r1	;
	add r4,r3			;
	mov.w @(0x12,r1),r0	;
	mov.l @r3,r3		;
	extu.w r0,r0		;
	mov.w @(loc_8c034f46,PC),r1	;
	shll2 r0			;
	shll2 r0			;
	add r4,r1			;
	add r3,r0			;
	mov.l r0,@r1		;
	mov.w @(loc_8c034f48,PC),r0	;
	mov.b @(r0,r4),r3	;
	tst r3,r3			;
	bt loc_8c034f32		;
	add 0x04,r15		;
	mov.l @(loc_8c034f50,PC),r3	; bank04.loc_8c042014
	jmp @r3 			;
	lds.l @r15+,pr		;

loc_8c034f32:
	add 0x04,r15		;
	lds.l @r15+,pr		;
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c034f3a:
	#data 0x0159
loc_8c034f3c:
	#data 0x0154
loc_8c034f3e:
	#data 0x0140
loc_8c034f40:
	#data 0x0142
loc_8c034f42:
	#data 0x0080
loc_8c034f44:
	#data 0x016c
loc_8c034f46:
	#data 0x01c0
loc_8c034f48:
	#data 0x014c
	#align4
loc_8c034f4c:
	#data bank12.loc_8c1294c8
loc_8c034f50:
	#data bank04.loc_8c042014

;==============================================
loc_8c034f54:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c035064,PC),r0
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
	mov.w @(loc_8c035066,PC),r0
	add r1,r3
	mov.w @(loc_8c035068,PC),r1
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
	mov.l @(loc_8c03507c,PC),r3
	jsr @r3
	mov 0x14,r0
	mov.w @(loc_8c03506a,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c034fde
	mov.w @(loc_8c03506c,PC),r5

loc_8c034fa8:
	mov.w @(loc_8c035066,PC),r0
	mov.l @(r0,r4),r3
	add 0x14,r3
	mov.l r3,@(r0,r4)
	add 0xEF,r0
	mov.b @(r0,r4),r2
	tst r5,r2
	bt loc_8c034fc8
	mov.w @(loc_8c035066,PC),r0
	mov.l @(r0,r4),r1
	add 0x14,r0
	mov.l @(r0,r4),r2
	add 0xEC,r0
	mov.l @r1,r3
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c034fc8:
	mov.w @(loc_8c035066,PC),r0
	mov.w @(loc_8c035068,PC),r1
	mov.l @(loc_8c03507c,PC),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x14,r0
	mov.w @(loc_8c03506a,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c034fa8

loc_8c034fde:
	mov.w @(loc_8c035066,PC),r0
	mov.w @(loc_8c03506e,PC),r3
	mov.l @(r0,r4),r1
	add r4,r3
	mov.w @(0x12,r1),r0
	mov.l @r3,r3
	extu.w r0,r0
	mov.w @(loc_8c035070,PC),r1
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
	mov.w @(loc_8c035072,PC),r7
	mov.b @(r0,r4),r5
	mov.w @(loc_8c035074,PC),r0
	add r4,r7
	extu.b r5,r5
	mov.w @(loc_8c035076,PC),r6
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
	mov.w @(loc_8c035078,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c035114
	mov 0x30,r0
	mov.b @(r0,r4),r5
	mov.w @(loc_8c035074,PC),r0
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
loc_8c035064:
	#data 0x0159
loc_8c035066:
	#data 0x0154
loc_8c035068:
	#data 0x0140
loc_8c03506a:
	#data 0x0142
loc_8c03506c:
	#data 0x0080
loc_8c03506e:
	#data 0x016c
loc_8c035070:
	#data 0x01c0
loc_8c035072:
	#data 0x02a4
loc_8c035074:
	#data 0x0164
loc_8c035076:
	#data 0x0300
loc_8c035078:
	#data 0x0202
	#align4
loc_8c03507c:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c035080:
	mov.w @(loc_8c03515c,PC),r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bt loc_8c035114
	mov 0x30,r0
	mov.b @(r0,r4),r5
	mov.w @(loc_8c03515e,PC),r0
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
	mov.w @(loc_8c03515e,PC),r0
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
	mov.w @(loc_8c035160,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c035114
	mov 0x30,r0
	mov.b @(r0,r4),r5
	mov.w @(loc_8c03515e,PC),r0
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
loc_8c03515e:
	mov.b r6,@(r0,r1)
loc_8c035160:
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
	mov.w @(loc_8c035250,PC),r0
	mov r4,r13
	mov.l @(loc_8c035258,PC),r2
	mov 0x01,r12
	mov.w @(r0,r13),r14
	mov 0x08,r11
	mov.w @(loc_8c035252,PC),r10
	mov 0x00,r6
	mov r14,r3
	shll r14
	add r3,r14
	mov.l @(loc_8c03525c,PC),r7
	shll2 r14
	mov.l @(loc_8c035260,PC),r3
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
	mov.w @(loc_8c035254,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	mov.b @(r0,r7),r3
	mov.w @(loc_8c035250,PC),r0
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
	mov.w @(loc_8c035256,PC),r0
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
	mov.l @(loc_8c035264,PC),r11
	bra loc_8c03527c
	mov r6,r7


;##############################################
loc_8c035250:
	#data 0x012e
loc_8c035252:
	#data 0x0300
loc_8c035254:
	#data 0x01a4
loc_8c035256:
	#data 0x0164
	#align4
loc_8c035258:
	#data 0x8c2659dc
loc_8c03525c:
	#data bank13.loc_8c1355d4
loc_8c035260:
	#data 0x8c26823c
loc_8c035264:
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
	mov.l @(loc_8c035384,PC),r11
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
	mov.w @(loc_8c03537e,PC),r0
	mov.b @(r0,r13),r1
	tst r1,r1
	bt loc_8c0352ea
	mov 0x30,r0
	mov.b @(r0,r13),r7
	mov.w @(loc_8c035380,PC),r0
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
	mov.w @(loc_8c035380,PC),r0
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
	mov.w @(loc_8c035380,PC),r0
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
loc_8c03537e:
	#data 0x0202
loc_8c035380:
	#data 0x0164
	#align4
loc_8c035384:
	#data 0x0000ff00

;----------------------------------------------
loc_8c035388:
	mov.w @(loc_8c0354b2,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	mov.b @(r0,r7),r2
	mov.w @(loc_8c0354b4,PC),r0
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
	mov.w @(loc_8c0354b4,PC),r0
	extu.w r6,r6
	mov.l r12,@-r15
	mov 0x10,r12
	mov.l r11,@-r15
	mov.w @(r0,r4),r3
	mov 0x25,r0
	mov.b @(r0,r4),r11
	add r5,r3
	mov.l @(loc_8c0354bc,PC),r5
	mov r3,r2
	extu.b r11,r11
	shll r3
	mov.w @(loc_8c0354b6,PC),r0
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
	mov.w @(loc_8c0354b4,PC),r0
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
	mov.l @(loc_8c0354bc,PC),r5
	mov r3,r2
	shll r3
	add r2,r3
	mov.w @(loc_8c0354b6,PC),r0
	shll2 r3
	shll2 r3
	mov.l @(r0,r4),r2
	shll2 r11
	shll2 r11
	add r3,r5
	mov.w @(loc_8c0354b8,PC),r3
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
loc_8c0354b2:
	#data 0x01a4
loc_8c0354b4:
	#data 0x012e
loc_8c0354b6:
	#data 0x0164
loc_8c0354b8:
	#data 0x0300
	#align4
loc_8c0354bc:
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
	mov.l @(loc_8c035644,PC),r3
	mov 0x14,r6
	mov.l @(loc_8c035640,PC),r4
	jmp @r3
	mov 0x00,r5

;==============================================
loc_8c0355b2:
	mov.l @(loc_8c035640,PC),r7
	mov 0x01,r3
	mov.l r3,@r7
	mov.l r4,@(0x8,r7)
	mov.l r5,@(0xC,r7)
	mov.l r5,@(0x10,r7)
	rts
	mov.l r6,@(0x4,r7)

;==============================================
loc_8c0355c2:
	mov.l @(loc_8c035640,PC),r4
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
	mov.l @(loc_8c035648,PC),r2
	jsr @r2
	mov r14,r0
	mov.l @(0x8,r4),r2
	mov r0,r6
	mov.l @(loc_8c03564c,PC),r3
	extu.b r6,r6
	shll16 r6
	and r3,r2
	mov r2,r1
	shll8 r6
	or r6,r1
	mov.l @(loc_8c035654,PC),r2
	mov.l r1,@(0x8,r4)
	lds.l @r15+,pr
	mov.l @(loc_8c035650,PC),r4
	jmp @r2
	mov.l @r15+,r14

loc_8c035634:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03563a:
	mov.l @(loc_8c035658,PC),r3
	rts
	mov.l @r3,r0

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c035640:
	#data 0x8c26a8d0
loc_8c035644:
	#data bank12.loc_8c129728
loc_8c035648:
	#data bank12.loc_8c1291dc
loc_8c03564c:
	#data 0x00ffffff
loc_8c035650:
	#data loc_8c030df0
loc_8c035654:
	#data loc_8c0395ac
loc_8c035658:
	#data 0x8c26a8dc

;==============================================
;preload atleast load default unlocks
loc_8c03565c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c03575c,PC),r3;8c03575c
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c035764,PC),r2;8c035764
	mov 0x00,r5
	mov.l @(loc_8c035760,PC),r14 ;8c035760
	mov.w @(loc_8c035758,PC),r6  ;8c035758
	mov.l @(loc_8c035768,PC),r3  ;8c035768
	mov.l r2,@r14
	jsr @r3
	mov r2,r4
	mov.l @r14,r2
	mov 0x20,r3
	mov 0x40,r0
	mov.l @(loc_8c035770,PC),r1  ;8c035770
	mov.l r3,@(0x14,r2)
	mov 0x00,r13
	mov.l @r14,r2
	mov 0x06,r3
	mov 0x01,r12
	mov.l @(loc_8c035778,PC),r11 ;8c035778
	mov.b r13,@(r0,r2)
	mov 0x29,r0
	mov.l @(loc_8c03576c,PC),r2 ;8c03576c
	mov.b r3,@r2
	mov.l @(loc_8c035774,PC),r3 ;8c035774
	mov.b r13,@r1
	mov.b r13,@r3
	mov.l @r14,r2
	mov.b r12,@(r0,r2)
	mov.l @(loc_8c03577c,PC),r2 ;8c03577c
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
	mov.l @(loc_8c035780,PC),r2 ;8c035780
	jsr @r2
	nop
	mov.l @(loc_8c035784,PC),r1 ;8c035784
	jsr @r1
	nop
	mov.l @(loc_8c035788,PC),r2 ;8c035788
	jsr @r2
	nop
	mov.l @r14,r1
	mov 0x2B,r0
	mov.l @(loc_8c03578c,PC),r2 ;8c03578c
	mov.b r13,@(r0,r1)
	mov 0x2F,r0
	mov.l @r14,r3
	mov.l @(loc_8c035790,PC),r1 ;8c035790 stage
	mov.b r13,@(r0,r3)
	mov 0x03,r3
	mov.l r3,@r2
	mov.l @(loc_8c035798,PC),r2 ;8c035798
	mov.l @(loc_8c0357a4,PC),r0 ;8c0357a4
	mov.l @(loc_8c035794,PC),r3 ;8c035794
	mov.b r13,@r1
	mov.b r13,@r3
	mov.b r13,@r2
	mov.l @(loc_8c0357a0,PC),r3 ;8c0357a0
	mov.l @(loc_8c03579c,PC),r1 ;8c03579c
	mov.b r13,@r1
	mov.b r13,@r3
	mov.l @r14,r2
	mov.l r0,@(0x30,r2)
	mov.l @(loc_8c0357a8,PC),r0
	mov.l @r14,r2
	mov.l r0,@(0x34,r2)
	bsr loc_8c0357d8
	nop
	bsr loc_8c03580c
	nop

	mov.l @(loc_8c0357ac,PC),r2 ;8c0357ac
	jsr @r2
	nop
	mov.l @(loc_8c0357b0,PC),r3 ;8c0357b0
	jsr @r3
	nop
	mov.l @(loc_8c0357b4,PC),r2 ;8c0357b4
	jsr @r2
	mov 0x0A,r4
	mov.l @(loc_8c0357b8,PC),r3 ;8c0357b8
	jsr @r3
	nop
	mov.l @(loc_8c0357bc,PC),r2 ;8c0357bc
	jsr @r2
	nop
	mov.l @r14,r3
	mov 0x42,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0357c4
	mov.l @(loc_8c0357c0,PC),r2 ;8c0357c0
	jsr @r2
	nop
	bra loc_8c0357ca
	nop

;##############################################
loc_8c035758:
	#data 0x0080
	#align4
loc_8c03575c:
	#data loc_8c0331d0
loc_8c035760:
	#data 0x8c26823c
loc_8c035764:
	#data 0x8c268240
loc_8c035768:
	#data bank12.loc_8c129728
loc_8c03576c:
	#data 0x8c26a964
loc_8c035770:
	#data 0x8c26a965
loc_8c035774:
	#data 0x8c26a966
loc_8c035778:
	#data 0x8c212bfc
loc_8c03577c:
	#data bank17.loc_8c178d1a
loc_8c035780:
	#data bank01.loc_8c010a5a
loc_8c035784:
	#data loc_8c0370a4
loc_8c035788:
	#data loc_8c031b14
loc_8c03578c:
	#data 0x8c2152cc
loc_8c035790:
	#data 0x8c26a95c
loc_8c035794:
	#data 0x8c26a95d
loc_8c035798:
	#data 0x8c26a960
loc_8c03579c:
	#data 0x8c26a961
loc_8c0357a0:
	#data 0x8c26a95f
loc_8c0357a4:
	#data 0x00ffff77
loc_8c0357a8:
	#data 0x02000004
loc_8c0357ac:
	#data loc_8c0355a8
loc_8c0357b0:
	#data loc_8c030f24
loc_8c0357b4:
	#data loc_8c030e30
loc_8c0357b8:
	#data loc_8c0391f8
loc_8c0357bc:
	#data bank04.loc_8c041044
loc_8c0357c0:
	#data bank04.loc_8c041b00

;----------------------------------------------
loc_8c0357c4:
	mov.l @(loc_8c035970,PC),r2
	jsr @r2
	nop

loc_8c0357ca:
	lds.l @r15+,pr
	mov.l @(loc_8c035974,PC),r1
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0357d8:
;after default loaded
	sts.l pr,@-r15
	mov.l @(loc_8c035978,PC),r2
	jsr @r2
	nop
	mov 0x10,r0
	mov.l @(loc_8c03597c,PC),r1
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
	mov.l @(loc_8c035980,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035984,PC),r14
	jsr @r14
	mov 0x00,r4
	mov.l @(loc_8c03598c,PC),r2
	mov.l @(loc_8c035988,PC),r5
	jsr @r2
	mov 0x00,r4
	jsr @r14
	mov 0x02,r4
	mov.l @(loc_8c035994,PC),r3
	mov.l @(loc_8c035990,PC),r4
	jsr @r3
	mov 0x00,r5
	jsr @r14
	mov 0x00,r4
	jsr @r14
	mov 0x00,r4
	mov.l @(loc_8c035998,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03599c,PC),r3
	mov 0x00,r4
	mov.l @(loc_8c0359a4,PC),r1
	mov.l @(loc_8c0359a0,PC),r2
	mov.b r4,@r3
	mov.l @(loc_8c0359a8,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(loc_8c0359b0,PC),r1
	mov.l @(loc_8c0359ac,PC),r2
	mov.l r4,@r3
	mov.l @(loc_8c0359b4,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(loc_8c0359bc,PC),r1
	mov.l @(loc_8c0359b8,PC),r2
	mov.l r4,@r3
	mov.l @(loc_8c0359c0,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(loc_8c0359c8,PC),r1
	mov.l @(loc_8c0359c4,PC),r2
	mov.l r4,@r3
	mov.l @(loc_8c0359cc,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(loc_8c0359d4,PC),r1
	mov.l @(loc_8c0359d0,PC),r2
	mov.l r4,@r3
	mov.l @(loc_8c0359d8,PC),r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(loc_8c0359e0,PC),r1
	mov.l @(loc_8c0359dc,PC),r2
	mov.l r4,@r3
	mov.l r4,@r2
	mov.l r4,@r1
	mov.l @(loc_8c0359ec,PC),r1
	mov.l @(loc_8c0359e8,PC),r2
	mov.l @(loc_8c0359e4,PC),r3
	mov.l r4,@r3
	mov.l r4,@r2
	mov.l r4,@r1
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03589a:
	mov.l @(loc_8c0359f0,PC),r2
	mov 0x1A,r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c0358ac
	bsr loc_8c0358be
	nop

loc_8c0358ac:
	mov.l @(loc_8c0359f0,PC),r1
	mov 0x1A,r2
	mov 0x00,r3
	mov.l @r1,r0
	add r0,r2
	mov.b r3,@r2
	mov.l @(loc_8c0359f4,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c0358be:
	mov.l @(loc_8c0359f8,PC),r2
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(loc_8c0359f0,PC),r14
	tst r3,r3
	bf loc_8c0358f2
	mov.l @(loc_8c0359fc,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035a00,PC),r2
	jsr @r2
	nop
	mov.l @r14,r3
	mov.l @(loc_8c035a04,PC),r0
	mov.b @r3,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jsr @r3
	nop
	mov.l @(loc_8c035a08,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c035a0c,PC),r3
	jsr @r3
	nop

loc_8c0358f2:
	mov.l @(loc_8c035a10,PC),r3
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
	mov.l @(loc_8c035a14,PC),r1
	cmp/ge r1,r2
	bf loc_8c035916
	mov.l @r14,r0
	mov 0x00,r2
	mov.l r2,@(0x20,r0)

loc_8c035916:
	lds.l @r15+,pr
	mov.l @(loc_8c035a18,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03591e:
	mov.l @(loc_8c0359f0,PC),r3
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
	mov.l @(loc_8c0359f0,PC),r3
	mov 0x2E,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	rts
	and 0x01,r0

;==============================================
loc_8c03594a:
	mov.l @(loc_8c0359f0,PC),r3
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
	mov.l @(loc_8c035a1c,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c035970:
	#data bank04.loc_8c041b10
loc_8c035974:
	#data bank11.loc_8c1159f0
loc_8c035978:
	#data bank11.loc_8c11bdb0
loc_8c03597c:
	#data 0x8c2659dc
loc_8c035980:
	#data bank11.loc_8c11b7a0
loc_8c035984:
	#data bank11.loc_8c11b800
loc_8c035988:
	#data 0x0ce0a000
loc_8c03598c:
	#data bank12.loc_8c127860
loc_8c035990:
	#data 0x0ce1d000
loc_8c035994:
	#data bank12.loc_8c1240a0
loc_8c035998:
	#data loc_8c0337bc
loc_8c03599c:
	#data 0x8c26a95f
loc_8c0359a0:
	#data 0x8c26a904
loc_8c0359a4:
	#data 0x8c26a908
loc_8c0359a8:
	#data 0x8c26a90c
loc_8c0359ac:
	#data 0x8c26a910
loc_8c0359b0:
	#data 0x8c26a914
loc_8c0359b4:
	#data 0x8c26a918
loc_8c0359b8:
	#data 0x8c26a91c
loc_8c0359bc:
	#data 0x8c26a920
loc_8c0359c0:
	#data 0x8c26a924
loc_8c0359c4:
	#data 0x8c26a928
loc_8c0359c8:
	#data 0x8c26a92c
loc_8c0359cc:
	#data 0x8c26a930
loc_8c0359d0:
	#data 0x8c26a934
loc_8c0359d4:
	#data 0x8c26a938
loc_8c0359d8:
	#data 0x8c26a93c
loc_8c0359dc:
	#data 0x8c26a940
loc_8c0359e0:
	#data 0x8c26a944
loc_8c0359e4:
	#data 0x8c26a948
loc_8c0359e8:
	#data 0x8c26a94c
loc_8c0359ec:
	#data 0x8c26a950
loc_8c0359f0:
	#data 0x8c26823c
loc_8c0359f4:
	#data loc_8c0338ec
loc_8c0359f8:
	#data 0x8c2152cc
loc_8c0359fc:
	#data loc_8c0395a0
loc_8c035a00:
	#data loc_8c030f54
loc_8c035a04:
	#data bank14.loc_8c14d1a4
loc_8c035a08:
	#data bank02.loc_8c02dc4c
loc_8c035a0c:
	#data loc_8c0355c2
loc_8c035a10:
	#data 0x8c213046
loc_8c035a14:
	#data 0x00010000
loc_8c035a18:
	#data loc_8c031c74
loc_8c035a1c:
	#data bank01.loc_8c011f68

;==============================================
loc_8c035a20:
	mov.l @(loc_8c035a5c,PC),r2
	mov.l @(loc_8c035a60,PC),r1
	mov.l @r2,r3
	mov.b @(0x1,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

;==============================================
loc_8c035a30:
	mov.l @(loc_8c035a5c,PC),r3
	mov.l @r3,r2
	mov.b @(0x1,r2),r0
	add 0x01,r0
	mov.b r0,@(0x1,r2)
	mov.l @(loc_8c035a64,PC),r2
	jmp @r2
	nop

;==============================================
loc_8c035a40:
	mov.l @(loc_8c035a5c,PC),r4
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
loc_8c035a5c:
	#data 0x8c26823c
loc_8c035a60:
	#data bank14.loc_8c14d1b4
loc_8c035a64:
	#data loc_8c033190

;==============================================
loc_8c035a68:
	mov.l r14,@-r15
	mov 0x2E,r0
	mov.l @(loc_8c035b8c,PC),r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l @(loc_8c035b90,PC),r1
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	mov.l @r14,r3
	mov.b @(0x1,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c035b94,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035b98,PC),r3
	jsr @r3
	nop
	mov.l @r14,r0
	mov.b @(0x1,r0),r0
	cmp/eq 0x0A,r0
	bt.s loc_8c035aa4
	mov r13,r4
	mov.l @(loc_8c035b9c,PC),r2
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
	mov.l @(loc_8c035ba4,PC),r5
	mov.l @(loc_8c035ba0,PC),r6
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
	mov.l @(loc_8c035ba8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035bac,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035bb0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035bb4,PC),r2
	jsr @r2
	mov 0x7F,r4
	mov.l @(loc_8c035bb8,PC),r3
	mov 0x01,r5
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c035bb8,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	mov.l @(loc_8c035bbc,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c035bc0,PC),r2
	jsr @r2
	mov 0x00,r4
	lds.l @r15+,pr
	mov.l @(loc_8c035bc4,PC),r3
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
	mov.l @(loc_8c035b8c,PC),r4
	mov 0x40,r1
	mov 0x00,r5
	mov.l @(loc_8c035bc8,PC),r3
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
loc_8c035b8c:
	#data 0x8c26823c
loc_8c035b90:
	#data bank14.loc_8c14d1e0
loc_8c035b94:
	#data bank11.loc_8c11e730
loc_8c035b98:
	#data loc_8c03319e
loc_8c035b9c:
	#data bank01.loc_8c010b18
loc_8c035ba0:
	#data 0x00008000
loc_8c035ba4:
	#data 0x8c2681dc
loc_8c035ba8:
	#data bank04.loc_8c041ecc
loc_8c035bac:
	#data bank04.loc_8c04182e
loc_8c035bb0:
	#data bank04.loc_8c04185e
loc_8c035bb4:
	#data bank04.loc_8c041b4c
loc_8c035bb8:
	#data bank04.loc_8c041a14
loc_8c035bbc:
	#data bank04.loc_8c041aa6
loc_8c035bc0:
	#data bank04.loc_8c04257c
loc_8c035bc4:
	#data bank02.loc_8c027ada
loc_8c035bc8:
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
	mov.l @(loc_8c035cdc,PC),r2
	mov 0x01,r3
	mov.l @(loc_8c035ce0,PC),r0
	mov 0x14,r1
	mov.b r3,@r2
	mov.b r1,@r0
	mov 0x2A,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x4A,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov.l @(loc_8c035ce4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035ce8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035cec,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035cf4,PC),r2
	mov.l @(loc_8c035cf0,PC),r4
	mov.w @(loc_8c035cd6,PC),r6
	jsr @r2
	mov 0x00,r5
	mov.l @(loc_8c035cf4,PC),r3
	mov.l @(loc_8c035cf8,PC),r4
	mov.w @(loc_8c035cd8,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(loc_8c035cfc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035d00,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035d04,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c035c2e:
	mov.l @(loc_8c035d08,PC),r2
	mov.l @(loc_8c035d0c,PC),r1
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

;==============================================
loc_8c035c3e:
	mov.l @(loc_8c035d08,PC),r4
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov 0x3C,r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c035ce8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035cec,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035cfc,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035d10,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035d14,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035d18,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035d20,PC),r3
	mov.l @(loc_8c035d1c,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c035d24,PC),r2
	jsr @r2
	fldi1 fr4
	mov.l @(loc_8c035d28,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c035d2c,PC),r2
	mov 0xFF,r4
	mov 0x00,r6
	mov 0x14,r5
	jmp @r2
	lds.l @r15+,pr
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c035d08,PC),r13
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
	mov.l @(loc_8c035d30,PC),r2
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
loc_8c035cd6:
	#data 0x0080
loc_8c035cd8:
	#data 0x00c0
	#align4
loc_8c035cdc:
	#data 0x8c289f78
loc_8c035ce0:
	#data 0x8c289f79
loc_8c035ce4:
	#data loc_8c0370a4
loc_8c035ce8:
	#data loc_8c0357d8
loc_8c035cec:
	#data loc_8c03580c
loc_8c035cf0:
	#data 0x8c2682c0
loc_8c035cf4:
	#data bank12.loc_8c129728
loc_8c035cf8:
	#data 0x8c2895f0
loc_8c035cfc:
	#data bank04.loc_8c044d8c
loc_8c035d00:
	#data bank04.loc_8c041c08
loc_8c035d04:
	#data bank04.loc_8c0411ce
loc_8c035d08:
	#data 0x8c26823c
loc_8c035d0c:
	#data bank14.loc_8c14d20c
loc_8c035d10:
	#data bank02.loc_8c02e014
loc_8c035d14:
	#data loc_8c030f24
loc_8c035d18:
	#data loc_8c030e30
loc_8c035d1c:
	#data bank14.loc_8c14d1bc
loc_8c035d20:
	#data loc_8c031f10
loc_8c035d24:
	#data loc_8c031f24
loc_8c035d28:
	#data bank02.loc_8c02dc1c
loc_8c035d2c:
	#data loc_8c0355b2
loc_8c035d30:
	#data bank02.loc_8c0279a4

;----------------------------------------------
loc_8c035d34:
	mov.l @r13,r0
	mov 0x29,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c035d44
	mov.l @(loc_8c035d94,PC),r14
	bra loc_8c035d46
	nop

loc_8c035d44:
	mov.l @(loc_8c035d98,PC),r14

loc_8c035d46:
	mov.l @(loc_8c035d9c,PC),r11
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
	mov.l @(loc_8c035da0,PC),r2
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
	mov.l @(loc_8c035da4,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c035d82:
	mov.l @(loc_8c035da8,PC),r2
	mov.l @(loc_8c035dac,PC),r1
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c035d94:
	#data bank13.loc_8c136400
loc_8c035d98:
	#data bank13.loc_8c1361c0
loc_8c035d9c:
	#data loc_8c031152
loc_8c035da0:
	#data loc_8c03e730
loc_8c035da4:
	#data bank0f.loc_8c0fbf3e
loc_8c035da8:
	#data 0x8c26823c
loc_8c035dac:
	#data bank14.loc_8c14d214

;==============================================
loc_8c035db0:
	sts.l pr,@-r15
	mov.l @(loc_8c035eb4,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c035e68
	mov.l @(loc_8c035eb8,PC),r4
	mov.l @r4,r2
	mov.b @(0x2,r2),r0
	add 0x01,r0
	mov.b r0,@(0x2,r2)
	mov.w @(loc_8c035eb0,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0xA6,r0
	mov.l @r4,r3
	mov.w r0,@(0xA,r3)
	mov.l @(loc_8c035ebc,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035ec0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035ec4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035ec8,PC),r2
	jsr @r2
	mov 0x19,r4
	mov.l @(loc_8c035ecc,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035ed0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035ed4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035ed8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035edc,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c035ee4,PC),r2
	mov.l @(loc_8c035ee0,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c035ee8,PC),r3
	jsr @r3
	fldi1 fr4
	mov.l @(loc_8c035eec,PC),r2
	jsr @r2
	nop
	mova @(loc_8c035ef4,PC),r0
	mov.l @(loc_8c035ef0,PC),r4
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
	mov.l @(loc_8c035ef8,PC),r3
	jsr @r3
	mov.b r0,@(0xB,r4)
	mov.l @(loc_8c035efc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035f00,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c035f04,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c035f08,PC),r3
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r3
	mov 0xFF,r4
	bsr loc_8c0360fa
	nop
	mov.l @(loc_8c035f10,PC),r3
	mov.l @(loc_8c035f0c,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c035e68:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c035e6e:
	mov.l r14,@-r15
	mov.l @(loc_8c035eb8,PC),r14
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
	mov.l @(loc_8c035eb4,PC),r2
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
loc_8c035eb0:
	#data 0x0348
	#align4
loc_8c035eb4:
	#data bank02.loc_8c0279a4
loc_8c035eb8:
	#data 0x8c26823c
loc_8c035ebc:
	#data loc_8c0357d8
loc_8c035ec0:
	#data loc_8c03580c
loc_8c035ec4:
	#data bank04.loc_8c041c08
loc_8c035ec8:
	#data loc_8c032be0
loc_8c035ecc:
	#data bank04.loc_8c044d8c
loc_8c035ed0:
	#data bank02.loc_8c02e014
loc_8c035ed4:
	#data loc_8c030f24
loc_8c035ed8:
	#data loc_8c0355a8
loc_8c035edc:
	#data bank02.loc_8c02dc1c
loc_8c035ee0:
	#data bank14.loc_8c14d1bc
loc_8c035ee4:
	#data loc_8c031f10
loc_8c035ee8:
	#data loc_8c031f24
loc_8c035eec:
	#data loc_8c030e30
loc_8c035ef0:
	#data 0x8c26a688
loc_8c035ef4:
	#data 0x44de8000
loc_8c035ef8:
	#data bank0f.loc_8c0f9dd8
loc_8c035efc:
	#data bank0f.loc_8c0f9924
loc_8c035f00:
	#data bank0f.loc_8c0fa2ec
loc_8c035f04:
	#data loc_8c030e3a
loc_8c035f08:
	#data loc_8c0355b2
loc_8c035f0c:
	#data loc_8c030712
loc_8c035f10:
	#data loc_8c0395ac

;----------------------------------------------
loc_8c035f14:
	bsr loc_8c036686
	nop
	bsr loc_8c036682
	nop

loc_8c035f1c:
	mov.l @r14,r2
	mov.w @(loc_8c035fa2,PC),r1
	mov.w @(0xA,r2),r0
	mov.l @(loc_8c035fbc,PC),r13
	add 0x01,r0
	mov.w r0,@(0xA,r2)
	mov.l @r14,r0
	mov.w @(0xA,r0),r0
	cmp/eq r1,r0
	bt loc_8c035f76
	mov.w @(loc_8c035fa4,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f7a
	mov.w @(loc_8c035fa6,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f7e
	mov.w @(loc_8c035fa8,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f82
	mov.w @(loc_8c035faa,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f86
	mov.w @(loc_8c035fac,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f8a
	mov.w @(loc_8c035fae,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f8e
	mov.w @(loc_8c035fb0,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f92
	mov.w @(loc_8c035fb2,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f96
	mov.w @(loc_8c035fb4,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f9a
	mov.w @(loc_8c035fb6,PC),r1
	cmp/eq r1,r0
	bt loc_8c035f9e
	mov.w @(loc_8c035fb8,PC),r1
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
loc_8c035fa2:
	#data 0x00f0
loc_8c035fa4:
	#data 0x00fa
loc_8c035fa6:
	#data 0x0104
loc_8c035fa8:
	#data 0x010e
loc_8c035faa:
	#data 0x0118
loc_8c035fac:
	#data 0x0122
loc_8c035fae:
	#data 0x00bc
loc_8c035fb0:
	#data 0x00c6
loc_8c035fb2:
	#data 0x00d0
loc_8c035fb4:
	#data 0x00da
loc_8c035fb6:
	#data 0x00e4
loc_8c035fb8:
	#data 0x00ee
	#align4
loc_8c035fbc:
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
	mov.w @(loc_8c036040,PC),r3
	cmp/eq r3,r0
	bf loc_8c035fd6
	mov.l @(loc_8c036054,PC),r1
	jsr @r1
	nop

loc_8c035fd6:
	mov.l @r14,r2
	mov.w @(loc_8c036042,PC),r3
	mov.w @(0xA,r2),r0
	cmp/eq r3,r0
	bf loc_8c035fe6
	mov.l @(loc_8c036058,PC),r1
	jsr @r1
	nop

loc_8c035fe6:
	mov.l @r14,r3
	mov.w @(loc_8c036044,PC),r11
	mov.w @(0xA,r3),r0
	mov.l @(loc_8c03605c,PC),r12
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
	mov.w @(loc_8c036046,PC),r1
	mov.w @(0xA,r0),r0
	mov.l @(loc_8c036060,PC),r13
	cmp/eq r1,r0
	bt loc_8c03602c
	mov.w @(loc_8c036048,PC),r1
	cmp/eq r1,r0
	bt loc_8c036030
	mov.w @(loc_8c03604a,PC),r1
	cmp/eq r1,r0
	bt loc_8c036034
	mov.w @(loc_8c03604c,PC),r1
	cmp/eq r1,r0
	bt loc_8c036038
	mov.w @(loc_8c03604e,PC),r1
	cmp/eq r1,r0
	bt loc_8c03603c
	mov.w @(loc_8c036050,PC),r1
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
loc_8c036040:
	#data 0x0177
loc_8c036042:
	#data 0x017c
loc_8c036044:
	#data 0x015e
loc_8c036046:
	#data 0x019a
loc_8c036048:
	#data 0x01a4
loc_8c03604a:
	#data 0x01c2
loc_8c03604c:
	#data 0x01cc
loc_8c03604e:
	#data 0x01ea
loc_8c036050:
	#data 0x01f4
	#align4
loc_8c036054:
	#data bank0f.loc_8c0fa488
loc_8c036058:
	#data bank0f.loc_8c0fa3fc
loc_8c03605c:
	#data bank0f.loc_8c0f9880
loc_8c036060:
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
	mov.w @(loc_8c036150,PC),r3
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
	mov.l @(loc_8c036158,PC),r2
	jsr @r2
	mov 0x02,r4

loc_8c03608a:
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	mov.w @(loc_8c036152,PC),r3
	cmp/ge r3,r0
	bt.s loc_8c0360a2
	mov 0x0B,r4
	mov.l @(loc_8c03615c,PC),r1
	mova @(loc_8c036160,PC),r0
	fmov @r0,fr3
	fmov @r1,fr2
	fadd fr3,fr2
	fmov fr2,@r1

loc_8c0360a2:
	mov.l @(loc_8c036164,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036168,PC),r2
	jsr @r2
	nop
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	cmp/eq r11,r0
	bf loc_8c0360c0
	mov.l @(loc_8c03616c,PC),r2
	mov 0x14,r5
	mov 0x00,r6
	jsr @r2
	mov 0xFF,r4

loc_8c0360c0:
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	mov.w @(loc_8c036154,PC),r3
	cmp/eq r3,r0
	bf loc_8c0360da
	mov.l @(loc_8c036170,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c03616c,PC),r3
	mov 0x3C,r5
	mov 0x01,r6
	jsr @r3
	mov 0xFF,r4

loc_8c0360da:
	lds.l @r15+,pr
	mov.l @(loc_8c036178,PC),r2
	mov.l @(loc_8c036174,PC),r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0360ea:
	sts.l pr,@-r15
	mov.l @(loc_8c03617c,PC),r3
	jsr @r3
	nop
	bsr loc_8c036686
	nop
	bra loc_8c036682
	lds.l @r15+,pr

;==============================================
loc_8c0360fa:
	mov.l @(loc_8c036180,PC),r3
	jmp @r3
	mov 0x04,r4

;==============================================
loc_8c036100:
	mov.l @(loc_8c036184,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036106:
	mov.l @(loc_8c036188,PC),r2
	mov.l @(loc_8c03618c,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c036188,PC),r3
	mov.l @r3,r2
	mov.b @(0x2,r2),r0
	tst r0,r0
	bt loc_8c03613c
	mov.l @(loc_8c036164,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(loc_8c036190,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036168,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036178,PC),r2
	mov.l @(loc_8c036194,PC),r4
	jmp @r2
	lds.l @r15+,pr

loc_8c03613c:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c036142:
	mov.l @(loc_8c036198,PC),r4
	mov 0x00,r0
	mov 0x01,r3
	mov.b r3,@r4
	mov.b r0,@(0x7,r4)
	rts
	mov.b r0,@(0x8,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c036150:
	#data 0x0190
loc_8c036152:
	#data 0x0140
loc_8c036154:
	#data 0x0348
	#align4
loc_8c036158:
	#data bank04.loc_8c042538
loc_8c03615c:
	#data 0x8c26a694
loc_8c036160:
	#data 0x40940000
loc_8c036164:
	#data bank04.loc_8c044ef0
loc_8c036168:
	#data loc_8c030e3a
loc_8c03616c:
	#data loc_8c0355b2
loc_8c036170:
	#data bank04.loc_8c041ecc
loc_8c036174:
	#data loc_8c030712
loc_8c036178:
	#data loc_8c0395ac
loc_8c03617c:
	#data loc_8c03e888
loc_8c036180:
	#data bank02.loc_8c027b64
loc_8c036184:
	#data bank04.loc_8c040d60
loc_8c036188:
	#data 0x8c26823c
loc_8c03618c:
	#data bank14.loc_8c14d21c
loc_8c036190:
	#data bank02.loc_8c02e7bc
loc_8c036194:
	#data loc_8c030724
loc_8c036198:
	#data 0x8c26a518

;==============================================
loc_8c03619c:
	sts.l pr,@-r15
	mov.l @(loc_8c0362b8,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c036232
	mov.l @(loc_8c0362bc,PC),r4
	mov.l @r4,r3
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov.w @(loc_8c0362b0,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c0362c0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0362c4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0362c8,PC),r3
	jsr @r3
	mov 0x0D,r4
	mov.l @(loc_8c0362cc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0362d0,PC),r3
	jsr @r3
	nop
	bsr loc_8c036142
	nop
	mov.l @(loc_8c0362d4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0362d8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0362dc,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0362e0,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c0362e8,PC),r3
	mov.l @(loc_8c0362e4,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c0362f0,PC),r3
	mova @(loc_8c0362ec,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(loc_8c0362f4,PC),r2
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r2
	mov 0xFF,r4
	mov.l @(loc_8c0362f8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0362fc,PC),r2
	jsr @r2
	mov 0x15,r4
	mov.l @(loc_8c036300,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c036304,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036308,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03630c,PC),r2
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
	mov.l @(loc_8c0362bc,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bf loc_8c03627a
	mov.l @(loc_8c0362b8,PC),r2
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
	mov.l @(loc_8c036310,PC),r3
	jsr @r3
	nop

loc_8c03627a:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	mov.w @(loc_8c0362b2,PC),r3
	cmp/eq r3,r0
	bf loc_8c03628e
	mov.l @(loc_8c0362f4,PC),r1
	mov 0x3C,r5
	mov 0x01,r6
	jsr @r1
	mov 0xFF,r4

loc_8c03628e:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	mov.w @(loc_8c0362b4,PC),r3
	cmp/eq r3,r0
	bf loc_8c0362aa
	mov.l @(loc_8c0362f4,PC),r1
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r1
	mov 0xFF,r4
	lds.l @r15+,pr
	mov.l @(loc_8c036314,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0362aa:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c0362b0:
	#data 0x01e0
loc_8c0362b2:
	#data 0x014f
loc_8c0362b4:
	#data 0x00eb
	#align4
loc_8c0362b8:
	#data bank02.loc_8c0279a4
loc_8c0362bc:
	#data 0x8c26823c
loc_8c0362c0:
	#data loc_8c0357d8
loc_8c0362c4:
	#data loc_8c03580c
loc_8c0362c8:
	#data loc_8c032be0
loc_8c0362cc:
	#data bank04.loc_8c044d8c
loc_8c0362d0:
	#data bank02.loc_8c02e014
loc_8c0362d4:
	#data loc_8c030f24
loc_8c0362d8:
	#data loc_8c030e30
loc_8c0362dc:
	#data loc_8c0355a8
loc_8c0362e0:
	#data bank02.loc_8c02dc1c
loc_8c0362e4:
	#data bank14.loc_8c14d1c8
loc_8c0362e8:
	#data loc_8c031f10
loc_8c0362ec:
	#data 0x3e99999a
loc_8c0362f0:
	#data loc_8c031f24
loc_8c0362f4:
	#data loc_8c0355b2
loc_8c0362f8:
	#data bank0f.loc_8c0fbf5c
loc_8c0362fc:
	#data bank04.loc_8c041dde
loc_8c036300:
	#data bank04.loc_8c041aa6
loc_8c036304:
	#data bank04.loc_8c041e44
loc_8c036308:
	#data loc_8c03e7ba
loc_8c03630c:
	#data bank02.loc_8c027b64
loc_8c036310:
	#data bank04.loc_8c041ecc
loc_8c036314:
	#data bank0f.loc_8c0fc2c4

;==============================================
loc_8c036318:
	mov.l @(loc_8c036424,PC),r2
	mov.l @(loc_8c036428,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c03642c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036434,PC),r3
	mov.l @(loc_8c036430,PC),r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c036338:
	mov.l @(loc_8c036424,PC),r4
	mov 0x00,r2
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.w @(loc_8c036420,PC),r6
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov.w @(loc_8c03641e,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0x4C,r0
	mov.l @r4,r3
	mov.l @(loc_8c036438,PC),r4
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c03643c,PC),r3
	jsr @r3
	mov r2,r5
	mov.l @(loc_8c03643c,PC),r2
	mov.l @(loc_8c036440,PC),r4
	mov.w @(loc_8c036422,PC),r6
	jsr @r2
	mov 0x00,r5
	mov.l @(loc_8c036444,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036448,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03644c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036450,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(loc_8c036454,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036458,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03645c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036460,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036464,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c03646c,PC),r2
	mov.l @(loc_8c036468,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c036470,PC),r3
	jsr @r3
	fldi1 fr4
	mov.l @(loc_8c036474,PC),r2
	jsr @r2
	nop
	mova @(0xC8,PC),r0
	mov.l @(loc_8c036478,PC),r4
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
	mov.l @(loc_8c036480,PC),r3
	jsr @r3
	mov.b r0,@(0xB,r4)
	mov.l @(loc_8c036484,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036488,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03648c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036490,PC),r14
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
	mov.l @(loc_8c036494,PC),r3
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	mov.l @(loc_8c036498,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03649c,PC),r3
	jsr @r3
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0364a0,PC),r2
	mov 0x06,r4
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03641e:
	#data 0x0708
loc_8c036420:
	#data 0x0080
loc_8c036422:
	#data 0x00c0
	#align4
loc_8c036424:
	#data 0x8c26823c
loc_8c036428:
	#data bank14.loc_8c14d224
loc_8c03642c:
	#data loc_8c030e3a
loc_8c036430:
	#data loc_8c030712
loc_8c036434:
	#data loc_8c0395ac
loc_8c036438:
	#data 0x8c2682c0
loc_8c03643c:
	#data bank12.loc_8c129728
loc_8c036440:
	#data 0x8c2895f0
loc_8c036444:
	#data loc_8c0357d8
loc_8c036448:
	#data loc_8c03580c
loc_8c03644c:
	#data bank04.loc_8c041d54
loc_8c036450:
	#data loc_8c032be0
loc_8c036454:
	#data bank04.loc_8c044d8c
loc_8c036458:
	#data loc_8c030f24
loc_8c03645c:
	#data bank02.loc_8c02e014
loc_8c036460:
	#data loc_8c0355a8
loc_8c036464:
	#data bank02.loc_8c02dc1c
loc_8c036468:
	#data bank14.loc_8c14d1bc
loc_8c03646c:
	#data loc_8c031f10
loc_8c036470:
	#data loc_8c031f24
loc_8c036474:
	#data loc_8c030e30
loc_8c036478:
	#data 0x8c26a688
	#data 0x44de8000
loc_8c036480:
	#data bank0f.loc_8c0fa588
loc_8c036484:
	#data bank0f.loc_8c0f9924
loc_8c036488:
	#data bank0f.loc_8c0fa2ec
loc_8c03648c:
	#data bank0f.loc_8c0fa488
loc_8c036490:
	#data bank0f.loc_8c0f9880
loc_8c036494:
	#data loc_8c0355b2
loc_8c036498:
	#data bank04.loc_8c041ecc
loc_8c03649c:
	#data bank04.loc_8c042538
loc_8c0364a0:
	#data bank02.loc_8c027b64

;==============================================
loc_8c0364a4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c036564,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0364b6
	bsr loc_8c036686
	nop

loc_8c0364b6:
	mov.l @(loc_8c036568,PC),r14
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
	mov.l @(loc_8c03656c,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0364f2:
	mov.l @(loc_8c036570,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c036564,PC),r2
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
	mov.l @(loc_8c036574,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c036578,PC),r3
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
	mov.l @(loc_8c03657c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036570,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(loc_8c036584,PC),r3
	mov.l @(loc_8c036580,PC),r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c03653a:
	sts.l pr,@-r15
	mov.l @(loc_8c036588,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036570,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(loc_8c036584,PC),r3
	mov.l @(loc_8c036580,PC),r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c036550:
	mov.l @(loc_8c036568,PC),r5
	mov 0x00,r0
	mov.l @r5,r3
	mov.b r0,@(0x1,r3)
	mov.l @r5,r3
	mov.b r0,@(0x2,r3)
	mov.l @(loc_8c03658c,PC),r3
	jmp @r3
	mov 0x06,r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c036564:
	#data loc_8c03563a
loc_8c036568:
	#data 0x8c26823c
loc_8c03656c:
	#data bank04.loc_8c044d8c
loc_8c036570:
	#data bank04.loc_8c044ef0
loc_8c036574:
	#data bank04.loc_8c04185e
loc_8c036578:
	#data bank04.loc_8c04257c
loc_8c03657c:
	#data bank01.loc_8c010f24
loc_8c036580:
	#data loc_8c030818
loc_8c036584:
	#data loc_8c0395ac
loc_8c036588:
	#data bank01.loc_8c0113e8
loc_8c03658c:
	#data bank02.loc_8c027b64

;==============================================
loc_8c036590:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov r13,r4
	mov.l r11,@-r15
	mov.l @(loc_8c0366b8,PC),r5
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c0366b4,PC),r6
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
	mov.l @(loc_8c0366bc,PC),r14
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
	mov.l @(loc_8c0366c0,PC),r11
	mov r13,r12
	mov.b r4,@(r0,r3)
	mov 0x06,r8
	mov.l @r14,r3
	mov.l r2,@(0x14,r3)

loc_8c0365e8:
	mov.w @(loc_8c0366ac,PC),r3
	exts.b r12,r10
	mov.l @(loc_8c0366c4,PC),r2
	mov 0x00,r5
	muls.w r3,r10
	mov r3,r6
	sts macl,r10
	add r11,r10
	jsr @r2
	mov r10,r4
	mov.w @(loc_8c0366ae,PC),r0
	mov.l @(loc_8c0366c8,PC),r3
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
	mov.w @(loc_8c0366b0,PC),r0
	mov.b r9,@(r0,r11)

loc_8c03661c:
	mov.l @r14,r3
	mov 0x18,r0
	mov 0x02,r4
	mov.w @(loc_8c0366ac,PC),r5
	mov.b @(r0,r3),r2
	tst r4,r2
	bt loc_8c036632
	mov.w @(loc_8c0366b0,PC),r0
	mov r11,r1
	add r5,r1
	mov.b r9,@(r0,r1)

loc_8c036632:
	mov.w @(loc_8c0366b2,PC),r0
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
	mov.l @(loc_8c0366cc,PC),r4
	sts.l pr,@-r15
	mov.b @r4,r3
	mov.l @(loc_8c0366d0,PC),r5
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
loc_8c0366ac:
	#data 0x05a4
loc_8c0366ae:
	#data 0x0524
loc_8c0366b0:
	#data 0x04bc
loc_8c0366b2:
	#data 0x04c8
loc_8c0366b4:
	#data 0x8000
	#align4
loc_8c0366b8:
	#data 0x8c2681dc
loc_8c0366bc:
	#data 0x8c26823c
loc_8c0366c0:
	#data 0x8c268340
loc_8c0366c4:
	#data bank12.loc_8c129728
loc_8c0366c8:
	#data bank04.loc_8c043b42
loc_8c0366cc:
	#data 0x8c289f79
loc_8c0366d0:
	#data 0x8c289f78

;==============================================
loc_8c0366d4:
	mov 0x14,r2
	mov.b r2,@r4

loc_8c0366d8:
	mov.b @r5,r0
	cmp/eq 0x01,r0
	bf loc_8c0366ee
	mov.l @(loc_8c0366f4,PC),r2
	mov 0x62,r5
	mov.l @(loc_8c0366f8,PC),r3
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
loc_8c0366f4:
	#data bank13.loc_8c136680
loc_8c0366f8:
	#data loc_8c0395c6

;==============================================
loc_8c0366fc:
	sts.l pr,@-r15
	mov.l @(loc_8c0367d8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0367dc,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c03671e
	mov.l @(loc_8c0367e0,PC),r1
	mov.w @(loc_8c0367d0,PC),r0
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	add 0x01,r3
	mov.b r3,@(r0,r2)
	mov.l @(loc_8c0367e4,PC),r2
	jsr @r2
	nop

loc_8c03671e:
	mov.l @(loc_8c0367e8,PC),r3
	jsr @r3
	mov 0x01,r4
	tst r0,r0
	bf loc_8c036738
	mov.l @(loc_8c0367e0,PC),r2
	mov.l @(loc_8c0367ec,PC),r1
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
	mov.l @(loc_8c0367e0,PC),r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l @(loc_8c0367f0,PC),r3
	sts.l pr,@-r15
	mov.l @(loc_8c0367f4,PC),r4
	mov.w @(loc_8c0367d0,PC),r6
	mov.l r13,@r3
	mov.l @r14,r2
	mov.b @(0x1,r2),r0
	add 0x01,r0
	mov.b r0,@(0x1,r2)
	mov 0x19,r0
	mov.l @r14,r2
	mov.b r12,@(r0,r2)
	mov.l @(loc_8c0367f8,PC),r2
	jsr @r2
	mov r13,r5
	mov.l @(loc_8c0367f8,PC),r3
	mov.l @(loc_8c0367fc,PC),r4
	mov.w @(loc_8c0367d2,PC),r6
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
	mov.w @(loc_8c0367d4,PC),r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c036800,PC),r3
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bf loc_8c0367b8
	mov.w @(loc_8c0367d4,PC),r0
	mov 0x07,r2
	mov.l @r14,r1
	mov.b r2,@(r0,r1)

loc_8c0367b8:
	mov.l @r14,r3
	mov 0x4C,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c03680c
	mov.w @(loc_8c0367d6,PC),r1
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bt loc_8c036804
	bra loc_8c036806
	mov 0x64,r4

;##############################################
loc_8c0367d0:
	#data 0x0080
loc_8c0367d2:
	#data 0x00c0
loc_8c0367d4:
	#data 0x00b2
loc_8c0367d6:
	#data 0x0085
	#align4
loc_8c0367d8:
	#data bank04.loc_8c042d8c
loc_8c0367dc:
	#data 0x8c213046
loc_8c0367e0:
	#data 0x8c26823c
loc_8c0367e4:
	#data loc_8c036bd4
loc_8c0367e8:
	#data bank01.loc_8c010b18
loc_8c0367ec:
	#data bank14.loc_8c14d22c
loc_8c0367f0:
	#data 0x8c212bf4
loc_8c0367f4:
	#data 0x8c2682c0
loc_8c0367f8:
	#data bank12.loc_8c129728
loc_8c0367fc:
	#data 0x8c2895f0
loc_8c036800:
	#data 0x8c212c14

;----------------------------------------------
loc_8c036804:
	mov.w @(loc_8c03690c,PC),r4

loc_8c036806:
	mov.l @(loc_8c03691c,PC),r2
	jsr @r2
	nop

loc_8c03680c:
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c036822
	mov.l @(loc_8c036920,PC),r2
	jsr @r2
	nop
	mov.w @(loc_8c03690e,PC),r0
	mov.l @r14,r3
	mov.b r12,@(r0,r3)

loc_8c036822:
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c036832
	mov.l @(loc_8c036924,PC),r2
	jsr @r2
	nop

loc_8c036832:
	mov.l @(loc_8c036928,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03692c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036930,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036934,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c036938,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03693c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036940,PC),r3
	jsr @r3
	mov 0x7F,r4
	mov.l @(loc_8c036948,PC),r2
	mov.l @(loc_8c036944,PC),r4
	jsr @r2
	mov 0x40,r5
	mov.l @(loc_8c03694c,PC),r3
	jsr @r3
	mov 0x03,r4
	mov.l @(loc_8c036950,PC),r2
	jsr @r2
	nop
	mova @(loc_8c036954,PC),r0
	mov.w @(loc_8c036910,PC),r4
	fmov @r0,fr6
	mova @(0xE0,PC),r0
	mov.l @(loc_8c036960,PC),r3
	fmov @r0,fr5
	mova @(loc_8c03695c,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(loc_8c03694c,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c036968,PC),r3
	mov.w @(loc_8c036912,PC),r5
	mov.l @(loc_8c036964,PC),r6
	jsr @r3
	mov r6,r4
	mov.l @(loc_8c036974,PC),r2
	mov.l @(loc_8c036970,PC),r4
	mov.l @(loc_8c03696c,PC),r5
	jsr @r2
	nop
	mov.l @(loc_8c036978,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03697c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036980,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c036914,PC),r7
	mov r13,r4
	mov.l @(loc_8c036984,PC),r14
	mov 0x02,r6

loc_8c0368b6:
	mul.l r7,r4
	mov.w @(loc_8c036916,PC),r0
	sts macl,r5
	add r14,r5
	mov.b r12,@r5
	mov.b r13,@(r0,r5)
	mov.w @(loc_8c036918,PC),r0
	mov.b r4,@(r0,r5)
	mov r4,r0
	nop
	mov.b r0,@(0x1,r5)
	mov r4,r3
	mov 0x00,r2
	mov.w @(loc_8c03691a,PC),r0
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
	mov.l @(loc_8c036988,PC),r2
	mov.l @(loc_8c03698c,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c036990,PC),r2
	jmp @r2
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03690c:
	#data 0x00c8
loc_8c03690e:
	#data 0x00a6
loc_8c036910:
	#data 0x1d28
loc_8c036912:
	#data 0x0080
loc_8c036914:
	#data 0x05a4
loc_8c036916:
	#data 0x012c
loc_8c036918:
	#data 0x0524
loc_8c03691a:
	#data 0x052c
	#align4
loc_8c03691c:
	#data bank01.loc_8c011780
loc_8c036920:
	#data loc_8c038028
loc_8c036924:
	#data loc_8c038f4c
loc_8c036928:
	#data loc_8c0357d8
loc_8c03692c:
	#data loc_8c03580c
loc_8c036930:
	#data loc_8c0355a8
loc_8c036934:
	#data bank02.loc_8c02dc1c
loc_8c036938:
	#data bank04.loc_8c041ecc
loc_8c03693c:
	#data bank04.loc_8c04182e
loc_8c036940:
	#data bank04.loc_8c041b4c
loc_8c036944:
	#data 0x8c2152dc
loc_8c036948:
	#data bank11.loc_8c11fcd0
loc_8c03694c:
	#data bank12.loc_8c1204f0
loc_8c036950:
	#data bank12.loc_8c121100
loc_8c036954:
	#data 0x463b8000
	#data 0x3e99999a
loc_8c03695c:
	#data 0x3faaaaab
loc_8c036960:
	#data bank12.loc_8c121730
loc_8c036964:
	#data 0x00808080
loc_8c036968:
	#data bank11.loc_8c11c420
loc_8c03696c:
	#data 0x8c311de0
loc_8c036970:
	#data 0x8c2df160
loc_8c036974:
	#data bank11.loc_8c11b570
loc_8c036978:
	#data bank12.loc_8c1234f0
loc_8c03697c:
	#data bank11.loc_8c11f340
loc_8c036980:
	#data bank04.loc_8c044d8c
loc_8c036984:
	#data 0x8c268340
loc_8c036988:
	#data 0x8c26823c
loc_8c03698c:
	#data bank14.loc_8c14d234
loc_8c036990:
	#data loc_8c031f30

;==============================================
loc_8c036994:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l @(loc_8c036ac4,PC),r14
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
	mov.l @(loc_8c036ac8,PC),r11
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	mov.w @(loc_8c036ab0,PC),r0
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
	mov.w @(loc_8c036ab4,PC),r2
	mov r4,r3
	mov.w @(loc_8c036ab2,PC),r1
	add r3,r2
	mov.b @r2,r2
	mov.b @(r0,r1),r0
	or r2,r0
	cmp/eq 0x03,r0
	bt loc_8c036a12
	mov.w @(loc_8c036ab2,PC),r0
	mov.w @(loc_8c036ab6,PC),r3
	mov.b @(r0,r4),r2
	mov.w @(loc_8c036ab8,PC),r0
	add 0xFF,r2
	mul.l r3,r2
	sts macl,r2
	add r11,r2
	mov.b @(r0,r2),r1
	mov.w @(loc_8c036aba,PC),r0
	mov.b r1,@(r0,r4)

loc_8c036a12:
	mov.l @(loc_8c036acc,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c036ad0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036ad4,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c036ad8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036adc,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c036abe,PC),r3
	mov.w @(loc_8c036abc,PC),r2
	mov.l @(loc_8c036ae0,PC),r4
	add r11,r3
	add r11,r2
	mov.w @(loc_8c036ac0,PC),r0
	mov.l r2,@r4
	mov.l r3,@(0x4,r4)
	mov.l @(loc_8c036ae4,PC),r3
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
	mov.l @(loc_8c036ae8,PC),r2
	mov 0x64,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c036a76:
	mov.l @(loc_8c036aec,PC),r3
	mov.w @(loc_8c036ac0,PC),r0
	mov.l @r14,r2
	mov.l @(loc_8c036af4,PC),r1
	mov.b r12,@(r0,r2)
	mov.b r12,@r3
	mov.l @(loc_8c036af8,PC),r3
	mov.l @(loc_8c036af0,PC),r2
	mov.b r12,@r2
	mov.b r12,@r1
	mov.b r12,@r3
	mov.l @(loc_8c036b00,PC),r3
	mov.l @(loc_8c036b04,PC),r1
	mov.l @(loc_8c036afc,PC),r2
	mov.b r13,@r2
	mov.b r13,@r3
	mov.b r13,@r1
	mov.l @(loc_8c036b0c,PC),r3
	mov.l @(loc_8c036b10,PC),r1
	mov.l @(loc_8c036b08,PC),r2
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
loc_8c036ab0:
	#data 0x009a
loc_8c036ab2:
	#data 0x0085
loc_8c036ab4:
	#data 0x0084
loc_8c036ab6:
	#data 0x05a4
loc_8c036ab8:
	#data 0x052e
loc_8c036aba:
	#data 0x0081
loc_8c036abc:
	#data 0x04f0
loc_8c036abe:
	#data 0x0a94
loc_8c036ac0:
	#data 0x00b0
	#align4
loc_8c036ac4:
	#data 0x8c26823c
loc_8c036ac8:
	#data 0x8c268340
loc_8c036acc:
	#data loc_8c0357d8
loc_8c036ad0:
	#data loc_8c03580c
loc_8c036ad4:
	#data bank02.loc_8c02dc1c
loc_8c036ad8:
	#data bank04.loc_8c045e74
loc_8c036adc:
	#data bank04.loc_8c0472fc
loc_8c036ae0:
	#data 0x8c212f28
loc_8c036ae4:
	#data loc_8c0370a4
loc_8c036ae8:
	#data bank01.loc_8c011780
loc_8c036aec:
	#data 0x8c2132cb
loc_8c036af0:
	#data 0x8c2132ca
loc_8c036af4:
	#data 0x8c2134cd
loc_8c036af8:
	#data 0x8c2134cc
loc_8c036afc:
	#data 0x8c2134ce
loc_8c036b00:
	#data 0x8c213049
loc_8c036b04:
	#data 0x8c213048
loc_8c036b08:
	#data 0x8c213046
loc_8c036b0c:
	#data 0x8c2136d0
loc_8c036b10:
	#data 0x8c2136d1

;==============================================
loc_8c036b14:
	mov.l @(loc_8c036ba8,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b1a:
	mov.l @(loc_8c036bac,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b20:
	mov.l @(loc_8c036bb0,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b26:
	mov.l @(loc_8c036bb4,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b2c:
	mov.l @(loc_8c036bb8,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c036b32:
	mov.l @(loc_8c036bbc,PC),r4
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
	mov.l @(loc_8c036bc0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036bc4,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c036bc8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036bcc,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c036bd0,PC),r3
	mov 0x00,r4
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c036ba8:
	#data loc_8c03a1a4
loc_8c036bac:
	#data loc_8c03d988
loc_8c036bb0:
	#data loc_8c03eba4
loc_8c036bb4:
	#data loc_8c03ee6c
loc_8c036bb8:
	#data loc_8c03f0d4
loc_8c036bbc:
	#data 0x8c26823c
loc_8c036bc0:
	#data bank04.loc_8c044d8c
loc_8c036bc4:
	#data loc_8c030f24
loc_8c036bc8:
	#data loc_8c030e30
loc_8c036bcc:
	#data loc_8c0355a8
loc_8c036bd0:
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
	mov.l @(loc_8c036cf0,PC),r13
	mov r12,r4
	mov.w @(loc_8c036cde,PC),r14
	mov.l @(loc_8c036cec,PC),r7

loc_8c036bea:
	mul.l r14,r4
	mov r4,r2
	and r6,r2
	mov r2,r3
	shll2 r2
	add r3,r2
	mov.w @(loc_8c036ce0,PC),r0
	sts macl,r1
	mov.l @(loc_8c036cf4,PC),r3
	shll2 r2
	add r7,r2
	add r13,r1
	add r0,r1
	jsr @r3
	mov 0x14,r0
	add 0x01,r4
	cmp/ge r5,r4
	bf loc_8c036bea
	mov.l @(loc_8c036cf8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c036cfc,PC),r5
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
	mov.w @(loc_8c036ce2,PC),r6
	bra loc_8c036c52
	nop

loc_8c036c44:
	mov.w @(loc_8c036ce4,PC),r0
	mov.w @(loc_8c036ce6,PC),r6
	mov.b r12,@(r0,r4)
	add 0x01,r0
	bra loc_8c036c52
	mov.b r12,@(r0,r4)

loc_8c036c50:
	mov r12,r6

loc_8c036c52:
	mov.w @(loc_8c036ce8,PC),r0
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
	mov.l @(loc_8c036cf4,PC),r3
	mov.w r2,@(r0,r4)
	mov.b @(0xF,r5),r0
	mov.w @(loc_8c036ce8,PC),r2
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
	mov.w @(loc_8c036ce8,PC),r2
	neg r0,r1
	mov.l @(loc_8c036cf4,PC),r3
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
	mov.w @(loc_8c036ce8,PC),r0
	mov.w @(r0,r4),r0
	mov.w @(loc_8c036cea,PC),r4
	extu.w r0,r0
	and r0,r4
	rts
	mov r4,r0

;==============================================
loc_8c036cc6:
	mov.l @(loc_8c036d00,PC),r2
	mov 0x5C,r0
	mov r4,r1
	mov.l r4,@-r15
	mov.l @r2,r3
	mov.b r1,@(r0,r3)
	mov.l @(loc_8c036d04,PC),r3
	mov.l @(loc_8c036d08,PC),r1
	mov.l @r3,r4
	mov.l @r15,r5
	jmp @r1
	add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c036cde:
	#data 0x05a4
loc_8c036ce0:
	#data 0x04f0
loc_8c036ce2:
	#data 0x1000
loc_8c036ce4:
	#data 0x035c
loc_8c036ce6:
	#data 0x2000
loc_8c036ce8:
	#data 0x04dc
loc_8c036cea:
	#data 0x03f0
	#align4
loc_8c036cec:
	#data 0x8c2681dc
loc_8c036cf0:
	#data 0x8c268340
loc_8c036cf4:
	#data bank12.loc_8c129620
loc_8c036cf8:
	#data bank01.loc_8c011d3c
loc_8c036cfc:
	#data 0x8c212ccc
loc_8c036d00:
	#data 0x8c26823c
loc_8c036d04:
	#data 0x8c1f8ac4
loc_8c036d08:
	#data bank17.loc_8c174e96

;==============================================
loc_8c036d0c:
	mov.l @(loc_8c036de4,PC),r1
	mov.w @(loc_8c036dde,PC),r0
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
	mov.l @(loc_8c036de8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c036dda
	mov.l @(loc_8c036dec,PC),r0
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
	mov.l @(loc_8c036df0,PC),r2
	add r3,r7
	mov.l @(loc_8c036df4,PC),r1
	shll2 r7
	add r2,r7
	mov.w @r7,r3
	extu.w r3,r3
	and r1,r3
	cmp/eq r1,r3
	bt loc_8c036dda
	mov.w @(0x4,r7),r0
	mov.l @(loc_8c036df8,PC),r3
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
	mov.w @(loc_8c036de0,PC),r0
	mov.l @(loc_8c036dfc,PC),r1
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
loc_8c036dde:
	#data 0x00b0
loc_8c036de0:
	#data 0x05a4
	#align4
loc_8c036de4:
	#data 0x8c26823c
loc_8c036de8:
	#data 0x8c212cda
loc_8c036dec:
	#data 0x8c212be0
loc_8c036df0:
	#data 0x8c2681dc
loc_8c036df4:
	#data 0x00008360
loc_8c036df8:
	#data 0x00008000
loc_8c036dfc:
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
	mov.w @(loc_8c036e92,PC),r0
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
	mov.l @(loc_8c036ea0,PC),r2
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
	mov.l @(loc_8c036eac,PC),r3
	fmov @r0,fr3
	mov 0x10,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c036ea8,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	jsr @r3
	fmov fr3,@(r0,r4)
	mov.l @(loc_8c036ea0,PC),r3
	mov 0x5C,r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c036e84
	bsr loc_8c036cc6
	mov 0x01,r4
	mov.l @(loc_8c036eb0,PC),r3
	jsr @r3
	nop

loc_8c036e84:
	mov.l @(loc_8c036eb4,PC),r2
	mov 0x39,r4
	jmp @r2
	lds.l @r15+,pr

loc_8c036e8c:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c036e92:
	#data 0x4650
	#align4
	#data 0x42a00000
	#data 0x43480000
	#data 0x42c80000
loc_8c036ea0:
	#data 0x8c26823c
	#data 0x43400000
loc_8c036ea8:
	#data 0x42000000
loc_8c036eac:
	#data loc_8c031bba
loc_8c036eb0:
	#data bank04.loc_8c04185e
loc_8c036eb4:
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
	mov.l @(loc_8c036f7c,PC),r13 ; 8c036f7c ; 8c26823c
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
	mov.l @(loc_8c036f80,PC),r2 ; 8c036f80 ; 8c04185e
	jsr @r2
	nop

loc_8c036ef4:
	mov.l @(loc_8c036f84,PC),r3 ; 8c036f84 ; 8c04257c
	jsr @r3
	mov 0x39,r4
	mov.w @(loc_8c036f76,PC),r0 ; 8c036f76 ; 4650
	mov.l @(loc_8c036f8c,PC),r3 ; 8c036f8c ; 8c031bba
	mov.w r0,@(0x8,r14)
	mov 0x0A,r0
	mov.w r0,@(0xA,r14)
	mova @(loc_8c036f88,PC),r0  ; 8c036f88 ; 42a00000; box size
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
	mov.l @(loc_8c036f7c,PC),r4 ; 8c036f7c ; 8c26823c
	mov.w @(loc_8c036f78,PC),r0 ; 8c036f78 ; 008d
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
loc_8c036f76:
	#data 0x4650
loc_8c036f78:
	#data 0x008d
	#align4
loc_8c036f7c:
	#data 0x8c26823c
loc_8c036f80:
	#data bank04.loc_8c04185e
loc_8c036f84:
	#data bank04.loc_8c04257c
loc_8c036f88:
	#data 0x42a00000
loc_8c036f8c:
	#data loc_8c031bba

;==============================================
;Pause Check
loc_8c036f90:
	mov.l r14,@-r15
	mov 0x00,r5
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c037078,PC),r14
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
	mov.l @(loc_8c03707c,PC),r3
	and 0x03,r0
	mov.b r0,@r14
	mov.w @(loc_8c037074,PC),r0
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
	mov.l @(loc_8c037080,PC),r4
	mov.l @r4,r0
	mov.l @(0x30,r0),r0
	mov.l @r0,r3
	tst r3,r3
	bt loc_8c037084
	bra loc_8c037086
	mov 0x01,r0

;##############################################
loc_8c037074:
	#data 0x008d
	#align4
loc_8c037078:
	#data 0x8c212c9c
loc_8c03707c:
	#data 0x8c26823c
loc_8c037080:
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
	mov.l @(loc_8c03717c,PC),r14
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
	mov.w @(loc_8c037176,PC),r0
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
	mov.l @(loc_8c037184,PC),r6
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
	mov.w @(loc_8c037178,PC),r0
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
	mov.l @(loc_8c037188,PC),r3
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
loc_8c037176:
	#data 0x4650
loc_8c037178:
	#data 0x0084
	#align4
loc_8c03717c:
	#data 0x8c212c9c
	#data 0x42a00000
loc_8c037184:
	#data 0x8c26823c
loc_8c037188:
	#data 0x8c212ce8

;==============================================
;internal pause render
;white border, green selector, window bg postion?, etc
;==============================================
loc_8c03718c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c037360,PC),r13
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
	mov.l @(loc_8c037364,PC),r14
	mov r0,r4
	extu.b r4,r5
	extu.b r4,r4
	add 0x60,r5
	tst r4,r4
	shll16 r5
	bt.s loc_8c0371be
	shll8 r5
	mova @(loc_8c037368,PC),r0
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
	mov.l @(loc_8c037370,PC),r11  ;8c127af0
	mov r14,r5
	jsr @r11
	mov 0x04,r4

	mov.w @(0xA,r13),r0
	add 0x40,r14
	mov.l @(loc_8c037378,PC),r12
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
	mova @(loc_8c03737c,PC),r0
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
	mova @(loc_8c03738c,PC),r0 ;8c03738c
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
	mov.l @(loc_8c037394,PC),r3
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
	mova @(loc_8c0373a0,PC),r0
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
	mova @(loc_8c0373a8,PC),r0
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
loc_8c037360:
	#data 0x8c212c9c
loc_8c037364:
	#data bank14.loc_8c14d250
loc_8c037368:
	#data 0x3f4ccccd
	#data 0x3f7d70a4
loc_8c037370:
	#data bank12.loc_8c127af0
	#data 0x41200000
loc_8c037378:
	#data 0x8c212bfc
loc_8c03737c:
	#data 0x439e0000
	#data 0x43a20000
	#data 0x436c0000
	#data 0x43740000
loc_8c03738c:
	#data 0x43a00000
	#data 0x43700000
loc_8c037394:
	#data bank13.loc_8c136694
	#data 0x40800000
	#data 0xc0800000
loc_8c0373a0:
	#data 0x41000000
	#data 0xc0000000
loc_8c0373a8:
	#data 0x41880000

;==============================================
loc_8c0373ac:
	sts.l pr,@-r15
	bsr loc_8c03718c
	nop
	mov.l @(loc_8c037424,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c0373cc
	mov.l @(loc_8c037428,PC),r3
	mov 0x0D,r4
	mov.w @(loc_8c037420,PC),r0
	mov.l @r3,r5
	mov.l @(loc_8c03742c,PC),r2
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
	mov.l @(loc_8c037428,PC),r2
	mov 0x01,r5
	mov.w @(loc_8c037422,PC),r0
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
	mov.l @(loc_8c037434,PC),r3
	mov.l @(loc_8c037430,PC),r4
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c037420:
	#data 0x00b1
loc_8c037422:
	#data 0x008d
	#align4
loc_8c037424:
	#data 0x8c212ca8
loc_8c037428:
	#data 0x8c26823c
loc_8c03742c:
	#data loc_8c0312d6
loc_8c037430:
	#data loc_8c0373ac
loc_8c037434:
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
	mov.l @(loc_8c037568,PC),r10
	mov.l @(loc_8c037564,PC),r13

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
	mov.l @(loc_8c03756c,PC),r13
	add r3,r5
	mov.b @(0xE,r14),r0
	shll2 r5
	mov.w @(loc_8c03755c,PC),r2
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
	mov.w @(loc_8c03755e,PC),r2
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
	mov.l @(loc_8c037570,PC),r3
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
	mov.l @(loc_8c037574,PC),r2
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
	mov.l @(loc_8c037578,PC),r3
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
	mov.w @(loc_8c037560,PC),r0
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
	mov.l @(loc_8c037574,PC),r2
	mov 0x02,r4
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;##############################################
loc_8c03755c:
	#data 0x2000
loc_8c03755e:
	#data 0x1000
loc_8c037560:
	#data 0x4650
	#align4
loc_8c037564:
	#data bank13.loc_8c136694
loc_8c037568:
	#data loc_8c0395c6
loc_8c03756c:
	#data 0x8c2681dc
loc_8c037570:
	#data bank12.loc_8c1292d4
loc_8c037574:
	#data bank04.loc_8c04257c
loc_8c037578:
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
	mov.l @(loc_8c0376c8,PC),r10
	mov.l @(loc_8c0376c4,PC),r13

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
	mov.l @(loc_8c0376cc,PC),r13
	add r3,r5
	mov.b @(0xE,r14),r0
	shll2 r5
	mov.w @(loc_8c0376be,PC),r2
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
	mov.w @(loc_8c0376c0,PC),r2
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
	mov.l @(loc_8c0376d0,PC),r2
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
	mov.l @(loc_8c0376d4,PC),r3
	extu.w r0,r8
	jsr @r3
	mov r12,r4
	extu.w r0,r0
	tst r0,r8
	bt loc_8c0376ae
	mov.b @(0xE,r14),r0
	mov.l @(loc_8c0376d8,PC),r13
	tst r0,r0
	bf loc_8c03767a
	mov.l @r13,r3
	mov 0x50,r0
	mov 0x01,r2
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c0376dc,PC),r3
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
	mov.l @(loc_8c0376d0,PC),r3
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
loc_8c0376be:
	#data 0x2000
loc_8c0376c0:
	#data 0x1000
	#align4
loc_8c0376c4:
	#data bank13.loc_8c1366ac
loc_8c0376c8:
	#data loc_8c0395c6
loc_8c0376cc:
	#data 0x8c2681dc
loc_8c0376d0:
	#data bank04.loc_8c04257c
loc_8c0376d4:
	#data bank01.loc_8c011a64
loc_8c0376d8:
	#data 0x8c26823c
loc_8c0376dc:
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
	mov.l @(loc_8c0377f0,PC),r10 ;8c0377f0 ; 8c0395c6
	mov.l @(loc_8c0377ec,PC),r13 ;8c0377ec ; 8c1366c4

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
	mov.l @(loc_8c0377f4,PC),r13 ;8c0377f4 ; 8c2681dc
	add r3,r5
	mov.b @(0xE,r14),r0
	shll2 r5
	mov.w @(loc_8c0377e8,PC),r2 ;8c0377e8 ; 2000
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
	mov.w @(loc_8c0377ea,PC),r2 ;8c0377ea
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
	mov.l @(loc_8c0377f8,PC),r2  ;8c0377f8
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
	mov.l @(loc_8c0377fc,PC),r3  ;8c0377fc
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
	mov.l @(loc_8c037800,PC),r6 ;  8c037800
	mov r5,r0
	nop
	mov.b r0,@(0xE,r6)
	mov.b r4,@r6
	mov r4,r0
	nop
	mov.l @(loc_8c037804,PC),r5 ;  8c037804
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
loc_8c0377e8:
	#data 0x2000
loc_8c0377ea:
	#data 0x1000
	#align4
loc_8c0377ec:
	#data bank13.loc_8c1366c4
loc_8c0377f0:
	#data loc_8c0395c6
loc_8c0377f4:
	#data 0x8c2681dc
loc_8c0377f8:
	#data bank04.loc_8c04257c
loc_8c0377fc:
	#data bank01.loc_8c011a64
loc_8c037800:
	#data 0x8c212ccc
loc_8c037804:
	#data 0x8c2895f0

;----------------------------------------------
loc_8c037808:
	mov r4,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0xC,r14)
	mov.w @(loc_8c03790e,PC),r0
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
	mov.l @(loc_8c03791c,PC),r2
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
	mov.l @(loc_8c037b8c,PC),r4
	mov 0x00,r5
	mov.l r13,@-r15
	mov r5,r0
	nop
	mov.l @(loc_8c037b90,PC),r13
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
	mov.l @(loc_8c037b90,PC),r12
	mov r1,r6
	mov.l @(loc_8c037b8c,PC),r5
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
	mov.l @(loc_8c037b94,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c037b1a
	mova @(loc_8c037b9c,PC),r0
	mov.l @(loc_8c037b90,PC),r4
	mov.l @(loc_8c037b98,PC),r13
	mov 0x00,r12
	mov r4,r11
	mov.l @(loc_8c037b8c,PC),r14
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
	mov.l @(loc_8c037bac,PC),r3
	mov r0,r5
	shll2 r5
	shll r5
	fmov fr15,fr0
	add r3,r5
	mov.b @r5,r2
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mova @(loc_8c037bb0,PC),r0
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
	mova @(loc_8c037bb4,PC),r0
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
	mov.l @(loc_8c037bb8,PC),r2
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
	mov.l @(loc_8c037bac,PC),r3
	shll r14
	mov.l @(loc_8c037bbc,PC),r11
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
loc_8c037b8c:
	#data 0x8c212bfc
loc_8c037b90:
	#data 0x8c212ee4
loc_8c037b94:
	#data 0x8c212cb6
loc_8c037b98:
	#data bank14.loc_8c14d310
loc_8c037b9c:
	#data 0xc0000000
	#data 0x41880000
	#data 0x41800000
	#data 0x40800000
loc_8c037bac:
	#data bank13.loc_8c136694
loc_8c037bb0:
	#data 0xc0800000
loc_8c037bb4:
	#data 0x41000000
loc_8c037bb8:
	#data bank12.loc_8c127af0
loc_8c037bbc:
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
	mov.l @(loc_8c037c30,PC),r2
	mov 0x00,r10
	mov r0,r13
	exts.b r13,r3
	mulu.w r4,r13
	add 0x01,r3
	mov r13,r6
	mov.l @(loc_8c037c28,PC),r9
	add 0x20,r6
	mov.l @(loc_8c037c24,PC),r8
	mov 0x28,r5
	sts macl,r4
	mov.l r3,@-r15
	mov.l @(loc_8c037c2c,PC),r11
	mov.l r2,@-r15
	jsr @r11
	add 0x1E,r4
	mov.b @(0x1,r14),r0
	mov.l @(loc_8c037c34,PC),r1
	shll2 r0
	mov.w @(loc_8c037c22,PC),r2
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
loc_8c037c22:
	#data 0x0101
	#align4
loc_8c037c24:
	#data bank04.loc_8c04257c
loc_8c037c28:
	#data 0x8c2681dc
loc_8c037c2c:
	#data loc_8c0395c6
loc_8c037c30:
	#data bank13.loc_8c1367d0
loc_8c037c34:
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
	mov.w @(loc_8c037cfc,PC),r2
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
	mov.w @(loc_8c037cfe,PC),r2
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
	mov.l @(loc_8c037d00,PC),r3
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
	mov.l @(loc_8c037e20,PC),r3
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
	mov.l @(loc_8c037e20,PC),r3
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
	mov.w @(loc_8c037e1a,PC),r2
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
	mov.w @(loc_8c037e1c,PC),r2
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
	mov.l @(loc_8c037e24,PC),r3
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
	mov.l @(loc_8c037e28,PC),r3
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
loc_8c037e1a:
	#data 0x0800
loc_8c037e1c:
	#data 0x0400
	#align4
loc_8c037e20:
	#data bank01.loc_8c011a64
loc_8c037e24:
	#data bank12.loc_8c1292d4
loc_8c037e28:
	#data loc_8c031b48

;----------------------------------------------
loc_8c037e2c:
	mov r14,r12
	add 0x04,r12
	add r13,r12
	mov.l @(loc_8c037f58,PC),r3
	mov.b @r12,r12
	mov 0x35,r4
	mov.w @(loc_8c037f4e,PC),r2
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
	mov.l @(loc_8c037f58,PC),r3
	mov r0,r13
	shll2 r13
	mov.w @(loc_8c037f50,PC),r2
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
	mov.l @(loc_8c037f58,PC),r3
	mov r0,r13
	shll2 r13
	mov.w @(loc_8c037f52,PC),r2
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
	mov.l @(loc_8c037f5c,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c037f54,PC),r0
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
	mov.l @(loc_8c037f60,PC),r3
	mov 0x22,r5
	mov.l @(loc_8c037f64,PC),r2
	mov 0x33,r6
	mov.l r3,@-r15
	jsr @r2
	mov 0x3C,r4
	add 0x04,r15
	mov.l @(loc_8c037f68,PC),r5
	bsr loc_8c037bc0
	mov r14,r4
	mov.l @(loc_8c037f6c,PC),r5
	bsr loc_8c037bc0
	mov r14,r4
	mov.l @(loc_8c037f70,PC),r4
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
	mov.w @(loc_8c037f56,PC),r0
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
loc_8c037f4e:
	#data 0x00a0
loc_8c037f50:
	#data 0x0100
loc_8c037f52:
	#data 0x0110
loc_8c037f54:
	#data 0x008d
loc_8c037f56:
	#data 0x4650
	#align4
loc_8c037f58:
	#data bank13.loc_8c136694
loc_8c037f5c:
	#data 0x8c26823c
loc_8c037f60:
	#data bank13.loc_8c1367e8
loc_8c037f64:
	#data loc_8c0395c6
loc_8c037f68:
	#data 0x8c212ee4
loc_8c037f6c:
	#data 0x8c212ef4
loc_8c037f70:
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
	mov.l @(loc_8c0380b0,PC),r3
	mov.l @(loc_8c0380ac,PC),r4
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
	mov.w @(loc_8c038098,PC),r0
	mov.w r0,@(0x8,r14)
	mov 0x0A,r0
	mov.w r0,@(0xA,r14)
	mova @(loc_8c0380b4,PC),r0
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
	mov.l @(loc_8c0380b8,PC),r5
	mov 0x00,r0
	mov.w @(loc_8c03809a,PC),r1
	mov.b r0,@(0xE,r4)
	mov.l @r5,r3
	mov.b @(0x6,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(loc_8c03809c,PC),r1
	mov.l @r5,r3
	mov.b @(0x7,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(loc_8c03809e,PC),r1
	mov.l @r5,r3
	mov.b @(0x8,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(loc_8c0380a0,PC),r1
	mov.l @r5,r3
	mov.b @(0xD,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(loc_8c0380a2,PC),r1
	mov.l @r5,r3
	mov.b @(0xA,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x1B,r1
	mov.l @r5,r3
	mov.b @(0xB,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(loc_8c0380a4,PC),r1
	mov.l @r5,r3
	mov.b @(0xC,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(loc_8c0380a6,PC),r1
	mov.l @r5,r3
	mov.b @(0x9,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov 0x19,r0
	mov.b @(r0,r4),r2
	mov.w @(loc_8c0380a8,PC),r0
	mov.l @r5,r3
	mov.l @(loc_8c0380bc,PC),r4
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c0380c0,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c038028:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0380c4,PC),r14
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
	mov.l @(loc_8c0380b8,PC),r4
	mov 0x4C,r1
	mov.w @(loc_8c0380aa,PC),r0
	mov.l @r4,r2
	mov.b r13,@(r0,r2)
	mov.l @r4,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c03808a
	mov.w @(loc_8c0380aa,PC),r0
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
loc_8c038098:
	#data 0x4650
loc_8c03809a:
	#data 0x00a7
loc_8c03809c:
	#data 0x00a8
loc_8c03809e:
	#data 0x00a9
loc_8c0380a0:
	#data 0x00aa
loc_8c0380a2:
	#data 0x0083
loc_8c0380a4:
	#data 0x0089
loc_8c0380a6:
	#data 0x00ae
loc_8c0380a8:
	#data 0x00ac
loc_8c0380aa:
	#data 0x00a6
	#align4
loc_8c0380ac:
	#data loc_8c037a46
loc_8c0380b0:
	#data loc_8c0395ac
loc_8c0380b4:
	#data 0x42a00000
loc_8c0380b8:
	#data 0x8c26823c
loc_8c0380bc:
	#data 0x8c2895f0
loc_8c0380c0:
	#data bank04.loc_8c046a2a
loc_8c0380c4:
	#data 0x8c212ccc

;==============================================
loc_8c0380c8:
	mov.l @(loc_8c0381b0,PC),r4
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
	mov.w @(loc_8c0381ac,PC),r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	add 0x01,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c0381b4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0381b8,PC),r4
	bsr loc_8c037fc0
	nop
	mov.l @(loc_8c0381c0,PC),r3
	mov.l @(loc_8c0381bc,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c0381c8,PC),r2
	mov.l @(loc_8c0381c4,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c0381cc,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0381d0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0381d4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0381d8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0381dc,PC),r3
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
	mov.l @(loc_8c0381c4,PC),r4
	mov 0x0A,r5
	add 0x01,r2
	mov.b r2,@r3
	lds.l @r15+,pr
	mov.l @(loc_8c0381e0,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c038190:
	mov.l @(loc_8c0381e4,PC),r3
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
loc_8c0381ac:
	#data 0x008d
	#align4
loc_8c0381b0:
	#data 0x8c26823c
loc_8c0381b4:
	#data bank04.loc_8c044d8c
loc_8c0381b8:
	#data 0x8c212ccc
loc_8c0381bc:
	#data 0x8c212c9c
loc_8c0381c0:
	#data loc_8c036f50
loc_8c0381c4:
	#data 0xff000000
loc_8c0381c8:
	#data bank02.loc_8c02dc1c
loc_8c0381cc:
	#data bank04.loc_8c04182e
loc_8c0381d0:
	#data bank04.loc_8c04185e
loc_8c0381d4:
	#data bank04.loc_8c041ecc
loc_8c0381d8:
	#data bank02.loc_8c027ada
loc_8c0381dc:
	#data bank02.loc_8c027b64
loc_8c0381e0:
	#data loc_8c0355b2
loc_8c0381e4:
	#data loc_8c03563a

;----------------------------------------------
loc_8c0381e8:
	mov r12,r5
	mov r12,r3
	shll2 r5
	mov.l @(loc_8c038308,PC),r11
	add r3,r5
	mov.b @(0x1,r14),r0
	shll2 r5
	mov.w @(loc_8c038302,PC),r2
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
	mov.w @(loc_8c038304,PC),r2
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
	mov.l @(loc_8c03830c,PC),r3
	mov r0,r1
	add 0x05,r1
	jsr @r3
	mov 0x05,r0
	mov.b r0,@(0x1,r14)
	exts.b r4,r4
	mov.b @(0x1,r14),r0
	mov.l @(loc_8c038310,PC),r10
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
	mov.l @(loc_8c038314,PC),r3
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
	mov.l @(loc_8c03831c,PC),r3
	mov 0x01,r6
	mov.l @(loc_8c038318,PC),r4
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
	mov.l @(loc_8c038320,PC),r2
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
loc_8c038302:
	#data 0x2000
loc_8c038304:
	#data 0x1000
	#align4
loc_8c038308:
	#data 0x8c2681dc
loc_8c03830c:
	#data bank12.loc_8c1292d4
loc_8c038310:
	#data bank04.loc_8c04257c
loc_8c038314:
	#data bank01.loc_8c011a64
loc_8c038318:
	#data 0xff000000
loc_8c03831c:
	#data loc_8c0355b2
loc_8c038320:
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
	mov.l @(loc_8c03844c,PC),r2
	mov.l @(loc_8c038450,PC),r1
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
	mov.l @(loc_8c038454,PC),r3
	jsr @r3
	mov.b r0,@(0x3,r14)
	mov.l @(loc_8c038458,PC),r2
	jsr @r2
	nop
	bra loc_8c0383c0
	nop

loc_8c038362:
	mov.l @(loc_8c03845c,PC),r2
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
	mov.l @(loc_8c038460,PC),r4
	mov.w @(loc_8c03844a,PC),r0
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
	mov.l @(loc_8c038464,PC),r2
	mov 0x05,r3
	mov.b r0,@(0x3,r14)
	mov 0x1C,r0
	jsr @r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c038468,PC),r1
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
	mov.l @(loc_8c03846c,PC),r8
	mov.l @(loc_8c038470,PC),r10
	mov.l @(loc_8c038460,PC),r12
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
	mov.l @(loc_8c038474,PC),r2
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
loc_8c03844a:
	#data 0x0084
	#align4
loc_8c03844c:
	#data 0x8c212cb7
loc_8c038450:
	#data 0x8c2895f6
loc_8c038454:
	#data bank02.loc_8c028934
loc_8c038458:
	#data bank02.loc_8c028988
loc_8c03845c:
	#data bank02.loc_8c029290
loc_8c038460:
	#data 0x8c26823c
loc_8c038464:
	#data bank02.loc_8c028768
loc_8c038468:
	#data bank02.loc_8c0287bc
loc_8c03846c:
	#data 0xff000000
loc_8c038470:
	#data loc_8c0355b2
loc_8c038474:
	#data loc_8c03563a

;----------------------------------------------
loc_8c038478:
	mov r11,r5
	mov r11,r3
	shll2 r5
	mov.l @(loc_8c0385a8,PC),r9
	add r3,r5
	mov.b @(0x2,r14),r0
	shll2 r5
	mov.w @(loc_8c0385a4,PC),r2
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
	mov.w @(loc_8c0385a6,PC),r2
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
	mov.l @(loc_8c0385ac,PC),r2
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
	mov.l @(loc_8c0385b0,PC),r3
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
	mov.l @(loc_8c0385ac,PC),r3
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
	mov.l @(loc_8c0385ac,PC),r3
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
	mov.l @(loc_8c0385b4,PC),r3
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
loc_8c0385a4:
	#data 0x2000
loc_8c0385a6:
	#data 0x1000
	#align4
loc_8c0385a8:
	#data 0x8c2681dc
loc_8c0385ac:
	#data bank04.loc_8c04257c
loc_8c0385b0:
	#data bank01.loc_8c011a64
loc_8c0385b4:
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
	mov.l @(loc_8c0386e0,PC),r3
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
	mov.w @(loc_8c0386de,PC),r0
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
	mov.l @(loc_8c0386e8,PC),r11
	mov.l @(loc_8c0386e4,PC),r8
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
	mov.l @(loc_8c0386ec,PC),r4
	mov 0x0A,r5
	add 0x01,r2
	mov.b r2,@r3
	lds.l @r15+,pr
	mov.l @(loc_8c0386f0,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0386c2:
	mov.l @(loc_8c0386f4,PC),r3
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
loc_8c0386de:
	#data 0x0084
	#align4
loc_8c0386e0:
	#data bank02.loc_8c028a3c
loc_8c0386e4:
	#data bank04.loc_8c04257c
loc_8c0386e8:
	#data 0x8c2681dc
loc_8c0386ec:
	#data 0xff000000
loc_8c0386f0:
	#data loc_8c0355b2
loc_8c0386f4:
	#data loc_8c03563a

;----------------------------------------------
loc_8c0386f8:
	mov r12,r5
	mov r12,r3
	shll2 r5
	mov.b @(0x2,r14),r0
	add r3,r5
	mov.w @(loc_8c0387e8,PC),r2
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
	mov.w @(loc_8c0387ea,PC),r2
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
	mov.l @(loc_8c0387ec,PC),r4
	add 0x01,r3
	mov.b r3,@r2
	mov.l @(loc_8c0387f0,PC),r2
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
loc_8c0387e8:
	#data 0x2000
loc_8c0387ea:
	#data 0x1000
	#align4
loc_8c0387ec:
	#data 0xff000000
loc_8c0387f0:
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
	mov.l @(loc_8c03890c,PC),r3
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
	mov.l @(loc_8c03890c,PC),r3
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
	mov.l @(loc_8c038910,PC),r4
	mov.l @(loc_8c038914,PC),r2
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
	mov.w @(loc_8c038908,PC),r2
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
	mov.w @(loc_8c03890a,PC),r2
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
	mov.l @(loc_8c038918,PC),r3
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
	mov.l @(loc_8c03891c,PC),r3
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
loc_8c038908:
	#data 0x0800
loc_8c03890a:
	#data 0x0400
	#align4
loc_8c03890c:
	#data bank01.loc_8c011a64
loc_8c038910:
	#data 0xff000000
loc_8c038914:
	#data loc_8c0355b2
loc_8c038918:
	#data bank12.loc_8c1292d4
loc_8c03891c:
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
	mov.l @(loc_8c038a3c,PC),r9
	mov.l @(loc_8c038a40,PC),r10
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
	mov.l @(loc_8c038a44,PC),r2
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
	mov.l @(loc_8c038a48,PC),r12
	add r3,r5
	mov.b @(0x2,r14),r0
	shll2 r5
	mov.w @(loc_8c038a36,PC),r2
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
	mov.w @(loc_8c038a38,PC),r2
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
	mov.l @(loc_8c038a4c,PC),r8
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
	mov.l @(loc_8c038a50,PC),r3
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
loc_8c038a36:
	#data 0x2000
loc_8c038a38:
	#data 0x1000
	#align4
loc_8c038a3c:
	#data loc_8c0355b2
loc_8c038a40:
	#data 0xff000000
loc_8c038a44:
	#data loc_8c03563a
loc_8c038a48:
	#data 0x8c2681dc
loc_8c038a4c:
	#data bank04.loc_8c04257c
loc_8c038a50:
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
	mov.l @(loc_8c038b4c,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c038ac8
	mov 0x1B,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c038ab6
	mov.l @(loc_8c038b50,PC),r13
	mov 0x50,r0
	mov.l @r13,r3
	mov.b r11,@(r0,r3)
	mov.l @(loc_8c038b54,PC),r3
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
	mov.l @(loc_8c038b60,PC),r8
	mov.l @(loc_8c038b5c,PC),r11
	mov.l @(loc_8c038b58,PC),r9
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
	mov.l @(loc_8c038b64,PC),r3
	jsr @r3
	mov r8,r4
	bra loc_8c038cf2
	nop

loc_8c038b2e:
	mov.l @(loc_8c038b4c,PC),r3
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
loc_8c038b4c:
	#data loc_8c03563a
loc_8c038b50:
	#data 0x8c26823c
loc_8c038b54:
	#data bank01.loc_8c010bbc
loc_8c038b58:
	#data bank04.loc_8c04257c
loc_8c038b5c:
	#data 0x8c2681dc
loc_8c038b60:
	#data 0xff000000
loc_8c038b64:
	#data loc_8c0355b2

;----------------------------------------------
loc_8c038b68:
	mov r13,r4
	mov r13,r3
	shll2 r4
	mov.b @(0x3,r14),r0
	add r3,r4
	mov.w @(loc_8c038c6e,PC),r2
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
	mov.w @(loc_8c038c70,PC),r2
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
	mov.l @(loc_8c038c74,PC),r3
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
	mov.l @(loc_8c038c78,PC),r2
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
	mov.l @(loc_8c038c7c,PC),r3
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
loc_8c038c6e:
	#data 0x2000
loc_8c038c70:
	#data 0x1000
	#align4
loc_8c038c74:
	#data bank12.loc_8c1292d4
loc_8c038c78:
	#data loc_8c0355b2
loc_8c038c7c:
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
	mov.l @(loc_8c038dac,PC),r3
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
	mov.l @(loc_8c038db0,PC),r2
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
	mov.l @(loc_8c038db4,PC),r2
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
	mov.l @(loc_8c038db8,PC),r3
	jsr @r3
	mov.b r0,@(0x3,r14)
	mov.l @(loc_8c038dbc,PC),r2
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
	mov.w @(loc_8c038da4,PC),r2
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
	mov.w @(loc_8c038da6,PC),r2
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
	mov.l @(loc_8c038dc0,PC),r3
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
	mov.l @(loc_8c038dc4,PC),r2
	mov.w @(loc_8c038da8,PC),r0
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
	mov.l @(loc_8c038dc8,PC),r0
	mov.b @r2,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	mov.l @r15,r4
	mov.l @(loc_8c038dcc,PC),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c038dd0,PC),r3
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c038da4:
	#data 0x0800
loc_8c038da6:
	#data 0x0400
loc_8c038da8:
	#data 0x008d
	#align4
loc_8c038dac:
	#data bank01.loc_8c011a64
loc_8c038db0:
	#data loc_8c0355b2
loc_8c038db4:
	#data loc_8c03563a
loc_8c038db8:
	#data bank02.loc_8c028934
loc_8c038dbc:
	#data bank02.loc_8c028988
loc_8c038dc0:
	#data bank12.loc_8c1292d4
loc_8c038dc4:
	#data 0x8c26823c
loc_8c038dc8:
	#data bank14.loc_8c14d35c
loc_8c038dcc:
	#data loc_8c038094
loc_8c038dd0:
	#data loc_8c0395ac

;==============================================
;Pause menu code ;loc_8c038ebc = strings
;==============================================
loc_8c038dd4:
	mov.l r14,@-r15
	mov.l @(loc_8c038ea0,PC),r14;8c038ea0;0x8c212c9c
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @r14,r0
	mov.l @(loc_8c038ea4,PC),r13
	tst 0x04,r0
	bt loc_8c038df0
	lds.l @r15+,pr
	mov.l @(loc_8c038ea8,PC),r2
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
	mov.l @(loc_8c038eac,PC),r2
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
	mov.l @(loc_8c038eb0,PC),r3
	mov 0x1C,r0
	mov 0x02,r2
	jsr @r3
	mov.b r2,@(r0,r13)
	mov.l @(loc_8c038eb4,PC),r1
	jsr @r1
	nop

loc_8c038e3e:
	mov r13,r5
	bsr loc_8c038d6a
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c038eb8,PC),r3
	mov 0x0D,r4
	mov.l @r15+,r13
	jmp @r3 ; 8c044ef0
	mov.l @r15+,r14

loc_8c038e50:
	mov.b @r14,r0
	tst 0x03,r0
	bt loc_8c038e62
	lds.l @r15+,pr
	mov.l @(loc_8c038ebc,PC),r2 ;8c038ebc
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
	mov.l @(loc_8c038ec0,PC),r2
	mov.w @(loc_8c038e9c,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(loc_8c038ec4,PC),r1
	mov.b r4,@(r0,r3)
	mov 0x04,r3
	mov.l @(loc_8c038ea0,PC),r4
	mov.b r3,@r4
	jsr @r1
	mov 0x00,r5
	mov.l @(loc_8c038ec8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c038ec0,PC),r3
	mov.l @r3,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x60,r0
	bf loc_8c038e96
	mov.l @(loc_8c038ecc,PC),r1
	jmp @r1
	lds.l @r15+,pr

loc_8c038e96:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c038e9c:
	#data 0x00b1
	#align4
loc_8c038ea0:
	#data 0x8c212c9c
loc_8c038ea4:
	#data 0x8c212ccc
loc_8c038ea8:
	#data loc_8c0373d2
loc_8c038eac:
	#data bank02.loc_8c028294
loc_8c038eb0:
	#data bank02.loc_8c028448
loc_8c038eb4:
	#data bank02.loc_8c02849c
loc_8c038eb8:
	#data bank04.loc_8c044ef0
loc_8c038ebc:
	#data loc_8c037864
loc_8c038ec0:
	#data 0x8c26823c
loc_8c038ec4:
	#data loc_8c036e00
loc_8c038ec8:
	#data loc_8c031bba
loc_8c038ecc:
	#data loc_8c032184

;==============================================
loc_8c038ed0:
	mov.l @(loc_8c038f3c,PC),r6
	mov 0x4C,r0
	mov.l @r6,r5
	mov.b @(r0,r5),r0
	cmp/eq 0x05,r0
	bf loc_8c038f30
	mov.w @(loc_8c038f34,PC),r0
	mov.l @(loc_8c038f40,PC),r4
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c038f28
	mov.w @(loc_8c038f36,PC),r0
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
	mov.w @(loc_8c038f38,PC),r0
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
	mov.w @(loc_8c038f34,PC),r0
	mov 0x00,r3
	mov.l @r6,r2
	mov.b r3,@(r0,r2)

loc_8c038f28:
	mov.l @(loc_8c038f48,PC),r3
	mov.l @(loc_8c038f44,PC),r4
	jmp @r3
	nop

loc_8c038f30:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c038f34:
	#data 0x00b1
loc_8c038f36:
	#data 0x008d
loc_8c038f38:
	#data 0x00f0
	#align4
loc_8c038f3c:
	#data 0x8c26823c
loc_8c038f40:
	#data 0x8c212c9c
loc_8c038f44:
	#data loc_8c0373ac
loc_8c038f48:
	#data loc_8c0395ac

;==============================================
loc_8c038f4c:
	mov.l @(loc_8c0390cc,PC),r5
	mov 0x1B,r0
	mov.l @(loc_8c0390c8,PC),r4
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
	mov.w @(loc_8c0390ba,PC),r1
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
	mov.w @(loc_8c0390bc,PC),r1
	mov.b @(0xC,r4),r0
	mov.l @r5,r3
	add r3,r1
	mov.b r0,@r1
	mov 0x00,r7
	mov.w @(loc_8c0390be,PC),r1
	mov.l @r5,r3
	mov.b @(0xD,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.w @(loc_8c0390c0,PC),r1
	mov.l @r5,r3
	mov.b @(0xE,r4),r0
	add r3,r1
	mov.b r0,@r1
	mov.l @r5,r3
	mov.w @(loc_8c0390c2,PC),r0
	mov.b r7,@(r0,r3)
	add 0x01,r0
	mov.l @r5,r3
	mov.b r7,@(r0,r3)
	mov.b @(0xF,r4),r0
	cmp/eq 0x01,r0
	bf.s loc_8c039000
	mov 0x01,r6
	mov.w @(loc_8c0390c2,PC),r0
	mov.l @r5,r2
	mov.b r6,@(r0,r2)

loc_8c039000:
	mov.b @(0xF,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c03900c
	mov.w @(loc_8c0390c4,PC),r0
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
	mov.w @(loc_8c0390c6,PC),r0
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
	mov.l @(loc_8c0390d0,PC),r2
	mov r4,r3
	add 0x50,r3
	mov.l r2,@r3
	mov 0x54,r0
	mov.l @(loc_8c0390d4,PC),r3
	mov.l r3,@(r0,r4)

loc_8c03904e:
	mov r4,r2
	mov.l @(loc_8c0390d8,PC),r5
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
loc_8c0390ba:
	#data 0x00aa
loc_8c0390bc:
	#data 0x00ac
loc_8c0390be:
	#data 0x00b3
loc_8c0390c0:
	#data 0x00b4
loc_8c0390c2:
	#data 0x00b5
loc_8c0390c4:
	#data 0x00b6
loc_8c0390c6:
	#data 0x00b7
	#align4
loc_8c0390c8:
	#data 0x8c212f30
loc_8c0390cc:
	#data 0x8c26823c
loc_8c0390d0:
	#data 0x00ffff77
loc_8c0390d4:
	#data 0x02000004
loc_8c0390d8:
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
	mov.l @(loc_8c0391d8,PC),r4
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
	mov.l @(loc_8c0391dc,PC),r2
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
	mov.l @(loc_8c0391e0,PC),r3
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c0391e4,PC),r5
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
	mov.l @(loc_8c0391e8,PC),r3
	or r1,r2
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c0391ec,PC),r2
	mov.l r3,@(0x10,r4)
	shll2 r3
	mov.l r2,@(0x14,r4)
	mov.l r3,@(0x18,r4)
	mov.l @(loc_8c0391f4,PC),r3
	mov.l @(loc_8c0391f0,PC),r2
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
loc_8c0391d8:
	#data 0x8c212f30
loc_8c0391dc:
	#data 0x00ffff77
loc_8c0391e0:
	#data 0x02000004
loc_8c0391e4:
	#data 0x8c289750
loc_8c0391e8:
	#data 0x00080000
loc_8c0391ec:
	#data 0x00100000
loc_8c0391f0:
	#data 0x00800000
loc_8c0391f4:
	#data 0x00400000

;==============================================
loc_8c0391f8:
	mov.l @(loc_8c039260,PC),r3
	mov 0x00,r4
	mov.l @(loc_8c039264,PC),r2
	mov r4,r7
	mov.l r13,@-r15
	mov 0x04,r6
	mov.l @(loc_8c039268,PC),r13
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
	mov.l @(loc_8c03926c,PC),r2
	mov 0x2F,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c039250
	rts
	mov 0x00,r0

loc_8c039250:
	exts.b r5,r0
	mov.l @(loc_8c039268,PC),r1
	exts.b r4,r4
	shll2 r0
	add r4,r0
	mov.b @(r0,r1),r0
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c039260:
	#data 0x8c289f7c
loc_8c039264:
	#data 0x8c289f7d
loc_8c039268:
	#data 0x8c2896b4
loc_8c03926c:
	#data 0x8c26823c

;==============================================
loc_8c039270:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8c03940c,PC),r4
	mov.l @(loc_8c039408,PC),r6
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
	mov.w @(loc_8c0393fe,PC),r2
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
	mov.w @(loc_8c039400,PC),r3
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
	mov.l @(loc_8c039410,PC),r5
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
	mov.w @(loc_8c039402,PC),r3
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
	mov.w @(loc_8c039404,PC),r3
	extu.w r0,r0
	or r0,r2
	tst r3,r2
	bt loc_8c0393ce
	mov.b @r5,r0
	add 0x01,r0
	mov.b r0,@r5

loc_8c0393ce:
	mov.b @r5,r0
	mov.l @(loc_8c039414,PC),r3
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
loc_8c0393fe:
	#data 0x2000
loc_8c039400:
	#data 0x1000
loc_8c039402:
	#data 0x0800
loc_8c039404:
	#data 0x0400
	#align4
loc_8c039408:
	#data 0x8c289f7d
loc_8c03940c:
	#data 0x8c2681dc
loc_8c039410:
	#data 0x8c289f7c
loc_8c039414:
	#data bank12.loc_8c1292d4

;----------------------------------------------
loc_8c039418:
	extu.w r3,r3
	or r3,r0
	tst 0x40,r0
	bt loc_8c039432
	mov.b @r6,r3
	mov.b @r5,r2
	mov.l @(loc_8c039514,PC),r0
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
	mov.l @(loc_8c039518,PC),r0
	mov.l @r0,r3
	mov 0x2F,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03945e
	mov.l @(loc_8c03951c,PC),r14
	bra loc_8c039460
	nop

loc_8c03945e:
	mov.l @(loc_8c039520,PC),r14

loc_8c039460:
	mov.l @(loc_8c039524,PC),r3
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
	mov.l @(loc_8c039528,PC),r2
	mov 0x07,r3
	mov.b r3,@r15
	exts.b r14,r12
	mov.b @r2,r3
	mov r14,r8
	shll2 r8
	cmp/eq r3,r12
	bf.s loc_8c0394ae
	shll2 r8
	mov.l @(loc_8c03952c,PC),r0
	exts.b r11,r1
	mov.b @r0,r3
	cmp/eq r3,r1
	bf loc_8c0394ae
	mov.l @(loc_8c039530,PC),r2
	mov r8,r4
	mov.l @(loc_8c039534,PC),r3
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
	mov.l @(loc_8c039538,PC),r2
	shll2 r3
	mov r12,r1
	mov.l @(loc_8c039514,PC),r0
	shll2 r3
	mov r8,r4
	add r10,r1
	mov r9,r5
	add r3,r2
	mov.l r2,@-r15
	mov.b @(r0,r1),r3
	mov.l @(loc_8c03953c,PC),r2
	mov.l r3,@-r15
	mov.l r2,@-r15
	mov.b @(0xC,r15),r0
	mov.l @(loc_8c039534,PC),r3
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
loc_8c039514:
	#data 0x8c2896b4
loc_8c039518:
	#data 0x8c26823c
loc_8c03951c:
	#data 0xff3f3f7f
loc_8c039520:
	#data 0xff7f3f3f
loc_8c039524:
	#data bank11.loc_8c11c420
loc_8c039528:
	#data 0x8c289f7c
loc_8c03952c:
	#data 0x8c289f7d
loc_8c039530:
	#data bank13.loc_8c136990
loc_8c039534:
	#data loc_8c0395c6
loc_8c039538:
	#data bank14.loc_8c14d4a0
loc_8c03953c:
	#data bank13.loc_8c136994

;==============================================
loc_8c039540:
	mov.l @(loc_8c03958c,PC),r4
	mov.l r14,@-r15
	mov.b @r4,r0
	mov.l @(loc_8c039590,PC),r14
	mov.w @(loc_8c039588,PC),r5
	tst 0x01,r0
	bt loc_8c03956c
	mov.w @(0x4,r14),r0
	extu.w r0,r0
	cmp/eq r5,r0
	bf loc_8c039584
	mov.b @r4,r0
	mov.l @(loc_8c039594,PC),r3
	mov.l @(loc_8c039598,PC),r1
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
	mov.l @(loc_8c03959c,PC),r3
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
loc_8c039588:
	#data 0x0200
	#align4
loc_8c03958c:
	#data 0x8c26a95d
loc_8c039590:
	#data 0x8c2681dc
loc_8c039594:
	#data 0x8c26823c
loc_8c039598:
	#data 0x8c2896e4
loc_8c03959c:
	#data 0x00008000

;==============================================
loc_8c0395a0:
	mov.l @(loc_8c0396a4,PC),r3
	mov 0x00,r4
	mov.l @(loc_8c0396a8,PC),r2
	mov.l r4,@r3
	rts
	mov.l r4,@r2

;==============================================
loc_8c0395ac:
	mov.l @(loc_8c0396a4,PC),r6
	mov.l @r6,r0
	cmp/eq 0x10,r0
	bt.s loc_8c0395c2
	mov r0,r5
	mov.l @(loc_8c0396ac,PC),r0
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
	mov.l @(loc_8c0396a8,PC),r13
	mov.w @(loc_8c0396a0,PC),r3
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
	mov.l @(loc_8c0396b0,PC),r3
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
	mov.l @(loc_8c0396b4,PC),r2
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
	mov.l @(loc_8c0396ac,PC),r13
	mov.l @(loc_8c0396a4,PC),r3
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
	mov.l @(loc_8c0396b8,PC),r12
	mov.l @(loc_8c0396b0,PC),r13
	mov.l @(loc_8c0396a8,PC),r3
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
	mov.l @(loc_8c0396bc,PC),r2
	mov 0x08,r5
	jsr @r2
	mov r5,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0396c0,PC),r3
	mov 0xFF,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03967a:
	mov.l @(loc_8c0396c4,PC),r3
	mov 0x00,r4
	mov.l @(loc_8c0396c8,PC),r2
	mov.l r4,@r3
	rts
	mov.l r4,@r2

loc_8c039686:
	mov.l @(loc_8c0396c4,PC),r6
	mov.l @r6,r0
	cmp/eq 0x10,r0
	bt.s loc_8c03969c
	mov r0,r5
	mov.l @(loc_8c0396cc,PC),r0
	shll2 r5
	mov.l r4,@(r0,r5)
	mov.l @r6,r2
	add 0x01,r2
	mov.l r2,@r6

loc_8c03969c:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c0396a0:
	#data 0x0080
	#align4
loc_8c0396a4:
	#data 0x8c289f80
loc_8c0396a8:
	#data 0x8c289f84
loc_8c0396ac:
	#data 0x8c28c390
loc_8c0396b0:
	#data 0x8c289f90
loc_8c0396b4:
	#data bank12.loc_8c129804
loc_8c0396b8:
	#data loc_8c031152
loc_8c0396bc:
	#data bank11.loc_8c11efc0
loc_8c0396c0:
	#data bank11.loc_8c11f1c0
loc_8c0396c4:
	#data 0x8c289f8c
loc_8c0396c8:
	#data 0x8c289f88
loc_8c0396cc:
	#data 0x8c28c3d0

;==============================================
loc_8c0396d0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c039784,PC),r13
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
	mov.l @(loc_8c039788,PC),r3
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
	mov.l @(loc_8c03978c,PC),r2
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
	mov.l @(loc_8c039794,PC),r13
	mov.l @(loc_8c039790,PC),r3
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
	mov.l @(loc_8c039798,PC),r12
	mov.l @(loc_8c039788,PC),r13
	mov.l @(loc_8c039784,PC),r3
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
	mov.l @(loc_8c03979c,PC),r2
	mov 0x08,r5
	jsr @r2
	mov r5,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0397a0,PC),r3
	mov 0xFF,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c039784:
	#data 0x8c289f88
loc_8c039788:
	#data 0x8c28bf90
loc_8c03978c:
	#data bank12.loc_8c129804
loc_8c039790:
	#data 0x8c289f8c
loc_8c039794:
	#data 0x8c28c3d0
loc_8c039798:
	#data loc_8c031108
loc_8c03979c:
	#data bank11.loc_8c11efc0
loc_8c0397a0:
	#data bank11.loc_8c11f1c0

;==============================================
loc_8c0397a4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	add 0xFC,r15
	mov.w @(loc_8c0398d2,PC),r12
	mov.l @(loc_8c0398e0,PC),r0
	mul.l r12,r4
	mov.w @(loc_8c0398d4,PC),r6
	mov.l @(loc_8c0398ec,PC),r3
	sts macl,r12
	mov.l r12,@r15
	mov.b @(r0,r12),r12
	mov.l @(loc_8c0398e4,PC),r0
	mov.l @r3,r10
	mov.b @(r0,r12),r12
	mov.l @(loc_8c0398e8,PC),r0
	mov r12,r2
	and r6,r2
	mov.b @(r0,r4),r5
	shll8 r2
	mov.w @(loc_8c0398d6,PC),r0
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
	mov.l @(loc_8c0398f0,PC),r2
	shll2 r11
	shll r11
	add r2,r11
	mov 0x03,r6
	mov.l @(loc_8c0398f4,PC),r13
	mov 0x03,r7
	mov.w @(loc_8c0398d8,PC),r1
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
	mov.l @(loc_8c0398ec,PC),r2
	mov 0x29,r0
	mov.l @(loc_8c0398f8,PC),r3
	mov.l @r2,r6
	mov.l @r15,r7
	mov.b @(r0,r6),r1
	tst r1,r1
	bt.s loc_8c039852
	add r3,r7
	mov.w @(loc_8c0398da,PC),r0
	mov.b @(r0,r7),r5
	mov.l @(loc_8c0398fc,PC),r0
	bra loc_8c039858
	nop

loc_8c039852:
	mov.w @(loc_8c0398da,PC),r0
	mov.b @(r0,r7),r5
	mov.l @(loc_8c039900,PC),r0

loc_8c039858:
	mov.w @(loc_8c0398dc,PC),r13
	mov 0x01,r11
	mov.b @(r0,r5),r5
	and r4,r11
	mov.w @(loc_8c0398d6,PC),r0
	shll16 r11
	and r5,r13
	mov.l @(loc_8c039904,PC),r14
	shll8 r13
	mov.l @(r0,r6),r3
	shll2 r13
	mov.l @(loc_8c039908,PC),r2
	shll2 r13
	mov.w @(loc_8c0398de,PC),r12
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
	mov.l @(loc_8c0398f0,PC),r3
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
loc_8c0398d2:
	#data 0x05a4
loc_8c0398d4:
	#data 0x00fc
loc_8c0398d6:
	#data 0x0094
loc_8c0398d8:
	#data 0x0800
loc_8c0398da:
	#data 0x052c
loc_8c0398dc:
	#data 0x00f8
loc_8c0398de:
	#data 0x0200
	#align4
loc_8c0398e0:
	#data 0x8c26886c
loc_8c0398e4:
	#data bank13.loc_8c1380b0
loc_8c0398e8:
	#data bank14.loc_8c14d970
loc_8c0398ec:
	#data 0x8c26823c
loc_8c0398f0:
	#data 0x0cdb0000
loc_8c0398f4:
	#data bank13.loc_8c1380a0
loc_8c0398f8:
	#data 0x8c268340
loc_8c0398fc:
	#data bank13.loc_8c13812c
loc_8c039900:
	#data bank13.loc_8c1380f0
loc_8c039904:
	#data bank14.loc_8c14d976
loc_8c039908:
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
	mov.l @(loc_8c039a4c,PC),r2
	shll r4
	mov.w @(loc_8c039a42,PC),r14
	add r3,r4
	mov.l @(loc_8c039a50,PC),r10
	add r4,r2
	mov.l r2,@(0x4,r15)
	mov 0x39,r7
	mov 0x03,r13

loc_8c03992e:
	mov r7,r6
	mov r6,r2
	and r14,r2
	mov.l @(loc_8c039a54,PC),r3
	mov.l @(0x4,r15),r4
	shll8 r2
	mov.w @(loc_8c039a44,PC),r0
	shll2 r2
	add 0x01,r4
	mov.l @(loc_8c039a58,PC),r1
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
	mov.w @(loc_8c039a46,PC),r6
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
	mov.w @(loc_8c039a48,PC),r5
	mov 0x1B,r3
	mov.l @(loc_8c039a5c,PC),r0
	mul.l r5,r4
	sts macl,r5
	mov.b @(r0,r5),r5
	cmp/ge r3,r5
	bf loc_8c0399d2
	add 0xFD,r5

loc_8c0399d2:
	mov r5,r1
	shll2 r5
	mov.l @(loc_8c039a54,PC),r2
	shll r5
	mov.w @(loc_8c039a44,PC),r0
	add r1,r5
	mov.l @r2,r3
	shll8 r5
	shll2 r5
	mov.l @(loc_8c039a64,PC),r2
	mov.l @(r0,r3),r3
	mov 0x01,r6
	shll r5
	mov.l @(loc_8c039a60,PC),r1
	and r4,r6
	mov.w @(loc_8c039a4a,PC),r4
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
	mov.l @(loc_8c039a68,PC),r5
	mov r6,r0
	nop
	shll2 r0
	mov.l @(loc_8c039a6c,PC),r2
	mov.l @(r0,r5),r3
	mov.l @(loc_8c039a70,PC),r1
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
loc_8c039a42:
	#data 0x00fc
loc_8c039a44:
	#data 0x0094
loc_8c039a46:
	#data 0x0800
loc_8c039a48:
	#data 0x05a4
loc_8c039a4a:
	#data 0x1200
	#align4
loc_8c039a4c:
	#data bank14.loc_8c14d97e
loc_8c039a50:
	#data bank13.loc_8c1380a0
loc_8c039a54:
	#data 0x8c26823c
loc_8c039a58:
	#data 0x0cdb0000
loc_8c039a5c:
	#data 0x8c26886c
loc_8c039a60:
	#data 0x002e0000
loc_8c039a64:
	#data 0x0cdf0000
loc_8c039a68:
	#data 0x0c520000
loc_8c039a6c:
	#data 0x0c720000
loc_8c039a70:
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
	mov.l @(loc_8c039bac,PC),r2
	shll16 r4
	mov.w @(loc_8c039baa,PC),r0
	shll2 r4
	mov.l @r2,r3
	mov 0x01,r10
	shll2 r4
	mov r10,r11
	mov.l @(r0,r3),r1
	mov r7,r3
	add 0x03,r3
	mov.l @(loc_8c039bb0,PC),r9
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
	mov.l @(loc_8c039bb4,PC),r0
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
	mov.l @(loc_8c039bb4,PC),r0
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
	mov.l @(loc_8c039bb4,PC),r0
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
loc_8c039baa:
	#data 0x0094
	#align4
loc_8c039bac:
	#data 0x8c26823c
loc_8c039bb0:
	#data 0xf0000000
loc_8c039bb4:
	#data bank13.loc_8c1381e8

;==============================================
loc_8c039bb8:
	mov.l r14,@-r15
	mov r4,r1
	mov.l @(loc_8c039ce0,PC),r3
	mov 0x0A,r7
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(loc_8c039cd2,PC),r0
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r3,r14
	mov.l @(r0,r14),r14
	mov r7,r0
	nop
	mov.l @(loc_8c039ce4,PC),r2
	jsr @r2
	nop
	mov r0,r6
	tst r6,r6
	bf loc_8c039be0
	mov r7,r6

loc_8c039be0:
	mov.l @(loc_8c039ce8,PC),r10
	mov r6,r0
	nop
	mov.b @(r0,r10),r1
	mov.w @(loc_8c039cd4,PC),r0
	extu.b r1,r1
	mov.w @(loc_8c039cd6,PC),r11
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
	mov.l @(loc_8c039cec,PC),r2
	mov r4,r1
	jsr @r2
	mov r7,r0
	mov.b @(r0,r10),r12
	mov r11,r6
	mov.w @(loc_8c039cd8,PC),r0
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
	mov.w @(loc_8c039cdc,PC),r0
	extu.b r7,r7
	mov.w @(loc_8c039cda,PC),r3
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
	mov.l @(loc_8c039ce0,PC),r3
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c039cf4,PC),r7
	mov.l @r3,r6
	mov.l @(loc_8c039cf0,PC),r14
	bt.s loc_8c039d04
	add r5,r7
	mov.b @r7,r11
	mov r14,r9
	mov.w @(loc_8c039cd2,PC),r0
	add 0x10,r9
	extu.b r11,r11
	mov.l @(loc_8c039cf8,PC),r1
	mov.l @(r0,r6),r2
	shll8 r11
	shll r11
	mov.l @(loc_8c039cfc,PC),r10
	mov.w @(loc_8c039cd6,PC),r12
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
	mov.l @(loc_8c039d00,PC),r2
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
loc_8c039cd2:
	#data 0x0094
loc_8c039cd4:
	#data 0x00a8
loc_8c039cd6:
	#data 0x0200
loc_8c039cd8:
	#data 0x00c8
loc_8c039cda:
	#data 0x1000
loc_8c039cdc:
	#data 0x0098
	#align4
loc_8c039ce0:
	#data 0x8c26823c
loc_8c039ce4:
	#data bank12.loc_8c1291dc
loc_8c039ce8:
	#data bank13.loc_8c138204
loc_8c039cec:
	#data bank12.loc_8c12939c
loc_8c039cf0:
	#data bank13.loc_8c138213
loc_8c039cf4:
	#data bank13.loc_8c138223
loc_8c039cf8:
	#data 0x00020000
loc_8c039cfc:
	#data bank12.loc_8c129728
loc_8c039d00:
	#data 0x00010000

;----------------------------------------------
loc_8c039d04:
	mov.w @(loc_8c039d88,PC),r0
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
	mov.l @(loc_8c039d90,PC),r13
	bra loc_8c039d32
	nop

loc_8c039d2a:
	mov.l @(loc_8c039d94,PC),r13
	bra loc_8c039d32
	nop

loc_8c039d30:
	mov.l @(loc_8c039d98,PC),r13

loc_8c039d32:
	add r5,r13

loc_8c039d34:
	mov.b @r7,r12
	mov 0x04,r9
	mov.w @(loc_8c039d8a,PC),r0
	mov 0x00,r4
	extu.b r12,r12
	mov.l @(loc_8c039d9c,PC),r3
	shll8 r12
	mov.l @(r0,r6),r11
	shll r12
	mov.l @(loc_8c039da0,PC),r1
	mov.w @(loc_8c039d8c,PC),r5
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
	mov.l @(loc_8c039da4,PC),r1
	bra loc_8c039dde
	mov 0x07,r9

;##############################################
loc_8c039d88:
	#data 0x00ad
loc_8c039d8a:
	#data 0x0094
loc_8c039d8c:
	#data 0x0080
	#align4
loc_8c039d90:
	#data 0x8c2897e0
loc_8c039d94:
	#data 0x8c2899d8
loc_8c039d98:
	#data 0x8c212cec
loc_8c039d9c:
	#data 0x00020000
loc_8c039da0:
	#data bank13.loc_8c138168
loc_8c039da4:
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
	mov.l @(loc_8c039ecc,PC),r1
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
	mov.l @(loc_8c039ed0,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c039e26
	mov r0,r7
	mov r10,r7

loc_8c039e26:
	mov.l @(loc_8c039ed4,PC),r6
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
	mov.l @(loc_8c039ed8,PC),r3
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
loc_8c039ecc:
	#data bank13.loc_8c1381f3
loc_8c039ed0:
	#data bank12.loc_8c129128
loc_8c039ed4:
	#data bank13.loc_8c1381f5
loc_8c039ed8:
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
	mov.l @(loc_8c039fdc,PC),r3
	mov.w @(loc_8c039fca,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bt loc_8c039f30
	lds.l @r15+,pr
	mov.l @(loc_8c039fe0,PC),r6
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
	mov.l @(loc_8c039fe4,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c039fec,PC),r2
	mov.w @(loc_8c039fcc,PC),r4
	mov.l @(loc_8c039fe8,PC),r5
	jsr @r2
	nop
	mov.l @(loc_8c039fec,PC),r3
	mov.w @(loc_8c039fce,PC),r4
	mov.l @(loc_8c039ff0,PC),r5
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c039f5c:
	sts.l pr,@-r15
	mov.l @(loc_8c039fe4,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c039fec,PC),r2
	mov.w @(loc_8c039fd0,PC),r4
	mov.l @(loc_8c039ff4,PC),r5
	jsr @r2
	nop
	mov.l @(loc_8c039fec,PC),r3
	mov.w @(loc_8c039fd2,PC),r4
	mov.l @(loc_8c039ff8,PC),r5
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c039f78:
	mov.w @(loc_8c039fd4,PC),r0
	sts.l pr,@-r15
	mov.l @(r0,r4),r5
	mov.l @(loc_8c03a000,PC),r3
	mov.l @(0x4,r5),r4
	add r5,r4
	mov.l @(loc_8c039ffc,PC),r5
	jsr @r3
	nop
	mov.l @(loc_8c039fe4,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c039fec,PC),r3
	mov.w @(0x40,PC),r4
	mov.l @(loc_8c039ffc,PC),r5
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c039f9a:
	sts.l pr,@-r15
	mov.w @(loc_8c039fd4,PC),r0
	mov.l @(loc_8c03a000,PC),r2
	mov.l r4,@-r15
	mov.l @(r0,r4),r4
	mov.l @(loc_8c039ffc,PC),r5
	mov.l @(0x8,r4),r3
	jsr @r2
	add r3,r4
	mov.l @(loc_8c039fe4,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.w @(loc_8c039fd8,PC),r0
	mov.l @r15,r4
	mov.w @(0x20,PC),r2
	mov.b @(r0,r4),r4
	mov.l @(loc_8c039ffc,PC),r5
	extu.b r4,r4
	shlr r4
	add r2,r4
	add 0x04,r15
	mov.l @(loc_8c039fec,PC),r3
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c039fca:
	#data 0x00ad
loc_8c039fcc:
	#data 0x0810
loc_8c039fce:
	#data 0x081c
loc_8c039fd0:
	#data 0x0811
loc_8c039fd2:
	#data 0x081d
	#align4
loc_8c039fd4:
	#data 0x0c990184
loc_8c039fd8:
	#data 0x0ca601a4
loc_8c039fdc:
	#data 0x8c26823c
loc_8c039fe0:
	#data 0x00010000
loc_8c039fe4:
	#data bank11.loc_8c11b800
loc_8c039fe8:
	#data 0x0cdb0000
loc_8c039fec:
	#data bank11.loc_8c11b810
loc_8c039ff0:
	#data 0x0cdf0000
loc_8c039ff4:
	#data 0x0cdd0000
loc_8c039ff8:
	#data 0x0cdf4800
loc_8c039ffc:
	#data 0x0ce60000
loc_8c03a000:
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
	mov.l @(loc_8c03a044,PC),r10
	mov.l @(loc_8c03a048,PC),r13
	mov.b @r10,r3
	tst r3,r3
	bf loc_8c03a022
	bra loc_8c03a162
	nop

loc_8c03a022:
	mov.l @(loc_8c03a054,PC),r14
	mov.b @r13,r0
	mov.l @(loc_8c03a04c,PC),r11
	mov.l @(loc_8c03a050,PC),r12
	add 0xFF,r0
	mov 0x1D,r1
	cmp/hs r1,r0
	bf loc_8c03a036
	bra loc_8c03a162
	nop

loc_8c03a036:
	shll r0
	mov r0,r1
	mova @(loc_8c03a05a,PC),r0
	mov.w @(r0,r1),r0

;8c03a03e
	braf r0
	nop

;##############################################
	#align4
loc_8c03a044:
	#data 0x8c26a960
loc_8c03a048:
	#data 0x8c26a961
loc_8c03a04c:
	#data 0x8c26823c
loc_8c03a050:
	#data bank11.loc_8c11b800
loc_8c03a054:
	#data bank11.loc_8c11b810
	;braf 8c03a03e
	#data 0x0050
loc_8c03a05a:
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
	mov.l @(loc_8c03a18c,PC),r3
	add 0xFC,r5
	mov.w @(loc_8c03a17a,PC),r4
	shll16 r5
	shll2 r5
	shll r5
	bra loc_8c03a15e
	add r3,r5

loc_8c03a0c6:
	jsr @r12
	mov 0x00,r4
	mov.b @r13,r5
	mov.l @(loc_8c03a190,PC),r3
	mov.l r5,@r15
	add 0xFA,r5
	shll16 r5
	mov.w @(loc_8c03a17c,PC),r2
	mov.l @r15,r4
	shll r5
	add r3,r5
	bra loc_8c03a15e
	add r2,r4

loc_8c03a0e0:
	jsr @r12
	mov 0x00,r4
	mov.w @(loc_8c03a17e,PC),r0
	mov.l @r11,r12
	mov.l @(loc_8c03a194,PC),r9
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
	mov.w @(loc_8c03a180,PC),r0
	mov.w @(loc_8c03a182,PC),r4
	mov.l @(r0,r12),r5
	bra loc_8c03a11c
	add r9,r5

loc_8c03a106:
	mov.w @(loc_8c03a180,PC),r0
	mov.w @(loc_8c03a184,PC),r4
	mov.l @(r0,r12),r5
	jsr @r14
	add r9,r5
	mov.w @(loc_8c03a180,PC),r0
	mov.l @r11,r5
	mov.l @(loc_8c03a198,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(loc_8c03a17c,PC),r4
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
	mov.w @(loc_8c03a180,PC),r0
	mov.l @r11,r5
	add 0xF3,r3
	mov.l r3,@r15
	shll16 r3
	mov.l @(r0,r5),r5
	shll r3
	mov.l @r15,r0
	mov.w @(loc_8c03a186,PC),r4
	add r3,r5
	and 0x01,r0
	bra loc_8c03a15e
	add r0,r4

loc_8c03a144:
	jsr @r12
	mov 0x00,r4
	mov.l @(loc_8c03a19c,PC),r3 ;Stage ID
	mov.l @(loc_8c03a1a0,PC),r2
	mov.b @r3,r5
	mov.w @(loc_8c03a188,PC),r4
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
loc_8c03a17a:
	#data 0x081c
loc_8c03a17c:
	#data 0x0817
loc_8c03a17e:
	#data 0x00ad
loc_8c03a180:
	#data 0x0094
loc_8c03a182:
	#data 0x081b
loc_8c03a184:
	#data 0x0816
loc_8c03a186:
	#data 0x0910
loc_8c03a188:
	#data 0x0914
	#align4
loc_8c03a18c:
	#data 0x0c420000
loc_8c03a190:
	#data 0x0c720000
loc_8c03a194:
	#data 0x00020000
loc_8c03a198:
	#data 0x00030000
loc_8c03a19c:
	#data 0x8c26a95c
loc_8c03a1a0:
	#data 0x0cc60000

;==============================================
loc_8c03a1a4:
	add 0xFC,r15
	mov.l @(loc_8c03a234,PC),r2
	mov.l @(loc_8c03a230,PC),r4
	mov.b @r2,r3
	mov.l @(loc_8c03a228,PC),r7
	mov.l @(loc_8c03a22c,PC),r5
	tst r3,r3
	bt.s loc_8c03a1f0
	mov r7,r6
	mov.l @(loc_8c03a238,PC),r1
	mov.w @(loc_8c03a21e,PC),r3
	mov.l @r1,r0
	mov.b @(r0,r3),r3
	tst r3,r3
	bt loc_8c03a1f0
	mov.l @(loc_8c03a238,PC),r3
	mov 0x01,r7
	mov.w @(loc_8c03a21e,PC),r1
	mov.l @r3,r0
	mov.w @(loc_8c03a220,PC),r2
	mov.b @(r0,r1),r0
	mov.w @(loc_8c03a222,PC),r1
	add 0xFF,r0
	mov.w @(loc_8c03a224,PC),r3
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
	mov.w @(loc_8c03a222,PC),r0
	mov.l @(loc_8c03a23c,PC),r2
	mov.l r6,@r15
	mov.w @(r0,r6),r3
	mov.w r3,@r4
	mov.w @(loc_8c03a220,PC),r4
	add r7,r4
	mov.w @(r0,r4),r3
	mov.w @(loc_8c03a224,PC),r0
	mov.w r3,@r2
	mov.l @r15,r1
	mov.w @(r0,r1),r3
	mov.w r3,@r5
	mov.w @(r0,r4),r0
	mov.w r0,@(0x2,r5)

loc_8c03a20e:
	mov.l @(loc_8c03a238,PC),r2
	mov.l @(loc_8c03a240,PC),r1
	mov.l @r2,r3
	mov.b @(0x3,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03a21e:
	#data 0x008c
loc_8c03a220:
	#data 0x05a4
loc_8c03a222:
	#data 0x04f4
loc_8c03a224:
	#data 0x04f0
	#align4
loc_8c03a228:
	#data 0x8c268340
loc_8c03a22c:
	#data 0x8c28c478
loc_8c03a230:
	#data 0x8c28c474
loc_8c03a234:
	#data 0x8c212cdb
loc_8c03a238:
	#data 0x8c26823c
loc_8c03a23c:
	#data 0x8c28c476
loc_8c03a240:
	#data bank14.loc_8c14d9b4

;==============================================
loc_8c03a244:
	mov.l r14,@-r15
	mov.l r13,@-r15
	add 0xE0,r15
	mov.w @(loc_8c03a352,PC),r0
	mov r15,r7
	mov.l @(loc_8c03a360,PC),r5
	add 0x18,r7
	mov.l @(loc_8c03a364,PC),r6
	mov r7,r3
	mov.l @(loc_8c03a35c,PC),r13
	add 0x04,r7
	mov.l r3,@(0xC,r15)
	mov.l @(r0,r6),r2
	mov.l @(r0,r5),r1
	mov.w @(loc_8c03a354,PC),r0
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
	mov.w @(loc_8c03a356,PC),r0
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
	mov.w @(loc_8c03a358,PC),r0
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
	mov.l @(loc_8c03a368,PC),r5
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
	mov.l @(loc_8c03a36c,PC),r4
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
loc_8c03a352:
	#data 0x0544
loc_8c03a354:
	#data 0x0548
loc_8c03a356:
	#data 0x054c
loc_8c03a358:
	#data 0x0550
	#align4
loc_8c03a35c:
	#data 0x8c26823c
loc_8c03a360:
	#data 0x8c268340
loc_8c03a364:
	#data pl_mem.player_start_charB
loc_8c03a368:
	#data 0x8c28c410
loc_8c03a36c:
	#data 0x8c212f30

;----------------------------------------------
loc_8c03a370:
	mov.l @(0xC,r15),r3
	mov r5,r2
	mov.l @(loc_8c03a410,PC),r0
	add 0x10,r2
	mov.l @r3,r3
	add r14,r2
	or r0,r3
	mov.l @(loc_8c03a414,PC),r0
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
	mov.l @(loc_8c03a418,PC),r6
	mov.l @r3,r2
	mov.l @(loc_8c03a41c,PC),r4
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
loc_8c03a410:
	#data 0x00ffff77
loc_8c03a414:
	#data 0x02000004
loc_8c03a418:
	#data 0xf8ffffff
loc_8c03a41c:
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
	mov.l @(loc_8c03a530,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c03a43e
	bra loc_8c03a77c
	nop

loc_8c03a43e:
	mov.l @(loc_8c03a534,PC),r12
	mov.l @(loc_8c03a538,PC),r3
	mov.w @(loc_8c03a52a,PC),r0
	mov.l @r12,r4
	jsr @r3
	mov.b @(r0,r4),r4
	mov.w @(loc_8c03a52a,PC),r0
	mov 0x01,r11
	mov.l @r12,r2
	mov.b @(r0,r2),r3
	tst r11,r3
	bf loc_8c03a45c
	mov.l @(loc_8c03a53c,PC),r3
	jsr @r3
	mov 0x00,r4

loc_8c03a45c:
	mov.w @(loc_8c03a52a,PC),r0
	mov 0x02,r10
	mov.l @r12,r2
	mov.b @(r0,r2),r3
	tst r10,r3
	bf loc_8c03a46e
	mov.l @(loc_8c03a53c,PC),r3
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
	mov.l @(loc_8c03a540,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03a544,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03a548,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03a54c,PC),r9
	mov 0x2A,r0
	mov.l @(loc_8c03a550,PC),r14
	mov 0x4C,r1
	mov.b @(r0,r9),r2
	mov 0x4E,r0
	mov.b r2,@(r0,r14)
	mov.l @r12,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c03a4cc
	mov.l @(loc_8c03a554,PC),r2
	mov 0x11,r3
	mov 0x4F,r0
	mov.l @(loc_8c03a558,PC),r1
	mov.b r13,@(r0,r14)
	mov.b r3,@r2
	mov 0x1D,r3
	mov.l @(loc_8c03a55c,PC),r0
	mov.l @(loc_8c03a560,PC),r2
	mov.b r11,@r1
	jsr @r2
	mov.b r3,@r0

loc_8c03a4cc:
	mov.w @(loc_8c03a52c,PC),r0
	mov.l @r12,r1
	mov.b r11,@(r0,r1)
	mov r13,r0
	nop
	mov.b r0,@(0xD,r14)
	mov 0x4C,r1
	mov.l @r12,r0
	mov.l @(loc_8c03a564,PC),r4
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bt.s loc_8c03a4ee
	mov 0xFF,r5
	mov.l @(loc_8c03a568,PC),r3
	mov.b @r3,r0
	cmp/eq 0x02,r0
	bf loc_8c03a4fa

loc_8c03a4ee:
	mov.w @(loc_8c03a52e,PC),r0
	mov.b r5,@r4
	mov.l @r12,r3
	mov.b r13,@(r0,r3)
	bra loc_8c03a574
	nop

loc_8c03a4fa:
	mov.w @(loc_8c03a52a,PC),r0
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
	mov.w @(loc_8c03a52e,PC),r0
	mov.l @r12,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c03a56c
	mov.w @(loc_8c03a52a,PC),r0
	mov.l @r12,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c03a574
	bra loc_8c03a574
	mov.b r5,@r4

;##############################################
loc_8c03a52a:
	#data 0x0084
loc_8c03a52c:
	#data 0x009a
loc_8c03a52e:
	#data 0x008c
	#align4
loc_8c03a530:
	#data bank02.loc_8c0279a4
loc_8c03a534:
	#data 0x8c26823c
loc_8c03a538:
	#data bank02.loc_8c027b30
loc_8c03a53c:
	#data bank02.loc_8c028246
loc_8c03a540:
	#data bank04.loc_8c044d8c
loc_8c03a544:
	#data loc_8c0357d8
loc_8c03a548:
	#data loc_8c03580c
loc_8c03a54c:
	#data 0x8c289750
loc_8c03a550:
	#data 0x8c28c410
loc_8c03a554:
	#data 0x8c26a95c
loc_8c03a558:
	#data 0x8c26a960
loc_8c03a55c:
	#data 0x8c26a961
loc_8c03a560:
	#data bank11.loc_8c118960
loc_8c03a564:
	#data 0x8c28c46c
loc_8c03a568:
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
	mov.w @(loc_8c03a670,PC),r3
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
	mov.l @(loc_8c03a674,PC),r3
	mov.b r0,@(0x8,r14)
	mov.b r0,@(0x9,r14)
	mov.l r0,@r3
	mov.w @(loc_8c03a672,PC),r1
	mov.l @r12,r0
	mov.b @(r0,r1),r0
	tst 0x03,r0
	bt loc_8c03a678
	mov.w @(loc_8c03a672,PC),r0
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
	mov.w @(loc_8c03a672,PC),r0
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
loc_8c03a670:
	#data 0x0e10
loc_8c03a672:
	#data 0x0084
	#align4
loc_8c03a674:
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
	mov.l @(loc_8c03a7bc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03a7c0,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(loc_8c03a7c4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03a7c8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03a7cc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03a7d0,PC),r3
	jsr @r3
	nop
	mov.l @r12,r0
	mov 0x4C,r1
	mov.l @(loc_8c03a7d4,PC),r4
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf.s loc_8c03a6fa
	fldi0 fr4
	mov 0x04,r0
	mov.b r11,@r4
	mov.b r0,@(0x8,r4)
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mova @(loc_8c03a7d8,PC),r0
	fmov @r0,fr5
	mov 0x10,r0
	fmov fr5,@(r0,r4)
	mova @(loc_8c03a7dc,PC),r0
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
	mov.l @(loc_8c03a7e0,PC),r3
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
	mov.l @(loc_8c03a7f0,PC),r3
	mov.b r13,@(r0,r14)
	mov 0x36,r0
	jsr @r3
	mov.b r13,@(r0,r14)
	mov.l @(loc_8c03a7f4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03a7fc,PC),r2
	mov.l @(loc_8c03a7f8,PC),r3
	jsr @r2
	mov.l r0,@r3
	mov.l @(loc_8c03a800,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c03a804,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03a808,PC),r1
	jsr @r1
	nop
	mov 0x04,r0
	fldi1 fr4
	mov.l @(loc_8c03a80c,PC),r3
	fmov fr4,@r15
	fmov fr4,@(r0,r15)
	mov 0x08,r0
	fmov fr4,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c03a814,PC),r2
	mov.l @(loc_8c03a810,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c03a818,PC),r3
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
	mov.l @(loc_8c03a81c,PC),r2
	mov.l @(loc_8c03a820,PC),r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c03a824,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03a814,PC),r3
	mov.l @(loc_8c03a810,PC),r4
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c03a7bc:
	#data loc_8c03d46e
loc_8c03a7c0:
	#data loc_8c032be0
loc_8c03a7c4:
	#data loc_8c0355a8
loc_8c03a7c8:
	#data loc_8c030e30
loc_8c03a7cc:
	#data loc_8c030f24
loc_8c03a7d0:
	#data bank02.loc_8c02e014
loc_8c03a7d4:
	#data 0x8c26a518
loc_8c03a7d8:
	#data 0x433e0000
loc_8c03a7dc:
	#data 0x444b16de
loc_8c03a7e0:
	#data bank02.loc_8c02e7bc
	#data 0x44870000
	#data 0x3dcccccd
	#data 0x42be0000
loc_8c03a7f0:
	#data bank0f.loc_8c0f7074
loc_8c03a7f4:
	#data bank0f.loc_8c0f35fc
loc_8c03a7f8:
	#data 0x8c28c468
loc_8c03a7fc:
	#data bank0f.loc_8c0f3954
loc_8c03a800:
	#data bank0f.loc_8c0f5768
loc_8c03a804:
	#data bank0f.loc_8c0f6780
loc_8c03a808:
	#data loc_8c031ef8
loc_8c03a80c:
	#data loc_8c031f10
loc_8c03a810:
	#data loc_8c0305d8
loc_8c03a814:
	#data loc_8c0395ac
loc_8c03a818:
	#data bank02.loc_8c027b64
loc_8c03a81c:
	#data 0x8c26823c
loc_8c03a820:
	#data bank14.loc_8c14d9d0
loc_8c03a824:
	#data bank04.loc_8c044ef0

;==============================================
loc_8c03a828:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c03a920,PC),r13
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov.l @(loc_8c03a924,PC),r3
	jsr @r3
	mov 0x38,r4
	mov.l @r13,r2
	mov 0x01,r5
	mov.w @(loc_8c03a918,PC),r0
	mov.l @(loc_8c03a928,PC),r14
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
	mov.w @(loc_8c03a91a,PC),r3
	mov.l @r13,r4
	mov.w @(loc_8c03a918,PC),r0
	add r4,r3
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	or r3,r0
	cmp/eq 0x03,r0
	bt loc_8c03a89c
	mov.w @(loc_8c03a91a,PC),r3
	mov.w @(loc_8c03a918,PC),r0
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
	mov.l @(loc_8c03a92c,PC),r3
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
	mov.w @(loc_8c03a91a,PC),r0
	mov.l @r13,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c03a8be
	mov.w @(loc_8c03a918,PC),r0
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
	mov.l @(loc_8c03a930,PC),r3
	jsr @r3
	nop

loc_8c03a8be:
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c03a8e4
	mov.l @(loc_8c03a938,PC),r3
	mov.w @(loc_8c03a91c,PC),r8
	mov.l @(loc_8c03a934,PC),r2
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
	mov.l @(loc_8c03a938,PC),r3
	mov.w @(loc_8c03a91c,PC),r8
	mov.l @(loc_8c03a93c,PC),r2
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
	mov.l @(loc_8c03a940,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03a918:
	#data 0x0085
loc_8c03a91a:
	#data 0x0084
loc_8c03a91c:
	#data 0x0510
	#align4
loc_8c03a920:
	#data 0x8c26823c
loc_8c03a924:
	#data bank04.loc_8c04257c
loc_8c03a928:
	#data 0x8c28c410
loc_8c03a92c:
	#data loc_8c03d4bc
loc_8c03a930:
	#data bank02.loc_8c027b64
loc_8c03a934:
	#data 0x8c268340
loc_8c03a938:
	#data bank11.loc_8c11e730
loc_8c03a93c:
	#data pl_mem.player_start_charB
loc_8c03a940:
	#data loc_8c03d928

;==============================================
loc_8c03a944:
	mov.l r14,@-r15
	mov.l @(loc_8c03aa58,PC),r14
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
	mov.l @(loc_8c03aa5c,PC),r3
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
	mov.l @(loc_8c03aa60,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c03a978:
	 lds.l @r15+,pr
	 rts
	 mov.l @r15+,r14

;==============================================
loc_8c03a97e:
	mov.l r14,@-r15
	mov.l @(loc_8c03aa58,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r4
	mov.l @(loc_8c03aa64,PC),r6
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
	mov.l @(loc_8c03aa68,PC),r3
	mov.b r0,@(0xB,r6)
	jsr @r3
	mov 0x16,r4
	mov.l @(loc_8c03aa6c,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c03aa70,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03aa74,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03aa78,PC),r0
	mov.b @r0,r0
	cmp/eq 0x02,r0
	bt loc_8c03aa26
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bt loc_8c03aa26
	lds.l @r15+,pr
	mov.l @(loc_8c03aa60,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c03a9da:
	mov.l @(loc_8c03aa60,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03aa78,PC),r0
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
	mov.l @(loc_8c03aa7c,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c03aa26:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03aa2c:
	mov.l @(loc_8c03aa58,PC),r2
	mov.l @(loc_8c03aa80,PC),r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c03aa84,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03aa8c,PC),r3
	mov.l @(loc_8c03aa88,PC),r4
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c03aa58:
	#data 0x8c26823c
loc_8c03aa5c:
	#data bank0f.loc_8c0f387c
loc_8c03aa60:
	#data bank02.loc_8c02e7bc
loc_8c03aa64:
	#data 0x8c28c410
loc_8c03aa68:
	#data bank04.loc_8c041dde
loc_8c03aa6c:
	#data bank04.loc_8c041aa6
loc_8c03aa70:
	#data bank04.loc_8c041e44
loc_8c03aa74:
	#data bank0f.loc_8c0f3a50
loc_8c03aa78:
	#data 0x8c26a51f
loc_8c03aa7c:
	#data bank0f.loc_8c0f7960
loc_8c03aa80:
	#data bank14.loc_8c14d9dc
loc_8c03aa84:
	#data bank04.loc_8c044ef0
loc_8c03aa88:
	#data loc_8c0305d8
loc_8c03aa8c:
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
	mov.l @(loc_8c03abb8,PC),r13
	mov 0x4F,r0
	mov.l @(loc_8c03abbc,PC),r1
	mov r4,r14
	mov.b @(r0,r13),r3
	mov 0x51,r0
	mov.l @(loc_8c03abc4,PC),r12
	mov.l r3,@(0x4,r15)
	mov.l @r1,r2
	mov.l @(loc_8c03abc0,PC),r11
	mov.b @(r0,r2),r3
	mov 0x4E,r0
	mov.b @(r0,r13),r0
	mov.w @(loc_8c03abaa,PC),r2
	add r3,r0
	add 0x0A,r0
	mov.b r0,@r15
	mov.w @(loc_8c03aba8,PC),r0
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ab1c
	jsr @r11
	mov 0x01,r4
	mov.w @(loc_8c03aba8,PC),r0
	mov.w @(loc_8c03abac,PC),r2
	mov.b @(r0,r14),r0
	mov.b @r15,r10
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03aaf8
	mov 0x4F,r0
	mov.l @(loc_8c03abc8,PC),r3
	mov.b @(r0,r13),r1
	add r10,r1
	add 0xFF,r1
	jsr @r3
	mov r10,r0
	mov 0x4F,r1
	add r13,r1
	mov.b r0,@r1

loc_8c03aaf8:
	mov.w @(loc_8c03aba8,PC),r0
	mov.w @(loc_8c03abae,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ab1c
	mov 0x4F,r0
	mov.l @(loc_8c03abc8,PC),r3
	mov.b @(r0,r13),r1
	add r10,r1
	add 0x01,r1
	jsr @r3
	mov r10,r0
	mov 0x4F,r1
	add r13,r1
	mov.b r0,@r1

loc_8c03ab1c:
	mov.w @(loc_8c03aba8,PC),r0
	mov.w @(loc_8c03abb0,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ab7a
	jsr @r11
	mov 0x04,r4
	mov.w @(loc_8c03aba8,PC),r0
	mov.w @(loc_8c03abb2,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_8c03ab56
	mov 0x05,r4
	mov.w @(loc_8c03abb4,PC),r0
	mov.l @(loc_8c03abc8,PC),r3
	mov.b @(r0,r14),r1
	extu.b r1,r1
	add 0x04,r1
	jsr @r3
	mov r4,r0
	mov.w @(loc_8c03abb4,PC),r1
	add r14,r1
	mov.b r0,@r1

loc_8c03ab56:
	mov.w @(loc_8c03aba8,PC),r0
	mov.w @(loc_8c03abb6,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ab7a
	mov.w @(loc_8c03abb4,PC),r0
	mov.l @(loc_8c03abc8,PC),r3
	mov.b @(r0,r14),r1
	extu.b r1,r1
	add 0x06,r1
	jsr @r3
	mov r4,r0
	mov.w @(loc_8c03abb4,PC),r1
	add r14,r1
	mov.b r0,@r1

loc_8c03ab7a:
	mov 0x4F,r0
	mov.l @(0x4,r15),r2
	mov.b @(r0,r13),r3
	cmp/eq r2,r3
	bt loc_8c03ab90
	mov.l @(loc_8c03abd0,PC),r0
	mov 0x1D,r2
	mov.l @(loc_8c03abcc,PC),r3
	mov 0x01,r1
	mov.b r1,@r3
	mov.b r2,@r0

loc_8c03ab90:
	mov.l @(loc_8c03abbc,PC),r2
	mov 0x4F,r0
	mov.b @(r0,r13),r4
	mov 0x51,r0
	mov.l @r2,r3
	mov.l @(loc_8c03abd4,PC),r10
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c03abdc
	mov.l @(loc_8c03abd8,PC),r0
	bra loc_8c03abde
	nop

;##############################################
loc_8c03aba8:
	#data 0x0524
loc_8c03abaa:
	#data 0x3000
loc_8c03abac:
	#data 0x2000
loc_8c03abae:
	#data 0x1000
loc_8c03abb0:
	#data 0x0c00
loc_8c03abb2:
	#data 0x0800
loc_8c03abb4:
	#data 0x0543
loc_8c03abb6:
	#data 0x0400
	#align4
loc_8c03abb8:
	#data 0x8c28c410
loc_8c03abbc:
	#data 0x8c26823c
loc_8c03abc0:
	#data bank04.loc_8c04257c
loc_8c03abc4:
	#data 0x8c28c474
loc_8c03abc8:
	#data bank12.loc_8c1292d4
loc_8c03abcc:
	#data 0x8c26a960
loc_8c03abd0:
	#data 0x8c26a961
loc_8c03abd4:
	#data 0x8c26a95c
loc_8c03abd8:
	#data bank13.loc_8c13822c

;----------------------------------------------
loc_8c03abdc:
	mov.l @(loc_8c03accc,PC),r0

loc_8c03abde:
	mov.b @(r0,r4),r3
	mov.w @(loc_8c03acb8,PC),r0
	mov.b r3,@r10
	mov.b @(r0,r14),r0
	mov.w @(loc_8c03acba,PC),r2
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
	mov.l @(loc_8c03acd0,PC),r3
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
	mov.l @(loc_8c03acd8,PC),r0
	mov 0x1D,r1
	mov.l @(loc_8c03acd4,PC),r2
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
	mov.l @(loc_8c03acdc,PC),r4
	bsr loc_8c03aa90
	nop
	tst r0,r0
	bf loc_8c03ac50
	mov.l @(loc_8c03ace0,PC),r4
	bsr loc_8c03aa90
	nop
	tst r0,r0
	bt loc_8c03ac60

loc_8c03ac50:
	mov.l @(loc_8c03ace4,PC),r4
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
	mov.l @(loc_8c03ace4,PC),r4
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	cmp/pl r0
	bt loc_8c03ac9a
	mov.l @r4,r2
	mov.l @(loc_8c03acdc,PC),r4
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov.w @(loc_8c03acbc,PC),r0
	mov.b @(r0,r4),r5
	mov.w @(loc_8c03acbe,PC),r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c03acc0,PC),r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c03acc2,PC),r0
	mov.b @(r0,r4),r5
	mov.w @(loc_8c03acc4,PC),r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c03acc6,PC),r0
	mov.b r5,@(r0,r4)

loc_8c03ac9a:
	rts
	nop

;==============================================
loc_8c03ac9e:
	mov.l @(loc_8c03ace4,PC),r4
	mov 0x03,r0
	mov 0x00,r5
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.w @(loc_8c03acc8,PC),r0
	mov.l @r4,r3
	rts
	mov.b r5,@(r0,r3)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03acb8:
	#data 0x0524
loc_8c03acba:
	#data 0x0360
loc_8c03acbc:
	#data 0x0543
loc_8c03acbe:
	#data 0x108b
loc_8c03acc0:
	#data 0x1bd3
loc_8c03acc2:
	#data 0x0ae7
loc_8c03acc4:
	#data 0x162f
loc_8c03acc6:
	#data 0x2177
loc_8c03acc8:
	#data 0x00ab
	#align4
loc_8c03accc:
	#data bank13.loc_8c13823e
loc_8c03acd0:
	#data bank11.loc_8c11e730
loc_8c03acd4:
	#data 0x8c26a960
loc_8c03acd8:
	#data 0x8c26a961
loc_8c03acdc:
	#data 0x8c268340
loc_8c03ace0:
	#data pl_mem.player_start_charB
loc_8c03ace4:
	#data 0x8c26823c

;==============================================
loc_8c03ace8:
	mov.l r14,@-r15
	mov 0x4C,r1
	mov.l r13,@-r15
	mov.l @(loc_8c03adcc,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf.s loc_8c03ad12
	mov 0x00,r14
	mov.l @(loc_8c03add0,PC),r4
	mov 0x4C,r0
	mov.w @(r0,r4),r2
	add 0xFF,r2
	mov.w r2,@(r0,r4)
	mov.w @(r0,r4),r3
	cmp/pl r3
	bt loc_8c03ad12
	mov.w r14,@(r0,r4)

loc_8c03ad12:
	mov.l @(loc_8c03add4,PC),r11
	bsr loc_8c03ad98
	mov r11,r4
	mov.w @(loc_8c03adc0,PC),r12
	mov r11,r4
	bsr loc_8c03ad98
	add r12,r4
	mov.w @(loc_8c03adc2,PC),r0
	mov.l @r13,r3
	mov.b @(r0,r3),r2
	add 0x01,r0
	mov.b @(r0,r3),r1
	or r1,r2
	mov.l @(loc_8c03add8,PC),r1
	mov.l @r1,r3
	cmp/eq r2,r3
	bf loc_8c03ad76
	mov.w @(loc_8c03adc2,PC),r3
	mov.l @r13,r4
	mov.w @(loc_8c03adc4,PC),r0
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
	mov.w @(loc_8c03adc6,PC),r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)
	add 0x01,r0
	mov.l @r13,r3
	mov.b r14,@(r0,r3)

loc_8c03ad76:
	mov.l @(loc_8c03addc,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03ade4,PC),r3
	mov.l @(loc_8c03ade0,PC),r4
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
	mov.l @(loc_8c03ade8,PC),r2
	mov.w @(loc_8c03adc8,PC),r0
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
	mov.l @(loc_8c03adec,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;##############################################
loc_8c03adc0:
	#data 0x05a4
loc_8c03adc2:
	#data 0x0084
loc_8c03adc4:
	#data 0x0085
loc_8c03adc6:
	#data 0x008d
loc_8c03adc8:
	#data 0x04c8
	#align4
loc_8c03adcc:
	#data 0x8c26823c
loc_8c03add0:
	#data 0x8c28c410
loc_8c03add4:
	#data 0x8c268340
loc_8c03add8:
	#data 0x8c28c470
loc_8c03addc:
	#data bank04.loc_8c044ef0
loc_8c03ade0:
	#data loc_8c0305d8
loc_8c03ade4:
	#data loc_8c0395ac
loc_8c03ade8:
	#data 0x8c28c41a
loc_8c03adec:
	#data bank14.loc_8c14d9e8

;----------------------------------------------
loc_8c03adf0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c03aeac,PC),r10
	mov.w @(loc_8c03ae9e,PC),r0
	sts.l pr,@-r15
	mov.l @r10,r4
	mov.b @(r0,r4),r3
	add 0xFF,r0
	mov.b @(r0,r4),r2
	mov.w @(loc_8c03aea0,PC),r0
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
	mov.l @(loc_8c03aeb0,PC),r4
	mov.w @(loc_8c03aea2,PC),r14
	mov.l @(loc_8c03aeb4,PC),r13
	mov.w r0,@(0x1C,r12)
	mov.b @r4,r3
	cmp/pz r3
	bf loc_8c03ae70
	mov.w @(loc_8c03aea0,PC),r0
	mov.l @(loc_8c03aeac,PC),r1
	mov.b @(r0,r12),r3
	mov.w @(loc_8c03aea4,PC),r0
	mov.l @r1,r2
	mov.b @(r0,r2),r2
	cmp/eq r2,r3
	bf loc_8c03ae70
	mov.w @(loc_8c03aea6,PC),r0
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
	mov.w @(loc_8c03aea0,PC),r0
	mov.b @(r0,r12),r3
	mov.b r3,@r4

loc_8c03ae70:
	mov.w @(loc_8c03aea8,PC),r0
	mov.l @r10,r4
	mov.b @(r0,r4),r3
	mov.w @(loc_8c03aea0,PC),r0
	mov.b @(r0,r12),r2
	tst r2,r3
	bt loc_8c03ae82
	bra loc_8c03b0b8
	nop

loc_8c03ae82:
	mov.b @(r0,r12),r1
	mov.w @(loc_8c03aea4,PC),r0
	mov.b @(r0,r4),r3
	cmp/eq r3,r1
	bf loc_8c03aee0
	mov.l @(loc_8c03aebc,PC),r1
	mov.l @(loc_8c03aeb8,PC),r3
	mov.w @(loc_8c03aeaa,PC),r2
	jsr @r1
	mov.w r2,@r3
	cmp/pz r0
	bf loc_8c03aec0
	bra loc_8c03aeca
	and 0x03,r0

;##############################################
loc_8c03ae9e:
	#data 0x0085
loc_8c03aea0:
	#data 0x04c8
loc_8c03aea2:
	#data 0x05a4
loc_8c03aea4:
	#data 0x008c
loc_8c03aea6:
	#data 0x0524
loc_8c03aea8:
	#data 0x0084
loc_8c03aeaa:
	#data 0x0e10
	#align4
loc_8c03aeac:
	#data 0x8c26823c
loc_8c03aeb0:
	#data 0x8c28c46c
loc_8c03aeb4:
	#data 0x8c268340
loc_8c03aeb8:
	#data 0x8c28c45c
loc_8c03aebc:
	#data bank11.loc_8c11e730

;----------------------------------------------
loc_8c03aec0:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c03aeca:
	mov.w @(loc_8c03afcc,PC),r1
	mov.l @(loc_8c03afd4,PC),r3
	add r12,r1
	jsr @r3
	mov.b r0,@r1
	mov.l @(loc_8c03afd8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03afdc,PC),r3
	jsr @r3
	mov 0x11,r4

loc_8c03aee0:
	mov.l @r10,r0
	mov 0x4C,r1
	mov.l @(loc_8c03afe0,PC),r2
	mov 0x03,r4
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf.s loc_8c03afe8
	mov.b @r2,r6
	extu.b r6,r6
	mov.l @(loc_8c03afe4,PC),r5
	tst r6,r6
	bt loc_8c03af60
	mov r11,r6

loc_8c03aefa:
	mov.w @(loc_8c03afce,PC),r0
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
	mov.w @(loc_8c03afce,PC),r0
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
	mov.w @(loc_8c03afce,PC),r0
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
	mov.w @(loc_8c03afd0,PC),r0
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
	mov.w @(loc_8c03afce,PC),r0
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
loc_8c03afcc:
	#data 0x0510
loc_8c03afce:
	#data 0x0524
loc_8c03afd0:
	#data 0x052c
	#align4
loc_8c03afd4:
	#data loc_8c03d928
loc_8c03afd8:
	#data bank02.loc_8c027b00
loc_8c03afdc:
	#data bank02.loc_8c027b64
loc_8c03afe0:
	#data 0x8c28c41d
loc_8c03afe4:
	#data 0x8c212f30

;----------------------------------------------
loc_8c03afe8:
	extu.b r6,r6
	mov.l @(loc_8c03b10c,PC),r5
	tst r6,r6
	bt loc_8c03b054
	mov r11,r6

loc_8c03aff2:
	mov.w @(loc_8c03b108,PC),r0
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
	mov.w @(loc_8c03b108,PC),r0
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
	mov.w @(loc_8c03b108,PC),r0
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
	mov.w @(loc_8c03b10a,PC),r0
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
	mov.w @(loc_8c03b108,PC),r0
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
	mov.l @(loc_8c03b110,PC),r5
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
	mov.w @(loc_8c03b108,PC),r0
	mov.b @(r0,r14),r3
	add r2,r3
	mov.b r4,@r3
	mov.l @(loc_8c03b114,PC),r3
	jsr @r3
	mov.b @(r0,r14),r4
	mov.w @(loc_8c03b108,PC),r0
	lds.l @r15+,pr
	mov.l @(loc_8c03b118,PC),r3
	mov.b @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

;##############################################
loc_8c03b108:
	#data 0x0524
loc_8c03b10a:
	#data 0x052c
	#align4
loc_8c03b10c:
	#data bank14.loc_8c14d99c
loc_8c03b110:
	#data 0x8c28c410
loc_8c03b114:
	#data bank0f.loc_8c0f4964
loc_8c03b118:
	#data loc_8c03990c

;----------------------------------------------
loc_8c03b11c:
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	mov.l @(loc_8c03b274,PC),r2
	add 0x01,r0
	mov.l @(loc_8c03b278,PC),r6
	mov.b r0,@(0x5,r14)
	mov.w @(loc_8c03b270,PC),r0
	mov.b r3,@r2
	mov.b @(r0,r14),r3
	mov.b @r6,r1
	add 0x01,r3
	or r3,r1
	mov.b r1,@r6

loc_8c03b136:
	mov.w @(loc_8c03b270,PC),r0
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
	mov.w @(loc_8c03b270,PC),r0
	mov.l @(loc_8c03b27c,PC),r1
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
	mov.w @(loc_8c03b272,PC),r13
	mov.l r12,@-r15
	mov r13,r3
	add 0x80,r3
	add r14,r3
	mov.l r11,@-r15
	mov.l @(loc_8c03b280,PC),r11
	mov.l @(loc_8c03b284,PC),r1
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
	mov.w @(loc_8c03b270,PC),r0
	mov.b @(r0,r14),r0
	mov.b @(r0,r1),r0
	and 0x07,r0
	mov r0,r4
	extu.b r4,r0
	cmp/eq 0x07,r0
	bt loc_8c03b21a
	mov.l @(loc_8c03b288,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c03b28c,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c03b274,PC),r3
	mov 0x01,r2
	mov.w @(loc_8c03b270,PC),r0
	mov.l @(loc_8c03b278,PC),r4
	mov.b r2,@r3
	mov.b @(r0,r14),r2
	mov.b @r4,r1
	add 0x01,r2
	or r2,r1
	mov.b r1,@r4
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(loc_8c03b270,PC),r0
	shll r4
	mov.b @(r0,r14),r2
	add r2,r4
	mov.l @(loc_8c03b290,PC),r2
	jsr @r2
	nop
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(loc_8c03b270,PC),r0
	shll r4
	mov.b @(r0,r14),r3
	add r3,r4
	mov.l @(loc_8c03b294,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c03b270,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(0x1E,r14),r0
	mov r0,r3
	mov.l @(loc_8c03b298,PC),r0
	add 0x01,r3
	mov.b r3,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8c03b29c,PC),r3
	mov.l @r15+,r8
	mov r0,r5
	mov.w @(loc_8c03b270,PC),r0
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
	mov.w @(loc_8c03b270,PC),r0
	mov.b @(r0,r14),r3
	add r12,r3
	mul.l r13,r3
	sts macl,r3
	add r11,r3
	mov.l r3,@(0x18,r14)
	mov.b @(r0,r14),r8
	mov.l @(loc_8c03b2a0,PC),r3
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
	mov.l @(loc_8c03b2a4,PC),r3
	mov 0x05,r0
	mov.b r0,@(0x4,r4)
	jmp @r3
	mov 0x00,r5

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03b270:
	#data 0x0524
loc_8c03b272:
	#data 0x05a4
loc_8c03b274:
	#data 0x8c26a960
loc_8c03b278:
	#data 0x8c26a961
loc_8c03b27c:
	#data 0x8c28c410
loc_8c03b280:
	#data 0x8c268340
loc_8c03b284:
	#data 0x8c28c412
loc_8c03b288:
	#data loc_8c03cdfe
loc_8c03b28c:
	#data bank0f.loc_8c0f46e0
loc_8c03b290:
	#data loc_8c0397a4
loc_8c03b294:
	#data loc_8c0399c0
loc_8c03b298:
	#data 0x8c28c444
loc_8c03b29c:
	#data bank0f.loc_8c0f43ac
loc_8c03b2a0:
	#data bank0f.loc_8c0f5ac8
loc_8c03b2a4:
	#data bank0f.loc_8c0f5838

;==============================================
loc_8c03b2a8:
	mov.l @(loc_8c03b36c,PC),r3
	mov 0x06,r0
	jmp @r3
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c03b2b0:
	mov.w @(loc_8c03b362,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	add r14,r3
	mov.w @(0x1E,r14),r0
	mov.b @r3,r3
	mov r14,r4
	mov.w @(loc_8c03b364,PC),r2
	shll r0
	add r3,r0
	mov.l @(loc_8c03b370,PC),r3
	mul.l r2,r0
	mov.l @(loc_8c03b374,PC),r1
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
	mov.w @(loc_8c03b362,PC),r0
	mov 0x00,r2
	mov.b @(r0,r14),r3
	mov.l @(loc_8c03b378,PC),r0
	mov.b r2,@(r0,r3)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c03b300
	mov.w @(loc_8c03b362,PC),r0
	mov.l @(loc_8c03b37c,PC),r3
	mov.b @(r0,r14),r4
	add 0x4A,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c03b300:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03b304:
	mov.w @(loc_8c03b362,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	add r14,r3
	mov.w @(loc_8c03b364,PC),r2
	mov.l r13,@-r15
	mov.l @(loc_8c03b380,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c03b378,PC),r12
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov.b @r3,r3
	shll r0
	mov.l @(loc_8c03b388,PC),r11
	add r3,r0
	mov.l @(loc_8c03b370,PC),r3
	mul.l r2,r0
	sts macl,r0
	add r3,r0
	mov.l @(loc_8c03b384,PC),r3
	mov.l r0,@r13
	mov r0,r1
	mov.w @(loc_8c03b366,PC),r0
	mov.b @(r0,r1),r0
	mov.b r0,@r3
	mov 0x4C,r0
	mov.w @(r0,r12),r1
	tst r1,r1
	bf.s loc_8c03b38c
	mov r11,r4
	mov.w @(loc_8c03b362,PC),r0
	mov.w @(loc_8c03b368,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w r2,@(r0,r4)
	mov.l @r13,r1
	mov r1,r0
	nop
	mov.w @(loc_8c03b366,PC),r2
	mov.b @(r0,r2),r0
	mov.b r0,@(0x1,r1)
	bra loc_8c03b4ba
	nop

;##############################################
loc_8c03b362:
	#data 0x0524
loc_8c03b364:
	#data 0x05a4
loc_8c03b366:
	#data 0x052c
loc_8c03b368:
	#data 0x0200
	#align4
loc_8c03b36c:
	#data bank0f.loc_8c0f47a4
loc_8c03b370:
	#data 0x8c268340
loc_8c03b374:
	#data bank14.loc_8c14da14
loc_8c03b378:
	#data 0x8c28c410
loc_8c03b37c:
	#data bank04.loc_8c04257c
loc_8c03b380:
	#data 0x8c28c48c
loc_8c03b384:
	#data 0x8c28c490
loc_8c03b388:
	#data 0x8c28c474

;----------------------------------------------
loc_8c03b38c:
	mov.w @(loc_8c03b4c2,PC),r0
	mov.w @(loc_8c03b4c4,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b464
	mov.w @(loc_8c03b4c2,PC),r0
	mov.l @(loc_8c03b4d4,PC),r3
	mov.b @(r0,r14),r4
	shll r4
	jsr @r3
	add 0x40,r4
	mov.w @(loc_8c03b4ca,PC),r10
	mov.w @(loc_8c03b4c8,PC),r9
	mov.w @(loc_8c03b4c6,PC),r8

loc_8c03b3ae:
	mov.w @(loc_8c03b4c2,PC),r0
	mov.w @(loc_8c03b4cc,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b3ce
	mov.w @(loc_8c03b4c2,PC),r0
	mov r12,r3
	add 0x04,r3
	mov.b @(r0,r14),r0
	add r3,r0
	mov.b @r0,r1
	add 0xFF,r1
	mov.b r1,@r0

loc_8c03b3ce:
	mov.w @(loc_8c03b4c2,PC),r0
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r10,r3
	bt loc_8c03b3ec
	mov.w @(loc_8c03b4c2,PC),r0
	mov r12,r3
	add 0x04,r3
	mov.b @(r0,r14),r1
	add r3,r1
	mov.b @r1,r2
	add 0x01,r2
	mov.b r2,@r1

loc_8c03b3ec:
	mov.w @(loc_8c03b4c2,PC),r0
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r8,r3
	bt loc_8c03b40a
	mov.w @(loc_8c03b4c2,PC),r0
	mov r12,r3
	add 0x06,r3
	mov.b @(r0,r14),r1
	add r3,r1
	mov.b @r1,r2
	add 0xFF,r2
	mov.b r2,@r1

loc_8c03b40a:
	mov.w @(loc_8c03b4c2,PC),r0
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r9,r3
	bt loc_8c03b428
	mov.w @(loc_8c03b4c2,PC),r0
	mov r12,r3
	add 0x06,r3
	mov.b @(r0,r14),r1
	add r3,r1
	mov.b @r1,r2
	add 0x01,r2
	mov.b r2,@r1

loc_8c03b428:
	mov.l @(loc_8c03b4d8,PC),r3
	mov.w @(loc_8c03b4c2,PC),r0
	jsr @r3
	mov.b @(r0,r14),r4
	mov.w @(loc_8c03b4ce,PC),r1
	mov.l @r13,r2
	mov.w @(loc_8c03b4c2,PC),r0
	mov.l @(loc_8c03b4dc,PC),r3
	add r2,r1
	mov.l r1,@-r15
	jsr @r3
	mov.b @(r0,r14),r4
	mov.l @r15+,r3
	mov.b r0,@r3
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c03b3ae
	mov.w @(loc_8c03b4c2,PC),r0
	mov.l @(loc_8c03b4e0,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov.l @r13,r4
	tst r0,r0
	bt loc_8c03b3ae
	mov.l @r13,r3
	mov r3,r0
	nop
	mov.w @(loc_8c03b4ce,PC),r1
	mov.b @(r0,r1),r0
	mov.b r0,@(0x1,r3)

loc_8c03b464:
	mov.l @r13,r1
	mov.w @(loc_8c03b4ce,PC),r0
	mov.l @(loc_8c03b4e4,PC),r2
	mov.b @(r0,r1),r0
	mov.b @r2,r3
	cmp/eq r0,r3
	bt loc_8c03b4aa
	mov.l @(loc_8c03b4e8,PC),r3
	mov 0x01,r1
	mov.w @(loc_8c03b4c2,PC),r0
	mov.l @(loc_8c03b4ec,PC),r4
	mov.b r1,@r3
	mov.b @(r0,r14),r1
	mov.b @r4,r2
	add 0x01,r1
	or r1,r2
	mov.b r2,@r4
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(loc_8c03b4c2,PC),r0
	shll r4
	mov.b @(r0,r14),r2
	add r2,r4
	mov.l @(loc_8c03b4f0,PC),r2
	jsr @r2
	nop
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(loc_8c03b4c2,PC),r0
	shll r4
	mov.b @(r0,r14),r3
	add r3,r4
	mov.l @(loc_8c03b4f4,PC),r3
	jsr @r3
	nop

loc_8c03b4aa:
	mov.w @(loc_8c03b4c2,PC),r0
	mov.w @(loc_8c03b4d0,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b592

loc_8c03b4ba:
	mov.w @(loc_8c03b4c2,PC),r0
	mov.b @(r0,r14),r4
	bra loc_8c03b4f8
	nop

;##############################################
loc_8c03b4c2:
	#data 0x0524
loc_8c03b4c4:
	#data 0x3c00
loc_8c03b4c6:
	#data 0x2000
loc_8c03b4c8:
	#data 0x1000
loc_8c03b4ca:
	#data 0x0400
loc_8c03b4cc:
	#data 0x0800
loc_8c03b4ce:
	#data 0x052c
loc_8c03b4d0:
	#data 0x03f0
	#align4
loc_8c03b4d4:
	#data bank04.loc_8c04257c
loc_8c03b4d8:
	#data bank0f.loc_8c0f4714
loc_8c03b4dc:
	#data bank0f.loc_8c0f4774
loc_8c03b4e0:
	#data loc_8c03cbe8
loc_8c03b4e4:
	#data 0x8c28c490
loc_8c03b4e8:
	#data 0x8c26a960
loc_8c03b4ec:
	#data 0x8c26a961
loc_8c03b4f0:
	#data loc_8c0397a4
loc_8c03b4f4:
	#data loc_8c0399c0

;----------------------------------------------
loc_8c03b4f8:
	mov.l @(loc_8c03b63c,PC),r3
	shll r4
	jsr @r3
	add 0x41,r4
	mov.w @(loc_8c03b62c,PC),r0
	mov.l @(loc_8c03b640,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov.l @r13,r4
	mov.w @(loc_8c03b62c,PC),r0
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
	mov.l @(loc_8c03b644,PC),r3
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c03b62c,PC),r0
	mov r12,r2
	add 0x02,r2
	mov.b @(r0,r14),r3
	mov.w @(0x1E,r14),r0
	add r2,r3
	mov.b @r3,r1
	mov 0x01,r2
	shad r0,r2
	mov.w @(loc_8c03b62c,PC),r0
	or r2,r1
	mov.b r1,@r3
	mov.l @(loc_8c03b648,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov.l @r13,r4
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c03b64c,PC),r2
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c03b62e,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c03b56c
	mov.w @(0x1E,r14),r0
	mov r0,r4
	mov.w @(loc_8c03b62c,PC),r0
	shll r4
	mov.b @(r0,r14),r3
	add r3,r4
	mov.l @(loc_8c03b650,PC),r3
	jsr @r3
	add 0x12,r4

loc_8c03b56c:
	mov.l @(loc_8c03b654,PC),r3
	mov.w @(loc_8c03b630,PC),r0
	mov.l @r13,r4
	jsr @r3
	mov.b @(r0,r4),r4
	mov.w @(loc_8c03b62c,PC),r0
	mov.l @r13,r2
	mov.w @(loc_8c03b632,PC),r1
	mov.l @(loc_8c03b658,PC),r3
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
	mov.l @(loc_8c03b63c,PC),r11
	extu.b r0,r0
	mov.l @(loc_8c03b65c,PC),r13
	cmp/eq 0x00,r0
	bt loc_8c03b5c8
	cmp/eq 0x01,r0
	bt loc_8c03b5f0
	bra loc_8c03b77c
	nop

loc_8c03b5c8:
	mov.w @(loc_8c03b62c,PC),r0
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
	mov.w @(loc_8c03b62c,PC),r0
	mov.b @(r0,r14),r4
	mov r4,r3
	shll r4
	add r3,r4
	jsr @r11
	add 0x34,r4
	bra loc_8c03b77c
	nop

loc_8c03b5f0:
	mov.w @(loc_8c03b62c,PC),r3
	mov.w @(0x1E,r14),r0
	add r14,r3
	mov.w @(loc_8c03b634,PC),r2
	mov.b @r3,r3
	shll r0
	mov.l @(loc_8c03b660,PC),r10
	add r3,r0
	mov.l @(loc_8c03b664,PC),r3
	mul.l r2,r0
	mov.l @(loc_8c03b668,PC),r12
	mov.l @(loc_8c03b66c,PC),r9
	sts macl,r0
	add r3,r0
	mov r0,r1
	mov.l r0,@r10
	mov.w @(loc_8c03b636,PC),r0
	mov.b @(r0,r1),r0
	mov.b r0,@r12
	mov 0x4C,r0

loc_8c03b618:
	mov.w @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c03b670
	mov r9,r4
	mov.w @(loc_8c03b62c,PC),r0
	mov.w @(loc_8c03b638,PC),r3
	mov.b @(r0,r14),r0
	shll r0
	bra loc_8c03b6d4
	mov.w r3,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03b62c:
	#data 0x0524
loc_8c03b62e:
	#data 0x0084
loc_8c03b630:
	#data 0x052c
loc_8c03b632:
	#data 0x052d
loc_8c03b634:
	#data 0x05a4
loc_8c03b636:
	#data 0x04c9
loc_8c03b638:
	#data 0x0200
	#align4
loc_8c03b63c:
	#data bank04.loc_8c04257c
loc_8c03b640:
	#data bank0f.loc_8c0f5ac8
loc_8c03b644:
	#data bank0f.loc_8c0f5bf4
loc_8c03b648:
	#data loc_8c03cb92
loc_8c03b64c:
	#data 0x8c26823c
loc_8c03b650:
	#data bank02.loc_8c027b64
loc_8c03b654:
	#data bank11.loc_8c1189e0
loc_8c03b658:
	#data loc_8c03cf6a
loc_8c03b65c:
	#data 0x8c28c410
loc_8c03b660:
	#data 0x8c28c494
loc_8c03b664:
	#data 0x8c268340
loc_8c03b668:
	#data 0x8c28c498
loc_8c03b66c:
	#data 0x8c28c474

;==============================================
loc_8c03b670:
	mov.w @(loc_8c03b78c,PC),r0
	mov.w @(loc_8c03b78e,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r4),r3

loc_8c03b67a:
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b690
	mov.w @(loc_8c03b78c,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x40,r4
	mov.b @r12,r3

loc_8c03b68c:
	add 0xFF,r3
	mov.b r3,@r12

loc_8c03b690:
	mov.w @(loc_8c03b78c,PC),r0
	mov.w @(loc_8c03b790,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r9),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b6b0
	mov.w @(loc_8c03b78c,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x40,r4
	mov.b @r12,r3
	add 0x01,r3
	mov.b r3,@r12

loc_8c03b6b0:
	mov.b @r12,r1
	mov.l @(loc_8c03b798,PC),r3
	add 0x03,r1
	jsr @r3
	mov 0x03,r0
	mov.b r0,@r12
	mov.w @(loc_8c03b792,PC),r0
	mov.b @r12,r3
	mov.l @r10,r2
	mov.b r3,@(r0,r2)
	add 0x5B,r0
	mov.b @(r0,r14),r0
	mov.w @(loc_8c03b794,PC),r2
	shll r0
	mov.w @(r0,r9),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b77c

loc_8c03b6d4:
	mov.w @(loc_8c03b78c,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x41,r4
	mov.w @(loc_8c03b78c,PC),r0
	mov.b @(r0,r14),r4
	jsr @r11
	add 0x35,r4
	mov.w @(loc_8c03b78c,PC),r0
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
	mov.w @(loc_8c03b78c,PC),r3
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
	mov.w @(loc_8c03b78c,PC),r0
	mov r13,r1
	add 0x08,r1
	mov.b @(r0,r14),r2
	add r1,r2
	mov.b @r2,r0
	or 0x80,r0
	mov.b r0,@r2

loc_8c03b72e:
	mov.w @(loc_8c03b78c,PC),r0
	mov r13,r3
	add 0x02,r3
	mov.b @(r0,r14),r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	cmp/eq 0x77,r0
	bf loc_8c03b748
	mov.w @(loc_8c03b78c,PC),r0
	mov.l @(loc_8c03b79c,PC),r3
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
	mov.l @(loc_8c03b79c,PC),r2
	jsr @r2
	mov 0x02,r4

loc_8c03b75e:
	mov.l @(loc_8c03b7a0,PC),r2
	mov 0x4C,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c03b77c
	lds.l @r15+,pr
	mov.l @(loc_8c03b7a4,PC),r3
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
loc_8c03b78c:
	#data 0x0524
loc_8c03b78e:
	#data 0x2000
loc_8c03b790:
	#data 0x1000
loc_8c03b792:
	#data 0x04c9
loc_8c03b794:
	#data 0x03f0
	#align4
loc_8c03b798:
	#data bank12.loc_8c1292d4
loc_8c03b79c:
	#data bank02.loc_8c027b64
loc_8c03b7a0:
	#data 0x8c26823c
loc_8c03b7a4:
	#data bank11.loc_8c118960

;==============================================
loc_8c03b7a8:
	mov.w @(loc_8c03b888,PC),r0
	mov.l @(loc_8c03b894,PC),r6

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
	mov.w @(loc_8c03b888,PC),r2
	mov.w @(0x1E,r4),r0
	add r4,r2
	mov.w @(loc_8c03b88a,PC),r1
	mov.b @r2,r2
	shll r0
	add r2,r0
	mov.l @(loc_8c03b898,PC),r2
	mul.l r1,r0
	mov.l @(loc_8c03b89c,PC),r1
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
	mov.w @(loc_8c03b88c,PC),r2
	add r3,r2
	mov.b r0,@r2
	mov 0x32,r0
	mov 0x01,r3
	mov.b r3,@(r0,r6)
	bra loc_8c03ba4a
	nop

loc_8c03b810:
	mov.l @(loc_8c03b8a0,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c03b824
	mov.w @(loc_8c03b88e,PC),r0
	mov.b @(r0,r7),r3
	mov.w @(loc_8c03b890,PC),r0
	mov.b @(r0,r4),r1
	cmp/eq r1,r3
	bt loc_8c03b84a

loc_8c03b824:
	mov.l @(loc_8c03b8a4,PC),r3
	mov.b @r3,r7
	cmp/pz r7
	bt loc_8c03b836
	mov.w @(loc_8c03b890,PC),r0
	mov.l @(loc_8c03b8a4,PC),r2
	mov.b @(r0,r4),r1
	bra loc_8c03b83e
	mov.b r1,@r2

loc_8c03b836:
	mov.w @(loc_8c03b890,PC),r0
	mov.b @(r0,r4),r2
	cmp/eq r2,r7
	bf loc_8c03b84a

loc_8c03b83e:
	mov 0x07,r0
	mov.l @(loc_8c03b8a8,PC),r3
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
	mov.l @(loc_8c03b89c,PC),r12
	extu.b r0,r0
	mov.l @(loc_8c03b894,PC),r13
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
loc_8c03b888:
	#data 0x0524
loc_8c03b88a:
	#data 0x05a4
loc_8c03b88c:
	#data 0x0089
loc_8c03b88e:
	#data 0x008c
loc_8c03b890:
	#data 0x04c8
	#align4
loc_8c03b894:
	#data 0x8c28c410
loc_8c03b898:
	#data 0x8c268340
loc_8c03b89c:
	#data 0x8c26823c
loc_8c03b8a0:
	#data 0x8c212cdb
loc_8c03b8a4:
	#data 0x8c28c46c
loc_8c03b8a8:
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
	mov.w @(loc_8c03b996,PC),r0
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
	mov.l @(loc_8c03b9a4,PC),r10
	mov.w @(r0,r13),r2
	mov.l @(loc_8c03b9a8,PC),r11
	tst r2,r2
	bf.s loc_8c03b8ee
	mov r10,r4
	mov.w @(loc_8c03b996,PC),r0
	mov.w @(loc_8c03b998,PC),r3
	mov.b @(r0,r14),r0
	shll r0
	bra loc_8c03b95a
	mov.w r3,@(r0,r4)

loc_8c03b8ee:
	mov.w @(loc_8c03b996,PC),r0
	mov.w @(loc_8c03b99a,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b912
	mov.w @(loc_8c03b99c,PC),r3
	mov.l @r12,r0
	mov.b @(r0,r3),r1
	add 0xFF,r1
	mov.b r1,@(r0,r3)
	mov.w @(loc_8c03b996,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x40,r4

loc_8c03b912:
	mov.w @(loc_8c03b996,PC),r0
	mov.w @(loc_8c03b99e,PC),r2
	mov.b @(r0,r14),r0
	shll r0
	mov.w @(r0,r10),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b936
	mov.w @(loc_8c03b99c,PC),r3
	mov.l @r12,r0
	mov.b @(r0,r3),r1
	add 0x01,r1
	mov.b r1,@(r0,r3)
	mov.w @(loc_8c03b996,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x40,r4

loc_8c03b936:
	mov.w @(loc_8c03b99c,PC),r0
	mov 0x01,r2
	mov.l @r12,r3
	mov.b @(r0,r3),r1
	and r2,r1
	mov.b r1,@(r0,r3)
	mov.l @r12,r3
	mov.b @(r0,r3),r1
	mov.w @(loc_8c03b9a0,PC),r0
	mov.b r1,@(r0,r14)
	add 0x5A,r0
	mov.b @(r0,r14),r0
	mov.w @(loc_8c03b9a2,PC),r1
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
	mov.w @(loc_8c03b996,PC),r0
	mov.b @(r0,r14),r4
	shll r4
	jsr @r11
	add 0x41,r4
	bra loc_8c03b988
	nop

loc_8c03b974:
	mov.w @(loc_8c03b996,PC),r0
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
loc_8c03b996:
	#data 0x0524
loc_8c03b998:
	#data 0x0200
loc_8c03b99a:
	#data 0x2000
loc_8c03b99c:
	#data 0x0089
loc_8c03b99e:
	#data 0x1000
loc_8c03b9a0:
	#data 0x04ca
loc_8c03b9a2:
	#data 0x03f0
	#align4
loc_8c03b9a4:
	#data 0x8c28c474
loc_8c03b9a8:
	#data bank04.loc_8c04257c

;==============================================
loc_8c03b9ac:
	mov.w @(loc_8c03bad8,PC),r0
	mov.l @(loc_8c03bae8,PC),r5
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	mov.w @(loc_8c03bada,PC),r2
	shll r0
	mov.l @(loc_8c03bae4,PC),r14 ;StageID 
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03b9cc
	mov.b @r14,r0
	add 0xFF,r0
	mov.b r0,@r14

loc_8c03b9cc:
	mov.w @(loc_8c03bad8,PC),r0
	mov.w @(loc_8c03badc,PC),r2
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
	mov.l @(loc_8c03baec,PC),r3
	extu.b r1,r1
	add 0x11,r1
	jsr @r3
	mov 0x11,r0
	mov.b r0,@r14
	mov.w @(loc_8c03bad8,PC),r0
	mov.w @(loc_8c03bade,PC),r2
	mov.b @(r0,r4),r0
	shll r0
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c03ba04
	mov 0x0A,r0
	mov.b r0,@(0x4,r4)

loc_8c03ba04:
	mov.w @(loc_8c03bad8,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	mov.w @(loc_8c03bad8,PC),r0
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
	mov.l @(loc_8c03baf0,PC),r2
	mov 0x00,r6
	extu.b r3,r3
	mov.l r3,@-r15
	mov.l @(loc_8c03baf4,PC),r3
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
	mov.w @(loc_8c03bae0,PC),r0
	mov.l @(loc_8c03baf8,PC),r5
	mov.b @(r0,r4),r3
	mov.l @r5,r2
	or r3,r2
	rts
	mov.l r2,@r5

;==============================================
loc_8c03ba4a:
	mov.l @(loc_8c03bafc,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c03ba92
	mov.l @(loc_8c03bb00,PC),r2
	mov.w @(loc_8c03bae2,PC),r3
	mov.l @r2,r0
	mov.b @(r0,r3),r3
	tst r3,r3
	bf loc_8c03ba92
	mov.w @(loc_8c03bad8,PC),r0
	mov.l @(loc_8c03bb00,PC),r5
	mov.b @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c03ba80
	mov.l @r5,r6
	mov.w @(loc_8c03bae2,PC),r0
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
	mov.w @(loc_8c03bae2,PC),r0
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
	mov.l @(loc_8c03bb00,PC),r0
	mov.l @(loc_8c03bb04,PC),r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r0,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c03bb08,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03bb10,PC),r3
	mov.l @(loc_8c03bb0c,PC),r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03bac6:
	mov.l @(loc_8c03bb00,PC),r4
	mov.l @r4,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x14,r0
	mov.l @r4,r3
	rts
	mov.w r0,@(0x8,r3)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03bad8:
	#data 0x0524
loc_8c03bada:
	#data 0x0800
loc_8c03badc:
	#data 0x0400
loc_8c03bade:
	#data 0x03f0
loc_8c03bae0:
	#data 0x04c8
loc_8c03bae2:
	#data 0x008c
	#align4
loc_8c03bae4:
	#data 0x8c26a95c
loc_8c03bae8:
	#data 0x8c28c474
loc_8c03baec:
	#data bank12.loc_8c1292d4
loc_8c03baf0:
	#data bank13.loc_8c138250
loc_8c03baf4:
	#data loc_8c0395c6
loc_8c03baf8:
	#data 0x8c28c470
loc_8c03bafc:
	#data 0x8c212cdb
loc_8c03bb00:
	#data 0x8c26823c
loc_8c03bb04:
	#data bank14.loc_8c14da2c
loc_8c03bb08:
	#data bank04.loc_8c044ef0
loc_8c03bb0c:
	#data loc_8c0305d8
loc_8c03bb10:
	#data loc_8c0395ac

;==============================================
loc_8c03bb14:
	mov.l @(loc_8c03bc40,PC),r4
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
	mov.l @(loc_8c03bc40,PC),r4
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
	mov.l @(loc_8c03bc44,PC),r3
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	jsr @r3
	mov 0x02,r4
	mov.l @(loc_8c03bc48,PC),r2
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
	mov.l @(loc_8c03bc4c,PC),r3
	jsr @r3
	nop
	mova @(loc_8c03bc54,PC),r0
	mov.l @(loc_8c03bc50,PC),r4
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r4),fr2
	mov.l @(loc_8c03bc40,PC),r14
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
	mov.l @(loc_8c03bc58,PC),r3
	mov.b @(0x4,r2),r0
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x4,r2)
	mov.l @(loc_8c03bc5c,PC),r2
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
	mov.l @(loc_8c03bc40,PC),r4
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
	mov.l @(loc_8c03bc60,PC),r3
	mov.l @(loc_8c03bc64,PC),r1
	mov.b r4,@r15
	mov.b @r3,r0
	xor 0x01,r0
	shll r0
	mov.w @(r0,r1),r2
	mov.w @(loc_8c03bc3e,PC),r0
	extu.w r2,r2
	tst r0,r2
	bt loc_8c03bc6c
	mov.l @(loc_8c03bc5c,PC),r2
	mov 0x14,r5
	mov 0x01,r6
	jsr @r2
	mov 0xFF,r4
	mov.l @(loc_8c03bc40,PC),r4
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
	mov.l @(loc_8c03bc60,PC),r3
	mov.l @(loc_8c03bc68,PC),r2
	mov.b r0,@(0x4,r5)
	mov.b @r3,r4
	jsr @r2
	add 0x0D,r4
	mov.l @(loc_8c03bc68,PC),r3
	jsr @r3
	mov 0x02,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03bc3e:
	#data 0x03f0
	#align4
loc_8c03bc40:
	#data 0x8c26823c
loc_8c03bc44:
	#data bank02.loc_8c02e796
loc_8c03bc48:
	#data bank04.loc_8c04257c
loc_8c03bc4c:
	#data bank02.loc_8c02e7bc
loc_8c03bc50:
	#data 0x8c26a518
loc_8c03bc54:
	#data 0x42200000
loc_8c03bc58:
	#data loc_8c030f24
loc_8c03bc5c:
	#data loc_8c0355b2
loc_8c03bc60:
	#data 0x8c28c447
loc_8c03bc64:
	#data 0x8c28c474
loc_8c03bc68:
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
	mov.l @(loc_8c03bd78,PC),r5
	mov 0x38,r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c03bc8e
	mov.l @(loc_8c03bd7c,PC),r3
	jsr @r3
	nop
	bra loc_8c03bcde
	nop

loc_8c03bc8e:
	mov.l @(loc_8c03bd80,PC),r4
	mov.w @(loc_8c03bd70,PC),r0
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
	mov.w @(loc_8c03bd70,PC),r1
	mov 0x00,r5
	mov.w @(loc_8c03bd72,PC),r3
	mov.b @(r0,r1),r0
	add r2,r3
	xor 0x03,r0
	mov.b r0,@r3
	mov.l @r4,r2
	mov.w @(loc_8c03bd74,PC),r0
	mov.b r5,@(r0,r2)
	add 0x01,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	bra loc_8c03bcd0
	nop

loc_8c03bcc4:
	mov.b @(0x4,r14),r0
	mov.l @(loc_8c03bd84,PC),r1
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop

loc_8c03bcd0:
	mov.l @(loc_8c03bd88,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4

loc_8c03bcde:
	lds.l @r15+,pr
	mov.l @(loc_8c03bd90,PC),r3
	mov.l @(loc_8c03bd8c,PC),r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03bce8:
	mov.l @(loc_8c03bd80,PC),r4
	mov 0x77,r1
	mov.l r14,@-r15
	mov.l @(loc_8c03bd78,PC),r14
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
	mov.l @(loc_8c03bd94,PC),r3
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
	mov.l @(loc_8c03bd80,PC),r4
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
	mov.l @(loc_8c03bd80,PC),r13
	sts.l pr,@-r15
	mov.l @r13,r4
	mov.l @(loc_8c03bd78,PC),r14
	mov.b @(0x5,r4),r0
	cmp/eq 0x00,r0
	bt loc_8c03bd98
	cmp/eq 0x01,r0
	bt loc_8c03bde8
	bra loc_8c03be02
	nop

;##############################################
loc_8c03bd70:
	#data 0x008c
loc_8c03bd72:
	#data 0x0084
loc_8c03bd74:
	#data 0x008d
	#align4
loc_8c03bd78:
	#data 0x8c28c410
loc_8c03bd7c:
	#data bank04.loc_8c041588
loc_8c03bd80:
	#data 0x8c26823c
loc_8c03bd84:
	#data bank14.loc_8c14da40
loc_8c03bd88:
	#data bank04.loc_8c044ef0
loc_8c03bd8c:
	#data loc_8c0305d8
loc_8c03bd90:
	#data loc_8c0395ac
loc_8c03bd94:
	#data loc_8c03d744

;----------------------------------------------
loc_8c03bd98:
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	mov.l @(loc_8c03beb4,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x37,r0
	mov.l @(loc_8c03beb8,PC),r4
	mov.b r3,@r2
	mov.b @(r0,r14),r3
	mov.b @r4,r1
	add 0x01,r3
	or r3,r1
	mov.l @(loc_8c03bebc,PC),r3
	mov.b r1,@r4
	jsr @r3
	mov.b @(r0,r14),r4
	mov.l @(loc_8c03bec0,PC),r3
	mov 0x37,r0
	jsr @r3
	mov.b @(r0,r14),r4
	mov.w @(loc_8c03beb2,PC),r1
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bf loc_8c03bdd8
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(loc_8c03bec4,PC),r3
	mov.b @(r0,r14),r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03bdd8:
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(loc_8c03bec8,PC),r3
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
	mov.l @(loc_8c03becc,PC),r4
	mov 0x37,r0
	mov.b @(r0,r4),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c03be22
	mov.l @(loc_8c03bed0,PC),r3
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
	mov.l @(loc_8c03bed0,PC),r4
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
	mov.l @(loc_8c03bed0,PC),r4
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
	mov.l @(loc_8c03bed0,PC),r4
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
	mov.l @(loc_8c03bed8,PC),r1
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov.l @(loc_8c03bed4,PC),r2
	mov.b r3,@r2
	jmp @r1
	lds.l @r15+,pr

loc_8c03beac:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03beb2:
	#data 0x0081
loc_8c03beb4:
	#data 0x8c26a960
loc_8c03beb8:
	#data 0x8c26a961
loc_8c03bebc:
	#data loc_8c0397a4
loc_8c03bec0:
	#data loc_8c0399c0
loc_8c03bec4:
	#data bank0f.loc_8c0f49b0
loc_8c03bec8:
	#data bank0f.loc_8c0f4964
loc_8c03becc:
	#data 0x8c28c410
loc_8c03bed0:
	#data 0x8c26823c
loc_8c03bed4:
	#data 0x8c28c41b
loc_8c03bed8:
	#data bank0f.loc_8c0f71a8

;==============================================
loc_8c03bedc:
	sts.l pr,@-r15
	bsr loc_8c03bbe2
	mov 0x00,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03bf0a
	mov.l @(loc_8c03bf94,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c03bf0a
	mov.l @(loc_8c03bf98,PC),r2
	mov.l @r2,r1
	mov.b @(0x4,r1),r0
	add 0x01,r0
	mov.b r0,@(0x4,r1)
	mov.l @(loc_8c03bf9c,PC),r1
	jsr @r1
	mov 0x02,r4
	mov.l @(loc_8c03bfa0,PC),r3
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
	mov.l @(loc_8c03bfa4,PC),r3
	jsr @r3
	nop
	mova @(0x90,PC),r0
	mov.l @(loc_8c03bfa8,PC),r4
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r4),fr2
	mov.l @(loc_8c03bf98,PC),r14
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
	mov.l @(loc_8c03bfb0,PC),r3
	mov.b @(0x4,r2),r0
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x4,r2)
	mov.l @(loc_8c03bfb4,PC),r2
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
	mov.l @(loc_8c03bfb8,PC),r3
	mov.l @(loc_8c03bfbc,PC),r2
	mov.b @r3,r4
	jsr @r2
	add 0x0D,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03bfbc,PC),r3
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
	mov.l @(loc_8c03bf98,PC),r4
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
loc_8c03bf94:
	#data 0x8c28c41b
loc_8c03bf98:
	#data 0x8c26823c
loc_8c03bf9c:
	#data bank02.loc_8c02e796
loc_8c03bfa0:
	#data bank04.loc_8c04257c
loc_8c03bfa4:
	#data bank02.loc_8c02e7bc
loc_8c03bfa8:
	#data 0x8c26a518
	#data 0x42200000
loc_8c03bfb0:
	#data loc_8c030f24
loc_8c03bfb4:
	#data loc_8c0355b2
loc_8c03bfb8:
	#data 0x8c28c447
loc_8c03bfbc:
	#data bank02.loc_8c027b64

;==============================================
loc_8c03bfc0:
	mov.l r14,@-r15
	mov.l @(loc_8c03c0fc,PC),r14
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
	mov.w @(loc_8c03c0ee,PC),r2
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.w @(loc_8c03c0ec,PC),r1
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
	mov.l @(loc_8c03c100,PC),r4
	bsr loc_8c03cc28
	nop

loc_8c03c008:
	mov.w @(loc_8c03c0ee,PC),r3
	mov.l @r14,r4
	mov.w @(loc_8c03c0ec,PC),r0
	add r4,r3
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	or r3,r0
	tst 0x02,r0
	bt loc_8c03c020
	mov.l @(loc_8c03c104,PC),r4
	bsr loc_8c03cc28
	nop

loc_8c03c020:
	mov.w @(loc_8c03c0ee,PC),r0
	mov.l @r14,r3
	mov r0,r1
	add 0x01,r1
	mov r3,r2
	add r2,r1
	mov.b @r1,r2
	mov.b @(r0,r3),r1
	or r2,r1
	mov.l @(loc_8c03c10c,PC),r2
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
	mov.l @(loc_8c03c108,PC),r3
	jsr @r2
	mov.b r13,@r3
	mov.w @(loc_8c03c0f0,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c03c110,PC),r2
	mov.l @r14,r1
	jsr @r2
	mov.b r3,@(r0,r1)
	lds.l @r15+,pr
	mov.l @(loc_8c03c114,PC),r1
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14


;==============================================
loc_8c03c06a:
	mov.l @(loc_8c03c100,PC),r4
	mov.w @(loc_8c03c0f2,PC),r0
	mov.l @(loc_8c03c118,PC),r5
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov.w @(loc_8c03c0f4,PC),r0
	mov.w r3,@r5
	mov.w @(r0,r4),r0
	mov.w r0,@(0x2,r5)
	mov 0x38,r0
	mov.l @(loc_8c03c11c,PC),r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c03c092
	mov.l @(loc_8c03c120,PC),r3
	jsr @r3
	nop
	bra loc_8c03c0e2
	nop

loc_8c03c092:
	mov.l @(loc_8c03c0fc,PC),r4
	mov.w @(loc_8c03c0f6,PC),r0
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
	mov.w @(loc_8c03c0f6,PC),r1
	mov 0x00,r5
	mov.w @(loc_8c03c0ee,PC),r3
	mov.b @(r0,r1),r0
	add r2,r3
	xor 0x03,r0
	mov.b r0,@r3
	mov.l @r4,r2
	mov.w @(loc_8c03c0f8,PC),r0
	mov.b r5,@(r0,r2)
	add 0x01,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	bra loc_8c03c0d4
	nop

loc_8c03c0c8:
	mov.b @(0x4,r14),r0
	mov.l @(loc_8c03c124,PC),r1
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop

loc_8c03c0d4:
	mov.l @(loc_8c03c128,PC),r14
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x01,r4

loc_8c03c0e2:
	lds.l @r15+,pr
	mov.l @(loc_8c03c130,PC),r3
	mov.l @(loc_8c03c12c,PC),r4
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03c0ec:
	#data 0x0085
loc_8c03c0ee:
	#data 0x0084
loc_8c03c0f0:
	#data 0x009a
loc_8c03c0f2:
	#data 0x04f4
loc_8c03c0f4:
	#data 0x0a98
loc_8c03c0f6:
	#data 0x008c
loc_8c03c0f8:
	#data 0x008d
	#align4
loc_8c03c0fc:
	#data 0x8c26823c
loc_8c03c100:
	#data 0x8c268340
loc_8c03c104:
	#data pl_mem.player_start_charB
loc_8c03c108:
	#data 0x8c28c448
loc_8c03c10c:
	#data loc_8c03d46e
loc_8c03c110:
	#data bank04.loc_8c04182e
loc_8c03c114:
	#data bank04.loc_8c041ecc
loc_8c03c118:
	#data 0x8c28c474
loc_8c03c11c:
	#data 0x8c28c410
loc_8c03c120:
	#data bank04.loc_8c041588
loc_8c03c124:
	#data bank14.loc_8c14da68
loc_8c03c128:
	#data bank04.loc_8c044ef0
loc_8c03c12c:
	#data loc_8c0305d8
loc_8c03c130:
	#data loc_8c0395ac

;==============================================
loc_8c03c134:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c03c268,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c03c14a
	bra loc_8c03c25a
	nop

loc_8c03c14a:
	mov.l @(loc_8c03c26c,PC),r13
	mov.l @(loc_8c03c270,PC),r3
	mov.w @(loc_8c03c264,PC),r0
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
	mov.w @(loc_8c03c266,PC),r0
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
	mov.l @(loc_8c03c274,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03c278,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03c27c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03c280,PC),r13
	mov r14,r0
	nop
	mov r13,r4
	add 0x30,r4
	mov.l @(loc_8c03c284,PC),r3
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
	mov.l @(loc_8c03c288,PC),r2
	jsr @r2
	mov 0x05,r4
	mov.l @(loc_8c03c28c,PC),r3
	jsr @r3
	mov 0x16,r4
	mov.l @(loc_8c03c290,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c03c294,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03c298,PC),r3
	mov 0x33,r0
	mov 0x03,r2
	jsr @r3
	mov.b r2,@(r0,r13)
	mov.l @(loc_8c03c2a0,PC),r3
	mov.l @(loc_8c03c29c,PC),r1
	jsr @r3
	mov.l r0,@r1
	mov.l @(loc_8c03c2a4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03c2a8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03c2ac,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03c2b0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03c2b4,PC),r2
	jsr @r2
	nop
	mov 0x04,r0
	fldi1 fr4
	mov.l @(loc_8c03c2b8,PC),r3
	fmov fr4,@r15
	fmov fr4,@(r0,r15)
	mov 0x08,r0
	fmov fr4,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c03c2bc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03c2c0,PC),r4
	mov 0x04,r0
	fldi0 fr4
	mov 0x01,r3
	mov.b r3,@r4
	mov.b r0,@(0x8,r4)
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mova @(loc_8c03c2c4,PC),r0
	fmov @r0,fr5
	mov 0x10,r0
	mov.l @(loc_8c03c2cc,PC),r3
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
	mov.l @(loc_8c03c2d0,PC),r2
	jsr @r2
	mov r14,r4

loc_8c03c25a:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03c264:
	#data 0x0084
loc_8c03c266:
	#data 0x008c
	#align4
loc_8c03c268:
	#data bank02.loc_8c0279a4
loc_8c03c26c:
	#data 0x8c26823c
loc_8c03c270:
	#data bank02.loc_8c027b30
loc_8c03c274:
	#data bank04.loc_8c044d8c
loc_8c03c278:
	#data loc_8c0357d8
loc_8c03c27c:
	#data loc_8c03580c
loc_8c03c280:
	#data 0x8c28c410
loc_8c03c284:
	#data loc_8c03d46e
loc_8c03c288:
	#data loc_8c032be0
loc_8c03c28c:
	#data bank04.loc_8c041dde
loc_8c03c290:
	#data bank04.loc_8c041aa6
loc_8c03c294:
	#data bank04.loc_8c041e44
loc_8c03c298:
	#data bank0f.loc_8c0f35fc
loc_8c03c29c:
	#data 0x8c28c468
loc_8c03c2a0:
	#data bank0f.loc_8c0f3954
loc_8c03c2a4:
	#data bank0f.loc_8c0f5768
loc_8c03c2a8:
	#data loc_8c0355a8
loc_8c03c2ac:
	#data loc_8c030e30
loc_8c03c2b0:
	#data loc_8c030f24
loc_8c03c2b4:
	#data loc_8c031ef8
loc_8c03c2b8:
	#data loc_8c031f10
loc_8c03c2bc:
	#data bank02.loc_8c02e014
loc_8c03c2c0:
	#data 0x8c26a518
loc_8c03c2c4:
	#data 0x433e0000
	#data 0x444b16de
loc_8c03c2cc:
	#data bank02.loc_8c02e7bc
loc_8c03c2d0:
	#data bank02.loc_8c027b64

;==============================================
loc_8c03c2d4:
	mov.l @(loc_8c03c3ac,PC),r4
	mov.l r14,@-r15
	mov.w @(loc_8c03c3a6,PC),r0
	mov.w @(loc_8c03c3a8,PC),r3
	mov.l @(loc_8c03c3b0,PC),r2
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r4,r14
	mov.l @(loc_8c03c3b4,PC),r11
	mov.b @(r0,r14),r14
	mov.l @(loc_8c03c3b8,PC),r13
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
	mov.w @(loc_8c03c3aa,PC),r0
	mov.b @(r0,r14),r3
	add r1,r3
	mov 0x37,r1
	mov.b r12,@r3
	mov.b @(r0,r14),r0
	add r13,r1
	mov.l @(loc_8c03c3bc,PC),r3
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
	mov.l @(loc_8c03c3c0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03c3c4,PC),r3
	mov 0x00,r5
	mov.w @(loc_8c03c3aa,PC),r0
	jsr @r3
	mov.b @(r0,r14),r4
	mov.w @(loc_8c03c3aa,PC),r0
	mov 0x01,r2
	mov.l @(loc_8c03c3c8,PC),r3
	mov.b r2,@r3
	mov.b @(r0,r14),r1
	mov.b @r11,r2
	add 0x01,r1
	or r1,r2
	mov.b r2,@r11
	mov.l @(loc_8c03c3cc,PC),r2
	jsr @r2
	mov.b @(r0,r14),r4
	lds.l @r15+,pr
	mov.w @(loc_8c03c3aa,PC),r0
	mov.l @(loc_8c03c3d0,PC),r3
	mov.l @r15+,r11
	mov.b @(r0,r14),r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03c378:
	mov.w @(loc_8c03c3aa,PC),r0
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
	mov.w @(loc_8c03c3aa,PC),r0
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
loc_8c03c3a6:
	#data 0x0084
loc_8c03c3a8:
	#data 0x05a4
loc_8c03c3aa:
	#data 0x0524
	#align4
loc_8c03c3ac:
	#data 0x8c26823c
loc_8c03c3b0:
	#data 0x8c268340
loc_8c03c3b4:
	#data 0x8c26a961
loc_8c03c3b8:
	#data 0x8c28c410
loc_8c03c3bc:
	#data loc_8c03d4bc
loc_8c03c3c0:
	#data loc_8c03d928
loc_8c03c3c4:
	#data bank0f.loc_8c0f4964
loc_8c03c3c8:
	#data 0x8c26a960
loc_8c03c3cc:
	#data loc_8c0397a4
loc_8c03c3d0:
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
	mov.l @(loc_8c03c4e4,PC),r3
	jsr @r3
	mov.b @(r0,r13),r4
	mov 0x37,r0
	mov r13,r3
	mov.b @(r0,r13),r2
	add r3,r2
	mov.l @(loc_8c03c4e8,PC),r3
	mov.b r12,@r2
	mov 0x01,r2
	mov.b r2,@r3
	mov.b @(r0,r13),r1
	mov.b @r11,r2
	add 0x01,r1
	or r1,r2
	mov.b r2,@r11
	mov.l @(loc_8c03c4ec,PC),r2
	jsr @r2
	mov.b @(r0,r13),r4
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(loc_8c03c4f0,PC),r3
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
	mov.l @(loc_8c03c4f4,PC),r13
	sts.l pr,@-r15
	mov.l @r13,r4
	mov.l @(loc_8c03c4f8,PC),r14
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
	mov.w @(loc_8c03c4e2,PC),r1
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bf loc_8c03c482
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(loc_8c03c4fc,PC),r3
	mov.b @(r0,r14),r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c03c482:
	lds.l @r15+,pr
	mov 0x37,r0
	mov.l @(loc_8c03c500,PC),r3
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
	mov.l @(loc_8c03c4f4,PC),r4
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
loc_8c03c4e2:
	#data 0x0081
	#align4
loc_8c03c4e4:
	#data loc_8c03d744
loc_8c03c4e8:
	#data 0x8c26a960
loc_8c03c4ec:
	#data loc_8c0397a4
loc_8c03c4f0:
	#data loc_8c0399c0
loc_8c03c4f4:
	#data 0x8c26823c
loc_8c03c4f8:
	#data 0x8c28c410
loc_8c03c4fc:
	#data bank0f.loc_8c0f49b0
loc_8c03c500:
	#data bank0f.loc_8c0f4964

;==============================================
loc_8c03c504:
	sts.l pr,@-r15
	bsr loc_8c03bbe2
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c03c526
	mov.l @(loc_8c03c628,PC),r2
	mov.l @(loc_8c03c62c,PC),r1
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x00,r3
	mov.b r3,@r1
	mov.l @(loc_8c03c630,PC),r3
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
	mov.l @(loc_8c03c62c,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c03c55a
	mov.l @(loc_8c03c628,PC),r2
	mov.l @r2,r1
	mov.b @(0x4,r1),r0
	add 0x01,r0
	mov.b r0,@(0x4,r1)
	mov.l @(loc_8c03c634,PC),r1
	jsr @r1
	mov 0x02,r4
	mov.l @(loc_8c03c638,PC),r3
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
	mov.l @(loc_8c03c63c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03c640,PC),r0
	mov.b @r0,r0
	cmp/eq 0x02,r0
	bf loc_8c03c5ac
	mov.l @(loc_8c03c628,PC),r14
	mov.l @(loc_8c03c644,PC),r3
	mov.l @r14,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x4,r2)
	mov.l @(loc_8c03c648,PC),r2
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
	mov.l @(loc_8c03c64c,PC),r3
	mov.l @(loc_8c03c650,PC),r2
	mov.b @r3,r4
	jsr @r2
	add 0x0D,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03c650,PC),r3
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
	mov.l @(loc_8c03c628,PC),r4
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
	mov.l @(loc_8c03c628,PC),r5
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
	mov.w @(loc_8c03c624,PC),r0
	mov.l @r5,r3
	mov.b r4,@(r0,r3)
	add 0x01,r0
	mov.l @r5,r3
	mov.b r4,@(r0,r3)
	add 0xFE,r0
	mov.l @r5,r3
	mov.b r4,@(r0,r3)
	add 0x0E,r0
	mov.l @(loc_8c03c654,PC),r3
	mov.b r4,@r3
	mov.l @r5,r2
	mov.b r4,@(r0,r2)
	bsr loc_8c03d46e
	nop
	mov.l @(loc_8c03c658,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03c65c,PC),r2
	jmp @r2
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03c624:
	#data 0x008d
	#align4
loc_8c03c628:
	#data 0x8c26823c
loc_8c03c62c:
	#data 0x8c28c41b
loc_8c03c630:
	#data bank0f.loc_8c0f71a8
loc_8c03c634:
	#data bank02.loc_8c02e796
loc_8c03c638:
	#data bank04.loc_8c04257c
loc_8c03c63c:
	#data bank02.loc_8c02e7bc
loc_8c03c640:
	#data 0x8c26a51f
loc_8c03c644:
	#data loc_8c030f24
loc_8c03c648:
	#data loc_8c0355b2
loc_8c03c64c:
	#data 0x8c28c447
loc_8c03c650:
	#data bank02.loc_8c027b64
loc_8c03c654:
	#data 0x8c28c448
loc_8c03c658:
	#data bank04.loc_8c04182e
loc_8c03c65c:
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
	mov.l @(loc_8c03cc20,PC),r14
	mov.b r0,@(0x4,r15)
	mov.b @(0xD,r14),r0
	tst r0,r0
	bf loc_8c03cbe0
	mov.w @(loc_8c03cc1c,PC),r0
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
	mov.w @(loc_8c03cc1c,PC),r0
	mov.l @(0x8,r15),r5
	mov.b @(r0,r5),r5
	bsr loc_8c03cb76
	mov r15,r4
	mov r0,r4
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c03cc24,PC),r3
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
loc_8c03cc1c:
	#data 0x052c
	#align4
loc_8c03cc20:
	#data 0x8c28c410
loc_8c03cc24:
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
	mov.l @(loc_8c03cd94,PC),r4
	mov.w @(loc_8c03cd88,PC),r0
	mov r15,r5
	mov.l @r4,r3
	add 0x14,r5
	mov.l @(r0,r14),r2
	mov r5,r6
	mov.l @(0x30,r3),r3
	add 0x04,r5
	mov.w @(loc_8c03cd8a,PC),r0
	or r3,r2
	mov.l r2,@r6
	mov.l r5,@(0x8,r15)
	mov.l @r4,r3
	mov.l @(r0,r14),r2
	mov.l @(0x34,r3),r3
	mov.w @(loc_8c03cd8c,PC),r0
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
	mov.l @(loc_8c03cd98,PC),r13
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
	mov.l @(loc_8c03cd9c,PC),r2
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
	mov.l @(loc_8c03cda0,PC),r0
	shll2 r3
	shll r3
	add r1,r3
	mov.l @(0x8,r15),r1
	mov.l @r1,r1
	or r0,r1
	mov.w @(loc_8c03cd8e,PC),r0
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
	mov.l @(loc_8c03cda4,PC),r5
	mov.l r1,@(0x4,r3)
	mov r13,r1
	mov.b @(r0,r14),r3
	add 0x3C,r1
	mov.l @(loc_8c03cda8,PC),r4
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
	mov.w @(loc_8c03cd8e,PC),r0
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
	mov.l @(loc_8c03cdac,PC),r8
	mov 0x00,r4
	mov.w @(loc_8c03cd90,PC),r9
	mov 0x03,r10
	mov r4,r11
	bra loc_8c03cde4
	mov r4,r12

;##############################################
loc_8c03cd88:
	#data 0x0544
loc_8c03cd8a:
	#data 0x0548
loc_8c03cd8c:
	#data 0x054c
loc_8c03cd8e:
	#data 0x0524
loc_8c03cd90:
	#data 0x05a4
	#align4
loc_8c03cd94:
	#data 0x8c26823c
loc_8c03cd98:
	#data 0x8c28c410
loc_8c03cd9c:
	#data 0x00ffff77
loc_8c03cda0:
	#data 0x02000004
loc_8c03cda4:
	#data 0xf8ffffff
loc_8c03cda8:
	#data 0x07ffffff
loc_8c03cdac:
	#data 0x8c268340

;----------------------------------------------
loc_8c03cdb0:
	mov.w @(loc_8c03cee6,PC),r0
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
	mov.w @(loc_8c03cee6,PC),r0
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
	mov.l @(loc_8c03ceec,PC),r7
	mov r0,r3
	mov.w @(loc_8c03cee6,PC),r0
	shll r3
	mov.l @(loc_8c03cef4,PC),r1
	mov.b @(r0,r4),r2
	add r2,r3
	mov.l @(loc_8c03cef0,PC),r2
	mov.b r3,@r15
	mov.b @r15,r14
	mov.w @(loc_8c03cee8,PC),r3
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
	mov.l @(loc_8c03cef8,PC),r13
	tst r12,r12
	bt loc_8c03ce64
	mov.w @(loc_8c03cee6,PC),r0
	mov r13,r2
	add 0x28,r2
	mov.b @(r0,r4),r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov.l @(r0,r2),r0
	mov.w @(loc_8c03ceea,PC),r2
	mov.b r0,@(0x1,r14)
	add r14,r2
	bra loc_8c03cf46
	mov.b r0,@r2

loc_8c03ce64:
	mov r5,r11
	mov r5,r12
	mov r5,r10

loc_8c03ce6a:
	mov.w @(loc_8c03cee6,PC),r0
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
	mov.w @(loc_8c03cee6,PC),r0
	mov r13,r2
	add 0x28,r2
	mov.w @(loc_8c03ceea,PC),r1
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
	mov.l @(loc_8c03cefc,PC),r10
	tst r12,r12
	bt loc_8c03cf00
	mov.w @(loc_8c03cee6,PC),r0
	mov.w @(loc_8c03ceea,PC),r1
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
loc_8c03cee6:
	#data 0x0524
loc_8c03cee8:
	#data 0x05a4
loc_8c03ceea:
	#data 0x052c
loc_8c03ceec:
	#data 0x8c28c410
	#align4
loc_8c03cef0:
	#data 0x8c268340
loc_8c03cef4:
	#data 0x8c26823c
loc_8c03cef8:
	#data 0x8c212f30
loc_8c03cefc:
	#data bank14.loc_8c14d99c

;==============================================
loc_8c03cf00:
	mov.l @(loc_8c03d050,PC),r8
	mov r5,r12
	mov r5,r11
	mov r5,r13

loc_8c03cf08:
	mov.w @(loc_8c03d040,PC),r0
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
	mov.w @(loc_8c03d040,PC),r0
	mov.w @(loc_8c03d042,PC),r1
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
	mov.w @(loc_8c03d044,PC),r0
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
	mov.l @(loc_8c03d054,PC),r6
	mov 0x01,r14
	mov.b r14,@(r0,r15)
	mov r15,r10
	mov.w @(loc_8c03d046,PC),r0
	add 0x18,r10
	mov r10,r5
	mov.l @(loc_8c03d058,PC),r12
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
	mov.w @(loc_8c03d048,PC),r3
	mov.l @r6,r7
	mov.w @(loc_8c03d046,PC),r0
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
	mov.w @(loc_8c03d042,PC),r0
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
	mov.w @(loc_8c03d04a,PC),r3
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
	mov.w @(loc_8c03d040,PC),r0
	mov r11,r8
	mov.l @(loc_8c03d05c,PC),r5
	mov r11,r6
	mov.b @(r0,r13),r0
	mov.w @(loc_8c03d04c,PC),r4
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
loc_8c03d040:
	#data 0x0524
loc_8c03d042:
	#data 0x052c
loc_8c03d044:
	#data 0x04c9
loc_8c03d046:
	#data 0x0084
loc_8c03d048:
	#data 0x0085
loc_8c03d04a:
	#data 0x0080
loc_8c03d04c:
	#data 0x05a4
	#align4
loc_8c03d050:
	#data bank14.loc_8c14d984
loc_8c03d054:
	#data 0x8c26823c
loc_8c03d058:
	#data 0x8c28c410
loc_8c03d05c:
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
	mov.l @(loc_8c03d1a0,PC),r3
	shll r1
	exts.b r6,r2
	add r3,r0
	mov.l r2,@(0x10,r15)
	extu.b r10,r3
	add r3,r1
	mov.w @(loc_8c03d19a,PC),r3
	mul.l r4,r1
	sts macl,r1
	add r5,r1
	add r1,r3
	mov.l r1,@r15
	mov.b @r3,r3
	mov.b r3,@(r0,r2)
	mov.l @(0x4,r15),r2
	mov.l @(loc_8c03d1a4,PC),r3
	mov.l @r15,r1
	add r3,r2
	mov.w @(loc_8c03d19c,PC),r3
	mov.l @(0x10,r15),r0
	add r1,r3
	mov.b @r3,r1
	mov.b r1,@(r0,r2)
	mov.w @(loc_8c03d19a,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	mov.b @(r0,r9),r2
	cmp/eq r2,r3
	bf loc_8c03d0ce
	exts.b r6,r2
	mov.w @(loc_8c03d19c,PC),r0
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
	mov.w @(loc_8c03d19e,PC),r0
	exts.b r6,r10
	exts.b r6,r2
	mov.w @(loc_8c03d19a,PC),r1
	mov.b @(r0,r13),r0
	mov r0,r3
	mov.b r0,@(0x4,r15)
	shll r0
	mov.l r2,@r15
	add r3,r0
	mov.l @(loc_8c03d1a0,PC),r3
	shll r10
	add r0,r3
	mov.b @(0x4,r15),r0
	add r3,r2
	add r10,r0
	mul.l r4,r0
	sts macl,r0
	add r5,r0
	mov.b @(r0,r1),r3
	mov.w @(loc_8c03d19e,PC),r0
	mov.b r3,@r2
	mov.b @(r0,r13),r0
	mov.l @(loc_8c03d1a4,PC),r2
	mov r0,r3
	mov.b r0,@(0x4,r15)
	shll r0
	add r3,r0
	mov.l @r15,r3
	add r0,r2
	mov.b @(0x4,r15),r0
	add r3,r2
	add r10,r0
	mov.w @(loc_8c03d19c,PC),r3
	mul.l r4,r0
	sts macl,r0
	add r5,r0
	mov.b @(r0,r3),r3
	mov.w @(loc_8c03d19e,PC),r0
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
	mov.w @(loc_8c03d19e,PC),r0
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
	mov.w @(loc_8c03d19e,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r13),r2
	mov.w @(loc_8c03d19c,PC),r0
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
	mov.l @(loc_8c03d1a8,PC),r7
	mov 0x06,r5
	mov.l @(loc_8c03d1ac,PC),r6
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
loc_8c03d19a:
	#data 0x052c
loc_8c03d19c:
	#data 0x052d
loc_8c03d19e:
	#data 0x0524
	#align4
loc_8c03d1a0:
	#data 0x8c28c47c
loc_8c03d1a4:
	#data 0x8c28c482
loc_8c03d1a8:
	#data bank14.loc_8c14da98
loc_8c03d1ac:
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
	mov.w @(loc_8c03d2ce,PC),r0
	mov.l @(loc_8c03d2d0,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(0x8,r15),r0
	mov.l @(loc_8c03d2d4,PC),r1
	mov r0,r4
	mov.l @r3,r0
	shll2 r4
	fmov fr4,fr14
	mov.l @r0,r2
	fmov fr5,fr15
	add r2,r4
	jsr @r1
	mov.l @r4,r4
	mov.l @(loc_8c03d2e0,PC),r14
	mov.l @(loc_8c03d2dc,PC),r13
	mov.l @(loc_8c03d2d8,PC),r12
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
	mov.w @(loc_8c03d2ce,PC),r0
	mov.l @(loc_8c03d2d0,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(0x8,r15),r0
	mov.l @(loc_8c03d2d4,PC),r1
	mov r0,r4
	mov.l @r3,r0
	shll2 r4
	fmov fr4,fr14
	mov.l @r0,r2
	fmov fr5,fr15
	add r2,r4
	jsr @r1
	mov.l @r4,r4
	mov.l @(loc_8c03d2e0,PC),r14
	mov.l @(loc_8c03d2dc,PC),r13
	mov.l @(loc_8c03d2d8,PC),r12
	bra loc_8c03d2fa
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03d2ce:
	#data 0x0084
	#align4
loc_8c03d2d0:
	#data 0x8c26a910
loc_8c03d2d4:
	#data bank10.loc_8c108060
loc_8c03d2d8:
	#data bank10.loc_8c1081e6
loc_8c03d2dc:
	#data bank10.loc_8c108086
loc_8c03d2e0:
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
	mov.l @(loc_8c03d3ec,PC),r10
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
	mov.l @(loc_8c03d3f0,PC),r13
	mov 0x01,r8
	mov.w @(loc_8c03d3e0,PC),r14
	mov 0x02,r9
	bra loc_8c03d44c
	mov 0x00,r12

loc_8c03d33e:
	mov.w @(loc_8c03d3e2,PC),r0
	mov r8,r6
	mov.l @r10,r5
	shad r12,r6
	mov.b @(r0,r5),r2
	tst r6,r2
	bf loc_8c03d350
	bra loc_8c03d44a
	nop

loc_8c03d350:
	mov.w @(loc_8c03d3e4,PC),r4
	mov r12,r2
	mov.l @(loc_8c03d3f4,PC),r3
	mov r12,r11
	mul.l r4,r12
	mov.w @(loc_8c03d3e6,PC),r0
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
	mov.w @(loc_8c03d3e8,PC),r0
	mov.b @(r0,r5),r2
	tst r6,r2
	bf loc_8c03d44a
	mov.l @(loc_8c03d3f8,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_8c03d44a
	mov.l @(loc_8c03d3fc,PC),r2
	mov.l @(0x1C,r5),r1
	jsr @r2
	mov 0x3C,r0
	mov 0x1E,r3
	cmp/gt r3,r0
	bt loc_8c03d44a
	bra loc_8c03d446
	mov r11,r5

loc_8c03d3a4:
	mov.w @(loc_8c03d3ea,PC),r0
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
	mov.w @(loc_8c03d3ea,PC),r0
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
	mov.l @(loc_8c03d400,PC),r0
	shll2 r5
	mov.l @(loc_8c03d404,PC),r3
	mov.l @(r0,r5),r5
	jsr @r3
	mov r12,r4
	bra loc_8c03d44a
	nop

;##############################################
loc_8c03d3e0:
	#data 0x0910
loc_8c03d3e2:
	#data 0x0085
loc_8c03d3e4:
	#data 0x05a4
loc_8c03d3e6:
	#data 0x01d0
loc_8c03d3e8:
	#data 0x0084
loc_8c03d3ea:
	#data 0x01d4
	#align4
loc_8c03d3ec:
	#data 0x8c26823c
loc_8c03d3f0:
	#data loc_8c0312d6
loc_8c03d3f4:
	#data 0x8c268340
loc_8c03d3f8:
	#data 0x8c28c418
loc_8c03d3fc:
	#data bank12.loc_8c1292d4
loc_8c03d400:
	#data 0x8c289790
loc_8c03d404:
	#data loc_8c03140c

;----------------------------------------------
loc_8c03d408:
	mov.w @(loc_8c03d4b2,PC),r0
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
	mov.w @(loc_8c03d4b2,PC),r0
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
	mov.l @(loc_8c03d4b8,PC),r6
	mov 0x00,r4
	mov r6,r5
	mov r4,r0
	nop
	mov.b r0,@(0x4,r5)
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x6,r5)
	mov.b r0,@(0x7,r5)
	mov.w @(loc_8c03d4b4,PC),r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	mov.b r4,@(r0,r5)
	add 0x03,r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	mov.b r4,@(r0,r5)
	mov.w @(loc_8c03d4b6,PC),r5
	add r6,r5
	mov r4,r0
	nop
	mov.b r0,@(0x4,r5)
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x6,r5)
	mov.b r0,@(0x7,r5)
	mov.w @(loc_8c03d4b4,PC),r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	mov.b r4,@(r0,r5)
	add 0x03,r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	rts
	mov.b r4,@(r0,r5)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03d4b2:
	#data 0x01d4
loc_8c03d4b4:
	#data 0x01d0
loc_8c03d4b6:
	#data 0x05a4
	#align4
loc_8c03d4b8:
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
	mov.w @(loc_8c03d5e0,PC),r3
	exts.b r4,r11
	exts.b r4,r8
	mov.l @(loc_8c03d5f0,PC),r0
	muls.w r3,r11
	mov 0x01,r13
	mov.l r8,@r15
	xor r13,r8
	mov.l @(loc_8c03d5f4,PC),r2
	mov 0x00,r12
	mov.w @(loc_8c03d5e2,PC),r1
	sts macl,r11
	mul.l r3,r8
	exts.b r4,r4
	mov.l @(loc_8c03d5ec,PC),r9
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
	mov.w @(loc_8c03d5e4,PC),r0
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
	mov.w @(loc_8c03d5e6,PC),r3
	mul.l r10,r0
	sts macl,r0
	add r9,r0
	add r0,r3
	mov.b r12,@r3
	mov 0x11,r3
	mov.w @(0x1E,r11),r0
	mov.l @(0x4,r15),r2
	shad r0,r3
	mov.l @(loc_8c03d5f0,PC),r0
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
	mov.l @(loc_8c03d5f8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03d5f8,PC),r3
	mov 0x1F,r4
	mov r0,r14
	jsr @r3
	and r4,r14
	mov 0x01,r4
	mov.w @(loc_8c03d5e8,PC),r3
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
	mov.w @(loc_8c03d5ea,PC),r0
	mov.l @(loc_8c03d5fc,PC),r3
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
loc_8c03d5e0:
	#data 0x05a4
loc_8c03d5e2:
	#data 0x0081
loc_8c03d5e4:
	#data 0x052c
loc_8c03d5e6:
	#data 0x04c9
loc_8c03d5e8:
	#data 0x0504
loc_8c03d5ea:
	#data 0x0524
	#align4
loc_8c03d5ec:
	#data 0x8c268340
loc_8c03d5f0:
	#data 0x8c28c412
loc_8c03d5f4:
	#data 0x8c26823c
loc_8c03d5f8:
	#data bank11.loc_8c11e730
loc_8c03d5fc:
	#data 0x8c28c420

;----------------------------------------------
loc_8c03d600:
	mov.w @(loc_8c03d732,PC),r0
	exts.b r4,r14
	mov.l @(loc_8c03d738,PC),r2
	shll2 r14
	mov.b @(r0,r8),r0
	mov.w @(loc_8c03d730,PC),r3
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
	mov.w @(loc_8c03d732,PC),r0
	exts.b r4,r14
	mov.l @(loc_8c03d738,PC),r3
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
	mov.l @(loc_8c03d73c,PC),r0
	mov.b @(r0,r3),r0
	or r1,r0
	mov.l @(loc_8c03d73c,PC),r1
	add r3,r1
	mov.b r0,@r1
	mov.w @(0x1E,r11),r0
	mov.l @r15,r3
	shll r0
	add r3,r0
	mov.w @(loc_8c03d734,PC),r3
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
	mov.w @(loc_8c03d734,PC),r0
	mul.l r10,r4
	mov.l @(loc_8c03d740,PC),r5
	sts macl,r4
	add r9,r4
	mov.b @(r0,r4),r0
	mov.b r0,@(0x1,r4)
	mov.w @(0x1E,r11),r0
	mov.l @r15,r3
	mov r0,r4
	shll r4
	add r3,r4
	mov.w @(loc_8c03d734,PC),r0
	mul.l r10,r4
	sts macl,r4
	add r9,r4
	mov.b @(r0,r4),r0
	mov.b @(r0,r5),r3
	mov.w @(loc_8c03d736,PC),r0
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
loc_8c03d730:
	#data 0x0504
loc_8c03d732:
	#data 0x0524
loc_8c03d734:
	#data 0x052c
loc_8c03d736:
	#data 0x04c9
	#align4
loc_8c03d738:
	#data 0x8c28c420
loc_8c03d73c:
	#data 0x8c28c412
loc_8c03d740:
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
	mov.w @(loc_8c03d864,PC),r3
	exts.b r8,r14
	mov.l @(loc_8c03d878,PC),r10
	muls.w r3,r14
	sts.l pr,@-r15
	mov.w @(loc_8c03d866,PC),r11
	mov r3,r13
	sts macl,r14
	add r10,r14
	bra loc_8c03d78e
	mov 0x00,r0

loc_8c03d76c:
	mov r0,r12
	exts.b r8,r3
	shll r12
	mov.l @(loc_8c03d87c,PC),r2
	add r3,r12
	mov r11,r6
	mul.l r13,r12
	sts macl,r12
	add r10,r12
	mov r12,r5
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c03d868,PC),r1
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
	mov.l @(loc_8c03d880,PC),r13
	mov.w @(loc_8c03d86c,PC),r3
	mov.l @r13,r4
	mov.w @(loc_8c03d86a,PC),r0
	add r4,r3
	mov.l @(loc_8c03d884,PC),r14;Stage ID
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	or r3,r0
	cmp/eq 0x03,r0
	bf loc_8c03d800
	mov.l @(loc_8c03d888,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03d88c,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x06,r0
	mov.l @(loc_8c03d888,PC),r3
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
	mov.l @(loc_8c03d890,PC),r2
	shll2 r0
	mov.l @r15,r3
	shll r0
	add r0,r2
	add r3,r2
	mov.b @r2,r0
	bra loc_8c03d852
	mov.b r0,@r14

loc_8c03d800:
	mov.w @(loc_8c03d86c,PC),r3
	mov.w @(loc_8c03d86a,PC),r0
	add r4,r3
	mov.l @(loc_8c03d878,PC),r6
	mov.b @r3,r3
	mov.b @(r0,r4),r0
	mov.l @(loc_8c03d890,PC),r5
	or r3,r0
	cmp/eq 0x01,r0
	bf loc_8c03d82a
	mov.w @(loc_8c03d86e,PC),r0
	mov.w @(loc_8c03d870,PC),r3
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
	mov.w @(loc_8c03d872,PC),r0
	mov.w @(loc_8c03d870,PC),r3
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
	mov.w @(loc_8c03d874,PC),r0
	mov 0x01,r3
	mov.l @r13,r2
	mov.b r3,@(r0,r2)
	bra loc_8c03d85a
	nop

loc_8c03d852:
	mov.w @(loc_8c03d874,PC),r0
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
loc_8c03d864:
	#data 0x05a4
loc_8c03d866:
	#data 0x0200
loc_8c03d868:
	#data 0x052d
loc_8c03d86a:
	#data 0x0085
loc_8c03d86c:
	#data 0x0084
loc_8c03d86e:
	#data 0x0510
loc_8c03d870:
	#data 0x0081
loc_8c03d872:
	#data 0x0ab4
loc_8c03d874:
	#data 0x00ab
	#align4
loc_8c03d878:
	#data 0x8c268340
loc_8c03d87c:
	#data loc_8c03cf6a
loc_8c03d880:
	#data 0x8c26823c
loc_8c03d884:
	#data 0x8c26a95c
loc_8c03d888:
	#data bank11.loc_8c11e730
loc_8c03d88c:
	#data bank12.loc_8c1292d4
loc_8c03d890:
	#data bank14.loc_8c14daa0

;==============================================
loc_8c03d894:
	mov.l @(loc_8c03d954,PC),r2
	mov 0x4C,r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r4
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c03d922
	mov 0x4C,r0
	mov.l @(loc_8c03d958,PC),r14
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
	mov.l @(loc_8c03d960,PC),r1
	mov.l @(loc_8c03d95c,PC),r3
	mov.w @r1,r2
	mov.w @r3,r0
	mov.l @(loc_8c03d964,PC),r3
	add r2,r0
	mov.l @(loc_8c03d968,PC),r1
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
	mov.l @(loc_8c03d954,PC),r3
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
	mov.l @(loc_8c03d96c,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c03d922
	mov.l @(loc_8c03d970,PC),r3
	jsr @r3
	nop
	mov 0x01,r2
	mov r0,r4
	tst r2,r4
	bt loc_8c03d922
	mov.l @(loc_8c03d96c,PC),r1
	mov.b @r14,r4
	mov.b @r1,r5
	extu.b r4,r3
	add 0xFF,r5
	exts.b r5,r5
	cmp/gt r5,r3
	bt loc_8c03d922
	mov.l @(loc_8c03d974,PC),r0
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
	mov.l @(loc_8c03d978,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03d97c,PC),r3
	mov r0,r7
	mov.l @(loc_8c03d980,PC),r2
	mov 0x14,r5
	mov.l r3,@-r15
	mov 0x00,r6
	mov.l @(loc_8c03d984,PC),r1
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
loc_8c03d954:
	#data 0x8c26823c
loc_8c03d958:
	#data 0x8c26a95c
loc_8c03d95c:
	#data 0x8c213b90
loc_8c03d960:
	#data 0x8c214286
loc_8c03d964:
	#data 0x8c213af0
loc_8c03d968:
	#data 0x8c21428c
loc_8c03d96c:
	#data 0x8c28c45e
loc_8c03d970:
	#data bank11.loc_8c11e730
loc_8c03d974:
	#data bank14.loc_8c14dac0
loc_8c03d978:
	#data bank11.loc_8c11b940
loc_8c03d97c:
	#data 0x00400000
loc_8c03d980:
	#data bank13.loc_8c138278
loc_8c03d984:
	#data loc_8c0395c6

;==============================================
loc_8c03d988:
	mov.l @(loc_8c03d998,PC),r2
	mov.l @(loc_8c03d99c,PC),r1
	mov.l @r2,r3
	mov.b @(0x3,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03d998:
	#data 0x8c26823c
loc_8c03d99c:
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
	mov.l @(loc_8c03db28,PC),r14
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
	mov.l @(loc_8c03db2c,PC),r5
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov r5,r13
	mov.w @(loc_8c03db10,PC),r12
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	add r5,r12
	mov.w @(loc_8c03db0e,PC),r4
	mov.b r0,@(0x7,r3)
	mov.w @(loc_8c03db0a,PC),r0
	mov.l @r14,r3
	mov.b r7,@(r0,r3)
	mov 0x19,r0
	mov.l @r14,r3
	mov.b r6,@(r0,r3)
	mov.l @r14,r3
	mov.w @(loc_8c03db0c,PC),r0
	mov.b r7,@(r0,r3)

loc_8c03d9f0:
	mov.w @(loc_8c03db12,PC),r0
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
	mov.w @(loc_8c03db14,PC),r0
	sts macl,r12
	add r5,r12
	mov.b @(r0,r12),r3
	extu.b r3,r3
	mov.l r3,@r15
	mov r13,r0
	nop
	mov.w @(loc_8c03db16,PC),r3
	mov.l @r15,r9
	add r12,r3
	mov.w @(loc_8c03db18,PC),r2
	mov.b @r3,r3
	shll r9
	and r6,r3
	add r9,r3
	mul.l r4,r3
	sts macl,r3
	add r5,r3
	add r3,r2
	mov.b @r2,r3
	mov.w @(loc_8c03db1a,PC),r2
	mov.b r3,@(r0,r10)
	mov.w @(loc_8c03db16,PC),r3
	add r12,r3
	mov.b @r3,r3
	and r6,r3
	add r9,r3
	mul.l r4,r3
	sts macl,r3
	add r5,r3
	add r3,r2
	mov.b @r2,r3
	mov.w @(loc_8c03db16,PC),r2
	mov.b r3,@(r0,r8)
	mov r15,r3
	add r12,r2
	mov.b @r2,r2
	add 0x10,r3
	add r13,r3
	and r6,r2
	mov.w @(loc_8c03db1c,PC),r1
	add r9,r2
	mul.l r4,r2
	sts macl,r2
	add r5,r2
	add r2,r1
	mov.b @r1,r2
	mov.w @(loc_8c03db1e,PC),r1
	mov.b r2,@r3
	mov r15,r3
	mov.w @(loc_8c03db16,PC),r2
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
	mov.w @(loc_8c03db14,PC),r0
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
	mov.w @(loc_8c03db18,PC),r2
	add 0x01,r13
	mov.b @(r0,r10),r3
	cmp/ge r11,r13
	add r12,r2
	mov.w @(loc_8c03db1a,PC),r0
	mov.b r3,@r2
	mov.l @r15,r1
	add 0x01,r1
	mov.l r1,@r15
	add 0xFF,r1
	mov.b @r1,r3
	mov.b r3,@(r0,r12)
	mov.l @(0x4,r15),r2
	mov.w @(loc_8c03db1c,PC),r0
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
	mov.w @(loc_8c03db20,PC),r2
	mov r0,r3
	mov.w @(loc_8c03db22,PC),r1
	add r3,r2
	mov.b @r2,r2
	add r0,r1
	exts.b r2,r0
	cmp/eq 0x03,r0
	bf.s loc_8c03db30
	mov.b r2,@r1
	mov.w @(loc_8c03db24,PC),r0
	mov.l @r14,r2
	mov.b r6,@(r0,r2)
	add 0xF6,r0
	mov.l @r14,r3
	mov.b r7,@(r0,r3)
	bra loc_8c03db82
	nop

;##############################################
loc_8c03db0a:
	#data 0x0086
loc_8c03db0c:
	#data 0x00a4
loc_8c03db0e:
	#data 0x05a4
loc_8c03db10:
	#data 0x21d8
loc_8c03db12:
	#data 0x0525
loc_8c03db14:
	#data 0x053f
loc_8c03db16:
	#data 0x0524
loc_8c03db18:
	#data 0x052c
loc_8c03db1a:
	#data 0x04c9
loc_8c03db1c:
	#data 0x052d
loc_8c03db1e:
	#data 0x055c
loc_8c03db20:
	#data 0x0084
loc_8c03db22:
	#data 0x0099
loc_8c03db24:
	#data 0x008b
	#align4
loc_8c03db28:
	#data 0x8c26823c
loc_8c03db2c:
	#data 0x8c268340

;----------------------------------------------
loc_8c03db30:
	mov.w @(loc_8c03dc26,PC),r0
	mov r5,r13
	mov.l @r14,r2
	mov r5,r12
	mov.w @(loc_8c03dc28,PC),r1
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
	mov.w @(loc_8c03dc2a,PC),r0
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
	mov.w @(loc_8c03dc2c,PC),r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov 0x49,r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c03db82
	mov.w @(loc_8c03dc2e,PC),r0
	mov.l @r14,r2
	mov.b @(r0,r13),r3
	mov.w @(loc_8c03dc30,PC),r0
	mov.b r3,@(r0,r2)

loc_8c03db82:
	mov.w @(loc_8c03dc32,PC),r3
	mov.l @(loc_8c03dc40,PC),r2
	add r5,r3
	mov.w @(loc_8c03dc32,PC),r0
	mov.l r3,@r2
	mov r5,r3
	mov.l @(loc_8c03dc44,PC),r1
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
	mov.l @(loc_8c03dc48,PC),r2
	mov.b @r2,r0
	cmp/eq 0x01,r0
	bt loc_8c03dbc0
	mov.w @(loc_8c03dc34,PC),r12
	mov r5,r13
	add r5,r12

loc_8c03dbb2:
	mov.w @(loc_8c03dc36,PC),r0
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
	mov.w @(loc_8c03dc28,PC),r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r6,r2
	bt loc_8c03dbde
	mov.w @(loc_8c03dc36,PC),r0
	mov.b r7,@(r0,r5)
	mov.w @(loc_8c03dc38,PC),r0
	mov.b r7,@(r0,r5)
	mov.w @(loc_8c03dc3a,PC),r0
	mov.b r7,@(r0,r5)

loc_8c03dbde:
	mov.w @(loc_8c03dc28,PC),r1
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	tst 0x02,r0
	bt loc_8c03dbf6
	mov.w @(loc_8c03dc36,PC),r0
	add r5,r4
	mov.b r7,@(r0,r4)
	mov.w @(loc_8c03dc3c,PC),r0
	mov.b r7,@(r0,r5)
	mov.w @(loc_8c03dc3e,PC),r0
	mov.b r7,@(r0,r5)

loc_8c03dbf6:
	mov.l @(loc_8c03dc4c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03dc50,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03dc54,PC),r3
	mov 0x01,r5
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c03dc54,PC),r2
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
loc_8c03dc26:
	#data 0x008b
loc_8c03dc28:
	#data 0x0084
loc_8c03dc2a:
	#data 0x0534
loc_8c03dc2c:
	#data 0x0081
loc_8c03dc2e:
	#data 0x04ca
loc_8c03dc30:
	#data 0x0089
loc_8c03dc32:
	#data 0x04dc
loc_8c03dc34:
	#data 0x21d8
loc_8c03dc36:
	#data 0x0525
loc_8c03dc38:
	#data 0x106d
loc_8c03dc3a:
	#data 0x1bb5
loc_8c03dc3c:
	#data 0x1611
loc_8c03dc3e:
	#data 0x2159
	#align4
loc_8c03dc40:
	#data 0x8c212f28
loc_8c03dc44:
	#data 0x8c212f2c
loc_8c03dc48:
	#data 0x8c212cd0
loc_8c03dc4c:
	#data bank04.loc_8c04e9dc
loc_8c03dc50:
	#data bank04.loc_8c044d8c
loc_8c03dc54:
	#data bank04.loc_8c041a14

;==============================================
loc_8c03dc58:
	mov.l @(loc_8c03dd30,PC),r4
	mov.w @(loc_8c03dd2a,PC),r0
	mov.l @r4,r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c03dc6c
	mov.w @(loc_8c03dd2c,PC),r0
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
	mov.w @(loc_8c03dd2a,PC),r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	bra loc_8c03dca0
	nop

loc_8c03dc9a:
	mov.l @(loc_8c03dd34,PC),r1
	jmp @r1
	nop

loc_8c03dca0:
	rts
	nop

;==============================================
loc_8c03dca4:
	mov.l @(loc_8c03dd38,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c03dcaa:
	mov.l @(loc_8c03dd30,PC),r1
	mov.l @(loc_8c03dd3c,PC),r2
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
	mov.l @(loc_8c03dd40,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bf loc_8c03dcd8
	bra loc_8c03ddfc
	nop

loc_8c03dcd8:
	mov.l @(loc_8c03dd30,PC),r12
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
	mov.l @(loc_8c03dd44,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03dd48,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c03dd08:
	mov.l @(loc_8c03dd4c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03dd50,PC),r3
	jsr @r3
	nop
	mov.l @r12,r0
	mov.l @(loc_8c03dd54,PC),r14
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
loc_8c03dd2a:
	#data 0x009a
loc_8c03dd2c:
	#data 0x008b
	#align4
loc_8c03dd30:
	#data 0x8c26823c
loc_8c03dd34:
	#data loc_8c03c06a
loc_8c03dd38:
	#data bank04.loc_8c040248
loc_8c03dd3c:
	#data bank14.loc_8c14dae0
loc_8c03dd40:
	#data bank02.loc_8c0279a4
loc_8c03dd44:
	#data loc_8c033190
loc_8c03dd48:
	#data bank11.loc_8c11e770
loc_8c03dd4c:
	#data loc_8c0357d8
loc_8c03dd50:
	#data loc_8c03580c
loc_8c03dd54:
	#data loc_8c032be0

;----------------------------------------------
loc_8c03dd58:
	jsr @r14
	mov 0x18,r4
	mov 0x17,r4

loc_8c03dd5e:
	jsr @r14
	nop
	mov.w @(loc_8c03de0e,PC),r11
	mov 0x00,r14
	mov.l @(loc_8c03de18,PC),r9
	mov 0x06,r10
	mov.l @(loc_8c03de14,PC),r8

loc_8c03dd6c:
	mul.l r11,r14
	mov.l @(loc_8c03de1c,PC),r3
	mov.w @(loc_8c03de10,PC),r0
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
	mov.l @(loc_8c03de20,PC),r2
	jsr @r2
	nop

loc_8c03dd98:
	mov.l @(loc_8c03de28,PC),r2
	mov.l @(loc_8c03de24,PC),r3
	jsr @r2
	mov.b @r3,r4
	mov.l @(loc_8c03de2c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03de30,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03de34,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03de38,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03de3c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03de40,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03de44,PC),r3
	jsr @r3
	nop
	mov.l @r12,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bt loc_8c03ddfc
	mov.l @(loc_8c03de48,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03de4c,PC),r3
	jsr @r3
	nop
	mov.l @r12,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c03ddfc
	lds.l @r15+,pr
	mov.l @(loc_8c03de50,PC),r2
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
loc_8c03de0e:
	#data 0x05a4
loc_8c03de10:
	#data 0x055c
	#align4
loc_8c03de14:
	#data loc_8c033d78
loc_8c03de18:
	#data loc_8c031fa0
loc_8c03de1c:
	#data 0x8c268340
loc_8c03de20:
	#data bank04.loc_8c041c22
loc_8c03de24:
	#data 0x8c26a95c
loc_8c03de28:
	#data bank04.loc_8c041dde
loc_8c03de2c:
	#data bank04.loc_8c045ef6
loc_8c03de30:
	#data bank04.loc_8c044d8c
loc_8c03de34:
	#data bank04.loc_8c04eafc
loc_8c03de38:
	#data bank04.loc_8c045708
loc_8c03de3c:
	#data bank02.loc_8c02e014
loc_8c03de40:
	#data loc_8c030e30
loc_8c03de44:
	#data loc_8c030f24
loc_8c03de48:
	#data bank10.loc_8c1083d8
loc_8c03de4c:
	#data loc_8c03012c
loc_8c03de50:
	#data loc_8c032184

;==============================================
loc_8c03de54:
	mov.l r14,@-r15
	mov 0x01,r2
	mov.l r13,@-r15
	mov 0x00,r14
	mov.l @(loc_8c03df60,PC),r13
	mov.l @(loc_8c03df64,PC),r5
	mov.w @(loc_8c03df58,PC),r7
	sts.l pr,@-r15
	mov.l @r13,r3
	add r5,r7
	mov.w @(loc_8c03df56,PC),r6
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
	mov.l @(loc_8c03df68,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03df6c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03df70,PC),r2
	mov 0x01,r5
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c03df70,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r5,r4
	mov.l @(loc_8c03df74,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03df78,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c03df7c,PC),r2
	jsr @r2
	nop
	mov.l @r13,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c03dee4
	mov.w @(loc_8c03df5a,PC),r0
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
	mov.l @(loc_8c03df60,PC),r13
	mov.w @(loc_8c03df5c,PC),r0
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.l @(loc_8c03df80,PC),r12
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03df20
	mov.l @(loc_8c03df84,PC),r2
	jsr @r2
	nop
	mov.w @(loc_8c03df5e,PC),r0
	mov 0x01,r2
	mov.l @r13,r1
	mov.b @(r0,r1),r3
	cmp/gt r2,r3
	bf loc_8c03df4c
	mov.l @(loc_8c03df88,PC),r4
	jsr @r12
	nop
	bra loc_8c03e132
	nop

loc_8c03df20:
	mov.l @(loc_8c03df8c,PC),r11
	mov.b @r11,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c03df30

;Jump for Pause input and flags
;	macjsr loc_8c036f90,r2
	mov.l @(loc_8c03df90,PC),r2;8c03df90,8c036f90
	jsr @r2
	nop


loc_8c03df30:
	mov.l @(loc_8c03df94,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c03dfa8
	mov.l @(loc_8c03df98,PC),r3 ;8c03df98 ;8c038dd4
	jsr @r3 			;jump to Pause Menu
	nop
	mov.l @(loc_8c03df9c,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c03df4c
	mov.l @(loc_8c03dfa0,PC),r4
	bra loc_8c03df4e
	nop

loc_8c03df4c:
	mov.l @(loc_8c03dfa4,PC),r4


loc_8c03df4e:
	jsr @r12
	nop
	bra loc_8c03e132
	nop

;##############################################
loc_8c03df56:
	#data 0x05a4
loc_8c03df58:
	#data 0x21d8
loc_8c03df5a:
	#data 0x0080
loc_8c03df5c:
	#data 0x008c
loc_8c03df5e:
	#data 0x008e
	#align4
loc_8c03df60:
	#data 0x8c26823c
loc_8c03df64:
	#data 0x8c268340
loc_8c03df68:
	#data bank04.loc_8c04ebb8
loc_8c03df6c:
	#data bank10.loc_8c106674
loc_8c03df70:
	#data bank04.loc_8c041a14
loc_8c03df74:
	#data bank04.loc_8c041e44
loc_8c03df78:
	#data bank04.loc_8c041aa6
loc_8c03df7c:
	#data loc_8c0370a4
loc_8c03df80:
	#data loc_8c0395ac
loc_8c03df84:
	#data bank04.loc_8c041588
loc_8c03df88:
	#data loc_8c03068c
loc_8c03df8c:
	#data 0x8c2895f0
loc_8c03df90:
	#data loc_8c036f90
loc_8c03df94:
	#data 0x8c212c9c
loc_8c03df98:
	#data loc_8c038dd4
loc_8c03df9c:
	#data 0x8c212cda
loc_8c03dfa0:
	#data loc_8c0307d2
loc_8c03dfa4:
	#data loc_8c030858

;----------------------------------------------
loc_8c03dfa8:
	mov.b @r11,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c03dfe2
	mov.l @(loc_8c03e0a4,PC),r3
	mov.w @(loc_8c03e094,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c03dfe2
	mov.w @(loc_8c03e096,PC),r1
	mov.l @r13,r0
	mov.l @(loc_8c03e0a8,PC),r4
	mov.b @(r0,r1),r0
	tst 0x01,r0
	bt loc_8c03dfd0
	mov.w @(loc_8c03e098,PC),r0
	mov.l @(r0,r4),r2
	add 0x01,r2
	mov.l r2,@(r0,r4)

loc_8c03dfd0:
	mov.w @(loc_8c03e096,PC),r1
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	tst 0x02,r0
	bt loc_8c03dfe2
	mov.w @(loc_8c03e09a,PC),r0
	mov.l @(r0,r4),r2
	add 0x01,r2
	mov.l r2,@(r0,r4)

loc_8c03dfe2:
	mov.l @(loc_8c03e0ac,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03e0b0,PC),r14
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
	mov.w @(loc_8c03e09c,PC),r0
	mov.l @r13,r4
	mov.l @(r0,r4),r0
	cmp/eq 0xFF,r0
	bt loc_8c03e018
	mov.w @(loc_8c03e09c,PC),r0
	mov.l @(r0,r4),r2
	add 0x01,r2
	mov.l r2,@(r0,r4)

loc_8c03e018:
	mov.l @r13,r4
	mov 0x4C,r0
	mov.b @(r0,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c03e038
	mov.w @(loc_8c03e09c,PC),r0
	mov.l @(loc_8c03e0b4,PC),r2
	mov.l @(r0,r4),r1
	mov.w @(loc_8c03e09e,PC),r0
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c03e038
	mov.l @(loc_8c03e0b8,PC),r2
	jsr @r2
	mov 0x0A,r4

loc_8c03e038:
	mov.l @(loc_8c03e0bc,PC),r3
	jsr @r3
	nop
	mov.l @r14,r2
	mov r2,r0
	nop
	mov 0x3B,r1
	mov r1,r3
	mov.b @(r0,r1),r0
	add r2,r3
	mov.l @(loc_8c03e0c0,PC),r2
	add 0x01,r0
	and 0x0F,r0
	jsr @r2
	mov.b r0,@r3
	mov.l @(loc_8c03e0c4,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c03e0c8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03e0cc,PC),r1
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
	mov.w @(loc_8c03e0a0,PC),r2
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	bra loc_8c03e006
	nop

;##############################################
loc_8c03e094:
	#data 0x008b
loc_8c03e096:
	#data 0x0084
loc_8c03e098:
	#data 0x0558
loc_8c03e09a:
	#data 0x0afc
loc_8c03e09c:
	#data 0x0090
loc_8c03e09e:
	#data 0x0e10
loc_8c03e0a0:
	#data 0x00ff
	#align4
loc_8c03e0a4:
	#data 0x8c26823c
loc_8c03e0a8:
	#data 0x8c268340
loc_8c03e0ac:
	#data bank04.loc_8c047338
loc_8c03e0b0:
	#data 0x8c2896b0
loc_8c03e0b4:
	#data bank12.loc_8c12939c
loc_8c03e0b8:
	#data bank01.loc_8c011780
loc_8c03e0bc:
	#data bank04.loc_8c046abc
loc_8c03e0c0:
	#data bank04.loc_8c045ce0
loc_8c03e0c4:
	#data bank04.loc_8c045234
loc_8c03e0c8:
	#data bank04.loc_8c045fd0
loc_8c03e0cc:
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
	mov.l @(loc_8c03e1dc,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03e1e0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03e1e4,PC),r14
	jsr @r14
	mov 0x03,r4
	jsr @r14
	mov 0x04,r4
	jsr @r14
	mov 0x01,r4
	jsr @r14
	mov 0x02,r4
	mov.l @(loc_8c03e1e8,PC),r3
	mov 0x01,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt loc_8c03e110
	mov.l @(loc_8c03e1f0,PC),r3
	mov.l @(loc_8c03e1ec,PC),r4
	jsr @r3
	nop

loc_8c03e110:
	mov.l @(loc_8c03e1f4,PC),r4
	jsr @r12
	nop
	mov.l @(loc_8c03e1e8,PC),r2
	mov 0x01,r5
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt loc_8c03e132
	lds.l @r15+,pr
	mov.l @(loc_8c03e1f0,PC),r2
	mov.l @(loc_8c03e1f8,PC),r4
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
	mov.l @(loc_8c03e200,PC),r14
	mov 0x00,r11
	mov.l @(loc_8c03e1fc,PC),r10
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
	mov.w @(loc_8c03e1d4,PC),r0
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
	mov.w @(loc_8c03e1d6,PC),r1
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c03e1bc

loc_8c03e1b4:
	mov.w @(loc_8c03e1d8,PC),r0
	mov.l @r14,r2
	bra loc_8c03e1c2
	mov.b r11,@(r0,r2)

loc_8c03e1bc:
	mov.w @(loc_8c03e1d8,PC),r0
	mov.l @r14,r2
	mov.b r12,@(r0,r2)

loc_8c03e1c2:
	mov 0x3E,r0
	mov.b @(r0,r10),r3
	cmp/pz r3
	bt loc_8c03e204
	mov.w @(loc_8c03e1da,PC),r0
	mov.l @r14,r2
	mov.b r11,@(r0,r2)
	bra loc_8c03e220
	mov 0x03,r4

;##############################################
loc_8c03e1d4:
	#data 0x008b
loc_8c03e1d6:
	#data 0x0099
loc_8c03e1d8:
	#data 0x009b
loc_8c03e1da:
	#data 0x0084
	#align4
loc_8c03e1dc:
	#data bank04.loc_8c045208
loc_8c03e1e0:
	#data bank04.loc_8c043f60
loc_8c03e1e4:
	#data bank04.loc_8c04508e
loc_8c03e1e8:
	#data loc_8c039240
loc_8c03e1ec:
	#data 0x007f7fff
loc_8c03e1f0:
	#data bank11.loc_8c11c720
loc_8c03e1f4:
	#data loc_8c030858
loc_8c03e1f8:
	#data 0x007fff7f
loc_8c03e1fc:
	#data 0x8c2895f0
loc_8c03e200:
	#data 0x8c26823c

;----------------------------------------------
loc_8c03e204:
	mov 0x3E,r2
	mov r12,r1
	add r10,r2
	mov.l @r14,r3
	mov.b @r2,r2
	mov.w @(loc_8c03e318,PC),r0
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
	mov.w @(loc_8c03e318,PC),r0
	mov.l @r14,r3
	mov.b r11,@(r0,r3)

loc_8c03e234:
	mov 0x3E,r0
	mov.w @(loc_8c03e31a,PC),r6
	mov.b @(r0,r10),r3
	mov.l @(loc_8c03e330,PC),r9
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
	mov.w @(loc_8c03e31c,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e26c
	mov.b r5,@(r0,r4)

loc_8c03e26c:
	mov.w @(loc_8c03e31e,PC),r0
	mov.b @(r0,r4),r3
	add 0x08,r0
	mov.b @(r0,r4),r2
	cmp/ge r2,r3
	bt loc_8c03e280
	mov.w @(loc_8c03e31c,PC),r0
	mov.b @(r0,r4),r2
	add 0xF8,r0
	mov.b r2,@(r0,r4)

loc_8c03e280:
	mov.w @(loc_8c03e320,PC),r0
	mov.l @r14,r3
	mov.b @(r0,r4),r2
	mov.w @(loc_8c03e322,PC),r0
	mov.b r2,@(r0,r3)
	bra loc_8c03e34c
	nop

loc_8c03e28e:
	mov.w @(loc_8c03e324,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c03e34c
	mov.w @(loc_8c03e322,PC),r0
	mov.l @r14,r3
	mul.l r6,r7
	mov.b @(r0,r3),r2
	mov 0x20,r7
	add 0x01,r2
	mov.b r2,@(r0,r3)
	mov.l @r14,r3
	sts macl,r1
	mov.b @(r0,r3),r2
	mov.w @(loc_8c03e320,PC),r0
	mov r1,r13
	add r9,r13
	mov.b r2,@(r0,r4)
	add 0xFE,r0
	mov.b @(r0,r13),r13
	cmp/ge r7,r13
	bt loc_8c03e2c8
	mov.w @(loc_8c03e326,PC),r0
	mov r12,r2
	shad r13,r2
	mov.l @(r0,r4),r3
	or r2,r3
	bra loc_8c03e2d6
	mov.l r3,@(r0,r4)

loc_8c03e2c8:
	mov.w @(loc_8c03e328,PC),r0
	add 0xE0,r13
	mov r12,r3
	shad r13,r3
	mov.l @(r0,r4),r2
	or r3,r2
	mov.l r2,@(r0,r4)

loc_8c03e2d6:
	mov.w @(loc_8c03e32a,PC),r0
	mov r1,r13
	add r9,r13
	mov.b @(r0,r13),r13
	cmp/ge r7,r13
	bt loc_8c03e2f0
	mov.w @(loc_8c03e326,PC),r0
	mov r12,r2
	shad r13,r2
	mov.l @(r0,r4),r3
	or r2,r3
	bra loc_8c03e2fe
	mov.l r3,@(r0,r4)

loc_8c03e2f0:
	mov.w @(loc_8c03e328,PC),r0
	add 0xE0,r13
	mov r12,r3
	shad r13,r3
	mov.l @(r0,r4),r2
	or r3,r2
	mov.l r2,@(r0,r4)

loc_8c03e2fe:
	mov.w @(loc_8c03e32c,PC),r0
	mov r1,r13
	add r9,r13
	mov.b @(r0,r13),r13
	cmp/ge r7,r13
	bt loc_8c03e334
	mov.w @(loc_8c03e326,PC),r0
	mov r12,r2
	shad r13,r2
	mov.l @(r0,r4),r3
	or r2,r3
	bra loc_8c03e34c
	mov.l r3,@(r0,r4)

;##############################################
loc_8c03e318:
	#data 0x0084
loc_8c03e31a:
	#data 0x05a4
loc_8c03e31c:
	#data 0x052f
loc_8c03e31e:
	#data 0x0527
loc_8c03e320:
	#data 0x052e
loc_8c03e322:
	#data 0x0081
loc_8c03e324:
	#data 0x0525
loc_8c03e326:
	#data 0x0504
loc_8c03e328:
	#data 0x0508
loc_8c03e32a:
	#data 0x1074
loc_8c03e32c:
	#data 0x1bbc
	#align4
loc_8c03e330:
	#data 0x8c268340

;----------------------------------------------
loc_8c03e334:
	mov.w @(loc_8c03e40c,PC),r0
	add 0xE0,r13
	mov r12,r3
	shad r13,r3
	mov.l @(r0,r4),r2
	or r3,r2
	bra loc_8c03e34c
	mov.l r2,@(r0,r4)

loc_8c03e344:
	mov.w @(loc_8c03e40e,PC),r0
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
	mov.w @(loc_8c03e410,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e38e
	mov.b r5,@(r0,r4)

loc_8c03e38e:
	mov.w @(loc_8c03e412,PC),r0
	mov.b @(r0,r13),r3
	add 0x01,r3
	mov.b r3,@(r0,r13)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e39e
	mov.b r5,@(r0,r13)

loc_8c03e39e:
	mov.w @(loc_8c03e410,PC),r0
	mov.b @(r0,r4),r3
	add 0xEF,r0
	bra loc_8c03e456
	mov.b r3,@(r0,r4)

loc_8c03e3a8:
	mov.w @(loc_8c03e410,PC),r0
	mov.b @(r0,r13),r3
	add 0x01,r3
	mov.b r3,@(r0,r13)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e3b8
	mov.b r5,@(r0,r13)

loc_8c03e3b8:
	mov.w @(loc_8c03e412,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	extu.b r3,r3
	cmp/gt r5,r3
	bf loc_8c03e3c8
	mov.b r5,@(r0,r4)

loc_8c03e3c8:
	mov.w @(loc_8c03e410,PC),r0
	mov.b @(r0,r13),r3
	add 0xEF,r0
	bra loc_8c03e456
	mov.b r3,@(r0,r13)

loc_8c03e3d2:
	mov.w @(loc_8c03e414,PC),r0
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
	mov.w @(loc_8c03e40e,PC),r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03e41c
	mov.l @(loc_8c03e418,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03e418,PC),r2
	jsr @r2
	mov r13,r4
	bra loc_8c03e456
	nop

;##############################################
loc_8c03e40c:
	#data 0x0508
loc_8c03e40e:
	#data 0x008b
loc_8c03e410:
	#data 0x0540
loc_8c03e412:
	#data 0x0541
loc_8c03e414:
	#data 0x0542
	#align4
loc_8c03e418:
	#data bank04.loc_8c0413cc

;----------------------------------------------
loc_8c03e41c:
	mov.w @(loc_8c03e4b2,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c03e438
	mov.w @(loc_8c03e4b4,PC),r0
	mov.l @(r0,r4),r3
	add 0x5C,r0
	mov.l r3,@(r0,r4)
	add 0xA0,r0
	mov.l @(loc_8c03e4bc,PC),r3
	mov.l @(r0,r4),r2
	add 0x64,r0
	jsr @r3
	mov.l r2,@(r0,r4)

loc_8c03e438:
	mov.w @(loc_8c03e4b2,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c03e456
	mov.w @(loc_8c03e4b4,PC),r0
	mov.l @(r0,r13),r3
	add 0x5C,r0
	mov.l r3,@(r0,r13)
	add 0xA0,r0
	mov.l @(r0,r13),r2
	add 0x64,r0
	mov.l @(loc_8c03e4bc,PC),r3
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
	mov.w @(loc_8c03e4b6,PC),r0
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
	mov.w @(loc_8c03e4b8,PC),r0
	mov.l r3,@r15
	mov.l @r14,r4
	mov.b @(r0,r4),r4
	add 0x01,r4
	mul.l r4,r3
	mov.l @(loc_8c03e4c0,PC),r3
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
loc_8c03e4b2:
	#data 0x0525
loc_8c03e4b4:
	#data 0x04d8
loc_8c03e4b6:
	#data 0x0088
loc_8c03e4b8:
	#data 0x0083
	#align4
loc_8c03e4bc:
	#data bank04.loc_8c0411e2
loc_8c03e4c0:
	#data bank01.loc_8c011780

;----------------------------------------------
loc_8c03e4c4:
	mov 0x3E,r0
	mov.w @(loc_8c03e5e6,PC),r2
	mov.b @(r0,r10),r3
	mov.w @(loc_8c03e5e8,PC),r0
	muls.w r2,r3
	sts macl,r3
	add r3,r9
	mov.b @(r0,r9),r3
	tst r3,r3
	bf loc_8c03e4ec
	mov.l @(loc_8c03e5f4,PC),r1
	mov.w @(loc_8c03e5ea,PC),r0
	mov.l @r1,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c03e4ec
	mov.l @(loc_8c03e5f8,PC),r3
	mov.w @(loc_8c03e5ec,PC),r4
	jsr @r3
	nop

loc_8c03e4ec:
	mov.l @(loc_8c03e5fc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03e600,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03e604,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03e608,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03e60c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03e610,PC),r13
	jsr @r13
	mov 0x03,r4
	jsr @r13
	mov 0x04,r4
	jsr @r13
	mov 0x01,r4
	jsr @r13
	mov 0x02,r4
	mov.l @(loc_8c03e614,PC),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c03e618,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03e532:
	mov.l @(loc_8c03e5f4,PC),r3
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c03e544
	mov.l @(loc_8c03e61c,PC),r2
	jmp @r2
	nop

loc_8c03e544:
	rts
	nop

;==============================================
loc_8c03e548:
	mov.w @(loc_8c03e5e6,PC),r6
	mov 0x00,r5
	mov.l @(loc_8c03e620,PC),r1
	mov 0x03,r7

loc_8c03e550:
	mov r5,r3
	shll r3
	add r4,r3
	mov.w @(loc_8c03e5ee,PC),r0
	mul.l r6,r3
	sts macl,r3
	add r1,r3
	mov.b r5,@(r0,r3)
	add 0x01,r5
	cmp/ge r7,r5
	bf loc_8c03e550
	mov.l @(loc_8c03e624,PC),r2
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
	mov.l @(loc_8c03e5f4,PC),r4
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
	mov.w @(loc_8c03e5f0,PC),r0
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
	mov.l @(loc_8c03e628,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03e62c,PC),r3
	mov 0x0C,r4
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03e5e6:
	#data 0x05a4
loc_8c03e5e8:
	#data 0x053d
loc_8c03e5ea:
	#data 0x0088
loc_8c03e5ec:
	#data 0x03e8
loc_8c03e5ee:
	#data 0x053f
loc_8c03e5f0:
	#data 0x0084
	#align4
loc_8c03e5f4:
	#data 0x8c26823c
loc_8c03e5f8:
	#data bank01.loc_8c011780
loc_8c03e5fc:
	#data bank04.loc_8c04182e
loc_8c03e600:
	#data bank04.loc_8c04185e
loc_8c03e604:
	#data loc_8c031bba
loc_8c03e608:
	#data bank04.loc_8c045208
loc_8c03e60c:
	#data bank04.loc_8c043f60
loc_8c03e610:
	#data bank04.loc_8c04508e
loc_8c03e614:
	#data loc_8c030858
loc_8c03e618:
	#data loc_8c0395ac
loc_8c03e61c:
	#data bank04.loc_8c0409e0
loc_8c03e620:
	#data 0x8c268340
loc_8c03e624:
	#data bank02.loc_8c028246
loc_8c03e628:
	#data bank02.loc_8c027ada
loc_8c03e62c:
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
	mov.l @(loc_8c03e718,PC),r0
	shll2 r14
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c03e66a
	mov.l @(loc_8c03e71c,PC),r13

loc_8c03e64e:
	mov.w @(loc_8c03e70a,PC),r0
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
	mov.w @(loc_8c03e70a,PC),r0
	mov 0x03,r6
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r5
	mov.b @(0x1,r14),r0
	bsr loc_8c03e630
	mov r0,r4
	mov.w @(loc_8c03e70a,PC),r0
	mov 0x04,r6
	mov.b @(r0,r14),r5
	mov.b @(0x1,r14),r0
	bsr loc_8c03e630
	mov r0,r4
	mov.w @(loc_8c03e70a,PC),r0
	mov 0x02,r6
	mov.b @(r0,r14),r5
	mov.b @(0x1,r14),r0
	bsr loc_8c03e630
	mov r0,r4
	mov.w @(loc_8c03e70a,PC),r0
	mov 0x02,r6
	mov.b @(r0,r14),r5
	mov.b @(0x1,r14),r0
	bsr loc_8c03e630
	mov r0,r4
	mov.w @(loc_8c03e70c,PC),r0
	mov.l @(loc_8c03e720,PC),r3
	mov.b @(r0,r14),r0
	mov.b r0,@(0x1,r14)
	mov.w @(loc_8c03e70a,PC),r0
	mov.b @(r0,r14),r5
	extu.b r5,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c03e70e,PC),r0
	mov.l @(loc_8c03e724,PC),r3
	mov.b @(r0,r14),r5
	extu.b r5,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c03e70a,PC),r0
	mov.l @(loc_8c03e728,PC),r3
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
	mov.w @(loc_8c03e710,PC),r0
	mov.w @(loc_8c03e712,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bf.s loc_8c03e6f4
	mov r14,r4
	mov 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c03e6f4:
	mov.l @(loc_8c03e72c,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c03e714,PC),r0
	mov 0x20,r2
	mov.b r2,@(r0,r14)
	add 0xFE,r0
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03e70a:
	#data 0x01a4
loc_8c03e70c:
	#data 0x052c
loc_8c03e70e:
	#data 0x055c
loc_8c03e710:
	#data 0x04f0
loc_8c03e712:
	#data 0x0c00
loc_8c03e714:
	#data 0x01f3
	#align4
loc_8c03e718:
	#data 0x8c287a5c
loc_8c03e71c:
	#data bank04.loc_8c0450c0
loc_8c03e720:
	#data loc_8c033f90
loc_8c03e724:
	#data loc_8c0320c6
loc_8c03e728:
	#data loc_8c033d78
loc_8c03e72c:
	#data bank04.loc_8c04f048

;==============================================
loc_8c03e730:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c03e860,PC),r3
	mov.l @(loc_8c03e85c,PC),r4
	mov.w @(loc_8c03e84e,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(loc_8c03e864,PC),r14
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
	mov.l @(loc_8c03e868,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03e86c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03e870,PC),r3
	jsr @r3
	nop
	bsr loc_8c03d9a0
	nop
	bsr loc_8c03e7ba
	nop
	mov.w @(loc_8c03e850,PC),r0
	mov 0x03,r3
	mov.l @r14,r2
	mov.b r3,@(r0,r2)
	bsr loc_8c03dcba
	nop
	mov.l @(loc_8c03e874,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c03e878,PC),r4
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
	mov.w @(loc_8c03e852,PC),r12
	mov.l @(loc_8c03e864,PC),r7
	mov.l @(loc_8c03e880,PC),r10
	mov.l @(loc_8c03e87c,PC),r9

loc_8c03e7d8:
	mul.l r12,r5
	mov.w @(loc_8c03e854,PC),r0
	mov 0x2C,r1
	sts macl,r4
	add r10,r4
	mov.b r14,@r4
	mov.b r6,@(r0,r4)
	mov.w @(loc_8c03e856,PC),r0
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
	mov.w @(loc_8c03e858,PC),r0
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
	mov.l @(loc_8c03e884,PC),r3 ;Stage 
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
loc_8c03e84e:
	#data 0x0080
loc_8c03e850:
	#data 0x0084
loc_8c03e852:
	#data 0x05a4
loc_8c03e854:
	#data 0x012c
loc_8c03e856:
	#data 0x0524
loc_8c03e858:
	#data 0x052c
	#align4
loc_8c03e85c:
	#data 0x8c2682c0
loc_8c03e860:
	#data bank12.loc_8c129728
loc_8c03e864:
	#data 0x8c26823c
loc_8c03e868:
	#data bank04.loc_8c045e74
loc_8c03e86c:
	#data bank04.loc_8c0472fc
loc_8c03e870:
	#data bank04.loc_8c04ebb8
loc_8c03e874:
	#data bank04.loc_8c041c08
loc_8c03e878:
	#data 0x8c2895f0
loc_8c03e87c:
	#data bank13.loc_8c138280
loc_8c03e880:
	#data 0x8c268340
loc_8c03e884:
	#data 0x8c26a95c

;==============================================
loc_8c03e888:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c03e948,PC),r14
	mov 0x2E,r0
	mov 0x01,r2
	mov.l @(loc_8c03e94c,PC),r1
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
	mov.l @(loc_8c03e950,PC),r4
	mov.w @(loc_8c03e944,PC),r3
	mov r4,r7
	mov.w @(loc_8c03e942,PC),r5
	mov.w @(loc_8c03e940,PC),r6
	add r3,r7
	mov.l r4,@r15

loc_8c03e8be:
	mov.w @(loc_8c03e946,PC),r0
	mov.w r5,@(r0,r4)
	add 0x04,r0
	mov.w r5,@(r0,r4)
	add r6,r4
	cmp/hs r7,r4
	bf loc_8c03e8be
	mov.w @(loc_8c03e942,PC),r0
	mov.l @r14,r4
	mov.l @(r0,r4),r0
	cmp/eq 0xFF,r0
	bt loc_8c03e8de
	mov.w @(loc_8c03e942,PC),r0
	mov.l @(r0,r4),r2
	add 0x01,r2
	mov.l r2,@(r0,r4)

loc_8c03e8de:
	mov.l @(loc_8c03e954,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03e958,PC),r4
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
	mov.l @(loc_8c03e95c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03e960,PC),r1
	jsr @r1
	nop

loc_8c03e908:
	mov.l @(loc_8c03e964,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03e968,PC),r1
	jsr @r1
	nop
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	tst r0,r0
	bt loc_8c03e934
	mov.l @(loc_8c03e96c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03e970,PC),r14
	jsr @r14
	mov 0x03,r4
	jsr @r14
	mov 0x04,r4
	jsr @r14
	mov 0x01,r4
	jsr @r14
	mov 0x02,r4

loc_8c03e934:
	mov.l @(loc_8c03e974,PC),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c03e978,PC),r2
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03e940:
	#data 0x05a4
loc_8c03e942:
	#data 0x0090
loc_8c03e944:
	#data 0x21d8
loc_8c03e946:
	#data 0x0420
	#align4
loc_8c03e948:
	#data 0x8c26823c
loc_8c03e94c:
	#data bank14.loc_8c14daf0
loc_8c03e950:
	#data 0x8c268340
loc_8c03e954:
	#data bank04.loc_8c046abc
loc_8c03e958:
	#data 0x8c2895f0
loc_8c03e95c:
	#data bank04.loc_8c045ce0
loc_8c03e960:
	#data bank04.loc_8c045234
loc_8c03e964:
	#data loc_8c031094
loc_8c03e968:
	#data bank04.loc_8c045208
loc_8c03e96c:
	#data bank04.loc_8c043f60
loc_8c03e970:
	#data bank04.loc_8c04508e
loc_8c03e974:
	#data loc_8c030858
loc_8c03e978:
	#data loc_8c0395ac

;==============================================
loc_8c03e97c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c03ea8c,PC),r3
	mov.l @(loc_8c03ea88,PC),r4
	jsr @r3
	mov 0x40,r5
	mov.l @(loc_8c03ea90,PC),r2
	jsr @r2
	mov 0x03,r4
	mov.l @(loc_8c03ea94,PC),r3
	jsr @r3
	nop
	mova @(0x100,PC),r0
	mov.w @(loc_8c03ea80,PC),r4
	fmov @r0,fr6
	mova @(loc_8c03ea9c,PC),r0
	mov.l @(loc_8c03eaa4,PC),r3
	fmov @r0,fr5
	mova @(0xFC,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(loc_8c03ea90,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c03eab0,PC),r3
	mov.l @(loc_8c03eaac,PC),r4
	mov.l @(loc_8c03eaa8,PC),r5
	jsr @r3
	nop
	mov.l @(loc_8c03eab4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03eab8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03eabc,PC),r2
	jsr @r2
	nop
	bsr loc_8c03de54
	nop
	mov.l @(loc_8c03eac0,PC),r4
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
	mov.w @(loc_8c03ea82,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.w @(loc_8c03ea84,PC),r0
	mov.l @r4,r3
	mov.l @(loc_8c03eac4,PC),r4
	mov.b r14,@(r0,r3)
	mov.l @(loc_8c03eac8,PC),r3
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
	mov.l @(loc_8c03eacc,PC),r4
	mov.w r0,@(0x12,r3)
	mov.b r0,@(0x2,r4)
	mov.b r0,@(0x1,r4)
	mov.l @(loc_8c03ead0,PC),r4
	mov.b r0,@(0x4,r4)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r4)
	mov r14,r0
	nop
	mov.l @(loc_8c03ead4,PC),r3
	mov.b r0,@(0x6,r4)
	jsr @r3
	mov.b r0,@(0x7,r4)
	mov.l @(loc_8c03ead8,PC),r4
	mov r14,r0
	nop
	mov.b r0,@(0x4,r4)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r4)
	mov r14,r0
	nop
	mov.l @(loc_8c03ead4,PC),r3
	mov.b r0,@(0x6,r4)
	jsr @r3
	mov.b r0,@(0x7,r4)
	lds.l @r15+,pr
	mov.l @(loc_8c03eae0,PC),r2
	mov r14,r6
	mov.l @(loc_8c03eadc,PC),r4
	mov 0x3C,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03ea80:
	#data 0x1d28
loc_8c03ea82:
	#data 0x0438
loc_8c03ea84:
	#data 0x0098
	#align4
loc_8c03ea88:
	#data 0x8c2152dc
loc_8c03ea8c:
	#data bank11.loc_8c11fcd0
loc_8c03ea90:
	#data bank12.loc_8c1204f0
loc_8c03ea94:
	#data bank12.loc_8c121100
	#data 0x463b8000
loc_8c03ea9c:
	#data 0x3e99999a
	#data 0x3faaaaab
loc_8c03eaa4:
	#data bank12.loc_8c121730
loc_8c03eaa8:
	#data 0x8c311de0
loc_8c03eaac:
	#data 0x8c2df160
loc_8c03eab0:
	#data bank11.loc_8c11b570
loc_8c03eab4:
	#data bank12.loc_8c1234f0
loc_8c03eab8:
	#data bank11.loc_8c11f340
loc_8c03eabc:
	#data bank10.loc_8c1083d8
loc_8c03eac0:
	#data 0x8c26823c
loc_8c03eac4:
	#data 0x8c2896b0
loc_8c03eac8:
	#data 0x8c2895f0
loc_8c03eacc:
	#data 0x8c26a518
loc_8c03ead0:
	#data 0x8c268340
loc_8c03ead4:
	#data bank04.loc_8c04f048
loc_8c03ead8:
	#data pl_mem.player_start_charB
loc_8c03eadc:
	#data 0xff000000
loc_8c03eae0:
	#data loc_8c0355b2

;==============================================
loc_8c03eae4:
	mov.l r14,@-r15
	mov.l @(loc_8c03eb78,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x3C,r0
	bf loc_8c03eb0a
	mov.l @(loc_8c03eb80,PC),r2
	mov 0x01,r6
	mov.l @(loc_8c03eb7c,PC),r4
	jsr @r2
	mov 0x3C,r5
	mov.l @(loc_8c03eb84,PC),r3
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
	mov.l @(loc_8c03eb88,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03eb90,PC),r2
	mov.l @(loc_8c03eb8c,PC),r4
	mov.w @(loc_8c03eb72,PC),r6
	jsr @r2
	mov 0x00,r5
	mov.l @(loc_8c03eb90,PC),r3
	mov.l @(loc_8c03eb94,PC),r4
	mov.w @(loc_8c03eb74,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(loc_8c03eb98,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03eb9c,PC),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c03eba0,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c03eb6c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03eb72:
	#data 0x0080
loc_8c03eb74:
	#data 0x00c0
	#align4
loc_8c03eb78:
	#data 0x8c26823c
loc_8c03eb7c:
	#data 0xff000000
loc_8c03eb80:
	#data loc_8c0355b2
loc_8c03eb84:
	#data bank04.loc_8c041a90
loc_8c03eb88:
	#data bank04.loc_8c044d8c
loc_8c03eb8c:
	#data 0x8c2682c0
loc_8c03eb90:
	#data bank12.loc_8c129728
loc_8c03eb94:
	#data 0x8c2895f0
loc_8c03eb98:
	#data bank04.loc_8c04182e
loc_8c03eb9c:
	#data bank04.loc_8c04185e
loc_8c03eba0:
	#data bank04.loc_8c041ecc

;==============================================
loc_8c03eba4:
	mov.l @(loc_8c03ecd8,PC),r2
	mov.l @(loc_8c03ecdc,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x3,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ece0,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(loc_8c03ece0,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(loc_8c03ecd8,PC),r2
	mov.l @r2,r3
	mov.b @(0x7,r3),r0
	tst r0,r0
	bf loc_8c03ebd4
	mov.l @(loc_8c03ece8,PC),r3
	mov.l @(loc_8c03ece4,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c03ebd4:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c03ebda:
	sts.l pr,@-r15
	mov.l @(loc_8c03ecec,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ecf0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03ecf4,PC),r3
	jsr @r3
	mov 0x0F,r4
	mov.l @(loc_8c03ecfc,PC),r2
	mov.l @(loc_8c03ecf8,PC),r5
	jsr @r2
	mov r5,r4
	mov.l @(loc_8c03ecd8,PC),r5
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
	mov.l @(loc_8c03ed00,PC),r3
	jsr @r3
	mov r2,r4
	mov.l @(loc_8c03ed00,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	mov.l @(loc_8c03ed04,PC),r3
	jsr @r3
	mov 0x17,r4
	mov.l @(loc_8c03ed08,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c03ed0c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ed10,PC),r2
	jsr @r2
	mov 0x3C,r4
	mov.l @(loc_8c03ed14,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ed18,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03ed1c,PC),r3
	jsr @r3
	mov 0xFF,r4
	mov.l @(loc_8c03ed20,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03ed24,PC),r3
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
	mov.l @(loc_8c03ed28,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ecd8,PC),r14
	mov.w @(loc_8c03ecd0,PC),r0
	mov.l @r14,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c03ecb0
	mov 0x03,r0
	mov.b r0,@(0x3,r4)
	mov 0x14,r5
	mov.w @(loc_8c03ecd2,PC),r0
	mov.l @r14,r3
	mov.w r0,@(0xA,r3)
	mov.l @(loc_8c03ed2c,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c03ed10,PC),r2
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
	mov.w @(loc_8c03ecd4,PC),r0
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
loc_8c03ecd0:
	#data 0x0085
loc_8c03ecd2:
	#data 0x00b4
loc_8c03ecd4:
	#data 0x008a
	#align4
loc_8c03ecd8:
	#data 0x8c26823c
loc_8c03ecdc:
	#data bank14.loc_8c14daf8
loc_8c03ece0:
	#data bank04.loc_8c044ef0
loc_8c03ece4:
	#data loc_8c030760
loc_8c03ece8:
	#data loc_8c0395ac
loc_8c03ecec:
	#data loc_8c031ef8
loc_8c03ecf0:
	#data loc_8c030f24
loc_8c03ecf4:
	#data loc_8c032be0
loc_8c03ecf8:
	#data 0xff000000
loc_8c03ecfc:
	#data bank02.loc_8c02dc32
loc_8c03ed00:
	#data bank04.loc_8c041a14
loc_8c03ed04:
	#data bank04.loc_8c041dde
loc_8c03ed08:
	#data bank04.loc_8c041aa6
loc_8c03ed0c:
	#data bank04.loc_8c041e44
loc_8c03ed10:
	#data bank04.loc_8c04257c
loc_8c03ed14:
	#data bank0f.loc_8c0fc8aa
loc_8c03ed18:
	#data bank0f.loc_8c0fcca2
loc_8c03ed1c:
	#data bank02.loc_8c02dc1c
loc_8c03ed20:
	#data bank02.loc_8c027ada
loc_8c03ed24:
	#data bank02.loc_8c027b64
loc_8c03ed28:
	#data loc_8c031f30
loc_8c03ed2c:
	#data bank04.loc_8c0418be

;----------------------------------------------
loc_8c03ed30:
	mov.b @(r0,r4),r0
	mov.l @(loc_8c03ee48,PC),r6
	cmp/eq 0x03,r0
	bf loc_8c03ed4c
	mov.w @(loc_8c03ee3e,PC),r0
	mov.w @(r0,r6),r2
	mov.w @(loc_8c03ee40,PC),r0
	mov.w @(r0,r6),r3
	cmp/gt r3,r2
	bf loc_8c03ed48
	bra loc_8c03ed52
	mov r7,r5

loc_8c03ed48:
	bra loc_8c03ed52
	mov 0x01,r5

loc_8c03ed4c:
	mov.w @(loc_8c03ee42,PC),r0
	mov.b @(r0,r4),r5
	add 0xFF,r5

loc_8c03ed52:
	mov.w @(loc_8c03ee44,PC),r0
	mov.w @(loc_8c03ee3e,PC),r2
	mul.l r0,r5
	mov.w @(loc_8c03ee46,PC),r1
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
	mov.l @(loc_8c03ee4c,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c03eda0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c03eda8:
	mov.l @(loc_8c03ee50,PC),r4
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
	mov.l @(loc_8c03ee54,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ee58,PC),r1
	jmp @r1
	lds.l @r15+,pr

;==============================================
loc_8c03edcc:
	mov.l @(loc_8c03ee50,PC),r4
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
	mov.l @(loc_8c03ee5c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ee64,PC),r2
	mov.l @(loc_8c03ee60,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c03ee54,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ee58,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03ee68,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c03ee38:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03ee3e:
	#data 0x04c0
loc_8c03ee40:
	#data 0x0a64
loc_8c03ee42:
	#data 0x008a
loc_8c03ee44:
	#data 0x05a4
loc_8c03ee46:
	#data 0x04c2
	#align4
loc_8c03ee48:
	#data 0x8c268340
loc_8c03ee4c:
	#data bank04.loc_8c04257c
loc_8c03ee50:
	#data 0x8c26823c
loc_8c03ee54:
	#data bank04.loc_8c04182e
loc_8c03ee58:
	#data bank04.loc_8c04185e
loc_8c03ee5c:
	#data bank04.loc_8c044d8c
loc_8c03ee60:
	#data 0xff000000
loc_8c03ee64:
	#data bank02.loc_8c02dc1c
loc_8c03ee68:
	#data bank04.loc_8c041ecc

;==============================================
loc_8c03ee6c:
	mov.l @(loc_8c03ef64,PC),r2
	mov.l @(loc_8c03ef68,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x3,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ef6c,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(loc_8c03ef6c,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(loc_8c03ef74,PC),r3
	mov.l @(loc_8c03ef70,PC),r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c03ee92:
	mov.l @(loc_8c03ef64,PC),r4
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
	mov.w @(loc_8c03ef5e,PC),r0
	mov.b r13,@(r0,r3)
	mov.w @(loc_8c03ef60,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0x3C,r0
	mov.l @r4,r3
	mov.w r0,@(0xE,r3)
	mov.l @(loc_8c03ef78,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ef7c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03ef80,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r13,r4
	mov.l @(loc_8c03ef80,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	mov.l @(loc_8c03ef84,PC),r3
	jsr @r3
	mov 0x19,r4
	mov.l @(loc_8c03ef88,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c03ef8c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ef90,PC),r2
	jsr @r2
	mov 0x3D,r4
	mov.l @(loc_8c03ef94,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03ef98,PC),r14
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
	mov.l @(loc_8c03ef9c,PC),r2
	jsr @r2
	nop
	mova @(loc_8c03efa4,PC),r0
	mov.l @(loc_8c03efa0,PC),r4
	mov 0x01,r3
	mov 0x2A,r2
	mov.b r3,@r4
	mov.l r2,@(0x4,r4)
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov r13,r0
	nop
	mov.l @(loc_8c03efa8,PC),r3
	mov.b r0,@(0x9,r4)
	mov.b r0,@(0xA,r4)
	mov.b r0,@(0xB,r4)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03ef5e:
	#data 0x00a4
loc_8c03ef60:
	#data 0x014a
	#align4
loc_8c03ef64:
	#data 0x8c26823c
loc_8c03ef68:
	#data bank14.loc_8c14db08
loc_8c03ef6c:
	#data bank04.loc_8c044ef0
loc_8c03ef70:
	#data loc_8c030760
loc_8c03ef74:
	#data loc_8c0395ac
loc_8c03ef78:
	#data loc_8c031ef8
loc_8c03ef7c:
	#data loc_8c030f24
loc_8c03ef80:
	#data bank04.loc_8c041a14
loc_8c03ef84:
	#data bank04.loc_8c041dde
loc_8c03ef88:
	#data bank04.loc_8c041aa6
loc_8c03ef8c:
	#data bank04.loc_8c041e44
loc_8c03ef90:
	#data bank04.loc_8c04257c
loc_8c03ef94:
	#data bank0f.loc_8c0fc3fa
loc_8c03ef98:
	#data bank0f.loc_8c0fc634
loc_8c03ef9c:
	#data loc_8c030e30
loc_8c03efa0:
	#data 0x8c26a688
loc_8c03efa4:
	#data 0x460ca000
loc_8c03efa8:
	#data loc_8c030e3a

;==============================================
loc_8c03efac:
	mov.l r14,@-r15
	mov.l @(loc_8c03f0a4,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r4
	mov.w @(0xE,r4),r0
	tst r0,r0
	bt loc_8c03f02e
	mov.w @(0xE,r4),r0
	mov.l @(loc_8c03f0ac,PC),r3
	add 0xFF,r0
	mov.w r0,@(0xE,r4)
	mov.l @r14,r1
	mov.l @(loc_8c03f0a8,PC),r4
	mov.w @(0xE,r1),r0
	mov r0,r1
	shll2 r1
	shll2 r1
	shll r1
	jsr @r3
	mov 0x3C,r0
	add 0x0A,r0
	mov.l r0,@(0x4,r4)
	mova @(loc_8c03f0b0,PC),r0
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
	mov.l @(loc_8c03f0b8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03f0bc,PC),r2
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
	mov.l @(loc_8c03f0c4,PC),r5
	mov.l @(loc_8c03f0c0,PC),r6
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
	mov.l @(loc_8c03f0a4,PC),r4
	mov 0x06,r0
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.b r0,@(0x2,r3)
	mov 0x00,r0
	mov.l @r4,r3
	mov.b r0,@(0x3,r3)
	mov.l @(loc_8c03f0c8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03f0cc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f0d0,PC),r3
	jmp @r3
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
loc_8c03f0a4:
	#data 0x8c26823c
loc_8c03f0a8:
	#data 0x8c26a688
loc_8c03f0ac:
	#data bank12.loc_8c129128
loc_8c03f0b0:
	#data 0x40c00000
	#data 0x460c8800
loc_8c03f0b8:
	#data loc_8c031f30
loc_8c03f0bc:
	#data loc_8c030e3a
loc_8c03f0c0:
	#data 0x00008000
loc_8c03f0c4:
	#data 0x8c2681dc
loc_8c03f0c8:
	#data bank04.loc_8c04182e
loc_8c03f0cc:
	#data bank04.loc_8c04185e
loc_8c03f0d0:
	#data bank04.loc_8c041ecc

;==============================================
loc_8c03f0d4:
	mov.l @(loc_8c03f1fc,PC),r2
	mov.l @(loc_8c03f200,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c03f204,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c03f204,PC),r2
	jsr @r2
	mov 0x06,r4
	mov.l @(loc_8c03f20c,PC),r3
	mov.l @(loc_8c03f208,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c03f0fa:
	mov.l @(loc_8c03f1fc,PC),r4
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
	mov.w @(loc_8c03f1f4,PC),r0
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
	mov.l @(loc_8c03f214,PC),r2
	mov.w r0,@(0xE,r3)
	mov.l @(loc_8c03f210,PC),r3
	mov.l @(loc_8c03f21c,PC),r0
	mov.l @(loc_8c03f218,PC),r1
	mov.l r3,@r2
	mov.l @(loc_8c03f224,PC),r2
	mov.l @(loc_8c03f220,PC),r3
	mov.l r1,@r0
	mov.l @(loc_8c03f228,PC),r1
	mov.b r5,@r3
	mov.b r14,@r2
	mov.l @(loc_8c03f22c,PC),r3
	mov.l @(loc_8c03f230,PC),r2
	mov.b r14,@r1
	jsr @r2
	mov.b r14,@r3
	mov.l @(loc_8c03f234,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c03f238,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f240,PC),r3
	mov.l @(loc_8c03f23c,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c03f244,PC),r2
	jsr @r2
	fldi1 fr4
	mov.l @(loc_8c03f248,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03f24c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f250,PC),r3
	jsr @r3
	mov 0x09,r4
	mov.l @(loc_8c03f254,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f25c,PC),r3
	mov.l @(loc_8c03f258,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c03f260,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f264,PC),r3
	mov 0x3C,r5
	mov 0x00,r6
	jsr @r3
	mov 0xFF,r4
	mov.l @(loc_8c03f268,PC),r2
	jsr @r2
	nop
	mova @(loc_8c03f270,PC),r0
	mov.w @(loc_8c03f1f6,PC),r3
	mov.l @(loc_8c03f26c,PC),r4
	mov.b r14,@r4
	mov.l r3,@(0x4,r4)
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov r14,r0
	nop
	mov.b r0,@(0x9,r4)
	mov.w @(loc_8c03f1f8,PC),r0
	mov.l @(loc_8c03f274,PC),r3
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
	mov.l @(loc_8c03f278,PC),r3
	jsr @r3
	mov 0x14,r4
	mov.l @(loc_8c03f27c,PC),r2
	jsr @r2
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(loc_8c03f280,PC),r3
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03f1f4:
	#data 0x1770
loc_8c03f1f6:
	#data 0x0080
loc_8c03f1f8:
	#data 0x00b0
	#align4
loc_8c03f1fc:
	#data 0x8c26823c
loc_8c03f200:
	#data bank14.loc_8c14db50
loc_8c03f204:
	#data bank04.loc_8c044ef0
loc_8c03f208:
	#data loc_8c03069e
loc_8c03f20c:
	#data loc_8c0395ac
loc_8c03f210:
	#data bank13.loc_8c138298
loc_8c03f214:
	#data 0x8c28c49c
loc_8c03f218:
	#data bank14.loc_8c14db14
loc_8c03f21c:
	#data 0x8c28c4a0
loc_8c03f220:
	#data 0x8c28c4a4
loc_8c03f224:
	#data 0x8c28c4a7
loc_8c03f228:
	#data 0x8c28c4a6
loc_8c03f22c:
	#data 0x8c28c4a5
loc_8c03f230:
	#data bank04.loc_8c041daa
loc_8c03f234:
	#data bank04.loc_8c044d8c
loc_8c03f238:
	#data loc_8c031ef8
loc_8c03f23c:
	#data bank14.loc_8c14db5c
loc_8c03f240:
	#data loc_8c031f10
loc_8c03f244:
	#data loc_8c031f24
loc_8c03f248:
	#data loc_8c0357d8
loc_8c03f24c:
	#data loc_8c03580c
loc_8c03f250:
	#data loc_8c032be0
loc_8c03f254:
	#data bank02.loc_8c02e014
loc_8c03f258:
	#data 0xff000000
loc_8c03f25c:
	#data bank02.loc_8c02dc1c
loc_8c03f260:
	#data loc_8c030f24
loc_8c03f264:
	#data loc_8c0355b2
loc_8c03f268:
	#data loc_8c030e30
loc_8c03f26c:
	#data 0x8c26a688
loc_8c03f270:
	#data 0x460ca000
loc_8c03f274:
	#data loc_8c030e3a
loc_8c03f278:
	#data bank04.loc_8c041dde
loc_8c03f27c:
	#data bank04.loc_8c041aa6
loc_8c03f280:
	#data bank04.loc_8c041e44

;==============================================
loc_8c03f284:
	mov.l @(loc_8c03f380,PC),r2
	mov.l @(loc_8c03f384,PC),r1
	mov.l @r2,r3
	mov.b @(0x5,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	nop

loc_8c03f294:
	mov.l @(loc_8c03f380,PC),r4
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
	mov.l @(loc_8c03f380,PC),r14
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
	mov.w @(loc_8c03f37a,PC),r0
	mov.l @r14,r3
	mov.w r0,@(0xE,r3)
	mov.l @(loc_8c03f388,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03f38c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f394,PC),r3
	mov.l @(loc_8c03f390,PC),r4
	mov.w @(loc_8c03f37a,PC),r5
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c03f398,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c03f2f4:
	mov.w @(loc_8c03f37c,PC),r0
	mov 0x01,r3
	mov.l @r14,r4
	mov.b @(r0,r4),r4
	tst r4,r3
	bt loc_8c03f30c
	mov.l @(loc_8c03f39c,PC),r1
	mov.l @(loc_8c03f3a0,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c03f31e

loc_8c03f30c:
	mov 0x02,r0
	tst r4,r0
	bt loc_8c03f324
	mov.l @(loc_8c03f3a4,PC),r2
	mov.l @(loc_8c03f3a0,PC),r1
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
	mov.l @(loc_8c03f380,PC),r4
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
	mov.w @(loc_8c03f37c,PC),r0
	mov 0x01,r3
	mov.l @r4,r5
	mov.b @(r0,r5),r5
	tst r5,r3
	bt loc_8c03f360
	mov.l @(loc_8c03f39c,PC),r1
	mov.l @(loc_8c03f3a0,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c03f372

loc_8c03f360:
	mov 0x02,r0
	tst r5,r0
	bt loc_8c03f376
	mov.l @(loc_8c03f3a4,PC),r2
	mov.l @(loc_8c03f3a0,PC),r1
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
loc_8c03f37a:
	#data 0x01e0
loc_8c03f37c:
	#data 0x0084
	#align4
loc_8c03f380:
	#data 0x8c26823c
loc_8c03f384:
	#data bank14.loc_8c14db68
loc_8c03f388:
	#data bank0f.loc_8c0f9924
loc_8c03f38c:
	#data bank0f.loc_8c0fa2ec
loc_8c03f390:
	#data 0xff000000
loc_8c03f394:
	#data loc_8c0355b2
loc_8c03f398:
	#data bank04.loc_8c04255a
loc_8c03f39c:
	#data 0x8c2681dc
loc_8c03f3a0:
	#data 0x00008000
loc_8c03f3a4:
	#data 0x8c2681f0

;==============================================
loc_8c03f3a8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c03f404,PC),r13
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
	mov.l @(loc_8c03f40c,PC),r4
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	mov 0x20,r0
	mov.l @r13,r3
	mov r0,r5
	mov.l @(loc_8c03f410,PC),r2
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c03f408,PC),r3
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
loc_8c03f404:
	#data 0x8c26823c
loc_8c03f408:
	#data 0x8c28c4a6
loc_8c03f40c:
	#data 0xff000000
loc_8c03f410:
	#data loc_8c0355b2

;----------------------------------------------
loc_8c03f414:
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	mov.w @(loc_8c03f4fc,PC),r3
	cmp/eq r3,r0
	bf loc_8c03f430
	mov.l @(loc_8c03f50c,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c03f510,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f514,PC),r3
	jsr @r3
	mov 0x14,r4

loc_8c03f430:
	mov.l @(loc_8c03f518,PC),r2
	jsr @r2
	nop
	mov.l @r13,r3
	mov.w @(0xC,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xC,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c03f492
	mov.l @(loc_8c03f51c,PC),r14
	mov.l @r13,r2
	mov.l @r14,r0
	mov.w @(loc_8c03f4fe,PC),r3
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
	mov.l @(loc_8c03f520,PC),r1
	mov.b r12,@r1
	mov.l @r14,r3
	mov.b @(0x1,r3),r0

loc_8c03f474:
	mov.l @(loc_8c03f524,PC),r3
	add 0x0D,r0
	mov.b r0,@r3

loc_8c03f47a:
	mov.l @r14,r2
	mov.w @(loc_8c03f500,PC),r4
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
	mov.l @(loc_8c03f528,PC),r14
	mov.l @r14,r3
	mov.b @r3,r2
	mov.w @(loc_8c03f4fe,PC),r3
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
	mov.l @(loc_8c03f530,PC),r9
	mov.w r0,@(0xE,r1)
	mova @(0x70,PC),r0
	mov.l @r14,r2
	mov.b @r2,r1
	mov.w @(loc_8c03f502,PC),r2
	extu.b r1,r1
	cmp/eq r2,r1
	bf.s loc_8c03f4cc
	fmov @r0,fr15
	mov.b r12,@r9

loc_8c03f4cc:
	mov.l @r14,r3
	mov.b @r3,r2
	mov.w @(loc_8c03f504,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c03f4dc
	mov 0x00,r1
	mov.b r1,@r9

loc_8c03f4dc:
	mov.l @r14,r3
	mov.l @(loc_8c03f534,PC),r11
	mov.b @r3,r2
	mov.w @(loc_8c03f506,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c03f4ec
	mov.b r12,@r11

loc_8c03f4ec:
	mova @(loc_8c03f538,PC),r0
	mov.w @(loc_8c03f508,PC),r10
	fmov @r0,fr13
	mova @(0x48,PC),r0
	fldi1 fr12
	fneg fr12
	bra loc_8c03f566
	fmov @r0,fr14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03f4fc:
	#data 0x00dc
loc_8c03f4fe:
	#data 0x00ff
loc_8c03f500:
	#data 0x0910
loc_8c03f502:
	#data 0x00fe
loc_8c03f504:
	#data 0x00fd
loc_8c03f506:
	#data 0x00fc
loc_8c03f508:
	#data 0x00f0
	#align4
loc_8c03f50c:
	#data bank04.loc_8c04182e
loc_8c03f510:
	#data bank04.loc_8c04185e
loc_8c03f514:
	#data bank04.loc_8c041a90
loc_8c03f518:
	#data loc_8c030e3a
loc_8c03f51c:
	#data 0x8c28c4a0
loc_8c03f520:
	#data 0x8c26a960
loc_8c03f524:
	#data 0x8c26a961
loc_8c03f528:
	#data 0x8c28c49c
	#data 0x43980000
loc_8c03f530:
	#data 0x8c28c4a4
loc_8c03f534:
	#data 0x8c28c4a7
loc_8c03f538:
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
	mov.w @(loc_8c03f638,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c03f57e
	mov.b r12,@r9

loc_8c03f57e:
	mov.l @r14,r2
	mov.b @r2,r3
	mov.w @(loc_8c03f63a,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c03f58e
	mov 0x00,r1
	mov.b r1,@r9

loc_8c03f58e:
	mov.l @r14,r3
	mov.b @r3,r2
	mov.w @(loc_8c03f63c,PC),r3

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
	mov.l @(loc_8c03f644,PC),r1
	mov.b r12,@r1

loc_8c03f5a8:
	mov.w @(loc_8c03f63e,PC),r0
	mov.l @r13,r4
	mov.b @(r0,r4),r4
	tst r4,r12
	bt loc_8c03f5be
	mov.l @(loc_8c03f648,PC),r2
	mov.l @(loc_8c03f64c,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bf loc_8c03f5d0

loc_8c03f5be:
	mov 0x02,r0
	tst r4,r0
	bt loc_8c03f5e8
	mov.l @(loc_8c03f650,PC),r2
	mov.l @(loc_8c03f64c,PC),r1
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
	mov.l @(loc_8c03f654,PC),r4
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
	mov.w @(loc_8c03f640,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c03f658,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03f65c,PC),r4
	mov 0x00,r6
	mov.l @(loc_8c03f660,PC),r2
	mov 0x20,r5
	jmp @r2
	lds.l @r15+,pr

loc_8c03f632:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03f638:
	#data 0x00fe
loc_8c03f63a:
	#data 0x00fd
loc_8c03f63c:
	#data 0x00fc
loc_8c03f63e:
	#data 0x0084
loc_8c03f640:
	#data 0x00f0
	#align4
loc_8c03f644:
	#data 0x8c28c4a5
loc_8c03f648:
	#data 0x8c2681dc
loc_8c03f64c:
	#data 0x00008000
loc_8c03f650:
	#data 0x8c2681f0
loc_8c03f654:
	#data 0x8c26823c
loc_8c03f658:
	#data bank04.loc_8c044d8c
loc_8c03f65c:
	#data 0xff000000
loc_8c03f660:
	#data loc_8c0355b2

;==============================================
loc_8c03f664:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c03f75c,PC),r13
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
	mov.l @(loc_8c03f760,PC),r14
	bra loc_8c03f6a4
	nop

loc_8c03f6a2:
	mov.l @(loc_8c03f764,PC),r14

loc_8c03f6a4:
	mov.l @(loc_8c03f768,PC),r11
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
	mov.l @(loc_8c03f770,PC),r2
	mov 0x01,r6
	mov.l @(loc_8c03f76c,PC),r4
	jsr @r2
	mov 0x20,r5

loc_8c03f6ca:
	lds.l @r15+,pr
	mov.l @(loc_8c03f774,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c03f6d8:
	mov.l r14,@-r15
	mov.l @(loc_8c03f75c,PC),r14
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
	mov.l @(loc_8c03f778,PC),r2
	mov 0x24,r5
	mov.l @(loc_8c03f77c,PC),r3
	mov 0x10,r6
	mov.l r2,@-r15
	jsr @r3
	mov 0x30,r4
	mov.l @(loc_8c03f780,PC),r2
	mov 0x2E,r5
	mov.l @(loc_8c03f77c,PC),r3
	mov 0x10,r6
	mov.l r2,@-r15
	jsr @r3
	mov 0x3C,r4
	add 0x08,r15

loc_8c03f71c:
	mov.l @(loc_8c03f774,PC),r2
	jsr @r2
	nop
	mov.w @(loc_8c03f758,PC),r0
	mov 0x01,r3
	mov.l @r14,r4
	mov.b @(r0,r4),r4
	tst r4,r3
	bt loc_8c03f73a
	mov.l @(loc_8c03f784,PC),r1
	mov.l @(loc_8c03f788,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c03f74c

loc_8c03f73a:
	mov 0x02,r0
	tst r4,r0
	bt loc_8c03f752
	mov.l @(loc_8c03f78c,PC),r2
	mov.l @(loc_8c03f788,PC),r1
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
loc_8c03f758:
	#data 0x0084
	#align4
loc_8c03f75c:
	#data 0x8c26823c
loc_8c03f760:
	#data bank13.loc_8c136400
loc_8c03f764:
	#data bank13.loc_8c1361c0
loc_8c03f768:
	#data loc_8c031152
loc_8c03f76c:
	#data 0xff000000
loc_8c03f770:
	#data loc_8c0355b2
loc_8c03f774:
	#data loc_8c030e3a
loc_8c03f778:
	#data bank13.loc_8c138868
loc_8c03f77c:
	#data loc_8c0395c6
loc_8c03f780:
	#data bank13.loc_8c138880
loc_8c03f784:
	#data 0x8c2681dc
loc_8c03f788:
	#data 0x00008000
loc_8c03f78c:
	#data 0x8c2681f0

;==============================================
loc_8c03f790:
	mov.l @(loc_8c03f858,PC),r4
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
	mov.w @(loc_8c03f856,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	bsr loc_8c03ffe4
	nop
	bsr loc_8c0400ce
	nop
	mov.l @(loc_8c03f860,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c03f85c,PC),r4
	jsr @r3
	mov 0x02,r5

loc_8c03f7c0:
	mov.l @(loc_8c03f864,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c03f7c6:
	mov.l @(loc_8c03f858,PC),r4
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
	mov.l @(loc_8c03f868,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03f86c,PC),r2
	jsr @r2
	mov 0x0F,r4
	mov.l @(loc_8c03f870,PC),r3
	mov.l @(loc_8c03f85c,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c03f874,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f878,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03f87c,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c03f81c:
	mov.l @(loc_8c03f858,PC),r4
	mov 0x05,r0
	sts.l pr,@-r15
	mov.l @r4,r3
	mov 0x00,r6
	mov.b r0,@(0x5,r3)
	mov.w @(loc_8c03f856,PC),r0
	mov.l @r4,r3
	mov.l @(loc_8c03f85c,PC),r4
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c03f860,PC),r3
	jsr @r3
	mov 0x20,r5
	mov.l @(loc_8c03f868,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f870,PC),r3
	mov.l @(loc_8c03f85c,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c03f874,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c03f878,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c03f87c,PC),r2
	jmp @r2
	lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03f856:
	#data 0x00f0
	#align4
loc_8c03f858:
	#data 0x8c26823c
loc_8c03f85c:
	#data 0xff000000
loc_8c03f860:
	#data loc_8c0355b2
loc_8c03f864:
	#data loc_8c030e3a
loc_8c03f868:
	#data bank04.loc_8c044d8c
loc_8c03f86c:
	#data loc_8c032be0
loc_8c03f870:
	#data bank02.loc_8c02dc1c
loc_8c03f874:
	#data bank04.loc_8c04182e
loc_8c03f878:
	#data bank04.loc_8c04185e
loc_8c03f87c:
	#data bank04.loc_8c041ecc

;==============================================
loc_8c03f880:
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r0
	nop
	mov.b r0,@(0x4,r15)
	mov 0x08,r0
	mov.l @(loc_8c03f99c,PC),r3
	mov 0x06,r5
	mov 0x01,r6
	fmov fr4,@r15
	fmov fr5,@(r0,r15)
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c03f922
	mov r0,r4
	mov.w @(loc_8c03f98a,PC),r0
	mov 0x00,r5
	mov 0x20,r1
	mov.l @(loc_8c03f9a0,PC),r3
	mov.b r5,@(r0,r4)
	add r4,r1
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c03f9ac,PC),r6
	mov.b r0,@r1
	mov.l @(loc_8c03f9a4,PC),r1
	mov.l r3,@(0x10,r4)
	mov.b @r1,r2
	mov.w @(loc_8c03f98c,PC),r3
	mov.w @(loc_8c03f98e,PC),r0
	extu.b r2,r2
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x10,r2
	mov.w @(loc_8c03f990,PC),r0
	add r6,r2
	fmov @r15,fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c03f9a8,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03f992,PC),r0
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
	mova @(loc_8c03f9b0,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03f994,PC),r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c03f9b4,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03f996,PC),r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c03f9b8,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03f998,PC),r0
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
	mova @(loc_8c03f9bc,PC),r0
	fmov fr15,@-r15
	mov r4,r14
	fmov fr14,@-r15
	sts.l pr,@-r15
	fmov @r0,fr14
	mova @(loc_8c03f9b8,PC),r0
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
	mova @(loc_8c03f9c0,PC),r0
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
	mova @(loc_8c03f9c8,PC),r0
	bra loc_8c03f9d4
	fmov @r0,fr4

;##############################################
loc_8c03f98a:
	#data 0x012c
loc_8c03f98c:
	#data 0x0912
loc_8c03f98e:
	#data 0x00dc
loc_8c03f990:
	#data 0x00e0
loc_8c03f992:
	#data 0x00e4
loc_8c03f994:
	#data 0x00e8
loc_8c03f996:
	#data 0x00ec
loc_8c03f998:
	#data 0x00f0
	#align4
loc_8c03f99c:
	#data bank04.loc_8c044f12
loc_8c03f9a0:
	#data loc_8c03f92a
loc_8c03f9a4:
	#data 0x8c28c4a4
loc_8c03f9a8:
	#data 0x43f80000
loc_8c03f9ac:
	#data 0x8c212bfc
loc_8c03f9b0:
	#data 0x3f8ccccd
loc_8c03f9b4:
	#data 0x3e000000
loc_8c03f9b8:
	#data 0x3e800000
loc_8c03f9bc:
	#data 0x3f000000
loc_8c03f9c0:
	#data 0x3f400000
	#data 0x3ec00000
loc_8c03f9c8:
	#data 0x3f200000

;==============================================
loc_8c03f9cc:
	bra loc_8c03f9d4
	fmov fr6,fr4

loc_8c03f9d0:
	mova @(loc_8c03faa8,PC),r0
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
	mov.w @(loc_8c03fa9c,PC),r0
	mov.l @(loc_8c03fab8,PC),r2
	fmov fr4,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr6
	mov.w @(loc_8c03fa9e,PC),r0
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
	mov.w @(loc_8c03faa0,PC),r0
	fmov fr6,@(r0,r14)
	add 0x04,r0
	bra loc_8c03fa3a
	fmov fr15,@(r0,r14)

loc_8c03fa32:
	mov.w @(loc_8c03faa0,PC),r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr14,@(r0,r14)

loc_8c03fa3a:
	mov.l @(loc_8c03fabc,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c03fa50
	mov 0x60,r1
	mov.w @(loc_8c03faa2,PC),r0
	add r14,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c03fa50:
	mov.l @(loc_8c03fac0,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c03fa78
	mov.l @(loc_8c03fac4,PC),r1
	mov.w @(loc_8c03faa4,PC),r0
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
	mov.l @(loc_8c03fac8,PC),r1
	jsr @r1
	mov r14,r4

loc_8c03fa78:
	mova @(loc_8c03facc,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03faa2,PC),r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c03fa92
	lds.l @r15+,pr
	mov.l @(loc_8c03fac8,PC),r2
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
loc_8c03fa9c:
	#data 0x00f4
loc_8c03fa9e:
	#data 0x00fc
loc_8c03faa0:
	#data 0x00ec
loc_8c03faa2:
	#data 0x00e4
loc_8c03faa4:
	#data 0x0108
	#align4
loc_8c03faa8:
	#data 0x3f600000
	#data 0x42800000
	#data 0x41800000
	#data 0x3e000000
loc_8c03fab8:
	#data 0x8c28c4a7
loc_8c03fabc:
	#data 0x8c28c4a5
loc_8c03fac0:
	#data 0x8c28c4a6
loc_8c03fac4:
	#data 0x3d000000
loc_8c03fac8:
	#data bank04.loc_8c0450c0
loc_8c03facc:
	#data 0xc2400000

;==============================================
loc_8c03fad0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(loc_8c03fc34,PC),r3
	mov 0x06,r5
	mov.b r0,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c03fb54
	mov r0,r4
	mov.w @(loc_8c03fc22,PC),r0
	mov 0x00,r5
	mov 0x21,r1
	mov.l @(loc_8c03fc40,PC),r6
	mov.b r5,@(r0,r4)
	add r4,r1
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c03fc38,PC),r3
	mov.b r0,@r1
	mov 0x10,r1
	mov.w @(loc_8c03fc24,PC),r0
	add r6,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(r0,r4)
	mova @(0x130,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03fc26,PC),r0
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
	mov.w @(loc_8c03fc2a,PC),r2
	fmov fr2,@(r0,r4)
	mova @(loc_8c03fc44,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03fc28,PC),r0
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
	mov.l @(loc_8c03fc48,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c03fb70:
	mov r4,r3
	mov.l @(loc_8c03fc4c,PC),r1
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
	mov.w @(loc_8c03fc2c,PC),r0
	mov.w r0,@(0x1E,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03fc2e,PC),r0
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
	mov.l @(loc_8c03fc54,PC),r1
	mov.w @(loc_8c03fc30,PC),r0
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
	mov.w @(loc_8c03fc32,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03fbd2:
	rts
	nop

;==============================================
loc_8c03fbd6:
	mov.l @(loc_8c03fc58,PC),r2
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
	mov.l @(loc_8c03fc5c,PC),r1
	mov.w @(loc_8c03fc30,PC),r0
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
	mov.l @(loc_8c03fc60,PC),r3
	jmp @r3
	nop

loc_8c03fc0c:
	rts
	nop

;==============================================
loc_8c03fc10:
	mov r4,r3
	mov.l @(loc_8c03fc64,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15
  
;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c03fc22:
	#data 0x012c
loc_8c03fc24:
	#data 0x00dc
loc_8c03fc26:
	#data 0x00e0
loc_8c03fc28:
	#data 0x00e8
loc_8c03fc2a:
	#data 0x1005
loc_8c03fc2c:
	#data 0x00f0
loc_8c03fc2e:
	#data 0x00fc
loc_8c03fc30:
	#data 0x0108
loc_8c03fc32:
	#data 0x04b0
	#align4
loc_8c03fc34:
	#data bank04.loc_8c044f12
loc_8c03fc38:
	#data loc_8c03fb5c
	#data 0x42000000
loc_8c03fc40:
	#data 0x8c212bfc
loc_8c03fc44:
	#data 0x3f8ccccd
loc_8c03fc48:
	#data bank14.loc_8c14db88
loc_8c03fc4c:
	#data bank14.loc_8c14dba0
	#data 0x3f700000
loc_8c03fc54:
	#data 0x3d800000
loc_8c03fc58:
	#data 0x8c28c4a6
loc_8c03fc5c:
	#data 0x3d000000
loc_8c03fc60:
	#data bank04.loc_8c0450c0
loc_8c03fc64:
	#data bank14.loc_8c14dbb0

;==============================================
loc_8c03fc68:
	mov.b @(0x4,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x20,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8c03fd9e,PC),r0
	mov.w r0,@(0x1E,r4)
	mov.w @(loc_8c03fda0,PC),r0
	fmov fr4,@(r0,r4)
	mova @(loc_8c03fdac,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03fda2,PC),r0
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
	mov.l @(loc_8c03fdb0,PC),r1
	mov.w @(loc_8c03fda4,PC),r0
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
	mov.w @(loc_8c03fda6,PC),r0
	mov.l @(loc_8c03fdb8,PC),r3
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
	mov.w @(loc_8c03fda8,PC),r0
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
	mov.w @(loc_8c03fda6,PC),r0
	mov.l @(loc_8c03fdb8,PC),r3
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
	mov.l @(loc_8c03fdbc,PC),r1
	mov.w @(loc_8c03fda4,PC),r0
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
	mova @(loc_8c03fdb4,PC),r0
	fmov @r0,fr2

loc_8c03fd3c:
	mov.w @(loc_8c03fda6,PC),r0
	mov.l @(loc_8c03fdb8,PC),r3
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
	mov.l @(loc_8c03fdc0,PC),r2
	jmp @r2
	nop

loc_8c03fd5c:
	rts
	nop

loc_8c03fd60:
	mov r4,r3
	mov.l @(loc_8c03fdc4,PC),r1
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
	mov.w @(loc_8c03fdaa,PC),r0
	mov.w r0,@(0x1E,r4)
	mova @(loc_8c03fdbc,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03fda0,PC),r0
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
loc_8c03fd9e:
	#data 0x0278
loc_8c03fda0:
	#data 0x00f4
loc_8c03fda2:
	#data 0x00fc
loc_8c03fda4:
	#data 0x0108
loc_8c03fda6:
	#data 0x00e4
loc_8c03fda8:
	#data 0x0248
loc_8c03fdaa:
	#data 0x0168
	#align4
loc_8c03fdac:
	#data 0x3f700000
loc_8c03fdb0:
	#data 0x3d000000
loc_8c03fdb4:
	#data 0xc0000000
loc_8c03fdb8:
	#data 0x8c212c10
loc_8c03fdbc:
	#data 0x3d800000
loc_8c03fdc0:
	#data bank04.loc_8c0450c0
loc_8c03fdc4:
	#data bank14.loc_8c14dbc0

;==============================================
loc_8c03fdc8:
	mova @(loc_8c03ff20,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c03ff14,PC),r0
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
	mov.w @(loc_8c03ff16,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03fdf2:
	rts
	nop

;==============================================
loc_8c03fdf6:
	mov r4,r3
	mov.l @(loc_8c03ff24,PC),r1
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
	mov.w @(loc_8c03ff18,PC),r0
	mov.w r0,@(0x1E,r4)
	add 0x8C,r0
	fmov fr4,@(r0,r4)
	mova @(loc_8c03ff28,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03ff1a,PC),r0
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
	mova @(loc_8c03ff20,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c03ff14,PC),r0
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
	mov.w @(loc_8c03ff16,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03fe5e:
	rts
	nop

loc_8c03fe62:
	mov r4,r3
	mov.l @(loc_8c03ff2c,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c03fe74:
	mov.b @(0x4,r4),r0
	mov.l @(loc_8c03ff30,PC),r1
	add 0x01,r0
	fldi0 fr4
	mov.b r0,@(0x4,r4)

loc_8c03fe7e:
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8c03ff18,PC),r0
	lds r1,fpul
	mov.w r0,@(0x1E,r4)
	mov.w @(loc_8c03ff1c,PC),r0
	fsts fpul,fr3
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x10,r0
	fmov fr4,@(r0,r4)
	mova @(0x90,PC),r0
	fmov @r0,fr2
	mov.w @(loc_8c03ff1a,PC),r0
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
	mov.l @(loc_8c03ff34,PC),r1
	mov.w @(loc_8c03ff1c,PC),r0
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
	mov.w @(loc_8c03ff16,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c03fed2:
	rts
	nop

;==============================================
loc_8c03fed6:
	mov r4,r3
	mov.l @(loc_8c03ff38,PC),r1
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
	mov.w @(loc_8c03ff18,PC),r0
	mov.w r0,@(0x1E,r4)
	add 0x8C,r0
	fmov fr4,@(r0,r4)
	mova @(loc_8c03ff28,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03ff1a,PC),r0
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
loc_8c03ff14:
	#data 0x00f4
loc_8c03ff16:
	#data 0x00f0
loc_8c03ff18:
	#data 0x0168
loc_8c03ff1a:
	#data 0x00fc
loc_8c03ff1c:
	#data 0x00e4
	#align4
loc_8c03ff20:
	#data 0x3a088889
loc_8c03ff24:
	#data bank14.loc_8c14dbd8
loc_8c03ff28:
	#data 0x3f700000
loc_8c03ff2c:
	#data bank14.loc_8c14dbf0
loc_8c03ff30:
	#data 0x42000000
loc_8c03ff34:
	#data 0x3e888889
loc_8c03ff38:
	#data bank14.loc_8c14dc08

;==============================================
loc_8c03ff3c:
	mov.l @(loc_8c040060,PC),r1
	mov.w @(loc_8c040056,PC),r0
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
	mov.w @(loc_8c040058,PC),r0
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
	mov.l @(loc_8c040064,PC),r1
	mov.w @(loc_8c04005a,PC),r0
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
	mov.l @(loc_8c040064,PC),r1
	mov.w @(loc_8c04005a,PC),r0
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
	mov.l @(loc_8c040068,PC),r3
	jmp @r3
	nop

loc_8c03ffe0:
	rts
	nop

loc_8c03ffe4:
	sts.l pr,@-r15
	mov.l @(loc_8c04006c,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c04003a
	mov r0,r4
	mov.w @(loc_8c04005c,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c040074,PC),r1

loc_8c03fffc:
	mov.l @(loc_8c040070,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x5C,r0

loc_8c040002:
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	fldi0 fr4
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x28,r0
	mov.w @(loc_8c04005e,PC),r2
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
loc_8c040056:
	#data 0x00e4
loc_8c040058:
	#data 0x00f0
loc_8c04005a:
	#data 0x0108
loc_8c04005c:
	#data 0x012c
loc_8c04005e:
	#data 0x0811
	#align4
loc_8c040060:
	#data 0x3e888889
loc_8c040064:
	#data 0x3d800000
loc_8c040068:
	#data bank04.loc_8c0450c0
loc_8c04006c:
	#data bank04.loc_8c044f12
loc_8c040070:
	#data loc_8c040040
loc_8c040074:
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
	mov.w @(loc_8c040164,PC),r0
	bra loc_8c0400ca
	mov.w r0,@(0x1C,r4)

loc_8c0400b8:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0400ca
	mov.l @(loc_8c040178,PC),r3
	jmp @r3
	nop

loc_8c0400ca:
	rts
	nop

loc_8c0400ce:
	sts.l pr,@-r15
	mov.l @(loc_8c04017c,PC),r3
	mov 0x06,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c040126
	mov r0,r4
	mov.w @(loc_8c040166,PC),r0
	mov 0x00,r5
	mov 0x02,r6
	fldi0 fr4
	mov.b r5,@(r0,r4)
	add 0xB0,r0
	mov.l @(loc_8c040180,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l r6,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c040168,PC),r0
	mov.w @(loc_8c04016e,PC),r3
	fmov fr3,@(r0,r4)
	mova @(loc_8c040188,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04016a,PC),r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c04018c,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04016c,PC),r0
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
	mov.l @(loc_8c040190,PC),r1
	mov.w @(loc_8c040170,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	bra loc_8c040160
	fmov fr2,@(r0,r4)

loc_8c04015a:
	mov.l @(loc_8c040178,PC),r2
	jmp @r2
	nop

loc_8c040160:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c040164:
	#data 0x01e0
loc_8c040166:
	#data 0x012c
loc_8c040168:
	#data 0x00e8
loc_8c04016a:
	#data 0x00ec
loc_8c04016c:
	#data 0x00f0
loc_8c04016e:
	#data 0x1005
loc_8c040170:
	#data 0x0108
	#align4
	#data 0x3951b717
loc_8c040178:
	#data bank04.loc_8c0450c0
loc_8c04017c:
	#data bank04.loc_8c044f12
loc_8c040180:
	#data loc_8c04012c
	#data 0x3ecccccd
loc_8c040188:
	#data 0x41a00000
loc_8c04018c:
	#data 0x41700000
loc_8c040190:
	#data 0x3c888889

;------------------------------------------------------------------------------
loc_8c040194:
	sts.l pr,@-r15
	mov.l @(loc_8c040228,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0401ea
	mov r0,r4
	mov.w @(loc_8c040222,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c040230,PC),r1
	mov.l @(loc_8c04022c,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x60,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	fldi0 fr4
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x24,r0
	mov.w @(loc_8c040224,PC),r2
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
	mov.l @(loc_8c040240,PC),r3
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
	mov.l @(loc_8c040244,PC),r3
	jmp @r3
	nop

loc_8c04021e:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c040222:
	#data 0x012c
loc_8c040224:
	#data 0x0811
	#align4
loc_8c040228:
	#data bank04.loc_8c044f12
loc_8c04022c:
	#data loc_8c0401f0
loc_8c040230:
	#data 0x8c26a920
	#data 0xbf000000
	#data 0x3dcccccd
	#data 0x3c23d70a
loc_8c040240:
	#data 0x8c26823c
loc_8c040244:
	#data bank04.loc_8c0450c0

