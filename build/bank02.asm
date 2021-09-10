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
	mov.l @(loc_8c020188,PC),r3
	mov 0x0B,r5
	mov.w r0,@(0x4,r15)
	mov 0,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0200c4
	mov r0,r4
	mov.l @(loc_8c02018c,PC),r2
	mov 0x00,r3
	mov.w @(loc_8c020184,PC),r0
	mov.b r3,@(r0,r4)
	add 0xa0,r0
	mov.l r2,@(0x10,r4)
	mov 0x01,r3
	mov.l @(loc_8c020190,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @r2,r0
	mov.l @r0,r3
	mov.w @(0x4,r15),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.l @(loc_8c020194,PC),r3
	mov.w @(loc_8c020186,PC),r0
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
	mov.l @(loc_8c020198,PC),r1
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
	mov.w @(loc_8c020184,PC),r0
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
	mova @(loc_8c02019c,PC),r0
	bra loc_8c020110
	fmov @r0,fr3

loc_8c020106:
	mova @(loc_8c0201a0,PC),r0
	bra loc_8c020110
	fmov @r0,fr3

loc_8c02010c:
	mova @(loc_8c0201a4,PC),r0
	fmov @r0,fr3

loc_8c020110:
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c020114:
	rts
	nop

;----------------------------------------------
loc_8c020118:
	mov.l @(loc_8c020194,PC),r3
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
	mov.l @(loc_8c020188,PC),r3
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.w r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c02017c
	mov r0,r4
	mov.w @(loc_8c020184,PC),r0
	mov 0x00,r3
	mov 0x23,r1
	mov.l @(loc_8c0201a8,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x21,r3
	add 0xA0,r0
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	add r4,r1
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c020190,PC),r3
	mov.b r0,@r1
	mov.w @r15,r2
	mov.l @r3,r0
	extu.w r2,r2
	mov.l @(loc_8c020194,PC),r1
	mov.l @r0,r0
	shll2 r2
	fldi1 fr3
	mov.l @(r0,r2),r2
	mov.w @(loc_8c020186,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c020184:
	#data 0x012c
loc_8c020186:
	#data 0x0084
	#align4

loc_8c020188:
	#data bank04.loc_8c044f12
loc_8c02018c:
	#data loc_8c0200cc
loc_8c020190:
	#data 0x8c26a940
loc_8c020194:
	#data 0x8c2897a9
loc_8c020198:
	#data bank14.loc_8c1474cc
loc_8c02019c:
	#data 0xc1500000
loc_8c0201a0:
	#data 0xc154cccd
loc_8c0201a4:
	#data 0xc14b3333
loc_8c0201a8:
	#data loc_8c0201ac

;----------------------------------------------
loc_8c0201ac:
	mov r4,r3
	mov.l @(loc_8c0202d0,PC),r1
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
	mov.l @(loc_8c0202d4,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x7F,r0
	bt loc_8c0201d8
	mova @(loc_8c0202d8,PC),r0
	bra loc_8c0201da
	fmov @r0,fr3

loc_8c0201d8:
	fldi0 fr3

loc_8c0201da:
	mov 0x34,r0
	fmov fr3,@(r0,r4)

loc_8c0201de:
	mov.w @(loc_8c0202c8,PC),r0
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
	mov.l @(loc_8c0202dc,PC),r0
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
	mov.l @(loc_8c0202e0,PC),r1
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
	mov.w @(loc_8c0202ca,PC),r3
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
	mova @(loc_8c0202e4,PC),r0
	mov.l @(loc_8c0202f4,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c0202e8,PC),r0
	mov.l @(loc_8c0202f0,PC),r3
	fmov @r0,fr2
	mova @(loc_8c0202ec,PC),r0
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
	mov.l @(loc_8c0202f8,PC),r5
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
	mova @(loc_8c0202d8,PC),r0
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
	mov.w @(loc_8c0202cc,PC),r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c0202fc
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c0202c8,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x5A,r0
	bra loc_8c02031a
	mov.b r13,@(r0,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0202c8:
	#data 0x012c
loc_8c0202ca:
	#data 0x0168
loc_8c0202cc:
	#data 0x00ff
	#align4
loc_8c0202d0:
	#data bank14.loc_8c1474dc
loc_8c0202d4:
	#data 0x8c2897aa
loc_8c0202d8:
	#data 0x40966666
loc_8c0202dc:
	#data bank14.loc_8c1474ec
loc_8c0202e0:
	#data bank14.loc_8c147524
loc_8c0202e4:
	#data 0x3f000000
loc_8c0202e8:
	#data 0x47800000
loc_8c0202ec:
	#data 0x43b40000
loc_8c0202f0:
	#data 0x0000ffff
loc_8c0202f4:
	#data bank11.loc_8c11e2e0
loc_8c0202f8:
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
	mov.w @(loc_8c0203be,PC),r0
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
	mov.l @(loc_8c0203c4,PC),r3
	mov.b r0,@(0x4,r4)
	mov 0x00,r5
	mov.w @(loc_8c0203be,PC),r0
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
	mov.l @(loc_8c0203c8,PC),r2
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
	mov.l @(loc_8c0203cc,PC),r14
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
	mov.w @(loc_8c0203c0,PC),r5
	bra loc_8c02046a
	mov 0x02,r4

loc_8c0203b8:
	mov.w @(loc_8c0203c2,PC),r5
	bra loc_8c02046a
	mov 0x03,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0203be:
	#data 0x012c
loc_8c0203c0:
	#data 0x0126
loc_8c0203c2:
	#data 0x0127
loc_8c0203c4:
	#data 0x8c2897aa
loc_8c0203c8:
	#data 0x8c2897a9
loc_8c0203cc:
	#data 0x8c289750

;----------------------------------------------
loc_8c0203d0:
	mov.w @(loc_8c02047c,PC),r5
	bsr loc_8c020128
	mov 0x04,r4
	mov.w @(loc_8c02047e,PC),r5
	bsr loc_8c020128
	mov 0x05,r4
	mov 0x2B,r0
	mov.w @(loc_8c020480,PC),r13
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
	mov.w @(loc_8c020482,PC),r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02044e
	nop

loc_8c02042a:
	mov.w @(loc_8c020482,PC),r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02045a
	nop

loc_8c020434:
	mov.w @(loc_8c020484,PC),r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02044e
	nop

loc_8c02043e:
	mov.w @(loc_8c020484,PC),r5
	bsr loc_8c020128
	mov 0x06,r4
	bra loc_8c02045a
	nop

loc_8c020448:
	mov.w @(loc_8c020486,PC),r5
	bsr loc_8c020128
	mov 0x06,r4

loc_8c02044e:
	mov.w @(loc_8c020488,PC),r5
	bra loc_8c02046a
	mov 0x07,r4

loc_8c020454:
	mov.w @(loc_8c020486,PC),r5
	bsr loc_8c020128
	mov 0x06,r4

loc_8c02045a:
	lds.l @r15+,pr
	mov.w @(loc_8c02048a,PC),r5
	mov 0x07,r4
	mov.l @r15+,r13
	bra loc_8c020128
	mov.l @r15+,r14

loc_8c020466:
	mov.w @(loc_8c02048c,PC),r5
	mov 0x08,r4

loc_8c02046a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c020128
	mov.l @r15+,r14

;----------------------------------------------
loc_8c020472:
	mov.w @(loc_8c02048e,PC),r5
	bsr loc_8c020128
	mov 0x09,r4
	bra loc_8c020496
	nop

;##############################################
loc_8c02047c:
	#data 0x0128
loc_8c02047e:
	#data 0x012c
loc_8c020480:
	#data 0x012d
loc_8c020482:
	#data 0x012e
loc_8c020484:
	#data 0x012f
loc_8c020486:
	#data 0x0130
loc_8c020488:
	#data 0x0131
loc_8c02048a:
	#data 0x0132
loc_8c02048c:
	#data 0x0129
loc_8c02048e:
	#data 0x012a

;----------------------------------------------
loc_8c020490:
	mov.w @(loc_8c0204ca,PC),r5
	bsr loc_8c020128
	mov 0x0C,r4

loc_8c020496:
	mov.w @(loc_8c0204cc,PC),r5
	bsr loc_8c020128
	mov 0x0A,r4
	mov.w @(loc_8c0204ce,PC),r5
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
	mov.w @(loc_8c0204d0,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;----------------------------------------------
loc_8c0204c4:
	mov.l @(loc_8c0204d4,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0204ca:
	#data 0x012b
loc_8c0204cc:
	#data 0x010a
loc_8c0204ce:
	#data 0x0133
loc_8c0204d0:
	#data 0x012c
	#align4
loc_8c0204d4:
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
	mov.w @(loc_8c02059a,PC),r5
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
	mov.l @(loc_8c0205a0,PC),r3
	mov 0x0B,r5
	mov.w r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c020580
	mov r0,r4
	mov.w @(loc_8c02059c,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c0205a4,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c0205a8,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l @r3,r0
	fldi1 fr4
	mov.l @r0,r2
	mov.w @(0x4,r15),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r2),r1
	mov 0x11,r2
	mov.w @(loc_8c02059e,PC),r0
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
	mov.l @(loc_8c0205ac,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02059a:
	#data 0x00d2
loc_8c02059c:
	#data 0x012c
loc_8c02059e:
	#data 0x0084
	#align4
loc_8c0205a0:
	#data bank04.loc_8c044f12
loc_8c0205a4:
	#data loc_8c020588
loc_8c0205a8:
	#data 0x8c26a940
loc_8c0205ac:
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
	mova @(loc_8c0205f8,PC),r0
	fldi1 fr4
	fmov @r0,fr10
	mova @(loc_8c0205fc,PC),r0
	fmov @r0,fr9
	mova @(loc_8c020600,PC),r0
	fmov @r0,fr8
	mova @(loc_8c020604,PC),r0
	fmov @r0,fr7
	mova @(loc_8c020608,PC),r0
	fmov @r0,fr6
	mova @(loc_8c02060c,PC),r0
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
	mova @(loc_8c020610,PC),r0
	mov.w @(r0,r1),r0

braf_8c0205f4:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0205f8:
	#data 0xc0ea8f5c
loc_8c0205fc:
	#data 0x4048f5c3
loc_8c020600:
	#data 0x3f400000
loc_8c020604:
	#data 0x3f000000
loc_8c020608:
	#data 0x3f266666
loc_8c02060c:
	#data 0x3f99999a

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c020610:
	#data16 {loc_8c02062c-braf_8c0205f4-4} ; 0x0034
	#data16 {loc_8c02062c-braf_8c0205f4-4} ; 0x0034
	#data16 {loc_8c02062c-braf_8c0205f4-4} ; 0x0034
	#data16 {loc_8c02062c-braf_8c0205f4-4} ; 0x0034
	#data16 {loc_8c02067a-braf_8c0205f4-4} ; 0x0082
	#data16 {loc_8c020690-braf_8c0205f4-4} ; 0x0098
	#data16 {loc_8c0206aa-braf_8c0205f4-4} ; 0x00b2
	#data16 {loc_8c020648-braf_8c0205f4-4} ; 0x0050
	#data16 {loc_8c020656-braf_8c0205f4-4} ; 0x005e
	#data16 {loc_8c020668-braf_8c0205f4-4} ; 0x0070
	#data16 {loc_8c0206d0-braf_8c0205f4-4} ; 0x00d8
	#data16 {loc_8c02062c-braf_8c0205f4-4} ; 0x0034
	#data16 {loc_8c0206fa-braf_8c0205f4-4} ; 0x0102
	#data16 {loc_8c020714-braf_8c0205f4-4} ; 0x011c

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
	mova @(loc_8c020748,PC),r0
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
	mova @(loc_8c02074c,PC),r0
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
	mova @(loc_8c020750,PC),r0
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
	mova @(loc_8c020754,PC),r0
	fmov @r0,fr3

loc_8c0206a4:
	mov 0x38,r0
	bra loc_8c0206ca
	fmov fr3,@(r0,r14)

;----------------------------------------------
loc_8c0206aa:
	mova @(loc_8c020758,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(loc_8c02075c,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c020760,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c0206ca:
	mova @(loc_8c020764,PC),r0
	bra loc_8c020730
	fmov @r0,fr3

;----------------------------------------------
loc_8c0206d0:
	mova @(loc_8c020768,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c02076c,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(loc_8c020770,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c020774,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c020778,PC),r0
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
	mova @(loc_8c02077c,PC),r0
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
	mova @(loc_8c020780,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c02072c:
	mova @(loc_8c020784,PC),r0
	fmov @r0,fr3

loc_8c020730:
	mov 0x3C,r0
	fmov fr3,@(r0,r14)

loc_8c020734:
	mov.w @(loc_8c020746,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c020746:
	#data 0x012c
	#align4
loc_8c020748:
	#data 0xc154cccd
loc_8c02074c:
	#data 0xc151999a
loc_8c020750:
	#data 0x3fb47ae1
loc_8c020754:
	#data 0xbf547ae1
loc_8c020758:
	#data 0x3eb33333
loc_8c02075c:
	#data 0xc0f0f5c3
loc_8c020760:
	#data 0xc03d70a4
loc_8c020764:
	#data 0xc14ccccd
loc_8c020768:
	#data 0x3ff33333
loc_8c02076c:
	#data 0x3f8ccccd
loc_8c020770:
	#data 0x40d5c28f
loc_8c020774:
	#data 0x4092e148
loc_8c020778:
	#data 0xbe0f5c29
loc_8c02077c:
	#data 0x3fc28f5c
loc_8c020780:
	#data 0xbf4a3d71
loc_8c020784:
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
	mov.l @(loc_8c020890,PC),r3
	mova @(loc_8c02088c,PC),r0
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
	mova @(loc_8c020894,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(loc_8c020898,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c02089c,PC),r0
	bra loc_8c0207f4
	fmov @r0,fr3

loc_8c0207d8:
	mova @(loc_8c0208a0,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(loc_8c0208a4,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c0208a8,PC),r0
	fmov @r0,fr3

loc_8c0207f4:
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c0208ac,PC),r0
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
	mova @(loc_8c0208b0,PC),r0
	mov.l @(loc_8c0208c4,PC),r3
	fmov @r0,fr14
	mova @(loc_8c0208b4,PC),r0
	fmov @r0,fr15
	mova @(loc_8c0208c0,PC),r0
	fmov @r0,fr5
	mov.l @(loc_8c0208b8,PC),r5
	mov.l @(loc_8c0208bc,PC),r4
	fmov fr15,fr6
	jsr @r3
	fmov fr14,fr4
	mov.l @(loc_8c0208cc,PC),r2
	mov.l @(loc_8c0208c8,PC),r4
	jsr @r2
	nop
	mov r15,r14
	mov.l @(loc_8c0208d0,PC),r3
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
	mova @(loc_8c0208d4,PC),r0
	mov.l @(loc_8c0208c4,PC),r3
	fmov @r0,fr5
	mov r14,r5
	mov.l @(loc_8c0208bc,PC),r4
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
	mov.w @(loc_8c02088a,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;----------------------------------------------
loc_8c020884:
	mov.l @(loc_8c0208d8,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02088a:
	#data 0x012c
	#align4

loc_8c02088c:
	#data 0x3f8ccccd
loc_8c020890:
	#data 0x8c212f19
loc_8c020894:
	#data 0x3ff33333
loc_8c020898:
	#data 0x40d5c28f
loc_8c02089c:
	#data 0x40147ae1
loc_8c0208a0:
	#data 0x3f666666
loc_8c0208a4:
	#data 0xbf75c28f
loc_8c0208a8:
	#data 0x3e428f5c
loc_8c0208ac:
	#data 0xbe0f5c29
loc_8c0208b0:
	#data 0x436e0000
loc_8c0208b4:
	#data 0x41400000
loc_8c0208b8:
	#data 0x8c213806
loc_8c0208bc:
	#data 0xff000000
loc_8c0208c0:
	#data 0x43400000
loc_8c0208c4:
	#data loc_8c02a53a
loc_8c0208c8:
	#data 0x8c213822
loc_8c0208cc:
	#data bank12.loc_8c1297c4
loc_8c0208d0:
	#data bank12.loc_8c129728
loc_8c0208d4:
	#data 0x437a0000
loc_8c0208d8:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c0208dc:
	mov.w @(loc_8c0209ec,PC),r5
	mov 0x00,r4

loc_8c0208e0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c0209fc,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02093a
	mov r0,r4
	mov.w @(loc_8c0209ee,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c020a00,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r0
	mov.l @(loc_8c020a04,PC),r2
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.w @(loc_8c0209f2,PC),r1
	mov.b r3,@(r0,r4)
	mov.l @r2,r0
	mov.l @r15,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(loc_8c020a08,PC),r2
	mov.l @(r0,r3),r3
	mov.w @(loc_8c0209f0,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c020a0c,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c020a10,PC),r2
	mov r4,r1
	mov.l @(loc_8c020a14,PC),r3
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
	mov.l @(loc_8c020a18,PC),r0
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
	mov.w @(loc_8c0209f4,PC),r5
	mov.b r0,@(0x4,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	fmov fr4,@(r0,r4)
	bsr loc_8c0208e0
	mov 0x01,r4
	mov.w @(loc_8c0209f6,PC),r5
	bsr loc_8c0208e0
	mov 0x01,r4
	lds.l @r15+,pr
	mov.w @(loc_8c0209f8,PC),r5
	mov 0x02,r4
	bra loc_8c0208e0
	mov.l @r15+,r14

loc_8c020998:
	mov.l @(loc_8c020a1c,PC),r14
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c0209c0
	mov.b @(0x4,r4),r0
	mov.w @(loc_8c0209f6,PC),r3
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
	mov.l @(loc_8c020a1c,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c0209e8
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c0209ee,PC),r0
	bra loc_8c0209e8
	mov.b r3,@(r0,r4)

loc_8c0209e2:
	mov.l @(loc_8c020a20,PC),r3
	jmp @r3
	nop

loc_8c0209e8:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0209ec:
	#data 0x0105
loc_8c0209ee:
	#data 0x012c
loc_8c0209f0:
	#data 0x0084
loc_8c0209f2:
	#data 0x0431
loc_8c0209f4:
	#data 0x0118
loc_8c0209f6:
	#data 0x0119
loc_8c0209f8:
	#data 0x011d
	#align4

loc_8c0209fc:
	#data bank04.loc_8c044f12
loc_8c020a00:
	#data loc_8c020942
loc_8c020a04:
	#data 0x8c26a940
loc_8c020a08:
	#data bank14.loc_8c14753c
loc_8c020a0c:
	#data bank12.loc_8c1294c8
loc_8c020a10:
	#data bank14.loc_8c147548
loc_8c020a14:
	#data bank12.loc_8c1294bc
loc_8c020a18:
	#data bank14.loc_8c147570
loc_8c020a1c:
	#data 0x8c212f20
loc_8c020a20:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c020a24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov fr15,@-r15
	mov.w @(loc_8c020b24,PC),r3
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
	mova @(loc_8c020b28,PC),r0
	mov.l @(loc_8c020b38,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c020b2c,PC),r0
	mov.l @(loc_8c020b34,PC),r3
	fmov @r0,fr2
	mova @(loc_8c020b30,PC),r0
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
	mov.l @(loc_8c020b3c,PC),r3
	mov 0x34,r0
	fmov @(r0,r14),fr4
	mov.b @r3,r2
	mov.l @(loc_8c020b40,PC),r0
	mov r2,r1
	shll r2
	add r1,r2
	mov.l @(loc_8c020b44,PC),r3
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
	mov.l @(loc_8c020b48,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c020ade
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c020b26,PC),r0
	bra loc_8c020ade
	mov.b r13,@(r0,r14)

loc_8c020ad0:
	lds.l @r15+,pr
	mov.l @(loc_8c020b4c,PC),r2
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
	mova @(loc_8c020b50,PC),r0
	mov.l @(loc_8c020b54,PC),r5
	fmov @r0,fr15
	mova @(loc_8c020b58,PC),r0
	fmov @r0,fr5
	mova @(loc_8c020b5c,PC),r0
	mov.l @(loc_8c020b60,PC),r3
	mov 0xFF,r4
	fmov fr15,fr6
	jsr @r3
	fmov @r0,fr4
	mova @(loc_8c020b68,PC),r0
	mov.l @(loc_8c020b60,PC),r3
	fmov @r0,fr5
	mova @(loc_8c020b6c,PC),r0
	lds.l @r15+,pr
	fmov @r0,fr4
	mov 0xFF,r4
	mov.l @(loc_8c020b64,PC),r5
	fmov fr15,fr6
	jmp @r3
	fmov @r15+,fr15

loc_8c020b1e:
	lds.l @r15+,pr
	rts
	fmov @r15+,fr15


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c020b24:
	#data 0x0168
loc_8c020b26:
	#data 0x012c
	#align4
loc_8c020b28:
	#data 0x3f000000
loc_8c020b2c:
	#data 0x47800000
loc_8c020b30:
	#data 0x43b40000
loc_8c020b34:
	#data 0x0000ffff
loc_8c020b38:
	#data bank11.loc_8c11e2e0
loc_8c020b3c:
	#data 0x8c212f19
loc_8c020b40:
	#data bank14.loc_8c147558
loc_8c020b44:
	#data bank12.loc_8c1294c8
loc_8c020b48:
	#data 0x8c212f20
loc_8c020b4c:
	#data bank04.loc_8c0450c0
loc_8c020b50:
	#data 0x4141999a
loc_8c020b54:
	#data 0x8c2141f2
loc_8c020b58:
	#data 0x43540000
loc_8c020b5c:
	#data 0x43700000
loc_8c020b60:
	#data loc_8c02a53a
loc_8c020b64:
	#data 0x8c2141ea
loc_8c020b68:
	#data 0x43740000
loc_8c020b6c:
	#data 0x43828000

;----------------------------------------------
loc_8c020b70:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(loc_8c020c60,PC),r3
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c020bba
	mov r0,r14
	mov.w @(loc_8c020c54,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c020c68,PC),r1
	mov.l @(loc_8c020c64,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.w @(loc_8c020c56,PC),r0
	mov.l @r3,r2
	fldi0 fr3
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(loc_8c020c58,PC),r0
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
	mova @(loc_8c020c6c,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)

loc_8c020bba:
	mov.w @(loc_8c020c5a,PC),r6
	mov 0x00,r5
	bsr loc_8c020c84
	mov r14,r4
	mov.w @(loc_8c020c5c,PC),r6
	mov 0x01,r5
	bsr loc_8c020c84
	mov r14,r4
	lds.l @r15+,pr
	mov.w @(loc_8c020c5e,PC),r6
	mov r14,r4
	mov 0x02,r5
	bra loc_8c020c84
	mov.l @r15+,r14

loc_8c020bd6:
	mov.l @(loc_8c020c70,PC),r2
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
	mov.l @(loc_8c020c74,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c020bf6:
	mov.w @(loc_8c020c54,PC),r0
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
	mov.l @(loc_8c020c78,PC),r1
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
	mov.l @(loc_8c020c7c,PC),r1
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
	mov.l @(loc_8c020c80,PC),r2
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c020c54:
	#data 0x012c
loc_8c020c56:
	#data 0x0398
loc_8c020c58:
	#data 0x0084
loc_8c020c5a:
	#data 0x010a
loc_8c020c5c:
	#data 0x0133
loc_8c020c5e:
	#data 0x00e7
	#align4

loc_8c020c60:
	#data bank04.loc_8c044f12
loc_8c020c64:
	#data loc_8c020bd6
loc_8c020c68:
	#data 0x8c26a940
loc_8c020c6c:
	#data 0xc1280000
loc_8c020c70:
	#data 0x8c212f14
loc_8c020c74:
	#data bank14.loc_8c147580
loc_8c020c78:
	#data bank14.loc_8c147590
loc_8c020c7c:
	#data 0x3d4ccccd
loc_8c020c80:
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
	mov.l @(loc_8c020db0,PC),r3
	mov 0x0B,r5
	mov.w r0,@(0x8,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c020cde
	mov r0,r4
	mov.l @(loc_8c020db4,PC),r2
	mov 0x00,r3
	mov.w @(loc_8c020da6,PC),r0
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.l r2,@(0x10,r4)
	mov 0x01,r3
	mov.l @(loc_8c020db8,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @r2,r0
	mov.l @r0,r3
	mov.w @(0x8,r15),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8c020da8,PC),r0
	mov.l r1,@(r0,r4)
	mov.l @r15,r3
	mov.w @(loc_8c020dac,PC),r0
	mov.l r3,@(0x18,r4)
	mov.w @(loc_8c020daa,PC),r3
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
	mov.l @(loc_8c020dbc,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8c020d0c:
	mova @(loc_8c020dc0,PC),r0
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
	mov.l @(loc_8c020dc4,PC),r2
	mov 0x20,r0
	mov.b @r2,r3
	mov.b r3,@(r0,r4)
	mova @(loc_8c020dc8,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)

loc_8c020d36:
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mova @(loc_8c020dcc,PC),r0
	bra loc_8c020d44
	fmov @r0,fr3

loc_8c020d40:
	mova @(loc_8c020dd0,PC),r0
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
	mov.w @(loc_8c020da6,PC),r0
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
	mov.l @(loc_8c020dd4,PC),r1
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
	mov.l @(loc_8c020dc4,PC),r5
	mov.b @(r0,r4),r3
	mov.w @r5,r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c020d9e
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	mov.l @(loc_8c020dd8,PC),r2
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c020da6:
	#data 0x012c
loc_8c020da8:
	#data 0x0084
loc_8c020daa:
	#data 0x0088
loc_8c020dac:
	#data 0x00c8
	#align4

loc_8c020db0:
	#data bank04.loc_8c044f12
loc_8c020db4:
	#data loc_8c020ce6
loc_8c020db8:
	#data 0x8c26a940
loc_8c020dbc:
	#data bank14.loc_8c147598
loc_8c020dc0:
	#data 0x3fc00000
loc_8c020dc4:
	#data 0x8c212f14
loc_8c020dc8:
	#data 0x40966666
loc_8c020dcc:
	#data 0x4154cccd
loc_8c020dd0:
	#data 0x41280000
loc_8c020dd4:
	#data bank14.loc_8c1475a8
loc_8c020dd8:
	#data 0x8c212f16

;----------------------------------------------
loc_8c020ddc:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c020e44,PC),r5
	tst r0,r0
	bt loc_8c020e04
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mova @(loc_8c020e48,PC),r0
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
	mova @(loc_8c020e4c,PC),r0
	bra loc_8c020e20
	fmov @r0,fr3

loc_8c020e1e:
	fldi0 fr3

loc_8c020e20:
	mov.l @(loc_8c020e50,PC),r3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov.w r6,@r3

loc_8c020e28:
	rts
	nop

;----------------------------------------------
loc_8c020e2c:
	mov.w @(loc_8c020e40,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;----------------------------------------------
loc_8c020e3a:
	mov.l @(loc_8c020e54,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c020e40:
	#data 0x012c
	#align4
loc_8c020e44:
	#data 0x8c212f14
loc_8c020e48:
	#data 0x3ef0a3d6
loc_8c020e4c:
	#data 0x40966666
loc_8c020e50:
	#data 0x8c212f16
loc_8c020e54:
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
	mov.l @(loc_8c020f78,PC),r13
	mov 0x05,r11
	mov.l @(loc_8c020f7c,PC),r8
	mov 0x01,r10
	mov.w @(loc_8c020f6e,PC),r12
	mov 0x00,r14
	mov.l @(loc_8c020f74,PC),r9
	mov.l r4,@r15

loc_8c020e7a:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r8
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c020ee0
	mov r0,r4
	mov.w @(loc_8c020f70,PC),r0
	mov r4,r1
	mov.l @(loc_8c020f80,PC),r3
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
	mov.l @(loc_8c020f84,PC),r3
	mov.b r14,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c020f88,PC),r1
	mov.w @r13,r3
	mov.l @r1,r0
	mov r4,r1
	extu.w r3,r3
	mov.l @r0,r0
	shll2 r3
	add 0x50,r1
	mov.l @(r0,r3),r2
	mov.w @(loc_8c020f72,PC),r0
	mov.l @(loc_8c020f84,PC),r3
	mov.l r2,@(r0,r4)
	mov.w @r13+,r0
	mov.l @(loc_8c020f8c,PC),r2
	mov.w r0,@(0x1C,r4)
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c020f90,PC),r2
	mov r4,r1
	mov.l @(loc_8c020f94,PC),r3
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
	mov.l @(loc_8c020f88,PC),r3
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
	mov.w @(loc_8c020f72,PC),r0
	bra loc_8c021040
	mov.l r2,@(r0,r14)

loc_8c020f48:
	mov.l @(loc_8c020f98,PC),r2
	mov.w @(0x1C,r14),r0
	mov.b @r2,r3
	sub r3,r0
	mov.l @r4,r3
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8c020f72,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c020f6e:
	#data 0x0431
loc_8c020f70:
	#data 0x012c
loc_8c020f72:
	#data 0x0084
	#align4

loc_8c020f74:
	#data bank14.loc_8c1475cc
loc_8c020f78:
	#data bank14.loc_8c147614
loc_8c020f7c:
	#data bank04.loc_8c044f12
loc_8c020f80:
	#data loc_8c020ef4
loc_8c020f84:
	#data bank12.loc_8c1294c8
loc_8c020f88:
	#data 0x8c26a940
loc_8c020f8c:
	#data bank14.loc_8c1475b0
loc_8c020f90:
	#data bank14.loc_8c1475bc
loc_8c020f94:
	#data bank12.loc_8c1294bc
loc_8c020f98:
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
	mov.l @(loc_8c021058,PC),r2
	mov.w @(loc_8c021052,PC),r0
	jsr @r2
	mov.l @(r0,r14),r4
	bra loc_8c021040
	nop

loc_8c020fb6:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8c021054,PC),r5
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
	mov.l @(loc_8c02105c,PC),r3
	mov.w @(loc_8c021052,PC),r0
	mov.l @r3,r4
	mov.l @(loc_8c021060,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	add 0x64,r0
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8c02106c,PC),r13
	mova @(loc_8c021070,PC),r0
	mov.l @(loc_8c021068,PC),r12
	mov.l @(loc_8c021064,PC),r11
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021052:
	#data 0x0084
loc_8c021054:
	#data 0x03e8
	#align4

loc_8c021058:
	#data bank10.loc_8c108210
loc_8c02105c:
	#data 0x8c26a940
loc_8c021060:
	#data bank10.loc_8c108060
loc_8c021064:
	#data bank10.loc_8c108086
loc_8c021068:
	#data bank10.loc_8c1081e6
loc_8c02106c:
	#data bank10.loc_8c108192
loc_8c021070:
	#data 0x3a83126f

;----------------------------------------------
loc_8c021074:
	mov.l r14,@-r15
	mova @(loc_8c021154,PC),r0
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
	mova @(loc_8c021158,PC),r0
	fmov @r0,fr15
	mov.l @(loc_8c02114c,PC),r8
	mov.l @(loc_8c021150,PC),r9
	mov.w @(loc_8c021144,PC),r12

loc_8c02109c:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021102
	mov r0,r14
	mov.w @(loc_8c021146,PC),r0
	mov.l @(loc_8c02115c,PC),r3
	mov.b r11,@(r0,r14)
	mov.l @(loc_8c021164,PC),r0
	mov.l @(loc_8c021160,PC),r2
	mov.l r3,@(0x10,r14)
	mov.b @(r0,r13),r1
	mov.l @r2,r3
	extu.b r1,r1
	mov.l @r3,r0
	shll2 r1
	mov.l @(r0,r1),r3
	mov.w @(loc_8c02114a,PC),r0
	mov.w @(loc_8c021148,PC),r1
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
	mov.l @(loc_8c021168,PC),r2
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
	mova @(loc_8c02116c,PC),r0
	fmov @r0,fr4

loc_8c021136:
	mov 0x04,r0
	fmov fr4,@(r0,r5)
	mov 0x08,r0
	fmov fr4,@(r0,r5)
	mov 0x0C,r0
	rts
	fmov fr4,@(r0,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021144:
	#data 0x0401
loc_8c021146:
	#data 0x012c
loc_8c021148:
	#data 0x0084
loc_8c02114a:
	#data 0x00cc
	#align4
loc_8c02114c:
	#data bank14.loc_8c147620
loc_8c021150:
	#data bank04.loc_8c044f12
loc_8c021154:
	#data 0xc10ccccd
loc_8c021158:
	#data 0xc14fd70a
loc_8c02115c:
	#data loc_8c021118
loc_8c021160:
	#data 0x8c26a944
loc_8c021164:
	#data bank14.loc_8c147670
loc_8c021168:
	#data work.GameGlobalPointer
loc_8c02116c:
	#data 0x3f4ccccd

;----------------------------------------------
loc_8c021170:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c0212a4,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0211d4
	mov r0,r4
	mov.w @(loc_8c021298,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c0212ac,PC),r1
	mov.l @(loc_8c0212a8,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8c02129a,PC),r0
	add 0x50,r1
	mov.l @r3,r2
	mov.l @(0x10,r2),r3
	mov 0x11,r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mova @(loc_8c0212b0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c0212b4,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0212b8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02129c,PC),r3
	mov.l @r15,r1
	mov.w @(loc_8c02129e,PC),r0
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
	mov.l @(loc_8c0212a4,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021222
	mov r0,r4
	mov.l @(loc_8c0212ac,PC),r1
	mov 0x01,r5
	mov.l @(loc_8c0212bc,PC),r3
	mov.w @(loc_8c021298,PC),r0
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(loc_8c02129a,PC),r0
	mov.l @r2,r3
	mov.w @(loc_8c02129c,PC),r2
	mov.l @(0xC,r3),r3
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mova @(loc_8c0212b0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @r15,r3
	mov.w @(loc_8c02129e,PC),r0
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
	mov.l @(loc_8c0212a4,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021290
	mov r0,r4
	mov.l @(loc_8c0212ac,PC),r1
	mov.l @(loc_8c0212c0,PC),r3
	mov.w @(loc_8c0212a0,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	add 0x50,r1
	mov.l @r2,r3
	mov.w @(loc_8c02129a,PC),r2
	mov.l @(r0,r3),r0
	mov 0x31,r3
	add r4,r2
	mov.l r0,@r2
	mov.w @(loc_8c0212a2,PC),r0
	mov.l r3,@(r0,r4)
	mova @(loc_8c0212c4,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @r15,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c0212b4,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0212b8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02129c,PC),r3
	mov.l @(0x4,r15),r1
	mov.w @(loc_8c02129e,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021298:
	#data 0x012c
loc_8c02129a:
	#data 0x0084
loc_8c02129c:
	#data 0x0088
loc_8c02129e:
	#data 0x00c8
loc_8c0212a0:
	#data 0x02f0
loc_8c0212a2:
	#data 0x00cc
	#align4
loc_8c0212a4:
	#data bank04.loc_8c044f12
loc_8c0212a8:
	#data loc_8c0211dc
loc_8c0212ac:
	#data 0x8c26a944
loc_8c0212b0:
	#data 0xbdcccccd
loc_8c0212b4:
	#data bank14.loc_8c147634
loc_8c0212b8:
	#data bank12.loc_8c1294c8
loc_8c0212bc:
	#data loc_8c02122a
loc_8c0212c0:
	#data loc_8c0212c8
loc_8c0212c4:
	#data 0xbc23d70a

;------------------------------------------------------------------------------
loc_8c0212c8:
	mov.l @(loc_8c021394,PC),r2
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
	mov.w @(loc_8c02138a,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c02138c,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0212fe
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0212fe:
	mova @(loc_8c021398,PC),r0
	mov.l @(loc_8c0213a8,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c02139c,PC),r0
	mov.l @(loc_8c0213a4,PC),r3
	fmov @r0,fr2
	mova @(loc_8c0213a0,PC),r0
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
	mov.w @(loc_8c02138a,PC),r0
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
	mov.l @(loc_8c0213ac,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021384
	mov r0,r4
	mov.w @(loc_8c02138a,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c0213b4,PC),r1
	mov.l @(loc_8c0213b0,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8c02138e,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8c021390,PC),r0
	mov.w @(loc_8c021392,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mova @(loc_8c0213b8,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c0213bc,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c021384:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02138a:
	#data 0x012c
loc_8c02138c:
	#data 0x0168
loc_8c02138e:
	#data 0x0200
loc_8c021390:
	#data 0x0084
loc_8c021392:
	#data 0x0401
	#align4

loc_8c021394:
	#data work.GameGlobalPointer
loc_8c021398:
	#data 0x3f000000
loc_8c02139c:
	#data 0x47800000
loc_8c0213a0:
	#data 0x43b40000
loc_8c0213a4:
	#data 0x0000ffff
loc_8c0213a8:
	#data bank11.loc_8c11e2e0
loc_8c0213ac:
	#data bank04.loc_8c044f12
loc_8c0213b0:
	#data loc_8c0213c0
loc_8c0213b4:
	#data 0x8c26a944
loc_8c0213b8:
	#data 0xc12ccccd
loc_8c0213bc:
	#data 0xc14fd70a

;----------------------------------------------
loc_8c0213c0:
	mov.l @(loc_8c021458,PC),r3
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
	mov.w @(loc_8c021456,PC),r2
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
	mov.l @(loc_8c02145c,PC),r3
	mov r0,r2
	lds r2,fpul
	mova @(loc_8c021460,PC),r0
	mov.l @(loc_8c021470,PC),r1
	fmov @r0,fr2
	mova @(loc_8c021464,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(loc_8c021468,PC),r0
	mov.l @(loc_8c02146c,PC),r2
	fmov @r0,fr0
	fmov @r3,fr12
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r1
	and r2,r4
	mova @(loc_8c021474,PC),r0
	fmov fr0,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr12
	bra loc_8c02144e
	fmov fr12,@(r0,r14)

loc_8c021430:
	mova @(loc_8c021478,PC),r0
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	mov r5,r0
	nop
	mov.l @(loc_8c02145c,PC),r2
	mov.w r0,@(0x1C,r14)
	mov 0x38,r0
	fmov @r2,fr3
	fmov fr3,@(r0,r14)

loc_8c02144e:
	lds.l @r15+,pr
	fmov @r15+,fr12
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021456:
	#data 0x0168
	#align4
loc_8c021458:
	#data work.GameGlobalPointer
loc_8c02145c:
	#data bank14.loc_8c14762c
loc_8c021460:
	#data 0x47800000
loc_8c021464:
	#data 0x43b40000
loc_8c021468:
	#data 0x3f000000
loc_8c02146c:
	#data 0x0000ffff
loc_8c021470:
	#data bank11.loc_8c11e860
loc_8c021474:
	#data 0x3e4ccccd
loc_8c021478:
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
	mov.l @(loc_8c0214fc,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0214ec
	mov r0,r4
	mov.l @(loc_8c021500,PC),r3
	mov 0x01,r5
	mov.w @(loc_8c0214f8,PC),r0
	mov.l @(loc_8c021508,PC),r1
	mov.l @(loc_8c021504,PC),r2
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
	mov.w @(loc_8c0214fa,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mov.l @r15,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c02150c,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c021510,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0214f8:
	#data 0x012c
loc_8c0214fa:
	#data 0x0084
	#align4
loc_8c0214fc:
	#data bank04.loc_8c044f12
loc_8c021500:
	#data loc_8c0214f4
loc_8c021504:
	#data 0x8c26a944
loc_8c021508:
	#data bank14.loc_8c1476b4
loc_8c02150c:
	#data bank14.loc_8c147678
loc_8c021510:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c021514:
	sts.l pr,@-r15
	mov.l @(loc_8c021580,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02155e
	mov r0,r4
	mov.w @(loc_8c02157a,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c021588,PC),r1
	mov.l @(loc_8c021584,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8c02157c,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(loc_8c02157e,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c02158c,PC),r2
	mov.l @(loc_8c021590,PC),r3
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
	mov.l @(loc_8c021594,PC),r2
	mova @(loc_8c021598,PC),r0
	fmov @r0,fr2
	mov 0x50,r0
	mov.b @r2,r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr2,fr3
	rts
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02157a:
	#data 0x012c
loc_8c02157c:
	#data 0x0220
loc_8c02157e:
	#data 0x0084
	#align4
loc_8c021580:
	#data bank04.loc_8c044f12
loc_8c021584:
	#data loc_8c021564
loc_8c021588:
	#data 0x8c26a944
loc_8c02158c:
	#data bank14.loc_8c1476bc
loc_8c021590:
	#data bank12.loc_8c1294c8
loc_8c021594:
	#data 0x8c212c3d
loc_8c021598:
	#data 0x42c80000

;----------------------------------------------
loc_8c02159c:
	sts.l pr,@-r15
	mov.l @(loc_8c0215e0,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0215d0
	mov r0,r4
	mov.l @(loc_8c0215e4,PC),r2
	mov 0x01,r3
	mov.w @(loc_8c0215da,PC),r0
	mov.l @(loc_8c0215ec,PC),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.b @r1,r2
	mov.l @(loc_8c0215e8,PC),r3
	extu.b r2,r2
	mov.l @r3,r0
	neg r2,r2
	add 0x7F,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8c0215dc,PC),r0
	mov.l r2,@(r0,r4)

loc_8c0215d0:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c0215d6:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0215da:
	#data 0x012c
loc_8c0215dc:
	#data 0x0084
	#align4
loc_8c0215e0:
	#data bank04.loc_8c044f12
loc_8c0215e4:
	#data loc_8c0215d6
loc_8c0215e8:
	#data 0x8c26a944
loc_8c0215ec:
	#data 0x8c212c4d

;----------------------------------------------
loc_8c0215f0:
	sts.l pr,@-r15
	mov.l @(loc_8c02163c,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c021612
	mov r0,r4
	mov.w @(loc_8c021632,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c021640,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.w @(loc_8c021634,PC),r3
	mov.l r2,@(0x10,r4)
	mov.b r3,@(r0,r4)

loc_8c021612:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c021618:
	mov.l @(loc_8c021648,PC),r0
	mov.l @(loc_8c021644,PC),r1
	mov.l @r0,r3
	mov.l @r1,r2
	mov.b @(0x4,r3),r0
	mov.l @r2,r3
	mov.w @(loc_8c021636,PC),r2
	shll2 r0
	add r3,r0
	mov.l @(r0,r2),r2
	mov.w @(loc_8c021638,PC),r0
	rts
	mov.l r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021632:
	#data 0x012c
loc_8c021634:
	#data 0x008a
loc_8c021636:
	#data 0x0228
loc_8c021638:
	#data 0x0084
	#align4
loc_8c02163c:
	#data bank04.loc_8c044f12
loc_8c021640:
	#data loc_8c021618
loc_8c021644:
	#data 0x8c26a944
loc_8c021648:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c02164c:
	mov.l r14,@-r15
	mova @(loc_8c021720,PC),r0
	fmov fr15,@-r15
	mov 0x02,r5
	fmov fr14,@-r15
	mov 0x00,r7
	mov.l @(loc_8c02171c,PC),r14
	fmov fr13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c021724,PC),r6
	fmov @r0,fr4
	fldi1 fr15
	fldi0 fr14
	mov.b @r14,r4
	fmov fr15,fr7
	fmov fr14,fr5
	fmov fr15,fr6
	bsr loc_8c0216d6
	extu.b r4,r4
	mova @(loc_8c021728,PC),r0
	mov.l @(loc_8c02172c,PC),r6
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
	mov.l @(loc_8c021730,PC),r6
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
	mov.l @(loc_8c021734,PC),r6
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
	mova @(loc_8c021738,PC),r0
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
	mov.l @(loc_8c02173c,PC),r6
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
	mov.w @(loc_8c021718,PC),r8
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
	mova @(loc_8c021740,PC),r0
	fmov @r0,fr15
	fmov fr7,fr14
	bra loc_8c0217ee
	mov.l r3,@(0xC,r15)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021718:
	#data 0x0094
	#align4
loc_8c02171c:
	#data 0x8c212c3c
loc_8c021720:
	#data 0x3f000000
loc_8c021724:
	#data bank14.loc_8c1476d4
loc_8c021728:
	#data 0x3ecccccd
loc_8c02172c:
	#data bank14.loc_8c1476e0
loc_8c021730:
	#data bank14.loc_8c1476ec
loc_8c021734:
	#data bank14.loc_8c1476f8
loc_8c021738:
	#data 0x3f333333
loc_8c02173c:
	#data bank14.loc_8c147704
loc_8c021740:
	#data 0x41200000

;----------------------------------------------
loc_8c021744:
	mov r11,r1
	sub r14,r1
	add 0xFF,r1
	mov.l @(loc_8c02185c,PC),r3
	lds r1,fpul
	float fpul,fr3
	fmov fr3,fr5
	jsr @r3
	fmov fr15,fr4
	ftrc fr0,fpul
	mov.l @(loc_8c021860,PC),r3
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
	mov.l @(loc_8c021864,PC),r3
	mov 0x0A,r0
	mov r12,r10
	jsr @r3
	mov r13,r1
	mov.l @(loc_8c021868,PC),r2
	mov 0x0B,r5
	mov r0,r13
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0217f2
	mov r0,r4
	mov.w @(loc_8c021854,PC),r0
	shll2 r13
	mov.l @(loc_8c021870,PC),r2
	mov.b r12,@(r0,r4)
	mov.l @(loc_8c02186c,PC),r3
	mov.w @(loc_8c021858,PC),r1
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r0,r0
	add r13,r0
	mov.l @(r0,r8),r3
	mov.w @(loc_8c021856,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r9,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c021874,PC),r3
	mov 0x21,r0
	add 0x34,r1
	mov.b r14,@(r0,r4)
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	lds r14,fpul
	mov r15,r1
	add 0x04,r1
	mov.l @(loc_8c021878,PC),r2
	mov 0x34,r0
	fmov @r1,fr0
	float fpul,fr3
	fmov @(r0,r4),fr2
	mov.l @(loc_8c021874,PC),r3
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
	mov.l @(loc_8c02187c,PC),r13
	tst r3,r3
	bt loc_8c0218c8
	mova @(loc_8c021880,PC),r0
	mov.l @(loc_8c02185c,PC),r12
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021854:
	#data 0x012c
loc_8c021856:
	#data 0x0084
loc_8c021858:
	#data 0x0411
	#align4

loc_8c02185c:
	#data bank11.loc_8c11e680
loc_8c021860:
	#data bank12.loc_8c129128
loc_8c021864:
	#data bank12.loc_8c1292d4
loc_8c021868:
	#data bank04.loc_8c044f12
loc_8c02186c:
	#data loc_8c02180e
loc_8c021870:
	#data 0x8c26a944
loc_8c021874:
	#data bank12.loc_8c1294c8
loc_8c021878:
	#data bank14.loc_8c1476c8
loc_8c02187c:
	#data 0x8c212c3c
loc_8c021880:
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
	mov.l @(loc_8c0218d8,PC),r3
	sts fpul,r0
	jsr @r3
	mov r8,r1
	mov r0,r4

loc_8c0218ac:
	mov.l @(loc_8c0218dc,PC),r3
	mov 0x0A,r0
	jsr @r3
	mov r4,r1
	mov.l @(loc_8c0218e0,PC),r1
	mov r0,r4
	mov.w @(loc_8c0218d6,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0218d6:
	#data 0x0094
	#align4
loc_8c0218d8:
	#data bank12.loc_8c129128
loc_8c0218dc:
	#data bank12.loc_8c1292d4
loc_8c0218e0:
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
	mov.l @(loc_8c0219d8,PC),r1
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
	mov.w @(loc_8c0219d4,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c02192c
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c02192c:
	mova @(loc_8c0219dc,PC),r0
	mov.l @(loc_8c0219ec,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c0219e0,PC),r0
	mov.l @(loc_8c0219e8,PC),r3
	fmov @r0,fr2
	mova @(loc_8c0219e4,PC),r0
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
	mov.l @(loc_8c0219f0,PC),r5
	tst r4,r4
	mova @(loc_8c0219d8,PC),r0
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
	mov.l @(loc_8c0219f4,PC),r3
	jsr @r3
	mov 0x03,r4
	mov r0,r6
	mova @(loc_8c0219f8,PC),r0
	fmov @r0,fr4
	mov.b @(0x4,r14),r0
	mov.l @(loc_8c0219fc,PC),r4
	extu.b r0,r0
	mov.l @(loc_8c021a00,PC),r11
	cmp/eq 0x00,r0
	bt.s loc_8c021a04
	mov 0x00,r13
	cmp/eq 0x01,r0
	bt loc_8c021a3e
	cmp/eq 0x02,r0
	bt loc_8c021aca
	bra loc_8c021bc8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0219d4:
	#data 0x0168
	#align4
loc_8c0219d8:
	#data 0x3dcccccd
loc_8c0219dc:
	#data 0x3f000000
loc_8c0219e0:
	#data 0x47800000
loc_8c0219e4:
	#data 0x43b40000
loc_8c0219e8:
	#data 0x0000ffff
loc_8c0219ec:
	#data bank11.loc_8c11e2e0
loc_8c0219f0:
	#data 0x8c1f8bc8
loc_8c0219f4:
	#data bank01.loc_8c01357a
loc_8c0219f8:
	#data 0x41f00000
loc_8c0219fc:
	#data bank14.loc_8c14774c
loc_8c021a00:
	#data 0x8c1f8bc0

;----------------------------------------------
loc_8c021a04:
	mova @(loc_8c021b38,PC),r0
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
	mova @(loc_8c021b3c,PC),r0
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
	mov.w @(loc_8c021b32,PC),r3
	extu.w r6,r5
	mova @(loc_8c021b40,PC),r0
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
	mov.w @(loc_8c021b34,PC),r3
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
	mova @(loc_8c021b44,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021b32:
	#data 0x1000
loc_8c021b34:
	#data 0x2000
	#align4
loc_8c021b38:
	#data 0xc1280000
loc_8c021b3c:
	#data 0xc151eb85
loc_8c021b40:
	#data 0x3fc00000
loc_8c021b44:
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
	mov.l @(loc_8c021c90,PC),r2
	fmov @(r0,r14),fr15
	mova @(loc_8c021c80,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov @(r0,r14),fr1
	mova @(loc_8c021c84,PC),r0
	fmov @r0,fr0
	mova @(loc_8c021c88,PC),r0
	fmul fr2,fr1
	fmov @r0,fr3
	fdiv fr4,fr15
	mov.l @(loc_8c021c8c,PC),r3
	fdiv fr0,fr1
	fadd fr3,fr1
	ftrc fr1,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmul fr0,fr15
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.l @(loc_8c021c94,PC),r1
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
	mov.l @(loc_8c021c98,PC),r3
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
	mov.w @(loc_8c021c7a,PC),r5
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
	mov.l @(loc_8c021c9c,PC),r3
	mov.w @(loc_8c021c7c,PC),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @(loc_8c021ca0,PC),r1
	mov.w @(loc_8c021c7e,PC),r0
	mov.l @r4,r2
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8c021cac,PC),r13
	mova @(loc_8c021cb0,PC),r0
	mov.l @(loc_8c021ca8,PC),r12
	mov.l @(loc_8c021ca4,PC),r11
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021c7a:
	#data 0x03e8
loc_8c021c7c:
	#data 0x0084
loc_8c021c7e:
	#data 0x0414
	#align4
loc_8c021c80:
	#data 0x47800000
loc_8c021c84:
	#data 0x43b40000
loc_8c021c88:
	#data 0x3f000000
loc_8c021c8c:
	#data 0x0000ffff
loc_8c021c90:
	#data bank11.loc_8c11e860
loc_8c021c94:
	#data 0x40800000
loc_8c021c98:
	#data bank04.loc_8c04257c
loc_8c021c9c:
	#data 0x8c26a944
loc_8c021ca0:
	#data bank10.loc_8c108060
loc_8c021ca4:
	#data bank10.loc_8c108086
loc_8c021ca8:
	#data bank10.loc_8c1081e6
loc_8c021cac:
	#data bank10.loc_8c108192
loc_8c021cb0:
	#data 0x3a83126f

;----------------------------------------------
loc_8c021cb4:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(loc_8c021da8,PC),r3
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
	mov.l @(loc_8c021dac,PC),r3
	mov 0x01,r5
	mov.w @(loc_8c021da0,PC),r0
	mov r14,r6
	mov.l @(loc_8c021db4,PC),r2
	shll r6
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r14,r3
	mov.l @(loc_8c021db0,PC),r0
	shll2 r3
	mov.l @(r0,r3),r1
	mov.l @r2,r0
	shll2 r1
	mov.l @r0,r3
	add r3,r1
	mov r14,r3
	mov.l @r1,r0
	add r3,r6
	mov.w @(loc_8c021da2,PC),r1
	shll2 r6
	add r4,r1
	mov.l r0,@r1
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.l @(loc_8c021db8,PC),r1
	mov.w @(loc_8c021da4,PC),r0
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
	mov.l @(loc_8c021dbc,PC),r6
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
	mov.l @(loc_8c021dc0,PC),r3
	bra loc_8c021e00
	mov.l r3,@(0x10,r4)

loc_8c021d56:
	mov.w @(loc_8c021da4,PC),r0
	mov.l @(loc_8c021dc4,PC),r3
	mov.l @(r0,r4),r1
	or r7,r1
	mov.l r1,@(r0,r4)
	mov 0x00,r0
	mov.l r3,@(0x10,r4)
	mov.b r0,@(0x5,r4)
	bra loc_8c021e00
	mov.l r4,@r6

loc_8c021d6a:
	mov.w @(loc_8c021da4,PC),r0
	mov.w @(loc_8c021da4,PC),r1
	mov.l @(r0,r4),r0
	add r4,r1
	mov.l @(loc_8c021dc4,PC),r2
	or 0x28,r0
	mov.l @(loc_8c021dc8,PC),r3
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
	mov.w @(loc_8c021da4,PC),r0
	mov.l @(r0,r4),r2
	or r7,r2
	mov.l r2,@(r0,r4)
	mov 0x74,r0
	fmov fr4,@(r0,r4)
	bra loc_8c021e00
	mov.l r4,@(0x8,r6)

loc_8c021d9a:
	mov.l @(loc_8c021dcc,PC),r2
	bra loc_8c021e00
	mov.l r2,@(0x10,r4)

;##############################################
loc_8c021da0:
	#data 0x012c
loc_8c021da2:
	#data 0x0084
loc_8c021da4:
	#data 0x00cc
	#align4
loc_8c021da8:
	#data bank04.loc_8c044f12
loc_8c021dac:
	#data loc_8c0218e4
loc_8c021db0:
	#data bank14.loc_8c147760
loc_8c021db4:
	#data 0x8c26a944
loc_8c021db8:
	#data bank14.loc_8c147798
loc_8c021dbc:
	#data 0x8c1f8bc0
loc_8c021dc0:
	#data loc_8c02199e
loc_8c021dc4:
	#data loc_8c0218e8
loc_8c021dc8:
	#data 0x00008000
loc_8c021dcc:
	#data loc_8c021bda

;----------------------------------------------
loc_8c021dd0:
	mov.w @(loc_8c021e08,PC),r0
	mov.w @(loc_8c021e06,PC),r3
	mov.l @(r0,r4),r1
	fldi1 fr3
	or r3,r1
	mov.l r1,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c021e0c,PC),r0
	fmov @r0,fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	add 0x04,r0
	bra loc_8c021e00
	fmov fr4,@(r0,r4)


loc_8c021dee:
	mov.w @(loc_8c021e08,PC),r0
	mov.w @(loc_8c021e08,PC),r1
	mov.l @(r0,r4),r0
	add r4,r1
	mov.w @(loc_8c021e0a,PC),r3
	or 0x08,r0
	mov.l r0,@r1
	mov 0x48,r0
	mov.l r3,@(r0,r4)

loc_8c021e00:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021e06:
	#data 0x0400
loc_8c021e08:
	#data 0x00cc
loc_8c021e0a:
	#data 0x0aab
	#align4
loc_8c021e0c:
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
	mov.w @(loc_8c021f2a,PC),r0
	mov.l @(r0,r4),r5
	mova @(loc_8c021f30,PC),r0
	fmov @r0,fr5
	mova @(loc_8c021f34,PC),r0
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
	mova @(loc_8c021f38,PC),r0
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
	mova @(loc_8c021f3c,PC),r0
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
	mova @(loc_8c021f40,PC),r0
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
	mov.w @(loc_8c021f2c,PC),r11
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
	mov.l @(loc_8c021f44,PC),r1
	extu.b r0,r0
	mov.l @(loc_8c021f48,PC),r3
	mov.b @(r0,r1),r6
	extu.b r6,r6
	cmp/ge r2,r6
	bf.s loc_8c021f4c
	mov.l @r3,r14
	mov r14,r7
	sub r2,r6
	bra loc_8c021f50
	add 0x34,r7

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c021f2a:
	#data 0x00d4
loc_8c021f2c:
	#data 0x00ff
	#align4
loc_8c021f30:
	#data 0x3c5a740e
loc_8c021f34:
	#data 0x3c23d70b
loc_8c021f38:
	#data 0x3fa66666
loc_8c021f3c:
	#data 0x3fb33333
loc_8c021f40:
	#data 0x3f8147ae
loc_8c021f44:
	#data bank14.loc_8c147840
loc_8c021f48:
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
	mov.l @(loc_8c021ff4,PC),r3
	mov r4,r14
	jsr @r3
	mov 0x03,r4
	mov.l @(loc_8c021ff8,PC),r11
	mov r0,r5
	mov.w @(loc_8c021ff0,PC),r0
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
	mov.w @(loc_8c021ff2,PC),r0
	bra loc_8c022224
	mov.b r10,@(r0,r4)

loc_8c021fba:
	mov.w @(loc_8c021ff2,PC),r0
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
loc_8c021ff0:
	#data 0x00d4
loc_8c021ff2:
	#data 0x012c
	#align4
loc_8c021ff4:
	#data bank01.loc_8c01357a
loc_8c021ff8:
	#data 0x8c1f8bcc

;----------------------------------------------
loc_8c021ffc:
	mov r13,r12

loc_8c021ffe:
	mov.l @r15,r2
	mov.w @(loc_8c022128,PC),r3
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
	mov.l @(loc_8c022130,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c02201e:
	mov.l @r15,r2
	mov.w @(loc_8c02212a,PC),r3
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
	mov.l @(loc_8c022130,PC),r3
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
	mov.l @(loc_8c022134,PC),r5
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
	mov.l @(loc_8c022138,PC),r7
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
	mov.w @(loc_8c02212c,PC),r0
	fldi1 fr4
	fmov fr4,@(r0,r5)
	mov 0x7C,r0
	fmov fr4,@(r0,r5)
	mov 0x78,r0
	fmov fr4,@(r0,r5)
	mova @(loc_8c02213c,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r5)
	mova @(loc_8c022140,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r5)
	mov 0x50,r0
	fmov fr3,@(r0,r5)
	mov.l @r15,r0
	mov.l @r0,r0
	shll2 r0
	mov.l @(r0,r7),r5
	mov.w @(loc_8c02212e,PC),r0
	mov.l @(r0,r5),r5
	tst r5,r5
	bt loc_8c0220e2
	mova @(loc_8c022144,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r5)
	mova @(loc_8c022148,PC),r0
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
	mova @(loc_8c02214c,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c02212c,PC),r0
	fmov fr3,@(r0,r5)
	mov 0x7C,r0
	fmov fr3,@(r0,r5)
	mov 0x78,r0
	fmov fr3,@(r0,r5)
	mova @(loc_8c022150,PC),r0
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
	mov.w @(loc_8c02212e,PC),r0
	mov.l @(r0,r5),r5
	tst r5,r5
	bra loc_8c022154
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c022128:
	#data 0x0400
loc_8c02212a:
	#data 0x0800
loc_8c02212c:
	#data 0x0080
loc_8c02212e:
	#data 0x00d4
	#align4
loc_8c022130:
	#data bank04.loc_8c04257c
loc_8c022134:
	#data bank14.loc_8c147840
loc_8c022138:
	#data 0x8c1f8c1c
loc_8c02213c:
	#data 0xc14d999a
loc_8c022140:
	#data 0x3fa66666
loc_8c022144:
	#data 0xc14d851f
loc_8c022148:
	#data 0x3fb33333
loc_8c02214c:
	#data 0x3f4ccccd
loc_8c022150:
	#data 0xc14e147b

;----------------------------------------------
loc_8c022154:
	bt loc_8c022166
	mova @(loc_8c022284,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r5)
	mov 0x54,r0
	fmov fr4,@(r0,r5)
	mov 0x50,r0
	fmov fr4,@(r0,r5)

loc_8c022166:
	mov.l @(loc_8c022288,PC),r5
	mov r4,r7
	mov.l @r7,r1
	mov.l @r5,r2
	mov.w @(loc_8c022278,PC),r0
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
	mov.w @(loc_8c02227a,PC),r0
	add r2,r1
	mov.l @(0xC,r11),r3
	mov.l @(r0,r1),r1
	mov.w @(loc_8c02227c,PC),r0
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
	mov.l @(loc_8c02228c,PC),r3
	jsr @r3
	nop
	mov.l @r2,r2
	shll2 r0
	mov.w @(loc_8c02227e,PC),r3
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
	mov.l @(loc_8c022290,PC),r3
	jsr @r3
	nop
	mov.l @r5,r3
	shll2 r0
	mov.l @r3,r1
	mov.w @(loc_8c02227e,PC),r3
	add r1,r0
	mov.l @(r0,r3),r3
	mov.w @(loc_8c02227c,PC),r0
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
	mov.l @(loc_8c022294,PC),r6
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
	mov.w @(loc_8c022280,PC),r3
	mov.l @r6,r0
	add r0,r3
	bra loc_8c022224
	mov.b r13,@r3

loc_8c02221e:
	mov.w @(loc_8c022280,PC),r0
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
	mov.l @(loc_8c022288,PC),r3
	mov.w @(loc_8c02227c,PC),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @(loc_8c022298,PC),r1
	mov.w @(loc_8c022282,PC),r0
	mov.l @r4,r2
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8c0222a4,PC),r13
	mova @(loc_8c0222a8,PC),r0
	mov.l @(loc_8c0222a0,PC),r12
	mov.l @(loc_8c02229c,PC),r11
	bra loc_8c0222de
	fmov @r0,fr15

;----------------------------------------------
loc_8c022278:
	#data 0x00e8
loc_8c02227a:
	#data 0x032c
loc_8c02227c:
	#data 0x0084
loc_8c02227e:
	#data 0x0094
loc_8c022280:
	#data 0x012c
loc_8c022282:
	#data 0x0324
	#align4
loc_8c022284:
	#data 0xc14dc28f
loc_8c022288:
	#data 0x8c26a944
loc_8c02228c:
	#data bank12.loc_8c1292d4
loc_8c022290:
	#data bank12.loc_8c129128
loc_8c022294:
	#data work.GameGlobalPointer
loc_8c022298:
	#data bank10.loc_8c108060
loc_8c02229c:
	#data bank10.loc_8c1081e6
loc_8c0222a0:
	#data bank10.loc_8c108086
loc_8c0222a4:
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
	mov.l @(loc_8c022368,PC),r3
	jsr @r3
	mov 0x03,r4
	mov r0,r4
	mova @(loc_8c02236c,PC),r0
	fmov @r0,fr12
	mova @(loc_8c022374,PC),r0
	fmov @r0,fr13
	mova @(loc_8c022378,PC),r0
	fmov @r0,fr14
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0xF7,r8
	mov.l @(loc_8c02237c,PC),r13
	mov 0x01,r11
	mov.l @(loc_8c022370,PC),r9
	tst r3,r3
	mov.w @(loc_8c022364,PC),r5
	mov 0x00,r12
	fldi1 fr15
	bt.s loc_8c022340
	extu.w r4,r10
	bra loc_8c022530
	nop

loc_8c022340:
	mova @(loc_8c022380,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c022384,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c022364:
	#data 0x2000
	#align4
loc_8c022368:
	#data bank01.loc_8c01357a
loc_8c02236c:
	#data 0x40c0a3d7
loc_8c022370:
	#data bank04.loc_8c04257c
loc_8c022374:
	#data 0x3f4ccccd
loc_8c022378:
	#data 0x3f000000
loc_8c02237c:
	#data 0x8c1f8bcc
loc_8c022380:
	#data 0x40370a3d
loc_8c022384:
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
	mov.w @(loc_8c022466,PC),r3
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
	mova @(loc_8c022474,PC),r0
	mov.l @(loc_8c022470,PC),r6
	fmov @r0,fr4
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c022414
	mov.w @(loc_8c022468,PC),r0
	mov.b r11,@(r0,r14)
	mov 0x34,r0
	fmov fr12,@(r0,r14)
	mova @(loc_8c022478,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c02247c,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr15,@(r0,r14)
	mova @(loc_8c022480,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x40,r0
	mov.l @(r0,r13),r3
	mov.w @(loc_8c022468,PC),r0
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
	mov.w @(loc_8c022468,PC),r0
	mov r13,r4
	mov.l @(loc_8c022484,PC),r1
	mov.b r11,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	mov.l @(loc_8c02248c,PC),r1
	fmov fr3,@(r0,r14)
	mova @(loc_8c022488,PC),r0
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
	mov.w @(loc_8c02246a,PC),r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8c02246c,PC),r0
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
	mov.w @(loc_8c022468,PC),r0
	mov.l @r4,r2
	bra loc_8c022496
	mov.b r11,@(r0,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c022466:
	#data 0x1000
loc_8c022468:
	#data 0x012c
loc_8c02246a:
	#data 0x02fc
loc_8c02246c:
	#data 0x0084
	#align4
loc_8c022470:
	#data 0x8c289750
loc_8c022474:
	#data 0x3e4ccccd
loc_8c022478:
	#data 0xc0f3d70a
loc_8c02247c:
	#data 0xc150cccd
loc_8c022480:
	#data 0x3e99999a
loc_8c022484:
	#data bank14.loc_8c147878
loc_8c022488:
	#data 0x3f333333
loc_8c02248c:
	#data 0x8c26a944

;----------------------------------------------
loc_8c022490:
	mov.w @(loc_8c022544,PC),r0
	mov.l @r4,r2
	mov.b r12,@(r0,r2)

loc_8c022496:
	mov r13,r4
	add 0x40,r4
	mov.w @(loc_8c022544,PC),r0
	mov.l @r4,r3
	mov.b r11,@(r0,r3)
	mova @(loc_8c02254c,PC),r0
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
	mova @(loc_8c022550,PC),r0
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
	mova @(loc_8c022554,PC),r0
	mov.l @(0x18,r13),r4
	fmov @r0,fr5
	mov r12,r5
	mov.w @(loc_8c022546,PC),r13
	mov 0x07,r7

loc_8c0224e0:
	mov.w @(loc_8c022548,PC),r0
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
	mov.w @(loc_8c02254a,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c022544:
	#data 0x012c
loc_8c022546:
	#data 0x0400
loc_8c022548:
	#data 0x00cc
loc_8c02254a:
	#data 0x01d0
	#align4
loc_8c02254c:
	#data 0xbfca3d71
loc_8c022550:
	#data 0x3dcccccd
loc_8c022554:
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
	mov.w @(loc_8c022648,PC),r3
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
	mov.w @(loc_8c02264a,PC),r0
	mov.b r11,@(r0,r14)
	mov 0x34,r0
	fmov fr12,@(r0,r14)
	mova @(loc_8c022650,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c022654,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr15,@(r0,r14)
	mova @(loc_8c022658,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov r13,r4
	add 0x4C,r4
	mov.b r0,@(0x7,r3)
	mov.w @(loc_8c02264c,PC),r0
	mov.l @r4,r4
	fmov fr15,@(r0,r4)
	mov 0x7C,r0
	fmov fr15,@(r0,r4)
	mov 0x78,r0
	bra loc_8c0225ec
	fmov fr15,@(r0,r4)

loc_8c0225d6:
	mov.w @(loc_8c02264a,PC),r0
	mov r13,r4
	add 0x4C,r4
	mov.b r12,@(r0,r14)
	mov.w @(loc_8c02264c,PC),r0
	mov.l @r4,r4
	fmov fr13,@(r0,r4)
	mov 0x7C,r0
	fmov fr13,@(r0,r4)
	mov 0x78,r0
	fmov fr13,@(r0,r4)

loc_8c0225ec:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c02264e,PC),r3
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
	mov.l @(loc_8c022668,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c02265c,PC),r0
	mov.l @(loc_8c022664,PC),r3
	fmov @r0,fr2
	mova @(loc_8c022660,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c022648:
	#data 0x1000
loc_8c02264a:
	#data 0x012c
loc_8c02264c:
	#data 0x0080
loc_8c02264e:
	#data 0x0168
	#align4
loc_8c022650:
	#data 0xc0f3d70a
loc_8c022654:
	#data 0xc150cccd
loc_8c022658:
	#data 0x3e99999a
loc_8c02265c:
	#data 0x47800000
loc_8c022660:
	#data 0x43b40000
loc_8c022664:
	#data 0x0000ffff
loc_8c022668:
	#data bank11.loc_8c11e2e0

;----------------------------------------------
loc_8c02266c:
	mov.l r14,@-r15
	mova @(loc_8c02274c,PC),r0
	fmov fr15,@-r15
	mov r4,r14
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	fmov @r0,fr13
	mova @(loc_8c022750,PC),r0
	fmov @r0,fr14
	mova @(loc_8c022754,PC),r0
	fmov @r0,fr15
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c02274a,PC),r5
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
	mov.l @(loc_8c02275c,PC),r2
	mov r0,r3
	lds r3,fpul
	mov.l @(loc_8c022758,PC),r3
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(loc_8c022760,PC),r0
	fmov fr0,fr3
	fmov @r0,fr2
	mov 0x74,r0
	fmov fr15,fr0
	fmac fr0,fr3,fr2
	mov.l @(loc_8c022764,PC),r4
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
	mov.l @(loc_8c02275c,PC),r2
	mov r0,r3
	lds r3,fpul
	mov.l @(loc_8c022758,PC),r3
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
	mov.l @(loc_8c022768,PC),r10
	bra loc_8c02276e
	nop

;###############################################
loc_8c02274a:
	#data 0x0168
	#align4
loc_8c02274c:
	#data 0x47800000
loc_8c022750:
	#data 0x43b40000
loc_8c022754:
	#data 0x3f000000
loc_8c022758:
	#data 0x0000ffff
loc_8c02275c:
	#data bank11.loc_8c11e2e0
loc_8c022760:
	#data 0x3e99999a
loc_8c022764:
	#data 0x8c1f8c00
loc_8c022768:
	#data bank14.loc_8c1478ac

;----------------------------------------------
loc_8c02276c:
	mov.l @(loc_8c022860,PC),r10

loc_8c02276e:
	mov.l @(loc_8c022868,PC),r12
	mov 0x00,r9
	mov.l @(loc_8c02286c,PC),r13
	mov 0x01,r14
	mov.l @(loc_8c022864,PC),r11
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
	mov.l @(loc_8c022870,PC),r0
	mov.l @(loc_8c022874,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(loc_8c022852,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r5,r3
	mov.l @r11,r0
	shll2 r3
	mov.l @r0,r0
	mov.l @(r0,r3),r2
	mov 0x06,r3
	mov.w @(loc_8c022854,PC),r0
	cmp/ge r3,r8
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c022856,PC),r0
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
	mova @(loc_8c022878,PC),r0
	fmov @r0,fr12
	tst r3,r3
	fldi0 fr14
	bf.s loc_8c0227e4
	fldi1 fr15
	bra loc_8c02293e
	nop

loc_8c0227e4:
	mova @(loc_8c02287c,PC),r0
	mov.w @(loc_8c022858,PC),r10
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
	mov.l @(loc_8c022874,PC),r3
	mov.l r4,@(r0,r13)
	mov.w @(loc_8c022852,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r10,r3
	mov.l @r11,r0
	shll2 r3
	mov.l @r0,r0
	mov.l @(r0,r3),r2
	mov.w @(loc_8c022854,PC),r0
	mov.w @(loc_8c022858,PC),r3
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b r10,@(r0,r4)
	cmp/ge r3,r10
	mov.w @(loc_8c022856,PC),r0
	bf.s loc_8c022894
	mov.l r9,@(r0,r4)
	mov.w @(loc_8c02285a,PC),r1
	cmp/gt r1,r10
	bt loc_8c022894
	mov.w @(loc_8c02285c,PC),r3
	mov.l @(loc_8c022880,PC),r6
	mov.l r3,@(r0,r4)
	mov 0x2A,r0
	mov.b @(r0,r6),r2
	mov r10,r3
	mov.w @(loc_8c02285e,PC),r5
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
loc_8c022852:
	#data 0x012c
loc_8c022854:
	#data 0x0084
loc_8c022856:
	#data 0x00cc
loc_8c022858:
	#data 0x00b5
loc_8c02285a:
	#data 0x00bb
loc_8c02285c:
	#data 0x0400
loc_8c02285e:
	#data 0xff4c
	#align4
loc_8c022860:
	#data bank14.loc_8c1478f4
loc_8c022864:
	#data 0x8c26a944
loc_8c022868:
	#data bank04.loc_8c044f12
loc_8c02286c:
	#data 0x8c1f8bcc
loc_8c022870:
	#data bank14.loc_8c147894
loc_8c022874:
	#data loc_8c021e10
loc_8c022878:
	#data 0x3e4ccccd
loc_8c02287c:
	#data 0x3ecccccd
loc_8c022880:
	#data 0x8c289750

;----------------------------------------------
loc_8c022884:
	mov 0x78,r0
	fmov fr13,@(r0,r4)
	mov 0x7C,r0
	fmov fr12,@(r0,r4)
	mova @(loc_8c0229ac,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c02299c,PC),r0
	fmov fr4,@(r0,r4)

loc_8c022894:
	mov.w @(loc_8c02299e,PC),r4
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
	mov.l @(loc_8c0229b0,PC),r3
	mov.l r4,@(r0,r13)
	mov.w @(loc_8c0229a0,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r11,r2
	mov.w @(loc_8c0229a2,PC),r0
	mov.l @r2,r3
	mov.l @(loc_8c0229b4,PC),r2
	mov.l @(r0,r3),r1
	mov.w @(loc_8c0229a4,PC),r0
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r10,@(r0,r4)
	mov.w @(loc_8c0229a6,PC),r0
	mov.l r9,@(r0,r4)
	mov r13,r4
	add 0x34,r4
	mov.l @r4,r3
	mov 0x23,r0
	mov.l r2,@(0x10,r3)
	mov 0x31,r2
	mov.l @r4,r3
	mov.b r9,@(r0,r3)
	mov.w @(loc_8c0229a6,PC),r0
	mov.l @r4,r3
	mov.l r2,@(r0,r3)
	mova @(loc_8c0229b8,PC),r0
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
	mov.l @(loc_8c0229b0,PC),r3
	mov.l r4,@(r0,r13)
	mov.w @(loc_8c0229a0,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r11,r2
	mov.w @(loc_8c0229a8,PC),r0
	mov.l @r2,r3
	mov.l @(loc_8c0229bc,PC),r2
	mov.l @(r0,r3),r1
	add 0xF4,r0
	mov 0x19,r3
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r10,@(r0,r4)
	mov.w @(loc_8c0229a6,PC),r0
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
	mov.w @(loc_8c0229a0,PC),r0
	mov.l r4,@(0x34,r13)
	mov.b r14,@(r0,r4)
	mov.l @r11,r3
	mov.w @(loc_8c0229aa,PC),r0
	mov.l @r3,r2
	mov.l @(loc_8c0229b4,PC),r3
	mov.l @(r0,r2),r1
	mov.w @(loc_8c0229a4,PC),r0
	mov.l r1,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	mov 0x31,r3
	mov.b r14,@(r0,r4)
	mov.w @(loc_8c0229a6,PC),r0
	mov.l r3,@(r0,r4)
	mova @(loc_8c0229b8,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr12,@(r0,r4)
	mov 0x74,r0
	fmov fr14,@(r0,r4)

loc_8c02297c:
	mov.l @(loc_8c0229c4,PC),r3
	mov r9,r10
	mov.l @(loc_8c0229c0,PC),r8
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
loc_8c02299c:
	#data 0x0080
loc_8c02299e:
	#data 0x00be
loc_8c0229a0:
	#data 0x012c
loc_8c0229a2:
	#data 0x02fc
loc_8c0229a4:
	#data 0x0084
loc_8c0229a6:
	#data 0x00cc
loc_8c0229a8:
	#data 0x0090
loc_8c0229aa:
	#data 0x02f0
	#align4
loc_8c0229ac:
	#data 0x3f000000
loc_8c0229b0:
	#data loc_8c021e10
loc_8c0229b4:
	#data loc_8c0222f6
loc_8c0229b8:
	#data 0x3f333333
loc_8c0229bc:
	#data 0x0000c000
loc_8c0229c0:
	#data bank14.loc_8c14794c
loc_8c0229c4:
	#data bank14.loc_8c14797c

;----------------------------------------------
loc_8c0229c8:
	mov.l @(loc_8c022af0,PC),r5
	mov r10,r0
	nop
	shll2 r0
	mov.l @(loc_8c022af4,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(loc_8c022ae4,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r5,r3
	mov.l @r11,r0
	shll2 r3
	mov.l @r0,r0
	mov.l @(r0,r3),r2
	mov 0x11,r3
	mov.w @(loc_8c022ae6,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c022ae8,PC),r0
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
	mov.w @(loc_8c022ae8,PC),r0
	mov.w @(loc_8c022aea,PC),r3
	mov.l @(r0,r4),r2
	or r3,r2
	mov.l r2,@(r0,r4)
	mov.l @(0x8,r15),r1
	mov.l r4,@r1

loc_8c022a38:
	mov 0x04,r4
	cmp/ge r4,r10
	bf loc_8c02298a
	mov.l @(loc_8c022af8,PC),r3
	mov r13,r5
	mov.l @r13,r2
	add 0x08,r5
	mov.w @(loc_8c022ae8,PC),r0
	mov.l r3,@(0x10,r2)
	mov 0x11,r3
	mov.l @r5,r2
	mov.l r3,@(r0,r2)
	mov 0x54,r0
	mov.l @r5,r4
	mov.w @(loc_8c022aec,PC),r5
	fmov fr15,@(r0,r4)
	mov 0x50,r0
	fmov fr15,@(r0,r4)
	mov r13,r4
	add 0x10,r4
	mov.l @r4,r3
	add 0x7C,r0
	mov.l r5,@(r0,r3)
	mova @(loc_8c022afc,PC),r0
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
	mova @(loc_8c022b00,PC),r0
	fmov @r0,fr15
	jsr @r12
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c022b2a
	mov r0,r4
	mov.w @(loc_8c022ae4,PC),r0
	mov.l @(loc_8c022b04,PC),r3
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.b r9,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r11,r2
	mov.w @(loc_8c022aee,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	mov 0x21,r3
	mov.w @(loc_8c022ae6,PC),r0
	mov.l r1,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c022b0c
	mova @(loc_8c022b08,PC),r0
	bra loc_8c022b10
	fmov @r0,fr3

;###############################################
loc_8c022ae4:
	#data 0x012c
loc_8c022ae6:
	#data 0x0084
loc_8c022ae8:
	#data 0x00cc
loc_8c022aea:
	#data 0x0400
loc_8c022aec:
	#data 0x0411
loc_8c022aee:
	#data 0x02cc
	#align4
loc_8c022af0:
	#data bank14.loc_8c14793c
loc_8c022af4:
	#data loc_8c021e10
loc_8c022af8:
	#data loc_8c021f74
loc_8c022afc:
	#data 0x3f4ccccd
loc_8c022b00:
	#data 0x40c00000
loc_8c022b04:
	#data loc_8c02266c
loc_8c022b08:
	#data 0x3fe66666

;----------------------------------------------
loc_8c022b0c:
	mova @(loc_8c022c40,PC),r0
	fmov @r0,fr3

loc_8c022b10:
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mova @(loc_8c022c44,PC),r0
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
	mov.w @(loc_8c022c36,PC),r0
	mov.l @(loc_8c022c48,PC),r3
	mov.b r9,@(r0,r4)
	mov 0x23,r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r11,r2
	mov.w @(loc_8c022c38,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	mov 0x21,r3
	mov.w @(loc_8c022c3a,PC),r0
	mov.l r1,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c022b62
	mova @(loc_8c022c4c,PC),r0
	bra loc_8c022b66
	fmov @r0,fr3

loc_8c022b62:
	mova @(loc_8c022c50,PC),r0
	fmov @r0,fr3

loc_8c022b66:
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mova @(loc_8c022c54,PC),r0
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
	mova @(loc_8c022c58,PC),r0
	mov.l @(loc_8c022c60,PC),r9
	fmov @r0,fr12
	mova @(loc_8c022c5c,PC),r0
	mov.w @(loc_8c022c3c,PC),r11
	mov 0x01,r13
	fmov @r0,fr13
	mov 0x00,r12
	fldi1 fr14
	bra loc_8c022d80
	mov.l r12,@r15

;----------------------------------------------
loc_8c022bc4:
	mova @(loc_8c022c64,PC),r0
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
	mov.l @(loc_8c022c68,PC),r0
	add r10,r14
	mov.b @(r0,r14),r14
	mov r14,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c022bee
	bra loc_8c022d6a
	nop

loc_8c022bee:
	mov.l @(loc_8c022c6c,PC),r2
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
	mov.l @(loc_8c022c70,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c022c36:
	#data 0x012c
loc_8c022c38:
	#data 0x0298
loc_8c022c3a:
	#data 0x0084
loc_8c022c3c:
	#data 0x00c7
	#align4
loc_8c022c40:
	#data 0xbf99999a
loc_8c022c44:
	#data 0xc1500000
loc_8c022c48:
	#data loc_8c02266c
loc_8c022c4c:
	#data 0x40333333
loc_8c022c50:
	#data 0xbe4cccd0
loc_8c022c54:
	#data 0xc14e3d71
loc_8c022c58:
	#data 0x40500000
loc_8c022c5c:
	#data 0x3fc00000
loc_8c022c60:
	#data 0x8c1f8c1c
loc_8c022c64:
	#data 0xc133d70a
loc_8c022c68:
	#data bank14.loc_8c14799c
loc_8c022c6c:
	#data bank04.loc_8c044f12
loc_8c022c70:
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
	mov.l @(loc_8c022db4,PC),r3
	add r10,r0
	mov.b r0,@r1
	mov 0x23,r0
	mov.b r14,@(r0,r4)
	mov.w @(loc_8c022da8,PC),r0
	mov.b r13,@(r0,r4)
	bf.s loc_8c022ca8
	mov.l r3,@(0x10,r4)
	mov r8,r5
	add 0x3A,r5

loc_8c022ca8:
	mov.l @(loc_8c022db8,PC),r3
	mov r5,r2
	shll2 r2
	cmp/eq r11,r5
	mov.l @r3,r0
	mov.l @r0,r0
	mov.l @(r0,r2),r1
	mov.w @(loc_8c022daa,PC),r0
	mov.w @(loc_8c022dac,PC),r2
	mov.l r1,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr12,@(r0,r4)
	mova @(loc_8c022dbc,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c022dc0,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c022dae,PC),r0
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
	mov.w @(loc_8c022dae,PC),r1
	tst r1,r14
	bt loc_8c022cf4
	mov.w @(loc_8c022da8,PC),r0
	mov.b r12,@(r0,r4)

loc_8c022cf4:
	cmp/eq r11,r5
	bt loc_8c022d6a
	mov.l @r7,r3
	mov r13,r2
	shad r6,r2
	tst r3,r2
	bt loc_8c022d5e
	mov.l @(loc_8c022dc4,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c022d8c
	mov r0,r14
	mov.l @(loc_8c022db8,PC),r1
	mov.l @(loc_8c022dc8,PC),r3
	mov.w @(loc_8c022da8,PC),r0
	mov.b r13,@(r0,r14)
	mov.l r3,@(0x10,r14)
	mov.l @r1,r2
	mov.w @(loc_8c022db0,PC),r0
	mov.l @r2,r3
	mov 0x11,r2
	mov.l @(r0,r3),r3
	mov.w @(loc_8c022daa,PC),r0
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	mov 0x34,r0
	fmov fr15,@(r0,r14)
	mov 0x38,r0
	fmov fr12,@(r0,r14)
	mova @(loc_8c022dcc,PC),r0
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
	mov.w @(loc_8c022db2,PC),r0
	mov.l r14,@(r0,r3)
	add 0xB0,r0
	mov.l @(loc_8c022dd0,PC),r3
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c022d6a
	nop

loc_8c022d5e:
	mov r8,r0
	nop
	shll2 r0
	mov.l @(r0,r9),r3
	mov.w @(loc_8c022db2,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c022da8:
	#data 0x012c
loc_8c022daa:
	#data 0x0084
loc_8c022dac:
	#data 0x0411
loc_8c022dae:
	#data 0x0080
loc_8c022db0:
	#data 0x0320
loc_8c022db2:
	#data 0x00d4
	#align4
loc_8c022db4:
	#data loc_8c021e14
loc_8c022db8:
	#data 0x8c26a944
loc_8c022dbc:
	#data 0xc14e147b
loc_8c022dc0:
	#data 0x3f4ccccd
loc_8c022dc4:
	#data bank04.loc_8c044f12
loc_8c022dc8:
	#data loc_8c022238
loc_8c022dcc:
	#data 0xc14dc28f
loc_8c022dd0:
	#data bank10.loc_8c108210

;----------------------------------------------
loc_8c022dd4:
	rts
	nop

;----------------------------------------------
loc_8c022dd8:
	mov.l @(loc_8c022f00,PC),r2
	mov 0x23,r0
	mov.b @(r0,r4),r1
	mov.l @r2,r3
	extu.b r1,r1
	mov.w @(loc_8c022eee,PC),r0
	mov.l @r3,r3
	shll2 r1
	add r3,r1
	mov.l @(r0,r1),r1
	mov.w @(loc_8c022ef0,PC),r0
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
	mov.l @(loc_8c022f04,PC),r3
	jsr @r3
	mov 0x03,r4
	mov r0,r4
	mova @(loc_8c022f08,PC),r0
	fmov @r0,fr5
	mova @(loc_8c022f0c,PC),r0
	fmov @r0,fr4
	mov 0x00,r12
	mov.b @(0x4,r14),r0
	mov.l @(loc_8c022f10,PC),r11
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
	mov.w @(loc_8c022ef2,PC),r0
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
	mov.w @(loc_8c022ef4,PC),r4
	fmov fr15,@(r0,r14)
	add r11,r4
	mov.w @(loc_8c022ef2,PC),r0
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
	mov.w @(loc_8c022ef6,PC),r2
	extu.w r4,r10
	tst r10,r2
	bt loc_8c022eac
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c022eac
	mov r13,r0
	nop
	mov.w @(loc_8c022ef8,PC),r4
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
	mov.l @(loc_8c022f14,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c022eac:
	mov.w @(loc_8c022efa,PC),r2
	tst r2,r10
	bt loc_8c022ede
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c022ede
	mov r12,r0
	nop
	mov.w @(loc_8c022ef8,PC),r4
	mov.b r0,@(0x5,r14)
	mova @(loc_8c022f18,PC),r0
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
	mov.l @(loc_8c022f14,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c022ede:
	mov.l @(loc_8c022f1c,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c022f20
	mov.w @(loc_8c022efc,PC),r0
	bra loc_8c022f4e
	mov.l r13,@(r0,r14)

;###############################################
loc_8c022eee:
	#data 0x02a8
loc_8c022ef0:
	#data 0x0084
loc_8c022ef2:
	#data 0x012c
loc_8c022ef4:
	#data 0x00f0
loc_8c022ef6:
	#data 0x1000
loc_8c022ef8:
	#data 0x0128
loc_8c022efa:
	#data 0x2000
loc_8c022efc:
	#data 0x00d8
	#align4
loc_8c022f00:
	#data 0x8c26a944
loc_8c022f04:
	#data bank01.loc_8c01357a
loc_8c022f08:
	#data 0x3e4ccccd
loc_8c022f0c:
	#data 0xbf666666
loc_8c022f10:
	#data 0x8c1f8cfc
loc_8c022f14:
	#data bank04.loc_8c04257c
loc_8c022f18:
	#data 0x3f666666
loc_8c022f1c:
	#data bank01.loc_8c011ada

;----------------------------------------------
loc_8c022f20:
	mov.l @(loc_8c023058,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c022f66
	mov.w @(loc_8c02304e,PC),r0
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
	mov.w @(loc_8c023050,PC),r4
	mov.w @(loc_8c023052,PC),r0
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
	mov.w @(loc_8c023054,PC),r3
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
	mova @(loc_8c02305c,PC),r0
	mov.l @(loc_8c02306c,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c023060,PC),r0
	mov.l @(loc_8c023068,PC),r3
	fmov @r0,fr2
	mova @(loc_8c023064,PC),r0
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
	mova @(loc_8c023070,PC),r0
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
	mov.l @(loc_8c02307c,PC),r3
	shll2 r12
	mov r15,r13
	mov.l r6,@r15
	add 0x14,r13
	fmov fr4,@(r0,r15)
	mov.l @(loc_8c023074,PC),r0
	mov.l @(loc_8c023080,PC),r1
	fmov @(r0,r5),fr15
	mov.l @(loc_8c023078,PC),r0
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
	mov.l @(loc_8c023084,PC),r2
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
loc_8c02304e:
	#data 0x00d8
loc_8c023050:
	#data 0x00f0
loc_8c023052:
	#data 0x012c
loc_8c023054:
	#data 0x0168
	#align4
loc_8c023058:
	#data bank01.loc_8c011c10
loc_8c02305c:
	#data 0x3f000000
loc_8c023060:
	#data 0x47800000
loc_8c023064:
	#data 0x43b40000
loc_8c023068:
	#data 0x0000ffff
loc_8c02306c:
	#data bank11.loc_8c11e2e0
loc_8c023070:
	#data 0x3f7d70a4
loc_8c023074:
	#data bank14.loc_8c1479dc
loc_8c023078:
	#data bank14.loc_8c1479f4
loc_8c02307c:
	#data bank14.loc_8c147a18
loc_8c023080:
	#data bank13.loc_8c132a94
loc_8c023084:
	#data bank12.loc_8c129740

;----------------------------------------------
loc_8c023088:
	mov r13,r11

loc_8c02308a:
	lds r4,fpul
	mova @(loc_8c02314c,PC),r0
	fmov @r0,fr14
	mov r12,r3
	mov r12,r2
	add 0x08,r2
	float fpul,fr3
	fmov fr14,fr0
	mov.w @(loc_8c023142,PC),r10
	add 0x04,r3
	mov.w @(loc_8c023140,PC),r9
	mov r4,r13
	mov.l r3,@(0x4,r15)
	cmp/ge r14,r13
	mova @(loc_8c023150,PC),r0
	mov.l r2,@r15
	fmac fr0,fr3,fr15
	mov 0x01,r8
	bt.s loc_8c023124
	fmov @r0,fr13

loc_8c0230b2:
	mov.l @(loc_8c023154,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023124
	mov r0,r4
	mov.w @(loc_8c023144,PC),r0
	mov.l @(loc_8c02315c,PC),r2
	mov.b @r11+,r5
	mov.b r8,@(r0,r4)
	add 0xD0,r5
	mov.l @(loc_8c023158,PC),r3
	shll2 r5
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r0,r0
	add r5,r0
	mov.l @(r0,r9),r3
	mov.w @(loc_8c023146,PC),r0
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
	mov.w @(loc_8c023148,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c023140:
	#data 0x0094
loc_8c023142:
	#data 0x0411
loc_8c023144:
	#data 0x012c
loc_8c023146:
	#data 0x0084
loc_8c023148:
	#data 0x0080
	#align4
loc_8c02314c:
	#data 0x3f333333
loc_8c023150:
	#data 0xc14ccccd
loc_8c023154:
	#data bank04.loc_8c044f12
loc_8c023158:
	#data loc_8c022dd4
loc_8c02315c:
	#data 0x8c26a944

;----------------------------------------------
loc_8c023160:
	mov.l r14,@-r15
	mova @(loc_8c02328c,PC),r0
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
	mov.w @(loc_8c02327c,PC),r10
	mov.l @(loc_8c023288,PC),r12
	fldi1 fr15

loc_8c023186:
	mov.l @(loc_8c023290,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023216
	mov r0,r4
	mov.l @(loc_8c023294,PC),r3
	cmp/gt r14,r13
	mov.w @(loc_8c02327e,PC),r0
	mov.l @(loc_8c02329c,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r13,r3
	mov.l @(loc_8c023298,PC),r0
	shll2 r3
	mov.l @(r0,r3),r1
	mov.l @r2,r0
	shll2 r1
	mov.l @r0,r3
	add r3,r1
	mov.l @r1,r0
	mov.w @(loc_8c023280,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(loc_8c023282,PC),r0
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
	mov.w @(loc_8c023282,PC),r0
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
	mov.w @(loc_8c023282,PC),r0
	mov r4,r8
	mov.l @(r0,r4),r2
	or r10,r2
	mov.l r2,@(r0,r4)

loc_8c0231f6:
	cmp/ge r9,r13
	bf loc_8c023186
	mov.l @(loc_8c0232a4,PC),r3
	mova @(loc_8c0232a0,PC),r0
	mov 0x01,r2
	mov.l @(loc_8c0232a8,PC),r4
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
	mov.l @(loc_8c0232ac,PC),r5
	mov.w @(loc_8c023284,PC),r4
	mov.l r11,@-r15
	mov.w @(loc_8c023286,PC),r12
	add r5,r4
	sts.l pr,@-r15
	mov.l @(loc_8c0232b0,PC),r11
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
	mov.l @(loc_8c0232a4,PC),r3
	mova @(loc_8c0232a0,PC),r0
	mov 0x01,r2
	mov.l @(loc_8c0232a8,PC),r4
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02327c:
	#data 0x0400
loc_8c02327e:
	#data 0x012c
loc_8c023280:
	#data 0x0084
loc_8c023282:
	#data 0x00cc
loc_8c023284:
	#data 0x00f0
loc_8c023286:
	#data 0x0120
	#align4
loc_8c023288:
	#data bank14.loc_8c147a3c
loc_8c02328c:
	#data 0x3e99999a
loc_8c023290:
	#data bank04.loc_8c044f12
loc_8c023294:
	#data loc_8c022dd4
loc_8c023298:
	#data bank14.loc_8c147a28
loc_8c02329c:
	#data 0x8c26a944
loc_8c0232a0:
	#data 0xc0bfae14
loc_8c0232a4:
	#data 0x8c212c3e
loc_8c0232a8:
	#data 0x8c1f8dec
loc_8c0232ac:
	#data 0x8c1f8cfc
loc_8c0232b0:
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
	mov.l @(loc_8c023420,PC),r0
	shll2 r8
	shll2 r5
	mov r6,r13
	add r0,r8
	mov.l @(loc_8c023424,PC),r0
	mov 0x18,r3
	mov r4,r10
	fmov @(r0,r5),fr15
	cmp/ge r3,r13
	bf.s loc_8c0232ec
	mov r6,r9
	add 0xFD,r13

loc_8c0232ec:
	mov.l @(loc_8c023428,PC),r11
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
	mov.l @(loc_8c023430,PC),r12
	mov 0x01,r14
	mov.l @(loc_8c02342c,PC),r3
	shll2 r13
	mov.w @(loc_8c023412,PC),r0
	mov r14,r6
	mov 0x0B,r5
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r12,r2
	mov.w @(loc_8c023414,PC),r0
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
	mova @(loc_8c023434,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c023438,PC),r0
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
	mov.l @(loc_8c02342c,PC),r3
	mov 0x38,r5
	mov.w @(loc_8c023412,PC),r0
	mov.l @(loc_8c023444,PC),r7
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r12,r2
	mov.l @r15,r3
	mov.l @r2,r1
	mov.w @(loc_8c023416,PC),r0
	add r3,r1
	mov.l @(r0,r1),r2
	mov.w @(loc_8c023418,PC),r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r14,@(r0,r4)
	mov 0x34,r0
	fmov @r8,fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c02343c,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c023440,PC),r0
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

	mov.l @(loc_8c02342c,PC),r3
	mov r13,r1
	mov.w @(loc_8c023412,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c023448,PC),r3
	mov.l @r12,r2
	jsr @r3
	mov 0x0A,r0
	mov.l @r2,r2
	shll2 r0
	mov.w @(loc_8c02341a,PC),r1
	add r2,r0
	mov.w @(loc_8c02341c,PC),r2
	mov.l @(r0,r1),r3
	mov.w @(loc_8c023418,PC),r0
	fldi0 fr12
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mova @(loc_8c02344c,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov fr13,@(r0,r4)
	mova @(loc_8c023450,PC),r0
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
loc_8c023412:
	#data 0x012c
loc_8c023414:
	#data 0x00e8
loc_8c023416:
	#data 0x032c
loc_8c023418:
	#data 0x0084
loc_8c02341a:
	#data 0x0094
loc_8c02341c:
	#data 0x0411
	#align4
loc_8c023420:
	#data bank14.loc_8c147ab0
loc_8c023424:
	#data bank14.loc_8c147ac8
loc_8c023428:
	#data bank04.loc_8c044f12
loc_8c02342c:
	#data loc_8c022dd4
loc_8c023430:
	#data 0x8c26a944
loc_8c023434:
	#data 0x402ccccd
loc_8c023438:
	#data 0xc14e147b
loc_8c02343c:
	#data 0x3fc00000
loc_8c023440:
	#data 0xc14ccccd
loc_8c023444:
	#data bank14.loc_8c147a78
loc_8c023448:
	#data bank12.loc_8c129128
loc_8c02344c:
	#data 0x40200000
loc_8c023450:
	#data 0x3f4ccccd

;----------------------------------------------
loc_8c023454:
	bt.s loc_8c0234a8
	nop
	mov.l @(loc_8c023584,PC),r3
	mov r13,r1
	mov.w @(loc_8c023576,PC),r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c023588,PC),r3
	mov.l @r12,r2
	jsr @r3
	mov 0x0A,r0
	mov.l @r2,r2
	shll2 r0
	mov.w @(loc_8c023578,PC),r1
	fadd fr14,fr15
	add r2,r0
	mov.w @(loc_8c02357c,PC),r2
	mov.l @(r0,r1),r3
	mov.w @(loc_8c02357a,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mova @(loc_8c02358c,PC),r0
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
	mov.l @(loc_8c023590,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02356e
	mov r0,r4
	mov.w @(loc_8c023576,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c023594,PC),r1
	mov.l @(loc_8c023584,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8c02357e,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x01,r2
	mov.w @(loc_8c02357a,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @r15,r3
	mov.l @(loc_8c023598,PC),r0
	shll2 r3
	mov.l r3,@(0x8,r15)
	fmov @(r0,r3),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c02359c,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	add 0x04,r3
	mov.l r3,@(0x4,r15)
	mov.l r4,@-r3
	mov 0x0B,r5
	mov.l @(loc_8c023590,PC),r3
	mov r2,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02356e
	mov r0,r4
	mov.w @(loc_8c023576,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c023594,PC),r1
	mov.l @(loc_8c023584,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8c023580,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8c02357a,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov 0x01,r3
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c023582,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c023598,PC),r0
	mov.l @(0x8,r15),r2
	fmov @(r0,r2),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c0235a0,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c023576:
	#data 0x012c
loc_8c023578:
	#data 0x0094
loc_8c02357a:
	#data 0x0084
loc_8c02357c:
	#data 0x0411
loc_8c02357e:
	#data 0x0290
loc_8c023580:
	#data 0x0294
loc_8c023582:
	#data 0x00cc
	#align4
loc_8c023584:
	#data loc_8c022dd4
loc_8c023588:
	#data bank12.loc_8c1292d4
loc_8c02358c:
	#data 0x40200000
loc_8c023590:
	#data bank04.loc_8c044f12
loc_8c023594:
	#data 0x8c26a944
loc_8c023598:
	#data bank14.loc_8c147ad4
loc_8c02359c:
	#data 0xc1500000
loc_8c0235a0:
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
	mov.l @(loc_8c0236ac,PC),r14
	mov 0x01,r12
	mov.w r6,@r15
	mov r5,r11
	mov.l @(loc_8c0236b0,PC),r3
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
	mov.l @(loc_8c0236b4,PC),r3
	mov.l @(loc_8c0236b8,PC),r1
	mov.w @(loc_8c0236a0,PC),r0
	mov.b r12,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r12,r3
	mov.l @r1,r2
	sub r13,r3
	mov.w @(loc_8c0236a2,PC),r0
	shll2 r3
	mov.l @r2,r2
	add r2,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c0236a4,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov.w @(loc_8c0236a6,PC),r0
	mov.l r12,@(r0,r4)
	mova @(loc_8c0236bc,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mova @(loc_8c0236c0,PC),r0
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
	mov.l @(loc_8c0236b0,PC),r2
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023686
	mov r0,r4
	mov.l @(loc_8c0236b8,PC),r1
	mov.l @(loc_8c0236b4,PC),r3
	mov.w @(loc_8c0236a0,PC),r0
	mov.b r12,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r11,r3
	mov.l @r1,r2
	shll2 r3
	mov.w @(loc_8c0236a8,PC),r0
	mov.l @r2,r2
	add r2,r3
	mov.l @(r0,r3),r3
	add 0xF0,r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov.w @(loc_8c0236a6,PC),r0
	mov.w @(loc_8c0236aa,PC),r3
	mov.l r3,@(r0,r4)
	mova @(loc_8c0236c4,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c0236c8,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c0236cc,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c0236d0,PC),r0
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
	mova @(loc_8c0236d4,PC),r0
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
loc_8c0236a0:
	#data 0x012c
loc_8c0236a2:
	#data 0x0288
loc_8c0236a4:
	#data 0x0084
loc_8c0236a6:
	#data 0x00cc
loc_8c0236a8:
	#data 0x0094
loc_8c0236aa:
	#data 0x0411
	#align4
loc_8c0236ac:
	#data 0x8c1f8cfc
loc_8c0236b0:
	#data bank04.loc_8c044f12
loc_8c0236b4:
	#data loc_8c022dd4
loc_8c0236b8:
	#data 0x8c26a944
loc_8c0236bc:
	#data 0xc0f00000
loc_8c0236c0:
	#data 0xc1500000
loc_8c0236c4:
	#data 0x3f666666
loc_8c0236c8:
	#data 0xc0f33333
loc_8c0236cc:
	#data 0x3f4ccccd
loc_8c0236d0:
	#data 0xc14ccccd
loc_8c0236d4:
	#data 0xbf000000

;----------------------------------------------
loc_8c0236d8:
	mova @(loc_8c023820,PC),r0
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
	mov.l @(loc_8c023824,PC),r11
	mov r4,r14
	mov.l @(loc_8c023828,PC),r3
	mov.l r5,@r15
	mov 0x0B,r5
	mov.l r6,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0237b0
	mov r0,r4
	mov.l @(loc_8c023830,PC),r1
	mov 0x01,r5
	mov.l @(loc_8c02382c,PC),r3
	tst r14,r14
	mov.w @(loc_8c023818,PC),r0
	fldi0 fr4
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(loc_8c02381a,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c02381c,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.w @(loc_8c02381e,PC),r0
	mov.l r5,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mova @(loc_8c023834,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	bt.s loc_8c02379a
	fmov fr3,@(r0,r4)
	mov.l @(loc_8c023838,PC),r2
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
	mova @(loc_8c02383c,PC),r0
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
loc_8c023818:
	#data 0x012c
loc_8c02381a:
	#data 0x0284
loc_8c02381c:
	#data 0x0084
loc_8c02381e:
	#data 0x00cc
	#align4
loc_8c023820:
	#data 0xbf4ccccd
loc_8c023824:
	#data 0x8c1f8cfc
loc_8c023828:
	#data bank04.loc_8c044f12
loc_8c02382c:
	#data loc_8c022dd4
loc_8c023830:
	#data 0x8c26a944
loc_8c023834:
	#data 0xc1500000
loc_8c023838:
	#data 0x40f00000
loc_8c02383c:
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
	mov.l @(loc_8c0239a4,PC),r3
	mov 0x00,r12
	mov.w @(loc_8c023992,PC),r8
	mov 0x10,r11
	mov.l @(loc_8c0239a0,PC),r13
	mov 0x01,r10
	fldi0 fr14
	mov r12,r14
	fldi1 fr15
	mov 0x04,r9
	mov.l r3,@r15

loc_8c02387a:
	mov.l @(loc_8c0239a8,PC),r3
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
	mov.w @(loc_8c023994,PC),r0
	mov r14,r5
	mov.l @(loc_8c0239ac,PC),r3
	shll2 r5
	mov.b r12,@(r0,r4)
	mov.l @r3,r0
	mov.l @(loc_8c0239b0,PC),r1
	mov.l @r0,r0
	add r5,r0
	mov.l @(r0,r8),r2
	mov.w @(loc_8c023996,PC),r0
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
	mov.w @(loc_8c023998,PC),r0
	mov.l @(loc_8c0239b4,PC),r3
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
	mov.w @(loc_8c02399a,PC),r0
	cmp/ge r9,r14
	add r2,r5
	bf.s loc_8c02387a
	mov.l r4,@(r0,r5)
	mov.l @(loc_8c0239b8,PC),r4
	mov.w @(loc_8c023998,PC),r0
	mov r4,r5
	add 0x38,r5
	mov.l @r5,r3
	mov.w @(loc_8c023998,PC),r1
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
	mov.l @(loc_8c0239a8,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023986
	mov r0,r14
	mov.w @(loc_8c023994,PC),r0
	mov 0x01,r3
	fldi0 fr15
	mov 0x0B,r5
	mov.b r3,@(r0,r14)
	mov 0x31,r3
	add 0xA0,r0
	mov.l @(loc_8c0239bc,PC),r2
	mov 0x01,r6
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov 0x74,r0
	fmov fr15,@(r0,r14)
	mov 0x1E,r0
	mov.l @(loc_8c0239a8,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023982
	mov r0,r4
	mov.l @(loc_8c0239ac,PC),r1
	mov 0x01,r3
	mov.w @(loc_8c023994,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @r1,r2
	mov.w @(loc_8c02399c,PC),r0
	mov.l @r2,r3
	mov.l @(loc_8c0239bc,PC),r2
	mov.l @(r0,r3),r3
	mov.w @(loc_8c023996,PC),r0
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
	mov.w @(loc_8c02399e,PC),r0
	mov.l r4,@(r0,r14)

loc_8c023986:
	mov r14,r0
	nop
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c023992:
	#data 0x01c8
loc_8c023994:
	#data 0x012c
loc_8c023996:
	#data 0x0084
loc_8c023998:
	#data 0x00cc
loc_8c02399a:
	#data 0x0120
loc_8c02399c:
	#data 0x02cc
loc_8c02399e:
	#data 0x00d4
	#align4
loc_8c0239a0:
	#data bank14.loc_8c147ae0
loc_8c0239a4:
	#data 0x8c1f8cfc
loc_8c0239a8:
	#data bank04.loc_8c044f12
loc_8c0239ac:
	#data 0x8c26a944
loc_8c0239b0:
	#data loc_8c022dd4
loc_8c0239b4:
	#data loc_8c022df2
loc_8c0239b8:
	#data 0x8c1f8dec
loc_8c0239bc:
	#data loc_8c022f76

;----------------------------------------------
loc_8c0239c0:
	sts.l pr,@-r15
	mov.l @(loc_8c023a6c,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0239e2
	mov r0,r4
	mov.w @(loc_8c023a68,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c023a70,PC),r2
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
	mov.l @(loc_8c023a74,PC),r3
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
	mov.w @(loc_8c023a68,PC),r0
	mov.b r6,@(r0,r4)

loc_8c023a16:
	cmp/ge r7,r5
	bf loc_8c023a04
	mov.l @r15,r14
	mov 0x14,r6
	mov.l @(loc_8c023a74,PC),r3
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
	mov.w @(loc_8c023a68,PC),r0
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
	mov.w @(loc_8c023a6a,PC),r1
	mov 0x00,r5
	mov.l @(loc_8c023a74,PC),r4
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c023a68:
	#data 0x012c
loc_8c023a6a:
	#data 0x0140
loc_8c023a6c:
	#data bank04.loc_8c044f12
loc_8c023a70:
	#data loc_8c022dd8
loc_8c023a74:
	#data 0x8c1f8cfc

;----------------------------------------------
loc_8c023a78:
	mov.l r14,@-r15
	mova @(loc_8c023b9c,PC),r0
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
	mov.w @(loc_8c023b8a,PC),r11
	fmov @r0,fr15
	mov.l @(loc_8c023b94,PC),r8
	mov.l @(loc_8c023b98,PC),r9

loc_8c023a9c:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c023ae2
	mov r0,r4
	mov.w @(loc_8c023b8c,PC),r0
	mov r14,r5
	mov.l @(loc_8c023ba4,PC),r2
	shll2 r5
	mov.b r13,@(r0,r4)
	mov.l @(loc_8c023ba0,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r0,r0
	add r5,r0
	mov.l @(r0,r11),r3
	mov.w @(loc_8c023b8e,PC),r0
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
	mov.l @(loc_8c023ba8,PC),r5
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
	mov.w @(loc_8c023b8c,PC),r0
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
	mov.w @(loc_8c023b90,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c023b44
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c023b44:
	mova @(loc_8c023bac,PC),r0
	mov.l @(loc_8c023bbc,PC),r2
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c023bb0,PC),r0
	mov.l @(loc_8c023bb8,PC),r3
	fmov @r0,fr2
	mova @(loc_8c023bb4,PC),r0
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
	mov.w @(loc_8c023b8c,PC),r0
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c023b82:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c023b8a:
	#data 0x043c
loc_8c023b8c:
	#data 0x012c
loc_8c023b8e:
	#data 0x0084
loc_8c023b90:
	#data 0x0168
	#align4
loc_8c023b94:
	#data bank14.loc_8c147b10
loc_8c023b98:
	#data bank04.loc_8c044f12
loc_8c023b9c:
	#data 0xc14fd70a
loc_8c023ba0:
	#data loc_8c023af6
loc_8c023ba4:
	#data 0x8c26a944
loc_8c023ba8:
	#data work.GameGlobalPointer
loc_8c023bac:
	#data 0x3f000000
loc_8c023bb0:
	#data 0x47800000
loc_8c023bb4:
	#data 0x43b40000
loc_8c023bb8:
	#data 0x0000ffff
loc_8c023bbc:
	#data bank11.loc_8c11e2e0

;----------------------------------------------
loc_8c023bc0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c023cf4,PC),r13
	mov 0x04,r0
	fldi0 fr4
	fmov fr4,@r15
	fmov fr4,@(r0,r15)
	mov 0x08,r0
	fmov fr4,@(r0,r15)
	mov.b @r13,r13
	mov.l @(loc_8c023cf8,PC),r0
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
	mov.l @(loc_8c023cfc,PC),r3
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
	mov.l @(loc_8c023d00,PC),r3
	mov 0x01,r5
	mov.w @(loc_8c023ce0,PC),r0
	mov.l @(loc_8c023d04,PC),r1
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r0
	mov.l @(loc_8c023d08,PC),r3
	mov.l @r1,r2
	mov r4,r1
	and r3,r0
	mov.l @(loc_8c023d0c,PC),r3
	mov.l @r2,r2
	shll2 r0
	add 0x34,r1
	add r2,r0
	mov.w @(loc_8c023ce2,PC),r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8c023ce4,PC),r0
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
	mov.w @(loc_8c023ce6,PC),r3
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
	mov.l @(loc_8c023d10,PC),r1
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
	mov.l @(loc_8c023d18,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r13
	mov r0,r4
	mov.l @(loc_8c023d14,PC),r0
	shad r3,r13
	mov.b @(r0,r13),r13
	extu.b r13,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	mov r4,r0
	nop
	mov.w @(loc_8c023ce8,PC),r1
	cmp/eq r1,r0
	bt.s loc_8c023d1c
	add r2,r13
	mov.w @(loc_8c023cea,PC),r1
	cmp/eq r1,r0
	bt loc_8c023d4e
	mov.w @(loc_8c023cec,PC),r1
	cmp/eq r1,r0
	bt loc_8c023d4e
	mov.w @(loc_8c023cee,PC),r1
	cmp/eq r1,r0
	bt loc_8c023d64
	mov.w @(loc_8c023cf0,PC),r1
	cmp/eq r1,r0
	bt loc_8c023d82
	mov.w @(loc_8c023cf2,PC),r1
	cmp/eq r1,r0
	bt loc_8c023db0
	bra loc_8c023dba
	nop

;###############################################
loc_8c023ce0:
	#data 0x012c
loc_8c023ce2:
	#data 0x0438
loc_8c023ce4:
	#data 0x0084
loc_8c023ce6:
	#data 0xff00
loc_8c023ce8:
	#data 0x0100
loc_8c023cea:
	#data 0x0500
loc_8c023cec:
	#data 0x0200
loc_8c023cee:
	#data 0x0600
loc_8c023cf0:
	#data 0x0400
loc_8c023cf2:
	#data 0x0300
	#align4

loc_8c023cf4:
	#data 0x8c2897a9
loc_8c023cf8:
	#data bank14.loc_8c147b7c
loc_8c023cfc:
	#data bank04.loc_8c044f12
loc_8c023d00:
	#data loc_8c023c70
loc_8c023d04:
	#data 0x8c26a944
loc_8c023d08:
	#data 0xffff00ff
loc_8c023d0c:
	#data bank12.loc_8c1294c8
loc_8c023d10:
	#data bank14.loc_8c147cd4
loc_8c023d14:
	#data bank14.loc_8c147ccc
loc_8c023d18:
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
	mov.w @(loc_8c023e00,PC),r3
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
	mov.l @(loc_8c023e04,PC),r1
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
	mov.l @(loc_8c023e04,PC),r2
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
	mov.l @(loc_8c023e08,PC),r3
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
	mov.l @(loc_8c023e0c,PC),r3
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
loc_8c023e00:
	#data 0x0500
	#align4
loc_8c023e04:
	#data 0x8c2897ac
loc_8c023e08:
	#data loc_8c023fbc
loc_8c023e0c:
	#data 0x8c2897a9

;----------------------------------------------
loc_8c023e10:
	mov.w @(loc_8c023e78,PC),r3
	mov.w @(0x1C,r14),r0
	cmp/eq r3,r0
	bt.s loc_8c023e22
	mov 0x01,r13
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c023e38

loc_8c023e22:
	mov.w @(loc_8c023e7a,PC),r0
	mov r15,r5
	mov.l @(loc_8c023e80,PC),r3
	mov.l @(loc_8c023e84,PC),r2
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
	mov.w @(loc_8c023e7c,PC),r7
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
	mova @(loc_8c023e88,PC),r0
	mov.w @(r0,r1),r0

braf_8c023e74:
	braf r0
	nop

;###############################################
loc_8c023e78:
	#data 0x0100
loc_8c023e7a:
	#data 0x012c
loc_8c023e7c:
	#data 0x03e8
	#align4

loc_8c023e80:
	#data 0x8c2897ac
loc_8c023e84:
	#data bank11.loc_8c1160f8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c023e88:
	#data16 {loc_8c023ea0-braf_8c023e74-4} ; 0x0028
	#data16 {loc_8c023ea6-braf_8c023e74-4} ; 0x002e
	#data16 {loc_8c023eba-braf_8c023e74-4} ; 0x0042
	#data16 {loc_8c023ed6-braf_8c023e74-4} ; 0x005e
	#data16 {loc_8c023ef2-braf_8c023e74-4} ; 0x007a
	#data16 {loc_8c023f0e-braf_8c023e74-4} ; 0x0096
	#data16 {loc_8c023f1c-braf_8c023e74-4} ; 0x00a4
	#data16 {loc_8c023f3c-braf_8c023e74-4} ; 0x00c4
	#data16 {loc_8c023f4a-braf_8c023e74-4} ; 0x00d2
	#data16 {loc_8c023f5a-braf_8c023e74-4} ; 0x00e2
	#data16 {loc_8c023f66-braf_8c023e74-4} ; 0x00ee
	#data16 {loc_8c023f72-braf_8c023e74-4} ; 0x00fa

;----------------------------------------------
loc_8c023ea0:
	mov r6,r1
	bra loc_8c023f50
	mov r7,r0

loc_8c023ea6:
	mov.l @(loc_8c023fac,PC),r3
	mov r6,r1
	jsr @r3
	mov r7,r0
	mov.l @(loc_8c023fb0,PC),r2
	mov r0,r1
	jsr @r2
	mov r10,r0
	bra loc_8c023f7a
	nop

loc_8c023eba:
	mov.l @(loc_8c023fac,PC),r2
	mov r6,r1
	jsr @r2
	mov r7,r0
	mov.l @(loc_8c023fac,PC),r3
	mov r0,r1
	jsr @r3
	mov r10,r0
	mov.l @(loc_8c023fb0,PC),r2
	mov r0,r1
	jsr @r2
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023ed6:
	mov.l @(loc_8c023fac,PC),r2
	mov r6,r1
	jsr @r2
	mov r7,r0
	mov.l @(loc_8c023fac,PC),r3
	mov r0,r1
	jsr @r3
	mov r10,r0
	mov.l @(loc_8c023fac,PC),r2
	mov r0,r1
	jsr @r2
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023ef2:
	mov.w @(loc_8c023fa6,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x2,r15),r0
	extu.b r0,r1
	mov r5,r0
	nop
	mov.l @(loc_8c023fb0,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c023f7c
	mov r0,r4
	bra loc_8c023f34
	nop

loc_8c023f0e:
	mov.b @(0x2,r15),r0
	mov.l @(loc_8c023fac,PC),r3
	extu.b r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023f1c:
	mov.w @(loc_8c023fa6,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x3,r15),r0
	extu.b r0,r1
	mov r5,r0
	nop
	mov.l @(loc_8c023fb0,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c023f7c
	mov r0,r4

loc_8c023f34:
	mov.w @(loc_8c023fa6,PC),r0
	mov 0x00,r3
	bra loc_8c023f90
	mov.b r3,@(r0,r14)

loc_8c023f3c:
	mov.b @(0x3,r15),r0
	mov.l @(loc_8c023fac,PC),r3
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
	mov.l @(loc_8c023fb0,PC),r3
	jsr @r3
	nop
	bra loc_8c023f7a
	nop

loc_8c023f5a:
	mov.l @(loc_8c023fac,PC),r3
	mov r12,r1
	jsr @r3
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023f66:
	mov.l @(loc_8c023fb0,PC),r3
	mov r11,r1
	jsr @r3
	mov r5,r0
	bra loc_8c023f7a
	nop

loc_8c023f72:
	mov.l @(loc_8c023fac,PC),r3	
	mov r11,r1	
	jsr @r3	
	mov r5,r0	

loc_8c023f7a:
	mov r0,r4

loc_8c023f7c:
	mov.l @(loc_8c023fb4,PC),r2
	add 0x1E,r4
	mov.w @(loc_8c023fa8,PC),r0
	shll2 r4
	mov.l @r2,r3
	mov.l @r3,r3
	add r3,r4
	mov.l @(r0,r4),r1
	mov.w @(loc_8c023faa,PC),r0
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
	mov.l @(loc_8c023fb8,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c023fa6:
	#data 0x012c
loc_8c023fa8:
	#data 0x0438
loc_8c023faa:
	#data 0x0084
	#align4
loc_8c023fac:
	#data bank12.loc_8c1292d4
loc_8c023fb0:
	#data bank12.loc_8c129128
loc_8c023fb4:
	#data 0x8c26a944
loc_8c023fb8:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c023fbc:
	sts.l pr,@-r15
	bsr loc_8c023fda
	mov 0x03,r5
	tst r0,r0
	bt.s loc_8c023fd4
	mov r0,r5
	mov.l @(loc_8c0240d8,PC),r2
	mov r5,r1
	mov.l @(loc_8c0240dc,PC),r3
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
	mov.l @(loc_8c0240e0,PC),r3
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
	mov.l @(loc_8c0240e4,PC),r2
	mov 0x01,r3
	mov.w @(loc_8c0240cc,PC),r0
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov r14,r3
	mov.l r2,@(0x10,r4)
	mov r14,r2
	shll r2
	add r3,r2
	mov.l @(loc_8c0240e8,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0240dc,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0240ec,PC),r0
	mov r14,r3
	shll2 r3
	mov.l @r0,r1
	mov.w @(loc_8c0240ce,PC),r0
	mov.l @r1,r2
	mov r4,r1
	add 0x50,r1
	add r2,r3
	mov.w @(loc_8c0240d2,PC),r2
	mov.l @(r0,r3),r3
	mov.w @(loc_8c0240d0,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c0240f0,PC),r2
	mov.l @(loc_8c0240dc,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0240f4,PC),r2
	mov r4,r1
	mov.l @(loc_8c0240f8,PC),r3
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
	mov.l @(loc_8c0240fc,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c02407c:
	mov.l @(loc_8c024100,PC),r7
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
	mov.w @(loc_8c0240cc,PC),r0
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
	mov.w @(loc_8c0240d4,PC),r2
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
loc_8c0240cc:
	#data 0x012c
loc_8c0240ce:
	#data 0x01c8
loc_8c0240d0:
	#data 0x0084
loc_8c0240d2:
	#data 0x0431
loc_8c0240d4:
	#data 0x00ff
	#align4
loc_8c0240d8:
	#data bank14.loc_8c147cec
loc_8c0240dc:
	#data bank12.loc_8c1294c8
loc_8c0240e0:
	#data bank04.loc_8c044f12
loc_8c0240e4:
	#data loc_8c024068
loc_8c0240e8:
	#data bank14.loc_8c147d08
loc_8c0240ec:
	#data 0x8c26a944
loc_8c0240f0:
	#data bank14.loc_8c147ce0
loc_8c0240f4:
	#data bank14.loc_8c147cf8
loc_8c0240f8:
	#data bank12.loc_8c1294bc
loc_8c0240fc:
	#data bank14.loc_8c147d38
loc_8c024100:
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
	mov.w @(loc_8c0241f6,PC),r0
	bra loc_8c024120
	mov.b r6,@(r0,r4)

loc_8c02411a:
	mov.l @(loc_8c0241fc,PC),r2
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
	mov.l @(loc_8c024200,PC),r12
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
	mov.w @(loc_8c0241f6,PC),r0
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
	mov.w @(loc_8c0241f8,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c024176
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c024176:
	mova @(loc_8c024204,PC),r0
	mov.l @(loc_8c024214,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c024208,PC),r0
	mov.l @(loc_8c024210,PC),r3
	fmov @r0,fr2
	mova @(loc_8c02420c,PC),r0
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
	mova @(loc_8c024218,PC),r0
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
	mova @(loc_8c02421c,PC),r0
	bra loc_8c0241d2
	fmov @r0,fr3

loc_8c0241ce:
	mova @(loc_8c024220,PC),r0
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
	mov.w @(loc_8c0241fa,PC),r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c024224
	bra loc_8c024270
	mov 0x02,r0

;###############################################
loc_8c0241f6:
	#data 0x012c
loc_8c0241f8:
	#data 0x0168
loc_8c0241fa:
	#data 0x00ff
	#align4
loc_8c0241fc:
	#data bank04.loc_8c0450c0
loc_8c024200:
	#data 0x8c289750
loc_8c024204:
	#data 0x3f000000
loc_8c024208:
	#data 0x47800000
loc_8c02420c:
	#data 0x43b40000
loc_8c024210:
	#data 0x0000ffff
loc_8c024214:
	#data bank11.loc_8c11e2e0
loc_8c024218:
	#data 0xc14ccccd
loc_8c02421c:
	#data 0x3f666666
loc_8c024220:
	#data 0xbf666666

;----------------------------------------------
loc_8c024224:
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c024288
	mov.b @(0x4,r14),r0
	mov r14,r1
	mov.l @(loc_8c024328,PC),r2
	add 0x74,r1
	mov.l @(loc_8c02432c,PC),r3
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
	mov.w @(loc_8c024324,PC),r0
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
	mov.w @(loc_8c024324,PC),r0
	bra loc_8c024288
	mov.b r13,@(r0,r14)

loc_8c024278:
	lds.l @r15+,pr
	mov.l @(loc_8c024330,PC),r2
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
	mov.l @(loc_8c024334,PC),r6
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
	mov.w @(loc_8c024324,PC),r0
	mov.b r5,@(r0,r14)

loc_8c0242b4:
	mova @(loc_8c024338,PC),r0
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
	mov.w @(loc_8c024326,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c02433c
	mov 0x03,r0
	bra loc_8c024386
	mov.b r0,@(0x4,r14)

;###############################################
loc_8c024324:
	#data 0x012c
loc_8c024326:
	#data 0x00ff
loc_8c024328:
	#data bank14.loc_8c147cf8
loc_8c02432c:
	#data bank12.loc_8c1294bc
loc_8c024330:
	#data bank04.loc_8c0450c0
loc_8c024334:
	#data 0x8c289750
loc_8c024338:
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
	mov.w @(loc_8c02438c,PC),r0
	bra loc_8c024386
	mov.b r5,@(r0,r14)

loc_8c02437a:
	mov.l @(loc_8c024390,PC),r2
	mov.b r5,@r4
	mov r14,r4
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_8c024386:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02438c:
	#data 0x012c
	#align4
loc_8c024390:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c024394:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c02449a,PC),r13
	mov.l @(loc_8c0244ac,PC),r12
	mov.l @(loc_8c0244a8,PC),r14
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
	mov.l @(loc_8c0244b0,PC),r3
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
	mov.w @(loc_8c02449c,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c0244b4,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l @(loc_8c0244b8,PC),r1
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
	mov.w @(loc_8c02449e,PC),r0
	shll2 r3
	add r2,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c0244a0,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c0244bc,PC),r3
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0244c0,PC),r2
	mov r4,r1
	mov.l @(loc_8c0244bc,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0244c4,PC),r2
	mov r4,r1
	mov.l @(loc_8c0244c8,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c0244a4,PC),r0
	mov.w @(loc_8c0244a2,PC),r1
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
	mov.l @(loc_8c0244cc,PC),r0
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
	mov.l @(loc_8c0244d4,PC),r6
	mov 0x00,r7
	extu.b r0,r0
	mov.l @(loc_8c0244d0,PC),r4
	cmp/eq 0x00,r0
	bt.s loc_8c0244d8
	mov 0x01,r5
	cmp/eq 0x01,r0
	bt loc_8c02450c
	bra loc_8c0245fc
	nop

;###############################################
loc_8c02449a:
	#data 0x00ff
loc_8c02449c:
	#data 0x012c
loc_8c02449e:
	#data 0x0438
loc_8c0244a0:
	#data 0x0084
loc_8c0244a2:
	#data 0x0431
loc_8c0244a4:
	#data 0x00cc
	#align4
loc_8c0244a8:
	#data bank14.loc_8c147d9c
loc_8c0244ac:
	#data bank14.loc_8c147dc8
loc_8c0244b0:
	#data bank04.loc_8c044f12
loc_8c0244b4:
	#data loc_8c024462
loc_8c0244b8:
	#data 0x8c26a944
loc_8c0244bc:
	#data bank12.loc_8c1294c8
loc_8c0244c0:
	#data bank14.loc_8c147d54
loc_8c0244c4:
	#data bank14.loc_8c147d7c
loc_8c0244c8:
	#data bank12.loc_8c1294bc
loc_8c0244cc:
	#data bank14.loc_8c147e04
loc_8c0244d0:
	#data 0x8c289750
loc_8c0244d4:
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
	mov.l @(loc_8c024608,PC),r0
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
	mov.l @(loc_8c02460c,PC),r2
	mov r14,r1
	mov.l @(loc_8c024610,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c024614,PC),r2
	mov r14,r1
	mov.l @(loc_8c024618,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8c024604,PC),r3
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
	mov.l @(loc_8c02462c,PC),r2
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
	mova @(loc_8c02461c,PC),r0
	mov.l @(loc_8c024628,PC),r3
	fmov @r0,fr2
	mova @(loc_8c024620,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(loc_8c024624,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mov.l @r15+,r2
	mova @(loc_8c024630,PC),r0
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
	mov.l @(loc_8c024634,PC),r2
	mov r14,r1
	mov.l @(loc_8c024610,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	bra loc_8c0245da
	nop

loc_8c0245ce:
	mov.l @(loc_8c024638,PC),r2
	mov r14,r1
	mov.l @(loc_8c024610,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c0245da:
	mov.l @(loc_8c02463c,PC),r2
	mov r14,r1
	mov.l @(loc_8c024618,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c024604:
	#data 0x0168
	#align4
loc_8c024608:
	#data bank14.loc_8c147dec
loc_8c02460c:
	#data bank14.loc_8c147d7c
loc_8c024610:
	#data bank12.loc_8c1294bc
loc_8c024614:
	#data bank14.loc_8c147d60
loc_8c024618:
	#data bank12.loc_8c1294c8
loc_8c02461c:
	#data 0x47800000
loc_8c024620:
	#data 0x43b40000
loc_8c024624:
	#data 0x3f000000
loc_8c024628:
	#data 0x0000ffff
loc_8c02462c:
	#data bank11.loc_8c11e860
loc_8c024630:
	#data 0x3e4ccccd
loc_8c024634:
	#data bank14.loc_8c147d8c
loc_8c024638:
	#data bank14.loc_8c147d6c
loc_8c02463c:
	#data bank14.loc_8c147d54

;----------------------------------------------
loc_8c024640:
	mov.l r14,@-r15
	mova @(loc_8c024770,PC),r0
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
	mova @(loc_8c024774,PC),r0
	mov.l @(loc_8c024768,PC),r8
	mov.l @(loc_8c02476c,PC),r9
	fmov @r0,fr15

loc_8c024668:
	mov.l @(loc_8c024778,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0246ce
	mov r0,r14
	mov.l @(loc_8c02477c,PC),r3
	mov.w @(loc_8c024760,PC),r0
	mov.b r12,@(r0,r14)
	mov.l r3,@(0x10,r14)
	mov.l @r9,r2
	mov.w @(loc_8c024762,PC),r0
	mov.l @r2,r3
	mov r13,r2
	shll r2
	mov.l @(0x2C,r3),r1
	mov r13,r3
	add r3,r2
	mov.l @(loc_8c024780,PC),r3
	shll2 r2
	mov.l r1,@(r0,r14)
	add r3,r2
	mov r14,r1
	add 0x48,r0
	mov.l @(loc_8c024784,PC),r3
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
	mov.l @(loc_8c024788,PC),r2
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
	mov.w @(loc_8c024760,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8c024764,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c02471a
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c02471a:
	mova @(loc_8c02478c,PC),r0
	mov.l @(loc_8c02479c,PC),r2
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c024790,PC),r0
	mov.l @(loc_8c024798,PC),r3
	fmov @r0,fr2
	mova @(loc_8c024794,PC),r0
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
	mov.w @(loc_8c024760,PC),r0
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c024758:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c024760:
	#data 0x012c
loc_8c024762:
	#data 0x0084
loc_8c024764:
	#data 0x0168
	#align4
loc_8c024768:
	#data bank14.loc_8c147e30
loc_8c02476c:
	#data 0x8c26a944
loc_8c024770:
	#data 0xbc23d70a
loc_8c024774:
	#data 0x3c23d70a
loc_8c024778:
	#data bank04.loc_8c044f12
loc_8c02477c:
	#data loc_8c0246e4
loc_8c024780:
	#data bank14.loc_8c147e0c
loc_8c024784:
	#data bank12.loc_8c1294c8
loc_8c024788:
	#data work.GameGlobalPointer
loc_8c02478c:
	#data 0x3f000000
loc_8c024790:
	#data 0x47800000
loc_8c024794:
	#data 0x43b40000
loc_8c024798:
	#data 0x0000ffff
loc_8c02479c:
	#data bank11.loc_8c11e2e0

;----------------------------------------------
loc_8c0247a0:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c024810,PC),r3
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
	mov.w @(loc_8c024808,PC),r0
	mov 0x01,r5
	mov.l @(loc_8c024814,PC),r3
	mov.l @(loc_8c024818,PC),r2
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r15,r3
	mov.l @r0,r0
	shll2 r3
	mov.w @(loc_8c02480c,PC),r1
	mov.l @(r0,r3),r3
	mov.w @(loc_8c02480a,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	mov.w @(loc_8c02480e,PC),r0
	add r3,r1
	mov.l r1,@(r0,r4)
	mov 0x0C,r3
	mov.l @r15,r1
	cmp/ge r3,r1
	bf loc_8c0247fc
	mova @(loc_8c02481c,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c024808:
	#data 0x012c
loc_8c02480a:
	#data 0x0084
loc_8c02480c:
	#data 0x0088
loc_8c02480e:
	#data 0x00c8
	#align4
loc_8c024810:
	#data bank04.loc_8c044f12
loc_8c024814:
	#data loc_8c024804
loc_8c024818:
	#data 0x8c26a944
loc_8c02481c:
	#data 0xbd75c28f

;----------------------------------------------
loc_8c024820:
	mov.l r14,@-r15
	mova @(loc_8c0248f4,PC),r0
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
	mov.l @(loc_8c0248f8,PC),r12
	mov.w @(loc_8c0248ea,PC),r9
	mov.l @(loc_8c0248f0,PC),r8
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
	mov.l @(loc_8c024900,PC),r1
	mov.l @(loc_8c0248fc,PC),r3
	mov.w @(loc_8c0248ec,PC),r0
	mov.b r11,@(r0,r14)
	mov.l r3,@(0x10,r14)
	mov.l @r1,r2
	mov.w @(loc_8c0248ee,PC),r0
	mov.l @r2,r3
	mov.l @(0x3C,r3),r3
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r9,@(r0,r14)
	mov 0x34,r0
	fmov fr14,@(r0,r14)
	mov r13,r3
	mov.l @(loc_8c024904,PC),r0
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
	mov.l @(loc_8c024908,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	bra loc_8c02491c
	nop

;###############################################
loc_8c0248ea:
	#data 0x0421
loc_8c0248ec:
	#data 0x012c
loc_8c0248ee:
	#data 0x0084
	#align4
loc_8c0248f0:
	#data bank04.loc_8c044f12
loc_8c0248f4:
	#data 0xc1500000
loc_8c0248f8:
	#data work.GameGlobalPointer
loc_8c0248fc:
	#data loc_8c024a1e
loc_8c024900:
	#data 0x8c26a944
loc_8c024904:
	#data bank14.loc_8c147e3c
loc_8c024908:
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
	mov.l @(loc_8c024a88,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024a88,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024a8c,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024a90,PC),r2
	mov r13,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024a90,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024a90,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r3
	mov r13,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r3
	mov r13,r5
	mov 0x04,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r2
	mov r13,r5
	mov 0x05,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r3
	mov r13,r5
	mov 0x06,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r2
	mov r13,r5
	mov 0x07,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r3
	mov r13,r5
	mov 0x08,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r2
	mov r13,r5
	mov 0x09,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024a94,PC),r3
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
	mov.l @(loc_8c024a98,PC),r3
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
	mov.l @(loc_8c024a98,PC),r3
	mova @(loc_8c024a9c,PC),r0
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
	mova @(loc_8c024aa0,PC),r0
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
loc_8c024a88:
	#data loc_8c025a04
loc_8c024a8c:
	#data loc_8c025bd8
loc_8c024a90:
	#data loc_8c025d44
loc_8c024a94:
	#data loc_8c025ece
loc_8c024a98:
	#data work.GameGlobalPointer
loc_8c024a9c:
	#data 0x3f666666
loc_8c024aa0:
	#data 0x3e99999a

;----------------------------------------------
loc_8c024aa4:
	mov 0x78,r0
	fmov fr5,@(r0,r14)
	mova @(loc_8c024ba8,PC),r0
	fmov @r0,fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c024bac,PC),r0
	fmov @r0,fr3

loc_8c024ab4:
	mov.w @(loc_8c024ba2,PC),r0
	bra loc_8c024aca
	fmov fr3,@(r0,r14)

loc_8c024aba:
	mova @(loc_8c024bb0,PC),r0
	fmov @r0,fr4
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c024ba2,PC),r0

loc_8c024ac8:
	fmov fr4,@(r0,r14)

loc_8c024aca:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c024ad0:
	mov r4,r3
	mov.l @(loc_8c024bb4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c024ae2:
	mova @(loc_8c024bb8,PC),r0
	fmov @r0,fr5
	mova @(loc_8c024bbc,PC),r0
	fmov @r0,fr4
	mov 0x0A,r6
	mov.w @(loc_8c024ba4,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c024b3c
	mov 0x01,r5
	mov.w @(loc_8c024ba6,PC),r0
	fldi0 fr3
	mov.b r5,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.b @(0x4,r4),r0
	mov.l @(loc_8c024bc0,PC),r5
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c024b24
	mova @(loc_8c024bc4,PC),r0
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
	mova @(loc_8c024bc8,PC),r0
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
	mov.w @(loc_8c024ba6,PC),r0
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
	mova @(loc_8c024bcc,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c024ba4,PC),r0
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
loc_8c024ba2:
	#data 0x0080
loc_8c024ba4:
	#data 0x00d8
loc_8c024ba6:
	#data 0x012c
	#align4
loc_8c024ba8:
	#data 0x3f19999a
loc_8c024bac:
	#data 0x3e19999a
loc_8c024bb0:
	#data 0x3f000000
loc_8c024bb4:
	#data bank14.loc_8c147e48
loc_8c024bb8:
	#data 0xbeab020c
loc_8c024bbc:
	#data 0x3eab020c
loc_8c024bc0:
	#data bank14.loc_8c147e3c
loc_8c024bc4:
	#data 0x4055c28f
loc_8c024bc8:
	#data 0xc055c28f
loc_8c024bcc:
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
	mov.w @(loc_8c024ca2,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8c024c0a
	mov.w @(loc_8c024ca4,PC),r0
	fldi0 fr3
	mov.b r5,@(r0,r4)
	bra loc_8c024c20
	mov 0x74,r0

loc_8c024c0a:
	mov.w @(loc_8c024ca4,PC),r0
	mov 0x01,r2
	fldi1 fr3
	mov.b r2,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8c024cac,PC),r1
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
	mov.l @(loc_8c024cb0,PC),r3
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c024c3e
	mov r0,r14
	bra loc_8c024ddc
	nop

loc_8c024c3e:
	mov.w @(loc_8c024ca4,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c024cb8,PC),r1
	mov 0x01,r4
	mov.l @(loc_8c024cb4,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.w @(loc_8c024ca6,PC),r0
	mov.l @r3,r2
	fldi0 fr3
	mov.l @(0x3C,r2),r3
	mov.w @(loc_8c024ca8,PC),r2
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	add 0x0C,r0
	mov.l r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(loc_8c024cbc,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mova @(loc_8c024cc0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov r4,r0
	nop
	mov.l @(loc_8c024cc4,PC),r4
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
	mov.l @(loc_8c024cc8,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	bra loc_8c024cdc
	nop

;###############################################
loc_8c024ca2:
	#data 0x00d8
loc_8c024ca4:
	#data 0x012c
loc_8c024ca6:
	#data 0x0084
loc_8c024ca8:
	#data 0x0421
	#align4
loc_8c024cac:
	#data bank14.loc_8c147e3c
loc_8c024cb0:
	#data bank04.loc_8c044f12
loc_8c024cb4:
	#data loc_8c024a1e
loc_8c024cb8:
	#data 0x8c26a944
loc_8c024cbc:
	#data bank14.loc_8c147e54
loc_8c024cc0:
	#data 0xc1500000
loc_8c024cc4:
	#data work.GameGlobalPointer
loc_8c024cc8:
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
	mov.l @(loc_8c024e00,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024e00,PC),r2
	mov 0x01,r6
	mov r6,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024e00,PC),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r2
	mov 0x01,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r3
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r2
	mov 0x01,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r3
	mov 0x01,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r2
	mov 0x01,r5
	mov 0x04,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r3
	mov 0x01,r5
	mov 0x05,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r2
	mov 0x01,r5
	mov 0x06,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r3
	mov 0x01,r5
	mov 0x07,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r2
	mov 0x01,r5
	mov 0x08,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c024e04,PC),r3
	mov 0x01,r5
	mov 0x09,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c024e04,PC),r2
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
	mov.w @(loc_8c024dfe,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c024dfe:
	#data  0x00d8
	#align4
loc_8c024e00:
	#data loc_8c025d44
loc_8c024e04:
	#data loc_8c025ece

;----------------------------------------------
loc_8c024e08:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c024ed4,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c024e5e
	mov r0,r4
	mov.w @(loc_8c024eca,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c024ed8,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x21,r3
	add 0xA0,r0
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mova @(loc_8c024edc,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	mov.l @(loc_8c024ee0,PC),r0
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c024ee4,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x1E,r4)
	mov.l @r15,r3
	mov.w @(loc_8c024ece,PC),r0
	mov.l r3,@(0x18,r4)
	mov.w @(loc_8c024ecc,PC),r3
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
	mov.w @(loc_8c024eca,PC),r0
	mov 0x03,r1
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.l @(loc_8c024ee8,PC),r2
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
	mov.l @(loc_8c024eec,PC),r3
	shll2 r4
	mov.l @r3,r0
	mov.l @r0,r0
	mov.l @(r0,r4),r2
	mov.w @(loc_8c024ed0,PC),r0
	mov.l r2,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r1
	fmov @(r0,r1),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c024eca:
	#data 0x012c
loc_8c024ecc:
	#data 0x0088
loc_8c024ece:
	#data 0x00c8
loc_8c024ed0:
	#data 0x0084
	#align4
loc_8c024ed4:
	#data bank04.loc_8c044f12
loc_8c024ed8:
	#data loc_8c024e66
loc_8c024edc:
	#data 0xc1100000
loc_8c024ee0:
	#data bank14.loc_8c147e58
loc_8c024ee4:
	#data 0x3e051eb8
loc_8c024ee8:
	#data work.GameGlobalPointer
loc_8c024eec:
	#data 0x8c26a944

;----------------------------------------------
loc_8c024ef0:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c024fe0,PC),r3
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
	mov.w @(loc_8c024fd4,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c024fe4,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov 0x21,r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0x4,r15),r2
	mov.l @(loc_8c024fe8,PC),r0
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x34,r0
	mov.w @(loc_8c024fd6,PC),r2
	fmov fr3,@(r0,r4)
	mova @(loc_8c024fec,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c024ff0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @r15,r3
	mov.w @(loc_8c024fd8,PC),r0
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
	mov.w @(loc_8c024fd4,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(loc_8c024fda,PC),r6
	mov.b @(r0,r2),r3
	mov.l @(loc_8c024ff8,PC),r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c024ff4,PC),r3
	mov.l @r3,r4
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf.s loc_8c024f9a
	mov.l @r2,r5
	mov.b @(0x6,r4),r0
	mov.l @(loc_8c024ffc,PC),r3
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
	mov.l @(loc_8c025000,PC),r3
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
	mov.w @(loc_8c024fdc,PC),r0
	mov.l r1,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c024fd4:
	#data 0x012c
loc_8c024fd6:
	#data 0x0088
loc_8c024fd8:
	#data 0x00c8
loc_8c024fda:
	#data 0x00c4
loc_8c024fdc:
	#data 0x0084
	#align4
loc_8c024fe0:
	#data bank04.loc_8c044f12
loc_8c024fe4:
	#data loc_8c024f5c
loc_8c024fe8:
	#data bank14.loc_8c147e64
loc_8c024fec:
	#data 0x3eae147b
loc_8c024ff0:
	#data 0x3d8f5c00
loc_8c024ff4:
	#data work.GameGlobalPointer
loc_8c024ff8:
	#data 0x8c26a944
loc_8c024ffc:
	#data 0x8c212cf0
loc_8c025000:
	#data 0x8c2897e4

;----------------------------------------------
loc_8c025004:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c025118,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025060
	mov r0,r4
	mov.l @(loc_8c025120,PC),r1
	mov.l @(loc_8c02511c,PC),r3
	mov.w @(loc_8c025108,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.l @r2,r3
	mov.w @(loc_8c02510a,PC),r2
	mov.l @(r0,r3),r0
	add r4,r2
	mov.w @(loc_8c02510c,PC),r3
	mov.l r0,@r2
	mov.w @(loc_8c02510e,PC),r0
	mov.w @(loc_8c025110,PC),r2
	mov.l r3,@(r0,r4)
	mova @(loc_8c025124,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c025128,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c02512c,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @r15,r3
	mov.w @(loc_8c025112,PC),r0
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
	mov.l @(loc_8c025130,PC),r13
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
	mov.l @(loc_8c025134,PC),r0
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
	mov.l @(loc_8c025138,PC),r0
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c0250f2

loc_8c0250e4:
	mov.w @(loc_8c025114,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	bra loc_8c0250f8
	mov.b r2,@(r0,r14)

loc_8c0250f2:
	mov.w @(loc_8c025114,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c025108:
	#data 0x00d0
loc_8c02510a:
	#data 0x0084
loc_8c02510c:
	#data 0x0421
loc_8c02510e:
	#data 0x00cc
loc_8c025110:
	#data 0x0088
loc_8c025112:
	#data 0x00c8
loc_8c025114:
	#data 0x012c
	#align4
loc_8c025118:
	#data bank04.loc_8c044f12
loc_8c02511c:
	#data loc_8c025068
loc_8c025120:
	#data 0x8c26a944
loc_8c025124:
	#data 0xc0f00000
loc_8c025128:
	#data 0xbf75c28f
loc_8c02512c:
	#data 0x3d8f5c29
loc_8c025130:
	#data work.GameGlobalPointer
loc_8c025134:
	#data 0x8c212cf3
loc_8c025138:
	#data 0x8c2897e7

;----------------------------------------------
loc_8c02513c:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(loc_8c025288,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02518c
	mov r0,r4
	mov.w @(loc_8c02527e,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025290,PC),r1
	mov.l @(loc_8c02528c,PC),r2
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
	mova @(loc_8c025294,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	mov.w @(loc_8c025280,PC),r3
	fmov fr3,@(r0,r4)
	mova @(loc_8c025298,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	add r14,r3
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c025282,PC),r0
	mov.l r14,@(0x14,r4)
	mov.l r3,@(r0,r4)
	mov.l r14,@(0x18,r4)

loc_8c02518c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c025192:
	mov.l @(loc_8c02529c,PC),r3
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
	mov.l @(loc_8c0252a0,PC),r2
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
	mov.l @(loc_8c0252a4,PC),r2
	shll2 r0
	extu.b r5,r5
	shll r0

loc_8c0251d8:
	add r0,r2
	mov.l @(0x18,r4),r3
	mov.w @(loc_8c02527e,PC),r0
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
	mov.l @(loc_8c025290,PC),r3
	exts.b r5,r5
	mov.w @(loc_8c025284,PC),r0
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
	mov.l @(loc_8c025288,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025276
	mov r0,r4
	mov.w @(loc_8c02527e,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025290,PC),r1
	mov.l @(loc_8c0252a8,PC),r2
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
	mova @(loc_8c0252ac,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	add 0x67,r2
	fmov fr3,@(r0,r4)
	mova @(loc_8c0252b0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c0252b4,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x4,r15),r3
	mov.w @(loc_8c025282,PC),r0
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
loc_8c02527e:
	#data 0x012c
loc_8c025280:
	#data 0x0088
loc_8c025282:
	#data 0x00c8
loc_8c025284:
	#data 0x00e8
	#align4

loc_8c025288:
	#data bank04.loc_8c044f12
loc_8c02528c:
	#data loc_8c025192
loc_8c025290:
	#data 0x8c26a944
loc_8c025294:
	#data 0xbfcccccd
loc_8c025298:
	#data 0xbdb851ec
loc_8c02529c:
	#data work.GameGlobalPointer
loc_8c0252a0:
	#data 0x8c212ced
loc_8c0252a4:
	#data 0x8c2897e1
loc_8c0252a8:
	#data loc_8c0252b8
loc_8c0252ac:
	#data 0x40fa3d71
loc_8c0252b0:
	#data 0x3eae147b
loc_8c0252b4:
	#data 0x3d8f5c29

;----------------------------------------------
loc_8c0252b8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(loc_8c0253ba,PC),r0
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
	mov.l @(loc_8c0253c4,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025318
	mov r0,r4
	mov.w @(loc_8c0253bc,PC),r0
	mov 0x21,r3
	mov.l @(loc_8c0253cc,PC),r1
	mov.l @(loc_8c0253c8,PC),r2
	mov.l r3,@(r0,r4)
	add 0xF4,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xC4,r0
	mov.l r3,@(r0,r4)
	mov.w @(loc_8c0253be,PC),r3
	mov.l @r15,r2
	mov.w @(loc_8c0253c0,PC),r0
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
	mov.l @(loc_8c0253d0,PC),r2
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
	mov.l @(loc_8c0253d4,PC),r0
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
	mov.l @(loc_8c0253d8,PC),r0
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
	mov.w @(loc_8c0253ba,PC),r0
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	bra loc_8c025386
	mov.b r2,@(r0,r14)

loc_8c025380:
	mov.w @(loc_8c0253ba,PC),r0
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
	mov.l @(loc_8c0253c4,PC),r3
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
	mova @(loc_8c0253dc,PC),r0
	bra loc_8c0253e4
	fmov @r0,fr3

;###############################################
loc_8c0253ba:
	#data 0x012c
loc_8c0253bc:
	#data 0x00cc
loc_8c0253be:
	#data 0x0088
loc_8c0253c0:
	#data 0x00c8
	#align4
loc_8c0253c4:
	#data bank04.loc_8c044f12
loc_8c0253c8:
	#data loc_8c025320
loc_8c0253cc:
	#data 0x8c26a944
loc_8c0253d0:
	#data work.GameGlobalPointer
loc_8c0253d4:
	#data 0x8c212cf4
loc_8c0253d8:
	#data 0x8c2897e8
loc_8c0253dc:
	#data 0xc12e6666

;----------------------------------------------
loc_8c0253e0:
	mova @(loc_8c025500,PC),r0
	fmov @r0,fr3

loc_8c0253e4:
	mov 0x34,r0
	mov.l @(loc_8c02550c,PC),r2
	fmov fr3,@(r0,r4)
	mova @(loc_8c025504,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov 0x01,r3
	fmov fr3,@(r0,r4)
	mova @(loc_8c025508,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c0254f6,PC),r0
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
	mov.w @(loc_8c0254f8,PC),r3
	mov.l @r15,r2
	mov.w @(loc_8c0254fa,PC),r0
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
	mov.l @(loc_8c025514,PC),r2
	mov.b @(r0,r14),r3
	mov 0x0A,r6
	mov.l @(loc_8c025510,PC),r4
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
	mov.l @(loc_8c025518,PC),r3
	jsr @r3
	nop
	mov r0,r5
	tst r5,r5
	bt loc_8c025472
	mov.w @(loc_8c0254f6,PC),r0
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
	mov.w @(loc_8c0254f6,PC),r0
	mov 0x00,r3
	bra loc_8c0254a4
	mov.b r3,@(r0,r14)

loc_8c02547a:
	mov.b @(0x6,r5),r0
	mov.l @(loc_8c02551c,PC),r3
	mov r0,r1
	mov.w @(0x1E,r14),r0
	add r0,r1
	add 0x01,r1
	jsr @r3
	mov r6,r0
	mov r0,r5
	mov.w @(loc_8c0254f6,PC),r0
	mov.l @(0x18,r14),r1
	shll2 r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.l @r4,r1
	mov.l @r1,r3
	add r3,r5

loc_8c02549c:
	add 0x68,r5
	mov.w @(loc_8c0254fc,PC),r0
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
	mov.l @(loc_8c025520,PC),r3
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
	mov.w @(loc_8c0254f6,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025524,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(loc_8c0254fe,PC),r3
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
	mova @(loc_8c025528,PC),r0
	bra loc_8c025530
	fmov @r0,fr3

;###############################################
loc_8c0254f6:
	#data 0x012c
loc_8c0254f8:
	#data 0x0088
loc_8c0254fa:
	#data 0x00c8
loc_8c0254fc:
	#data 0x0084
loc_8c0254fe:
	#data 0x0431
	#align4
loc_8c025500:
	#data 0xc121999a
loc_8c025504:
	#data 0xbf0a3d71
loc_8c025508:
	#data 0x3e051eb8
loc_8c02550c:
	#data loc_8c025428
loc_8c025510:
	#data 0x8c26a944
loc_8c025514:
	#data work.GameGlobalPointer
loc_8c025518:
	#data bank12.loc_8c129128
loc_8c02551c:
	#data bank12.loc_8c1292d4
loc_8c025520:
	#data bank04.loc_8c044f12
loc_8c025524:
	#data loc_8c025574
loc_8c025528:
	#data 0x40cdc28f

;----------------------------------------------
loc_8c02552c:
	mova @(loc_8c02562c,PC),r0
	fmov @r0,fr3

loc_8c025530:
	mov 0x34,r0
	mov.l @(loc_8c025638,PC),r2
	fmov fr3,@(r0,r14)
	mova @(loc_8c025630,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(loc_8c02563c,PC),r3
	mov r14,r1
	fmov fr3,@(r0,r14)
	mova @(loc_8c025634,PC),r0
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
	mov.w @(loc_8c025626,PC),r2
	mov.l @(0x4,r15),r3
	mov.w @(loc_8c025628,PC),r0
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
	mov.l @(loc_8c025648,PC),r13
	mov.b @(r0,r14),r3
	mov 0x0A,r6
	mov.l @(loc_8c025640,PC),r2
	mov.l @(loc_8c025644,PC),r7
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
	mov.l @(loc_8c02564c,PC),r3
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
	mov.l @(loc_8c02564c,PC),r3
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
	mov.w @(loc_8c02562a,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025650,PC),r1
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
	mov.w @(loc_8c02562a,PC),r0
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
	mov.l @(loc_8c025654,PC),r3
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
loc_8c025626:
	#data 0x0088
loc_8c025628:
	#data 0x00c8
loc_8c02562a:
	#data 0x012c
	#align4
loc_8c02562c:
	#data 0x40e33333
loc_8c025630:
	#data 0x3ec28f5c
loc_8c025634:
	#data 0x3d8f5c29
loc_8c025638:
	#data bank13.loc_8c132ac4
loc_8c02563c:
	#data bank12.loc_8c1294c8
loc_8c025640:
	#data work.GameGlobalPointer
loc_8c025644:
	#data 0x8c212cec
loc_8c025648:
	#data 0x8c2897e0
loc_8c02564c:
	#data bank12.loc_8c129128
loc_8c025650:
	#data 0x8c26a944
loc_8c025654:
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
	mov.l @(loc_8c025788,PC),r3
	shll2 r1
	shll r1
	add r13,r1
	mov.b @(0x8,r1),r0
	extu.b r0,r1
	jsr @r3
	mov r6,r0

loc_8c025676:
	mov r0,r5
	mov.w @(loc_8c02577e,PC),r0
	mov.l @(0x18,r14),r2
	shll2 r5
	mov.l @(loc_8c02578c,PC),r1
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov.l @r1,r2
	mov.l @r2,r3
	add r3,r5

loc_8c02568a:
	mov.w @(loc_8c025780,PC),r0
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
	mov.l @(loc_8c025790,PC),r3
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
	mov.w @(loc_8c02577e,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025794,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(loc_8c025782,PC),r3
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
	mova @(loc_8c025798,PC),r0
	bra loc_8c0256e8
	fmov @r0,fr3

loc_8c0256e4:
	mova @(loc_8c02579c,PC),r0
	fmov @r0,fr3

loc_8c0256e8:
	mov 0x34,r0
	mov.l @(loc_8c0257a8,PC),r2
	fmov fr3,@(r0,r14)
	mova @(loc_8c0257a0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(loc_8c0257ac,PC),r3
	mov r14,r1
	fmov fr3,@(r0,r14)
	mova @(loc_8c0257a4,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	add 0x50,r1
	fmov fr3,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8c0257b0,PC),r0
	fldi1 fr4
	fmov @r0,fr6
	mova @(loc_8c0257b4,PC),r0
	fmov @r0,fr5
	bsr loc_8c02618a
	mov r14,r4
	mov.w @(loc_8c025784,PC),r3
	mov.l @(0x4,r15),r2
	mov.w @(loc_8c025786,PC),r0
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
	mov.w @(loc_8c02577e,PC),r0
	mov 0x0A,r5
	mov.l @(0x18,r14),r2
	mov.l @(loc_8c0257c0,PC),r12
	mov.b @(r0,r2),r3
	mov.l @(loc_8c02578c,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.l @(loc_8c0257b8,PC),r3
	mov.b @(r0,r14),r1
	mov.l @r3,r4
	mov.l @(loc_8c0257bc,PC),r6
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
	mov.l @(loc_8c0257c4,PC),r3
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
loc_8c02577e:
	#data 0x012c
loc_8c025780:
	#data 0x0094
loc_8c025782:
	#data 0x0431
loc_8c025784:
	#data 0x0088
loc_8c025786:
	#data 0x00c8
	#align4
loc_8c025788:
	#data bank12.loc_8c1292d4
loc_8c02578c:
	#data 0x8c26a944
loc_8c025790:
	#data bank04.loc_8c044f12
loc_8c025794:
	#data loc_8c02572c
loc_8c025798:
	#data 0x40c851ec
loc_8c02579c:
	#data 0x40db851f
loc_8c0257a0:
	#data 0xbf7d70a4
loc_8c0257a4:
	#data 0x3d8f5c29
loc_8c0257a8:
	#data bank13.loc_8c132ac4
loc_8c0257ac:
	#data bank12.loc_8c1294c8
loc_8c0257b0:
	#data 0x3f2eb852
loc_8c0257b4:
	#data 0x3ebfb15b
loc_8c0257b8:
	#data work.GameGlobalPointer
loc_8c0257bc:
	#data 0x8c212cec
loc_8c0257c0:
	#data 0x8c2897e0
loc_8c0257c4:
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
	mov.l @(loc_8c0258f0,PC),r3
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
	mov.l @(loc_8c0258f4,PC),r3
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
	mov.l @(loc_8c0258f4,PC),r3
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
	mov.w @(loc_8c0258e4,PC),r0
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
	mov.l @(loc_8c0258f8,PC),r3
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
	mov.w @(loc_8c0258e6,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c0258fc,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(loc_8c0258e8,PC),r3
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
	mova @(loc_8c025900,PC),r0
	bra loc_8c0258a0
	fmov @r0,fr3

loc_8c02589c:
	mova @(loc_8c025904,PC),r0
	fmov @r0,fr3

loc_8c0258a0:
	mov 0x34,r0
	mov.l @(loc_8c025910,PC),r2
	fmov fr3,@(r0,r14)
	mova @(loc_8c025908,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(loc_8c025914,PC),r3
	mov r14,r1
	fmov fr3,@(r0,r14)
	mova @(loc_8c02590c,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	add 0x50,r1
	fmov fr3,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8c025918,PC),r0
	fldi1 fr4
	fmov @r0,fr6
	mova @(loc_8c02591c,PC),r0
	fmov @r0,fr5
	bsr loc_8c02618a
	mov r14,r4
	mov.w @(loc_8c0258ea,PC),r3
	mov.l @(0x4,r15),r2
	mov.w @(loc_8c0258ec,PC),r0
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
loc_8c0258e4:
	#data 0x0094
loc_8c0258e6:
	#data 0x012c
loc_8c0258e8:
	#data 0x0431
loc_8c0258ea:
	#data 0x0088
loc_8c0258ec:
	#data 0x00c8
	#align4
loc_8c0258f0:
	#data bank12.loc_8c129128
loc_8c0258f4:
	#data bank12.loc_8c1292d4
loc_8c0258f8:
	#data bank04.loc_8c044f12
loc_8c0258fc:
	#data loc_8c025920
loc_8c025900:
	#data 0x41000000
loc_8c025904:
	#data 0x410a147b
loc_8c025908:
	#data 0xbf7d70a4
loc_8c02590c:
	#data 0x3d8f5c29
loc_8c025910:
	#data bank13.loc_8c132ac4
loc_8c025914:
	#data bank12.loc_8c1294c8
loc_8c025918:
	#data 0x3f2eb852
loc_8c02591c:
	#data 0x3ebfb15b

;----------------------------------------------
loc_8c025920:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	bsr loc_8c024de2
	mov r4,r14
	mov.w @(loc_8c025a46,PC),r0
	mov 0x0A,r5
	mov.l @(0x18,r14),r2
	mov.l @(loc_8c025a54,PC),r12
	mov.b @(r0,r2),r3
	mov.l @(loc_8c025a58,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.l @(loc_8c025a4c,PC),r3
	mov.b @(r0,r14),r1
	mov.l @r3,r4
	mov.l @(loc_8c025a50,PC),r6
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
	mov.l @(loc_8c025a5c,PC),r3
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
	mov.l @(loc_8c025a5c,PC),r3
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
	mov.l @(loc_8c025a60,PC),r3
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
	mov.l @(loc_8c025a60,PC),r3
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
	mov.w @(loc_8c025a48,PC),r0
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
	mov.l @(loc_8c025a64,PC),r3
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
	mov.w @(loc_8c025a46,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025a68,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(loc_8c025a4a,PC),r3
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
	mova @(loc_8c025a6c,PC),r0
	bra loc_8c025a74
	fmov @r0,fr3

;###############################################
loc_8c025a46:
	#data 0x012c
loc_8c025a48:
	#data 0x0094
loc_8c025a4a:
	#data 0x0431
	#align4
loc_8c025a4c:
	#data work.GameGlobalPointer
loc_8c025a50:
	#data 0x8c212cec
loc_8c025a54:
	#data 0x8c2897e0
loc_8c025a58:
	#data 0x8c26a944
loc_8c025a5c:
	#data bank12.loc_8c129128
loc_8c025a60:
	#data bank12.loc_8c1292d4
loc_8c025a64:
	#data bank04.loc_8c044f12
loc_8c025a68:
	#data loc_8c025ab8
loc_8c025a6c:
	#data 0x411e8f5c

;----------------------------------------------
loc_8c025a70:
	mova @(loc_8c025ba4,PC),r0
	fmov @r0,fr3

loc_8c025a74:
	mov 0x34,r0
	mov.l @(loc_8c025bb0,PC),r2
	fmov fr3,@(r0,r14)
	mova @(loc_8c025ba8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(loc_8c025bb4,PC),r3
	mov r14,r1
	fmov fr3,@(r0,r14)
	mova @(loc_8c025bac,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	add 0x50,r1
	fmov fr3,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8c025bb8,PC),r0
	fldi1 fr4
	fmov @r0,fr6
	mova @(loc_8c025bbc,PC),r0
	fmov @r0,fr5
	bsr loc_8c02618a
	mov r14,r4
	mov.w @(loc_8c025b9c,PC),r3
	mov.l @(0x4,r15),r2
	mov.w @(loc_8c025b9e,PC),r0
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
	mov.w @(loc_8c025ba0,PC),r0
	mov 0x0A,r5
	mov.l @(0x18,r14),r2
	mov.l @(loc_8c025bc8,PC),r12
	mov.b @(r0,r2),r3
	mov.l @(loc_8c025bcc,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.l @(loc_8c025bc0,PC),r3
	mov.b @(r0,r14),r1
	mov.l @r3,r4
	mov.l @(loc_8c025bc4,PC),r6
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
	mov.l @(loc_8c025bd0,PC),r3
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
	mov.l @(loc_8c025bd0,PC),r3
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
	mov.l @(loc_8c025bd4,PC),r3
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
	mov.l @(loc_8c025bd4,PC),r3
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
	mov.w @(loc_8c025ba2,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c025b9c:
	#data 0x0088
loc_8c025b9e:
	#data 0x00c8
loc_8c025ba0:
	#data 0x012c
loc_8c025ba2:
	#data 0x0094
	#align4
loc_8c025ba4:
	#data 0x4128cccd
loc_8c025ba8:
	#data 0xbf7d70a4
loc_8c025bac:
	#data 0x3d8f5c29
loc_8c025bb0:
	#data bank13.loc_8c132ac4
loc_8c025bb4:
	#data bank12.loc_8c1294c8
loc_8c025bb8:
	#data 0x3f2eb852
loc_8c025bbc:
	#data 0x3ebfb15b
loc_8c025bc0:
	#data work.GameGlobalPointer
loc_8c025bc4:
	#data 0x8c212cec
loc_8c025bc8:
	#data 0x8c2897e0
loc_8c025bcc:
	#data 0x8c26a944
loc_8c025bd0:
	#data bank12.loc_8c129128
loc_8c025bd4:
	#data bank12.loc_8c1292d4

;----------------------------------------------
loc_8c025bd8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c025d18,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025c4a
	mov r0,r14
	mov.w @(loc_8c025d0a,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025d1c,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(loc_8c025d0c,PC),r3
	fldi1 fr4
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x1E,r14)
	mova @(loc_8c025d20,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c025d24,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c025d28,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c025d2c,PC),r0
	fmov @r0,fr6
	mova @(loc_8c025d30,PC),r0
	fmov @r0,fr5
	bsr loc_8c02618a
	mov r14,r4
	mov.l @(loc_8c025d34,PC),r3
	mov.w @(loc_8c025d0e,PC),r0
	mov.l @r3,r2
	mov.l @r2,r1
	mov.l @(r0,r1),r0
	mov.w @(loc_8c025d10,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov.w @(loc_8c025d12,PC),r1
	mov.l @r15,r2
	mov.w @(loc_8c025d14,PC),r0
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
	mov.w @(loc_8c025d0a,PC),r0
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
	mov.l @(loc_8c025d18,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c025ce2
	mov r0,r14
	mov.w @(loc_8c025d0a,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025d38,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(loc_8c025d0c,PC),r3
	fldi1 fr15
	fmov fr15,fr5
	fmov fr15,fr4
	fldi0 fr6
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mova @(loc_8c025d3c,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c025d40,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c025d28,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x1E,r14)
	bsr loc_8c02618a
	mov r14,r4
	mov.l @(loc_8c025d34,PC),r3
	mov.w @(loc_8c025d16,PC),r0
	mov.l @r3,r2
	mov.l @r2,r1
	mov.l @(r0,r1),r0
	mov.w @(loc_8c025d10,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov.w @(loc_8c025d12,PC),r1
	mov.l @r15,r2
	mov.w @(loc_8c025d14,PC),r0
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
	mov.w @(loc_8c025d0a,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c025d0a:
	#data 0x012c
loc_8c025d0c:
	#data 0x0421
loc_8c025d0e:
	#data 0x00e0
loc_8c025d10:
	#data 0x0084
loc_8c025d12:
	#data 0x0088
loc_8c025d14:
	#data 0x00c8
loc_8c025d16:
	#data 0x00e4
	#align4
loc_8c025d18:
	#data bank04.loc_8c044f12
loc_8c025d1c:
	#data loc_8c025c52
loc_8c025d20:
	#data 0x410547ae
loc_8c025d24:
	#data 0xbf7d70a4
loc_8c025d28:
	#data 0x3da3d70a
loc_8c025d2c:
	#data 0x3f4eab36
loc_8c025d30:
	#data 0x3f1ebee0
loc_8c025d34:
	#data 0x8c26a944
loc_8c025d38:
	#data loc_8c025cec
loc_8c025d3c:
	#data 0x40d8a3d7
loc_8c025d40:
	#data 0x3ebd70a4

;----------------------------------------------
loc_8c025d44:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c025e30,PC),r3
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
	mov.w @(loc_8c025e26,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025e34,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(loc_8c025e28,PC),r3
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
	mova @(loc_8c025e38,PC),r0
	bra loc_8c025d94
	fmov @r0,fr3

loc_8c025d8a:
	mova @(loc_8c025e3c,PC),r0
	bra loc_8c025d94
	fmov @r0,fr3

loc_8c025d90:
	mova @(loc_8c025e40,PC),r0
	fmov @r0,fr3

loc_8c025d94:
	mov 0x34,r0
	fmov fr3,@(r0,r14)

loc_8c025d98:
	mova @(loc_8c025e44,PC),r0
	fldi1 fr15
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr15,fr5
	fmov fr3,@(r0,r14)
	mova @(loc_8c025e48,PC),r0
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
	mov.l @(loc_8c025e4c,PC),r2
	mov r14,r1
	mov.l @(loc_8c025e50,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c025e2a,PC),r3
	mov.l @(0x4,r15),r1
	mov.w @(loc_8c025e2c,PC),r0
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
	mov.l @(loc_8c025e58,PC),r3
	mov.l @(loc_8c025e54,PC),r13
	jsr @r3
	mov r4,r14
	mov.w @(loc_8c025e26,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.l @(loc_8c025e5c,PC),r2
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
	mov.l @(loc_8c025e60,PC),r3
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
loc_8c025e28:
	#data 0x0431
loc_8c025e2a:
	#data 0x0088
loc_8c025e2c:
	#data 0x00c8
	#align4
loc_8c025e30:
	#data bank04.loc_8c044f12
loc_8c025e34:
	#data loc_8c025de2
loc_8c025e38:
	#data 0xc0fdc28f
loc_8c025e3c:
	#data 0xc0e8f5c3
loc_8c025e40:
	#data 0xc0d428f6
loc_8c025e44:
	#data 0x3ec28f5c
loc_8c025e48:
	#data 0x3d8f5c29
loc_8c025e4c:
	#data bank13.loc_8c132ac4
loc_8c025e50:
	#data bank12.loc_8c1294c8
loc_8c025e54:
	#data bank13.loc_8c132a98
loc_8c025e58:
	#data loc_8c024de2
loc_8c025e5c:
	#data work.GameGlobalPointer
loc_8c025e60:
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
	mov.l @(loc_8c025f84,PC),r3
	shll2 r0
	shll r0
	add r0,r3
	extu.b r1,r1
	add r3,r1

loc_8c025e84:
	mov.b @r1,r0
	mov.w @(loc_8c025f70,PC),r1
	extu.b r0,r0
	mov.l @(loc_8c025f88,PC),r3
	add r0,r13
	mov.b @r13,r2
	extu.b r2,r2
	cmp/ge r1,r2
	bf.s loc_8c025eac
	mov.l @r3,r4
	mov.b @r13,r0
	mov.w @(loc_8c025f72,PC),r2
	extu.b r0,r0
	mov.l @r4,r3
	add r2,r0
	shll2 r0
	add r3,r0
	mov.w @(loc_8c025f74,PC),r3
	bra loc_8c025eba
	mov.l @(r0,r3),r3

loc_8c025eac:
	mov.b @r13,r2
	mov.l @r4,r0
	extu.b r2,r2
	shll2 r2
	add r0,r2
	mov.w @(loc_8c025f76,PC),r0
	mov.l @(r0,r2),r3

loc_8c025eba:
	mov.w @(loc_8c025f78,PC),r0
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
	mov.l @(loc_8c025f8c,PC),r3
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
	mov.w @(loc_8c025f7a,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c025f90,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(loc_8c025f7c,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.l @(0x4,r15),r2
	mov.l @(loc_8c025f94,PC),r0
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c025f98,PC),r0
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
	mova @(loc_8c025f9c,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	bra loc_8c025f2c
	fmov fr3,@(r0,r14)

loc_8c025f28:
	mov 0x38,r0
	fmov fr4,@(r0,r14)

loc_8c025f2c:
	mova @(loc_8c025fa0,PC),r0
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
	mova @(loc_8c025fa4,PC),r0
	fmov @r0,fr4
	bsr loc_8c02618a
	mov r14,r4
	mov.l @(loc_8c025fa8,PC),r2
	mov r14,r1
	mov.l @(loc_8c025fac,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c025f7e,PC),r3
	mov.l @(0x8,r15),r1
	mov.w @(loc_8c025f80,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c025f70:
	#data 0x00f0
loc_8c025f72:
	#data 0xff10
loc_8c025f74:
	#data 0x0094
loc_8c025f76:
	#data 0x04e8
loc_8c025f78:
	#data 0x0084
loc_8c025f7a:
	#data 0x012c
loc_8c025f7c:
	#data 0x0431
loc_8c025f7e:
	#data 0x0088
loc_8c025f80:
	#data 0x00c8
	#align4
loc_8c025f84:
	#data 0x8c2897ec
loc_8c025f88:
	#data 0x8c26a944
loc_8c025f8c:
	#data bank04.loc_8c044f12
loc_8c025f90:
	#data loc_8c025fb0
loc_8c025f94:
	#data bank14.loc_8c147e7c
loc_8c025f98:
	#data 0xbf7ae148
loc_8c025f9c:
	#data 0xbf7ae146
loc_8c025fa0:
	#data 0x3d8f5c29
loc_8c025fa4:
	#data 0x3eff9724
loc_8c025fa8:
	#data bank13.loc_8c132ac4
loc_8c025fac:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c025fb0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0260c8,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x23,r0
	mov.l @(loc_8c0260d0,PC),r5
	mov.b @(r0,r14),r3
	mov 0x08,r1
	mov.l @(loc_8c0260d4,PC),r6
	extu.b r3,r3
	mov.l @(loc_8c0260cc,PC),r2
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
	mov.w @(loc_8c0260c4,PC),r0
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
	mov.w @(loc_8c0260c4,PC),r0
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
	mov.w @(loc_8c0260c4,PC),r0
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
	mov.w @(loc_8c0260c4,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c0260a4:
	mov.l @(loc_8c0260d8,PC),r2
	add 0x25,r13
	shll2 r13
	mov.l @r2,r0
	mov.l @r0,r0
	mov.l @(r0,r13),r3
	mov.w @(loc_8c0260c6,PC),r0
	mov.l r3,@(r0,r14)
	mov 0x74,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0260c4:
	#data 0x012c
loc_8c0260c6:
	#data 0x0084
	#align4
loc_8c0260c8:
	#data loc_8c024de2
loc_8c0260cc:
	#data work.GameGlobalPointer
loc_8c0260d0:
	#data 0x8c212cec
loc_8c0260d4:
	#data 0x8c2897e0
loc_8c0260d8:
	#data 0x8c26a944

;----------------------------------------------
loc_8c0260dc:
	mov.l r14,@-r15
	mov 0x08,r2
	mov.l r13,@-r15
	cmp/ge r2,r5
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0261a0,PC),r14
	mov.l @(loc_8c026198,PC),r3
	mov.l @(loc_8c02619c,PC),r7
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c026198:
	#data work.GameGlobalPointer
loc_8c02619c:
	#data 0x8c212cec
loc_8c0261a0:
	#data 0x8c2897e0

;----------------------------------------------
loc_8c0261a4:
	mov.l r14,@-r15
	mova @(loc_8c0262b8,PC),r0
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
	mova @(loc_8c0262bc,PC),r0
	fmov @r0,fr14
	mova @(loc_8c0262c0,PC),r0
	fmov @r0,fr15
	mov.l @(loc_8c0262b4,PC),r9
	mov.w @(loc_8c0262aa,PC),r8
	mov.w @(loc_8c0262ac,PC),r10

loc_8c0261d4:
	mov.l @(loc_8c0262c4,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02623e
	mov r0,r4
	mov.w @(loc_8c0262ae,PC),r0
	mov 0x09,r1
	mov.l @(loc_8c0262cc,PC),r2
	mov.b r12,@(r0,r4)
	mov.l @(loc_8c0262c8,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov r14,r2
	shll r2
	mov.l @r0,r0
	mov.l @(r0,r10),r3
	mov.w @(loc_8c0262b0,PC),r0
	mov.l r3,@(r0,r4)
	mov r14,r3
	add r3,r2
	mov.l @(loc_8c0262d0,PC),r3
	shll2 r2
	add 0x48,r0
	mov.l r1,@(r0,r4)
	add r3,r2
	mov r4,r1
	mov.l @(loc_8c0262d4,PC),r3
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
	mov.l @(loc_8c0262d8,PC),r3
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
	mov.l @(loc_8c0262dc,PC),r3
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
	mov.w @(loc_8c0262ae,PC),r0
	mov 0x00,r3
	bra loc_8c0262a4
	mov.b r3,@(r0,r4)

loc_8c02629c:
	mov.w @(loc_8c0262ae,PC),r1
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.b r0,@r1

loc_8c0262a4:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0262aa:
	#data 0x00b4
loc_8c0262ac:
	#data 0x0090
loc_8c0262ae:
	#data 0x012c
loc_8c0262b0:
	#data 0x0084
	#align4
loc_8c0262b4:
	#data 0x0000ffff
loc_8c0262b8:
	#data 0x47800000
loc_8c0262bc:
	#data 0x43b40000
loc_8c0262c0:
	#data 0x3f000000
loc_8c0262c4:
	#data bank04.loc_8c044f12
loc_8c0262c8:
	#data loc_8c026256
loc_8c0262cc:
	#data 0x8c26a944
loc_8c0262d0:
	#data bank14.loc_8c147ea8
loc_8c0262d4:
	#data bank12.loc_8c1294c8
loc_8c0262d8:
	#data bank12.loc_8c1292d4
loc_8c0262dc:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c0262e0:
	sts.l pr,@-r15
	mov.l @(loc_8c026348,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02633a
	mov r0,r4
	mov.l @(loc_8c02634c,PC),r2
	mov 0x01,r3
	mov.w @(loc_8c026344,PC),r0
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8c026350,PC),r2
	mov.l @r2,r1
	mov.b @(0x4,r1),r0
	tst r0,r0
	bf loc_8c02630a
	bra loc_8c02630c
	mov 0x0C,r2

loc_8c02630a:
	mov 0x0D,r2

loc_8c02630c:
	mov.l @(loc_8c026354,PC),r3
	shll2 r2
	mov.l @r3,r0
	mov.l @r0,r1
	mov.w @(loc_8c026346,PC),r0
	add r1,r2
	mov r4,r1
	mov.l @r2,r3
	mov 0x11,r2
	add 0x34,r1
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c026358,PC),r2
	mov.l @(loc_8c02635c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c026360,PC),r2
	mov r4,r1
	mov.l @(loc_8c02635c,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c026344:
	#data 0x012c
loc_8c026346:
	#data 0x0084
loc_8c026348:
	#data bank04.loc_8c044f12
loc_8c02634c:
	#data loc_8c026340
loc_8c026350:
	#data work.GameGlobalPointer
loc_8c026354:
	#data 0x8c26a944
loc_8c026358:
	#data bank14.loc_8c147ec0
loc_8c02635c:
	#data bank12.loc_8c1294c8
loc_8c026360:
	#data bank14.loc_8c147ecc

;----------------------------------------------
loc_8c026364:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	shll2 r14
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c026494,PC),r12
	mov.w @(loc_8c026484,PC),r13
	mov.l @(loc_8c026490,PC),r0
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
	mov.l @(loc_8c026498,PC),r3
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
	mov.w @(loc_8c026486,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c02649c,PC),r2
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
	mov.l @(loc_8c0264a0,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @r2,r0
	mov.l @r15,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c026488,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c0264a4,PC),r3
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0264a8,PC),r2
	mov r4,r1
	mov.l @(loc_8c0264a4,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0264ac,PC),r2
	mov r4,r1
	mov.l @(loc_8c0264b0,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c02648c,PC),r0
	mov.w @(loc_8c02648a,PC),r1
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
	mov.l @(loc_8c0264b4,PC),r0
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
	mov.l @(loc_8c0264b8,PC),r3
	mov.w @(loc_8c026488,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c02654e
	nop

;###############################################
loc_8c026484:
	#data 0x00ff
loc_8c026486:
	#data 0x012c
loc_8c026488:
	#data 0x0084
loc_8c02648a:
	#data 0x0431
loc_8c02648c:
	#data 0x00cc
	#align4
loc_8c026490:
	#data bank14.loc_8c147fb0
loc_8c026494:
	#data bank14.loc_8c147fbc
loc_8c026498:
	#data bank04.loc_8c044f12
loc_8c02649c:
	#data loc_8c026432
loc_8c0264a0:
	#data 0x8c26a948
loc_8c0264a4:
	#data bank12.loc_8c1294c8
loc_8c0264a8:
	#data bank14.loc_8c147ee4
loc_8c0264ac:
	#data bank14.loc_8c147f0c
loc_8c0264b0:
	#data bank12.loc_8c1294bc
loc_8c0264b4:
	#data bank14.loc_8c148048
loc_8c0264b8:
	#data bank10.loc_8c108210

;----------------------------------------------
loc_8c0264bc:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8c0265e0,PC),r5
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
	mov.w @(loc_8c0265e2,PC),r0
	mov.l @(loc_8c0265ec,PC),r3
	mov.l @(r0,r14),r5
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(loc_8c0265f0,PC),r2
	jsr @r2
	mov.l @(0x4,r4),r4
	mov.l @(loc_8c0265fc,PC),r13
	mova @(loc_8c026600,PC),r0
	mov.l @(loc_8c0265f8,PC),r12
	mov.l @(loc_8c0265f4,PC),r11
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
	mov.w @(loc_8c0265e4,PC),r0
	mov.w @(loc_8c0265e4,PC),r1
	mov.l @(r0,r4),r0
	add r4,r1
	mov.w @(loc_8c0265e6,PC),r3
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
	mov.w @(loc_8c0265e8,PC),r3
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
	mova @(loc_8c026604,PC),r0
	mov.l @(loc_8c026614,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c026608,PC),r0
	mov.l @(loc_8c026610,PC),r3
	fmov @r0,fr2
	mova @(loc_8c02660c,PC),r0
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
	mov.l @(loc_8c026618,PC),r5
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c026620
	mov.l @r5,r4
	mov.l @(loc_8c02661c,PC),r1
	mov.b @(0x4,r4),r0
	bra loc_8c02663c
	shll2 r0

;###############################################
loc_8c0265e0:
	#data 0x03e8
loc_8c0265e2:
	#data 0x0084
loc_8c0265e4:
	#data 0x00cc
loc_8c0265e6:
	#data 0x0aab
loc_8c0265e8:
	#data 0x0168
	#align4
loc_8c0265ec:
	#data 0x8c26a948
loc_8c0265f0:
	#data bank10.loc_8c108060
loc_8c0265f4:
	#data bank10.loc_8c108192
loc_8c0265f8:
	#data bank10.loc_8c108086
loc_8c0265fc:
	#data bank10.loc_8c1081e6
loc_8c026600:
	#data 0x3a83126f
loc_8c026604:
	#data 0x3f000000
loc_8c026608:
	#data 0x47800000
loc_8c02660c:
	#data 0x43b40000
loc_8c026610:
	#data 0x0000ffff
loc_8c026614:
	#data bank11.loc_8c11e2e0
loc_8c026618:
	#data work.GameGlobalPointer
loc_8c02661c:
	#data bank14.loc_8c148010

;----------------------------------------------
loc_8c026620:
	mov.w @(0x8,r4),r0
	tst 0x80,r0
	bt loc_8c026632
	mov.l @(loc_8c026744,PC),r2
	mov r14,r1
	mov.l @(loc_8c026748,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c026632:
	mov.l @r5,r0
	mov.l @(loc_8c02674c,PC),r1
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
	mov.l @(loc_8c026754,PC),r6
	mov 0x00,r7
	extu.b r0,r0
	mov.l @(loc_8c026750,PC),r4
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
	mov.l @(loc_8c026758,PC),r0
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
	mov.l @(loc_8c026744,PC),r2
	mov r14,r1
	mov.l @(loc_8c026748,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c02675c,PC),r2
	mov r14,r1
	mov.l @(loc_8c026760,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8c026740,PC),r3
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
	mov.l @(loc_8c026774,PC),r2
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
	mova @(loc_8c026764,PC),r0
	mov.l @(loc_8c026770,PC),r3
	fmov @r0,fr2
	mova @(loc_8c026768,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(loc_8c02676c,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mov.l @r15+,r2
	mova @(loc_8c026778,PC),r0
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
loc_8c026740:
	#data 0x0168
	#align4
loc_8c026744:
	#data bank14.loc_8c147f0c
loc_8c026748:
	#data bank12.loc_8c1294bc
loc_8c02674c:
	#data bank14.loc_8c148020
loc_8c026750:
	#data 0x8c289750
loc_8c026754:
	#data bank14.loc_8c148040
loc_8c026758:
	#data bank14.loc_8c148030
loc_8c02675c:
	#data bank14.loc_8c147ef0
loc_8c026760:
	#data bank12.loc_8c1294c8
loc_8c026764:
	#data 0x47800000
loc_8c026768:
	#data 0x43b40000
loc_8c02676c:
	#data 0x3f000000
loc_8c026770:
	#data 0x0000ffff
loc_8c026774:
	#data bank11.loc_8c11e860
loc_8c026778:
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
	mov.l @(loc_8c0267d4,PC),r2
	mov r14,r1
	mov.l @(loc_8c0267d8,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	bra loc_8c0267a8
	nop

loc_8c02679c:
	mov.l @(loc_8c0267dc,PC),r2
	mov r14,r1
	mov.l @(loc_8c0267d8,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c0267a8:
	mov.l @(loc_8c0267e0,PC),r2
	mov r14,r1
	mov.l @(loc_8c0267e4,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0267d4:
	#data bank14.loc_8c147f1c
loc_8c0267d8:
	#data bank12.loc_8c1294bc
loc_8c0267dc:
	#data bank14.loc_8c147efc
loc_8c0267e0:
	#data bank14.loc_8c147ee4
loc_8c0267e4:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c0267e8:
	mov.l @(loc_8c02682c,PC),r3
	mov.l @r3,r5

loc_8c0267ec:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c026830,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02681c
	mov r0,r4
	mov.w @(loc_8c026828,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c026834,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0x4,r15),r0
	mov.l @r15,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c02682a,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c026828:
	#data 0x012c
loc_8c02682a:
	#data 0x0084
	#align4
loc_8c02682c:
	#data 0x8c26a948
loc_8c026830:
	#data bank04.loc_8c044f12
loc_8c026834:
	#data loc_8c026824

;----------------------------------------------
loc_8c026838:
	sts.l pr,@-r15
	mov.l @(loc_8c02688c,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02686e
	mov r0,r4
	mov.l @(loc_8c026894,PC),r1
	mov 0x01,r5
	mov.l @(loc_8c026890,PC),r3
	mov.w @(loc_8c026886,PC),r0
	mov.b r5,@(r0,r4)
	add 0xF8,r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c026888,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mova @(loc_8c026898,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c02686e:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c026874:
	mov.l @(loc_8c02689c,PC),r2
	mov.l @(loc_8c0268a0,PC),r1
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	rts
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c026886:
	#data 0x012c
loc_8c026888:
	#data 0x0084
	#align4
loc_8c02688c:
	#data bank04.loc_8c044f12
loc_8c026890:
	#data loc_8c026874
loc_8c026894:
	#data 0x8c26a948
loc_8c026898:
	#data 0xc14fd70a
loc_8c02689c:
	#data work.GameGlobalPointer
loc_8c0268a0:
	#data bank14.loc_8c148058

;----------------------------------------------
loc_8c0268a4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c026978,PC),r13
	mov.l @(loc_8c02697c,PC),r0
	mov.b @r13,r13
	fldi0 fr3
	extu.b r13,r13
	mov r13,r4
	shll2 r4
	mov.l @(r0,r4),r14
	mov.l @(loc_8c026980,PC),r0
	mov.l @(r0,r4),r12
	mova @(loc_8c026984,PC),r0
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
	mov.l @(loc_8c026988,PC),r3
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
	mov.l @(loc_8c02698c,PC),r3
	mov 0x01,r5
	mov.w @(loc_8c026970,PC),r0
	mov.l @(loc_8c026990,PC),r2
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r1
	mov.l @(loc_8c026994,PC),r3
	mov.l @r2,r0
	and r3,r1
	mov.l @(loc_8c026998,PC),r3
	mov.l @r0,r0
	shll2 r1
	mov.l @(r0,r1),r1
	mov.w @(loc_8c026972,PC),r0
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
	mov.w @(loc_8c026974,PC),r3
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
	mov.l @(loc_8c02699c,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c026970:
	#data 0x012c
loc_8c026972:
	#data 0x0084
	#align4
loc_8c026974:
	#data 0x0000ff00
loc_8c026978:
	#data 0x8c2897a9
loc_8c02697c:
	#data bank14.loc_8c14811c
loc_8c026980:
	#data bank14.loc_8c148290
loc_8c026984:
	#data 0xc1500000
loc_8c026988:
	#data bank04.loc_8c044f12
loc_8c02698c:
	#data loc_8c02695e
loc_8c026990:
	#data 0x8c26a948
loc_8c026994:
	#data 0xffff00ff
loc_8c026998:
	#data bank12.loc_8c1294c8
loc_8c02699c:
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
	mov.l @(loc_8c026aa8,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r13
	mov r0,r4
	mov.l @(loc_8c026aa4,PC),r0
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
	mov.w @(loc_8c026a92,PC),r1
	cmp/eq r1,r0
	bt.s loc_8c026a12
	mov 0x0C,r11
	mov.w @(loc_8c026a94,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a42
	mov.w @(loc_8c026a96,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a42
	mov.w @(loc_8c026a98,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a48
	mov.w @(loc_8c026a9a,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a56
	mov.w @(loc_8c026a9c,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a62
	mov.w @(loc_8c026a9e,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a8a
	mov.w @(loc_8c026aa0,PC),r1
	cmp/eq r1,r0
	bt loc_8c026a8a
	mov.w @(loc_8c026aa2,PC),r1
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
	mov.l @(loc_8c026aac,PC),r3
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
	mov.l @(loc_8c026ab0,PC),r2
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
	mov.l @(loc_8c026ab0,PC),r2
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
loc_8c026a92:
	#data 0x0100
loc_8c026a94:
	#data 0x0200
loc_8c026a96:
	#data 0x0700
loc_8c026a98:
	#data 0x0300
loc_8c026a9a:
	#data 0x0400
loc_8c026a9c:
	#data 0x0900
loc_8c026a9e:
	#data 0x0500
loc_8c026aa0:
	#data 0x0800
loc_8c026aa2:
	#data 0x0600
	#align4
loc_8c026aa4:
	#data bank14.loc_8c148438
loc_8c026aa8:
	#data bank14.loc_8c148318
loc_8c026aac:
	#data loc_8c026cc0
loc_8c026ab0:
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
	mov.l @(loc_8c026b14,PC),r3
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
loc_8c026b14:
	#data 0x8c2897a9

;----------------------------------------------
loc_8c026b18:
	mov.w @(loc_8c026b80,PC),r3
	mov.w @(0x1C,r14),r0
	cmp/eq r3,r0
	bt.s loc_8c026b2a
	mov 0x01,r13
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c026b40

loc_8c026b2a:
	mov.w @(loc_8c026b82,PC),r0
	mov r15,r5
	mov.l @(loc_8c026b88,PC),r3
	mov.l @(loc_8c026b8c,PC),r2
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
	mov.w @(loc_8c026b84,PC),r7
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
loc_8c026b80:
	#data 0x0100
loc_8c026b82:
	#data 0x012c
loc_8c026b84:
	#data 0x03e8
	#align4

loc_8c026b88:
	#data 0x8c2897ac
loc_8c026b8c:
	#data bank11.loc_8c1160f8

loc_8c026b90:
	#data16 {loc_8c026ba8-braf_8c026b7c-4}
	#data16 {loc_8c026bae-braf_8c026b7c-4}
	#data16 {loc_8c026bc2-braf_8c026b7c-4}
	#data16 {loc_8c026bde-braf_8c026b7c-4}
	#data16 {loc_8c026bfa-braf_8c026b7c-4}
	#data16 {loc_8c026c16-braf_8c026b7c-4}
	#data16 {loc_8c026c24-braf_8c026b7c-4}
	#data16 {loc_8c026c44-braf_8c026b7c-4}
	#data16 {loc_8c026c52-braf_8c026b7c-4}
	#data16 {loc_8c026c62-braf_8c026b7c-4}
	#data16 {loc_8c026c6e-braf_8c026b7c-4}
	#data16 {loc_8c026c7a-braf_8c026b7c-4}

;----------------------------------------------
loc_8c026ba8:
	mov r6,r1
	bra loc_8c026c58
	mov r7,r0

loc_8c026bae:
	mov.l @(loc_8c026cb0,PC),r3
	mov r6,r1
	jsr @r3
	mov r7,r0
	mov.l @(loc_8c026cb4,PC),r2
	mov r0,r1
	jsr @r2
	mov r10,r0
	bra loc_8c026c82
	nop

loc_8c026bc2:
	mov.l @(loc_8c026cb0,PC),r2
	mov r6,r1
	jsr @r2
	mov r7,r0
	mov.l @(loc_8c026cb0,PC),r3
	mov r0,r1
	jsr @r3
	mov r10,r0
	mov.l @(loc_8c026cb4,PC),r2
	mov r0,r1
	jsr @r2
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026bde:
	mov.l @(loc_8c026cb0,PC),r2
	mov r6,r1
	jsr @r2
	mov r7,r0
	mov.l @(loc_8c026cb0,PC),r3
	mov r0,r1
	jsr @r3
	mov r10,r0
	mov.l @(loc_8c026cb0,PC),r2
	mov r0,r1
	jsr @r2
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026bfa:
	mov.w @(loc_8c026cac,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x2,r15),r0
	extu.b r0,r1
	mov r5,r0
	nop
	mov.l @(loc_8c026cb4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c026c84
	mov r0,r4
	bra loc_8c026c3c
	nop

loc_8c026c16:
	mov.b @(0x2,r15),r0
	mov.l @(loc_8c026cb0,PC),r3
	extu.b r0,r1
	jsr @r3
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026c24:
	mov.w @(loc_8c026cac,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x3,r15),r0
	extu.b r0,r1
	mov r5,r0
	nop
	mov.l @(loc_8c026cb4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf.s loc_8c026c84
	mov r0,r4

loc_8c026c3c:
	mov.w @(loc_8c026cac,PC),r0
	mov 0x00,r3
	bra loc_8c026c96
	mov.b r3,@(r0,r14)

loc_8c026c44:
	mov.b @(0x3,r15),r0
	mov.l @(loc_8c026cb0,PC),r3
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
	mov.l @(loc_8c026cb4,PC),r3
	jsr @r3
	nop
	bra loc_8c026c82
	nop

loc_8c026c62:
	mov.l @(loc_8c026cb0,PC),r3
	mov r12,r1
	jsr @r3
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026c6e:
	mov.l @(loc_8c026cb4,PC),r3
	mov r11,r1
	jsr @r3
	mov r5,r0
	bra loc_8c026c82
	nop

loc_8c026c7a:
	mov.l @(loc_8c026cb0,PC),r3
	mov r11,r1
	jsr @r3
	mov r5,r0

loc_8c026c82:
	mov r0,r4

loc_8c026c84:
	mov.l @(loc_8c026cb8,PC),r2
	shll2 r4
	mov.w @(loc_8c026cae,PC),r0
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
	mov.l @(loc_8c026cbc,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c026cac:
	#data 0x012c
loc_8c026cae:
	#data 0x0084
	#align4
loc_8c026cb0:
	#data bank12.loc_8c1292d4
loc_8c026cb4:
	#data bank12.loc_8c129128
loc_8c026cb8:
	#data 0x8c26a948
loc_8c026cbc:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c026cc0:
	sts.l pr,@-r15
	bsr loc_8c026cde
	mov 0x03,r5
	tst r0,r0
	bt.s loc_8c026cd8
	mov r0,r5
	mov.l @(loc_8c026ddc,PC),r2
	mov r5,r1
	mov.l @(loc_8c026de0,PC),r3
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
	mov.l @(loc_8c026de4,PC),r3
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
	mov.l @(loc_8c026de8,PC),r2
	mov 0x01,r3
	mov.w @(loc_8c026dd0,PC),r0
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov r14,r3
	mov.l r2,@(0x10,r4)
	mov r14,r2
	shll r2
	add r3,r2
	mov.l @(loc_8c026dec,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c026de0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c026df0,PC),r0
	mov r14,r3
	shll2 r3
	mov.l @r0,r1
	mov.w @(loc_8c026dd2,PC),r0
	mov.l @r1,r2
	mov r4,r1
	add 0x50,r1
	add r2,r3
	mov.w @(loc_8c026dd6,PC),r2
	mov.l @(r0,r3),r3
	mov.w @(loc_8c026dd4,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c026df4,PC),r2
	mov.l @(loc_8c026de0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c026df8,PC),r2
	mov r4,r1
	mov.l @(loc_8c026dfc,PC),r3
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
	mov.l @(loc_8c026e00,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c026d80:
	mov.l @(loc_8c026e04,PC),r7
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
	mov.w @(loc_8c026dd0,PC),r0
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
	mov.w @(loc_8c026dd8,PC),r2
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
loc_8c026dd0:
	#data 0x012c
loc_8c026dd2:
	#data 0x010c
loc_8c026dd4:
	#data 0x0084
loc_8c026dd6:
	#data 0x0431
loc_8c026dd8:
	#data 0x00ff
	#align4
loc_8c026ddc:
	#data bank14.loc_8c14845c
loc_8c026de0:
	#data bank12.loc_8c1294c8
loc_8c026de4:
	#data bank04.loc_8c044f12
loc_8c026de8:
	#data loc_8c026d6c
loc_8c026dec:
	#data bank14.loc_8c148478
loc_8c026df0:
	#data 0x8c26a948
loc_8c026df4:
	#data bank14.loc_8c148450
loc_8c026df8:
	#data bank14.loc_8c148468
loc_8c026dfc:
	#data bank12.loc_8c1294bc
loc_8c026e00:
	#data bank14.loc_8c1484a8
loc_8c026e04:
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
	mov.w @(loc_8c026efa,PC),r0
	bra loc_8c026e24
	mov.b r6,@(r0,r4)

loc_8c026e1e:
	mov.l @(loc_8c026f00,PC),r2
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
	mov.l @(loc_8c026f04,PC),r12
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
	mov.w @(loc_8c026efa,PC),r0
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
	mov.w @(loc_8c026efc,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c026e7a
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c026e7a:
	mova @(loc_8c026f08,PC),r0
	mov.l @(loc_8c026f18,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c026f0c,PC),r0
	mov.l @(loc_8c026f14,PC),r3
	fmov @r0,fr2
	mova @(loc_8c026f10,PC),r0
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
	mova @(loc_8c026f1c,PC),r0
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
	mova @(loc_8c026f20,PC),r0
	bra loc_8c026ed6
	fmov @r0,fr3

loc_8c026ed2:
	mova @(loc_8c026f24,PC),r0
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
	mov.w @(loc_8c026efe,PC),r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c026f28
	bra loc_8c026f74
	mov 0x02,r0

;###############################################
loc_8c026efa:
	#data 0x012c
loc_8c026efc:
	#data 0x0168
loc_8c026efe:
	#data 0x00ff
	#align4
loc_8c026f00:
	#data bank04.loc_8c0450c0
loc_8c026f04:
	#data 0x8c289750
loc_8c026f08:
	#data 0x3f000000
loc_8c026f0c:
	#data 0x47800000
loc_8c026f10:
	#data 0x43b40000
loc_8c026f14:
	#data 0x0000ffff
loc_8c026f18:
	#data bank11.loc_8c11e2e0
loc_8c026f1c:
	#data 0xc141999a
loc_8c026f20:
	#data 0x3f666666
loc_8c026f24:
	#data 0xbf666666

;----------------------------------------------
loc_8c026f28:
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c026f8c
	mov.b @(0x4,r14),r0
	mov r14,r1
	mov.l @(loc_8c02702c,PC),r2
	add 0x74,r1
	mov.l @(loc_8c027030,PC),r3
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
	mov.w @(loc_8c027028,PC),r0
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
	mov.w @(loc_8c027028,PC),r0
	bra loc_8c026f8c
	mov.b r13,@(r0,r14)

loc_8c026f7c:
	lds.l @r15+,pr
	mov.l @(loc_8c027034,PC),r2
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
	mov.l @(loc_8c027038,PC),r6
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
	mov.w @(loc_8c027028,PC),r0
	mov.b r5,@(r0,r14)

loc_8c026fb8:
	mova @(loc_8c02703c,PC),r0
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
	mov.w @(loc_8c02702a,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c027040
	mov 0x03,r0
	bra loc_8c02708a
	mov.b r0,@(0x4,r14)

;##############################################
loc_8c027028:
	#data 0x012c
loc_8c02702a:
	#data 0x00ff
	#align4
loc_8c02702c:
	#data bank14.loc_8c148468
loc_8c027030:
	#data bank12.loc_8c1294bc
loc_8c027034:
	#data bank04.loc_8c0450c0
loc_8c027038:
	#data 0x8c289750
loc_8c02703c:
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
	mov.w @(loc_8c027090,PC),r0
	bra loc_8c02708a
	mov.b r5,@(r0,r14)

loc_8c02707e:
	mov.l @(loc_8c027094,PC),r2
	mov.b r5,@r4
	mov r14,r4
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_8c02708a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c027090:
	#data 0x012c
	#align4
loc_8c027094:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c027098:
	mov.w @(loc_8c0271a6,PC),r0
	mov 0x01,r3
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0270a0:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8c0271a6,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0270bc
	mov 0x00,r5
	mov.w @(0x1C,r4),r0
	cmp/eq 0x3C,r0
	bf loc_8c0270ce
	mov.w @(loc_8c0271a6,PC),r0
	bra loc_8c0270c8
	mov.b r5,@(r0,r4)

loc_8c0270bc:
	mov.w @(0x1C,r4),r0
	cmp/eq 0x1E,r0
	bf loc_8c0270ce
	mov.w @(loc_8c0271a6,PC),r0
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
	mov.l @(loc_8c0271ac,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0270f2
	mov r0,r4
	mov.w @(loc_8c0271a6,PC),r0
	mov 0x01,r5
	mov.l @(loc_8c0271b0,PC),r3
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
	mova @(loc_8c0271b4,PC),r0
	mov.l @(loc_8c0271c0,PC),r3
	fmov @r0,fr14
	mova @(loc_8c0271bc,PC),r0
	fmov @r0,fr15
	mov 0x03,r12
	mov.l @(loc_8c0271b8,PC),r13
	mov r4,r11
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c0271c4,PC),r0
	mov r11,r4
	mov.l @(0x4,r15),r2
	shll2 r4
	mov.l @(r0,r4),r10
	shll r2
	mov.l @(loc_8c0271cc,PC),r3
	mov.l @(loc_8c0271c8,PC),r0
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
	mov.w @(loc_8c0271a8,PC),r0
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
	mov.w @(loc_8c0271a8,PC),r0
	mov.l r3,@(r0,r4)
	mov r11,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c0271d4
	mova @(loc_8c0271d0,PC),r0
	bra loc_8c0271d8
	fmov @r0,fr4

;##############################################
loc_8c0271a6:
	#data 0x012c
loc_8c0271a8:
	#data 0x0084
	#align4
loc_8c0271ac:
	#data bank04.loc_8c044f12
loc_8c0271b0:
	#data loc_8c027098
loc_8c0271b4:
	#data 0xc0c00000
loc_8c0271b8:
	#data 0x8c26a94c
loc_8c0271bc:
	#data 0xc1500000
loc_8c0271c0:
	#data bank04.loc_8c044e56
loc_8c0271c4:
	#data bank14.loc_8c1485f8
loc_8c0271c8:
	#data bank14.loc_8c148620
loc_8c0271cc:
	#data bank14.loc_8c148648
loc_8c0271d0:
	#data 0x3fdd70a4

;----------------------------------------------
loc_8c0271d4:
	mova @(loc_8c027264,PC),r0
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
	mov.w @(loc_8c027260,PC),r0
	mov.l r2,@(r0,r4)
	mov r11,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c02720e
	mova @(loc_8c027268,PC),r0
	bra loc_8c027212
	fmov @r0,fr4

loc_8c02720e:
	mova @(loc_8c02726c,PC),r0
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
	mova @(loc_8c027270,PC),r0
	mov.l @(loc_8c027274,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c027260:
	#data 0x0084
	#align4
loc_8c027264:
	#data 0x409dd2f2
loc_8c027268:
	#data 0x40233333
loc_8c02726c:
	#data 0x40b81062
loc_8c027270:
	#data 0x3dcccccd
loc_8c027274:
	#data loc_8c0270a0

;==============================================
loc_8c027278:
	sts.l pr,@-r15
	mov.l @(loc_8c0272cc,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0272bc
	mov r0,r4
	mov.l @(loc_8c0272d4,PC),r1
	mov 0x01,r5
	mov.l @(loc_8c0272d0,PC),r3
	mov.w @(loc_8c0272c6,PC),r0
	fldi0 fr4
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(loc_8c0272c8,PC),r0
	mov.l @r2,r3
	mov.l @r3,r3
	mov.l r3,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	fmov fr4,@(r0,r4)
	mov.w @(loc_8c0272ca,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0272c6:
	#data 0x012c
loc_8c0272c8:
	#data 0x0084
loc_8c0272ca:
	#data 0x00cc
	#align4
loc_8c0272cc:
	#data bank04.loc_8c044f12
loc_8c0272d0:
	#data loc_8c0272c2
loc_8c0272d4:
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
	mov.l @(loc_8c0273c8,PC),r12
	mov 0x01,r4
	mov.l @(loc_8c0273cc,PC),r14
	mov 0x00,r5
	mov.l r4,@r12
	jsr @r14
	mov.l @(0x8,r15),r4
	mov r0,r14
	tst r14,r14
	bt loc_8c027332
	mov.l @(loc_8c0273d0,PC),r13
	mov r15,r5
	jsr @r13
	mov r14,r4
	mov.l @r15,r5
	mov 0xF5,r3
	mov.w @(loc_8c0273c6,PC),r4
	mov.l @(loc_8c0273d4,PC),r13
	mov.l @(0x4,r15),r6
	add r4,r5
	shad r3,r5
	jsr @r13
	mov r14,r4
	mov.l @(loc_8c0273d8,PC),r11
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
	mov.l @(loc_8c0273dc,PC),r14
	jsr @r14
	nop
	mov.l @(loc_8c0273e0,PC),r14
	jsr @r14
	nop
	mov.l @(loc_8c0273e8,PC),r14
	mov 0x02,r4
	mov.l @(loc_8c0273e4,PC),r5
	jsr @r14
	mov.l r4,@r5
	mov.l @(loc_8c0273ec,PC),r14
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
;File_Load_0:
loc_8c027366:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l r5,@(0x8,r15)
	bsr loc_8c027452
	mov.l r6,@(0x4,r15)
	mov.l @r15,r7
	mov.l @(loc_8c0273f0,PC),r0
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
;File_Load_1:
loc_8c02738a:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l r5,@(0x8,r15)
	bsr loc_8c027452
	mov.l r6,@(0x4,r15)
	mov.l @r15,r7
	mov.l @(loc_8c0273f0,PC),r0
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
;File_Load_2:
loc_8c0273ae:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0273f0,PC),r0
	mov r4,r7
	mov.l r4,@r15
	shll2 r4
	bsr loc_8c0272d8
	mov.l @(r0,r4),r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0273c6:
	#data 0x07ff
loc_8c0273c8:
	#data 0x8c1cbe04
loc_8c0273cc:
	#data bank17.loc_8c1771e2
loc_8c0273d0:
	#data bank17.loc_8c176938
loc_8c0273d4:
	#data bank17.loc_8c176a2a
loc_8c0273d8:
	#data bank17.loc_8c176900
loc_8c0273dc:
	#data bank03.loc_8c031bba
loc_8c0273e0:
	#data bank11.loc_8c11c0c0
loc_8c0273e4:
	#data 0x8c212bf8
loc_8c0273e8:
	#data bank01.loc_8c010326
loc_8c0273ec:
	#data bank01.loc_8c01033c
loc_8c0273f0:
	#data filepnt.loc_8c148688;File Table

;==============================================
loc_8c0273f4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c027584,PC),r14
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r14,r0
	cmp/eq 0xFF,r0
	bt.s loc_8c027444
	mov r0,r4
	mov.l @(loc_8c027588,PC),r12
	jsr @r12
	nop
	mov r0,r4
	tst r4,r4
	bt loc_8c027444
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c027444
	mov.l @(loc_8c027590,PC),r11
	mov 0x00,r13
	mov.l @(loc_8c02758c,PC),r10

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
	mov.l @(loc_8c027584,PC),r14
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r14,r0
	cmp/eq 0xFF,r0
	bt.s loc_8c0274a2
	mov r0,r4
	mov.l @(loc_8c027588,PC),r12
	jsr @r12
	nop
	mov r0,r4
	tst r4,r4
	bt loc_8c0274a2
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c0274a2
	mov.l @(loc_8c027590,PC),r11
	mov 0x00,r13
	mov.l @(loc_8c02758c,PC),r10

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
	mov.l @(loc_8c027594,PC),r4
	bsr loc_8c027526
	nop
	tst r0,r0
	bf loc_8c027520
	mov.l @(loc_8c027598,PC),r4
	bsr loc_8c0275f6
	nop
	tst r0,r0
	bf loc_8c027520
	mov.l @(loc_8c02759c,PC),r14
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
	mov.l @(loc_8c0275a4,PC),r1
	mov.l @(loc_8c0275a0,PC),r4
	mov.b @r1,r3
	mov.b @r4,r2
	or r3,r2
	mov.b r2,@r4
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0274f2:
	mov.l @(loc_8c027598,PC),r4 ;stage id
	mov 0x1A,r0
	mov.b @(r0,r4),r3 ;stageid loc+1a
	mov 0x1B,r0
	mov.b @(r0,r4),r2 ;stageid loc+1b
	cmp/eq r2,r3
	bf loc_8c027520

loc_8c027500:
	mov.l @(loc_8c027594,PC),r4
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
	mov.l @(loc_8c0275a8,PC),r4
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
	mov.l @(loc_8c0275ac,PC),r3
	jsr @r3
	mov r4,r14
	cmp/pl r0
	bt loc_8c0275ca
	mov.l @(loc_8c0275b0,PC),r3
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
	mov.l @(loc_8c0275b4,PC),r3
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
	mov.l @(loc_8c0275b8,PC),r3
	jsr @r3
	mov.l @r14,r4
	bra loc_8c0275d2
	nop

;###############################################
	#align4
loc_8c027584:
	#data 0x8c1f8ac4
loc_8c027588:
	#data bank17.loc_8c174bc2
loc_8c02758c:
	#data bank17.loc_8c174dac
loc_8c027590:
	#data 0x00200000
loc_8c027594:
	#data 0x8c1f8e44
loc_8c027598:
	#data 0x8c1f8e54
loc_8c02759c:
	#data 0x8c1f8e8c
loc_8c0275a0:
	#data 0x8c1f978c
loc_8c0275a4:
	#data 0x8c1f978d
loc_8c0275a8:
	#data 0x8c1f8e74
loc_8c0275ac:
	#data bank12.loc_8c1254f0
loc_8c0275b0:
	#data 0x8c1f8e4d
loc_8c0275b4:
	#data 0x8c1f92ac
loc_8c0275b8:
	#data bank12.loc_8c125760

;----------------------------------------------
loc_8c0275bc:
	mov.l @(loc_8c0276bc,PC),r3
	mov.l @r14,r5
	mov.w @(loc_8c0276b8,PC),r6
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
	mov.l @(loc_8c0276c0,PC),r10
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
	mov.l @(loc_8c0276c8,PC),r2 ;load stage id loc
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x1A,r0
	mov.b @(r0,r14),r12
	mov.l @(loc_8c0276c4,PC),r3
	extu.b r12,r12
	shll2 r12
	shll r12
	cmp/eq r2,r14
	add r3,r12
	bt loc_8c02766a
	mov.b @(r0,r14),r12
	mov.l @(loc_8c0276cc,PC),r3
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
	mov.l @(loc_8c0276d4,PC),r0
	shll2 r5
	mov.l @(loc_8c0276d0,PC),r6
	mov.l @(r0,r5),r5
	mov.w @(0x2,r12),r0
	extu.w r0,r4
	mov.l @(loc_8c0276d4,PC),r0
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
loc_8c0276b8:
	#data 0x4000
	#align4
loc_8c0276bc:
	#data bank12.loc_8c125390
loc_8c0276c0:
	#data bank17.loc_8c176900
loc_8c0276c4:
	#data 0x8c1f8eac
loc_8c0276c8:
	#data 0x8c1f8e54
loc_8c0276cc:
	#data 0x8c1f938c
loc_8c0276d0:
	#data 0x00150000
loc_8c0276d4:
	#data bank14.loc_8c1491ac

;----------------------------------------------
;Have to load file
loc_8c0276d8:
	mov.l @(0x8,r14),r4
	mov 0x00,r5
	mov.l @(loc_8c0277d8,PC),r3
	mov.l @(loc_8c0277d4,PC),r0
	shll2 r4
	jsr @r3
	mov.l @(r0,r4),r4
	tst r0,r0
	bt.s loc_8c0276fe
	mov.l r0,@r14
	mov.l @(loc_8c0277dc,PC),r2
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
	mov.w @(loc_8c0277d0,PC),r3
	add r3,r2
	shad r1,r2
	mov.l r2,@(0x10,r14)

loc_8c027710:
	mov.l @(loc_8c0277e0,PC),r3
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
	mov.l @(loc_8c0277e4,PC),r3
	jsr @r3
	mov.l @r14,r4
	mov.l @(loc_8c0277e8,PC),r2
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
	mov.l @(loc_8c0277ec,PC),r0
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
loc_8c0277d0:
	#data 0x07ff
	#align4
loc_8c0277d4:
	#data filepnt.loc_8c148688;File Table
loc_8c0277d8:
	#data bank17.loc_8c1771e2
loc_8c0277dc:
	#data bank17.loc_8c176938
loc_8c0277e0:
	#data bank17.loc_8c176b90
loc_8c0277e4:
	#data bank17.loc_8c176eb0
loc_8c0277e8:
	#data bank14.loc_8c1491a8
loc_8c0277ec:
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
	mov.l @(loc_8c0278f4,PC),r2
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
	mov.l @(loc_8c0278f8,PC),r2
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
	mov.l @(loc_8c0278fc,PC),r2
	jsr @r2
	nop
	mov.w @(loc_8c0278f2,PC),r4
	neg r0,r0
	mov.l @(loc_8c027900,PC),r3
	add r0,r4
	mov.l @(loc_8c027904,PC),r2
	mov.l r4,@r3
	mov r4,r1
	mov.l @(loc_8c027908,PC),r3
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
	mov.l @(loc_8c02790c,PC),r2
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0278f2:
	#data 0x3a98
	#align4
loc_8c0278f4:
	#data 0x8c26a963
loc_8c0278f8:
	#data 0x8c1f932c
loc_8c0278fc:
	#data bank11.loc_8c11d430
loc_8c027900:
	#data 0x8c1f9790
loc_8c027904:
	#data 0x8c1f8e3c
loc_8c027908:
	#data bank12.loc_8c1291dc
loc_8c02790c:
	#data bank12.loc_8c129668

;==============================================
loc_8c027910:
	mov.l @(loc_8c027a20,PC),r6
	mov 0x00,r4
	mov.l @(loc_8c027a1c,PC),r3
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
	mov.l @(loc_8c027a24,PC),r6
	mov 0x04,r5

loc_8c02792c:
	dt r5
	mov.l r4,@r6
	bf.s loc_8c02792c
	add 0x04,r6
	mov.l @(loc_8c027a28,PC),r6
	mov 0x06,r5

loc_8c027938:
	dt r5
	mov.l r4,@r6
	bf.s loc_8c027938
	add 0x04,r6
	mov.w @(loc_8c027a1a,PC),r5
	mov.l @(loc_8c027a2c,PC),r6

loc_8c027944:
	mov.l r4,@r6
	add 0x04,r6
	dt r5
	mov.l r4,@r6
	bf.s loc_8c027944
	add 0x04,r6
	mov.l @(loc_8c027a30,PC),r6
	mov 0x10,r5

loc_8c027954:
	mov.l r4,@r6
	add 0x04,r6
	dt r5
	mov.l r4,@r6
	bf.s loc_8c027954
	add 0x04,r6
	mov.l @(loc_8c027a34,PC),r5
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
	mov.l @(loc_8c027a38,PC),r2
	mov 0x00,r5
	jmp @r2
	mov r5,r4

;==============================================
loc_8c02797c:
	mov.l @(loc_8c027a3c,PC),r5
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
	mov.w @(loc_8c027a1a,PC),r5
	mov.l @(loc_8c027a40,PC),r6

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
	mov.l @(loc_8c027a20,PC),r4
	mov 0x1A,r0
	mov.b @(r0,r4),r3
	mov 0x1B,r0
	mov.b @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c0279da
	mov.l @(loc_8c027a3c,PC),r4
	mov 0x1A,r0
	mov.b @(r0,r4),r3
	mov 0x1B,r0
	mov.b @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c0279da
	mov.l @(loc_8c027a24,PC),r4
	mov.b @(0xA,r4),r0
	mov r0,r3
	mov.b @(0xB,r4),r0
	cmp/eq r0,r3
	bf loc_8c0279da
	mov.l @(loc_8c027a28,PC),r4
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
	mov.l @(loc_8c027a20,PC),r14 ;8c1f8e54
	mov 0x7F,r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x1B,r0
	mov.b @(r0,r14),r7
	mov.l @(loc_8c027a2c,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c027a1a:
	#data 0x0080
	#align4
loc_8c027a1c:
	#data 0x8c1f8e40
loc_8c027a20:
	#data 0x8c1f8e54
loc_8c027a24:
	#data 0x8c1f8e44
loc_8c027a28:
	#data 0x8c1f8e74
loc_8c027a2c:
	#data 0x8c1f8eac
loc_8c027a30:
	#data 0x8c1f92ac
loc_8c027a34:
	#data 0x8c1f932c
loc_8c027a38:
	#data bank17.loc_8c17726a
loc_8c027a3c:
	#data 0x8c1f8e8c
loc_8c027a40:
	#data 0x8c1f938c

;==============================================
loc_8c027a44:
	mov.l r14,@-r15
	mov 0x1C,r0
	mov.l @(loc_8c027b38,PC),r14
	mov 0x7F,r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x1B,r0
	mov.b @(r0,r14),r7
	mov.l @(loc_8c027b3c,PC),r3
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
	mov.l @(loc_8c027b40,PC),r1
	mov.l @(loc_8c027b44,PC),r3
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
	mov.l @(loc_8c027b48,PC),r14
	mov.l @(loc_8c027b4c,PC),r2
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
	mov.l @(loc_8c027b50,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c027aea
	mov.l @(loc_8c027b54,PC),r1
	jsr @r1
	nop

loc_8c027aea:
	mov.l @(loc_8c027b38,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c027af8
	mov.l @(loc_8c027b54,PC),r1
	jsr @r1
	nop

loc_8c027af8:
	bsr loc_8c027910
	nop
	bra loc_8c02797c
	lds.l @r15+,pr

;----------------------------------------------
loc_8c027b00:
	mov.l @(loc_8c027b58,PC),r2
	mov.w @(loc_8c027b36,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c027b2a
	mov.l @(loc_8c027b38,PC),r2
	mov 0x00,r1
	mov.l @(loc_8c027b60,PC),r3
	mov.l @(loc_8c027b5c,PC),r0
	mov.b r1,@r0
	mov.b r1,@r3
	mov.l @r2,r4
	tst r4,r4
	bt loc_8c027b26
	mov.l @(loc_8c027b54,PC),r1
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
	mov.l @(loc_8c027b60,PC),r3
	rts
	mov.b r4,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c027b36:
	#data 0x0084
	#align4
loc_8c027b38:
	#data 0x8c1f8e8c
loc_8c027b3c:
	#data 0x8c1f938c
loc_8c027b40:
	#data 0x8c1f8e44
loc_8c027b44:
	#data 0x8c1f92ac
loc_8c027b48:
	#data 0x8c1f8e74
loc_8c027b4c:
	#data 0x8c1f932c
loc_8c027b50:
	#data 0x8c1f8e54
loc_8c027b54:
	#data bank17.loc_8c176900
loc_8c027b58:
	#data work.GameGlobalPointer
loc_8c027b5c:
	#data 0x8c1f978d
loc_8c027b60:
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
	mov.l @(loc_8c027bb8,PC),r3
	mov 0x01,r13
	mov.l @(loc_8c027bbc,PC),r2
	mov 0x02,r9
	mov.b @r3,r0
	mov.l @(loc_8c027bb4,PC),r11
	mov.l @(loc_8c027bb0,PC),r8
	mov.w @(loc_8c027baa,PC),r10
	mov r11,r12
	mov.w @(loc_8c027bac,PC),r14
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
	mova @(loc_8c027bc2,PC),r0
	mov.w @(r0,r1),r0

braf_8c027ba6:
	braf r0
	nop

;###############################################
loc_8c027baa:
	#data 0x05a4
loc_8c027bac:
	#data 0x0b48
	#align4
loc_8c027bb0:
	#data 0x0000ffff
loc_8c027bb4:
	#data 0x8c268340
loc_8c027bb8:
	#data 0x8c26a95c
loc_8c027bbc:
	#data 0x8c1f978d

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;loc_8c027bc0:
	#data16 {loc_8c027bf2-braf_8c027ba6-4} ; 0x0048

loc_8c027bc2:
	#data16 {loc_8c027c60-braf_8c027ba6-4} ; 0x00b6
	#data16 {loc_8c027c64-braf_8c027ba6-4} ; 0x00ba
	#data16 {loc_8c027c6c-braf_8c027ba6-4} ; 0x00c2
	#data16 {loc_8c027d2c-braf_8c027ba6-4} ; 0x0182
	#data16 {loc_8c027d62-braf_8c027ba6-4} ; 0x01b8
	#data16 {loc_8c027d8e-braf_8c027ba6-4} ; 0x01e4
	#data16 {loc_8c027da2-braf_8c027ba6-4} ; 0x01f8
	#data16 {loc_8c027e0c-braf_8c027ba6-4} ; 0x0262
	#data16 {loc_8c027e32-braf_8c027ba6-4} ; 0x0288
	#data16 {loc_8c027e46-braf_8c027ba6-4} ; 0x029c
	#data16 {loc_8c027e5e-braf_8c027ba6-4} ; 0x02b4
	#data16 {loc_8c027e10-braf_8c027ba6-4} ; 0x0266
	#data16 {loc_8c027ec4-braf_8c027ba6-4} ; 0x031a
	#data16 {loc_8c027ec8-braf_8c027ba6-4} ; 0x031e
	#data16 {loc_8c027f5a-braf_8c027ba6-4} ; 0x03b0
	#data16 {loc_8c027f5a-braf_8c027ba6-4} ; 0x03b0
	#data16 {loc_8c027f8c-braf_8c027ba6-4} ; 0x03e2
	#data16 {loc_8c027fa4-braf_8c027ba6-4} ; 0x03fa
	#data16 {loc_8c02804c-braf_8c027ba6-4} ; 0x04a2
	#data16 {loc_8c027fc2-braf_8c027ba6-4} ; 0x0418
	#data16 {loc_8c028068-braf_8c027ba6-4} ; 0x04be
	#data16 {loc_8c027fe8-braf_8c027ba6-4} ; 0x043e
	#data16 {loc_8c0280bc-braf_8c027ba6-4} ; 0x0512
	#data16 {loc_8c027f74-braf_8c027ba6-4} ; 0x03ca

;----------------------------------------------
loc_8c027bf2:
	bsr loc_8c027910
	nop
	mov.w @(loc_8c027ce4,PC),r5
	mov.l @(loc_8c027cf8,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027ce6,PC),r5
	mov.l @(loc_8c027cfc,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027ce8,PC),r5
	mov.l @(loc_8c027d00,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027cea,PC),r5
	mov.l @(loc_8c027d04,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027cec,PC),r5
	mov.l @(loc_8c027d08,PC),r6
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
	mov.w @(loc_8c027cee,PC),r5
	mov.l @(loc_8c027d0c,PC),r6
	bra loc_8c027e42
	nop

;==============================================
loc_8c027c6c:
	bra loc_8c027d22
	mov 0x00,r14

;==============================================
loc_8c027c70:
	mov.l @(loc_8c027d10,PC),r3
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
	mov.l @(loc_8c027d14,PC),r4
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
	mov.w @(loc_8c027cf0,PC),r3
	extu.b r2,r2
	mov.w @(loc_8c027cf2,PC),r0
	mulu.w r3,r2
	sts macl,r2
	add r11,r2
	mov.l r2,@r15
	mov.b @(r0,r2),r2
	mov.b @(r0,r12),r1
	cmp/eq r2,r1
	bf loc_8c027d18
	mov.w @(loc_8c027cf4,PC),r0
	mov.l @r15,r5
	mov.b @(r0,r12),r6
	mov.w @(loc_8c027cf4,PC),r0
	extu.b r6,r6
	mov.b @(r0,r5),r5
	extu.b r5,r5
	bsr loc_8c0279e4
	mov r8,r4
	bra loc_8c027d20
	nop

;###############################################
loc_8c027ce4:
	#data 0x0297
loc_8c027ce6:
	#data 0x0296
loc_8c027ce8:
	#data 0x0293
loc_8c027cea:
	#data 0x0292
loc_8c027cec:
	#data 0x026e
loc_8c027cee:
	#data 0x026f
loc_8c027cf0:
	#data 0x05a4
loc_8c027cf2:
	#data 0x052c
loc_8c027cf4:
	#data 0x055c
	#align4
loc_8c027cf8:
	#data 0x0cc00000
loc_8c027cfc:
	#data 0x0cc49000
loc_8c027d00:
	#data 0x0cd6f000
loc_8c027d04:
	#data 0x0cd8d000
loc_8c027d08:
	#data 0x0ced0000
loc_8c027d0c:
	#data 0x0cda4000
loc_8c027d10:
	#data 0x8c1f978c
loc_8c027d14:
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
	mov.l @(loc_8c027de8,PC),r0
	extu.b r5,r5
	mov.l @(loc_8c027de4,PC),r6
	shll2 r5
	mov.l @(r0,r5),r5
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027dcc,PC),r5
	mov.l @(loc_8c027dec,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027dce,PC),r5
	mov.l @(loc_8c027df0,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027dd0,PC),r12
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
	mov.w @(loc_8c027dd2,PC),r5
	mov.l @(loc_8c027de4,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027dd4,PC),r5
	mov.l @(loc_8c027df4,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027dd0,PC),r12
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
	mov.w @(loc_8c027dd6,PC),r5
	mov.l @(loc_8c027de4,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027dd8,PC),r5
	mov.l @(loc_8c027df8,PC),r6
	bra loc_8c027e1c
	nop

;==============================================
loc_8c027da2:
	bsr loc_8c027910
	nop
	mov.w @(loc_8c027dda,PC),r5
	mov.l @(loc_8c027de4,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027ddc,PC),r5
	mov.l @(loc_8c027dfc,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027dde,PC),r5
	mov.l @(loc_8c027e00,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027de0,PC),r5
	mov.l @(loc_8c027e04,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.l @(loc_8c027e08,PC),r6
	bra loc_8c027e42
	mov 0x7B,r5

;###############################################
loc_8c027dcc:
	#data 0x026e
loc_8c027dce:
	#data 0x026f
loc_8c027dd0:
	#data 0x21d8
loc_8c027dd2:
	#data 0x029f
loc_8c027dd4:
	#data 0x029e
loc_8c027dd6:
	#data 0x02a3
loc_8c027dd8:
	#data 0x02a2
loc_8c027dda:
	#data 0x02a1
loc_8c027ddc:
	#data 0x02a0
loc_8c027dde:
	#data 0x02ab
loc_8c027de0:
	#data 0x02ac
	#align4
loc_8c027de4:
	#data 0x0cc00000
loc_8c027de8:
	#data bank14.loc_8c14cf98
loc_8c027dec:
	#data 0x0ced0000
loc_8c027df0:
	#data 0x0cda0000
loc_8c027df4:
	#data 0x0cd00000
loc_8c027df8:
	#data 0x0cc40000
loc_8c027dfc:
	#data 0x0ccb7000
loc_8c027e00:
	#data 0x0c420000
loc_8c027e04:
	#data 0x0c520000
loc_8c027e08:
	#data 0x0ccde000

;----------------------------------------------
loc_8c027e0c:
	bsr loc_8c027910
	nop

loc_8c027e10:
	mov.w @(loc_8c027efc,PC),r5
	mov.l @(loc_8c027f0c,PC),r6
	bsr loc_8c0279e4
	mov 0x00,r4
	mov.w @(loc_8c027efe,PC),r5
	mov.l @(loc_8c027f10,PC),r6

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
	mov.l @(loc_8c027f14,PC),r6 ;0cea0000
	extu.b r0,r0
	and r0,r5
	mov.l @(loc_8c027f18,PC),r0
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
	mov.l @(loc_8c027f20,PC),r0
	mov.l @(loc_8c027f1c,PC),r2
	mov.l @r0,r1
	mov.w @(loc_8c027f00,PC),r0
	mov.b @r2,r3
	mov.b @(r0,r1),r1
	extu.b r3,r3
	tst r1,r3
	bt loc_8c027e78
	bra loc_8c02812e
	nop

loc_8c027e78:
	mov.l @(loc_8c027f20,PC),r3
	mov.w @(loc_8c027f00,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf.s loc_8c027e88
	mov 0x00,r4
	mov r13,r4

loc_8c027e88:
	mul.l r10,r4
	mov.w @(loc_8c027f02,PC),r3
	sts macl,r13
	add r11,r13
	add r3,r11
	cmp/hs r11,r13
	bf loc_8c027e9a
	bra loc_8c02812e
	nop

loc_8c027e9a:
	mov.l @(loc_8c027f24,PC),r10

loc_8c027e9c:
	mov r13,r12
	bsr loc_8c028158
	mov r13,r4
	mov.w @(loc_8c027f04,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r10),r6
	mov.w @(loc_8c027f06,PC),r0
	mov.b @(r0,r12),r5
	mov.l @(loc_8c027f28,PC),r0
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
	mov.w @(loc_8c027f02,PC),r3
	sts macl,r11
	add r12,r11
	add r3,r12
	cmp/hs r12,r11
	bf loc_8c027edc
	bra loc_8c02812e
	nop

loc_8c027edc:
	mov.l @(loc_8c027f30,PC),r10
	mov.l @(loc_8c027f2c,PC),r9

loc_8c027ee0:
	mov.l @(loc_8c027f20,PC),r2
	mov.w @(loc_8c027f08,PC),r0
	mov.l @r2,r3
	mov.l @(loc_8c027f34,PC),r1
	mov.l @(r0,r3),r0
	cmp/eq r1,r0
	bf.s loc_8c027f38
	mov r11,r13
	mov.w @(loc_8c027f04,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	shll2 r0
	bra loc_8c027f42
	mov.l @(r0,r9),r6

;###############################################
loc_8c027efc:
	#data 0x0096
loc_8c027efe:
	#data 0x0294
loc_8c027f00:
	#data 0x0084
loc_8c027f02:
	#data 0x21d8
loc_8c027f04:
	#data 0x055c
loc_8c027f06:
	#data 0x052c
loc_8c027f08:
	#data 0x0094
	#align4
loc_8c027f0c:
	#data 0x0cc00000
loc_8c027f10:
	#data 0x0cd85000
loc_8c027f14:
	#data 0x0cea0000
loc_8c027f18:
	#data bank14.loc_8c14cfdc
loc_8c027f1c:
	#data 0x8c1f978c
loc_8c027f20:
	#data work.GameGlobalPointer
loc_8c027f24:
	#data bank14.loc_8c1491f4
loc_8c027f28:
	#data bank13.loc_8c135484
loc_8c027f2c:
	#data bank14.loc_8c1491dc
loc_8c027f30:
	#data bank14.loc_8c1491c4
loc_8c027f34:
	#data 0x0c420000

;----------------------------------------------
loc_8c027f38:
	mov.w @(loc_8c02800c,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r10),r6

loc_8c027f42:
	mov.w @(0xC8,PC),r0
	mov.b @(r0,r13),r5
	mov.l @(loc_8c028018,PC),r0
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
	mov.l @(loc_8c02801c,PC),r2
	mov.l @(loc_8c028020,PC),r1
	mov.b r13,@r2
	mov.w @(loc_8c028012,PC),r2
	mov.l @r1,r3
	mov.l @(loc_8c028024,PC),r0
	add r3,r2
	mov.l @r2,r3
	cmp/eq r0,r3
	bt loc_8c027f9e
	bra loc_8c02812e
	nop

loc_8c027f8c:
	mov.l @(loc_8c028020,PC),r0
	mov.l @r0,r1
	mov.w @(0x80,PC),r0
	mov.b @(r0,r1),r3
	tst r13,r3
	bt loc_8c027f9e
	mov.l @(loc_8c02801c,PC),r3
	bra loc_8c02812e
	mov.b r13,@r3

loc_8c027f9e:
	mov.l @(loc_8c02801c,PC),r1
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

loc_8c027fc2:
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
	mov.w @(loc_8c02800c,PC),r0
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
	mov.w @(loc_8c02800c,PC),r0
	mov.b @(r0,r13),r6
	extu.b r6,r6
	bra loc_8c0280e2
	mov.b @(r0,r12),r5

;############################################### 
loc_8c02800c:
	#data 0x055c
loc_8c02800e:
	#data 0x052c
loc_8c028010:
	#data 0x21d8
loc_8c028012:
	#data 0x0094
loc_8c028014:
	#data 0x008c
loc_8c028016:
	#data 0x1690
	#align4

loc_8c028018:
	#data bank13.loc_8c135484
loc_8c02801c:
	#data 0x8c1f978d
loc_8c028020:
	#data work.GameGlobalPointer
loc_8c028024:
	#data 0x0c420000

;----------------------------------------------
loc_8c028028:
	mov r12,r3
	mov.w @(loc_8c028142,PC),r0
	add r14,r3
	mov.b @(r0,r3),r3
	mov.b @(r0,r13),r1
	cmp/eq r3,r1
	bf loc_8c028118
	mov r12,r5
	mov.w @(loc_8c028144,PC),r0
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
	mov.w @(loc_8c028142,PC),r1
	mov.w @(loc_8c028146,PC),r14
	add r10,r3
	mov.w @(loc_8c028142,PC),r0
	add r3,r1
	add r12,r14
	mov.b @r1,r1
	mov.b @(r0,r14),r0
	cmp/eq r1,r0
	bf loc_8c0280a6
	mov r12,r5
	mov.w @(loc_8c028144,PC),r0
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

;==============================================
loc_8c0280bc:
	tst r9,r5
	bt loc_8c02812e
	mov r12,r3
	mov.w @(loc_8c028142,PC),r1
	mov.w @(loc_8c028148,PC),r13
	add r10,r3
	mov.w @(loc_8c028142,PC),r0
	add r3,r1
	add r12,r13
	mov.b @r1,r1
	mov.b @(r0,r13),r0
	cmp/eq r1,r0
	bf loc_8c0280ec
	mov.w @(loc_8c028144,PC),r0
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
	mov.w @(loc_8c028142,PC),r0
	mov.b @(r0,r13),r1
	mov.w @(loc_8c02814a,PC),r0
	mov.b @(r0,r12),r3
	cmp/eq r3,r1
	bf loc_8c028118
	mov.w @(loc_8c028144,PC),r0
	mov.b @(r0,r13),r6
	mov.w @(loc_8c02814c,PC),r0
	extu.b r6,r6
	mov.b @(r0,r12),r5
	extu.b r5,r5
	bsr loc_8c0279e4
	mov r8,r4

loc_8c028108:
	mov.l @(loc_8c028154,PC),r0
	mov.l @(loc_8c028150,PC),r3
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
loc_8c028142:
	#data 0x052c
loc_8c028144:
	#data 0x055c
loc_8c028146:
	#data 0x10ec
loc_8c028148:
	#data 0x1c34
loc_8c02814a:
	#data 0x1618
loc_8c02814c:
	#data 0x1648
	#align4
loc_8c028150:
	#data 0x8c1f978c
loc_8c028154:
	#data 0x8c1f978d

;----------------------------------------------
loc_8c028158:
	mov.w @(loc_8c028270,PC),r0
	mov r4,r6
	mov r4,r5
	mov.w @(loc_8c028274,PC),r3
	mov.l r4,@-r15
	mov 0x00,r4
	mov.b @(r0,r6),r6
	mov.l @(loc_8c02827c,PC),r0
	extu.b r6,r6
	shll2 r6
	mov.l @(r0,r6),r6
	mov.w @(loc_8c028272,PC),r0
	mov.b @(r0,r5),r5
	add r3,r5
	bra loc_8c0279e4
	add 0x04,r15

loc_8c028178:
	mov.w @(loc_8c028270,PC),r0
	mov r4,r6
	mov r4,r5
	mov.w @(loc_8c028274,PC),r3
	mov.l r4,@-r15
	mov 0x00,r4
	mov.b @(r0,r6),r6
	mov.l @(loc_8c02827c,PC),r0
	extu.b r6,r6
	shll2 r6
	mov.l @(r0,r6),r6
	mov.w @(loc_8c028272,PC),r0
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
	mov.l @(loc_8c028280,PC),r11
	mov 0x00,r6
	mov.w @(loc_8c028276,PC),r13
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
	mov.w @(loc_8c028272,PC),r0
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
	mov.l @(loc_8c028288,PC),r9
	mov r6,r14
	mov.l @(loc_8c028284,PC),r8

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
	mov.w @(loc_8c028272,PC),r1
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
	mov.l @(loc_8c02828c,PC),r3
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
	mov.w @(loc_8c028278,PC),r4

loc_8c028240:
	mov.l @(loc_8c028290,PC),r2
	rts
	mov.l r4,@r2

;----------------------------------------------
loc_8c028246:
	mov.w @(loc_8c028276,PC),r5
	mov 0x06,r6
	mov.w @(loc_8c02827a,PC),r7
	cmp/ge r6,r4
	mul.l r5,r4
	mov.l @(loc_8c028280,PC),r3
	sts macl,r5
	bt.s loc_8c028264
	add r3,r5

loc_8c028258:
	mov.w @(loc_8c028270,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c028270:
	#data 0x055c
loc_8c028272:
	#data 0x052c
loc_8c028274:
	#data 0x00d1
loc_8c028276:
	#data 0x05a4
loc_8c028278:
	#data 0x0400
loc_8c02827a:
	#data 0x0b48
	#align4
loc_8c02827c:
	#data bank13.loc_8c135574
loc_8c028280:
	#data 0x8c268340
loc_8c028284:
	#data bank13.loc_8c138c54
loc_8c028288:
	#data bank14.loc_8c149220
loc_8c02828c:
	#data bank04.loc_8c042d4e
loc_8c028290:
	#data 0x8c1f8e3c

;==============================================
loc_8c028294:
	mov.l r14,@-r15
	mov 0x0D,r5
	sts.l pr,@-r15
	mov.l @(loc_8c0283c4,PC),r3
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0282e4
	mov r0,r14
	mov.w @(loc_8c0283b8,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c0283cc,PC),r1
	mov.l @(loc_8c0283c8,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.w @(loc_8c0283ba,PC),r0
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
	mov.w @(loc_8c0283be,PC),r0
	mov.w @(loc_8c0283bc,PC),r3
	mov.l r3,@(r0,r14)
	add 0x08,r0
	mov.l r2,@(r0,r14)
	add 0xB0,r0
	lds.l @r15+,pr
	mov.l @(loc_8c0283d0,PC),r3
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8c0282e4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;Training Mode BG movement
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
	mov.l @(loc_8c0283d4,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf.s loc_8c02830e
	mov r4,r14
	mov.l @(loc_8c0283d8,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c028398
	nop

loc_8c02830e:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8c0283c0,PC),r5
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
	mov.l @(loc_8c0283cc,PC),r3
	mov.w @(loc_8c0283ba,PC),r0
	mov.l @r3,r4
	mov.l @(loc_8c0283dc,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x8,r2),r4
	mov.l @(loc_8c0283e8,PC),r13
	mova @(loc_8c0283ec,PC),r0
	mov.l @(loc_8c0283e4,PC),r12 ;loc_8c1081e6
	mov.l @(loc_8c0283e0,PC),r11
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
	jsr @r12; loc_8c1081e6 texture movement write
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
	mova @(loc_8c0283f0,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x1E,r0
	rts
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0283b8:
	#data 0x012c
loc_8c0283ba:
	#data 0x0084
loc_8c0283bc:
	#data 0x0801
loc_8c0283be:
	#data 0x00cc
loc_8c0283c0:
	#data 0x03e8
	#align4
loc_8c0283c4:
	#data bank04.loc_8c044f26
loc_8c0283c8:
	#data loc_8c0282ea
loc_8c0283cc:
	#data 0x8c26a904
loc_8c0283d0:
	#data bank10.loc_8c108210
loc_8c0283d4:
	#data 0x8c212ce8
loc_8c0283d8:
	#data bank04.loc_8c0450c0
loc_8c0283dc:
	#data bank10.loc_8c108060
loc_8c0283e0:
	#data bank10.loc_8c108086
loc_8c0283e4:
	#data bank10.loc_8c1081e6
loc_8c0283e8:
	#data bank10.loc_8c108192
loc_8c0283ec:
	#data 0x3a83126f
loc_8c0283f0:
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
	mov.l @(loc_8c028550,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028496
	mov r0,r4
	mov.w @(loc_8c028548,PC),r0
	mov 0x01,r3
	fldi0 fr4
	mov r4,r1
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(loc_8c028554,PC),r2
	add 0x50,r1
	mov.l @(loc_8c02855c,PC),r3
	mov.l r2,@(0x10,r4)
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.l @(loc_8c028558,PC),r2
	fmov fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02854a,PC),r0
	mov 0x31,r1
	mov.l @(loc_8c028560,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c028564,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c02854c,PC),r0
	mov.l @(loc_8c028568,PC),r1
	mov.l r1,@(r0,r4)

loc_8c028496:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c02849c:
	sts.l pr,@-r15
	mov.l @(loc_8c028550,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028512
	mov r0,r4
	mov.w @(loc_8c028548,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c028570,PC),r5
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(loc_8c02856c,PC),r2
	mov.l r2,@(0x10,r4)
	mov.b @(0x1,r5),r0
	mov.l @(loc_8c028574,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c02855c,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c028578,PC),r1
	mov.b @(0x1,r5),r0
	mov.b @(r0,r1),r2
	mov r4,r1
	mov.l @(loc_8c028558,PC),r0
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c02855c,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02854a,PC),r0
	mov 0x31,r1
	mov.l @(loc_8c028560,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c028564,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c02857c,PC),r0
	mov.l @r0,r1
	mov.w @(loc_8c02854e,PC),r0
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
	mov.l @(loc_8c028580,PC),r3
	mov.b @r3,r0
	cmp/eq 0x02,r0
	bt loc_8c028526
	mov.l @(loc_8c028584,PC),r2
	jmp @r2
	nop

loc_8c028526:
	rts
	nop

;==============================================
loc_8c02852a:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c028570,PC),r4
	mov 0x1C,r0
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	cmp/eq 0x02,r0
	bt loc_8c028588
	lds.l @r15+,pr
	mov.l @(loc_8c028584,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

;###############################################
loc_8c028548:
	#data 0x012c
loc_8c02854a:
	#data 0x00cc
loc_8c02854c:
	#data 0x00d4
loc_8c02854e:
	#data 0x0084
	#align4
loc_8c028550:
	#data bank04.loc_8c044f26
loc_8c028554:
	#data loc_8c028518
loc_8c028558:
	#data bank14.loc_8c149268
loc_8c02855c:
	#data bank12.loc_8c1294c8
loc_8c028560:
	#data bank14.loc_8c149358
loc_8c028564:
	#data bank12.loc_8c1294bc
loc_8c028568:
	#data bank14.loc_8c149238
loc_8c02856c:
	#data loc_8c02852a
loc_8c028570:
	#data 0x8c212ccc
loc_8c028574:
	#data bank14.loc_8c149368
loc_8c028578:
	#data bank14.loc_8c1493a4
loc_8c02857c:
	#data 0x8c26a904
loc_8c028580:
	#data 0x8c212ce8
loc_8c028584:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c028588:
	mov.b @(0x1,r4),r0
	mov r14,r1
	mov.l @(loc_8c028664,PC),r2
	add 0x34,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c028668,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c02866c,PC),r1
	mov.b @(0x1,r4),r0
	mov.b @(r0,r1),r2
	mov r14,r1
	mov.l @(loc_8c028670,PC),r0
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c028668,PC),r3
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
	mov.w @(loc_8c02865e,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0285e4
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0285e4:
	mova @(loc_8c028674,PC),r0
	mov.l @(loc_8c028684,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c028678,PC),r0
	mov.l @(loc_8c028680,PC),r3
	fmov @r0,fr2
	mova @(loc_8c02867c,PC),r0
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
	mov.w @(loc_8c028660,PC),r0
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c02863c
	bra loc_8c02873a
	nop

loc_8c02863c:
	mov.w @(loc_8c028662,PC),r0
	mov.l @(r0,r13),r14
	tst r14,r14
	bt loc_8c02873a
	mov.l @(loc_8c028688,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c02868c,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c02869c,PC),r11
	mov.l @(loc_8c028670,PC),r12
	mov.l @(loc_8c028698,PC),r10
	mov.l @(loc_8c028690,PC),r8
	mov.l @(loc_8c028694,PC),r9
	bra loc_8c02871e
	nop

;###############################################
loc_8c02865e:
	#data 0x0168
loc_8c028660:
	#data 0x012c
loc_8c028662:
	#data 0x00d4
	#align4
loc_8c028664:
	#data bank14.loc_8c149368
loc_8c028668:
	#data bank12.loc_8c1294c8
loc_8c02866c:
	#data bank14.loc_8c1493a4
loc_8c028670:
	#data bank14.loc_8c149268
loc_8c028674:
	#data 0x3f000000
loc_8c028678:
	#data 0x47800000
loc_8c02867c:
	#data 0x43b40000
loc_8c028680:
	#data 0x0000ffff
loc_8c028684:
	#data bank11.loc_8c11e2e0
loc_8c028688:
	#data loc_8c02e334
loc_8c02868c:
	#data bank12.loc_8c120950
loc_8c028690:
	#data bank12.loc_8c122710
loc_8c028694:
	#data bank12.loc_8c1210b0
loc_8c028698:
	#data bank12.loc_8c120ff0
loc_8c02869c:
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
	mov.l @(loc_8c028750,PC),r3
	shll2 r0
	add r12,r0
	mov r0,r2
	mov 0x0C,r0
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(loc_8c028754,PC),r2
	jsr @r2
	nop
	add 0x0C,r15
	lds r0,fpul
	float fpul,fr3
	jsr @r8
	fmov fr3,fr4

loc_8c0286f4:
	mov.w @(loc_8c02874c,PC),r0
	mov.l @(loc_8c028758,PC),r3
	fmov @(r0,r13),fr6
	mov 0x7C,r0
	fmov @(r0,r13),fr5
	mov 0x78,r0
	jsr @r3
	fmov @(r0,r13),fr4
	mov 0x74,r0
	mov.l @(loc_8c02875c,PC),r3
	fmov @(r0,r13),fr4
	mov.w @(0x2,r14),r0
	mov.l @(loc_8c028760,PC),r1
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
	mov.l @(loc_8c028764,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02874c:
	#data 0x0080
	#align4
loc_8c028750:
	#data bank12.loc_8c1294c8
loc_8c028754:
	#data bank03.loc_8c0301b4
loc_8c028758:
	#data bank12.loc_8c123780
loc_8c02875c:
	#data 0x8c26a904
loc_8c028760:
	#data bank12.loc_8c123610
loc_8c028764:
	#data bank12.loc_8c120900

;==============================================
loc_8c028768:
	sts.l pr,@-r15
	mov.l @(loc_8c028864,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0287b6
	mov r0,r4
	mov.w @(loc_8c02885a,PC),r0
	mov 0x01,r3
	fldi0 fr4
	mov r4,r1
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(loc_8c028868,PC),r2
	add 0x50,r1
	mov.l @(loc_8c028870,PC),r3
	mov.l r2,@(0x10,r4)
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.l @(loc_8c02886c,PC),r2
	fmov fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02885c,PC),r0
	mov 0x31,r1
	mov.l @(loc_8c028874,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c028878,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c02885e,PC),r0
	mov.l @(loc_8c02887c,PC),r1
	mov.l r1,@(r0,r4)

loc_8c0287b6:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0287bc:
	sts.l pr,@-r15
	mov.l @(loc_8c028864,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028824
	mov r0,r4
	mov.w @(loc_8c02885a,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c028880,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c028884,PC),r3
	mov.l r2,@(0x10,r4)
	mov.b @r3,r2
	mov.l @(loc_8c028888,PC),r3
	mov r2,r1
	shll r2
	add r1,r2
	mov r4,r1
	shll2 r2
	add r3,r2
	mov.l @(loc_8c028870,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c028870,PC),r3
	mov r4,r1
	mov.l @(loc_8c02886c,PC),r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02885c,PC),r0
	mov 0x31,r1
	mov.l @(loc_8c028874,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c028878,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c02888c,PC),r0
	mov.l @r0,r1
	mov.w @(loc_8c028860,PC),r0
	mov.l @r1,r3
	mov 0x00,r1
	mov.l @(r0,r3),r3
	mov.w @(loc_8c028862,PC),r0
	mov.l r3,@(r0,r4)
	add 0x50,r0
	mov.l r1,@(r0,r4)

loc_8c028824:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c02882a:
	mov.l @(loc_8c028890,PC),r3
	mov.b @r3,r0
	cmp/eq 0x05,r0
	bt loc_8c028838
	mov.l @(loc_8c028894,PC),r2
	jmp @r2
	nop

loc_8c028838:
	rts
	nop

;==============================================
loc_8c02883c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c028898,PC),r4
	mov 0x1C,r0
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	cmp/eq 0x05,r0
	bt loc_8c02889c
	lds.l @r15+,pr
	mov.l @(loc_8c028894,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

;###############################################
loc_8c02885a:
	#data 0x012c
loc_8c02885c:
	#data 0x00cc
loc_8c02885e:
	#data 0x00d4
loc_8c028860:
	#data 0x0138
loc_8c028862:
	#data 0x0084
	#align4
loc_8c028864:
	#data bank04.loc_8c044f26
loc_8c028868:
	#data loc_8c02882a
loc_8c02886c:
	#data bank14.loc_8c1493ec
loc_8c028870:
	#data bank12.loc_8c1294c8
loc_8c028874:
	#data bank14.loc_8c1493f8
loc_8c028878:
	#data bank12.loc_8c1294bc
loc_8c02887c:
	#data bank14.loc_8c1493ac
loc_8c028880:
	#data loc_8c02883c
loc_8c028884:
	#data 0x8c212cce
loc_8c028888:
	#data bank14.loc_8c149408
loc_8c02888c:
	#data 0x8c26a904
loc_8c028890:
	#data 0x8c212ce8
loc_8c028894:
	#data bank04.loc_8c0450c0
loc_8c028898:
	#data 0x8c212ccc

;----------------------------------------------
loc_8c02889c:
	mov.b @(0x2,r4),r0
	mov r14,r1
	mov.l @(loc_8c028918,PC),r2
	add 0x34,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c02891c,PC),r3
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
	mov.w @(loc_8c028916,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0288dc
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0288dc:
	mova @(loc_8c028920,PC),r0
	mov.l @(loc_8c028930,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c028924,PC),r0
	mov.l @(loc_8c02892c,PC),r3
	fmov @r0,fr2
	mova @(loc_8c028928,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c028916:
	#data 0x0168
	#align4
loc_8c028918:
	#data bank14.loc_8c149408
loc_8c02891c:
	#data bank12.loc_8c1294c8
loc_8c028920:
	#data 0x3f000000
loc_8c028924:
	#data 0x47800000
loc_8c028928:
	#data 0x43b40000
loc_8c02892c:
	#data 0x0000ffff
loc_8c028930:
	#data bank11.loc_8c11e2e0

;==============================================
loc_8c028934:
	sts.l pr,@-r15
	mov.l @(loc_8c028a0c,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028982
	mov r0,r4
	mov.w @(loc_8c028a04,PC),r0
	mov 0x01,r3
	fldi0 fr4
	mov r4,r1
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(loc_8c028a10,PC),r2
	add 0x50,r1
	mov.l @(loc_8c028a18,PC),r3
	mov.l r2,@(0x10,r4)
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.l @(loc_8c028a14,PC),r2
	fmov fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028a06,PC),r0
	mov 0x31,r1
	mov.l @(loc_8c028a1c,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c028a20,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028a08,PC),r0
	mov.l @(loc_8c028a24,PC),r1
	mov.l r1,@(r0,r4)

loc_8c028982:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c028988:
	sts.l pr,@-r15
	mov.l @(loc_8c028a0c,PC),r3
	mov 0x0D,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0289fe
	mov r0,r4
	mov.w @(loc_8c028a04,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c028a2c,PC),r5
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(loc_8c028a28,PC),r2
	mov.l r2,@(0x10,r4)
	mov.b @(0x2,r5),r0
	mov.l @(loc_8c028a30,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c028a18,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c028a34,PC),r1
	mov.b @(0x2,r5),r0
	mov.b @(r0,r1),r2
	mov r4,r1
	mov.l @(loc_8c028a14,PC),r0
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c028a18,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028a06,PC),r0
	mov 0x31,r1
	mov.l @(loc_8c028a1c,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c028a20,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c028a38,PC),r0
	mov.l @r0,r1
	mov.w @(loc_8c028a0a,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c028a04:
	#data 0x012c
loc_8c028a06:
	#data 0x00cc
loc_8c028a08:
	#data 0x00d4
loc_8c028a0a:
	#data 0x0084
	#align4
loc_8c028a0c:
	#data bank04.loc_8c044f26
loc_8c028a10:
	#data loc_8c028f7c
loc_8c028a14:
	#data bank14.loc_8c149268
loc_8c028a18:
	#data bank12.loc_8c1294c8
loc_8c028a1c:
	#data bank14.loc_8c1495f4
loc_8c028a20:
	#data bank12.loc_8c1294bc
loc_8c028a24:
	#data bank14.loc_8c149420
loc_8c028a28:
	#data loc_8c028f8e
loc_8c028a2c:
	#data 0x8c212ccc
loc_8c028a30:
	#data bank14.loc_8c149604
loc_8c028a34:
	#data bank14.loc_8c1495f0
loc_8c028a38:
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
	mov.l @(loc_8c028bc4,PC),r11
	jsr @r11
	mov r6,r4
	tst r0,r0
	bf.s loc_8c028a62
	mov r0,r4
	bra loc_8c028f40
	nop

loc_8c028a62:
	mov.w @(loc_8c028bba,PC),r0
	mov 0x01,r14
	mov.l @(loc_8c028bcc,PC),r5
	mov r4,r1
	mov.l @(loc_8c028bc8,PC),r3
	add 0x34,r1
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.b @(0x3,r5),r0
	mov.l @(loc_8c028bd0,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c028bd4,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c028bdc,PC),r1
	mov.b @(0x3,r5),r0
	mov.l @(loc_8c028bd8,PC),r12
	mov.b @(r0,r1),r2
	mov r4,r1
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c028bd4,PC),r3
	shll2 r2
	add r12,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c028be0,PC),r10
	mov r4,r1
	mov.w @(loc_8c028bbe,PC),r0
	add 0x74,r1
	mov.w @(loc_8c028bbc,PC),r9
	mov r10,r2
	mov.l @(loc_8c028be4,PC),r3
	mov.l r9,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c028be8,PC),r8
	mov 0x00,r13
	mov.w @(loc_8c028bc0,PC),r0
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
	mov.w @(loc_8c028bba,PC),r0
	mov r4,r1
	fldi0 fr15
	mov r12,r2
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l @(loc_8c028bec,PC),r3
	add 0x50,r1
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(loc_8c028bd4,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028bbe,PC),r0
	mov r4,r1
	mov.l @(loc_8c028be4,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028bc0,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c028bf0,PC),r2
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
	mov.l @(loc_8c028bf4,PC),r3
	mov.b r13,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8c028bba,PC),r0
	mov r12,r2
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(loc_8c028bd4,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028bbe,PC),r0
	mov r4,r1
	mov.l @(loc_8c028be4,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028bc0,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c028bf8,PC),r2
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
	mov.l @(loc_8c028c00,PC),r5
	mov.b r13,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8c028bba,PC),r0
	mov r12,r2
	mov.l @(loc_8c028bfc,PC),r3
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
	mov.l @(loc_8c028bd4,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028bbe,PC),r0
	bra loc_8c028c04
	nop

;###############################################
loc_8c028bba:
	#data 0x012c
loc_8c028bbc:
	#data 0x0431
loc_8c028bbe:
	#data 0x00cc
loc_8c028bc0:
	#data 0x00d4
	#align4
loc_8c028bc4:
	#data bank04.loc_8c044f26
loc_8c028bc8:
	#data loc_8c029152
loc_8c028bcc:
	#data 0x8c212ccc
loc_8c028bd0:
	#data bank14.loc_8c149634
loc_8c028bd4:
	#data bank12.loc_8c1294c8
loc_8c028bd8:
	#data bank14.loc_8c149268
loc_8c028bdc:
	#data bank14.loc_8c14967c
loc_8c028be0:
	#data bank14.loc_8c1495f4
loc_8c028be4:
	#data bank12.loc_8c1294bc
loc_8c028be8:
	#data 0x8c26a904
loc_8c028bec:
	#data loc_8c029042
loc_8c028bf0:
	#data bank14.loc_8c149450
loc_8c028bf4:
	#data loc_8c029054
loc_8c028bf8:
	#data bank14.loc_8c149480
loc_8c028bfc:
	#data loc_8c0290c0
loc_8c028c00:
	#data bank14.loc_8c1494a0

;----------------------------------------------
loc_8c028c04:
	mov r4,r1
	mov.l @(loc_8c028dac,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028da2,PC),r0
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
	mov.l @(loc_8c028db0,PC),r3
	mov.b r14,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8c028da4,PC),r0
	mov r12,r2
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(loc_8c028db4,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028da6,PC),r0
	mov r4,r1
	mov.l @(loc_8c028dac,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028da2,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c028db8,PC),r2
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
	mov.l @(loc_8c028dc0,PC),r5
	mov.b r14,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8c028da4,PC),r0
	mov r12,r2
	mov.l @(loc_8c028dbc,PC),r3
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
	mov.l @(loc_8c028db4,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028da6,PC),r0
	mov r4,r1
	mov.l @(loc_8c028dac,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028da2,PC),r0
	mov 0x00,r6
	mov.l r13,@(r0,r4)
	mov.l @r8,r0
	mov.l @r0,r3
	mov.w @(0x2,r5),r0
	mov 0x0D,r5
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r2
	mov.w @(loc_8c028da8,PC),r0
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
	mov.l @(loc_8c028db0,PC),r3
	mov 0x02,r2
	mov r4,r1
	mov.b r2,@(r0,r4)
	mov r12,r2
	mov.w @(loc_8c028da4,PC),r0
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(loc_8c028db4,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028da6,PC),r0
	mov r4,r1
	mov.l @(loc_8c028dac,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028da2,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c028dc4,PC),r2
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
	mov.l @(loc_8c028dc8,PC),r5
	mov 0x02,r2
	mov.l @(loc_8c028dbc,PC),r3
	mov.b r2,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8c028da4,PC),r0
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
	mov.l @(loc_8c028db4,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028da6,PC),r0
	mov r4,r1
	mov.l @(loc_8c028dac,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028da2,PC),r0
	mov.l r13,@(r0,r4)
	bra loc_8c028dcc
	nop

;###############################################
loc_8c028da2:
	#data 0x00d4
loc_8c028da4:
	#data 0x012c
loc_8c028da6:
	#data 0x00cc
loc_8c028da8:
	#data 0x0084
	#align4
loc_8c028dac:
	#data bank12.loc_8c1294bc
loc_8c028db0:
	#data loc_8c029054
loc_8c028db4:
	#data bank12.loc_8c1294c8
loc_8c028db8:
	#data bank14.loc_8c1494e0
loc_8c028dbc:
	#data loc_8c0290c0
loc_8c028dc0:
	#data bank14.loc_8c149500
loc_8c028dc4:
	#data bank14.loc_8c149530
loc_8c028dc8:
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
	mov.w @(loc_8c028f54,PC),r0
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
	mov.l @(loc_8c028f5c,PC),r3
	mov 0x03,r2
	mov r4,r1
	mov.b r2,@(r0,r4)
	mov r12,r2
	mov.w @(loc_8c028f56,PC),r0
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l r3,@(0x10,r4)
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)
	mov 0x3C,r0
	mov.l @(loc_8c028f60,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028f58,PC),r0
	mov r4,r1
	mov.l @(loc_8c028f64,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028f5a,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c028f68,PC),r2
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
	mov.l @(loc_8c028f70,PC),r5
	mov 0x03,r2
	mov.l @(loc_8c028f6c,PC),r3
	mov.b r2,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8c028f56,PC),r0
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
	mov.l @(loc_8c028f60,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028f58,PC),r0
	mov r4,r1
	mov.l @(loc_8c028f64,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028f5a,PC),r0
	mov 0x00,r6
	mov.l r13,@(r0,r4)
	mov.l @r8,r0
	mov.l @r0,r3
	mov.w @(0x2,r5),r0
	mov 0x0D,r5
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r2
	mov.w @(loc_8c028f54,PC),r0
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028f40
	mov r0,r4
	mov 0x21,r0
	mov.l @(loc_8c028f5c,PC),r3
	mov 0x04,r2
	mov r4,r1
	mov.b r2,@(r0,r4)
	mov r12,r2
	mov.w @(loc_8c028f56,PC),r0
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
	mov.l @(loc_8c028f60,PC),r3
	mov.b r13,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028f58,PC),r0
	mov r4,r1
	mov.l @(loc_8c028f64,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028f5a,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c028f74,PC),r2
	mov 0x00,r6
	mov.l r2,@(r0,r4)
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c028f40
	mov r0,r4
	mov 0x21,r0
	mov.l @(loc_8c028f5c,PC),r3
	mov 0x05,r2
	mov r4,r1
	mov.b r2,@(r0,r4)
	mov r12,r2
	mov.w @(loc_8c028f56,PC),r0
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
	mov.l @(loc_8c028f60,PC),r3
	fmov fr15,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c028f58,PC),r0
	mov r4,r1
	mov.l @(loc_8c028f64,PC),r3
	mov r10,r2
	mov.l r9,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c028f5a,PC),r0
	mov.l @(loc_8c028f78,PC),r2
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c028f54:
	#data 0x0084
loc_8c028f56:
	#data 0x012c
loc_8c028f58:
	#data 0x00cc
loc_8c028f5a:
	#data 0x00d4
	#align4
loc_8c028f5c:
	#data loc_8c029054
loc_8c028f60:
	#data bank12.loc_8c1294c8
loc_8c028f64:
	#data bank12.loc_8c1294bc
loc_8c028f68:
	#data bank14.loc_8c149560
loc_8c028f6c:
	#data loc_8c0290c0
loc_8c028f70:
	#data bank14.loc_8c149580
loc_8c028f74:
	#data bank14.loc_8c149590
loc_8c028f78:
	#data bank14.loc_8c1495b0

;==============================================
loc_8c028f7c:
	mov.l @(loc_8c02908c,PC),r3
	mov.b @r3,r0
	cmp/eq 0x03,r0
	bt loc_8c028f8a
	mov.l @(loc_8c029090,PC),r2
	jmp @r2
	nop

loc_8c028f8a:
	rts
	nop

;==============================================
loc_8c028f8e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c029094,PC),r4
	mov 0x1C,r0
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	cmp/eq 0x03,r0
	bt loc_8c028fac
	lds.l @r15+,pr
	mov.l @(loc_8c029090,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

loc_8c028fac:
	mov.b @(0x2,r4),r0
	mov r14,r1
	mov.l @(loc_8c029098,PC),r2
	add 0x34,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c02909c,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0290a0,PC),r1
	mov.b @(0x2,r4),r0
	mov.b @(r0,r1),r2
	mov r14,r1
	mov.l @(loc_8c0290a4,PC),r0
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c02909c,PC),r3
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
	mov.w @(loc_8c029088,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c029008
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c029008:
	mova @(loc_8c0290a8,PC),r0
	mov.l @(loc_8c0290b8,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c0290ac,PC),r0
	mov.l @(loc_8c0290b4,PC),r3
	fmov @r0,fr2
	mova @(loc_8c0290b0,PC),r0
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
	mov.l @(loc_8c02908c,PC),r3
	mov.b @r3,r0
	cmp/eq 0x04,r0
	bt loc_8c029050
	mov.l @(loc_8c029090,PC),r2
	jmp @r2
	nop

loc_8c029050:
	rts
	nop

;==============================================
loc_8c029054:
	mov.l @(loc_8c029094,PC),r5
	mov 0x1C,r0
	mov.b @(r0,r5),r0
	cmp/eq 0x04,r0
	bt loc_8c029064
	mov.l @(loc_8c029090,PC),r3
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
	mova @(loc_8c0290bc,PC),r0
	bra loc_8c02907a
	fmov @r0,fr3

loc_8c029078:
	fldi1 fr3

loc_8c02907a:
	mov.w @(loc_8c02908a,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	rts
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c029088:
	#data 0x0168
loc_8c02908a:
	#data 0x0080
	#align4
loc_8c02908c:
	#data 0x8c212ce8
loc_8c029090:
	#data bank04.loc_8c0450c0
loc_8c029094:
	#data 0x8c212ccc
loc_8c029098:
	#data bank14.loc_8c149604
loc_8c02909c:
	#data bank12.loc_8c1294c8
loc_8c0290a0:
	#data bank14.loc_8c1495f0
loc_8c0290a4:
	#data bank14.loc_8c149268
loc_8c0290a8:
	#data 0x3f000000
loc_8c0290ac:
	#data 0x47800000
loc_8c0290b0:
	#data 0x43b40000
loc_8c0290b4:
	#data 0x0000ffff
loc_8c0290b8:
	#data bank11.loc_8c11e2e0
loc_8c0290bc:
	#data 0x3f333333

;==============================================
loc_8c0290c0:
	mov.l @(loc_8c029178,PC),r6
	mov 0x1C,r0
	mov.b @(r0,r6),r0
	cmp/eq 0x04,r0
	bt loc_8c0290d0
	mov.l @(loc_8c02917c,PC),r3
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
	mova @(loc_8c029180,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c029174,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	bra loc_8c0290f8
	fldi0 fr3

loc_8c0290ee:
	mov.w @(loc_8c029174,PC),r0
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
	mov.l @(loc_8c029184,PC),r3
	exts.b r5,r5
	shll2 r5
	mov.l @r3,r0
	mov.l @r0,r0
	mov.l @(r0,r5),r2
	mov.w @(loc_8c029176,PC),r0
	rts
	mov.l r2,@(r0,r4)

;==============================================
loc_8c029152:
	mov.l r14,@-r15
	mov 0x1C,r0
	mov.l r13,@-r15
	mov.l @(loc_8c029178,PC),r13
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r0
	cmp/eq 0x04,r0
	bt.s loc_8c029188
	mov r4,r14
	lds.l @r15+,pr
	mov.l @(loc_8c02917c,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;###############################################
loc_8c029174:
	#data 0x0080
loc_8c029176:
	#data 0x0084
	#align4
loc_8c029178:
	#data 0x8c212ccc
loc_8c02917c:
	#data bank04.loc_8c0450c0
loc_8c029180:
	#data 0x3f333333
loc_8c029184:
	#data 0x8c26a904

;==============================================
loc_8c029188:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c02925e,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c02919a
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c02919a:
	mova @(loc_8c029264,PC),r0
	mov.l @(loc_8c029274,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c029268,PC),r0
	mov.l @(loc_8c029270,PC),r3
	fmov @r0,fr2
	mova @(loc_8c02926c,PC),r0
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
	mov.l @(loc_8c02927c,PC),r3
	mov.l @(loc_8c029278,PC),r5
	fmov fr2,@(r0,r14)
	mov.b @(0x3,r13),r0
	cmp/eq 0x05,r0
	bt.s loc_8c029218
	mov.l @r3,r4
	mov.w @(loc_8c029260,PC),r0
	mov.l @r4,r1
	mov.l @(loc_8c029284,PC),r3
	mov.l @(r0,r1),r2
	add 0xC0,r0
	mov.l r2,@(r0,r14)
	mov.b @(0x3,r13),r0
	mov.l @(loc_8c029280,PC),r2
	mov r0,r1
	shll r0
	add r1,r0
	mov r14,r1
	shll2 r0
	add r0,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c029288,PC),r1
	mov.b @(0x3,r13),r0
	mov.b @(r0,r1),r2
	mov r14,r1
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c029284,PC),r3
	shll2 r2
	add r5,r2
	jsr @r3
	mov 0x0C,r0
	bra loc_8c029254
	nop

loc_8c029218:
	mov.w @(loc_8c029262,PC),r0
	mov.l @r4,r2
	mov.l @(loc_8c02928c,PC),r4
	mov.l @(r0,r2),r1
	add 0xC4,r0
	mov.l @(loc_8c029284,PC),r3
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
loc_8c02925e:
	#data 0x0168
loc_8c029260:
	#data 0x00c4
loc_8c029262:
	#data 0x00c0
	#align4
loc_8c029264:
	#data 0x3f000000
loc_8c029268:
	#data 0x47800000
loc_8c02926c:
	#data 0x43b40000
loc_8c029270:
	#data 0x0000ffff
loc_8c029274:
	#data bank11.loc_8c11e2e0
loc_8c029278:
	#data bank14.loc_8c149268
loc_8c02927c:
	#data 0x8c26a904
loc_8c029280:
	#data bank14.loc_8c149634
loc_8c029284:
	#data bank12.loc_8c1294c8
loc_8c029288:
	#data bank14.loc_8c14967c
loc_8c02928c:
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
	mov.l @(loc_8c02941c,PC),r12
	jsr @r12
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0292b4
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c0292b4:
	mov.w @(loc_8c02940e,PC),r0
	mov 0x01,r14
	fldi0 fr4
	mov r4,r1
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	mov.l @(loc_8c029420,PC),r3
	add 0x50,r1
	mov.l @(loc_8c029424,PC),r10
	mov.l r3,@(0x10,r4)
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.l @(loc_8c029428,PC),r3
	mov r10,r2
	fmov fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c029412,PC),r0
	mov r4,r1
	mov.w @(loc_8c029410,PC),r11
	add 0x74,r1
	mov.l @(loc_8c02942c,PC),r2
	mov.l @(loc_8c029430,PC),r3
	mov.l r11,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c029414,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c029434,PC),r1
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
	mov.w @(loc_8c02940e,PC),r0
	mov r4,r1
	mov.l @(loc_8c02943c,PC),r5
	add 0x34,r1
	mov.l @(loc_8c029438,PC),r3
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.b @(0x2,r5),r0
	mov.l @(loc_8c029440,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c029428,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x2,r5),r0
	mov r4,r1
	mov.l @(loc_8c029444,PC),r2
	add 0x50,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c029428,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c029412,PC),r0
	mov r4,r1
	mov.l @(loc_8c02942c,PC),r2
	add 0x74,r1
	mov.l @(loc_8c029430,PC),r3
	mov.l r11,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c029448,PC),r9
	mov 0x00,r13
	mov.w @(loc_8c029416,PC),r0
	mov 0x0D,r5
	mov.l @r9,r1
	mov r13,r6
	mov.l @r1,r3
	mov.w @(loc_8c029418,PC),r1
	mov.l @(r0,r3),r0
	add r4,r1
	mov.l r0,@r1
	mov.w @(loc_8c029414,PC),r0
	mov.l r13,@(r0,r4)
	jsr @r12
	mov r13,r4
	tst r0,r0
	bf.s loc_8c029376
	mov r0,r4
	bra loc_8c029952
	nop

loc_8c029376:
	mov.l @(loc_8c02944c,PC),r3
	mov r4,r1
	mov.w @(loc_8c02940e,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029450,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c029428,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c029428,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c029454,PC),r8
	mov r4,r1
	mov.w @(loc_8c029412,PC),r0
	add 0x74,r1
	mov.l @(loc_8c029430,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x0D,r5
	mov.w @(loc_8c029418,PC),r0
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
	mov.l @(loc_8c02944c,PC),r3
	mov r4,r1
	mov.w @(loc_8c02940e,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029450,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c029428,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c029428,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c029412,PC),r0
	mov r4,r1
	mov.l @(loc_8c029430,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov.w @(loc_8c029418,PC),r0
	mov.l @r2,r3
	mov.l @(0x3C,r3),r1
	mov.l r1,@(r0,r4)
	add 0x50,r0
	mov.l r13,@(r0,r4)
	bra loc_8c029458
	nop

;###############################################
loc_8c02940e:
	#data 0x012c
loc_8c029410:
	#data 0x0431
loc_8c029412:
	#data 0x00cc
loc_8c029414:
	#data 0x00d4
loc_8c029416:
	#data 0x00c4
loc_8c029418:
	#data 0x0084
	#align4
loc_8c02941c:
	#data bank04.loc_8c044f26
loc_8c029420:
	#data loc_8c029988
loc_8c029424:
	#data bank14.loc_8c1496b4
loc_8c029428:
	#data bank12.loc_8c1294c8
loc_8c02942c:
	#data bank14.loc_8c1496c0
loc_8c029430:
	#data bank12.loc_8c1294bc
loc_8c029434:
	#data bank14.loc_8c149684
loc_8c029438:
	#data loc_8c02999a
loc_8c02943c:
	#data 0x8c212ccc
loc_8c029440:
	#data bank14.loc_8c149710
loc_8c029444:
	#data bank14.loc_8c149764
loc_8c029448:
	#data 0x8c26a904
loc_8c02944c:
	#data loc_8c029a58
loc_8c029450:
	#data bank14.loc_8c1496f0
loc_8c029454:
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
	mov.l @(loc_8c02960c,PC),r3
	mov r4,r1
	mov.w @(loc_8c029608,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029610,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c029614,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c029614,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02960a,PC),r0
	mov r4,r1
	mov.l @(loc_8c029618,PC),r3
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
	mov.l @(loc_8c02960c,PC),r3
	mov r4,r1
	mov.w @(loc_8c029608,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029610,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c029614,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c029614,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02960a,PC),r0
	mov r4,r1
	mov.l @(loc_8c029618,PC),r3
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
	mov.l @(loc_8c02960c,PC),r3
	mov r4,r1
	mov.w @(loc_8c029608,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029610,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c029614,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c029614,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02960a,PC),r0
	mov r4,r1
	mov.l @(loc_8c029618,PC),r3
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
	mov.l @(loc_8c02960c,PC),r3
	mov r4,r1
	mov.w @(loc_8c029608,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029610,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c029614,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c029614,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02960a,PC),r0
	mov r4,r1
	mov.l @(loc_8c029618,PC),r3
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
	mov.l @(loc_8c02960c,PC),r3
	mov r4,r1
	mov.w @(loc_8c029608,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029610,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c029614,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c029614,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02960a,PC),r0
	mov r4,r1
	mov.l @(loc_8c029618,PC),r3
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
loc_8c029608:
	#data 0x012c
loc_8c02960a:
	#data 0x00cc
	#align4
loc_8c02960c:
	#data loc_8c029a58
loc_8c029610:
	#data bank14.loc_8c1496f0
loc_8c029614:
	#data bank12.loc_8c1294c8
loc_8c029618:
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
	mov.l @(loc_8c0297cc,PC),r3
	mov r4,r1
	mov.w @(loc_8c0297c6,PC),r0
	add 0x34,r1
	mov.l @(loc_8c0297d0,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c0297d4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0297d4,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0297c8,PC),r0
	mov r4,r1
	mov.l @(loc_8c0297d8,PC),r3
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
	mov.l @(loc_8c0297dc,PC),r3
	mov r4,r1
	mov.w @(loc_8c0297c6,PC),r0
	add 0x34,r1
	mov.l @(loc_8c0297d0,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c0297d4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0297d4,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0297c8,PC),r0
	mov r4,r1
	mov.l @(loc_8c0297d8,PC),r3
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
	mov.l @(loc_8c0297dc,PC),r3
	mov r4,r1
	mov.w @(loc_8c0297c6,PC),r0
	add 0x34,r1
	mov.l @(loc_8c0297d0,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c0297d4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0297d4,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0297c8,PC),r0
	mov r4,r1
	mov.l @(loc_8c0297d8,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x0D,r5
	mov.w @(loc_8c0297ca,PC),r0
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
	mov.l @(loc_8c0297dc,PC),r3
	mov r4,r1
	mov.w @(loc_8c0297c6,PC),r0
	add 0x34,r1
	mov.l @(loc_8c0297d0,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c0297d4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0297d4,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0297c8,PC),r0
	mov r4,r1
	mov.l @(loc_8c0297d8,PC),r3
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
	mov.l @(loc_8c0297dc,PC),r3
	mov r4,r1
	mov.w @(loc_8c0297c6,PC),r0
	add 0x34,r1
	mov.l @(loc_8c0297d0,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c0297d4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0297d4,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0297c8,PC),r0
	mov r4,r1
	add 0x74,r1
	mov.l r11,@(r0,r4)
	bra loc_8c0297e0
	nop

;###############################################
loc_8c0297c6:
	#data 0x012c
loc_8c0297c8:
	#data 0x00cc
loc_8c0297ca:
	#data 0x00ec
	#align4
loc_8c0297cc:
	#data loc_8c029a58
loc_8c0297d0:
	#data bank14.loc_8c1496f0
loc_8c0297d4:
	#data bank12.loc_8c1294c8
loc_8c0297d8:
	#data bank12.loc_8c1294bc
loc_8c0297dc:
	#data loc_8c029a94

;----------------------------------------------
loc_8c0297e0:
	mov.l @(loc_8c029970,PC),r3
	mov r8,r2
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x0D,r5
	mov.w @(loc_8c029964,PC),r0
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
	mov.l @(loc_8c029974,PC),r3
	mov r4,r1
	mov.w @(loc_8c029966,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029978,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c02997c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c02997c,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c029964,PC),r0
	mov r4,r1
	mov.l @(loc_8c029970,PC),r3
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
	mov.l @(loc_8c029974,PC),r3
	mov r4,r1
	mov.w @(loc_8c029966,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029978,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c02997c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c02997c,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c029964,PC),r0
	mov r4,r1
	mov.l @(loc_8c029970,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov 0x0D,r5
	mov.w @(loc_8c029968,PC),r0
	mov 0x00,r6
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	mov 0x05,r3
	mov.w @(loc_8c02996a,PC),r0
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
	mov.l @(loc_8c029974,PC),r3
	mov r4,r1
	mov.w @(loc_8c029966,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029980,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c02997c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c02997c,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c029964,PC),r0
	mov r4,r1
	mov.l @(loc_8c029970,PC),r3
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
	mov.l @(loc_8c029984,PC),r3
	mov r4,r1
	mov.w @(loc_8c029966,PC),r0
	add 0x34,r1
	mov.l @(loc_8c029980,PC),r2
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(loc_8c02997c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c02997c,PC),r3
	mov r4,r1
	mov r10,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c029964,PC),r0
	mov r4,r1
	mov.l @(loc_8c029970,PC),r3
	mov r8,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @r9,r2
	mov.w @(loc_8c02996c,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c029964:
	#data 0x00cc
loc_8c029966:
	#data 0x012c
loc_8c029968:
	#data 0x010c
loc_8c02996a:
	#data 0x0084
loc_8c02996c:
	#data 0x00c0
	#align4
loc_8c029970:
	#data bank12.loc_8c1294bc
loc_8c029974:
	#data loc_8c029a94
loc_8c029978:
	#data bank14.loc_8c1496f0
loc_8c02997c:
	#data bank12.loc_8c1294c8
loc_8c029980:
	#data bank14.loc_8c1496fc
loc_8c029984:
	#data loc_8c029d5a

;==============================================
loc_8c029988:
	mov.l @(loc_8c029ab0,PC),r2
	mov.b @r2,r0
	cmp/eq 0x02,r0
	bt loc_8c029996
	mov.l @(loc_8c029ab4,PC),r3
	jmp @r3
	nop

loc_8c029996:
	rts
	nop

;----------------------------------------------
loc_8c02999a:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c029ab0,PC),r4
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @r4,r0
	cmp/eq 0x02,r0
	bt loc_8c0299b6
	lds.l @r15+,pr
	mov.l @(loc_8c029ab4,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

loc_8c0299b6:
	mov.w @(loc_8c029aac,PC),r0
	mov 0x00,r5
	mov.b r5,@(r0,r14)
	mov.b @(0x2,r4),r0
	cmp/eq 0x07,r0
	bt loc_8c029a50
	mov.w @(loc_8c029aac,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c029ab8,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c029abc,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x2,r4),r0
	mov r14,r1
	mov.l @(loc_8c029ac0,PC),r2
	add 0x50,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c029abc,PC),r3
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
	mov.w @(loc_8c029aae,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c029a1e
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c029a1e:
	mova @(loc_8c029ac4,PC),r0
	mov.l @(loc_8c029ad4,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c029ac8,PC),r0
	mov.l @(loc_8c029ad0,PC),r3
	fmov @r0,fr2
	mova @(loc_8c029acc,PC),r0
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
	mov.l @(loc_8c029ab0,PC),r5
	sts.l pr,@-r15
	mov.b @r5,r0
	cmp/eq 0x02,r0
	bt loc_8c029a68
	mov.l @(loc_8c029ab4,PC),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c029a68:
	mov.l @(loc_8c029ad8,PC),r2
	mov r4,r1
	mov.l @(loc_8c029adc,PC),r3
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
	mov.l @(loc_8c029ae0,PC),r2
	mov r4,r1
	mov.l @(loc_8c029adc,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c029a8e:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c029a94:
	mov.l @(loc_8c029ab0,PC),r6
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @r6,r0
	cmp/eq 0x02,r0
	bt loc_8c029ae4
	lds.l @r15+,pr
	mov.l @(loc_8c029ab4,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c029aac:
	#data 0x012c
loc_8c029aae:
	#data 0x0168
	#align4
loc_8c029ab0:
	#data 0x8c212ccc
loc_8c029ab4:
	#data bank04.loc_8c0450c0
loc_8c029ab8:
	#data bank14.loc_8c149710
loc_8c029abc:
	#data bank12.loc_8c1294c8
loc_8c029ac0:
	#data bank14.loc_8c149764
loc_8c029ac4:
	#data 0x3f000000
loc_8c029ac8:
	#data 0x47800000
loc_8c029acc:
	#data 0x43b40000
loc_8c029ad0:
	#data 0x0000ffff
loc_8c029ad4:
	#data bank11.loc_8c11e2e0
loc_8c029ad8:
	#data bank14.loc_8c1496d0
loc_8c029adc:
	#data bank12.loc_8c1294bc
loc_8c029ae0:
	#data bank14.loc_8c1496c0

;==============================================
loc_8c029ae4:
	mov.l @(loc_8c029bbc,PC),r2
	mov r4,r1
	mov.l @(loc_8c029bc0,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov 0x20,r3
	mov.b @(0x2,r6),r0
	add r4,r3
	mov.l @(loc_8c029bc4,PC),r14
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf loc_8c029b0c
	mov.l @(loc_8c029bc0,PC),r3
	mov r4,r1
	mov r14,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c029b0c:
	mov 0x20,r0
	mov.l @(loc_8c029bcc,PC),r5
	mov.b @(r0,r4),r0
	mov.l @(loc_8c029bc8,PC),r13
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
	mov.w @(loc_8c029bb2,PC),r0
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
	mov.w @(loc_8c029bb4,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	bra loc_8c029d52
	mov.l r1,@(r0,r4)

loc_8c029b6c:
	mov.w @(loc_8c029bb6,PC),r0
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
	mov.w @(loc_8c029bb8,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	add 0x94,r0
	bra loc_8c029d52
	mov.l r1,@(r0,r4)

loc_8c029b90:
	mov.w @(loc_8c029bba,PC),r0
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
loc_8c029bb2:
	#data 0x0088
loc_8c029bb4:
	#data 0x0084
loc_8c029bb6:
	#data 0x00ec
loc_8c029bb8:
	#data 0x00f0
loc_8c029bba:
	#data 0x0080
	#align4
loc_8c029bbc:
	#data bank14.loc_8c1496e0
loc_8c029bc0:
	#data bank12.loc_8c1294bc
loc_8c029bc4:
	#data bank14.loc_8c1496c0
loc_8c029bc8:
	#data bank14.loc_8c1496d0
loc_8c029bcc:
	#data 0x8c26a904

;----------------------------------------------
loc_8c029bd0:
	mov.l @(loc_8c029c90,PC),r3
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
	mov.l @(loc_8c029c90,PC),r3
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
	mov.w @(loc_8c029c7e,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	bra loc_8c029c7a
	add 0xB8,r0

loc_8c029c28:
	mov.l @r5,r2
	mov.w @(loc_8c029c80,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xB4,r0

loc_8c029c34:
	mov.l @r5,r2
	mov.w @(loc_8c029c82,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xB0,r0

loc_8c029c40:
	mov.l @r5,r2
	mov.w @(loc_8c029c84,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xAC,r0

loc_8c029c4c:
	mov.l @r5,r2
	mov.w @(loc_8c029c86,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xA8,r0

loc_8c029c58:
	mov.l @r5,r2
	mov.w @(loc_8c029c88,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xA4,r0

loc_8c029c64:
	mov.l @r5,r2
	mov.w @(loc_8c029c8a,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c029c7a
	add 0xA0,r0

loc_8c029c70:
	mov.l @r5,r2
	mov.w @(loc_8c029c8c,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	mov.w @(loc_8c029c8e,PC),r0

loc_8c029c7a:
	bra loc_8c029d52
	mov.l r1,@(r0,r4)

;###############################################
loc_8c029c7e:
	#data 0x00cc
loc_8c029c80:
	#data 0x00d0
loc_8c029c82:
	#data 0x00d4
loc_8c029c84:
	#data 0x00d8
loc_8c029c86:
	#data 0x00dc
loc_8c029c88:
	#data 0x00e0
loc_8c029c8a:
	#data 0x00e4
loc_8c029c8c:
	#data 0x00e8
loc_8c029c8e:
	#data 0x0084
	#align4
loc_8c029c90:
	#data bank12.loc_8c1294bc

;----------------------------------------------
loc_8c029c94:
	mov.l @(loc_8c029d80,PC),r3
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
	mov.l @(loc_8c029d80,PC),r3
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
	mov.w @(loc_8c029d76,PC),r0

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
	mov.w @(loc_8c029d78,PC),r0
	mov.l @r7,r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8c029d76,PC),r0

loc_8c029d16:
	bra loc_8c029d52
	mov.l r2,@(r0,r4)

loc_8c029d1a:
	mov.w @(loc_8c029d7a,PC),r0
	bra loc_8c029d24
	mov.l @r7,r1

loc_8c029d20:
	mov.w @(loc_8c029d7c,PC),r0
	mov.l @r7,r1

loc_8c029d24:
	mov.l @(r0,r1),r3
	mov.w @(loc_8c029d76,PC),r0
	bra loc_8c029d52
	mov.l r3,@(r0,r4)

loc_8c029d2c:
	mov.l @(loc_8c029d80,PC),r3
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
	mov.l @(loc_8c029d80,PC),r3
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
	mov.l @(loc_8c029d84,PC),r5
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @r5,r0
	cmp/eq 0x02,r0
	bt.s loc_8c029d8c
	mov r4,r14
	lds.l @r15+,pr
	mov.l @(loc_8c029d88,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

;###############################################
loc_8c029d76:
	#data 0x0084
loc_8c029d78:
	#data 0x010c
loc_8c029d7a:
	#data 0x0110
loc_8c029d7c:
	#data 0x0100
	#align4
loc_8c029d80:
	#data bank12.loc_8c1294bc
loc_8c029d84:
	#data 0x8c212ccc
loc_8c029d88:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c029d8c:
	mov.w @(loc_8c029e1e,PC),r0
	mov r14,r1
	mov.l @(loc_8c029e24,PC),r2
	mov 0x00,r4
	mov.l @(loc_8c029e28,PC),r3
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
	mov.w @(loc_8c029e1e,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c029e2c,PC),r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	add 0x74,r1
	mov.l @(loc_8c029e28,PC),r3
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
	mov.w @(loc_8c029e20,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c029de4
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c029de4:
	mova @(loc_8c029e30,PC),r0
	mov.l @(loc_8c029e40,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c029e34,PC),r0
	mov.l @(loc_8c029e3c,PC),r3
	fmov @r0,fr2
	mova @(loc_8c029e38,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c029e1e:
	#data 0x012c
loc_8c029e20:
	#data 0x0168
	#align4
loc_8c029e24:
	#data bank14.loc_8c1496d0
loc_8c029e28:
	#data bank12.loc_8c1294bc
loc_8c029e2c:
	#data bank14.loc_8c1496c0
loc_8c029e30:
	#data 0x3f000000
loc_8c029e34:
	#data 0x47800000
loc_8c029e38:
	#data 0x43b40000
loc_8c029e3c:
	#data 0x0000ffff
loc_8c029e40:
	#data bank11.loc_8c11e2e0

;==============================================
loc_8c029e44:
	mov.l r14,@-r15
	mov 0x03,r3
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l @(loc_8c029fa0,PC),r13
	and r3,r12
	mov.w @(loc_8c029f82,PC),r1
	mov r12,r14
	mov.l @(loc_8c029fa4,PC),r0
	shll2 r14
	mov.l @r13,r2
	mov.l @(r0,r14),r3
	add r1,r2
	mov.l @(loc_8c029fa8,PC),r0
	add r14,r2
	mov.l r3,@r2
	mov.w @(loc_8c029f84,PC),r2
	mov.l @r13,r3
	mov.l @(r0,r14),r1
	add r2,r3
	add r14,r3
	mov.l r1,@r3
	mov.w @(loc_8c029f82,PC),r1
	mov.w @(loc_8c029f86,PC),r3
	mov.l @r13,r0
	add r0,r1
	add r0,r3
	add r2,r0
	mov.l @(r0,r14),r0
	add r14,r3
	add r14,r1
	mov.l @r1,r1
	mov 0x00,r6
	mov.w @(loc_8c029f88,PC),r5
	mul.l r0,r1
	sts macl,r1
	add 0x10,r1
	mov.l r1,@r3
	mov.w @(loc_8c029f88,PC),r3
	mov.l @r13,r0
	add r0,r3
	add r14,r3
	mov.l r4,@r3
	mov.w @(loc_8c029f8a,PC),r4
	mov.l @r13,r0
	add r12,r4
	mov.l @r15+,r12
	add r0,r5
	mov.l @(loc_8c029fac,PC),r3
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
	mov.l @(loc_8c029fb0,PC),r3
	mov.l @(loc_8c029fa0,PC),r13
	sts.l pr,@-r15
	mov.l @(loc_8c029fb4,PC),r12
	mov.l @(loc_8c029fb8,PC),r6
	mov.l r3,@r13
	jsr @r12
	mov r3,r4
	mov.l @(loc_8c029fbc,PC),r4
	bsr loc_8c029e44
	mov 0x00,r5
	mov.l @(loc_8c029fc0,PC),r4
	bsr loc_8c029e44
	mov 0x01,r5
	mov.l @(loc_8c029fc4,PC),r4
	mov.w @(loc_8c029f8c,PC),r6
	jsr @r12
	mov 0x00,r5
	mov.w @(loc_8c029f8e,PC),r11
	mov.w @(loc_8c029f90,PC),r14
	mov.l @(loc_8c029fd0,PC),r10
	mov.l @(loc_8c029fc8,PC),r8
	mov.l @(loc_8c029fcc,PC),r9

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
	mov.w @(loc_8c029f8c,PC),r3
	mov.w @(loc_8c029f92,PC),r6
	jsr @r12
	add r3,r4
	mov.l @r13,r4
	mov 0x00,r5
	mov.w @(loc_8c029f96,PC),r3
	mov.w @(loc_8c029f94,PC),r6
	jsr @r12
	add r3,r4
	mov.w @(loc_8c029f98,PC),r0
	mov 0x00,r3
	mov.l @r13,r2
	mov r3,r5
	mov.l @(loc_8c029fd4,PC),r6
	mov.l r3,@(r0,r2)
	mov.w @(loc_8c029f9a,PC),r0
	mov.l @r13,r2
	mov.l r3,@(r0,r2)
	mov.w @(loc_8c029f9c,PC),r0
	mov.l @r13,r2
	mov.l r3,@(r0,r2)
	mov.w @(loc_8c029f9e,PC),r3
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
	mov.w @(loc_8c029f8e,PC),r13
	mov.w @(loc_8c029f90,PC),r14
	mov.l @(loc_8c029fd0,PC),r12
	mov.l @(loc_8c029fd8,PC),r10
	mov.l @(loc_8c029fcc,PC),r11

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c029f82:
	#data 0x1488
loc_8c029f84:
	#data 0x1490
loc_8c029f86:
	#data 0x1498
loc_8c029f88:
	#data 0x14a0
loc_8c029f8a:
	#data 0x02c1
loc_8c029f8c:
	#data 0x0800
loc_8c029f8e:
	#data 0x0390
loc_8c029f90:
	#data 0x0110
loc_8c029f92:
	#data 0x0500
loc_8c029f94:
	#data 0x0280
loc_8c029f96:
	#data 0x0d00
loc_8c029f98:
	#data 0x14a8
loc_8c029f9a:
	#data 0x14ac
loc_8c029f9c:
	#data 0x14b0
loc_8c029f9e:
	#data 0x14b4
	#align4
loc_8c029fa0:
	#data 0x8c1f97a0
loc_8c029fa4:
	#data bank14.loc_8c149810
loc_8c029fa8:
	#data bank14.loc_8c149820
loc_8c029fac:
	#data loc_8c027366
loc_8c029fb0:
	#data 0x0c420000
loc_8c029fb4:
	#data bank12.loc_8c129728
loc_8c029fb8:
	#data 0x000a7500
loc_8c029fbc:
	#data 0x0c4c8000
loc_8c029fc0:
	#data 0x0c598000
loc_8c029fc4:
	#data 0x0c678000
loc_8c029fc8:
	#data bank12.loc_8c124080
loc_8c029fcc:
	#data bank14.loc_8c149830
loc_8c029fd0:
	#data bank11.loc_8c11b800
loc_8c029fd4:
	#data 0x000a604c
loc_8c029fd8:
	#data bank12.loc_8c1243c0

;==============================================
loc_8c029fdc:
	sts.l pr,@-r15
	mov.l @(loc_8c02a10c,PC),r3
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
	mov.l @(loc_8c02a110,PC),r2
	mov r15,r13
	shll r14
	mov.l @(loc_8c02a114,PC),r12
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
	mov.w @(loc_8c02a100,PC),r1
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
	mov.w @(loc_8c02a102,PC),r0
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
	mov.w @(loc_8c02a104,PC),r14
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
	mov.w @(loc_8c02a106,PC),r1
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
	mov.w @(loc_8c02a108,PC),r1
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02a100:
	#data 0x14a0
loc_8c02a102:
	#data 0x1498
loc_8c02a104:
	#data 0x00c0
loc_8c02a106:
	#data 0x1490
loc_8c02a108:
	#data 0x1488
	#align4
loc_8c02a10c:
	#data bank17.loc_8c17a1b0
loc_8c02a110:
	#data bank14.loc_8c1497b8
loc_8c02a114:
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
	mov.l @(loc_8c02a288,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.w @(loc_8c02a278,PC),r11
	mov 0x00,r13
	mov.l @(loc_8c02a290,PC),r14
	mov 0x02,r9
	mov r11,r12
	mov.l @(loc_8c02a28c,PC),r8
	mov.w @(loc_8c02a276,PC),r10
	add 0xD0,r12

loc_8c02a140:
	mov.l @r14,r0
	mov.w @(loc_8c02a27a,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(loc_8c02a27c,PC),r2
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
	mov.w @(loc_8c02a27a,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r1
	shll2 r3
	add r1,r3
	mov.w @(loc_8c02a276,PC),r1
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
	mov.w @(loc_8c02a27a,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov.w @(loc_8c02a280,PC),r1
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(loc_8c02a27e,PC),r2
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
	mov.w @(loc_8c02a27a,PC),r0
	mov.l @r14,r4
	mov.l @(r0,r4),r4
	mov r4,r3
	shll2 r4
	add r3,r4
	mov.l @(loc_8c02a294,PC),r3
	shll2 r4
	shll2 r4
	shll2 r4
	add r13,r4
	add r12,r4
	jsr @r3
	mov.l @r14,r5
	mov.l @r14,r0
	mov.w @(loc_8c02a27a,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(loc_8c02a27c,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r13),r1
	mov 0x04,r3
	or r3,r1
	mov.w @(loc_8c02a27a,PC),r3
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
	mov.w @(loc_8c02a282,PC),r1
	and r1,r2
	mov.b r2,@(r0,r13)

loc_8c02a228:
	mov.l @r14,r0
	mov.w @(loc_8c02a27a,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(loc_8c02a27c,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.w @(loc_8c02a284,PC),r3
	mov.b @(r0,r13),r1
	and r3,r1
	mov.b r1,@(r0,r13)
	add 0x01,r13
	cmp/ge r11,r13
	bt loc_8c02a256
	bra loc_8c02a140
	nop

loc_8c02a256:
	mov.w @(loc_8c02a27a,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02a276:
	#data 0x0800
loc_8c02a278:
	#data 0x0140
loc_8c02a27a:
	#data 0x14b0
loc_8c02a27c:
	#data 0x0d00
loc_8c02a27e:
	#data 0x1200
loc_8c02a280:
	#data 0x0f80
loc_8c02a282:
	#data 0x00fd
loc_8c02a284:
	#data 0x00fe
	#align4
loc_8c02a288:
	#data bank11.loc_8c11b800
loc_8c02a28c:
	#data loc_8c02ded6
loc_8c02a290:
	#data 0x8c1f97a0
loc_8c02a294:
	#data bank11.loc_8c11b810

;==============================================
loc_8c02a298:
	mov.l @(loc_8c02a3f8,PC),r3
	mov.w @(loc_8c02a3e8,PC),r1
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l @r3,r7

loc_8c02a2a2:
	mov.w @(loc_8c02a3ea,PC),r0
	mov.w @(loc_8c02a3ec,PC),r2
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
	mov.w @(loc_8c02a3ea,PC),r0
	mov.w @(loc_8c02a3ee,PC),r2
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
	mov.w @(loc_8c02a3ea,PC),r0
	mov.w @(loc_8c02a3f0,PC),r2
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
	mov.l @(loc_8c02a3f8,PC),r5
	mov.l r14,@-r15
	mov 0x00,r14
	sts.l pr,@-r15
	mov.w @(loc_8c02a3e8,PC),r6
	mov.l @r5,r4

loc_8c02a322:
	mov.w @(loc_8c02a3ea,PC),r0
	mov.w @(loc_8c02a3f2,PC),r3
	mov.l @(r0,r4),r1
	add r4,r3
	shll2 r1
	add r3,r1
	mov.l @r1,r1
	add r14,r1
	mov r6,r0
	nop
	mov.l @(loc_8c02a3fc,PC),r3
	jsr @r3
	nop
	mov r0,r7
	mov.w @(loc_8c02a3ea,PC),r0
	mov.w @(loc_8c02a3ec,PC),r2
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
	mov.w @(loc_8c02a3ea,PC),r0
	mov.w @(loc_8c02a3f4,PC),r2
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
	mov.w @(loc_8c02a3ea,PC),r0
	mov.w @(loc_8c02a3f4,PC),r2
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
	mov.w @(loc_8c02a3ea,PC),r2
	mov r0,r3
	add r3,r2
	mov.w @(loc_8c02a3f2,PC),r3
	mov.l @r2,r2
	add r0,r3
	mov.w @(loc_8c02a3ea,PC),r0
	shll2 r2
	add r3,r2
	mov.l @r2,r1
	add 0x01,r1
	mov.l r1,@r2
	mov.l @r5,r3
	mov.w @(loc_8c02a3f2,PC),r1
	mov r3,r2
	mov.l @(r0,r2),r2
	add r1,r3
	shll2 r2
	add r3,r2
	mov r6,r0
	nop
	mov.l @(loc_8c02a3fc,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02a3e8:
	#data 0x0140
loc_8c02a3ea:
	#data 0x14b0
loc_8c02a3ec:
	#data 0x0800
loc_8c02a3ee:
	#data 0x0f80
loc_8c02a3f0:
	#data 0x1200
loc_8c02a3f2:
	#data 0x14a8
loc_8c02a3f4:
	#data 0x0d00
	#align4
loc_8c02a3f8:
	#data 0x8c1f97a0
loc_8c02a3fc:
	#data bank12.loc_8c1292d4

;==============================================
loc_8c02a400:
	mov.w @(loc_8c02a4be,PC),r3
	extu.b r4,r0
	cmp/ge r3,r0
	bf loc_8c02a40e
	mov.w @(loc_8c02a4c0,PC),r1
	cmp/gt r1,r0
	bf loc_8c02a41a

loc_8c02a40e:
	mov.w @(loc_8c02a4c2,PC),r2
	cmp/ge r2,r0
	bf loc_8c02a41e
	mov.w @(loc_8c02a4c4,PC),r1
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
	mov.l @(loc_8c02a4cc,PC),r3
	cmp/eq r3,r4
	bf loc_8c02a436
	rts
	mov 0x01,r0

loc_8c02a436:
	mov.l @(loc_8c02a4d0,PC),r3
	cmp/eq r3,r4
	bf loc_8c02a440
	rts
	mov 0x02,r0

loc_8c02a440:
	mov.l @(loc_8c02a4d4,PC),r3
	cmp/eq r3,r4
	bf loc_8c02a44a
	rts
	mov 0x03,r0

loc_8c02a44a:
	mov.w @(loc_8c02a4c6,PC),r3
	cmp/eq r3,r4
	bf loc_8c02a454
	rts
	mov 0x04,r0

loc_8c02a454:
	mov.w @(loc_8c02a4c8,PC),r3
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
	mov.l @(loc_8c02a4d8,PC),r5
	cmp/ge r3,r14
	bf loc_8c02a484
	mov 0x30,r1
	cmp/ge r1,r14
	bt loc_8c02a484
	mov r14,r0
	nop
	mov.l @(loc_8c02a4dc,PC),r1
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
	mov.l @(loc_8c02a4e0,PC),r1
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
	mov.l @(loc_8c02a4e4,PC),r0
	bra loc_8c02a510
	nop

;###############################################
loc_8c02a4be:
	#data 0x0080
loc_8c02a4c0:
	#data 0x009f
loc_8c02a4c2:
	#data 0x00e0
loc_8c02a4c4:
	#data 0x00ff
loc_8c02a4c6:
	#data 0xff0a
loc_8c02a4c8:
	#data 0xa00a
	#align4
loc_8c02a4cc:
	#data 0xff000000
loc_8c02a4d0:
	#data 0xffff0a0a
loc_8c02a4d4:
	#data 0xff0affff
loc_8c02a4d8:
	#data 0x00008100
loc_8c02a4dc:
	#data bank14.loc_8c149850
loc_8c02a4e0:
	#data bank14.loc_8c149860
loc_8c02a4e4:
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
	mov.l @(loc_8c02a5e8,PC),r1
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
	mov.l @(loc_8c02a5ec,PC),r0

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
	mov.l @(loc_8c02a5f0,PC),r1
	add 0x85,r0
	mov.b @(r0,r1),r0

loc_8c02a52c:
	extu.b r0,r0
	add r5,r0
	rts
	mov.l @r15+,r14

loc_8c02a534:
	mov.l @(loc_8c02a5f4,PC),r0
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
	mov.l @(loc_8c02a5f8,PC),r4
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
	mov.l @(loc_8c02a5fc,PC),r3
	mov.l r12,@(r0,r15)
	mov.l @r15,r8
	jsr @r3
	mov r8,r4
	mov.l r0,@(0x4,r15)
	mova @(loc_8c02a604,PC),r0
	mov.l @r15,r3
	mov.l @(loc_8c02a600,PC),r2
	mov.l @(loc_8c02a610,PC),r14
	mov.l r3,@r2
	fmov @r0,fr12
	mova @(loc_8c02a608,PC),r0
	fmov @r0,fr13
	mova @(loc_8c02a60c,PC),r0
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
loc_8c02a5e8:
	#data bank14.loc_8c149868
loc_8c02a5ec:
	#data 0x00008220
loc_8c02a5f0:
	#data bank14.loc_8c14986e
loc_8c02a5f4:
	#data 0x00008140
loc_8c02a5f8:
	#data 0x8c212bfc
loc_8c02a5fc:
	#data bank12.loc_8c1297c4
loc_8c02a600:
	#data 0x8c1f97a4
loc_8c02a604:
	#data 0x3fc00000
loc_8c02a608:
	#data 0x38d1b717
loc_8c02a60c:
	#data 0x42000000
loc_8c02a610:
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
	mov.w @(loc_8c02a784,PC),r2
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
	mov.w @(loc_8c02a786,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov.w @(loc_8c02a786,PC),r1
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(loc_8c02a788,PC),r2
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
	mov.w @(loc_8c02a78a,PC),r1
	shll2 r3
	shll2 r3
	add r1,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r4),r2
	mov 0x02,r3
	or r3,r2
	mov.w @(loc_8c02a786,PC),r3
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
	mov.w @(loc_8c02a786,PC),r3
	shll2 r2
	add r2,r0
	mov.w @(loc_8c02a78c,PC),r2
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
	mov.w @(loc_8c02a78e,PC),r3
	shll2 r1
	mov.w @(loc_8c02a786,PC),r2
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
	mov.w @(loc_8c02a790,PC),r2
	shll2 r1
	shll2 r1
	add r2,r0
	shll2 r1
	add r1,r0
	mov.b r10,@(r0,r4)

loc_8c02a704:
	mov.l @r14,r0
	mov.w @(loc_8c02a786,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(loc_8c02a78a,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r4),r1
	mov 0x01,r3
	or r3,r1
	mov.w @(loc_8c02a792,PC),r3
	mov.b r1,@(r0,r4)
	mov.w @(loc_8c02a786,PC),r1
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
	mov.w @(loc_8c02a784,PC),r2
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
loc_8c02a784:
	#data 0x1488
loc_8c02a786:
	#data 0x14b0
loc_8c02a788:
	#data 0x0800
loc_8c02a78a:
	#data 0x0d00
loc_8c02a78c:
	#data 0x00fb
loc_8c02a78e:
	#data 0x0f80
loc_8c02a790:
	#data 0x1200
loc_8c02a792:
	#data 0x0110

;----------------------------------------------
loc_8c02a794:
	fadd fr4,fr14
	mov 0x20,r0
	fmov fr5,@(r0,r15)
	mov 0x1C,r0
	fmov fr5,@(r0,r15)

loc_8c02a79e:
	mov.l @(loc_8c02a86c,PC),r3
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
	mov.l @(loc_8c02a870,PC),r4
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
	mov.l @(loc_8c02a874,PC),r3
	mov.l r13,@(r0,r15)
	mov 0x4C,r0
	mov.l r13,@(r0,r15)
	mov.l @(0xC,r15),r8
	jsr @r3
	mov r8,r4
	mov.l r0,@(0x4,r15)
	mova @(loc_8c02a878,PC),r0
	fmov @r0,fr12
	mova @(loc_8c02a87c,PC),r0
	fmov @r0,fr13
	mova @(loc_8c02a880,PC),r0
	mov.l @(0x4,r15),r3
	mov.l @(loc_8c02a884,PC),r14
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
loc_8c02a86c:
	#data bank12.loc_8c1244b0
loc_8c02a870:
	#data 0x8c212bfc
loc_8c02a874:
	#data bank12.loc_8c1297c4
loc_8c02a878:
	#data 0xbe4ccccd
loc_8c02a87c:
	#data 0x3f000000
loc_8c02a880:
	#data 0x42000000
loc_8c02a884:
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
	mov.w @(loc_8c02a9f0,PC),r0
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
	mov.w @(loc_8c02a9f2,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov.w @(loc_8c02a9f2,PC),r1
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(loc_8c02a9f4,PC),r2
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
	mov.w @(loc_8c02a9f6,PC),r1
	shll2 r3
	shll2 r3
	add r1,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r4),r2
	mov 0x02,r3
	or r3,r2
	mov.w @(loc_8c02a9f2,PC),r3
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
	mov.w @(loc_8c02a9f2,PC),r3
	shll2 r2
	add r2,r0
	mov.w @(loc_8c02a9f8,PC),r2
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
	mov.w @(loc_8c02a9fa,PC),r3
	shll2 r1
	mov.w @(loc_8c02a9f2,PC),r2
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
	mov.w @(loc_8c02a9fc,PC),r2
	shll2 r1
	shll2 r1
	add r2,r0
	shll2 r1
	add r1,r0
	mov.l @r15,r1
	mov.b r1,@(r0,r4)

loc_8c02a972:
	mov.l @r14,r0
	mov.w @(loc_8c02a9f2,PC),r1
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.w @(loc_8c02a9f6,PC),r2
	shll2 r3
	shll2 r3
	add r2,r0
	shll2 r3
	add r3,r0
	mov.b @(r0,r4),r1
	mov 0x01,r3
	or r3,r1
	mov.w @(loc_8c02a9fe,PC),r3
	mov.b r1,@(r0,r4)
	mov.w @(loc_8c02a9f2,PC),r1
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
	mova @(loc_8c02aa00,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x1C,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(loc_8c02a9f0,PC),r0
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
loc_8c02a9f0:
	#data 0x1488
loc_8c02a9f2:
	#data 0x14b0
loc_8c02a9f4:
	#data 0x0800
loc_8c02a9f6:
	#data 0x0d00
loc_8c02a9f8:
	#data 0x00fb
loc_8c02a9fa:
	#data 0x0f80
loc_8c02a9fc:
	#data 0x1200
loc_8c02a9fe:
	#data 0x0110
loc_8c02aa00:
	#data 0xb717
	#data 0x38d1

;----------------------------------------------
loc_8c02aa04:
	mov 0x24,r0
	fmov fr5,@(r0,r15)
	mov 0x20,r0
	fmov fr5,@(r0,r15)
	mova @(loc_8c02ab2c,PC),r0
	fmov @r0,fr3
	fadd fr3,fr4
	fadd fr4,fr14

loc_8c02aa14:
	mov.l @(loc_8c02ab30,PC),r3
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
	mov.l @(loc_8c02ab34,PC),r4
	mov.l @(loc_8c02ab38,PC),r0
	mov.l @r4,r3
	mov.w @(loc_8c02ab28,PC),r6
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
	mov.l @(loc_8c02ab3c,PC),r0
	mov.l @r4,r5
	mov.l @(r0,r5),r2
	add 0xF8,r0
	mov.l @(r0,r5),r3
	cmp/eq r2,r3
	bf loc_8c02aaaa
	mov.l @(loc_8c02ab3c,PC),r0
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
	mov.l @(loc_8c02ab40,PC),r1
	mov.w @r1,r2
	tst r2,r2
	bt loc_8c02aaaa
	mov.l @(loc_8c02ab34,PC),r0
	mov.l @r0,r2
	mov.l @(loc_8c02ab44,PC),r0
	mov.l @(r0,r2),r3
	cmp/eq r3,r7
	bf loc_8c02aaaa
	mov.l @r4,r1
	mov.l @(loc_8c02ab3c,PC),r0
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
	mov.l @(loc_8c02ab34,PC),r13
	mov r5,r10
	mov r4,r5
	mov.l r4,@r15
	mov.l @r13,r4
	mov r15,r11
	mov.l @(loc_8c02ab38,PC),r0
	mov r6,r12
	mov r4,r3
	mov.l @(loc_8c02ab48,PC),r9
	mov.l @(r0,r3),r2
	mov 0x00,r8
	mov.w @(loc_8c02ab2a,PC),r3
	add 0x04,r11
	shll2 r2
	add r3,r4
	shll r2
	jsr @r9
	add r2,r4
	mov.l @r13,r4
	mov r10,r5
	mov.l @(loc_8c02ab38,PC),r0
	mov r4,r3
	mov.l @(loc_8c02ab4c,PC),r1
	mov.l @(r0,r3),r3
	add r1,r4
	mov r3,r2
	shll2 r3
	shll2 r3
	add r2,r3
	jsr @r9
	add r3,r4
	mov.l @r15,r3
	mov.l @(loc_8c02ab50,PC),r14
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
loc_8c02ab28:
	#data 0x2710
loc_8c02ab2a:
	#data 0x14b4
loc_8c02ab2c:
	#data 0xbecccccd
loc_8c02ab30:
	#data bank12.loc_8c1244b0
loc_8c02ab34:
	#data 0x8c1f97a0
loc_8c02ab38:
	#data 0x000a74f4
loc_8c02ab3c:
	#data 0x000a74fc
loc_8c02ab40:
	#data 0x8c21529c
loc_8c02ab44:
	#data 0x000a74f8
loc_8c02ab48:
	#data bank12.loc_8c1297b0
loc_8c02ab4c:
	#data 0x00014d34
loc_8c02ab50:
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
	mov.l @(loc_8c02ac20,PC),r0
	mov r4,r3
	mov.l @(loc_8c02ac24,PC),r1
	mov.l @(r0,r3),r3
	add r1,r4
	mul.l r2,r3
	sts macl,r2
	jsr @r9
	add r2,r4
	bsr loc_8c02aa44
	nop
	mov.l @r13,r2
	mov.l @(loc_8c02ac20,PC),r0
	mov r2,r3
	mov.l @(r0,r3),r3
	mov r3,r1
	shll2 r3
	shll2 r3
	add r1,r3
	mov.l @(loc_8c02ac28,PC),r1
	add r1,r2
	add r2,r3
	mov.b r8,@r3

loc_8c02abde:
	mov.l @r13,r4
	mov 0x2B,r2
	mov.l @(loc_8c02ac20,PC),r0
	mov r12,r5
	mov r4,r3
	mov.l @(loc_8c02ac24,PC),r1
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
	mov.l @(loc_8c02ac30,PC),r3
	mov 0x00,r5
	mov.w @(loc_8c02ac1e,PC),r2
	mov.l @(loc_8c02ac34,PC),r1
	mov.l @r3,r4
	mov.l @(loc_8c02ac2c,PC),r6
	jmp @r1
	add r2,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02ac1e:
	#data 0x14b4
	#align4
loc_8c02ac20:
	#data 0x000a74f4
loc_8c02ac24:
	#data 0x0003e544
loc_8c02ac28:
	#data 0x00014d34
loc_8c02ac2c:
	#data 0x000a604c
loc_8c02ac30:
	#data 0x8c1f97a0
loc_8c02ac34:
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
	mov.l @(loc_8c02ad1c,PC),r14
	mov 0x00,r11
	mov.w @(loc_8c02ad14,PC),r0
	mov 0x12,r8
	mov.l @r14,r3
	mov.w @(loc_8c02ad12,PC),r10
	mov.l @(r0,r3),r2
	mova @(loc_8c02ad20,PC),r0
	lds r2,fpul
	mov.l @(loc_8c02ad28,PC),r2
	float fpul,fr3
	fmov fr3,fr12
	fmov fr12,fr2
	fmov fr3,@r15
	fmov @r0,fr4
	mova @(loc_8c02ad24,PC),r0
	fsub fr4,fr2
	fadd fr4,fr12
	fmov fr2,@r15
	mov.w @r2,r3
	tst r3,r3
	bt.s loc_8c02acea
	fmov @r0,fr13
	mov.l @(loc_8c02ad2c,PC),r3
	jsr @r3
	mov 0x03,r4
	mov.w @(loc_8c02ad16,PC),r2
	mov r0,r5
	extu.w r5,r4
	tst r4,r2
	bt loc_8c02acb4
	mov.l @r14,r1
	mov.l @(loc_8c02ad30,PC),r0
	mov r1,r3
	mov.l @(r0,r3),r2
	add 0x04,r0
	mov.l @(r0,r1),r1
	cmp/eq r2,r1
	bt loc_8c02ad4c
	mov.l @(loc_8c02ad30,PC),r0
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
	mov.w @(loc_8c02ad18,PC),r2
	tst r2,r4
	bt loc_8c02ad4c
	mov.l @r14,r4
	mov.l @(loc_8c02ad30,PC),r0
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
	mov.l @(loc_8c02ad30,PC),r0
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
	mov.l @(loc_8c02ad34,PC),r0
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
	mov.l @(loc_8c02ad34,PC),r0
	mov r3,r2
	mov.l @(r0,r2),r1
	add 0xFC,r0
	mov.l r1,@(r0,r3)
	bra loc_8c02ad4c
	nop

;###############################################
loc_8c02ad12:
	#data 0x2710
loc_8c02ad14:
	#data 0x1488
loc_8c02ad16:
	#data 0x2000
loc_8c02ad18:
	#data 0x1000
	#align4
loc_8c02ad1c:
	#data 0x8c1f97a0
loc_8c02ad20:
	#data 0x3e4ccccd
loc_8c02ad24:
	#data 0x41700000
loc_8c02ad28:
	#data 0x8c21529c
loc_8c02ad2c:
	#data bank01.loc_8c01357a
loc_8c02ad30:
	#data 0x000a74f8
loc_8c02ad34:
	#data 0x000a74fc

;----------------------------------------------
loc_8c02ad38:
	mov.l @(loc_8c02adf4,PC),r0
	mov.l @r14,r4
	mov.l @(r0,r4),r4
	add 0xEE,r4
	cmp/pz r4
	bt.s loc_8c02ad48
	mov.l @r14,r2
	add r10,r4

loc_8c02ad48:
	mov.l @(loc_8c02adf8,PC),r0
	mov.l r4,@(r0,r2)

loc_8c02ad4c:
	fldi1 fr1
	fadd fr1,fr1
	mov.l @r14,r13
	mov r11,r12
	mov.l @(loc_8c02adf8,PC),r0
	cmp/ge r8,r12
	fmov @r15,fr2
	mov.l @(r0,r13),r13
	mova @(loc_8c02adfc,PC),r0
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
	mova @(loc_8c02ae00,PC),r0
	fmov @r0,fr14

loc_8c02ad78:
	mova @(loc_8c02ae04,PC),r0
	mov r13,r2
	fmov @r0,fr15
	shll2 r2
	mov.l @(loc_8c02ae08,PC),r0
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
	mov.w @(loc_8c02adf2,PC),r3
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
	mov.w @(loc_8c02adf2,PC),r3
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
	mov.l @(loc_8c02ae08,PC),r3
	mov.l @r14,r4
	mov.l @(loc_8c02ae10,PC),r2
	mov.l @(loc_8c02ae0c,PC),r5
	add r3,r4
	jsr @r2
	add r9,r4
	tst r0,r0
	bf.s loc_8c02ae14
	fmov fr13,fr6
	mov.l @(loc_8c02ae08,PC),r3
	mov.l @r14,r5
	add r3,r5
	add r9,r5
	bra loc_8c02ae1e
	mov 0x07,r4

;###############################################
loc_8c02adf2:
	#data 0x14b4
	#align4
loc_8c02adf4:
	#data 0x000a74f4
loc_8c02adf8:
	#data 0x000a74f8
loc_8c02adfc:
	#data 0x40400000
loc_8c02ae00:
	#data 0x42ae0000
loc_8c02ae04:
	#data 0x42380000
loc_8c02ae08:
	#data 0x00014d34
loc_8c02ae0c:
	#data 0x8c21384a
loc_8c02ae10:
	#data bank12.loc_8c12979c

;----------------------------------------------
loc_8c02ae14:
	mov.l @(loc_8c02aedc,PC),r3
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
	mov.l @(loc_8c02aedc,PC),r3
	mov.l @r14,r4
	mov.l @(loc_8c02aee0,PC),r2
	add r3,r4
	jsr @r2
	add r9,r4
	lds r0,fpul
	fldi0 fr2
	float fpul,fr3
	fcmp/gt fr3,fr2
	bf.s loc_8c02ae4a
	fmov fr3,fr4
	mova @(loc_8c02aee4,PC),r0
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
	mov.l @(loc_8c02aee8,PC),r5
	fmov fr13,fr6
	fmac fr0,fr3,fr2
	fmov fr2,fr5
	fmov fr2,@(r0,r15)
	bsr loc_8c02a7ce
	fmov fr15,fr4
	mov 0x2B,r9
	mov.l @(loc_8c02aeec,PC),r2
	mul.l r9,r13
	mov.l @r14,r3
	mov 0x08,r0
	fmov @(r0,r15),fr3
	add r3,r2
	sts macl,r9
	add r9,r2
	add 0x2A,r2
	mov.b r11,@r2
	mov.l @(loc_8c02aef0,PC),r2
	mov.w @r2,r3
	tst r3,r3
	bf.s loc_8c02ae9a
	fadd fr3,fr15
	mov.l @(loc_8c02aeec,PC),r3
	mov.l @r14,r5
	add r3,r5
	add r9,r5
	bra loc_8c02aea4
	mov 0x06,r4

loc_8c02ae9a:
	mov.l @(loc_8c02aeec,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c02aedc:
	#data 0x00014d34
loc_8c02aee0:
	#data bank12.loc_8c1297c4
loc_8c02aee4:
	#data 0x4f800000
loc_8c02aee8:
	#data bank13.loc_8c1350c8
loc_8c02aeec:
	#data 0x0003e544
loc_8c02aef0:
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
	mov.l @(loc_8c02aff0,PC),r11
	mov 0x00,r5
	mov.l @r11,r3
	tst r3,r3
	bt.s loc_8c02afde
	mov r5,r12
	mov.l @(loc_8c02aff4,PC),r2
	mov r5,r7
	mov.l @(loc_8c02aff8,PC),r1
	mov 0x06,r4
	mov.w @r2,r3
	mov.l @(loc_8c02affc,PC),r13
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
	mov.l @(loc_8c02aff4,PC),r2
	mov 0x00,r7
	mov.l @(loc_8c02b008,PC),r11
	mov 0x00,r9
	mov.w r12,@r2
	add r13,r9
	mov.l @(loc_8c02b000,PC),r12
	add r11,r7
	mov.l @(loc_8c02b004,PC),r3
	mov 0x1E,r14
	mov r7,r10
	mov r5,r6
	mov.w r5,@r3
	mov r7,r8
	mov.w r5,@r12

loc_8c02af6e:
	mov.l @(loc_8c02aff4,PC),r2
	mov r6,r7
	shll2 r7
	mov.w @r2,r3
	add r13,r7
	extu.w r3,r3
	mov.l r3,@r15
	mov.l @(loc_8c02aff8,PC),r3
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
	mov.l @(loc_8c02b004,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02aff0:
	#data 0x8c212bf0
loc_8c02aff4:
	#data 0x8c212f04
loc_8c02aff8:
	#data 0x8c212f06
loc_8c02affc:
	#data bank14.loc_8c1498c0
loc_8c02b000:
	#data 0x8c212f08
loc_8c02b004:
	#data 0x8c212f0a
loc_8c02b008:
	#data 0x8c1f9cc0

;==============================================
loc_8c02b00c:
	mov.l @(loc_8c02b160,PC),r7
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
	mov.w @(loc_8c02b15e,PC),r3
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
	mov.l @(loc_8c02b164,PC),r5
	add 0x1C,r1
	extu.b r0,r0
	mov r0,r3
	shll2 r0
	shll r0
	mov r5,r2
	add r3,r0
	mov.l @(loc_8c02b168,PC),r3
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
	mov.l @(loc_8c02b168,PC),r3
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
	mov.l @(loc_8c02b168,PC),r3
	shll2 r0
	add r0,r2
	add 0x18,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c02b16c,PC),r5
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
	mov.l @(loc_8c02b170,PC),r3
	mov 0x06,r12
	mov.b r6,@(r0,r7)
	mov 0x16,r0
	mov.l @(loc_8c02b174,PC),r1
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
loc_8c02b15e:
	#data 0x0100
	#align4
loc_8c02b160:
	#data 0x8c1f9b94
loc_8c02b164:
	#data bank14.loc_8c149878
loc_8c02b168:
	#data bank12.loc_8c1294c8
loc_8c02b16c:
	#data 0x8c212bfc
loc_8c02b170:
	#data bank14.loc_8c149874
loc_8c02b174:
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
	mov.l @(loc_8c02b280,PC),r13
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
	mov.w @(loc_8c02b276,PC),r0
	mov.b r10,@(r0,r13)
	mov r10,r0
	nop
	mov.w r0,@(0xE,r13)
	mov.w @(loc_8c02b278,PC),r0
	mov.b r10,@(r0,r13)
	add 0x01,r0
	mov.b r10,@(r0,r13)
	mov.w @(loc_8c02b27a,PC),r0
	mov.b r10,@(r0,r13)
	mov.l @(0x8,r4),r3
	tst r3,r3
	bt loc_8c02b260
	mov.l @(0x8,r4),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02b1ec
	mov.w @(loc_8c02b27c,PC),r5
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
	mov.l @(loc_8c02b284,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02b276:
	#data 0x0348
loc_8c02b278:
	#data 0x0155
loc_8c02b27a:
	#data 0x0347
loc_8c02b27c:
	#data 0x0140
	#align4
loc_8c02b280:
	#data 0x8c1f97a8
loc_8c02b284:
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
	mov.l @(loc_8c02b3a8,PC),r12
	mov 0x01,r10
	mov.l r8,@-r15
	mov 0x4B,r8
	mov.l @(loc_8c02b3a4,PC),r13

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
	mov.l @(loc_8c02b3a4,PC),r4
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
	mov.l @(loc_8c02b3ac,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x00,r11
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c02b35e
	mov r11,r14
	mov.l @(loc_8c02b3b0,PC),r3
	jsr @r3
	mov 0x03,r4
	mov.w @(loc_8c02b3a0,PC),r2
	extu.w r0,r0
	tst r2,r0
	bt loc_8c02b35e
	mov 0x16,r0
	mov 0x01,r1
	mov.b r1,@(r0,r13)

loc_8c02b35e:
	mov.l @(loc_8c02b3b4,PC),r3
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
	mov.l @(loc_8c02b3b8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c02b3c0
	mov.l @(loc_8c02b3bc,PC),r3
	jsr @r3
	mov 0x39,r4
	mov.l @(loc_8c02b3a4,PC),r4
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
loc_8c02b3a0:
	#data 0x3ff0
	#align4
loc_8c02b3a4:
	#data 0x8c1f9bd4
loc_8c02b3a8:
	#data bank14.loc_8c1498d8
loc_8c02b3ac:
	#data 0x8c1f9b94
loc_8c02b3b0:
	#data loc_8c02d1c0
loc_8c02b3b4:
	#data 0x8c212bf0
loc_8c02b3b8:
	#data bank14.loc_8c149874
loc_8c02b3bc:
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c02b3c0:
	bsr loc_8c02b882
	nop
	mov r0,r14

loc_8c02b3c6:
	mov 0x16,r0
	mov.l @(loc_8c02b49c,PC),r2
	mov.b @(r0,r13),r3
	mov.l @(loc_8c02b4a0,PC),r12
	mov.b r3,@r2
	mov.l @(loc_8c02b4a4,PC),r3
	jsr @r3
	nop
	cmp/pz r0
	bf.s loc_8c02b41c
	mov r0,r4
	mov.w @(loc_8c02b498,PC),r0
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
	mov.w @(loc_8c02b498,PC),r0
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
	mov.l @(loc_8c02b4a0,PC),r4
	mov 0x01,r6
	mov.l @(loc_8c02b4a8,PC),r2
	mov.w @(loc_8c02b49a,PC),r5
	jsr @r2
	add r12,r5
	tst r14,r14
	bf loc_8c02b468
	mova @(loc_8c02b4b0,PC),r0
	mov.l @(loc_8c02b4b4,PC),r3
	fmov @r0,fr3
	mov 0x24,r0
	fmov @(r0,r13),fr6
	mov 0x20,r0
	fmov @(r0,r13),fr1
	mova @(loc_8c02b4b8,PC),r0
	fmov @r3,fr2
	fadd fr3,fr6
	mov.l @(loc_8c02b4bc,PC),r2
	fsub fr2,fr1
	fmov @r0,fr2
	mov 0x1C,r0
	mov.w @(loc_8c02b49a,PC),r5
	fmov @(r0,r13),fr0
	mova @(loc_8c02b4c0,PC),r0
	mov.l @(loc_8c02b4c4,PC),r1
	add r12,r5
	fmov fr1,fr5
	fadd fr2,fr5
	fmov @r2,fr1
	mov.l @(loc_8c02b4ac,PC),r4
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
	mov.l @(loc_8c02b4a8,PC),r3
	mov.l @(loc_8c02b4a0,PC),r4
	jsr @r3
	mov 0x00,r6
	mov.l @(0x10,r12),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c02b480
	mov 0xFF,r14

loc_8c02b480:
	mov.l @(loc_8c02b4cc,PC),r3
	mov.l @(loc_8c02b4c8,PC),r4
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02b498:
	#data 0x0347
loc_8c02b49a:
	#data 0x0348
	#align4
loc_8c02b49c:
	#data bank14.loc_8c149874
loc_8c02b4a0:
	#data 0x8c1f97a8
loc_8c02b4a4:
	#data loc_8c02d14e
loc_8c02b4a8:
	#data loc_8c02c924
loc_8c02b4ac:
	#data 0xff000000
loc_8c02b4b0:
	#data 0xbdcccccd
loc_8c02b4b4:
	#data 0x8c212c10
loc_8c02b4b8:
	#data 0x40c00000
loc_8c02b4bc:
	#data 0x8c212c0c
loc_8c02b4c0:
	#data 0x41000000
loc_8c02b4c4:
	#data loc_8c02a53a
loc_8c02b4c8:
	#data loc_8c02d214
loc_8c02b4cc:
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
	mov.l @(loc_8c02b64c,PC),r8
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
	mov.l @(loc_8c02b650,PC),r11
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
	mov.l @(loc_8c02b64c,PC),r12
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
	mov.l @(loc_8c02b654,PC),r3
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
	mov.l @(loc_8c02b658,PC),r3
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
loc_8c02b64c:
	#data 0x8c1f9b94
loc_8c02b650:
	#data bank14.loc_8c149874
loc_8c02b654:
	#data 0x0000ffef
loc_8c02b658:
	#data 0x0000ffdf

;----------------------------------------------
loc_8c02b65c:
	tst r5,r5
	bf loc_8c02b676
	mov.l @(loc_8c02b724,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x39,r0
	bf loc_8c02b676
	mov.l @(loc_8c02b728,PC),r3
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
	mov.l @(loc_8c02b72c,PC),r3
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
	mov.w @(loc_8c02b720,PC),r3
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
	mov.w @(loc_8c02b722,PC),r2
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
	mov.l @(loc_8c02b724,PC),r2
	mov.w @(loc_8c02b722,PC),r1
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
loc_8c02b720:
	#data 0x0100
loc_8c02b722:
	#data 0x0088
	#align4
loc_8c02b724:
	#data 0x8c1f9ba4
loc_8c02b728:
	#data 0x8c1f9bab
loc_8c02b72c:
	#data 0x8c1f9b9c

;----------------------------------------------
loc_8c02b730:
	tst r4,r5
	bf loc_8c02b744
	mov.l @(loc_8c02b810,PC),r3
	mov.w @(loc_8c02b80e,PC),r1
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
	mov.l @(loc_8c02b814,PC),r2
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
	mov.l @(loc_8c02b810,PC),r0
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
	mov.l @(loc_8c02b818,PC),r4
	mov 0x17,r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c02b7f4
	mov.w @(0x6,r4),r0
	mov.l @(loc_8c02b81c,PC),r3
	mov.l @(loc_8c02b820,PC),r2
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	or 0x02,r0
	jsr @r2
	mov.w r0,@(0x6,r4)
	cmp/pz r0
	bf loc_8c02b87c
	mov.l @(loc_8c02b824,PC),r4
	bra loc_8c02bd6c
	lds.l @r15+,pr

loc_8c02b7f4:
	mov 0x18,r0
	mov.b @(r0,r4),r5
	extu.b r5,r3
	tst r3,r3
	bf loc_8c02b82c
	mov.w @(0x6,r4),r0
	mov.l @(loc_8c02b828,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	or 0x0A,r0
	bra loc_8c02b87c
	mov.w r0,@(0x6,r4)

;###############################################
loc_8c02b80e:
	#data 0x0088
	#align4
loc_8c02b810:
	#data 0x8c1f9ba4
loc_8c02b814:
	#data bank12.loc_8c1292d4
loc_8c02b818:
	#data 0x8c1f9b94
loc_8c02b81c:
	#data 0x0000fff2
loc_8c02b820:
	#data loc_8c02d14e
loc_8c02b824:
	#data 0x000186a0
loc_8c02b828:
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
	mov.l @(loc_8c02b904,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	bra loc_8c02b856
	or 0x06,r0

loc_8c02b84a:
	mov.w @(0x6,r4),r0
	mov.l @(loc_8c02b908,PC),r3
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
	mov.l @(loc_8c02b90c,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	bra loc_8c02b87a
	or 0x07,r0

loc_8c02b86e:
	mov.w @(0x6,r4),r0
	mov.l @(loc_8c02b910,PC),r3
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
	mov.l @(loc_8c02b918,PC),r3
	mov 0x00,r14
	mov.l @(loc_8c02b914,PC),r13
	jsr @r3
	mov 0x03,r4
	mov.w @(loc_8c02b8fa,PC),r2
	mov r0,r4
	extu.w r4,r11
	mov.l @(loc_8c02b91c,PC),r12
	tst r11,r2
	bf loc_8c02b8aa
	bra loc_8c02b9ba
	nop

loc_8c02b8aa:
	mov.b @r12,r0
	mov r11,r3
	mov.w @(loc_8c02b8fc,PC),r5
	mov r12,r6
	mov.b r0,@(0x2,r12)
	mov.b @(0x1,r12),r0
	tst r5,r3
	mov.w @(loc_8c02b8fe,PC),r4
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
	mov.w @(loc_8c02b900,PC),r6
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
loc_8c02b8fa:
	#data 0x3c00
loc_8c02b8fc:
	#data 0x2000
loc_8c02b8fe:
	#data 0x1000
loc_8c02b900:
	#data 0x0800
	#align4
loc_8c02b904:
	#data 0x0000fff6
loc_8c02b908:
	#data 0x0000fff8
loc_8c02b90c:
	#data 0x0000fff7
loc_8c02b910:
	#data 0x0000fff9
loc_8c02b914:
	#data bank04.loc_8c04257c
loc_8c02b918:
	#data loc_8c02d1c0
loc_8c02b91c:
	#data 0x8c1f9bd4

;----------------------------------------------
loc_8c02b920:
	mov.w @(loc_8c02ba0e,PC),r1
	tst r11,r1
	bt loc_8c02b92e
	mov.b @r10,r3
	mov.b @(0x2,r10),r0
	add r3,r0
	mov.b r0,@r7

loc_8c02b92e:
	mov r12,r7
	mov.b @r7,r1
	mov.l @(loc_8c02ba10,PC),r3
	add 0x0F,r1
	jsr @r3
	mov 0x0F,r0
	mov.b r0,@r7
	add 0x01,r7
	mov.b @r7,r1
	mov.l @(loc_8c02ba10,PC),r3
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
	mov.l @(loc_8c02ba14,PC),r10
	mov.w @(0x6,r10),r0
	extu.w r0,r0
	tst 0x04,r0
	bt loc_8c02b9d4
	mov.w @(0x6,r10),r0
	mov 0x00,r2
	mov.l @(loc_8c02ba18,PC),r3
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
loc_8c02ba0e:
	#data 0x0400
	#align4
loc_8c02ba10:
	#data bank12.loc_8c1292d4
loc_8c02ba14:
	#data 0x8c1f9b94
loc_8c02ba18:
	#data 0x0000fffb

;----------------------------------------------
loc_8c02ba1c:
	mov.w @(loc_8c02bae0,PC),r3
	tst r11,r3
	bt loc_8c02ba36
	mov.l @(loc_8c02bae8,PC),r4
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
	mov.l @(loc_8c02baec,PC),r4
	bra loc_8c02ba4a
	nop

loc_8c02ba42:
	mov.w @(loc_8c02bae2,PC),r2
	tst r11,r2
	bt loc_8c02ba52
	mov.l @(loc_8c02baf0,PC),r4

loc_8c02ba4a:
	bsr loc_8c02bd6c
	nop
	bra loc_8c02bab6
	mov r0,r14

loc_8c02ba52:
	mov.w @(loc_8c02bae4,PC),r2
	tst r2,r11
	bt loc_8c02bab6
	mov 0x18,r0
	mov.b @(r0,r10),r4
	extu.b r4,r0
	cmp/eq 0x01,r0
	bf.s loc_8c02ba6e
	mov r0,r4
	mov.l @(loc_8c02baf4,PC),r4
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
	mov.l @(loc_8c02baf8,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x40,r0
	bf loc_8c02ba8e
	mov.l @(loc_8c02bafc,PC),r4
	bsr loc_8c02bd6c
	nop

loc_8c02ba8a:
	bra loc_8c02bab2
	mov r0,r14

loc_8c02ba8e:
	tst r4,r4
	bf loc_8c02bab2
	mov.l @(loc_8c02baf8,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c02bab2
	mov.w @(0x8,r10),r0
	extu.w r0,r0
	tst 0x08,r0
	bt loc_8c02baaa
	mov.l @(loc_8c02bb00,PC),r4
	bra loc_8c02baac
	nop

loc_8c02baaa:
	mov.l @(loc_8c02bb04,PC),r4

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
	mov.l @(loc_8c02bb08,PC),r2
	shll2 r0
	mov r5,r3
	sub r3,r0
	add r2,r0
	mov.b @(r0,r4),r0
	rts
	extu.b r0,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02bae0:
	#data 0x0100
loc_8c02bae2:
	#data 0x0200
loc_8c02bae4:
	#data 0x0080
	#align4
loc_8c02bae8:
	#data 0x000186a0
loc_8c02baec:
	#data 0x000186cb
loc_8c02baf0:
	#data 0x000186cc
loc_8c02baf4:
	#data 0x000186c7
loc_8c02baf8:
	#data 0x8c1f9b9a
loc_8c02bafc:
	#data 0x000186c9
loc_8c02bb00:
	#data 0x000186c6
loc_8c02bb04:
	#data 0x000186c8
loc_8c02bb08:
	#data bank14.loc_8c1498f9

;==============================================
loc_8c02bb0c:
	mov.l @(loc_8c02bbcc,PC),r3
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
	mov.l @(loc_8c02bbd0,PC),r3
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
	mov.l @(loc_8c02bbcc,PC),r2
	mov.w @r2,r0
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c02bb80
	mov.l @(loc_8c02bbd4,PC),r1
	cmp/ge r1,r4
	bf loc_8c02bb70
	mov.l @(loc_8c02bbd8,PC),r0
	cmp/gt r0,r4
	bt loc_8c02bb70
	mov.w @(loc_8c02bbc6,PC),r2
	bra loc_8c02bb80
	add r2,r4

loc_8c02bb70:
	mov.l @(loc_8c02bbdc,PC),r1
	cmp/ge r1,r4
	bf loc_8c02bb80
	mov.l @(loc_8c02bbe0,PC),r2
	cmp/gt r2,r4
	bt loc_8c02bb80
	mov.w @(loc_8c02bbc8,PC),r1
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
	mov.l @(loc_8c02bbcc,PC),r3
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
	mov.l @(loc_8c02bbe4,PC),r0
	bra loc_8c02bbc2
	nop

loc_8c02bbb4:
	mov r14,r2
	tst r6,r2
	bf loc_8c02bbec
	mov 0x40,r1
	tst r14,r1
	bt loc_8c02bbec
	mov.l @(loc_8c02bbe8,PC),r0

loc_8c02bbc2:
	bra loc_8c02bc02
	mov.l @(r0,r5),r4

;###############################################
loc_8c02bbc6:
	#data 0x00a1
loc_8c02bbc8:
	#data 0x00a2
	#align4
loc_8c02bbcc:
	#data 0x8c1f9b9a
loc_8c02bbd0:
	#data 0x000186d1
loc_8c02bbd4:
	#data 0x0000829f
loc_8c02bbd8:
	#data 0x000082dd
loc_8c02bbdc:
	#data 0x000082de
loc_8c02bbe0:
	#data 0x000082f1
loc_8c02bbe4:
	#data bank14.loc_8c14aa08
loc_8c02bbe8:
	#data bank14.loc_8c14a7c8

;----------------------------------------------
loc_8c02bbec:
	mov r14,r2
	tst r6,r2
	bt loc_8c02bbfe
	mov 0x40,r1
	tst r14,r1
	bf loc_8c02bbfe
	mov.l @(loc_8c02bd30,PC),r0
	bra loc_8c02bc00
	nop

loc_8c02bbfe:
	mov.l @(loc_8c02bd34,PC),r0

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
	mov.l @(loc_8c02bd38,PC),r0
	bra loc_8c02bc4e
	nop

loc_8c02bc2a:
	mov r14,r2
	tst r6,r2
	bf loc_8c02bc3c
	mov 0x40,r1
	tst r14,r1
	bt loc_8c02bc3c
	mov.l @(loc_8c02bd3c,PC),r0
	bra loc_8c02bc4e
	nop

loc_8c02bc3c:
	tst r14,r6
	bt loc_8c02bc4c
	mov 0x40,r3
	tst r14,r3
	bf loc_8c02bc4c
	mov.l @(loc_8c02bd40,PC),r0
	bra loc_8c02bc4e
	nop

loc_8c02bc4c:
	mov.l @(loc_8c02bd44,PC),r0

loc_8c02bc4e:
	mov.l @(r0,r5),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02bc54:
	mov.l @(loc_8c02bd48,PC),r3
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
	mov.l @(loc_8c02bd4c,PC),r0
	bra loc_8c02bc88
	nop

loc_8c02bc86:
	mov.l @(loc_8c02bd50,PC),r0

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
	mov.l @(loc_8c02bd54,PC),r0
	bra loc_8c02bcc0
	nop

loc_8c02bcbe:
	mov.l @(loc_8c02bd58,PC),r0

loc_8c02bcc0:
	mov.l @(r0,r5),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02bcc6:
	mov.l @(loc_8c02bd48,PC),r3
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
	mov.l @(loc_8c02bd5c,PC),r0
	bra loc_8c02bcf0
	nop

loc_8c02bcee:
	mov.l @(loc_8c02bd60,PC),r0

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
	mov.l @(loc_8c02bd64,PC),r0
	rts
	nop

;==============================================
loc_8c02bd0c:
	mov.l @(loc_8c02bd68,PC),r0
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
	mov.l @(loc_8c02bd64,PC),r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c02bd30:
	#data bank14.loc_8c14a588
loc_8c02bd34:
	#data bank14.loc_8c14a348
loc_8c02bd38:
	#data bank14.loc_8c14a108
loc_8c02bd3c:
	#data bank14.loc_8c149ec8
loc_8c02bd40:
	#data bank14.loc_8c149c88
loc_8c02bd44:
	#data bank14.loc_8c149a48
loc_8c02bd48:
	#data 0x8c1f9b9a
loc_8c02bd4c:
	#data bank14.loc_8c14b44c
loc_8c02bd50:
	#data bank14.loc_8c14b320
loc_8c02bd54:
	#data bank14.loc_8c14b1f4
loc_8c02bd58:
	#data bank14.loc_8c14b0c8
loc_8c02bd5c:
	#data bank14.loc_8c14ae88
loc_8c02bd60:
	#data bank14.loc_8c14ac48
loc_8c02bd64:
	#data 0x000186d1
loc_8c02bd68:
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
	mov.w @(loc_8c02be72,PC),r0
	add r0,r15
	mov.w @(loc_8c02be74,PC),r0
	mov r4,r11
	mov.l @(loc_8c02be7c,PC),r3
	mov r15,r1
	mov.l @(loc_8c02be78,PC),r2
	jsr @r3
	add 0x50,r1
	mov.l @(loc_8c02be7c,PC),r3
	mov r15,r1
	mov.l @(loc_8c02be80,PC),r2
	jsr @r3
	mov 0x50,r0
	mov.l @(loc_8c02be88,PC),r12
	mov 0x10,r10
	mov.l @(loc_8c02be8c,PC),r1
	mov 0x08,r7
	mov.l @(loc_8c02be90,PC),r3
	mov 0x00,r14
	mov.w @(0x8,r12),r0
	mov 0x01,r13
	mov.w @r1,r4
	mov.b @r3,r5
	extu.w r0,r6
	mov.l @(loc_8c02be94,PC),r2
	mov.l @(loc_8c02be84,PC),r9
	mov r11,r0
	nop
	cmp/eq 0x00,r0
	bf.s loc_8c02bdc0
	mov.w @r2,r8
	bra loc_8c02c772
	nop

loc_8c02bdc0:
	mov.l @(loc_8c02be98,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdca
	bra loc_8c02c012
	nop

loc_8c02bdca:
	mov.l @(loc_8c02be9c,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdd4
	bra loc_8c02c012
	nop

loc_8c02bdd4:
	mov.l @(loc_8c02be84,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdde
	bra loc_8c02c012
	nop

loc_8c02bdde:
	mov.l @(loc_8c02bea0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bde8
	bra loc_8c02c160
	nop

loc_8c02bde8:
	mov.l @(loc_8c02bea4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdf2
	bra loc_8c02c214
	nop

loc_8c02bdf2:
	mov.l @(loc_8c02bea8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bdfc
	bra loc_8c02c772
	nop

loc_8c02bdfc:
	mov.l @(loc_8c02beac,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be06
	bra loc_8c02c2b6
	nop

loc_8c02be06:
	mov.l @(loc_8c02beb0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be10
	bra loc_8c02c772
	nop

loc_8c02be10:
	mov.l @(loc_8c02beb4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be1a
	bra loc_8c02c772
	nop

loc_8c02be1a:
	mov.l @(loc_8c02beb8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be24
	bra loc_8c02c772
	nop

loc_8c02be24:
	mov.l @(loc_8c02bebc,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be2e
	bra loc_8c02c772
	nop

loc_8c02be2e:
	mov.l @(loc_8c02bec0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be38
	bra loc_8c02c772
	nop

loc_8c02be38:
	mov.l @(loc_8c02bec4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be42
	bra loc_8c02c772
	nop

loc_8c02be42:
	mov.l @(loc_8c02bec8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be4c
	bra loc_8c02c772
	nop

loc_8c02be4c:
	mov.l @(loc_8c02becc,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be56
	bra loc_8c02c772
	nop

loc_8c02be56:
	mov.l @(loc_8c02bed0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be60
	bra loc_8c02c772
	nop

loc_8c02be60:
	mov.l @(loc_8c02bed4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02be6a
	bra loc_8c02c772
	nop

loc_8c02be6a:
	mov.l @(loc_8c02bed8,PC),r1
	cmp/eq r1,r0
	bra loc_8c02bedc
	nop

;###############################################
loc_8c02be72:
	#data 0xff10
loc_8c02be74:
	#data 0x00a0
	#align4
loc_8c02be78:
	#data bank13.loc_8c1350cc
loc_8c02be7c:
	#data bank12.loc_8c129560
loc_8c02be80:
	#data bank13.loc_8c13516c
loc_8c02be84:
	#data 0x000186a0
loc_8c02be88:
	#data 0x8c1f9b94
loc_8c02be8c:
	#data 0x8c1f97aa
loc_8c02be90:
	#data 0x8c1f98fd
loc_8c02be94:
	#data 0x8c1f97ac
loc_8c02be98:
	#data 0x000186ca
loc_8c02be9c:
	#data 0x000186cd
loc_8c02bea0:
	#data 0x000186a1
loc_8c02bea4:
	#data 0x000186a2
loc_8c02bea8:
	#data 0x000186a3
loc_8c02beac:
	#data 0x000186a4
loc_8c02beb0:
	#data 0x000186a5
loc_8c02beb4:
	#data 0x000186a6
loc_8c02beb8:
	#data 0x000186a7
loc_8c02bebc:
	#data 0x000186a8
loc_8c02bec0:
	#data 0x000186a9
loc_8c02bec4:
	#data 0x000186aa
loc_8c02bec8:
	#data 0x000186ab
loc_8c02becc:
	#data 0x000186ac
loc_8c02bed0:
	#data 0x000186ad
loc_8c02bed4:
	#data 0x000186ae
loc_8c02bed8:
	#data 0x000186af

;----------------------------------------------
loc_8c02bedc:
	bf loc_8c02bee2
	bra loc_8c02c772
	nop

loc_8c02bee2:
	mov.l @(loc_8c02c0c4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02beec
	bra loc_8c02c772
	nop

loc_8c02beec:
	mov.l @(loc_8c02c0c8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bef6
	bra loc_8c02c772
	nop

loc_8c02bef6:
	mov.l @(loc_8c02c0cc,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf00
	bra loc_8c02c772
	nop

loc_8c02bf00:
	mov.l @(loc_8c02c0d0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf0a
	bra loc_8c02c772
	nop

loc_8c02bf0a:
	mov.l @(loc_8c02c0d4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf14
	bra loc_8c02c772
	nop

loc_8c02bf14:
	mov.l @(loc_8c02c0d8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf1e
	bra loc_8c02c772
	nop
 
loc_8c02bf1e:
	mov.l @(loc_8c02c0dc,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf28
	bra loc_8c02c772
	nop

loc_8c02bf28:
	mov.l @(loc_8c02c0e0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf32
	bra loc_8c02c772
	nop

loc_8c02bf32:
	mov.l @(loc_8c02c0e4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf3c
	bra loc_8c02c772
	nop

loc_8c02bf3c:
	mov.l @(loc_8c02c0e8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf46
	bra loc_8c02c2f0
	nop

loc_8c02bf46:
	mov.l @(loc_8c02c0ec,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf50
	bra loc_8c02c772
	nop

loc_8c02bf50:
	mov.l @(loc_8c02c0f0,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf5a
	bra loc_8c02c772
	nop

loc_8c02bf5a:
	mov.l @(loc_8c02c0f4,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf64
	bra loc_8c02c3c0
	nop

loc_8c02bf64:
	mov.l @(loc_8c02c0f8,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf6e
	bra loc_8c02c408
	nop

loc_8c02bf6e:
	mov.l @(loc_8c02c0fc,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf78
	bra loc_8c02c440
	nop

loc_8c02bf78:
	mov.l @(loc_8c02c100,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf82
	bra loc_8c02c44c
	nop

loc_8c02bf82:
	mov.l @(loc_8c02c104,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf8c
	bra loc_8c02c772
	nop

loc_8c02bf8c:
	mov.l @(loc_8c02c108,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bf96
	bra loc_8c02c772
	nop

loc_8c02bf96:
	mov.l @(loc_8c02c10c,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfa0
	bra loc_8c02c45a
	nop

loc_8c02bfa0:
	mov.l @(loc_8c02c110,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfaa
	bra loc_8c02c462
	nop

loc_8c02bfaa:
	mov.l @(loc_8c02c114,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfb4
	bra loc_8c02c48e
	nop

loc_8c02bfb4:
	mov.l @(loc_8c02c118,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfbe
	bra loc_8c02c594
	nop

loc_8c02bfbe:
	mov.l @(loc_8c02c11c,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfc8
	bra loc_8c02c5aa
	nop

loc_8c02bfc8:
	mov.l @(loc_8c02c120,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfd2
	bra loc_8c02c5c4
	nop

loc_8c02bfd2:
	mov.l @(loc_8c02c124,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfdc
	bra loc_8c02c5d2
	nop

loc_8c02bfdc:
	mov.l @(loc_8c02c128,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bfe6
	bra loc_8c02c608
	nop

loc_8c02bfe6:
	mov.l @(loc_8c02c12c,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bff0
	bra loc_8c02c644
	nop

loc_8c02bff0:
	mov.l @(loc_8c02c130,PC),r1
	cmp/eq r1,r0
	bf loc_8c02bffa
	bra loc_8c02c67c
	nop

loc_8c02bffa:
	mov.l @(loc_8c02c134,PC),r1
	cmp/eq r1,r0
	bf loc_8c02c004
	bra loc_8c02c68a
	nop

loc_8c02c004:
	mov.l @(loc_8c02c138,PC),r1
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
	mov.l @(loc_8c02c13c,PC),r1
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
	mov.l @(loc_8c02c13c,PC),r3
	mov r4,r5
	shll2 r5
	add r3,r5
	mov.b @r5,r0
	add 0x01,r4
	and 0x0F,r0
	or 0x50,r0
	mov.b r0,@r5

loc_8c02c04c:
	mov.l @(loc_8c02c140,PC),r3
	mov.w @r3,r2
	cmp/ge r2,r4
	bf loc_8c02c03a
	mov.l @(loc_8c02c144,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c02c064
	mov.l @(loc_8c02c148,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c02c076
 
loc_8c02c064:
	mov.l @(loc_8c02c150,PC),r0
	mov.l @(loc_8c02c14c,PC),r2
	mov.b @r0,r1
	mov.b @r2,r3
	sub r1,r3
	mov.l @(loc_8c02c154,PC),r1
	mov.w @r1,r2
	sub r3,r2
	mov.w r2,@r1

loc_8c02c076:
	mov.l @(loc_8c02c148,PC),r0
	mov 0x00,r3
	mov r3,r2
	mov.l @(loc_8c02c144,PC),r1
	mov.b r3,@r1
	mov.b r2,@r0
	mov.l @(loc_8c02c158,PC),r2
	bra loc_8c02c0a0
	mov.b r3,@r2

loc_8c02c088:
	mov.l @(loc_8c02c140,PC),r1
	mov.l @(loc_8c02c13c,PC),r3
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
	mov.l @(loc_8c02c15c,PC),r0
	mov.l @(loc_8c02c140,PC),r3
	mov.w @r0,r1
	mov.w @r3,r4
	cmp/ge r1,r4
	bf loc_8c02c0b0
	bra loc_8c02c772
	nop

loc_8c02c0b0:
	mov.l @(loc_8c02c13c,PC),r1
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
loc_8c02c0c4:
	#data 0x000186b0
loc_8c02c0c8:
	#data 0x000186b1
loc_8c02c0cc:
	#data 0x000186b2
loc_8c02c0d0:
	#data 0x000186b3
loc_8c02c0d4:
	#data 0x000186b4
loc_8c02c0d8:
	#data 0x000186b5
loc_8c02c0dc:
	#data 0x000186b6
loc_8c02c0e0:
	#data 0x000186b7
loc_8c02c0e4:
	#data 0x000186b8
loc_8c02c0e8:
	#data 0x000186b9
loc_8c02c0ec:
	#data 0x000186ba
loc_8c02c0f0:
	#data 0x000186bb
loc_8c02c0f4:
	#data 0x000186bc
loc_8c02c0f8:
	#data 0x000186bd
loc_8c02c0fc:
	#data 0x000186be
loc_8c02c100:
	#data 0x000186bf
loc_8c02c104:
	#data 0x000186c0
loc_8c02c108:
	#data 0x000186c1
loc_8c02c10c:
	#data 0x000186c2
loc_8c02c110:
	#data 0x000186c3
loc_8c02c114:
	#data 0x000186c5
loc_8c02c118:
	#data 0x000186c6
loc_8c02c11c:
	#data 0x000186c7
loc_8c02c120:
	#data 0x000186c8
loc_8c02c124:
	#data 0x000186c9
loc_8c02c128:
	#data 0x000186cb
loc_8c02c12c:
	#data 0x000186cc
loc_8c02c130:
	#data 0x000186cf
loc_8c02c134:
	#data 0x000186d0
loc_8c02c138:
	#data 0x000186d1
loc_8c02c13c:
	#data 0x8c1f97bc
loc_8c02c140:
	#data 0x8c1f97ac
loc_8c02c144:
	#data 0x8c1f98fd
loc_8c02c148:
	#data 0x8c1f98fe
loc_8c02c14c:
	#data 0x8c1f98fc
loc_8c02c150:
	#data 0x8c1f98ff
loc_8c02c154:
	#data 0x8c1f97b6
loc_8c02c158:
	#data 0x8c1f9aef
loc_8c02c15c:
	#data 0x8c1f97aa

;----------------------------------------------
loc_8c02c160:
	mov.l @(loc_8c02c35c,PC),r1
	jsr @r1
	nop
	cmp/pz r0
	bt.s loc_8c02c170
	mov r0,r4
	bra loc_8c02c772
	nop

loc_8c02c170:
	mov.l @(loc_8c02c360,PC),r2
	mov 0x00,r5
	mov.w r4,@r2
	bra loc_8c02c192
	mov r5,r6

loc_8c02c17a:
	mov r5,r0
	nop
	mov.l @(loc_8c02c364,PC),r1
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
	mov.l @(loc_8c02c368,PC),r3
	mov r5,r7
	add r4,r7
	mov.w @r3,r2
	cmp/ge r2,r7
	bt loc_8c02c1ca
	mov r7,r0
	nop
	mov.l @(loc_8c02c364,PC),r1
	shll2 r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c02c17a
	bra loc_8c02c1ca
	nop

loc_8c02c1b2:
	mov r5,r2
	mov.l @(loc_8c02c364,PC),r7
	add r4,r2
	mov r4,r1
	shll2 r2
	mov.l @(loc_8c02c36c,PC),r3
	shll2 r1
	add r7,r2
	add r7,r1
	jsr @r3
	mov 0x04,r0
	add 0x01,r4

loc_8c02c1ca:
	mov.l @(loc_8c02c368,PC),r3
	mov.w @r3,r2
	add 0xFF,r2
	cmp/ge r2,r4
	bf loc_8c02c1b2
	mov.l @(loc_8c02c368,PC),r2
	mov 0x00,r1
	mov.l @(loc_8c02c364,PC),r0
	mov.w @r2,r3
	add 0xFF,r3
	shll2 r3
	mov.b r1,@(r0,r3)
	mov.w @r2,r3
	sub r5,r3
	mov.w r3,@r2
	mov.l @(loc_8c02c370,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c02c1f8
	mov.l @(loc_8c02c374,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c02c208

loc_8c02c1f8:
	mov.l @(loc_8c02c37c,PC),r3
	mov.l @(loc_8c02c378,PC),r1
	mov.w @r3,r0
	mov.b @r1,r2
	sub r2,r0
	mov.w r0,@r3
	bra loc_8c02c226
	nop

loc_8c02c208:
	mov.l @(loc_8c02c37c,PC),r3
	mov.w @r3,r2
	sub r6,r2
	mov.w r2,@r3
	bra loc_8c02c772
	nop

loc_8c02c214:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c234
	mov.l @(loc_8c02c380,PC),r1
	mov 0x06,r3
	mov.l @(loc_8c02c384,PC),r4
	mov.b r3,@r1
	bsr loc_8c02bd6c
	nop

loc_8c02c226:
	mov.l @(loc_8c02c370,PC),r3
	mov 0x00,r2
	mov.l @(loc_8c02c374,PC),r0
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
	mov.l @(loc_8c02c360,PC),r2
	mov.w @r2,r3
	cmp/gt r4,r3
	bt loc_8c02c24c
	bra loc_8c02c772
	nop

loc_8c02c24c:
	mov.l @(loc_8c02c37c,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	mov.w r3,@r1
	add 0xF6,r1
	mov.w @r1,r0
	mov.l @(loc_8c02c364,PC),r3
	add 0xFF,r0
	shll2 r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c02c26e
	mov.l @(loc_8c02c37c,PC),r2
	mov.w @r2,r0
	add 0xFF,r0
	mov.w r0,@r2

loc_8c02c26e:
	mov.l @(loc_8c02c368,PC),r0
	mov.l @(loc_8c02c360,PC),r2
	mov.w @r0,r1
	mov.w @r2,r3
	cmp/eq r1,r3
	bt loc_8c02c2a0
	mov.l @(loc_8c02c360,PC),r1
	bra loc_8c02c298
	mov.w @r1,r4

loc_8c02c280:
	mov r4,r1
	mov r4,r2
	add 0xFF,r1
	mov.l @(loc_8c02c364,PC),r5
	shll2 r2
	mov.l @(loc_8c02c36c,PC),r3
	shll2 r1
	add r5,r2
	add r5,r1
	jsr @r3
	mov 0x04,r0
	add 0x01,r4

loc_8c02c298:
	mov.l @(loc_8c02c368,PC),r3
	mov.w @r3,r2
	cmp/ge r2,r4
	bf loc_8c02c280

loc_8c02c2a0:
	mov.l @(loc_8c02c368,PC),r2
	mov 0x00,r1
	mov.l @(loc_8c02c364,PC),r0
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
	mov.l @(loc_8c02c370,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02c2ce
	mov 0x00,r2

loc_8c02c2c8:
	mov.l @(loc_8c02c380,PC),r3
	bra loc_8c02c484
	mov.b r2,@r3

loc_8c02c2ce:
	mov.l @(loc_8c02c370,PC),r1
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
	mov.l @(loc_8c02c380,PC),r3
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
	mov.l @(loc_8c02c360,PC),r3
	mov.l @(loc_8c02c364,PC),r0
	mov.w @r3,r2
	shll2 r2
	mov.b @(r0,r2),r1
	extu.b r1,r1
	tst r10,r1
	bt loc_8c02c316
	bra loc_8c02c772
	nop

loc_8c02c316:
	mov.l @(loc_8c02c368,PC),r0
	mov.l @(loc_8c02c360,PC),r2
	mov.w @r0,r1
	mov.w @r2,r3
	cmp/ge r1,r3
	bf loc_8c02c326
	bra loc_8c02c772
	nop

loc_8c02c326:
	mov.l @(loc_8c02c37c,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	mov.w r3,@r1
	add 0xF6,r1
	mov.w @r1,r0
	mov.l @(loc_8c02c364,PC),r3
	shll2 r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c02c346
	mov.l @(loc_8c02c37c,PC),r2
	mov.w @r2,r0
	add 0xFF,r0
	mov.w r0,@r2

loc_8c02c346:
	mov.l @(loc_8c02c368,PC),r0
	mov.l @(loc_8c02c360,PC),r2
	mov.w @r0,r1
	mov.w @r2,r3
	add 0xFF,r1
	cmp/eq r1,r3
	bt loc_8c02c3a8
	mov.l @(loc_8c02c360,PC),r1
	bra loc_8c02c39e
	mov.w @r1,r4

;###############################################
	#align4
loc_8c02c35c:
	#data loc_8c02d14e
loc_8c02c360:
	#data 0x8c1f97ac
loc_8c02c364:
	#data 0x8c1f97bc
loc_8c02c368:
	#data 0x8c1f97aa
loc_8c02c36c:
	#data bank12.loc_8c129620
loc_8c02c370:
	#data 0x8c1f98fd
loc_8c02c374:
	#data 0x8c1f98fe
loc_8c02c378:
	#data 0x8c1f98fc
loc_8c02c37c:
	#data 0x8c1f97b6
loc_8c02c380:
	#data 0x8c1f9aee
loc_8c02c384:
	#data 0x000186c2

;----------------------------------------------
loc_8c02c388:
	mov.l @(loc_8c02c4c0,PC),r3
	mov r4,r5
	shll2 r5
	add r3,r5
	mov.l @(loc_8c02c4c4,PC),r3
	mov r5,r2
	mov r5,r1
	add 0x04,r2
	jsr @r3
	mov 0x04,r0
	add 0x01,r4

loc_8c02c39e:
	mov.l @(loc_8c02c4c8,PC),r3
	mov.w @r3,r2
	add 0xFF,r2
	cmp/ge r2,r4
	bf loc_8c02c388

loc_8c02c3a8:
	mov.l @(loc_8c02c4c8,PC),r2
	mov 0x00,r1
	mov.l @(loc_8c02c4c0,PC),r0
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
	mov.l @(loc_8c02c4cc,PC),r1
	mov 0x04,r2
	bra loc_8c02c484
	mov.b r2,@r1

loc_8c02c3ce:
	cmp/ge r4,r8
	bt loc_8c02c3da
	mov.l @(loc_8c02c4d0,PC),r3
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
	mov.l @(loc_8c02c4d0,PC),r2
	mov.l @(loc_8c02c4c0,PC),r0
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
	mov.l @(loc_8c02c4d0,PC),r2
	mov.w @r2,r3
	add 0xFF,r3
	mov.w r3,@r2
	bra loc_8c02c772
	nop

loc_8c02c408:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c416
	mov.l @(loc_8c02c4cc,PC),r1
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
	mov.l @(loc_8c02c4d0,PC),r2
	mov.w @r2,r3
	cmp/ge r4,r3
	bf loc_8c02c43a
	bra loc_8c02c772
	nop

loc_8c02c43a:
	mov.l @(loc_8c02c4d0,PC),r1
	bra loc_8c02c772
	mov.w r4,@r1

loc_8c02c440:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c484
	mov.l @(loc_8c02c4cc,PC),r3
	bra loc_8c02c484
	mov.b r13,@r3

loc_8c02c44c:
	exts.b r5,r5
	tst r5,r5
	bt loc_8c02c484
	mov.l @(loc_8c02c4cc,PC),r1
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
	mov.l @(loc_8c02c4d4,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02c47e
	bsr loc_8c02bd6c
	mov r9,r4
	bra loc_8c02c772
	nop

loc_8c02c47e:
	mov.l @(loc_8c02c4cc,PC),r2
	mov 0x05,r1
	mov.b r1,@r2

loc_8c02c484:
	mov.l @(loc_8c02c4d8,PC),r4
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
	mov.l @(loc_8c02c4d0,PC),r3
	mov.l @(loc_8c02c4dc,PC),r0
	mov.w @r3,r2
	add 0xFF,r2
	shll2 r2
	mov.w @(r0,r2),r1
	mov.l @r6,r2
	extu.w r1,r1
	cmp/eq r2,r1
	bf loc_8c02c4e0
	mov.l @(loc_8c02c4d0,PC),r1
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
loc_8c02c4c0:
	#data 0x8c1f97bc
loc_8c02c4c4:
	#data bank12.loc_8c129620
loc_8c02c4c8:
	#data 0x8c1f97aa
loc_8c02c4cc:
	#data 0x8c1f9aee
loc_8c02c4d0:
	#data 0x8c1f97ac
loc_8c02c4d4:
	#data 0x8c1f98fd
loc_8c02c4d8:
	#data 0x000186c2
loc_8c02c4dc:
	#data 0x8c1f97be

;----------------------------------------------
loc_8c02c4e0:
	mov.l @(loc_8c02c5ec,PC),r2
	mov.w @r2,r1
	add 0xFF,r1
	shll2 r1
	mov.w @(r0,r1),r3
	mov.l @r5,r1
	extu.w r3,r3
	add 0xFF,r1
	cmp/eq r1,r3
	bf loc_8c02c502
	mov.l @(loc_8c02c5ec,PC),r3
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
	mov.l @(loc_8c02c5ec,PC),r3
	mov.l @(loc_8c02c5f0,PC),r0
	mov.w @r3,r2
	add 0xFF,r2
	shll2 r2
	mov.w @(r0,r2),r1
	mov.l @(loc_8c02c5f4,PC),r2
	extu.w r1,r1
	cmp/eq r2,r1
	bf loc_8c02c530
	mov.l @(loc_8c02c5ec,PC),r3
	mov.w @(loc_8c02c5e2,PC),r2
	mov.w @r3,r1
	add 0xFF,r1
	shll2 r1
	mov.w r2,@(r0,r1)
	bra loc_8c02c54e
	nop

loc_8c02c530:
	mov.l @(loc_8c02c5ec,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	shll2 r3
	mov.w @(r0,r3),r2
	mov.l @(loc_8c02c5f8,PC),r3
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c02c54e
	mov.l @(loc_8c02c5ec,PC),r2
	mov.w @(loc_8c02c5e4,PC),r3
	mov.w @r2,r1
	add 0xFF,r1
	shll2 r1
	mov.w r3,@(r0,r1)

loc_8c02c54e:
	mov.l @(loc_8c02c5ec,PC),r1
	mov.w @r1,r2
	add 0xFF,r2
	shll2 r2
	mov.w @(r0,r2),r3
	mov.l @(loc_8c02c5fc,PC),r2
	extu.w r3,r3
	cmp/eq r2,r3
	bf loc_8c02c570
	mov.l @(loc_8c02c5ec,PC),r3
	mov.w @(loc_8c02c5e6,PC),r2
	mov.w @r3,r1
	add 0xFF,r1
	shll2 r1
	mov.w r2,@(r0,r1)
	bra loc_8c02c772
	nop

loc_8c02c570:
	mov.l @(loc_8c02c5ec,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	shll2 r3
	mov.w @(r0,r3),r2
	mov.l @(loc_8c02c600,PC),r3
	extu.w r2,r2
	cmp/eq r3,r2
	bt loc_8c02c586
	bra loc_8c02c772
	nop

loc_8c02c586:
	mov.l @(loc_8c02c5ec,PC),r2
	mov.w @(loc_8c02c5e8,PC),r3
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
	mov.l @(loc_8c02c604,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r12)
	mov.w @(0x6,r12),r0
	bra loc_8c02c5de
	or 0x02,r0

loc_8c02c5d2:
	mov.w @(0x6,r12),r0
	mov.l @(loc_8c02c604,PC),r3
	and r3,r0
	mov.w r0,@(0x6,r12)
	mov.w @(0x6,r12),r0
	or 0x42,r0

loc_8c02c5de:
	bra loc_8c02c6a2
	mov.w r0,@(0x6,r12)

;###############################################
loc_8c02c5e2:
	#data 0x8395
loc_8c02c5e4:
	#data 0x834a
loc_8c02c5e6:
	#data 0x8396
loc_8c02c5e8:
	#data 0x8350
	#align4
loc_8c02c5ec:
	#data 0x8c1f97ac
loc_8c02c5f0:
	#data 0x8c1f97be
loc_8c02c5f4:
	#data 0x0000834a
loc_8c02c5f8:
	#data 0x00008395
loc_8c02c5fc:
	#data 0x00008350
loc_8c02c600:
	#data 0x00008396
loc_8c02c604:
	#data 0x0000ffae

;----------------------------------------------
loc_8c02c608:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bf loc_8c02c620
	mov.l @(loc_8c02c6b4,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02c620
	mov.l @(loc_8c02c6b8,PC),r3
	mov 0x00,r2
	bra loc_8c02c62e
	mov.b r2,@r3

loc_8c02c620:
	mov.l @(loc_8c02c6b4,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bt loc_8c02c634
	mov.l @(loc_8c02c6b8,PC),r3
	mov 0x02,r1
	mov.b r1,@r3

loc_8c02c62e:
	mov.l @(loc_8c02c6bc,PC),r4
	bra loc_8c02c636
	nop

loc_8c02c634:
	mov.l @(loc_8c02c6c0,PC),r4

loc_8c02c636:
	bsr loc_8c02bd6c
	nop
	mov.l @(loc_8c02c6c4,PC),r3
	jsr @r3
	mov 0x04,r4
	bra loc_8c02c772
	nop

loc_8c02c644:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bf loc_8c02c65c
	mov.l @(loc_8c02c6b4,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c02c65c
	mov.l @(loc_8c02c6b8,PC),r3
	mov 0x00,r2
	bra loc_8c02c66c
	mov.b r2,@r3

loc_8c02c65c:
	mov.l @(loc_8c02c6b4,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c02c668
	bra loc_8c02c772
	nop

loc_8c02c668:
	mov.l @(loc_8c02c6b8,PC),r3
	mov.b r13,@r3

loc_8c02c66c:
	mov.l @(loc_8c02c6bc,PC),r4
	bsr loc_8c02bd6c
	nop
	mov.l @(loc_8c02c6c4,PC),r3
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
	mov.w @(loc_8c02c6b0,PC),r3
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
loc_8c02c6b0:
	#data 0x0100
	#align4
loc_8c02c6b4:
	#data 0x8c1f98fd
loc_8c02c6b8:
	#data 0x8c1f9aee
loc_8c02c6bc:
	#data 0x000186c2
loc_8c02c6c0:
	#data 0x000186a2
loc_8c02c6c4:
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c02c6c8:
	bsr loc_8c02d14e
	nop
	cmp/pz r0
	bf loc_8c02c6dc
	mov.l @(loc_8c02c7b4,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c02c6dc
	bsr loc_8c02bd6c
	mov r9,r4

loc_8c02c6dc:
	mov.l @(loc_8c02c7b8,PC),r3
	cmp/eq r3,r11
	bf loc_8c02c738
	mov r15,r5
	add 0x50,r5
	mov 0x00,r4
	bra loc_8c02c712
	mov 0x28,r6

loc_8c02c6ec:
	mov.l @(loc_8c02c7bc,PC),r2
	mov.l @(loc_8c02c7c0,PC),r0
	mov.w @r2,r3
	add 0xFF,r3
	shll2 r3
	mov.w @(r0,r3),r1
	mov.l @r5,r3
	extu.w r1,r1
	cmp/eq r3,r1
	bf.s loc_8c02c710
	add 0x01,r4
	mov.l @(loc_8c02c7bc,PC),r1
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
	mov.l @(loc_8c02c7bc,PC),r3
	mov.l @(loc_8c02c7c0,PC),r0
	mov.w @r3,r2
	add 0xFF,r2
	shll2 r2
	mov.w @(r0,r2),r1
	mov.l @(loc_8c02c7c4,PC),r2
	extu.w r1,r1
	cmp/eq r2,r1
	bf loc_8c02c772
	mov.l @(loc_8c02c7bc,PC),r3
	mov.w @(loc_8c02c7aa,PC),r2
	mov.w @r3,r1
	add 0xFF,r1
	shll2 r1
	bra loc_8c02c772
	mov.w r2,@(r0,r1)

loc_8c02c738:
	mov.l @(loc_8c02c7c8,PC),r1
	cmp/eq r1,r11
	bf loc_8c02c76e
	mov.w @(loc_8c02c7ac,PC),r4
	mov.w @(loc_8c02c7ae,PC),r5
	add r15,r4
	bra loc_8c02c766
	add r15,r5

loc_8c02c748:
	mov.l @(loc_8c02c7bc,PC),r3
	mov.l @(loc_8c02c7cc,PC),r2
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
	mov.w @(loc_8c02c7ae,PC),r1
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
	mov.l @(loc_8c02c7d0,PC),r7
	mov 0x24,r2
	mov.w @(loc_8c02c7b0,PC),r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r7),r3
	cmp/ge r2,r3
	bt loc_8c02c7a6
	mov.w @(loc_8c02c7b2,PC),r3
	mov.w @(0xE,r7),r0
	cmp/gt r3,r0
	bf loc_8c02c7d4

loc_8c02c7a6:
	bra loc_8c02c91c
	mov 0x00,r0

;###############################################
loc_8c02c7aa:
	#data 0x8394
loc_8c02c7ac:
	#data 0x00c8
loc_8c02c7ae:
	#data 0x00f0
loc_8c02c7b0:
	#data 0x0347
loc_8c02c7b2:
	#data 0x009c
	#align4
loc_8c02c7b4:
	#data 0x8c1f98fd
loc_8c02c7b8:
	#data 0x0000814a
loc_8c02c7bc:
	#data 0x8c1f97ac
loc_8c02c7c0:
	#data 0x8c1f97be
loc_8c02c7c4:
	#data 0x00008345
loc_8c02c7c8:
	#data 0x0000814b
loc_8c02c7cc:
	#data 0x8c1f97bc
loc_8c02c7d0:
	#data 0x8c1f97a8

;----------------------------------------------
loc_8c02c7d4:
	mov.l @(loc_8c02c8b0,PC),r14
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
	mov.l @(loc_8c02c8b4,PC),r3
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
	mov.l @(loc_8c02c8b8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c02c84c
	mov.w @(loc_8c02c8ae,PC),r0
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
loc_8c02c8ae:
	#data 0x8140
	#align4
loc_8c02c8b0:
	#data 0x8c1f9b94
loc_8c02c8b4:
	#data bank12.loc_8c129620
loc_8c02c8b8:
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
	mov.l @(loc_8c02ca58,PC),r0
	mov.l @(loc_8c02ca54,PC),r3
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
	mova @(loc_8c02ca5c,PC),r0
	fldi0 fr8
	fmov @r0,fr7
	mova @(loc_8c02ca60,PC),r0
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
	mova @(loc_8c02ca64,PC),r0
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
	mov.l @(loc_8c02ca68,PC),r2
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
loc_8c02ca54:
	#data 0x8c1f97ac
loc_8c02ca58:
	#data 0x8c1f97aa
loc_8c02ca5c:
	#data 0x41400000
loc_8c02ca60:
	#data 0x41a00000
loc_8c02ca64:
	#data 0x43dc0000
loc_8c02ca68:
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
	mov.l @(loc_8c02cb50,PC),r1
	mov.w @r1,r3
	add 0xFF,r3
	cmp/gt r3,r5
	bt loc_8c02cad4

loc_8c02ca90:
	tst r8,r8
	bt loc_8c02caa4
	mov.l @(loc_8c02cb54,PC),r3
	mov.w @(loc_8c02cb46,PC),r1
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
	mova @(loc_8c02cb58,PC),r0
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
	mov.w @(loc_8c02cb48,PC),r0
	add r0,r15
	mov.l @(loc_8c02cb50,PC),r9
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
	mov.w @(loc_8c02cb4a,PC),r0
	mov.b @(r0,r9),r2
	tst r2,r2
	bf.s loc_8c02cbca
	mov 0x01,r12
	mov.w @(loc_8c02cb4e,PC),r5
	mov r8,r7
	mov.w @(loc_8c02cb4c,PC),r0
	add r9,r5
	mov.w r4,@(r0,r9)
	bra loc_8c02cba4
	mov 0x02,r14

;###############################################
loc_8c02cb46:
	#data 0x0200
loc_8c02cb48:
	#data 0xfe70
loc_8c02cb4a:
	#data 0x0155
loc_8c02cb4c:
	#data 0x0340
loc_8c02cb4e:
	#data 0x0160
	#align4
loc_8c02cb50:
	#data 0x8c1f97a8
loc_8c02cb54:
	#data 0x8c1f9b9a
loc_8c02cb58:
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
	mov.w @(loc_8c02cc2c,PC),r0
	mov.b r8,@r5
	mov.w r4,@(r0,r9)
	mov.w @(loc_8c02cc2e,PC),r0
	mov.b r12,@(r0,r9)
	add 0xFF,r0
	mov.b r7,@(r0,r9)
	mov.w @(loc_8c02cc30,PC),r0
	mov.b r8,@(r0,r9)
	add 0xFA,r0
	mov.w @(r0,r9),r3
	add 0x02,r0
	mov.w @(r0,r9),r2
	add 0x02,r0
	sub r3,r2
	mov.w r2,@(r0,r9)

loc_8c02cbca:
	mov.w @(loc_8c02cc34,PC),r0
	mov.w @(loc_8c02cc32,PC),r14
	mov.b @(r0,r9),r3
	tst r3,r3
	bf.s loc_8c02cbfa
	add r9,r14
	mov.w @(loc_8c02cc38,PC),r5
	mov.w @(loc_8c02cc36,PC),r6
	mov.l @(loc_8c02cc40,PC),r3
	add r9,r5
	add r9,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c02cc3a,PC),r1
	cmp/pl r0
	add r9,r1
	bf.s loc_8c02cbf4
	mov.l r0,@r1
	mov.w @(loc_8c02cc34,PC),r0
	bra loc_8c02cccc
	mov.b r12,@(r0,r9)

loc_8c02cbf4:
	mov.w @(loc_8c02cc2e,PC),r0
	bra loc_8c02cf60
	mov.b r8,@(r0,r9)

loc_8c02cbfa:
	mov.w @(loc_8c02cc3c,PC),r13
	mov r13,r0
	nop
	add 0x59,r0
	mov.w @(loc_8c02cc36,PC),r5
	mov.l @(r0,r9),r4
	mov.w @(loc_8c02cc30,PC),r0
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
loc_8c02cc2c:
	#data 0x0342
loc_8c02cc2e:
	#data 0x0155
loc_8c02cc30:
	#data 0x0346
loc_8c02cc32:
	#data 0x0160
loc_8c02cc34:
	#data 0x0156
loc_8c02cc36:
	#data 0x02a0
loc_8c02cc38:
	#data 0x0200
loc_8c02cc3a:
	#data 0x0158
loc_8c02cc3c:
	#data 0x00ff
	#align4
loc_8c02cc40:
	#data 0x0cd000a0

;----------------------------------------------
loc_8c02cc44:
	mov.w @(loc_8c02ccd8,PC),r0
	mov.l @(r0,r9),r3
	cmp/eq r13,r3
	bt loc_8c02cc5c
	mov.l @(loc_8c02cce0,PC),r1
	mov.l @(r0,r9),r3
	add 0x01,r3
	mov.l r3,@(r0,r9)
	mov.l @r1,r2
	add 0x01,r2
	cmp/eq r2,r3
	bt loc_8c02cc7e

loc_8c02cc5c:
	mov.w @(loc_8c02ccda,PC),r5
	mov.w @(loc_8c02ccdc,PC),r4
	mov.l @(loc_8c02cce4,PC),r2
	add r9,r5
	jsr @r2
	add r9,r4
	bra loc_8c02cd64
	nop

loc_8c02cc6c:
	mov.w @(loc_8c02ccd8,PC),r0
	mov.l @(r0,r9),r2
	cmp/eq r13,r2
	bt loc_8c02cc90
	mov.l @(r0,r9),r2
	add 0xFF,r2
	tst r2,r2
	bf.s loc_8c02cc90
	mov.l r2,@(r0,r9)

loc_8c02cc7e:
	mov.w @(loc_8c02ccda,PC),r5
	mov.w @(loc_8c02ccdc,PC),r4
	mov.l @(loc_8c02cce8,PC),r2
	add r9,r5
	jsr @r2
	add r9,r4
	mov.w @(loc_8c02ccd8,PC),r0
	bra loc_8c02cd64
	mov.l r13,@(r0,r9)

loc_8c02cc90:
	mov.w @(loc_8c02ccda,PC),r5
	mov.w @(loc_8c02ccdc,PC),r4
	mov.l @(loc_8c02ccec,PC),r2
	add r9,r5
	jsr @r2
	add r9,r4
	bra loc_8c02cd64
	nop

loc_8c02cca0:
	mov r4,r14
	mov.l @(loc_8c02ccf0,PC),r2
	mov.w @(loc_8c02ccdc,PC),r4
	jsr @r2
	add r9,r4
	mov.w @(loc_8c02ccde,PC),r1
	tst r0,r0
	add r9,r1
	bt.s loc_8c02ccd2
	mov.l r0,@r1
	bra loc_8c02cccc
	nop

loc_8c02ccb8:
	mov r4,r14
	mov.l @(loc_8c02ccf4,PC),r2
	mov.w @(loc_8c02ccdc,PC),r4
	jsr @r2
	add r9,r4
	mov.w @(loc_8c02ccde,PC),r1
	tst r0,r0
	add r9,r1
	bt.s loc_8c02ccd2
	mov.l r0,@r1

loc_8c02cccc:
	mov.w @(loc_8c02ccd8,PC),r0
	bra loc_8c02cd64
	mov.l r12,@(r0,r9)

loc_8c02ccd2:
	mov.w @(loc_8c02ccde,PC),r0
	bra loc_8c02cd64
	mov.l r14,@(r0,r9)

;###############################################
loc_8c02ccd8:
	#data 0x015c
loc_8c02ccda:
	#data 0x02a0
loc_8c02ccdc:
	#data 0x0200
loc_8c02ccde:
	#data 0x0158
	#align4
loc_8c02cce0:
	#data 0x8c1f9900
loc_8c02cce4:
	#data 0x0cd000de
loc_8c02cce8:
	#data 0x0cd00280
loc_8c02ccec:
	#data 0x0cd000c0
loc_8c02ccf0:
	#data 0x0cd00226
loc_8c02ccf4:
	#data 0x0cd00208

;----------------------------------------------
loc_8c02ccf8:
	mov.w @(loc_8c02cdda,PC),r5
	mov.w @(loc_8c02cdd8,PC),r0
	mov.w @(loc_8c02cddc,PC),r4
	add r9,r5
	mov.l @(loc_8c02cdec,PC),r3
	mov.l r12,@(r0,r9)
	jsr @r3
	add r9,r4
	mov.w @(loc_8c02cdde,PC),r1
	mov.w @(loc_8c02cddc,PC),r4
	add r9,r1
	mov.l r0,@r1
	bsr loc_8c02d17c
	add r9,r4
	mov.w @(loc_8c02cde0,PC),r4
	mov r0,r7
	mov.w @(loc_8c02cddc,PC),r5
	cmp/pl r7
	add r9,r4
	add r9,r5
	bf.s loc_8c02cd50
	mov r8,r6

loc_8c02cd24:
	mov.b @r4,r0
	mov.w @(loc_8c02cde2,PC),r3
	and 0xF0,r0
	mov r0,r13
	extu.b r13,r14
	cmp/eq r3,r14
	bt loc_8c02cd3e
	mov.w @(loc_8c02cde4,PC),r1
	cmp/eq r1,r14
	bt loc_8c02cd3e
	mov.w @(loc_8c02cde6,PC),r0
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
	mov.l @(loc_8c02cdf0,PC),r2
	mov.w @(loc_8c02cddc,PC),r4
	mov.l r14,@-r15
	jsr @r2
	add r9,r4
	add 0x04,r15
	mov.w @(loc_8c02cdda,PC),r0
	mov.b r8,@(r0,r9)

loc_8c02cd64:
	mov.w @(loc_8c02cddc,PC),r4
	bsr loc_8c02d17c
	add r9,r4
	mov r0,r4
	mov.w @(loc_8c02cde8,PC),r0
	mov.w @(loc_8c02cddc,PC),r3
	mov r15,r14
	mov.w @(r0,r9),r0
	add r9,r3
	mov.l @(loc_8c02cdf0,PC),r2
	add r4,r0
	mov.w r0,@(0x4,r9)
	mov.l r3,@-r15
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c02cdda,PC),r0
	mov.b @(r0,r9),r3
	tst r3,r3
	bt.s loc_8c02cd96
	add 0x04,r15
	mov.w @(loc_8c02cdda,PC),r5
	mov.l @(loc_8c02cdf4,PC),r3
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
	mov.w @(loc_8c02cde2,PC),r3
	shll2 r14
	and 0xF0,r0
	mov r0,r12
	extu.b r12,r6
	cmp/eq r3,r6
	bt.s loc_8c02cdc6
	add r10,r14
	mov.w @(loc_8c02cde4,PC),r1
	cmp/eq r1,r6
	bt loc_8c02cdc6
	mov.w @(loc_8c02cde6,PC),r0
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
loc_8c02cdd8:
	#data 0x015c
loc_8c02cdda:
	#data 0x02a0
loc_8c02cddc:
	#data 0x0200
loc_8c02cdde:
	#data 0x0158
loc_8c02cde0:
	#data 0x0160
loc_8c02cde2:
	#data 0x0080
loc_8c02cde4:
	#data 0x0090
loc_8c02cde6:
	#data 0x00e0
loc_8c02cde8:
	#data 0x0340
	#align4
loc_8c02cdec:
	#data 0x0cd0029e
loc_8c02cdf0:
	#data bank12.loc_8c129740
loc_8c02cdf4:
	#data bank12.loc_8c12977c

;----------------------------------------------
loc_8c02cdf8:
	add 0x01,r5
	mov.b r13,@r14
	mov.b @r4+,r0
	mov.b r0,@(0x2,r14)

loc_8c02ce00:
	mov.w @(loc_8c02cee8,PC),r0
	add 0x01,r11
	mov.b r5,@(r0,r9)

loc_8c02ce06:
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c02cda6
	mov.w @(loc_8c02ceea,PC),r0
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
	mov.w @(loc_8c02ceec,PC),r0
	mov r9,r3
	add 0x14,r3
	mov r4,r2
	mov.w @(r0,r9),r1
	shll2 r2
	add r10,r2
	add r4,r1
	shll2 r1
	add r3,r1
	mov.l @(loc_8c02cef0,PC),r3
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
	mov.w @(loc_8c02ceec,PC),r0
	mov.w @(r0,r9),r4
	bra loc_8c02ce7a
	add r11,r4

loc_8c02ce52:
	mov r4,r2
	mov r9,r6
	add r14,r2
	mov r4,r5
	add 0x14,r6
	mov.l @(loc_8c02cef0,PC),r3
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
	mov.w @(loc_8c02ceec,PC),r0
	mov r9,r3
	add 0x14,r3
	mov r4,r2
	mov.w @(r0,r9),r1
	shll2 r2
	add r10,r2
	add r4,r1
	shll2 r1
	add r3,r1
	mov.l @(loc_8c02cef0,PC),r3
	jsr @r3
	mov 0x04,r0
	mov.w @(loc_8c02ceec,PC),r0
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
loc_8c02cee8:
	#data 0x0157
loc_8c02ceea:
	#data 0x0344
loc_8c02ceec:
	#data 0x0340
	#align4
loc_8c02cef0:
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
	mov.w @(loc_8c02cfa8,PC),r0
	add 0xFF,r4
	mov.w @(r0,r9),r3
	add 0xFF,r3
	cmp/ge r3,r4
	bt loc_8c02cef4
	cmp/pl r11
	bf.s loc_8c02cf52
	mov r8,r4

loc_8c02cf32:
	mov.w @(loc_8c02cfaa,PC),r0
	mov r9,r3
	add 0x14,r3
	mov r4,r2
	mov.w @(r0,r9),r1
	shll2 r2
	add r10,r2
	add r4,r1
	shll2 r1
	add r3,r1
	mov.l @(loc_8c02cfb0,PC),r3
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
	mov.w @(loc_8c02cfa8,PC),r1
	mov.w @(0x4,r9),r0
	add r9,r1
	mov.w r0,@r1

loc_8c02cf60:
	mov.w @(loc_8c02cfac,PC),r1
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
	mov.w @(loc_8c02cfae,PC),r0
	add r0,r15
	mov.l @(loc_8c02cfb4,PC),r11
	mov.w @(0x2,r11),r0
	tst r0,r0
	bf loc_8c02cf92
	bra loc_8c02d13c
	nop

loc_8c02cf92:
	mov.l @(loc_8c02cfb8,PC),r3
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
loc_8c02cfa8:
	#data 0x0342
loc_8c02cfaa:
	#data 0x0340
loc_8c02cfac:
	#data 0x0190
loc_8c02cfae:
	#data 0xff5c
	#align4
loc_8c02cfb0:
	#data bank12.loc_8c129620
loc_8c02cfb4:
	#data 0x8c1f97a8
loc_8c02cfb8:
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
	mov.l @(loc_8c02d0cc,PC),r3
	mov r15,r14
	mov.b r10,@(r0,r12)
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x01,r0
	bt.s loc_8c02d056
	add 0x04,r14
	mov.l @(loc_8c02d0d0,PC),r1
	mov r14,r5
	jsr @r1
	mov r12,r4
	bra loc_8c02d05e
	nop

loc_8c02d056:
	mov.l @(loc_8c02d0d4,PC),r2
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
loc_8c02d0cc:
	#data 0x8c1f9b9a
loc_8c02d0d0:
	#data 0x0cd00064
loc_8c02d0d4:
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
	mov.w @(loc_8c02d1b2,PC),r1
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
	mov.l @(loc_8c02d1bc,PC),r6
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
	mov.w @(loc_8c02d1b4,PC),r14
	bra loc_8c02d1a4
	mov 0x00,r5

loc_8c02d184:
	mov.b @r4,r0
	and 0xF0,r0
	mov r0,r6
	extu.b r6,r7
	cmp/eq r14,r7
	bt loc_8c02d19c
	mov.w @(loc_8c02d1b6,PC),r3
	cmp/eq r3,r7
	bt loc_8c02d19c
	mov.w @(loc_8c02d1b8,PC),r1
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02d1b2:
	#data 0x00a4
loc_8c02d1b4:
	#data 0x0080
loc_8c02d1b6:
	#data 0x0090
loc_8c02d1b8:
	#data 0x00e0
	#align4
loc_8c02d1bc:
	#data 0x8c1f97a8

;==============================================
loc_8c02d1c0:
	mov.l @(loc_8c02d20c,PC),r3
	mov 0x4C,r0
	mov.l @r3,r5
	mov.b @(r0,r5),r0
	cmp/eq 0x05,r0
	bf loc_8c02d1d0
	mov 0x18,r0
	mov.b @(r0,r5),r4

loc_8c02d1d0:
	mov 0x01,r3
	mov.l @(loc_8c02d210,PC),r7
	extu.b r4,r6
	tst r6,r3
	bt.s loc_8c02d1ec
	mov 0x00,r5
	mov r7,r4
	mov.w @(0x10,r4),r0
	mov.w @(loc_8c02d208,PC),r3
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
	mov.w @(loc_8c02d208,PC),r2
	and r2,r0
	mov r0,r1
	mov.w @(0x4,r4),r0
	or r1,r0
	or r0,r5

loc_8c02d204:
	rts
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02d208:
	#data 0x3f60
	#align4
loc_8c02d20c:
	#data work.GameGlobalPointer
loc_8c02d210:
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
	mov.l @(loc_8c02d350,PC),r9
	mov r15,r5
	mov 0x00,r8
	mov 0x05,r3
	mov.l @(loc_8c02d34c,PC),r12
	add 0x04,r5
	fmov fr13,fr4
	mov.l r8,@(0x2C,r15)
	fmov fr13,@(r0,r15)
	mov 0x40,r0
	mov.l r4,@(0x34,r15)
	mov.l r3,@(0x38,r15)
	mov.l r4,@(0x3C,r15)
	mov.w @(loc_8c02d348,PC),r4
	mov.l r8,@(r0,r15)
	bsr loc_8c02d508
	add r9,r4
	mov 0x1C,r0
	mov.l @(loc_8c02d354,PC),r11
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
	mov.l @(loc_8c02d358,PC),r10
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
	mov.l @(loc_8c02d35c,PC),r3
	mov r0,r1
	mov.w @(loc_8c02d34a,PC),r0
	jsr @r3
	add 0x09,r1
	mov r15,r5
	add 0x04,r5
	mov r9,r4
	fmov fr13,fr4
	mov.w r0,@(0x8,r10)
	bsr loc_8c02d508
	add 0x32,r4
	mova @(loc_8c02d360,PC),r0
	fmov @r0,fr12
	mova @(loc_8c02d364,PC),r0
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
	mova @(loc_8c02d368,PC),r0
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
	mova @(loc_8c02d36c,PC),r0
	fmov @r0,fr3
	mov 0x24,r0
	fmov @(r0,r12),fr1
	fadd fr3,fr1
	mov 0x10,r0
	mov.l @(loc_8c02d380,PC),r2
	fmov fr1,@(r0,r15)
	mova @(loc_8c02d370,PC),r0
	fmov @r0,fr15
	mov.w @(0x8,r10),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c02d374,PC),r0
	mov.l @(loc_8c02d37c,PC),r3
	fmov @r0,fr0
	mova @(loc_8c02d378,PC),r0
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
loc_8c02d348:
	#data 0x00b4
loc_8c02d34a:
	#data 0x0168
	#align4
loc_8c02d34c:
	#data 0x8c1f9b94
loc_8c02d350:
	#data bank14.loc_8c14b94c
loc_8c02d354:
	#data bank12.loc_8c1244b0
loc_8c02d358:
	#data 0x8c1f97a8
loc_8c02d35c:
	#data bank12.loc_8c1292d4
loc_8c02d360:
	#data 0x41400000
loc_8c02d364:
	#data 0x41a00000
loc_8c02d368:
	#data 0xc1200000
loc_8c02d36c:
	#data 0xbe4ccccd
loc_8c02d370:
	#data 0x3f000000
loc_8c02d374:
	#data 0x47800000
loc_8c02d378:
	#data 0x43b40000
loc_8c02d37c:
	#data 0x0000ffff
loc_8c02d380:
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
	mova @(loc_8c02d3f4,PC),r0
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
loc_8c02d3f4:
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
	mov.w @(loc_8c02d4ee,PC),r4
	mov r15,r5
	fmov fr13,fr4
	add 0x04,r5
	bsr loc_8c02d508
	add r9,r4
	lds r13,fpul
	mova @(loc_8c02d4f4,PC),r0
	fmov @r0,fr12
	mov 0x1C,r0
	mov.l @(loc_8c02d4f8,PC),r8
	float fpul,fr3
	lds r14,fpul
	fmov fr3,@r15
	fmov @(r0,r8),fr2
	mov 0x08,r0
	fadd fr3,fr2
	fadd fr12,fr2
	fmov fr2,@(r0,r15)
	mova @(loc_8c02d4fc,PC),r0
	fmov @r0,fr3
	mov 0x20,r0
	fmov @(r0,r8),fr2
	mov 0x0C,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mova @(loc_8c02d500,PC),r0
	fmov @r0,fr2
	mov 0x24,r0
	fmov @(r0,r8),fr1
	mov 0x10,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r15)
	mova @(loc_8c02d504,PC),r0
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
	mov.w @(loc_8c02d4f0,PC),r0
	mov.b @(r0,r10),r3
	tst r3,r3
	bt loc_8c02d4ba
	mov.w @(loc_8c02d4f2,PC),r4
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02d4ee:
	#data 0x0118
loc_8c02d4f0:
	#data 0x0155
loc_8c02d4f2:
	#data 0x0122
	#align4
loc_8c02d4f4:
	#data 0x41000000
loc_8c02d4f8:
	#data 0x8c1f9b94
loc_8c02d4fc:
	#data 0xc0000000
loc_8c02d500:
	#data 0xbe99999a
loc_8c02d504:
	#data 0x42000000

;==============================================
loc_8c02d508:
	mov.w @(0x8,r4),r0
	mov.w @(loc_8c02d632,PC),r3
	extu.w r0,r0
	add r3,r0
	mov.l r0,@r5
	mova @(loc_8c02d634,PC),r0
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
	mov.l @(loc_8c02d63c,PC),r11
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	fmov @(r0,r11),fr3
	mov 0x0C,r0
	mov.l @(loc_8c02d638,PC),r9
	fmov fr3,@(r0,r10)
	fldi1 fr15
	bra loc_8c02d6ea
	mov 0x00,r14

;==============================================
loc_8c02d59e:
	mov r14,r4
	mov.l @(loc_8c02d640,PC),r0
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
	mov.l @(loc_8c02d644,PC),r0
	mov.b @(r0,r4),r3
	mov 0x2C,r0
	fmov @(r0,r11),fr2
	mov 0x08,r0
	extu.b r3,r3
	mov.l @(loc_8c02d648,PC),r4
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r10)
	mov r14,r0
	nop
	mov.l @(loc_8c02d64c,PC),r5
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
loc_8c02d632:
	#data 0x0850
	#align4
loc_8c02d634:
	#data 0x44000000
loc_8c02d638:
	#data bank12.loc_8c1244b0
loc_8c02d63c:
	#data 0x8c1f9b94
loc_8c02d640:
	#data 0x8c1f9bde
loc_8c02d644:
	#data 0x8c1f9bdf
loc_8c02d648:
	#data bank14.loc_8c149953
loc_8c02d64c:
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
	mov.w @(loc_8c02d742,PC),r12
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
	mov.l @(loc_8c02d744,PC),r2
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
	mova @(loc_8c02d748,PC),r0
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
	mov.l @(loc_8c02d74c,PC),r14
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
	mov.l @(loc_8c02d750,PC),r14
	bra loc_8c02d730
	nop

loc_8c02d724:
	mov.w @(0x6,r11),r0
	mov.l @(loc_8c02d754,PC),r14
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c02d730
	mov.l @(loc_8c02d758,PC),r14

loc_8c02d730:
	mov.l @(loc_8c02d75c,PC),r1
	mov 0x0C,r0
	fmov @(r0,r10),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r10)
	bra loc_8c02d7d6
	mov 0x00,r13

;###############################################
loc_8c02d742:
	#data 0x0100
	#align4
loc_8c02d744:
	#data bank14.loc_8c14b94c
loc_8c02d748:
	#data 0x42000000
loc_8c02d74c:
	#data bank14.loc_8c1499fa
loc_8c02d750:
	#data bank14.loc_8c149a26
loc_8c02d754:
	#data bank14.loc_8c1499be
loc_8c02d758:
	#data bank14.loc_8c1499dc
loc_8c02d75c:
	#data 0x3e4ccccd

;----------------------------------------------
loc_8c02d760:
	mov.b @r14,r2
	extu.b r2,r2
	cmp/eq r13,r2
	bf loc_8c02d7d4
	mov r13,r4
	mov.l @(loc_8c02d890,PC),r0
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
	mov.l @(loc_8c02d894,PC),r0
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
	mov.l @(loc_8c02d898,PC),r2
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
	mov.l @(loc_8c02d89c,PC),r1
	mov 0x0C,r0
	fmov @(r0,r10),fr2
	lds r1,fpul
	mov.l @(loc_8c02d8a0,PC),r2
	fmov fr14,fr0
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r10)
	mov.b @r2,r3
	mov.l @(loc_8c02d890,PC),r0
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
	mov.l @(loc_8c02d894,PC),r0
	mov.b @(r0,r3),r3
	mov 0x2C,r0
	fmov @(r0,r11),fr1
	mov 0x08,r0
	extu.b r3,r3
	lds r3,fpul
	mov r1,r3
	mov.l @(loc_8c02d8a4,PC),r1
	float fpul,fr2
	fmul fr15,fr2
	fmac fr0,fr2,fr1
	fmov fr1,@(r0,r10)
	mov.b @r3,r4
	mov.l @(loc_8c02d890,PC),r0
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
	mov.l @(loc_8c02d8a8,PC),r2
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c02d890:
	#data 0x8c1f9bde
loc_8c02d894:
	#data 0x8c1f9bdf
loc_8c02d898:
	#data bank14.loc_8c14b7d0
loc_8c02d89c:
	#data 0x3dcccccd
loc_8c02d8a0:
	#data 0x8c1f9bd8
loc_8c02d8a4:
	#data 0x8c1f9bda
loc_8c02d8a8:
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
	mov.w @(loc_8c02d9bc,PC),r4
	mov.l @(loc_8c02d9c0,PC),r11
	fldi1 fr15
	fmov fr15,fr4
	bsr loc_8c02d508
	add r11,r4
	mov.l @(loc_8c02d9c4,PC),r12
	mov 0x34,r0
	mov.l @(loc_8c02d9c8,PC),r10
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
	mov.l @(loc_8c02d9cc,PC),r1
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
	mova @(loc_8c02d9d0,PC),r0
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
	mova @(loc_8c02d9d4,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02d9bc:
	#data 0x00be
	#align4
loc_8c02d9c0:
	#data bank14.loc_8c14b94c
loc_8c02d9c4:
	#data 0x8c1f9b94
loc_8c02d9c8:
	#data bank12.loc_8c1244b0
loc_8c02d9cc:
	#data 0x3dcccccd
loc_8c02d9d0:
	#data 0x42000000
loc_8c02d9d4:
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
	mova @(loc_8c02db6c,PC),r0
	fmov fr5,fr2
	mov.l @(loc_8c02db78,PC),r3
	fmov fr5,fr14
	fmov fr4,@r15
	fmov @r0,fr3
	mova @(loc_8c02db70,PC),r0
	fmov @r0,fr1
	mova @(loc_8c02db74,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mova @(loc_8c02db7c,PC),r0
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
	mov.l @(loc_8c02db80,PC),r2
	jsr @r2
	mov r13,r4
	fmov fr0,fr12

loc_8c02da24:
	mova @(loc_8c02db6c,PC),r0
	fmov fr13,fr2
	fmov @r0,fr3
	mova @(loc_8c02db70,PC),r0
	fmov @r0,fr1
	mova @(loc_8c02db74,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mova @(loc_8c02db7c,PC),r0
	fmov fr13,fr3
	fabs fr3
	mov.l @(loc_8c02db78,PC),r3
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
	mov.l @(loc_8c02db80,PC),r1
	jsr @r1
	mov r14,r4
	mov 0x04,r0
	fmov fr0,@(r0,r15)

loc_8c02da5c:
	mova @(loc_8c02db84,PC),r0
	fabs fr14
	fmov @r0,fr3
	fcmp/eq fr3,fr14
	bf loc_8c02da6a
	bra loc_8c02da72
	fmov fr15,fr14

loc_8c02da6a:
	mov.l @(loc_8c02db88,PC),r3
	jsr @r3
	mov r13,r4
	fmov fr0,fr14

loc_8c02da72:
	mova @(loc_8c02db84,PC),r0
	fabs fr13
	fmov @r0,fr3
	fcmp/eq fr3,fr13
	bf loc_8c02da80
	bra loc_8c02da88
	fmov fr15,fr4

loc_8c02da80:
	mov.l @(loc_8c02db88,PC),r3
	jsr @r3
	mov r14,r4
	fmov fr0,fr4

loc_8c02da88:
	fmov @r15,fr5
	mov r15,r4
	mov 0x04,r0
	mov.l @(loc_8c02db8c,PC),r3
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
	mova @(loc_8c02db7c,PC),r0
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
	mov.l @(loc_8c02db90,PC),r3
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
	mov.l @(loc_8c02db90,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c02db6c:
	#data 0x47800000
loc_8c02db70:
	#data 0x43b40000
loc_8c02db74:
	#data 0x3f000000
loc_8c02db78:
	#data 0x0000ffff
loc_8c02db7c:
	#data 0x42b40000
loc_8c02db80:
	#data bank11.loc_8c11e2e0
loc_8c02db84:
	#data 0x43340000
loc_8c02db88:
	#data bank11.loc_8c11e860
loc_8c02db8c:
	#data bank12.loc_8c1294c8
loc_8c02db90:
	#data bank11.loc_8c11e210

;==============================================
loc_8c02db94:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c02dae0
	mov r6,r14
	mov.l @r14,r2
	mov.w @(loc_8c02dc0e,PC),r3
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
	mov.l @(loc_8c02dc10,PC),r3
	jsr @r3
	mov.l @(0x4,r15),r4
	mov.l @(loc_8c02dc14,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c02dc18,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02dc0e:
	#data 0xc000
	#align4
loc_8c02dc10:
	#data bank12.loc_8c120cd0
loc_8c02dc14:
	#data bank12.loc_8c120b20
loc_8c02dc18:
	#data bank12.loc_8c120d90

;==============================================
loc_8c02dc1c:
	mov.l @(loc_8c02de94,PC),r5
	mov 0x00,r3
	mov.l r3,@r5
	rts
	mov.l r4,@(0x4,r5)

;==============================================
loc_8c02dc24:
	mov.l @(loc_8c02de94,PC),r6
	mov 0x01,r3
	mov.l r3,@r6
	mov.l r4,@(0x4,r6)
	rts
	mov.l r5,@(0x8,r6)

;==============================================
loc_8c02dc32:
	mov.l @(loc_8c02de94,PC),r6
	mov 0x02,r3
	mov.l r3,@r6
	mov.l r4,@(0x4,r6)
	rts
	mov.l r5,@(0x8,r6)

;==============================================
loc_8c02dc3e:
	mov.l @(loc_8c02de94,PC),r7
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
	mov.l @(loc_8c02de98,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c02dc68
	mov.l @(loc_8c02de9c,PC),r3
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
	mova @(loc_8c02dea4,PC),r0
	mov.l @(loc_8c02de94,PC),r3
	fmov @r0,fr15
	mov.l @r3,r0
	mov.l @(loc_8c02dea0,PC),r14
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
	mov.l @(loc_8c02de94,PC),r14
	mov r4,r13
	mov.l @(loc_8c02dea8,PC),r3
	mov.l r5,@(0x4,r15)
	mov.l r6,@r15
	jsr @r3
	mov 0x00,r12
	tst r0,r0
	bt loc_8c02dcfc
	mov.l @(loc_8c02deac,PC),r2
	mov.l r12,@r14
	mov.l @r2,r3
	bra loc_8c02de06
	mov.l r3,@r13

loc_8c02dcfc:
	mov.l @(loc_8c02deb0,PC),r0
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
	mov.l @(loc_8c02deb4,PC),r4
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
	mov.l @(loc_8c02de94,PC),r14
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c02de94:
	#data 0x8c26a8b4
loc_8c02de98:
	#data bank03.loc_8c03591e
loc_8c02de9c:
	#data bank03.loc_8c03593e
loc_8c02dea0:
	#data bank11.loc_8c11d630
loc_8c02dea4:
	#data 0x4b189680
loc_8c02dea8:
	#data bank03.loc_8c0310f2
loc_8c02deac:
	#data 0x8c26a8f0
loc_8c02deb0:
	#data 0x8c2896b0
loc_8c02deb4:
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
	mov.l @(loc_8c02df08,PC),r2
	or r2,r1
	ldc r1,sr
	mov.l @(loc_8c02df0c,PC),r1
	mov.l @(loc_8c02df10,PC),r2
	mov.l @(loc_8c02df14,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02df08:
	#data 0x10000000
loc_8c02df0c:
	#data 0xff00001c
loc_8c02df10:
	#data 0x00000800
loc_8c02df14:
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
	mov.l @(loc_8c02df58,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c02df58:
	#data loc_8c02df18

;==============================================
loc_8c02df5c:
	sts.l pr,@-r15
	mov.l @(loc_8c02dfb8,PC),r4
	mov.w @(loc_8c02dfaa,PC),r5
	bsr loc_8c02df84
	nop
	mov.l @(loc_8c02dfbc,PC),r4
	mov.w @(loc_8c02dfac,PC),r5
	bsr loc_8c02df84
	nop
	mov.l @(loc_8c02dfc0,PC),r4
	mov.w @(loc_8c02dfae,PC),r5
	bsr loc_8c02df84
	nop
	mov.l @(loc_8c02dfc4,PC),r4
	mov.w @(loc_8c02dfb0,PC),r5
	bsr loc_8c02df84
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c02dfc8,PC),r4
	mov.w @(loc_8c02dfb2,PC),r5

loc_8c02df84:
	mov.w @(loc_8c02dfb4,PC),r3
	mov.w @(loc_8c02dfb6,PC),r1
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02dfaa:
	#data 0x0180
loc_8c02dfac:
	#data 0x01a0
loc_8c02dfae:
	#data 0x00a0
loc_8c02dfb0:
	#data 0x00e0
loc_8c02dfb2:
	#data 0x0100
loc_8c02dfb4:
	#data 0xfe00
loc_8c02dfb6:
	#data 0x0200
	#align4
loc_8c02dfb8:
	#data loc_8c02dfcc
loc_8c02dfbc:
	#data loc_8c02dfd2
loc_8c02dfc0:
	#data loc_8c02dfd8
loc_8c02dfc4:
	#data loc_8c02dfde
loc_8c02dfc8:
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
	mov.l @(loc_8c02e004,PC),r7
	mov.l r0,@r7
	mov r15,r0
	mov.l r0,@-r15
	mov.l @(loc_8c02e008,PC),r7
	mov.l r15,@r7
	stc sr,r1
	mov.l @(loc_8c02e010,PC),r0
	and r0,r1
	ldc r1,sr
	mov.l @(loc_8c02e00c,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02e004:
	#data bank14.loc_8c14baa4
loc_8c02e008:
	#data bank14.loc_8c14baa0
loc_8c02e00c:
	#data loc_8c02dfa6
loc_8c02e010:
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
	mov.l @(loc_8c02e164,PC),r14
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
	mova @(loc_8c02e168,PC),r0
	fmov @r0,fr14
	mov 0x10,r0
	mov.w @(loc_8c02e154,PC),r10
	fmov fr14,@(r0,r14)
	mova @(loc_8c02e170,PC),r0
	fmov @r0,fr13
	mov.l @(loc_8c02e16c,PC),r12
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
	mova @(loc_8c02e174,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr15,@(r0,r14)
	mov 0x58,r0
	fmov fr14,@(r0,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mova @(loc_8c02e178,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c02e156,PC),r0
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
	mov.w @(loc_8c02e158,PC),r0
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
	mov.l @(loc_8c02e180,PC),r2
	mov 0x04,r0
	mov.l @(loc_8c02e184,PC),r11
	mov.l @(loc_8c02e17c,PC),r3
	mov.b r13,@r3
	mov.b r13,@r2
	fmov fr15,@r11
	fmov fr14,@(r0,r11)
	jsr @r12
	mov r10,r4
	fdiv fr0,fr13
	mov 0x08,r0
	mov.l @(loc_8c02e188,PC),r4
	fmov fr13,@(r0,r11)
	mov 0x04,r0
	fmov fr15,@r4
	fmov fr14,@(r0,r4)
	mov 0x08,r0
	fmov fr15,@(r0,r4)
	mov 0x04,r0
	mov.l @(loc_8c02e18c,PC),r4
	fmov fr15,@r4
	fmov fr15,@(r0,r4)
	mov 0x08,r0
	fmov fr15,@(r0,r4)
	mov 0x04,r0
	mov.l @(loc_8c02e190,PC),r4
	fmov fr15,@r4
	fmov fr15,@(r0,r4)
	mov 0x08,r0
	fmov fr15,@(r0,r4)
	mova @(loc_8c02e194,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c02e15a,PC),r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c02e198,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c02e15c,PC),r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c02e19c,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c02e15e,PC),r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c02e1a0,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c02e160,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02e154:
	#data 0x0f4a
loc_8c02e156:
	#data 0x0080
loc_8c02e158:
	#data 0x00b4
loc_8c02e15a:
	#data 0x009c
loc_8c02e15c:
	#data 0x0098
loc_8c02e15e:
	#data 0x00a0
loc_8c02e160:
	#data 0x00a4
	#align4
loc_8c02e164:
	#data 0x8c26a518
loc_8c02e168:
	#data 0x42be0000
loc_8c02e16c:
	#data bank11.loc_8c11eb20
loc_8c02e170:
	#data 0x43a00000
loc_8c02e174:
	#data 0x422c0000
loc_8c02e178:
	#data 0xbed1eb85
loc_8c02e17c:
	#data 0x8c1f9d0f
loc_8c02e180:
	#data 0x8c1f9d10
loc_8c02e184:
	#data 0x8c1f9cd8
loc_8c02e188:
	#data 0x8c1f9ce4
loc_8c02e18c:
	#data 0x8c1f9cf0
loc_8c02e190:
	#data 0x8c1f9cfc
loc_8c02e194:
	#data 0x44a00000
loc_8c02e198:
	#data 0xc4a00000
loc_8c02e19c:
	#data 0x449acccd
loc_8c02e1a0:
	#data 0xc23a6668

;==============================================
loc_8c02e1a4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l @(loc_8c02e300,PC),r14
	mov 0x0C,r0
	mov.l @(loc_8c02e304,PC),r13
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
	mov.l @(loc_8c02e308,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c02e2fa,PC),r0
	mov.l @(loc_8c02e30c,PC),r3
	fmov @(r0,r14),fr5
	jsr @r3
	fldi0 fr4
	mova @(loc_8c02e310,PC),r0
	mov.l @(loc_8c02e32c,PC),r2
	fmov @r0,fr6
	mova @(loc_8c02e314,PC),r0
	fmov @r0,fr5
	mova @(loc_8c02e318,PC),r0
	fmov @r0,fr4
	mova @(loc_8c02e31c,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov @(r0,r14),fr2
	mova @(loc_8c02e320,PC),r0
	fmov @r0,fr1
	mova @(loc_8c02e324,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(loc_8c02e328,PC),r3
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	jsr @r13
	mov 0x02,r4
	mov.l @(loc_8c02e308,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c02e2fc,PC),r0
	mov r15,r4
	mov.l @(loc_8c02e330,PC),r3
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
	mova @(loc_8c02e314,PC),r0
	mov.l @(loc_8c02e300,PC),r14
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
	mov.l @(loc_8c02e304,PC),r13
	jsr @r13
	mov 0x03,r4
	mov.l @(loc_8c02e308,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c02e2fa,PC),r0
	mov.l @(loc_8c02e30c,PC),r3
	fmov @(r0,r14),fr5
	jsr @r3
	fldi0 fr4
	mova @(loc_8c02e310,PC),r0
	mov.l @(loc_8c02e32c,PC),r2
	fmov @r0,fr6
	mova @(loc_8c02e318,PC),r0
	fmov @r0,fr4
	mova @(loc_8c02e31c,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov @(r0,r14),fr2
	mova @(loc_8c02e320,PC),r0
	fmov @r0,fr1
	mova @(loc_8c02e324,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(loc_8c02e328,PC),r3
	fmov fr15,fr5
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	jsr @r13
	mov 0x02,r4
	mov.l @(loc_8c02e308,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c02e2fc,PC),r0
	mov r15,r4
	mov.l @(loc_8c02e330,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02e2fa:
	#data 0x0080
loc_8c02e2fc:
	#data 0x0084
	#align4
loc_8c02e300:
	#data 0x8c26a518
loc_8c02e304:
	#data bank12.loc_8c1204f0
loc_8c02e308:
	#data bank12.loc_8c121100
loc_8c02e30c:
	#data bank12.loc_8c121710
loc_8c02e310:
	#data 0x463b8000
loc_8c02e314:
	#data 0x3dcccccd
loc_8c02e318:
	#data 0x3faaaaab
loc_8c02e31c:
	#data 0x47800000
loc_8c02e320:
	#data 0x43b40000
loc_8c02e324:
	#data 0x3f000000
loc_8c02e328:
	#data 0x0000ffff
loc_8c02e32c:
	#data bank12.loc_8c1219b0
loc_8c02e330:
	#data bank11.loc_8c11ff90

;==============================================
loc_8c02e334:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c02e460,PC),r14
	jsr @r14
	mov 0x03,r4
	mov.l @(loc_8c02e464,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c02e468,PC),r2
	fldi0 fr15
	fmov fr15,fr5
	jsr @r2
	fmov fr15,fr4
	mova @(loc_8c02e46c,PC),r0
	mov.w @(loc_8c02e454,PC),r4
	fmov @r0,fr6
	mova @(loc_8c02e470,PC),r0
	mov.l @(loc_8c02e478,PC),r3
	fmov @r0,fr5
	mova @(loc_8c02e474,PC),r0
	jsr @r3
	fmov @r0,fr4
	jsr @r14
	mov 0x02,r4
	mov.l @(loc_8c02e464,PC),r2
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
	mov.l @(loc_8c02e460,PC),r14
	jsr @r14
	mov 0x03,r4
	mov.l @(loc_8c02e464,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c02e468,PC),r2
	fldi0 fr15
	fmov fr15,fr5
	jsr @r2
	fmov fr15,fr4
	mova @(loc_8c02e46c,PC),r0
	mov.w @(loc_8c02e456,PC),r4
	fmov @r0,fr6
	mova @(loc_8c02e470,PC),r0
	mov.l @(loc_8c02e478,PC),r3
	fmov @r0,fr5
	mova @(loc_8c02e474,PC),r0
	jsr @r3
	fmov @r0,fr4
	jsr @r14
	mov 0x02,r4
	mov.l @(loc_8c02e464,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c02e47c,PC),r5
	mov 0x00,r6
	mov.l @(loc_8c02e480,PC),r3
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
	mov.l @(loc_8c02e484,PC),r2
	lds.l @r15+,pr
	mov.b @r2,r3
	add 0x01,r3
	rts
	mov.b r3,@r2

;==============================================
loc_8c02e3da:
	mov.l r14,@-r15
	mov.l @(loc_8c02e488,PC),r14
	sts.l pr,@-r15
	mov r14,r4
	add 0x0C,r4
	mov.l @(loc_8c02e48c,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov r14,r4
	add 0x54,r4
	mov.l @(loc_8c02e48c,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c02e458,PC),r4
	mov 0x78,r0
	mov.l @(loc_8c02e490,PC),r3
	fldi0 fr3
	jsr @r3
	fmov fr3,@(r0,r14)
	mova @(loc_8c02e494,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c02e45a,PC),r0
	fdiv fr0,fr3
	fmov fr3,@(r0,r14)
	add 0x44,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c02e426
	mov.w @(loc_8c02e45c,PC),r0
	mov 0x01,r3
	bra loc_8c02e44e
	mov.b r3,@(r0,r14)

loc_8c02e426:
	mov.l @(loc_8c02e498,PC),r1
	jsr @r1
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8c02e438
	mov.l @(loc_8c02e49c,PC),r1
	jsr @r1
	nop

loc_8c02e438:
	mov.l @(loc_8c02e4a0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c02e4a4,PC),r3
	mov.b @(0x5,r14),r0
	jsr @r3
	mov r0,r4
	lds.l @r15+,pr
	mov.l @(loc_8c02e4a8,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c02e44e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02e454:
	#data 0x4000
loc_8c02e456:
	#data 0x1e94
loc_8c02e458:
	#data 0x0f4a
loc_8c02e45a:
	#data 0x00b4
loc_8c02e45c:
	#data 0x00f8
	#align4
loc_8c02e460:
	#data bank12.loc_8c1204f0
loc_8c02e464:
	#data bank12.loc_8c121100
loc_8c02e468:
	#data bank12.loc_8c121710
loc_8c02e46c:
	#data 0x463b8000
loc_8c02e470:
	#data 0x3dcccccd
loc_8c02e474:
	#data 0x3faaaaab
loc_8c02e478:
	#data bank12.loc_8c1219b0
loc_8c02e47c:
	#data 0x8c26a56c
loc_8c02e480:
	#data bank11.loc_8c11ff90
loc_8c02e484:
	#data 0x8c26a51f
loc_8c02e488:
	#data 0x8c26a518
loc_8c02e48c:
	#data bank12.loc_8c1294c8
loc_8c02e490:
	#data bank11.loc_8c11eb20
loc_8c02e494:
	#data 0x43a00000
loc_8c02e498:
	#data loc_8c02fde0
loc_8c02e49c:
	#data loc_8c02fd26
loc_8c02e4a0:
	#data loc_8c02ff68
loc_8c02e4a4:
	#data loc_8c02fa88
loc_8c02e4a8:
	#data loc_8c0300ba

;==============================================
loc_8c02e4ac:
	mov.l @(loc_8c02e5ec,PC),r0
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
	mov.l @(loc_8c02e5f0,PC),r4
	mov 0x00,r7
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov.b @(0x8,r4),r0
	mov r0,r6
	mov.l @(loc_8c02e5f4,PC),r0
	shll2 r6
	mov.l @(r0,r6),r5
	mov.l @(loc_8c02e5f8,PC),r0
	mov.l @(r0,r6),r6
	mov.w @(loc_8c02e5e0,PC),r0
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
	mov.w @(loc_8c02e5e2,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov.w @(loc_8c02e5e4,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r6),fr3
	mov.w @(loc_8c02e5e6,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r6),fr3
	mov.w @(loc_8c02e5e8,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r6),fr3
	mov.w @(loc_8c02e5ea,PC),r0
	mov.l @(loc_8c02e5fc,PC),r5
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
	mov.l @(loc_8c02e600,PC),r5
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
	mov.l @(loc_8c02e5f0,PC),r14
	sts.l pr,@-r15
	mov r14,r4
	add 0x0C,r4
	mov.l @(loc_8c02e604,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov r14,r4
	add 0x54,r4
	mov.l @(loc_8c02e604,PC),r3
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
	mov.l @(loc_8c02e5f0,PC),r5
	sts.l pr,@-r15
	mov r5,r4
	add 0x0C,r4
	mov.l @(loc_8c02e604,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov r5,r4
	add 0x54,r4
	mov.l @(loc_8c02e604,PC),r3
	mov r4,r1
	mov r4,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	rts
	nop

;###############################################
loc_8c02e5e0:
	#data 0x00f4
loc_8c02e5e2:
	#data 0x00c8
loc_8c02e5e4:
	#data 0x00cc
loc_8c02e5e6:
	#data 0x00d0
loc_8c02e5e8:
	#data 0x00d4
loc_8c02e5ea:
	#data 0x00d8
	#align4
loc_8c02e5ec:
	#data 0x8c26a51f
loc_8c02e5f0:
	#data 0x8c26a518
loc_8c02e5f4:
	#data bank14.loc_8c14ca3c
loc_8c02e5f8:
	#data bank14.loc_8c14ca50
loc_8c02e5fc:
	#data 0x8c1f9cd8
loc_8c02e600:
	#data 0x8c1f9ce4
loc_8c02e604:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c02e608:
	mov.l @(loc_8c02e6a4,PC),r0
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
	mov.l @(loc_8c02e6a8,PC),r14
	mov 0x00,r7
	mov r14,r5
	add 0x07,r5
	mov.l r5,@r15
	mov.b @(0x1,r5),r0
	mov.l @r15,r3
	mov r0,r5
	mov.l @(loc_8c02e6ac,PC),r0
	shll2 r5
	mov.l @(r0,r5),r13
	mov.l @(loc_8c02e6b0,PC),r0
	mov.l @r13,r2
	mov.l @(r0,r5),r4
	mov.l @(loc_8c02e6b4,PC),r0
	mov.l @(r0,r5),r5
	mov.b @(0x2,r3),r0
	cmp/ge r2,r0
	bt.s loc_8c02e6b8
	mov r7,r6
	mov.w @(loc_8c02e69e,PC),r0
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
	mov.w @(loc_8c02e6a0,PC),r0
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
loc_8c02e69e:
	#data 0x00f7
loc_8c02e6a0:
	#data 0x00f4
	#align4
loc_8c02e6a4:
	#data 0x8c26a51f
loc_8c02e6a8:
	#data 0x8c26a518
loc_8c02e6ac:
	#data bank14.loc_8c14ca28
loc_8c02e6b0:
	#data bank14.loc_8c14ca3c
loc_8c02e6b4:
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
	mov.w @(loc_8c02e7d8,PC),r0
	shll r6
	add r3,r6
	shll2 r6
	add r6,r4
	fmov @r4,fr3
	add r6,r5
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c02e7da,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c02e7dc,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c02e7de,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x10,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c02e7e0,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c02e7e2,PC),r0
	fmov fr3,@(r0,r14)
	fmov @r5,fr3
	add 0x04,r0
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov.w @(loc_8c02e7e4,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov.w @(loc_8c02e7e6,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov.w @(loc_8c02e7e8,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x10,r0
	fmov @(r0,r5),fr3
	mov.w @(loc_8c02e7ea,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r5),fr3
	mov.w @(loc_8c02e7ec,PC),r0
	fmov fr3,@(r0,r14)
	mov.l @r13,r5
	bsr loc_8c02e808
	mov 0x00,r4
	mov.l @r13,r5
	bsr loc_8c02e8fc
	mov 0x00,r4
	mov.w @(loc_8c02e7ee,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02e75a
	mov.w @(loc_8c02e7e4,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02e75a
	mov.w @(loc_8c02e7e6,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bt loc_8c02e760

loc_8c02e75a:
	mov.l @r13,r5
	bsr loc_8c02ee50
	mov 0x00,r4

loc_8c02e760:
	mov.w @(loc_8c02e7e8,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02e77e
	mov.w @(loc_8c02e7ea,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c02e77e
	mov.w @(loc_8c02e7ec,PC),r0
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
	mov.l @(loc_8c02e7f4,PC),r5
	mov 0x01,r0
	mov.b r0,@(0x7,r5)
	mov r4,r0
	nop
	mov 0x00,r4
	mov.b r0,@(0x8,r5)
	mov r4,r0
	nop
	mov.b r0,@(0x9,r5)
	mov.w @(loc_8c02e7f0,PC),r0
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
	mov.l @(loc_8c02e7f8,PC),r4
	mov.l @(loc_8c02e800,PC),r0
	mov.l @(0x18,r4),r3
	mov.l @(loc_8c02e7fc,PC),r2
	mov.l r3,@r2
	mov.l @(0x24,r4),r1
	mov.l r1,@r0
	mov.l @(loc_8c02e7f4,PC),r1
	mov.l @(loc_8c02e804,PC),r0
	mov.b @r1,r3
	shll2 r3
	mov.l @(r0,r3),r3
	jmp @r3
	nop
loc_8c02e7d8:
	mov.b @(r0,r10),r0

;==============================================
loc_8c02e7da:
	#data 0x00b0
loc_8c02e7dc:
	#data 0x00b4
loc_8c02e7de:
	#data 0x00b8
loc_8c02e7e0:
	#data 0x00bc
loc_8c02e7e2:
	#data 0x00c0
loc_8c02e7e4:
	#data 0x00c8
loc_8c02e7e6:
	#data 0x00cc
loc_8c02e7e8:
	#data 0x00d0
loc_8c02e7ea:
	#data 0x00d4
loc_8c02e7ec:
	#data 0x00d8
loc_8c02e7ee:
	#data 0x00c4
loc_8c02e7f0:
	#data 0x00f4
	#align4
loc_8c02e7f4:
	#data 0x8c26a518
loc_8c02e7f8:
	#data 0x8c2895f0
loc_8c02e7fc:
	#data 0x8c1f9cd0
loc_8c02e800:
	#data 0x8c1f9cd4
loc_8c02e804:
	#data bank14.loc_8c14cad4

;==============================================
loc_8c02e808:
	mov.l @(loc_8c02e8f8,PC),r4
	mov.w @(loc_8c02e8e4,PC),r0
	mov.l @(loc_8c02e8f0,PC),r7
	mov.b @(r0,r4),r3
	mov.l @(loc_8c02e8f4,PC),r6
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
	mov.w @(loc_8c02e8e6,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	mov.w @(loc_8c02e8e8,PC),r0
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
	mov.w @(loc_8c02e8ea,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov.w @(loc_8c02e8ec,PC),r0
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
	mov.w @(loc_8c02e8ee,PC),r0
	fmov fr3,@(r0,r4)

loc_8c02e876:
	mov.l @r7,r3
	add 0xFF,r5
	cmp/ge r5,r3
	bt loc_8c02e8ae
	mov.w @(loc_8c02e8e6,PC),r0
	mov.l @r7,r1
	add 0x01,r1
	mov.l r1,@r7
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	fmov @r6,fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(loc_8c02e8ea,PC),r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r6),fr2
	mov 0x10,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(loc_8c02e8ee,PC),r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r6),fr2
	mov 0x14,r0
	fadd fr3,fr2
	bra loc_8c02e8cc
	fmov fr2,@(r0,r4)

loc_8c02e8ae:
	mov.w @(loc_8c02e8e4,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)
	add 0xB8,r0
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c02e8e8,PC),r0
	fmov @(r0,r4),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c02e8ec,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02e8e4:
	#data 0x00f4
loc_8c02e8e6:
	#data 0x00dc
loc_8c02e8e8:
	#data 0x00b0
loc_8c02e8ea:
	#data 0x00e0
loc_8c02e8ec:
	#data 0x00b4
loc_8c02e8ee:
	#data 0x00e4
	#align4
loc_8c02e8f0:
	#data 0x8c1f9d14
loc_8c02e8f4:
	#data 0x8c1f9cd8
loc_8c02e8f8:
	#data 0x8c26a518

;==============================================
loc_8c02e8fc:
	mov.l @(loc_8c02e9ec,PC),r4
	mov.w @(loc_8c02e9d8,PC),r0
	mov.l @(loc_8c02e9e4,PC),r7
	mov.b @(r0,r4),r3
	mov.l @(loc_8c02e9e8,PC),r6
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
	mov.w @(loc_8c02e9da,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	mov.w @(loc_8c02e9dc,PC),r0
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
	mov.w @(loc_8c02e9de,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov.w @(loc_8c02e9e0,PC),r0
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
	mov.w @(loc_8c02e9e2,PC),r0
	fmov fr3,@(r0,r4)

loc_8c02e96a:
	mov.l @r7,r3
	add 0xFF,r5
	cmp/ge r5,r3
	bt loc_8c02e9a2
	mov.w @(loc_8c02e9da,PC),r0
	mov.l @r7,r1
	add 0x01,r1
	mov.l r1,@r7
	fmov @(r0,r4),fr3
	mov 0x54,r0
	fmov @r6,fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(loc_8c02e9de,PC),r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r6),fr2
	mov 0x58,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(loc_8c02e9e2,PC),r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r6),fr2
	mov 0x5C,r0
	fadd fr3,fr2
	bra loc_8c02e9c0
	fmov fr2,@(r0,r4)

loc_8c02e9a2:
	mov.w @(loc_8c02e9d8,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02e9d8:
	#data 0x00f5
loc_8c02e9da:
	#data 0x00e8
loc_8c02e9dc:
	#data 0x00bc
loc_8c02e9de:
	#data 0x00ec
loc_8c02e9e0:
	#data 0x00c0
loc_8c02e9e2:
	#data 0x00f0
	#align4
loc_8c02e9e4:
	#data 0x8c1f9d18
loc_8c02e9e8:
	#data 0x8c1f9ce4
loc_8c02e9ec:
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
	mov.l @(loc_8c02eb88,PC),r14
	mov.w @(loc_8c02eb76,PC),r0
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(loc_8c02eb7c,PC),r11
	mov.l @(loc_8c02eb80,PC),r12
	tst r3,r3
	mov.l @(loc_8c02eb84,PC),r13
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
	mov.w @(loc_8c02eb76,PC),r0
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
	mov.w @(loc_8c02eb78,PC),r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r11)
	mov 0x08,r0
	fmov @(r0,r13),fr3
	mov.w @(loc_8c02eb7a,PC),r0
	fmov @(r0,r14),fr2
	mov 0x08,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r11)

loc_8c02ea7a:
	mova @(loc_8c02eb94,PC),r0
	mov.l @r12,r3
	fmov @r0,fr13
	mova @(loc_8c02eb9c,PC),r0
	add 0xFF,r5
	mov.l @(loc_8c02eb8c,PC),r8
	fmov @r0,fr14
	cmp/ge r5,r3
	mov.l @(loc_8c02eb98,PC),r10
	mova @(loc_8c02eba0,PC),r0
	mov.l @(loc_8c02eb90,PC),r9
	bf.s loc_8c02ea98
	fmov @r0,fr15
	bra loc_8c02ec88
	nop

loc_8c02ea98:
	mov 0x10,r0
	mov.l @(loc_8c02eba4,PC),r3
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
	mov.l @(loc_8c02eba8,PC),r3
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
	mov.l @(loc_8c02eba8,PC),r3
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
	mov.l @(loc_8c02eba4,PC),r3
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
	mov.l @(loc_8c02ebac,PC),r3
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
loc_8c02eb76:
	#data 0x00f7
loc_8c02eb78:
	#data 0x00d4
loc_8c02eb7a:
	#data 0x00d8
	#align4
loc_8c02eb7c:
	#data 0x8c1f9d20
loc_8c02eb80:
	#data 0x8c1f9d1c
loc_8c02eb84:
	#data 0x8c1f9cf0
loc_8c02eb88:
	#data 0x8c26a518
loc_8c02eb8c:
	#data bank11.loc_8c11e2e0
loc_8c02eb90:
	#data 0x8c1f9d34
loc_8c02eb94:
	#data 0x47800000
loc_8c02eb98:
	#data 0x0000ffff
loc_8c02eb9c:
	#data 0x3f000000
loc_8c02eba0:
	#data 0x43b40000
loc_8c02eba4:
	#data 0x8c1f9d30
loc_8c02eba8:
	#data bank11.loc_8c11e860
loc_8c02ebac:
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
	mov.l @(loc_8c02ec80,PC),r3
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
	mov.l @(loc_8c02ec80,PC),r3
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
	mov.l @(loc_8c02ec84,PC),r3
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
loc_8c02ec80:
	#data bank11.loc_8c11e860
loc_8c02ec84:
	#data 0x8c1f9d2c

;----------------------------------------------
loc_8c02ec88:
	mov.w @(loc_8c02ee42,PC),r0
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
	mov.l @(loc_8c02ee44,PC),r3
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
	mov.l @(loc_8c02ee48,PC),r3
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
	mov.l @(loc_8c02ee48,PC),r3
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
	mov.l @(loc_8c02ee44,PC),r3
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
	mov.l @(loc_8c02ee4c,PC),r3
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
	mov.l @(loc_8c02ee48,PC),r3
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
	mov.l @(loc_8c02ee48,PC),r3
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
	mov.l @(loc_8c02ee4c,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02ee42:
	#data 0x00f7
	#align4
loc_8c02ee44:
	#data 0x8c1f9d30
loc_8c02ee48:
	#data bank11.loc_8c11e860
loc_8c02ee4c:
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
	mov.l @(loc_8c02efe8,PC),r14
	mov.w @(loc_8c02efd6,PC),r0
	mov.l @(loc_8c02efdc,PC),r11
	mov.b @(r0,r14),r3
	mov.l @(loc_8c02efe4,PC),r13
	mov.l @(loc_8c02efe0,PC),r12
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
	mov.w @(loc_8c02efd6,PC),r0
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
	mov.w @(loc_8c02efd8,PC),r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r11)
	mov 0x08,r0
	fmov @(r0,r12),fr3
	mov.w @(loc_8c02efda,PC),r0
	fmov @(r0,r14),fr2
	mov 0x08,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r11)

loc_8c02eef2:
	mova @(loc_8c02eff4,PC),r0
	mov r5,r3
	fmov @r0,fr13
	mova @(loc_8c02eff8,PC),r0
	mov.l @r13,r2
	add 0xFF,r3
	mov.l @(loc_8c02f000,PC),r10
	mov.l @(loc_8c02eff0,PC),r9
	cmp/ge r3,r2
	mov.l @(loc_8c02efec,PC),r8
	fmov @r0,fr14
	mova @(loc_8c02effc,PC),r0
	bf.s loc_8c02ef12
	fmov @r0,fr15
	bra loc_8c02f200
	nop

loc_8c02ef12:
	mov 0x54,r0
	mov.l @(loc_8c02f004,PC),r3
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
	mov.l @(loc_8c02f008,PC),r2
	jsr @r2
	and r10,r4
	mov.l @r13,r3
	mov 0x58,r0
	fmov @r9,fr3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mov.l @(loc_8c02f00c,PC),r3
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
	mov.l @(loc_8c02f004,PC),r3
	mov 0x10,r0
	fmov @r3,fr3
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov.l @r13,r2
	fmov @r12,fr2
	lds r2,fpul
	mov.l @(loc_8c02f00c,PC),r2
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
loc_8c02efd6:
	#data 0x00f6
loc_8c02efd8:
	#data 0x00c8
loc_8c02efda:
	#data 0x00cc
	#align4
loc_8c02efdc:
	#data 0x8c1f9d3c
loc_8c02efe0:
	#data 0x8c1f9cfc
loc_8c02efe4:
	#data 0x8c1f9d38
loc_8c02efe8:
	#data 0x8c26a518
loc_8c02efec:
	#data 0x8c1f9d48
loc_8c02eff0:
	#data 0x8c1f9d4c
loc_8c02eff4:
	#data 0x43b40000
loc_8c02eff8:
	#data 0x3f000000
loc_8c02effc:
	#data 0x47800000
loc_8c02f000:
	#data 0x0000ffff
loc_8c02f004:
	#data 0x8c1f9d50
loc_8c02f008:
	#data bank11.loc_8c11e2e0
loc_8c02f00c:
	#data bank11.loc_8c11e860

;----------------------------------------------
loc_8c02f010:
	mov.l @(loc_8c02f1f4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c02f1f8,PC),r3
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
	mov.l @(loc_8c02f1f4,PC),r1
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
	mov.l @(loc_8c02f1fc,PC),r3
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
	mov.l @(loc_8c02f1f8,PC),r3
	mov 0x0C,r0
	fmov @r3,fr3
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x04,r0
	mov.l @r13,r2
	fmov @(r0,r12),fr2
	lds r2,fpul
	mov.l @(loc_8c02f1fc,PC),r2
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
	mov.l @(loc_8c02f1f4,PC),r3
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
	mov.l @(loc_8c02f1f8,PC),r3
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
	mov.l @(loc_8c02f1f4,PC),r3
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
	mov.l @(loc_8c02f1fc,PC),r3
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
	mov.l @(loc_8c02f1f4,PC),r3
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
	mov.l @(loc_8c02f1fc,PC),r3
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
loc_8c02f1f4:
	#data bank11.loc_8c11e2e0
loc_8c02f1f8:
	#data 0x8c1f9d50
loc_8c02f1fc:
	#data bank11.loc_8c11e860

;----------------------------------------------
loc_8c02f200:
	mov.w @(loc_8c02f3c4,PC),r0
	mov 0x02,r3
	mov.l r5,@r13
	mov.b r3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	mov 0x58,r0
	mov.l @(loc_8c02f3c8,PC),r3
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
	mov.l @(loc_8c02f3cc,PC),r2
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r10,r4
	mov.l @r13,r3
	mov 0x58,r0
	fmov @r9,fr3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mov.l @(loc_8c02f3d0,PC),r3
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
	mov.l @(loc_8c02f3c8,PC),r3
	mov 0x10,r0
	fmov @r3,fr3
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov.l @r13,r2
	fmov @r12,fr2
	lds r2,fpul
	mov.l @(loc_8c02f3d0,PC),r2
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
	mov.l @(loc_8c02f3cc,PC),r3
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
	mov.l @(loc_8c02f3c8,PC),r3
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
	mov.l @(loc_8c02f3cc,PC),r1
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
	mov.l @(loc_8c02f3d0,PC),r3
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
	mov.l @(loc_8c02f3c8,PC),r3
	mov 0x0C,r0
	fmov @r3,fr3
	fmul fr0,fr3
	fsub fr3,fr12
	fmov fr12,@(r0,r14)
	mov 0x04,r0
	mov.l @r13,r2
	fmov @(r0,r12),fr2
	lds r2,fpul
	mov.l @(loc_8c02f3d0,PC),r2
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
	mov.l @(loc_8c02f3cc,PC),r3
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
	mov.l @(loc_8c02f3c8,PC),r3
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
loc_8c02f3c4:
	#data 0x00f6
	#align4
loc_8c02f3c8:
	#data 0x8c1f9d50
loc_8c02f3cc:
	#data bank11.loc_8c11e2e0
loc_8c02f3d0:
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
	mov.l @(loc_8c02f544,PC),r3
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
	mov.l @(loc_8c02f548,PC),r3
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
	mov.l @(loc_8c02f544,PC),r3
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
	mov.l @(loc_8c02f548,PC),r3
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
	mova @(loc_8c02f54c,PC),r0
	mov.l r14,@-r15
	mov.l @(loc_8c02f554,PC),r14
	mov.l @(loc_8c02f550,PC),r4
	mov.l @(loc_8c02f558,PC),r5
	sts.l pr,@-r15
	fmov @r0,fr5
	mov.w @(loc_8c02f542,PC),r0
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
	mova @(loc_8c02f55c,PC),r0
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
loc_8c02f542:
	#data 0x00ac
	#align4
loc_8c02f544:
	#data bank11.loc_8c11e2e0
loc_8c02f548:
	#data bank11.loc_8c11e860
loc_8c02f54c:
	#data 0xc3480000
loc_8c02f550:
	#data 0x8c1f9cd0
loc_8c02f554:
	#data 0x8c26a518
loc_8c02f558:
	#data 0x8c1f9cd4
loc_8c02f55c:
	#data 0x43c80000

;----------------------------------------------
loc_8c02f560:
	fcmp/gt fr4,fr5
	mov.w @(loc_8c02f648,PC),r0
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
	mov.w @(loc_8c02f648,PC),r0
	fmov @(r0,r14),fr1
	bra loc_8c02f586
	fadd fr4,fr1

loc_8c02f580:
	mov.w @(loc_8c02f648,PC),r0
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
	mov.w @(loc_8c02f648,PC),r0
	fmov @(r0,r14),fr1
	bra loc_8c02f5a8
	fadd fr5,fr1

loc_8c02f5a2:
	mov.w @(loc_8c02f648,PC),r0
	fmov @(r0,r14),fr1
	fsub fr5,fr1

loc_8c02f5a8:
	fmov fr1,@(r0,r14)

loc_8c02f5aa:
	mov.w @(loc_8c02f64a,PC),r5
	mov.w @(loc_8c02f648,PC),r4
	add r14,r5
	bsr loc_8c030060
	add r14,r4
	mov.w @(loc_8c02f648,PC),r0
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
	mova @(loc_8c02f650,PC),r0
	mov.l @(loc_8c02f654,PC),r3
	mov.l r14,@-r15
	mov 0x18,r6
	sts.l pr,@-r15
	fmov @r0,fr4
	mov.l @r3,r4
	mov.w @(loc_8c02f64c,PC),r0
	fmov fr4,fr2
	mov.b @(r0,r4),r2
	extu.b r2,r2
	lds r2,fpul
	mov.l @(loc_8c02f658,PC),r2
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
	mova @(loc_8c02f65c,PC),r0
	mov.l @(loc_8c02f664,PC),r14
	fmov @r0,fr7
	mova @(loc_8c02f660,PC),r0
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
loc_8c02f648:
	#data 0x00ac
loc_8c02f64a:
	#data 0x00b8
loc_8c02f64c:
	#data 0x013c
	#align4
loc_8c02f650:
	#data 0x40092492
loc_8c02f654:
	#data 0x8c1f9cd0
loc_8c02f658:
	#data 0x8c1f9cd4
loc_8c02f65c:
	#data 0x43af0000
loc_8c02f660:
	#data 0xc3af0000
loc_8c02f664:
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
	mova @(loc_8c02f76c,PC),r0
	mov.w @(loc_8c02f762,PC),r5
	fmov @r0,fr3
	mov 0x78,r0
	fmov @(r0,r14),fr2
	add 0x38,r0
	mov.w @(loc_8c02f764,PC),r4
	add r14,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c03009a
	add r14,r4
	mov.w @(loc_8c02f766,PC),r0
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
	mov.w @(loc_8c02f768,PC),r0
	mov 0x00,r4
	mov.l @(loc_8c02f770,PC),r14
	mov.w @(loc_8c02f762,PC),r5
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add r14,r5
	mov.w @(loc_8c02f764,PC),r4
	bsr loc_8c030060
	add r14,r4
	mov.w @(loc_8c02f764,PC),r0
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
	mov.l @(loc_8c02f770,PC),r14
	mov.w @(loc_8c02f768,PC),r0
	mov.w @(loc_8c02f762,PC),r5
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add r14,r5
	mov.w @(loc_8c02f764,PC),r4
	bsr loc_8c03009a
	add r14,r4
	mov.w @(loc_8c02f766,PC),r0
	fmov @(r0,r14),fr3
	add 0x0C,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c02f6fe:
	mov.l @(loc_8c02f774,PC),r3
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
	mov.l @(loc_8c02f774,PC),r3
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
	mov.l @(loc_8c02f774,PC),r3
	mov.l @r3,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c02f73e
	mov.l @(loc_8c02f778,PC),r2
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
	mov.l @(loc_8c02f774,PC),r3
	mov.l @r3,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c02f75e
	mov.l @(loc_8c02f778,PC),r2
	mov.l @r2,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c02f77c

loc_8c02f75e:
	bra loc_8c02f7ba
	mov 0x04,r4

;###############################################
loc_8c02f762:
	#data 0x00b8
loc_8c02f764:
	#data 0x00ac
loc_8c02f766:
	#data 0x00b0
loc_8c02f768:
	#data 0x00f4
	#align4
loc_8c02f76c:
	#data 0x42be0000
loc_8c02f770:
	#data 0x8c26a518
loc_8c02f774:
	#data 0x8c1f9cd0
loc_8c02f778:
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
	mov.l @(loc_8c02f894,PC),r2
	mov 0x34,r0
	mov.w @(loc_8c02f886,PC),r5
	mov.l r4,@r15
	mov.l @r2,r3
	mov.l @(loc_8c02f890,PC),r14
	fmov @(r0,r3),fr3
	add 0x78,r0
	mov.w @(loc_8c02f888,PC),r4
	add r14,r5
	fmov fr3,@(r0,r14)
	bsr loc_8c030060
	add r14,r4
	mov.w @(loc_8c02f888,PC),r0
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
	mov.l @(loc_8c02f894,PC),r3
	mov.w @(loc_8c02f88a,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	mova @(loc_8c02f898,PC),r0
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
	mov.l @(loc_8c02f890,PC),r14
	fmov @(r0,r4),fr3
	mova @(loc_8c02f89c,PC),r0
	fmov @r0,fr2
	fadd fr4,fr3
	fcmp/gt fr2,fr3
	bf loc_8c02f806
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mova @(loc_8c02f8a0,PC),r0
	fmov @r0,fr1
	mov 0x78,r0
	fadd fr4,fr3
	fadd fr1,fr3
	fmov fr3,@(r0,r14)

loc_8c02f806:
	mova @(loc_8c02f8a4,PC),r0
	mov.w @(loc_8c02f886,PC),r5
	fmov @r0,fr3
	mov 0x78,r0
	fmov @(r0,r14),fr2
	add 0x38,r0
	mov.w @(loc_8c02f888,PC),r4
	add r14,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c03009a
	add r14,r4
	mov.w @(loc_8c02f88c,PC),r0
	mov.l @(loc_8c02f894,PC),r3
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
	mov.l @(loc_8c02f8a8,PC),r2
	mov 0x34,r0
	mov.w @(loc_8c02f886,PC),r5
	mov.l r4,@r15
	mov.l @r2,r3
	mov.l @(loc_8c02f890,PC),r14
	fmov @(r0,r3),fr3
	add 0x78,r0
	mov.w @(loc_8c02f888,PC),r4
	add r14,r5
	fmov fr3,@(r0,r14)
	bsr loc_8c030060
	add r14,r4
	mov.w @(loc_8c02f888,PC),r0
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
loc_8c02f886:
	#data 0x00b8
loc_8c02f888:
	#data 0x00ac
loc_8c02f88a:
	#data 0x013c
loc_8c02f88c:
	#data 0x00b0
	#align4
loc_8c02f890:
	#data 0x8c26a518
loc_8c02f894:
	#data 0x8c1f9cd0
loc_8c02f898:
	#data 0x40092492
loc_8c02f89c:
	#data 0x43af0000
loc_8c02f8a0:
	#data 0xc3af0000
loc_8c02f8a4:
	#data 0x42be0000
loc_8c02f8a8:
	#data 0x8c1f9cd4

;----------------------------------------------
loc_8c02f8ac:
	mov.l @(loc_8c02f9a4,PC),r3
	mov.w @(loc_8c02f99c,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	mova @(loc_8c02f9a8,PC),r0
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
	mov.l @(loc_8c02f9ac,PC),r14
	fmov @(r0,r4),fr3
	mova @(loc_8c02f9b0,PC),r0
	fmov @r0,fr2
	fadd fr4,fr3
	fcmp/gt fr2,fr3
	bf loc_8c02f8f8
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mova @(loc_8c02f9b4,PC),r0
	fmov @r0,fr1
	mov 0x78,r0
	fadd fr4,fr3
	fadd fr1,fr3
	fmov fr3,@(r0,r14)

loc_8c02f8f8:
	mova @(loc_8c02f9b8,PC),r0
	mov.w @(loc_8c02f99e,PC),r5
	fmov @r0,fr3
	mov 0x78,r0
	fmov @(r0,r14),fr2
	add 0x38,r0
	mov.w @(loc_8c02f9a0,PC),r4
	add r14,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c03009a
	add r14,r4
	mov.w @(loc_8c02f9a2,PC),r0
	mov.l @(loc_8c02f9a4,PC),r3
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
	mova @(loc_8c02f9b8,PC),r0
	mov.l r14,@-r15
	mov.w @(loc_8c02f99e,PC),r5
	mov.l @(loc_8c02f9ac,PC),r14
	sts.l pr,@-r15
	fmov @r0,fr3
	add r14,r5
	mov.w @(loc_8c02f9a2,PC),r0
	mov.w @(loc_8c02f9a0,PC),r4
	fmov fr3,@(r0,r14)
	bsr loc_8c03009a
	add r14,r4
	mov.w @(loc_8c02f9a2,PC),r0
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
	mov.l @(loc_8c02f9a4,PC),r0
	mov.l @(loc_8c02f9bc,PC),r2
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
	mov.l @(loc_8c02f9bc,PC),r3
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02f99c:
	#data 0x013c
loc_8c02f99e:
	#data 0x00b8
loc_8c02f9a0:
	#data 0x00ac
loc_8c02f9a2:
	#data 0x00b0
	#align4
loc_8c02f9a4:
	#data 0x8c1f9cd4
loc_8c02f9a8:
	#data 0x40092492
loc_8c02f9ac:
	#data 0x8c26a518
loc_8c02f9b0:
	#data 0x43af0000
loc_8c02f9b4:
	#data 0xc3af0000
loc_8c02f9b8:
	#data 0x42be0000
loc_8c02f9bc:
	#data 0x8c1f9cd0

;----------------------------------------------
loc_8c02f9c0:
	mov.l @(loc_8c02fac4,PC),r3
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
	mov.w @(loc_8c02faba,PC),r5
	mov.l @(loc_8c02fac8,PC),r14
	sts.l pr,@-r15
	mov.w @(loc_8c02fabc,PC),r4
	add r14,r5
	bsr loc_8c030060
	add r14,r4
	mov.w @(loc_8c02fabc,PC),r0
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
	mov.l @(loc_8c02fac4,PC),r2
	mov.w @(loc_8c02fabe,PC),r0
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
	mov.l @(loc_8c02fac4,PC),r3
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
	mov.l @(loc_8c02fac4,PC),r3
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
	mov.w @(loc_8c02fabc,PC),r0
	mov.l @(loc_8c02fac8,PC),r4
	fldi0 fr4
	fmov fr4,@(r0,r4)
	fmov @(r0,r4),fr3
	add 0x0C,r0
	mov.l @(loc_8c02facc,PC),r3
	fmov fr3,@(r0,r4)
	add 0xF4,r0
	fmov @(r0,r4),fr3
	mov.l @(loc_8c02fad0,PC),r2
	fmov fr3,@r3
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	fmov fr3,@r2
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	rts
	fmov fr4,@(r0,r4)

loc_8c02fa5e:
	mova @(loc_8c02fad4,PC),r0
	mov.l @(loc_8c02fac8,PC),r4
	fmov @r0,fr4
	mov.w @(loc_8c02fac0,PC),r0
	mov.l @(loc_8c02fad8,PC),r3
	fmov fr4,@(r0,r4)
	fmov @(r0,r4),fr3
	add 0x0C,r0
	mov.l @(loc_8c02fadc,PC),r2
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
	mov.l @(loc_8c02fae0,PC),r14
	tst r3,r3
	bt loc_8c02faec
	mov.l @(loc_8c02fac8,PC),r6
	mov.b @(0x6,r6),r0
	tst r0,r0
	bt.s loc_8c02faa8
	extu.b r4,r2
	mov 0x00,r5
	mov r5,r0
	nop
	mov.l @(loc_8c02fae4,PC),r3
	mov.b r0,@(0x6,r6)
	mov.b r0,@r3

loc_8c02faa8:
	add 0xFF,r2
	mov.l @(loc_8c02fae8,PC),r0
	add r2,r14
	mov.b @r14,r3
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02faba:
	#data 0x00b8
loc_8c02fabc:
	#data 0x00ac
loc_8c02fabe:
	#data 0x0248
loc_8c02fac0:
	#data 0x00b0
	#align4
loc_8c02fac4:
	#data 0x8c1f9cd0
loc_8c02fac8:
	#data 0x8c26a518
loc_8c02facc:
	#data 0x8c1f9cd8
loc_8c02fad0:
	#data 0x8c1f9ce4
loc_8c02fad4:
	#data 0x42be0000
loc_8c02fad8:
	#data 0x8c1f9cdc
loc_8c02fadc:
	#data 0x8c1f9ce8
loc_8c02fae0:
	#data bank13.loc_8c135480
loc_8c02fae4:
	#data 0x8c1f9d0e
loc_8c02fae8:
	#data bank14.loc_8c14cacc

;----------------------------------------------
loc_8c02faec:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c02faf0:
	extu.b r4,r5
	mov.l @(loc_8c02fc20,PC),r1
	add 0xFF,r5
	mov.l @(loc_8c02fc18,PC),r6
	mov.l @(loc_8c02fc1c,PC),r0
	shll2 r5
	mov.b @r1,r3
	add r5,r6
	add r5,r0
	mov.l @(loc_8c02fc2c,PC),r4
	mov.l @(loc_8c02fc24,PC),r7
	tst r3,r3
	mov.l @(loc_8c02fc28,PC),r5
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
	mov.l @(loc_8c02fc30,PC),r3
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@r3

loc_8c02fb2a:
	mov.l @r4,r2
	mov.l @(loc_8c02fc34,PC),r6
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
	mov.l @(loc_8c02fc30,PC),r2
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
	mov.l @(loc_8c02fc20,PC),r1
	add 0xFF,r5
	mov.l @(loc_8c02fc18,PC),r6
	mov.l @(loc_8c02fc1c,PC),r0
	shll2 r5
	mov.b @r1,r3
	add r5,r6
	add r5,r0
	mov.l @(loc_8c02fc3c,PC),r4
	mov.l @(loc_8c02fc38,PC),r7
	tst r3,r3
	mov.l @(loc_8c02fc28,PC),r5
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
	mov.l @(loc_8c02fc40,PC),r3
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@r3

loc_8c02fba8:
	mov.l @r4,r2
	mov.l @(loc_8c02fc34,PC),r6
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
	mov.l @(loc_8c02fc40,PC),r2
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
	mov.l @(loc_8c02fc44,PC),r4
	mov r15,r7
	mov.w @(loc_8c02fc16,PC),r0
	mov.l @(loc_8c02fc34,PC),r6
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02fc16:
	#data 0x00ac
	#align4
loc_8c02fc18:
	#data bank13.loc_8c135468
loc_8c02fc1c:
	#data bank13.loc_8c135474
loc_8c02fc20:
	#data 0x8c1f9d0e
loc_8c02fc24:
	#data 0x8c1f9d58
loc_8c02fc28:
	#data 0x8c1f9d08
loc_8c02fc2c:
	#data 0x8c1f9d54
loc_8c02fc30:
	#data 0x8c1f9d5c
loc_8c02fc34:
	#data 0x8c26a518
loc_8c02fc38:
	#data 0x8c1f9d64
loc_8c02fc3c:
	#data 0x8c1f9d60
loc_8c02fc40:
	#data 0x8c1f9d68
loc_8c02fc44:
	#data 0x8c1f9cd8

;----------------------------------------------
loc_8c02fc48:
	add 0xF4,r15
	mov.l @(loc_8c02fd88,PC),r4
	mov 0x04,r0
	mov.l @(loc_8c02fd84,PC),r6
	mov r15,r7
	fmov @(r0,r4),fr3
	mov.w @(loc_8c02fd7a,PC),r0
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
	mov.w @(loc_8c02fd7c,PC),r0
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
	mov.l @(loc_8c02fd8c,PC),r4
	mov r15,r7
	mov.w @(loc_8c02fd7e,PC),r0
	mov.l @(loc_8c02fd84,PC),r6
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
	mov.l @(loc_8c02fd8c,PC),r4
	mov 0x04,r0
	mov.l @(loc_8c02fd84,PC),r6
	mov r15,r7
	fmov @(r0,r4),fr3
	mov.w @(loc_8c02fd80,PC),r0
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
	mov.w @(loc_8c02fd82,PC),r0
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
	mov.l @(loc_8c02fd90,PC),r3
	mov.l @(loc_8c02fd84,PC),r4
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
	mov.l @(loc_8c02fd94,PC),r2
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
	mov.l @(loc_8c02fd84,PC),r4
	mov.b @(0x1,r4),r0
	cmp/eq 0x02,r0
	bt loc_8c02fdac
	mov.l @(loc_8c02fd90,PC),r3
	mov.l @r3,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fd98
	bra loc_8c02fdaa
	mov 0x04,r0

;###############################################
loc_8c02fd7a:
	#data 0x00b0
loc_8c02fd7c:
	#data 0x00b4
loc_8c02fd7e:
	#data 0x00b8
loc_8c02fd80:
	#data 0x00bc
loc_8c02fd82:
	#data 0x00c0
	#align4
loc_8c02fd84:
	#data 0x8c26a518
loc_8c02fd88:
	#data 0x8c1f9cd8
loc_8c02fd8c:
	#data 0x8c1f9ce4
loc_8c02fd90:
	#data 0x8c1f9cd0
loc_8c02fd94:
	#data 0x8c1f9cd4

;----------------------------------------------
loc_8c02fd98:
	mov.l @(loc_8c02fe6c,PC),r2
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
	mov.l @(loc_8c02fe70,PC),r4
	mov.b @(0x2,r4),r0
	cmp/eq 0x02,r0
	bt loc_8c02fddc
	mov.l @(loc_8c02fe74,PC),r3
	mov.l @r3,r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fdc8
	bra loc_8c02fdda
	mov 0x04,r0

loc_8c02fdc8:
	mov.l @(loc_8c02fe6c,PC),r2
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
	mov.l @(loc_8c02fe78,PC),r2
	mov 0x03,r1
	mov.b @r2,r3
	extu.b r3,r3
	cmp/gt r1,r3
	bf loc_8c02feba
	mov.l @(loc_8c02fe70,PC),r7
	mov.l @(loc_8c02fe6c,PC),r3
	mov.b @(0x1,r7),r0
	mov.l @(loc_8c02fe74,PC),r2
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
	mov.l @(loc_8c02fe7c,PC),r3
	mov.b @r3,r0
	cmp/eq 0x08,r0
	bt loc_8c02fe30
	mov.w @(loc_8c02fe68,PC),r0
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
	mov.l @(loc_8c02fe7c,PC),r3
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
	mov.w @(loc_8c02fe6a,PC),r0
	mov.b @(r0,r5),r2
	extu.b r2,r2
	cmp/ge r6,r2
	bf loc_8c02febe
	bra loc_8c02feba
	nop

;###############################################
loc_8c02fe68:
	#data 0x00f9
loc_8c02fe6a:
	#data 0x01d0
	#align4
loc_8c02fe6c:
	#data 0x8c1f9cd4
loc_8c02fe70:
	#data 0x8c26a518
loc_8c02fe74:
	#data 0x8c1f9cd0
loc_8c02fe78:
	#data 0x8c2895f0
loc_8c02fe7c:
	#data 0x8c26a51a

;----------------------------------------------
loc_8c02fe80:
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c02fe96
	mov.w @(loc_8c02ff5a,PC),r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r6,r2
	bf loc_8c02febe
	bra loc_8c02feba
	nop

loc_8c02fe96:
	mov.w @(loc_8c02ff5a,PC),r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r6,r3
	bf loc_8c02fea8
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bf loc_8c02feba

loc_8c02fea8:
	mov.w @(loc_8c02ff5a,PC),r0
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
	mov.l @(loc_8c02ff60,PC),r12
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
	mov.w @(loc_8c02ff5c,PC),r0
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
	mov.l @(loc_8c02ff64,PC),r3
	mov.b @(0x2,r4),r0
	rts
	mov.b r0,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c02ff5a:
	#data 0x01d0
loc_8c02ff5c:
	#data 0x0411
	#align4
loc_8c02ff60:
	#data 0x8c26a518
loc_8c02ff64:
	#data 0x8c26a611

;==============================================
loc_8c02ff68:
	mov.l r14,@-r15
	mov.l @(loc_8c030050,PC),r14
	mov.l r13,@-r15
	mov.l @(loc_8c030054,PC),r3
	mov.l r12,@-r15
	mov.l @(loc_8c030058,PC),r2
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	mov.l @r2,r5
	mov r0,r12
	mov.w @(loc_8c030044,PC),r0
	mov.l @r3,r4
	mov.b @(r0,r5),r3
	mov.b @(r0,r4),r1
	extu.b r3,r3
	mov.l @(loc_8c03005c,PC),r13
	extu.b r1,r1
	mov.l @(loc_8c03004c,PC),r11
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
	mov.w @(loc_8c030046,PC),r0
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
	mov.w @(loc_8c030048,PC),r0
	mov.b @(r0,r5),r2
	mov.b @(r0,r4),r3
	extu.b r2,r2
	extu.b r3,r3
	or r2,r3
	tst r3,r3
	bt loc_8c030026
	mov.w @(loc_8c03004a,PC),r0
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
	mov.w @(loc_8c030048,PC),r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c030044:
	#data 0x0248
loc_8c030046:
	#data 0x029f
loc_8c030048:
	#data 0x0235
loc_8c03004a:
	#data 0x01a0
	#align4
loc_8c03004c:
	#data bank14.loc_8c14ca98
loc_8c030050:
	#data 0x8c26a518
loc_8c030054:
	#data 0x8c1f9cd0
loc_8c030058:
	#data 0x8c1f9cd4
loc_8c03005c:
	#data bank14.loc_8c14ca64


;===============================================================================
loc_8c030060:
	mova @(loc_8c03010c,PC),r0
	fmov @r4,fr3
	fmov @r0,fr6
	mova @(loc_8c030110,PC),r0
	fmov @r0,fr5
	mov.l @(loc_8c030114,PC),r6
	fadd fr5,fr3
	mov.w @(loc_8c030104,PC),r0
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
	mov.w @(loc_8c030106,PC),r0
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
	mova @(loc_8c030118,PC),r0
	fmov @r0,fr4
	mov 0x04,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c0300a8
	fmov fr4,@(r0,r4)

loc_8c0300a8:
	mova @(loc_8c03011c,PC),r0
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
	mova @(loc_8c030110,PC),r0
	mov.l @(loc_8c030114,PC),r4
	fmov @r0,fr3
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov.w @(loc_8c030108,PC),r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(loc_8c03010c,PC),r0
	fmov @r0,fr2
	mov 0x0C,r0
	fmov @(r0,r4),fr1
	add 0x7C,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mova @(loc_8c030120,PC),r0
	fmov @r0,fr1
	mov 0x10,r0
	fmov @(r0,r4),fr0
	mov.w @(loc_8c03010a,PC),r0
	fadd fr1,fr0
	fmov fr0,@(r0,r4)
	mova @(loc_8c030124,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c03010a,PC),r0
	fmov @(r0,r4),fr0
	add 0xE8,r0
	fadd fr3,fr0
	fmov fr0,@(r0,r4)
	mova @(loc_8c030128,PC),r0
	fmov @r0,fr2
	mov.w @(loc_8c03010a,PC),r0
	fmov @(r0,r4),fr0
	add 0xEC,r0
	fadd fr2,fr0
	rts
	fmov fr0,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c030104:
	#data 0x009c
loc_8c030106:
	#data 0x0098
loc_8c030108:
	#data 0x008c
loc_8c03010a:
	#data 0x00a8
	#align4
loc_8c03010c:
	#data 0xc3a00000
loc_8c030110:
	#data 0x43a00000
loc_8c030114:
	#data 0x8c26a518
loc_8c030118:
	#data 0x42be0000
loc_8c03011c:
	#data 0x44610000
loc_8c030120:
	#data 0x42c4cccd
loc_8c030124:
	#data 0x43700000
loc_8c030128:
	#data 0xc3700000
