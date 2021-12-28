loc_8C0D0048:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x108,PC),r0
	mov.l @(0x18,r14),r13
	mov.w @(0x102,PC),r3
	add r14,r3
	mov.l r3,@r15
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0d008e
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	mov r14,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xF0,PC),r0
	mov.b r3,@(r0,r14)
	bsr loc_8c0d050c
	mov r13,r4
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov 0x1B,r5
	mov.l @(0xEC,PC),r0
	extu.b r6,r6
	mov r6,r3
	shll2 r3
	shll r6
	add r3,r6
	mov.l @(0xE4,PC),r3
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4

loc_8C0D008E:
	mov.l @r15,r2
	mov.w @(0xCE,PC),r0
	mov.w @r2,r3
	mov.w @(r0,r13),r2
	cmp/eq r2,r3
	bt loc_8c0d00aa
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x4,r14)
	mov.w @(0xB6,PC),r0
	mov.b r4,@(r0,r14)

loc_8C0D00AA:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D00B4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xA0,PC),r4
	mov.l r13,@-r15
	mov.w @(0xA2,PC),r0
	add r14,r4
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @r4,r3
	mov.b @(r0,r13),r2
	cmp/eq r2,r3
	bf.s loc_8c0d00d8
	mov 0x00,r12
	mov.w @(0x8A,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0d00e8

loc_8C0D00D8:
	mov r12,r0
	nop
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x4,r14)
	mov.w @(0x7A,PC),r0
	bra loc_8c0d0128
	mov.b r12,@(r0,r14)

loc_8C0D00E8:
	mov r14,r5
	bsr loc_8c0d050c
	mov r13,r4
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x66,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0d0108
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov r14,r4

loc_8C0D0108:
	mov.w @(0x52,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d0128
	mov.b r12,@(r0,r14)
	mov 0x21,r0
	lds.l @r15+,pr
	mov r13,r4
	mov.b @(r0,r14),r5
	mov.l @(0x58,PC),r3
	mov 0x01,r6
	mov.l @r15+,r12
	add 0x06,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0D0128:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0132:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D015C,pc),r4 ; r4 set to 0xCc
	mov.l r13,@-r15
	mov.w @(loc_8C0D0162,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.w @r4,r3
	mov.w @(r0,r13),r2
	cmp/eq r2,r3
	bt loc_8C0D0178
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D0160,pc),r0 ; r0 set to 0x12c
	bra loc_8C0D0196
	mov.b r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D015C:
	#data 0x00Cc
loc_8C0D015e:
	#data 0x0141
loc_8C0D0160:
	#data 0x012c
loc_8C0D0162:
	#data 0x0158
loc_8C0D0164:
	#data 0x01A0
	#align4

loc_8C0D0168:
	#data bank13.loc_8c13B08c
loc_8C0D016C:
	#data bank03.loc_8c034C38
loc_8C0D0170:
	#data bank03.loc_8c034D8c
loc_8C0D0174:
	#data loc_8c0d0584

;==============================================
loc_8C0D0178:
	mov r14,r5
	bsr loc_8C0D050c
	mov r13,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8C0D0298,pc),r3 ; r3 set to 0x8C034D8c
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0D0196:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D019E:
	mov.w @(0xEE,PC),r5
	mov.w @(0xEE,PC),r0
	mov.l @(0x18,r4),r6
	add r4,r5
	mov.w @r5,r3
	mov.w @(r0,r6),r2
	cmp/eq r2,r3
	bt loc_8c0d01bc
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x4,r4)
	mov.w @(0xD8,PC),r0
	mov.b r5,@(r0,r4)

loc_8C0D01BC:
	rts
	nop

;----------------------------------------------
loc_8C0D01C0:
	mov r4,r3
	mov.l @(loc_8C0D029C,pc),r1 ; r1 set to 0x8C15C9B8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0D01D2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0xB6,PC),r0
	mov.l @(0x18,r14),r13
	mov.w @(0xAC,PC),r3
	add r14,r3
	mov.l r3,@r15
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0d0218
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	mov r14,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x9A,PC),r0
	mov.b r3,@(r0,r14)
	bsr loc_8c0d050c
	mov r13,r4
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov 0x1B,r5
	mov.l @(0x98,PC),r0
	extu.b r6,r6
	mov r6,r3
	shll2 r3
	shll r6
	add r3,r6
	mov.l @(0x90,PC),r3
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4

loc_8C0D0218:
	mov.l @r15,r2
	mov.w @(0x74,PC),r0
	mov.w @r2,r3
	mov.w @(r0,r13),r2
	cmp/eq r2,r3
	bt loc_8c0d0234
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x4,r14)
	mov.w @(0x60,PC),r0
	mov.b r4,@(r0,r14)

loc_8C0D0234:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D023E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D0290,pc),r4 ; r4 set to 0xCc
	mov.l r13,@-r15
	mov.w @(loc_8C0D0292,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.w @r4,r3
	mov.w @(r0,r13),r2
	cmp/eq r2,r3
	bt/s loc_8C0D0266
	mov 0x00,r12 ; r12 set to 0x00
	mov r12,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov.b r0,@(0x05,r14)
	bra loc_8C0D028a
	mov.b r0,@(0x04,r14)

loc_8C0D0266:
	mov r14,r5
	bsr loc_8C0D050c
	mov r13,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r12,@(r0,r14)
	mov.w @(loc_8C0D0296,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	cmp/eq 0x00,r0
	bt loc_8C0D0284
	cmp/eq 0x01,r0
	bt loc_8C0D02A8
	cmp/eq 0x02,r0
	bt loc_8C0D02Be
	bra loc_8C0D0284
	nop

loc_8C0D0284:
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)

loc_8C0D028A:
	mov.w @(loc_8C0D0294,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	bra loc_8C0D02Be
	mov.b r12,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D0290:
	#data 0x00Cc
loc_8C0D0292:
	#data 0x0158
loc_8C0D0294:
	#data 0x012c
loc_8C0D0296:
	#data 0x0141
	#align4

loc_8C0D0298:
	#data bank03.loc_8c034D8c
loc_8C0D029C:
	#data bank15.loc_8c15c9B8
loc_8C0D02A0:
	#data bank13.loc_8c13B08c
loc_8C0D02A4:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0D02A8:
	mov.w @(loc_8C0D03FE,pc),r0 ; r0 set to 0x1A0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8C0D02Be
	lds.l @r15+,pr
	mov.l @(loc_8C0D040C,pc),r3 ; r3 set to 0x8C034D8c
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0D02BE:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D02C8:
	mov.w @(0x134,PC),r5
	mov.w @(0x134,PC),r0
	mov.l @(0x18,r4),r6
	add r4,r5
	mov.w @r5,r3
	mov.w @(r0,r6),r2
	cmp/eq r2,r3
	bt loc_8c0d02e8
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x6,r4)
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x4,r4)
	mov.w @(0x11C,PC),r0
	mov.b r5,@(r0,r4)

loc_8C0D02E8:
	rts
	nop

;----------------------------------------------
loc_8C0D02EC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D0406,pc),r3 ; r3 set to 0x159
	mov.w @(loc_8C0D0400,pc),r4 ; r4 set to 0xCc
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(0x01,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D0316
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D0404,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8C0D0316:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D0410,pc),r1 ; r1 set to 0x8C15C9C4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D032A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0D0408,pc),r0 ; r0 set to 0x141
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8C0D03F4
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov r14,r5
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D0404,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D050c
	mov r13,r4
	mov.w @(loc_8C0D0408,pc),r0 ; r0 set to 0x141
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0D0414,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r13),r6
	add 0x23,r6
	jsr @r3
	mov r14,r4
	mov r14,r5 ; r5 ??? bc r14 is ???
	bsr loc_8C0D050c
	mov r13,r4
	mov.w @(loc_8C0D040A,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r13),r2
	tst r2,r2
	bt/s loc_8C0D0388
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.w @(loc_8C0D0408,pc),r3 ; r3 set to 0x141
	mov.l @(loc_8C0D0418,pc),r1 ; r1 set to 0x8C13B0Ac
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.b @r3,r3
	add 0xFF,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r1 ; r1 ??? bc r3 is ???
	bra loc_8C0D03A0
	mov.w @r1,r3

loc_8c0d0388:
	mov.w @(loc_8c0d0408,pc),r2
	mov.l @(loc_8c0d0418,pc),r1
	add r13,r2
	mov.b @r2,r2
	add 0xFF,r2
	mov r2,r3
	shll2 r3
	shll r2
	add r3,r2
	add r2,r1
	mov.w @r1,r1
	neg r1,r3

loc_8c0d03a0:
	lds r3,fpul
	mov 0x38,r1
	mov.w @(loc_8c0d0408,pc),r3
	add r14,r1
	mov.l @(loc_8c0d0418,pc),r4
	add r13,r3
	float fpul,fr3
	fmov.s @r8,fr2
	fadd fr3,fr2
	fmov.s fr2,@r8
	mov.b @r3,r3
	fmov.s @r1,fr2
	add 0xFF,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r4,r3
	mov.w @(0x02,r3),r0
	mov r0,r3
	lds r3,fpul
	mov.w @(loc_8c0d0408,pc),r0
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r1
	mov.b @(r0,r13),r3
	add 0xFF,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r4
	mov 0x48,r1
	mov.w @(0x04,r4),r0
	add r14,r1
	mov.l r0,@r1
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov 0xFF,r2
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)

loc_8C0D03F4:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D03FE:
	#data 0x01A0
loc_8C0D0400:
	#data 0x00Cc
loc_8C0D0402:
	#data 0x0158
loc_8C0D0404:
	#data 0x012c
loc_8C0D0406:
	#data 0x0159
loc_8C0D0408:
	#data 0x0141
loc_8C0D040A:
	#data 0x0130
	#align4

loc_8C0D040C:
	#data bank03.loc_8c034D8c
loc_8C0D0410:
	#data bank15.loc_8c15c9C4
loc_8C0D0414:
	#data bank03.loc_8c034C38
loc_8C0D0418:
	#data bank13.loc_8c13B0Ac

;==============================================
loc_8C0D041C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0D056E,pc),r0 ; r0 set to 0x141
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8C0D0446
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D0570,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	bra loc_8C0D04F6
	mov.l r4,@(r0,r14)

loc_8C0D0446:
	mov.b @(r0,r13),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0D0574,pc),r3 ; r3 set to 0x8C034C38
	add 0x23,r6
	jsr @r3
	mov r14,r4
	mov r14,r5 ; r5 ??? bc r14 is ???
	bsr loc_8C0D050c
	mov r13,r4
	mov.w @(loc_8C0D0572,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r13),r2
	tst r2,r2
	bt/s loc_8C0D047c
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.w @(loc_8C0D056E,pc),r3 ; r3 set to 0x141
	mov.l @(loc_8C0D0578,pc),r1 ; r1 set to 0x8C13B0Ac
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.b @r3,r3
	add 0xFF,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r1 ; r1 ??? bc r3 is ???
	bra loc_8C0D0494
	mov.w @r1,r3

loc_8C0D047C:
	mov.w @(loc_8C0D056E,pc),r2 ; r2 set to 0x141
	mov.l @(loc_8C0D0578,pc),r1 ; r1 set to 0x8C13B0Ac
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.b @r2,r2
	add 0xFF,r2
	mov r2,r3
	shll2 r3
	shll r2
	add r3,r2
	add r2,r1 ; r1 ??? bc r2 is ???
	mov.w @r1,r1
	neg r1,r3

loc_8C0D0494:
	lds r3,fpul
	mov 0x38,r1 ; r1 set to 0x38, r1 set to 0x38
	mov.w @(loc_8C0D056E,pc),r3 ; r3 set to 0x141, r3 set to 0x141
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l @(loc_8C0D0578,pc),r4 ; r4 set to 0x8C13B0AC, r4 set to 0x8C13B0Ac
	add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	float fpul,fr3
	fmov.s @r8,fr2
	fadd fr3,fr2
	fmov.s fr2,@r8
	mov.b @r3,r3
	fmov.s @r1,fr2
	add 0xFF,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r4,r3
	mov.w @(0x02,r3),r0
	mov r0,r3
	lds r3,fpul
	mov.w @(loc_8C0D056E,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r1
	mov.b @(r0,r13),r3
	add 0xFF,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???
	mov 0x48,r1 ; r1 set to 0x48, r1 set to 0x48
	mov.w @(0x04,r4),r0
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l r0,@r1
	mov 0x02,r2 ; r2 set to 0x02, r2 set to 0x02
	mov.w @(loc_8C0D056E,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r13),r3
	cmp/gt r2,r3
	bf loc_8C0D04F0
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r13),r1
	mov.b r1,@(r0,r14)
	bra loc_8C0D04F2
	mov 0x01,r3

loc_8C0D04F0:
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf

loc_8C0D04F2:
	mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
	mov.b r3,@(r0,r14)

loc_8C0D04F6:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0500:
	mov.w @(loc_8C0D0570,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r4)

loc_8C0D0506:
	mov.l @(loc_8C0D057C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8c0d050c:
	mov 0x21,r3
	mov.l @(loc_8c0d0580,pc),r6
	add r5,r3
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r5)
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	mov r0,r1
	add r5,r1
	fmov.s fr3,@(r0,r5)
	mov.b @r3,r3
	fmov.s @r1,fr2
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r6,r3
	mov.w @(0x02,r3),r0
	mov r0,r3
	lds r3,fpul
	mov 0x21,r0
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r1
	mov.b @(r0,r5),r3
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r6
	mov.w @(loc_8c0d0572,pc),r0
	mov.w @r6,r3
	mov.w @(r0,r4),r2
	lds r3,fpul
	tst r2,r2
	float fpul,fr4
	bf/s loc_8c0d0560
	mov.w r2,@(r0,r5)
	fneg fr4

loc_8c0d0560:
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	rts
	fmov.s fr3,@(r0,r5)

loc_8C0D056A:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D056E:
	#data 0x0141
loc_8C0D0570:
	#data 0x012c
loc_8C0D0572:
	#data 0x0130
	#align4

loc_8C0D0574:
	#data bank03.loc_8c034C38
loc_8C0D0578:
	#data bank13.loc_8c13B0Ac
loc_8C0D057C:
	#data bank04.loc_8c0450C0
loc_8C0D0580:
	#data bank13.loc_8c13B088

;==============================================
loc_8c0d0584:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15

	mov r4,r14
	mov r5,r0
	nop
	mov.l @(loc_8c0d06cc,pc),r3
	mov 0x03,r5
	mov.b r0,@(0x04,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt/s loc_8c0d064c
	mov r0,r4
	mov.l @(loc_8c0d06d0,pc),r3
	mov r14,r2
	mov.w @(loc_8C0D06BC,pc),r1
	mov.w @(loc_8C0D06BC,pc),r0
	mov.l r3,@(0x10,r4)
	add r4,r1
	mov.l @(loc_8c0d06d4,pc),r3
	add r0,r2
	mov.l r14,@(0x18,r4)
	jsr @r3
	add 0xE4,r0
	mov.w @(loc_8C0D06BE,pc),r0
	mov 0x01,r5
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0D06C0,pc),r0
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
	mov.l @(loc_8c0d06d8,pc),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov.w @(loc_8C0D06C2,pc),r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov 0x20,r3
	mov.w @(loc_8C0D06C4,pc),r0
	mov 0x24,r2
	mov r3,r1
	add r4,r1
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	add 0x03,r0
	mov.b r2,@(r0,r4)
	add 0xFF,r0
	mov.b r2,@(r0,r4)
	mov.b @(0x04,r15),r0
	mov.b r0,@r1
	mov r5,r0
	nop
	mov.b r0,@(0x04,r4)
	mov 0x00,r3
	mov.b @r15,r0
	mov.w @(loc_8c0d06c6,pc),r5
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0D06BE,pc),r0
	add r4,r5
	mov.b r3,@(r0,r4)
	add 0x2C,r0
	mov.w @(r0,r14),r3
	add 0x01,r0
	mov.w r3,@r5
	mov.b @(r0,r14),r0
	mov.b r0,@(0x01,r5)

loc_8c0d064c:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0D0658:
	mov r4,r3
	mov.l @(loc_8C0D06DC,pc),r1 ; r1 set to 0x8C15C9Cc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D066A:
	rts
	nop

;----------------------------------------------
loc_8C0D066E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0D06E0,pc),r1 ; r1 set to 0x8C15C9Dc
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D139c
	mov.l @r15+,r14

loc_8C0D068A:
	mov r4,r3
	mov.l @(loc_8C0D06E4,pc),r1 ; r1 set to 0x8C15CA18
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D069C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D06C6,pc),r5 ; r5 set to 0xCc
	mov.w @(loc_8C0D06C8,pc),r0 ; r0 set to 0x158
	add r14,r5 ; r5 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.w @r5,r3
	mov.w @(r0,r4),r2
	cmp/eq r2,r3
	bt loc_8C0D06E8
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d06bc:
	#data 0x00Dc
loc_8c0d06be:
	#data 0x012C
loc_8c0d06c0:
	#data 0x01A3
loc_8c0d06c2:
	#data 0x1401
loc_8c0d06c4:
	#data 0x013d
loc_8C0D06C6:
	#data 0x00Cc
loc_8C0D06C8:
	#data 0x0158
	#align4

loc_8C0D06CC:
	#data bank04.loc_8c044F12
loc_8C0D06D0:
	#data loc_8c0d0658
loc_8C0D06D4:
	#data bank12.loc_8c129560
loc_8C0D06D8:
	#data bank12.loc_8c1294C8
loc_8C0D06DC:
	#data bank15.loc_8c15c9Cc
loc_8C0D06E0:
	#data bank15.loc_8c15c9Dc
loc_8C0D06E4:
	#data bank15.loc_8c15ca18

;==============================================
loc_8C0D06E8:
	mov.w @(loc_8C0D080A,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0D0730
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0 ; r0 set to 0x141
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D080C,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D134a
	mov r14,r5
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8C0D0712
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x07,r2 ; r2 set to 0x07
	bra loc_8C0D0718
	mov.b r2,@(r0,r14)

loc_8C0D0712:
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r1 ; r1 set to 0x00
	mov.b r1,@(r0,r14)

loc_8C0D0718:
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.l @(loc_8C0D0814,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0D0818,pc),r2 ; r2 set to 0x8C04223A, r2 set to 0x8C04223a
	mov 0x2F,r5 ; r5 set to 0x2F, r5 set to 0x2f
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0D0730:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0736:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d074c
	mov.l @r15,r3
	mov 0x02,r0
	mov.b r0,@(0x4,r3)

loc_8C0D074C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D0754:
	mov r4,r3
	mov.l @(loc_8C0D0820,pc),r1 ; r1 set to 0x8C15CA20
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0D0766:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0D080E,pc),r4 ; r4 set to 0xCc
	mov.w @(loc_8C0D0810,pc),r3 ; r3 set to 0x159
	add r14,r4 ; r4 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(0x01,r4),r0
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D0786
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0D07Be
	mov.b r0,@(0x04,r14)

loc_8C0D0786:
mov.w @(loc_8C0D0812,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8C0D07Be
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov r14,r5
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D080C,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D134a
	mov r13,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r13),r2
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @(loc_8C0D0814,pc),r3 ; r3 set to 0x8C034C38
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0D07BE:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D07C6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x3E,PC),r4
	mov.w @(0x3E,PC),r3
	add r14,r4
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(0x1,r4),r0
	add r13,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bf loc_8c0d07e8
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0d07ee

loc_8C0D07E8:
	mov 0x02,r0
	bra loc_8c0d0824
	mov.b r0,@(0x4,r14)

loc_8C0D07EE:
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt.s loc_8c0d0800
	mov r14,r5
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0D0800:
	lds.l @r15+,pr
	mov r13,r4
	mov.l @r15+,r13
	bra loc_8c0d134a
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D080A:
	#data 0x0140
loc_8C0D080C:
	#data 0x012c
loc_8C0D080E:
	#data 0x00Cc
loc_8C0D0810:
	#data 0x0159
loc_8C0D0812:
	#data 0x0141
	#align4

loc_8C0D0814:
	#data bank03.loc_8c034C38
loc_8C0D0818:
	#data bank04.loc_8c04223a
loc_8C0D081C:
	#data bank03.loc_8c034D8c
loc_8C0D0820:
	#data bank15.loc_8c15ca20

;==============================================
loc_8C0D0824:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D082C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D0964,pc),r3 ; r3 set to 0x159
	mov.w @(loc_8C0D0962,pc),r4 ; r4 set to 0xCc
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(0x01,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D084a
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D084A:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D096C,pc),r1 ; r1 set to 0x8C15CA28
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D085E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D0966,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D134a
	mov r14,r5
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D0970,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x07,r2 ; r2 set to 0x07
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D088E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d08c0
	mov 0x02,r0
	mov.l @(0xD4,PC),r1
	mov.b r0,@(0x4,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov r15,r4
	mov 0x38,r0
	lds r1,fpul
	fmov fr3,@r4
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C0D08C0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D08C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D0964,pc),r3 ; r3 set to 0x159
	mov.w @(loc_8C0D0962,pc),r4 ; r4 set to 0xCc
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(0x01,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D08E6
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D08E6:
mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D097C,pc),r1 ; r1 set to 0x8C15CA30
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D08FA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x66,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0d092c
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x50,PC),r0
	mov.b r3,@(r0,r14)
	bsr loc_8c0d134a
	mov r14,r5
	mov 0x20,r0
	mov.l @(0x50,PC),r3
	mov.b @(r0,r14),r6
	mov 0x1B,r5
	jsr @r3
	mov r14,r4
	mov 0x24,r0
	mov 0x07,r2
	mov.b r2,@(r0,r14)

loc_8C0D092C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0932:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d0948
	mov.l @r15,r3
	mov 0x02,r0
	mov.b r0,@(0x4,r3)

loc_8C0D0948:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D0950:
	mov r4,r3
	mov.l @(loc_8C0D0980,pc),r1 ; r1 set to 0x8C15CA38
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D0962:
	#data 0x00Cc
loc_8C0D0964:
	#data 0x0159
loc_8C0D0966:
	#data 0x012c
loc_8C0D0968:
	#data 0x0141
	#align4

loc_8C0D096C:
	#data bank15.loc_8c15ca28
loc_8C0D0970:
	#data bank03.loc_8c034C38
loc_8C0D0974:
	#data bank03.loc_8c034D8c
loc_8C0D0978:
	#data 0x42A00000
loc_8C0D097C:
	#data bank15.loc_8c15ca30
loc_8C0D0980:
	#data bank15.loc_8c15ca38

;==============================================
loc_8C0D0984:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D0ABC,pc),r5 ; r5 set to 0xCc
	mov.w @(loc_8C0D0ABE,pc),r0 ; r0 set to 0x158
	add r14,r5 ; r5 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.w @r5,r3
	mov.w @(r0,r4),r2
	cmp/eq r2,r3
	bt loc_8C0D09D2
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D0AC0,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D134a
	mov r14,r5
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D0AC8,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr3
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3 ; r3 ??? bc r2 is ???
	bf loc_8C0D09Cc
	mov.w @(loc_8C0D0AC2,pc),r0 ; r0 set to 0x130
	bra loc_8C0D09D2
	mov.w r4,@(r0,r14)

loc_8c0d09cc:
	mov.w @(loc_8c0d0ac2,pc),r0
	mov 0x01,r2
	mov.w r2,@(r0,r14)

loc_8C0D09D2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D09D8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xEC,PC),r3
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
	mov.l @(0xCC,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0d0a0e
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0D0A0E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0A14:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D0AC4,pc),r3 ; r3 set to 0x159
	mov.w @(loc_8C0D0ABC,pc),r4 ; r4 set to 0xCc
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(0x01,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D0A32
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0A32:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D0AD4,pc),r1 ; r1 set to 0x8C15CA40
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0A46:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D0AC0,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D134a
	mov r14,r5
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D0AC8,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	mov 0x02,r7 ; r7 set to 0x02
	mov.l @(loc_8C0D0AD8,pc),r3 ; r3 set to 0x8C03544c
	mov 0x0B,r2 ; r2 set to 0x0b
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov r7,r6 ; r6 set to 0x02
	mov.b r2,@(r0,r14)
	mov r7,r5 ; r5 set to 0x02
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0D0A80:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x44,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d0a96
	mov.l @r15,r3
	mov 0x02,r0
	mov.b r0,@(0x4,r3)

loc_8C0D0A96:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D0A9E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D0AC4,pc),r3 ; r3 set to 0x159
	mov.w @(loc_8C0D0ABC,pc),r4 ; r4 set to 0xCc
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(0x01,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D0ADc
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D0ABC:
	#data 0x00Cc
loc_8C0D0ABE:
	#data 0x0158
loc_8C0D0AC0:
	#data 0x012c
loc_8C0D0AC2:
	#data 0x0130
loc_8C0D0AC4:
	#data 0x0159
	#align4

loc_8C0D0AC8:
	#data bank03.loc_8c034C38
loc_8C0D0ACC:
	#data bank03.loc_8c034D8c
loc_8C0D0AD0:
	#data bank03.loc_8c03340c
loc_8C0D0AD4:
	#data bank15.loc_8c15ca40
loc_8C0D0AD8:
	#data bank03.loc_8c03544c

;==============================================
loc_8C0D0ADC:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D0BF8,pc),r1 ; r1 set to 0x8C15CA48
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0AF0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D0BF0,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D134a
	mov r14,r5
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D0BFC,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x07,r2 ; r2 set to 0x07
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0B20:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l r3,@r15
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xBC,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c0d0b40
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0D0B40:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0B48:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D0BF6,pc),r3 ; r3 set to 0x159
	mov.w @(loc_8C0D0BF4,pc),r4 ; r4 set to 0xCc
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(0x01,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D0B66
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0B66:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D0C04,pc),r1 ; r1 set to 0x8C15CA50
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0B7A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D0BF0,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D134a
	mov r14,r5
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D0BFC,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x08,r2 ; r2 set to 0x08
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0BAA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d0bd6
	mov 0x02,r0
	mov.l @(0x48,PC),r13
	mov.b r0,@(0x4,r14)
	mov 0x00,r5
	mov.l @(0x18,r14),r14
	jsr @r13
	mov r14,r4
	mov 0x01,r5
	jsr @r13
	mov r14,r4
	mov 0x02,r5
	jsr @r13
	mov r14,r4

loc_8C0D0BD6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0BDE:
	mov r4,r3
	mov.l @(loc_8C0D0C0C,pc),r1 ; r1 set to 0x8C15CA58
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D0BF0:
	#data 0x012c
loc_8C0D0BF2:
	#data 0x0141
loc_8C0D0BF4:
	#data 0x00Cc
loc_8C0D0BF6:
	#data 0x0159
	#align4

loc_8C0D0BF8:
	#data bank15.loc_8c15ca48
loc_8C0D0BFC:
	#data bank03.loc_8c034C38
loc_8C0D0C00:
	#data bank03.loc_8c034D8c
loc_8C0D0C04:
	#data bank15.loc_8c15ca50
loc_8C0D0C08:
	#data bank07.loc_8c07E70c
loc_8C0D0C0C:
	#data bank15.loc_8c15ca58

;==============================================
loc_8C0D0C10:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(0x18,r14),r13
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x60,PC),r0
	mov.b r12,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r12,r3
	bt.s loc_8c0d0c3e
	mov r14,r5
	mov.w @(0x52,PC),r0
	mov 0x01,r3
	mov.w @(r0,r13),r2
	xor r3,r2
	mov.w r2,@(r0,r13)

loc_8C0D0C3E:
	bsr loc_8c0d134a
	mov r13,r4
	mov 0x22,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r12,r2
	bt.s loc_8c0d0c58
	mov r14,r5
	mov.w @(0x38,PC),r0
	mov 0x01,r3
	mov.w @(r0,r13),r2
	xor r3,r2
	mov.w r2,@(r0,r13)

loc_8C0D0C58:
	bsr loc_8c0d0e78
	mov r13,r4
	mov 0x20,r0
	mov.l @(0x2C,PC),r3
	mov.b @(r0,r14),r6
	mov 0x1B,r5
	jsr @r3
	mov r14,r4
	mov 0x24,r0
	mov 0x07,r2
	mov.b r2,@(r0,r14)
	mova @(0x20,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c0d0e5a
	mov r14,r4
	lds.l @r15+,pr
	exts.b r0,r0
	tst r0,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d0c88:
	#data 0x012c
loc_8c0d0c8a:
	#data 0x0130
	#align4

loc_8C0D0C8C:
	#data bank03.loc_8c034C38
loc_8C0D0C90:
	#data 0x3F400000

;==============================================
loc_8C0D0C94:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x120,PC),r3
	jsr @r3
	mov.l @(0x18,r14),r13
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c0d0cb8
	mov r14,r5
	mov.w @(0x108,PC),r0
	mov 0x01,r3
	mov.w @(r0,r13),r2
	xor r3,r2
	mov.w r2,@(r0,r13)

loc_8C0D0CB8:
	bsr loc_8c0d134a
	mov r13,r4
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c0d0cd2
	mov r14,r5
	mov.w @(0xEE,PC),r0
	mov 0x01,r3
	mov.w @(r0,r13),r2
	xor r3,r2
	mov.w r2,@(r0,r13)

loc_8C0D0CD2:
	bsr loc_8c0d0e78
	mov r13,r4
	bsr loc_8c0d0e5a
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c0d0d60
	mov.w @(0xD8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d0d60
	mov.b @(0x6,r14),r0
	mov 0x0A,r3
	mov 0x0D,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x24,r0
	mov 0x09,r6
	mov.b r3,@(r0,r14)
	bsr loc_8c0d0584
	mov r13,r4
	tst r0,r0
	bt.s loc_8c0d0d2a
	mov r0,r4
	mov 0x5C,r0
	mov.w @(0xB6,PC),r5
	fmov @(r0,r14),fr3
	mov 0x0B,r2
	add r14,r5
	fmov fr3,@(r0,r4)
	mov.w @(0xA8,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x9C,PC),r3
	mov.w @r5,r2
	add r3,r4
	mov.w r2,@r4
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)

loc_8C0D0D2A:
	mov 0x0E,r5
	mov 0x09,r6
	bsr loc_8c0d0584
	mov r13,r4
	tst r0,r0
	bt.s loc_8c0d0d60
	mov r0,r4
	mov 0x5C,r0
	mov.w @(0x80,PC),r5
	fmov @(r0,r14),fr3
	mov 0x09,r2
	add r14,r5
	fmov fr3,@(r0,r4)
	mov.w @(0x72,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x66,PC),r3
	mov.w @r5,r2
	add r3,r4
	mov.w r2,@r4
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)

loc_8C0D0D60:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0D68:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov.l @(0x18,r14),r13
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c0d0d8c
	mov r14,r5
	mov.w @(0x34,PC),r0
	mov 0x01,r3
	mov.w @(r0,r13),r2
	xor r3,r2
	mov.w r2,@(r0,r13)

loc_8C0D0D8C:
	bsr loc_8c0d134a
	mov r13,r4
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c0d0da6
	mov r14,r5
	mov.w @(0x1A,PC),r0
	mov 0x01,r3
	mov.w @(r0,r13),r2
	xor r3,r2
	mov.w r2,@(r0,r13)

loc_8C0D0DA6:
	bsr loc_8c0d0e78
	mov r13,r4
	bsr loc_8c0d0e00
	mov r14,r4
	lds.l @r15+,pr
	exts.b r0,r0
	tst r0,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d0dba:
	#data 0x0130
loc_8c0d0dbc:
	#data 0x0141
loc_8c0d0dbe:
	#data 0x00cc
	#align4

loc_8C0D0DC0:
	#data bank03.loc_8c034D8c

;===============================
loc_8C0D0DC4:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xFC,PC),r3
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
	mov.l @(0xDC,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0d0dfa
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0D0DFA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0E00:
	mov.w @(0xBC,PC),r5
	mov.w @(0xBC,PC),r0
	mov.l @(0x18,r4),r6
	add r4,r5
	mov.w @r5,r3
	mov.w @(r0,r6),r2
	cmp/eq r2,r3
	bt loc_8c0d0e54
	mov 0x03,r0
	mov.b r0,@(0x6,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0D,r0
	bt.s loc_8c0d0e2c
	mov 0x07,r5
	cmp/eq 0x0E,r0
	bt loc_8c0d0e34
	cmp/eq 0x0F,r0
	bt loc_8c0d0e34
	bra loc_8c0d0e38
	nop

loc_8C0D0E2C:
	mov 0x24,r0
	mov 0x0C,r3
	bra loc_8c0d0e38
	mov.b r3,@(r0,r4)

loc_8C0D0E34:
	mov 0x24,r0
	mov.b r5,@(r0,r4)

loc_8C0D0E38:
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0d0e4a
	mov.w @(0x7E,PC),r0
	mov 0x00,r2
	bra loc_8c0d0e50
	mov.w r2,@(r0,r4)

loc_8C0D0E4A:
	mov.w @(0x76,PC),r0
	mov 0x01,r1
	mov.w r1,@(r0,r4)

loc_8C0D0E50:
	rts
	mov 0x01,r0

;----------------------------------------------
loc_8C0D0E54:
	mov 0x00,r0
	rts
	nop

;----------------------------------------------
loc_8C0D0E5A:
	mov.w @(0x62,PC),r5
	mov.w @(0x62,PC),r0
	mov.l @(0x18,r4),r6
	add r4,r5
	mov.w @r5,r3
	mov.w @(r0,r6),r2
	cmp/eq r2,r3
	bt loc_8c0d0e72
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	rts
	mov 0x01,r0


loc_8C0D0E72:
	mov 0x00,r0
	rts
	nop

;----------------------------------------------
loc_8C0D0E78:
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r5)
	mov 0x20,r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x0D,r0
	bt loc_8c0d0e94
	cmp/eq 0x0E,r0
	bt loc_8c0d0e9c
	cmp/eq 0x0F,r0
	bt loc_8c0d0ea4
	bra loc_8c0d0eaa
	nop

loc_8C0D0E94:
	mov 0x31,r0
	mov 0xFF,r3
	bra loc_8c0d0eaa
	mov.b r3,@(r0,r5)

loc_8C0D0E9C:
	mov 0x31,r0
	mov 0xFD,r1
	bra loc_8c0d0eaa
	mov.b r1,@(r0,r5)

loc_8C0D0EA4:
	mov 0x31,r0
	mov 0xFE,r2
	mov.b r2,@(r0,r5)

loc_8C0D0EAA:
	rts
	nop

;----------------------------------------------
loc_8C0D0EAE:
	mov r4,r3
	mov.l @(loc_8C0D0ED0,pc),r1 ; r1 set to 0x8C15CA68
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d0ec0:
	#data 0x00cc
loc_8c0d0ec2:
	#data 0x0158
loc_8c0d0ec4:
	#data 0x0130
	#align4

loc_8C0D0EC8:
	#data bank03.loc_8c034D8c
loc_8C0D0ECC:
	#data bank03.loc_8c03340c
loc_8C0D0ED0:
	#data bank15.loc_8c15ca68

;==============================================
loc_8C0D0ED4:
	mov.l r14,@-r15
	mov 0x02,r0
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b r0,@(0x6,r14)
	mov.w @(0x122,PC),r0
	mov.b r12,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r12,r3
	bt.s loc_8c0d0f00
	mov r14,r5
	mov.w @(0x114,PC),r0
	mov 0x01,r3
	mov.w @(r0,r13),r2
	xor r3,r2
	mov.w r2,@(r0,r13)

loc_8C0D0F00:
	bsr loc_8c0d134a
	mov r13,r4
	mov 0x22,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r12,r2
	bt.s loc_8c0d0f1a
	mov r14,r5
	mov.w @(0xFA,PC),r0
	mov 0x01,r3
	mov.w @(r0,r13),r2
	xor r3,r2
	mov.w r2,@(r0,r13)

loc_8C0D0F1A:
	bsr loc_8c0d0e78
	mov r13,r4
	mov 0x20,r0
	mov.l @(0xF0,PC),r3
	mov.b @(r0,r14),r6
	mov 0x1B,r5
	jsr @r3
	mov r14,r4
	bsr loc_8c0d0e5a
	mov r14,r4
	lds.l @r15+,pr
	exts.b r0,r0
	tst r0,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0F3C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D1012,pc),r3 ; r3 set to 0x159
	mov.w @(loc_8C0D1010,pc),r4 ; r4 set to 0xCc
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(0x01,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D0F5a
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

loc_8C0D0F5A:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D1018,pc),r1 ; r1 set to 0x8C15CA78
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0F6E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D100C,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D134a
	mov r14,r5
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D1014,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	mov 0x02,r7 ; r7 set to 0x02
	mov.l @(loc_8C0D101C,pc),r3 ; r3 set to 0x8C03544c
	mov 0x00,r2 ; r2 set to 0x00
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov r7,r6 ; r6 set to 0x02
	mov.b r2,@(r0,r14)
	mov r7,r5 ; r5 set to 0x02
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0D0FA8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l r3,@r15
	mov.l @(loc_8C0D1020,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0D0FD2
	mov 0x02,r0 ; r0 set to 0x02
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x04,r14)
	mov.l @r15,r4
	mov 0x0B,r6 ; r6 set to 0x0b
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0D0584
	mov.l @r15+,r14

loc_8C0D0FD2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0FDA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D1012,pc),r3 ; r3 set to 0x159
	mov.w @(loc_8C0D1010,pc),r4 ; r4 set to 0xCc
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(0x01,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D0FF8
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D0FF8:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D1024,pc),r1 ; r1 set to 0x8C15CA80
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D100C:
	#data 0x012c
loc_8C0D100e:
	#data 0x0130
loc_8C0D1010:
	#data 0x00Cc
loc_8C0D1012:
	#data 0x0159
	#align4

loc_8C0D1014:
	#data bank03.loc_8c034C38
loc_8C0D1018:
	#data bank15.loc_8c15ca78
loc_8C0D101C:
	#data bank03.loc_8c03544c
loc_8C0D1020:
	#data bank03.loc_8c034D8c
loc_8C0D1024:
	#data bank15.loc_8c15ca80

;==============================================
loc_8C0D1028:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r3 ; r3 set to 0x01
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov r14,r5
	mov.l @(0x18,r14),r13
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D1158,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D134a
	mov r13,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D1160,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0D115A,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	tst r3,r3
	bt loc_8C0D1064
	mova @(loc_8C0D1164,pc),r0  ; r0 set to 0x8C0D1164
	bra loc_8C0D1068
	fmov.s @r0,fr3

loc_8C0D1064:
	mova @(loc_8C0D1168,pc),r0  ; r0 init to 0x8C0D1168
	fmov.s @r0,fr3

loc_8C0D1068:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D116C,pc),r0  ; r0 set to 0x8C0D116C, r0 set to 0x8C0D116c
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D1170,pc),r0  ; r0 set to 0x8C0D1170, r0 set to 0x8C0D1170
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D108A:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xDC,PC),r3
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
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0d10dc
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0D10DC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D10E2:
	mov r4,r3
	mov.l @(loc_8C0D117C,pc),r1 ; r1 set to 0x8C15CA88
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D10F4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D115C,pc),r5 ; r5 set to 0xCc
	mov.w @(loc_8C0D115E,pc),r0 ; r0 set to 0x158
	add r14,r5 ; r5 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.w @r5,r3
	mov.w @(r0,r4),r2
	cmp/eq r2,r3
	bt loc_8C0D1114
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1114:
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D1158,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	bsr loc_8C0D11A4
	mov r14,r5
	lds.l @r15+,pr
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D1160,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D113A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D115C,pc),r4 ; r4 set to 0xCc
	mov.l r13,@-r15
	mov.w @(loc_8C0D115E,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.w @r4,r3
	mov.w @(r0,r13),r2
	cmp/eq r2,r3
	bt loc_8C0D1180
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0D119c
	mov.b r0,@(0x04,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D1158:
	#data 0x012c
loc_8C0D115A:
	#data 0x01D2
loc_8C0D115C:
	#data 0x00Cc
loc_8C0D115E:
	#data 0x0158
	#align4

loc_8C0D1160:
	#data bank03.loc_8c034C38
loc_8C0D1164:
	#data 0xBFA00000
loc_8C0D1168:
	#data 0x3FA00000
loc_8C0D116C:
	#data 0x41092492
loc_8C0D1170:
	#data 0xBF8C0000
loc_8C0D1174:
	#data bank03.loc_8c034D8c
loc_8C0D1178:
	#data bank03.loc_8c0332E0
loc_8C0D117C:
	#data bank15.loc_8c15ca88

;==============================================
loc_8c0d1180:
	mov.l @(loc_8c0d1294,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt/s loc_8c0d1192
	mov r14,r5
	mov 0x02,r0
	mov.b r0,@(0x04,r14)

loc_8c0d1192:
	lds.l @r15+,pr
	mov r13,r4
	mov.l @r15+,r13
	bra loc_8c0d11a4
	mov.l @r15+,r14

loc_8C0D119C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d11a4:
	mov 0x34,r0
	mov.l @(loc_8C0D1298,pc),r1
	fmov.s @(r0,r4),fr3
	lds r1,fpul
	fmov.s fr3,@(r0,r5)
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r5)
	fmov.s @(r0,r5),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r5)
	mova @(loc_8C0D129C,pc),r0
	fmov.s @r0,fr4
	mov.w @(loc_8C0D128A,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf/s loc_8c0d11ce
	mov.w r3,@(r0,r5)
	mova @(loc_8C0D12A0,pc),r0
	fmov.s @r0,fr4

loc_8c0d11ce:
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	rts
	fmov.s fr3,@(r0,r5)

loc_8C0D11D8:
	mov r4,r3
	mov.l @(loc_8C0D12A4,pc),r1 ; r1 set to 0x8C15CA90
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D11EA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D128C,pc),r5 ; r5 set to 0xCc
	mov.w @(loc_8C0D128E,pc),r0 ; r0 set to 0x158
	add r14,r5 ; r5 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.w @r5,r3
	mov.w @(r0,r4),r2
	cmp/eq r2,r3
	bt loc_8C0D120a
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D120A:
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x00,r2 ; r2 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D1290,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r14)
	bsr loc_8C0D134a
	mov r14,r5
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D12A8,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0D1242
	cmp/eq 0x17,r0
	bt loc_8C0D124a
	cmp/eq 0x18,r0
	bt loc_8C0D1252
	bra loc_8C0D1258
	nop

loc_8C0D1242:
	mov 0x48,r0 ; r0 set to 0x48
	mov 0x00,r3 ; r3 set to 0x00
	bra loc_8C0D1258
	mov.l r3,@(r0,r14)

loc_8C0D124A:
	mov.l @(loc_8C0D12AC,pc),r1 ; r1 set to 0xE000
	mov 0x48,r0 ; r0 set to 0x48
	bra loc_8C0D1258
	mov.l r1,@(r0,r14)

loc_8c0d1252:
	mov.l @(loc_8C0D12B0,pc),r2
	mov 0x48,r0
	mov.l r2,@(r0,r14)

loc_8C0D1258:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D125E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x26,PC),r4
	mov.w @(0x26,PC),r0
	add r14,r4
	sts.l pr,@-r15
	mov.l @(0x18,r14),r5
	mov.w @r4,r3
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bf loc_8c0d1280
	mov.l @(0x1C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d1284

loc_8C0D1280:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0D1284:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d128a:
	#data 0x0130
loc_8C0D128C:
	#data 0x00Cc
loc_8C0D128E:
	#data 0x0158
loc_8C0D1290:
	#data 0x012c
	#align4

loc_8C0D1294:
	#data bank03.loc_8c034D8c
loc_8c0d1298:
	#data 0xC3092492
loc_8c0d129c:
	#data 0x40D55555
loc_8c0d12a0:
	#data 0xC0D55555
loc_8C0D12A4:
	#data bank15.loc_8c15ca90
loc_8C0D12A8:
	#data bank03.loc_8c034C38
loc_8C0D12AC:
	#data 0x0000E000
loc_8c0d12b0:
	#data 0x0000D000

;==============================================
loc_8C0D12B4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D13A2,pc),r3 ; r3 set to 0x159
	mov.w @(loc_8C0D13A0,pc),r4 ; r4 set to 0xCc
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(0x01,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8C0D12D8
	mov.w @(loc_8C0D13A4,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D12D8:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D13A8,pc),r1 ; r1 set to 0x8C15CA98
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D12EC:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D13A4,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	mov.w r0,@(0x1C,r14)
	bsr loc_8C0D134a
	mov r14,r5
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D13AC,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1320:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0d1330
	mov 0x02,r0
	mov.b r0,@(0x4,r4)


loc_8C0D1330:
	mov.l @(0x7C,PC),r3
	jmp @r3
	nop

;==============================================
loc_8C0D1336:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D13A4,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D1344:
	mov.l @(loc_8C0D13B4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8c0d134a:
	mov 0x34,r0
	mov.l @(loc_8c0d13b8,pc),r6
	mov 0x20,r3
	fmov.s @(r0,r4),fr3
	add r5,r3
	fmov.s fr3,@(r0,r5)
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	mov r0,r2
	add r5,r2
	fmov.s fr3,@(r0,r5)
	mov.b @r3,r3
	fmov.s @r2,fr2
	extu.b r3,r3
	shll2 r3
	add r6,r3
	mov.w @(0x02,r3),r0
	mov r0,r3
	mov 0x20,r0
	lds r3,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.b @(r0,r5),r3
	mov.w @(loc_8C0D13A6,pc),r0
	extu.b r3,r3
	shll2 r3
	mov.w @(r0,r4),r2
	add r3,r6
	mov.w @r6,r3
	lds r3,fpul
	float fpul,fr4
	tst r2,r2
	bf/s loc_8c0d1392
	mov.w r2,@(r0,r5)
	fneg fr4

loc_8c0d1392:
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	rts
	fmov.s fr3,@(r0,r5)

loc_8C0D139C:
	rts
	nop

;----------------------------------------------
loc_8C0D13A0:
	#data 0x00Cc
loc_8C0D13A2:
	#data 0x0159
loc_8C0D13A4:
	#data 0x012c
loc_8c0d13a6:
	#data 0x0130
	#align4

loc_8C0D13A8:
	#data bank15.loc_8c15ca98
loc_8C0D13AC:
	#data bank03.loc_8c034C38
loc_8C0D13B0:
	#data bank03.loc_8c034D8c
loc_8C0D13B4:
	#data bank04.loc_8c0450C0
loc_8C0D13B8:
	#data bank13.loc_8c13B0D0

;==============================================
;Charater code
loc_8c0d13bc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x160,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d148a
	mov r0,r4
	mov.l @(0x150,PC),r3
	mov r14,r2
	mov.w @(0x138,PC),r1
	mov.w @(0x136,PC),r0
	mov.l r3,@(0x10,r4)
	add r4,r1
	mov.l @(0x148,PC),r3
	add r0,r2
	mov.l r14,@(0x18,r4)
	jsr @r3
	add 0xE4,r0
	mov.w @(0x128,PC),r0
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
	mov.w @(0x104,PC),r0
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
	mov.l @(0x104,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov.w @(0xE0,PC),r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov 0x20,r3
	mov.w @(0xD6,PC),r0
	mov 0x24,r2
	mov r3,r1
	add r4,r1
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	add 0x03,r0
	mov.b r2,@(r0,r4)
	add 0xFF,r0
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov r5,r0
	nop
	mov.b r0,@(0x4,r4)
	mov.b @r15,r0
	mov.w @(0xB6,PC),r5
	mov.b r0,@(0x5,r4)
	mov.w @(0xB4,PC),r0
	add r4,r5
	mov.w @(r0,r14),r3
	add 0x01,r0
	mov.w r3,@r5
	mov.b @(r0,r14),r0
	mov.b r0,@(0x1,r5)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8c0d148a:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1496:
	mov r4,r3
	mov.l @(loc_8C0D153C,pc),r1 ; r1 set to 0x8C15CAA0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D14A8:
	rts
	nop

;----------------------------------------------
loc_8C0D14AC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0D1540,pc),r1 ; r1 set to 0x8C15CAB0
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D1ADa
	mov.l @r15+,r14

loc_8C0D14C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D1526,pc),r4 ; r4 set to 0xCc
	mov.w @(loc_8C0D1528,pc),r0 ; r0 set to 0x158
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.w @r4,r3
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bt loc_8C0D14E4
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D14E4:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D1544,pc),r1 ; r1 set to 0x8C15CAC8
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D14F8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0D1548,pc),r3 ; r3 set to 0x8C034C38
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d151c:
	#data 0x00dc
loc_8c0d151e:
	#data 0x012c
loc_8c0d1520:
	#data 0x01a3
loc_8c0d1522:
	#data 0x1402
loc_8c0d1524:
	#data 0x013d
loc_8c0d1526:
	#data 0x00cc
loc_8c0d1528:
	#data 0x0158
	#align4

loc_8C0D152C:
	#data bank04.loc_8c044F12
loc_8C0D1530:
	#data loc_8c0d1496
loc_8C0D1534:
	#data bank12.loc_8c129560
loc_8C0D1538:
	#data bank12.loc_8c1294C8
loc_8C0D153C:
	#data bank15.loc_8c15caA0
loc_8C0D1540:
	#data bank15.loc_8c15caB0
loc_8C0D1544:
	#data bank15.loc_8c15caC8
loc_8C0D1548:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0D154C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x12C,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d1562
	mov.l @r15,r3
	mov 0x02,r0
	mov.b r0,@(0x4,r3)

loc_8C0D1562:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D156A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D1674,pc),r5 ; r5 set to 0xCc
	mov.w @(loc_8C0D1676,pc),r0 ; r0 set to 0x158
	mov.l @(0x18,r14),r4
	add r14,r5 ; r5 ??? bc r14 is ???
	mov.w @r5,r3
	mov.w @(r0,r4),r2
	cmp/eq r2,r3
	bt/s loc_8C0D158a
	mov 0x02,r6 ; r6 set to 0x02
	mov r6,r0 ; r0 set to 0x02
	nop
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

loc_8C0D158A:
	mov.w @(loc_8C0D1678,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8C0D15A4
	mov r6,r0
	nop
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0D167A,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8C0D15A4:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D1684,pc),r1 ; r1 set to 0x8C15CAD0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D15B8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x16,r5 ; r5 set to 0x16
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x39,r6 ; r6 set to 0x39
	mov.l @(loc_8C0D1688,pc),r3 ; r3 set to 0x8C034E8c
	add 0x01,r0
	mov.l @(0x18,r14),r13
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x02,r7 ; r7 set to 0x02
	mov.l @(loc_8C0D168C,pc),r3 ; r3 set to 0x8C03544c
	mov 0x24,r0 ; r0 set to 0x24
	mov r7,r5 ; r5 set to 0x02
	mov 0x07,r2 ; r2 set to 0x07
	mov.b r2,@(r0,r14)
	mov 0x0C,r6 ; r6 set to 0x0c
	jsr @r3
	mov r13,r4
	mova @(loc_8C0D1690,pc),r0  ; r0 set to 0x8C0D1690
	fmov.s @r0,fr3 ; r3 ??
	mov.w @(loc_8C0D167C,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D1694,pc),r0  ; r0 set to 0x8C0D1694
	fmov.s @r0,fr3
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0D1698,pc),r0  ; r0 set to 0x8C0D1698
	fmov.s @r0,fr2
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r13),fr1
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov 0x06,r0 ; r0 set to 0x06
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C0D169C,pc),r0  ; r0 set to 0x8C0D169c
	fmov.s @r0,fr5 ; r5 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr5,@(r0,r14)
	mova @(loc_8C0D16A0,pc),r0  ; r0 set to 0x8C0D16A0
	fmov.s @r0,fr4
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr5,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0D16A4,pc),r0  ; r0 set to 0x8C0D16A4
	fmov.s @r0,fr1
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s fr1,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1630:
	mov 0x70,r1 ; r1 set to 0x70
	mov.l @(0x18,r4),r5
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fldi1 fr3
	fmov.s fr2,@(r0,r4)
	fmov.s @(r0,r5),fr2
	fcmp/gt fr2,fr3
	bt/s loc_8C0D16A8
	mov 0x02,r6 ; r6 set to 0x02
	mov r6,r0 ; r0 set to 0x02
	nop
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0D167A,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D1674:
	#data 0x00Cc
loc_8C0D1676:
	#data 0x0158
loc_8C0D1678:
	#data 0x01D0
loc_8C0D167A:
	#data 0x012c
loc_8C0D167C:
	#data 0x0108
	#align4

loc_8C0D1680:
	#data bank03.loc_8c034D8c
loc_8C0D1684:
	#data bank15.loc_8c15caD0
loc_8C0D1688:
	#data bank03.loc_8c034e8c
loc_8C0D168C:
	#data bank03.loc_8c03544c
loc_8C0D1690:
	#data 0x3F000000
loc_8C0D1694:
	#data 0x3E99999a
loc_8C0D1698:
	#data 0x3E4CCCCd
loc_8C0D169C:
	#data 0x3D23D70a
loc_8C0D16A0:
	#data 0xBB83126f
loc_8C0D16A4:
	#data 0xC0AB6DB6

;==============================================
loc_8c0d16a8:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0d16ee
	mov 0x03,r0
	mov.w r0,@(0x1C,r4)
	mov r6,r0
	nop
	mov.b r0,@(0x06,r4)
	mova @(loc_8C0D17C4,pc),r0
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0D17C8,pc),r0
	fmov.s @r0,fr2
	mov 0x54,r0
	fmov.s @(r0,r5),fr1
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mova @(loc_8C0D17CC,pc),r0
	fmov.s @r0,fr5
	mov 0x5C,r0
	fmov.s fr5,@(r0,r4)
	mova @(loc_8C0D17D0,pc),r0
	fmov.s @r0,fr4
	mov 0x68,r0
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0
	fmov.s fr5,@(r0,r4)
	mov 0x68,r0
	fmov.s fr4,@(r0,r4)

loc_8c0d16ee:
	rts
	nop

loc_8C0D16F2:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(0x18,r4),r5
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x60,r1 ; r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fldi1 fr3
	fmov.s fr2,@(r0,r4)
	fmov.s @(r0,r5),fr2
	fcmp/gt fr2,fr3
	bt loc_8C0D1724
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0D17BE,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8c0d1724:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0d1768
	mov 0x06,r0
	mov.w r0,@(0x1C,r4)
	mov 0x01,r0
	mov.b r0,@(0x04,r4)
	mova @(loc_8C0D17C4,pc),r0
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0D17C8,pc),r0
	fmov.s @r0,fr2
	mov 0x54,r0
	fmov.s @(r0,r5),fr1
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mova @(loc_8C0D17D4,pc),r0
	fmov.s @r0,fr5
	mov 0x5C,r0
	fmov.s fr5,@(r0,r4)
	mova @(loc_8C0D17D8,pc),r0
	fmov.s @r0,fr4
	mov 0x68,r0
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0
	fmov.s fr5,@(r0,r4)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r4)

loc_8c0d1768:
	rts
	nop

loc_8C0D176C:
	mov 0x02,r0 ; r0 set to 0x02
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0D1772:
	mova @(0x50,PC),r0
	mov.w @(0x48,PC),r3
	mov.l @(0x18,r4),r5
	fmov @r0,fr3
	mov 0x0C,r0
	add r3,r5
	fmov @(r0,r5),fr2
	mov 0x50,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x40,PC),r0
	fmov @r0,fr2
	mov 0x14,r0
	fmov @(r0,r5),fr1
	mov 0x54,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr0
	fldi1 fr1
	fcmp/gt fr0,fr1
	bt loc_8c0d17a8
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r2
	mov.w @(0x16,PC),r0
	mov.b r2,@(r0,r4)

loc_8C0D17A8:
	rts
	nop

;----------------------------------------------
loc_8C0D17AC:
	mov r4,r3
	mov.l @(loc_8C0D17DC,pc),r1 ; r1 set to 0x8C15CAE4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D17BE:
	#data 0x012c
loc_8C0D17C0:
	#data 0x02A4
	#align4

loc_8c0d17c4:
	#data 0x3E99999a
loc_8c0d17c8:
	#data 0x3E4CCCCd
loc_8c0d17cc:
	#data 0xBCA3D70a
loc_8c0d17d0:
	#data 0x3B03126f
loc_8c0d17d4:
	#data 0x3D23D70a
loc_8c0d17d8:
	#data 0xBB83126f
loc_8C0D17DC:
	#data bank15.loc_8c15caE4

;==============================================
loc_8C0D17E0:
	mov.b @(0x06,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(0x18,r4),r5
	add 0x01,r0
	mov.l @(loc_8C0D192C,pc),r2 ; r2 set to 0x8C2659Dc
	mov.b r0,@(0x06,r4)
	mov.w @(loc_8C0D1922,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	add 0x02,r0 ; r0 set to 0x12e
	mov.w @(r0,r5),r4
	mov.l @(loc_8C0D1930,pc),r5 ; r5 set to 0xF000
	mov r4,r3 ; r3 ??? bc r4 is ???
	shll r4
	add r3,r4
	shll2 r4
	shll2 r4
	add r2,r4
	add 0x60,r4
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r3,@(0x08,r4)
	mov.w @(0x12,r4),r0
	or r5,r0 ; r0 ??
	mov.w r0,@(0x12,r4)
	mov.w @(0x14,r4),r0
	or r5,r0
	mov.w r0,@(0x14,r4)
	mov.w @(0x16,r4),r0
	or r5,r0
	mov.l @(loc_8C0D1934,pc),r5 ; r5 set to 0x9FFf
	mov.w r0,@(0x16,r4)
	mov.w @(0x12,r4),r0
	and r5,r0
	mov.w r0,@(0x12,r4)
	mov.w @(0x14,r4),r0
	and r5,r0
	mov.w r0,@(0x14,r4)
	mov.w @(0x16,r4),r0
	and r5,r0
	rts
	mov.w r0,@(0x16,r4)

;----------------------------------------------
loc_8C0D1830:
	mov.w @(0xF0,PC),r6
	mov.w @(0xF0,PC),r0
	mov.l @(0x18,r4),r5
	add r4,r6
	mov.w @r6,r3
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bt loc_8c0d1882
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c0d1882
	cmp/eq 0x08,r0
	bt loc_8c0d1882
	cmp/eq 0x0B,r0
	bt loc_8c0d1882
	mov.w @(0xD0,PC),r0
	mov.l @(0xD0,PC),r2
	mov.w @(r0,r5),r4
	mov.l @(0xD0,PC),r5
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	shll2 r4
	add r2,r4
	add 0x60,r4
	mov 0x01,r3
	mov.l r3,@(0x8,r4)
	mov.w @(0x12,r4),r0
	or r5,r0
	mov.w r0,@(0x12,r4)
	mov.w @(0x14,r4),r0
	or r5,r0
	mov.w r0,@(0x14,r4)
	mov.w @(0x16,r4),r0
	or r5,r0
	mov.w r0,@(0x16,r4)

loc_8C0D1882:
	rts
	nop

;----------------------------------------------
loc_8C0D1886:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D1924,pc),r4 ; r4 set to 0xCc
	mov.w @(loc_8C0D1926,pc),r0 ; r0 set to 0x158
	mov.l @(0x18,r14),r5
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.w @r4,r3
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bt loc_8C0D18A2
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D18A2:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D1938,pc),r1 ; r1 set to 0x8C15CAEc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D18B6:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x34,r8 ; r8 set to 0x34
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D1922,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bt/s loc_8C0D18E0
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C0D193C,pc),r1 ; r1 set to 0x41555555
	lds r1,fpul
	bra loc_8C0D18E6
	fsts fpul,fr3

loc_8C0D18E0:
	mov.l @(loc_8C0D1940,pc),r2 ; r2 set to 0xC1555555
	lds r2,fpul
	fsts fpul,fr3

loc_8C0D18E6:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0D1944,pc),r1 ; r1 set to 0x42A72492, r1 set to 0x42A72492
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fadd fr3,fr2
	mov.l @(loc_8C0D1948,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	lds r1,fpul
	mov 0x22,r6 ; r6 set to 0x22, r6 set to 0x22
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mova @(loc_8C0D194C,pc),r0  ; r0 set to 0x8C0D194C, r0 set to 0x8C0D194c
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	mov 0x07,r3 ; r3 set to 0x07, r3 set to 0x07
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D1950,pc),r0  ; r0 set to 0x8C0D1950, r0 set to 0x8C0D1950
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1922:
	#data 0x012c
loc_8C0D1924:
	#data 0x00Cc
loc_8C0D1926:
	#data 0x0158
loc_8C0D1928:
	#data 0x0159
loc_8C0D192a:
	#data 0x012E
	#align4

loc_8C0D192C:
	#data 0x8C2659Dc
loc_8C0D1930:
	#data 0x0000F000
loc_8C0D1934:
	#data 0x00009FFf
loc_8C0D1938:
	#data bank15.loc_8c15caEc
loc_8C0D193C:
	#data 0x41555555
loc_8C0D1940:
	#data 0xC1555555
loc_8C0D1944:
	#data 0x42A72492
loc_8C0D1948:
	#data bank03.loc_8c034C38
loc_8C0D194C:
	#data 0x3F333333
loc_8C0D1950:
	#data 0x3E99999a

;==============================================
loc_8C0D1954:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d196a
	mov.l @r15,r3
	mov 0x02,r0
	mov.b r0,@(0x4,r3)

loc_8C0D196A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D1972:
	mov.w @(loc_8C0D1A6A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r14,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r4)
	add 0x15,r0 ; r0 set to 0x141
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	cmp/eq 0x02,r0
	bf loc_8C0D1990
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0D19Ee
	mov.b r0,@(0x04,r4)

loc_8C0D1990:
	mov.w @(loc_8C0D1A6C,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	cmp/eq 0x03,r0
	bf loc_8C0D19Ee
	mov.w @(loc_8C0D1A6E,pc),r0 ; r0 set to 0x1C8
	mov.l @(loc_8C0D1A84,pc),r3 ; r3 set to 0x8C03319e
	mov.l @(r0,r5),r14
	mova @(loc_8C0D1A7C,pc),r0  ; r0 set to 0x8C0D1A7c
	fmov.s @r0,fr14
	mova @(loc_8C0D1A80,pc),r0  ; r0 set to 0x8C0D1A80
	jsr @r3
	fmov.s @r0,fr15
	and 0x03,r0
	cmp/eq 0x00,r0
	bt loc_8C0D19Be
	cmp/eq 0x01,r0
	bt loc_8C0D19C6
	cmp/eq 0x02,r0
	bt loc_8C0D19Ce
	cmp/eq 0x03,r0
	bt loc_8C0D19De
	bra loc_8C0D19Ee
	nop

loc_8C0D19BE:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0D19D4
	fadd fr15,fr3

loc_8C0D19C6:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0D19E4
	fsub fr15,fr3

loc_8c0d19ce:
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fsub fr15,fr3

loc_8C0D19D4:
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	bra loc_8C0D19Ec
	fadd fr14,fr2

loc_8c0d19de:
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fadd fr15,fr3

loc_8c0d19e4:
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fsub fr14,fr2

loc_8c0d19ec:
	fmov.s fr2,@(r0,r14)

loc_8C0D19EE:
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D19F8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D1A70,pc),r4 ; r4 set to 0xCc
	mov.l r13,@-r15
	mov.w @(loc_8C0D1A72,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.w @r4,r3
	mov.w @(r0,r13),r2
	cmp/eq r2,r3
	bt loc_8C0D1A16
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0D1A30
	mov.b r0,@(0x04,r14)

loc_8C0D1A16:
	mov.b @(0x06,r14),r0
	mov.l @(loc_8C0D1A88,pc),r1 ; r1 set to 0x8C15CAF4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r3
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)

loc_8C0D1A30:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1A38:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0D1A8C,pc),r3 ; r3 set to 0x8C034C38
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0D1A90,pc),r1 ; r1 set to 0x431A4924
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0D1A74,pc),r0 ; r0 set to 0x130
	lds r1,fpul
	mov.w r2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1A6A:
	#data 0x012c
loc_8C0D1A6C:
	#data 0x0141
loc_8C0D1A6E:
	#data 0x01C8
loc_8C0D1A70:
	#data 0x00Cc
loc_8C0D1A72:
	#data 0x0158
loc_8C0D1A74:
	#data 0x0130
	#align4

loc_8C0D1A78:
	#data bank03.loc_8c034D8c
loc_8C0D1A7C:
	#data 0x3F092492
loc_8C0D1A80:
	#data 0x3ED55555
loc_8C0D1A84:
	#data bank03.loc_8c03319e
loc_8C0D1A88:
	#data bank15.loc_8c15caF4
loc_8C0D1A8C:
	#data bank03.loc_8c034C38
loc_8C0D1A90:
	#data 0x431A4924

;==============================================
loc_8C0D1A94:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0
	mov.l @(0x44,PC),r1
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	lds r1,fpul
	fmov @(r0,r4),fr3
	mov.l @(0x3C,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d1ac0
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0D1AC0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1AC6:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D1ADE,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D1AD4:
	mov.l @(loc_8C0D1AE8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0D1ADA:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D1ADE:
	#data 0x012c
	#align4

loc_8C0D1AE0:
	#data 0x3F092492
loc_8C0D1AE4:
	#data bank03.loc_8c034D8c
loc_8C0D1AE8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0D1AEC:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x110,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d1b18
	mov r0,r4
	mov.l @(0x100,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0xE8,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0d1b18:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D1B20:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D1C0C,pc),r0 ; r0 set to 0x8C15CAFc
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D1B34:
	mov r4,r3
	mov.l @(loc_8C0D1C10,pc),r1 ; r1 set to 0x8C15CB0c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D1B46:
	mov.w @(loc_8C0D1BFE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D1C14,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D1BFE,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D1C00,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D1C02,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D1C18,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bt/s loc_8C0D1BBe
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x06,r7 ; r7 set to 0x06
	bra loc_8C0D1BC2
	mov 0x10,r6

loc_8C0D1BBE:
	mov 0x0A,r6 ; r6 set to 0x0a
	mov 0x06,r7 ; r7 set to 0x06

loc_8C0D1BC2:
	mov.l @(loc_8C0D1C1C,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0D1BC8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d1be4
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1C,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0D1BE4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1BEA:
	mov r4,r3
	mov.l @(loc_8C0D1C24,pc),r1 ; r1 set to 0x8C15CB1c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D1BFC:
	#data 0x1500
loc_8C0D1BFE:
	#data 0x00Dc
loc_8C0D1C00:
	#data 0x012c
loc_8C0D1C02:
	#data 0x01A3
	#align4

loc_8C0D1C04:
	#data bank04.loc_8c044F12
loc_8C0D1C08:
	#data loc_8c0d1B20
loc_8C0D1C0C:
	#data bank15.loc_8c15caFc
loc_8C0D1C10:
	#data bank15.loc_8c15cb0c
loc_8C0D1C14:
	#data bank12.loc_8c129560
loc_8C0D1C18:
	#data bank12.loc_8c1294C8
loc_8C0D1C1C:
	#data bank03.loc_8c034F54
loc_8C0D1C20:
	#data bank03.loc_8c034dee
loc_8C0D1C24:
	#data bank15.loc_8c15cb1c

;==============================================
loc_8C0D1C28:
	mov.w @(loc_8C0D1D30,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D1D3C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D1D30,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D1D32,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D1D34,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D1D40,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x07,r2 ; r2 set to 0x07
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_8C0D1D44,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x0B,r6 ; r6 set to 0x0b
	mov.b r2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0D1C9C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov.l @(0x18,r14),r4
	extu.b r0,r0
	mov.w @(loc_8C0D1D36,pc),r3 ; r3 set to 0x2A4
	cmp/eq 0x00,r0
	bt/s loc_8C0D1CC0
	add r3,r4
	cmp/eq 0x01,r0
	bt loc_8C0D1CE0
	cmp/eq 0x02,r0
	bt loc_8C0D1D0c
	cmp/eq 0x03,r0
	bt loc_8C0D1D62
	bra loc_8C0D1D7a
	nop

loc_8C0D1CC0:
	mov.l @(loc_8C0D1D48,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0D1D38,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0D1D7a
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D1D4C,pc),r3 ; r3 set to 0x8C0D1FD4
	mov 0x02,r5 ; r5 set to 0x02
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0D1CE0:
	mov.b @(0x01,r4),r0
	tst r0,r0
	bt loc_8C0D1CF6
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3
	bra loc_8C0D1D7a
	fmov.s fr3,@(r0,r14)

loc_8C0D1CF6:
	mov.w @(loc_8C0D1D3A,pc),r0 ; r0 set to 0x1D0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8C0D1D1e
	mov.b @(0x05,r4),r0
	tst r0,r0
	bt loc_8C0D1D7a
	bra loc_8C0D1D1e
	nop

loc_8c0d1d0c:
	mov.w @(loc_8c0d1d3a,pc),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d1d1e
	mov.b @(0x05,r4),r0
	tst r0,r0
	bt loc_8c0d1d50

loc_8C0D1D1E:
	mov.l @(loc_8C0D1D44,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x03,r0 ; r0 set to 0x03
	mov r14,r4
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	mov 0x0D,r6 ; r6 set to 0x0d
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D1D30:
	#data 0x00Dc
loc_8C0D1D32:
	#data 0x012c
loc_8C0D1D34:
	#data 0x01A3
loc_8C0D1D36:
	#data 0x02A4
loc_8C0D1D38:
	#data 0x0141
loc_8C0D1D3A:
	#data 0x01D0
	#align4

loc_8C0D1D3C:
	#data bank12.loc_8c129560
loc_8C0D1D40:
	#data bank12.loc_8c1294C8
loc_8C0D1D44:
	#data bank03.loc_8c034e8c
loc_8C0D1D48:
	#data bank03.loc_8c034dee
loc_8C0D1D4C:
	#data loc_8c0d1FD4

;==============================================
loc_8C0D1D50:
	mov.w @(0x11E,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w @(0x11A,PC),r2
	extu.w r3,r3
	cmp/eq r2,r3
	bt loc_8c0d1d6e
	bra loc_8c0d1d7a
	nop

;==============================================
loc_8c0d1d62:
	mov.l @(loc_8c0d1e84,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d1d7a

loc_8c0d1d6e:
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D1E76,pc),r0
	mov.b r3,@(r0,r14)

loc_8C0D1D7A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0D1D80:
	mov.w @(0xF2,PC),r0
	mov 0x00,r2
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf.s loc_8c0d1e0e
	mov 0x01,r7
	mov.b @(0x4,r4),r0
	mov.w @(0xE0,PC),r1
	add 0x01,r0
	mov.l @(0xEC,PC),r3
	mov.b r0,@(0x4,r4)
	add r4,r1
	mov.w @(0xD6,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xCA,PC),r0
	mov r4,r1
	add 0x50,r1
	mov.b r7,@(r0,r4)
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
	mov.w @(0xAA,PC),r0
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
	add 0x50,r2
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x82,PC),r0
	mov.l @(0x18,r4),r2
	mov.l @(r0,r2),r3
	add 0xDC,r0
	mov.w @(0x7C,PC),r2
	mov.b @(r0,r3),r1
	mov 0x07,r3
	mov.b r1,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r2,@(r0,r4)

loc_8C0D1E0E:
	mov.l @(0x18,r4),r2
	mov r4,r1
	mov.l @(0x78,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x60,PC),r0
	mov.l @(0x18,r4),r6
	mov.b @(r0,r6),r5
	extu.b r5,r3
	tst r3,r3
	bt loc_8c0d1e32
	mov.w @(0x56,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x0F,r0
	bt loc_8c0d1e38

loc_8C0D1E32:
	lds.l @r15+,pr
	bra loc_8c0d1f6e
	mov.l @r15+,r14

loc_8C0D1E38:
	mov.w @(0x3A,PC),r0
	extu.b r5,r14
	mov.b r7,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/eq r3,r14
	bt loc_8c0d1e5a
	mov.l @(0x44,PC),r3
	mov r14,r7
	mov.b r5,@(r0,r4)
	mov 0x1B,r5
	lds.l @r15+,pr
	add 0xFF,r7
	mov 0x00,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0D1E5A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1E60:
	mov r4,r3
	mov.l @(loc_8C0D1E94,pc),r1 ; r1 set to 0x8C15CB2c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d1e72:
	#data 0x0158
loc_8c0d1e74:
	#data 0x150b
loc_8c0d1e76:
	#data 0x012c
loc_8c0d1e78:
	#data 0x00dc
loc_8c0d1e7a:
	#data 0x01a3
loc_8c0d1e7c:
	#data 0x01c8
loc_8c0d1e7e:
	#data 0x00ff
loc_8c0d1e80:
	#data 0x0140
loc_8c0d1e82:
	#data 0x0159
	#align4

loc_8C0D1E84:
	#data bank03.loc_8c034dee
loc_8C0D1E88:
	#data bank12.loc_8c129560
loc_8C0D1E8C:
	#data bank12.loc_8c1294C8
loc_8C0D1E90:
	#data bank03.loc_8c034CD6
loc_8C0D1E94:
	#data bank15.loc_8c15cb2c

;==============================================
loc_8C0D1E98:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xD4,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xD8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC6,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xBE,PC),r0
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
	mov.w @(0x9A,PC),r0
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
	mov.l @(0x8C,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x00,r2
	mov.b @(r0,r1),r3
	mov 0x15,r5
	mov.l @(0x80,PC),r3
	mov 0x0A,r6
	mov.b r2,@(r0,r14)
	mov 0x06,r7
	jsr @r3
	mov r14,r4
	mov.w @(0x64,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d1f20
	mov.w @(0x5E,PC),r3
	mov 0x48,r0
	mov.l r3,@(r0,r14)

loc_8C0D1F20:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1F26:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D1F8C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0D1F44
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D1F76,pc),r0 ; r0 set to 0x12c
	bra loc_8C0D1F5a
	mov.b r3,@(r0,r14)

loc_8C0D1F44:
	mov.w @(loc_8C0D1F7A,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8C0D1F54
	mov.w @(loc_8C0D1F7C,pc),r2 ; r2 set to 0xF000
	mov 0x48,r0 ; r0 set to 0x48
	bra loc_8C0D1F5a
	mov.l r2,@(r0,r14)

loc_8C0D1F54:
	mov 0x48,r0 ; r0 set to 0x48
	mov 0x00,r1 ; r1 set to 0x00
	mov.l r1,@(r0,r14)

loc_8C0D1F5A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D1F60:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D1F76,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D1F6E:
mov.l @(loc_8C0D1F90,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D1F74:
	#data 0x00Dc
loc_8C0D1F76:
	#data 0x012c
loc_8C0D1F78:
	#data 0x01A3
loc_8C0D1F7A:
	#data 0x0140
loc_8C0D1F7C:
	#data 0xF000
	#align4

loc_8C0D1F80:
	#data bank12.loc_8c129560
loc_8C0D1F84:
	#data bank12.loc_8c1294C8
loc_8C0D1F88:
	#data bank03.loc_8c034F54
loc_8C0D1F8C:
	#data bank03.loc_8c034dee
loc_8C0D1F90:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d1f94:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x134,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d1fcc
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x124,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x110,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0d1fcc:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D1FD4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x03,r5
	mov.l @(0xF4,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d2008
	mov r0,r4
	mov.l @(0xE8,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x14,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.w @(0xC8,PC),r3
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0D2008:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D2014:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D20DC,pc),r0 ; r0 set to 0x8C15CB3c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D2028:
	bra loc_8C0D243a
	nop

;==============================================
loc_8C0D202C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0D2046
	cmp/eq 0x01,r0
	bt loc_8C0D20Ec
	cmp/eq 0x02,r0
	bt loc_8C0D2100
	bra loc_8C0D2108
	nop

loc_8C0D2046:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0D20CE,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0D20E0,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0D20CE,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D20D0,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(loc_8C0D20D2,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D20E4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x02,r6 ; r6 set to 0x02
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0D20D0,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0D20E8,pc),r3 ; r3 set to 0x8C034C38
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(loc_8C0D20E4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C0D2108
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D20CC:
	#data 0x1501
loc_8C0D20CE:
	#data 0x00Dc
loc_8C0D20D0:
	#data 0x012c
loc_8C0D20D2:
	#data 0x01A3
	#align4

loc_8C0D20D4:
	#data bank04.loc_8c044F12
loc_8C0D20D8:
	#data loc_8c0d2014
loc_8C0D20DC:
	#data bank15.loc_8c15cb3c
loc_8C0D20E0:
	#data bank12.loc_8c129560
loc_8C0D20E4:
	#data bank12.loc_8c1294C8
loc_8C0D20E8:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0D20EC:
	mov.l @(loc_8C0D21F0,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0D2108
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D242c
	mov.l @r15+,r14

loc_8C0D2100:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D243a
	mov.l @r15+,r14

loc_8C0D2108:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D210E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0D2128
	cmp/eq 0x01,r0
	bt loc_8C0D21B2
	cmp/eq 0x02,r0
	bt loc_8C0D21D6
	bra loc_8C0D21De
	nop

loc_8C0D2128:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0D21E4,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0D21F4,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0D21E4,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D21E6,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(loc_8C0D21E8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D21F8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x04,r6 ; r6 set to 0x04
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0D21E6,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0D21FC,pc),r3 ; r3 set to 0x8C034C38
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(loc_8C0D21F8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r1 ; r1 set to 0x00
	bra loc_8C0D21De
	mov.b r1,@(r0,r14)

loc_8c0d21b2:
	mov.w @(loc_8C0D21EA,pc),r5
	mov.l @(0x14,r14),r4
	add r4,r5
	mov.b @(0x01,r5),r0
	tst r0,r0
	bf loc_8c0d21ce
	mov.w @(loc_8C0D21EC,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d21ce
	mov.b @(0x05,r4),r0
	tst r0,r0
	bt loc_8c0d21de

loc_8c0d21ce:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0d242c
	mov.l @r15+,r14

loc_8C0D21D6:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D243a
	mov.l @r15+,r14

loc_8C0D21DE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D21E4:
	#data 0x00Dc
loc_8C0D21E6:
	#data 0x012c
loc_8C0D21E8:
	#data 0x01A3
loc_8c0d21ea:
	#data 0x02A4
loc_8c0d21ec:
	#data 0x01D0
	#align4

loc_8C0D21F0:
	#data bank03.loc_8c034D8c
loc_8C0D21F4:
	#data bank12.loc_8c129560
loc_8C0D21F8:
	#data bank12.loc_8c1294C8
loc_8C0D21FC:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0D2200:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0 ; r0 set to 0x20
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r13
	mov.b @(0x04,r14),r0
	mov.l @(0x18,r14),r12
	mov.w @(loc_8C0D2338,pc),r4 ; r4 set to 0x2A4
	extu.b r0,r0 ; r0 set to 0x20
	mov.w @(loc_8C0D233A,pc),r3 ; r3 set to 0xFd
	cmp/eq 0x00,r0
	add r12,r4 ; r4 ??? bc r12 is ???
	bt/s loc_8C0D2230
	add r3,r13
	cmp/eq 0x01,r0
	bt loc_8C0D22F8
	cmp/eq 0x02,r0
	bf loc_8C0D222c
	bra loc_8C0D232c
	nop

loc_8C0D222C:
	bra loc_8C0D235c
	nop

loc_8C0D2230:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0D233C,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0D2348,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0D233C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D233E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(loc_8C0D2340,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D234C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov r13,r6
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	add 0x05,r6
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0D233E,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0D2350,pc),r3 ; r3 set to 0x8C034C38
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0D234C,pc),r3 ; r3 set to 0x8C1294C8
	mov 0x00,r2 ; r2 set to 0x00
	mov r14,r1
	mov.b r2,@(r0,r14)
	mov r12,r2 ; r2 ??? bc r12 is ???
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0D2342,pc),r0 ; r0 set to 0x130
	extu.b r13,r4
	mov.l @(loc_8C0D2354,pc),r5 ; r5 set to 0x8C13B15c
	shll2 r4
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	shll r4
	tst r3,r3
	bt/s loc_8C0D22D6
	add r5,r4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r4,fr3
	fmov.s @(r0,r14),fr2
	bra loc_8C0D22De
	fsub fr3,fr2

loc_8C0D22D6:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r4,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2

loc_8C0D22DE:
	extu.b r13,r13
	fmov.s fr2,@(r0,r14)
	shll2 r13
	shll r13
	add r5,r13
	mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
	add r13,r1 ; r1 ??? bc r13 is ???, r1 ??? bc r13 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	bra loc_8C0D235c
	fmov.s fr2,@(r0,r14)

loc_8c0d22f8:
	mov.b @(0x03,r4),r0
	tst r0,r0
	bf loc_8c0d230e
	mov.w @(loc_8C0D2344,pc),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d230e
	mov.b @(0x05,r12),r0
	tst r0,r0
	bt loc_8c0d231a

loc_8c0d230e:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0d242c
	mov.l @r15+,r14

loc_8c0d231a:
	mov.l @(loc_8c0d2358,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d235c
	mov 0x00,r0
	bra loc_8c0d235c
	mov.b r0,@(0x04,r14)

loc_8C0D232C:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0D243a
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D2338:
	#data 0x02A4
loc_8C0D233A:
	#data 0x00Fd
loc_8C0D233C:
	#data 0x00Dc
loc_8C0D233E:
	#data 0x012c
loc_8C0D2340:
	#data 0x01A3
loc_8C0D2342:
	#data 0x0130
loc_8c0d2344:
	#data 0x01D0
	#align4

loc_8C0D2348:
	#data bank12.loc_8c129560
loc_8C0D234C:
	#data bank12.loc_8c1294C8
loc_8C0D2350:
	#data bank03.loc_8c034C38
loc_8C0D2354:
	#data bank13.loc_8c13B15c
loc_8C0D2358:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0D235C:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D2366:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0D2380
	cmp/eq 0x01,r0
	bt loc_8C0D240a
	cmp/eq 0x02,r0
	bt loc_8C0D241e
	bra loc_8C0D2426
	nop

loc_8C0D2380:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0D2440,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0D2448,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0D2440,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D2442,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(loc_8C0D2444,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D244C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x0A,r6 ; r6 set to 0x0a
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0D2442,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0D2450,pc),r3 ; r3 set to 0x8C034C38
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(loc_8C0D244C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r1 ; r1 set to 0x00
	bra loc_8C0D2426
	mov.b r1,@(r0,r14)

loc_8C0D240A:
	mov.l @(loc_8C0D2454,pc),r2 ; r2 set to 0x8C034D8c
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0D2426
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D242c
	mov.l @r15+,r14

loc_8C0D241E:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D243a
	mov.l @r15+,r14

loc_8C0D2426:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D242C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D2442,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D243A:
	mov.l @(loc_8C0D2458,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D2440:
	#data 0x00Dc
loc_8C0D2442:
	#data 0x012c
loc_8C0D2444:
	#data 0x01A3
	#align4

loc_8C0D2448:
	#data bank12.loc_8c129560
loc_8C0D244C:
	#data bank12.loc_8c1294C8
loc_8C0D2450:
	#data bank03.loc_8c034C38
loc_8C0D2454:
	#data bank03.loc_8c034D8c
loc_8C0D2458:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d245c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d2486
	mov r0,r4
	mov.l @(0x124,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x10E,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0d2486:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D248E:
	mov r4,r3
	mov.l @(loc_8C0D259C,pc),r1 ; r1 set to 0x8C15CB60
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D24A0:
	mov.w @(loc_8C0D258A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D25A0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D258A,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D258C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D258E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D25A4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov r4,r1
	mov.b r2,@(r0,r4)
	add 0x34,r1
	mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???
	mov.l @(loc_8C0D25A4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0D25A8,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x03,r6 ; r6 set to 0x03
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C0D2522:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0d2538
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0d253e

loc_8C0D2538:
	mov 0x02,r0
	bra loc_8c0d254e
	mov.b r0,@(0x4,r14)

loc_8C0D253E:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x68,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D254E:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D2552:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D25B0,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r5,r13
	mov.w @(loc_8C0D2592,pc),r0 ; r0 set to 0x14f
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8C0D25E0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8C0D25Bc
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mova @(loc_8C0D25B4,pc),r0  ; r0 set to 0x8C0D25B4
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D25B8,pc),r0  ; r0 set to 0x8C0D25B8
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	bra loc_8C0D25E0
	fmov.s fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D2588:
	#data 0x1502
loc_8C0D258A:
	#data 0x00Dc
loc_8C0D258C:
	#data 0x012c
loc_8C0D258E:
	#data 0x01A3
loc_8C0D2590:
	#data 0x01D0
loc_8C0D2592:
	#data 0x014f
	#align4

loc_8C0D2594:
	#data bank04.loc_8c044F12
loc_8C0D2598:
	#data loc_8c0d248e
loc_8C0D259C:
	#data bank15.loc_8c15cb60
loc_8C0D25A0:
	#data bank12.loc_8c129560
loc_8C0D25A4:
	#data bank12.loc_8c1294C8
loc_8C0D25A8:
	#data bank03.loc_8c034C38
loc_8C0D25AC:
	#data bank15.loc_8c15cb70
loc_8C0D25B0:
	#data bank03.loc_8c034D8c
loc_8C0D25B4:
	#data 0x42092492
loc_8C0D25B8:
	#data 0x3E892492

;==============================================
loc_8c0d25bc:
	mov.w @(loc_8C0D26C2,pc),r0
	mov.b @(r0,r13),r2
	mov.l @(loc_8c0d26c8,pc),r0
	extu.b r2,r2
	shll r2
	mov.w @(r0,r2),r3
	mova @(loc_8C0D26CC,pc),r0
	fmov.s @r0,fr2
	mova @(loc_8C0D26D0,pc),r0
	lds r3,fpul
	fmov.s @r0,fr1
	mov 0x38,r0
	fmov.s @(r0,r13),fr0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr3,fr0
	fmov.s fr0,@(r0,r14)

loc_8C0D25E0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D25E8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r4,r14
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
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mova @(0xC4,PC),r0
	fmov @r0,fr2
	fcmp/gt fr2,fr3
	bf loc_8c0d2626
	mov.b @(0x5,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x9E,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0D2626:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D262C:
	mov.b @(0x6,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0d266c
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	fldi1 fr1
	fadd fr1,fr1
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x80,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x15,r0
	mov.w r0,@(0x1C,r4)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr4
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fsub fr3,fr2
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmul fr4,fr3
	fdiv fr4,fr2
	fdiv fr1,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C0D266C:
	rts
	nop

;----------------------------------------------
loc_8C0D2670:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r4,r14
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bt loc_8c0d26a8
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0D26A8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D26AE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D26C4,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D26BC:
	mov.l @(loc_8C0D26E4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d26c2:
	#data 0x014f
loc_8C0D26C4:
	#data 0x012c
	#align4

loc_8C0D26C8:
	#data bank15.loc_8c15cb80
loc_8c0d26cc:
	#data 0x40092492
loc_8c0d26d0:
	#data 0x43800000
loc_8C0D26D4:
	#data bank03.loc_8c034D8c
loc_8C0D26D8:
	#data 0x448D6DB7
loc_8C0D26Dc:
	#data 0xBF892492
loc_8C0D26e0:
	#data 0x41A80000
loc_8C0D26E4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0D26E8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x12C,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d2712
	mov r0,r4
	mov.l @(0x120,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x10A,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0D2712:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D271A:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x18,r4),r3
	mov.l r3,@r15
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C0D273c
	mov 0x00,r5 ; r5 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C0D27A6
	cmp/eq 0x02,r0
	bt loc_8C0D27B2
	cmp/eq 0x03,r0
	bt loc_8C0D27B8
	bra loc_8C0D27Be
	nop

loc_8C0D273C:
	mov.b @(0x04,r4),r0
	mov.w @(loc_8C0D2812,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0D2824,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r4)
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0D2812,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D2814,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D2816,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D2828,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0D2814,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)

loc_8C0D27A6:
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov.l @r15,r5
	add 0x04,r15
	bra loc_8C0D27C6
	lds.l @r15+,pr

loc_8C0D27B2:
	add 0x04,r15
	bra loc_8C0D28B2
	lds.l @r15+,pr

loc_8C0D27B8:
	add 0x04,r15
	bra loc_8C0D28C0
	lds.l @r15+,pr

loc_8C0D27BE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D27C6:
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0D27D8
	cmp/eq 0x01,r0
	bt loc_8C0D27Dc
	bra loc_8C0D282c
	nop

loc_8C0D27D8:
	bra loc_8C0D2832
	lds.l @r15+,pr

loc_8C0D27DC:
	mov r5,r2
	mov.l @(loc_8C0D2828,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0D2818,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r2
	mov.w r2,@(r0,r4)
	add 0x1B,r0 ; r0 set to 0x14b
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r2
	cmp/eq r2,r3
	bt loc_8C0D282c
	mov 0x00,r6 ; r6 set to 0x00
	mov r6,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0D2814,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r6,@(r0,r4)
	bra loc_8C0D2832
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D2810:
	#data 0x1503
loc_8C0D2812:
	#data 0x00Dc
loc_8C0D2814:
	#data 0x012c
loc_8C0D2816:
	#data 0x01A3
loc_8C0D2818:
	#data 0x0130
	#align4

loc_8C0D281C:
	#data bank04.loc_8c044F12
loc_8C0D2820:
	#data loc_8c0d271a
loc_8C0D2824:
	#data bank12.loc_8c129560
loc_8C0D2828:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0D282C:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D2832:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D28C8,pc),r0 ; r0 set to 0x14b
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.w @(loc_8C0D28C6,pc),r4 ; r4 set to 0x80
	extu.b r3,r3
	cmp/ge r4,r3
	bf loc_8C0D28Aa
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov r13,r2
	mov r14,r1
	add 0x01,r0 ; r0 set to 0x14c
	mov.b r0,@(0x05,r14)
	add 0x34,r2
	mov.w @(loc_8C0D28CA,pc),r0 ; r0 set to 0x12c
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0D28D0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0D28C8,pc),r0 ; r0 set to 0x14b
	mov.b @(r0,r13),r2
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0D28C8,pc),r0 ; r0 set to 0x14b
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	add r3,r4 ; r4 ??? bc r3 is ???
	extu.b r4,r7
	mov r7,r0 ; r0 ??? bc r7 is ???
	nop
	cmp/eq 0x12,r0
	bf/s loc_8C0D2894
	mov 0x01,r6 ; r6 set to 0x01
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x07,r2 ; r2 set to 0x07
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b @(r0,r13),r3
	add 0x08,r3
	mov.b r3,@(r0,r14)
	mov 0x7F,r3 ; r3 set to 0x7f
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	and r3,r2
	bra loc_8C0D289c
	mov.b r2,@(r0,r14)

loc_8c0d2894:
	mov 0x24,r1
	add r14,r1
	mov 0x00,r0
	mov.b r0,@r1

loc_8c0d289c:
	mov.l @(loc_8c0d28d4,pc),r3
	mov 0x1B,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0D28CC,pc),r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)

loc_8C0D28AA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D28B2:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D28CA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D28C0:
	mov.l @(loc_8C0D28D8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D28C6:
	#data 0x0080
loc_8C0D28C8:
	#data 0x014b
loc_8C0D28CA:
	#data 0x012c
loc_8c0d28cc:
	#data 0x0130
	#align4

loc_8C0D28D0:
	#data bank12.loc_8c1294C8
loc_8C0D28D4:
	#data bank03.loc_8c034CD6
loc_8C0D28D8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d28dc:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x150,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d2908
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x124,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0d2908:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D2910:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D2A3C,pc),r0 ; r0 set to 0x8C15CB88
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D2924:
	mov r4,r3
	mov.l @(loc_8C0D2A40,pc),r1 ; r1 set to 0x8C15CB90
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D2936:
	mov.w @(loc_8C0D2A2A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D2A44,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D2A2A,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D2A2C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D2A2E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D2A48,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x07,r2 ; r2 set to 0x07
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
	mov.b r2,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x04,r6 ; r6 set to 0x04
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0D2A4C,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0D29C0:
mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D2A50,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0D2A22
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D2A30,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_8C0D29E4
	mova @(loc_8C0D2A54,pc),r0  ; r0 set to 0x8C0D2A54
	bra loc_8C0D29E8
	fmov.s @r0,fr3

loc_8C0D29E4:
	mova @(loc_8C0D2A58,pc),r0  ; r0 init to 0x8C0D2A58
	fmov.s @r0,fr3

loc_8C0D29E8:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0D2A4C,pc),r1 ; r1 set to 0x8C034C38, r1 set to 0x8C034C38
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fldi0 fr3
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D2A5C,pc),r0  ; r0 set to 0x8C0D2A5C, r0 set to 0x8C0D2A5c
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D2A60,pc),r0  ; r0 set to 0x8C0D2A60, r0 set to 0x8C0D2A60
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0D2A30,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	jsr @r1
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0D2A64,pc),r3 ; r3 set to 0x8C04223A, r3 set to 0x8C04223a
	mov 0x2F,r5 ; r5 set to 0x2F, r5 set to 0x2f
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0D2A22:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d2a28:
	#data 0x1600
loc_8C0D2A2A:
	#data 0x00Dc
loc_8C0D2A2C:
	#data 0x012c
loc_8C0D2A2E:
	#data 0x01A3
loc_8C0D2A30:
	#data 0x0130
	#align4

loc_8C0D2A34:
	#data bank04.loc_8c044F12
loc_8C0D2A38:
	#data loc_8c0d2910
loc_8C0D2A3C:
	#data bank15.loc_8c15cb88
loc_8C0D2A40:
	#data bank15.loc_8c15cb90
loc_8C0D2A44:
	#data bank12.loc_8c129560
loc_8C0D2A48:
	#data bank12.loc_8c1294C8
loc_8C0D2A4C:
	#data bank03.loc_8c034C38
loc_8C0D2A50:
	#data bank03.loc_8c034D8c
loc_8C0D2A54:
	#data 0x40200000
loc_8C0D2A58:
	#data 0xC0555555
loc_8C0D2A5C:
	#data 0x41892492
loc_8C0D2A60:
	#data 0xBF092492
loc_8C0D2A64:
	#data bank04.loc_8c04223a

;==============================================
loc_8C0D2A68:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D2BAC,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l @(0x18,r14),r13
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
	mov.w @(loc_8C0D2BA6,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0D2ADe
	mov.b @(0x04,r14),r0
	mov 0x1E,r5 ; r5 set to 0x1e
	mov.l @(loc_8C0D2BB4,pc),r3 ; r3 set to 0x8C042008
	mov r14,r4
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D2BA6,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D2BB0,pc),r0  ; r0 set to 0x8C0D2BB0
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0D2ADE:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D2AE6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D2BAC,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l @(0x18,r14),r13
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
	mov.w @(loc_8C0D2BA6,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8C0D2B5e
	mov.b @(0x04,r14),r0
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0D2BB8,pc),r3 ; r3 set to 0x8C034C38
	mov 0x06,r6 ; r6 set to 0x06
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D2BA6,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0D2BB4,pc),r2 ; r2 set to 0x8C042008
	mov r14,r4
	mov 0x1E,r5 ; r5 set to 0x1e
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0D2B5E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D2B66:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D2BAC,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	mov.l @(loc_8C0D2BBC,pc),r1 ; r1 set to 0x3C449BA6
	mov.w @(loc_8C0D2BA8,pc),r0 ; r0 set to 0x108
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8C0D2B8e
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D2C98
	mov.l @r15+,r14

loc_8C0D2B8E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0D2B94:
	mov r4,r3
	mov.l @(loc_8C0D2BC0,pc),r1 ; r1 set to 0x8C15CBAc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D2BA6:
	#data 0x041c
loc_8C0D2BA8:
	#data 0x0108
	#align4

loc_8C0D2BAC:
	#data bank03.loc_8c034D8c
loc_8C0D2BB0:
	#data 0x41092492
loc_8C0D2BB4:
	#data bank04.loc_8c042008
loc_8C0D2BB8:
	#data bank03.loc_8c034C38
loc_8C0D2BBC:
	#data 0x3C449BA6
loc_8C0D2BC0:
	#data bank15.loc_8c15cbAc

;==============================================
loc_8C0D2BC4:
mov.w @(loc_8C0D2CAA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D2CB4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D2CAA,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D2CAC,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D2CAE,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D2CB8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x07,r2 ; r2 set to 0x07
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r2,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x13,r6 ; r6 set to 0x13
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0D2CB0,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(loc_8C0D2CBC,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0D2C50:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0D2C76
	mov.l @(loc_8C0D2CC0,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0D2C92
	mov.b @(0x05,r14),r0
	fldi1 fr3
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0D2CB2,pc),r0 ; r0 set to 0x108
	bra loc_8C0D2C92
	fmov.s fr3,@(r0,r14)

loc_8C0D2C76:
	mov.l @(loc_8C0D2CC4,pc),r1 ; r1 set to 0x3D4CCCCd
	mov.w @(loc_8C0D2CB2,pc),r0 ; r0 set to 0x108
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt/s loc_8C0D2C92
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D2C98
	mov.l @r15+,r14

loc_8C0D2C92:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D2C98:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D2CAC,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	
loc_8C0D2CA4:
	mov.l @(loc_8C0D2CC8,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D2CAA:
	#data 0x00Dc
loc_8C0D2CAC:
	#data 0x012c
loc_8C0D2CAE:
	#data 0x01A3
loc_8C0D2CB0:
	#data 0x041c
loc_8C0D2CB2:
	#data 0x0108
	#align4

loc_8C0D2CB4:
	#data bank12.loc_8c129560
loc_8C0D2CB8:
	#data bank12.loc_8c1294C8
loc_8C0D2CBC:
	#data bank03.loc_8c034C38
loc_8C0D2CC0:
	#data bank03.loc_8c034D8c
loc_8C0D2CC4:
	#data 0x3D4CCCCd
loc_8C0D2CC8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d2ccc:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x178,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d2cf8
	mov r0,r4
	mov.l @(0x168,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.w @(0x154,PC),r3
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8c0d2cf8:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D2D00:
	mov r4,r3
	mov.l @(loc_8C0D2E54,pc),r1 ; r1 set to 0x8C15CBBc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D2D12:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D2E58,pc),r0 ; r0 set to 0x8C15CBCc
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D2D26:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D2E46,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0D2E5C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D2E46,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D2E48,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(loc_8C0D2E4A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D2E60,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x00,r6 ; r6 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0D2E48,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0D2E64,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D2F02
	mov.l @r15+,r14

loc_8C0D2DBE:
	mov.w @(loc_8C0D2E46,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D2E5C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D2E46,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D2E48,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???
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
	mov.w @(loc_8C0D2E4A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D2E60,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0D2E48,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	bra loc_8C0D2F32
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D2E44:
	#data 0x1601
loc_8C0D2E46:
	#data 0x00Dc
loc_8C0D2E48:
	#data 0x012c
loc_8C0D2E4A:
	#data 0x01A3
	#align4

loc_8C0D2E4C:
	#data bank04.loc_8c044F12
loc_8C0D2E50:
	#data loc_8c0d2D00
loc_8C0D2E54:
	#data bank15.loc_8c15cbBc
loc_8C0D2E58:
	#data bank15.loc_8c15cbCc
loc_8C0D2E5C:
	#data bank12.loc_8c129560
loc_8C0D2E60:
	#data bank12.loc_8c1294C8
loc_8C0D2E64:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0D2E68:
	mov.w @(loc_8C0D2FB4,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D2FC0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D2FB4,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D2FB6,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???
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
	mov.w @(loc_8C0D2FB8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D2FC4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.w @(loc_8C0D2FB6,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	bra loc_8C0D2F8a
	lds.l @r15+,pr

loc_8C0D2EEE:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D2FC8,pc),r0 ; r0 set to 0x8C15CBD8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0D2F02:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0D2FCC,pc),r3 ; r3 set to 0x8C034D8c
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0D2F2c
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D3010
	mov.l @r15+,r14

loc_8C0D2F2C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D2F32:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x1B,r5 ; r5 set to 0x1b
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov 0x01,r6 ; r6 set to 0x01
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0D2FD0,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0D2FCC,pc),r12 ; r12 set to 0x8C034D8c
	mov 0x01,r13 ; r13 set to 0x01

loc_8C0D2F5A:
	mov.w @(loc_8C0D2FBA,pc),r2 ; r2 set to 0x150
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.w @(loc_8C0D2FBC,pc),r3 ; r3 set to 0x140
	mov.b @(0x01,r2),r0
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	cmp/eq r3,r0
	bf loc_8C0D2F72
	mov.w @(loc_8C0D2FB6,pc),r0 ; r0 set to 0x12c
	bra loc_8C0D2F80
	mov.b r13,@(r0,r14)

loc_8c0d2f72:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d2f5a
	bsr loc_8c0d3010
	mov r14,r4

loc_8C0D2F80:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D2F8A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.w @(loc_8C0D2FBE,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r3),r2
	tst r2,r2
	bf/s loc_8C0D2FD4
	mov 0x1B,r5 ; r5 set to 0x1b
	bra loc_8C0D2FD6
	mov 0x02,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D2FB4:
	#data 0x00Dc
loc_8C0D2FB6:
	#data 0x012c
loc_8C0D2FB8:
	#data 0x01A3
loc_8C0D2FBA:
	#data 0x0150
loc_8C0D2FBC:
	#data 0x0140
loc_8C0D2FBE:
	#data 0x019e
	#align4

loc_8C0D2FC0:
	#data bank12.loc_8c129560
loc_8C0D2FC4:
	#data bank12.loc_8c1294C8
loc_8C0D2FC8:
	#data bank15.loc_8c15cbD8
loc_8C0D2FCC:
	#data bank03.loc_8c034D8c
loc_8C0D2FD0:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0D2FD4:
	mov 0x03,r6 ; r6 set to 0x03

loc_8C0D2FD6:
	mov.l @(loc_8C0D3028,pc),r3 ; r3 set to 0x8C034C38
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0D302C,pc),r12 ; r12 set to 0x8C034D8c
	mov 0x01,r13 ; r13 set to 0x01

loc_8C0D2FE0:
	mov.w @(loc_8C0D3022,pc),r2 ; r2 set to 0x150
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.w @(loc_8C0D3024,pc),r3 ; r3 set to 0x140
	mov.b @(0x01,r2),r0
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	cmp/eq r3,r0
	bf loc_8C0D2FF8
	mov.w @(loc_8C0D3026,pc),r0 ; r0 set to 0x12c
	bra loc_8C0D3006
	mov.b r13,@(r0,r14)

loc_8c0d2ff8:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d2fe0
	bsr loc_8c0d3010
	mov r14,r4

loc_8C0D3006:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D3010:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D3026,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0D301C:
	mov.l @(loc_8C0D3030,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D3022:
	#data 0x0150
loc_8C0D3024:
	#data 0x0140
loc_8C0D3026:
	#data 0x012c
	#align4

loc_8C0D3028:
	#data bank03.loc_8c034C38
loc_8C0D302C:
	#data bank03.loc_8c034D8c
loc_8C0D3030:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d3034:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x138,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d3060
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.w @(0x10E,PC),r3
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8c0d3060:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D3068:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3168,pc),r3 ; r3 set to 0xCc
	mov r14,r4
	mov.l @(loc_8C0D317C,pc),r2 ; r2 set to 0x8C28C69c
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0D3180,pc),r1 ; r1 set to 0x8C15CBE4
	mov.l r3,@r2 ; r2 ??? bc r3 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D3084:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D3184,pc),r0 ; r0 set to 0x8C15CBF4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0D3098:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov.w @(loc_8C0D316A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0D3188,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D316A,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D316C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D316E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D318C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0D316E,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0D3152
	mov.w @(loc_8C0D3170,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C0D3134
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C0D3190,pc),r1 ; r1 set to 0x420C0000
	lds r1,fpul
	bra loc_8C0D313a
	fsts fpul,fr3

loc_8C0D3134:
	mov.l @(loc_8C0D3194,pc),r2 ; r2 set to 0xC20C0000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0D313A:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0D3198,pc),r1 ; r1 set to 0x42789249, r1 set to 0x42789249
	fadd fr3,fr2
	mov.w @(loc_8C0D3172,pc),r3 ; r3 set to 0x1C00, r3 set to 0x1C00
	lds r1,fpul
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	bra loc_8C0D31Bc
	fmov.s fr2,@(r0,r14)

loc_8C0D3152:
	mov.w @(loc_8C0D3170,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C0D31A0
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C0D319C,pc),r1 ; r1 set to 0x42700000
	lds r1,fpul
	bra loc_8C0D31A6
	fsts fpul,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D3166:
	#data 0x1602
loc_8C0D3168:
	#data 0x00Cc
loc_8C0D316A:
	#data 0x00Dc
loc_8C0D316C:
	#data 0x012c
loc_8C0D316E:
	#data 0x01A3
loc_8C0D3170:
	#data 0x0130
loc_8C0D3172:
	#data 0x1C00
	#align4

loc_8C0D3174:
	#data bank04.loc_8c044F12
loc_8C0D3178:
	#data loc_8c0d3068
loc_8C0D317C:
	#data 0x8C28C69c
loc_8C0D3180:
	#data bank15.loc_8c15cbE4
loc_8C0D3184:
	#data bank15.loc_8c15cbF4
loc_8C0D3188:
	#data bank12.loc_8c129560
loc_8C0D318C:
	#data bank12.loc_8c1294C8
loc_8C0D3190:
	#data 0x420C0000
loc_8C0D3194:
	#data 0xC20C0000
loc_8C0D3198:
	#data 0x42789249
loc_8C0D319C:
	#data 0x42700000

;==============================================
loc_8C0D31A0:
	mov.l @(loc_8C0D32D8,pc),r2 ; r2 set to 0xC2700000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0D31A6:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0D32DC,pc),r1 ; r1 set to 0x42452492, r1 set to 0x42452492
	fadd fr3,fr2
	mov.w @(loc_8C0D32CA,pc),r3 ; r3 set to 0x2400, r3 set to 0x2400
	lds r1,fpul
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8C0D31BC:
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48, r0 set to 0x48
	mov.l r3,@(r0,r14)
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1B, r5 set to 0x1b
	mov.l @(loc_8C0D32E0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov 0x09,r6 ; r6 set to 0x09, r6 set to 0x09, r6 set to 0x09
	jsr @r3
	mov r14,r4
	mov.l @(0x18,r14),r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov r14,r4
	mov.w @(loc_8C0D32CC,pc),r0 ; r0 set to 0x158, r0 set to 0x158, r0 set to 0x158
	mov.l @(loc_8C0D32E4,pc),r3 ; r3 set to 0x8C28C69C, r3 set to 0x8C28C69C, r3 set to 0x8C28C69c
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???, r0 ??? bc r1 is ???, r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	mova @(loc_8C0D32E8,pc),r0  ; r0 set to 0x8C0D32E8, r0 set to 0x8C0D32E8, r0 set to 0x8C0D32E8
	fmov.s @r0,fr3 ; r3 ??, r3 ??, r3 ??
	mov.w @(loc_8C0D32CE,pc),r0 ; r0 set to 0x108, r0 set to 0x108, r0 set to 0x108
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	bra loc_8C0D32B4
	mov.l @r15+,r14

loc_8C0D31E8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D32D0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0D32EC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D32D0,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D32D2,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D32D4,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D32F0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0D32D6,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C0D3274
	mova @(loc_8C0D32F4,pc),r0  ; r0 set to 0x8C0D32F4
	bra loc_8C0D3278
	fmov.s @r0,fr3

loc_8C0D3274:
	mova @(loc_8C0D32F8,pc),r0  ; r0 init to 0x8C0D32F8
	fmov.s @r0,fr3

loc_8C0D3278:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0D32FC,pc),r0  ; r0 set to 0x8C0D32FC, r0 set to 0x8C0D32Fc
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov.l @(loc_8C0D32E0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fmov.s fr3,@(r0,r14)
	mov 0x0A,r6 ; r6 set to 0x0A, r6 set to 0x0a
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D337a
	mov.l @r15+,r14

loc_8C0D32A0:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D3300,pc),r0 ; r0 set to 0x8C15CBFc
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0D32B4:
	mov.l @(loc_8C0D32E4,pc),r2 ; r2 set to 0x8C28C69c
	mov.w @(loc_8C0D32CC,pc),r0 ; r0 set to 0x158
	mov.l r8,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C0D3304
	bra loc_8C0D33E8
	mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D32CA:
	#data 0x2400
loc_8C0D32CC:
	#data 0x0158
loc_8C0D32CE:
	#data 0x0108
loc_8C0D32D0:
	#data 0x00Dc
loc_8C0D32D2:
	#data 0x012c
loc_8C0D32D4:
	#data 0x01A3
loc_8C0D32D6:
	#data 0x0130
	#align4

loc_8C0D32D8:
	#data 0xC2700000
loc_8C0D32DC:
	#data 0x42452492
loc_8C0D32E0:
	#data bank03.loc_8c034C38
loc_8C0D32E4:
	#data 0x8C28C69c
loc_8C0D32E8:
	#data 0x3F000000
loc_8C0D32EC:
	#data bank12.loc_8c129560
loc_8C0D32F0:
	#data bank12.loc_8c1294C8
loc_8C0D32F4:
	#data 0x3FD55555
loc_8C0D32F8:
	#data 0xBFD55555
loc_8C0D32FC:
	#data 0xBF092492
loc_8C0D3300:
	#data bank15.loc_8c15cbFc

;==============================================
loc_8C0D3304:
	mov.l @(0x18,r4),r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0D33FA,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0D3346
	mov.w @(loc_8C0D33FC,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C0D3330
	add r4,r8 ; r8 ??? bc r4 is ???
	mov.l @(loc_8C0D3404,pc),r1 ; r1 set to 0x4226AAAa
	lds r1,fpul
	bra loc_8C0D3336
	fsts fpul,fr3

loc_8C0D3330:
	mov.l @(loc_8C0D3408,pc),r2 ; r2 set to 0xC226AAAa
	lds r2,fpul
	fsts fpul,fr3

loc_8C0D3336:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0D340C,pc),r1 ; r1 set to 0x42789249, r1 set to 0x42789249
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	bra loc_8C0D336e
	fsts fpul,fr3
	
loc_8C0D3346:
	mov.w @(loc_8C0D33FC,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C0D335a
	add r4,r8 ; r8 ??? bc r4 is ???
	mov.l @(loc_8C0D3410,pc),r1 ; r1 set to 0x42700000
	lds r1,fpul
	bra loc_8C0D3360
	fsts fpul,fr3

loc_8C0D335A:
	mov.l @(loc_8C0D3414,pc),r2 ; r2 set to 0xC2700000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0D3360:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0D3418,pc),r1 ; r1 set to 0x42452492, r1 set to 0x42452492
	fadd fr3,fr2
	lds r1,fpul
	fsts fpul,fr3
	fmov.s fr2,@r8

loc_8C0D336E:
	fmov.s @(r0,r4),fr2
	mov.l @(loc_8C0D341C,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	jmp @r3
	mov.l @r15+,r8

loc_8c0d337a:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	sts.l pr,@-r15
	fmov.s @r1,fr3
	mov 0x68,r1
	fmov.s @(r0,r14),fr2
	add r14,r1
	mov.l @(0x18,r14),r4
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
	mov.w @(loc_8C0D33FE,pc),r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0d33ce
	mov.w @(loc_8C0D33FE,pc),r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)

loc_8c0d33ce:
	mov.l @(loc_8c0d341c,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d33e2
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0d33e8
	mov.l @r15+,r14

loc_8c0d33e2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0D33E8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D3400,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0D33F4:
	mov.l @(loc_8C0D3420,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D33FA:
	#data 0x01A3
loc_8C0D33FC:
	#data 0x0130
loc_8c0d33fe:
	#data 0x041c
loc_8C0D3400:
	#data 0x012c
	#align4

loc_8C0D3404:
	#data 0x4226AAAa
loc_8C0D3408:
	#data 0xC226AAAa
loc_8C0D340C:
	#data 0x42789249
loc_8C0D3410:
	#data 0x42700000
loc_8C0D3414:
	#data 0xC2700000
loc_8C0D3418:
	#data 0x42452492
loc_8C0D341C:
	#data bank03.loc_8c034D8c
loc_8C0D3420:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0D3424:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x148,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d3450
	mov r0,r4
	mov.l @(0x138,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.w @(0x11C,PC),r3
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8c0d3450:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D3458:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3566,pc),r3 ; r3 set to 0xCc
	mov r14,r4
	mov.l @(loc_8C0D357C,pc),r2 ; r2 set to 0x8C28C6A0
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0D3580,pc),r1 ; r1 set to 0x8C15CC04
	mov.l r3,@r2 ; r2 ??? bc r3 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0D3474:
	mov.w @(loc_8C0D3568,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D3584,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D3568,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D356A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D356C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D3588,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov.l @(loc_8C0D357C,pc),r2 ; r2 set to 0x8C28C6A0
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.l @(0x18,r4),r1
	mov.w @(loc_8C0D356E,pc),r0 ; r0 set to 0x158
	lds.l @r15+,pr
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r2,r3
	rts
	mov.w r0,@r3

;----------------------------------------------
loc_8C0D34FE:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D358C,pc),r0 ; r0 set to 0x8C15CC14
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D3512:
	mov.l @(0x68,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x52,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0
	cmp/eq r0,r1
	bf loc_8c0d3546
	mov.w @(0x44,PC),r0
	mov 0x1B,r5
	mov.l @(0x18,r14),r7
	mov 0x07,r6
	mov.l @(0x5C,PC),r3
	mov.b @(r0,r7),r7
	add 0xFF,r7
	jsr @r3
	mov r14,r4
	mov.w @(0x32,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	add 0xFF,r3
	cmp/pz r3
	bt loc_8c0d354e

loc_8C0D3546:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0d35e6
	mov.l @r15+,r14

loc_8C0D354E:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d3564:
	#data 0x1603
loc_8C0D3566:
	#data 0x00Cc
loc_8C0D3568:
	#data 0x00Dc
loc_8C0D356A:
	#data 0x012c
loc_8C0D356C:
	#data 0x01A3
loc_8C0D356E:
	#data 0x0158
loc_8C0D3570:
	#data 0x014b
	#align4

loc_8C0D3574:
	#data bank04.loc_8c044F12
loc_8C0D3578:
	#data loc_8c0d3458
loc_8C0D357C:
	#data 0x8C28C6A0
loc_8C0D3580:
	#data bank15.loc_8c15cc04
loc_8C0D3584:
	#data bank12.loc_8c129560
loc_8C0D3588:
	#data bank12.loc_8c1294C8
loc_8C0D358C:
	#data bank15.loc_8c15cc14
loc_8C0D3590:
	#data bank03.loc_8c034CD6

;==============================================
loc_8C0D3594:
	mov.l @(0x68,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x5A,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0
	cmp/eq r0,r1
	bf loc_8c0d35c8
	mov.w @(0x4C,PC),r0
	mov 0x1B,r5
	mov.l @(0x18,r14),r7
	mov 0x08,r6
	mov.l @(0x50,PC),r3
	mov.b @(r0,r7),r7
	add 0xFF,r7
	jsr @r3
	mov r14,r4
	mov.w @(0x3A,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	add 0xFF,r3
	cmp/pz r3
	bt loc_8c0d35d0

loc_8C0D35C8:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0d35e6
	mov.l @r15+,r14

loc_8C0D35D0:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D35E6:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D35FC,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0D35F2:
	mov.l @(loc_8C0D3608,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d35f8:
	#data 0x0158
loc_8c0d35fa:
	#data 0x014B
loc_8C0D35FC:
	#data 0x012c
	#align4

loc_8C0D3600:
	#data 0x8C28C6A0
loc_8C0D3604:
	#data bank03.loc_8c034CD6
loc_8C0D3608:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d360c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x138,PC),r3
	mov 0x04,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d3630
	mov r0,r4
	mov.l @(0x12C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x112,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0d3630:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D3638:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3740,pc),r3 ; r3 set to 0xCc
	mov r14,r4
	mov.l @(loc_8C0D3754,pc),r2 ; r2 set to 0x8C28C6A4
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0D3758,pc),r1 ; r1 set to 0x8C15CC1c
	mov.l r3,@r2 ; r2 ??? bc r3 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D3654:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3742,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0D375C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D3742,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D3744,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D3746,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D3760,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x07,r2 ; r2 set to 0x07
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3
	mov 0x0C,r6 ; r6 set to 0x0c
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0D3764,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x18,r14),r1
	mov.w @(loc_8C0D3748,pc),r0 ; r0 set to 0x158
	mov.l @(loc_8C0D3754,pc),r3 ; r3 set to 0x8C28C6A4
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2 ; r2 ??
	mov.w r0,@r2
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D36EE:
	mov.l @(loc_8C0D3754,pc),r2 ; r2 set to 0x8C28C6A4
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3748,pc),r0 ; r0 set to 0x158
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C0D370c
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D3792
	mov.l @r15+,r14

loc_8C0D370C:
	mov.l @(loc_8C0D3768,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0D3728
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x1E,r0 ; r0 set to 0x1e
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D3728:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D373e:
	#data 0x1604
loc_8C0D3740:
	#data 0x00Cc
loc_8C0D3742:
	#data 0x00Dc
loc_8C0D3744:
	#data 0x012c
loc_8C0D3746:
	#data 0x01A3
loc_8C0D3748:
	#data 0x0158
	#align4

loc_8C0D374C:
	#data bank04.loc_8c044F12
loc_8C0D3750:
	#data loc_8c0d3638
loc_8C0D3754:
	#data 0x8C28C6A4
loc_8C0D3758:
	#data bank15.loc_8c15cc1c
loc_8C0D375C:
	#data bank12.loc_8c129560
loc_8C0D3760:
	#data bank12.loc_8c1294C8
loc_8C0D3764:
	#data bank03.loc_8c034C38
loc_8C0D3768:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0D376C:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0d378e
	mov.l @(0x2C,PC),r1
	mov.w @(0x26,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	fmov @(r0,r4),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bf loc_8c0d3792

loc_8C0D378E:
	rts
	nop

;----------------------------------------------
loc_8C0D3792:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D37A6,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0D379E:
	mov.l @(loc_8C0D37AC,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop
	
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D37A4:
	#data 0x0108
loc_8C0D37A6:
	#data 0x012c
	#align4

loc_8C0D37a8:
	#data 0x3C449BA6
loc_8C0D37AC:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0D37b0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x10C,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d37d4
	mov r0,r4
	mov.l @(0x100,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xEA,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0d37d4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D37DC:
	mov r4,r3
	mov.l @(loc_8C0D38CC,pc),r1 ; r1 set to 0x8C15CC30
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D37EE:
	mov.w @(loc_8C0D38BC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D38D0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D38BC,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D38BE,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D38C0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D38D4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov 0x0B,r6 ; r6 set to 0x0b
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0D38D8,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0D3872:
	mov.l r14,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r14
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x00,r3 ; r3 set to 0x00
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0D38C2,pc),r0 ; r0 set to 0x14b
	mov.b @(r0,r14),r2
	extu.b r2,r2
	add 0xFF,r2
	cmp/pz r2
	bt loc_8C0D389a
	bra loc_8C0D38A8
	mov.l @r15+,r14

loc_8C0D389A:
	mov.b @(r0,r14),r7
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0D38DC,pc),r3 ; r3 set to 0x8C034CD6
	mov 0x0B,r6 ; r6 set to 0x0b
	add 0xFF,r7
	jmp @r3
	mov.l @r15+,r14

loc_8C0D38A8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D38BE,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0D38B4:
	mov.l @(loc_8C0D38E0,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D38Ba:
	#data 0x1605
loc_8C0D38BC:
	#data 0x00Dc
loc_8C0D38BE:
	#data 0x012c
loc_8C0D38C0:
	#data 0x01A3
loc_8C0D38C2:
	#data 0x014b
	#align4

loc_8C0D38C4:
	#data bank04.loc_8c044F12
loc_8C0D38C8:
	#data loc_8c0d37Dc
loc_8C0D38CC:
	#data bank15.loc_8c15cc30
loc_8C0D38D0:
	#data bank12.loc_8c129560
loc_8C0D38D4:
	#data bank12.loc_8c1294C8
loc_8C0D38D8:
	#data bank03.loc_8c034C38
loc_8C0D38DC:
	#data bank03.loc_8c034CD6
loc_8C0D38E0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d38e4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x140,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d3908
	mov r0,r4
	mov.l @(0x134,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x118,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0d3908:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D3910:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3A1E,pc),r3 ; r3 set to 0xCc
	mov r14,r4
	mov.l @(loc_8C0D3A34,pc),r2 ; r2 set to 0x8C28C6A8
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0D3A38,pc),r1 ; r1 set to 0x8C15CC40
	mov.l r3,@r2 ; r2 ??? bc r3 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D392C:
	mov.w @(loc_8C0D3A20,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D3A3C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D3A20,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D3A22,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D3A24,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D3A40,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r2 ; r2 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov 0x07,r3 ; r3 set to 0x07
	mov.w @(loc_8C0D3A22,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C0D3A34,pc),r2 ; r2 set to 0x8C28C6A8
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.l @(0x18,r4),r1
	mov.w @(loc_8C0D3A26,pc),r0 ; r0 set to 0x158
	lds.l @r15+,pr
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r2,r3
	rts
	mov.w r0,@r3

;----------------------------------------------
loc_8C0D39C0:
	mov.l @(loc_8C0D3A34,pc),r2 ; r2 set to 0x8C28C6A8
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3A26,pc),r0 ; r0 set to 0x158
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C0D39De
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D3B80
	mov.l @r15+,r14

loc_8c0d39de:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	mov.w @(loc_8C0D3A28,pc),r1
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c0d3a16
	mov.b @(0x04,r14),r0
	mov 0x00,r2
	mov 0x1B,r5
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x0D,r6
	mov.w @(loc_8C0D3A28,pc),r0
	mov.l @(0x18,r14),r3
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c0d3a44,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0d3a22,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c0d3a16:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14
;----------------------------------------------
loc_8c0d3a1c:
	#data 0x1601
loc_8c0d3a1e:
	#data 0x00CC
loc_8c0d3a20:
	#data 0x00DC
loc_8c0d3a22:
	#data 0x012C
loc_8c0d3a24:
	#data 0x01A3
loc_8c0d3a26:
	#data 0x0158
loc_8C0D3A28:
	#data 0x0140
	#align4

loc_8c0d3a2c:
	#data bank04.loc_8c044f12
loc_8c0d3a30:
	#data loc_8c0d3910
loc_8c0d3a34:
	#data 0x8C28C6A8
loc_8c0d3a38:
	#data bank15.loc_8c15cc40
loc_8c0d3a3c:
	#data bank12.loc_8c129560
loc_8c0d3a40:
	#data bank12.loc_8c1294c8
loc_8c0d3a44:
	#data bank03.loc_8c034c38

;==============================================
loc_8C0D3A48:
	mov.l @(loc_8C0D3B74,pc),r2 ; r2 set to 0x8C28C6A8
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3B6C,pc),r0 ; r0 set to 0x158
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C0D3A6a
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0D3B80
	mov.l @r15+,r14

loc_8c0d3a6a:
	mov.l @(loc_8c0d3b78,pc),r3
	mov 0x00,r13
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d3a7c
	mov.w @(loc_8C0D3B6E,pc),r0
	mov.b r13,@(r0,r14)

loc_8c0d3a7c:
	mov 0x24,r0
	mov.w @(loc_8C0D3B70,pc),r1
	mov.b r13,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c0d3ab6
	mov.b @(0x04,r14),r0
	mov 0x1B,r5
	mov 0x0E,r6
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D3B70,pc),r0
	mov.l @(0x18,r14),r3
	mov.b r13,@(r0,r3)
	mov.l @(loc_8c0d3b7c,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0D3B6E,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c0d3ab6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0D3ABE:
	mov.l @(loc_8C0D3B74,pc),r2 ; r2 set to 0x8C28C6A8
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3B6C,pc),r0 ; r0 set to 0x158
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C0D3ADc
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D3B80
	mov.l @r15+,r14

loc_8c0d3adc:
	mov.l @(loc_8c0d3b78,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d3aee
	mov.w @(loc_8C0D3B6E,pc),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c0d3aee:
	mov.l @(0x18,r14),r2
	mov 0x34,r0
	mov.w @(loc_8C0D3B70,pc),r1
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c0d3b26
	mov.b @(0x04,r14),r0
	mov 0x00,r2
	mov 0x1B,r5
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x0F,r6
	mov.w @(loc_8C0D3B70,pc),r0
	mov.l @(0x18,r14),r3
	mov.b r2,@(r0,r3)
	mov.l @(loc_8c0d3b7c,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0D3B6E,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c0d3b26:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d3b2c:
	mov.l @(0x44,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x36,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0
	cmp/eq r0,r1
	bf loc_8c0d3b5e
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov.l @(0x24,PC),r3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d3b66

loc_8c0d3b5e:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0d3b80
	mov.l @r15+,r14

loc_8c0d3b66:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d3b6c:
	#data 0x0158
loc_8C0D3B6E:
	#data 0x012C
loc_8C0D3B70:
	#data 0x0140
	#align4

loc_8c0d3b74:
	#data 0x8C28C6A8
loc_8c0d3b78:
	#data bank03.loc_8c034d8c
loc_8c0d3b7c:
	#data bank03.loc_8c034c38

;==============================================
loc_8C0D3B80:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D3B92,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0D3B8C:
	mov.l @(loc_8C0D3B94,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D3B92:
	#data 0x012c
	#align4

loc_8C0D3B94:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d3b98:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x134,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d3bbc
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x10E,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0d3bbc:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D3BC4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D3CC8,pc),r3 ; r3 set to 0xCc
	mov r14,r4
	mov.l @(loc_8C0D3CDC,pc),r2 ; r2 set to 0x8C28C6Ac
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0D3CE0,pc),r1 ; r1 set to 0x8C15CC5c
	mov.l r3,@r2 ; r2 ??? bc r3 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D3BE0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov.w @(loc_8C0D3CCA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0D3CE4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D3CCA,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D3CCC,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D3CCE,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D3CE8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x07,r2 ; r2 set to 0x07
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0D3CD0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C0D3C74
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C0D3CEC,pc),r1 ; r1 set to 0x42820000
	lds r1,fpul
	bra loc_8C0D3C7a
	fsts fpul,fr3

loc_8C0D3C74:
	mov.l @(loc_8C0D3CF0,pc),r2 ; r2 set to 0xC2820000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0D3C7A:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0D3CF4,pc),r1 ; r1 set to 0x43676DB6, r1 set to 0x43676DB6
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fadd fr3,fr2
	fldi0 fr4
	lds r1,fpul
	mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12
	mov.l @(loc_8C0D3D00,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0D3CF8,pc),r0  ; r0 set to 0x8C0D3CF8, r0 set to 0x8C0D3CF8
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0D3CFC,pc),r0  ; r0 set to 0x8C0D3CFC, r0 set to 0x8C0D3CFc
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0D3CD2,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.l @(0x18,r14),r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l @(loc_8C0D3CDC,pc),r3 ; r3 set to 0x8C28C6AC, r3 set to 0x8C28C6Ac
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???, r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D3CC6:
	#data 0x1607
loc_8C0D3CC8:
	#data 0x00Cc
loc_8C0D3CCA:
	#data 0x00Dc
loc_8C0D3CCC:
	#data 0x012c
loc_8C0D3CCE:
	#data 0x01A3
loc_8C0D3CD0:
	#data 0x0130
loc_8C0D3CD2:
	#data 0x0158
	#align4

loc_8C0D3CD4:
	#data bank04.loc_8c044F12
loc_8C0D3CD8:
	#data loc_8c0d3BC4
loc_8C0D3CDC:
	#data 0x8C28C6Ac
loc_8C0D3CE0:
	#data bank15.loc_8c15cc5c
loc_8C0D3CE4:
	#data bank12.loc_8c129560
loc_8C0D3CE8:
	#data bank12.loc_8c1294C8
loc_8C0D3CEC:
	#data 0x42820000
loc_8C0D3CF0:
	#data 0xC2820000
loc_8C0D3CF4:
	#data 0x43676DB6
loc_8C0D3CF8:
	#data 0x40092492
loc_8C0D3CFC:
	#data 0xBF092492
loc_8C0D3D00:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0D3D04:
	mov.w @(loc_8C0D3D88,pc),r0 ; r0 set to 0x19f
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0D3D64
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3
	mov r0,r8 ; r8 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0D3D8A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C0D3D4c
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C0D3D90,pc),r1 ; r1 set to 0x42820000
	lds r1,fpul
	bra loc_8C0D3D52
	fsts fpul,fr3

loc_8c0d3d4c:
	mov.l @(loc_8C0D3D94,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c0d3d52:
	fmov.s @r8,fr2
	mov.l @(loc_8c0d3d98,pc),r3
	fadd fr3,fr2
	fmov.s fr2,@r8
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d3d6e

loc_8C0D3D64:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	bra loc_8C0D3D76
	mov.l @r15+,r14

loc_8C0D3D6E:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

loc_8C0D3D76:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D3D8C,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0D3D82:
	mov.l @(loc_8C0D3D9C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D3D88:
	#data 0x019f
loc_8C0D3D8A:
	#data 0x0130
loc_8C0D3D8C:
	#data 0x012c
	#align4

loc_8C0D3D90:
	#data 0x42820000
loc_8c0d3d94:
	#data 0xC2820000
loc_8C0D3D98:
	#data bank03.loc_8c034D8c
loc_8C0D3D9C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d3da0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x12C,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d3dc4
	mov r0,r4
	mov.l @(0x120,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x10A,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0d3dc4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D3DCC:
	mov r4,r3
	mov.l @(loc_8C0D3EDC,pc),r1 ; r1 set to 0x8C15CC6c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D3DDE:
	mov.w @(loc_8C0D3ECC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D3EE0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D3ECC,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D3ECE,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D3ED0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D3EE4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r5,@(r0,r4)
	mov.w @(loc_8C0D3ED2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2
	tst r2,r2
	bt/s loc_8C0D3E58
	mov.l @(0x18,r4),r3
	mova @(loc_8C0D3EE8,pc),r0  ; r0 set to 0x8C0D3EE8
	bra loc_8C0D3E5c
	fmov.s @r0,fr3

loc_8C0D3E58:
	mova @(loc_8C0D3EEC,pc),r0  ; r0 init to 0x8C0D3EEc
	fmov.s @r0,fr3

loc_8C0D3E5C:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fldi0 fr4
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0D3EF0,pc),r0  ; r0 set to 0x8C0D3EF0, r0 set to 0x8C0D3EF0
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	mov.l @(loc_8C0D3EFC,pc),r3 ; r3 set to 0x8C26A524, r3 set to 0x8C26A524
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0D3EF4,pc),r0  ; r0 set to 0x8C0D3EF4, r0 set to 0x8C0D3EF4
	fmov.s @r0,fr2
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0D3EF8,pc),r0  ; r0 set to 0x8C0D3EF8, r0 set to 0x8C0D3EF8
	fmov.s @r0,fr2
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @r3,fr1
	fmov.s @(r0,r4),fr2
	mova @(loc_8C0D3F00,pc),r0  ; r0 set to 0x8C0D3F00, r0 set to 0x8C0D3F00
	fsub fr2,fr1
	fmov.s @r0,fr2
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fdiv fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.l @(loc_8C0D3F04,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
	mov 0x10,r6 ; r6 set to 0x10, r6 set to 0x10
	mov.l r5,@(r0,r4)
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	jmp @r2
	lds.l @r15+,pr

loc_8C0D3EB8:
	mov r4,r3
	mov.l @(loc_8C0D3F08,pc),r1 ; r1 set to 0x8C15CC7c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D3ECa:
	#data 0x1608
loc_8C0D3ECC:
	#data 0x00Dc
loc_8C0D3ECE:
	#data 0x012c
loc_8C0D3ED0:
	#data 0x01A3
loc_8C0D3ED2:
	#data 0x0130
	#align4

loc_8C0D3ED4:
	#data bank04.loc_8c044F12
loc_8C0D3ED8:
	#data loc_8c0d3DCc
loc_8C0D3EDC:
	#data bank15.loc_8c15cc6c
loc_8C0D3EE0:
	#data bank12.loc_8c129560
loc_8C0D3EE4:
	#data bank12.loc_8c1294C8
loc_8C0D3EE8:
	#data 0x41D55555
loc_8C0D3EEC:
	#data 0xC1D55555
loc_8C0D3EF0:
	#data 0x432B6DB6
loc_8C0D3EF4:
	#data 0x3D4CCCCd
loc_8C0D3EF8:
	#data 0x3DCCCCCd
loc_8C0D3EFC:
	#data 0x8C26A524
loc_8C0D3F00:
	#data 0x41800000
loc_8C0D3F04:
	#data bank03.loc_8c034C38
loc_8C0D3F08:
	#data bank15.loc_8c15cc7c

;==============================================
loc_8C0D3F0C:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @(loc_8C0D3FFE,pc),r3 ; r3 set to 0xC0
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov.l @(loc_8C0D4008,pc),r1 ; r1 set to 0x3D03126f
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r14),r2
	fsts fpul,fr3
	add r3,r2
	mov.l r2,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r2 ; r2 set to 0x50
	lds r2,fpul
	mova @(loc_8C0D400C,pc),r0  ; r0 set to 0x8C0D400c
	fmov.s @r0,fr1 ; r1 ??
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???
	mov 0x10,r2 ; r2 set to 0x10
	float fpul,fr2
	fmov fr2,fr4
	fmul fr1,fr4
	fmov fr4,fr2 ; r2 ??? bc r4 is ???
	fmul fr2,fr4
	fadd fr4,fr0
	fmov.s fr0,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/gt r2,r0
	bf loc_8C0D3FD4
	mov.b @(0x05,r14),r0
	mov 0x00,r1 ; r1 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mova @(loc_8C0D4010,pc),r0  ; r0 set to 0x8C0D4010
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r1,@(r0,r14)
	mov.w @(loc_8C0D4000,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C0D3F9c
	mov.l @(loc_8C0D4014,pc),r3 ; r3 set to 0x8C26A524
	mova @(loc_8C0D4018,pc),r0  ; r0 set to 0x8C0D4018
	fmov.s @r3,fr2
	bra loc_8C0D3FA4
	fmov.s @r0,fr0

loc_8c0d3f9c:
	mov.l @(loc_8c0d4014,pc),r3
	mova @(loc_8C0D401C,pc),r0
	fmov.s @r0,fr0
	fmov.s @r3,fr2

loc_8c0d3fa4:
	fadd fr0,fr2
	mov 0x34,r0
	mov.l @(loc_8C0D4020,pc),r13
	mov 0x1B,r5
	mov.l @(loc_8c0d4028,pc),r3
	mov 0x11,r6
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0D4024,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0D4002,pc),r0
	fmov.s @(r0,r13),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0d402c,pc),r2
	mov 0x2D,r5
	jsr @r2
	mov r14,r4
	mov 0x03,r0
	mov.b r0,@(0x05,r13)
	mov 0x01,r0
	mov.b r0,@(0x06,r13)

loc_8C0D3FD4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D3FDC:
	sts.l pr,@-r15
	mov.l @(loc_8C0D4030,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	nop
	lds.l @r15+,pr
	exts.b r0,r0
	rts
	cmp/pz r0

;----------------------------------------------
loc_8C0D3FEC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D4004,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0D3FF8:
	mov.l @(loc_8C0D4034,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D3FFE:
	#data 0x00C0
loc_8C0D4000:
	#data 0x0130
loc_8c0d4002:
	#data 0x00A8
loc_8C0D4004:
	#data 0x012c
	#align4

loc_8C0D4008:
	#data 0x3D03126f
loc_8C0D400C:
	#data 0x3E23D70a
loc_8C0D4010:
	#data 0x3FC00000
loc_8C0D4014:
	#data 0x8C26A524
loc_8C0D4018:
	#data 0x44160000
loc_8c0d401c:
	#data 0xC4160000
loc_8c0d4020:
	#data 0x8C26A518
loc_8c0d4024:
	#data 0x43B40000
loc_8C0D4028:
	#data bank03.loc_8c034C38
loc_8C0D402C:
	#data bank04.loc_8c042008
loc_8C0D4030:
	#data bank03.loc_8c034D8c
loc_8C0D4034:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d4038:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x150,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d407a
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x11C,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w @(0x118,PC),r2
	mov.w r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov.w @(0x112,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	mov.w @(0x10E,PC),r0
	mov.w r2,@(r0,r4)
	mov r4,r0
	nop

loc_8c0d407a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D4082:
	mov r4,r3
	mov.l @(loc_8C0D4198,pc),r1 ; r1 set to 0x8C15CC84
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0D4094:
	mov.w @(loc_8C0D4188,pc),r1 ; r1 set to 0xDc
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0D4188,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D419C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D4186,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov.l @(0x18,r4),r5
	add r5,r2 ; r2 ??? bc r5 is ???
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D4186,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(loc_8C0D418A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0D41A0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r5),r2
	add 0x34,r1
	mov.l @(loc_8C0D41A0,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???
	add 0x34,r2
	mov.w @(0x1E,r0),r0
	mov.w r0,@(0x1C,r4)
	mova @(loc_8C0D41A4,pc),r0  ; r0 set to 0x8C0D41A4
	fmov.s @r0,fr3 ; r3 ??
	mov.w @(loc_8C0D418C,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0A,r2 ; r2 set to 0x0a
	mov.b r2,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C0D4120
	mov 0x17,r5 ; r5 set to 0x17
	bra loc_8C0D4122
	mov 0x04,r6

loc_8C0D4120:
	mov 0x03,r6 ; r6 set to 0x03

loc_8C0D4122:
	mov.l @(loc_8C0D41A8,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	jmp @r3
	lds.l @r15+,pr

loc_8C0D4128:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r2
	mov r4,r1
	mov.l @(loc_8C0D41A0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	mov r0,r2 ; r2 set to 0x0c
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C0D4150
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D41Ca
	mov.l @r15+,r14

loc_8c0d4150:
	mov.w @(loc_8C0D4184,pc),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r14),r3
	mov.w @(loc_8C0D4182,pc),r0
	mov.w @(r0,r2),r1
	cmp/eq r1,r3
	bt/s loc_8c0d416a
	mov r14,r4
	mov 0x02,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r3
	mov.w @(loc_8c0d4186,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0d416a:
	mov.l @(loc_8c0d41ac,pc),r3
	jsr @r3
	nop
	mov.w @(loc_8C0D418E,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d41b0
	mova @(loc_8c0d41a4,pc),r0
	bra loc_8c0d41b2
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D417e:
	#data 0x0130
loc_8C0D4180:
	#data 0x1700
loc_8C0D4182:
	#data 0x0158
loc_8C0D4184:
	#data 0x00CC
loc_8c0d4186:
	#data 0x012C
loc_8c0d4188:
	#data 0x00DC
loc_8c0d418a:
	#data 0x01A3
loc_8c0d418c:
	#data 0x0108
loc_8C0D418E:
	#data 0x0141
	#align4

loc_8c0d4190:
	#data bank04.loc_8c044f12
loc_8c0d4194:
	#data loc_8c0d4082
loc_8c0d4198:
	#data bank15.loc_8c15cc84
loc_8c0d419c:
	#data bank12.loc_8c129560
loc_8c0d41a0:
	#data bank12.loc_8c1294c8
loc_8c0d41a4:
	#data 0x3F000000
loc_8c0d41a8:
	#data bank03.loc_8C034C38
loc_8c0d41ac:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0d41b0:
	fldi1 fr3

loc_8c0d41b2:
	mov.w @(loc_8C0D42CA,pc),r0
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0D41BC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D42CC,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C0D41CA:
	mov.l @(loc_8C0D42DC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
;unused
loc_8c0d41d0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x108,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d4212
	mov r0,r4
	mov.l @(0xF8,PC),r3
	mov.w @(0xE0,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov r2,r3
	mov.l r2,@(0x18,r4)
	mov.w @(r0,r3),r2
	mov.w @(0xD6,PC),r3
	mov.w r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov.w @(0xCA,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	mov.w @(0xC6,PC),r0
	mov.w r2,@(r0,r4)
	mov r4,r0
	nop

loc_8c0d4212:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D421A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0D455c
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bt loc_8C0D4230
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D41Ca
	mov.l @r15+,r14

loc_8C0D4230:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D42E8,pc),r1 ; r1 set to 0x8C15CC94
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D4242:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D42D6,pc),r1 ; r1 set to 0xDc
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(loc_8C0D42D6,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0D42EC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D42CC,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r4
	add r4,r2 ; r2 ??? bc r4 is ???
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D42CC,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D42D8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D42F0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0D42F0,pc),r3 ; r3 set to 0x8C1294C8
	mov.b @(r0,r4),r2
	mov r14,r1
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov r4,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C0D42F4
	mov 0x1B,r5 ; r5 set to 0x1b
	bra loc_8C0D42F6
	mov 0x14,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d42ca:
	#data 0x0108
loc_8C0D42CC:
	#data 0x012c
loc_8C0D42CE:
	#data 0x0130
loc_8C0D42d0:
	#data 0x1700
loc_8C0D42d2:
	#data 0x0158
loc_8C0D42d4:
	#data 0x00Cc
loc_8C0D42D6:
	#data 0x00Dc
loc_8C0D42D8:
	#data 0x01A3
	#align4

loc_8C0D42DC:
	#data bank04.loc_8c0450C0
loc_8C0D42E0:
	#data bank04.loc_8c044F12
loc_8C0D42E4:
	#data loc_8c0d421a
loc_8C0D42E8:
	#data bank15.loc_8c15cc94
loc_8C0D42EC:
	#data bank12.loc_8c129560
loc_8C0D42F0:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0d42f4:
	mov 0x11,r6

loc_8c0d42f6:
	mov.l @(loc_8c0d43d8,pc),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c0d4302:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bf loc_8c0d4336
	mov.l @(0x18,r14),r3
	mov 0x24,r0
	mov r14,r1
	add 0x34,r1
	mov.b @(r0,r3),r2
	mov.l @(loc_8c0d43dc,pc),r3
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C0D43CE,pc),r3
	mov.l @(0x18,r14),r0
	add r3,r0
	mov.b @(0x01,r0),r0
	cmp/eq 0x09,r0
	bf loc_8c0d433e

loc_8c0d4336:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0d41ca
	mov.l @r15+,r14

loc_8c0d433e:
	mov.w @(loc_8C0D43CE,pc),r3
	mov.l @(0x18,r14),r2
	add r2,r3
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt loc_8c0d436c
	mov.w @(loc_8C0D43CE,pc),r3
	mov 0x1B,r5
	mov.l @(0x18,r14),r7
	mov.l @(loc_8c0d43e0,pc),r2
	add r3,r7
	mov.b @(0x01,r7),r0
	mov r0,r7
	mov.w @(loc_8C0D43D0,pc),r0
	add 0xFF,r7
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0D43CE,pc),r2
	mov 0x00,r0
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.b r0,@(0x01,r2)

loc_8c0d436c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d4372:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x6C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d43b4
	mov r0,r4
	mov.l @(0x5C,PC),r3
	mov.w @(0x42,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov r2,r3
	mov.l r2,@(0x18,r4)
	mov.w @(r0,r3),r2
	mov.w @(0x38,PC),r3
	mov.w r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov.w @(0x26,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	mov.w @(0x26,PC),r0
	mov.w r2,@(r0,r4)
	mov r4,r0
	nop

loc_8c0d43b4:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C0D43BC:
	mov r4,r3
	mov.l @(loc_8C0D43EC,pc),r1 ; r1 set to 0x8C15CCA4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d43ce:
	#data 0x0150
loc_8c0d43d0:
	#data 0x0158
loc_8c0d43d2:
	#data 0x0130
loc_8c0d43d4:
	#data 0x1700
loc_8c0d43d6:
	#data 0x00cc
	#align4

loc_8C0D43D8:
	#data bank03.loc_8c034C38
loc_8C0D43DC:
	#data bank12.loc_8c1294C8
loc_8C0D43E0:
	#data bank03.loc_8c034CD6
loc_8C0D43E4:
	#data bank04.loc_8c044F12
loc_8C0D43E8:
	#data loc_8c0d43Bc
loc_8C0D43EC:
	#data bank15.loc_8c15ccA4

;==============================================
loc_8C0D43F0:
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	mov 0x00,r6 ; r6 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov r6,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0D4536,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0D4536,pc),r2 ; r2 set to 0xDc
	mov.w @(loc_8C0D4534,pc),r0 ; r0 set to 0x12c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D4544,pc),r3 ; r3 set to 0x8C129560
	mov.b r6,@(r0,r4)
	mov.l @(0x18,r4),r5
	add r5,r2 ; r2 ??? bc r5 is ???
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D4534,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D4538,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D4548,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0D4548,pc),r3 ; r3 set to 0x8C1294C8
	mov.b @(r0,r5),r2
	mov r4,r1
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b r6,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bf loc_8C0D4482
	mov.w @(loc_8C0D453A,pc),r0 ; r0 set to 0xCe
	mov 0x17,r3 ; r3 set to 0x17
	bra loc_8C0D4488
	mov.b r3,@(r0,r4)

loc_8C0D4482:
	mov.w @(loc_8C0D453A,pc),r0 ; r0 set to 0xCe
	mov 0x1A,r1 ; r1 set to 0x1a
	mov.b r1,@(r0,r4)

loc_8C0D4488:
	lds.l @r15+,pr

loc_8C0D448A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov r3,r2
	mov.l r3,@r15
	mov.b @(r0,r2),r3
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0D4548,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0C, r0 set to 0x0c
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov r0,r2 ; r2 set to 0x0C, r2 set to 0x0C, r2 set to 0x0c
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C0D44C2
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0D41Ca
	mov.l @r15+,r14

loc_8c0d44c2:
	mov.w @(loc_8C0D453C,pc),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0d44d8
	mov.w @(loc_8C0D453E,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c0d44e4

loc_8c0d44d8:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0d454c,pc),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c0d44e4:
	mov.w @(loc_8C0D453E,pc),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov 0x22,r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bt loc_8c0d4554
	mov.w @(loc_8C0D453E,pc),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov 0x22,r0
	mov 0x01,r2
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c0d4534,pc),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0D4540,pc),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0d451a
	mov.w @(loc_8C0D4542,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d451a
	mov.w @(loc_8c0d4534,pc),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c0d451a:
	mov 0x22,r0
	mov r14,r4
	mov.b @(r0,r14),r7
	mov 0x1B,r5
	mov.w @(loc_8c0d453a,pc),r0
	extu.b r7,r7
	mov.b @(r0,r14),r6
	add 0xFF,r7
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0d4550,pc),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d4534:
	#data 0x012C
loc_8c0d4536:
	#data 0x00DC
loc_8c0d4538:
	#data 0x01A3
loc_8c0d453a:
	#data 0x00CE
loc_8C0D453C:
	#data 0x0159
loc_8C0D453E:
	#data 0x014B
loc_8C0D4540:
	#data 0x0411
loc_8C0D4542:
	#data 0x0141
	#align4

loc_8c0d4544:
	#data bank12.loc_8C129560
loc_8c0d4548:
	#data bank12.loc_8C1294C8
loc_8c0d454c:
	#data bank04.loc_8c0450c0
loc_8c0d4550:
	#data bank03.loc_8c034cd6

;==============================================
loc_8c0d4554:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d455c:
	mov.w @(0x2C,PC),r0
	mov.l @(0x18,r4),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0d4582
	mov.w @(0x22,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d4582
	mov.w @(0x1A,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d4582
	mov.b @(0x5,r4),r0
	tst r0,r0
	bt loc_8c0d4586

loc_8c0d4582:
	rts
	mov 0x01,r0

;----------------------------------------------
loc_8c0d4586:
	mov 0x00,r0
	rts
	nop

;----------------------------------------------
loc_8c0d458c:
	#data 0x01E9
loc_8c0d458e:
	#data 0x0159
loc_8c0d4590:
	#data 0x01D0
	#align4

;==============================================
;unused
loc_8c0d4594:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x138,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d45de
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x20,r0
	mov.l @(0x128,PC),r5
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x104,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w @(0x100,PC),r2
	mov.w r3,@(r0,r4)
	mov 0x26,r0
	mov.w @(0xFC,PC),r3
	mov.w r2,@(r0,r4)
	add r4,r3
	mov.w @(0xF8,PC),r0
	mov r3,r2
	mov.l r3,@r5
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r1
	mov.w r1,@r2
	mov r4,r0
	nop

loc_8c0d45de:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C0D45E6:
	mov r4,r3
	mov.l @(loc_8C0D46E0,pc),r1 ; r1 set to 0x8C15CCB4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D45F8:
	mov.w @(loc_8C0D46CE,pc),r1 ; r1 set to 0xDc
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0D46CE,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D46E4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D46CC,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov.l @(0x18,r4),r5
	add r5,r2 ; r2 ??? bc r5 is ???
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D46CC,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(loc_8C0D46D0,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0D46E8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r5),r2
	add 0x34,r1
	mov.l @(loc_8C0D46E8,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???
	add 0x34,r2
	mov.w @(0x1E,r0),r0
	mov.w r0,@(0x1C,r4)
	mova @(loc_8C0D46EC,pc),r0  ; r0 set to 0x8C0D46Ec
	fmov.s @r0,fr3 ; r3 ??
	mov.w @(loc_8C0D46D2,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b @(r0,r4),r3
	add 0xFE,r3
	mov.b r3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	tst r2,r2
	bt/s loc_8C0D468c
	mov 0x17,r5 ; r5 set to 0x17
	bra loc_8C0D468e
	mov 0x09,r6

loc_8C0D468C:
	mov 0x08,r6 ; r6 set to 0x08

loc_8C0D468E:
	mov.l @(loc_8C0D46F0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	jmp @r3
	lds.l @r15+,pr

loc_8C0D4694:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r1
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	add 0x34,r1
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D46E8,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	mov r0,r2 ; r2 set to 0x0c
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C0D46F4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D473e
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d46c4:
	#data 0x0130
loc_8c0d46c6:
	#data 0x1700
loc_8c0d46c8:
	#data 0x00Cc
loc_8c0d46ca:
	#data 0x0158
loc_8C0D46CC:
	#data 0x012c
loc_8C0D46CE:
	#data 0x00Dc
loc_8C0D46D0:
	#data 0x01A3
loc_8C0D46D2:
	#data 0x0108
	#align4

loc_8C0D46D4:
	#data bank04.loc_8c044F12
loc_8C0D46D8:
	#data loc_8c0d45E6
loc_8C0D46DC:
	#data 0x8C28C6B0
loc_8C0D46E0:
	#data bank15.loc_8c15ccB4
loc_8C0D46E4:
	#data bank12.loc_8c129560
loc_8C0D46E8:
	#data bank12.loc_8c1294C8
loc_8C0D46EC:
	#data 0x3F000000
loc_8C0D46F0:
	#data bank03.loc_8c034C38

;==============================================
loc_8c0d46f4:
	mov.l @(loc_8C0D474C,pc),r2
	mov.w @(loc_8C0D4744,pc),r0
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0
	cmp/eq r0,r1
	bt/s loc_8c0d4710
	mov r14,r4
	mov 0x02,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r3
	mov.w @(loc_8c0d4746,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0d4710:
	mov.l @(loc_8c0d4750,pc),r3
	jsr @r3
	nop
	mov.w @(loc_8C0D4748,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d4724
	mova @(loc_8C0D4754,pc),r0
	bra loc_8c0d4726
	fmov.s @r0,fr3

loc_8c0d4724:
	fldi1 fr3

loc_8c0d4726:
	mov.w @(loc_8C0D474A,pc),r0
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0D4730:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D4746,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D473E:
	mov.l @(loc_8C0D4758,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d4744:
	#data 0x0158
loc_8C0D4746:
	#data 0x012c
loc_8c0d4748:
	#data 0x0141
loc_8c0d474a:
	#data 0x0108
	#align4

loc_8c0d474c:
	#data 0x8C28C6B0
loc_8C0D4750:
	#data bank03.loc_8c034dee
loc_8c0d4754:
	#data 0x3F000000
loc_8C0D4758:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d475c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x134,PC),r10
	mov 0x03,r12
	mov.w @(0x11E,PC),r11
	mov 0x00,r14
	mov.l @(0x130,PC),r13
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15

loc_8c0d4778:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r10
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d47bc
	mov r0,r4
	mov.l @(0x120,PC),r2
	mov.w @(0x106,PC),r0
	mov.l r2,@(0x10,r4)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	mov.w @(0xF8,PC),r3
	mov.w r2,@(r0,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	add r4,r3
	mov 0x23,r0
	mov r3,r2
	mov.b r14,@(r0,r4)
	add 0x01,r14
	mov.l r3,@r13
	cmp/ge r12,r14
	mov.w @(0xE4,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r1
	mov.w r1,@r2
	bf loc_8c0d4778
	mov r4,r0
	nop

loc_8c0d47bc:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D47CC:
	mov r4,r3
	mov.l @(loc_8C0D48AC,pc),r1 ; r1 set to 0x8C15CCC4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D47DE:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D489A,pc),r3 ; r3 set to 0xDc
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_8C0D489A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D4898,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov.l @(0x14,r14),r2
	add r3,r2
	mov.l @(loc_8C0D48B0,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D4898,pc),r0 ; r0 set to 0x12c
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x14,r14),r0 ; r0 ??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x14,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x14,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x14,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0D489C,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x14,r14),r2
	add 0x50,r2
	mov.l @(loc_8C0D48B4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x14,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C0D4866
	mov 0x00,r4 ; r4 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C0D4866
	cmp/eq 0x02,r0
	bt loc_8C0D486c
	bra loc_8C0D4872
	nop

loc_8C0D4866:
	mov 0x24,r0 ; r0 set to 0x24
	bra loc_8C0D4872
	mov.b r4,@(r0,r14)

loc_8c0d486c:
	mov 0x24,r0
	mov 0x07,r2
	mov.b r2,@(r0,r14)

loc_8C0D4872:
	mov.l @(0x14,r14),r2
	mov r14,r1
	mov.l @(loc_8C0D48B4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	mov 0x23,r0 ; r0 set to 0x23
	mov.l @(loc_8C0D48B8,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d4890:
	#data 0x1700
loc_8c0d4892:
	#data 0x0130
loc_8c0d4894:
	#data 0x00Cc
loc_8c0d4896:
	#data 0x0158
loc_8C0D4898:
	#data 0x012c
loc_8C0D489A:
	#data 0x00Dc
loc_8C0D489C:
	#data 0x01A3
	#align4

loc_8C0D48A0:
	#data bank04.loc_8c044F12
loc_8C0D48A4:
	#data 0x8C28C6B4
loc_8C0D48A8:
	#data loc_8c0d47Cc
loc_8C0D48AC:
	#data bank15.loc_8c15ccC4
loc_8C0D48B0:
	#data bank12.loc_8c129560
loc_8C0D48B4:
	#data bank12.loc_8c1294C8
loc_8C0D48B8:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0D48BC:
	sts.l pr,@-r15
	mov.l @(0x14,r4),r2
	mov r4,r1
	mov.l @(loc_8C0D4910,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x01,r4),r0
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	mov r0,r2 ; r2 set to 0x0c
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C0D48Dc
	bra loc_8C0D4906
	lds.l @r15+,pr

loc_8c0d48dc:
	mov.l @(0x14,r4),r3
	mov.b @(0x04,r3),r0
	mov 0x03,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c0d48f2
	mov 0x02,r0
	mov.b r0,@(0x04,r4)
	mov 0x00,r2
	mov.w @(loc_8c0d490c,pc),r0
	mov.b r2,@(r0,r4)

loc_8c0d48f2:
	mov.l @(loc_8c0d4914,pc),r3
	jmp @r3
	lds.l @r15+,pr

loc_8C0D48F8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D490C,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D4906:
	mov.l @(loc_8C0D4918,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D490C:
	#data 0x012c
	#align4

loc_8C0D4910:
	#data bank12.loc_8c1294C8
loc_8C0D4914:
	#data bank03.loc_8c034D8c
loc_8C0D4918:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d491c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x154,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d496c
	mov r0,r4
	mov.l @(0x144,PC),r3
	mov.w @(0x12C,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x140,PC),r5
	mov.l r2,@(0x18,r4)
	mov r2,r3
	mov.w @(r0,r3),r2

loc_8c0d4948:
	mov.w @(0x120,PC),r3
	mov.w r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x11A,PC),r3
	mov.w @(0x11A,PC),r0
	add r4,r3
	mov r3,r2
	mov.l r3,@r5
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r1
	mov.w r1,@r2
	mov 0x23,r2
	mov.b @(0x4,r15),r0
	add r4,r2
	mov.b r0,@r2
	mov r4,r0
	nop

loc_8c0d496c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D4974:
	mov.l r14,@-r15
	mov 0x23,r0 ; r0 set to 0x23
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0D4A88,pc),r0 ; r0 set to 0x8C15CCD4
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0D498A:
	mov r4,r3
	mov.l @(loc_8C0D4A8C,pc),r1 ; r1 set to 0x8C15CCE4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D499C:
	mov.w @(loc_8C0D4A74,pc),r1 ; r1 set to 0xDc
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0D4A74,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.l @(loc_8C0D4A90,pc),r3 ; r3 set to 0x8C129560
	add r4,r1 ; r1 ??? bc r4 is ???
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D4A72,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D4A72,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(loc_8C0D4A76,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0D4A94,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(loc_8C0D4A94,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0D4A98,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x02,r6 ; r6 set to 0x02
	jmp @r2
	lds.l @r15+,pr

loc_8C0D4A10:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/pz r0
	bf/s loc_8C0D4A2c
	mov r5,r13
	bra loc_8C0D4A36
	and 0x01,r0

loc_8C0D4A2C:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C0D4A36:
	tst r0,r0
	bt loc_8C0D4A3e
	bra loc_8C0D4A42
	fldi1 fr3

loc_8C0D4A3E:
	mova @(loc_8C0D4A9C,pc),r0  ; r0 init to 0x8C0D4A9c
	fmov.s @r0,fr3

loc_8C0D4A42:
	mov.w @(loc_8C0D4A78,pc),r0 ; r0 set to 0x108, r0 set to 0x108
	mov r13,r2
	mov r14,r1
	mov.l @(loc_8C0D4A94,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	add 0x34,r2
	fmov.s fr3,@(r0,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov.b @(0x01,r14),r0
	mov r0,r3 ; r3 set to 0x0C, r3 set to 0x0c
	mov.b @(0x01,r13),r0
	cmp/eq r0,r3
	bt loc_8C0D4AA0
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0D4DE6
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d4a6a:
	#data 0x0130
loc_8c0d4a6c:
	#data 0x1700
loc_8c0d4a6e:
	#data 0x00CC
loc_8c0d4a70:
	#data 0x0158
loc_8C0D4A72:
	#data 0x012c
loc_8C0D4A74:
	#data 0x00Dc
loc_8C0D4A76:
	#data 0x01A3
loc_8C0D4A78:
	#data 0x0108
	#align4

loc_8C0D4A7C:
	#data bank04.loc_8c044F12
loc_8C0D4A80:
	#data loc_8c0d4974
loc_8C0D4A84:
	#data 0x8C28C6B8
loc_8C0D4A88:
	#data bank15.loc_8c15ccD4
loc_8C0D4A8C:
	#data bank15.loc_8c15ccE4
loc_8C0D4A90:
	#data bank12.loc_8c129560
loc_8C0D4A94:
	#data bank12.loc_8c1294C8
loc_8C0D4A98:
	#data bank03.loc_8c034C38
loc_8C0D4A9C:
	#data 0x3F4CCCCd

;==============================================
loc_8C0D4AA0:
	mov.l @(loc_8C0D4BB0,pc),r2 ; r2 set to 0x8C034D8c
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0D4AB8
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0D4BA8,pc),r0 ; r0 set to 0x12c
	bra loc_8C0D4AC6
	mov.b r3,@(r0,r14)

loc_8c0d4ab8:
	mov.w @(loc_8C0D4BAA,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c0d4ac6
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)

loc_8C0D4AC6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D4ACE:
	mov r4,r3
	mov.l @(loc_8C0D4BB4,pc),r1 ; r1 set to 0x8C15CCF4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D4AE0:
	mov.w @(loc_8C0D4BAC,pc),r1 ; r1 set to 0xDc
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0D4BAC,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.l @(loc_8C0D4BB8,pc),r3 ; r3 set to 0x8C129560
	add r4,r1 ; r1 ??? bc r4 is ???
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D4BA8,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D4BA8,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(loc_8C0D4BAE,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0D4BBC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(loc_8C0D4BBC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0D4BC0,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x04,r6 ; r6 set to 0x04
	jmp @r2
	lds.l @r15+,pr

loc_8C0D4B54:
	mov.l r14,@-r15
	mov r5,r2
	sts.l pr,@-r15
	mov.l @(loc_8C0D4BBC,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	mov r4,r14
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x01,r14),r0
	mov r0,r3 ; r3 set to 0x0c
	mov.b @(0x01,r5),r0
	cmp/eq r0,r3
	bt loc_8C0D4B7a
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D4DE6
	mov.l @r15+,r14

loc_8c0d4b7a:
	mov.l @(loc_8c0d4bb0,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d4b90
	mov 0x02,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r3
	mov.w @(loc_8c0d4ba8,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0d4b90:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0D4B96:
	mov r4,r3
	mov.l @(loc_8C0D4BC4,pc),r1 ; r1 set to 0x8C15CD04
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D4BA8:
	#data 0x012c
loc_8c0d4baa:
	#data 0x0141
loc_8C0D4BAC:
	#data 0x00Dc
loc_8C0D4BAE:
	#data 0x01A3
	#align4

loc_8C0D4BB0:
	#data bank03.loc_8c034D8c
loc_8C0D4BB4:
	#data bank15.loc_8c15ccF4
loc_8C0D4BB8:
	#data bank12.loc_8c129560
loc_8C0D4BBC:
	#data bank12.loc_8c1294C8
loc_8C0D4BC0:
	#data bank03.loc_8c034C38
loc_8C0D4BC4:
	#data bank15.loc_8c15cd04

;==============================================
loc_8C0D4BC8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D4D24,pc),r2 ; r2 set to 0xDc
	mov 0x01,r4 ; r4 set to 0x01
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0D4D24,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0D4D2C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0D4D22,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D4D22,pc),r0 ; r0 set to 0x12c
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(loc_8C0D4D26,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r3,@(r0,r14)
	add 0x34,r1
	mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0D4D34,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x05,r6 ; r6 set to 0x05
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_8C0D4D28,pc),r0 ; r0 set to 0x108
	fldi1 fr3
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D4C4C:
	mov.l r14,@-r15
	mov r5,r2
	sts.l pr,@-r15
	mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	mov r4,r14
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x01,r14),r0
	mov r0,r3 ; r3 set to 0x0c
	mov.b @(0x01,r5),r0
	cmp/eq r0,r3
	bt loc_8C0D4C72
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0D4DE6
	mov.l @r15+,r14

loc_8c0d4c72:
	mov.l @(loc_8c0d4d38,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d4c88
	mov 0x02,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r3
	mov.w @(loc_8c0d4d22,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0d4c88:
	mov.l @(loc_8C0D4D3C,pc),r1
	mov.w @(loc_8c0d4d28,pc),r0
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0D4C9C:
	mov r4,r3
	mov.l @(loc_8C0D4D40,pc),r1 ; r1 set to 0x8C15CD14
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D4CAE:
	mov.w @(loc_8C0D4D24,pc),r1 ; r1 set to 0xDc
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0D4D24,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.l @(loc_8C0D4D2C,pc),r3 ; r3 set to 0x8C129560
	add r4,r1 ; r1 ??? bc r4 is ???
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D4D22,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D4D22,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(loc_8C0D4D26,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0D4D34,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x03,r6 ; r6 set to 0x03
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D4D22:
	#data 0x012c
loc_8C0D4D24:
	#data 0x00Dc
loc_8C0D4D26:
	#data 0x01A3
loc_8C0D4D28:
	#data 0x0108
	#align4

loc_8C0D4D2C:
	#data bank12.loc_8c129560
loc_8C0D4D30:
	#data bank12.loc_8c1294C8
loc_8C0D4D34:
	#data bank03.loc_8c034C38
loc_8C0D4D38:
	#data bank03.loc_8c034D8c
loc_8c0d4d3c:
	#data 0x3D000000
loc_8C0D4D40:
	#data bank15.loc_8c15cd14

;==============================================
loc_8C0D4D44:
	mov.l r14,@-r15
	mov r4,r1
	mov.l r13,@-r15
	mov r5,r2
	mov.l r12,@-r15
	add 0x34,r2
	sts.l pr,@-r15
	mov.l @(loc_8C0D4DF4,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r14
	mov r5,r13
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x01,r14),r0
	mov r0,r3 ; r3 set to 0x0c
	mov.b @(0x01,r13),r0
	cmp/eq r0,r3
	bt loc_8C0D4D76
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0D4DE6
	mov.l @r15+,r14

loc_8c0d4d76:
	mov.w @(loc_8C0D4DEC,pc),r0
	mov.w @(loc_8C0D4DEE,pc),r3
	mov.w @(r0,r13),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bt/s loc_8c0d4d8c
	mov 0x00,r12
	mov 0x02,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0d4df0,pc),r0
	mov.b r12,@(r0,r14)

loc_8c0d4d8c:
	mov.w @(loc_8C0D4DF2,pc),r3
	add r13,r3
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt loc_8c0d4dce
	mov.w @(loc_8C0D4DF2,pc),r0
	add r13,r0
	mov.b @(0x01,r0),r0
	cmp/eq 0x10,r0
	bf loc_8c0d4da6
	mov.w @(loc_8c0d4df0,pc),r0
	bra loc_8c0d4dc4
	mov.b r12,@(r0,r14)

loc_8c0d4da6:
	mov.w @(loc_8C0D4DF2,pc),r7
	mov 0x01,r3
	mov.w @(loc_8c0d4df0,pc),r0
	mov 0x1B,r5
	add r13,r7
	mov.b r3,@(r0,r14)
	mov.b @(0x01,r7),r0
	mov.l @(loc_8c0d4df8,pc),r3
	mov r0,r7
	mov.w @(loc_8C0D4DEC,pc),r0
	add 0xFF,r7
	mov.b @(r0,r14),r6
	extu.b r6,r6
	jsr @r3
	mov r14,r4

loc_8c0d4dc4:
	mov.w @(loc_8C0D4DF2,pc),r2
	add r13,r2
	mov r12,r0
	nop
	mov.b r0,@(0x01,r2)

loc_8c0d4dce:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0D4DD8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D4DF0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D4DE6:
	mov.l @(loc_8C0D4DFC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d4dec:
	#data 0x0158
loc_8c0d4dee:
	#data 0x0F01
loc_8C0D4DF0:
	#data 0x012c
loc_8c0d4df2:
	#data 0x0150
	#align4

loc_8C0D4DF4:
	#data bank12.loc_8c1294C8
loc_8C0D4DF8:
	#data bank03.loc_8c034CD6
loc_8C0D4DFC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0d4e00:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x150,PC),r3
	mov 0x04,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d4e50
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov.w @(0x12C,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x13C,PC),r5
	mov.l r2,@(0x18,r4)
	mov r2,r3
	mov.w @(r0,r3),r2
	mov.w @(0x120,PC),r3
	mov.w r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x11A,PC),r3
	mov.w @(0x11A,PC),r0
	add r4,r3
	mov r3,r2
	mov.l r3,@r5
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r1
	mov.w r1,@r2
	mov 0x23,r2
	mov.b @(0x4,r15),r0
	add r4,r2
	mov.b r0,@r2
	mov r4,r0
	nop

loc_8c0d4e50:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c0d4e58:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov.l r5,@r15
	mov r6,r0
	nop
	mov.l @(0xF4,PC),r3
	mov 0x04,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d4e96
	mov r0,r4
	mov 0x26,r0
	mov.l @(0xE4,PC),r3
	mov 0x23,r1
	mov.l r3,@(0x10,r4)
	add r4,r1
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w @(0xC8,PC),r2
	mov.l @(0x8,r15),r3
	mov.l r3,@(0x14,r4)
	mov.w r2,@(r0,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1

loc_8c0d4e96:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D4E9E:
	mov.l r14,@-r15
	mov 0x23,r0 ; r0 set to 0x23
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0D4F68,pc),r0 ; r0 set to 0x8C15CD24
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0D4EB4:
	mov r4,r3
	mov.l @(loc_8C0D4F6C,pc),r1 ; r1 set to 0x8C15CD38
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D4EC6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r4 ; r4 set to 0x01
	mov.l r8,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov r4,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D4F58,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0D4F58,pc),r2 ; r2 set to 0xDc
	mov.w @(loc_8C0D4F56,pc),r0 ; r0 set to 0x12c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0D4F70,pc),r3 ; r3 set to 0x8C129560
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.b r4,@(r0,r14)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D4F56,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D4F5A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D4F74,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov r13,r2
	mov.b r3,@(r0,r14)
	add 0x34,r1
	mov.l @(loc_8C0D4F74,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0D4F4E,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r13),r3 ; r3 ??? bc r13 is ???
	tst r3,r3
	bt/s loc_8C0D4F7c
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C0D4F78,pc),r1 ; r1 set to 0xC2700000
	lds r1,fpul
	bra loc_8C0D4F82
	fsts fpul,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D4F4E:
	#data 0x0130
loc_8C0D4F50:
	#data 0x1700
loc_8C0D4F52:
	#data 0x00CC
loc_8C0D4F54:
	#data 0x0158
loc_8C0D4F56:
	#data 0x012c
loc_8C0D4F58:
	#data 0x00Dc
loc_8C0D4F5A:
	#data 0x01A3
	#align4

loc_8C0D4F5C:
	#data bank04.loc_8c044F12
loc_8C0D4F60:
	#data loc_8c0d4E9e
loc_8C0D4F64:
	#data 0x8C28C6Bc
loc_8C0D4F68:
	#data bank15.loc_8c15cd24
loc_8C0D4F6C:
	#data bank15.loc_8c15cd38
loc_8C0D4F70:
	#data bank12.loc_8c129560
loc_8C0D4F74:
	#data bank12.loc_8c1294C8
loc_8C0D4F78:
	#data 0xC2700000

;==============================================
loc_8c0d4f7c:
	mov.l @(loc_8C0D50CC,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c0d4f82:
	fmov.s @r8,fr2
	mov 0x1B,r5
	mov.l @(loc_8c0d50d0,pc),r3
	mov 0x06,r6
	fadd fr3,fr2
	fmov.s fr2,@r8
	jsr @r3
	mov r14,r4
	mova @(loc_8C0D50D4,pc),r0
	mov r13,r5
	fmov.s @r0,fr3
	mov r14,r4
	mov.w @(loc_8C0D50C0,pc),r0
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0d4fa6:
	mov.w @(loc_8C0D50C2,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	cmp/eq 0x03,r0
	bf/s loc_8c0d4fc6
	mov r5,r13
	mov.l @(loc_8C0D50D8,pc),r1
	mov.w @(loc_8C0D50C0,pc),r0
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8c0d4fc6:
	mov.b @(0x01,r14),r0
	mov r0,r3
	mov.b @(0x01,r13),r0
	cmp/eq r0,r3
	bt loc_8c0d4fdc
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0d5544
	mov.l @r15+,r14

loc_8c0d4fdc:
	mov.l @(loc_8c0d50dc,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d4ff2
	mov.l @(loc_8c0d50e0,pc),r2
	jsr @r2
	mov r13,r4
	mov 0x02,r0
	mov.b r0,@(0x04,r14)

loc_8c0d4ff2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0D4FFA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0D50E4,pc),r1 ; r1 set to 0x8C15CD48
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r5,r13
	mov.b @(0x01,r14),r0
	mov r0,r3
	mov.b @(0x01,r13),r0
	cmp/eq r0,r3
	bt loc_8C0D5026
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0D5544
	mov.l @r15+,r14

loc_8C0D5026:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D502E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r4 ; r4 set to 0x01
	mov.l r8,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov r4,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D50C6,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0D50C6,pc),r2 ; r2 set to 0xDc
	mov.w @(loc_8C0D50C4,pc),r0 ; r0 set to 0x12c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0D50E8,pc),r3 ; r3 set to 0x8C129560
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.b r4,@(r0,r14)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D50C4,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D50C8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D50EC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x07,r3 ; r3 set to 0x07
	mov r14,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov r13,r2
	mov.b r3,@(r0,r14)
	add 0x34,r1
	mov.l @(loc_8C0D50EC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C0D5100
	mov.w @(loc_8C0D50CA,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r13),r3 ; r3 ??? bc r13 is ???
	tst r3,r3
	bt/s loc_8C0D50F4
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C0D50F0,pc),r1 ; r1 set to 0xC2700000
	lds r1,fpul
	bra loc_8C0D50Fa
	fsts fpul,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d50c0:
	#data 0x0108
loc_8c0d50c2:
	#data 0x0141
loc_8C0D50C4:
	#data 0x012c
loc_8C0D50C6:
	#data 0x00Dc
loc_8C0D50C8:
	#data 0x01A3
loc_8C0D50CA:
	#data 0x0130
	#align4

loc_8c0d50cc:
	#data 0x42700000
loc_8C0D50D0:
	#data bank03.loc_8c034C38
loc_8c0d50d4:
	#data 0x3E4CCCCd
loc_8c0d50d8:
	#data 0x3C83126f
loc_8C0D50DC:
	#data bank03.loc_8c034D8c
loc_8C0D50E0:
	#data bank08.loc_8c085EF8
loc_8C0D50E4:
	#data bank15.loc_8c15cd48
loc_8C0D50E8:
	#data bank12.loc_8c129560
loc_8C0D50EC:
	#data bank12.loc_8c1294C8
loc_8C0D50F0:
	#data 0xC2700000

;==============================================
loc_8c0d50f4:
	mov.l @(loc_8C0D5218,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c0d50fa:
	fmov.s @r8,fr2
	fadd fr3,fr2
	fmov.s fr2,@r8

loc_8C0D5100:
	mov.l @(loc_8C0D521C,pc),r1 ; r1 set to 0x43200000
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mov 0x1B,r5 ; r5 set to 0x1b
	lds r1,fpul
	mov 0x07,r6 ; r6 set to 0x07
	mov.l @(loc_8C0D5220,pc),r3 ; r3 set to 0x8C034C38
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x0A,r0 ; r0 set to 0x0a
	fldi0 fr4
	mov.w r0,@(0x1C,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov 0x1E,r5 ; r5 set to 0x1e
	mov.w @(loc_8C0D5210,pc),r0 ; r0 set to 0x108
	mov.l @(loc_8C0D5224,pc),r3 ; r3 set to 0x8C042008
	fldi1 fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D5140:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D5228,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.w @(loc_8C0D5212,pc),r3 ; r3 set to 0x2000, r3 set to 0x2000
	mov.l @(r0,r14),r2
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x47, r0 set to 0x47
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??, r0 ??
	tst r0,r0
	bf loc_8C0D5178
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	fldi1 fr4
	mov.b r0,@(0x04,r14)
	mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
	mov.w r0,@(0x1C,r14)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D5178:
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8C0D5182
	bra loc_8C0D518c
	and 0x01,r0

loc_8C0D5182:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C0D518C:
	tst r0,r0
	bt loc_8C0D5194
	bra loc_8C0D5196
	mov 0x01,r3

loc_8C0D5194:
	mov 0x00,r3 ; r3 set to 0x00

loc_8C0D5196:
	mov.w @(loc_8C0D5214,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mova @(loc_8C0D522C,pc),r0  ; r0 set to 0x8C0D522C, r0 set to 0x8C0D522c
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D51B4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D5228,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C0D5212,pc),r3 ; r3 set to 0x2000
	mov.l @(r0,r14),r2
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x47
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8C0D51E8
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r14)
	mov 0x09,r0 ; r0 set to 0x09
	mov.w r0,@(0x1C,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D51E8:
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8C0D51F2
	bra loc_8C0D51Fc
	and 0x01,r0

loc_8C0D51F2:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C0D51FC:
	tst r0,r0
	bt loc_8C0D5204
	bra loc_8C0D5206
	mov 0x01,r3

loc_8C0D5204:
	mov 0x00,r3 ; r3 set to 0x00

loc_8C0D5206:
	mov.w @(loc_8C0D5214,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D5210:
	#data 0x0108
loc_8C0D5212:
	#data 0x2000
loc_8C0D5214:
	#data 0x012c
	#align4

loc_8c0d5218:
	#data 0x42700000
loc_8C0D521C:
	#data 0x43200000
loc_8C0D5220:
	#data bank03.loc_8c034C38
loc_8C0D5224:
	#data bank04.loc_8c042008
loc_8C0D5228:
	#data bank03.loc_8c034D8c
loc_8C0D522C:
	#data 0x3DCCCCCd

;==============================================
loc_8C0D5230:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D52FC,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	mov.l @(loc_8C0D5300,pc),r1 ; r1 set to 0x3DDF3B65
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	mov.l @(loc_8C0D5304,pc),r1 ; r1 set to 0x3EDF3B65
	fsts fpul,fr3
	fsub fr3,fr2
	lds r1,fpul
	fmov.s fr2,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???
	fsts fpul,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x53
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8C0D5270
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x04,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D5270:
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8C0D527a
	bra loc_8C0D5284
	and 0x01,r0

loc_8C0D527A:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C0D5284:
	tst r0,r0
	bt loc_8C0D528c
	bra loc_8C0D528e
	mov 0x01,r3

loc_8C0D528C:
	mov 0x00,r3 ; r3 set to 0x00

loc_8C0D528E:
	mov.w @(loc_8C0D52F8,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D5298:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D52FC,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0D52Be
	mov 0x05,r0 ; r0 set to 0x05
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0D52F8,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D52BE:
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8C0D52C8
	bra loc_8C0D52D2
	and 0x01,r0

loc_8C0D52C8:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C0D52D2:
	tst r0,r0
	bt loc_8C0D52Da
	bra loc_8C0D52Dc
	mov 0x01,r2

loc_8C0D52DA:
	mov 0x00,r2 ; r2 set to 0x00

loc_8C0D52DC:
	mov.w @(loc_8C0D52F8,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D52E6:
	mov r4,r3
	mov.l @(loc_8C0D5308,pc),r1 ; r1 set to 0x8C15CD64
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D52F8:
	#data 0x012c
	#align4

loc_8C0D52FC:
	#data bank03.loc_8c034D8c
loc_8C0D5300:
	#data 0x3DDF3B65
loc_8C0D5304:
	#data 0x3EDF3B65
loc_8C0D5308:
	#data bank15.loc_8c15cd64

;==============================================
loc_8C0D530C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(0x14,r14),r5
	mov 0x01,r4
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov.w @(0x100,PC),r1
	mov.w @(0xFE,PC),r2
	mov.w @(0xFA,PC),r0
	add r14,r1
	mov.l @(0x104,PC),r3
	add r13,r2
	mov.b r4,@(r0,r14)
	jsr @r3
	add 0x94,r0
	mov.w @(0xEC,PC),r0
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
	mov.w @(0xD4,PC),r0
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
	mov r14,r1
	mov.b @(r0,r13),r2
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov r5,r2
	mov.b @(r0,r5),r3
	add 0x34,r2
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.l @(0xB4,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xB0,PC),r2
	mov 0x1B,r5
	mov 0x08,r6
	jsr @r2
	mov r14,r4
	mova @(0xA8,PC),r0
	mov r13,r5
	fmov @r0,fr3
	mov 0x02,r3
	mov.w @(0x8C,PC),r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov.w @(0x88,PC),r0
	mov.l r3,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D53A8:
	mov.l @(0x94,PC),r1
	mov.w @(0x7A,PC),r0
	lds r1,fpul
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	fsts fpul,fr3
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr1
	fldi0 fr2
	fcmp/gt fr1,fr2
	bf.s loc_8c0d53ca
	fldi0 fr15
	fmov fr15,@(r0,r14)

loc_8C0D53CA:
	mov.w @(0x5C,PC),r0
	mov 0x02,r3
	mov.l r3,@(r0,r5)
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d53ec
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x3C,PC),r0
	mov.b r3,@(r0,r14)
	add 0xDC,r0
	bra loc_8c0d5408
	fmov fr15,@(r0,r14)

loc_8C0D53EC:
	mov.w @(0x3C,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c0d5408
	mov.w @(0x34,PC),r0
	mov 0x00,r2
	mov.l @(0x4C,PC),r3
	mov 0x1F,r5
	mov.b r2,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	fmov @r15+,fr15
	jmp @r3
	mov.l @r15+,r14

loc_8C0D5408:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D5410:
	mov r4,r3
	mov.l @(loc_8C0D544C,pc),r1 ; r1 set to 0x8C15CD74
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d5422:
	#data 0x012c
loc_8c0d5424:
	#data 0x00dc
loc_8c0d5426:
	#data 0x01a3
loc_8c0d5428:
	#data 0x0108
loc_8c0d542a:
	#data 0x02c4
loc_8c0d542c:
	#data 0x0141
	#align4

loc_8C0D5430:
	#data bank12.loc_8c129560
loc_8C0D5434:
	#data bank12.loc_8c1294C8
loc_8C0D5438:
	#data bank03.loc_8c034C38
loc_8C0D543C:
	#data 0x3F333333
loc_8C0D5440:
	#data 0x3C1C09C0
loc_8C0D5444:
	#data bank03.loc_8c034D8c
loc_8C0D5448:
	#data bank04.loc_8c042008
loc_8C0D544C:
	#data bank15.loc_8c15cd74

;==============================================
loc_8C0D5450:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(0x14,r14),r5
	mov 0x01,r4
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov.w @(0xE4,PC),r1
	mov.w @(0xE2,PC),r2
	mov.w @(0xDE,PC),r0
	add r14,r1
	mov.l @(0xE4,PC),r3
	add r13,r2
	mov.b r4,@(r0,r14)
	jsr @r3
	add 0x94,r0
	mov.w @(0xD0,PC),r0
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
	mov.w @(0xB8,PC),r0
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
	mov r14,r1
	mov.b @(r0,r13),r2
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov r5,r2
	mov.b @(r0,r5),r3
	add 0x34,r2
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.l @(0x94,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x90,PC),r2
	mov 0x1B,r5
	mov 0x09,r6
	jsr @r2
	mov r14,r4
	mova @(0x88,PC),r0
	mov r13,r5
	fmov @r0,fr3
	mov 0x02,r3
	mov.w @(0x70,PC),r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov.w @(0x6C,PC),r0
	mov.l r3,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D54EC:
	mov.l @(0x74,PC),r1
	mov.w @(0x5E,PC),r0
	lds r1,fpul
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	fsts fpul,fr3
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr1
	fldi0 fr2
	fcmp/gt fr1,fr2
	bf.s loc_8c0d550e
	fldi0 fr15
	fmov fr15,@(r0,r14)

loc_8C0D550E:
	mov.w @(0x40,PC),r0
	mov 0x02,r3
	mov.l r3,@(r0,r5)
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d552e
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x20,PC),r0
	mov.b r3,@(r0,r14)
	add 0xDC,r0
	fmov fr15,@(r0,r14)

loc_8C0D552E:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D5536:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D554A,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D5544:
	mov.l @(loc_8C0D556C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d554a:
	#data 0x012c
loc_8c0d554c:
	#data 0x00dc
loc_8c0d554e:
	#data 0x01a3
loc_8c0d5550:
	#data 0x0108
loc_8c0d5552:
	#data 0x02c4
	#align4

loc_8C0D5554:
	#data bank12.loc_8c129560
loc_8C0D5558:
	#data bank12.loc_8c1294C8
loc_8C0D555C:
	#data bank03.loc_8c034C38

loc_8C0D5560:
	#data 0x3F333333
loc_8C0D5564:
	#data 0x3C1C09C0
loc_8C0D5568:
	#data bank03.loc_8c034D8c
loc_8C0D556C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d5570:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x150,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d55c0
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov.w @(0x128,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x13C,PC),r5
	mov.l r2,@(0x18,r4)
	mov r2,r3
	mov.w @(r0,r3),r2
	mov.w @(0x11C,PC),r3
	mov.w r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x116,PC),r3
	mov.w @(0x116,PC),r0
	add r4,r3
	mov r3,r2
	mov.l r3,@r5
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r1
	mov.w r1,@r2
	mov 0x23,r2
	mov.b @(0x4,r15),r0
	add r4,r2
	mov.b r0,@r2
	mov r4,r0
	nop

loc_8c0d55c0:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D55C8:
	mov.l r14,@-r15
	mov 0x23,r0 ; r0 set to 0x23
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0D56D8,pc),r0 ; r0 set to 0x8C15CD84
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0D55DE:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0D56DC,pc),r1 ; r1 set to 0x8C15CD8c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D55F2:
	sts.l pr,@-r15
	mov 0x01,r6 ; r6 set to 0x01
	mov r6,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D56C4,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0D56C4,pc),r2 ; r2 set to 0xDc
	mov.w @(loc_8C0D56C2,pc),r0 ; r0 set to 0x12c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D56E0,pc),r3 ; r3 set to 0x8C129560
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.b r6,@(r0,r4)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D56C2,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(loc_8C0D56C6,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0D56E4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(loc_8C0D56E4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0D56E8,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x00,r6 ; r6 set to 0x00
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C0D5666:
	mov.l r14,@-r15
	mov r4,r1
	mov.l r13,@-r15
	mov r5,r2
	sts.l pr,@-r15
	mov.l @(0x70,PC),r3
	add 0x34,r2
	mov r4,r14
	mov r5,r13
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x1,r14),r0
	mov r0,r3
	mov.b @(0x1,r13),r0
	cmp/eq r0,r3
	bf loc_8c0d569c
	mov.w @(0x3C,PC),r0
	add r13,r0
	mov.b @(0x1,r0),r0
	cmp/eq 0x01,r0
	bt loc_8c0d569c
	bsr loc_8c0d5840
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0d56ae

loc_8C0D569C:
	mov r13,r5
	mov.w @(0x20,PC),r0
	mov 0x00,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0d5818
	mov.l @r15+,r14

loc_8C0D56AE:
	lds.l @r15+,pr
	mov.l @(0x38,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d56ba:
	#data 0x0130
loc_8c0d56bc:
	#data 0x1700
loc_8c0d56be:
	#data 0x00cc
loc_8c0d56c0:
	#data 0x0158
loc_8C0D56C2:
	#data 0x012c
loc_8C0D56C4:
	#data 0x00Dc
loc_8C0D56C6:
	#data 0x01A3
loc_8C0D56C8:
	#data 0x0150
	#align4

loc_8C0D56CC:
	#data bank04.loc_8c044F12
loc_8C0D56D0:
	#data loc_8c0d55C8
loc_8C0D56D4:
	#data 0x8C28C6C0
loc_8C0D56D8:
	#data bank15.loc_8c15cd84
loc_8C0D56DC:
	#data bank15.loc_8c15cd8c
loc_8C0D56E0:
	#data bank12.loc_8c129560
loc_8C0D56E4:
	#data bank12.loc_8c1294C8
loc_8C0D56E8:
	#data bank03.loc_8c034C38
loc_8C0D56EC:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0D56F0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0D5828,pc),r1 ; r1 set to 0x8C15CD9c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0D5704:
	mov.l r14,@-r15
	mov 0x01,r14 ; r14 set to 0x01
	sts.l pr,@-r15
	mov r14,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D5820,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0D5820,pc),r2 ; r2 set to 0xDc
	mov.w @(loc_8C0D581E,pc),r0 ; r0 set to 0x12c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D582C,pc),r3 ; r3 set to 0x8C129560
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.b r14,@(r0,r4)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D581E,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x50,r1
	mov.b r14,@(r0,r4)
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
	mov.w @(loc_8C0D5822,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0D5830,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(loc_8C0D5830,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	mov.l @(loc_8C0D5834,pc),r2 ; r2 set to 0x8C034C38
	mov r14,r6 ; r6 set to 0x01
	mov 0x1B,r5 ; r5 set to 0x1b
	jmp @r2
	mov.l @r15+,r14

loc_8C0D577C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	mov r0,r3
	mov.b @(0x01,r13),r0
	cmp/eq r0,r3
	bf loc_8C0D579e
	bsr loc_8C0D5840
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C0D57Aa
	bra loc_8C0D57D4
	nop

loc_8C0D579E:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0D5818
	mov.l @r15+,r14

loc_8c0d57aa:
	mov.w @(loc_8C0D5824,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0d57c0
	mov r13,r2
	mov.l @(loc_8c0d5830,pc),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0

loc_8c0d57c0:
	mov.w @(loc_8C0D5826,pc),r2
	add r13,r2
	mov.b @(0x01,r2),r0
	tst r0,r0
	bt loc_8c0d5802
	mov.w @(loc_8C0D5826,pc),r0
	add r13,r0
	mov.b @(0x01,r0),r0
	cmp/eq 0x09,r0
	bf loc_8c0d57e6

loc_8C0D57D4:
	mov r13,r5
	mov.w @(loc_8C0D581E,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov r14,r4
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0D5818
	mov.l @r15+,r14

loc_8C0D57E6:
	mov.w @(0x3C,PC),r7
	mov 0x1B,r5
	mov.l @(0x4C,PC),r3
	mov 0x01,r6
	add r13,r7
	mov.b @(0x1,r7),r0
	mov r0,r7
	add 0xFF,r7
	jsr @r3
	mov r14,r4
	mov.w @(0x28,PC),r2
	mov 0x00,r0
	add r13,r2
	mov.b r0,@(0x1,r2)

loc_8C0D5802:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0D580A:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D581E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

loc_8C0D5818:
	mov.l @(loc_8C0D583C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D581E:
	#data 0x012c
loc_8C0D5820:
	#data 0x00Dc
loc_8C0D5822:
	#data 0x01A3
loc_8c0d5824:
	#data 0x0141
loc_8c0d5826:
	#data 0x0150
	#align4

loc_8C0D5828:
	#data bank15.loc_8c15cd9c
loc_8C0D582C:
	#data bank12.loc_8c129560
loc_8C0D5830:
	#data bank12.loc_8c1294C8
loc_8C0D5834:
	#data bank03.loc_8c034C38
loc_8C0D5838:
	#data bank03.loc_8c034CD6
loc_8C0D583C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0d5840:
	mov.w @(loc_8C0D5866,pc),r0
	mov.l @(0x18,r4),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d585c
	mov.w @(loc_8C0D5868,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d585c
	mov.b @(0x05,r4),r0
	tst r0,r0
	bt loc_8c0d5860

loc_8c0d585c:
	rts
	mov 0x01,r0

;----------------------------------------------
loc_8c0d5860:
	mov 0x00,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D5866:
	#data 0x0159
loc_8C0D5868:
	#data 0x01D0
	#align4

;==============================================
loc_8c0d586c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x12C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d58b0
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov.w @(0x106,PC),r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov r2,r3
	mov.l r2,@(0x18,r4)
	mov.w @(r0,r3),r2
	mov.w @(0xFC,PC),r3
	mov.w r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xF6,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w @(0xF2,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)
	mov 0x23,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov r4,r0
	nop

loc_8c0d58b0:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C0D58B8:
	mov.l r14,@-r15
	mov 0x23,r0 ; r0 set to 0x23
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0D59A8,pc),r0 ; r0 set to 0x8C15CDAc
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0D58CE:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0D59AC,pc),r1 ; r1 set to 0x8C15CDCc
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0D58E2:
	mov.l r14,@-r15
	mov 0x01,r6 ; r6 set to 0x01
	sts.l pr,@-r15
	mov r6,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D599A,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0D599A,pc),r2 ; r2 set to 0xDc
	mov.w @(loc_8C0D5998,pc),r0 ; r0 set to 0x12c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D59B0,pc),r3 ; r3 set to 0x8C129560
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.b r6,@(r0,r4)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D5998,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(loc_8C0D599C,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0D59B4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r5),r2
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???
	mov.b r3,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r4)
	mov r5,r2 ; r2 ??? bc r5 is ???
	mov.l @(loc_8C0D59B4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0D599E,pc),r0 ; r0 set to 0x108
	fldi0 fr3
	fmov.s fr3,@(r0,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1C,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov.l @(loc_8C0D59B8,pc),r14 ; r14 set to 0x8C034C38
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8C0D597c
	cmp/eq 0x00,r0
	bt loc_8C0D597c
	cmp/eq 0x01,r0
	bt loc_8C0D5980
	cmp/eq 0x02,r0
	bt loc_8C0D5984
	bra loc_8C0D598a
	nop

loc_8C0D597C:
	bra loc_8C0D5986
	mov 0x0B,r6

loc_8C0D5980:
	bra loc_8C0D5986
	mov 0x0C,r6

loc_8c0d5984:
	mov 0x0D,r6

loc_8C0D5986:
	jsr @r14
	mov 0x1B,r5 ; r5 set to 0x1b

loc_8C0D598A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d5990:
	#data 0x0130
loc_8c0d5992:
	#data 0x1706
loc_8c0d5994:
	#data 0x0158
loc_8c0d5996:
	#data 0x00cc
loc_8c0d5998:
	#data 0x012c
loc_8c0d599a:
	#data 0x00dc
loc_8c0d599c:
	#data 0x01a3
loc_8c0d599e:
	#data 0x0108
	#align4

loc_8C0D59A0:
	#data bank04.loc_8c044F12
loc_8C0D59A4:
	#data loc_8c0d58B8
loc_8C0D59A8:
	#data bank15.loc_8c15cdAc
loc_8C0D59AC:
	#data bank15.loc_8c15cdCc
loc_8C0D59B0:
	#data bank12.loc_8c129560
loc_8C0D59B4:
	#data bank12.loc_8c1294C8
loc_8C0D59B8:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0D59BC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x02,r11 ; r11 set to 0x02
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	mov r0,r3
	mov.b @(0x01,r13),r0
	cmp/eq r0,r3
	bt/s loc_8C0D59Dc
	mov 0x00,r12 ; r12 set to 0x00
	bra loc_8C0D5AD8
	nop

loc_8C0D59DC:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8C0D59F6
	mov.l @(0x18,r14),r0
	mov.l @(0x18,r0),r0
	mov.b @(0x05,r0),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8C0D5A06
	bra loc_8C0D5A16
	nop

loc_8c0d59f6:
	mov.w @(loc_8C0D5A98,pc),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w @(loc_8C0D5A9A,pc),r0
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8c0d5a16

loc_8c0d5a06:
	mov r11,r0
	nop
	mov.b r0,@(0x04,r14)
	mov r13,r5
	mov.w @(loc_8C0D5A9C,pc),r0
	mov.b r12,@(r0,r14)
	bsr loc_8c0d5e04
	mov r14,r4

loc_8C0D5A16:
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.w r0,@(0x1C,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt/s loc_8C0D5A66
	mov 0x04,r4 ; r4 set to 0x04
	mov r13,r2
	mov.l @(loc_8C0D5AA0,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(0x1C,r14),r0
	cmp/ge r11,r0
	bt loc_8C0D5A4c
	mov.l @(loc_8C0D5AA4,pc),r1 ; r1 set to 0x3EB33333
	mov.w @(loc_8C0D5A9E,pc),r0 ; r0 set to 0x108
	lds r1,fpul
	bra loc_8C0D5A82
	fsts fpul,fr3

loc_8C0D5A4C:
	cmp/ge r4,r0
	bt loc_8C0D5A56
	mova @(loc_8C0D5AA8,pc),r0  ; r0 init to 0x8C0D5AA8
	bra loc_8C0D5A92
	fmov.s @r0,fr3

loc_8C0D5A56:
	mov.l @(loc_8C0D5AAC,pc),r1 ; r1 set to 0x3D333333
	mov.w @(loc_8C0D5A9E,pc),r0 ; r0 set to 0x108
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	bra loc_8C0D5AC6
	fmov.s fr2,@(r0,r14)

loc_8C0D5A66:
	mov r13,r2
	mov.l @(loc_8C0D5AA0,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(0x1C,r14),r0
	cmp/ge r11,r0
	bt loc_8C0D5A8a
	mov.l @(loc_8C0D5AB0,pc),r1 ; r1 set to 0x3E800000
	mov.w @(loc_8C0D5A9E,pc),r0 ; r0 set to 0x108
	lds r1,fpul
	fsts fpul,fr3

loc_8C0D5A82:
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	bra loc_8C0D5AC6
	fmov.s fr2,@(r0,r14)

loc_8C0D5A8A:
	cmp/ge r4,r0
	bt loc_8C0D5AB8
	mova @(loc_8C0D5AB4,pc),r0  ; r0 init to 0x8C0D5AB4
	fmov.s @r0,fr3

loc_8C0D5A92:
	mov.w @(loc_8C0D5A9E,pc),r0 ; r0 set to 0x108, r0 set to 0x108
	bra loc_8C0D5AC6
	fmov.s fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d5a98:
	#data 0x0158
loc_8c0d5a9a:
	#data 0x00CC
loc_8c0d5a9c:
	#data 0x012c
loc_8C0D5A9E:
	#data 0x0108
	#align4

loc_8C0D5AA0:
	#data bank12.loc_8c1294C8
loc_8C0D5AA4:
	#data 0x3EB33333
loc_8C0D5AA8:
	#data 0x3F333333
loc_8C0D5AAC:
	#data 0x3D333333
loc_8C0D5AB0:
	#data 0x3E800000
loc_8C0D5AB4:
	#data 0x3F000000

;==============================================
loc_8C0D5AB8:
	mov.l @(loc_8C0D5BF8,pc),r1 ; r1 set to 0x3D000000
	mov.w @(loc_8C0D5BEA,pc),r0 ; r0 set to 0x108
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8C0D5AC6:
	mov.w @(loc_8C0D5BEC,pc),r0 ; r0 set to 0x150, r0 set to 0x150
	add r13,r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???
	mov.b @(0x01,r0),r0
	cmp/eq 0x03,r0
	bf loc_8C0D5AE8
	mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D5BEE,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r12,@(r0,r14)

loc_8C0D5AD8:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0D5E04
	mov.l @r15+,r14

loc_8c0d5ae8:
	mov.w @(loc_8c0d5bec,pc),r2
	add r13,r2
	mov.b @(0x01,r2),r0
	tst r0,r0
	bt loc_8c0d5b12
	mov.w @(loc_8c0d5bec,pc),r7
	mov 0x1B,r5
	mov.l @(loc_8c0d5bfc,pc),r3
	add r13,r7
	mov.b @(0x01,r7),r0
	mov r0,r7
	mov.w @(loc_8C0D5BF0,pc),r0
	add 0xFF,r7
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0d5bec,pc),r2
	add r13,r2
	mov r12,r0
	nop
	mov.b r0,@(0x01,r2)

loc_8c0d5b12:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0D5B1E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0D5C00,pc),r1 ; r1 set to 0x8C15CDDc
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D5B32:
	mov.l r8,@-r15
	mov 0x01,r6 ; r6 set to 0x01
	sts.l pr,@-r15
	mov r6,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D5BF2,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0D5BF2,pc),r2 ; r2 set to 0xDc
	mov.w @(loc_8C0D5BEE,pc),r0 ; r0 set to 0x12c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D5C04,pc),r3 ; r3 set to 0x8C129560
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.b r6,@(r0,r4)
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D5BEE,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(loc_8C0D5BF4,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0D5C08,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x07,r3 ; r3 set to 0x07
	mov r4,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(loc_8C0D5C08,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x1E,r0 ; r0 set to 0x1e
	mov.w r0,@(0x1C,r4)
	mova @(loc_8C0D5C0C,pc),r0  ; r0 set to 0x8C0D5C0c
	fmov.s @r0,fr4
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8C0D5BC0
	cmp/eq 0x04,r0
	bt loc_8C0D5C18
	cmp/eq 0x05,r0
	bt loc_8C0D5C42
	cmp/eq 0x06,r0
	bt loc_8C0D5C70
	bra loc_8C0D5CA0
	nop

loc_8C0D5BC0:
	mov.w @(loc_8C0D5BF6,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C0D5BD4
	add r4,r8 ; r8 ??? bc r4 is ???
	mov.l @(loc_8C0D5C10,pc),r1 ; r1 set to 0x42820000
	lds r1,fpul
	bra loc_8C0D5BDa
	fsts fpul,fr3

loc_8C0D5BD4:
	mov.l @(loc_8C0D5C14,pc),r2 ; r2 set to 0xC2820000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0D5BDA:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@r8
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	bra loc_8C0D5CA0
	fmov.s fr3,@(r0,r4)


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D5BEA:
	#data 0x0108
loc_8C0D5BEC:
	#data 0x0150
loc_8C0D5BEE:
	#data 0x012c
loc_8c0d5bf0:
	#data 0x0158
loc_8C0D5BF2:
	#data 0x00Dc
loc_8C0D5BF4:
	#data 0x01A3
loc_8C0D5BF6:
	#data 0x0130
	#align4

loc_8C0D5BF8:
	#data 0x3D000000
loc_8C0D5BFC:
	#data bank03.loc_8c034CD6
loc_8C0D5C00:
	#data bank15.loc_8c15cdDc
loc_8C0D5C04:
	#data bank12.loc_8c129560
loc_8C0D5C08:
	#data bank12.loc_8c1294C8
loc_8C0D5C0C:
	#data 0x43780000
loc_8C0D5C10:
	#data 0x42820000
loc_8C0D5C14:
	#data 0xC2820000

;==============================================
loc_8C0D5C18:
	mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C0D5C2c
	add r4,r8 ; r8 ??? bc r4 is ???
	mov.l @(loc_8C0D5D04,pc),r1 ; r1 set to 0x41500000
	lds r1,fpul
	bra loc_8C0D5C32
	fsts fpul,fr3

loc_8C0D5C2C:
	mov.l @(loc_8C0D5D08,pc),r2 ; r2 set to 0xC1500000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0D5C32:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0D5D0C,pc),r1 ; r1 set to 0x43810000, r1 set to 0x43810000
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	bra loc_8C0D5C6a
	fsts fpul,fr3

loc_8C0D5C42:
	mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C0D5C56
	add r4,r8 ; r8 ??? bc r4 is ???
	mov.l @(loc_8C0D5D08,pc),r1 ; r1 set to 0xC1500000
	lds r1,fpul
	bra loc_8C0D5C5c
	fsts fpul,fr3

loc_8c0d5c56:
	mov.l @(loc_8c0d5d04,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c0d5c5c:
	fmov.s @r8,fr2
	mov 0x38,r0
	mov.l @(loc_8C0D5D10,pc),r1
	fadd fr3,fr2
	lds r1,fpul
	fsts fpul,fr3
	fmov.s fr2,@r8

loc_8C0D5C6A:
	fmov.s @(r0,r4),fr2
	bra loc_8C0D5C9e
	fadd fr3,fr2

loc_8C0D5C70:
	mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C0D5C84
	add r4,r8 ; r8 ??? bc r4 is ???
	mov.l @(loc_8C0D5D14,pc),r1 ; r1 set to 0x42820000
	lds r1,fpul
	bra loc_8C0D5C8a
	fsts fpul,fr3

loc_8c0d5c84:
	mov.l @(loc_8C0D5D18,pc),r2
	lds r2,fpul
	fsts fpul,fr3
	
loc_8c0d5c8a:
	fmov.s @r8,fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@r8
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0D5D1C,pc),r0
	fmov.s @r0,fr2
	mov.w @(loc_8C0D5D02,pc),r0

loc_8c0d5c9e:
	fmov.s fr2,@(r0,r4)

loc_8C0D5CA0:
	mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C0D5CAe
	mova @(loc_8C0D5D20,pc),r0  ; r0 set to 0x8C0D5D20
	bra loc_8C0D5CB2
	fmov.s @r0,fr3

loc_8C0D5CAE:
	mova @(loc_8C0D5D24,pc),r0  ; r0 init to 0x8C0D5D24
	fmov.s @r0,fr3

loc_8C0D5CB2:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C0D5CC4
	mova @(loc_8C0D5D28,pc),r0  ; r0 set to 0x8C0D5D28, r0 set to 0x8C0D5D28
	bra loc_8C0D5CC8
	fmov.s @r0,fr3

loc_8c0d5cc4:
	mova @(loc_8C0D5D2C,pc),r0
	fmov.s @r0,fr3

loc_8c0d5cc8:
	mov 0x68,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0D5D30,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	mov 0x78,r3
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0
	fldi1 fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)
	add 0x64,r0
	mov.l r3,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf/s loc_8c0d5cf6
	mov 0x0A,r6
	mova @(loc_8C0D5D34,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0D5D02,pc),r0
	fmov.s fr3,@(r0,r4)

loc_8c0d5cf6:
	lds.l @r15+,pr
	mov.l @(loc_8c0d5d38,pc),r3
	mov 0x1B,r5
	jmp @r3
	mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d5d00:
	#data 0x0130
loc_8C0D5D02:
	#data 0x0108
	#align4

loc_8c0d5d04:
	#data 0x41500000
loc_8c0d5d08:
	#data 0xC1500000
loc_8c0d5d0c:
	#data 0x43810000
loc_8c0d5d10:
	#data 0x43898000

loc_8c0d5d14:
	#data 0x42820000
loc_8c0d5d18:
	#data 0xc2820000
loc_8c0d5d1c:
	#data 0x3f333333
loc_8c0d5d20:
	#data 0xc1a00000
loc_8c0d5d24:
	#data 0x41a00000
loc_8c0d5d28:
	#data 0x3e4ccccd
loc_8C0D5D2C:
	#data 0xBE4CCCCD
loc_8C0D5D30:
	#data 0x41200000
loc_8C0D5D34:
	#data 0x3ECCCCCD
loc_8c0d5d38:
	#data bank03.loc_8c034c38

;==============================================
loc_8C0D5D3C:
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
	add 0x70,r0 ; r0 set to 0xD0
	mov.l @(r0,r14),r3
	mova @(loc_8C0D5E0C,pc),r0  ; r0 set to 0x8C0D5E0c
	fmov.s @r0,fr2
	mova @(loc_8C0D5E10,pc),r0  ; r0 set to 0x8C0D5E10
	neg r3,r3
	fmov.s @r0,fr1
	lds r3,fpul
	mova @(loc_8C0D5E14,pc),r0  ; r0 set to 0x8C0D5E14
	fmov.s @r0,fr0 ; r0 ??
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C0D5E18,pc),r2 ; r2 set to 0xFFFf
	float fpul,fr3
	mov.l @(r0,r14),r1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	add r3,r1
	mov.l r1,@(r0,r14)
	mov.b @(0x01,r14),r0
	mov r0,r3 ; r3 set to 0x48
	mov.b @(0x01,r5),r0
	cmp/eq r0,r3
	bt loc_8C0D5DB8
	bsr loc_8C0D5E04
	mov r14,r4
	bra loc_8C0D5DCe
	nop

loc_8C0D5DB8:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0D5DE6
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0D5E0A,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)

loc_8C0D5DCE:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D5DE6:
	lds.l @r15+,pr
	mov.l @(loc_8C0D5E1C,pc),r3 ; r3 set to 0x8C034D8c
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D5DF6:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D5E0A,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D5E04:
	mov.l @(loc_8C0D5E20,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D5E0A:
	#data 0x012c
	#align4

loc_8C0D5E0C:
	#data 0x47800000
loc_8C0D5E10:
	#data 0x43B40000
loc_8C0D5E14:
	#data 0x3F000000
loc_8C0D5E18:
	#data 0x0000FFFf
loc_8C0D5E1C:
	#data bank03.loc_8c034D8c
loc_8C0D5E20:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0D5E24:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x150,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d5e4a
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8C0D5E4A:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0


;==============================================
;unused
loc_8c0d5e52:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x124,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d5e78
	mov r0,r4
	mov.l @(0x114,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0d5e78:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D5E80:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@(0xC,r15)
	mov.l r5,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xEC,PC),r3
	mov 0x03,r5
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.b r7,@r15
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d5eba
	mov r0,r4
	mov.l @(0xDC,PC),r3
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

loc_8C0D5EBA:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D5EC2:
	mov r4,r3
	mov.l @(loc_8C0D5F84,pc),r1 ; r1 set to 0x8C15CEA8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D5ED4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D5F6E,pc),r3 ; r3 set to 0x1800
	mov.l r13,@-r15
	mov.w @(loc_8C0D5F70,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0D5F70,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0D5F72,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0D5F88,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0D5F74,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D5F76,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D5F8C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x24,r1 ; r1 set to 0x24
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r13
	mov.l @(loc_8C0D5F90,pc),r2 ; r2 set to 0x8C15CDEc
	extu.b r13,r13
	mov r13,r3 ; r3 ??? bc r13 is ???
	shll2 r3
	shll r13
	add r3,r13
	add r2,r13
	mov.b @(0x04,r13),r0
	mov.b r0,@r1
	mova @(loc_8C0D5F94,pc),r0  ; r0 set to 0x8C0D5F94
	fmov.s @r0,fr4
	mov.w @(loc_8C0D5F78,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0D5F98
	mov.w @r13,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	lds r3,fpul
	fmov fr4,fr0 ; r0 ??? bc r4 is ???
	float fpul,fr3
	bra loc_8C0D5FA6
	fmac fr0,fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D5F6E:
	#data 0x1800
loc_8C0D5F70:
	#data 0x00Dc
loc_8C0D5F72:
	#data 0x00C0
loc_8C0D5F74:
	#data 0x012c
loc_8C0D5F76:
	#data 0x01A3
loc_8C0D5F78:
	#data 0x0130
	#align4

loc_8C0D5F7C:
	#data bank04.loc_8c044F12
loc_8C0D5F80:
	#data loc_8c0d5EC2
loc_8C0D5F84:
	#data bank15.loc_8c15ceA8
loc_8C0D5F88:
	#data bank12.loc_8c129560
loc_8C0D5F8C:
	#data bank12.loc_8c1294C8
loc_8C0D5F90:
	#data bank15.loc_8c15cdEc
loc_8C0D5F94:
	#data 0x3FD55555

;==============================================
loc_8C0D5F98:
	mov.w @r13,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D5FA6:
	fmov.s fr2,@(r0,r14)
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.w @(0x02,r13),r0
	mov r0,r3 ; r3 set to 0x34
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0D60D4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fmov.s @(r0,r4),fr2
	mova @(loc_8C0D60D0,pc),r0  ; r0 set to 0x8C0D60D0, r0 set to 0x8C0D60D0
	float fpul,fr3
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r13),r0
	mov r0,r6 ; r6 set to 0x38, r6 set to 0x38
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D5FD2:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20, r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov.l @(loc_8C0D60D8,pc),r0 ; r0 set to 0x8C15CEB8, r0 set to 0x8C15CEB8, r0 set to 0x8C15CEB8
	extu.b r3,r3
	mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0D5FE8:
	mov.w @(0xD6,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d6016
	mov.w @(0xC8,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0d6016
	mov.w @(0xC0,PC),r0
	mov.w @(0xC0,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c0d6016
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c0d6024

loc_8C0D6016:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xAA,PC),r0
	bra loc_8c0d6090
	mov.b r3,@(r0,r4)

loc_8C0D6024:
	mov 0x20,r0
	mov.l @(0xB4,PC),r2
	mov.b @(r0,r4),r13
	mova @(0xB4,PC),r0
	fmov @r0,fr4
	extu.b r13,r13
	mov.w @(0x9A,PC),r0
	mov r13,r3
	shll r13
	shll2 r3
	add r3,r13
	mov.w @(r0,r14),r3
	add r2,r13
	tst r3,r3
	bf.s loc_8c0d6054
	mov.w r3,@(r0,r4)
	mov.w @r13,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	bra loc_8c0d6062
	fmac fr0,fr3,fr2

loc_8C0D6054:
	mov.w @r13,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D6062:
	fmov fr2,@(r0,r4)
	mov 0x0F,r7
	mov.w @(0x2,r13),r0
	mov 0x1B,r5
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	mov.l @(0x70,PC),r3
	fmov @(r0,r14),fr2
	mova @(0x58,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x46,PC),r0
	mov.b @(r0,r14),r0
	and r0,r7
	mov.b @(0x5,r13),r0
	mov.l @r15+,r13
	mov r0,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0D6090:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D6096:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0D60E8,pc),r1 ; r1 set to 0x8C15CF10
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r5,r13
	mov.w @(loc_8C0D60CE,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bf/s loc_8C0D60Ec
	mov.w r3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	bra loc_8C0D60F6
	fadd fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d60c2:
	#data 0x01d0
loc_8c0d60c4:
	#data 0x01e9
loc_8c0d60c6:
	#data 0x0158
loc_8c0d60c8:
	#data 0x1502
loc_8c0d60ca:
	#data 0x0140
loc_8c0d60cc:
	#data 0x012c
loc_8c0d60ce:
	#data 0x0130
	#align4

loc_8C0D60D0:
	#data 0x40092492
loc_8C0D60D4:
	#data bank03.loc_8c034C38
loc_8C0D60D8:
	#data bank15.loc_8c15ceB8
loc_8C0D60DC:
	#data bank15.loc_8c15cdEc
loc_8C0D60e0:
	#data 0x3FD55555
loc_8C0D60E4:
	#data bank03.loc_8c034CD6
loc_8C0D60E8:
	#data bank15.loc_8c15cf10

;==============================================
loc_8C0D60EC:
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fsub fr3,fr2

loc_8C0D60F6:
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D6112:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov 0xFF,r4 ; r4 set to 0xFFFFFFFf
	mov.l @(loc_8C0D6258,pc),r13 ; r13 set to 0x8C03319e
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0D6248,pc),r0 ; r0 set to 0x12d
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0D624A,pc),r0 ; r0 set to 0x1A4
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D6254,pc),r0 ; r0 set to 0x8C1355D4
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov.w @(loc_8C0D624C,pc),r0 ; r0 set to 0x12e
	jsr @r13
	mov.w r3,@(r0,r14)
	and 0x1F,r0
	fldi0 fr3
	add 0x3C,r0 ; r0 set to 0x16a
	mov.l @(loc_8C0D6260,pc),r2 ; r2 set to 0x8C15CDEc
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0D624E,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D625C,pc),r0  ; r0 set to 0x8C0D625c
	fmov.s @r0,fr3
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r12
	extu.b r12,r12
	mov r12,r3
	shll2 r3
	shll r12
	add r3,r12
	add r2,r12
	jsr @r13
	mov.w @r12,r8
	and 0x3F,r0
	exts.w r0,r0 ; r0 ??
	add r0,r8
	lds r8,fpul
	mova @(loc_8C0D6264,pc),r0  ; r0 set to 0x8C0D6264
	fmov.s @r0,fr2 ; r2 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	float fpul,fr3
	fmul fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x02,r12),r0
	jsr @r13
	mov r0,r8 ; r8 set to 0x5c
	and 0x3F,r0
	mov.l @(loc_8C0D6260,pc),r1 ; r1 set to 0x8C15CDEc
	exts.w r0,r0 ; r0 ??
	add r0,r8 ; r8 ??? bc r0 is ???
	lds r8,fpul
	mova @(loc_8C0D6268,pc),r0  ; r0 set to 0x8C0D6268
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60
	float fpul,fr3
	fmul fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r1,r3
	jsr @r13
	mov.l r3,@(0x04,r15)
	mov.l @(loc_8C0D626C,pc),r2 ; r2 set to 0x8C12939c
	mov r0,r1 ; r1 set to 0x20
	jsr @r2
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.l r0,@-r15
	mov r0,r7 ; r7 set to 0x0a
	mov.l @(0x08,r15),r3
	mov.b @(0x05,r3),r0
	jsr @r13
	mov r0,r8 ; r8 set to 0x0a
	mov.l @(loc_8C0D626C,pc),r2 ; r2 set to 0x8C12939c
	mov r0,r1 ; r1 set to 0x0a
	jsr @r2
	mov 0x03,r0 ; r0 set to 0x03
	mov.l @(loc_8C0D6270,pc),r3 ; r3 set to 0x8C034CD6
	mov r8,r6 ; r6 set to 0x0a
	mov r14,r4 ; r4 ??? bc r14 is ???
	add r0,r6 ; r6 set to 0x0d
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov.l @r15+,r7 ; r7 ??? bc r15 is ???
	mov.l @r15,r5 ; r5 ??? bc r15 is ???
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8 ; r8 ??? bc r15 is ???
	mov.l @r15+,r12
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	mov.l @r15+,r14

loc_8C0D61EE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D6274,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0D6250,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	tst r3,r3
	bt loc_8C0D621c
	mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03
	mov.b r0,@(0x05,r14)
	mova @(loc_8C0D6278,pc),r0  ; r0 set to 0x8C0D6278, r0 set to 0x8C0D6278
	fmov.s @r0,fr3
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
	fmov.s fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d621c:
mov 0x64,r1
	mov.w @(loc_8c0d624e,pc),r0
	add r14,r1
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0D627C,pc),r0
	fmov.s @r0,fr4
	mov.w @(loc_8c0d624e,pc),r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0d6240
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8c0d624e,pc),r0
	fmov.s fr4,@(r0,r14)

loc_8c0d6240:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d6248:
	#data 0x012D
loc_8c0d624a:
	#data 0x01A4
loc_8c0d624c:
	#data 0x012E
loc_8c0d624e:
	#data 0x0108
loc_8c0d6250:
	#data 0x01D0
	#align4

loc_8c0d6254:
	#data bank13.loc_8c1355d4
loc_8c0d6258:
	#data bank03.loc_8c03319e
loc_8c0d625c:
	#data 0x3c4ccccd
loc_8c0d6260:
	#data bank15.loc_8c15cdec
loc_8c0d6264:
	#data 0x3fd55555
loc_8c0d6268:
	#data 0x40092492
loc_8c0d626c:
	#data bank12.loc_8c12939c
loc_8c0d6270:
	#data bank03.loc_8c034cd6
loc_8c0d6274:
	#data bank03.loc_8c034d8c
loc_8c0d6278:
	#data 0x3d4ccccd
loc_8C0D627C:
	#data 0x3E99999A

;==============================================
loc_8C0D6280:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D639C,pc),r3 ; r3 set to 0x8C034D8c
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0D638E,pc),r0 ; r0 set to 0x1D0
	mov.l @r15,r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bt loc_8C0D62A0
	mova @(loc_8C0D63A0,pc),r0  ; r0 set to 0x8C0D63A0
	bra loc_8C0D62B0
	fmov.s @r0,fr3

loc_8c0d62a0:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0d62ba
	mova @(loc_8C0D63A4,pc),r0
	fmov.s @r0,fr3

loc_8c0d62b0:
	mov 0x64,r0
	fmov.s fr3,@(r0,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c0d62ba:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d62c2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x64,r1
	mov.w @(0xBE,PC),r0
	add r14,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fsub fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0d6336
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xA4,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x14,r14),r4
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0d6336
	mov 0x26,r0
	mov.w @(0x96,PC),r3
	mov.w @(r0,r4),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c0d6336
	mov 0x23,r0
	mov.l @(0x14,r14),r3
	mov r0,r2
	add r14,r2
	mov.b @r2,r2
	mov.b @(r0,r3),r1
	not r2,r2
	and r2,r1
	mov.b r1,@(r0,r3)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c0d632a
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c0d6336

loc_8c0d632a:
	mov.l @(0x14,r14),r3
	mov 0x23,r0
	mov.w @(0x64,PC),r2
	mov.b @(r0,r3),r1
	and r2,r1
	mov.b r1,@(r0,r3)

loc_8c0d6336:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0D633C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0D63A8,pc),r1 ; r1 set to 0x8C15CF20
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r5,r13
	mov.w @(loc_8C0D6398,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bf/s loc_8C0D6368
	mov.w r3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	bra loc_8C0D6372
	fadd fr3,fr2

loc_8C0D6368:
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fsub fr3,fr2

loc_8C0D6372:
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D638E:
	#data 0x01D0
loc_8c0d6390:
	#data 0x0108
loc_8c0d6392:
	#data 0x012c
loc_8c0d6394:
	#data 0x1802
loc_8c0d6396:
	#data 0x00fe
loc_8C0D6398:
	#data 0x0130
	#align4

loc_8C0D639C:
	#data bank03.loc_8c034D8c
loc_8C0D63A0:
	#data 0x3D4CCCCd
loc_8c0d63a4:
	#data 0x3C4CCCCd
loc_8C0D63A8:
	#data bank15.loc_8c15cf20

;==============================================
loc_8C0D63AC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.l @(loc_8C0D6500,pc),r13 ; r13 set to 0x8C03319e
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0D64EA,pc),r0 ; r0 set to 0x12d
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0D64EC,pc),r0 ; r0 set to 0x1A4
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.b @(r0,r3),r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C0D64FC,pc),r0 ; r0 set to 0x8C1355D4
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov.w @(loc_8C0D64EE,pc),r0 ; r0 set to 0x12e
	jsr @r13
	mov.w r3,@(r0,r14)
	and 0x1F,r0
	fldi0 fr3
	add 0x3C,r0 ; r0 set to 0x16a
	mov.l @(loc_8C0D6508,pc),r5 ; r5 set to 0x8C15CDEc
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0D64F0,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0D6504,pc),r0  ; r0 set to 0x8C0D6504
	fmov.s @r0,fr3
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r4
	mova @(loc_8C0D650C,pc),r0  ; r0 set to 0x8C0D650c
	fmov.s @r0,fr2
	mov 0x5C,r0 ; r0 set to 0x5c
	extu.b r4,r4
	mov r4,r3
	shll2 r3
	shll r4
	add r3,r4
	add r5,r4
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x02,r4),r0
	mov r0,r3 ; r3 set to 0x5c
	lds r3,fpul
	mova @(loc_8C0D6510,pc),r0  ; r0 set to 0x8C0D6510
	float fpul,fr3
	fmov.s @r0,fr1
	mov 0x60,r0 ; r0 set to 0x60
	fmul fr1,fr3 ; r3 ??? bc r1 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r5 ; r5 ??? bc r3 is ???
	jsr @r13
	mov.l r5,@(0x04,r15)
	mov.l @(loc_8C0D6514,pc),r3 ; r3 set to 0x8C12939c
	mov r0,r1 ; r1 set to 0x20
	jsr @r3
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.l r0,@-r15
	mov r0,r7 ; r7 set to 0x0a
	mov.l @(0x08,r15),r2
	mov.b @(0x05,r2),r0
	jsr @r13
	mov r0,r8 ; r8 set to 0x0a
	mov.l @(loc_8C0D6514,pc),r3 ; r3 set to 0x8C12939c
	mov r0,r1 ; r1 set to 0x0a
	jsr @r3
	mov 0x03,r0 ; r0 set to 0x03
	mov.l @(loc_8C0D6518,pc),r3 ; r3 set to 0x8C034CD6
	mov r8,r6 ; r6 set to 0x0a
	mov r14,r4
	add r0,r6 ; r6 set to 0x0d
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov.l @r15+,r7 ; r7 ??? bc r15 is ???
	mov.l @r15,r5 ; r5 ??? bc r15 is ???
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8 ; r8 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	bra loc_8C0D61Ee
	mov.l @r15+,r14

loc_8C0D6476:
	mov.w @(0x78,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf.s loc_8c0d648e
	mov r4,r14
	mov.w @(0x6C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c0d649e

loc_8C0D648E:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x5C,PC),r0
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D649E:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x78,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D64B2:
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)

loc_8C0D64B8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0D64F8,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov r5,r14
	mov r14,r2
	mov r4,r1
	mov.w @(r0,r14),r3
	add 0x34,r2
	add 0x34,r1
	mov.w r3,@(r0,r4)
	mov.l @(loc_8C0D6520,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov.w @(loc_8C0D64FA,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0D6524
	mov.b @(0x05,r4),r0
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142
	mov.b r0,@(0x05,r4)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D64EA:
	#data 0x012d
loc_8C0D64EC:
	#data 0x01A4
loc_8C0D64EE:
	#data 0x012e
loc_8C0D64F0:
	#data 0x0108
loc_8c0d64f2:
	#data 0x01d0
loc_8c0d64f4:
	#data 0x01e9
loc_8c0d64f6:
	#data 0x012c
loc_8C0D64F8:
	#data 0x0130
loc_8C0D64FA:
	#data 0x0141
	#align4

loc_8C0D64FC:
	#data bank13.loc_8c1355D4
loc_8C0D6500:
	#data bank03.loc_8c03319e
loc_8C0D6504:
	#data 0x3C4CCCCd
loc_8C0D6508:
	#data bank15.loc_8c15cdEc
loc_8C0D650C:
	#data 0x3FD55555
loc_8C0D6510:
	#data 0x40092492
loc_8C0D6514:
	#data bank12.loc_8c12939c
loc_8C0D6518:
	#data bank03.loc_8c034CD6
loc_8C0D651C:
	#data bank15.loc_8c15cf30
loc_8C0D6520:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0D6524:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D6668,pc),r1 ; r1 set to 0x8C15CDEc
	mov.b @(r0,r4),r3
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(loc_8C0D665C,pc),r0 ; r0 set to 0x140
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r1,r3
	mov r3,r6
	mov.l r3,@r15
	mov.b @(r0,r14),r7
	mov.b @(0x05,r6),r0
	mov r0,r6 ; r6 set to 0x140
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0D666C,pc),r3 ; r3 set to 0x8C034CD6
	jmp @r3
	mov.l @r15+,r14

;unused
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D6556:
	mov.w @(0x104,PC),r0
	mov r5,r2
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	mov r14,r1
	add 0x34,r2
	mov.w r3,@(r0,r14)
	add 0x34,r1
	mov.l @(0x104,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x100,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d6588
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xD8,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0D6588:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D658E:
	mov.w @(0xD0,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0d65aa
	mov r4,r13
	mov.w @(0xC0,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c0d65b8

loc_8C0D65AA:
	mov.b @(0x4,r13),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov.w @(0xAA,PC),r0
	bra loc_8c0d6654
	mov.b r3,@(r0,r13)

loc_8C0D65B8:
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r13,r4
	mova @(0xB8,PC),r0
	mov.l @(0xB8,PC),r4
	fmov @r0,fr4
	mov.w @(0x96,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0d65ec
	mov.w r3,@(r0,r13)
	mov.w @(0x8A,PC),r0
	fmov fr4,fr0
	mov.b @(r0,r14),r1
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov r1,r3
	shll2 r3
	shll r1
	add r3,r1
	add r4,r1
	mov.w @r1,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8c0d6608
	fmac fr0,fr3,fr2

loc_8C0D65EC:
	mov.w @(0x6C,PC),r0
	mov.b @(r0,r14),r2
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov r2,r3
	shll2 r3
	shll r2
	add r3,r2
	add r4,r2
	mov.w @r2,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D6608:
	fmov fr2,@(r0,r13)
	mov 0x48,r1
	mov.w @(0x4C,PC),r0
	add r13,r1
	mov.b @(r0,r14),r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r4,r3
	mov.w @(0x2,r3),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mova @(0x58,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r13)
	mov.w @(0x26,PC),r0
	mov.b @(r0,r14),r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r4
	mov.w @(0x4,r4),r0
	mov.l r0,@r1
	mov.w @(0x14,PC),r0
	mov.b @(r0,r14),r3
	mov 0x02,r2
	cmp/ge r2,r3
	bf loc_8c0d6654
	mov 0x24,r0
	mov 0x07,r1
	mov.b r1,@(r0,r13)

loc_8C0D6654:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D665C:
	#data 0x0140
loc_8c0d665e:
	#data 0x0130
loc_8c0d6660:
	#data 0x012c
loc_8c0d6662:
	#data 0x0141
loc_8c0d6664:
	#data 0x01d0
	#align4

loc_8C0D6668:
	#data bank15.loc_8c15cdEc
loc_8C0D666C:
	#data bank03.loc_8c034CD6
loc_8C0D6670:
	#data bank12.loc_8c1294C8
loc_8C0D6674:
	#data bank03.loc_8c034D8c
loc_8C0D6678:
	#data 0x3FD55555
loc_8C0D667C:
	#data bank15.loc_8c15cf3c
loc_8C0D6680:
	#data 0x40092492

;==============================================
loc_8C0D6684:
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d66ac
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0d66ac
	mov.w @(0xD8,PC),r0
	mov.w @(0xD8,PC),r3
	mov.w @(r0,r5),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c0d66ac
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r5),r1
	tst r1,r1
	bf loc_8c0d66ba

loc_8C0D66AC:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC2,PC),r0
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D66BA:
	mova @(0xC4,PC),r0
	mov.l @(0xC4,PC),r2
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r6
	mova @(0xBC,PC),r0
	fmov @r0,fr4
	extu.b r6,r6
	mov.w @(0xAA,PC),r0
	mov r6,r3
	shll2 r3
	shll r6
	add r3,r6
	mov.w @(r0,r5),r3
	add r2,r6
	tst r3,r3
	bf.s loc_8c0d66f2
	mov.w r3,@(r0,r4)
	mov.w @r6,r3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	bra loc_8c0d6700
	fmac fr0,fr3,fr2

loc_8C0D66F2:
	mov.w @r6,r3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D6700:
	fmov fr2,@(r0,r4)
	mov 0xFE,r2
	mov.w @(0x2,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mova @(0x7C,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.l @(0x6C,PC),r3
	jmp @r3
	mov.b r2,@(r0,r4)

;unused
	rts
	nop

;----------------------------------------------
loc_8C0D672C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x3A,PC),r0
	mov r5,r14
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d675c
	mov.w @(0x30,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0d675c
	mov.w @(0x28,PC),r0
	mov.w @(0x28,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c0d675c
	mov.w @(0x20,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c0d6794

loc_8C0D675C:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x12,PC),r0
	mov.b r3,@(r0,r4)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d6770:
	#data 0x01d0
loc_8c0d6772:
	#data 0x01e9
loc_8c0d6774:
	#data 0x0158
loc_8c0d6776:
	#data 0x1507
loc_8c0d6778:
	#data 0x0140
loc_8c0d677a:
	#data 0x012c
loc_8c0d677c:
	#data 0x0130
	#align4

loc_8C0D6780:
	#data 0x3FACCCCd
loc_8C0D6784:
	#data bank15.loc_8c15cdEc
loc_8C0D6788:
	#data 0x3FD55555
loc_8C0D678C:
	#data 0x40092492
loc_8C0D6790:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0D6794:
	mova @(0x144,PC),r0
	mov r14,r2
	fmov @r0,fr3
	mov r4,r1
	mov.w @(0x134,PC),r0
	add 0x34,r2
	add 0x34,r1
	fmov fr3,@(r0,r4)
	add 0x28,r0
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r4)
	mov.l @(0x134,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x130,PC),r1
	mov.b @(r0,r14),r2
	mov 0xFF,r3
	mov 0x0F,r7
	mov.b r2,@(r0,r4)
	mov 0x31,r0
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov 0x1B,r5
	mov.w @(0x10C,PC),r0
	extu.b r2,r2
	mov r2,r3
	shll r2
	shll2 r3
	add r3,r2
	add r1,r2
	mov r2,r6
	mov.l r2,@r15
	mov.b @(r0,r14),r0
	and r0,r7
	mov.b @(0x5,r6),r0
	mov r0,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x100,PC),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D67F2:
	mov r4,r3
	mov.l @(loc_8C0D68EC,pc),r1 ; r1 set to 0x8C15CF54
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D6804:
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xC8,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0D6810:
	mov.l @(0xDC,PC),r2
	mov 0x05,r1
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bt loc_8c0d6826
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xB2,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8C0D6826:
	rts
	nop

;----------------------------------------------
loc_8C0D682A:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0D683e
	mov.b @(0x05,r4),r0
	add 0x01,r0
	bra loc_8C0D6842
	mov.b r0,@(0x05,r4)

loc_8C0D683E:
	rts
	nop

loc_8c0d6842:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0d68f4,pc),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d685e
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0d68d8,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0d685e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0D6864:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0D68DA,pc),r0 ; r0 set to 0x141
	mov r5,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0D68C0
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0x41
	cmp/pl r0
	bt loc_8C0D68C0
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf loc_8C0D6894
	mov.b @(0x05,r4),r0
	fldi1 fr3
	add 0x01,r0 ; r0 set to 0x42
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0D68D4,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r4)
	mov 0x0A,r0 ; r0 set to 0x0a
	bra loc_8C0D68F8
	mov.w r0,@(0x1C,r4)

loc_8c0d6894:
	mov.w @(0x1C,r4),r0
	mov.w @(loc_8c0d68d4,pc),r1
	mov r0,r3
	lds r3,fpul
	add r4,r1
	fldi0 fr2
	fmov.s @r1,fr3
	float fpul,fr1
	mov.w @(loc_8c0d68d4,pc),r2
	fneg fr3
	fadd fr2,fr3
	add r4,r2
	fdiv fr1,fr3
	fmov.s @r2,fr1
	fadd fr3,fr1
	fmov.s fr1,@r2
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0d68f8

loc_8C0D68C0:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D68D8,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D68D4:
	#data 0x0108
loc_8C0D68D6:
	#data 0x0140
loc_8C0D68D8:
	#data 0x012c
loc_8C0D68DA:
	#data 0x0141
	#align4

loc_8C0D68Dc:
	#data 0x3F000000
loc_8C0D68E0:
	#data bank12.loc_8c1294C8
loc_8C0D68E4:
	#data bank15.loc_8c15cdEc
loc_8C0D68E8:
	#data bank03.loc_8c034CD6
loc_8C0D68EC:
	#data bank15.loc_8c15cf54
loc_8C0D68f0:
	#data 0x8C2895F0
loc_8C0D68F4:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0D68F8:
	mov.w @(loc_8C0D69FC,pc),r0 ; r0 set to 0x130
	mov r4,r1
	mov.l @(loc_8C0D6A08,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	mov.w @(r0,r14),r2
	mov.w r2,@(r0,r4)
	mov r14,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D6A0C,pc),r1 ; r1 set to 0x8C15CDEc
	mov.b @(r0,r4),r2
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(loc_8C0D69FE,pc),r0 ; r0 set to 0x140
	extu.b r2,r2
	mov r2,r3 ; r3 ??? bc r2 is ???
	shll2 r3
	shll r2
	add r3,r2
	add r1,r2
	mov r2,r6
	mov.l r2,@r15
	mov.b @(r0,r14),r7
	mov.b @(0x05,r6),r0
	mov r0,r6 ; r6 set to 0x140
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0D6A10,pc),r3 ; r3 set to 0x8C034CD6
	jmp @r3
	mov.l @r15+,r14

;unused
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D693E:
	mov.l r14,@-r15
	mov.w @(0xBC,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c0d697e
	mov r4,r14
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0d697e
	mov.b @(0x2,r13),r0
	mov 0x01,r4
	mov.l @(0xB0,PC),r2
	mov r4,r1
	extu.b r0,r0
	mov.b @r2,r3
	xor r4,r0
	shad r0,r1
	extu.b r3,r3
	tst r1,r3
	bf loc_8c0d69e2
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d698c

loc_8C0D697E:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x7A,PC),r0
	bra loc_8c0d69e2
	mov.b r3,@(r0,r14)

loc_8C0D698C:
	mov 0x20,r0
	mov.l @(0x7C,PC),r2
	mov.b @(r0,r14),r4
	mova @(0x88,PC),r0
	fmov @r0,fr4
	extu.b r4,r4
	mov.w @(0x60,PC),r0
	mov r4,r3
	shll r4
	shll2 r3
	add r3,r4
	mov.w @(r0,r13),r3
	add r2,r4
	tst r3,r3
	bf.s loc_8c0d69bc
	mov.w r3,@(r0,r14)
	mov.w @r4,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	bra loc_8c0d69ca
	fmac fr0,fr3,fr2

loc_8C0D69BC:
	mov.w @r4,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D69CA:
	fmov fr2,@(r0,r14)
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mova @(0x48,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0D69E2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D69EA:
	mov r4,r3
	mov.l @(loc_8C0D6A24,pc),r1 ; r1 set to 0x8C15CF64
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d69fc:
	#data 0x0130
loc_8c0d69fe:
	#data 0x0140
loc_8c0d6a00:
	#data 0x01d0
loc_8c0d6a02:
	#data 0x01e9
loc_8c0d6a04:
	#data 0x012c
	#align4

loc_8C0D6A08:
	#data bank12.loc_8c1294C8
loc_8C0D6A0C:
	#data bank15.loc_8c15cdEc
loc_8C0D6A10:
	#data bank03.loc_8c034CD6
loc_8C0D6A14:
	#data 0x8C2895F6
loc_8C0D6A18:
	#data bank03.loc_8c034D8c
loc_8C0D6A1c:
	#data 0x3FD55555
loc_8C0D6A20:
	#data 0x40092492
loc_8C0D6A24:
	#data bank15.loc_8c15cf64

;==============================================
loc_8C0D6A28:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x01,r3
	fldi1 fr3
	mov.l r5,@r15
	mov 0x1B,r5
	mov.b @(0x5,r14),r0
	mov.l @(0x14,r14),r13
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x130,PC),r0
	mov.b r3,@(r0,r14)
	add 0xDC,r0
	fmov fr3,@(r0,r14)
	mov 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov 0x31,r0
	mov.b @(r0,r13),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x11E,PC),r0
	mov.l @(0x128,PC),r3
	mov.b @(r0,r13),r6
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D6A6C:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0d6a82
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)

loc_8C0D6A82:
	rts
	nop

;----------------------------------------------
loc_8C0D6A86:
	mov.l @(0x100,PC),r1
	mov.w @(0xEE,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	fmov @(r0,r4),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8c0d6aa8
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xCE,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0D6AA8:
	rts
	nop

;----------------------------------------------
loc_8C0D6AAC:
	mov r4,r3
	mov.l @(loc_8C0D6B8C,pc),r1 ; r1 set to 0x8C15CF70
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D6ABE:
	mov.b @(0x05,r4),r0
	mov 0x01,r3 ; r3 set to 0x01
	fldi1 fr3
	add 0x01,r0
	mov.l @(loc_8C0D6B94,pc),r7 ; r7 set to 0x8C15CE70
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0D6B76,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	add 0xDC,r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0D6B90,pc),r0  ; r0 set to 0x8C0D6B90
	fmov.s @r0,fr4
	mov.w @(loc_8C0D6B7C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bf/s loc_8C0D6AFa
	mov r7,r6 ; r6 set to 0x8C15CE70
	mov 0x23,r0 ; r0 set to 0x23
	fmov fr4,fr0 ; r0 ??? bc r4 is ???
	mov.b @(r0,r4),r1
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2
	extu.b r1,r1
	shll2 r1
	add r1,r6 ; r6 ??? bc r1 is ???
	mov.w @r6,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8C0D6B12
	fmac fr0,fr3,fr2

loc_8c0d6afa:
	mov 0x23,r0
	mov.b @(r0,r4),r2
	mov 0x34,r0
	fmov.s @(r0,r5),fr2
	extu.b r2,r2
	shll2 r2
	add r2,r6
	mov.w @r6,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c0d6b12:
	fmov.s fr2,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll2 r3
	add r3,r7
	mov.w @(0x02,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0D6B98,pc),r0
	float fpul,fr3
	fmov.s @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)

loc_8c0d6b34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0d6b9c,pc),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d6b50
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0d6b76,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0d6b50:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d6b56:
	mov.w @(0x24,PC),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x01,r0
	bf loc_8c0d6b68
	mov.w @(0x1E,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c0d6ba0

loc_8c0d6b68:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x2,PC),r0
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8c0d6b76:
	#data 0x012c
loc_8c0d6b78:
	#data 0x0158
loc_8c0d6b7a:
	#data 0x0108
loc_8c0d6b7c:
	#data 0x0130
loc_8c0d6b7e:
	#data 0x0140
loc_8c0d6b80:
	#data 0x01d0
	#align4

loc_8c0d6b84:
	#data bank03.loc_8c034c38
loc_8c0d6b88:
	#data 0x3DCCCCCD
loc_8c0d6b8c:
	#data bank15.loc_8c15cf70
loc_8c0d6b90:
	#data 0x3FD55555
loc_8c0d6b94:
	#data bank15.loc_8c15ce70
loc_8C0D6B98:
	#data 0x40092492
loc_8c0d6b9c:
	#data bank03.loc_8c034d8c

;==============================================
loc_8c0d6ba0:
	mov.w @(0x130,PC),r0
	mov.w @(r0,r5),r2
	mov.w r2,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	rts
	nop

;==============================================
loc_8C0D6BB6:
	mov r4,r3
	mov.l @(loc_8C0D6CE0,pc),r1 ; r1 set to 0x8C15CF78
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D6BC8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x102,PC),r3
	mov.l r5,@r15
	mov 0x03,r5
	mov.b @(0x5,r14),r0
	mov 0x02,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x48,r0
	mov.l r3,@(r0,r14)
	mov.l @(0x100,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0d6bfa
	mov r0,r4
	mov.l @(0xF8,PC),r3
	mov 0x20,r0
	mov 0x12,r2
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b r2,@(r0,r4)

loc_8C0D6BFA:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D6C04:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d6c20
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xB8,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0D6C20:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D6C26:
	mov.l r14,@-r15
	add 0xFC,r15
	mov r5,r14
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C0D6C48
	mov.b @(0x04,r4),r0
	mov 0x00,r2 ; r2 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D6CD8,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r4)
	add 0x04,r15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D6C48:
	mov.w @(loc_8C0D6CDA,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	add 0xEB,r0 ; r0 set to 0x12c
	tst r3,r3
	bt/s loc_8C0D6C82
	mov.b r3,@(r0,r4)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r14),r1
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l r1,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	mov.l @(loc_8C0D6CF0,pc),r1 ; r1 set to 0x8C15CDEc
	extu.b r3,r3
	mov.w @(loc_8C0D6CDC,pc),r0 ; r0 set to 0x140
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r1,r3
	mov r3,r6
	mov.l r3,@r15
	mov.b @(r0,r14),r7
	mov.b @(0x05,r6),r0
	mov r0,r6 ; r6 set to 0x140
	add 0x04,r15
	mov.l @(loc_8C0D6CF4,pc),r3 ; r3 set to 0x8C034CD6
	jmp @r3
	mov.l @r15+,r14

loc_8C0D6C82:
	add 0x04,r15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D6C88:
	mov r4,r3
	mov.l @(loc_8C0D6CF8,pc),r1 ; r1 set to 0x8C15CF80
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D6C9A:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x3A,PC),r0
	mov.l @(0x18,r5),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)


loc_8C0D6CB2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d6cce
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xA,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0D6CCE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d6cd4:
	#data 0x0130
loc_8c0d6cd6:
	#data 0x2600
loc_8C0D6CD8:
	#data 0x012c
loc_8C0D6CDA:
	#data 0x0141
loc_8C0D6CDC:
	#data 0x0140
loc_8C0D6CDe:
	#data 0x041c
	#align4

loc_8C0D6CE0:
	#data bank15.loc_8c15cf78
loc_8C0D6CE4:
	#data bank04.loc_8c044F12
loc_8C0D6CE8:
	#data loc_8c0d5EC2
loc_8C0D6CEC:
	#data bank03.loc_8c034D8c
loc_8C0D6CF0:
	#data bank15.loc_8c15cdEc
loc_8C0D6CF4:
	#data bank03.loc_8c034CD6
loc_8C0D6CF8:
	#data bank15.loc_8c15cf80
loc_8C0D6CfC:
	#data 0x3FC00000

;==============================================
loc_8C0D6D00:
	mov.l r14,@-r15
	mov.w @(0xD6,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c0d6d2c
	mov r4,r14
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0d6d2c
	mov.w @(0xBC,PC),r0
	mov.w @(0xBC,PC),r2
	mov.w @(r0,r13),r3
	extu.w r3,r3
	cmp/eq r2,r3
	bt loc_8c0d6d3a

loc_8C0D6D2C:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xAC,PC),r0
	bra loc_8c0d6dbe
	mov.b r3,@(r0,r14)

loc_8C0D6D3A:
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov.w @(0xA4,PC),r0
	fmov fr3,@(r0,r14)
	add 0x38,r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0d6d4e
	bra loc_8c0d6d50
	mov 0x01,r3

loc_8C0D6D4E:
	mov 0x00,r3

loc_8C0D6D50:
	mov.w @(0x90,PC),r0
	mov 0x0F,r7
	mov.l @(0x98,PC),r2
	mov 0x1B,r5
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r12
	mov.w @(0x86,PC),r0
	extu.b r12,r12
	mov r12,r3
	mov.b @(r0,r13),r0
	shll2 r3
	shll r12
	add r3,r12
	mov.l @(0x84,PC),r3
	and r0,r7
	add r2,r12
	mov.b @(0x5,r12),r0
	mov r0,r6
	jsr @r3
	mov r14,r4
	mova @(0x7C,PC),r0
	fmov @r0,fr4
	mov.w @(0x68,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c0d6d98
	mov.w r3,@(r0,r14)
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	bra loc_8c0d6da6
	fmac fr0,fr3,fr2

loc_8C0D6D98:
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D6DA6:
	fmov fr2,@(r0,r14)
	mov.w @(0x2,r12),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mova @(0x48,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0D6DBE:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D6DC8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D6DE4,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D6DD6:
	mov.l @(loc_8C0D6E00,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d6ddc:
	#data 0x01d0
loc_8c0d6dde:
	#data 0x01e9
loc_8c0d6de0:
	#data 0x0158
loc_8c0d6de2:
	#data 0x1503
loc_8c0d6de4:
	#data 0x012c
loc_8c0d6de6:
	#data 0x0108
loc_8c0d6de8:
	#data 0x0140
loc_8c0d6dea:
	#data 0x0130
	#align4

loc_8C0D6DEC:
	#data 0x3F000000
loc_8C0D6DF0:
	#data bank15.loc_8c15cdEc
loc_8C0D6DF4:
	#data bank03.loc_8c034CD6
loc_8C0D6DF8:
	#data 0x3FD55555
loc_8C0D6DFC:
	#data 0x40092492
loc_8C0D6E00:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d6e04:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x15C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d6e2a
	mov r0,r4
	mov.l @(0x14C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0d6e2a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D6E32:
	mov r4,r3
	mov.l @(loc_8C0D6F70,pc),r1 ; r1 set to 0x8C15D074
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D6E44:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x112,PC),r3
	mov.l r13,@-r15
	mov.w @(0x110,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x108,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0xFE,PC),r0
	mov.l @(0x110,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0xF8,PC),r0
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
	mov.w @(0xDC,PC),r0
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
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr3
	mov.b @(r0,r4),r2
	mov 0x00,r3
	mov.l @(0xD0,PC),r1
	mov.b r2,@(r0,r14)
	mov.w @(0xB2,PC),r0
	mov.l @(0xCC,PC),r2
	mov.b r3,@(r0,r14)
	add 0xDC,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov.b @(r0,r1),r0
	mov 0x31,r1
	add r14,r1
	extu.b r0,r0
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r13
	mov 0x24,r0
	extu.b r13,r13
	mov r13,r3
	shll2 r3
	shll r13
	add r3,r13
	mov 0x07,r3
	mov.b r3,@(r0,r14)
	add r2,r13
	mov.b @(0x4,r13),r0
	mov.b r0,@r1
	mov.w @r13,r3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mova @(0x98,PC),r0
	lds r3,fpul
	mov 0x1B,r5
	fmov @r0,fr0
	mov 0x34,r0
	mov 0x01,r7
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x2,r13),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	mov.l @(0x88,PC),r3
	fmov @(r0,r4),fr2
	mova @(0x80,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.b @(0x5,r13),r0
	mov r0,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D6F22:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/pl r0
	bt loc_8c0d6f3a
	mov.b @(0x6,r4),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c0d6f4a

loc_8C0D6F3A:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1E,PC),r0
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D6F4A:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x40,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d6f5e:
	#data 0x1801
loc_8c0d6f60:
	#data 0x00dc
loc_8c0d6f62:
	#data 0x00c0
loc_8c0d6f64:
	#data 0x012c
loc_8c0d6f66:
	#data 0x01a3
	#align4

loc_8C0D6F68:
	#data bank04.loc_8c044F12
loc_8C0D6F6C:
	#data loc_8c0d6E32
loc_8C0D6F70:
	#data bank15.loc_8c15D074
loc_8C0D6F74:
	#data bank12.loc_8c129560
loc_8C0D6F78:
	#data bank12.loc_8c1294C8
loc_8C0D6F7C:
	#data bank15.loc_8c15D024
loc_8C0D6F80:
	#data bank15.loc_8c15cf88
loc_8C0D6F84:
	#data 0x3FD55555
loc_8C0D6F88:
	#data 0x40092492
loc_8C0D6F8C:
	#data bank03.loc_8c034CD6
loc_8C0D6F90:
	#data bank15.loc_8c15D084

;==============================================
loc_8C0D6F94:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0D6FC4
	mov.b @(0x05,r4),r0
	mov 0x01,r5 ; r5 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0D70AA,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shad r3, r5 ; r5 ??? bc r3 is ???
	mov.l @(loc_8C0D70B0,pc),r3 ; r3 set to 0x3F55555
	tst r3,r5
	bt loc_8C0D6FC4
	mov.l @(loc_8C0D70B4,pc),r1 ; r1 set to 0x8C042008
	jmp @r1
	mov 0x14,r5

loc_8C0D6FC4:
	rts
	nop

;----------------------------------------------
loc_8C0D6FC8:
	mov.l @(0xEC,PC),r1
	mov.w @(0xDE,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	lds r1,fpul
	mov.l r13,@-r15
	fldi1 fr4
	fsts fpul,fr3
	mov.l r12,@-r15
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	mov.l @(0x18,r14),r13
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr4
	bt loc_8c0d6fec
	fmov fr4,@(r0,r14)

loc_8C0D6FEC:
	mov 0x34,r0
	fldi1 fr4
	mov r0,r1
	add r14,r1
	fmov @r1,fr3
	mov r0,r1
	add r13,r1
	fadd fr4,fr4
	fmov @r1,fr2
	fsub fr3,fr2
	fmov @(r0,r14),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov r0,r1
	add r14,r1
	fmov @r1,fr3
	mov r0,r1
	add r13,r1
	fmov @r1,fr2
	fsub fr3,fr2
	fmov @(r0,r14),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0d7088
	mov.b @(0x5,r14),r0
	mov 0x0E,r5
	mov.l @(0x88,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r13,r4
	tst r0,r0
	bt.s loc_8c0d704e
	mov r0,r4
	mov.l r14,@(0x14,r4)

loc_8C0D704E:
	mov 0x20,r0
	mov.l @(0x6C,PC),r12
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	add r12,r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c0d7088
	mov.b @(r0,r14),r5
	mov.l @(0x58,PC),r3
	extu.b r5,r5
	shll r5
	add r12,r5
	mov.b @r5,r5
	jsr @r3
	mov r13,r4
	tst r0,r0
	bt.s loc_8c0d7088
	mov r0,r4
	mov 0x20,r0
	mov.l r14,@(0x14,r4)
	mov.b @(r0,r14),r3
	mov.l @(0x44,PC),r0
	extu.b r3,r3
	shll r3
	mov.b @(r0,r3),r2
	mov 0x23,r0
	mov.b r2,@(r0,r4)

loc_8C0D7088:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7092:
	rts
	nop

;----------------------------------------------
loc_8C0D7096:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D70AA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D70A4:
	mov.l @(loc_8C0D70C8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d70aa:
	#data 0x012c
loc_8c0d70ac:
	#data 0x0108
	#align4

loc_8C0D70B0:
	#data 0x03F55555
loc_8C0D70B4:
	#data bank04.loc_8c042008
loc_8C0D70B8:
	#data 0x3E4CCCCd
loc_8C0D70BC:
	#data loc_8c0d5E24
loc_8C0D70C0:
	#data bank15.loc_8c15D03e
loc_8C0D70C4:
	#data bank15.loc_8c15D03f
loc_8C0D70C8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0D70CC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xC4,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d70ea
	mov r0,r4
	mov.l @(0xB8,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8C0D70EA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D70F2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r5,@r15
	mov r4,r14
	mov r6,r0
	nop
	mov.b r0,@(0x4,r15)
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x03,r0
	cmp/eq 0x03,r0
	bt loc_8c0d711c
	mov.l @(0x8C,PC),r2
	jsr @r2
	nop
	tst 0x03,r0
	bt loc_8c0d712e

loc_8C0D711C:
	mov.b @(0x4,r15),r0
	mov r14,r5
	mov.l @(0x80,PC),r3
	mov 0x01,r6
	mov r0,r7
	jsr @r3
	mov.l @r15,r4
	bra loc_8c0d7174
	mov r0,r4

loc_8C0D712E:
	mov.l @(0x70,PC),r3
	jsr @r3
	mov 0x01,r12
	tst r12,r0
	bt loc_8c0d7146
	mov 0x23,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r12,r3
	bt loc_8c0d7156
	bra loc_8c0d7150
	nop

loc_8C0D7146:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c0d7156

loc_8C0D7150:
	mov 0x08,r6
	bra loc_8c0d715a
	mov 0x02,r13

loc_8C0D7156:
	mov r12,r13
	mov 0x07,r6

loc_8C0D715A:
	mov.b @(0x4,r15),r0
	mov r14,r5
	mov.l @(0x44,PC),r3
	mov r0,r7
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt.s loc_8c0d7174
	mov r0,r4
	mov 0x23,r0
	mov.b @(r0,r14),r3
	or r13,r3
	mov.b r3,@(r0,r14)

loc_8C0D7174:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7184:
	mov r4,r3
	mov.l @(loc_8C0D71A8,pc),r1 ; r1 set to 0x8C15D090
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0D7198:
	#data bank04.loc_8c044F12
loc_8C0D719C:
	#data loc_8c0d7184
loc_8C0D71A0:
	#data bank03.loc_8c03319e
loc_8C0D71A4:
	#data loc_8c0d5E80
loc_8C0D71A8:
	#data bank15.loc_8c15D090

;==============================================
loc_8C0D71AC:
	mov.w @(loc_8C0D72A0,pc),r3 ; r3 set to 0x1802
	mov.w @(loc_8C0D72A2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0D72A2,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r4)
	mov.w @(loc_8C0D72A4,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r4),r5
	mov.l @(loc_8C0D72AC,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0D72A6,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D72A8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D72B0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0D72A6,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0D7212:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x02,r4 ; r4 set to 0x02, r4 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0 ; r0 set to 0x2c
	cmp/ge r4,r0
	bf loc_8C0D7232
	mov r4,r0 ; r0 set to 0x02, r0 set to 0x02
	nop
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.w @(loc_8C0D72A6,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7232:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D72B4,pc),r1 ; r1 set to 0x8C15D0A0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7246:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x04,r13),r0
	tst r0,r0
	bt/s loc_8C0D7280
	mov r4,r14
	mov.w @(loc_8C0D72AA,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8C0D7280
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0D72B8,pc),r3 ; r3 set to 0x8C03319e
	add 0x01,r0 ; r0 set to 0x1D1
	jsr @r3
	mov.b r0,@(0x05,r14)
	and 0x07,r0
	mov r13,r5
	add 0x08,r0 ; r0 set to 0x1D9
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0D7288
	mov.l @r15+,r14

loc_8C0D7280:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7288:
	mov.l r14,@-r15
	mov.w @(loc_8C0D72AA,pc),r0 ; r0 set to 0x1D0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	tst r3,r3
	bt/s loc_8C0D72Bc
	mov r4,r14
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C0D730e
	mov.b r0,@(0x05,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D72A0:
	#data 0x1802
loc_8C0D72A2:
	#data 0x00Dc
loc_8C0D72A4:
	#data 0x00C0
loc_8C0D72A6:
	#data 0x012c
loc_8C0D72A8:
	#data 0x01A3
loc_8C0D72AA:
	#data 0x01D0
	#align4

loc_8C0D72AC:
	#data bank12.loc_8c129560
loc_8C0D72B0:
	#data bank12.loc_8c1294C8
loc_8C0D72B4:
	#data bank15.loc_8c15D0A0
loc_8C0D72B8:
	#data bank03.loc_8c03319e

;==============================================
loc_8c0d72bc:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c0d72dc
	mov r13,r5
	mov 0x04,r6
	bsr loc_8c0d70f2
	mov r14,r4
	tst r0,r0
	bt loc_8c0d72dc
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x04,r3
	or r3,r2
	mov.b r2,@(r0,r14)

loc_8c0d72dc:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c0d7302
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c0d7302
	mov r13,r5
	mov 0x08,r6
	bsr loc_8c0d70f2
	mov r14,r4
	tst r0,r0
	bt loc_8c0d7302
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x08,r3
	or r3,r2
	mov.b r2,@(r0,r14)

loc_8c0d7302:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c0d730e
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)

loc_8C0D730E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7316:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0D731E:
	mov.l @(loc_8C0D7324,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0D7324:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0D7328:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l r5,@(0x08,r15)
	mov r6,r0
	nop
	mov.w @(loc_8C0D746A,pc),r3 ; r3 set to 0x2A4
	mov 0x05,r2 ; r2 set to 0x05
	mov.b r0,@(0x04,r15)
	mov.l @r15,r14
	add r3,r14
	mov.b @(0x03,r14),r0
	extu.b r0,r0
	cmp/ge r2,r0
	bf loc_8C0D7352
	mov 0x00,r0 ; r0 set to 0x00
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d7352:
	mov.l @(loc_8c0d7478,pc),r3
	mov 0x04,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt/s loc_8c0d7384
	mov r0,r4
	mov.l @(loc_8c0d747c,pc),r3
	mov r4,r1
	add 0x5C,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(loc_8c0d7480,pc),r3
	mov.l r2,@(0x18,r4)
	mov.l @(0x08,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r1
	mov.b @(0x04,r15),r0
	add r4,r1
	mov.b r0,@r1
	mov.b @(0x03,r14),r0
	add 0x01,r0
	mov.b r0,@(0x03,r14)

loc_8c0d7384:
	mov r4,r0
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d7390:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE0,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d73b6
	mov r0,r4
	mov.l @(0xD0,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0d73b6:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8C0D73BE:
	mov r4,r3
	mov.l @(loc_8C0D7484,pc),r1 ; r1 set to 0x8C15D108
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D73D0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D746C,pc),r3 ; r3 set to 0x1900
	mov.l r13,@-r15
	mov.w @(loc_8C0D746E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0D746E,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0D7470,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0D7488,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0D7472,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D7474,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D7480,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x24,r1 ; r1 set to 0x24
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r13
	mov.l @(loc_8C0D748C,pc),r2 ; r2 set to 0x8C15D0A8
	extu.b r13,r13
	mov r13,r3 ; r3 ??? bc r13 is ???
	shll2 r3
	shll r13
	add r3,r13
	add r2,r13
	mov.b @(0x04,r13),r0
	mov.b r0,@r1
	mova @(loc_8C0D7490,pc),r0  ; r0 set to 0x8C0D7490
	fmov.s @r0,fr4
	mov.w @(loc_8C0D7476,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0D7494
	mov.w @r13,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	lds r3,fpul
	fmov fr4,fr0 ; r0 ??? bc r4 is ???
	float fpul,fr3
	bra loc_8C0D74A4
	fmac fr0,fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D746A:
	#data 0x02A4
loc_8C0D746C:
	#data 0x1900
loc_8C0D746E:
	#data 0x00Dc
loc_8C0D7470:
	#data 0x00C0
loc_8C0D7472:
	#data 0x012c
loc_8C0D7474:
	#data 0x01A3
loc_8C0D7476:
	#data 0x0130
	#align4

loc_8C0D7478:
	#data bank04.loc_8c044F12
loc_8C0D747C:
	#data loc_8c0d73Be
loc_8C0D7480:
	#data bank12.loc_8c1294C8
loc_8C0D7484:
	#data bank15.loc_8c15D108
loc_8C0D7488:
	#data bank12.loc_8c129560
loc_8C0D748C:
	#data bank15.loc_8c15D0A8
loc_8C0D7490:
	#data 0x3FD55555

;==============================================
loc_8C0D7494:
	mov.w @r13,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fneg fr3
	fadd fr3,fr2

loc_8C0D74A4:
	fmov.s fr2,@(r0,r14)
	mov r14,r2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	add r0,r2
	mov.l r2,@-r15
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.w @(0x02,r13),r0
	mov r0,r3 ; r3 set to 0x38, r3 set to 0x38
	lds r3,fpul
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	mova @(loc_8C0D75D0,pc),r0  ; r0 set to 0x8C0D75D0, r0 set to 0x8C0D75D0
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.b @(0x05,r13),r0
	mov.l @(loc_8C0D75D4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov r0,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D74D6:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20, r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov.l @(loc_8C0D75D8,pc),r0 ; r0 set to 0x8C15D118, r0 set to 0x8C15D118, r0 set to 0x8C15D118
	extu.b r3,r3
	mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0D74EC:
	mov r4,r3
	mov.l @(loc_8C0D75DC,pc),r1 ; r1 set to 0x8C15D158
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D74FE:
	sts.l pr,@-r15
	mov.b @(0x5,r4),r0
	mov r4,r2
	mov.l @(0xD8,PC),r3
	mov r4,r1
	add 0x01,r0
	add 0x5C,r2
	mov.b r0,@(0x5,r4)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(0xCC,PC),r6
	mov.b @(r0,r4),r2
	mov 0x50,r0
	extu.b r2,r2
	shll2 r2
	shll r2
	add r6,r2
	fmov @r2,fr3
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r6
	fmov @(r0,r6),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0D753E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d7572
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x60,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(0x5E,PC),r3
	mov.l @r15,r4
	add r3,r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bt loc_8c0d7572
	mov.b @(0x3,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x3,r4)

loc_8C0D7572:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D757A:
	mov.w @(0x46,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf.s loc_8c0d75b2
	mov r4,r13
	mov.w @(0x34,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0d75b2
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d75b2
	mov.w @(0x26,PC),r0
	mov.w @(0x26,PC),r3
	mov.w @(r0,r14),r4
	extu.w r4,r4
	cmp/eq r3,r4
	bt loc_8c0d75ec
	mov.w @(0x1E,PC),r1
	cmp/eq r1,r4
	bt loc_8c0d75ec

loc_8C0D75B2:
	mov.b @(0x4,r13),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov.w @(0x2,PC),r0
	bra loc_8c0d7648
	mov.b r3,@(r0,r13)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d75c0:
	#data 0x012c
loc_8c0d75c2:
	#data 0x02a4
loc_8c0d75c4:
	#data 0x01d0
loc_8c0d75c6:
	#data 0x01e9
loc_8c0d75c8:
	#data 0x0140
loc_8c0d75ca:
	#data 0x0158
loc_8c0d75cc:
	#data 0x1506
loc_8c0d75ce:
	#data 0x1507
	#align4

loc_8C0D75D0:
	#data 0x40092492
loc_8C0D75D4:
	#data bank03.loc_8c034C38
loc_8C0D75D8:
	#data bank15.loc_8c15D118
loc_8C0D75DC:
	#data bank15.loc_8c15D158
loc_8C0D75E0:
	#data bank12.loc_8c1294C8
loc_8C0D75E4:
	#data bank15.loc_8c15D160
loc_8C0D75E8:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0D75EC:
	mov.l @(0x12C,PC),r3
	jsr @r3
	mov r13,r4
	mov 0x20,r0
	mov.l @(0x128,PC),r2
	mov.b @(r0,r13),r4
	mova @(0x128,PC),r0
	fmov @r0,fr4
	extu.b r4,r4
	mov.w @(0x10A,PC),r0
	mov r4,r3
	shll r4
	shll2 r3
	add r3,r4
	mov.w @(r0,r14),r3
	add r2,r4
	tst r3,r3
	bf.s loc_8c0d7622
	mov.w r3,@(r0,r13)
	mov.w @r4,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	bra loc_8c0d7630
	fmac fr0,fr3,fr2

loc_8C0D7622:
	mov.w @r4,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D7630:
	fmov fr2,@(r0,r13)
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mova @(0xE8,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r13)

loc_8C0D7648:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7650:
	mov.w @(0xBA,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf.s loc_8c0d767a
	mov r4,r14
	mov.w @(0xAE,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0d767a
	mov.w @(0xA6,PC),r0
	mov.w @(0xA6,PC),r3
	mov.w @(r0,r5),r4
	extu.w r4,r4
	cmp/eq r3,r4
	bt loc_8c0d768a
	mov.w @(0x9E,PC),r1
	cmp/eq r1,r4
	bt loc_8c0d768a

loc_8C0D767A:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x92,PC),r0
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D768A:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x9C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D769E:
	mov.b @(0x05,r4),r0
	fldi1 fr3
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8C0D771A,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r4)

loc_8C0D76B6:
	mov.l @(loc_8C0D7730,pc),r1 ; r1 set to 0x3ECCCCCD, r1 set to 0x3ECCCCCd
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	mov.l @(loc_8C0D7734,pc),r1 ; r1 set to 0x3E800000, r1 set to 0x3E800000
	fldi0 fr0
	fsts fpul,fr3
	fadd fr3,fr2
	lds r1,fpul
	mov.w @(loc_8C0D771A,pc),r1 ; r1 set to 0x108, r1 set to 0x108
	mov.w @(loc_8C0D771A,pc),r2 ; r2 set to 0x108, r2 set to 0x108
	fmov.s fr2,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	add r4,r1
	fsts fpul,fr2
	add r4,r2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	fmov.s @r1,fr1
	mov r0,r3 ; r3 set to 0x54, r3 set to 0x54
	lds r3,fpul
	fneg fr1
	fadd fr0,fr1
	float fpul,fr3
	fdiv fr3,fr1
	fmov.s @r2,fr3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	fadd fr1,fr3
	fmov.s fr3,@r2
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x53, r0 set to 0x53
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??, r0 ??
	tst r0,r0
	bf loc_8C0D7738
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D7718,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8c0d770c:
	#data 0x0130
loc_8c0d770e:
	#data 0x01d0
loc_8c0d7710:
	#data 0x01e9
loc_8c0d7712:
	#data 0x0158
loc_8c0d7714:
	#data 0x1506
loc_8c0d7716:
	#data 0x1507
loc_8c0d7718:
	#data 0x012c
loc_8c0d771a:
	#data 0x0108
	#align4

loc_8C0D771C:
	#data bank03.loc_8c034D8c
loc_8C0D7720:
	#data bank15.loc_8c15D0A8
loc_8C0D7724:
	#data 0x3FD55555
loc_8C0D7728:
	#data 0x40092492
loc_8C0D772C:
	#data bank15.loc_8c15D178
loc_8C0D7730:
	#data 0x3ECCCCCd
loc_8C0D7734:
	#data 0x3E800000

;==============================================
loc_8C0D7738:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0D7858,pc),r2 ; r2 set to 0x8C15D0A8
	mov.b @(r0,r4),r6
	mova @(loc_8C0D785C,pc),r0  ; r0 set to 0x8C0D785c
	fmov.s @r0,fr4
	extu.b r6,r6
	mov.w @(loc_8C0D7846,pc),r0 ; r0 set to 0x130
	mov r6,r3
	shll r6
	shll2 r3
	add r3,r6
	mov.w @(r0,r5),r3
	add r2,r6
	tst r3,r3
	bf/s loc_8C0D7768
	mov.w r3,@(r0,r4)
	mov.w @r6,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2 ; r2 ??? bc r5 is ???
	lds r3,fpul
	fmov fr4,fr0 ; r0 ??? bc r4 is ???
	float fpul,fr3
	bra loc_8C0D7776
	fmac fr0,fr3,fr2

loc_8C0D7768:
	mov.w @r6,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D7776:
	fmov.s fr2,@(r0,r4)
	mov.w @(0x02,r6),r0
	mov r0,r3 ; r3 set to 0x34
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0D7860,pc),r0  ; r0 set to 0x8C0D7860, r0 set to 0x8C0D7860
	float fpul,fr3
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	rts
	nop

;----------------------------------------------
loc_8C0D7792:
	mov.w @(0xB2,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf.s loc_8c0d77c4
	mov r4,r13
	mov.w @(0x9E,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0d77c4
	mov.w @(0x96,PC),r0
	mov.w @(0x96,PC),r3
	mov.w @(r0,r14),r4
	extu.w r4,r4
	cmp/eq r3,r4
	bt loc_8c0d77d2
	mov.w @(0x8E,PC),r1
	cmp/eq r1,r4
	bt loc_8c0d77d2

loc_8C0D77C4:
	mov.b @(0x4,r13),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov.w @(0x82,PC),r0
	bra loc_8c0d783c
	mov.b r3,@(r0,r13)

loc_8C0D77D2:
	mov 0x20,r0
	mov.l @(0x80,PC),r2
	mov.b @(r0,r13),r12
	mov 0x0F,r7
	mov.w @(0x76,PC),r0
	mov 0x1B,r5
	extu.b r12,r12
	mov r12,r3
	mov.b @(r0,r14),r0
	shll2 r3
	shll r12
	add r3,r12
	mov.l @(0x78,PC),r3
	and r0,r7
	add r2,r12
	mov.b @(0x5,r12),r0
	mov r0,r6
	jsr @r3
	mov r13,r4
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov.w @(0x46,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0d7816
	mov.w r3,@(r0,r13)
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	bra loc_8c0d7824
	fmac fr0,fr3,fr2

loc_8C0D7816:
	mov.w @r12,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D7824:
	fmov fr2,@(r0,r13)
	mov.w @(0x2,r12),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mova @(0x2C,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r13)

loc_8C0D783C:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7846:
	#data 0x0130
loc_8c0d7848:
	#data 0x01d0
loc_8c0d784a:
	#data 0x01e9
loc_8c0d784c:
	#data 0x0158
loc_8c0d784e:
	#data 0x1506
loc_8c0d7850:
	#data 0x1507
loc_8c0d7852:
	#data 0x012c
loc_8c0d7854:
	#data 0x0140
	#align4

loc_8C0D7858:
	#data bank15.loc_8c15D0A8
loc_8C0D785C:
	#data 0x3FD55555
loc_8C0D7860:
	#data 0x40092492
loc_8C0D7864:
	#data bank03.loc_8c034CD6

;==============================================
loc_8C0D7868:
	mov.w @(0x118,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c0d788e
	mov r4,r14
	mov.w @(0x10A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0d788e
	mov.w @(0x102,PC),r0
	mov.w @(0x102,PC),r2
	mov.w @(r0,r5),r3
	extu.w r3,r3
	cmp/eq r2,r3
	bt loc_8c0d78a0

loc_8C0D788E:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xF2,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D78A0:
	mov 0x20,r0
	mov.l @(0xF0,PC),r2
	mov.b @(r0,r14),r4
	mova @(0xF0,PC),r0
	fmov @r0,fr4
	extu.b r4,r4
	mov.w @(0xDE,PC),r0
	mov r4,r3
	shll r4
	shll2 r3
	add r3,r4
	mov.w @(r0,r5),r3
	add r2,r4
	tst r3,r3
	bf.s loc_8c0d78d0
	mov.w r3,@(r0,r14)
	mov.w @r4,r3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	bra loc_8c0d78de
	fmac fr0,fr3,fr2

loc_8C0D78D0:
	mov.w @r4,r3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0D78DE:
	fmov fr2,@(r0,r14)
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mova @(0xB0,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c0d790c
	mov.l @(0xA0,PC),r2
	jsr @r2
	nop
	tst 0x1F,r0
	bf loc_8c0d790c
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_8C0D790C:
	mov.b @(0x6,r14),r0
	tst r0,r0
	bt loc_8c0d7922
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d7922
	mov 0x00,r0
	mov.b r0,@(0x6,r14)

loc_8C0D7922:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7928:
	mov.w @(loc_8C0D7984,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0D7940
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D798C,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D7940:
	mov.w @(loc_8C0D798C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov.l @(loc_8C0D79B8,pc),r3 ; r3 set to 0x8C26A5A0
	mov.b r6,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x130
	mov.w r6,@(r0,r4)
	mova @(loc_8C0D79A8,pc),r0  ; r0 set to 0x8C0D79A8
	fmov.s @r0,fr3 ; r3 ??
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0D79AC,pc),r0  ; r0 set to 0x8C0D79Ac
	fmov.s @r0,fr3
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0D79B0,pc),r0  ; r0 set to 0x8C0D79B0
	fmov.s @r0,fr3
	mov.w @(loc_8C0D7990,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0D79B4,pc),r0  ; r0 set to 0x8C0D79B4
	fmov.s @r3,fr2
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0D79A4,pc),r3 ; r3 set to 0x8C034D8c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0D7992,pc),r0 ; r0 set to 0x41c
	fldi0 fr2
	fmov.s @(r0,r5),fr1
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr2,fr1
	jmp @r3
	fmov.s fr1,@(r0,r4)

;unused
	rts
	nop

;----------------------------------------------
loc_8c0d7984:
	#data 0x01d0
loc_8c0d7986:
	#data 0x01e9
loc_8c0d7988:
	#data 0x0158
loc_8c0d798a:
	#data 0x1504
loc_8c0d798c:
	#data 0x012c
loc_8c0d798e:
	#data 0x0130
loc_8c0d7990:
	#data 0x0108
loc_8c0d7992:
	#data 0x041c
	#align4

loc_8C0D7994:
	#data bank15.loc_8c15D0A8
loc_8c0d7998:
	#data 0x3FD55555
loc_8c0d799c:
	#data 0x40092492
loc_8C0D79A0:
	#data bank03.loc_8c03319e
loc_8C0D79A4:
	#data bank03.loc_8c034D8c
loc_8C0D79A8:
	#data 0x40800000
loc_8C0D79AC:
	#data 0x3F4CCCCd
loc_8C0D79B0:
	#data 0x3F400000
loc_8C0D79B4:
	#data 0xC2D55555
loc_8C0D79B8:
	#data 0x8C26A5A0

;==============================================
loc_8C0D79BC:
	mov.w @(loc_8C0D7A2C,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt/s loc_8C0D79D4
	mov 0x00,r6 ; r6 set to 0x00
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D7A2E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r6,@(r0,r4)

;----------------------------------------------
loc_8C0D79D4:
	mov.w @(loc_8C0D7A2E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x130
	mov.w r6,@(r0,r4)
	mova @(loc_8C0D7A34,pc),r0  ; r0 set to 0x8C0D7A34
	fmov.s @r0,fr3 ; r3 ??
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(loc_8C0D7A44,pc),r3 ; r3 set to 0x8C26A5A4
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0D7A38,pc),r0  ; r0 set to 0x8C0D7A38
	fmov.s @r0,fr3 ; r3 ??
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0D7A3C,pc),r0  ; r0 set to 0x8C0D7A3c
	fmov.s @r0,fr3
	mov.w @(loc_8C0D7A30,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0D7A40,pc),r0  ; r0 set to 0x8C0D7A40
	fmov.s @r3,fr2
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0D7A48,pc),r3 ; r3 set to 0x8C034D8c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0D7A32,pc),r0 ; r0 set to 0x41c
	fldi0 fr2
	fmov.s @(r0,r5),fr1
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr2,fr1
	jmp @r3
	fmov.s fr1,@(r0,r4)

;unused
	rts
	nop

;----------------------------------------------
loc_8C0D7A18:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D7A2E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D7A26:
	mov.l @(loc_8C0D7A4C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D7A2C:
	#data 0x01D0
loc_8C0D7A2E:
	#data 0x012c
loc_8C0D7A30:
	#data 0x0108
loc_8C0D7A32:
	#data 0x041c
	#align4

loc_8C0D7A34:
	#data 0x40600000
loc_8C0D7A38:
	#data 0x3F4CCCCd
loc_8C0D7A3C:
	#data 0x3F400000
loc_8C0D7A40:
	#data 0x42555555
loc_8C0D7A44:
	#data 0x8C26A5A4
loc_8C0D7A48:
	#data bank03.loc_8c034D8c
loc_8C0D7A4C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0d7a50:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x120,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d7a82
	mov r0,r4
	mov.l @(0x110,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x100,PC),r2
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.w r2,@(r0,r4)
loc_8c0d7a82:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0d7a8a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov 0x00,r4
	mov.l r10,@-r15
	mov 0x0C,r11
	mov.l r9,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov 0x01,r9
	sts.l pr,@-r15
	mov.l @(loc_8c0d7b7c,pc),r8
	mov r4,r13
	mov.w @(loc_8C0D7B76,pc),r10

loc_8c0d7aaa:
	mov 0x03,r5
	mov 0x02,r6
	jsr @r8
	mov r12,r4
	tst r0,r0
	bt/s loc_8c0d7acc
	mov r0,r4
	mov 0x20,r0
	mov.l @(loc_8c0d7b80,pc),r2
	mov.l r2,@(0x10,r4)
	mov.b r9,@(r0,r4)
	mov 0x26,r0
	mov.l r12,@(0x18,r4)
	mov.w r10,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	add 0x01,r13

loc_8c0d7acc:
	add 0x01,r14
	exts.b r14,r3
	cmp/ge r11,r3
	bf loc_8c0d7aaa
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0D7AE6:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0D7B84,pc),r4 ; r4 set to 0x8C28C6C4
	tst r3,r3
	bf loc_8C0D7B0a
	mov.w @(loc_8C0D7B78,pc),r3 ; r3 set to 0xCc
	mov.l @(loc_8C0D7B88,pc),r1 ; r1 set to 0x8C15D180
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	mov r14,r4
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0x20
	shll2 r0 ; r0 set to 0x80
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D7B0A:
	mov.w @(loc_8C0D7B78,pc),r2 ; r2 set to 0xCc
	mov.l @(loc_8C0D7B90,pc),r1 ; r1 set to 0x8C15D190
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.l r2,@r4
	mov r14,r4
	mov.w @(loc_8C0D7B78,pc),r2 ; r2 set to 0xCc
	mov.l @(0x18,r14),r3
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C0D7B8C,pc),r3 ; r3 set to 0x8C28C6C8
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0D7B2A:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mova @(0x54,PC),r0
	fmov @r0,fr2
	extu.b r3,r3
	mov.w @(0x32,PC),r0
	shll2 r3
	shll2 r3
	shll2 r3
	lds r3,fpul
	mov.w @(r0,r4),r3
	float fpul,fr3
	tst r3,r3
	fmov fr3,fr4
	bf.s loc_8c0d7b5c
	fmul fr2,fr4
	fneg fr4

loc_8C0D7B5C:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	rts
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d7b76:
	#data 0x1901
loc_8C0D7B78:
	#data 0x00Cc
loc_8C0D7B7A:
	#data 0x0130
	#align4

loc_8C0D7B7C:
	#data bank04.loc_8c044F12
loc_8C0D7B80:
	#data loc_8c0d7AE6
loc_8C0D7B84:
	#data 0x8C28C6C4
loc_8C0D7B88:
	#data bank15.loc_8c15D180
loc_8C0D7B8C:
	#data 0x8C28C6C8
loc_8C0D7B90:
	#data bank15.loc_8c15D190
loc_8C0D7B94:
	#data 0x3FD55555

;==============================================
loc_8C0D7B98:
	mov.l @(0x8C,PC),r5
	mov.l @r5,r3
	mov.b @r3,r2
	mov 0x0B,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c0d7bcc
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0d7bcc
	mov 0x01,r0
	mov.w r0,@(0x1E,r4)
	mov 0x34,r0
	mov.l @r5,r2
	mov.b @r2,r1
	add 0x01,r1
	mov.b r1,@r2
	mov.l @(0x68,PC),r1
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c0d7bcc:
	rts
	nop

;----------------------------------------------
loc_8C0D7BD0:
	mov.w @(0x4E,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c0d7bf8
	mov 0x01,r5
	mov.w @(0x46,PC),r0
	mov.b @(r0,r4),r3
	mova @(0x50,PC),r0
	fmov @r0,fr2
	mov 0x34,r0
	extu.b r3,r3
	lds r3,fpul
	mov.l @(0x48,PC),r3
	float fpul,fr3
	fmov @r3,fr1
	fmul fr2,fr3
	fsub fr3,fr1
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr1
	bt loc_8c0d7c1c

loc_8C0D7BF8:
	mov.w @(0x26,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0d7c1e
	mov.w @(0x20,PC),r0
	mov.l @(0x34,PC),r2
	mov.b @(r0,r4),r3
	mova @(0x28,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	extu.b r3,r3
	fmov @r2,fr2
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov @(r0,r4),fr3
	fcmp/gt fr2,fr3
	bf loc_8c0d7c1e

loc_8C0D7C1C:
	mov 0x00,r5

loc_8C0D7C1E:
	rts
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d7c22:
	#data 0x0130
loc_8c0d7c24:
	#data 0x013f
	#align4

loc_8c0d7c28:
	#data 0x8C28C6C4
loc_8c0d7c2c:
	#data 0x42555555
loc_8c0d7c30:
	#data 0x3FD55555
loc_8c0d7c34:
	#data 0x8C26A5A0
loc_8c0d7c38:
	#data 0x8C26A5A4

;==============================================
loc_8C0D7C3C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D7D84,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0D7D8C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D7D84,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D7D86,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D7D88,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D7D90,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov r14,r1
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.w @(loc_8C0D7D86,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.w r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mova @(loc_8C0D7D94,pc),r0  ; r0 set to 0x8C0D7D94
	fmov.s @r0,fr3 ; r3 ??
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(loc_8C0D7D90,pc),r3 ; r3 set to 0x8C1294C8
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fldi1 fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x18,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0D7D98,pc),r1 ; r1 set to 0x43092492
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	mov.l @(loc_8C0D7D9C,pc),r2 ; r2 set to 0x8C28C6C4
	fsts fpul,fr3
	fadd fr3,fr2 ; r2 ??
	fmov.s fr2,@(r0,r14)
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.b r4,@r3
	mov r5,r0 ; r0 set to 0x01
	nop
	mov.w r0,@(0x1E,r14)
	bsr loc_8C0D7A8a
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0D7CF8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0x01
	cmp/ge r3,r0
	bf loc_8C0D7D18
	mov.b @(0x04,r14),r0
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	add 0x01,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D7D86,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r2,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7D18:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D7DA0,pc),r1 ; r1 set to 0x8C15D1A0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7D2C:
	mov.l @(0x18,r4),r3
	mov.w @(0x1C,r3),r0
	cmp/pl r0
	bt loc_8c0d7d44
	mov.b @(0x5,r4),r0
	fldi1 fr3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)
	mov 0x54,r0
	fmov fr3,@(r0,r4)

loc_8C0D7D44:
	bra loc_8c0d7b98
	nop

loc_8C0D7D48:
	mov.w @(0x1C,r4),r0
	mov 0x54,r1
	add r4,r1
	fldi0 fr2
	mov r0,r3
	lds r3,fpul
	fmov @r1,fr3
	mov 0x54,r2
	add r4,r2
	float fpul,fr1
	fneg fr3
	fadd fr2,fr3
	fdiv fr1,fr3
	fmov @r2,fr1
	fadd fr3,fr1
	fmov fr1,@r2
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0d7d80
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x6,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0D7D80:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D7D84:
	#data 0x00Dc
loc_8C0D7D86:
	#data 0x012c
loc_8C0D7D88:
	#data 0x01A3
	#align4

loc_8C0D7D8C:
	#data bank12.loc_8c129560
loc_8C0D7D90:
	#data bank12.loc_8c1294C8
loc_8C0D7D94:
	#data 0x3F8147Ae
loc_8C0D7D98:
	#data 0x43092492
loc_8C0D7D9C:
	#data 0x8C28C6C4
loc_8C0D7DA0:
	#data bank15.loc_8c15D1A0

;==============================================
loc_8C0D7DA4:
	mov.w @(loc_8C0D7EAC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D7EB4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D7EAC,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D7EAE,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D7EB0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D7EB8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x40,r5 ; r5 set to 0x40
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0D7EB2,pc),r0 ; r0 set to 0x13c
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r5,@(r0,r4)
	lds.l @r15+,pr

loc_8C0D7E20:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0x3f
	cmp/ge r3,r0
	bf loc_8C0D7E3c
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x40
	bra loc_8C0D7E54
	mov.b r0,@(0x04,r14)

loc_8C0D7E3C:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0D7E48
	bra loc_8C0D7E6a
	mov 0x08,r13

loc_8C0D7E48:
	mov.l @(loc_8C0D7EBC,pc),r2 ; r2 set to 0x8C28C6C8
	mov.b @(r0,r14),r3
	mov.l @r2,r4
	mov.b @r4,r1
	cmp/hi r1,r3
	bf loc_8C0D7E5c

loc_8C0D7E54:
	mov.w @(loc_8C0D7EAE,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	bra loc_8C0D7E90
	mov.b r2,@(r0,r14)

loc_8C0D7E5C:
	mov.b @r4,r2
	mov.b @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8C0D7E68
	bra loc_8C0D7E6a
	mov 0x0A,r13

loc_8c0d7e68:
	mov 0x09,r13

loc_8c0d7e6a:
	bsr loc_8c0d7bd0
	mov r14,r4
	mov.w @(loc_8c0d7eae,pc),r1
	add r14,r1
	mov.b r0,@r1
	mov.w @(loc_8c0d7eae,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0d7e86
	mov.l @(loc_8c0d7ec0,pc),r3
	mov 0x1B,r5
	mov r13,r6
	jsr @r3
	mov r14,r4

loc_8c0d7e86:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0d7b2a
	mov.l @r15+,r14

loc_8C0D7E90:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D7E98:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D7EAE,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D7EA6:
	mov.l @(loc_8C0D7EC4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D7EAC:
	#data 0x00Dc
loc_8C0D7EAE:
	#data 0x012c
loc_8C0D7EB0:
	#data 0x01A3
loc_8C0D7EB2:
	#data 0x013c
	#align4

loc_8C0D7EB4:
	#data bank12.loc_8c129560
loc_8C0D7EB8:
	#data bank12.loc_8c1294C8
loc_8C0D7EBC:
	#data 0x8C28C6C8
loc_8C0D7EC0:
	#data bank03.loc_8c034c38
loc_8C0D7EC4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0D7EC8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x110,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d7ee6
	mov r0,r4
	mov.l @(0x104,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0d7ee6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D7EEE:
	mov r4,r3
	mov.l @(loc_8C0D7FE8,pc),r1 ; r1 set to 0x8C15D1A8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D7F00:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D7FD2,pc),r3 ; r3 set to 0x1902
	mov.w @(loc_8C0D7FD4,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0D7FD4,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0D7FD6,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	mov.l @(loc_8C0D7FEC,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0D7FD8,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D7FDA,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D7FF0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r14)
	mov 0x07,r2 ; r2 set to 0x07
	mov.w @(loc_8C0D7FD8,pc),r0 ; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r14)
	mova @(loc_8C0D7FF4,pc),r0  ; r0 set to 0x8C0D7FF4
	fmov.s @r0,fr3 ; r3 ??
	mov.w @(loc_8C0D7FDC,pc),r0 ; r0 set to 0x108
	mov.l @(loc_8C0D7FF8,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0D7F86:
	sts.l pr,@-r15
	mov.l @(0x18,r4),r5 ; r5 ??? bc r4 is ???
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0 ; r0 set to 0x08
	cmp/ge r6,r0
	bf loc_8C0D7FA4
	mov r6,r0 ; r0 set to 0x02, r0 set to 0x02
	nop
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	lds.l @r15+,pr
	mov.w @(loc_8C0D7FD8,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D7FA4:
	mov.w @(loc_8C0D7FDE,pc),r0 ; r0 set to 0x130
	mov r4,r1
	mov.l @(loc_8C0D7FF0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	mov.w @(r0,r5),r2
	mov.w r2,@(r0,r4)
	mov r5,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D7FBE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D7FD8,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D7FCC:
	mov.l @(loc_8C0D7FFC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D7FD2:
	#data 0x1902
loc_8C0D7FD4:
	#data 0x00Dc
loc_8C0D7FD6:
	#data 0x00C0
loc_8C0D7FD8:
	#data 0x012c
loc_8C0D7FDA:
	#data 0x01A3
loc_8C0D7FDC:
	#data 0x0108
loc_8C0D7FDE:
	#data 0x0130
	#align4

loc_8C0D7FE0:
	#data bank04.loc_8c044F12
loc_8C0D7FE4:
	#data loc_8c0d7EEe
loc_8C0D7FE8:
	#data bank15.loc_8c15D1A8
loc_8C0D7FEC:
	#data bank12.loc_8c129560
loc_8C0D7FF0:
	#data bank12.loc_8c1294C8
loc_8C0D7FF4:
	#data 0x3F333333
loc_8C0D7FF8:
	#data bank03.loc_8c034C38
loc_8C0D7FFC:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0d8000:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x13C,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d803a
	mov r0,r4
	mov.l @(0x12C,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x10C,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.l @r15,r0
	mov.w @(0xFE,PC),r1
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1E,r4)

loc_8c0d803a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D8042:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r5,@r15
	mov r4,r14
	mov r6,r0
	nop
	mov.b r0,@(0x4,r15)
	mov 0x05,r2
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r14),r3
	cmp/gt r2,r3
	bt loc_8c0d8106
	mov.l @(0xE8,PC),r2
	mov 0x04,r5
	mov 0x00,r6
	jsr @r2
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d8106
	mov r0,r4
	mov.l @(0xDC,PC),r2
	mov.w @(0xC8,PC),r1
	mov.l r2,@(0x10,r4)
	mov.w @(0xC4,PC),r2
	add r4,r1
	mov.w @(0xC2,PC),r0
	mov.l @(0xD4,PC),r3
	mov.l r14,@(0x18,r4)
	jsr @r3
	add r14,r2
	mov.w @(0xBA,PC),r0
	mov 0x01,r5
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
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
	mov.w @(0x9E,PC),r0
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
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi1 fr3
	mov.b @(r0,r14),r2
	mov 0xFF,r3
	mov 0x21,r1
	mov.b r2,@(r0,r4)
	add r4,r1
	mov.w @(0x76,PC),r0
	fmov fr3,@(r0,r4)
	add 0x25,r0
	mov.b r3,@(r0,r4)
	add 0x77,r0
	mov.b @(r0,r14),r2
	mov.l @(0x80,PC),r0
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov 0x00,r2
	mov.w @(0x64,PC),r0
	mov.w r3,@(r0,r4)
	add 0xFE,r0
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov.b @(0x4,r15),r0
	mov.l @(0x68,PC),r3
	mov.b r0,@r1
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x38,PC),r1
	mov 0x26,r0
	mov.w r1,@(r0,r4)
	mov.w @(0x36,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_8C0D8106:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D810E:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0D815C,pc),r0 ; r0 set to 0x8C15D1B8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D8122:
	mov r4,r3
	mov.l @(loc_8C0D8160,pc),r1 ; r1 set to 0x8C15D1Cc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d8134:
	#data 0x1a00
loc_8c0d8136:
	#data 0x0158
loc_8c0d8138:
	#data 0x02a6
loc_8c0d813a:
	#data 0x00dc
loc_8c0d813c:
	#data 0x00c0
loc_8c0d813e:
	#data 0x012c
loc_8c0d8140:
	#data 0x01a3
loc_8c0d8142:
	#data 0x0108
loc_8c0d8144:
	#data 0x012e
	#align4

loc_8C0D8148:
	#data bank04.loc_8c044F12
loc_8C0D814C:
	#data loc_8c0d810e
loc_8C0D8150:
	#data bank12.loc_8c129560
loc_8C0D8154:
	#data bank12.loc_8c1294C8
loc_8C0D8158:
	#data bank13.loc_8c1355D4
loc_8C0D815C:
	#data bank15.loc_8c15D1B8
loc_8C0D8160:
	#data bank15.loc_8c15D1Cc

;==============================================
loc_8C0D8164:
	mov.w @(loc_8C0D829C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0D82A8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D829C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D829E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D82A0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D82AC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x07,r2 ; r2 set to 0x07
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov r4,r1
	mov.b r2,@(r0,r4)
	add 0x34,r1
	mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???
	mov.l @(loc_8C0D82AC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr

loc_8C0D81DE:
	mov.w @(loc_8C0D829E,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D82A2,pc),r3 ; r3 set to 0x158, r3 set to 0x158
	fmov.s fr15,@-r15
	fldi1 fr15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b r5,@(r0,r14)
	add 0xDC,r0 ; r0 set to 0x108, r0 set to 0x108
	add r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	fmov.s fr15,@(r0,r14)
	mov.w @r3,r3
	mov.w @(0x1E,r14),r0
	cmp/eq r3,r0
	bt loc_8C0D8206
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	bra loc_8C0D8282
	mov.b r0,@(0x04,r14)

loc_8C0D8206:
	mov.w @(loc_8C0D829E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x2c
	cmp/eq 0x00,r0
	bt loc_8C0D8220
	cmp/eq 0x01,r0
	bt loc_8C0D8236
	cmp/eq 0x02,r0
	bt loc_8C0D8258
	bra loc_8C0D8282
	nop

loc_8C0D8220:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D82B0,pc),r3 ; r3 set to 0x8C034C38
	mov 0x00,r6 ; r6 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x1B,r5 ; r5 set to 0x1b
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	jmp @r3
	mov.l @r15+,r14

loc_8C0D8236:
	mov.l @(loc_8C0D82B4,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0D82A4,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0D8282
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr15,@(r0,r14)
	mova @(loc_8C0D82B8,pc),r0  ; r0 set to 0x8C0D82B8
	fmov.s @r0,fr3 ; r3 ??
	mov 0x68,r0 ; r0 set to 0x68
	bra loc_8C0D8282
	fmov.s fr3,@(r0,r14)

loc_8c0d8258:
	mov 0x68,r1
	add r14,r1
	mov 0x5C,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf/s loc_8c0d827a
	fmov.s fr2,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D82A6,pc),r0
	fmov.s fr15,@(r0,r14)
	add 0x24,r0
	mov.b r5,@(r0,r14)

loc_8c0d827a:
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0D82A6,pc),r0
	fmov.s fr3,@(r0,r14)

loc_8C0D8282:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D828A:
	mov r4,r3
	mov.l @(loc_8C0D82BC,pc),r1 ; r1 set to 0x8C15D1Dc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D829C:
	#data 0x00Dc
loc_8C0D829E:
	#data 0x012c
loc_8C0D82A0:
	#data 0x01A3
loc_8C0D82A2:
	#data 0x0158
loc_8C0D82A4:
	#data 0x0141
loc_8c0d82a6:
	#data 0x0108
	#align4

loc_8C0D82A8:
	#data bank12.loc_8c129560
loc_8C0D82AC:
	#data bank12.loc_8c1294C8
loc_8C0D82B0:
	#data bank03.loc_8c034C38
loc_8C0D82B4:
	#data bank03.loc_8c034D8c
loc_8C0D82B8:
	#data 0x3D800000
loc_8C0D82BC:
	#data bank15.loc_8c15D1Dc

;==============================================
loc_8C0D82C0:
	mov.w @(loc_8C0D834C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x12d
	mov.b r0,@(0x04,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bf loc_8C0D82Ea
	mova @(loc_8C0D8350,pc),r0  ; r0 set to 0x8C0D8350
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fmul fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fmul fr4,fr2
	bra loc_8C0D830a
	fmov.s fr2,@(r0,r4)

loc_8C0D82EA:
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C0D82F6
	bra loc_8C0D82Fa
	fldi1 fr4

loc_8C0D82F6:
	mova @(loc_8C0D8354,pc),r0  ; r0 init to 0x8C0D8354
	fmov.s @r0,fr4

loc_8C0D82FA:
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fmul fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fmul fr4,fr2
	fmov.s fr2,@(r0,r4)

loc_8C0D830A:
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
	mov 0x08,r3 ; r3 set to 0x08, r3 set to 0x08, r3 set to 0x08
	mov.b r3,@(r0,r4)
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02, r6 set to 0x02
	mov.l @(loc_8C0D8358,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38, r3 set to 0x8C034C38
	jmp @r3
	mov 0x1B,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D8318:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d8334
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x18,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0D8334:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D833A:
	mov r4,r3
	mov.l @(loc_8C0D8360,pc),r1 ; r1 set to 0x8C15D1Ec
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D834C:
	#data 0x012c
	#align4

loc_8C0D8350:
	#data 0x3F4CCCCd
loc_8C0D8354:
	#data 0x3F99999a
loc_8C0D8358:
	#data bank03.loc_8c034C38
loc_8C0D835C:
	#data bank03.loc_8c034D8c
loc_8C0D8360:
	#data bank15.loc_8c15D1Ec

;==============================================
loc_8C0D8364:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xEA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xEC,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xDC,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xD4,PC),r0
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
	mov.w @(0xB0,PC),r0
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
	mov.l @(0xA0,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x00,r2
	mov.b @(r0,r1),r3
	mov 0x1B,r5
	mov.l @(0x94,PC),r3
	mov 0x05,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d83ee
	mov.w @(0x74,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C0D83EE:
	mova @(0x7C,PC),r0
	mov r14,r4
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fmul fr4,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D8408:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D8470,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0D8426
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0D8458,pc),r0 ; r0 set to 0x12c
	bra loc_8C0D843e
	mov.b r3,@(r0,r14)

loc_8C0D8426:
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(loc_8C0D8464,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0D845E,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r14),r1
	fmov.s @(r0,r1),fr3 ; r3 ??? bc r1 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)

loc_8C0D843E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8444:
	mov r4,r3
	mov.l @(loc_8C0D8474,pc),r1 ; r1 set to 0x8C15D1Fc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D8456:
	#data 0x00Dc
loc_8C0D8458:
	#data 0x012c
loc_8C0D845a:
	#data 0x01A3
loc_8C0D845c:
	#data 0x0130
loc_8C0D845E:
	#data 0x041c
	#align4

loc_8C0D8460:
	#data bank12.loc_8c129560
loc_8C0D8464:
	#data bank12.loc_8c1294C8
loc_8C0D8468:
	#data bank03.loc_8c034C38
loc_8C0D846C:
	#data 0x3F4CCCCd
loc_8C0D8470:
	#data bank03.loc_8c034D8c
loc_8C0D8474:
	#data bank15.loc_8c15D1Fc

;==============================================
loc_8C0D8478:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x170,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x174,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x162,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x15A,PC),r0
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
	mov.w @(0x136,PC),r0
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
	mov.l @(0x128,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x00,r2
	mov.b @(r0,r1),r3
	mov 0x1B,r5
	mov.l @(0x11C,PC),r3
	mov 0x04,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(0x108,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0x108,PC),r0
	fmov @r0,fr4
	mov.w @(0xF0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0d850e
	mova @(0x100,PC),r0
	fmov @r0,fr4

loc_8C0D850E:
            ; CODE XREF from loc_8c0d8478 (+0x90)
	mov 0x50,r1
	mov r14,r2
	add r14,r1
	mov.l @(0xE8,PC),r3
	mov 0x34,r0
	fmov @r1,fr0
	fmov @(r0,r14),fr3
	add 0x50,r2
	mov.l @(0xF0,PC),r1
	fmac fr0,fr4,fr3
	lds r1,fpul
	mov 0x54,r1
	add r14,r1
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @r1,fr3
	mov r14,r1
	fmov @(r0,r14),fr2
	add 0x68,r1
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(0xD4,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fmul fr4,fr2
	fmov fr2,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr5
	mova @(0xC4,PC),r0
	fmov @r0,fr4
	mov 0x68,r0
	fmov @(r0,r14),fr3
	mov 0x50,r0
	fmov @(r0,r14),fr2
	add 0x38,r0
	fmul fr4,fr3
	fsub fr2,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov @(r0,r14),fr3
	mov 0x54,r0
	fmov @(r0,r14),fr2
	add 0x38,r0
	fmul fr4,fr3
	fsub fr2,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	mov r14,r4
	mov.w r0,@(0x1E,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mov 0x48,r0
	mov 0x00,r3
	mov.l r3,@(r0,r14)
	mov.w @(0x66,PC),r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14


loc_8C0D8596:
mov r4,r3
mov.l @(loc_8C0D8620,pc),r1 ; r1 set to 0x8C15D20c
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

;==============================================
loc_8C0D85A8:
	mov 0x50,r0
	mov r0,r1
	add 0x38,r1
	add r4,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x54,r0
	mov r0,r1
	add 0x38,r1
	add r4,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov.l @(0x5C,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@(r0,r4)
	mov.w @(0x2A,PC),r0
	fsts fpul,fr3
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0d85ec
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x13,r0
	mov.w r0,@(0x1E,r4)

loc_8C0D85EC:
	rts
	nop
;----------------------------------------------
loc_8c0d85f0:
	#data 0x00dc
loc_8c0d85f2:
	#data 0x012c
loc_8c0d85f4:
	#data 0x01a3
loc_8c0d85f6:
	#data 0x0130
loc_8c0d85f8:
	#data 0x00f0
loc_8c0d85fa:
	#data 0x0108
	#align4

loc_8C0D85FC:
	#data bank12.loc_8c129560
loc_8C0D8600:
	#data bank12.loc_8c1294C8
loc_8C0D8604:
	#data bank03.loc_8c034C38
loc_8C0D8608:
	#data 0xC2200000
loc_8C0D860C:
	#data 0x42200000
loc_8C0D8610:
	#data 0x434DB6Db
loc_8C0D8614:
	#data 0x3ECCCCCd
loc_8C0D8618:
	#data 0x41A00000
loc_8C0D861C:
	#data 0x3FC00000
loc_8C0D8620:
	#data bank15.loc_8c15D20c
loc_8C0D8624:
	#data 0x3D23D70a

;==============================================
loc_8C0D8628:
	mov.l @(0x50,PC),r1
	mov 0x50,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	mov.l @(0x4C,PC),r1
	fsts fpul,fr3
	fmul fr3,fr2
	lds r1,fpul
	mov.l @(0x48,PC),r1
	fmov fr2,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr1
	fsts fpul,fr2
	fmul fr2,fr1
	lds r1,fpul
	fmov fr1,@(r0,r4)
	mov.w @(0x2E,PC),r0
	fsts fpul,fr1
	fmov @(r0,r4),fr0
	fsub fr1,fr0
	fmov fr0,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0d8664
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0D8664:
	rts
	nop

;----------------------------------------------
loc_8C0D8668:
	mov r4,r3
	mov.l @(loc_8C0D8688,pc),r1 ; r1 set to 0x8C15D214
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d867a:
	#data 0x0108
	#align4

loc_8c0d867c:
	#data 0x3FC00000
loc_8C0D8680:
	#data 0x3F666666
loc_8C0D8684:
	#data 0x3D03126f
loc_8C0D8688:
	#data bank15.loc_8c15D214

;==============================================
loc_8C0D868C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x152,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x158,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x144,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x13C,PC),r0
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
	mov.w @(0x118,PC),r0
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
	mov.l @(0x10C,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x00,r2
	mov.b @(r0,r1),r3
	mov 0x1B,r5
	mov.l @(0x100,PC),r3
	mov 0x04,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(0xEC,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0xEC,PC),r0
	fmov @r0,fr4
	mov.w @(0xD2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0d8722
	mova @(0xE4,PC),r0
	fmov @r0,fr4

loc_8C0D8722:
	mov 0x50,r1
	mov r14,r2
	add r14,r1
	mov.l @(0xCC,PC),r3
	mov 0x34,r0
	fmov @r1,fr0
	fmov @(r0,r14),fr3
	add 0x50,r2
	mov.l @(0xD4,PC),r1
	fmac fr0,fr4,fr3
	lds r1,fpul
	mov 0x54,r1
	add r14,r1
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @r1,fr3
	mov r14,r1
	fmov @(r0,r14),fr2
	add 0x68,r1
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(0xB8,PC),r0
	mov r14,r4
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fmul fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov @(r0,r14),fr2
	mov 0x50,r0
	fmov @(r0,r14),fr1
	mova @(0x98,PC),r0
	fmul fr3,fr2
	fsub fr1,fr2
	fmov @r0,fr1
	mov.w @(0x6A,PC),r0
	fdiv fr1,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D878A:
	mov 0x50,r0
	mov r0,r1
	add 0x38,r1
	add r4,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov.l @(0x80,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	mov.l @(0x7C,PC),r1
	fmov fr2,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fmul fr3,fr2
	lds r1,fpul
	fmov fr2,@(r0,r4)
	mov.w @(0x40,PC),r0
	fsts fpul,fr2
	fmov @(r0,r4),fr1
	fsub fr2,fr1
	fmov fr1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0d87ce
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x1A,PC),r0
	mov.b r3,@(r0,r4)


loc_8C0D87CE:
	rts
	nop

;----------------------------------------------
loc_8C0D87D2:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	fldi1 fr3
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D87E8,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	add 0xDC,r0 ; r0 set to 0x108
	rts
	fmov.s fr3,@(r0,r4)
;----------------------------------------------
loc_8c0d87e6:
	#data 0x00dc
loc_8c0d87e8:
	#data 0x012c
loc_8c0d87ea:
	#data 0x01a3
loc_8c0d87ec:
	#data 0x0130
loc_8c0d87ee:
	#data 0x0088
loc_8c0d87f0:
	#data 0x0108
	#align4
loc_8C0D87F4:
	#data bank12.loc_8c129560
loc_8C0D87F8:
	#data bank12.loc_8c1294C8
loc_8C0D87FC:
	#data bank03.loc_8c034C38
loc_8c0d8800:
	#data 0xC2200000
loc_8c0d8804:
	#data 0x42200000
loc_8c0d8808:
	#data 0x434DB6Db
loc_8c0d880c:
	#data 0x3C75C28f
loc_8c0d8810:
	#data 0x41200000
loc_8c0d8814:
	#data 0x41F00000
loc_8c0d8818:
	#data 0x3F400000
loc_8c0d881c:
	#data 0x3D088889

;==============================================
loc_8C0D8820:
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0d8834
	mov.w @(0xC,PC),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r2
	add 0xFF,r2
	mov.b r2,@(r0,r5)

loc_8c0d8834:
	mov.l @(0x4,pc),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d883a:
	#data 0x02a6
	#align4
loc_8C0D883C:
	#data bank04.loc_8c0450c0

;==============================================
loc_8C0D8840:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x16C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d8866
	mov r0,r4
	mov.l @(0x15C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8C0D8866:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D886E:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov.l r5,@r15
	mov r6,r0
	nop
	mov.l @(0x138,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x02,r6
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt.s loc_8c0d88a0
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r3
	mov.l r3,@(0x14,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1

loc_8C0D88A0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D88A8:
	mov r4,r3
	mov.l @(loc_8C0D89BC,pc),r1 ; r1 set to 0x8C15D460
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D88BA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xE6,PC),r3
	mov 0x01,r5
	mov.l r13,@-r15
	mov.w @(0xE4,PC),r1
	mov.w @(0xE2,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0xD0,PC),r0
	mov.l @(0xE4,PC),r3
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r4
	add r4,r2
	jsr @r3
	add 0x94,r0
	mov.w @(0xC2,PC),r0
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
	mov.w @(0xAA,PC),r0
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
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r13
	mov.l @(0xA0,PC),r2
	extu.b r13,r13
	mov r13,r3
	shll2 r13
	add r3,r13
	shll r13
	add r2,r13
	mov.b @r13,r3
	tst r3,r3
	bt loc_8c0d894e
	mov.w @(0x72,PC),r0
	mov.b @r13,r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov r0,r3
	add r14,r3
	mov.w @r3,r1
	mov.b @(0x1,r13),r0
	add r0,r1
	mov.w r1,@r3

loc_8C0D894E:
	mov.w @(0x2,r13),r0
	mov r0,r3
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x4,r13),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x6C,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x6,r13),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x60,PC),r0
	mov.l @(0x60,PC),r3
	fmov @r0,fr1
	mov 0x60,r0
	float fpul,fr3
	fmul fr1,fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov.b @(0x9,r13),r0
	mov r0,r6
	mov.b @(0x8,r13),r0
	mov r0,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D8992:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0D89D8,pc),r0 ; r0 set to 0x8C15D470
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d89a8:
	#data 0x1c00
loc_8c0d89aa:
	#data 0x012c
loc_8c0d89ac:
	#data 0x00dc
loc_8c0d89ae:
	#data 0x01a3
loc_8c0d89b0:
	#data 0x012d
	#align4

loc_8C0D89B4:
	#data bank04.loc_8c044F12
loc_8C0D89B8:
	#data loc_8c0d88A8
loc_8C0D89BC:
	#data bank15.loc_8c15D460
loc_8C0D89C0:
	#data bank12.loc_8c129560
loc_8C0D89C4:
	#data bank12.loc_8c1294C8
loc_8C0D89C8:
	#data bank15.loc_8c15D224
loc_8C0D89CC:
	#data 0x3FD55555
loc_8C0D89D0:
	#data 0x40092492
loc_8C0D89D4:
	#data bank03.loc_8c034C38
loc_8C0D89D8:
	#data bank15.loc_8c15D470

;==============================================
loc_8C0D89DC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	bsr loc_8c0d8dc4
	mov r14,r4
	mov.l @r15,r2
	mov 0x24,r0
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d8a0a
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xD8,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0D8A0A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8A12:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0d8dc4
	mov r4,r14
	mov.l @(0xD0,PC),r3
	mov 0x24,r0
	mov 0x08,r2
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d8a38
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xAA,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0D8A38:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8A3E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D8AEC,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r5,r13
	mov r13,r5
	bsr loc_8C0D8DC4
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0D8AE2,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	add 0x15,r0 ; r0 set to 0x141
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8C0D8A6e
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	bra loc_8C0D8A7c
	mov.b r0,@(0x04,r14)

loc_8c0d8a6e:
	mov.w @(loc_8C0D8AE4,pc),r0
	mov.b @(r0,r13),r2
	cmp/pz r2
	bt loc_8c0d8a7c
	mov.w @(loc_8c0d8ae2,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8C0D8A7C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8A84:
	mov.w @(0x5C,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0d8aaa
	mov r4,r13
	mov.w @(0x4C,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0d8aaa
	mov.w @(0x44,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0d8ab6

loc_8C0D8AAA:
	mov.b @(0x4,r13),r0
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov.w @(0x2E,PC),r0
	bra loc_8c0d8ac6
	mov 0x00,r3

loc_8C0D8AB6:
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r13,r4
	mov r14,r5
	bsr loc_8c0d8dc4
	mov r13,r4
	mov 0x24,r0
	mov.b @(r0,r14),r3

loc_8C0D8AC6:
	mov.b r3,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8AD0:
	mov r4,r3
	mov.l @(loc_8C0D8AF0,pc),r1 ; r1 set to 0x8C15D554
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d8ae2:
	#data 0x012c
loc_8c0d8ae4:
	#data 0x0141
loc_8c0d8ae6:
	#data 0x01d0
loc_8c0d8ae8:
	#data 0x01e9
	#align4

loc_8C0D8AEC:
	#data bank03.loc_8c034D8c
loc_8C0D8AF0:
	#data bank15.loc_8c15D554

;==============================================
loc_8C0D8AF4:
	mov.b @(0x5,r4),r0
	mov 0x0F,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)

loc_8C0D8B04:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	bsr loc_8c0d8e0c
	mov r14,r4
	mov.l @(0xE4,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0xD8,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0d8b28
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0D8B28:
	mov.w @(0xCA,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c0d8b3e
	bra loc_8c0d8b48
	and 0x03,r0

loc_8C0D8B3E:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8C0D8B48:
	tst r0,r0
	bf loc_8c0d8b52
	mov.w @(0xA6,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8C0D8B52:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8B5A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0D8BF8,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r5,r13
	mov r13,r5
	bsr loc_8C0D8DC4
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0D8BF4,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8C0D8B84
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	bra loc_8C0D8B98
	mov.b r0,@(0x04,r14)

loc_8c0d8b84:
	mov.w @(loc_8c0d8bf6,pc),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0d8b98
	mov.w @(loc_8c0d8bf6,pc),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)

loc_8C0D8B98:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8BA0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0D8DC4
	mov r5,r13
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0D8BF6,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0D8BF8,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0D8BCc
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C0D8BDa
	mov.b r0,@(0x04,r14)

loc_8c0d8bcc:
	mov 0x22,r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0d8bda
	mov.w @(loc_8c0d8bf6,pc),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)

loc_8C0D8BDA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8BE2:
mov r4,r3
	mov.l @(loc_8C0D8BFC,pc),r1 ; r1 set to 0x8C15D55c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D8BF4:
	#data 0x0141
loc_8C0D8BF6:
	#data 0x012c
	#align4

loc_8C0D8BF8:
	#data bank03.loc_8c034D8c
loc_8C0D8BFC:
	#data bank15.loc_8c15D55c

;==============================================
loc_8C0D8C00:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x08,r3 ; r3 set to 0x08
	mov 0x30,r4 ; r4 set to 0x30
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0D8D30,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov 0x10,r4 ; r4 set to 0x10
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8C0D8DC4
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D8C3A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D8D38,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0D8C72
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0D8D32,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	mov.l @r15,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	mov.l @(r0,r3),r2
	tst r2,r2
	bf loc_8C0D8C66
	mova @(loc_8C0D8D3C,pc),r0  ; r0 set to 0x8C0D8D3C, r0 set to 0x8C0D8D3c
	bra loc_8C0D8C6a
	fmov.s @r0,fr4

loc_8c0d8c66:
	mova @(loc_8C0D8D40,pc),r0
	fmov.s @r0,fr4

loc_8c0d8c6a:
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)

loc_8C0D8C72:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8C7A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xC0,PC),r3
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
	tst r0,r0
	bf loc_8c0d8cac
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0D8CAC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8CB2:
	mov.l r14,@-r15
	mov r5,r2
	sts.l pr,@-r15
	mov.l @(loc_8C0D8D48,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	mov r5,r14
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0D8D34,pc),r0 ; r0 set to 0x130
	mov.w @(loc_8C0D8D34,pc),r1 ; r1 set to 0x130
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	add r4,r1 ; r1 ??? bc r4 is ???
	xor 0x01,r0
	mov.w r0,@r1
	exts.w r0,r0
	tst r0,r0
	bt loc_8C0D8CE6
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r4),fr2
	bra loc_8C0D8CF2
	fadd fr3,fr2

loc_8C0D8CE6:
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fsub fr3,fr2

loc_8C0D8CF2:
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	fmov.s fr2,@(r0,r4)
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0D8D36,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0D8D18
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142
	bra loc_8C0D8D2a
	mov.b r0,@(0x04,r4)

loc_8C0D8D18:
	lds.l @r15+,pr
	mov.b @(r0,r14),r0
	mov 0x0F,r7 ; r7 set to 0x0f
	mov.l @(loc_8C0D8D4C,pc),r3 ; r3 set to 0x8C034CD6
	mov 0x1B,r5 ; r5 set to 0x1b
	and r0,r7 ; r7 ??? bc r0 is ???
	mov 0x2A,r6 ; r6 set to 0x2a
	jmp @r3
	mov.l @r15+,r14

loc_8C0D8D2A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8D30:
	#data 0x013c
loc_8C0D8D32:
	#data 0x00Cc
loc_8C0D8D34:
	#data 0x0130
loc_8C0D8D36:
	#data 0x0141
	#align4

loc_8C0D8D38:
	#data bank03.loc_8c034D8c
loc_8C0D8D3C:
	#data 0xC0555555
loc_8c0d8d40:
	#data 0x40555555
loc_8C0D8D44:
	#data bank03.loc_8c03340c
loc_8C0D8D48:
	#data bank12.loc_8c1294C8
loc_8C0D8D4C:
	#data bank03.loc_8c034CD6

;==============================================
loc_8C0D8D50:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0D8E52,pc),r0 ; r0 set to 0x12d
	mov r13,r5
	sts.l pr,@-r15
	mov.l @(0x18,r13),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x12e
	mov.l @(0x18,r13),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r14)
	bsr loc_8C0D8DC4
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0D8E58,pc),r3 ; r3 set to 0x8C034D8c
	mov.b @(r0,r13),r2
	mov r14,r4
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0D8D82:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0D8E52,pc),r0 ; r0 set to 0x12d
	mov r13,r5
	sts.l pr,@-r15
	mov.l @(0x18,r13),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x12e
	mov.l @(0x18,r13),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r14)
	bsr loc_8C0D8DC4
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8DB0:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D8E54,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D8DBE:
	mov.l @(loc_8C0D8E5C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0D8DC4:
	sts.l pr,@-r15
	mov r5,r2
	mov.l @(loc_8C0D8E60,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0D8E56,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r2
	tst r2,r2
	bf/s loc_8C0D8DEc
	mov.w r2,@(r0,r4)
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r4),fr2
	bra loc_8C0D8DF8
	fadd fr3,fr2

loc_8C0D8DEC:
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fsub fr3,fr2

loc_8C0D8DF8:
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	fmov.s fr2,@(r0,r4)
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	lds.l @r15+,pr
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0D8E0C:
	sts.l pr,@-r15
	mov r5,r2
	mov.l @(0x4C,PC),r3
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x36,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bf loc_8c0d8e32
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	bra loc_8c0d8e3e
	fadd fr3,fr2

loc_8C0D8E32:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fsub fr3,fr2

loc_8C0D8E3E:
	mov 0x60,r1
	fmov fr2,@(r0,r4)
	add r4,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	lds.l @r15+,pr
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;----------------------------------------------
loc_8C0D8E52:
	#data 0x012d
loc_8C0D8E54:
	#data 0x012c
loc_8C0D8E56:
	#data 0x0130
	#align4

loc_8C0D8E58:
	#data bank03.loc_8c034D8c
loc_8C0D8E5C:
	#data bank04.loc_8c0450C0
loc_8C0D8E60:
	#data bank12.loc_8c1294C8

;==============================================
;unused
loc_8C0D8E64:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x154,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d8e8a
	mov r0,r4
	mov.l @(0x144,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0d8e8a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D8E92:
	mov r4,r3
	mov.l @(loc_8C0D8FC8,pc),r1 ; r1 set to 0x8C15D568
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D8EA4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D8FB6,pc),r3 ; r3 set to 0x1C01
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(loc_8C0D8FBA,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0D8FBA,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0D8FB8,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0D8FCC,pc),r3 ; r3 set to 0x8C129560
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r4
	add r4,r2 ; r2 ??? bc r4 is ???
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0D8FB8,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0D8FBC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0D8FD0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C0D8F24
	mov 0x1B,r5 ; r5 set to 0x1b
	bra loc_8C0D8F26
	mov 0x01,r6

loc_8C0D8F24:
	mov 0x02,r6 ; r6 set to 0x02

loc_8C0D8F26:
	mov.l @(loc_8C0D8FD4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0D8F32:
	mov.l r14,@-r15
	mov 0x02,r5 ; r5 set to 0x02, r5 set to 0x02, r5 set to 0x02
	mov.l @(0x18,r4),r14
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	cmp/gt r5,r0
	bf loc_8C0D8F50
	mov r5,r0 ; r0 set to 0x02, r0 set to 0x02, r0 set to 0x02
	nop
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00, r3 set to 0x00
	mov.w @(loc_8C0D8FB8,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
	mov.b r3,@(r0,r4)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D8F50:
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0D8F6c
	mova @(loc_8C0D8FD8,pc),r0  ; r0 set to 0x8C0D8FD8
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	bra loc_8C0D8F72
	fmov.s fr2,@(r0,r4)

loc_8C0D8F6C:
	mov r14,r5
	bra loc_8C0D8F8a
	mov.l @r15+,r14

loc_8C0D8F72:
	rts
	mov.l @r15+,r14

loc_8C0D8F76:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D8FB8,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

loc_8C0D8F84:
	mov.l @(loc_8C0D8FDC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0D8F8A:
	mov.l @(0x18,r4),r5
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x14,r5),r6
	fmov.s @(r0,r5),fr4
	fmov.s @(r0,r6),fr3
	mova @(loc_8C0D8FE0,pc),r0  ; r0 set to 0x8C0D8FE0
	fmov.s @r0,fr2
	mova @(loc_8C0D8FE4,pc),r0  ; r0 set to 0x8C0D8FE4
	fsub fr4,fr3
	fmov.s @r0,fr1
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr2,fr3
	extu.b r3,r3
	lds r3,fpul
	fmov fr3,fr5
	fdiv fr1,fr5
	float fpul,fr0
	fmac fr0,fr5,fr4
	rts
	fmov.s fr4,@(r0,r4)

;----------------------------------------------
loc_8C0D8FB6:
	#data 0x1C01
loc_8C0D8FB8:
	#data 0x012c
loc_8C0D8FBA:
	#data 0x00Dc
loc_8C0D8FBC:
	#data 0x01A3
	#align4

loc_8C0D8FC0:
	#data bank04.loc_8c044F12
loc_8C0D8FC4:
	#data loc_8c0d8E92
loc_8C0D8FC8:
	#data bank15.loc_8c15D568
loc_8C0D8FCC:
	#data bank12.loc_8c129560
loc_8C0D8FD0:
	#data bank12.loc_8c1294C8
loc_8C0D8FD4:
	#data bank03.loc_8c034C38
loc_8C0D8FD8:
	#data 0x43982492
loc_8C0D8FDC:
	#data bank04.loc_8c0450C0
loc_8C0D8FE0:
	#data 0xC2092492
loc_8C0D8FE4:
	#data 0x41000000

;==============================================
loc_8C0D8FE8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x114,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d9006
	mov r0,r4
	mov.l @(0x108,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8C0D9006:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0D900E:
	mov r4,r3
	mov.l @(loc_8C0D910C,pc),r1 ; r1 set to 0x8C15D738
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D9020:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xCE,PC),r3
	mov.l r13,@-r15
	mov.w @(0xCC,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.w @(0xBC,PC),r5
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	add r4,r5
	mov.w @(0xB6,PC),r2
	mov.w @(0xB6,PC),r0
	mov.l @(0xCC,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0xB0,PC),r0
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
	mov 0x00,r3
	mov.b r2,@(r0,r14)
	mov 0xFF,r2
	mov.w @(0x6C,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov.w @(0x68,PC),r0
	mov.b r13,@r5
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0d90b0
	mov r13,r0
	nop
	mov.l @(0x74,PC),r3
	jsr @r3
	mov.b r0,@(0xA,r5)
	tst r0,r0
	bt loc_8c0d90b0
	mov.w @(0x50,PC),r0
	mov.b r13,@(r0,r14)

loc_8C0D90B0:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D90B8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D9102,pc),r0 ; r0 set to 0x420
	sts.l pr,@-r15
	mov.l @(0x18,r14),r5
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8C0D90Dc
	bsr loc_8C0D9268
	mov r14,r4
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0D90FC,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D90DC:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0D911C,pc),r1 ; r1 set to 0x8C15D748
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d90f4:
	#data 0x02a4
loc_8c0d90f6:
	#data 0x1c02
loc_8c0d90f8:
	#data 0x00dc
loc_8c0d90fa:
	#data 0x00c0
loc_8c0d90fc:
	#data 0x012c
loc_8c0d90fe:
	#data 0x01a3
loc_8c0d9100:
	#data 0x00d4
loc_8c0d9102:
	#data 0x0420
	#align4

loc_8C0D9104:
	#data bank04.loc_8c044F12
loc_8C0D9108:
	#data loc_8c0d900e
loc_8C0D910C:
	#data bank15.loc_8c15D738
loc_8C0D9110:
	#data bank12.loc_8c129560
loc_8C0D9114:
	#data bank12.loc_8c1294C8
loc_8C0D9118:
	#data loc_8c0d93D4
loc_8C0D911C:
	#data bank15.loc_8c15D748

;==============================================
loc_8C0D9120:
	mov.w @(loc_8C0D924C,pc),r0 ; r0 set to 0x364
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0D924A,pc),r4 ; r4 set to 0x2A4
	tst r3,r3
	bt/s loc_8C0D9168
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_8C0D924E,pc),r0 ; r0 set to 0x365
	mov 0x40,r2 ; r2 set to 0x40
	mov.b @(r0,r14),r3
	cmp/gt r2,r3
	bt loc_8C0D9168
	mov.b @(0x05,r13),r0
	mov r14,r5
	mov.l @(loc_8C0D9254,pc),r6 ; r6 set to 0x8C15D578
	add 0x01,r0 ; r0 set to 0x366
	mov.b r0,@(0x05,r13)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x01,r4)
	bsr loc_8C0D930a
	mov r13,r4
	mov.l @(loc_8C0D9258,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x06,r6 ; r6 set to 0x06
	jsr @r2
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5 ; r5 ??? bc r14 is ???
	mov.l @r15+,r13
	bra loc_8C0D9170
	mov.l @r15+,r14

loc_8C0D9168:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9170:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0D924C,pc),r0 ; r0 set to 0x364
	mov r5,r14
	mov.w @(loc_8C0D924A,pc),r3 ; r3 set to 0x2A4
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.b @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0D9198
	mov r4,r13
	mov r13,r4
	mov r14,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0D9268
	mov.l @r15+,r14

loc_8C0D9198:
	mov.w @(loc_8C0D924E,pc),r0 ; r0 set to 0x365
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0D91Ae
	mov r13,r4
	mov r14,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0D921c
	mov.l @r15+,r14

loc_8C0D91AE:
	mov.b @(0x05,r13),r0
	mov r14,r5
	mov.l @(loc_8C0D925C,pc),r6 ; r6 set to 0x8C15D5E8
	add 0x01,r0
	mov.b r0,@(0x05,r13)
	bsr loc_8C0D930a
	mov r13,r4
	mov.l @(loc_8C0D9258,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x07,r6 ; r6 set to 0x07
	jsr @r2
	mov r13,r4
	mov.l @r15,r3
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x02,r3)
	mov 0x78,r3 ; r3 set to 0x78
	mov r3,r0 ; r0 set to 0x78
	nop
	add 0x5A,r0 ; r0 set to 0xD2
	mov.w r3,@(r0,r13)
	mov 0x27,r5 ; r5 set to 0x27
	mov.l @(loc_8C0D9260,pc),r3 ; r3 set to 0x8C042008
	jsr @r3
	mov r14,r4
	mov r13,r4
	mov r14,r5 ; r5 ??? bc r14 is ???
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0D91Ec
	mov.l @r15+,r14

loc_8C0D91EC:
	mov.w @(loc_8C0D924C,pc),r0 ; r0 set to 0x364
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0D920a
	mov r4,r13
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8C0D9268
	mov.l @r15+,r14

loc_8C0D920A:
	mov r14,r5
	bsr loc_8C0D92Da
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8C0D921c
	mov.l @r15+,r14

loc_8C0D921C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0D9250,pc),r0 ; r0 set to 0x12c
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov r13,r5
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	bsr loc_8C0D92A0
	mov r14,r4
	mov r13,r5
	bsr loc_8C0D937a
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0D9264,pc),r3 ; r3 set to 0x8C034D8c
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D924A:
	#data 0x02A4
loc_8C0D924C:
	#data 0x0364
loc_8C0D924E:
	#data 0x0365
loc_8C0D9250:
	#data 0x012c
	#align4

loc_8C0D9254:
	#data bank15.loc_8c15D578
loc_8C0D9258:
	#data bank03.loc_8c034C38
loc_8C0D925C:
	#data bank15.loc_8c15D5E8
loc_8C0D9260:
	#data bank04.loc_8c042008
loc_8C0D9264:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0D9268:
	mov.w @(loc_8C0D93AC,pc),r3 ; r3 set to 0x2A4
	mov r5,r6
	mov.l r5,@-r15
	mov 0x00,r5 ; r5 set to 0x00
	add r3,r6
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0D93AE,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_8C0D93B8,pc),r2 ; r2 set to 0x8C035162
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r0,@(0x01,r6)
	mov.l @r15,r4
	jmp @r2
	add 0x04,r15

loc_8C0D928C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0D93AE,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0D929A:
	mov.l @(loc_8C0D93BC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;----------------------------------------------
loc_8C0D92A0:
	mov.w @(loc_8C0D93B0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8C0D92Ae
	mova @(loc_8C0D93C0,pc),r0  ; r0 set to 0x8C0D93C0
	bra loc_8C0D92B2
	fmov.s @r0,fr3

loc_8C0D92AE:
	mova @(loc_8C0D93C4,pc),r0  ; r0 init to 0x8C0D93C4
	fmov.s @r0,fr3

loc_8C0D92B2:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0D93B2,pc),r0 ; r0 set to 0x1F9, r0 set to 0x1F9
	mov.b @(r0,r5),r3
	mov.l @(loc_8C0D93C8,pc),r0 ; r0 set to 0x8C15D754, r0 set to 0x8C15D754
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0D93CC,pc),r0  ; r0 set to 0x8C0D93CC, r0 set to 0x8C0D93Cc
	lds r3,fpul
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	float fpul,fr3
	fmac fr0,fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8c0d92da:
	mov.w @(loc_8C0D93B4,pc),r0
	mov.w @(loc_8c0d93ac,pc),r3
	mov.w @(r0,r4),r2
	add 0xFF,r2
	mov.w r2,@(r0,r4)
	extu.w r2,r2
	tst r2,r2
	bf/s loc_8c0d9306
	add r3,r5
	mov 0x78,r0
	mov r0,r1
	add 0x5A,r1
	add r4,r1
	mov.w r0,@r1
	mov 0x32,r2
	mov.b @(0x02,r5),r0
	extu.b r0,r0
	cmp/ge r2,r0
	bt loc_8c0d9306
	mov.b @(0x02,r5),r0
	add 0x01,r0
	mov.b r0,@(0x02,r5)

loc_8c0d9306:
	rts
	nop

loc_8C0D930A:
	mov.l r14,@-r15
	mov r6,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov 0x01,r11 ; r11 set to 0x01
	mov.l r10,@-r15
	mov 0x00,r10 ; r10 set to 0x00
	mov.l r9,@-r15
	mov.w @(loc_8C0D93B6,pc),r13 ; r13 set to 0xCc
	sts.l pr,@-r15
	mov.l @(loc_8C0D93D0,pc),r9 ; r9 set to 0x8C03544c
	add r4,r13 ; r13 ??? bc r4 is ???

loc_8C0D9326:
	mov 0x25,r6 ; r6 set to 0x25, r6 set to 0x25
	mov.b @r14,r0
	add r12,r6 ; r6 ??? bc r12 is ???, r6 ??? bc r12 is ???
	mov 0x57,r3 ; r3 set to 0x57, r3 set to 0x57
	mov.b r0,@(0x04,r13)
	mov.b @r6,r6
	mov.b @(0x02,r14),r0
	extu.b r6,r6
	mulu.w r3,r6
	extu.b r0,r0
	sts macl,r6
	add r0,r6
	mov.b @(0x03,r14),r0
	extu.b r0,r7
	mov.b @(0x01,r14),r0
	extu.b r0,r5
	jsr @r9
	mov r12,r4
	mov.l @(0x04,r14),r0
	cmp/eq 0x01,r0
	bf loc_8C0D9354
	bra loc_8C0D9358
	mov r10,r0

loc_8C0D9354:
	mov r11,r0
	nop

loc_8C0D9358:
	mov.b r0,@(0x05,r13)
	mov.l @(0x04,r14),r3
	mov.b @(0x04,r13),r0
	shll2 r3
	shll r3
	tst r0,r0
	add r3,r14
	bt loc_8C0D9326
	mov.l r14,@r13
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d937a:
	mov.l r14,@-r15
	mov.w @(loc_8c0d93b6,pc),r14
	mov.l r13,@-r15
	add r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x04,r14)
	extu.b r0,r0
	tst r0,r0
	bf/s loc_8c0d93a0
	mov 0x01,r13
	mov.b @(0x05,r14),r0
	tst r0,r0
	bt/s loc_8c0d939c
	mov.l @r14,r6
	mov 0x00,r13

loc_8c0d939c:
	bsr loc_8c0d930a
	nop

loc_8c0d93a0:
	mov r13,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0d93ac:
	#data 0x02A4
loc_8c0d93ae:
	#data 0x012C
loc_8c0d93b0:
	#data 0x0130
loc_8c0d93b2:
	#data 0x01F9
loc_8c0d93b4:
	#data 0x00D2
loc_8c0d93b6:
	#data 0x00CC
	#align4

loc_8c0d93b8:
	#data bank03.loc_8C035162
loc_8c0d93bc:
	#data bank04.loc_8C0450C0
loc_8c0d93c0:
	#data 0xC13AAAAA
loc_8c0d93c4:
	#data 0x413AAAAA
loc_8c0d93c8:
	#data bank15.loc_8C15D754
loc_8c0d93cc:
	#data 0x40092492
loc_8c0d93d0:
	#data bank03.loc_8C03544C

;==============================================
loc_8c0d93d4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x118,PC),r3
	mov 0x04,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0d93f2
	mov r0,r4
	mov.l @(0x10C,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0d93f2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

loc_8C0D93FA:
	mov r4,r3
	mov.l @(loc_8C0D94FC,pc),r1 ; r1 set to 0x8C15D78c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D940C:
	mov.l @(loc_8C0D9500,pc),r2 ; r2 set to 0x8C26823c
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(loc_8C0D94E2,pc),r1 ; r1 set to 0x80
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0x14,r3),r0
	cmp/eq r1,r0
	bf/s loc_8C0D9430
	mov 0x00,r12 ; r12 set to 0x00
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov r12,r0 ; r0 set to 0x00
	nop
	bra loc_8C0D94D8
	mov.b r0,@(0x05,r14)

loc_8c0d9430:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0D94E4,pc),r3
	add 0x01,r0
	mov.w @(loc_8C0D94E6,pc),r1
	mov.b r0,@(0x04,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	add r14,r1
	mov.w @(loc_8C0D94E6,pc),r2
	mov.w @(loc_8C0D94E8,pc),r0
	mov.l @(0x18,r14),r13
	mov.l @(loc_8c0d9504,pc),r3
	jsr @r3
	add r13,r2
	mov.w @(loc_8C0D94EA,pc),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0D94EC,pc),r0
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
	mov.l @(loc_8c0d9508,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x18,r4
	mov 0x0C,r3
	mov.b r2,@(r0,r14)
	mov 0x19,r5
	mov.w @(loc_8C0D94EE,pc),r0
	mov 0x00,r6
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov 0x20,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c0d950c,pc),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0d9510,pc),r2
	jsr @r2
	mov r14,r4
	mov 0x04,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0D94F0,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt/s loc_8c0d94ce
	mov r14,r4
	mov 0x05,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0D94EA,pc),r0
	mov.b r12,@r14
	mov.b r12,@(r0,r14)

loc_8c0d94ce:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0d9514
	mov.l @r15+,r14

loc_8C0D94D8:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
	
;----------------------------------------------
loc_8C0D94E2:
	#data 0x0080
loc_8c0d94e4:
	#data 0x1C03
loc_8c0d94e6:
	#data 0x00DC
loc_8c0d94e8:
	#data 0x00C0
loc_8c0d94ea:
	#data 0x012C
loc_8c0d94ec:
	#data 0x01A3
loc_8c0d94ee:
	#data 0x013C
loc_8c0d94f0:
	#data 0x0411
	#align4

loc_8C0D94F4:
	#data bank04.loc_8c044F12
loc_8C0D94F8:
	#data loc_8c0d93Fa
loc_8C0D94FC:
	#data bank15.loc_8c15D78c
loc_8C0D9500:
	#data 0x8C26823c
loc_8C0D9504:
	#data bank12.loc_8c129560
loc_8C0D9508:
	#data bank12.loc_8c1294C8
loc_8C0D950C:
	#data bank03.loc_8c034e8c
loc_8C0D9510:
	#data bank10.loc_8c104434

;==============================================
loc_8C0D9514:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x01,r6
	mov.l @(0x12C,PC),r3
	mov r6,r1
	mov.b @(0x2,r5),r0
	mov.b @r3,r4
	extu.b r0,r0
	xor r6,r0
	shad r0,r1
	extu.b r4,r2
	tst r1,r2
	bf loc_8c0d955a
	extu.b r4,r4
	tst r4,r4
	bt loc_8c0d954a
	mov.w @(0x108,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0d954a
	mov.w @(0x100,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8c0d955a

loc_8C0D954A:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0x100,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0D955A:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D955E:
	mov r4,r3
	mov.l @(loc_8C0D9654,pc),r1 ; r1 set to 0x8C15D7E0
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D9570:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0D9646,pc),r0 ; r0 set to 0x130
	mov.b r3,@r14
	mov.w @(r0,r13),r2
	tst r2,r2
	bf loc_8C0D9592
	mova @(loc_8C0D9658,pc),r0  ; r0 set to 0x8C0D9658
	bra loc_8C0D9596
	fmov.s @r0,fr3

loc_8C0D9592:
	mova @(loc_8C0D965C,pc),r0  ; r0 init to 0x8C0D965c
	fmov.s @r0,fr3

loc_8C0D9596:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
	fmov.s @(r0,r13),fr2
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	mov.l @(loc_8C0D9668,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x0C,r6 ; r6 set to 0x0C, r6 set to 0x0c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0D9660,pc),r0  ; r0 set to 0x8C0D9660, r0 set to 0x8C0D9660
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov.w @(loc_8C0D9648,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r13),fr2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0D9664,pc),r0  ; r0 set to 0x8C0D9664, r0 set to 0x8C0D9664
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D95D6:
mov.l r14,@-r15
mov r4,r14
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
	mov.l r13,@-r15
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	mov r5,r13
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	sts.l pr,@-r15
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
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0D9648,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r13),fr2
	fcmp/gt fr2,fr3
	bt loc_8C0D963a
	mov.b @(0x07,r14),r0
	mov r13,r5
	mov.l @(loc_8C0D966C,pc),r6 ; r6 set to 0x8C15D75C, r6 set to 0x8C15D75C, r6 set to 0x8C15D75c
	add 0x01,r0 ; r0 set to 0x41D, r0 set to 0x41D, r0 set to 0x41d
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0D9648,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0D9646,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov.l @(loc_8C0D9670,pc),r3 ; r3 set to 0x8C0DA7B4, r3 set to 0x8C0DA7B4, r3 set to 0x8C0DA7B4
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0D9674,pc),r2 ; r2 set to 0x8C0DA824, r2 set to 0x8C0DA824, r2 set to 0x8C0DA824
	mov r13,r5
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0D9678,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0D963A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
;----------------------------------------------
loc_8C0D9642:
	#data 0x01D0
loc_8C0D9644:
	#data 0x01E9
loc_8C0D9646:
	#data 0x0130
loc_8C0D9648:
	#data 0x041c
	#align4

loc_8C0D964c:
	#data 0x8C2895F6
loc_8C0D9650:
	#data bank15.loc_8c15D79c
loc_8C0D9654:
	#data bank15.loc_8c15D7E0
loc_8C0D9658:
	#data 0x42A00000
loc_8C0D965C:
	#data 0xC2A00000
loc_8C0D9660:
	#data 0x44092492
loc_8C0D9664:
	#data 0xBF4DB6Db
loc_8C0D9668:
	#data bank03.loc_8c034e8c
loc_8C0D966C:
	#data bank15.loc_8c15D75c
loc_8C0D9670:
	#data loc_8c0dA7B4
loc_8C0D9674:
	#data loc_8c0dA824
loc_8C0D9678:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0D967C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x138,PC),r3
	jsr @r3
	mov.l r4,@r15
	tst r0,r0
	bf loc_8c0d9692
	mov.l @r15,r3
	mov.b @(0x7,r3),r0
	add 0x01,r0
	mov.b r0,@(0x7,r3)

loc_8C0D9692:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0D969A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x120,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d96b2
	mov 0x02,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8C0D96B2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D96B8:
	mov.b @r5,r3
	tst r3,r3
	bt loc_8C0D9700
	mov.w @(loc_8C0D97B2,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8C0D9700
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x06,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r4)
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0D97B4,pc),r0 ; r0 set to 0x12c
	mov.b r6,@r4
	mov.b r6,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8C0D96E4
	mova @(loc_8C0D97C4,pc),r0  ; r0 set to 0x8C0D97C4
	bra loc_8C0D96E8
	fmov.s @r0,fr3

loc_8C0D96E4:
	mova @(loc_8C0D97C8,pc),r0  ; r0 init to 0x8C0D97C8
	fmov.s @r0,fr3

loc_8C0D96E8:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(loc_8C0D97CC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @(r0,r5),fr2
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0D97B6,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	mov 0x19,r5

loc_8C0D9700:
	rts
	nop

;----------------------------------------------
loc_8C0D9704:
	mov r4,r3
	mov.l @(loc_8C0D97D0,pc),r1 ; r1 set to 0x8C15D7F0
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D9716:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l @(0xA8,PC),r3
	mov 0x0F,r6
	mov.l r5,@r15
	mov 0x19,r5
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D9750:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d9768
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)

loc_8C0D9768:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D976E:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	mov.l @(0x60,PC),r3
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
	tst r0,r0
	bf loc_8c0d97ac
	mov 0x05,r0
	mov 0x00,r4
	mov.b r0,@(0x6,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@r14
	mov.w @(0x8,PC),r0
	mov.b r4,@(r0,r14)

loc_8C0D97AC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D97B2:
	#data 0x0411
loc_8C0D97B4:
	#data 0x012c
loc_8C0D97B6:
	#data 0x041c
loc_8C0D97B8:
	#data 0x0141
	#align4

loc_8C0D97BC:
	#data loc_8c0dA824
loc_8C0D97C0:
	#data bank03.loc_8c034dee
loc_8C0D97C4:
	#data 0x42A00000
loc_8C0D97C8:
	#data 0xC2A00000
loc_8C0D97CC:
	#data bank03.loc_8c034e8c
loc_8C0D97D0:
	#data bank15.loc_8c15D7F0
loc_8C0D97d4:
	#data 0x41892492
loc_8C0D97D8:
	#data bank03.loc_8c0334A8

;==============================================
loc_8C0D97DC:
	mov r4,r3
	mov.l @(loc_8C0D993C,pc),r1 ; r1 set to 0x8C15D7Fc
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0D97EE:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x7,r14),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf.s loc_8c0d9820
	mov r5,r4
	mov 0x01,r4

loc_8C0D9820:
	mov.w @(0x110,PC),r0
	extu.b r4,r4
	mov.w @(r0,r14),r2
	cmp/eq r2,r4
	bt loc_8c0d9850
	mov.w @(0x108,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	mov.w @(0x104,PC),r2
	mov.b r0,@r1
	mov.b @(0x7,r14),r0
	add r14,r2
	mov.b r0,@r2
	mov 0x0B,r0
	mov.b r0,@(0x6,r14)
	mov r5,r0
	nop
	mov r13,r5
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0d98a2
	mov.l @r15+,r14

loc_8C0D9850:
	mov.w @(0xE2,PC),r3
	mov.b @(0x6,r14),r0
	add r14,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8c0d9866
	mov.l @(0xE0,PC),r3
	mov 0x19,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4

loc_8C0D9866:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0d9872
	mov.l @r15+,r14

loc_8C0D9872:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D9944,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0D989a
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0DA594
	mov.l @r15+,r14

loc_8C0D989A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D98A2:
	mov r4,r3
	mov.l @(loc_8C0D9948,pc),r1 ; r1 set to 0x8C15D804
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D98B4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov 0x01,r3
	mov.l @(0x7C,PC),r1
	mov.l r5,@r15
	mov 0x19,r5
	mov.b @(0x7,r14),r0
	mov 0x06,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x52,PC),r0
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	jsr @r1
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D98F4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0d991c
	mov.w @(0x2E,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	mov.w @(0x2A,PC),r2
	mov.b r0,@r1
	mov.b @(0x7,r14),r0
	add r14,r2
	mov.b r0,@r2
	mov 0x02,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8C0D991C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9922:
	mov r4,r3
	mov.l @(loc_8C0D994C,pc),r1 ; r1 set to 0x8C15D80c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0d9934:
	#data 0x0130
loc_8c0d9936:
	#data 0x00d2
loc_8c0d9938:
	#data 0x00d3
	#align4

loc_8C0D993C:
	#data bank15.loc_8c15D7Fc
loc_8C0D9940:
	#data bank03.loc_8c034e8c
loc_8C0D9944:
	#data bank03.loc_8c034dee
loc_8C0D9948:
	#data bank15.loc_8c15D804
loc_8C0D994C:
	#data bank15.loc_8c15D80c

;==============================================
loc_8C0D9950:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r3),fr3
	fcmp/gt fr2,fr3
	bf loc_8C0D9986
	mov.w @(loc_8C0D9A8C,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C0D998c
	mov.w r2,@(r0,r14)

loc_8c0d9986:
	mov.w @(loc_8c0d9a8c,pc),r0
	mov 0x00,r1
	mov.w r1,@(r0,r14)

loc_8c0d998c:
	mov.w @(loc_8C0D9A8E,pc),r3
	mov.b @(0x06,r14),r0
	add r14,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8c0d99a2
	mov.l @(loc_8c0d9a90,pc),r3
	mov 0x19,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4

loc_8c0d99a2:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D99AC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D9A94,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0D99D4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0DA594
	mov.l @r15+,r14

loc_8C0D99D4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D99DC:
	mov r4,r3
	mov.l @(loc_8C0D9A98,pc),r1 ; r1 set to 0x8C15D814
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D99EE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r3),fr3
	fcmp/gt fr2,fr3
	bf loc_8C0D9A24
	mov.w @(loc_8C0D9A8C,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C0D9A2a
	mov.w r2,@(r0,r14)

loc_8c0d9a24:
	mov.w @(loc_8c0d9a8c,pc),r0
	mov 0x00,r1
	mov.w r1,@(r0,r14)

loc_8c0d9a2a:
	mov.w @(loc_8C0D9A8E,pc),r3
	mov.b @(0x06,r14),r0
	add r14,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8c0d9a40
	mov.l @(loc_8c0d9a90,pc),r3
	mov 0x19,r5
	mov 0x08,r6
	jsr @r3
	mov r14,r4

loc_8c0d9a40:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D9A4A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D9A94,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0D9A72
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0DA594
	mov.l @r15+,r14

loc_8C0D9A72:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9A7A:
	mov r4,r3
	mov.l @(loc_8C0D9A9C,pc),r1 ; r1 set to 0x8C15D81c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D9A8C:
	#data 0x0130
loc_8c0d9a8e:
	#data 0x00D2
	#align4

loc_8C0D9A90:
	#data bank03.loc_8c034e8c
loc_8C0D9A94:
	#data bank03.loc_8c034dee
loc_8C0D9A98:
	#data bank15.loc_8c15D814
loc_8C0D9A9C:
	#data bank15.loc_8c15D81c

;==============================================
loc_8C0D9AA0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_8C0D9BE0,pc),r0 ; r0 set to 0x20c
	mov.l @r15,r3
	mov.l @(r0,r3),r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r2),fr3
	fcmp/gt fr2,fr3
	bf loc_8C0D9ADa
	mov.w @(loc_8C0D9BE2,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C0D9AE0
	mov.w r2,@(r0,r14)

loc_8c0d9ada:
	mov.w @(loc_8c0d9be2,pc),r0
	mov 0x00,r1
	mov.w r1,@(r0,r14)

loc_8c0d9ae0:
	mov.w @(loc_8C0D9BE4,pc),r3
	mov.b @(0x06,r14),r0
	add r14,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8c0d9af6
	mov.l @(loc_8c0d9be8,pc),r3
	mov 0x19,r5
	mov 0x0A,r6
	jsr @r3
	mov r14,r4

loc_8c0d9af6:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D9B00:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D9BEC,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0D9B28
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0DA594
	mov.l @r15+,r14

loc_8C0D9B28:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9B30:
	mov r4,r3
	mov.l @(loc_8C0D9BF0,pc),r1 ; r1 set to 0x8C15D824
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D9B42:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r3),fr3
	fcmp/gt fr2,fr3
	bf loc_8C0D9B78
	mov.w @(loc_8C0D9BE2,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C0D9B7e
	mov.w r2,@(r0,r14)

loc_8c0d9b78:
	mov.w @(loc_8c0d9be2,pc),r0
	mov 0x00,r1
	mov.w r1,@(r0,r14)

loc_8c0d9b7e:
	mov.w @(loc_8C0D9BE4,pc),r3
	mov.b @(0x06,r14),r0
	add r14,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8c0d9b94
	mov.l @(loc_8c0d9be8,pc),r3
	mov 0x19,r5
	mov 0x09,r6
	jsr @r3
	mov r14,r4

loc_8c0d9b94:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D9B9E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D9BEC,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0D9BC6
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0DA594
	mov.l @r15+,r14

loc_8C0D9BC6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9BCE:
	mov r4,r3
	mov.l @(loc_8C0D9BF4,pc),r1 ; r1 set to 0x8C15D82c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D9BE0:
	#data 0x020c
loc_8C0D9BE2:
	#data 0x0130
loc_8c0d9be4:
	#data 0x00D2
	#align4

loc_8C0D9BE8:
	#data bank03.loc_8c034e8c
loc_8C0D9BEC:
	#data bank03.loc_8c034dee
loc_8C0D9BF0:
	#data bank15.loc_8c15D824
loc_8C0D9BF4:
	#data bank15.loc_8c15D82c

;==============================================
loc_8C0D9BF8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x30,r5 ; r5 set to 0x30
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	bsr loc_8C0DA540
	mov r13,r4
	mov 0x34,r0 ; r0 set to 0x34
	fldi0 fr3
	fmov.s @(r0,r14),fr4
	fldi1 fr5
	fsub fr0,fr4
	fneg fr5
	fcmp/gt fr4,fr3
	bt/s loc_8C0D9C26
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0D9CFA,pc),r0 ; r0 set to 0x130
	bra loc_8C0D9C2e
	mov.w r4,@(r0,r14)

loc_8C0D9C26:
	fmul fr5,fr4
	mov.w @(loc_8C0D9CFA,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	mov.w r2,@(r0,r14)

loc_8C0D9C2E:
	mova @(loc_8C0D9D00,pc),r0  ; r0 set to 0x8C0D9D00, r0 init to 0x8C0D9D00
	fmov.s @r0,fr3
	fcmp/gt fr4,fr3
	bt loc_8C0D9C4c
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov.b r0,@(0x06,r14)
	mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
	nop
	mov r13,r5
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0D9D18
	mov.l @r15+,r14

loc_8C0D9C4C:
	mov.w @(loc_8C0D9CFA,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	mov.w @(r0,r13),r2
	cmp/eq r3,r2
	bf loc_8C0D9C5c
	mova @(loc_8C0D9D04,pc),r0  ; r0 set to 0x8C0D9D04
	bra loc_8C0D9C60
	fmov.s @r0,fr3

loc_8c0d9c5c:
	mova @(loc_8C0D9D08,pc),r0
	fmov.s @r0,fr3

loc_8c0d9c60:
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8c0d9cfa,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0d9c7a
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fmul fr5,fr3
	fmov.s fr3,@(r0,r14)

loc_8c0d9c7a:
	mov.w @(loc_8C0D9CFC,pc),r3
	mov.b @(0x06,r14),r0
	add r14,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8c0d9c90
	mov.l @(loc_8c0d9d0c,pc),r3
	mov 0x19,r5
	mov 0x04,r6
	jsr @r3
	mov r14,r4

loc_8c0d9c90:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0d9c9c
	mov.l @r15+,r14

loc_8C0D9C9C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D9D10,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
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
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x5b
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8C0D9CE0
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0DA594
	mov.l @r15+,r14

loc_8C0D9CE0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9CE8:
	mov r4,r3
	mov.l @(loc_8C0D9D14,pc),r1 ; r1 set to 0x8C15D834
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D9CFA:
	#data 0x0130
loc_8c0d9cfc:
	#data 0x00D2
	#align4

loc_8C0D9D00:
	#data 0x42BAAAAa
loc_8C0D9D04:
	#data 0xC0BAAAAa
loc_8c0d9d08:
	#data 0xC0A00000
loc_8C0D9D0C:
	#data bank03.loc_8c034e8c
loc_8C0D9D10:
	#data bank03.loc_8c034dee
loc_8C0D9D14:
	#data bank15.loc_8c15D834

;==============================================
loc_8C0D9D18:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	mov 0x30,r5 ; r5 set to 0x30
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	bsr loc_8C0DA540
	mov.l @r15,r4
	mov 0x34,r0 ; r0 set to 0x34
	fldi0 fr2
	fmov.s @(r0,r14),fr3
	fsub fr0,fr3
	fcmp/gt fr3,fr2
	bt loc_8C0D9D46
	mov.w @(loc_8C0D9E06,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	mov.w r2,@(r0,r14)
	mova @(loc_8C0D9E0C,pc),r0  ; r0 set to 0x8C0D9E0c
	bra loc_8C0D9D50
	fmov.s @r0,fr3

loc_8c0d9d46:
	mov.w @(loc_8c0d9e06,pc),r0
	mov 0x01,r2
	mov.w r2,@(r0,r14)
	mova @(loc_8C0D9E10,pc),r0
	fmov.s @r0,fr3

loc_8c0d9d50:
	mov 0x5C,r0
	mov.w @(loc_8C0D9E08,pc),r3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	add r14,r3
	fmov.s fr3,@(r0,r14)
	mov.b @r3,r3
	mov.b @(0x06,r14),r0
	cmp/eq r3,r0
	bt loc_8c0d9d70
	mov.l @(loc_8c0d9e14,pc),r3
	mov 0x19,r5
	mov 0x05,r6
	jsr @r3
	mov r14,r4

loc_8c0d9d70:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0D9D7A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0D9E18,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
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
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x5b
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8C0D9DBe
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0DA594
	mov.l @r15+,r14

loc_8C0D9DBE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9DC6:
	mov r4,r3
	mov.l @(loc_8C0D9E1C,pc),r1 ; r1 set to 0x8C15D83c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0D9DD8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fcmp/gt fr2,fr3
	bt/s loc_8C0D9E24
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_8C0D9E06,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	mov.w r2,@(r0,r14)
	mova @(loc_8C0D9E20,pc),r0  ; r0 set to 0x8C0D9E20
	bra loc_8C0D9E2c
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D9E06:
	#data 0x0130
loc_8c0d9e08:
	#data 0x00D2
	#align4

loc_8C0D9E0C:
	#data 0xC0E2AAAa
loc_8c0d9e10:
	#data 0x40E2AAAa
loc_8C0D9E14:
	#data bank03.loc_8c034e8c
loc_8C0D9E18:
	#data bank03.loc_8c034dee
loc_8C0D9E1C:
	#data bank15.loc_8c15D83c
loc_8C0D9E20:
	#data 0xC8400000

;==============================================
loc_8c0d9e24:
	mov.w @(loc_8c0d9f40,pc),r0
	mov.w r4,@(r0,r14)
	mova @(loc_8C0D9F44,pc),r0
	fmov.s @r0,fr3

loc_8c0d9e2c:
	mov 0x5C,r0
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_8c0d9f40,pc),r0
	mov.w @(r0,r13),r2
	mov.w @(r0,r14),r3
	cmp/eq r2,r3
	bf/s loc_8c0d9e50
	mov 0x05,r6
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r13)

loc_8c0d9e50:
	mov.l @(loc_8c0d9f48,pc),r3
	mov 0x19,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0D9E62:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0D9F4C,pc),r3 ; r3 set to 0x8C034DEe
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
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0D9F42,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0D9EA4
	mov 0x04,r0 ; r0 set to 0x04
	bra loc_8C0D9EDa
	mov.b r0,@(0x07,r14)

loc_8C0D9EA4:
	mov.w @(loc_8C0D9F40,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0D9EC0
	mova @(loc_8C0D9F50,pc),r0  ; r0 set to 0x8C0D9F50
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8C0D9ED0
	bra loc_8C0D9EDa
	nop

loc_8c0d9ec0:
	mova @(loc_8C0D9F54,pc),r0
	fmov.s @r0,fr3
	mov 0x34,r0
	fmov.s @(r0,r13),fr2
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c0d9eda

loc_8c0d9ed0:
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r13)

loc_8C0D9EDA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9EE2:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0D9F4C,pc),r3 ; r3 set to 0x8C034DEe
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
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0D9F42,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0D9F24
	mov 0x04,r0 ; r0 set to 0x04
	bra loc_8C0D9F8a
	mov.b r0,@(0x07,r14)

loc_8C0D9F24:
	mov.w @(loc_8C0D9F40,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0D9F5c
	mova @(loc_8C0D9F58,pc),r0  ; r0 set to 0x8C0D9F58
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s @(r0,r14),fr2
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bt loc_8C0D9F8a
	bra loc_8C0D9F6c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0D9F40:
	#data 0x0130
loc_8C0D9F42:
	#data 0x01D0
	#align4

loc_8c0d9f44:
	#data 0x48400000
loc_8C0D9F48:
	#data bank03.loc_8c034e8c
loc_8C0D9F4C:
	#data bank03.loc_8c034dee
loc_8C0D9F50:
	#data 0x42A00000
loc_8c0d9f54:
	#data 0xC2A00000
loc_8C0D9F58:
	#data 0x42855555

;==============================================
loc_8C0D9F5C:
	mova @(loc_8C0DA094,pc),r0  ; r0 init to 0x8C0DA094
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s @(r0,r14),fr2
	fadd fr4,fr3
	fcmp/gt fr2,fr3
	bt loc_8C0D9F8a

loc_8C0D9F6C:
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0DA098,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x07,r6 ; r6 set to 0x07, r6 set to 0x07
	add 0x01,r0 ; r0 set to 0x35
	mov.b r0,@(0x07,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0D9F8A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9F92:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DA08C,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0D9FBc
	mov.l @(loc_8C0DA098,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19
	mov 0x05,r6 ; r6 set to 0x05
	jsr @r2
	mov r14,r4
	mov 0x04,r0 ; r0 set to 0x04
	bra loc_8C0D9FEc
	mov.b r0,@(0x07,r14)

loc_8c0d9fbc:
	mov.w @(loc_8C0DA08E,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0d9fd2
	mov.b @(0x04,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DA090,pc),r0
	mov.b r4,@(r0,r14)
	mov.b r4,@r14

loc_8c0d9fd2:
	mov.l @(loc_8c0da09c,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0DA08E,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0d9fec
	mov.w @(loc_8c0da092,pc),r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)

loc_8C0D9FEC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0D9FF4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x9C,PC),r3
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
	bf loc_8c0da02a
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0DA02A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DA030:
	mov.w @(loc_8C0DA08C,pc),r0 ; r0 set to 0x1D0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt/s loc_8C0DA044
	mov r4,r14
	mov r14,r4
	bra loc_8C0DA594
	mov.l @r15+,r14

loc_8C0DA044:
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0DA0A4,pc),r1 ; r1 set to 0x8C15D850
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0DA054:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr3
	fmov.s @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bt/s loc_8C0DA0A8
	mov 0x0E,r6 ; r6 set to 0x0e
	mov.w @(loc_8C0DA092,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8C0DA0Ae
	mov.w r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DA08C:
	#data 0x01D0
loc_8c0da08e:
	#data 0x0141
loc_8c0da090:
	#data 0x012c
loc_8C0DA092:
	#data 0x0130
	#align4

loc_8C0DA094:
	#data 0xC2855555
loc_8C0DA098:
	#data bank03.loc_8c034e8c
loc_8C0DA09C:
	#data bank03.loc_8c034dee
loc_8C0DA0A0:
	#data bank03.loc_8c03340c
loc_8C0DA0A4:
	#data bank15.loc_8c15D850

;==============================================
loc_8C0DA0A8:
	mov.w @(loc_8C0DA1BE,pc),r0 ; r0 set to 0x130
	mov 0x01,r1 ; r1 set to 0x01
	mov.w r1,@(r0,r14)

loc_8C0DA0AE:
	mov.l @(loc_8C0DA1C8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DA0C0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0DA1CC,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C0DA1C0,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0DA0E4
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0DA1D0,pc),r3 ; r3 set to 0x8C0D8840, r3 set to 0x8C0D8840, r3 set to 0x8C0D8840
	mov 0x33,r5 ; r5 set to 0x33, r5 set to 0x33, r5 set to 0x33
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0DA0E4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DA0EA:
	mov.l @(loc_8C0DA1CC,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;==============================================
loc_8C0DA0F0:
	mov.w @(loc_8C0DA1C2,pc),r0 ; r0 set to 0x1D0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt/s loc_8C0DA104
	mov r4,r14
	mov r14,r4
	bra loc_8C0DA594
	mov.l @r15+,r14

loc_8C0DA104:
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0DA1D4,pc),r1 ; r1 set to 0x8C15D85c
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0DA114:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr3
	fmov.s @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bt/s loc_8C0DA14c
	mov 0x0E,r6 ; r6 set to 0x0e
	mov.w @(loc_8C0DA1BE,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8C0DA152
	mov.w r2,@(r0,r14)

loc_8C0DA14C:
	mov.w @(loc_8C0DA1BE,pc),r0 ; r0 set to 0x130
	mov 0x01,r1 ; r1 set to 0x01
	mov.w r1,@(r0,r14)

loc_8C0DA152:
	mov.l @(loc_8C0DA1C8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DA164:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0DA1CC,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C0DA1C0,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0DA188
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0DA1D0,pc),r3 ; r3 set to 0x8C0D8840, r3 set to 0x8C0D8840, r3 set to 0x8C0D8840
	mov 0x33,r5 ; r5 set to 0x33, r5 set to 0x33, r5 set to 0x33
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0DA188:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DA18E:
	mov.l r4,@-r15
	mov.b @(0x5,r5),r0
	mov.w @(0x2E,PC),r4
	tst r0,r0
	bf.s loc_8c0da1a4
	add r5,r4
	mov.w @(0x24,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0da1ac

loc_8C0DA1A4:
	mov 0x00,r0
	mov.b r0,@(0xB,r4)
	mov 0x01,r0
	mov.b r0,@(0xA,r4)

loc_8C0DA1AC:
	mov.l @r15,r3
	mov.l @(0x28,PC),r1
	mov.b @(0x7,r3),r0
	mov.l @r15,r4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DA1BE:
	#data 0x0130
loc_8C0DA1C0:
	#data 0x0141
loc_8C0DA1C2:
	#data 0x01D0
loc_8C0DA1C4:
	#data 0x02A4
	#align4

loc_8C0DA1C8:
	#data bank03.loc_8c034e8c
loc_8C0DA1CC:
	#data bank03.loc_8c034dee
loc_8C0DA1D0:
	#data loc_8c0d8840
loc_8C0DA1D4:
	#data bank15.loc_8c15D85c
loc_8C0DA1D8:
	#data bank15.loc_8c15D868

;==============================================
loc_8C0DA1DC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr3
	fmov.s @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bt/s loc_8C0DA214
	mov 0x00,r6 ; r6 set to 0x00
	mov.w @(loc_8C0DA302,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8C0DA21a
	mov.w r2,@(r0,r14)

loc_8C0DA214:
	mov.w @(loc_8C0DA302,pc),r0 ; r0 set to 0x130
	mov 0x01,r1 ; r1 set to 0x01
	mov.w r1,@(r0,r14)

loc_8C0DA21A:
	mov.l @(loc_8C0DA30C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DA22C:
	mov.w @(loc_8C0DA304,pc),r6 ; r6 set to 0x2A4, r6 set to 0x2A4, r6 set to 0x2A4
	add r5,r6 ; r6 ??? bc r5 is ???, r6 ??? bc r5 is ???, r6 ??? bc r5 is ???
	mov.b @(0x0B,r6),r0
	tst r0,r0
	bf loc_8C0DA240
	mov.w @(loc_8C0DA306,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	bra loc_8C0DA594
	fmov.s fr3,@(r0,r4)

loc_8C0DA240:
	mov.b @(0x0A,r6),r0
	tst r0,r0
	bt loc_8C0DA27c
	mova @(loc_8C0DA310,pc),r0  ; r0 init to 0x8C0DA310
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	mov r0,r1 ; r1 set to 0x34
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x34
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov r0,r1 ; r1 set to 0x38
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x38
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	bra loc_8C0DA28c
	fmov.s fr3,@(r0,r4)

loc_8C0DA27C:
	mov.b @(0x07,r4),r0
	mov 0x00,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0DA308,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	mov.b r5,@(r0,r4)
	mov.b r5,@r4

loc_8C0DA28C:
	rts
	nop

;----------------------------------------------
loc_8C0DA290:
	mov.w @(0x70,PC),r6
	sts.l pr,@-r15
	add r5,r6
	mov.b @(0xB,r6),r0
	tst r0,r0
	bt loc_8c0da2a2
	mov.b @(0xA,r6),r0
	tst r0,r0
	bt loc_8c0da2c4

loc_8C0DA2A2:
	mov.b @(0x7,r4),r0
	mov 0x01,r6
	mov r5,r2
	mov r4,r1
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	add 0x34,r2
	mov.w @(0x54,PC),r0
	add 0x34,r1
	mov.b r6,@r4
	mov.b r6,@(r0,r4)
	add 0x04,r0
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r4)
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8C0DA2C4:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0DA2CA:
	mov.w @(loc_8C0DA304,pc),r6 ; r6 set to 0x2A4
	add r5,r6 ; r6 ??? bc r5 is ???
	mov.b @(0x0B,r6),r0
	tst r0,r0
	bf loc_8C0DA2De
	mov.w @(loc_8C0DA306,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38
	bra loc_8C0DA594
	fmov.s fr3,@(r0,r4)

loc_8C0DA2DE:
	mova @(loc_8C0DA310,pc),r0  ; r0 init to 0x8C0DA310
	fmov.s @r0,fr4
	mov.w @(loc_8C0DA302,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8C0DA31c
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DA318,pc),r2 ; r2 set to 0x42A00000
	mov r0,r1 ; r1 set to 0x34
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x34
	add r5,r1 ; r1 ??? bc r5 is ???
	lds r2,fpul
	fmov.s @r1,fr2 ; r2 ??? bc r1 is ???
	fsub fr3,fr2
	bra loc_8C0DA332
	fsts fpul,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DA302:
	#data 0x0130
loc_8C0DA304:
	#data 0x02A4
loc_8C0DA306:
	#data 0x041c
loc_8C0DA308:
	#data 0x012c
	#align4

loc_8C0DA30C:
	#data bank03.loc_8c034e8c
loc_8C0DA310:
	#data 0x41000000
loc_8C0DA314:
	#data bank12.loc_8c1294C8
loc_8C0DA318:
	#data 0x42A00000

;==============================================
loc_8C0DA31C:
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DA454,pc),r2 ; r2 set to 0xC2A00000
	mov r0,r1 ; r1 set to 0x34
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x34
	add r5,r1 ; r1 ??? bc r5 is ???
	lds r2,fpul
	fmov.s @r1,fr2 ; r2 ??? bc r1 is ???
	fsub fr3,fr2
	fsts fpul,fr3

loc_8C0DA332:
	fadd fr3,fr2
	fmov.s @(r0,r4),fr1
	fdiv fr4,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov r0,r1 ; r1 set to 0x38, r1 set to 0x38
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov.w @(loc_8C0DA44A,pc),r1 ; r1 set to 0x41C, r1 set to 0x41c
	add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	rts
	fmov.s fr3,@(r0,r4)

;----------------------------------------------
loc_8C0DA356:
	mov.l r4,@-r15
	mov.b @(0x5,r5),r0
	mov.w @(0xEE,PC),r4
	tst r0,r0
	bf.s loc_8c0da36c
	add r5,r4
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0da370

loc_8C0DA36C:
	mov 0x00,r0
	mov.b r0,@(0xB,r4)

loc_8C0DA370:
	mov.l @r15,r3
	mov.l @(0xE4,PC),r1
	mov.b @(0x7,r3),r0
	mov.l @r15,r4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0DA382:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l @(loc_8C0DA460,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x0F,r6 ; r6 set to 0x0f
	mov.l r5,@r15
	mov 0x19,r5 ; r5 set to 0x19
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0DA45C,pc),r0  ; r0 set to 0x8C0DA45c
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0DA3Dc
	mov.l @r15+,r14

loc_8C0DA3BE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x84,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0da3d6
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)


loc_8C0DA3D6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0da3dc:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	mov.l @(loc_8c0da468,pc),r3
	add r14,r1
	mov 0x38,r0
	sts.l pr,@-r15
	fmov.s @r1,fr3
	mov 0x6C,r1
	fmov.s @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0da416
	mov.b @(0x07,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8c0da452,pc),r0
	mov.b r4,@r14
	mov.b r4,@(r0,r14)

loc_8c0da416:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0DA41C:
	mov.w @(loc_8C0DA44C,pc),r6 ; r6 set to 0x2A4
	add r5,r6 ; r6 ??? bc r5 is ???
	mov.b @(0x0B,r6),r0
	tst r0,r0
	bf loc_8C0DA4Ac
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x0B,r6)
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0DA452,pc),r0 ; r0 set to 0x12c
	mov.b r6,@r4
	mov.b r6,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r4)
	mov.w @(r0,r5),r2
	tst r2,r2
	bf loc_8C0DA470
	mova @(loc_8C0DA46C,pc),r0  ; r0 set to 0x8C0DA46c
	bra loc_8C0DA474
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DA44A:
	#data 0x041c
loc_8C0DA44C:
	#data 0x02A4
loc_8C0DA44e:
	#data 0x01D0
loc_8C0DA450:
	#data 0x0141
loc_8C0DA452:
	#data 0x012c
	#align4

loc_8C0DA454:
	#data 0xC2A00000
loc_8C0DA458:
	#data bank15.loc_8c15D878
loc_8C0DA45C:
	#data 0x41892492
loc_8C0DA460:
	#data bank03.loc_8c034e8c
loc_8C0DA464:
	#data bank03.loc_8c034dee
loc_8C0DA468:
	#data bank03.loc_8c0334A8
loc_8C0DA46C:
	#data 0x42A00000

;==============================================
loc_8C0DA470:
	mova @(loc_8C0DA570,pc),r0  ; r0 init to 0x8C0DA570
	fmov.s @r0,fr3

loc_8C0DA474:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(loc_8C0DA578,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
	fmov.s @(r0,r5),fr2
	mov 0x0C,r6 ; r6 set to 0x0C, r6 set to 0x0c
	fldi0 fr4
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0DA574,pc),r0  ; r0 set to 0x8C0DA574, r0 set to 0x8C0DA574
	fmov.s @r3,fr2
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0DA584,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0DA57C,pc),r0  ; r0 set to 0x8C0DA57C, r0 set to 0x8C0DA57c
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0DA580,pc),r0  ; r0 set to 0x8C0DA580, r0 set to 0x8C0DA580
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r4)
	jmp @r3
	mov 0x19,r5

loc_8C0DA4AC:
	rts
	nop

;----------------------------------------------
loc_8C0DA4B0:
	mov 0x60,r1 ; r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0DA568,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0DA4Ea
	mov.b @(0x07,r4),r0
	mov.l @(loc_8C0DA588,pc),r3 ; r3 set to 0x8C034DEe
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0DA568,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	mov 0x38,r0 ; r0 set to 0x38
	jmp @r3
	fmov.s fr3,@(r0,r4)

loc_8C0DA4EA:
	rts
	nop

;----------------------------------------------
loc_8C0DA4EE:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0DA588,pc),r3 ; r3 set to 0x8C034DEe
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	jsr @r3
	mov.l @r15,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0DA50c
	mov.l @r15,r4
	mov.l @(0x04,r15),r5
	add 0x08,r15
	bra loc_8C0DA594
	lds.l @r15+,pr

loc_8C0DA50C:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0DA514:
	mov.b @(0x04,r4),r0
	mov 0x00,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DA56A,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	rts
	mov.b r5,@r4

;----------------------------------------------
loc_8C0DA524:
	mov.l @(loc_8C0DA58C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;----------------------------------------------
loc_8C0DA52A:
	mov 0x01,r3
	exts.w r5,r5
	exts.w r4,r4
	shad r5,r3
	tst r4,r3
	bt loc_8c0da53a
	rts
	mov 0x01,r0

loc_8C0DA53A:
	mov 0x00,r0
	rts
	nop

;----------------------------------------------
loc_8C0DA540:
	exts.w r5,r5
	lds r5,fpul
	mova @(loc_8C0DA590,pc),r0  ; r0 init to 0x8C0DA590
	fmov.s @r0,fr2
	mov.w @(loc_8C0DA56C,pc),r0 ; r0 set to 0x130
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bf/s loc_8C0DA55e
	fmul fr2,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???
	rts
	fadd fr4,fr0

;----------------------------------------------
loc_8C0DA55E:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???
	fsub fr4,fr0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DA568:
	#data 0x041c
loc_8C0DA56A:
	#data 0x012c
loc_8C0DA56C:
	#data 0x0130
	#align4

loc_8C0DA570:
	#data 0xC2A00000
loc_8C0DA574:
	#data 0x42092492
loc_8C0DA578:
	#data 0x8C26A5A8
loc_8C0DA57C:
	#data 0xC1892492
loc_8C0DA580:
	#data 0xBF4DB6Db
loc_8C0DA584:
	#data bank03.loc_8c034e8c
loc_8C0DA588:
	#data bank03.loc_8c034dee
loc_8C0DA58C:
	#data bank04.loc_8c0450C0
loc_8C0DA590:
	#data 0x3FD55555

;==============================================
loc_8c0da594:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x04,r0
	mov r4,r14
	mov.w r0,@(0x1E,r14)
	mov r5,r13
	mov.w @(loc_8C0DA682,pc),r0
	mov 0x00,r12
	mov.w @(loc_8C0DA680,pc),r11
	mov.b @(r0,r13),r3
	tst r3,r3
	bf/s loc_8c0da5d2
	add r13,r11
	mov.l @(loc_8C0DA68C,pc),r3
	mov.b @(0x02,r13),r0
	mov.b @r3,r4
	extu.b r0,r5
	bsr loc_8c0da52a
	extu.b r4,r4
	tst r0,r0
	bt loc_8c0da5e6
	mov.l @(loc_8C0DA690,pc),r3
	mov 0x05,r1
	mov.b @r3,r2
	extu.b r2,r2
	cmp/ge r1,r2
	bf loc_8c0da5e6

loc_8c0da5d2:
	mov.w @(loc_8C0DA684,pc),r2
	mov.b @(0x06,r14),r0
	add r14,r2
	mov.w @(loc_8C0DA686,pc),r1
	mov.b r0,@r2
	mov.b @(0x07,r14),r0
	add r14,r1
	mov.b r0,@r1
	bra loc_8c0da6da
	mov 0x01,r0

loc_8c0da5e6:
	mov.b @(0x0B,r11),r0
	tst r0,r0
	bt loc_8c0da63e
	mov.b @(0x0B,r11),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0da600
	cmp/eq 0x04,r0
	bt loc_8c0da616
	cmp/eq 0x06,r0
	bt loc_8c0da62a
	bra loc_8c0da62a
	nop

loc_8c0da600:
	mov.w @(loc_8C0DA684,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	mov.w @(loc_8C0DA686,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r14),r0
	add r14,r2
	mov.b r0,@r2
	mov 0x0C,r0

loc_8c0da612:
	bra loc_8c0da78c
	mov.b r0,@(0x06,r14)

loc_8c0da616:
	mov.w @(loc_8C0DA684,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	mov.w @(loc_8C0DA686,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r14),r0
	add r14,r2
	mov.b r0,@r2
	bra loc_8c0da612
	mov 0x0D,r0

loc_8c0da62a:
	mov.w @(loc_8C0DA684,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	mov.w @(loc_8C0DA686,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r14),r0
	add r14,r2
	mov.b r0,@r2
	bra loc_8c0da612
	mov 0x0E,r0

loc_8c0da63e:
	mov.l @(loc_8c0da694,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0da65c
	mov.w @(loc_8C0DA684,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	mov.w @(loc_8C0DA686,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r14),r0
	add r14,r2
	mov.b r0,@r2
	bra loc_8c0da612
	mov 0x04,r0

loc_8c0da65c:
	mov.w @(loc_8C0DA688,pc),r0
	mov 0x03,r3
	mov.w @(r0,r13),r2
	cmp/ge r3,r2
	bt loc_8c0da712
	mov.b @(0x01,r11),r0
	tst r0,r0
	bt loc_8c0da698
	mov.w @(loc_8C0DA684,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	mov.w @(loc_8C0DA686,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r14),r0
	add r14,r2
	mov.b r0,@r2
	bra loc_8c0da612
	mov 0x0A,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DA680:
	#data 0x02A4
loc_8C0DA682:
	#data 0x0411
loc_8C0DA684:
	#data 0x00D2
loc_8C0DA686:
	#data 0x00D3
loc_8C0DA688:
	#data 0x026C
	#align4

loc_8C0DA68C:
	#data 0x8C289628
loc_8C0DA690:
	#data 0x8C2895F0
loc_8c0da694:
	#data bank03.loc_8c03340c

;==============================================
loc_8c0da698:
	mov.w @(loc_8C0DA79E,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0da70a
	mov 0x20,r0
	mov.b @(r0,r13),r2
	mov 0x05,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c0da70a
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c0da70a
	mov 0x20,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c0da6c8
	cmp/eq 0x09,r0
	bt loc_8c0da6de
	bra loc_8c0da6f4
	nop

loc_8c0da6c8:
	mov.w @(loc_8C0DA7A0,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	mov.w @(loc_8C0DA7A2,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r14),r0
	add r14,r2
	mov.b r0,@r2
	mov 0x08,r0

loc_8c0da6da:
	bra loc_8c0da78c
	mov.b r0,@(0x06,r14)

loc_8c0da6de:
	mov.w @(loc_8C0DA7A0,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	mov.w @(loc_8C0DA7A2,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r14),r0
	add r14,r2
	mov.b r0,@r2
	mov 0x10,r0
	bra loc_8c0da78c
	mov.b r0,@(0x06,r14)

loc_8c0da6f4:
	mov.w @(loc_8C0DA7A0,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	mov.w @(loc_8C0DA7A2,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r14),r0
	add r14,r2
	mov.b r0,@r2
	mov 0x09,r0
	bra loc_8c0da78c
	mov.b r0,@(0x06,r14)

loc_8c0da70a:
	mov.w @(loc_8C0DA7A4,pc),r0
	mov.w @(r0,r13),r2
	cmp/pl r2
	bt loc_8c0da728

loc_8c0da712:
	mov.w @(loc_8C0DA7A0,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	mov.w @(loc_8C0DA7A2,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r14),r0
	add r14,r2
	mov.b r0,@r2
	mov 0x0F,r0
	bra loc_8c0da78c
	mov.b r0,@(0x06,r14)

loc_8c0da728:
	mov 0x30,r5
	mov r15,r11
	bsr loc_8c0da540
	mov r13,r4
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fsub fr3,fr0
	fmov.s fr0,@r11
	fmov.s @(r0,r13),fr3
	mov 0x04,r0
	fmov.s fr3,@(r0,r11)
	mova @(loc_8C0DA7A8,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	mov 0x04,r0
	fmov.s @(r0,r11),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt/s loc_8c0da756
	fldi0 fr3
	mov 0x01,r12

loc_8c0da756:
	fmov.s @r11,fr2
	fcmp/gt fr2,fr3
	bf loc_8c0da766
	fmov.s @r11,fr1
	fldi1 fr2
	fneg fr2
	fmul fr2,fr1
	fmov.s fr1,@r11

loc_8c0da766:
	mova @(loc_8C0DA7AC,pc),r0
	fmov.s @r11,fr2
	fmov.s @r0,fr3
	fcmp/gt fr2,fr3
	bt/s loc_8c0da774
	mov.b @(0x06,r14),r0
	add 0x02,r12

loc_8c0da774:
	mov.w @(loc_8C0DA7A0,pc),r1
	mov.w @(loc_8C0DA7A2,pc),r2
	add r14,r1
	mov.b r0,@r1
	add r14,r2
	mov.b @(0x07,r14),r0
	mov.l @(loc_8c0da7b0,pc),r1
	mov.b r0,@r2
	extu.b r12,r0
	shll r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x06,r14)

loc_8c0da78c:
	mov 0x00,r0
	mov.b r0,@(0x07,r14)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DA79E:
	#data 0x01D0
loc_8C0DA7A0:
	#data 0x00D2
loc_8C0DA7A2:
	#data 0x00D3
loc_8C0DA7A4:
	#data 0x0420
	#align4

loc_8C0DA7A8:
	#data 0x42CDB6DB
loc_8C0DA7AC:
	#data 0x42855555
loc_8c0da7b0:
	#data bank15.loc_8c15d890

;==============================================
loc_8C0DA7B4:
	mov.l r14,@-r15
	mov r6,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov 0x01,r11 ; r11 set to 0x01
	mov.l r10,@-r15
	mov 0x00,r10 ; r10 set to 0x00
	mov.l r9,@-r15
	mov.w @(loc_8C0DA856,pc),r13 ; r13 set to 0xCc
	sts.l pr,@-r15
	mov.l @(loc_8C0DA858,pc),r9 ; r9 set to 0x8C03544c
	add r4,r13 ; r13 ??? bc r4 is ???

loc_8C0DA7D0:
	mov 0x25,r6 ; r6 set to 0x25, r6 set to 0x25
	mov.b @r14,r0
	add r12,r6 ; r6 ??? bc r12 is ???, r6 ??? bc r12 is ???
	mov 0x57,r3 ; r3 set to 0x57, r3 set to 0x57
	mov.b r0,@(0x04,r13)
	mov.b @r6,r6
	mov.b @(0x02,r14),r0
	extu.b r6,r6
	mulu.w r3,r6
	extu.b r0,r0
	sts macl,r6
	add r0,r6
	mov.b @(0x03,r14),r0
	extu.b r0,r7
	mov.b @(0x01,r14),r0
	extu.b r0,r5
	jsr @r9
	mov r12,r4
	mov.l @(0x04,r14),r0
	cmp/eq 0x01,r0
	bf loc_8C0DA7Fe
	bra loc_8C0DA802
	mov r10,r0

loc_8C0DA7FE:
	mov r11,r0
	nop

loc_8C0DA802:
	mov.b r0,@(0x05,r13)
	mov.l @(0x04,r14),r3
	mov.b @(0x04,r13),r0
	shll2 r3
	shll r3
	tst r0,r0
	add r3,r14
	bt loc_8C0DA7D0
	mov.l r14,@r13
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DA824:
	mov.l r14,@-r15
	mov.w @(0x2C,PC),r14
	mov.l r13,@-r15
	add r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x4,r14)
	extu.b r0,r0
	tst r0,r0
	bf.s loc_8c0da84a
	mov 0x01,r13
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt.s loc_8c0da846
	mov.l @r14,r6
	mov 0x00,r13

loc_8C0DA846:
	bsr loc_8c0da7b4
	nop

loc_8C0DA84A:
	mov r13,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DA856:
	#data 0x00Cc
	#align4
loc_8C0DA858:
	#data bank03.loc_8c03544c

;==============================================
;unused
loc_8c0da85c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x158,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0da892
	mov r0,r4
	mov.l @(0x148,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x126,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.l @r15,r5
	mov.w @(0x11C,PC),r0
	add r3,r5
	mov.b r0,@(0x3,r5)

loc_8c0da892:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DA89A:
	mov r4,r3
	mov.l @(loc_8C0DA9C8,pc),r1 ; r1 set to 0x8C15D898
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0DA8AC:
	mov.w @(0xFE,PC),r3
	mov.w @(0xFE,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.w @(0xF6,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xEE,PC),r0
	mov.l @(0x18,r4),r5
	mov.l @(0x104,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xE6,PC),r0
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
	mov.w @(0xCA,PC),r0
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
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x18,r5
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov.w @(0xA6,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov 0x10,r5
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0DA926:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x8C,PC),r0
	mov.l @(0x18,r14),r5
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0da97e
	mov.w @(0x82,PC),r0
	mov.b @(r0,r5),r4
	extu.b r4,r0
	cmp/eq 0x07,r0
	bt.s loc_8c0da95a
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x04,r0
	bt loc_8c0da95a
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c0da95a
	mov r4,r0
	nop
	cmp/eq 0x0D,r0
	bf loc_8c0da97e

loc_8C0DA95A:
	mov.w @(0x4C,PC),r3
	mov 0x00,r4
	add r3,r5
	mov r4,r0
	nop
	mov.b r0,@(0x3,r5)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x5,r14)
	mov.w @(0x3A,PC),r0
	mov.b r4,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DA97E:
	mov.w @(0x32,PC),r0
	mov r14,r4
	mov.l @(0x50,PC),r1
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DA998:
	mov r4,r3
	mov.l @(loc_8C0DA9D8,pc),r1 ; r1 set to 0x8C15D8Bc
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0da9aa:
	#data 0x02a4
loc_8c0da9ac:
	#data 0x00ff
loc_8c0da9ae:
	#data 0x1c04
loc_8c0da9b0:
	#data 0x00dc
loc_8c0da9b2:
	#data 0x00c0
loc_8c0da9b4:
	#data 0x012c
loc_8c0da9b6:
	#data 0x01a3
loc_8c0da9b8:
	#data 0x013c
loc_8c0da9ba:
	#data 0x01d0
loc_8c0da9bc:
	#data 0x01e9
	#align4

loc_8C0DA9C0:
	#data bank04.loc_8c044F12
loc_8C0DA9C4:
	#data loc_8c0dA89a
loc_8C0DA9C8:
	#data bank15.loc_8c15D898
loc_8C0DA9CC:
	#data bank12.loc_8c129560
loc_8C0DA9D0:
	#data bank12.loc_8c1294C8
loc_8C0DA9D4:
	#data bank15.loc_8c15D8A8
loc_8C0DA9D8:
	#data bank15.loc_8c15D8Bc

;==============================================
loc_8C0DA9DC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0DAB02,pc),r1 ; r1 set to 0x130
	fmov.s fr15,@-r15
	add r14,r1 ; r1 ??? bc r14 is ???
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DAB02,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???
	xor 0x01,r0
	mov.w r0,@r1
	mova @(loc_8C0DAB08,pc),r0  ; r0 set to 0x8C0DAB08
	fmov.s @r0,fr14
	mova @(loc_8C0DAB0C,pc),r0  ; r0 set to 0x8C0DAB0c
	fmov.s @r0,fr15
	mov.w @(loc_8C0DAB02,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bf loc_8C0DAA14
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	bra loc_8C0DAA1a
	fadd fr15,fr3

loc_8C0DAA14:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fadd fr14,fr3

loc_8C0DAA1A:
	mov.l @(loc_8C0DAB14,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0DAB10,pc),r0  ; r0 set to 0x8C0DAB10, r0 init to 0x8C0DAB10
	fmov.s @r3,fr2
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fldi0 fr4
	fadd fr3,fr2
	mov.l @(loc_8C0DAB20,pc),r3 ; r3 set to 0x8C03340C, r3 set to 0x8C03340c
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0DAB18,pc),r0  ; r0 set to 0x8C0DAB18, r0 set to 0x8C0DAB18
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DAB1C,pc),r0  ; r0 set to 0x8C0DAB1C, r0 set to 0x8C0DAB1c
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0DAA6a
	mov.w @(loc_8C0DAB02,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.w r3,@(r0,r14)
	mov.w @(r0,r13),r2
	tst r2,r2
	bf loc_8C0DAA62
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	bra loc_8C0DAA68
	fadd fr14,fr3

loc_8c0daa62:
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fadd fr15,fr3

loc_8c0daa68:
	fmov.s fr3,@(r0,r14)

loc_8C0DAA6A:
	mov.l @(loc_8C0DAB24,pc),r3 ; r3 set to 0x8C042008
	mov 0x21,r5 ; r5 set to 0x21
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DAB28,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19
	mov 0x17,r6 ; r6 set to 0x17
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C0DAB2C,pc),r2 ; r2 set to 0x8C104434
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@r14
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DAA94:
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr3
	mov.w @(loc_8C0DAB04,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r5),fr2
	fcmp/gt fr2,fr3
	bt loc_8C0DAACe
	mov.b @(0x07,r4),r0
	mov.l @(loc_8C0DAB30,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	add 0x01,r0 ; r0 set to 0x41D, r0 set to 0x41d
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0DAB04,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	jmp @r3
	fmov.s fr3,@(r0,r4)

loc_8C0DAACE:
	rts
	nop

;----------------------------------------------
loc_8C0DAAD2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0daaea
	mov 0x02,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8C0DAAEA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DAAF0:
	mov r4,r3
	mov.l @(loc_8C0DAB34,pc),r1 ; r1 set to 0x8C15D8C8
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DAB02:
	#data 0x0130
loc_8C0DAB04:
	#data 0x041c
	#align4

loc_8C0DAB08:
	#data 0x43200000
loc_8C0DAB0C:
	#data 0xC3200000
loc_8C0DAB10:
	#data 0x42892492
loc_8C0DAB14:
	#data 0x8C26A5A8
loc_8C0DAB18:
	#data 0xC1892492
loc_8C0DAB1C:
	#data 0xBF4DB6Db
loc_8C0DAB20:
	#data bank03.loc_8c03340c
loc_8C0DAB24:
	#data bank04.loc_8c042008
loc_8C0DAB28:
	#data bank03.loc_8c034e8c
loc_8C0DAB2C:
	#data bank10.loc_8c104434
loc_8C0DAB30:
	#data bank03.loc_8c034dee
loc_8C0DAB34:
	#data bank15.loc_8c15D8C8

;==============================================
loc_8C0DAB38:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l @(0x158,PC),r3
	mov 0x18,r6
	mov.l r5,@r15
	mov 0x19,r5
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0x13C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DAB72:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x128,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x112,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0dab8a
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)

loc_8C0DAB8A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DAB90:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x60,r1
	mov r4,r14
	mov 0x38,r0
	mov.w @(0xF4,PC),r3
	add r14,r1
	add r5,r3
	mov.l r3,@r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	mov.l @(0xF4,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0dabde
	mov.l @r15,r3
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x3,r3)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x5,r14)

loc_8C0DABDE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DABE6:
	mov r4,r3
	mov.l @(loc_8C0DACA8,pc),r1 ; r1 set to 0x8C15D8D4
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0DABF8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x1E,r0 ; r0 set to 0x1e
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r3),fr3
	fcmp/gt fr2,fr3
	bt/s loc_8C0DAC34
	mov 0x14,r6 ; r6 set to 0x14
	mov.w @(loc_8C0DAC96,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8C0DAC3a
	mov.w r2,@(r0,r14)

loc_8C0DAC34:
	mov.w @(loc_8C0DAC96,pc),r0 ; r0 set to 0x130
	mov 0x01,r1 ; r1 set to 0x01
	mov.w r1,@(r0,r14)

loc_8C0DAC3A:
	mov.l @(loc_8C0DAC9C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DAC4C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0DACA0,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0DAC78
	mov.l @r15,r5
	bsr loc_8C0DAE3c
	mov r14,r4
	tst r0,r0
	bt loc_8C0DAC70
	bra loc_8C0DAC72
	mov 0x04,r0

loc_8c0dac70:
	mov 0x03,r0

loc_8c0dac72:
	mov.b r0,@(0x06,r14)
	mov 0x00,r0
	mov.b r0,@(0x07,r14)

loc_8C0DAC78:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DAC80:
	mov r4,r3
	mov.l @(loc_8C0DACAC,pc),r1 ; r1 set to 0x8C15D8Dc
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dac92:
	#data 0x0141
loc_8c0dac94:
	#data 0x02a4
loc_8c0dac96:
	#data 0x0130
	#align4

loc_8c0dac98:
	#data 0x41892492
loc_8C0DAC9C:
	#data bank03.loc_8c034e8c
loc_8C0DACA0:
	#data bank03.loc_8c034dee
loc_8C0DACA4:
	#data bank03.loc_8c0334A8
loc_8C0DACA8:
	#data bank15.loc_8c15D8D4
loc_8C0DACAC:
	#data bank15.loc_8c15D8Dc

;==============================================
loc_8C0DACB0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DAE04,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0DACCe
	mova @(loc_8C0DAE0C,pc),r0  ; r0 set to 0x8C0DAE0c
	bra loc_8C0DACD2
	fmov.s @r0,fr3

loc_8C0DACCE:
	mova @(loc_8C0DAE10,pc),r0  ; r0 init to 0x8C0DAE10
	fmov.s @r0,fr3

loc_8C0DACD2:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0DAE14,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fldi0 fr3
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	fmov.s fr3,@(r0,r14)
	mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DACF0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.w @(loc_8C0DAE06,pc),r2 ; r2 set to 0x2A4, r2 set to 0x2A4, r2 set to 0x2A4
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	mov r5,r3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	add r3,r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???, r2 ??? bc r3 is ???
	mov.l @(loc_8C0DAE18,pc),r3 ; r3 set to 0x8C03340C, r3 set to 0x8C03340C, r3 set to 0x8C03340c
	mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00, r13 set to 0x00
	mov.l r5,@r15
	mov.l r2,@(0x04,r15)
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0DAD46
	mov.l @(0x04,r15),r3
	mov r13,r0 ; r0 set to 0x00, r0 set to 0x00, r0 set to 0x00
	nop
	mov.b r0,@(0x03,r3)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x01, r0 set to 0x01, r0 set to 0x01
	mov.b r0,@(0x04,r14)
	mov r13,r0 ; r0 set to 0x00, r0 set to 0x00, r0 set to 0x00
	nop
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	bra loc_8C0DAD68
	mov.b r0,@(0x05,r14)

loc_8c0dad46:
	mov.l @r15,r5
	bsr loc_8c0dae3c
	mov r14,r4
	tst r0,r0
	bt/s loc_8c0dad5c
	mov r14,r4
	mov 0x04,r0
	mov.b r0,@(0x06,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x07,r14)

loc_8c0dad5c:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0dae1c,pc),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0DAD68:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DAD72:
	mov r4,r3
	mov.l @(loc_8C0DAE20,pc),r1 ; r1 set to 0x8C15D8E4
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0DAD84:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l @(loc_8C0DAE14,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x16,r6 ; r6 set to 0x16
	mov.l r5,@r15
	mov 0x19,r5 ; r5 set to 0x19
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DADBA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0DAE1C,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C0DAE08,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0DADE0
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0DAE24,pc),r3 ; r3 set to 0x8C0DAE6C, r3 set to 0x8C0DAE6c
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142
	mov.b r0,@(0x07,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	lds.l @r15+,pr
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

loc_8C0DADE0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DADE6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0dadfe
	mov 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8C0DADFE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DAE04:
	#data 0x0130
loc_8C0DAE06:
	#data 0x02A4
loc_8C0DAE08:
	#data 0x0141
	#align4

loc_8C0DAE0C:
	#data 0xC0555555
loc_8C0DAE10:
	#data 0x40555555
loc_8C0DAE14:
	#data bank03.loc_8c034e8c
loc_8C0DAE18:
	#data bank03.loc_8c03340c
loc_8C0DAE1C:
	#data bank03.loc_8c034dee
loc_8C0DAE20:
	#data bank15.loc_8c15D8E4
loc_8C0DAE24:
	#data loc_8c0dAE6c

;==============================================
loc_8C0DAE28:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DAE5E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DAE36:
	mov.l @(loc_8C0DAE60,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0DAE3C:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr4
	fmov.s @(r0,r5),fr3
	mova @(loc_8C0DAE64,pc),r0  ; r0 set to 0x8C0DAE64
	fsub fr3,fr4
	fmov.s @r0,fr3
	fcmp/gt fr4,fr3
	bt loc_8C0DAE58
	mova @(loc_8C0DAE68,pc),r0  ; r0 set to 0x8C0DAE68
	fmov.s @r0,fr2
	fcmp/gt fr2,fr4
	bt loc_8C0DAE58
	rts
	mov 0x01,r0

;----------------------------------------------
loc_8C0DAE58:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DAE5E:
	#data 0x012c
	#align4

loc_8C0DAE60:
	#data bank04.loc_8c0450C0
loc_8C0DAE64:
	#data 0xC3200000
loc_8C0DAE68:
	#data 0x43200000

;==============================================
loc_8C0DAE6C:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x12C,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0dae9e
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.l @r15,r3
	mov.l @(0x18,r3),r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r3
	mov.l r3,@(0x14,r4)

loc_8C0DAE9E:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0daea6:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(loc_8c0dafa4,pc),r3
	mov 0x03,r5
	mov.b r0,@(0x04,r15)
	mov 0x02,r6
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt/s loc_8c0daed2
	mov r0,r4
	mov.l @(loc_8c0dafa8,pc),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.b @(0x04,r15),r0
	mov.b r0,@r1
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c0daed2:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

loc_8C0DAEDA:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0DAFAC,pc),r0 ; r0 set to 0x8C15D8F8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0DAEEE:
	mov r4,r3
	mov.l @(loc_8C0DAFB0,pc),r1 ; r1 set to 0x8C15D90c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0DAF00:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0DAFB4,pc),r3 ; r3 set to 0xC054
	mov.w @(loc_8C0DAF9C,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0DAF9C,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0DAF9A,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0DAFB8,pc),r3 ; r3 set to 0x8C129560
	mov.w r0,@(0x1C,r14)
	mov.l @(0x18,r14),r4
	add r4,r2 ; r2 ??? bc r4 is ???
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0DAF9A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0DAF9E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DAFBC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x09,r3 ; r3 set to 0x09
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x0C,r5 ; r5 set to 0x0c
	mov.b r3,@(r0,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0DAFA0,pc),r0 ; r0 set to 0x13c
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r5,@(r0,r14)
	add 0xF1,r0 ; r0 set to 0x130
	mov.w r3,@(r0,r14)
	mov.l @(0x14,r14),r5 ; r5 ??? bc r14 is ???
	mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???
	tst r3,r3
	bf loc_8C0DAFC8
	mova @(loc_8C0DAFC0,pc),r0  ; r0 set to 0x8C0DAFC0
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DAFC4,pc),r0  ; r0 set to 0x8C0DAFC4
	bra loc_8C0DAFD8
	fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DAF9A:
	#data 0x012c
loc_8C0DAF9C:
	#data 0x00Dc
loc_8C0DAF9E:
	#data 0x01A3
loc_8C0DAFA0:
	#data 0x013c
	#align4

loc_8C0DAFA4:
	#data bank04.loc_8c044F12
loc_8C0DAFA8:
	#data loc_8c0dAEDa
loc_8C0DAFAC:
	#data bank15.loc_8c15D8F8
loc_8C0DAFB0:
	#data bank15.loc_8c15D90c
loc_8C0DAFB4:
	#data 0x0000C054
loc_8C0DAFB8:
	#data bank12.loc_8c129560
loc_8C0DAFBC:
	#data bank12.loc_8c1294C8
loc_8C0DAFC0:
	#data 0xC0555555
loc_8C0DAFC4:
	#data 0xC0200000

;==============================================
loc_8C0DAFC8:
	mova @(loc_8C0DB0E8,pc),r0  ; r0 init to 0x8C0DB0E8
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DB0EC,pc),r0  ; r0 set to 0x8C0DB0Ec
	fmov.s @r0,fr2

loc_8C0DAFD8:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr3
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0DB0F0,pc),r0  ; r0 set to 0x8C0DB0F0, r0 set to 0x8C0DB0F0
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r5),fr2
	mov.l @(loc_8C0DB0FC,pc),r5 ; r5 set to 0x8C15D8F0, r5 set to 0x8C15D8F0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DB0F4,pc),r0  ; r0 set to 0x8C0DB0F4, r0 set to 0x8C0DB0F4
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DB0F8,pc),r0  ; r0 set to 0x8C0DB0F8, r0 set to 0x8C0DB0F8
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r14)
	mov.b @(0x01,r4),r0
	extu.b r0,r0 ; r0 set to 0x6C, r0 set to 0x6c
	cmp/eq 0x1C,r0
	bf loc_8C0DB018
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.w @(loc_8C0DB0DE,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	extu.b r2,r2
	add r2,r5 ; r5 ??? bc r2 is ???, r5 ??? bc r2 is ???
	mov.b @r5,r3
	bra loc_8C0DB028
	mov.b r3,@(r0,r14)

loc_8C0DB018:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r1
	extu.b r1,r1
	add r1,r5
	mov.w @(loc_8C0DB0DE,pc),r1 ; r1 set to 0x158
	mov.b @(0x03,r5),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r0,@r1

loc_8C0DB028:
	mov.w @(loc_8C0DB0DE,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.l @(loc_8C0DB100,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov 0x03,r5 ; r5 set to 0x03, r5 set to 0x03
	bsr loc_8C0DAEA6
	mov r14,r4
	mov 0x04,r5 ; r5 set to 0x04, r5 set to 0x04
	bsr loc_8C0DAEA6
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0DB046:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02, r6 set to 0x02
	mov.l @(0x18,r14),r4
	add 0xFF,r0 ; r0 set to 0x157, r0 set to 0x157
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??, r0 ??
	tst r0,r0
	bf/s loc_8C0DB066
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00, r5 set to 0x00
	mov r6,r0 ; r0 set to 0x02, r0 set to 0x02, r0 set to 0x02
	nop
	bra loc_8C0DB08e
	mov.b r0,@(0x04,r14)

loc_8c0db066:
	mov.w @(0x1C,r14),r0
	mov 0x3C,r3
	cmp/gt r3,r0
	bf loc_8c0db098
	mov.b @(0x01,r14),r0
	mov r0,r2
	mov.b @(0x01,r4),r0
	cmp/eq r0,r2
	bf loc_8c0db082
	mov.b @(0x04,r4),r0
	mov 0x02,r2
	extu.b r0,r0
	cmp/ge r2,r0
	bf loc_8c0db098

loc_8c0db082:
	mov r6,r0
	nop
	mov.b r0,@(0x04,r14)
	mov r5,r0
	nop
	mov.b r0,@(0x05,r14)

loc_8C0DB08E:
	mov.w @(loc_8C0DB0E0,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DB098:
	mov.w @(0x1C,r14),r0
	mov 0x14,r6
	cmp/gt r6,r0
	bf loc_8c0db104
	mov.w @(0x3E,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0db104
	mov.w @(0x36,PC),r0
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x07,r0
	bt.s loc_8c0db0ce
	mov r0,r5
	mov r5,r0
	nop
	cmp/eq 0x04,r0
	bt loc_8c0db0ce
	mov r5,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c0db0ce
	mov r5,r0
	nop
	cmp/eq 0x0D,r0
	bf loc_8c0db104

loc_8C0DB0CE:
	mov 0x05,r0
	mov.b r0,@(0x5,r14)
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DB0DE:
	#data 0x0158
loc_8C0DB0E0:
	#data 0x012c
loc_8C0DB0E2:
	#data 0x01D0
loc_8C0DB0E4:
	#data 0x01E9
	#align4

loc_8C0DB0E8:
	#data 0x40555555
loc_8C0DB0EC:
	#data 0x40200000
loc_8C0DB0F0:
	#data 0x42676DB6
loc_8C0DB0F4:
	#data 0x414DB6Db
loc_8C0DB0F8:
	#data 0xBF092492
loc_8C0DB0FC:
	#data bank15.loc_8c15D8F0
loc_8C0DB100:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0DB104:
	mov.b @(0x5,r14),r0
	mov.l @(0x128,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x11C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DB122:
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xFE,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0DB12E:
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
	fldi0 fr3
	fcmp/gt fr3,fr2
	bt.s loc_8c0db172
	fmov fr2,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0DB172:
	rts
	nop

;----------------------------------------------
loc_8C0DB176:
	mov 0x5C,r1
	mov.l @(0x18,r4),r5
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
	mova @(0x84,PC),r0
	fmov @r0,fr4
	mov.w @(0x76,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bt loc_8c0db1d2
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x62,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r4)

loc_8C0DB1D2:
	bra loc_8c0db42c
	nop

loc_8C0DB1D6:
	mov.w @(0x1C,r4),r0
	mov 0x3C,r3
	cmp/gt r3,r0
	bt loc_8c0db1e4
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0DB1E4:
	bra loc_8c0db42c
	nop

loc_8C0DB1E8:
	mov.w @(0x1C,r4),r0
	mov 0x14,r3
	cmp/gt r3,r0
	bt loc_8c0db1f6
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0DB1F6:
	mov.w @(0x1C,r4),r0
	tst 0x03,r0
	bt loc_8c0db204
	mov.w @(0x2C,PC),r0
	mov 0x01,r2
	bra loc_8c0db20a
	mov.b r2,@(r0,r4)

loc_8C0DB204:
	mov.w @(0x24,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r4)

loc_8C0DB20A:
	bra loc_8c0db42c
	nop

loc_8C0DB20E:
	mov.w @(loc_8C0DB22C,pc),r1 ; r1 set to 0x12c
	mov.w @(0x1C,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	and 0x01,r0
	bra loc_8C0DB42c
	mov.b r0,@r1

loc_8C0DB21A:
	mov r4,r3
	mov.l @(loc_8C0DB23C,pc),r1 ; r1 set to 0x8C15D934
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DB22C:
	#data 0x012c
loc_8C0DB22e:
	#data 0x041c
	#align4

loc_8C0DB230:
	#data bank15.loc_8c15D91c
loc_8C0DB234:
#data bank03.loc_8c034D8c
loc_8C0DB238:
	#data 0x41AB6DB6
loc_8C0DB23C:
	#data bank15.loc_8c15D934

;==============================================
loc_8C0DB240:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DB3A4,pc),r3 ; r3 set to 0x1C05
	mov.w @(loc_8C0DB3A6,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0DB3A6,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0DB3A8,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	mov.l @(loc_8C0DB3B0,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0DB3AC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DB3B4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x08,r6 ; r6 set to 0x08
	mov.b r2,@(r0,r14)
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(loc_8C0DB3B8,pc),r3 ; r3 set to 0x8C034C38
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0DB2BC:
	sts.l pr,@-r15
	mov.l @(0x18,r4),r5 ; r5 ??? bc r4 is ???
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0 ; r0 set to 0x31
	cmp/ge r6,r0
	bf loc_8C0DB2Da
	mov r6,r0 ; r0 set to 0x02, r0 set to 0x02
	nop
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	lds.l @r15+,pr
	mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DB2DA:
	mov r5,r2
	mov.l @(loc_8C0DB3B4,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0DB3BC,pc),r3 ; r3 set to 0x8C034D8c
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;unused
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0DB2FA:
	mov r4,r3
	mov.l @(loc_8C0DB3C0,pc),r1 ; r1 set to 0x8C15D944
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0DB30C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DB3A4,pc),r3 ; r3 set to 0x1C05
	mov.w @(loc_8C0DB3A6,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0DB3A6,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0DB3A8,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	mov.l @(loc_8C0DB3B0,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0DB3AC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DB3B4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x09,r6 ; r6 set to 0x09
	mov.b r2,@(r0,r14)
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(loc_8C0DB3B8,pc),r3 ; r3 set to 0x8C034C38
	mov.b r5,@(r0,r14)
	mov 0x1B,r5 ; r5 set to 0x1b
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0DB386:
	sts.l pr,@-r15
	mov.l @(0x18,r4),r5 ; r5 ??? bc r4 is ???
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0 ; r0 set to 0x31
	cmp/ge r6,r0
	bf loc_8C0DB3C4
	mov r6,r0 ; r0 set to 0x02, r0 set to 0x02
	nop
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	lds.l @r15+,pr
	mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DB3A4:
	#data 0x1C05
loc_8C0DB3A6:
	#data 0x00Dc
loc_8C0DB3A8:
	#data 0x00C0
loc_8C0DB3AA:
	#data 0x012c
loc_8C0DB3AC:
	#data 0x01A3
	#align4

loc_8C0DB3B0:
	#data bank12.loc_8c129560
loc_8C0DB3B4:
	#data bank12.loc_8c1294C8
loc_8C0DB3B8:
	#data bank03.loc_8c034C38
loc_8C0DB3BC:
	#data bank03.loc_8c034D8c
loc_8C0DB3C0:
	#data bank15.loc_8c15D944

;==============================================
loc_8C0DB3C4:
	mov r5,r2
	mov.l @(loc_8C0DB4BC,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0DB4B0,pc),r0 ; r0 set to 0x12c
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0DB3DE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DB4B0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DB3EC:
	mov.l @(loc_8C0DB4C0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0DB3F2:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r0
	mov.w @(0xB6,PC),r4
	mov.w @(0xB6,PC),r1
	add r5,r4
	sts.l pr,@-r15
	mov.b r0,@(0x4,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	add r14,r1
	mov.b r3,@r4
	mov.b @(0x2,r5),r0
	mov 0x2A,r5
	mov.l @(0xB4,PC),r3
	extu.b r0,r0
	mov.l r0,@r1
	jsr @r3
	mov r14,r4
	mov 0x20,r0
	mov.l @(0xB0,PC),r3
	mov.b @(r0,r14),r5
	mov r14,r4
	mov.l @(0xA4,PC),r0
	lds.l @r15+,pr
	extu.b r5,r5
	mov.b @(r0,r5),r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0db42c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.w @(loc_8C0DB4B2,pc),r4
	sts.l pr,@-r15
	mov.l @(0x18,r13),r14
	add r14,r4
	mov.b @(0x08,r4),r0
	tst r0,r0
	bf loc_8c0db45e
	mov.w @(loc_8C0DB4B6,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0db454
	mov.w @(loc_8C0DB4B8,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c0db45e

loc_8c0db454:
	mov r14,r5
	bsr loc_8c0db4d0
	mov r13,r4
	tst r0,r0
	bf loc_8c0db49c

loc_8c0db45e:
	mov.w @(loc_8C0DB4BA,pc),r0
	mov.l @(r0,r14),r14
	mov.b @(0x01,r14),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt/s loc_8c0db474
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x1D,r0
	bf loc_8c0db4a8

loc_8c0db474:
	mov.w @(loc_8C0DB4B2,pc),r4
	add r14,r4
	mov.b @(0x08,r4),r0
	tst r0,r0
	bf loc_8c0db4a8
	mov.w @(loc_8C0DB4B6,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0db492
	mov.w @(loc_8C0DB4B8,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c0db4a8

loc_8c0db492:
	mov r14,r5
	bsr loc_8c0db4d0
	mov r13,r4
	tst r0,r0
	bt loc_8c0db4a8

loc_8c0db49c:
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8c0db3f2
	mov.l @r15+,r14

loc_8c0db4a8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0db4b0:
	#data 0x012C
loc_8C0DB4B2:
	#data 0x02A4
loc_8C0DB4B4:
	#data 0x00CC
loc_8C0DB4B6:
	#data 0x01D0
loc_8C0DB4B8:
	#data 0x01E9
loc_8C0DB4BA:
	#data 0x020C
	#align4

loc_8c0db4bc:
	#data bank12.loc_8c1294c8
loc_8c0db4c0:
	#data bank04.loc_8c0450c0
loc_8c0db4c4:
	#data bank04.loc_8c04223a
loc_8c0db4c8:
	#data bank15.loc_8c15d954
loc_8c0db4cc:
	#data bank0d.loc_8c0d8840

;==============================================
loc_8c0db4d0:
	mov.w @(loc_8C0DB56A,pc),r0
	mov.l @(r0,r5),r6
	mov.w @(0x0C,r6),r0
	extu.w r0,r6
	mov.w @(loc_8C0DB56C,pc),r0
	shll2 r6
	mov.l @(r0,r5),r3
	shll r6
	mova @(loc_8C0DB570,pc),r0
	add r3,r6
	fmov.s @r0,fr6
	mov.w @r6,r3
	mov 0x34,r0
	fmov.s @(r0,r4),fr4
	lds r3,fpul
	mov.w @(loc_8C0DB56E,pc),r0
	float fpul,fr3
	mov.w @(r0,r5),r3
	tst r3,r3
	fmov fr3,fr5
	bt/s loc_8c0db4fe
	fmul fr6,fr5
	fneg fr5

loc_8c0db4fe:
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	fadd fr3,fr5
	fldi0 fr3
	fsub fr5,fr4
	fcmp/gt fr4,fr3
	bf/s loc_8c0db510
	mov.w @(0x02,r6),r0
	fneg fr4

loc_8c0db510:
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr5
	fmul fr6,fr5
	fldi0 fr3
	fcmp/eq fr3,fr5
	bt loc_8c0db564
	fcmp/gt fr4,fr5
	bf loc_8c0db564
	mov 0x38,r0
	fmov.s @(r0,r4),fr4
	mova @(loc_8C0DB574,pc),r0
	fmov.s @r0,fr5
	mov.w @(0x04,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr3
	fmov fr3,fr6
	fmul fr5,fr6
	fmov.s @(r0,r5),fr3
	fneg fr6
	fadd fr3,fr6
	fldi0 fr3
	fsub fr6,fr4
	fcmp/gt fr4,fr3
	bf/s loc_8c0db54c
	mov.w @(0x06,r6),r0
	fneg fr4

loc_8c0db54c:
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr6
	fmul fr5,fr6
	fldi0 fr3
	fcmp/eq fr3,fr6
	bt loc_8c0db564
	fcmp/gt fr4,fr6
	bf loc_8c0db564
	rts
	mov 0x01,r0

;----------------------------------------------
loc_8c0db564:
	mov 0x00,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DB56A:
	#data 0x01C0
loc_8C0DB56C:
	#data 0x0170
loc_8C0DB56E:
	#data 0x0130
	#align4

loc_8C0DB570:
	#data 0x3FD55555
loc_8C0DB574:
	#data 0x40092492

;==============================================
loc_8C0DB578:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	bsr loc_8C0DB600
	mov 0x03,r5 ; r5 set to 0x03
	mov 0x07,r5 ; r5 set to 0x07
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x0B,r5 ; r5 set to 0x0b
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x0F,r5 ; r5 set to 0x0f
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x01,r5 ; r5 set to 0x01
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x05,r5 ; r5 set to 0x05
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x09,r5 ; r5 set to 0x09
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x0D,r5 ; r5 set to 0x0d
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x02,r5 ; r5 set to 0x02
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x06,r5 ; r5 set to 0x06
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x0A,r5 ; r5 set to 0x0a
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x0E,r5 ; r5 set to 0x0e
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x00,r5 ; r5 set to 0x00
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x04,r5 ; r5 set to 0x04
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x08,r5 ; r5 set to 0x08
	bsr loc_8C0DB600
	mov r14,r4
	mov 0x0C,r5 ; r5 set to 0x0c
	bsr loc_8C0DB600
	mov r14,r4
	mov.l @(loc_8C0DB688,pc),r3 ; r3 set to 0x8C042008
	mov 0x20,r5 ; r5 set to 0x20
	jsr @r3
	mov r14,r4
	mov 0x25,r0 ; r0 set to 0x25
	mov.l @(loc_8C0DB68C,pc),r2 ; r2 set to 0x8C03544c
	mov.b @(r0,r14),r6
	mov 0x57,r3 ; r3 set to 0x57
	lds.l @r15+,pr
	extu.b r6,r6
	mov r14,r4
	mulu.w r3,r6
	mov 0x01,r7 ; r7 set to 0x01
	mov 0x02,r5 ; r5 set to 0x02
	sts macl,r6
	add 0x01,r6
	jmp @r2
	mov.l @r15+,r14

loc_8C0DB600:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x03,r5 ; r5 set to 0x03
	mov.l @(loc_8C0DB690,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r13
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r3
	mov r6,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0DB662
	mov r0,r14
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0DB694,pc),r3 ; r3 set to 0x8C0DB670
	mov 0x22,r1 ; r1 set to 0x22
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r3,@(0x10,r14)
	mov.l r13,@(0x18,r14)
	mov.b @r15,r2
	mov.b r2,@(r0,r14)
	mov.b @r15,r0 ; r0 ??? bc r15 is ???
	mov.w @(loc_8C0DB684,pc),r2 ; r2 set to 0x1305
	extu.b r0,r0
	shll r0
	and 0x1F,r0
	mov.b r0,@r1
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0DB682,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r13),r3
	extu.w r3,r3
	cmp/eq r2,r3
	bf loc_8C0DB64e
	mova @(loc_8C0DB698,pc),r0  ; r0 set to 0x8C0DB698
	bra loc_8C0DB652
	fmov.s @r0,fr3

loc_8c0db64e:
	mova @(loc_8C0DB69C,pc),r0
	fmov.s @r0,fr3

loc_8c0db652:
	mov 0x38,r0
	mov.l @(loc_8c0db6a0,pc),r3
	fmov.s @(r0,r13),fr2
	mov.w @(loc_8C0DB686,pc),r5
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C0DB662:
	mov r14,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DB670:
	mov r4,r3
	mov.l @(loc_8C0DB6A4,pc),r1 ; r1 set to 0x8C15D958
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DB682:
	#data 0x0158
loc_8C0DB684:
	#data 0x1305
loc_8c0db686:
	#data 0x0320
	#align4

loc_8C0DB688:
	#data bank04.loc_8c042008
loc_8C0DB68C:
	#data bank03.loc_8c03544c
loc_8C0DB690:
	#data bank04.loc_8c044F12
loc_8C0DB694:
	#data loc_8c0dB670
loc_8C0DB698:
	#data 0x42B40000
loc_8c0db69c:
	#data 0x41892492
loc_8C0DB6A0:
	#data bank03.loc_8c033718
loc_8C0DB6A4:
	#data bank15.loc_8c15D958

;==============================================
loc_8C0DB6A8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DB7E4,pc),r3 ; r3 set to 0x1C06
	mov.w @(loc_8C0DB7E6,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0DB7E6,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0DB7E8,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	mov.l @(loc_8C0DB7F4,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0DB7EA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0DB7EC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DB7F8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r4),r2
	mov 0x20,r4 ; r4 set to 0x20
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0DB7EE,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	mov.w r0,@(0x1C,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x20
	nop
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	extu.b r3,r3
	tst r5,r3
	bt/s loc_8C0DB742
	mov r14,r4 ; r4 ??? bc r14 is ???
	bra loc_8C0DB744
	mov 0x64,r5

loc_8c0db742:
	mov.w @(loc_8C0DB7F0,pc),r5

loc_8c0db744:
	mov.l @(loc_8c0db7fc,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8c0db800,pc),r2
	mov 0x1B,r5
	mov 0x10,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c0db75a:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0db776
	mov.l @(loc_8c0db804,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0db788

loc_8c0db776:
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0db7ea,pc),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0db788:
	mov 0x5C,r1
	mov.l @(loc_8c0db808,pc),r3
	add r14,r1
	mov r14,r4
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
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0DB7D0:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DB7EA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DB7DE:
	mov.l @(loc_8C0DB80C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DB7E4:
	#data 0x1C06
loc_8C0DB7E6:
	#data 0x00Dc
loc_8C0DB7E8:
	#data 0x00C0
loc_8C0DB7EA:
	#data 0x012c
loc_8C0DB7EC:
	#data 0x01A3
loc_8C0DB7EE:
	#data 0x013c
loc_8c0db7f0:
	#data 0x00C8
	#align4

loc_8C0DB7F4:
	#data bank12.loc_8c129560
loc_8C0DB7F8:
	#data bank12.loc_8c1294C8
loc_8C0DB7FC:
	#data bank03.loc_8c033674
loc_8C0DB800:
	#data bank03.loc_8c034C38
loc_8C0DB804:
	#data bank03.loc_8c0332E0
loc_8C0DB808:
	#data bank03.loc_8c034D8c
loc_8C0DB80C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0db810:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x128,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0db836
	mov r0,r4
	mov.l @(0x118,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8C0Db836:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
;unused
loc_8C0Db83E:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xFC,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0db864
	mov r0,r4
	mov.l @(0xEC,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0db864:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DB86C:
	mov r4,r3
	mov.l @(loc_8C0DB948,pc),r1 ; r1 set to 0x8C15D998
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;========================================
loc_8C0DB87E:
	mov.w @(loc_8C0DB930,pc),r3 ; r3 set to 0x1C07
	mov.w @(loc_8C0DB932,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0DB932,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r4),r5
	mov.b r0,@(0x04,r4)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r4)
	mov.w @(loc_8C0DB934,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0DB94C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0DB936,pc),r0 ; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(loc_8C0DB938,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0DB950,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0DB936,pc),r0 ; r0 set to 0x12c
	mov.b r6,@r4
	mov.b r6,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0DB8EA:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0DB954,pc),r0 ; r0 set to 0x8C15D9A8, r0 set to 0x8C15D9A8
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0DB900:
	mov.l r4,@-r15
	mov.b @(0x5,r5),r0
	mov.w @(0x32,PC),r4
	tst r0,r0
	bf.s loc_8c0db916
	add r5,r4
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0db91e


loc_8C0DB916:
	mov 0x00,r0
	mov.b r0,@(0xB,r4)
	mov 0x01,r0
	mov.b r0,@(0xA,r4)

loc_8C0DB91E:
	mov.l @r15,r3
	mov.l @(0x34,PC),r1
	mov.b @(0x7,r3),r0
	mov.l @r15,r4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DB930:
	#data 0x1C07
loc_8C0DB932:
	#data 0x00Dc
loc_8C0DB934:
	#data 0x00C0
loc_8C0DB936:
	#data 0x012c
loc_8C0DB938:
	#data 0x01A3
loc_8C0DB93A:
	#data 0x02A4
loc_8C0DB93C:
	#data 0x01D0
	#align4

loc_8C0DB940:
	#data bank04.loc_8c044F12
loc_8C0DB944:
	#data loc_8c0dB86c
loc_8C0DB948:
	#data bank15.loc_8c15D998
loc_8C0DB94C:
	#data bank12.loc_8c129560
loc_8C0DB950:
	#data bank12.loc_8c1294C8
loc_8C0DB954:
	#data bank15.loc_8c15D9A8
loc_8C0DB958:
	#data bank15.loc_8c15D9E0

;==============================================
loc_8C0DB95C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x10,r4 ; r4 set to 0x10
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DBA7C,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x10
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0DBA7E,pc),r0 ; r0 set to 0x130
	mov.l @r15,r3
	mov.l @(loc_8C0DBA88,pc),r4 ; r4 set to 0x8C26A518
	mov.w @(r0,r3),r2
	tst r2,r2
	bf/s loc_8C0DB9A6
	mov.w r2,@(r0,r14)
	mova @(loc_8C0DBA8C,pc),r0  ; r0 set to 0x8C0DBA8c
	fmov.s @r0,fr3
	mov.w @(loc_8C0DBA80,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DBA90,pc),r0  ; r0 set to 0x8C0DBA90
	bra loc_8C0DB9B8
	fmov.s @r0,fr2

loc_8c0db9a6:
	mova @(loc_8C0DBA94,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0DBA82,pc),r0
	fmov.s @(r0,r4),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DBA98,pc),r0
	fmov.s @r0,fr2

loc_8c0db9b8:
	mov 0x5C,r0
	fldi0 fr4
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DBA9C,pc),r0
	fmov.s @r0,fr3
	mov 0x19,r5
	mov.w @(loc_8C0DBA84,pc),r0
	mov 0x13,r6
	mov.l @(loc_8c0dbaa0,pc),r3
	fmov.s @(r0,r4),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0dbaa4,pc),r3
	mov 0x01,r2
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c0db9f6:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0dba44
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x20,r0
	mov.w r0,@(0x1C,r4)

loc_8c0dba44:
	mov.l @(loc_8c0dbaa8,pc),r3
	jmp @r3
	nop

;==============================================
loc_8c0dba4a:
	mov.b @(0x2,r5),r0
	mov 0x01,r6
	mov.l @(0x5C,PC),r2
	mov r6,r1
	extu.b r0,r0
	mov.b @r2,r3
	xor r6,r0
	shad r0,r1
	extu.b r3,r3
	tst r1,r3
	bf loc_8c0dba78
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0dba72
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)

loc_8c0dba72:
	mov.l @(0x34,PC),r3
	jmp @r3
	nop

loc_8c0dba78:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dba7c:
	#data 0x013C
loc_8c0dba7e:
	#data 0x0130
loc_8c0dba80:
	#data 0x008C
loc_8C0DBA82:
	#data 0x0088
loc_8C0DBA84:
	#data 0x0090
	#align4

loc_8c0dba88:
	#data 0x8C26A518
loc_8c0dba8c:
	#data 0x42A00000
loc_8c0dba90:
	#data 0xC0D55555
loc_8C0DBA94:
	#data 0xC2A00000
loc_8C0DBA98:
	#data 0x40D55555
loc_8C0DBA9C:
	#data 0xC34DB6DB
loc_8c0dbaa0:
	#data bank03.loc_8c034e8c
loc_8c0dbaa4:
	#data bank10.loc_8c104434
loc_8c0dbaa8:
	#data bank03.loc_8c034dee
loc_8c0dbaac:
	#data 0x8C2895F6

;==============================================
loc_8C0DBAB0:
	mov.w @(loc_8C0DBBAE,pc),r6 ; r6 set to 0x2A4
	add r5,r6 ; r6 ??? bc r5 is ???
	mov.b @(0x0B,r6),r0
	tst r0,r0
	bf loc_8C0DBAF0
	mov 0x05,r0 ; r0 set to 0x05
	mov.b r0,@(0x07,r4)
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(loc_8C0DBBB0,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	mov.b r5,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8C0DBAD4
	mova @(loc_8C0DBBB4,pc),r0  ; r0 set to 0x8C0DBBB4
	bra loc_8C0DBAD8
	fmov.s @r0,fr3

loc_8C0DBAD4:
	mova @(loc_8C0DBBB8,pc),r0  ; r0 init to 0x8C0DBBB8
	fmov.s @r0,fr3

loc_8C0DBAD8:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0DBBBC,pc),r0  ; r0 set to 0x8C0DBBBC, r0 set to 0x8C0DBBBc
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	bra loc_8C0DBB42
	fmov.s fr4,@(r0,r4)

loc_8C0DBAF0:
	mov.b @(0x0A,r6),r0
	tst r0,r0
	bf loc_8C0DBB06
	mov.b @(0x07,r4),r0
	mov 0x00,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0DBBB0,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C0DBB06:
	mova @(loc_8C0DBBC0,pc),r0  ; r0 init to 0x8C0DBBC0
	mov.l @(loc_8C0DBBC4,pc),r2 ; r2 set to 0x42AB6DB6
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	mov r0,r1 ; r1 set to 0x34
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x34
	add r5,r1 ; r1 ??? bc r5 is ???
	lds r2,fpul
	fmov.s @r1,fr2 ; r2 ??? bc r1 is ???
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov r0,r1 ; r1 set to 0x38
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x38
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @(r0,r4),fr1
	fmov.s @r1,fr2
	fsub fr3,fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fdiv fr4,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)

loc_8C0DBB42:
	mov.l @(loc_8C0DBBC8,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jmp @r3
	nop

;unused
	rts
	nop

;----------------------------------------------
loc_8C0DBB4C:
	mov.w @(0x5E,PC),r6
	add r5,r6
	mov.b @(0xB,r6),r0
	tst r0,r0
	bt loc_8c0dbb5c
	mov.b @(0xA,r6),r0
	tst r0,r0
	bt loc_8c0dbba8

loc_8C0DBB5C:
	mov.w @(0x52,PC),r0
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x01,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x05,r0
	mov.b r0,@(0x7,r4)
	mov.w @(0x32,PC),r0
	mov.b r5,@r4
	mov.b r5,@(r0,r4)
	add 0x04,r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0dbb8e
	mova @(0x28,PC),r0
	bra loc_8c0dbb92
	fmov @r0,fr2

loc_8C0DBB8E:
	mova @(0x28,PC),r0
	fmov @r0,fr2

loc_8C0DBB92:
	mov 0x5C,r0
	fldi0 fr4
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mova @(0x1C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)

loc_8C0DBBA8:
	mov.l @(0x1C,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DBBAE:
	#data 0x02A4
loc_8C0DBBB0:
	#data 0x012c
loc_8C0DBBB2:
	#data 0x0130
	#align4

loc_8C0DBBB4:
	#data 0xC0D55555
loc_8C0DBBB8:
	#data 0x40D55555
loc_8C0DBBBC:
	#data 0x40892492
loc_8C0DBBC0:
	#data 0x41000000
loc_8C0DBBC4:
	#data 0x42AB6DB6
loc_8C0DBBC8:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0DBBCC:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DBCC4,pc),r3 ; r3 set to 0x8C0332E0
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0DBC26
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DBCB8,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DBC26:
	lds.l @r15+,pr
	mov.l @(loc_8C0DBCC8,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DBC36:
	mov.l r4,@-r15
	mov.b @(0x5,r5),r0
	mov.w @(0x7C,PC),r4
	tst r0,r0
	bf.s loc_8c0dbc4c
	add r5,r4
	mov.w @(0x76,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0dbc54

loc_8C0DBC4C:
	mov 0x00,r0
	mov.b r0,@(0xB,r4)
	mov 0x01,r0
	mov.b r0,@(0xA,r4)

loc_8C0DBC54:
	mov.l @r15,r3
	mov.l @(0x74,PC),r1
	mov.b @(0x7,r3),r0
	mov.l @r15,r4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0DBC66:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x10,r4 ; r4 set to 0x10
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DBCBE,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x10
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0DBCC0,pc),r1 ; r1 set to 0x130
	mov.l @r15,r0 ; r0 ??? bc r15 is ???
	mov r1,r2 ; r2 set to 0x130
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.w @(r0,r1),r0
	mov.l @(loc_8C0DBCD0,pc),r4 ; r4 set to 0x8C26A518
	xor 0x01,r0
	mov.w r0,@r2
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DBCDc
	mova @(loc_8C0DBCD4,pc),r0  ; r0 set to 0x8C0DBCD4
	fmov.s @r0,fr3
	mov.w @(loc_8C0DBCC2,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DBCD8,pc),r0  ; r0 set to 0x8C0DBCD8
	bra loc_8C0DBCEe
	fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dbcb8:
	#data 0x012c
loc_8c0dbcba:
	#data 0x02a4
loc_8c0dbcbc:
	#data 0x01d0
loc_8c0dbcbe:
	#data 0x013c
loc_8c0dbcc0:
	#data 0x0130
loc_8c0dbcc2:
	#data 0x008c
	#align4

loc_8C0DBCC4:
	#data bank03.loc_8c0332E0
loc_8C0DBCC8:
	#data bank03.loc_8c034dee
loc_8C0DBCCC:
	#data bank15.loc_8c15D9F8
loc_8C0DBCD0:
	#data 0x8C26A518
loc_8C0DBCD4:
	#data 0x42A00000
loc_8C0DBCD8:
	#data 0xC0D55555

;==============================================
loc_8c0dbcdc:
	mova @(loc_8C0DBE10,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0DBE08,pc),r0
	fmov.s @(r0,r4),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8c0dbe14,pc),r0
	fmov.s @r0,fr2

loc_8c0dbcee:
	mov 0x5C,r0
	fldi0 fr4
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DBE18,pc),r0
	fmov.s @r0,fr3
	mov 0x19,r5
	mov.w @(loc_8C0DBE0A,pc),r0
	mov 0x14,r6
	mov.l @(loc_8c0dbe1c,pc),r3
	fmov.s @(r0,r4),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0dbe20,pc),r3
	mov 0x01,r2
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c0dbd2c:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0dbd7a
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x20,r0
	mov.w r0,@(0x1C,r4)

loc_8c0dbd7a:
	mov.l @(loc_8c0dbe24,pc),r3
	jmp @r3
	nop

;==============================================
loc_8c0dbd80:
	mov.b @(0x2,r5),r0
	mov 0x01,r6
	mov.l @(0xA0,PC),r2
	mov r6,r1
	extu.b r0,r0
	mov.b @r2,r3
	xor r6,r0
	shad r0,r1
	extu.b r3,r3
	tst r1,r3
	bf loc_8c0dbdae
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0dbda8
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)

loc_8c0dbda8:
	mov.l @(0x78,PC),r3
	jmp @r3
	nop

loc_8c0dbdae:
	rts
	nop

;==============================================
loc_8C0DBDB2:
	mov.w @(loc_8C0DBE0C,pc),r6 ; r6 set to 0x2A4
	add r5,r6 ; r6 ??? bc r5 is ???
	mov.b @(0x0B,r6),r0
	tst r0,r0
	bf loc_8C0DBDF2
	mov 0x05,r0 ; r0 set to 0x05
	mov.b r0,@(0x07,r4)
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(loc_8C0DBE0E,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	mov.b r5,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8C0DBDD6
	mova @(loc_8C0DBE2C,pc),r0  ; r0 set to 0x8C0DBE2c
	bra loc_8C0DBDDa
	fmov.s @r0,fr3

loc_8C0DBDD6:
	mova @(loc_8C0DBE14,pc),r0  ; r0 init to 0x8C0DBE14
	fmov.s @r0,fr3

loc_8C0DBDDA:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0DBE30,pc),r0  ; r0 set to 0x8C0DBE30, r0 set to 0x8C0DBE30
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	bra loc_8C0DBE70
	fmov.s fr4,@(r0,r4)

loc_8C0DBDF2:
	mov.b @(0x0A,r6),r0
	tst r0,r0
	bf loc_8C0DBE34
	mov.b @(0x07,r4),r0
	mov 0x00,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0DBE0E,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	rts
	mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dbe08:
	#data 0x0088
loc_8c0dbe0a:
	#data 0x0090
loc_8C0DBE0C:
	#data 0x02A4
loc_8C0DBE0E:
	#data 0x012c
	#align4

loc_8c0dbe10:
	#data 0xC2A00000
loc_8C0DBE14:
	#data 0x40D55555
loc_8c0dbe18:
	#data 0xC34DB6Db
loc_8C0DBE1C:
	#data bank03.loc_8c034e8c
loc_8C0DBE20:
	#data bank10.loc_8c104434
loc_8C0DBE24:
	#data bank03.loc_8c034dee
loc_8C0DBE28:
	#data 0x8C2895F6
loc_8C0DBE2C:
	#data 0xC0D55555
loc_8C0DBE30:
	#data 0x40892492

;==============================================
loc_8C0DBE34:
	mova @(loc_8C0DBF84,pc),r0  ; r0 init to 0x8C0DBF84
	mov.l @(loc_8C0DBF88,pc),r2 ; r2 set to 0x42AB6DB6
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	mov r0,r1 ; r1 set to 0x34
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x34
	add r5,r1 ; r1 ??? bc r5 is ???
	lds r2,fpul
	fmov.s @r1,fr2 ; r2 ??? bc r1 is ???
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov r0,r1 ; r1 set to 0x38
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x38
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @(r0,r4),fr1
	fmov.s @r1,fr2
	fsub fr3,fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fdiv fr4,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)

loc_8C0DBE70:
	mov.l @(loc_8C0DBF8C,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jmp @r3
	nop

;unused
	rts
	nop

;----------------------------------------------
loc_8C0DBE7A:
	mov.w @(0xFE,PC),r6
	add r5,r6
	mov.b @(0xB,r6),r0
	tst r0,r0
	bt loc_8c0dbe8a
	mov.b @(0xA,r6),r0
	tst r0,r0
	bt loc_8c0dbedc

loc_8C0DBE8A:
	mov.w @(0xF0,PC),r0
	mov.w @(0xEE,PC),r1
	mov.w @(r0,r5),r0
	add r4,r1
	xor 0x01,r0
	mov.w r0,@r1
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x01,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x05,r0
	mov.b r0,@(0x7,r4)
	mov.w @(0xCE,PC),r0
	mov.b r5,@r4
	mov.b r5,@(r0,r4)
	add 0x04,r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0dbec2
	mova @(0xD4,PC),r0
	bra loc_8c0dbec6
	fmov @r0,fr2

loc_8C0DBEC2:
	mova @(0xD4,PC),r0
	fmov @r0,fr2

loc_8C0DBEC6:
	mov 0x5C,r0
	fldi0 fr4
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)

loc_8C0DBEDC:
	mov.l @(0xAC,PC),r3
	jmp @r3
	nop

loc_8C0DBEE2:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DBFA0,pc),r3 ; r3 set to 0x8C0332E0
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0DBF3c
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DBF80,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DBF3C:
	lds.l @r15+,pr
	mov.l @(loc_8C0DBF8C,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DBF4C:
	mov.l r4,@-r15
	mov.b @(0x5,r5),r0
	mov.w @(0x28,PC),r4
	tst r0,r0
	bf.s loc_8c0dbf62
	add r5,r4
	mov.w @(0x26,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0dbf6a

loc_8C0DBF62:
	mov 0x00,r0
	mov.b r0,@(0xB,r4)
	mov 0x01,r0
	mov.b r0,@(0xA,r4)

loc_8C0DBF6A:
	mov.l @r15,r3
	mov.l @(0x34,PC),r1
	mov.b @(0x7,r3),r0
	mov.l @r15,r4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dbf7c:
	#data 0x02a4
loc_8c0dbf7e:
	#data 0x0130
loc_8c0dbf80:
	#data 0x012c
loc_8c0dbf82:
	#data 0x01d0
	#align4

loc_8C0DBF84:
	#data 0x41000000
loc_8C0DBF88:
	#data 0x42AB6DB6
loc_8C0DBF8C:
	#data bank03.loc_8c034dee
loc_8C0DBF90:
	#data 0x42CDB6Db
loc_8C0DBF94:
	#data 0xC0D55555
loc_8C0DBF98:
	#data 0x40D55555
loc_8C0DBF9c:
	#data 0x40892492
loc_8C0DBFA0:
	#data bank03.loc_8c0332E0
loc_8C0DBFA4:
	#data bank15.loc_8c15DA10

;==============================================
loc_8C0DBFA8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r4 ; r4 set to 0x20
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DC0D2,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	add 0xF1,r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	mov.l @(loc_8C0DC0DC,pc),r4 ; r4 set to 0x8C26A518
	tst r3,r3
	bf/s loc_8C0DBFEa
	mov.w r3,@(r0,r14)
	mova @(loc_8C0DC0E0,pc),r0  ; r0 set to 0x8C0DC0E0
	fmov.s @r0,fr3
	mov.w @(loc_8C0DC0D4,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC0E4,pc),r0  ; r0 set to 0x8C0DC0E4
	bra loc_8C0DBFFc
	fmov.s @r0,fr2

loc_8C0DBFEA:
	mova @(loc_8C0DC0E8,pc),r0  ; r0 init to 0x8C0DC0E8
	fmov.s @r0,fr3
	mov.w @(loc_8C0DC0D6,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC0EC,pc),r0  ; r0 set to 0x8C0DC0Ec
	fmov.s @r0,fr2

loc_8C0DBFFC:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0DC0FC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC0F0,pc),r0  ; r0 set to 0x8C0DC0F0, r0 set to 0x8C0DC0F0
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	mov.w @(loc_8C0DC0D8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov 0x10,r6 ; r6 set to 0x10, r6 set to 0x10
	fmov.s @(r0,r13),fr2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fldi0 fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC0F4,pc),r0  ; r0 set to 0x8C0DC0F4, r0 set to 0x8C0DC0F4
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC0F8,pc),r0  ; r0 set to 0x8C0DC0F8, r0 set to 0x8C0DC0F8
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DC100,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DC042:
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0DC0D8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0DC09c
	mov.b @(0x07,r4),r0
	mov.l @(loc_8C0DC104,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	add 0x01,r0 ; r0 set to 0x39, r0 set to 0x39, r0 set to 0x39
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0DC0D8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20, r0 set to 0x20
	jmp @r3
	mov.w r0,@(0x1C,r4)

loc_8C0DC09C:
	rts
	nop
	
;----------------------------------------------
loc_8C0DC0A0:
	mov.b @(0x2,r5),r0
	mov 0x01,r6
	mov.l @(0x60,PC),r2
	mov r6,r1
	extu.b r0,r0
	mov.b @r2,r3
	xor r6,r0
	shad r0,r1
	extu.b r3,r3
	tst r1,r3
	bf loc_8c0dc0ce
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0dc0c8
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)

loc_8C0DC0C8:
	mov.l @(0x38,PC),r3
	jmp @r3
	nop

loc_8C0DC0CE:
	rts
	nop

;----------------------------------------------
loc_8C0DC0D2:
	#data 0x013c
loc_8C0DC0D4:
	#data 0x008c
loc_8C0DC0D6:
	#data 0x0088
loc_8C0DC0D8:
	#data 0x041c
	#align4

loc_8C0DC0DC:
	#data 0x8C26A518
loc_8C0DC0E0:
	#data 0x42A00000
loc_8C0DC0E4:
	#data 0xC0D55555
loc_8C0DC0E8:
	#data 0xC2A00000
loc_8C0DC0EC:
	#data 0x40D55555
loc_8C0DC0F0:
	#data 0x42892492
loc_8C0DC0F4:
	#data 0x40092492
loc_8C0DC0F8:
	#data 0xBF4DB6Db
loc_8C0DC0FC:
	#data bank03.loc_8c034e8c
loc_8C0DC100:
	#data bank10.loc_8c104434
loc_8C0DC104:
	#data bank03.loc_8c034dee
loc_8C0DC108:
	#data 0x8C2895F6

;==============================================
loc_8C0DC10C:
	mov.w @(loc_8C0DC248,pc),r6 ; r6 set to 0x2A4
	add r5,r6 ; r6 ??? bc r5 is ???
	mov.b @(0x0B,r6),r0
	tst r0,r0
	bf loc_8C0DC12e
	mov 0x05,r0 ; r0 set to 0x05
	mov.l @(loc_8C0DC254,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r0,@(0x07,r4)
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(loc_8C0DC24A,pc),r0 ; r0 set to 0x12c
	mov 0x11,r6 ; r6 set to 0x11
	mov.b r5,@r4
	mov.b r5,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.w r0,@(0x1C,r4)
	jmp @r3
	mov 0x19,r5

loc_8C0DC12E:
	mov.b @(0x0A,r6),r0
	tst r0,r0
	bf loc_8C0DC144
	mov.b @(0x07,r4),r0
	mov 0x00,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0DC24A,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C0DC144:
	mova @(loc_8C0DC258,pc),r0  ; r0 init to 0x8C0DC258
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	mov r0,r1 ; r1 set to 0x34
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x34
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov r0,r1 ; r1 set to 0x38
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov r0,r1 ; r1 set to 0x38
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	rts
	nop

;----------------------------------------------
loc_8C0DC17C:
	mov.w @(0xC8,PC),r6
	add r5,r6
	mov.b @(0xB,r6),r0
	tst r0,r0
	bt loc_8c0dc18c
	mov.b @(0xA,r6),r0
	tst r0,r0
	bt loc_8c0dc1b6

loc_8C0DC18C:
	mov.w @(0xBC,PC),r0
	mov 0x11,r6
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	mov.l @(0xB8,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	mov 0x01,r5
	fmov fr3,@(r0,r4)
	mov 0x05,r0
	mov.b r0,@(0x7,r4)
	mov.w @(0x9E,PC),r0
	mov.b r5,@r4
	mov.b r5,@(r0,r4)
	mov 0x20,r0
	mov.w r0,@(0x1C,r4)
	jmp @r3
	mov 0x19,r5

loc_8C0DC1B6:
	rts
	nop

;----------------------------------------------
loc_8C0DC1BA:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DC1D8
	mov.b @(0x07,r4),r0
	mov.l @(loc_8C0DC25C,pc),r3 ; r3 set to 0x8C034DEe
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0DC24E,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	mov 0x38,r0 ; r0 set to 0x38
	jmp @r3
	fmov.s fr3,@(r0,r4)

loc_8C0DC1D8:
	mov.w @(loc_8C0DC24C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2
	tst r2,r2
	bf loc_8C0DC1E6
	mova @(loc_8C0DC260,pc),r0  ; r0 set to 0x8C0DC260
	bra loc_8C0DC1Ea
	fmov.s @r0,fr3

loc_8C0DC1E6:
	mova @(loc_8C0DC264,pc),r0  ; r0 init to 0x8C0DC264
	fmov.s @r0,fr3

loc_8C0DC1EA:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r5),fr4
	mova @(loc_8C0DC258,pc),r0  ; r0 set to 0x8C0DC258, r0 set to 0x8C0DC258
	fmov.s @r0,fr5
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov r0,r1 ; r1 set to 0x34, r1 set to 0x34
	fadd fr3,fr4
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	fsub fr3,fr4
	fmov.s @(r0,r4),fr3
	fdiv fr5,fr4
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov r0,r1 ; r1 set to 0x38, r1 set to 0x38
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fmov.s @r1,fr3
	mov.w @(loc_8C0DC24E,pc),r1 ; r1 set to 0x41C, r1 set to 0x41c
	add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr5,fr2
	fadd fr2,fr3
	rts
	fmov.s fr3,@(r0,r4)

;----------------------------------------------
loc_8C0DC220:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x22,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0dc242
	mov.b @(0x7,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0xE,PC),r0
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C0DC242:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DC248:
	#data 0x02A4
loc_8C0DC24A:
	#data 0x012c
loc_8C0DC24C:
	#data 0x0130
loc_8C0DC24E:
	#data 0x041c
loc_8c0dc250:
	#data 0x0141
	#align4

loc_8C0DC254:
	#data bank03.loc_8c034e8c
loc_8C0DC258:
	#data 0x41000000
loc_8C0DC25C:
	#data bank03.loc_8c034dee
loc_8C0DC260:
	#data 0x42A00000
loc_8C0DC264:
	#data 0xC2A00000

;==============================================
loc_8C0DC268:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0DC384,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0DC2B0
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DC37C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_8C0DC28c
	mova @(loc_8C0DC388,pc),r0  ; r0 set to 0x8C0DC388
	bra loc_8C0DC290
	fmov.s @r0,fr3

loc_8C0DC28C:
	mova @(loc_8C0DC38C,pc),r0  ; r0 init to 0x8C0DC38c
	fmov.s @r0,fr3

loc_8C0DC290:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov.l @(loc_8C0DC390,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov r14,r4
	fmov.s fr4,@(r0,r14)
	mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
	lds.l @r15+,pr
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	jmp @r3
	mov.l @r15+,r14

loc_8C0DC2B0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC2B6:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DC394,pc),r3 ; r3 set to 0x8C0332E0
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0DC310
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DC37E,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC310:
	lds.l @r15+,pr
	mov.l @(loc_8C0DC384,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC320:
	mov r4,r3
	mov.l @(loc_8C0DC398,pc),r1 ; r1 set to 0x8C15DA34
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DC332:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x10,r4 ; r4 set to 0x10
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0DC37C,pc),r1 ; r1 set to 0x130
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DC380,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	add 0xF1,r0 ; r0 set to 0x130
	mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???
	mov.l @(loc_8C0DC39C,pc),r4 ; r4 set to 0x8C26A518
	xor 0x01,r0
	mov.w r0,@r1
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DC3A8
	mova @(loc_8C0DC3A0,pc),r0  ; r0 set to 0x8C0DC3A0
	fmov.s @r0,fr3
	mov.w @(loc_8C0DC382,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC3A4,pc),r0  ; r0 set to 0x8C0DC3A4
	bra loc_8C0DC3Ba
	fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DC37C:
	#data 0x0130
loc_8C0DC37E:
	#data 0x012c
loc_8C0DC380:
	#data 0x013c
loc_8C0DC382:
	#data 0x008c
	#align4

loc_8C0DC384:
	#data bank03.loc_8c034dee
loc_8C0DC388:
	#data 0xC0E2AAAa
loc_8C0DC38C:
	#data 0x40E2AAAa
loc_8C0DC390:
	#data bank03.loc_8c034e8c
loc_8C0DC394:
	#data bank03.loc_8c0332E0
loc_8C0DC398:
	#data bank15.loc_8c15DA34
loc_8C0DC39C:
	#data 0x8C26A518
loc_8C0DC3A0:
	#data 0x42A00000
loc_8C0DC3A4:
	#data 0xC0D55555

;==============================================
loc_8C0DC3A8:
	mova @(loc_8C0DC4B4,pc),r0  ; r0 init to 0x8C0DC4B4
	fmov.s @r0,fr3
	mov.w @(loc_8C0DC4AC,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC4B8,pc),r0  ; r0 set to 0x8C0DC4B8
	fmov.s @r0,fr2

loc_8C0DC3BA:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr2,@(r0,r14)
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	mov.w @(loc_8C0DC4AE,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
	mov.l @(loc_8C0DC4BC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DC4C0,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DC3F2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0DC4C4,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r5,r13
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
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
	mov.w @(loc_8C0DC4B0,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0, r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???, r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0DC448
	mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03, r0 set to 0x03
	bra loc_8C0DC49e
	mov.b r0,@(0x07,r14)

loc_8C0DC448:
	mov.w @(loc_8C0DC4B2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0DC456
	mova @(loc_8C0DC4C8,pc),r0  ; r0 set to 0x8C0DC4C8
	bra loc_8C0DC45a
	fmov.s @r0,fr3

loc_8c0dc456:
	mova @(loc_8c0dc4b4,pc),r0
	fmov.s @r0,fr3

loc_8c0dc45a:
	mov 0x34,r0
	fmov.s @(r0,r13),fr4
	mov.w @(loc_8c0dc4b2,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8c0dc470
	fadd fr3,fr4
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0dc480

loc_8c0dc470:
	mov.w @(loc_8c0dc4b2,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0dc49e
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0dc49e

loc_8c0dc480:
	mov.b @(0x07,r14),r0
	mov 0x19,r6
	mov.l @(loc_8c0dc4bc,pc),r3
	mov r6,r5
	add 0x01,r0
	mov r14,r4
	mov.b r0,@(0x07,r14)
	mov 0x34,r0
	fmov.s fr4,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0DC49E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC4A6:
	mov.l @(loc_8C0DC4C4,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DC4AC:
	#data 0x0088
loc_8C0DC4AE:
	#data 0x041c
loc_8C0DC4B0:
	#data 0x01D0
loc_8C0DC4B2:
	#data 0x0130
	#align4

loc_8C0DC4B4:
	#data 0xC2A00000
loc_8C0DC4B8:
	#data 0x40D55555
loc_8C0DC4BC:
	#data bank03.loc_8c034e8c
loc_8C0DC4C0:
	#data bank10.loc_8c104434
loc_8C0DC4C4:
	#data bank03.loc_8c034dee
loc_8C0DC4C8:
	#data 0x42A00000

;==============================================
loc_8C0DC4CC:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DC5A0,pc),r3 ; r3 set to 0x8C0332E0
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0DC526
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DC598,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC526:
	lds.l @r15+,pr
	mov.l @(loc_8C0DC5A4,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC536:
	mov r4,r3
	mov.l @(loc_8C0DC5A8,pc),r1 ; r1 set to 0x8C15DA44
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0DC548:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x10,r4 ; r4 set to 0x10
	mov.l r13,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov r5,r13
	mov.w @(loc_8C0DC59C,pc),r1 ; r1 set to 0x130
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DC59A,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DC59C,pc),r0 ; r0 set to 0x130
	mov.l @(loc_8C0DC5AC,pc),r4 ; r4 set to 0x8C26A518
	mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???
	xor 0x01,r0
	mov.w r0,@r1
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DC5B8
	mova @(loc_8C0DC5B0,pc),r0  ; r0 set to 0x8C0DC5B0
	fmov.s @r0,fr3 ; r3 ??
	mov.w @(loc_8C0DC59E,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC5B4,pc),r0  ; r0 set to 0x8C0DC5B4
	bra loc_8C0DC5Ca
	fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DC598:
	#data 0x012c
loc_8C0DC59A:
	#data 0x013c
loc_8C0DC59C:
	#data 0x0130
loc_8C0DC59E:
	#data 0x008c
	#align4

loc_8C0DC5A0:
	#data bank03.loc_8c0332E0
loc_8C0DC5A4:
	#data bank03.loc_8c034dee
loc_8C0DC5A8:
	#data bank15.loc_8c15DA44
loc_8C0DC5AC:
	#data 0x8C26A518
loc_8C0DC5B0:
	#data 0x42A00000
loc_8C0DC5B4:
	#data 0xC0D55555

;==============================================
loc_8C0DC5B8:
	mova @(loc_8C0DC6B8,pc),r0  ; r0 init to 0x8C0DC6B8
	fmov.s @r0,fr3
	mov.w @(loc_8C0DC6AE,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC6BC,pc),r0  ; r0 set to 0x8C0DC6Bc
	fmov.s @r0,fr2

loc_8C0DC5CA:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0DC6C0,pc),r1 ; r1 set to 0x40892492, r1 set to 0x40892492
	fmov.s fr2,@(r0,r14)
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	mov.w @(loc_8C0DC6B0,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
	lds r1,fpul
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	mov.l @(loc_8C0DC6C4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DC6C8,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DC60E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0DC6CC,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r5,r13
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
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
	mov.w @(loc_8C0DC6B2,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0, r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???, r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0DC664
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04, r0 set to 0x04
	bra loc_8C0DC6A6
	mov.b r0,@(0x07,r14)

loc_8C0DC664:
	mov.w @(loc_8C0DC6B4,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0DC672
	mova @(loc_8C0DC6D0,pc),r0  ; r0 set to 0x8C0DC6D0
	bra loc_8C0DC676
	fmov.s @r0,fr3

loc_8c0dc672:
	mova @(loc_8c0dc6b8,pc),r0
	fmov.s @r0,fr3

loc_8c0dc676:
	mov 0x34,r0
	fmov.s @(r0,r13),fr4
	mov.w @(loc_8c0dc6b4,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8c0dc68c
	fadd fr3,fr4
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0dc69c

loc_8c0dc68c:
	mov.w @(loc_8c0dc6b4,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0dc6a6
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0dc6a6

loc_8c0dc69c:
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r13)

loc_8C0DC6A6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DC6AE:
	#data 0x0088
loc_8C0DC6B0:
	#data 0x041c
loc_8C0DC6B2:
	#data 0x01D0
loc_8C0DC6B4:
	#data 0x0130
	#align4

loc_8C0DC6B8:
	#data 0xC2A00000
loc_8C0DC6BC:
	#data 0x40D55555
loc_8C0DC6C0:
	#data 0x40892492
loc_8C0DC6C4:
	#data bank03.loc_8c034e8c
loc_8C0DC6C8:
	#data bank10.loc_8c104434
loc_8C0DC6CC:
	#data bank03.loc_8c034dee
loc_8C0DC6D0:
	#data 0x42A00000

;==============================================
loc_8C0DC6D4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0DC7C8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r5,r13
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
	mov.w @(loc_8C0DC7BE,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0DC72a
	mov 0x04,r0 ; r0 set to 0x04
	bra loc_8C0DC780
	mov.b r0,@(0x07,r14)

loc_8C0DC72A:
	mov.w @(loc_8C0DC7C0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0DC738
	mova @(loc_8C0DC7CC,pc),r0  ; r0 set to 0x8C0DC7Cc
	bra loc_8C0DC73c
	fmov.s @r0,fr3

loc_8c0dc738:
	mova @(loc_8C0DC7D0,pc),r0
	fmov.s @r0,fr3

loc_8c0dc73c:
	mov 0x34,r0
	fmov.s @(r0,r13),fr4
	mov.w @(loc_8c0dc7c0,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8c0dc752
	fadd fr3,fr4
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0dc762

loc_8c0dc752:
	mov.w @(loc_8c0dc7c0,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0dc780
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0dc780

loc_8c0dc762:
	mov.b @(0x07,r14),r0
	mov 0x14,r6
	mov.l @(loc_8c0dc7d4,pc),r3
	mov 0x19,r5
	add 0x01,r0
	mov r14,r4
	mov.b r0,@(0x07,r14)
	mov 0x34,r0
	fmov.s fr4,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0DC780:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC788:
	mov.w @(loc_8C0DC7BE,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0DC79e
	mov.l @(loc_8C0DC7D4,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x04,r0 ; r0 set to 0x04
	mov 0x15,r6 ; r6 set to 0x15
	mov.b r0,@(0x07,r4)
	jmp @r3
	mov 0x19,r5

loc_8C0DC79E:
	mov.w @(loc_8C0DC7C2,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8C0DC7B4
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DC7C4,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DC7B4:
	mov.l @(loc_8C0DC7C8,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;unused
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DC7BE:
	#data 0x01D0
loc_8C0DC7C0:
	#data 0x0130
loc_8C0DC7C2:
	#data 0x0141
loc_8C0DC7C4:
	#data 0x012c
	#align4

loc_8C0DC7C8:
	#data bank03.loc_8c034dee
loc_8C0DC7CC:
	#data 0x424EAAAa
loc_8c0dc7d0:
	#data 0xC24EAAAa
loc_8C0DC7D4:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0DC7D8:
mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DC8AC,pc),r3 ; r3 set to 0x8C0332E0
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0DC832
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DC8A4,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC832:
	lds.l @r15+,pr
	mov.l @(loc_8C0DC8B0,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC842:
	mov r4,r3
	mov.l @(loc_8C0DC8B4,pc),r1 ; r1 set to 0x8C15DA58
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0DC854:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x10,r4 ; r4 set to 0x10
	mov.l r13,@-r15
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov r5,r13
	mov.w @(loc_8C0DC8A8,pc),r1 ; r1 set to 0x130
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DC8A6,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DC8A8,pc),r0 ; r0 set to 0x130
	mov.l @(loc_8C0DC8B8,pc),r4 ; r4 set to 0x8C26A518
	mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???
	xor 0x01,r0
	mov.w r0,@r1
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DC8C4
	mova @(loc_8C0DC8BC,pc),r0  ; r0 set to 0x8C0DC8Bc
	fmov.s @r0,fr3 ; r3 ??
	mov.w @(loc_8C0DC8AA,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DC8C0,pc),r0  ; r0 set to 0x8C0DC8C0
	bra loc_8C0DC8D6
	fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DC8A4:
	#data 0x012c
loc_8C0DC8A6:
	#data 0x013c
loc_8C0DC8A8:
	#data 0x0130
loc_8C0DC8AA:
	#data 0x008c
	#align4

loc_8C0DC8AC:
	#data bank03.loc_8c0332E0
loc_8C0DC8B0:
	#data bank03.loc_8c034dee
loc_8C0DC8B4:
	#data bank15.loc_8c15DA58
loc_8C0DC8B8:
	#data 0x8C26A518
loc_8C0DC8BC:
	#data 0x42A00000
loc_8C0DC8C0:
	#data 0xC0D55555

;==============================================
loc_8C0DC8C4:
	mova @(loc_8C0DC9FC,pc),r0  ; r0 init to 0x8C0DC9Fc
	fmov.s @r0,fr3
	mov.w @(loc_8C0DC9F4,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DCA00,pc),r0  ; r0 set to 0x8C0DCA00
	fmov.s @r0,fr2

loc_8C0DC8D6:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr2,@(r0,r14)
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	mov.w @(loc_8C0DC9F6,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov 0x1A,r6 ; r6 set to 0x1A, r6 set to 0x1a
	mov.l @(loc_8C0DCA04,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DCA08,pc),r2 ; r2 set to 0x8C0D886E, r2 set to 0x8C0D886e
	mov r14,r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	mov 0x34,r6 ; r6 set to 0x34, r6 set to 0x34
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C0DCA0C,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.b r3,@r14
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DC918:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0DCA10,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
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
	mov.w @(loc_8C0DC9F8,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0, r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???, r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0DC976
	mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03, r0 set to 0x03
	bra loc_8C0DC9E0
	mov.b r0,@(0x07,r14)

loc_8C0DC976:
	mov.w @(loc_8C0DC9FA,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0DC984
	mova @(loc_8C0DCA14,pc),r0  ; r0 set to 0x8C0DCA14
	bra loc_8C0DC988
	fmov.s @r0,fr3

loc_8c0dc984:
	mova @(loc_8C0DCA18,pc),r0
	fmov.s @r0,fr3

loc_8c0dc988:
	mov 0x34,r0
	fmov.s @(r0,r13),fr4
	mov.w @(loc_8c0dc9fa,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8c0dc99e
	fadd fr3,fr4
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0dc9ae

loc_8c0dc99e:
	mov.w @(loc_8c0dc9fa,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0dc9e0
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0dc9e0

loc_8c0dc9ae:
	mov.b @(0x07,r14),r0
	mov r13,r2
	mov.l @(loc_8c0dca1c,pc),r3
	mov r14,r1
	add 0x01,r0
	add 0x34,r2
	mov.b r0,@(0x07,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0dc9fa,pc),r0
	mov 0x01,r3
	mov 0x1B,r6
	mov r14,r4
	mov.w @(r0,r14),r2
	mov 0x19,r5
	xor r3,r2
	mov.w r2,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r13)
	lds.l @r15+,pr
	mov.l @(loc_8c0dca04,pc),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0DC9E0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DC9E8:
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0DCA10,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DC9F4:
	#data 0x0088
loc_8C0DC9F6:
	#data 0x041c
loc_8C0DC9F8:
	#data 0x01D0
loc_8C0DC9FA:
	#data 0x0130
	#align4

loc_8C0DC9FC:
	#data 0xC2A00000
loc_8C0DCA00:
	#data 0x40D55555
loc_8C0DCA04:
	#data bank03.loc_8c034e8c
loc_8C0DCA08:
	#data loc_8c0d886e
loc_8C0DCA0C:
	#data bank10.loc_8c104434
loc_8C0DCA10:
	#data bank03.loc_8c034dee
loc_8C0DCA14:
	#data 0x42B40000
loc_8c0dca18:
	#data 0xC2B40000
loc_8C0DCA1C:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0DCA20:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DCAC8,pc),r3 ; r3 set to 0x8C0332E0
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0DCA7a
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DCAC4,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DCA7A:
	lds.l @r15+,pr
	mov.l @(loc_8C0DCACC,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DCA8A:
	mov r4,r3
	mov.l @(loc_8C0DCAD0,pc),r1 ; r1 set to 0x8C15DA68
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0DCA9C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0DCAC6,pc),r1 ; r1 set to 0x130
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DCAC6,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???
	xor 0x01,r0
	mov.w r0,@r1
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DCAD8
	mova @(loc_8C0DCAD4,pc),r0  ; r0 set to 0x8C0DCAD4
	bra loc_8C0DCADc
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DCAC4:
	#data 0x012c
loc_8C0DCAC6:
	#data 0x0130
	#align4

loc_8C0DCAC8:
	#data bank03.loc_8c0332E0
loc_8C0DCACC:
	#data bank03.loc_8c034dee
loc_8C0DCAD0:
	#data bank15.loc_8c15DA68
loc_8C0DCAD4:
	#data 0x42A00000

;==============================================
loc_8C0DCAD8:
	mova @(loc_8C0DCC20,pc),r0  ; r0 init to 0x8C0DCC20
	fmov.s @r0,fr3

loc_8C0DCADC:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(loc_8C0DCC28,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
	fmov.s @(r0,r13),fr2
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	fldi0 fr4
	mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DCC24,pc),r0  ; r0 set to 0x8C0DCC24, r0 set to 0x8C0DCC24
	fmov.s @r3,fr2
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0DCC34,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0DCC2C,pc),r0  ; r0 set to 0x8C0DCC2C, r0 set to 0x8C0DCC2c
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DCC30,pc),r0  ; r0 set to 0x8C0DCC30, r0 set to 0x8C0DCC30
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DCC38,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DCB2A:
mov.l r14,@-r15
mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	mov.l r13,@-r15
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	mov r5,r13
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0DCC1C,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0DCBA4
	mov.b @(0x07,r14),r0
	mov r13,r5
	mov.l @(loc_8C0DCC3C,pc),r6 ; r6 set to 0x8C15D968, r6 set to 0x8C15D968, r6 set to 0x8C15D968
	add 0x01,r0 ; r0 set to 0x39, r0 set to 0x39, r0 set to 0x39
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DCC1C,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00, r0 set to 0x00
	mov.w r0,@(0x1C,r13)
	bsr loc_8C0DD708
	mov r14,r4
	mov r13,r5
	bsr loc_8C0DD778
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0DCC40,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0DCBA4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DCBAC:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c0dd778
	mov.l r4,@r15
	tst r0,r0
	bf loc_8c0dcbc0
	mov.l @r15,r3
	mov.b @(0x7,r3),r0
	add 0x01,r0
	mov.b r0,@(0x7,r3)

loc_8C0DCBC0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0DCBC8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0DCC40,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0DCC1E,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0DCBFc
	mov.b @(0x07,r14),r0
	mov r14,r5
	mov r14,r4
	mov 0x07,r6 ; r6 set to 0x07
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x07,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.w r0,@(0x1C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0DCC44,pc),r3 ; r3 set to 0x8C0D886e
	jmp @r3
	mov.l @r15+,r14

loc_8C0DCBFC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DCC04:
	mov.l @(loc_8C0DCC40,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

loc_8C0DCC0A:
	mov r4,r3
	mov.l @(loc_8C0DCC48,pc),r1 ; r1 set to 0x8C15DA7c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DCC1C:
	#data 0x041c
loc_8C0DCC1E:
	#data 0x0141
	#align4

loc_8C0DCC20:
	#data 0xC2A00000
loc_8C0DCC24:
	#data 0x42092492
loc_8C0DCC28:
	#data 0x8C26A5A8
loc_8C0DCC2C:
	#data 0xC0892492
loc_8C0DCC30:
	#data 0xBF4DB6Db
loc_8C0DCC34:
	#data bank03.loc_8c034e8c
loc_8C0DCC38:
	#data bank10.loc_8c104434
loc_8C0DCC3C:
	#data bank15.loc_8c15D968
loc_8C0DCC40:
	#data bank03.loc_8c034dee
loc_8C0DCC44:
	#data loc_8c0d886e
loc_8C0DCC48:
	#data bank15.loc_8c15DA7c

;==============================================
loc_8C0DCC4C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x0C,r3 ; r3 set to 0x0c
	mov.l r13,@-r15
	mov 0x01,r2 ; r2 set to 0x01
	mov r5,r13
	mov.w @(loc_8C0DCDC0,pc),r1 ; r1 set to 0x130
	mov.l r12,@-r15
	add r14,r1 ; r1 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DCDBE,pc),r0 ; r0 set to 0x12d
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x12e
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	add 0x01,r3
	mov.w r3,@(r0,r14)
	add 0x02,r0 ; r0 set to 0x130
	mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???
	xor 0x01,r0
	mov.w r0,@r1
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DCC8a
	mova @(loc_8C0DCDC4,pc),r0  ; r0 set to 0x8C0DCDC4
	bra loc_8C0DCC8e
	fmov.s @r0,fr3

loc_8c0dcc8a:
	mova @(loc_8C0DCDC8,pc),r0
	fmov.s @r0,fr3

loc_8c0dcc8e:
	mov 0x34,r0
	mov.l @(loc_8C0DCDD0,pc),r3
	fmov.s @(r0,r13),fr2
	mov 0x16,r5
	fldi0 fr4
	mov 0x28,r6
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DCDCC,pc),r0
	fmov.s @r3,fr2
	fmov.s @r0,fr3
	mov 0x38,r0
	mov.l @(loc_8c0dcdd8,pc),r3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0DCDD4,pc),r0
	fmov.s @r0,fr2
	mov 0x60,r0
	fmov.s fr2,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0dcddc,pc),r12
	mov r14,r5
	mov 0x35,r6
	jsr @r12
	mov r14,r4
	mov r14,r5
	mov 0x36,r6
	jsr @r12
	mov r14,r4
	mov r14,r5
	mov 0x37,r6
	jsr @r12
	mov r14,r4
	mov r14,r5
	mov 0x38,r6
	jsr @r12
	mov r14,r4
	mov.l @(loc_8c0dcde0,pc),r3
	mov 0x01,r2
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0dccfc:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0DCDE4,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0DCDC2,pc),r0
	fmov.s @(r0,r5),fr4
	fadd fr3,fr4
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fcmp/gt fr4,fr2
	bt loc_8c0dcd5c
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x08,r0
	mov.w r0,@(0x1C,r4)
	mova @(loc_8C0DCDE8,pc),r0
	fmov.s @r0,fr2
	mov 0x6C,r0
	fmov.s fr2,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r5)

loc_8c0dcd5c:
	rts
	nop

;----------------------------------------------
loc_8c0dcd60:
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
	bf loc_8c0dcdb8
	mov.b @(0x7,r4),r0
	mov 0x30,r3
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mov 0x70,r0
	fmov fr3,@(r0,r4)

loc_8c0dcdb8:
	mov.l @(0x30,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dcdbe:
	#data 0x012D
loc_8c0dcdc0:
	#data 0x0130
loc_8C0DCDC2:
	#data 0x041C
	#align4

loc_8c0dcdc4:
	#data 0x43055555
loc_8C0DCDC8:
	#data 0xC3055555
loc_8C0DCDCC:
	#data 0x42092492
loc_8C0DCDD0:
	#data 0x8C26A5A8
loc_8C0DCDD4:
	#data 0xC1092492
loc_8c0dcdd8:
	#data bank03.loc_8c034e8c
loc_8c0dcddc:
	#data loc_8c0d886e
loc_8c0dcde0:
	#data bank10.loc_8c104434
loc_8C0DCDE4:
	#data 0x424DB6DB
loc_8C0DCDE8:
	#data 0x40092492
loc_8c0dcdec:
	#data bank03.loc_8C034DEE

;==============================================
loc_8C0DCDF0:
	mov.l r14,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x70,r0 ; r0 set to 0x70
	mov r4,r14
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov r14,r3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0DCED8,pc),r0  ; r0 set to 0x8C0DCED8
	fmov.s @r0,fr15
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	neg r0,r0
	add 0x50,r0
	and 0x3F,r0
	shll8 r0
	shll2 r0
	mov.w r0,@r15
	mov 0x38,r0 ; r0 set to 0x38
	add r0,r3
	mov.l r3,@-r15
	mov.l @(loc_8C0DCEDC,pc),r3 ; r3 set to 0x8C11E860
	mov.w @(0x04,r15),r0
	jsr @r3
	mov r0,r4 ; r4 set to 0x38
	fmul fr0,fr15
	mova @(loc_8C0DCEE0,pc),r0  ; r0 set to 0x8C0DCEE0
	fmov.s @r0,fr0 ; r0 ??
	mova @(loc_8C0DCEE4,pc),r0  ; r0 set to 0x8C0DCEE4
	mov.l @r15+,r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	fmul fr0,fr15
	fmov.s @r0,fr0 ; r0 ??
	mova @(loc_8C0DCEE8,pc),r0  ; r0 set to 0x8C0DCEE8
	fmov.s @r2,fr3 ; r3 ??? bc r2 is ???
	fdiv fr0,fr15
	fmov.s @r0,fr0 ; r0 ??
	mova @(loc_8C0DCEEC,pc),r0  ; r0 set to 0x8C0DCEEc
	fdiv fr0,fr15
	fmov.s @r0,fr0 ; r0 ??
	mov 0x22,r0 ; r0 set to 0x22
	fmac fr0,fr15,fr3
	fmov.s fr3,@r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x3F,r3 ; r3 set to 0x3f
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0DCEF0,pc),r1 ; r1 set to 0x8C034DEe
	fmov.s @r15+,fr15
	jmp @r1
	mov.l @r15+,r14

loc_8C0DCE66:
	mov r4,r3
	mov.l @(loc_8C0DCEF4,pc),r1 ; r1 set to 0x8C15DA8c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0DCE78:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x10,r4 ; r4 set to 0x10
	mov.l r13,@-r15
	mov 0x01,r3 ; r3 set to 0x01
	mov r5,r13
	mov.w @(loc_8C0DCED4,pc),r1 ; r1 set to 0x130
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DCED2,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov 0x18,r4 ; r4 set to 0x18
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	add 0xEE,r0 ; r0 set to 0x12d
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x12e
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0DCEF8,pc),r4 ; r4 set to 0x8C26A518
	add 0x02,r3
	mov.w r3,@(r0,r14)
	add 0x02,r0 ; r0 set to 0x130
	mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???
	xor 0x01,r0
	mov.w r0,@r1
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DCF04
	mova @(loc_8C0DCEFC,pc),r0  ; r0 set to 0x8C0DCEFc
	fmov.s @r0,fr3
	mov.w @(loc_8C0DCED6,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DCF00,pc),r0  ; r0 set to 0x8C0DCF00
	bra loc_8C0DCF16
	fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DCED2:
	#data 0x013c
loc_8C0DCED4:
	#data 0x0130
loc_8C0DCED6:
	#data 0x008c
	#align4

loc_8C0DCED8:
	#data 0x48480000
loc_8C0DCEDC:
	#data bank11.loc_8c11E860
loc_8C0DCEE0:
	#data 0x447A0000
loc_8C0DCEE4:
	#data 0x47F42400
loc_8C0DCEE8:
	#data 0x43800000
loc_8C0DCEEC:
	#data 0x40092492
loc_8C0DCEF0:
	#data bank03.loc_8c034dee
loc_8C0DCEF4:
	#data bank15.loc_8c15DA8c
loc_8C0DCEF8:
	#data 0x8C26A518
loc_8C0DCEFC:
	#data 0x42A00000
loc_8C0DCF00:
	#data 0xC0BAAAAa

;==============================================
loc_8C0DCF04:
	mova @(loc_8C0DD038,pc),r0  ; r0 init to 0x8C0DD038
	fmov.s @r0,fr3
	mov.w @(loc_8C0DD02E,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DD03C,pc),r0  ; r0 set to 0x8C0DD03c
	fmov.s @r0,fr2

loc_8C0DCF16:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr2,@(r0,r14)
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	mov.w @(loc_8C0DD030,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov 0x1C,r6 ; r6 set to 0x1C, r6 set to 0x1c
	mov.l @(loc_8C0DD040,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DD044,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DCF4E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0DD048,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r5,r13
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
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
	mov.w @(loc_8C0DD032,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0, r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???, r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0DCFA4
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04, r0 set to 0x04
	bra loc_8C0DCFF6
	mov.b r0,@(0x07,r14)

loc_8C0DCFA4:
	mov.w @(loc_8C0DD034,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0DCFB2
	mova @(loc_8C0DD04C,pc),r0  ; r0 set to 0x8C0DD04c
	bra loc_8C0DCFB6
	fmov.s @r0,fr3

loc_8c0dcfb2:
	mova @(loc_8C0DD050,pc),r0
	fmov.s @r0,fr3

loc_8c0dcfb6:
	mov 0x34,r0
	fmov.s @(r0,r13),fr4
	mov.w @(loc_8c0dd034,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8c0dcfcc
	fadd fr3,fr4
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0dcfdc

loc_8c0dcfcc:
	mov.w @(loc_8c0dd034,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0dcff6
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0dcff6

loc_8c0dcfdc:
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8c0dd040,pc),r3
	mov 0x1D,r6
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x34,r0
	fmov.s fr4,@(r0,r14)
	mov 0x19,r5
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0DCFF6:
lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DCFFE:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x44,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0dd020
	mov.l @r15,r3
	mov.b @(0x7,r3),r0
	add 0x01,r0
	mov.b r0,@(0x7,r3)
	mov 0x00,r0
	mov.l @(0x4,r15),r3
	mov.w r0,@(0x1C,r3)

loc_8C0DD020:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0DD028:
	mov.l @(loc_8C0DD048,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DD02E:
	#data 0x0088
loc_8C0DD030:
	#data 0x041c
loc_8C0DD032:
	#data 0x01D0
loc_8C0DD034:
	#data 0x0130
	#align4

loc_8C0DD038:
	#data 0xC2A00000
loc_8C0DD03C:
	#data 0x40BAAAAa
loc_8C0DD040:
	#data bank03.loc_8c034e8c
loc_8C0DD044:
	#data bank10.loc_8c104434
loc_8C0DD048:
	#data bank03.loc_8c034dee
loc_8C0DD04C:
	#data 0x42B40000
loc_8c0dd050:
	#data 0xC2B40000

;==============================================
loc_8C0DD054:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DD19C,pc),r3 ; r3 set to 0x8C0332E0
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0DD0Ae
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DD194,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DD0AE:
	lds.l @r15+,pr
	mov.l @(loc_8C0DD1A0,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DD0BE:
	mov r4,r3
	mov.l @(loc_8C0DD1A4,pc),r1 ; r1 set to 0x8C15DAA0
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0DD0D0:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DD196,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r2
	tst r2,r2
	bf/s loc_8C0DD0F6
	mov.w r2,@(r0,r14)
	mova @(loc_8C0DD1A8,pc),r0  ; r0 set to 0x8C0DD1A8
	bra loc_8C0DD0Fa
	fmov.s @r0,fr3

loc_8C0DD0F6:
	mova @(loc_8C0DD1AC,pc),r0  ; r0 init to 0x8C0DD1Ac
	fmov.s @r0,fr3

loc_8C0DD0FA:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
	mov.l @(loc_8C0DD1B0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0DD198,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DD1B4,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DD138:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0DD1A0,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov r4,r14
	jsr @r3
	mov r5,r13
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
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
	mov.w @(loc_8C0DD19A,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8C0DD1B8
	mov.b @(0x07,r14),r0
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
	mov.b r0,@(0x07,r14)
	mov 0x1E,r0 ; r0 set to 0x1E, r0 set to 0x1E, r0 set to 0x1e
	bra loc_8C0DD218
	mov.w r0,@(0x1C,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DD194:
	#data 0x012c
loc_8C0DD196:
	#data 0x0130
loc_8C0DD198:
	#data 0x041c
loc_8C0DD19A:
	#data 0x0141
	#align4

loc_8C0DD19C:
	#data bank03.loc_8c0332E0
loc_8C0DD1A0:
	#data bank03.loc_8c034dee
loc_8C0DD1A4:
	#data bank15.loc_8c15DAA0
loc_8C0DD1A8:
	#data 0xC0D55555
loc_8C0DD1AC:
	#data 0x40D55555
loc_8C0DD1B0:
	#data bank03.loc_8c034e8c
loc_8C0DD1B4:
	#data bank10.loc_8c104434

;==============================================
loc_8c0dd1b8:
	mov 0x24,r0
	mov.l @(loc_8c0dd2bc,pc),r5
	mov.b @(r0,r13),r3
	mov r15,r4
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DD2B4,pc),r0
	mov.b @(r0,r14),r3
	mova @(loc_8C0DD2C0,pc),r0
	fmov.s @r0,fr2
	shll2 r3
	mov.w @(loc_8C0DD2B4,pc),r0
	add r5,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov.s fr3,@r4
	mov.b @(r0,r14),r3
	shll2 r3
	add r3,r5
	mov.w @(0x02,r5),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C0DD2C4,pc),r0
	fmov.s @r0,fr1
	mov 0x04,r0
	float fpul,fr3
	fmul fr1,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8c0dd2b6,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0dd202
	mov 0x34,r0
	fmov.s @r4,fr3
	fneg fr3
	fmov.s fr3,@r4

loc_8c0dd202:
	fmov.s @r4,fr2
	fmov.s @(r0,r14),fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r13)
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	mov 0x04,r0
	fmov.s @(r0,r4),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r13)

loc_8C0DD218:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DD222:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DD23c
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DD2B8,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DD23C:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0DD2C8,pc),r3 ; r3 set to 0x8C034DEe
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
	jmp @r3
	fmov.s fr2,@(r0,r4)

;unused
	rts
	nop

;----------------------------------------------
loc_8C0DD27C:
	mov r4,r3
	mov.l @(loc_8C0DD2CC,pc),r1 ; r1 set to 0x8C15DACc
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15
	
loc_8C0DD28E:
	mov.l r14,@-r15
	mov r4,r14
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DD2B6,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r2
	tst r2,r2
	bf/s loc_8C0DD2D4
	mov.w r2,@(r0,r14)
	mova @(loc_8C0DD2D0,pc),r0  ; r0 set to 0x8C0DD2D0
	bra loc_8C0DD2D8
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dd2b4:
	#data 0x0140
loc_8C0DD2B6:
	#data 0x0130
loc_8C0DD2B8:
	#data 0x012c
	#align4

loc_8C0DD2BC:
	#data bank15.loc_8c15DAAc
loc_8c0dd2c0:
	#data 0x3FD55555
loc_8c0dd2c4:
	#data 0x40092492
loc_8C0DD2C8:
	#data bank03.loc_8c034dee
loc_8C0DD2CC:
	#data bank15.loc_8c15DACc
loc_8C0DD2D0:
	#data 0xC0D55555

;==============================================
loc_8C0DD2D4:
	mova @(loc_8C0DD434,pc),r0  ; r0 init to 0x8C0DD434
	fmov.s @r0,fr3

loc_8C0DD2D8:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	mov.l @(loc_8C0DD438,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x13,r6 ; r6 set to 0x13, r6 set to 0x13
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DD43C,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DD314:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0DD440,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov r4,r14
	jsr @r3
	mov r5,r13
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
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
	mov.w @(loc_8C0DD42E,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8C0DD38e
	mov.b @(0x07,r14),r0
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
	mov.b r0,@(0x07,r14)
	mov 0x32,r0 ; r0 set to 0x32, r0 set to 0x32, r0 set to 0x32
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0DD430,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0DD37c
	mova @(loc_8C0DD444,pc),r0  ; r0 set to 0x8C0DD444, r0 set to 0x8C0DD444, r0 set to 0x8C0DD444
	bra loc_8C0DD380
	fmov.s @r0,fr3

loc_8C0DD37C:
	mova @(loc_8C0DD448,pc),r0  ; r0 init to 0x8C0DD448
	fmov.s @r0,fr3

loc_8C0DD380:
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0DD44C,pc),r0  ; r0 set to 0x8C0DD44C, r0 set to 0x8C0DD44c
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	bra loc_8C0DD3Ca
	fmov.s fr3,@(r0,r14)

loc_8c0dd38e:
	mov 0x24,r0
	mov r15,r4
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mova @(loc_8C0DD450,pc),r0
	fmov.s @r0,fr3
	mova @(loc_8C0DD454,pc),r0
	fmov.s fr3,@r4
	fmov.s @r0,fr3
	mov 0x04,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8c0dd430,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0dd3b4
	mov 0x34,r0
	fmov.s @r4,fr3
	fneg fr3
	fmov.s fr3,@r4

loc_8c0dd3b4:
	fmov.s @r4,fr2
	fmov.s @(r0,r14),fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r13)
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	mov 0x04,r0
	fmov.s @(r0,r4),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r13)

loc_8C0DD3CA:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DD3D4:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0DD3Ee
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DD432,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DD3EE:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0DD440,pc),r3 ; r3 set to 0x8C034DEe
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
	jmp @r3
	fmov.s fr2,@(r0,r4)

;unused
	rts
	nop

;----------------------------------------------
loc_8C0DD42E:
	#data 0x0141
loc_8C0DD430:
	#data 0x0130
loc_8C0DD432:
	#data 0x012c
	#align4

loc_8C0DD434:
	#data 0x40D55555
loc_8C0DD438:
	#data bank03.loc_8c034e8c
loc_8C0DD43C:
	#data bank10.loc_8c104434
loc_8C0DD440:
	#data bank03.loc_8c034dee
loc_8C0DD444:
	#data 0xBDD55555
loc_8C0DD448:
	#data 0x3DD55555
loc_8C0DD44C:
	#data 0x3E2B6DB6
loc_8c0dd450:
	#data 0xC0555555
loc_8c0dd454:
	#data 0x41092492

;==============================================
loc_8C0DD458:
	mov r4,r3
	mov.l @(loc_8C0DD5A4,pc),r1 ; r1 set to 0x8C15DAD8
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0DD46A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x46,r0 ; r0 set to 0x46
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0DD59E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bf/s loc_8C0DD48e
	mov.w r3,@(r0,r14)
	mova @(loc_8C0DD5A8,pc),r0  ; r0 set to 0x8C0DD5A8
	bra loc_8C0DD492
	fmov.s @r0,fr3

loc_8C0DD48E:
	mova @(loc_8C0DD5AC,pc),r0  ; r0 init to 0x8C0DD5Ac
	fmov.s @r0,fr3

loc_8C0DD492:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(loc_8C0DD5B4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @(r0,r13),fr2
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	mov 0x16,r6 ; r6 set to 0x16, r6 set to 0x16
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0DD5B0,pc),r0  ; r0 set to 0x8C0DD5B0, r0 set to 0x8C0DD5B0
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DD5B8,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0DD4C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x37, r0 set to 0x37
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??, r0 ??
	tst r0,r0
	bf loc_8C0DD530
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0DD59E,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_8C0DD4Ec
	mova @(loc_8C0DD5BC,pc),r0  ; r0 set to 0x8C0DD5BC, r0 set to 0x8C0DD5BC, r0 set to 0x8C0DD5Bc
	bra loc_8C0DD4F0
	fmov.s @r0,fr3

loc_8C0DD4EC:
	mova @(loc_8C0DD5C0,pc),r0  ; r0 init to 0x8C0DD5C0
	fmov.s @r0,fr3

loc_8C0DD4F0:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0DD5C4,pc),r0  ; r0 set to 0x8C0DD5C4, r0 set to 0x8C0DD5C4
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov.l @(loc_8C0DD5D0,pc),r3 ; r3 set to 0x8C0FDAB6, r3 set to 0x8C0FDAB6
	mov r15,r5
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0DD5C8,pc),r0  ; r0 set to 0x8C0DD5C8, r0 set to 0x8C0DD5C8
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0DD5CC,pc),r0  ; r0 set to 0x8C0DD5CC, r0 set to 0x8C0DD5Cc
	fmov.s fr4,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0DD5B4,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	mov 0x14,r6 ; r6 set to 0x14, r6 set to 0x14
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DD530:
	mov.l @(loc_8C0DD5D4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DD53E:
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
	mova @(loc_8C0DD5B0,pc),r0  ; r0 set to 0x8C0DD5B0
	fmov.s @r0,fr3
	mov.w @(loc_8C0DD5A0,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr4
	fadd fr3,fr4
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fcmp/gt fr4,fr2
	bt loc_8C0DD59a
	mov.b @(0x07,r4),r0
	mov 0x08,r6 ; r6 set to 0x08
	mov.l @(loc_8C0DD5B4,pc),r3 ; r3 set to 0x8C034E8c
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x07,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr4,@(r0,r4)
	jmp @r3
	mov 0x12,r5

loc_8C0DD59A:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DD59E:
	#data 0x0130
loc_8C0DD5A0:
	#data 0x041c
	#align4

loc_8C0DD5A4:
	#data bank15.loc_8c15DAD8
loc_8C0DD5A8:
	#data 0xC2C4AAAa
loc_8C0DD5AC:
	#data 0x42C4AAAa
loc_8C0DD5B0:
	#data 0x40CDB6Db
loc_8C0DD5B4:
	#data bank03.loc_8c034e8c
loc_8C0DD5B8:
	#data bank10.loc_8c104434
loc_8C0DD5BC:
	#data 0xC0555555
loc_8C0DD5C0:
	#data 0x40555555
loc_8C0DD5C4:
	#data 0x40892492
loc_8C0DD5C8:
	#data 0xBF4DB6Db
loc_8C0DD5CC:
	#data 0x42092492
loc_8C0DD5D0:
	#data bank0f.loc_8c0fDAB6
loc_8C0DD5D4:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0DD5D8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0DD6F4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0DD60a
	mov.b @(0x07,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0DD6F8,pc),r1 ; r1 set to 0x8C034E8c
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x10,r0 ; r0 set to 0x10
	mov.w r0,@(0x1C,r14)
	mov 0x14,r6 ; r6 set to 0x14
	mov.w @(loc_8C0DD6EE,pc),r0 ; r0 set to 0x130
	mov 0x19,r5 ; r5 set to 0x19
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r1
	mov.l @r15+,r14

loc_8C0DD60A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DD610:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0dd630
	mov.b @(0x7,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0xC2,PC),r0
	mov.w @(r0,r4),r2
	xor r3,r2
	mov.w r2,@(r0,r4)

loc_8C0DD630:
	rts
	nop

;----------------------------------------------
loc_8C0DD634:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0DD6EE,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0DD656
	mova @(loc_8C0DD6FC,pc),r0  ; r0 set to 0x8C0DD6Fc
	bra loc_8C0DD65a
	fmov.s @r0,fr3

loc_8C0DD656:
	mova @(loc_8C0DD700,pc),r0  ; r0 init to 0x8C0DD700
	fmov.s @r0,fr3

loc_8C0DD65A:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov.l @(loc_8C0DD6F8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	fmov.s fr4,@(r0,r14)
	mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DD680:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x6B, r0 set to 0x6b
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??, r0 ??
	tst r0,r0
	bf loc_8C0DD69a
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00, r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DD6F0,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DD69A:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0DD6F4,pc),r3 ; r3 set to 0x8C034DEe
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
	jmp @r3
	fmov.s fr2,@(r0,r4)

;unused
	rts
	nop

;----------------------------------------------
loc_8C0DD6DA:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DD6F0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DD6E8:
	mov.l @(loc_8C0DD704,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DD6EE:
	#data 0x0130
loc_8C0DD6F0:
	#data 0x012c
	#align4

loc_8C0DD6F4:
	#data bank03.loc_8c034dee
loc_8C0DD6F8:
	#data bank03.loc_8c034e8c
loc_8C0DD6FC:
	#data 0xC0D55555
loc_8C0DD700:
	#data 0x40D55555
loc_8C0DD704:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0DD708:
	mov.l r14,@-r15
	mov r6,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov 0x01,r11 ; r11 set to 0x01
	mov.l r10,@-r15
	mov 0x00,r10 ; r10 set to 0x00
	mov.l r9,@-r15
	mov.w @(loc_8C0DD7AA,pc),r13 ; r13 set to 0xCc
	sts.l pr,@-r15
	mov.l @(loc_8C0DD7AC,pc),r9 ; r9 set to 0x8C03544c
	add r4,r13 ; r13 ??? bc r4 is ???

loc_8C0DD724:
	mov 0x25,r6 ; r6 set to 0x25, r6 set to 0x25
	mov.b @r14,r0
	add r12,r6 ; r6 ??? bc r12 is ???, r6 ??? bc r12 is ???
	mov 0x57,r3 ; r3 set to 0x57, r3 set to 0x57
	mov.b r0,@(0x04,r13)
	mov.b @r6,r6
	mov.b @(0x02,r14),r0
	extu.b r6,r6
	mulu.w r3,r6
	extu.b r0,r0
	sts macl,r6
	add r0,r6
	mov.b @(0x03,r14),r0
	extu.b r0,r7
	mov.b @(0x01,r14),r0
	extu.b r0,r5
	jsr @r9
	mov r12,r4
	mov.l @(0x04,r14),r0
	cmp/eq 0x01,r0
	bf loc_8C0DD752
	bra loc_8C0DD756
	mov r10,r0

loc_8C0DD752:
	mov r11,r0
	nop

loc_8C0DD756:
	mov.b r0,@(0x05,r13)
	mov.l @(0x04,r14),r3
	mov.b @(0x04,r13),r0
	shll2 r3
	shll r3
	tst r0,r0
	add r3,r14
	bt loc_8C0DD724
	mov.l r14,@r13
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0dd778:
	mov.l r14,@-r15
	mov.w @(loc_8c0dd7aa,pc),r14
	mov.l r13,@-r15
	add r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x04,r14)
	extu.b r0,r0
	tst r0,r0
	bf/s loc_8c0dd79e
	mov 0x01,r13
	mov.b @(0x05,r14),r0
	tst r0,r0
	bt/s loc_8c0dd79a
	mov.l @r14,r6
	mov 0x00,r13

loc_8c0dd79a:
	bsr loc_8c0dd708
	nop

loc_8c0dd79e:
	mov r13,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dd7aa:
	#data 0x00CC
	#align4
loc_8c0dd7ac:
	#data bank03.loc_8C03544C

;==============================================
loc_8c0dd7b0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x14C,PC),r3
	mov 0x04,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0dd7d4
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x128,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0dd7d4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8C0DD7DC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0DD8FA,pc),r3 ; r3 set to 0x150
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	add r3,r13
	mov.b @(0x01,r13),r0
	mov r0,r13
	tst r13,r13
	bt loc_8C0DD816
	mov.w @(loc_8C0DD8FC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/eq r13,r0
	bt loc_8C0DD810
	mov.l @(loc_8C0DD90C,pc),r1 ; r1 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov r13,r6
	jsr @r1
	mov r14,r4
	mov r13,r0 ; r0 ??? bc r13 is ???
	nop
	bra loc_8C0DD828
	mov.w r0,@(0x1C,r14)

loc_8c0dd810:
	mov.l @(loc_8c0dd910,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0dd816:
	mov.l @(0x18,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c0dd828
	mov.w @(loc_8c0dd8fa,pc),r3
	mov.l @(0x18,r14),r0
	add r3,r0
	mov.b @(0x01,r0),r0
	mov.w r0,@(0x1C,r14)

loc_8C0DD828:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DD830:
	mov r4,r3
	mov.l @(loc_8C0DD914,pc),r1 ; r1 set to 0x8C15DB00
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0DD842:
	mov.w @(loc_8C0DD8FE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0DD918,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DD8FE,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0DD8FC,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0DD900,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DD91C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0DD8FC,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0DD8CC:
	mov.w @(loc_8C0DD8FC,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	tst r3,r3
	bt loc_8C0DD8F4
	mov.l @(0x18,r4),r3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0DD902,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	bra loc_8C0DD7Dc
	mov.w r2,@(r0,r4)

loc_8C0DD8F4:
	rts
	nop

;----------------------------------------------
loc_8C0DD8F8:
	#data 0x1E00
loc_8C0DD8FA:
	#data 0x0150
loc_8C0DD8FC:
	#data 0x012c
loc_8C0DD8FE:
	#data 0x00Dc
loc_8C0DD900:
	#data 0x01A3
loc_8C0DD902:
	#data 0x0130
	#align4

loc_8C0DD904:
	#data bank04.loc_8c044F12
loc_8C0DD908:
	#data loc_8c0dD830
loc_8C0DD90C:
	#data bank03.loc_8c034e8c
loc_8C0DD910:
	#data bank03.loc_8c034dee
loc_8C0DD914:
	#data bank15.loc_8c15DB00
loc_8C0DD918:
	#data bank12.loc_8c129560
loc_8C0DD91C:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0DD920:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DD932,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0DD92C:
	mov.l @(loc_8C0DD934,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DD932:
	#data 0x012c
	#align4

loc_8C0DD934:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0dd938:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x138,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0dd962
	mov r0,r4
	mov.l @(0x12C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x112,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.w r3,@(r0,r4)
	mov 0x21,r0
	mov.b r2,@(r0,r4)

loc_8c0dd962:
	mov.l @(0x114,PC),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0dd986
	mov r0,r4
	mov.l @(0x108,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xEE,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov 0x01,r2
	mov.w r3,@(r0,r4)
	mov 0x21,r0
	mov.b r2,@(r0,r4)

loc_8c0dd986:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DD98E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DDA6C,pc),r3 ; r3 set to 0xCc
	mov r14,r4
	mov.l @(loc_8C0DDA80,pc),r2 ; r2 set to 0x8C28C6Cc
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0DDA84,pc),r1 ; r1 set to 0x8C15DB10
	mov.l r3,@r2 ; r2 ??? bc r3 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0DD9AA:
	mov.l @(0x18,r4),r3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0DDA80,pc),r6 ; r6 set to 0x8C28C6Cc
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0DDA6E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C0DD9D0
	mov.l @r6,r5
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r5,fr3
	fmov.s @(r0,r4),fr2
	bra loc_8C0DD9D8
	fadd fr3,fr2

loc_8C0DD9D0:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r5,fr3
	fmov.s @(r0,r4),fr2
	fsub fr3,fr2

loc_8C0DD9D8:
	mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
	fmov.s fr2,@(r0,r4)
	mov.l @r6,r3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	add r3,r1 ; r1 ??? bc r3 is ???, r1 ??? bc r3 is ???
	fmov.s @r1,fr3
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0DD9EC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DDA70,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0DDA88,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DDA70,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0DDA72,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(loc_8C0DDA74,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DDA8C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DDA72,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C0DDA90
	mov 0x24,r0 ; r0 set to 0x24
	bra loc_8C0DDA92
	mov 0x00,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dda6a:
	#data 0x1E01
loc_8C0DDA6C:
	#data 0x00Cc
loc_8C0DDA6E:
	#data 0x0130
loc_8C0DDA70:
	#data 0x00Dc
loc_8C0DDA72:
	#data 0x012c
loc_8C0DDA74:
	#data 0x01A3
	#align4

loc_8C0DDA78:
	#data bank04.loc_8c044F12
loc_8C0DDA7C:
	#data loc_8c0dD98e
loc_8C0DDA80:
	#data 0x8C28C6Cc
loc_8C0DDA84:
	#data bank15.loc_8c15DB10
loc_8C0DDA88:
	#data bank12.loc_8c129560
loc_8C0DDA8C:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0DDA90:
	mov 0x0B,r3 ; r3 set to 0x0b

loc_8C0DDA92:
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0DDB0C,pc),r4 ; r4 set to 0x8C28C6CC, r4 set to 0x8C28C6Cc
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	mov.w r0,@(0x1C,r14)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov.l @r4,r3
	fmov.s fr4,@r3
	mov.l @r4,r2
	fmov.s fr4,@(r0,r2)
	bsr loc_8C0DD9Aa
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.l @(loc_8C0DDB10,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b @(r0,r14),r6
	mov r14,r4
	lds.l @r15+,pr
	extu.b r6,r6
	shll r6
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	jmp @r3
	mov.l @r15+,r14

loc_8C0DDACE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0DD9Aa
	mov r4,r14
	mov.w @(loc_8C0DDB06,pc),r3 ; r3 set to 0x150
	mov.l @(0x18,r14),r0
	add r3,r0
	mov.b @(0x01,r0),r0
	cmp/eq 0x03,r0
	bt loc_8C0DDAEa
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0DDAF4
	mov.l @r15+,r14

loc_8C0DDAEA:
	lds.l @r15+,pr
	mov.l @(loc_8C0DDB14,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0DDAF4:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DDB08,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0DDB00:
	mov.l @(loc_8C0DDB18,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DDB06:
	#data 0x0150
loc_8C0DDB08:
	#data 0x012c
	#align4

loc_8C0DDB0C:
	#data 0x8C28C6Cc
loc_8C0DDB10:
	#data bank03.loc_8c034e8c
loc_8C0DDB14:
	#data bank03.loc_8c034dee
loc_8C0DDB18:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0DDB1c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x100,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ddb4e
	mov r0,r4
	mov.l @(0xF4,PC),r3
	mov 0x26,r0
	mov 0x20,r1
	mov.l r3,@(0x10,r4)
	add r4,r1
	mov.w @(0xD8,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0xD2,PC),r3
	mov.l @r15,r2
	add r2,r3
	mov.b @(0x1,r3),r0
	mov.b r0,@r1

loc_8c0ddb4e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DDB56:
	mov r4,r3
	mov.l @(loc_8C0DDC2C,pc),r1 ; r1 set to 0x8C15DB20
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0DDB68:
	mov.w @(0xB0,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xBC,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xA2,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x9A,PC),r0
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
	mov.w @(0x76,PC),r0
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
	mov.l @(0x70,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0x0F,r3
	mov.w @(0x48,PC),r0
	mov.b r5,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x08,r0
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0DDBF0:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0ddc02
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0DDC02:
	rts
	nop

;----------------------------------------------
loc_8C0DDC06:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DDC1E,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0DDC12:
	mov.l @(loc_8C0DDC38,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ddc18:
	#data 0x1e02
loc_8c0ddc1a:
	#data 0x0150
loc_8c0ddc1c:
	#data 0x00dc
loc_8c0ddc1e:
	#data 0x012c
loc_8c0ddc20:
	#data 0x01a3
	#align4

loc_8C0DDC24:
	#data bank04.loc_8c044F12
loc_8C0DDC28:
	#data loc_8c0dDB56
loc_8C0DDC2C:
	#data bank15.loc_8c15DB20
loc_8C0DDC30:
	#data bank12.loc_8c129560
loc_8C0DDC34:
	#data bank12.loc_8c1294C8
loc_8C0DDC38:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0ddc3c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x12C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ddc68
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.w @(0x104,PC),r3
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8c0ddc68:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DDC70:
	mov r4,r3
	mov.l @(loc_8C0DDD78,pc),r1 ; r1 set to 0x8C15DB30
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c0ddc82:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8c0ddd66,pc),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c0ddcc0
	mov r4,r3
	mov 0x34,r0
	add r0,r3
	mov.l @(loc_8c0ddd7c,pc),r0
	mov.l r3,@-r15
	mov 0x20,r3
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mova @(loc_8C0DDD80,pc),r0
	fmov.s @r0,fr0
	lds r2,fpul
	mov.l @r15+,r2
	float fpul,fr3
	fmov.s @r2,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2

loc_8c0ddcc0:
	mov.l @(0x18,r4),r3
	mov 0x24,r0
	mov.b @(r0,r3),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r4)
	mov 0x31,r0
	rts
	mov.b r3,@(r0,r4)

loc_8C0DDCD0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DDD68,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0DDD84,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DDD68,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0DDD6A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(loc_8C0DDD6C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DDD88,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DDD6A,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0DDD66,pc),r0 ; r0 set to 0x130
	mov.w r4,@(r0,r14)
	bsr loc_8C0DDC82
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0DDD90,pc),r3 ; r3 set to 0x8C034E8c
	mov.b @(r0,r14),r6
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @(loc_8C0DDD8C,pc),r0 ; r0 set to 0x8C15DB43
	mov r14,r4
	lds.l @r15+,pr
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DDD64:
	#data 0x1E03
loc_8C0DDD66:
	#data 0x0130
loc_8C0DDD68:
	#data 0x00Dc
loc_8C0DDD6A:
	#data 0x012c
loc_8C0DDD6C:
	#data 0x01A3
	#align4

loc_8C0DDD70:
	#data bank04.loc_8c044F12
loc_8C0DDD74:
	#data loc_8c0dDC70
loc_8C0DDD78:
	#data bank15.loc_8c15DB30
loc_8C0DDD7C:
	#data bank15.loc_8c15DB40
loc_8c0ddd80:
	#data 0x3FD55555
loc_8C0DDD84:
	#data bank12.loc_8c129560
loc_8C0DDD88:
	#data bank12.loc_8c1294C8
loc_8C0DDD8C:
	#data bank15.loc_8c15DB43
loc_8C0DDD90:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0DDD94:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x5E,PC),r1
	sts.l pr,@-r15
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8c0dddb0
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0dddca

loc_8C0DDDB0:
	bsr loc_8c0ddc82
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0dddd8
	mov.l @(0x40,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ddde2

loc_8C0DDDCA:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	bra loc_8c0ddde8
	mov.l @r15+,r14

loc_8C0DDDD8:
	lds.l @r15+,pr
	mov.l @(0x24,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0DDDE2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DDDE8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DDDFC,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0DDDF4:
	mov.l @(loc_8C0DDE04,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DDDFa:
	#data 0x0159
loc_8C0DDDFC:
	#data 0x012c
	#align4

loc_8C0DDE00:
	#data bank03.loc_8c034dee
loc_8C0DDE04:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0dde08:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x160,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0dde9e
	mov r0,r4
	mov.w @(0x13E,PC),r2
	mov 0x26,r0
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov.l @(0x148,PC),r3
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	tst r2,r2
	bt loc_8c0dde9e
	mov.l @(0x140,PC),r2
	mov.w @(0x12A,PC),r0
	mov.l r2,@(0x10,r4)
	mov.w @(0x126,PC),r1
	mov.l @(0x18,r4),r2
	mov.l @(0x13C,PC),r3
	add r4,r1
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x11A,PC),r0
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
	mov.w @(0xF6,PC),r0
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
	mov.l @(0xF4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x00,r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov.w @(0xC8,PC),r0
	mov.b r2,@(r0,r4)

loc_8c0dde9e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DDEA6:
	mov r4,r3
	mov.l @(loc_8C0DDF84,pc),r1 ; r1 set to 0x8C15DB48
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0DDEB8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DDF64,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0DDF7C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DDF64,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0DDF66,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(loc_8C0DDF68,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DDF80,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x11,r6 ; r6 set to 0x11
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0DDF66,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0DDF88,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0DDF6A,pc),r0 ; r0 set to 0x130
	mov.w r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0DDF42:
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0DDF6C,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r4),r3
	cmp/pz r3
	bt loc_8C0DDF8c
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	bra loc_8C0DDF92
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DDF62:
	#data 0x1E04
loc_8C0DDF64:
	#data 0x00Dc
loc_8C0DDF66:
	#data 0x012c
loc_8C0DDF68:
	#data 0x01A3
loc_8C0DDF6A:
	#data 0x0130
loc_8C0DDF6C:
	#data 0x0141
	#align4

loc_8C0DDF70:
	#data bank04.loc_8c044F12
loc_8C0DDF74:
	#data loc_8c0dDEA6
loc_8C0DDF78:
	#data loc_8c0dDFC0
loc_8C0DDF7C:
	#data bank12.loc_8c129560
loc_8C0DDF80:
	#data bank12.loc_8c1294C8
loc_8C0DDF84:
	#data bank15.loc_8c15DB48
loc_8C0DDF88:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0ddf8c:
	mov 0x24,r0
	mov 0x07,r1
	mov.b r1,@(r0,r4)

loc_8c0ddf92:
	mov.w @(loc_8C0DE05A,pc),r1
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0ddfb2
	mov.w @(loc_8C0DE05C,pc),r1
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c0ddfba
	cmp/eq 0x08,r0
	bt loc_8c0ddfba
	cmp/eq 0x09,r0
	bt loc_8c0ddfba

loc_8c0ddfb2:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8c0de048
	mov.b r0,@(0x04,r4)

loc_8c0ddfba:
	mov.l @(loc_8c0de064,pc),r2
	jmp @r2
	nop

loc_8C0DDFC0:
	mov r4,r3
	mov.l @(loc_8C0DE068,pc),r1 ; r1 set to 0x8C15DB58
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0DDFD2:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x11,r6 ; r6 set to 0x11
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DE05E,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0DE060,pc),r0 ; r0 set to 0x130
	mov.l @(loc_8C0DE06C,pc),r3 ; r3 set to 0x8C034E8c
	mov.w r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0DDFFE:
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0DE062,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r4),r3
	cmp/pz r3
	bt loc_8C0DE01e
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	bra loc_8C0DE024
	mov.b r2,@(r0,r4)

loc_8c0de01e:
	mov 0x24,r0
	mov 0x07,r1
	mov.b r1,@(r0,r4)

loc_8c0de024:
	mov.w @(loc_8C0DE05A,pc),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0de03a
	mov.w @(loc_8C0DE05C,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c0de042

loc_8c0de03a:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8c0de048
	mov.b r0,@(0x04,r4)

loc_8c0de042:
	mov.l @(loc_8c0de064,pc),r2
	jmp @r2
	nop

loc_8C0DE048:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DE05E,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0DE054:
	mov.l @(loc_8C0DE070,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0de05a:
	#data 0x0159
loc_8c0de05c:
	#data 0x0158
loc_8C0DE05E:
	#data 0x012c
loc_8C0DE060:
	#data 0x0130
loc_8C0DE062:
	#data 0x0141
	#align4

loc_8C0DE064:
	#data bank03.loc_8c034dee
loc_8C0DE068:
	#data bank15.loc_8c15DB58
loc_8C0DE06C:
	#data bank03.loc_8c034e8c
loc_8C0DE070:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0DE074:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(0x168,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0de0ae
	mov r0,r4
	mov.l @(0x158,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0x13A,PC),r2
	mov.b r0,@r1
	mov 0x22,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8C0DE0AE:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DE0B6:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x120,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0de0fc
	mov r0,r4
	mov.l @(0x110,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.w @(0xF2,PC),r3
	mov.l r2,@(0x14,r4)
	mov 0x22,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0DE0FC:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DE104:
	mov r4,r3
	mov.l @(loc_8C0DE1F0,pc),r1 ; r1 set to 0x8C15DB68
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0DE116:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DE1E2,pc),r1 ; r1 set to 0xDc
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(loc_8C0DE1E2,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0DE1F4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DE1E0,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r4
	add r4,r2 ; r2 ??? bc r4 is ???
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0DE1E0,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0DE1E4,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DE1F8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0DE1F8,pc),r3 ; r3 set to 0x8C1294C8
	mov.b @(r0,r4),r2
	mov r14,r1
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov r4,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0DE1FC,pc),r0 ; r0 set to 0x8C15DB78
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3 ; r3 ??? bc r2 is ???
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0DE550
	mov.l @r15+,r14
	
loc_8C0DE19C:
	mov.w @(loc_8C0DE1E0,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov r3,r6 ; r6 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0DE200,pc),r3 ; r3 set to 0x8C034C38
	jmp @r3
	mov 0x1B,r5

loc_8C0DE1AA:
	mov.l r14,@-r15
	mov 0x22,r0 ; r0 set to 0x22
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0DE204,pc),r0 ; r0 set to 0x8C13B2E0
	mov r14,r4
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(loc_8C0DE200,pc),r3 ; r3 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r6
	mov.l @(loc_8C0DE208,pc),r0 ; r0 set to 0x8C13B2D8
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0DE1D0:
	mov 0x31,r0 ; r0 set to 0x31
	mov 0xF6,r3 ; r3 set to 0xFFFFFFF6
	mov.b r3,@(r0,r4)
	mov 0x43,r6 ; r6 set to 0x43
	mov.l @(loc_8C0DE200,pc),r3 ; r3 set to 0x8C034C38
	jmp @r3
	mov 0x1B,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0de1de:
	#data 0x1F00
loc_8C0DE1E0:
	#data 0x012c
loc_8C0DE1E2:
	#data 0x00Dc
loc_8C0DE1E4:
	#data 0x01A3
	#align4

loc_8C0DE1E8:
	#data bank04.loc_8c044F12
loc_8C0DE1EC:
	#data loc_8c0dE104
loc_8C0DE1F0:
	#data bank15.loc_8c15DB68
loc_8C0DE1F4:
	#data bank12.loc_8c129560
loc_8C0DE1F8:
	#data bank12.loc_8c1294C8
loc_8C0DE1FC:
	#data bank15.loc_8c15DB78
loc_8C0DE200:
	#data bank03.loc_8c034C38
loc_8C0DE204:
	#data bank13.loc_8c13B2E0
loc_8C0DE208:
	#data bank13.loc_8c13B2D8

;==============================================
loc_8C0DE20C:
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(0x14,r4),r5
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov.b r3,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt/s loc_8C0DE22e
	fldi0 fr4
	mova @(loc_8C0DE37C,pc),r0  ; r0 set to 0x8C0DE37c
	fmov.s @r0,fr3 ; r3 ??
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	bra loc_8C0DE23e
	fmov.s fr4,@(r0,r4)

loc_8c0de22e:
	mova @(loc_8C0DE380,pc),r0
	fmov.s @r0,fr3
	mov 0x34,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0DE384,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r4)

loc_8c0de23e:
	mov 0x5C,r0
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0DE388,pc),r0
	fmov.s @r0,fr3
	mov 0x68,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0DE38C,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0DE378,pc),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf/s loc_8c0de278
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)

loc_8c0de278:
	mov 0x34,r0
	mov.l @(loc_8c0de390,pc),r3
	mov r0,r1
	add r5,r1
	fmov.s @(r0,r4),fr2
	mov 0x3B,r6
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	mov r0,r1
	add r5,r1
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	jmp @r3
	mov 0x1B,r5

;==============================================
loc_8c0de29c:
	mov 0x22,r0
	mov.l @(0xF4,PC),r5
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	mov.l @(0x18,r4),r14
	extu.b r0,r0
	shll r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r3
	mov 0x04,r0
	extu.b r3,r3
	shll r3
	shll2 r3
	add r3,r5
	fmov @(r0,r5),fr3
	mov 0x38,r0
	mov.l @(0xD0,PC),r5
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll2 r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r5,r3
	fmov @(r0,r3),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r3
	mov 0x08,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r5,r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r3
	mov 0x0C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r5
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x5E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0de338
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c0de338:
	mov 0x34,r0
	mov r0,r1
	add r14,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	mov r0,r1
	add r14,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf.s loc_8c0de364
	mov 0x1B,r5
	bra loc_8c0de366
	mov 0x7A,r6

loc_8c0de364:
	mov 0x0A,r6

loc_8c0de366:
	mov.l @(0x28,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov 0x4B,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DE378:
	#data 0x0130
	#align4

loc_8c0de37c:
	#data 0xC2555555
loc_8C0DE380:
	#data 0xC1E2AAAA
loc_8C0DE384:
	#data 0x422B6DB6
loc_8C0DE388:
	#data 0xBD555555
loc_8C0DE38C:
	#data 0x3D892492
loc_8c0de390:
	#data bank03.loc_8c034c38
loc_8c0de394:
	#data bank13.loc_8c13b2e8
loc_8c0de398:
	#data bank13.loc_8c13b338
loc_8c0de39c:
	#data bank04.loc_8c04223a

;==============================================
loc_8c0de3a0:
	mov.w @(0xEA,PC),r0
	mov 0x0A,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.w r0,@(0x1C,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mova @(0xE0,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xCC,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0de3d2
	mov.w r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c0de3d2:
	mov 0x34,r0
	mov.l @(0xC0,PC),r3
	mov r0,r1
	add r4,r1
	fmov @(r0,r14),fr2
	mov 0x1B,r5
	fmov @r1,fr3
	mov 0x29,r6
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov r0,r1
	add r4,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov 0x00,r6
	mov 0x08,r5
	bra loc_8c0de0b6
	mov.l @r15+,r14

loc_8c0de404:
	mov 0x22,r0
	mov.l @(0x18,r4),r5
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x18,r0
	mov.w r0,@(0x1C,r4)
	mov 0x10,r0
	mov.w r0,@(0x1E,r4)
	mov 0x31,r0
	mov 0xF8,r3
	mov.b r3,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x44,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0de46a
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)


loc_8c0de46a:
	mov 0x34,r0
	mov.l @(0x28,PC),r3
	mov r0,r1
	add r5,r1
	fmov @(r0,r4),fr2
	mov 0x2B,r6
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	mov r0,r1
	add r5,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	mov 0x1B,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0de48e:
	#data 0x0081
loc_8c0de490:
	#data 0x0130
	#align4

loc_8c0de494:
	#data 0x42555555
loc_8c0de498:
	#data bank03.loc_8c034c38
loc_8c0de49c:
	#data 0xc2555555
loc_8c0de4a0:
	#data 0x40555555
loc_8c0de4a4:
	#data 0xbbd55555
loc_8c0de4a8:
	#data 0x414db6db
loc_8c0de4ac:
	#data 0xbf092492

;==============================================
loc_8c0de4b0:
	mov 0x22,r0
	mov.l @(0x120,PC),r2
	mov 0x0B,r3
	mov.l @(0x18,r4),r5
	mov.b r3,@(r0,r4)
	mov 0x18,r0
	mov.w r0,@(0x1C,r4)
	mov 0x10,r0
	mov.w r0,@(0x1E,r4)
	mov 0x31,r0
	mov 0x12,r3
	mov.b r3,@(r0,r4)
	mov 0x48,r0
	mov.l r2,@(r0,r4)
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0x104,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xCC,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0de51e
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c0de51e:
	mov 0x34,r0
	mov.l @(0xCC,PC),r3
	mov r0,r1
	add r5,r1
	fmov @(r0,r4),fr2
	mov 0x2B,r6
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	mov r0,r1
	add r5,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	mov 0x1B,r5

;==============================================
loc_8C0DE542:
	mov 0x31,r0 ; r0 set to 0x31
	mov 0x08,r3 ; r3 set to 0x08
	mov.b r3,@(r0,r4)
	mov 0x2C,r6 ; r6 set to 0x2c
	mov.l @(loc_8C0DE5F0,pc),r3 ; r3 set to 0x8C034C38
	jmp @r3
	mov 0x1B,r5

;==============================================
loc_8C0DE550:
	mov.l @(loc_8C0DE5F4,pc),r5 ; r5 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov 0x01,r1 ; r1 set to 0x01
	mov.l r14,@-r15
	mov.w @(r0,r5),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r5),r2
	mov r4,r14
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???
	tst r1,r3
	bf/s loc_8C0DE584
	mov.l @(0x18,r14),r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r1
	mov r14,r4
	mov.b r1,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0DE5F8,pc),r0 ; r0 set to 0x8C15DBA0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0DE584:
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0DE588:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r3
	mov.w @(0x3A,PC),r0
	mov.w @(0x3A,PC),r4
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b r3,@(r0,r14)
	add r13,r4
	mov.b @(0x1,r4),r0
	mov r0,r4
	exts.b r4,r3
	tst r3,r3
	bt.s loc_8c0de5b0
	exts.b r4,r12
	mov.w @(0x20,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8C0DE5B0:
	mov 0x22,r0
	mov.l @(0x48,PC),r3
	mov.b @(r0,r14),r1
	exts.b r4,r2
	shll r12
	extu.b r1,r1
	cmp/eq r1,r2
	bf.s loc_8c0de604
	add r3,r12
	mov.l @(0x3C,PC),r1
	jsr @r1
	mov r14,r4
	bra loc_8c0de610
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0de5cc:
	#data 0x0130
loc_8c0de5ce:
	#data 0x012c
loc_8c0de5d0:
	#data 0x0150
	#align4

loc_8c0de5d4:
	#data 0x00008000
loc_8c0de5d8:
	#data 0x43610000
loc_8c0de5dc:
	#data 0x44326492
loc_8c0de5e0:
	#data 0xC0555555
loc_8c0de5e4:
	#data 0xBBD55555
loc_8c0de5e8:
	#data 0xC14DB6Db
loc_8c0de5ec:
	#data 0xBF092492
loc_8C0DE5F0:
	#data bank03.loc_8c034C38
loc_8C0DE5F4:
	#data 0x8C2895F0
loc_8C0DE5F8:
	#data bank15.loc_8c15DBA0
loc_8C0DE5FC:
	#data bank13.loc_8c13B184
loc_8C0DE600:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0DE604:
	mov.l @(0x134,PC),r2
	mov 0x1B,r5
	mov.b r4,@(r0,r14)
	mov.b @r12,r6
	jsr @r2
	mov r14,r4

loc_8C0DE610:
	mov 0x31,r0
	mov 0xF8,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x11C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0de624
	mov 0x31,r0
	mov 0x08,r2
	mov.b r2,@(r0,r14)

loc_8C0DE624:
	mov r12,r4
	add 0x01,r4
	mov.b @r4,r0
	mov.l @(0x114,PC),r5
	extu.b r0,r0
	shll r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	mov.b @r4,r3
	extu.b r3,r3
	shll r3
	shll2 r3
	add r5,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xEA,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0de65c
	mov.w r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0DE65C:
	mov 0x34,r0
	mov r0,r1
	add r13,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov r0,r1
	add r13,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DE682:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0de698
	mov.l @r15,r3
	mov 0x02,r0
	mov.b r0,@(0x4,r3)

loc_8C0DE698:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0DE6A0:
	mov.l @(0x14,r4),r5
	mov 0x02,r6 ; r6 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r6,r0
	bt loc_8C0DE72e
	mov.b @(0x05,r5),r0
	tst r0,r0
	bf loc_8C0DE72e
	mov.w @(loc_8C0DE736,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0DE6D6
	mov.w @(loc_8C0DE73A,pc),r0 ; r0 set to 0x150
	mov.l @(loc_8C0DE748,pc),r6 ; r6 set to 0x8C13B3D8
	add r5,r0 ; r0 ??? bc r5 is ???
	mov.w @(loc_8C0DE73A,pc),r3 ; r3 set to 0x150
	mov.b @(0x01,r0),r0
	add r5,r3 ; r3 ??? bc r5 is ???
	shll r0
	shll2 r0
	fmov.s @(r0,r6),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s fr3,@(r0,r4)
	mov.b @(0x01,r3),r0
	bra loc_8C0DE6Ee
	nop

loc_8c0de6d6:
	mov.w @(loc_8c0de73a,pc),r0
	mov.l @(loc_8c0de74c,pc),r6
	add r5,r0
	mov.w @(loc_8c0de73a,pc),r3
	mov.b @(0x01,r0),r0
	add r5,r3
	shll r0
	shll2 r0
	fmov.s @(r0,r6),fr3
	mov 0x34,r0
	fmov.s fr3,@(r0,r4)
	mov.b @(0x01,r3),r0

loc_8c0de6ee:
	shll r0
	shll2 r0
	add r0,r6
	mov 0x04,r0
	fmov.s @(r0,r6),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0DE738,pc),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt/s loc_8c0de70e
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)

loc_8c0de70e:
	mov 0x34,r0
	mov.l @(loc_8c0de744,pc),r3
	mov r0,r1
	add r5,r1
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	mov r0,r1
	add r5,r1
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	jmp @r3
	fmov.s fr2,@(r0,r4)

loc_8C0DE72E:
	mov r6,r0
	nop
	rts
	mov.b r0,@(0x04,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DE736:
	#data 0x0141
loc_8c0de738:
	#data 0x0130
loc_8C0DE73A:
	#data 0x0150
	#align4

loc_8C0DE73C:
	#data bank03.loc_8c034C38
loc_8C0DE740:
	#data bank13.loc_8c13B200
loc_8C0DE744:
	#data bank03.loc_8c034D8c
loc_8C0DE748:
	#data bank13.loc_8c13B3D8
loc_8C0DE74C:
	#data bank13.loc_8c13B420

;==============================================
loc_8C0DE750:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x130,PC),r3
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
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0de79e
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0DE79E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DE7A4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c0de7ec
	mov.l @(0x18,r14),r4
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0de7d2
	mov.w @(0xC8,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0de7d2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0de7e2

loc_8C0DE7D2:
	mov.b @(0x5,r14),r0
	mov 0x1B,r5
	mov.l @(0xB8,PC),r3
	mov 0x2A,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C0DE7E2:
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0DE7EC:
	mov.l @(0x9C,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0de7fc
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0DE7FC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DE802:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x7C,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0de87c
	mov.w @(0x70,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0de87c
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x22,r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	add 0x01,r2
	extu.b r2,r2
	tst r2,r2
	bf loc_8c0de8b6
	mov 0x00,r4
	mov 0x5C,r1
	mov.b r4,@(r0,r14)
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
	bt loc_8c0de894

loc_8C0DE87C:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0de886:
	#data 0x01d0
loc_8c0de888:
	#data 0x01e9
	#align4

loc_8C0DE88C:
	#data bank03.loc_8c034D8c
loc_8C0DE890:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0DE894:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0de8b6
	mov.l @(0x118,PC),r3
	mov.w @(0x10A,PC),r1
	mov.l @r3,r0
	add r14,r1
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	mov.b r0,@r1
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8C0DE8B6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DE8BC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0xEE,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0de984
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0de984
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0de940
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	add 0x01,r3
	extu.b r3,r3
	tst r3,r3
	bf loc_8c0de9aa
	mov.b @(0x5,r14),r0
	mov 0xF8,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xA2,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c0de922
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0DE922:
	mov 0x34,r0
	mov r0,r1
	add r13,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov r0,r1
	add r13,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	bra loc_8c0de9aa
	fmov fr2,@(r0,r14)

loc_8C0DE940:
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
	bt loc_8c0de98a

loc_8C0DE984:
	mov 0x02,r0
	bra loc_8c0de9aa
	mov.b r0,@(0x4,r14)

loc_8C0DE98A:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0de9aa
	mov.l @(0x20,PC),r3
	mov.w @(0x14,PC),r1
	mov.l @r3,r0
	add r14,r1
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	mov.b r0,@r1
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8C0DE9AA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0de9b2:
	#data 0x012c
loc_8c0de9b4:
	#data 0x01d0
loc_8c0de9b6:
	#data 0x01e9
loc_8c0de9b8:
	#data 0x0130
	#align4

loc_8C0DE9bc:
	#data 0x8C26823c
loc_8C0DE9C0:
	#data bank03.loc_8c034D8c
loc_8C0DE9C4:
	#data 0x430C0000
loc_8C0DE9C8:
	#data 0x44011B6d

;==============================================
loc_8C0DE9CC:
	mov.w @(0xA4,PC),r0
	mov.l @(0x18,r4),r6
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c0de9ec
	mov.l @(0x14,r4),r5
	mov.w @(0x98,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0de9ec
	mov.w @(0x90,PC),r0
	mov.b @(r0,r5),r0
	cmp/eq 0xFF,r0
	bf loc_8c0de9f2

loc_8C0DE9EC:
	mov 0x02,r0
	rts
	mov.b r0,@(0x4,r4)

;----------------------------------------------
loc_8C0DE9F2:
	mov.w @(0x82,PC),r0
	mov.w @(0x82,PC),r1
	mov.b @(r0,r5),r0
	add r4,r1
	and 0x01,r0
	mov.b r0,@r1
	exts.b r0,r0
	tst r0,r0
	bt loc_8c0dea5c
	mov.l @(0x78,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8c0dea1c
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0x70,PC),r0
	bra loc_8c0dea28
	fmov @r0,fr3

loc_8C0DEA1C:
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0x68,PC),r0
	fmov @r0,fr3

loc_8C0DEA28:
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x4C,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0dea3c
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0DEA3C:
	mov 0x34,r0
	mov.l @(0x54,PC),r3
	mov r0,r1
	add r5,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	mov r0,r1
	add r5,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	jmp @r3
	fmov fr2,@(r0,r4)

loc_8C0DEA5C:
	rts
	nop

;----------------------------------------------
loc_8C0DEA60:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DEA7A,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0DEA6E:
	mov.l @(loc_8C0DEA98,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dea74:
	#data 0x01d0
loc_8c0dea76:
	#data 0x01e9
loc_8c0dea78:
	#data 0x0141
loc_8c0dea7a:
	#data 0x012c
loc_8c0dea7c:
	#data 0x0130
	#align4

loc_8c0dea80:
	#data 0x8C26823c
loc_8c0dea84:
	#data 0xC3555555
loc_8c0dea88:
	#data 0x437CDB6d
loc_8c0dea8c:
	#data 0xC3805555
loc_8c0dea90:
	#data 0x43722492
loc_8C0DEA94:
	#data bank03.loc_8c034D8c
loc_8C0DEA98:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0DEA9C:
	mov.l r14,@-r15
	mov 0x03,r5
	mov.l r13,@-r15
	mov 0x00,r6
	mov.l r12,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0xA6,PC),r13
	mov.l @(0xA8,PC),r12
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0dead8
	mov r0,r4
	mov 0x00,r3
	mov.l @(0xA0,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r13,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8C0DEAD8:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0deb06
	mov r0,r4
	mov 0x01,r3
	mov.l @(0x70,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r13,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8C0DEB06:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0deb34
	mov r0,r4
	mov 0x02,r3
	mov.l @(0x44,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r13,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8C0DEB34:
	mov r4,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DEB42:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0DEB60,pc),r1 ; r1 set to 0x8C15E52c
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0deb54:
	#data 0x1F01
	#align4

loc_8C0DEB58:
	#data bank04.loc_8c044F12
loc_8C0DEB5C:
	#data loc_8c0dEB42
loc_8C0DEB60:
	#data bank15.loc_8c15E52c

;==============================================
loc_8C0DEB64:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	mov.w @(0x12C,PC),r1
	add 0x01,r0
	mov.w @(0x126,PC),r6
	mov.w @(0x126,PC),r2
	add r4,r1
	mov.l @(0x134,PC),r3
	add r4,r6
	mov.l @(0x18,r4),r5
	mov.b r0,@(0x4,r4)
	mov.w @(0x11C,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x118,PC),r0
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
	mov.w @(0xFC,PC),r0
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
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x0B,r3
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov.l @(0xE8,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	mov 0x21,r0
	mov.w @(0xCE,PC),r2
	mov.l r3,@r6
	mov.b r2,@(r0,r4)
	mova @(0xDC,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0xD4,PC),r0
	fmov @r0,fr4
	mov.w @(0xB8,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0debf2
	mova @(0xCC,PC),r0
	fmov @r0,fr4

loc_8C0DEBF2:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fadd fr3,fr4
	fmov fr4,@(r0,r4)
	lds.l @r15+,pr

loc_8C0DEBFC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x9E,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r3
	mov 0x21,r0
	mov.b @(r0,r14),r1
	extu.b r3,r3
	extu.b r1,r1
	shlr r3
	cmp/eq r1,r3
	bt loc_8c0dec28
	mov.w @(0x88,PC),r0
	mov.b @(r0,r13),r2
	mov 0x21,r0
	extu.b r2,r2
	shlr r2
	mov.b r2,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x5,r14)

loc_8C0DEC28:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0x90,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	mov.b @r13,r3
	tst r3,r3
	bt loc_8c0dec4c
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0dec4c
	mov 0x01,r3
	bra loc_8c0dec52
	mov.b r3,@(r0,r14)

loc_8C0DEC4C:
	mov.w @(0x4C,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8C0DEC52:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DEC5A:
	mov 0x21,r0 ; r0 set to 0x21
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0DECC4,pc),r0 ; r0 set to 0x8C15E554
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0DEC6E:
	mov 0x21,r0 ; r0 set to 0x21
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0DECC8,pc),r0 ; r0 set to 0x8C15E5B8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0DEC82:
	mov 0x21,r0 ; r0 set to 0x21
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0DECCC,pc),r0 ; r0 set to 0x8C15E61c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dec96:
	#data 0x00cc
loc_8c0dec98:
	#data 0x00dc
loc_8c0dec9a:
	#data 0x00c0
loc_8c0dec9c:
	#data 0x012c
loc_8c0dec9e:
	#data 0x01a3
loc_8c0deca0:
	#data 0x00ff
loc_8c0deca2:
	#data 0x0130
loc_8c0deca4:
	#data 0x014b
	#align4

loc_8C0DECA8:
	#data bank12.loc_8c129560
loc_8C0DECAC:
	#data bank12.loc_8c1294C8
loc_8C0DECB0:
	#data bank15.loc_8c15E53c
loc_8C0DECB4:
	#data 0x434DB6Db
loc_8C0DECB8:
	#data 0xC2A00000
loc_8C0DECBc:
	#data 0x42A00000
loc_8C0DECC0:
	#data bank15.loc_8c15E548
loc_8C0DECC4:
	#data bank15.loc_8c15E554
loc_8C0DECC8:
	#data bank15.loc_8c15E5B8
loc_8C0DECCC:
	#data bank15.loc_8c15E61c

;==============================================
loc_8C0DECD0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0decf6
	mov.b @(0x5,r14),r0
	mov.l @(0x248,PC),r3
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x5,r14)
	and 0x0F,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c0df198
	mov r14,r4
	mov 0x02,r0
	mov.w r0,@(0x1E,r14)
	bsr loc_8c0df0a6
	mov r14,r4

loc_8C0DECF6:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0def40
	mov.l @r15+,r14

;==============================================
;is used alot
loc_8C0DECFE:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_8C0DED1a
	mov.l @(0x18,r14),r13
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0DEF40
	mov.l @r15+,r14

loc_8c0ded1a:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8c0ded36
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x01,r0
	mov.b r0,@(0x06,r14)
	bsr loc_8c0df198
	mov r14,r4
	bsr loc_8c0df0a6
	mov r14,r4
	mov 0x07,r0
	mov.w r0,@(0x1C,r14)

loc_8c0ded36:
	mova @(loc_8C0DEF2C,pc),r0
	fmov.s @r0,fr4
	mov 0x34,r0
	mov r0,r1
	add r13,r1
	fmov.s @r1,fr3
	mov 0x5C,r1
	add r14,r1
	mov r0,r2
	fmov.s @r1,fr2
	add r14,r2
	fadd fr3,fr2
	fmov.s @r2,fr3
	fsub fr3,fr2
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	mov r0,r1
	add r13,r1
	fmov.s @r1,fr3
	mov 0x60,r1
	add r14,r1
	mov r0,r2
	fmov.s @r1,fr2
	add r14,r2
	fadd fr3,fr2
	fmov.s @r2,fr3
	fsub fr3,fr2
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt/s loc_8c0ded8e
	mov r14,r4
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c0ded8e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0df040
	mov.l @r15+,r14

loc_8C0DED96:
	mov r4,r3
	mov.l @(loc_8C0DEF30,pc),r1 ; r1 set to 0x8C15E680
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0DEDA8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r0
	mov.b r0,@(0x6,r14)
	bsr loc_8c0df198
	mov r14,r4
	bsr loc_8c0df0a6
	mov r14,r4
	mov 0x3C,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DEDCA:
	mova @(0x160,PC),r0
	mov.l @(0x18,r4),r5
	fmov @r0,fr4
	mov 0x34,r0
	mov r0,r1
	add r5,r1
	fmov @r1,fr3
	mov 0x5C,r1
	add r4,r1
	mov r0,r2
	fmov @r1,fr2
	add r4,r2
	fadd fr3,fr2
	fmov @r2,fr3
	fsub fr3,fr2
	fmov @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov r0,r1
	add r5,r1
	fmov @r1,fr3
	mov 0x60,r1
	add r4,r1
	mov r0,r2
	fmov @r1,fr2
	add r4,r2
	fadd fr3,fr2
	fmov @r2,fr3
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov @(r0,r4),fr3
	fadd fr2,fr3
	fmov fr3,@(r0,r4)

loc_8C0DEE10:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0dee22
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0DEE22:
	mov.w @(0x1C,r4),r0
	mov 0x49,r3
	cmp/gt r3,r0
	bf loc_8c0dee2e
	bra loc_8c0df040
	nop

loc_8C0DEE2E:
	rts
	nop

;----------------------------------------------
loc_8C0DEE32:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r0
	mov.b r0,@(0x6,r14)
	bsr loc_8c0df15a
	mov r14,r4
	bsr loc_8c0df0a6
	mov r14,r4
	mov 0x01,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0DEE54:
	mova @(0xD4,PC),r0
	mov.l @(0x18,r4),r5
	fmov @r0,fr4
	mov 0x34,r0
	mov r0,r1
	add r5,r1
	fmov @r1,fr3
	mov 0x5C,r1
	add r4,r1
	mov r0,r2
	fmov @r1,fr2
	add r4,r2
	fadd fr3,fr2
	fmov @r2,fr3
	fsub fr3,fr2
	fmov @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov r0,r1
	add r5,r1
	fmov @r1,fr3
	mov 0x60,r1
	add r4,r1
	mov r0,r2
	fmov @r1,fr2
	add r4,r2
	fadd fr3,fr2
	fmov @r2,fr3
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov @(r0,r4),fr3
	fadd fr2,fr3
	fmov fr3,@(r0,r4)

loc_8C0DEE9A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x02,r13
	mov.l r3,@r15
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)
	bsr loc_8c0df0a6
	mov r14,r4
	mov.l @(0x70,PC),r2
	jsr @r2
	nop
	mov.l @(0x78,PC),r1
	mov 0x22,r3
	and 0x03,r0
	add r14,r3
	mov.b @(r0,r1),r0
	mov.b @r3,r3
	mov 0x22,r2
	add r14,r2
	add r3,r0
	and 0x1F,r0
	mov.b r0,@r2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0deee2
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)

loc_8C0DEEE2:
	mov 0x5C,r0
	mov.l @r15,r3
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r3),fr2
	fadd fr3,fr2
	fmov @(r0,r14),fr3
	mova @(0x44,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	fmov fr2,fr4
	fadd fr3,fr4
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf loc_8c0def02
	fneg fr4

loc_8C0DEF02:
	mova @(0x38,PC),r0
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bf.s loc_8c0def12
	mov r14,r4
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)

loc_8C0DEF12:
	bsr loc_8c0defcc
	nop
	bsr loc_8c0df148
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0df040
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0DEF28:
	#data bank03.loc_8c03319e
loc_8c0def2c:
	#data 0x41000000
loc_8C0DEF30:
	#data bank15.loc_8c15E680
loc_8C0DEF34:
	#data bank15.loc_8c15DBC8
loc_8C0DEF38:
	#data 0x40D55555
loc_8C0DEF3c:
	#data 0x41555555

;==============================================
loc_8c0def40:
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
	cmp/pz r0
	bt loc_8c0def8c
	mov 0x02,r0
	mov.w r0,@(0x1E,r14)
	bsr loc_8c0df0a6
	mov r14,r4
	mov.l @(loc_8c0df01c,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8c0df020,pc),r1
	mov 0x22,r3
	and 0x03,r0
	add r14,r3
	mov.b @(r0,r1),r0
	mov.b @r3,r3
	mov 0x22,r2
	add r14,r2
	add r3,r0
	and 0x1F,r0
	mov.b r0,@r2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0def8c
	mov 0x00,r0
	mov.b r0,@(0x05,r14)

loc_8c0def8c:
	mov 0x5C,r0
	mov.l @r15,r3
	fmov.s @(r0,r14),fr3
	mov 0x34,r0
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s @(r0,r14),fr3
	mova @(loc_8C0DF024,pc),r0
	fsub fr3,fr2
	fmov.s @r0,fr3
	fmov fr2,fr4
	fadd fr3,fr4
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf loc_8c0defac
	fneg fr4

loc_8c0defac:
	mova @(loc_8C0DF028,pc),r0
	fmov.s @r0,fr3
	fcmp/gt fr4,fr3
	bf/s loc_8c0defba
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x05,r14)

loc_8c0defba:
	bsr loc_8c0defcc
	nop
	bsr loc_8c0df148
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0df040
	mov.l @r15+,r14

loc_8c0defcc:
	mov 0x5C,r0
	mov.l @(0x18,r4),r5
	fmov.s @(r0,r4),fr3
	mov 0x34,r0
	fmov.s @(r0,r5),fr2
	mov.w @(loc_8C0DF018,pc),r6
	fadd fr3,fr2
	fmov.s @(r0,r4),fr3
	fmov fr2,fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf/s loc_8c0defea
	add r4,r6
	fneg fr4

loc_8c0defea:
	mova @(loc_8C0DF02C,pc),r0
	fmov.s @r0,fr3
	fcmp/gt fr3,fr4
	bf loc_8c0deff6
	mova @(loc_8C0DF030,pc),r0
	fmov.s @r0,fr4

loc_8c0deff6:
	mova @(loc_8C0DF034,pc),r0
	mov.l @(loc_8c0df03c,pc),r1
	fmov.s @r0,fr3
	mova @(loc_8C0DF038,pc),r0
	fmov.s @r0,fr2
	fdiv fr3,fr4
	fdiv fr2,fr4
	ftrc fr4,fpul
	sts fpul,r0
	and 0x0F,r0
	mov.b r0,@(0x06,r4)
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r0
	rts
	mov.w r0,@(0x04,r6)

;----------------------------------------------
loc_8C0DF018:
	#data 0x00CC
	#align4

loc_8c0df01c:
	#data bank03.loc_8c03319e
loc_8c0df020:
	#data bank15.loc_8c15dbc8
loc_8C0DF024:
	#data 0x40D55555
loc_8C0DF028:
	#data 0x41555555
loc_8C0DF02C:
	#data 0x43D55555
loc_8C0DF030:
	#data 0x43D48000
loc_8C0DF034:
	#data 0x3FD55555
loc_8C0DF038:
	#data 0x41800000
loc_8c0df03c:
	#data bank15.loc_8c15e698

;==============================================
loc_8c0df040:
	mov.w @(loc_8C0DF170,pc),r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bf loc_8c0df0a0
	mov.w @(loc_8C0DF172,pc),r6
	mov 0x00,r5
	mov.l @(loc_8c0df180,pc),r7

loc_8c0df056:
	mov.w @(loc_8C0DF174,pc),r0
	mov.l @(r0,r4),r3
	add 0x08,r3
	mov.l r3,@(r0,r4)
	add 0xEF,r0
	mov.b @(r0,r4),r2
	tst r6,r2
	bt loc_8c0df076
	mov.w @(loc_8C0DF174,pc),r0
	mov.l @(r0,r4),r1
	add 0x14,r0
	mov.l @(r0,r4),r2
	add 0xEC,r0
	mov.l @r1,r3
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c0df076:
	mov.w @(loc_8C0DF174,pc),r0
	mov.w @(loc_8C0DF176,pc),r1
	mov.l @(loc_8c0df184,pc),r3
	mov.l @(r0,r4),r2
	add r4,r1
	jsr @r3
	mov 0x08,r0
	mov.w @(loc_8C0DF178,pc),r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	mov.b @(r0,r7),r3
	mov.w @(loc_8C0DF170,pc),r0
	mov.b r3,@(r0,r4)
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0df056

loc_8c0df0a0:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c0df0a6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x5C,r0
	mov r4,r14
	fmov.s @(r0,r14),fr3
	mov 0x34,r0
	mov.l @(0x18,r14),r4
	mov r15,r5
	mov.l @(loc_8c0df188,pc),r3
	fmov.s @(r0,r4),fr2
	mov 0x60,r0
	fadd fr3,fr2
	fmov.s fr2,@r15
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	mov 0x04,r0
	mov r14,r4
	fadd fr3,fr2
	fmov.s fr2,@(r0,r15)
	jsr @r3
	add 0x34,r4
	extu.b r0,r0
	add 0x04,r0
	shar r0
	shar r0
	mov 0x22,r1
	shar r0
	add r14,r1
	and 0x1F,r0
	mov.b r0,@r1
	bsr loc_8c0df0f2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0df0f2:
	mov.l r14,@-r15
	mov 0x22,r0
	mov r4,r14
	mov.b @(r0,r14),r4
	extu.b r4,r3
	tst r3,r3
	bt loc_8c0df108
	mov 0x10,r3
	extu.b r4,r2
	cmp/ge r3,r2
	bf loc_8c0df110

loc_8c0df108:
	mov.w @(loc_8C0DF17A,pc),r0
	mov 0x00,r1
	bra loc_8c0df116
	mov.w r1,@(r0,r14)

loc_8c0df110:
	mov.w @(loc_8C0DF17A,pc),r0
	mov 0x01,r2
	mov.w r2,@(r0,r14)

loc_8c0df116:
	mov 0x22,r3
	mov.l @(loc_8c0df18c,pc),r4
	add r14,r3
	mov.b @(0x07,r14),r0
	mov.b @r3,r3
	extu.b r3,r3
	add r4,r3
	mov.b @r3,r2
	cmp/eq r2,r0
	bt loc_8c0df144
	mov 0x22,r0
	mov.l @(loc_8c0df190,pc),r3
	mov.b @(r0,r14),r0
	mov 0x1B,r5
	extu.b r0,r0
	mov.b @(r0,r4),r0
	mov r14,r4
	mov.b r0,@(0x07,r14)
	mov.b @(0x07,r14),r0
	mov r0,r6
	add 0x13,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c0df144:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0df148:
	add 0xFC,r15
	mov.w @(loc_8C0DF17C,pc),r3
	add r4,r3
	mov.l r3,@r15
	mov.w @(0x04,r3),r0
	mov.l @(loc_8c0df194,pc),r3
	mov r0,r5
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0df15a:
	add 0xFC,r15
	mov.w @(0x1E,PC),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r3
	extu.b r3,r3
	add 0x02,r3
	shar r3
	mov r3,r5
	mov.b r3,@r15
	bra loc_8c0df1aa
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DF170:
	#data 0x0142
loc_8C0DF172:
	#data 0x0080
loc_8C0DF174:
	#data 0x0154
loc_8C0DF176:
	#data 0x0140
loc_8C0DF178:
	#data 0x0148
loc_8C0DF17A:
	#data 0x0130
loc_8C0DF17C:
	#data 0x00CC
loc_8C0DF17e:
	#data 0x014B
	#align4

loc_8c0df180:
	#data bank15.loc_8c15e6b8
loc_8c0df184:
	#data bank12.loc_8c1294bc
loc_8c0df188:
	#data bank03.loc_8c03362c
loc_8c0df18c:
	#data bank15.loc_8c15e6c8
loc_8c0df190:
	#data bank03.loc_8c034c38
loc_8c0df194:
	#data bank03.loc_8c033718

;==============================================
loc_8c0df198:
	add 0xFC,r15
	mov.w @(0x84,PC),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r3
	extu.b r3,r3
	shlr r3
	mov r3,r5
	mov.b r3,@r15
	add 0x04,r15

loc_8c0df1aa:
	mov.w @(0x76,PC),r6
	mov.l @(0x18,r4),r7
	add r4,r6
	mov.b @(0x6,r6),r0
	add 0x01,r0
	and 0x03,r0
	mov.b r0,@(0x6,r6)
	mov r5,r0
	nop
	shll2 r0
	shll r0
	mov r0,r3
	mov.b @(0x6,r6),r0
	mov 0x04,r1
	shll r0
	add r3,r0
	mov.b r0,@(0x7,r6)
	mov.b @(0x7,r6),r0
	mov.l @r6,r3
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r3),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x7,r6),r0
	mov.l @r6,r3
	extu.b r0,r0
	shll2 r0
	add r3,r0
	fmov @(r0,r1),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x38,PC),r0
	mov.w @(r0,r7),r3
	tst r3,r3
	bt loc_8c0df1fa
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c0df1fa:
	rts
	nop

;==============================================
loc_8C0DF1FE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DF228,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0DF22C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0DF210:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DF228,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0DF22C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0df222:
	#data 0x014b
loc_8c0df224:
	#data 0x00cc
loc_8c0df226:
	#data 0x0130
loc_8c0df228:
	#data 0x012c
	#align4

loc_8C0DF22C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0DF230:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x144,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0df264
	mov r0,r4
	mov 0x00,r5
	mov.l @(0x134,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.w @(0x10A,PC),r3
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0DF264:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DF26C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8C0DF288
	mov.l @(0x18,r14),r5
	lds.l @r15+,pr
	mov.l @(loc_8C0DF384,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8C0DF288:
	mov.b @(0x04,r14),r0
	mov 0x01,r6 ; r6 set to 0x01
	tst r0,r0
	bf/s loc_8C0DF316
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0DF36A,pc),r1 ; r1 set to 0xDc
	mov.l @(loc_8C0DF388,pc),r3 ; r3 set to 0x8C129560
	mov.w @(loc_8C0DF36A,pc),r2 ; r2 set to 0xDc
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r6,@r14
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DF36C,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0DF36E,pc),r0 ; r0 set to 0x12c
	mov r14,r1
	add 0x50,r1
	mov.b r6,@(r0,r14)
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
	mov.w @(loc_8C0DF370,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DF38C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x0C,r3 ; r3 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0DF372,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r14)
	add 0x9C,r0 ; r0 set to 0xCc
	mov.l r4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r0,@(0x05,r14)
	mov 0x50,r6 ; r6 set to 0x50
	bsr loc_8C0DF638
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_8C0DF390,pc),r2 ; r2 set to 0x8C104434
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0DF316:
	mov.b @r5,r2
	tst r2,r2
	bt loc_8C0DF34e
	mov.w @(loc_8C0DF36E,pc),r0 ; r0 set to 0x12c
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8C0DF34e
	mov.b r6,@(r0,r14)
	add 0x23,r0 ; r0 set to 0x14f
	mov.b r6,@r14
	mov.b @(r0,r5),r3
	mov.w @(loc_8C0DF374,pc),r0 ; r0 set to 0xCc
	extu.b r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r2,r3
	bt loc_8C0DF354
	mov.w @(loc_8C0DF376,pc),r0 ; r0 set to 0x14f
	mov.b @(r0,r5),r1
	mov.w @(loc_8C0DF374,pc),r0 ; r0 set to 0xCc
	extu.b r1,r1
	mov.l r1,@(r0,r14)
	mov r4,r0 ; r0 ??? bc r4 is ???
	nop
	mov.b r0,@(0x05,r14)
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.w @(loc_8C0DF378,pc),r0 ; r0 set to 0x141
	bra loc_8C0DF354
	mov.b r3,@(r0,r14)

loc_8C0DF34E:
	mov.w @(loc_8C0DF36E,pc),r0 ; r0 set to 0x12c
	mov.b r4,@r14
	mov.b r4,@(r0,r14)

loc_8C0DF354:
	mov.w @(loc_8C0DF374,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(r0,r14),r3
	mov.l @(loc_8C0DF394,pc),r0 ; r0 set to 0x8C15E6E8, r0 set to 0x8C15E6E8
	shar r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DF368:
	#data 0x1F02
loc_8C0DF36A:
	#data 0x00Dc
loc_8C0DF36C:
	#data 0x00C0
loc_8C0DF36E:
	#data 0x012c
loc_8C0DF370:
	#data 0x01A3
loc_8C0DF372:
	#data 0x0130
loc_8C0DF374:
	#data 0x00Cc
loc_8C0DF376:
	#data 0x014f
loc_8C0DF378:
	#data 0x0141
	#align4

loc_8C0DF37C:
	#data bank04.loc_8c044F12
loc_8C0DF380:
	#data loc_8c0dF26c
loc_8C0DF384:
	#data bank04.loc_8c0450C0
loc_8C0DF388:
	#data bank12.loc_8c129560
loc_8C0DF38C:
	#data bank12.loc_8c1294C8
loc_8C0DF390:
	#data bank10.loc_8c104434
loc_8C0DF394:
	#data bank15.loc_8c15E6E8

;==============================================
loc_8c0df398:
	mov 0x34,r0
	fmov.s @(r0,r4),fr2
	fmov.s @(r0,r5),fr3
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf/s loc_8c0df3aa
	mov 0x00,r6
	mov 0x01,r6

loc_8c0df3aa:
	rts
	extu.b r6,r0

loc_8C0DF3AE:
	mov.l r14,@-r15
	mov 0x00,r0 ; r0 set to 0x00
	sts.l pr,@-r15
	mov.l @(loc_8C0DF494,pc),r3 ; r3 set to 0x8C03319e
	mov r4,r14
	jsr @r3
	mov.b r0,@(0x05,r14)
	tst 0x03,r0
	bt/s loc_8C0DF3C6
	mov 0x1B,r5 ; r5 set to 0x1b
	bra loc_8C0DF3C8
	mov 0x50,r6

loc_8C0DF3C6:
	mov 0x51,r6 ; r6 set to 0x51

loc_8C0DF3C8:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0DF638
	mov.l @r15+,r14

loc_8C0DF3D0:
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x05,r4)
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C0DF48C,pc),r0 ; r0 set to 0x130
	mov 0x54,r6 ; r6 set to 0x54
	mov.w @(r0,r4),r2
	xor r3,r2
	mov.w r2,@(r0,r4)
	bra loc_8C0DF638
	mov 0x1B,r5

;==============================================
loc_8C0DF3E4:
	mova @(0xB0,PC),r0
	fmov @r0,fr4
	mov.w @(0xA0,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0df3f4
	mova @(0xA8,PC),r0
	fmov @r0,fr4

loc_8C0DF3F4:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fadd fr3,fr4
	fmov @(r0,r4),fr3
	fsub fr3,fr4
	rts
	fmov fr4,fr0

;----------------------------------------------
loc_8C0DF402:
	mov.w @(0x88,PC),r0
	mov r4,r6
	mov 0x1B,r5
	mov.l r4,@-r15
	mov.l @(r0,r6),r6
	mov.l @(0x90,PC),r0
	shar r6
	mov.b @(r0,r6),r6
	bra loc_8c0df638
	add 0x04,r15

;==============================================
loc_8C0DF416:
	mov.l r14,@-r15
	mova @(loc_8C0DF4A4,pc),r0  ; r0 init to 0x8C0DF4A4
	mov.l r13,@-r15
	mov r4,r14
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf/s loc_8C0DF4D0
	mov r5,r13
	mov r13,r5
	bsr loc_8C0DF398
	mov r14,r4
	mov.w @(loc_8C0DF48C,pc),r2 ; r2 set to 0x130
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.w @r2,r2
	cmp/eq r2,r0
	bf loc_8C0DF4F4
	mov.w @(loc_8C0DF490,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0DF448
	bra loc_8C0DF53e
	nop

loc_8c0df448:
	mov r13,r5
	bsr loc_8c0df3e4
	mov r14,r4
	fldi0 fr3
	fmov fr0,fr4
	fcmp/gt fr4,fr3
	bf/s loc_8c0df45c
	mov 0x00,r4
	mov 0x01,r4
	fneg fr4

loc_8c0df45c:
	fcmp/gt fr4,fr15
	bt loc_8c0df530
	mov 0x02,r0
	mov.b r0,@(0x05,r14)
	exts.b r4,r4
	mov.w @(loc_8C0DF492,pc),r0
	tst r4,r4
	bt/s loc_8c0df470
	mov.w r0,@(0x1C,r14)
	fneg fr4

loc_8c0df470:
	mov.w @(loc_8c0df48c,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c0df47c
	fldi0 fr3
	fneg fr4

loc_8c0df47c:
	fcmp/gt fr4,fr3
	bf loc_8c0df4ac
	mova @(loc_8C0DF4A8,pc),r0
	fmov.s @r0,fr2
	mov 0x5C,r0
	fmov.s fr2,@(r0,r14)
	bra loc_8c0df4b6
	mov 0x52,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0df48c:
	#data 0x0130
loc_8c0df48e:
	#data 0x00CC
loc_8c0df490:
	#data 0x0141
loc_8C0DF492:
	#data 0x0160
	#align4

loc_8c0df494:
	#data bank03.loc_8c03319e
loc_8c0df498:
	#data 0x42d55555
loc_8c0df49c:
	#data 0xc2d55555
loc_8c0df4a0:
	#data bank15.loc_8c15e728
loc_8c0df4a4:
	#data 0x41d55555
loc_8C0DF4A8:
	#data 0xC0D55555

;==============================================
loc_8c0df4ac:
	mova @(loc_8C0DF558,pc),r0
	fmov.s @r0,fr2
	mov 0x5C,r0
	mov 0x53,r6
	fmov.s fr2,@(r0,r14)

loc_8c0df4b6:
	mov.w @(loc_8c0df554,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0df4c8
	mov 0x1B,r5
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c0df4c8:
	bsr loc_8c0df638
	mov r14,r4
	bra loc_8c0df53e
	nop

;==============================================
loc_8C0DF4D0:
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C0DF4E4
	bsr loc_8C0DF658
	mov r14,r4
	cmp/pz r0
	bt loc_8C0DF54a
	bra loc_8C0DF530
	nop

loc_8C0DF4E4:
	mov r13,r5
	bsr loc_8C0DF398
	mov r14,r4
	mov.w @(loc_8C0DF554,pc),r2 ; r2 set to 0x130
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.w @r2,r2
	cmp/eq r2,r0
	bt loc_8C0DF502

loc_8C0DF4F4:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8C0DF3D0
	mov.l @r15+,r14
	
loc_8c0df502:
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c0df530
	mov r13,r5
	bsr loc_8c0df3e4
	mov r14,r4
	fldi0 fr3
	fmov fr0,fr4
	fcmp/gt fr4,fr3
	bf loc_8c0df52c
	fneg fr4

loc_8c0df52c:
	fcmp/gt fr4,fr15
	bf loc_8c0df53e

loc_8C0DF530:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8C0DF3Ae
	mov.l @r15+,r14

;==============================================
loc_8C0DF53E:
	lds.l @r15+,pr
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8C0DF658
	mov.l @r15+,r14

loc_8C0DF54A:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DF554:
	#data 0x0130
	#align4

loc_8c0df558:
	#data 0x40A00000

;==============================================
loc_8C0DF55C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c0df5a0
	mov r5,r13
	mov.b @(0x5,r14),r0
	mov r13,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x100,PC),r0
	mov.w @(r0,r13),r3
	mov.w @(0xFE,PC),r0
	mov.l r3,@(r0,r14)
	bsr loc_8c0df402
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r13),fr4
	fmov @(r0,r14),fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0df590
	fneg fr4

loc_8C0DF590:
	mova @(0xEC,PC),r0
	fmov @r0,fr3
	fcmp/gt fr3,fr4
	bt loc_8c0df5a0
	mov 0x1B,r5
	mov 0x4F,r6
	bsr loc_8c0df638
	mov r14,r4

loc_8C0DF5A0:
	mov.w @(0xD4,PC),r0
	mov.w @(r0,r13),r3
	mov.w @(0xD2,PC),r0
	mov.l @(r0,r14),r2
	cmp/eq r2,r3
	bt.s loc_8c0df5b2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)

loc_8C0DF5B2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0df658
	mov.l @r15+,r14

loc_8C0DF5BA:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0df5d0
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	bsr loc_8c0df402
	mov r14,r4

loc_8C0DF5D0:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0df658
	mov.l @r15+,r14

loc_8C0DF5D8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0df5f4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.l @r15,r5
	bsr loc_8c0df402
	mov r14,r4
 
loc_8C0DF5F4:
	mov.w @(0x84,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0df608
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x22,r5
	mov.l @(0x80,PC),r3
	jsr @r3
	mov.l @r15,r4

loc_8C0DF608:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0df658
	mov.l @r15+,r14
 
loc_8C0DF612:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0df62c
	mov.b @(0x5,r14),r0
	mov 0x1B,r5
	mov 0x5F,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	bsr loc_8c0df638
	mov r14,r4
 
loc_8C0DF62C:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0df658
	mov.l @r15+,r14

loc_8C0DF634:
	bra loc_8C0DF658
	nop

loc_8C0DF638:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0DF688,pc),r3 ; r3 set to 0x8C034C38
	jsr @r3
	mov.l r4,@r15
	mov.w @(loc_8C0DF67E,pc),r3 ; r3 set to 0xE0
	mov r0,r4
	mov.l @r15,r2
	mov r3,r0 ; r0 set to 0xE0
	nop
	add 0x69,r0 ; r0 set to 0x149
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DF658:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0DF68C,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	mov.w @(loc_8C0DF67E,pc),r3 ; r3 set to 0xE0
	exts.b r0,r4
	mov.l @r15,r2
	mov r3,r0 ; r0 set to 0xE0
	nop
	add 0x69,r0 ; r0 set to 0x149
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0df678:
	#data 0x0260
loc_8c0df67a:
	#data 0x00D0
loc_8c0df67c:
	#data 0x0141
loc_8C0DF67E:
	#data 0x00E0
	#align4

loc_8C0DF680:
	#data 0x43555555
loc_8C0DF684:
	#data bank04.loc_8c042008
loc_8C0DF688:
	#data bank03.loc_8c034C38
loc_8C0DF68C:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0DF690:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x03,r5
	mov.l @(0x108,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0df6d0
	mov r0,r4
	mov.l @(0xFC,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0xD4,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xCA,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(0xC8,PC),r0
	extu.w r2,r2
	mov.l r2,@(r0,r4)

loc_8C0DF6D0:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DF6DC:
	mov.w @(0xB8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xC4,PC),r3
	add 0x01,r0
	mov.w @(0xAC,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0xAA,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xA6,PC),r0
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
	mov.w @(0x8A,PC),r0
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
	mov.l @(0x88,PC),r3
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	mov 0x24,r0
	mov.b @(r0,r5),r2
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0DF736:
	rts
	nop

;----------------------------------------------
loc_8C0DF73A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0df75a
	mov r5,r13
	mov r13,r5
	bsr loc_8c0df6dc
	mov r14,r4
	mov.l @(0x60,PC),r2
	mov 0x1B,r5
	mov 0x18,r6
	jsr @r2
	mov r14,r4

loc_8C0DF75A:
	mov 0x24,r0
	mov 0x0B,r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x30,PC),r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0df78a
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x12,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0DF78A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0df792:
	#data 0x1f03
loc_8c0df794:
	#data 0x0158
loc_8c0df796:
	#data 0x00d0
loc_8c0df798:
	#data 0x00dc
loc_8c0df79a:
	#data 0x00c0
loc_8c0df79c:
	#data 0x012c
loc_8c0df79e:
	#data 0x01a3
loc_8c0df7a0:
	#data 0x0130
	#align4

loc_8C0DF7A4:
	#data bank04.loc_8c044F12
loc_8C0DF7A8:
	#data loc_8c0dFB52
loc_8C0DF7AC:
	#data bank12.loc_8c129560
loc_8C0DF7B0:
	#data bank12.loc_8c1294C8
loc_8C0DF7B4:
	#data bank03.loc_8c034C38
loc_8C0DF7B8:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0DF7BC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.l @(0xD8,PC),r12
	tst r0,r0
	bf.s loc_8c0df7fc
	mov r5,r13
	mov r13,r5
	bsr loc_8c0df6dc
	mov r14,r4
	mov 0x1B,r5
	mov 0x21,r6
	jsr @r12
	mov r14,r4
	mov.w @(0xB6,PC),r0
	mov 0xFF,r4
	mov 0x0B,r3
	mov.l r4,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xA6,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)

loc_8C0DF7FC:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0df876
	mov.w @(0x96,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0df812
	mov 0x01,r0
	mov.b r0,@(0x5,r14)
	bra loc_8c0df84a
	mov 0x24,r6

loc_8C0DF812:
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0df828
	lds.l @r15+,pr
	mov.l @(0x88,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0DF828:
	mov.w @(0x6C,PC),r0
	mov.l @(r0,r14),r2
	mov.w @(0x6E,PC),r0
	mov.l @(r0,r13),r3
	cmp/eq r2,r3
	bt loc_8c0df854
	mov.l @(r0,r13),r0
	cmp/eq 0x24,r0
	bf loc_8c0df840
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0DF840:
	mov.w @(0x5A,PC),r0
	mov.l @(r0,r13),r3
	mov.w @(0x50,PC),r0
	mov.l r3,@(r0,r14)
	mov.l @(r0,r14),r6

loc_8C0DF84A:
	mov 0x1B,r5
	jsr @r12
	mov r14,r4
	bra loc_8c0df88e
	nop

loc_8C0DF854:
	mov.w @(0x48,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0df868
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x23,r5
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r13,r4

loc_8C0DF868:
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0DF876:
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0df88e
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x14,PC),r0
	mov.b r3,@(r0,r14)


loc_8C0DF88E:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0df898:
	#data 0x00cc
loc_8c0df89a:
	#data 0x041c
loc_8c0df89c:
	#data 0x0411
loc_8c0df89e:
	#data 0x02f0
loc_8c0df8a0:
	#data 0x0141
loc_8c0df8a2:
	#data 0x012c
	#align4

loc_8C0DF8A4:
	#data bank03.loc_8c034C38
loc_8C0DF8A8:
	#data bank04.loc_8c0450C0
loc_8C0DF8AC:
	#data bank04.loc_8c042008
loc_8C0DF8B0:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0DF8B4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0df8ec
	mov r5,r13
	mov r13,r5
	bsr loc_8c0df6dc
	mov r14,r4
	mov.l @(0x6C,PC),r2
	mov 0x1B,r5
	mov 0x25,r6
	jsr @r2
	mov r14,r4
	mov 0x02,r0
	mov.w r0,@(0x1C,r14)
	mov 0x31,r0
	mov 0xFF,r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x4C,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8C0DF8EC:
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0df904
	lds.l @r15+,pr
	mov.l @(0x44,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0DF904:
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0df92c
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0df92c
	mov r13,r4
	mov 0x02,r0
	mov.w r0,@(0x1C,r14)
	mov 0x05,r5
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0df690
	mov.l @r15+,r14

loc_8C0DF92C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0df934:
	#data 0x041c
loc_8c0df936:
	#data 0x0141
	#align4

loc_8C0DF938:
	#data bank03.loc_8c034C38
loc_8C0DF93C:
	#data bank03.loc_8c034D8c
loc_8C0DF940:
	#data bank04.loc_8c0450C0

loc_8C0DF944:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0df9e6
	mov r5,r13
	mov r13,r5
	bsr loc_8c0df6dc
	mov r14,r4
	mov.l @(0x11C,PC),r2
	mov 0x1B,r5
	mov 0x26,r6
	jsr @r2
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	mov.l @(0x114,PC),r12
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	jsr @r12
	fmov fr4,@(r0,r14)
	and 0x7F,r0
	add 0xA0,r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0df988
	float fpul,fr3
	mov.l @(0x100,PC),r3
	lds r3,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C0DF988:
	mova @(0xFC,PC),r0
	fmov fr3,fr4
	fmov @r0,fr2
	mov.w @(0xE0,PC),r0
	fmul fr2,fr4
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0df99c
	mov.w r3,@(r0,r14)
	fneg fr4

loc_8C0DF99C:
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fadd fr4,fr3
	jsr @r12
	fmov fr3,@(r0,r14)
	and 0x3F,r0
	add 0x50,r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0df9ba
	float fpul,fr3
	mov.l @(0xD0,PC),r3
	lds r3,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C0DF9BA:
	mova @(0xD0,PC),r0
	fmov @r0,fr0
	mov.w @(0xB2,PC),r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fmac fr0,fr3,fr2
	jsr @r12
	fmov fr2,@(r0,r14)
	mov 0x03,r4
	and r0,r4
	mov.l @(0xC0,PC),r0
	shll2 r4
	fmov @(r0,r4),fr3
	mov 0x60,r0
	mov 0xFF,r3
	fmov fr3,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)

loc_8C0DF9E6:
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c0df9fa
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0dfa08


loc_8C0DF9FA:
	lds.l @r15+,pr
	mov.l @(0x9C,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0DFA08:
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
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
 
;----------------------------------------------
loc_8C0DFA4A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DFA76,pc),r0 ; r0 set to 0x158
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.w @(r0,r13),r3
	mov.w @(loc_8C0DFA78,pc),r0 ; r0 set to 0xD0
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8C0DFAA0
	mov.b @(0x04,r14),r0
	mov 0x00,r4 ; r4 set to 0x00
	add 0x01,r0 ; r0 set to 0xD1
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DFA7A,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	bra loc_8C0DFAFc
	mov.b r4,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DFA72:
	#data 0x0130
loc_8C0DFA74:
	#data 0x041c
loc_8C0DFA76:
	#data 0x0158
loc_8C0DFA78:
	#data 0x00D0
loc_8C0DFA7A:
	#data 0x012c
	#align4

loc_8C0DFA7C:
	#data bank03.loc_8c034C38
loc_8C0DFA80:
	#data bank03.loc_8c03319e
loc_8C0DFA84:
	#data 0x4F800000
loc_8C0DFA88:
	#data 0x3FD55555
loc_8C0DFA8c:
	#data 0x40092492
loc_8C0DFA90:
	#data bank15.loc_8c15E738
loc_8C0DFA94:
	#data 0xBE092492
loc_8C0DFA98:
	#data bank03.loc_8c034D8c
loc_8C0DFA9C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0dfaa0:
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf loc_8c0dfaec
	mov 0x01,r3
	mov r13,r5
	mov.b r3,@r14
	bsr loc_8c0df6dc
	mov r14,r4
	mova @(loc_8C0DFB84,pc),r0
	fmov.s @r0,fr4
	mov.w @(loc_8C0DFB7C,pc),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt/s loc_8c0dfac2
	mov.w r3,@(r0,r14)
	mova @(loc_8C0DFB88,pc),r0
	fmov.s @r0,fr4

loc_8c0dfac2:
	mov 0x34,r0
	mov.l @(loc_8c0dfb8c,pc),r3
	fmov.s @(r0,r13),fr3
	mov 0x1B,r5
	mov 0x35,r6
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0DFB7E,pc),r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0DFB80,pc),r2
	mov r2,r0
	nop
	mov.l @(loc_8c0dfb90,pc),r3
	add 0x69,r0
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c0dfaec:
	mov.l @(loc_8c0dfb94,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0DFB80,pc),r3
	mov r3,r0
	nop
	add 0x69,r0
	mov.b r3,@(r0,r14)

loc_8C0DFAFC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DFB04:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0dfb38
	mov r5,r13
	mov r13,r5
	bsr loc_8c0df6dc
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x1B,r5
	mov 0x63,r6
	fmov fr3,@(r0,r14)
	mov.w @(0x56,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x4C,PC),r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r14,r4

loc_8C0DFB38:
	mov.l @(0x58,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0dfb4a
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0DFB4A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DFB52:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8C0DFB6a
	mov.l @(0x18,r14),r5
	mov.l @(loc_8C0DFB98,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8C0DFB6A:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0DFB9C,pc),r0 ; r0 set to 0x8C15E748
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r1
	jmp @r1
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0dfb7c:
	#data 0x0130
loc_8c0dfb7e:
	#data 0x041C
loc_8c0dfb80:
	#data 0x00E0
	#align4

loc_8c0dfb84:
	#data 0x42D55555
loc_8c0dfb88:
	#data 0xC2D55555
loc_8C0DFB8C:
	#data bank03.loc_8c034C38
loc_8C0DFB90:
	#data bank10.loc_8c104434
loc_8C0DFB94:
	#data bank03.loc_8c034D8c
loc_8C0DFB98:
	#data bank04.loc_8c0450C0
loc_8C0DFB9C:
	#data bank15.loc_8c15E748

;==============================================
;unused
loc_8c0dfba0:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(0xC4,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0dfbda
	mov r0,r4
	mov.l @(0xB4,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0x9A,PC),r2
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0dfbda:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DFBE2:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x7C,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0dfc28
	mov r0,r4
	mov.l @(0x6C,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.w @(0x52,PC),r3
	mov.l r2,@(0x14,r4)
	mov 0x21,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0DFC28:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0DFC30:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DFC6C,pc),r2 ; r2 set to 0x2A4
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(loc_8C0DFC6E,pc),r1 ; r1 set to 0xCc
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C0DFC78,pc),r3 ; r3 set to 0x8C28C6D4
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C0DFC7C,pc),r2 ; r2 set to 0x8C28C6D0
	mov.l r1,@r2 ; r2 ??? bc r1 is ???
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0DFC80,pc),r0 ; r0 set to 0x8C15E918
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

loc_8C0DFC58:
	mov r4,r3
	mov.l @(loc_8C0DFC84,pc),r1 ; r1 set to 0x8C15E92c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DFC6a:
	#data 0x2000
loc_8C0DFC6C:
	#data 0x02A4
loc_8C0DFC6E:
	#data 0x00Cc
	#align4

loc_8C0DFC70:
	#data bank04.loc_8c044F12
loc_8C0DFC74:
	#data loc_8c0dFC30
loc_8C0DFC78:
	#data 0x8C28C6D4
loc_8C0DFC7C:
	#data 0x8C28C6D0
loc_8C0DFC80:
	#data bank15.loc_8c15E918
loc_8C0DFC84:
	#data bank15.loc_8c15E92c

;==============================================
loc_8C0DFC88:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DFD68,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0DFD74,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DFD68,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0DFD6A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0DFD6C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DFD78,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r14)
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???
	mov.w @(loc_8C0DFD6E,pc),r0 ; r0 set to 0x158
	mov.l @(loc_8C0DFD7C,pc),r1 ; r1 set to 0x8C28C6D0
	mov.w @(r0,r2),r2
	mov.l @r1,r3
	mov.w r2,@r3
	mov.l @(loc_8C0DFD80,pc),r3 ; r3 set to 0x8C034C38
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0DFD12:
mov.l @(loc_8C0DFD7C,pc),r2 ; r2 set to 0x8C28C6D0, r2 set to 0x8C28C6D0
	mov.w @(loc_8C0DFD6E,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.l @r2,r3 ; r3 ??
	mov.w @r3,r1 ; r1 ??? bc r3 is ???
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C0DFD26
	bra bank0e.loc_8c0e043a
	nop

loc_8C0DFD26:
	mov.w @(loc_8C0DFD70,pc),r0 ; r0 set to 0x141
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C0DFD38
	mov.w @(loc_8C0DFD6A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0DFD38:
	mov.w @(loc_8C0DFD6A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0DFD84,pc),r3 ; r3 set to 0x8C034D8c
	jmp @r3
	fmov.s fr3,@(r0,r4)

;unused
	rts
	nop

;----------------------------------------------
loc_8C0DFD56:
	mov r4,r3
	mov.l @(loc_8C0DFD88,pc),r1 ; r1 set to 0x8C15E93c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DFD68:
	#data 0x00Dc
loc_8C0DFD6A:
	#data 0x012c
loc_8C0DFD6C:
	#data 0x01A3
loc_8C0DFD6E:
	#data 0x0158
loc_8C0DFD70:
	#data 0x0141
	#align4

loc_8C0DFD74:
	#data bank12.loc_8c129560
loc_8C0DFD78:
	#data bank12.loc_8c1294C8
loc_8C0DFD7C:
	#data 0x8C28C6D0
loc_8C0DFD80:
	#data bank03.loc_8c034C38
loc_8C0DFD84:
	#data bank03.loc_8c034D8c
loc_8C0DFD88:
	#data bank15.loc_8c15E93c

;==============================================
loc_8C0DFD8C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0DFEA2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0DFEAC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0DFEA2,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0DFEA4,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0DFEA6,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DFEB0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0DFEB4,pc),r5 ; r5 set to 0x8C28C6D0
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.w @(loc_8C0DFEA8,pc),r0 ; r0 set to 0x158
	mov.l @r5,r3
	mov.w @(r0,r2),r1
	mov.w r1,@r3
	mov.l @r5,r3
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x02,r3)
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0DFEB8,pc),r3 ; r3 set to 0x8C034C38
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0DFE1E:
	mov.l r14,@-r15
	mov.l @(loc_8C0DFEB4,pc),r14 ; r14 set to 0x8C28C6D0, r14 set to 0x8C28C6D0
	mov.w @(loc_8C0DFEA8,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.l @r14,r3 ; r3 ??
	mov.w @r3,r2
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r1
	cmp/eq r1,r2
	bt loc_8C0DFE34
	bra bank0e.loc_8c0e043a
	mov.l @r15+,r14

loc_8C0DFE34:
	mov.w @(loc_8C0DFEAA,pc),r0 ; r0 set to 0x140
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	cmp/pl r2
	bt loc_8C0DFE48
	mov.w @(loc_8C0DFEA4,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r4)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DFE48:
	mov.w @(loc_8C0DFEA4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	mov.w @(loc_8C0DFEAA,pc),r2 ; r2 set to 0x140
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.l @r14,r3
	mov.b @(0x02,r3),r0
	mov.l @(0x18,r4),r3
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.b @r2,r2
	cmp/eq r2,r0
	bf loc_8C0DFE74
	mov.l @(loc_8C0DFEBC,pc),r2 ; r2 set to 0x8C034D8c
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0DFE74:
	mov.w @(loc_8C0DFEAA,pc),r1 ; r1 set to 0x140
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(0x18,r4),r0
	mov.l @r14,r3
	mov.b @(r0,r1),r0
	mov.b r0,@(0x02,r3)
	mov.l @r14,r6
	mov.l @(loc_8C0DFEB8,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(0x02,r6),r0
	mov r0,r6
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0DFE90:
	mov r4,r3
	mov.l @(loc_8C0DFEC0,pc),r1 ; r1 set to 0x8C15E94c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DFEA2:
	#data 0x00Dc
loc_8C0DFEA4:
	#data 0x012c
loc_8C0DFEA6:
	#data 0x01A3
loc_8C0DFEA8:
	#data 0x0158
loc_8C0DFEAA:
	#data 0x0140
	#align4

loc_8C0DFEAC:
	#data bank12.loc_8c129560
loc_8C0DFEB0:
	#data bank12.loc_8c1294C8
loc_8C0DFEB4:
	#data 0x8C28C6D0
loc_8C0DFEB8:
	#data bank03.loc_8c034C38
loc_8C0DFEBC:
	#data bank03.loc_8c034D8c
loc_8C0DFEC0:
	#data bank15.loc_8c15E94c

;==============================================
loc_8C0DFEC4:
	mov.w @(loc_8C0DFFB2,pc),r0 ; r0 set to 0x1C8
	mov.w @(loc_8C0DFFB4,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.l @(0x18,r4),r5
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0DFFBC,pc),r3 ; r3 set to 0x8C129560
	mov.l @(r0,r5),r5
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x1C9
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0DFFB4,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0DFFB6,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0DFFB8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0DFFC0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0A,r2 ; r2 set to 0x0a
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov.b @(0x01,r5),r0
	mov.l @(loc_8C0DFFC4,pc),r1 ; r1 set to 0x8C15E7A4
	extu.b r0,r0 ; r0 set to 0x31
	mov.b @(r0,r1),r6
	mov.w @(loc_8C0DFFBA,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bt loc_8C0DFF56
	mov.l @(loc_8C0DFFC8,pc),r0 ; r0 set to 0x8C15E7E0
	extu.b r6,r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	bra loc_8C0DFF60
	nop

loc_8C0DFF56:
	mov.l @(loc_8C0DFFC8,pc),r0 ; r0 set to 0x8C15E7E0
	extu.b r6,r2
	shll2 r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_8C0DFF60:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov r0,r1 ; r1 set to 0x34, r1 set to 0x34
	add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x08,r3 ; r3 set to 0x08, r3 set to 0x08
	fmov.s @(r0,r4),fr2
	mov r3,r6 ; r6 set to 0x08, r6 set to 0x08
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	mov.l @(loc_8C0DFFCC,pc),r1 ; r1 set to 0x8C15E7F8, r1 set to 0x8C15E7F8
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.b @(0x01,r5),r0
	extu.b r0,r0 ; r0 set to 0x34, r0 set to 0x34
	shll2 r0 ; r0 set to 0xD0, r0 set to 0xD0
	fmov.s @(r0,r1),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r5),fr2
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.l @(loc_8C0DFFD0,pc),r1 ; r1 set to 0x8C15E8E4, r1 set to 0x8C15E8E4
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	mov.w r0,@(0x1E,r4)
	mov.w @(0x1E,r4),r0
	shll r0 ; r0 set to 0x00, r0 set to 0x00
	mov.w @(r0,r1),r0 ; r0 ??, r0 ??
	mov.w r0,@(0x1C,r4)
	mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0DFFD4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	jmp @r3
	lds.l @r15+,pr

loc_8C0DFFA0:
	mov r4,r3
	mov.l @(loc_8C0DFFD8,pc),r1 ; r1 set to 0x8C15E95c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0DFFB2:
	#data 0x01C8
loc_8C0DFFB4:
	#data 0x00Dc
loc_8C0DFFB6:
	#data 0x012c
loc_8C0DFFB8:
	#data 0x01A3
loc_8C0DFFBA:
	#data 0x0130
	#align4

loc_8C0DFFBC:
	#data bank12.loc_8c129560
loc_8C0DFFC0:
	#data bank12.loc_8c1294C8
loc_8C0DFFC4:
	#data bank15.loc_8c15E7A4
loc_8C0DFFC8:
	#data bank15.loc_8c15E7E0
loc_8C0DFFCC:
	#data bank15.loc_8c15E7F8
loc_8C0DFFD0:
	#data bank15.loc_8c15E8E4
loc_8C0DFFD4:
	#data bank03.loc_8c034C38
loc_8C0DFFD8:
	#data bank15.loc_8c15E95c

;==============================================
loc_8C0DFFDC:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l r3,@r15
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x22,r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	extu.b r2,r2
	tst r2,r2
	bf loc_8c0e006c
	mov 0x04,r1

loc_8C0E0000:
	mov.l @(0xD0,PC),r3
	mov.b r1,@(r0,r14)
	mova @(0xC8,PC),r0
	jsr @r3
	fmov @r0,fr15
	and 0x7F,r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0e001c
	float fpul,fr3
	mov.l @(0xC0,PC),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C0E001C:
	fadd fr15,fr3
	mov 0x04,r0
	mov.l @(0xB0,PC),r3
	fmov fr3,@(r0,r15)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fmul fr3,fr2
	jsr @r3
	fmov fr2,@(r0,r15)
	and 0x7F,r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0e0046
	float fpul,fr3
	mov.l @(0x98,PC),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C0E0046:
	fadd fr15,fr3
	mov 0x08,r0
	mov.l @(0x98,PC),r3
	mov r15,r5
	add 0x04,r5
	mov 0x00,r6
	fmov fr3,@(r0,r15)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mov 0x08,r0
	fmul fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x0C,r0
	fldi0 fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_8C0E006C:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e00a2
	mov.w @(0x1E,r14),r0
	mov 0x03,r5
	mov r0,r6
	bsr loc_8c0dfbe2
	mov r14,r4
	mov.w @(0x1E,r14),r0
	mov.l @(0x60,PC),r4
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	shll r0
	mov.w @(r0,r4),r0
	cmp/pz r0
	bt.s loc_8c0e00a2
	mov.w r0,@(0x1C,r14)
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	shll r0
	mov.w @(r0,r4),r0
	mov.w r0,@(0x1C,r14)

loc_8C0E00A2:
	mov.w @(0x22,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0e00b8
	mov.l @(0x3C,PC),r1
	mov 0x02,r3
	mov.l @r1,r2
	mov.b @(0x9,r2),r0
	cmp/ge r3,r0
	bf loc_8c0e00be

loc_8C0E00B8:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0E00BE:
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e00c8:
	#data 0x0411
	#align4

loc_8C0E00CC:
	#data bank03.loc_8c034D8c
loc_8C0E00D0:
	#data 0xC27C0000
loc_8C0E00D4:
	#data bank03.loc_8c03319e
loc_8C0E00D8:
	#data 0x4F800000
loc_8C0E00Dc:
	#data 0x3FD55555
loc_8C0E00e0:
	#data 0x40092492
loc_8C0E00E4:
	#data bank0f.loc_8c0fDAB6
loc_8C0E00E8:
	#data bank15.loc_8c15E8E4
loc_8C0E00ec:
	#data 0x8C28C6D4
