;==============================================
loc_8c040248:
	mov.l @(loc_8c04028c,PC),r3
	mov.w @(loc_8c040288,PC),r0
	sts.l pr,@-r15
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c040260
	mov.l @(loc_8c040290,PC),r2
	jsr @r2
	nop
	bra loc_8c040280
	nop

loc_8c040260:
	mov 0x41,r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)
	mov.l @r3,r1
	mov.b @(0x4,r1),r0
	mov.l @(loc_8c040294,PC),r1
	shll2 r0
	mov.l @(r0,r1),r2
	jsr @r2
	nop
	mov.l @(loc_8c040298,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(loc_8c040298,PC),r2
	jsr @r2
	mov 0x0B,r4

loc_8c040280:
	mov.l @(loc_8c0402a0,PC),r3
	mov.l @(loc_8c04029c,PC),r4
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c040288:
	#data 0x008c
	#align4
loc_8c04028c:
	#data work.GameGlobalPointer
loc_8c040290:
	#data loc_8c041588
loc_8c040294:
	#data bank14.loc_8c14dc20
loc_8c040298:
	#data loc_8c044ef0
loc_8c04029c:
	#data bank03.loc_8c030658
loc_8c0402a0:
	#data bank03.loc_8c0395ac

;==============================================
loc_8c0402a4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0403ec,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0402b6
	bra loc_8c040498
	nop

loc_8c0402b6:
	mov.l @(loc_8c0403f0,PC),r4
	mov.l @r4,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov.w @(loc_8c0403dc,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0x00,r0
	mov.l @r4,r3
	mov.w r0,@(0xE,r3)
	mov.l @r4,r3
	mov.w @(loc_8c0403de,PC),r0
	mov r3,r1
	mov.l @(loc_8c0403f4,PC),r4
	mov.b @(r0,r1),r2
	mov 0x19,r0
	mov r0,r7
	mov r4,r5
	tst r2,r2
	movt r2
	mov.b r2,@(r0,r3)
	mov.w @(loc_8c0403e0,PC),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x18,r0
	bf.s loc_8c040304
	mov 0x1A,r6
	mov.w @(loc_8c0403e2,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x18,r0
	bf loc_8c040304
	mov.w @(loc_8c0403e4,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x18,r0
	bf loc_8c040304
	mov.w @(loc_8c0403e2,PC),r0
	mov.b r7,@(r0,r5)
	mov.w @(loc_8c0403e4,PC),r0
	mov.b r6,@(r0,r4)

loc_8c040304:
	mov.w @(loc_8c0403e6,PC),r0
	mov r4,r5
	mov.b @(r0,r5),r0
	cmp/eq 0x18,r0
	bf loc_8c040326
	mov.w @(loc_8c0403e8,PC),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x18,r0
	bf loc_8c040326
	mov.w @(loc_8c0403ea,PC),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x18,r0
	bf loc_8c040326
	mov.w @(loc_8c0403e8,PC),r0
	mov.b r7,@(r0,r5)
	mov.w @(loc_8c0403ea,PC),r0
	mov.b r6,@(r0,r4)

loc_8c040326:
	mov.l @(loc_8c0403f8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0403fc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c040400,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c040404,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c040408,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c04040c,PC),r2
	jsr @r2
	mov 0x06,r4
	mov.l @(loc_8c040410,PC),r3
	jsr @r3
	mov 0x02,r4
	mov.l @(loc_8c040414,PC),r2
	jsr @r2
	mov 0x44,r4
	mov.l @(loc_8c040418,PC),r14
	jsr @r14
	mov 0x0A,r4
	jsr @r14
	mov 0x03,r4
	jsr @r14
	mov 0x09,r4
	mov.l @(loc_8c04041c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c040420,PC),r4
	mov 0x0C,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mova @(0xB0,PC),r0
	fmov @r0,fr5
	mov 0x10,r0
	mov.l @(loc_8c04042c,PC),r3
	fmov fr5,@(r0,r4)
	mova @(loc_8c040428,PC),r0
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
	mov.l @(loc_8c040430,PC),r14
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
	jsr @r14
	mov 0x05,r4
	mov.l @(loc_8c040434,PC),r14
	mov 0x00,r5
	jsr @r14
	mov r5,r4
	mov 0x00,r5
	jsr @r14
	mov 0x01,r4
	mov 0x00,r5
	jsr @r14
	mov 0x02,r4
	mov 0x00,r5
	jsr @r14
	mov 0x03,r4
	mov 0x00,r5
	jsr @r14
	mov 0x04,r4
	mov 0x00,r5
	jsr @r14
	mov 0x05,r4
	mov 0x01,r5
	bra loc_8c040438
	mov 0x00,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0403dc:
	#data 0x012c
loc_8c0403de:
	#data 0x0084
loc_8c0403e0:
	#data 0x052c
loc_8c0403e2:
	#data 0x1074
loc_8c0403e4:
	#data 0x1bbc
loc_8c0403e6:
	#data 0x0ad0
loc_8c0403e8:
	#data 0x1618
loc_8c0403ea:
	#data 0x2160
	#align4
loc_8c0403ec:
	#data bank02.loc_8c0279a4
loc_8c0403f0:
	#data work.GameGlobalPointer
loc_8c0403f4:
	#data 0x8c268340
loc_8c0403f8:
	#data loc_8c044d8c
loc_8c0403fc:
	#data bank03.loc_8c031ef8
loc_8c040400:
	#data bank03.loc_8c030f24
loc_8c040404:
	#data bank03.loc_8c0357d8
loc_8c040408:
	#data bank03.loc_8c03580c
loc_8c04040c:
	#data bank03.loc_8c032be0
loc_8c040410:
	#data loc_8c041ee2
loc_8c040414:
	#data loc_8c04257c
loc_8c040418:
	#data bank02.loc_8c027b64
loc_8c04041c:
	#data bank02.loc_8c02e014
loc_8c040420:
	#data 0x8c26a518
	#data 0x43200000
loc_8c040428:
	#data 0x44610000
loc_8c04042c:
	#data bank0f.loc_8c0f8208
loc_8c040430:
	#data bank0f.loc_8c0f8376
loc_8c040434:
	#data bank0f.loc_8c0f84f2

;----------------------------------------------
loc_8c040438:
	jsr @r14
	nop
	mov 0x01,r5
	jsr @r14
	mov r5,r4
	mov 0x01,r5
	jsr @r14
	mov 0x02,r4
	mov 0x01,r5
	jsr @r14
	mov 0x03,r4
	mov 0x01,r5
	jsr @r14
	mov 0x04,r4
	mov 0x01,r5
	jsr @r14
	mov 0x05,r4
	mov.l @(loc_8c040530,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c040534,PC),r3
	mov 0x1E,r5
	mov 0x00,r6
	jsr @r3
	mov 0xFF,r4
	mov.l @(loc_8c040538,PC),r2
	jsr @r2
	nop
	mova @(loc_8c040540,PC),r0
	mov.l @(loc_8c04053c,PC),r4
	mov.w @(loc_8c04052a,PC),r5
	mov 0x01,r3
	mov 0x2A,r2
	mov.b r3,@r4
	mov.l r2,@(0x4,r4)
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x9,r4)
	mov.b r0,@(0xA,r4)
	mov.w @(loc_8c04052c,PC),r0
	mov.l @(loc_8c040544,PC),r3
	mov.b r0,@(0xB,r4)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c040498:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04049e:
	mov.l r14,@-r15
	mov.l @(loc_8c040548,PC),r14
	mov.l @(loc_8c04054c,PC),r5
	mov.l @(loc_8c040550,PC),r4
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	mov.w @r5,r3
	and r4,r3
	mov.w r3,@r5
	mov.w @(0x14,r5),r0
	and r4,r0
	mov.w r0,@(0x14,r5)
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x3C,r0
	bf loc_8c0404ec
	mov.l @(loc_8c040554,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c0404d8
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	add 0x01,r0
	bra loc_8c0404ec
	mov.w r0,@(0x8,r2)

loc_8c0404d8:
	mov.l @r14,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov 0x3C,r0
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov 0x02,r0
	mov.l @r14,r3
	mov.w r0,@(0xE,r3)

loc_8c0404ec:
	mov.l @r14,r4
	mov.w @(loc_8c04052e,PC),r3
	mov.w @(0x8,r4),r0
	cmp/eq r3,r0
	bf loc_8c0404fa
	mov 0x01,r0
	mov.w r0,@(0xE,r4)

loc_8c0404fa:
	mov.l @(loc_8c040558,PC),r4
	mov.l @(loc_8c04055c,PC),r3
	mov r4,r5
	add 0x0C,r5
	mov r5,r1
	mov r5,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov r4,r5
	add 0x54,r5
	mov.l @(loc_8c04055c,PC),r3
	mov r5,r1
	mov r5,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c040560,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c040544,PC),r1
	jmp @r1
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04052a:
	#data 0x00ff
loc_8c04052c:
	#data 0x0080
loc_8c04052e:
	#data 0x0096
	#align4
loc_8c040530:
	#data bank03.loc_8c030f24
loc_8c040534:
	#data bank03.loc_8c0355b2
loc_8c040538:
	#data bank03.loc_8c030e30
loc_8c04053c:
	#data 0x8c26a688
loc_8c040540:
	#data 0x45dac000
loc_8c040544:
	#data bank03.loc_8c030e3a
loc_8c040548:
	#data work.GameGlobalPointer
loc_8c04054c:
	#data 0x8c2681dc
loc_8c040550:
	#data 0x0000fc9f
loc_8c040554:
	#data bank02.loc_8c0279a4
loc_8c040558:
	#data 0x8c26a518
loc_8c04055c:
	#data bank12.loc_8c1294c8
loc_8c040560:
	#data bank03.loc_8c031f30

;==============================================
loc_8c040564:
	mov.l r14,@-r15
	mov.l @(loc_8c040688,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c040580
	mov.l @r14,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)

loc_8c040580:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	mov 0x1E,r3
	cmp/gt r3,r0
	bt loc_8c040592
	mov.l @(loc_8c04068c,PC),r1
	mov r3,r5
	jsr @r1
	mov 0x01,r4

loc_8c040592:
	mov.l @r14,r4
	mov.w @(0x8,r4),r0
	cmp/eq 0x0A,r0
	bf.s loc_8c0405a2
	mov 0x03,r5
	mov r5,r0
	nop
	mov.w r0,@(0xE,r4)

loc_8c0405a2:
	mov.l @r14,r3
	mov.w @(0xE,r3),r0
	mov 0x02,r3
	cmp/ge r3,r0
	bf loc_8c0405e2
	mov.l @(loc_8c040694,PC),r1
	mov 0x0C,r0
	mov.l @(loc_8c040690,PC),r4
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.b @(0xB,r4),r0
	fldi0 fr2
	add r3,r0
	mov.b r0,@(0xB,r4)
	mov 0x0C,r0
	fmov @(r0,r4),fr1
	fcmp/gt fr1,fr2
	bf loc_8c0405e2
	mov.l @r14,r1
	mov r5,r0
	nop
	mov.w r0,@(0xE,r1)
	mov 0x0C,r0
	fmov fr2,@(r0,r4)
	mov.w @(loc_8c040678,PC),r0
	mov.l @(loc_8c040698,PC),r2
	mov.b r0,@(0xB,r4)
	jsr @r2
	mov 0xFF,r4

loc_8c0405e2:
	mov.l @(loc_8c04069c,PC),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c0406a0,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0405f0:
	mov.l @(loc_8c040688,PC),r4
	mov 0x00,r5
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov.l @r4,r3
	mov r5,r0
	nop
	mov.b r0,@(0x4,r3)
	mov 0x01,r2
	mov.l @r4,r3
	mov 0x4C,r1
	mov.b r0,@(0x5,r3)
	mov.l @r4,r3
	mov.b r0,@(0x6,r3)
	mov.l @r4,r3
	mov.b r0,@(0x7,r3)
	mov 0x19,r0
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov.l @r4,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c040628
	bsr loc_8c040642
	nop

loc_8c040628:
	mov.l @(loc_8c040698,PC),r3
	jsr @r3
	mov 0xFF,r4
	mov.l @(loc_8c0406a4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0406a8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0406b0,PC),r2
	mov.l @(loc_8c0406ac,PC),r4
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c040642:
	add 0xFC,r15
	mov.l @(loc_8c040688,PC),r3
	mov.w @(loc_8c04067a,PC),r1
	mov.l @r3,r0
	mov.l @(loc_8c0406b4,PC),r4
	mov.b @(r0,r1),r0
	tst 0x01,r0
	bt loc_8c0406ea
	mov.w @(loc_8c04067c,PC),r0
	mov.w @(r0,r4),r0
	and 0x90,r0
	mov r0,r5
	mov.w @(loc_8c04067e,PC),r0
	extu.w r5,r2
	cmp/eq r0,r2
	bf loc_8c0406b8
	mov.w @(loc_8c040684,PC),r5
	mov.w @(loc_8c040680,PC),r6
	mov.w @(loc_8c040682,PC),r0
	add r4,r5
	add r4,r6
	mov.b @(r0,r5),r3
	mov.b @(r0,r6),r7
	mov.b r3,@(r0,r6)
	extu.b r7,r7
	bra loc_8c0406ea
	mov.b r7,@(r0,r5)

;##############################################
loc_8c040678:
	#data 0x00ff
loc_8c04067a:
	#data 0x0084
loc_8c04067c:
	#data 0x04dc
loc_8c04067e:
	#data 0x0090
loc_8c040680:
	#data 0x0b48
loc_8c040682:
	#data 0x053f
loc_8c040684:
	#data 0x1690
	#align4
loc_8c040688:
	#data work.GameGlobalPointer
loc_8c04068c:
	#data loc_8c0419b6
loc_8c040690:
	#data 0x8c26a688
loc_8c040694:
	#data 0x430c0000
loc_8c040698:
	#data bank02.loc_8c02dc1c
loc_8c04069c:
	#data bank03.loc_8c031f30
loc_8c0406a0:
	#data bank03.loc_8c030e3a
loc_8c0406a4:
	#data loc_8c04182e
loc_8c0406a8:
	#data loc_8c04185e
loc_8c0406ac:
	#data bank03.loc_8c03082a
loc_8c0406b0:
	#data bank03.loc_8c0395ac
loc_8c0406b4:
	#data 0x8c268340

;----------------------------------------------
loc_8c0406b8:
	mov.w @(loc_8c04076c,PC),r3
	cmp/eq r3,r2
	bf loc_8c0406d2
	mov.w @(loc_8c040770,PC),r5
	mov r4,r7
	mov.w @(loc_8c04076e,PC),r0
	add r4,r5
	mov.b @(r0,r7),r6
	mov.b @(r0,r5),r2
	extu.b r6,r6
	mov.b r2,@(r0,r7)
	bra loc_8c0406ea
	mov.b r6,@(r0,r5)

loc_8c0406d2:
	extu.w r5,r0
	cmp/eq 0x10,r0
	bf loc_8c0406ea
	mov.w @(loc_8c040772,PC),r6
	mov r4,r5
	mov.w @(loc_8c04076e,PC),r0
	add r4,r6
	mov.b @(r0,r5),r7
	mov.b @(r0,r6),r3
	extu.b r7,r7
	mov.b r3,@(r0,r5)
	mov.b r7,@(r0,r6)

loc_8c0406ea:
	mov.l @(loc_8c040780,PC),r3
	mov.w @(loc_8c040774,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	tst 0x02,r0
	bt loc_8c040768
	mov.l @(loc_8c040784,PC),r4
	mov.w @(loc_8c040776,PC),r6
	mov r4,r0
	nop
	mov.w @(loc_8c040778,PC),r2
	add r6,r0
	mov.w @(loc_8c04077c,PC),r1
	mov.w @(r0,r2),r0
	mov.w @(loc_8c04077a,PC),r7
	and 0x90,r0
	extu.w r0,r5
	mov.w r0,@r15
	cmp/eq r1,r5
	bf loc_8c04072c
	mov r4,r5
	mov.w @(loc_8c04076e,PC),r0
	add r7,r5
	mov.w @(loc_8c04077e,PC),r6
	mov.l r5,@r15
	mov.b @(r0,r5),r5
	add r4,r6
	mov.w @(loc_8c04076e,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r6),r1
	mov.b r1,@(r0,r3)
	bra loc_8c040766
	nop

loc_8c04072c:
	mov.w @(loc_8c04076c,PC),r3
	cmp/eq r3,r5
	bf loc_8c04074c
	mov r4,r5
	mov.w @(loc_8c04076e,PC),r0
	add r6,r5
	mov r4,r6
	mov.l r5,@r15
	add r7,r6
	mov.b @(r0,r5),r5
	mov.w @(loc_8c04076e,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r6),r1
	mov.b r1,@(r0,r2)
	bra loc_8c040766
	nop

loc_8c04074c:
	mov r5,r0
	nop
	cmp/eq 0x10,r0
	bf loc_8c040768
	mov r4,r7
	add r6,r7
	mov.w @(loc_8c04077e,PC),r6
	mov.w @(loc_8c04076e,PC),r0
	add r4,r6
	mov.b @(r0,r6),r3
	mov.b @(r0,r7),r5
	mov.b r3,@(r0,r7)
	mov.w @(loc_8c04076e,PC),r0

loc_8c040766:
	mov.b r5,@(r0,r6)

loc_8c040768:
	rts
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04076c:
	#data 0x0080
loc_8c04076e:
	#data 0x053f
loc_8c040770:
	#data 0x0b48
loc_8c040772:
	#data 0x1690
loc_8c040774:
	#data 0x0084
loc_8c040776:
	#data 0x05a4
loc_8c040778:
	#data 0x04dc
loc_8c04077a:
	#data 0x10ec
loc_8c04077c:
	#data 0x0090
loc_8c04077e:
	#data 0x1c34
	#align4
loc_8c040780:
	#data work.GameGlobalPointer
loc_8c040784:
	#data 0x8c268340

;==============================================
loc_8c040788:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c0408b8,PC),r13
	mov 0x00,r12
	mov.l @r13,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov 0x14,r0
	mov.l @r13,r3
	mov.b r0,@(0x5,r3)
	mov.w @(loc_8c0408b0,PC),r0
	mov.l @r13,r3
	mov.w r0,@(0x8,r3)
	mov 0x07,r0
	mov.l @r13,r3
	mov.w r0,@(0xA,r3)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.w r0,@(0xC,r3)
	mov.l @r13,r3
	mov.w r0,@(0xE,r3)
	mov.l @(loc_8c0408bc,PC),r3
	jsr @r3
	mov 0x01,r11
	mov.l @(loc_8c0408c0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0408c8,PC),r3
	mov.l @(loc_8c0408c4,PC),r4
	jsr @r3
	nop
	mov.l @(loc_8c0408cc,PC),r2
	jsr @r2
	fldi1 fr4
	mov.l @(loc_8c0408d0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0408d4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0408d8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0408dc,PC),r2
	jsr @r2
	mov 0x0A,r4
	mov.l @(loc_8c0408e0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0408e4,PC),r4
	mov 0x03,r0
	fldi0 fr4
	mov.l @(loc_8c0408ec,PC),r3
	mov.b r11,@r4
	mov.b r0,@(0x8,r4)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mov 0x10,r0
	fmov fr4,@(r0,r4)
	mov 0x14,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fldi1 fr3
	fmov fr4,@(r0,r4)
	mov 0x5C,r0
	fneg fr3
	fmov fr3,@(r0,r4)
	add 0x28,r0
	mov.l r12,@(r0,r4)
	add 0xFC,r0
	fmov fr4,@(r0,r4)
	jsr @r3
	mov r12,r4
	mov.l @(loc_8c0408ec,PC),r2
	jsr @r2
	mov 0x02,r4
	mov.l @(loc_8c0408f0,PC),r14
	jsr @r14
	mov r12,r4
	jsr @r14
	mov r11,r4
	jsr @r14
	mov 0x02,r4
	mov.l @r13,r0
	mov.l @(loc_8c0408f4,PC),r14
	mov.l @(0x14,r0),r0
	cmp/eq 0x60,r0
	bf loc_8c040872
	mov.l @r13,r2
	mov 0x2A,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c040872
	mov.l @(loc_8c0408f8,PC),r3
	mov.b @r3,r0
	add 0x01,r0
	exts.b r0,r5
	mov.b r0,@(0x4,r15)
	mov.l r5,@r15
	add 0x0A,r5
	mov.l @r15,r4
	jsr @r14
	add 0x05,r4
	bra loc_8c040962
	nop

loc_8c040872:
	mov.w @(loc_8c0408b2,PC),r1
	mov.l @r13,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8c040900
	cmp/eq 0x01,r0
	bt loc_8c040888
	cmp/eq 0x02,r0
	bt loc_8c040900
	bra loc_8c040930
	nop

loc_8c040888:
	mov 0x05,r5
	jsr @r14
	mov 0x00,r4
	mov 0x06,r5
	jsr @r14
	mov 0x01,r4
	mov 0x07,r5
	jsr @r14
	mov 0x02,r4
	mov 0x08,r5
	jsr @r14
	mov 0x03,r4
	mov.w @(loc_8c0408b4,PC),r0
	mov.l @r13,r4
	mov.w @(loc_8c0408b6,PC),r3
	mov.b @(r0,r4),r4
	mov.l @(loc_8c0408fc,PC),r0
	muls.w r3,r4
	bra loc_8c04092c
	sts macl,r4

;##############################################
loc_8c0408b0:
	#data 0x021c
loc_8c0408b2:
	#data 0x00ad
loc_8c0408b4:
	#data 0x009b
loc_8c0408b6:
	#data 0x05a4
	#align4
loc_8c0408b8:
	#data work.GameGlobalPointer
loc_8c0408bc:
	#data loc_8c044d8c
loc_8c0408c0:
	#data bank03.loc_8c031ef8
loc_8c0408c4:
	#data bank14.loc_8c14dc30
loc_8c0408c8:
	#data bank03.loc_8c031f10
loc_8c0408cc:
	#data bank03.loc_8c031f24
loc_8c0408d0:
	#data bank03.loc_8c030f24
loc_8c0408d4:
	#data bank03.loc_8c0357d8
loc_8c0408d8:
	#data bank03.loc_8c03580c
loc_8c0408dc:
	#data bank03.loc_8c032be0
loc_8c0408e0:
	#data bank02.loc_8c02e014
loc_8c0408e4:
	#data 0x8c26a518
	#data 0x42b40000
loc_8c0408ec:
	#data bank0f.loc_8c0f8d08
loc_8c0408f0:
	#data bank0f.loc_8c0f90f0
loc_8c0408f4:
	#data bank0f.loc_8c0f9288
loc_8c0408f8:
	#data 0x8c28962e
loc_8c0408fc:
	#data 0x8c26887e

;----------------------------------------------
loc_8c040900:
	mov 0x00,r5
	jsr @r14
	mov r5,r4
	mov 0x01,r5
	jsr @r14
	mov r5,r4
	mov 0x02,r5
	jsr @r14
	mov r5,r4
	mov 0x03,r5
	jsr @r14
	mov r5,r4
	mov 0x04,r5
	jsr @r14
	mov r5,r4
	mov.w @(loc_8c040a2a,PC),r0
	mov.l @r13,r4
	mov.w @(loc_8c040a2c,PC),r3
	mov.b @(r0,r4),r4
	mov.l @(loc_8c040a38,PC),r0
	muls.w r3,r4
	sts macl,r4

loc_8c04092c:
	mov.b @(r0,r4),r4
	extu.b r4,r4

loc_8c040930:
	mov 0x14,r3
	mov.l @(loc_8c040a3c,PC),r14
	cmp/ge r3,r4
	bt loc_8c04095a
	mov.l @(loc_8c040a40,PC),r2
	mov r4,r1
	jsr @r2
	mov 0x05,r0
	tst r4,r4
	bf.s loc_8c04094c
	mov r0,r13
	mov 0x00,r5
	bra loc_8c040950
	mov 0x03,r4

loc_8c04094c:
	mov 0x00,r4
	mov r13,r5

loc_8c040950:
	jsr @r14
	nop
	mov r13,r5
	bra loc_8c04095e
	mov 0x01,r4

loc_8c04095a:
	mov 0x02,r4
	mov 0x00,r5

loc_8c04095e:
	jsr @r14
	nop

loc_8c040962:
	mov.l @(loc_8c040a44,PC),r3
	mov.l @(loc_8c040a48,PC),r2
	mov.b r12,@r3
	jsr @r2
	mov 0xFF,r4
	mov.l @(loc_8c040a4c,PC),r3
	jsr @r3
	nop
	mova @(0xE0,PC),r0
	mov.l @(loc_8c040a50,PC),r4
	mov.w @(loc_8c040a2e,PC),r2
	mov.w @(loc_8c040a30,PC),r5
	mov.b r11,@r4
	mov.l r2,@(0x4,r4)
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov r5,r0
	nop
	mov.l @(loc_8c040a58,PC),r3
	mov.b r0,@(0x9,r4)
	mov.b r0,@(0xA,r4)
	jsr @r3
	mov.b r0,@(0xB,r4)
	mov.l @(loc_8c040a60,PC),r1
	mov 0x0B,r3
	mov.l @(loc_8c040a5c,PC),r2
	mov 0x00,r5
	mov.l @(loc_8c040a64,PC),r14
	mov.b r11,@r2
	mov.b r3,@r1
	jsr @r14
	mov 0xFF,r4
	mov 0x01,r5
	jsr @r14
	mov 0xFF,r4
	mov 0x02,r5
	jsr @r14
	mov 0xFF,r4
	mov 0x03,r5
	jsr @r14
	mov 0xFF,r4
	mov 0x04,r5
	jsr @r14
	mov 0xFF,r4
	mov 0x05,r5
	jsr @r14
	mov 0xFF,r4
	mov 0x06,r5
	jsr @r14
	mov 0xFF,r4
	mov 0x07,r5
	jsr @r14
	mov 0xFF,r4
	mov 0x08,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c040a68,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0409e0:
	mov.l @(loc_8c040a70,PC),r3
	mov.l r14,@-r15
	mov.w @(loc_8c040a32,PC),r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r3,r14
	mov.l @(loc_8c040a6c,PC),r13
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c040a0a
	mov.w @(loc_8c040a34,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c040a00
	jsr @r13
	mov 0x05,r4

loc_8c040a00:
	mov.l @(loc_8c040a74,PC),r3
	jsr @r3
	nop
	bra loc_8c040a1e
	nop

loc_8c040a0a:
	mov.b @(0x4,r14),r0
	mov.l @(loc_8c040a78,PC),r1
	shll2 r0
	mov.l @(r0,r1),r2
	jsr @r2
	nop
	jsr @r13
	mov 0x05,r4
	jsr @r13
	mov 0x0B,r4

loc_8c040a1e:
	lds.l @r15+,pr
	mov.l @(loc_8c040a80,PC),r3
	mov.l @(loc_8c040a7c,PC),r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c040a2a:
	#data 0x009b
loc_8c040a2c:
	#data 0x05a4
loc_8c040a2e:
	#data 0x0080
loc_8c040a30:
	#data 0x00ff
loc_8c040a32:
	#data 0x008c
loc_8c040a34:
	#data 0x008e
	#align4
loc_8c040a38:
	#data 0x8c26887d
loc_8c040a3c:
	#data bank0f.loc_8c0f960c
loc_8c040a40:
	#data bank12.loc_8c1292d4
loc_8c040a44:
	#data 0x8c2895f6
loc_8c040a48:
	#data bank02.loc_8c02dc1c
loc_8c040a4c:
	#data bank03.loc_8c030e30
loc_8c040a50:
	#data 0x8c26a688
	#data 0x460ca000
loc_8c040a58:
	#data bank03.loc_8c030e3a
loc_8c040a5c:
	#data 0x8c26a960
loc_8c040a60:
	#data 0x8c26a961
loc_8c040a64:
	#data bank03.loc_8c039c64
loc_8c040a68:
	#data bank02.loc_8c027b64
loc_8c040a6c:
	#data loc_8c044ef0
loc_8c040a70:
	#data work.GameGlobalPointer
loc_8c040a74:
	#data loc_8c041588
loc_8c040a78:
	#data bank14.loc_8c14dc3c
loc_8c040a7c:
	#data bank03.loc_8c0306de
loc_8c040a80:
	#data bank03.loc_8c0395ac

;==============================================
loc_8c040a84:
	mov.l r14,@-r15
	mov.l @(loc_8c040b00,PC),r14
	mov.w @(loc_8c040afa,PC),r0
	sts.l pr,@-r15
	mov.l @r14,r3
	mov r3,r2
	mov.b @(r0,r2),r1
	add 0x22,r0
	mov.b r1,@(r0,r3)
	mov 0x4C,r1
	mov.l @r14,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bf loc_8c040aa8
	mov.w @(loc_8c040afc,PC),r0
	mov 0x02,r3
	mov.l @r14,r2
	mov.b r3,@(r0,r2)

loc_8c040aa8:
	mov.l @r14,r2
	mov 0x19,r0
	mov 0x01,r3
	mov r3,r5
	mov.b r3,@(r0,r2)
	mov.l @(loc_8c040b04,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c040b04,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	mov.l @(loc_8c040b08,PC),r3
	jsr @r3
	mov 0x1B,r4
	mov.l @(loc_8c040b0c,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c040b10,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c040b14,PC),r2
	jsr @r2
	mov 0x01,r4
	bsr loc_8c040788
	nop
	mov.l @(loc_8c040b14,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @r14,r1
	mov.l @(loc_8c040b18,PC),r3
	mov.l @(0x10,r1),r1
	extu.b r1,r1
	jsr @r3
	mov 0x03,r0
	lds.l @r15+,pr
	mov.l @(loc_8c040b1c,PC),r2
	mov r0,r4
	add 0x46,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c040afa:
	#data 0x008b
loc_8c040afc:
	#data 0x00ad
	#align4
loc_8c040b00:
	#data work.GameGlobalPointer
loc_8c040b04:
	#data loc_8c041a14
loc_8c040b08:
	#data loc_8c041dde
loc_8c040b0c:
	#data loc_8c041aa6
loc_8c040b10:
	#data loc_8c041e44
loc_8c040b14:
	#data bank03.loc_8c036cc6
loc_8c040b18:
	#data bank12.loc_8c1292d4
loc_8c040b1c:
	#data loc_8c04257c

;==============================================
loc_8c040b20:
	mov.l r14,@-r15
	mov.l @(loc_8c040bfc,PC),r14
	mov.w @(loc_8c040bec,PC),r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r14,r3
	mov r3,r1
	mov.b @(r0,r1),r2
	mov 0x19,r0
	tst r2,r2
	movt r2
	mov.b r2,@(r0,r3)
	add 0x6B,r0
	mov.l @r14,r4
	mov.b @(r0,r4),r4
	tst r4,r4
	bf.s loc_8c040b4c
	mov 0x01,r13
	mov.l @r14,r4
	mov 0x18,r0
	mov.b @(r0,r4),r4

loc_8c040b4c:
	mov r4,r3
	tst r13,r3
	bt loc_8c040b68
	mov.l @(loc_8c040c00,PC),r1
	mov.w @(loc_8c040bee,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c040b68
	mov.l @(loc_8c040bfc,PC),r0
	mov.l @r0,r3
	mov.w @(0xE,r3),r0
	tst r0,r0
	bf loc_8c040b94

loc_8c040b68:
	mov 0x02,r2
	tst r4,r2
	bt loc_8c040b84
	mov.l @(loc_8c040c04,PC),r1
	mov.w @(loc_8c040bee,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c040b84
	mov.l @(loc_8c040bfc,PC),r0
	mov.l @r0,r3
	mov.w @(0xE,r3),r0
	tst r0,r0
	bf loc_8c040b94

loc_8c040b84:
	mov.l @(loc_8c040bfc,PC),r1
	mov.l @r1,r2
	mov.w @(0x8,r2),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r2)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c040b9c

loc_8c040b94:
	mov.l @r14,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)

loc_8c040b9c:
	mov.l @r14,r4
	mov.w @(loc_8c040bf0,PC),r3
	mov.w @(0x8,r4),r0
	cmp/eq r3,r0
	bf loc_8c040bac
	mov r13,r0
	nop
	mov.w r0,@(0xE,r4)

loc_8c040bac:
	mov.l @r14,r4
	mov.w @(loc_8c040bf2,PC),r3
	mov.w @(0x8,r4),r0
	cmp/eq r3,r0
	bf loc_8c040bba
	mov 0x02,r0
	mov.w r0,@(0xE,r4)

loc_8c040bba:
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x78,r0
	bf loc_8c040bca
	mov.l @(loc_8c040c08,PC),r2
	mov 0x14,r5
	jsr @r2
	mov 0x00,r4

loc_8c040bca:
	mov.l @r14,r4
	mov.w @(0xE,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c040ccc
	mov.w @(loc_8c040bf4,PC),r0
	mov.l @(loc_8c040c0c,PC),r6
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c040c10
	mov.w @(loc_8c040bf6,PC),r0
	mov.w @(loc_8c040bf8,PC),r3
	mov.b @(r0,r4),r5
	mov.w @(loc_8c040bfa,PC),r0
	muls.w r3,r5
	sts macl,r5
	bra loc_8c040c1e
	add r6,r5


;##############################################
loc_8c040bec:
	#data 0x0084
loc_8c040bee:
	#data 0x0360
loc_8c040bf0:
	#data 0x0168
loc_8c040bf2:
	#data 0x014a
loc_8c040bf4:
	#data 0x008b
loc_8c040bf6:
	#data 0x009b
loc_8c040bf8:
	#data 0x05a4
loc_8c040bfa:
	#data 0x053e
	#align4
loc_8c040bfc:
	#data work.GameGlobalPointer
loc_8c040c00:
	#data 0x8c2681dc
loc_8c040c04:
	#data 0x8c2681f0
loc_8c040c08:
	#data loc_8c0418be
loc_8c040c0c:
	#data 0x8c268340

;----------------------------------------------
loc_8c040c10:
	mov.w @(loc_8c040d24,PC),r0
	mov.w @(loc_8c040d26,PC),r3
	mov.b @(r0,r4),r5
	mov.w @(loc_8c040d28,PC),r0
	muls.w r3,r5
	sts macl,r5
	add r6,r5

loc_8c040c1e:
	mov.b @(r0,r5),r5
	extu.b r5,r5
	mov r5,r0
	nop
	cmp/eq 0x14,r0
	bf.s loc_8c040c2e
	mov 0x00,r6
	mov r6,r5

loc_8c040c2e:
	mov.w @(0xC,r4),r0
	add 0x01,r0
	mov.w r0,@(0xC,r4)
	mov 0x08,r4
	mov.l @r14,r3
	mov.w @(0xC,r3),r0
	cmp/ge r4,r0
	bf loc_8c040ccc
	mov.l @r14,r2
	mov r6,r0
	nop
	mov.w r0,@(0xC,r2)
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	add 0x01,r0
	mov.w r0,@(0xA,r3)
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	cmp/ge r4,r0
	bf loc_8c040c5e
	mov.l @r14,r2
	mov r6,r0
	nop
	mov.w r0,@(0xA,r2)

loc_8c040c5e:
	mov.l @r14,r3
	mov r5,r1
	mov.b @(0x5,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b @(0x5,r3),r0
	mov.l @(loc_8c040d2c,PC),r3
	mov r0,r2
	jsr @r3
	mov 0x05,r0
	mov r0,r3
	shll2 r0
	add r3,r0
	add 0xFE,r0
	cmp/eq r0,r2
	bf loc_8c040cb0
	mov.l @r14,r2
	mov 0x03,r0
	mov.w r0,@(0xE,r2)
	mov.l @(loc_8c040d30,PC),r2
	mov.b @r2,r3
	cmp/pz r3
	bf.s loc_8c040caa
	mov 0x29,r12
	mov.l @r14,r4
	mov 0x2E,r12
	mov r12,r0
	nop
	add 0x56,r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c040ca8
	mov 0x2A,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c040caa

loc_8c040ca8:
	mov 0x2D,r12

loc_8c040caa:
	mov.l @(loc_8c040d34,PC),r3
	jsr @r3
	mov r12,r4

loc_8c040cb0:
	mov.l @(loc_8c040d3c,PC),r1
	mov 0x0B,r3
	mov.l @(loc_8c040d38,PC),r2
	mov.b r13,@r2
	mov.b r3,@r1
	mov.l @r14,r5
	mov.l @r14,r4
	mov.w @(0xA,r5),r0
	mov.l @(loc_8c040d40,PC),r3
	neg r0,r5
	mov.b @(0x5,r4),r0
	add 0x07,r5
	jsr @r3
	mov r0,r4

loc_8c040ccc:
	mov.l @(loc_8c040d44,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c040d48,PC),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c040d4c,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c040ce4:
	mov.l @(loc_8c040d50,PC),r4
	mov 0x00,r5
	sts.l pr,@-r15
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
	mov.b r0,@(0x7,r3)
	mov.w @(loc_8c040d2a,PC),r0
	mov.l @r4,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c040d12
	mov.l @r4,r1
	mov 0x03,r0
	mov.b r0,@(0x2,r1)

loc_8c040d12:
	mov.l @(loc_8c040d54,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c040d58,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c040d5c,PC),r3
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c040d24:
	#data 0x009b
loc_8c040d26:
	#data 0x05a4
loc_8c040d28:
	#data 0x053d
loc_8c040d2a:
	#data 0x0084
	#align4
loc_8c040d2c:
	#data bank12.loc_8c129128
loc_8c040d30:
	#data 0x8c28962e
loc_8c040d34:
	#data loc_8c04257c
loc_8c040d38:
	#data 0x8c26a960
loc_8c040d3c:
	#data 0x8c26a961
loc_8c040d40:
	#data bank03.loc_8c039c64
loc_8c040d44:
	#data bank02.loc_8c02e7bc
loc_8c040d48:
	#data bank03.loc_8c031f30
loc_8c040d4c:
	#data bank03.loc_8c030e3a
loc_8c040d50:
	#data work.GameGlobalPointer
loc_8c040d54:
	#data loc_8c04182e
loc_8c040d58:
	#data loc_8c04185e
loc_8c040d5c:
	#data loc_8c041ecc

;==============================================
loc_8c040d60:
	mov.l @(loc_8c040ea4,PC),r2
	mov.l @(loc_8c040ea8,PC),r1
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c040eac,PC),r3
	jsr @r3
	mov 0x05,r4
	mov.l @(loc_8c040eac,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(loc_8c040eb4,PC),r3
	mov.l @(loc_8c040eb0,PC),r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c040d86:
	mov.l @(loc_8c040ea4,PC),r6
	mov 0x04,r0
	mov.l r14,@-r15
	mov 0x00,r14
	sts.l pr,@-r15
	mov.l @r6,r3
	mov.l @(loc_8c040eb8,PC),r2
	mov.b r0,@(0x3,r3)
	mov.w @(loc_8c040e86,PC),r0
	mov.l @r6,r3
	mov.b r14,@(r0,r3)
	mov 0x2C,r0
	mov.l @r6,r3
	mov r3,r1
	mov.b @(r0,r1),r1
	extu.b r1,r1
	add 0x03,r1
	jsr @r2
	mov 0x03,r0
	mov.w @(loc_8c040e88,PC),r1
	add r3,r1
	mov.b r0,@r1
	mov.l @r6,r3
	mov r3,r0
	nop
	mov.w @(loc_8c040e88,PC),r1
	mov.w @(loc_8c040e8a,PC),r2
	mov.b @(r0,r1),r0
	add r3,r2
	mov.l @(loc_8c040ec0,PC),r5
	and 0x01,r0
	mov.l @(loc_8c040ebc,PC),r4
	mov.b r0,@r2
	mov r5,r3
	mov.w @(loc_8c040e8c,PC),r2
	mov.w @(loc_8c040e8e,PC),r3
	add r5,r2
	mov.l r5,@(0x18,r4)
	mov.l r2,@(0x1C,r4)
	add r5,r3
	mov.w @(loc_8c040e90,PC),r2
	mov.l r3,@(0x20,r4)
	add r5,r2
	mov.w @(loc_8c040e92,PC),r3
	mov.l r2,@(0x24,r4)
	mov.w @(loc_8c040e94,PC),r2
	add r5,r3
	mov.l r3,@(0x28,r4)
	add r5,r2
	mov.l r2,@(0x2C,r4)
	mov r1,r2
	mov.l @r6,r0
	mov.b @(r0,r2),r0
	cmp/eq 0x00,r0
	bt loc_8c040e00
	cmp/eq 0x01,r0
	bt loc_8c040e06
	cmp/eq 0x02,r0
	bt loc_8c040e0c
	bra loc_8c040e0e
	nop


loc_8c040e00:
	mov.l @(loc_8c040ec4,PC),r4
	bra loc_8c040e0e
	nop

loc_8c040e06:
	mov.l @(loc_8c040ec8,PC),r4
	bra loc_8c040e0e
	nop

loc_8c040e0c:
	mov.l @(loc_8c040ecc,PC),r4

loc_8c040e0e:
	mov.w @(loc_8c040e96,PC),r1
	mov r5,r7
	mov.b @(0x1,r4),r0
	add r7,r1
	mov.w @(loc_8c040e98,PC),r2
	mov.b r0,@r1
	mov.b @(0x2,r4),r0
	add r5,r2
	mov.w @(loc_8c040e9a,PC),r1
	mov.b r0,@r2
	mov.b @(0x3,r4),r0
	add r5,r1
	mov.b r0,@r1
	mov.w @(loc_8c040e9c,PC),r0
	mov.l @(0x14,r4),r3
	mov.w @(loc_8c040e9e,PC),r1
	mov.l r3,@(r0,r7)
	add 0x04,r0
	mov.l @(0x10,r4),r2
	add r7,r1
	mov.l r2,@(r0,r7)
	mov.b @(0x8,r4),r0
	mov.b r0,@r1
	mov.w @(loc_8c040ea0,PC),r0
	mov.w @(loc_8c040ea2,PC),r1
	mov.b r14,@(r0,r7)
	add 0x01,r0
	mov.b r14,@(r0,r7)
	mov.l @r6,r3
	mov.b @(0x1,r4),r0
	add r3,r1
	bsr loc_8c040788
	mov.b r0,@r1
	mov.l @(loc_8c040ed0,PC),r2
	mov 0x01,r5

loc_8c040e54:
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c040ed0,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r5,r4
	mov.l @(loc_8c040ed4,PC),r2
	jsr @r2
	mov 0x1A,r4
	mov.l @(loc_8c040ed8,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c040edc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c040ee4,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c040ee0,PC),r4
	jsr @r3
	mov 0x14,r5
	lds.l @r15+,pr
	mov.l @(loc_8c040ee8,PC),r2
	mov 0x06,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c040e86:
	#data 0x009b
loc_8c040e88:
	#data 0x00ad
loc_8c040e8a:
	#data 0x008b
loc_8c040e8c:
	#data 0x0b48
loc_8c040e8e:
	#data 0x1690
loc_8c040e90:
	#data 0x05a4
loc_8c040e92:
	#data 0x10ec
loc_8c040e94:
	#data 0x1c34
loc_8c040e96:
	#data 0x052c
loc_8c040e98:
	#data 0x1074
loc_8c040e9a:
	#data 0x1bbc
loc_8c040e9c:
	#data 0x0534
loc_8c040e9e:
	#data 0x0527
loc_8c040ea0:
	#data 0x053d
loc_8c040ea2:
	#data 0x008f
	#align4
loc_8c040ea4:
	#data work.GameGlobalPointer
loc_8c040ea8:
	#data bank14.loc_8c14dc48
loc_8c040eac:
	#data loc_8c044ef0
loc_8c040eb0:
	#data bank03.loc_8c0306de
loc_8c040eb4:
	#data bank03.loc_8c0395ac
loc_8c040eb8:
	#data bank12.loc_8c1292d4
loc_8c040ebc:
	#data 0x8c2895f0
loc_8c040ec0:
	#data 0x8c268340
loc_8c040ec4:
	#data 0x8c2897e0
loc_8c040ec8:
	#data 0x8c2899d8
loc_8c040ecc:
	#data 0x8c212cec
loc_8c040ed0:
	#data loc_8c041a14
loc_8c040ed4:
	#data loc_8c041dde
loc_8c040ed8:
	#data loc_8c041aa6
loc_8c040edc:
	#data loc_8c041e44
loc_8c040ee0:
	#data 0xff000000
loc_8c040ee4:
	#data bank03.loc_8c0355b2
loc_8c040ee8:
	#data bank02.loc_8c027b64

;==============================================
loc_8c040eec:
	mov.l r14,@-r15
	mov.l @(loc_8c041010,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c040f08
	mov.l @r14,r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)

loc_8c040f08:
	mov.l @r14,r4
	mov.w @(loc_8c04100a,PC),r3
	mov.w @(0x8,r4),r0
	cmp/eq r3,r0
	bf loc_8c040f16
	mov 0x01,r0
	mov.w r0,@(0xE,r4)

loc_8c040f16:
	mov.l @r14,r4
	mov.w @(loc_8c04100c,PC),r3
	mov.w @(0x8,r4),r0
	cmp/eq r3,r0
	bf loc_8c040f24
	mov 0x02,r0
	mov.w r0,@(0xE,r4)

loc_8c040f24:
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x3C,r0
	bf loc_8c040f34
	mov.l @(loc_8c041014,PC),r2
	mov 0x14,r5
	jsr @r2
	mov 0x00,r4

loc_8c040f34:
	mov.l @r14,r4
	mov.w @(0xE,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c040fa2
	mov.w @(0xC,r4),r0
	add 0x01,r0
	mov.w r0,@(0xC,r4)
	mov 0x08,r4
	mov.l @r14,r3
	mov.w @(0xC,r3),r0
	cmp/ge r4,r0
	bf loc_8c040fa2
	mov.l @r14,r2
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0xC,r2)
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	add 0x01,r0
	mov.w r0,@(0xA,r3)
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	cmp/ge r4,r0
	bf loc_8c040f6e
	mov.l @r14,r2
	mov r5,r0
	nop
	mov.w r0,@(0xA,r2)

loc_8c040f6e:
	mov.l @r14,r3
	mov.b @(0x5,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r3)
	mov.l @r14,r0
	mov.b @(0x5,r0),r0
	cmp/eq 0xFE,r0
	bf loc_8c040f84
	mov.l @r14,r2
	mov 0x03,r0
	mov.w r0,@(0xE,r2)

loc_8c040f84:
	mov.l @(loc_8c04101c,PC),r0
	mov 0x0B,r1
	mov.l @(loc_8c041018,PC),r2
	mov 0x01,r3

loc_8c040f8c:
	mov.b r3,@r2
	mov.b r1,@r0
	mov.l @r14,r5
	mov.l @r14,r4
	mov.w @(0xA,r5),r0
	mov.l @(loc_8c041020,PC),r3
	neg r0,r5
	mov.b @(0x5,r4),r0
	add 0x07,r5
	jsr @r3
	mov r0,r4

loc_8c040fa2:
	mov.l @(loc_8c041024,PC),r2
	jsr @r2
	nop

loc_8c040fa8:
	mov.l @(loc_8c041028,PC),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c04102c,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c040fb6:
	mov.l @(loc_8c041010,PC),r4
	mov 0x01,r0
	sts.l pr,@-r15
	mov.l @r4,r3
	mov 0x00,r5
	mov.b r0,@(0x1,r3)
	mov.l @r4,r3
	mov r5,r0
	nop
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
	mov 0x2C,r0
	mov.l @r4,r3
	mov.b @(r0,r3),r2
	add 0x01,r2
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c041030,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c041034,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c041038,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c04103c,PC),r1
	jmp @r1
	lds.l @r15+,pr

;==============================================
loc_8c041000:
	mov.l @(loc_8c041040,PC),r1
	extu.b r4,r0
	add 0xE0,r0
	rts
	mov.b @(r0,r1),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04100a:
	#data 0x0168
loc_8c04100c:
	#data 0x014a
	#align4
loc_8c041010:
	#data work.GameGlobalPointer
loc_8c041014:
	#data loc_8c0418be
loc_8c041018:
	#data 0x8c26a960
loc_8c04101c:
	#data 0x8c26a961
loc_8c041020:
	#data bank03.loc_8c039c64
loc_8c041024:
	#data bank02.loc_8c02e7bc
loc_8c041028:
	#data bank03.loc_8c031f30
loc_8c04102c:
	#data bank03.loc_8c030e3a
loc_8c041030:
	#data loc_8c044d8c
loc_8c041034:
	#data loc_8c04182e
loc_8c041038:
	#data loc_8c04185e
loc_8c04103c:
	#data loc_8c041ecc
loc_8c041040:
	#data bank13.loc_8c138b30


;==============================================
loc_8c041044:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c041160,PC),r3
	mov 0x00,r12
	mov.l @(loc_8c041164,PC),r10
	mov 0x04,r11
	mov.l r3,@r15
	mov r12,r9
	mov.l @(loc_8c041168,PC),r3
	mov r12,r13
	mov.l @(loc_8c04115c,PC),r8
	mov.l r3,@(0x8,r15)
	mov.l @(loc_8c04116c,PC),r3
	mov.l r3,@(0x4,r15)

loc_8c04106e:
	mov r9,r4
	shll r4
	mov r9,r3
	add r3,r4
	mov.l @(loc_8c041170,PC),r1
	shll2 r4
	mov.l @(loc_8c041174,PC),r3
	shll r4
	mov r10,r2
	add r4,r1
	jsr @r3
	mov 0x18,r0
	mov.l @(loc_8c041168,PC),r1
	mov r10,r2
	mov.l @(loc_8c041174,PC),r3
	add r4,r1
	jsr @r3
	mov 0x18,r0
	mov.l @(loc_8c04116c,PC),r1
	mov r10,r2
	mov.l @(loc_8c041174,PC),r3
	add r4,r1
	jsr @r3
	mov 0x18,r0
	mov.l @(0x4,r15),r4
	mov r12,r5
	add 0x0C,r4

loc_8c0410a4:
	mov.l @r15,r3
	add 0x01,r5
	cmp/ge r11,r5
	mov.b @r3,r2
	mov.b r2,@r4
	mov.l @r15,r3
	add 0x01,r3
	mov.l r3,@r15
	bf.s loc_8c0410a4
	add 0x01,r4
	mov.l @(0x8,r15),r4
	mov r12,r5
	add 0x0C,r4

loc_8c0410be:
	mov.b @r8+,r3
	add 0x01,r5
	cmp/ge r11,r5
	mov.b r3,@r4
	bf.s loc_8c0410be
	add 0x01,r4
	mov.l @(loc_8c041178,PC),r14
	add 0x18,r10
	add r13,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	add 0x01,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	add 0x01,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	add 0x01,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	mov.l @(loc_8c04117c,PC),r14
	add r13,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	add 0x01,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	add 0x01,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	add 0x01,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	mov.l @(loc_8c041180,PC),r14
	add r13,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	add 0x01,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	add 0x01,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov.b r0,@r14
	add 0x01,r14
	bsr loc_8c041000
	mov.b @r14,r4
	mov 0x15,r1
	mov.b r0,@r14
	mov.l @(0x8,r15),r3
	add 0x01,r9
	cmp/ge r1,r9
	add 0x18,r13
	add 0x18,r3
	mov.l r3,@(0x8,r15)
	mov.l @(0x4,r15),r2
	add 0x18,r2
	bf.s loc_8c04106e
	mov.l r2,@(0x4,r15)
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c04115c:
	#data bank13.loc_8c138a88
loc_8c041160:
	#data bank13.loc_8c138adc
loc_8c041164:
	#data bank13.loc_8c138890
loc_8c041168:
	#data 0x8c2899d8
loc_8c04116c:
	#data 0x8c212cec
loc_8c041170:
	#data 0x8c2897e0
loc_8c041174:
	#data bank12.loc_8c1294bc
loc_8c041178:
	#data 0x8c2897ec
loc_8c04117c:
	#data 0x8c2899e4
loc_8c041180:
	#data 0x8c212cf8

;==============================================
loc_8c041184:
	mov.l r12,@-r15
	mov 0x02,r7
	mov.w @(loc_8c041202,PC),r12
	mov 0x00,r1
	mov r4,r6
	mov r4,r5
	add r4,r12
	mov 0x0F,r2

loc_8c041194:
	mov r6,r4
	add 0x0C,r4
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x2A,r0
	bf loc_8c0411c2
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x2A,r0
	bf loc_8c0411c2
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	cmp/eq 0x2A,r0
	bf loc_8c0411c2
	mov r7,r0
	nop
	mov.b r0,@(0xC,r5)
	mov r1,r0
	nop
	mov.b r0,@(0xD,r5)
	mov r2,r0
	nop
	mov.b r0,@(0xE,r5)

loc_8c0411c2:
	add 0x18,r6
	cmp/hs r12,r6
	bf.s loc_8c041194
	add 0x18,r5
	rts
	mov.l @r15+,r12

;==============================================
loc_8c0411ce:
	sts.l pr,@-r15
	mov.l @(loc_8c041204,PC),r4
	bsr loc_8c041184
	nop
	mov.l @(loc_8c041208,PC),r4
	bsr loc_8c041184
	nop
	mov.l @(loc_8c04120c,PC),r4
	bra loc_8c041184
	lds.l @r15+,pr

loc_8c0411e2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov.l @(loc_8c041210,PC),r7
	mov 0x4C,r0
	mov.l @r7,r13
	mov.b @(r0,r13),r0
	cmp/eq 0x07,r0
	bt loc_8c041214
	mov.l @(loc_8c041204,PC),r11
	bra loc_8c041216
	nop

;##############################################
loc_8c041202:
	#data 0x01f8
	#align4
loc_8c041204:
	#data 0x8c2897e0
loc_8c041208:
	#data 0x8c2899d8
loc_8c04120c:
	#data 0x8c212cec
loc_8c041210:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c041214:
	mov.l @(loc_8c041330,PC),r11

loc_8c041216:
	mov.w @(loc_8c041316,PC),r0
	mov 0x01,r5
	mov.l @(loc_8c041334,PC),r14
	mov.b @(r0,r4),r6
	add 0xE7,r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c041318,PC),r0
	extu.b r6,r6
	xor r5,r3
	mov r6,r2
	and r5,r3
	mov r6,r5
	mov.l r3,@r15
	shll r5
	mov.b @(r0,r13),r0
	add r2,r5
	mov.w @(loc_8c04131a,PC),r3
	shll2 r5
	mov.w @(loc_8c04131c,PC),r1
	shll r5
	muls.w r3,r0
	add r11,r5
	mov.w @(loc_8c041318,PC),r2
	mov r6,r12
	sts macl,r0
	add r14,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x1,r5)
	mov.l @r7,r0
	mov.b @(r0,r2),r0
	muls.w r3,r0
	sts macl,r0
	mov.w @(loc_8c04131e,PC),r1
	add r14,r0
	mov r2,r3
	mov.w @(loc_8c04131a,PC),r2
	mov.b @(r0,r1),r0
	mov.w @(loc_8c041320,PC),r1
	mov.b r0,@(0x2,r5)
	mov.l @r7,r0
	mov.b @(r0,r3),r0
	muls.w r2,r0
	sts macl,r0
	add r14,r0
	mov.b @(r0,r1),r0
	mov.w @(loc_8c041322,PC),r1
	mov.b r0,@(0x3,r5)
	mov.l @r7,r0
	mov.b @(r0,r3),r0
	muls.w r2,r0
	sts macl,r0
	add r14,r0
	mov.b @(r0,r1),r0
	mov.w @(loc_8c041324,PC),r1
	mov.b r0,@(0x4,r5)
	mov.l @r7,r0
	mov.b @(r0,r3),r0
	muls.w r2,r0
	sts macl,r0
	add r14,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x5,r5)
	mov.l @r7,r0
	mov.b @(r0,r3),r0
	muls.w r2,r0
	mov.w @(loc_8c041326,PC),r1
	add 0xED,r3
	mov.l @(loc_8c041338,PC),r2
	sts macl,r0
	add r14,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x6,r5)
	mov.l @r7,r0
	mov.b @(r0,r3),r0
	mov.b r0,@(0x7,r5)
	mov.w @(loc_8c041328,PC),r0
	mov.b @(r0,r4),r0
	mov.b r0,@(0x8,r5)
	mov.w @(loc_8c04132a,PC),r0
	mov.l @(r0,r4),r1
	mov.w @(loc_8c04132c,PC),r0
	jsr @r2
	add 0xFF,r12
	mov.b r0,@(0x9,r5)
	mov 0x3C,r7
	mov.w @(loc_8c04132a,PC),r0
	mov.l @(loc_8c041338,PC),r2
	mov.l @(r0,r4),r1
	jsr @r2
	mov r7,r0
	mov.l @(loc_8c04133c,PC),r2
	mov r0,r1
	jsr @r2
	mov r7,r0
	mov.b r0,@(0xA,r5)
	mov.w @(loc_8c04132a,PC),r0
	mov.l @(loc_8c04133c,PC),r2
	mov.l @(r0,r4),r1
	jsr @r2
	mov r7,r0
	mov 0x64,r1
	mov.l @(loc_8c041338,PC),r2
	mul.l r1,r0
	sts macl,r1
	jsr @r2
	mov r7,r0
	mov 0x2A,r7
	mov.b r0,@(0xB,r5)
	mov r7,r0
	nop
	mov.b r0,@(0xC,r5)
	mov.b r0,@(0xD,r5)
	mov.b r0,@(0xE,r5)
	mov.b r0,@(0xF,r5)
	mov.w @(loc_8c04132e,PC),r0
	mov.l @(r0,r4),r2
	add 0xFC,r0
	mov.l r2,@(0x10,r5)
	mov.l @(r0,r4),r1
	mov.w @(loc_8c04131a,PC),r2
	mov.l r1,@(0x14,r5)
	mov r15,r5
	mov.l @r15,r1
	mul.l r2,r1
	sts macl,r10
	add r14,r10
	bra loc_8c0413ae
	add 0x04,r5

;##############################################
loc_8c041316:
	#data 0x053d
loc_8c041318:
	#data 0x009b
loc_8c04131a:
	#data 0x05a4
loc_8c04131c:
	#data 0x052c
loc_8c04131e:
	#data 0x1074
loc_8c041320:
	#data 0x1bbc
loc_8c041322:
	#data 0x04c9
loc_8c041324:
	#data 0x1011
loc_8c041326:
	#data 0x1b59
loc_8c041328:
	#data 0x0527
loc_8c04132a:
	#data 0x0558
loc_8c04132c:
	#data 0x0e10
loc_8c04132e:
	#data 0x0538
	#align4
loc_8c041330:
	#data 0x8c212cec
loc_8c041334:
	#data 0x8c268340
loc_8c041338:
	#data bank12.loc_8c1291dc
loc_8c04133c:
	#data bank12.loc_8c12939c

;----------------------------------------------
loc_8c041340:
	mov r6,r13
	shll r13
	mov r6,r3
	mov r12,r14
	add r3,r13
	mov r12,r3
	shll2 r13
	shll r13
	shll r14
	add r3,r14
	shll2 r14
	shll r14
	add r11,r14
	add r11,r13
	mov.l @(0x14,r14),r2
	mov.l @(0x14,r13),r3
	cmp/hs r2,r3
	bf loc_8c0413b2
	mov.l @(0x14,r13),r0
	mov.l @(0x14,r14),r1
	cmp/eq r1,r0
	bf loc_8c041374
	mov.l @(0x10,r13),r3
	mov.l @(0x10,r14),r2
	cmp/hs r2,r3
	bf loc_8c0413b2

loc_8c041374:
	mov.w @(loc_8c0413c6,PC),r0
	mov.b @(r0,r10),r1
	extu.b r1,r1
	cmp/eq r12,r1
	bf.s loc_8c041382
	mov r5,r1
	mov.b r6,@(r0,r10)

loc_8c041382:
	mov.l @(loc_8c0413c8,PC),r3
	mov r14,r2
	jsr @r3
	mov 0x18,r0
	mov.l @(loc_8c0413c8,PC),r3
	mov r13,r2
	mov r14,r1
	jsr @r3
	mov 0x18,r0
	mov.l @(loc_8c0413c8,PC),r3
	mov r5,r2
	mov r13,r1
	jsr @r3
	mov 0x18,r0
	mov.b @r13,r2
	add 0xFF,r6
	add 0xFF,r12
	add 0x01,r2
	mov.b r2,@r13
	mov.b @r14,r3
	add 0xFF,r3
	mov.b r3,@r14

loc_8c0413ae:
	tst r6,r6
	bf loc_8c041340

loc_8c0413b2:
	mov.w @(loc_8c0413c6,PC),r0
	mov.b r6,@(r0,r4)
	add 0x1C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0413c6:
	#data 0x053d
	#align4
loc_8c0413c8:
	#data bank12.loc_8c1294bc

;==============================================
loc_8c0413cc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xE0,r15
	mov.w @(loc_8c0414d8,PC),r0
	mov 0x01,r5
	mov.l @(loc_8c0414f8,PC),r7
	mov.b @(r0,r4),r3
	mov.w @(loc_8c0414da,PC),r0
	mov.l r3,@r15
	xor r5,r3
	and r5,r3
	mov.w @(loc_8c0414de,PC),r1
	mov.l r3,@(0x4,r15)
	mov.b @(r0,r4),r6
	mov.l @r15,r2
	extu.b r6,r6
	mov.l @(loc_8c0414f4,PC),r11
	mov r6,r5
	mov r6,r3
	shll r5
	mov r6,r12
	add r3,r5
	mov.w @(loc_8c0414dc,PC),r3
	shll2 r5
	mul.l r3,r2
	shll r5
	add r11,r5
	sts macl,r0
	add r7,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x1,r5)
	mov.w @(loc_8c0414d8,PC),r0
	mov.b @(r0,r4),r0
	muls.w r3,r0
	sts macl,r0
	mov.w @(loc_8c0414e0,PC),r2
	add r7,r0
	mov.w @(loc_8c0414e2,PC),r1
	mov.b @(r0,r2),r0
	mov.w @(loc_8c0414e4,PC),r2
	mov.b r0,@(0x2,r5)
	mov.w @(loc_8c0414d8,PC),r0
	mov.b @(r0,r4),r0
	muls.w r3,r0
	sts macl,r0
	add r7,r0
	mov.b @(r0,r1),r0
	mov.w @(loc_8c0414e6,PC),r1
	mov.b r0,@(0x3,r5)
	mov.w @(loc_8c0414d8,PC),r0
	mov.b @(r0,r4),r0
	muls.w r3,r0
	sts macl,r0
	add r7,r0
	mov.b @(r0,r2),r0
	mov.b r0,@(0x4,r5)
	mov.w @(loc_8c0414d8,PC),r0
	mov.b @(r0,r4),r0
	muls.w r3,r0
	sts macl,r0
	add r7,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x5,r5)
	mov.w @(loc_8c0414d8,PC),r0
	mov.b @(r0,r4),r0
	muls.w r3,r0
	sts macl,r0
	mov.w @(loc_8c0414e8,PC),r2
	add r7,r0
	mov.l @(loc_8c0414fc,PC),r1
	mov.b @(r0,r2),r0
	mov.w @(loc_8c0414ea,PC),r3
	mov.b r0,@(0x6,r5)
	mov.l @r1,r0
	mov.b @(r0,r3),r0
	mov.l @(loc_8c041500,PC),r3
	mov.b r0,@(0x7,r5)
	mov.w @(loc_8c0414ec,PC),r0
	mov.b @(r0,r4),r0
	mov.b r0,@(0x8,r5)
	mov.w @(loc_8c0414ee,PC),r0
	mov.l @(r0,r4),r1
	mov.w @(loc_8c0414f0,PC),r0
	jsr @r3
	add 0xFF,r12
	mov.b r0,@(0x9,r5)
	mov 0x3C,r14
	mov.w @(loc_8c0414ee,PC),r0
	mov.l @(loc_8c041500,PC),r3
	mov.l @(r0,r4),r1
	jsr @r3
	mov r14,r0
	mov.l @(loc_8c041504,PC),r2
	mov r0,r1
	jsr @r2
	mov r14,r0
	mov.b r0,@(0xA,r5)
	mov.w @(loc_8c0414ee,PC),r0
	mov.l @(loc_8c041504,PC),r3
	mov.l @(r0,r4),r1
	jsr @r3
	mov r14,r0
	mov 0x64,r1
	mov.l @(loc_8c041500,PC),r3
	mul.l r1,r0
	sts macl,r1
	jsr @r3
	mov r14,r0
	mov 0x2A,r14
	mov.b r0,@(0xB,r5)
	mov r14,r0
	nop
	mov.b r0,@(0xC,r5)
	mov.b r0,@(0xD,r5)
	mov.b r0,@(0xE,r5)
	mov.b r0,@(0xF,r5)
	mov.w @(loc_8c0414f2,PC),r0
	mov.l @(r0,r4),r3
	add 0xFC,r0
	mov.l r3,@(0x10,r5)
	mov.l @(r0,r4),r2
	mov.w @(loc_8c0414dc,PC),r3
	mov.l r2,@(0x14,r5)
	mov r15,r5
	mov.l @(0x4,r15),r2
	mul.l r3,r2
	sts macl,r10
	add r7,r10
	bra loc_8c041568
	add 0x08,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0414d8:
	#data 0x0524
loc_8c0414da:
	#data 0x053e
loc_8c0414dc:
	#data 0x05a4
loc_8c0414de:
	#data 0x052c
loc_8c0414e0:
	#data 0x1074
loc_8c0414e2:
	#data 0x1bbc
loc_8c0414e4:
	#data 0x04c9
loc_8c0414e6:
	#data 0x1011
loc_8c0414e8:
	#data 0x1b59
loc_8c0414ea:
	#data 0x0088
loc_8c0414ec:
	#data 0x0527
loc_8c0414ee:
	#data 0x0558
loc_8c0414f0:
	#data 0x0e10
loc_8c0414f2:
	#data 0x0538
	#align4
loc_8c0414f4:
	#data 0x8c2899d8
loc_8c0414f8:
	#data 0x8c268340
loc_8c0414fc:
	#data work.GameGlobalPointer
loc_8c041500:
	#data bank12.loc_8c1291dc
loc_8c041504:
	#data bank12.loc_8c12939c

;==============================================
loc_8c041508:
	mov r6,r13
	shll r13
	mov r6,r3
	add r3,r13
	mov r12,r14
	shll2 r13
	mov r12,r3
	shll r13
	shll r14
	add r3,r14
	add r11,r13
	mov.b @(0x8,r13),r0
	shll2 r14
	shll r14
	mov r0,r3
	add r11,r14
	mov.b @(0x8,r14),r0
	cmp/hs r0,r3
	bf loc_8c04156c
	mov.w @(loc_8c041580,PC),r0
	mov.b @(r0,r10),r2
	extu.b r2,r2
	cmp/eq r12,r2
	bf.s loc_8c04153c
	mov r5,r1
	mov.b r6,@(r0,r10)

loc_8c04153c:
	mov.l @(loc_8c041584,PC),r3
	mov r14,r2
	jsr @r3
	mov 0x18,r0
	mov.l @(loc_8c041584,PC),r3
	mov r13,r2
	mov r14,r1
	jsr @r3
	mov 0x18,r0
	mov.l @(loc_8c041584,PC),r3
	mov r5,r2
	mov r13,r1
	jsr @r3
	mov 0x18,r0
	mov.b @r13,r2
	add 0xFF,r6
	add 0xFF,r12
	add 0x01,r2
	mov.b r2,@r13
	mov.b @r14,r3
	add 0xFF,r3
	mov.b r3,@r14

loc_8c041568:
	tst r6,r6
	bf loc_8c041508

loc_8c04156c:
	mov.w @(loc_8c041580,PC),r0
	mov.b r6,@(r0,r4)
	add 0x20,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c041580:
	#data 0x053e
	#align4
loc_8c041584:
	#data bank12.loc_8c1294bc

;==============================================
loc_8c041588:
	mov.l @(loc_8c041698,PC),r2
	mov.w @(loc_8c041692,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	mov.l @(loc_8c04169c,PC),r0
	shll2 r1
	mov.l @(r0,r1),r3
	jmp @r3
	nop

;==============================================
loc_8c04159a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0416a0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c041698,PC),r4
	mov.w @(loc_8c041692,PC),r0
	mov.l @r4,r3
	mov.b @(r0,r3),r2
	add 0x01,r2
	mov.b r2,@(r0,r3)
	mov.w @(loc_8c041694,PC),r0
	mov.l @r4,r3
	mov.w r0,@(0x8,r3)
	mov 0x05,r0
	mov.l @r4,r3
	mov.w r0,@(0xE,r3)
	mov.l @(loc_8c0416a4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0416a8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0416ac,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c0416b0,PC),r2
	jsr @r2
	mov 0x08,r4
	mov.l @(loc_8c0416b4,PC),r3
	mov 0x01,r5
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c0416b4,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	mov.l @(loc_8c0416b8,PC),r3
	jsr @r3
	mov 0x18,r4
	mov.l @(loc_8c0416bc,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c0416c0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0416c4,PC),r2
	jsr @r2
	mov 0x2F,r4
	mov.l @(loc_8c0416c8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0416cc,PC),r14
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
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x06,r4
	jsr @r14
	mov 0x07,r4
	mov.l @(loc_8c0416d0,PC),r2
	jsr @r2
	mov 0x08,r4
	mov.l @(loc_8c0416d4,PC),r3
	jsr @r3
	mov 0x0B,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0416d4,PC),r2
	mov 0x0C,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c04163a:
	mov.l r14,@-r15
	mov.l @(loc_8c041698,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r4
	mov.w @(0xE,r4),r0
	tst r0,r0
	bt loc_8c041664
	mov.w @(0xE,r4),r0
	mov 0x02,r3
	cmp/gt r3,r0
	bf loc_8c041656
	mov.l @(loc_8c0416d0,PC),r1
	jsr @r1
	mov 0x08,r4

loc_8c041656:
	mov.l @r14,r3
	mov.w @(0xE,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xE,r3)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c041664:
	mov.l @(loc_8c0416d0,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r2)
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	mov.w @(loc_8c041696,PC),r3
	cmp/gt r3,r0
	bt loc_8c04168c
	mov.w @(loc_8c041692,PC),r0
	mov 0x00,r2
	mov.l @r14,r1
	mov.b @(r0,r1),r3
	add 0x01,r3
	mov.b r3,@(r0,r1)
	mov.l @(loc_8c0416d8,PC),r1
	mov.b r2,@r1

loc_8c04168c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c041692:
	#data 0x008e
loc_8c041694:
	#data 0x012c
loc_8c041696:
	#data 0x00b4
	#align4
loc_8c041698:
	#data work.GameGlobalPointer
loc_8c04169c:
	#data bank14.loc_8c14dc54
loc_8c0416a0:
	#data bank02.loc_8c027ada
loc_8c0416a4:
	#data loc_8c04182e
loc_8c0416a8:
	#data loc_8c04185e
loc_8c0416ac:
	#data loc_8c044e56
loc_8c0416b0:
	#data bank03.loc_8c032be0
loc_8c0416b4:
	#data loc_8c041a14
loc_8c0416b8:
	#data loc_8c041dde
loc_8c0416bc:
	#data loc_8c041aa6
loc_8c0416c0:
	#data loc_8c041e44
loc_8c0416c4:
	#data loc_8c04257c
loc_8c0416c8:
	#data bank0f.loc_8c0f88e0
loc_8c0416cc:
	#data bank0f.loc_8c0f8b12
loc_8c0416d0:
	#data loc_8c044ef0
loc_8c0416d4:
	#data bank02.loc_8c027b64
loc_8c0416d8:
	#data 0x8c2895f6
	
;==============================================
loc_8c0416dc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0417b4,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c0417b8,PC),r14
	mov 0x01,r5
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r2)
	mov.w @(loc_8c0417ac,PC),r0
	mov.l @r14,r4
	mov.b @(r0,r4),r4
	mov r4,r3
	tst r5,r3
	bt loc_8c04170a
	mov.l @(loc_8c0417bc,PC),r1
	mov.w @(loc_8c0417ae,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c041724

loc_8c04170a:
	mov 0x02,r0
	tst r4,r0
	bt loc_8c04171c
	mov.l @(loc_8c0417c0,PC),r2
	mov.w @(loc_8c0417ae,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bf loc_8c041724

loc_8c04171c:
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	tst r0,r0
	bf loc_8c041740

loc_8c041724:
	mov.l @r14,r3
	mov r5,r0
	nop
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c0417c4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c041740
	mov.w @(loc_8c0417b0,PC),r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	add 0x01,r2
	mov.b r2,@(r0,r3)

loc_8c041740:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c041746:
	mov.l r14,@-r15
	mov 0x00,r4
	mov.l @(loc_8c0417b8,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov r4,r0
	nop
	mov.b r0,@(0x2,r3)
	mov 0x01,r2
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
	mov.w @(loc_8c0417b2,PC),r0
	mov.l @r14,r3
	mov.b r4,@(r0,r3)
	add 0x01,r0
	mov.l @r14,r3
	mov.b r4,@(r0,r3)
	mov 0x19,r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c0417c8,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0417d0,PC),r2
	mov.l @(loc_8c0417cc,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c0417d4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0417d8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0417dc,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c0417ac,PC),r0
	mov.l @r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0417e0,PC),r3
	mov.b @(r0,r4),r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0417ac:
	#data 0x0084
loc_8c0417ae:
	#data 0x0360
loc_8c0417b0:
	#data 0x008e
loc_8c0417b2:
	#data 0x008d
	#align4
loc_8c0417b4:
	#data loc_8c044ef0
loc_8c0417b8:
	#data work.GameGlobalPointer
loc_8c0417bc:
	#data 0x8c2681dc
loc_8c0417c0:
	#data 0x8c2681f0
loc_8c0417c4:
	#data bank02.loc_8c0279a4
loc_8c0417c8:
	#data loc_8c044d8c
loc_8c0417cc:
	#data 0xff000000
loc_8c0417d0:
	#data bank02.loc_8c02dc1c
loc_8c0417d4:
	#data loc_8c04182e
loc_8c0417d8:
	#data loc_8c04185e
loc_8c0417dc:
	#data loc_8c041ecc
loc_8c0417e0:
	#data bank02.loc_8c027b30

;==============================================
loc_8c0417e4:
	mov.l @(loc_8c0418f0,PC),r3
	mov 0x43,r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0417fc
	mov.l @(0x14,r4),r0
	cmp/eq 0x40,r0
	bt loc_8c041810

loc_8c0417fc:
	mov.l @(loc_8c0418f4,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0418f8,PC),r2
	mov r14,r4
	mov.l @(loc_8c0418fc,PC),r3
	mov.l r14,@r2
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c041810:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c041816:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0418f4,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c0418f8,PC),r2
	mov r14,r4
	mov.l @(loc_8c0418fc,PC),r3
	mov.l r14,@r2
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04182e:
	sts.l pr,@-r15
	mov.l @(loc_8c041900,PC),r5
	mov 0x00,r6
	mov.l @(loc_8c041904,PC),r3
	jsr @r3
	mov r6,r4
	mov.l @(loc_8c041908,PC),r2
	mov.l @r2,r4
	tst r4,r4
	bt loc_8c041848
	mov.l @(loc_8c04190c,PC),r1
	jmp @r1
	lds.l @r15+,pr

;==============================================
loc_8c041848:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c04184e:
	add 0xFC,r15
	mov.b r4,@r15
	mov 0x00,r6
	mov.b @r15,r4
	mov.l @(loc_8c041904,PC),r3
	mov.l @(loc_8c041910,PC),r5
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c04185e:
	mov.l @(loc_8c041904,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c041914,PC),r5
	jmp @r3
	mov r6,r4

;==============================================
loc_8c041868:
	add 0xF8,r15
	mov r4,r0
	nop
	mov.b r0,@(0x4,r15)
	mov.b r5,@r15
	mov.b @r15,r0
	mov.l @(loc_8c041904,PC),r3
	and 0x7F,r0
	mov.w @(loc_8c0418e6,PC),r5
	extu.b r0,r6
	mov.b r0,@r15
	mov.b @(0x4,r15),r0
	mov r0,r4
	jmp @r3
	add 0x08,r15

;==============================================
loc_8c041886:
	mov 0x7F,r5
	mov.l @(loc_8c041918,PC),r2
	extu.b r4,r0
	and r0,r5
	mov.l @r2,r4
	add 0x81,r5
	mov r5,r3
	shll2 r5
	shll r5
	sub r3,r5
	mov 0x7C,r3
	cmp/ge r3,r4
	bf loc_8c0418aa
	mov.w @(loc_8c0418e8,PC),r0
	cmp/gt r0,r4
	bt loc_8c0418aa
	bra loc_8c0418ac
	add 0xA6,r5

loc_8c0418aa:
	add 0xBA,r5

loc_8c0418ac:
	mov.l @(loc_8c041908,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c0418ba
	mov.l @(loc_8c04191c,PC),r2
	jmp @r2
	nop

loc_8c0418ba:
	rts
	nop

;==============================================
loc_8c0418be:
	add 0xFC,r15
	mov.b r5,@r15
	mov.b @r15,r0
	mov.w @(loc_8c0418ea,PC),r5
	mov.l @(loc_8c041904,PC),r3
	and 0x7F,r0
	mov.b r0,@r15
	extu.b r0,r6
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0418d2:
	add 0xFC,r15
	mov.b r5,@r15
	mov.b @r15,r0
	mov.w @(loc_8c0418ec,PC),r5
	mov.l @(loc_8c041904,PC),r3
	and 0x7F,r0
	mov.b r0,@r15
	extu.b r0,r6
	jmp @r3
	add 0x04,r15


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0418e6:
	#data 0x04a0
loc_8c0418e8:
	#data 0x0086
loc_8c0418ea:
	#data 0x0aa0
loc_8c0418ec:
	#data 0x09a0
	#align4
loc_8c0418f0:
	#data work.GameGlobalPointer
loc_8c0418f4:
	#data bank12.loc_8c125b70
loc_8c0418f8:
	#data 0x8c28c4c0
loc_8c0418fc:
	#data loc_8c042c66
loc_8c041900:
	#data 0x000100a0
loc_8c041904:
	#data bank12.loc_8c1257e0
loc_8c041908:
	#data 0x8c1f8ac4
loc_8c04190c:
	#data bank17.loc_8c174b52
loc_8c041910:
	#data 0x001100a0
loc_8c041914:
	#data 0x000300a0
loc_8c041918:
	#data bank14.loc_8c14dc64
loc_8c04191c:
	#data bank17.loc_8c174d32

;==============================================
loc_8c041920:
	mov.l r14,@-r15
	mov 0x7F,r3
	mov.l @(loc_8c041a84,PC),r14
	mov 0x54,r1
	sts.l pr,@-r15
	mov.l @(loc_8c041a88,PC),r2
	and r3,r4
	add r14,r1
	extu.b r4,r0
	jsr @r2
	mov.l @r1,r1
	lds r0,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	float fpul,fr3
	fmov fr3,fr4
	fsub fr4,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c04194c
	fmov fr2,@(r0,r14)
	fmov fr3,@(r0,r14)

loc_8c04194c:
	fmov @(r0,r14),fr3
	mov 0x00,r4
	lds.l @r15+,pr
	ftrc fr3,fpul
	mov.w @(loc_8c041a7e,PC),r5
	mov.l @(loc_8c041a8c,PC),r3
	sts fpul,r6
	extu.b r6,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c041960:
	mov.l r14,@-r15
	mov 0x7F,r3
	mov.l @(loc_8c041a84,PC),r14
	mov 0x54,r1
	sts.l pr,@-r15
	mov.l @(loc_8c041a88,PC),r2
	and r3,r4
	add r14,r1
	extu.b r4,r0
	jsr @r2
	mov.l @r1,r1
	lds r0,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	float fpul,fr3
	fmov fr3,fr4
	fadd fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	mov.l @(r0,r14),r2
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r2,fpul
	float fpul,fr3
	fcmp/gt fr3,fr2
	bf loc_8c0419a0
	mov 0x54,r0
	mov.l @(r0,r14),r1
	mov 0x34,r0
	lds r1,fpul
	float fpul,fr3
	fmov fr3,@(r0,r14)

loc_8c0419a0:
	mov 0x34,r0
	mov.w @(loc_8c041a7e,PC),r5
	fmov @(r0,r14),fr3
	mov 0x00,r4
	lds.l @r15+,pr
	ftrc fr3,fpul
	mov.l @(loc_8c041a8c,PC),r3
	sts fpul,r6
	extu.b r6,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0419b6:
	mov.l r14,@-r15
	mov 0x7F,r3
	mov.l r13,@-r15
	mov 0x54,r1
	mov.l @(loc_8c041a84,PC),r14
	and r3,r5
	sts.l pr,@-r15
	mov.l @(loc_8c041a88,PC),r2
	add r14,r1
	extu.b r5,r0
	jsr @r2
	mov.l @r1,r1
	lds r0,fpul
	mov r14,r2
	extu.w r4,r13
	add 0x34,r2
	float fpul,fr3
	shll2 r13
	add r13,r2
	fmov fr3,fr4
	fmov @r2,fr3
	fsub fr4,fr3
	fmov fr3,@r2
	mov r14,r2
	add 0x34,r2
	fldi0 fr3
	add r13,r2
	fmov @r2,fr2
	fcmp/gt fr2,fr3
	bf.s loc_8c0419fc
	mov r14,r6
	mov r14,r1
	add 0x34,r1
	add r13,r1
	fmov fr3,@r1

loc_8c0419fc:
	add 0x34,r6
	mov.l @(loc_8c041a8c,PC),r3
	add r13,r6
	mov.w @(loc_8c041a80,PC),r5
	fmov @r6,fr3
	lds.l @r15+,pr
	ftrc fr3,fpul
	mov.l @r15+,r13
	sts fpul,r6
	extu.b r6,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c041a14:
	mov.l r14,@-r15
	mov 0x7F,r3
	mov.l r13,@-r15
	mov 0x54,r1
	mov.l @(loc_8c041a84,PC),r14
	and r3,r5
	sts.l pr,@-r15
	mov.l @(loc_8c041a88,PC),r2
	add r14,r1
	extu.b r5,r0
	jsr @r2
	mov.l @r1,r1
	lds r0,fpul
	mov r14,r2
	extu.w r4,r13
	add 0x34,r2
	float fpul,fr3
	shll2 r13
	add r13,r2
	mov 0x54,r0
	fmov fr3,fr4
	fmov @r2,fr3
	fadd fr4,fr3
	fmov fr3,@r2
	mov r14,r2
	mov.l @(r0,r14),r1
	add 0x34,r2
	add r13,r2
	lds r1,fpul
	fmov @r2,fr2
	float fpul,fr3
	fcmp/gt fr3,fr2
	bf.s loc_8c041a66
	mov r14,r6
	mov.l @(r0,r14),r2
	mov r14,r1
	add 0x34,r1
	lds r2,fpul
	add r13,r1
	float fpul,fr3
	fmov fr3,@r1

loc_8c041a66:
	add 0x34,r6
	mov.l @(loc_8c041a8c,PC),r3
	add r13,r6
	mov.w @(loc_8c041a80,PC),r5
	fmov @r6,fr3
	lds.l @r15+,pr
	ftrc fr3,fpul
	mov.l @r15+,r13
	sts fpul,r6
	extu.b r6,r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c041a7e:
	#data 0x01a0
loc_8c041a80:
	#data 0x10a0
	#align4
loc_8c041a84:
	#data 0x8c28c4a8
loc_8c041a88:
	#data bank12.loc_8c129128
loc_8c041a8c:
	#data bank12.loc_8c1257e0

;==============================================
loc_8c041a90:
	sts.l pr,@-r15
	mov.l @(loc_8c041be4,PC),r3
	mov.w @(loc_8c041bdc,PC),r1
	jsr @r3
	extu.b r4,r0
	lds r0,fpul
	lds.l @r15+,pr
	mov.l @(loc_8c041be8,PC),r3
	float fpul,fr3
	rts
	fmov fr3,@r3

;==============================================
loc_8c041aa6:
	sts.l pr,@-r15
	mov.l @(loc_8c041be4,PC),r3
	mov.w @(loc_8c041bde,PC),r1
	jsr @r3
	extu.b r4,r0
	lds r0,fpul
	lds.l @r15+,pr
	mov.l @(loc_8c041be8,PC),r3
	float fpul,fr3
	rts
	fmov fr3,@r3

;==============================================
loc_8c041abc:
	mov.l r14,@-r15
	mov 0x30,r1
	mov.l @(loc_8c041bec,PC),r14
	mov 0x2C,r0
	add r14,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	mov.l @(r0,r14),r3
	mov 0x2C,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fcmp/gt fr3,fr2
	bf loc_8c041aea
	mov 0x54,r0
	mov.l @(r0,r14),r2
	mov 0x2C,r0
	lds r2,fpul
	float fpul,fr3
	fmov fr3,@(r0,r14)

loc_8c041aea:
	mov 0x2C,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c041af6
	fmov fr3,@(r0,r14)

loc_8c041af6:
	fmov @(r0,r14),fr3
	ftrc fr3,fpul
	sts fpul,r4
	bra loc_8c041886
	mov.l @r15+,r14

loc_8c041b00:
	mov.l @(loc_8c041bf0,PC),r2
	mov 0x01,r3
	mov.l @(loc_8c041bf4,PC),r5
	mov 0x00,r6
	mov.l r3,@r2
	mov.l @(loc_8c041bf8,PC),r3
	jmp @r3
	mov r6,r4

loc_8c041b10:
	mov.l @(loc_8c041bf0,PC),r2
	mov 0x00,r3
	mov r3,r4
	mov r3,r6
	mov.l r3,@r2
	mov.l @(loc_8c041bf8,PC),r3
	mov.l @(loc_8c041bfc,PC),r5
	jmp @r3
	nop

;==============================================
loc_8c041b22:
	mova @(0xDC,PC),r0
	mov.l @(loc_8c041bec,PC),r5
	fmov @r0,fr4
	mov 0x00,r4
	mov 0x20,r6

loc_8c041b2c:
	mov r5,r3
	add 0x34,r3
	add r4,r3
	add 0x04,r4
	cmp/hs r6,r4
	bf.s loc_8c041b2c
	fmov fr4,@r3
	mov 0x30,r0
	fldi0 fr3
	fmov fr3,@(r0,r5)
	mov 0x2C,r0
	fmov fr4,@(r0,r5)
	mov 0x54,r0
	mov 0x7F,r3
	rts
	mov.l r3,@(r0,r5)

;==============================================
loc_8c041b4c:
	mov.l r14,@-r15
	mov 0x20,r5
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov r4,r10
	lds r10,fpul
	mov 0x00,r4
	fmov fr15,@-r15
	sts.l pr,@-r15
	float fpul,fr3
	mov.l @(loc_8c041bec,PC),r11
	fmov fr3,fr15

loc_8c041b68:
	mov r11,r3
	add 0x34,r3
	add r4,r3
	add 0x04,r4
	cmp/hs r5,r4
	bf.s loc_8c041b68
	fmov fr15,@r3
	mov 0x7F,r12
	mov.w @(loc_8c041be0,PC),r14
	and r10,r12
	mov.l @(loc_8c041c04,PC),r13
	mov 0x10,r5
	mov r14,r6
	mov r12,r7
	jsr @r13
	mov 0x01,r4
	mov 0x10,r5
	mov r14,r6
	mov r12,r7
	jsr @r13
	mov 0x02,r4
	mov 0x10,r5
	mov r14,r6
	mov r12,r7
	jsr @r13
	mov 0x03,r4
	mov 0x10,r5
	mov r14,r6
	mov r12,r7
	jsr @r13
	mov 0x04,r4
	mov 0x10,r5
	mov r14,r6
	mov r12,r7
	jsr @r13
	mov 0x05,r4
	mov 0x10,r5
	mov r14,r6
	mov r12,r7
	jsr @r13
	mov 0x06,r4
	mov 0x10,r5
	mov r14,r6
	mov r12,r7
	jsr @r13
	mov 0x07,r4
	mov 0x2C,r0
	fmov fr15,@(r0,r11)
	mov 0x54,r0
	mov.l r10,@(r0,r11)
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c041bdc:
	#data 0xfc18
loc_8c041bde:
	#data 0x03e8
loc_8c041be0:
	#data 0x27b0
	#align4
loc_8c041be4:
	#data bank12.loc_8c129128
loc_8c041be8:
	#data 0x8c28c4d8
loc_8c041bec:
	#data 0x8c28c4a8
loc_8c041bf0:
	#data 0x8c28c4b0
loc_8c041bf4:
	#data 0x000800a0
loc_8c041bf8:
	#data bank12.loc_8c1257e0
loc_8c041bfc:
	#data 0x000900a0
	#data 0x42fe0000
loc_8c041c04:
	#data bank12.loc_8c1258e0

;==============================================
loc_8c041c08:
	mov.l @(loc_8c041d24,PC),r3
	mov 0x43,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c041c18
	bra loc_8c041c1a
	mov 0x5F,r4

loc_8c041c18:
	mov 0x7F,r4

loc_8c041c1a:
	bra loc_8c041b4c
	nop

loc_8c041c1e:
	rts
	nop


;==============================================
loc_8c041c22:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c041d28,PC),r14
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x03,r4
	jsr @r14
	mov 0x06,r4
	jsr @r14
	mov 0x04,r4
	jsr @r14
	mov 0x02,r4
	mov.l @(loc_8c041d30,PC),r11
	mov 0x00,r9
	mov.l @(loc_8c041d34,PC),r12
	mov r9,r14
	mov.w @(loc_8c041d1c,PC),r13
	mov 0x06,r8
	mov.l @(loc_8c041d2c,PC),r10

loc_8c041c5a:
	mul.l r13,r14
	mov r12,r3
	add 0x26,r3
	add r14,r3
	cmp/pl r14

loc_8c041c64:
	mov.b r14,@r3
	mov r9,r4
	sts macl,r5
	bf.s loc_8c041c8e
	add r11,r5

loc_8c041c6e:
	mul.l r13,r4
	mov.w @(loc_8c041d1e,PC),r0
	mov.b @(r0,r5),r2
	sts macl,r3
	add r11,r3
	mov.b @(r0,r3),r1
	cmp/eq r1,r2
	bf loc_8c041c88
	mov r12,r2
	add 0x26,r2
	add r14,r2
	bra loc_8c041c8e
	mov.b r4,@r2

loc_8c041c88:
	add 0x01,r4
	cmp/ge r14,r4
	bf loc_8c041c6e

loc_8c041c8e:
	mov r12,r3
	add 0x26,r3
	add r14,r3
	mov.b @r3,r2
	extu.b r2,r2
	cmp/eq r14,r2
	bf loc_8c041cd6
	mul.l r13,r14
	mov.w @(loc_8c041d1e,PC),r0
	mov 0x01,r6
	mov.l @(loc_8c041d3c,PC),r3
	mov r10,r5
	sts macl,r4
	add r11,r4
	mov.b @(r0,r4),r4
	mov.l @(loc_8c041d38,PC),r0
	shll2 r4
	jsr @r3
	mov.l @(r0,r4),r4
	mov r12,r5
	add 0x26,r5
	add r14,r5
	mov.l @(loc_8c041d40,PC),r0
	mov.b @r5,r5
	mov.l @(loc_8c041d44,PC),r3
	extu.b r5,r5
	shll2 r5
	mov.l @(r0,r5),r5
	jsr @r3
	mov r10,r4
	mov.l @(loc_8c041d48,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c041d4c,PC),r3
	jsr @r3
	mov r0,r4

loc_8c041cd6:
	add 0x01,r14
	cmp/ge r8,r14
	bf loc_8c041c5a
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c041cee:
	sts.l pr,@-r15
	mov.l @(loc_8c041d48,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c041d4c,PC),r2
	jsr @r2
	mov r0,r4
	mov.l @(loc_8c041d50,PC),r3
	mov.w @(loc_8c041d20,PC),r4
	mov.l @(loc_8c041d2c,PC),r5
	jsr @r3
	mov 0x01,r6
	mov.l @(loc_8c041d44,PC),r2
	mov.l @(loc_8c041d2c,PC),r4
	jsr @r2
	mov 0x01,r5
	mov.l @(loc_8c041d48,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c041d4c,PC),r2
	mov r0,r4
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c041d1c:
	#data 0x05a4
loc_8c041d1e:
	#data 0x052c
loc_8c041d20:
	#data 0x02aa
	#align4
loc_8c041d24:
	#data work.GameGlobalPointer
loc_8c041d28:
	#data bank12.loc_8c125660
loc_8c041d2c:
	#data 0x0cc00000
loc_8c041d30:
	#data 0x8c268340
loc_8c041d34:
	#data 0x8c28c4a8
loc_8c041d38:
	#data bank13.loc_8c138c54
loc_8c041d3c:
	#data bank02.loc_8c027366
loc_8c041d40:
	#data bank13.loc_8c138b90
loc_8c041d44:
	#data bank12.loc_8c125250
loc_8c041d48:
	#data bank12.loc_8c125e00
loc_8c041d4c:
	#data loc_8c042d0c
loc_8c041d50:
	#data bank02.loc_8c0273ae

;==============================================
loc_8c041d54:
	sts.l pr,@-r15
	mov.l @(loc_8c041e18,PC),r3
	jsr @r3
	mov 0x07,r4
	mov.l @(loc_8c041e1c,PC),r2
	jsr @r2
	nop
	bsr loc_8c042d0c
	mov r0,r4
	mov.l @(loc_8c041e24,PC),r2
	mov 0x01,r6
	mov.l @(loc_8c041e20,PC),r5
	jsr @r2
	mov 0x7B,r4
	mov.l @(loc_8c041e28,PC),r3
	mov.l @(loc_8c041e20,PC),r4
	jsr @r3
	mov 0x07,r5
	mov.l @(loc_8c041e1c,PC),r2
	jsr @r2
	nop
	mov r0,r4
	bra loc_8c042d0c
	lds.l @r15+,pr

loc_8c041d84:
	sts.l pr,@-r15
	mov.l @(loc_8c041e18,PC),r3
	jsr @r3
	mov 0x07,r4
	mov.l @(loc_8c041e1c,PC),r2
	jsr @r2
	nop
	bsr loc_8c042d0c
	mov r0,r4
	mov.l @(loc_8c041e28,PC),r2
	mov.l @(loc_8c041e20,PC),r4
	jsr @r2
	mov 0x07,r5
	mov.l @(loc_8c041e1c,PC),r3
	jsr @r3
	nop
	mov r0,r4
	bra loc_8c042d0c
	lds.l @r15+,pr

;==============================================
loc_8c041daa:
	sts.l pr,@-r15
	mov.l @(loc_8c041e18,PC),r3
	jsr @r3
	mov 0x07,r4
	mov.l @(loc_8c041e1c,PC),r2
	jsr @r2
	nop

loc_8c041db8:
	bsr loc_8c042d0c
	mov r0,r4
	mov.l @(loc_8c041e24,PC),r2
	mov 0x01,r6
	mov.l @(loc_8c041e2c,PC),r5
	jsr @r2
	mov 0x7A,r4
	mov.l @(loc_8c041e28,PC),r3
	mov.l @(loc_8c041e2c,PC),r4
	jsr @r3
	mov 0x07,r5
	mov.l @(loc_8c041e1c,PC),r2
	jsr @r2
	nop
	mov r0,r4
	bra loc_8c042d0c
	lds.l @r15+,pr

loc_8c041dda:
	bra loc_8c041abc
	nop

;==============================================
loc_8c041dde:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c041e30,PC),r3
	mov 0x43,r0
	mov.b r4,@r15
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c041df6
	mov.l @(0x14,r4),r0
	cmp/eq 0x40,r0
	bt loc_8c041e10

loc_8c041df6:
	mov.l @(loc_8c041e34,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c041e04
	mov.l @(loc_8c041e38,PC),r1
	jsr @r1
	nop

loc_8c041e04:
	mov.b @r15,r3
	mov.l @(loc_8c041e3c,PC),r0
	shll2 r3
	mov.l @(loc_8c041e40,PC),r2
	mov.l @(r0,r3),r3
	mov.l r3,@r2

loc_8c041e10:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c041e18:
	#data bank12.loc_8c125660
loc_8c041e1c:
	#data bank12.loc_8c125e00
loc_8c041e20:
	#data 0x0ccde000
loc_8c041e24:
	#data bank02.loc_8c027366
loc_8c041e28:
	#data bank12.loc_8c125250
loc_8c041e2c:
	#data 0x0c420000
loc_8c041e30:
	#data work.GameGlobalPointer
loc_8c041e34:
	#data 0x8c1f8ac4
loc_8c041e38:
	#data bank17.loc_8c174b52
loc_8c041e3c:
	#data bank13.loc_8c138bbc
loc_8c041e40:
	#data bank14.loc_8c14dc64

;==============================================
loc_8c041e44:
	mov.l @(loc_8c041f30,PC),r1
	mov 0x43,r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r1,r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c041e5c
	mov.l @(0x14,r4),r0
	cmp/eq 0x40,r0
	bt loc_8c041ec4

loc_8c041e5c:
	mov.l @(loc_8c041f34,PC),r2
	mov 0x06,r5
	jsr @r2
	mov 0x03,r4
	tst r0,r0
	bf loc_8c041ec4
	mov.l @(loc_8c041f30,PC),r3
	mov 0x2D,r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c041ec4
	mov.l @(loc_8c041f38,PC),r13
	mov.l @r13,r3
	cmp/pz r3
	bf loc_8c041ec4
	mov.l @(loc_8c041f3c,PC),r14
	mov.l @r14,r3
	tst r3,r3
	bt loc_8c041e8c
	mov.l @(loc_8c041f40,PC),r3
	jsr @r3
	mov.l @r14,r4
	mov r0,r5

loc_8c041e8c:
	mov.l @r13,r4
	mov 0x7C,r2
	cmp/ge r2,r4
	bf loc_8c041e9e
	mov.w @(loc_8c041f2a,PC),r1
	cmp/gt r1,r4
	bt loc_8c041e9e
	bra loc_8c041ea0
	add 0xA6,r5

loc_8c041e9e:
	add 0xBA,r5

loc_8c041ea0:
	mov.l @r14,r3
	tst r3,r3
	bt loc_8c041ec0
	mov.l @(loc_8c041f44,PC),r2
	mov 0x01,r3
	mov.b r3,@r2
	mov.l @(loc_8c041f48,PC),r3
	jsr @r3
	mov.l @r14,r4
	mov.l @r13,r5
	mov.l @(loc_8c041f4c,PC),r0
	shll2 r5
	mov.l @(loc_8c041f50,PC),r3
	mov.l @(r0,r5),r5
	jsr @r3
	mov.l @r14,r4

loc_8c041ec0:
	mov 0xFF,r2
	mov.l r2,@r13

loc_8c041ec4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c041ecc:
	mov.l @(loc_8c041f3c,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c041eda
	mov.l @(loc_8c041f54,PC),r2
	jmp @r2
	nop

;==============================================
loc_8c041eda:
	rts
	nop

;==============================================
loc_8c041ede:
	rts
	nop

;==============================================
loc_8c041ee2:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c041f34,PC),r3
	mov 0x06,r5
	mov.b r4,@r15
	jsr @r3
	mov 0x03,r4
	tst r0,r0
	bf loc_8c041f1c
	mov.l @(loc_8c041f30,PC),r2
	mov 0x2D,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c041f1c
	mov.b @r15,r4
	mov.w @(loc_8c041f2c,PC),r3
	extu.b r4,r4
	shll16 r4
	bsr loc_8c0417e4
	add r3,r4
	mov.l @(loc_8c041f58,PC),r5
	mov 0x00,r4
	fmov @r5,fr3
	ftrc fr3,fpul
	sts fpul,r5
	add 0x04,r15
	bra loc_8c041868
	lds.l @r15+,pr

loc_8c041f1c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8c041f24:
	mov.w @(loc_8c041f2c,PC),r4
	bra loc_8c0417e4
	nop

;##############################################
loc_8c041f2a:
	#data 0x0086
loc_8c041f2c:
	#data 0x00a8
	#align4
loc_8c041f30:
	#data work.GameGlobalPointer
loc_8c041f34:
	#data bank03.loc_8c039240
loc_8c041f38:
	#data bank14.loc_8c14dc64
loc_8c041f3c:
	#data 0x8c1f8ac4
loc_8c041f40:
	#data bank17.loc_8c174d44
loc_8c041f44:
	#data 0x8c26a963
loc_8c041f48:
	#data bank17.loc_8c174d32
loc_8c041f4c:
	#data bank14.loc_8c148688;File Table
loc_8c041f50:
	#data bank17.loc_8c1745c0
loc_8c041f54:
	#data bank17.loc_8c174b52
loc_8c041f58:
	#data 0x8c28c4dc

;----------------------------------------------
loc_8c041f5c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r5,r13
	mov.l @(loc_8c042068,PC),r3
	mov r15,r5
	mov r4,r14
	add 0x04,r5
	jsr @r3
	add 0x34,r4
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mova @(0xF4,PC),r0
	fmov @r0,fr1
	mov 0xC0,r4
	fadd fr3,fr2
	fdiv fr1,fr2
	ftrc fr2,fpul
	sts fpul,r7
	cmp/ge r4,r7
	bt loc_8c041f8e
	mov r4,r7

loc_8c041f8e:
	mov 0x3F,r4
	cmp/gt r4,r7
	bf loc_8c041f96
	mov r4,r7

loc_8c041f96:
	mov.w @(loc_8c04205a,PC),r0
	mov 0x10,r5
	mov.l @(loc_8c042074,PC),r3
	mov.l @(loc_8c042080,PC),r2
	mov.w @(loc_8c042058,PC),r6

loc_8c041fa0:
	mov.l r7,@r3
	mov.b @(r0,r14),r4
	mov.l @(loc_8c042078,PC),r0
	extu.b r4,r4
	mov.b @(r0,r4),r4
	mov.l @(loc_8c04207c,PC),r0
	extu.b r4,r4
	shll2 r4
	jsr @r2
	mov.l @(r0,r4),r4
	mov.l @(loc_8c042084,PC),r2
	mov 0x45,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c041fde
	mov.b @(0x1,r14),r0
	mov.w @(loc_8c04205c,PC),r3
	extu.b r0,r4
	mov.l @(loc_8c042088,PC),r0
	shll2 r4
	mov.l @(r0,r4),r4
	extu.b r13,r0
	mov.b @(r0,r4),r5
	extu.b r5,r4
	cmp/eq r3,r4
	bt loc_8c041ffe
	mov.w @(loc_8c04205e,PC),r2
	cmp/eq r2,r4
	bt loc_8c041fde
	mov r5,r13

loc_8c041fde:
	mov 0x02,r0
	mov.b @(r0,r14),r0
	extu.b r13,r4
	shll16 r4
	and 0x01,r0
	mov.b r0,@r15
	mov.b @(0x1,r14),r0
	mov.b @r15,r3
	extu.b r0,r0
	shll8 r0
	extu.b r3,r3
	add r0,r4
	add r3,r4
	mov.w @(loc_8c042060,PC),r3
	bsr loc_8c0417e4
	add r3,r4

loc_8c041ffe:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c042008:
	mov 0x3F,r2
	extu.b r5,r3
	cmp/gt r2,r3
	bf loc_8c041f5c
	rts
	nop

;==============================================
loc_8c042014:
	mov.w @(loc_8c042062,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c042054
	mov.b @(r0,r14),r3
	mov.w @(loc_8c042064,PC),r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c04203c
	mov.b @(r0,r14),r1
	mov 0x3F,r3
	extu.b r1,r1
	cmp/gt r3,r1
	bt loc_8c042054
	mov.b @(r0,r14),r5
	mov r14,r4
	bra loc_8c041f5c
	mov.l @r15+,r14

loc_8c04203c:
	mov.b @(r0,r14),r3
	mov 0x50,r1
	extu.b r3,r3
	add 0x80,r3
	cmp/gt r1,r3
	bt loc_8c042054
	mov.b @(r0,r14),r5
	mov r14,r4
	mov.w @(loc_8c042064,PC),r3
	add r3,r5
	bra loc_8c04223a
	mov.l @r15+,r14

loc_8c042054:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c042058:
	#data 0x2ab0
loc_8c04205a:
	#data 0x01a4
loc_8c04205c:
	#data 0x00fe
loc_8c04205e:
	#data 0x00ff
loc_8c042060:
	#data 0x00a9
loc_8c042062:
	#data 0x014c
loc_8c042064:
	#data 0x0080
	#align4
loc_8c042068:
	#data bank03.loc_8c0331d8
	#data 0xc3a00000
	#data 0x40a00000
loc_8c042074:
	#data 0x8c28c4c4
loc_8c042078:
	#data 0x8c28c4ce
loc_8c04207c:
	#data bank13.loc_8c138b90
loc_8c042080:
	#data bank12.loc_8c1258e0
loc_8c042084:
	#data work.GameGlobalPointer
loc_8c042088:
	#data bank14.loc_8c14ddd8

;==============================================
loc_8c04208c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c042156,PC),r0
	mov r4,r3
	mov.l r4,@r15
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c0420b0
	mov.l @(loc_8c042164,PC),r2
	jsr @r2

loc_8c0420a0:
	nop
	and 0x01,r0
	mov.l @r15,r4
	mov r0,r5
	add 0x01,r5
	add 0x04,r15
	bra loc_8c041f5c
	lds.l @r15+,pr

loc_8c0420b0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0420b8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@r15
	mov r6,r14
	mov.l r5,@(0x4,r15)
	mov r15,r5
	mov.l @r15,r4
	add 0x08,r5
	mov.l @(loc_8c042168,PC),r3
	jsr @r3
	add 0x34,r4
	mova @(loc_8c04216c,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mova @(loc_8c042170,PC),r0
	fmov @r0,fr1
	mov 0xC0,r4
	fadd fr3,fr2
	fdiv fr1,fr2
	ftrc fr2,fpul
	sts fpul,r7
	cmp/ge r4,r7
	bt loc_8c0420ec
	mov r4,r7

loc_8c0420ec:
	mov 0x3F,r4
	cmp/gt r4,r7
	bf loc_8c0420f4
	mov r4,r7

loc_8c0420f4:
	mov.w @(loc_8c04215a,PC),r0
	mov 0x10,r5
	mov.l @(loc_8c042174,PC),r3
	mov.l @(loc_8c042180,PC),r2
	mov.w @(loc_8c042158,PC),r6
	mov.l r7,@r3
	mov.l @(0x4,r15),r4
	mov.b @(r0,r4),r4
	mov.l @(loc_8c042178,PC),r0
	extu.b r4,r4
	mov.b @(r0,r4),r4
	mov.l @(loc_8c04217c,PC),r0
	extu.b r4,r4
	shll2 r4
	jsr @r2
	mov.l @(r0,r4),r4
	mov.l @(loc_8c042184,PC),r2
	mov 0x45,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c042138
	mov.l @(loc_8c042188,PC),r4
	extu.b r14,r0
	mov.w @(loc_8c04215c,PC),r1
	mov.l @r4,r4
	mov.b @(r0,r4),r4
	extu.b r4,r5
	cmp/eq r1,r5
	bt loc_8c04214e
	mov.w @(loc_8c04215e,PC),r2
	cmp/eq r2,r5
	bt loc_8c042138
	mov r4,r14

loc_8c042138:
	mov.l @r15,r0
	extu.b r14,r4
	mov.w @(loc_8c042160,PC),r3
	shll16 r4
	mov.b @(0x2,r0),r0
	and 0x01,r0
	mov.b r0,@r15
	extu.b r0,r0
	add r0,r4
	bsr loc_8c0417e4
	add r3,r4

loc_8c04214e:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c042156:
	#data 0x0420
loc_8c042158:
	#data 0x2ab0
loc_8c04215a:
	#data 0x01a4
loc_8c04215c:
	#data 0x00fe
loc_8c04215e:
	#data 0x00ff
loc_8c042160:
	#data 0x04a9
	#align4
loc_8c042164:
	#data bank03.loc_8c03319e
loc_8c042168:
	#data bank03.loc_8c0331d8
loc_8c04216c:
	#data 0xc3a00000
loc_8c042170:
	#data 0x40a00000
loc_8c042174:
	#data 0x8c28c4c4
loc_8c042178:
	#data 0x8c28c4ce
loc_8c04217c:
	#data bank13.loc_8c138b90
loc_8c042180:
	#data bank12.loc_8c1258e0
loc_8c042184:
	#data work.GameGlobalPointer
loc_8c042188:
	#data bank14.loc_8c14dde8

;==============================================
loc_8c04218c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r5,r14
	mov.l @(loc_8c0422b8,PC),r3
	mov r15,r5
	mov r4,r13
	add 0x04,r5
	jsr @r3
	add 0x34,r4
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mova @(0x114,PC),r0
	fmov @r0,fr1
	mov 0xC0,r4
	fadd fr3,fr2
	fdiv fr1,fr2
	ftrc fr2,fpul
	sts fpul,r7
	cmp/ge r4,r7
	bt loc_8c0421be
	mov r4,r7

loc_8c0421be:
	mov 0x3F,r4
	cmp/gt r4,r7
	bf loc_8c0421c6
	mov r4,r7

loc_8c0421c6:
	mov.w @(loc_8c0422aa,PC),r0
	mov 0x10,r5
	mov.l @(loc_8c0422c4,PC),r3
	mov.l @(loc_8c0422d0,PC),r2
	mov.w @(loc_8c0422a8,PC),r6
	mov.l r7,@r3
	mov.b @(r0,r13),r4
	mov.l @(loc_8c0422c8,PC),r0
	extu.b r4,r4
	mov.b @(r0,r4),r4
	mov.l @(loc_8c0422cc,PC),r0
	extu.b r4,r4
	shll2 r4
	jsr @r2
	mov.l @(r0,r4),r4
	mov.l @(loc_8c0422d4,PC),r2
	mov 0x45,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c042208

loc_8c0421f0:
	mov.l @(loc_8c0422d8,PC),r4
	extu.b r14,r0
	mov.w @(loc_8c0422ac,PC),r3
	mov.l @r4,r4
	mov.b @(r0,r4),r5
	extu.b r5,r4
	cmp/eq r3,r4
	bt loc_8c04221e
	mov.w @(loc_8c0422ae,PC),r2
	cmp/eq r2,r4
	bt loc_8c042208
	mov r5,r14

loc_8c042208:
	mov 0x02,r0
	mov.w @(loc_8c0422b0,PC),r3
	mov.b @(r0,r13),r0
	extu.b r14,r4
	shll16 r4
	and 0x01,r0
	mov.b r0,@r15
	extu.b r0,r0
	add r0,r4
	bsr loc_8c0417e4
	add r3,r4

loc_8c04221e:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c042228:
	add 0xFC,r15
	mov.b r4,@r15
	mov.b @r15,r4
	mov.w @(loc_8c0422b2,PC),r3
	extu.b r4,r4
	shll16 r4
	add r3,r4
	bra loc_8c0417e4
	add 0x04,r15

;==============================================
loc_8c04223a:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov r15,r5
	mov.l @(loc_8c0422b8,PC),r3
	mov.b r0,@(0x4,r15)
	add 0x08,r5
	mov.l @r15,r4
	jsr @r3
	add 0x34,r4
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mova @(0x64,PC),r0
	fmov @r0,fr1
	mov 0xC0,r4
	fadd fr3,fr2
	fdiv fr1,fr2
	ftrc fr2,fpul
	sts fpul,r7
	cmp/ge r4,r7
	bt loc_8c04226e
	mov r4,r7

loc_8c04226e:
	mov 0x3F,r4
	cmp/gt r4,r7
	bf loc_8c042276
	mov r4,r7

loc_8c042276:
	mov.l @(loc_8c0422c4,PC),r3
	mov 0x10,r5
	mov.l @(loc_8c0422d0,PC),r2
	mov.w @(loc_8c0422a8,PC),r6
	mov.l r7,@r3
	jsr @r2
	mov 0x01,r4
	mov.l @r15,r0
	mov.b @(0x2,r0),r0
	and 0x01,r0
	mov.b r0,@r15
	mov.b @(0x4,r15),r0
	mov.b @r15,r3
	extu.b r0,r0
	mov r0,r4
	extu.b r3,r3
	shll16 r4
	add r3,r4
	mov.w @(loc_8c0422b4,PC),r3
	bsr loc_8c0417e4
	add r3,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0422a8:
	#data 0x2ab0
loc_8c0422aa:
	#data 0x01a4
loc_8c0422ac:
	#data 0x00fe
loc_8c0422ae:
	#data 0x00ff
loc_8c0422b0:
	#data 0x19a9
loc_8c0422b2:
	#data 0x18a9
loc_8c0422b4:
	#data 0x3ca9
	#align4
loc_8c0422b8:
	#data bank03.loc_8c0331d8
	#data 0xc3a00000
	#data 0x40a00000
loc_8c0422c4:
	#data 0x8c28c4c4
loc_8c0422c8:
	#data 0x8c28c4ce
loc_8c0422cc:
	#data bank13.loc_8c138b90
loc_8c0422d0:
	#data bank12.loc_8c1258e0
loc_8c0422d4:
	#data work.GameGlobalPointer
loc_8c0422d8:
	#data bank14.loc_8c14de3c

;==============================================
loc_8c0422dc:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c0423d2,PC),r6
	mov 0x10,r5
	mov.l @(loc_8c0423e0,PC),r3
	mov 0x00,r7
	mov.b r4,@r15
	jsr @r3
	mov 0x01,r4
	mov.b @r15,r4
	mov.w @(loc_8c0423d4,PC),r3
	extu.b r4,r4
	shll16 r4
	add r3,r4
	add 0x04,r15
	bra loc_8c0417e4
	lds.l @r15+,pr

;==============================================
loc_8c0422fe:
	mov.w @(loc_8c0423d6,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c0423e4,PC),r1
	mov.l r13,@-r15
	mov.w @(loc_8c0423d8,PC),r2
	sts.l pr,@-r15
	mov.l @(r0,r14),r4
	mov.b @(0xD,r4),r0
	extu.b r0,r0
	mov.b @(r0,r1),r13
	extu.b r13,r3
	cmp/eq r2,r3
	bt loc_8c042346
	mov.b @(0x3,r14),r0
	tst r0,r0
	bf loc_8c04232e
	mov r13,r5
	bsr loc_8c04234e
	mov r14,r4
	extu.b r0,r4
	tst r4,r4
	bt loc_8c04232e
	mov r4,r13

loc_8c04232e:
	mov r13,r5
	bsr loc_8c04223a
	mov r14,r4
	mov 0x2A,r5
	bsr loc_8c041f5c
	mov r14,r4
	lds.l @r15+,pr

loc_8c04233c:
	mov 0x2B,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c041f5c
	mov.l @r15+,r14

loc_8c042346:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04234e:
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bt loc_8c042370
	extu.b r5,r0
	cmp/eq 0x04,r0
	bt loc_8c042370
	cmp/eq 0x05,r0
	bt loc_8c042370
	cmp/eq 0x06,r0
	bt loc_8c042370
	cmp/eq 0x0E,r0
	bt loc_8c042370
	cmp/eq 0x0F,r0
	bt loc_8c042370
	cmp/eq 0x10,r0
	bf loc_8c042374

loc_8c042370:
	rts
	mov 0x00,r0

loc_8c042374:
	mov.w @(loc_8c0423da,PC),r6
	mov.l @(loc_8c0423f0,PC),r1
	add r4,r6
	mov.l @(loc_8c0423ec,PC),r3
	mov.l @(0x4,r6),r0
	mov.l @r6,r2
	and r1,r0
	mov.l @(loc_8c0423e8,PC),r7
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c042394
	extu.b r5,r2
	mov r2,r0
	nop
	mov.b @(r0,r7),r5

loc_8c042394:
	mov.w @(loc_8c0423dc,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c0423a6
	extu.b r5,r3
	mov r3,r0
	nop
	mov.b @(r0,r7),r5

loc_8c0423a6:
	extu.b r5,r0
	rts
	nop

;==============================================
loc_8c0423ac:
	mov.w @(loc_8c0423de,PC),r0
	mov 0x03,r2
	mov.l r14,@-r15
	mov.b @(r0,r4),r3
	add 0xFB,r0
	mov.b @(r0,r4),r0
	extu.b r3,r3
	extu.b r0,r0
	cmp/gt r2,r3
	tst 0x80,r0
	bf loc_8c0423ce
	mov.w @(loc_8c0423de,PC),r0
	mov 0x05,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c0423f4

loc_8c0423ce:
	bra loc_8c0423f6
	mov 0x31,r14

;##############################################
loc_8c0423d2:
	#data 0x2ab0
loc_8c0423d4:
	#data 0x3ca9
loc_8c0423d6:
	#data 0x01bc
loc_8c0423d8:
	#data 0x00ff
loc_8c0423da:
	#data 0x0414
loc_8c0423dc:
	#data 0x0202
loc_8c0423de:
	#data 0x0207
	#align4
loc_8c0423e0:
	#data bank12.loc_8c1258e0
loc_8c0423e4:
	#data bank13.loc_8c138d40
loc_8c0423e8:
	#data bank13.loc_8c138ba8
loc_8c0423ec:
	#data 0x01018000
loc_8c0423f0:
	#data 0x00184000

;----------------------------------------------
loc_8c0423f4:
mov 0x30,r14

loc_8c0423f6:
	mov r14,r5
	bra loc_8c04223a
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0423fc:
	mov.w @(loc_8c0424c4,PC),r0
	mov 0x03,r2
	mov.l @(r0,r4),r4
	add 0x3F,r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c0424c6,PC),r0
	extu.b r3,r3
	mov.b @(r0,r4),r0
	cmp/gt r2,r3
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c042420
	mov.w @(loc_8c0424c8,PC),r0
	mov 0x05,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c042424

loc_8c042420:
	bra loc_8c042426
	mov 0x31,r5

loc_8c042424:
	mov 0x30,r5

loc_8c042426:
	bra loc_8c04223a
	nop

;==============================================
loc_8c04242a:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x2A,r0
	bt loc_8c04247c
	mov.w @(loc_8c0424c6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c04244e
	mov.w @(loc_8c0424c8,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c042452

loc_8c04244e:
	bra loc_8c042454
	mov 0x35,r5

loc_8c042452:
	mov 0x34,r5

loc_8c042454:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x10,r0
	bf loc_8c042466
	mov 0x20,r5
	bsr loc_8c041f5c
	mov r14,r4
	bra loc_8c042472
	nop

loc_8c042466:
	cmp/eq 0x34,r0

loc_8c042468:
	bf loc_8c04246e
	bra loc_8c042474
	mov 0x1F,r5

loc_8c04246e:
	bsr loc_8c04223a
	mov r14,r4

loc_8c042472:
	mov 0x2B,r5

loc_8c042474:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c041f5c
	mov.l @r15+,r14

loc_8c04247c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c042482:
	mov.w @(loc_8c0424c6,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c04249a
	mov.w @(loc_8c0424c8,PC),r0
	mov 0x05,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c04249e

loc_8c04249a:
	bra loc_8c0424a0
	mov 0x2D,r14

loc_8c04249e:
	mov 0x2C,r14

loc_8c0424a0:
	mov r14,r5
	bra loc_8c04223a
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0424a6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l r4,@-r15
	bsr loc_8c04234e
	mov r5,r14
	extu.b r0,r4
	tst r4,r4
	bt loc_8c0424b8
	mov r4,r14

loc_8c0424b8:
	mov.l @r15,r4
	mov r14,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c04223a
	mov.l @r15+,r14

;##############################################
loc_8c0424c4:
	#data 0x01c8
loc_8c0424c6:
	#data 0x0202
loc_8c0424c8:
	#data 0x0207

;----------------------------------------------
loc_8c0424ca:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x4,r15)
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c0425b4,PC),r1
	extu.b r0,r0
	mov.b @(r0,r1),r5
	bsr loc_8c04223a
	mov.l @r15,r4
	mov.l @r15,r4
	mov 0x2B,r5
	add 0x08,r15
	bra loc_8c041f5c
	lds.l @r15+,pr

;----------------------------------------------
loc_8c0424ec:
	sts.l pr,@-r15
	mov.l r4,@-r15
	bsr loc_8c04223a
	mov 0x32,r5
	mov.l @r15,r4
	mov 0x2B,r5
	add 0x04,r15
	bra loc_8c041f5c
	lds.l @r15+,pr

;----------------------------------------------
loc_8c0424fe:
	mov.w @(loc_8c0425a6,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r4),r14
	bsr loc_8c04223a
	mov 0x23,r5
	mov 0x2A,r5
	bsr loc_8c041f5c
	mov r14,r4
	mov 0x2B,r5
	bsr loc_8c041f5c
	mov r14,r4
	mov 0x3A,r5
	bsr loc_8c04223a
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov 0x3B,r5
	bra loc_8c04223a
	mov.l @r15+,r14

;----------------------------------------------
loc_8c042526:
	sts.l pr,@-r15
	mov.l r4,@-r15

loc_8c04252a:
	bsr loc_8c04223a
	mov 0x1E,r5
	mov.l @r15,r4
	mov 0x2B,r5
	add 0x04,r15
	bra loc_8c041f5c
	lds.l @r15+,pr

;----------------------------------------------
loc_8c042538:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c0425a8,PC),r6
	mov 0x10,r5
	mov.l @(loc_8c0425b8,PC),r3
	mov 0x00,r7
	mov.b r4,@r15
	jsr @r3
	mov 0x07,r4
	mov.b @r15,r4
	mov.w @(loc_8c0425aa,PC),r3
	extu.b r4,r4
	shll16 r4
	add r3,r4
	add 0x04,r15
	bra loc_8c0417e4
	lds.l @r15+,pr

;----------------------------------------------
loc_8c04255a:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c0425a8,PC),r6
	mov 0x10,r5
	mov.l @(loc_8c0425b8,PC),r3
	mov 0x00,r7
	mov.b r4,@r15
	jsr @r3
	mov 0x07,r4
	mov.b @r15,r4
	mov.w @(loc_8c0425ac,PC),r3
	extu.b r4,r4
	shll16 r4
	add r3,r4
	add 0x04,r15
	bra loc_8c0417e4
	lds.l @r15+,pr

;----------------------------------------------
loc_8c04257c:
	add 0xFC,r15
	mov.b r4,@r15
	mov.b @r15,r4
	mov.w @(loc_8c0425ae,PC),r3
	extu.b r4,r4
	shll16 r4
	add r3,r4
	bra loc_8c0417e4
	add 0x04,r15

;----------------------------------------------
loc_8c04258e:
	mov.l @(loc_8c0425bc,PC),r2
	mov 0x41,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c0425a0
	mov.w @(loc_8c0425b0,PC),r4
	bra loc_8c0425a2
	nop

;----------------------------------------------
loc_8c0425a0:
	mov.w @(loc_8c0425ae,PC),r4

loc_8c0425a2:
	bra loc_8c041816
	nop

;##############################################
loc_8c0425a6:
	#data 0x020c
loc_8c0425a8:
	#data 0x2ab0
loc_8c0425aa:
	#data 0x3ea9
loc_8c0425ac:
	#data 0x3fa9
loc_8c0425ae:
	#data 0x3da9
loc_8c0425b0:
	#data 0x00a8
	#align4
loc_8c0425b4:
	#data bank13.loc_8c138bb9
loc_8c0425b8:
	#data bank12.loc_8c1258e0
loc_8c0425bc:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c0425c0:
	mov.l r14,@-r15
	mov 0x14,r0
	mov.l @(loc_8c0426c4,PC),r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.b r13,@(r0,r14)
	mov 0x15,r0
	mov.b r13,@(r0,r14)
	mov 0x16,r0
	mov.b r13,@(r0,r14)
	mov 0x17,r0
	mov.b r13,@(r0,r14)
	mov 0x24,r0
	mov.b r13,@(r0,r14)
	mov 0x16,r0
	bsr loc_8c041dde
	mov.b @(r0,r14),r4
	mov 0x17,r0
	bsr loc_8c042b86
	mov.b @(r0,r14),r4
	mov 0x14,r0
	bsr loc_8c042b5c
	mov.b @(r0,r14),r4
	mov.w @(loc_8c0426b8,PC),r12
	mov r13,r14
	mov.l @(loc_8c0426c8,PC),r10
	mov 0x08,r11

loc_8c0425fe:
	mov 0x10,r5
	mov r12,r6
	mov 0x00,r7
	jsr @r10
	mov r14,r4
	add 0x01,r14
	cmp/ge r11,r14
	bf loc_8c0425fe
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04261c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c0426cc,PC),r13
	mov.l r12,@-r15
	mov r13,r4
	add 0x14,r4
	sts.l pr,@-r15
	mov.w @(0x4,r4),r0
	mov.w @(loc_8c0426bc,PC),r3
	extu.w r0,r0
	mov.w @(loc_8c0426ba,PC),r12
	mov.l @(loc_8c0426c4,PC),r14
	tst r3,r0
	bt loc_8c042660
	mov.w @r4,r1
	extu.w r1,r1
	tst r12,r1
	bt loc_8c042648
	mov 0x14,r0
	mov.b @(r0,r14),r1
	bra loc_8c04264e
	add 0xF0,r1

loc_8c042648:
	mov 0x14,r0
	mov.b @(r0,r14),r1
	add 0xFF,r1

loc_8c04264e:
	mov.b r1,@(r0,r14)
	mov 0x14,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04265c
	mov 0x3A,r2
	mov.b r2,@(r0,r14)

loc_8c04265c:
	bsr loc_8c042b5c
	mov.b @(r0,r14),r4

loc_8c042660:
	mov r13,r4
	add 0x14,r4
	mov.w @(0x4,r4),r0
	mov.w @(loc_8c0426be,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c042698
	mov.w @r4,r1
	extu.w r1,r1
	tst r12,r1
	bt loc_8c04267e
	mov 0x14,r0
	mov.b @(r0,r14),r1
	bra loc_8c042684
	add 0x10,r1

loc_8c04267e:
	mov 0x14,r0
	mov.b @(r0,r14),r1
	add 0x01,r1

loc_8c042684:
	mov.b r1,@(r0,r14)
	mov 0x14,r0
	mov.b @(r0,r14),r3
	mov 0x3A,r2
	cmp/gt r2,r3
	bf loc_8c042694
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c042694:
	bsr loc_8c042b5c
	mov.b @(r0,r14),r4

loc_8c042698:
	mov r13,r5
	add 0x14,r5
	mov.w @(0x4,r5),r0
	mov.w @(loc_8c0426c0,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt.s loc_8c0426e2
	mov 0x3F,r4
	mov.w @r5,r1
	extu.w r1,r1
	tst r12,r1
	bt loc_8c0426d0
	mov 0x15,r0
	mov.b @(r0,r14),r1
	bra loc_8c0426d6
	add 0xF0,r1

;##############################################
loc_8c0426b8:
	#data 0x2ab0
loc_8c0426ba:
	#data 0x0200
loc_8c0426bc:
	#data 0x2000
loc_8c0426be:
	#data 0x1000
loc_8c0426c0:
	#data 0x0800
	#align4
loc_8c0426c4:
	#data 0x8c28c4a8
loc_8c0426c8:
	#data bank12.loc_8c1258e0
loc_8c0426cc:
	#data 0x8c2681dc

;----------------------------------------------
loc_8c0426d0:
	mov 0x15,r0
	mov.b @(r0,r14),r1
	add 0xFF,r1

loc_8c0426d6:
	mov.b r1,@(r0,r14)
	mov 0x15,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c0426e2
	mov.b r4,@(r0,r14)

loc_8c0426e2:
	mov r13,r5
	add 0x14,r5
	mov.w @(0x4,r5),r0
	mov.w @(loc_8c0427ac,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c042714
	mov.w @r5,r1
	extu.w r1,r1
	tst r12,r1
	bt loc_8c042700
	mov 0x15,r0
	mov.b @(r0,r14),r1
	bra loc_8c042706
	add 0x10,r1

loc_8c042700:
	mov 0x15,r0
	mov.b @(r0,r14),r1
	add 0x01,r1

loc_8c042706:
	mov.b r1,@(r0,r14)
	mov 0x15,r0
	mov.b @(r0,r14),r3
	cmp/gt r4,r3
	bf loc_8c042714
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c042714:
	mov.w @(0x18,r13),r0
	mov.w @(loc_8c0427ae,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c042728
	mov 0x15,r0
	mov.b @(r0,r14),r5
	mov 0x14,r0
	bsr loc_8c042b8a
	mov.b @(r0,r14),r4

loc_8c042728:
	mov.w @(0x18,r13),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c042734
	bsr loc_8c04185e
	nop

loc_8c042734:
	mov.w @(0x18,r13),r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c042746
	mov 0x24,r0
	mov.b @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8c042746:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c042750:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c0427b4,PC),r13
	mov.w @(loc_8c0427b2,PC),r3
	mov r13,r4
	add 0x14,r4
	sts.l pr,@-r15
	mov.w @(0x4,r4),r0
	mov.w @(loc_8c0427b0,PC),r5
	extu.w r0,r0
	mov.l @(loc_8c0427b8,PC),r14
	tst r3,r0
	bt.s loc_8c04278e
	mov 0x50,r6
	mov.w @r4,r1
	extu.w r1,r1
	tst r5,r1
	bt loc_8c04277c
	mov 0x22,r0
	mov.b @(r0,r14),r1
	bra loc_8c042782
	add 0xF0,r1

loc_8c04277c:
	mov 0x22,r0
	mov.b @(r0,r14),r1
	add 0xFF,r1

loc_8c042782:
	mov.b r1,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04278e
	mov.b r6,@(r0,r14)

loc_8c04278e:
	mov r13,r4
	add 0x14,r4
	mov.w @(0x4,r4),r0
	mov.w @(loc_8c0427ac,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c0427d0
	mov.w @r4,r1
	extu.w r1,r1
	tst r5,r1
	bt loc_8c0427bc
	mov 0x22,r0
	mov.b @(r0,r14),r1
	bra loc_8c0427c2
	add 0x10,r1

;##############################################
loc_8c0427ac:
	#data 0x0400
loc_8c0427ae:
	#data 0x0100
loc_8c0427b0:
	#data 0x0200
loc_8c0427b2:
	#data 0x0800
	#align4
loc_8c0427b4:
	#data 0x8c2681dc
loc_8c0427b8:
	#data 0x8c28c4a8

;----------------------------------------------
loc_8c0427bc:
	mov 0x22,r0
	mov.b @(r0,r14),r1
	add 0x01,r1

loc_8c0427c2:
	mov.b r1,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	cmp/gt r6,r3
	bf loc_8c0427d0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c0427d0:
	mov.w @(0x18,r13),r0
	mov.w @(loc_8c0428a0,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c0427e0
	mov 0x22,r0
	bsr loc_8c042bb6
	mov.b @(r0,r14),r4

loc_8c0427e0:
	mov.w @(0x18,r13),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c0427ec
	bsr loc_8c04185e
	nop

loc_8c0427ec:
	mov.w @(0x18,r13),r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c0427fe
	mov 0x24,r0
	mov.b @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8c0427fe:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c042806:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c0428a8,PC),r13
	mov.w @(loc_8c0428a4,PC),r3
	mov r13,r4
	add 0x14,r4
	sts.l pr,@-r15
	mov.w @(0x4,r4),r0
	mov.w @(loc_8c0428a2,PC),r5
	extu.w r0,r0
	mov.l @(loc_8c0428ac,PC),r14
	tst r3,r0
	bt.s loc_8c042844
	mov 0x4F,r6
	mov.w @r4,r1
	extu.w r1,r1
	tst r5,r1
	bt loc_8c042832
	mov 0x23,r0
	mov.b @(r0,r14),r1
	bra loc_8c042838
	add 0xF0,r1

loc_8c042832:
	mov 0x23,r0
	mov.b @(r0,r14),r1
	add 0xFF,r1

loc_8c042838:
	mov.b r1,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c042844
	mov.b r6,@(r0,r14)

loc_8c042844:
	mov r13,r4
	add 0x14,r4
	mov.w @(0x4,r4),r0
	mov.w @(loc_8c0428a6,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c042876
	mov.w @r4,r1
	extu.w r1,r1
	tst r5,r1
	bt loc_8c042862
	mov 0x23,r0
	mov.b @(r0,r14),r1
	bra loc_8c042868
	add 0x10,r1

loc_8c042862:
	mov 0x23,r0
	mov.b @(r0,r14),r1
	add 0x01,r1

loc_8c042868:
	mov.b r1,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	cmp/gt r6,r3
	bf loc_8c042876
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c042876:
	mov.w @(0x18,r13),r0
	mov.w @(loc_8c0428a0,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c042886
	mov 0x23,r0
	bsr loc_8c042bd2
	mov.b @(r0,r14),r4

loc_8c042886:
	mov.w @(0x18,r13),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c042898
	lds.l @r15+,pr
	mov.l @(loc_8c0428b0,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c042898:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0428a0:
	#data 0x0100
loc_8c0428a2:
	#data 0x0200
loc_8c0428a4:
	#data 0x0800
loc_8c0428a6:
	#data 0x0400
	#align4
loc_8c0428a8:
	#data 0x8c2681dc
loc_8c0428ac:
	#data 0x8c28c4a8
loc_8c0428b0:
	#data loc_8c04185e

;==============================================
loc_8c0428b4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c042928,PC),r13
	mov.w @(loc_8c042920,PC),r3
	sts.l pr,@-r15
	mov.w @(0x18,r13),r0
	mov.l @(loc_8c04292c,PC),r14
	extu.w r0,r0
	tst r3,r0
	bt.s loc_8c0428da
	mov 0x0D,r4
	mov 0x17,r0
	mov.b @(r0,r14),r1
	add 0xFF,r1
	mov.b r1,@(r0,r14)
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c0428da
	mov.b r4,@(r0,r14)

loc_8c0428da:
	mov.w @(0x18,r13),r0
	mov.w @(loc_8c042922,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c0428f6
	mov 0x17,r0
	mov.b @(r0,r14),r1
	add 0x01,r1
	mov.b r1,@(r0,r14)
	mov.b @(r0,r14),r2
	cmp/gt r4,r2
	bf loc_8c0428f6
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c0428f6:
	mov.w @(0x18,r13),r0
	mov.w @(loc_8c042924,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c042906
	mov 0x17,r0
	bsr loc_8c042be6
	mov.b @(r0,r14),r4

loc_8c042906:
	mov.w @(0x18,r13),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c042918
	lds.l @r15+,pr
	mov.l @(loc_8c042930,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c042918:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c042920:
	#data 0x0800
loc_8c042922:
	#data 0x0400
loc_8c042924:
	#data 0x0100
	#align4
loc_8c042928:
	#data 0x8c2681dc
loc_8c04292c:
	#data 0x8c28c4a8
loc_8c042930:
	#data loc_8c04182e

;==============================================
loc_8c042934:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c0429ec,PC),r13
	mov.w @(loc_8c0429e4,PC),r3
	sts.l pr,@-r15
	mov.w @(0x18,r13),r0
	mov.l @(loc_8c0429f0,PC),r14
	extu.w r0,r0
	tst r3,r0
	bt loc_8c04295e
	mov 0x16,r0
	mov.b @(r0,r14),r1
	add 0xFF,r1
	mov.b r1,@(r0,r14)
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c04295a
	mov 0x0D,r1
	mov.b r1,@(r0,r14)

loc_8c04295a:
	bsr loc_8c041dde
	mov.b @(r0,r14),r4

loc_8c04295e:
	mov.w @(0x18,r13),r0
	mov.w @(loc_8c0429e6,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c042980
	mov 0x16,r0
	mov.b @(r0,r14),r1
	add 0x01,r1
	mov.b r1,@(r0,r14)
	mov 0x0D,r1
	mov.b @(r0,r14),r2
	cmp/gt r1,r2
	bf loc_8c04297c
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c04297c:
	bsr loc_8c041dde
	mov.b @(r0,r14),r4

loc_8c042980:
	mov.w @(0x18,r13),r0
	mov.w @(loc_8c0429e8,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c04298e
	bsr loc_8c041e44
	nop

loc_8c04298e:
	mov.w @(0x18,r13),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c04299a
	bsr loc_8c041ecc
	nop

loc_8c04299a:
	mov.w @(0x14,r13),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c0429b8
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x7F,r3
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.l @(loc_8c0429f4,PC),r2
	jsr @r2
	mov.b @(r0,r14),r4

loc_8c0429b8:
	mov.w @(0x14,r13),r0
	extu.w r0,r0
	tst 0x10,r0
	bt loc_8c0429dc
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x7F,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c0429f4,PC),r2
	mov.b @(r0,r14),r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0429dc:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0429e4:
	#data 0x0800
loc_8c0429e6:
	#data 0x0400
loc_8c0429e8:
	#data 0x0100
	#align4
loc_8c0429ec:
	#data 0x8c2681dc
loc_8c0429f0:
	#data 0x8c28c4a8
loc_8c0429f4:
	#data loc_8c041886

;==============================================
loc_8c0429f8:
	mov.l r14,@-r15
	mov.l @(loc_8c042b18,PC),r4
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(loc_8c042b12,PC),r3
	sts.l pr,@-r15
	mov.w @(0x4,r4),r0
	mov.l @(loc_8c042b1c,PC),r14
	extu.w r0,r0
	tst r3,r0
	bt.s loc_8c042a22
	mov 0x04,r5
	mov 0x21,r0
	mov.b @(r0,r14),r1
	add 0xFF,r1
	mov.b r1,@(r0,r14)
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c042a22
	mov.b r5,@(r0,r14)

loc_8c042a22:
	mov.w @(0x4,r4),r0
	mov.w @(loc_8c042b14,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c042a3e
	mov 0x21,r0
	mov.b @(r0,r14),r1
	add 0x01,r1
	mov.b r1,@(r0,r14)
	mov.b @(r0,r14),r2
	cmp/gt r5,r2
	bf loc_8c042a3e
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c042a3e:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c042b20,PC),r0

loc_8c042a44:
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	nop
	mov 0x21,r0
	mov.l @(loc_8c042b24,PC),r12

loc_8c042a50:
	mov.b @(r0,r14),r5
	mov.l @(loc_8c042b28,PC),r0
	mov.b @(r0,r5),r5
	extu.b r5,r5
	jsr @r12
	mov 0x0F,r4

loc_8c042a5c:
	mov.l @(loc_8c042b30,PC),r3
	mov.l @(loc_8c042b2c,PC),r13
	jsr @r13
	mov.l r3,@-r15
	mov 0x0A,r5
	jsr @r12
	mov 0x14,r4
	mov 0x14,r0
	mov.l @(loc_8c042b34,PC),r11
	mov.b @(r0,r14),r2
	mov.l @(loc_8c042b38,PC),r0
	shll2 r2
	mov.l @(r0,r2),r3
	mov.l r3,@-r15
	jsr @r13
	mov.l r11,@-r15
	mov 0x15,r0
	mov.l @(loc_8c042b3c,PC),r2

loc_8c042a80:
	mov.b @(r0,r14),r3
	mov.l r3,@-r15
	jsr @r13
	mov.l r2,@-r15
	mov 0x24,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c042a98
	add 0x14,r15
	mov.l @(loc_8c042b40,PC),r3
	bra loc_8c042a9c
	mov.l r3,@-r15

loc_8c042a98:
	mov.l @(loc_8c042b44,PC),r1
	mov.l r1,@-r15

loc_8c042a9c:
	jsr @r13
	nop
	mov 0x0F,r5
	jsr @r12
	mov 0x14,r4
	mov 0x22,r0
	mov.l @(loc_8c042b48,PC),r2
	mov.b @(r0,r14),r3

loc_8c042aac:
	mov.l r3,@-r15
	jsr @r13
	mov.l r2,@-r15
	mov 0x14,r5
	jsr @r12
	mov r5,r4
	mov 0x23,r0
	mov.l @(loc_8c042b4c,PC),r2
	mov.b @(r0,r14),r3
	mov.l r3,@-r15
	jsr @r13
	mov.l r2,@-r15
	mov 0x19,r5
	jsr @r12
	mov 0x14,r4
	mov 0x17,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c042b50,PC),r0
	shll2 r3
	mov.l @(r0,r3),r2
	mov.l r2,@-r15
	jsr @r13
	mov.l r11,@-r15
	mov 0x1E,r5
	jsr @r12
	mov 0x14,r4
	mov 0x16,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c042b54,PC),r0
	shll2 r3
	mov.l @(r0,r3),r2
	mov.l r2,@-r15
	jsr @r13
	mov.l r11,@-r15
	mov 0x1F,r5
	jsr @r12
	mov 0x14,r4
	mov 0x20,r0
	mov.l @(loc_8c042b58,PC),r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov.l r3,@-r15
	jsr @r13
	mov.l r2,@-r15
	add 0x2C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c042b12:
	#data 0x2000
loc_8c042b14:
	#data 0x1000
	#align4
loc_8c042b18:
	#data 0x8c2681dc
loc_8c042b1c:
	#data 0x8c28c4a8
loc_8c042b20:
	#data bank14.loc_8c14ddc4
loc_8c042b24:
	#data bank11.loc_8c11f130
loc_8c042b28:
	#data bank13.loc_8c138d5d
loc_8c042b2c:
	#data bank11.loc_8c11f1d0
loc_8c042b30:
	#data bank13.loc_8c138d64
loc_8c042b34:
	#data bank13.loc_8c138d6c
loc_8c042b38:
	#data bank14.loc_8c14dc68
loc_8c042b3c:
	#data bank13.loc_8c138d70
loc_8c042b40:
	#data bank13.loc_8c138d80
loc_8c042b44:
	#data bank13.loc_8c138d84
loc_8c042b48:
	#data bank13.loc_8c138d88
loc_8c042b4c:
	#data bank13.loc_8c138d98
loc_8c042b50:
	#data bank14.loc_8c14dd8c
loc_8c042b54:
	#data bank14.loc_8c14dd54
loc_8c042b58:
	#data bank13.loc_8c138da8

;==============================================
loc_8c042b5c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c042c88,PC),r3
	mov.b r4,@r15
	jsr @r3
	mov 0x07,r4
	mov.b @r15,r4
	mov 0x01,r6
	mov.l @(loc_8c042c90,PC),r0
	mov.l @(loc_8c042c94,PC),r3
	extu.b r4,r4
	mov.l @(loc_8c042c8c,PC),r5
	shll2 r4
	jsr @r3
	mov.l @(r0,r4),r4
	mov.l @(loc_8c042c8c,PC),r4
	mov 0x07,r5
	add 0x04,r15
	mov.l @(loc_8c042c98,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c042b86:
	rts
	nop

;==============================================
loc_8c042b8a:
	add 0xF8,r15
	mov.b r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x4,r15)
	mov.b @(0x4,r15),r0
	mov.b @r15,r3
	extu.b r0,r0
	mov.l @(loc_8c042c9c,PC),r2
	extu.b r3,r3
	mov r0,r4
	shll8 r3
	mov.l @(loc_8c042ca0,PC),r1
	shll16 r4
	add r3,r4
	mov.b @r2,r3
	extu.b r3,r3
	add r3,r4
	mov.w @(loc_8c042c80,PC),r3
	add r3,r4
	jmp @r1
	add 0x08,r15

loc_8c042bb6:
	add 0xFC,r15
	mov.l @(loc_8c042c9c,PC),r2
	mov.b r4,@r15
	mov.b @r15,r4
	mov.b @r2,r3
	extu.b r4,r4
	mov.l @(loc_8c042ca0,PC),r1
	extu.b r3,r3
	shll16 r4
	add r3,r4
	mov.w @(loc_8c042c82,PC),r3
	add r3,r4
	jmp @r1
	add 0x04,r15

loc_8c042bd2:
	add 0xFC,r15
	mov.b r4,@r15
	mov.b @r15,r4
	mov.w @(loc_8c042c84,PC),r3
	extu.b r4,r4
	mov.l @(loc_8c042ca0,PC),r2
	shll16 r4
	add r3,r4
	jmp @r2
	add 0x04,r15

loc_8c042be6:
	rts
	nop

loc_8c042bea:
	mov.l @(loc_8c042ca4,PC),r2
	mov 0x14,r5
	sts.l pr,@-r15
	mov.l @r2,r3
	mov 0x07,r6
	mov.l @(loc_8c042ca8,PC),r1
	mov.l r3,@-r15
	mov.l @(loc_8c042cac,PC),r3
	mov.l r1,@-r15

loc_8c042bfc:
	jsr @r3
	mov 0x05,r4
	mov.l @(loc_8c042cb0,PC),r3
	mov 0x15,r5
	mov.l @(loc_8c042cb4,PC),r1
	mov 0x07,r6
	mov.l @r3,r2
	mov.l r2,@-r15
	mov.l @(loc_8c042cac,PC),r2
	mov.l r1,@-r15

loc_8c042c10:
	jsr @r2
	mov 0x05,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c042c1c:
	mov.l r14,@-r15
	mov 0x00,r14

loc_8c042c20:
	mov.l r13,@-r15
	mov 0x14,r13
	mov.l r12,@-r15
	mov 0x19,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c042cac,PC),r11
	mov.l @(loc_8c042cbc,PC),r10
	mov.l @(loc_8c042cb8,PC),r9

loc_8c042c36:
	mov r14,r3
	mov r9,r2
	shll2 r3
	mov r12,r5
	add r2,r3
	mov.l @r3,r1
	sub r14,r5
	mov 0x00,r6
	mov.l r1,@-r15

loc_8c042c48:
	mov.l r10,@-r15
	jsr @r11
	mov 0x0C,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf.s loc_8c042c36
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c042c66:
	mov.l @(loc_8c042cb8,PC),r0
	mov 0x4C,r5
	mov 0x13,r6

loc_8c042c6c:
	mov r0,r7
	add r5,r7

loc_8c042c70:
	mov.l @r7,r3
	add 0xFF,r6
	cmp/pz r6
	mov.l r3,@(0x4,r7)
	bt.s loc_8c042c6c
	add 0xFC,r5
	rts
	mov.l r4,@r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c042c80:
	#data 0x00a9
loc_8c042c82:
	#data 0x3ca9
loc_8c042c84:
	#data 0x3da9
	#align4
loc_8c042c88:
	#data bank12.loc_8c125660
loc_8c042c8c:
	#data 0x0cc00000
loc_8c042c90:
	#data bank13.loc_8c138c54
loc_8c042c94:
	#data bank02.loc_8c027366
loc_8c042c98:
	#data bank12.loc_8c125250
loc_8c042c9c:
	#data 0x8c28c4cc
loc_8c042ca0:
	#data loc_8c0417e4
loc_8c042ca4:
	#data 0x8c28c4c0
loc_8c042ca8:
	#data bank13.loc_8c138db8
loc_8c042cac:
	#data bank03.loc_8c0395c6
loc_8c042cb0:
	#data 0x8c28c4c4
loc_8c042cb4:
	#data bank13.loc_8c138dc8
loc_8c042cb8:
	#data 0x8c28c500
loc_8c042cbc:
	#data bank13.loc_8c138dd8

;==============================================
loc_8c042cc0:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov 0x0A,r13
	mov.l r12,@-r15
	mov 0x19,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c042d7c,PC),r11
	mov.l @(loc_8c042d78,PC),r10
	mov.l @(loc_8c042d74,PC),r9

loc_8c042cda:
	mov r9,r2
	mov r14,r3
	add 0x54,r2
	mov r12,r5
	shll2 r3
	add r2,r3
	mov.l @r3,r1
	sub r14,r5
	mov 0x00,r6
	mov.l r1,@-r15
	mov.l r10,@-r15
	jsr @r11
	mov 0x19,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf.s loc_8c042cda
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c042d2c
	mov.l @r15+,r14

loc_8c042d0c:
	mov.l @(loc_8c042d74,PC),r0
	mov 0x24,r5
	mov 0x09,r6

loc_8c042d12:
	mov r0,r7
	add 0x54,r7
	add r5,r7
	mov.l @r7,r3
	add 0xFF,r6
	cmp/pz r6
	mov.l r3,@(0x4,r7)
	bt.s loc_8c042d12
	add 0xFC,r5
	mov r0,r3
	add 0x54,r3
	rts
	mov.l r4,@r3

loc_8c042d2c:
	sts.l pr,@-r15
	mov.l @(loc_8c042d80,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c042d84,PC),r2
	mov 0x1B,r5
	mov.l r0,@-r15
	mov 0x00,r6
	mov.l @(loc_8c042d7c,PC),r3
	mov r0,r7
	mov.l r2,@-r15
	jsr @r3
	mov 0x19,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c042d4e:
	mov.b @r4+,r2
	mov.l @(loc_8c042d88,PC),r5
	mov.b r2,@r5
	add 0x01,r5
	mov.b @r4+,r2
	mov.b r2,@r5
	add 0x01,r5
	mov.b @r4+,r2
	mov.b r2,@r5
	add 0x01,r5
	mov.b @r4+,r2
	mov.b r2,@r5
	add 0x01,r5
	mov.b @r4+,r2
	mov.b r2,@r5
	add 0x01,r5
	mov.b @r4,r3
	rts
	mov.b r3,@r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c042d74:
	#data 0x8c28c500
loc_8c042d78:
	#data bank13.loc_8c138de8
loc_8c042d7c:
	#data bank03.loc_8c0395c6
loc_8c042d80:
	#data bank12.loc_8c125e10
loc_8c042d84:
	#data bank13.loc_8c138df8
loc_8c042d88:
	#data 0x8c28c4ce

;==============================================
loc_8c042d8c:
	mov.l @(loc_8c042e68,PC),r4
	mov 0x00,r2
	mov.w @(loc_8c042e5a,PC),r0
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov 0x2A,r0
	mov.l @r4,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c042db8
	mov.l @r4,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bt loc_8c042db8
	mov.l @(loc_8c042e6c,PC),r4
	bsr loc_8c042dbe
	nop
	mov.l @(loc_8c042e70,PC),r4
	bra loc_8c042dbe
	lds.l @r15+,pr

loc_8c042db8:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c042dbe:
	mov.w @(loc_8c042e5c,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c042e74,PC),r0
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c042dd0:
	mov.l @(loc_8c042e68,PC),r3
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.w @(loc_8c042e5e,PC),r0
	sts.l pr,@-r15
	mov.l @r3,r13
	mov.b @(r0,r13),r2
	tst r2,r2
	bf.s loc_8c042ec6
	mov r4,r14
	mov 0x19,r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c042ec6
	mov.w @(loc_8c042e60,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c042ec6
	mov.b @(0x2,r13),r0
	cmp/eq 0x05,r0
	bt loc_8c042ec6
	mov 0x4A,r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c042e2a
	mov.b @(r0,r13),r3
	cmp/pl r3
	bf loc_8c042ec6
	mov.w @(loc_8c042e62,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c042e14
	bra loc_8c042e16
	mov 0x68,r14

loc_8c042e14:
	mov 0x08,r14

loc_8c042e16:
	mov.w @(loc_8c042e64,PC),r0
	mov 0x0B,r6
	mov.l @(loc_8c042e78,PC),r3
	mov.l @(loc_8c042e7c,PC),r2
	mov.l r3,@-r15
	mov.b @(r0,r13),r5
	jsr @r2
	mov r14,r4
	bra loc_8c042ec6
	add 0x04,r15

loc_8c042e2a:
	mov.w @(loc_8c042e66,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c042e46
	mov 0x28,r1
	mov.w r1,@(r0,r14)
	add 0x02,r0
	mov.w @(r0,r14),r3
	add 0x01,r3
	mov.w r3,@(r0,r14)
	mov 0x03,r3
	mov.w @(r0,r14),r2
	and r3,r2
	mov.w r2,@(r0,r14)

loc_8c042e46:
	mov.w @(loc_8c042e66,PC),r0
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)
	add 0x64,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c042e80
	bra loc_8c042e82
	mov 0x64,r13

;##############################################
loc_8c042e5a:
	#data 0x008a
loc_8c042e5c:
	#data 0x04bc
loc_8c042e5e:
	#data 0x0088
loc_8c042e60:
	#data 0x008d
loc_8c042e62:
	#data 0x0524
loc_8c042e64:
	#data 0x00b2
loc_8c042e66:
	#data 0x04c0
	#align4
loc_8c042e68:
	#data work.GameGlobalPointer
loc_8c042e6c:
	#data 0x8c268340
loc_8c042e70:
	#data pl_mem.player_start_charB
loc_8c042e74:
	#data bank14.loc_8c14df8c
loc_8c042e78:
	#data bank13.loc_8c13a190
loc_8c042e7c:
	#data bank03.loc_8c0395c6

;----------------------------------------------
loc_8c042e80:
	mov 0x04,r13

loc_8c042e82:
	mov.l @(loc_8c042f7c,PC),r2
	mov 0x0B,r6
	mov.l @(loc_8c042f78,PC),r3
	mov.w @(loc_8c042f66,PC),r0
	mov.l r3,@-r15
	mov.l @r2,r5
	mov.l @(loc_8c042f80,PC),r3
	mov.b @(r0,r5),r5
	jsr @r3
	mov r13,r4
	mov.w @(loc_8c042f68,PC),r0
	mov.l @(loc_8c042f84,PC),r1
	mov.b @(r0,r14),r0
	and 0x01,r0
	mov r0,r3
	shll2 r0
	add r3,r0
	mov.l @(loc_8c042f88,PC),r3
	shll2 r0
	mov.w @(r0,r1),r2
	extu.w r2,r2
	tst r3,r2
	bt.s loc_8c042ec6
	add 0x04,r15
	bsr loc_8c043b42
	mov r14,r4
	bsr loc_8c043bba
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c042f8c,PC),r2
	mov 0x64,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c042ec6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c042ece:
	mov.w @(loc_8c042f6a,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c042f90,PC),r0
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c042ee0:
	mov.w @(loc_8c042f6a,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c042eea:
	mov.l @(loc_8c042f7c,PC),r2
	mov.w @(loc_8c042f6c,PC),r0
	mov.l @r2,r5
	mov.b @(r0,r5),r3
	add 0x01,r0
	mov.b @(r0,r5),r1
	mov.w @(loc_8c042f6e,PC),r0
	or r1,r3
	mov.b @(r0,r4),r1
	tst r1,r3
	bt loc_8c042f08
	mov.w @(loc_8c042f70,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c042f10

loc_8c042f08:
	mov.w @(loc_8c042f6a,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)

loc_8c042f10:
	rts
	nop

;==============================================
loc_8c042f14:
	mov.w @(loc_8c042f72,PC),r5
	mov 0x00,r3
	mov r3,r2
	mov 0x2A,r0
	add r4,r5
	mov.l r3,@(0x4,r5)
	mov.l r3,@r5
	mov.w @(loc_8c042f74,PC),r5
	add r4,r5
	mov.l r3,@(0x4,r5)
	mov.l r2,@r5
	mov.l @(loc_8c042f94,PC),r5
	mov.l @(loc_8c042f7c,PC),r3
	mov r5,r6
	add 0x04,r6
	mov.l r2,@(0x4,r6)
	mov.l r2,@r6
	mov r5,r6
	add 0x0C,r6
	mov.l r2,@(0x4,r6)
	mov.l r2,@r6
	mov.l @r3,r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c042f62
	mov 0x44,r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c042f56
	mov.w @(loc_8c042f70,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c042f62

;==============================================
loc_8c042f56:
	mov.w @(loc_8c042f76,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c042f62
	bra loc_8c043c0c
	nop

loc_8c042f62:
	bra loc_8c043c48
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c042f66:
	#data 0x00b2
loc_8c042f68:
	#data 0x0524
loc_8c042f6a:
	#data 0x04bd
loc_8c042f6c:
	#data 0x0084
loc_8c042f6e:
	#data 0x04c8
loc_8c042f70:
	#data 0x0088
loc_8c042f72:
	#data 0x0544
loc_8c042f74:
	#data 0x054c
loc_8c042f76:
	#data 0x008b
	#align4
loc_8c042f78:
	#data bank13.loc_8c13a1a0
loc_8c042f7c:
	#data work.GameGlobalPointer
loc_8c042f80:
	#data bank03.loc_8c0395c6
loc_8c042f84:
	#data 0x8c2681dc
loc_8c042f88:
	#data 0x00008000
loc_8c042f8c:
	#data bank01.loc_8c011780
loc_8c042f90:
	#data bank14.loc_8c14dfa0
loc_8c042f94:
	#data 0x8c289750

;==============================================
loc_8c042f98:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l @(loc_8c0430b4,PC),r13
	mov.w @(loc_8c0430a4,PC),r2
	mov.w @(loc_8c0430a2,PC),r0
	add r14,r2
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.b @r2,r2
	mov.b @(r0,r3),r1
	add r2,r1
	mov.b r1,@(r0,r3)
	add 0xFE,r0
	mov.l @r13,r4
	mov r4,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c04307c
	mov 0x19,r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c043098
	mov.w @(loc_8c0430a6,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c043098
	mov.w @(loc_8c0430a8,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_8c042fde
	mov 0x78,r4
	bra loc_8c042fe0
	mov r4,r12

loc_8c042fde:
	mov 0x0C,r12

loc_8c042fe0:
	mov.w @(loc_8c0430aa,PC),r0
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c042ff8
	mov.w r4,@(r0,r14)
	add 0xFE,r0
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)

loc_8c042ff8:
	mov.w @(loc_8c0430ac,PC),r0
	mov 0x0B,r6
	mov.l @(loc_8c0430b8,PC),r3
	mov.w @(r0,r14),r2
	mov.w @(loc_8c0430ae,PC),r0
	add 0xFF,r2
	mov.l r2,@-r15
	mov.l @(loc_8c0430bc,PC),r2
	mov.l r3,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	jsr @r2
	mov r12,r4
	mov.w @(loc_8c0430a8,PC),r0
	mov.l @(loc_8c0430c0,PC),r1
	mov.b @(r0,r14),r0
	and 0x01,r0
	mov r0,r3
	shll2 r0
	add r3,r0
	mov.l @(loc_8c0430c4,PC),r3
	shll2 r0
	mov.w @(r0,r1),r2
	extu.w r2,r2
	tst r3,r2
	bt.s loc_8c04303c
	add 0x08,r15
	bsr loc_8c043b96
	mov r14,r4
	bsr loc_8c043bba
	mov r14,r4
	mov.l @(loc_8c0430c8,PC),r2
	jsr @r2
	mov 0x64,r4

loc_8c04303c:
	mov.w @(loc_8c0430ac,PC),r0
	mov 0x08,r3
	mov.w @(r0,r14),r4
	cmp/ge r3,r4
	bt loc_8c043074
	tst r4,r4
	bt loc_8c043074
	mov.w @(loc_8c0430b0,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c043074
	mov.w @(loc_8c0430a8,PC),r0
	mov.l @(loc_8c0430cc,PC),r1
	mov.b @(r0,r14),r0
	and 0x01,r0
	mov r0,r3
	shll2 r0
	add r3,r0
	mov.w @(loc_8c0430b2,PC),r3
	shll2 r0
	mov.w @(r0,r1),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c043074
	mov.w @(loc_8c0430ac,PC),r0
	mov.w @(r0,r14),r2
	add 0xFF,r2
	mov.w r2,@(r0,r14)

loc_8c043074:
	mov.w @(loc_8c0430ac,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c043098

loc_8c04307c:
	mov.w @(loc_8c0430a4,PC),r3
	mov r14,r4
	mov.l @r13,r1
	mov.w @(loc_8c0430a2,PC),r0
	add r14,r3
	mov.b @r3,r3
	mov.b @(r0,r1),r2
	sub r3,r2
	mov.b r2,@(r0,r1)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c043c48
	mov.l @r15+,r14

loc_8c043098:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0430a2:
	#data 0x008a
loc_8c0430a4:
	#data 0x04c8
loc_8c0430a6:
	#data 0x008d
loc_8c0430a8:
	#data 0x0524
loc_8c0430aa:
	#data 0x04c2
loc_8c0430ac:
	#data 0x04c0
loc_8c0430ae:
	#data 0x00b2
loc_8c0430b0:
	#data 0x04bc
loc_8c0430b2:
	#data 0x03f0
	#align4
loc_8c0430b4:
	#data work.GameGlobalPointer
loc_8c0430b8:
	#data bank13.loc_8c13a1b4
loc_8c0430bc:
	#data bank03.loc_8c0395c6
loc_8c0430c0:
	#data 0x8c2681dc
loc_8c0430c4:
	#data 0x00008000
loc_8c0430c8:
	#data bank01.loc_8c011780
loc_8c0430cc:
	#data 0x8c2681e0

;==============================================
loc_8c0430d0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c0431f0,PC),r13
	mov.l @(loc_8c0431e4,PC),r9
	mov.l @r13,r0
	mov.l @(loc_8c0431e8,PC),r11
	mov.b @(0x2,r0),r0
	mov.l @(loc_8c0431ec,PC),r12
	cmp/eq 0x05,r0
	bt.s loc_8c043110
	mov r4,r14
	mov.l @r13,r2
	mov 0x19,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c043102
	bra loc_8c0432de
	nop

loc_8c043102:
	mov.w @(loc_8c0431d2,PC),r0
	mov.l @r13,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c043110
	bra loc_8c0432de
	nop

loc_8c043110:
	mov.w @(loc_8c0431d4,PC),r0
	mov.l @r13,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c04311e
	bra loc_8c0432de
	nop

loc_8c04311e:
	mov.w @(loc_8c0431d6,PC),r0
	mov 0x00,r8
	mov.b @(r0,r14),r3
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0x02,r0
	mov.b @(r0,r14),r2
	add 0xFF,r0
	mov.b @(r0,r14),r3
	cmp/hs r3,r2
	bt.s loc_8c043140
	mov r8,r4
	mov.w @(loc_8c0431d8,PC),r0
	mov 0x01,r4
	mov.b @(r0,r14),r2
	add 0xFE,r0
	mov.b r2,@(r0,r14)

loc_8c043140:
	mov.w @(loc_8c0431da,PC),r0
	mov 0x14,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c043154
	mov.l @r13,r1
	mov 0x2C,r0
	bra loc_8c043176
	mov.b r4,@(r0,r1)

loc_8c043154:
	mov.w @(loc_8c0431dc,PC),r0
	mov 0x04,r1
	mov 0x3C,r3
	mov.b r1,@(r0,r14)
	add 0x01,r0
	mov.b r8,@(r0,r14)
	add 0x01,r0
	mov.b r8,@(r0,r14)
	add 0x01,r0
	mov.b r8,@(r0,r14)
	add 0x01,r0
	mov.w r3,@(r0,r14)
	add 0x02,r0
	mov.w r8,@(r0,r14)
	add 0x02,r0
	bra loc_8c0432de
	mov.w r8,@(r0,r14)

loc_8c043176:
	mov.w @(loc_8c0431de,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c0431f4,PC),r0
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c0431e0,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c043190
	bra loc_8c043192
	mov 0x78,r10

loc_8c043190:
	mov 0x0C,r10

loc_8c043192:
	mov.w @(loc_8c0431da,PC),r0
	mov.l @(loc_8c0431f8,PC),r3
	mov.b @(r0,r14),r4
	extu.b r4,r1
	add 0x01,r1

loc_8c04319c:
	jsr @r3
	mov 0x0A,r0
	mov r0,r3
	mov.b r0,@r15
	shll2 r0
	add r3,r0
	shll r0
	sub r0,r4
	mov r4,r0
	nop
	add 0x01,r0
	mov.b r0,@(0x4,r15)
	mov.b @r15,r3
	tst r3,r3
	bt loc_8c0431fc
	mov.b @r15,r3
	mov 0x0B,r6
	mov.w @(loc_8c0431e2,PC),r0
	extu.b r3,r3
	shll2 r3
	add r9,r3
	add 0x70,r3
	mov.l @r3,r2
	mov.l r2,@-r15
	mov.l r12,@-r15
	bra loc_8c04320a
	mov.l @r13,r5

;##############################################
loc_8c0431d2:
	#data 0x008d
loc_8c0431d4:
	#data 0x00a4
loc_8c0431d6:
	#data 0x053d
loc_8c0431d8:
	#data 0x053e
loc_8c0431da:
	#data 0x053c
loc_8c0431dc:
	#data 0x04bc
loc_8c0431de:
	#data 0x04be
loc_8c0431e0:
	#data 0x0524
loc_8c0431e2:
	#data 0x00b2
	#align4
loc_8c0431e4:
	#data bank14.loc_8c14dec4
loc_8c0431e8:
	#data bank03.loc_8c0395c6
loc_8c0431ec:
	#data bank13.loc_8c13a1c4
loc_8c0431f0:
	#data work.GameGlobalPointer
loc_8c0431f4:
	#data bank14.loc_8c14dfac
loc_8c0431f8:
	#data bank12.loc_8c129128

;----------------------------------------------
loc_8c0431fc:
	mov.w @(loc_8c0432f2,PC),r0
	mov 0x0B,r6
	mov.l @(r0,r9),r2
	add 0x0A,r0
	mov.l r2,@-r15
	mov.l r12,@-r15
	mov.l @r13,r5

loc_8c04320a:
	mov.b @(r0,r5),r5
	jsr @r11
	mov r10,r4
	mov.b @(0xC,r15),r0
	add 0x04,r10
	mov 0x0B,r6
	extu.b r0,r0
	shll2 r0
	add r9,r0
	add 0x70,r0
	mov.l @r0,r3
	mov.w @(loc_8c0432f4,PC),r0
	mov.l r3,@-r15
	mov.l r12,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	jsr @r11
	mov r10,r4
	add 0x10,r15
	mov.w @(loc_8c0432f6,PC),r0
	mov.l @(loc_8c043300,PC),r3
	mov.l r3,@r15
	mov 0x02,r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bt.s loc_8c043250
	add 0x04,r10
	mov.b @(r0,r14),r1
	mov.l @r15,r0
	extu.b r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	bra loc_8c043256
	mov.l r2,@-r15

loc_8c043250:
	mov.l @r15,r2
	mov.l @(0xC,r2),r1
	mov.l r1,@-r15

loc_8c043256:
	mov.w @(loc_8c0432f4,PC),r0
	mov 0x0B,r6
	mov.l r12,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	jsr @r11
	mov r10,r4
	add 0x08,r15
	mov.w @(loc_8c0432f8,PC),r3
	add 0x08,r10
	add r9,r3
	bra loc_8c0432d8
	mov.l r3,@r15

loc_8c043270:
	mov.w @(loc_8c0432fa,PC),r0
	mov r8,r4
	shll2 r4
	mov.b @(r0,r14),r0
	cmp/eq 0x05,r0
	bf.s loc_8c0432a2
	add r10,r4
	mov.w @(loc_8c0432fc,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0432b2
	mov.w @(loc_8c0432fe,PC),r0
	mov 0x0C,r6
	add r14,r0
	mov.b @(r0,r8),r0
	shll2 r0
	mov.l @(r0,r9),r3
	mov.w @(loc_8c0432f4,PC),r0
	mov.l r3,@-r15
	mov.l r12,@-r15
	mov.l @r13,r5
	jsr @r11
	mov.b @(r0,r5),r5
	bra loc_8c0432d6
	add 0x08,r15

loc_8c0432a2:
	mov.w @(loc_8c0432fa,PC),r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r8
	bf loc_8c0432b2
	mov.w @(loc_8c0432fc,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0432c2

loc_8c0432b2:
	mov.w @(loc_8c0432fe,PC),r0
	add r14,r0
	mov.b @(r0,r8),r0
	shll2 r0
	mov.l @(r0,r9),r3

loc_8c0432bc:
	mov.l r3,@-r15
	bra loc_8c0432c8
	nop

loc_8c0432c2:
	mov.l @r15,r2
	mov.l @r2,r3
	mov.l r3,@-r15

loc_8c0432c8:
	mov.w @(loc_8c0432f4,PC),r0
	mov 0x0B,r6
	mov.l r12,@-r15
	mov.l @r13,r5
	jsr @r11
	mov.b @(r0,r5),r5
	add 0x08,r15

loc_8c0432d6:
	add 0x01,r8

loc_8c0432d8:
	mov 0x04,r3
	cmp/ge r3,r8
	bf loc_8c043270

loc_8c0432de:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0432f2:
	#data 0x00a8
loc_8c0432f4:
	#data 0x00b2
loc_8c0432f6:
	#data 0x053c
loc_8c0432f8:
	#data 0x00ac
loc_8c0432fa:
	#data 0x04be
loc_8c0432fc:
	#data 0x04bf
loc_8c0432fe:
	#data 0x0530
	#align4
loc_8c043300:
	#data bank14.loc_8c14df7c

;==============================================
loc_8c043304:
	mov.w @(loc_8c04340a,PC),r0
	mov 0x01,r5
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	mov.l @(loc_8c04341c,PC),r0
	and r5,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	shll2 r3
	mov.w @(r0,r3),r1
	mov.l @(loc_8c043420,PC),r3
	extu.w r1,r1
	tst r3,r1
	bt loc_8c04332a
	mov.w @(loc_8c04340c,PC),r0
	mov.w r5,@(r0,r4)
	add 0xFE,r0
	mov.w r5,@(r0,r4)

loc_8c04332a:
	mov.w @(loc_8c04340e,PC),r0
	mov.w @(r0,r4),r3
	add 0xFF,r3
	mov.w r3,@(r0,r4)
	add 0x02,r0
	mov.w @(r0,r4),r2
	add 0xFF,r2
	mov.w r2,@(r0,r4)
	add 0xFE,r0
	mov.w @(r0,r4),r3
	cmp/pl r3
	bf loc_8c04334a
	mov.w @(loc_8c04340c,PC),r0
	mov.w @(r0,r4),r2
	cmp/pl r2
	bt loc_8c043354

loc_8c04334a:
	bsr loc_8c0438a2
	nop
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c043354:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c04335c:
	mov.w @(loc_8c043410,PC),r0
	mov.w @(r0,r4),r3
	add 0xFF,r3
	mov.w r3,@(r0,r4)
	mov.w @(r0,r4),r2
	cmp/pl r2
	bt loc_8c043394
	mov.w @(loc_8c043412,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	xor r3,r2
	mov.b r2,@(r0,r4)
	add 0xFF,r0
	mov.b @(r0,r4),r0
	cmp/eq 0x05,r0
	bf loc_8c043382
	mov.w @(loc_8c043410,PC),r0
	bra loc_8c043394
	mov.w r3,@(r0,r4)

loc_8c043382:
	mov.w @(loc_8c043412,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c04338e
	bra loc_8c043390
	mov 0x28,r2

loc_8c04338e:
	mov 0x14,r2

loc_8c043390:
	mov.w @(loc_8c043410,PC),r0
	mov.w r2,@(r0,r4)

loc_8c043394:
	rts
	nop

;==============================================
loc_8c043398:
	mov.w @(loc_8c043410,PC),r0
	mov 0x28,r3
	mov 0x01,r2
	mov.w r3,@(r0,r4)
	add 0xF9,r0
	rts
	mov.b r2,@(r0,r4)

loc_8c0433a6:
	mov.w @(loc_8c043414,PC),r0
	mov 0x05,r3
	mov 0x78,r2
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x2A,r7
	mov.b r3,@(r0,r4)
	add 0x02,r0
	mov.w r2,@(r0,r4)
	add 0x02,r0
	mov 0x28,r3
	mov.w r3,@(r0,r4)
	add 0x04,r0
	mov 0x01,r2
	mov 0x00,r5
	mov.w r2,@(r0,r4)
	mov 0x03,r13

loc_8c0433c8:
	mov.w @(loc_8c043416,PC),r14
	exts.b r5,r6
	add r4,r14
	add r6,r14
	mov.b @r14,r14
	mov r14,r0
	nop
	cmp/eq 0x2B,r0
	bt loc_8c0433f0
	mov r14,r0
	nop
	cmp/eq 0x2D,r0
	bt loc_8c0433f0
	mov.w @(loc_8c043418,PC),r0
	mov 0x01,r1
	exts.b r5,r2
	mov.b @(r0,r4),r3
	shad r2,r1
	tst r1,r3
	bf loc_8c0433f8

loc_8c0433f0:
	mov.w @(loc_8c043416,PC),r1
	add r4,r1
	add r1,r6
	mov.b r7,@r6

loc_8c0433f8:
	add 0x01,r5
	exts.b r5,r3
	cmp/ge r13,r3
	bf loc_8c0433c8
	mov.w @(loc_8c04341a,PC),r0
	mov.b r7,@(r0,r4)
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04340a:
	#data 0x0524
loc_8c04340c:
	#data 0x04c2
loc_8c04340e:
	#data 0x04c0
loc_8c043410:
	#data 0x04c6
loc_8c043412:
	#data 0x04bf
loc_8c043414:
	#data 0x04be
loc_8c043416:
	#data 0x0530
loc_8c043418:
	#data 0x050c
loc_8c04341a:
	#data 0x0533
	#align4
loc_8c04341c:
	#data 0x8c2681e0
loc_8c043420:
	#data 0x00008000

;==============================================
loc_8c043424:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c043544,PC),r3
	jsr @r3
	mov r4,r14
	tst 0x01,r0
	bt loc_8c043446
	mov.w @(loc_8c04353e,PC),r0
	mov 0x02,r3
	mov 0x00,r2
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov 0x0F,r3
	bra loc_8c043458
	mov.b r3,@(r0,r14)

loc_8c043446:
	mov.w @(loc_8c04353e,PC),r0
	mov 0x02,r1
	mov 0x0E,r3
	mov.b r1,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov 0x0C,r2
	mov.b r2,@(r0,r14)

loc_8c043458:
	mov.w @(loc_8c043540,PC),r0
	mov 0x2A,r3
	mov 0x07,r2
	mov.b r3,@(r0,r14)
	add 0xD9,r0
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04346a:
	exts.b r5,r0
	mov.l @(loc_8c043548,PC),r2
	add 0xF0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add r2,r0
	mov 0x03,r7
	mov 0x00,r6

loc_8c04347c:
	mov.w @(loc_8c04353e,PC),r3
	exts.b r6,r5
	mov.b @(r0,r5),r2
	add 0x01,r6
	add r4,r3
	add r5,r3
	mov.b r2,@r3
	exts.b r6,r3
	cmp/ge r7,r3
	bf loc_8c04347c
	mov.w @(loc_8c043540,PC),r0
	mov 0x2A,r3
	mov 0x07,r2
	mov.b r3,@(r0,r4)
	add 0xD9,r0
	rts
	mov.b r2,@(r0,r4)

loc_8c04349e:
	mov.l r14,@-r15
	mov 0x00,r5
	mov.l r13,@-r15
	mov 0x03,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x14,r10
	mov.l r9,@-r15
	mov 0x10,r9
	mov.l r8,@-r15
	mov.l @(loc_8c04354c,PC),r8
	bra loc_8c043552
	mov r5,r14

loc_8c0434ba:
	exts.b r14,r12
	mov r5,r6
	mov r12,r3
	exts.b r14,r2
	shll r12
	cmp/ge r9,r2
	add r3,r12
	bf.s loc_8c043506
	add r8,r12
	mov r12,r11
	mov r5,r7

loc_8c0434d0:
	exts.b r7,r12
	mov r12,r0
	nop
	mov.w @(loc_8c04353e,PC),r3
	mov.b @(r0,r11),r2
	add r4,r3
	add r12,r3
	mov.b @r3,r1
	cmp/eq r1,r2
	bf loc_8c0434ee
	add 0x01,r7
	exts.b r7,r2
	cmp/ge r13,r2
	add 0x01,r6
	bf loc_8c0434d0

loc_8c0434ee:
	exts.b r6,r0
	cmp/eq 0x03,r0
	bf loc_8c043550
	mov.l @r15+,r8
	mov r14,r5
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c04346a
	mov.l @r15+,r14

loc_8c043506:
	mov r12,r11
	mov r5,r7

loc_8c04350a:
	exts.b r7,r12
	mov r12,r0
	nop
	mov.w @(loc_8c04353e,PC),r3
	mov.b @(r0,r11),r2
	add r4,r3
	add r12,r3
	mov.b @r3,r1
	cmp/eq r1,r2
	bf loc_8c043528
	add 0x01,r7
	exts.b r7,r2
	cmp/ge r13,r2
	add 0x01,r6
	bf loc_8c04350a

loc_8c043528:
	exts.b r6,r0
	cmp/eq 0x03,r0
	bf loc_8c043550
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c043424
	mov.l @r15+,r14

;##############################################
loc_8c04353e:
	#data 0x0530
loc_8c043540:
	#data 0x0533
	#align4
loc_8c043544:
	#data bank11.loc_8c11e730
loc_8c043548:
	#data bank13.loc_8c13a184
loc_8c04354c:
	#data bank13.loc_8c13a148

;----------------------------------------------
loc_8c043550:
	add 0x01,r14

loc_8c043552:
	exts.b r14,r3
	cmp/ge r10,r3
	bf loc_8c0434ba
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c043568:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	bsr loc_8c043304
	mov r4,r14
	exts.b r0,r0
	tst r0,r0
	bt loc_8c04357e
	bra loc_8c043742
	nop

loc_8c04357e:
	mov.w @(loc_8c04365a,PC),r0
	mov 0x01,r13
	mov.l @(loc_8c04366c,PC),r12
	mov.b @(r0,r14),r3
	mov r12,r4
	and r13,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	shll2 r3
	add r4,r3
	mov.w @(0x4,r3),r0
	mov.w @(loc_8c04365c,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c043670
	mov.w @(loc_8c04365e,PC),r0
	mov.w @(loc_8c043660,PC),r2
	mov.w @(r0,r14),r1
	add r2,r1
	mov.w r1,@(r0,r14)
	bsr loc_8c043398
	mov r14,r4
	mov.w @(loc_8c043662,PC),r0
	mov.w @(r0,r14),r0
	cmp/eq 0x2C,r0
	bf.s loc_8c043600
	mov 0x00,r4
	mov.w @(loc_8c043664,PC),r0
	mov 0x2B,r1
	mov.w @(loc_8c043666,PC),r3
	mov.b @(r0,r14),r2
	add r14,r3
	add r3,r2
	mov.b r1,@r2
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c0435dc
	mov.w @(loc_8c043666,PC),r2
	mov.b r4,@(r0,r14)
	mov.b @(r0,r14),r3
	add r14,r2
	add r2,r3
	mov.b r4,@r3

loc_8c0435dc:
	mov.w @(loc_8c043668,PC),r0
	mov r0,r3
	add 0xB2,r3
	add r14,r3
	mov.b @(r0,r14),r2
	mov.b @r3,r3
	shad r3,r13
	xor r13,r2
	mov.b r2,@(r0,r14)
	add 0xB2,r0
	mov.w @(loc_8c043666,PC),r2
	mov.b @(r0,r14),r3
	add 0x06,r0
	add r14,r2
	add r2,r3
	mov.b @r3,r1
	bra loc_8c043742
	mov.w r1,@(r0,r14)

loc_8c043600:
	mov.w @(loc_8c043662,PC),r0
	mov.w @(r0,r14),r0
	cmp/eq 0x2D,r0
	bf loc_8c043614
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0438a2
	mov.l @r15+,r14

loc_8c043614:
	mov.w @(loc_8c043664,PC),r0
	mov.w @(loc_8c043666,PC),r3
	mov.b @(r0,r14),r0
	add r14,r3
	mov.b @(r0,r3),r0
	cmp/eq 0x2B,r0
	bf loc_8c04362e
	mov.w @(loc_8c043664,PC),r0
	mov.w @(loc_8c043666,PC),r3
	mov.b @(r0,r14),r2
	add r14,r3
	add r3,r2
	mov.b r4,@r2

loc_8c04362e:
	mov.w @(loc_8c043668,PC),r0
	mov r0,r2
	add 0xB2,r2
	add r14,r2
	mov.b @(r0,r14),r3
	mov.b @r2,r2
	shad r2,r13
	or r13,r3
	mov.b r3,@(r0,r14)
	add 0xB2,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r0
	cmp/eq 0x03,r0
	bf loc_8c043742
	mov.w @(loc_8c04366a,PC),r0
	mov 0x2D,r2
	mov.b r2,@(r0,r14)
	add 0x91,r0
	bra loc_8c043742
	mov.w r4,@(r0,r14)

;##############################################
loc_8c04365a:
	#data 0x0524
loc_8c04365c:
	#data 0x03f0
loc_8c04365e:
	#data 0x04c2
loc_8c043660:
	#data 0x012c
loc_8c043662:
	#data 0x04c4
loc_8c043664:
	#data 0x04be
loc_8c043666:
	#data 0x0530
loc_8c043668:
	#data 0x050c
loc_8c04366a:
	#data 0x0533
	#align4
loc_8c04366c:
	#data 0x8c2681dc

;----------------------------------------------
loc_8c043670:
	mov.w @(loc_8c04374e,PC),r0
	mov.w @(loc_8c04374c,PC),r5
	mov.b @(r0,r14),r6
	and r13,r6
	mov r6,r2
	shll2 r6
	add r2,r6
	shll2 r6
	add r4,r6
	mov.w @(0x4,r6),r0
	extu.w r0,r0
	tst r5,r0
	bf loc_8c043692
	mov.w @(0x10,r6),r0
	extu.w r0,r0
	tst r5,r0
	bt loc_8c04369a

loc_8c043692:
	bsr loc_8c043398
	mov r14,r4
	bra loc_8c04369e
	nop

loc_8c04369a:
	bsr loc_8c04335c
	mov r14,r4

loc_8c04369e:
	mov.w @(loc_8c04374e,PC),r0
	mov.w @(loc_8c043750,PC),r4
	mov.b @(r0,r14),r5
	and r13,r5
	mov r5,r3
	shll2 r5
	add r3,r5
	shll2 r5
	add r12,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r0
	cmp/eq r4,r0
	bt loc_8c0436c0
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	cmp/eq r4,r0
	bf loc_8c0436e8

loc_8c0436c0:
	mov.w @(loc_8c043752,PC),r0
	mov.w @(r0,r14),r2
	add 0x01,r2
	mov.w r2,@(r0,r14)
	mov.w @(r0,r14),r0
	cmp/eq 0x2B,r0
	bf loc_8c0436d6
	mov.w @(loc_8c043752,PC),r0
	mov.w @(r0,r14),r2
	add 0x01,r2
	mov.w r2,@(r0,r14)

loc_8c0436d6:
	mov.w @(loc_8c043752,PC),r0
	mov.l @(loc_8c04375c,PC),r3
	mov.w @(r0,r14),r1
	add 0x2E,r1
	jsr @r3
	mov 0x2E,r0
	mov.w @(loc_8c043752,PC),r1
	add r14,r1
	mov.w r0,@r1

loc_8c0436e8:
	mov.w @(loc_8c04374e,PC),r0
	mov.w @(loc_8c043754,PC),r5
	mov.b @(r0,r14),r4
	and r13,r4
	mov r4,r3
	shll2 r4
	add r3,r4
	shll2 r4
	add r12,r4
	mov.w @(0x4,r4),r0
	extu.w r0,r0
	cmp/eq r5,r0
	bt loc_8c04370a
	mov.w @(0x10,r4),r0
	extu.w r0,r0
	cmp/eq r5,r0
	bf loc_8c043732

loc_8c04370a:
	mov.w @(loc_8c043752,PC),r0
	mov.w @(r0,r14),r2
	add 0xFF,r2
	mov.w r2,@(r0,r14)
	mov.w @(r0,r14),r0
	cmp/eq 0x2B,r0
	bf loc_8c043720
	mov.w @(loc_8c043752,PC),r0
	mov.w @(r0,r14),r2
	add 0xFF,r2
	mov.w r2,@(r0,r14)

loc_8c043720:
	mov.w @(loc_8c043752,PC),r0
	mov.l @(loc_8c04375c,PC),r3
	mov.w @(r0,r14),r1
	add 0x2E,r1
	jsr @r3
	mov 0x2E,r0
	mov.w @(loc_8c043752,PC),r1
	add r14,r1
	mov.w r0,@r1

loc_8c043732:
	mov.w @(loc_8c043756,PC),r0
	mov.w @(loc_8c043758,PC),r2
	mov.b @(r0,r14),r3
	add 0x06,r0
	mov.b @(r0,r14),r1
	add r14,r2
	add r2,r3
	mov.b r1,@r3

loc_8c043742:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04374c:
	#data 0x0c00
loc_8c04374e:
	#data 0x0524
loc_8c043750:
	#data 0x0400
loc_8c043752:
	#data 0x04c4
loc_8c043754:
	#data 0x0800
loc_8c043756:
	#data 0x04be
loc_8c043758:
	#data 0x0530
	#align4
loc_8c04375c:
	#data bank12.loc_8c1292d4

;==============================================
loc_8c043760:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	bsr loc_8c043304
	mov r4,r14
	exts.b r0,r0
	tst r0,r0
	bt loc_8c043776
	bra loc_8c043898
	nop

loc_8c043776:
	mov.w @(loc_8c043818,PC),r0
	mov 0x01,r13
	mov.l @(loc_8c043828,PC),r12
	mov.b @(r0,r14),r3
	mov r12,r4
	and r13,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	shll2 r3
	add r4,r3
	mov.w @(0x4,r3),r0
	mov.w @(loc_8c04381a,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c0437ee
	bsr loc_8c043398
	mov r14,r4
	mov.w @(loc_8c04381c,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0437de
	mov.w @(loc_8c04381e,PC),r0
	mov.w @(loc_8c043820,PC),r3
	mov.w @(r0,r14),r2
	add r3,r2
	mov.w r2,@(r0,r14)
	add 0xFC,r0
	mov.w @(loc_8c043822,PC),r2
	mov.b @(r0,r14),r1
	add r14,r2
	add r2,r1
	mov 0x2A,r2
	mov.b r2,@r1
	mov.b @(r0,r14),r1
	add 0xFF,r1
	mov.b r1,@(r0,r14)
	mov.w @(loc_8c043822,PC),r1
	mov.b @(r0,r14),r2
	add 0x06,r0
	add r14,r1
	add r1,r2
	mov.b @r2,r2
	mov.w r2,@(r0,r14)
	add 0x48,r0
	mov.w @(loc_8c043824,PC),r2
	mov.b @(r0,r14),r1
	add r14,r2
	mov.b @r2,r2
	shad r2,r13
	bra loc_8c043896
	xor r13,r1

loc_8c0437de:
	bsr loc_8c04349e

loc_8c0437e0:
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0433a6
	mov.l @r15+,r14

loc_8c0437ee:
	mov.w @(loc_8c043818,PC),r0
	mov.w @(loc_8c043826,PC),r6
	mov.b @(r0,r14),r5
	and r13,r5
	mov r5,r2
	shll2 r5
	add r2,r5
	shll2 r5
	add r4,r5
	mov.w @(0x4,r5),r0
	extu.w r0,r0
	tst r6,r0
	bf loc_8c043810
	mov.w @(0x10,r5),r0
	extu.w r0,r0
	tst r6,r0
	bt loc_8c04382c

loc_8c043810:
	bsr loc_8c043398
	mov r14,r4
	bra loc_8c043830
	nop

;##############################################
loc_8c043818:
	#data 0x0524
loc_8c04381a:
	#data 0x03f0
loc_8c04381c:
	#data 0x04c4
loc_8c04381e:
	#data 0x04c2
loc_8c043820:
	#data 0x012c
loc_8c043822:
	#data 0x0530
loc_8c043824:
	#data 0x04be
loc_8c043826:
	#data 0x0c00
	#align4
loc_8c043828:
	#data 0x8c2681dc

;----------------------------------------------
loc_8c04382c:
	bsr loc_8c04335c
	mov r14,r4

loc_8c043830:
	mov.w @(loc_8c0438c6,PC),r0
	mov.w @(loc_8c0438c4,PC),r5
	mov.b @(r0,r14),r4
	and r13,r4
	mov r4,r3
	shll2 r4
	add r3,r4
	shll2 r4
	add r12,r4
	mov.w @(0x4,r4),r0
	extu.w r0,r0
	cmp/eq r5,r0
	bt loc_8c043852
	mov.w @(0x10,r4),r0
	extu.w r0,r0
	cmp/eq r5,r0
	bf loc_8c04385a

loc_8c043852:
	mov.w @(loc_8c0438c8,PC),r0

loc_8c043854:
	mov.w @(r0,r14),r2
	add 0x01,r2
	mov.w r2,@(r0,r14)

loc_8c04385a:
	mov.w @(loc_8c0438c6,PC),r0
	mov.w @(loc_8c0438ca,PC),r5
	mov.b @(r0,r14),r4
	and r13,r4
	mov r4,r3
	shll2 r4
	add r3,r4
	shll2 r4
	add r12,r4
	mov.w @(0x4,r4),r0
	extu.w r0,r0
	cmp/eq r5,r0
	bt loc_8c04387c
	mov.w @(0x10,r4),r0
	extu.w r0,r0
	cmp/eq r5,r0
	bf loc_8c043884

loc_8c04387c:
	mov.w @(loc_8c0438c8,PC),r0
	mov.w @(r0,r14),r2
	add 0xFF,r2
	mov.w r2,@(r0,r14)

loc_8c043884:
	mov.w @(loc_8c0438c8,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	and r3,r2
	mov.w r2,@(r0,r14)
	mov.b @(r0,r14),r1
	add 0x6F,r0
	neg r1,r1
	add 0x2D,r1

loc_8c043896:
	mov.b r1,@(r0,r14)

loc_8c043898:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0438a2:
	mov.w @(loc_8c0438cc,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0438b8
	bsr loc_8c04349e
	mov r14,r4
	bra loc_8c0438bc
	nop

loc_8c0438b8:
	bsr loc_8c043424
	mov r14,r4

loc_8c0438bc:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0433a6
	mov.l @r15+,r14

;##############################################
loc_8c0438c4:
	#data 0x0400
loc_8c0438c6:
	#data 0x0524
loc_8c0438c8:
	#data 0x04c4
loc_8c0438ca:
	#data 0x0800
loc_8c0438cc:
	#data 0x050c

;----------------------------------------------
loc_8c0438ce:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r8,@-r15
	add 0xFC,r15
	mov.w @(loc_8c0439aa,PC),r0
	mov.w @(r0,r4),r3
	add 0xFF,r3
	mov.w r3,@(r0,r4)
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c0438ee
	bra loc_8c043a72
	nop

loc_8c0438ee:
	mov.w @(loc_8c0439ac,PC),r0
	mov 0x04,r12
	mov 0x00,r5
	mov.w @(loc_8c0439ae,PC),r13
	mov.b r12,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov 0x3C,r3
	mov r5,r11
	mov.w r3,@(r0,r4)
	add 0x02,r0
	mov.w r5,@(r0,r4)
	add 0x02,r0
	mov.w r5,@(r0,r4)
	add r4,r13
	mov.l @(loc_8c0439bc,PC),r6
	mov r13,r8
	mov.l @(loc_8c0439b8,PC),r7
	mov 0x2A,r10
	mov.l @(loc_8c0439c0,PC),r5
	mov 0x14,r14
	mov.l r13,@r15

loc_8c043924:
	mov.b @r8+,r1
	mov r1,r0
	nop
	cmp/eq 0x2D,r0
	bt loc_8c043936
	mov r1,r0
	nop
	cmp/eq 0x2C,r0
	bf loc_8c043938

loc_8c043936:
	mov.b r10,@r13

loc_8c043938:
	mov.w @(loc_8c0439b0,PC),r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r14,r3
	bt loc_8c043a10
	mov.l @(loc_8c0439c4,PC),r3
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bt loc_8c0439c8
	mov.w @(loc_8c0439b0,PC),r0
	mov.w @(loc_8c0439ae,PC),r2
	mov.b @(r0,r4),r0
	add r4,r2
	extu.b r0,r0
	mov.b @r2,r2
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	shll r0
	mov 0x0C,r3
	add r5,r0
	add r0,r3
	mov.w @(loc_8c0439b0,PC),r0
	mov.b r2,@r3
	mov.b @(r0,r4),r0
	mov.w @(loc_8c0439b2,PC),r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	shll r0
	mov 0x0D,r3
	add r5,r0
	add r0,r3
	mov.w @(loc_8c0439b0,PC),r0
	add r4,r2
	mov.b @r2,r2
	mov.b r2,@r3
	mov.b @(r0,r4),r0
	extu.b r0,r0
	mov.w @(loc_8c0439b4,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r4,r2
	shll r0
	mov.b @r2,r2
	mov 0x0E,r3
	add r5,r0
	add r0,r3
	bra loc_8c043a10
	mov.b r2,@r3

;##############################################
loc_8c0439aa:
	#data 0x04c0
loc_8c0439ac:
	#data 0x04bc
loc_8c0439ae:
	#data 0x0530
loc_8c0439b0:
	#data 0x053d
loc_8c0439b2:
	#data 0x0531
loc_8c0439b4:
	#data 0x0532
	#align4
loc_8c0439b8:
	#data 0x8c212cec
loc_8c0439bc:
	#data 0x8c2899d8
loc_8c0439c0:
	#data 0x8c2897e0
loc_8c0439c4:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c0439c8:
	mov.w @(loc_8c043aca,PC),r0
	mov.b @(r0,r4),r2
	add 0xF3,r0
	mov.b @(r0,r4),r0
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	shll r2
	add r7,r2
	mov.b r0,@(0xC,r2)
	mov.w @(loc_8c043aca,PC),r0
	mov.b @(r0,r4),r3
	add 0xF4,r0
	mov.b @(r0,r4),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll r3
	add r7,r3
	mov.b r0,@(0xD,r3)
	mov.w @(loc_8c043aca,PC),r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll r3
	add 0xF5,r0
	mov.b @(r0,r4),r0
	add r7,r3
	mov.b r0,@(0xE,r3)

loc_8c043a10:
	mov.w @(loc_8c043acc,PC),r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r14,r3
	bt.s loc_8c043a62
	add 0x01,r11
	mov.b @(r0,r4),r2
	add 0xF2,r0
	mov.b @(r0,r4),r0
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	shll r2
	add r6,r2
	mov.b r0,@(0xC,r2)
	mov.w @(loc_8c043acc,PC),r0
	mov.b @(r0,r4),r3
	add 0xF3,r0
	mov.b @(r0,r4),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll r3
	add r6,r3
	mov.b r0,@(0xD,r3)
	mov.w @(loc_8c043acc,PC),r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll r3
	add r6,r3
	add 0xF4,r0
	mov.b @(r0,r4),r0
	mov.b r0,@(0xE,r3)

loc_8c043a62:
	exts.b r11,r3
	cmp/ge r12,r3
	bt.s loc_8c043a6e
	add 0x01,r13
	bra loc_8c043924
	nop

loc_8c043a6e:
	bra loc_8c043aa6
	nop

loc_8c043a72:
	mov.w @(loc_8c043ace,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c043a80
	mov.w @(r0,r4),r3
	add 0xFF,r3
	mov.w r3,@(r0,r4)

loc_8c043a80:
	mov.w @(r0,r4),r2
	cmp/pl r2
	bf loc_8c043a96
	add 0x04,r15
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c04335c
	mov.l @r15+,r14

loc_8c043a96:
	add 0x04,r15
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c043398
	mov.l @r15+,r14

loc_8c043aa6:
	add 0x04,r15
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c043ab6:
	mov.w @(loc_8c043ad0,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c043ad2
	bra loc_8c043ad4
	mov 0x78,r13

loc_8c043aca:
	mov.w @(r0,r3),r5
loc_8c043acc:
	mov.l @(r0,r3),r5
loc_8c043ace:
	stc r4_bank,r4
loc_8c043ad0:
	mov.b r2,@(r0,r5)

loc_8c043ad2:
	mov 0x0C,r13

loc_8c043ad4:
	mov.l @(loc_8c043c38,PC),r2
	mov 0x0B,r6
	mov.l @(loc_8c043c34,PC),r3
	mov.w @(loc_8c043c26,PC),r0
	mov.l r3,@-r15
	mov.l @r2,r5
	mov.l @(loc_8c043c3c,PC),r3
	mov.b @(r0,r5),r5
	jsr @r3
	mov r13,r4
	mov.w @(loc_8c043c28,PC),r0
	mov.w @(r0,r14),r2
	add 0xFF,r2
	mov.w r2,@(r0,r14)
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c043b12
	add 0x04,r15
	mov.w @(loc_8c043c2a,PC),r0
	mov.l @(loc_8c043c40,PC),r1
	mov.b @(r0,r14),r0
	and 0x01,r0
	mov r0,r3
	shll2 r0
	add r3,r0
	mov.l @(loc_8c043c44,PC),r3
	shll2 r0
	mov.w @(r0,r1),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c043b3a

loc_8c043b12:
	mov.w @(loc_8c043c2c,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x03,r0
	mov.w r4,@(r0,r14)
	add 0x02,r0
	mov.w r4,@(r0,r14)
	bsr loc_8c043b42
	mov r14,r4
	mov.l @(loc_8c043c38,PC),r3
	mov 0x18,r0
	mov.w @(loc_8c043c2e,PC),r1
	mov.l @r3,r2
	add r14,r1
	mov.b @(r0,r2),r3
	mov.b @r1,r1
	sub r1,r3
	mov.b r3,@(r0,r2)

loc_8c043b3a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c043b42:
	mov.w @(loc_8c043c30,PC),r0
	mov 0x00,r5
	mov 0x01,r3
	mov.b r5,@(r0,r4)
	add 0xF8,r0
	mov.b r5,@(r0,r4)
	add 0x07,r0
	mov.b r5,@(r0,r4)
	add 0x9C,r0
	mov.b r3,@(r0,r4)
	add 0x6A,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0x05,r0
	mov 0x14,r6
	mov r5,r3
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	add 0x06,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov r3,r2
	mov.l r2,@(r0,r4)
	add 0x04,r0
	mov.l r2,@(r0,r4)
	add 0xB4,r0
	mov.l r2,@(r0,r4)
	add 0x04,r0
	mov.l r2,@(r0,r4)
	add 0x50,r0
	mov.l r2,@(r0,r4)
	add 0xE8,r0
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov.b r2,@(r0,r4)
	add 0x01,r0
	rts
	mov.b r2,@(r0,r4)

;==============================================
loc_8c043b96:
	mov.w @(loc_8c043c30,PC),r0
	mov 0x00,r3
	mov 0xF0,r6
	mov.b r3,@(r0,r4)
	add 0x09,r0
	mov.l @(r0,r4),r5
	mov 0x0F,r3
	mov 0x09,r7
	and r5,r6
	and r3,r5
	add 0x01,r5
	cmp/gt r7,r5
	bf loc_8c043bb2
	mov r7,r5

loc_8c043bb2:
	mov.w @(loc_8c043c32,PC),r0
	or r5,r6
	rts
	mov.l r6,@(r0,r4)

;==============================================
loc_8c043bba:
	mov.l @(loc_8c043c38,PC),r5
	mov 0x18,r0
	mov.w @(loc_8c043c2e,PC),r2
	mov 0x01,r6
	mov.l @r5,r3
	mov 0x00,r7
	add r4,r2
	mov.b @(r0,r3),r1
	mov.b @r2,r2
	or r2,r1
	mov.w @(loc_8c043c2e,PC),r2
	mov.b r1,@(r0,r3)
	add 0x6D,r0
	mov.l @r5,r3
	add r4,r2
	mov.b @r2,r2
	mov.b @(r0,r3),r1
	or r2,r1
	mov.w @(loc_8c043c2e,PC),r2
	mov.b r1,@(r0,r3)
	add 0x07,r0
	mov.l @r5,r3
	add r4,r2
	mov.b @r2,r2
	mov.b @(r0,r3),r1
	or r2,r1
	mov.b r1,@(r0,r3)
	add 0x01,r0
	mov.l @r5,r3
	mov.b r6,@(r0,r3)
	add 0x01,r0
	mov.l @r5,r3
	mov.b r7,@(r0,r3)
	add 0x21,r0
	mov.l @r5,r3
	mov.b r6,@(r0,r3)
	mov.w @(loc_8c043c2c,PC),r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	rts
	mov.b r7,@(r0,r4)

;==============================================
loc_8c043c0c:
	mov.w @(loc_8c043c2c,PC),r0
	mov 0x02,r3
	mov 0x00,r2
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r2,@(r0,r4)
	add 0x03,r0
	mov 0x0A,r3
	mov.w r3,@(r0,r4)
	add 0x02,r0
	mov 0x78,r2
	rts
	mov.w r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c043c26:
	#data 0x00b2
loc_8c043c28:
	#data 0x04c0
loc_8c043c2a:
	#data 0x0524
loc_8c043c2c:
	#data 0x04bc
loc_8c043c2e:
	#data 0x04c8
loc_8c043c30:
	#data 0x052f
loc_8c043c32:
	#data 0x0538
	#align4
loc_8c043c34:
	#data bank13.loc_8c13a1c8
loc_8c043c38:
	#data work.GameGlobalPointer
loc_8c043c3c:
	#data bank03.loc_8c0395c6
loc_8c043c40:
	#data 0x8c2681dc
loc_8c043c44:
	#data 0x00008000

;==============================================
loc_8c043c48:
	mov.w @(loc_8c043cc8,PC),r0
	mov 0x03,r3
	mov 0x00,r7
	mov.l r14,@-r15
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r7,@(r0,r4)
	mov.w @(loc_8c043cca,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	add 0x02,r0
	mov.b @(r0,r4),r2
	add 0xFF,r0
	mov.b @(r0,r4),r3
	cmp/hs r3,r2
	bt.s loc_8c043c76
	mov r7,r14
	mov.w @(loc_8c043ccc,PC),r0
	mov 0x01,r14
	mov.b @(r0,r4),r2
	add 0xFE,r0
	mov.b r2,@(r0,r4)

loc_8c043c76:
	mov.w @(loc_8c043cce,PC),r0
	mov 0x14,r2
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c043cc4
	mov.w @(loc_8c043cd0,PC),r5
	mov 0x2B,r6
	add r4,r5

loc_8c043c88:
	mov.w @(loc_8c043cd0,PC),r2
	mov.b r6,@r5
	add 0x01,r5
	add r4,r2
	add 0x03,r2
	cmp/hs r2,r5
	bf loc_8c043c88
	mov.w @(loc_8c043cd2,PC),r0
	mov 0x2A,r2
	mov.w @(loc_8c043cd4,PC),r3
	mov.b r2,@(r0,r4)
	add 0x8D,r0
	mov.w @(loc_8c043cd6,PC),r2
	mov.w r3,@(r0,r4)
	add 0x02,r0
	mov.w r2,@(r0,r4)
	add 0x02,r0
	mov.w r7,@(r0,r4)
	add 0x02,r0
	mov 0x28,r3
	mov.l @(loc_8c043cd8,PC),r1
	mov.w r3,@(r0,r4)
	add 0xF8,r0
	mov.b r7,@(r0,r4)
	add 0x01,r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x2C,r0
	mov.l @r1,r2
	mov.b r14,@(r0,r2)

loc_8c043cc4:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c043cc8:
	#data 0x04bc
loc_8c043cca:
	#data 0x053d
loc_8c043ccc:
	#data 0x053e
loc_8c043cce:
	#data 0x053c
loc_8c043cd0:
	#data 0x0530
loc_8c043cd2:
	#data 0x0533
loc_8c043cd4:
	#data 0x0e10
loc_8c043cd6:
	#data 0x0960
	#align4
loc_8c043cd8:
	#data work.GameGlobalPointer

;==============================================
loc_8c043cdc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	bsr loc_8c044944
	nop
	bsr loc_8c044c4a
	nop
	bsr loc_8c043e30
	nop
	mov.l @(loc_8c043dd4,PC),r14
	mov 0x3C,r0
	mov 0x01,r10
	mov.w @(r0,r14),r2
	mov 0x3B,r0
	mov.b @(r0,r14),r3
	mov r10,r1
	extu.w r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bf loc_8c043da8
	mov.l @(loc_8c043dd8,PC),r9
	mov 0x3F,r0
	mov.l @(loc_8c043ddc,PC),r13
	mov.b r0,@(0x4,r14)
	mov.l @r9,r12
	tst r12,r12
	bt.s loc_8c043d6a
	mov 0x00,r11

loc_8c043d1e:
	mov r11,r0
	nop
	mov.b r0,@(0x5,r14)
	mov r10,r2
	mov.w @(loc_8c043dd0,PC),r0
	mov.b @(r0,r12),r3
	mov.b @(0x4,r14),r0
	extu.b r3,r3
	shad r3,r2
	not r2,r2
	and r2,r0
	mov.b r0,@(0x4,r14)
	jsr @r13
	mov r12,r4
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c043d44
	jsr @r13
	mov r12,r4

loc_8c043d44:
	mov.l @(0xC,r12),r12
	tst r12,r12
	bf loc_8c043d1e
	mov.l @r9,r12

loc_8c043d4c:
	mov.w @(loc_8c043dd0,PC),r3
	mov r10,r2
	mov.b @(0x4,r14),r0
	add r12,r3
	mov.b @r3,r3
	extu.b r0,r0
	extu.b r3,r3
	shad r3,r2
	tst r2,r0
	bt loc_8c043d64
	jsr @r13
	mov r12,r4

loc_8c043d64:
	mov.l @(0xC,r12),r12
	tst r12,r12
	bf loc_8c043d4c

loc_8c043d6a:
	mov.l @(loc_8c043de0,PC),r3
	mov.l @r3,r12
	tst r12,r12
	bt loc_8c043d8c

loc_8c043d72:
	mov r11,r0
	nop
	mov.b r0,@(0x5,r14)
	jsr @r13
	mov r12,r4
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c043d86
	jsr @r13
	mov r12,r4

loc_8c043d86:
	mov.l @(0xC,r12),r12
	tst r12,r12
	bf loc_8c043d72

loc_8c043d8c:
	mov.l @(loc_8c043de0,PC),r2
	mov.l @(loc_8c043de4,PC),r3
	mov.l @r2,r5
	jsr @r3
	mov.l @r9,r4
	bsr loc_8c043fb8
	nop
	bsr loc_8c043ef4
	nop
	bsr loc_8c044ccc
	nop
	mov.l @(loc_8c043de8,PC),r3
	jsr @r3
	nop

loc_8c043da8:
	mov.l @(loc_8c043dec,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c043df0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c043df4,PC),r2
	jsr @r2
	nop
	bsr loc_8c044c94
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c043df8,PC),r2
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c043dd0:
	#data 0x01a4
	#align4
loc_8c043dd4:
	#data 0x8c2895f0
loc_8c043dd8:
	#data 0x8c28c580
loc_8c043ddc:
	#data loc_8c04761c
loc_8c043de0:
	#data 0x8c28c588
loc_8c043de4:
	#data loc_8c04fa1a
loc_8c043de8:
	#data loc_8c04f628
loc_8c043dec:
	#data bank05.loc_8c059582
loc_8c043df0:
	#data bank05.loc_8c0599b8
loc_8c043df4:
	#data loc_8c0473b0
loc_8c043df8:
	#data bank05.loc_8c059610

;==============================================
loc_8c043dfc:
	mov.l @(loc_8c043edc,PC),r3
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r3,r14
	mov.l @(loc_8c043ed8,PC),r13
	tst r14,r14
	bt loc_8c043e16

loc_8c043e0c:
	jsr @r13
	mov r14,r4
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c043e0c

loc_8c043e16:
	mov.l @(loc_8c043ee0,PC),r2
	mov.l @r2,r14
	tst r14,r14
	bt loc_8c043e28

loc_8c043e1e:
	jsr @r13
	mov r14,r4
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c043e1e

loc_8c043e28:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c043e30:
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xFC,r15
	mov.l @(loc_8c043eec,PC),r0
	mov 0x00,r5
	mov.l @(loc_8c043ee4,PC),r3
	mov 0x01,r10
	mov.l @(loc_8c043ee8,PC),r2
	mov 0x0C,r8
	mov.l r5,@r3
	mov 0x02,r11
	mov.l @(loc_8c043ee0,PC),r13
	mov r5,r7
	mov.l @(loc_8c043edc,PC),r6
	mov r5,r12
	mov.l r5,@r6
	mov.l r5,@r2
	mov.l r5,@r13
	mov.l @r0,r1
	mov.l @(0x1C,r1),r3
	and r10,r3
	mov.l r3,@r15

loc_8c043e64:
	mov.l @r15,r9
	mov r5,r4
	mov r9,r3
	shll r9
	add r3,r9
	shll2 r9

loc_8c043e70:
	mov.l @(loc_8c043ef0,PC),r1
	add r9,r1
	add r4,r1
	mov.l @r1,r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c043ea4
	mov.b @(0x5,r1),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c043e96
	mov.l @r6,r2
	tst r2,r2
	bf loc_8c043e90
	bra loc_8c043e92
	mov.l r1,@r6

loc_8c043e90:
	mov.l r1,@(0xC,r7)

loc_8c043e92:
	bra loc_8c043ea4
	mov r1,r7

loc_8c043e96:
	mov.l @r13,r3
	tst r3,r3
	bf loc_8c043ea0
	bra loc_8c043ea2
	mov.l r1,@r13

loc_8c043ea0:
	mov.l r1,@(0xC,r12)

loc_8c043ea2:
	mov r1,r12

loc_8c043ea4:
	add 0x04,r4
	cmp/hs r8,r4
	bf loc_8c043e70
	mov.l @r15,r3
	dt r11
	xor r10,r3
	bf.s loc_8c043e64
	mov.l r3,@r15
	mov.l @(loc_8c043ee4,PC),r3
	tst r7,r7
	bt.s loc_8c043ebe
	mov.l r7,@r3
	mov.l r5,@(0xC,r7)

loc_8c043ebe:
	mov.l @(loc_8c043ee8,PC),r3
	tst r12,r12
	bt.s loc_8c043ec8
	mov.l r12,@r3
	mov.l r5,@(0xC,r12)

loc_8c043ec8:
	add 0x04,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c043ed8:
	#data loc_8c045748
loc_8c043edc:
	#data 0x8c28c580
loc_8c043ee0:
	#data 0x8c28c588
loc_8c043ee4:
	#data 0x8c28c584
loc_8c043ee8:
	#data 0x8c28c58c
loc_8c043eec:
	#data work.GameGlobalPointer
loc_8c043ef0:
	#data 0x8c289608

;==============================================
loc_8c043ef4:
	mov.l @(loc_8c043ffc,PC),r5
	mov 0x00,r0
	mov.l @(loc_8c044000,PC),r6
	mov 0x06,r7
	mov r5,r4
	add 0x34,r4
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov r6,r4

loc_8c043f06:
	mov.b @(0x2,r4),r0
	mov r5,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.w @(loc_8c043fe8,PC),r3
	shll2 r0
	add r4,r3
	mov.b @r3,r3
	add r2,r0
	extu.b r3,r3
	shll2 r3
	mov.l r4,@(r0,r3)
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c043f3a
	mov.b @(0x2,r4),r0
	mov r5,r3
	add 0x34,r3
	extu.b r0,r0
	add r3,r0
	mov.b @r0,r2
	add 0x01,r2
	mov.b r2,@r0

loc_8c043f3a:
	mov.w @(loc_8c043fea,PC),r3
	dt r7
	bf.s loc_8c043f06
	add r3,r4
	mov.w @(loc_8c043fec,PC),r0
	mov.l @(0x24,r5),r3
	mov.l r3,@(r0,r6)
	mov.w @(loc_8c043fee,PC),r0
	mov.l r3,@(r0,r6)
	mov.w @(loc_8c043ff0,PC),r0
	mov.l r3,@(r0,r6)
	mov.w @(loc_8c043ff2,PC),r0
	mov.l @(0x18,r5),r2
	mov.l r2,@(r0,r6)
	mov.w @(loc_8c043ff4,PC),r0
	mov.l r2,@(r0,r6)
	mov.w @(loc_8c043ff6,PC),r0
	rts
	mov.l r2,@(r0,r6)

;==============================================
loc_8c043f60:
	mov.l r14,@-r15
	mov 0x01,r5
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c044004,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt loc_8c043f82
	mov.l @(loc_8c04400c,PC),r3
	mov.l @(loc_8c044008,PC),r4
	jsr @r3
	nop

loc_8c043f82:
	mov.w @(loc_8c043ff8,PC),r11
	mov.l @(loc_8c044000,PC),r4
	mov.w @(loc_8c043fea,PC),r12
	mov.l @(loc_8c044014,PC),r10
	add r4,r11
	mov.l @(loc_8c044010,PC),r9
	mov r4,r14

loc_8c043f90:
	mov.w @(loc_8c043ffa,PC),r0
	mov r14,r13
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c043fa2
	jsr @r10
	mov r13,r4
	jsr @r9
	mov r13,r4

loc_8c043fa2:
	add r12,r14
	cmp/hs r11,r14
	bf loc_8c043f90
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c043fb8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov r15,r6

loc_8c043fc8:
	mov r6,r4
	mov r6,r12
	mov r6,r7
	mov.w @(loc_8c043fea,PC),r6
	mov.l @(loc_8c044000,PC),r5
	bra loc_8c043fdc
	add 0x18,r12

loc_8c043fd6:
	mov.l r5,@r4
	add 0x04,r4
	add r6,r5

loc_8c043fdc:
	cmp/hs r12,r4
	bf loc_8c043fd6
	mov.l @(loc_8c044018,PC),r10
	mov r7,r11
	bra loc_8c044036
	mov 0x00,r13

;##############################################
loc_8c043fe8:
	#data 0x0411
loc_8c043fea:
	#data 0x05a4
loc_8c043fec:
	#data 0x189c
loc_8c043fee:
	#data 0x0d54
loc_8c043ff0:
	#data 0x020c
loc_8c043ff2:
	#data 0x1e40
loc_8c043ff4:
	#data 0x12f8
loc_8c043ff6:
	#data 0x07b0
loc_8c043ff8:
	#data 0x21d8
loc_8c043ffa:
	#data 0x012c
	#align4
loc_8c043ffc:
	#data 0x8c2895f0
loc_8c044000:
	#data 0x8c268340
loc_8c044004:
	#data bank03.loc_8c039240
loc_8c044008:
	#data 0x00777777
loc_8c04400c:
	#data bank11.loc_8c11c720
loc_8c044010:
	#data loc_8c04515e
loc_8c044014:
	#data bank03.loc_8c033b0a
loc_8c044018:
	#data bank14.loc_8c14dfc4

;----------------------------------------------
loc_8c04401c:
	mov.w @(loc_8c04415c,PC),r0
	mov.l @r11+,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c044036
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r10),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04415c,PC),r0
	mov.b r13,@(r0,r14)

loc_8c044036:
	cmp/hs r12,r11

loc_8c044038:
	bf loc_8c04401c
	mov.l @(loc_8c044178,PC),r10
	mov 0x18,r11
	mov r13,r14

loc_8c044040:
	mov r10,r12
	add 0x18,r12
	add r14,r12
	mov.w @(loc_8c04415e,PC),r0
	mov.l @r12,r12
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c044058
	bsr loc_8c0447b0
	mov r12,r4
	mov.w @(loc_8c04415e,PC),r0
	mov.b r13,@(r0,r12)

loc_8c044058:
	add 0x0C,r14
	cmp/hs r11,r14
	bf loc_8c044040
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04406e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.w @(loc_8c044160,PC),r4
	mov.l @(loc_8c044178,PC),r5
	add r13,r4
	mov.l r12,@-r15
	mov r5,r2
	add 0x18,r2
	sts.l pr,@-r15
	mov.b @(0x2,r13),r0
	mov.b @r4,r4
	extu.b r0,r0

loc_8c044088:
	mov r0,r3
	shll r0
	add r3,r0
	extu.b r4,r14
	shll2 r0
	shll2 r14
	add r2,r0
	mov r5,r2
	mov.l @(r0,r14),r14
	add 0x18,r2
	mov.w @(loc_8c044162,PC),r0
	mov.b r4,@(r0,r13)
	mov.b @(0x2,r13),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.w @(loc_8c044160,PC),r3
	mov 0x01,r4
	mov 0x00,r12
	add r13,r3
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	mov.l r13,@(r0,r3)
	mov.w @(loc_8c044164,PC),r0
	mov.b r4,@r14
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c044162,PC),r0
	mov.b r12,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r12,r0
	nop
	mov.l @(loc_8c04417c,PC),r3
	mov 0x1C,r5
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c044166,PC),r0
	mov 0x09,r2
	mov.l @(loc_8c044180,PC),r4
	mov.b r2,@(r0,r14)
	add 0xFE,r0
	mov.b @(r0,r13),r3
	add 0x01,r0
	mov.b r3,@(r0,r13)
	add 0xFF,r0
	mov.b @(r0,r13),r2
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c044168,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c04410a
	mova @(loc_8c044184,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04416a,PC),r0
	bra loc_8c044110
	nop

loc_8c04410a:
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04416c,PC),r0

loc_8c044110:
	fmov @(r0,r4),fr2
	mov 0x34,r0
	mov.w @(loc_8c044172,PC),r2
	mov 0x08,r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(loc_8c04418c,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04416e,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c044170,PC),r0
	mov.b r3,@(r0,r14)
	mov r2,r0
	nop
	mov.l @(loc_8c044190,PC),r3
	add 0x4A,r0
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c044174,PC),r0
	mov 0x03,r3
	mov.b r12,@(r0,r13)
	add 0x50,r0
	mov.b r3,@(r0,r13)
	mov.l @(loc_8c044194,PC),r3
	jsr @r3
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r5
	mov.l @(loc_8c044198,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13

loc_8c044158:
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04415c:
	#data 0x0254
loc_8c04415e:
	#data 0x029c
loc_8c044160:
	#data 0x0257
loc_8c044162:
	#data 0x0411
loc_8c044164:
	#data 0x012c
loc_8c044166:
	#data 0x0256
loc_8c044168:
	#data 0x01d2
loc_8c04416a:
	#data 0x008c
loc_8c04416c:
	#data 0x0088
loc_8c04416e:
	#data 0x041c
loc_8c044170:
	#data 0x01f4
loc_8c044172:
	#data 0x00ff
loc_8c044174:
	#data 0x019d
	#align4
loc_8c044178:
	#data 0x8c2895f0
loc_8c04417c:
	#data bank05.loc_8c0530d8
loc_8c044180:
	#data 0x8c26a518
loc_8c044184:
	#data 0x43055555
	#data 0xc3055555
loc_8c04418c:
	#data 0x43092492
loc_8c044190:
	#data bank05.loc_8c05218a
loc_8c044194:
	#data bank05.loc_8c05a2cc
loc_8c044198:
	#data loc_8c04f2ac

;==============================================
loc_8c04419c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r13
	mov.w @(loc_8c044290,PC),r0
	mov 0x02,r3
	mov.l r12,@-r15
	mov 0x00,r12
	sts.l pr,@-r15
	mov.b r12,@(r0,r14)
	mov.w @(loc_8c044292,PC),r0
	mov.l @(loc_8c0442a0,PC),r4
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c044294,PC),r0
	mov.b r13,@r14
	mov.b r3,@(r0,r14)
	add 0xB7,r0
	mov.l @(r0,r14),r3
	add 0xC6,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0441d2
	mova @(loc_8c0442a4,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c044296,PC),r0
	bra loc_8c0441d8
	nop

loc_8c0441d2:
	mova @(0xD4,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c044298,PC),r0

loc_8c0441d8:
	fmov @(r0,r4),fr2
	mov 0x34,r0
	mov.l @(loc_8c0442ac,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04429a,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0442b0,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(loc_8c0442b4,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mova @(loc_8c0442b8,PC),r0
	fmov @r0,fr2
	mov 0x6c,r0
	fmov fr2,@(r0,r14)
	mova @(loc_8c0442bc,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04429c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c044226
	fldi0 fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fneg fr2
	fmov fr2,@(r0,r14)

loc_8c044226:
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r12,r0
	nop
	mov.l @(loc_8c0442c0,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov r13,r0
	nop
	mov.b r0,@(0x6,r14)
	mov 0x11,r3
	mov.b r0,@(0x7,r14)
	mov 0x02,r2
	mov.w @(loc_8c04429e,PC),r0
	mov 0x01,r5
	mov 0x0A,r6
	mov.b r3,@(r0,r14)
	add 0xFE,r0
	mov.b r12,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	add 0x04,r0
	mov 0x04,r3
	mov.b r3,@(r0,r14)
	add 0x20,r0
	mov.b r2,@(r0,r14)
	add 0xFB,r0
	mov 0x12,r3
	mov.b r3,@(r0,r14)
	add 0xFE,r0
	mov 0x16,r2
	mov.b r2,@(r0,r14)
	add 0xF9,r0
	mov 0x1E,r3
	mov.b r3,@(r0,r14)
	add 0xE8,r0
	mov.l @(loc_8c0442c4,PC),r3
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0442c8,PC),r2
	mov 0x01,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c044290:
	#data 0x0411
loc_8c044292:
	#data 0x012c
loc_8c044294:
	#data 0x0255
loc_8c044296:
	#data 0x008c
loc_8c044298:
	#data 0x0088
loc_8c04429a:
	#data 0x041c
loc_8c04429c:
	#data 0x01d2
loc_8c04429e:
	#data 0x01d6
	#align4
loc_8c0442a0:
	#data 0x8c26a518
loc_8c0442a4:
	#data 0x43055555
	#data 0xc3055555
loc_8c0442ac:
	#data bank05.loc_8c05218a
loc_8c0442b0:
	#data 0x43cdb6db
loc_8c0442b4:
	#data 0xc1092492
loc_8c0442b8:
	#data 0xbf4db6db
loc_8c0442bc:
	#data 0x41555555
loc_8c0442c0:
	#data bank05.loc_8c0530d8
loc_8c0442c4:
	#data bank03.loc_8c034e8c
loc_8c0442c8:
	#data bank03.loc_8c035162

;==============================================
loc_8c0442cc:
	mov.w @(loc_8c044382,PC),r0
	mov 0x02,r7
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r6
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(loc_8c044388,PC),r5
	tst r3,r3
	bf.s loc_8c044340
	mov 0x01,r4
	mov.b @(0x2,r14),r0
	mov r5,r13
	add 0x18,r13
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r13
	mov.w @(loc_8c044384,PC),r0
	mov.l @(0x4,r13),r13
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c04437a
	mov.b @(0x2,r14),r0
	mov r5,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(0x8,r0),r5
	mov.w @(loc_8c044384,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c044324
	mov.w @(loc_8c044382,PC),r0
	mov.b r4,@(r0,r5)
	bra loc_8c044328
	mov.b r7,@(r0,r14)

loc_8c044324:
	mov.w @(loc_8c044382,PC),r0
	mov.b r4,@(r0,r14)

loc_8c044328:
	mov.w @(loc_8c044386,PC),r0
	mov.b r6,@(r0,r14)
	mov.b r6,@r14
	bsr loc_8c04419c
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(loc_8c04438c,PC),r2
	mov r14,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c044340:
	mov.w @(loc_8c044386,PC),r0
	mov.b r6,@(r0,r14)
	mov.w @(loc_8c044384,PC),r0
	mov.b r6,@r14
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c04437a
	mov.w @(loc_8c044382,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04437a
	mov.b @(0x2,r14),r0
	mov r5,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(0x8,r0),r5
	mov.w @(loc_8c044384,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c04437a

loc_8c044374:
	mov.w @(loc_8c044382,PC),r0
	mov.b r7,@(r0,r14)
	mov.b r4,@(r0,r5)

loc_8c04437a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c044382:
	#data 0x0411
loc_8c044384:
	#data 0x0420
loc_8c044386:
	#data 0x012c
	#align4
loc_8c044388:
	#data 0x8c2895f0
loc_8c04438c:
	#data loc_8c04f2ac

;==============================================
loc_8c044390:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.w @(loc_8c0444ac,PC),r14
	mov.l r12,@-r15
	add r13,r14
	sts.l pr,@-r15
	mov.b @(0x2,r13),r0
	mov.b @r14,r14
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c0444c8,PC),r3
	extu.b r14,r14
	shll2 r0
	add r0,r3
	mov.w @(loc_8c0444ae,PC),r0
	shll2 r14
	add r3,r14
	mov.l @r14,r14
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c044450
	mov.w @(loc_8c0444b0,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c044450
	mov.w @(loc_8c0444b2,PC),r0
	mov 0x00,r12
	mov 0x01,r4
	mov.b r4,@r14
	mov.b r12,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r12,r0
	nop
	mov.l @(loc_8c0444cc,PC),r3
	mov 0x1C,r5
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0444b4,PC),r0
	mov 0x05,r2
	mov 0x03,r3
	mov.w @(loc_8c0444b6,PC),r4
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov 0x10,r3
	mov.w @(loc_8c0444b8,PC),r0
	mov r14,r1
	add 0x34,r1
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0x20,r0
	mov.b r12,@(r0,r14)
	mov.w @(loc_8c0444ac,PC),r0
	mov.b @(r0,r13),r3
	mov.w @(loc_8c0444ba,PC),r0
	mov.b r3,@(r0,r13)
	mov.w @(loc_8c0444bc,PC),r0
	mov.l @(loc_8c0444d0,PC),r3
	mov.b @(r0,r13),r2
	mov.w @(loc_8c0444be,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c0444bc,PC),r0
	mov.b r2,@(r0,r14)
	mov r13,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0444c0,PC),r0
	mov.l @(loc_8c0444d4,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0444d8,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c0444dc,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0444e0,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c044450:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04445a:
	mov.w @(loc_8c0444c2,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r3
	mov 0x40,r0
	mov.l @(r0,r3),r2
	jsr @r2
	nop
	mov.w @(loc_8c0444c4,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04447a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c0444c6,PC),r0
	mov r4,r11
	mov 0x00,r3
	mov.w @(loc_8c0444b6,PC),r10
	mov.b @(r0,r11),r0
	mov 0x01,r12
	mov r3,r13
	mov 0x03,r9
	extu.b r0,r0
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	mov.b r0,@(0x4,r15)
	mov.l r12,@r15
	bra loc_8c0445aa
	mov r12,r8

;##############################################
loc_8c0444ac:
	#data 0x0257
loc_8c0444ae:
	#data 0x0420
loc_8c0444b0:
	#data 0x02a0
loc_8c0444b2:
	#data 0x012c
loc_8c0444b4:
	#data 0x0256
loc_8c0444b6:
	#data 0x00ff
loc_8c0444b8:
	#data 0x03f0
loc_8c0444ba:
	#data 0x0411
loc_8c0444bc:
	#data 0x01d2
loc_8c0444be:
	#data 0x0130
loc_8c0444c0:
	#data 0x0149
loc_8c0444c2:
	#data 0x0428
loc_8c0444c4:
	#data 0x0254
loc_8c0444c6:
	#data 0x01a4
loc_8c0444c8:
	#data 0x8c289608
loc_8c0444cc:
	#data bank05.loc_8c0530d8
loc_8c0444d0:
	#data bank12.loc_8c1294c8
loc_8c0444d4:
	#data bank05.loc_8c05218a
loc_8c0444d8:
	#data bank05.loc_8c052f1e
loc_8c0444dc:
	#data loc_8c04f2ac
loc_8c0444e0:
	#data bank05.loc_8c050aaa

;----------------------------------------------
loc_8c0444e4:
	mov.b @(0x2,r11),r0
	mov.l @r15,r14
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c0445fc,PC),r3
	shll2 r0
	add r0,r3
	mov.w @(loc_8c0445e0,PC),r0
	shll2 r14
	add r3,r14
	mov.l @r14,r14
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c0445a4
	mov.w @(loc_8c0445e2,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c0445a4
	mov.w @(loc_8c0445e4,PC),r0
	mov.b r12,@r14
	mov.b r13,@(r0,r14)
	mov r12,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.l @(loc_8c044600,PC),r3
	mov 0x1C,r5
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0445e6,PC),r0
	mov 0x05,r3
	mov r14,r1
	add 0x34,r1
	mov.b r9,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov 0x10,r3
	mov.w @(loc_8c0445e8,PC),r0
	mov.b r10,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c0445ea,PC),r0
	mov.l @(loc_8c044604,PC),r3
	mov.b @(r0,r11),r2
	mov.w @(loc_8c0445ec,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c0445ea,PC),r0
	mov.b r2,@(r0,r14)
	mov r11,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0445ee,PC),r0
	mov r12,r2
	mov.w @(loc_8c0445f2,PC),r3
	add 0x01,r8
	mov.b r10,@(r0,r14)
	mov.w @(loc_8c0445f0,PC),r0
	add r14,r3
	mov.l @(loc_8c044608,PC),r1
	mov.w r13,@(r0,r14)
	add 0x06,r0
	mov.w r13,@(r0,r14)
	add 0xF8,r0
	mov.w r13,@(r0,r14)
	add 0x0C,r0
	mov.w r13,@(r0,r14)
	add 0x02,r0
	mov.w r13,@(r0,r14)
	add 0xFC,r0
	mov.w r13,@(r0,r14)
	mov.b @r3,r3
	mov.b @(0x2,r11),r0
	extu.b r3,r3
	extu.b r0,r0
	shad r3,r2
	mov.b @(r0,r1),r3
	or r2,r3
	mov r1,r2
	add r0,r2
	mov.w @(loc_8c0445f4,PC),r0
	mov.b r3,@r2
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov r12,r3
	shad r0,r3
	mov.b @(0x4,r15),r0
	or r3,r0
	mov.b r0,@(0x4,r15)

loc_8c0445a4:
	mov.l @r15,r3
	add 0x01,r3
	mov.l r3,@r15

loc_8c0445aa:
	mov.l @r15,r2
	cmp/ge r9,r2
	bt loc_8c0445ba
	mov.w @(loc_8c0445f6,PC),r0
	exts.b r8,r1
	mov.b @(r0,r11),r3
	cmp/ge r3,r1
	bf loc_8c0444e4

loc_8c0445ba:
	mov.w @(loc_8c0445f6,PC),r0
	mov r11,r4
	mov.w @(loc_8c0445f8,PC),r1
	exts.b r8,r5
	mov.b r8,@(r0,r11)
	mov.b @(0x4,r15),r0
	add r11,r1
	mov.b r0,@r1
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c04460c,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0445e0:
	#data 0x0420
loc_8c0445e2:
	#data 0x02a0
loc_8c0445e4:
	#data 0x012c
loc_8c0445e6:
	#data 0x0256
loc_8c0445e8:
	#data 0x03f0
loc_8c0445ea:
	#data 0x01d2
loc_8c0445ec:
	#data 0x0130
loc_8c0445ee:
	#data 0x0149
loc_8c0445f0:
	#data 0x0342
loc_8c0445f2:
	#data 0x0411
loc_8c0445f4:
	#data 0x01a4
loc_8c0445f6:
	#data 0x0259
loc_8c0445f8:
	#data 0x0329
	#align4
loc_8c0445fc:
	#data 0x8c289608
loc_8c044600:
	#data bank05.loc_8c0530d8
loc_8c044604:
	#data bank12.loc_8c1294c8
loc_8c044608:
	#data 0x8c289632
loc_8c04460c:
	#data bank05.loc_8c056f10

;==============================================
loc_8c044610:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.w @(loc_8c044768,PC),r14
	mov.l r12,@-r15
	add r13,r14
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(0x2,r13),r0
	mov.b @r14,r14
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c044780,PC),r3
	extu.b r14,r14
	shll2 r0
	shll2 r14
	add r0,r3
	mov.w @(loc_8c04476a,PC),r0
	add r3,r14
	mov.l @r14,r14
	mov.w @(r0,r14),r2
	cmp/pl r2
	bt loc_8c044646
	bra loc_8c04475c
	nop

loc_8c044646:
	mov.w @(loc_8c04476c,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c044652
	bra loc_8c04475c
	nop

loc_8c044652:
	mov.l @(loc_8c044784,PC),r3
	jsr @r3
	mov r13,r4
	mov.l @(loc_8c044788,PC),r2
	jsr @r2
	nop
	mov.w @(loc_8c04476e,PC),r0
	mov 0x00,r12
	mov 0x01,r11
	mov.b r11,@r14
	mov.b r12,@(r0,r14)
	mov r11,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r12,r0
	nop
	mov.l @(loc_8c04478c,PC),r3
	mov 0x1C,r5
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c044770,PC),r0
	mov 0x08,r2
	mov 0x06,r3
	mov.l @(loc_8c044790,PC),r1
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov 0x10,r3
	mov.w @(loc_8c044774,PC),r0
	mov.w @(loc_8c044772,PC),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	mov 0x03,r3
	mov.w @(loc_8c044776,PC),r0
	mov.b r12,@(r0,r14)
	add 0x50,r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c044778,PC),r0
	mov.b r12,@(r0,r14)
	add 0xFF,r0
	mov.b r12,@(r0,r14)
	add 0x19,r0
	mov.b r12,@(r0,r14)
	mov.b @(0x2,r13),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov.l @(r0,r1),r4
	mov.w @(loc_8c04476a,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0446d0
	mov.w @(loc_8c044768,PC),r0
	mov.b @(r0,r13),r3
	mov.w @(loc_8c04477a,PC),r0
	bra loc_8c0446d6
	nop

loc_8c0446d0:
	mov.w @(loc_8c04477a,PC),r0
	mov 0x02,r3
	mov.b r11,@(r0,r4)

loc_8c0446d6:
	mov.b r3,@(r0,r13)
	mov r11,r0
	nop
	mov.b r0,@(0x4,r13)
	mov r12,r0
	nop
	mov.l @(loc_8c04478c,PC),r3
	mov 0x1C,r5
	mov.b r0,@(0x5,r13)
	mov.b r0,@(0x7,r13)
	mov.b r0,@(0x6,r13)
	jsr @r3
	mov r13,r4
	mov.w @(loc_8c044770,PC),r0
	mov 0x02,r2
	mov 0x03,r3
	mov.b r2,@(r0,r13)
	mov.w @(loc_8c044776,PC),r0
	mov.b r12,@(r0,r13)
	add 0x50,r0
	mov.b r3,@(r0,r13)
	mov.l @(loc_8c044794,PC),r3
	jsr @r3
	mov r13,r4
	mov r13,r2
	mov.l @(loc_8c044798,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04477c,PC),r0
	mov.b @(r0,r13),r2
	mov.w @(loc_8c04477e,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c04477c,PC),r0
	mov.b r2,@(r0,r14)
	add 0x2B,r0
	mov.b @(r0,r13),r3
	mov.w @(loc_8c044772,PC),r2
	mov.b r3,@(r0,r14)
	mov r2,r0
	nop
	mov.l @(loc_8c04479c,PC),r3
	add 0x4A,r0
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0447a0,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c0447a4,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0447a8,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0447ac,PC),r3
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04475c:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c044768:
	#data 0x0257
loc_8c04476a:
	#data 0x0420
loc_8c04476c:
	#data 0x02a0
loc_8c04476e:
	#data 0x012c
loc_8c044770:
	#data 0x0256
loc_8c044772:
	#data 0x00ff
loc_8c044774:
	#data 0x03f0
loc_8c044776:
	#data 0x019d
loc_8c044778:
	#data 0x03f9
loc_8c04477a:
	#data 0x0411
loc_8c04477c:
	#data 0x01d2
loc_8c04477e:
	#data 0x0130
	#align4

loc_8c044780:
	#data 0x8c289608
loc_8c044784:
	#data bank05.loc_8c059518
loc_8c044788:
	#data bank02.loc_8c02fd26
loc_8c04478c:
	#data bank05.loc_8c0530d8
loc_8c044790:
	#data 0x8c289610
loc_8c044794:
	#data bank05.loc_8c05a2cc
loc_8c044798:
	#data bank12.loc_8c1294c8
loc_8c04479c:
	#data bank05.loc_8c05218a
loc_8c0447a0:
	#data bank05.loc_8c052f1e
loc_8c0447a4:
	#data loc_8c04f2ac
loc_8c0447a8:
	#data bank05.loc_8c050c8c
loc_8c0447ac:
	#data bank05.loc_8c05a43c

;==============================================
loc_8c0447b0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.w @(loc_8c04490a,PC),r14
	mov.l r12,@-r15
	add r13,r14
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(0x2,r13),r0
	mov.b @r14,r14
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c044920,PC),r3
	extu.b r14,r14
	shll2 r0
	shll2 r14
	add r0,r3
	mov.w @(loc_8c04490c,PC),r0
	add r3,r14
	mov.l @r14,r14
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c044876
	mov.w @(loc_8c04490e,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c044876
	mov.w @(loc_8c044910,PC),r0
	mov 0x00,r12
	mov 0x01,r11
	mov.b r11,@r14
	mov.b r12,@(r0,r14)
	mov r11,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r12,r0
	nop
	mov.l @(loc_8c044924,PC),r3
	mov 0x1C,r5
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c044912,PC),r0
	mov 0x07,r2
	mov 0x08,r3
	mov r14,r1
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0x34,r1
	mov.w @(loc_8c044914,PC),r0
	mov.l @(loc_8c044928,PC),r3
	mov.b @(r0,r13),r2
	mov.w @(loc_8c044916,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c044914,PC),r0
	mov.b r2,@(r0,r14)
	mov r13,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c044918,PC),r2
	mov r2,r0
	nop
	add 0x4A,r0
	mov.w @(loc_8c04491c,PC),r3
	mov.b r2,@(r0,r14)
	mov r11,r2
	mov.w @(loc_8c04491a,PC),r0
	add r14,r3
	mov.l @(loc_8c04492c,PC),r1
	mov.w r12,@(r0,r14)
	add 0x06,r0
	mov.w r12,@(r0,r14)
	add 0xF8,r0
	mov.w r12,@(r0,r14)
	add 0x0C,r0
	mov.w r12,@(r0,r14)
	add 0x02,r0
	mov.w r12,@(r0,r14)
	add 0xFC,r0
	mov.w r12,@(r0,r14)
	mov.b @r3,r3
	mov.b @(0x2,r13),r0
	extu.b r3,r3
	extu.b r0,r0
	shad r3,r2
	mov.b @(r0,r1),r3
	or r2,r3
	mov r1,r2
	add r0,r2
	mov.w @(loc_8c04491e,PC),r0
	mov.b r3,@r2
	mov.b r11,@(r0,r13)

loc_8c044876:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c044882:
	mov.w @(loc_8c04491c,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04493c
	mov.b @(0x2,r14),r0
	mov.w @(loc_8c04490a,PC),r13
	extu.b r0,r0
	mov.l @(loc_8c044930,PC),r4
	add r14,r13
	mov r0,r3
	mov.b @r13,r13
	shll r0
	add r3,r0
	mov r4,r2
	extu.b r13,r13
	shll2 r0
	add 0x18,r2
	shll2 r13
	add r2,r0
	mov.l @(r0,r13),r13
	mov.w @(loc_8c04490c,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bf loc_8c0448e2
	mov.w @(loc_8c04490a,PC),r0
	mov 0x03,r13
	mov r4,r2
	add 0x18,r2
	mov.b @(r0,r14),r0
	extu.b r0,r0
	xor r0,r13
	mov.b @(0x2,r14),r0
	shll2 r13
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r13),r13
	mov.w @(loc_8c04490c,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c04493c

loc_8c0448e2:
	mov.w @(loc_8c04491c,PC),r0
	mov 0x00,r4
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.b r4,@(r0,r13)
	mov.w @(loc_8c044910,PC),r0
	mov.b r4,@(r0,r14)
	mov.b r4,@r14
	bsr loc_8c04419c
	mov r13,r4
	mov.l @(loc_8c044934,PC),r2
	mov r14,r5
	jsr @r2
	mov r13,r4
	lds.l @r15+,pr
	mov.l @(loc_8c044938,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04490a:
	#data 0x0257
loc_8c04490c:
	#data 0x0420
loc_8c04490e:
	#data 0x02a0
loc_8c044910:
	#data 0x012c
loc_8c044912:
	#data 0x0256
loc_8c044914:
	#data 0x01d2
loc_8c044916:
	#data 0x0130
loc_8c044918:
	#data 0x00ff
loc_8c04491a:
	#data 0x0342
loc_8c04491c:
	#data 0x0411
loc_8c04491e:
	#data 0x0259
	#align4
loc_8c044920:
	#data 0x8c289608
loc_8c044924:
	#data bank05.loc_8c0530d8
loc_8c044928:
	#data bank12.loc_8c1294c8
loc_8c04492c:
	#data 0x8c289632
loc_8c044930:
	#data 0x8c2895f0
loc_8c044934:
	#data loc_8c04f2ac
loc_8c044938:
	#data loc_8c04f378

;==============================================
loc_8c04493c:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c044944:
	mov.l r14,@-r15
	mov 0x38,r0
	mov.l r13,@-r15
	mov 0x00,r14
	mov.l r12,@-r15
	mov 0x01,r5
	mov.l r11,@-r15
	mov r14,r13
	mov.l @(loc_8c044a70,PC),r6
	mov r14,r11
	mov.l r9,@-r15
	mov 0x0C,r9
	mov.l r8,@-r15
	mov r14,r12
	mov.b @(r0,r6),r8
	extu.b r8,r8

loc_8c044964:
	mov r13,r1
	shll r1
	mov r13,r3
	add r3,r1
	shll2 r1
	mov r14,r7

loc_8c044970:
	mov r6,r0
	nop
	add 0x18,r0
	add r1,r0
	mov.l @(r0,r7),r4
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c04499e
	mov.w @(loc_8c044a66,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c044994
	mov.w @(loc_8c044a66,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c04499e

loc_8c044994:
	mov.b @(0x2,r4),r0
	mov r5,r3
	extu.b r0,r0
	shad r0,r3
	or r3,r11

loc_8c04499e:
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c0449b8
	mov.w @(loc_8c044a66,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c0449b8
	mov.b @(0x2,r4),r0
	mov r5,r3
	extu.b r0,r0
	shad r0,r3
	or r3,r12

loc_8c0449b8:
	add 0x04,r7
	cmp/hs r9,r7
	bf loc_8c044970
	mov 0x02,r3
	add 0x01,r13
	cmp/ge r3,r13
	bf loc_8c044964
	mov 0x38,r0
	mov r14,r7
	mov.b r11,@(r0,r6)
	mov 0x39,r0
	mov.b r12,@(r0,r6)
	mov 0x18,r13
	mov.l @(loc_8c044a74,PC),r12

loc_8c0449d4:
	mov r6,r4
	add 0x18,r4
	add r7,r4
	mov r5,r14
	mov.l @r4,r4
	mov r8,r3
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	shad r0,r14
	tst r14,r3
	bt loc_8c044a02
	mov 0x38,r0
	mov.b @(r0,r6),r1
	extu.b r1,r1
	tst r14,r1
	bf loc_8c044a02
	mov.w @(loc_8c044a68,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c044a6a,PC),r0
	and r12,r2
	mov.w r2,@(r0,r4)
	add 0xFE,r0
	mov.w r2,@(r0,r4)

loc_8c044a02:
	add 0x0C,r7
	cmp/hs r13,r7
	bf loc_8c0449d4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c044a16:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @r14,r3
	mov 0x01,r10
	mov r5,r13
	tst r3,r3
	mov r6,r12
	bf.s loc_8c044a7c
	mov 0x00,r11
	mov.w @(loc_8c044a6c,PC),r0
	mov 0x3C,r3
	mov.b r3,@(r0,r14)
	mov.b r10,@r14
	mov r10,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r11,r0
	nop
	mov r14,r4
	mov 0x00,r5
	mov.b r0,@(0x5,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c044a78,PC),r3
	mov.l @r15+,r8

loc_8c044a58:
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c044a66:
	#data 0x0255
loc_8c044a68:
	#data 0x04dc
loc_8c044a6a:
	#data 0x0342
loc_8c044a6c:
	#data 0x01f1
	#align4

loc_8c044a70:
	#data 0x8c2895f0

loc_8c044a74:
	#data 0x0000bff0

loc_8c044a78:
	#data bank05.loc_8c0530d8

;==============================================
loc_8c044a7c:
	mov.b @r13,r2
	mov.l @(loc_8c044b5c,PC),r9
	tst r2,r2
	bf loc_8c044ac8
	mov.b @r12,r3
	tst r3,r3
	bf loc_8c044ac8
	mov.b @(0x2,r14),r0
	mov r10,r3
	mov 0x39,r2
	extu.b r0,r0
	shad r0,r3
	mov.w @(loc_8c044b54,PC),r0
	add r9,r2
	mov.b @r2,r1
	not r3,r3
	and r3,r1
	mov.b r1,@r2
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c044ac8
	mov.b @(0x2,r14),r0
	mov 0x38,r3
	add r9,r3
	extu.b r0,r0
	mov.b @r3,r2
	shad r0,r10
	not r10,r10
	and r10,r2
	mov.b r2,@r3
	mov r9,r3
	mov.b @(0x2,r14),r0
	add 0x42,r3
	extu.b r0,r0
	add r3,r0
	bra loc_8c044c36
	mov.b r11,@r0

loc_8c044ac8:
	mov.b @(0x2,r14),r0
	mov r9,r4
	add 0x42,r4
	mov r11,r8
	extu.b r0,r0
	mov.b @(r0,r4),r4
	extu.b r4,r4
	mov r4,r3
	tst r10,r3
	bt.s loc_8c044afa
	mov.l r4,@r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c044afa
	mov.w @(loc_8c044b56,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c044afa
	mov.w @(loc_8c044b56,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c044afa
	add 0x01,r8

loc_8c044afa:
	mov.b @r13,r2
	tst r2,r2
	bt loc_8c044b84
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c044b84
	mov.w @(loc_8c044b56,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt loc_8c044b84
	mov.w @(loc_8c044b56,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x17,r0
	bt loc_8c044b84
	mov.w @(loc_8c044b56,PC),r0
	mov.b @(r0,r13),r4
	extu.b r4,r0
	cmp/eq 0x15,r0
	bt.s loc_8c044b84
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x1D,r0
	bt loc_8c044b84
	mov.w @(loc_8c044b58,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c044b84
	mov.l @r15,r0
	tst 0x02,r0
	bt loc_8c044b40
	add 0x01,r8

loc_8c044b40:
	mov.w @(loc_8c044b54,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf.s loc_8c044b60
	mov 0x1C,r5
	mov.w @(loc_8c044b5a,PC),r0
	mov 0x0B,r2
	bra loc_8c044b70
	mov.b r2,@(r0,r13)

;##############################################
loc_8c044b54:
	#data 0x0255
loc_8c044b56:
	#data 0x01d0
loc_8c044b58:
	#data 0x01f9
loc_8c044b5a:
	#data 0x0256
	#align4

loc_8c044b5c:
	#data 0x8c2895f0

;----------------------------------------------
loc_8c044b60:
	mov.w @(loc_8c044c7c,PC),r0
	mov 0x02,r1
	mov 0x03,r3
	mov.b r1,@(r0,r13)
	mov.w @(loc_8c044c7e,PC),r0
	mov.b r11,@(r0,r13)
	add 0x50,r0
	mov.b r3,@(r0,r13)

loc_8c044b70:
	mov.l @(loc_8c044c88,PC),r3
	jsr @r3
	mov r13,r4
	mov r11,r0
	nop
	mov.l @(loc_8c044c8c,PC),r3
	mov.b r0,@(0x7,r13)
	mov.b r0,@(0x6,r13)
	jsr @r3
	mov r13,r4

loc_8c044b84:
	mov.b @r12,r2
	tst r2,r2
	bt loc_8c044c02
	mov.b @(0x5,r12),r0
	tst r0,r0
	bf loc_8c044c02
	mov.w @(loc_8c044c80,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt loc_8c044c02
	mov.w @(loc_8c044c80,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x17,r0
	bt loc_8c044c02
	mov.w @(loc_8c044c80,PC),r0
	mov.b @(r0,r12),r4
	extu.b r4,r0
	cmp/eq 0x15,r0
	bt.s loc_8c044c02
	mov r0,r4
	mov r4,r0
	nop

loc_8c044bb4:
	cmp/eq 0x1D,r0
	bt loc_8c044c02
	mov.w @(loc_8c044c82,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c044c02
	mov.l @r15,r0
	tst 0x04,r0
	bt loc_8c044bca
	add 0x01,r8

loc_8c044bca:
	mov.w @(loc_8c044c84,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf.s loc_8c044bde
	mov 0x1C,r5
	mov.w @(loc_8c044c7c,PC),r0
	mov 0x0B,r2
	bra loc_8c044bee
	mov.b r2,@(r0,r12)

loc_8c044bde:
	mov.w @(loc_8c044c7c,PC),r0
	mov 0x02,r1
	mov 0x03,r3
	mov.b r1,@(r0,r12)
	mov.w @(loc_8c044c7e,PC),r0
	mov.b r11,@(r0,r12)
	add 0x50,r0
	mov.b r3,@(r0,r12)

loc_8c044bee:
	mov.l @(loc_8c044c88,PC),r3
	jsr @r3
	mov r12,r4
	mov r11,r0
	nop
	mov.l @(loc_8c044c8c,PC),r3
	mov.b r0,@(0x7,r12)
	mov.b r0,@(0x6,r12)
	jsr @r3
	mov r12,r4

loc_8c044c02:
	mov.w @(loc_8c044c86,PC),r0
	mov.b @(r0,r14),r2
	sub r8,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	tst r2,r2
	bf loc_8c044c36
	mov.b @(0x2,r14),r0
	mov 0x38,r2
	mov r10,r3
	add r9,r2
	extu.b r0,r0
	mov.b @r2,r1
	shad r0,r3
	not r3,r3
	and r3,r1
	mov 0x39,r3
	mov.b r1,@r2
	mov.b @(0x2,r14),r0
	add r9,r3
	mov.b @r3,r2
	extu.b r0,r0
	shad r0,r10
	not r10,r10
	and r10,r2
	mov.b r2,@r3

loc_8c044c36:
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

loc_8c044c4a:
	mov.l r14,@-r15
	mov 0x05,r2
	mov.l @(loc_8c044c90,PC),r14
	sts.l pr,@-r15
	mov.b @r14,r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c044c76
	mov r14,r6
	add 0x18,r6
	mov.l @(0x4,r6),r5
	mov.l @r6,r4
	bsr loc_8c044a16
	mov.l @(0x8,r6),r6
	mov r14,r6
	add 0x24,r6
	lds.l @r15+,pr
	mov.l @(0x4,r6),r5
	mov.l @r6,r4
	mov.l @(0x8,r6),r6
	bra loc_8c044a16
	mov.l @r15+,r14

loc_8c044c76:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c044c7c:
	#data 0x0256
loc_8c044c7e:
	#data 0x019d
loc_8c044c80:
	#data 0x01d0
loc_8c044c82:
	#data 0x01f9
loc_8c044c84:
	#data 0x0255
loc_8c044c86:
	#data 0x0259
	#align4
loc_8c044c88:
	#data bank05.loc_8c0530d8
loc_8c044c8c:
	#data bank05.loc_8c05a2cc
loc_8c044c90:
	#data 0x8c2895f0

;==============================================
loc_8c044c94:
	mov.l @(loc_8c044d78,PC),r2
	mov.w @(loc_8c044d6c,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c044cc6
	mov.l @(loc_8c044d7c,PC),r1
	mov.l @r1,r14
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c044cc6
	mov.l @(loc_8c044d80,PC),r3
	mov 0x04,r5
	jsr @r3
	mov.l @(0x18,r14),r4
	mov.l @(loc_8c044d7c,PC),r3
	mov 0x04,r5
	lds.l @r15+,pr
	mov.l @r3,r4
	mov.l @(loc_8c044d80,PC),r2
	mov.l @(0x24,r4),r4
	jmp @r2
	mov.l @r15+,r14

loc_8c044cc6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c044ccc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c044d78,PC),r2
	mov r15,r4
	mov.w @(loc_8c044d6e,PC),r0
	add 0x04,r4
	mov.l @r2,r3
	mov r4,r7
	mov.l @(loc_8c044d84,PC),r5
	add 0x01,r7
	mov.b @(r0,r3),r1
	mov 0x00,r3
	mov.w @(loc_8c044d70,PC),r14
	mov r4,r12
	mov.w @(loc_8c044d72,PC),r6
	mov r5,r4
	mov.b r1,@r7
	mov.b r3,@r12
	bra loc_8c044d0e
	add r5,r14

loc_8c044cfa:
	mov r4,r5
	mov.b @r5,r3
	tst r3,r3
	bt.s loc_8c044d0e
	add r6,r4
	mov.w @(loc_8c044d74,PC),r0
	mov.b @r12,r2
	mov.b @(r0,r5),r3
	or r3,r2
	mov.b r2,@r12

loc_8c044d0e:
	cmp/hs r14,r4
	bf loc_8c044cfa
	mov.b @r12,r2
	mov.l @(loc_8c044d7c,PC),r14
	tst r2,r2
	bf.s loc_8c044d50
	mov.l @r14,r13
	mov.b @r7,r3
	tst r3,r3
	bt loc_8c044d50
	mov 0x76,r0
	mov r13,r2
	mov.b @(r0,r13),r0
	add 0x18,r2
	mov 0x1F,r5
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	and 0x01,r0
	mov r0,r4
	mov r0,r3
	shll r4
	mov.l r0,@r15
	add r3,r4
	mov.l @(loc_8c044d88,PC),r3
	shll2 r4
	add r2,r4
	jsr @r3
	mov.l @r4,r4
	mov.l @r14,r2
	mov 0x76,r0
	mov 0x00,r3
	mov.b r3,@(r0,r2)

loc_8c044d50:
	mov.l @r14,r3
	mov 0x76,r0
	mov.l @(loc_8c044d78,PC),r1
	mov.b @(r0,r3),r0
	mov.w @(loc_8c044d6e,PC),r3
	mov.l @r1,r2
	add r2,r3
	mov.b r0,@r3
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c044d6c:
	#data 0x00aa
loc_8c044d6e:
	#data 0x0098
loc_8c044d70:
	#data 0x21d8
loc_8c044d72:
	#data 0x05a4
loc_8c044d74:
	#data 0x0328
	#align4
loc_8c044d78:
	#data work.GameGlobalPointer
loc_8c044d7c:
	#data 0x8c2896b0
loc_8c044d80:
	#data bank05.loc_8c056de4
loc_8c044d84:
	#data 0x8c268340
loc_8c044d88:
	#data loc_8c04223a

;==============================================
loc_8c044d8c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c044dce
	nop
	mov.l @(loc_8c044eac,PC),r4
	mov 0x0C,r6
	mov.l @(loc_8c044ea8,PC),r14
	jsr @r14
	mov 0x00,r5
	mov.l @(loc_8c044eb0,PC),r4
	mov.w @(loc_8c044e9e,PC),r6
	jsr @r14
	mov 0x00,r5
	mov.l @(loc_8c044eb4,PC),r4
	mov.w @(loc_8c044ea0,PC),r6
	jsr @r14
	mov 0x00,r5
	mov.l @(loc_8c044eb8,PC),r4
	mov 0x18,r6
	jsr @r14
	mov 0x00,r5
	mov.l @(loc_8c044ebc,PC),r4
	mov 0x10,r6
	jsr @r14
	mov 0x00,r5
	mov.l @(loc_8c044ec4,PC),r3
	mov 0x00,r4
	mov.l @(loc_8c044ec0,PC),r2
	mov.b r4,@r2
	mov.b r4,@r3
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c044dce:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(loc_8c044ec8,PC),r4
	mov.l @(loc_8c044ed0,PC),r1
	mov.l r8,@-r15
	mov r4,r6
	sts.l pr,@-r15
	mov.l @(loc_8c044ecc,PC),r2
	add r4,r1
	mov r4,r3
	mov.l @(loc_8c044ed4,PC),r3
	mov.l r4,@r2
	mov.l r1,@r3
	mov r4,r0
	nop
	mov.l @(loc_8c044ed8,PC),r8
	mov r4,r13
	mov.w @(loc_8c044ea2,PC),r10
	mov r4,r12
	mov.w @(loc_8c044ea4,PC),r14
	add r6,r8
	mov.l @(loc_8c044ea8,PC),r9
	mov 0x01,r11

loc_8c044e04:
	mov 0x00,r5
	mov r14,r6
	jsr @r9
	mov r12,r4
	cmp/eq r10,r11
	bt loc_8c044e16
	mov r13,r3
	add r14,r3
	mov.l r3,@(0x8,r13)

loc_8c044e16:
	add r14,r12
	cmp/hs r8,r12
	add r14,r13
	bf.s loc_8c044e04
	add 0x01,r11
	mov.l @(loc_8c044ee4,PC),r14
	mov 0x00,r0
	mov.l @(loc_8c044ee0,PC),r13
	mov 0x00,r4
	mov.l @(loc_8c044edc,PC),r6
	mov 0x38,r7

loc_8c044e2c:
	mov.l r4,@(r0,r14)
	mov.l r4,@(r0,r13)
	add 0x04,r0
	cmp/hs r7,r0
	mov.w r4,@r6
	bf.s loc_8c044e2c
	add 0x02,r6
	mov.l @(loc_8c044eec,PC),r1
	mov.w @(loc_8c044ea6,PC),r2
	mov.l @(loc_8c044ee8,PC),r3
	mov.w r2,@r3
	mov.w r10,@r1
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c044e56:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop
	mov.b r0,@(0x4,r15)
	mov.b @(0x4,r15),r0
	extu.b r0,r0
	mov r0,r14
	mov.l @(loc_8c044ee4,PC),r0
	shll2 r14
	mov.l r14,@r15
	bra loc_8c044e78
	mov.l @(r0,r14),r14

loc_8c044e72:
	bsr loc_8c0450c0
	mov r14,r4
	mov.l @(0xC,r14),r14

loc_8c044e78:
	tst r14,r14
	bf loc_8c044e72
	mov.l @(loc_8c044ee4,PC),r0
	mov 0x00,r4
	mov.l @r15,r2
	mov.l r4,@(r0,r2)
	mov.l @(loc_8c044ee0,PC),r0
	mov.l @r15,r3
	mov.l r4,@(r0,r3)
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c044edc,PC),r3
	extu.b r0,r0
	shll r0
	add r0,r3
	mov.w r4,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c044e9e:
	#data 0x0170
loc_8c044ea0:
	#data 0x0214
loc_8c044ea2:
	#data 0x0100
loc_8c044ea4:
	#data 0x01d0
loc_8c044ea6:
	#data 0x00f6
	#align4
loc_8c044ea8:
	#data bank12.loc_8c129728
loc_8c044eac:
	#data 0x8c26a8c4
loc_8c044eb0:
	#data 0x8c26a518
loc_8c044eb4:
	#data 0x8c26a688
loc_8c044eb8:
	#data 0x8c26a89c
loc_8c044ebc:
	#data 0x8c26a8e4
loc_8c044ec0:
	#data 0x8c26a960
loc_8c044ec4:
	#data 0x8c26a961
loc_8c044ec8:
	#data 0x8c26aa54
loc_8c044ecc:
	#data 0x8c287a54
loc_8c044ed0:
	#data 0x0001ce30
loc_8c044ed4:
	#data 0x8c287a58
loc_8c044ed8:
	#data 0x0001d000
loc_8c044edc:
	#data 0x8c287acc
loc_8c044ee0:
	#data 0x8c287a94
loc_8c044ee4:
	#data 0x8c287a5c
loc_8c044ee8:
	#data 0x8c287ae8
loc_8c044eec:
	#data 0x8c287aea

;==============================================
loc_8c044ef0:
	mov.l r14,@-r15
	extu.b r4,r14
	mov.l @(loc_8c045004,PC),r0
	shll2 r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c044f0c

loc_8c044f00:
	mov.l @(0x10,r14),r2
	jsr @r2
	mov r14,r4
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c044f00

loc_8c044f0c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c044f12:
	mov.l @(loc_8c045008,PC),r2
	mov.w @r2,r3
	cmp/pl r3
	bt loc_8c044f1e
	rts
	mov 0x00,r0

loc_8c044f1e:
	bra loc_8c044f26
	nop

loc_8c044f22:
	rts
	nop

loc_8c044f26:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r6,r0
	nop
	mov.l @(loc_8c04500c,PC),r4
	mov.b r0,@(0x4,r15)
	mov.w @r4,r3
	tst r3,r3
	bf.s loc_8c044f44
	mov r5,r13
	bra loc_8c044f98
	mov 0x00,r0

loc_8c044f44:
	mov.l @(loc_8c045010,PC),r5
	mov.l @r5,r14
	mov.l @(0x8,r14),r3
	mov.l r3,@r5
	mov.l @(loc_8c045008,PC),r5
	mov.w @r5,r2
	add 0xFF,r2
	mov.w r2,@r5
	mov.w @r4,r3
	add 0xFF,r3
	mov.w r3,@r4
	exts.w r3,r3
	tst r3,r3
	bf.s loc_8c044f68
	extu.b r13,r3
	mov.l @(loc_8c045014,PC),r2
	mov 0x00,r1
	mov.l r1,@r2

loc_8c044f68:
	mov.l @(loc_8c045018,PC),r0
	shll r3
	mov.w @(loc_8c045000,PC),r6
	mov 0x00,r5
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.l @(loc_8c04501c,PC),r3
	jsr @r3
	mov r14,r4
	mov r13,r0
	nop
	mov.b r0,@(0x3,r14)
	mov r14,r5
	mov.b @(0x4,r15),r0
	mov r13,r6
	mov.l @(loc_8c045020,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov.l @r15,r4
	mov r14,r0
	nop

loc_8c044f98:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c044fa2:
	extu.b r6,r6
	mov.l @(loc_8c045004,PC),r7
	shll2 r6
	mov r6,r0
	nop
	mov r7,r4
	mov.l @(r0,r4),r3
	tst r3,r3
	bf loc_8c044fca
	mov.l @(loc_8c045024,PC),r3
	mov.l @(r0,r3),r3
	tst r3,r3
	bf loc_8c044fca
	mov.l @(loc_8c045024,PC),r3
	mov r0,r2
	add r4,r2
	add r0,r3
	mov.l r5,@r3
	bra loc_8c044fdc
	mov.l r5,@r2

loc_8c044fca:
	mov r0,r4
	mov 0x00,r2
	add r7,r4
	mov.l r2,@(0x8,r5)
	mov.l @r4,r3
	mov.l r3,@(0xC,r5)
	mov.l @r4,r2
	mov.l r5,@(0x8,r2)
	mov.l r5,@r4

loc_8c044fdc:
	rts
	nop


;==============================================
loc_8c044fe0:
	extu.b r6,r6
	mov.l @(loc_8c045024,PC),r7
	shll2 r6
	mov r6,r0
	nop
	mov.l @(loc_8c045004,PC),r4
	mov.l @(r0,r4),r3
	tst r3,r3
	bf loc_8c045028
	mov.l @(loc_8c045024,PC),r3
	mov.l @(r0,r3),r3
	tst r3,r3
	bf loc_8c045028
	mov.l r5,@(r0,r7)
	bra loc_8c04503a
	mov.l r5,@(r0,r4)

;##############################################
loc_8c045000:
	#data 0x01d0
	#align4
loc_8c045004:
	#data 0x8c287a5c
loc_8c045008:
	#data 0x8c287ae8
loc_8c04500c:
	#data 0x8c287aea
loc_8c045010:
	#data 0x8c287a54
loc_8c045014:
	#data 0x8c287a58
loc_8c045018:
	#data 0x8c287acc
loc_8c04501c:
	#data bank12.loc_8c129728
loc_8c045020:
	#data bank14.loc_8c14dfec
loc_8c045024:
	#data 0x8c287a94

;----------------------------------------------
loc_8c045028:
	mov r0,r4
	mov 0x00,r2
	add r7,r4
	mov.l r2,@(0xC,r5)
	mov.l @r4,r3
	mov.l r3,@(0x8,r5)
	mov.l @r4,r2
	mov.l r5,@(0xC,r2)
	mov.l r5,@r4

loc_8c04503a:
	rts
	nop

loc_8c04503e:
	mov.l @(0x8,r4),r3
	tst r3,r3
	bf loc_8c045056
	extu.b r6,r6
	mov.l @(loc_8c045130,PC),r0
	mov 0x00,r3
	shll2 r6
	mov.l r3,@(0x8,r5)
	mov.l r4,@(0xC,r5)
	mov.l r5,@(0x8,r4)
	bra loc_8c045062
	mov.l r5,@(r0,r6)

loc_8c045056:
	mov.l @(0x8,r4),r3
	mov.l r3,@(0x8,r5)
	mov.l r4,@(0xC,r5)
	mov.l @(0x8,r4),r2
	mov.l r5,@(0xC,r2)
	mov.l r5,@(0x8,r4)

loc_8c045062:
	rts
	nop

;==============================================
loc_8c045066:
	mov.l @(0xC,r4),r3
	tst r3,r3

loc_8c04506a:
	bf loc_8c04507e
	extu.b r6,r6
	mov.l @(loc_8c045134,PC),r0
	mov 0x00,r3

loc_8c045072:
	shll2 r6
	mov.l r3,@(0xC,r5)
	mov.l r4,@(0x8,r5)
	mov.l r5,@(0xC,r4)
	bra loc_8c04508a
	mov.l r5,@(r0,r6)

loc_8c04507e:
	mov.l r4,@(0x8,r5)
	mov.l @(0xC,r4),r3
	mov.l r3,@(0xC,r5)
	mov.l @(0xC,r4),r2
	mov.l r5,@(0x8,r2)
	mov.l r5,@(0xC,r4)

loc_8c04508a:
	rts
	nop

;==============================================
loc_8c04508e:
	mov.l r14,@-r15
	extu.b r4,r14
	mov.l @(loc_8c045130,PC),r0
	shll2 r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c0450b8
	mov.l @(loc_8c045138,PC),r13

loc_8c0450a2:
	mov.w @(loc_8c04512c,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0450b2
	jsr @r13
	mov r14,r4
	bsr loc_8c04515e
	mov r14,r4

loc_8c0450b2:
	mov.l @(0xC,r14),r14
	tst r14,r14
	bf loc_8c0450a2

loc_8c0450b8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0450c0:
	mov.w @(loc_8c04512c,PC),r0
	mov 0x00,r5
	mov.l @(loc_8c045134,PC),r7
	mov.b r5,@(r0,r4)
	mov.l @(0x8,r4),r3
	tst r3,r3
	bf loc_8c0450ee
	mov.b @(0x3,r4),r0
	mov.l @(loc_8c045130,PC),r3
	extu.b r0,r0
	mov.l @(0xC,r4),r6
	shll2 r0
	tst r6,r6
	add r0,r3
	bf.s loc_8c0450ea
	mov.l r6,@r3
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	shll2 r0
	bra loc_8c04510e
	mov.l r5,@(r0,r7)

loc_8c0450ea:
	bra loc_8c04510e
	mov.l r5,@(0x8,r6)

loc_8c0450ee:
	mov.l @(0xC,r4),r3
	tst r3,r3
	bf loc_8c045102
	mov.b @(0x3,r4),r0
	mov.l @(0x8,r4),r6
	extu.b r0,r0
	shll2 r0
	mov.l r6,@(r0,r7)
	bra loc_8c04510e
	mov.l r5,@(0xC,r6)

loc_8c045102:
	mov.l @(0xC,r4),r3
	mov.l @(0x8,r4),r2
	mov.l r3,@(0xC,r2)
	mov.l @(0x8,r4),r3
	mov.l @(0xC,r4),r2
	mov.l r3,@(0x8,r2)

loc_8c04510e:
	mov.b @(0x3,r4),r0
	mov.l @(loc_8c04513c,PC),r1
	extu.b r0,r0
	mov.l @(loc_8c045140,PC),r6
	shll r0
	mov r1,r2
	mov.w @(r0,r1),r3
	add r0,r2
	add 0xFF,r3
	mov.w r3,@r2
	mov.l @r6,r7
	tst r7,r7
	bt loc_8c045144
	bra loc_8c045148
	mov.l r4,@(0x8,r7)

;##############################################
loc_8c04512c:
	#data 0x012c
	#align4
loc_8c045130:
	#data 0x8c287a5c
loc_8c045134:
	#data 0x8c287a94
loc_8c045138:
	#data bank03.loc_8c033b0a
loc_8c04513c:
	#data 0x8c287acc
loc_8c045140:
	#data 0x8c287a58

;----------------------------------------------
loc_8c045144:
	mov.l @(loc_8c045220,PC),r3
	mov.l r4,@r3

loc_8c045148:
	mov.l r5,@(0x8,r4)
	mov.l r4,@r6
	mov.l @(loc_8c045224,PC),r4
	mov.w @r4,r2
	add 0x01,r2
	mov.w r2,@r4
	mov.l @(loc_8c045228,PC),r4
	mov.w @r4,r3
	add 0x01,r3
	rts
	mov.w r3,@r4

;==============================================
loc_8c04515e:
	mov 0x04,r3
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	cmp/gt r3,r0
	bt loc_8c045202
	mov.w @(loc_8c04521e,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c045202
	mov 0x24,r0
	mov.l @(loc_8c04522c,PC),r2 ; load 0x8c2895e0
	mov.b @(r0,r4),r5
	mov 0x60,r1
	exts.b r5,r14
	add r2,r14
	mov.b @r14,r3
	cmp/ge r1,r3
	bt loc_8c045202
	exts.b r5,r0
	mov.l @(loc_8c045230,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.b @r14,r3
	shll2 r0
	add 0x01,r3
	mov.b r3,@r14
	shll2 r0
	add 0xFF,r3
	shll2 r0
	shll r0
	exts.b r3,r3
	add r2,r0
	shll2 r3
	add r0,r3
	mov.l r4,@r3
	mov.b @r14,r7
	add 0xFE,r7
	exts.b r7,r3
	cmp/pz r3
	bf loc_8c045202
	exts.b r5,r13
	mov.l @(loc_8c04522c,PC),r0
	mov r13,r3
	shll r13
	add r3,r13
	mov.l @(loc_8c045230,PC),r1
	shll2 r13
	shll2 r13
	exts.b r5,r6
	shll2 r13
	mov.b @(r0,r6),r6
	shll r13
	add r1,r13
	add 0xFF,r6

loc_8c0451d0:
	exts.b r6,r14
	mov r14,r0
	nop
	add 0xFF,r0
	shll2 r0
	mov.l @(r0,r13),r5
	mov 0x31,r0
	mov.b @(r0,r4),r2
	mov.b @(r0,r5),r3
	cmp/gt r2,r3
	bf loc_8c045202
	mov r14,r0
	nop
	add 0xFF,r0
	shll2 r0
	mov.l r4,@(r0,r13)
	mov r14,r0
	nop
	add 0xFF,r7
	exts.b r7,r3
	shll2 r0
	cmp/pz r3
	mov.l r5,@(r0,r13)
	add 0xFF,r6
	bt loc_8c0451d0

loc_8c045202:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c045208:
	mov.l @(loc_8c04522c,PC),r7
	mov 0x00,r5
	mov r7,r6
	add 0x10,r6
	mov r7,r4

loc_8c045212:
	mov.b r5,@r4
	add 0x01,r4
	cmp/hs r6,r4
	bf loc_8c045212
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04521e:
	#data 0x012c
	#align4
loc_8c045220:
	#data 0x8c287a54
loc_8c045224:
	#data 0x8c287ae8
loc_8c045228:
	#data 0x8c287aea
loc_8c04522c:
	#data 0x8c2895e0
loc_8c045230:
	#data 0x8c287de0

;==============================================
loc_8c045234:
	sts.l pr,@-r15
	bsr loc_8c045b7c
	nop
	mov.l @(loc_8c045340,PC),r3
	mov.l @r3,r2
	mov.b @(0x6,r2),r0
	tst r0,r0
	bf loc_8c04524c
	bsr loc_8c045250
	nop
	bsr loc_8c045ae8
	nop

loc_8c04524c:
	bra loc_8c045718
	lds.l @r15+,pr

;==============================================
loc_8c045250:
	sts.l pr,@-r15
	bsr loc_8c04525a
	mov 0x00,r4
	lds.l @r15+,pr
	mov 0x01,r4

loc_8c04525a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8c045344,PC),r5
	mov r5,r0
	nop
	mov.w @(loc_8c045334,PC),r11
	mov r4,r2
	mov.b @(r0,r4),r9
	mov 0x01,r7
	mul.l r11,r4
	mov.l @(loc_8c045348,PC),r6
	add 0xFF,r9
	exts.b r9,r3
	mov.l @(loc_8c04534c,PC),r8
	shll2 r3
	sts macl,r11
	xor r7,r4
	xor r7,r2
	add r6,r11
	add r3,r11
	mov.w @(loc_8c045334,PC),r3
	add r5,r2
	mul.l r3,r4
	mov.l r2,@(0x8,r15)
	mov 0x06,r12
	sts macl,r4
	add r6,r4
	bra loc_8c04531a
	mov.l r4,@(0xC,r15)

loc_8c0452a2:
	mov.w @(loc_8c045336,PC),r0
	mov.l @r11,r10
	mov.b @(r0,r10),r3
	tst r3,r3
	bf loc_8c045316
	mov.w @(loc_8c045338,PC),r0
	mov.b @(r0,r10),r0
	mov.b r0,@(0x4,r15)
	extu.b r0,r0
	tst r0,r0
	bt loc_8c045316
	mov.b @(0x4,r15),r0
	extu.b r0,r0
	and r12,r0
	shar r0
	mov.b r0,@(0x4,r15)
	mov.l @(0x8,r15),r14
	mov.l @(0xC,r15),r3
	mov.b @r14,r14
	add 0xFF,r14
	exts.b r14,r2
	exts.b r14,r13
	cmp/pz r2
	shll2 r13
	bf.s loc_8c045316
	add r3,r13

loc_8c0452d6:
	mov.w @(loc_8c04533a,PC),r0
	mov.l @r13,r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c04530c
	mov.w @(loc_8c04533c,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@r15
	extu.b r3,r3
	tst r3,r3
	bt loc_8c04530c
	mov.b @r15,r1
	extu.b r1,r1
	and r12,r1
	shar r1
	mov.b r1,@r15
	extu.b r1,r1
	mov.b @(0x4,r15),r0
	extu.b r0,r0
	shll2 r0
	add r8,r0
	mov.b @(r0,r1),r3
	extu.b r3,r3
	tst r3,r3
	bf loc_8c04530c
	bsr loc_8c045350
	mov r10,r4

loc_8c04530c:
	add 0xFF,r14
	exts.b r14,r2
	cmp/pz r2
	bt.s loc_8c0452d6
	add 0xFC,r13

loc_8c045316:
	add 0xFC,r11
	add 0xFF,r9

loc_8c04531a:
	exts.b r9,r2
	cmp/pz r2
	bt loc_8c0452a2
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c045334:
	#data 0x0178
loc_8c045336:
	#data 0x019e
loc_8c045338:
	#data 0x019c
loc_8c04533a:
	#data 0x019f
loc_8c04533c:
	#data 0x019d
	#align4
loc_8c045340:
	#data 0x8c2896b0
loc_8c045344:
	#data 0x8c287ddc
loc_8c045348:
	#data 0x8c287aec
loc_8c04534c:
	#data bank13.loc_8c13a29c

;==============================================
loc_8c045350:
	mov.l r14,@-r15
	mov.w @(loc_8c045476,PC),r0
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(loc_8c04547c,PC),r3
	mov.l r10,@-r15
	mov.l @(loc_8c045480,PC),r2
	mov.w @(loc_8c045474,PC),r11
	fldi0 fr4
	sts.l pr,@-r15
	fmov fr4,@r3
	fmov fr4,@r2
	mov.l @(loc_8c045484,PC),r1
	mov.l @(loc_8c045488,PC),r3
	fmov fr4,@r1
	fmov fr4,@r3
	mov.l @(r0,r13),r12
	mov.w @r12,r10
	and r11,r10
	extu.w r10,r2
	tst r2,r2
	bt.s loc_8c0453a6
	mov r5,r14
	mov r14,r5
	mov r10,r6
	bsr loc_8c0453e6
	mov r13,r4
	mov.w @(loc_8c045478,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0453a6
	lds.l @r15+,pr
	mov r10,r6
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c04548c
	mov.l @r15+,r14

loc_8c0453a6:
	mov.w @(0x2,r12),r0
	cmp/pl r0
	bf loc_8c0453d8
	mov.w @(0x2,r12),r0
	mov r14,r5
	mov r0,r6
	and r11,r6
	bsr loc_8c0453e6
	mov r13,r4
	mov.w @(loc_8c045478,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0453d8
	lds.l @r15+,pr
	mov.w @(0x2,r12),r0
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r10
	mov r0,r6
	and r11,r6
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c04548c
	mov.l @r15+,r14

loc_8c0453d8:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0453e6:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c045476,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.w @(loc_8c045474,PC),r10
	sts.l pr,@-r15
	mov.l @(r0,r13),r12
	mov.w @(0x4,r12),r0
	mov r0,r7
	and r10,r7
	extu.w r7,r3
	tst r3,r3
	bt.s loc_8c045418
	mov r6,r11
	mov.l @(loc_8c04547c,PC),r4
	mov r13,r5
	mov r11,r6
	mov.l r4,@-r15
	bsr loc_8c0455f4
	mov r14,r4
	add 0x04,r15

loc_8c045418:
	mov.w @(0x6,r12),r0
	mov r0,r7
	and r10,r7
	extu.w r7,r3
	tst r3,r3
	bt loc_8c045432
	mov.l @(loc_8c045480,PC),r4
	mov r13,r5
	mov r11,r6
	mov.l r4,@-r15
	bsr loc_8c0455f4
	mov r14,r4
	add 0x04,r15

loc_8c045432:
	mov.w @(0x8,r12),r0
	mov r0,r7
	and r10,r7
	extu.w r7,r3
	tst r3,r3
	bt loc_8c04544c
	mov.l @(loc_8c045484,PC),r4
	mov r13,r5
	mov r11,r6
	mov.l r4,@-r15
	bsr loc_8c0455f4
	mov r14,r4
	add 0x04,r15

loc_8c04544c:
	mov.w @(0xA,r12),r0
	mov r0,r7
	and r10,r7
	exts.w r7,r3
	cmp/pl r3
	bf loc_8c045466
	mov.l @(loc_8c045488,PC),r4
	mov r13,r5
	mov r11,r6
	mov.l r4,@-r15
	bsr loc_8c0455f4
	mov r14,r4
	add 0x04,r15

loc_8c045466:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c045474:
	#data 0x1fff
loc_8c045476:
	#data 0x01c0
loc_8c045478:
	#data 0x019f
	#align4
loc_8c04547c:
	#data 0x8c28c590
loc_8c045480:
	#data 0x8c28c594
loc_8c045484:
	#data 0x8c28c598
loc_8c045488:
	#data 0x8c28c59c

;==============================================
loc_8c04548c:
	mov.w @(loc_8c0455c8,PC),r0
	mov 0x06,r3
	mov.w @(loc_8c0455ca,PC),r2
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x01,r13
	mov.l @(r0,r5),r7
	add 0xE8,r0
	mov.w r6,@(r0,r4)
	add 0x0C,r0
	mov.l r4,@(r0,r5)
	add 0xFC,r0
	mov.l r5,@(r0,r4)
	add 0xED,r0
	mov.b @(r0,r5),r6
	add 0x01,r0
	mov.b @(r0,r4),r1
	and r3,r6
	mov.l @(loc_8c0455e4,PC),r3
	or r2,r6
	mov.w @(loc_8c0455cc,PC),r14
	or r6,r1
	mov.b r1,@(r0,r4)
	mov.l @(loc_8c0455e0,PC),r1
	fmov @r3,fr5
	fmov @r1,fr4
	mov.w @(0x4,r7),r0
	fcmp/gt fr4,fr5
	mov r0,r6
	bf.s loc_8c0454d4
	and r14,r6
	mov.w @(0x6,r7),r0
	mov 0x02,r13
	fmov fr5,fr4
	mov r0,r6
	and r14,r6

loc_8c0454d4:
	mov.l @(loc_8c0455e8,PC),r3
	fmov @r3,fr5
	fcmp/gt fr4,fr5
	bf loc_8c0454e6
	mov.w @(0x8,r7),r0
	mov 0x03,r13
	fmov fr5,fr4
	mov r0,r6
	and r14,r6

loc_8c0454e6:
	mov.l @(loc_8c0455ec,PC),r3
	fmov @r3,fr3
	fcmp/gt fr4,fr3
	bf loc_8c04550a
	mov.w @(0xA,r7),r0
	mov.w @(loc_8c0455ce,PC),r2
	mov r0,r6
	and r14,r6
	mov r6,r7
	and r2,r7
	mov 0xF3,r0
	extu.w r7,r1
	shld r0,r1
	mov r1,r7
	mov 0x04,r1
	or r1,r7
	mov r7,r13
	and r14,r6

loc_8c04550a:
	mov.w @(loc_8c0455d0,PC),r0
	mov.b r13,@(r0,r5)
	add 0x0B,r0
	mov.w r6,@(r0,r5)
	mov.l @r15+,r13
	mov.l @r15+,r14
	mov.w @(loc_8c0455d2,PC),r0
	mov.l @(loc_8c0455f0,PC),r7
	mov.b @(r0,r4),r0
	tst 0x80,r0
	bf loc_8c045562
	mov.w @(loc_8c0455d4,PC),r0
	mov 0x7F,r3
	mov 0x1C,r2
	mov.l @(r0,r4),r6
	add 0x2D,r0
	mov.b @(r0,r4),r1
	add 0x1B,r0
	and r3,r1
	extu.b r1,r1
	mulu.w r2,r1
	sts macl,r1
	add r1,r6
	mov.w @(loc_8c0455d6,PC),r1
	mov.l r6,@(r0,r4)
	mov.b @(0x5,r6),r0
	add r4,r1
	mov.b r0,@r1
	mov.w @(loc_8c0455d2,PC),r0
	mov.b @(r0,r4),r0
	tst 0x01,r0
	bt loc_8c045562
	mov.w @(loc_8c0455d8,PC),r0
	mov.w @(loc_8c0455da,PC),r3
	mov.b @(r0,r4),r6
	add 0xFA,r0
	mov.b @(r0,r4),r2
	extu.b r6,r6
	mulu.w r3,r6
	sts macl,r6
	add r7,r6
	mov.b r2,@(r0,r6)
	add 0x12,r0
	mov.l r5,@(r0,r6)

loc_8c045562:
	mov.w @(loc_8c0455dc,PC),r0
	mov.b @(r0,r5),r0
	tst 0x80,r0
	bf loc_8c0455c4
	mov.w @(loc_8c0455d4,PC),r0
	mov 0x7F,r3
	mov 0x1C,r2
	mov.l @(r0,r4),r6
	add 0x2D,r0
	mov.b @(r0,r4),r1
	add 0x1B,r0
	and r3,r1
	mov.w @(loc_8c0455da,PC),r3
	extu.b r1,r1
	mulu.w r2,r1
	sts macl,r1
	add r1,r6
	mov.w @(loc_8c0455d6,PC),r1
	mov.l r6,@(r0,r5)
	mov.b @(0x5,r6),r0
	add r5,r1
	mov.b r0,@r1
	mov.w @(loc_8c0455d8,PC),r0
	mov.b @(r0,r4),r6
	add 0x14,r0
	extu.b r6,r6
	mulu.w r3,r6
	sts macl,r6
	add r7,r6
	mov.l r6,@(r0,r5)
	add 0xE9,r0
	mov.b @(r0,r4),r2
	add 0x01,r0
	mov.b r2,@(r0,r5)
	add 0xFB,r0
	mov.b @(r0,r5),r0
	tst 0x01,r0
	bt loc_8c0455c4
	mov.w @(loc_8c0455d8,PC),r0
	mov.b @(r0,r5),r6
	add 0x10,r0
	extu.b r6,r6
	mulu.w r3,r6
	sts macl,r6
	add r7,r6
	mov.l r4,@(r0,r6)
	add 0xEB,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r6)

loc_8c0455c4:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0455c8:
	#data 0x01c0
loc_8c0455ca:
	#data 0x0080
loc_8c0455cc:
	#data 0x1fff
loc_8c0455ce:
	#data 0x6000
loc_8c0455d0:
	#data 0x019f
loc_8c0455d2:
	#data 0x019c
loc_8c0455d4:
	#data 0x0174
loc_8c0455d6:
	#data 0x01a0
loc_8c0455d8:
	#data 0x01a4
loc_8c0455da:
	#data 0x05a4
loc_8c0455dc:
	#data 0x019d
	#align4
loc_8c0455e0:
	#data 0x8c28c590
loc_8c0455e4:
	#data 0x8c28c594
loc_8c0455e8:
	#data 0x8c28c598
loc_8c0455ec:
	#data 0x8c28c59c
loc_8c0455f0:
	#data 0x8c268340

;==============================================
loc_8c0455f4:
	mov.w @(loc_8c045730,PC),r0
	extu.w r6,r6
	shll2 r6
	mov.l @(r0,r4),r3
	shll r6
	mova @(0x138,PC),r0
	add r3,r6
	fmov @r0,fr5
	mov.w @r6,r3
	mov 0x50,r0
	fmov @(r0,r4),fr2
	extu.w r7,r7
	lds r3,fpul
	shll2 r7
	mov.w @(loc_8c045730,PC),r0
	shll r7
	float fpul,fr3
	mov.l @(r0,r5),r3
	mov 0x50,r0
	add r3,r7
	mov.w @r7,r3
	fmul fr2,fr3
	lds r3,fpul
	fmov @(r0,r5),fr2
	mov.w @(loc_8c045732,PC),r0
	fmov fr3,fr4
	float fpul,fr3
	fmul fr5,fr4
	mov.w @(r0,r4),r3
	tst r3,r3
	fmul fr2,fr3
	fmov fr3,fr6
	bt.s loc_8c04563a
	fmul fr5,fr6
	fneg fr4

loc_8c04563a:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c045732,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c04564a
	fadd fr3,fr4
	fneg fr6

loc_8c04564a:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fadd fr3,fr6
	fldi0 fr3
	fsub fr6,fr4
	fcmp/gt fr4,fr3
	bf.s loc_8c04565c
	mov.w @(0x2,r7),r0
	fneg fr4

loc_8c04565c:
	mov r0,r3
	lds r3,fpul
	mov 0x50,r0
	fmov @(r0,r5),fr2
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr6
	fmul fr5,fr6
	fldi0 fr3
	fcmp/eq fr3,fr6
	bt loc_8c045704
	mov.w @(0x2,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x50,r0
	fmov @(r0,r4),fr0
	float fpul,fr3
	fmul fr0,fr3
	fmov fr5,fr0
	fmac fr0,fr3,fr6
	fcmp/gt fr4,fr6
	bf loc_8c045704
	mova @(loc_8c04573c,PC),r0
	fmov @r0,fr6
	mov.w @(0x4,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r4),fr2
	mov 0x38,r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr4
	fmul fr6,fr4
	fmov @(r0,r4),fr3
	mov.w @(0x4,r7),r0
	mov r0,r3
	lds r3,fpul
	fneg fr4
	fadd fr3,fr4
	mov 0x54,r0
	float fpul,fr3
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fmul fr2,fr3
	fmov fr3,fr5
	fmul fr6,fr5
	fmov @(r0,r5),fr3
	fneg fr5
	fadd fr3,fr5
	fldi0 fr3
	fsub fr5,fr4
	fcmp/gt fr4,fr3
	bf.s loc_8c0456cc
	mov.w @(0x6,r7),r0
	fneg fr4

loc_8c0456cc:
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r5),fr2
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr5
	fmul fr6,fr5
	fldi0 fr3
	fcmp/eq fr3,fr5
	bt loc_8c045704
	mov.w @(0x6,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r4),fr0
	float fpul,fr3
	fmul fr0,fr3
	fmov fr6,fr0
	fmac fr0,fr3,fr5
	fcmp/gt fr4,fr5
	bf loc_8c045704
	fsub fr4,fr5
	mov.w @(loc_8c045734,PC),r0
	mov.l @r15,r2
	mov 0x01,r3
	fmov fr5,@r2
	mov.b r3,@(r0,r5)

loc_8c045704:
	rts
	nop

;==============================================
loc_8c045708:
	mov.l @(loc_8c045740,PC),r5
	mov 0x00,r0
	mov.b r0,@(0x1,r5)
	mov.b r0,@r5
	mov.l @(loc_8c045744,PC),r5
	mov.b r0,@(0x1,r5)
	rts
	mov.b r0,@r5

;==============================================
loc_8c045718:
	mov.l @(loc_8c045740,PC),r4
	mov.l @(loc_8c045744,PC),r6
	mov r4,r5
	mov.b @r4,r3
	add 0x01,r5
	mov.b r3,@r6
	mov 0x00,r3
	mov.b @r5,r0
	mov.b r0,@(0x1,r6)
	mov.b r3,@r5
	rts
	mov.b r3,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c045730:
	#data 0x0170
loc_8c045732:
	#data 0x0130
loc_8c045734:
	#data 0x019f
	#align4
	#data 0x3fd55555
loc_8c04573c:
	#data 0x40092492
loc_8c045740:
	#data 0x8c287ddc
loc_8c045744:
	#data 0x8c287dde

;==============================================
loc_8c045748:
	mov.l @(loc_8c04583c,PC),r1
	mov.l @r1,r2
	mov.b @(0x6,r2),r0
	tst r0,r0
	bf loc_8c04578c
	mov.w @(loc_8c045830,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c045840,PC),r5
	mov 0x5E,r2
	mov.b r3,@(r0,r4)
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	mov.b @(r0,r5),r3
	cmp/ge r2,r3
	bt loc_8c04578c
	mov 0x02,r3
	add r4,r3
	mov.b @r3,r6
	mov.w @(loc_8c045832,PC),r3
	extu.b r6,r6
	mul.l r3,r6
	sts macl,r3
	mov r6,r0
	nop
	mov.b @(r0,r5),r1
	add 0x01,r1
	mov.b r1,@(r0,r5)
	add 0xFF,r1
	mov.l @(loc_8c045844,PC),r0
	exts.b r1,r1
	shll2 r1
	add r0,r3
	add r3,r1
	mov.l r4,@r1

loc_8c04578c:
	rts
	nop

;==============================================
loc_8c045790:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c045848,PC),r4
	sts.l pr,@-r15
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c0457d8
	mov.w @(loc_8c045834,PC),r0
	mov.l @(r0,r14),r6
	mov.w @(0x2,r6),r0
	mov r0,r6
	exts.w r6,r3
	cmp/pz r3
	bt loc_8c0457d8
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0457d8
	mov.w @(loc_8c045838,PC),r0
	mov.w @(loc_8c045836,PC),r3
	mov.b @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c0457d8
	and r3,r6
	mov.w @(loc_8c04583a,PC),r0
	mov.l @(r0,r14),r5
	bsr loc_8c04584c
	mov r14,r4
	tst r0,r0
	bt loc_8c0457d8
	mov.w @(loc_8c04583a,PC),r0
	lds.l @r15+,pr
	mov.l @(r0,r14),r0
	rts
	mov.l @r15+,r14

loc_8c0457d8:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0457e0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c045848,PC),r4
	sts.l pr,@-r15
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c045828
	mov.w @(loc_8c045834,PC),r0
	mov.l @(r0,r14),r6
	mov.w @(0x2,r6),r0
	mov r0,r6
	exts.w r6,r3
	cmp/pz r3
	bt loc_8c045828
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c045828
	mov.w @(loc_8c045838,PC),r0
	mov.w @(loc_8c045836,PC),r3
	mov.b @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c045828
	and r3,r6
	mov.w @(loc_8c04583a,PC),r0
	mov.l @(r0,r14),r5
	bsr loc_8c0458a8
	mov r14,r4
	tst r0,r0
	bt loc_8c045828
	mov.w @(loc_8c04583a,PC),r0
	lds.l @r15+,pr
	mov.l @(r0,r14),r0
	rts
	mov.l @r15+,r14

loc_8c045828:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c045830:
	#data 0x019f
loc_8c045832:
	#data 0x0178
loc_8c045834:
	#data 0x01c0
loc_8c045836:
	#data 0x1fff
loc_8c045838:
	#data 0x0237
loc_8c04583a:
	#data 0x020c
	#align4
loc_8c04583c:
	#data 0x8c2896b0
loc_8c045840:
	#data 0x8c287ddc
loc_8c045844:
	#data 0x8c287aec
loc_8c045848:
	#data 0x8c2895f0

;==============================================
loc_8c04584c:
	mov.w @(loc_8c04589e,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c045892
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c045892
	mov.w @(loc_8c04589e,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c045876
	mov.w @(loc_8c04589e,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c045896
	bra loc_8c045892
	nop

loc_8c045876:
	mov.w @(loc_8c04589e,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c045892
	mova @(loc_8c0458a4,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c0458a0,PC),r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fmov @(r0,r5),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c045896

loc_8c045892:
	rts
	mov 0x00,r0

loc_8c045896:
	bra loc_8c0458a8
	nop

;----------------------------------------------
loc_8c04589a:
	rts
	nop

;##############################################
loc_8c04589e:
	#data 0x01f9
loc_8c0458a0:
	#data 0x041c
	#align4
loc_8c0458a4:
	#data 0x42009249

;----------------------------------------------
loc_8c0458a8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r14
	mov.l r4,@r15
	mov r6,r0
	nop
	mov.w @(loc_8c045974,PC),r4
	mov 0x00,r1
	mov.l @(loc_8c045988,PC),r3
	add r14,r4
	mov.w r0,@(0x4,r15)
	mov.l @r4,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8c045966
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c045966
	mov.w @(loc_8c045976,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c045966
	mov.w @(loc_8c045978,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c045966
	mov.w @(loc_8c04597a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c045966
	mov.w @(loc_8c04597c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c045966
	mov.w @(loc_8c04597e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c045966
	mov.w @(loc_8c045980,PC),r0
	mov 0x02,r2
	mov.b @(r0,r14),r3
	cmp/ge r2,r3
	bt loc_8c045966
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c045966
	mov.w @(loc_8c045982,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x12,r0
	bt loc_8c045966
	mov.w @(loc_8c045982,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8c045966
	mov.w @(loc_8c045984,PC),r0
	mov.l @(r0,r14),r2
	mov.w @(0xC,r2),r0
	tst r0,r0
	bt loc_8c04593c
	mov.w @(loc_8c045984,PC),r0
	mov r14,r5
	mov.l @(r0,r14),r7
	mov.w @(0xC,r7),r0
	mov r0,r7
	mov.w @(0x4,r15),r0
	mov r0,r6
	bsr loc_8c045970
	mov.l @r15,r4
	tst r0,r0
	bf loc_8c04595c

loc_8c04593c:
	mov.w @(loc_8c045984,PC),r0
	mov.l @(r0,r14),r2
	mov.w @(0xE,r2),r0
	cmp/pl r0
	bf loc_8c045966
	mov.w @(loc_8c045984,PC),r0
	mov r14,r5
	mov.l @(r0,r14),r7
	mov.w @(0xE,r7),r0
	mov r0,r7
	mov.w @(0x4,r15),r0
	mov r0,r6
	bsr loc_8c045970
	mov.l @r15,r4
	tst r0,r0
	bt loc_8c045966

loc_8c04595c:
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c045966:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c045970:
	bra loc_8c04598c
	nop

;##############################################
loc_8c045974:
	#data 0x0414
loc_8c045976:
	#data 0x0420
loc_8c045978:
	#data 0x01eb
loc_8c04597a:
	#data 0x019d
loc_8c04597c:
	#data 0x0254
loc_8c04597e:
	#data 0x0411
loc_8c045980:
	#data 0x023a
loc_8c045982:
	#data 0x01d0
loc_8c045984:
	#data 0x01c0
	#align4
loc_8c045988:
	#data 0x07000000

;----------------------------------------------
loc_8c04598c:
	mov.l r14,@-r15
	add 0xF8,r15
	mov.w @(loc_8c045ada,PC),r0
	exts.w r6,r6
	shll2 r6
	mov r15,r14
	mov.l @(r0,r4),r3
	shll r6
	exts.w r7,r7
	add r3,r6
	mov.l @(r0,r5),r3
	shll2 r7
	shll r7
	add r3,r7
	mov.w @r6,r3
	mova @(0x134,PC),r0
	lds r3,fpul
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	mov.w @(loc_8c045adc,PC),r0
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r14
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0459cc
	mov 0x34,r0
	fmov @r14,fr3
	fneg fr3
	fmov fr3,@r14

loc_8c0459cc:
	fmov @r14,fr2
	mov r15,r1
	fmov @(r0,r4),fr3
	mov 0x50,r0
	add 0x04,r1
	fadd fr3,fr2
	fmov fr2,@r14
	mov.w @r7,r3
	fmov @(r0,r5),fr2
	lds r3,fpul
	mov.w @(loc_8c045adc,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r1
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0459f8
	mov 0x34,r0
	fmov @r1,fr3
	fneg fr3
	fmov fr3,@r1

loc_8c0459f8:
	fmov @r1,fr2
	fmov @(r0,r5),fr3
	fadd fr3,fr2
	fmov fr2,fr3
	fmov fr2,@r1
	fmov @r14,fr2
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c045a14
	fmov fr2,@r14
	fmov @r14,fr2
	fneg fr2
	fmov fr2,@r14

loc_8c045a14:
	mov.w @(0x2,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x50,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr2,fr3
	fldi0 fr2
	fmul fr4,fr3
	fcmp/eq fr2,fr3
	bt.s loc_8c045aca
	fmov fr3,@r1
	mov.w @(0x2,r7),r0
	fmov @r1,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x50,r0
	fmov @(r0,r5),fr0
	float fpul,fr3
	fmul fr0,fr3
	fmov fr4,fr0
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmov fr2,@r1
	fmov @r14,fr2
	fcmp/gt fr3,fr2
	bt loc_8c045aca
	mova @(0x98,PC),r0
	fmov @r0,fr4
	mov.w @(0x4,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r4),fr2
	mov 0x38,r0
	float fpul,fr3
	fmul fr2,fr3
	fmov @(r0,r4),fr2
	fmul fr4,fr3
	fneg fr3
	fadd fr2,fr3
	fmov fr3,@r14
	mov.w @(0x4,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	float fpul,fr3
	fmul fr2,fr3
	fmov @(r0,r5),fr2
	fmul fr4,fr3
	fneg fr3
	fadd fr2,fr3
	fmov fr3,@r1
	fmov @r14,fr2
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c045a94
	fmov fr2,@r14
	fmov @r14,fr2
	fneg fr2
	fmov fr2,@r14

loc_8c045a94:
	mov.w @(0x6,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr2,fr3
	fldi0 fr2
	fmul fr4,fr3
	fcmp/eq fr2,fr3
	bt.s loc_8c045aca
	fmov fr3,@r1
	mov.w @(0x6,r7),r0
	fmov @r1,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r5),fr0
	float fpul,fr3
	fmul fr0,fr3
	fmov fr4,fr0
	fmac fr0,fr3,fr2
	fmov fr2,fr3
	fmov fr2,@r1
	fmov @r14,fr2
	fcmp/gt fr3,fr2
	bf loc_8c045ad2

loc_8c045aca:
	mov 0x00,r0
	add 0x08,r15
	rts
	mov.l @r15+,r14

loc_8c045ad2:
	mov 0x01,r0
	add 0x08,r15
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c045ada:
	#data 0x0170
loc_8c045adc:
	#data 0x0130
	#align4
	#data 0x3fd55555
	#data 0x40092492

;==============================================
loc_8c045ae8:
	mov.l r14,@-r15
	mov 0x04,r1
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c045bfc,PC),r2
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c045b6c
	mov.l @(loc_8c045c00,PC),r12
	mov 0x20,r13
	mov.w @(loc_8c045bf2,PC),r10
	mov.w @(loc_8c045bf0,PC),r11
	mov r12,r4
	mov.l @(loc_8c045c04,PC),r9
	add r4,r10
	mov r12,r14

loc_8c045b12:
	mov r14,r4
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c045b66
	mov.w @(loc_8c045bf4,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c045b66
	mov.w @(loc_8c045bf6,PC),r0
	mov.l @(r0,r4),r5
	add 0xE8,r0
	mov.b @(r0,r5),r3
	tst r13,r3
	bt loc_8c045b3a
	mov.w @(loc_8c045bf4,PC),r0
	mov 0x40,r3
	mov.b @(r0,r4),r2
	or r3,r2
	bra loc_8c045b66
	mov.b r2,@(r0,r4)

loc_8c045b3a:
	mov.w @(loc_8c045bf8,PC),r0
	mov.b @(r0,r5),r3
	add 0x01,r0
	mov.b r3,@(r0,r4)
	add 0x02,r0
	mov.b @(r0,r5),r6
	add 0x14,r0
	mov.w @(loc_8c045bf0,PC),r3
	extu.b r6,r6
	mulu.w r3,r6
	sts macl,r6
	add r12,r6
	mov.l r6,@(r0,r4)
	add 0x1A,r0
	mov.b @(r0,r6),r2
	add 0xD4,r0
	mov.b r2,@(r0,r4)
	add 0x2C,r0
	mov.b @(r0,r4),r1
	add 0xD3,r0
	jsr @r9
	mov.b r1,@(r0,r4)

loc_8c045b66:
	add r11,r14
	cmp/hs r10,r14
	bf loc_8c045b12

loc_8c045b6c:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c045b7c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x00,r12
	mov r12,r11

loc_8c045b92:
	mov 0x01,r3
	mov r11,r8
	xor r11,r3
	mov r12,r13
	mov r3,r2
	shll r3
	add r2,r3
	mov r11,r2
	shll r8
	add r2,r8
	shll2 r3
	shll2 r8
	mov.l r3,@r15

loc_8c045bac:
	mov r13,r9
	shll2 r9
	mov r12,r14

loc_8c045bb2:
	mov.l @r15,r0
	mov.l @(loc_8c045c08,PC),r10
	add r10,r0
	mov.l @(r0,r14),r5
	mov r10,r0
	nop
	add r8,r0
	bsr loc_8c045c0c
	mov.l @(r0,r9),r4
	mov 0x0C,r2
	add 0x04,r14
	cmp/hs r2,r14
	bf loc_8c045bb2
	mov 0x03,r2
	add 0x01,r13
	cmp/ge r2,r13
	bf loc_8c045bac
	mov 0x02,r2
	add 0x01,r11
	cmp/ge r2,r11
	bf loc_8c045b92
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
loc_8c045bf0:
	#data 0x05a4
loc_8c045bf2:
	#data 0x21d8
loc_8c045bf4:
	#data 0x019f
loc_8c045bf6:
	#data 0x01b4
loc_8c045bf8:
	#data 0x01a1
	#align4
loc_8c045bfc:
	#data 0x8c2895f0
loc_8c045c00:
	#data 0x8c268340
loc_8c045c04:
	#data bank05.loc_8c055edc
loc_8c045c08:
	#data 0x8c289608

;==============================================
loc_8c045c0c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @r14,r3
	tst r3,r3
	bt.s loc_8c045cc4
	mov r5,r13
	mov.w @(loc_8c045cce,PC),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c045cc4
	mov.w @(loc_8c045cd0,PC),r0
	mov.l @(r0,r14),r0
	mov.w @(0x2,r0),r0
	cmp/pl r0
	bt.s loc_8c045cc4
	mov.w r0,@(0x4,r15)
	mov.b @r13,r2
	tst r2,r2
	bt loc_8c045cc4
	mov.w @(0x4,r15),r0
	mov 0x00,r4
	mov.w @(loc_8c045cd2,PC),r3
	and r3,r0
	mov.w r0,@(0x4,r15)
	mov.w @(loc_8c045cd0,PC),r0
	mov.l @(r0,r13),r2
	mov.w @r2,r1
	cmp/pl r1
	bf.s loc_8c045c64
	mov.w r1,@r15
	mov.w @(0x4,r15),r0
	mov r13,r5
	mov.w @r15,r7
	mov r0,r6
	bsr loc_8c04598c
	mov r14,r4
	mov r0,r4
	mov.w @(loc_8c045cd4,PC),r0
	mov.w @r15,r3
	mov.w r3,@(r0,r13)

loc_8c045c64:
	tst r4,r4
	bf loc_8c045c88
	mov.w @(loc_8c045cd0,PC),r0
	mov.l @(r0,r13),r1
	mov.w @(0x2,r1),r0
	cmp/pl r0
	bf.s loc_8c045c88
	mov.w r0,@r15
	mov.w @(0x4,r15),r0
	mov r13,r5
	mov.w @r15,r7
	mov r0,r6
	bsr loc_8c04598c
	mov r14,r4
	mov r0,r4
	mov.w @(loc_8c045cd4,PC),r0
	mov.w @r15,r2
	mov.w r2,@(r0,r13)

loc_8c045c88:
	tst r4,r4
	bt loc_8c045cc4
	mov.w @(loc_8c045cd6,PC),r0
	mov 0x0B,r3
	mov 0x0A,r1
	mov r14,r4
	mov.b r1,@(r0,r14)
	mov 0x00,r2
	mov.b r3,@(r0,r13)
	add 0xFD,r0
	mov.b r2,@(r0,r14)
	add 0x50,r0
	mov 0x08,r3
	mov.w @(loc_8c045cd8,PC),r1
	mov.b r3,@(r0,r14)
	add 0xC1,r0
	mov.w @(r0,r14),r2
	mov 0x7F,r3
	add r14,r1
	mov r13,r5
	and r3,r2
	mov.w r2,@(r0,r14)
	mov.w @(0x4,r15),r0
	mov.w r0,@r1
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c045cdc,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c045cc4:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c045cce:
	#data 0x01ae
loc_8c045cd0:
	#data 0x01c0
loc_8c045cd2:
	#data 0x1fff
loc_8c045cd4:
	#data 0x01a8
loc_8c045cd6:
	#data 0x01a0
loc_8c045cd8:
	#data 0x01aa
	#align4
loc_8c045cdc:
	#data bank05.loc_8c05791e

;==============================================
loc_8c045ce0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c045dbc,PC),r14
	mov.l @(loc_8c045db8,PC),r13
	bsr loc_8c045de0
	mov 0x01,r12
	mov.l @(loc_8c045dc0,PC),r2
	jsr @r2
	mov.b r0,@(0x6,r13)
	mov.b @(0x6,r13),r0
	tst r0,r0
	bf loc_8c045d22
	mov.l @(loc_8c045dc4,PC),r3
	jsr @r3
	fldi1 fr4
	mov 0x3C,r0
	mov r12,r1
	mov.w @(r0,r13),r2
	mov 0x3B,r0
	mov.b @(r0,r13),r3
	extu.w r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bf loc_8c045d62
	jsr @r14
	mov 0x03,r4
	jsr @r14
	mov 0x04,r4
	bra loc_8c045d40
	mov 0x01,r4

loc_8c045d22:
	mov.l @(loc_8c045dc4,PC),r3
	mova @(loc_8c045dc8,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov 0x3C,r0
	mov r12,r1
	mov.w @(r0,r13),r2
	mov 0x3B,r0
	mov.b @(r0,r13),r3
	extu.w r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bf loc_8c045d62
	mov 0x04,r4

loc_8c045d40:
	jsr @r14
	nop
	jsr @r14
	mov 0x02,r4
	mov 0x3C,r0
	mov r12,r1
	mov.w @(r0,r13),r2
	mov 0x3B,r0
	mov.b @(r0,r13),r3
	extu.w r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bf loc_8c045d62
	mov.l @(loc_8c045dcc,PC),r1
	jsr @r1
	nop

loc_8c045d62:
	mov.b @(0x6,r13),r0
	tst r0,r0
	bf loc_8c045d8a
	jsr @r14
	mov 0x05,r4
	jsr @r14
	mov 0x06,r4
	jsr @r14
	mov 0x0A,r4
	jsr @r14
	mov 0x07,r4
	jsr @r14
	mov 0x08,r4
	jsr @r14
	mov 0x09,r4
	mov.l @(loc_8c045dd0,PC),r3
	jsr @r3
	nop
	bra loc_8c045d96
	nop

loc_8c045d8a:
	jsr @r14
	mov 0x06,r4
	jsr @r14
	mov 0x08,r4
	jsr @r14
	mov 0x09,r4

loc_8c045d96:
	mov.l @(loc_8c045dd4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c045dd8,PC),r2
	jsr @r2
	nop
	jsr @r14
	mov 0x0B,r4
	jsr @r14
	mov 0x0C,r4
	lds.l @r15+,pr
	mov.l @(loc_8c045ddc,PC),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c045db8:
	#data 0x8c2895f0
loc_8c045dbc:
	#data loc_8c044ef0
loc_8c045dc0:
	#data loc_8c043cdc
loc_8c045dc4:
	#data bank03.loc_8c030f44
loc_8c045dc8:
	#data 0x3f000000
loc_8c045dcc:
	#data bank02.loc_8c02e7bc
loc_8c045dd0:
	#data bank10.loc_8c108426
loc_8c045dd4:
	#data loc_8c043dfc
loc_8c045dd8:
	#data bank03.loc_8c03015c
loc_8c045ddc:
	#data bank03.loc_8c030e3a

;==============================================
loc_8c045de0:
	mov.l r14,@-r15
	mov.l @(loc_8c045e68,PC),r4
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(loc_8c045e64,PC),r0
	mov.l r11,@-r15
	mov 0x01,r11
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r4,r13
	mov.l @(0xC,r4),r14
	mov.b @(r0,r13),r10
	mov.b @(r0,r14),r3
	mov.b @(0x2,r13),r0
	or r3,r10
	mov r11,r3
	extu.b r0,r0
	shad r0,r3
	extu.b r10,r12
	tst r12,r3
	bt loc_8c045e10
	mov.l @(loc_8c045e6c,PC),r3
	jsr @r3
	mov r13,r4

loc_8c045e10:
	mov.b @(0x2,r14),r0
	mov r11,r3
	extu.b r0,r0
	shad r0,r3
	tst r12,r3
	bt loc_8c045e22
	mov.l @(loc_8c045e6c,PC),r3
	jsr @r3
	mov r14,r4

loc_8c045e22:
	mov.w @(loc_8c045e64,PC),r0
	mov.b @(r0,r13),r4
	mov.b @(r0,r14),r3
	or r3,r4
	extu.b r4,r4
	cmp/eq r4,r12
	bt loc_8c045e52
	mov.b @(0x2,r13),r0
	mov r11,r3
	extu.b r0,r0
	shad r0,r3
	tst r12,r3
	bt loc_8c045e42
	mov.l @(loc_8c045e70,PC),r3
	jsr @r3
	mov r13,r4

loc_8c045e42:
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	shad r0,r11
	tst r11,r12
	bt loc_8c045e52
	mov.l @(loc_8c045e70,PC),r2
	jsr @r2
	mov r14,r4

loc_8c045e52:
	mov r10,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c045e64:
	#data 0x0248
	#align4
loc_8c045e68:
	#data 0x8c289608
loc_8c045e6c:
	#data bank05.loc_8c05107c
loc_8c045e70:
	#data bank05.loc_8c050fe0

;==============================================
loc_8c045e74:
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c045fc0,PC),r3
	mov.l @(loc_8c045fbc,PC),r4
	mov.w @(loc_8c045fa8,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(loc_8c045fc8,PC),r4
	mov.l @(loc_8c045fc4,PC),r3
	mov.l @(loc_8c045fbc,PC),r2
	mov r4,r5
	mov.w @(loc_8c045faa,PC),r0
	mov.l r2,@r3
	mov.b @(r0,r5),r2
	mov.w @(loc_8c045fac,PC),r0
	mov.w @(loc_8c045fae,PC),r12
	mov.b r2,@(r0,r5)
	mov.w @(loc_8c045faa,PC),r0
	add r4,r12
	mov.w @(loc_8c045fb0,PC),r3
	mov.b @(r0,r12),r2
	mov.w @(loc_8c045fac,PC),r0
	add r4,r3
	mov.w @(loc_8c045fb2,PC),r6
	mov.b r2,@(r0,r12)
	mov.w @(loc_8c045faa,PC),r0
	add r4,r6
	mov.w @(loc_8c045fb4,PC),r7
	mov.b @(r0,r3),r2
	mov.w @(loc_8c045fac,PC),r0
	add r4,r7
	mov.b r2,@(r0,r3)
	mov.w @(loc_8c045faa,PC),r0
	mov.b @(r0,r6),r2
	mov.w @(loc_8c045fac,PC),r0
	mov.b r2,@(r0,r6)
	mov.w @(loc_8c045faa,PC),r0
	mov.b @(r0,r7),r2
	mov.w @(loc_8c045fac,PC),r0
	mov.w @(loc_8c045fb6,PC),r1
	mov.b r2,@(r0,r7)
	mov.w @(loc_8c045faa,PC),r0
	add r4,r1
	mov.l @(loc_8c045fbc,PC),r4
	mov.b @(r0,r1),r2
	mov.w @(loc_8c045fac,PC),r0
	mov.b r2,@(r0,r1)
	mov 0x06,r2
	mov 0x30,r0
	mov.l r5,@(0x18,r4)
	mov.l r12,@(0x1C,r4)
	mov.l r3,@(0x20,r4)
	mov.l r6,@(0x24,r4)
	mov.l r7,@(0x28,r4)
	mov.l r1,@(0x2C,r4)
	mov 0x01,r1
	mov.b r2,@(r0,r4)
	mov 0x31,r0
	mov.b r1,@(r0,r4)
	mov 0x32,r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r12

;==============================================
;Normal Speed Write?
loc_8c045ef6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c045fc0,PC),r3
	mov.l @(loc_8c045fbc,PC),r4
	mov.w @(loc_8c045fb8,PC),r6
	jsr @r3
	mov 0x00,r5

	mov.l @(loc_8c045fbc,PC),r14
	mov 0x30,r0
	mov 0x06,r13
	mov.l @(loc_8c045fcc,PC),r1
	mov.b r13,@(r0,r14)

	mov 0x31,r0
	mov 0x01,r12
	mov.b r12,@(r0,r14)
	mov 0x32,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.b @r1,r2
	bsr loc_8c046baa
	mov.b r2,@(r0,r14)
	mov.l @(loc_8c045fc8,PC),r4
	mov.w @(loc_8c045faa,PC),r0
	mov r4,r5
	mov.w @(loc_8c045fb2,PC),r6
	mov.b @(r0,r5),r2
	mov.w @(loc_8c045fac,PC),r0
	mov.b r2,@(r0,r5)
	mov.w @(loc_8c045fae,PC),r5
	mov.w @(loc_8c045faa,PC),r0
	add r4,r5
	mov.b @(r0,r5),r3
	mov.w @(loc_8c045fac,PC),r0
	mov.b r3,@(r0,r5)
	mov.w @(loc_8c045fb0,PC),r5
	mov.w @(loc_8c045faa,PC),r0
	add r4,r5
	mov.b @(r0,r5),r3
	mov.w @(loc_8c045fac,PC),r0
	mov.b r3,@(r0,r5)
	mov r4,r5
	mov.w @(loc_8c045faa,PC),r0
	add r6,r5
	mov.b @(r0,r5),r3
	mov.w @(loc_8c045fac,PC),r0
	mov.b r3,@(r0,r5)
	mov.w @(loc_8c045fb4,PC),r5
	mov.w @(loc_8c045faa,PC),r0
	add r4,r5
	mov.b @(r0,r5),r3
	mov.w @(loc_8c045fac,PC),r0
	mov.b r3,@(r0,r5)
	mov.w @(loc_8c045fb6,PC),r5
	mov.w @(loc_8c045faa,PC),r0
	add r4,r5
	mov.b @(r0,r5),r3
	mov.w @(loc_8c045fac,PC),r0
	mov.b r3,@(r0,r5)
	mov 0x00,r5

loc_8c045f72:
	mov r5,r0
	nop
	mul.l r6,r5
	and r12,r0
	mov r14,r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.w @(loc_8c045fac,PC),r3
	sts macl,r7
	add 0x01,r5
	add 0x18,r2
	cmp/ge r13,r5
	add r4,r7
	add r7,r3
	mov.b @r3,r3
	shll2 r0
	add r2,r0
	extu.b r3,r3
	shll2 r3
	bf.s loc_8c045f72
	mov.l r7,@(r0,r3)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/\/\/\/\/\/\/\/\
loc_8c045fa8:
	#data 0x00c0
loc_8c045faa:
	#data 0x053f
loc_8c045fac:
	#data 0x0411
loc_8c045fae:
	#data 0x0b48
loc_8c045fb0:
	#data 0x1690
loc_8c045fb2:
	#data 0x05a4
loc_8c045fb4:
	#data 0x10ec
loc_8c045fb6:
	#data 0x1c34
loc_8c045fb8:
	#data 0x0094
	#align4
loc_8c045fbc:
	#data 0x8c2895f0
loc_8c045fc0:
	#data bank12.loc_8c129728
loc_8c045fc4:
	#data 0x8c2896b0
loc_8c045fc8:
	#data 0x8c268340
loc_8c045fcc:
	#data 0x8c26a95c

;==============================================================
loc_8c045fd0:
	mov.l @(loc_8c0460d4,PC),r2
	mov.l @(loc_8c0460d0,PC),r0
	sts.l pr,@-r15
	mov.b @r2,r3
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r3
	jsr @r3
	mov r2,r4
	bsr loc_8c046ddc
	nop
	mov.l @(loc_8c0460d8,PC),r2
	mov.w @(loc_8c0460c6,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c045ff8
	mov.l @(loc_8c0460dc,PC),r1
	jmp @r1
	lds.l @r15+,pr

loc_8c045ff8:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c045ffe:
	mov.l @(loc_8c0460d8,PC),r5
	mov 0x19,r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r13
	mov 0x00,r4
	sts.l pr,@-r15
	mov.l @r5,r3
	mov.b r13,@(r0,r3)
	add 0x7F,r0
	mov.l @r5,r3
	mov.b r4,@(r0,r3)
	mov 0x0A,r0
	mov.b r0,@(0x1,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.l r0,@(0x8,r14)
	mov.b r0,@(0x7,r14)
	mov.l r0,@(0xC,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x12,r14)
	mov 0x45,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c046046
	mov.l @(loc_8c0460e0,PC),r3
	mov 0x0B,r6
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	bra loc_8c046082
	nop

loc_8c046046:
	mov 0x48,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c04607e
	mov.l @(loc_8c0460d8,PC),r3
	mov.w @(loc_8c0460c8,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c04607e
	mov.l @r5,r1
	mov 0x19,r0
	mov.b r4,@(r0,r1)
	mov 0x45,r0
	mov.b @(r0,r14),r0
	mov.l @(loc_8c0460e4,PC),r4
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c046076
	mov.w @(loc_8c0460ca,PC),r0
	mov.w r0,@(0x12,r14)
	bra loc_8c04607e
	mov.l r13,@(0x4,r4)

loc_8c046076:
	mov.w @(loc_8c0460cc,PC),r0
	mov 0x02,r3
	mov.w r0,@(0x12,r14)
	mov.l r3,@(0x4,r4)

loc_8c04607e:
	bsr loc_8c046d7e
	nop

loc_8c046082:
	mov.b r13,@r14
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04608c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x12,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x12,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0460c0
	bsr loc_8c046a2a
	mov r14,r4
	mov 0x45,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0460ae
	bra loc_8c0460b0
	mov 0x78,r0

loc_8c0460ae:
	mov 0x01,r0

loc_8c0460b0:
	mov.l @(loc_8c0460d8,PC),r2
	mov 0x00,r1
	mov.w r0,@(0x12,r14)
	mov 0x19,r0
	mov.l @r2,r3
	mov.b r1,@(r0,r3)
	mov 0x02,r3
	mov.b r3,@r14

loc_8c0460c0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0460c6:
	#data 0x00a6
loc_8c0460c8:
	#data 0x00ab
loc_8c0460ca:
	#data 0x01a4
loc_8c0460cc:
	#data 0x012c
	#align4
loc_8c0460d0:
	#data bank14.loc_8c14dffc
loc_8c0460d4:
	#data 0x8c2895f0
loc_8c0460d8:
	#data work.GameGlobalPointer
loc_8c0460dc:
	#data loc_8c047218
loc_8c0460e0:
	#data bank02.loc_8c02fec4
loc_8c0460e4:
	#data 0x8c26a8c4

;==============================================
loc_8c0460e8:
	mov r4,r5
	add 0x18,r5
	mov.w @(loc_8c0461c6,PC),r0
	mov 0x01,r1
	mov.l @(0xC,r5),r2
	mov.l @r5,r3
	mov.b r1,@(r0,r2)
	mov.b r1,@(r0,r3)
	mov.w @(0x12,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x12,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c046118
	mov 0x03,r3
	mov 0x5A,r0
	mov.w @(loc_8c0461c8,PC),r0
	mov.w r0,@(0x12,r4)
	mov 0x04,r0
	mov.b r3,@r4
	mov.l @(loc_8c0461d4,PC),r3
	mov.b r0,@(0x1,r4)
	jmp @r3
	mov 0x00,r4

loc_8c046118:
	rts
	nop

;==============================================
loc_8c04611c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x12,r14),r0
	cmp/eq 0x3C,r0
	bf loc_8c04612e
	mov.l @(loc_8c0461d4,PC),r2
	jsr @r2
	mov 0x01,r4

loc_8c04612e:
	mov.w @(0x12,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x12,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0461c0
	mov.l @(loc_8c0461d8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0461e0,PC),r5
	mov 0x04,r2
	mov.w @(loc_8c0461ca,PC),r0
	mov r5,r4
	mov.l @(loc_8c0461dc,PC),r6
	mov.w @(r0,r4),r3
	mov.w @(loc_8c0461cc,PC),r0
	and r6,r3
	mov.w r3,@(r0,r4)
	add 0xFE,r0
	mov.w r3,@(r0,r4)
	mov.w @(loc_8c0461ce,PC),r4
	mov.w @(loc_8c0461ca,PC),r0
	add r5,r4
	mov.w @(r0,r4),r3
	mov.w @(loc_8c0461cc,PC),r0
	and r3,r6
	mov.w r6,@(r0,r4)
	add 0xFE,r0
	mov.w r6,@(r0,r4)
	mov 0x09,r0
	mov.b r0,@(0x1,r14)
	mov 0x3C,r0
	mov.w r0,@(0x12,r14)
	mov 0x3F,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x45,r0
	mov.b r2,@r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0461c0
	mov 0x48,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c0461c0
	mov.l @(loc_8c0461e4,PC),r3
	mov.w @(loc_8c0461d0,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c0461c0
	mov.l @(loc_8c0461e8,PC),r1
	jsr @r1
	nop
	mov.l @(loc_8c0461ec,PC),r3
	jsr @r3
	mov 0x01,r4
	mov 0x45,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0461b0
	bra loc_8c0461b2
	mov 0x11,r4

loc_8c0461b0:
	mov 0x12,r4

loc_8c0461b2:
	mov.l @(loc_8c0461f0,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c0461f4,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0461c0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0461c6:
	#data 0x01f5
loc_8c0461c8:
	#data 0x00fa
loc_8c0461ca:
	#data 0x04dc
loc_8c0461cc:
	#data 0x0342
loc_8c0461ce:
	#data 0x05a4
loc_8c0461d0:
	#data 0x00ab
	#align4
loc_8c0461d4:
	#data bank0f.loc_8c0f269c
loc_8c0461d8:
	#data bank02.loc_8c02fd26
loc_8c0461dc:
	#data 0x0000bff0
loc_8c0461e0:
	#data 0x8c268340
loc_8c0461e4:
	#data work.GameGlobalPointer
loc_8c0461e8:
	#data loc_8c041ecc
loc_8c0461ec:
	#data loc_8c041aa6
loc_8c0461f0:
	#data loc_8c041dde
loc_8c0461f4:
	#data loc_8c041e44

;==============================================
loc_8c0461f8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x12,r14),r0
	tst r0,r0
	bt loc_8c046214
	mov.w @(0x12,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x12,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c046214
	mov 0x01,r0
	mov.b r0,@(0x1,r14)

loc_8c046214:
	bsr loc_8c046236
	mov r14,r4
	tst r0,r0
	bf loc_8c046228
	bsr loc_8c046bc4
	mov r14,r4
	tst r0,r0
	bf loc_8c046230
	bsr loc_8c0462b6
	mov r14,r4

loc_8c046228:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0463d2
	mov.l @r15+,r14

loc_8c046230:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c046236:
	add 0xFC,r15
	mov.l @(loc_8c046308,PC),r2
	mov 0x58,r0
	mov.l @(loc_8c046304,PC),r5
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c04626e
	mov.w @(loc_8c0462f2,PC),r7
	mov.w @(loc_8c0462f4,PC),r3
	add r4,r7
	mov.w @(loc_8c0462f6,PC),r0
	mov.l r7,@r15
	mov.b @r7,r7
	mov.l @r15,r2
	extu.b r7,r7
	mulu.w r3,r7
	sts macl,r7
	add r5,r7
	mov.w @(r0,r7),r7
	mov.b @(0x1,r2),r0
	extu.b r0,r0
	mulu.w r3,r0
	mov.w @(loc_8c0462f6,PC),r0
	sts macl,r6
	add r5,r6
	bra loc_8c04628e
	mov.w @(r0,r6),r6

loc_8c04626e:
	mov.w @(loc_8c0462f8,PC),r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8c0462f6,PC),r0
	mov.w @(r0,r5),r7
	mov.w @(loc_8c0462fa,PC),r0
	add r3,r7
	mov.w @(r0,r5),r1
	mov.w @(loc_8c0462fc,PC),r0
	add r1,r7
	mov.w @(r0,r5),r3
	mov.w @(loc_8c0462fe,PC),r0
	mov.w @(r0,r5),r6
	mov.w @(loc_8c046300,PC),r0
	add r3,r6
	mov.w @(r0,r5),r1
	add r1,r6

loc_8c04628e:
	exts.w r6,r2
	exts.w r7,r3
	add r2,r3
	tst r3,r3
	bf loc_8c04629c
	bra loc_8c0463a0
	add 0x04,r15

loc_8c04629c:
	exts.w r6,r6
	tst r6,r6
	bf loc_8c0462a6
	bra loc_8c04638c
	add 0x04,r15

loc_8c0462a6:
	exts.w r7,r7
	tst r7,r7
	bf loc_8c0462b0
	bra loc_8c046396
	add 0x04,r15

loc_8c0462b0:
	mov 0x00,r0
	rts
	add 0x04,r15

;==============================================
loc_8c0462b6:
	mov.l @(loc_8c046308,PC),r2
	mov 0x01,r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r0,@(0x3,r14)
	mov 0x58,r0
	mov.l @r2,r3
	mov.l @(loc_8c046304,PC),r4
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c04630c
	mov.w @(loc_8c0462f2,PC),r5
	mov.w @(loc_8c0462f4,PC),r3
	add r14,r5
	mov.w @(loc_8c0462f6,PC),r0
	mov.b @r5,r6
	extu.b r6,r6
	mulu.w r3,r6
	sts macl,r6
	add r4,r6
	mov.w @(r0,r6),r6
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	mulu.w r3,r0
	mov.w @(loc_8c0462f6,PC),r0
	sts macl,r7
	add r4,r7
	bra loc_8c04632c
	mov.w @(r0,r7),r7

;##############################################
loc_8c0462f2:
	#data 0x008a
loc_8c0462f4:
	#data 0x05a4
loc_8c0462f6:
	#data 0x0420
loc_8c0462f8:
	#data 0x0f68
loc_8c0462fa:
	#data 0x1ab0
loc_8c0462fc:
	#data 0x150c
loc_8c0462fe:
	#data 0x09c4
loc_8c046300:
	#data 0x2054
	#align4
loc_8c046304:
	#data 0x8c268340
loc_8c046308:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c04630c:
	mov.w @(loc_8c04642c,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8c04642e,PC),r0
	mov.w @(r0,r4),r6
	mov.w @(loc_8c046430,PC),r0
	add r3,r6
	mov.w @(r0,r4),r1
	mov.w @(loc_8c046432,PC),r0
	add r1,r6
	mov.w @(r0,r4),r3
	mov.w @(loc_8c046434,PC),r0
	mov.w @(r0,r4),r7
	mov.w @(loc_8c046436,PC),r0
	add r3,r7
	mov.w @(r0,r4),r1
	add r1,r7

loc_8c04632c:
	exts.w r7,r4
	exts.w r6,r5
	cmp/eq r4,r5
	bf loc_8c04633c
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0463a0
	mov.l @r15+,r14

loc_8c04633c:
	cmp/gt r4,r5
	bf loc_8c046348
	bsr loc_8c04638c
	mov r14,r4
	bra loc_8c04634c
	nop

loc_8c046348:
	bsr loc_8c046396
	mov r14,r4

loc_8c04634c:
	mov 0x3E,r0
	mov r14,r2
	mov.b @(r0,r14),r4
	add 0x18,r2
	add 0x4D,r0
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov.l @(loc_8c04644c,PC),r2
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf.s loc_8c046386
	mov.l @r4,r4
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x19,r0
	bf loc_8c046386
	mov.w @(loc_8c046438,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c046386
	mov 0x3E,r0
	mov.b @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8c046386:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04638c:
	mov 0x3E,r0
	mov 0x00,r1
	mov.b r1,@(r0,r4)
	rts
	mov 0x01,r0

loc_8c046396:
	mov 0x3E,r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	rts
	mov r3,r0

loc_8c0463a0:
	mov 0x3E,r0
	mov 0xFF,r3
	mov.b r3,@(r0,r4)
	rts
	mov 0x01,r0

;==============================================
loc_8c0463aa:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(loc_8c04643a,PC),r4
	mov 0x10,r6
	mov.l @(loc_8c046450,PC),r3
	mov 0x00,r5
	jsr @r3
	add r14,r4
	mov.w @(loc_8c04643c,PC),r0
	mov 0x00,r4
	mov 0x04,r3
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c04643e,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c046440,PC),r0
	mov.b r4,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0463d2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c04644c,PC),r11
	mov r4,r14
	mov 0x02,r9
	mov 0x01,r10
	mov 0x00,r13
	mov r9,r0
	nop
	mov.b r0,@(0x1,r14)
	mov 0x05,r3
	mov.w @(loc_8c046442,PC),r0
	mov.l @(loc_8c046454,PC),r4
	mov.b r3,@r14
	mov.w r0,@(0x14,r14)
	mov r4,r12
	mov.w @(loc_8c046446,PC),r3
	mov.w @(loc_8c046444,PC),r0
	mov.w @(loc_8c046448,PC),r8
	add r3,r4
	mov.w r0,@(0x12,r14)
	bra loc_8c046414
	mov.l r4,@r15

loc_8c04640e:
	bsr loc_8c0463aa
	mov r12,r4
	add r8,r12

loc_8c046414:
	mov.l @r15,r2
	cmp/hs r2,r12
	bf loc_8c04640e
	mov.b @(0x3,r14),r0
	tst r0,r0
	bt.s loc_8c04645c
	mov r13,r12
	mov.l @(loc_8c046458,PC),r3
	jsr @r3
	mov 0x02,r4
	bra loc_8c0465a8
	mov 0x04,r12

;##############################################
loc_8c04642c:
	#data 0x0f68
loc_8c04642e:
	#data 0x0420
loc_8c046430:
	#data 0x1ab0
loc_8c046432:
	#data 0x150c
loc_8c046434:
	#data 0x09c4
loc_8c046436:
	#data 0x2054
loc_8c046438:
	#data 0x0525
loc_8c04643a:
	#data 0x0354
loc_8c04643c:
	#data 0x01f8
loc_8c04643e:
	#data 0x0326
loc_8c046440:
	#data 0x0201
loc_8c046442:
	#data 0x0096
loc_8c046444:
	#data 0x0168
loc_8c046446:
	#data 0x21d8
loc_8c046448:
	#data 0x05a4
	#align4
loc_8c04644c:
	#data work.GameGlobalPointer
loc_8c046450:
	#data bank12.loc_8c129728
loc_8c046454:
	#data 0x8c268340
loc_8c046458:
	#data bank0f.loc_8c0f2ee4

;----------------------------------------------
loc_8c04645c:
	mov.l @(loc_8c046554,PC),r3
	jsr @r3
	mov 0x02,r4
	mov 0x3E,r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c04646e
	bra loc_8c046598
	nop

loc_8c04646e:
	mov.l @(0xC,r14),r8
	tst r8,r8
	bt.s loc_8c04648c
	mov r13,r4
	mov.b @(0x1,r8),r0
	extu.b r0,r0
	cmp/eq 0x12,r0
	bf loc_8c04648c
	mov.w @(loc_8c04654e,PC),r0
	mov.l @(r0,r8),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r8,r4
	mov r0,r4

loc_8c04648c:
	mov 0x3E,r0
	mov r14,r2
	mov.b @(r0,r14),r8
	add 0x18,r2
	mov.l @(0x8,r14),r5
	mov r8,r3
	shll r8
	add r3,r8
	shll2 r8
	tst r5,r5
	add r2,r8
	bt.s loc_8c046598
	mov.l @r8,r8
	mov.b @(0x2,r5),r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c0464b2
	tst r4,r4
	bt loc_8c046588

loc_8c0464b2:
	mov.l @(loc_8c046558,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c04655c,PC),r2
	jsr @r2
	nop
	mov 0x38,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0464fc
	mov 0x3E,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x34,r2
	add r2,r3
	mov.b @r3,r1
	mov 0x01,r3
	cmp/gt r3,r1
	bf loc_8c0464fc
	mov r14,r3
	mov.b @(r0,r14),r1
	add 0x34,r3
	add r3,r1
	mov.b @r1,r2
	cmp/gt r9,r2
	bf loc_8c0464ee
	mov.l @(loc_8c046560,PC),r2
	mov 0x64,r0
	bra loc_8c0464f4
	mov.l r2,@(r0,r14)

loc_8c0464ee:
	mov.l @(loc_8c046564,PC),r1
	mov 0x64,r0
	mov.l r1,@(r0,r14)

loc_8c0464f4:
	mov 0x68,r0
	mov.l r13,@(r0,r14)
	bra loc_8c046520
	mov r9,r12

loc_8c0464fc:
	mov.w @(loc_8c046550,PC),r0
	mov.b @(r0,r8),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c046514
	mov 0x68,r0
	mov.l @(loc_8c046568,PC),r3
	mov.l r13,@(r0,r14)
	mov 0x64,r0
	mov.l r3,@(r0,r14)
	bra loc_8c046520
	mov 0x03,r12

loc_8c046514:
	mov 0x68,r0
	mov.l @(loc_8c04656c,PC),r3
	mov.l r13,@(r0,r14)
	mov 0x64,r0
	mov r10,r12
	mov.l r3,@(r0,r14)

loc_8c046520:
	mov 0x64,r0
	mov.l @(loc_8c046570,PC),r3
	mov.l @(r0,r14),r6
	mov 0x68,r0
	mov.l @(r0,r14),r5
	jsr @r3
	mov r8,r4
	mov.l @(0xC,r14),r4
	tst r4,r4
	bt loc_8c046578
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x1E,r0
	bf loc_8c046578
	mov.b @(0x7,r14),r0
	extu.b r0,r0
	cmp/eq 0x22,r0
	bf loc_8c046578
	mov.l @(loc_8c046574,PC),r2
	jsr @r2
	mov 0x20,r5
	bra loc_8c04657e
	nop

;##############################################
loc_8c04654e:
	#data 0x0428
loc_8c046550:
	#data 0x0255
	#align4
loc_8c046554:
	#data bank0f.loc_8c0f269c
loc_8c046558:
	#data bank03.loc_8c031008
loc_8c04655c:
	#data bank10.loc_8c105860
loc_8c046560:
	#data 0x50000000
loc_8c046564:
	#data 0x30000000
loc_8c046568:
	#data 0x70000000
loc_8c04656c:
	#data 0x10000000
loc_8c046570:
	#data bank05.loc_8c05a706
loc_8c046574:
	#data loc_8c042008

;----------------------------------------------
loc_8c046578:
	mov.l @(loc_8c046684,PC),r2
	jsr @r2
	mov 0x41,r5

loc_8c04657e:
	mov.l @(loc_8c046688,PC),r3
	jsr @r3
	mov 0x20,r4
	bra loc_8c046598
	nop

loc_8c046588:
	mov.l @(loc_8c046684,PC),r3
	mov 0x42,r5
	jsr @r3
	mov r8,r4
	mov.l @(loc_8c046688,PC),r2
	jsr @r2
	mov 0x1F,r4
	mov r13,r12

loc_8c046598:
	mov.l @(loc_8c04668c,PC),r3
	mov 0x3C,r0
	mov.w r3,@(r0,r14)
	add 0x5C,r0
	mov.l @r11,r2
	mov.b r13,@(r0,r2)
	mov 0x76,r0
	mov.b r13,@(r0,r14)

loc_8c0465a8:
	mov 0x3E,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c0465ba
	mov.b @(0x3,r14),r0
	tst r0,r0
	bt.s loc_8c0465ba
	mov 0x05,r12
	mov 0x06,r12

loc_8c0465ba:
	mov.w @(loc_8c046678,PC),r0
	mov.b r12,@(r0,r14)
	bsr loc_8c047278
	mov r12,r4
	mov.l @r11,r2
	mov 0x19,r0
	mov.b r10,@(r0,r2)
	mov 0x46,r0
	mov.b r10,@(r0,r14)
	mov 0x3E,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bf loc_8c04665c
	mov.b @(r0,r14),r4
	mov r14,r2
	add 0x18,r2
	mov.w @(loc_8c04667a,PC),r0
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov.l @r4,r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c04665c
	mov 0x48,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c04665c
	mov.l @(loc_8c046690,PC),r3
	mov.w @(loc_8c04667c,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c04665c
	mov 0x45,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c046652
	mov.w @(loc_8c04667e,PC),r0
	mov.l @r11,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c04665c
	mov.w @(loc_8c046680,PC),r0
	mov r14,r2
	mov.l @r11,r3
	add 0x18,r2
	mov 0x07,r5
	mov.b r10,@(r0,r3)
	add 0x1C,r0
	mov.l @r11,r3
	mov.b r10,@(r0,r3)
	add 0xE0,r0
	mov.b r10,@(r0,r14)
	add 0x01,r0
	mov 0x3C,r3
	mov.b r3,@(r0,r14)
	mov 0x3E,r0
	mov.b @(r0,r14),r4
	mov r4,r3
	shll r4
	add r3,r4
	mov.l @(loc_8c046694,PC),r3
	shll2 r4
	add r2,r4
	jsr @r3
	mov.l @r4,r4
	mov.l @(loc_8c046698,PC),r2
	jsr @r2
	nop
	bra loc_8c04665c
	nop

loc_8c046652:
	mov.l @r11,r2
	mov 0x19,r0
	mov.b r13,@(r0,r2)
	mov 0x46,r0
	mov.b r13,@(r0,r14)

loc_8c04665c:
	mov.l @r11,r3
	mov 0x19,r0
	mov r14,r4
	mov.b r10,@(r0,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c046b02
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c046678:
	#data 0x008c
loc_8c04667a:
	#data 0x0525
loc_8c04667c:
	#data 0x00ab
loc_8c04667e:
	#data 0x008b
loc_8c046680:
	#data 0x0088
	#align4
loc_8c046684:
	#data loc_8c04223a
loc_8c046688:
	#data loc_8c04257c
loc_8c04668c:
	#data 0x0000aaaa
loc_8c046690:
	#data work.GameGlobalPointer
loc_8c046694:
	#data bank0e.loc_8c0efdc0
loc_8c046698:
	#data bank03.loc_8c031018

;==============================================
loc_8c04669c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c046748
	mov.w @(loc_8c046788,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0466cc
	mov 0x00,r10
	mov.w @(loc_8c04678a,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	cmp/pl r3
	bt loc_8c046748
	mov.w @(loc_8c046788,PC),r0
	mov.b r10,@(r0,r14)

loc_8c0466cc:
	mov.l @(loc_8c046794,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c046748
	mov.l @(loc_8c046798,PC),r2
	mov.w @(loc_8c04678c,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c046748
	mov.w @(0x12,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x12,r14)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8c046722
	mov.w @(0x14,r14),r0
	tst r0,r0
	bt loc_8c046700
	mov.w @(0x14,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x14,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c046748

loc_8c046700:
	mov.w @(loc_8c04678e,PC),r11
	mov 0x3C,r0
	mov.l @(loc_8c04679c,PC),r4
	mov.w @(loc_8c046790,PC),r12
	add r4,r11
	mov r4,r13
	cmp/hs r11,r13
	bt.s loc_8c046722
	mov.w r10,@(r0,r14)

loc_8c046712:
	bsr loc_8c046a70
	mov r13,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c046748
	add r12,r13
	cmp/hs r11,r13
	bf loc_8c046712

loc_8c046722:
	mov 0x3C,r0
	bsr loc_8c046756
	mov.w r10,@(r0,r14)
	mov.l @(loc_8c0467a0,PC),r2
	jsr @r2
	nop
	mov 0x3E,r0
	mov.b @(r0,r14),r3
	cmp/pl r3
	bt loc_8c04673c
	mov.b @(0x3,r14),r0
	tst r0,r0
	bt loc_8c046740

loc_8c04673c:
	mov 0x0A,r0
	mov.b r0,@(0x1,r14)

loc_8c046740:
	mov.w @(loc_8c046792,PC),r0
	mov 0x06,r3
	mov.b r3,@r14
	mov.w r0,@(0x12,r14)

loc_8c046748:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c046756:
	mov.l @(loc_8c0467a8,PC),r3
	mov 0x3E,r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r3,r14
	mov.l @(loc_8c0467a4,PC),r13
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c04676e
	bra loc_8c046780
	mov 0x00,r4

loc_8c04676e:
	mov.l @(loc_8c046798,PC),r3
	mov.w @(loc_8c046788,PC),r0
	mov.l @r3,r4
	mov.b @(r0,r4),r0
	cmp/eq 0x03,r0
	bf loc_8c0467ac
	mov 0x3E,r0
	mov.b @(r0,r14),r4
	add 0x06,r4

loc_8c046780:
	jsr @r13
	nop
	bra loc_8c0467c6
	nop

;##############################################
loc_8c046788:
	#data 0x0084
loc_8c04678a:
	#data 0x0085
loc_8c04678c:
	#data 0x0098
loc_8c04678e:
	#data 0x21d8
loc_8c046790:
	#data 0x05a4
loc_8c046792:
	#data 0x0082
	#align4
loc_8c046794:
	#data bank03.loc_8c0310f2
loc_8c046798:
	#data work.GameGlobalPointer
loc_8c04679c:
	#data 0x8c268340
loc_8c0467a0:
	#data loc_8c047594
loc_8c0467a4:
	#data bank0f.loc_8c0f2ee4
loc_8c0467a8:
	#data 0x8c2896b0

;----------------------------------------------
loc_8c0467ac:
	mov.w @(loc_8c0468bc,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	mov 0x3E,r0
	mov.b @(r0,r14),r1
	shad r1,r3
	tst r3,r2
	bt loc_8c0467c0
	bra loc_8c0467c2
	mov 0x04,r4

loc_8c0467c0:
	mov 0x05,r4

loc_8c0467c2:
	jsr @r13
	nop

loc_8c0467c6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0467ce:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(0x12,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x12,r14)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8c0467e6
	bra loc_8c04690a
	nop

loc_8c0467e6:
	mov.l @(loc_8c0468cc,PC),r13
	jsr @r13
	mov.l @(0x18,r14),r4
	jsr @r13
	mov.l @(0x1C,r14),r4
	jsr @r13
	mov.l @(0x20,r14),r4
	jsr @r13
	mov.l @(0x24,r14),r4
	jsr @r13
	mov.l @(0x28,r14),r4
	jsr @r13
	mov.l @(0x2C,r14),r4
	mov 0x45,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov 0x3E,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bf loc_8c046850
	mov.b @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c04681c
	mov 0x48,r0
	bra loc_8c04681e
	mov.l @(0x24,r14),r4

loc_8c04681c:
	mov.l @(0x18,r14),r4

loc_8c04681e:
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c046850
	mov.l @(loc_8c0468d0,PC),r3
	mov.w @(loc_8c0468be,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c046850
	mov.w @(loc_8c0468c0,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c0468d4,PC),r2
	mov.l @(r0,r4),r1
	and r2,r1
	or r3,r1
	tst r1,r1
	bt loc_8c046850
	mov 0x02,r0
	mov.b r0,@(0x1,r14)
	mov 0x07,r3
	mov.w @(loc_8c0468c2,PC),r0
	mov.w r0,@(0x12,r14)
	bra loc_8c04690a
	mov.b r3,@r14

loc_8c046850:
	mov 0x08,r3
	mov.l @(loc_8c0468d8,PC),r2
	mov 0x78,r0
	mov.w r0,@(0x12,r14)
	mov.b r3,@r14
	jsr @r2
	mov 0x3C,r4
	mov 0x3E,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bf loc_8c0468e0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c046870
	mov.l @(0x18,r14),r4
	mov.l @(0x24,r14),r4

loc_8c046870:
	mov.w @(loc_8c0468c4,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0468e0
	mov.b @(0x2,r4),r0
	mov r14,r5
	add 0x18,r5
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r5
	mov.w @(loc_8c0468c6,PC),r0
	mov.l @r5,r3
	mov.l @(0x4,r5),r2
	mov.w @(r0,r3),r4
	mov.w @(r0,r2),r3
	mov.l @(0x8,r5),r2
	add r3,r4
	mov.w @(r0,r2),r3
	add r3,r4
	mov.w @(loc_8c0468c8,PC),r3
	exts.w r4,r4
	cmp/eq r3,r4
	bf loc_8c0468b0
	lds.l @r15+,pr
	mov.l @(loc_8c0468dc,PC),r1
	mov 0x03,r4
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8c0468b0:
	lds.l @r15+,pr
	mov.l @(loc_8c0468dc,PC),r2
	mov.w @(loc_8c0468ca,PC),r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0468bc:
	#data 0x0084
loc_8c0468be:
	#data 0x00ab
loc_8c0468c0:
	#data 0x0414
loc_8c0468c2:
	#data 0x0168
loc_8c0468c4:
	#data 0x0525
loc_8c0468c6:
	#data 0x0420
loc_8c0468c8:
	#data 0x01b0
loc_8c0468ca:
	#data 0x0083
	#align4
loc_8c0468cc:
	#data bank05.loc_8c05a2cc
loc_8c0468d0:
	#data work.GameGlobalPointer
loc_8c0468d4:
	#data 0x03000000
loc_8c0468d8:
	#data loc_8c041a90
loc_8c0468dc:
	#data bank0f.loc_8c0f2ee4

;==============================================
loc_8c0468e0:
	mov 0x48,r0
	mov 0x09,r3
	mov.b r3,@r14
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c04690a
	mov.l @(loc_8c0469b4,PC),r3
	mov.w @(loc_8c0469aa,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c04690a
	mov 0x45,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c04690a
	mov.w @(0x12,r14),r0
	add 0x5A,r0
	mov.w r0,@(0x12,r14)

loc_8c04690a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c046912:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(0x12,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x12,r13)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8c046948
	mov.w @(loc_8c0469ac,PC),r11
	mov.l @(loc_8c0469b8,PC),r4
	mov.w @(loc_8c0469ae,PC),r12
	add r4,r11
	mov r4,r14
	cmp/hs r11,r14
	bt loc_8c046948

loc_8c046938:
	bsr loc_8c046a70
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04699e
	add r12,r14
	cmp/hs r11,r14
	bf loc_8c046938

loc_8c046948:
	bsr loc_8c046baa
	nop
	mov 0x3E,r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c04695a
	mov 0x48,r0
	bra loc_8c04695c
	mov.l @(0x24,r13),r4

loc_8c04695a:
	mov.l @(0x18,r13),r4

loc_8c04695c:
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c04699a
	mov.l @(loc_8c0469b4,PC),r3
	mov.w @(loc_8c0469aa,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c04699a
	mov.w @(loc_8c0469b0,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c0469bc,PC),r2
	mov.l @(r0,r4),r1
	and r2,r1
	or r3,r1
	tst r1,r1
	bt loc_8c04699a
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bf loc_8c04698c
	bra loc_8c04698e
	mov 0x00,r4

loc_8c04698c:
	mov 0x01,r4

loc_8c04698e:
	mov.l @(loc_8c0469c0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0469c4,PC),r3
	jsr @r3
	mov 0x3C,r4

loc_8c04699a:
	mov 0x00,r2
	mov.b r2,@r13

loc_8c04699e:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0469aa:
	#data 0x00ab
loc_8c0469ac:
	#data 0x21d8
loc_8c0469ae:
	#data 0x05a4
loc_8c0469b0:
	#data 0x0414
	#align4
loc_8c0469b4:
	#data work.GameGlobalPointer
loc_8c0469b8:
	#data 0x8c268340
loc_8c0469bc:
	#data 0x03000000
loc_8c0469c0:
	#data loc_8c04ecee
loc_8c0469c4:
	#data loc_8c041a90

;==============================================
loc_8c0469c8:
	sts.l pr,@-r15
	mov.w @(0x12,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x12,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c046a0c
	mov 0x32,r0
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	mov 0x31,r0
	mov.b r5,@(r0,r4)
	mov 0x30,r0
	mov.b r5,@(r0,r4)
	mov r5,r0
	nop
	mov.l @(loc_8c046ad4,PC),r1
	mov 0x09,r3
	mov.w r0,@(0x12,r4)
	mov.w @(loc_8c046aca,PC),r0
	mov.b r3,@r4
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c046a0c
	mov.w @(loc_8c046acc,PC),r0
	mov.l @(loc_8c046ad8,PC),r3
	mov.w r0,@(0x12,r4)
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c046ad8,PC),r2
	mov 0x0C,r4
	jmp @r2
	lds.l @r15+,pr

loc_8c046a0c:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c046a12:
	mov.w @(0x12,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x12,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c046a26
	mov.l @(loc_8c046ad4,PC),r3
	mov 0x03,r0
	mov.l @r3,r2
	mov.b r0,@(0x4,r2)

loc_8c046a26:
	rts
	nop

;==============================================
loc_8c046a2a:
	mov 0x30,r0
	mov.l @(loc_8c046ad4,PC),r2;8c26823c
	mov 0x06,r6
	mov.w @(loc_8c046ace,PC),r1;89
	mov.b r6,@(r0,r4)

	mov 0x31,r0
	mov 0x01,r5
	mov.b r5,@(r0,r4)
	mov 0x32,r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @r2,r0
	mov.b @(r0,r1),r0

	cmp/eq 0x00,r0
	bt loc_8c046a54

	cmp/eq 0x01,r0
	bt loc_8c046a5a

	cmp/eq 0x02,r0
	bt loc_8c046a62
	bra loc_8c046a6c
	nop


loc_8c046a54:
	mov 0x30,r0
	bra loc_8c046a68
	mov.b r6,@(r0,r4)

loc_8c046a5a:
	mov 0x30,r0
	mov 0x04,r1
	bra loc_8c046a68
	mov.b r1,@(r0,r4)

loc_8c046a62:
	mov 0x30,r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)

loc_8c046a68:
	mov 0x31,r0
	mov.b r5,@(r0,r4)

loc_8c046a6c:
	rts
	nop

;==============================================
loc_8c046a70:
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c046ab6
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bf loc_8c046a94
	mov.w @(loc_8c046ad0,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bf loc_8c046a94
	mov.w @(loc_8c046ad2,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x17,r0
	bt loc_8c046ab6
	bra loc_8c046ab2
	nop

loc_8c046a94:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c046ab2
	mov.w @(loc_8c046ad2,PC),r0
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x17,r0
	bt.s loc_8c046ab6
	mov r0,r5
	tst r5,r5
	bt loc_8c046ab6
	mov r5,r0
	nop
	cmp/eq 0x16,r0
	bt loc_8c046ab6

loc_8c046ab2:
	rts
	mov 0x01,r0

loc_8c046ab6:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c046abc:
	mov.l @(loc_8c046adc,PC),r5
	mov 0x33,r0
	mov 0x00,r4
	mov.b r4,@(r0,r5)
	mov 0x61,r0
	rts
	mov.b r4,@(r0,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c046aca:
	#data 0x0088
loc_8c046acc:
	#data 0x0186
loc_8c046ace:
	#data 0x0089
loc_8c046ad0:
	#data 0x0420
loc_8c046ad2:
	#data 0x01d0
	#align4
loc_8c046ad4:
	#data work.GameGlobalPointer
loc_8c046ad8:
	#data loc_8c044e56
loc_8c046adc:
	#data 0x8c2895f0

;==============================================
loc_8c046ae0:
	add 0xFC,r15
	mov.l r4,@r15
	mov r4,r0
	nop
	mov.l @(loc_8c046bf8,PC),r1
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	add 0x04,r15

;==============================================
loc_8c046af2:
	mov.l @(loc_8c046bfc,PC),r3
	mov.b @r3,r0
	rts
	extu.b r0,r0

;==============================================
loc_8c046afa:
	mov.l @(loc_8c046c00,PC),r2
	mov.b @r2,r0
	rts
	extu.b r0,r0

;==============================================
loc_8c046b02:
	mov 0x46,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c046ba6
	mov.l @(loc_8c046c04,PC),r2
	mov.w @(loc_8c046bee,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt.s loc_8c046b74
	mov 0x00,r6
	mov 0x3E,r0
	mov.b @(r0,r4),r1
	cmp/pz r1
	bt loc_8c046b2e
	mov.w @(loc_8c046bf0,PC),r5
	add r4,r5
	mov r6,r0
	nop
	mov.b r0,@(0x1,r5)
	bra loc_8c046ba6
	mov.b r0,@r5

loc_8c046b2e:
	mov.b @(r0,r4),r1
	tst r1,r1
	bt.s loc_8c046b38
	mov r6,r5
	mov 0x01,r5

loc_8c046b38:
	mov.w @(loc_8c046bf2,PC),r2
	mov.b @(r0,r4),r3
	mov.l @(loc_8c046c08,PC),r0
	muls.w r2,r3
	sts macl,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c046ba6
	mov 0x63,r7
	mov r7,r3
	add 0x39,r3
	add r4,r3
	add r5,r3
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	exts.b r2,r2
	cmp/gt r7,r2
	bf loc_8c046b66
	mov.w @(loc_8c046bf0,PC),r2
	add r4,r2
	add r5,r2
	mov.b r7,@r2

loc_8c046b66:
	mov.w @(loc_8c046bf0,PC),r2
	mov 0x01,r3
	xor r3,r5
	add r4,r2
	add r2,r5
	bra loc_8c046ba6
	mov.b r6,@r5

loc_8c046b74:
	mov 0x3E,r0
	mov.b @(r0,r4),r1
	cmp/pz r1
	bf loc_8c046ba6
	mov r4,r1
	mov.b @(r0,r4),r3
	add 0x36,r1
	add r1,r3
	mov.b @r3,r3
	tst r3,r3
	bf loc_8c046b9c
	mov.w @(loc_8c046bf4,PC),r1
	mov.b @(r0,r4),r3
	add r4,r1
	add r1,r3
	mov.b @r3,r1
	add 0x01,r1
	mov.b r1,@r3
	bra loc_8c046ba6
	nop

loc_8c046b9c:
	mov.w @(loc_8c046bf4,PC),r1
	mov.b @(r0,r4),r3
	add r4,r1
	add r1,r3
	mov.b r6,@r3

loc_8c046ba6:
	rts
	nop

;==============================================
loc_8c046baa:
	mov.l @(loc_8c046c04,PC),r2
	mov 0x4D,r0
	mov.l @(loc_8c046c0c,PC),r4
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	mov.l @(loc_8c046c10,PC),r0
	mov.b @(r0,r1),r3
	mov.w @(loc_8c046bf6,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x40,r0
	mov.b r3,@(r0,r4)
	bra loc_8c046c74
	nop

;==============================================
loc_8c046bc4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c046c6c
	mov 0x41,r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	tst r2,r2
	bf loc_8c046c6c
	mov 0x40,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c046c14
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c046bee:
	#data 0x008b
loc_8c046bf0:
	#data 0x009c
loc_8c046bf2:
	#data 0x05a4
loc_8c046bf4:
	#data 0x009a
loc_8c046bf6:
	#data 0x0086
	#align4
loc_8c046bf8:
	#data bank14.loc_8c14e024
loc_8c046bfc:
	#data 0x8c289623
loc_8c046c00:
	#data 0x8c289651
loc_8c046c04:
	#data work.GameGlobalPointer
loc_8c046c08:
	#data 0x8c268865
loc_8c046c0c:
	#data 0x8c2895f0
loc_8c046c10:
	#data bank14.loc_8c14e02c

;==============================================
loc_8c046c14:
	mov.w @(loc_8c046d00,PC),r0
	mov 0x4D,r1
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	add 0x01,r2
	mov.b r2,@(r0,r3)
	mov.l @(0x24,r14),r3
	mov.b @(r0,r3),r2
	add 0x01,r2
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c046d10,PC),r3
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bt loc_8c046c58
	mov 0x40,r0
	mov.b @(r0,r14),r0
	cmp/pl r0
	bf loc_8c046c58
	mov 0x40,r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r0
	cmp/eq 0x0A,r0
	bt.s loc_8c046c52
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x14,r0
	bf loc_8c046c58

loc_8c046c52:
	mov.l @(loc_8c046d14,PC),r3
	jsr @r3
	mov 0x18,r4

loc_8c046c58:
	mov.w @(loc_8c046d02,PC),r0
	mov.b @(r0,r14),r2
	cmp/pl r2
	bf.s loc_8c046c68
	mov r14,r4
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)

loc_8c046c68:
	bsr loc_8c046c74
	nop

loc_8c046c6c:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c046c74:
	mov.l @(loc_8c046d10,PC),r2
	mov 0x46,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	mov.l @(loc_8c046d18,PC),r0
	mov.b @(r0,r1),r3
	mov.w @(loc_8c046d04,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x41,r0
	rts
	mov.b r3,@(r0,r4)
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8c046d1c,PC),r4
	mov 0x06,r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c046d46
	mov.l @(loc_8c046d10,PC),r3
	mov.w @(loc_8c046d06,PC),r0
	mov.l @r3,r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c046d68
	mov 0x58,r0
	mov.b @(r0,r5),r1
	tst r1,r1
	bf loc_8c046d68
	mov 0x3E,r0
	mov.b @(r0,r4),r1
	cmp/pz r1
	bf loc_8c046d74
	mov.b @(r0,r4),r2
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	cmp/eq r0,r2
	bf loc_8c046d74
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c046d74
	mov.b @(0x2,r14),r0
	mov r4,r3
	add 0x34,r3
	extu.b r0,r0
	mov.b @(r0,r3),r0
	cmp/eq 0x01,r0
	bf loc_8c046d74
	mov.w @(loc_8c046d08,PC),r0
	mov.w @(loc_8c046d0a,PC),r3
	mov.l @(r0,r14),r5
	mov 0x00,r0
	mov.l @(loc_8c046d20,PC),r2
	mov.l r5,@r15
	add r3,r5
	mov.l @r5,r1
	and r2,r1
	or r0,r1
	tst r1,r1
	bf loc_8c046d74
	mov.w @(loc_8c046d0c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c046d24
	mov.b @(r0,r14),r3
	add 0xFF,r3
	bra loc_8c046d68
	mov.b r3,@(r0,r14)

;##############################################
loc_8c046d00:
	#data 0x04a9
loc_8c046d02:
	#data 0x0086
loc_8c046d04:
	#data 0x0087
loc_8c046d06:
	#data 0x0088
loc_8c046d08:
	#data 0x020c
loc_8c046d0a:
	#data 0x0414
loc_8c046d0c:
	#data 0x0326
	#align4
loc_8c046d10:
	#data work.GameGlobalPointer
loc_8c046d14:
	#data loc_8c04257c
loc_8c046d18:
	#data bank14.loc_8c14e030
loc_8c046d1c:
	#data 0x8c2895f0
loc_8c046d20:
	#data 0x07000000

;==============================================
loc_8c046d24:
	mov.w @(loc_8c046db6,PC),r0
	mov.l @(loc_8c046dc4,PC),r3
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r3,r1
	bt loc_8c046d74
	mov 0x01,r5
	mov r5,r0
	nop
	mov.b r0,@(0x1,r4)
	mov 0x3F,r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c046db8,PC),r0
	mov.w @(loc_8c046dba,PC),r3
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)

loc_8c046d46:
	mov.l @(loc_8c046dc8,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c046dcc,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c046dd0,PC),r3
	mov 0x00,r6
	mov r6,r5
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c046d68:
	mov.w @(loc_8c046dbc,PC),r0
	mov 0x03,r2
	mov 0x00,r3
	mov.b r2,@(r0,r14)
	add 0xB0,r0
	mov.b r3,@(r0,r14)

loc_8c046d74:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c046d7e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(loc_8c046dc0,PC),r12
	mov.l @(loc_8c046dd4,PC),r4
	sts.l pr,@-r15
	mov.w @(loc_8c046dbe,PC),r13
	add r4,r12
	mov.l @(loc_8c046dd8,PC),r11
	mov r4,r14

loc_8c046d94:
	mov.w @(loc_8c046dc2,PC),r0
	mov r14,r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c046da4
	jsr @r11
	nop

loc_8c046da4:
	add r13,r14
	cmp/hs r12,r14
	bf loc_8c046d94
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c046db6:
	#data 0x0340
loc_8c046db8:
	#data 0x01f8
loc_8c046dba:
	#data 0x0080
loc_8c046dbc:
	#data 0x01ed
loc_8c046dbe:
	#data 0x05a4
loc_8c046dc0:
	#data 0x21d8
loc_8c046dc2:
	#data 0x01d0
loc_8c046dc4:
	#data 0x8000
	#align4
loc_8c046dc8:
	#data bank05.loc_8c05218a
loc_8c046dcc:
	#data bank03.loc_8c035162
loc_8c046dd0:
	#data bank02.loc_8c02fec4
loc_8c046dd4:
	#data 0x8c268340
loc_8c046dd8:
	#data bank05.loc_8c051648

;==============================================
;Text Displays
loc_8c046ddc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov.l @(loc_8c046ef0,PC),r10 ; 0x8c2896b0
	mov.l @r10,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c046dfe
	bra loc_8c047108
	nop

loc_8c046dfe:
	mov.l @(loc_8c046ef4,PC),r2 ; bank03.loc_8c0310f2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c046e0c
	bra loc_8c047108
	nop

;Training Mode Check
loc_8c046e0c:
	mov.l @(loc_8c046ef8,PC),r13 ; 8c26823c
	mov 0x4C,r0
	mov.l @r13,r4
	mov.b @(r0,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c046e1c
	bra loc_8c047108
	nop

;Player Data
loc_8c046e1c:
	mov.w @(loc_8c046ee0,PC),r0  ; 0x008b
	mov r15,r14
	mov.l @(loc_8c046f00,PC),r11 ; bank12.loc_8c129740
	add 0x0C,r14
	mov.b @(r0,r4),r2
	mov.l @(loc_8c046efc,PC),r8  ; 0x8c268340
	mov.l @(loc_8c046f04,PC),r12 ; bank03.loc_8c0395c6
	tst r2,r2
	bt.s loc_8c046e34
	mov.l @r10,r9
	bra loc_8c046fb6
	nop

loc_8c046e34:
	mov.w @(loc_8c046ee2,PC),r0 ; 0x0084
	mov 0x1B,r3
	mov.w @(loc_8c046ee4,PC),r2 ; 0x009c
	mov.b @(r0,r4),r0
	add r9,r2
	tst 0x01,r0
	movt r10
	mulu.w r3,r10
	add r10,r2
	sts macl,r3
	mov.b r3,@r15
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c046e80
	mov.b @r15,r0
	add 0x03,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.w @(loc_8c046ee4,PC),r3 ; 0x009c
	mov.b r0,@(0x4,r15)
	add r9,r3
	add r10,r3
	mov.b @r3,r2
	mov.l @(loc_8c046f08,PC),r3 ; 8c13a2ac
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c046ee6,PC),r0 ; 0x00b2
	mov 0x13,r6
	mov.l r14,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	mov 0x10,r0
	jsr @r12
	mov.b @(r0,r15),r4
	add 0x0C,r15

loc_8c046e80:
	mov.w @(loc_8c046ee8,PC),r9 ; 0x05a4
	mov.b @r15,r3
	mul.l r9,r10
	add 0x0F,r3
	mov.w @(loc_8c046eea,PC),r0 ; 0x04d8
	mov r3,r2
	shll r3
	add r2,r3
	sts macl,r9
	mov.b r3,@r15
	add r8,r9
	mov.l @(r0,r9),r2
	tst r2,r2
	bt loc_8c046f14
	mov.w @(loc_8c046eec,PC),r0 ; 0x04d4
	mov.l @(loc_8c046f0c,PC),r2 ; bank13.loc_8c13a2b8
	mov.l @(r0,r9),r3
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c046ee6,PC),r0 ; 0x00b2
	mov 0x15,r6
	mov.l r14,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	mov.b @(0xC,r15),r0
	jsr @r12
	mov r0,r4
	mov.w @(loc_8c046eea,PC),r0 ; 0x4d8
	mov.l @(loc_8c046f10,PC),r2 ; bank13.loc_8c13a2c0
	mov.l @(r0,r9),r3
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c046ee6,PC),r0 ; 0x00b2
	mov 0x15,r6
	mov.l r14,@-r15
	mov.l @r13,r5
	mov.w @(loc_8c046eee,PC),r3 ; 0x00f7
	mov.b @(r0,r5),r5
	mov 0x18,r0
	mov.b @(r0,r15),r4
	jsr @r12
	add r3,r4
	bra loc_8c046f34
	add 0x18,r15

;##############################################
loc_8c046ee0:
	#data 0x008b
loc_8c046ee2:
	#data 0x0084
loc_8c046ee4:
	#data 0x009c
loc_8c046ee6:
	#data 0x00b2
loc_8c046ee8:
	#data 0x05a4
loc_8c046eea:
	#data 0x04d8
loc_8c046eec:
	#data 0x04d4
loc_8c046eee:
	#data 0x00f7
	#align4
loc_8c046ef0:
	#data 0x8c2896b0
loc_8c046ef4:
	#data bank03.loc_8c0310f2
loc_8c046ef8:
	#data work.GameGlobalPointer
loc_8c046efc:
	#data 0x8c268340
loc_8c046f00:
	#data bank12.loc_8c129740
loc_8c046f04:
	#data bank03.loc_8c0395c6
loc_8c046f08:
	#data bank13.loc_8c13a2ac
loc_8c046f0c:
	#data bank13.loc_8c13a2b8
loc_8c046f10:
	#data bank13.loc_8c13a2c0

;----------------------------------------------
loc_8c046f14:
	mov.w @(loc_8c04703c,PC),r0 ; 0x4d4
	mov.l @(loc_8c04704c,PC),r3 ; bank13.loc_8c13a2c4
	mov.l @(r0,r9),r2
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c04703e,PC),r0 ; 0x00b2
	mov 0x15,r6
	mov.l r14,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	mov.b @(0xC,r15),r0
	jsr @r12
	mov r0,r4
	add 0x0C,r15

loc_8c046f34:
	mov.l @r13,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bt loc_8c046f42
	bra loc_8c047108
	nop

loc_8c046f42:
	mov 0x01,r0
	mov.w @(loc_8c047040,PC),r1 ; 0x05a4
	mov 0x1B,r3
	sub r10,r0
	mulu.w r3,r0
	mov.l @(loc_8c047050,PC),r3 ; bank12.loc_8c12939c
	mov 0x3C,r9
	sts macl,r0
	mul.l r1,r10
	add 0x0F,r0
	mov r0,r2
	shll r0
	sts macl,r1
	add r2,r0
	mov.b r0,@(0x4,r15)
	add r8,r1
	mov.w @(loc_8c047042,PC),r0 ; 0x0558
	mov.l r1,@(0x8,r15)
	mov.l @(r0,r1),r1
	mov.l r1,@r15
	jsr @r3
	mov r9,r0
	mov 0x64,r1
	mov.l @(loc_8c047054,PC),r3 ; bank12.loc_8c1291dc
	mul.l r1,r0
	sts macl,r1
	jsr @r3
	mov r9,r0
	mov.l r0,@-r15
	mov.l @(loc_8c047054,PC),r2 ; bank12.loc_8c1291dc
	mov.l @(0x4,r15),r1
	jsr @r2
	mov r9,r0
	mov.l @(loc_8c047050,PC),r3 ; bank12.loc_8c12939c
	mov r0,r1
	jsr @r3
	mov r9,r0
	mov.l r0,@-r15
	mov.l @(loc_8c047054,PC),r2 ; bank12.loc_8c1291dc
	mov.w @(loc_8c047044,PC),r0 ; 0x0e10
	mov.l @(0x8,r15),r1
	jsr @r2
	nop
	mov.l @(loc_8c047058,PC),r3 ; bank13.loc_8c13a2c8
	mov.l r0,@-r15
	mov.l r3,@-r15
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c04703e,PC),r0 ; 0x00b2
	mov 0x15,r6
	mov.l r14,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	mov 0x18,r0
	jsr @r12
	mov.b @(r0,r15),r4
	bra loc_8c047108
	add 0x14,r15

;
loc_8c046fb6:
	mov.w @(loc_8c047046,PC),r0 ; 0x009c
	mov.b @(r0,r9),r2
	tst r2,r2
	bf loc_8c046fea
	mov 0x46,r0
	mov.b @(r0,r9),r3
	tst r3,r3
	bf loc_8c047006
	mov.b @r9,r3
	mov 0x05,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c047006
	mov.l @(loc_8c04705c,PC),r1 ; bank13.loc_8c13a2c8
	mov.l r1,@-r15
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c04703e,PC),r0 ; b2
	mov 0x13,r6
	mov.l r14,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	jsr @r12
	mov 0x2A,r4
	bra loc_8c047006
	add 0x08,r15

loc_8c046fea:
	mov.b @(r0,r9),r2
	mov.l @(loc_8c047060,PC),r3 ; bank12.loc_8c12939c
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c04703e,PC),r0 ; 0x00b2
	mov 0x13,r6
	mov.l r14,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	jsr @r12
	mov 0x2D,r4
	add 0x0C,r15

loc_8c047006:
	mov.w @(loc_8c047048,PC),r0 ; ;0x009d
	mov.l @r10,r9
	mov.b @(r0,r9),r3
	tst r3,r3
	bf loc_8c047064

	mov 0x46,r0
	mov.b @(r0,r9),r3
	tst r3,r3
	bf loc_8c047080
	mov.b @r9,r3
	mov 0x05,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c047080
	mov.l @(loc_8c04705c,PC),r1 ; bank13.loc_8c13a2d8
	mov.l r1,@-r15
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c04703e,PC),r0 ; 0x00b2
	mov 0x13,r6
	mov.l r14,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	jsr @r12
	mov 0x5D,r4
	bra loc_8c047080
	add 0x08,r15

;##############################################
loc_8c04703c:
	#data 0x04d4
loc_8c04703e:
	#data 0x00b2
loc_8c047040:
	#data 0x05a4
loc_8c047042:
	#data 0x0558
loc_8c047044:
	#data 0x0e10
loc_8c047046:
	#data 0x009c
loc_8c047048:
	#data 0x009d
	#align4
loc_8c04704c:
	#data bank13.loc_8c13a2c4
loc_8c047050:
	#data bank12.loc_8c12939c
loc_8c047054:
	#data bank12.loc_8c1291dc
loc_8c047058:
	#data bank13.loc_8c13a2c8
loc_8c04705c:
	#data bank13.loc_8c13a2d8
loc_8c047060:
	#data bank13.loc_8c13a2ac

;----------------------------------------------
loc_8c047064:
	mov.b @(r0,r9),r2
	mov.l @(loc_8c047124,PC),r3 ; bank13.loc_8c13a2ac
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c04711c,PC),r0 ; 0x00b2
	mov 0x13,r6
	mov.l r14,@-r15
	mov.l @r13,r5
	mov.b @(r0,r5),r5
	jsr @r12
	mov 0x60,r4
	add 0x0C,r15

loc_8c047080:
	mov.l @r13,r14
	mov 0x58,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047108
	mov.l @r13,r2
	mov 0x29,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c047098
	bra loc_8c04709a
	mov 0x00,r3

loc_8c047098:
	mov 0x02,r3

loc_8c04709a:
	mov.l r3,@(0x4,r15)
	mov r3,r0
	nop
	mov.l @(loc_8c047128,PC),r2 ; bank14.loc_8c14e400; Ascii names
	shll2 r0
	mov.w @(loc_8c04711e,PC),r3 ; 0x008a
	mov 0x37,r6
	add r2,r0
	mov.l r0,@r15
	mov.l @r10,r2
	mov.l @r0,r1
	add r2,r3
	mov.w @(loc_8c047120,PC),r2 ; 0x05a4
	mov.b @r3,r3
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	add r8,r3
	mov.b @(0x1,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	mov.l r3,@-r15
	mov r6,r0
	nop
	add 0x7B,r0
	mov.b @(r0,r14),r5
	add 0x19,r5
	jsr @r12
	mov 0x06,r4
	mov.w @(loc_8c047122,PC),r0 ; 0x008b
	mov 0x37,r6
	mov.l @r10,r2
	mov.l @(0x4,r15),r3
	mov.b @(r0,r2),r1
	mov.w @(loc_8c047120,PC),r2 ; 0x05a4
	extu.b r1,r1
	mov.l @(0x4,r3),r3
	mulu.w r2,r1
	sts macl,r1
	add r1,r8
	mov.b @(0x1,r8),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.l r1,@-r15
	mov.l @r13,r5
	mov r6,r0
	nop
	add 0x7B,r0
	mov.b @(r0,r5),r5
	add 0x19,r5
	jsr @r12
	mov 0x69,r4
	add 0x08,r15

loc_8c047108:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04711c:
	#data 0x00b2
loc_8c04711e:
	#data 0x008a
loc_8c047120:
	#data 0x05a4
loc_8c047122:
	#data 0x008b
	#align4
loc_8c047124:
	#data bank13.loc_8c13a2ac
loc_8c047128:
	#data bank14.loc_8c14e400

;==============================================
loc_8c04712c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xE0,r15
	mov.l @(loc_8c047258,PC),r3
	mov r4,r2
	shll r4
	mov.l @(loc_8c04725c,PC),r12
	mov.l @r3,r13
	add r2,r4
	shll2 r4
	mov.l @(loc_8c047264,PC),r2
	add 0x18,r13
	mov.l @(loc_8c047260,PC),r14
	add r4,r13
	mov.l @r13,r13
	mov 0x66,r11
	mov 0x34,r6
	mov.b @(0x2,r13),r0
	mov.l r2,@-r15
	extu.b r0,r0
	mov.l @r12,r5
	mulu.w r11,r0
	sts macl,r11
	add 0x06,r11
	mov r6,r0
	nop
	add 0x7E,r0
	mov.b @(r0,r5),r5
	add 0x19,r5
	jsr @r14
	mov r11,r4
	mov.w @(loc_8c047252,PC),r0
	mov 0x38,r6
	mov.l @(loc_8c047268,PC),r10
	mov.w @(r0,r13),r3
	mov.l r3,@-r15
	mov.l r10,@-r15
	mov.l @r12,r5
	mov r6,r0
	nop
	add 0x7A,r0
	mov r11,r9
	mov.b @(r0,r5),r5
	add 0x24,r9
	add 0x19,r5
	jsr @r14
	mov r9,r4
	mov.l @(loc_8c04726c,PC),r3
	mov 0x35,r6
	mov.l r3,@-r15
	mov.l @r12,r5
	mov r6,r0
	nop
	add 0x7D,r0
	mov.b @(r0,r5),r5
	add 0x1E,r5
	jsr @r14
	mov r11,r4
	mov.w @(loc_8c047254,PC),r0
	mov 0x38,r6
	mov.w @(r0,r13),r3
	add 0x14,r0
	mov.w @(r0,r13),r2
	sub r2,r3
	mov.l r3,@-r15
	mov.l r10,@-r15
	mov.l @r12,r5
	mov r6,r0
	nop
	add 0x7A,r0
	mov.b @(r0,r5),r5
	add 0x1E,r5
	jsr @r14
	mov r9,r4
	mov.l @(loc_8c047270,PC),r3
	mov 0x37,r6
	mov.l r3,@-r15
	mov.l @r12,r5
	mov r6,r0
	nop
	add 0x7B,r0
	mov.b @(r0,r5),r5
	add 0x23,r5
	jsr @r14
	mov r11,r4
	mov.b @(0x2,r13),r0
	mov 0x38,r6
	mov.l @(loc_8c047258,PC),r3
	extu.b r0,r0
	mov.l @r3,r2
	xor 0x01,r0
	shll r0
	add 0x78,r2
	mov.w @(r0,r2),r1
	mov.l r1,@-r15
	mov.l r10,@-r15
	mov.l @r12,r5
	mov r6,r0
	nop
	add 0x7A,r0
	mov.b @(r0,r5),r5
	add 0x23,r5
	jsr @r14
	mov r9,r4
	add 0x44,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c047218:
	mov.l @(loc_8c047258,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c04724c
	mov.l @(loc_8c04725c,PC),r2
	mov.w @(loc_8c047256,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c04724c
	mov.l @(loc_8c047274,PC),r1
	mov.b @r1,r0
	tst 0x01,r0
	bt loc_8c04723e
	bsr loc_8c04712c
	mov 0x01,r4

loc_8c04723e:
	mov.l @(loc_8c047274,PC),r3
	mov.b @r3,r0
	tst 0x02,r0
	bt loc_8c04724c
	mov 0x00,r4
	bra loc_8c04712c
	lds.l @r15+,pr

loc_8c04724c:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c047252:
	#data 0x032e
loc_8c047254:
	#data 0x0268
loc_8c047256:
	#data 0x00ae
	#align4
loc_8c047258:
	#data 0x8c2896b0
loc_8c04725c:
	#data work.GameGlobalPointer
loc_8c047260:
	#data bank03.loc_8c0395c6
loc_8c047264:
	#data bank13.loc_8c13a2e4
loc_8c047268:
	#data bank13.loc_8c13a2ec
loc_8c04726c:
	#data bank13.loc_8c13a2f0
loc_8c047270:
	#data bank13.loc_8c13a300
loc_8c047274:
	#data 0x8c212c9d

;==============================================
loc_8c047278:
	mov.l @(loc_8c0472e4,PC),r3
	mov 0x4C,r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r3,r5
	mov.b @(r0,r5),r0
	cmp/eq 0x01,r0
	bt loc_8c0472dc
	mov.l @(loc_8c0472e8,PC),r3
	mov.b @r3,r14
	cmp/pz r14
	bf loc_8c0472dc
	mov.w @(loc_8c0472e2,PC),r3
	mov.l @(loc_8c0472ec,PC),r0
	mul.l r3,r14
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0472dc
	mov.l @(loc_8c0472f0,PC),r0
	shll2 r4
	mov.l @(r0,r4),r4
	mov 0x4C,r0
	mov.b @(r0,r5),r0
	cmp/eq 0x05,r0
	bt loc_8c0472b2
	mov.l @(loc_8c0472f4,PC),r3
	jsr @r3
	nop

loc_8c0472b2:
	mov.l @(loc_8c0472f8,PC),r0
	mov 0x32,r3
	mov.l @(loc_8c0472e4,PC),r2
	mov.b @(r0,r14),r4
	mov 0x4C,r0
	mov.l @r2,r5
	neg r4,r4
	add 0x02,r4
	mov.b @(r0,r5),r5
	mul.l r3,r4
	tst r5,r5
	bt.s loc_8c0472d4
	sts macl,r4
	mov r5,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c0472dc

loc_8c0472d4:
	lds.l @r15+,pr
	mov.l @(loc_8c0472f4,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0472dc:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0472e2:
	#data 0x05a4
	#align4
loc_8c0472e4:
	#data work.GameGlobalPointer
loc_8c0472e8:
	#data 0x8c28962e
loc_8c0472ec:
	#data 0x8c268865
loc_8c0472f0:
	#data bank14.loc_8c14e034
loc_8c0472f4:
	#data bank01.loc_8c011780
loc_8c0472f8:
	#data 0x8c289626

;==============================================
loc_8c0472fc:
	mov.l r14,@-r15
	mov 0x00,r5
	sts.l pr,@-r15
	mov.l @(loc_8c047400,PC),r3
	mov 0x20,r6
	mov.l @(loc_8c0473fc,PC),r14
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c047404,PC),r3
	mov.w @(loc_8c0473ee,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov.l @(loc_8c047408,PC),r2
	jsr @r2
	mov.w r1,@r14
	tst 0x7F,r0
	bf loc_8c047322
	mov 0x00,r2
	mov.w r2,@r14

loc_8c047322:
	mov.l @(loc_8c047404,PC),r1
	mov 0x2E,r0
	mov.l @r1,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c047332
	mov 0x1F,r0
	mov.w r0,@(0x2,r14)

loc_8c047332:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c047338:
	mov.l @(loc_8c047404,PC),r5
	mov.w @(loc_8c0473f0,PC),r0
	mov.l @r5,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0473ac
	mov.l @(loc_8c0473fc,PC),r4
	mov.w @(0x6,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x6,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0473ac
	mov 0x3B,r0
	mov.w r0,@(0x6,r4)
	mov 0x05,r3
	mov.w @(0x4,r4),r0
	add 0x01,r0
	mov.w r0,@(0x4,r4)
	mov.w @(0x8,r4),r0
	add 0x01,r0
	mov.w r0,@(0x8,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c0473ac
	mov 0x00,r0
	mov.w @(loc_8c0473f2,PC),r3
	mov.w r0,@(0x8,r4)
	mov.w @(0x4,r4),r0
	cmp/ge r3,r0
	bt loc_8c04737e
	mov.w @(0xA,r4),r0
	add 0x01,r0
	and 0x1F,r0
	mov.w r0,@(0xA,r4)

loc_8c04737e:
	mov.l @r5,r3
	mov 0x29,r0
	mov.l @(loc_8c047410,PC),r6
	mov.b @(r0,r3),r2
	mov.l @(loc_8c04740c,PC),r0
	shll2 r2
	mov.l @(r0,r2),r5
	mov.w @(0xA,r4),r0
	mov.w @(loc_8c0473f4,PC),r2
	mov.b @(r0,r5),r3
	add r6,r2
	mov.w @r2,r1
	extu.b r3,r3
	add r3,r1
	mov.w r1,@r2
	mov.w @(0xA,r4),r0
	mov.w @(loc_8c0473f6,PC),r2
	mov.b @(r0,r5),r3
	add r6,r2
	mov.w @r2,r1
	extu.b r3,r3
	add r3,r1
	mov.w r1,@r2

loc_8c0473ac:
	rts
	nop

;==============================================
loc_8c0473b0:
	mov.l @(loc_8c047404,PC),r3
	mov.w @(loc_8c0473f0,PC),r0
	mov.l @r3,r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c0473d0
	mov.w @(loc_8c0473f8,PC),r0
	mov.l @(loc_8c047410,PC),r6
	mov.b @(r0,r5),r0
	cmp/eq 0x02,r0
	bf.s loc_8c0473cc
	mov r6,r4
	mov.w @(loc_8c0473fa,PC),r4
	add r6,r4

loc_8c0473cc:
	bra loc_8c0473d4
	nop

loc_8c0473d0:
	rts
	nop

loc_8c0473d4:
	mov.l r14,@-r15
	mov 0x2E,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c047404,PC),r12
	mov.l @(loc_8c0473fc,PC),r6
	mov.l @r12,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c047414
	mov 0x1F,r14
	bra loc_8c047488
	mov r14,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0473ee:
	#data 0x0083
loc_8c0473f0:
	#data 0x008b
loc_8c0473f2:
	#data 0x00a0
loc_8c0473f4:
	#data 0x050e
loc_8c0473f6:
	#data 0x0ab2
loc_8c0473f8:
	#data 0x0084
loc_8c0473fa:
	#data 0x05a4
	#align4
loc_8c0473fc:
	#data 0x8c289730
loc_8c047400:
	#data bank12.loc_8c129728
loc_8c047404:
	#data work.GameGlobalPointer
loc_8c047408:
	#data bank03.loc_8c03319e
loc_8c04740c:
	#data bank14.loc_8c14e5b8
loc_8c047410:
	#data 0x8c268340

;==============================================
loc_8c047414:
	mov.l @(loc_8c047540,PC),r7
	mov 0x20,r13
	mov 0x00,r5

loc_8c04741a:
	mov.w @(loc_8c047532,PC),r0
	mov.w @(r0,r4),r3
	mov r5,r0
	nop
	shll r0
	mov.w @(r0,r7),r2
	cmp/gt r2,r3
	bf loc_8c047446
	mov r5,r3
	add 0x01,r3
	cmp/hs r13,r3
	bf loc_8c047440
	mov r5,r3
	shll r3
	mov.w @(loc_8c047532,PC),r1
	add r7,r3
	mov.w @(0x2,r3),r0
	add r4,r1
	mov.w r0,@r1

loc_8c047440:
	add 0x01,r5
	cmp/hs r14,r5
	bf loc_8c04741a

loc_8c047446:
	mov r5,r0
	nop
	mov.w r0,@(0x2,r6)
	mov 0x29,r0
	mov.l @r12,r5
	mov.w @(loc_8c047534,PC),r1
	mov.b @(r0,r5),r5
	mov.l @(loc_8c047544,PC),r0
	shll2 r5
	mov.w @r6,r3
	mov.l @(r0,r5),r5
	mov.l @r12,r0
	shll2 r3
	shll r3
	mov.b @(r0,r1),r0
	and 0x07,r0
	add r0,r3
	mov.w @(0x2,r6),r0
	add r3,r5
	mov.b @r5,r3
	extu.b r3,r3
	cmp/ge r3,r0
	bf loc_8c047484
	mov.b @r5,r0
	extu.b r0,r0
	mov.w r0,@(0x2,r6)
	mov.w @(0x2,r6),r0
	shll r0
	mov.w @(r0,r7),r3
	mov.w @(loc_8c047532,PC),r0
	mov.w r3,@(r0,r4)

loc_8c047484:
	mov.w @(0x2,r6),r0
	and 0x1F,r0

loc_8c047488:
	mov.w r0,@(0x2,r6)
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c047492:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.l @(loc_8c047548,PC),r3
	mov.w @(loc_8c047536,PC),r0
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0474da
	mov.w @(loc_8c047538,PC),r0
	mov.l @(loc_8c04754c,PC),r5
	mov.b @(r0,r4),r0
	cmp/eq 0x02,r0
	bf.s loc_8c0474b2
	mov r5,r14
	mov.w @(loc_8c04753a,PC),r14
	add r5,r14

loc_8c0474b2:
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c047550,PC),r3
	extu.b r0,r0
	mov.w @(loc_8c04753c,PC),r1
	mov r0,r6
	mov.l @r3,r2
	shll r6
	mov.l r6,@r15
	add 0x7C,r2
	mov.l @r3,r5
	add r2,r6
	mov.l @r15,r2
	add r1,r5
	mov.w @r6,r6
	add r2,r5
	mov.w @r5,r5
	add 0x04,r15
	bra loc_8c0474e0
	mov.l @r15+,r14

loc_8c0474da:
	add 0x04,r15
	rts
	mov.l @r15+,r14

loc_8c0474e0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x64,r1
	mov.l @(loc_8c047554,PC),r3
	muls.w r1,r5
	sts macl,r1
	jsr @r3
	exts.w r6,r0
	mov.l @(loc_8c047548,PC),r3
	mov r0,r14
	mov 0x29,r0
	mov.l @r3,r2
	mov 0x64,r6
	mov 0x03,r7
	mov.b @(r0,r2),r1
	mov 0x00,r5
	mov.l @(loc_8c047558,PC),r0
	shll2 r1
	mov.l @(r0,r1),r2
	mov.l r2,@r15

loc_8c04750a:
	exts.w r14,r3
	cmp/ge r6,r3
	bt loc_8c047518
	add 0x01,r5
	cmp/ge r7,r5
	bf.s loc_8c04750a
	add 0xF6,r6

loc_8c047518:
	mov.w @(loc_8c047532,PC),r0
	shll r5
	mov r0,r2
	mov.l @r15,r0
	add r4,r2
	mov.w @r2,r1
	mov.w @(r0,r5),r3
	add r3,r1
	mov.w r1,@r2
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c047532:
	#data 0x050e
loc_8c047534:
	#data 0x0081
loc_8c047536:
	#data 0x008b
loc_8c047538:
	#data 0x0084
loc_8c04753a:
	#data 0x05a4
loc_8c04753c:
	#data 0x0080
	#align4

loc_8c047540:
	#data bank14.loc_8c14e538

loc_8c047544:
	#data bank14.loc_8c14e51c

loc_8c047548:
	#data work.GameGlobalPointer

loc_8c04754c:
	#data 0x8c268340

loc_8c047550:
	#data 0x8c2896b0

loc_8c047554:
	#data bank12.loc_8c129128

loc_8c047558:
	#data bank14.loc_8c14e420

;==============================================
loc_8c04755c:
	mov.l @(loc_8c047608,PC),r2
	mov 0x29,r0
	mov 0x10,r3
	mov.l @r2,r6
	cmp/gt r3,r15
	mov.b @(r0,r6),r6
	mov.l @(loc_8c04760c,PC),r0
	shll2 r6
	mov.l @(r0,r6),r6
	mov.w @(loc_8c0475fc,PC),r0
	add 0x20,r6
	mov.w @(r0,r4),r1
	mov.w @r6,r3
	sub r3,r1
	mov.w r1,@(r0,r4)
	exts.w r1,r1
	cmp/pz r1
	bt.s loc_8c047584
	mov 0x00,r5
	mov.w r5,@(r0,r4)

loc_8c047584:
	mov.l @(loc_8c047610,PC),r4
	mov r5,r0
	nop
	mov.w r0,@(0x4,r4)
	mov.w r0,@(0x6,r4)
	mov.w r0,@(0x8,r4)
	rts
	mov.w r0,@(0xA,r4)

;==============================================
loc_8c047594:
	mov.l @(loc_8c047614,PC),r3
	mov 0x3E,r0
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	cmp/pz r2
	bf loc_8c0475f8
	mov.b @(r0,r4),r3
	mov r4,r1
	add 0x18,r1
	mov.w @(loc_8c0475fe,PC),r0
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r1,r3
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c0475f8
	mov 0x3E,r0
	mov r4,r2
	mov.b @(r0,r4),r6
	add 0x18,r2
	mov.w @(loc_8c047600,PC),r0
	mov r6,r3
	shll r6
	add r3,r6
	shll2 r6
	add r2,r6
	mov.l @(0x4,r6),r3
	mov.l @r6,r5
	mov.w @(r0,r3),r2
	mov.w @(r0,r5),r5
	mov.l @(0x8,r6),r3
	add r2,r5
	mov.w @(r0,r3),r2
	mov.w @(loc_8c047602,PC),r3
	add r2,r5
	exts.w r5,r5
	cmp/eq r3,r5
	bf loc_8c0475f8
	mov 0x3E,r0
	mov.w @(loc_8c047604,PC),r2
	mov.b @(r0,r4),r1
	mov.l @(loc_8c047618,PC),r0
	muls.w r2,r1
	sts macl,r1
	mov.w @(r0,r1),r3
	add 0x50,r3
	mov.w r3,@(r0,r1)

loc_8c0475f8:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0475fc:
	#data 0x050e
loc_8c0475fe:
	#data 0x0525
loc_8c047600:
	#data 0x0420
loc_8c047602:
	#data 0x01b0
loc_8c047604:
	#data 0x05a4
	#align4

loc_8c047608:
	#data work.GameGlobalPointer

loc_8c04760c:
	#data bank14.loc_8c14e480

loc_8c047610:
	#data 0x8c289730

loc_8c047614:
	#data 0x8c2896b0

loc_8c047618:
	#data 0x8c26884e

;==============================================
loc_8c04761c:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c04766e
	mov.w @(loc_8c047722,PC),r0
	mov.l @(r0,r14),r3
	add 0x3C,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c04766e
	mov.l @(loc_8c047734,PC),r2
	mov.b @r2,r4
	extu.b r4,r3
	tst r3,r3
	bt loc_8c04765e
	mov.b @(0x2,r14),r0
	mov 0x01,r5
	mov r5,r3
	extu.b r4,r4
	extu.b r0,r0
	xor r5,r0
	shad r0,r3
	tst r3,r4
	bf loc_8c04766e
	mov.w @(loc_8c047724,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04765e
	mov.l @(loc_8c047738,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04765e:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(loc_8c04773c,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04766e:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c047672:
	mov r4,r3
	mov.l @(loc_8c047740,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3

loc_8c047680:
	jmp @r3
	add 0x04,r15

loc_8c047684:
	mov.w @(loc_8c047726,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c047728,PC),r0
	mov.l @(r0,r14),r2
	mov.l @(0x18,r2),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c0476b2
	mov 0x00,r6
	mov.l @(loc_8c047744,PC),r3
	mov 0x01,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	mov r6,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c0476b2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0476b8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c047748,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04774c,PC),r3
	mov 0x02,r1
	mov.b @r3,r2
	extu.b r2,r2
	cmp/gt r1,r2
	bf loc_8c04771c
	mov 0x01,r0
	mov.w @(loc_8c04772a,PC),r4
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov 0x80,r3
	mov.b r0,@(0x6,r14)
	add r14,r4
	mov.b r0,@(0x5,r14)
	mov 0x00,r1
	mov.w @(loc_8c047726,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @r4,r2
	mov.l @(loc_8c047750,PC),r3
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8c04770a
	mov.b @(0x2,r14),r0
	tst r0,r0
	bf loc_8c0476fc
	bra loc_8c0476fe
	mov 0x01,r2

loc_8c0476fc:
	mov r1,r2

loc_8c0476fe:
	mov.w @(loc_8c04772c,PC),r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r3
	mov.w @(loc_8c04772e,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)

loc_8c04770a:
	mov.w @(loc_8c047730,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c047754,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov r2,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04771c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c047722:
	#data 0x020c

loc_8c047724:
	#data 0x03f0

loc_8c047726:
	#data 0x019d

loc_8c047728:
	#data 0x0428

loc_8c04772a:
	#data 0x0414

loc_8c04772c:
	#data 0x01d2

loc_8c04772e:
	#data 0x0130

loc_8c047730:
	#data 0x01d0
	#align4

loc_8c047734:
	#data 0x8c2895f6

loc_8c047738:
	#data bank05.loc_8c0510d8

loc_8c04773c:
	#data bank14.loc_8c14e5d4

loc_8c047740:
	#data bank14.loc_8c14e5e4

loc_8c047744:
	#data bank03.loc_8c034e8c

loc_8c047748:
	#data bank03.loc_8c034dee

loc_8c04774c:
	#data 0x8c2895f0

loc_8c047750:
	#data 0x06000000

loc_8c047754:
	#data bank05.loc_8c0532a8


;==============================================
loc_8c047758:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c04777e
	lds.l @r15+,pr
	mov.w @(loc_8c0477de,PC),r0
	mov r14,r4
	mov.l @r15+,r12
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @r15+,r13
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04777e:
	mov.l @(loc_8c0477e8,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0477ec,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c0477e0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047798
	mov.l @(loc_8c0477f0,PC),r3
	jsr @r3
	mov r14,r4

loc_8c047798:
	mov.w @(loc_8c0477e2,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0477a6
	mov.l @(loc_8c0477f4,PC),r3
	jsr @r3
	mov r14,r4

loc_8c0477a6:
	mov.l @(loc_8c0477f8,PC),r5
	mov 0x02,r3
	mov.b @(0x1,r5),r0
	extu.b r0,r4
	tst r4,r3
	bf.s loc_8c0477c6
	mov 0x00,r13
	mov 0x38,r0
	mov.b @(r0,r5),r1
	mov 0x01,r3
	mov.b @(0x2,r14),r0
	extu.b r1,r1
	extu.b r0,r0
	shad r0,r3
	tst r3,r1
	bt loc_8c047800

loc_8c0477c6:
	mov.w @(loc_8c0477e4,PC),r0
	mov.l @(loc_8c0477fc,PC),r3
	mov.w @(r0,r14),r2
	and r3,r2
	mov.w r2,@(r0,r14)
	add 0x0E,r0
	mov.w r13,@(r0,r14)
	add 0xFC,r0
	mov.w r13,@(r0,r14)
	add 0xFE,r0
	bra loc_8c047838
	mov.w r13,@(r0,r14)

;##############################################
loc_8c0477de:
	#data 0x0428
loc_8c0477e0:
	#data 0x0525
loc_8c0477e2:
	#data 0x0411
loc_8c0477e4:
	#data 0x0340
	#align4
loc_8c0477e8:
	#data bank05.loc_8c051230
loc_8c0477ec:
	#data bank05.loc_8c05c14e
loc_8c0477f0:
	#data bank05.loc_8c05b440
loc_8c0477f4:
	#data loc_8c04fc20
loc_8c0477f8:
	#data 0x8c2895f0
loc_8c0477fc:
	#data 0x00008000

;----------------------------------------------
loc_8c047800:
	mov 0x04,r3
	tst r3,r4
	bt loc_8c047838
	mov.w @(loc_8c0478f4,PC),r0
	mov.w @(loc_8c0478f2,PC),r4
	mov.w @(r0,r14),r1
	and r4,r1
	mov.w r1,@(r0,r14)
	add 0x08,r0
	mov.w @(r0,r14),r2
	and r4,r2
	mov.w r2,@(r0,r14)
	add 0xFA,r0
	mov.w @(r0,r14),r1
	and r4,r1
	mov.w r1,@(r0,r14)
	add 0x08,r0
	mov.w @(r0,r14),r2
	and r4,r2
	mov.w r2,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r14),r1
	and r4,r1
	mov.w r1,@(r0,r14)
	add 0xFE,r0
	mov.w @(r0,r14),r2
	and r4,r2
	mov.w r2,@(r0,r14)

loc_8c047838:
	mov.w @(loc_8c0478f6,PC),r0
	mov.l @(loc_8c04790c,PC),r2
	mov.b r13,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c0478f8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047850
	mov.l @(loc_8c047910,PC),r3
	jsr @r3
	mov r14,r4

loc_8c047850:
	mov.w @(loc_8c0478fa,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04785e
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c04785e:
	mov.w @(loc_8c0478fc,PC),r0
	mov.l @(r0,r14),r2
	add 0x29,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c047870
	mov.l @(loc_8c047914,PC),r3
	jsr @r3
	mov r14,r4

loc_8c047870:
	mov.w @(loc_8c0478f6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04787c
	bra loc_8c047bc2
	nop

loc_8c04787c:
	mov.w @(loc_8c0478fe,PC),r0
	mov.l @(r0,r14),r3
	mov.l @r3,r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c047900,PC),r0
	mov.l @(loc_8c047918,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c047902,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0478a0
	mov 0x01,r12
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)

loc_8c0478a0:
	mov.w @(loc_8c047904,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c047924
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c047906,PC),r0
	mov r0,r3
	add 0xF0,r3
	add r14,r3
	mov.w @(r0,r14),r2
	mov.w @r3,r3
	or r3,r2
	mov.w @(loc_8c047908,PC),r3
	mov.w r2,@(r0,r14)
	add 0x02,r0
	add r14,r3
	mov.w @(r0,r14),r2
	mov.w @r3,r3
	or r3,r2
	mov.l @(loc_8c04791c,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c0478e0
	mov.l @(loc_8c047920,PC),r2
	jsr @r2
	mov r14,r4

loc_8c0478e0:
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0478ec
	bra loc_8c047ad0
	nop

loc_8c0478ec:
	mov.w @(loc_8c04790a,PC),r0
	bra loc_8c047ad0
	mov.b r12,@(r0,r14)

;##############################################
loc_8c0478f2:
	#data 0x0c00
loc_8c0478f4:
	#data 0x0340
loc_8c0478f6:
	#data 0x0254
loc_8c0478f8:
	#data 0x03f9
loc_8c0478fa:
	#data 0x023f
loc_8c0478fc:
	#data 0x020c
loc_8c0478fe:
	#data 0x0428
loc_8c047900:
	#data 0x029e
loc_8c047902:
	#data 0x01e6
loc_8c047904:
	#data 0x01a0
loc_8c047906:
	#data 0x0350
loc_8c047908:
	#data 0x0348
loc_8c04790a:
	#data 0x01ea
	#align4

loc_8c04790c:
	#data bank05.loc_8c053cf4

loc_8c047910:
	#data bank05.loc_8c053d20

loc_8c047914:
	#data bank05.loc_8c0502a4

loc_8c047918:
	#data bank05.loc_8c0506f8

loc_8c04791c:
	#data bank05.loc_8c059946

loc_8c047920:
	#data bank05.loc_8c0510d8

;----------------------------------------------
loc_8c047924:
	mov.w @(loc_8c047a0a,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c047932
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c047932:
	mov.w @(loc_8c047a0c,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c047940
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c047940:
	mov.w @(loc_8c047a0e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04794e
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c04794e:
	mov.w @(loc_8c047a10,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04795c
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c04795c:
	mov.w @(loc_8c047a12,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04796a
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c04796a:
	mov.w @(loc_8c047a14,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c047978
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c047978:
	mov.w @(loc_8c047a16,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c047986
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c047986:
	mov.w @(loc_8c047a18,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c047994
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c047994:
	mov.w @(loc_8c047a1a,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0479a2
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c0479a2:
	mov.w @(loc_8c047a1c,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0479b0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c0479b0:
	mov.w @(loc_8c047a1e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0479be
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c0479be:
	mov.w @(loc_8c047a20,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0479d8
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pl r3
	bt loc_8c0479d8
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)

loc_8c0479d8:
	mov.w @(loc_8c047a22,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0479e6
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)

loc_8c0479e6:
	mov.w @(loc_8c047a24,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0479f4
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)

loc_8c0479f4:
	mov.w @(loc_8c047a22,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bt loc_8c047a04
	mov.w @(loc_8c047a24,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c047a28

loc_8c047a04:
	mov.w @(loc_8c047a26,PC),r0
	bra loc_8c047a2c
	mov.b r12,@(r0,r14)

;##############################################
loc_8c047a0a:
	#data 0x01ed
loc_8c047a0c:
	#data 0x01eb
loc_8c047a0e:
	#data 0x0237
loc_8c047a10:
	#data 0x01ec
loc_8c047a12:
	#data 0x01e0
loc_8c047a14:
	#data 0x01ef
loc_8c047a16:
	#data 0x01ee
loc_8c047a18:
	#data 0x01f0
loc_8c047a1a:
	#data 0x01f1
loc_8c047a1c:
	#data 0x01f2
loc_8c047a1e:
	#data 0x01f3
loc_8c047a20:
	#data 0x0328
loc_8c047a22:
	#data 0x03ea
loc_8c047a24:
	#data 0x03ec
loc_8c047a26:
	#data 0x0200

;----------------------------------------------
loc_8c047a28:
	mov.w @(loc_8c047b18,PC),r0
	mov.b r13,@(r0,r14)

loc_8c047a2c:
	mov.w @(loc_8c047b1a,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c047a44
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	tst r3,r3
	bf loc_8c047a44
	mov.w @(loc_8c047b1c,PC),r0
	mov.b r13,@(r0,r14)

loc_8c047a44:
	mov.w @(loc_8c047b1e,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c047a5c
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	tst r3,r3
	bf loc_8c047a5c
	mov.w @(loc_8c047b20,PC),r0
	mov.b r13,@(r0,r14)

loc_8c047a5c:
	mov.w @(loc_8c047b22,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047a74
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pl r3
	bt loc_8c047a74
	mov.w @(loc_8c047b24,PC),r0
	mov.b r13,@(r0,r14)

loc_8c047a74:
	mov.w @(loc_8c047b26,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047a8c
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pl r3
	bt loc_8c047a8c
	mov.w @(loc_8c047b28,PC),r0
	mov.b r13,@(r0,r14)

loc_8c047a8c:
	mov.w @(loc_8c047b2a,PC),r0
	mov.b @(r0,r14),r3
	cmp/pl r3
	bf loc_8c047a9a
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)

loc_8c047a9a:
	mov.b @(0x5,r14),r0
	mov.l @(loc_8c047b3c,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c047b2c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047ab6
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c047ab6:
	mov.w @(loc_8c047b2e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c047ac4
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c047ac4:
	mov.w @(loc_8c047b30,PC),r0
	mov.l @(r0,r14),r2
	add 0x29,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c047adc

loc_8c047ad0:
	mov.l @(loc_8c047b40,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c047b44,PC),r3
	jsr @r3
	mov r14,r4

loc_8c047adc:
	mov.w @(loc_8c047b32,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c047b54
	mov.w @(loc_8c047b34,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c047b54
	mov.w @(loc_8c047b36,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c047b54
	mov.w @(loc_8c047b34,PC),r0
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	cmp/pl r3
	bt loc_8c047b50
	mov.w @(loc_8c047b38,PC),r0
	mov.l @(loc_8c047b48,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c047b4c,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	bra loc_8c047b54
	nop

;##############################################
loc_8c047b18:
	#data 0x0200

loc_8c047b1a:
	#data 0x03e6

loc_8c047b1c:
	#data 0x03ee

loc_8c047b1e:
	#data 0x03e8

loc_8c047b20:
	#data 0x03ef

loc_8c047b22:
	#data 0x03f1

loc_8c047b24:
	#data 0x03f0

loc_8c047b26:
	#data 0x03f8

loc_8c047b28:
	#data 0x03f9

loc_8c047b2a:
	#data 0x027a

loc_8c047b2c:
	#data 0x01f4

loc_8c047b2e:
	#data 0x0324

loc_8c047b30:
	#data 0x020c

loc_8c047b32:
	#data 0x0202

loc_8c047b34:
	#data 0x03e4

loc_8c047b36:
	#data 0x01a0

loc_8c047b38:
	#data 0x03f2
	#align4

loc_8c047b3c:
	#data bank14.loc_8c14e5ec

loc_8c047b40:
	#data bank05.loc_8c0500ac

loc_8c047b44:
	#data bank05.loc_8c0501ac

loc_8c047b48:
	#data bank05.loc_8c059e5c

loc_8c047b4c:
	#data bank03.loc_8c035162


;----------------------------------------------
loc_8c047b50:
	mov.w @(loc_8c047c14,PC),r0
	mov.b r12,@(r0,r14)

loc_8c047b54:
	mov.l @(loc_8c047c2c,PC),r2
	mov.w @(loc_8c047c16,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c047b6c
	mov.w @(loc_8c047c18,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c047b6c
	mov.w @(loc_8c047c14,PC),r0
	mov.b r12,@(r0,r14)

loc_8c047b6c:
	mov.w @(loc_8c047c18,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c047b7c
	mov.w @(loc_8c047c14,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047b82

loc_8c047b7c:
	mov.l @(loc_8c047c30,PC),r3
	jsr @r3
	mov r14,r4

loc_8c047b82:
	mov.l @(loc_8c047c34,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c047c1a,PC),r0
	mov 0x80,r4
	mov.b r4,@(r0,r14)
	add 0x50,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047b9a
	mov.w @(loc_8c047c1a,PC),r0
	mov.b r13,@(r0,r14)

loc_8c047b9a:
	mov.w @(loc_8c047c1c,PC),r0
	mov.b r4,@(r0,r14)
	add 0x50,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c047bbe
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c047bbe
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c047bc2
	mov.w @(loc_8c047c1e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c047bc2

loc_8c047bbe:
	mov.w @(loc_8c047c1c,PC),r0
	mov.b r13,@(r0,r14)

loc_8c047bc2:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c047bcc:
	mov.w @(loc_8c047c20,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047bea
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	tst r3,r3
	bf loc_8c047bea
	mov.w @(loc_8c047c22,PC),r0
	mov 0x50,r1
	mov.b r1,@(r0,r14)

loc_8c047bea:
	mov.w @(loc_8c047c24,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0xA8,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c047c38,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c047c02
	mov.w @(loc_8c047c26,PC),r0
	mov.b r4,@(r0,r14)

loc_8c047c02:
	mov.w @(loc_8c047c28,PC),r0
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_8c047c3c,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c047c14:
	#data 0x03f2
loc_8c047c16:
	#data 0x00b3
loc_8c047c18:
	#data 0x0202
loc_8c047c1a:
	#data 0x019c
loc_8c047c1c:
	#data 0x019d
loc_8c047c1e:
	#data 0x01f6
loc_8c047c20:
	#data 0x01e2
loc_8c047c22:
	#data 0x01e1
loc_8c047c24:
	#data 0x0228
loc_8c047c26:
	#data 0x023a
loc_8c047c28:
	#data 0x01d0
	#align4

loc_8c047c2c:
	#data work.GameGlobalPointer
loc_8c047c30:
	#data bank05.loc_8c059dda
loc_8c047c34:
	#data bank05.loc_8c057694
loc_8c047c38:
	#data bank14.loc_8c14e688
loc_8c047c3c:
	#data bank14.loc_8c14e5fc

;==============================================
loc_8c047c40:
	mov.l @(loc_8c047cf0,PC),r2
	mov 0x06,r1
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bf.s loc_8c047c86
	mov r4,r14
	mov.w @(loc_8c047ce2,PC),r0
	mov.b @(r0,r14),r0
	cmp/pz r0
	bf loc_8c047c86
	mov.w @(loc_8c047ce2,PC),r0
	mov 0x80,r5
	mov.b @(r0,r14),r4
	and r4,r5
	mov r4,r0
	nop
	mov.w @(loc_8c047ce2,PC),r1
	add 0x01,r0
	and r5,r0
	mov.l @(loc_8c047cf4,PC),r3
	and 0x0F,r0
	mov r14,r4
	add r14,r1
	mov.b r0,@r1
	mov 0x16,r5
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c047c86:
	mova @(0x70,PC),r0
	fmov @r0,fr15
	bsr loc_8c047dec
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c047cbc
	mov.w @(loc_8c047ce4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c047ca0
	bra loc_8c047dca
	nop

loc_8c047ca0:
	mov.w @(loc_8c047ce6,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr15,fr3
	fcmp/gt fr2,fr3
	bt loc_8c047cb2
	bra loc_8c047dca
	nop

loc_8c047cb2:
	mov.w @(loc_8c047ce8,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	bra loc_8c047dca
	fmov fr3,@(r0,r14)

loc_8c047cbc:
	mov.w @(loc_8c047cea,PC),r0
	mov.w @(loc_8c047cec,PC),r2
	mov.w @(r0,r14),r3
	mov.l @(loc_8c047cfc,PC),r13
	extu.w r3,r3
	cmp/eq r2,r3
	bf loc_8c047d04
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c047d28
	mov.l @(loc_8c047d00,PC),r3
	mov 0x00,r6
	mov r6,r5
	jsr @r3
	mov r14,r4
	bra loc_8c047d28
	nop

;##############################################
loc_8c047ce2:
	#data 0x01f8

loc_8c047ce4:
	#data 0x0203

loc_8c047ce6:
	#data 0x041c

loc_8c047ce8:
	#data 0x0208

loc_8c047cea:
	#data 0x0158

loc_8c047cec:
	#data 0x1803
	#align4

loc_8c047cf0:
	#data 0x8c2895f0

loc_8c047cf4:
	#data bank05.loc_8c0532a8

loc_8c047cf8:
	#data 0x42092492

loc_8c047cfc:
	#data bank03.loc_8c034dee

loc_8c047d00:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c047d04:
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c047d12
	bsr loc_8c047e7e
	mov r14,r4

loc_8c047d12:
	mov.w @(loc_8c047dd4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047d28
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c047d28
	bsr loc_8c047e7e
	mov r14,r4

loc_8c047d28:
	mov.w @(loc_8c047dd6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047d58
	mov.w @(loc_8c047dd8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047d4e
	mov.w @(loc_8c047dda,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr15,fr3
	fcmp/gt fr2,fr3
	bf loc_8c047d4e
	mov.w @(loc_8c047ddc,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c047d4e:
	mov.l @(loc_8c047de4,PC),r3
	mov 0x18,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4

loc_8c047d58:
	mov.w @(loc_8c047dde,PC),r0
	mov.w @(loc_8c047de0,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bt loc_8c047da8
	mov.w @(loc_8c047dd8,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c047da8
	bsr loc_8c047f46
	mov r14,r4
	mov.w @(loc_8c047dd4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c047d7c
	bsr loc_8c047f46
	mov r14,r4

loc_8c047d7c:
	mov.w @(loc_8c047dda,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr15,fr3
	fcmp/gt fr2,fr3
	bf loc_8c047da8
	fmov @(r0,r14),fr3
	mov 0x64,r0
	mov.l @(loc_8c047de8,PC),r3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c047ddc,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x64,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	bra loc_8c047dca
	fmov fr3,@(r0,r14)

loc_8c047da8:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x0B,r0
	bf loc_8c047dbc
	mov.w @(loc_8c047de2,PC),r0
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4

loc_8c047dbc:
	lds.l @r15+,pr
	mov.l @(loc_8c047de8,PC),r3
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c047dca:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c047dd4:
	#data 0x0200

loc_8c047dd6:
	#data 0x029c

loc_8c047dd8:
	#data 0x0203

loc_8c047dda:
	#data 0x041c

loc_8c047ddc:
	#data 0x0208

loc_8c047dde:
	#data 0x0158

loc_8c047de0:
	#data 0x1803

loc_8c047de2:
	#data 0x0428
	#align4

loc_8c047de4:
	#data bank03.loc_8c034e8c

loc_8c047de8:
	#data bank05.loc_8c052af0


;==============================================
loc_8c047dec:
	mov.w @(loc_8c047eb2,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c047e06
	mov.l @(loc_8c047eb8,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047e6e

loc_8c047e06:
	mov.l @(loc_8c047ebc,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047e6e
	mov.l @(loc_8c047ec0,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c047e6e
	mov.l @(loc_8c047ec4,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047e6e
	mov.l @(loc_8c047ec8,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047e6e
	mov.l @(loc_8c047ecc,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047e6e
	mov.l @(loc_8c047ed0,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047e6e
	mov.l @(loc_8c047ed4,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047e6e
	mov.l @(loc_8c047ed8,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c047e6e
	mov.l @(loc_8c047edc,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c047e76

loc_8c047e6e:
	lds.l @r15+,pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

loc_8c047e76:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c047e7e:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c047e92
	cmp/eq 0x38,r0
	bt loc_8c047ea0
	bra loc_8c047eae
	nop

loc_8c047e92:
	mov.w @(loc_8c047eb4,PC),r0
	mov r14,r4
	mov.l @(r0,r14),r3
	mov 0x60,r0
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c047ea0:
	mov.w @(loc_8c047eb4,PC),r0
	mov r14,r4
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c047eae:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c047eb2:
	#data 0x0201
loc_8c047eb4:
	#data 0x0428
	#align4

loc_8c047eb8:
	#data bank05.loc_8c054400
loc_8c047ebc:
	#data bank05.loc_8c053f14
loc_8c047ec0:
	#data bank05.loc_8c051af6
loc_8c047ec4:
	#data bank05.loc_8c0518a0
loc_8c047ec8:
	#data bank05.loc_8c0526d6
loc_8c047ecc:
	#data bank05.loc_8c05211c
loc_8c047ed0:
	#data bank05.loc_8c051bca
loc_8c047ed4:
	#data bank05.loc_8c052a72
loc_8c047ed8:
	#data bank05.loc_8c052b18
loc_8c047edc:
	#data bank05.loc_8c051868

;==============================================
loc_8c047ee0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048014,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c047f40
	mov.l @(loc_8c048018,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047f40
	mov.l @(loc_8c04801c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047f40
	mov.l @(loc_8c048020,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c047f40
	mov.w @(loc_8c048002,PC),r0
	mov.l @(r0,r14),r3
	add 0x08,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c047f30
	mov.w @(loc_8c048004,PC),r0
	mov 0xFF,r1
	mov.l @(loc_8c048024,PC),r3
	mov r14,r4
	mov.b r1,@(r0,r14)
	mov 0x02,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c047f30:
	mov.l @(loc_8c048028,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04802c,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c047f40:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c047f46:
	mov.w @(loc_8c048006,PC),r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	cmp/pz r3
	bt loc_8c047f88
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r4),r2
	mov.l @(loc_8c048030,PC),r0
	mov.b @(r0,r2),r3
	mova @(0xD0,PC),r0
	fmov @r0,fr2
	mov 0x38,r0
	lds r3,fpul
	mov.l @(loc_8c048038,PC),r3
	float fpul,fr3
	fmov fr3,fr4
	fmul fr2,fr4
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c048008,PC),r0
	mov.b @(r0,r4),r1
	add 0x01,r1
	jsr @r3
	mov 0x28,r0
	mov.w @(loc_8c048008,PC),r1
	add r4,r1
	mov.b r0,@r1

loc_8c047f88:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c047f8e:
	mov.w @(loc_8c04800c,PC),r0
	mov 0xF6,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c04800a,PC),r4
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r14),r5
	mov.w @(loc_8c048004,PC),r0
	extu.w r5,r5
	and r4,r5
	mov.b @(r0,r14),r2
	shad r3,r5
	exts.b r5,r5
	cmp/eq r2,r5
	bt.s loc_8c047fba
	mov 0x00,r12
	mov r12,r0
	nop
	mov.b r0,@(0x6,r14)

loc_8c047fba:
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04803c,PC),r13
	tst r0,r0
	bf.s loc_8c048064
	mov 0x04,r11
	mov.b @(0x6,r14),r0
	mov 0xF6,r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04800c,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(loc_8c048004,PC),r0
	extu.w r3,r3
	and r4,r3
	shad r2,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	tst r11,r0
	bf loc_8c048040
	mov r12,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0x02,r3
	mov.w @(loc_8c04800e,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c048010,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c04804a
	mov.w @(loc_8c04800e,PC),r0
	mov.b @(r0,r14),r2
	add 0x06,r2
	bra loc_8c04804a
	mov.b r2,@(r0,r14)

;##############################################
loc_8c048002:
	#data 0x01c8
loc_8c048004:
	#data 0x01d3
loc_8c048006:
	#data 0x023d
loc_8c048008:
	#data 0x023e
loc_8c04800a:
	#data 0x0400
loc_8c04800c:
	#data 0x034a
loc_8c04800e:
	#data 0x0158
loc_8c048010:
	#data 0x0202
	#align4
loc_8c048014:
	#data bank05.loc_8c051af6

loc_8c048018:
	#data bank05.loc_8c0518a0

loc_8c04801c:
	#data bank05.loc_8c0526d6

loc_8c048020:
	#data bank05.loc_8c051bca

loc_8c048024:
	#data bank05.loc_8c0532a8

loc_8c048028:
	#data bank03.loc_8c034dee

loc_8c04802c:
	#data bank05.loc_8c052af0

loc_8c048030:
	#data bank14.loc_8c14e6ab

loc_8c048034:
	#data 0x40092492

loc_8c048038:
	#data bank12.loc_8c1292d4

loc_8c04803c:
	#data 0x8c2895f0

;----------------------------------------------
loc_8c048040:
	mov 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x06,r3
	mov.w @(loc_8c04814c,PC),r0
	mov.b r3,@(r0,r14)

loc_8c04804a:
	mov.w @(loc_8c04814c,PC),r0
	mov 0x00,r5
	mov r0,r3
	add 0x7B,r3
	add r14,r3
	mov.b @(r0,r14),r2
	mov.b @r3,r3
	add r3,r2
	mov.l @(loc_8c048154,PC),r3
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4

loc_8c048064:
	mov.l @(loc_8c048158,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c048074
	bra loc_8c048232
	nop

loc_8c048074:
	mov.l @(loc_8c04815c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c048084
	bra loc_8c048232
	nop

loc_8c048084:
	mov.l @(loc_8c048160,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c048092
	bra loc_8c048232
	nop

loc_8c048092:
	mov.l @(loc_8c048164,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0480a2
	bra loc_8c048232
	nop

loc_8c0480a2:
	mov.l @(loc_8c048168,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0480b2
	bra loc_8c048232
	nop

loc_8c0480b2:
	mov.l @(loc_8c04816c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0480c2
	bra loc_8c048232
	nop

loc_8c0480c2:
	mov.l @(loc_8c048170,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0480d2
	bra loc_8c048232
	nop

loc_8c0480d2:
	mov.l @(loc_8c048174,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0480e2
	bra loc_8c048232
	nop

loc_8c0480e2:
	mov.l @(loc_8c048178,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c0480f0
	bra loc_8c048232
	nop

loc_8c0480f0:
	mov.l @(loc_8c04817c,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c048100
	bra loc_8c048232
	nop

loc_8c048100:
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c0481c0
	mov.w @(loc_8c04814e,PC),r0
	mov.w @(loc_8c048150,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0481c0
	mov.l @(loc_8c048180,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c048124
	bra loc_8c048232
	nop

loc_8c048124:
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	mov r0,r4
	and r11,r4
	tst r4,r4
	bf loc_8c04813e
	mov.b @(0x7,r14),r0
	tst r0,r0
	bt loc_8c04813e
	mov r12,r0
	nop
	bra loc_8c04818e
	mov.b r0,@(0x6,r14)

loc_8c04813e:
	tst r4,r4
	bt loc_8c048188
	mov.l @(loc_8c048184,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c04818e
	nop

;##############################################
loc_8c04814c:
	#data 0x0158
loc_8c04814e:
	#data 0x0340
loc_8c048150:
	#data 0x3c00
	#align4
loc_8c048154:
	#data bank03.loc_8c034e8c
loc_8c048158:
	#data bank05.loc_8c053f14
loc_8c04815c:
	#data bank05.loc_8c054400
loc_8c048160:
	#data bank05.loc_8c051af6
loc_8c048164:
	#data bank05.loc_8c0518a0
loc_8c048168:
	#data bank05.loc_8c0526d6
loc_8c04816c:
	#data bank05.loc_8c05211c
loc_8c048170:
	#data bank05.loc_8c051bca
loc_8c048174:
	#data bank05.loc_8c052a72
loc_8c048178:
	#data bank05.loc_8c052b18
loc_8c04817c:
	#data bank05.loc_8c051868
loc_8c048180:
	#data bank05.loc_8c052af0
loc_8c048184:
	#data loc_8c04fe7c

;----------------------------------------------
loc_8c048188:
	mov.l @(loc_8c0482a8,PC),r3
	jsr @r3
	mov r14,r4

loc_8c04818e:
	mov.w @(loc_8c048298,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04819c
	mov.l @(loc_8c0482ac,PC),r3
	jsr @r3
	mov r14,r4

loc_8c04819c:
	mov.l @(loc_8c0482ac,PC),r2
	jsr @r2
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
	fadd fr3,fr2
	bra loc_8c048232
	fmov fr2,@(r0,r14)

loc_8c0481c0:
	mov.w @(loc_8c04829a,PC),r0
	mov 0x00,r5
	mov.l @(loc_8c0482b0,PC),r3
	mov.b @(r0,r14),r12
	jsr @r3
	mov r14,r4
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	tst r11,r0
	bf loc_8c048232
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x38,r0
	bt loc_8c0481e4
	cmp/eq 0x3A,r0
	bt loc_8c0481fa
	bra loc_8c048210
	nop

loc_8c0481e4:
	lds.l @r15+,pr
	mov.w @(loc_8c04829c,PC),r0
	mov r14,r4
	mov.l @r15+,r11
	mov.l @(r0,r14),r3
	mov 0x64,r0
	mov.l @r15+,r12
	mov.l @(r0,r3),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0481fa:
	lds.l @r15+,pr
	mov.w @(loc_8c04829c,PC),r0
	mov r14,r4
	mov.l @r15+,r11
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @r15+,r12
	mov.l @(r0,r2),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c048210:
	mov.w @(loc_8c04829e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt.s loc_8c04821e
	add 0x04,r12
	mov 0x01,r12

loc_8c04821e:
	lds.l @r15+,pr
	mov r12,r6
	mov.l @(loc_8c0482b4,PC),r2
	mov r14,r4
	mov 0x00,r5
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c048232:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04823e:
	mov.w @(loc_8c0482a0,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c0482b8,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048292
	mov.w @(loc_8c0482a2,PC),r0
	mov.b @(r0,r14),r0
	tst r0,r0
	movt r0
	tst 0x0F,r0
	bf loc_8c048270
	mov.l @(loc_8c0482ac,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0482a2,PC),r0
	mov.b @(r0,r14),r0
	tst 0x0F,r0
	bf loc_8c048292

loc_8c048270:
	mov.w @(loc_8c0482a4,PC),r0
	mov 0x00,r2
	mov 0x02,r3
	mov.b r2,@(r0,r14)
	add 0x20,r0
	mov.b r3,@(r0,r14)
	mov 0x03,r5
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c0482bc,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0482c0
	mov.l @r15+,r14

loc_8c048292:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c048298:
	#data 0x0200

loc_8c04829a:
	#data 0x01d3

loc_8c04829c:
	#data 0x0428

loc_8c04829e:
	#data 0x0202

loc_8c0482a0:
	#data 0x01f9

loc_8c0482a2:
	#data 0x0141

loc_8c0482a4:
	#data 0x01d9
	#align4

loc_8c0482a8:
	#data loc_8c04fd92

loc_8c0482ac:
	#data bank03.loc_8c034dee

loc_8c0482b0:
	#data bank05.loc_8c0532a8

loc_8c0482b4:
	#data bank03.loc_8c034e8c

loc_8c0482b8:
	#data bank05.loc_8c0526d6

loc_8c0482bc:
	#data bank05.loc_8c0530d8

;----------------------------------------------
loc_8c0482c0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048374,PC),r3
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048368
	mov.l @(loc_8c048378,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048368
	mov.w @(loc_8c04836e,PC),r4
	mov.l @(loc_8c048380,PC),r1
	add r14,r4
	mov.l @(loc_8c04837c,PC),r3
	mov.l @(0x4,r4),r0
	mov.l @r4,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c0482fe
	mov.l @(loc_8c048384,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048368

loc_8c0482fe:
	mov.w @(loc_8c04836e,PC),r4
	mov.l @(loc_8c048388,PC),r3
	add r14,r4
	mov.l @(0x4,r4),r0
	mov.l @r4,r2
	and 0x10,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c048318
	mov.l @(loc_8c04838c,PC),r2
	jsr @r2
	mov r14,r4

loc_8c048318:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x2A,r0
	bf loc_8c04832c
	mov.w @(loc_8c048370,PC),r0
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4

loc_8c04832c:
	mov.l @(loc_8c048390,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c048394,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c048398,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c048368
	mov.l @(loc_8c048378,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048368
	mov.w @(loc_8c048372,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04835e
	mov.l @(loc_8c04839c,PC),r3
	jsr @r3
	mov r14,r4

loc_8c04835e:
	lds.l @r15+,pr
	mov.l @(loc_8c0483a0,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c048368:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04836e:
	#data 0x0414

loc_8c048370:
	#data 0x0428

loc_8c048372:
	#data 0x0525
	#align4

loc_8c048374:
	#data bank05.loc_8c0518a0

loc_8c048378:
	#data bank05.loc_8c0526d6

loc_8c04837c:
	#data 0x184010a0

loc_8c048380:
	#data 0x02000801

loc_8c048384:
	#data bank05.loc_8c051d56

loc_8c048388:
	#data 0xa8400960

loc_8c04838c:
	#data bank05.loc_8c051bec

loc_8c048390:
	#data bank03.loc_8c034dee

loc_8c048394:
	#data loc_8c04fea8

loc_8c048398:
	#data bank05.loc_8c052ce2

loc_8c04839c:
	#data bank05.loc_8c05218a

loc_8c0483a0:
	#data bank05.loc_8c052dac

;==============================================
loc_8c0483a4:
	mov.w @(loc_8c048444,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c0483c0
	mov.l @(loc_8c048448,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04843e

loc_8c0483c0:
	mov.l @(loc_8c04844c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04843e
	mov.l @(loc_8c048450,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c04843e
	mov.l @(loc_8c048454,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04843e
	mov.l @(loc_8c048458,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04843e
	mov.l @(loc_8c04845c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04843e
	mov.l @(loc_8c048460,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04843e
	mov.w @(loc_8c048446,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c048426
	mov.l @(loc_8c048464,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04843e
	mov.l @(loc_8c048468,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c04843e

loc_8c048426:
	mov.l @(loc_8c04846c,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04843e
	lds.l @r15+,pr
	mov.l @(loc_8c048470,PC),r3
	mov 0x00,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04843e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c048444:
	#data 0x01d1

loc_8c048446:
	#data 0x0201
	#align4

loc_8c048448:
	#data bank05.loc_8c053f14

loc_8c04844c:
	#data bank05.loc_8c054400

loc_8c048450:
	#data bank05.loc_8c051af6

loc_8c048454:
	#data bank05.loc_8c0518a0

loc_8c048458:
	#data bank05.loc_8c0526d6

loc_8c04845c:
	#data bank05.loc_8c05211c

loc_8c048460:
	#data bank05.loc_8c052a72

loc_8c048464:
	#data bank05.loc_8c051bca

loc_8c048468:
	#data bank05.loc_8c051868

loc_8c04846c:
	#data bank03.loc_8c034dee

loc_8c048470:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c048474:
	mov.w @(loc_8c048546,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0484c8
	mov.l @(loc_8c04854c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048540
	mov.l @(loc_8c048550,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048540
	mov.l @(loc_8c048554,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c048540
	mov.l @(loc_8c048558,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048540
	mov.l @(loc_8c04855c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048540
	mov.l @(loc_8c048560,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048540

loc_8c0484c8:
	mov.w @(loc_8c048548,PC),r0
	mov.w @(loc_8c04854a,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c0484ea
	mov.l @(loc_8c048564,PC),r3
	mov 0x07,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c048568,PC),r2
	mov r14,r4
	mov 0x02,r6
	mov 0x03,r5
	jmp @r2
	mov.l @r15+,r14

loc_8c0484ea:
	mov 0x5C,r1
	mov.l @(loc_8c04856c,PC),r3
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
	mov 0x6c,r1
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
	mov.l @(loc_8c048570,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c048540
	lds.l @r15+,pr
	mov.l @(loc_8c048564,PC),r2
	mov 0x06,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c048540:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c048546:
	#data 0x0201

loc_8c048548:
	#data 0x0340

loc_8c04854a:
	#data 0x1000
	#align4

loc_8c04854c:
	#data bank05.loc_8c054400

loc_8c048550:
	#data bank05.loc_8c053f14

loc_8c048554:
	#data bank05.loc_8c051af6

loc_8c048558:
	#data bank05.loc_8c0518a0

loc_8c04855c:
	#data bank05.loc_8c0526d6

loc_8c048560:
	#data bank05.loc_8c052af0

loc_8c048564:
	#data bank05.loc_8c0532a8

loc_8c048568:
	#data bank03.loc_8c034e8c

loc_8c04856c:
	#data bank05.loc_8c052c84

loc_8c048570:
	#data bank03.loc_8c034dee


;==============================================
loc_8c048574:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048634,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c04862c
	mov.l @(loc_8c048638,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04862c
	mov.l @(loc_8c04863c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04862c
	mov.w @(loc_8c048632,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0485c6
	mov.l @(loc_8c048640,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04862c
	mov.l @(loc_8c048644,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04862c
	mov.l @(loc_8c048648,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04862c

loc_8c0485c6:
	mov.l @(loc_8c04864c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04862c
	mov 0x5C,r1
	mov.l @(loc_8c048650,PC),r3
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
	mov 0x6c,r1
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
	mov.l @(loc_8c048654,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c048658,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04862c
	lds.l @r15+,pr
	mov.l @(loc_8c04865c,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04862c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c048632:
	#data 0x0201
	#align4

loc_8c048634:
	#data bank05.loc_8c051af6

loc_8c048638:
	#data bank05.loc_8c0518a0

loc_8c04863c:
	#data bank05.loc_8c0526d6

loc_8c048640:
	#data bank05.loc_8c054400

loc_8c048644:
	#data bank05.loc_8c053f14

loc_8c048648:
	#data bank05.loc_8c051bca

loc_8c04864c:
	#data bank05.loc_8c052af0

loc_8c048650:
	#data bank05.loc_8c052c84

loc_8c048654:
	#data bank03.loc_8c034dee

loc_8c048658:
	#data bank05.loc_8c05211c

loc_8c04865c:
	#data bank05.loc_8c052ac6

;==============================================
loc_8c048660:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048710,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c048704
	mov.l @(loc_8c048714,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048704
	mov.l @(loc_8c048718,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048704
	mov.w @(loc_8c04870a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0486be
	mov.l @(loc_8c04871c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048704
	mov.l @(loc_8c048720,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048704
	mov.l @(loc_8c048724,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c048704
	mov.l @(loc_8c048728,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048704

loc_8c0486be:
	mov.l @(loc_8c04872c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048704
	mov.w @(loc_8c04870c,PC),r0
	mov.w @(loc_8c04870e,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c0486ec
	mov.l @(loc_8c048730,PC),r3
	mov 0x05,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c048734,PC),r2
	mov r14,r4
	mov 0x00,r6
	mov 0x03,r5
	jmp @r2
	mov.l @r15+,r14

loc_8c0486ec:
	mov.l @(loc_8c048738,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c048704
	lds.l @r15+,pr
	mov.l @(loc_8c048730,PC),r3
	mov 0x00,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c048704:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04870a:
	#data 0x0201

loc_8c04870c:
	#data 0x0340

loc_8c04870e:
	#data 0x1000
	#align4

loc_8c048710:
	#data bank05.loc_8c051af6

loc_8c048714:
	#data bank05.loc_8c0518a0

loc_8c048718:
	#data bank05.loc_8c0526d6

loc_8c04871c:
	#data bank05.loc_8c054400

loc_8c048720:
	#data bank05.loc_8c053f14

loc_8c048724:
	#data bank05.loc_8c051868

loc_8c048728:
	#data bank05.loc_8c051bca

loc_8c04872c:
	#data bank05.loc_8c052af0

loc_8c048730:
	#data bank05.loc_8c0532a8

loc_8c048734:
	#data bank03.loc_8c034e8c

loc_8c048738:
	#data bank03.loc_8c034dee

;==============================================
loc_8c04873c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048810,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c04879e
	mov.l @(loc_8c048814,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04879e
	mov.l @(loc_8c048818,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04879e
	mov.l @(loc_8c04881c,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c04879e
	mov.l @(loc_8c048820,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04879e
	mov.l @(loc_8c048824,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04879e
	mov.l @(loc_8c048828,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04879e
	lds.l @r15+,pr
	mov.l @(loc_8c04882c,PC),r3
	mov 0x00,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04879e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0487a4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048810,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c048806
	mov.l @(loc_8c048814,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048806
	mov.l @(loc_8c048818,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048806
	mov.l @(loc_8c048820,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048806
	mov.l @(loc_8c048824,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048806
	mov.l @(loc_8c048828,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0487fa
	mov.w @(loc_8c04880c,PC),r0
	mov.w @(loc_8c04880e,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c048806

loc_8c0487fa:
	lds.l @r15+,pr
	mov.l @(loc_8c04882c,PC),r3
	mov 0x06,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c048806:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04880c:
	#data 0x0340

loc_8c04880e:
	#data 0x0c00

loc_8c048810:
	#data bank05.loc_8c051af6

loc_8c048814:
	#data bank05.loc_8c0518a0

loc_8c048818:
	#data bank05.loc_8c0526d6

loc_8c04881c:
	#data bank05.loc_8c051868

loc_8c048820:
	#data bank05.loc_8c051bca

loc_8c048824:
	#data bank05.loc_8c052af0

loc_8c048828:
	#data bank03.loc_8c034dee

loc_8c04882c:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c048830:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c048844
	mov.w @(loc_8c0488f6,PC),r0
	mov 0x05,r2
	mov.b r2,@(r0,r14)

loc_8c048844:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x35,r0
	bf loc_8c048854
	mov.w @(loc_8c0488f8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0488e2

loc_8c048854:
	mov.l @(loc_8c048904,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0488f0
	mov.l @(loc_8c048908,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0488f0
	mov.w @(loc_8c0488fa,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0488b2
	mov.l @(loc_8c04890c,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0488f0
	mov.l @(loc_8c048910,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0488f0
	mov.l @(loc_8c048914,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0488f0
	mov.l @(loc_8c048918,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0488f0
	mov.l @(loc_8c04891c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0488f0
	bra loc_8c0488e2
	nop

loc_8c0488b2:
	mov.l @(loc_8c048910,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0488f0
	mov.l @(loc_8c048914,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0488f0
	mov.w @(loc_8c0488fc,PC),r0
	mov.w @(loc_8c0488fe,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0488e2
	lds.l @r15+,pr
	mov.l @(loc_8c048920,PC),r2
	mov 0x00,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c0488e2:
	mov.w @(loc_8c048900,PC),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(r0,r14),r3
	mov.l @(0x10,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c0488f0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0488f6:
	#data 0x0237

loc_8c0488f8:
	#data 0x0140

loc_8c0488fa:
	#data 0x0201

loc_8c0488fc:
	#data 0x034e

loc_8c0488fe:
	#data 0x0400

loc_8c048900:
	#data 0x0428
	#align4

loc_8c048904:
	#data bank05.loc_8c053f14

loc_8c048908:
	#data bank05.loc_8c054400

loc_8c04890c:
	#data bank05.loc_8c051af6

loc_8c048910:
	#data bank05.loc_8c0518a0

loc_8c048914:
	#data bank05.loc_8c0526d6

loc_8c048918:
	#data bank05.loc_8c051bca

loc_8c04891c:
	#data bank05.loc_8c052a9c

loc_8c048920:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c048924:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x2D,r0
	bt.s loc_8c0489b6
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x35,r0
	bf loc_8c048944
	mov.w @(loc_8c048a06,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0489b6

loc_8c048944:
	mov.l @(loc_8c048a1c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0489c4
	mov.l @(loc_8c048a20,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0489c4
	mov.l @(loc_8c048a24,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0489c4
	mov.l @(loc_8c048a28,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0489c4
	mov.l @(loc_8c048a2c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0489c4
	mov.w @(loc_8c048a08,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0489a2
	mov.l @(loc_8c048a30,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0489c4
	mov.l @(loc_8c048a34,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0489c4
	bra loc_8c0489b6
	nop

loc_8c0489a2:
	mov.w @(loc_8c048a0a,PC),r0
	mov.w @(loc_8c048a0c,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0489b6
	mov.l @(loc_8c048a38,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4

loc_8c0489b6:
	mov.w @(loc_8c048a0e,PC),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(r0,r14),r3
	mov.l @(0x14,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c0489c4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0489ca:
	mov.w @(loc_8c048a10,PC),r0
	mov 0xB4,r3
	mov.l @(loc_8c048a3c,PC),r1
	mov.w @(loc_8c048a12,PC),r2
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r2,@(r0,r4)
	mov 0x05,r2
	mov.b @r1,r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c048a44
	mov.w @(loc_8c048a14,PC),r0
	mov.w @(r0,r4),r0
	cmp/pl r0
	bf loc_8c048a00
	mov.w @(loc_8c048a16,PC),r0
	mov.w @(r0,r4),r3
	add 0xFF,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/pz r3
	bf loc_8c048a44
	mov.w @(loc_8c048a18,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c048a44

loc_8c048a00:
	mov.l @(loc_8c048a40,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c048a06:
	#data 0x0140

loc_8c048a08:
	#data 0x0201

loc_8c048a0a:
	#data 0x034e

loc_8c048a0c:
	#data 0x0800

loc_8c048a0e:
	#data 0x0428

loc_8c048a10:
	#data 0x01e0

loc_8c048a12:
	#data 0x00ff

loc_8c048a14:
	#data 0x0420

loc_8c048a16:
	#data 0x01e4

loc_8c048a18:
	#data 0x01e3
	#align4

loc_8c048a1c:
	#data bank05.loc_8c053f14

loc_8c048a20:
	#data bank05.loc_8c054400

loc_8c048a24:
	#data bank05.loc_8c051af6

loc_8c048a28:
	#data bank05.loc_8c0518a0

loc_8c048a2c:
	#data bank05.loc_8c052838

loc_8c048a30:
	#data bank05.loc_8c051bca

loc_8c048a34:
	#data bank05.loc_8c052a9c

loc_8c048a38:
	#data bank05.loc_8c0532a8

loc_8c048a3c:
	#data 0x8c2895f0

loc_8c048a40:
	#data bank03.loc_8c034dee

;==============================================
loc_8c048a44:
	mov.w @(loc_8c048b4e,PC),r0
	mov 0x00,r2
	mov 0x08,r3
	mov.b r2,@(r0,r4)
	add 0x0C,r0
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c048b5c,PC),r3
	jmp @r3
	mov r2,r5

loc_8c048a56:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048b60,PC),r3
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048a9c
	mov.l @(loc_8c048b64,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c048b50,PC),r0
	mov.b @(r0,r14),r0
	tst 0x0F,r0
	bf loc_8c048a9c
	mov.w @(loc_8c048b52,PC),r0
	mov 0x02,r2
	mov.l @(loc_8c048b68,PC),r3
	mov 0x0E,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c048b54,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c048b6c,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @(loc_8c048b70,PC),r2
	mov 0x00,r5
	add 0x34,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c048a9c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c048aa2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048b74,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c048b78,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048b48
	mov.w @(loc_8c048b56,PC),r4
	mov.l @(loc_8c048b80,PC),r1
	add r14,r4
	mov.l @(loc_8c048b7c,PC),r3
	mov.l @(0x4,r4),r0
	mov.l @r4,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c048ada
	mov.l @(loc_8c048b84,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048b48

loc_8c048ada:
	mov.w @(loc_8c048b56,PC),r4
	mov.l @(loc_8c048b88,PC),r3
	add r14,r4
	mov.l @(0x4,r4),r0
	mov.l @r4,r2
	and 0x10,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c048af4
	mov.l @(loc_8c048b8c,PC),r2
	jsr @r2
	mov r14,r4

loc_8c048af4:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x2A,r0
	bf loc_8c048b08
	mov.w @(loc_8c048b58,PC),r0
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4

loc_8c048b08:
	mov.l @(loc_8c048b64,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c048b90,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c048b94,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c048b60,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048b48
	mov.l @(loc_8c048b98,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c048b9c,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c048ba0,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c048b48
	lds.l @r15+,pr
	mov.l @(loc_8c048ba4,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c048b48:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c048b4e:
	#data 0x01e3
loc_8c048b50:
	#data 0x0141
loc_8c048b52:
	#data 0x01f9
loc_8c048b54:
	#data 0x01d9
loc_8c048b56:
	#data 0x0414
loc_8c048b58:
	#data 0x0428
	#align4
loc_8c048b5c:
	#data bank05.loc_8c0532a8
loc_8c048b60:
	#data bank05.loc_8c0526d6
loc_8c048b64:
	#data bank03.loc_8c034dee
loc_8c048b68:
	#data bank05.loc_8c0530d8
loc_8c048b6c:
	#data loc_8c0424ec
loc_8c048b70:
	#data bank10.loc_8c100eb4
loc_8c048b74:
	#data bank05.loc_8c05218a
loc_8c048b78:
	#data bank05.loc_8c0518a0
loc_8c048b7c:
	#data 0x184010a0
loc_8c048b80:
	#data 0x02000801
loc_8c048b84:
	#data bank05.loc_8c051d56
loc_8c048b88:
	#data 0xa8400960
loc_8c048b8c:
	#data bank05.loc_8c051bec
loc_8c048b90:
	#data loc_8c04ff88
loc_8c048b94:
	#data loc_8c04fea8
loc_8c048b98:
	#data loc_8c05000a
loc_8c048b9c:
	#data bank05.loc_8c050048
loc_8c048ba0:
	#data bank05.loc_8c052ce2
loc_8c048ba4:
	#data bank05.loc_8c052dac

;==============================================
loc_8c048ba8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	mov.l @(loc_8c048ca4,PC),r13
	extu.b r0,r0
	mov.l @(loc_8c048c9c,PC),r11
	mov.l @(loc_8c048ca0,PC),r12
	cmp/eq 0x25,r0
	bt loc_8c048bc8
	bra loc_8c048cac
	nop

loc_8c048bc8:
	mov.w @(loc_8c048c90,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bf loc_8c048cac
	mov.w @(loc_8c048c92,PC),r0
	mov.w @(loc_8c048c94,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf.s loc_8c048c34
	fldi0 fr15
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c048bee
	bra loc_8c048d0a
	nop

loc_8c048bee:
	mov.w @(loc_8c048c96,PC),r0
	mov.l @(r0,r14),r3
	mov 0x60,r0
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c048c98,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c048c06
	bra loc_8c048d26
	nop

loc_8c048c06:
	mov.w @(loc_8c048c9a,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6c,r0
	fmov fr15,@(r0,r14)
	jsr @r11
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048d0a
	jsr @r13
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048d0a
	bra loc_8c048d26
	nop

loc_8c048c34:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c048cee
	mov.w @(loc_8c048c96,PC),r0
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c048c98,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c048d26
	mov.w @(loc_8c048c9a,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6c,r0
	fmov fr15,@(r0,r14)
	jsr @r11
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048c7c
	jsr @r13
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c048d26

loc_8c048c7c:
	lds.l @r15+,pr
	mov.l @(loc_8c048ca8,PC),r2
	mov r14,r4
	mov 0x01,r5
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c048c90:
	#data 0x01d1
loc_8c048c92:
	#data 0x0158
loc_8c048c94:
	#data 0x0d1b
loc_8c048c96:
	#data 0x0428
loc_8c048c98:
	#data 0x0141
loc_8c048c9a:
	#data 0x01f9
	#align4
loc_8c048c9c:
	#data bank05.loc_8c0518a0
loc_8c048ca0:
	#data bank03.loc_8c034dee
loc_8c048ca4:
	#data bank05.loc_8c0526d6
loc_8c048ca8:
	#data bank03.loc_8c035162

;==============================================
loc_8c048cac:
	mov.l @(loc_8c048dd8,PC),r2
	jsr @r2
	mov r14,r4
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c048cee
	jsr @r11
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048d26
	jsr @r13
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048d26
	mov.l @(loc_8c048ddc,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c048d26
	lds.l @r15+,pr
	mov.l @(loc_8c048de0,PC),r3
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c048cee:
	mov 0x00,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	mov 0x01,r3
	mov.w @(loc_8c048dd2,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c048de4,PC),r3
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c048d0a:
	mov.l @(loc_8c048de8,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c048dec,PC),r3
	mov r14,r4
	mov 0x00,r5
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c048d26:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c048d34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048df0,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(loc_8c048df4,PC),r3
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
	mov 0x6c,r1
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
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048d98
	mov.l @(loc_8c048ddc,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c048d98
	lds.l @r15+,pr
	mov.l @(loc_8c048de0,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c048d98:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c048d9e:
	mov r4,r3
	mov.l @(loc_8c048df8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c048db0:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x08,r3
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c048dd4,PC),r0
	mov.b r3,@(r0,r14)
	add 0xE8,r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c048dfc
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c048e3c
	mov.l @r15+,r14

;##############################################
loc_8c048dd2:
	#data 0x01d3
loc_8c048dd4:
	#data 0x01eb
	#align4

loc_8c048dd8:
	#data bank05.loc_8c058c48
loc_8c048ddc:
	#data bank05.loc_8c052ce2
loc_8c048de0:
	#data bank05.loc_8c052dac
loc_8c048de4:
	#data bank05.loc_8c0517be
loc_8c048de8:
	#data bank03.loc_8c035162
loc_8c048dec:
	#data bank05.loc_8c0532a8
loc_8c048df0:
	#data bank03.loc_8c034dee
loc_8c048df4:
	#data bank05.loc_8c0526d6
loc_8c048df8:
	#data bank14.loc_8c14e6d4

;----------------------------------------------
loc_8c048dfc:
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	mov 0x00,r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c048f06,PC),r0
	mov.b r3,@(r0,r14)
	add 0xB0,r0
	mov.l @(loc_8c048f10,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c048f08,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c048e22
	mova @(loc_8c048f14,PC),r0
	bra loc_8c048e26
	fmov @r0,fr4

loc_8c048e22:
	mova @(0xF4,PC),r0
	fmov @r0,fr4

loc_8c048e26:
	mov.w @(loc_8c048f0a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c048e32
	mov 0x5C,r0
	fneg fr4

loc_8c048e32:
	mov r14,r4
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	bra loc_8c048e74
	mov.l @r15+,r14

loc_8c048e3c:
	mov.w @(loc_8c048f06,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0xB0,r0
	mov.b r4,@(r0,r14)
	add 0x4E,r0
	mov 0x04,r3
	mov.b r3,@(r0,r14)
	add 0x0E,r0
	mov.l @(loc_8c048f1c,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c048e6e
	lds.l @r15+,pr
	mov.l @(loc_8c048f20,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c048e6e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c048e74:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c048f06,PC),r0
	mov 0x01,r4
	mov 0x00,r3
	mov 0x04,r2
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0xB0,r0
	mov.b r3,@(r0,r14)
	add 0x4E,r0
	mov.b r2,@(r0,r14)
	add 0x0A,r0
	mov.l @(loc_8c048f1c,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c048eac
	mov.w @(loc_8c048f0c,PC),r0
	mov 0x00,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c048f20,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c048eac:
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c048eea:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c048f24,PC),r3
	jsr @r3
	mov r4,r14
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(loc_8c048f28,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c048f06:
	#data 0x01ed
loc_8c048f08:
	#data 0x01d3
loc_8c048f0a:
	#data 0x01d2
loc_8c048f0c:
	#data 0x01f9
	#align4

loc_8c048f10:
	#data bank05.loc_8c05218a

loc_8c048f14:
	#data 0xc1700000

loc_8c048f18:
	#data 0x41200000

loc_8c048f1c:
	#data bank03.loc_8c034dee

loc_8c048f20:
	#data bank05.loc_8c051648

loc_8c048f24:
	#data bank05.loc_8c0573e8

loc_8c048f28:
	#data bank14.loc_8c14e6e0

;==============================================
loc_8c048f2c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c049030,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c048f9e
	mov.l @(loc_8c049034,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048f9e
	mov.l @(loc_8c049038,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c048f9e
	mov.l @(loc_8c04903c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c048f6a
	lds.l @r15+,pr
	mov.l @(loc_8c049040,PC),r3
	mov 0x13,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c048f6a:
	mov.l @(loc_8c049044,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c048f9e
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c049022,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c048f8a
	bra loc_8c048f8c
	mov 0x05,r3

loc_8c048f8a:
	mov 0x01,r3

loc_8c048f8c:
	mov.w @(loc_8c049024,PC),r0
	mov 0x05,r5
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c049048,PC),r3
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8c048f9e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c048fa4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c049026,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c048fca
	mov.w @(loc_8c049028,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c048fca
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0491ca
	mov.l @r15+,r14

loc_8c048fca:
	mov.w @(loc_8c049022,PC),r0
	mov.l @(loc_8c049048,PC),r13
	mov.b @(r0,r14),r0
	mov.w @(loc_8c04902a,PC),r4
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c048ff4
	mov.w @(loc_8c04902c,PC),r0
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r4,r2
	bt loc_8c04900c
	mov.w @(loc_8c049022,PC),r0
	mov 0x05,r6
	mov 0x01,r1
	mov r6,r5
	mov.b r1,@(r0,r14)
	jsr @r13
	mov r14,r4
	bra loc_8c04900c
	nop

loc_8c048ff4:
	mov.w @(loc_8c04902c,PC),r0
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r4,r2
	bf loc_8c04900c
	mov.w @(loc_8c049022,PC),r0
	mov 0x00,r1
	mov 0x05,r5
	mov 0x01,r6
	mov.b r1,@(r0,r14)
	jsr @r13
	mov r14,r4

loc_8c04900c:
	mov.l @(loc_8c049044,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c049028,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04904c
	mov.b @(r0,r14),r3
	add 0xFF,r3
	bra loc_8c0490d2
	mov.b r3,@(r0,r14)

;##############################################
loc_8c049022:
	#data 0x01f9
loc_8c049024:
	#data 0x0158
loc_8c049026:
	#data 0x01dd
loc_8c049028:
	#data 0x01de
loc_8c04902a:
	#data 0x1000
loc_8c04902c:
	#data 0x0340
	#align4

loc_8c049030:
	#data bank05.loc_8c051af6
loc_8c049034:
	#data bank05.loc_8c0518a0
loc_8c049038:
	#data bank05.loc_8c053f14
loc_8c04903c:
	#data bank05.loc_8c054400
loc_8c049040:
	#data bank05.loc_8c0532a8
loc_8c049044:
	#data bank03.loc_8c034dee
loc_8c049048:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c04904c:
	mov.w @(loc_8c04913c,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c049148,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0490d2
	mov.l @(loc_8c04914c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c049072
	mov.b @(0x6,r14),r0
	mov.b r0,@r15
	bra loc_8c049098
	nop

loc_8c049072:
	mov.l @(loc_8c049150,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0490d2
	mov.l @(loc_8c049154,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0490d2
	mov.l @(loc_8c049158,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0490a6
	mov.b @(0x6,r14),r0
	mov.b r0,@r15

loc_8c049098:
	mov.l @(loc_8c04915c,PC),r3
	mov 0x13,r5
	jsr @r3
	mov r14,r4
	mov.b @r15,r0
	bra loc_8c0490d2
	mov.b r0,@(0x6,r14)

loc_8c0490a6:
	mov.l @(loc_8c049160,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0490d2
	mov 0x02,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04913e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0490c4
	bra loc_8c0490c6
	mov 0x06,r3

loc_8c0490c4:
	mov 0x02,r3

loc_8c0490c6:
	mov.w @(loc_8c049140,PC),r0
	mov 0x05,r5
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r6
	jsr @r13
	mov r14,r4

loc_8c0490d2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0490dc:
	mov.w @(loc_8c049142,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	cmp/pz r3
	bf loc_8c04910e
	mov.l @(loc_8c049148,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c049136
	mov.l @(loc_8c04914c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c049136
	mov.w @(loc_8c049144,PC),r0
	mov.w @(loc_8c049146,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bf loc_8c04912c

loc_8c04910e:
	mov.l @(loc_8c049164,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c049136
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	fmov fr4,@(r0,r14)

loc_8c04912c:
	lds.l @r15+,pr
	mov.l @(loc_8c049168,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c049136:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04913c:
	#data 0x0211
loc_8c04913e:
	#data 0x01f9
loc_8c049140:
	#data 0x0158
loc_8c049142:
	#data 0x01dd
loc_8c049144:
	#data 0x0340
loc_8c049146:
	#data 0x0360
	#align4

loc_8c049148:
	#data bank05.loc_8c053f14
loc_8c04914c:
	#data bank05.loc_8c054400
loc_8c049150:
	#data bank05.loc_8c051af6
loc_8c049154:
	#data bank05.loc_8c0518a0
loc_8c049158:
	#data bank05.loc_8c051bca
loc_8c04915c:
	#data bank05.loc_8c0532a8
loc_8c049160:
	#data bank05.loc_8c052974
loc_8c049164:
	#data bank03.loc_8c034dee
loc_8c049168:
	#data bank05.loc_8c051648

;----------------------------------------------
loc_8c04916c:
	mov.w @(loc_8c04928e,PC),r0
	mov.l @(r0,r4),r5
	tst r5,r5
	bf loc_8c049178
	mov.w @(loc_8c049290,PC),r0
	mov.l @(r0,r4),r5

loc_8c049178:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c04929c,PC),r1
	shll r0
	mov.w @(r0,r1),r3
	mova @(loc_8c0492a0,PC),r0
	fmov @r0,fr2
	mova @(loc_8c0492a4,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr4
	fdiv fr1,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8c04919e
	mov.l @(loc_8c0492a8,PC),r3
	jmp @r3
	nop

loc_8c04919e:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8c049292,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0491ae
	fneg fr4

loc_8c0491ae:
	mov.w @(loc_8c049294,PC),r0
	mov 0x01,r1
	mov.b @(r0,r5),r3
	mov.w @(loc_8c049292,PC),r0
	mov.w @(r0,r5),r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0491c6
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r5)

loc_8c0491c6:
	rts
	nop

loc_8c0491ca:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8c049296,PC),r0
	mov r4,r14
	mov.l @(loc_8c0492ac,PC),r3
	mov 0x00,r4
	mov.l r3,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c049298,PC),r0
	mov.l @(loc_8c0492b0,PC),r3
	mov.b r4,@(r0,r14)
	add 0x6F,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c04929a,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov.w @(loc_8c049292,PC),r0
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c0492b4,PC),r2
	mov 0x44,r5
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049218:
	mov r4,r3
	mov.l @(loc_8c0492b8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c04922a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0492bc,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c0492c0,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c0492c4,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04925a
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(loc_8c0492c8,PC),r3
	mov 0x01,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x06,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04925a:
	mov.l @(loc_8c0492cc,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c049288
	mov.l @(loc_8c0492d0,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c049288
	mov.l @(loc_8c0492d4,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c049288
	lds.l @r15+,pr
	mov.l @(loc_8c0492d8,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c049288:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04928e:
	#data 0x01b8
loc_8c049290:
	#data 0x020c
loc_8c049292:
	#data 0x0130
loc_8c049294:
	#data 0x01fd
loc_8c049296:
	#data 0x0214
loc_8c049298:
	#data 0x01dd
loc_8c04929a:
	#data 0x0250
	#align4

loc_8c04929c:
	#data bank14.loc_8c14e6f0
loc_8c0492a0:
	#data 0x3fd55555
loc_8c0492a4:
	#data 0x43800000
loc_8c0492a8:
	#data bank05.loc_8c051648
loc_8c0492ac:
	#data bank14.loc_8c14e728
loc_8c0492b0:
	#data bank10.loc_8c101aa6
loc_8c0492b4:
	#data loc_8c04223a
loc_8c0492b8:
	#data bank14.loc_8c14e72c
loc_8c0492bc:
	#data loc_8c04fea8
loc_8c0492c0:
	#data bank05.loc_8c050048
loc_8c0492c4:
	#data bank03.loc_8c034dee
loc_8c0492c8:
	#data bank03.loc_8c034e8c
loc_8c0492cc:
	#data bank05.loc_8c0518a0
loc_8c0492d0:
	#data bank05.loc_8c052ce2
loc_8c0492d4:
	#data bank05.loc_8c0526d6
loc_8c0492d8:
	#data bank05.loc_8c052dac

;==============================================
loc_8c0492dc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8c0493c8,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c049332
	mov.w @(loc_8c0493ca,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c049332
	mov 0x02,r0
	mov.b r0,@(0x6,r14)
	mov 0x1C,r0
	mov.w r0,@(0x1C,r14)
	mov 0x00,r3
	mov.w @(loc_8c0493c8,PC),r0
	mov.b r3,@(r0,r14)
	add 0x6F,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c0493cc,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	mov.l @(loc_8c0493d4,PC),r3
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov.w @(loc_8c0493ce,PC),r0
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c0493d8,PC),r2
	mov 0x44,r5
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c049332:
	mov.l @(loc_8c0493dc,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0493e0,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c0493e4,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0493ca,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04935c
	mov.b @(r0,r14),r3
	mov.l @(loc_8c0493e8,PC),r2
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4
	bra loc_8c049404
	nop

loc_8c04935c:
	mov.w @(loc_8c0493d0,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c0493ec,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04943e
	mov.l @(loc_8c0493f0,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c049404
	mova @(0x78,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf.s loc_8c049390
	fldi0 fr3
	mova @(loc_8c0493f8,PC),r0
	fmov @r0,fr2
	mov 0x6c,r0
	fmov fr2,@(r0,r14)

loc_8c049390:
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c0493d2,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0493a8
	mov 0x01,r4
	mov r4,r0
	nop
	mov.b r0,@(0x6,r14)
	bra loc_8c0493b0
	mov 0x03,r5

loc_8c0493a8:
	mov r4,r0
	nop
	mov 0x0E,r5
	mov.b r0,@(0x6,r14)

loc_8c0493b0:
	mov.l @(loc_8c0493fc,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c049400,PC),r2
	mov 0x01,r5
	mov 0x09,r6
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0493c8:
	#data 0x01dd
loc_8c0493ca:
	#data 0x01de
loc_8c0493cc:
	#data 0x0250
loc_8c0493ce:
	#data 0x0130
loc_8c0493d0:
	#data 0x0211
loc_8c0493d2:
	#data 0x01fc
	#align4

loc_8c0493d4:
	#data bank10.loc_8c101aa6
loc_8c0493d8:
	#data loc_8c04223a
loc_8c0493dc:
	#data loc_8c04fea8
loc_8c0493e0:
	#data bank05.loc_8c050048
loc_8c0493e4:
	#data bank03.loc_8c034dee
loc_8c0493e8:
	#data bank05.loc_8c057580
loc_8c0493ec:
	#data bank05.loc_8c0518a0
loc_8c0493f0:
	#data bank05.loc_8c052974
loc_8c0493f4:
	#data 0xbd892492
loc_8c0493f8:
	#data 0xbf4db6db
loc_8c0493fc:
	#data bank05.loc_8c0530d8
loc_8c049400:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c049404:
	mov.l @(loc_8c04949c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04943e
	mov.w @(loc_8c049490,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c049420
	mov r14,r4
	mov.w @(loc_8c049492,PC),r0
	mov 0x08,r3
	mov.b r3,@(r0,r14)

loc_8c049420:
	mov.l @(loc_8c0494a0,PC),r3
	jsr @r3
	nop
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04943e
	mov.l @(loc_8c0494a4,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04943e
	mov.l @(loc_8c0494a8,PC),r3
	jsr @r3
	mov r14,r4

loc_8c04943e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049446:
	mov.w @(loc_8c049494,PC),r0
	mov.l @(r0,r4),r5
	tst r5,r5
	bf loc_8c049452
	mov.w @(loc_8c049496,PC),r0
	mov.l @(r0,r4),r5

loc_8c049452:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c049464
	mov.l @(loc_8c0494ac,PC),r3
	jmp @r3
	nop

loc_8c049464:
	mova @(loc_8c0494b0,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c049498,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c049474
	mova @(loc_8c0494b4,PC),r0
	fmov @r0,fr4

loc_8c049474:
	mov.w @(loc_8c04949a,PC),r0
	mov 0x01,r1
	mov.b @(r0,r5),r3
	mov.w @(loc_8c049498,PC),r0
	mov.w @(r0,r5),r2
	shad r2,r1
	tst r1,r3
	bf loc_8c04948c
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r5)

loc_8c04948c:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c049490:
	#data 0x01de
loc_8c049492:
	#data 0x01ef
loc_8c049494:
	#data 0x01b8
loc_8c049496:
	#data 0x020c
loc_8c049498:
	#data 0x0130
loc_8c04949a:
	#data 0x01fd
	#align4

loc_8c04949c:
	#data bank05.loc_8c052ce2
loc_8c0494a0:
	#data bank05.loc_8c0526d6
loc_8c0494a4:
	#data bank05.loc_8c052a72
loc_8c0494a8:
	#data bank05.loc_8c052dac
loc_8c0494ac:
	#data bank05.loc_8c05176e
loc_8c0494b0:
	#data 0x40a00000
loc_8c0494b4:
	#data 0xc0a00000

;==============================================
loc_8c0494b8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04958c,PC),r3
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04955c
	mov.w @(loc_8c04957e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c049526
	mov.w @(loc_8c049580,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c049526
	mov.w @(loc_8c049582,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c049526
	mov.b @(r0,r14),r0
	tst 0x09,r0
	bf loc_8c049526
	mov.w @(loc_8c049582,PC),r0
	mov 0x08,r3
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0x34,r0
	mov.b @(r0,r14),r4
	extu.b r4,r2
	tst r2,r2
	bf loc_8c049508
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c049518

loc_8c049508:
	extu.b r4,r3
	tst r3,r3
	bt loc_8c049526
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c049526

loc_8c049518:
	mov.l @(loc_8c049590,PC),r1
	mov 0x68,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fmul fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c049526:
	mov.l @(loc_8c049594,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04955c
	mov.w @(loc_8c049584,PC),r0
	mov.l @(r0,r14),r3
	mov.l @(0xC,r3),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c049586,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04955c
	mov.w @(loc_8c049588,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c04955c
	mov.w @(loc_8c049584,PC),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(r0,r14),r2
	mov.l @(0xC,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04955c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049562:
	mov.w @(loc_8c049584,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.l @(r0,r3),r2
	mov.l @(0x20,r2),r1
	jmp @r1
	add 0x04,r15

;==============================================
loc_8c049570:
	mov.w @(loc_8c049584,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.l @(r0,r3),r2
	mov.l @(0x1C,r2),r1
	jmp @r1
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04957e:
	#data 0x01f9
loc_8c049580:
	#data 0x01a3
loc_8c049582:
	#data 0x019e
loc_8c049584:
	#data 0x0428
loc_8c049586:
	#data 0x0200
loc_8c049588:
	#data 0x01d0
	#align4

loc_8c04958c:
	#data bank05.loc_8c054400
loc_8c049590:
	#data 0x40800000
loc_8c049594:
	#data bank05.loc_8c0518a0

;==============================================
loc_8c049598:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c049698,PC),r12
	mov 0x00,r13
	mov.l @(loc_8c049694,PC),r10
	tst r0,r0
	mov 0x03,r9
	bt.s loc_8c0495be
	mov 0x02,r11
	bra loc_8c0496f8
	nop

loc_8c0495be:
	mov.l @(loc_8c04969c,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c049686,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c04961c
	mov.w @(loc_8c049688,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0495e0
	mov.w @(loc_8c04968a,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0495e0
	bra loc_8c049744
	nop

loc_8c0495e0:
	mov.w @(loc_8c04968c,PC),r4
	mov 0x00,r1
	mov.l @(loc_8c0496a0,PC),r3
	add r14,r4
	mov.l @r4,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bt loc_8c0495f6
	bra loc_8c049744
	nop

loc_8c0495f6:
	mov.w @(loc_8c04968e,PC),r0
	mov 0xFF,r3
	mov r14,r4
	mov 0x11,r5
	mov.b r13,@(r0,r14)
	add 0xDE,r0
	mov.b r3,@(r0,r14)
	add 0x10,r0
	mov.b r13,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0496a4,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04961c:
	mov.b @r12,r3
	mov 0x05,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c0496ac
	mov.b @(0x2,r14),r0
	mov r12,r4
	add 0x18,r4
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r4
	mov.w @(loc_8c049690,PC),r0
	mov.b @(r0,r14),r5
	extu.b r5,r5
	mov r5,r1
	add 0x02,r1
	mov r9,r0
	nop
	mov.l @(loc_8c0496a8,PC),r3
	jsr @r3
	nop
	shll2 r0
	mov.l @(r0,r4),r1
	mov.l r1,@(0x4,r15)
	mov r5,r1
	add 0x04,r1
	mov r9,r0
	nop
	mov.l @(loc_8c0496a8,PC),r3
	jsr @r3
	nop
	shll2 r0
	mov.l @(r0,r4),r1
	mov.l r1,@r15
	jsr @r10
	mov r14,r4
	mov.w @(loc_8c049686,PC),r0
	mov.l @(0x4,r15),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bf loc_8c04967e
	mov.w @(loc_8c049686,PC),r0
	mov.l @r15,r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt loc_8c0496ac

loc_8c04967e:
	mov.w @(loc_8c049692,PC),r0
	mov.b r11,@(r0,r14)
	bra loc_8c0496e0
	mov 0x3C,r0

;##############################################
loc_8c049686:
	#data 0x0420
loc_8c049688:
	#data 0x01e3
loc_8c04968a:
	#data 0x01e6
loc_8c04968c:
	#data 0x0414
loc_8c04968e:
	#data 0x01f5
loc_8c049690:
	#data 0x0411
loc_8c049692:
	#data 0x01ed
	#align4
loc_8c049694:
	#data bank05.loc_8c05a2cc
loc_8c049698:
	#data 0x8c2895f0
loc_8c04969c:
	#data bank03.loc_8c034dee
loc_8c0496a0:
	#data 0x07000000
loc_8c0496a4:
	#data bank05.loc_8c0532a8
loc_8c0496a8:
	#data bank12.loc_8c1292d4

;----------------------------------------------
loc_8c0496ac:
	mov 0x3E,r0
	mov.b @(r0,r12),r4
	cmp/pz r4
	bf loc_8c049744
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	cmp/eq r0,r4
	bf loc_8c049744
	mov.w @(loc_8c0497b4,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c049744
	mov.w @(loc_8c0497b6,PC),r4
	mov 0x00,r1
	mov.l @(loc_8c0497c4,PC),r3
	add r14,r4
	mov.l @r4,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8c049744
	jsr @r10
	mov r14,r4
	mov.w @(loc_8c0497b8,PC),r0
	mov.b r11,@(r0,r14)
	mov 0x04,r0

loc_8c0496e0:
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c0497ba,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0496f0
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c0496f0:
	mov.b @(0x6,r14),r0
	add 0x01,r0
	bra loc_8c049744
	mov.b r0,@(0x6,r14)

loc_8c0496f8:
	jsr @r10
	mov r14,r4
	mov.l @(loc_8c0497c8,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	add 0x36,r2
	mov.b @(r0,r2),r1
	cmp/ge r9,r1
	bt loc_8c049744
	mov.w @(loc_8c0497b8,PC),r0
	mov.b r11,@(r0,r14)
	add 0x04,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c049744
	mov.w @(loc_8c0497ba,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04973a
	mov.b @(0x2,r14),r0
	mov r12,r3
	add 0x34,r3
	extu.b r0,r0
	mov.b @(r0,r3),r0
	cmp/eq 0x01,r0
	bf loc_8c049744
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c049744

loc_8c04973a:
	mov.l @(loc_8c0497cc,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c0497bc,PC),r0
	mov.b r11,@(r0,r14)

loc_8c049744:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049756:
	mov.l @(loc_8c0497d0,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c04975c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bf loc_8c04977e
	mov.w @(loc_8c0497be,PC),r0
	mov r14,r4
	mov.l @(r0,r14),r3
	mov 0x58,r0
	mov.l @(r0,r3),r2
	add 0x04,r15
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_8c04977e:
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c0497d8
	mov.b @(0x6,r14),r0
	mov 0x00,r2
	mov 0x01,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0C,r6
	mov.w @(loc_8c0497c0,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0x02,r0
	mov 0x11,r3
	mov.b r3,@(r0,r14)
	add 0x23,r0
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0497d4,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0497b4:
	#data 0x01e6
loc_8c0497b6:
	#data 0x0414
loc_8c0497b8:
	#data 0x01ed
loc_8c0497ba:
	#data 0x0411
loc_8c0497bc:
	#data 0x0254
loc_8c0497be:
	#data 0x0428
loc_8c0497c0:
	#data 0x01d5
	#align4
loc_8c0497c4:
	#data 0x07000000
loc_8c0497c8:
	#data 0x8c2896b0
loc_8c0497cc:
	#data bank0f.loc_8c0f01f8
loc_8c0497d0:
	#data bank05.loc_8c05ab54
loc_8c0497d4:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0497d8:
	mov.l @(loc_8c0498dc,PC),r3
	mov 0x34,r0
	mov.l r3,@r15
	fmov @r3,fr4
	fmov @(r0,r14),fr2
	fmov fr4,fr3
	fsub fr4,fr3
	mov.l @(loc_8c0498e0,PC),r3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c049824
	mov.w @(loc_8c0498ce,PC),r0
	fldi0 fr3
	mov.b @(r0,r14),r3
	lds r3,fpul
	float fpul,fr4
	fcmp/eq fr3,fr4
	bt loc_8c049876
	mov.w @(loc_8c0498d0,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt.s loc_8c049810
	mov 0x34,r0
	fneg fr4

loc_8c049810:
	mov.l @(loc_8c0498e4,PC),r1
	mov 0x00,r3
	fmov @(r0,r14),fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c0498ce,PC),r0
	bra loc_8c049876
	mov.b r3,@(r0,r14)

loc_8c049824:
	mov.l @(loc_8c0498e8,PC),r3
	mov 0x02,r5
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	mov.w @(loc_8c0498d6,PC),r4
	mov.b r0,@(0x6,r14)
	mov 0x02,r3
	mov.w @(loc_8c0498d2,PC),r0
	add r14,r4
	mov.b r3,@(r0,r14)
	add 0xD9,r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c0498d4,PC),r0
	extu.b r2,r2
	mov.l @(loc_8c0498ec,PC),r3
	mov.w r2,@(r0,r14)
	mov.l @(0x4,r4),r2
	mov.l @r4,r0
	and r3,r2
	and 0x80,r0
	or r2,r0
	tst r0,r0
	bt loc_8c049866
	mov 0x01,r6
	mov r14,r4
	mov r6,r5
	mov 0x02,r7
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0498f0,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c049866:
	mov r14,r4
	mov 0x01,r5
	mov 0x09,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0498f4,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c049876:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c04987e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0498f8,PC),r3
	jsr @r3
	mov.l r4,@r15
	extu.b r0,r0
	tst r0,r0
	bf loc_8c049898
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_8c0498fc,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c049898:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0498a0:
	mov.w @(loc_8c0498d8,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c0498e0,PC),r13
	tst r3,r3
	bf loc_8c04996c
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c049904
	lds.l @r15+,pr
	mov.l @(loc_8c049900,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0498ce:
	#data 0x0141
loc_8c0498d0:
	#data 0x01d2
loc_8c0498d2:
	#data 0x01f9
loc_8c0498d4:
	#data 0x0130
loc_8c0498d6:
	#data 0x0414
loc_8c0498d8:
	#data 0x01ed
	#align4
loc_8c0498dc:
	#data 0x8c26a530
loc_8c0498e0:
	#data bank03.loc_8c034dee
loc_8c0498e4:
	#data 0x3fd55555
loc_8c0498e8:
	#data bank05.loc_8c0530d8
loc_8c0498ec:
	#data 0x02000000
loc_8c0498f0:
	#data bank03.loc_8c034f54
loc_8c0498f4:
	#data bank03.loc_8c034e8c
loc_8c0498f8:
	#data bank05.loc_8c0518a0
loc_8c0498fc:
	#data bank05.loc_8c05acf8
loc_8c049900:
	#data bank05.loc_8c05176e

;==============================================
loc_8c049904:
	mov 0x5C,r1
	mov.l @(loc_8c049a54,PC),r3
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
	mov 0x6c,r1
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
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0499e2
	mov.l @(loc_8c049a58,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0499e2
	mov.l @(loc_8c049a5c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0499e2
	lds.l @r15+,pr
	mov.l @(loc_8c049a60,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04996c:
	cmp/pl r3
	bf loc_8c04999e
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0499e2
	mov.w @(loc_8c049a4a,PC),r2
	mov 0x20,r0
	mov.l @(loc_8c049a64,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x01,r6
	lds.l @r15+,pr
	mov 0x03,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04999e:
	jsr @r13
	mov r14,r4
	mov.l @(loc_8c049a68,PC),r3
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
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bt loc_8c0499e2
	lds.l @r15+,pr
	mov.l @(loc_8c049a6c,PC),r2
	mov r14,r4
	mov 0x06,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0499e2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0499ea:
	mov.w @(loc_8c049a4c,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c049a70,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0499fe:
	mov.w @(loc_8c049a4e,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c049a74,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c049a18:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r3
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c049a50,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c049a52,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c049a78,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c049a64,PC),r2
	mov r14,r4
	mov 0x00,r6
	mov 0x18,r5
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c049a4a:
	#data 0x0080
loc_8c049a4c:
	#data 0x0256
loc_8c049a4e:
	#data 0x01ed
loc_8c049a50:
	#data 0x041c
loc_8c049a52:
	#data 0x01f9
	#align4

loc_8c049a54:
	#data bank05.loc_8c052ce2
loc_8c049a58:
	#data bank05.loc_8c0526d6
loc_8c049a5c:
	#data bank05.loc_8c052a72
loc_8c049a60:
	#data bank05.loc_8c052dac
loc_8c049a64:
	#data bank03.loc_8c034e8c
loc_8c049a68:
	#data bank05.loc_8c0511e2
loc_8c049a6c:
	#data bank05.loc_8c0532a8
loc_8c049a70:
	#data bank14.loc_8c14e738
loc_8c049a74:
	#data bank14.loc_8c14e768
loc_8c049a78:
	#data bank05.loc_8c05218a

;==============================================
loc_8c049a7c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c049bcc,PC),r3
	jsr @r3

loc_8c049a84:
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c049a9e
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c049bb6,PC),r0
	mov.b r3,@(r0,r14)

loc_8c049a9e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049aa4:
	mov.w @(loc_8c049bb8,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c049bcc,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c049ac8
	mov.w @(loc_8c049bba,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)

loc_8c049ac8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049ace:
	mov.w @(loc_8c049bbc,PC),r0
	mov 0x02,r5
	mov 0x01,r3
	mov.b r5,@(r0,r4)
	add 0x67,r0
	mov.b r3,@(r0,r4)
	add 0x02,r0
	rts
	mov.b r5,@(r0,r4)

;==============================================
loc_8c049ae0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c049bbc,PC),r0
	mov 0x02,r4
	mov.l @(loc_8c049bd0,PC),r1
	mov.b r4,@(r0,r14)
	add 0x07,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c049b02:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	fmov fr15,@-r15
	mov.w @(loc_8c049bbe,PC),r0
	sts.l pr,@-r15
	mov.b r13,@(r0,r14)
	mov r13,r0
	nop
	mov.w @(loc_8c049bc0,PC),r2
	mov r14,r1
	mov.b r0,@(0x7,r14)
	mov 0x48,r0
	mov.l @(loc_8c049bd4,PC),r3
	add r14,r2
	add 0x50,r1
	mov.l r13,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c049bc2,PC),r0
	mov 0x01,r5
	mov.l @(loc_8c049bd8,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c049bdc,PC),r2
	mov 0x2B,r5
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c049bc4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c049b84
	fldi0 fr15
	mov.l @(loc_8c049be0,PC),r3
	mov 0x01,r0
	mov 0x0D,r5
	mov.b r0,@(0x6,r14)
	mov 0x1E,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c049bc6,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x15,r0
	bt.s loc_8c049b6e
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x1D,r0
	bf loc_8c049ba8

loc_8c049b6e:
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	bra loc_8c049ba8
	fmov fr3,@(r0,r14)

loc_8c049b84:
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6c,r0
	fmov fr15,@(r0,r14)
	mov.w @(loc_8c049bc4,PC),r0
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c049bc8,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	bsr loc_8c049d6c
	mov r14,r4

loc_8c049ba8:
	lds.l @r15+,pr
	mov.l @(loc_8c049be8,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c049bb6:
	#data 0x0254
loc_8c049bb8:
	#data 0x01f4
loc_8c049bba:
	#data 0x0256
loc_8c049bbc:
	#data 0x01ed
loc_8c049bbe:
	#data 0x0201
loc_8c049bc0:
	#data 0x0284
loc_8c049bc2:
	#data 0x0108
loc_8c049bc4:
	#data 0x01f9
loc_8c049bc6:
	#data 0x01d1
loc_8c049bc8:
	#data 0x041c
	#align4
loc_8c049bcc:
	#data bank03.loc_8c034dee
loc_8c049bd0:
	#data bank14.loc_8c14e774
loc_8c049bd4:
	#data bank12.loc_8c1294c8
loc_8c049bd8:
	#data bank03.loc_8c035162
loc_8c049bdc:
	#data loc_8c042008
loc_8c049be0:
	#data bank03.loc_8c034e8c
loc_8c049be4:
	#data 0xbf4db6db
loc_8c049be8:
	#data bank05.loc_8c05a2cc

;==============================================
loc_8c049bec:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(loc_8c049d08,PC),r3
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
	mov 0x6c,r1
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

loc_8c049c30:
	mov.l @(loc_8c049d0c,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c049c74
	mov.l @(loc_8c049d10,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c049ca2
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	fmov fr4,@(r0,r14)
	mov 0x00,r3
	mov.w @(loc_8c049d02,PC),r0
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c049d04,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	lds.l @r15+,pr
	bra loc_8c049d6c
	mov.l @r15+,r14

loc_8c049c74:
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	mov r3,r2
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0B,r6
	mov.w @(loc_8c049d06,PC),r0
	mov 0x01,r5
	mov.b r3,@(r0,r14)
	add 0x29,r0
	mov.b r2,@(r0,r14)
	add 0xFD,r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	mov.l @(loc_8c049d18,PC),r3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c049ca2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049ca8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c049d0c,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c049d1c,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c049d20,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c049d24,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c049d10,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c049cfc
	mov 0x5C,r0
	fldi0 fr4

loc_8c049cd4:
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	fmov fr4,@(r0,r14)
	mov 0x00,r3
	mov.w @(loc_8c049d02,PC),r0
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c049d04,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	lds.l @r15+,pr
	bra loc_8c049d6c
	mov.l @r15+,r14

loc_8c049cfc:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c049d02:
	#data 0x01f9
loc_8c049d04:
	#data 0x041c
loc_8c049d06:
	#data 0x01d3
	#align4
loc_8c049d08:
	#data bank05.loc_8c058d26
loc_8c049d0c:
	#data bank03.loc_8c034dee
loc_8c049d10:
	#data bank05.loc_8c052ce2
loc_8c049d14:
	#data 0xbf4db6db
loc_8c049d18:
	#data bank03.loc_8c034e8c
loc_8c049d1c:
	#data loc_8c04fea8
loc_8c049d20:
	#data loc_8c05000a
loc_8c049d24:
	#data bank05.loc_8c050048

;----------------------------------------------
loc_8c049d28:
	mov.w @(loc_8c049e1e,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c049e2c,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c049e20,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c049d4e
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c049d4e:
	mova @(0xE0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x02,r3
	fmov fr3,@(r0,r4)
	mova @(loc_8c049e34,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	mov r3,r6
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c049e22,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c049e38,PC),r3
	jmp @r3
	mov 0x18,r5

;==============================================
loc_8c049d6c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c049d86
	mov.b @(0x7,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	bra loc_8c049d28
	mov.l @r15+,r14

loc_8c049d86:
	mov.l @(loc_8c049e3c,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(loc_8c049e40,PC),r3
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
	mov 0x6c,r1
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
	extu.b r0,r0
	tst r0,r0
	bt loc_8c049dd4
	bsr loc_8c049d28
	mov r14,r4

loc_8c049dd4:
	mov.l @(loc_8c049e44,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c049df6
	mov.w @(loc_8c049e24,PC),r0
	mov 0x00,r4
	mov.l @(loc_8c049e48,PC),r3
	mov.b r4,@r14
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c049e4c,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c049df6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049dfc:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c049e26,PC),r0
	mov 0x02,r4
	mov.l @(loc_8c049e50,PC),r1
	mov.b r4,@(r0,r14)
	add 0x07,r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c049e28,PC),r0
	mov.b r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c049e1e:
	#data 0x041c
loc_8c049e20:
	#data 0x01d2
loc_8c049e22:
	#data 0x01f9
loc_8c049e24:
	#data 0x012c
loc_8c049e26:
	#data 0x01ed
loc_8c049e28:
	#data 0x03f1
	#align4
loc_8c049e2c:
	#data 0x41855555
loc_8c049e30:
	#data 0x41892492
loc_8c049e34:
	#data 0xbf4db6db
loc_8c049e38:
	#data bank03.loc_8c034e8c
loc_8c049e3c:
	#data bank03.loc_8c034dee
loc_8c049e40:
	#data bank05.loc_8c052ce2
loc_8c049e44:
	#data bank03.loc_8c0332e0
loc_8c049e48:
	#data loc_8c04f378
loc_8c049e4c:
	#data bank0f.loc_8c0f0c34
loc_8c049e50:
	#data bank14.loc_8c14e784

;==============================================
loc_8c049e54:
	mov.w @(loc_8c049f7a,PC),r3
	mov 0x10,r2
	mov.w @(loc_8c049f7c,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov 0x00,r3
	mov.b @(0x6,r14),r0
	mov 0x01,r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c049f7e,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c049f80,PC),r0
	mov.l @(loc_8c049f90,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c049f82,PC),r0
	mov 0x01,r6
	mov.l @(loc_8c049f94,PC),r3
	mov 0x50,r2
	mov r6,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c049f98,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c049f84,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	add 0xFF,r0
	mov r0,r3
	shll2 r0
	add r3,r0
	shll r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049eae:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c049ec4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	bra loc_8c049f58
	mov.w r0,@(0x1C,r14)

loc_8c049ec4:
	mov.l @(loc_8c049f9c,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c049f86,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c049f58
	mov.w @(loc_8c049f86,PC),r0
	mov 0x00,r13
	fldi0 fr4
	mov r13,r5
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov.l @(loc_8c049f94,PC),r3
	mov r13,r6
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c049f88,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c049f7c,PC),r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c049f8a,PC),r0
	mov.l @(r0,r14),r2
	mov 0x44,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c049fa0,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c049f58:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c049f60:
	mov.w @(loc_8c049f8c,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c049fa4,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c049f7a:
	#data 0x00ff
loc_8c049f7c:
	#data 0x03f0
loc_8c049f7e:
	#data 0x01fd
loc_8c049f80:
	#data 0x012c
loc_8c049f82:
	#data 0x01e1
loc_8c049f84:
	#data 0x0411
loc_8c049f86:
	#data 0x041c
loc_8c049f88:
	#data 0x01f9
loc_8c049f8a:
	#data 0x0428
loc_8c049f8c:
	#data 0x01ed
	#align4
loc_8c049f90:
	#data bank05.loc_8c052e4e
loc_8c049f94:
	#data bank03.loc_8c034e8c
loc_8c049f98:
	#data bank03.loc_8c035162
loc_8c049f9c:
	#data bank03.loc_8c034dee
loc_8c049fa0:
	#data bank05.loc_8c0511b4
loc_8c049fa4:
	#data bank14.loc_8c14e78c

;==============================================
loc_8c049fa8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x6,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x18,r5
	mov.w @(loc_8c04a11a,PC),r0
	mov 0x01,r6
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04a11c,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04a138,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04a11e,PC),r0
	mov 0x03,r2
	mov.l @(loc_8c04a13c,PC),r3
	mov r15,r1
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c04a120,PC),r2
	add r14,r2
	jsr @r3
	mov 0x08,r0
	mov 0x3C,r0
	mov.l @(loc_8c04a140,PC),r3
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov.w @(loc_8c04a122,PC),r0
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c04a144,PC),r2
	mov 0x3F,r5
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04a002:
	mov.w @(loc_8c04a124,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)
	mov 0x00,r0
	mov.b r0,@(0x7,r4)
	rts
	mov.b r0,@(0x6,r4)

;----------------------------------------------
loc_8c04a010:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c04a126,PC),r0
	mov 0x02,r4
	mov.l @(loc_8c04a148,PC),r1
	mov.b r4,@(r0,r14)
	add 0x07,r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c04a128,PC),r0
	mov.b r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04a032:
	mov.w @(loc_8c04a12a,PC),r3
	mov 0x10,r2
	mov.w @(loc_8c04a12c,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov 0x00,r3
	mov.b @(0x6,r14),r0
	mov 0x01,r2
	mov r2,r5
	mov r2,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04a12e,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x50,r3
	mov.w @(loc_8c04a130,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c04a132,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04a138,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04a14c,PC),r2
	mov 0x01,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c04a072:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04a150,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04a11a,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04a112
	mov.w @(loc_8c04a11a,PC),r0
	mov 0x00,r13
	fldi0 fr4
	mov r13,r5
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov.l @(loc_8c04a138,PC),r3
	mov r13,r6
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04a11c,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c04a12c,PC),r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04a134,PC),r0
	mov.l @(r0,r14),r2
	mov 0x4C,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04a136,PC),r0
	mov 0x3C,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04a154,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04a112:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04a11a:
	#data 0x041c
loc_8c04a11c:
	#data 0x01f9
loc_8c04a11e:
	#data 0x0254
loc_8c04a120:
	#data 0x024c
loc_8c04a122:
	#data 0x0130
loc_8c04a124:
	#data 0x0256
loc_8c04a126:
	#data 0x01ed
loc_8c04a128:
	#data 0x03f1
loc_8c04a12a:
	#data 0x00ff
loc_8c04a12c:
	#data 0x03f0
loc_8c04a12e:
	#data 0x01fd
loc_8c04a130:
	#data 0x012c
loc_8c04a132:
	#data 0x01e1
loc_8c04a134:
	#data 0x0428
loc_8c04a136:
	#data 0x01ee
	#align4

loc_8c04a138:
	#data bank03.loc_8c034e8c
loc_8c04a13c:
	#data bank12.loc_8c1294bc
loc_8c04a140:
	#data bank10.loc_8c107c64
loc_8c04a144:
	#data loc_8c04223a
loc_8c04a148:
	#data bank14.loc_8c14e794
loc_8c04a14c:
	#data bank03.loc_8c035162
loc_8c04a150:
	#data bank03.loc_8c034dee
loc_8c04a154:
	#data bank05.loc_8c0511b4

;==============================================
loc_8c04a158:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c04a290,PC),r0
	mov 0x02,r4
	mov.l @(loc_8c04a2a0,PC),r1
	mov.b r4,@(r0,r14)
	add 0x07,r0
	mov.b r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04a176:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r3
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov 0x01,r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04a292,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04a294,PC),r0
	mov.l @(loc_8c04a2a4,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04a296,PC),r0
	mov 0x01,r6
	mov.l @(loc_8c04a2a8,PC),r3
	mov 0x50,r2
	mov r6,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04a2ac,PC),r2
	mov 0x01,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c04a1b0:
	mov.l r14,@-r15

loc_8c04a1b2:
	sts.l pr,@-r15
	mov.l @(loc_8c04a2b0,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04a298,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04a268
	mov.w @(loc_8c04a298,PC),r0
	mov 0x00,r3
	fldi0 fr4
	mov r3,r5
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov r3,r6
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04a29a,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	mov.l @(loc_8c04a2a8,PC),r3
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04a2b4,PC),r2
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov.l @(loc_8c04a2b8,PC),r2
	extu.b r0,r0
	mov r0,r1
	shll r0
	mov.l @r2,r3
	add r1,r0
	shll2 r0
	add 0x18,r3
	mov.l @(r0,r3),r1
	mov 0x02,r3
	mov.b @(0x5,r1),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c04a258
	lds.l @r15+,pr
	mov.l @(loc_8c04a2bc,PC),r1
	mov 0x00,r5
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8c04a258:
	mov.w @(loc_8c04a29c,PC),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(r0,r14),r1
	mov 0x48,r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04a268:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04a26e:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c04a290,PC),r0
	mov 0x02,r4
	mov.l @(loc_8c04a2c0,PC),r1
	mov.b r4,@(r0,r14)
	add 0x07,r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c04a29e,PC),r0
	mov.b r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04a290:
	#data 0x01ed
loc_8c04a292:
	#data 0x01fd
loc_8c04a294:
	#data 0x012c
loc_8c04a296:
	#data 0x01e1
loc_8c04a298:
	#data 0x041c
loc_8c04a29a:
	#data 0x01f9
loc_8c04a29c:
	#data 0x0428
loc_8c04a29e:
	#data 0x03f1
	#align4
loc_8c04a2a0:
	#data bank14.loc_8c14e79c
loc_8c04a2a4:
	#data bank05.loc_8c052fd4
loc_8c04a2a8:
	#data bank03.loc_8c034e8c
loc_8c04a2ac:
	#data bank03.loc_8c035162
loc_8c04a2b0:
	#data bank03.loc_8c034dee
loc_8c04a2b4:
	#data bank05.loc_8c0511b4
loc_8c04a2b8:
	#data 0x8c2896b0
loc_8c04a2bc:
	#data bank05.loc_8c0532a8
loc_8c04a2c0:
	#data bank14.loc_8c14e7a4

;==============================================
loc_8c04a2c4:
	mov.w @(loc_8c04a41e,PC),r3
	mov 0x10,r2
	mov.w @(loc_8c04a420,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov 0x00,r3
	mov.b @(0x6,r14),r0
	mov 0x01,r2
	mov r2,r5
	mov r2,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04a422,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x50,r3
	mov.w @(loc_8c04a424,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c04a426,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04a434,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04a438,PC),r2
	mov 0x01,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04a304:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04a43c,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04a428,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04a3a4
	mov.w @(loc_8c04a428,PC),r0
	mov 0x00,r13
	fldi0 fr4
	mov r13,r5
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov.l @(loc_8c04a434,PC),r3
	mov r13,r6
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04a42a,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x1D,r5
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04a42c,PC),r0
	mov.b @(r0,r14),r3
	add 0x91,r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04a440,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04a444,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c04a3a4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04a3ac:
	mov.w @(loc_8c04a42e,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.l @(r0,r3),r2
	mov.l @(0x38,r2),r1
	jmp @r1
	add 0x04,r15

;==============================================
loc_8c04a3ba:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c04a44c
	mov.b @(0x6,r14),r0
	mov 0x00,r3
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04a42a,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c04a430,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04a408
	mova @(loc_8c04a448,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04a428,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c04a410
	mov.w @(loc_8c04a432,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	bra loc_8c04a410
	fmov fr2,@(r0,r14)

loc_8c04a408:
	mov.w @(loc_8c04a428,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c04a410:
	lds.l @r15+,pr
	mov.l @(loc_8c04a434,PC),r3
	mov r14,r4
	mov 0x03,r6
	mov 0x18,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04a41e:
	#data 0x00ff
loc_8c04a420:
	#data 0x03f0
loc_8c04a422:
	#data 0x01fd
loc_8c04a424:
	#data 0x012c
loc_8c04a426:
	#data 0x01e1
loc_8c04a428:
	#data 0x041c
loc_8c04a42a:
	#data 0x01f9
loc_8c04a42c:
	#data 0x0258
loc_8c04a42e:
	#data 0x0428
loc_8c04a430:
	#data 0x0203
loc_8c04a432:
	#data 0x0208
	#align4
loc_8c04a434:
	#data bank03.loc_8c034e8c
loc_8c04a438:
	#data bank03.loc_8c035162
loc_8c04a43c:
	#data bank03.loc_8c034dee
loc_8c04a440:
	#data bank05.loc_8c0530d8
loc_8c04a444:
	#data bank05.loc_8c0511b4
loc_8c04a448:
	#data 0x42092492

;==============================================
loc_8c04a44c:
	mov.l @(loc_8c04a574,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04a462
	lds.l @r15+,pr
	mov.l @(loc_8c04a578,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14


loc_8c04a462:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04a468:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c04a49e
	mov.b @(0x6,r14),r0
	mov r14,r4
	fldi0 fr4
	mov 0x04,r6
	add 0x01,r0
	mov.l @(loc_8c04a57c,PC),r3
	mov.b r0,@(0x6,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	fmov fr4,@(r0,r14)
	mov 0x28,r0
	mov.w r0,@(0x1C,r14)
	mov 0x18,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04a49e:
	mov.l @(loc_8c04a574,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c04a4c0
	mov.w @(loc_8c04a564,PC),r0
	mov 0x02,r4
	mov.b r4,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04a566,PC),r0
	mov.b r4,@(r0,r14)

loc_8c04a4c0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04a4c6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04a580,PC),r3
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04a55e
	mov.w @(loc_8c04a568,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04a534
	mov.w @(loc_8c04a56a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c04a534
	mov.w @(loc_8c04a56c,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04a534
	mov.b @(r0,r14),r0
	tst 0x09,r0
	bf loc_8c04a534
	mov.w @(loc_8c04a56c,PC),r0
	mov 0x08,r3
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0x34,r0
	mov.b @(r0,r14),r4
	extu.b r4,r2
	tst r2,r2
	bf loc_8c04a516
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c04a526

loc_8c04a516:
	extu.b r4,r3
	tst r3,r3
	bt loc_8c04a534
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c04a534

loc_8c04a526:
	mov.l @(loc_8c04a584,PC),r1
	mov 0x68,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fmul fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c04a534:
	mov.w @(loc_8c04a56e,PC),r0
	mov.l @(r0,r14),r3
	mov.l @(0x3C,r3),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04a570,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04a55e
	mov.w @(loc_8c04a572,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x22,r0
	bf loc_8c04a55e
	mov.w @(loc_8c04a56e,PC),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(r0,r14),r2
	mov.l @(0x3C,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04a55e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04a564:
	#data 0x0256
loc_8c04a566:
	#data 0x01ed
loc_8c04a568:
	#data 0x01f9
loc_8c04a56a:
	#data 0x01a3
loc_8c04a56c:
	#data 0x019e
loc_8c04a56e:
	#data 0x0428
loc_8c04a570:
	#data 0x0200
loc_8c04a572:
	#data 0x01d0
	#align4
loc_8c04a574:
	#data bank03.loc_8c034dee
loc_8c04a578:
	#data bank05.loc_8c051648
loc_8c04a57c:
	#data bank03.loc_8c034e8c
loc_8c04a580:
	#data bank05.loc_8c054400
loc_8c04a584:
	#data 0x40800000

;==============================================
loc_8c04a588:
	mov.w @(loc_8c04a66a,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.l @(r0,r3),r2
	mov.l @(0x2C,r2),r1
	jmp @r1
	add 0x04,r15

;==============================================
loc_8c04a596:
	mov.w @(loc_8c04a66c,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r2
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0xF4,r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c04a66e,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04a5c8
	mov.l @(loc_8c04a67c,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c04a5c8
	mov.l @(loc_8c04a680,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04a64e

loc_8c04a5c8:
	mov.w @(loc_8c04a670,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04a5da
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c04a656
	mov.l @r15+,r14

loc_8c04a5da:
	mov.w @(loc_8c04a672,PC),r0
	mov.l @(r0,r14),r13
	tst r13,r13
	bt loc_8c04a622
	mov.w @(loc_8c04a674,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c04a63e
	mov.w @(loc_8c04a676,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c04a63e
	mov.w @(loc_8c04a678,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c04a63a
	mov.w @(loc_8c04a66e,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c04a60e
	lds.l @r15+,pr
	mov.l @(loc_8c04a684,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04a60e:
	mov.l @(loc_8c04a688,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c04a68c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04a62e

loc_8c04a622:
	lds.l @r15+,pr
	mov.l @(loc_8c04a690,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04a62e:
	lds.l @r15+,pr
	mov.l @(loc_8c04a694,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04a63a:
	mov 0x00,r2
	mov.b r2,@(r0,r13)

loc_8c04a63e:
	mov.w @(loc_8c04a66a,PC),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(r0,r13),r3
	mov.l @r15+,r13
	mov.l @(0x30,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c04a64e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c04a656:
	mov.w @(loc_8c04a670,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c04a698,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04a66a:
	#data 0x0428
loc_8c04a66c:
	#data 0x0201
loc_8c04a66e:
	#data 0x0420
loc_8c04a670:
	#data 0x01f6
loc_8c04a672:
	#data 0x01c8
loc_8c04a674:
	#data 0x01a0
loc_8c04a676:
	#data 0x0254
loc_8c04a678:
	#data 0x01ea
	#align4
loc_8c04a67c:
	#data 0x8c2895f0
loc_8c04a680:
	#data bank05.loc_8c051e76
loc_8c04a684:
	#data bank05.loc_8c058d64
loc_8c04a688:
	#data bank03.loc_8c035162
loc_8c04a68c:
	#data bank05.loc_8c052ce2
loc_8c04a690:
	#data bank05.loc_8c051648
loc_8c04a694:
	#data bank05.loc_8c05176e
loc_8c04a698:
	#data bank14.loc_8c14e7ac

;==============================================
loc_8c04a69c:
	mov.w @(loc_8c04a72a,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x11,r0
	bt.s loc_8c04a6b4
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x12,r0
	bf loc_8c04a6ba

loc_8c04a6b4:
	mov.w @(loc_8c04a72c,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)

loc_8c04a6ba:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(loc_8c04a738,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04a6ca:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04a72e,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xFE,r0
	mov.l @(loc_8c04a73c,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04a730,PC),r0
	mov 0x1C,r3
	mov.w @(loc_8c04a732,PC),r1
	mov.l @(r0,r14),r2
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r2,r1
	extu.b r0,r0
	mov.l @r1,r2
	and 0x7F,r0
	mov.w @(loc_8c04a734,PC),r1
	mul.l r3,r0
	add r14,r1
	sts macl,r0
	add r2,r0
	mov.l r0,@r1
	mov.w @(loc_8c04a72a,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x10,r0
	bt.s loc_8c04a720
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x12,r0
	bf loc_8c04a744

loc_8c04a720:
	mov.l @(loc_8c04a740,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c04a74a
	nop

;##############################################
loc_8c04a72a:
	#data 0x01f6
loc_8c04a72c:
	#data 0x01ed
loc_8c04a72e:
	#data 0x023a
loc_8c04a730:
	#data 0x01c8
loc_8c04a732:
	#data 0x0174
loc_8c04a734:
	#data 0x01bc
	#align4
loc_8c04a738:
	#data bank14.loc_8c14e800
loc_8c04a73c:
	#data bank05.loc_8c05a46c
loc_8c04a740:
	#data bank05.loc_8c058fc8

;----------------------------------------------
loc_8c04a744:
	mov.l @(loc_8c04a8a4,PC),r3
	jsr @r3
	mov r14,r4

loc_8c04a74a:
	mov.w @(loc_8c04a886,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x20,r0
	bt.s loc_8c04a75c
	mov 0x01,r4
	mov.w @(loc_8c04a888,PC),r0
	mov.b r4,@(r0,r14)

loc_8c04a75c:
	mov.w @(loc_8c04a88a,PC),r0
	mov.b @(r0,r14),r3
	add 0x07,r0
	mov.b r3,@(r0,r14)
	add 0x99,r0
	mov.b @(r0,r14),r2
	mov 0x02,r3
	mov.w @(loc_8c04a88c,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c04a88e,PC),r0
	mov.b r3,@(r0,r14)
	add 0xA8,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c04a7a6
	mov.w @(loc_8c04a890,PC),r0
	mov.l @(r0,r14),r2
	mov 0x22,r0
	mov.b @(r0,r2),r3
	mov.w @(loc_8c04a892,PC),r0
	mov.b r3,@(r0,r14)
	add 0x9A,r0
	mov.l @(r0,r14),r2
	mov.w @(loc_8c04a88c,PC),r0
	mov.w @(r0,r2),r3
	tst r3,r3
	bt loc_8c04a7a6
	mov.w @(loc_8c04a892,PC),r0
	mov.w @(loc_8c04a892,PC),r1
	mov.b @(r0,r14),r0
	add r14,r1
	neg r0,r0
	add 0x20,r0
	and 0x1F,r0
	mov.b r0,@r1

loc_8c04a7a6:
	mov.w @(loc_8c04a894,PC),r0
	mov r14,r1
	mov.w @(loc_8c04a896,PC),r2
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov 0x48,r0
	mov.l @(loc_8c04a8a8,PC),r3
	add r14,r2
	mov.l r13,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04a898,PC),r0
	mov.l @(loc_8c04a8ac,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04a8b0,PC),r2
	jsr @r2
	mov r14,r4
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04a89a,PC),r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04a89c,PC),r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov r14,r4

loc_8c04a7ee:
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c04a7f4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04a8b8,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04a89e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c04a85e
	mov 0x01,r13
	mov.w @(loc_8c04a8a0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04a85e
	mov.l @(loc_8c04a8bc,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04a8c0,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04a888,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3

loc_8c04a85e:
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c04a87a
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04a87a
	mov r13,r0
	nop
	mov.l @(loc_8c04a8c4,PC),r3
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4

loc_8c04a87a:
	mov.w @(loc_8c04a8a2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bra loc_8c04a8c8
	nop

;##############################################
loc_8c04a886:
	#data 0x01bc
loc_8c04a888:
	#data 0x0235
loc_8c04a88a:
	#data 0x0232
loc_8c04a88c:
	#data 0x0130
loc_8c04a88e:
	#data 0x01f9
loc_8c04a890:
	#data 0x01c8
loc_8c04a892:
	#data 0x022e
loc_8c04a894:
	#data 0x012c
loc_8c04a896:
	#data 0x0284
loc_8c04a898:
	#data 0x0108
loc_8c04a89a:
	#data 0x0218
loc_8c04a89c:
	#data 0x021c
loc_8c04a89e:
	#data 0x01fd
loc_8c04a8a0:
	#data 0x0238
loc_8c04a8a2:
	#data 0x0233
	#align4
loc_8c04a8a4:
	#data bank05.loc_8c058f08
loc_8c04a8a8:
	#data bank12.loc_8c1294c8
loc_8c04a8ac:
	#data loc_8c04e958
loc_8c04a8b0:
	#data bank05.loc_8c0589c0
loc_8c04a8b4:
	#data 0xbf9a4924
loc_8c04a8b8:
	#data bank03.loc_8c034dee
loc_8c04a8bc:
	#data loc_8c0423ac
loc_8c04a8c0:
	#data bank10.loc_8c107f1c
loc_8c04a8c4:
	#data loc_8c04e98a

;==============================================
loc_8c04a8c8:
	bt loc_8c04a902
	mov.w @(loc_8c04a99a,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c04a902
	mov.w @(loc_8c04a99c,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c04a902
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	mov 0xFF,r3
	mov.w @(loc_8c04a99e,PC),r0
	mov 0x0D,r5
	mov 0x1E,r6
	mov.b r3,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8c04a9ac,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c04aa3e
	mov.l @r15+,r14

loc_8c04a902:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04a940
	mov.l @(loc_8c04a9b0,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04a940
	mov.w @(loc_8c04a9a0,PC),r0
	mov 0x02,r2
	mov 0x05,r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x1A,r6
	mov.w @(loc_8c04a9a2,PC),r0
	mov 0x0D,r5
	mov.w r3,@(r0,r14)
	mov 0x03,r3
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04a9a4,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04a9ac,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04a940:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04a948:
	mov.w @(loc_8c04a9a0,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04a9a2,PC),r0
	mov.w @(r0,r14),r4
	cmp/pz r4
	bf loc_8c04aa20
	mov.w @(loc_8c04a99c,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c04a968
	cmp/pl r4
	bt loc_8c04aa20

loc_8c04a968:
	mov.w @(loc_8c04a9a2,PC),r0
	mov 0xFF,r2
	mov.l @(loc_8c04a9b4,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04a9b8,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04a9a6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c04a9ca
	mov.w @(loc_8c04a9a8,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04a9bc
	bra loc_8c04a9be
	mov 0x01,r4

;##############################################
loc_8c04a99a:
	#data 0x0239
loc_8c04a99c:
	#data 0x0420
loc_8c04a99e:
	#data 0x01d6
loc_8c04a9a0:
	#data 0x01eb
loc_8c04a9a2:
	#data 0x0278
loc_8c04a9a4:
	#data 0x01f9
loc_8c04a9a6:
	#data 0x0233
loc_8c04a9a8:
	#data 0x0207
	#align4
loc_8c04a9ac:
	#data bank03.loc_8c034e8c
loc_8c04a9b0:
	#data bank05.loc_8c052ce2
loc_8c04a9b4:
	#data loc_8c042482
loc_8c04a9b8:
	#data bank10.loc_8c100672

;----------------------------------------------
loc_8c04a9bc:
	mov 0x03,r4

loc_8c04a9be:
	mov.l @(loc_8c04aabc,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)

loc_8c04a9ca:
	mov.w @(loc_8c04aaac,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04aa20
	mov.w @(loc_8c04aaae,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04aa20
	mov.w @(loc_8c04aab0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04aa20
	mov.w @(loc_8c04aab2,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04aa06
	mov.l @(loc_8c04aac0,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04aa00
	mov.w @(loc_8c04aab0,PC),r0
	mov 0xFF,r3
	bra loc_8c04aa06
	mov.b r3,@(r0,r14)

loc_8c04aa00:
	mov.w @(loc_8c04aab0,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c04aa06:
	mov.w @(loc_8c04aab0,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04aa20
	mov.w @(loc_8c04aab4,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c04aac4,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x11,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04aa20:
	mov.l @(loc_8c04aac8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04aa38
	lds.l @r15+,pr
	mov.l @(loc_8c04aac4,PC),r2
	mov 0x17,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04aa38:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04aa3e:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x25,r0
	bf loc_8c04aaf0
	mov.l @(loc_8c04aac8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c04ab3a
	mov.w @(loc_8c04aab6,PC),r0
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04aab8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04aa70
	bra loc_8c04ab7c
	nop

loc_8c04aa70:
	mov.w @(loc_8c04aaba,PC),r0
	mov 0x02,r3
	fldi0 fr4
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	mov.l @(loc_8c04aacc,PC),r3
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04aaa0
	mov.l @(loc_8c04aad0,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04aad8

loc_8c04aaa0:
	lds.l @r15+,pr
	mov.l @(loc_8c04aad4,PC),r2
	mov 0x01,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04aaac:
	#data 0x0235
loc_8c04aaae:
	#data 0x0420
loc_8c04aab0:
	#data 0x0236
loc_8c04aab2:
	#data 0x0525
loc_8c04aab4:
	#data 0x01d3
loc_8c04aab6:
	#data 0x0428
loc_8c04aab8:
	#data 0x0141
loc_8c04aaba:
	#data 0x01f9
	#align4

loc_8c04aabc:
	#data 0x8c26a518
loc_8c04aac0:
	#data bank05.loc_8c05bf3a
loc_8c04aac4:
	#data bank05.loc_8c0532a8
loc_8c04aac8:
	#data bank03.loc_8c034dee
loc_8c04aacc:
	#data bank05.loc_8c0518a0
loc_8c04aad0:
	#data bank05.loc_8c0526d6
loc_8c04aad4:
	#data bank03.loc_8c035162

;==============================================
loc_8c04aad8:
	mov.l @(loc_8c04ab98,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04ab7c
	mov.l @(loc_8c04ab9c,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	bra loc_8c04ab72
	nop

loc_8c04aaf0:
	mov 0x5C,r1
	mov.l @(loc_8c04aba0,PC),r3
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
	mov 0x6c,r1
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
	mov.l @(loc_8c04aba4,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04ab4e

loc_8c04ab3a:
	mov 0x00,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	mov 0x01,r3
	mov.w @(loc_8c04ab94,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04aba8,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04ab4e:
	mov.l @(loc_8c04abac,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04ab7c
	mov.l @(loc_8c04abb0,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04ab7c
	mov.l @(loc_8c04ab98,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04ab7c

loc_8c04ab72:
	lds.l @r15+,pr
	mov.l @(loc_8c04abb4,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04ab7c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04ab82:
	mov r4,r3
	mov.l @(loc_8c04abb8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04ab94:
	#data 0x01d3
	#align4

loc_8c04ab98:
	#data bank05.loc_8c052ce2
loc_8c04ab9c:
	#data bank03.loc_8c035162
loc_8c04aba0:
	#data bank05.loc_8c058d26
loc_8c04aba4:
	#data bank03.loc_8c034dee
loc_8c04aba8:
	#data bank05.loc_8c0517be
loc_8c04abac:
	#data bank05.loc_8c0518a0
loc_8c04abb0:
	#data bank05.loc_8c0526d6
loc_8c04abb4:
	#data bank05.loc_8c052dac
loc_8c04abb8:
	#data bank14.loc_8c14e810

;==============================================
loc_8c04abbc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04acc4,PC),r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04acac,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04acae,PC),r0
	mov 0x1C,r2
	mov.w @(loc_8c04acb0,PC),r1
	mov.l @(r0,r14),r3
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r3,r1
	extu.b r0,r0
	mov.l @r1,r3
	and 0x7F,r0
	mov.w @(loc_8c04acb2,PC),r1

loc_8c04abee:
	mul.l r2,r0
	add r14,r1
	sts macl,r0
	add r3,r0
	mov.l @(loc_8c04acc8,PC),r3
	mov.l r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04acb2,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c04ac10
	mov.w @(loc_8c04acb4,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c04ac10:
	mov.w @(loc_8c04acb6,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0

loc_8c04ac1a:
	cmp/eq 0x01,r0
	bf loc_8c04ac34
	mov.w @(loc_8c04acb8,PC),r0
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c04ac34
	mov.l @(loc_8c04accc,PC),r2
	jsr @r2
	mov r14,r4

loc_8c04ac34:
	mov.l @(loc_8c04acd0,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04acba,PC),r0
	mov.l @(loc_8c04acd4,PC),r3
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov.b @(0x2,r14),r0
	extu.b r0,r5
	jsr @r3
	mov r15,r4
	mov.w @(loc_8c04acbc,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04ac62
	bra loc_8c04ac64
	mov 0x01,r4

loc_8c04ac62:
	mov 0x03,r4

loc_8c04ac64:
	mov.l @(loc_8c04acd8,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)
	mov.w @(loc_8c04acae,PC),r0
	mov.w @(loc_8c04acbe,PC),r1
	mov.l @(r0,r14),r3
	add 0xF4,r0
	mov.l @(r0,r14),r2
	add r3,r1
	mov.l @(loc_8c04acdc,PC),r3
	mov.b @(0x5,r2),r0
	mov.w @(loc_8c04acbe,PC),r2
	mov.b r0,@r1
	add r14,r2
	mov.b r0,@r2
	jsr @r3
	mov r14,r4
	mova @(loc_8c04ace0,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04acc0,PC),r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04acc2,PC),r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04acac:
	#data 0x023a
loc_8c04acae:
	#data 0x01c8
loc_8c04acb0:
	#data 0x0174
loc_8c04acb2:
	#data 0x01bc
loc_8c04acb4:
	#data 0x0235
loc_8c04acb6:
	#data 0x01f9
loc_8c04acb8:
	#data 0x0428
loc_8c04acba:
	#data 0x041c
loc_8c04acbc:
	#data 0x0207
loc_8c04acbe:
	#data 0x01a0
loc_8c04acc0:
	#data 0x0218
loc_8c04acc2:
	#data 0x021c
	#align4

loc_8c04acc4:
	#data bank05.loc_8c05a46c
loc_8c04acc8:
	#data bank05.loc_8c058f08
loc_8c04accc:
	#data loc_8c0423ac
loc_8c04acd0:
	#data bank12.loc_8c1294c8
loc_8c04acd4:
	#data bank10.loc_8c100672
loc_8c04acd8:
	#data 0x8c26a518
loc_8c04acdc:
	#data bank05.loc_8c0589c0
loc_8c04ace0:
	#data 0xbf9a4924

;==============================================
loc_8c04ace4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04ae34,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04ae1a,PC),r0
	mov 0x01,r2
	mov 0x00,r3
	mov r14,r1
	mov.b r2,@(r0,r14)
	mov 0x48,r0
	mov.w @(loc_8c04ae1c,PC),r2
	add 0x50,r1
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c04ae38,PC),r3
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04ae1e,PC),r0
	mov.l @(loc_8c04ae3c,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04ae20,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c04ad30
	mov.w @(loc_8c04ae20,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c04ad30:
	mov 0x00,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04ae40,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04ae22,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04ada2
	mov.w @(loc_8c04ae24,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04ada2
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04ae44,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04ae48,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04ae26,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3

loc_8c04ada2:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04adbc
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04adbc
	mov.l @(loc_8c04ae4c,PC),r3
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c04adbc:
	mov.l @(loc_8c04ae50,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04ae14
	mov.w @(loc_8c04ae28,PC),r0
	mov 0x02,r2
	mov 0x05,r3
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c04ae2a,PC),r0
	mov.w r3,@(r0,r14)
	mov 0x1B,r3
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04ae2c,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04ae2e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c04adf2
	mov.w @(loc_8c04ae30,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c04ae04

loc_8c04adf2:
	mov.b @(0x6,r14),r0
	mov 0x1A,r3
	mov 0x03,r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04ae2c,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04ae32,PC),r0
	mov.b r2,@(r0,r14)

loc_8c04ae04:
	mov.w @(loc_8c04ae2c,PC),r0
	mov 0x0D,r5
	lds.l @r15+,pr
	mov.l @(loc_8c04ae54,PC),r3
	mov r14,r4
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8c04ae14:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04ae1a:
	#data 0x012c
loc_8c04ae1c:
	#data 0x0284
loc_8c04ae1e:
	#data 0x0108
loc_8c04ae20:
	#data 0x041c
loc_8c04ae22:
	#data 0x01fd
loc_8c04ae24:
	#data 0x0238
loc_8c04ae26:
	#data 0x0235
loc_8c04ae28:
	#data 0x01eb
loc_8c04ae2a:
	#data 0x0278
loc_8c04ae2c:
	#data 0x0158
loc_8c04ae2e:
	#data 0x0233
loc_8c04ae30:
	#data 0x0420
loc_8c04ae32:
	#data 0x01f9
	#align4
loc_8c04ae34:
	#data bank05.loc_8c0521d4
loc_8c04ae38:
	#data bank12.loc_8c1294c8
loc_8c04ae3c:
	#data loc_8c04e958
loc_8c04ae40:
	#data bank03.loc_8c034dee
loc_8c04ae44:
	#data loc_8c0423ac
loc_8c04ae48:
	#data bank10.loc_8c107f1c
loc_8c04ae4c:
	#data loc_8c04e98a
loc_8c04ae50:
	#data bank05.loc_8c052ce2
loc_8c04ae54:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c04ae58:
	mov.w @(loc_8c04af50,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04af64,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04ae7c
	lds.l @r15+,pr
	mov.l @(loc_8c04af68,PC),r3
	mov 0x00,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04ae7c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04ae82:
	mov.w @(loc_8c04af50,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04af52,PC),r0
	mov.w @(r0,r14),r4
	cmp/pz r4
	bf loc_8c04af38
	mov.w @(loc_8c04af54,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c04aea2
	cmp/pl r4
	bt loc_8c04af38

loc_8c04aea2:
	mov.w @(loc_8c04af52,PC),r0
	mov 0xFF,r2
	mov.l @(loc_8c04af6c,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04af70,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04af56,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c04aee2
	mov.w @(loc_8c04af58,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04aed4
	bra loc_8c04aed6
	mov 0x01,r4

loc_8c04aed4:
	mov 0x03,r4

loc_8c04aed6:
	mov.l @(loc_8c04af74,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)

loc_8c04aee2:
	mov.w @(loc_8c04af5a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04af38
	mov.w @(loc_8c04af54,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04af38
	mov.w @(loc_8c04af5c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04af38
	mov.w @(loc_8c04af5e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04af1e
	mov.l @(loc_8c04af78,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04af18
	mov.w @(loc_8c04af5c,PC),r0
	mov 0xFF,r3
	bra loc_8c04af1e
	mov.b r3,@(r0,r14)

loc_8c04af18:
	mov.w @(loc_8c04af5c,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c04af1e:
	mov.w @(loc_8c04af5c,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04af38
	mov.w @(loc_8c04af60,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c04af68,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x11,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04af38:
	mov.l @(loc_8c04af64,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04af7c
	lds.l @r15+,pr
	mov.l @(loc_8c04af68,PC),r2
	mov 0x17,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04af50:
	#data 0x01eb
loc_8c04af52:
	#data 0x0278
loc_8c04af54:
	#data 0x0420
loc_8c04af56:
	#data 0x0233
loc_8c04af58:
	#data 0x0207
loc_8c04af5a:
	#data 0x0235
loc_8c04af5c:
	#data 0x0236
loc_8c04af5e:
	#data 0x0525
loc_8c04af60:
	#data 0x01d3
	#align4
loc_8c04af64:
	#data bank03.loc_8c034dee
loc_8c04af68:
	#data bank05.loc_8c0532a8
loc_8c04af6c:
	#data loc_8c042482
loc_8c04af70:
	#data bank10.loc_8c100672
loc_8c04af74:
	#data 0x8c26a518
loc_8c04af78:
	#data bank05.loc_8c05bf3a

;==============================================
loc_8c04af7c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04af82:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c04afa2
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04b0b8,PC),r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04b09a,PC),r0
	mov.b @(r0,r14),r3
	add 0x02,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4

loc_8c04afa2:
	mov.w @(loc_8c04b09c,PC),r0
	mov 0x1C,r2
	mov.w @(loc_8c04b09e,PC),r1
	mov.l @(r0,r14),r3
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r3,r1
	extu.b r0,r0
	mov.l @r1,r3
	and 0x7F,r0
	mov.w @(loc_8c04b0a0,PC),r1
	mul.l r2,r0
	add r14,r1
	sts macl,r0
	add r3,r0
	mov.l @(loc_8c04b0bc,PC),r3
	mov.l r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04b0a2,PC),r0
	mov 0x02,r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c04b0a4,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c04b0a6,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04b0c0,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04b09c,PC),r0
	mov r14,r4
	mov.w @(loc_8c04b0a8,PC),r1
	mov.l @(r0,r14),r2
	add 0xF4,r0
	mov.l @(r0,r14),r3
	add r2,r1
	mov.w @(loc_8c04b0a8,PC),r2
	mov.b @(0x5,r3),r0
	add r14,r2
	mov.l @(loc_8c04b0c4,PC),r3
	mov.b r0,@r1
	mov.b r0,@r2
	mov.w @(loc_8c04b0aa,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.b @(0x2,r14),r0
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04b0ac,PC),r0
	mov 0x01,r2
	mov 0x00,r3
	mov r14,r1
	mov.b r2,@(r0,r14)
	mov 0x48,r0
	mov.w @(loc_8c04b0ae,PC),r2
	add 0x50,r1
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c04b0c8,PC),r3
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04b0b0,PC),r0
	mov r14,r4
	fldi1 fr3
	mov 0x17,r5
	mov.l @(loc_8c04b0cc,PC),r3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04b034:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c04b054
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04b0b8,PC),r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04b09a,PC),r0
	mov.b @(r0,r14),r3
	add 0x02,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4

loc_8c04b054:
	mov.w @(loc_8c04b09c,PC),r0
	mov 0x1C,r2
	mov.w @(loc_8c04b09e,PC),r1
	mov.l @(r0,r14),r3
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r3,r1
	extu.b r0,r0
	mov.l @r1,r3
	and 0x7F,r0
	mov.w @(loc_8c04b0a0,PC),r1
	mul.l r2,r0
	add r14,r1
	sts macl,r0
	add r3,r0
	mov.l @(loc_8c04b0bc,PC),r3
	mov.l r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04b0b2,PC),r0
	mov.b @(r0,r14),r2
	add 0x07,r0
	mov.b r2,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x5,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04b0b4,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04b0d0
	mov.w @(loc_8c04b0b6,PC),r0
	bra loc_8c04b0da
	mov 0x17,r3

;##############################################
loc_8c04b09a:
	#data 0x023a
loc_8c04b09c:
	#data 0x01c8
loc_8c04b09e:
	#data 0x0174
loc_8c04b0a0:
	#data 0x01bc
loc_8c04b0a2:
	#data 0x01d2
loc_8c04b0a4:
	#data 0x0130
loc_8c04b0a6:
	#data 0x01f9
loc_8c04b0a8:
	#data 0x01a0
loc_8c04b0aa:
	#data 0x041c
loc_8c04b0ac:
	#data 0x012c
loc_8c04b0ae:
	#data 0x0284
loc_8c04b0b0:
	#data 0x0108
loc_8c04b0b2:
	#data 0x0232
loc_8c04b0b4:
	#data 0x0420
loc_8c04b0b6:
	#data 0x0233
	#align4

loc_8c04b0b8:
	#data bank05.loc_8c05a46c
loc_8c04b0bc:
	#data bank05.loc_8c058f08
loc_8c04b0c0:
	#data loc_8c0423ac
loc_8c04b0c4:
	#data bank10.loc_8c100672
loc_8c04b0c8:
	#data bank12.loc_8c1294c8
loc_8c04b0cc:
	#data bank05.loc_8c0532a8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04b0d0:
	mov.w @(loc_8c04b1ea,PC),r0
	mov 0x01,r1
	mov 0x02,r3
	mov.b r1,@(r0,r14)
	add 0xFF,r0

loc_8c04b0da:
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04b1ec,PC),r0
	mov.l @(loc_8c04b200,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c04b1ee,PC),r0
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	mov 0x02,r3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04b1f0,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04b1f2,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c04b10c
	mov.w @(loc_8c04b1f2,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c04b10c:
	mov.w @(loc_8c04b1f4,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.l r2,@(r0,r14)
	add 0x50,r1
	mov.w @(loc_8c04b1f6,PC),r2
	mov.l @(loc_8c04b208,PC),r3
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04b1f8,PC),r0
	mov r14,r4
	mov.l @(loc_8c04b20c,PC),r3
	mov 0x00,r6
	fldi1 fr3
	mov 0x0D,r5
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04b13a:
	mov.w @(loc_8c04b1fa,PC),r0
	mov.l r14,@-r15

loc_8c04b13e:
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r4
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x2C,r0
	bt.s loc_8c04b1d2
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x31,r0
	bt loc_8c04b1d2
	mov.w @(loc_8c04b1fa,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x36,r0
	bt.s loc_8c04b16c
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x10,r0
	bf loc_8c04b172

loc_8c04b16c:
	mov.l @(loc_8c04b210,PC),r3
	jsr @r3
	mov r14,r4

loc_8c04b172:
	mov.w @(loc_8c04b1fc,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c04b1d2
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04b1f2,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04b1d2
	mov.w @(loc_8c04b1f2,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04b1f0,PC),r0
	mov.b r4,@(r0,r14)

loc_8c04b1d2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04b1d8:
	mov r4,r3
	mov.l @(loc_8c04b214,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04b1ea:
	#data 0x0234
loc_8c04b1ec:
	#data 0x0130
loc_8c04b1ee:
	#data 0x01d2
loc_8c04b1f0:
	#data 0x01f9
loc_8c04b1f2:
	#data 0x041c
loc_8c04b1f4:
	#data 0x012c
loc_8c04b1f6:
	#data 0x0284
loc_8c04b1f8:
	#data 0x0108
loc_8c04b1fa:
	#data 0x01c8
loc_8c04b1fc:
	#data 0x01f5
	#align4
loc_8c04b200:
	#data bank05.loc_8c0589c0
loc_8c04b204:
	#data 0xbf9a4924
loc_8c04b208:
	#data bank12.loc_8c1294c8
loc_8c04b20c:
	#data bank03.loc_8c034e8c
loc_8c04b210:
	#data bank03.loc_8c034dee
loc_8c04b214:
	#data bank14.loc_8c14e824

;==============================================
loc_8c04b218:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x1C,r4
	mov.w @(loc_8c04b264,PC),r1
	mov.l r13,@-r15
	mov 0x00,r13
	add r14,r1
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04b260,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0x8E,r0
	mov.l @(r0,r14),r2
	add 0xD9,r0
	mov.b @(r0,r14),r0
	mov.w @(loc_8c04b262,PC),r3
	extu.b r0,r0
	and 0x7F,r0
	mul.l r4,r0
	add r2,r3
	mov.l @r3,r3
	sts macl,r0
	add r3,r0
	mov.l r0,@r1
	mov.w @(loc_8c04b266,PC),r0
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c04b268,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c04b26a
	bra loc_8c04b26c
	mov 0x01,r3

;##############################################
loc_8c04b260:
	#data 0x023a
loc_8c04b262:
	#data 0x0174
loc_8c04b264:
	#data 0x01bc
loc_8c04b266:
	#data 0x0239
loc_8c04b268:
	#data 0x0420

;----------------------------------------------
loc_8c04b26a:
	mov 0x02,r3

loc_8c04b26c:
	mov.w @(loc_8c04b388,PC),r0
	mov 0x02,r2
	mov r14,r1
	add 0x50,r1
	mov.b r3,@(r0,r14)
	add 0xFB,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov 0x04,r3
	mov.b r3,@(r0,r14)
	add 0xFD,r0
	mov.w r13,@(r0,r14)
	add 0xA6,r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c04b38a,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)
	mov 0x01,r3
	mov.w @(loc_8c04b38c,PC),r0
	mov.b r2,@(r0,r14)
	mov 0x00,r2
	mov.w @(loc_8c04b38e,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8c04b390,PC),r2
	mov.l @(loc_8c04b3a0,PC),r3
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04b392,PC),r0
	mov.l @(loc_8c04b3a4,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04b394,PC),r0
	mov.l @(loc_8c04b3a8,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mova @(0xEC,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04b396,PC),r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04b398,PC),r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04b3b0,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf.s loc_8c04b346
	mov 0x01,r13
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04b346
	mov r13,r0
	nop
	mov.l @(loc_8c04b3b4,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c04b346:
	mov.w @(loc_8c04b388,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04b3bc
	mov.w @(loc_8c04b39a,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c04b3bc
	mov.w @(loc_8c04b39c,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c04b3bc
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	mov 0xFF,r3
	mov.w @(loc_8c04b39e,PC),r0
	mov 0x0D,r5
	mov 0x1E,r6
	mov.b r3,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8c04b3b8,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c04aa3e
	mov.l @r15+,r14

;##############################################
loc_8c04b388:
	#data 0x0233
loc_8c04b38a:
	#data 0x0130
loc_8c04b38c:
	#data 0x01f9
loc_8c04b38e:
	#data 0x012c
loc_8c04b390:
	#data 0x0284
loc_8c04b392:
	#data 0x0108
loc_8c04b394:
	#data 0x022f
loc_8c04b396:
	#data 0x0218
loc_8c04b398:
	#data 0x021c
loc_8c04b39a:
	#data 0x0239
loc_8c04b39c:
	#data 0x0420
loc_8c04b39e:
	#data 0x01d6
	#align4
loc_8c04b3a0:
	#data bank12.loc_8c1294c8
loc_8c04b3a4:
	#data loc_8c04e958
loc_8c04b3a8:
	#data bank05.loc_8c058afa
loc_8c04b3ac:
	#data 0xbf9a4924
loc_8c04b3b0:
	#data bank03.loc_8c034dee
loc_8c04b3b4:
	#data loc_8c04e98a
loc_8c04b3b8:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c04b3bc:
	mov.l @(loc_8c04b4f8,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04b416
	mov.l @(loc_8c04b4fc,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04b500,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04b4de,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04b3ea
	bra loc_8c04b3ec
	mov 0x01,r4

loc_8c04b3ea:
	mov 0x03,r4

loc_8c04b3ec:
	mov.l @(loc_8c04b504,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov r13,r0
	nop
	mov.b r0,@(0x6,r5)
	mov 0x03,r3
	mov.b @(0x6,r14),r0
	mov 0x1A,r6
	mov 0x0D,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04b4e0,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04b508,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04b416:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04b41e:
	mov.w @(loc_8c04b4e2,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04b50c,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04b442
	lds.l @r15+,pr
	mov.l @(loc_8c04b510,PC),r3
	mov 0x17,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04b442:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04b448:
	mov.w @(loc_8c04b4e4,PC),r0
	mov 0x1C,r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c04b4e6,PC),r1
	sts.l pr,@-r15
	mov.l @(r0,r14),r3
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r3,r1
	extu.b r0,r0
	mov.l @r1,r3
	and 0x7F,r0
	mov.w @(loc_8c04b4e8,PC),r1
	mul.l r2,r0
	add r14,r1
	sts macl,r0
	add r3,r0
	mov.l @(loc_8c04b514,PC),r3
	mov.l r0,@r1
	mov.w @(loc_8c04b4e4,PC),r0
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04b518,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04b4ea,PC),r0
	mov 0x30,r4
	mov 0x01,r2
	mov r14,r1
	mov.b @(r0,r14),r3
	add 0x50,r1
	mov.w @(loc_8c04b4ec,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)
	mov 0x64,r3
	mov.w @(loc_8c04b4ee,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04b4f0,PC),r0
	mov.w r4,@(r0,r14)
	add 0x0F,r0
	mov.b r4,@(r0,r14)
	add 0xEE,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r3
	mov.w @(loc_8c04b4f2,PC),r0
	mov.b r2,@(r0,r14)
	mov 0x48,r0
	mov.w @(loc_8c04b4f4,PC),r2
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c04b51c,PC),r3
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04b4f6,PC),r0
	mov r14,r4
	fldi1 fr3
	mov 0x17,r5
	mov.l @(loc_8c04b510,PC),r3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04b4cc:
	mov r4,r3
	mov.l @(loc_8c04b520,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04b4de:
	#data 0x0207
loc_8c04b4e0:
	#data 0x01f9
loc_8c04b4e2:
	#data 0x01eb
loc_8c04b4e4:
	#data 0x01c8
loc_8c04b4e6:
	#data 0x0174
loc_8c04b4e8:
	#data 0x01bc
loc_8c04b4ea:
	#data 0x01d2
loc_8c04b4ec:
	#data 0x0130
loc_8c04b4ee:
	#data 0x041c
loc_8c04b4f0:
	#data 0x01e6
loc_8c04b4f2:
	#data 0x012c
loc_8c04b4f4:
	#data 0x0284
loc_8c04b4f6:
	#data 0x0108
	#align4
loc_8c04b4f8:
	#data bank05.loc_8c052ce2
loc_8c04b4fc:
	#data loc_8c042482
loc_8c04b500:
	#data bank10.loc_8c100672
loc_8c04b504:
	#data 0x8c26a518
loc_8c04b508:
	#data bank03.loc_8c034e8c
loc_8c04b50c:
	#data bank03.loc_8c034dee
loc_8c04b510:
	#data bank05.loc_8c0532a8
loc_8c04b514:
	#data bank05.loc_8c059f64
loc_8c04b518:
	#data bank05.loc_8c058f08
loc_8c04b51c:
	#data bank12.loc_8c1294c8
loc_8c04b520:
	#data bank14.loc_8c14e834

;==============================================
loc_8c04b524:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04b5bc,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xFE,r0
	mov.l @(loc_8c04b5cc,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04b5be,PC),r0
	mov 0x1C,r3
	mov.w @(loc_8c04b5c0,PC),r1
	mov.l @(r0,r14),r2
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r2,r1
	extu.b r0,r0
	mov.l @r1,r2
	and 0x7F,r0
	mov.w @(loc_8c04b5c2,PC),r1
	mul.l r3,r0
	add r14,r1
	sts macl,r0
	add r2,r0
	mov.l @(loc_8c04b5d0,PC),r2
	mov.l r0,@r1
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04b5c2,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c04b57e
	mov.w @(loc_8c04b5c4,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c04b57e:
	mov.w @(loc_8c04b5c6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c04b58c
	bra loc_8c04b58e
	mov 0x02,r4

loc_8c04b58c:
	mov 0x03,r4

loc_8c04b58e:
	mov.w @(loc_8c04b5c8,PC),r0
	extu.b r4,r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r2,r3
	bt loc_8c04b5a2
	mov.w @(loc_8c04b5ca,PC),r0
	mov.b r13,@(r0,r14)

loc_8c04b5a2:
	mov.w @(loc_8c04b5ca,PC),r0
	mov 0x04,r2
	mov.b @(r0,r14),r3
	cmp/ge r2,r3
	bt loc_8c04b5de
	extu.b r4,r0
	cmp/eq 0x02,r0
	bf loc_8c04b5d8
	mov.l @(loc_8c04b5d4,PC),r1
	jsr @r1
	mov r14,r4
	bra loc_8c04b5de
	nop

;##############################################
loc_8c04b5bc:
	#data 0x023a
loc_8c04b5be:
	#data 0x01c8
loc_8c04b5c0:
	#data 0x0174
loc_8c04b5c2:
	#data 0x01bc
loc_8c04b5c4:
	#data 0x0235
loc_8c04b5c6:
	#data 0x01f6
loc_8c04b5c8:
	#data 0x022a
loc_8c04b5ca:
	#data 0x0229
	#align4
loc_8c04b5cc:
	#data bank05.loc_8c05a46c
loc_8c04b5d0:
	#data bank05.loc_8c058f08
loc_8c04b5d4:
	#data bank0e.loc_8c0ee418

;----------------------------------------------
loc_8c04b5d8:
	mov.l @(loc_8c04b730,PC),r1
	jsr @r1
	mov r14,r4

loc_8c04b5de:
	mov.w @(loc_8c04b710,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b @(r0,r14),r3
	add 0x07,r0
	mov.b r3,@(r0,r14)
	add 0x99,r0
	mov.b @(r0,r14),r2
	mov 0x02,r3
	mov.w @(loc_8c04b712,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov 0x01,r2
	mov.w @(loc_8c04b714,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04b716,PC),r0
	mov.l @(loc_8c04b734,PC),r3
	mov.b r2,@(r0,r14)
	mov 0x48,r0
	mov.w @(loc_8c04b718,PC),r2
	mov.l r13,@(r0,r14)
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04b71a,PC),r0
	mov.l @(loc_8c04b738,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04b73c,PC),r2
	jsr @r2
	mov r14,r4
	mova @(loc_8c04b740,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04b71c,PC),r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04b71e,PC),r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04b744,PC),r3
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
	mov 0x6c,r1

loc_8c04b67a:
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04b720,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c04b6b2
	mov 0x01,r13
	mov.w @(loc_8c04b722,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04b6b2
	mov.w @(loc_8c04b720,PC),r0
	mov.l @(loc_8c04b748,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04b74c,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04b724,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3

loc_8c04b6b2:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04b6ce
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04b6ce
	mov r13,r0
	nop
	mov.l @(loc_8c04b750,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c04b6ce:
	mov.w @(loc_8c04b726,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04b758
	mov.w @(loc_8c04b728,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c04b758
	mov.w @(loc_8c04b72a,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c04b758
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	mov 0xFF,r3
	mov.w @(loc_8c04b72c,PC),r0
	mov 0x0D,r5
	mov 0x1E,r6
	mov.b r3,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8c04b754,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c04aa3e
	mov.l @r15+,r14

;##############################################
loc_8c04b710:
	#data 0x0232
loc_8c04b712:
	#data 0x0130
loc_8c04b714:
	#data 0x01f9
loc_8c04b716:
	#data 0x012c
loc_8c04b718:
	#data 0x0284
loc_8c04b71a:
	#data 0x0108
loc_8c04b71c:
	#data 0x0218
loc_8c04b71e:
	#data 0x021c
loc_8c04b720:
	#data 0x0238
loc_8c04b722:
	#data 0x01fd
loc_8c04b724:
	#data 0x0235
loc_8c04b726:
	#data 0x0233
loc_8c04b728:
	#data 0x0239
loc_8c04b72a:
	#data 0x0420
loc_8c04b72c:
	#data 0x01d6
	#align4
loc_8c04b730:
	#data bank0e.loc_8c0ee570
loc_8c04b734:
	#data bank12.loc_8c1294c8
loc_8c04b738:
	#data loc_8c04e958
loc_8c04b73c:
	#data bank05.loc_8c0589c0
loc_8c04b740:
	#data 0xbf9a4924
loc_8c04b744:
	#data bank03.loc_8c034dee
loc_8c04b748:
	#data loc_8c0423ac
loc_8c04b74c:
	#data bank10.loc_8c107f1c
loc_8c04b750:
	#data loc_8c04e98a
loc_8c04b754:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c04b758:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04b796
	mov.l @(loc_8c04b85c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04b796
	mov.b @(0x6,r14),r0
	mov 0x02,r3
	mov 0x05,r2
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1A,r6
	mov.w @(loc_8c04b84a,PC),r0
	mov 0x0D,r5
	mov.b r3,@(r0,r14)
	mov 0x03,r3
	mov.w @(loc_8c04b84c,PC),r0
	mov.w r2,@(r0,r14)
	add 0x81,r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04b860,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04b796:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04b79e:
	mov.w @(loc_8c04b84a,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04b84c,PC),r0
	mov.w @(r0,r14),r4
	cmp/pz r4

loc_8c04b7b0:
	bf loc_8c04b878
	mov.w @(loc_8c04b84e,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c04b7be
	cmp/pl r4
	bt loc_8c04b878

loc_8c04b7be:
	mov.w @(loc_8c04b84c,PC),r0
	mov 0xFF,r2
	mov.l @(loc_8c04b864,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04b868,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04b850,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04b7e6
	bra loc_8c04b7e8
	mov 0x01,r4

loc_8c04b7e6:
	mov 0x03,r4

loc_8c04b7e8:
	mov.l @(loc_8c04b86c,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)
	mov.w @(loc_8c04b852,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04b878
	mov.w @(loc_8c04b84e,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04b878
	mov.w @(loc_8c04b854,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04b878
	mov.w @(loc_8c04b856,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04b830
	mov.l @(loc_8c04b870,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04b82a
	mov.w @(loc_8c04b854,PC),r0
	mov 0xFF,r3
	bra loc_8c04b830
	mov.b r3,@(r0,r14)

loc_8c04b82a:
	mov.w @(loc_8c04b854,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c04b830:
	mov.w @(loc_8c04b854,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04b878
	mov.w @(loc_8c04b858,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c04b874,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x11,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04b84a:
	#data 0x01eb
loc_8c04b84c:
	#data 0x0278
loc_8c04b84e:
	#data 0x0420
loc_8c04b850:
	#data 0x0207
loc_8c04b852:
	#data 0x0235
loc_8c04b854:
	#data 0x0236
loc_8c04b856:
	#data 0x0525
loc_8c04b858:
	#data 0x01d3
	#align4
loc_8c04b85c:
	#data bank05.loc_8c052ce2
loc_8c04b860:
	#data bank03.loc_8c034e8c
loc_8c04b864:
	#data loc_8c042482
loc_8c04b868:
	#data bank10.loc_8c100672
loc_8c04b86c:
	#data 0x8c26a518
loc_8c04b870:
	#data bank05.loc_8c05bf3a
loc_8c04b874:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c04b878:
	mov.l @(loc_8c04b9c0,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04b890
	lds.l @r15+,pr
	mov.l @(loc_8c04b9c4,PC),r2
	mov 0x17,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04b890:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04b896:
	mov r4,r3
	mov.l @(loc_8c04b9c8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c04b8a8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04b9cc,PC),r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04b9a6,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04b9a8,PC),r0
	mov 0x1C,r2
	mov.w @(loc_8c04b9aa,PC),r1
	mov.l @(r0,r14),r3
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r3,r1
	extu.b r0,r0
	mov.l @r1,r3
	and 0x7F,r0
	mov.w @(loc_8c04b9ac,PC),r1
	mul.l r2,r0
	add r14,r1
	sts macl,r0
	add r3,r0
	mov.l @(loc_8c04b9d0,PC),r3
	mov.l r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04b9ac,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c04b8fc
	mov.w @(loc_8c04b9ae,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c04b8fc:
	mov.w @(loc_8c04b9b0,PC),r0
	mov 0x02,r2
	mov.b @(r0,r14),r3
	add 0x07,r0
	mov.b r3,@(r0,r14)
	add 0xC0,r0
	mov.b r2,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c04b928
	mov.w @(loc_8c04b9b2,PC),r0
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c04b928
	mov.l @(loc_8c04b9d4,PC),r2
	jsr @r2
	mov r14,r4

loc_8c04b928:
	mov.l @(loc_8c04b9d8,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04b9b4,PC),r0
	mov.l @(loc_8c04b9dc,PC),r3
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov.b @(0x2,r14),r0
	extu.b r0,r5
	jsr @r3
	mov r15,r4
	mov.w @(loc_8c04b9b6,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04b956
	bra loc_8c04b958
	mov 0x01,r4

loc_8c04b956:
	mov 0x03,r4

loc_8c04b958:
	mov.l @(loc_8c04b9e0,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)
	mov.w @(loc_8c04b9a8,PC),r0
	mov.w @(loc_8c04b9b8,PC),r1
	mov.l @(r0,r14),r3
	add 0xF4,r0
	mov.l @(r0,r14),r2
	add r3,r1
	mov.l @(loc_8c04b9e4,PC),r3
	mov.b @(0x5,r2),r0
	mov.w @(loc_8c04b9b8,PC),r2
	mov.b r0,@r1
	add r14,r2
	mov.b r0,@r2
	jsr @r3
	mov r14,r4
	mova @(loc_8c04b9e8,PC),r0
	mov.l @(loc_8c04b9ec,PC),r3
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04b9ba,PC),r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04b9bc,PC),r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04b9a6:
	#data 0x023a
loc_8c04b9a8:
	#data 0x01c8
loc_8c04b9aa:
	#data 0x0174
loc_8c04b9ac:
	#data 0x01bc
loc_8c04b9ae:
	#data 0x0235
loc_8c04b9b0:
	#data 0x0232
loc_8c04b9b2:
	#data 0x0428
loc_8c04b9b4:
	#data 0x041c
loc_8c04b9b6:
	#data 0x0207
loc_8c04b9b8:
	#data 0x01a0
loc_8c04b9ba:
	#data 0x0218
loc_8c04b9bc:
	#data 0x021c
	#align4
loc_8c04b9c0:
	#data bank03.loc_8c034dee
loc_8c04b9c4:
	#data bank05.loc_8c0532a8
loc_8c04b9c8:
	#data bank14.loc_8c14e844
loc_8c04b9cc:
	#data bank05.loc_8c05a46c
loc_8c04b9d0:
	#data bank05.loc_8c058f08
loc_8c04b9d4:
	#data loc_8c0423ac
loc_8c04b9d8:
	#data bank12.loc_8c1294c8
loc_8c04b9dc:
	#data bank10.loc_8c100672
loc_8c04b9e0:
	#data 0x8c26a518
loc_8c04b9e4:
	#data bank05.loc_8c0589c0
loc_8c04b9e8:
	#data 0xbf9a4924
loc_8c04b9ec:
	#data loc_8c04cbcc

;==============================================
loc_8c04b9f0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04bb28,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04bb10,PC),r0
	mov 0x01,r2
	mov 0x00,r3
	mov r14,r1
	mov.b r2,@(r0,r14)
	mov 0x48,r0
	mov.w @(loc_8c04bb12,PC),r2
	add 0x50,r1
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c04bb2c,PC),r3
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04bb14,PC),r0
	mov.l @(loc_8c04bb30,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04bb16,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c04ba3c
	mov.w @(loc_8c04bb16,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c04ba3c:
	mov 0x00,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04bb34,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04bb18,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c04bab0
	mov 0x01,r13
	mov.w @(loc_8c04bb1a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04bab0
	mov.l @(loc_8c04bb38,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04bb3c,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04bb1c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3

loc_8c04bab0:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04bacc
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04bacc
	mov r13,r0
	nop
	mov.l @(loc_8c04bb40,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c04bacc:
	mov.w @(loc_8c04bb1e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04bb4c
	mov.w @(loc_8c04bb20,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c04bb4c

loc_8c04bae4:
	mov.w @(loc_8c04bb22,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c04bb4c
	mov 0x04,r0
	mov.b r0,@(0x6,r14)
	mov 0xFF,r3
	mov.w @(loc_8c04bb24,PC),r0
	mov 0x0D,r5
	mov 0x1E,r6
	mov.b r3,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8c04bb44,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04bb48,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04bb10:
	#data 0x012c
loc_8c04bb12:
	#data 0x0284
loc_8c04bb14:
	#data 0x0108
loc_8c04bb16:
	#data 0x041c
loc_8c04bb18:
	#data 0x01fd
loc_8c04bb1a:
	#data 0x0238
loc_8c04bb1c:
	#data 0x0235
loc_8c04bb1e:
	#data 0x0233
loc_8c04bb20:
	#data 0x0239
loc_8c04bb22:
	#data 0x0420
loc_8c04bb24:
	#data 0x01d6
	#align4
loc_8c04bb28:
	#data bank05.loc_8c0521d4
loc_8c04bb2c:
	#data bank12.loc_8c1294c8
loc_8c04bb30:
	#data loc_8c04e958
loc_8c04bb34:
	#data bank03.loc_8c034dee
loc_8c04bb38:
	#data loc_8c0423ac
loc_8c04bb3c:
	#data bank10.loc_8c107f1c
loc_8c04bb40:
	#data loc_8c04e98a
loc_8c04bb44:
	#data bank03.loc_8c034e8c
loc_8c04bb48:
	#data loc_8c04aa3e

;==============================================
loc_8c04bb4c:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04bb88
	mov.l @(loc_8c04bc58,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04bb88
	mov.b @(0x6,r14),r0
	mov 0x02,r4
	mov 0x05,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1A,r6
	mov.w @(loc_8c04bc46,PC),r0
	mov 0x0D,r5
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c04bc48,PC),r0
	mov.w r3,@(r0,r14)
	add 0x81,r0
	mov.b r4,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04bc5c,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04bb88:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04bb90:
	mov.w @(loc_8c04bc46,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04bc48,PC),r0
	mov.w @(r0,r14),r4
	cmp/pz r4
	bf loc_8c04bc74
	mov.w @(loc_8c04bc4a,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c04bbb0
	cmp/pl r4
	bt loc_8c04bc74

loc_8c04bbb0:
	mov.w @(loc_8c04bc48,PC),r0
	mov 0xFF,r2
	mov.l @(loc_8c04bc60,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04bc64,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04bc4c,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c04bbf0
	mov.w @(loc_8c04bc4e,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04bbe2
	bra loc_8c04bbe4
	mov 0x01,r4

loc_8c04bbe2:
	mov 0x03,r4

loc_8c04bbe4:
	mov.l @(loc_8c04bc68,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)

loc_8c04bbf0:
	mov.w @(loc_8c04bc50,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04bc74
	mov.w @(loc_8c04bc4a,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04bc74
	mov.w @(loc_8c04bc52,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04bc74
	mov.w @(loc_8c04bc54,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04bc2c
	mov.l @(loc_8c04bc6c,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04bc26
	mov.w @(loc_8c04bc52,PC),r0
	mov 0xFF,r3
	bra loc_8c04bc2c
	mov.b r3,@(r0,r14)

loc_8c04bc26:
	mov.w @(loc_8c04bc52,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c04bc2c:
	mov.w @(loc_8c04bc52,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04bc74
	mov.w @(loc_8c04bc56,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c04bc70,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x11,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04bc46:
	#data 0x01eb
loc_8c04bc48:
	#data 0x0278
loc_8c04bc4a:
	#data 0x0420
loc_8c04bc4c:
	#data 0x0233
loc_8c04bc4e:
	#data 0x0207
loc_8c04bc50:
	#data 0x0235
loc_8c04bc52:
	#data 0x0236
loc_8c04bc54:
	#data 0x0525
loc_8c04bc56:
	#data 0x01d3
	#align4
loc_8c04bc58:
	#data bank05.loc_8c052ce2
loc_8c04bc5c:
	#data bank03.loc_8c034e8c
loc_8c04bc60:
	#data loc_8c042482
loc_8c04bc64:
	#data bank10.loc_8c100672
loc_8c04bc68:
	#data 0x8c26a518
loc_8c04bc6c:
	#data bank05.loc_8c05bf3a
loc_8c04bc70:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c04bc74:
	mov.l @(loc_8c04bd00,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04bc8c
	lds.l @r15+,pr
	mov.l @(loc_8c04bd04,PC),r2
	mov 0x17,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04bc8c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04bc92:
	mov.b @(0x6,r4),r0
	tst r0,r0
	bf.s loc_8c04bcac
	mov 0x00,r2
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x40,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8c04bcf8,PC),r0
	mov.b @(r0,r4),r3
	add 0x07,r0
	mov.b r3,@(r0,r4)

loc_8c04bcac:
	mov.w @(loc_8c04bcfa,PC),r0
	mov.b r2,@(r0,r4)
	add 0x44,r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8c04bcfc,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c04bce2
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_8c04bce2
	mov.w @(loc_8c04bcfe,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04bcdc
	mov.l @(loc_8c04bd08,PC),r3
	jmp @r3
	nop

loc_8c04bcdc:
	mov.l @(loc_8c04bd0c,PC),r2
	jmp @r2
	nop

loc_8c04bce2:
	rts
	nop

;==============================================
loc_8c04bce6:
	mov r4,r3
	mov.l @(loc_8c04bd10,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04bcf8:
	#data 0x0232
loc_8c04bcfa:
	#data 0x01f5
loc_8c04bcfc:
	#data 0x0239
loc_8c04bcfe:
	#data 0x01f9
	#align4
loc_8c04bd00:
	#data bank03.loc_8c034dee
loc_8c04bd04:
	#data bank05.loc_8c0532a8
loc_8c04bd08:
	#data bank05.loc_8c051648
loc_8c04bd0c:
	#data bank05.loc_8c05176e
loc_8c04bd10:
	#data bank14.loc_8c14e858

;==============================================
loc_8c04bd14:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04be84,PC),r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04be66,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04be68,PC),r0
	mov 0x1C,r2
	mov.w @(loc_8c04be6a,PC),r1
	mov.l @(r0,r14),r3
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r3,r1
	extu.b r0,r0
	mov.l @r1,r3
	and 0x7F,r0
	mov.w @(loc_8c04be6c,PC),r1
	mul.l r2,r0
	add r14,r1
	sts macl,r0
	add r3,r0
	mov.l @(loc_8c04be88,PC),r3
	mov.l r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04be6e,PC),r0
	mov.b @(r0,r14),r2
	add 0x07,r0
	mov.b r2,@(r0,r14)
	add 0x99,r0
	mov.b @(r0,r14),r3
	mov 0x02,r2
	mov.w @(loc_8c04be70,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)
	mov.w @(loc_8c04be72,PC),r0
	mov.b r2,@(r0,r14)
	add 0xA8,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c04bd9e
	mov.w @(loc_8c04be68,PC),r0
	mov.l @(r0,r14),r2
	mov 0x22,r0
	mov.b @(r0,r2),r3
	mov.w @(loc_8c04be74,PC),r0
	mov.b r3,@(r0,r14)
	add 0x9A,r0
	mov.l @(r0,r14),r2
	mov.w @(loc_8c04be70,PC),r0
	mov.w @(r0,r2),r3
	tst r3,r3
	bt loc_8c04bd9e
	mov.w @(loc_8c04be74,PC),r0
	mov.w @(loc_8c04be74,PC),r1
	mov.b @(r0,r14),r0
	add r14,r1
	neg r0,r0
	add 0x20,r0
	and 0x1F,r0
	mov.b r0,@r1

loc_8c04bd9e:
	mov.w @(loc_8c04be76,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.l r2,@(r0,r14)
	add 0x50,r1
	mov.w @(loc_8c04be78,PC),r2
	mov.l @(loc_8c04be8c,PC),r3
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04be7a,PC),r0
	mov.l @(loc_8c04be90,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	mova @(loc_8c04be98,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04be9c,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04be44
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04be44
	mov.l @(loc_8c04bea0,PC),r3
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c04be44:
	mov.w @(loc_8c04be7c,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04beca
	mov.w @(loc_8c04be7e,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c04beca
	mov.w @(loc_8c04be80,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bra loc_8c04bea4
	nop

;##############################################
loc_8c04be66:
	#data 0x023a
loc_8c04be68:
	#data 0x01c8
loc_8c04be6a:
	#data 0x0174
loc_8c04be6c:
	#data 0x01bc
loc_8c04be6e:
	#data 0x0232
loc_8c04be70:
	#data 0x0130
loc_8c04be72:
	#data 0x01f9
loc_8c04be74:
	#data 0x022e
loc_8c04be76:
	#data 0x012c
loc_8c04be78:
	#data 0x0284
loc_8c04be7a:
	#data 0x0108
loc_8c04be7c:
	#data 0x0233
loc_8c04be7e:
	#data 0x0239
loc_8c04be80:
	#data 0x0420
	#align4
loc_8c04be84:
	#data bank05.loc_8c05a46c
loc_8c04be88:
	#data bank05.loc_8c058f08
loc_8c04be8c:
	#data bank12.loc_8c1294c8
loc_8c04be90:
	#data loc_8c04e958
loc_8c04be94:
	#data 0x40092492
loc_8c04be98:
	#data 0xbc892492
loc_8c04be9c:
	#data bank03.loc_8c034dee
loc_8c04bea0:
	#data loc_8c04e98a

;----------------------------------------------
loc_8c04bea4:
	bt loc_8c04beca
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	mov 0xFF,r3
	mov.w @(loc_8c04bfe0,PC),r0
	mov 0x01,r2
	mov 0x0D,r5
	mov.b r3,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8c04c004,PC),r3
	mov 0x1E,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04c008,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c04beca:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04bf04
	mov.l @(loc_8c04c00c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04bf04
	mov.b @(0x6,r14),r0
	mov 0x02,r4
	mov 0x05,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1A,r6
	mov.w @(loc_8c04bfe2,PC),r0
	mov 0x0D,r5
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c04bfe4,PC),r0
	mov.w r3,@(r0,r14)
	add 0x81,r0
	mov.l @(loc_8c04c004,PC),r3
	mov.b r4,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04bf04:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04bf0a:
	mov r4,r3
	mov.l @(loc_8c04c010,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c04bf1c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04bfe6,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xFE,r0
	mov.l @(loc_8c04c014,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04bfe8,PC),r0
	mov 0x1C,r3
	mov.w @(loc_8c04bfea,PC),r1
	mov.l @(r0,r14),r2
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r2,r1
	extu.b r0,r0
	mov.l @r1,r2
	and 0x7F,r0
	mov.w @(loc_8c04bfec,PC),r1
	mul.l r3,r0
	add r14,r1
	sts macl,r0
	add r2,r0
	mov.l @(loc_8c04c018,PC),r2
	mov.l r0,@r1
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04bfec,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x20,r0
	bt.s loc_8c04bf76
	mov 0x01,r4
	mov.w @(loc_8c04bfee,PC),r0
	mov.b r4,@(r0,r14)

loc_8c04bf76:
	mov.w @(loc_8c04bff0,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b @(r0,r14),r3
	add 0x07,r0
	mov.b r3,@(r0,r14)
	add 0x99,r0
	mov.b @(r0,r14),r2
	mov 0x02,r3
	mov.w @(loc_8c04bff2,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c04bff4,PC),r0
	mov.w @(loc_8c04bff8,PC),r2
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04bff6,PC),r0
	add r14,r2
	mov.l @(loc_8c04c01c,PC),r3
	mov.b r4,@(r0,r14)
	mov 0x48,r0
	mov.l r13,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04bffa,PC),r0
	mov.l @(loc_8c04c020,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04c024,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04bffc,PC),r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04bffe,PC),r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c04c000,PC),r0
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04bfe0:
	#data 0x01d6
loc_8c04bfe2:
	#data 0x01eb
loc_8c04bfe4:
	#data 0x0278
loc_8c04bfe6:
	#data 0x023a
loc_8c04bfe8:
	#data 0x01c8
loc_8c04bfea:
	#data 0x0174
loc_8c04bfec:
	#data 0x01bc
loc_8c04bfee:
	#data 0x0235
loc_8c04bff0:
	#data 0x0232
loc_8c04bff2:
	#data 0x0130
loc_8c04bff4:
	#data 0x01f9
loc_8c04bff6:
	#data 0x012c
loc_8c04bff8:
	#data 0x0284
loc_8c04bffa:
	#data 0x0108
loc_8c04bffc:
	#data 0x0218
loc_8c04bffe:
	#data 0x021c
loc_8c04c000:
	#data 0x0140
	#align4
loc_8c04c004:
	#data bank03.loc_8c034e8c
loc_8c04c008:
	#data loc_8c04aa3e
loc_8c04c00c:
	#data bank05.loc_8c052ce2
loc_8c04c010:
	#data bank14.loc_8c14e868
loc_8c04c014:
	#data bank05.loc_8c05a46c
loc_8c04c018:
	#data bank05.loc_8c058f08
loc_8c04c01c:
	#data bank12.loc_8c1294c8
loc_8c04c020:
	#data loc_8c04e958
loc_8c04c024:
	#data bank05.loc_8c0589c0
loc_8c04c028:
	#data 0xbf9a4924

;==============================================
loc_8c04c02c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8c04c158,PC),r13
	cmp/pl r0
	bf loc_8c04c042
	mov 0x06,r5
	jsr @r13
	mov r14,r4

loc_8c04c042:
	mov.l @(loc_8c04c15c,PC),r2
	jsr @r2
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04c14c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04c0cc
	mov.w @(loc_8c04c14e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04c0cc
	mov r14,r5
	mov.l @(loc_8c04c160,PC),r3
	mov 0x08,r7
	add 0x34,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov 0xFF,r0
	mov 0x01,r5
	mov.w r0,@(0x1E,r14)
	jsr @r13
	mov r14,r4
	mov.w @(loc_8c04c14e,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04c164,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04c168,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04c150,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04c0cc
	mov.l @(loc_8c04c16c,PC),r4
	mov 0x03,r0
	mov.b r0,@(0x5,r4)
	mov 0x01,r0
	mov.b r0,@(0x6,r4)

loc_8c04c0cc:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04c0e6
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04c144
	mov.l @(loc_8c04c170,PC),r3
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c04c0e6:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04c144
	mov.l @(loc_8c04c174,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04c144
	mov.w @(loc_8c04c14e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c04c11c
	mov r14,r5
	mov.l @(loc_8c04c160,PC),r3
	mov 0x08,r7
	add 0x34,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov 0xFF,r0
	mov 0x01,r5
	mov.w r0,@(0x1E,r14)
	jsr @r13
	mov r14,r4

loc_8c04c11c:
	mov.b @(0x6,r14),r0
	mov 0x02,r3
	mov 0x05,r2
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1A,r6
	mov.w @(loc_8c04c152,PC),r0
	mov 0x0D,r5
	mov.b r3,@(r0,r14)
	mov 0x03,r3
	mov.w @(loc_8c04c154,PC),r0
	mov.w r2,@(r0,r14)
	add 0x81,r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04c178,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04c144:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04c14c:
	#data 0x01fd
loc_8c04c14e:
	#data 0x0238
loc_8c04c150:
	#data 0x0235
loc_8c04c152:
	#data 0x01eb
loc_8c04c154:
	#data 0x0278
	#align4
loc_8c04c158:
	#data bank03.loc_8c035162
loc_8c04c15c:
	#data bank03.loc_8c034dee
loc_8c04c160:
	#data bank10.loc_8c10235c
loc_8c04c164:
	#data loc_8c0423ac
loc_8c04c168:
	#data bank10.loc_8c107f1c
loc_8c04c16c:
	#data 0x8c26a518
loc_8c04c170:
	#data loc_8c04e98a
loc_8c04c174:
	#data bank05.loc_8c052ce2
loc_8c04c178:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c04c17c:
	mov.w @(loc_8c04c262,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04c264,PC),r0
	mov.w @(r0,r14),r4
	cmp/pz r4
	bf loc_8c04c232
	mov.w @(loc_8c04c266,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c04c19c
	cmp/pl r4
	bt loc_8c04c232

loc_8c04c19c:
	mov.w @(loc_8c04c264,PC),r0
	mov 0xFF,r2
	mov.l @(loc_8c04c274,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04c278,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04c268,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c04c1dc
	mov.w @(loc_8c04c26a,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04c1ce
	bra loc_8c04c1d0
	mov 0x01,r4

loc_8c04c1ce:
	mov 0x03,r4

loc_8c04c1d0:
	mov.l @(loc_8c04c27c,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)

loc_8c04c1dc:
	mov.w @(loc_8c04c26c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04c232
	mov.w @(loc_8c04c266,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04c232
	mov.w @(loc_8c04c26e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04c232
	mov.w @(loc_8c04c270,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04c218
	mov.l @(loc_8c04c280,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04c212
	mov.w @(loc_8c04c26e,PC),r0
	mov 0xFF,r3
	bra loc_8c04c218
	mov.b r3,@(r0,r14)

loc_8c04c212:
	mov.w @(loc_8c04c26e,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c04c218:
	mov.w @(loc_8c04c26e,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04c232
	mov.w @(loc_8c04c272,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c04c284,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x11,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04c232:
	mov.l @(loc_8c04c288,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04c24a
	lds.l @r15+,pr
	mov.l @(loc_8c04c284,PC),r2
	mov 0x17,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04c24a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04c250:
	mov r4,r3
	mov.l @(loc_8c04c28c,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04c262:
	#data 0x01eb
loc_8c04c264:
	#data 0x0278
loc_8c04c266:
	#data 0x0420
loc_8c04c268:
	#data 0x0233
loc_8c04c26a:
	#data 0x0207
loc_8c04c26c:
	#data 0x0235
loc_8c04c26e:
	#data 0x0236
loc_8c04c270:
	#data 0x0525
loc_8c04c272:
	#data 0x01d3
	#align4
loc_8c04c274:
	#data loc_8c042482
loc_8c04c278:
	#data bank10.loc_8c100672
loc_8c04c27c:
	#data 0x8c26a518
loc_8c04c280:
	#data bank05.loc_8c05bf3a
loc_8c04c284:
	#data bank05.loc_8c0532a8
loc_8c04c288:
	#data bank03.loc_8c034dee
loc_8c04c28c:
	#data bank14.loc_8c14e874

;==============================================
loc_8c04c290:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04c376,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xFE,r0
	mov.l @(loc_8c04c394,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04c378,PC),r0
	mov 0x1C,r3
	mov.w @(loc_8c04c37a,PC),r1
	mov.l @(r0,r14),r2
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r2,r1
	extu.b r0,r0
	mov.l @r1,r2
	and 0x7F,r0
	mov.w @(loc_8c04c37c,PC),r1
	mul.l r3,r0
	add r14,r1
	sts macl,r0
	add r2,r0
	mov.l @(loc_8c04c398,PC),r2
	mov.l r0,@r1
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04c37c,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x20,r0
	bt.s loc_8c04c2ea
	mov 0x01,r4
	mov.w @(loc_8c04c37e,PC),r0
	mov.b r4,@(r0,r14)

loc_8c04c2ea:
	mov.w @(loc_8c04c380,PC),r0
	mov.w @(loc_8c04c386,PC),r1
	mov.b @(r0,r14),r3
	add 0x07,r0
	add r14,r1
	mov.b r3,@(r0,r14)
	add 0x99,r0
	mov.b @(r0,r14),r2
	mov 0x02,r3
	mov.w @(loc_8c04c382,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c04c384,PC),r0
	mov.b r3,@(r0,r14)
	add 0x35,r0
	mov.b @(r0,r14),r0
	add 0x08,r0
	and 0x10,r0
	mov.b r0,@r1
	mov.w @(loc_8c04c386,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04c31c
	bra loc_8c04c31e
	mov 0x1D,r3

loc_8c04c31c:
	mov 0x1C,r3

loc_8c04c31e:
	mov.w @(loc_8c04c388,PC),r0
	mov r14,r1
	mov.w @(loc_8c04c38a,PC),r2
	add 0x50,r1
	mov.b r3,@(r0,r14)

loc_8c04c328:
	add 0xD4,r0
	mov.b r4,@(r0,r14)
	mov 0x48,r0
	mov.l @(loc_8c04c39c,PC),r3
	add r14,r2
	mov.l r13,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04c38c,PC),r0
	mov 0x0D,r5
	fldi1 fr3
	fmov fr3,@(r0,r14)
	add 0x50,r0
	mov.l @(loc_8c04c3a0,PC),r3
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04c3a4,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04c38e,PC),r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04c390,PC),r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c04c3a8,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fldi0 fr3
	fcmp/gt fr3,fr2
	bt loc_8c04c3ac
	bra loc_8c04c3b0
	mov 0x01,r0

;##############################################
loc_8c04c376:
	#data 0x023a
loc_8c04c378:
	#data 0x01c8
loc_8c04c37a:
	#data 0x0174
loc_8c04c37c:
	#data 0x01bc
loc_8c04c37e:
	#data 0x0235
loc_8c04c380:
	#data 0x0232
loc_8c04c382:
	#data 0x0130
loc_8c04c384:
	#data 0x01f9
loc_8c04c386:
	#data 0x022e
loc_8c04c388:
	#data 0x0158
loc_8c04c38a:
	#data 0x0284
loc_8c04c38c:
	#data 0x0108
loc_8c04c38e:
	#data 0x0218
loc_8c04c390:
	#data 0x021c
	#align4
loc_8c04c394:
	#data bank05.loc_8c05a46c
loc_8c04c398:
	#data bank05.loc_8c058f08
loc_8c04c39c:
	#data bank12.loc_8c1294c8
loc_8c04c3a0:
	#data bank03.loc_8c034e8c
loc_8c04c3a4:
	#data bank05.loc_8c0589c0
loc_8c04c3a8:
	#data 0xbf9a4924

;----------------------------------------------
loc_8c04c3ac:
	mov r13,r0
	nop

loc_8c04c3b0:
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c04c3ba:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04c4bc,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04c4ac,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c04c448
	mov 0x01,r13
	mov.w @(loc_8c04c4ae,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04c448
	mov.l @(loc_8c04c4c0,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04c4c4,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04c4b0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04c448
	mov.w @(loc_8c04c4b2,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04c438
	bra loc_8c04c43a
	mov 0x01,r4

loc_8c04c438:
	mov 0x03,r4

loc_8c04c43a:
	mov.l @(loc_8c04c4c8,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov r13,r0
	nop
	mov.b r0,@(0x6,r5)

loc_8c04c448:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c04c4cc,PC),r12
	tst r0,r0
	bf loc_8c04c468
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04c468
	mov 0x0D,r5
	mov 0x1D,r6
	jsr @r12
	mov r14,r4
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c04c468:
	mov.w @(loc_8c04c4b4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04c4d4
	mov.w @(loc_8c04c4b6,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c04c4d4
	mov.w @(loc_8c04c4b8,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c04c4d4
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	mov 0xFF,r3
	mov.w @(loc_8c04c4ba,PC),r0
	mov 0x0D,r5
	mov 0x1E,r6
	mov.b r3,@(r0,r14)
	add 0x26,r0
	mov.b r13,@(r0,r14)
	jsr @r12
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04c4d0,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04c4ac:
	#data 0x01fd
loc_8c04c4ae:
	#data 0x0238
loc_8c04c4b0:
	#data 0x0235
loc_8c04c4b2:
	#data 0x0207
loc_8c04c4b4:
	#data 0x0233
loc_8c04c4b6:
	#data 0x0239
loc_8c04c4b8:
	#data 0x0420
loc_8c04c4ba:
	#data 0x01d6
	#align4
loc_8c04c4bc:
	#data bank03.loc_8c034dee
loc_8c04c4c0:
	#data loc_8c0423ac
loc_8c04c4c4:
	#data bank10.loc_8c107f1c
loc_8c04c4c8:
	#data 0x8c26a518
loc_8c04c4cc:
	#data bank03.loc_8c034e8c
loc_8c04c4d0:
	#data loc_8c04aa3e

;----------------------------------------------
loc_8c04c4d4:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04c50a
	mov.l @(loc_8c04c5e0,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04c50a
	mov.w @(loc_8c04c5ca,PC),r0
	mov 0x02,r2
	mov 0x05,r3
	mov.b r2,@(r0,r14)
	mov 0x0D,r5
	mov.w @(loc_8c04c5cc,PC),r0
	mov 0x1A,r6
	mov.w r3,@(r0,r14)
	mov 0x03,r3
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04c5ce,PC),r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4

loc_8c04c50a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04c514:
	mov.w @(loc_8c04c5ca,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04c5cc,PC),r0
	mov.w @(r0,r14),r4
	cmp/pz r4
	bf loc_8c04c5f8
	mov.w @(loc_8c04c5d0,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c04c534
	cmp/pl r4
	bt loc_8c04c5f8

loc_8c04c534:
	mov.w @(loc_8c04c5cc,PC),r0
	mov 0xFF,r2
	mov.l @(loc_8c04c5e4,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04c5e8,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04c5d2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c04c574
	mov.w @(loc_8c04c5d4,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04c566
	bra loc_8c04c568
	mov 0x01,r4

loc_8c04c566:
	mov 0x03,r4

loc_8c04c568:
	mov.l @(loc_8c04c5ec,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)

loc_8c04c574:
	mov.w @(loc_8c04c5d6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04c5f8
	mov.w @(loc_8c04c5d0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04c5f8
	mov.w @(loc_8c04c5d8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04c5f8
	mov.w @(loc_8c04c5da,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04c5b0
	mov.l @(loc_8c04c5f0,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04c5aa
	mov.w @(loc_8c04c5d8,PC),r0
	mov 0xFF,r3
	bra loc_8c04c5b0
	mov.b r3,@(r0,r14)

loc_8c04c5aa:
	mov.w @(loc_8c04c5d8,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c04c5b0:
	mov.w @(loc_8c04c5d8,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04c5f8
	mov.w @(loc_8c04c5dc,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c04c5f4,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x11,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04c5ca:
	#data 0x01eb
loc_8c04c5cc:
	#data 0x0278
loc_8c04c5ce:
	#data 0x01f9
loc_8c04c5d0:
	#data 0x0420
loc_8c04c5d2:
	#data 0x0233
loc_8c04c5d4:
	#data 0x0207
loc_8c04c5d6:
	#data 0x0235
loc_8c04c5d8:
	#data 0x0236
loc_8c04c5da:
	#data 0x0525
loc_8c04c5dc:
	#data 0x01d3
	#align4
loc_8c04c5e0:
	#data bank05.loc_8c052ce2
loc_8c04c5e4:
	#data loc_8c042482
loc_8c04c5e8:
	#data bank10.loc_8c100672
loc_8c04c5ec:
	#data 0x8c26a518
loc_8c04c5f0:
	#data bank05.loc_8c05bf3a
loc_8c04c5f4:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c04c5f8:
	mov.l @(loc_8c04c6d8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04c610
	lds.l @r15+,pr
	mov.l @(loc_8c04c6dc,PC),r2
	mov 0x17,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04c610:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04c616:
	mov r4,r3
	mov.l @(loc_8c04c6e0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c04c628:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r4
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04c6ca,PC),r0
	mov.b r4,@(r0,r14)
	add 0xE5,r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c04c6cc,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)
	mov.w @(loc_8c04c6ce,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x07,r0
	mov 0x00,r4
	mov.w r0,@(0x1C,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x01,r3
	mov.w @(loc_8c04c6d0,PC),r0
	mov r14,r1
	mov.w @(loc_8c04c6d2,PC),r2
	add 0x50,r1
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.l @(loc_8c04c6e4,PC),r3
	add r14,r2
	mov.l r4,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04c6d4,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c04c6e8,PC),r3
	mov 0x10,r6
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c04c682:
	mov.w @(loc_8c04c6ca,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04c6ec,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0

loc_8c04c69c:
	cmp/pz r0
	bt loc_8c04c774
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c04c6f4
	mov 0x1C,r0
	mov.l @(loc_8c04c6f0,PC),r3
	mov.w @(r0,r14),r0
	and 0x03,r0
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov 0x02,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c04c774
	mov 0x0A,r0
	bra loc_8c04c774
	mov.w r0,@(0x1E,r14)

;##############################################
loc_8c04c6ca:
	#data 0x01ed
loc_8c04c6cc:
	#data 0x0130
loc_8c04c6ce:
	#data 0x01f9
loc_8c04c6d0:
	#data 0x012c
loc_8c04c6d2:
	#data 0x0284
loc_8c04c6d4:
	#data 0x0108
	#align4
loc_8c04c6d8:
	#data bank03.loc_8c034dee
loc_8c04c6dc:
	#data bank05.loc_8c0532a8
loc_8c04c6e0:
	#data bank14.loc_8c14e884
loc_8c04c6e4:
	#data bank12.loc_8c1294c8
loc_8c04c6e8:
	#data bank03.loc_8c034e8c
loc_8c04c6ec:
	#data bank05.loc_8c0510d8
loc_8c04c6f0:
	#data bank0e.loc_8c0eceb0

;----------------------------------------------
loc_8c04c6f4:
	mov.b @(0x6,r14),r0
	mov 0x1C,r2
	mov.w @(loc_8c04c77c,PC),r1
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04c77a,PC),r0
	mov.l @(r0,r14),r3
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r3,r1
	extu.b r0,r0
	mov.l @r1,r3
	and 0x7F,r0
	mov.w @(loc_8c04c77e,PC),r1
	mul.l r2,r0
	add r14,r1
	sts macl,r0
	add r3,r0
	mov.l @(loc_8c04c78c,PC),r3
	mov.l r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04c77e,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c04c732
	mov.w @(loc_8c04c780,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c04c732:
	mov.w @(loc_8c04c782,PC),r0
	mov.b @(r0,r14),r3
	add 0x07,r0
	mov.b r3,@(r0,r14)
	add 0x99,r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c04c784,PC),r0
	mov.l @(loc_8c04c790,PC),r3
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04c794,PC),r2
	jsr @r2
	mov r14,r4
	mova @(loc_8c04c798,PC),r0
	mov r14,r4
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04c786,PC),r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04c788,PC),r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	bra loc_8c04c79c
	mov.l @r15+,r14

loc_8c04c774:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c04c77a:
	#data 0x01c8
loc_8c04c77c:
	#data 0x0174
loc_8c04c77e:
	#data 0x01bc
loc_8c04c780:
	#data 0x0235
loc_8c04c782:
	#data 0x0232
loc_8c04c784:
	#data 0x0130
loc_8c04c786:
	#data 0x0218
loc_8c04c788:
	#data 0x021c
	#align4
loc_8c04c78c:
	#data bank05.loc_8c058fc8
loc_8c04c790:
	#data loc_8c04e958
loc_8c04c794:
	#data bank05.loc_8c0589c0
loc_8c04c798:
	#data 0xbf9a4924

;----------------------------------------------
loc_8c04c79c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04c8c0,PC),r3
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04c8ac,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c04c806
	mov 0x01,r13
	mov.w @(loc_8c04c8ae,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04c806
	mov.l @(loc_8c04c8c4,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04c8c8,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04c8b0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3

loc_8c04c806:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04c822
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04c822
	mov r13,r0
	nop
	mov.l @(loc_8c04c8cc,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c04c822:
	mov.w @(loc_8c04c8b2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04c866
	mov.w @(loc_8c04c8b4,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c04c866
	mov.w @(loc_8c04c8b6,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c04c866
	mov 0x04,r0
	mov.b r0,@(0x6,r14)
	mov 0xFF,r3
	mov.w @(loc_8c04c8b8,PC),r0
	mov 0x0D,r5
	mov 0x1E,r6
	mov.b r3,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8c04c8d0,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04c8d4,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c04c866:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04c8a4
	mov.l @(loc_8c04c8d8,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04c8a4
	mov.w @(loc_8c04c8ba,PC),r0
	mov 0x02,r2
	mov 0x05,r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x1A,r6
	mov.w @(loc_8c04c8bc,PC),r0
	mov 0x0D,r5
	mov.w r3,@(r0,r14)
	mov 0x03,r3
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04c8be,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04c8d0,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04c8a4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04c8ac:
	#data 0x01fd
loc_8c04c8ae:
	#data 0x0238
loc_8c04c8b0:
	#data 0x0235
loc_8c04c8b2:
	#data 0x0233
loc_8c04c8b4:
	#data 0x0239
loc_8c04c8b6:
	#data 0x0420
loc_8c04c8b8:
	#data 0x01d6
loc_8c04c8ba:
	#data 0x01eb
loc_8c04c8bc:
	#data 0x0278
loc_8c04c8be:
	#data 0x01f9
	#align4
loc_8c04c8c0:
	#data bank03.loc_8c034dee
loc_8c04c8c4:
	#data loc_8c0423ac
loc_8c04c8c8:
	#data bank10.loc_8c107f1c
loc_8c04c8cc:
	#data loc_8c04e98a
loc_8c04c8d0:
	#data bank03.loc_8c034e8c
loc_8c04c8d4:
	#data loc_8c04aa3e
loc_8c04c8d8:
	#data bank05.loc_8c052ce2

;==============================================
loc_8c04c8dc:
	mov.w @(loc_8c04c9c2,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04c9c4,PC),r0
	mov.w @(r0,r14),r4
	cmp/pz r4
	bf loc_8c04c992
	mov.w @(loc_8c04c9c6,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c04c8fc
	cmp/pl r4
	bt loc_8c04c992

loc_8c04c8fc:
	mov.w @(loc_8c04c9c4,PC),r0
	mov 0xFF,r2
	mov.l @(loc_8c04c9d4,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04c9d8,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04c9c8,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c04c93c
	mov.w @(loc_8c04c9ca,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04c92e
	bra loc_8c04c930
	mov 0x01,r4

loc_8c04c92e:
	mov 0x03,r4

loc_8c04c930:
	mov.l @(loc_8c04c9dc,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)

loc_8c04c93c:
	mov.w @(loc_8c04c9cc,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04c992
	mov.w @(loc_8c04c9c6,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04c992
	mov.w @(loc_8c04c9ce,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04c992
	mov.w @(loc_8c04c9d0,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04c978
	mov.l @(loc_8c04c9e0,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04c972
	mov.w @(loc_8c04c9ce,PC),r0
	mov 0xFF,r3
	bra loc_8c04c978
	mov.b r3,@(r0,r14)

loc_8c04c972:
	mov.w @(loc_8c04c9ce,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c04c978:
	mov.w @(loc_8c04c9ce,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04c992
	mov.w @(loc_8c04c9d2,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c04c9e4,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x11,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04c992:
	mov.l @(loc_8c04c9e8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04c9aa
	lds.l @r15+,pr
	mov.l @(loc_8c04c9e4,PC),r2
	mov 0x17,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04c9aa:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04c9b0:
	mov r4,r3
	mov.l @(loc_8c04c9ec,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c04c9c2:
	#data 0x01eb
loc_8c04c9c4:
	#data 0x0278
loc_8c04c9c6:
	#data 0x0420
loc_8c04c9c8:
	#data 0x0233
loc_8c04c9ca:
	#data 0x0207
loc_8c04c9cc:
	#data 0x0235
loc_8c04c9ce:
	#data 0x0236
loc_8c04c9d0:
	#data 0x0525
loc_8c04c9d2:
	#data 0x01d3
	#align4
loc_8c04c9d4:
	#data loc_8c042482
loc_8c04c9d8:
	#data bank10.loc_8c100672
loc_8c04c9dc:
	#data 0x8c26a518
loc_8c04c9e0:
	#data bank05.loc_8c05bf3a
loc_8c04c9e4:
	#data bank05.loc_8c0532a8
loc_8c04c9e8:
	#data bank03.loc_8c034dee
loc_8c04c9ec:
	#data bank14.loc_8c14e898

;==============================================
loc_8c04c9f0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04cab8,PC),r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04caac,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04caae,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.l r2,@(r0,r14)
	add 0x50,r1
	mov.w @(loc_8c04cab0,PC),r2
	mov.l @(loc_8c04cabc,PC),r3
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04cab2,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c04cac0,PC),r3
	mov 0x1D,r6
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mova @(loc_8c04cac4,PC),r0
	fldi0 fr4
	fmov @r0,fr3
	mov 0x60,r0
	mov.l @(loc_8c04cabc,PC),r3
	mov r14,r1
	fmov fr3,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	add 0x34,r1
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x14,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c04cab4,PC),r0
	mov.l @(r0,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c04cacc,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(loc_8c04cad0,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c04cab4,PC),r0
	mov.l @(r0,r14),r3
	add 0x0A,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c04ca88
	mov 0x34,r0
	fmov @(r0,r14),fr2
	bra loc_8c04ca8e
	fadd fr4,fr2

loc_8c04ca88:
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fsub fr4,fr2

loc_8c04ca8e:
	mov r14,r4
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c04caa8
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)

loc_8c04caa8:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04caac:
	#data 0x023a
loc_8c04caae:
	#data 0x012c
loc_8c04cab0:
	#data 0x0284
loc_8c04cab2:
	#data 0x0108
loc_8c04cab4:
	#data 0x01c8
	#align4
loc_8c04cab8:
	#data bank05.loc_8c05a46c
loc_8c04cabc:
	#data bank12.loc_8c1294c8
loc_8c04cac0:
	#data bank03.loc_8c034e8c
loc_8c04cac4:
	#data 0xc1092492
loc_8c04cac8:
	#data 0xbf4db6db
loc_8c04cacc:
	#data 0x444db6db
loc_8c04cad0:
	#data 0x43555555

;==============================================
loc_8c04cad4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04cbb0,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(loc_8c04cbb4,PC),r3
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
	mov 0x6c,r1
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
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04cb94
	mov.w @(loc_8c04cba2,PC),r0
	mov 0x1C,r2
	mov.w @(loc_8c04cba4,PC),r1
	mov.l @(r0,r14),r3
	add 0xD9,r0
	mov.b @(r0,r14),r0
	add r3,r1
	extu.b r0,r0
	mov.l @r1,r3
	and 0x7F,r0
	mov.w @(loc_8c04cba6,PC),r1
	mul.l r2,r0
	add r14,r1
	sts macl,r0
	add r3,r0
	mov.l @(loc_8c04cbb8,PC),r3
	mov.l r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04cba8,PC),r0
	mov.l @(loc_8c04cbbc,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c04cbaa,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04cbc0,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.l @(loc_8c04cbc4,PC),r5
	mov 0x03,r4
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)
	mov 0x40,r3
	mov.w @(loc_8c04cbac,PC),r0
	mov r3,r2
	mov 0x17,r5
	mov.b r4,@(r0,r14)
	add 0xFC,r0
	mov.b r3,@(r0,r14)
	add 0xF1,r0
	mov.w r2,@(r0,r14)
	add 0xFD,r0
	mov 0x64,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04cbc8,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04cb94:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c04cb9a:
	rts
	nop

;==============================================
loc_8c04cb9e:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04cba2:
	#data 0x01c8
loc_8c04cba4:
	#data 0x0174
loc_8c04cba6:
	#data 0x01bc
loc_8c04cba8:
	#data 0x01d2
loc_8c04cbaa:
	#data 0x0130
loc_8c04cbac:
	#data 0x01f9
	#align4
loc_8c04cbb0:
	#data bank03.loc_8c034dee
loc_8c04cbb4:
	#data bank05.loc_8c052ce2
loc_8c04cbb8:
	#data bank05.loc_8c058f08
loc_8c04cbbc:
	#data loc_8c0423ac
loc_8c04cbc0:
	#data bank10.loc_8c100672
loc_8c04cbc4:
	#data 0x8c26a518
loc_8c04cbc8:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c04cbcc:
	mov 0x4E,r0
	mov 0x00,r3
	mov.w r3,@(r0,r4)
	mov 0x48,r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bt loc_8c04cc18
	mov.w @(loc_8c04ccf0,PC),r0
	mov.l @(r0,r4),r5
	add 0xCA,r0
	mov.w @(r0,r4),r6
	add 0x26,r0
	mov.b @(r0,r4),r0
	extu.w r6,r6
	add r5,r6
	add 0x40,r6
	mov.l @r6,r6
	extu.b r0,r0
	shll2 r0
	add r5,r6
	mov.l @(r0,r6),r3
	add r3,r5
	mov.w @(0x12,r5),r0
	extu.b r0,r2
	mov.w @(loc_8c04ccf2,PC),r0
	shll2 r2
	mov.l @(r0,r4),r5
	shll2 r2
	add r2,r5
	mov.w @(0xE,r5),r0
	mov 0x00,r2
	extu.b r0,r3
	neg r3,r3
	cmp/gt r3,r2
	mov 0x4E,r0
	addc r2,r3
	shar r3
	mov.w r3,@(r0,r4)

loc_8c04cc18:
	rts
	nop

;==============================================
loc_8c04cc1c:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	extu.b r0,r12
	mov.w @(loc_8c04ccf4,PC),r0
	shll8 r12
	mov.l @(r0,r13),r3
	add 0xD8,r0
	mov.b @(r0,r13),r2
	mova @(loc_8c04ccfc,PC),r0
	fmov @r0,fr15
	shll2 r12
	mov.w @(loc_8c04ccf6,PC),r0
	add r3,r12
	shll2 r2
	mov.w @(r0,r13),r3
	shll r2
	tst r3,r3
	bt.s loc_8c04cc5e
	add r2,r12
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	bra loc_8c04cc6c
	fsub fr3,fr2

loc_8c04cc5e:
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2

loc_8c04cc6c:
	mov.l @(loc_8c04cd00,PC),r3
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04ccf8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04ccaa
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r13)
	mov.w @(loc_8c04ccf6,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c04cc9a
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	bra loc_8c04cca8
	fmac fr0,fr3,fr2

loc_8c04cc9a:
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fsub fr3,fr2

loc_8c04cca8:
	fmov fr2,@(r0,r13)

loc_8c04ccaa:
	mov.w @(0x2,r12),r0
	mov.w @(loc_8c04ccfa,PC),r1
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	mov.w @(loc_8c04ccf6,PC),r3
	fmov @(r0,r13),fr2
	mova @(loc_8c04cd04,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	add r14,r1
	add r13,r3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.b @(0x4,r12),r0
	mov.b r0,@r1
	mov.b @(0x5,r12),r0
	mov.w @(loc_8c04ccf6,PC),r1
	mov.w @r3,r3
	extu.b r0,r0
	and 0x01,r0
	add r14,r1
	xor r3,r0
	mov.w r0,@r1
	mov.b @(0x6,r12),r0
	cmp/pl r0
	bf loc_8c04cd08
	mov 0x24,r0
	mov.b @(r0,r14),r3
	mov.b @(r0,r13),r2
	cmp/gt r3,r2
	bt loc_8c04cd12
	bra loc_8c04cd1c
	nop

;##############################################
loc8c04ccf0:
loc_8c04ccf0:
	#data 0x0168
loc8c04ccf2:
loc_8c04ccf2:
	#data 0x016c
loc8c04ccf4:
loc_8c04ccf4:
	#data 0x0178
loc8c04ccf6:
loc_8c04ccf6:
	#data 0x0130
loc8c04ccf8:
loc_8c04ccf8:
	#data 0x01fd
loc8c04ccfa:
loc_8c04ccfa:
	#data 0x0158
	#align4
loc_8c04ccfc:
	#data 0x3fd55555
loc_8c04cd00:
	#data bank05.loc_8c0500ac
loc_8c04cd04:
	#data 0x40092492

;----------------------------------------------
loc_8c04cd08:
	mov 0x24,r0
	mov.b @(r0,r14),r3
	mov.b @(r0,r13),r2
	cmp/ge r3,r2
	bt loc_8c04cd1c

loc_8c04cd12:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b @(r0,r14),r4
	mov.b r3,@(r0,r14)
	mov.b r4,@(r0,r13)

loc_8c04cd1c:
	mov 0x48,r0
	mov.l @(r0,r13),r3
	mov.b @(0x7,r12),r0
	lds r3,fpul
	extu.b r0,r0
	shll8 r0
	float fpul,fr3
	lds r0,fpul
	mov 0x48,r0
	float fpul,fr2
	fadd fr2,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c04ce3e,PC),r0
	mov.b @(r0,r13),r2
	add 0x0A,r0
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bt loc_8c04cd5a
	mov.w @(loc_8c04ce40,PC),r0
	mov 0x10,r5
	mov.l @(loc_8c04ce48,PC),r3
	mov.b @(r0,r14),r6
	extu.b r6,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04ce3e,PC),r0
	mov.b @(r0,r13),r2
	add 0x0A,r0
	mov.b r2,@(r0,r14)

loc_8c04cd5a:
	lds.l @r15+,pr
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c04cbcc
	mov.l @r15+,r14
	mov.w @(loc_8c04ce42,PC),r0
	mov.l @(r0,r4),r5
	mov.b @(0x1,r4),r0
	extu.b r0,r6
	mov.w @(loc_8c04ce44,PC),r0
	shll8 r6
	mov.l @(r0,r5),r3
	add 0xD8,r0
	mov.b @(r0,r5),r2
	mova @(0xD0,PC),r0
	fmov @r0,fr4
	shll2 r6
	mov.w @(loc_8c04ce46,PC),r0
	add r3,r6
	shll2 r2
	mov.w @(r0,r5),r3
	shll r2
	tst r3,r3
	bt.s loc_8c04cda0
	add r2,r6
	mov.w @r6,r3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	bra loc_8c04cdae
	fsub fr3,fr2

loc_8c04cda0:
	mov.w @r6,r3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2

loc_8c04cdae:
	fmov fr2,@(r0,r4)
	mov.w @(0x2,r6),r0
	mov.w @(loc_8c04ce40,PC),r1
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	mov.w @(loc_8c04ce46,PC),r3
	fmov @(r0,r5),fr2
	mova @(0x90,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	add r4,r1
	add r5,r3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov.b @(0x4,r6),r0
	mov.b r0,@r1
	mov.b @(0x5,r6),r0
	mov.w @r3,r3
	extu.b r0,r0
	mov.w @(loc_8c04ce46,PC),r1
	and 0x01,r0
	xor r3,r0
	mov 0x24,r3
	add r4,r1
	add r5,r3
	mov.w r0,@r1
	mov.b @r3,r3
	mov 0x24,r1
	mov.b @(0x6,r6),r0
	add r3,r0
	add r4,r1
	mov.b r0,@r1
	mov.b @(0x6,r6),r0
	cmp/pl r0
	bf loc_8c04ce06
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov.b @(r0,r5),r2
	cmp/gt r3,r2
	bt loc_8c04ce10
	bra loc_8c04ce1a
	nop

loc_8c04ce06:
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov.b @(r0,r5),r2
	cmp/ge r3,r2
	bt loc_8c04ce1a

loc_8c04ce10:
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b @(r0,r4),r7
	mov.b r3,@(r0,r4)
	mov.b r7,@(r0,r5)

loc_8c04ce1a:
	mov 0x48,r0
	mov.l @(r0,r5),r3
	mov.b @(0x7,r6),r0
	lds r3,fpul
	extu.b r0,r0
	shll8 r0
	float fpul,fr3
	lds r0,fpul
	mov 0x48,r0
	float fpul,fr2
	fadd fr2,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov.l r3,@(r0,r4)
	bra loc_8c04cbcc
	nop

loc_8c04ce3a:
	bra loc_8c04ce56
	mov 0x00,r6

;##############################################
loc_8c04ce3e:
	#data 0x0150
loc_8c04ce40:
	#data 0x0158
loc_8c04ce42:
	#data 0x01c8
loc_8c04ce44:
	#data 0x0178
loc_8c04ce46:
	#data 0x0130
	#align4
loc_8c04ce48:
	#data bank03.loc_8c034e8c
loc_8c04ce4c:
	#data 0x3fd55555
loc_8c04ce50:
	#data 0x40092492

;----------------------------------------------
loc_8c04ce54:
	mov 0x01,r6

loc_8c04ce56:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	extu.b r0,r12
	mov.w @(loc_8c04cf90,PC),r0
	shll8 r12
	mov.l @(r0,r13),r3
	add 0xD8,r0
	mov.b @(r0,r13),r2
	mova @(0x128,PC),r0
	fmov @r0,fr15
	shll2 r12
	mov.w @(loc_8c04cf92,PC),r0
	add r3,r12
	shll2 r2
	mov.w @(r0,r14),r3
	shll r2
	tst r3,r3
	bt.s loc_8c04ce98
	add r2,r12
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	bra loc_8c04cea6
	fsub fr3,fr2

loc_8c04ce98:
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2

loc_8c04cea6:
	extu.b r6,r6
	tst r6,r6
	bt.s loc_8c04ceea
	fmov fr2,@(r0,r13)
	mov.l @(loc_8c04cfa0,PC),r2
	jsr @r2
	mov r13,r4
	mov.w @(loc_8c04cf94,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c04ceea
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04cf92,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04ceda
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	bra loc_8c04cee8
	fmac fr0,fr3,fr2
loc_8c04ceda:
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fsub fr3,fr2

loc_8c04cee8:
	fmov fr2,@(r0,r14)

loc_8c04ceea:
	mov.w @(0x2,r12),r0
	mov.w @(loc_8c04cf96,PC),r1
	mov r0,r3
	lds r3,fpul
	mova @(0xB0,PC),r0
	mov.w @(loc_8c04cf92,PC),r3
	fmov @r0,fr2
	mov 0x38,r0
	float fpul,fr3

loc_8c04cefc:
	fmov @(r0,r14),fr1
	add r14,r1
	add r13,r3
	fmul fr2,fr3
	fsub fr3,fr1
	fmov fr1,@(r0,r13)
	mov.b @(0x4,r12),r0
	mov.b r0,@r1
	mov.b @(0x5,r12),r0
	mov.w @(loc_8c04cf92,PC),r1
	mov.w @r3,r3
	extu.b r0,r0
	and 0x01,r0
	add r14,r1
	xor r3,r0
	mov.w r0,@r1
	mov.b @(0x6,r12),r0
	cmp/pl r0
	bf loc_8c04cf30
	mov 0x24,r0
	mov.b @(r0,r14),r3
	mov.b @(r0,r13),r2
	cmp/gt r3,r2
	bt loc_8c04cf3a
	bra loc_8c04cf44
	nop

loc_8c04cf30:
	mov 0x24,r0
	mov.b @(r0,r14),r3
	mov.b @(r0,r13),r2
	cmp/ge r3,r2
	bt loc_8c04cf44

loc_8c04cf3a:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b @(r0,r14),r4
	mov.b r3,@(r0,r14)
	mov.b r4,@(r0,r13)

loc_8c04cf44:
	mov 0x48,r0
	mov.l @(r0,r13),r3
	mov.b @(0x7,r12),r0
	lds r3,fpul
	extu.b r0,r0
	shll8 r0
	float fpul,fr3
	lds r0,fpul
	mov 0x48,r0
	float fpul,fr2
	fadd fr2,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c04cf98,PC),r0
	mov.b @(r0,r13),r2
	add 0x0A,r0
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bt loc_8c04cf82
	mov.w @(loc_8c04cf96,PC),r0
	mov 0x10,r5
	mov.l @(loc_8c04cfa8,PC),r3
	mov.b @(r0,r14),r6
	extu.b r6,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04cf98,PC),r0
	mov.b @(r0,r13),r2
	add 0x0A,r0
	mov.b r2,@(r0,r14)

loc_8c04cf82:
	lds.l @r15+,pr
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c04cbcc
	mov.l @r15+,r14

;##############################################
loc_8c04cf90:
	#data 0x0178
loc_8c04cf92:
	#data 0x0130
loc_8c04cf94:
	#data 0x01fd
loc_8c04cf96:
	#data 0x0158
loc_8c04cf98:
	#data 0x0150
	#align4
loc_8c04cf9c:
	#data 0x3fd55555
loc_8c04cfa0:
	#data bank05.loc_8c0500ac
loc_8c04cfa4:
	#data 0x40092492
loc_8c04cfa8:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c04cfac:
	mov.w @(loc_8c04d03e,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c04d048,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8c04cfc0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c04cfde
	mov.b @(0x6,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	bra loc_8c04cffa
	fmov fr4,@(r0,r14)

loc_8c04cfde:
	mov.l @(loc_8c04d04c,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c04d050,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04cffa
	lds.l @r15+,pr
	mov.l @(loc_8c04d054,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04cffa:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04d000:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04d058,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04d05c,PC),r3
	mov 0x05,r1
	mov.b @r3,r2
	extu.b r2,r2
	cmp/ge r1,r2
	bt loc_8c04d02c
	mov.w @(loc_8c04d040,PC),r0
	mov.b @(r0,r14),r0
	tst r0,r0
	bt loc_8c04d02c
	mov.w @(loc_8c04d042,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d02c
	mov.w @(loc_8c04d044,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)

loc_8c04d02c:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(loc_8c04d060,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04d03e:
	#data 0x0233
loc_8c04d040:
	#data 0x01dc
loc_8c04d042:
	#data 0x0238
loc_8c04d044:
	#data 0x01ed
	#align4
loc_8c04d048:
	#data bank14.loc_8c14e8a4
loc_8c04d04c:
	#data bank05.loc_8c0573e8
loc_8c04d050:
	#data bank03.loc_8c034dee
loc_8c04d054:
	#data bank05.loc_8c051648
loc_8c04d058:
	#data bank05.loc_8c0507f0
loc_8c04d05c:
	#data 0x8c2895f0
loc_8c04d060:
	#data bank14.loc_8c14e908

;==============================================
loc_8c04d064:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(loc_8c04d16a,PC),r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)

	mov.w @(loc_8c04d16c,PC),r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)

	mova @(loc_8c04d17c,PC),r0 ;0xbfbc9249
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r4)

	mov 0x00,r0
	mov.w r0,@(0x1E,r4)
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04d180,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04d184,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04d16e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d0c2
	mov.w @(loc_8c04d170,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04d0c2
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xFD,r0
	mov.b @(r0,r14),r2
	mov.l @(loc_8c04d188,PC),r3
	tst r2,r2
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04d18c,PC),r2
	jsr @r2
	mov r14,r4

loc_8c04d0c2:
	mov.w @(loc_8c04d172,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04d0f0
	mov.w @(loc_8c04d174,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d0f0
	mov.w @(loc_8c04d176,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pz r3
	bt loc_8c04d0f0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mova @(loc_8c04d190,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c04d1ac

loc_8c04d0f0:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c04d108
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c04d108
	mov.l @(loc_8c04d194,PC),r2
	jsr @r2
	mov r14,r4

loc_8c04d108:
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c04d128
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c04d20a
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04d128
	mov.w @(loc_8c04d178,PC),r0
	mov.l @(loc_8c04d198,PC),r3
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4

loc_8c04d128:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c04d20a
	mov.l @(loc_8c04d19c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04d20a
	mov.w @(loc_8c04d174,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c04d1b8
	mov.w @(loc_8c04d172,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04d1b8
	fldi1 fr3
	fadd fr3,fr3
	mov 0x60,r0
	mov.l @(loc_8c04d1a0,PC),r3
	fmov @(r0,r14),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	extu.b r0,r5
	bra loc_8c04d1a4
	nop

;##############################################
loc_8c04d16a:
	#data 0x0218
loc_8c04d16c:
	#data 0x021c
loc_8c04d16e:
	#data 0x01fd
loc_8c04d170:
	#data 0x0238
loc_8c04d172:
	#data 0x0234
loc_8c04d174:
	#data 0x0420
loc_8c04d176:
	#data 0x0239
loc_8c04d178:
	#data 0x00ff
	#align4
loc_8c04d17c:
	#data 0xbfbc9249
loc_8c04d180:
	#data bank05.loc_8c058c48
loc_8c04d184:
	#data bank03.loc_8c034dee
loc_8c04d188:
	#data loc_8c0423ac
loc_8c04d18c:
	#data bank10.loc_8c107f1c
loc_8c04d190:
	#data 0xc14db6db
loc_8c04d194:
	#data loc_8c04e958
loc_8c04d198:
	#data loc_8c04e98a
loc_8c04d19c:
	#data bank05.loc_8c052ce2
loc_8c04d1a0:
	#data loc_8c042482

;----------------------------------------------
loc_8c04d1a4:
	mov.l @(loc_8c04d2b4,PC),r3
	mov r14,r4
	jsr @r3
	add 0x34,r4

loc_8c04d1ac:
	lds.l @r15+,pr
	mov.l @(loc_8c04d2b8,PC),r2
	mov 0x0F,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04d1b8:
	mov.l @(loc_8c04d2bc,PC),r2
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04d2b4,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04d2a2,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04d1f0
	mov.w @(loc_8c04d2a4,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04d1e2
	bra loc_8c04d1e4
	mov 0x01,r4

loc_8c04d1e2:
	mov 0x03,r4

loc_8c04d1e4:
	mov.l @(loc_8c04d2c0,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)

loc_8c04d1f0:
	mov.b @(0x6,r14),r0
	mov 0x03,r3
	mov r14,r4
	mov 0x1A,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0D,r5
	mov.w @(loc_8c04d2a6,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04d2c4,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04d20a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04d210:
	mov.w @(loc_8c04d2a8,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c04d22c
	mov 0x00,r13
	mov.w @(loc_8c04d2aa,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	add 0xB0,r0
	mov.b r13,@(r0,r14)

loc_8c04d22c:
	mov.w @(loc_8c04d2a2,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04d280
	mov.w @(loc_8c04d2ac,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d280
	mov.w @(loc_8c04d2ae,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d280
	mov.w @(loc_8c04d2b0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d266
	mov.l @(loc_8c04d2c8,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04d262
	mov.w @(loc_8c04d2ae,PC),r0
	mov 0xFF,r3
	bra loc_8c04d266
	mov.b r3,@(r0,r14)

loc_8c04d262:
	mov.w @(loc_8c04d2ae,PC),r0
	mov.b r13,@(r0,r14)

loc_8c04d266:
	mov.w @(loc_8c04d2ae,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04d280
	mov.w @(loc_8c04d2b2,PC),r0
	mov 0x11,r5
	mov.l @(loc_8c04d2b8,PC),r3
	mov r14,r4
	mov.b r13,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04d280:
	mov.l @(loc_8c04d2cc,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04d29a
	lds.l @r15+,pr
	mov.l @(loc_8c04d2b8,PC),r2
	mov r14,r4
	mov 0x17,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c04d29a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04d2a2:
	#data 0x0235
loc_8c04d2a4:
	#data 0x0207
loc_8c04d2a6:
	#data 0x01f9
loc_8c04d2a8:
	#data 0x01da
loc_8c04d2aa:
	#data 0x01ed
loc_8c04d2ac:
	#data 0x0420
loc_8c04d2ae:
	#data 0x0236
loc_8c04d2b0:
	#data 0x0525
loc_8c04d2b2:
	#data 0x01d3
	#align4
loc_8c04d2b4:
	#data bank10.loc_8c100672
loc_8c04d2b8:
	#data bank05.loc_8c0532a8
loc_8c04d2bc:
	#data loc_8c042482
loc_8c04d2c0:
	#data 0x8c26a518
loc_8c04d2c4:
	#data bank03.loc_8c034e8c
loc_8c04d2c8:
	#data bank05.loc_8c05bf3a
loc_8c04d2cc:
	#data bank03.loc_8c034dee

;==============================================
loc_8c04d2d0:
	mov.w @(loc_8c04d3e4,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0xB0,r0
	mov 0x00,r2
	mov.l @(loc_8c04d3f4,PC),r1
	mov.b r2,@(r0,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04d2f0:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(loc_8c04d3e6,PC),r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04d3e8,PC),r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04d3f8,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04d3fc,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c04d332
	lds.l @r15+,pr
	mov.l @(loc_8c04d400,PC),r2
	mov 0x0F,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04d332:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04d338:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	add r14,r1
	mov 0x38,r0
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x6c,r0
	fmov @(r0,r14),fr3
	fldi0 fr2
	fcmp/eq fr2,fr3
	bt loc_8c04d396
	mov.l @(loc_8c04d404,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04d414
	mov 0x60,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	fmov fr4,@(r0,r14)
	mov 0x03,r3
	mov.w @(loc_8c04d3ea,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04d408,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04d40c,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	bra loc_8c04d414
	nop

loc_8c04d396:
	mov.w @(loc_8c04d3ec,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d414
	mov.w @(loc_8c04d3ee,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d414
	mov.w @(loc_8c04d3f0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d3ca
	mov.l @(loc_8c04d410,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04d3c4
	mov.w @(loc_8c04d3ee,PC),r0
	mov 0xFF,r3
	bra loc_8c04d3ca
	mov.b r3,@(r0,r14)

loc_8c04d3c4:
	mov.w @(loc_8c04d3ee,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c04d3ca:
	mov.w @(loc_8c04d3ee,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04d414
	mov.w @(loc_8c04d3f2,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c04d400,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x11,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04d3e4:
	#data 0x01ed
loc_8c04d3e6:
	#data 0x0218
loc_8c04d3e8:
	#data 0x021c
loc_8c04d3ea:
	#data 0x01f9
loc_8c04d3ec:
	#data 0x0420
loc_8c04d3ee:
	#data 0x0236
loc_8c04d3f0:
	#data 0x0525
loc_8c04d3f2:
	#data 0x01d3
	#align4

loc_8c04d3f4:
	#data bank14.loc_8c14e914
loc_8c04d3f8:
	#data bank05.loc_8c058c48
loc_8c04d3fc:
	#data bank03.loc_8c034dee
loc_8c04d400:
	#data bank05.loc_8c0532a8
loc_8c04d404:
	#data bank05.loc_8c052ce2
loc_8c04d408:
	#data loc_8c042482
loc_8c04d40c:
	#data bank10.loc_8c100672
loc_8c04d410:
	#data bank05.loc_8c05bf3a

;==============================================
loc_8c04d414:
	mov.l @(loc_8c04d50c,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04d42c
	lds.l @r15+,pr
	mov.l @(loc_8c04d510,PC),r2
	mov 0x17,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04d42c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04d432:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c04d448
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)

loc_8c04d448:
	mov.w @(loc_8c04d500,PC),r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bf loc_8c04d454
	mov.w @(loc_8c04d502,PC),r0
	mov.l @(r0,r14),r4

loc_8c04d454:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c04d476
	mov.l @(loc_8c04d50c,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c04d49e
	mov.w @(loc_8c04d504,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c04d480

loc_8c04d476:
	lds.l @r15+,pr
	mov.l @(loc_8c04d514,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04d480:
	mov.w @(loc_8c04d506,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c04d494
	lds.l @r15+,pr
	mov.l @(loc_8c04d518,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04d494:
	lds.l @r15+,pr
	mov.l @(loc_8c04d51c,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04d49e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04d4a4:
	mov.w @(loc_8c04d500,PC),r0
	mov.l @(r0,r4),r5
	tst r5,r5
	bf loc_8c04d4b0
	mov.w @(loc_8c04d502,PC),r0
	mov.l @(r0,r4),r5

loc_8c04d4b0:
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c04d4ce
	mov.w @(loc_8c04d508,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	cmp/pl r3
	bt loc_8c04d4ea
	mov.w @(loc_8c04d504,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c04d4d4

loc_8c04d4ce:
	mov.l @(loc_8c04d514,PC),r3
	jmp @r3
	nop

loc_8c04d4d4:
	mov.w @(loc_8c04d506,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c04d4e4
	mov.l @(loc_8c04d518,PC),r3
	jmp @r3
	nop

loc_8c04d4e4:
	mov.l @(loc_8c04d51c,PC),r2
	jmp @r2
	nop

loc_8c04d4ea:
	rts
	nop

;==============================================
loc_8c04d4ee:
	mov r4,r3
	mov.l @(loc_8c04d520,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04d500:
	#data 0x01b8
loc_8c04d502:
	#data 0x020c
loc_8c04d504:
	#data 0x0420
loc_8c04d506:
	#data 0x01f9
loc_8c04d508:
	#data 0x0239
	#align4
loc_8c04d50c:
	#data bank03.loc_8c034dee
loc_8c04d510:
	#data bank05.loc_8c0532a8
loc_8c04d514:
	#data bank05.loc_8c058d64
loc_8c04d518:
	#data bank05.loc_8c05176e
loc_8c04d51c:
	#data bank05.loc_8c051648
loc_8c04d520:
	#data bank14.loc_8c14e91c

;==============================================
loc_8c04d524:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(loc_8c04d638,PC),r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04d63a,PC),r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c04d648,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r4)
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04d64c,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04d650,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04d63c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d578
	mov.w @(loc_8c04d63e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04d578
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04d654,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04d658,PC),r2
	jsr @r2
	mov r14,r4

loc_8c04d578:
	mov.w @(loc_8c04d640,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04d5a6
	mov.w @(loc_8c04d642,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d5a6
	mov.w @(loc_8c04d644,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pz r3
	bt loc_8c04d5a6
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c04d608

loc_8c04d5a6:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c04d5c2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c04d5c2
	mov.l @(loc_8c04d660,PC),r2
	mov 0x0D,r5
	mov 0x11,r6
	jsr @r2
	mov r14,r4

loc_8c04d5c2:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04d62e
	mov.l @(loc_8c04d664,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04d62e
	mov.l @(loc_8c04d668,PC),r2
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04d66c,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04d640,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c04d614
	mov.w @(loc_8c04d642,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d614
	fldi1 fr3
	fadd fr3,fr3
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov fr2,@(r0,r14)

loc_8c04d608:
	lds.l @r15+,pr
	mov.l @(loc_8c04d670,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04d614:
	mov.w @(loc_8c04d646,PC),r0
	mov 0x03,r4
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.l @(loc_8c04d660,PC),r3
	mov r14,r4
	mov.b r0,@(0x6,r14)
	mov 0x1A,r6
	lds.l @r15+,pr
	mov 0x0D,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c04d62e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c04d634:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04d638:
	#data 0x0218
loc_8c04d63a:
	#data 0x021c
loc_8c04d63c:
	#data 0x01fd
loc_8c04d63e:
	#data 0x0238
loc_8c04d640:
	#data 0x0234
loc_8c04d642:
	#data 0x0420
loc_8c04d644:
	#data 0x0239
loc_8c04d646:
	#data 0x01f9
	#align4
loc_8c04d648:
	#data 0xbf4db6db
loc_8c04d64c:
	#data bank05.loc_8c058c48
loc_8c04d650:
	#data bank03.loc_8c034dee
loc_8c04d654:
	#data loc_8c0423ac
loc_8c04d658:
	#data bank10.loc_8c107f1c
loc_8c04d65c:
	#data 0xc14db6db
loc_8c04d660:
	#data bank03.loc_8c034e8c
loc_8c04d664:
	#data bank05.loc_8c052ce2
loc_8c04d668:
	#data loc_8c042482
loc_8c04d66c:
	#data bank10.loc_8c100672
loc_8c04d670:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c04d674:
	mov.w @(loc_8c04d77e,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c04d690
	mov 0x00,r13
	mov.w @(loc_8c04d780,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	add 0xB0,r0
	mov.b r13,@(r0,r14)

loc_8c04d690:
	mov.w @(loc_8c04d782,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04d6e4
	mov.w @(loc_8c04d784,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d6e4
	mov.w @(loc_8c04d786,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d6e4
	mov.w @(loc_8c04d788,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d6ca
	mov.l @(loc_8c04d794,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04d6c6
	mov.w @(loc_8c04d786,PC),r0
	mov 0xFF,r3
	bra loc_8c04d6ca
	mov.b r3,@(r0,r14)

loc_8c04d6c6:
	mov.w @(loc_8c04d786,PC),r0
	mov.b r13,@(r0,r14)

loc_8c04d6ca:
	mov.w @(loc_8c04d786,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04d6e4
	mov.w @(loc_8c04d78a,PC),r0
	mov 0x11,r5
	mov.l @(loc_8c04d798,PC),r3
	mov r14,r4
	mov.b r13,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04d6e4:
	mov.l @(loc_8c04d79c,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04d6fe
	lds.l @r15+,pr
	mov.l @(loc_8c04d798,PC),r2
	mov r14,r4
	mov 0x17,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c04d6fe:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04d706:
	mov r4,r3
	mov.l @(loc_8c04d7a0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c04d718:
	mov.b @(0x6,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(loc_8c04d78c,PC),r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x6c,r0
	fmov fr4,@(r0,r4)
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04d7a4,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bf loc_8c04d778
	mov.b @(0x6,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04d78e,PC),r0
	mov.b r3,@(r0,r14)
	add 0x38,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x07,r0
	cmp/eq 0x05,r0
	bf loc_8c04d762
	mov.w @(loc_8c04d790,PC),r0
	bra loc_8c04d76c
	mov 0x02,r2

loc_8c04d762:
	mov.w @(loc_8c04d792,PC),r0
	mov 0x3C,r3
	mov 0x78,r2
	mov.b r3,@(r0,r14)
	add 0x01,r0

loc_8c04d76c:
	mov.l @(loc_8c04d7a8,PC),r3
	mov r14,r4
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04d778:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04d77e:
	#data 0x01da
loc_8c04d780:
	#data 0x01ed
loc_8c04d782:
	#data 0x0235
loc_8c04d784:
	#data 0x0420
loc_8c04d786:
	#data 0x0236
loc_8c04d788:
	#data 0x0525
loc_8c04d78a:
	#data 0x01d3
loc_8c04d78c:
	#data 0x0218
loc_8c04d78e:
	#data 0x01f9
loc_8c04d790:
	#data 0x01e4
loc_8c04d792:
	#data 0x01e3
	#align4
loc_8c04d794:
	#data bank05.loc_8c05bf3a
loc_8c04d798:
	#data bank05.loc_8c0532a8
loc_8c04d79c:
	#data bank03.loc_8c034dee
loc_8c04d7a0:
	#data bank14.loc_8c14e92c
loc_8c04d7a4:
	#data bank05.loc_8c057580
loc_8c04d7a8:
	#data bank05.loc_8c05a2cc

;==============================================
loc_8c04d7ac:
	mov.w @(loc_8c04d822,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d7e8
	mov.l @(loc_8c04d830,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c04d7e8
	mov.w @(loc_8c04d824,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x07,r0
	cmp/eq 0x05,r0
	bt loc_8c04d7da
	mov.w @(loc_8c04d826,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04d7e8

loc_8c04d7da:
	mov.w @(loc_8c04d828,PC),r0
	mov.w @(r0,r14),r2
	add 0xFF,r2
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	cmp/pz r2
	bt loc_8c04d7f8

loc_8c04d7e8:
	mov.w @(loc_8c04d82a,PC),r0
	mov 0x08,r2
	mov.l @(loc_8c04d834,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04d7f8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04d7fe:
	mov.w @(loc_8c04d82c,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04d838,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(loc_8c04d83c,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04d822:
	#data 0x0420
loc_8c04d824:
	#data 0x0231
loc_8c04d826:
	#data 0x01e3
loc_8c04d828:
	#data 0x01e4
loc_8c04d82a:
	#data 0x01ef
loc_8c04d82c:
	#data 0x01f4
	#align4
loc_8c04d830:
	#data bank05.loc_8c052af0
loc_8c04d834:
	#data bank05.loc_8c051648
loc_8c04d838:
	#data loc_8c04e92a
loc_8c04d83c:
	#data bank14.loc_8c14e938

;==============================================
loc_8c04d840:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04d916,PC),r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04d918,PC),r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c04d91a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c04d89a
	mov.l @(loc_8c04d924,PC),r2
	mov 0x0D,r5
	mov 0x1C,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04d91c,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	mov r14,r1

loc_8c04d882:
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.l r2,@(r0,r14)
	add 0x50,r1
	mov.w @(loc_8c04d91e,PC),r2
	mov.l @(loc_8c04d928,PC),r3
	add r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04d920,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r14)

loc_8c04d89a:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04d92c,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04d930,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04d8ce
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04d910
	mov.l @(loc_8c04d924,PC),r3
	mov 0x01,r0
	mov 0x0D,r5
	mov.w r0,@(0x1C,r14)
	mov 0x1D,r6
	jsr @r3
	mov r14,r4

loc_8c04d8ce:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04d910
	mov.l @(loc_8c04d934,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04d910
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04d938,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.b @(0x6,r14),r0
	mov 0x03,r3
	mov 0x0D,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1A,r6
	mov.w @(loc_8c04d922,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04d924,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04d93c,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04d910:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04d916:
	#data 0x0218
loc_8c04d918:
	#data 0x021c
loc_8c04d91a:
	#data 0x0233
loc_8c04d91c:
	#data 0x012c
loc_8c04d91e:
	#data 0x0284
loc_8c04d920:
	#data 0x0108
loc_8c04d922:
	#data 0x01f9
	#align4
loc_8c04d924:
	#data bank03.loc_8c034e8c
loc_8c04d928:
	#data bank12.loc_8c1294c8
loc_8c04d92c:
	#data bank05.loc_8c058c48
loc_8c04d930:
	#data bank03.loc_8c034dee
loc_8c04d934:
	#data bank05.loc_8c052ce2
loc_8c04d938:
	#data bank10.loc_8c100672
loc_8c04d93c:
	#data loc_8c042482

;==============================================
loc_8c04d940:
	mov.w @(loc_8c04d9e4,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c04d95c
	mov 0x00,r13
	mov.w @(loc_8c04d9e6,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	add 0xB0,r0
	mov.b r13,@(r0,r14)

loc_8c04d95c:
	mov.w @(loc_8c04d9e8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04d9b0
	mov.w @(loc_8c04d9ea,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d9b0
	mov.w @(loc_8c04d9ec,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d9b0
	mov.w @(loc_8c04d9ee,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04d996
	mov.l @(loc_8c04d9f4,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04d992
	mov.w @(loc_8c04d9ec,PC),r0
	mov 0xFF,r3
	bra loc_8c04d996
	mov.b r3,@(r0,r14)

loc_8c04d992:
	mov.w @(loc_8c04d9ec,PC),r0
	mov.b r13,@(r0,r14)

loc_8c04d996:
	mov.w @(loc_8c04d9ec,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04d9b0
	mov.w @(loc_8c04d9f0,PC),r0
	mov 0x11,r5
	mov.l @(loc_8c04d9f8,PC),r3
	mov r14,r4
	mov.b r13,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04d9b0:
	mov.l @(loc_8c04d9fc,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04d9ca
	lds.l @r15+,pr
	mov.l @(loc_8c04d9f8,PC),r2
	mov r14,r4
	mov 0x17,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c04d9ca:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04d9d2:
	mov r4,r3
	mov.l @(loc_8c04da00,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04d9e4:
	#data 0x01da
loc_8c04d9e6:
	#data 0x01ed
loc_8c04d9e8:
	#data 0x0235
loc_8c04d9ea:
	#data 0x0420
loc_8c04d9ec:
	#data 0x0236
loc_8c04d9ee:
	#data 0x0525
loc_8c04d9f0:
	#data 0x01d3
	#align4
loc_8c04d9f4:
	#data bank05.loc_8c05bf3a
loc_8c04d9f8:
	#data bank05.loc_8c0532a8
loc_8c04d9fc:
	#data bank03.loc_8c034dee
loc_8c04da00:
	#data bank14.loc_8c14e944

;==============================================
loc_8c04da04:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(loc_8c04db1c,PC),r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04db1e,PC),r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r4)

loc_8c04da22:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04db28,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04db2c,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04da86
	mov.l @(loc_8c04db30,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04da86
	mov.b @(0x6,r14),r0
	fldi1 fr3
	fadd fr3,fr3
	add 0x01,r0
	mov.l @(loc_8c04db34,PC),r3
	mov.b r0,@(0x6,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04db38,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04db20,PC),r0
	mov 0x02,r2
	mov.l @(loc_8c04db3c,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x1C,r6
	lds.l @r15+,pr
	mov 0x0D,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c04da86:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04da8c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04db28,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04db2c,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04daba
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c04daba
	mov.l @(loc_8c04db3c,PC),r3
	mov 0x01,r0
	mov 0x0D,r5
	mov.w r0,@(0x1C,r14)
	mov 0x1D,r6
	jsr @r3
	mov r14,r4

loc_8c04daba:
	mov.l @(loc_8c04db30,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04daf2
	mov.l @(loc_8c04db34,PC),r2
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04db38,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.b @(0x6,r14),r0
	mov 0x03,r3
	mov r14,r4
	mov 0x1A,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0D,r5
	mov.w @(loc_8c04db20,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04db3c,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04daf2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04daf8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c04db2c,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04db14
	mov.l @r15,r4
	mov 0x17,r5
	add 0x04,r15
	mov.l @(loc_8c04db40,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c04db14:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04db1c:
	#data 0x0218
loc_8c04db1e:
	#data 0x021c
loc_8c04db20:
	#data 0x01f9
	#align4
loc_8c04db24:
	#data 0xbfbc9249
loc_8c04db28:
	#data bank05.loc_8c058c48
loc_8c04db2c:
	#data bank03.loc_8c034dee
loc_8c04db30:
	#data bank05.loc_8c052ce2
loc_8c04db34:
	#data loc_8c042482
loc_8c04db38:
	#data bank10.loc_8c100672
loc_8c04db3c:
	#data bank03.loc_8c034e8c
loc_8c04db40:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c04db44:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c04dc42,PC),r0
	mov 0x02,r4
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x01,r3
	mov.w @(loc_8c04dc44,PC),r0
	mov.b r3,@(r0,r14)
	bsr loc_8c04dd3e
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(loc_8c04dc4c,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04db70:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(loc_8c04dc46,PC),r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04dc48,PC),r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c04dc50,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r4)
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04dc54,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04dc58,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c04dbc0
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c04dbc0
	mov.l @(loc_8c04dc5c,PC),r2
	mov 0x0D,r5
	mov 0x22,r6
	jsr @r2
	mov r14,r4

loc_8c04dbc0:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04dc12
	mov.l @(loc_8c04dc60,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04dc12
	bsr loc_8c04dd94
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov 0x03,r3
	fldi0 fr3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04dc4a,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c04dbf6
	mova @(loc_8c04dc64,PC),r0
	bra loc_8c04dbfa
	fmov @r0,fr2

loc_8c04dbf6:
	mova @(0x70,PC),r0
	fmov @r0,fr2

loc_8c04dbfa:
	mov 0x5C,r0
	mov.l @(loc_8c04dc5c,PC),r3
	fmov fr2,@(r0,r14)
	mov 0x0D,r6
	fldi0 fr3
	mov 0x68,r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov r6,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c04dc12:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04dc18:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04dc58,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04dc3c
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(loc_8c04dc5c,PC),r3
	mov 0x22,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0D,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04dc3c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04dc42:
	#data 0x01f4
loc_8c04dc44:
	#data 0x012c
loc_8c04dc46:
	#data 0x0218
loc_8c04dc48:
	#data 0x021c
loc_8c04dc4a:
	#data 0x01f9
	#align4
loc_8c04dc4c:
	#data bank14.loc_8c14e954
loc_8c04dc50:
	#data 0xbfbc9249
loc_8c04dc54:
	#data bank05.loc_8c058c48
loc_8c04dc58:
	#data bank03.loc_8c034dee
loc_8c04dc5c:
	#data bank03.loc_8c034e8c
loc_8c04dc60:
	#data bank05.loc_8c052ce2
loc_8c04dc64:
	#data 0x41200000
loc_8c04dc68:
	#data 0xc1200000

;==============================================
loc_8c04dc6c:
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
	mov 0x6c,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04dd6e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04dcc2
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c04dcc2:
	mov.l @(loc_8c04dd78,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04dce6
	mov.l @(loc_8c04dd7c,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04dce6
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c04dd94
	mov.l @r15+,r14

loc_8c04dce6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04dcec:
	mov.w @(loc_8c04dd70,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)
	add 0x04,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c04dd3a
	mov.w @(loc_8c04dd72,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c04dd1a
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c04dd80,PC),r1
	extu.b r0,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c04dd3a
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c04dd3a

loc_8c04dd1a:
	mov.w @(loc_8c04dd74,PC),r0
	mov 0x09,r2
	mov.b r2,@(r0,r4)
	add 0x4B,r0
	mov.b @(r0,r4),r3
	add 0xB8,r0
	mov 0x00,r2
	mov.b r3,@(r0,r4)
	add 0x48,r0
	mov.w @(loc_8c04dd6e,PC),r3
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov.w r3,@(r0,r4)
	mov.l @(loc_8c04dd84,PC),r3
	jmp @r3
	nop

loc_8c04dd3a:
	rts
	nop

;==============================================
loc_8c04dd3e:
	mova @(0x4C,PC),r0
	mov.l @(loc_8c04dd88,PC),r5
	fmov @r0,fr3
	mov 0x0C,r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr4
	fcmp/gt fr4,fr2
	bf loc_8c04dd64
	mova @(0x3C,PC),r0
	fmov @r0,fr2
	mov 0x0C,r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr2,fr4
	fcmp/gt fr1,fr4
	bt loc_8c04dd6a

loc_8c04dd64:
	mov.w @(loc_8c04dd6e,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)

loc_8c04dd6a:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04dd6e:
	#data 0x012c
loc_8c04dd70:
	#data 0x01ed
loc_8c04dd72:
	#data 0x0411
loc_8c04dd74:
	#data 0x0254
	#align4
loc_8c04dd78:
	#data bank03.loc_8c034dee
loc_8c04dd7c:
	#data bank05.loc_8c052ce2
loc_8c04dd80:
	#data 0x8c289624
loc_8c04dd84:
	#data bank05.loc_8c05a2cc
loc_8c04dd88:
	#data 0x8c26a518
loc_8c04dd8c:
	#data 0xc3e60000
loc_8c04dd90:
	#data 0x43e60000

;==============================================
loc_8c04dd94:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04ded0,PC),r3
	jsr @r3
	mov r4,r14
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04ded4,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04deca,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c04decc,PC),r0
	tst r2,r2
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04ddc0
	bra loc_8c04ddc2
	mov 0x01,r4

loc_8c04ddc0:
	mov 0x03,r4

loc_8c04ddc2:
	mov.l @(loc_8c04ded8,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)
	mova @(0x10C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04dde4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c04de06
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04dece,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	add 0x03,r0
	mov.w r0,@(0x1E,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c04de06:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c04de42
	mov 0x02,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c04de38
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8c04dee4,PC),r3
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c04de42
	mov 0x0A,r0
	bra loc_8c04de42
	mov.w r0,@(0x1C,r14)

loc_8c04de38:
	lds.l @r15+,pr
	mov.l @(loc_8c04dee8,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04de42:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04de48:
	mov r4,r3
	mov.l @(loc_8c04deec,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c04de5a:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04ded0,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04ded4,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04def0,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04dea6
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(loc_8c04def4,PC),r3
	mov 0x1F,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0D,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c04dea6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04deac:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c04dec6
	mov.b @(0x6,r4),r0
	mov 0x00,r6
	mov.l @(loc_8c04def4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	jmp @r3
	mov 0x11,r5

loc_8c04dec6:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04deca:
	#data 0x012c
loc_8c04decc:
	#data 0x0207
loc_8c04dece:
	#data 0x01a3
	#align4
loc_8c04ded0:
	#data loc_8c0423ac
loc_8c04ded4:
	#data bank10.loc_8c100672
loc_8c04ded8:
	#data 0x8c26a518
loc_8c04dedc:
	#data 0x412b6db6
loc_8c04dee0:
	#data 0xbf4db6db
loc_8c04dee4:
	#data bank0e.loc_8c0e2738
loc_8c04dee8:
	#data bank05.loc_8c058d64
loc_8c04deec:
	#data bank14.loc_8c14e968
loc_8c04def0:
	#data bank03.loc_8c034dee
loc_8c04def4:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c04def8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c04dfb4,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04df14
	mov.l @r15,r4
	mov 0x0C,r5
	add 0x04,r15
	mov.l @(loc_8c04dfb8,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c04df14:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c04df1c:
	mov.l @(loc_8c04dfbc,PC),r2
	mov 0x05,r1
	mov.l r14,@-r15
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bt.s loc_8c04df42
	mov r4,r14
	mov.w @(loc_8c04dfa8,PC),r0
	mov.b @(r0,r14),r0
	tst r0,r0
	bt loc_8c04df42
	mov.w @(loc_8c04dfaa,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04df42
	mov.w @(loc_8c04dfac,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)

loc_8c04df42:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(loc_8c04dfc0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04df52:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(loc_8c04dfae,PC),r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04dfb0,PC),r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1E,r4)
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04dfb4,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c04dfa2
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	bsr loc_8c04e958
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c04dfc8
	mov.l @r15+,r14

loc_8c04dfa2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04dfa8:
	#data 0x01dc
loc_8c04dfaa:
	#data 0x0238
loc_8c04dfac:
	#data 0x01ed
loc_8c04dfae:
	#data 0x0218
loc_8c04dfb0:
	#data 0x021c
	#align4
loc_8c04dfb4:
	#data bank03.loc_8c034dee
loc_8c04dfb8:
	#data bank05.loc_8c0532a8
loc_8c04dfbc:
	#data 0x8c2895f0
loc_8c04dfc0:
	#data bank14.loc_8c14e978
loc_8c04dfc4:
	#data 0xbfbc9249

;==============================================
loc_8c04dfc8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04e0a8,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04e0ac,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04e09c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04dffe
	mov.w @(loc_8c04e09e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04dffe
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xFD,r0
	mov.b @(r0,r14),r2
	mov.l @(loc_8c04e0b0,PC),r3
	tst r2,r2
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04e0b4,PC),r2
	jsr @r2
	mov r14,r4

loc_8c04dffe:
	mov.w @(loc_8c04e0a0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04e02c
	mov.w @(loc_8c04e0a2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04e02c
	mov.w @(loc_8c04e0a4,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pz r3
	bt loc_8c04e02c
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mova @(loc_8c04e0b8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c04e090

loc_8c04e02c:
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c04e04a
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c04e11e
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c04e04a
	mov.w @(loc_8c04e0a6,PC),r0
	mov.w r0,@(0x1E,r14)
	bsr loc_8c04e98a
	mov r14,r4

loc_8c04e04a:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c04e11e
	mov.l @(loc_8c04e0bc,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04e11e
	mov.w @(loc_8c04e0a2,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c04e0cc
	mov.w @(loc_8c04e0a0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04e0cc
	fldi1 fr3
	fadd fr3,fr3
	mov 0x60,r0
	mov.l @(loc_8c04e0c0,PC),r3
	fmov @(r0,r14),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04e0c4,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4

loc_8c04e090:
	lds.l @r15+,pr
	mov.l @(loc_8c04e0c8,PC),r2
	mov 0x0F,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04e09c:
	#data 0x01fd
loc_8c04e09e:
	#data 0x0238
loc_8c04e0a0:
	#data 0x0234
loc_8c04e0a2:
	#data 0x0420
loc_8c04e0a4:
	#data 0x0239
loc_8c04e0a6:
	#data 0x00ff
	#align4
loc_8c04e0a8:
	#data bank05.loc_8c058c48
loc_8c04e0ac:
	#data bank03.loc_8c034dee
loc_8c04e0b0:
	#data loc_8c0423ac
loc_8c04e0b4:
	#data bank10.loc_8c107f1c
loc_8c04e0b8:
	#data 0xc14db6db
loc_8c04e0bc:
	#data bank05.loc_8c052ce2
loc_8c04e0c0:
	#data loc_8c042482
loc_8c04e0c4:
	#data bank10.loc_8c100672
loc_8c04e0c8:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c04e0cc:
	mov.l @(loc_8c04e1dc,PC),r2
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04e1e0,PC),r3
	extu.b r0,r5
	jsr @r3
	add 0x34,r4
	mov.w @(loc_8c04e1c8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04e104
	mov.w @(loc_8c04e1ca,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c04e0f6
	bra loc_8c04e0f8
	mov 0x01,r4

loc_8c04e0f6:
	mov 0x03,r4

loc_8c04e0f8:
	mov.l @(loc_8c04e1e4,PC),r5
	mov r4,r0
	nop
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.b r0,@(0x6,r5)

loc_8c04e104:
	mov.b @(0x6,r14),r0
	mov 0x03,r3
	mov r14,r4
	mov 0x1A,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0D,r5
	mov.w @(loc_8c04e1cc,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04e1e8,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04e11e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04e124:
	mov.w @(loc_8c04e1ce,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c04e140
	mov 0x00,r13
	mov.w @(loc_8c04e1d0,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	add 0xB0,r0
	mov.b r13,@(r0,r14)

loc_8c04e140:
	mov.w @(loc_8c04e1c8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04e194
	mov.w @(loc_8c04e1d2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04e194
	mov.w @(loc_8c04e1d4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04e194
	mov.w @(loc_8c04e1d6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04e17a
	mov.l @(loc_8c04e1ec,PC),r3
	mov 0x1D,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c04e176
	mov.w @(loc_8c04e1d4,PC),r0
	mov 0xFF,r3
	bra loc_8c04e17a
	mov.b r3,@(r0,r14)

loc_8c04e176:
	mov.w @(loc_8c04e1d4,PC),r0
	mov.b r13,@(r0,r14)

loc_8c04e17a:
	mov.w @(loc_8c04e1d4,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c04e194
	mov.w @(loc_8c04e1d8,PC),r0
	mov 0x11,r5
	mov.l @(loc_8c04e1f0,PC),r3
	mov r14,r4
	mov.b r13,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c04e194:
	mov.l @(loc_8c04e1f4,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c04e1ae
	lds.l @r15+,pr
	mov.l @(loc_8c04e1f0,PC),r2
	mov r14,r4
	mov 0x17,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c04e1ae:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04e1b6:
	mov r4,r3
	mov.l @(loc_8c04e1f8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04e1c8:
	#data 0x0235
loc_8c04e1ca:
	#data 0x0207
loc_8c04e1cc:
	#data 0x01f9
loc_8c04e1ce:
	#data 0x01da
loc_8c04e1d0:
	#data 0x01ed
loc_8c04e1d2:
	#data 0x0420
loc_8c04e1d4:
	#data 0x0236
loc_8c04e1d6:
	#data 0x0525
loc_8c04e1d8:
	#data 0x01d3
	#align4
loc_8c04e1dc:
	#data loc_8c042482
loc_8c04e1e0:
	#data bank10.loc_8c100672
loc_8c04e1e4:
	#data 0x8c26a518
loc_8c04e1e8:
	#data bank03.loc_8c034e8c
loc_8c04e1ec:
	#data bank05.loc_8c05bf3a
loc_8c04e1f0:
	#data bank05.loc_8c0532a8
loc_8c04e1f4:
	#data bank03.loc_8c034dee
loc_8c04e1f8:
	#data bank14.loc_8c14e988

;==============================================
loc_8c04e1fc:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(loc_8c04e304,PC),r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04e306,PC),r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c04e314,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r4)

loc_8c04e220:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04e318,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04e31c,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04e308,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04e250
	mov.w @(loc_8c04e30a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04e250
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04e320,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04e324,PC),r2
	jsr @r2
	mov r14,r4

loc_8c04e250:
	mov.l @(loc_8c04e328,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04e284
	mov.l @(loc_8c04e32c,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	fldi1 fr3
	fadd fr3,fr3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov fr2,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr4
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr4,fr2
	bt loc_8c04e284
	fmov fr4,@(r0,r14)

loc_8c04e284:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04e28a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04e318,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04e31c,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c04e328,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04e2fe
	mov.b @(0x6,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04e30c,PC),r0
	mov.b r3,@(r0,r14)
	add 0x38,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x07,r0
	cmp/eq 0x05,r0
	bf loc_8c04e2c4
	mov.w @(loc_8c04e30e,PC),r0
	bra loc_8c04e2e4
	mov 0x02,r2

loc_8c04e2c4:
	mov.w @(loc_8c04e310,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bt.s loc_8c04e2da
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x2C,r0
	bf loc_8c04e2e8

loc_8c04e2da:
	mov.w @(loc_8c04e312,PC),r0
	mov 0x01,r3
	mov 0x30,r2
	mov.b r3,@(r0,r14)
	add 0x01,r0

loc_8c04e2e4:
	bra loc_8c04e2f4
	mov.w r2,@(r0,r14)

loc_8c04e2e8:
	mov.w @(loc_8c04e312,PC),r0
	mov 0x3C,r1
	mov 0x78,r3
	mov.b r1,@(r0,r14)
	add 0x01,r0
	mov.w r3,@(r0,r14)

loc_8c04e2f4:
	lds.l @r15+,pr
	mov.l @(loc_8c04e334,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04e2fe:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04e304:
	#data 0x0218
loc_8c04e306:
	#data 0x021c
loc_8c04e308:
	#data 0x01fd
loc_8c04e30a:
	#data 0x0238
loc_8c04e30c:
	#data 0x01f9
loc_8c04e30e:
	#data 0x01e4
loc_8c04e310:
	#data 0x01b8
loc_8c04e312:
	#data 0x01e3
	#align4
loc_8c04e314:
	#data 0xbf4db6db
loc_8c04e318:
	#data bank05.loc_8c058c48
loc_8c04e31c:
	#data bank03.loc_8c034dee
loc_8c04e320:
	#data loc_8c0423ac
loc_8c04e324:
	#data bank10.loc_8c107f1c
loc_8c04e328:
	#data bank05.loc_8c052ce2
loc_8c04e32c:
	#data loc_8c042482
loc_8c04e330:
	#data 0x40892492
loc_8c04e334:
	#data bank05.loc_8c05a2cc

;==============================================
loc_8c04e338:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c04e398
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04e45c,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04e450,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04e366
	mova @(loc_8c04e460,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c04e464,PC),r0
	bra loc_8c04e372
	fmov @r0,fr3

loc_8c04e366:
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr3

loc_8c04e372:
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04e452,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04e398
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8c04e398:
	mov.l @(loc_8c04e478,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x60,r1
	mov.l @(loc_8c04e47c,PC),r3
	add r14,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x6c,r1
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
	mov.w @(loc_8c04e454,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c04e406
	mov.w @(loc_8c04e454,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c04e452,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04e3f4
	mov.l @(loc_8c04e480,PC),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @(loc_8c04e484,PC),r3
	add 0x34,r4
	extu.b r0,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c04e3f4:
	mov.w @(loc_8c04e456,PC),r0
	mov 0x01,r3
	mov 0x11,r5
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04e480,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c04e406:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04e40c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bf.s loc_8c04e42c
	mov 0x00,r4
	mov.l @(loc_8c04e488,PC),r3
	mov.l @r3,r2
	mov.b @r2,r1
	mov 0x05,r2
	extu.b r1,r1
	cmp/ge r2,r1
	bf loc_8c04e494

loc_8c04e42c:
	mov.w @(loc_8c04e458,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	add 0x1D,r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c04e45a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c04e448
	mov.l @(loc_8c04e48c,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04e448:
	mov.l @(loc_8c04e490,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04e450:
	#data 0x01d2
loc_8c04e452:
	#data 0x01da
loc_8c04e454:
	#data 0x041c
loc_8c04e456:
	#data 0x01d3
loc_8c04e458:
	#data 0x012c
loc_8c04e45a:
	#data 0x01f9
	#align4
loc_8c04e45c:
	#data bank05.loc_8c05218a
loc_8c04e460:
	#data 0xc12d5555
loc_8c04e464:
	#data 0x3ea00000
loc_8c04e468:
	#data 0x412d5555
loc_8c04e46c:
	#data 0xbea00000
loc_8c04e470:
	#data 0x41892492
loc_8c04e474:
	#data 0xbfcdb6db
loc_8c04e478:
	#data bank05.loc_8c057580
loc_8c04e47c:
	#data bank03.loc_8c034dee
loc_8c04e480:
	#data bank05.loc_8c0532a8
loc_8c04e484:
	#data bank10.loc_8c100672
loc_8c04e488:
	#data 0x8c2896b0
loc_8c04e48c:
	#data bank05.loc_8c05176e
loc_8c04e490:
	#data bank05.loc_8c051648

;==============================================
loc_8c04e494:
	mov.w @(loc_8c04e57c,PC),r0
	mov.w @(loc_8c04e57e,PC),r3
	mov.b r4,@(r0,r14)
	add 0x1D,r0
	mov.l @(loc_8c04e590,PC),r2
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x77,r0
	mov.l r2,@(r0,r14)
	mov.b @(0x6,r14),r0
	mov.l @(loc_8c04e594,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04e4b4:
	mov 0x05,r0
	mov.b r0,@(0x6,r4)
	mov 0x00,r0
	mov.b r0,@(0x7,r4)
	mov.w @(loc_8c04e580,PC),r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04e582,PC),r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x6c,r0
	bra loc_8c04e664
	fmov fr3,@(r0,r4)


loc_8c04e4dc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04e59c,PC),r3
	jsr @r3
	mov r4,r14
	bsr loc_8c04e770
	mov r14,r4
	tst r0,r0
	bf loc_8c04e534
	mov.w @(loc_8c04e584,PC),r0
	mov.w @(loc_8c04e586,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c04e504
	lds.l @r15+,pr
	mov r14,r4
	mov 0x03,r5
	bra loc_8c04e918
	mov.l @r15+,r14

loc_8c04e504:
	mov.w @(r0,r14),r3
	mov.w @(loc_8c04e588,PC),r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c04e518
	lds.l @r15+,pr
	mov r14,r4
	mov 0x02,r5
	bra loc_8c04e918
	mov.l @r15+,r14

loc_8c04e518:
	mov.w @(r0,r14),r2
	mov.w @(loc_8c04e58a,PC),r3
	extu.w r2,r2
	tst r3,r2
	bf loc_8c04e52a
	mov.w @(loc_8c04e58c,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04e534

loc_8c04e52a:
	lds.l @r15+,pr
	mov r14,r4
	mov 0x06,r5
	bra loc_8c04e918
	mov.l @r15+,r14

loc_8c04e534:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04e53a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04e59c,PC),r3
	jsr @r3
	mov r4,r14
	bsr loc_8c04e770
	mov r14,r4
	tst r0,r0
	bf loc_8c04e576
	mov.w @(loc_8c04e584,PC),r0
	mov.w @(loc_8c04e586,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c04e562
	lds.l @r15+,pr
	mov r14,r4
	mov 0x03,r5
	bra loc_8c04e918
	mov.l @r15+,r14

loc_8c04e562:
	mov.w @(r0,r14),r3
	mov.w @(loc_8c04e588,PC),r2
	extu.w r3,r3
	tst r2,r3
	bf loc_8c04e576
	lds.l @r15+,pr
	mov r14,r4
	mov 0x01,r5
	bra loc_8c04e918
	mov.l @r15+,r14

loc_8c04e576:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04e57c:
	#data 0x012c
loc_8c04e57e:
	#data 0x00ff
loc_8c04e580:
	#data 0x0218
loc_8c04e582:
	#data 0x021c
loc_8c04e584:
	#data 0x0340
loc_8c04e586:
	#data 0x2000
loc_8c04e588:
	#data 0x1000
loc_8c04e58a:
	#data 0x0c00
loc_8c04e58c:
	#data 0x0525
	#align4
loc_8c04e590:
	#data bank14.loc_8c14e998
loc_8c04e594:
	#data bank14.loc_8c14e9a8
loc_8c04e598:
	#data 0xbfbc9249
loc_8c04e59c:
	#data bank05.loc_8c05218a

;==============================================
loc_8c04e5a0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04e654,PC),r3
	jsr @r3
	mov r4,r14
	bsr loc_8c04e770
	mov r14,r4
	tst r0,r0
	bf loc_8c04e5dc
	mov.l @(loc_8c04e658,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04e5dc
	mov.w @(loc_8c04e64c,PC),r0
	mov 0x01,r5
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c04e918
	mov r14,r4
	mov.l @(loc_8c04e65c,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04e660,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04e5dc:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04e5e2:
	mov.w @(loc_8c04e64e,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04e620
	mov.l @(loc_8c04e654,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04e658,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04e646
	mov.w @(loc_8c04e64c,PC),r0
	mov 0x01,r5
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c04e918
	mov r14,r4
	mov.l @(loc_8c04e65c,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04e660,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04e620:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c04e646
	mov.w @(loc_8c04e650,PC),r0
	mov.w @(loc_8c04e652,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt.s loc_8c04e63e
	mov r14,r4
	bra loc_8c04e640
	mov 0x02,r5

loc_8c04e63e:
	mov 0x01,r5

loc_8c04e640:
	lds.l @r15+,pr
	bra loc_8c04e918
	mov.l @r15+,r14

loc_8c04e646:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04e64c:
	#data 0x041c
loc_8c04e64e:
	#data 0x01ff
loc_8c04e650:
	#data 0x0340
loc_8c04e652:
	#data 0x1000
	#align4
loc_8c04e654:
	#data loc_8c04fea8
loc_8c04e658:
	#data bank05.loc_8c052ce2
loc_8c04e65c:
	#data bank05.loc_8c05218a
loc_8c04e660:
	#data bank05.loc_8c0511b4

;==============================================
loc_8c04e664:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04e754,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c04e758,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c04e73c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04e694
	mov.w @(loc_8c04e73e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04e694
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04e75c,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04e760,PC),r2
	jsr @r2
	mov r14,r4

loc_8c04e694:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c04e6c2
	mov.l @(loc_8c04e764,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c04e6c2
	mov.w @(loc_8c04e740,PC),r0
	mov 0x01,r5
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c04e918
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04e768,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04e6c2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c04e6c8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04e76c,PC),r3
	jsr @r3
	mov r4,r14
	bsr loc_8c04e770
	mov r14,r4
	tst r0,r0
	bf loc_8c04e736
	mov.w @(loc_8c04e742,PC),r0
	mov.w @(loc_8c04e744,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c04e6ea
	bra loc_8c04e72e
	mov 0x03,r5

loc_8c04e6ea:
	mov.w @(r0,r14),r3
	mov.w @(loc_8c04e746,PC),r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c04e6fe
	lds.l @r15+,pr
	mov r14,r4
	mov 0x02,r5
	bra loc_8c04e918
	mov.l @r15+,r14

loc_8c04e6fe:
	mov.w @(loc_8c04e748,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c04e70e
	mov.w @(loc_8c04e74a,PC),r0
	mov 0x01,r3
	bra loc_8c04e736
	mov.b r3,@(r0,r14)

loc_8c04e70e:
	mov.w @(loc_8c04e74c,PC),r0
	mov 0xF6,r2
	mov.w @(loc_8c04e74e,PC),r3
	mov.w @(r0,r14),r1
	mov.w @(loc_8c04e74a,PC),r0
	extu.w r1,r1
	and r3,r1
	shad r2,r1
	mov.b r1,@(r0,r14)
	mov.w @(loc_8c04e742,PC),r0
	mov.w @(loc_8c04e750,PC),r1
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r1,r2
	bf loc_8c04e736
	mov 0x01,r5

loc_8c04e72e:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c04e918
	mov.l @r15+,r14

loc_8c04e736:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04e73c:
	#data 0x01fd
loc_8c04e73e:
	#data 0x0238
loc_8c04e740:
	#data 0x041c
loc_8c04e742:
	#data 0x0340
loc_8c04e744:
	#data 0x2000
loc_8c04e746:
	#data 0x1000
loc_8c04e748:
	#data 0x0525
loc_8c04e74a:
	#data 0x01d3
loc_8c04e74c:
	#data 0x034a
loc_8c04e74e:
	#data 0x0400
loc_8c04e750:
	#data 0x0c00
	#align4
loc_8c04e754:
	#data bank05.loc_8c058c48
loc_8c04e758:
	#data bank03.loc_8c034dee
loc_8c04e75c:
	#data loc_8c0423ac
loc_8c04e760:
	#data bank10.loc_8c107f1c
loc_8c04e764:
	#data bank05.loc_8c052ce2
loc_8c04e768:
	#data bank05.loc_8c05a2cc
loc_8c04e76c:
	#data bank05.loc_8c05218a

;==============================================
loc_8c04e770:
	mov.w @(loc_8c04e898,PC),r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c04e788
	mov.w @(loc_8c04e89a,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_8c04e7b4

loc_8c04e788:
	mov.w @(loc_8c04e89c,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c04e7a6
	mov.w @(loc_8c04e89e,PC),r0
	mov 0x01,r1
	mov.b @(r0,r4),r3
	add 0xD5,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c04e7ba
	bra loc_8c04e7b4
	nop

loc_8c04e7a6:
	mov.w @(loc_8c04e8a0,PC),r3
	mov r3,r0
	nop
	add 0xE8,r0
	mov.w @(r0,r4),r2
	tst r3,r2
	bf loc_8c04e7ba

loc_8c04e7b4:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c04e7ba:
	bsr loc_8c04e918
	mov 0x04,r5
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c04e7c6:
	mov.w @(loc_8c04e898,PC),r0
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	mov 0x01,r0
	mov.b r0,@(0x6,r4)
	mov r5,r0
	nop
	rts
	mov.b r0,@(0x7,r4)

;==============================================
loc_8c04e7d8:
	mov 0x02,r0
	mov.b r0,@(0x6,r4)
	mov 0x00,r0
	mov.b r0,@(0x7,r4)
	mov 0x01,r3
	mov.w @(loc_8c04e898,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c04e7e8:
	mov 0x03,r0
	mov 0x00,r5
	mov.b r0,@(0x6,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x7,r4)
	mov 0x02,r3
	mov.w @(loc_8c04e8a2,PC),r0
	mov.b r5,@(r0,r4)
	add 0xFD,r0
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c04e8a4,PC),r0
	mov.w @(loc_8c04e8a6,PC),r3
	mov.w @(r0,r4),r2
	extu.w r2,r2
	tst r3,r2
	bf loc_8c04e812
	mov.w @(loc_8c04e8a8,PC),r0
	mov 0xFF,r2
	bra loc_8c04e824
	mov.b r2,@(r0,r4)

loc_8c04e812:
	mov.w @(loc_8c04e8aa,PC),r1
	tst r1,r2
	bt loc_8c04e81e
	mov.w @(loc_8c04e8a8,PC),r0
	bra loc_8c04e824
	mov.b r5,@(r0,r4)

loc_8c04e81e:
	mov.w @(loc_8c04e8a8,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)

loc_8c04e824:
	mov.w @(loc_8c04e8a8,PC),r0
	mov.l @(loc_8c04e8b0,PC),r5
	mov.b @(r0,r4),r3
	mova @(0x88,PC),r0
	fmov @r0,fr5
	mova @(0x88,PC),r0
	add 0x01,r3
	fmov @r0,fr4
	shll2 r3
	shll r3
	add r3,r5
	mov.w @r5,r3
	mov 0x60,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mov 0x6c,r0
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c04e8bc,PC),r0
	fmov @r0,fr5
	mov.w @(0x4,r5),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	mov 0x5C,r0
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x6,r5),r0
	mov r0,r3
	lds r3,fpul
	mov 0x68,r0
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04e8ac,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c04e894
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c04e894:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04e898:
	#data 0x01f9
loc_8c04e89a:
	#data 0x041c
loc_8c04e89c:
	#data 0x0525
loc_8c04e89e:
	#data 0x01fd
loc_8c04e8a0:
	#data 0x0360
loc_8c04e8a2:
	#data 0x01fc
loc_8c04e8a4:
	#data 0x034a
loc_8c04e8a6:
	#data 0x0c00
loc_8c04e8a8:
	#data 0x01d3
loc_8c04e8aa:
	#data 0x0800
loc_8c04e8ac:
	#data 0x01d2
	#align4
loc_8c04e8b0:
	#data bank14.loc_8c14e9c4
loc_8c04e8b4:
	#data 0x40092492
loc_8c04e8b8:
	#data 0x43800000
loc_8c04e8bc:
	#data 0x3fd55555

;==============================================
loc_8c04e8c0:
	mov.w @(loc_8c04e9bc,PC),r0
	mov 0x01,r6
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c04e8d4
	mov 0x00,r5
	mov.w @(loc_8c04e9be,PC),r0
	bra loc_8c04e8f6
	mov.b r6,@(r0,r4)

loc_8c04e8d4:
	mov.w @(loc_8c04e9c0,PC),r0
	mov.w @(loc_8c04e9c4,PC),r2
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04e9c2,PC),r0
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c04e8ee
	mov.w @(loc_8c04e9bc,PC),r0
	bra loc_8c04e8f2
	mov.b r6,@(r0,r4)

loc_8c04e8ee:
	mov.w @(loc_8c04e9bc,PC),r0
	mov.b r5,@(r0,r4)

loc_8c04e8f2:
	mov.w @(loc_8c04e9be,PC),r0
	mov.b r5,@(r0,r4)

loc_8c04e8f6:
	mov 0x04,r0
	mov.b r0,@(0x6,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x7,r4)
	mov 0x28,r0
	rts
	mov.w r0,@(0x1E,r4)

;==============================================
loc_8c04e906:
	mov 0x06,r0
	mov 0x00,r5
	mov.b r0,@(0x6,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x7,r4)
	mov.w @(loc_8c04e9bc,PC),r0
	rts
	mov.b r5,@(r0,r4)

;==============================================
loc_8c04e918:
	add 0xFC,r15
	mov.l @(loc_8c04e9c8,PC),r0
	mov.b r5,@r15
	mov.b @r15,r3
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c04e92a:
	mova @(0xA4,PC),r0
	mov.l @(loc_8c04e9cc,PC),r5
	fmov @r0,fr3
	mov 0x0C,r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr4
	fcmp/gt fr4,fr2
	bf loc_8c04e950
	mova @(0x94,PC),r0
	fmov @r0,fr2
	mov 0x0C,r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr2,fr4
	fcmp/gt fr1,fr4
	bt loc_8c04e954

loc_8c04e950:
	mov 0x34,r0
	fmov fr4,@(r0,r4)

loc_8c04e954:
	rts
	nop

;==============================================
loc_8c04e958:
	add 0xFC,r15
	mov.w @(loc_8c04e9c6,PC),r0
	mov 0x10,r2
	mov.b @(r0,r4),r5
	extu.b r5,r3
	cmp/gt r2,r3
	bf loc_8c04e96e
	mov 0x20,r0
	sub r5,r0
	mov 0x1F,r5
	and r0,r5

loc_8c04e96e:
	extu.b r5,r5
	add 0x02,r5
	cmp/pz r5
	bt loc_8c04e978
	add 0x03,r5

loc_8c04e978:
	shar r5
	mov.l @(loc_8c04e9d8,PC),r3
	shar r5
	mov.b r5,@r15
	mov 0x0D,r5
	mov.b @r15,r6
	add 0x10,r6
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c04e98a:
	add 0xFC,r15
	mov.w @(loc_8c04e9c6,PC),r0
	mov 0x10,r2
	mov.b @(r0,r4),r5
	extu.b r5,r3
	cmp/gt r2,r3
	bf loc_8c04e9a0
	mov 0x20,r0
	sub r5,r0
	mov 0x1F,r5
	and r0,r5

loc_8c04e9a0:
	extu.b r5,r5
	add 0x02,r5
	cmp/pz r5
	bt loc_8c04e9aa
	add 0x03,r5

loc_8c04e9aa:
	shar r5
	mov.l @(loc_8c04e9d8,PC),r3
	shar r5
	mov.b r5,@r15
	mov 0x0D,r5
	mov.b @r15,r6
	add 0x15,r6
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04e9bc:
	#data 0x01f9
loc_8c04e9be:
	#data 0x01ff
loc_8c04e9c0:
	#data 0x041c
loc_8c04e9c2:
	#data 0x0340
loc_8c04e9c4:
	#data 0x1000
loc_8c04e9c6:
	#data 0x022e
	#align4
loc_8c04e9c8:
	#data bank14.loc_8c14e9dc

loc_8c04e9cc:
	#data 0x8c26a518

loc_8c04e9d0:
	#data 0xc38e8000

loc_8c04e9d4:
	#data 0x438e8000

loc_8c04e9d8:
	#data bank03.loc_8c034e8c


;==============================================
loc_8c04e9dc:
	sts.l pr,@-r15
	bsr loc_8c04e9e6
	nop
	bra loc_8c04ea5e
	lds.l @r15+,pr

;==============================================
loc_8c04e9e6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov r12,r14
	mov.l r10,@-r15
	mov 0x03,r11
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04eaf0,PC),r10
	mov.w @(loc_8c04eade,PC),r8
	mov.w @(loc_8c04eae0,PC),r9

loc_8c04ea02:
	extu.b r14,r13
	mov.l @(loc_8c04eaf4,PC),r3
	shll r13
	mov r9,r6
	mul.l r8,r13
	mov 0x00,r5
	sts macl,r13
	add r10,r13
	jsr @r3
	mov r13,r4
	mov r12,r0
	nop
	mov.b r0,@(0x2,r13)
	mov r14,r3
	mov.w @(loc_8c04eae2,PC),r0
	shll r3
	mov.b r3,@(r0,r13)
	mov.w @(loc_8c04eae4,PC),r0
	mov.b r14,@(r0,r13)
	add 0x01,r0
	mov.b r14,@(r0,r13)
	add 0x01,r14
	extu.b r14,r3
	cmp/ge r11,r3
	bf loc_8c04ea02
	mov.w @(loc_8c04eae6,PC),r0
	mov r10,r4
	mov.l @(loc_8c04eaf8,PC),r5
	mov.b @(r0,r4),r3
	mov.w @(loc_8c04eae8,PC),r0
	mov.b r3,@(r0,r5)
	mov.w @(loc_8c04eaea,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c04ea4c
	mov.w @(loc_8c04eae8,PC),r0
	mov.b r12,@(r0,r5)

loc_8c04ea4c:
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
loc_8c04ea5e:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x01,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x03,r8
	sts.l pr,@-r15
	mov.l @(loc_8c04eaf0,PC),r10
	mov.w @(loc_8c04eade,PC),r12
	mov.w @(loc_8c04eae0,PC),r9

loc_8c04ea7a:
	extu.b r14,r13
	mov.l @(loc_8c04eaf4,PC),r3
	shll r13
	mov r9,r6
	mul.l r12,r13
	mov 0x00,r5
	sts macl,r13
	add r10,r13
	add r12,r13
	jsr @r3
	mov r13,r4
	mov r11,r0
	nop
	mov r14,r3
	mov.b r0,@(0x2,r13)
	mov.w @(loc_8c04eae2,PC),r0
	shll r3
	add 0x01,r3
	mov.b r3,@(r0,r13)
	mov.w @(loc_8c04eae4,PC),r0
	mov.b r14,@(r0,r13)
	add 0x01,r0
	mov.b r14,@(r0,r13)
	add 0x01,r14
	extu.b r14,r3
	cmp/ge r8,r3
	bf loc_8c04ea7a
	mov.w @(loc_8c04eae6,PC),r0
	mov r10,r4
	add r12,r4
	mov.l @(loc_8c04eaf8,PC),r5
	mov.b @(r0,r4),r3
	mov.w @(loc_8c04eaec,PC),r0
	mov.b r3,@(r0,r5)
	mov.w @(loc_8c04eaea,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c04eacc
	mov.w @(loc_8c04eaec,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r5)

loc_8c04eacc:
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
loc_8c04eade:
	#data 0x05a4
loc_8c04eae0:
	#data 0x04bc
loc_8c04eae2:
	#data 0x01a4
loc_8c04eae4:
	#data 0x0411
loc_8c04eae6:
	#data 0x052f
loc_8c04eae8:
	#data 0x009c
loc_8c04eaea:
	#data 0x0525
loc_8c04eaec:
	#data 0x009d
	#align4

loc_8c04eaf0:
	#data 0x8c268340
loc_8c04eaf4:
	#data bank12.loc_8c129728
loc_8c04eaf8:
	#data 0x8c2895f0

;==============================================
loc_8c04eafc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x00,r9
	mov.l r8,@-r15
	mov r9,r11
	sts.l pr,@-r15
	mov.l @(loc_8c04ebf4,PC),r12
	mov 0x01,r8

loc_8c04eb14:
	extu.b r11,r10
	mov r9,r13
	mov r10,r3
	shll r10
	add r3,r10
	shll2 r10

loc_8c04eb20:
	mov.l @r12,r0
	extu.b r13,r14
	mov.l @(loc_8c04ebf8,PC),r1
	extu.b r13,r2
	add 0x18,r0
	add r10,r0
	shll2 r14
	tst r2,r2
	mov.l @(r0,r14),r14
	movt r3
	mov 0x58,r0
	mov.b r3,@r14
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c04eb5a
	extu.b r13,r3
	tst r3,r3
	bf loc_8c04eb5a
	mov.w @(loc_8c04ebe4,PC),r0
	extu.b r11,r3
	mov.w @(loc_8c04ebe6,PC),r2
	mov.b r8,@(r0,r14)
	mov.l @r12,r0
	add r0,r2
	mov.w @(loc_8c04ebe8,PC),r0
	add r2,r3
	mov.b @(r0,r14),r1
	mov.b r1,@r3

loc_8c04eb5a:
	mov.w @(loc_8c04ebea,PC),r0
	mov 0x00,r6
	mov.b @r14,r3
	mov r6,r5
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04ebfc,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04ebe8,PC),r0
	mov.l @(loc_8c04ec00,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c04ebec,PC),r0
	extu.b r2,r2
	shll2 r2
	shll2 r2
	shll2 r2
	shll r2
	add r3,r2
	mov.l r2,@(r0,r14)
	bsr loc_8c04ef28
	mov r14,r4
	mov.l @r12,r2
	add 0x01,r13
	mov.w @(loc_8c04ebee,PC),r0
	add 0x18,r2
	add r10,r2
	mov.l @r2,r3
	mov 0x03,r2
	mov.l r3,@(r0,r14)
	extu.b r13,r3
	cmp/ge r2,r3
	bf loc_8c04eb20
	add 0x01,r11
	mov 0x02,r3
	extu.b r11,r2
	cmp/ge r3,r2
	bf loc_8c04eb14
	lds.l @r15+,pr
	mov.l @(loc_8c04ec04,PC),r1
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8c04ebb8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x06,r12
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c04ec08,PC),r14
	mov.w @(loc_8c04ebf0,PC),r11

loc_8c04ebca:
	bsr loc_8c04ec0c
	mov r14,r4
	add 0x01,r13
	extu.b r13,r2
	cmp/ge r12,r2
	bf.s loc_8c04ebca
	add r11,r14
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04ebe4:
	#data 0x0413
loc_8c04ebe6:
	#data 0x008a
loc_8c04ebe8:
	#data 0x01a4
loc_8c04ebea:
	#data 0x012c
loc_8c04ebec:
	#data 0x0428
loc_8c04ebee:
	#data 0x020c
loc_8c04ebf0:
	#data 0x05a4
	#align4
loc_8c04ebf4:
	#data 0x8c2896b0
loc_8c04ebf8:
	#data work.GameGlobalPointer
loc_8c04ebfc:
	#data bank03.loc_8c034e8c

loc_8c04ec00:
	#data 0x8c289bd8

loc_8c04ec04:
	#data bank10.loc_8c102fa6
loc_8c04ec08:
	#data 0x8c268340

;==============================================
loc_8c04ec0c:
	mov.w @(loc_8c04ed22,PC),r0
	mov 0xFF,r3
	mov.l @(loc_8c04ed48,PC),r1
	mov.b r3,@(r0,r4)
	add 0x77,r0
	mov.b @(r0,r4),r2

loc_8c04ec18:
	mov.l @(loc_8c04ed40,PC),r0
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov.w @(loc_8c04ed24,PC),r0
	mov.w r3,@(r0,r4)
	mov.w @(loc_8c04ed26,PC),r0
	mov.b @(r0,r4),r2
	mov.l @(loc_8c04ed44,PC),r0
	mov.b @(r0,r2),r3
	mov 0x30,r0
	mov.b r3,@(r0,r4)
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c04ec7c
	mov.b @(0x2,r4),r0
	mov 0x04,r2
	mov.l @(loc_8c04ed4c,PC),r5
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r5,r0
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r5
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c04ed28,PC),r0
	fmov fr3,@(r0,r4)

loc_8c04ec7c:
	mova @(loc_8c04ed50,PC),r0
	mov.w @(loc_8c04ed2e,PC),r5
	fmov @r0,fr3
	mov.w @(loc_8c04ed2a,PC),r0
	fmov fr3,@(r0,r4)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04ed2c,PC),r0
	fmov fr3,@(r0,r4)
	add 0x18,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	shll2 r0
	mov.w r5,@(r0,r4)
	add 0x04,r0

loc_8c04ec9a:
	mov.w r5,@(r0,r4)
	mov 0x00,r5
	mov.w @(loc_8c04ed30,PC),r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c04ed32,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c04ecc2
	mov.w @(loc_8c04ed34,PC),r0
	mov 0x00,r1
	mov.l @(loc_8c04ed58,PC),r3
	mov.l @(r0,r4),r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bt loc_8c04ecc2
	mov.w @(loc_8c04ed36,PC),r0
	mov.w r5,@(r0,r4)
	add 0x04,r0
	mov.w r5,@(r0,r4)

loc_8c04ecc2:
	mov.l @(loc_8c04ed5c,PC),r6
	mov 0x50,r2
	mov.b @(0x2,r4),r0
	mov.l @r6,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w r5,@(r0,r3)
	mov.w @(loc_8c04ed38,PC),r3
	mov.l @r6,r0
	add r0,r3
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	shll r0
	mov.w r5,@(r0,r3)
	mov.w @(loc_8c04ed3a,PC),r0
	mov.b r2,@(r0,r4)
	add 0x02,r0
	mov.b r5,@(r0,r4)
	add 0x2F,r0
	rts
	mov.b r5,@(r0,r4)

;==============================================
loc_8c04ecee:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x06,r11
	sts.l pr,@-r15
	mov.w @(loc_8c04ed3c,PC),r12
	mov.l @(loc_8c04ed60,PC),r14
	mov.l r4,@-r15

loc_8c04ed02:
	mov.l @r15,r5
	bsr loc_8c04ed68
	mov r14,r4
	add 0x01,r13
	extu.b r13,r2
	cmp/ge r11,r2
	bf.s loc_8c04ed02
	add r12,r14
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c04ed64,PC),r2
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04ed22:
	#data 0x012d
loc_8c04ed24:
	#data 0x012e
loc_8c04ed26:
	#data 0x052c
loc_8c04ed28:
	#data 0x041c
loc_8c04ed2a:
	#data 0x00ec
loc_8c04ed2c:
	#data 0x00f0
loc_8c04ed2e:
	#data 0x0090
loc_8c04ed30:
	#data 0x01dc
loc_8c04ed32:
	#data 0x0411
loc_8c04ed34:
	#data 0x0414
loc_8c04ed36:
	#data 0x0420
loc_8c04ed38:
	#data 0x0080
loc_8c04ed3a:
	#data 0x01e1
loc_8c04ed3c:
	#data 0x05a4
	#align4

loc_8c04ed40:
	#data bank13.loc_8c1355d4
loc_8c04ed44:
	#data bank13.loc_8c13565c
loc_8c04ed48:
	#data 0x8c289635
loc_8c04ed4c:
	#data bank13.loc_8c1355fc
loc_8c04ed50:
	#data 0x3fd55555
loc_8c04ed54:
	#data 0x40092492
loc_8c04ed58:
	#data 0x07000000
loc_8c04ed5c:
	#data 0x8c2896b0
loc_8c04ed60:
	#data 0x8c268340
loc_8c04ed64:
	#data loc_8c043ef4

;==============================================
loc_8c04ed68:
	mov.w @(loc_8c04ee18,PC),r0
	mov 0xFF,r3
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r4)
	mov.b @r4,r3
	tst r3,r3
	bf.s loc_8c04ed82
	mov 0x00,r6
	bra loc_8c04eede
	nop

loc_8c04ed82:
	mov.w @(loc_8c04ee1a,PC),r0
	mov 0x00,r1
	mov.l @(loc_8c04ee20,PC),r3
	mov.l @(r0,r4),r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8c04ed96
	bra loc_8c04eede
	nop

loc_8c04ed96:
	mov.l @(loc_8c04ee24,PC),r14
	tst r5,r5
	mov r6,r13
	mov 0x01,r12
	bf.s loc_8c04ee2c
	mov 0x03,r7
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bf loc_8c04eea0
	mov.w @(loc_8c04ee1c,PC),r0
	mov r12,r13
	mov.b @(r0,r4),r1
	extu.b r1,r1
	add 0x04,r1
	mov r7,r0
	nop
	mov.l @(loc_8c04ee28,PC),r3
	jsr @r3
	nop
	mov r0,r5
	mov.b @(0x2,r4),r0
	mov r14,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	shll2 r5
	mov.l @(r0,r5),r5
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	cmp/eq 0x19,r0
	bt loc_8c04eea0
	mov.w @(loc_8c04ee1c,PC),r0
	mov.b @(r0,r4),r1
	extu.b r1,r1
	add 0x02,r1
	mov r7,r0
	nop
	mov.l @(loc_8c04ee28,PC),r3
	jsr @r3
	nop
	mov r0,r5
	mov.b @(0x2,r4),r0
	mov r14,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	shll2 r5
	mov.l @(r0,r5),r5

loc_8c04ee08:
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	cmp/eq 0x19,r0
	bt loc_8c04eea0
	mov.w @(loc_8c04ee1e,PC),r0
	mov 0x19,r2
	bra loc_8c04eea0
	mov.b r2,@(r0,r5)

;##############################################
loc_8c04ee18:
	#data 0x012d
loc_8c04ee1a:
	#data 0x0414
loc_8c04ee1c:
	#data 0x0411
loc_8c04ee1e:
	#data 0x052c
	#align4

loc_8c04ee20:
	#data 0x03000000
loc_8c04ee24:
	#data 0x8c2895f0
loc_8c04ee28:
	#data bank12.loc_8c1292d4

;----------------------------------------------
loc_8c04ee2c:
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x19,r0
	bf loc_8c04eea0
	mov.w @(loc_8c04ef12,PC),r0
	mov r12,r13
	mov.b @(r0,r4),r1
	extu.b r1,r1
	add 0x04,r1
	mov r7,r0
	nop
	mov.l @(loc_8c04ef20,PC),r3
	jsr @r3
	nop
	mov r0,r5
	mov.b @(0x2,r4),r0
	mov r14,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	shll2 r5
	mov.l @(r0,r5),r5
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bt loc_8c04eea0
	mov.w @(loc_8c04ef12,PC),r0
	mov.b @(r0,r4),r1
	extu.b r1,r1
	add 0x02,r1
	mov r7,r0
	nop
	mov.l @(loc_8c04ef20,PC),r3
	jsr @r3
	nop
	mov r0,r5
	mov.b @(0x2,r4),r0
	mov r14,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	shll2 r5
	mov.l @(r0,r5),r5
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bt loc_8c04eea0
	mov.w @(loc_8c04ef14,PC),r0
	mov 0x1A,r2
	mov.b r2,@(r0,r5)

loc_8c04eea0:
	tst r13,r13
	bt loc_8c04eede
	mov.w @(loc_8c04ef16,PC),r0
	mov.w @(loc_8c04ef1a,PC),r7
	mov.b r6,@(r0,r4)
	mov.w @(loc_8c04ef18,PC),r0
	mov.b r6,@r4
	mov.w r6,@(r0,r4)
	add 0x04,r0
	mov.w r6,@(r0,r4)
	mov.w @(loc_8c04ef16,PC),r0
	mov.b r12,@r5
	mov.b r6,@(r0,r5)
	mov.w @(loc_8c04ef18,PC),r0
	mov.w r7,@(r0,r5)
	add 0x04,r0
	mov.w r7,@(r0,r5)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r5)
	mov.w @(loc_8c04ef12,PC),r0
	mov.b @(r0,r4),r7
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.b r7,@(r0,r5)
	mov r6,r0
	nop
	mov.b r0,@(0x7,r5)
	mov.b r0,@(0x6,r5)
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x4,r5)

loc_8c04eede:
	mov.l @(loc_8c04ef24,PC),r5
	mov 0x50,r2
	mov.b @(0x2,r4),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w r6,@(r0,r3)
	mov.w @(loc_8c04ef1c,PC),r3
	mov.l @r5,r0
	add r0,r3
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	shll r0
	mov.w r6,@(r0,r3)
	mov.w @(loc_8c04ef1e,PC),r0
	mov.b r2,@(r0,r4)
	add 0x02,r0
	mov.b r6,@(r0,r4)
	add 0x2F,r0
	mov.b r6,@(r0,r4)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04ef12:
	#data 0x0411
loc_8c04ef14:
	#data 0x052c
loc_8c04ef16:
	#data 0x012c
loc_8c04ef18:
	#data 0x0420
loc_8c04ef1a:
	#data 0x0090
loc_8c04ef1c:
	#data 0x0080
loc_8c04ef1e:
	#data 0x01e1
	#align4
loc_8c04ef20:
	#data bank12.loc_8c1292d4
loc_8c04ef24:
	#data 0x8c2896b0

;==============================================
loc_8c04ef28:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov r14,r5
	mov.b r0,@(0x6,r14)
	add 0x40,r5
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x4,r14)
	mov.w r0,@(0x1E,r14)
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b r4,@(r0,r14)
	mov 0x22,r0
	mov.b r4,@(r0,r14)
	mov 0x64,r0
	fldi0 fr4
	mov.l r4,@(0x8,r5)
	mov.l r4,@(0x4,r5)
	mov.l r4,@r5
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x70,r0
	fmov fr4,@(r0,r14)
	mov 0x6c,r0
	mov.w @(loc_8c04f0b4,PC),r5
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	add r14,r5
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c04f0b6,PC),r0
	mov 0xFF,r2
	mov.l r4,@(0xC,r5)
	mov 0x04,r1
	mov.l r4,@(0x8,r5)
	mov.l r4,@(0x4,r5)
	mov.l r4,@r5
	mov.b @(r0,r14),r3
	mov 0x24,r0
	mov.l @(loc_8c04f0d4,PC),r5
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04f0b8,PC),r0
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r5,r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.w @(loc_8c04f0c0,PC),r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r5
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov 0x3C,r0
	add r14,r1
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c04f0ba,PC),r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c04f0d8,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04f0bc,PC),r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c04f0dc,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04f0be,PC),r0
	fmov fr3,@(r0,r14)
	add 0x18,r0
	fldi1 fr3
	fmov fr3,@(r0,r14)
	mov 0x02,r0
	mov.b @(r0,r14),r0
	xor 0x01,r0
	mov.b r0,@r1
	extu.b r0,r0
	mov.w @(loc_8c04f0c2,PC),r1
	mov.l @(loc_8c04f0e0,PC),r5
	add r14,r1
	mov.w r0,@r1
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	mov.w @(loc_8c04f0c4,PC),r1
	extu.b r0,r0
	add 0x56,r3
	shll r0
	add r14,r1
	add r3,r0
	mov.l r0,@r1
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	mov.w @(loc_8c04f0c6,PC),r1
	extu.b r0,r0
	add 0x5A,r3
	add r14,r1
	add r3,r0
	mov.l r0,@r1
	mov.w @(loc_8c04f0c8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c04f038
	mov.w @(loc_8c04f0c4,PC),r0
	mov 0x01,r2
	mov.l @(r0,r14),r3
	add 0x04,r0
	mov.w r4,@r3
	mov.l @(r0,r14),r3
	mov.b r2,@r3

loc_8c04f038:
	mov.w @(loc_8c04f0ca,PC),r0
	mov.l @(loc_8c04f0e4,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

;==============================================
loc_8c04f048:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c04f0cc,PC),r6
	mov r4,r14
	mov.l @(loc_8c04f0e8,PC),r3
	mov 0x00,r5
	mov r6,r4
	add 0x98,r4
	jsr @r3
	add r14,r4
	mov.w @(loc_8c04f0ce,PC),r0
	mov 0x00,r13
	mov 0x80,r4
	mov.l @(loc_8c04f0e0,PC),r2
	mov.b r13,@(r0,r14)
	add 0xFD,r0
	mov.b r13,@(r0,r14)
	add 0x02,r0
	mov.b r13,@(r0,r14)
	add 0x0C,r0
	mov.w r13,@(r0,r14)
	add 0x02,r0
	mov.w r13,@(r0,r14)
	add 0xEE,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x50,r0
	mov.b r13,@(r0,r14)
	mov 0x01,r12
	mov.w @(loc_8c04f0c2,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c04f0c0,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r2,r3
	extu.b r0,r0
	xor r12,r0
	mov r0,r1
	shll r0
	add r1,r0
	shll2 r0
	add 0x18,r3
	mov.l @(r0,r3),r1
	mov.w @(loc_8c04f0d0,PC),r0
	mov.l r1,@(r0,r14)
	mov.w @(loc_8c04f0d2,PC),r0
	mov.b @(r0,r14),r0
	mov.b r0,@(0x1,r14)
	bra loc_8c04f0ec
	nop

;##############################################
loc_8c04f0b4:
	#data 0x00cc
loc_8c04f0b6:
	#data 0x01a4
loc_8c04f0b8:
	#data 0x012d
loc_8c04f0ba:
	#data 0x041c
loc_8c04f0bc:
	#data 0x00ec
loc_8c04f0be:
	#data 0x00f0
loc_8c04f0c0:
	#data 0x01d2
loc_8c04f0c2:
	#data 0x0130
loc_8c04f0c4:
	#data 0x0408
loc_8c04f0c6:
	#data 0x040c
loc_8c04f0c8:
	#data 0x0411
loc_8c04f0ca:
	#data 0x0410
loc_8c04f0cc:
	#data 0x0238
loc_8c04f0ce:
	#data 0x01a1
loc_8c04f0d0:
	#data 0x020c
loc_8c04f0d2:
	#data 0x052c
loc_8c04f0d4:
	#data bank13.loc_8c1355fc
loc_8c04f0d8:
	#data 0x3fd55555
loc_8c04f0dc:
	#data 0x40092492
loc_8c04f0e0:
	#data 0x8c2896b0
loc_8c04f0e4:
	#data bank05.loc_8c05be90
loc_8c04f0e8:
	#data bank12.loc_8c129728


;----------------------------------------------
loc_8c04f0ec:
	mov.w @(loc_8c04f202,PC),r0
	mov.b @(r0,r14),r3
	mov 0x25,r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c04f204,PC),r0
	mov.b @(r0,r14),r1
	mov.l @(loc_8c04f21c,PC),r0
	extu.b r1,r1
	shll2 r1
	mov.l @(r0,r1),r3
	mov r3,r1
	mov.l r3,@r15
	jsr @r1
	mov r14,r4
	mov.l @(loc_8c04f220,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04f206,PC),r0
	mov.l @(loc_8c04f224,PC),r1
	mov.b @(r0,r14),r2
	mov.b @(0x1,r14),r0
	tst r2,r2
	extu.b r0,r0
	mov.b @(r0,r1),r3
	mov.w @(loc_8c04f208,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c04f228,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x1,r14),r0
	mov.l @(loc_8c04f22c,PC),r4
	extu.b r0,r0
	mov.w @(loc_8c04f20c,PC),r1
	shll2 r0
	mov.b @(r0,r4),r3
	add r14,r1
	mov.w @(loc_8c04f20a,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	shll2 r0
	add r4,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@r1
	mov.b @(0x1,r14),r0
	mov.w @(loc_8c04f20e,PC),r1
	extu.b r0,r0
	shll2 r0
	add r4,r0
	mov.b @(0x2,r0),r0
	add r14,r1
	mov.b r0,@r1
	mov.b @(0x1,r14),r0
	mov.w @(loc_8c04f210,PC),r1
	extu.b r0,r0
	shll2 r0
	add r0,r4
	mov.b @(0x3,r4),r0
	add r14,r1
	mov.b r0,@r1
	mov.b @(0x1,r14),r0
	mov.l @(loc_8c04f230,PC),r1
	extu.b r0,r0
	mov 0x50,r2
	mov.b @(r0,r1),r3
	mov 0x00,r1
	mov.w @(loc_8c04f212,PC),r0
	shll r3
	mov.b r3,@(r0,r14)
	mov 0x20,r3
	mov.w @(loc_8c04f214,PC),r0
	mov.b r2,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/ge r3,r0
	mov.w @(loc_8c04f216,PC),r3
	movt r4
	extu.b r4,r2
	xor r12,r2
	add r14,r3
	shll2 r2
	add r3,r2
	mov.l r1,@r2
	extu.b r4,r3
	mov.w @(loc_8c04f216,PC),r2
	shll2 r3
	mov.b @(0x1,r14),r0
	add r14,r2
	add r2,r3
	extu.b r4,r2
	shll2 r2
	shll2 r2
	extu.b r0,r0
	shll r2
	mov r12,r1
	sub r2,r0
	fldi1 fr4
	shad r0,r1
	mov 0x50,r0
	mov.l r1,@r3
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mov 0x7F,r3
	mov.w @(loc_8c04f218,PC),r0
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov 0x18,r2
	mov.b @(0x1,r14),r0
	extu.b r0,r4
	cmp/ge r2,r4
	bf loc_8c04f254
	mov 0x1A,r0
	cmp/gt r0,r4
	bt loc_8c04f254
	mov.l @(loc_8c04f234,PC),r1
	mov 0x50,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	mov.l @(loc_8c04f238,PC),r1
	fsts fpul,fr3
	fdiv fr3,fr2
	lds r1,fpul
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr1
	fsts fpul,fr2
	fdiv fr2,fr1
	fmov fr1,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c04f240
	mova @(loc_8c04f23c,PC),r0
	bra loc_8c04f244
	fmov @r0,fr5

;##############################################
loc_8c04f202:
	#data 0x052d
loc_8c04f204:
	#data 0x01a4
loc_8c04f206:
	#data 0x0411
loc_8c04f208:
	#data 0x0207
loc_8c04f20a:
	#data 0x013c
loc_8c04f20c:
	#data 0x013d
loc_8c04f20e:
	#data 0x013e
loc_8c04f210:
	#data 0x013f
loc_8c04f212:
	#data 0x0325
loc_8c04f214:
	#data 0x01e1
loc_8c04f216:
	#data 0x0414
loc_8c04f218:
	#data 0x0202
	#align4
loc_8c04f21c:
	#data bank14.loc_8c14e9f8
loc_8c04f220:
	#data bank10.loc_8c104434
loc_8c04f224:
	#data bank14.loc_8c14f1e8
loc_8c04f228:
	#data bank05.loc_8c059e5c
loc_8c04f22c:
	#data bank14.loc_8c14f2de
loc_8c04f230:
	#data bank14.loc_8c14f618
loc_8c04f234:
	#data 0x3fd55555
loc_8c04f238:
	#data 0x40092492
loc_8c04f23c:
	#data 0x40800000

;----------------------------------------------
loc_8c04f240:
	fldi1 fr5
	fadd fr5,fr5

loc_8c04f244:
	mov 0x50,r0
	fmov @(r0,r14),fr1
	fmul fr5,fr1
	fmov fr1,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr0
	fmul fr5,fr0
	fmov fr0,@(r0,r14)

loc_8c04f254:
	mov.w @(loc_8c04f342,PC),r1
	mov r14,r2
	mov.w @(loc_8c04f340,PC),r0
	add 0x50,r2
	mov.l @(loc_8c04f364,PC),r3
	add r14,r1
	fmov fr4,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c04f344,PC),r0
	mov.w @(loc_8c04f346,PC),r4
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	add r14,r4
	mov.w @(loc_8c04f348,PC),r3
	fmov fr4,@(r0,r14)
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x74,r0
	fmov fr4,@(r0,r14)
	mov.l @(0x4,r4),r2
	and r3,r2
	or r13,r2
	tst r2,r2
	bt.s loc_8c04f296
	mov r14,r4
	mov.w @(loc_8c04f34a,PC),r0
	mov.b r12,@(r0,r14)
	mov.w @(loc_8c04f34c,PC),r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c04f34e,PC),r0
	bra loc_8c04f29a
	fmov fr3,@(r0,r14)

loc_8c04f296:
	mov.w @(loc_8c04f34a,PC),r0
	mov.b r13,@(r0,r14)

loc_8c04f29a:
	bsr loc_8c04f304
	nop
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c04f478
	mov.l @r15+,r14

;==============================================
loc_8c04f2ac:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c04f350,PC),r3
	mov.w @(loc_8c04f352,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.w r3,@(r0,r13)
	mov.l @(loc_8c04f368,PC),r3
	jsr @r3
	mov r13,r4
	mov.l @(loc_8c04f36c,PC),r2
	mov 0x2B,r5
	jsr @r2
	mov r13,r4
	bsr loc_8c04f314
	mov r13,r4
	mov.w @(loc_8c04f356,PC),r4
	mov 0x00,r5
	mov.l @(loc_8c04f370,PC),r2
	mov.w @(loc_8c04f354,PC),r6
	jsr @r2
	add r13,r4
	bsr loc_8c04fc20
	mov r14,r4
	mov.w @(loc_8c04f358,PC),r0
	mov 0xFF,r3
	mov r14,r4
	mov.w @(r0,r14),r2
	add 0x04,r0
	mov.w r2,@(r0,r14)
	mov 0x00,r2
	mov.w @(loc_8c04f35a,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x64,r3
	mov.w @(loc_8c04f35c,PC),r0
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c04f35e,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c04f374,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04f304:
	mov.w @(loc_8c04f360,PC),r3
	mov 0x00,r5
	mov.l @(loc_8c04f370,PC),r2
	mov.l r4,@-r15
	add r3,r4
	mov.w @(loc_8c04f344,PC),r6
	jmp @r2
	add 0x04,r15

;==============================================
loc_8c04f314:
	mov.w @(loc_8c04f362,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(r0,r14),r3
	mov 0x5C,r0
	mov.l @(r0,r3),r2
	tst r2,r2
	bf loc_8c04f332
	mov.w @(loc_8c04f360,PC),r4
	mov 0x00,r5
	mov.l @(loc_8c04f370,PC),r3
	mov.w @(loc_8c04f344,PC),r6
	add r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c04f332:
	mov.w @(loc_8c04f362,PC),r0
	mov r14,r4
	mov.l @(r0,r14),r3
	mov 0x5C,r0
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04f340:
	#data 0x0108
loc_8c04f342:
	#data 0x0284
loc_8c04f344:
	#data 0x0080
loc_8c04f346:
	#data 0x0414
loc_8c04f348:
	#data 0x1400
loc_8c04f34a:
	#data 0x0203
loc_8c04f34c:
	#data 0x041c
loc_8c04f34e:
	#data 0x0208
loc_8c04f350:
	#data 0x012c
loc_8c04f352:
	#data 0x0426
loc_8c04f354:
	#data 0x00c8
loc_8c04f356:
	#data 0x0340
loc_8c04f358:
	#data 0x0420
loc_8c04f35a:
	#data 0x019e
loc_8c04f35c:
	#data 0x02a0
loc_8c04f35e:
	#data 0x03f3
loc_8c04f360:
	#data 0x02a4
loc_8c04f362:
	#data 0x0428
	#align4
loc_8c04f364:
	#data bank12.loc_8c1294c8
loc_8c04f368:
	#data bank05.loc_8c05a2cc
loc_8c04f36c:
	#data loc_8c042008
loc_8c04f370:
	#data bank12.loc_8c129728
loc_8c04f374:
	#data bank05.loc_8c05be90

;==============================================
loc_8c04f378:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c04f448,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.b r13,@r14
	mov.b r13,@(r0,r14)
	mov 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c04f44a,PC),r0
	mov.l @(loc_8c04f464,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c04f44c,PC),r0
	mov r13,r5
	mov.w @(loc_8c04f452,PC),r4
	mov 0x68,r6
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	add 0x22,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c04f44e,PC),r0
	mov.l @(loc_8c04f468,PC),r3
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c04f450,PC),r0
	mov.b r13,@(r0,r14)
	jsr @r3
	add r14,r4
	mov.w @(loc_8c04f454,PC),r0
	mov.l @(loc_8c04f46c,PC),r4
	mov.w r13,@(r0,r14)
	add 0x02,r0
	mov.w r13,@(r0,r14)
	add 0xFC,r0
	mov.w r13,@(r0,r14)
	add 0xF8,r0
	mov.w r13,@(r0,r14)
	add 0x06,r0
	mov.w r13,@(r0,r14)
	add 0xF8,r0
	mov.w r13,@(r0,r14)
	mov.w @(loc_8c04f456,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c04f458,PC),r0
	fmov @(r0,r4),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c04f45a,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c04f40a
	mova @(loc_8c04f474,PC),r0
	fmov @r0,fr2
	mov.w @(loc_8c04f45c,PC),r0
	fmov @(r0,r4),fr1
	mov 0x34,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r14)


loc_8c04f40a:
	mov.w @(loc_8c04f45e,PC),r0
	extu.b r13,r3
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c04f460,PC),r0
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c04f462,PC),r0
	mov.w r3,@(r0,r14)
	add 0x04,r0
	mov.b r13,@(r0,r14)
	add 0xF8,r0
	extu.b r13,r3
	mov.w r3,@(r0,r14)
	add 0x09,r0
	mov.b r13,@(r0,r14)
	add 0xF9,r0
	extu.b r13,r3
	mov.w r3,@(r0,r14)
	add 0x11,r0
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	add 0xF8,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04f448:
	#data 0x012c
loc_8c04f44a:
	#data 0x0235
loc_8c04f44c:
	#data 0x01d1
loc_8c04f44e:
	#data 0x014a
loc_8c04f450:
	#data 0x01f9
loc_8c04f452:
	#data 0x0364
loc_8c04f454:
	#data 0x034c
loc_8c04f456:
	#data 0x041c
loc_8c04f458:
	#data 0x009c
loc_8c04f45a:
	#data 0x0130
loc_8c04f45c:
	#data 0x0098
loc_8c04f45e:
	#data 0x0327
loc_8c04f460:
	#data 0x0200
loc_8c04f462:
	#data 0x03ea
	#align4

loc_8c04f464:
	#data bank05.loc_8c05a2cc
loc_8c04f468:
	#data bank12.loc_8c129728
loc_8c04f46c:
	#data 0x8c26a518
loc_8c04f470:
	#data 0x42d55555
loc_8c04f474:
	#data 0xc2d55555

;==============================================
loc_8c04f478:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c04f4d2
	cmp/eq 0x03,r0
	bt loc_8c04f4dc
	cmp/eq 0x04,r0
	bt loc_8c04f4e6
	cmp/eq 0x06,r0
	bt loc_8c04f506
	cmp/eq 0x0A,r0
	bt loc_8c04f512
	cmp/eq 0x0B,r0
	bt loc_8c04f51c
	cmp/eq 0x0C,r0
	bt loc_8c04f526
	cmp/eq 0x10,r0
	bt loc_8c04f530
	cmp/eq 0x14,r0
	bt loc_8c04f53c
	cmp/eq 0x15,r0
	bt loc_8c04f548
	cmp/eq 0x18,r0
	bt loc_8c04f552
	cmp/eq 0x19,r0
	bt loc_8c04f55c
	cmp/eq 0x1C,r0
	bt loc_8c04f566
	cmp/eq 0x1E,r0
	bt loc_8c04f570
	cmp/eq 0x1F,r0
	bt loc_8c04f57a
	cmp/eq 0x27,r0
	bt loc_8c04f594
	cmp/eq 0x2A,r0
	bt loc_8c04f59e
	cmp/eq 0x2C,r0
	bt loc_8c04f5ae
	cmp/eq 0x38,r0
	bt loc_8c04f5ba
	bra loc_8c04f5c4
	nop

loc_8c04f4d2:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5cc,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f4dc:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5d0,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f4e6:
	mov.l @(loc_8c04f5d4,PC),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04f5d4,PC),r2
	mov 0x03,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04f5d8,PC),r3
	mov 0x00,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f506:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5dc,PC),r3
	mov 0x00,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f512:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5e0,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f51c:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5e4,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f526:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5e8,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f530:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5ec,PC),r3
	mov 0x00,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f53c:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5f0,PC),r3
	mov 0x00,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f548:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5f4,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f552:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5f8,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f55c:
	lds.l @r15+,pr
	mov.l @(loc_8c04f5fc,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f566:
	lds.l @r15+,pr
	mov.l @(loc_8c04f600,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f570:
	lds.l @r15+,pr
	mov.l @(loc_8c04f604,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f57a:
	mov.l @(loc_8c04f608,PC),r3
	mov 0x00,r6
	mov r6,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c04f60c,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04f610,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f594:
	lds.l @r15+,pr
	mov.l @(loc_8c04f614,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c04f59e:
	mov.l @(loc_8c04f618,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c04f61c,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04f5ae:
	lds.l @r15+,pr
	mov.l @(loc_8c04f620,PC),r2
	mov 0x00,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04f5ba:
	lds.l @r15+,pr
	mov.l @(loc_8c04f624,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c04f5c4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c04f5cc:
	#data bank0b.loc_8c0bad0c
loc_8c04f5d0:
	#data bank0b.loc_8c0bc148
loc_8c04f5d4:
	#data bank0b.loc_8c0be7f4
loc_8c04f5d8:
	#data bank06.loc_8c0647a4
loc_8c04f5dc:
	#data bank0b.loc_8c0bf9c0
loc_8c04f5e0:
	#data bank0c.loc_8c0c1bdc
loc_8c04f5e4:
	#data bank06.loc_8c06d28c
loc_8c04f5e8:
	#data bank0c.loc_8c0c3738
loc_8c04f5ec:
	#data bank0c.loc_8c0c96fc
loc_8c04f5f0:
	#data bank0c.loc_8c0cfdd0
loc_8c04f5f4:
	#data bank0d.loc_8c0d26e8
loc_8c04f5f8:
	#data bank0d.loc_8c0d70cc
loc_8c04f5fc:
	#data bank0d.loc_8c0d7ec8
loc_8c04f600:
	#data bank0d.loc_8c0d8fe8
loc_8c04f604:
	#data bank0d.loc_8c0dd7b0
loc_8c04f608:
	#data bank0d.loc_8c0de074
loc_8c04f60c:
	#data bank0d.loc_8c0dea9c
loc_8c04f610:
	#data bank0d.loc_8c0df230
loc_8c04f614:
	#data bank0e.loc_8c0e2168
loc_8c04f618:
	#data bank0e.loc_8c0e3258
loc_8c04f61c:
	#data bank0e.loc_8c0e344c
loc_8c04f620:
	#data bank0e.loc_8c0e497c
loc_8c04f624:
	#data bank0e.loc_8c0ecb1c

;==============================================
loc_8c04f628:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(loc_8c04f6e0,PC),r4
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @(0x6,r4),r0
	tst r0,r0
	bf loc_8c04f6c0
	mov.l @(loc_8c04f6e4,PC),r14
	mov 0x00,r3
	mov.w @(loc_8c04f6d0,PC),r13
	mov 0x4C,r0
	mov r14,r12
	mov r14,r9
	add r13,r12
	mov.b r3,@(r0,r4)
	mov r12,r5
	bsr loc_8c04f6e8
	mov r14,r4
	mov.w @(loc_8c04f6d2,PC),r10
	mov r12,r5
	add r14,r10
	bsr loc_8c04f6e8
	mov r10,r4
	mov.w @(loc_8c04f6d4,PC),r11
	mov r12,r5
	add r14,r11
	bsr loc_8c04f6e8
	mov r11,r4
	mov.w @(loc_8c04f6d6,PC),r12
	add r14,r12
	mov r12,r5
	bsr loc_8c04f6e8
	mov r9,r4
	mov r12,r5
	bsr loc_8c04f6e8
	mov r10,r4
	mov r12,r5
	bsr loc_8c04f6e8
	mov r11,r4
	mov.w @(loc_8c04f6d8,PC),r12
	add r14,r12
	mov r12,r5
	bsr loc_8c04f6e8
	mov r9,r4
	mov r12,r5
	bsr loc_8c04f6e8
	mov r10,r4
	mov r12,r5
	bsr loc_8c04f6e8
	mov r11,r4
	mov 0x00,r5
	add r14,r5
	mov 0x00,r6
	mov 0x06,r7

loc_8c04f69c:
	mov.w @(loc_8c04f6da,PC),r0
	mov r5,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c04f6b6
	mov.w @(loc_8c04f6dc,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c04f6b6
	mov.w @(loc_8c04f6da,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)

loc_8c04f6b6:
	add 0x01,r6
	extu.b r6,r2
	cmp/ge r7,r2
	bf.s loc_8c04f69c
	add r13,r5

loc_8c04f6c0:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04f6d0:
	#data 0x05a4
loc_8c04f6d2:
	#data 0x0b48
loc_8c04f6d4:
	#data 0x1690
loc_8c04f6d6:
	#data 0x10ec
loc_8c04f6d8:
	#data 0x1c34
loc_8c04f6da:
	#data 0x01f5
loc_8c04f6dc:
	#data 0x01a0
	#align4
loc_8c04f6e0:
	#data 0x8c2895f0
loc_8c04f6e4:
	#data 0x8c268340

;==============================================
loc_8c04f6e8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov r5,r14
	mov r4,r13
	mov.b @r14,r2
	mov.b @r13,r3
	extu.b r2,r2
	extu.b r3,r3
	tst r2,r3
	bf loc_8c04f70a
	bra loc_8c04f956
	nop

loc_8c04f70a:
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c04f716
	bra loc_8c04f956
	nop

loc_8c04f716:
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c04f722
	bra loc_8c04f956
	nop

loc_8c04f722:
	mov.w @(loc_8c04f85a,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c04f734
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04f734
	bra loc_8c04f956
	nop

loc_8c04f734:
	mov.w @(loc_8c04f85c,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c04f740
	bra loc_8c04f956
	nop

loc_8c04f740:
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c04f74a
	bra loc_8c04f956
	nop

;----------------------------------------------
;pushbox?
loc_8c04f74a:
	mov.w @(loc_8c04f860,PC),r0 ;8c04f860;0x1f9
	mov.w @(loc_8c04f85e,PC),r4 ;8c04f85e;0x7e0
	mov.b @(r0,r13),r5
	mov.w @(loc_8c04f862,PC),r0 ;8c04f862
	extu.b r5,r5
	mov.l @(r0,r13),r3
	shll2 r5
	mov.w @(loc_8c04f860,PC),r0 ;8c04f860
	shll r5
	add r3,r5
	mov.b @(r0,r14),r6
	add r4,r5
	mov.w @(loc_8c04f862,PC),r0 ;8c4f862
	extu.b r6,r6
	mov.l @(r0,r14),r3
	shll2 r6
	shll r6
	add r3,r6
	mov.w @r5,r3
	mova @(loc_8c04f868,PC),r0 ;8c04f868 ; Xscale multiple
	lds r3,fpul
	add r4,r6
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r13),fr2
	mov r15,r4
	float fpul,fr3
	add 0x0C,r4
	mov r4,r12
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r12
	mov.w @(loc_8c04f864,PC),r0 ;8c04f864
	mov.b @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c04f79a
	mov 0x34,r0
	fmov @r12,fr3
	fneg fr3
	fmov fr3,@r12

loc_8c04f79a:
	fmov @r12,fr2
	mov r4,r10
	fmov @(r0,r13),fr3
	mov 0x50,r0
	add 0x04,r10
	fadd fr3,fr2
	fmov fr2,@r12
	mov.w @r6,r3
	fmov @(r0,r14),fr2
	lds r3,fpul
	mov.w @(loc_8c04f864,PC),r0 ;8c04f864
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r10
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c04f7c6
	mov 0x34,r0
	fmov @r10,fr3
	fneg fr3
	fmov fr3,@r10

loc_8c04f7c6:
	fmov @r10,fr2
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fadd fr3,fr2
	fmov fr2,fr3
	fmov fr2,@r10
	fmov @r12,fr2
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c04f7e8
	fmov fr2,@(r0,r4)
	mov r4,r7
	add 0x08,r7
	fmov @r7,fr2
	fneg fr2
	fmov fr2,@r7

loc_8c04f7e8:
	fmov fr4,fr0
	mov r4,r3
	add 0x0C,r3
	mov.l r3,@r15
	mov.w @(0x2,r5),r0
	mov r0,r2
	lds r2,fpul
	mov.w @(0x2,r6),r0
	mov r0,r2
	float fpul,fr3
	lds r2,fpul
	mov 0x08,r0
	float fpul,fr2
	fmul fr4,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @r15,r3
	fmov @(r0,r4),fr3
	fmov @r3,fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c04f81a
	bra loc_8c04f956
	nop

;Push box Y scale
loc_8c04f81a:
	mova @(0x50,PC),r0 ;8c04f86c
	mov r4,r11
	fmov @r0,fr5
	add 0x08,r11
	mov.w @(0x4,r5),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r13),fr0
	mov 0x38,r0
	float fpul,fr3
	fmov @(r0,r13),fr2
	fmul fr0,fr3
	fmov fr5,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r11
	mov.w @(0x4,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x54,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov @(r0,r14),fr3
	fmul fr3,fr2
	fmov @r11,fr3
	fsub fr2,fr3
	fldi0 fr2
	fcmp/gt fr3,fr2
	bra loc_8c04f870
	fmov fr3,@r11

;##############################################
loc_8c04f85a:
	#data 0x01a0
loc_8c04f85c:
	#data 0x01f5
loc_8c04f85e:
	#data 0x07e0
loc_8c04f860:
	#data 0x01f9
loc_8c04f862:
	#data 0x0170
loc_8c04f864:
	#data 0x01d2
	#align4
loc_8c04f868:
	#data 0x3fd55555
loc_8c04f86c:
	#data 0x40092492

;----------------------------------------------
loc_8c04f870:
	bf.s loc_8c04f87a
	nop
	fmov @r11,fr3
	fneg fr3
	fmov fr3,@r11

loc_8c04f87a:
	mov.w @(0x6,r5),r0
	mov.l @r15,r3
	mov r0,r2
	mov 0x54,r0
	fmov @(r0,r13),fr0
	lds r2,fpul
	mov.w @(0x6,r6),r0
	mov r0,r2
	float fpul,fr3
	lds r2,fpul
	mov 0x54,r0
	float fpul,fr2
	fmul fr0,fr3
	fmov @(r0,r14),fr0
	fmul fr0,fr2
	fmov fr5,fr0
	fmul fr5,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @r15,r3
	fmov @r11,fr3
	fmov @r3,fr2
	fcmp/gt fr2,fr3
	bt loc_8c04f956
	mov.w @(loc_8c04f966,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c04f8be
	mov.w @(loc_8c04f966,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04f94e

loc_8c04f8be:
	mov.w @(loc_8c04f968,PC),r0
	mov 0x01,r4
	mov r4,r1
	mov.b @(r0,r13),r2
	add 0xD5,r0
	mov.b @(r0,r13),r3
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bt loc_8c04f8da
	mov.w @(loc_8c04f96a,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c04f91a

loc_8c04f8da:
	mov.w @(loc_8c04f968,PC),r0
	mov.b @(r0,r14),r1
	add 0xD5,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shad r3,r4
	tst r4,r1
	bf loc_8c04f93c
	mov.w @(loc_8c04f966,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04f93c
	mov.w @(loc_8c04f966,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04f91a
	mov.w @(loc_8c04f96c,PC),r2
	mov.l @(loc_8c04f970,PC),r4
	add r13,r2
	mov.l r2,@(0x8,r15)
	mov.l @r2,r3
	tst r4,r3
	bt loc_8c04f922
	mov.w @(loc_8c04f96c,PC),r0
	mov 0x00,r3
	mov.l @(r0,r14),r1
	and r4,r1
	or r3,r1
	tst r1,r1
	bf loc_8c04f922

loc_8c04f91a:
	mov r14,r5
	mov r12,r6
	bra loc_8c04f946
	mov r13,r4

loc_8c04f922:
	mov.w @(loc_8c04f96c,PC),r3
	add r13,r3
	mov.l r3,@(0x4,r15)
	mov.l @r3,r2
	tst r4,r2
	bf loc_8c04f94e
	mov.w @(loc_8c04f96c,PC),r0
	mov 0x00,r3
	mov.l @(r0,r14),r1
	and r4,r1
	or r3,r1
	tst r1,r1
	bt loc_8c04f94e

loc_8c04f93c:
	fmov @r12,fr3
	mov r13,r5
	mov r14,r4
	mov r10,r6
	fmov fr3,@r11

loc_8c04f946:
	bsr loc_8c04f9be
	nop
	bra loc_8c04f956
	nop

loc_8c04f94e:
	mov r14,r5
	mov r12,r6
	bsr loc_8c04f974
	mov r13,r4

loc_8c04f956:
	add 0x1C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04f966:
	#data 0x01f9
loc_8c04f968:
	#data 0x01fd
loc_8c04f96a:
	#data 0x0324
loc_8c04f96c:
	#data 0x0414
	#align4
	
loc_8c04f970:
	#data 0x07000000

;==============================================
loc_8c04f974:
	mova @(loc_8c04fa60,PC),r0
	fmov @r0,fr5
	fcmp/gt fr5,fr4
	bf.s loc_8c04f980
	fldi1 fr3
	fmov fr5,fr4

loc_8c04f980:
	mov 0x04,r0
	fmov @r6,fr1
	fmov @(r0,r6),fr2
	fadd fr3,fr3
	fcmp/gt fr1,fr2
	bf.s loc_8c04f990
	fdiv fr3,fr4
	fneg fr4

loc_8c04f990:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r6
	mov r6,r2
	mov r6,r1
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	fmov @(r0,r5),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r5)
	mov.w @(loc_8c04fa5c,PC),r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shad r3,r2
	mov.b @(r0,r5),r3
	extu.b r3,r3
	shad r3,r1
	mov.l @(loc_8c04fa64,PC),r3
	or r1,r2
	mov.b @r3,r1
	or r2,r1
	rts
	mov.b r1,@r3

;==============================================
loc_8c04f9be:
	mova @(0xA8,PC),r0
	fmov @r0,fr5
	fcmp/gt fr5,fr4
	bf.s loc_8c04f9ca
	mov 0x01,r7
	fmov fr5,fr4

loc_8c04f9ca:
	mov.w @(loc_8c04fa5e,PC),r0
	mov r7,r1
	mov.b @(r0,r4),r2
	add 0xD5,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bt loc_8c04f9e8
	mov.w @(loc_8c04fa5e,PC),r0
	mov.b @(r0,r4),r0
	tst 0x02,r0
	bf loc_8c04f9f2
	bra loc_8c04f9f4
	nop

loc_8c04f9e8:
	mov 0x04,r0
	fmov @r6,fr2
	fmov @(r0,r6),fr3
	fcmp/gt fr2,fr3
	bf loc_8c04f9f4

loc_8c04f9f2:
	fneg fr4

loc_8c04f9f4:
	mov 0x34,r0
	mov r7,r2
	fmov @(r0,r5),fr3
	mov r7,r1
	fsub fr4,fr3
	fmov fr3,@(r0,r5)
	mov.w @(loc_8c04fa5c,PC),r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shad r3,r2
	mov.b @(r0,r5),r3
	extu.b r3,r3
	shad r3,r1
	mov.l @(loc_8c04fa64,PC),r3
	or r1,r2
	mov.b @r3,r1
	or r2,r1
	rts
	mov.b r1,@r3

;==============================================
loc_8c04fa1a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xCC,r15
	mov 0x00,r14
	mov r15,r13
	mov r4,r7
	mov r15,r12
	add 0x14,r13
	mov r14,r6
	bra loc_8c04fa54
	add 0x1C,r12

loc_8c04fa3a:
	mov r6,r0
	nop
	shll2 r0
	mov.l r7,@(r0,r12)
	mov 0x24,r3
	mov.w @(loc_8c04fa5c,PC),r0
	add r7,r3
	mov.b @r3,r3
	add 0x01,r6
	mov.b @(r0,r7),r0
	extu.b r0,r0
	mov.b r3,@(r0,r13)
	mov.l @(0xC,r7),r7

loc_8c04fa54:
	tst r7,r7
	bf loc_8c04fa3a
	bra loc_8c04fa86
	mov r5,r4

;##############################################
loc_8c04fa5c:
	#data 0x01a4
loc_8c04fa5e:
	#data 0x01fd
	#align4
loc_8c04fa60:
	#data 0x42555555
loc_8c04fa64:
	#data 0x8c28963c
loc_8c04fa68:
	#data 0x41d55555

;----------------------------------------------
loc_8c04fa6c:
	mov r6,r0
	nop
	shll2 r0
	mov.l r4,@(r0,r12)
	mov 0x24,r3
	mov.w @(loc_8c04fb3a,PC),r0
	add r4,r3
	mov.b @r3,r3
	add 0x01,r6
	mov.b @(r0,r4),r0
	extu.b r0,r0
	mov.b r3,@(r0,r13)
	mov.l @(0xC,r4),r4

loc_8c04fa86:
	tst r4,r4
	bf loc_8c04fa6c
	tst r6,r6
	bf loc_8c04fa92
	bra loc_8c04fc0a
	nop

loc_8c04fa92:
	mov r12,r2
	cmp/pl r6
	mov.l r2,@(0x4,r15)
	mov r14,r11
	bf.s loc_8c04fb30
	mov.l r2,@r15
	mov 0xF0,r10
	mov 0xF8,r9
	mov 0x08,r8

loc_8c04faa4:
	mov.l @r15,r4
	mov.w @(loc_8c04fb3c,PC),r0
	add 0x04,r4
	mov.l r4,@r15
	add 0xFC,r4
	mov.l @r4,r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bt.s loc_8c04fad6
	mov r14,r7
	cmp/eq 0x15,r0
	bt loc_8c04fada
	cmp/eq 0x1D,r0
	bt loc_8c04fada
	cmp/eq 0x20,r0
	bt loc_8c04fade
	cmp/eq 0x12,r0
	bt loc_8c04fade
	cmp/eq 0x17,r0
	bt loc_8c04fade
	cmp/eq 0x13,r0
	bt loc_8c04fade
	bra loc_8c04fae2
	nop

loc_8c04fad6:
	bra loc_8c04fb0a
	mov 0x10,r7

loc_8c04fada:
	bra loc_8c04fb0a
	mov 0x20,r7

loc_8c04fade:
	bra loc_8c04fb0a
	mov 0xE0,r7

loc_8c04fae2:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c04faf8
	mov.w @(loc_8c04fb3e,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c04faf8
	bra loc_8c04fb0a
	mov r8,r7

loc_8c04faf8:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c04fb04
	bra loc_8c04fb0a
	mov r9,r7

loc_8c04fb04:
	cmp/eq 0x02,r0
	bf loc_8c04fb0a
	mov r10,r7

loc_8c04fb0a:
	mov.w @(loc_8c04fb40,PC),r0
	add 0x01,r11
	cmp/ge r6,r11
	mov.b @(r0,r4),r3
	mov.b @(0x2,r4),r0
	add r3,r7
	sub r0,r7
	mov.w @(loc_8c04fb42,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c04fb44,PC),r0
	mov r3,r2
	shll2 r3
	add r2,r3
	add r3,r7
	mov.b @(r0,r4),r3
	mov 0x24,r0
	sub r3,r7
	bf.s loc_8c04faa4
	mov.b r7,@(r0,r4)

loc_8c04fb30:
	mov r6,r2
	add 0xFF,r2
	mov r14,r9
	bra loc_8c04fba2
	mov.l r2,@(0x10,r15)

;##############################################
loc_8c04fb3a:
	#data 0x01a4
loc_8c04fb3c:
	#data 0x01d0
loc_8c04fb3e:
	#data 0x01f9
loc_8c04fb40:
	#data 0x0148
loc_8c04fb42:
	#data 0x0411
loc_8c04fb44:
	#data 0x0325

;----------------------------------------------
loc_8c04fb46:
	mov r6,r10
	sub r9,r10
	add 0xFF,r10
	mov.l @(0x4,r15),r4
	cmp/pl r10
	mov r14,r11
	bf.s loc_8c04fba0
	mov r4,r7

loc_8c04fb56:
	mov.l @r7,r2
	mov 0x24,r0
	mov.l r2,@(0x8,r15)
	mov.b @(r0,r2),r3
	mov 0x24,r0
	extu.b r3,r3
	mov.l r3,@(0xC,r15)
	mov.l @(0x4,r7),r8
	mov.l r8,@r15
	mov.b @(r0,r8),r8
	extu.b r8,r8
	cmp/gt r8,r3
	bt loc_8c04fb86
	mov.l @(0xC,r15),r2
	cmp/eq r8,r2
	bf loc_8c04fb96
	mov.w @(loc_8c04fc1c,PC),r0
	mov.l @(0x8,r15),r1
	mov.l @r15,r2
	mov.b @(r0,r1),r3
	mov.w @(loc_8c04fc1c,PC),r0
	mov.b @(r0,r2),r1
	cmp/hs r1,r3
	bt loc_8c04fb96

loc_8c04fb86:
	mov r4,r2
	add 0x04,r2
	mov.l @r4,r8
	mov.l r2,@r15
	mov.l @r2,r3
	mov.l r3,@r4
	mov.l @r15,r2
	mov.l r8,@r2

loc_8c04fb96:
	add 0x01,r11
	cmp/ge r10,r11
	add 0x04,r4
	bf.s loc_8c04fb56
	add 0x04,r7

loc_8c04fba0:
	add 0x01,r9

loc_8c04fba2:
	mov.l @(0x10,r15),r2
	cmp/ge r2,r9
	bf loc_8c04fb46
	cmp/pl r6
	bf.s loc_8c04fbc6
	mov r14,r4
	mov 0x06,r7

loc_8c04fbb0:
	mov r4,r0
	nop
	mov r7,r2
	shll2 r0
	sub r4,r2
	mov.l @(r0,r12),r3
	add 0x01,r4
	mov 0x24,r0
	cmp/ge r6,r4
	mov.b r2,@(r0,r3)
	bf loc_8c04fbb0

loc_8c04fbc6:
	bra loc_8c04fc06
	mov r5,r4

loc_8c04fbca:
	mov.w @(loc_8c04fc1e,PC),r0
	mov.l @(r0,r4),r5
	add 0xDC,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	mov.b @(r0,r13),r3
	mov.w @(loc_8c04fc1c,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	mov.b @(r0,r13),r2
	cmp/ge r2,r3
	bt loc_8c04fbf0
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b @(r0,r4),r2
	cmp/gt r3,r2
	bt loc_8c04fbfa
	bra loc_8c04fc04
	nop

loc_8c04fbf0:
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b @(r0,r4),r2
	cmp/ge r3,r2
	bt loc_8c04fc04

loc_8c04fbfa:
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov.b @(r0,r5),r6
	mov.b r3,@(r0,r5)
	mov.b r6,@(r0,r4)

loc_8c04fc04:
	mov.l @(0xC,r4),r4

loc_8c04fc06:
	tst r4,r4
	bf loc_8c04fbca

loc_8c04fc0a:
	add 0x34,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c04fc1c:
	#data 0x01a4
loc_8c04fc1e:
	#data 0x01c8

;==============================================
loc_8c04fc20:
	mov.w @(loc_8c04fcae,PC),r0
	mov.w @(r0,r4),r3
	add 0x02,r0
	mov.w r3,@(r0,r4)
	add 0xFC,r0
	mov.w @(r0,r4),r2
	add 0x02,r0
	mov.w r2,@(r0,r4)
	add 0xFC,r0
	mov.w @(r0,r4),r3
	add 0x0C,r0
	mov.w r3,@(r0,r4)
	add 0xF6,r0
	mov.w r3,@(r0,r4)
	mov.w @(loc_8c04fcb0,PC),r0
	mov.l @(loc_8c04fcc0,PC),r3;??
	mov.w @(r0,r4),r2
	mov.w @(loc_8c04fcb2,PC),r0
	and r3,r2
	mov.w r2,@(r0,r4)
	add 0xF6,r0
	mov.w r2,@(r0,r4)
	add 0x02,r0
	mov.w @(r0,r4),r1
	add 0xFE,r0
	mov.w @(r0,r4),r2
	add 0x0E,r0
	not r1,r1
	and r2,r1
	mov.w r1,@(r0,r4)
	add 0xFA,r0
	mov.w r1,@(r0,r4)
	mov.w @(loc_8c04fcb4,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c04fc9a
	mov.w @(loc_8c04fcb2,PC),r0
	mov.w @(loc_8c04fcb6,PC),r5
	mov.w @(r0,r4),r2
	extu.w r2,r2
	tst r5,r2
	bt loc_8c04fc7a
	mov.w @(r0,r4),r2
	xor r5,r2
	mov.w r2,@(r0,r4)

loc_8c04fc7a:
	mov.w @(loc_8c04fcb8,PC),r0
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r5,r3
	bt loc_8c04fc8a
	mov.w @(r0,r4),r1
	xor r5,r1
	mov.w r1,@(r0,r4)

loc_8c04fc8a:
	mov.w @(loc_8c04fcba,PC),r0
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r5,r3
	bt loc_8c04fc9a
	mov.w @(r0,r4),r1
	xor r1,r5
	mov.w r5,@(r0,r4)

loc_8c04fc9a:
	rts
	nop

;==============================================
;Jump Programming
;==============================================
loc_8c04fc9e:
	mov.w @(loc_8c04fcbc,PC),r0 ; 0x1fc
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c04fcc8
	mov.b @(0x1,r4),r0 ; Grab Player ID

	mov.l @(loc_8c04fcc4,PC),r5; Set Jump Table 8c14fa7c
	bra loc_8c04fcca
	nop

;##############################################
loc_8c04fcae:
	#data 0x0344
loc_8c04fcb0:
	#data 0x04dc
loc_8c04fcb2:
	#data 0x034a
loc_8c04fcb4:
	#data 0x01d2
loc_8c04fcb6:
	#data 0x0c00
loc_8c04fcb8:
	#data 0x034e
loc_8c04fcba:
	#data 0x034c
loc_8c04fcbc:
	#data 0x01fc
	#align4
loc_8c04fcc0:
	#data 0x0000bff0
loc_8c04fcc4:
	#data bank14.loc_8c14fa7c

;----------------------------------------------
loc_8c04fcc8:
	mov.l @(loc_8c04fdf0,PC),r5 ; Set Super Jump Table 8c150764

loc_8c04fcca:
	mov.w @(loc_8c04fddc,PC),r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r4,r2
	mov.b @r2,r2
	add r3,r0
	shll2 r0
	add 0x01,r2
	shll2 r2
	add r2,r0
	shll r0
	add r0,r5

;Load Jump Data Start
	mov.w @r5,r3 ; load JumpYV

	mova @(0x10C,PC),r0
	fmov @r0,fr4 ; Load CpsYsclaer (2.142857)


	mova @(0x10C,PC),r0
	lds r3,fpul; load JumpYV
	fmov @r0,fr5; load  FP 256.000 for division
	mov 0x60,r0 
	float fpul,fr3; set JumpYV as float
	fmul fr4,fr3 
	fdiv fr5,fr3
	fmov fr3,@(r0,r4)

;Jump Gravity
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mov 0x6c,r0
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r4)

;JumpXV
	mova @(0xF0,PC),r0 ; load CPSscaleXPNT
	fmov fr5,fr2 ; move 256 to fr2
	fmov @r0,fr6 ; Load CPSscaleX 1.6666666
	mov.w @(0x4,r5),r0 ; load JumpXvel
	mov r0,r3
	lds r3,fpul
	mov.w @(0x6,r5),r0 ; load JumpUNK
	float fpul,fr3 ; Xvel is at FR3
	mov r0,r3 
	lds r3,fpul ; load JumpUNK to fpul

	mov.w @(loc_8c04fdde,PC),r0; 0x1d2 Xflip
	mov.b @(r0,r4),r3
	fmul fr6,fr3 ; CPSscaleX*XVelocity
	tst r3,r3
	fmov fr3,fr4 ;Xvel to fr3
	fdiv fr5,fr4 ; Xvel/256

;(JumpUNK*CpsXscale)/256
	float fpul,fr3 ; Load JumpUNK to fr3
	fmul fr6,fr3 
	fmov fr3,fr5 
	bt.s loc_8c04fd38 ; branch if no need to flip
	fdiv fr2,fr5 

	fneg fr5
	fneg fr4

;Speed up Check
loc_8c04fd38:
	mov.w @(loc_8c04fde0,PC),r0;200
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c04fd6c


	mov.w @(loc_8c04fde2,PC),r0;1fc
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c04fd6c


	mov.l @(loc_8c04fe00,PC),r1; load 1.25
	mov 0x60,r0
	fmov @(r0,r4),fr2 ;load PlyYmov

	lds r1,fpul
	mov.l @(loc_8c04fe04,PC),r1 ;load 1.5
	fsts fpul,fr3 ; 1.25 tor fr3
	fmul fr3,fr2 ; (1.25*y)
	lds r1,fpul ;1.5 into float R
	fmov fr2,@(r0,r4) ; write the ymove
	mov 0x6c,r0
	fmov @(r0,r4),fr1 ;load Gravity
	fsts fpul,fr2
	fmul fr2,fr1 ; (1.5*gravity)
	fmov fr1,@(r0,r4) ; rewrite with new value

	mova @(loc_8c04fe08,PC),r0 ;load 1.1
	fmov @r0,fr6

	fmul fr6,fr5 ;1.1*Jumpxvel 
	fmul fr6,fr4 ;1.1*JumpUNK
;End of Speed up Math

loc_8c04fd6c:
	mov.w @(loc_8c04fde4,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bf loc_8c04fd88

	mov.w @(loc_8c04fddc,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c04fd88

	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	bra loc_8c04fd8c
	fmov fr3,@(r0,r4)

loc_8c04fd88:
	mov 0x5C,r0
	fmov fr4,@(r0,r4) ; Write JumpXVel

loc_8c04fd8c:
	mov 0x68,r0
	rts
	fmov fr5,@(r0,r4) ; write JumpUNK 68

;==============================================
;Walk forward
loc_8c04fd92:
	mov.w @(loc_8c04fde8,PC),r0
	mov.w @(loc_8c04fde6,PC),r6
	mov.b @(r0,r4),r3
	mov.l @(loc_8c04fe0c,PC),r5
	extu.b r3,r3
	tst r6,r3
	bt.s loc_8c04fda4
	mov.b @(0x1,r4),r0
	mov.l @(loc_8c04fe10,PC),r5

loc_8c04fda4:
	mov.w @(loc_8c04fdea,PC),r3
	mov 0xF6,r1
	mov.w @(loc_8c04fdec,PC),r2
	extu.b r0,r0
	add r4,r3
	mov.w @r3,r3
	shll r0
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	add r3,r0
	shll r0
	add r0,r5
	mova @(0x3C,PC),r0
	fmov @r0,fr5
	mova @(0x34,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c04fdde,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c04fe14
	mov 0x5C,r0

;Walk forward speed math
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	bra loc_8c04fe20
	fdiv fr4,fr3

;##############################################
loc_8c04fddc:
	#data 0x01d3
loc_8c04fdde:
	#data 0x01d2
loc_8c04fde0:
	#data 0x0200
loc_8c04fde2:
	#data 0x01fc
loc_8c04fde4:
	#data 0x01d1
loc_8c04fde6:
	#data 0x0080
loc_8c04fde8:
	#data 0x0202
loc_8c04fdea:
	#data 0x034a
loc_8c04fdec:
	#data 0x0400
	#align4
loc_8c04fdf0:
	#data bank15.loc_8c150764
loc_8c04fdf4:
	#data 0x40092492
loc_8c04fdf8:
	#data 0x43800000
loc_8c04fdfc:
	#data 0x3fd55555
loc_8c04fe00:
	#data 0x3fa00000
loc_8c04fe04:
	#data 0x3fc00000
loc_8c04fe08:
	#data 0x3f8ccccd
loc_8c04fe0c:
	#data bank14.loc_8c14f7b8
loc_8c04fe10:
	#data bank14.loc_8c14f990

;----------------------------------------------
;Walk P2 side Math
loc_8c04fe14:
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3

loc_8c04fe20:
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c04fefa,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c04fe38
	mov.l @(loc_8c04ff0c,PC),r1
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fmul fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c04fe38:
	mov.w @(loc_8c04fefc,PC),r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	tst r6,r3
	bf loc_8c04fe52
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x34,r0
	bt loc_8c04fe52
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bf loc_8c04fe78

loc_8c04fe52:
	mov.w @(loc_8c04fefe,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c04fe6a
	mov.l @(loc_8c04ff10,PC),r6
	mov 0x00,r3
	mov 0x01,r5
	mov.b r3,@(r0,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x5,r6)
	mov.b r0,@(0x6,r6)

loc_8c04fe6a:
	mov.w @(loc_8c04ff00,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c04fe78
	mov 0x5C,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)


loc_8c04fe78:
	rts
	nop

;==============================================
loc_8c04fe7c:
	mov.w @(loc_8c04ff02,PC),r0
	mov 0xF6,r1
	mov.w @(loc_8c04ff04,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	tst r3,r3
	bt loc_8c04fe94
	mova @(0x84,PC),r0
	bra loc_8c04fe98
	fmov @r0,fr4

loc_8c04fe94:
	mova @(loc_8c04ff18,PC),r0
	fmov @r0,fr4

loc_8c04fe98:
	mov.w @(loc_8c04ff06,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c04fea4
	mov 0x5C,r0
	fneg fr4

loc_8c04fea4:
	rts
	fmov fr4,@(r0,r4)

;==============================================
;Round start walk?
loc_8c04fea8:
	mov.w @(loc_8c04ff08,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c04ff84
	mov 0x01,r3
	mov 0x60,r1
	mov.b r3,@(r0,r4)
	add r4,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x6c,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(loc_8c04ff0a,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c04feec
	mov.w @(loc_8c04fefa,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c04fee6
	mov.l @(loc_8c04ff1c,PC),r5
	bra loc_8c04ff2a
	nop

loc_8c04fee6:
	mov.l @(loc_8c04ff20,PC),r5
	bra loc_8c04ff2a
	nop

loc_8c04feec:
	mov.w @(loc_8c04fefa,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c04ff28
	mov.l @(loc_8c04ff24,PC),r5
	bra loc_8c04ff2a
	nop

;############################################## 
loc_8c04fefa:
	#data 0x0200
loc_8c04fefc:
	#data 0x0202
loc_8c04fefe:
	#data 0x014b
loc_8c04ff00:
	#data 0x0141
loc_8c04ff02:
	#data 0x034a
loc_8c04ff04:
	#data 0x0400
loc_8c04ff06:
	#data 0x01d2
loc_8c04ff08:
	#data 0x029e
loc_8c04ff0a:
	#data 0x01fc
	#align4
loc_8c04ff0c:
	#data 0x3fa00000
loc_8c04ff10:
	#data 0x8c26a518
loc_8c04ff14:
	#data 0xc0200000
loc_8c04ff18:
	#data 0x403aaaaa
loc_8c04ff1c:
	#data bank15.loc_8c15058c
loc_8c04ff20:
	#data bank15.loc_8c150678
loc_8c04ff24:
	#data bank15.loc_8c150cec

;----------------------------------------------
loc_8c04ff28:
	mov.l @(loc_8c050034,PC),r5

loc_8c04ff2a:
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	shll r0
	shll r0
	add r0,r5
	mov.w @r5,r3
	mova @(0x100,PC),r0
	fmov @r0,fr6
	mova @(0x100,PC),r0
	lds r3,fpul
	fmov @r0,fr4
	mov.w @(0x2,r5),r0
	float fpul,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x5C,r0
	fmul fr6,fr3
	fmov fr3,fr5
	float fpul,fr3
	fdiv fr4,fr5
	fmul fr6,fr3
	fmov fr3,fr6
	fdiv fr4,fr6
	fmov @(r0,r4),fr4
	mov.w @(loc_8c050026,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c04ff6c
	fmov fr5,fr7
	fmov fr6,fr5
	fmov fr7,fr6
	fneg fr6
	fneg fr5

loc_8c04ff6c:
	fcmp/gt fr4,fr5
	bf loc_8c04ff72
	fmov fr5,fr4

loc_8c04ff72:
	fcmp/gt fr6,fr4
	bf.s loc_8c04ff7a
	mov 0x5C,r0
	fmov fr6,fr4

loc_8c04ff7a:
	fmov fr4,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)

loc_8c04ff84:
	rts
	nop

;==============================================
loc_8c04ff88:
	mov.w @(loc_8c050028,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c050006
	mov.w @(loc_8c05002a,PC),r0
	mov 0x07,r2
	mov.b @(r0,r4),r3
	cmp/ge r2,r3
	bt loc_8c04ffa2
	mov.b @(r0,r4),r1
	add 0x01,r1
	rts
	mov.b r1,@(r0,r4)

loc_8c04ffa2:
	mov.w @(loc_8c05002c,PC),r0
	mov.w @(loc_8c05002e,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c050006
	mov.b @(0x1,r4),r0
	mov.w @(loc_8c050030,PC),r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c050040,PC),r3
	add r4,r2
	shll2 r0
	mov.b @r2,r2
	add r0,r3
	mov.w @(loc_8c05002c,PC),r0
	shll2 r2
	mov.w @(r0,r4),r1
	add r3,r2
	mov.w @(loc_8c050032,PC),r3
	extu.w r1,r1
	and r3,r1
	mov 0xF6,r3
	shad r3,r1
	shll r1
	add r1,r2
	mov.w @(0x4,r2),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c050038,PC),r0
	fmov @r0,fr2
	mova @(loc_8c05003c,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fmov fr3,fr4
	mov.w @(loc_8c050026,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c04fffe
	fdiv fr1,fr4
	mov 0x5C,r0
	bra loc_8c050000
	fneg fr4

loc_8c04fffe:
	mov 0x5C,r0

loc_8c050000:
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)

loc_8c050006:
	rts
	nop

;==============================================
loc_8c05000a:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c050022
	mova @(loc_8c050044,PC),r0
	fmov @r0,fr4
	mov 0x60,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c050022
	fmov fr4,@(r0,r4)

loc_8c050022:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c050026:
	#data 0x01d2
loc_8c050028:
	#data 0x01fc
loc_8c05002a:
	#data 0x01d8
loc_8c05002c:
	#data 0x034a
loc_8c05002e:
	#data 0x0c00
loc_8c050030:
	#data 0x01d3
loc_8c050032:
	#data 0x0400

loc_8c050034:
	#data bank15.loc_8c150dd8
loc_8c050038:
	#data 0x3fd55555
loc_8c05003c:
	#data 0x43800000
loc_8c050040:
	#data bank15.loc_8c150f3a
loc_8c050044:
	#data 0xc1ab6db6


