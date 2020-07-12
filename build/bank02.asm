;----------------------------------------------
loc_8c020064:
	sts.l pr,@-r15
	mov 0x3B,r5
	bsr loc_8c020078
	mov 0,r4
	mov 0x3C,r5
	bsr loc_8c020078
	mov 0x01,r4
	lds.l @r15+,pr
	mov 0x02,r4
	mov 0x3D,r5

loc_8c020078:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.b r4,@r15
	mov r5,r0
	nop
	mov.l @(0x104,PC),r3
	mov 0x0B,r5
	mov.w r0,@(0x4,r15)
	mov 0,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0200c4
	mov r0,r4
	mov.l @(0xF4,PC),r2
	mov 0x00,r3
	mov.w @(0xE8,PC),r0
	mov.b r3,@(r0,r4)
	add 0xa0,r0
	mov.l r2,@(0x10,r4)
	mov 0x01,r3
	mov.l @(0xEC,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @r2,r0
	mov.l @r0,r3
	mov.w @(0x4,r15),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.l @(0xE0,PC),r3
	mov.w @(0xCE,PC),r0
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b @r3,r2
	mov.b r2,@(r0,r4)
	mov 0x23,r0
	mov.b @r15,r1
	mov.b r1,@(r0,r4)

loc_8c0200c4:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c0200cc:
	mov r4,r3
	mov.l @(0xC8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c0200de:
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x9A,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c020100
	cmp/eq 0x01,r0
	bt loc_8c020106
	cmp/eq 0x02,r0
	bt loc_8c02010c
	bra loc_8c020114
	nop

loc_8c020100:
	mova @(0x98,PC),r0
	bra loc_8c020110
	fmov @r0,fr3

loc_8c020106:
	mova @(0x98,PC),r0
	bra loc_8c020110
	fmov @r0,fr3

loc_8c02010c:
	mova @(0x94,PC),r0
	fmov @r0,fr3

loc_8c020110:
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c020114:
	rts
	nop

;----------------------------------------------
loc_8c020118:
	mov.l @(0x78,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c020124
	mov 0x02,r0
	mov.b r0,@(0x4,r4)

loc_8c020124:
	rts
	nop

;----------------------------------------------
loc_8c020128:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop
	mov.l @(0x54,PC),r3
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.w r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c02017c
	mov r0,r4
	mov.w @(0x3C,PC),r0
	mov 0x00,r3
	mov 0x23,r1
	mov.l @(0x5C,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x21,r3
	add 0xA0,r0
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	add r4,r1
	mov.b @(0x4,r15),r0
	mov.l @(0x34,PC),r3
	mov.b r0,@r1
	mov.w @r15,r2
	mov.l @r3,r0
	extu.w r2,r2
	mov.l @(0x2C,PC),r1
	mov.l @r0,r0
	shll2 r2
	fldi1 fr3
	mov.l @(r0,r2),r2
	mov.w @(0x14,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b @r1,r3
	mov.b r3,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)

loc_8c02017c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c0200cc
	#data 0x8c26a940
	#data 0x8c2897a9
	#data bank14.loc_8c1474cc
	#data 0xc1500000
	#data 0xc154cccd
	#data 0xc14b3333
	#data loc_8c0201ac

;----------------------------------------------
loc_8c0201ac:
	mov r4,r3
	mov.l @(0x120,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c0201be:
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0B,r0
	bf loc_8c0201de
	mov.l @(0x108,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x7F,r0
	bt loc_8c0201d8
	mova @(0x104,PC),r0
	bra loc_8c0201da
	fmov @r0,fr3

loc_8c0201d8:
	fldi0 fr3

loc_8c0201da:
	mov 0x34,r0
	fmov fr3,@(r0,r4)

loc_8c0201de:
	mov.w @(0xE6,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;----------------------------------------------
loc_8c0201ec:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x23,r0
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(0xE4,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	nop
	bsr loc_8c020358
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c020210
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8c020210:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c020216:
	rts
	nop

;----------------------------------------------
loc_8c02021a:
	mov r4,r3
	mov.l @(0xC0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c02022c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov fr15,@-r15
	mov.w @(0x92,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf.s loc_8c02024c
	mov 0x00,r13
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c02024c:
	mova @(0x94,PC),r0
	mov.l @(0xA4,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x8C,PC),r0
	mov.l @(0x94,PC),r3
	fmov @r0,fr2
	mova @(0x8C,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.l @(0x78,PC),r5
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x5A,r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	tst 0x7F,r0
	bt loc_8c020298
	mova @(0x44,PC),r0
	bra loc_8c02029a
	fmov @r0,fr3

loc_8c020298:
	fldi0 fr3

loc_8c02029a:
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bt.s loc_8c0202ae
	mov r5,r4
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0202ae:
	add 0x5A,r4
	mov.w @(0x18,PC),r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c0202fc
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x5A,r0
	bra loc_8c02031a
	mov.b r13,@(r0,r5)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0168
	#data 0x00ff
	#align4
	#data bank14.loc_8c1474dc
	#data 0x8c2897aa
	#data 0x40966666
	#data bank14.loc_8c1474ec
	#data bank14.loc_8c147524
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data 0x8c289750

;----------------------------------------------
loc_8c0202fc:
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c02031a
	mov.b @(0x5,r14),r0
	fldi1 fr3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x74,r0
	fmov fr3,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1E,r14)

loc_8c02031a:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c020324:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst 0x03,r0
	bf loc_8c02033a
	mov.w @(0x8A,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	xor r3,r2
	mov.b r2,@(r0,r4)

loc_8c02033a:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c020354
	mov 0x02,r0
	mov.l @(0x78,PC),r3
	mov.b r0,@(0x4,r4)
	mov 0x00,r5
	mov.w @(0x6C,PC),r0
	mov.b r5,@(r0,r4)
	mov.b r5,@r3

loc_8c020354:
	rts
	nop

;----------------------------------------------
loc_8c020358:
	mov.b @(0x4,r4),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c020372
	mov.l @(0x64,PC),r2
	mov 0x20,r0
	mov.b @(r0,r4),r1
	mov.b @r2,r3
	cmp/eq r3,r1
	bt loc_8c020372
	rts
	mov 0x01,r0

loc_8c020372:
	mov 0x00,r0
	rts
	nop

;----------------------------------------------
loc_8c020378:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x4C,PC),r14
	mov r14,r0
	nop
	add 0x59,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0203b2
	cmp/eq 0x02,r0
	bt loc_8c0203b8
	cmp/eq 0x03,r0
	bt loc_8c0203d0
	cmp/eq 0x04,r0
	bt loc_8c020466
	cmp/eq 0x05,r0
	bt loc_8c020472
	cmp/eq 0x06,r0
	bf loc_8c0203a6
	bra loc_8c020490
	nop

loc_8c0203a6:
	cmp/eq 0x07,r0
	bf loc_8c0203ae
	bra loc_8c0204a2
	nop

loc_8c0203ae:
	bra loc_8c0204ae
	nop

loc_8c0203b2:
	mov.w @(0xA,PC),r5
	bra loc_8c02046a
	mov 0x02,r4

loc_8c0203b8:
	mov.w @(0x6,PC),r5
	bra loc_8c02046a
	mov 0x03,r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0126
	#data 0x0127
	#data 0x8c2897aa
	#data 0x8c2897a9
	#data 0x8c289750

;----------------------------------------------
loc_8c0203d0:
	mov.w @(0xA8,PC),r5
	bsr loc_8c020128
	mov 0x04,r4
	mov.w @(0xA4,PC),r5
	bsr loc_8c020128
	mov 0x05,r4
	mov 0x2B,r0
	mov.w @(0x9E,PC),r13
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c02040c
	mov.l @(0x34,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c02040c
	cmp/eq 0x01,r0
	bt loc_8c020416
	cmp/eq 0x02,r0
	bt loc_8c020420
	cmp/eq 0x03,r0
	bt loc_8c02042a
	cmp/eq 0x04,r0
	bt loc_8c020434
	cmp/eq 0x05,r0
	bt loc_8c02043e
	cmp/eq 0x06,r0
	bt loc_8c020448
	cmp/eq 0x07,r0
	bt loc_8c020454
	bra loc_8c0204ae
	nop

loc_8c02040c:
	mov r13,r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02044e
	nop

loc_8c020416:
	mov r13,r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02045a
	nop

loc_8c020420:
	mov.w @(0x5E,PC),r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02044e
	nop

loc_8c02042a:
	mov.w @(0x54,PC),r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02045a
	nop

loc_8c020434:
	mov.w @(0x4C,PC),r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02044e
	nop

loc_8c02043e:
	mov.w @(0x42,PC),r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02045a
	nop

loc_8c020448:
	mov.w @(0x3A,PC),r5
	bsr loc_8c020128
	mov 0x06,r4

loc_8c02044e:
	mov.w @(0x36,PC),r5
	bra loc_8c02046a
	mov 0x07,r4

loc_8c020454:
	mov.w @(0x2E,PC),r5
	bsr loc_8c020128
	mov 0x06,r4

loc_8c02045a:
	lds.l @r15+,pr
	mov.w @(0x2A,PC),r5
	mov 0x07,r4
	mov.l @r15+,r13
	bra loc_8c020128
	mov.l @r15+,r14

loc_8c020466:
	mov.w @(0x22,PC),r5
	mov 0x08,r4

loc_8c02046a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c020128
	mov.l @r15+,r14

;----------------------------------------------
loc_8c020472:
	mov.w @(0x18,PC),r5
	bsr loc_8c020128
	mov 0x09,r4
	bra loc_8c020496
	nop

;##############################################
	#data 0x0128
	#data 0x012c
	#data 0x012d
	#data 0x012e
	#data 0x012f
	#data 0x0130
	#data 0x0131
	#data 0x0132
	#data 0x0129
	#data 0x012a

;----------------------------------------------
loc_8c020490:
	mov.w @(0x36,PC),r5
	bsr loc_8c020128
	mov 0x0C,r4

loc_8c020496:
	mov.w @(0x32,PC),r5
	bsr loc_8c020128
	mov 0x0A,r4
	mov.w @(0x2E,PC),r5
	bra loc_8c0204a6
	mov 0x0B,r4

;----------------------------------------------
loc_8c0204a2:
	mov 0x0D,r4
	mov 0x14,r5

loc_8c0204a6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c020128
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0204ae:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0204b6:
	mov.w @(0x16,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;----------------------------------------------
loc_8c0204c4:
	mov.l @(0xC,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012b
	#data 0x010a
	#data 0x0133
	#data 0x012c
	#align4
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c0204d8:
	sts.l pr,@-r15
	mov 0x3F,r5
	bsr loc_8c02052e
	mov 0x00,r4
	mov 0x40,r5
	bsr loc_8c02052e
	mov 0x01,r4
	mov 0x41,r5
	bsr loc_8c02052e
	mov 0x02,r4
	mov 0x42,r5
	bsr loc_8c02052e
	mov 0x03,r4
	mov 0x10,r5
	bsr loc_8c02052e
	mov 0x04,r4
	mov 0x10,r5
	bsr loc_8c02052e
	mov 0x05,r4
	mov 0x10,r5
	bsr loc_8c02052e
	mov 0x06,r4
	mov 0x3D,r5
	bsr loc_8c02052e
	mov 0x07,r4
	mov 0x3C,r5
	bsr loc_8c02052e
	mov 0x08,r4
	mov 0x3B,r5
	bsr loc_8c02052e
	mov 0x09,r4
	mov 0x44,r5
	bsr loc_8c02052e
	mov 0x0A,r4
	mov.w @(0x7A,PC),r5
	bsr loc_8c02052e
	mov 0x0B,r4
	mov 0x3E,r5
	bsr loc_8c02052e
	mov 0x0C,r4
	lds.l @r15+,pr
	mov 0x0D,r4
	mov 0x3E,r5

loc_8c02052e:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.b r4,@r15
	mov r5,r0
	nop
	mov.l @(0x64,PC),r3
	mov 0x0B,r5
	mov.w r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c020580
	mov r0,r4
	mov.w @(0x4E,PC),r0
	mov 0x00,r3
	mov.l @(0x54,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(0x54,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l @r3,r0
	fldi1 fr4
	mov.l @r0,r2
	mov.w @(0x4,r15),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r2),r1
	mov 0x11,r2
	mov.w @(0x34,PC),r0
	mov.l r1,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x23,r0
	mov.b @r15,r1
	mov.b r1,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c020580:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c020588:
	mov r4,r3
	mov.l @(0x20,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00d2
	#data 0x012c
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c020588
	#data 0x8c26a940
	#data bank14.loc_8c14752c

;----------------------------------------------
loc_8c0205b0:
	mov.l r14,@-r15
	mov 0x23,r0
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0205c2
	bsr loc_8c020806
	nop

loc_8c0205c2:
	mova @(0x34,PC),r0
	fldi1 fr4
	fmov @r0,fr10
	mova @(0x30,PC),r0
	fmov @r0,fr9
	mova @(0x30,PC),r0
	fmov @r0,fr8
	mova @(0x30,PC),r0
	fmov @r0,fr7
	mova @(0x30,PC),r0
	fmov @r0,fr6
	mova @(0x30,PC),r0
	fmov @r0,fr5
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov 0x0E,r1
	cmp/hs r1,r0
	bf loc_8c0205ec
	bra loc_8c020734
	nop

loc_8c0205ec:
	shll r0
	mov r0,r1
	mova @(0x1C,PC),r0
	mov.w @(r0,r1),r0
	braf r0
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0xc0ea8f5c
	#data 0x4048f5c3
	#data 0x3f400000
	#data 0x3f000000
	#data 0x3f266666
	#data 0x3f99999a

	#data 0x0034
	#data 0x0034
	#data 0x0034
	#data 0x0034
	#data 0x0082
	#data 0x0098
	#data 0x00b2
	#data 0x0050
	#data 0x005e
	#data 0x0070
	#data 0x00d8
	#data 0x0034
	#data 0x0102
	#data 0x011c
	#align4

;----------------------------------------------
loc_8c02062c:
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x38,r0
	fmov fr4,@(r0,r14)
	mov 0x3C,r0
	bra loc_8c020734
	fmov fr4,@(r0,r14)

loc_8c020648:
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	bra loc_8c02072c
	fmov fr4,@(r0,r14)

;----------------------------------------------
loc_8c020656:
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(0xE4,PC),r0
	bra loc_8c020730
	fmov @r0,fr3

;----------------------------------------------
loc_8c020668:
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(0xD4,PC),r0
	bra loc_8c020730
	fmov @r0,fr3

;----------------------------------------------
loc_8c02067a:
	mov 0x50,r0
	fmov fr8,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	fmov fr10,@(r0,r14)
	mova @(0xC4,PC),r0
	bra loc_8c0206a4
	fmov @r0,fr3

;----------------------------------------------
loc_8c020690:
	mov 0x50,r0
	fmov fr8,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	fmov fr10,@(r0,r14)
	mova @(0xB0,PC),r0
	fmov @r0,fr3

loc_8c0206a4:
	mov 0x38,r0
	bra loc_8c0206ca
	fmov fr3,@(r0,r14)

;----------------------------------------------
loc_8c0206aa:
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c0206ca:
	mova @(0x98,PC),r0
	bra loc_8c020730
	fmov @r0,fr3

;----------------------------------------------
loc_8c0206d0:
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0x80,PC),r0
	bra loc_8c020730
	fmov @r0,fr3

;----------------------------------------------
loc_8c0206fa:
	mov 0x50,r0
	fmov fr7,@(r0,r14)
	mov 0x54,r0
	fmov fr6,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	fmov fr9,@(r0,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	bra loc_8c02072c
	fmov fr3,@(r0,r14)

;----------------------------------------------
loc_8c020714:
	mov 0x50,r0
	fmov fr7,@(r0,r14)
	mov 0x54,r0
	fmov fr6,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	fmov fr9,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c02072c:
	mova @(0x54,PC),r0
	fmov @r0,fr3

loc_8c020730:
	mov 0x3C,r0
	fmov fr3,@(r0,r14)

loc_8c020734:
	mov.w @(0xE,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#align4
	#data 0xc154cccd
	#data 0xc151999a
	#data 0x3fb47ae1
	#data 0xbf547ae1
	#data 0x3eb33333
	#data 0xc0f0f5c3
	#data 0xc03d70a4
	#data 0xc14ccccd
	#data 0x3ff33333
	#data 0x3f8ccccd
	#data 0x40d5c28f
	#data 0x4092e148
	#data 0xbe0f5c29
	#data 0x3fc28f5c
	#data 0xbf4a3d71
	#data 0xc14e6666

;----------------------------------------------
loc_8c020788:
	mov.l r14,@-r15
	mov 0x23,r0
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c02079a
	bsr loc_8c020806
	nop

loc_8c02079a:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bf loc_8c020800
	mov.l @(0xE8,PC),r3
	mova @(0xE4,PC),r0
	fmov @r0,fr5
	mov.b @r3,r0
	cmp/eq 0x00,r0
	bt.s loc_8c0207ba
	fldi1 fr4
	cmp/eq 0x01,r0
	bt loc_8c0207d8
	bra loc_8c020800
	nop

loc_8c0207ba:
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0xC8,PC),r0
	bra loc_8c0207f4
	fmov @r0,fr3

loc_8c0207d8:
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3

loc_8c0207f4:
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)

loc_8c020800:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c020806:
	mov.l r14,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xBC,r15
	mova @(0x9C,PC),r0
	mov.l @(0xB0,PC),r3
	fmov @r0,fr14
	mova @(0x9C,PC),r0
	fmov @r0,fr15
	mova @(0xA4,PC),r0
	fmov @r0,fr5
	mov.l @(0x98,PC),r5
	mov.l @(0x98,PC),r4
	fmov fr15,fr6
	jsr @r3
	fmov fr14,fr4
	mov.l @(0xA0,PC),r2
	mov.l @(0x9C,PC),r4
	jsr @r2
	nop
	mov r15,r14
	mov.l @(0x9C,PC),r3
	mov 0x00,r5
	mov.b r0,@r15
	mov 0x40,r6
	add 0x04,r14
	jsr @r3
	mov r14,r4
	mov.b @r15,r7
	mov 0x00,r4
	mov 0x00,r5
	cmp/pl r7
	add r14,r4
	bf.s loc_8c02085a
	mov 0x2A,r6

loc_8c02084e:
	add 0x01,r5
	mov.b r6,@r4
	exts.b r5,r2
	cmp/ge r7,r2
	bf.s loc_8c02084e
	add 0x01,r4

loc_8c02085a:
	mova @(0x78,PC),r0
	mov.l @(0x64,PC),r3
	fmov @r0,fr5
	mov r14,r5
	mov.l @(0x58,PC),r4
	fmov fr15,fr6
	jsr @r3
	fmov fr14,fr4
	add 0x44,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c020876:
	mov.w @(0x10,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;----------------------------------------------
loc_8c020884:
	mov.l @(0x50,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c02088a:
	#data 0x012c
	#align4

loc_8c02088c:
	#data 0x3f8ccccd
	#data 0x8c212f19
	#data 0x3ff33333
	#data 0x40d5c28f
	#data 0x40147ae1
	#data 0x3f666666
	#data 0xbf75c28f
	#data 0x3e428f5c
	#data 0xbe0f5c29
	#data 0x436e0000
	#data 0x41400000
	#data 0x8c213806
	#data 0xff000000
	#data 0x43400000
	#data loc_8c02a53a
	#data 0x8c213822
	#data bank12.loc_8c1297c4
	#data bank12.loc_8c129728
	#data 0x437a0000
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c0208dc:
	mov.w @(0x10C,PC),r5
	mov 0x00,r4

loc_8c0208e0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x114,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02093a
	mov r0,r4
	mov.w @(0xF2,PC),r0
	mov 0x01,r3
	mov.l @(0x100,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r0
	mov.l @(0xFC,PC),r2
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.w @(0xE2,PC),r1
	mov.b r3,@(r0,r4)
	mov.l @r2,r0
	mov.l @r15,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(0xEC,PC),r2
	mov.l @(r0,r3),r3
	mov.w @(0xD0,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0xE4,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xE0,PC),r2
	mov r4,r1
	mov.l @(0xE0,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c02093a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c020942:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0xCC,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c020956:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c02096e
	cmp/eq 0x01,r0
	bt loc_8c020998
	cmp/eq 0x02,r0
	bt loc_8c0209c0
	bra loc_8c0209c0
	nop

loc_8c02096e:
	mov.b @(0x4,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.w @(0x7C,PC),r5
	mov.b r0,@(0x4,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	fmov fr4,@(r0,r4)
	bsr loc_8c0208e0
	mov 0x01,r4
	mov.w @(0x6A,PC),r5
	bsr loc_8c0208e0
	mov 0x01,r4
	lds.l @r15+,pr
	mov.w @(0x64,PC),r5
	mov 0x02,r4
	bra loc_8c0208e0
	mov.l @r15+,r14

loc_8c020998:
	mov.l @(0x80,PC),r14
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c0209c0
	mov.b @(0x4,r4),r0
	mov.w @(0x50,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.b @r14,r5
	add r3,r5
	bsr loc_8c0208e0
	mov 0x03,r4
	mov.b @r14,r0
	cmp/eq 0x01,r0
	bf loc_8c0209c0
	lds.l @r15+,pr
	mov 0x03,r4
	mov 0x38,r5
	bra loc_8c0208e0
	mov.l @r15+,r14

loc_8c0209c0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0209c6:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c0209e2
	mov.l @(0x4C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c0209e8
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xE,PC),r0
	bra loc_8c0209e8
	mov.b r3,@(r0,r4)

loc_8c0209e2:
	mov.l @(0x3C,PC),r3
	jmp @r3
	nop

loc_8c0209e8:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0105
	#data 0x012c
	#data 0x0084
	#data 0x0431
	#data 0x0118
	#data 0x0119
	#data 0x011d
	#align4

	#data bank04.loc_8c044f12
	#data loc_8c020942
	#data 0x8c26a940
	#data bank14.loc_8c14753c
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c147548
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c147570
	#data 0x8c212f20
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c020a24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov fr15,@-r15
	mov.w @(0xF4,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf.s loc_8c020a44
	mov 0x00,r13
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c020a44:
	mova @(0xE0,PC),r0
	mov.l @(0xF0,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xD8,PC),r0
	mov.l @(0xE0,PC),r3
	fmov @r0,fr2
	mova @(0xD8,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c020a8a
	cmp/eq 0x01,r0
	bt loc_8c020a90
	cmp/eq 0x02,r0
	bt loc_8c020ad0
	bra loc_8c020ade
	nop

loc_8c020a8a:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c020a90:
	mov.l @(0xA8,PC),r3
	mov 0x34,r0
	fmov @(r0,r14),fr4
	mov.b @r3,r2
	mov.l @(0xA4,PC),r0
	mov r2,r1
	shll r2
	add r1,r2
	mov.l @(0xA0,PC),r3
	shll2 r2
	mov r14,r1
	add r0,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fcmp/eq fr4,fr3
	bt loc_8c020abc
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c020abc:
	mov.l @(0x88,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c020ade
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x58,PC),r0
	bra loc_8c020ade
	mov.b r13,@(r0,r14)

loc_8c020ad0:
	lds.l @r15+,pr
	mov.l @(0x78,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c020ade:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c020ae8:
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	cmp/eq 0x38,r0
	bf loc_8c020b1e
	mova @(0x5C,PC),r0
	mov.l @(0x5C,PC),r5
	fmov @r0,fr15
	mova @(0x5C,PC),r0
	fmov @r0,fr5
	mova @(0x5C,PC),r0
	mov.l @(0x60,PC),r3
	mov 0xFF,r4
	fmov fr15,fr6
	jsr @r3
	fmov @r0,fr4
	mova @(0x5C,PC),r0
	mov.l @(0x54,PC),r3
	fmov @r0,fr5
	mova @(0x5C,PC),r0
	lds.l @r15+,pr
	fmov @r0,fr4
	mov 0xFF,r4
	mov.l @(0x4C,PC),r5
	fmov fr15,fr6
	jmp @r3
	fmov @r15+,fr15

loc_8c020b1e:
	lds.l @r15+,pr
	rts
	fmov @r15+,fr15


;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0168
	#data 0x012c
	#align4
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data 0x8c212f19
	#data bank14.loc_8c147558
	#data bank12.loc_8c1294c8
	#data 0x8c212f20
	#data bank04.loc_8c0450c0
	#data 0x4141999a
	#data 0x8c2141f2
	#data 0x43540000
	#data 0x43700000
	#data loc_8c02a53a
	#data 0x8c2141ea
	#data 0x43740000
	#data 0x43828000

;----------------------------------------------
loc_8c020b70:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r3
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c020bba
	mov r0,r14
	mov.w @(0xCC,PC),r0
	mov 0x00,r3
	mov.l @(0xDC,PC),r1
	mov.l @(0xD8,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.w @(0xC0,PC),r0
	mov.l @r3,r2
	fldi0 fr3
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(0xB8,PC),r0
	fldi1 fr4
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)

loc_8c020bba:
	mov.w @(0x9C,PC),r6
	mov 0x00,r5
	bsr loc_8c020c84
	mov r14,r4
	mov.w @(0x96,PC),r6
	mov 0x01,r5
	bsr loc_8c020c84
	mov r14,r4
	lds.l @r15+,pr
	mov.w @(0x8E,PC),r6
	mov r14,r4
	mov 0x02,r5
	bra loc_8c020c84
	mov.l @r15+,r14

loc_8c020bd6:
	mov.l @(0x98,PC),r2
	mov.l r14,@-r15
	mov.w @r2,r3
	cmp/pz r3
	bt.s loc_8c020be6
	mov r4,r14
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8c020be6:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x88,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c020bf6:
	mov.w @(0x5A,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x14,r0
	rts
	mov.w r0,@(0x1C,r4)

loc_8c020c08:
	mov r4,r3
	mov.l @(0x6C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c020c1a:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c020c34
	mov.w @(0x1C,r4),r0
	mov.l @(0x58,PC),r1
	add 0xFF,r0
	lds r1,fpul
	mov.w r0,@(0x1C,r4)
	mov 0x50,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c020c34:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_8c020c4c
	fldi1 fr3
	mov 0x50,r0
	mov.l @(0x40,PC),r2
	mov 0x00,r3
	mov.w r3,@r2
	fmov fr3,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8c020c4c:
	rts
	nop

loc_8c020c50:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0398
	#data 0x0084
	#data 0x010a
	#data 0x0133
	#data 0x00e7
	#align4

	#data bank04.loc_8c044f12
	#data loc_8c020bd6
	#data 0x8c26a940
	#data 0xc1280000
	#data 0x8c212f14
	#data bank14.loc_8c147580
	#data bank14.loc_8c147590
	#data 0x3d4ccccd
	#data 0x8c212f16

;----------------------------------------------
loc_8c020c84:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x4,r15)
	mov r6,r0
	nop
	mov.l @(0x118,PC),r3
	mov 0x0B,r5
	mov.w r0,@(0x8,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c020cde
	mov r0,r4
	mov.l @(0x10C,PC),r2
	mov 0x00,r3
	mov.w @(0xF8,PC),r0
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.l r2,@(0x10,r4)
	mov 0x01,r3
	mov.l @(0x100,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @r2,r0
	mov.l @r0,r3
	mov.w @(0x8,r15),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(0xE0,PC),r0
	mov.l r1,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0xDE,PC),r0
	mov.l r3,@(0x18,r4)
	mov.w @(0xD8,PC),r3
	mov.l @r15,r1
	add r1,r3
	mov.l r3,@(r0,r4)
	mov 0x23,r1
	mov.b @(0x4,r15),r0
	add r4,r1
	mov.b r0,@r1

loc_8c020cde:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c020ce6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x02,r4
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	cmp/ge r4,r0
	bf loc_8c020cfc
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)

loc_8c020cfc:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0xB8,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8c020d0c:
	mova @(0xB0,PC),r0
	fmov @r0,fr4
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c020d36
	cmp/eq 0x01,r0
	bt loc_8c020d26
	cmp/eq 0x02,r0
	bt loc_8c020d40
	bra loc_8c020d48
	nop

loc_8c020d26:
	mov.l @(0x9C,PC),r2
	mov 0x20,r0
	mov.b @r2,r3
	mov.b r3,@(r0,r4)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)

loc_8c020d36:
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mova @(0x90,PC),r0
	bra loc_8c020d44
	fmov @r0,fr3

loc_8c020d40:
	mova @(0x8C,PC),r0
	fmov @r0,fr3

loc_8c020d44:
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c020d48:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;----------------------------------------------
loc_8c020d50:
	mov.l @(0x18,r4),r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c020d6a
	mov.w @(0x48,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c020d6e

loc_8c020d6a:
	rts
	nop

loc_8c020d6e:
	mov r4,r3
	mov.l @(0x60,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c020d80:
	mov 0x20,r0
	mov.l @(0x40,PC),r5
	mov.b @(r0,r4),r3
	mov.w @r5,r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c020d9e
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	mov.l @(0x44,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x0A,r0
	mov.w r3,@r2
	mov.w r0,@(0x1C,r4)

loc_8c020d9e:
	mov.b @r5,r3
	mov 0x20,r0
	rts
	mov.b r3,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#data 0x0088
	#data 0x00c8
	#align4

	#data bank04.loc_8c044f12
	#data loc_8c020ce6
	#data 0x8c26a940
	#data bank14.loc_8c147598
	#data 0x3fc00000
	#data 0x8c212f14
	#data 0x40966666
	#data 0x4154cccd
	#data 0x41280000
	#data bank14.loc_8c1475a8
	#data 0x8c212f16

;----------------------------------------------
loc_8c020ddc:
	mov.w @(0x1C,r4),r0
	mov.l @(0x64,PC),r5
	tst r0,r0
	bt loc_8c020e04
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mova @(0x5C,PC),r0
	mov.w @r5,r3
	tst r3,r3
	bt.s loc_8c020dfc
	fmov @r0,fr4
	mov 0x34,r0
	fmov @(r0,r4),fr3
	bra loc_8c020e02
	fadd fr4,fr3

loc_8c020dfc:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3

loc_8c020e02:
	fmov fr3,@(r0,r4)

loc_8c020e04:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_8c020e28
	mov 0x00,r6
	mov r6,r0
	nop
	mov.b r0,@(0x5,r4)
	mov.w @r5,r3
	tst r3,r3
	bt loc_8c020e1e
	mova @(0x30,PC),r0
	bra loc_8c020e20
	fmov @r0,fr3

loc_8c020e1e:
	fldi0 fr3

loc_8c020e20:
	mov.l @(0x2C,PC),r3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov.w r6,@r3

loc_8c020e28:
	rts
	nop

;----------------------------------------------
loc_8c020e2c:
	mov.w @(0x10,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;----------------------------------------------
loc_8c020e3a:
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#align4
	#data 0x8c212f14
	#data 0x3ef0a3d6
	#data 0x40966666
	#data 0x8c212f16
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c020e58:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x10C,PC),r13
	mov 0x05,r11
	mov.l @(0x10C,PC),r8
	mov 0x01,r10
	mov.w @(0xF8,PC),r12
	mov 0x00,r14
	mov.l @(0xFC,PC),r9
	mov.l r4,@r15

loc_8c020e7a:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r8
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c020ee0
	mov r0,r4
	mov.w @(0xE4,PC),r0
	mov r4,r1
	mov.l @(0xF0,PC),r3
	mov r9,r2
	mov.b r10,@(r0,r4)
	add 0xA0,r0
	mov.l r3,@(0x10,r4)
	add 0x34,r1
	mov.l r12,@(r0,r4)
	mov 0x23,r0
	mov.l @r15,r3
	add 0x0C,r9
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0xDC,PC),r3
	mov.b r14,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xD8,PC),r1
	mov.w @r13,r3
	mov.l @r1,r0
	mov r4,r1
	extu.w r3,r3
	mov.l @r0,r0
	shll2 r3
	add 0x50,r1
	mov.l @(r0,r3),r2
	mov.w @(0xB0,PC),r0
	mov.l @(0xC0,PC),r3
	mov.l r2,@(r0,r4)
	mov.w @r13+,r0
	mov.l @(0xC4,PC),r2
	mov.w r0,@(0x1C,r4)
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xC0,PC),r2
	mov r4,r1
	mov.l @(0xC0,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	add 0x01,r14
	cmp/ge r11,r14
	bf loc_8c020e7a

loc_8c020ee0:
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
loc_8c020ef4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r0
	mov.l @(0x7C,PC),r3
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c020f30
	mov.l @r3,r4
	cmp/eq 0x01,r0
	bf loc_8c020f1c
	bra loc_8c021040
	nop

loc_8c020f1c:
	cmp/eq 0x03,r0
	bf loc_8c020f24
	bra loc_8c021040
	nop

loc_8c020f24:
	cmp/eq 0x02,r0
	bt loc_8c020f48
	cmp/eq 0x04,r0
	bt loc_8c020f5c
	bra loc_8c021040
	nop

loc_8c020f30:
	mov 0x23,r2
	mov.w @(0x1C,r14),r0
	add r14,r2
	mov.l @r4,r1
	mov.b @r2,r2
	extu.b r2,r2
	add r2,r0
	shll2 r0
	mov.l @(r0,r1),r2
	mov.w @(0x2C,PC),r0
	bra loc_8c021040
	mov.l r2,@(r0,r14)

loc_8c020f48:
	mov.l @(0x4C,PC),r2
	mov.w @(0x1C,r14),r0
	mov.b @r2,r3
	sub r3,r0
	mov.l @r4,r3
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(0x18,PC),r0
	bra loc_8c021040
	mov.l r1,@(r0,r14)


loc_8c020f5c:
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c020f9c
	mov 0x00,r4
	cmp/eq 0x01,r0
	bt loc_8c020fb6
	bra loc_8c021040
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0431
	#data 0x012c
	#data 0x0084
	#align4

	#data bank14.loc_8c1475cc
	#data bank14.loc_8c147614
	#data bank04.loc_8c044f12
	#data loc_8c020ef4
	#data bank12.loc_8c1294c8
	#data 0x8c26a940
	#data bank14.loc_8c1475b0
	#data bank14.loc_8c1475bc
	#data bank12.loc_8c1294bc
	#data 0x8c213b08

;----------------------------------------------
loc_8c020f9c:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov.l @(0xAC,PC),r2
	mov.w @(0xA2,PC),r0
	jsr @r2
	mov.l @(r0,r14),r4
	bra loc_8c021040
	nop

loc_8c020fb6:
	mov.w @(0x1C,r14),r0
	mov.w @(0x98,PC),r5
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c020fca
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c020fca:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c020fdc
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c020fdc:
	mov.l @(0x7C,PC),r3
	mov.w @(0x70,PC),r0
	mov.l @r3,r4
	mov.l @(0x7C,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	add 0x64,r0
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(0x7C,PC),r13
	mova @(0x7C,PC),r0
	mov.l @(0x74,PC),r12
	mov.l @(0x6C,PC),r11
	fldi1 fr14
	bra loc_8c021038
	fmov @r0,fr15

loc_8c020ffc:
	mov r15,r5
	add 0x04,r5
	jsr @r13
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	float fpul,fr3
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r12
	mov r15,r4

loc_8c021038:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c020ffc

loc_8c021040:
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
	#data 0x0084
	#data 0x03e8
	#align4

	#data bank10.loc_8c108210
	#data 0x8c26a940
	#data bank10.loc_8c108060
	#data bank10.loc_8c108086
	#data bank10.loc_8c1081e6
	#data bank10.loc_8c108192
	#data 0x3a83126f

;----------------------------------------------
loc_8c021074:
	mov.l r14,@-r15
	mova @(0xDC,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x01,r11
	mov.l r10,@-r15
	mov 0x05,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	fmov @r0,fr14
	mova @(0xC4,PC),r0
	fmov @r0,fr15
	mov.l @(0xB4,PC),r8
	mov.l @(0xB4,PC),r9
	mov.w @(0xA6,PC),r12

loc_8c02109c:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021102
	mov r0,r14
	mov.w @(0x98,PC),r0
	mov.l @(0xAC,PC),r3
	mov.b r11,@(r0,r14)
	mov.l @(0xB0,PC),r0
	mov.l @(0xAC,PC),r2
	mov.l r3,@(0x10,r14)
	mov.b @(r0,r13),r1
	mov.l @r2,r3
	extu.b r1,r1
	mov.l @r3,r0
	shll2 r1
	mov.l @(r0,r1),r3
	mov.w @(0x84,PC),r0
	mov.w @(0x80,PC),r1
	add r14,r1
	mov.l r3,@r1
	mov.l r12,@(r0,r14)
	mov 0x34,r0
	fmov fr14,@(r0,r14)
	mov r13,r0
	nop
	shll2 r0
	mov r13,r5
	fmov @(r0,r8),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov fr15,@(r0,r14)
	mov 0x20,r0
	mov.b r13,@(r0,r14)
	bsr loc_8c021170
	mov r14,r4
	mov r13,r5
	bsr loc_8c02122e
	mov r14,r4
	mov r13,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c0210fc
	bsr loc_8c021344
	nop

loc_8c0210fc:
	add 0x01,r13
	cmp/ge r10,r13
	bf loc_8c02109c

loc_8c021102:
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
loc_8c021118:
	mov.l @(0x4C,PC),r2
	mov r4,r5
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	mov 0x20,r3
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf.s loc_8c021132
	add 0x74,r5
	bra loc_8c021136
	fldi1 fr4

loc_8c021132:
	mova @(0x38,PC),r0
	fmov @r0,fr4

loc_8c021136:
	mov 0x04,r0
	fmov fr4,@(r0,r5)
	mov 0x08,r0
	fmov fr4,@(r0,r5)
	mov 0x0C,r0
	rts
	fmov fr4,@(r0,r5)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0401
	#data 0x012c
	#data 0x0084
	#data 0x00cc
	#align4
	#data bank14.loc_8c147620
	#data bank04.loc_8c044f12
	#data 0xc10ccccd
	#data 0xc14fd70a
	#data loc_8c021118
	#data 0x8c26a944
	#data bank14.loc_8c147670
	#data work.GameGlobalPointer
	#data 0x3f4ccccd

;----------------------------------------------
loc_8c021170:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x12C,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0211d4
	mov r0,r4
	mov.w @(0x10C,PC),r0
	mov 0x01,r3
	mov.l @(0x11C,PC),r1
	mov.l @(0x118,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0xFE,PC),r0
	add 0x50,r1
	mov.l @r3,r2
	mov.l @(0x10,r2),r3
	mov 0x11,r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mova @(0x104,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0xF8,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xD4,PC),r3
	mov.l @r15,r1
	mov.w @(0xD2,PC),r0
	add r1,r3
	mov.l r3,@(r0,r4)
	add 0x08,r15
	bra loc_8c0211e0
	lds.l @r15+,pr

loc_8c0211d4:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8c0211dc:
	rts
	nop

loc_8c0211e0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xBC,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021222
	mov r0,r4
	mov.l @(0xB4,PC),r1
	mov 0x01,r5
	mov.l @(0xC0,PC),r3
	mov.w @(0x98,PC),r0
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(0x92,PC),r0
	mov.l @r2,r3
	mov.w @(0x90,PC),r2
	mov.l @(0xC,r3),r3
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0x7E,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c021222:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c02122a:
	rts
	nop

;----------------------------------------------
loc_8c02122e:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x70,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021290
	mov r0,r4
	mov.l @(0x64,PC),r1
	mov.l @(0x74,PC),r3
	mov.w @(0x52,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	add 0x50,r1
	mov.l @r2,r3
	mov.w @(0x40,PC),r2
	mov.l @(r0,r3),r0
	mov 0x31,r3
	add r4,r2
	mov.l r0,@r2
	mov.w @(0x3E,PC),r0
	mov.l r3,@(r0,r4)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @r15,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x3C,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x18,PC),r3
	mov.l @(0x4,r15),r1
	mov.w @(0x16,PC),r0
	add r1,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.b r2,@(r0,r4)

loc_8c021290:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#data 0x0088
	#data 0x00c8
	#data 0x02f0
	#data 0x00cc
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c0211dc
	#data 0x8c26a944
	#data 0xbdcccccd
	#data bank14.loc_8c147634
	#data bank12.loc_8c1294c8
	#data loc_8c02122a
	#data loc_8c0212c8
	#data 0xbc23d70a

;------------------------------------------------------------------------------
loc_8c0212c8:
	mov.l @(0xC8,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	mov 0x20,r3
	add r14,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf.s loc_8c021332
	mov 0x00,r4
	mov.w @(0xA2,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov.w @(0x9C,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0212fe
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0212fe:
	mova @(0x98,PC),r0
	mov.l @(0xA4,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x90,PC),r0
	mov.l @(0x94,PC),r3
	fmov @r0,fr2
	mova @(0x8C,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	bra loc_8c02133c
	fmov fr2,@(r0,r14)

loc_8c021332:
	mov.w @(0x54,PC),r0
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c02133c:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c021344:
	sts.l pr,@-r15
	mov.l @(0x64,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021384
	mov r0,r4
	mov.w @(0x30,PC),r0
	mov 0x01,r3
	mov.l @(0x58,PC),r1
	mov.l @(0x50,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0x26,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0x22,PC),r0
	mov.w @(0x22,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mova @(0x40,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0x3C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c021384:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0168
	#data 0x0200
	#data 0x0084
	#data 0x0401
	#align4

	#data work.GameGlobalPointer
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data bank04.loc_8c044f12
	#data loc_8c0213c0
	#data 0x8c26a944
	#data 0xc12ccccd
	#data 0xc14fd70a

;----------------------------------------------
loc_8c0213c0:
	mov.l @(0x94,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	fmov fr12,@-r15
	add 0x74,r4
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @(0x4,r0),r0
	cmp/eq 0x03,r0
	bf.s loc_8c021430
	mov 0x00,r5
	mov 0x0C,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x1C,r14),r0
	mov.w @(0x6C,PC),r2
	add 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r2,r0
	bf loc_8c0213f8
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c0213f8:
	mov.w @(0x1C,r14),r0
	mov.l @(0x60,PC),r3
	mov r0,r2
	lds r2,fpul
	mova @(0x5C,PC),r0
	mov.l @(0x6C,PC),r1
	fmov @r0,fr2
	mova @(0x5C,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x58,PC),r0
	mov.l @(0x5C,PC),r2
	fmov @r0,fr0
	fmov @r3,fr12
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r1
	and r2,r4
	mova @(0x50,PC),r0
	fmov fr0,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr12
	bra loc_8c02144e
	fmov fr12,@(r0,r14)

loc_8c021430:
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	mov r5,r0
	nop
	mov.l @(0x14,PC),r2
	mov.w r0,@(0x1C,r14)
	mov 0x38,r0
	fmov @r2,fr3
	fmov fr3,@(r0,r14)

loc_8c02144e:
	lds.l @r15+,pr
	fmov @r15+,fr12
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0168
	#align4
	#data work.GameGlobalPointer
	#data bank14.loc_8c14762c
	#data 0x47800000
	#data 0x43b40000
	#data 0x3f000000
	#data 0x0000ffff
	#data bank11.loc_8c11e860
	#data 0x3e4ccccd
	#data 0x3f4ccccd

;----------------------------------------------
loc_8c02147c:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov 0x05,r13
	sts.l pr,@-r15

loc_8c021486:
	bsr loc_8c021498
	mov r14,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c021486

loc_8c021490:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c021498:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0214ec
	mov r0,r4
	mov.l @(0x50,PC),r3
	mov 0x01,r5
	mov.w @(0x42,PC),r0
	mov.l @(0x50,PC),r1
	mov.l @(0x4C,PC),r2
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r3
	mov.l @r2,r0
	add r3,r1
	mov.b @r1,r3
	mov r4,r1
	mov.l @r0,r0
	add 0x34,r1
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r3
	mov.w @(0x26,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mov.l @r15,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x28,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x28,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8c0214ec:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c0214f4:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c0214f4
	#data 0x8c26a944
	#data bank14.loc_8c1476b4
	#data bank14.loc_8c147678
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c021514:
	sts.l pr,@-r15
	mov.l @(0x68,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02155e
	mov r0,r4
	mov.w @(0x50,PC),r0
	mov 0x01,r3
	mov.l @(0x5C,PC),r1
	mov.l @(0x54,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x42,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(0x3A,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x40,PC),r2
	mov.l @(0x44,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x50,r0
	fldi1 fr4
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c02155e:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c021564:
	mov.l @(0x2C,PC),r2
	mova @(0x30,PC),r0
	fmov @r0,fr2
	mov 0x50,r0
	mov.b @r2,r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr2,fr3
	rts
	fmov fr3,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0220
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c021564
	#data 0x8c26a944
	#data bank14.loc_8c1476bc
	#data bank12.loc_8c1294c8
	#data 0x8c212c3d
	#data 0x42c80000

;----------------------------------------------
loc_8c02159c:
	sts.l pr,@-r15
	mov.l @(0x40,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0215d0
	mov r0,r4
	mov.l @(0x34,PC),r2
	mov 0x01,r3
	mov.w @(0x24,PC),r0
	mov.l @(0x34,PC),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.b @r1,r2
	mov.l @(0x28,PC),r3
	extu.b r2,r2
	mov.l @r3,r0
	neg r2,r2
	add 0x7F,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r2
	mov.w @(0xC,PC),r0
	mov.l r2,@(r0,r4)

loc_8c0215d0:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c0215d6:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c0215d6
	#data 0x8c26a944
	#data 0x8c212c4d

;----------------------------------------------
loc_8c0215f0:
	sts.l pr,@-r15
	mov.l @(0x48,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021612
	mov r0,r4
	mov.w @(0x2C,PC),r0
	mov 0x01,r3
	mov.l @(0x38,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.w @(0x24,PC),r3
	mov.l r2,@(0x10,r4)
	mov.b r3,@(r0,r4)

loc_8c021612:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c021618:
	mov.l @(0x2C,PC),r0
	mov.l @(0x28,PC),r1
	mov.l @r0,r3
	mov.l @r1,r2
	mov.b @(0x4,r3),r0
	mov.l @r2,r3
	mov.w @(0xE,PC),r2
	shll2 r0
	add r3,r0
	mov.l @(r0,r2),r2
	mov.w @(0x8,PC),r0
	rts
	mov.l r2,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x008a
	#data 0x0228
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c021618
	#data 0x8c26a944
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c02164c:
	mov.l r14,@-r15
	mova @(0xD0,PC),r0
	fmov fr15,@-r15
	mov 0x02,r5
	fmov fr14,@-r15
	mov 0x00,r7
	mov.l @(0xC0,PC),r14
	fmov fr13,@-r15
	sts.l pr,@-r15
	mov.l @(0xC4,PC),r6
	fmov @r0,fr4
	fldi1 fr15
	fldi0 fr14
	mov.b @r14,r4
	fmov fr15,fr7
	fmov fr14,fr5
	fmov fr15,fr6
	bsr loc_8c0216d6
	extu.b r4,r4
	mova @(0xB4,PC),r0
	mov.l @(0xB4,PC),r6
	fmov @r0,fr13
	mov 0x12,r0
	mov.b @(r0,r14),r4
	mov 0x02,r5
	fmov fr13,fr4
	mov 0x01,r7
	fmov fr15,fr7
	fmov fr14,fr5
	fmov fr15,fr6
	bsr loc_8c0216d6
	extu.b r4,r4
	mov 0x13,r0
	mov.l @(0xA0,PC),r6
	mov 0x02,r7
	mov.b @(r0,r14),r4
	mov r7,r5
	fmov fr15,fr6
	fmov fr15,fr7
	fmov fr13,fr4
	fmov fr14,fr5
	bsr loc_8c0216d6
	extu.b r4,r4
	mov 0x14,r0
	mov.l @(0x8C,PC),r6
	mov.b @(r0,r14),r4
	mov 0x02,r5
	fmov fr13,fr4
	mov 0x03,r7
	fmov fr15,fr7
	fmov fr14,fr5
	fmov fr15,fr6
	bsr loc_8c0216d6
	extu.b r4,r4
	lds.l @r15+,pr
	fmov fr14,fr6
	mova @(0x78,PC),r0
	fmov fr14,fr7
	mov 0x00,r7
	fmov @r15+,fr13
	mov 0x04,r5
	fmov fr15,fr5
	fmov @r15+,fr14
	fmov @r0,fr4
	fmov @r15+,fr15
	mov.w @(0x2,r14),r0
	mov.l @r15+,r14
	mov.l @(0x68,PC),r6
	extu.w r0,r4

loc_8c0216d6:
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
	add 0xF0,r15
	mov 0x04,r0
	mov.l r4,@(0x8,r15)
	mov r5,r11
	mov 0x00,r4
	mov.w @(0x1C,PC),r8
	mov r11,r3
	add 0xFF,r3
	mov r4,r14
	mov 0x01,r12
	fmov fr6,fr12
	fmov fr5,fr13
	mov r4,r10
	mov.l r6,@r15
	mov r7,r9
	fmov fr4,@(r0,r15)
	mova @(0x30,PC),r0
	fmov @r0,fr15
	fmov fr7,fr14
	bra loc_8c0217ee
	mov.l r3,@(0xC,r15)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0094
	#align4
	#data 0x8c212c3c
	#data 0x3f000000
	#data bank14.loc_8c1476d4
	#data 0x3ecccccd
	#data bank14.loc_8c1476e0
	#data bank14.loc_8c1476ec
	#data bank14.loc_8c1476f8
	#data 0x3f333333
	#data bank14.loc_8c147704
	#data 0x41200000

;----------------------------------------------
loc_8c021744:
	mov r11,r1
	sub r14,r1
	add 0xFF,r1
	mov.l @(0x110,PC),r3
	lds r1,fpul
	float fpul,fr3
	fmov fr3,fr5
	jsr @r3
	fmov fr15,fr4
	ftrc fr0,fpul
	mov.l @(0x104,PC),r3
	sts fpul,r0
	jsr @r3
	mov.l @(0x8,r15),r1
	tst r9,r9
	bf.s loc_8c021774
	mov r0,r13
	tst r13,r13
	bf loc_8c021774
	tst r10,r10
	bf loc_8c021774
	mov.l @(0xC,r15),r2
	cmp/eq r2,r14
	bf loc_8c0217ec

loc_8c021774:
	mov.l @(0xEC,PC),r3
	mov 0x0A,r0
	mov r12,r10
	jsr @r3
	mov r13,r1
	mov.l @(0xE8,PC),r2
	mov 0x0B,r5
	mov r0,r13
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0217f2
	mov r0,r4
	mov.w @(0xC0,PC),r0
	shll2 r13
	mov.l @(0xD8,PC),r2
	mov.b r12,@(r0,r4)
	mov.l @(0xD0,PC),r3
	mov.w @(0xBA,PC),r1
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r0,r0
	add r13,r0
	mov.l @(r0,r8),r3
	mov.w @(0xAC,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r9,@(r0,r4)
	mov r4,r1
	mov.l @(0xBC,PC),r3
	mov 0x21,r0
	add 0x34,r1
	mov.b r14,@(r0,r4)
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	lds r14,fpul
	mov r15,r1
	add 0x04,r1
	mov.l @(0xAC,PC),r2
	mov 0x34,r0
	fmov @r1,fr0
	float fpul,fr3
	fmov @(r0,r4),fr2
	mov.l @(0xA0,PC),r3
	mov r4,r1
	add 0x50,r1
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov 0x78,r0
	fmov fr13,@(r0,r4)
	mov 0x7C,r0
	fmov fr12,@(r0,r4)
	add 0x04,r0
	fmov fr14,@(r0,r4)

loc_8c0217ec:
	add 0x01,r14

loc_8c0217ee:
	cmp/ge r11,r14
	bf loc_8c021744

loc_8c0217f2:
	add 0x10,r15
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
loc_8c02180e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x20,r0
	mov.l r12,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(0x58,PC),r13
	tst r3,r3
	bt loc_8c0218c8
	mova @(0x58,PC),r0
	mov.l @(0x30,PC),r12
	fmov @r0,fr15
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c021842
	cmp/eq 0x02,r0
	bt loc_8c02184a
	cmp/eq 0x03,r0
	bt loc_8c021884
	bra loc_8c0218ac
	nop

loc_8c021842:
	mov 0x12,r0
	mov.b @(r0,r13),r1
	bra loc_8c02188c
	extu.b r1,r8

loc_8c02184a:
	mov 0x13,r0
	mov.b @(r0,r13),r1
	extu.b r1,r1
	bra loc_8c02188c
	mov r1,r8

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#data 0x0411
	#align4

	#data bank11.loc_8c11e680
	#data bank12.loc_8c129128
	#data bank12.loc_8c1292d4
	#data bank04.loc_8c044f12
	#data loc_8c02180e
	#data 0x8c26a944
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c1476c8
	#data 0x8c212c3c
	#data 0x41200000

;----------------------------------------------
loc_8c021884:
	mov 0x14,r0
	mov.b @(r0,r13),r1
	extu.b r1,r1
	mov r1,r8

loc_8c02188c:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	neg r3,r3
	add 0x01,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr5
	jsr @r12
	fmov fr15,fr4
	ftrc fr0,fpul
	mov.l @(0x34,PC),r3
	sts fpul,r0
	jsr @r3
	mov r8,r1
	mov r0,r4

loc_8c0218ac:
	mov.l @(0x2C,PC),r3
	mov 0x0A,r0
	jsr @r3
	mov r4,r1
	mov.l @(0x28,PC),r1
	mov r0,r4
	mov.w @(0x1A,PC),r0
	shll2 r4
	mov.l @r1,r2
	mov.l @r2,r3
	add r3,r4
	mov.l @(r0,r4),r2
	add 0xF0,r0
	mov.l r2,@(r0,r14)

loc_8c0218c8:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0094
	#align4
	#data bank12.loc_8c129128
	#data bank12.loc_8c1292d4
	#data 0x8c26a944

;----------------------------------------------
loc_8c0218e4:
	rts
	nop

;----------------------------------------------
loc_8c0218e8:
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c021918
	mov 0x00,r4
	mov r4,r0
	nop
	mov.l @(0xD8,PC),r1
	mov.w r0,@(0x1E,r14)
	mov 0x74,r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr1
	fldi0 fr2
	fcmp/gt fr1,fr2
	bf loc_8c02195e
	bra loc_8c02195e
	fmov fr2,@(r0,r14)

loc_8c021918:
	mov.w @(0x1E,r14),r0
	mov.w @(0xB6,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c02192c
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c02192c:
	mova @(0xAC,PC),r0
	mov.l @(0xBC,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xA4,PC),r0
	mov.l @(0xAC,PC),r3
	fmov @r0,fr2
	mova @(0xA4,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c02195e:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c021966:
	mov.l @(0x88,PC),r5
	tst r4,r4
	mova @(0x6C,PC),r0
	bt.s loc_8c021986
	fmov @r0,fr4
	mov.l @r5,r2
	mov 0x74,r0
	fldi1 fr3
	fmov @(r0,r2),fr2
	fcmp/gt fr2,fr3
	bf loc_8c02199a
	mov.l @r5,r2
	fmov @(r0,r2),fr2
	fadd fr4,fr2
	bra loc_8c02199a
	fmov fr2,@(r0,r2)

loc_8c021986:
	mov.l @r5,r2
	mov 0x74,r0
	fldi0 fr3
	fmov @(r0,r2),fr2
	fcmp/gt fr3,fr2
	bf loc_8c02199a
	mov.l @r5,r2
	fmov @(r0,r2),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r2)

loc_8c02199a:
	rts
	nop

;----------------------------------------------
loc_8c02199e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x44,PC),r3
	jsr @r3
	mov 0x03,r4
	mov r0,r6
	mova @(0x40,PC),r0
	fmov @r0,fr4
	mov.b @(0x4,r14),r0
	mov.l @(0x3C,PC),r4
	extu.b r0,r0
	mov.l @(0x3C,PC),r11
	cmp/eq 0x00,r0
	bt.s loc_8c021a04
	mov 0x00,r13
	cmp/eq 0x01,r0
	bt loc_8c021a3e
	cmp/eq 0x02,r0
	bt loc_8c021aca
	bra loc_8c021bc8
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0168
	#align4
	#data 0x3dcccccd
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data 0x8c1f8bc8
	#data bank01.loc_8c01357a
	#data 0x41f00000
	#data bank14.loc_8c14774c
	#data 0x8c1f8bc0

;----------------------------------------------
loc_8c021a04:
	mova @(0x130,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov r12,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.l @r11,r3
	mov.b r0,@(0x5,r3)
	mov.l @(0x4,r11),r3
	mov r12,r0
	nop
	mov.b r0,@(0x5,r3)
	bra loc_8c021bc8
	nop

loc_8c021a3e:
	mov.w @(0xF0,PC),r3
	extu.w r6,r5
	mova @(0xFC,PC),r0
	tst r5,r3
	bt.s loc_8c021a7e
	fmov @r0,fr5
	mov 0x23,r0
	mov.b @(r0,r14),r1
	mov 0x04,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bt loc_8c021a7e
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c021a64
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c021a64:
	mov 0x22,r0
	mov r4,r5
	mov.b r13,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	add r3,r5
	fmov @(r0,r5),fr6
	fmov @r5,fr0
	bra loc_8c021aba
	fsub fr0,fr6

loc_8c021a7e:
	mov.w @(0xB2,PC),r3
	tst r3,r5
	bf loc_8c021a88
	bra loc_8c021bc8
	nop

loc_8c021a88:
	mov 0x23,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c021a94
	bra loc_8c021bc8
	nop

loc_8c021a94:
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c021aa2
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c021aa2:
	mov 0x22,r0
	mov.b r12,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r5
	extu.b r5,r0
	add 0xFF,r0
	shll2 r0
	fmov @(r0,r4),fr6
	extu.b r5,r0
	shll2 r0
	fmov @(r0,r4),fr2
	fsub fr2,fr6

loc_8c021aba:
	fmov fr6,fr3
	fdiv fr4,fr3
	fmov fr6,fr2
	mov 0x60,r0
	fmov fr5,fr0
	fmac fr0,fr3,fr2
	bra loc_8c021bac
	fmov fr2,@(r0,r14)

loc_8c021aca:
	mova @(0x78,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c021b6a
	mov 0x22,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c021ae6
	mov 0x23,r0
	mov.b @(r0,r14),r2
	bra loc_8c021aec
	add 0x01,r2

loc_8c021ae6:
	mov 0x23,r0
	mov.b @(r0,r14),r2
	add 0xFF,r2

loc_8c021aec:
	mov.b r2,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov r12,r0
	nop
	mov.b r0,@(0x4,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c021b16
	mov r11,r4
	mov.l @r4,r1
	mov r13,r0
	nop
	bra loc_8c021b50
	mov.b r0,@(0x5,r1)

loc_8c021b16:
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c021b48
	mov.l @r4,r2
	mov r12,r0
	nop
	mov.b r0,@(0x5,r2)
	mov.l @(0x4,r11),r3
	mov r13,r0
	nop
	mov.b r0,@(0x5,r3)
	bra loc_8c021b58
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x1000
	#data 0x2000
	#align4
	#data 0xc1280000
	#data 0xc151eb85
	#data 0x3fc00000
	#data 0x43340000

;----------------------------------------------
loc_8c021b48:
	mov.l @r4,r2
	mov r12,r0
	nop
	mov.b r0,@(0x5,r2)

loc_8c021b50:
	mov.l @(0x4,r11),r3
	mov r12,r0
	nop
	mov.b r0,@(0x5,r3)

loc_8c021b58:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c021bc8
	mov r12,r0
	nop
	bra loc_8c021bc8
	mov.w r0,@(0x1C,r14)

loc_8c021b6a:
	mov 0x60,r0
	mov.l @(0x120,PC),r2
	fmov @(r0,r14),fr15
	mova @(0x10C,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov @(r0,r14),fr1
	mova @(0x108,PC),r0
	fmov @r0,fr0
	mova @(0x108,PC),r0
	fmul fr2,fr1
	fmov @r0,fr3
	fdiv fr4,fr15
	mov.l @(0x104,PC),r3
	fdiv fr0,fr1
	fadd fr3,fr1
	ftrc fr1,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmul fr0,fr15
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.l @(0xF8,PC),r1
	fadd fr15,fr3
	lds r1,fpul
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	bra loc_8c021bc8
	fmov fr2,@(r0,r14)

loc_8c021bac:
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x01,r4
	mov 0x02,r0
	fldi0 fr3
	mov.b r0,@(0x4,r14)
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.l @r11,r3
	mov r13,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @(0x4,r11),r3
	mov.b r0,@(0x5,r3)

loc_8c021bc8:
	lds.l @r15+,pr
	mov.w @(0x1C,r14),r0
	fmov @r15+,fr15
	mov r0,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c021966
	mov.l @r15+,r14

;----------------------------------------------
loc_8c021bda:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov.w @(0x8A,PC),r5
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r5,r0
	bf.s loc_8c021c00
	mov 0x00,r4
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c021c00:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r5,r0
	bf loc_8c021c12
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c021c12:
	mov.l @(0x88,PC),r3
	mov.w @(0x64,PC),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @(0x84,PC),r1
	mov.w @(0x5E,PC),r0
	mov.l @r4,r2
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(0x84,PC),r13
	mova @(0x88,PC),r0
	mov.l @(0x7C,PC),r12
	mov.l @(0x78,PC),r11
	bra loc_8c021c62
	fmov @r0,fr15

loc_8c021c30:
	mov r15,r5
	add 0x04,r5
	jsr @r13
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r12
	mov r15,r4

loc_8c021c62:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c021c30
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x03e8
	#data 0x0084
	#data 0x0414
	#align4
	#data 0x47800000
	#data 0x43b40000
	#data 0x3f000000
	#data 0x0000ffff
	#data bank11.loc_8c11e860
	#data 0x40800000
	#data bank04.loc_8c04257c
	#data 0x8c26a944
	#data bank10.loc_8c108060
	#data bank10.loc_8c108086
	#data bank10.loc_8c1081e6
	#data bank10.loc_8c108192
	#data 0x3a83126f

;----------------------------------------------
loc_8c021cb4:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(0xEC,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c021cce
	mov r0,r4
	bra loc_8c021e00
	nop

loc_8c021cce:
	mov.l @(0xDC,PC),r3
	mov 0x01,r5
	mov.w @(0xCA,PC),r0
	mov r14,r6
	mov.l @(0xDC,PC),r2
	shll r6
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r14,r3
	mov.l @(0xCC,PC),r0
	shll2 r3
	mov.l @(r0,r3),r1
	mov.l @r2,r0
	shll2 r1
	mov.l @r0,r3
	add r3,r1
	mov r14,r3
	mov.l @r1,r0
	add r3,r6
	mov.w @(0xAA,PC),r1
	shll2 r6
	add r4,r1
	mov.l r0,@r1
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.l @(0xB4,PC),r1
	mov.w @(0x9E,PC),r0
	add r1,r6
	mov.l r5,@(r0,r4)
	mov 0x34,r0
	fmov @r6,fr3
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fldi0 fr4
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov 0x3C,r0
	mov.l @(0x9C,PC),r6
	fmov fr3,@(r0,r4)
	mov r14,r0
	nop
	cmp/eq 0x02,r0
	bt.s loc_8c021d50
	mov 0x20,r7
	cmp/eq 0x06,r0
	bt loc_8c021d56
	cmp/eq 0x07,r0
	bt loc_8c021d6a
	cmp/eq 0x08,r0
	bt loc_8c021d8a
	cmp/eq 0x09,r0
	bt loc_8c021d9a
	cmp/eq 0x0A,r0
	bt loc_8c021dd0
	cmp/eq 0x0B,r0
	bt loc_8c021dd0
	cmp/eq 0x0C,r0
	bt loc_8c021dee
	cmp/eq 0x0D,r0
	bt loc_8c021dee
	bra loc_8c021e00
	nop

loc_8c021d50:
	mov.l @(0x6C,PC),r3
	bra loc_8c021e00
	mov.l r3,@(0x10,r4)

loc_8c021d56:
	mov.w @(0x4A,PC),r0
	mov.l @(0x68,PC),r3
	mov.l @(r0,r4),r1
	or r7,r1
	mov.l r1,@(r0,r4)
	mov 0x00,r0
	mov.l r3,@(0x10,r4)
	mov.b r0,@(0x5,r4)
	bra loc_8c021e00
	mov.l r4,@r6

loc_8c021d6a:
	mov.w @(0x36,PC),r0
	mov.w @(0x34,PC),r1
	mov.l @(r0,r4),r0
	add r4,r1
	mov.l @(0x50,PC),r2
	or 0x28,r0
	mov.l @(0x50,PC),r3
	mov.l r0,@r1
	mov 0x48,r0
	mov.l r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x5,r4)
	bra loc_8c021e00
	mov.l r4,@(0x4,r6)

loc_8c021d8a:
	mov.w @(0x16,PC),r0
	mov.l @(r0,r4),r2
	or r7,r2
	mov.l r2,@(r0,r4)
	mov 0x74,r0
	fmov fr4,@(r0,r4)
	bra loc_8c021e00
	mov.l r4,@(0x8,r6)

loc_8c021d9a:
	mov.l @(0x30,PC),r2
	bra loc_8c021e00
	mov.l r2,@(0x10,r4)

;##############################################
	#data 0x012c
	#data 0x0084
	#data 0x00cc
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c0218e4
	#data bank14.loc_8c147760
	#data 0x8c26a944
	#data bank14.loc_8c147798
	#data 0x8c1f8bc0
	#data loc_8c02199e
	#data loc_8c0218e8
	#data 0x00008000
	#data loc_8c021bda

;----------------------------------------------
loc_8c021dd0:
	mov.w @(0x34,PC),r0
	mov.w @(0x30,PC),r3
	mov.l @(r0,r4),r1
	fldi1 fr3
	or r3,r1
	mov.l r1,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mova @(0x28,PC),r0
	fmov @r0,fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	add 0x04,r0
	bra loc_8c021e00
	fmov fr4,@(r0,r4)


loc_8c021dee:
	mov.w @(0x16,PC),r0
	mov.w @(0x14,PC),r1
	mov.l @(r0,r4),r0
	add r4,r1
	mov.w @(0x10,PC),r3
	or 0x08,r0
	mov.l r0,@r1
	mov 0x48,r0
	mov.l r3,@(r0,r4)

loc_8c021e00:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0400
	#data 0x00cc
	#data 0x0aab
	#align4
	#data 0x3f19999a

;----------------------------------------------
loc_8c021e10:
	rts
	nop

;----------------------------------------------
loc_8c021e14:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bt loc_8c021ec2
	mov.w @(0x10C,PC),r0
	mov.l @(r0,r4),r5
	mova @(0x110,PC),r0
	fmov @r0,fr5
	mova @(0x110,PC),r0
	fmov @r0,fr4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c021e7a
	mov 0x50,r0
	fmov @(r0,r4),fr3
	tst r5,r5
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	bt.s loc_8c021e50
	fmov fr2,@(r0,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fadd fr5,fr3
	fmov fr3,@(r0,r5)
	mov 0x54,r0
	fmov @(r0,r5),fr2
	fadd fr5,fr2
	fmov fr2,@(r0,r5)

loc_8c021e50:
	mova @(0xE4,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bt loc_8c021ec2
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	tst r5,r5
	mov 0x50,r0
	bt.s loc_8c021e74
	fmov fr4,@(r0,r4)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r5)
	mov 0x50,r0
	fmov fr3,@(r0,r5)

loc_8c021e74:
	mov 0x01,r0
	bra loc_8c021ec2
	mov.b r0,@(0x5,r4)

loc_8c021e7a:
	mov 0x50,r0
	fmov @(r0,r4),fr3
	tst r5,r5
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fsub fr4,fr2
	bt.s loc_8c021e9e
	fmov fr2,@(r0,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fsub fr5,fr3
	fmov fr3,@(r0,r5)
	mov 0x54,r0
	fmov @(r0,r5),fr2
	fsub fr5,fr2
	fmov fr2,@(r0,r5)

loc_8c021e9e:
	mova @(0xA0,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr4,fr3
	bt loc_8c021ec2
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	tst r5,r5
	mov 0x50,r0
	bt.s loc_8c021ebe
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r5)
	mov 0x50,r0
	fmov fr4,@(r0,r5)

loc_8c021ebe:
	mov 0x00,r0
	mov.b r0,@(0x5,r4)

loc_8c021ec2:
	rts
	nop

;----------------------------------------------
loc_8c021ec6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov r13,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x01,r10
	mov.l r9,@-r15
	mov 0x37,r9
	mov.w @(0x4E,PC),r11
	mov.l r8,@-r15
	mov 0x38,r8

loc_8c021ee0:
	tst r5,r5
	bt loc_8c021efa
	mov.b @(0x5,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r4)
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq r11,r0
	bf loc_8c021f0e
	mov r9,r0
	nop
	bra loc_8c021f0e
	mov.b r0,@(0x5,r4)

loc_8c021efa:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x38,r0
	bf loc_8c021f0e
	mov r13,r0
	nop
	mov.b r0,@(0x5,r4)

loc_8c021f0e:
	mov.b @(0x5,r4),r0
	mov 0x20,r2
	mov.l @(0x30,PC),r1
	extu.b r0,r0
	mov.l @(0x30,PC),r3
	mov.b @(r0,r1),r6
	extu.b r6,r6
	cmp/ge r2,r6
	bf.s loc_8c021f4c
	mov.l @r3,r14
	mov r14,r7
	sub r2,r6
	bra loc_8c021f50
	add 0x34,r7

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00d4
	#data 0x00ff
	#align4
	#data 0x3c5a740e
	#data 0x3c23d70b
	#data 0x3fa66666
	#data 0x3fb33333
	#data 0x3f8147ae
	#data bank14.loc_8c147840
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c021f4c:
	mov r14,r7
	add 0x30,r7

loc_8c021f50:
	mov.l @r7,r2
	mov r10,r3
	shad r6,r3
	tst r2,r3
	bf loc_8c021f64
	add 0x01,r12
	cmp/ge r8,r12
	bf loc_8c021ee0
	mov.b @(0x6,r4),r0
	mov.b r0,@(0x5,r4)

loc_8c021f64:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c021f74:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x6C,PC),r3
	mov r4,r14
	jsr @r3
	mov 0x03,r4
	mov.l @(0x68,PC),r11
	mov r0,r5
	mov.w @(0x5A,PC),r0
	mov.l @(0x34,r11),r13
	mov.l @(r0,r13),r4
	mov 0x23,r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c021fac
	mov 0x00,r10
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c021fb4
	bra loc_8c021fba
	nop

loc_8c021fac:
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c021fba

loc_8c021fb4:
	mov.w @(0x3A,PC),r0
	bra loc_8c022224
	mov.b r10,@(r0,r4)

loc_8c021fba:
	mov.w @(0x34,PC),r0
	mov 0x01,r13
	mov.b r13,@(r0,r4)
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c021fdc
	mov 0x0A,r8
	mov r13,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r10,r0
	nop
	mov.b r0,@(0x5,r14)
	mov r13,r0
	nop
	bra loc_8c02203e
	mov.b r0,@(0x6,r14)

loc_8c021fdc:
	mov.b @(0x5,r14),r0
	extu.w r5,r5
	mov.b r0,@(0x6,r14)
	mov.l r5,@r15
	mov r5,r0
	nop
	tst 0x40,r0
	bt loc_8c021ffc
	bra loc_8c021ffe
	mov r8,r12

;###############################################
	#data 0x00d4
	#data 0x012c
	#align4
	#data bank01.loc_8c01357a
	#data 0x8c1f8bcc

;----------------------------------------------
loc_8c021ffc:
	mov r13,r12

loc_8c021ffe:
	mov.l @r15,r2
	mov.w @(0x124,PC),r3
	tst r3,r2
	bt loc_8c02201e
	cmp/pl r12
	bf.s loc_8c022018
	mov r10,r9

loc_8c02200c:
	mov 0x00,r5
	bsr loc_8c021ec6
	mov r14,r4
	add 0x01,r9
	cmp/ge r12,r9
	bf loc_8c02200c

loc_8c022018:
	mov.l @(0x114,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c02201e:
	mov.l @r15,r2
	mov.w @(0x106,PC),r3
	tst r3,r2
	bt loc_8c02203e
	cmp/pl r12
	bf.s loc_8c022038
	mov r10,r9

loc_8c02202c:
	mov 0x01,r5
	bsr loc_8c021ec6
	mov r14,r4
	add 0x01,r9
	cmp/ge r12,r9
	bf loc_8c02202c

loc_8c022038:
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c02203e:
	mov.b @(0x5,r14),r0
	mov r0,r3
	mov.b @(0x6,r14),r0
	cmp/eq r0,r3
	bf loc_8c02204c
	bra loc_8c022224
	nop

loc_8c02204c:
	mov.b @(0x5,r14),r0
	mov r15,r4
	mov.l @(0xE0,PC),r5
	add 0x04,r4
	extu.b r0,r0
	mov r4,r7
	mov.b @(r0,r5),r3
	mov 0x18,r6
	extu.b r3,r3
	mov r3,r2
	cmp/ge r6,r2
	mov.l r3,@r7
	bf.s loc_8c02206e
	mov r4,r7
	mov.l @r4,r1
	add 0xFD,r1
	mov.l r1,@r4

loc_8c02206e:
	mov.b @(0x6,r14),r0
	add 0x04,r7
	extu.b r0,r0
	mov.b @(r0,r5),r3
	extu.b r3,r3
	mov r3,r2
	cmp/ge r6,r2
	mov.l r3,@r7
	bf loc_8c022086
	mov.l @(0x4,r4),r1
	add 0xFD,r1
	mov.l r1,@(0x4,r4)

loc_8c022086:
	mov.l @(0xB0,PC),r7
	mov r4,r0
	nop
	mov.l r0,@r15
	mov.l @r0,r0
	shll2 r0
	mov.l @(r0,r7),r5
	mov r13,r0
	nop
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x4,r5)
	mov.w @(0x8C,PC),r0
	fldi1 fr4
	fmov fr4,@(r0,r5)
	mov 0x7C,r0
	fmov fr4,@(r0,r5)
	mov 0x78,r0
	fmov fr4,@(r0,r5)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r5)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r5)
	mov 0x50,r0
	fmov fr3,@(r0,r5)
	mov.l @r15,r0
	mov.l @r0,r0
	shll2 r0
	mov.l @(r0,r7),r5
	mov.w @(0x64,PC),r0
	mov.l @(r0,r5),r5
	tst r5,r5
	bt loc_8c0220e2
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r5)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r5)
	mov 0x50,r0
	fmov fr3,@(r0,r5)

loc_8c0220e2:
	mov r4,r0
	nop
	add 0x04,r0
	mov.l r0,@r15
	mov.l @r0,r0
	shll2 r0
	mov.l @(r0,r7),r5
	mov r10,r0
	nop
	mov.b r0,@(0x4,r5)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov.w @(0x2E,PC),r0
	fmov fr3,@(r0,r5)
	mov 0x7C,r0
	fmov fr3,@(r0,r5)
	mov 0x78,r0
	fmov fr3,@(r0,r5)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r5)
	mov 0x54,r0
	fmov fr4,@(r0,r5)
	mov 0x50,r0
	fmov fr4,@(r0,r5)
	mov.l @r15,r0
	mov.l @r0,r0
	shll2 r0
	mov.l @(r0,r7),r5
	mov.w @(0xC,PC),r0
	mov.l @(r0,r5),r5
	tst r5,r5
	bra loc_8c022154
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0400
	#data 0x0800
	#data 0x0080
	#data 0x00d4
	#align4
	#data bank04.loc_8c04257c
	#data bank14.loc_8c147840
	#data 0x8c1f8c1c
	#data 0xc14d999a
	#data 0x3fa66666
	#data 0xc14d851f
	#data 0x3fb33333
	#data 0x3f4ccccd
	#data 0xc14e147b

;----------------------------------------------
loc_8c022154:
	bt loc_8c022166
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r5)
	mov 0x54,r0
	fmov fr4,@(r0,r5)
	mov 0x50,r0
	fmov fr4,@(r0,r5)

loc_8c022166:
	mov.l @(0x120,PC),r5
	mov r4,r7
	mov.l @r7,r1
	mov.l @r5,r2
	mov.w @(0x106,PC),r0
	shll2 r1
	mov.l @r2,r2
	mov.l @(0x8,r11),r3
	add r2,r1
	mov.l @(r0,r1),r1
	add 0x9C,r0
	mov.l r1,@(r0,r3)
	mov.l @r5,r2
	mov.l @r7,r1
	mov.l @r2,r2
	shll2 r1
	mov.w @(0xF0,PC),r0
	add r2,r1
	mov.l @(0xC,r11),r3
	mov.l @(r0,r1),r1
	mov.w @(0xEA,PC),r0
	mov.l r1,@(r0,r3)
	mov r0,r1
	mov.l @(0x10,r11),r3
	add r3,r1
	mov.l r1,@-r15
	mov.b @(0x5,r14),r0
	mov.l @r5,r2
	extu.b r0,r1
	add 0x01,r1
	mov r8,r0
	nop
	mov.l @(0xE4,PC),r3
	jsr @r3
	nop
	mov.l @r2,r2
	shll2 r0
	mov.w @(0xCA,PC),r3
	add r2,r0
	mov.l @r15+,r2
	mov.l @(r0,r3),r3
	mov.l r3,@r2
	mov.b @(0x5,r14),r0
	mov.l @(0x14,r11),r2
	extu.b r0,r1
	add 0x01,r1
	mov r8,r0
	nop
	mov.l @(0xC8,PC),r3
	jsr @r3
	nop
	mov.l @r5,r3
	shll2 r0
	mov.l @r3,r1
	mov.w @(0xA8,PC),r3
	add r1,r0
	mov.l @(r0,r3),r3
	mov.w @(0xA0,PC),r0
	mov.l r3,@(r0,r2)
	mov.l @r7,r2
	cmp/ge r6,r2
	bf loc_8c0221e8
	mov.l @r4,r1
	add 0x03,r1
	mov.l r1,@r4

loc_8c0221e8:
	mov r4,r5
	mov.l @r5,r2
	mov 0x20,r3
	mov.l @(0xA4,PC),r6
	cmp/ge r3,r2
	bf loc_8c022200
	mov.l @r5,r0
	sub r3,r0
	mov.l r0,@r5
	mov.l @r6,r5
	bra loc_8c022204
	add 0x3C,r5

loc_8c022200:
	mov.l @r6,r5
	add 0x38,r5

loc_8c022204:
	mov.l @r4,r3
	mov r13,r2
	mov.l @r5,r1
	mov r11,r6
	shad r3,r2
	tst r1,r2
	bt.s loc_8c02221e
	add 0x04,r6
	mov.w @(0x68,PC),r3
	mov.l @r6,r0
	add r0,r3
	bra loc_8c022224
	mov.b r13,@r3

loc_8c02221e:
	mov.w @(0x5E,PC),r0
	mov.l @r6,r1
	mov.b r10,@(r0,r1)

loc_8c022224:
	add 0x0C,r15
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
loc_8c022238:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov 0x32,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c02225a
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c02225a:
	mov.l @(0x2C,PC),r3
	mov.w @(0x1C,PC),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @(0x34,PC),r1
	mov.w @(0x1A,PC),r0
	mov.l @r4,r2
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(0x34,PC),r13
	mova @(0x38,PC),r0
	mov.l @(0x2C,PC),r12
	mov.l @(0x28,PC),r11
	bra loc_8c0222de
	fmov @r0,fr15

;----------------------------------------------
	#data 0x00e8
	#data 0x032c
	#data 0x0084
	#data 0x0094
	#data 0x012c
	#data 0x0324
	#align4
	#data 0xc14dc28f
	#data 0x8c26a944
	#data bank12.loc_8c1292d4
	#data bank12.loc_8c129128
	#data work.GameGlobalPointer
	#data bank10.loc_8c108060
	#data bank10.loc_8c1081e6
	#data bank10.loc_8c108086
	#data bank10.loc_8c108192

loc_8c0222a8:
	#data 0x3ca3d70a

;----------------------------------------------
loc_8c0222ac:
	mov r15,r5
	add 0x04,r5
	jsr @r13
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r11
	mov r15,r4

loc_8c0222de:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c0222ac
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0222f6:
	mov.l r14,@-r15
	mov r4,r14
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
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x03,r4
	mov r0,r4
	mova @(0x50,PC),r0
	fmov @r0,fr12
	mova @(0x54,PC),r0
	fmov @r0,fr13
	mova @(0x54,PC),r0
	fmov @r0,fr14
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0xF7,r8
	mov.l @(0x50,PC),r13
	mov 0x01,r11
	mov.l @(0x40,PC),r9
	tst r3,r3
	mov.w @(0x2E,PC),r5
	mov 0x00,r12
	fldi1 fr15
	bt.s loc_8c022340
	extu.w r4,r10
	bra loc_8c022530
	nop

loc_8c022340:
	mova @(0x3C,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c022388
	mov r12,r0
	nop
	mov.b r0,@(0x5,r14)
	mov r11,r0
	nop
	bra loc_8c0223c0
	mov.b r0,@(0x4,r14)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x2000
	#align4
	#data bank01.loc_8c01357a
	#data 0x40c0a3d7
	#data bank04.loc_8c04257c
	#data 0x3f4ccccd
	#data 0x3f000000
	#data 0x8c1f8bcc
	#data 0x40370a3d
	#data 0xc14deb85

;----------------------------------------------
loc_8c022388:
	tst r10,r5
	bt loc_8c0223a2
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c0223a2
	mov.b @(0x5,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r14)
	mov r8,r0
	nop
	mov.w r0,@(0x1E,r14)
	jsr @r9
	mov 0x01,r4

loc_8c0223a2:
	mov.w @(0xC0,PC),r3
	tst r3,r10
	bt loc_8c0223c0
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c0223c0
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r8,r0
	nop
	mov.w r0,@(0x1E,r14)
	jsr @r9
	mov 0x01,r4
 
loc_8c0223c0:
	mova @(0xB0,PC),r0
	mov.l @(0xAC,PC),r6
	fmov @r0,fr4
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c022414
	mov.w @(0x96,PC),r0
	mov.b r11,@(r0,r14)
	mov 0x34,r0
	fmov fr12,@(r0,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr15,@(r0,r14)
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x40,r0
	mov.l @(r0,r13),r3
	mov.w @(0x6E,PC),r0
	mov.b r12,@(r0,r3)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)
	mov 0x4C,r0
	mov.l @(r0,r13),r4
	add 0x34,r0
	fmov fr15,@(r0,r4)
	mov 0x7C,r0
	fmov fr15,@(r0,r4)
	mov 0x78,r0
	bra loc_8c0224d4
	fmov fr15,@(r0,r4)

loc_8c022414:
	mov.w @(0x50,PC),r0
	mov r13,r4
	mov.l @(0x68,PC),r1
	mov.b r11,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	mov.l @(0x64,PC),r1
	fmov fr3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov.b @(0x5,r14),r0
	mov.l @r1,r2
	extu.b r0,r0
	mov.l @(0x3C,r13),r3
	mov.l @r2,r2
	shll2 r0
	add r2,r0
	mov.w @(0x22,PC),r2
	mov.l @(r0,r2),r2
	mov.w @(0x20,PC),r0
	mov.l r2,@(r0,r3)
	mov 0x2A,r0
	mov.b @(r0,r6),r3
	mov.b @(0x5,r14),r0
	extu.b r3,r3
	extu.b r0,r0
	add 0x01,r0
	cmp/ge r0,r3
	bf.s loc_8c022490
	add 0x3C,r4
	mov.w @(0x6,PC),r0
	mov.l @r4,r2
	bra loc_8c022496
	mov.b r11,@(r0,r2)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x1000
	#data 0x012c
	#data 0x02fc
	#data 0x0084
	#align4
	#data 0x8c289750
	#data 0x3e4ccccd
	#data 0xc0f3d70a
	#data 0xc150cccd
	#data 0x3e99999a
	#data bank14.loc_8c147878
	#data 0x3f333333
	#data 0x8c26a944

;----------------------------------------------
loc_8c022490:
	mov.w @(0xB0,PC),r0
	mov.l @r4,r2
	mov.b r12,@(r0,r2)

loc_8c022496:
	mov r13,r4
	add 0x40,r4
	mov.w @(0xA6,PC),r0
	mov.l @r4,r3
	mov.b r11,@(r0,r3)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov.l @r4,r3
	fadd fr3,fr2
	fmov fr2,@(r0,r3)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov.l @r4,r3
	fmov fr2,@(r0,r3)
	mova @(0x98,PC),r0
	fmov @r0,fr2
	mov 0x3C,r0
	fmov @(r0,r14),fr1
	mov.l @r4,r3
	fadd fr2,fr1
	fmov fr1,@(r0,r3)
	mov 0x4C,r0
	mov.l @(r0,r13),r4
	add 0x34,r0
	fmov fr13,@(r0,r4)
	mov 0x7C,r0
	fmov fr13,@(r0,r4)
	mov 0x78,r0
	fmov fr13,@(r0,r4)

loc_8c0224d4:
	mova @(0x7C,PC),r0
	mov.l @(0x18,r13),r4
	fmov @r0,fr5
	mov r12,r5
	mov.w @(0x66,PC),r13
	mov 0x07,r7

loc_8c0224e0:
	mov.w @(0x64,PC),r0
	mov.l r13,@(r0,r4)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq r0,r5
	bf loc_8c0224fa
	mov 0x78,r0
	fmov fr15,@(r0,r4)
	mov 0x7C,r0
	fmov fr13,@(r0,r4)
	add 0x04,r0
	bra loc_8c022522
	fmov fr4,@(r0,r4)

loc_8c0224fa:
	mov 0x2A,r0
	mov r5,r2
	mov.b @(r0,r6),r3
	add 0x01,r2
	extu.b r3,r3
	cmp/gt r3,r2
	bt loc_8c022516
	mov 0x78,r0
	fmov fr5,@(r0,r4)
	add 0x08,r0
	fmov fr15,@(r0,r4)
	mov 0x7C,r0
	bra loc_8c022522
	fmov fr15,@(r0,r4)

loc_8c022516:
	mov 0x78,r0
	fmov fr5,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr14,@(r0,r4)

loc_8c022522:
	add 0x01,r5
	mov.w @(0x22,PC),r3
	cmp/ge r7,r5
	bf.s loc_8c0224e0
	add r3,r4
	bra loc_8c0225ec
	nop

loc_8c022530:
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c022558
	mov r12,r0
	nop
	mov.b r0,@(0x5,r14)
	mov r11,r0
	nop
	bra loc_8c022590
	mov.b r0,@(0x4,r14)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0400
	#data 0x00cc
	#data 0x01d0
	#align4
	#data 0xbfca3d71
	#data 0x3dcccccd
	#data 0x3ecccccd

;----------------------------------------------
loc_8c022558:
	tst r10,r5
	bt loc_8c022572
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c022572
	mov.b @(0x5,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r14)
	mov r8,r0
	nop
	mov.w r0,@(0x1E,r14)
	jsr @r9
	mov 0x01,r4

loc_8c022572:
	mov.w @(0xD2,PC),r3
	tst r3,r10
	bt loc_8c022590
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c022590
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r8,r0
	nop
	mov.w r0,@(0x1E,r14)
	jsr @r9
	mov 0x01,r4

loc_8c022590:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c0225d6
	mov.w @(0xB0,PC),r0
	mov.b r11,@(r0,r14)
	mov 0x34,r0
	fmov fr12,@(r0,r14)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr15,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov r13,r4
	add 0x4C,r4
	mov.b r0,@(0x7,r3)
	mov.w @(0x82,PC),r0
	mov.l @r4,r4
	fmov fr15,@(r0,r4)
	mov 0x7C,r0
	fmov fr15,@(r0,r4)
	mov 0x78,r0
	bra loc_8c0225ec
	fmov fr15,@(r0,r4)

loc_8c0225d6:
	mov.w @(0x70,PC),r0
	mov r13,r4
	add 0x4C,r4
	mov.b r12,@(r0,r14)
	mov.w @(0x6A,PC),r0
	mov.l @r4,r4
	fmov fr13,@(r0,r4)
	mov 0x7C,r0
	fmov fr13,@(r0,r4)
	mov 0x78,r0
	fmov fr13,@(r0,r4)

loc_8c0225ec:
	mov.w @(0x1E,r14),r0
	mov.w @(0x5C,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c022600
	mov r12,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c022600:
	mov.w @(0x1E,r14),r0
	mov.l @(0x64,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(0x50,PC),r0
	mov.l @(0x58,PC),r3
	fmov @r0,fr2
	mova @(0x50,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr14,fr0
	fmov fr14,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
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
	#data 0x1000
	#data 0x012c
	#data 0x0080
	#data 0x0168
	#align4
	#data 0xc0f3d70a
	#data 0xc150cccd
	#data 0x3e99999a
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0

;----------------------------------------------
loc_8c02266c:
	mov.l r14,@-r15
	mova @(0xDC,PC),r0
	fmov fr15,@-r15
	mov r4,r14
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	fmov @r0,fr13
	mova @(0xD0,PC),r0
	fmov @r0,fr14
	mova @(0xD0,PC),r0
	fmov @r0,fr15
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.w @(0xBE,PC),r5
	tst r3,r3
	bt.s loc_8c0226dc
	mov 0x00,r4
	mov.w @(0x1E,r14),r0
	add 0x03,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r5,r0
	bf loc_8c0226a2
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0226a2:
	mov.w @(0x1E,r14),r0
	mov.l @(0xB4,PC),r2
	mov r0,r3
	lds r3,fpul
	mov.l @(0xAC,PC),r3
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0xA0,PC),r0
	fmov fr0,fr3
	fmov @r0,fr2
	mov 0x74,r0
	fmov fr15,fr0
	fmac fr0,fr3,fr2
	mov.l @(0x98,PC),r4
	fmov fr2,@(r0,r14)
	add 0x60,r0
	mov.l @r4,r4
	mov.l @(r0,r4),r4
	add 0x58,r0
	mov.b @(r0,r4),r3
	bra loc_8c022716
	mov.b r3,@(r0,r14)

loc_8c0226dc:
	mov.w @(0x1E,r14),r0
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r5,r0
	bf loc_8c0226ee
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0226ee:
	mov.w @(0x1E,r14),r0
	mov.l @(0x68,PC),r2
	mov r0,r3
	lds r3,fpul
	mov.l @(0x60,PC),r3
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c022716:
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c022722:
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
	mov r4,r3
	tst r3,r3
	bt.s loc_8c02276c
	mov.l r4,@r15
	mov.l @(0x20,PC),r10
	bra loc_8c02276e
	nop

;###############################################
	#data 0x0168
	#align4
	#data 0x47800000
	#data 0x43b40000
	#data 0x3f000000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data 0x3e99999a
	#data 0x8c1f8c00
	#data bank14.loc_8c1478ac

;----------------------------------------------
loc_8c02276c:
	mov.l @(0xF0,PC),r10

loc_8c02276e:
	mov.l @(0xF8,PC),r12
	mov 0x00,r9
	mov.l @(0xF8,PC),r13
	mov 0x01,r14
	mov.l @(0xEC,PC),r11
	mov r9,r8

loc_8c02277a:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r12
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c02278c
	mov r0,r4
	bra loc_8c022998
	nop

loc_8c02278c:
	mov r8,r5
	shll2 r5
	mov r5,r0
	nop
	mov.l r4,@(r0,r13)
	add 0x01,r8
	mov.l @(0xD4,PC),r0
	mov.l @(0xD8,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(0xB0,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r5,r3
	mov.l @r11,r0
	shll2 r3
	mov.l @r0,r0
	mov.l @(r0,r3),r2
	mov 0x06,r3
	mov.w @(0xA0,PC),r0
	cmp/ge r3,r8
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov.w @(0x98,PC),r0
	mov.l r14,@(r0,r4)
	mov 0x34,r0
	fmov @r10+,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @r10+,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @r10+,fr3
	bf.s loc_8c02277a
	fmov fr3,@(r0,r4)
	mov.l @r15,r3
	mova @(0xA0,PC),r0
	fmov @r0,fr12
	tst r3,r3
	fldi0 fr14
	bf.s loc_8c0227e4
	fldi1 fr15
	bra loc_8c02293e
	nop

loc_8c0227e4:
	mova @(0x94,PC),r0
	mov.w @(0x6E,PC),r10
	fmov @r0,fr13

loc_8c0227ea:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r12
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c0227fc
	mov r0,r4
	bra loc_8c022998
	nop

;----------------------------------------------
loc_8c0227fc:
	mov r8,r0
	nop
	shll2 r0
	mov.l @(0x70,PC),r3
	mov.l r4,@(r0,r13)
	mov.w @(0x48,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r10,r3
	mov.l @r11,r0
	shll2 r3
	mov.l @r0,r0
	mov.l @(r0,r3),r2
	mov.w @(0x3A,PC),r0
	mov.w @(0x3C,PC),r3
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b r10,@(r0,r4)
	cmp/ge r3,r10
	mov.w @(0x30,PC),r0
	bf.s loc_8c022894
	mov.l r9,@(r0,r4)
	mov.w @(0x2E,PC),r1
	cmp/gt r1,r10
	bt loc_8c022894
	mov.w @(0x2A,PC),r3
	mov.l @(0x4C,PC),r6
	mov.l r3,@(r0,r4)
	mov 0x2A,r0
	mov.b @(r0,r6),r2
	mov r10,r3
	mov.w @(0x20,PC),r5
	extu.b r2,r2
	add r5,r3
	cmp/gt r2,r3
	bt loc_8c022884
	mov 0x78,r0
	fmov fr13,@(r0,r4)
	add 0x08,r0
	fmov fr15,@(r0,r4)
	mov 0x7C,r0
	bra loc_8c022894
	fmov fr15,@(r0,r4)

;###############################################
	#data 0x012c
	#data 0x0084
	#data 0x00cc
	#data 0x00b5
	#data 0x00bb
	#data 0x0400
	#data 0xff4c
	#align4
	#data bank14.loc_8c1478f4
	#data 0x8c26a944
	#data bank04.loc_8c044f12
	#data 0x8c1f8bcc
	#data bank14.loc_8c147894
	#data loc_8c021e10
	#data 0x3e4ccccd
	#data 0x3ecccccd
	#data 0x8c289750

;----------------------------------------------
loc_8c022884:
	mov 0x78,r0
	fmov fr13,@(r0,r4)
	mov 0x7C,r0
	fmov fr12,@(r0,r4)
	mova @(0x11C,PC),r0
	fmov @r0,fr4
	mov.w @(0x108,PC),r0
	fmov fr4,@(r0,r4)

loc_8c022894:
	mov.w @(0x106,PC),r4
	add 0x01,r10
	cmp/ge r4,r10
	bf.s loc_8c0227ea
	add 0x01,r8
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r12
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c022998
	mov r0,r4
	mov r8,r0
	nop
	shll2 r0
	mov.l @(0xFC,PC),r3
	mov.l r4,@(r0,r13)
	mov.w @(0xE6,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r11,r2
	mov.w @(0xE0,PC),r0
	mov.l @r2,r3
	mov.l @(0xF0,PC),r2
	mov.l @(r0,r3),r1
	mov.w @(0xDA,PC),r0
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r10,@(r0,r4)
	mov.w @(0xD4,PC),r0
	mov.l r9,@(r0,r4)
	mov r13,r4
	add 0x34,r4
	mov.l @r4,r3
	mov 0x23,r0
	mov.l r2,@(0x10,r3)
	mov 0x31,r2
	mov.l @r4,r3
	mov.b r9,@(r0,r3)
	mov.w @(0xC0,PC),r0
	mov.l @r4,r3
	mov.l r2,@(r0,r3)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	mov.l @r4,r3
	fmov fr3,@(r0,r3)
	mov 0x54,r0
	mov.l @r4,r3
	mov 0x0B,r5
	mov 0x01,r6
	fmov fr12,@(r0,r3)
	mov 0x74,r0
	mov.l @r4,r3
	fmov fr14,@(r0,r3)
	jsr @r12
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c022998
	mov r0,r4
	mov 0x40,r0
	mov.l @(0xA0,PC),r3
	mov.l r4,@(r0,r13)
	mov.w @(0x8A,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r11,r2
	mov.w @(0x8A,PC),r0
	mov.l @r2,r3
	mov.l @(0x9C,PC),r2
	mov.l @(r0,r3),r1
	add 0xF4,r0
	mov 0x19,r3
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r10,@(r0,r4)
	mov.w @(0x76,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x54,r0
	fmov fr13,@(r0,r4)
	mov 0x50,r0
	bra loc_8c02297c
	fmov fr13,@(r0,r4)

loc_8c02293e:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r12
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c022998
	mov r0,r4
	mov.w @(0x50,PC),r0
	mov.l r4,@(0x34,r13)
	mov.b r14,@(r0,r4)
	mov.l @r11,r3
	mov.w @(0x52,PC),r0
	mov.l @r3,r2
	mov.l @(0x58,PC),r3
	mov.l @(r0,r2),r1
	mov.w @(0x44,PC),r0
	mov.l r1,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	mov 0x31,r3
	mov.b r14,@(r0,r4)
	mov.w @(0x3A,PC),r0
	mov.l r3,@(r0,r4)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr12,@(r0,r4)
	mov 0x74,r0
	fmov fr14,@(r0,r4)

loc_8c02297c:
	mov.l @(0x44,PC),r3
	mov r9,r10
	mov.l @(0x3C,PC),r8
	mov.l r3,@(0x4,r15)
	mov r13,r3
	add 0x4C,r3
	mov.l r3,@(0x8,r15)

loc_8c02298a:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r12
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c0229c8
	mov r0,r4

loc_8c022998:
	bra loc_8c022b78
	mov r4,r0

;###############################################
	#data 0x0080
	#data 0x00be
	#data 0x012c
	#data 0x02fc
	#data 0x0084
	#data 0x00cc
	#data 0x0090
	#data 0x02f0
	#align4
	#data 0x3f000000
	#data loc_8c021e10
	#data loc_8c0222f6
	#data 0x3f333333
	#data 0x0000c000
	#data bank14.loc_8c14794c
	#data bank14.loc_8c14797c

;----------------------------------------------
loc_8c0229c8:
	mov.l @(0x124,PC),r5
	mov r10,r0
	nop
	shll2 r0
	mov.l @(0x120,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(0x10C,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r5,r3
	mov.l @r11,r0
	shll2 r3
	mov.l @r0,r0
	mov.l @(r0,r3),r2
	mov 0x11,r3
	mov.w @(0xFC,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov.w @(0xF6,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x34,r0
	fmov @r8+,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @r8+,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @r8+,fr3
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	add 0x04,r3
	mov.l r3,@(0x4,r15)
	add 0xFC,r3
	fmov @r3,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	mov.l @(0x4,r15),r3
	add 0x04,r3
	mov.l r3,@(0x4,r15)
	add 0xFC,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r4)
	mov r10,r0
	nop
	cmp/eq 0x02,r0
	bf.s loc_8c022a38
	add 0x01,r10
	mov.w @(0xBA,PC),r0
	mov.w @(0xBA,PC),r3
	mov.l @(r0,r4),r2
	or r3,r2
	mov.l r2,@(r0,r4)
	mov.l @(0x8,r15),r1
	mov.l r4,@r1

loc_8c022a38:
	mov 0x04,r4
	cmp/ge r4,r10
	bf loc_8c02298a
	mov.l @(0xB8,PC),r3
	mov r13,r5
	mov.l @r13,r2
	add 0x08,r5
	mov.w @(0x9E,PC),r0
	mov.l r3,@(0x10,r2)
	mov 0x11,r3
	mov.l @r5,r2
	mov.l r3,@(r0,r2)
	mov 0x54,r0
	mov.l @r5,r4
	mov.w @(0x94,PC),r5
	fmov fr15,@(r0,r4)
	mov 0x50,r0
	fmov fr15,@(r0,r4)
	mov r13,r4
	add 0x10,r4
	mov.l @r4,r3
	add 0x7C,r0
	mov.l r5,@(r0,r3)
	mova @(0x94,PC),r0
	mov.l @r4,r6
	fmov @r0,fr4
	mov 0x54,r0
	fmov fr4,@(r0,r6)
	mov 0x50,r0
	fmov fr4,@(r0,r6)
	mov 0x7C,r0
	mov.l @r4,r6
	fmov fr15,@(r0,r6)
	mov 0x78,r0
	fmov fr15,@(r0,r6)
	mov.l @r4,r3
	mov r13,r4
	add 0x08,r0
	add 0x14,r4
	fmov fr14,@(r0,r3)
	mov.l @r4,r3
	add 0x4C,r0
	mov 0x01,r6
	mov.l r5,@(r0,r3)
	mov 0x54,r0
	mov.l @r4,r5
	fmov fr4,@(r0,r5)
	mov 0x50,r0
	fmov fr4,@(r0,r5)
	mov 0x7C,r0
	mov.l @r4,r5
	fmov fr15,@(r0,r5)
	mov 0x78,r0
	fmov fr15,@(r0,r5)
	add 0x08,r0
	mov.l @r4,r3
	mov 0x0B,r5
	fmov fr14,@(r0,r3)
	mova @(0x50,PC),r0
	fmov @r0,fr15
	jsr @r12
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c022b2a
	mov r0,r4
	mov.w @(0x26,PC),r0
	mov.l @(0x44,PC),r3
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.b r9,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r11,r2
	mov.w @(0x22,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	mov 0x21,r3
	mov.w @(0x12,PC),r0
	mov.l r1,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c022b0c
	mova @(0x28,PC),r0
	bra loc_8c022b10
	fmov @r0,fr3

;###############################################
	#data 0x012c
	#data 0x0084
	#data 0x00cc
	#data 0x0400
	#data 0x0411
	#data 0x02cc
	#align4
	#data bank14.loc_8c14793c
	#data loc_8c021e10
	#data loc_8c021f74
	#data 0x3f4ccccd
	#data 0x40c00000
	#data loc_8c02266c
	#data 0x3fe66666

;----------------------------------------------
loc_8c022b0c:
	mova @(0x130,PC),r0
	fmov @r0,fr3

loc_8c022b10:
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mova @(0x128,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x74,r0
	fmov fr14,@(r0,r4)
	add 0x60,r0
	mov.l @(0x34,r13),r3
	mov.l r4,@(r0,r3)

loc_8c022b2a:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r12
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c022b76
	mov r0,r4
	mov.w @(0xFA,PC),r0
	mov.l @(0x10C,PC),r3
	mov.b r9,@(r0,r4)
	mov 0x23,r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r11,r2
	mov.w @(0xEE,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	mov 0x21,r3
	mov.w @(0xE8,PC),r0
	mov.l r1,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c022b62
	mova @(0xEC,PC),r0
	bra loc_8c022b66
	fmov @r0,fr3

loc_8c022b62:
	mova @(0xEC,PC),r0
	fmov @r0,fr3

loc_8c022b66:
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c022b76:
	mov.l @(0x34,r13),r0

loc_8c022b78:
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
loc_8c022b94:
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
	add 0xF0,r15
	mova @(0xA8,PC),r0
	mov.l @(0xAC,PC),r9
	fmov @r0,fr12
	mova @(0xA4,PC),r0
	mov.w @(0x82,PC),r11
	mov 0x01,r13
	fmov @r0,fr13
	mov 0x00,r12
	fldi1 fr14
	bra loc_8c022d80
	mov.l r12,@r15

;----------------------------------------------
loc_8c022bc4:
	mova @(0x9C,PC),r0
	mov.l @r15,r3
	fmov @r0,fr15
	mov r12,r10
	shll2 r3
	shll r3
	mov.l r3,@(0x4,r15)
	mov.l @r15,r0
	shll2 r0
	shll r0
	mov.b r0,@(0x8,r15)

loc_8c022bda:
	mov.l @(0x4,r15),r14
	mov.l @(0x88,PC),r0
	add r10,r14
	mov.b @(r0,r14),r14
	mov r14,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c022bee
	bra loc_8c022d6a
	nop

loc_8c022bee:
	mov.l @(0x7C,PC),r2
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c022c02
	mov r0,r4
	bra loc_8c022d8c
	nop

loc_8c022c02:
	mov 0x3F,r6
	mov.l @(0x68,PC),r3
	mov 0x20,r2
	and r14,r6
	cmp/ge r2,r6
	mov.l r6,@(0xC,r15)
	bf.s loc_8c022c1e
	mov.l @r3,r5
	mov r5,r8
	mov r5,r7
	add 0x34,r8
	sub r2,r6
	bra loc_8c022c26
	add 0x3C,r7

loc_8c022c1e:
	mov r5,r7
	mov r5,r8
	add 0x38,r7
	add 0x30,r8

loc_8c022c26:
	mov.l @r8,r2
	mov r13,r3
	shad r6,r3
	tst r2,r3
	bt.s loc_8c022c74
	mov 0x18,r2
	bra loc_8c022c76
	mov r12,r5

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0298
	#data 0x0084
	#data 0x00c7
	#align4
	#data 0xbf99999a
	#data 0xc1500000
	#data loc_8c02266c
	#data 0x40333333
	#data 0xbe4cccd0
	#data 0xc14e3d71
	#data 0x40500000
	#data 0x3fc00000
	#data 0x8c1f8c1c
	#data 0xc133d70a
	#data bank14.loc_8c14799c
	#data bank04.loc_8c044f12
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c022c74:
	mov r11,r5

loc_8c022c76:
	mov.l @(0xC,r15),r3
	cmp/ge r2,r3
	bf.s loc_8c022c80
	mov 0x3F,r8
	add 0xFD,r14

loc_8c022c80:
	mov 0x20,r1
	and r14,r8
	add r4,r1
	mov r8,r3
	shll2 r3
	add r9,r3
	mov.l r4,@r3
	tst r5,r5
	mov.b @(0x8,r15),r0
	mov.l @(0x120,PC),r3
	add r10,r0
	mov.b r0,@r1
	mov 0x23,r0
	mov.b r14,@(r0,r4)
	mov.w @(0x108,PC),r0
	mov.b r13,@(r0,r4)
	bf.s loc_8c022ca8
	mov.l r3,@(0x10,r4)
	mov r8,r5
	add 0x3A,r5

loc_8c022ca8:
	mov.l @(0x10C,PC),r3
	mov r5,r2
	shll2 r2
	cmp/eq r11,r5
	mov.l @r3,r0
	mov.l @r0,r0
	mov.l @(r0,r2),r1
	mov.w @(0xF0,PC),r0
	mov.w @(0xF0,PC),r2
	mov.l r1,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr12,@(r0,r4)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mova @(0xEC,PC),r0
	fmov @r0,fr3
	mov.w @(0xD6,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr14,@(r0,r4)
	mov 0x50,r0
	bf.s loc_8c022cf4
	fmov fr14,@(r0,r4)
	mov.w @(0xC0,PC),r1
	tst r1,r14
	bt loc_8c022cf4
	mov.w @(0xB4,PC),r0
	mov.b r12,@(r0,r4)

loc_8c022cf4:
	cmp/eq r11,r5
	bt loc_8c022d6a
	mov.l @r7,r3
	mov r13,r2
	shad r6,r2
	tst r3,r2
	bt loc_8c022d5e
	mov.l @(0xC0,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c022d8c
	mov r0,r14
	mov.l @(0xA4,PC),r1
	mov.l @(0xB0,PC),r3
	mov.w @(0x8E,PC),r0
	mov.b r13,@(r0,r14)
	mov.l r3,@(0x10,r14)
	mov.l @r1,r2
	mov.w @(0x8E,PC),r0
	mov.l @r2,r3
	mov 0x11,r2
	mov.l @(r0,r3),r3
	mov.w @(0x80,PC),r0
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	mov 0x34,r0
	fmov fr15,@(r0,r14)
	mov 0x38,r0
	fmov fr12,@(r0,r14)
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr14,@(r0,r14)
	mov 0x50,r0
	fmov fr14,@(r0,r14)
	mov r8,r0
	nop
	shll2 r0
	mov.l @(r0,r9),r3
	mov.w @(0x60,PC),r0
	mov.l r14,@(r0,r3)
	add 0xB0,r0
	mov.l @(0x78,PC),r3
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c022d6a
	nop

loc_8c022d5e:
	mov r8,r0
	nop
	shll2 r0
	mov.l @(r0,r9),r3
	mov.w @(0x48,PC),r0
	mov.l r12,@(r0,r3)

loc_8c022d6a:
	mov 0x08,r3
	add 0x01,r10
	cmp/ge r3,r10
	bt.s loc_8c022d78
	fadd fr13,fr15
	bra loc_8c022bda
	nop

loc_8c022d78:
	mov.l @r15,r3
	fsub fr13,fr12
	add 0x01,r3
	mov.l r3,@r15

loc_8c022d80:
	mov.l @r15,r1
	mov 0x08,r2
	cmp/ge r2,r1
	bt loc_8c022d8c
	bra loc_8c022bc4
	nop

loc_8c022d8c:
	add 0x10,r15
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
	#data 0x012c
	#data 0x0084
	#data 0x0411
	#data 0x0080
	#data 0x0320
	#data 0x00d4
	#align4
	#data loc_8c021e14
	#data 0x8c26a944
	#data 0xc14e147b
	#data 0x3f4ccccd
	#data bank04.loc_8c044f12
	#data loc_8c022238
	#data 0xc14dc28f
	#data bank10.loc_8c108210

;----------------------------------------------
loc_8c022dd4:
	rts
	nop

;----------------------------------------------
loc_8c022dd8:
	mov.l @(0x124,PC),r2
	mov 0x23,r0
	mov.b @(r0,r4),r1
	mov.l @r2,r3
	extu.b r1,r1
	mov.w @(0x108,PC),r0
	mov.l @r3,r3
	shll2 r1
	add r3,r1
	mov.l @(r0,r1),r1
	mov.w @(0x100,PC),r0
	rts
	mov.l r1,@(r0,r4)

;----------------------------------------------
loc_8c022df2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x100,PC),r3
	jsr @r3
	mov 0x03,r4
	mov r0,r4
	mova @(0xFC,PC),r0
	fmov @r0,fr5
	mova @(0xFC,PC),r0
	fmov @r0,fr4
	mov 0x00,r12
	mov.b @(0x4,r14),r0
	mov.l @(0xF8,PC),r11
	extu.b r0,r0
	fldi1 fr15
	cmp/eq 0x00,r0
	bf.s loc_8c022e26
	mov 0x01,r13
	bra loc_8c022f66
	nop

loc_8c022e26:
	cmp/eq 0x01,r0
	bt loc_8c022e3a
	cmp/eq 0x02,r0
	bt loc_8c022e7c
	cmp/eq 0x03,r0
	bf loc_8c022e36
	bra loc_8c022f36
	nop

loc_8c022e36:
	bra loc_8c022f66
	nop

loc_8c022e3a:
	mov.w @(0xB4,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr5,fr3
	fmov fr3,fr2
	fcmp/gt fr2,fr15
	bf.s loc_8c022e50
	fmov fr3,@(r0,r14)
	bra loc_8c022f66
	nop

loc_8c022e50:
	mov.w @(0xA0,PC),r4
	fmov fr15,@(r0,r14)
	add r11,r4
	mov.w @(0x98,PC),r0
	mov.l @(0x30,r4),r3
	mov r4,r5
	add 0x38,r5
	mov.b r13,@(r0,r3)
	mov.l @(0x34,r4),r3
	mov.b r13,@(r0,r3)
	mov.l @r5,r3
	mov.b r13,@(r0,r3)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x38,r0
	mov.l @r5,r3
	bra loc_8c022f66
	fmov fr4,@(r0,r3)

loc_8c022e7c:
	mov.w @(0x76,PC),r2
	extu.w r4,r10
	tst r10,r2
	bt loc_8c022eac
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c022eac
	mov r13,r0
	nop
	mov.w @(0x66,PC),r4
	mov.b r0,@(0x5,r14)
	mov 0x38,r0
	add r11,r4
	mov.l @r4,r3
	fmov fr4,@(r0,r3)
	mov 0x74,r0
	mov.l @r4,r3
	fmov fr15,@(r0,r3)
	mov 0xF7,r0
	mov.l @r4,r3
	mov.w r0,@(0x1E,r3)
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c022eac:
	mov.w @(0x4A,PC),r2
	tst r2,r10
	bt loc_8c022ede
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c022ede
	mov r12,r0
	nop
	mov.w @(0x38,PC),r4
	mov.b r0,@(0x5,r14)
	mova @(0x54,PC),r0
	add r11,r4
	fmov @r0,fr3
	mov.l @r4,r3
	mov 0x38,r0
	fmov fr3,@(r0,r3)
	mov 0x74,r0
	mov.l @r4,r3
	fmov fr15,@(r0,r3)
	mov 0xF7,r0
	mov.l @r4,r3
	mov.w r0,@(0x1E,r3)
	mov.l @(0x38,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c022ede:
	mov.l @(0x3C,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c022f20
	mov.w @(0x10,PC),r0
	bra loc_8c022f4e
	mov.l r13,@(r0,r14)

;###############################################
	#data 0x02a8
	#data 0x0084
	#data 0x012c
	#data 0x00f0
	#data 0x1000
	#data 0x0128
	#data 0x2000
	#data 0x00d8
	#align4
	#data 0x8c26a944
	#data bank01.loc_8c01357a
	#data 0x3e4ccccd
	#data 0xbf666666
	#data 0x8c1f8cfc
	#data bank04.loc_8c04257c
	#data 0x3f666666
	#data bank01.loc_8c011ada

;----------------------------------------------
loc_8c022f20:
	mov.l @(0x134,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c022f66
	mov.w @(0x120,PC),r0
	mov.l r12,@(r0,r14)
	mov r13,r0
	nop
	bra loc_8c022f4e
	mov.b r0,@(0x5,r14)

;----------------------------------------------
loc_8c022f36:
	mov 0x50,r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fsub fr5,fr3
	fcmp/gt fr2,fr3
	bt.s loc_8c022f66
	fmov fr3,@(r0,r14)
	fmov fr2,@(r0,r14)
	mov r12,r0
	nop
	bra loc_8c022f66
	mov.b r0,@(0x4,r14)

;----------------------------------------------
loc_8c022f4e:
	mov.w @(0xFE,PC),r4
	mov.w @(0xFE,PC),r0
	add r11,r4
	mov.l @(0x30,r4),r2
	mov.b r12,@(r0,r2)
	mov.l @(0x34,r4),r3
	mov.b r12,@(r0,r3)
	mov.l @(0x38,r4),r3
	mov.b r12,@(r0,r3)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c022f66:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c022f76:
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	mov.w @(0xD4,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c022f90
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c022f90:
	mova @(0xC8,PC),r0
	mov.l @(0xD8,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xC0,PC),r0
	mov.l @(0xC8,PC),r3
	fmov @r0,fr2
	mova @(0xC0,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fldi1 fr3
	fcmp/gt fr2,fr3
	bt.s loc_8c022fd0
	fmov fr2,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr2
	mov 0x74,r0
	fmov fr2,@(r0,r14)

loc_8c022fd0:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c022fd8:
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
	add 0xE0,r15
	mov 0x0C,r0
	mov r7,r12
	shll2 r5
	mov r7,r3
	shll r12
	mov.l r4,@(0x8,r15)
	add r3,r12
	mov.l @(0x78,PC),r3
	shll2 r12
	mov r15,r13
	mov.l r6,@r15
	add 0x14,r13
	fmov fr4,@(r0,r15)
	mov.l @(0x64,PC),r0
	mov.l @(0x70,PC),r1
	fmov @(r0,r5),fr15
	mov.l @(0x64,PC),r0
	add r0,r12
	mov 0x50,r0
	mov.l @(r0,r15),r4
	mov 0x04,r0
	shll r4
	shll2 r4
	add r3,r4
	fmov @(r0,r4),fr3
	mov 0x10,r0
	fmov @r4,fr12
	fmov fr3,@(r0,r15)
	mov.l @r15,r2
	mov.l r2,@-r15
	mov.l @(0x54,PC),r2
	mov.l r1,@-r15
	jsr @r2
	mov r13,r4
	mov 0x04,r14
	mov r0,r4
	mov r14,r3
	sub r4,r3
	mov r3,r4
	cmp/pz r4
	bt.s loc_8c023088
	add 0x08,r15
	mov r13,r11
	sub r4,r11
	bra loc_8c02308a
	mov 0x00,r4

;###############################################
	#data 0x00d8
	#data 0x00f0
	#data 0x012c
	#data 0x0168
	#align4
	#data bank01.loc_8c011c10
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data 0x3f7d70a4
	#data bank14.loc_8c1479dc
	#data bank14.loc_8c1479f4
	#data bank14.loc_8c147a18
	#data bank13.loc_8c132a94
	#data bank12.loc_8c129740

;----------------------------------------------
loc_8c023088:
	mov r13,r11

loc_8c02308a:
	lds r4,fpul
	mova @(0xBC,PC),r0
	fmov @r0,fr14
	mov r12,r3
	mov r12,r2
	add 0x08,r2
	float fpul,fr3
	fmov fr14,fr0
	mov.w @(0xA4,PC),r10
	add 0x04,r3
	mov.w @(0x9E,PC),r9
	mov r4,r13
	mov.l r3,@(0x4,r15)
	cmp/ge r14,r13
	mova @(0xA8,PC),r0
	mov.l r2,@r15
	fmac fr0,fr3,fr15
	mov 0x01,r8
	bt.s loc_8c023124
	fmov @r0,fr13

loc_8c0230b2:
	mov.l @(0xA0,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023124
	mov r0,r4
	mov.w @(0x7E,PC),r0
	mov.l @(0x94,PC),r2
	mov.b @r11+,r5
	mov.b r8,@(r0,r4)
	add 0xD0,r5
	mov.l @(0x88,PC),r3
	shll2 r5
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r0,r0
	add r5,r0
	mov.l @(r0,r9),r3
	mov.w @(0x68,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r10,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r15),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov fr13,@(r0,r4)
	mov 0x78,r0
	fmov @r12,fr3
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	mov.l @(0x4,r15),r3
	fmov @r3,fr3
	fmov fr3,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0x42,PC),r0
	add 0x01,r13
	fmov @r3,fr3
	cmp/ge r14,r13
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	fmov fr12,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r15),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x8,r15),r3
	add 0x04,r3
	mov.l r3,@(0x8,r15)
	mov.l r4,@-r3
	bf.s loc_8c0230b2
	fadd fr14,fr15

loc_8c023124:
	add 0x20,r15
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
	#data 0x0094
	#data 0x0411
	#data 0x012c
	#data 0x0084
	#data 0x0080
	#align4
	#data 0x3f333333
	#data 0xc14ccccd
	#data bank04.loc_8c044f12
	#data loc_8c022dd4
	#data 0x8c26a944

;----------------------------------------------
loc_8c023160:
	mov.l r14,@-r15
	mova @(0x128,PC),r0
	mov.l r13,@-r15
	mov 0x01,r14
	mov.l r12,@-r15
	mov 0x00,r13
	mov.l r11,@-r15
	mov 0x10,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x05,r9
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	fmov @r0,fr14
	mov.w @(0xF8,PC),r10
	mov.l @(0x104,PC),r12
	fldi1 fr15

loc_8c023186:
	mov.l @(0x108,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023216
	mov r0,r4
	mov.l @(0xFC,PC),r3
	cmp/gt r14,r13
	mov.w @(0xE0,PC),r0
	mov.l @(0xFC,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r13,r3
	mov.l @(0xF0,PC),r0
	shll2 r3
	mov.l @(r0,r3),r1
	mov.l @r2,r0
	shll2 r1
	mov.l @r0,r3
	add r3,r1
	mov.l @r1,r0
	mov.w @(0xC8,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(0xC4,PC),r0
	mov.l r14,@(r0,r4)
	mov 0x34,r0
	fmov @r12+,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @r12+,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @r12+,fr3
	bt.s loc_8c0231e2
	fmov fr3,@(r0,r4)
	mov.w @(0xAC,PC),r0
	mov.l @(r0,r4),r1
	or r11,r1
	mov.l r1,@(r0,r4)
	mov 0x50,r0
	fmov fr15,@(r0,r4)
	mov 0x54,r0
	fmov fr14,@(r0,r4)

loc_8c0231e2:
	mov r13,r0
	nop
	cmp/eq 0x02,r0
	bf.s loc_8c0231f6
	add 0x01,r13
	mov.w @(0x92,PC),r0
	mov r4,r8
	mov.l @(r0,r4),r2
	or r10,r2
	mov.l r2,@(r0,r4)

loc_8c0231f6:
	cmp/ge r9,r13
	bf loc_8c023186
	mov.l @(0xA8,PC),r3
	mova @(0xA0,PC),r0
	mov 0x01,r2
	mov.l @(0xA4,PC),r4
	mov.l r2,@-r15
	mov 0x00,r7
	mov.w @r3,r6
	fmov @r0,fr4
	extu.w r6,r6
	bsr loc_8c022fd8
	mov 0x04,r5
	add 0x04,r15
	mov r8,r0
	nop

loc_8c023216:
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
loc_8c02322c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(0x78,PC),r5
	mov.w @(0x4C,PC),r4
	mov.l r11,@-r15
	mov.w @(0x4A,PC),r12
	add r5,r4
	sts.l pr,@-r15
	mov.l @(0x70,PC),r11
	add r5,r12
	mov r4,r13
	mov r4,r14

loc_8c023246:
	mov.l @r14,r3
	tst r3,r3
	bt loc_8c023250
	jsr @r11
	mov.l @r13,r4

loc_8c023250:
	add 0x04,r14
	cmp/hs r12,r14
	bf.s loc_8c023246
	add 0x04,r13
	mov.l @(0x48,PC),r3
	mova @(0x44,PC),r0
	mov 0x01,r2
	mov.l @(0x48,PC),r4
	mov.l r2,@-r15
	mov 0x00,r7
	mov.w @r3,r6
	fmov @r0,fr4
	extu.w r6,r6
	bsr loc_8c022fd8
	mov 0x04,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0400
	#data 0x012c
	#data 0x0084
	#data 0x00cc
	#data 0x00f0
	#data 0x0120
	#align4
	#data bank14.loc_8c147a3c
	#data 0x3e99999a
	#data bank04.loc_8c044f12
	#data loc_8c022dd4
	#data bank14.loc_8c147a28
	#data 0x8c26a944
	#data 0xc0bfae14
	#data 0x8c212c3e
	#data 0x8c1f8dec
	#data 0x8c1f8cfc
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c0232b4:
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
	mov r5,r8
	shll r8
	mov.l @(0x14C,PC),r0
	shll2 r8
	shll2 r5
	mov r6,r13
	add r0,r8
	mov.l @(0x144,PC),r0
	mov 0x18,r3
	mov r4,r10
	fmov @(r0,r5),fr15
	cmp/ge r3,r13
	bf.s loc_8c0232ec
	mov r6,r9
	add 0xFD,r13

loc_8c0232ec:
	mov.l @(0x138,PC),r11
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c023300
	mov r0,r4
	bra loc_8c0234a8
	nop

loc_8c023300:
	mov.l @(0x12C,PC),r12
	mov 0x01,r14
	mov.l @(0x124,PC),r3
	shll2 r13
	mov.w @(0x106,PC),r0
	mov r14,r6
	mov 0x0B,r5
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r12,r2
	mov.w @(0xFC,PC),r0
	mov.l r13,@r15
	mov.l @r2,r3
	add r3,r13
	mov.l @(r0,r13),r2
	add 0x9C,r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r14,@(r0,r4)
	mov 0x34,r0
	fmov @r8+,fr3
	fmov fr3,@(r0,r4)
	mova @(0x104,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l r4,@r10
	add 0x04,r10
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c02334e
	mov r0,r4
	bra loc_8c0234a8
	nop

loc_8c02334e:
	mov.l @(0xDC,PC),r3
	mov 0x38,r5
	mov.w @(0xBC,PC),r0
	mov.l @(0xEC,PC),r7
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r12,r2
	mov.l @r15,r3
	mov.l @r2,r1
	mov.w @(0xB2,PC),r0
	add r3,r1
	mov.l @(r0,r1),r2
	mov.w @(0xAE,PC),r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r14,@(r0,r4)
	mov 0x34,r0
	fmov @r8,fr3
	fmov fr3,@(r0,r4)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0xC0,PC),r0
	fmov @r0,fr13
	mov 0x3C,r0
	fmov fr13,@(r0,r4)
	mov.l r4,@r10
	add 0x04,r10
	mov 0x00,r4

loc_8c02338a:
	mov r4,r0
	nop
	mov.b @(r0,r7),r6
	extu.b r6,r6
	cmp/eq r9,r6
	bt loc_8c02339c
	add 0x01,r4
	cmp/ge r5,r4
	bf loc_8c02338a

loc_8c02339c:
	mov r4,r13
	mov 0x0B,r5
	mov 0x01,r6
	add 0x01,r13
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0234a8
	mov r0,r4

	mov.l @(0x7C,PC),r3
	mov r13,r1
	mov.w @(0x5C,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x8C,PC),r3
	mov.l @r12,r2
	jsr @r3
	mov 0x0A,r0
	mov.l @r2,r2
	shll2 r0
	mov.w @(0x52,PC),r1
	add r2,r0
	mov.w @(0x50,PC),r2
	mov.l @(r0,r1),r3
	mov.w @(0x48,PC),r0
	fldi0 fr12
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov fr13,@(r0,r4)
	mova @(0x68,PC),r0
	fmov @r0,fr14
	mov 0x54,r0
	fldi1 fr3
	fmov fr14,@(r0,r4)
	mov 0x50,r0
	fmov fr14,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	add 0x08,r0
	fmov fr12,@(r0,r4)
	mov.l r4,@r10
	mov 0x0B,r5
	mov 0x01,r6
	add 0x04,r10
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bra loc_8c023454
	mov r0,r4

;###############################################
	#data 0x012c
	#data 0x00e8
	#data 0x032c
	#data 0x0084
	#data 0x0094
	#data 0x0411
	#align4
	#data bank14.loc_8c147ab0
	#data bank14.loc_8c147ac8
	#data bank04.loc_8c044f12
	#data loc_8c022dd4
	#data 0x8c26a944
	#data 0x402ccccd
	#data 0xc14e147b
	#data 0x3fc00000
	#data 0xc14ccccd
	#data bank14.loc_8c147a78
	#data bank12.loc_8c129128
	#data 0x40200000
	#data 0x3f4ccccd

;----------------------------------------------
loc_8c023454:
	bt.s loc_8c0234a8
	nop
	mov.l @(0x128,PC),r3
	mov r13,r1
	mov.w @(0x116,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x124,PC),r3
	mov.l @r12,r2
	jsr @r3
	mov 0x0A,r0
	mov.l @r2,r2
	shll2 r0
	mov.w @(0x106,PC),r1
	fadd fr14,fr15
	add r2,r0
	mov.w @(0x104,PC),r2
	mov.l @(r0,r1),r3
	mov.w @(0xFE,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mova @(0x104,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov fr13,@(r0,r4)
	mov 0x54,r0
	fmov fr14,@(r0,r4)
	mov 0x50,r0
	fmov fr14,@(r0,r4)
	mov 0x7C,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	add 0x08,r0
	fmov fr12,@(r0,r4)
	mov.l r4,@r10

loc_8c0234a8:
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

;----------------------------------------------
loc_8c0234c4:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xC4,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02356e
	mov r0,r4
	mov.w @(0x96,PC),r0
	mov 0x00,r3
	mov.l @(0xB0,PC),r1
	mov.l @(0xA0,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0x90,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x01,r2
	mov.w @(0x84,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @r15,r3
	mov.l @(0x98,PC),r0
	shll2 r3
	mov.l r3,@(0x8,r15)
	fmov @(r0,r3),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	add 0x04,r3
	mov.l r3,@(0x4,r15)
	mov.l r4,@-r3
	mov 0x0B,r5
	mov.l @(0x6C,PC),r3
	mov r2,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02356e
	mov r0,r4
	mov.w @(0x44,PC),r0
	mov 0x00,r3
	mov.l @(0x60,PC),r1
	mov.l @(0x4C,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0x40,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0x34,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov 0x01,r3
	mov.b r2,@(r0,r4)
	mov.w @(0x30,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(0x44,PC),r0
	mov.l @(0x8,r15),r2
	fmov @(r0,r2),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mova @(0x3C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	mov.l r4,@r3

loc_8c02356e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0094
	#data 0x0084
	#data 0x0411
	#data 0x0290
	#data 0x0294
	#data 0x00cc
	#align4
	#data loc_8c022dd4
	#data bank12.loc_8c1292d4
	#data 0x40200000
	#data bank04.loc_8c044f12
	#data 0x8c26a944
	#data bank14.loc_8c147ad4
	#data 0xc1500000
	#data 0xc14e147b

;----------------------------------------------
loc_8c0235a4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF4,PC),r14
	mov 0x01,r12
	mov.w r6,@r15
	mov r5,r11
	mov.l @(0xF0,PC),r3
	mov 0x0B,r5
	mov r12,r6
	mov r4,r13
	fldi0 fr15
	mov 0x00,r10
	jsr @r3
	mov r10,r4
	tst r0,r0
	bt.s loc_8c023612
	mov r0,r4
	mov.l @(0xDC,PC),r3
	mov.l @(0xE0,PC),r1
	mov.w @(0xC4,PC),r0
	mov.b r12,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r12,r3
	mov.l @r1,r2
	sub r13,r3
	mov.w @(0xBA,PC),r0
	shll2 r3
	mov.l @r2,r2
	add r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0xB2,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov.w @(0xAC,PC),r0
	mov.l r12,@(r0,r4)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	bra loc_8c023614
	mov.l r4,@r14

loc_8c023612:
	mov.l r10,@r14

loc_8c023614:
	tst r13,r13
	bf.s loc_8c0236d8
	mov.w @r15,r9
	mov.l @(0x94,PC),r2
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023686
	mov r0,r4
	mov.l @(0x8C,PC),r1
	mov.l @(0x84,PC),r3
	mov.w @(0x6E,PC),r0
	mov.b r12,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r11,r3
	mov.l @r1,r2
	shll2 r3
	mov.w @(0x6A,PC),r0
	mov.l @r2,r2
	add r2,r3
	mov.l @(r0,r3),r3
	add 0xF0,r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov.w @(0x58,PC),r0
	mov.w @(0x5A,PC),r3
	mov.l r3,@(r0,r4)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	add 0x08,r0
	fmov fr15,@(r0,r4)
	bra loc_8c023688
	mov.l r4,@(0x4,r14)

loc_8c023686:
	mov.l r10,@(0x4,r14)

loc_8c023688:
	mova @(0x48,PC),r0
	mov r14,r4
	mov 0x00,r2
	mov r9,r6
	mov r2,r5
	mov.l r2,@-r15
	fmov @r0,fr4
	mov r2,r7
	bsr loc_8c022fd8
	add 0x08,r4
	bra loc_8c0236f8
	add 0x04,r15

;###############################################
	#data 0x012c
	#data 0x0288
	#data 0x0084
	#data 0x00cc
	#data 0x0094
	#data 0x0411
	#align4
	#data 0x8c1f8cfc
	#data bank04.loc_8c044f12
	#data loc_8c022dd4
	#data 0x8c26a944
	#data 0xc0f00000
	#data 0xc1500000
	#data 0x3f666666
	#data 0xc0f33333
	#data 0x3f4ccccd
	#data 0xc14ccccd
	#data 0xbf000000

;----------------------------------------------
loc_8c0236d8:
	mova @(0x144,PC),r0
	mov r14,r4
	mov 0x00,r7
	mov.l r10,@-r15
	fmov @r0,fr4
	mov r9,r6
	mov.l r4,@(0x4,r15)
	mov r7,r5
	bsr loc_8c022fd8
	add 0x08,r4
	add 0x04,r15
	mov.l @r15,r4
	mov 0x00,r5
	mov r11,r6
	bsr loc_8c0232b4
	add 0x18,r4

loc_8c0236f8:
	mov r14,r4
	mov 0x00,r5
	bsr loc_8c0234c4
	add 0x48,r4
	mov r11,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c02371e
	mov 0x00,r4
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0239e8
	mov.l @r15+,r14

loc_8c02371e:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c023732:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE4,PC),r11
	mov r4,r14
	mov.l @(0xE4,PC),r3
	mov.l r5,@r15
	mov 0x0B,r5
	mov.l r6,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0237b0
	mov r0,r4
	mov.l @(0xD8,PC),r1
	mov 0x01,r5
	mov.l @(0xD0,PC),r3
	tst r14,r14
	mov.w @(0xB6,PC),r0
	fldi0 fr4
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(0xAE,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0xAA,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.w @(0xA4,PC),r0
	mov.l r5,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	bt.s loc_8c02379a
	fmov fr3,@(r0,r4)
	mov.l @(0xA8,PC),r2
	mov 0x34,r0
	fmov @(r0,r4),fr2
	lds r2,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c02379a:
	mov r14,r3
	shll2 r3
	mov r14,r2
	add r2,r3
	shll2 r3
	shll2 r3
	add r11,r3
	add 0x50,r3
	mov.l r4,@r3
	bra loc_8c0237c4
	nop

loc_8c0237b0:
	mov r14,r2
	shll2 r2
	mov r14,r3
	add r3,r2
	shll2 r2
	shll2 r2
	add r11,r2
	mov 0x00,r1
	add 0x50,r2
	mov.l r1,@r2

loc_8c0237c4:
	mov r14,r12
	mov r14,r3
	shll2 r12
	mov r14,r13
	add r3,r12
	mov.l @r15,r6
	shll2 r12
	shll2 r12
	add r11,r12
	add 0x50,r12
	add 0x01,r13
	mov r12,r4
	mov r13,r5
	bsr loc_8c0232b4
	add 0x34,r4
	mov 0x00,r3
	mov r12,r4
	mov.l r3,@-r15
	mova @(0x50,PC),r0
	mov.l @(0x8,r15),r6
	mov r13,r5
	fmov @r0,fr4
	mov r3,r7
	mov.w @r6,r6
	bsr loc_8c022fd8
	add 0x04,r4
	add 0x04,r15
	mov r12,r4
	mov r13,r5
	bsr loc_8c0234c4
	add 0x48,r4
	mov.l @r15,r0
	cmp/eq 0xFF,r0
	bf loc_8c023840
	mov r13,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0239e8
	mov.l @r15+,r14

;###############################################
	#data 0x012c
	#data 0x0284
	#data 0x0084
	#data 0x00cc
	#align4
	#data 0xbf4ccccd
	#data 0x8c1f8cfc
	#data bank04.loc_8c044f12
	#data loc_8c022dd4
	#data 0x8c26a944
	#data 0xc1500000
	#data 0x40f00000
	#data 0xbe666666

;----------------------------------------------
loc_8c023840:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c02384e:
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
	add 0xFC,r15
	mov.l @(0x13C,PC),r3
	mov 0x00,r12
	mov.w @(0x126,PC),r8
	mov 0x10,r11
	mov.l @(0x130,PC),r13
	mov 0x01,r10
	fldi0 fr14
	mov r12,r14
	fldi1 fr15
	mov 0x04,r9
	mov.l r3,@r15

loc_8c02387a:
	mov.l @(0x12C,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c02388e
	mov r0,r4
	bra loc_8c023904
	mov 0x00,r0

loc_8c02388e:
	mov.w @(0x102,PC),r0
	mov r14,r5
	mov.l @(0x118,PC),r3
	shll2 r5
	mov.b r12,@(r0,r4)
	mov.l @r3,r0
	mov.l @(0x114,PC),r1
	mov.l @r0,r0
	add r5,r0
	mov.l @(r0,r8),r2
	mov.w @(0xF0,PC),r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r1,@(0x10,r4)
	mov.l r10,@(r0,r4)
	mov 0x34,r0
	fmov @r13+,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @r13+,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @r13+,fr3
	fmov fr3,@(r0,r4)
	mov r14,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c0238da
	mov.w @(0xCE,PC),r0
	mov.l @(0xE8,PC),r3
	mov.l @(r0,r4),r2
	or r11,r2
	mov.l r2,@(r0,r4)
	mov 0x50,r0
	fmov fr14,@(r0,r4)
	mov 0x54,r0
	fmov fr15,@(r0,r4)
	mov.l r3,@(0x10,r4)

loc_8c0238da:
	mov.l @r15,r2
	add 0x01,r14
	mov.w @(0xB8,PC),r0
	cmp/ge r9,r14
	add r2,r5
	bf.s loc_8c02387a
	mov.l r4,@(r0,r5)
	mov.l @(0xCC,PC),r4
	mov.w @(0xAA,PC),r0
	mov r4,r5
	add 0x38,r5
	mov.l @r5,r3
	mov.w @(0xA2,PC),r1
	mov.l @(r0,r3),r0
	add r3,r1
	or 0x20,r0
	mov.l r0,@r1
	mov 0x74,r0
	mov.l @r5,r3
	fmov fr15,@(r0,r3)
	mov.l @(0x3C,r4),r0

loc_8c023904:
	add 0x04,r15
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
loc_8c02391c:
	mov.l r14,@-r15
	mov 0x0B,r5
	fmov fr15,@-r15
	mov 0x01,r6
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023986
	mov r0,r14
	mov.w @(0x5E,PC),r0
	mov 0x01,r3
	fldi0 fr15
	mov 0x0B,r5
	mov.b r3,@(r0,r14)
	mov 0x31,r3
	add 0xA0,r0
	mov.l @(0x78,PC),r2
	mov 0x01,r6
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov 0x74,r0
	fmov fr15,@(r0,r14)
	mov 0x1E,r0
	mov.l @(0x58,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023982
	mov r0,r4
	mov.l @(0x4C,PC),r1
	mov 0x01,r3
	mov.w @(0x30,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @r1,r2
	mov.w @(0x32,PC),r0
	mov.l @r2,r3
	mov.l @(0x50,PC),r2
	mov.l @(r0,r3),r3
	mov.w @(0x24,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x21,r3
	add 0x48,r0
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov 0x74,r0
	fmov fr15,@(r0,r4)
	mov 0x14,r0
	mov.w r0,@(0x1C,r4)

loc_8c023982:
	mov.w @(0x18,PC),r0
	mov.l r4,@(r0,r14)

loc_8c023986:
	mov r14,r0
	nop
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x01c8
	#data 0x012c
	#data 0x0084
	#data 0x00cc
	#data 0x0120
	#data 0x02cc
	#data 0x00d4
	#align4
	#data bank14.loc_8c147ae0
	#data 0x8c1f8cfc
	#data bank04.loc_8c044f12
	#data 0x8c26a944
	#data loc_8c022dd4
	#data loc_8c022df2
	#data 0x8c1f8dec
	#data loc_8c022f76

;----------------------------------------------
loc_8c0239c0:
	sts.l pr,@-r15
	mov.l @(0xA8,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0239e2
	mov r0,r4
	mov.w @(0x92,PC),r0
	mov 0x01,r3
	mov.l @(0x98,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov 0x00,r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)

loc_8c0239e2:
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0239e8:
	mov.l r14,@-r15
	add 0xFC,r15
	mov r4,r14
	mov r4,r3
	shll2 r14
	add r3,r14
	mov.l @(0x7C,PC),r3
	shll2 r14
	shll2 r14
	mov.l r14,@r15
	mov 0x00,r6
	mov 0x12,r7
	mov r6,r5
	add r3,r14

loc_8c023a04:
	mov r5,r0
	nop
	shll2 r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bt.s loc_8c023a16
	add 0x01,r5
	mov.w @(0x52,PC),r0
	mov.b r6,@(r0,r4)

loc_8c023a16:
	cmp/ge r7,r5
	bf loc_8c023a04
	mov.l @r15,r14
	mov 0x14,r6
	mov.l @(0x54,PC),r3
	mov r5,r2
	cmp/ge r6,r5
	shll2 r2
	add r3,r14
	bt.s loc_8c023a3e

loc_8c023a2a:
	add r2,r14
	mov 0x01,r7

loc_8c023a2e:
	mov.l @r14+,r4
	tst r4,r4
	bt.s loc_8c023a3a
	add 0x01,r5
	mov.w @(0x2E,PC),r0
	mov.b r7,@(r0,r4)

loc_8c023a3a:
	cmp/ge r6,r5
	bf loc_8c023a2e

loc_8c023a3e:
	add 0x04,r15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c023a44:
	mov.w @(0x22,PC),r1
	mov 0x00,r5
	mov.l @(0x28,PC),r4
	mov 0x14,r0
	add r4,r1
	mov r4,r6

loc_8c023a50:
	mov r6,r4
	mov r5,r7

loc_8c023a54:
	add 0x01,r7
	mov.l r5,@r4
	cmp/ge r0,r7
	bf.s loc_8c023a54
	add 0x04,r4
	add 0x50,r6
	cmp/hs r1,r6
	bf loc_8c023a50
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0140
	#data bank04.loc_8c044f12
	#data loc_8c022dd8
	#data 0x8c1f8cfc

;----------------------------------------------
loc_8c023a78:
	mov.l r14,@-r15
	mova @(0x120,PC),r0
	mov.l r13,@-r15
	mov 0x01,r13
	mov.l r12,@-r15
	mov 0x02,r12
	mov.l r11,@-r15
	mov 0x00,r14
	mov.l r10,@-r15
	mov 0x21,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.w @(0xF2,PC),r11
	fmov @r0,fr15
	mov.l @(0xF8,PC),r8
	mov.l @(0xFC,PC),r9

loc_8c023a9c:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023ae2
	mov r0,r4
	mov.w @(0xDE,PC),r0
	mov r14,r5
	mov.l @(0xF4,PC),r2
	shll2 r5
	mov.b r13,@(r0,r4)
	mov.l @(0xE8,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r0,r0
	add r5,r0
	mov.l @(r0,r11),r3
	mov.w @(0xCA,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r10,@(r0,r4)
	mov r5,r0
	nop
	fmov @(r0,r8),fr3
	mov 0x3C,r0
	mov 0x38,r3
	add r4,r3
	fmov fr3,@r3
	fmov fr15,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c023a9c

loc_8c023ae2:
	lds.l @r15+,pr
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
loc_8c023af6:
	mov.l @(0xB0,PC),r5
	mov 0x20,r3
	mov.l r14,@-r15
	mov r4,r14
	add r14,r3
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @r5,r0
	mov.b @r3,r3
	mov.w @(0x8,r0),r0
	extu.b r3,r3
	and 0x7F,r0
	cmp/eq r3,r0
	bf.s loc_8c023b78
	mov 0x00,r4
	mov.w @(0x74,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @r5,r0
	mov.w @(0x8,r0),r0
	tst 0x80,r0
	bt loc_8c023b30
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x74,r0
	fldi1 fr3
	bra loc_8c023b82
	fmov fr3,@(r0,r14)

loc_8c023b30:
	mov.w @(0x1C,r14),r0
	mov.w @(0x5A,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c023b44
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c023b44:
	mova @(0x64,PC),r0
	mov.l @(0x74,PC),r2
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x5C,PC),r0
	mov.l @(0x64,PC),r3
	fmov @r0,fr2
	mova @(0x5C,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	bra loc_8c023b82
	fmov fr2,@(r0,r14)

loc_8c023b78:
	mov.w @(0x10,PC),r0
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c023b82:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x043c
	#data 0x012c
	#data 0x0084
	#data 0x0168
	#align4
	#data bank14.loc_8c147b10
	#data bank04.loc_8c044f12
	#data 0xc14fd70a
	#data loc_8c023af6
	#data 0x8c26a944
	#data work.GameGlobalPointer
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0

;----------------------------------------------
loc_8c023bc0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x128,PC),r13
	mov 0x04,r0
	fldi0 fr4
	fmov fr4,@r15
	fmov fr4,@(r0,r15)
	mov 0x08,r0
	fmov fr4,@(r0,r15)
	mov.b @r13,r13
	mov.l @(0x11C,PC),r0
	extu.b r13,r13
	mov r13,r14
	shll2 r14
	bra loc_8c023bec
	mov.l @(r0,r14),r14

loc_8c023be4:
	mov.w @r14+,r5
	mov r15,r6
	bsr loc_8c023bfc
	mov r13,r4

loc_8c023bec:
	mov.w @r14,r0
	cmp/eq 0xFF,r0
	bf loc_8c023be4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c023bfc:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xF8,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	mov.l r6,@(0x8,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c023c1e
	mov r0,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c023c1e:
	mov.l @(0xE0,PC),r3
	mov 0x01,r5
	mov.w @(0xBA,PC),r0
	mov.l @(0xDC,PC),r1
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r0
	mov.l @(0xD8,PC),r3
	mov.l @r1,r2
	mov r4,r1
	and r3,r0
	mov.l @(0xD4,PC),r3
	mov.l @r2,r2
	shll2 r0
	add 0x34,r1
	add r2,r0
	mov.w @(0xA0,PC),r2
	mov.l @(r0,r2),r2
	mov.w @(0x9E,PC),r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mov.l @(0x8,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x4,r15),r1
	mov 0x20,r0
	mov 0x00,r3
	mov.b r1,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0x86,PC),r3
	mov.l @r15,r0
	and r3,r0
	mov.w r0,@(0x1C,r4)
	mov r4,r0
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c023c70:
	mov r4,r3
	mov.l @(0x9C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c023c82:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov 0xF8,r3
	mov.l @(0x80,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r13
	mov r0,r4
	mov.l @(0x70,PC),r0
	shad r3,r13
	mov.b @(r0,r13),r13
	extu.b r13,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	mov r4,r0
	nop
	mov.w @(0x2E,PC),r1
	cmp/eq r1,r0
	bt.s loc_8c023d1c
	add r2,r13
	mov.w @(0x28,PC),r1
	cmp/eq r1,r0
	bt loc_8c023d4e
	mov.w @(0x24,PC),r1
	cmp/eq r1,r0
	bt loc_8c023d4e
	mov.w @(0x20,PC),r1
	cmp/eq r1,r0
	bt loc_8c023d64
	mov.w @(0x1C,PC),r1
	cmp/eq r1,r0
	bt loc_8c023d82
	mov.w @(0x18,PC),r1
	cmp/eq r1,r0
	bt loc_8c023db0
	bra loc_8c023dba
	nop

;###############################################
	#data 0x012c
	#data 0x0438
	#data 0x0084
	#data 0xff00
	#data 0x0100
	#data 0x0500
	#data 0x0200
	#data 0x0600
	#data 0x0400
	#data 0x0300
	#align4

	#data 0x8c2897a9
	#data bank14.loc_8c147b7c
	#data bank04.loc_8c044f12
	#data loc_8c023c70
	#data 0x8c26a944
	#data 0xffff00ff
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c147cd4
	#data bank14.loc_8c147ccc
	#data bank14.loc_8c147bdc

;----------------------------------------------
loc_8c023d1c:
	mov 0x00,r11
	mov 0x0C,r10
	mov r11,r12

loc_8c023d22:
	mov 0x20,r0
	mov r13,r6
	mov.b @(r0,r14),r4
	add 0x0C,r13
	mov 0x1E,r5
	bsr loc_8c023bfc
	extu.b r4,r4
	tst r0,r0
	bt.s loc_8c023dcc
	mov r0,r4
	mov r12,r3
	mov 0x21,r0
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov r11,r0
	nop
	add 0x01,r12
	cmp/ge r10,r12
	bf.s loc_8c023d22
	mov.w r0,@(0x1C,r4)
	bra loc_8c023dba
	nop

loc_8c023d4e:
	mov 0x20,r0
	mov r13,r6
	mov.b @(r0,r14),r4
	add 0x0C,r13
	mov 0x23,r5
	bsr loc_8c023bfc
	extu.b r4,r4
	mov.w @(0xA0,PC),r3
	mov.w @(0x1C,r14),r0
	cmp/eq r3,r0
	bt loc_8c023dba

loc_8c023d64:
	mov 0x20,r0
	mov r13,r6
	mov.b @(r0,r14),r4
	add 0x0C,r13
	mov 0x24,r5
	bsr loc_8c023bfc
	extu.b r4,r4
	mov 0x20,r0
	mov r13,r6
	mov.b @(r0,r14),r4
	mov 0x22,r5
	bsr loc_8c023bfc
	extu.b r4,r4
	bra loc_8c023dba
	nop

loc_8c023d82:
	mov.l @(0x80,PC),r1
	mov 0x00,r3
	mov 0x20,r0
	mov r13,r6
	mov.l @r1,r5
	add 0x0C,r13
	mov.b @(r0,r14),r4
	cmp/gt r5,r3
	addc r3,r5
	shar r5
	add 0x28,r5
	bsr loc_8c023bfc
	extu.b r4,r4
	mov.l @(0x64,PC),r2
	mov r13,r6
	mov.l @r2,r0
	and 0x01,r0
	mov r0,r5
	mov 0x20,r0
	mov.b @(r0,r14),r4
	add 0x1F,r5
	bsr loc_8c023bfc
	extu.b r4,r4

loc_8c023db0:
	mov 0x20,r0
	mov.l @(0x54,PC),r3
	mov.b @(r0,r14),r4
	jsr @r3
	extu.b r4,r4

loc_8c023dba:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c023ddc
	mov.l @r15+,r14

loc_8c023dcc:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c023ddc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x20,PC),r3
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r1
	mov.b @r3,r2
	cmp/eq r1,r2
	bt loc_8c023e10
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c023f34
	mov.b r0,@(0x4,r14)

;###############################################
	#data 0x0500
	#align4
	#data 0x8c2897ac
	#data loc_8c023fbc
	#data 0x8c2897a9

;----------------------------------------------
loc_8c023e10:
	mov.w @(0x64,PC),r3
	mov.w @(0x1C,r14),r0
	cmp/eq r3,r0
	bt.s loc_8c023e22
	mov 0x01,r13
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c023e38

loc_8c023e22:
	mov.w @(0x54,PC),r0
	mov r15,r5
	mov.l @(0x58,PC),r3
	mov.l @(0x58,PC),r2
	mov.b r13,@(r0,r14)
	jsr @r2
	mov.l @r3,r4
	tst r0,r0
	bf loc_8c023e38
	bra loc_8c023f34
	nop

loc_8c023e38:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c023e44
	bra loc_8c023f90
	nop

loc_8c023e44:
	mov.b @(0x4,r15),r0
	mov 0x0A,r5
	mov.w @r15,r6
	mov 0x64,r10
	mov r0,r12
	mov.b @(0x5,r15),r0
	mov.w @(0x28,PC),r7
	extu.w r6,r6
	mov r0,r11
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r11,r11
	extu.b r12,r12
	extu.b r0,r0
	add 0xFF,r0
	mov 0x0C,r1
	cmp/hs r1,r0
	bf loc_8c023e6c
	bra loc_8c023f7c
	nop

loc_8c023e6c:
	shll r0
	mov r0,r1
	mova @(0x14,PC),r0
	mov.w @(r0,r1),r0
	braf r0
	nop

;###############################################
	#data 0x0100
	#data 0x012c
	#data 0x03e8
	#align4

	#data 0x8c2897ac
	#data bank11.loc_8c1160f8

	#data 0x0028
	#data 0x002e
	#data 0x0042
	#data 0x005e
	#data 0x007a
	#data 0x0096
	#data 0x00a4
	#data 0x00c4
	#data 0x00d2
	#data 0x00e2
	#data 0x00ee
	#data 0x00fa

;----------------------------------------------
loc_8c023ea0:
	mov r6,r1
	bra loc_8c023f50
	mov r7,r0

loc_8c023ea6:
	mov.l @(0x104,PC),r3
	mov r6,r1
	jsr @r3
	mov r7,r0
	mov.l @(0x100,PC),r2
	mov r0,r1
	jsr @r2
	mov r10,r0
	bra loc_8c023f7a
	nop

loc_8c023eba:
	mov.l @(0xF0,PC),r2
	mov r6,r1
	jsr @r2
	mov r7,r0
	mov.l @(0xE8,PC),r3
	mov r0,r1
	jsr @r3
	mov r10,r0
	mov.l @(0xE4,PC),r2
	mov r0,r1
	jsr @r2
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023ed6:
	mov.l @(0xD4,PC),r2
	mov r6,r1
	jsr @r2
	mov r7,r0
	mov.l @(0xCC,PC),r3
	mov r0,r1
	jsr @r3
	mov r10,r0
	mov.l @(0xC4,PC),r2
	mov r0,r1
	jsr @r2
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023ef2:
	mov.w @(0xB0,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x2,r15),r0
	extu.b r0,r1
	mov r5,r0
	nop
	mov.l @(0xB0,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c023f7c
	mov r0,r4
	bra loc_8c023f34
	nop

loc_8c023f0e:
	mov.b @(0x2,r15),r0
	mov.l @(0x98,PC),r3
	extu.b r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023f1c:
	mov.w @(0x86,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x3,r15),r0
	extu.b r0,r1
	mov r5,r0
	nop
	mov.l @(0x84,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c023f7c
	mov r0,r4

loc_8c023f34:
	mov.w @(0x6E,PC),r0
	mov 0x00,r3
	bra loc_8c023f90
	mov.b r3,@(r0,r14)

loc_8c023f3c:
	mov.b @(0x3,r15),r0
	mov.l @(0x6C,PC),r3
	extu.b r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023f4a:
	mov r12,r1
	mov r5,r0
	nop

loc_8c023f50:
	mov.l @(0x5C,PC),r3
	jsr @r3
	nop
	bra loc_8c023f7a
	nop

loc_8c023f5a:
	mov.l @(0x50,PC),r3
	mov r12,r1
	jsr @r3
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023f66:
	mov.l @(0x48,PC),r3
	mov r11,r1
	jsr @r3
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023f72:
	mov.l @(0x38,PC),r3	
	mov r11,r1	
	jsr @r3	
	mov r5,r0	

loc_8c023f7a:
	mov r0,r4

loc_8c023f7c:
	mov.l @(0x34,PC),r2
	add 0x1E,r4
	mov.w @(0x24,PC),r0
	shll2 r4
	mov.l @r2,r3
	mov.l @r3,r3
	add r3,r4
	mov.l @(r0,r4),r1
	mov.w @(0x1A,PC),r0
	mov.l r1,@(r0,r14)

loc_8c023f90:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c023fa0:
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0438
	#data 0x0084
	#align4
	#data bank12.loc_8c1292d4
	#data bank12.loc_8c129128
	#data 0x8c26a944
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c023fbc:
	sts.l pr,@-r15
	bsr loc_8c023fda
	mov 0x03,r5
	tst r0,r0
	bt.s loc_8c023fd4
	mov r0,r5
	mov.l @(0x10C,PC),r2
	mov r5,r1
	mov.l @(0x10C,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8c023fd4:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c023fda:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	mov.l @(0xFC,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c023ffe
	mov r0,r4
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c023ffe:
	mov.l @(0xE4,PC),r2
	mov 0x01,r3
	mov.w @(0xC6,PC),r0
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov r14,r3
	mov.l r2,@(0x10,r4)
	mov r14,r2
	shll r2
	add r3,r2
	mov.l @(0xD0,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xC8,PC),r0
	mov r14,r3
	shll2 r3
	mov.l @r0,r1
	mov.w @(0xA2,PC),r0
	mov.l @r1,r2
	mov r4,r1
	add 0x50,r1
	add r2,r3
	mov.w @(0x9C,PC),r2
	mov.l @(r0,r3),r3
	mov.w @(0x96,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0xB0,PC),r2
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xAC,PC),r2
	mov r4,r1
	mov.l @(0xAC,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r15,r1
	mov 0x23,r0
	mov.b r1,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c024068:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x88,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c02407c:
	mov.l @(0x80,PC),r7
	mov 0x23,r0
	mov r7,r3
	add 0x59,r3
	mov.b @r3,r2
	mov.b @(r0,r4),r3
	cmp/eq r3,r2
	bt.s loc_8c024096
	mov 0x00,r6
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x36,PC),r0
	mov.b r6,@(r0,r4)

loc_8c024096:
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c0240aa
	cmp/eq 0x01,r0
	bt loc_8c024104
	cmp/eq 0x02,r0
	bt loc_8c02411a
	bra loc_8c024120
	nop

loc_8c0240aa:
	mov r7,r5
	add 0x5A,r5
	mov.b @r5,r3
	mov.w @(0x20,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c024110
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c024120
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x1E,r0
	bra loc_8c024120
	mov.w r0,@(0x1C,r4)

;###############################################
	#data 0x012c
	#data 0x01c8
	#data 0x0084
	#data 0x0431
	#data 0x00ff
	#align4
	#data bank14.loc_8c147cec
	#data bank12.loc_8c1294c8
	#data bank04.loc_8c044f12
	#data loc_8c024068
	#data bank14.loc_8c147d08
	#data 0x8c26a944
	#data bank14.loc_8c147ce0
	#data bank14.loc_8c147cf8
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c147d38
	#data 0x8c289750

;----------------------------------------------
loc_8c024104:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c024120

loc_8c024110:
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xDE,PC),r0
	bra loc_8c024120
	mov.b r6,@(r0,r4)

loc_8c02411a:
	mov.l @(0xE0,PC),r2
	jmp @r2
	nop

loc_8c024120:
	rts
	nop

;----------------------------------------------
loc_8c024124:
	mov.l r14,@-r15
	mov 0x23,r0
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	mov.l @(0xD0,PC),r12
	fmov fr15,@-r15
	mov r12,r3
	add 0x59,r3
	sts.l pr,@-r15
	mov.b @r3,r2
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bt.s loc_8c02414a
	mov 0x00,r13
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xAC,PC),r0
	mov.b r13,@(r0,r14)

loc_8c02414a:
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c024162
	cmp/eq 0x01,r0
	bt loc_8c02424a
	cmp/eq 0x02,r0
	bf loc_8c02415e
	bra loc_8c024278
	nop

loc_8c02415e:
	bra loc_8c024288
	nop

loc_8c024162:
	mov.w @(0x1E,r14),r0
	mov.w @(0x90,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c024176
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c024176:
	mova @(0x8C,PC),r0
	mov.l @(0x98,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x84,PC),r0
	mov.l @(0x88,PC),r3
	fmov @r0,fr2
	mova @(0x80,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x5A,r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	tst 0x7F,r0
	bf loc_8c0241ce
	mova @(0x50,PC),r0
	bra loc_8c0241d2
	fmov @r0,fr3

loc_8c0241ce:
	mova @(0x50,PC),r0
	fmov @r0,fr3

loc_8c0241d2:
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bt.s loc_8c0241e6
	mov r12,r4
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0241e6:
	add 0x5A,r4
	mov.w @(0xE,PC),r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c024224
	bra loc_8c024270
	mov 0x02,r0

;###############################################
	#data 0x012c
	#data 0x0168
	#data 0x00ff
	#align4
	#data bank04.loc_8c0450c0
	#data 0x8c289750
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data 0xc14ccccd
	#data 0x3f666666
	#data 0xbf666666

;----------------------------------------------
loc_8c024224:
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c024288
	mov.b @(0x4,r14),r0
	mov r14,r1
	mov.l @(0xF4,PC),r2
	add 0x74,r1
	mov.l @(0xF4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	jsr @r3
	mov 0x10,r0
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x1E,r0
	bra loc_8c024288
	mov.w r0,@(0x1E,r14)

loc_8c02424a:
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst 0x03,r0
	bf loc_8c024260
	mov.w @(0xCA,PC),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8c024260:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c024288
	mov.b @(0x4,r14),r0
	add 0x01,r0

loc_8c024270:
	mov.b r0,@(0x4,r14)
	mov.w @(0xAE,PC),r0
	bra loc_8c024288
	mov.b r13,@(r0,r14)

loc_8c024278:
	lds.l @r15+,pr
	mov.l @(0xB4,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c024288:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c024294:
	mov.l @(0x9C,PC),r6
	mov 0x23,r0
	mov.l r14,@-r15
	mov r4,r14
	mov r6,r3
	add 0x59,r3
	sts.l pr,@-r15
	mov.b @r3,r2
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bt.s loc_8c0242b4
	mov 0x00,r5
	mov 0x04,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x70,PC),r0
	mov.b r5,@(r0,r14)

loc_8c0242b4:
	mova @(0x80,PC),r0
	mov r6,r4
	fmov @r0,fr4
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c0242d8
	add 0x5A,r4
	cmp/eq 0x01,r0
	bt loc_8c024314
	cmp/eq 0x02,r0
	bt loc_8c02434e
	cmp/eq 0x03,r0
	bt loc_8c024360
	cmp/eq 0x04,r0
	bt loc_8c02437a
	bra loc_8c024386
	nop

loc_8c0242d8:
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fldi1 fr4
	fmov fr3,fr2
	fcmp/gt fr2,fr4
	bt.s loc_8c024386
	fmov fr3,@(r0,r14)
	mov.b @(0x4,r14),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r4
	bsr loc_8c023fda
	extu.b r4,r4
	mov 0x23,r0
	mov.b @(r0,r14),r4
	mov 0x01,r5
	bsr loc_8c023fda
	extu.b r4,r4
	mov 0x23,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r4
	mov 0x02,r5
	extu.b r4,r4
	bra loc_8c023fda
	mov.l @r15+,r14

loc_8c024314:
	mov.b @r4,r3
	mov.w @(0xC,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c02433c
	mov 0x03,r0
	bra loc_8c024386
	mov.b r0,@(0x4,r14)

;###############################################
	#data 0x012c
	#data 0x00ff
	#data bank14.loc_8c147cf8
	#data bank12.loc_8c1294bc
	#data bank04.loc_8c0450c0
	#data 0x8c289750
	#data 0x3e4ccccd

;----------------------------------------------
loc_8c02433c:
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c024386
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x1E,r0
	bra loc_8c024386
	mov.w r0,@(0x1C,r14)

loc_8c02434e:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c024386
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c024360:
	mov 0x50,r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bt.s loc_8c024386
	fmov fr3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x14,PC),r0
	bra loc_8c024386
	mov.b r5,@(r0,r14)

loc_8c02437a:
	mov.l @(0x14,PC),r2
	mov.b r5,@r4
	mov r14,r4
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_8c024386:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#align4
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c024394:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0xFA,PC),r13
	mov.l @(0x10C,PC),r12
	mov.l @(0x104,PC),r14
	bra loc_8c0243c6
	nop

loc_8c0243a6:
	mov.b @(0x3,r14),r0
	mov.b @r14,r4
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov r0,r7
	mov.b @(0x2,r14),r0
	add r12,r7
	extu.b r0,r6
	mov.b @(0x1,r14),r0
	extu.b r0,r5
	bsr loc_8c0243d8
	extu.b r4,r4
	add 0x04,r14

loc_8c0243c6:
	mov.b @r14,r2
	extu.b r2,r2
	cmp/eq r13,r2
	bf loc_8c0243a6
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0243d8:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xD0,PC),r3
	mov.l r4,@(0xC,r15)
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@r15
	mov 0x00,r6
	mov.l r7,@(0x4,r15)
	jsr @r3
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0243fc
	mov r0,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c0243fc:
	mov.w @(0x9C,PC),r0
	mov 0x01,r3
	mov.l @(0xB0,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l @(0xAC,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0xC,r15),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x8,r15),r3
	mov.b r3,@(r0,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.l @r15,r3
	add 0x34,r1
	mov.l @r2,r2
	mov.w @(0x76,PC),r0
	shll2 r3
	add r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0x70,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(0x88,PC),r3
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x84,PC),r2
	mov r4,r1
	mov.l @(0x7C,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x7C,PC),r2
	mov r4,r1
	mov.l @(0x7C,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x50,PC),r0
	mov.w @(0x4C,PC),r1
	mov.l r1,@(r0,r4)
	mov r4,r0
	nop
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c024462:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x60,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c024476:
	rts
	nop

;----------------------------------------------
loc_8c02447a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0x4C,PC),r6
	mov 0x00,r7
	extu.b r0,r0
	mov.l @(0x44,PC),r4
	cmp/eq 0x00,r0
	bt.s loc_8c0244d8
	mov 0x01,r5
	cmp/eq 0x01,r0
	bt loc_8c02450c
	bra loc_8c0245fc
	nop

;###############################################
	#data 0x00ff
	#data 0x012c
	#data 0x0438
	#data 0x0084
	#data 0x0431
	#data 0x00cc
	#align4
	#data bank14.loc_8c147d9c
	#data bank14.loc_8c147dc8
	#data bank04.loc_8c044f12
	#data loc_8c024462
	#data 0x8c26a944
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c147d54
	#data bank14.loc_8c147d7c
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c147e04
	#data 0x8c289750
	#data bank14.loc_8c147dfc

;----------------------------------------------
loc_8c0244d8:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r7,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x00,r2
	mov.l @(0x11C,PC),r0
	extu.b r3,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r5,r0
	shll2 r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c02450c:
	mov 0x5C,r0
	mov.l @(r0,r4),r3
	mov 0x21,r0
	mov.l r3,@r15
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r2,r3
	bf loc_8c0245ae
	mov.l @r15,r0
	cmp/eq 0xFF,r0
	bt loc_8c0245ae
	mov 0x5C,r0
	mov.l @(0x18,r4),r1
	mov.l @(r0,r4),r3
	mov 0x01,r2
	shad r3,r2
	tst r1,r2
	bt loc_8c0245ae
	mov.l @(0xD8,PC),r2
	mov r14,r1
	mov.l @(0xD8,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(0xD4,PC),r2
	mov r14,r1
	mov.l @(0xD4,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1C,r14),r0
	mov.w @(0xB6,PC),r3
	add 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c02455c
	mov r7,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c02455c:
	mov 0x21,r0
	mov r14,r3
	mov.b @(r0,r14),r0
	mov.l @(0xC8,PC),r2
	extu.b r0,r0
	and r5,r0
	shll2 r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	add r0,r3
	fmov fr3,@(r0,r14)
	mov.l r3,@-r15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xA0,PC),r0
	mov.l @(0xA8,PC),r3
	fmov @r0,fr2
	mova @(0x9C,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x9C,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mov.l @r15+,r2
	mova @(0x94,PC),r0
	fmov fr0,fr3
	fmov @r2,fr2
	fmov @r0,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0245ae:
	mov 0x21,r0
	mov r5,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shad r3,r2
	mov.l @(0x18,r4),r3
	tst r3,r2
	bt loc_8c0245ce
	mov.l @(0x74,PC),r2
	mov r14,r1
	mov.l @(0x4C,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	bra loc_8c0245da
	nop

loc_8c0245ce:
	mov.l @(0x68,PC),r2
	mov r14,r1
	mov.l @(0x3C,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c0245da:
	mov.l @(0x60,PC),r2
	mov r14,r1
	mov.l @(0x38,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r5,r0
	shll2 r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov r7,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c0245fc:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0168
	#align4
	#data bank14.loc_8c147dec
	#data bank14.loc_8c147d7c
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c147d60
	#data bank12.loc_8c1294c8
	#data 0x47800000
	#data 0x43b40000
	#data 0x3f000000
	#data 0x0000ffff
	#data bank11.loc_8c11e860
	#data 0x3e4ccccd
	#data bank14.loc_8c147d8c
	#data bank14.loc_8c147d6c
	#data bank14.loc_8c147d54

;----------------------------------------------
loc_8c024640:
	mov.l r14,@-r15
	mova @(0x12C,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov 0x03,r11
	mov.l r10,@-r15
	mov 0x21,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	fmov @r0,fr14
	mova @(0x110,PC),r0
	mov.l @(0x104,PC),r8
	mov.l @(0x104,PC),r9
	fmov @r0,fr15

loc_8c024668:
	mov.l @(0x10C,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0246ce
	mov r0,r14
	mov.l @(0x100,PC),r3
	mov.w @(0xE2,PC),r0
	mov.b r12,@(r0,r14)
	mov.l r3,@(0x10,r14)
	mov.l @r9,r2
	mov.w @(0xDC,PC),r0
	mov.l @r2,r3
	mov r13,r2
	shll r2
	mov.l @(0x2C,r3),r1
	mov r13,r3
	add r3,r2
	mov.l @(0xEC,PC),r3
	shll2 r2
	mov.l r1,@(r0,r14)
	add r3,r2
	mov r14,r1
	add 0x48,r0
	mov.l @(0xE4,PC),r3
	mov.l r10,@(r0,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	fmov fr15,fr4
	mov 0x09,r5
	mov.b r13,@(r0,r14)
	bsr loc_8c0247a0
	mov r14,r4
	fmov fr14,fr4
	mov 0x0A,r5
	bsr loc_8c0247a0
	mov r14,r4
	mov r13,r0
	nop
	shll2 r0
	fmov fr15,fr4
	mov.l @(r0,r8),r5
	bsr loc_8c0247a0
	mov r14,r4
	add 0x01,r13
	cmp/ge r11,r13
	bf loc_8c024668

loc_8c0246ce:
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
loc_8c0246e4:
	mov.l @(0xA0,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	mov 0x20,r3
	add r14,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf.s loc_8c02474e
	mov 0x00,r4
	mov.w @(0x5C,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.w @(0x58,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c02471a
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c02471a:
	mova @(0x70,PC),r0
	mov.l @(0x7C,PC),r2
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x68,PC),r0
	mov.l @(0x6C,PC),r3
	fmov @r0,fr2
	mova @(0x64,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	bra loc_8c024758
	fmov fr2,@(r0,r14)

loc_8c02474e:
	mov.w @(0xE,PC),r0
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c024758:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#data 0x0168
	#align4
	#data bank14.loc_8c147e30
	#data 0x8c26a944
	#data 0xbc23d70a
	#data 0x3c23d70a
	#data bank04.loc_8c044f12
	#data loc_8c0246e4
	#data bank14.loc_8c147e0c
	#data bank12.loc_8c1294c8
	#data work.GameGlobalPointer
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0

;----------------------------------------------
loc_8c0247a0:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x68,PC),r3
	mov 0x08,r0
	mov.l r4,@(0x4,r15)
	mov 0x01,r6
	fmov fr4,@(r0,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0247fc
	mov r0,r4
	mov.w @(0x48,PC),r0
	mov 0x01,r5
	mov.l @(0x50,PC),r3
	mov.l @(0x54,PC),r2
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r15,r3
	mov.l @r0,r0
	shll2 r3
	mov.w @(0x38,PC),r1
	mov.l @(r0,r3),r3
	mov.w @(0x32,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	mov.w @(0x24,PC),r0
	add r3,r1
	mov.l r1,@(r0,r4)
	mov 0x0C,r3
	mov.l @r15,r1
	cmp/ge r3,r1
	bf loc_8c0247fc
	mova @(0x24,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_8c0247fc:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c024804:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#data 0x0088
	#data 0x00c8
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c024804
	#data 0x8c26a944
	#data 0xbd75c28f

;----------------------------------------------
loc_8c024820:
	mov.l r14,@-r15
	mova @(0xD0,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x01,r11
	mov.l r10,@-r15
	mov 0x03,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	fmov @r0,fr13
	mov.l @(0xB4,PC),r12
	mov.w @(0xA4,PC),r9
	mov.l @(0xA8,PC),r8
	fldi0 fr14
	fldi1 fr15
 
loc_8c02484a:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r8
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c02485c
	mov r0,r14
	bra loc_8c024a06
	nop

loc_8c02485c:
	mov.l @(0xA0,PC),r1
	mov.l @(0x9C,PC),r3
	mov.w @(0x88,PC),r0
	mov.b r11,@(r0,r14)
	mov.l r3,@(0x10,r14)
	mov.l @r1,r2
	mov.w @(0x82,PC),r0
	mov.l @r2,r3
	mov.l @(0x3C,r3),r3
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r9,@(r0,r14)
	mov 0x34,r0
	fmov fr14,@(r0,r14)
	mov r13,r3
	mov.l @(0x88,PC),r0
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov fr13,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x74,r0
	fmov fr15,@(r0,r14)
	mov 0x23,r2
	mov.l @r12,r3
	add r14,r2
	mov r13,r5
	mov.b @(0x6,r3),r0
	mov.b r0,@r2
	bsr loc_8c024e08
	mov r14,r4
	mov r13,r5
	mov 0x00,r6
	bsr loc_8c024ef0
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	bsr loc_8c024ef0
	mov r14,r4
	mov r13,r5
	mov 0x02,r6
	bsr loc_8c024ef0
	mov r14,r4
	mov r13,r5
	bsr loc_8c025004
	mov r14,r4
	mov r13,r5
	bsr loc_8c02520e
	mov r14,r4
	mov r13,r5
	mov 0x00,r6
	bsr loc_8c025394
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	bsr loc_8c025394
	mov r14,r4
	mov.l @r12,r3
	mov.b @(0x4,r3),r0
	tst r0,r0
	bf loc_8c02490c
	mov.l @(0x28,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	bra loc_8c02491c
	nop

;###############################################
	#data 0x0421
	#data 0x012c
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data 0xc1500000
	#data work.GameGlobalPointer
	#data loc_8c024a1e
	#data 0x8c26a944
	#data bank14.loc_8c147e3c
	#data loc_8c025c70

;----------------------------------------------
loc_8c02490c:
	mov r13,r5
	mov 0x00,r6
	bsr loc_8c0254b2
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	bsr loc_8c0254b2
	mov r14,r4

loc_8c02491c:
	mov r13,r5
	mov 0x00,r6
	bsr loc_8c0256a2
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	bsr loc_8c0256a2
	mov r14,r4
	mov r13,r5
	mov 0x00,r6
	bsr loc_8c02585a
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	bsr loc_8c02585a
	mov r14,r4
	mov.l @(0x148,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x140,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x138,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x134,PC),r2
	mov r13,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x12C,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x120,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x11C,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x110,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x108,PC),r3
	mov r13,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xFC,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xF4,PC),r3
	mov r13,r5
	mov 0x04,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xE8,PC),r2
	mov r13,r5
	mov 0x05,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xE0,PC),r3
	mov r13,r5
	mov 0x06,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xD4,PC),r2
	mov r13,r5
	mov 0x07,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xCC,PC),r3
	mov r13,r5
	mov 0x08,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xC0,PC),r2
	mov r13,r5
	mov 0x09,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xB8,PC),r3
	mov r13,r5
	mov 0x0A,r6
	jsr @r3
	mov r14,r4
	add 0x01,r13
	cmp/ge r10,r13
	bt loc_8c0249ee
	bra loc_8c02484a
	nop

loc_8c0249ee:
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
	bra loc_8c024c26
	mov.l @r15+,r14

loc_8c024a06:
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

;----------------------------------------------
loc_8c024a1e:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.l @(0x70,PC),r3
	tst r0,r0
	bf.s loc_8c024a42
	mov.l @r3,r4
	mov.b @(0x7,r4),r0
	tst r0,r0
	bt loc_8c024a42
	mov.b @(0x7,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c024a3e
	bra loc_8c024a40
	mov 0x01,r0

loc_8c024a3e:
	mov 0x02,r0

loc_8c024a40:
	mov.b r0,@(0x4,r14)

loc_8c024a42:
	mov.b @(0x4,r14),r0
	tst r0,r0
	bt loc_8c024a4c
	bsr loc_8c024ad0
	mov r14,r4

loc_8c024a4c:
	mov.l @(0x48,PC),r3
	mova @(0x4C,PC),r0
	fmov @r0,fr4
	mov.l @r3,r0
	mov.b @(0x6,r0),r0
	mov r0,r2
	mov.w @(0x1E,r14),r0
	add r2,r0
	cmp/eq 0x00,r0
	bt.s loc_8c024a6e
	fldi1 fr5
	cmp/eq 0x01,r0
	bt loc_8c024a7c
	cmp/eq 0x02,r0
	bt loc_8c024aa4
	bra loc_8c024aba
	nop

loc_8c024a6e:
	mov 0x78,r0
	fmov fr5,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	mova @(0x28,PC),r0
	bra loc_8c024ab4
	fmov @r0,fr3

loc_8c024a7c:
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	bra loc_8c024ac8
	add 0x04,r0

;###############################################
	#data loc_8c025a04
	#data loc_8c025bd8
	#data loc_8c025d44
	#data loc_8c025ece
	#data work.GameGlobalPointer
	#data 0x3f666666
	#data 0x3e99999a

;----------------------------------------------
loc_8c024aa4:
	mov 0x78,r0
	fmov fr5,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr3

loc_8c024ab4:
	mov.w @(0xEA,PC),r0
	bra loc_8c024aca
	fmov fr3,@(r0,r14)

loc_8c024aba:
	mova @(0xF4,PC),r0
	fmov @r0,fr4
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xD8,PC),r0

loc_8c024ac8:
	fmov fr4,@(r0,r14)

loc_8c024aca:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c024ad0:
	mov r4,r3
	mov.l @(0xE0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c024ae2:
	mova @(0xD4,PC),r0
	fmov @r0,fr5
	mova @(0xD4,PC),r0
	fmov @r0,fr4
	mov 0x0A,r6
	mov.w @(0xB4,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c024b3c
	mov 0x01,r5
	mov.w @(0xAC,PC),r0
	fldi0 fr3
	mov.b r5,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.b @(0x4,r4),r0
	mov.l @(0xB4,PC),r5
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c024b24
	mova @(0xB0,PC),r0
	fmov @r5,fr2
	fmov @r0,fr3
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov fr5,@(r0,r4)
	bra loc_8c024b38
	mov 0xFF,r0

loc_8c024b24:
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x03,r0

loc_8c024b38:
	bra loc_8c024b58
	mov.w r0,@(0x1E,r4)

loc_8c024b3c:
	mov.w @(0x66,PC),r0
	mov.b r5,@(r0,r4)
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c024b54
	mov 0x60,r0
	bra loc_8c024b58
	fmov fr5,@(r0,r4)

loc_8c024b54:
	mov 0x60,r0
	fmov fr4,@(r0,r4)

loc_8c024b58:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x5,r4)

;----------------------------------------------
loc_8c024b60:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c024bee
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	mov.w @(0x30,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8c024b90
	mov 0x60,r1
	add r4,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x74,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	bra loc_8c024c22
	fmov fr3,@(r0,r4)

loc_8c024b90:
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c024bd0
	mov.w @(0x1E,r4),r0
	cmp/eq 0x02,r0
	bt loc_8c024bd6
	bra loc_8c024bde
	nop

;###############################################
	#data 0x0080
	#data 0x00d8
	#data 0x012c
	#align4
	#data 0x3f19999a
	#data 0x3e19999a
	#data 0x3f000000
	#data bank14.loc_8c147e48
	#data 0xbeab020c
	#data 0x3eab020c
	#data bank14.loc_8c147e3c
	#data 0x4055c28f
	#data 0xc055c28f
	#data 0x3dcccccd

;----------------------------------------------
loc_8c024bd0:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bf loc_8c024bde

loc_8c024bd6:
	mov 0x74,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)

loc_8c024bde:
	mov 0x60,r1
	add r4,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	bra loc_8c024c22
	fmov fr2,@(r0,r4)

loc_8c024bee:
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x4,r4)
	mov.b r0,@(0x5,r4)
	mov.w @(0xA6,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8c024c0a
	mov.w @(0xA0,PC),r0
	fldi0 fr3
	mov.b r5,@(r0,r4)
	bra loc_8c024c20
	mov 0x74,r0

loc_8c024c0a:
	mov.w @(0x96,PC),r0
	mov 0x01,r2
	fldi1 fr3
	mov.b r2,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov.l @(0x90,PC),r1
	shll2 r0
	fmov @(r0,r1),fr3
	mov 0x38,r0

loc_8c024c20:
	fmov fr3,@(r0,r4)

loc_8c024c22:
	rts
	nop

loc_8c024c26:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c024c3e
	mov r0,r14
	bra loc_8c024ddc
	nop

loc_8c024c3e:
	mov.w @(0x62,PC),r0
	mov 0x00,r3
	mov.l @(0x74,PC),r1
	mov 0x01,r4
	mov.l @(0x6C,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.w @(0x54,PC),r0
	mov.l @r3,r2
	fldi0 fr3
	mov.l @(0x3C,r2),r3
	mov.w @(0x4E,PC),r2
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	add 0x0C,r0
	mov.l r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x54,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov r4,r0
	nop
	mov.l @(0x48,PC),r4
	mov.w r0,@(0x1E,r14)
	mov 0x74,r0
	fldi1 fr3
	fmov fr3,@(r0,r14)
	mov.l @r4,r2
	mov.b @(0x6,r2),r0
	mov 0x23,r2
	add r14,r2
	mov.b r0,@r2
	mov.l @r4,r2
	mov.b @(0x4,r2),r0
	tst r0,r0
	bf loc_8c024ccc
	mov.l @(0x30,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	bra loc_8c024cdc
	nop

;###############################################
	#data 0x00d8
	#data 0x012c
	#data 0x0084
	#data 0x0421
	#align4
	#data bank14.loc_8c147e3c
	#data bank04.loc_8c044f12
	#data loc_8c024a1e
	#data 0x8c26a944
	#data bank14.loc_8c147e54
	#data 0xc1500000
	#data work.GameGlobalPointer
	#data loc_8c025c70

;----------------------------------------------
loc_8c024ccc:
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c0254b2
	mov r14,r4
	mov 0x01,r6
	mov r6,r5
	bsr loc_8c0254b2
	mov r14,r4

loc_8c024cdc:
	mov 0x01,r5
	bsr loc_8c024e08
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c024ef0
	mov r14,r4
	mov 0x01,r6
	mov r6,r5
	bsr loc_8c024ef0
	mov r14,r4
	mov 0x01,r5
	mov 0x02,r6
	bsr loc_8c024ef0
	mov r14,r4
	mov 0x01,r5
	bsr loc_8c025004
	mov r14,r4
	mov 0x01,r5
	bsr loc_8c02520e
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c025394
	mov r14,r4
	mov 0x01,r6
	mov r6,r5
	bsr loc_8c025394
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c0256a2
	mov r14,r4
	mov 0x01,r6
	mov r6,r5
	bsr loc_8c0256a2
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c02585a
	mov r14,r4
	mov 0x01,r6
	mov r6,r5
	bsr loc_8c02585a
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c025a04
	mov r14,r4
	mov 0x01,r6
	mov r6,r5
	bsr loc_8c025a04
	mov r14,r4
	mov 0x01,r5
	bsr loc_8c025bd8
	mov r14,r4
	mov.l @(0xB0,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xA8,PC),r2
	mov 0x01,r6
	mov r6,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x9C,PC),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x98,PC),r2
	mov 0x01,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x8C,PC),r3
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x84,PC),r2
	mov 0x01,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x78,PC),r3
	mov 0x01,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x70,PC),r2
	mov 0x01,r5
	mov 0x04,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x64,PC),r3
	mov 0x01,r5
	mov 0x05,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x5C,PC),r2
	mov 0x01,r5
	mov 0x06,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x50,PC),r3
	mov 0x01,r5
	mov 0x07,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x48,PC),r2
	mov 0x01,r5
	mov 0x08,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x3C,PC),r3
	mov 0x01,r5
	mov 0x09,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x30,PC),r2
	mov r14,r4
	mov 0x0A,r6
	mov 0x01,r5
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8c024ddc:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c024de2:
	mov.w @(0x18,PC),r0
	mov.l @(0x18,r4),r3
	mov.l @(r0,r3),r2
	tst r2,r2
	bt loc_8c024dfa
	mov.l @(0x18,r4),r0
	mov.b @(0x4,r0),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	mov.l @(0x18,r4),r0
	mov.w @(0x1E,r0),r0
	mov.w r0,@(0x1E,r4)

loc_8c024dfa:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data  0x00d8
	#align4
	#data loc_8c025d44
	#data loc_8c025ece

;----------------------------------------------
loc_8c024e08:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xC4,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c024e5e
	mov r0,r4
	mov.w @(0xA6,PC),r0
	mov 0x01,r3
	mov.l @(0xB0,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x21,r3
	add 0xA0,r0
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	mov.l @(0xA4,PC),r0
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x1E,r4)
	mov.l @r15,r3
	mov.w @(0x78,PC),r0
	mov.l r3,@(0x18,r4)
	mov.w @(0x72,PC),r3
	mov.l @r15,r2
	add r2,r3
	mov.l r3,@(r0,r4)

loc_8c024e5e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c024e66:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(0x58,PC),r0
	mov 0x03,r1
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.l @(0x70,PC),r2
	mov.b r3,@(r0,r14)
	mov.l @r2,r4
	mov.b @(0x6,r4),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r0,r3
	cmp/ge r1,r3
	bt loc_8c024eac
	mov.b @(0x6,r4),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r3,r0
	cmp/eq 0x00,r0
	bt loc_8c024ea0
	cmp/eq 0x01,r0
	bt loc_8c024ea4
	cmp/eq 0x02,r0
	bt loc_8c024ea8
	bra loc_8c024eae
	nop

loc_8c024ea0:
	bra loc_8c024eae
	mov 0x16,r4

loc_8c024ea4:
	bra loc_8c024eae
	mov 0x17,r4

loc_8c024ea8:
	bra loc_8c024eae
	mov 0x18,r4

loc_8c024eac:
	mov 0x19,r4

loc_8c024eae:
	mov.l @(0x3C,PC),r3
	shll2 r4
	mov.l @r3,r0
	mov.l @r0,r0
	mov.l @(r0,r4),r2
	mov.w @(0x14,PC),r0
	mov.l r2,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r1
	fmov @(r0,r1),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0088
	#data 0x00c8
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c024e66
	#data 0xc1100000
	#data bank14.loc_8c147e58
	#data 0x3e051eb8
	#data work.GameGlobalPointer
	#data 0x8c26a944

;----------------------------------------------
loc_8c024ef0:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xE8,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c024f54
	mov r0,r4
	mov.w @(0xC6,PC),r0
	mov 0x01,r3
	mov.l @(0xD4,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov 0x21,r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0x4,r15),r2
	mov.l @(0xC8,PC),r0
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x34,r0
	mov.w @(0xAE,PC),r2
	fmov fr3,@(r0,r4)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0x9A,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x8,r15),r0
	mov.w r0,@(0x1E,r4)
	mov 0x21,r0
	mov.l @(0x4,r15),r3
	mov.b r3,@(r0,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	add 0x0C,r15
	bra loc_8c02513c
	lds.l @r15+,pr
 
loc_8c024f54:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c024f5c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(0x6C,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(0x6E,PC),r6
	mov.b @(r0,r2),r3
	mov.l @(0x88,PC),r2
	mov.b r3,@(r0,r14)
	mov.l @(0x80,PC),r3
	mov.l @r3,r4
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf.s loc_8c024f9a
	mov.l @r2,r5
	mov.b @(0x6,r4),r0
	mov.l @(0x7C,PC),r3
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r1,r0
	mov r0,r1
	shll r0
	add r1,r0
	mov 0x21,r1
	add r14,r1
	mov.b @r1,r1
	shll2 r0
	shll r0
	bra loc_8c024fb6
	extu.b r1,r1

loc_8c024f9a:
	mov.b @(0x6,r4),r0
	mov.l @(0x60,PC),r3
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r1,r0
	mov r0,r1
	shll r0
	add r1,r0
	mov 0x21,r1
	add r14,r1
	mov.b @r1,r1
	shll2 r0
	shll r0
	extu.b r1,r1

loc_8c024fb6:
	add r3,r0
	mov.b @(r0,r1),r0
	mov.l @r5,r1
	shll2 r0
	add r1,r0
	mov.l @(r0,r6),r1
	mov.w @(0x16,PC),r0
	mov.l r1,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0088
	#data 0x00c8
	#data 0x00c4
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c024f5c
	#data bank14.loc_8c147e64
	#data 0x3eae147b
	#data 0x3d8f5c00
	#data work.GameGlobalPointer
	#data 0x8c26a944
	#data 0x8c212cf0
	#data 0x8c2897e4

;----------------------------------------------
loc_8c025004:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x10C,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025060
	mov r0,r4
	mov.l @(0x100,PC),r1
	mov.l @(0xFC,PC),r3
	mov.w @(0xE4,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.l @r2,r3
	mov.w @(0xDE,PC),r2
	mov.l @(r0,r3),r0
	add r4,r2
	mov.w @(0xDA,PC),r3
	mov.l r0,@r2
	mov.w @(0xD8,PC),r0
	mov.w @(0xD8,PC),r2
	mov.l r3,@(r0,r4)
	mova @(0xE8,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0xE0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0xBC,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x1E,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c025060:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c025068:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l @(0xC0,PC),r13
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.b @(0x6,r3),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r0,r3
	tst r3,r3
	bf.s loc_8c025092
	fldi1 fr4
	mov 0x78,r0
	fldi0 fr3
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	bra loc_8c02509e
	fmov fr3,@(r0,r14)

loc_8c025092:
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)

loc_8c02509e:
	bsr loc_8c024de2
	mov r14,r4
	mov.l @r13,r4
	mov r4,r2
	mov.b @(0x4,r2),r0
	tst r0,r0
	bf loc_8c0250ca
	mov.b @(0x6,r4),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r0,r3
	mov.l @(0x7C,PC),r0
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c0250e4
	bra loc_8c0250f2
	nop

loc_8c0250ca:
	mov.b @(0x6,r4),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r0,r3
	mov.l @(0x64,PC),r0
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c0250f2

loc_8c0250e4:
	mov.w @(0x2C,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	bra loc_8c0250f8
	mov.b r2,@(r0,r14)

loc_8c0250f2:
	mov.w @(0x1E,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c0250f8:
	mov.l @(0x18,r14),r3
	mov 0x74,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00d0
	#data 0x0084
	#data 0x0421
	#data 0x00cc
	#data 0x0088
	#data 0x00c8
	#data 0x012c
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c025068
	#data 0x8c26a944
	#data 0xc0f00000
	#data 0xbf75c28f
	#data 0x3d8f5c29
	#data work.GameGlobalPointer
	#data 0x8c212cf3
	#data 0x8c2897e7

;----------------------------------------------
loc_8c02513c:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(0x144,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02518c
	mov r0,r4
	mov.w @(0x128,PC),r0
	mov 0x01,r3
	mov.l @(0x138,PC),r1
	mov.l @(0x130,PC),r2
	mov.b r3,@(r0,r4)
	add 0xBC,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x9C,r0
	mov 0x21,r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	mov.w @(0x106,PC),r3
	fmov fr3,@(r0,r4)
	mova @(0x11C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	add r14,r3
	fmov fr3,@(r0,r4)
	mov.w @(0xFA,PC),r0
	mov.l r14,@(0x14,r4)
	mov.l r3,@(r0,r4)
	mov.l r14,@(0x18,r4)

loc_8c02518c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025192:
	mov.l @(0x108,PC),r3
	mov.l @r3,r7
	mov.b @(0x4,r7),r0
	tst r0,r0
	bf.s loc_8c0251bc
	mov.l @(0x14,r4),r6
	mov.b @(0x6,r7),r0
	mov 0x21,r5
	add r6,r5
	mov r0,r2
	mov.w @(0x1E,r6),r0
	mov.b @r5,r5
	add r2,r0
	mov r0,r2
	shll r0
	add r2,r0
	mov.l @(0xEC,PC),r2
	shll2 r0
	shll r0
	bra loc_8c0251d8
	extu.b r5,r5

loc_8c0251bc:
	mov.b @(0x6,r7),r0
	mov 0x21,r5
	add r6,r5
	mov r0,r2
	mov.w @(0x1E,r6),r0
	mov.b @r5,r5
	add r2,r0
	mov r0,r2
	shll r0
	add r2,r0
	mov.l @(0xD0,PC),r2
	shll2 r0
	extu.b r5,r5
	shll r0

loc_8c0251d8:
	add r0,r2
	mov.l @(0x18,r4),r3
	mov.w @(0x9E,PC),r0
	add r2,r5
	mov.b @r5,r5
	mov.b @(r0,r3),r2
	exts.b r5,r3
	mov.b r2,@(r0,r4)
	mov 0x17,r2
	cmp/gt r2,r3
	bf loc_8c0251f0
	add 0xFD,r5

loc_8c0251f0:
	mov.l @(0x9C,PC),r3
	exts.b r5,r5
	mov.w @(0x8C,PC),r0
	shll2 r5
	mov.l @r3,r2
	mov.l @r2,r2
	add r2,r5
	mov.l @(r0,r5),r1
	add 0x9C,r0
	mov.l r1,@(r0,r4)
	mov 0x74,r0
	mov.l @(0x18,r4),r2
	fmov @(r0,r2),fr3
	rts
	fmov fr3,@(r0,r4)

;----------------------------------------------
loc_8c02520e:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x74,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025276
	mov r0,r4
	mov.w @(0x54,PC),r0
	mov 0x01,r3
	mov.l @(0x64,PC),r1
	mov.l @(0x78,PC),r2
	mov.b r3,@(r0,r4)
	add 0x90,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xC8,r0
	mov 0x21,r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	add 0x67,r2
	fmov fr3,@(r0,r4)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	mov.w @(0x1E,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.l @r15,r0
	mov.w r0,@(0x1E,r4)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r5
	add 0x08,r15
	bra loc_8c0252d6
	lds.l @r15+,pr

loc_8c025276:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;###############################################
	#data 0x012c
	#data 0x0088
	#data 0x00c8
	#data 0x00e8
	#align4

	#data bank04.loc_8c044f12
	#data loc_8c025192
	#data 0x8c26a944
	#data 0xbfcccccd
	#data 0xbdb851ec
	#data work.GameGlobalPointer
	#data 0x8c212ced
	#data 0x8c2897e1
	#data loc_8c0252b8
	#data 0x40fa3d71
	#data 0x3eae147b
	#data 0x3d8f5c29

;----------------------------------------------
loc_8c0252b8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(0xF6,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0252d6:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE8,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025318
	mov r0,r4
	mov.w @(0xCA,PC),r0
	mov 0x21,r3
	mov.l @(0xD8,PC),r1
	mov.l @(0xD0,PC),r2
	mov.l r3,@(r0,r4)
	add 0xF4,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xC4,r0
	mov.l r3,@(r0,r4)
	mov.w @(0xB4,PC),r3
	mov.l @r15,r2
	mov.w @(0xB2,PC),r0
	add r2,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x1E,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
 
loc_8c025318:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c025320:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.l @(0xA4,PC),r2
	mov.l @r2,r4
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf.s loc_8c025356
	mov 0x01,r5
	mov.b @(0x6,r4),r0
	mov.l @(0x18,r14),r3
	mov r0,r1
	mov.w @(0x1E,r3),r0
	add r0,r1
	mov.l @(0x94,PC),r0
	mov r1,r3
	shll r1
	add r3,r1
	shll2 r1
	shll r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/gt r5,r0
	bt loc_8c025374
	bra loc_8c025380
	nop

loc_8c025356:
	mov.b @(0x6,r4),r0
	mov.l @(0x18,r14),r3
	mov r0,r1
	mov.w @(0x1E,r3),r0
	add r0,r1
	mov.l @(0x74,PC),r0
	mov r1,r3
	shll r1
	add r3,r1
	shll2 r1
	shll r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/gt r5,r0
	bf loc_8c025380

loc_8c025374:
	mov.w @(0x42,PC),r0
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	bra loc_8c025386
	mov.b r2,@(r0,r14)

loc_8c025380:
	mov.w @(0x36,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c025386:
	mov.l @(0x18,r14),r3
	mov 0x74,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025394:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x28,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025420
	mov r0,r4
	mov.l @(0x4,r15),r3
	tst r3,r3
	bt loc_8c0253e0
	mova @(0x24,PC),r0
	bra loc_8c0253e4
	fmov @r0,fr3

;###############################################
	#data 0x012c
	#data 0x00cc
	#data 0x0088
	#data 0x00c8
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c025320
	#data 0x8c26a944
	#data work.GameGlobalPointer
	#data 0x8c212cf4
	#data 0x8c2897e8
	#data 0xc12e6666

;----------------------------------------------
loc_8c0253e0:
	mova @(0x11C,PC),r0
	fmov @r0,fr3

loc_8c0253e4:
	mov 0x34,r0
	mov.l @(0x124,PC),r2
	fmov fr3,@(r0,r4)
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov 0x01,r3
	fmov fr3,@(r0,r4)
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xF6,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x21,r3
	add 0xA0,r0
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.w @(0x8,r15),r0
	mov.w r0,@(0x1E,r4)
	mov 0x23,r0
	mov.l @(0x4,r15),r3
	mov.b r3,@(r0,r4)
	mov.w @(0xE2,PC),r3
	mov.l @r15,r2
	mov.w @(0xE0,PC),r0
	add r2,r3
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c025420:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c025428:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov 0x23,r0
	mov.l @(0xE0,PC),r2
	mov.b @(r0,r14),r3
	mov 0x0A,r6
	mov.l @(0xD4,PC),r4
	tst r3,r3
	bt.s loc_8c02547a
	mov.l @r2,r5
	mov.b @(0x6,r5),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	add 0x01,r1
	mov r6,r0
	nop
	mov.l @(0xC8,PC),r3
	jsr @r3
	nop
	mov r0,r5
	tst r5,r5
	bt loc_8c025472
	mov.w @(0x98,PC),r0
	mov 0x01,r3
	shll2 r5
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r1
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.l @r4,r1
	mov.l @r1,r3
	add r3,r5
	bra loc_8c02549c
	nop

loc_8c025472:
	mov.w @(0x80,PC),r0
	mov 0x00,r3
	bra loc_8c0254a4
	mov.b r3,@(r0,r14)

loc_8c02547a:
	mov.b @(0x6,r5),r0
	mov.l @(0x9C,PC),r3
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	add 0x01,r1
	jsr @r3
	mov r6,r0
	mov r0,r5
	mov.w @(0x66,PC),r0
	mov.l @(0x18,r14),r1
	shll2 r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.l @r4,r1
	mov.l @r1,r3
	add r3,r5

loc_8c02549c:
	add 0x68,r5
	mov.w @(0x5A,PC),r0
	mov.l @r5,r1
	mov.l r1,@(r0,r14)

loc_8c0254a4:
	mov.l @(0x18,r14),r3
	mov 0x74,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0254b2:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x64,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02556a
	mov r0,r14
	mov.w @(0x22,PC),r0
	mov 0x01,r3
	mov.l @(0x4C,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x20,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.w @(0x8,r15),r0
	mov.w r0,@(0x1E,r14)
	mov 0x23,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r14)
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c02552c
	mova @(0x34,PC),r0
	bra loc_8c025530
	fmov @r0,fr3

;###############################################
	#data 0x012c
	#data 0x0088
	#data 0x00c8
	#data 0x0084
	#data 0x0431
	#align4
	#data 0xc121999a
	#data 0xbf0a3d71
	#data 0x3e051eb8
	#data loc_8c025428
	#data 0x8c26a944
	#data work.GameGlobalPointer
	#data bank12.loc_8c129128
	#data bank12.loc_8c1292d4
	#data bank04.loc_8c044f12
	#data loc_8c025574
	#data 0x40cdc28f

;----------------------------------------------
loc_8c02552c:
	mova @(0xFC,PC),r0
	fmov @r0,fr3

loc_8c025530:
	mov 0x34,r0
	mov.l @(0x104,PC),r2
	fmov fr3,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0xFC,PC),r3
	mov r14,r1
	fmov fr3,@(r0,r14)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	add 0x50,r1
	fmov fr3,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	fldi1 fr15
	fldi0 fr4
	fmov fr15,fr5
	fmov fr15,fr6
	bsr loc_8c02618a
	mov r14,r4
	mov.w @(0xC6,PC),r2
	mov.l @(0x4,r15),r3
	mov.w @(0xC4,PC),r0
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x18,r14)

loc_8c02556a:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025574:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov 0x23,r0
	mov.l @(0xC4,PC),r13
	mov.b @(r0,r14),r3
	mov 0x0A,r6
	mov.l @(0xB8,PC),r2
	mov.l @(0xB8,PC),r7
	tst r3,r3
	bt.s loc_8c0255fe
	mov.l @r2,r4
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c0255b8
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0xA4,PC),r3
	shll2 r1
	shll r1
	add r7,r1
	mov.b @(0x8,r1),r0
	extu.b r0,r1
	jsr @r3
	mov r6,r0
	bra loc_8c0255d6
	nop

loc_8c0255b8:
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x84,PC),r3
	shll2 r1
	shll r1
	add r13,r1
	mov.b @(0x8,r1),r0
	extu.b r0,r1
	jsr @r3
	mov r6,r0

loc_8c0255d6:
	mov r0,r5
	tst r5,r5
	bt loc_8c0255f6
	mov.w @(0x4A,PC),r0
	mov 0x01,r3
	mov.l @(0x6C,PC),r1
	shll2 r5
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov.l @r1,r2
	mov.l @r2,r3
	add r3,r5
	bra loc_8c02568a
	nop

loc_8c0255f6:
	mov.w @(0x30,PC),r0
	mov 0x00,r1
	bra loc_8c025692
	mov.b r1,@(r0,r14)

loc_8c0255fe:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c025658
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x40,PC),r3
	shll2 r1
	shll r1
	add r7,r1
	mov.b @(0x8,r1),r0
	extu.b r0,r1
	jsr @r3
	mov r6,r0
	bra loc_8c025676
	nop

;###############################################
	#data 0x0088
	#data 0x00c8
	#data 0x012c
	#align4
	#data 0x40e33333
	#data 0x3ec28f5c
	#data 0x3d8f5c29
	#data bank13.loc_8c132ac4
	#data bank12.loc_8c1294c8
	#data work.GameGlobalPointer
	#data 0x8c212cec
	#data 0x8c2897e0
	#data bank12.loc_8c129128
	#data 0x8c26a944
	#data bank12.loc_8c1292d4

;----------------------------------------------
loc_8c025658:
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x120,PC),r3
	shll2 r1
	shll r1
	add r13,r1
	mov.b @(0x8,r1),r0
	extu.b r0,r1
	jsr @r3
	mov r6,r0

loc_8c025676:
	mov r0,r5
	mov.w @(0x102,PC),r0
	mov.l @(0x18,r14),r2
	shll2 r5
	mov.l @(0x10C,PC),r1
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov.l @r1,r2
	mov.l @r2,r3
	add r3,r5

loc_8c02568a:
	mov.w @(0xF2,PC),r0
	mov.l @(r0,r5),r2
	add 0xF0,r0
	mov.l r2,@(r0,r14)

loc_8c025692:
	mov.l @(0x18,r14),r3
	mov 0x74,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0256a2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xE4,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025724
	mov r0,r14
	mov.w @(0xBC,PC),r0
	mov 0x01,r3
	mov.l @(0xD0,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0xB6,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.w @(0x8,r15),r0
	mov.w r0,@(0x1E,r14)
	mov 0x23,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r14)
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c0256e4
	mova @(0xB8,PC),r0
	bra loc_8c0256e8
	fmov @r0,fr3

loc_8c0256e4:
	mova @(0xB4,PC),r0
	fmov @r0,fr3

loc_8c0256e8:
	mov 0x34,r0
	mov.l @(0xBC,PC),r2
	fmov fr3,@(r0,r14)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0xB4,PC),r3
	mov r14,r1
	fmov fr3,@(r0,r14)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	add 0x50,r1
	fmov fr3,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(0xA4,PC),r0
	fldi1 fr4
	fmov @r0,fr6
	mova @(0xA4,PC),r0
	fmov @r0,fr5
	bsr loc_8c02618a
	mov r14,r4
	mov.w @(0x6A,PC),r3
	mov.l @(0x4,r15),r2
	mov.w @(0x68,PC),r0
	add r2,r3
	mov.l r3,@(r0,r14)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r14)

loc_8c025724:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c02572c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(0x42,PC),r0
	mov 0x0A,r5
	mov.l @(0x18,r14),r2
	mov.l @(0x80,PC),r12
	mov.b @(r0,r2),r3
	mov.l @(0x48,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.l @(0x6C,PC),r3
	mov.b @(r0,r14),r1
	mov.l @r3,r4
	mov.l @(0x6C,PC),r6
	tst r1,r1
	bt.s loc_8c0257f2
	mov.l @r2,r7
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c0257c8
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x58,PC),r3
	shll2 r1
	shll r1
	add r6,r1
	mov.b @(0x9,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c0257e6
	nop

;###############################################
	#data 0x012c
	#data 0x0094
	#data 0x0431
	#data 0x0088
	#data 0x00c8
	#align4
	#data bank12.loc_8c1292d4
	#data 0x8c26a944
	#data bank04.loc_8c044f12
	#data loc_8c02572c
	#data 0x40c851ec
	#data 0x40db851f
	#data 0xbf7d70a4
	#data 0x3d8f5c29
	#data bank13.loc_8c132ac4
	#data bank12.loc_8c1294c8
	#data 0x3f2eb852
	#data 0x3ebfb15b
	#data work.GameGlobalPointer
	#data 0x8c212cec
	#data 0x8c2897e0
	#data bank12.loc_8c129128

;----------------------------------------------
loc_8c0257c8:
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x118,PC),r3
	shll2 r1
	shll r1
	add r12,r1
	mov.b @(0x9,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0

loc_8c0257e6:
	mov.l @r7,r2
	mov r0,r13
	shll2 r13
	add r2,r13
	bra loc_8c025840
	nop

loc_8c0257f2:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c02581a
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0xEC,PC),r3
	shll2 r1
	shll r1
	add r6,r1
	mov.b @(0x9,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c025838
	nop

loc_8c02581a:
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0xC8,PC),r3
	shll2 r1
	shll r1
	add r12,r1
	mov.b @(0x9,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0

loc_8c025838:
	mov.l @r7,r2
	mov r0,r13
	shll2 r13
	add r2,r13

loc_8c025840:
	mov.w @(0xA0,PC),r0
	mov.l @(r0,r13),r3
	add 0xF0,r0
	mov.l r3,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c02585a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x94,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0258dc
	mov r0,r14
	mov.w @(0x6C,PC),r0
	mov 0x01,r3
	mov.l @(0x80,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x64,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.w @(0x8,r15),r0
	mov.w r0,@(0x1E,r14)
	mov 0x23,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r14)
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c02589c
	mova @(0x68,PC),r0
	bra loc_8c0258a0
	fmov @r0,fr3

loc_8c02589c:
	mova @(0x64,PC),r0
	fmov @r0,fr3

loc_8c0258a0:
	mov 0x34,r0
	mov.l @(0x6C,PC),r2
	fmov fr3,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0x64,PC),r3
	mov r14,r1
	fmov fr3,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	add 0x50,r1
	fmov fr3,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(0x54,PC),r0
	fldi1 fr4
	fmov @r0,fr6
	mova @(0x54,PC),r0
	fmov @r0,fr5
	bsr loc_8c02618a
	mov r14,r4
	mov.w @(0x18,PC),r3
	mov.l @(0x4,r15),r2
	mov.w @(0x16,PC),r0
	add r2,r3
	mov.l r3,@(r0,r14)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r14)

loc_8c0258dc:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
	#data 0x0094
	#data 0x012c
	#data 0x0431
	#data 0x0088
	#data 0x00c8
	#align4
	#data bank12.loc_8c129128
	#data bank12.loc_8c1292d4
	#data bank04.loc_8c044f12
	#data loc_8c025920
	#data 0x41000000
	#data 0x410a147b
	#data 0xbf7d70a4
	#data 0x3d8f5c29
	#data bank13.loc_8c132ac4
	#data bank12.loc_8c1294c8
	#data 0x3f2eb852
	#data 0x3ebfb15b

;----------------------------------------------
loc_8c025920:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(0x116,PC),r0
	mov 0x0A,r5
	mov.l @(0x18,r14),r2
	mov.l @(0x120,PC),r12
	mov.b @(r0,r2),r3
	mov.l @(0x120,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.l @(0x10C,PC),r3
	mov.b @(r0,r14),r1
	mov.l @r3,r4
	mov.l @(0x10C,PC),r6
	tst r1,r1
	bt.s loc_8c02599c
	mov.l @r2,r7
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c025972
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0xFC,PC),r3
	shll2 r1
	shll r1
	add r6,r1
	mov.b @(0xA,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c025990
	nop

loc_8c025972:
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0xD8,PC),r3
	shll2 r1
	shll r1
	add r12,r1
	mov.b @(0xA,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0

loc_8c025990:
	mov.l @r7,r2
	mov r0,r13
	shll2 r13
	add r2,r13
	bra loc_8c0259ea
	nop

loc_8c02599c:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c0259c4
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0xAC,PC),r3
	shll2 r1
	shll r1
	add r6,r1
	mov.b @(0xA,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c0259e2
	nop

loc_8c0259c4:
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x8C,PC),r3
	shll2 r1
	shll r1
	add r12,r1
	mov.b @(0xA,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0

loc_8c0259e2:
	mov.l @r7,r2
	mov r0,r13
	shll2 r13
	add r2,r13

loc_8c0259ea:
	mov.w @(0x5A,PC),r0
	mov.l @(r0,r13),r3
	add 0xF0,r0
	mov.l r3,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025a04:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x58,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025ab0
	mov r0,r14
	mov.w @(0x22,PC),r0
	mov 0x01,r3
	mov.l @(0x40,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x1C,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.w @(0x8,r15),r0
	mov.w r0,@(0x1E,r14)
	mov 0x23,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r14)
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c025a70
	mova @(0x28,PC),r0
	bra loc_8c025a74
	fmov @r0,fr3

;###############################################
	#data 0x012c
	#data 0x0094
	#data 0x0431
	#align4
	#data work.GameGlobalPointer
	#data 0x8c212cec
	#data 0x8c2897e0
	#data 0x8c26a944
	#data bank12.loc_8c129128
	#data bank12.loc_8c1292d4
	#data bank04.loc_8c044f12
	#data loc_8c025ab8
	#data 0x411e8f5c

;----------------------------------------------
loc_8c025a70:
	mova @(0x130,PC),r0
	fmov @r0,fr3

loc_8c025a74:
	mov 0x34,r0
	mov.l @(0x138,PC),r2
	fmov fr3,@(r0,r14)
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0x130,PC),r3
	mov r14,r1
	fmov fr3,@(r0,r14)
	mova @(0x124,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	add 0x50,r1
	fmov fr3,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(0x120,PC),r0
	fldi1 fr4
	fmov @r0,fr6
	mova @(0x120,PC),r0
	fmov @r0,fr5
	bsr loc_8c02618a
	mov r14,r4
	mov.w @(0xF6,PC),r3
	mov.l @(0x4,r15),r2
	mov.w @(0xF4,PC),r0
	add r2,r3
	mov.l r3,@(r0,r14)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r14)

loc_8c025ab0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025ab8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(0xD8,PC),r0
	mov 0x0A,r5
	mov.l @(0x18,r14),r2
	mov.l @(0xFC,PC),r12
	mov.b @(r0,r2),r3
	mov.l @(0xFC,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.l @(0xE8,PC),r3
	mov.b @(r0,r14),r1
	mov.l @r3,r4
	mov.l @(0xE8,PC),r6
	tst r1,r1
	bt.s loc_8c025b34
	mov.l @r2,r7
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c025b0a
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0xD8,PC),r3
	shll2 r1
	shll r1
	add r6,r1
	mov.b @(0xB,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c025b28
	nop

loc_8c025b0a:
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0xB4,PC),r3
	shll2 r1
	shll r1
	add r12,r1
	mov.b @(0xB,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0

loc_8c025b28:
	mov.l @r7,r2
	mov r0,r13
	shll2 r13
	add r2,r13
	bra loc_8c025b82
	nop

loc_8c025b34:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c025b5c
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x88,PC),r3
	shll2 r1
	shll r1
	add r6,r1
	mov.b @(0xB,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c025b7a
	nop

loc_8c025b5c:
	mov.b @(0x6,r4),r0
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x68,PC),r3
	shll2 r1
	shll r1
	add r12,r1
	mov.b @(0xB,r1),r0
	mov r0,r1
	jsr @r3
	mov r5,r0

loc_8c025b7a:
	mov.l @r7,r2
	mov r0,r13
	shll2 r13
	add r2,r13

loc_8c025b82:
	mov.w @(0x1C,PC),r0
	mov.l @(r0,r13),r3
	add 0xF0,r0
	mov.l r3,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0088
	#data 0x00c8
	#data 0x012c
	#data 0x0094
	#align4
	#data 0x4128cccd
	#data 0xbf7d70a4
	#data 0x3d8f5c29
	#data bank13.loc_8c132ac4
	#data bank12.loc_8c1294c8
	#data 0x3f2eb852
	#data 0x3ebfb15b
	#data work.GameGlobalPointer
	#data 0x8c212cec
	#data 0x8c2897e0
	#data 0x8c26a944
	#data bank12.loc_8c129128
	#data bank12.loc_8c1292d4

;----------------------------------------------
loc_8c025bd8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x138,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025c4a
	mov r0,r14
	mov.w @(0x114,PC),r0
	mov 0x01,r3
	mov.l @(0x124,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x10C,PC),r3
	fldi1 fr4
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x1E,r14)
	mova @(0x114,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0x10C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mova @(0x108,PC),r0
	fmov @r0,fr6
	mova @(0x108,PC),r0
	fmov @r0,fr5
	bsr loc_8c02618a
	mov r14,r4
	mov.l @(0x104,PC),r3
	mov.w @(0xDC,PC),r0
	mov.l @r3,r2
	mov.l @r2,r1
	mov.l @(r0,r1),r0
	mov.w @(0xD6,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov.w @(0xD2,PC),r1
	mov.l @r15,r2
	mov.w @(0xD0,PC),r0
	add r2,r1
	mov.l r1,@(r0,r14)
	mov.l @r15,r2
	mov.l r2,@(0x18,r14)

loc_8c025c4a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025c52:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(0xAC,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025c70:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x9C,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025ce2
	mov r0,r14
	mov.w @(0x7A,PC),r0
	mov 0x01,r3
	mov.l @(0xA4,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x72,PC),r3
	fldi1 fr15
	fmov fr15,fr5
	fmov fr15,fr4
	fldi0 fr6
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x1E,r14)
	bsr loc_8c02618a
	mov r14,r4
	mov.l @(0x6C,PC),r3
	mov.w @(0x4C,PC),r0
	mov.l @r3,r2
	mov.l @r2,r1
	mov.l @(r0,r1),r0
	mov.w @(0x3E,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov.w @(0x3A,PC),r1
	mov.l @r15,r2
	mov.w @(0x38,PC),r0
	add r2,r1
	mov.l r1,@(r0,r14)
	mov.l @r15,r2
	mov.l r2,@(0x18,r14)

loc_8c025ce2:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025cec:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(0x12,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0421
	#data 0x00e0
	#data 0x0084
	#data 0x0088
	#data 0x00c8
	#data 0x00e4
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c025c52
	#data 0x410547ae
	#data 0xbf7d70a4
	#data 0x3da3d70a
	#data 0x3f4eab36
	#data 0x3f1ebee0
	#data 0x8c26a944
	#data loc_8c025cec
	#data 0x40d8a3d7
	#data 0x3ebd70a4

;----------------------------------------------
loc_8c025d44:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xE0,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025dd8
	mov r0,r14
	mov.w @(0xC0,PC),r0
	mov 0x01,r3
	mov.l @(0xCC,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0xB8,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.l @r15,r0
	cmp/eq 0x00,r0
	bt loc_8c025d84
	cmp/eq 0x01,r0
	bt loc_8c025d8a
	cmp/eq 0x02,r0
	bt loc_8c025d90
	bra loc_8c025d98
	nop

loc_8c025d84:
	mova @(0xB0,PC),r0
	bra loc_8c025d94
	fmov @r0,fr3

loc_8c025d8a:
	mova @(0xB0,PC),r0
	bra loc_8c025d94
	fmov @r0,fr3

loc_8c025d90:
	mova @(0xAC,PC),r0
	fmov @r0,fr3

loc_8c025d94:
	mov 0x34,r0
	fmov fr3,@(r0,r14)

loc_8c025d98:
	mova @(0xA8,PC),r0
	fldi1 fr15
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr15,fr5
	fmov fr3,@(r0,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr15,fr4
	fmov fr3,@(r0,r14)
	mov.w @(0x8,r15),r0
	fldi0 fr6
	mov.w r0,@(0x1E,r14)
	mov 0x23,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r14)
	bsr loc_8c02618a
	mov r14,r4
	mov.l @(0x8C,PC),r2
	mov r14,r1
	mov.l @(0x8C,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x5C,PC),r3
	mov.l @(0x4,r15),r1
	mov.w @(0x5A,PC),r0
	add r1,r3
	mov.l r3,@(r0,r14)
	mov.l @(0x4,r15),r1
	mov.l r1,@(0x18,r14)

loc_8c025dd8:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025de2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x6C,PC),r3
	mov.l @(0x68,PC),r13
	jsr @r3
	mov r4,r14
	mov.w @(0x32,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.l @(0x64,PC),r2
	mov.b r3,@(r0,r14)
	mov.l @r2,r4
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c025e64
	mov.b @(0x6,r4),r0
	mov 0x23,r1
	add r14,r1
	mov r0,r3
	mov.w @(0x1E,r14),r0
	mov.b @r1,r1
	add r3,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x48,PC),r3
	shll2 r0
	shll r0
	add r0,r3
	extu.b r1,r1
	add r3,r1
	bra loc_8c025e84
	nop

;###############################################
loc_8c025e26:
	#data 0x012c
	#data 0x0431
	#data 0x0088
	#data 0x00c8
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c025de2
	#data 0xc0fdc28f
	#data 0xc0e8f5c3
	#data 0xc0d428f6
	#data 0x3ec28f5c
	#data 0x3d8f5c29
	#data bank13.loc_8c132ac4
	#data bank12.loc_8c1294c8
	#data bank13.loc_8c132a98
	#data loc_8c024de2
	#data work.GameGlobalPointer
	#data 0x8c212cf8

;----------------------------------------------
loc_8c025e64:
	mov.b @(0x6,r4),r0
	mov 0x23,r1
	add r14,r1
	mov r0,r3
	mov.w @(0x1E,r14),r0
	mov.b @r1,r1
	add r3,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x108,PC),r3
	shll2 r0
	shll r0
	add r0,r3
	extu.b r1,r1
	add r3,r1

loc_8c025e84:
	mov.b @r1,r0
	mov.w @(0xE6,PC),r1
	extu.b r0,r0
	mov.l @(0xFC,PC),r3
	add r0,r13
	mov.b @r13,r2
	extu.b r2,r2
	cmp/ge r1,r2
	bf.s loc_8c025eac
	mov.l @r3,r4
	mov.b @r13,r0
	mov.w @(0xD4,PC),r2
	extu.b r0,r0
	mov.l @r4,r3
	add r2,r0
	shll2 r0
	add r3,r0
	mov.w @(0xCA,PC),r3
	bra loc_8c025eba
	mov.l @(r0,r3),r3

loc_8c025eac:
	mov.b @r13,r2
	mov.l @r4,r0
	extu.b r2,r2
	shll2 r2
	add r0,r2
	mov.w @(0xBC,PC),r0
	mov.l @(r0,r2),r3

loc_8c025eba:
	mov.w @(0xBA,PC),r0
	mov.l r3,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025ece:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xB4,PC),r3
	mov.l r4,@(0x8,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	mov.l r6,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025f66
	mov r0,r14
	mov.w @(0x8A,PC),r0
	mov 0x01,r3
	mov.l @(0x9C,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x82,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.l @(0x4,r15),r2
	mov.l @(0x94,PC),r0
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x8C,PC),r0
	fmov @r0,fr4
	mov.l @r15,r0
	cmp/eq 0x00,r0
	bt loc_8c025f1e
	cmp/eq 0x01,r0
	bt loc_8c025f28
	cmp/eq 0x02,r0
	bt loc_8c025f28
	bra loc_8c025f2c
	nop

loc_8c025f1e:
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	bra loc_8c025f2c
	fmov fr3,@(r0,r14)

loc_8c025f28:
	mov 0x38,r0
	fmov fr4,@(r0,r14)

loc_8c025f2c:
	mova @(0x70,PC),r0
	fldi1 fr15
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr15,fr6
	fmov fr3,@(r0,r14)
	mov.l @r15,r0
	fmov fr15,fr5
	mov.w r0,@(0x1E,r14)
	mov 0x23,r0
	mov.l @(0x4,r15),r3
	mov.b r3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	bsr loc_8c02618a
	mov r14,r4
	mov.l @(0x58,PC),r2
	mov r14,r1
	mov.l @(0x58,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x22,PC),r3
	mov.l @(0x8,r15),r1
	mov.w @(0x20,PC),r0
	add r1,r3
	mov.l r3,@(r0,r14)
	mov.l @(0x8,r15),r1
	mov.l r1,@(0x18,r14)

loc_8c025f66:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00f0
	#data 0xff10
	#data 0x0094
	#data 0x04e8
	#data 0x0084
	#data 0x012c
	#data 0x0431
	#data 0x0088
	#data 0x00c8
	#align4
	#data 0x8c2897ec
	#data 0x8c26a944
	#data bank04.loc_8c044f12
	#data loc_8c025fb0
	#data bank14.loc_8c147e7c
	#data 0xbf7ae148
	#data 0xbf7ae146
	#data 0x3d8f5c29
	#data 0x3eff9724
	#data bank13.loc_8c132ac4
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c025fb0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x110,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x23,r0
	mov.l @(0x110,PC),r5
	mov.b @(r0,r14),r3
	mov 0x08,r1
	mov.l @(0x10C,PC),r6
	extu.b r3,r3
	mov.l @(0x100,PC),r2
	cmp/ge r1,r3
	bf.s loc_8c02603c
	mov.l @r2,r4
	mov.b @(r0,r14),r7
	mov.b @(0x4,r4),r0
	extu.b r7,r7
	tst r0,r0
	add 0xF8,r7
	bf.s loc_8c025ff4
	shll2 r7
	mov.b @(0x6,r4),r0
	mov r0,r13
	mov.w @(0x1E,r14),r0
	add r0,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	shll r13
	bra loc_8c026008
	add r5,r13

loc_8c025ff4:
	mov.b @(0x6,r4),r0
	mov r0,r13
	mov.w @(0x1E,r14),r0
	add r0,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	shll r13
	add r6,r13

loc_8c026008:
	mov.w @(0xB8,PC),r0
	extu.b r7,r7
	mov.l @(0x14,r13),r13
	mov 0x01,r3
	neg r7,r7
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r1
	shld r7,r13
	mov 0x0F,r2
	mov.b @(r0,r1),r3
	and r2,r13
	tst r13,r13
	bf.s loc_8c0260a4
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r5
	extu.b r5,r5
	bsr loc_8c0260dc
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0260a4
	mov.w @(0x8C,PC),r0
	mov 0x00,r3
	bra loc_8c0260a4
	mov.b r3,@(r0,r14)

loc_8c02603c:
	mov.b @(r0,r14),r7
	mov.b @(0x4,r4),r0
	extu.b r7,r7
	tst r0,r0
	bf.s loc_8c02605e
	shll2 r7
	mov.b @(0x6,r4),r0
	mov r0,r13
	mov.w @(0x1E,r14),r0
	add r0,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	shll r13
	bra loc_8c026072
	add r5,r13

loc_8c02605e:
	mov.b @(0x6,r4),r0
	mov r0,r13
	mov.w @(0x1E,r14),r0
	add r0,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	shll r13
	add r6,r13

loc_8c026072:
	mov.w @(0x4E,PC),r0
	extu.b r7,r7
	mov.l @(0x10,r13),r13
	mov 0x01,r3
	neg r7,r7
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r1
	shld r7,r13
	mov 0x0F,r2
	mov.b @(r0,r1),r3
	and r2,r13
	tst r13,r13
	bf.s loc_8c0260a4
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r5
	extu.b r5,r5
	bsr loc_8c0260dc
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0260a4
	mov.w @(0x22,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c0260a4:
	mov.l @(0x30,PC),r2
	add 0x25,r13
	shll2 r13
	mov.l @r2,r0
	mov.l @r0,r0
	mov.l @(r0,r13),r3
	mov.w @(0x12,PC),r0
	mov.l r3,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c0260c4:
	#data 0x012c
	#data 0x0084
	#align4
	#data loc_8c024de2
	#data work.GameGlobalPointer
	#data 0x8c212cec
	#data 0x8c2897e0
	#data 0x8c26a944

;----------------------------------------------
loc_8c0260dc:
	mov.l r14,@-r15
	mov 0x08,r2
	mov.l r13,@-r15
	cmp/ge r2,r5
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0xB4,PC),r14
	mov.l @(0xAC,PC),r3
	mov.l @(0xAC,PC),r7
	bf.s loc_8c026134
	mov.l @r3,r6
	mov.b @(0x4,r6),r0
	tst r0,r0
	bf.s loc_8c026110
	mov 0xFF,r13
	mov.b @(0x6,r6),r0
	mov r0,r12
	mov.w @(0x1E,r4),r0
	add r0,r12
	mov r12,r1
	shll r12
	add r1,r12
	shll2 r12
	shll r12
	bra loc_8c026124
	add r7,r12

loc_8c026110:
	mov.b @(0x6,r6),r0
	mov r0,r12
	mov.w @(0x1E,r4),r0
	add r0,r12
	mov r12,r1
	shll r12
	add r1,r12
	shll2 r12
	shll r12
	add r14,r12

loc_8c026124:
	add 0xF8,r5
	mov.l @(0x14,r12),r12
	shll2 r5
	shld r5,r13
	tst r13,r12
	bf loc_8c02617a
	bra loc_8c02617e
	nop

loc_8c026134:
	mov.b @(0x4,r6),r0
	tst r0,r0
	bf.s loc_8c026152
	mov 0xFF,r13
	mov.b @(0x6,r6),r0
	mov r0,r12
	mov.w @(0x1E,r4),r0
	add r0,r12
	mov r12,r1
	shll r12
	add r1,r12
	shll2 r12
	shll r12
	bra loc_8c026166
	add r7,r12

loc_8c026152:
	mov.b @(0x6,r6),r0
	mov r0,r12
	mov.w @(0x1E,r4),r0
	add r0,r12
	mov r12,r1
	shll r12
	add r1,r12
	shll2 r12
	shll r12
	add r14,r12

loc_8c026166:
	shll2 r5
	mov.l @(0x10,r12),r12
	shld r5,r13
	tst r13,r12
	bf loc_8c02617a
	bsr loc_8c0260dc
	mov 0x08,r5
	extu.b r0,r0
	tst r0,r0
	bt loc_8c02617e

loc_8c02617a:
	bra loc_8c026180
	mov 0x01,r0

loc_8c02617e:
	mov 0x00,r0

loc_8c026180:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c02618a:
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr5,@(r0,r4)
	add 0x04,r0
	rts
	fmov fr6,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data work.GameGlobalPointer
	#data 0x8c212cec
	#data 0x8c2897e0

;----------------------------------------------
loc_8c0261a4:
	mov.l r14,@-r15
	mova @(0x110,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov r13,r14
	mov.l r10,@-r15
	mov 0x02,r11
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	fmov @r0,fr13
	mova @(0xF4,PC),r0
	fmov @r0,fr14
	mova @(0xF4,PC),r0
	fmov @r0,fr15
	mov.l @(0xE4,PC),r9
	mov.w @(0xD6,PC),r8
	mov.w @(0xD6,PC),r10

loc_8c0261d4:
	mov.l @(0xEC,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02623e
	mov r0,r4
	mov.w @(0xC6,PC),r0
	mov 0x09,r1
	mov.l @(0xE0,PC),r2
	mov.b r12,@(r0,r4)
	mov.l @(0xD8,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov r14,r2
	shll r2
	mov.l @r0,r0
	mov.l @(r0,r10),r3
	mov.w @(0xB2,PC),r0
	mov.l r3,@(r0,r4)
	mov r14,r3
	add r3,r2
	mov.l @(0xCC,PC),r3
	shll2 r2
	add 0x48,r0
	mov.l r1,@(r0,r4)
	add r3,r2
	mov r4,r1
	mov.l @(0xC4,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mul.l r8,r14
	mov 0x48,r0
	sts macl,r1
	lds r1,fpul
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r9,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov r13,r0
	nop
	add 0x01,r14
	cmp/ge r11,r14
	bf.s loc_8c0261d4
	mov.w r0,@(0x1C,r4)

loc_8c02623e:
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

;----------------------------------------------
loc_8c026256:
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	mov 0x1C,r1
	mov.l @(0x78,PC),r3
	add r4,r1
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov 0x1E,r0
	jsr @r3
	mov.w @r1,r1
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c026278
	mov.b @(0x4,r4),r0
	xor 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8c026278:
	mov 0x20,r0
	mov.l @(0x60,PC),r3
	mov.b @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c02628e
	mov.l @r3,r5
	mov.b @(0x6,r5),r0
	cmp/eq 0x11,r0
	bt loc_8c026294
	bra loc_8c02629c
	nop

loc_8c02628e:
	mov.b @(0x6,r5),r0
	tst r0,r0
	bf loc_8c02629c

loc_8c026294:
	mov.w @(0x16,PC),r0
	mov 0x00,r3
	bra loc_8c0262a4
	mov.b r3,@(r0,r4)

loc_8c02629c:
	mov.w @(0xE,PC),r1
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.b r0,@r1

loc_8c0262a4:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00b4
	#data 0x0090
	#data 0x012c
	#data 0x0084
	#align4
	#data 0x0000ffff
	#data 0x47800000
	#data 0x43b40000
	#data 0x3f000000
	#data bank04.loc_8c044f12
	#data loc_8c026256
	#data 0x8c26a944
	#data bank14.loc_8c147ea8
	#data bank12.loc_8c1294c8
	#data bank12.loc_8c1292d4
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c0262e0:
	sts.l pr,@-r15
	mov.l @(0x64,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02633a
	mov r0,r4
	mov.l @(0x58,PC),r2
	mov 0x01,r3
	mov.w @(0x4A,PC),r0
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0x50,PC),r2
	mov.l @r2,r1
	mov.b @(0x4,r1),r0
	tst r0,r0
	bf loc_8c02630a
	bra loc_8c02630c
	mov 0x0C,r2

loc_8c02630a:
	mov 0x0D,r2

loc_8c02630c:
	mov.l @(0x44,PC),r3
	shll2 r2
	mov.l @r3,r0
	mov.l @r0,r1
	mov.w @(0x2E,PC),r0
	add r1,r2
	mov r4,r1
	mov.l @r2,r3
	mov 0x11,r2
	add 0x34,r1
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x30,PC),r2
	mov.l @(0x30,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x30,PC),r2
	mov r4,r1
	mov.l @(0x28,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8c02633a:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c026340:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#data bank04.loc_8c044f12
	#data loc_8c026340
	#data work.GameGlobalPointer
	#data 0x8c26a944
	#data bank14.loc_8c147ec0
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c147ecc

;----------------------------------------------
loc_8c026364:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	shll2 r14
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x120,PC),r12
	mov.w @(0x10E,PC),r13
	mov.l @(0x118,PC),r0
	bra loc_8c02639a
	mov.l @(r0,r14),r14

loc_8c02637a:
	mov.b @(0x3,r14),r0
	mov.b @r14,r4
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov r0,r7
	mov.b @(0x2,r14),r0
	add r12,r7
	extu.b r0,r6
	mov.b @(0x1,r14),r0
	extu.b r0,r5
	bsr loc_8c0263ac
	extu.b r4,r4
	add 0x04,r14

loc_8c02639a:
	mov.b @r14,r2
	extu.b r2,r2
	cmp/eq r13,r2
	bf loc_8c02637a
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0263ac:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xE4,PC),r3
	mov.l r4,@(0xC,r15)
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@r15
	mov 0x00,r6
	mov.l r7,@(0x4,r15)
	jsr @r3
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0263d0
	mov r0,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c0263d0:
	mov.w @(0xB2,PC),r0
	mov 0x01,r3
	mov.l @(0xC4,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.l r2,@(0x10,r4)
	add 0x34,r1
	mov.l @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0xC,r15),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x8,r15),r3
	mov.l @(0xB0,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @r2,r0
	mov.l @r15,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r3
	mov.w @(0x88,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(0xA0,PC),r3
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x9C,PC),r2
	mov r4,r1
	mov.l @(0x94,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x94,PC),r2
	mov r4,r1
	mov.l @(0x94,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x68,PC),r0
	mov.w @(0x64,PC),r1
	mov.l r1,@(r0,r4)
	mov r4,r0
	nop
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c026432:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x78,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c026446:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c02646a
	mov 0x00,r4
	cmp/eq 0x01,r0
	bt loc_8c0264bc
	bra loc_8c02654e
	nop

loc_8c02646a:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov.l @(0x3C,PC),r3
	mov.w @(0xA,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c02654e
	nop

;###############################################
	#data 0x00ff
	#data 0x012c
	#data 0x0084
	#data 0x0431
	#data 0x00cc
	#align4
	#data bank14.loc_8c147fb0
	#data bank14.loc_8c147fbc
	#data bank04.loc_8c044f12
	#data loc_8c026432
	#data 0x8c26a948
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c147ee4
	#data bank14.loc_8c147f0c
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c148048
	#data bank10.loc_8c108210

;----------------------------------------------
loc_8c0264bc:
	mov.w @(0x1C,r14),r0
	mov.w @(0x11E,PC),r5
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c0264d0
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c0264d0:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c0264e2
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0264e2:
	mov.w @(0xFC,PC),r0
	mov.l @(0x104,PC),r3
	mov.l @(r0,r14),r5
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(0xF8,PC),r2
	jsr @r2
	mov.l @(0x4,r4),r4
	mov.l @(0xFC,PC),r13
	mova @(0x100,PC),r0
	mov.l @(0xF4,PC),r12
	mov.l @(0xF0,PC),r11
	fldi1 fr14
	bra loc_8c026546
	fmov @r0,fr15

loc_8c02650a:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	float fpul,fr3
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r13
	mov r15,r4

loc_8c026546:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c02650a

loc_8c02654e:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c026560:
	mov 0x21,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c02657c
	mov.w @(0x76,PC),r0
	mov.w @(0x74,PC),r1
	mov.l @(r0,r4),r0
	add r4,r1
	mov.w @(0x70,PC),r3
	or 0x08,r0
	mov.l r0,@r1
	mov 0x48,r0
	mov.l r3,@(r0,r4)

loc_8c02657c:
	rts
	nop

;----------------------------------------------
loc_8c026580:
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	mov.w @(0x5E,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c02659a
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)
 
loc_8c02659a:
	mova @(0x68,PC),r0
	mov.l @(0x74,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x60,PC),r0
	mov.l @(0x64,PC),r3
	fmov @r0,fr2
	mova @(0x5C,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.l @(0x4C,PC),r5
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c026620
	mov.l @r5,r4
	mov.l @(0x40,PC),r1
	mov.b @(0x4,r4),r0
	bra loc_8c02663c
	shll2 r0

;###############################################
	#data 0x03e8
	#data 0x0084
	#data 0x00cc
	#data 0x0aab
	#data 0x0168
	#align4
	#data 0x8c26a948
	#data bank10.loc_8c108060
	#data bank10.loc_8c108192
	#data bank10.loc_8c108086
	#data bank10.loc_8c1081e6
	#data 0x3a83126f
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data work.GameGlobalPointer
	#data bank14.loc_8c148010

;----------------------------------------------
loc_8c026620:
	mov.w @(0x8,r4),r0
	tst 0x80,r0
	bt loc_8c026632
	mov.l @(0x11C,PC),r2
	mov r14,r1
	mov.l @(0x11C,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c026632:
	mov.l @r5,r0
	mov.l @(0x114,PC),r1
	mov.w @(0x8,r0),r0
	and 0x7F,r0
	shll2 r0

loc_8c02663c:
	fmov @(r0,r1),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c02664a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0xFC,PC),r6
	mov 0x00,r7
	extu.b r0,r0
	mov.l @(0xF4,PC),r4
	cmp/eq 0x00,r0
	bt.s loc_8c02666a
	mov 0x01,r5
	cmp/eq 0x01,r0
	bt loc_8c02669e
	bra loc_8c0267ca
	nop

loc_8c02666a:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r7,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x00,r2
	mov.l @(0xD8,PC),r0
	extu.b r3,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r5,r0
	shll2 r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c02669e:
	mov 0x5C,r0
	mov.l @(r0,r4),r3
	mov 0x21,r0
	mov.l r3,@r15
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r2,r3
	bf loc_8c02677c
	mov.l @r15,r0
	cmp/eq 0xFF,r0
	bt loc_8c02677c
	mov 0x5C,r0
	mov.l @(0x18,r4),r1
	mov.l @(r0,r4),r3
	mov 0x01,r2
	shad r3,r2
	tst r1,r2
	bt loc_8c02677c
	mov.l @(0x80,PC),r2
	mov r14,r1
	mov.l @(0x80,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(0x8C,PC),r2
	mov r14,r1
	mov.l @(0x8C,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1C,r14),r0
	mov.w @(0x60,PC),r3
	add 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c0266ee
	mov r7,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c0266ee:
	mov 0x21,r0
	mov r14,r3
	mov.b @(r0,r14),r0
	mov.l @(0x7C,PC),r2
	extu.b r0,r0
	and r5,r0
	shll2 r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	add r0,r3
	fmov fr3,@(r0,r14)
	mov.l r3,@-r15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x54,PC),r0
	mov.l @(0x60,PC),r3
	fmov @r0,fr2
	mova @(0x54,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x50,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mov.l @r15+,r2
	mova @(0x48,PC),r0
	fmov fr0,fr3
	fmov @r2,fr2
	fmov @r0,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;###############################################
	#data 0x0168
	#align4
	#data bank14.loc_8c147f0c
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c148020
	#data 0x8c289750
	#data bank14.loc_8c148040
	#data bank14.loc_8c148030
	#data bank14.loc_8c147ef0
	#data bank12.loc_8c1294c8
	#data 0x47800000
	#data 0x43b40000
	#data 0x3f000000
	#data 0x0000ffff
	#data bank11.loc_8c11e860
	#data 0x3e4ccccd

;----------------------------------------------
loc_8c02677c:
	mov 0x21,r0
	mov r5,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shad r3,r2
	mov.l @(0x18,r4),r3
	tst r3,r2
	bt loc_8c02679c
	mov.l @(0x44,PC),r2
	mov r14,r1
	mov.l @(0x44,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	bra loc_8c0267a8
	nop

loc_8c02679c:
	mov.l @(0x3C,PC),r2
	mov r14,r1
	mov.l @(0x34,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c0267a8:
	mov.l @(0x34,PC),r2
	mov r14,r1
	mov.l @(0x34,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r5,r0
	shll2 r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov r7,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c0267ca:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data bank14.loc_8c147f1c
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c147efc
	#data bank14.loc_8c147ee4
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c0267e8:
	mov.l @(0x40,PC),r3
	mov.l @r3,r5

loc_8c0267ec:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x3C,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02681c
	mov r0,r4
	mov.w @(0x20,PC),r0
	mov 0x01,r3
	mov.l @(0x28,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0x4,r15),r0
	mov.l @r15,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r3
	mov.w @(0xE,PC),r0
	mov.l r3,@(r0,r4)

loc_8c02681c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c026824:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#align4
	#data 0x8c26a948
	#data bank04.loc_8c044f12
	#data loc_8c026824

;----------------------------------------------
loc_8c026838:
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02686e
	mov r0,r4
	mov.l @(0x48,PC),r1
	mov 0x01,r5
	mov.l @(0x40,PC),r3
	mov.w @(0x32,PC),r0
	mov.b r5,@(r0,r4)
	add 0xF8,r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0x26,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mova @(0x30,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c02686e:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c026874:
	mov.l @(0x24,PC),r2
	mov.l @(0x28,PC),r1
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	rts
	fmov fr3,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c026874
	#data 0x8c26a948
	#data 0xc14fd70a
	#data work.GameGlobalPointer
	#data bank14.loc_8c148058

;----------------------------------------------
loc_8c0268a4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xC8,PC),r13
	mov.l @(0xC8,PC),r0
	mov.b @r13,r13
	fldi0 fr3
	extu.b r13,r13
	mov r13,r4
	shll2 r4
	mov.l @(r0,r4),r14
	mov.l @(0xC0,PC),r0
	mov.l @(r0,r4),r12
	mova @(0xC0,PC),r0
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x08,r0
	bra loc_8c0268dc
	fmov fr3,@(r0,r15)

loc_8c0268ce:
	fmov @r12+,fr3
	mov 0x04,r0
	mov r15,r6
	fmov fr3,@(r0,r15)
	mov.w @r14+,r5
	bsr loc_8c0268ee
	mov r13,r4

loc_8c0268dc:
	mov.w @r14,r0
	cmp/eq 0xFF,r0
	bf loc_8c0268ce
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0268ee:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x94,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	mov.l r6,@(0x8,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c026910
	mov r0,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c026910:
	mov.l @(0x78,PC),r3
	mov 0x01,r5
	mov.w @(0x58,PC),r0
	mov.l @(0x78,PC),r2
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r1
	mov.l @(0x74,PC),r3
	mov.l @r2,r0
	and r3,r1
	mov.l @(0x70,PC),r3
	mov.l @r0,r0
	shll2 r1
	mov.l @(r0,r1),r1
	mov.w @(0x42,PC),r0
	mov.l r1,@(r0,r4)
	mov r4,r1
	add 0x48,r0
	add 0x34,r1
	mov.l r5,@(r0,r4)
	mov.l @(0x8,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x4,r15),r1
	mov 0x20,r0
	mov 0x00,r3
	mov.b r1,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0x26,PC),r3
	mov.l @r15,r0
	and r3,r0
	mov.w r0,@(0x1C,r4)
	mov r4,r0
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c02695e:
	mov r4,r3
	mov.l @(0x38,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#align4
	#data 0x0000ff00
	#data 0x8c2897a9
	#data bank14.loc_8c14811c
	#data bank14.loc_8c148290
	#data 0xc1500000
	#data bank04.loc_8c044f12
	#data loc_8c02695e
	#data 0x8c26a948
	#data 0xffff00ff
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c148444

;----------------------------------------------
loc_8c0269a0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov 0xF8,r3
	mov.l @(0xF0,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r13
	mov r0,r4
	mov.l @(0xE0,PC),r0
	shad r3,r13
	mov.b @(r0,r13),r13
	extu.b r13,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	add r2,r13
	mov r4,r0
	nop
	mov.w @(0xB8,PC),r1
	cmp/eq r1,r0
	bt.s loc_8c026a12
	mov 0x0C,r11
	mov.w @(0xB2,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a42
	mov.w @(0xAE,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a42
	mov.w @(0xAA,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a48
	mov.w @(0xA6,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a56
	mov.w @(0xA2,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a62
	mov.w @(0x9E,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a8a
	mov.w @(0x9A,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a8a
	mov.w @(0x96,PC),r1
	cmp/eq r1,r0
	bt loc_8c026ab4
	bra loc_8c026ace
	nop

loc_8c026a12:
	mov 0x00,r10
	mov r10,r12

loc_8c026a16:
	mov 0x20,r0
	mov r13,r6
	mov.b @(r0,r14),r4
	add 0x0C,r13
	mov 0x1C,r5
	bsr loc_8c0268ee
	extu.b r4,r4
	tst r0,r0
	bt.s loc_8c026ae0
	mov r0,r4
	mov r12,r3
	mov 0x21,r0
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov r10,r0
	nop
	add 0x01,r12
	cmp/ge r11,r12
	bf.s loc_8c026a16
	mov.w r0,@(0x1C,r4)
	bra loc_8c026ace
	nop

loc_8c026a42:
	mov r13,r6
	bra loc_8c026ac6
	mov 0x21,r5

loc_8c026a48:
	mov 0x20,r0
	mov.l @(0x60,PC),r3
	mov.b @(r0,r14),r4
	jsr @r3
	extu.b r4,r4
	bra loc_8c026ace
	nop

loc_8c026a56:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/ge r11,r3
	bf loc_8c026a62
	add 0x18,r13

loc_8c026a62:
	mov.l @(0x4C,PC),r2
	mov 0x00,r3
	mov 0x20,r0
	mov r13,r6
	mov.l @r2,r5
	add 0x0C,r13
	mov.b @(r0,r14),r4
	cmp/gt r5,r3
	addc r3,r5
	shar r5
	add 0x18,r5
	bsr loc_8c0268ee
	extu.b r4,r4
	mov.l @(0x30,PC),r2
	mov r13,r6
	mov.l @r2,r0
	and 0x01,r0
	mov r0,r5
	bra loc_8c026ac6
	add 0x1D,r5

loc_8c026a8a:
	mov 0x22,r5
	mov r13,r6
	bra loc_8c026ac6
	nop

;###############################################
	#data 0x0100
	#data 0x0200
	#data 0x0700
	#data 0x0300
	#data 0x0400
	#data 0x0900
	#data 0x0500
	#data 0x0800
	#data 0x0600
	#align4
	#data bank14.loc_8c148438
	#data bank14.loc_8c148318
	#data loc_8c026cc0
	#data 0x8c2897ac

;----------------------------------------------
loc_8c026ab4:
	mov 0x20,r0
	mov r13,r6
	mov.b @(r0,r14),r4
	add 0x0C,r13
	mov 0x21,r5
	bsr loc_8c0268ee
	extu.b r4,r4
	mov 0x1C,r5
	mov r13,r6

loc_8c026ac6:
	mov 0x20,r0
	mov.b @(r0,r14),r4
	bsr loc_8c0268ee
	extu.b r4,r4

loc_8c026ace:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c026af0
	mov.l @r15+,r14

loc_8c026ae0:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c026af0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x14,PC),r3
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r1
	mov.b @r3,r2
	cmp/eq r1,r2
	bt loc_8c026b18
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c026c3c
	mov.b r0,@(0x4,r14)

;###############################################
	#align4
	#data 0x8c2897a9

;----------------------------------------------
loc_8c026b18:
	mov.w @(0x64,PC),r3
	mov.w @(0x1C,r14),r0
	cmp/eq r3,r0
	bt.s loc_8c026b2a
	mov 0x01,r13
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c026b40

loc_8c026b2a:
	mov.w @(0x54,PC),r0
	mov r15,r5
	mov.l @(0x58,PC),r3
	mov.l @(0x58,PC),r2
	mov.b r13,@(r0,r14)
	jsr @r2
	mov.l @r3,r4
	tst r0,r0
	bf loc_8c026b40
	bra loc_8c026c3c
	nop

loc_8c026b40:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c026b4c
	bra loc_8c026c96
	nop

loc_8c026b4c:
	mov.b @(0x4,r15),r0
	mov 0x0A,r5
	mov.w @r15,r6
	mov 0x64,r10
	mov r0,r12
	mov.b @(0x5,r15),r0
	mov.w @(0x28,PC),r7
	extu.w r6,r6
	mov r0,r11
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r11,r11
	extu.b r12,r12
	extu.b r0,r0
	add 0xFF,r0
	mov 0x0C,r1
	cmp/hs r1,r0
	bf loc_8c026b74
	bra loc_8c026c84
	nop

loc_8c026b74:
	shll r0
	mov r0,r1
	mova @(loc_8c026b90,PC),r0
	mov.w @(r0,r1),r0

braf_8c026b7c:
	braf r0
	nop

;###############################################
	#data 0x0100
	#data 0x012c
	#data 0x03e8
	#align4

	#data 0x8c2897ac
	#data bank11.loc_8c1160f8

loc_8c026b90:
;	#data loc_8c026ba8-braf_8c026b7c+4
;	#data loc_8c026bae-braf_8c026b7c+4
;	#data loc_8c026bc2-braf_8c026b7c+4
;	#data loc_8c026bde-braf_8c026b7c+4
;	#data loc_8c026bfa-braf_8c026b7c+4
;	#data loc_8c026c16-braf_8c026b7c+4
;	#data loc_8c026c24-braf_8c026b7c+4
;	#data loc_8c026c44-braf_8c026b7c+4
;	#data loc_8c026c52-braf_8c026b7c+4
;	#data loc_8c026c62-braf_8c026b7c+4
;	#data loc_8c026c6e-braf_8c026b7c+4
;	#data loc_8c026c7a-braf_8c026b7c+4

	#data 0x0028
	#data 0x002e
	#data 0x0042
	#data 0x005e
	#data 0x007a
	#data 0x0096
	#data 0x00a4
	#data 0x00c4
	#data 0x00d2
	#data 0x00e2
	#data 0x00ee
	#data 0x00fa

;----------------------------------------------
loc_8c026ba8:
	mov r6,r1
	bra loc_8c026c58
	mov r7,r0

loc_8c026bae:
	mov.l @(0x100,PC),r3
	mov r6,r1
	jsr @r3
	mov r7,r0
	mov.l @(0xFC,PC),r2
	mov r0,r1
	jsr @r2
	mov r10,r0
	bra loc_8c026c82
	nop

loc_8c026bc2:
	mov.l @(0xEC,PC),r2
	mov r6,r1
	jsr @r2
	mov r7,r0
	mov.l @(0xE4,PC),r3
	mov r0,r1
	jsr @r3
	mov r10,r0
	mov.l @(0xE0,PC),r2
	mov r0,r1
	jsr @r2
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026bde:
	mov.l @(0xD0,PC),r2
	mov r6,r1
	jsr @r2
	mov r7,r0
	mov.l @(0xC8,PC),r3
	mov r0,r1
	jsr @r3
	mov r10,r0
	mov.l @(0xC0,PC),r2
	mov r0,r1
	jsr @r2
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026bfa:
	mov.w @(0xAE,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x2,r15),r0
	extu.b r0,r1
	mov r5,r0
	nop
	mov.l @(0xAC,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c026c84
	mov r0,r4
	bra loc_8c026c3c
	nop

loc_8c026c16:
	mov.b @(0x2,r15),r0
	mov.l @(0x94,PC),r3
	extu.b r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026c24:
	mov.w @(0x84,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x3,r15),r0
	extu.b r0,r1
	mov r5,r0
	nop
	mov.l @(0x80,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c026c84
	mov r0,r4

loc_8c026c3c:
	mov.w @(0x6C,PC),r0
	mov 0x00,r3
	bra loc_8c026c96
	mov.b r3,@(r0,r14)

loc_8c026c44:
	mov.b @(0x3,r15),r0
	mov.l @(0x68,PC),r3
	extu.b r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026c52:
	mov r12,r1
	mov r5,r0
	nop

loc_8c026c58:
	mov.l @(0x58,PC),r3
	jsr @r3
	nop
	bra loc_8c026c82
	nop

loc_8c026c62:
	mov.l @(0x4C,PC),r3
	mov r12,r1
	jsr @r3
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026c6e:
	mov.l @(0x44,PC),r3
	mov r11,r1
	jsr @r3
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026c7a:
	mov.l @(0x34,PC),r3
	mov r11,r1
	jsr @r3
	mov r5,r0

loc_8c026c82:
	mov r0,r4

loc_8c026c84:
	mov.l @(0x30,PC),r2
	shll2 r4
	mov.w @(0x22,PC),r0
	mov.l @r2,r3
	mov.l @r3,r3
	add r3,r4
	add 0x70,r4
	mov.l @r4,r1
	mov.l r1,@(r0,r14)

loc_8c026c96:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c026ca6:
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#align4
	#data bank12.loc_8c1292d4
	#data bank12.loc_8c129128
	#data 0x8c26a948
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c026cc0:
	sts.l pr,@-r15
	bsr loc_8c026cde
	mov 0x03,r5
	tst r0,r0
	bt.s loc_8c026cd8
	mov r0,r5
	mov.l @(0x10C,PC),r2
	mov r5,r1
	mov.l @(0x10C,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8c026cd8:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c026cde:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	mov.l @(0xFC,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c026d02
	mov r0,r4
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c026d02:
	mov.l @(0xE4,PC),r2
	mov 0x01,r3
	mov.w @(0xC6,PC),r0
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov r14,r3
	mov.l r2,@(0x10,r4)
	mov r14,r2
	shll r2
	add r3,r2
	mov.l @(0xD0,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xC8,PC),r0
	mov r14,r3
	shll2 r3
	mov.l @r0,r1
	mov.w @(0xA2,PC),r0
	mov.l @r1,r2
	mov r4,r1
	add 0x50,r1
	add r2,r3
	mov.w @(0x9C,PC),r2
	mov.l @(r0,r3),r3
	mov.w @(0x96,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0xB0,PC),r2
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xAC,PC),r2
	mov r4,r1
	mov.l @(0xAC,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r15,r1
	mov 0x23,r0
	mov.b r1,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c026d6c:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x88,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c026d80:
	mov.l @(0x80,PC),r7
	mov 0x23,r0
	mov r7,r3
	add 0x59,r3
	mov.b @r3,r2
	mov.b @(r0,r4),r3
	cmp/eq r3,r2
	bt.s loc_8c026d9a
	mov 0x00,r6
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x36,PC),r0
	mov.b r6,@(r0,r4)

loc_8c026d9a:
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c026dae
	cmp/eq 0x01,r0
	bt loc_8c026e08
	cmp/eq 0x02,r0
	bt loc_8c026e1e
	bra loc_8c026e24
	nop

loc_8c026dae:
	mov r7,r5
	add 0x5A,r5
	mov.b @r5,r3
	mov.w @(0x20,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c026e14
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c026e24
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x1E,r0
	bra loc_8c026e24
	mov.w r0,@(0x1C,r4)

;###############################################
	#data 0x012c
	#data 0x010c
	#data 0x0084
	#data 0x0431
	#data 0x00ff
	#align4
	#data bank14.loc_8c14845c
	#data bank12.loc_8c1294c8
	#data bank04.loc_8c044f12
	#data loc_8c026d6c
	#data bank14.loc_8c148478
	#data 0x8c26a948
	#data bank14.loc_8c148450
	#data bank14.loc_8c148468
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c1484a8
	#data 0x8c289750

;----------------------------------------------
loc_8c026e08:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c026e24

loc_8c026e14:
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xDE,PC),r0
	bra loc_8c026e24
	mov.b r6,@(r0,r4)

loc_8c026e1e:
	mov.l @(0xE0,PC),r2
	jmp @r2
	nop

loc_8c026e24:
	rts
	nop

;----------------------------------------------
loc_8c026e28:
	mov.l r14,@-r15
	mov 0x23,r0
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	mov.l @(0xD0,PC),r12
	fmov fr15,@-r15
	mov r12,r3
	add 0x59,r3
	sts.l pr,@-r15
	mov.b @r3,r2
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bt.s loc_8c026e4e
	mov 0x00,r13
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xAC,PC),r0
	mov.b r13,@(r0,r14)

loc_8c026e4e:
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c026e66
	cmp/eq 0x01,r0
	bt loc_8c026f4e
	cmp/eq 0x02,r0
	bf loc_8c026e62
	bra loc_8c026f7c
	nop

loc_8c026e62:
	bra loc_8c026f8c
	nop

loc_8c026e66:
	mov.w @(0x1E,r14),r0
	mov.w @(0x90,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c026e7a
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c026e7a:
	mova @(0x8C,PC),r0
	mov.l @(0x98,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x84,PC),r0
	mov.l @(0x88,PC),r3
	fmov @r0,fr2
	mova @(0x80,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x5A,r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	tst 0x7F,r0
	bf loc_8c026ed2
	mova @(0x50,PC),r0
	bra loc_8c026ed6
	fmov @r0,fr3

loc_8c026ed2:
	mova @(0x50,PC),r0
	fmov @r0,fr3

loc_8c026ed6:
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bt.s loc_8c026eea
	mov r12,r4
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c026eea:
	add 0x5A,r4
	mov.w @(0xE,PC),r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c026f28
	bra loc_8c026f74
	mov 0x02,r0

;###############################################
	#data 0x012c
	#data 0x0168
	#data 0x00ff
	#align4
	#data bank04.loc_8c0450c0
	#data 0x8c289750
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data 0xc141999a
	#data 0x3f666666
	#data 0xbf666666

;----------------------------------------------
loc_8c026f28:
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c026f8c
	mov.b @(0x4,r14),r0
	mov r14,r1
	mov.l @(0xF4,PC),r2
	add 0x74,r1
	mov.l @(0xF4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	jsr @r3
	mov 0x10,r0
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x1E,r0
	bra loc_8c026f8c
	mov.w r0,@(0x1E,r14)

loc_8c026f4e:
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst 0x03,r0
	bf loc_8c026f64
	mov.w @(0xCA,PC),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8c026f64:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c026f8c
	mov.b @(0x4,r14),r0
	add 0x01,r0

loc_8c026f74:
	mov.b r0,@(0x4,r14)
	mov.w @(0xAE,PC),r0
	bra loc_8c026f8c
	mov.b r13,@(r0,r14)

loc_8c026f7c:
	lds.l @r15+,pr
	mov.l @(0xB4,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c026f8c:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c026f98:
	mov.l @(0x9C,PC),r6
	mov 0x23,r0
	mov.l r14,@-r15
	mov r4,r14
	mov r6,r3
	add 0x59,r3
	sts.l pr,@-r15
	mov.b @r3,r2
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bt.s loc_8c026fb8
	mov 0x00,r5
	mov 0x04,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x70,PC),r0
	mov.b r5,@(r0,r14)

loc_8c026fb8:
	mova @(0x80,PC),r0
	mov r6,r4
	fmov @r0,fr4
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c026fdc
	add 0x5A,r4
	cmp/eq 0x01,r0
	bt loc_8c027018
	cmp/eq 0x02,r0
	bt loc_8c027052
	cmp/eq 0x03,r0
	bt loc_8c027064
	cmp/eq 0x04,r0
	bt loc_8c02707e
	bra loc_8c02708a
	nop

loc_8c026fdc:
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fldi1 fr4
	fmov fr3,fr2
	fcmp/gt fr2,fr4
	bt.s loc_8c02708a
	fmov fr3,@(r0,r14)
	mov.b @(0x4,r14),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r4
	bsr loc_8c026cde
	extu.b r4,r4
	mov 0x23,r0
	mov.b @(r0,r14),r4
	mov 0x01,r5
	bsr loc_8c026cde
	extu.b r4,r4
	mov 0x23,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r4
	mov 0x02,r5
	extu.b r4,r4
	bra loc_8c026cde
	mov.l @r15+,r14

loc_8c027018:
	mov.b @r4,r3
	mov.w @(0xC,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c027040
	mov 0x03,r0
	bra loc_8c02708a
	mov.b r0,@(0x4,r14)

;##############################################
	#data 0x012c
	#data 0x00ff
	#align4
	#data bank14.loc_8c148468
	#data bank12.loc_8c1294bc
	#data bank04.loc_8c0450c0
	#data 0x8c289750
	#data 0x3e4ccccd

;----------------------------------------------
loc_8c027040:
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c02708a
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x1E,r0
	bra loc_8c02708a
	mov.w r0,@(0x1C,r14)

loc_8c027052:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c02708a
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c027064:
	mov 0x50,r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bt.s loc_8c02708a
	fmov fr3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x14,PC),r0
	bra loc_8c02708a
	mov.b r5,@(r0,r14)

loc_8c02707e:
	mov.l @(0x14,PC),r2
	mov.b r5,@r4
	mov r14,r4
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_8c02708a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#align4
	#data bank04.loc_8c0450c0

;==============================================
loc_8c027098:
	mov.w @(0x10A,PC),r0
	mov 0x01,r3
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0270a0:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0xFC,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0270bc
	mov 0x00,r5
	mov.w @(0x1C,r4),r0
	cmp/eq 0x3C,r0
	bf loc_8c0270ce
	mov.w @(0xEC,PC),r0
	bra loc_8c0270c8
	mov.b r5,@(r0,r4)

loc_8c0270bc:
	mov.w @(0x1C,r4),r0
	cmp/eq 0x1E,r0
	bf loc_8c0270ce
	mov.w @(0xE0,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)

loc_8c0270c8:
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)

loc_8c0270ce:
	rts
	nop

;==============================================
loc_8c0270d2:
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0270f2
	mov r0,r4
	mov.w @(0xBE,PC),r0
	mov 0x01,r5
	mov.l @(0xC4,PC),r3
	mov.b r5,@(r0,r4)
	add 0xA0,r0
	mov.l r3,@(0x10,r4)
	mov.l r5,@(r0,r4)

loc_8c0270f2:
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c0270f8:
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
	mova @(0xA4,PC),r0
	mov.l @(0xAC,PC),r3
	fmov @r0,fr14
	mova @(0xA4,PC),r0
	fmov @r0,fr15
	mov 0x03,r12
	mov.l @(0x9C,PC),r13
	mov r4,r11
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov 0x0B,r4
	mov.l @(0x9C,PC),r0
	mov r11,r4
	mov.l @(0x4,r15),r2
	shll2 r4
	mov.l @(r0,r4),r10
	shll r2
	mov.l @(0x98,PC),r3
	mov.l @(0x94,PC),r0
	shll2 r2
	add r3,r2
	mov.l @(r0,r4),r9
	mov r2,r8
	mov.l r2,@r15
	bra loc_8c02723c
	add 0x04,r8

;----------------------------------------------
loc_8c027142:
	bsr loc_8c0270d2
	nop
	tst r0,r0
	bt.s loc_8c027238
	mov r0,r4
	mov.l @r13,r0
	mov r14,r3
	shll2 r3
	fldi0 fr4
	mov.l @r0,r0
	mov.l @(r0,r3),r2
	mov.w @(0x4C,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov @r9,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov fr15,@(r0,r4)
	mov r14,r0
	nop
	cmp/eq 0x02,r0
	bt loc_8c02717e
	mov r14,r0
	nop
	cmp/eq 0x1A,r0
	bf loc_8c027224

loc_8c02717e:
	bsr loc_8c0270d2
	nop
	tst r0,r0
	bt.s loc_8c0271e8
	mov r0,r4
	mov.l @r15,r3
	mov.l @r13,r0
	mov.l @r3,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r3
	mov.w @(0x10,PC),r0
	mov.l r3,@(r0,r4)
	mov r11,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c0271d4
	mova @(0x2C,PC),r0
	bra loc_8c0271d8
	fmov @r0,fr4

;##############################################
	#data 0x012c
	#data 0x0084
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c027098
	#data 0xc0c00000
	#data 0x8c26a94c
	#data 0xc1500000
	#data bank04.loc_8c044e56
	#data bank14.loc_8c1485f8
	#data bank14.loc_8c148620
	#data bank14.loc_8c148648
	#data 0x3fdd70a4

;----------------------------------------------
loc_8c0271d4:
	mova @(0x8C,PC),r0
	fmov @r0,fr4

loc_8c0271d8:
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr14,@(r0,r4)
	mov 0x3C,r0
	fmov fr15,@(r0,r4)
	mov 0x20,r0
	mov.b r12,@(r0,r4)

loc_8c0271e8:
	bsr loc_8c0270d2
	nop
	tst r0,r0
	bt.s loc_8c027238
	mov r0,r4
	mov.l @r13,r0
	mov.l @r8,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(0x60,PC),r0
	mov.l r2,@(r0,r4)
	mov r11,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c02720e
	mova @(0x5C,PC),r0
	bra loc_8c027212
	fmov @r0,fr4

loc_8c02720e:
	mova @(0x5C,PC),r0
	fmov @r0,fr4

loc_8c027212:
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr14,@(r0,r4)
	mov 0x3C,r0
	fmov fr15,@(r0,r4)
	mov 0x20,r0
	bra loc_8c027238
	mov.b r12,@(r0,r4)

loc_8c027224:
	cmp/eq 0x0D,r0
	bf loc_8c027238
	mova @(0x44,PC),r0
	mov.l @(0x48,PC),r3
	fmov @r0,fr4
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov.l r3,@(0x10,r4)

loc_8c027238:
	add 0x04,r9
	add 0x04,r10

loc_8c02723c:
	mov.l @r10,r0
	cmp/eq 0xFF,r0
	bt.s loc_8c027248
	mov r0,r14
	bra loc_8c027142
	nop

loc_8c027248:
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

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0084
	#align4
	#data 0x409dd2f2
	#data 0x40233333
	#data 0x40b81062
	#data 0x3dcccccd
	#data loc_8c0270a0

;==============================================
loc_8c027278:
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0272bc
	mov r0,r4
	mov.l @(0x48,PC),r1
	mov 0x01,r5
	mov.l @(0x40,PC),r3
	mov.w @(0x32,PC),r0
	fldi0 fr4
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(0x2A,PC),r0
	mov.l @r2,r3
	mov.l @r3,r3
	mov.l r3,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0x18,PC),r0
	mov.l r5,@(r0,r4)
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)

loc_8c0272bc:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0272c2:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#data 0x00cc
	#align4
	#data bank04.loc_8c044f12
	#data loc_8c0272c2
	#data 0x8c26a950

;==============================================
loc_8c0272d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov.l r5,@(0x4,r15)

loc_8c0272e8:
	mov.l @(0xDC,PC),r12
	mov 0x01,r4
	mov.l @(0xDC,PC),r14
	mov 0x00,r5
	mov.l r4,@r12
	jsr @r14
	mov.l @(0x8,r15),r4
	mov r0,r14
	tst r14,r14
	bt loc_8c027332
	mov.l @(0xD0,PC),r13
	mov r15,r5
	jsr @r13
	mov r14,r4
	mov.l @r15,r5
	mov 0xF5,r3
	mov.w @(0xBA,PC),r4
	mov.l @(0xC8,PC),r13
	mov.l @(0x4,r15),r6
	add r4,r5
	shad r3,r5
	jsr @r13
	mov r14,r4
	mov.l @(0xC0,PC),r11
	mov r0,r13
	jsr @r11
	mov r14,r4
	mov 0x00,r4
	mov r13,r0
	nop
	cmp/eq 0xE9,r0
	bt.s loc_8c027332
	mov.l r4,@r12
	mov r13,r0
	nop
	cmp/eq 0xDF,r0
	bf loc_8c027352

loc_8c027332:
	mov.l @(0xA8,PC),r14
	jsr @r14
	nop
	mov.l @(0xA4,PC),r14
	jsr @r14
	nop
	mov.l @(0xA8,PC),r14
	mov 0x02,r4
	mov.l @(0xA0,PC),r5
	jsr @r14
	mov.l r4,@r5
	mov.l @(0xA0,PC),r14
	jsr @r14
	nop
	bra loc_8c027358
	mov 0xFF,r0

loc_8c027352:
	tst r13,r13
	bf loc_8c0272e8
	mov.l @r15,r0

loc_8c027358:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c027366:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l r5,@(0x8,r15)
	bsr loc_8c027452
	mov.l r6,@(0x4,r15)
	mov.l @r15,r7
	mov.l @(0x78,PC),r0
	mov r7,r4
	mov.l @(0x4,r15),r6
	mov.l @(0x8,r15),r5
	shll2 r4
	bsr loc_8c0272d8
	mov.l @(r0,r4),r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c02738a:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l r5,@(0x8,r15)
	bsr loc_8c027452
	mov.l r6,@(0x4,r15)
	mov.l @r15,r7
	mov.l @(0x54,PC),r0
	mov r7,r4
	mov.l @(0x4,r15),r6
	mov.l @(0x8,r15),r5
	shll2 r4
	bsr loc_8c0272d8
	mov.l @(r0,r4),r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0273ae:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x3C,PC),r0
	mov r4,r7
	mov.l r4,@r15
	shll2 r4
	bsr loc_8c0272d8
	mov.l @(r0,r4),r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x07ff
	#data 0x8c1cbe04
	#data bank17.loc_8c1771e2
	#data bank17.loc_8c176938
	#data bank17.loc_8c176a2a
	#data bank17.loc_8c176900
	#data bank03.loc_8c031bba
	#data bank11.loc_8c11c0c0
	#data 0x8c212bf8
	#data bank01.loc_8c010326
	#data bank01.loc_8c01033c
	#data bank14.loc_8c148688;File Table

;==============================================
loc_8c0273f4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(0x188,PC),r14
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r14,r0
	cmp/eq 0xFF,r0
	bt.s loc_8c027444
	mov r0,r4
	mov.l @(0x17C,PC),r12
	jsr @r12
	nop
	mov r0,r4
	tst r4,r4
	bt loc_8c027444
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c027444
	mov.l @(0x170,PC),r11
	mov 0x00,r13
	mov.l @(0x168,PC),r10

loc_8c027424:
	jsr @r10
	mov.l @r14,r4
	tst r0,r0
	bt loc_8c027444
	jsr @r12
	mov.l @r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c027444
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c027444
	add 0x01,r13
	cmp/ge r11,r13
	bf loc_8c027424

loc_8c027444:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c027452:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(0x128,PC),r14
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r14,r0
	cmp/eq 0xFF,r0
	bt.s loc_8c0274a2
	mov r0,r4
	mov.l @(0x11C,PC),r12
	jsr @r12
	nop
	mov r0,r4
	tst r4,r4
	bt loc_8c0274a2
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c0274a2
	mov.l @(0x110,PC),r11
	mov 0x00,r13
	mov.l @(0x108,PC),r10

loc_8c027482:
	jsr @r10
	mov.l @r14,r4
	tst r0,r0
	bf loc_8c0274a2
	jsr @r12
	mov.l @r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c0274a2
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c0274a2
	add 0x01,r13
	cmp/ge r11,r13
	bf loc_8c027482

loc_8c0274a2:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0274b0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xDC,PC),r4
	bsr loc_8c027526
	nop
	tst r0,r0
	bf loc_8c027520
	mov.l @(0xD8,PC),r4
	bsr loc_8c0275f6
	nop
	tst r0,r0
	bf loc_8c027520
	mov.l @(0xD0,PC),r14
	bsr loc_8c0275f6
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0274f2
	mov r0,r4
	cmp/pz r4
	bt loc_8c027520
	mov 0x1C,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c027520
	mov.l @(0xC0,PC),r1
	mov.l @(0xBC,PC),r4
	mov.b @r1,r3
	mov.b @r4,r2
	or r3,r2
	mov.b r2,@r4
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0274f2:
	mov.l @(0xA4,PC),r4 ;stage id
	mov 0x1A,r0
	mov.b @(r0,r4),r3 ;stageid loc+1a
	mov 0x1B,r0
	mov.b @(r0,r4),r2 ;stageid loc+1b
	cmp/eq r2,r3
	bf loc_8c027520

loc_8c027500:
	mov.l @(0x90,PC),r4
	mov.b @(0xA,r4),r0
	mov r0,r3
	mov.b @(0xB,r4),r0
	cmp/eq r0,r3
	bf loc_8c027520
	mov 0x1A,r0
	mov.b @(r0,r14),r3
	mov 0x1B,r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bf loc_8c027520
	lds.l @r15+,pr
	mov.l @(0x8C,PC),r4
	bra loc_8c027816
	mov.l @r15+,r14

loc_8c027520:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c027526:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r4,r14
	cmp/pl r0
	bt loc_8c0275ca
	mov.l @(0x78,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c02754a
	cmp/eq 0x01,r0
	bt loc_8c027574
	cmp/eq 0x02,r0
	bt loc_8c0275d8
	bra loc_8c0275ee
	nop

loc_8c02754a:
	mov.b @(0xA,r14),r0
	mov r0,r2
	mov.b @(0xB,r14),r0
	cmp/eq r0,r2
	bt loc_8c0275ca
	mov.b @(0x9,r14),r0
	mov.l @(0x5C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x9,r14)
	mov.b @(0xA,r14),r0
	extu.b r0,r4
	shll2 r4
	shll r4
	add r3,r4
	mov.b @r4,r0
	mov.b r0,@(0x8,r14)
	mov.w @(0x2,r4),r0
	extu.w r0,r0
	mov.l r0,@r14
	mov.l @(0x4,r4),r2
	mov.l r2,@(0x4,r14)

loc_8c027574:
	mov.b @(0x8,r14),r0
	tst r0,r0
	bf loc_8c0275bc
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov.l @r14,r4
	bra loc_8c0275d2
	nop

;###############################################
	#align4
	#data 0x8c1f8ac4
	#data bank17.loc_8c174bc2
	#data bank17.loc_8c174dac
	#data 0x00200000
	#data 0x8c1f8e44
	#data 0x8c1f8e54
	#data 0x8c1f8e8c
	#data 0x8c1f978c
	#data 0x8c1f978d
	#data 0x8c1f8e74
	#data bank12.loc_8c1254f0
	#data 0x8c1f8e4d
	#data 0x8c1f92ac
	#data bank12.loc_8c125760

;----------------------------------------------
loc_8c0275bc:
	mov.l @(0xFC,PC),r3
	mov.l @r14,r5
	mov.w @(0xF4,PC),r6
	jsr @r3
	mov.l @(0x4,r14),r4

;----------------------------------------------
loc_8c0275c6:
	cmp/eq 0xFF,r0
	bf loc_8c0275d2

loc_8c0275ca:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c0275d2:
	mov 0x02,r0
	bra loc_8c0275ee
	mov.b r0,@(0x9,r14)

loc_8c0275d8:
	mov 0x00,r0
	mov.b r0,@(0x9,r14)
	mov.b @(0xC,r14),r0
	add 0xFF,r0
	mov.b r0,@(0xC,r14)
	mov.b @(0xA,r14),r0
	add 0x01,r0
	mov.b r0,@(0xA,r14)
	mov.b @(0xA,r14),r0
	and 0x0F,r0
	mov.b r0,@(0xA,r14)

loc_8c0275ee:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0275f6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x19,r0
	mov r4,r14
	mov.b @(r0,r14),r0
	mov 0x03,r11
	mov.l @(0xB0,PC),r10
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c027632
	mov 0x00,r13
	cmp/eq 0x01,r0
	bt loc_8c0276d8
	cmp/eq 0x04,r0
	bt loc_8c027710
	cmp/eq 0x02,r0
	bf loc_8c027626
	bra loc_8c027740
	nop

loc_8c027626:
	cmp/eq 0x03,r0
	bf loc_8c02762e
	bra loc_8c0277fc
	nop

loc_8c02762e:
	bra loc_8c027800
	nop

loc_8c027632:
	mov 0x1A,r0
	mov.b @(r0,r14),r3
	mov 0x1B,r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bf loc_8c027642
	bra loc_8c027800
	nop

loc_8c027642:
	mov 0x19,r0
	mov.l @(0x80,PC),r2 ;load stage id loc
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x1A,r0
	mov.b @(r0,r14),r12
	mov.l @(0x70,PC),r3
	extu.b r12,r12
	shll2 r12
	shll r12
	cmp/eq r2,r14
	add r3,r12
	bt loc_8c02766a
	mov.b @(r0,r14),r12
	mov.l @(0x68,PC),r3
	extu.b r12,r12
	shll2 r12
	shll r12
	add r3,r12

loc_8c02766a:
	mov.b @r12,r2
	mov 0x18,r0
	mov.b r2,@(r0,r14)
	mov.l @(0x4,r12),r3
	mov.l r3,@(0x4,r14)
	mov.w @(0x2,r12),r0
	extu.w r0,r0
	mov.l r0,@(0x8,r14)
	mov.w @r12,r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c0276d8
	mov.l @(0x4,r12),r5
	mov.l @(0x4C,PC),r0
	shll2 r5
	mov.l @(0x44,PC),r6
	mov.l @(r0,r5),r5
	mov.w @(0x2,r12),r0
	extu.w r0,r4
	mov.l @(0x40,PC),r0
	shll2 r4
	bsr loc_8c027aa4
	mov.l @(r0,r4),r4
	mov 0x19,r0
	mov.b r13,@(r0,r14)
	mov 0x1C,r0
	mov.l r13,@(0x14,r14)
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	mov 0x1A,r0
	mov.b @(r0,r14),r2
	mov 0x7F,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	bra loc_8c027800
	mov.b r2,@(r0,r14)

;###############################################
	#data 0x4000
	#align4
	#data bank12.loc_8c125390
	#data bank17.loc_8c176900
	#data 0x8c1f8eac
	#data 0x8c1f8e54
	#data 0x8c1f938c
	#data 0x00150000
	#data bank14.loc_8c1491ac

;----------------------------------------------
loc_8c0276d8:
	mov.l @(0x8,r14),r4
	mov 0x00,r5
	mov.l @(0xF8,PC),r3
	mov.l @(0xF4,PC),r0
	shll2 r4
	jsr @r3
	mov.l @(r0,r4),r4
	tst r0,r0
	bt.s loc_8c0276fe
	mov.l r0,@r14
	mov.l @(0xEC,PC),r2
	mov r14,r5
	add 0x0C,r5
	jsr @r2
	mov.l @r14,r4
	tst r0,r0
	bf loc_8c027704
	bra loc_8c027720
	nop

loc_8c0276fe:
	mov 0x19,r0
	bra loc_8c027800
	mov.b r11,@(r0,r14)

loc_8c027704:
	mov.l @(0xC,r14),r2
	mov 0xF5,r1
	mov.w @(0xC4,PC),r3
	add r3,r2
	shad r1,r2
	mov.l r2,@(0x10,r14)

loc_8c027710:
	mov.l @(0xCC,PC),r3
	mov.l @(0x10,r14),r5
	mov.l @(0x4,r14),r6
	jsr @r3
	mov.l @r14,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c02772c

loc_8c027720:
	jsr @r10
	mov.l @r14,r4
	mov 0x19,r0
	mov.l r13,@r14
	bra loc_8c027800
	mov.b r11,@(r0,r14)

loc_8c02772c:
	tst r4,r4
	bf loc_8c027738
	mov 0x19,r0
	mov 0x04,r2
	bra loc_8c027804
	mov.b r2,@(r0,r14)

loc_8c027738:
	mov 0x19,r0
	mov 0x02,r1
	bra loc_8c02777e
	mov.b r1,@(r0,r14)

loc_8c027740:
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov.l @r14,r4
	mov.l @(0xA0,PC),r2
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x00,r0
	bt.s loc_8c027764
	mov.b r4,@r2
	cmp/eq 0x01,r0
	bt loc_8c027782
	cmp/eq 0x02,r0
	bt loc_8c0277cc
	cmp/eq 0x05,r0
	bt loc_8c0277f0
	bra loc_8c0277f0
	nop

loc_8c027764:
	mov.l @(0x14,r14),r3
	mov 0x3C,r1
	add 0x01,r3
	mov.l r3,@(0x14,r14)
	mov r3,r0
	nop
	cmp/hi r1,r0
	bf loc_8c027804
	jsr @r10
	mov.l @r14,r4
	mov 0x19,r0
	mov.l r13,@r14
	mov.b r11,@(r0,r14)

loc_8c02777e:
	bra loc_8c027804
	mov.l r13,@(0x14,r14)

loc_8c027782:
	jsr @r10
	mov.l @r14,r4
	mov 0x19,r0
	mov.l r13,@r14
	mov.b r13,@(r0,r14)
	mov 0x1C,r0
	mov.l r13,@(0x14,r14)
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	mov 0x1A,r0
	mov.b @(r0,r14),r2
	mov 0x7F,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov 0x18,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst r3,r0
	bt loc_8c0277c8
	mov 0x18,r0
	mov.b @(r0,r14),r6
	mov.l @(0x34,PC),r0
	mov.b r6,@r15
	extu.b r6,r6
	add 0xFF,r6
	mov.b @r15,r4
	shll2 r6
	mov.l @(0x4,r14),r5
	mov.l @(r0,r6),r6
	bsr loc_8c027a7a
	extu.b r4,r4

loc_8c0277c8:
	bra loc_8c027806
	mov 0xFF,r0

loc_8c0277cc:
	bra loc_8c027804
	mov.l r13,@(0x14,r14)

;###############################################
	#data 0x07ff
	#align4
	#data bank14.loc_8c148688;File Table
	#data bank17.loc_8c1771e2
	#data bank17.loc_8c176938
	#data bank17.loc_8c176b90
	#data bank17.loc_8c176eb0
	#data bank14.loc_8c1491a8
	#data bank13.loc_8c138b90

;----------------------------------------------
loc_8c0277f0:
	jsr @r10
	mov.l @r14,r4
	mov 0x19,r0
	mov.l r13,@r14
	bra loc_8c027804
	mov.b r11,@(r0,r14)

loc_8c0277fc:
	mov 0x19,r0
	mov.b r13,@(r0,r14)

loc_8c027800:
	bra loc_8c027806
	mov 0x00,r0

loc_8c027804:
	mov 0x01,r0

loc_8c027806:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c027816:
	mov.l r14,@-r15
	mov.l @(0xD8,PC),r2
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @r2,r3
	tst r3,r3
	bf.s loc_8c0278e2
	mov r4,r14
	mov 0x11,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c02783c
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c027870
	bra loc_8c0278e2
	nop

loc_8c02783c:
	mov 0x12,r0
	mov.b @(r0,r14),r3
	mov 0x13,r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bt loc_8c0278e2
	mov 0x11,r0
	mov.l @(0xAC,PC),r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x12,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov.l @(0x4,r4),r3
	mov.l r3,@r14
	mov.l @r4,r1
	mov.l r1,@(0x4,r14)
	mov.l @(0x8,r4),r3
	mov.l r3,@(0x8,r14)
	mov.l r12,@(0xC,r14)

loc_8c027870:
	mov.l @(0x88,PC),r2
	jsr @r2
	nop
	mov.w @(0x78,PC),r4
	neg r0,r0
	mov.l @(0x84,PC),r3
	add r0,r4
	mov.l @(0x84,PC),r2
	mov.l r4,@r3
	mov r4,r1
	mov.l @(0x80,PC),r3
	jsr @r3
	mov.l @r2,r0
	mov r0,r13
	cmp/pl r13
	bf loc_8c0278e2
	shll8 r13
	mov.l @(0x8,r14),r3
	shll2 r13
	shll2 r13
	cmp/gt r13,r3
	bt loc_8c0278be
	mov 0x11,r0
	mov.l @(0x8,r14),r13
	mov.l r12,@(0x8,r14)
	mov.b r12,@(r0,r14)
	mov 0x14,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	mov 0x12,r0
	mov.b @(r0,r14),r2
	mov 0x07,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	bra loc_8c0278c4
	mov.b r2,@(r0,r14)

loc_8c0278be:
	mov.l @(0x8,r14),r0
	sub r13,r0
	mov.l r0,@(0x8,r14)

loc_8c0278c4:
	mov.l @(0xC,r14),r3
	mov r13,r6
	mov.l @(0x40,PC),r2
	add r13,r3
	mov.l r3,@(0xC,r14)
	mov.l @(0x4,r14),r5
	jsr @r2
	mov.l @r14,r4
	mov.l @(0x4,r14),r3
	add r13,r3
	mov.l r3,@(0x4,r14)
	mov.l @r14,r2
	add r13,r2
	bra loc_8c0278e6
	mov.l r2,@r14

loc_8c0278e2:
	bra loc_8c0278e8
	mov 0x00,r0

loc_8c0278e6:
	mov 0x01,r0

loc_8c0278e8:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x3a98
	#align4
	#data 0x8c26a963
	#data 0x8c1f932c
	#data bank11.loc_8c11d430
	#data 0x8c1f9790
	#data 0x8c1f8e3c
	#data bank12.loc_8c1291dc
	#data bank12.loc_8c129668

;==============================================
loc_8c027910:
	mov.l @(0x10C,PC),r6
	mov 0x00,r4
	mov.l @(0x104,PC),r3
	mov r6,r5
	add 0x04,r5
	mov.l r4,@r3
	mov.l r4,@r6
	mov 0x07,r6

loc_8c027920:
	dt r6
	mov.l r4,@r5
	bf.s loc_8c027920
	add 0x04,r5
	mov.l @(0xF8,PC),r6
	mov 0x04,r5

loc_8c02792c:
	dt r5
	mov.l r4,@r6
	bf.s loc_8c02792c
	add 0x04,r6
	mov.l @(0xF0,PC),r6
	mov 0x06,r5

loc_8c027938:
	dt r5
	mov.l r4,@r6
	bf.s loc_8c027938
	add 0x04,r6
	mov.w @(0xD6,PC),r5
	mov.l @(0xE8,PC),r6

loc_8c027944:
	mov.l r4,@r6
	add 0x04,r6
	dt r5
	mov.l r4,@r6
	bf.s loc_8c027944
	add 0x04,r6
	mov.l @(0xDC,PC),r6
	mov 0x10,r5

loc_8c027954:
	mov.l r4,@r6
	add 0x04,r6
	dt r5
	mov.l r4,@r6
	bf.s loc_8c027954
	add 0x04,r6
	mov.l @(0xD0,PC),r5
	mov 0x08,r6

loc_8c027964:
	mov.l r4,@r5
	add 0x04,r5
	mov.l r4,@r5
	add 0x04,r5
	dt r6
	mov.l r4,@r5
	bf.s loc_8c027964
	add 0x04,r5
	mov.l @(0xC0,PC),r2
	mov 0x00,r5
	jmp @r2
	mov r5,r4

;==============================================
loc_8c02797c:
	mov.l @(0xBC,PC),r5
	mov 0x00,r4
	mov r5,r6
	mov.l r4,@r5
	mov 0x07,r5
	add 0x04,r6

loc_8c027988:
	dt r5
	mov.l r4,@r6
	bf.s loc_8c027988
	add 0x04,r6
	mov.w @(0x86,PC),r5
	mov.l @(0xAC,PC),r6

loc_8c027994:
	mov.l r4,@r6
	add 0x04,r6
	dt r5
	mov.l r4,@r6
	bf.s loc_8c027994
	add 0x04,r6
	rts
	nop

;==============================================
loc_8c0279a4:
	mov.l @(0x78,PC),r4
	mov 0x1A,r0
	mov.b @(r0,r4),r3
	mov 0x1B,r0
	mov.b @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c0279da
	mov.l @(0x88,PC),r4
	mov 0x1A,r0
	mov.b @(r0,r4),r3
	mov 0x1B,r0
	mov.b @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c0279da
	mov.l @(0x60,PC),r4
	mov.b @(0xA,r4),r0
	mov r0,r3
	mov.b @(0xB,r4),r0
	cmp/eq r0,r3
	bf loc_8c0279da
	mov.l @(0x58,PC),r4
	mov 0x12,r0
	mov.b @(r0,r4),r2
	mov 0x13,r0
	mov.b @(r0,r4),r3
	cmp/eq r3,r2
	bt loc_8c0279de

loc_8c0279da:
	rts
	mov 0x00,r0

loc_8c0279de:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c0279e4:
	mov.l r14,@-r15
	mov 0x1C,r0
	mov.l @(0x34,PC),r14 ;8c1f8e54
	mov 0x7F,r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x1B,r0
	mov.b @(r0,r14),r7
	mov.l @(0x34,PC),r3
	add 0x01,r7
	mov.b r7,@(r0,r14)
	add 0xFF,r7
	extu.b r7,r7
	mov.b @(r0,r14),r1
	shll2 r7
	shll r7
	and r2,r1
	add r3,r7
	mov.b r1,@(r0,r14)
	mov.w r4,@r7
	mov.l r6,@(0x4,r7)
	mov r5,r0
	nop
	mov.w r0,@(0x2,r7)
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0080
	#align4
	#data 0x8c1f8e40
	#data 0x8c1f8e54
	#data 0x8c1f8e44
	#data 0x8c1f8e74
	#data 0x8c1f8eac
	#data 0x8c1f92ac
	#data 0x8c1f932c
	#data bank17.loc_8c17726a
	#data 0x8c1f8e8c
	#data 0x8c1f938c

;==============================================
loc_8c027a44:
	mov.l r14,@-r15
	mov 0x1C,r0
	mov.l @(0xEC,PC),r14
	mov 0x7F,r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x1B,r0
	mov.b @(r0,r14),r7
	mov.l @(0xE4,PC),r3
	add 0x01,r7
	mov.b r7,@(r0,r14)
	add 0xFF,r7
	extu.b r7,r7
	mov.b @(r0,r14),r1
	shll2 r7
	shll r7
	and r2,r1
	add r3,r7
	mov.b r1,@(r0,r14)
	mov.w r4,@r7
	mov.l r6,@(0x4,r7)
	mov r5,r0
	nop
	mov.w r0,@(0x2,r7)
	rts
	mov.l @r15+,r14

;==============================================
loc_8c027a7a:
	mov.l @(0xC4,PC),r1
	mov.l @(0xC4,PC),r3
	mov.b @(0xC,r1),r0
	add 0x01,r0
	mov.b r0,@(0xC,r1)
	mov.b @(0xB,r1),r0
	extu.b r0,r7
	add 0x01,r0
	mov.b r0,@(0xB,r1)
	shll2 r7
	mov.b @(0xB,r1),r0
	shll r7
	add r3,r7
	and 0x0F,r0
	mov.b r0,@(0xB,r1)
	mov.w r4,@r7
	mov r6,r0
	nop
	mov.w r0,@(0x2,r7)
	rts
	mov.l r5,@(0x4,r7)

;==============================================
loc_8c027aa4:
	mov.l r14,@-r15
	mov 0x14,r0
	mov.l @(0x9C,PC),r14
	mov.l @(0xA0,PC),r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x13,r0
	mov.b @(r0,r14),r7
	add 0x01,r7
	mov.b r7,@(r0,r14)
	add 0xFF,r7
	extu.b r7,r7
	mov.b @(r0,r14),r1
	mov r7,r3
	shll r7
	add r3,r7
	mov 0x07,r3
	shll2 r7
	and r3,r1
	add r2,r7
	mov.b r1,@(r0,r14)
	mov.l r4,@r7
	mov.l r5,@(0x4,r7)
	mov.l r6,@(0x8,r7)
	rts
	mov.l @r15+,r14

;==============================================
loc_8c027ada:
	mov.l @(0x74,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c027aea
	mov.l @(0x6C,PC),r1
	jsr @r1
	nop

loc_8c027aea:
	mov.l @(0x4C,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c027af8
	mov.l @(0x60,PC),r1
	jsr @r1
	nop

loc_8c027af8:
	bsr loc_8c027910
	nop
	bra loc_8c02797c
	lds.l @r15+,pr

;----------------------------------------------
loc_8c027b00:
	mov.l @(0x54,PC),r2
	mov.w @(0x30,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c027b2a
	mov.l @(0x28,PC),r2
	mov 0x00,r1
	mov.l @(0x4C,PC),r3
	mov.l @(0x44,PC),r0
	mov.b r1,@r0
	mov.b r1,@r3
	mov.l @r2,r4
	tst r4,r4
	bt loc_8c027b26
	mov.l @(0x30,PC),r1
	jsr @r1
	nop

loc_8c027b26:
	bra loc_8c02797c
	lds.l @r15+,pr

loc_8c027b2a:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c027b30:
	mov.l @(0x2C,PC),r3
	rts
	mov.b r4,@r3

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0084
	#align4
	#data 0x8c1f8e8c
	#data 0x8c1f938c
	#data 0x8c1f8e44
	#data 0x8c1f92ac
	#data 0x8c1f8e74
	#data 0x8c1f932c
	#data 0x8c1f8e54
	#data bank17.loc_8c176900
	#data 0x8c26823c
	#data 0x8c1f978d
	#data 0x8c1f978c

;==============================================
loc_8c027b64:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x40,PC),r3
	mov 0x01,r13
	mov.l @(0x40,PC),r2
	mov 0x02,r9
	mov.b @r3,r0
	mov.l @(0x30,PC),r11
	mov.l @(0x2C,PC),r8
	mov.w @(0x22,PC),r10
	mov r11,r12
	mov.w @(0x20,PC),r14
	mov.b r0,@r15
	mov.b @r2,r5
	extu.b r5,r5
	mov r4,r0
	nop
	mov 0x19,r1
	cmp/hs r1,r0
	bf loc_8c027b9e
	bra loc_8c02812e
	nop

loc_8c027b9e:
	shll r0
	mov r0,r1
	mova @(0x1C,PC),r0
	mov.w @(r0,r1),r0
	braf r0
	nop

;###############################################
	#data 0x05a4
	#data 0x0b48
	#align4
	#data 0x0000ffff
	#data 0x8c268340
	#data 0x8c26a95c
	#data 0x8c1f978d

;8c027ba6
	#data 0x0048
	#data 0x00b6
	#data 0x00ba
	#data 0x00c2
	#data 0x0182
	#data 0x01b8
	#data 0x01e4
	#data 0x01f8
	#data 0x0262
	#data 0x0288
	#data 0x029c
	#data 0x02b4
	#data 0x0266
	#data 0x031a
	#data 0x031e
	#data 0x03b0
	#data 0x03b0
	#data 0x03e2
	#data 0x03fa
	#data 0x04a2
	#data 0x0418
	#data 0x04be
	#data 0x043e
	#data 0x0512
	#data 0x03ca

;----------------------------------------------
loc_8c027bf2:
	bsr loc_8c027910
	nop
	mov.w @(0xEA,PC),r5
	mov.l @(0xFC,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0xE4,PC),r5
	mov.l @(0xF8,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0xDE,PC),r5
	mov.l @(0xF4,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0xD8,PC),r5
	mov.l @(0xF0,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0xD2,PC),r5
	mov.l @(0xEC,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov 0x00,r5
	mov 0x07,r6
	bsr loc_8c027a7a
	mov r5,r4
	mov 0x00,r5
	mov 0x05,r6
	bsr loc_8c027a7a
	mov r5,r4
	mov 0x00,r5
	mov 0x03,r6
	bsr loc_8c027a7a
	mov r5,r4
	mov 0x00,r5
	mov 0x06,r6
	bsr loc_8c027a7a
	mov r5,r4
	mov 0x00,r5
	mov 0x04,r6
	bsr loc_8c027a7a
	mov r5,r4
	mov 0x00,r5
	mov r5,r4
	mov 0x02,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c027a7a
	mov.l @r15+,r14

;==============================================
loc_8c027c60:
	bra loc_8c02812e
	nop

;==============================================
loc_8c027c64:
	mov.w @(0x86,PC),r5
	mov.l @(0xA4,PC),r6
	bra loc_8c027e42
	nop

;==============================================
loc_8c027c6c:
	bra loc_8c027d22
	mov 0x00,r14

;==============================================
loc_8c027c70:
	mov.l @(0x9C,PC),r3
	mul.l r10,r14
	mov.b @r3,r5
	extu.b r5,r5
	sts macl,r12
	mov r5,r2
	tst r13,r2
	bt.s loc_8c027c8a
	add r11,r12
	mov r14,r0
	nop
	tst r13,r0
	bt loc_8c027d20

loc_8c027c8a:
	mov r5,r2
	tst r9,r2
	bt loc_8c027c96
	mov 0x01,r1
	tst r14,r1
	bf loc_8c027d20

loc_8c027c96:
	mov r14,r3
	mov.l @(0x78,PC),r4
	tst r13,r3
	bf loc_8c027cae
	mov r5,r1
	tst r9,r1
	bt loc_8c027ca8
	bra loc_8c027cae
	add 0x06,r4

loc_8c027ca8:
	tst r13,r5
	bt loc_8c027cae
	add 0x0C,r4

loc_8c027cae:
	mov.b @r4,r3
	extu.b r3,r3
	cmp/eq r14,r3
	bt loc_8c027d1c
	mov.b @r4,r2
	mov.w @(0x34,PC),r3
	extu.b r2,r2
	mov.w @(0x32,PC),r0
	mulu.w r3,r2
	sts macl,r2
	add r11,r2
	mov.l r2,@r15
	mov.b @(r0,r2),r2
	mov.b @(r0,r12),r1
	cmp/eq r2,r1
	bf loc_8c027d18
	mov.w @(0x22,PC),r0
	mov.l @r15,r5
	mov.b @(r0,r12),r6
	mov.w @(0x1C,PC),r0
	extu.b r6,r6
	mov.b @(r0,r5),r5
	extu.b r5,r5
	bsr loc_8c0279e4
	mov r8,r4
	bra loc_8c027d20
	nop

;###############################################
	#data 0x0297
	#data 0x0296
	#data 0x0293
	#data 0x0292
	#data 0x026e
	#data 0x026f
	#data 0x05a4
	#data 0x052c
	#data 0x055c
	#align4
	#data 0x0cc00000
	#data 0x0cc49000
	#data 0x0cd6f000
	#data 0x0cd8d000
	#data 0x0ced0000
	#data 0x0cda4000
	#data 0x8c1f978c
	#data bank14.loc_8c14920c

;----------------------------------------------
loc_8c027d18:
	bra loc_8c027cae
	add 0x01,r4

;----------------------------------------------
loc_8c027d1c:
	bsr loc_8c028158
	mov r12,r4

loc_8c027d20:
	add 0x01,r14

loc_8c027d22:
	mov 0x06,r4
	cmp/ge r4,r14
	bf loc_8c027c70
	bra loc_8c02812e
	nop

;==============================================
loc_8c027d2c:
	mov.b @r15,r5
	mov.l @(0xB8,PC),r0
	extu.b r5,r5
	mov.l @(0xB0,PC),r6
	shll2 r5
	mov.l @(r0,r5),r5
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0x8C,PC),r5
	mov.l @(0xAC,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0x86,PC),r5
	mov.l @(0xA8,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0x80,PC),r12
	mov r11,r13
	bra loc_8c027d5a
	add r11,r12

loc_8c027d54:
	bsr loc_8c028158
	mov r13,r4
	add r14,r13

loc_8c027d5a:
	cmp/hs r12,r13
	bf loc_8c027d54
	bra loc_8c02812e
	nop

;==============================================
loc_8c027d62:
	bsr loc_8c027910
	nop
	mov.w @(0x68,PC),r5
	mov.l @(0x78,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0x62,PC),r5
	mov.l @(0x80,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0x56,PC),r12
	mov r11,r13
	add r10,r13
	bra loc_8c027d86
	add r11,r12

loc_8c027d80:
	bsr loc_8c028158
	mov r13,r4
	add r14,r13

loc_8c027d86:
	cmp/hs r12,r13
	bf loc_8c027d80
	bra loc_8c02812e
	nop

;==============================================
loc_8c027d8e:
	bsr loc_8c027910
	nop
	mov.w @(0x40,PC),r5
	mov.l @(0x4C,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0x3A,PC),r5
	mov.l @(0x58,PC),r6
	bra loc_8c027e1c
	nop

;==============================================
loc_8c027da2:
	bsr loc_8c027910
	nop
	mov.w @(0x30,PC),r5
	mov.l @(0x38,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0x2A,PC),r5
	mov.l @(0x48,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0x24,PC),r5
	mov.l @(0x44,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0x1E,PC),r5
	mov.l @(0x40,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.l @(0x40,PC),r6
	bra loc_8c027e42
	mov 0x7B,r5

;###############################################
	#data 0x026e
	#data 0x026f
	#data 0x21d8
	#data 0x029f
	#data 0x029e
	#data 0x02a3
	#data 0x02a2
	#data 0x02a1
	#data 0x02a0
	#data 0x02ab
	#data 0x02ac
	#align4
	#data 0x0cc00000
	#data bank14.loc_8c14cf98
	#data 0x0ced0000
	#data 0x0cda0000
	#data 0x0cd00000
	#data 0x0cc40000
	#data 0x0ccb7000
	#data 0x0c420000
	#data 0x0c520000
	#data 0x0ccde000

;----------------------------------------------
loc_8c027e0c:
	bsr loc_8c027910
	nop
	mov.w @(0xE8,PC),r5
	mov.l @(0xF8,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(0xE2,PC),r5
	mov.l @(0xF4,PC),r6

loc_8c027e1c:
	mov 0x00,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0279e4
	mov.l @r15+,r14

loc_8c027e32:
	mov.b @r15,r0
	mov 0x1F,r5
	mov.l @(0xDC,PC),r6 ;0cea0000
	extu.b r0,r0
	and r0,r5
	mov.l @(0xD8,PC),r0
	shll2 r5
	mov.l @(r0,r5),r5

loc_8c027e42:
	bra loc_8c028092
	mov 0x00,r4

;==============================================
loc_8c027e46:
	bsr loc_8c027910
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c028198
	mov.l @r15+,r14

;==============================================
loc_8c027e5e:
	bsr loc_8c027910
	nop
	mov.l @(0xBC,PC),r0
	mov.l @(0xB4,PC),r2
	mov.l @r0,r1
	mov.w @(0x94,PC),r0
	mov.b @r2,r3
	mov.b @(r0,r1),r1
	extu.b r3,r3
	tst r1,r3
	bt loc_8c027e78
	bra loc_8c02812e
	nop

loc_8c027e78:
	mov.l @(0xA4,PC),r3
	mov.w @(0x82,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf.s loc_8c027e88
	mov 0x00,r4
	mov r13,r4

loc_8c027e88:
	mul.l r10,r4
	mov.w @(0x74,PC),r3
	sts macl,r13
	add r11,r13
	add r3,r11
	cmp/hs r11,r13
	bf loc_8c027e9a
	bra loc_8c02812e
	nop

loc_8c027e9a:
	mov.l @(0x88,PC),r10

loc_8c027e9c:
	mov r13,r12
	bsr loc_8c028158
	mov r13,r4
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r10),r6
	mov.w @(0x56,PC),r0
	mov.b @(r0,r12),r5
	mov.l @(0x74,PC),r0
	shll r5
	mov.w @(r0,r5),r5
	bsr loc_8c0279e4
	mov 0x00,r4
	add r14,r13
	cmp/hs r11,r13
	bf loc_8c027e9c
	bra loc_8c02812e
	nop

;==============================================
loc_8c027ec4:
	bra loc_8c027eca
	mov 0x00,r4

loc_8c027ec8:
	mov r13,r4

loc_8c027eca:
	mul.l r10,r4
	mov.w @(0x32,PC),r3
	sts macl,r11
	add r12,r11
	add r3,r12
	cmp/hs r12,r11
	bf loc_8c027edc
	bra loc_8c02812e
	nop

loc_8c027edc:
	mov.l @(0x50,PC),r10
	mov.l @(0x4C,PC),r9

loc_8c027ee0:
	mov.l @(0x3C,PC),r2
	mov.w @(0x22,PC),r0
	mov.l @r2,r3
	mov.l @(0x4C,PC),r1
	mov.l @(r0,r3),r0
	cmp/eq r1,r0
	bf.s loc_8c027f38
	mov r11,r13
	mov.w @(0x10,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	shll2 r0
	bra loc_8c027f42
	mov.l @(r0,r9),r6

;###############################################
	#data 0x0096
	#data 0x0294
	#data 0x0084
	#data 0x21d8
	#data 0x055c
	#data 0x052c
	#data 0x0094
	#align4
	#data 0x0cc00000
	#data 0x0cd85000
	#data 0x0cea0000
	#data bank14.loc_8c14cfdc
	#data 0x8c1f978c
	#data 0x8c26823c
	#data bank14.loc_8c1491f4
	#data bank13.loc_8c135484
	#data bank14.loc_8c1491dc
	#data bank14.loc_8c1491c4
	#data 0x0c420000

;----------------------------------------------
loc_8c027f38:
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r10),r6

loc_8c027f42:
	mov.w @(0xC8,PC),r0
	mov.b @(r0,r13),r5
	mov.l @(0xD0,PC),r0
	shll r5
	mov.w @(r0,r5),r5
	bsr loc_8c0279e4
	mov 0x00,r4
	add r14,r11
	cmp/hs r12,r11
	bf loc_8c027ee0
	bra loc_8c02812e
	nop

loc_8c027f5a:
	add 0xF1,r4
	mov.w @(0xB0,PC),r1
	mul.l r10,r4
	sts macl,r11
	add r12,r11
	add r1,r12
	cmp/hs r12,r11
	bt loc_8c027f74

loc_8c027f6a:
	bsr loc_8c028178
	mov r11,r4
	add r14,r11
	cmp/hs r12,r11
	bf loc_8c027f6a

loc_8c027f74:
	mov.l @(0xA4,PC),r2
	mov.l @(0xA8,PC),r1
	mov.b r13,@r2
	mov.w @(0x94,PC),r2
	mov.l @r1,r3
	mov.l @(0xA4,PC),r0
	add r3,r2
	mov.l @r2,r3
	cmp/eq r0,r3
	bt loc_8c027f9e
	bra loc_8c02812e
	nop

loc_8c027f8c:
	mov.l @(0x90,PC),r0
	mov.l @r0,r1
	mov.w @(0x80,PC),r0
	mov.b @(r0,r1),r3
	tst r13,r3
	bt loc_8c027f9e
	mov.l @(0x80,PC),r3
	bra loc_8c02812e
	mov.b r13,@r3

loc_8c027f9e:
	mov.l @(0x7C,PC),r1
	bra loc_8c02812e
	mov.b r9,@r1

loc_8c027fa4:
	tst r13,r5
	bf loc_8c027fac
	bra loc_8c02812e
	nop

loc_8c027fac:
	mov r12,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c028158
	mov.l @r15+,r14
	tst r13,r5
	bf loc_8c027fca
	bra loc_8c02812e
	nop

loc_8c027fca:
	mov.w @(0x40,PC),r3
	add r12,r14
	mov.w @(0x3C,PC),r0
	add r12,r3
	mov.b @r3,r3
	mov.b @(r0,r14),r0
	cmp/eq r3,r0
	bf loc_8c0280a6
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r12),r5
	mov.b @(r0,r14),r6
	extu.b r5,r5
	extu.b r6,r6
	bra loc_8c028092
	mov r8,r4

loc_8c027fe8:
	tst r13,r5
	bf loc_8c027ff0
	bra loc_8c02812e
	nop

loc_8c027ff0:
	mov.w @(0x1A,PC),r3
	mov.w @(0x20,PC),r13
	mov.w @(0x16,PC),r0
	add r12,r3
	add r12,r13
	mov.b @r3,r3
	mov.b @(r0,r13),r0
	cmp/eq r3,r0
	bf loc_8c028028
	mov.w @(0x6,PC),r0
	mov.b @(r0,r13),r6
	extu.b r6,r6
	bra loc_8c0280e2
	mov.b @(r0,r12),r5

;############################################### 
	#data 0x055c 0x052c 0x21d8
	#data 0x0094 0x008c 0x1690
	#align4
	#data bank13.loc_8c135484
	#data 0x8c1f978d
	#data 0x8c26823c
	#data 0x0c420000

;----------------------------------------------
loc_8c028028:
	mov r12,r3
	mov.w @(0x114,PC),r0
	add r14,r3
	mov.b @(r0,r3),r3
	mov.b @(r0,r13),r1
	cmp/eq r3,r1
	bf loc_8c028118
	mov r12,r5
	mov.w @(0x108,PC),r0
	add r14,r5
	mov.b @(r0,r5),r5
	mov.b @(r0,r13),r6
	extu.b r5,r5
	extu.b r6,r6
	bsr loc_8c0279e4
	mov r8,r4
	bra loc_8c028108
	nop

loc_8c02804c:
	tst r9,r5
	bt loc_8c02812e
	mov r12,r4
	add r10,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c028158
	mov.l @r15+,r14

loc_8c028068:
	tst r9,r5
	bt loc_8c02812e
	mov r12,r3
	mov.w @(0xD0,PC),r1
	mov.w @(0xD2,PC),r14
	add r10,r3
	mov.w @(0xCA,PC),r0
	add r3,r1
	add r12,r14
	mov.b @r1,r1
	mov.b @(r0,r14),r0
	cmp/eq r1,r0
	bf loc_8c0280a6
	mov r12,r5
	mov.w @(0xBC,PC),r0
	add r10,r5
	mov r8,r4
	mov.b @(r0,r5),r5
	mov.b @(r0,r14),r6
	extu.b r5,r5
	extu.b r6,r6

loc_8c028092:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0279e4
	mov.l @r15+,r14

loc_8c0280a6:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c028158
	mov.l @r15+,r14

loc_8c0280bc:
	tst r9,r5
	bt loc_8c02812e
	mov r12,r3
	mov.w @(0x7C,PC),r1
	mov.w @(0x80,PC),r13
	add r10,r3
	mov.w @(0x76,PC),r0
	add r3,r1
	add r12,r13
	mov.b @r1,r1
	mov.b @(r0,r13),r0
	cmp/eq r1,r0
	bf loc_8c0280ec
	mov.w @(0x6A,PC),r0
	mov r12,r5
	add r10,r5
	mov.b @(r0,r13),r6
	mov.b @(r0,r5),r5
	extu.b r6,r6

loc_8c0280e2:
	extu.b r5,r5
	bsr loc_8c0279e4
	mov r8,r4
	bra loc_8c028108
	nop

loc_8c0280ec:
	mov.w @(0x52,PC),r0
	mov.b @(r0,r13),r1
	mov.w @(0x56,PC),r0
	mov.b @(r0,r12),r3
	cmp/eq r3,r1
	bf loc_8c028118
	mov.w @(0x48,PC),r0
	mov.b @(r0,r13),r6
	mov.w @(0x4C,PC),r0
	extu.b r6,r6
	mov.b @(r0,r12),r5
	extu.b r5,r5
	bsr loc_8c0279e4
	mov r8,r4

loc_8c028108:
	mov.l @(0x48,PC),r0
	mov.l @(0x44,PC),r3
	mov.b @r0,r2
	mov.b @r3,r1
	or r2,r1
	mov.b r1,@r3
	bra loc_8c02812e
	nop

loc_8c028118:
	mov r13,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c028178
	mov.l @r15+,r14

loc_8c02812e:
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

;###############################################
	#data 0x052c
	#data 0x055c
	#data 0x10ec
	#data 0x1c34
	#data 0x1618
	#data 0x1648
	#align4
	#data 0x8c1f978c
	#data 0x8c1f978d

;----------------------------------------------
loc_8c028158:
	mov.w @(0x114,PC),r0
	mov r4,r6
	mov r4,r5
	mov.w @(0x112,PC),r3
	mov.l r4,@-r15
	mov 0x00,r4
	mov.b @(r0,r6),r6
	mov.l @(0x114,PC),r0
	extu.b r6,r6
	shll2 r6
	mov.l @(r0,r6),r6
	mov.w @(0x100,PC),r0
	mov.b @(r0,r5),r5
	add r3,r5
	bra loc_8c0279e4
	add 0x04,r15

loc_8c028178:
	mov.w @(0xF4,PC),r0
	mov r4,r6
	mov r4,r5
	mov.w @(0xF2,PC),r3
	mov.l r4,@-r15
	mov 0x00,r4
	mov.b @(r0,r6),r6
	mov.l @(0xF4,PC),r0
	extu.b r6,r6
	shll2 r6
	mov.l @(r0,r6),r6
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r5),r5
	add r3,r5
	bra loc_8c027a44
	add 0x04,r15

;==============================================
loc_8c028198:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xD4,PC),r11
	mov 0x00,r6
	mov.w @(0xC4,PC),r13
	mov r6,r4
	mov 0x06,r10
	mov r15,r12

loc_8c0281b6:
	mov r4,r0
	nop
	mul.l r13,r4
	mov r0,r14
	cmp/pl r4
	mov r6,r5
	mov.b r0,@(r0,r12)
	sts macl,r7
	add r11,r7
	bf.s loc_8c0281e6
	add r12,r14

loc_8c0281cc:
	mul.l r13,r5
	mov.w @(0xA0,PC),r0
	mov.b @(r0,r7),r2
	sts macl,r3
	add r11,r3
	mov.b @(r0,r3),r1
	cmp/eq r1,r2
	bf loc_8c0281e0
	bra loc_8c0281e6
	mov.b r5,@r14

loc_8c0281e0:
	add 0x01,r5
	cmp/ge r4,r5
	bf loc_8c0281cc

loc_8c0281e6:
	add 0x01,r4
	cmp/ge r10,r4
	bf loc_8c0281b6
	mov.l @(0x98,PC),r9
	mov r6,r14
	mov.l @(0x90,PC),r8

loc_8c0281f2:
	mov r14,r0
	nop
	mov.b @(r0,r12),r3
	extu.b r3,r3
	cmp/eq r0,r3
	bf loc_8c02821a
	mov r14,r0
	nop
	mul.l r13,r14
	shll2 r0
	mov.w @(0x68,PC),r1
	mov.l @(r0,r9),r6
	mov r14,r4
	sts macl,r0
	add r11,r0
	mov.b @(r0,r1),r0
	shll2 r0
	mov.l @(r0,r8),r5
	bsr loc_8c0279e4
	add 0x01,r4

loc_8c02821a:
	add 0x01,r14
	cmp/ge r10,r14
	bf loc_8c0281f2
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r12,r4
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
loc_8c02823a:
	tst r4,r4
	bf loc_8c028240
	mov.w @(0x36,PC),r4

loc_8c028240:
	mov.l @(0x4C,PC),r2
	rts
	mov.l r4,@r2

;----------------------------------------------
loc_8c028246:
	mov.w @(0x2C,PC),r5
	mov 0x06,r6
	mov.w @(0x2C,PC),r7
	cmp/ge r6,r4
	mul.l r5,r4
	mov.l @(0x2C,PC),r3
	sts macl,r5
	bt.s loc_8c028264
	add r3,r5

loc_8c028258:
	mov.w @(0x14,PC),r0
	mov.b r4,@(r0,r5)
	add 0x02,r4
	cmp/ge r6,r4
	bf.s loc_8c028258
	add r7,r5

loc_8c028264:
	rts
	nop

;==============================================
loc_8c028268:
	rts
	nop

;==============================================
loc_8c02826c:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x055c
	#data 0x052c
	#data 0x00d1
	#data 0x05a4
	#data 0x0400
	#data 0x0b48
	#align4
	#data bank13.loc_8c135574
	#data 0x8c268340
	#data bank13.loc_8c138c54
	#data bank14.loc_8c149220
	#data bank04.loc_8c042d4e
	#data 0x8c1f8e3c

;==============================================
loc_8c028294:
	mov.l r14,@-r15
	mov 0x0D,r5
	sts.l pr,@-r15
	mov.l @(0x128,PC),r3
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0282e4
	mov r0,r14
	mov.w @(0x10C,PC),r0
	mov 0x01,r3
	mov.l @(0x11C,PC),r1
	mov.l @(0x118,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.w @(0x100,PC),r0
	mov.l @r3,r2
	fldi0 fr4
	mov.l @(0x4,r2),r3
	mov 0x00,r2
	mov.l r3,@(r0,r14)
	mov 0x34,r0
	fmov fr4,@(r0,r14)
	mov 0x38,r0
	fmov fr4,@(r0,r14)
	mov 0x3C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xEC,PC),r0
	mov.w @(0xE8,PC),r3
	mov.l r3,@(r0,r14)
	add 0x08,r0
	mov.l r2,@(r0,r14)
	add 0xB0,r0
	lds.l @r15+,pr
	mov.l @(0xF0,PC),r3
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8c0282e4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0282ea:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xD8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf.s loc_8c02830e
	mov r4,r14
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c028398
	nop

loc_8c02830e:
	mov.w @(0x1C,r14),r0
	mov.w @(0xAC,PC),r5
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r5,r0
	bf.s loc_8c028324
	mov 0x00,r4
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c028324:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r5,r0
	bf loc_8c028336
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c028336:
	mov.l @(0x94,PC),r3
	mov.w @(0x7E,PC),r0
	mov.l @r3,r4
	mov.l @(0x9C,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x8,r2),r4
	mov.l @(0xA0,PC),r13
	mova @(0xA0,PC),r0
	mov.l @(0x98,PC),r12
	mov.l @(0x90,PC),r11
	fldi1 fr14
	bra loc_8c028390
	fmov @r0,fr15

loc_8c028354:
	mov r15,r5
	add 0x04,r5
	jsr @r13
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	float fpul,fr3
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r12
	mov r15,r4

loc_8c028390:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c028354

loc_8c028398:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0283aa:
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x1E,r0
	rts
	mov.w r0,@(0x1C,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0084
	#data 0x0801
	#data 0x00cc
	#data 0x03e8
	#align4
	#data bank04.loc_8c044f26
	#data loc_8c0282ea
	#data 0x8c26a904
	#data bank10.loc_8c108210
	#data 0x8c212ce8
	#data bank04.loc_8c0450c0
	#data bank10.loc_8c108060
	#data bank10.loc_8c108086
	#data bank10.loc_8c1081e6
	#data bank10.loc_8c108192
	#data 0x3a83126f
	#data 0x3d088889

;==============================================
loc_8c0283f4:
	mov 0x68,r1
	add r4,r1
	mov 0x74,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c028418
	mov 0x74,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	rts
	mov 0x01,r0

loc_8c028418:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c02841e:
	mov 0x68,r1
	add r4,r1
	mov 0x74,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c028442
	mov 0x74,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	rts
	mov 0x01,r0

loc_8c028442:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c028448:
	sts.l pr,@-r15
	mov.l @(0x104,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028496
	mov r0,r4
	mov.w @(0xEA,PC),r0
	mov 0x01,r3
	fldi0 fr4
	mov r4,r1
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0xEC,PC),r2
	add 0x50,r1
	mov.l @(0xF0,PC),r3
	mov.l r2,@(0x10,r4)
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0xE0,PC),r2
	fmov fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xC8,PC),r0
	mov 0x31,r1
	mov.l @(0xDC,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0xD8,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0xB8,PC),r0
	mov.l @(0xD4,PC),r1
	mov.l r1,@(r0,r4)

loc_8c028496:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c02849c:
	sts.l pr,@-r15
	mov.l @(0xB0,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028512
	mov r0,r4
	mov.w @(0x96,PC),r0
	mov 0x01,r3
	mov.l @(0xBC,PC),r5
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(0xB0,PC),r2
	mov.l r2,@(0x10,r4)
	mov.b @(0x1,r5),r0
	mov.l @(0xB0,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x90,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xA4,PC),r1
	mov.b @(0x1,r5),r0
	mov.b @(r0,r1),r2
	mov r4,r1
	mov.l @(0x7C,PC),r0
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x74,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x58,PC),r0
	mov 0x31,r1
	mov.l @(0x6C,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x68,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(0x78,PC),r0
	mov.l @r0,r1
	mov.w @(0x46,PC),r0
	mov.l @r1,r3
	mov 0x00,r1
	mov.l @(0x20,r3),r3
	mov.l r3,@(r0,r4)
	add 0x50,r0
	mov.l r1,@(r0,r4)

loc_8c028512:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c028518:
	mov.l @(0x64,PC),r3
	mov.b @r3,r0
	cmp/eq 0x02,r0
	bt loc_8c028526
	mov.l @(0x60,PC),r2
	jmp @r2
	nop

loc_8c028526:
	rts
	nop

;==============================================
loc_8c02852a:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x40,PC),r4
	mov 0x1C,r0
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	cmp/eq 0x02,r0
	bt loc_8c028588
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

;###############################################
	#data 0x012c
	#data 0x00cc
	#data 0x00d4
	#data 0x0084
	#align4
	#data bank04.loc_8c044f26
	#data loc_8c028518
	#data bank14.loc_8c149268
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c149358
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c149238
	#data loc_8c02852a
	#data 0x8c212ccc
	#data bank14.loc_8c149368
	#data bank14.loc_8c1493a4
	#data 0x8c26a904
	#data 0x8c212ce8
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c028588:
	mov.b @(0x1,r4),r0
	mov r14,r1
	mov.l @(0xD4,PC),r2
	add 0x34,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0xD0,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xC8,PC),r1
	mov.b @(0x1,r4),r0
	mov.b @(r0,r1),r2
	mov r14,r1
	mov.l @(0xC4,PC),r0
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0xB4,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0285d0
	mov 0x00,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0285d0:
	mov.w @(0x1E,r14),r0
	mov.w @(0x88,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0285e4
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0285e4:
	mova @(0x8C,PC),r0
	mov.l @(0x9C,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x84,PC),r0
	mov.l @(0x8C,PC),r3
	fmov @r0,fr2
	mova @(0x84,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02861e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.w @(0x32,PC),r0
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c02863c
	bra loc_8c02873a
	nop

loc_8c02863c:
	mov.w @(0x22,PC),r0
	mov.l @(r0,r13),r14
	tst r14,r14
	bt loc_8c02873a
	mov.l @(0x40,PC),r2
	jsr @r2
	nop
	mov.l @(0x40,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x48,PC),r11
	mov.l @(0x1C,PC),r12
	mov.l @(0x40,PC),r10
	mov.l @(0x38,PC),r8
	mov.l @(0x38,PC),r9
	bra loc_8c02871e
	nop

;###############################################
	#data 0x0168
	#data 0x012c
	#data 0x00d4
	#align4
	#data bank14.loc_8c149368
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c1493a4
	#data bank14.loc_8c149268
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data loc_8c02e334
	#data bank12.loc_8c120950
	#data bank12.loc_8c122710
	#data bank12.loc_8c1210b0
	#data bank12.loc_8c120ff0
	#data bank12.loc_8c121100

;----------------------------------------------
loc_8c0286a0:
	tst r3,r3
	bt loc_8c02871c
	jsr @r11
	nop
	mov 0x0C,r0
	fmov @(r0,r14),fr6
	mov 0x08,r0
	fmov @(r0,r14),fr5
	mov 0x04,r0
	jsr @r9
	fmov @(r0,r14),fr4
	mov.b @(0x1,r14),r0
	tst r0,r0
	bt loc_8c0286f4
	mov.b @(0x1,r14),r0
	mov r12,r4
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	jsr @r10
	add r0,r4
	mov.b @(0x1,r14),r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x78,PC),r3
	shll2 r0
	add r12,r0
	mov r0,r2
	mov 0x0C,r0
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(0x6C,PC),r2
	jsr @r2
	nop
	add 0x0C,r15
	lds r0,fpul
	float fpul,fr3
	jsr @r8
	fmov fr3,fr4

loc_8c0286f4:
	mov.w @(0x54,PC),r0
	mov.l @(0x60,PC),r3
	fmov @(r0,r13),fr6
	mov 0x7C,r0
	fmov @(r0,r13),fr5
	mov 0x78,r0
	jsr @r3
	fmov @(r0,r13),fr4
	mov 0x74,r0
	mov.l @(0x54,PC),r3
	fmov @(r0,r13),fr4
	mov.w @(0x2,r14),r0
	mov.l @(0x50,PC),r1
	extu.w r0,r4
	mov.l @r3,r0
	shll2 r4
	mov.l @r0,r2
	add r2,r4
	jsr @r1
	mov.l @r4,r4

loc_8c02871c:
	add 0x10,r14

loc_8c02871e:
	mov.b @r14,r3
	cmp/pz r3
	bt loc_8c0286a0
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov 0x01,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c02873a:
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
	#data 0x0080
	#align4
	#data bank12.loc_8c1294c8
	#data bank03.loc_8c0301b4
	#data bank12.loc_8c123780
	#data 0x8c26a904
	#data bank12.loc_8c123610
	#data bank12.loc_8c120900

;==============================================
loc_8c028768:
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0287b6
	mov r0,r4
	mov.w @(0xDC,PC),r0
	mov 0x01,r3
	fldi0 fr4
	mov r4,r1
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0xE0,PC),r2
	add 0x50,r1
	mov.l @(0xE4,PC),r3
	mov.l r2,@(0x10,r4)
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0xD4,PC),r2
	fmov fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xBA,PC),r0
	mov 0x31,r1
	mov.l @(0xD0,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0xCC,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0xAA,PC),r0
	mov.l @(0xC8,PC),r1
	mov.l r1,@(r0,r4)

loc_8c0287b6:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0287bc:
	sts.l pr,@-r15
	mov.l @(0xA4,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028824
	mov r0,r4
	mov.w @(0x88,PC),r0
	mov 0x01,r3
	mov.l @(0xAC,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(0xAC,PC),r3
	mov.l r2,@(0x10,r4)
	mov.b @r3,r2
	mov.l @(0xA8,PC),r3
	mov r2,r1
	shll r2
	add r1,r2
	mov r4,r1
	shll2 r2
	add r3,r2
	mov.l @(0x84,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x7C,PC),r3
	mov r4,r1
	mov.l @(0x74,PC),r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x5A,PC),r0
	mov 0x31,r1
	mov.l @(0x70,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x6C,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(0x78,PC),r0
	mov.l @r0,r1
	mov.w @(0x48,PC),r0
	mov.l @r1,r3
	mov 0x00,r1
	mov.l @(r0,r3),r3
	mov.w @(0x42,PC),r0
	mov.l r3,@(r0,r4)
	add 0x50,r0
	mov.l r1,@(r0,r4)

loc_8c028824:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c02882a:
	mov.l @(0x64,PC),r3
	mov.b @r3,r0
	cmp/eq 0x05,r0
	bt loc_8c028838
	mov.l @(0x60,PC),r2
	jmp @r2
	nop

loc_8c028838:
	rts
	nop

;==============================================
loc_8c02883c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x54,PC),r4
	mov 0x1C,r0
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	cmp/eq 0x05,r0
	bt loc_8c02889c
	lds.l @r15+,pr
	mov.l @(0x40,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

;###############################################
	#data 0x012c
	#data 0x00cc
	#data 0x00d4
	#data 0x0138
	#data 0x0084
	#align4
	#data bank04.loc_8c044f26
	#data loc_8c02882a
	#data bank14.loc_8c1493ec
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c1493f8
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c1493ac
	#data loc_8c02883c
	#data 0x8c212cce
	#data bank14.loc_8c149408
	#data 0x8c26a904
	#data 0x8c212ce8
	#data bank04.loc_8c0450c0
	#data 0x8c212ccc

;----------------------------------------------
loc_8c02889c:
	mov.b @(0x2,r4),r0
	mov r14,r1
	mov.l @(0x74,PC),r2
	add 0x34,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x70,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0288c8
	mov 0x00,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0288c8:
	mov.w @(0x1E,r14),r0
	mov.w @(0x48,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0288dc
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0288dc:
	mova @(0x40,PC),r0
	mov.l @(0x50,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x38,PC),r0
	mov.l @(0x40,PC),r3
	fmov @r0,fr2
	mova @(0x38,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0168
	#align4
	#data bank14.loc_8c149408
	#data bank12.loc_8c1294c8
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0

;==============================================
loc_8c028934:
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028982
	mov r0,r4
	mov.w @(0xBA,PC),r0
	mov 0x01,r3
	fldi0 fr4
	mov r4,r1
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0xBC,PC),r2
	add 0x50,r1
	mov.l @(0xC0,PC),r3
	mov.l r2,@(0x10,r4)
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0xB0,PC),r2
	fmov fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x98,PC),r0
	mov 0x31,r1
	mov.l @(0xAC,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0xA8,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x88,PC),r0
	mov.l @(0xA4,PC),r1
	mov.l r1,@(r0,r4)

loc_8c028982:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c028988:
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0289fe
	mov r0,r4
	mov.w @(0x66,PC),r0
	mov 0x01,r3
	mov.l @(0x8C,PC),r5
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(0x80,PC),r2
	mov.l r2,@(0x10,r4)
	mov.b @(0x2,r5),r0
	mov.l @(0x80,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x60,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x74,PC),r1
	mov.b @(0x2,r5),r0
	mov.b @(r0,r1),r2
	mov r4,r1
	mov.l @(0x4C,PC),r0
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x44,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x28,PC),r0
	mov 0x31,r1
	mov.l @(0x3C,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x38,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(0x48,PC),r0
	mov.l @r0,r1
	mov.w @(0x16,PC),r0
	mov.l @r1,r3
	mov 0x00,r1
	mov.l @(0x20,r3),r3
	mov.l r3,@(r0,r4)
	add 0x50,r0
	mov.l r1,@(r0,r4)

loc_8c0289fe:
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x00cc
	#data 0x00d4
	#data 0x0084
	#align4
	#data bank04.loc_8c044f26
	#data loc_8c028f7c
	#data bank14.loc_8c149268
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c1495f4
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c149420
	#data loc_8c028f8e
	#data 0x8c212ccc
	#data bank14.loc_8c149604
	#data bank14.loc_8c1495f0
	#data 0x8c26a904

;==============================================
loc_8c028a3c:
	mov.l r14,@-r15
	mov 0x0D,r5
	mov.l r13,@-r15
	mov 0x00,r6
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x170,PC),r11
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028a62
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028a62:
	mov.w @(0x154,PC),r0
	mov 0x01,r14
	mov.l @(0x164,PC),r5
	mov r4,r1
	mov.l @(0x15C,PC),r3
	add 0x34,r1
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.b @(0x3,r5),r0
	mov.l @(0x158,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x154,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x154,PC),r1
	mov.b @(0x3,r5),r0
	mov.l @(0x14C,PC),r12
	mov.b @(r0,r1),r2
	mov r4,r1
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x138,PC),r3
	shll2 r2
	add r12,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x13C,PC),r10
	mov r4,r1
	mov.w @(0x114,PC),r0
	add 0x74,r1
	mov.w @(0x10E,PC),r9
	mov r10,r2
	mov.l @(0x134,PC),r3
	mov.l r9,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.l @(0x130,PC),r8
	mov 0x00,r13
	mov.w @(0x102,PC),r0
	mov 0x0D,r5
	mov r13,r6
	mov.l r13,@(r0,r4)
	add 0xF0,r0
	mov.l @r8,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	add 0xC0,r0
	mov.l r1,@(r0,r4)
	jsr @r11
	mov r13,r4
	tst r0,r0
	bf.s loc_8c028adc
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028adc:
	mov.w @(0xDA,PC),r0
	mov r4,r1
	fldi0 fr15
	mov r12,r2
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x100,PC),r3
	add 0x50,r1
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0xDC,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xBC,PC),r0
	mov r4,r1
	mov.l @(0xE0,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0xAE,PC),r0
	mov 0x0D,r5
	mov.l @(0xDC,PC),r2
	mov 0x00,r6
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028b26
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028b26:
	mov 0x21,r0
	mov.l @(0xC8,PC),r3
	mov.b r13,@(r0,r4)
	mov r4,r1
	mov.w @(0x88,PC),r0
	mov r12,r2
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x90,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x70,PC),r0
	mov r4,r1
	mov.l @(0x94,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x62,PC),r0
	mov 0x0D,r5
	mov.l @(0x98,PC),r2
	mov 0x00,r6
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028b72
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028b72:
	mov 0x21,r0
	mov.l @(0x88,PC),r5
	mov.b r13,@(r0,r4)
	mov r4,r1
	mov.w @(0x3C,PC),r0
	mov r12,r2
	mov.l @(0x7C,PC),r3
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	mov 0x04,r0
	mov.l r3,@(0x10,r4)
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x1,r5),r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x28,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x6,PC),r0
	bra loc_8c028c04
	nop

;###############################################
	#data 0x012c
	#data 0x0431
	#data 0x00cc
	#data 0x00d4
	#align4
	#data bank04.loc_8c044f26
	#data loc_8c029152
	#data 0x8c212ccc
	#data bank14.loc_8c149634
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c149268
	#data bank14.loc_8c14967c
	#data bank14.loc_8c1495f4
	#data bank12.loc_8c1294bc
	#data 0x8c26a904
	#data loc_8c029042
	#data bank14.loc_8c149450
	#data loc_8c029054
	#data bank14.loc_8c149480
	#data loc_8c0290c0
	#data bank14.loc_8c1494a0

;----------------------------------------------
loc_8c028c04:
	mov r4,r1
	mov.l @(0x1A4,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x18C,PC),r0
	mov 0x0D,r5
	mov 0x00,r6
	mov.l r13,@(r0,r4)
	add 0xB8,r0
	mov.l @r8,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	add 0xF8,r0
	mov.l r1,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028c34
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028c34:
	mov 0x21,r0
	mov.l @(0x178,PC),r3
	mov.b r14,@(r0,r4)
	mov r4,r1
	mov.w @(0x164,PC),r0
	mov r12,r2
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x160,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x14A,PC),r0
	mov r4,r1
	mov.l @(0x14C,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x136,PC),r0
	mov 0x0D,r5
	mov.l @(0x148,PC),r2
	mov 0x00,r6
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028c80
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028c80:
	mov 0x21,r0
	mov.l @(0x13C,PC),r5
	mov.b r14,@(r0,r4)
	mov r4,r1
	mov.w @(0x118,PC),r0
	mov r12,r2
	mov.l @(0x12C,PC),r3
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	mov 0x04,r0
	mov.l r3,@(0x10,r4)
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x1,r5),r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0xF8,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xE0,PC),r0
	mov r4,r1
	mov.l @(0xE4,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0xCC,PC),r0
	mov 0x00,r6
	mov.l r13,@(r0,r4)
	mov.l @r8,r0
	mov.l @r0,r3
	mov.w @(0x2,r5),r0
	mov 0x0D,r5
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r2
	mov.w @(0xBE,PC),r0
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028cf8
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028cf8:
	mov 0x21,r0
	mov.l @(0xB4,PC),r3
	mov 0x02,r2
	mov r4,r1
	mov.b r2,@(r0,r4)
	mov r12,r2
	mov.w @(0x9C,PC),r0
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x9C,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x84,PC),r0
	mov r4,r1
	mov.l @(0x88,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x70,PC),r0
	mov 0x0D,r5
	mov.l @(0x90,PC),r2
	mov 0x00,r6
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028d46
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028d46:
	mov 0x21,r0
	mov.l @(0x7C,PC),r5
	mov 0x02,r2
	mov.l @(0x6C,PC),r3
	mov.b r2,@(r0,r4)
	mov r4,r1
	mov.w @(0x4E,PC),r0
	mov r12,r2
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	mov 0x04,r0
	mov.l r3,@(0x10,r4)
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x1,r5),r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x30,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x18,PC),r0
	mov r4,r1
	mov.l @(0x1C,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x4,PC),r0
	mov.l r13,@(r0,r4)
	bra loc_8c028dcc
	nop

;###############################################
	#data 0x00d4
	#data 0x012c
	#data 0x00cc
	#data 0x0084
	#align4
	#data bank12.loc_8c1294bc
	#data loc_8c029054
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c1494e0
	#data loc_8c0290c0
	#data bank14.loc_8c149500
	#data bank14.loc_8c149530
	#data bank14.loc_8c149550

;----------------------------------------------
loc_8c028dcc:
	mov.l @r8,r0
	mov 0x00,r6
	mov.l @r0,r3
	mov.w @(0x2,r5),r0
	mov 0x0D,r5
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r2
	mov.w @(0x174,PC),r0
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028dee
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028dee:
	mov 0x21,r0
	mov.l @(0x168,PC),r3
	mov 0x03,r2
	mov r4,r1
	mov.b r2,@(r0,r4)
	mov r12,r2
	mov.w @(0x158,PC),r0
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x150,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x140,PC),r0
	mov r4,r1
	mov.l @(0x148,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x132,PC),r0
	mov 0x0D,r5
	mov.l @(0x13C,PC),r2
	mov 0x00,r6
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028e3c
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028e3c:
	mov 0x21,r0
	mov.l @(0x130,PC),r5
	mov 0x03,r2
	mov.l @(0x128,PC),r3
	mov.b r2,@(r0,r4)
	mov r4,r1
	mov.w @(0x10A,PC),r0
	mov r12,r2
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	mov 0x04,r0
	mov.l r3,@(0x10,r4)
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x1,r5),r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0xE8,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xD4,PC),r0
	mov r4,r1
	mov.l @(0xDC,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0xC6,PC),r0
	mov 0x00,r6
	mov.l r13,@(r0,r4)
	mov.l @r8,r0
	mov.l @r0,r3
	mov.w @(0x2,r5),r0
	mov 0x0D,r5
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r2
	mov.w @(0xAC,PC),r0
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028f40
	mov r0,r4
	mov 0x21,r0
	mov.l @(0xA4,PC),r3
	mov 0x04,r2
	mov r4,r1
	mov.b r2,@(r0,r4)
	mov r12,r2
	mov.w @(0x94,PC),r0
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	fmov fr15,@(r0,r4)
	mov 0x23,r0
	mov.l @(0x88,PC),r3
	mov.b r13,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x78,PC),r0
	mov r4,r1
	mov.l @(0x80,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x6A,PC),r0
	mov 0x0D,r5
	mov.l @(0x80,PC),r2
	mov 0x00,r6
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028f40
	mov r0,r4
	mov 0x21,r0
	mov.l @(0x58,PC),r3
	mov 0x05,r2
	mov r4,r1
	mov.b r2,@(r0,r4)
	mov r12,r2
	mov.w @(0x46,PC),r0
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x3C,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x2A,PC),r0
	mov r4,r1
	mov.l @(0x34,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0x1C,PC),r0
	mov.l @(0x38,PC),r2
	mov.l r2,@(r0,r4)

loc_8c028f40:
	lds.l @r15+,pr
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
	#data 0x0084
	#data 0x012c
	#data 0x00cc
	#data 0x00d4
	#align4
	#data loc_8c029054
	#data bank12.loc_8c1294c8
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c149560
	#data loc_8c0290c0
	#data bank14.loc_8c149580
	#data bank14.loc_8c149590
	#data bank14.loc_8c1495b0

;==============================================
loc_8c028f7c:
	mov.l @(0x10C,PC),r3
	mov.b @r3,r0
	cmp/eq 0x03,r0
	bt loc_8c028f8a
	mov.l @(0x108,PC),r2
	jmp @r2
	nop

loc_8c028f8a:
	rts
	nop

;==============================================
loc_8c028f8e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x100,PC),r4
	mov 0x1C,r0
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	cmp/eq 0x03,r0
	bt loc_8c028fac
	lds.l @r15+,pr
	mov.l @(0xEC,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

loc_8c028fac:
	mov.b @(0x2,r4),r0
	mov r14,r1
	mov.l @(0xE4,PC),r2
	add 0x34,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0xE0,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xD8,PC),r1
	mov.b @(0x2,r4),r0
	mov.b @(r0,r1),r2
	mov r14,r1
	mov.l @(0xD4,PC),r0
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0xC4,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c028ff4
	mov 0x00,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c028ff4:
	mov.w @(0x1E,r14),r0
	mov.w @(0x8E,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c029008
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c029008:
	mova @(0x9C,PC),r0
	mov.l @(0xAC,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x94,PC),r0
	mov.l @(0x9C,PC),r3
	fmov @r0,fr2
	mova @(0x94,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c029042:
	mov.l @(0x48,PC),r3
	mov.b @r3,r0
	cmp/eq 0x04,r0
	bt loc_8c029050
	mov.l @(0x44,PC),r2
	jmp @r2
	nop

loc_8c029050:
	rts
	nop

;==============================================
loc_8c029054:
	mov.l @(0x3C,PC),r5
	mov 0x1C,r0
	mov.b @(r0,r5),r0
	cmp/eq 0x04,r0
	bt loc_8c029064
	mov.l @(0x30,PC),r3
	jmp @r3
	nop

loc_8c029064:
	mov 0x21,r3
	mov.b @(0x3,r5),r0
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bt loc_8c029078
	mova @(0x48,PC),r0
	bra loc_8c02907a
	fmov @r0,fr3

loc_8c029078:
	fldi1 fr3

loc_8c02907a:
	mov.w @(0xC,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	rts
	fmov fr3,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0168
	#data 0x0080
	#align4
	#data 0x8c212ce8
	#data bank04.loc_8c0450c0
	#data 0x8c212ccc
	#data bank14.loc_8c149604
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c1495f0
	#data bank14.loc_8c149268
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data 0x3f333333

;==============================================
loc_8c0290c0:
	mov.l @(0xB4,PC),r6
	mov 0x1C,r0
	mov.b @(r0,r6),r0
	cmp/eq 0x04,r0
	bt loc_8c0290d0
	mov.l @(0xB0,PC),r3
	jmp @r3
	nop

loc_8c0290d0:
	mov 0x21,r3
	mov.b @(0x3,r6),r0
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bt loc_8c0290ee
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov.w @(0x8E,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	bra loc_8c0290f8
	fldi0 fr3

loc_8c0290ee:
	mov.w @(0x82,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)

loc_8c0290f8:
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c029116
	cmp/eq 0x01,r0
	bt loc_8c02911e
	cmp/eq 0x02,r0
	bt loc_8c029126
	cmp/eq 0x03,r0
	bt loc_8c029130
	bra loc_8c02913e
	nop

loc_8c029116:
	mov.b @(0x5,r6),r0
	mov r0,r5
	bra loc_8c029140
	add 0x23,r5

loc_8c02911e:
	mov.b @(0x6,r6),r0
	mov r0,r5
	bra loc_8c029140
	add 0x28,r5

loc_8c029126:
	mov.b @(0x7,r6),r0
	neg r0,r0
	mov r0,r5
	bra loc_8c029140
	add 0x2D,r5

loc_8c029130:
	mov.b @(0x8,r6),r0
	tst r0,r0
	bt loc_8c02913a
	bra loc_8c029140
	mov 0x15,r5

loc_8c02913a:
	bra loc_8c029140
	mov 0x0D,r5

loc_8c02913e:
	mov 0x00,r5

loc_8c029140:
	mov.l @(0x40,PC),r3
	exts.b r5,r5
	shll2 r5
	mov.l @r3,r0
	mov.l @r0,r0
	mov.l @(r0,r5),r2
	mov.w @(0x26,PC),r0
	rts
	mov.l r2,@(r0,r4)

;==============================================
loc_8c029152:
	mov.l r14,@-r15
	mov 0x1C,r0
	mov.l r13,@-r15
	mov.l @(0x1C,PC),r13
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r0
	cmp/eq 0x04,r0
	bt.s loc_8c029188
	mov r4,r14
	lds.l @r15+,pr
	mov.l @(0x10,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;###############################################
	#data 0x0080
	#data 0x0084
	#align4
	#data 0x8c212ccc
	#data bank04.loc_8c0450c0
	#data 0x3f333333
	#data 0x8c26a904

;==============================================
loc_8c029188:
	mov.w @(0x1E,r14),r0
	mov.w @(0xD0,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c02919a
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c02919a:
	mova @(0xC8,PC),r0
	mov.l @(0xD4,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xC0,PC),r0
	mov.l @(0xC4,PC),r3
	fmov @r0,fr2
	mova @(0xBC,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.l @(0xB0,PC),r3
	mov.l @(0xA8,PC),r5
	fmov fr2,@(r0,r14)
	mov.b @(0x3,r13),r0
	cmp/eq 0x05,r0
	bt.s loc_8c029218
	mov.l @r3,r4
	mov.w @(0x84,PC),r0
	mov.l @r4,r1
	mov.l @(0xA4,PC),r3
	mov.l @(r0,r1),r2
	add 0xC0,r0
	mov.l r2,@(r0,r14)
	mov.b @(0x3,r13),r0
	mov.l @(0x98,PC),r2
	mov r0,r1
	shll r0
	add r1,r0
	mov r14,r1
	shll2 r0
	add r0,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x8C,PC),r1
	mov.b @(0x3,r13),r0
	mov.b @(r0,r1),r2
	mov r14,r1
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x78,PC),r3
	shll2 r2
	add r5,r2
	jsr @r3
	mov 0x0C,r0
	bra loc_8c029254
	nop

loc_8c029218:
	mov.w @(0x46,PC),r0
	mov.l @r4,r2
	mov.l @(0x6C,PC),r4
	mov.l @(r0,r2),r1
	add 0xC4,r0
	mov.l @(0x60,PC),r3
	mov r5,r2
	mov.l r1,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov.b @(0x1,r4),r0
	mov r0,r1
	shll r0
	add r1,r0
	mov r14,r1
	shll2 r0
	add 0x50,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0

loc_8c029254:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;###############################################
	#data 0x0168
	#data 0x00c4
	#data 0x00c0
	#align4
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data bank14.loc_8c149268
	#data 0x8c26a904
	#data bank14.loc_8c149634
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c14967c
	#data bank14.loc_8c1495e0

;==============================================
loc_8c029290:
	mov.l r14,@-r15
	mov 0x0D,r5
	mov.l r13,@-r15
	mov 0x00,r6
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x174,PC),r12
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0292b4
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c0292b4:
	mov.w @(0x156,PC),r0
	mov 0x01,r14
	fldi0 fr4
	mov r4,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x15C,PC),r3
	add 0x50,r1
	mov.l @(0x15C,PC),r10
	mov.l r3,@(0x10,r4)
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x154,PC),r3
	mov r10,r2
	fmov fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x134,PC),r0
	mov r4,r1
	mov.w @(0x12E,PC),r11
	add 0x74,r1
	mov.l @(0x148,PC),r2
	mov.l @(0x148,PC),r3
	mov.l r11,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.w @(0x124,PC),r0
	mov 0x0D,r5
	mov.l @(0x140,PC),r1
	mov 0x00,r6
	mov.l r1,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c029304
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c029304:
	mov.w @(0x106,PC),r0
	mov r4,r1
	mov.l @(0x130,PC),r5
	add 0x34,r1
	mov.l @(0x128,PC),r3
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.b @(0x2,r5),r0
	mov.l @(0x128,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x108,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x2,r5),r0
	mov r4,r1
	mov.l @(0x118,PC),r2
	add 0x50,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0xF0,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xD0,PC),r0
	mov r4,r1
	mov.l @(0xE8,PC),r2
	add 0x74,r1
	mov.l @(0xE8,PC),r3
	mov.l r11,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.l @(0xF8,PC),r9
	mov 0x00,r13
	mov.w @(0xC0,PC),r0
	mov 0x0D,r5
	mov.l @r9,r1
	mov r13,r6
	mov.l @r1,r3
	mov.w @(0xB8,PC),r1
	mov.l @(r0,r3),r0
	add r4,r1
	mov.l r0,@r1
	mov.w @(0xAC,PC),r0
	mov.l r13,@(r0,r4)
	jsr @r12
	mov r13,r4
	tst r0,r0
	bf.s loc_8c029376
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c029376:
	mov.l @(0xD4,PC),r3
	mov r4,r1
	mov.w @(0x90,PC),r0
	add 0x34,r1
	mov.l @(0xD0,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x9C,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xBC,PC),r8
	mov r4,r1
	mov.w @(0x74,PC),r0
	add 0x74,r1
	mov.l @(0x90,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x0D,r5
	mov.w @(0x68,PC),r0
	mov 0x00,r6
	mov.l @r2,r3
	mov.l @(0x24,r3),r1
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0293cc
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c0293cc:
	mov.l @(0x7C,PC),r3
	mov r4,r1
	mov.w @(0x3A,PC),r0
	add 0x34,r1
	mov.l @(0x78,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x44,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x22,PC),r0
	mov r4,r1
	mov.l @(0x3C,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov.w @(0x16,PC),r0
	mov.l @r2,r3
	mov.l @(0x3C,r3),r1
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	bra loc_8c029458
	nop

;###############################################
	#data 0x012c
	#data 0x0431
	#data 0x00cc
	#data 0x00d4
	#data 0x00c4
	#data 0x0084
	#align4
	#data bank04.loc_8c044f26
	#data loc_8c029988
	#data bank14.loc_8c1496b4
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c1496c0
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c149684
	#data loc_8c02999a
	#data 0x8c212ccc
	#data bank14.loc_8c149710
	#data bank14.loc_8c149764
	#data 0x8c26a904
	#data loc_8c029a58
	#data bank14.loc_8c1496f0
	#data bank14.loc_8c1496d0

;----------------------------------------------
loc_8c029458:
	mov 0x20,r0
	mov 0x0D,r5
	mov.b r14,@(r0,r4)
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c02946e
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c02946e:
	mov.l @(0x19C,PC),r3
	mov r4,r1
	mov.w @(0x192,PC),r0
	add 0x34,r1
	mov.l @(0x198,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x194,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x190,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x178,PC),r0
	mov r4,r1
	mov.l @(0x184,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x40,r0
	mov 0x0D,r5
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(r0,r3),r1
	add 0x44,r0
	mov 0x02,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0294c6
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c0294c6:
	mov.l @(0x144,PC),r3
	mov r4,r1
	mov.w @(0x13A,PC),r0
	add 0x34,r1
	mov.l @(0x140,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x13C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x138,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x120,PC),r0
	mov r4,r1
	mov.l @(0x12C,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x48,r0
	mov 0x0D,r5
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(r0,r3),r1
	add 0x3C,r0
	mov 0x03,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c02951e
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c02951e:
	mov.l @(0xEC,PC),r3
	mov r4,r1
	mov.w @(0xE2,PC),r0
	add 0x34,r1
	mov.l @(0xE8,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xE0,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xC8,PC),r0
	mov r4,r1
	mov.l @(0xD4,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x58,r0
	mov 0x0D,r5
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(r0,r3),r1
	add 0x2C,r0
	mov 0x04,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c029576
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c029576:
	mov.l @(0x94,PC),r3
	mov r4,r1
	mov.w @(0x8A,PC),r0
	add 0x34,r1
	mov.l @(0x90,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x88,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x70,PC),r0
	mov r4,r1
	mov.l @(0x7C,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x5C,r0
	mov 0x0D,r5
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(r0,r3),r1
	add 0x28,r0
	mov 0x05,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0295ce
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c0295ce:
	mov.l @(0x3C,PC),r3
	mov r4,r1
	mov.w @(0x32,PC),r0
	add 0x34,r1
	mov.l @(0x38,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x34,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x30,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x18,PC),r0
	mov r4,r1
	mov.l @(0x24,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x60,r0
	mov.l @r2,r3
	bra loc_8c02961c
	nop

;###############################################
	#data 0x012c
	#data 0x00cc
	#align4
	#data loc_8c029a58
	#data bank14.loc_8c1496f0
	#data bank12.loc_8c1294c8
	#data bank12.loc_8c1294bc

;----------------------------------------------
loc_8c02961c:
	mov.l @(r0,r3),r1
	add 0x24,r0
	mov 0x06,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov 0x0D,r5
	mov.b r3,@(r0,r4)
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c02963e
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c02963e:
	mov.l @(0x18C,PC),r3
	mov r4,r1
	mov.w @(0x180,PC),r0
	add 0x34,r1
	mov.l @(0x188,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x184,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x180,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x166,PC),r0
	mov r4,r1
	mov.l @(0x174,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x64,r0
	mov 0x0D,r5
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(r0,r3),r1
	add 0x20,r0
	mov 0x07,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c029696
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c029696:
	mov.l @(0x144,PC),r3
	mov r4,r1
	mov.w @(0x128,PC),r0
	add 0x34,r1
	mov.l @(0x130,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x12C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x128,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x10E,PC),r0
	mov r4,r1
	mov.l @(0x11C,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x44,r0
	mov 0x0D,r5
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(r0,r3),r1
	add 0x40,r0
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0296ec
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c0296ec:
	mov.l @(0xEC,PC),r3
	mov r4,r1
	mov.w @(0xD2,PC),r0
	add 0x34,r1
	mov.l @(0xD8,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xD0,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xB8,PC),r0
	mov r4,r1
	mov.l @(0xC4,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x0D,r5
	mov.w @(0xA6,PC),r0
	mov 0x00,r6
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	add 0x98,r0
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c029742
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c029742:
	mov.l @(0x98,PC),r3
	mov r4,r1
	mov.w @(0x7C,PC),r0
	add 0x34,r1
	mov.l @(0x84,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x80,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x7C,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x62,PC),r0
	mov r4,r1
	mov.l @(0x70,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x7C,r0
	mov 0x0D,r5
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(r0,r3),r1
	add 0x08,r0
	mov 0x02,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c02979a
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c02979a:
	mov.l @(0x40,PC),r3
	mov r4,r1
	mov.w @(0x24,PC),r0
	add 0x34,r1
	mov.l @(0x2C,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x28,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x24,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xA,PC),r0
	mov r4,r1
	add 0x74,r1
	mov.l r11,@(r0,r4)
	bra loc_8c0297e0
	nop

;###############################################
	#data 0x012c
	#data 0x00cc
	#data 0x00ec
	#align4
	#data loc_8c029a58
	#data bank14.loc_8c1496f0
	#data bank12.loc_8c1294c8
	#data bank12.loc_8c1294bc
	#data loc_8c029a94

;----------------------------------------------
loc_8c0297e0:
	mov.l @(0x18C,PC),r3
	mov r8,r2
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x0D,r5
	mov.w @(0x174,PC),r0
	mov 0x00,r6
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	add 0xB8,r0
	mov 0x03,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c029810
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c029810:
	mov.l @(0x160,PC),r3
	mov r4,r1
	mov.w @(0x14E,PC),r0
	add 0x34,r1
	mov.l @(0x15C,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x15C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x154,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x130,PC),r0
	mov r4,r1
	mov.l @(0x138,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x68,r0
	mov 0x0D,r5
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(r0,r3),r1
	add 0x1C,r0
	mov 0x04,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c029952
	mov r0,r4
	mov.l @(0x10C,PC),r3
	mov r4,r1
	mov.w @(0xFA,PC),r0
	add 0x34,r1
	mov.l @(0x108,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x108,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x100,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xDC,PC),r0
	mov r4,r1
	mov.l @(0xE4,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x0D,r5
	mov.w @(0xCC,PC),r0
	mov 0x00,r6
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	mov 0x05,r3
	mov.w @(0xC4,PC),r0
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c029952
	mov r0,r4
	mov.l @(0xB8,PC),r3
	mov r4,r1
	mov.w @(0xA6,PC),r0
	add 0x34,r1
	mov.l @(0xBC,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xAC,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x88,PC),r0
	mov r4,r1
	mov.l @(0x90,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x44,r0
	mov 0x0D,r5
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(r0,r3),r1
	add 0x40,r0
	mov 0x07,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c029952
	mov r0,r4
	mov.l @(0x74,PC),r3
	mov r4,r1
	mov.w @(0x52,PC),r0
	add 0x34,r1
	mov.l @(0x68,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x60,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x58,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x34,PC),r0
	mov r4,r1
	mov.l @(0x3C,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov.w @(0x2A,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	add 0xC4,r0
	mov 0x07,r3
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)

loc_8c029952:
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
	#data 0x00cc
	#data 0x012c
	#data 0x010c
	#data 0x0084
	#data 0x00c0
	#align4
	#data bank12.loc_8c1294bc
	#data loc_8c029a94
	#data bank14.loc_8c1496f0
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c1496fc
	#data loc_8c029d5a

;==============================================
loc_8c029988:
	mov.l @(0x124,PC),r2
	mov.b @r2,r0
	cmp/eq 0x02,r0
	bt loc_8c029996
	mov.l @(0x120,PC),r3
	jmp @r3
	nop

loc_8c029996:
	rts
	nop

;----------------------------------------------
loc_8c02999a:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x110,PC),r4
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @r4,r0
	cmp/eq 0x02,r0
	bt loc_8c0299b6
	lds.l @r15+,pr
	mov.l @(0x104,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

loc_8c0299b6:
	mov.w @(0xF2,PC),r0
	mov 0x00,r5
	mov.b r5,@(r0,r14)
	mov.b @(0x2,r4),r0
	cmp/eq 0x07,r0
	bt loc_8c029a50
	mov.w @(0xE6,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r4),r0
	mov.l @(0xE8,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0xE4,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x2,r4),r0
	mov r14,r1
	mov.l @(0xD8,PC),r2
	add 0x50,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0xCC,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c029a0a
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c029a0a:
	mov.w @(0x1E,r14),r0
	mov.w @(0x9E,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c029a1e
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c029a1e:
	mova @(0xA4,PC),r0
	mov.l @(0xB0,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x9C,PC),r0
	mov.l @(0xA0,PC),r3
	fmov @r0,fr2
	mova @(0x98,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c029a50:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14


;==============================================
loc_8c029a58:
	mov.l @(0x54,PC),r5
	sts.l pr,@-r15
	mov.b @r5,r0
	cmp/eq 0x02,r0
	bt loc_8c029a68
	mov.l @(0x50,PC),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c029a68:
	mov.l @(0x6C,PC),r2
	mov r4,r1
	mov.l @(0x6C,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov 0x20,r3
	mov.b @(0x2,r5),r0
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf loc_8c029a8e
	mov.l @(0x5C,PC),r2
	mov r4,r1
	mov.l @(0x54,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c029a8e:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c029a94:
	mov.l @(0x18,PC),r6
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @r6,r0
	cmp/eq 0x02,r0
	bt loc_8c029ae4
	lds.l @r15+,pr
	mov.l @(0xC,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0168
	#align4
	#data 0x8c212ccc
	#data bank04.loc_8c0450c0
	#data bank14.loc_8c149710
	#data bank12.loc_8c1294c8
	#data bank14.loc_8c149764
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0
	#data bank14.loc_8c1496d0
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c1496c0

;==============================================
loc_8c029ae4:
	mov.l @(0xD4,PC),r2
	mov r4,r1
	mov.l @(0xD4,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov 0x20,r3
	mov.b @(0x2,r6),r0
	add r4,r3
	mov.l @(0xCC,PC),r14
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf loc_8c029b0c
	mov.l @(0xBC,PC),r3
	mov r4,r1
	mov r14,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c029b0c:
	mov 0x20,r0
	mov.l @(0xBC,PC),r5
	mov.b @(r0,r4),r0
	mov.l @(0xB4,PC),r13
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c029b4c
	mov.l @r5,r7
	cmp/eq 0x01,r0
	bt loc_8c029b6c
	cmp/eq 0x02,r0
	bt loc_8c029b90
	cmp/eq 0x03,r0
	bt loc_8c029bd0
	cmp/eq 0x04,r0
	bf loc_8c029b30
	bra loc_8c029c94
	nop

loc_8c029b30:
	cmp/eq 0x05,r0
	bf loc_8c029b38
	bra loc_8c029cfc
	nop

loc_8c029b38:
	cmp/eq 0x06,r0
	bf loc_8c029b40
	bra loc_8c029d52
	nop

loc_8c029b40:
	cmp/eq 0x07,r0
	bf loc_8c029b48
	bra loc_8c029d2c
	nop

loc_8c029b48:
	bra loc_8c029d52
	nop

loc_8c029b4c:
	mov.w @(0x62,PC),r0
	mov.l @r7,r3
	mov.l @(r0,r3),r2
	add 0xFC,r0
	mov.l r2,@(r0,r4)
	mov.b @(0xD,r6),r0
	tst r0,r0
	bf loc_8c029b60
	bra loc_8c029d52
	nop

loc_8c029b60:
	mov.l @r5,r3
	mov.w @(0x4E,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	bra loc_8c029d52
	mov.l r1,@(r0,r4)

loc_8c029b6c:
	mov.w @(0x46,PC),r0
	mov.l @r7,r2
	mov.l @(r0,r2),r3
	add 0x98,r0
	mov.l r3,@(r0,r4)
	mov 0x19,r0
	mov.b @(r0,r6),r2
	tst r2,r2
	bf loc_8c029b82
	bra loc_8c029d52
	nop

loc_8c029b82:
	mov.l @r5,r2
	mov.w @(0x30,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	add 0x94,r0
	bra loc_8c029d52
	mov.l r1,@(r0,r4)

loc_8c029b90:
	mov.w @(0x26,PC),r0
	mov.l @r7,r2
	mov.l @(r0,r2),r3
	add 0x04,r0
	mov.l r3,@(r0,r4)
	mov.b @(0x9,r6),r0
	tst r0,r0
	bf loc_8c029ba4
	bra loc_8c029d52
	nop

loc_8c029ba4:
	mov.l @r5,r2
	mov 0x7C,r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	add 0x08,r0
	bra loc_8c029d52
	mov.l r1,@(r0,r4)

;###############################################
	#data 0x0088
	#data 0x0084
	#data 0x00ec
	#data 0x00f0
	#data 0x0080
	#align4
	#data bank14.loc_8c1496e0
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c1496c0
	#data bank14.loc_8c1496d0
	#data 0x8c26a904

;----------------------------------------------
loc_8c029bd0:
	mov.l @(0xBC,PC),r3
	mov r4,r1
	mov r13,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov 0x20,r3
	mov.b @(0x2,r6),r0
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf loc_8c029bf6
	mov.l @(0xA4,PC),r3
	mov r4,r1
	mov r14,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c029bf6:
	mov.b @(0xA,r6),r0
	cmp/eq 0x00,r0
	bt loc_8c029c1c
	cmp/eq 0x01,r0
	bt loc_8c029c28
	cmp/eq 0x02,r0
	bt loc_8c029c34
	cmp/eq 0x03,r0
	bt loc_8c029c40
	cmp/eq 0x04,r0
	bt loc_8c029c4c
	cmp/eq 0x05,r0
	bt loc_8c029c58
	cmp/eq 0x06,r0
	bt loc_8c029c64
	cmp/eq 0x07,r0
	bt loc_8c029c70
	bra loc_8c029d52
	nop

loc_8c029c1c:
	mov.l @r5,r3
	mov.w @(0x5C,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	bra loc_8c029c7a
	add 0xB8,r0

loc_8c029c28:
	mov.l @r5,r2
	mov.w @(0x52,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xB4,r0

loc_8c029c34:
	mov.l @r5,r2
	mov.w @(0x48,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xB0,r0

loc_8c029c40:
	mov.l @r5,r2
	mov.w @(0x3E,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xAC,r0

loc_8c029c4c:
	mov.l @r5,r2
	mov.w @(0x34,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xA8,r0

loc_8c029c58:
	mov.l @r5,r2
	mov.w @(0x2A,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xA4,r0

loc_8c029c64:
	mov.l @r5,r2
	mov.w @(0x20,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xA0,r0

loc_8c029c70:
	mov.l @r5,r2
	mov.w @(0x16,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	mov.w @(0x12,PC),r0

loc_8c029c7a:
	bra loc_8c029d52
	mov.l r1,@(r0,r4)

;###############################################
	#data 0x00cc
	#data 0x00d0
	#data 0x00d4
	#data 0x00d8
	#data 0x00dc
	#data 0x00e0
	#data 0x00e4
	#data 0x00e8
	#data 0x0084
	#align4
	#data bank12.loc_8c1294bc

;----------------------------------------------
loc_8c029c94:
	mov.l @(0xE8,PC),r3
	mov r4,r1
	mov r13,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov 0x20,r3
	mov.b @(0x2,r6),r0
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf loc_8c029cba
	mov.l @(0xD0,PC),r3
	mov r4,r1
	mov r14,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c029cba:
	mov.b @(0xB,r6),r0
	cmp/eq 0x00,r0
	bt.s loc_8c029cd2
	mov.l @r5,r7
	cmp/eq 0x01,r0
	bt loc_8c029cdc
	cmp/eq 0x02,r0
	bt loc_8c029ce6
	cmp/eq 0x03,r0
	bt loc_8c029cf0
	bra loc_8c029d52
	nop

loc_8c029cd2:
	mov.l @r7,r3
	mov 0x68,r0
	mov.l @(r0,r3),r2
	bra loc_8c029d16
	add 0x1C,r0

loc_8c029cdc:
	mov.l @r7,r1
	mov 0x6C,r0
	mov.l @(r0,r1),r3
	bra loc_8c029cf8
	add 0x18,r0

loc_8c029ce6:
	mov.l @r7,r1
	mov 0x70,r0
	mov.l @(r0,r1),r3
	bra loc_8c029cf8
	add 0x14,r0

loc_8c029cf0:
	mov.l @r7,r1
	mov 0x78,r0
	mov.l @(r0,r1),r3
	mov.w @(0x7C,PC),r0

loc_8c029cf8:
	bra loc_8c029d52
	mov.l r3,@(r0,r4)

loc_8c029cfc:
	mov.b @(0xC,r6),r0
	cmp/eq 0x00,r0
	bt loc_8c029d0e
	cmp/eq 0x01,r0
	bt loc_8c029d1a
	cmp/eq 0x02,r0
	bt loc_8c029d20
	bra loc_8c029d52
	nop

loc_8c029d0e:
	mov.w @(0x66,PC),r0
	mov.l @r7,r3
	mov.l @(r0,r3),r2
	mov.w @(0x5E,PC),r0

loc_8c029d16:
	bra loc_8c029d52
	mov.l r2,@(r0,r4)

loc_8c029d1a:
	mov.w @(0x5C,PC),r0
	bra loc_8c029d24
	mov.l @r7,r1

loc_8c029d20:
	mov.w @(0x58,PC),r0
	mov.l @r7,r1

loc_8c029d24:
	mov.l @(r0,r1),r3
	mov.w @(0x4C,PC),r0
	bra loc_8c029d52
	mov.l r3,@(r0,r4)

loc_8c029d2c:
	mov.l @(0x50,PC),r3
	mov r4,r1
	mov r13,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov 0x20,r3
	mov.b @(0x2,r6),r0
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf loc_8c029d52
	mov.l @(0x38,PC),r3
	mov r4,r1
	mov r14,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c029d52:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c029d5a:
	mov.l @(0x28,PC),r5
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @r5,r0
	cmp/eq 0x02,r0
	bt.s loc_8c029d8c
	mov r4,r14
	lds.l @r15+,pr
	mov.l @(0x18,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

;###############################################
	#data 0x0084
	#data 0x010c
	#data 0x0110
	#data 0x0100
	#align4
	#data bank12.loc_8c1294bc
	#data 0x8c212ccc
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c029d8c:
	mov.w @(0x8E,PC),r0
	mov r14,r1
	mov.l @(0x90,PC),r2
	mov 0x00,r4
	mov.l @(0x90,PC),r3
	add 0x74,r1
	mov.b r4,@(r0,r14)
	jsr @r3
	mov 0x10,r0
	mov 0x20,r3
	mov.b @(0x2,r5),r0
	add r14,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf loc_8c029e16
	mov.w @(0x6E,PC),r0
	mov 0x01,r3
	mov.l @(0x78,PC),r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	add 0x74,r1
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c029dd0
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c029dd0:
	mov.w @(0x1E,r14),r0
	mov.w @(0x4A,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c029de4
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c029de4:
	mova @(0x48,PC),r0
	mov.l @(0x58,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x40,PC),r0
	mov.l @(0x48,PC),r3
	fmov @r0,fr2
	mova @(0x40,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x74,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c029e16:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x012c
	#data 0x0168
	#align4
	#data bank14.loc_8c1496d0
	#data bank12.loc_8c1294bc
	#data bank14.loc_8c1496c0
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0

;==============================================
loc_8c029e44:
	mov.l r14,@-r15
	mov 0x03,r3
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l @(0x150,PC),r13
	and r3,r12
	mov.w @(0x12C,PC),r1
	mov r12,r14
	mov.l @(0x14C,PC),r0
	shll2 r14
	mov.l @r13,r2
	mov.l @(r0,r14),r3
	add r1,r2
	mov.l @(0x144,PC),r0
	add r14,r2
	mov.l r3,@r2
	mov.w @(0x11A,PC),r2
	mov.l @r13,r3
	mov.l @(r0,r14),r1
	add r2,r3
	add r14,r3
	mov.l r1,@r3
	mov.w @(0x10C,PC),r1
	mov.w @(0x10E,PC),r3
	mov.l @r13,r0
	add r0,r1
	add r0,r3
	add r2,r0
	mov.l @(r0,r14),r0
	add r14,r3
	add r14,r1
	mov.l @r1,r1
	mov 0x00,r6
	mov.w @(0xFC,PC),r5
	mul.l r0,r1
	sts macl,r1
	add 0x10,r1
	mov.l r1,@r3
	mov.w @(0xF2,PC),r3
	mov.l @r13,r0
	add r0,r3
	add r14,r3
	mov.l r4,@r3
	mov.w @(0xEA,PC),r4
	mov.l @r13,r0
	add r12,r4
	mov.l @r15+,r12
	add r0,r5
	mov.l @(0x104,PC),r3
	add r14,r5
	mov.l @r15+,r13
	mov.l @r5,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c029eb2:
	mov.l r14,@-r15
	mov 0x00,r5
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0xEC,PC),r3
	mov.l @(0xD8,PC),r13
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r12
	mov.l @(0xEC,PC),r6
	mov.l r3,@r13
	jsr @r12
	mov r3,r4
	mov.l @(0xE8,PC),r4
	bsr loc_8c029e44
	mov 0x00,r5
	mov.l @(0xE4,PC),r4
	bsr loc_8c029e44
	mov 0x01,r5
	mov.l @(0xE4,PC),r4
	mov.w @(0xA8,PC),r6
	jsr @r12
	mov 0x00,r5
	mov.w @(0xA4,PC),r11
	mov.w @(0xA4,PC),r14
	mov.l @(0xE4,PC),r10
	mov.l @(0xD8,PC),r8
	mov.l @(0xDC,PC),r9

loc_8c029ef0:
	jsr @r10
	mov r14,r4
	mov 0x00,r6
	mov r6,r5
	jsr @r8
	mov r9,r4
	add 0x01,r14
	cmp/ge r11,r14
	bf loc_8c029ef0
	mov.l @r13,r4
	mov 0x00,r5
	mov.w @(0x82,PC),r3
	mov.w @(0x86,PC),r6
	jsr @r12
	add r3,r4
	mov.l @r13,r4
	mov 0x00,r5
	mov.w @(0x80,PC),r3
	mov.w @(0x7C,PC),r6
	jsr @r12
	add r3,r4
	mov.w @(0x7A,PC),r0
	mov 0x00,r3
	mov.l @r13,r2
	mov r3,r5
	mov.l @(0xB0,PC),r6
	mov.l r3,@(r0,r2)
	mov.w @(0x70,PC),r0
	mov.l @r13,r2
	mov.l r3,@(r0,r2)
	mov.w @(0x6C,PC),r0
	mov.l @r13,r2
	mov.l r3,@(r0,r2)
	mov.w @(0x68,PC),r3
	mov.l @r13,r4
	jsr @r12
	add r3,r4
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
loc_8c029f4c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0x32,PC),r13
	mov.w @(0x32,PC),r14
	mov.l @(0x70,PC),r12
	mov.l @(0x78,PC),r10
	mov.l @(0x68,PC),r11

loc_8c029f62:
	jsr @r12
	mov r14,r4
	mov 0x00,r6
	mov r6,r5
	jsr @r10
	mov r11,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c029f62
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x1488
	#data 0x1490
	#data 0x1498
	#data 0x14a0
	#data 0x02c1
	#data 0x0800
	#data 0x0390
	#data 0x0110
	#data 0x0500
	#data 0x0280
	#data 0x0d00
	#data 0x14a8
	#data 0x14ac
	#data 0x14b0
	#data 0x14b4
	#align4
	#data 0x8c1f97a0
	#data bank14.loc_8c149810
	#data bank14.loc_8c149820
	#data loc_8c027366
	#data 0x0c420000
	#data bank12.loc_8c129728
	#data 0x000a7500
	#data 0x0c4c8000
	#data 0x0c598000
	#data 0x0c678000
	#data bank12.loc_8c124080
	#data bank14.loc_8c149830
	#data bank11.loc_8c11b800
	#data 0x000a604c
	#data bank12.loc_8c1243c0

;==============================================
loc_8c029fdc:
	sts.l pr,@-r15
	mov.l @(0x12C,PC),r3
	jsr @r3
	nop
	mov r0,r4
	mov 0xF8,r3
	exts.w r4,r5
	shad r3,r5
	extu.b r5,r0
	mov 0x5E,r3
	add 0xDF,r0
	muls.w r3,r0
	lds.l @r15+,pr
	extu.b r4,r4
	sts macl,r0
	add r4,r0
	rts
	add 0xDF,r0

;==============================================
loc_8c02a000:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xE4,r15
	mov r7,r14
	shll2 r14
	mov.l @(0xF8,PC),r2
	mov r15,r13
	shll r14
	mov.l @(0xF8,PC),r12
	add 0x14,r13
	add r2,r14
	mov r13,r3
	mov r3,r8
	add 0x02,r8
	mov.l r3,@(0x8,r15)
	mov r13,r9
	mov.w @r14,r1
	add 0x06,r9
	shll2 r6
	mov.w r1,@r3
	add 0x04,r3
	mov.w @(0x2,r14),r0
	mov.w @(0xC6,PC),r1
	mov.w r0,@r8
	mov.l r3,@(0x4,r15)
	mov.w @(0x4,r14),r0
	mov.w r0,@r3
	mov.w @(0x6,r14),r0
	mov.w r0,@r9
	mov.l @r12,r0
	mov.l r6,@r15
	add r0,r1
	mov.l @r12,r3
	add r1,r6
	mov.l @r15,r1
	mov.w @(0xAE,PC),r0
	exts.w r4,r4
	add r3,r0
	mov.l @(r0,r1),r3
	mov.l @r6,r0
	mul.l r4,r3
	mov 0x00,r3
	sts macl,r4
	add r0,r4
	add 0x10,r4
	mov.l r4,@(0x10,r15)
	mov.l r3,@(0xC,r15)
	bra loc_8c02a0dc
	nop

loc_8c02a06c:
	mov r5,r4
	bra loc_8c02a0c4
	mov 0x00,r11

loc_8c02a072:
	mov.l @(0x10,r15),r10
	mov 0x06,r13
	mov.w @(0x8A,PC),r14
	add 0x01,r10
	mov.l r10,@(0x10,r15)
	add 0xFF,r10
	mov.b @r10,r10
	bra loc_8c02a0be
	mov 0x04,r7

loc_8c02a084:
	extu.b r10,r6
	neg r13,r3
	and r14,r6
	shad r3,r6
	tst r6,r6
	bf.s loc_8c02a09a
	add 0xFF,r6
	mov.l @(0x8,r15),r1
	mov.w @r1,r3
	bra loc_8c02a0b4
	mov.w r3,@r4

loc_8c02a09a:
	tst r6,r6
	bf.s loc_8c02a0a4
	add 0xFF,r6
	bra loc_8c02a0ac
	mov.w @r8,r2

loc_8c02a0a4:
	tst r6,r6
	bf loc_8c02a0b0
	mov.l @(0x4,r15),r3
	mov.w @r3,r2

loc_8c02a0ac:
	bra loc_8c02a0b4
	mov.w r2,@r4

loc_8c02a0b0:
	mov.w @r9,r1
	mov.w r1,@r4

loc_8c02a0b4:
	shar r14
	add 0xFE,r13
	add 0xFF,r7
	add 0x02,r4
	shar r14

loc_8c02a0be:
	tst r7,r7
	bf loc_8c02a084
	add 0x01,r11

loc_8c02a0c4:
	mov.w @(0x3E,PC),r1
	mov.l @r12,r3
	mov.l @r15,r2
	add r3,r1
	add r2,r1
	mov.l @r1,r3
	cmp/ge r3,r11
	bf loc_8c02a072
	mov.l @(0xC,r15),r3
	add 0x40,r5
	add 0x01,r3
	mov.l r3,@(0xC,r15)

loc_8c02a0dc:
	mov.w @(0x28,PC),r1
	mov.l @r12,r2
	mov.l @r15,r3
	add r2,r1
	add r3,r1
	mov.l @r1,r2
	mov.l @(0xC,r15),r1
	cmp/ge r2,r1
	bf loc_8c02a06c
	add 0x1C,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x14a0
	#data 0x1498
	#data 0x00c0
	#data 0x1490
	#data 0x1488
	#align4
	#data bank17.loc_8c17a1b0
	#data bank14.loc_8c1497b8
	#data 0x8c1f97a0

;==============================================
loc_8c02a118:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x15C,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.w @(0x144,PC),r11
	mov 0x00,r13
	mov.l @(0x158,PC),r14
	mov 0x02,r9
	mov r11,r12
	mov.l @(0x150,PC),r8
	mov.w @(0x136,PC),r10
	add 0xD0,r12

loc_8c02a140:
	mov.l @r14,r0
	mov.w @(0x134,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(0x128,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r13),r3
	extu.b r3,r3
	tst r9,r3
	bt loc_8c02a228
	mov.l @r14,r0
	mov r13,r4
	mov.w @(0x10E,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r1
	shll2 r3
	add r1,r3
	mov.w @(0xFC,PC),r1
	shll2 r3
	shll2 r3
	shll2 r3
	add r1,r0
	shll r3
	shll r4
	add r3,r0
	bsr loc_8c029fdc
	mov.w @(r0,r4),r4
	mov r0,r4
	mov.l @r14,r0
	mov.w @(0xE8,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov.w @(0xE6,PC),r1
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(0xDC,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.l r3,@r15
	mov.b @(r0,r13),r7
	mov.l @r14,r0
	extu.b r7,r7
	add r1,r0
	add r3,r0
	mov.b @(r0,r13),r6
	extu.b r6,r6
	bsr loc_8c02a000
	mov.l @r14,r5
	mov r10,r5
	jsr @r8
	mov.l @r14,r4
	mov.w @(0xB2,PC),r0
	mov.l @r14,r4
	mov.l @(r0,r4),r4
	mov r4,r3
	shll2 r4
	add r3,r4
	mov.l @(0xC0,PC),r3
	shll2 r4
	shll2 r4
	shll2 r4
	add r13,r4
	add r12,r4
	jsr @r3
	mov.l @r14,r5
	mov.l @r14,r0
	mov.w @(0x94,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(0x88,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r13),r1
	mov 0x04,r3
	or r3,r1
	mov.w @(0x74,PC),r3
	mov.b r1,@(r0,r13)
	mov.l @r14,r0
	mov r0,r1
	add r1,r3
	mov.l @r3,r1
	mov r1,r3
	shll2 r1
	add r3,r1
	mov r2,r3
	shll2 r1
	shll2 r1
	add r3,r0
	shll2 r1
	add r1,r0
	mov.b @(r0,r13),r2
	mov.w @(0x5C,PC),r1
	and r1,r2
	mov.b r2,@(r0,r13)

loc_8c02a228:
	mov.l @r14,r0
	mov.w @(0x4C,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(0x40,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.w @(0x3C,PC),r3
	mov.b @(r0,r13),r1
	and r3,r1
	mov.b r1,@(r0,r13)
	add 0x01,r13
	cmp/ge r11,r13
	bt loc_8c02a256
	bra loc_8c02a140
	nop

loc_8c02a256:
	mov.w @(0x20,PC),r0
	mov 0x01,r2
	mov.l @r14,r3
	mov.l @(r0,r3),r1
	xor r2,r1
	mov.l r1,@(r0,r3)
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

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0800
	#data 0x0140
	#data 0x14b0
	#data 0x0d00
	#data 0x1200
	#data 0x0f80
	#data 0x00fd
	#data 0x00fe
	#align4
	#data bank11.loc_8c11b800
	#data loc_8c02ded6
	#data 0x8c1f97a0
	#data bank11.loc_8c11b810

;==============================================
loc_8c02a298:
	mov.l @(0x15C,PC),r3
	mov.w @(0x14A,PC),r1
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l @r3,r7

loc_8c02a2a2:
	mov.w @(0x144,PC),r0
	mov.w @(0x144,PC),r2
	mov.l @(r0,r7),r0
	add r7,r2
	mov r0,r3
	shll2 r0
	add r3,r0
	mov r14,r3
	shll2 r0
	shll2 r0
	shll2 r0
	shll r0
	shll r3
	add r2,r0
	mov.w @(r0,r3),r2
	exts.w r4,r3
	cmp/eq r3,r2
	bf loc_8c02a30a
	mov.w @(0x120,PC),r0
	mov.w @(0x122,PC),r2
	mov.l @(r0,r7),r0
	add r7,r2
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	shll2 r0
	shll2 r0
	add r2,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/eq r5,r3
	bf loc_8c02a30a
	mov.w @(0x102,PC),r0
	mov.w @(0x106,PC),r2
	mov.l @(r0,r7),r0
	add r7,r2
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	shll2 r0
	shll2 r0
	add r2,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/eq r6,r3
	bf loc_8c02a30a
	mov r14,r0
	nop
	rts
	mov.l @r15+,r14

loc_8c02a30a:
	add 0x01,r14
	cmp/ge r1,r14
	bf loc_8c02a2a2
	mov 0xFF,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02a316:
	mov.l @(0xE0,PC),r5
	mov.l r14,@-r15
	mov 0x00,r14
	sts.l pr,@-r15
	mov.w @(0xC6,PC),r6
	mov.l @r5,r4

loc_8c02a322:
	mov.w @(0xC4,PC),r0
	mov.w @(0xCA,PC),r3
	mov.l @(r0,r4),r1
	add r4,r3
	shll2 r1
	add r3,r1
	mov.l @r1,r1
	add r14,r1
	mov r6,r0
	nop
	mov.l @(0xC4,PC),r3
	jsr @r3
	nop
	mov r0,r7
	mov.w @(0xA8,PC),r0
	mov.w @(0xA8,PC),r2
	mov.l @(r0,r4),r0
	add r4,r2
	mov r0,r3
	shll2 r0
	add r3,r0
	mov r7,r3
	shll2 r0
	shll2 r0
	shll2 r0
	shll r0
	shll r3
	add r2,r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c02a39c
	mov.w @(0x86,PC),r0
	mov.w @(0x8E,PC),r2
	mov.l @(r0,r4),r0
	add r4,r2
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	shll2 r0
	shll2 r0
	add r2,r0
	mov.b @(r0,r7),r0
	extu.b r0,r0
	tst 0x01,r0
	bf loc_8c02a3da
	mov.w @(0x68,PC),r0
	mov.w @(0x70,PC),r2
	mov.l @(r0,r4),r0
	add r4,r2
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	shll2 r0
	shll2 r0
	add r2,r0
	mov.b @(r0,r7),r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c02a3da

loc_8c02a39c:
	mov.l @r5,r0
	mov.w @(0x48,PC),r2
	mov r0,r3
	add r3,r2
	mov.w @(0x4A,PC),r3
	mov.l @r2,r2
	add r0,r3
	mov.w @(0x3C,PC),r0
	shll2 r2
	add r3,r2
	mov.l @r2,r1
	add 0x01,r1
	mov.l r1,@r2
	mov.l @r5,r3
	mov.w @(0x36,PC),r1
	mov r3,r2
	mov.l @(r0,r2),r2
	add r1,r3
	shll2 r2
	add r3,r2
	mov r6,r0
	nop
	mov.l @(0x30,PC),r3
	jsr @r3
	mov.l @r2,r1
	mov.l r0,@r2
	mov r7,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c02a3da:
	add 0x01,r14
	cmp/ge r6,r14
	bf loc_8c02a322
	mov 0xFF,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0140
	#data 0x14b0
	#data 0x0800
	#data 0x0f80
	#data 0x1200
	#data 0x14a8
	#data 0x0d00
	#align4
	#data 0x8c1f97a0
	#data bank12.loc_8c1292d4

;==============================================
loc_8c02a400:
	mov.w @(0xBA,PC),r3
	extu.b r4,r0
	cmp/ge r3,r0
	bf loc_8c02a40e
	mov.w @(0xB4,PC),r1
	cmp/gt r1,r0
	bf loc_8c02a41a

loc_8c02a40e:
	mov.w @(0xB0,PC),r2
	cmp/ge r2,r0
	bf loc_8c02a41e
	mov.w @(0xAC,PC),r1
	cmp/gt r1,r0
	bt loc_8c02a41e

loc_8c02a41a:
	rts
	mov 0x00,r0

loc_8c02a41e:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c02a424:
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bt loc_8c02a45e
	mov.l @(0x9C,PC),r3
	cmp/eq r3,r4
	bf loc_8c02a436
	rts
	mov 0x01,r0

loc_8c02a436:
	mov.l @(0x98,PC),r3
	cmp/eq r3,r4
	bf loc_8c02a440
	rts
	mov 0x02,r0

loc_8c02a440:
	mov.l @(0x90,PC),r3
	cmp/eq r3,r4
	bf loc_8c02a44a
	rts
	mov 0x03,r0

loc_8c02a44a:
	mov.w @(0x78,PC),r3
	cmp/eq r3,r4
	bf loc_8c02a454
	rts
	mov 0x04,r0

loc_8c02a454:
	mov.w @(0x70,PC),r3
	cmp/eq r3,r4
	bf loc_8c02a45e
	rts
	mov 0x05,r0

loc_8c02a45e:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c02a464:
	mov.l r14,@-r15
	mov 0x20,r3
	extu.b r4,r14
	mov.l @(0x6C,PC),r5
	cmp/ge r3,r14
	bf loc_8c02a484
	mov 0x30,r1
	cmp/ge r1,r14
	bt loc_8c02a484
	mov r14,r0
	nop
	mov.l @(0x60,PC),r1
	add 0xE0,r0
	mov.b @(r0,r1),r0
	bra loc_8c02a52c
	nop

loc_8c02a484:
	mov 0x30,r3
	cmp/ge r3,r14
	bf.s loc_8c02a492
	extu.b r4,r6
	mov 0x39,r1
	cmp/gt r1,r14
	bf loc_8c02a4b8

loc_8c02a492:
	mov 0x39,r2
	cmp/gt r2,r14
	bf loc_8c02a4ac
	mov 0x41,r1
	cmp/ge r1,r14
	bt loc_8c02a4ac
	mov r14,r0
	nop
	mov.l @(0x3C,PC),r1
	add 0xC6,r0
	mov.b @(r0,r1),r0
	bra loc_8c02a52c
	nop

loc_8c02a4ac:
	mov 0x41,r3
	cmp/ge r3,r14
	bf loc_8c02a4e8
	mov 0x5A,r1
	cmp/gt r1,r14
	bt loc_8c02a4e8

loc_8c02a4b8:
	mov.l @(0x28,PC),r0
	bra loc_8c02a510
	nop

;###############################################
	#data 0x0080
	#data 0x009f
	#data 0x00e0
	#data 0x00ff
	#data 0xff0a
	#data 0xa00a
	#align4
	#data 0xff000000
	#data 0xffff0a0a
	#data 0xff0affff
	#data 0x00008100
	#data bank14.loc_8c149850
	#data bank14.loc_8c149860
	#data 0x0000821f

;----------------------------------------------
loc_8c02a4e8:
	mov 0x5A,r3
	cmp/gt r3,r14
	bf loc_8c02a502
	mov 0x61,r1
	cmp/ge r1,r14
	bt loc_8c02a502
	mov r14,r0
	nop
	mov.l @(0xEC,PC),r1
	add 0xA5,r0
	mov.b @(r0,r1),r0
	bra loc_8c02a52c
	nop

loc_8c02a502:
	mov 0x61,r3
	cmp/ge r3,r14
	bf loc_8c02a516
	mov 0x7A,r1
	cmp/gt r1,r14
	bt loc_8c02a516
	mov.l @(0xDC,PC),r0

loc_8c02a510:
	add r6,r0
	rts
	mov.l @r15+,r14

loc_8c02a516:
	mov 0x7A,r3
	cmp/gt r3,r14
	bf loc_8c02a534
	mov 0x7E,r1
	cmp/gt r1,r14
	bt loc_8c02a534
	mov r14,r0
	nop
	mov.l @(0xC8,PC),r1
	add 0x85,r0
	mov.b @(r0,r1),r0

loc_8c02a52c:
	extu.b r0,r0
	add r5,r0
	rts
	mov.l @r15+,r14

loc_8c02a534:
	mov.l @(0xBC,PC),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02a53a:
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
	mov 0x08,r0
	mov r4,r10
	mov 0x0A,r3
	fmov fr4,fr14
	cmp/hi r3,r10
	fmov fr5,fr15
	fmov fr6,@(r0,r15)
	bf.s loc_8c02a56c
	mov.l r5,@r15
	bsr loc_8c02a424
	mov r10,r4
	mov r0,r10

loc_8c02a56c:
	mov.l @(0x88,PC),r4
	mov 0x10,r0
	fldi0 fr4
	mov 0x25,r2
	fmov @(r0,r4),fr3
	mov 0x14,r0
	mov 0x00,r12
	fadd fr4,fr3
	mov 0xFF,r3
	fadd fr3,fr14
	fmov @(r0,r4),fr3
	mov 0x14,r0
	fadd fr4,fr3
	fadd fr3,fr15
	fldi1 fr3
	fmov fr15,@(r0,r15)
	mov 0x28,r0
	fmov fr4,@(r0,r15)
	mov 0x24,r0
	fmov fr4,@(r0,r15)
	mov 0x38,r0
	mov.l r12,@(0x34,r15)
	fmov fr3,@(r0,r15)
	mov 0x40,r0
	mov.l r3,@(0x3C,r15)
	mov.l r2,@(r0,r15)
	mov 0x44,r0
	mov.l r12,@(r0,r15)
	mov 0x48,r0
	mov.l @(0x54,PC),r3
	mov.l r12,@(r0,r15)
	mov.l @r15,r8
	jsr @r3
	mov r8,r4
	mov.l r0,@(0x4,r15)
	mova @(0x50,PC),r0
	mov.l @r15,r3
	mov.l @(0x48,PC),r2
	mov.l @(0x54,PC),r14
	mov.l r3,@r2
	fmov @r0,fr12
	mova @(0x48,PC),r0
	fmov @r0,fr13
	mova @(0x48,PC),r0
	mov.l @(0x4,r15),r3
	fmov @r0,fr15
	cmp/pl r3
	bt.s loc_8c02a5d2
	mov r12,r11
	bra loc_8c02a7b2
	nop

loc_8c02a5d2:
	mov.b @r8+,r13
	bsr loc_8c02a400
	mov r13,r4
	tst r0,r0
	bt loc_8c02a614
	mov r12,r9
	bsr loc_8c02a464
	mov r13,r4
	mov r0,r4
	bra loc_8c02a620
	mov r9,r13

;###############################################
	#align4
	#data bank14.loc_8c149868
	#data 0x00008220
	#data bank14.loc_8c14986e
	#data 0x00008140
	#data 0x8c212bfc
	#data bank12.loc_8c1297c4
	#data 0x8c1f97a4
	#data 0x3fc00000
	#data 0x38d1b717
	#data 0x42000000
	#data 0x8c1f97a0

;----------------------------------------------
loc_8c02a614:
	mov.b @r8+,r4
	exts.b r13,r9
	add 0x01,r11
	mov 0x01,r13
	shll8 r9
	extu.b r4,r4

loc_8c02a620:
	mov.w @(0x160,PC),r2
	mov r13,r3
	mov.l @r14,r0
	shll2 r3
	mov.l r3,@r15
	mov r10,r6
	add r0,r2
	mov r13,r5
	add r2,r3
	mov.l @r3,r1
	mov 0x30,r0
	or r4,r9
	lds r1,fpul
	float fpul,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x2C,r0
	fmov fr3,@(r0,r15)
	bsr loc_8c02a298
	mov r9,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c02a704
	bsr loc_8c02a316
	nop
	mov r0,r4
	cmp/pz r4
	bt loc_8c02a65c
	bra loc_8c02a7b2
	nop

loc_8c02a65c:
	mov.l @r14,r0
	mov.w @(0x124,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov.w @(0x11C,PC),r1
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(0x116,PC),r2
	shll2 r3
	shll2 r3
	shll2 r3
	add r2,r0
	shll r3
	add r3,r0
	mov r4,r3
	shll r3
	mov.w r9,@(r0,r3)
	mov.l @r14,r0
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r1
	shll2 r3
	add r1,r3
	mov.w @(0xF6,PC),r1
	shll2 r3
	shll2 r3
	add r1,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r4),r2
	mov 0x02,r3
	or r3,r2
	mov.w @(0xE0,PC),r3
	mov.b r2,@(r0,r4)
	mov.l @r14,r0
	mov r0,r2
	add r2,r3
	mov.l @r3,r2
	mov r2,r3
	shll2 r2
	add r3,r2
	mov r1,r3
	shll2 r2
	shll2 r2
	add r3,r0
	mov.w @(0xC6,PC),r3
	shll2 r2
	add r2,r0
	mov.w @(0xC6,PC),r2
	mov.b @(r0,r4),r1
	and r2,r1
	mov.b r1,@(r0,r4)
	mov.l @r14,r0
	mov r0,r1
	add r1,r3
	mov.l @r3,r1
	mov r1,r3
	shll2 r1
	add r3,r1
	shll2 r1
	shll2 r1
	mov.w @(0xAE,PC),r3
	shll2 r1
	mov.w @(0xA2,PC),r2
	add r3,r0
	add r1,r0
	mov.b r13,@(r0,r4)
	mov.l @r14,r0
	mov r0,r1
	add r1,r2
	mov.l @r2,r1
	mov r1,r2
	shll2 r1
	add r2,r1
	mov.w @(0x96,PC),r2
	shll2 r1
	shll2 r1
	add r2,r0
	shll2 r1
	add r1,r0
	mov.b r10,@(r0,r4)

loc_8c02a704:
	mov.l @r14,r0
	mov.w @(0x7C,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(0x72,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r4),r1
	mov 0x01,r3
	or r3,r1
	mov.w @(0x68,PC),r3
	mov.b r1,@(r0,r4)
	mov.w @(0x58,PC),r1
	mov.l @r14,r0
	mov.l @(r0,r1),r0
	mov r0,r1
	shll2 r0
	add r1,r0
	shll2 r0
	shll2 r0
	shll2 r0
	add r4,r0
	add r3,r0
	mov.l r0,@(0xC,r15)
	mov 0x10,r0
	lds r11,fpul
	tst r13,r13
	fmov fr14,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mov 0x18,r0
	float fpul,fr3
	fmov fr13,fr0
	mov.w @(0x2C,PC),r2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	mov.l @r14,r1
	mov.l @r15,r0
	add r2,r1
	add r0,r1
	mov.l @r1,r2
	lds r2,fpul
	float fpul,fr3
	fmov fr3,fr5
	fmov fr3,fr4
	bf.s loc_8c02a794
	fdiv fr15,fr5
	fmov fr4,fr6
	fdiv fr12,fr6
	mov 0x1C,r0
	fmov fr6,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x20,r0
	fmov fr5,@(r0,r15)
	bra loc_8c02a79e
	fadd fr6,fr14

;###############################################
	#data 0x1488
	#data 0x14b0
	#data 0x0800
	#data 0x0d00
	#data 0x00fb
	#data 0x0f80
	#data 0x1200
	#data 0x0110

;----------------------------------------------
loc_8c02a794:
	fadd fr4,fr14
	mov 0x20,r0
	fmov fr5,@(r0,r15)
	mov 0x1C,r0
	fmov fr5,@(r0,r15)

loc_8c02a79e:
	mov.l @(0xCC,PC),r3
	mov r15,r4
	jsr @r3
	add 0x0C,r4
	mov.l @(0x4,r15),r2
	add 0x01,r11
	cmp/ge r2,r11
	bt loc_8c02a7b2
	bra loc_8c02a5d2
	nop

loc_8c02a7b2:
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
loc_8c02a7ce:
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
	add 0xA0,r15
	mov 0x08,r0
	fmov fr4,fr14
	fmov fr6,@(r0,r15)
	mov 0x10,r0
	mov.l r4,@r15
	mov 0xFF,r3
	mov.l @(0x78,PC),r4
	mov 0x25,r2
	fldi0 fr4
	mov 0x00,r13
	mov.l r5,@(0xC,r15)
	fmov @(r0,r4),fr3
	mov 0x14,r0
	fadd fr4,fr3
	fadd fr3,fr14
	fmov @(r0,r4),fr3
	mov 0x18,r0
	fadd fr4,fr3
	fadd fr3,fr5
	fldi1 fr3
	fmov fr5,@(r0,r15)
	mov 0x2C,r0
	fmov fr4,@(r0,r15)
	mov 0x28,r0
	fmov fr4,@(r0,r15)
	mov 0x3C,r0
	mov.l r13,@(0x38,r15)
	fmov fr3,@(r0,r15)
	mov 0x40,r0
	mov.l r3,@(r0,r15)
	mov 0x44,r0
	mov.l r2,@(r0,r15)
	mov 0x48,r0
	mov.l @(0x48,PC),r3
	mov.l r13,@(r0,r15)
	mov 0x4C,r0
	mov.l r13,@(r0,r15)
	mov.l @(0xC,r15),r8
	jsr @r3
	mov r8,r4
	mov.l r0,@(0x4,r15)
	mova @(0x3C,PC),r0
	fmov @r0,fr12
	mova @(0x3C,PC),r0
	fmov @r0,fr13
	mova @(0x3C,PC),r0
	mov.l @(0x4,r15),r3
	mov.l @(0x3C,PC),r14
	fmov @r0,fr15
	cmp/pl r3
	bt.s loc_8c02a854
	mov r13,r12
	bra loc_8c02aa28
	nop

loc_8c02a854:
	mov.b @r8+,r11
	bsr loc_8c02a400
	mov r11,r4
	tst r0,r0
	bt loc_8c02a888
	mov r13,r10
	bsr loc_8c02a464
	mov r11,r4
	mov r0,r4
	bra loc_8c02a894
	mov r10,r9

;###############################################
	#align4
	#data bank12.loc_8c1244b0
	#data 0x8c212bfc
	#data bank12.loc_8c1297c4
	#data 0xbe4ccccd
	#data 0x3f000000
	#data 0x42000000
	#data 0x8c1f97a0

;----------------------------------------------
loc_8c02a888:
	mov.b @r8+,r4
	exts.b r11,r10
	add 0x01,r12
	mov 0x01,r9
	shll8 r10
	extu.b r4,r4

loc_8c02a894:
	mov.w @(0x158,PC),r0
	mov r10,r11
	mov.l @r14,r3
	mov 0x00,r5
	or r4,r11
	mov.l @(r0,r3),r2
	mov 0x34,r0
	lds r2,fpul
	float fpul,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x30,r0
	fmov fr3,@(r0,r15)
	mov.l @r15,r6
	bsr loc_8c02a298
	mov r11,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c02a972
	bsr loc_8c02a316
	nop
	mov r0,r4
	cmp/pz r4
	bt loc_8c02a8c8
	bra loc_8c02aa28
	nop

loc_8c02a8c8:
	mov.l @r14,r0
	mov.w @(0x124,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov.w @(0x11C,PC),r1
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(0x116,PC),r2
	shll2 r3
	shll2 r3
	shll2 r3
	add r2,r0
	shll r3
	add r3,r0
	mov r4,r3
	shll r3
	mov.w r11,@(r0,r3)
	mov.l @r14,r0
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r1
	shll2 r3
	add r1,r3
	mov.w @(0xF6,PC),r1
	shll2 r3
	shll2 r3
	add r1,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r4),r2
	mov 0x02,r3
	or r3,r2
	mov.w @(0xE0,PC),r3
	mov.b r2,@(r0,r4)
	mov.l @r14,r0
	mov r0,r2
	add r2,r3
	mov.l @r3,r2
	mov r2,r3
	shll2 r2
	add r3,r2
	mov r1,r3
	shll2 r2
	shll2 r2
	add r3,r0
	mov.w @(0xC6,PC),r3
	shll2 r2
	add r2,r0
	mov.w @(0xC6,PC),r2
	mov.b @(r0,r4),r1
	and r2,r1
	mov.b r1,@(r0,r4)
	mov.l @r14,r0
	mov r0,r1
	add r1,r3
	mov.l @r3,r1
	mov r1,r3
	shll2 r1
	add r3,r1
	shll2 r1
	shll2 r1
	mov.w @(0xAE,PC),r3
	shll2 r1
	mov.w @(0xA2,PC),r2
	add r3,r0
	add r1,r0
	mov.b r13,@(r0,r4)
	mov.l @r14,r0
	mov r0,r1
	add r1,r2
	mov.l @r2,r1
	mov r1,r2
	shll2 r1
	add r2,r1
	mov.w @(0x96,PC),r2
	shll2 r1
	shll2 r1
	add r2,r0
	shll2 r1
	add r1,r0
	mov.l @r15,r1
	mov.b r1,@(r0,r4)

loc_8c02a972:
	mov.l @r14,r0
	mov.w @(0x7A,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(0x70,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r4),r1
	mov 0x01,r3
	or r3,r1
	mov.w @(0x66,PC),r3
	mov.b r1,@(r0,r4)
	mov.w @(0x56,PC),r1
	mov.l @r14,r0
	mov.l @(r0,r1),r0
	mov r0,r1
	shll2 r0
	add r1,r0
	shll2 r0
	shll2 r0
	shll2 r0
	add r4,r0
	add r3,r0
	mov.l r0,@(0x10,r15)
	mov 0x14,r0
	lds r12,fpul
	tst r9,r9
	fmov fr14,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mova @(0x40,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x1C,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(0x24,PC),r0
	mov.l @r14,r1
	mov.l @(r0,r1),r0
	lds r0,fpul
	float fpul,fr3
	fmov fr3,fr5
	fmov fr3,fr4
	bf.s loc_8c02aa04
	fdiv fr15,fr5
	fmov fr4,fr6
	fmul fr13,fr6
	mov 0x20,r0
	fmov fr6,fr3
	fdiv fr15,fr3
	fadd fr12,fr6
	fmov fr3,@(r0,r15)
	mov 0x24,r0
	fmov fr5,@(r0,r15)
	bra loc_8c02aa14
	fadd fr6,fr14

;###############################################
	#data 0x1488
	#data 0x14b0
	#data 0x0800
	#data 0x0d00
	#data 0x00fb
	#data 0x0f80
	#data 0x1200
	#data 0x0110
	#data 0xb717
	#data 0x38d1

;----------------------------------------------
loc_8c02aa04:
	mov 0x24,r0
	fmov fr5,@(r0,r15)
	mov 0x20,r0
	fmov fr5,@(r0,r15)
	mova @(0x11C,PC),r0
	fmov @r0,fr3
	fadd fr3,fr4
	fadd fr4,fr14

loc_8c02aa14:
	mov.l @(0x118,PC),r3
	mov r15,r4
	jsr @r3
	add 0x10,r4
	mov.l @(0x4,r15),r2
	add 0x01,r12
	cmp/ge r2,r12
	bt loc_8c02aa28
	bra loc_8c02a854
	nop

loc_8c02aa28:
	add 0x60,r15
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
loc_8c02aa44:
	mov.l @(0xEC,PC),r4
	mov.l @(0xF0,PC),r0
	mov.l @r4,r3
	mov.w @(0xDA,PC),r6
	mov.l @(r0,r3),r2
	add 0x01,r2
	mov.l r2,@(r0,r3)
	mov.l @r4,r3
	mov.l @(r0,r3),r2
	cmp/ge r6,r2
	bf loc_8c02aa62
	mov.l @r4,r1
	mov.l @(r0,r1),r3
	sub r6,r3
	mov.l r3,@(r0,r1)

loc_8c02aa62:
	mov.l @(0xD8,PC),r0
	mov.l @r4,r5
	mov.l @(r0,r5),r2
	add 0xF8,r0
	mov.l @(r0,r5),r3
	cmp/eq r2,r3
	bf loc_8c02aaaa
	mov.l @(0xC8,PC),r0
	mov.l @(r0,r5),r3
	mov.l @(r0,r5),r7
	add 0x01,r3
	mov.l r3,@(r0,r5)
	mov.l @r4,r2
	mov.l @(r0,r2),r3
	cmp/ge r6,r3
	bf loc_8c02aa8a
	mov.l @r4,r1
	mov.l @(r0,r1),r3
	sub r6,r3
	mov.l r3,@(r0,r1)

loc_8c02aa8a:
	mov.l @(0xB4,PC),r1
	mov.w @r1,r2
	tst r2,r2
	bt loc_8c02aaaa
	mov.l @(0xA0,PC),r0
	mov.l @r0,r2
	mov.l @(0xAC,PC),r0
	mov.l @(r0,r2),r3
	cmp/eq r3,r7
	bf loc_8c02aaaa
	mov.l @r4,r1
	mov.l @(0x98,PC),r0
	mov r1,r3
	mov.l @(r0,r3),r2
	add 0xFC,r0
	mov.l r2,@(r0,r1)

loc_8c02aaaa:
	rts
	nop

;==============================================
loc_8c02aaae:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov.l @(0x70,PC),r13
	mov r5,r10
	mov r4,r5
	mov.l r4,@r15
	mov.l @r13,r4
	mov r15,r11
	mov.l @(0x68,PC),r0
	mov r6,r12
	mov r4,r3
	mov.l @(0x74,PC),r9
	mov.l @(r0,r3),r2
	mov 0x00,r8
	mov.w @(0x4E,PC),r3
	add 0x04,r11
	shll2 r2
	add r3,r4
	shll r2
	jsr @r9
	add r2,r4
	mov.l @r13,r4
	mov r10,r5
	mov.l @(0x4C,PC),r0
	mov r4,r3
	mov.l @(0x5C,PC),r1
	mov.l @(r0,r3),r3
	add r1,r4
	mov r3,r2
	shll2 r3
	shll2 r3
	add r2,r3
	jsr @r9
	add r3,r4
	mov.l @r15,r3
	mov.l @(0x4C,PC),r14
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c02ab54
	jsr @r14
	mov r10,r4
	mov.l r0,@-r15
	jsr @r14
	mov r12,r4
	mov.l @r15+,r2
	add r2,r0
	add 0x08,r0
	mov.l r0,@r15
	jsr @r14
	mov r10,r4
	neg r0,r0
	mov r0,r4
	bra loc_8c02ab70
	add 0x1A,r4

;###############################################
	#data 0x2710
	#data 0x14b4
	#data 0xbecccccd
	#data bank12.loc_8c1244b0
	#data 0x8c1f97a0
	#data 0x000a74f4
	#data 0x000a74fc
	#data 0x8c21529c
	#data 0x000a74f8
	#data bank12.loc_8c1297b0
	#data 0x00014d34
	#data bank12.loc_8c1297c4

;----------------------------------------------
loc_8c02ab54:
	jsr @r14
	mov r10,r4
	mov.l r0,@-r15
	jsr @r14
	mov r12,r4
	mov.l @r15+,r2
	add r2,r0
	add 0x01,r0
	mov.l r0,@r15
	jsr @r14
	mov r10,r4
	neg r0,r0
	mov r0,r4
	add 0x21,r4

loc_8c02ab70:
	mov.l @r15,r2
	mov 0x22,r3
	cmp/gt r3,r2
	bf loc_8c02abde
	mov r4,r10
	mov r8,r14

loc_8c02ab7c:
	bsr loc_8c02a400
	mov.b @r12,r4
	tst r0,r0
	bf loc_8c02ab96
	mov r14,r3
	add 0x01,r3
	cmp/ge r10,r3
	bt loc_8c02aba4
	mov r14,r0
	nop
	mov.b @r12+,r3
	add 0x01,r14
	mov.b r3,@(r0,r11)

loc_8c02ab96:
	mov r14,r0
	nop
	mov.b @r12+,r3
	add 0x01,r14
	cmp/ge r10,r14
	mov.b r3,@(r0,r11)
	bf loc_8c02ab7c

loc_8c02aba4:
	mov r14,r0
	nop
	mov.b r8,@(r0,r11)
	mov 0x2B,r2
	mov.l @r13,r4
	mov r11,r5
	mov.l @(0x6C,PC),r0
	mov r4,r3
	mov.l @(0x6C,PC),r1
	mov.l @(r0,r3),r3
	add r1,r4
	mul.l r2,r3
	sts macl,r2
	jsr @r9
	add r2,r4
	bsr loc_8c02aa44
	nop
	mov.l @r13,r2
	mov.l @(0x54,PC),r0
	mov r2,r3
	mov.l @(r0,r3),r3
	mov r3,r1
	shll2 r3
	shll2 r3
	add r1,r3
	mov.l @(0x50,PC),r1
	add r1,r2
	add r2,r3
	mov.b r8,@r3

loc_8c02abde:
	mov.l @r13,r4
	mov 0x2B,r2
	mov.l @(0x3C,PC),r0
	mov r12,r5
	mov r4,r3
	mov.l @(0x38,PC),r1
	mov.l @(r0,r3),r3
	add r1,r4
	mul.l r2,r3
	sts macl,r2
	jsr @r9
	add r2,r4
	bsr loc_8c02aa44
	nop
	add 0x30,r15
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
loc_8c02ac0e:
	mov.l @(0x20,PC),r3
	mov 0x00,r5
	mov.w @(0x8,PC),r2
	mov.l @(0x1C,PC),r1
	mov.l @r3,r4
	mov.l @(0x10,PC),r6
	jmp @r1
	add r2,r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x14b4
	#align4
	#data 0x000a74f4
	#data 0x0003e544
	#data 0x00014d34
	#data 0x000a604c
	#data 0x8c1f97a0
	#data bank12.loc_8c129728

;==============================================
loc_8c02ac38:
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
	add 0xF0,r15
	mov.l @(0xC8,PC),r14
	mov 0x00,r11
	mov.w @(0xBA,PC),r0
	mov 0x12,r8
	mov.l @r14,r3
	mov.w @(0xB2,PC),r10
	mov.l @(r0,r3),r2
	mova @(0xBC,PC),r0
	lds r2,fpul
	mov.l @(0xC0,PC),r2
	float fpul,fr3
	fmov fr3,fr12
	fmov fr12,fr2
	fmov fr3,@r15
	fmov @r0,fr4
	mova @(0xB0,PC),r0
	fsub fr4,fr2
	fadd fr4,fr12
	fmov fr2,@r15
	mov.w @r2,r3
	tst r3,r3
	bt.s loc_8c02acea
	fmov @r0,fr13
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov 0x03,r4
	mov.w @(0x8C,PC),r2
	mov r0,r5
	extu.w r5,r4
	tst r4,r2
	bt loc_8c02acb4
	mov.l @r14,r1
	mov.l @(0x9C,PC),r0
	mov r1,r3
	mov.l @(r0,r3),r2
	add 0x04,r0
	mov.l @(r0,r1),r1
	cmp/eq r2,r1
	bt loc_8c02ad4c
	mov.l @(0x8C,PC),r0
	mov.l @r14,r4
	mov.l @(r0,r4),r4
	add 0xFF,r4
	cmp/pz r4
	bt.s loc_8c02acb0
	mov.l @r14,r2
	add r10,r4

loc_8c02acb0:
	bra loc_8c02ad4c
	mov.l r4,@(r0,r2)

loc_8c02acb4:
	mov.w @(0x60,PC),r2
	tst r2,r4
	bt loc_8c02ad4c
	mov.l @r14,r4
	mov.l @(0x70,PC),r0
	mov r4,r3
	mov.l @(r0,r3),r3
	add 0xFC,r0
	mov.l @(r0,r4),r4
	sub r3,r4
	cmp/pz r4
	bt loc_8c02acce
	add r10,r4

loc_8c02acce:
	cmp/gt r8,r4
	bf loc_8c02ad4c
	mov.l @(0x5C,PC),r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	add 0x01,r2
	mov.l r2,@(r0,r3)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	cmp/eq r10,r2
	bf loc_8c02ad4c
	mov.l @r14,r1
	bra loc_8c02ad4c
	mov.l r11,@(r0,r1)

loc_8c02acea:
	mov.l @r14,r4
	mov.l @(0x44,PC),r0
	mov r4,r3
	mov.l @(r0,r3),r3
	add 0xF8,r0
	mov.l @(r0,r4),r4
	sub r3,r4
	cmp/pz r4
	bt loc_8c02acfe
	add r10,r4

loc_8c02acfe:
	cmp/ge r8,r4
	bt loc_8c02ad38
	mov.l @r14,r3
	mov.l @(0x2C,PC),r0
	mov r3,r2
	mov.l @(r0,r2),r1
	add 0xFC,r0
	mov.l r1,@(r0,r3)
	bra loc_8c02ad4c
	nop

;###############################################
	#data 0x2710
	#data 0x1488
	#data 0x2000
	#data 0x1000
	#align4
	#data 0x8c1f97a0
	#data 0x3e4ccccd
	#data 0x41700000
	#data 0x8c21529c
	#data bank01.loc_8c01357a
	#data 0x000a74f8
	#data 0x000a74fc

;----------------------------------------------
loc_8c02ad38:
	mov.l @(0xB8,PC),r0
	mov.l @r14,r4
	mov.l @(r0,r4),r4
	add 0xEE,r4
	cmp/pz r4
	bt.s loc_8c02ad48
	mov.l @r14,r2
	add r10,r4

loc_8c02ad48:
	mov.l @(0xAC,PC),r0
	mov.l r4,@(r0,r2)

loc_8c02ad4c:
	fldi1 fr1
	fadd fr1,fr1
	mov.l @r14,r13
	mov r11,r12
	mov.l @(0xA0,PC),r0
	cmp/ge r8,r12
	fmov @r15,fr2
	mov.l @(r0,r13),r13
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x0C,r0
	fmul fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x08,r0
	fmov @r15,fr0
	fdiv fr1,fr0
	bf.s loc_8c02ad74
	fmov fr0,@(r0,r15)
	bra loc_8c02aec0
	nop

loc_8c02ad74:
	mova @(0x88,PC),r0
	fmov @r0,fr14

loc_8c02ad78:
	mova @(0x88,PC),r0
	mov r13,r2
	fmov @r0,fr15
	shll2 r2
	mov.l @(0x84,PC),r0
	shll2 r2
	mov.l @r14,r3
	mov r13,r1
	add r1,r2
	add r0,r3
	add r3,r2
	mov.b @r2,r1
	tst r1,r1
	bt loc_8c02ae54
	mov.l @r14,r2
	mov r13,r9
	mov.w @(0x56,PC),r3
	shll2 r9
	shll r9
	add r2,r3
	add r9,r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c02adc8
	lds r12,fpul
	mov 0x08,r4
	fmov fr12,fr0
	fmov fr14,fr5
	float fpul,fr3
	mov.w @(0x3C,PC),r3
	mov.l @r14,r5
	fmov fr13,fr6
	add r3,r5
	add r9,r5
	fmac fr0,fr3,fr5
	bsr loc_8c02a7ce
	fmov fr15,fr4
	mov 0x0C,r0
	fmov @(r0,r15),fr3
	fadd fr3,fr15

loc_8c02adc8:
	mov r13,r9
	shll2 r9
	shll2 r9
	mov r13,r3
	add r3,r9
	mov.l @(0x34,PC),r3
	mov.l @r14,r4
	mov.l @(0x38,PC),r2
	mov.l @(0x30,PC),r5
	add r3,r4
	jsr @r2
	add r9,r4
	tst r0,r0
	bf.s loc_8c02ae14
	fmov fr13,fr6
	mov.l @(0x20,PC),r3
	mov.l @r14,r5
	add r3,r5
	add r9,r5
	bra loc_8c02ae1e
	mov 0x07,r4

;###############################################
	#data 0x14b4
	#align4
	#data 0x000a74f4
	#data 0x000a74f8
	#data 0x40400000
	#data 0x42ae0000
	#data 0x42380000
	#data 0x00014d34
	#data 0x8c21384a
	#data bank12.loc_8c12979c

;----------------------------------------------
loc_8c02ae14:
	mov.l @(0xC4,PC),r3
	mov 0x09,r4
	mov.l @r14,r5
	add r3,r5
	add r9,r5

loc_8c02ae1e:
	lds r12,fpul
	fmov fr12,fr0
	fmov fr14,fr5
	float fpul,fr3
	fmac fr0,fr3,fr5
	bsr loc_8c02a7ce
	fmov fr15,fr4
	mov.l @(0xAC,PC),r3
	mov.l @r14,r4
	mov.l @(0xAC,PC),r2
	add r3,r4
	jsr @r2
	add r9,r4
	lds r0,fpul
	fldi0 fr2
	float fpul,fr3
	fcmp/gt fr3,fr2
	bf.s loc_8c02ae4a
	fmov fr3,fr4
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	fadd fr3,fr4

loc_8c02ae4a:
	fldi1 fr0
	fadd fr0,fr0
	fdiv fr0,fr4
	fmov @r15,fr0
	fmac fr0,fr4,fr15

loc_8c02ae54:
	lds r12,fpul
	mov 0x04,r0
	fmov fr12,fr0
	mov 0x06,r4
	fmov fr14,fr2
	float fpul,fr3
	mov.l @(0x84,PC),r5
	fmov fr13,fr6
	fmac fr0,fr3,fr2
	fmov fr2,fr5
	fmov fr2,@(r0,r15)
	bsr loc_8c02a7ce
	fmov fr15,fr4
	mov 0x2B,r9
	mov.l @(0x78,PC),r2
	mul.l r9,r13
	mov.l @r14,r3
	mov 0x08,r0
	fmov @(r0,r15),fr3
	add r3,r2
	sts macl,r9
	add r9,r2
	add 0x2A,r2
	mov.b r11,@r2
	mov.l @(0x68,PC),r2
	mov.w @r2,r3
	tst r3,r3
	bf.s loc_8c02ae9a
	fadd fr3,fr15
	mov.l @(0x5C,PC),r3
	mov.l @r14,r5
	add r3,r5
	add r9,r5
	bra loc_8c02aea4
	mov 0x06,r4

loc_8c02ae9a:
	mov.l @(0x50,PC),r3
	mov 0x08,r4
	mov.l @r14,r5
	add r3,r5
	add r9,r5

loc_8c02aea4:
	mov 0x04,r0
	fmov fr13,fr6
	fmov @(r0,r15),fr5
	bsr loc_8c02a7ce
	fmov fr15,fr4
	add 0x01,r13
	cmp/ge r10,r13
	bf.s loc_8c02aeb8
	add 0x01,r12
	mov r11,r13

loc_8c02aeb8:
	cmp/ge r8,r12
	bt loc_8c02aec0
	bra loc_8c02ad78
	nop

loc_8c02aec0:
	add 0x10,r15
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
	#align4
	#data 0x00014d34
	#data bank12.loc_8c1297c4
	#data 0x4f800000
	#data bank13.loc_8c1350c8
	#data 0x0003e544
	#data 0x8c21529c

;==============================================
loc_8c02aef4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xFC,r15
	mov.l @(0xE8,PC),r11
	mov 0x00,r5
	mov.l @r11,r3
	tst r3,r3
	bt.s loc_8c02afde
	mov r5,r12
	mov.l @(0xE0,PC),r2
	mov r5,r7
	mov.l @(0xE0,PC),r1
	mov 0x06,r4
	mov.w @r2,r3
	mov.l @(0xE0,PC),r13
	mov.w r3,@r1

loc_8c02af1e:
	mov r7,r14
	shll2 r14
	add r13,r14
	mov r5,r6
	mov r14,r10
	add 0x02,r14

loc_8c02af2a:
	mov.l @r11,r0
	mov.w @r10,r3
	mov r0,r2
	add 0x02,r2
	add r6,r2
	mov.b @r2,r1
	extu.w r3,r3
	extu.b r1,r1
	cmp/eq r1,r3
	bf loc_8c02af44
	mov.w @r14,r2
	bra loc_8c02af4a
	or r2,r12

loc_8c02af44:
	add 0x01,r6
	cmp/ge r4,r6
	bf loc_8c02af2a

loc_8c02af4a:
	add 0x01,r7
	cmp/ge r4,r7
	bf loc_8c02af1e
	mov.l @(0xA0,PC),r2
	mov 0x00,r7
	mov.l @(0xB0,PC),r11
	mov 0x00,r9
	mov.w r12,@r2
	add r13,r9
	mov.l @(0xA0,PC),r12
	add r11,r7
	mov.l @(0xA0,PC),r3
	mov 0x1E,r14
	mov r7,r10
	mov r5,r6
	mov.w r5,@r3
	mov r7,r8
	mov.w r5,@r12

loc_8c02af6e:
	mov.l @(0x84,PC),r2
	mov r6,r7
	shll2 r7
	mov.w @r2,r3
	add r13,r7
	extu.w r3,r3
	mov.l r3,@r15
	mov.l @(0x78,PC),r3
	mov.w @(0x2,r7),r0
	mov.w @r3,r1
	extu.w r0,r0
	extu.w r1,r1
	not r1,r1
	and r1,r0
	mov.l @r15,r1
	tst r1,r0
	bt loc_8c02af9a
	mov.w @r12,r3
	mov.w @(0x2,r7),r0
	or r0,r3
	bra loc_8c02afd2
	mov.w r3,@r12

loc_8c02af9a:
	mov.w @(0x2,r7),r0
	extu.w r0,r0
	tst r1,r0
	bt loc_8c02afd0
	mov r6,r0
	nop
	mov.b @(r0,r11),r3
	add 0x01,r3
	mov.b r3,@(r0,r11)
	extu.b r3,r3
	cmp/gt r14,r3
	bf loc_8c02afd2
	mov r6,r0
	nop
	mov.b @(r0,r11),r3
	mov 0x23,r2
	extu.b r3,r3
	cmp/gt r2,r3
	bf loc_8c02afd2
	mov.l @(0x40,PC),r3
	mov.b r14,@r10
	mov.w @r3,r1
	mov.w @(0x2,r9),r0
	or r0,r1
	mov.w r1,@r3
	bra loc_8c02afd2
	nop

loc_8c02afd0:
	mov.b r5,@r8

loc_8c02afd2:
	add 0x01,r6
	cmp/ge r4,r6
	add 0x04,r9
	add 0x01,r8
	bf.s loc_8c02af6e
	add 0x01,r10

loc_8c02afde:
	add 0x04,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x8c212bf0
	#data 0x8c212f04
	#data 0x8c212f06
	#data bank14.loc_8c1498c0
	#data 0x8c212f08
	#data 0x8c212f0a
	#data 0x8c1f9cc0

;==============================================
loc_8c02b00c:
	mov.l @(0x150,PC),r7
	mov 0x14,r0
	mov.l r14,@-r15
	mov 0x04,r6
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r10,@-r15
	mov 0x00,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w r6,@r7
	mov.w r0,@(0x4,r7)
	mov.w @(0x4,r4),r0
	mov r0,r3
	mov.w @(0x2,r4),r0
	and r3,r0
	mov.w r0,@(0x6,r7)
	mov.w @(0x4,r4),r0
	mov.w r0,@(0x8,r7)
	mov.w @(0x6,r7),r0
	extu.w r0,r0
	tst 0x08,r0
	bf.s loc_8c02b048
	mov 0x01,r14
	mov.w @(0x8,r7),r0
	mov.w @(0x11A,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c02b05c

loc_8c02b048:
	mov 0x17,r0
	mov.b r14,@(r0,r7)
	mov.w @(0x6,r7),r0
	or 0x08,r0
	mov.w r0,@(0x6,r7)
	mov 0x18,r0
	mov.b r14,@(r0,r7)
	mov 0x19,r0
	bra loc_8c02b07e
	mov.b r14,@(r0,r7)

loc_8c02b05c:
	mov 0x17,r0
	mov.b r10,@(r0,r7)
	mov.w @(0x6,r7),r0
	extu.w r0,r0
	tst 0x02,r0
	mov 0x18,r0
	movt r3
	mov.b r3,@(r0,r7)
	mov.w @(0x6,r7),r0
	extu.w r0,r0
	tst r6,r0
	bt.s loc_8c02b07a
	mov 0x19,r0
	bra loc_8c02b07c
	mov 0x01,r2

loc_8c02b07a:
	mov 0x00,r2

loc_8c02b07c:
	mov.b r2,@(r0,r7)

loc_8c02b07e:
	mov.b @(0xC,r4),r0
	mov r7,r1
	mov.l @(0xE0,PC),r5
	add 0x1C,r1
	extu.b r0,r0
	mov r0,r3
	shll2 r0
	shll r0
	mov r5,r2
	add r3,r0
	mov.l @(0xD4,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0xC,r4),r0
	mov r5,r2
	mov r7,r1
	add 0x28,r1
	extu.b r0,r0
	mov r0,r3
	shll2 r0
	shll r0
	add r3,r0
	mov.l @(0xB8,PC),r3
	shll2 r0
	add r0,r2
	add 0x0C,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0xC,r4),r0
	mov r5,r2
	mov r7,r1
	add 0x34,r1
	extu.b r0,r0
	mov r0,r3
	shll2 r0
	shll r0
	add r3,r0
	mov.l @(0x98,PC),r3
	shll2 r0
	add r0,r2
	add 0x18,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x90,PC),r5
	mov 0x10,r1
	mov 0x1C,r0
	add r5,r1
	fmov @(r0,r7),fr2
	fmov @r1,fr3
	mov 0x14,r1
	add r5,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r7)
	mov 0x20,r0
	fmov @(r0,r7),fr2
	fmov @r1,fr3
	mov 0x10,r1
	add r5,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r7)
	mov 0x28,r0
	fmov @(r0,r7),fr2
	fmov @r1,fr3
	mov 0x14,r1
	add r5,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r7)
	mov 0x2C,r0
	fmov @(r0,r7),fr2
	fmov @r1,fr3
	mov 0x10,r1
	add r5,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r7)
	mov 0x34,r0
	fmov @(r0,r7),fr2
	fmov @r1,fr3
	mov 0x14,r1
	add r5,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r7)
	mov 0x38,r0
	fmov @(r0,r7),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r7)
	mov r10,r0
	nop
	mov.w r0,@(0x2,r7)
	mov 0x1A,r0
	mov.l @(0x38,PC),r3
	mov 0x06,r12
	mov.b r6,@(r0,r7)
	mov 0x16,r0
	mov.l @(0x34,PC),r1
	mov r10,r5
	mov.b r14,@(r0,r7)
	mov.b r10,@r3

loc_8c02b146:
	mov.l @r1,r13
	mov r7,r6
	add 0x0A,r6
	tst r13,r13
	bt.s loc_8c02b178
	add r5,r6
	mov r13,r3
	add 0x02,r3
	add r5,r3
	mov.b @r3,r2
	bra loc_8c02b17c
	mov.b r2,@r6

;###############################################
	#data 0x0100
	#align4
	#data 0x8c1f9b94
	#data bank14.loc_8c149878
	#data bank12.loc_8c1294c8
	#data 0x8c212bfc
	#data bank14.loc_8c149874
	#data 0x8c212bf0

;----------------------------------------------
loc_8c02b178:
	mov.b r10,@r6
	mov.b r14,@(r0,r7)

loc_8c02b17c:
	mov r7,r3
	add 0x10,r3
	add r5,r3
	add 0x01,r5
	cmp/ge r12,r5
	bf.s loc_8c02b146
	mov.b r10,@r3
	mov.w @r4,r3
	mov.l @(0xF0,PC),r13
	mov.w r3,@r13
	mov.l @(0x8,r4),r2
	mov.l r2,@(0x10,r13)
	mov r10,r0
	nop
	mov.w r0,@(0x2,r13)
	mov.w r0,@(0x4,r13)
	mov 0x63,r0
	mov.w r0,@(0x6,r13)
	mov r10,r0
	nop
	mov.w r0,@(0xC,r13)
	mov.w @(0xCC,PC),r0
	mov.b r10,@(r0,r13)
	mov r10,r0
	nop
	mov.w r0,@(0xE,r13)
	mov.w @(0xC4,PC),r0
	mov.b r10,@(r0,r13)
	add 0x01,r0
	mov.b r10,@(r0,r13)
	mov.w @(0xBE,PC),r0
	mov.b r10,@(r0,r13)
	mov.l @(0x8,r4),r3
	tst r3,r3
	bt loc_8c02b260
	mov.l @(0x8,r4),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02b1ec
	mov.w @(0xAE,PC),r5
	mov r10,r4

loc_8c02b1ce:
	mov r13,r3
	mov r13,r2
	add 0x14,r3
	add 0x14,r2
	add r4,r3
	add r4,r2
	mov.b r10,@r3
	mov r10,r0
	nop
	add 0x04,r4
	cmp/hs r5,r4
	bf.s loc_8c02b1ce
	mov.w r0,@(0x2,r2)
	bra loc_8c02b260
	nop

loc_8c02b1ec:
	mov r10,r6
	mov 0x11,r8
	mov.l @(0x8,r4),r14
	mov r10,r7
	mov r8,r10
	mov 0x12,r9
	bra loc_8c02b244
	add 0x6F,r10

loc_8c02b1fc:
	extu.b r5,r1
	mov r7,r12
	mov r1,r2
	tst r10,r2
	bf.s loc_8c02b21e
	shll2 r12
	mov r13,r3
	mov r13,r1
	add 0x14,r1
	add 0x14,r3
	add r12,r3
	extu.b r5,r0
	add r12,r1
	mov.b r8,@r1
	mov.w r0,@(0x2,r3)
	bra loc_8c02b242
	add 0x01,r6

loc_8c02b21e:
	mov.w @r4,r2
	extu.b r6,r3
	add 0xFE,r2
	cmp/gt r2,r3
	bt.s loc_8c02b254
	mov.b @r14+,r5
	mov r13,r2
	mov r13,r3
	add 0x14,r2
	extu.b r5,r0
	shll8 r1
	add 0x14,r3
	or r1,r0
	add r12,r3
	add r12,r2
	mov.b r9,@r3
	add 0x02,r6
	mov.w r0,@(0x2,r2)

loc_8c02b242:
	add 0x01,r7

loc_8c02b244:
	mov.b @r14+,r5
	extu.b r5,r3
	tst r3,r3
	bt loc_8c02b254
	mov.w @r4,r3
	extu.b r6,r1
	cmp/ge r3,r1
	bf loc_8c02b1fc

loc_8c02b254:
	mov r7,r0
	nop
	mov.w r0,@(0x2,r13)
	mov.w r0,@(0x4,r13)
	extu.b r6,r0
	mov.w r0,@(0xE,r13)

loc_8c02b260:
	bsr loc_8c02b288
	nop
	lds.l @r15+,pr
	mov.l @(0x1C,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0348
	#data 0x0155
	#data 0x0347
	#data 0x0140
	#align4
	#data 0x8c1f97a8
	#data 0x0cd004c2

;==============================================
loc_8c02b288:
	mov.l r14,@-r15
	mov 0x00,r7
	mov.l r13,@-r15
	mov r7,r5
	mov.l r12,@-r15
	mov r7,r6
	mov.l r10,@-r15
	mov r7,r4
	mov.l r9,@-r15
	mov 0x0F,r9
	mov.l @(0x108,PC),r12
	mov 0x01,r10
	mov.l r8,@-r15
	mov 0x4B,r8
	mov.l @(0xFC,PC),r13

loc_8c02b2a6:
	mov.b @r12,r2
	mov r5,r14
	mov r5,r3
	shll r14
	extu.b r2,r2
	cmp/eq r2,r5
	add r3,r14
	bf loc_8c02b2d8
	mov r13,r2
	mov.b @(0x1,r12),r0
	add 0x0A,r2
	mov r12,r1
	add r14,r2
	mov r13,r3
	add 0x02,r1
	mov.b r0,@r2
	add 0x0A,r3
	mov.b @r1,r0
	add r14,r3
	mov.b r0,@(0x2,r3)
	mov.b @r1,r3
	extu.b r3,r3
	add r3,r4
	bra loc_8c02b2ee
	add 0x03,r12

loc_8c02b2d8:
	mov r13,r3
	mov r13,r2
	add 0x0A,r3
	add 0x0A,r2
	add r14,r3
	add r14,r2
	mov.b r4,@r3
	mov r10,r0
	nop
	add 0x01,r4
	mov.b r0,@(0x2,r2)

loc_8c02b2ee:
	mov r13,r3
	add 0x0A,r3
	add r14,r3
	mov r6,r0
	nop
	cmp/ge r9,r4
	mov.b r0,@(0x1,r3)
	bf.s loc_8c02b304
	add 0x01,r5
	add 0x01,r6
	mov r7,r4

loc_8c02b304:
	cmp/ge r8,r5
	bf loc_8c02b2a6
	mov.l @(0x98,PC),r4
	mov r7,r0
	nop
	mov.b r0,@(0x2,r4)
	mov.b r0,@r4
	mov.b r0,@(0x3,r4)
	mov.b r0,@(0x1,r4)
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x4,r4)
	mov 0x63,r0
	mov.b r0,@(0x6,r4)
	mov r7,r0
	nop
	mov.b r0,@(0x7,r4)
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02b332:
	mov.l r14,@-r15
	mov 0x16,r0
	mov.l r13,@-r15
	mov.l @(0x70,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x00,r11
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c02b35e
	mov r11,r14
	mov.l @(0x64,PC),r3
	jsr @r3
	mov 0x03,r4
	mov.w @(0x4C,PC),r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c02b35e
	mov 0x16,r0
	mov 0x01,r1
	mov.b r1,@(r0,r13)

loc_8c02b35e:
	mov.l @(0x54,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c02b36c
	bsr loc_8c02b4d0
	nop
	mov r0,r14

loc_8c02b36c:
	mov 0x16,r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c02b3c6
	mov.l @(0x40,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c02b3c0
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov 0x39,r4
	mov.l @(0x20,PC),r4
	mov r11,r0
	nop
	mov.b r0,@(0x2,r4)
	mov.b r0,@r4
	mov.b r0,@(0x3,r4)
	mov.b r0,@(0x1,r4)
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x4,r4)
	mov 0x63,r0
	mov.b r0,@(0x6,r4)
	mov r11,r0
	nop
	bra loc_8c02b3c6
	mov.b r0,@(0x7,r4)

;###############################################
	#data 0x3ff0
	#align4
	#data 0x8c1f9bd4
	#data bank14.loc_8c1498d8
	#data 0x8c1f9b94
	#data loc_8c02d1c0
	#data 0x8c212bf0
	#data bank14.loc_8c149874
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c02b3c0:
	bsr loc_8c02b882
	nop
	mov r0,r14

loc_8c02b3c6:
	mov 0x16,r0
	mov.l @(0xD0,PC),r2
	mov.b @(r0,r13),r3
	mov.l @(0xD0,PC),r12
	mov.b r3,@r2
	mov.l @(0xD0,PC),r3
	jsr @r3
	nop
	cmp/pz r0
	bf.s loc_8c02b41c
	mov r0,r4
	mov.w @(0xB8,PC),r0
	mov 0x10,r7
	mov.b r11,@(r0,r12)
	bra loc_8c02b416
	mov 0x02,r6

loc_8c02b3e6:
	mov r12,r2
	mov r4,r5
	add 0x14,r2
	shll2 r5
	add r5,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r7,r3
	bf loc_8c02b41c
	mov.w @(0x9C,PC),r0
	mov r12,r2
	add 0x14,r2
	mov.b @(r0,r12),r3
	add r2,r5
	add 0x01,r3
	mov.b r3,@(r0,r12)
	mov.b @r5,r3
	extu.b r3,r3
	tst r6,r3
	bt.s loc_8c02b416
	add 0x01,r4
	mov.b @(r0,r12),r3
	add 0x01,r3
	mov.b r3,@(r0,r12)

loc_8c02b416:
	mov.w @(0x2,r12),r0
	cmp/ge r0,r4
	bf loc_8c02b3e6

loc_8c02b41c:
	mov.l @(0x80,PC),r4
	mov 0x01,r6
	mov.l @(0x84,PC),r2
	mov.w @(0x74,PC),r5
	jsr @r2
	add r12,r5
	tst r14,r14
	bf loc_8c02b468
	mova @(0x80,PC),r0
	mov.l @(0x84,PC),r3
	fmov @r0,fr3
	mov 0x24,r0
	fmov @(r0,r13),fr6
	mov 0x20,r0
	fmov @(r0,r13),fr1
	mova @(0x7C,PC),r0
	fmov @r3,fr2
	fadd fr3,fr6
	mov.l @(0x78,PC),r2
	fsub fr2,fr1
	fmov @r0,fr2
	mov 0x1C,r0
	mov.w @(0x4E,PC),r5
	fmov @(r0,r13),fr0
	mova @(0x70,PC),r0
	mov.l @(0x74,PC),r1
	add r12,r5
	fmov fr1,fr5
	fadd fr2,fr5
	fmov @r2,fr1
	mov.l @(0x50,PC),r4
	fsub fr1,fr0
	fmov @r0,fr1
	fmov fr0,fr4
	jsr @r1
	fadd fr1,fr4
	bra loc_8c02b480
	nop

loc_8c02b468:
	mov.l @(0x10,r12),r5
	tst r5,r5
	bt loc_8c02b480
	mov.l @(0x38,PC),r3
	mov.l @(0x2C,PC),r4
	jsr @r3
	mov 0x00,r6
	mov.l @(0x10,r12),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c02b480
	mov 0xFF,r14

loc_8c02b480:
	mov.l @(0x48,PC),r3
	mov.l @(0x44,PC),r4
	jsr @r3
	nop
	mov r14,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0347
	#data 0x0348
	#align4
	#data bank14.loc_8c149874
	#data 0x8c1f97a8
	#data loc_8c02d14e
	#data loc_8c02c924
	#data 0xff000000
	#data 0xbdcccccd
	#data 0x8c212c10
	#data 0x40c00000
	#data 0x8c212c0c
	#data 0x41000000
	#data loc_8c02a53a
	#data loc_8c02d214
	#data bank03.loc_8c0395ac

;==============================================
loc_8c02b4d0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x168,PC),r8
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x00,r4
	mov.l @r15,r3
	add r8,r5
	mov.b @r5,r5
	mov.b @(0x2,r3),r0
	extu.b r5,r5
	extu.b r0,r0
	cmp/eq r5,r0
	bf.s loc_8c02b502
	mov 0x01,r10
	tst r5,r5
	bt loc_8c02b502
	mov r10,r4

loc_8c02b502:
	tst r4,r4
	bt loc_8c02b50c
	mov.w @(0x2,r8),r0
	bra loc_8c02b50e
	add 0x01,r0

loc_8c02b50c:
	mov 0x00,r0

loc_8c02b50e:
	mov.l @(0x140,PC),r11
	mov 0x00,r14
	mov 0x00,r13
	mov.w r0,@(0x2,r8)
	mov 0x04,r12
	mov 0x06,r9

loc_8c02b51a:
	mov r8,r3
	add 0x10,r3
	mov 0x00,r2
	add r14,r3
	mov 0x00,r4
	mov.b r2,@r3

loc_8c02b526:
	mov.l @r15,r0
	mov r8,r3
	add 0x0A,r3
	mov r0,r5
	add 0x02,r5
	add r14,r5
	add r4,r3
	mov.b @r5,r5
	mov.b @r3,r2
	extu.b r5,r5
	extu.b r2,r2
	cmp/eq r5,r2
	bf loc_8c02b548
	mov r5,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c02b54e

loc_8c02b548:
	add 0x01,r4
	cmp/ge r9,r4
	bf loc_8c02b526

loc_8c02b54e:
	mov r4,r0
	nop
	cmp/eq 0x06,r0
	bf loc_8c02b584
	mov r8,r3
	add 0x10,r3
	mov r13,r2
	add r3,r2
	mov.l @r15,r3
	mov 0x16,r0
	add 0x02,r3
	add r14,r3
	mov.b @r3,r1
	mov 0x00,r3
	mov.b r1,@r2
	mov.b r3,@(r0,r8)
	mov.b @r11,r2
	tst r2,r2
	bt.s loc_8c02b584
	add 0x01,r13
	mov.w @(0x8,r8),r0
	extu.w r0,r0
	tst r12,r0
	bt loc_8c02b584
	mov 0x19,r0
	bsr loc_8c02b7cc
	mov.b r10,@(r0,r8)

loc_8c02b584:
	add 0x01,r14
	cmp/ge r9,r14
	bf loc_8c02b51a
	bsr loc_8c02b5c2
	mov.l @r15,r4
	mov 0x00,r4
	mov r0,r5

loc_8c02b592:
	mov.l @r15,r0
	mov r8,r2
	add 0x0A,r2
	mov r0,r3
	add 0x02,r3
	add r4,r3
	add r4,r2
	mov.b @r3,r1
	add 0x01,r4
	cmp/ge r9,r4
	bf.s loc_8c02b592
	mov.b r1,@r2
	mov r5,r0
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

;==============================================
loc_8c02b5c2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x00,r11
	mov.l r10,@-r15
	mov r11,r14
	sts.l pr,@-r15
	mov.b @r13,r4
	mov.l @(0x74,PC),r12
	extu.b r4,r0
	cmp/eq 0x22,r0
	bt.s loc_8c02b5f0
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x20,r0
	bt loc_8c02b5f0
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c02b5f6

loc_8c02b5f0:
	mov.w @(0x6,r12),r0
	bra loc_8c02b5fc
	or 0x10,r0

loc_8c02b5f6:
	mov.w @(0x6,r12),r0
	mov.l @(0x58,PC),r3
	and r3,r0

loc_8c02b5fc:
	mov.w r0,@(0x6,r12)
	mov.b @r13,r4
	extu.b r4,r0
	cmp/eq 0x44,r0
	bt.s loc_8c02b618
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x40,r0
	bt loc_8c02b618
	mov r4,r0
	nop
	cmp/eq 0x04,r0
	bf loc_8c02b61e

loc_8c02b618:
	mov.w @(0x6,r12),r0
	bra loc_8c02b624
	or 0x20,r0

loc_8c02b61e:
	mov.w @(0x6,r12),r0
	mov.l @(0x34,PC),r3
	and r3,r0

loc_8c02b624:
	mov.w r0,@(0x6,r12)
	mov 0x10,r4
	mov.w @(0x6,r12),r0
	extu.w r0,r0
	mov r0,r5
	and r4,r5
	tst r5,r5
	bt loc_8c02b65c
	mov r12,r0
	nop
	add 0x10,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x39,r0
	bf loc_8c02b65c
	mov.w @(0x6,r12),r0
	xor 0x40,r0
	bra loc_8c02b676
	mov.w r0,@(0x6,r12)

;###############################################
	#align4
	#data 0x8c1f9b94
	#data bank14.loc_8c149874
	#data 0x0000ffef
	#data 0x0000ffdf

;----------------------------------------------
loc_8c02b65c:
	tst r5,r5
	bf loc_8c02b676
	mov.l @(0xC0,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x39,r0
	bf loc_8c02b676
	mov.l @(0xBC,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c02b676
	mov 0x18,r0
	mov.b r11,@(r0,r12)

loc_8c02b676:
	mov r12,r0
	nop
	add 0x10,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x49,r0
	bf loc_8c02b68a
	mov.w @(0x6,r12),r0
	xor 0x80,r0
	mov.w r0,@(0x6,r12)

loc_8c02b68a:
	mov.l @(0x8,r13),r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c02b744
	mov.l @(0x94,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x08,r0
	bt loc_8c02b744
	mov r12,r0
	nop
	add 0x10,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x35,r0
	bf.s loc_8c02b6da
	mov 0x01,r6
	mov.w @(0x8,r12),r0
	mov.w @(0x6C,PC),r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c02b6da
	mov 0x17,r0
	mov.b @(r0,r12),r2
	mov 0x01,r3
	xor r3,r2
	mov.b r2,@(r0,r12)
	extu.b r2,r2
	tst r2,r2
	bt loc_8c02b6d2
	mov 0x19,r0
	mov.b r6,@(r0,r12)
	mov 0x18,r0
	bra loc_8c02b6da
	mov.b r6,@(r0,r12)

loc_8c02b6d2:
	mov 0x19,r0
	mov.b r11,@(r0,r12)
	mov 0x18,r0
	mov.b r11,@(r0,r12)

loc_8c02b6da:
	mov 0x17,r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c02b744
	mov.w @(0x6,r12),r0
	mov 0x20,r3
	extu.w r0,r5
	tst r5,r3
	bt loc_8c02b704
	mov r12,r1
	add 0x10,r1
	mov.b @r1,r3
	mov.w @(0x2C,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c02b704
	mov 0x19,r0
	mov.b @(r0,r12),r2
	mov 0x01,r3
	bra loc_8c02b71c
	xor r3,r2

loc_8c02b704:
	mov r5,r0
	nop
	tst r4,r0
	bt loc_8c02b730
	mov.l @(0x14,PC),r2
	mov.w @(0x10,PC),r1
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r1,r3
	bf loc_8c02b730
	mov 0x18,r0
	mov 0x02,r2

loc_8c02b71c:
	bra loc_8c02b744
	mov.b r2,@(r0,r12)

;###############################################
	#data 0x0100
	#data 0x0088
	#align4
	#data 0x8c1f9ba4
	#data 0x8c1f9bab
	#data 0x8c1f9b9c

;----------------------------------------------
loc_8c02b730:
	tst r4,r5
	bf loc_8c02b744
	mov.l @(0xD8,PC),r3
	mov.w @(0xD4,PC),r1
	mov.b @r3,r2
	extu.b r2,r2
	cmp/eq r1,r2
	bf loc_8c02b744
	mov 0x18,r0
	mov.b r6,@(r0,r12)

loc_8c02b744:
	mov.w @(0x8,r12),r0
	mov r0,r3
	mov.w @(0x6,r12),r0
	and r3,r0
	bsr loc_8c02b7cc
	mov.w r0,@(0x6,r12)
	mov 0x0A,r4
	mov.b @(0x2,r13),r0
	add r12,r4
	mov.b @r4,r4
	extu.b r0,r0
	extu.b r4,r4
	cmp/eq r4,r0
	bf loc_8c02b790
	tst r4,r4
	bt loc_8c02b790
	mov.w @(0x2,r12),r0
	mov r0,r3
	mov.w @(0x4,r12),r0
	cmp/ge r0,r3
	bf loc_8c02b790
	mov.w @(0x2,r12),r0
	mov.w @r12,r3
	mov r0,r1
	mov r3,r0
	nop
	mov.l @(0x98,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c02b790
	mov.b @(0x2,r13),r0
	mov 0x00,r5
	bsr loc_8c02bb0c
	mov r0,r4
	bsr loc_8c02bd6c
	mov r0,r4
	mov r0,r14

loc_8c02b790:
	mov r11,r13
	mov 0x06,r10

loc_8c02b794:
	tst r14,r14
	bf loc_8c02b7b4
	mov.l @(0x74,PC),r0
	mov.b @(r0,r13),r2
	extu.b r2,r2
	tst r2,r2
	bt loc_8c02b7b4
	mov r12,r4
	add 0x10,r4
	add r13,r4
	mov 0x00,r5
	bsr loc_8c02bb0c
	mov.b @r4,r4
	bsr loc_8c02bd6c
	mov r0,r4
	mov r0,r14

loc_8c02b7b4:
	add 0x01,r13
	cmp/ge r10,r13
	bf loc_8c02b794
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
loc_8c02b7cc:
	mov.l @(0x48,PC),r4
	mov 0x17,r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c02b7f4
	mov.w @(0x6,r4),r0
	mov.l @(0x40,PC),r3
	mov.l @(0x40,PC),r2
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	or 0x02,r0
	jsr @r2
	mov.w r0,@(0x6,r4)
	cmp/pz r0
	bf loc_8c02b87c
	mov.l @(0x34,PC),r4
	bra loc_8c02bd6c
	lds.l @r15+,pr

loc_8c02b7f4:
	mov 0x18,r0
	mov.b @(r0,r4),r5
	extu.b r5,r3
	tst r3,r3
	bf loc_8c02b82c
	mov.w @(0x6,r4),r0
	mov.l @(0x24,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	or 0x0A,r0
	bra loc_8c02b87c
	mov.w r0,@(0x6,r4)

;###############################################
	#data 0x0088
	#align4
	#data 0x8c1f9ba4
	#data bank12.loc_8c1292d4
	#data 0x8c1f9b94
	#data 0x0000fff2
	#data loc_8c02d14e
	#data 0x000186a0
	#data 0x0000fffa

;----------------------------------------------
loc_8c02b82c:
	mov 0x19,r0
	mov.b @(r0,r4),r6
	extu.b r5,r0
	cmp/eq 0x01,r0
	bf loc_8c02b85a
	extu.b r6,r6
	tst r6,r6
	bt loc_8c02b84a
	mov.w @(0x6,r4),r0
	mov.l @(0xC4,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	bra loc_8c02b856
	or 0x06,r0

loc_8c02b84a:
	mov.w @(0x6,r4),r0
	mov.l @(0xB8,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	or 0x08,r0

loc_8c02b856:
	bra loc_8c02b87c
	mov.w r0,@(0x6,r4)

loc_8c02b85a:
	extu.b r6,r6
	tst r6,r6
	bt loc_8c02b86e
	mov.w @(0x6,r4),r0
	mov.l @(0xA8,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	bra loc_8c02b87a
	or 0x07,r0

loc_8c02b86e:
	mov.w @(0x6,r4),r0
	mov.l @(0x9C,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	or 0x09,r0

loc_8c02b87a:
	mov.w r0,@(0x6,r4)

loc_8c02b87c:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c02b882:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x84,PC),r3
	mov 0x00,r14
	mov.l @(0x7C,PC),r13
	jsr @r3
	mov 0x03,r4
	mov.w @(0x5C,PC),r2
	mov r0,r4
	extu.w r4,r11
	mov.l @(0x78,PC),r12
	tst r11,r2
	bf loc_8c02b8aa
	bra loc_8c02b9ba
	nop

loc_8c02b8aa:
	mov.b @r12,r0
	mov r11,r3
	mov.w @(0x4A,PC),r5
	mov r12,r6
	mov.b r0,@(0x2,r12)
	mov.b @(0x1,r12),r0
	tst r5,r3
	mov.w @(0x42,PC),r4
	mov.b r0,@(0x3,r12)
	bt.s loc_8c02b8c8
	add 0x01,r6
	mov.b @r6,r1
	add 0xFF,r1
	bra loc_8c02b8d4
	mov.b r1,@r6

loc_8c02b8c8:
	mov r11,r2
	tst r4,r2
	bt loc_8c02b8d4
	mov.b @r6,r1
	add 0x01,r1
	mov.b r1,@r6

loc_8c02b8d4:
	mov.b @(0x4,r12),r0
	mov r12,r10
	mov.w @(0x24,PC),r6
	mov r11,r2
	extu.b r0,r0
	mov r12,r7
	mov r0,r3
	shll r0
	tst r6,r2
	add r3,r0
	add 0x0A,r10
	bt.s loc_8c02b920
	add r0,r10
	mov.b @r10,r1
	mov.b r1,@r7
	mov.b @r12,r3
	add 0xFF,r3
	bra loc_8c02b92e
	mov.b r3,@r12

;###############################################
	#data 0x3c00
	#data 0x2000
	#data 0x1000
	#data 0x0800
	#align4
	#data 0x0000fff6
	#data 0x0000fff8
	#data 0x0000fff7
	#data 0x0000fff9
	#data bank04.loc_8c04257c
	#data loc_8c02d1c0
	#data 0x8c1f9bd4

;----------------------------------------------
loc_8c02b920:
	mov.w @(0xEA,PC),r1
	tst r11,r1
	bt loc_8c02b92e
	mov.b @r10,r3
	mov.b @(0x2,r10),r0
	add r3,r0
	mov.b r0,@r7

loc_8c02b92e:
	mov r12,r7
	mov.b @r7,r1
	mov.l @(0xDC,PC),r3
	add 0x0F,r1
	jsr @r3
	mov 0x0F,r0
	mov.b r0,@r7
	add 0x01,r7
	mov.b @r7,r1
	mov.l @(0xCC,PC),r3
	add 0x06,r1
	jsr @r3
	mov 0x06,r0
	mov r12,r2
	mov.b r0,@r7
	mov.l r2,@r15
	mov.b @(0x1,r2),r0
	tst r0,r0
	bf.s loc_8c02b984
	mov r12,r7
	mov.l @r15,r2
	mov.b @r2,r0
	cmp/eq 0x0A,r0
	bf loc_8c02b984
	tst r11,r5
	mov r12,r10
	bt.s loc_8c02b96c
	add 0x01,r10
	mov 0x05,r3
	bra loc_8c02b984
	mov.b r3,@r10

loc_8c02b96c:
	tst r11,r4
	bt loc_8c02b976
	mov 0x01,r2
	bra loc_8c02b984
	mov.b r2,@r10

loc_8c02b976:
	tst r11,r6
	bt loc_8c02b980
	mov 0x09,r3
	bra loc_8c02b984
	mov.b r3,@r7

loc_8c02b980:
	mov 0x0B,r1
	mov.b r1,@r7

loc_8c02b984:
	mov.b @(0x4,r12),r0
	mov r12,r5
	mov.b r0,@(0x5,r12)
	mov.l r5,@r15
	mov.b @(0x1,r5),r0
	mov.l @r15,r3
	mov r0,r5
	bsr loc_8c02baca
	mov.b @r3,r4
	mov.b r0,@(0x4,r12)
	mov.b @(0x2,r12),r0
	mov.b @r12,r3
	cmp/eq r0,r3
	bt.s loc_8c02b9b6
	mov 0x01,r4
	mov.b @(0x4,r12),r0
	mov r12,r2
	add 0x0A,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add r2,r0
	mov.b @r0,r3
	mov.b r3,@r12

loc_8c02b9b6:
	jsr @r13
	nop

loc_8c02b9ba:
	mov.l @(0x58,PC),r10
	mov.w @(0x6,r10),r0
	extu.w r0,r0
	tst 0x04,r0
	bt loc_8c02b9d4
	mov.w @(0x6,r10),r0
	mov 0x00,r2
	mov.l @(0x4C,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r10)
	mov 0x19,r0
	bsr loc_8c02b7cc
	mov.b r2,@(r0,r10)

loc_8c02b9d4:
	mov.b @(0x7,r12),r0
	tst r0,r0
	bt loc_8c02b9ea
	mov.b @(0x7,r12),r0
	add 0xFF,r0
	mov.b r0,@(0x7,r12)
	extu.b r0,r0
	tst r0,r0
	bf loc_8c02b9ea
	mov 0x63,r0
	mov.b r0,@(0x6,r12)

loc_8c02b9ea:
	mov 0x40,r3
	tst r11,r3
	bt loc_8c02ba1c
	mov.b @(0x4,r12),r0
	mov 0x01,r5
	mov.b r0,@(0x6,r12)
	mov 0x0A,r0
	mov.b r0,@(0x7,r12)
	mov.b @(0x4,r12),r0
	bsr loc_8c02bb0c
	mov r0,r4
	bsr loc_8c02bd6c
	mov r0,r4
	mov r0,r14
	tst r14,r14
	bf loc_8c02ba2e
	bra loc_8c02bab2
	nop

;###############################################
	#data 0x0400
	#align4
	#data bank12.loc_8c1292d4
	#data 0x8c1f9b94
	#data 0x0000fffb

;----------------------------------------------
loc_8c02ba1c:
	mov.w @(0xC0,PC),r3
	tst r11,r3
	bt loc_8c02ba36
	mov.l @(0xC4,PC),r4
	bsr loc_8c02bd6c
	nop
	mov r0,r14
	tst r14,r14
	bt loc_8c02bab2

loc_8c02ba2e:
	jsr @r13
	mov 0x02,r4
	bra loc_8c02bab6
	nop

loc_8c02ba36:
	mov 0x20,r2
	tst r11,r2
	bt loc_8c02ba42
	mov.l @(0xAC,PC),r4
	bra loc_8c02ba4a
	nop

loc_8c02ba42:
	mov.w @(0x9C,PC),r2
	tst r11,r2
	bt loc_8c02ba52
	mov.l @(0xA4,PC),r4

loc_8c02ba4a:
	bsr loc_8c02bd6c
	nop
	bra loc_8c02bab6
	mov r0,r14

loc_8c02ba52:
	mov.w @(0x8E,PC),r2
	tst r2,r11
	bt loc_8c02bab6
	mov 0x18,r0
	mov.b @(r0,r10),r4
	extu.b r4,r0
	cmp/eq 0x01,r0
	bf.s loc_8c02ba6e
	mov r0,r4
	mov.l @(0x8C,PC),r4
	bsr loc_8c02bd6c
	nop
	bra loc_8c02ba8a
	nop

loc_8c02ba6e:
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bt loc_8c02baaa
	tst r4,r4
	bf loc_8c02bab2
	mov.l @(0x7C,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x40,r0
	bf loc_8c02ba8e
	mov.l @(0x74,PC),r4
	bsr loc_8c02bd6c
	nop

loc_8c02ba8a:
	bra loc_8c02bab2
	mov r0,r14

loc_8c02ba8e:
	tst r4,r4
	bf loc_8c02bab2
	mov.l @(0x64,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c02bab2
	mov.w @(0x8,r10),r0
	extu.w r0,r0
	tst 0x08,r0
	bt loc_8c02baaa
	mov.l @(0x58,PC),r4
	bra loc_8c02baac
	nop

loc_8c02baaa:
	mov.l @(0x58,PC),r4

loc_8c02baac:
	bsr loc_8c02bd6c
	nop
	mov r0,r14

loc_8c02bab2:
	jsr @r13
	mov 0x04,r4

loc_8c02bab6:
	mov r14,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02baca:
	mov r5,r0
	nop
	shll2 r0
	mov.l @(0x34,PC),r2
	shll2 r0
	mov r5,r3
	sub r3,r0
	add r2,r0
	mov.b @(r0,r4),r0
	rts
	extu.b r0,r0

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0100
	#data 0x0200
	#data 0x0080
	#align4
	#data 0x000186a0
	#data 0x000186cb
	#data 0x000186cc
	#data 0x000186c7
	#data 0x8c1f9b9a
	#data 0x000186c9
	#data 0x000186c6
	#data 0x000186c8
	#data bank14.loc_8c1498f9

;==============================================
loc_8c02bb0c:
	mov.l @(0xBC,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x02,r0
	bt.s loc_8c02bb28
	mov r5,r13
	tst r13,r13
	bt loc_8c02bb44
	bra loc_8c02bb4c
	nop

loc_8c02bb28:
	tst r13,r13
	bf loc_8c02bb34
	bsr loc_8c02bcc6
	mov r14,r4
	bra loc_8c02bb38
	nop

loc_8c02bb34:
	bsr loc_8c02bd0c
	mov r14,r4

loc_8c02bb38:
	mov.l @(0x94,PC),r3
	mov r0,r4
	cmp/eq r3,r4
	bf loc_8c02bb54
	tst r13,r13
	bf loc_8c02bb4c

loc_8c02bb44:
	bsr loc_8c02bb8c
	mov r14,r4
	bra loc_8c02bb50
	nop

loc_8c02bb4c:
	bsr loc_8c02bc54
	mov r14,r4

loc_8c02bb50:
	bra loc_8c02bb80
	mov r0,r4

loc_8c02bb54:
	mov.l @(0x74,PC),r2
	mov.w @r2,r0
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c02bb80
	mov.l @(0x74,PC),r1
	cmp/ge r1,r4
	bf loc_8c02bb70
	mov.l @(0x70,PC),r0
	cmp/gt r0,r4
	bt loc_8c02bb70
	mov.w @(0x58,PC),r2
	bra loc_8c02bb80
	add r2,r4

loc_8c02bb70:
	mov.l @(0x68,PC),r1
	cmp/ge r1,r4
	bf loc_8c02bb80
	mov.l @(0x68,PC),r2
	cmp/gt r2,r4
	bt loc_8c02bb80
	mov.w @(0x48,PC),r1
	add r1,r4

loc_8c02bb80:
	mov r4,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02bb8c:
	mov.l @(0x3C,PC),r3
	mov 0x08,r2
	mov.l r14,@-r15
	mov 0x10,r6
	mov.w @r3,r14
	extu.b r4,r5
	extu.w r14,r14
	tst r14,r2
	bt.s loc_8c02bc18
	shll2 r5
	mov r14,r0
	nop
	tst r6,r0
	bt loc_8c02bbb4
	mov 0x40,r1
	tst r14,r1
	bt loc_8c02bbb4
	mov.l @(0x34,PC),r0
	bra loc_8c02bbc2
	nop

loc_8c02bbb4:
	mov r14,r2
	tst r6,r2
	bf loc_8c02bbec
	mov 0x40,r1
	tst r14,r1
	bt loc_8c02bbec
	mov.l @(0x24,PC),r0

loc_8c02bbc2:
	bra loc_8c02bc02
	mov.l @(r0,r5),r4

;###############################################
	#data 0x00a1
	#data 0x00a2
	#align4
	#data 0x8c1f9b9a
	#data 0x000186d1
	#data 0x0000829f
	#data 0x000082dd
	#data 0x000082de
	#data 0x000082f1
	#data bank14.loc_8c14aa08
	#data bank14.loc_8c14a7c8

;----------------------------------------------
loc_8c02bbec:
	mov r14,r2
	tst r6,r2
	bt loc_8c02bbfe
	mov 0x40,r1
	tst r14,r1
	bf loc_8c02bbfe
	mov.l @(0x134,PC),r0
	bra loc_8c02bc00
	nop

loc_8c02bbfe:
	mov.l @(0x134,PC),r0

loc_8c02bc00:
	mov.l @(r0,r5),r4

loc_8c02bc02:
	tst r4,r4
	bt loc_8c02bc18
	mov.b @r4,r0
	extu.b r0,r0
	shll8 r0
	mov r0,r3
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	or r3,r0
	rts
	mov.l @r15+,r14

loc_8c02bc18:
	mov r14,r2
	tst r6,r2
	bt loc_8c02bc2a
	mov 0x40,r1
	tst r14,r1
	bt loc_8c02bc2a
	mov.l @(0x110,PC),r0
	bra loc_8c02bc4e
	nop

loc_8c02bc2a:
	mov r14,r2
	tst r6,r2
	bf loc_8c02bc3c
	mov 0x40,r1
	tst r14,r1
	bt loc_8c02bc3c
	mov.l @(0x104,PC),r0
	bra loc_8c02bc4e
	nop

loc_8c02bc3c:
	tst r14,r6
	bt loc_8c02bc4c
	mov 0x40,r3
	tst r14,r3
	bf loc_8c02bc4c
	mov.l @(0xF8,PC),r0
	bra loc_8c02bc4e
	nop

loc_8c02bc4c:
	mov.l @(0xF4,PC),r0

loc_8c02bc4e:
	mov.l @(r0,r5),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02bc54:
	mov.l @(0xF0,PC),r3
	mov 0x08,r2
	mov.l r14,@-r15
	mov 0x10,r6
	mov.w @r3,r14
	extu.b r4,r5
	extu.w r14,r14
	tst r14,r2
	bt.s loc_8c02bca0
	shll2 r5
	mov r14,r4
	and r6,r4
	tst r4,r4
	bt loc_8c02bc76
	mov 0x40,r1
	tst r14,r1
	bt loc_8c02bc80

loc_8c02bc76:
	mov 0x40,r3
	tst r14,r3
	bt loc_8c02bc86
	tst r4,r4
	bf loc_8c02bc86

loc_8c02bc80:
	mov.l @(0xC8,PC),r0
	bra loc_8c02bc88
	nop

loc_8c02bc86:
	mov.l @(0xC8,PC),r0

loc_8c02bc88:
	mov.l @(r0,r5),r4
	tst r4,r4
	bt loc_8c02bca0
	mov.b @r4,r0
	extu.b r0,r0
	shll8 r0
	mov r0,r3
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	or r3,r0
	rts
	mov.l @r15+,r14

loc_8c02bca0:
	mov r14,r4
	and r6,r4
	tst r4,r4
	bt loc_8c02bcae
	mov 0x40,r3
	tst r14,r3
	bt loc_8c02bcb8

loc_8c02bcae:
	mov 0x40,r1
	tst r14,r1
	bt loc_8c02bcbe
	tst r4,r4
	bf loc_8c02bcbe

loc_8c02bcb8:
	mov.l @(0x98,PC),r0
	bra loc_8c02bcc0
	nop

loc_8c02bcbe:
	mov.l @(0x98,PC),r0

loc_8c02bcc0:
	mov.l @(r0,r5),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02bcc6:
	mov.l @(0x80,PC),r3
	mov 0x10,r6
	extu.b r4,r7
	mov.w @r3,r5
	extu.w r5,r5
	and r5,r6
	tst r6,r6
	bt.s loc_8c02bcde
	shll2 r7
	mov 0x40,r1
	tst r5,r1
	bt loc_8c02bce8

loc_8c02bcde:
	mov 0x40,r3
	tst r5,r3
	bt loc_8c02bcee
	tst r6,r6
	bf loc_8c02bcee

loc_8c02bce8:
	mov.l @(0x70,PC),r0
	bra loc_8c02bcf0
	nop

loc_8c02bcee:
	mov.l @(0x70,PC),r0

loc_8c02bcf0:
	mov.l @(r0,r7),r4
	tst r4,r4
	bt loc_8c02bd06
	mov.b @r4,r0
	extu.b r0,r0
	shll8 r0
	mov r0,r3
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	rts
	or r3,r0

loc_8c02bd06:
	mov.l @(0x5C,PC),r0
	rts
	nop

;==============================================
loc_8c02bd0c:
	mov.l @(0x58,PC),r0
	extu.b r4,r4
	shll2 r4
	mov.l @(r0,r4),r4
	tst r4,r4
	bt loc_8c02bd28
	mov.b @r4,r0
	extu.b r0,r0
	shll8 r0
	mov r0,r3
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	rts
	or r3,r0

loc_8c02bd28:
	mov.l @(0x38,PC),r0
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data bank14.loc_8c14a588
	#data bank14.loc_8c14a348
	#data bank14.loc_8c14a108
	#data bank14.loc_8c149ec8
	#data bank14.loc_8c149c88
	#data bank14.loc_8c149a48
	#data 0x8c1f9b9a
	#data bank14.loc_8c14b44c
	#data bank14.loc_8c14b320
	#data bank14.loc_8c14b1f4
	#data bank14.loc_8c14b0c8
	#data bank14.loc_8c14ae88
	#data bank14.loc_8c14ac48
	#data 0x000186d1
	#data bank14.loc_8c14b578

;==============================================
loc_8c02bd6c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0xF2,PC),r0
	add r0,r15
	mov.w @(0xF0,PC),r0
	mov r4,r11
	mov.l @(0xF4,PC),r3
	mov r15,r1
	mov.l @(0xEC,PC),r2
	jsr @r3
	add 0x50,r1
	mov.l @(0xEC,PC),r3
	mov r15,r1
	mov.l @(0xEC,PC),r2
	jsr @r3
	mov 0x50,r0
	mov.l @(0xEC,PC),r12
	mov 0x10,r10
	mov.l @(0xEC,PC),r1
	mov 0x08,r7
	mov.l @(0xEC,PC),r3
	mov 0x00,r14
	mov.w @(0x8,r12),r0
	mov 0x01,r13
	mov.w @r1,r4
	mov.b @r3,r5
	extu.w r0,r6
	mov.l @(0xE4,PC),r2
	mov.l @(0xD0,PC),r9
	mov r11,r0
	nop
	cmp/eq 0x00,r0
	bf.s loc_8c02bdc0
	mov.w @r2,r8
	bra loc_8c02c772
	nop

loc_8c02bdc0:
	mov.l @(0xD4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdca
	bra loc_8c02c012
	nop

loc_8c02bdca:
	mov.l @(0xD0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdd4
	bra loc_8c02c012
	nop

loc_8c02bdd4:
	mov.l @(0xAC,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdde
	bra loc_8c02c012
	nop

loc_8c02bdde:
	mov.l @(0xC0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bde8
	bra loc_8c02c160
	nop

loc_8c02bde8:
	mov.l @(0xB8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdf2
	bra loc_8c02c214
	nop

loc_8c02bdf2:
	mov.l @(0xB4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdfc
	bra loc_8c02c772
	nop

loc_8c02bdfc:
	mov.l @(0xAC,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be06
	bra loc_8c02c2b6
	nop

loc_8c02be06:
	mov.l @(0xA8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be10
	bra loc_8c02c772
	nop

loc_8c02be10:
	mov.l @(0xA0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be1a
	bra loc_8c02c772
	nop

loc_8c02be1a:
	mov.l @(0x9C,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be24
	bra loc_8c02c772
	nop

loc_8c02be24:
	mov.l @(0x94,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be2e
	bra loc_8c02c772
	nop

loc_8c02be2e:
	mov.l @(0x90,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be38
	bra loc_8c02c772
	nop

loc_8c02be38:
	mov.l @(0x88,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be42
	bra loc_8c02c772
	nop

loc_8c02be42:
	mov.l @(0x84,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be4c
	bra loc_8c02c772
	nop

loc_8c02be4c:
	mov.l @(0x7C,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be56
	bra loc_8c02c772
	nop

loc_8c02be56:
	mov.l @(0x78,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be60
	bra loc_8c02c772
	nop

loc_8c02be60:
	mov.l @(0x70,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be6a
	bra loc_8c02c772
	nop

loc_8c02be6a:
	mov.l @(0x6C,PC),r1
	cmp/eq r1,r0
	bra loc_8c02bedc
	nop

;###############################################
	#data 0xff10
	#data 0x00a0
	#align4
	#data bank13.loc_8c1350cc
	#data bank12.loc_8c129560
	#data bank13.loc_8c13516c
	#data 0x000186a0
	#data 0x8c1f9b94
	#data 0x8c1f97aa
	#data 0x8c1f98fd
	#data 0x8c1f97ac
	#data 0x000186ca
	#data 0x000186cd
	#data 0x000186a1
	#data 0x000186a2
	#data 0x000186a3
	#data 0x000186a4
	#data 0x000186a5
	#data 0x000186a6
	#data 0x000186a7
	#data 0x000186a8
	#data 0x000186a9
	#data 0x000186aa
	#data 0x000186ab
	#data 0x000186ac
	#data 0x000186ad
	#data 0x000186ae
	#data 0x000186af

;----------------------------------------------
loc_8c02bedc:
	bf loc_8c02bee2
	bra loc_8c02c772
	nop

loc_8c02bee2:
	mov.l @(0x1E0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02beec
	bra loc_8c02c772
	nop

loc_8c02beec:
	mov.l @(0x1D8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bef6
	bra loc_8c02c772
	nop

loc_8c02bef6:
	mov.l @(0x1D4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf00
	bra loc_8c02c772
	nop

loc_8c02bf00:
	mov.l @(0x1CC,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf0a
	bra loc_8c02c772
	nop

loc_8c02bf0a:
	mov.l @(0x1C8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf14
	bra loc_8c02c772
	nop

loc_8c02bf14:
	mov.l @(0x1C0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf1e
	bra loc_8c02c772
	nop
 
loc_8c02bf1e:
	mov.l @(0x1BC,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf28
	bra loc_8c02c772
	nop

loc_8c02bf28:
	mov.l @(0x1B4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf32
	bra loc_8c02c772
	nop

loc_8c02bf32:
	mov.l @(0x1B0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf3c
	bra loc_8c02c772
	nop

loc_8c02bf3c:
	mov.l @(0x1A8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf46
	bra loc_8c02c2f0
	nop

loc_8c02bf46:
	mov.l @(0x1A4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf50
	bra loc_8c02c772
	nop

loc_8c02bf50:
	mov.l @(0x19C,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf5a
	bra loc_8c02c772
	nop

loc_8c02bf5a:
	mov.l @(0x198,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf64
	bra loc_8c02c3c0
	nop

loc_8c02bf64:
	mov.l @(0x190,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf6e
	bra loc_8c02c408
	nop

loc_8c02bf6e:
	mov.l @(0x18C,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf78
	bra loc_8c02c440
	nop

loc_8c02bf78:
	mov.l @(0x184,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf82
	bra loc_8c02c44c
	nop

loc_8c02bf82:
	mov.l @(0x180,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf8c
	bra loc_8c02c772
	nop

loc_8c02bf8c:
	mov.l @(0x178,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf96
	bra loc_8c02c772
	nop

loc_8c02bf96:
	mov.l @(0x174,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfa0
	bra loc_8c02c45a
	nop

loc_8c02bfa0:
	mov.l @(0x16C,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfaa
	bra loc_8c02c462
	nop

loc_8c02bfaa:
	mov.l @(0x168,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfb4
	bra loc_8c02c48e
	nop

loc_8c02bfb4:
	mov.l @(0x160,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfbe
	bra loc_8c02c594
	nop

loc_8c02bfbe:
	mov.l @(0x15C,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfc8
	bra loc_8c02c5aa
	nop

loc_8c02bfc8:
	mov.l @(0x154,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfd2
	bra loc_8c02c5c4
	nop

loc_8c02bfd2:
	mov.l @(0x150,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfdc
	bra loc_8c02c5d2
	nop

loc_8c02bfdc:
	mov.l @(0x148,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfe6
	bra loc_8c02c608
	nop

loc_8c02bfe6:
	mov.l @(0x144,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bff0
	bra loc_8c02c644
	nop

loc_8c02bff0:
	mov.l @(0x13C,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bffa
	bra loc_8c02c67c
	nop

loc_8c02bffa:
	mov.l @(0x138,PC),r1
	cmp/eq r1,r0
	bf loc_8c02c004
	bra loc_8c02c68a
	nop

loc_8c02c004:
	mov.l @(0x130,PC),r1
	cmp/eq r1,r0
	bf loc_8c02c00e
	bra loc_8c02c772
	nop

loc_8c02c00e:
	bra loc_8c02c6c8
	nop

loc_8c02c012:
	mov r10,r6
	bra loc_8c02c028
	mov 0x00,r5

loc_8c02c018:
	mov r5,r0
	nop
	mov.l @(0x11C,PC),r1
	shll2 r0
	add 0x01,r5
	mov.b @(r0,r1),r0
	and 0x10,r0
	and r0,r6

loc_8c02c028:
	cmp/ge r4,r5
	bf loc_8c02c018

loc_8c02c02c:
	extu.b r6,r6
	tst r6,r6
	bt loc_8c02c036
	bra loc_8c02c772
	mov r13,r14

loc_8c02c036:
	bra loc_8c02c04c
	mov 0x00,r4

loc_8c02c03a:
	mov.l @(0x100,PC),r3
	mov r4,r5
	shll2 r5
	add r3,r5
	mov.b @r5,r0
	add 0x01,r4
	and 0x0F,r0
	or 0x50,r0
	mov.b r0,@r5

loc_8c02c04c:
	mov.l @(0xF0,PC),r3
	mov.w @r3,r2
	cmp/ge r2,r4
	bf loc_8c02c03a
	mov.l @(0xEC,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c02c064
	mov.l @(0xE8,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c02c076
 
loc_8c02c064:
	mov.l @(0xE8,PC),r0
	mov.l @(0xE4,PC),r2
	mov.b @r0,r1
	mov.b @r2,r3
	sub r1,r3
	mov.l @(0xE4,PC),r1
	mov.w @r1,r2
	sub r3,r2
	mov.w r2,@r1

loc_8c02c076:
	mov.l @(0xD0,PC),r0
	mov 0x00,r3
	mov r3,r2
	mov.l @(0xC4,PC),r1
	mov.b r3,@r1
	mov.b r2,@r0
	mov.l @(0xD4,PC),r2
	bra loc_8c02c0a0
	mov.b r3,@r2

loc_8c02c088:
	mov.l @(0xB4,PC),r1
	mov.l @(0xB0,PC),r3
	mov.w @r1,r4
	shll2 r4
	add r3,r4
	mov.b @r4,r0
	and 0x0F,r0
	or 0x50,r0
	mov.b r0,@r4
	mov.w @r1,r2
	add 0x01,r2
	mov.w r2,@r1

loc_8c02c0a0:
	mov.l @(0xB8,PC),r0
	mov.l @(0x9C,PC),r3
	mov.w @r0,r1
	mov.w @r3,r4
	cmp/ge r1,r4
	bf loc_8c02c0b0
	bra loc_8c02c772
	nop

loc_8c02c0b0:
	mov.l @(0x88,PC),r1
	exts.w r4,r0
	shll2 r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c02c088
	bra loc_8c02c772
	nop

;###############################################
	#align4
	#data 0x000186b0
	#data 0x000186b1
	#data 0x000186b2
	#data 0x000186b3
	#data 0x000186b4
	#data 0x000186b5
	#data 0x000186b6
	#data 0x000186b7
	#data 0x000186b8
	#data 0x000186b9
	#data 0x000186ba
	#data 0x000186bb
	#data 0x000186bc
	#data 0x000186bd
	#data 0x000186be
	#data 0x000186bf
	#data 0x000186c0
	#data 0x000186c1
	#data 0x000186c2
	#data 0x000186c3
	#data 0x000186c5
	#data 0x000186c6
	#data 0x000186c7
	#data 0x000186c8
	#data 0x000186c9
	#data 0x000186cb
	#data 0x000186cc
	#data 0x000186cf
	#data 0x000186d0
	#data 0x000186d1
	#data 0x8c1f97bc
	#data 0x8c1f97ac
	#data 0x8c1f98fd
	#data 0x8c1f98fe
	#data 0x8c1f98fc
	#data 0x8c1f98ff
	#data 0x8c1f97b6
	#data 0x8c1f9aef
	#data 0x8c1f97aa

;----------------------------------------------
loc_8c02c160:
	mov.l @(0x1F8,PC),r1
	jsr @r1
	nop
	cmp/pz r0
	bt.s loc_8c02c170
	mov r0,r4
	bra loc_8c02c772
	nop

loc_8c02c170:
	mov.l @(0x1EC,PC),r2
	mov 0x00,r5
	mov.w r4,@r2
	bra loc_8c02c192
	mov r5,r6

loc_8c02c17a:
	mov r5,r0
	nop
	mov.l @(0x1E4,PC),r1
	add r4,r0
	shll2 r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	tst 0x02,r0
	bt.s loc_8c02c190
	add 0x01,r6
	add 0x01,r6

loc_8c02c190:
	add 0x01,r5

loc_8c02c192:
	mov.l @(0x1D4,PC),r3
	mov r5,r7
	add r4,r7
	mov.w @r3,r2
	cmp/ge r2,r7
	bt loc_8c02c1ca
	mov r7,r0
	nop
	mov.l @(0x1C0,PC),r1
	shll2 r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c02c17a
	bra loc_8c02c1ca
	nop

loc_8c02c1b2:
	mov r5,r2
	mov.l @(0x1AC,PC),r7
	add r4,r2
	mov r4,r1
	shll2 r2
	mov.l @(0x1AC,PC),r3
	shll2 r1
	add r7,r2
	add r7,r1
	jsr @r3
	mov 0x04,r0
	add 0x01,r4

loc_8c02c1ca:
	mov.l @(0x19C,PC),r3
	mov.w @r3,r2
	add 0xFF,r2
	cmp/ge r2,r4
	bf loc_8c02c1b2
	mov.l @(0x190,PC),r2
	mov 0x00,r1
	mov.l @(0x188,PC),r0
	mov.w @r2,r3
	add 0xFF,r3
	shll2 r3
	mov.b r1,@(r0,r3)
	mov.w @r2,r3
	sub r5,r3
	mov.w r3,@r2
	mov.l @(0x184,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c02c1f8
	mov.l @(0x180,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c02c208

loc_8c02c1f8:
	mov.l @(0x180,PC),r3
	mov.l @(0x17C,PC),r1
	mov.w @r3,r0
	mov.b @r1,r2
	sub r2,r0
	mov.w r0,@r3
	bra loc_8c02c226
	nop

loc_8c02c208:
	mov.l @(0x170,PC),r3
	mov.w @r3,r2
	sub r6,r2
	mov.w r2,@r3
	bra loc_8c02c772
	nop

loc_8c02c214:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c234
	mov.l @(0x164,PC),r1
	mov 0x06,r3
	mov.l @(0x164,PC),r4
	mov.b r3,@r1
	bsr loc_8c02bd6c
	nop

loc_8c02c226:
	mov.l @(0x148,PC),r3
	mov 0x00,r2
	mov.l @(0x148,PC),r0
	mov r2,r1
	mov.b r2,@r3
	bra loc_8c02c772
	mov.b r1,@r0

loc_8c02c234:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bt.s loc_8c02c240
	mov r0,r4
	mov 0x00,r4

loc_8c02c240:
	mov.l @(0x11C,PC),r2
	mov.w @r2,r3
	cmp/gt r4,r3
	bt loc_8c02c24c
	bra loc_8c02c772
	nop

loc_8c02c24c:
	mov.l @(0x12C,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	mov.w r3,@r1
	add 0xF6,r1
	mov.w @r1,r0
	mov.l @(0x108,PC),r3
	add 0xFF,r0
	shll2 r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c02c26e
	mov.l @(0x114,PC),r2
	mov.w @r2,r0
	add 0xFF,r0
	mov.w r0,@r2

loc_8c02c26e:
	mov.l @(0xF8,PC),r0
	mov.l @(0xEC,PC),r2
	mov.w @r0,r1
	mov.w @r2,r3
	cmp/eq r1,r3
	bt loc_8c02c2a0
	mov.l @(0xE4,PC),r1
	bra loc_8c02c298
	mov.w @r1,r4

loc_8c02c280:
	mov r4,r1
	mov r4,r2
	add 0xFF,r1
	mov.l @(0xDC,PC),r5
	shll2 r2
	mov.l @(0xE0,PC),r3
	shll2 r1
	add r5,r2
	add r5,r1
	jsr @r3
	mov 0x04,r0
	add 0x01,r4

loc_8c02c298:
	mov.l @(0xCC,PC),r3
	mov.w @r3,r2
	cmp/ge r2,r4
	bf loc_8c02c280

loc_8c02c2a0:
	mov.l @(0xC4,PC),r2
	mov 0x00,r1
	mov.l @(0xBC,PC),r0
	mov.w @r2,r3
	add 0xFF,r3
	shll2 r3
	mov.b r1,@(r0,r3)
	mov.w @r2,r3
	add 0xFF,r3
	bra loc_8c02c3fc
	mov.w r3,@r2

loc_8c02c2b6:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bf loc_8c02c2ce
	mov.l @(0xB0,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02c2ce
	mov 0x00,r2

loc_8c02c2c8:
	mov.l @(0xB4,PC),r3
	bra loc_8c02c484
	mov.b r2,@r3

loc_8c02c2ce:
	mov.l @(0xA0,PC),r1
	mov.b @r1,r0
	tst r0,r0
	bt loc_8c02c2e8
	mov.w @(0x6,r12),r0
	extu.w r0,r0
	tst r10,r0
	bt loc_8c02c2e2
	bra loc_8c02c2c8
	mov 0x02,r2

loc_8c02c2e2:
	mov.l @(0x9C,PC),r3
	bra loc_8c02c484
	mov.b r13,@r3

loc_8c02c2e8:
	bsr loc_8c02c78c
	mov 0x20,r4
	bra loc_8c02c772
	nop

loc_8c02c2f0:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c2fa
	bra loc_8c02c772
	nop

loc_8c02c2fa:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bf loc_8c02c316
	mov.l @(0x5C,PC),r3
	mov.l @(0x5C,PC),r0
	mov.w @r3,r2
	shll2 r2
	mov.b @(r0,r2),r1
	extu.b r1,r1
	tst r10,r1
	bt loc_8c02c316
	bra loc_8c02c772
	nop

loc_8c02c316:
	mov.l @(0x50,PC),r0
	mov.l @(0x44,PC),r2
	mov.w @r0,r1
	mov.w @r2,r3
	cmp/ge r1,r3
	bf loc_8c02c326
	bra loc_8c02c772
	nop

loc_8c02c326:
	mov.l @(0x54,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	mov.w r3,@r1
	add 0xF6,r1
	mov.w @r1,r0
	mov.l @(0x30,PC),r3
	shll2 r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c02c346
	mov.l @(0x3C,PC),r2
	mov.w @r2,r0
	add 0xFF,r0
	mov.w r0,@r2

loc_8c02c346:
	mov.l @(0x20,PC),r0
	mov.l @(0x14,PC),r2
	mov.w @r0,r1
	mov.w @r2,r3
	add 0xFF,r1
	cmp/eq r1,r3
	bt loc_8c02c3a8
	mov.l @(0x8,PC),r1
	bra loc_8c02c39e
	mov.w @r1,r4

;###############################################
	#align4
	#data loc_8c02d14e
	#data 0x8c1f97ac
	#data 0x8c1f97bc
	#data 0x8c1f97aa
	#data bank12.loc_8c129620
	#data 0x8c1f98fd
	#data 0x8c1f98fe
	#data 0x8c1f98fc
	#data 0x8c1f97b6
	#data 0x8c1f9aee
	#data 0x000186c2

;----------------------------------------------
loc_8c02c388:
	mov.l @(0x134,PC),r3
	mov r4,r5
	shll2 r5
	add r3,r5
	mov.l @(0x130,PC),r3
	mov r5,r2
	mov r5,r1
	add 0x04,r2
	jsr @r3
	mov 0x04,r0
	add 0x01,r4

loc_8c02c39e:
	mov.l @(0x128,PC),r3
	mov.w @r3,r2
	add 0xFF,r2
	cmp/ge r2,r4
	bf loc_8c02c388

loc_8c02c3a8:
	mov.l @(0x11C,PC),r2
	mov 0x00,r1
	mov.l @(0x110,PC),r0
	mov.w @r2,r3
	add 0xFF,r3
	shll2 r3
	mov.b r1,@(r0,r3)
	mov.w @r2,r3
	add 0xFF,r3
	mov.w r3,@r2
	bra loc_8c02c772
	nop

loc_8c02c3c0:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c3ce
	mov.l @(0x104,PC),r1
	mov 0x04,r2
	bra loc_8c02c484
	mov.b r2,@r1

loc_8c02c3ce:
	cmp/ge r4,r8
	bt loc_8c02c3da
	mov.l @(0xFC,PC),r3
	mov.w @r3,r2
	add 0x01,r2
	mov.w r2,@r3

loc_8c02c3da:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bt loc_8c02c3e6
	bra loc_8c02c772
	nop

loc_8c02c3e6:
	mov.l @(0xE8,PC),r2
	mov.l @(0xD4,PC),r0
	mov.w @r2,r3
	add 0xFF,r3
	shll2 r3
	mov.b @(r0,r3),r1
	extu.b r1,r1
	tst r10,r1
	bf loc_8c02c3fc
	bra loc_8c02c772
	nop

loc_8c02c3fc:
	mov.l @(0xD0,PC),r2
	mov.w @r2,r3
	add 0xFF,r3
	mov.w r3,@r2
	bra loc_8c02c772
	nop

loc_8c02c408:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c416
	mov.l @(0xBC,PC),r1
	mov 0x03,r0
	bra loc_8c02c484
	mov.b r0,@r1

loc_8c02c416:
	cmp/pl r8
	bf loc_8c02c420
	mov.w @r2,r1
	add 0xFF,r1
	mov.w r1,@r2

loc_8c02c420:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bt.s loc_8c02c42e
	mov r0,r4
	bra loc_8c02c772
	nop

loc_8c02c42e:
	mov.l @(0xA0,PC),r2
	mov.w @r2,r3
	cmp/ge r4,r3
	bf loc_8c02c43a
	bra loc_8c02c772
	nop

loc_8c02c43a:
	mov.l @(0x94,PC),r1
	bra loc_8c02c772
	mov.w r4,@r1

loc_8c02c440:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c484
	mov.l @(0x84,PC),r3
	bra loc_8c02c484
	mov.b r13,@r3

loc_8c02c44c:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c484
	mov.l @(0x78,PC),r1
	mov 0x02,r0
	bra loc_8c02c484
	mov.b r0,@r1

loc_8c02c45a:
	bsr loc_8c02caec
	mov 0x00,r4
	bra loc_8c02c772
	nop

loc_8c02c462:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bt loc_8c02c46e
	bra loc_8c02c772
	nop

loc_8c02c46e:
	mov.l @(0x64,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02c47e
	bsr loc_8c02bd6c
	mov r9,r4
	bra loc_8c02c772
	nop

loc_8c02c47e:
	mov.l @(0x4C,PC),r2
	mov 0x05,r1
	mov.b r1,@r2

loc_8c02c484:
	mov.l @(0x50,PC),r4
	bsr loc_8c02bd6c
	nop
	bra loc_8c02c772
	nop

loc_8c02c48e:
	mov r15,r7
	mov r7,r6
	mov r7,r5
	mov 0x00,r4
	bra loc_8c02c508
	mov 0x14,r7


loc_8c02c49a:
	mov.l @(0x34,PC),r3
	mov.l @(0x3C,PC),r0
	mov.w @r3,r2
	add 0xFF,r2
	shll2 r2
	mov.w @(r0,r2),r1
	mov.l @r6,r2
	extu.w r1,r1
	cmp/eq r2,r1
	bf loc_8c02c4e0
	mov.l @(0x20,PC),r1
	mov.w @r1,r2
	add 0xFF,r2
	shll2 r2
	mov.w @(r0,r2),r3
	add 0xFF,r3
	mov.w r3,@(r0,r2)
	bra loc_8c02c502
	nop

;###############################################
	#align4
	#data 0x8c1f97bc
	#data bank12.loc_8c129620
	#data 0x8c1f97aa
	#data 0x8c1f9aee
	#data 0x8c1f97ac
	#data 0x8c1f98fd
	#data 0x000186c2
	#data 0x8c1f97be

;----------------------------------------------
loc_8c02c4e0:
	mov.l @(0x108,PC),r2
	mov.w @r2,r1
	add 0xFF,r1
	shll2 r1
	mov.w @(r0,r1),r3
	mov.l @r5,r1
	extu.w r3,r3
	add 0xFF,r1
	cmp/eq r1,r3
	bf loc_8c02c502
	mov.l @(0xF4,PC),r3
	mov.w @r3,r1
	add 0xFF,r1
	shll2 r1
	mov.w @(r0,r1),r2
	add 0x01,r2
	mov.w r2,@(r0,r1)

loc_8c02c502:
	add 0x04,r6
	add 0x04,r5
	add 0x01,r4

loc_8c02c508:
	cmp/hs r7,r4
	bf loc_8c02c49a
	mov.l @(0xDC,PC),r3
	mov.l @(0xE0,PC),r0
	mov.w @r3,r2
	add 0xFF,r2
	shll2 r2
	mov.w @(r0,r2),r1
	mov.l @(0xD8,PC),r2
	extu.w r1,r1
	cmp/eq r2,r1
	bf loc_8c02c530
	mov.l @(0xC8,PC),r3
	mov.w @(0xBC,PC),r2
	mov.w @r3,r1
	add 0xFF,r1
	shll2 r1
	mov.w r2,@(r0,r1)
	bra loc_8c02c54e
	nop

loc_8c02c530:
	mov.l @(0xB8,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	shll2 r3
	mov.w @(r0,r3),r2
	mov.l @(0xBC,PC),r3
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c02c54e
	mov.l @(0xA8,PC),r2
	mov.w @(0x9C,PC),r3
	mov.w @r2,r1
	add 0xFF,r1
	shll2 r1
	mov.w r3,@(r0,r1)

loc_8c02c54e:
	mov.l @(0x9C,PC),r1
	mov.w @r1,r2
	add 0xFF,r2
	shll2 r2
	mov.w @(r0,r2),r3
	mov.l @(0xA0,PC),r2
	extu.w r3,r3
	cmp/eq r2,r3
	bf loc_8c02c570
	mov.l @(0x88,PC),r3
	mov.w @(0x80,PC),r2
	mov.w @r3,r1
	add 0xFF,r1
	shll2 r1
	mov.w r2,@(r0,r1)
	bra loc_8c02c772
	nop

loc_8c02c570:
	mov.l @(0x78,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	shll2 r3
	mov.w @(r0,r3),r2
	mov.l @(0x84,PC),r3
	extu.w r2,r2
	cmp/eq r3,r2
	bt loc_8c02c586
	bra loc_8c02c772
	nop

loc_8c02c586:
	mov.l @(0x64,PC),r2
	mov.w @(0x5C,PC),r3
	mov.w @r2,r1
	add 0xFF,r1
	shll2 r1
	bra loc_8c02c772
	mov.w r3,@(r0,r1)

loc_8c02c594:
	tst r7,r6
	bf loc_8c02c59c
	bra loc_8c02c772
	nop

loc_8c02c59c:
	mov 0x17,r0
	mov.b r13,@(r0,r12)
	mov 0x19,r0
	mov 0x00,r3
	mov.b r3,@(r0,r12)
	bra loc_8c02c686
	mov 0x18,r0

loc_8c02c5aa:
	tst r7,r6
	bf loc_8c02c5b2
	bra loc_8c02c772
	nop

loc_8c02c5b2:
	mov 0x17,r0
	mov.b r13,@(r0,r12)
	mov 0x19,r0
	mov 0x00,r3
	mov.b r3,@(r0,r12)
	mov 0x18,r0
	mov 0x02,r1
	bra loc_8c02c6a8
	mov.b r1,@(r0,r12)

loc_8c02c5c4:
	mov.w @(0x6,r12),r0
	mov.l @(0x3C,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r12)
	mov.w @(0x6,r12),r0
	bra loc_8c02c5de
	or 0x02,r0

loc_8c02c5d2:
	mov.w @(0x6,r12),r0
	mov.l @(0x2C,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r12)
	mov.w @(0x6,r12),r0
	or 0x42,r0

loc_8c02c5de:
	bra loc_8c02c6a2
	mov.w r0,@(0x6,r12)

;###############################################
	#data 0x8395
	#data 0x834a
	#data 0x8396
	#data 0x8350
	#align4
	#data 0x8c1f97ac
	#data 0x8c1f97be
	#data 0x0000834a
	#data 0x00008395
	#data 0x00008350
	#data 0x00008396
	#data 0x0000ffae

;----------------------------------------------
loc_8c02c608:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bf loc_8c02c620
	mov.l @(0xA0,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02c620
	mov.l @(0x9C,PC),r3
	mov 0x00,r2
	bra loc_8c02c62e
	mov.b r2,@r3

loc_8c02c620:
	mov.l @(0x90,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bt loc_8c02c634
	mov.l @(0x8C,PC),r3
	mov 0x02,r1
	mov.b r1,@r3

loc_8c02c62e:
	mov.l @(0x8C,PC),r4
	bra loc_8c02c636
	nop

loc_8c02c634:
	mov.l @(0x88,PC),r4

loc_8c02c636:
	bsr loc_8c02bd6c
	nop
	mov.l @(0x88,PC),r3
	jsr @r3
	mov 0x04,r4
	bra loc_8c02c772
	nop

loc_8c02c644:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bf loc_8c02c65c
	mov.l @(0x64,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02c65c
	mov.l @(0x60,PC),r3
	mov 0x00,r2
	bra loc_8c02c66c
	mov.b r2,@r3

loc_8c02c65c:
	mov.l @(0x54,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c02c668
	bra loc_8c02c772
	nop

loc_8c02c668:
	mov.l @(0x4C,PC),r3
	mov.b r13,@r3

loc_8c02c66c:
	mov.l @(0x4C,PC),r4
	bsr loc_8c02bd6c
	nop
	mov.l @(0x50,PC),r3
	jsr @r3
	mov 0x04,r4
	bra loc_8c02c772
	nop

loc_8c02c67c:
	tst r7,r6
	bf loc_8c02c684
	bra loc_8c02c772
	nop

loc_8c02c684:
	mov 0x17,r0

loc_8c02c686:
	bra loc_8c02c6a8
	mov.b r13,@(r0,r12)

loc_8c02c68a:
	mov.w @(0x22,PC),r3
	tst r3,r6
	bf loc_8c02c772
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bf loc_8c02c69c
	bsr loc_8c02bd6c
	mov r9,r4

loc_8c02c69c:
	mov 0x17,r0
	mov 0x00,r3
	mov.b r3,@(r0,r12)

loc_8c02c6a2:
	mov 0x18,r0
	mov 0x00,r2
	mov.b r2,@(r0,r12)

loc_8c02c6a8:
	bsr loc_8c02b7cc
	nop
	bra loc_8c02c772
	nop

;###############################################
	#data 0x0100
	#align4
	#data 0x8c1f98fd
	#data 0x8c1f9aee
	#data 0x000186c2
	#data 0x000186a2
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c02c6c8:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bf loc_8c02c6dc
	mov.l @(0xE0,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c02c6dc
	bsr loc_8c02bd6c
	mov r9,r4

loc_8c02c6dc:
	mov.l @(0xD8,PC),r3
	cmp/eq r3,r11
	bf loc_8c02c738
	mov r15,r5
	add 0x50,r5
	mov 0x00,r4
	bra loc_8c02c712
	mov 0x28,r6

loc_8c02c6ec:
	mov.l @(0xCC,PC),r2
	mov.l @(0xD0,PC),r0
	mov.w @r2,r3
	add 0xFF,r3
	shll2 r3
	mov.w @(r0,r3),r1
	mov.l @r5,r3
	extu.w r1,r1
	cmp/eq r3,r1
	bf.s loc_8c02c710
	add 0x01,r4
	mov.l @(0xB8,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	shll2 r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)

loc_8c02c710:
	add 0x04,r5

loc_8c02c712:
	cmp/hs r6,r4
	bf loc_8c02c6ec
	mov.l @(0xA4,PC),r3
	mov.l @(0xA4,PC),r0
	mov.w @r3,r2
	add 0xFF,r2
	shll2 r2
	mov.w @(r0,r2),r1
	mov.l @(0xA0,PC),r2
	extu.w r1,r1
	cmp/eq r2,r1
	bf loc_8c02c772
	mov.l @(0x90,PC),r3
	mov.w @(0x7A,PC),r2
	mov.w @r3,r1
	add 0xFF,r1
	shll2 r1
	bra loc_8c02c772
	mov.w r2,@(r0,r1)

loc_8c02c738:
	mov.l @(0x8C,PC),r1
	cmp/eq r1,r11
	bf loc_8c02c76e
	mov.w @(0x6A,PC),r4
	mov.w @(0x6A,PC),r5
	add r15,r4
	bra loc_8c02c766
	add r15,r5

loc_8c02c748:
	mov.l @(0x70,PC),r3
	mov.l @(0x80,PC),r2
	mov.w @r3,r6
	mov.l @r4,r1
	add 0xFF,r6
	shll2 r6
	add r2,r6
	mov.w @(0x2,r6),r0
	extu.w r0,r0
	cmp/eq r1,r0
	bf.s loc_8c02c766
	add 0x04,r4
	mov.w @(0x2,r6),r0
	add 0x02,r0
	mov.w r0,@(0x2,r6)

loc_8c02c766:
	cmp/hs r5,r4
	bf loc_8c02c748
	bra loc_8c02c772
	nop

loc_8c02c76e:
	bsr loc_8c02c78c
	mov r11,r4

loc_8c02c772:
	mov r14,r0
	nop
	mov.w @(0x34,PC),r1
	add r1,r15
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
loc_8c02c78c:
	mov.l @(0x40,PC),r7
	mov 0x24,r2
	mov.w @(0x1C,PC),r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r7),r3
	cmp/ge r2,r3
	bt loc_8c02c7a6
	mov.w @(0x10,PC),r3
	mov.w @(0xE,r7),r0
	cmp/gt r3,r0
	bf loc_8c02c7d4

loc_8c02c7a6:
	bra loc_8c02c91c
	mov 0x00,r0

;###############################################
	#data 0x8394
	#data 0x00c8
	#data 0x00f0
	#data 0x0347
	#data 0x009c
	#align4
	#data 0x8c1f98fd
	#data 0x0000814a
	#data 0x8c1f97ac
	#data 0x8c1f97be
	#data 0x00008345
	#data 0x0000814b
	#data 0x8c1f97bc
	#data 0x8c1f97a8

;----------------------------------------------
loc_8c02c7d4:
	mov.l @(0xD8,PC),r14
	mov.w @(0x6,r14),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c02c816
	mov.w @(0x2,r7),r0
	mov r0,r6
	mov.w @(0x4,r7),r0
	cmp/ge r6,r0
	bt loc_8c02c816
	bra loc_8c02c80e
	mov r6,r5

loc_8c02c7ec:
	mov r7,r13
	mov r5,r6
	add 0x14,r13
	mov.l @(0xC0,PC),r3
	shll2 r6
	add r6,r13
	mov r13,r1
	mov r13,r2
	add 0x04,r1
	jsr @r3
	mov 0x04,r0
	mov r7,r3
	add 0x14,r3
	add r6,r3
	mov.b @(0x4,r3),r0
	or 0x40,r0
	mov.b r0,@(0x4,r3)

loc_8c02c80e:
	mov.w @(0x4,r7),r0
	add 0xFF,r5
	cmp/ge r0,r5
	bt loc_8c02c7ec

loc_8c02c816:
	mov.w @(0x4,r7),r0
	mov r7,r3
	add 0x14,r3
	mov r0,r5
	shll2 r5
	mov r4,r0
	nop
	cmp/eq 0x20,r0
	bf.s loc_8c02c84c
	add r3,r5
	mov.l @(0x8C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c02c84c
	mov.w @(0x78,PC),r0
	mov r7,r3
	add 0x14,r3
	mov.w r0,@(0x2,r5)
	mov 0x52,r2
	mov.w @(0x4,r7),r0
	shll2 r0
	add r3,r0
	mov.b r2,@r0
	mov.w @(0xE,r7),r0
	add 0x02,r0
	bra loc_8c02c8e8
	mov.w r0,@(0xE,r7)

loc_8c02c84c:
	mov.w @(0x6,r14),r0
	mov 0x08,r3
	extu.w r0,r6
	tst r6,r3
	bt loc_8c02c85c
	mov 0x04,r1
	tst r6,r1
	bt loc_8c02c8bc

loc_8c02c85c:
	mov r7,r3
	mov 0x51,r2
	add 0x14,r3
	mov.b r2,@r5
	mov.w @(0xE,r7),r0
	mov 0x02,r2
	add 0x01,r0
	mov.w r0,@(0xE,r7)
	mov.w @(0x4,r7),r0
	shll2 r0
	add r3,r0
	add r0,r2
	mov.w r4,@r2
	mov.w @(0x6,r14),r0
	extu.w r0,r0
	tst 0x04,r0
	bt loc_8c02c8e8
	mov r4,r0
	nop
	cmp/eq 0x20,r0
	bt loc_8c02c8e8
	mov.w @(0x4,r7),r0
	mov r7,r2
	add 0x14,r2
	mov r0,r3
	shll2 r3
	add r2,r3
	mov r7,r2
	mov.b @r3,r0
	add 0x14,r2
	and 0xEF,r0
	mov.b r0,@r3
	mov.w @(0x4,r7),r0
	mov r0,r3
	shll2 r3
	add r2,r3
	mov.b @r3,r0
	or 0x20,r0
	mov.b r0,@r3
	bra loc_8c02c8e8
	nop

;###############################################
	#data 0x8140
	#align4
	#data 0x8c1f9b94
	#data bank12.loc_8c129620
	#data 0x8c1f9bab

;----------------------------------------------
loc_8c02c8bc:
	mov r4,r0
	nop
	mov.w r0,@(0x2,r5)
	mov r7,r3
	mov.w @(0x4,r7),r0
	add 0x14,r3
	mov 0x42,r2
	shll2 r0
	add r3,r0
	mov.b r2,@r0
	mov r7,r2
	mov.w @(0xE,r7),r0
	add 0x14,r2
	add 0x02,r0
	mov.w r0,@(0xE,r7)
	mov.w @(0x4,r7),r0
	mov r0,r3
	shll2 r3
	add r2,r3
	mov.b @r3,r0
	or 0x40,r0
	mov.b r0,@r3

loc_8c02c8e8:
	mov.w @(0x4,r7),r0
	mov r7,r2
	add 0x14,r2
	mov r0,r3
	shll2 r3
	add r2,r3
	mov.b @r3,r0
	or 0x40,r0
	mov.b r0,@r3
	mov.w @(0x6,r14),r0
	extu.w r0,r0
	tst 0x80,r0
	bf loc_8c02c90e
	mov.l @(0x154,PC),r0
	mov.l @(0x14C,PC),r3
	mov.w @r0,r1
	mov.w @r3,r2
	cmp/eq r1,r2
	bf loc_8c02c914

loc_8c02c90e:
	mov.w @(0x2,r7),r0
	add 0x01,r0
	mov.w r0,@(0x2,r7)

loc_8c02c914:
	mov.w @(0x4,r7),r0
	add 0x01,r0
	mov.w r0,@(0x4,r7)
	mov 0x01,r0

loc_8c02c91c:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02c924:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r10
	mov r4,r12
	bsr loc_8c02cf76
	mov r6,r8
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0xB,r12)
	mov.b r0,@(0xA,r12)
	mov.w @(0x2,r12),r0
	mov r0,r6
	tst r6,r6
	bf loc_8c02c954
	bra loc_8c02cad4
	nop

loc_8c02c954:
	mova @(0x104,PC),r0
	fldi0 fr8
	fmov @r0,fr7
	mova @(0x104,PC),r0
	tst r8,r8
	mov 0x01,r9
	mov 0x02,r11
	bt.s loc_8c02c9e8
	fmov @r0,fr6
	mov.w @(0xC,r12),r0
	mov r0,r3
	mov.w @(0x4,r12),r0
	add 0xFE,r0
	cmp/gt r0,r3
	bf loc_8c02c982
	mov.w @(0x4,r12),r0
	add 0xFE,r0
	mov.w r0,@(0xC,r12)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c02c982
	mov 0x00,r0
	mov.w r0,@(0xC,r12)

loc_8c02c982:
	mova @(0xE0,PC),r0
	fmov @r0,fr5
	mov.w @(0xC,r12),r0
	mov r0,r4
	bra loc_8c02c9dc
	fmov fr8,fr4

loc_8c02c98e:
	mov r12,r3
	mov r4,r2
	add 0x14,r3
	shll2 r2
	add r3,r2
	mov.b @r2,r1
	extu.b r1,r1
	tst r11,r1
	bt loc_8c02c9a4
	bra loc_8c02c9b8
	fadd fr6,fr4

loc_8c02c9a4:
	mov r12,r2
	mov r4,r3
	add 0x14,r2
	shll2 r3
	add r2,r3
	mov.b @r3,r1
	extu.b r1,r1
	tst r9,r1
	bt loc_8c02c9b8
	fadd fr7,fr4

loc_8c02c9b8:
	fcmp/gt fr4,fr5
	bt loc_8c02c9da
	mov.w @(0xC,r12),r0
	mov r12,r3
	add 0x14,r3
	shll2 r0
	add r3,r0
	mov.b @r0,r2
	extu.b r2,r2
	tst r11,r2
	bt.s loc_8c02c9d4
	mov.w @(0xC,r12),r0
	bra loc_8c02c9d6
	fsub fr6,fr4

loc_8c02c9d4:
	fsub fr7,fr4

loc_8c02c9d6:
	add 0x01,r0
	mov.w r0,@(0xC,r12)

loc_8c02c9da:
	add 0x01,r4

loc_8c02c9dc:
	mov.w @(0x4,r12),r0
	add 0xFF,r0
	cmp/ge r0,r4
	bf loc_8c02c98e
	mov.w @(0xC,r12),r0
	mov r0,r4

loc_8c02c9e8:
	tst r8,r8
	fmov fr8,fr4
	movt r14
	tst r8,r8
	movt r13
	cmp/ge r6,r4
	mov 0x00,r5
	bt.s loc_8c02cad4
	mov 0x2A,r7

loc_8c02c9fa:
	mov r12,r3
	mov r4,r2
	add 0x14,r3
	shll2 r2
	add r3,r2
	mov.b @r2,r1
	extu.b r1,r1
	tst r11,r1
	bt loc_8c02ca6c
	tst r14,r14
	bt loc_8c02ca1a
	mov.l @(0x54,PC),r2
	mov.w @r2,r3
	add 0xFE,r3
	cmp/gt r3,r5
	bt loc_8c02cad4

loc_8c02ca1a:
	mov r4,r2
	mov r12,r1
	shll2 r2
	add 0x14,r1
	mov.l r2,@r15
	add r1,r2
	mov r2,r0
	nop
	add 0x02,r0
	mov r12,r1
	mov.b @(0x1,r0),r0
	add 0x14,r1
	mov.b r0,@r10
	add 0x01,r10
	mov.l @r15,r2
	add r2,r1
	mov.b @(0x2,r1),r0
	mov.b r0,@r10
	mov.w @(0x4,r12),r0
	cmp/gt r4,r0
	bf.s loc_8c02ca4c
	add 0x01,r10
	mov.b @(0xB,r12),r0
	add 0x01,r0
	mov.b r0,@(0xB,r12)

loc_8c02ca4c:
	fadd fr6,fr4
	bra loc_8c02cac2
	add 0x02,r5

;###############################################
	#align4
	#data 0x8c1f97ac
	#data 0x8c1f97aa
	#data 0x41400000
	#data 0x41a00000
	#data 0x43dc0000
	#data 0x8c1f97a8

;----------------------------------------------
loc_8c02ca6c:
	mov r4,r2
	mov r12,r1
	shll2 r2
	add 0x14,r1
	mov r2,r3
	add r3,r1
	mov.l r2,@r15
	mov.b @r1,r2
	extu.b r2,r2
	tst r9,r2
	bt loc_8c02cac2
	tst r13,r13
	bt loc_8c02ca90
	mov.l @(0xC8,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	cmp/gt r3,r5
	bt loc_8c02cad4

loc_8c02ca90:
	tst r8,r8
	bt loc_8c02caa4
	mov.l @(0xBC,PC),r3
	mov.w @(0xAC,PC),r1
	mov.w @r3,r2
	extu.w r2,r2
	tst r1,r2
	bt loc_8c02caa4
	bra loc_8c02cab0
	mov.b r7,@r10

loc_8c02caa4:
	mov r12,r1
	mov.l @r15,r2
	add 0x14,r1
	add r2,r1
	mov.b @(0x2,r1),r0
	mov.b r0,@r10

loc_8c02cab0:
	mov.w @(0x4,r12),r0
	cmp/gt r4,r0
	bf.s loc_8c02cabe
	add 0x01,r10
	mov.b @(0xA,r12),r0
	add 0x01,r0
	mov.b r0,@(0xA,r12)

loc_8c02cabe:
	fadd fr7,fr4
	add 0x01,r5

loc_8c02cac2:
	tst r8,r8
	bt loc_8c02cace
	mova @(0x90,PC),r0
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bf loc_8c02cad4

loc_8c02cace:
	add 0x01,r4
	cmp/ge r6,r4
	bf loc_8c02c9fa

loc_8c02cad4:
	mov 0x00,r2
	mov.b r2,@r10
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
loc_8c02caec:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x48,PC),r0
	add r0,r15
	mov.l @(0x4C,PC),r9
	mov 0x00,r8
	mov r8,r4
	bra loc_8c02cb1e
	mov 0x10,r6

loc_8c02cb0a:
	mov r9,r3
	mov r4,r2
	add 0x14,r3
	shll2 r2
	add r3,r2
	mov.b @r2,r1
	extu.b r1,r1
	tst r6,r1
	bt loc_8c02cb24
	add 0x01,r4

loc_8c02cb1e:
	mov.w @(0x2,r9),r0
	cmp/ge r0,r4
	bf loc_8c02cb0a
 
loc_8c02cb24:
	mov.w @(0x2,r9),r0
	cmp/eq r0,r4
	bf loc_8c02cb2e
	bra loc_8c02cf60
	nop

loc_8c02cb2e:
	mov.w @(0x18,PC),r0
	mov.b @(r0,r9),r2
	tst r2,r2
	bf.s loc_8c02cbca
	mov 0x01,r12
	mov.w @(0x12,PC),r5
	mov r8,r7
	mov.w @(0xC,PC),r0
	add r9,r5
	mov.w r4,@(r0,r9)
	bra loc_8c02cba4
	mov 0x02,r14

;###############################################
	#data 0x0200
	#data 0xfe70
	#data 0x0155
	#data 0x0340
	#data 0x0160
	#align4
	#data 0x8c1f97a8
	#data 0x8c1f9b9a
	#data 0x43dc0000

;----------------------------------------------
loc_8c02cb5c:
	mov r9,r3
	mov r4,r13
	add 0x14,r3
	shll2 r13
	add r3,r13
	mov.b @r13,r2
	extu.b r2,r2
	tst r6,r2
	bf loc_8c02cbaa
	mov.b @r13,r3
	extu.b r3,r3
	tst r14,r3
	bt loc_8c02cb9a
	mov r9,r3
	mov r4,r13
	add 0x14,r3
	shll2 r13
	add r13,r3
	mov r3,r2
	add 0x02,r2
	mov.b @(0x1,r2),r0
	mov r9,r2
	add 0x14,r2
	add r2,r13
	mov.b r0,@r5
	mov.b @(0x2,r13),r0
	add 0x01,r5
	add 0x02,r7
	mov.b r0,@r5
	bra loc_8c02cba2
	add 0x01,r5

loc_8c02cb9a:
	mov.b @(0x2,r13),r0
	add 0x01,r7
	mov.b r0,@r5
	add 0x01,r5

loc_8c02cba2:
	add 0x01,r4

loc_8c02cba4:
	mov.w @(0x2,r9),r0
	cmp/ge r0,r4
	bf loc_8c02cb5c

loc_8c02cbaa:
	mov.w @(0x7E,PC),r0
	mov.b r8,@r5
	mov.w r4,@(r0,r9)
	mov.w @(0x7A,PC),r0
	mov.b r12,@(r0,r9)
	add 0xFF,r0
	mov.b r7,@(r0,r9)
	mov.w @(0x74,PC),r0
	mov.b r8,@(r0,r9)
	add 0xFA,r0
	mov.w @(r0,r9),r3
	add 0x02,r0
	mov.w @(r0,r9),r2
	add 0x02,r0
	sub r3,r2
	mov.w r2,@(r0,r9)

loc_8c02cbca:
	mov.w @(0x66,PC),r0
	mov.w @(0x62,PC),r14
	mov.b @(r0,r9),r3
	tst r3,r3
	bf.s loc_8c02cbfa
	add r9,r14
	mov.w @(0x5E,PC),r5
	mov.w @(0x5A,PC),r6
	mov.l @(0x64,PC),r3
	add r9,r5
	add r9,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x52,PC),r1
	cmp/pl r0
	add r9,r1
	bf.s loc_8c02cbf4
	mov.l r0,@r1
	mov.w @(0x42,PC),r0
	bra loc_8c02cccc
	mov.b r12,@(r0,r9)

loc_8c02cbf4:
	mov.w @(0x36,PC),r0
	bra loc_8c02cf60
	mov.b r8,@(r0,r9)

loc_8c02cbfa:
	mov.w @(0x3E,PC),r13
	mov r13,r0
	nop
	add 0x59,r0
	mov.w @(0x30,PC),r5
	mov.l @(r0,r9),r4
	mov.w @(0x26,PC),r0
	mov.b @(r0,r9),r0
	cmp/eq 0x01,r0
	bt.s loc_8c02cc44
	add r9,r5
	cmp/eq 0x02,r0
	bt loc_8c02cc6c
	cmp/eq 0x03,r0
	bt loc_8c02cca0
	cmp/eq 0x04,r0
	bt loc_8c02ccb8
	cmp/eq 0x05,r0
	bt loc_8c02ccf8
	cmp/eq 0x06,r0
	bf loc_8c02cc28
	bra loc_8c02cd54
	nop

loc_8c02cc28:
	bra loc_8c02cd64
	nop

;###############################################
	#data 0x0342
	#data 0x0155
	#data 0x0346
	#data 0x0160
	#data 0x0156
	#data 0x02a0
	#data 0x0200
	#data 0x0158
	#data 0x00ff
	#align4
	#data 0x0cd000a0

;----------------------------------------------
loc_8c02cc44:
	mov.w @(0x90,PC),r0
	mov.l @(r0,r9),r3
	cmp/eq r13,r3
	bt loc_8c02cc5c
	mov.l @(0x90,PC),r1
	mov.l @(r0,r9),r3
	add 0x01,r3
	mov.l r3,@(r0,r9)
	mov.l @r1,r2
	add 0x01,r2
	cmp/eq r2,r3
	bt loc_8c02cc7e

loc_8c02cc5c:
	mov.w @(0x7A,PC),r5
	mov.w @(0x7A,PC),r4
	mov.l @(0x80,PC),r2
	add r9,r5
	jsr @r2
	add r9,r4
	bra loc_8c02cd64
	nop

loc_8c02cc6c:
	mov.w @(0x68,PC),r0
	mov.l @(r0,r9),r2
	cmp/eq r13,r2
	bt loc_8c02cc90
	mov.l @(r0,r9),r2
	add 0xFF,r2
	tst r2,r2
	bf.s loc_8c02cc90
	mov.l r2,@(r0,r9)

loc_8c02cc7e:
	mov.w @(0x58,PC),r5
	mov.w @(0x58,PC),r4
	mov.l @(0x64,PC),r2
	add r9,r5
	jsr @r2
	add r9,r4
	mov.w @(0x4A,PC),r0
	bra loc_8c02cd64
	mov.l r13,@(r0,r9)

loc_8c02cc90:
	mov.w @(0x46,PC),r5
	mov.w @(0x46,PC),r4
	mov.l @(0x54,PC),r2
	add r9,r5
	jsr @r2
	add r9,r4
	bra loc_8c02cd64
	nop

loc_8c02cca0:
	mov r4,r14
	mov.l @(0x4C,PC),r2
	mov.w @(0x34,PC),r4
	jsr @r2
	add r9,r4
	mov.w @(0x30,PC),r1
	tst r0,r0
	add r9,r1
	bt.s loc_8c02ccd2
	mov.l r0,@r1
	bra loc_8c02cccc
	nop

loc_8c02ccb8:
	mov r4,r14
	mov.l @(0x38,PC),r2
	mov.w @(0x1C,PC),r4
	jsr @r2
	add r9,r4
	mov.w @(0x18,PC),r1
	tst r0,r0
	add r9,r1
	bt.s loc_8c02ccd2
	mov.l r0,@r1

loc_8c02cccc:
	mov.w @(0x8,PC),r0
	bra loc_8c02cd64
	mov.l r12,@(r0,r9)

loc_8c02ccd2:
	mov.w @(0x8,PC),r0
	bra loc_8c02cd64
	mov.l r14,@(r0,r9)

;###############################################
	#data 0x015c
	#data 0x02a0
	#data 0x0200
	#data 0x0158
	#align4
	#data 0x8c1f9900
	#data 0x0cd000de
	#data 0x0cd00280
	#data 0x0cd000c0
	#data 0x0cd00226
	#data 0x0cd00208

;----------------------------------------------
loc_8c02ccf8:
	mov.w @(0xDE,PC),r5
	mov.w @(0xDA,PC),r0
	mov.w @(0xDC,PC),r4
	add r9,r5
	mov.l @(0xE8,PC),r3
	mov.l r12,@(r0,r9)
	jsr @r3
	add r9,r4
	mov.w @(0xD2,PC),r1
	mov.w @(0xCE,PC),r4
	add r9,r1
	mov.l r0,@r1
	bsr loc_8c02d17c
	add r9,r4
	mov.w @(0xC8,PC),r4
	mov r0,r7
	mov.w @(0xC0,PC),r5
	cmp/pl r7
	add r9,r4
	add r9,r5
	bf.s loc_8c02cd50
	mov r8,r6

loc_8c02cd24:
	mov.b @r4,r0
	mov.w @(0xB8,PC),r3
	and 0xF0,r0
	mov r0,r13
	extu.b r13,r14
	cmp/eq r3,r14
	bt loc_8c02cd3e
	mov.w @(0xAE,PC),r1
	cmp/eq r1,r14
	bt loc_8c02cd3e
	mov.w @(0xAA,PC),r0
	cmp/eq r0,r14
	bf loc_8c02cd44

loc_8c02cd3e:
	mov.b @r4+,r3
	mov.b r3,@r5
	add 0x01,r5

loc_8c02cd44:
	mov.b @r4+,r3
	add 0x01,r6
	cmp/ge r7,r6
	mov.b r3,@r5
	bf.s loc_8c02cd24
	add 0x01,r5

loc_8c02cd50:
	bra loc_8c02cd64
	mov.b r8,@r5

loc_8c02cd54:
	mov.l @(0x98,PC),r2
	mov.w @(0x82,PC),r4
	mov.l r14,@-r15
	jsr @r2
	add r9,r4
	add 0x04,r15
	mov.w @(0x76,PC),r0
	mov.b r8,@(r0,r9)

loc_8c02cd64:
	mov.w @(0x74,PC),r4
	bsr loc_8c02d17c
	add r9,r4
	mov r0,r4
	mov.w @(0x78,PC),r0
	mov.w @(0x6A,PC),r3
	mov r15,r14
	mov.w @(r0,r9),r0
	add r9,r3
	mov.l @(0x78,PC),r2
	add r4,r0
	mov.w r0,@(0x4,r9)
	mov.l r3,@-r15
	jsr @r2
	mov r14,r4
	mov.w @(0x54,PC),r0
	mov.b @(r0,r9),r3
	tst r3,r3
	bt.s loc_8c02cd96
	add 0x04,r15
	mov.w @(0x4A,PC),r5
	mov.l @(0x64,PC),r3
	add r9,r5
	jsr @r3
	mov r14,r4

loc_8c02cd96:
	mov r15,r10
	add 0x50,r10
	mov 0x41,r13
	mov r14,r4
	mov r8,r11
	mov r8,r5
	bra loc_8c02ce06
	mov 0x42,r7

loc_8c02cda6:
	mov.b @r4,r0
	mov r11,r14
	mov.w @(0x34,PC),r3
	shll2 r14
	and 0xF0,r0
	mov r0,r12
	extu.b r12,r6
	cmp/eq r3,r6
	bt.s loc_8c02cdc6
	add r10,r14
	mov.w @(0x26,PC),r1
	cmp/eq r1,r6
	bt loc_8c02cdc6
	mov.w @(0x22,PC),r0
	cmp/eq r0,r6
	bf loc_8c02cdf8

loc_8c02cdc6:
	mov r14,r2
	add 0x02,r2
	mov.b r7,@r14
	mov.b @r4+,r0
	mov.b r0,@(0x1,r2)
	mov.b @r4+,r0
	mov.b r0,@(0x2,r14)
	bra loc_8c02ce00
	add 0x02,r5

;###############################################
	#data 0x015c
	#data 0x02a0
	#data 0x0200
	#data 0x0158
	#data 0x0160
	#data 0x0080
	#data 0x0090
	#data 0x00e0
	#data 0x0340
	#align4
	#data 0x0cd0029e
	#data bank12.loc_8c129740
	#data bank12.loc_8c12977c

;----------------------------------------------
loc_8c02cdf8:
	add 0x01,r5
	mov.b r13,@r14
	mov.b @r4+,r0
	mov.b r0,@(0x2,r14)

loc_8c02ce00:
	mov.w @(0xE4,PC),r0
	add 0x01,r11
	mov.b r5,@(r0,r9)

loc_8c02ce06:
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c02cda6
	mov.w @(0xDA,PC),r0
	mov.w @(r0,r9),r14
	sub r11,r14
	tst r14,r14
	bf.s loc_8c02ce46
	mov.w r11,@(r0,r9)
	cmp/pl r11
	bt.s loc_8c02ce22
	mov r8,r4
	bra loc_8c02cf58
	nop

loc_8c02ce22:
	mov.w @(0xC6,PC),r0
	mov r9,r3
	add 0x14,r3
	mov r4,r2
	mov.w @(r0,r9),r1
	shll2 r2
	add r10,r2
	add r4,r1
	shll2 r1
	add r3,r1
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov 0x04,r0
	add 0x01,r4
	cmp/ge r11,r4
	bf loc_8c02ce22
	bra loc_8c02cf58
	nop

loc_8c02ce46:
	cmp/pl r14
	bf loc_8c02cede
	mov.w @(0x9E,PC),r0
	mov.w @(r0,r9),r4
	bra loc_8c02ce7a
	add r11,r4

loc_8c02ce52:
	mov r4,r2
	mov r9,r6
	add r14,r2
	mov r4,r5
	add 0x14,r6
	mov.l @(0x90,PC),r3
	shll2 r2
	mov r6,r1
	shll2 r5
	add r6,r2
	add r5,r1
	jsr @r3
	mov 0x04,r0
	mov r9,r3
	add 0x14,r3
	add r5,r3
	mov.b @r3,r0
	add 0x01,r4
	or 0x50,r0
	mov.b r0,@r3

loc_8c02ce7a:
	mov.w @(0x2,r9),r0
	sub r14,r0
	add 0xFF,r0
	cmp/gt r0,r4
	bf loc_8c02ce52
	cmp/pl r14
	bf.s loc_8c02cea0
	mov r8,r4

loc_8c02ce8a:
	mov.w @(0x2,r9),r0
	mov r9,r3
	add 0x14,r3
	sub r4,r0
	add 0xFF,r0
	add 0x01,r4
	shll2 r0
	cmp/ge r14,r4
	add r3,r0
	bf.s loc_8c02ce8a
	mov.b r8,@r0

loc_8c02cea0:
	cmp/pl r11
	bf.s loc_8c02cf52
	mov r8,r4

loc_8c02cea6:
	mov.w @(0x42,PC),r0
	mov r9,r3
	add 0x14,r3
	mov r4,r2
	mov.w @(r0,r9),r1
	shll2 r2
	add r10,r2
	add r4,r1
	shll2 r1
	add r3,r1
	mov.l @(0x34,PC),r3
	jsr @r3
	mov 0x04,r0
	mov.w @(0x28,PC),r0
	mov r9,r2
	add 0x14,r2
	mov.w @(r0,r9),r3
	add r4,r3
	shll2 r3
	add r2,r3
	mov.b @r3,r0
	add 0x01,r4
	cmp/ge r11,r4
	or 0x40,r0
	mov.b r0,@r3
	bf loc_8c02cea6
	bra loc_8c02cf52
	nop
 
loc_8c02cede:
	cmp/pz r14
	bt loc_8c02cf58
	mov.w @(0x2,r9),r0
	bra loc_8c02cf20
	mov r0,r4

;###############################################
	#data 0x0157
	#data 0x0344
	#data 0x0340
	#align4
	#data bank12.loc_8c129620

;----------------------------------------------
loc_8c02cef4:
	mov r4,r5
	mov r9,r7
	sub r14,r5
	mov r4,r6
	add 0x14,r7
	mov r7,r3
	shll2 r5
	shll2 r6
	add r5,r3
	mov r7,r0
	nop
	mov.b @(r0,r6),r0
	mov r9,r7
	add 0x14,r7
	or 0x40,r0
	add r7,r5
	mov.b r0,@r3
	mov r7,r0
	nop
	add r6,r0
	mov.w @(0x2,r0),r0
	mov.w r0,@(0x2,r5)

loc_8c02cf20:
	mov.w @(0x84,PC),r0
	add 0xFF,r4
	mov.w @(r0,r9),r3
	add 0xFF,r3
	cmp/ge r3,r4
	bt loc_8c02cef4
	cmp/pl r11
	bf.s loc_8c02cf52
	mov r8,r4

loc_8c02cf32:
	mov.w @(0x74,PC),r0
	mov r9,r3
	add 0x14,r3
	mov r4,r2
	mov.w @(r0,r9),r1
	shll2 r2
	add r10,r2
	add r4,r1
	shll2 r1
	add r3,r1
	mov.l @(0x68,PC),r3
	jsr @r3
	mov 0x04,r0
	add 0x01,r4
	cmp/ge r11,r4
	bf loc_8c02cf32

loc_8c02cf52:
	mov.w @(0x2,r9),r0
	sub r14,r0
	mov.w r0,@(0x2,r9)

loc_8c02cf58:
	mov.w @(0x4C,PC),r1
	mov.w @(0x4,r9),r0
	add r9,r1
	mov.w r0,@r1

loc_8c02cf60:
	mov.w @(0x48,PC),r1
	add r1,r15
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
loc_8c02cf76:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0x28,PC),r0
	add r0,r15
	mov.l @(0x2C,PC),r11
	mov.w @(0x2,r11),r0
	tst r0,r0
	bf loc_8c02cf92
	bra loc_8c02d13c
	nop

loc_8c02cf92:
	mov.l @(0x24,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x04,r0
	bf loc_8c02cfa0
	bra loc_8c02d13c
	nop

loc_8c02cfa0:
	mov 0x00,r10
	mov r10,r13
	bra loc_8c02cfbe
	mov 0x20,r4

;###############################################
	#data 0x0342
	#data 0x0340
	#data 0x0190
	#data 0xff5c
	#align4
	#data bank12.loc_8c129620
	#data 0x8c1f97a8
	#data 0x8c1f9b9a

;----------------------------------------------
loc_8c02cfbc:
	add 0x01,r13

loc_8c02cfbe:
	mov.w @(0x4,r11),r0
	mov r11,r2
	add 0x14,r2
	sub r13,r0
	mov r0,r5
	add 0xFF,r5
	mov r5,r3
	shll2 r3
	add r2,r3
	mov.b @r3,r1
	extu.b r1,r1
	tst r4,r1
	bt loc_8c02cfdc
	cmp/pz r5
	bt loc_8c02cfbc

loc_8c02cfdc:
	tst r13,r13
	bf loc_8c02cfe4
	bra loc_8c02d13c
	nop

loc_8c02cfe4:
	cmp/pl r13
	mov r15,r12
	mov r10,r4
	bf.s loc_8c02d016
	add 0x54,r12

loc_8c02cfee:
	mov r4,r0
	nop
	mov 0x04,r3
	mov r11,r2
	add r11,r3
	mov r4,r1
	mov.w @r3,r3
	add 0x14,r2
	add r12,r1
	sub r13,r3
	add r4,r3
	shll2 r3
	add r2,r3
	mov 0x02,r2
	add r3,r2
	mov.b @r2,r3
	add 0x01,r4
	cmp/ge r13,r4
	mov.b r3,@r1
	bf loc_8c02cfee

loc_8c02d016:
	mov r13,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c02d036
	mov 0x54,r0
	mov.b @(r0,r15),r0
	cmp/eq 0x6E,r0
	bf loc_8c02d02a
	bra loc_8c02d13c
	nop

loc_8c02d02a:
	mov 0x54,r0
	mov.b @(r0,r15),r0
	cmp/eq 0x4E,r0
	bf loc_8c02d036
	bra loc_8c02d13c
	nop

loc_8c02d036:
	mov r13,r0
	nop
	mov.l @(0x90,PC),r3
	mov r15,r14
	mov.b r10,@(r0,r12)
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x01,r0
	bt.s loc_8c02d056
	add 0x04,r14
	mov.l @(0x84,PC),r1
	mov r14,r5
	jsr @r1
	mov r12,r4
	bra loc_8c02d05e
	nop

loc_8c02d056:
	mov.l @(0x7C,PC),r2
	mov r14,r5
	jsr @r2
	mov r12,r4

loc_8c02d05e:
	mov r0,r4
	tst r4,r4
	bf loc_8c02d13c
	mov r14,r5
	mov r10,r4
	bra loc_8c02d0aa
	mov 0x42,r6

loc_8c02d06c:
	mov.w @(0x4,r11),r0
	mov r11,r3
	add 0x14,r3
	sub r13,r0
	add r4,r0
	shll2 r0
	add r3,r0
	mov r11,r3
	mov r0,r2
	mov.b @r5+,r0
	add 0x02,r2
	mov.b r0,@(0x1,r2)
	add 0x14,r3
	mov.w @(0x4,r11),r0
	mov 0x02,r2
	sub r13,r0
	add r4,r0
	shll2 r0
	add r3,r0
	mov.b @r5+,r3
	add r0,r2
	mov.b r3,@r2
	mov r11,r3
	mov.w @(0x4,r11),r0
	add 0x14,r3
	sub r13,r0
	add r4,r0
	shll2 r0
	add r3,r0
	add 0x01,r4
	mov.b r6,@r0

loc_8c02d0aa:
	mov.b @r5,r2
	tst r2,r2
	bf loc_8c02d06c
	mov r13,r14
	sub r4,r14
	shll r4
	sub r4,r13
	mov.l r13,@r15
	mov.w @(0x4,r11),r0
	mov r0,r5
	mov.w @(0x2,r11),r0
	cmp/ge r0,r5
	bt loc_8c02d10c
	cmp/pl r14
	bf loc_8c02d10c
	bra loc_8c02d106
	mov r5,r4

;###############################################
	#align4
	#data 0x8c1f9b9a
	#data 0x0cd00064
	#data 0x0cd00082

;----------------------------------------------
loc_8c02d0d8:
	mov r11,r7
	mov r4,r5
	add 0x14,r7
	mov r4,r6
	shll2 r5
	mov r7,r2
	sub r14,r6
	mov r7,r3
	add r5,r2
	mov r11,r7
	mov.w @(0x2,r2),r0
	shll2 r6
	add 0x14,r7
	add r6,r3
	mov r0,r1
	add r7,r6
	mov.w r0,@(0x2,r3)
	mov r7,r0
	nop
	mov.b @(r0,r5),r0
	add 0x01,r4
	or 0x40,r0
	mov.b r0,@r6

loc_8c02d106:
	mov.w @(0x2,r11),r0
	cmp/ge r0,r4
	bf loc_8c02d0d8

loc_8c02d10c:
	cmp/pl r14
	bf.s loc_8c02d128
	mov r10,r4

loc_8c02d112:
	mov.w @(0x2,r11),r0
	mov r11,r3
	add 0x14,r3
	sub r4,r0
	sub r4,r0
	add 0x01,r4
	shll2 r0
	cmp/ge r14,r4
	add r3,r0
	bf.s loc_8c02d112
	mov.b r10,@r0

loc_8c02d128:
	mov.w @(0x2,r11),r0
	sub r14,r0
	mov.w r0,@(0x2,r11)
	mov.w @(0x4,r11),r0
	sub r14,r0
	mov.w r0,@(0x4,r11)
	mov.w @(0xE,r11),r0
	mov.l @r15,r3
	sub r3,r0
	mov.w r0,@(0xE,r11)

loc_8c02d13c:
	mov.w @(0x72,PC),r1
	add r1,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02d14e:
	mov.l @(0x6C,PC),r6
	mov 0x00,r4
	mov 0x10,r7
	mov.w @(0x2,r6),r0
	bra loc_8c02d16e
	mov r0,r5

loc_8c02d15a:
	mov r6,r3
	mov r4,r2
	add 0x14,r3
	shll2 r2
	add r3,r2
	mov.b @r2,r1
	extu.b r1,r1
	tst r7,r1
	bt loc_8c02d172
	add 0x01,r4

loc_8c02d16e:
	cmp/ge r5,r4
	bf loc_8c02d15a

loc_8c02d172:
	cmp/eq r5,r4
	bf loc_8c02d178
	mov 0xFF,r4

loc_8c02d178:
	rts
	mov r4,r0

;==============================================
loc_8c02d17c:
	mov.l r14,@-r15
	mov.w @(0x32,PC),r14
	bra loc_8c02d1a4
	mov 0x00,r5

loc_8c02d184:
	mov.b @r4,r0
	and 0xF0,r0
	mov r0,r6
	extu.b r6,r7
	cmp/eq r14,r7
	bt loc_8c02d19c
	mov.w @(0x22,PC),r3
	cmp/eq r3,r7
	bt loc_8c02d19c
	mov.w @(0x1E,PC),r1
	cmp/eq r1,r7
	bf loc_8c02d1a0

loc_8c02d19c:
	bra loc_8c02d1a2
	add 0x02,r4

loc_8c02d1a0:
	add 0x01,r4

loc_8c02d1a2:
	add 0x01,r5

loc_8c02d1a4:
	mov.b @r4,r2
	tst r2,r2
	bf loc_8c02d184
	mov r5,r0
	nop
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00a4
	#data 0x0080
	#data 0x0090
	#data 0x00e0
	#align4
	#data 0x8c1f97a8

;==============================================
loc_8c02d1c0:
	mov.l @(0x48,PC),r3
	mov 0x4C,r0
	mov.l @r3,r5
	mov.b @(r0,r5),r0
	cmp/eq 0x05,r0
	bf loc_8c02d1d0
	mov 0x18,r0
	mov.b @(r0,r5),r4

loc_8c02d1d0:
	mov 0x01,r3
	mov.l @(0x3C,PC),r7
	extu.b r4,r6
	tst r6,r3
	bt.s loc_8c02d1ec
	mov 0x00,r5
	mov r7,r4
	mov.w @(0x10,r4),r0
	mov.w @(0x24,PC),r3
	and r3,r0
	mov r0,r2
	mov.w @(0x4,r4),r0
	or r2,r0
	or r0,r5

loc_8c02d1ec:
	mov 0x02,r3
	tst r3,r6
	bt loc_8c02d204
	mov r7,r4
	add 0x14,r4
	mov.w @(0x10,r4),r0
	mov.w @(0xC,PC),r2
	and r2,r0
	mov r0,r1
	mov.w @(0x4,r4),r0
	or r1,r0
	or r0,r5

loc_8c02d204:
	rts
	mov r5,r0

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x3f60
	#align4
	#data 0x8c26823c
	#data 0x8c2681dc

;==============================================
loc_8c02d214:
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
	add 0xAC,r15
	fldi1 fr13
	mov 0x30,r0
	mov 0xFF,r4
	mov.l @(0x118,PC),r9
	mov r15,r5
	mov 0x00,r8
	mov 0x05,r3
	mov.l @(0x10C,PC),r12
	add 0x04,r5
	fmov fr13,fr4
	mov.l r8,@(0x2C,r15)
	fmov fr13,@(r0,r15)
	mov 0x40,r0
	mov.l r4,@(0x34,r15)
	mov.l r3,@(0x38,r15)
	mov.l r4,@(0x3C,r15)
	mov.w @(0xF6,PC),r4
	mov.l r8,@(r0,r15)
	bsr loc_8c02d508
	add r9,r4
	mov 0x1C,r0
	mov.l @(0xF8,PC),r11
	fmov @(r0,r12),fr3
	mov 0x08,r0
	mov r15,r4
	fmov fr3,@(r0,r15)
	mov 0x20,r0
	fmov @(r0,r12),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x24,r0
	fmov @(r0,r12),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	jsr @r11
	add 0x04,r4
	mov.l @(0xE0,PC),r10
	mov.w @(0x4,r10),r0
	mov r0,r4
	mov.w @(0x6,r10),r0
	exts.w r4,r3
	cmp/eq r0,r3
	bt loc_8c02d290
	mov r4,r0
	nop
	mov.w r0,@(0x6,r10)
	mov r8,r0
	nop
	mov.w r0,@(0x8,r10)

loc_8c02d290:
	mov.w @(0x8,r10),r0
	mov.l @(0xC8,PC),r3
	mov r0,r1
	mov.w @(0xB0,PC),r0
	jsr @r3
	add 0x09,r1
	mov r15,r5
	add 0x04,r5
	mov r9,r4
	fmov fr13,fr4
	mov.w r0,@(0x8,r10)
	bsr loc_8c02d508
	add 0x32,r4
	mova @(0xB4,PC),r0
	fmov @r0,fr12
	mova @(0xB4,PC),r0
	fmov @r0,fr14
	mov.b @(0xB,r10),r0
	fmov fr12,fr0
	mov r0,r3
	lds r3,fpul
	mov.b @(0xA,r10),r0
	mov r0,r3
	float fpul,fr3
	lds r3,fpul
	mov 0x1C,r0
	float fpul,fr2
	fmov fr3,fr1
	fmov @(r0,r12),fr3
	mova @(0x9C,PC),r0
	fmac fr0,fr2,fr3
	fmov fr14,fr0
	fmov @r0,fr2
	mov 0x08,r0
	fmac fr0,fr1,fr3
	fadd fr2,fr3
	fmov fr3,@(r0,r15)
	mov 0x20,r0
	fmov @(r0,r12),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov 0x24,r0
	fmov @(r0,r12),fr1
	fadd fr3,fr1
	mov 0x10,r0
	mov.l @(0x90,PC),r2
	fmov fr1,@(r0,r15)
	mova @(0x7C,PC),r0
	fmov @r0,fr15
	mov.w @(0x8,r10),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x74,PC),r0
	mov.l @(0x7C,PC),r3
	fmov @r0,fr0
	mova @(0x74,PC),r0
	float fpul,fr1
	fmov @r0,fr2
	fmul fr0,fr1
	fdiv fr2,fr1
	fmov fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x30,r0
	fmov fr15,fr0
	mov r15,r4
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r11
	add 0x04,r4
	mov 0x30,r0
	bsr loc_8c02d14e
	fmov fr13,@(r0,r15)
	cmp/pz r0
	bt loc_8c02d338
	bra loc_8c02d4ba
	nop

loc_8c02d338:
	mov.w @(0xC,r10),r0
	mov 0x02,r5
	mov r8,r13
	mov 0x10,r6
	mov r0,r4
	mov.w @(0x2,r10),r0
	bra loc_8c02d3bc
	mov r0,r7

;###############################################
	#data 0x00b4
	#data 0x0168
	#align4
	#data 0x8c1f9b94
	#data bank14.loc_8c14b94c
	#data bank12.loc_8c1244b0
	#data 0x8c1f97a8
	#data bank12.loc_8c1292d4
	#data 0x41400000
	#data 0x41a00000
	#data 0xc1200000
	#data 0xbe4ccccd
	#data 0x3f000000
	#data 0x47800000
	#data 0x43b40000
	#data 0x0000ffff
	#data bank11.loc_8c11e2e0

;----------------------------------------------
loc_8c02d384:
	mov r10,r3
	mov r4,r2
	add 0x14,r3
	shll2 r2
	add r3,r2
	mov.b @r2,r1
	extu.b r1,r1
	tst r6,r1
	bt loc_8c02d3c0
	mov r10,r2
	mov r4,r3
	add 0x14,r2
	shll2 r3
	add r2,r3
	mov.b @r3,r1
	extu.b r1,r1
	tst r5,r1
	bt loc_8c02d3b0
	lds r13,fpul
	float fpul,fr3
	bra loc_8c02d3b6
	fadd fr14,fr3

loc_8c02d3b0:
	lds r13,fpul
	float fpul,fr3
	fadd fr12,fr3

loc_8c02d3b6:
	ftrc fr3,fpul
	add 0x01,r4
	sts fpul,r13

loc_8c02d3bc:
	cmp/ge r7,r4
	bf loc_8c02d384

loc_8c02d3c0:
	mov r7,r2
	add 0xFF,r2
	cmp/gt r2,r4
	bt loc_8c02d4ba
	mova @(0x28,PC),r0
	fmov @r0,fr4
	bra loc_8c02d40c
	mov r8,r14

loc_8c02d3d0:
	mov r10,r3
	mov r4,r8
	add 0x14,r3
	shll2 r8
	add r3,r8
	mov.b @r8,r2
	extu.b r2,r2
	tst r6,r2
	bf loc_8c02d410
	mov.b @r8,r3
	extu.b r3,r3
	tst r5,r3
	bt loc_8c02d3f8
	lds r14,fpul
	float fpul,fr3
	bra loc_8c02d3fe
	fadd fr14,fr3

;###############################################
	#align4
	#data 0x43dc0000

;==============================================
loc_8c02d3f8:
	lds r14,fpul
	float fpul,fr3
	fadd fr12,fr3

loc_8c02d3fe:
	ftrc fr3,fpul
	sts fpul,r14
	lds r14,fpul
	float fpul,fr2
	fcmp/gt fr2,fr4
	bf loc_8c02d410
	add 0x01,r4

loc_8c02d40c:
	cmp/ge r7,r4
	bf loc_8c02d3d0

loc_8c02d410:
	tst r14,r14
	bt loc_8c02d4ba
	mov.w @(0xD6,PC),r4
	mov r15,r5
	fmov fr13,fr4
	add 0x04,r5
	bsr loc_8c02d508
	add r9,r4
	lds r13,fpul
	mova @(0xD0,PC),r0
	fmov @r0,fr12
	mov 0x1C,r0
	mov.l @(0xCC,PC),r8
	float fpul,fr3
	lds r14,fpul
	fmov fr3,@r15
	fmov @(r0,r8),fr2
	mov 0x08,r0
	fadd fr3,fr2
	fadd fr12,fr2
	fmov fr2,@(r0,r15)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x20,r0
	fmov @(r0,r8),fr2
	mov 0x0C,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mova @(0xB4,PC),r0
	fmov @r0,fr2
	mov 0x24,r0
	fmov @(r0,r8),fr1
	mov 0x10,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r15)
	mova @(0xAC,PC),r0
	fmov @r0,fr15
	mov 0x14,r0
	fmov @(r0,r15),fr1
	fdiv fr15,fr1
	float fpul,fr0
	mov 0x14,r0
	mov r15,r4
	fmul fr0,fr1
	fmov fr0,fr14
	fmov fr1,@(r0,r15)
	jsr @r11
	add 0x04,r4
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r10),r3
	tst r3,r3
	bt loc_8c02d4ba
	mov.w @(0x76,PC),r4
	mov r15,r5
	fmov fr13,fr4
	add 0x04,r5
	bsr loc_8c02d508
	add r9,r4
	mov 0x1C,r0
	fmov @r15,fr3
	fmov @(r0,r8),fr2
	mov 0x08,r0
	fldi0 fr4
	mov r15,r4
	fadd fr3,fr2
	fadd fr12,fr2
	fmov fr2,@(r0,r15)
	mov 0x20,r0
	fmov @(r0,r8),fr3
	mov 0x0C,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x24,r0
	fmov @(r0,r8),fr3
	mov 0x10,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r15),fr3
	mov 0x14,r0
	fdiv fr15,fr3
	fmul fr14,fr3
	fmov fr3,@(r0,r15)
	jsr @r11
	add 0x04,r4

loc_8c02d4ba:
	mov 0x16,r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c02d4cc
	mov r15,r4
	bsr loc_8c02d574
	add 0x04,r4
	bra loc_8c02d4d2
	nop

loc_8c02d4cc:
	mov r15,r4
	bsr loc_8c02d8ac
	add 0x04,r4

loc_8c02d4d2:
	add 0x54,r15
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
	#data 0x0118
	#data 0x0155
	#data 0x0122
	#align4
	#data 0x41000000
	#data 0x8c1f9b94
	#data 0xc0000000
	#data 0xbe99999a
	#data 0x42000000

;==============================================
loc_8c02d508:
	mov.w @(0x8,r4),r0
	mov.w @(0x124,PC),r3
	extu.w r0,r0
	add r3,r0
	mov.l r0,@r5
	mova @(0x120,PC),r0
	mov.w @r4,r2
	fmov @r0,fr5
	mov 0x18,r0
	lds r2,fpul
	float fpul,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r5)
	mov.w @(0x2,r4),r0
	mov r0,r2
	lds r2,fpul
	mov 0x1C,r0
	float fpul,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r5)
	mov.w @(0x4,r4),r0
	mov r0,r2
	lds r2,fpul
	mov 0x20,r0
	float fpul,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r5)
	mov.w @(0x6,r4),r0
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr5,fr3
	mov 0x24,r0
	fmov fr3,@(r0,r5)
	mov.w @r4,r2
	mov.w @(0x4,r4),r0
	sub r2,r0
	lds r0,fpul
	mov 0x10,r0
	float fpul,fr3
	fdiv fr5,fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r5)
	mov.w @(0x6,r4),r0
	mov r0,r2
	mov.w @(0x2,r4),r0
	sub r0,r2
	lds r2,fpul
	mov 0x14,r0
	float fpul,fr3
	fdiv fr5,fr3
	fmul fr4,fr3
	rts
	fmov fr3,@(r0,r5)

;==============================================
loc_8c02d574:
	mov.l r14,@-r15
	mov 0x30,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov r4,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x10,r8
	mov.l @(0xB0,PC),r11
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	fmov @(r0,r11),fr3
	mov 0x0C,r0
	mov.l @(0xA0,PC),r9
	fmov fr3,@(r0,r10)
	fldi1 fr15
	bra loc_8c02d6ea
	mov 0x00,r14

;==============================================
loc_8c02d59e:
	mov r14,r4
	mov.l @(0x9C,PC),r0
	shll r4
	mov r14,r3
	add r3,r4
	fmov fr14,fr0
	mov.b @(r0,r4),r3
	mov 0x28,r0
	fmov @(r0,r11),fr2
	mov 0x04,r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r10)
	mov.l @(0x84,PC),r0
	mov.b @(r0,r4),r3
	mov 0x2C,r0
	fmov @(r0,r11),fr2
	mov 0x08,r0
	extu.b r3,r3
	mov.l @(0x7C,PC),r4
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r10)
	mov r14,r0
	nop
	mov.l @(0x70,PC),r5
	mov 0x00,r6
	mov.b @(r0,r4),r13
	mov 0x00,r4
	add r5,r6
	mov r6,r5
	extu.b r13,r13

loc_8c02d5e8:
	mov.b @r6,r3
	extu.b r3,r3
	cmp/eq r3,r14
	bf loc_8c02d6c6
	mov.w @(0x8,r11),r0
	extu.w r0,r7
	mov 0x18,r0
	mov.b @(r0,r11),r12
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c02d610
	cmp/eq 0x01,r0
	bt loc_8c02d690
	cmp/eq 0x02,r0
	bt loc_8c02d69c
	cmp/eq 0x03,r0
	bt loc_8c02d6ae
	bra loc_8c02d6c6
	nop

loc_8c02d610:
	mov r14,r0
	nop
	cmp/eq 0x02,r0
	bt loc_8c02d620
	cmp/eq 0x03,r0
	bt loc_8c02d650
	bra loc_8c02d666
	nop

loc_8c02d620:
	mov 0x08,r0
	and r7,r0
	cmp/eq 0x08,r0
	bf loc_8c02d658
	extu.b r12,r0
	cmp/eq 0x01,r0
	bt loc_8c02d68a
	bra loc_8c02d6c6
	nop

;###############################################
	#data 0x0850
	#align4
	#data 0x44000000
	#data bank12.loc_8c1244b0
	#data 0x8c1f9b94
	#data 0x8c1f9bde
	#data 0x8c1f9bdf
	#data bank14.loc_8c149953
	#data bank14.loc_8c14999e

;----------------------------------------------
loc_8c02d650:
	mov 0x08,r0
	and r7,r0
	cmp/eq 0x08,r0
	bt loc_8c02d65c

loc_8c02d658:
	bra loc_8c02d6b8
	mov 0x0F,r7

loc_8c02d65c:
	extu.b r12,r0
	cmp/eq 0x02,r0
	bf loc_8c02d6c6
	bra loc_8c02d68a
	nop

loc_8c02d666:
	extu.b r12,r12
	tst r12,r12
	bf loc_8c02d6c6
	mov.w @(0x6,r11),r0
	mov 0x40,r7
	extu.w r0,r0
	tst r7,r0
	bf loc_8c02d682
	mov r14,r0
	nop
	cmp/eq 0x04,r0
	bf loc_8c02d6c6
	bra loc_8c02d68a
	nop

loc_8c02d682:
	mov r14,r0
	nop
	cmp/eq 0x05,r0
	bf loc_8c02d6c6

loc_8c02d68a:
	mov 0x1F,r7
	bra loc_8c02d6c6
	mov r7,r13

loc_8c02d690:
	extu.b r12,r12
	tst r12,r12
	bt loc_8c02d6c6
	mov 0x04,r7
	bra loc_8c02d6c6
	mov r7,r13

loc_8c02d69c:
	mov 0x17,r0
	mov.b @(r0,r11),r2
	tst r2,r2
	bf loc_8c02d6b6
	mov 0x08,r3
	tst r3,r7
	bt loc_8c02d6c2
	bra loc_8c02d6c6
	nop

loc_8c02d6ae:
	mov 0x17,r0
	mov.b @(r0,r11),r1
	tst r1,r1
	bf loc_8c02d6bc

loc_8c02d6b6:
	mov 0x1E,r7

loc_8c02d6b8:
	bra loc_8c02d6c6
	mov r7,r13

loc_8c02d6bc:
	mov.w @(0x82,PC),r12
	tst r12,r7
	bt loc_8c02d6c6

loc_8c02d6c2:
	mov 0x0E,r7
	mov r7,r13

loc_8c02d6c6:
	add 0x01,r4
	cmp/hs r8,r4
	add 0x02,r5
	bf.s loc_8c02d5e8
	add 0x02,r6
	mov r13,r4
	mov r13,r3
	shll2 r4
	mov.l @(0x6C,PC),r2
	add r3,r4
	mov r10,r5
	shll r4
	fmov fr15,fr4
	bsr loc_8c02d508
	add r2,r4
	jsr @r9
	mov r10,r4
	add 0x01,r14

loc_8c02d6ea:
	mov 0x4B,r3
	cmp/ge r3,r14
	mova @(0x58,PC),r0
	bt.s loc_8c02d6f8
	fmov @r0,fr14
	bra loc_8c02d59e
	nop

loc_8c02d6f8:
	mov.w @(0x6,r11),r0
	extu.w r0,r0
	tst 0x02,r0
	bt loc_8c02d724
	mov.w @(0x6,r11),r0
	mov.l @(0x48,PC),r14
	extu.w r0,r4
	mov r4,r5
	and r8,r5
	tst r5,r5
	bt loc_8c02d714
	mov 0x40,r2
	tst r4,r2
	bt loc_8c02d71e

loc_8c02d714:
	mov 0x40,r1
	tst r4,r1
	bt loc_8c02d730
	tst r5,r5
	bf loc_8c02d730

loc_8c02d71e:
	mov.l @(0x30,PC),r14
	bra loc_8c02d730
	nop

loc_8c02d724:
	mov.w @(0x6,r11),r0
	mov.l @(0x2C,PC),r14
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c02d730
	mov.l @(0x28,PC),r14

loc_8c02d730:
	mov.l @(0x28,PC),r1
	mov 0x0C,r0
	fmov @(r0,r10),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r10)
	bra loc_8c02d7d6
	mov 0x00,r13

;###############################################
	#data 0x0100
	#align4
	#data bank14.loc_8c14b94c
	#data 0x42000000
	#data bank14.loc_8c1499fa
	#data bank14.loc_8c149a26
	#data bank14.loc_8c1499be
	#data bank14.loc_8c1499dc
	#data 0x3e4ccccd

;----------------------------------------------
loc_8c02d760:
	mov.b @r14,r2
	extu.b r2,r2
	cmp/eq r13,r2
	bf loc_8c02d7d4
	mov r13,r4
	mov.l @(0x124,PC),r0
	shll r4
	mov r13,r3
	add r3,r4
	fmov fr14,fr0
	mov.b @(r0,r4),r3
	mov 0x28,r0
	fmov @(r0,r11),fr2
	mov 0x04,r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r10)
	mov.l @(0x108,PC),r0
	mov.b @(r0,r4),r3
	mov 0x2C,r0
	fmov @(r0,r11),fr2
	mov 0x08,r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r10)
	mov.b @(0x1,r14),r0
	extu.b r0,r12
	mov r13,r0
	nop
	cmp/eq 0x46,r0
	bf loc_8c02d7ba
	mov r12,r0
	nop
	cmp/eq 0x20,r0
	bf loc_8c02d7ba
	mov 0x17,r0
	mov.b @(r0,r11),r3
	extu.b r3,r3
	add r3,r12

loc_8c02d7ba:
	mov r12,r4
	mov r12,r3
	shll2 r4
	mov.l @(0xD4,PC),r2
	add r3,r4
	mov r10,r5
	shll r4
	fmov fr15,fr4
	bsr loc_8c02d508
	add r2,r4
	add 0x02,r14
	jsr @r9
	mov r10,r4

loc_8c02d7d4:
	add 0x01,r13

loc_8c02d7d6:
	mov 0x4B,r2
	cmp/ge r2,r13
	bf loc_8c02d760
	mov.l @(0xBC,PC),r1
	mov 0x0C,r0
	fmov @(r0,r10),fr2
	lds r1,fpul
	mov.l @(0xB8,PC),r2
	fmov fr14,fr0
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r10)
	mov.b @r2,r3
	mov.l @(0x9C,PC),r0
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	mov r2,r1
	mov.b @(r0,r3),r3
	mov 0x28,r0
	fmov @(r0,r11),fr1
	mov 0x04,r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr2
	fmul fr15,fr2
	fmac fr0,fr2,fr1
	fmov fr1,@(r0,r10)
	mov.b @r1,r3
	extu.b r3,r3
	mov r3,r0
	nop
	shll r3
	add r0,r3
	mov.l @(0x74,PC),r0
	mov.b @(r0,r3),r3
	mov 0x2C,r0
	fmov @(r0,r11),fr1
	mov 0x08,r0
	extu.b r3,r3
	lds r3,fpul
	mov r1,r3
	mov.l @(0x74,PC),r1
	float fpul,fr2
	fmul fr15,fr2
	fmac fr0,fr2,fr1
	fmov fr1,@(r0,r10)
	mov.b @r3,r4
	mov.l @(0x54,PC),r0
	extu.b r4,r4
	mov r4,r2
	shll r4
	add r2,r4
	mov.b @r1,r2
	add r0,r4
	add 0xFA,r0
	mov.b @r0,r3
	cmp/eq r3,r2
	bt.s loc_8c02d85a
	fmov fr15,fr4
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	mov r0,r14
	bra loc_8c02d862
	add 0x05,r14

loc_8c02d85a:
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	mov r0,r14
	add 0x09,r14

loc_8c02d862:
	mov r14,r4
	shll2 r4
	mov r14,r3
	mov.l @(0x3C,PC),r2
	add r3,r4
	mov r10,r5
	shll r4
	bsr loc_8c02d508
	add r2,r4
	jsr @r9
	mov r10,r4
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

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c1f9bde
	#data 0x8c1f9bdf
	#data bank14.loc_8c14b7d0
	#data 0x3dcccccd
	#data 0x8c1f9bd8
	#data 0x8c1f9bda
	#data bank14.loc_8c14b94c

;==============================================
loc_8c02d8ac:
	mov.l r14,@-r15
	mov r4,r5
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.w @(0xFA,PC),r4
	mov.l @(0xFC,PC),r11
	fldi1 fr15
	fmov fr15,fr4
	bsr loc_8c02d508
	add r11,r4
	mov.l @(0xF8,PC),r12
	mov 0x34,r0
	mov.l @(0xF8,PC),r10
	fmov @(r0,r12),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @(r0,r12),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r13)
	mov 0x3C,r0
	fmov @(r0,r12),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r13)
	jsr @r10
	mov r13,r4
	mov 0x17,r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf.s loc_8c02d8f6
	mov 0x14,r14
	add 0x01,r14

loc_8c02d8f6:
	mov r14,r4
	mov r14,r3
	shll2 r4
	mov r13,r5
	add r3,r4
	fmov fr15,fr4
	shll r4
	bsr loc_8c02d508
	add r11,r4
	mov 0x34,r0
	mov.l @(0xC0,PC),r1
	fmov @(r0,r12),fr3
	mov 0x04,r0
	lds r1,fpul
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @(r0,r12),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r13)
	mov 0x0C,r0
	fmov @(r0,r13),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r13)
	jsr @r10
	mov r13,r4
	mov 0x18,r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c02d938
	bra loc_8c02d94e
	mov 0x16,r14

loc_8c02d938:
	cmp/eq 0x02,r0
	bf loc_8c02d940
	bra loc_8c02d94e
	mov 0x17,r14

loc_8c02d940:
	mov.w @(0x6,r12),r0
	extu.w r0,r0
	tst 0x40,r0
	bf loc_8c02d94c
	bra loc_8c02d94e
	mov 0x18,r14

loc_8c02d94c:
	mov 0x19,r14

loc_8c02d94e:
	mov r14,r4
	mov r14,r3
	shll2 r4
	mov r13,r5
	add r3,r4
	fmov fr15,fr4
	shll r4
	bsr loc_8c02d508
	add r11,r4
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r12),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r13)
	jsr @r10
	mov r13,r4
	mov 0x17,r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c02d9ac
	mov 0x19,r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt.s loc_8c02d988
	fmov fr15,fr4
	bra loc_8c02d98a
	mov 0x1B,r14

loc_8c02d988:
	mov 0x1A,r14

loc_8c02d98a:
	mov r14,r4
	shll2 r4
	mov r14,r3
	add r3,r4
	shll r4
	mov r13,r5
	bsr loc_8c02d508
	add r11,r4
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r12),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r13)
	jsr @r10
	mov r13,r4

loc_8c02d9ac:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00be
	#align4
	#data bank14.loc_8c14b94c
	#data 0x8c1f9b94
	#data bank12.loc_8c1244b0
	#data 0x3dcccccd
	#data 0x42000000
	#data 0x42800000

;==============================================
loc_8c02d9d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mova @(0x180,PC),r0
	fmov fr5,fr2
	mov.l @(0x188,PC),r3
	fmov fr5,fr14
	fmov fr4,@r15
	fmov @r0,fr3
	mova @(0x178,PC),r0
	fmov @r0,fr1
	mova @(0x178,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mova @(0x17C,PC),r0
	fmov fr5,fr3
	fabs fr3
	fmov fr6,fr13
	fdiv fr1,fr2
	fldi0 fr15
	fadd fr0,fr2
	ftrc fr2,fpul
	fmov @r0,fr2
	fcmp/eq fr2,fr3
	sts fpul,r13
	bf.s loc_8c02da1c
	and r3,r13
	bra loc_8c02da24
	fmov fr15,fr12

loc_8c02da1c:
	mov.l @(0x160,PC),r2
	jsr @r2
	mov r13,r4
	fmov fr0,fr12

loc_8c02da24:
	mova @(0x144,PC),r0
	fmov fr13,fr2
	fmov @r0,fr3
	mova @(0x144,PC),r0
	fmov @r0,fr1
	mova @(0x144,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mova @(0x144,PC),r0
	fmov fr13,fr3
	fabs fr3
	mov.l @(0x13C,PC),r3
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	fmov @r0,fr2
	fcmp/eq fr2,fr3
	sts fpul,r14
	bf.s loc_8c02da52
	and r3,r14
	mov 0x04,r0
	bra loc_8c02da5c
	fmov fr15,@(r0,r15)

loc_8c02da52:
	mov.l @(0x12C,PC),r1
	jsr @r1
	mov r14,r4
	mov 0x04,r0
	fmov fr0,@(r0,r15)

loc_8c02da5c:
	mova @(0x124,PC),r0
	fabs fr14
	fmov @r0,fr3
	fcmp/eq fr3,fr14
	bf loc_8c02da6a
	bra loc_8c02da72
	fmov fr15,fr14

loc_8c02da6a:
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov r13,r4
	fmov fr0,fr14

loc_8c02da72:
	mova @(0x110,PC),r0
	fabs fr13
	fmov @r0,fr3
	fcmp/eq fr3,fr13
	bf loc_8c02da80
	bra loc_8c02da88
	fmov fr15,fr4

loc_8c02da80:
	mov.l @(0x104,PC),r3
	jsr @r3
	mov r14,r4
	fmov fr0,fr4

loc_8c02da88:
	fmov @r15,fr5
	mov r15,r4
	mov 0x04,r0
	mov.l @(0xFC,PC),r3
	fmul fr14,fr5
	add 0x08,r4
	mov r4,r2
	fmov fr5,fr3
	fmul fr4,fr3
	fmov fr3,@r4
	fmov @r15,fr2
	fmul fr12,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x08,r0
	fmul fr3,fr5
	fmov fr5,@(r0,r4)
	mov.l @(0x30,r15),r1
	jsr @r3
	mov 0x0C,r0
	add 0x14,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02dac4:
	sts.l pr,@-r15
	add 0xFC,r15
	mova @(0xB0,PC),r0
	fmov fr5,fr3
	fmov fr5,@r15
	fmov @r0,fr5
	mov.l @(0x8,r15),r3
	fsub fr3,fr5
	bsr loc_8c02d9d8
	mov.l r3,@-r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8c02dae0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x08,r0
	mov r4,r14
	fldi0 fr2
	mov r5,r13
	mov.l r6,@(0x4,r15)
	mov.l r7,@r15
	fmov @(r0,r14),fr5
	fmov @r14,fr4
	fmov fr5,fr3
	fmul fr5,fr3
	fmov fr4,fr0
	fmac fr0,fr4,fr3
	fmov fr3,fr4
	fsqrt fr4
	fcmp/eq fr2,fr4
	bf.s loc_8c02db1e
	fmov fr3,@r13
	mov 0x04,r0
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02db1e
	mov.l @(0x4,r15),r2
	mov 0x00,r3
	mov.l r3,@r2
	bra loc_8c02db2a
	nop

loc_8c02db1e:
	mov.l @(0x70,PC),r3
	mov 0x04,r0
	mov.l @(0x4,r15),r8
	jsr @r3
	fmov @(r0,r14),fr5
	mov.l r0,@r8

loc_8c02db2a:
	mov 0x04,r0
	fmov @r13,fr3
	fmov @(r0,r14),fr4
	fldi0 fr2
	fmov fr4,fr0
	fmac fr0,fr4,fr3
	fsqrt fr3
	fmov fr3,@r13
	fmov @r14,fr3
	fcmp/eq fr2,fr3
	bf loc_8c02db52
	mov 0x08,r0
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02db52
	mov.l @r15,r2
	mov 0x00,r3
	mov.l r3,@r2
	bra loc_8c02db60
	nop

loc_8c02db52:
	mov 0x08,r0
	mov.l @(0x38,PC),r3
	fmov @(r0,r14),fr5
	mov.l @r15,r8
	jsr @r3
	fmov @r14,fr4
	mov.l r0,@r8

loc_8c02db60:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x47800000
	#data 0x43b40000
	#data 0x3f000000
	#data 0x0000ffff
	#data 0x42b40000
	#data bank11.loc_8c11e2e0
	#data 0x43340000
	#data bank11.loc_8c11e860
	#data bank12.loc_8c1294c8
	#data bank11.loc_8c11e210

;==============================================
loc_8c02db94:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c02dae0
	mov r6,r14
	mov.l @r14,r2
	mov.w @(0x6C,PC),r3
	add r3,r2
	mov.l r2,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c02dbaa:
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r7
	mov.l r5,@(0xC,r15)
	mov r15,r5
	mov r15,r6
	add 0x04,r7
	bsr loc_8c02db94
	add 0x08,r5
	mov.l @(0x50,PC),r3
	jsr @r3
	mov.l @(0x4,r15),r4
	mov.l @(0x50,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov.l @(0xC,r15),r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c02dbd6:
	sts.l pr,@-r15
	add 0xF0,r15
	mov 0x04,r0
	mov.l r6,@r15
	fmov @r5,fr2
	fmov @r4,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	mov r15,r4
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov.l @r15,r5
	bsr loc_8c02dbaa
	add 0x04,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0xc000
	#align4
	#data bank12.loc_8c120cd0
	#data bank12.loc_8c120b20
	#data bank12.loc_8c120d90

;==============================================
loc_8c02dc1c:
	mov.l @(0x274,PC),r5
	mov 0x00,r3
	mov.l r3,@r5
	rts
	mov.l r4,@(0x4,r5)

;==============================================
loc_8c02dc24:
	mov.l @(0x26C,PC),r6
	mov 0x01,r3
	mov.l r3,@r6
	mov.l r4,@(0x4,r6)
	rts
	mov.l r5,@(0x8,r6)

;==============================================
loc_8c02dc32:
	mov.l @(0x260,PC),r6
	mov 0x02,r3
	mov.l r3,@r6
	mov.l r4,@(0x4,r6)
	rts
	mov.l r5,@(0x8,r6)

;==============================================
loc_8c02dc3e:
	mov.l @(0x254,PC),r7
	mov 0x03,r3
	mov.l r3,@r7
	mov.l r4,@(0x4,r7)
	mov.l r5,@(0x8,r7)
	rts
	mov.l r6,@(0xC,r7)

;==============================================
loc_8c02dc4c:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x240,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c02dc68
	mov.l @(0x23C,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c02dc78

loc_8c02dc68:
	mov r15,r5
	mov r15,r6
	add 0x04,r5
	add 0x08,r6
	bsr loc_8c02dcd6
	mov r15,r4
	bra loc_8c02dc84
	nop

loc_8c02dc78:
	mov r15,r5
	mov r15,r6
	add 0x04,r5
	add 0x08,r6
	bsr loc_8c02de12
	mov r15,r4

loc_8c02dc84:
	mova @(0x21C,PC),r0
	mov.l @(0x20C,PC),r3
	fmov @r0,fr15
	mov.l @r3,r0
	mov.l @(0x210,PC),r14
	cmp/eq 0x00,r0
	bt loc_8c02dca2
	cmp/eq 0x01,r0
	bt loc_8c02dcac
	cmp/eq 0x02,r0
	bt loc_8c02dcb6
	cmp/eq 0x03,r0
	bt loc_8c02dcc0
	bra loc_8c02dccc
	nop

loc_8c02dca2:
	mov.l @r15,r6
	fmov fr15,fr4
	mov r6,r5
	bra loc_8c02dcc8
	mov r6,r4

loc_8c02dcac:
	mov.l @(0x4,r15),r5
	mov.l @r15,r6
	fmov fr15,fr4
	bra loc_8c02dcc8
	mov r6,r4

loc_8c02dcb6:
	mov.l @r15,r5
	mov.l @(0x4,r15),r6
	fmov fr15,fr4
	bra loc_8c02dcc8
	mov r5,r4

loc_8c02dcc0:
	mov.l @(0x4,r15),r5
	mov.l @r15,r4
	mov.l @(0x8,r15),r6
	fmov fr15,fr4

loc_8c02dcc8:
	jsr @r14
	nop

loc_8c02dccc:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02dcd6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x1B0,PC),r14
	mov r4,r13
	mov.l @(0x1C0,PC),r3
	mov.l r5,@(0x4,r15)
	mov.l r6,@r15
	jsr @r3
	mov 0x00,r12
	tst r0,r0
	bt loc_8c02dcfc
	mov.l @(0x1B8,PC),r2
	mov.l r12,@r14
	mov.l @r2,r3
	bra loc_8c02de06
	mov.l r3,@r13

loc_8c02dcfc:
	mov.l @(0x1B0,PC),r0
	mov.l @r0,r4
	mov 0x76,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c02dd14
	mov.b @(0x6,r4),r0
	tst r0,r0
	bt loc_8c02dd14
	mov.l r12,@r14
	bra loc_8c02de06
	mov.l r12,@r13

loc_8c02dd14:
	mov.l @(0x19C,PC),r4
	mov 0x04,r0
	fmov @(r0,r4),fr6
	mov 0x08,r0
	fmov @(r0,r4),fr4
	mov 0x0C,r0
	fmov @(r0,r4),fr5
	mov.l @r14,r0
	cmp/eq 0x03,r0
	bt loc_8c02dd38
	cmp/eq 0x02,r0
	bt loc_8c02dd7e
	cmp/eq 0x01,r0
	bt loc_8c02dd7e
	cmp/eq 0x00,r0
	bt loc_8c02ddc4
	bra loc_8c02de06
	nop

loc_8c02dd38:
	mov r14,r4
	add 0x0C,r4
	mov.b @(0x2,r4),r0
	fmov fr6,fr2
	extu.b r0,r3
	mov.b @(0x1,r4),r0
	lds r3,fpul
	extu.b r0,r3
	float fpul,fr3
	fmul fr3,fr2
	ftrc fr2,fpul
	fmov fr4,fr2
	sts fpul,r5
	lds r3,fpul
	mov.b @r4,r3
	extu.b r5,r5
	float fpul,fr3
	extu.b r3,r3
	shll16 r5
	fmul fr3,fr2
	ftrc fr2,fpul
	fmov fr5,fr2
	sts fpul,r6
	lds r3,fpul
	mov.l @r15,r3
	extu.b r6,r6
	float fpul,fr3
	shll8 r6
	or r6,r5
	fmul fr3,fr2
	ftrc fr2,fpul
	sts fpul,r4
	extu.b r4,r4
	or r4,r5
	mov.l r5,@r3

loc_8c02dd7e:
	mov r14,r4
	add 0x08,r4
	mov.b @(0x2,r4),r0
	fmov fr6,fr2
	extu.b r0,r3
	mov.b @(0x1,r4),r0
	lds r3,fpul
	extu.b r0,r3
	float fpul,fr3
	fmul fr3,fr2
	ftrc fr2,fpul
	fmov fr4,fr2
	sts fpul,r6
	lds r3,fpul
	mov.b @r4,r3
	extu.b r6,r6
	float fpul,fr3
	extu.b r3,r3
	shll16 r6
	fmul fr3,fr2
	ftrc fr2,fpul
	fmov fr5,fr2
	sts fpul,r5
	lds r3,fpul
	mov.l @(0x4,r15),r3
	extu.b r5,r5
	float fpul,fr3
	shll8 r5
	or r5,r6
	fmul fr3,fr2
	ftrc fr2,fpul
	sts fpul,r4
	extu.b r4,r4
	or r4,r6
	mov.l r6,@r3

loc_8c02ddc4:
	mov r14,r4
	add 0x04,r4
	mov.b @(0x2,r4),r0
	fmov fr6,fr2
	extu.b r0,r3
	mov.b @(0x1,r4),r0
	lds r3,fpul
	extu.b r0,r3
	float fpul,fr3
	fmul fr3,fr2
	ftrc fr2,fpul
	fmov fr4,fr2
	sts fpul,r6
	lds r3,fpul
	mov.b @r4,r3
	extu.b r6,r6
	float fpul,fr3
	extu.b r3,r3
	shll16 r6
	fmul fr3,fr2
	ftrc fr2,fpul
	sts fpul,r5
	lds r3,fpul
	extu.b r5,r5
	float fpul,fr3
	shll8 r5
	or r5,r6
	fmul fr3,fr5
	ftrc fr5,fpul
	sts fpul,r4
	extu.b r4,r4
	or r4,r6
	mov.l r6,@r13

loc_8c02de06:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02de12:
	mov.l r14,@-r15
	add 0xF8,r15
	mov.l @(0x7C,PC),r14
	mov.l @r14,r0
	cmp/eq 0x03,r0
	bt loc_8c02de2e
	cmp/eq 0x02,r0
	bt loc_8c02de50
	cmp/eq 0x01,r0
	bt loc_8c02de50
	cmp/eq 0x00,r0
	bt loc_8c02de70
	bra loc_8c02de8e
	nop

loc_8c02de2e:
	mov r14,r7
	add 0x0C,r7
	mov.b @(0x2,r7),r0
	mov.b r0,@(0x4,r15)
	mov.b @(0x1,r7),r0
	mov.b r0,@r15
	mov.b @(0x4,r15),r0
	mov.b @r15,r3
	mov.b @r7,r7
	extu.b r0,r0
	extu.b r3,r3
	shll8 r3
	shll16 r0
	extu.b r7,r7
	or r3,r0
	or r7,r0
	mov.l r0,@r6

loc_8c02de50:
	mov r14,r6
	add 0x08,r6
	mov.b @(0x2,r6),r0
	mov r0,r7
	mov.b @(0x1,r6),r0
	extu.b r7,r7
	shll16 r7
	mov.b r0,@r15
	mov.b @r15,r3
	mov.b @r6,r6
	extu.b r3,r3
	shll8 r3
	extu.b r6,r6
	or r3,r7
	or r6,r7
	mov.l r7,@r5

loc_8c02de70:
	mov r14,r5
	add 0x04,r5
	mov.b @(0x2,r5),r0
	mov r0,r7
	mov.b @(0x1,r5),r0
	extu.b r7,r7
	mov.b @r5,r5
	mov r0,r6
	extu.b r6,r6
	shll8 r6
	shll16 r7
	extu.b r5,r5
	or r6,r7
	or r5,r7
	mov.l r7,@r4

loc_8c02de8e:
	add 0x08,r15
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data 0x8c26a8b4
	#data bank03.loc_8c03591e
	#data bank03.loc_8c03593e
	#data bank11.loc_8c11d630
	#data 0x4b189680
	#data bank03.loc_8c0310f2
	#data 0x8c26a8f0
	#data 0x8c2896b0
	#data 0x8c26a8a4

;==============================================
loc_8c02deb8:
	mov 0x1F,r0
	not r0,r0
	and r0,r4
	mov r4,r0
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c02dec6:
	ocbi @r0
	add 0x20,r0
	dt r5
	bf loc_8c02dec6
	nop
	ocbp @r0
	rts
	nop

;==============================================
loc_8c02ded6:
	mov 0x1F,r0
	not r0,r0
	and r0,r4
	mov r4,r0
	shlr2 r5
	shlr2 r5
	shlr r5
	add 0x01,r5

loc_8c02dee6:
	ocbp @r0
	add 0x20,r0
	dt r5
	bf loc_8c02dee6
	nop
	rts
	nop

;==============================================
loc_8c02def4:
	stc sr,r1
	mov.l r1,@-r15
	mov.l @(0xC,PC),r2
	or r2,r1
	ldc r1,sr
	mov.l @(0xC,PC),r1
	mov.l @(0xC,PC),r2
	mov.l @(0x10,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x10000000
	#data 0xff00001c
	#data 0x00000800
	#data 0x2c02df20

;==============================================
loc_8c02df18:
	mov.l @r15+,r2
	ldc r2,sr
	rts
	nop

;==============================================
loc_8c02df20:
	mov.l @r1,r0
	or r2,r0
	mov.l r0,@r1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	not r2,r2
	and r2,r0
	mov.l r0,@r1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	mov.l @(0x4,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#align4
	#data loc_8c02df18

;==============================================
loc_8c02df5c:
	sts.l pr,@-r15
	mov.l @(0x58,PC),r4
	mov.w @(0x46,PC),r5
	bsr loc_8c02df84
	nop
	mov.l @(0x54,PC),r4
	mov.w @(0x40,PC),r5
	bsr loc_8c02df84
	nop
	mov.l @(0x50,PC),r4
	mov.w @(0x3A,PC),r5
	bsr loc_8c02df84
	nop
	mov.l @(0x4C,PC),r4
	mov.w @(0x34,PC),r5
	bsr loc_8c02df84
	nop
	lds.l @r15+,pr
	mov.l @(0x44,PC),r4
	mov.w @(0x2C,PC),r5

loc_8c02df84:
	mov.w @(0x2C,PC),r3
	mov.w @(0x2C,PC),r1
	add r3,r5
	shar r5
	shar r5
	shar r5
	add r1,r5
	cmp/pz r5
	bt.s loc_8c02df9a
	stc vbr,r6
	add 0x03,r5

loc_8c02df9a:
	shar r5
	shar r5
	shll2 r5
	add r6,r5
	rts
	mov.l r4,@r5

;==============================================
loc_8c02dfa6:
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0180
	#data 0x01a0
	#data 0x00a0
	#data 0x00e0
	#data 0x0100
	#data 0xfe00
	#data 0x0200
	#align4
	#data loc_8c02dfcc
	#data loc_8c02dfd2
	#data loc_8c02dfd8
	#data loc_8c02dfde
	#data loc_8c02dfe4

;==============================================
loc_8c02dfcc:
	mov 0x00,r0
	bra loc_8c02dfea
	nop

loc_8c02dfd2:
	mov 0x01,r0
	bra loc_8c02dfea
	nop

loc_8c02dfd8:
	mov 0x03,r0
	bra loc_8c02dfea
	nop

loc_8c02dfde:
	mov 0x04,r0
	bra loc_8c02dfea
	nop

loc_8c02dfe4:
	mov 0x05,r0
	bra loc_8c02dfea
	nop

loc_8c02dfea:
	mov.l @(0x18,PC),r7
	mov.l r0,@r7
	mov r15,r0
	mov.l r0,@-r15
	mov.l @(0x14,PC),r7
	mov.l r15,@r7
	stc sr,r1
	mov.l @(0x14,PC),r0
	and r0,r1
	ldc r1,sr
	mov.l @(0xC,PC),r3
	jmp @r3
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data bank14.loc_8c14baa4
	#data bank14.loc_8c14baa0
	#data loc_8c02dfa6
	#data 0x6fffff0f

;==============================================
;Camera?
loc_8c02e014:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	mov.l @(0x13C,PC),r14
	sts.l pr,@-r15
	mov.b r13,@r14
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x8,r14)
	mov.b r0,@(0x9,r14)
	mov.b r0,@(0xA,r14)
	mov 0x0C,r0
	fldi0 fr15
	fmov fr15,@(r0,r14)
	mova @(0x128,PC),r0
	fmov @r0,fr14
	mov 0x10,r0
	mov.w @(0x10C,PC),r10
	fmov fr14,@(r0,r14)
	mova @(0x124,PC),r0
	fmov @r0,fr13
	mov.l @(0x11C,PC),r12
	jsr @r12
	mov r10,r4
	fmov fr13,fr3
	fdiv fr0,fr3
	mov 0x14,r0
	fmov fr3,@(r0,r14)
	mov 0x70,r0
	fmov fr14,@(r0,r14)
	mov 0x78,r0
	fmov fr15,@(r0,r14)
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr15,@(r0,r14)
	mov 0x58,r0
	fmov fr14,@(r0,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov.w @(0xD8,PC),r0
	fmov fr3,@(r0,r14)
	add 0x74,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	add 0xB5,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr14,@(r0,r14)
	jsr @r12
	mov r10,r4
	fmov fr13,fr3
	fdiv fr0,fr3
	mov.w @(0xB6,PC),r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	fmov fr14,@(r0,r14)
	fmov fr15,@(r0,r14)
	add 0x18,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	add 0xEC,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	add 0x10,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	mov.l @(0xA4,PC),r2
	mov 0x04,r0
	mov.l @(0xA4,PC),r11
	mov.l @(0x98,PC),r3
	mov.b r13,@r3
	mov.b r13,@r2
	fmov fr15,@r11
	fmov fr14,@(r0,r11)
	jsr @r12
	mov r10,r4
	fdiv fr0,fr13
	mov 0x08,r0
	mov.l @(0x94,PC),r4
	fmov fr13,@(r0,r11)
	mov 0x04,r0
	fmov fr15,@r4
	fmov fr14,@(r0,r4)
	mov 0x08,r0
	fmov fr15,@(r0,r4)
	mov 0x04,r0
	mov.l @(0x88,PC),r4
	fmov fr15,@r4
	fmov fr15,@(r0,r4)
	mov 0x08,r0
	fmov fr15,@(r0,r4)
	mov 0x04,r0
	mov.l @(0x80,PC),r4
	fmov fr15,@r4
	fmov fr15,@(r0,r4)
	mov 0x08,r0
	fmov fr15,@(r0,r4)
	mova @(0x78,PC),r0
	fmov @r0,fr3
	mov.w @(0x3A,PC),r0
	fmov fr3,@(r0,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov.w @(0x34,PC),r0
	fmov fr3,@(r0,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov.w @(0x2E,PC),r0
	fmov fr3,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov.w @(0x28,PC),r0
	fmov fr3,@(r0,r14)
	add 0x54,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
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

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0f4a
	#data 0x0080
	#data 0x00b4
	#data 0x009c
	#data 0x0098
	#data 0x00a0
	#data 0x00a4
	#align4
	#data 0x8c26a518
	#data 0x42be0000
	#data bank11.loc_8c11eb20
	#data 0x43a00000
	#data 0x422c0000
	#data 0xbed1eb85
	#data 0x8c1f9d0f
	#data 0x8c1f9d10
	#data 0x8c1f9cd8
	#data 0x8c1f9ce4
	#data 0x8c1f9cf0
	#data 0x8c1f9cfc
	#data 0x44a00000
	#data 0xc4a00000
	#data 0x449acccd
	#data 0xc23a6668

;==============================================
loc_8c02e1a4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l @(0x150,PC),r14
	mov 0x0C,r0
	mov.l @(0x150,PC),r13
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	mov 0x58,r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	jsr @r13
	mov 0x03,r4
	mov.l @(0x124,PC),r3
	jsr @r3
	nop
	mov.w @(0x10E,PC),r0
	mov.l @(0x120,PC),r3
	fmov @(r0,r14),fr5
	jsr @r3
	fldi0 fr4
	mova @(0x11C,PC),r0
	mov.l @(0x134,PC),r2
	fmov @r0,fr6
	mova @(0x118,PC),r0
	fmov @r0,fr5
	mova @(0x118,PC),r0
	fmov @r0,fr4
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov @(r0,r14),fr2
	mova @(0x114,PC),r0
	fmov @r0,fr1
	mova @(0x114,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(0x114,PC),r3
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	jsr @r13
	mov 0x02,r4
	mov.l @(0xE0,PC),r3
	jsr @r3
	nop
	mov.w @(0xCE,PC),r0
	mov r15,r4
	mov.l @(0x100,PC),r3
	mov r15,r5
	mov.l @(r0,r14),r6
	jsr @r3
	add 0x0C,r4
	jsr @r13
	mov 0x01,r4
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02e246:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mova @(0xC0,PC),r0
	mov.l @(0xAC,PC),r14
	fmov @r0,fr15
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmul fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmul fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmul fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	mov 0x58,r0
	fmul fr15,fr3
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmul fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmul fr15,fr3
	fmov fr3,@(r0,r15)
	mov.l @(0x70,PC),r13
	jsr @r13
	mov 0x03,r4
	mov.l @(0x70,PC),r3
	jsr @r3
	nop
	mov.w @(0x5A,PC),r0
	mov.l @(0x6C,PC),r3
	fmov @(r0,r14),fr5
	jsr @r3
	fldi0 fr4
	mova @(0x68,PC),r0
	mov.l @(0x80,PC),r2
	fmov @r0,fr6
	mova @(0x68,PC),r0
	fmov @r0,fr4
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov @(r0,r14),fr2
	mova @(0x64,PC),r0
	fmov @r0,fr1
	mova @(0x64,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(0x64,PC),r3
	fmov fr15,fr5
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	jsr @r13
	mov 0x02,r4
	mov.l @(0x30,PC),r3
	jsr @r3
	nop
	mov.w @(0x1C,PC),r0
	mov r15,r4
	mov.l @(0x4C,PC),r3
	mov r15,r5
	mov.l @(r0,r14),r6
	jsr @r3
	add 0x0C,r4
	jsr @r13
	mov 0x01,r4
	add 0x18,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0080
	#data 0x0084
	#align4
	#data 0x8c26a518
	#data bank12.loc_8c1204f0
	#data bank12.loc_8c121100
	#data bank12.loc_8c121710
	#data 0x463b8000
	#data 0x3dcccccd
	#data 0x3faaaaab
	#data 0x47800000
	#data 0x43b40000
	#data 0x3f000000
	#data 0x0000ffff
	#data bank12.loc_8c1219b0
	#data bank11.loc_8c11ff90

;==============================================
loc_8c02e334:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x124,PC),r14
	jsr @r14
	mov 0x03,r4
	mov.l @(0x120,PC),r3
	jsr @r3
	nop
	mov.l @(0x120,PC),r2
	fldi0 fr15
	fmov fr15,fr5
	jsr @r2
	fmov fr15,fr4
	mova @(0x118,PC),r0
	mov.w @(0xFE,PC),r4
	fmov @r0,fr6
	mova @(0x118,PC),r0
	mov.l @(0x11C,PC),r3
	fmov @r0,fr5
	mova @(0x114,PC),r0
	jsr @r3
	fmov @r0,fr4
	jsr @r14
	mov 0x02,r4
	mov.l @(0xFC,PC),r2
	jsr @r2
	nop
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02e378:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0xE0,PC),r14
	jsr @r14
	mov 0x03,r4
	mov.l @(0xDC,PC),r3
	jsr @r3
	nop
	mov.l @(0xDC,PC),r2
	fldi0 fr15
	fmov fr15,fr5
	jsr @r2
	fmov fr15,fr4
	mova @(0xD4,PC),r0
	mov.w @(0xBC,PC),r4
	fmov @r0,fr6
	mova @(0xD4,PC),r0
	mov.l @(0xD8,PC),r3
	fmov @r0,fr5
	mova @(0xD0,PC),r0
	jsr @r3
	fmov @r0,fr4
	jsr @r14
	mov 0x02,r4
	mov.l @(0xB8,PC),r2
	jsr @r2
	nop
	mov.l @(0xC8,PC),r5
	mov 0x00,r6
	mov.l @(0xC8,PC),r3
	mov r5,r4
	jsr @r3
	add 0xB8,r4
	jsr @r14
	mov 0x01,r4
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02e3c8:
	sts.l pr,@-r15
	bsr loc_8c02e014
	nop
	mov.l @(0xB4,PC),r2
	lds.l @r15+,pr
	mov.b @r2,r3
	add 0x01,r3
	rts
	mov.b r3,@r2

;==============================================
loc_8c02e3da:
	mov.l r14,@-r15
	mov.l @(0xA8,PC),r14
	sts.l pr,@-r15
	mov r14,r4
	add 0x0C,r4
	mov.l @(0xA4,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov r14,r4
	add 0x54,r4
	mov.l @(0x94,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x54,PC),r4
	mov 0x78,r0
	mov.l @(0x88,PC),r3
	fldi0 fr3
	jsr @r3
	fmov fr3,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov.w @(0x46,PC),r0
	fdiv fr0,fr3
	fmov fr3,@(r0,r14)
	add 0x44,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c02e426
	mov.w @(0x3A,PC),r0
	mov 0x01,r3
	bra loc_8c02e44e
	mov.b r3,@(r0,r14)

loc_8c02e426:
	mov.l @(0x70,PC),r1
	jsr @r1
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8c02e438
	mov.l @(0x68,PC),r1
	jsr @r1
	nop

loc_8c02e438:
	mov.l @(0x64,PC),r2
	jsr @r2
	nop
	mov.l @(0x64,PC),r3
	mov.b @(0x5,r14),r0
	jsr @r3
	mov r0,r4
	lds.l @r15+,pr
	mov.l @(0x5C,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c02e44e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x4000
	#data 0x1e94
	#data 0x0f4a
	#data 0x00b4
	#data 0x00f8
	#align4
	#data bank12.loc_8c1204f0
	#data bank12.loc_8c121100
	#data bank12.loc_8c121710
	#data 0x463b8000
	#data 0x3dcccccd
	#data 0x3faaaaab
	#data bank12.loc_8c1219b0
	#data 0x8c26a56c
	#data bank11.loc_8c11ff90
	#data 0x8c26a51f
	#data 0x8c26a518
	#data bank12.loc_8c1294c8
	#data bank11.loc_8c11eb20
	#data 0x43a00000
	#data loc_8c02fde0
	#data loc_8c02fd26
	#data loc_8c02ff68
	#data loc_8c02fa88
	#data loc_8c0300ba

;==============================================
loc_8c02e4ac:
	mov.l @(0x13C,PC),r0
	sts.l pr,@-r15
	mov.b @r0,r0
	cmp/eq 0x00,r0
	bt loc_8c02e4be
	cmp/eq 0x01,r0
	bt loc_8c02e4c2
	bra loc_8c02e4c6
	nop

loc_8c02e4be:
	bsr loc_8c02e3c8
	nop

loc_8c02e4c2:
	bra loc_8c02e3da
	lds.l @r15+,pr

loc_8c02e4c6:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c02e4cc:
	mov.l @(0x120,PC),r4
	mov 0x00,r7
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov.b @(0x8,r4),r0
	mov r0,r6
	mov.l @(0x118,PC),r0
	shll2 r6
	mov.l @(r0,r6),r5
	mov.l @(0x114,PC),r0
	mov.l @(r0,r6),r6
	mov.w @(0xF8,PC),r0
	mov.b r7,@(r0,r4)
	add 0x01,r0
	mov.b r7,@(r0,r4)
	add 0x01,r0
	mov.b r7,@(r0,r4)
	add 0x01,r0
	mov.b r7,@(r0,r4)
	mov 0x0C,r0
	fmov @r5,fr3
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r5),fr3
	mov 0x58,r0
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r5),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	add 0x68,r0
	fmov @r6,fr3
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	mov.w @(0xB2,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov.w @(0xAC,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r6),fr3
	mov.w @(0xA6,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r6),fr3
	mov.w @(0xA0,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r6),fr3
	mov.w @(0x9A,PC),r0
	mov.l @(0xAC,PC),r5
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov 0x10,r0
	fmov fr3,@r5
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r5)
	mov 0x14,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r5)
	mov 0x54,r0
	fmov @(r0,r4),fr3
	mov 0x58,r0
	mov.l @(0x90,PC),r5
	fmov fr3,@r5
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r5)
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r5)
	mov 0x01,r0
	rts
	mov.b r0,@(0x9,r4)

;==============================================
loc_8c02e586:
	mov.l r14,@-r15
	mov.l @(0x64,PC),r14
	sts.l pr,@-r15
	mov r14,r4
	add 0x0C,r4
	mov.l @(0x70,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov r14,r4
	add 0x54,r4
	mov.l @(0x60,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	mov.b @(0x8,r14),r0
	mov r0,r4
	bra loc_8c02e630
	mov.l @r15+,r14

loc_8c02e5b6:
	mov.l @(0x38,PC),r5
	sts.l pr,@-r15
	mov r5,r4
	add 0x0C,r4
	mov.l @(0x44,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov r5,r4
	add 0x54,r4
	mov.l @(0x34,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	rts
	nop

;###############################################
	#data 0x00f4
	#data 0x00c8
	#data 0x00cc
	#data 0x00d0
	#data 0x00d4
	#data 0x00d8
	#align4
	#data 0x8c26a51f
	#data 0x8c26a518
	#data bank14.loc_8c14ca3c
	#data bank14.loc_8c14ca50
	#data 0x8c1f9cd8
	#data 0x8c1f9ce4
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c02e608:
	mov.l @(0x98,PC),r0
	sts.l pr,@-r15
	mov.b @r0,r0
	cmp/eq 0x00,r0
	bt loc_8c02e61e
	cmp/eq 0x01,r0
	bt loc_8c02e622
	cmp/eq 0x02,r0
	bt loc_8c02e626
	bra loc_8c02e62a
	nop

loc_8c02e61e:
	bsr loc_8c02e4cc
	nop

loc_8c02e622:
	bra loc_8c02e586
	lds.l @r15+,pr

loc_8c02e626:
	bra loc_8c02e5b6
	lds.l @r15+,pr

loc_8c02e62a:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c02e630:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x6C,PC),r14
	mov 0x00,r7
	mov r14,r5
	add 0x07,r5
	mov.l r5,@r15
	mov.b @(0x1,r5),r0
	mov.l @r15,r3
	mov r0,r5
	mov.l @(0x60,PC),r0
	shll2 r5
	mov.l @(r0,r5),r13
	mov.l @(0x60,PC),r0
	mov.l @r13,r2
	mov.l @(r0,r5),r4
	mov.l @(0x5C,PC),r0
	mov.l @(r0,r5),r5
	mov.b @(0x2,r3),r0
	cmp/ge r2,r0
	bt.s loc_8c02e6b8
	mov r7,r6
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r0
	mov.b @(r0,r14),r2
	add 0xFE,r0
	or r3,r6
	mov.b @(r0,r14),r3
	add 0x01,r0
	or r2,r6
	mov.b @(r0,r14),r2
	or r3,r6
	or r2,r6
	extu.b r6,r0
	cmp/eq 0x02,r0
	bf.s loc_8c02e696
	add 0x04,r13
	mov.w @(0x1C,PC),r0
	mov.b r7,@(r0,r14)
	add 0x01,r0
	mov.b r7,@(r0,r14)
	add 0x01,r0
	mov.b r7,@(r0,r14)
	add 0x01,r0
	mov.b r7,@(r0,r14)
	mov.b @(0x9,r14),r0
	add 0x01,r0
	mov.b r0,@(0x9,r14)

loc_8c02e696:
	mov.b @(0x9,r14),r0
	shll2 r0
	bra loc_8c02e6c2
	add r0,r13

;###############################################
	#data 0x00f7
	#data 0x00f4
	#align4
	#data 0x8c26a51f
	#data 0x8c26a518
	#data bank14.loc_8c14ca28
	#data bank14.loc_8c14ca3c
	#data bank14.loc_8c14ca50

;----------------------------------------------
loc_8c02e6b8:
	mov.b @(0x7,r14),r0
	shll2 r2
	add r2,r13
	add 0x01,r0
	mov.b r0,@(0x7,r14)

loc_8c02e6c2:
	mov.b @(0x9,r14),r0
	mov r0,r3
	mov r0,r6
	shll2 r3
	mov.w @(0x10A,PC),r0
	shll r6
	add r3,r6
	shll2 r6
	add r6,r4
	fmov @r4,fr3
	add r6,r5
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov.w @(0xF8,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov.w @(0xF2,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov.w @(0xEC,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x10,r0
	fmov @(r0,r4),fr3
	mov.w @(0xE6,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r4),fr3
	mov.w @(0xE0,PC),r0
	fmov fr3,@(r0,r14)
	fmov @r5,fr3
	add 0x04,r0
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov.w @(0xD4,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov.w @(0xCE,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov.w @(0xC8,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x10,r0
	fmov @(r0,r5),fr3
	mov.w @(0xC2,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r5),fr3
	mov.w @(0xBC,PC),r0
	fmov fr3,@(r0,r14)
	mov.l @r13,r5
	bsr loc_8c02e808
	mov 0x00,r4
	mov.l @r13,r5
	bsr loc_8c02e8fc
	mov 0x00,r4
	mov.w @(0xAE,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02e75a
	mov.w @(0x9A,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02e75a
	mov.w @(0x92,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bt loc_8c02e760

loc_8c02e75a:
	mov.l @r13,r5
	bsr loc_8c02ee50
	mov 0x00,r4

loc_8c02e760:
	mov.w @(0x84,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02e77e
	mov.w @(0x7C,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02e77e
	mov.w @(0x74,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bt loc_8c02e78c

loc_8c02e77e:
	mov.l @r13,r5
	mov 0x00,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c02e9f0
	mov.l @r15+,r14

loc_8c02e78c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02e796:
	mov.l @(0x5C,PC),r5
	mov 0x01,r0
	mov.b r0,@(0x7,r5)
	mov r4,r0
	nop
	mov 0x00,r4
	mov.b r0,@(0x8,r5)
	mov r4,r0
	nop
	mov.b r0,@(0x9,r5)
	mov.w @(0x42,PC),r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	mov.b r4,@(r0,r5)
	add 0x01,r0
	rts
	mov.b r4,@(r0,r5)

;==============================================
loc_8c02e7bc:
	mov.l @(0x38,PC),r4
	mov.l @(0x40,PC),r0
	mov.l @(0x18,r4),r3
	mov.l @(0x38,PC),r2
	mov.l r3,@r2
	mov.l @(0x24,r4),r1
	mov.l r1,@r0
	mov.l @(0x28,PC),r1
	mov.l @(0x34,PC),r0
	mov.b @r1,r3
	shll2 r3
	mov.l @(r0,r3),r3
	jmp @r3
	nop
	mov.b @(r0,r10),r0

;==============================================
	#data 0x00b0
	#data 0x00b4
	#data 0x00b8
	#data 0x00bc
	#data 0x00c0
	#data 0x00c8
	#data 0x00cc
	#data 0x00d0
	#data 0x00d4
	#data 0x00d8
	#data 0x00c4
	#data 0x00f4
	#align4
	#data 0x8c26a518
	#data 0x8c2895f0
	#data 0x8c1f9cd0
	#data 0x8c1f9cd4
	#data bank14.loc_8c14cad4

;==============================================
loc_8c02e808:
	mov.l @(0xEC,PC),r4
	mov.w @(0xD6,PC),r0
	mov.l @(0xE0,PC),r7
	mov.b @(r0,r4),r3
	mov.l @(0xE0,PC),r6
	tst r3,r3
	bf loc_8c02e876
	mov 0x01,r2
	mov 0x00,r3
	mov.l r3,@r7
	mov.b r2,@(r0,r4)
	add 0xB8,r0
	fmov @(r0,r4),fr4
	fmov @r6,fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8c02e836
	lds r5,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmov fr4,fr3
	fdiv fr2,fr3

loc_8c02e836:
	mov.w @(0xAC,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	mov.w @(0xA6,PC),r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8c02e854
	lds r5,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmov fr4,fr3
	fdiv fr2,fr3

loc_8c02e854:
	mov.w @(0x92,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov.w @(0x8C,PC),r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8c02e872
	lds r5,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmov fr4,fr3
	fdiv fr2,fr3

loc_8c02e872:
	mov.w @(0x78,PC),r0
	fmov fr3,@(r0,r4)

loc_8c02e876:
	mov.l @r7,r3
	add 0xFF,r5
	cmp/ge r5,r3
	bt loc_8c02e8ae
	mov.w @(0x64,PC),r0
	mov.l @r7,r1
	add 0x01,r1
	mov.l r1,@r7
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	fmov @r6,fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x56,PC),r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r6),fr2
	mov 0x10,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x4C,PC),r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r6),fr2
	mov 0x14,r0
	fadd fr3,fr2
	bra loc_8c02e8cc
	fmov fr2,@(r0,r4)

loc_8c02e8ae:
	mov.w @(0x32,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)
	add 0xB8,r0
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x28,PC),r0
	fmov @(r0,r4),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x24,PC),r0
	fmov @(r0,r4),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r4)

loc_8c02e8cc:
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov 0x10,r0
	fmov fr3,@r6
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r6)
	mov 0x14,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	rts
	fmov fr3,@(r0,r6)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00f4
	#data 0x00dc
	#data 0x00b0
	#data 0x00e0
	#data 0x00b4
	#data 0x00e4
	#align4
	#data 0x8c1f9d14
	#data 0x8c1f9cd8
	#data 0x8c26a518

;==============================================
loc_8c02e8fc:
	mov.l @(0xEC,PC),r4
	mov.w @(0xD6,PC),r0
	mov.l @(0xE0,PC),r7
	mov.b @(r0,r4),r3
	mov.l @(0xE0,PC),r6
	tst r3,r3
	bf loc_8c02e96a
	mov 0x01,r2
	mov 0x00,r3
	mov.l r3,@r7
	mov.b r2,@(r0,r4)
	add 0xC3,r0
	fmov @(r0,r4),fr4
	fmov @r6,fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8c02e92a
	lds r5,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmov fr4,fr3
	fdiv fr2,fr3

loc_8c02e92a:
	mov.w @(0xAC,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	mov.w @(0xA6,PC),r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8c02e948
	lds r5,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmov fr4,fr3
	fdiv fr2,fr3

loc_8c02e948:
	mov.w @(0x92,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov.w @(0x8C,PC),r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8c02e966
	lds r5,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmov fr4,fr3
	fdiv fr2,fr3

loc_8c02e966:
	mov.w @(0x78,PC),r0
	fmov fr3,@(r0,r4)

loc_8c02e96a:
	mov.l @r7,r3
	add 0xFF,r5
	cmp/ge r5,r3
	bt loc_8c02e9a2
	mov.w @(0x64,PC),r0
	mov.l @r7,r1
	add 0x01,r1
	mov.l r1,@r7
	fmov @(r0,r4),fr3
	mov 0x54,r0
	fmov @r6,fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x56,PC),r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r6),fr2
	mov 0x58,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x4C,PC),r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r6),fr2
	mov 0x5C,r0
	fadd fr3,fr2
	bra loc_8c02e9c0
	fmov fr2,@(r0,r4)

loc_8c02e9a2:
	mov.w @(0x32,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)
	add 0xC3,r0
	fmov @(r0,r4),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	add 0x68,r0
	fmov @(r0,r4),fr3
	mov 0x58,r0
	fmov fr3,@(r0,r4)
	add 0x68,r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)

loc_8c02e9c0:
	mov 0x54,r0
	fmov @(r0,r4),fr3
	mov 0x58,r0
	fmov fr3,@r6
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r6)
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	rts
	fmov fr3,@(r0,r6)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00f5
	#data 0x00e8
	#data 0x00bc
	#data 0x00ec
	#data 0x00c0
	#data 0x00f0
	#align4
	#data 0x8c1f9d18
	#data 0x8c1f9ce4
	#data 0x8c26a518

;==============================================
loc_8c02e9f0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	mov.l @(0x184,PC),r14
	mov.w @(0x16E,PC),r0
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(0x16C,PC),r11
	mov.l @(0x16C,PC),r12
	tst r3,r3
	mov.l @(0x16C,PC),r13
	bf loc_8c02ea7a
	mov.l @r12,r3
	mov 0x04,r0
	fmov @r11,fr2
	mov r0,r1
	lds r3,fpul
	add r11,r1
	mov 0x01,r2
	float fpul,fr3
	fmov fr3,fr0
	fmov @r13,fr3
	fmac fr0,fr2,fr3
	fmov fr3,@r13
	mov.l @r12,r3
	fmov @r1,fr2
	lds r3,fpul
	mov 0x00,r3
	float fpul,fr3
	lds r5,fpul
	fmov fr3,fr0
	fmov @(r0,r13),fr3
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r13)
	mov.w @(0x12E,PC),r0
	mov.l r3,@r12
	mov.b r2,@(r0,r14)
	add 0xD9,r0
	fmov @(r0,r14),fr2
	fmov @r13,fr3
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr3,fr4
	mov 0x04,r0
	fmov fr2,@r11
	fmov @(r0,r13),fr3
	mov.w @(0x116,PC),r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r11)
	mov 0x08,r0
	fmov @(r0,r13),fr3
	mov.w @(0x108,PC),r0
	fmov @(r0,r14),fr2
	mov 0x08,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r11)

loc_8c02ea7a:
	mova @(0x118,PC),r0
	mov.l @r12,r3
	fmov @r0,fr13
	mova @(0x118,PC),r0
	add 0xFF,r5
	mov.l @(0x104,PC),r8
	fmov @r0,fr14
	cmp/ge r5,r3
	mov.l @(0x10C,PC),r10
	mova @(0x110,PC),r0
	mov.l @(0x100,PC),r9
	bf.s loc_8c02ea98
	fmov @r0,fr15
	bra loc_8c02ec88
	nop

loc_8c02ea98:
	mov 0x10,r0
	mov.l @(0x108,PC),r3
	fmov @(r0,r14),fr3
	mov 0x58,r0
	fmov @(r0,r14),fr2
	mov 0x14,r0
	fsub fr3,fr2
	fmov fr2,@r3
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fsub fr3,fr2
	fmov fr2,@r9
	mov.l @r12,r2
	fmov @r11,fr0
	lds r2,fpul
	fmov @r13,fr2
	fmov @r3,fr12
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r8
	and r10,r4
	mov.l @r12,r3
	mov 0x10,r0
	fmov @(r0,r14),fr3
	lds r3,fpul
	fmac fr0,fr12,fr3
	fmov @r11,fr0
	mov.l @(0xC8,PC),r3
	float fpul,fr2
	fmov fr3,fr12
	fmov @r13,fr3
	fmac fr0,fr2,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr15,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	fmov @r9,fr3
	mov 0x58,r0
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov.l @r12,r3
	fmov @r11,fr0
	lds r3,fpul
	fmov @r13,fr2
	mov.l @(0x98,PC),r3
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @r12,r2
	mov 0x14,r0
	mov.l @(0x78,PC),r3
	lds r2,fpul
	fmov @r3,fr3
	fmov @(r0,r14),fr2
	float fpul,fr1
	fmac fr0,fr3,fr2
	fmov @r11,fr0
	fmov @r13,fr3
	fmac fr0,fr1,fr3
	fmov fr2,fr12
	fmov fr3,fr1
	fmul fr13,fr1
	fdiv fr15,fr1
	fmov fr1,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r8
	and r10,r4
	fmov @r9,fr3
	mov 0x5C,r0
	mov.l @(0x58,PC),r3
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x54,r0
	fmov @(r0,r14),fr2
	mov 0x14,r0
	fsub fr3,fr2
	fmov fr2,@r3
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fsub fr3,fr2
	fmov fr2,@r9
	fmov @r3,fr12
	bra loc_8c02ebb0
	nop

;###############################################
	#data 0x00f7
	#data 0x00d4
	#data 0x00d8
	#align4
	#data 0x8c1f9d20
	#data 0x8c1f9d1c
	#data 0x8c1f9cf0
	#data 0x8c26a518
	#data bank11.loc_8c11e2e0
	#data 0x8c1f9d34
	#data 0x47800000
	#data 0x0000ffff
	#data 0x3f000000
	#data 0x43b40000
	#data 0x8c1f9d30
	#data bank11.loc_8c11e860
	#data 0x8c1f9d2c

;----------------------------------------------
loc_8c02ebb0:
	mov.l @r12,r2
	mov 0x04,r0
	fmov @(r0,r11),fr0
	lds r2,fpul
	fmov @(r0,r13),fr2
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r8
	and r10,r4
	mov.l @r12,r3
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	lds r3,fpul
	fmac fr0,fr12,fr3
	fmov @(r0,r11),fr0
	mov.l @(0xA0,PC),r3
	float fpul,fr2
	fmov fr3,fr12
	fmov @(r0,r13),fr3
	fmac fr0,fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	fmov @r9,fr3
	mov 0x54,r0
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x04,r0
	mov.l @r12,r3
	fmov @(r0,r11),fr0
	lds r3,fpul
	fmov @(r0,r13),fr2
	mov.l @(0x74,PC),r3
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @(0x60,PC),r3
	mov 0x14,r0
	mov.l @r12,r2
	fmov @r3,fr3
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fmul fr0,fr3
	lds r2,fpul
	fmov @(r0,r11),fr0
	fsub fr3,fr2
	float fpul,fr3
	fmov fr2,fr12
	fmov @(r0,r13),fr2
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r8
	and r10,r4
	fmov @r9,fr3
	mov 0x5C,r0
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x08,r0
	mov r0,r1
	add r11,r1
	fmov @(r0,r13),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fmov fr2,@(r0,r13)
	add 0x7C,r0
	fdiv fr15,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r10,r3
	mov.l r3,@(r0,r14)
	mov.l @r12,r2
	add 0x01,r2
	bra loc_8c02ee28
	mov.l r2,@r12

;###############################################
	#align4
	#data bank11.loc_8c11e860
	#data 0x8c1f9d2c

;----------------------------------------------
loc_8c02ec88:
	mov.w @(0x1B6,PC),r0
	mov 0x02,r1
	mov.b r1,@(r0,r14)
	add 0xE1,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r13)
	fmul fr13,fr3
	add 0x7C,r0
	fdiv fr15,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r10,r3
	mov.l r3,@(r0,r14)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x58,r0
	fmov @(r0,r14),fr2
	mov 0x14,r0
	mov.l @(0x190,PC),r3
	fsub fr3,fr2
	fmov fr2,@r3
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fsub fr3,fr2
	fmov fr2,@r9
	mov.l @r12,r2
	fmov @r3,fr12
	lds r2,fpul
	float fpul,fr3
	fmov @r11,fr0
	fmov @r13,fr2
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r8
	and r10,r4
	mov.l @r12,r3
	mov 0x10,r0
	fmov @(r0,r14),fr3
	lds r3,fpul
	fmac fr0,fr12,fr3
	fmov @r11,fr0
	mov.l @(0x158,PC),r3
	float fpul,fr2
	fmov fr3,fr12
	fmov @r13,fr3
	fmac fr0,fr2,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr15,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	fmov @r9,fr3
	mov 0x58,r0
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov.l @r12,r3
	fmov @r11,fr0
	lds r3,fpul
	fmov @r13,fr2
	mov.l @(0x12C,PC),r3
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @r12,r2
	mov 0x14,r0
	mov.l @(0x10C,PC),r3
	lds r2,fpul
	fmov @r3,fr3
	fmov @(r0,r14),fr2
	float fpul,fr1
	fmac fr0,fr3,fr2
	fmov @r11,fr0
	fmov @r13,fr3
	fmac fr0,fr1,fr3
	fmov fr2,fr12
	fmov fr3,fr1
	fmul fr13,fr1
	fdiv fr15,fr1
	fmov fr1,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r8
	and r10,r4
	fmov @r9,fr3
	mov 0x5C,r0
	mov.l @(0xE8,PC),r3
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x54,r0
	fmov @(r0,r14),fr2
	mov 0x14,r0
	fsub fr3,fr2
	fmov fr2,@r3
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fsub fr3,fr2
	fmov fr2,@r9
	mov.l @r12,r2
	fmov @(r0,r11),fr0
	lds r2,fpul
	fmov @(r0,r13),fr2
	fmov @r3,fr12
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r8
	and r10,r4
	mov.l @r12,r3
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	lds r3,fpul
	fmac fr0,fr12,fr3
	fmov @(r0,r11),fr0
	mov.l @(0x98,PC),r3
	float fpul,fr2
	fmov fr3,fr12
	fmov @(r0,r13),fr3
	fmac fr0,fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	fmov @r9,fr3
	mov 0x54,r0
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x04,r0
	mov.l @r12,r3
	fmov @(r0,r11),fr0
	lds r3,fpul
	fmov @(r0,r13),fr2
	mov.l @(0x6C,PC),r3
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @(0x58,PC),r3
	mov 0x14,r0
	mov.l @r12,r2
	fmov @r3,fr3
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fmul fr0,fr3
	lds r2,fpul
	fmov @(r0,r11),fr0
	fsub fr3,fr2
	float fpul,fr3
	fmov fr2,fr12
	fmov @(r0,r13),fr2
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r8
	and r10,r4
	fmov @r9,fr3
	mov 0x5C,r0
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)

loc_8c02ee28:
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
	#data 0x00f7
	#align4
	#data 0x8c1f9d30
	#data bank11.loc_8c11e860
	#data 0x8c1f9d2c

;==============================================
loc_8c02ee50:
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
	mov.l @(0x17C,PC),r14
	mov.w @(0x166,PC),r0
	mov.l @(0x16C,PC),r11
	mov.b @(r0,r14),r3
	mov.l @(0x170,PC),r13
	mov.l @(0x168,PC),r12
	tst r3,r3
	bf loc_8c02eef2
	mov.l @r13,r3
	mov 0x04,r0
	fmov @r11,fr2
	mov r0,r1
	lds r3,fpul
	add r11,r1
	float fpul,fr3
	fmov fr3,fr0
	fmov @r12,fr3
	fmac fr0,fr2,fr3
	fmov fr3,@r12
	mov.l @r13,r3
	fmov @r1,fr2
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr0
	fmov @(r0,r12),fr3
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r12)
	mov 0x08,r0
	mov.l @r13,r3
	mov r0,r1
	add r11,r1
	lds r3,fpul
	mov 0x00,r3
	fmov @r1,fr2
	float fpul,fr3
	fmov fr3,fr0
	fmov @(r0,r12),fr3
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r12)
	mov.l r3,@r13
	mov.w @(0x118,PC),r0
	mov 0x01,r2
	lds r5,fpul
	mov.b r2,@(r0,r14)
	add 0xCE,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fmov @r12,fr3
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr3,fr4
	fmov fr2,@r11
	fmov @(r0,r12),fr3
	mov.w @(0xFE,PC),r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r11)
	mov 0x08,r0
	fmov @(r0,r12),fr3
	mov.w @(0xF0,PC),r0
	fmov @(r0,r14),fr2
	mov 0x08,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r11)

loc_8c02eef2:
	mova @(0x100,PC),r0
	mov r5,r3
	fmov @r0,fr13
	mova @(0xFC,PC),r0
	mov.l @r13,r2
	add 0xFF,r3
	mov.l @(0x100,PC),r10
	mov.l @(0xEC,PC),r9
	cmp/ge r3,r2
	mov.l @(0xE4,PC),r8
	fmov @r0,fr14
	mova @(0xF0,PC),r0
	bf.s loc_8c02ef12
	fmov @r0,fr15
	bra loc_8c02f200
	nop

loc_8c02ef12:
	mov 0x54,r0
	mov.l @(0xEC,PC),r3
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	mov 0x58,r0
	fsub fr3,fr2
	fmov fr2,@r8
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov 0x5C,r0
	fsub fr3,fr2
	fmov fr2,@r9
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r14),fr2
	fsub fr3,fr2
	fmov fr2,@r3
	mov.l @r13,r2
	fmov @r12,fr2
	lds r2,fpul
	float fpul,fr3
	fmov fr3,fr0
	fmov @r11,fr3
	fmac fr0,fr3,fr2
	fmul fr15,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	mov.l @(0xB4,PC),r2
	jsr @r2
	and r10,r4
	mov.l @r13,r3
	mov 0x58,r0
	fmov @r9,fr3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mov.l @(0xA8,PC),r3
	fmac fr0,fr3,fr2
	fmov @r12,fr3
	float fpul,fr1
	fmov fr2,fr12
	fmov @r11,fr2
	fmov fr1,fr0
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @(0x80,PC),r3
	mov 0x10,r0
	fmov @r3,fr3
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov.l @r13,r2
	fmov @r12,fr2
	lds r2,fpul
	mov.l @(0x74,PC),r2
	float fpul,fr3
	fmov fr3,fr0
	fmov @r11,fr3
	fmac fr0,fr3,fr2
	fmul fr15,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r10,r4
	mov.l @r13,r3
	mov 0x5C,r0
	fmov @r9,fr3
	lds r3,fpul
	fmov @(r0,r14),fr2
	fmac fr0,fr3,fr2
	fmov @r12,fr3
	float fpul,fr1
	fmov fr2,fr12
	fmov @r11,fr2
	fmov fr1,fr0
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	bra loc_8c02f010
	and r10,r4

;###############################################
	#data 0x00f6
	#data 0x00c8
	#data 0x00cc
	#align4
	#data 0x8c1f9d3c
	#data 0x8c1f9cfc
	#data 0x8c1f9d38
	#data 0x8c26a518
	#data 0x8c1f9d48
	#data 0x8c1f9d4c
	#data 0x43b40000
	#data 0x3f000000
	#data 0x47800000
	#data 0x0000ffff
	#data 0x8c1f9d50
	#data bank11.loc_8c11e2e0
	#data bank11.loc_8c11e860

;----------------------------------------------
loc_8c02f010:
	mov.l @(0x1E0,PC),r3
	jsr @r3
	nop
	mov.l @(0x1E0,PC),r3
	mov 0x14,r0
	fmov @r3,fr3
	mov r3,r2
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	mov 0x58,r0
	fsub fr3,fr2
	fmov fr2,@r8
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov 0x5C,r0
	fsub fr3,fr2
	fmov fr2,@r9
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fsub fr3,fr2
	fmov fr2,@r2
	mov.l @r13,r1
	fmov @(r0,r12),fr2
	lds r1,fpul
	float fpul,fr3
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	mov.l @(0x198,PC),r1
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r1
	and r10,r4
	mov.l @r13,r3
	mov 0x54,r0
	fmov @r8,fr3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mov 0x04,r0
	mov.l @(0x184,PC),r3
	fmac fr0,fr3,fr2
	fmov @(r0,r12),fr3
	float fpul,fr1
	fmov fr2,fr12
	fmov @(r0,r11),fr2
	fmov fr1,fr0
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @(0x160,PC),r3
	mov 0x0C,r0
	fmov @r3,fr3
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x04,r0
	mov.l @r13,r2
	fmov @(r0,r12),fr2
	lds r2,fpul
	mov.l @(0x150,PC),r2
	float fpul,fr3
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r10,r4
	fmov @r9,fr3
	mov 0x5C,r0
	mov.l @r13,r3
	fmul fr0,fr3
	fmov @(r0,r14),fr2
	lds r3,fpul
	mov 0x04,r0
	mov.l @(0x11C,PC),r3
	fsub fr3,fr2
	float fpul,fr3
	fmov fr2,fr12
	fmov @(r0,r12),fr2
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @(0x100,PC),r3
	mov 0x14,r0
	mov r14,r1
	add 0x0C,r1
	fmov @r3,fr3
	mov r3,r2
	mov 0x04,r3
	fmac fr0,fr3,fr12
	add r1,r3
	fmov fr12,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	mov 0x58,r0
	fsub fr3,fr2
	fmov fr2,@r8
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov 0x5C,r0
	fsub fr3,fr2
	fmov fr2,@r9
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fsub fr3,fr2
	fmov fr2,@r2
	mov.l r1,@r15
	mov.l r3,@-r15
	mov.l @(0x4,r15),r3
	mov.l @r13,r1
	fmov @(r0,r3),fr12
	mov 0x08,r0
	lds r1,fpul
	fmov @(r0,r12),fr2
	mov.l @(0xB0,PC),r3
	float fpul,fr3
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @r13,r3
	mov 0x08,r0
	fmov @r9,fr3
	lds r3,fpul
	fmac fr0,fr3,fr12
	fmov @(r0,r12),fr3
	mov.l @(0x90,PC),r3
	float fpul,fr2
	fmov fr2,fr0
	fmov @(r0,r11),fr2
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @r15+,r2
	mov r14,r3
	add 0x0C,r3
	fmov @r8,fr3
	mov 0x08,r0
	fmac fr0,fr3,fr12
	fmov fr12,@r2
	mov.l r3,@r15
	mov.l r3,@-r15
	mov.l @r13,r3
	fmov @(r0,r12),fr2
	lds r3,fpul
	mov.l @(0x4,r15),r2
	mov.l @(0x54,PC),r3
	float fpul,fr3
	fmov @r2,fr12
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @r13,r3
	mov 0x08,r0
	fmov @r8,fr3
	lds r3,fpul
	fmac fr0,fr3,fr12
	fmov @(r0,r12),fr3
	mov.l @(0x34,PC),r3
	float fpul,fr2
	fmov fr2,fr0
	fmov @(r0,r11),fr2
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	fmov @r9,fr3
	mov.l @r15+,r2
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@r2
	mov.l @r13,r3
	add 0x01,r3
	bra loc_8c02f4b6
	mov.l r3,@r13

;###############################################
	#align4
	#data bank11.loc_8c11e2e0
	#data 0x8c1f9d50
	#data bank11.loc_8c11e860

;----------------------------------------------
loc_8c02f200:
	mov.w @(0x1C0,PC),r0
	mov 0x02,r3
	mov.l r5,@r13
	mov.b r3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	mov 0x58,r0
	mov.l @(0x1B4,PC),r3
	fsub fr3,fr2
	fmov fr2,@r8
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov 0x5C,r0
	fsub fr3,fr2
	fmov fr2,@r9
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r14),fr2
	fsub fr3,fr2
	fmov fr2,@r3
	mov.l @r13,r2
	fmov @r12,fr2
	lds r2,fpul
	float fpul,fr3
	fmov fr3,fr0
	fmov @r11,fr3
	fmac fr0,fr3,fr2
	fmul fr15,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	mov.l @(0x184,PC),r2
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r10,r4
	mov.l @r13,r3
	mov 0x58,r0
	fmov @r9,fr3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mov.l @(0x174,PC),r3
	fmac fr0,fr3,fr2
	fmov @r12,fr3
	float fpul,fr1
	fmov fr2,fr12
	fmov @r11,fr2
	fmov fr1,fr0
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @(0x14C,PC),r3
	mov 0x10,r0
	fmov @r3,fr3
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov.l @r13,r2
	fmov @r12,fr2
	lds r2,fpul
	mov.l @(0x144,PC),r2
	float fpul,fr3
	fmov fr3,fr0
	fmov @r11,fr3
	fmac fr0,fr3,fr2
	fmul fr15,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r10,r4
	mov.l @r13,r3
	mov 0x5C,r0
	fmov @r9,fr3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mov.l @(0x11C,PC),r3
	fmac fr0,fr3,fr2
	fmov @r12,fr3
	float fpul,fr1
	fmov fr2,fr12
	fmov @r11,fr2
	fmov fr1,fr0
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @(0xF8,PC),r3
	mov 0x14,r0
	fmov @r3,fr3
	mov r3,r2
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	mov 0x58,r0
	fsub fr3,fr2
	fmov fr2,@r8
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov 0x5C,r0
	fsub fr3,fr2
	fmov fr2,@r9
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fsub fr3,fr2
	fmov fr2,@r2
	mov.l @r13,r1
	fmov @(r0,r12),fr2
	lds r1,fpul
	float fpul,fr3
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	mov.l @(0xB8,PC),r1
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r1
	and r10,r4
	mov.l @r13,r3
	mov 0x54,r0
	fmov @r8,fr3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mov 0x04,r0
	mov.l @(0xA0,PC),r3
	fmac fr0,fr3,fr2
	fmov @(r0,r12),fr3
	float fpul,fr1
	fmov fr2,fr12
	fmov @(r0,r11),fr2
	fmov fr1,fr0
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @(0x78,PC),r3
	mov 0x0C,r0
	fmov @r3,fr3
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x04,r0
	mov.l @r13,r2
	fmov @(r0,r12),fr2
	lds r2,fpul
	mov.l @(0x6C,PC),r2
	float fpul,fr3
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r10,r4
	fmov @r9,fr3
	mov 0x5C,r0
	mov.l @r13,r3
	fmul fr0,fr3
	fmov @(r0,r14),fr2
	lds r3,fpul
	mov 0x04,r0
	mov.l @(0x3C,PC),r3
	fsub fr3,fr2
	float fpul,fr3
	fmov fr2,fr12
	fmov @(r0,r12),fr2
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @(0x18,PC),r3
	mov 0x14,r0
	fmov @r3,fr3
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	bra loc_8c02f3d4
	nop

;###############################################
	#data 0x00f6
	#align4
	#data 0x8c1f9d50
	#data bank11.loc_8c11e2e0
	#data bank11.loc_8c11e860

;----------------------------------------------
loc_8c02f3d4:
	fsub fr3,fr2
	mov 0x58,r0
	mov r3,r2
	mov r14,r1
	add 0x0C,r1
	mov 0x04,r3
	fmov fr2,@r8
	add r1,r3
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov 0x5C,r0
	fsub fr3,fr2
	fmov fr2,@r9
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fsub fr3,fr2
	fmov fr2,@r2
	mov.l r1,@r15
	mov.l r3,@-r15
	mov.l @r13,r1
	mov.l @(0x4,r15),r3
	lds r1,fpul
	fmov @(r0,r3),fr12
	mov 0x08,r0
	fmov @(r0,r12),fr2
	float fpul,fr3
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	mov.l @(0x128,PC),r3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @r13,r3
	mov 0x08,r0
	fmov @r9,fr3
	lds r3,fpul
	fmac fr0,fr3,fr12
	fmov @(r0,r12),fr3
	mov.l @(0x110,PC),r3
	float fpul,fr2
	fmov fr2,fr0
	fmov @(r0,r11),fr2
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @r15+,r2
	mov r14,r3
	add 0x0C,r3
	fmov @r8,fr3
	mov 0x08,r0
	fmac fr0,fr3,fr12
	fmov fr12,@r2
	mov.l r3,@r15
	mov.l r3,@-r15
	mov.l @r13,r3
	fmov @(r0,r12),fr2
	lds r3,fpul
	mov.l @(0x4,r15),r2
	mov.l @(0xD8,PC),r3
	float fpul,fr3
	fmov @r2,fr12
	fmov fr3,fr0
	fmov @(r0,r11),fr3
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	mov.l @r13,r3
	mov 0x08,r0
	fmov @r8,fr3
	lds r3,fpul
	fmac fr0,fr3,fr12
	fmov @(r0,r12),fr3
	mov.l @(0xB4,PC),r3
	float fpul,fr2
	fmov fr2,fr0
	fmov @(r0,r11),fr2
	fmac fr0,fr2,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r10,r4
	fmov @r9,fr3
	mov.l @r15+,r2
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@r2

loc_8c02f4b6:
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
loc_8c02f4d2:
	mova @(0x78,PC),r0
	mov.l r14,@-r15
	mov.l @(0x7C,PC),r14
	mov.l @(0x74,PC),r4
	mov.l @(0x7C,PC),r5
	sts.l pr,@-r15
	fmov @r0,fr5
	mov.w @(0x5E,PC),r0
	mov.l @r4,r3
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r3),fr2
	add 0x78,r0
	mov.l @r5,r3
	fsub fr3,fr2
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fabs fr2
	fmov fr2,fr4
	fadd fr5,fr4
	fmov @(r0,r3),fr2
	fsub fr3,fr2
	fmov fr5,fr3
	fabs fr2
	fmov fr2,fr5
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf.s loc_8c02f50e
	fadd fr3,fr5
	fmov fr2,fr4

loc_8c02f50e:
	fldi0 fr3
	fcmp/gt fr5,fr3
	bf loc_8c02f516
	fmov fr3,fr5

loc_8c02f516:
	mov.l @r5,r2
	mov.l @r4,r3
	fmov @(r0,r2),fr3
	fmov @(r0,r3),fr2
	mova @(0x3C,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	fabs fr2
	fcmp/gt fr3,fr2
	bf loc_8c02f560
	mov.l @r5,r3
	mov 0x34,r0
	mov.l @r4,r2
	fmov @(r0,r3),fr2
	fmov @(r0,r2),fr1
	add 0x78,r0
	fadd fr2,fr1
	fldi1 fr2
	fadd fr2,fr2
	fdiv fr2,fr1
	bra loc_8c02f5aa
	fmov fr1,@(r0,r14)

;###############################################
	#data 0x00ac
	#align4
	#data bank11.loc_8c11e2e0
	#data bank11.loc_8c11e860
	#data 0xc3480000
	#data 0x8c1f9cd0
	#data 0x8c26a518
	#data 0x8c1f9cd4
	#data 0x43c80000

;----------------------------------------------
loc_8c02f560:
	fcmp/gt fr4,fr5
	mov.w @(0xE2,PC),r0
	bt.s loc_8c02f58a
	fmov @(r0,r14),fr6
	fldi0 fr2
	fcmp/gt fr2,fr4
	bf loc_8c02f5aa
	mov.l @r4,r2
	mov 0x34,r0
	fmov @(r0,r2),fr1
	fcmp/gt fr6,fr1
	bf loc_8c02f580
	mov.w @(0xCC,PC),r0
	fmov @(r0,r14),fr1
	bra loc_8c02f586
	fadd fr4,fr1

loc_8c02f580:
	mov.w @(0xC4,PC),r0
	fmov @(r0,r14),fr1
	fsub fr4,fr1

loc_8c02f586:
	bra loc_8c02f5aa
	fmov fr1,@(r0,r14)

loc_8c02f58a:
	fldi0 fr2
	fcmp/gt fr2,fr5
	bf loc_8c02f5aa
	mov.l @r5,r2
	mov 0x34,r0
	fmov @(r0,r2),fr1
	fcmp/gt fr6,fr1
	bf loc_8c02f5a2
	mov.w @(0xAA,PC),r0
	fmov @(r0,r14),fr1
	bra loc_8c02f5a8
	fadd fr5,fr1

loc_8c02f5a2:
	mov.w @(0xA2,PC),r0
	fmov @(r0,r14),fr1
	fsub fr5,fr1

loc_8c02f5a8:
	fmov fr1,@(r0,r14)

loc_8c02f5aa:
	mov.w @(0x9C,PC),r5
	mov.w @(0x98,PC),r4
	add r14,r5
	bsr loc_8c030060
	add r14,r4
	mov.w @(0x90,PC),r0
	mov 0x08,r5
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c02fbec
	mov 0x00,r4
	lds.l @r15+,pr
	mov 0x00,r4
	mov 0x08,r5
	bra loc_8c02fca2
	mov.l @r15+,r14

;==============================================
loc_8c02f5cc:
	mova @(0x80,PC),r0
	mov.l @(0x84,PC),r3
	mov.l r14,@-r15
	mov 0x18,r6
	sts.l pr,@-r15
	fmov @r0,fr4
	mov.l @r3,r4
	mov.w @(0x6E,PC),r0
	fmov fr4,fr2
	mov.b @(r0,r4),r2
	extu.b r2,r2
	lds r2,fpul
	mov.l @(0x70,PC),r2
	mov.l @r2,r5
	float fpul,fr3
	mov.b @(r0,r5),r3
	mov.b @(0x1,r4),r0
	extu.b r3,r3
	lds r3,fpul
	extu.b r0,r7
	fmov fr3,fr5
	fmul fr4,fr5
	cmp/ge r6,r7
	float fpul,fr3
	fmov fr3,fr4
	fmul fr2,fr4
	bf.s loc_8c02f60c
	fldi0 fr6
	mov 0x1A,r1
	cmp/gt r1,r7
	bt loc_8c02f60c
	fmov fr6,fr5

loc_8c02f60c:
	mov.b @(0x1,r5),r0
	extu.b r0,r7
	cmp/ge r6,r7
	bf loc_8c02f61c
	mov 0x1A,r2
	cmp/gt r2,r7
	bt loc_8c02f61c
	fmov fr6,fr4

loc_8c02f61c:
	mova @(0x3C,PC),r0
	mov.l @(0x44,PC),r14
	fmov @r0,fr7
	mova @(0x3C,PC),r0
	fmov @r0,fr6
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	fadd fr4,fr2
	fadd fr5,fr3
	fcmp/gt fr2,fr3
	bf loc_8c02f668
	fmov @(r0,r4),fr3
	fadd fr5,fr3
	fcmp/gt fr7,fr3
	bf loc_8c02f67a
	fmov @(r0,r4),fr3
	mov 0x78,r0
	fadd fr5,fr3
	fadd fr6,fr3
	bra loc_8c02f67a
	fmov fr3,@(r0,r14)

;###############################################
	#data 0x00ac
	#data 0x00b8
	#data 0x013c
	#align4
	#data 0x40092492
	#data 0x8c1f9cd0
	#data 0x8c1f9cd4
	#data 0x43af0000
	#data 0xc3af0000
	#data 0x8c26a518

;----------------------------------------------
loc_8c02f668:
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fcmp/gt fr7,fr3
	bf loc_8c02f67a
	fmov @(r0,r5),fr3
	mov 0x78,r0
	fadd fr4,fr3
	fadd fr6,fr3
	fmov fr3,@(r0,r14)

loc_8c02f67a:
	mova @(0xF0,PC),r0
	mov.w @(0xE2,PC),r5
	fmov @r0,fr3
	mov 0x78,r0
	fmov @(r0,r14),fr2
	add 0x38,r0
	mov.w @(0xDA,PC),r4
	add r14,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c03009a
	add r14,r4
	mov.w @(0xD0,PC),r0
	mov 0x04,r5
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c02fc48
	mov 0x00,r4
	lds.l @r15+,pr
	mov 0x00,r4
	mov 0x04,r5
	bra loc_8c02fccc
	mov.l @r15+,r14

;----------------------------------------------
loc_8c02f6aa:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xE0,r15
	mov.w @(0xB4,PC),r0
	mov 0x00,r4
	mov.l @(0xB8,PC),r14
	mov.w @(0xA8,PC),r5
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add r14,r5
	mov.w @(0xA0,PC),r4
	bsr loc_8c030060
	add r14,r4
	mov.w @(0x9A,PC),r0
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	add 0x20,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02f6d6:
	mov.l r14,@-r15
	mov 0x00,r4
	mov.l @(0x94,PC),r14
	mov.w @(0x88,PC),r0
	mov.w @(0x80,PC),r5
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add r14,r5
	mov.w @(0x76,PC),r4
	bsr loc_8c03009a
	add r14,r4
	mov.w @(0x72,PC),r0
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02f6fe:
	mov.l @(0x74,PC),r3
	mov.l @r3,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c02f70e
	bra loc_8c02f780
	mov 0x10,r4

loc_8c02f70e:
	bra loc_8c02f84c
	mov 0x10,r4

loc_8c02f712:
	mov.l @(0x60,PC),r3
	mov.l @r3,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c02f722
	bra loc_8c02f7ba
	mov 0x04,r4

loc_8c02f722:
	bra loc_8c02f8ac
	mov 0x04,r4

loc_8c02f726:
	mov.l @(0x4C,PC),r3
	mov.l @r3,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c02f73e
	mov.l @(0x44,PC),r2
	mov.l @r2,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c02f742

loc_8c02f73e:
	bra loc_8c02f780
	mov 0x10,r4

loc_8c02f742:
	bra loc_8c02f84c
	mov 0x10,r4

loc_8c02f746:
	mov.l @(0x2C,PC),r3
	mov.l @r3,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c02f75e
	mov.l @(0x24,PC),r2
	mov.l @r2,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c02f77c

loc_8c02f75e:
	bra loc_8c02f7ba
	mov 0x04,r4

;###############################################
	#data 0x00b8
	#data 0x00ac
	#data 0x00b0
	#data 0x00f4
	#align4
	#data 0x42be0000
	#data 0x8c26a518
	#data 0x8c1f9cd0
	#data 0x8c1f9cd4

;----------------------------------------------
loc_8c02f77c:
	bra loc_8c02f8ac
	mov 0x04,r4

;----------------------------------------------
loc_8c02f780:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x10C,PC),r2
	mov 0x34,r0
	mov.w @(0xF8,PC),r5
	mov.l r4,@r15
	mov.l @r2,r3
	mov.l @(0xFC,PC),r14
	fmov @(r0,r3),fr3
	add 0x78,r0
	mov.w @(0xEE,PC),r4
	add r14,r5
	fmov fr3,@(r0,r14)
	bsr loc_8c030060
	add r14,r4
	mov.w @(0xE4,PC),r0
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8c02fbec
	mov 0x00,r4
	mov.l @r15,r5
	mov 0x00,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c02fca2
	mov.l @r15+,r14

loc_8c02f7ba:
	mov.l @(0xD8,PC),r3
	mov.w @(0xCA,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	mova @(0xD0,PC),r0
	fmov @r0,fr2
	extu.b r2,r2
	mov.b @(0x1,r4),r0
	lds r2,fpul
	mov 0x18,r2
	extu.b r0,r5
	cmp/ge r2,r5
	float fpul,fr3
	fmov fr3,fr4
	bf.s loc_8c02f7e6
	fmul fr2,fr4
	mov 0x1A,r0
	cmp/gt r0,r5
	bt loc_8c02f7e6
	fldi0 fr4

loc_8c02f7e6:
	mov 0x38,r0
	mov.l @(0xA4,PC),r14
	fmov @(r0,r4),fr3
	mova @(0xAC,PC),r0
	fmov @r0,fr2
	fadd fr4,fr3
	fcmp/gt fr2,fr3
	bf loc_8c02f806
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mova @(0xA4,PC),r0
	fmov @r0,fr1
	mov 0x78,r0
	fadd fr4,fr3
	fadd fr1,fr3
	fmov fr3,@(r0,r14)

loc_8c02f806:
	mova @(0x9C,PC),r0
	mov.w @(0x7A,PC),r5
	fmov @r0,fr3
	mov 0x78,r0
	fmov @(r0,r14),fr2
	add 0x38,r0
	mov.w @(0x72,PC),r4
	add r14,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c03009a
	add r14,r4
	mov.w @(0x6A,PC),r0
	mov.l @(0x70,PC),r3
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	mov.l @r3,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02f83c
	mov 0x02,r5
	bsr loc_8c02fc48
	mov 0x00,r4
	bra loc_8c02f844
	mov 0x02,r5

loc_8c02f83c:
	mov 0x04,r5
	bsr loc_8c02fc48
	mov 0x00,r4
	mov 0x04,r5

loc_8c02f844:
	lds.l @r15+,pr
	mov 0x00,r4
	bra loc_8c02fccc
	mov.l @r15+,r14

loc_8c02f84c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x54,PC),r2
	mov 0x34,r0
	mov.w @(0x2C,PC),r5
	mov.l r4,@r15
	mov.l @r2,r3
	mov.l @(0x30,PC),r14
	fmov @(r0,r3),fr3
	add 0x78,r0
	mov.w @(0x22,PC),r4
	add r14,r5
	fmov fr3,@(r0,r14)
	bsr loc_8c030060
	add r14,r4
	mov.w @(0x18,PC),r0
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8c02fbec
	mov 0x00,r4
	mov.l @r15,r5
	mov 0x00,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c02fca2
	mov.l @r15+,r14

;###############################################
	#data 0x00b8
	#data 0x00ac
	#data 0x013c
	#data 0x00b0
	#align4
	#data 0x8c26a518
	#data 0x8c1f9cd0
	#data 0x40092492
	#data 0x43af0000
	#data 0xc3af0000
	#data 0x42be0000
	#data 0x8c1f9cd4

;----------------------------------------------
loc_8c02f8ac:
	mov.l @(0xF4,PC),r3
	mov.w @(0xEA,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	mova @(0xEC,PC),r0
	fmov @r0,fr2
	extu.b r2,r2
	mov.b @(0x1,r4),r0
	lds r2,fpul
	mov 0x18,r2
	extu.b r0,r5
	cmp/ge r2,r5
	float fpul,fr3
	fmov fr3,fr4
	bf.s loc_8c02f8d8
	fmul fr2,fr4
	mov 0x1A,r0
	cmp/gt r0,r5
	bt loc_8c02f8d8
	fldi0 fr4

loc_8c02f8d8:
	mov 0x38,r0
	mov.l @(0xD0,PC),r14
	fmov @(r0,r4),fr3
	mova @(0xD0,PC),r0
	fmov @r0,fr2
	fadd fr4,fr3
	fcmp/gt fr2,fr3
	bf loc_8c02f8f8
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mova @(0xC4,PC),r0
	fmov @r0,fr1
	mov 0x78,r0
	fadd fr4,fr3
	fadd fr1,fr3
	fmov fr3,@(r0,r14)

loc_8c02f8f8:
	mova @(0xBC,PC),r0
	mov.w @(0xA0,PC),r5
	fmov @r0,fr3
	mov 0x78,r0
	fmov @(r0,r14),fr2
	add 0x38,r0
	mov.w @(0x98,PC),r4
	add r14,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c03009a
	add r14,r4
	mov.w @(0x8E,PC),r0
	mov.l @(0x90,PC),r3
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	mov.l @r3,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02f92e
	mov 0x02,r5
	bsr loc_8c02fc48
	mov 0x00,r4
	bra loc_8c02f936
	mov 0x02,r5

loc_8c02f92e:
	mov 0x04,r5
	bsr loc_8c02fc48
	mov 0x00,r4
	mov 0x04,r5

loc_8c02f936:
	lds.l @r15+,pr
	mov 0x00,r4
	bra loc_8c02fccc
	mov.l @r15+,r14

;----------------------------------------------
loc_8c02f93e:
	mova @(0x78,PC),r0
	mov.l r14,@-r15
	mov.w @(0x58,PC),r5
	mov.l @(0x64,PC),r14
	sts.l pr,@-r15
	fmov @r0,fr3
	add r14,r5
	mov.w @(0x52,PC),r0
	mov.w @(0x4E,PC),r4
	fmov fr3,@(r0,r14)
	bsr loc_8c03009a
	add r14,r4
	mov.w @(0x48,PC),r0
	mov 0x04,r5
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c02fc48
	mov 0x00,r4
	lds.l @r15+,pr
	mov 0x00,r4
	mov 0x04,r5
	bra loc_8c02fccc
	mov.l @r15+,r14

loc_8c02f96e:
	mov.l @(0x34,PC),r0
	mov.l @(0x48,PC),r2
	mov.l @r0,r1
	mov 0x38,r0
	mov.l @r2,r3
	fmov @(r0,r1),fr3
	fmov @(r0,r3),fr2
	fcmp/gt fr2,fr3
	bt loc_8c02f984

loc_8c02f980:
	bra loc_8c02f8ac
	mov 0x04,r4

loc_8c02f984:
	bra loc_8c02f7ba
	mov 0x04,r4

loc_8c02f988:
	mov.l @(0x30,PC),r3
	mov.l @r3,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c02f998
	bra loc_8c02f780
	mov 0x10,r4

loc_8c02f998:
	bra loc_8c02f84c
	mov 0x10,r4

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x013c
	#data 0x00b8
	#data 0x00ac
	#data 0x00b0
	#align4
	#data 0x8c1f9cd4
	#data 0x40092492
	#data 0x8c26a518
	#data 0x43af0000
	#data 0xc3af0000
	#data 0x42be0000
	#data 0x8c1f9cd0

;----------------------------------------------
loc_8c02f9c0:
	mov.l @(0x100,PC),r3
	mov.l @r3,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c02f9d0
	bra loc_8c02f7ba
	mov 0x04,r4

loc_8c02f9d0:
	bra loc_8c02f8ac
	mov 0x04,r4

loc_8c02f9d4:
	mov.l r14,@-r15
	mov.w @(0xE0,PC),r5
	mov.l @(0xEC,PC),r14
	sts.l pr,@-r15
	mov.w @(0xDC,PC),r4
	add r14,r5
	bsr loc_8c030060
	add r14,r4
	mov.w @(0xD4,PC),r0
	mov 0x08,r5
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c02fbec
	mov 0x00,r4
	lds.l @r15+,pr
	mov 0x00,r4
	mov 0x08,r5
	bra loc_8c02fca2
	mov.l @r15+,r14

loc_8c02f9fc:
	mov.l @(0xC4,PC),r2
	mov.w @(0xBC,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c02fa0c
	bra loc_8c02f7ba
	mov 0x02,r4

loc_8c02fa0c:
	bra loc_8c02f8ac
	mov 0x02,r4

loc_8c02fa10:
	mov.l @(0xB0,PC),r3
	mov.l @r3,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fa20
	bra loc_8c02f780
	mov 0x02,r4

loc_8c02fa20:
	bra loc_8c02f84c
	mov 0x02,r4

loc_8c02fa24:
	mov.l @(0x9C,PC),r3
	mov.l @r3,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fa34
	bra loc_8c02f7ba
	mov 0x02,r4

loc_8c02fa34:
	bra loc_8c02f8ac
	mov 0x02,r4

loc_8c02fa38:
	mov.w @(0x80,PC),r0
	mov.l @(0x8C,PC),r4
	fldi0 fr4
	fmov fr4,@(r0,r4)
	fmov @(r0,r4),fr3
	add 0x0C,r0
	mov.l @(0x84,PC),r3
	fmov fr3,@(r0,r4)
	add 0xF4,r0
	fmov @(r0,r4),fr3
	mov.l @(0x80,PC),r2
	fmov fr3,@r3
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	fmov fr3,@r2
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	rts
	fmov fr4,@(r0,r4)

loc_8c02fa5e:
	mova @(0x74,PC),r0
	mov.l @(0x64,PC),r4
	fmov @r0,fr4
	mov.w @(0x58,PC),r0
	mov.l @(0x70,PC),r3
	fmov fr4,@(r0,r4)
	fmov @(r0,r4),fr3
	add 0x0C,r0
	mov.l @(0x6C,PC),r2
	fmov fr3,@(r0,r4)
	add 0xF4,r0
	fmov @(r0,r4),fr3
	fmov fr3,@r3
	fmov @(r0,r4),fr3
	mov 0x10,r0
	fmov fr3,@r2
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,fr3
	rts
	fmov fr3,@(r0,r4)

;----------------------------------------------
loc_8c02fa88:
	mov.l r14,@-r15
	extu.b r4,r3
	mov.l @(0x50,PC),r14
	tst r3,r3
	bt loc_8c02faec
	mov.l @(0x34,PC),r6
	mov.b @(0x6,r6),r0
	tst r0,r0
	bt.s loc_8c02faa8
	extu.b r4,r2
	mov 0x00,r5
	mov r5,r0
	nop
	mov.l @(0x40,PC),r3
	mov.b r0,@(0x6,r6)
	mov.b r0,@r3

loc_8c02faa8:
	add 0xFF,r2
	mov.l @(0x3C,PC),r0
	add r2,r14
	mov.b @r14,r3
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00b8
	#data 0x00ac
	#data 0x0248
	#data 0x00b0
	#align4
	#data 0x8c1f9cd0
	#data 0x8c26a518
	#data 0x8c1f9cd8
	#data 0x8c1f9ce4
	#data 0x42be0000
	#data 0x8c1f9cdc
	#data 0x8c1f9ce8
	#data bank13.loc_8c135480
	#data 0x8c1f9d0e
	#data bank14.loc_8c14cacc

;----------------------------------------------
loc_8c02faec:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c02faf0:
	extu.b r4,r5
	mov.l @(0x12C,PC),r1
	add 0xFF,r5
	mov.l @(0x120,PC),r6
	mov.l @(0x120,PC),r0
	shll2 r5
	mov.b @r1,r3
	add r5,r6
	add r5,r0
	mov.l @(0x128,PC),r4
	mov.l @(0x11C,PC),r7
	tst r3,r3
	mov.l @(0x11C,PC),r5
	bf loc_8c02fb2a
	mov.l @r0,r3
	mov 0x01,r2
	mov.l r3,@r4
	mov r2,r3
	mov.b r2,@r1
	mov.l r2,@r7
	fmov @r6,fr3
	fmov fr3,@r5
	mov.l @r4,r3
	fmov @r5,fr2
	lds r3,fpul
	mov.l @(0x10C,PC),r3
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@r3

loc_8c02fb2a:
	mov.l @r4,r2
	mov.l @(0x104,PC),r6
	tst r2,r2
	bt loc_8c02fb60
	mov 0x10,r0
	mov.l @r4,r3
	add 0xFF,r3
	mov.l r3,@r4
	mov.l @r7,r2
	fmov @r5,fr0
	lds r2,fpul
	fmov @(r0,r6),fr2
	mov.l @(0xEC,PC),r2
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r6)
	mov 0x58,r0
	fmov fr2,fr3
	fmov fr3,@(r0,r6)
	mov.l @r7,r3
	neg r3,r3
	mov.l r3,@r7
	fmov @r5,fr2
	fmov @r2,fr3
	fsub fr3,fr2
	rts
	fmov fr2,@r5

loc_8c02fb60:
	mov 0x00,r4
	mov.b r4,@r1
	mov r4,r0
	nop
	mov.b r0,@(0x5,r6)
	rts
	nop

loc_8c02fb6e:
	extu.b r4,r5
	mov.l @(0xAC,PC),r1
	add 0xFF,r5
	mov.l @(0xA0,PC),r6
	mov.l @(0xA4,PC),r0
	shll2 r5
	mov.b @r1,r3
	add r5,r6
	add r5,r0
	mov.l @(0xB8,PC),r4
	mov.l @(0xB4,PC),r7
	tst r3,r3
	mov.l @(0xA0,PC),r5
	bf loc_8c02fba8
	mov.l @r0,r3
	mov 0x01,r2
	mov.l r3,@r4
	mov r2,r3
	mov.b r2,@r1
	mov.l r2,@r7
	fmov @r6,fr3
	fmov fr3,@r5
	mov.l @r4,r3
	fmov @r5,fr2
	lds r3,fpul
	mov.l @(0x9C,PC),r3
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@r3

loc_8c02fba8:
	mov.l @r4,r2
	mov.l @(0x88,PC),r6
	tst r2,r2
	bt loc_8c02fbde
	mov 0x10,r0
	mov.l @r4,r3
	add 0xFF,r3
	mov.l r3,@r4
	mov.l @r7,r2
	fmov @r5,fr0
	lds r2,fpul
	fmov @(r0,r6),fr2
	mov.l @(0x7C,PC),r2
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r6)
	mov 0x58,r0
	fmov fr2,fr3
	fmov fr3,@(r0,r6)
	mov.l @r7,r3
	neg r3,r3
	mov.l r3,@r7
	fmov @r5,fr2
	fmov @r2,fr3
	fsub fr3,fr2
	rts
	fmov fr2,@r5

loc_8c02fbde:
	mov 0x00,r4
	mov.b r4,@r1
	mov r4,r0
	nop
	mov.b r0,@(0x5,r6)
	rts
	nop

loc_8c02fbec:
	add 0xF4,r15
	mov.l @(0x54,PC),r4
	mov r15,r7
	mov.w @(0x20,PC),r0
	mov.l @(0x3C,PC),r6
	lds r5,fpul
	fmov @(r0,r6),fr2
	mov 0x0C,r0
	fmov @r4,fr3
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,fr3
	fmov fr2,@r7
	fmov @r4,fr2
	fadd fr3,fr2
	fmov fr2,fr3
	fmov fr2,@(r0,r6)
	fmov fr3,@r4
	rts
	add 0x0C,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x00ac
	#align4
	#data bank13.loc_8c135468
	#data bank13.loc_8c135474
	#data 0x8c1f9d0e
	#data 0x8c1f9d58
	#data 0x8c1f9d08
	#data 0x8c1f9d54
	#data 0x8c1f9d5c
	#data 0x8c26a518
	#data 0x8c1f9d64
	#data 0x8c1f9d60
	#data 0x8c1f9d68
	#data 0x8c1f9cd8

;----------------------------------------------
loc_8c02fc48:
	add 0xF4,r15
	mov.l @(0x13C,PC),r4
	mov 0x04,r0
	mov.l @(0x134,PC),r6
	mov r15,r7
	fmov @(r0,r4),fr3
	mov.w @(0x122,PC),r0
	lds r5,fpul
	fmov @(r0,r6),fr2
	mov 0x04,r0
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr3,fr4
	fmov fr2,@(r0,r7)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov.w @(0x10E,PC),r0
	fmov @(r0,r6),fr2
	mov 0x08,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r7)
	mov 0x04,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r7),fr3
	mov 0x10,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r6)
	mov 0x08,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r7),fr3
	fadd fr3,fr2
	mov 0x14,r0
	fmov fr2,@(r0,r6)
	mov 0x10,r0
	fmov @(r0,r6),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r6),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r4)
	rts
	add 0x0C,r15

;----------------------------------------------
loc_8c02fca2:
	add 0xF4,r15
	mov.l @(0xE4,PC),r4
	mov r15,r7
	mov.w @(0xD2,PC),r0
	mov.l @(0xD8,PC),r6
	lds r5,fpul
	fmov @(r0,r6),fr2
	mov 0x54,r0
	fmov @r4,fr3
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,fr3
	fmov fr2,@r7
	fmov @r4,fr2
	fadd fr3,fr2
	fmov fr2,fr3
	fmov fr2,@(r0,r6)
	fmov fr3,@r4
	rts
	add 0x0C,r15

;==============================================
loc_8c02fccc:
	add 0xF4,r15
	mov.l @(0xBC,PC),r4
	mov 0x04,r0
	mov.l @(0xB0,PC),r6
	mov r15,r7
	fmov @(r0,r4),fr3
	mov.w @(0xA4,PC),r0
	lds r5,fpul
	fmov @(r0,r6),fr2
	mov 0x04,r0
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr3,fr4
	fmov fr2,@(r0,r7)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov.w @(0x90,PC),r0
	fmov @(r0,r6),fr2
	mov 0x08,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r7)
	mov 0x04,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r7),fr3
	mov 0x58,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r6)
	mov 0x08,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r7),fr3
	fadd fr3,fr2
	mov 0x5C,r0
	fmov fr2,@(r0,r6)
	mov 0x58,r0
	fmov @(r0,r6),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r6),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r4)
	rts
	add 0x0C,r15

;==============================================
loc_8c02fd26:
	mov.l @(0x68,PC),r3
	mov.l @(0x58,PC),r4
	mov.l @r3,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fd3e
	mov 0x04,r5
	mov r5,r0
	nop
	bra loc_8c02fd5c
	mov.b r0,@(0x1,r4)

loc_8c02fd3e:
	mov.l @(0x54,PC),r2
	mov.l @r2,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fd54
	mov 0x03,r5
	mov r5,r0
	nop
	bra loc_8c02fd5c
	mov.b r0,@(0x1,r4)

loc_8c02fd54:
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x1,r4)

loc_8c02fd5c:
	mov.b r0,@(0x2,r4)
	rts
	nop

loc_8c02fd62:
	mov.l @(0x20,PC),r4
	mov.b @(0x1,r4),r0
	cmp/eq 0x02,r0
	bt loc_8c02fdac
	mov.l @(0x24,PC),r3
	mov.l @r3,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fd98
	bra loc_8c02fdaa
	mov 0x04,r0

;###############################################
	#data 0x00b0
	#data 0x00b4
	#data 0x00b8
	#data 0x00bc
	#data 0x00c0
	#align4
	#data 0x8c26a518
	#data 0x8c1f9cd8
	#data 0x8c1f9ce4
	#data 0x8c1f9cd0
	#data 0x8c1f9cd4

;----------------------------------------------
loc_8c02fd98:
	mov.l @(0xD0,PC),r2
	mov.l @r2,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fda8
	bra loc_8c02fdaa
	mov 0x03,r0

loc_8c02fda8:
	mov 0x00,r0

loc_8c02fdaa:
	mov.b r0,@(0x1,r4)

loc_8c02fdac:
	rts
	nop

;==============================================
loc_8c02fdb0:
	mov.l @(0xBC,PC),r4
	mov.b @(0x2,r4),r0
	cmp/eq 0x02,r0
	bt loc_8c02fddc
	mov.l @(0xB8,PC),r3
	mov.l @r3,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fdc8
	bra loc_8c02fdda
	mov 0x04,r0

loc_8c02fdc8:
	mov.l @(0xA0,PC),r2
	mov.l @r2,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fdd8
	bra loc_8c02fdda
	mov 0x03,r0

loc_8c02fdd8:
	mov 0x00,r0

loc_8c02fdda:
	mov.b r0,@(0x2,r4)

loc_8c02fddc:
	rts
	nop

;==============================================
loc_8c02fde0:
	mov.l @(0x94,PC),r2
	mov 0x03,r1
	mov.b @r2,r3
	extu.b r3,r3
	cmp/gt r1,r3
	bf loc_8c02feba
	mov.l @(0x80,PC),r7
	mov.l @(0x7C,PC),r3
	mov.b @(0x1,r7),r0
	mov.l @(0x80,PC),r2
	mov.l @r3,r5
	cmp/eq 0x01,r0
	mov r0,r6
	bt.s loc_8c02fe04
	mov.l @r2,r4
	mov.b @(0x2,r7),r0
	cmp/eq 0x01,r0
	bf loc_8c02fe30

loc_8c02fe04:
	mov r6,r0
	nop
	cmp/eq 0x08,r0
	bt loc_8c02fe30
	mov.l @(0x6C,PC),r3
	mov.b @r3,r0
	cmp/eq 0x08,r0
	bt loc_8c02fe30
	mov.w @(0x50,PC),r0
	mov.b @(r0,r7),r3
	tst r3,r3
	bt loc_8c02fe28
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c02febe
	bra loc_8c02fe30
	nop

loc_8c02fe28:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c02febe

loc_8c02fe30:
	mov.b @(0x5,r4),r0
	mov r0,r3
	mov.b @(0x5,r5),r0
	cmp/eq r0,r3
	bf loc_8c02feba
	mov r6,r0
	nop
	cmp/eq 0x02,r0
	bt loc_8c02feba
	mov.l @(0x38,PC),r3
	mov.b @r3,r0
	cmp/eq 0x02,r0
	bt loc_8c02feba
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c02febe
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf.s loc_8c02fe80
	mov 0x15,r6
	mov.w @(0xC,PC),r0
	mov.b @(r0,r5),r2
	extu.b r2,r2
	cmp/ge r6,r2
	bf loc_8c02febe
	bra loc_8c02feba
	nop

;###############################################
	#data 0x00f9
	#data 0x01d0
	#align4
	#data 0x8c1f9cd4
	#data 0x8c26a518
	#data 0x8c1f9cd0
	#data 0x8c2895f0
	#data 0x8c26a51a

;----------------------------------------------
loc_8c02fe80:
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fe96
	mov.w @(0xCE,PC),r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r6,r2
	bf loc_8c02febe
	bra loc_8c02feba
	nop

loc_8c02fe96:
	mov.w @(0xC0,PC),r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r6,r3
	bf loc_8c02fea8
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bf loc_8c02feba

loc_8c02fea8:
	mov.w @(0xAE,PC),r0
	mov.b @(r0,r5),r3
	extu.b r3,r3
	cmp/ge r6,r3
	bf loc_8c02febe
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c02febe

loc_8c02feba:
	rts
	mov 0x00,r0

loc_8c02febe:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c02fec4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	tst r14,r14
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x88,PC),r12
	bf.s loc_8c02fee8
	mov r6,r10
	mov r5,r0
	nop
	mov.b r0,@(0x1,r12)
	mov r10,r0
	nop
	bra loc_8c02ff44
	mov.b r0,@(0x2,r12)

loc_8c02fee8:
	mov.w @(0x70,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c02ff44
	exts.b r5,r11
	mov r11,r0
	nop
	cmp/eq 0x0D,r0
	bt loc_8c02ff08
	mov r5,r0
	nop
	tst r11,r11
	bf.s loc_8c02ff08
	mov.b r0,@(0x1,r12)
	bsr loc_8c02fd62
	nop

loc_8c02ff08:
	exts.b r10,r13
	mov r13,r0
	nop
	cmp/eq 0x0D,r0
	bt loc_8c02ff20
	mov r10,r0
	nop
	tst r13,r13
	bf.s loc_8c02ff20
	mov.b r0,@(0x2,r12)
	bsr loc_8c02fdb0
	nop

loc_8c02ff20:
	mov r11,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c02ff30
	mov r13,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c02ff44

loc_8c02ff30:
	tst r14,r14
	bt loc_8c02ff44
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c02ff52
	mov.l @r15+,r14

loc_8c02ff44:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c02ff52:
	mov.l @(0x10,PC),r3
	mov.b @(0x2,r4),r0
	rts
	mov.b r0,@r3

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x01d0
	#data 0x0411
	#align4
	#data 0x8c26a518
	#data 0x8c26a611

;==============================================
loc_8c02ff68:
	mov.l r14,@-r15
	mov.l @(0xE4,PC),r14
	mov.l r13,@-r15
	mov.l @(0xE4,PC),r3
	mov.l r12,@-r15
	mov.l @(0xE4,PC),r2
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	mov.l @r2,r5
	mov r0,r12
	mov.w @(0xC2,PC),r0
	mov.l @r3,r4
	mov.b @(r0,r5),r3
	mov.b @(r0,r4),r1
	extu.b r3,r3
	mov.l @(0xD0,PC),r13
	extu.b r1,r1
	mov.l @(0xBC,PC),r11
	or r3,r1
	tst r1,r1
	bt loc_8c02ffb2
	exts.b r12,r0
	cmp/eq 0x01,r0
	bf loc_8c02ffa4
	mov.l @(0x4,r13),r1
	jsr @r1
	mov 0x08,r4
	bra loc_8c02ffae
	nop

loc_8c02ffa4:
	mov.b @(0x3,r14),r0
	shll2 r0
	mov.l @(r0,r13),r3
	jsr @r3
	mov 0x08,r4

loc_8c02ffae:
	bra loc_8c030032
	mov.b @(0x4,r14),r0

;----------------------------------------------
loc_8c02ffb2:
	mov.w @(0x90,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c02ffc0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c02ffd4

loc_8c02ffc0:
	bsr loc_8c02f6aa
	mov 0x02,r4
	lds.l @r15+,pr
	mov.l @r11,r2
	mov 0x02,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c02ffd4:
	mov.w @(0x70,PC),r0
	mov.b @(r0,r5),r2
	mov.b @(r0,r4),r3
	extu.b r2,r2
	extu.b r3,r3
	or r2,r3
	tst r3,r3
	bt loc_8c030026
	mov.w @(0x62,PC),r0
	mov.b @(r0,r5),r3
	mov.b @(r0,r4),r1
	cmp/eq r3,r1
	bf loc_8c02fffa
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c030026
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c030026

loc_8c02fffa:
	mov.w @(0x4A,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c030014
	bsr loc_8c02f780
	mov 0x02,r4
	lds.l @r15+,pr
	mov 0x04,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c02f7ba
	mov.l @r15+,r14

loc_8c030014:
	bsr loc_8c02f84c
	mov 0x02,r4
	lds.l @r15+,pr
	mov 0x04,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c02f8ac
	mov.l @r15+,r14

loc_8c030026:
	exts.b r12,r0
	shll2 r0
	mov.l @(r0,r13),r3
	jsr @r3
	mov 0x08,r4
	mov.b @(0x2,r14),r0

loc_8c030032:
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r11),r3
	mov 0x08,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
	#data 0x0248
	#data 0x029f
	#data 0x0235
	#data 0x01a0
	#align4
	#data bank14.loc_8c14ca98
	#data 0x8c26a518
	#data 0x8c1f9cd0
	#data 0x8c1f9cd4
	#data bank14.loc_8c14ca64


;===============================================================================
loc_8c030060:
	mova @(0xA8,PC),r0
	fmov @r4,fr3
	fmov @r0,fr6
	mova @(0xA8,PC),r0
	fmov @r0,fr5
	mov.l @(0xA8,PC),r6
	fadd fr5,fr3
	mov.w @(0x92,PC),r0
	fmov @(r0,r6),fr4
	fcmp/gt fr4,fr3
	bf loc_8c030080
	fadd fr6,fr4
	fmov fr4,@r4
	fmov @(r0,r6),fr3
	fadd fr6,fr3
	fmov fr3,@r5

loc_8c030080:
	fmov @r4,fr3
	mov.w @(0x80,PC),r0
	fadd fr6,fr3
	fmov @(r0,r6),fr4
	fcmp/gt fr3,fr4
	bf loc_8c030096
	fadd fr5,fr4
	fmov fr4,@r4
	fmov @(r0,r6),fr3
	fadd fr5,fr3
	fmov fr3,@r5

loc_8c030096:
	rts
	nop

;===============================================================================
loc_8c03009a:
	mova @(0x7C,PC),r0
	fmov @r0,fr4
	mov 0x04,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c0300a8
	fmov fr4,@(r0,r4)

loc_8c0300a8:
	mova @(0x70,PC),r0
	fmov @r0,fr4
	mov 0x04,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0300b6
	fmov fr4,@(r0,r4)

loc_8c0300b6:
	rts
	nop

;===============================================================================
loc_8c0300ba:
	mova @(0x54,PC),r0
	mov.l @(0x54,PC),r4
	fmov @r0,fr3
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov.w @(0x40,PC),r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x40,PC),r0
	fmov @r0,fr2
	mov 0x0C,r0
	fmov @(r0,r4),fr1
	add 0x7C,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mova @(0x44,PC),r0
	fmov @r0,fr1
	mov 0x10,r0
	fmov @(r0,r4),fr0
	mov.w @(0x26,PC),r0
	fadd fr1,fr0
	fmov fr0,@(r0,r4)
	mova @(0x3C,PC),r0
	fmov @r0,fr3
	mov.w @(0x1C,PC),r0
	fmov @(r0,r4),fr0
	add 0xE8,r0
	fadd fr3,fr0
	fmov fr0,@(r0,r4)
	mova @(0x30,PC),r0
	fmov @r0,fr2
	mov.w @(0xE,PC),r0
	fmov @(r0,r4),fr0
	add 0xEC,r0
	fadd fr2,fr0
	rts
	fmov fr0,@(r0,r4)

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	#data 0x009c
	#data 0x0098
	#data 0x008c
	#data 0x00a8
	#align4
	#data 0xc3a00000
	#data 0x43a00000
	#data 0x8c26a518
	#data 0x42be0000
	#data 0x44610000
	#data 0x42c4cccd
	#data 0x43700000
	#data 0xc3700000
