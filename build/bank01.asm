;##############################################
;EntryPoint
loc_8c010000:
	nop
	nop
	nop
	nop
	nop
	nop
	mov.l @(loc_8c010024,PC),r0   ;write $ff00001c to r0
	mov.l @r0,r1
	mov.l @(loc_8c010028,PC),r2   ;write $000089af to r2
	and r2,r1
	mov.w @(loc_8c010020,PC),r2   ;write $0800 to r2
	or r2,r1
	mov.l r1,@r0
	mov.l @(label_8c01002c,PC),r0   ;write $8c1742c0 to r0
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c010020:
	#data 0x0800
	#align4

loc_8c010024:
	#data 0xff00001c

loc_8c010028:
	#data 0x000089af

label_8c01002c:
	#data bank17.loc_8c1742c0

;0x30
libstarttext:
	#data "Lib Handle Start"

	#data 0x00000000 0x00000001 0x00000000 0x00000000
	#data 0xba7e0a00 0x11d1bda9 0x6000eb8a 0x5f629508

loc_8c010060:
	#data 0x00000000 0x00000000 0x00000000 0x00000000

;0x70
libendtext:
	#data "Lib Handle End  "

;==============================================
loc_8c010080:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0101bc,PC),r3   ; $8c17794e to r3
	jsr @r3
	nop
	mov.l @(loc_8c0101c4,PC),r9   ; $8c212be0 to r9
	mov.l @(loc_8c0101c0,PC),r14  ; $8c177a54 to r14
	jsr @r14
	mov 0x00,r4
	mov.l r0,@r9
	jsr @r14
	mov 0x06,r4
	mov.l r0,@(0x4,r9)
	jsr @r14
	mov 0x0C,r4
	mov.l r0,@(0x8,r9)
	jsr @r14
	mov 0x12,r4
	mov.l @(loc_8c0101c8,PC),r3   ; $8c213046 to r3
	mov.l r0,@(0xC,r9)
	mov.b @r3,r2
	tst r2,r2
	bt.s loc_8c0100c4
	mov 0x00,r12
	bra loc_8c01026e
	nop

loc_8c0100c4:
	mova @(loc_8c0101d0,PC),r0   ; $45c80000 to r0
	mov.l @(loc_8c0101cc,PC),r4   ; $8c2681dc to r4
	fmov @r0,fr15
	mov r12,r8
	mov.l r4,@r15
	mov r4,r11
	mov r4,r10

loc_8c0100d2:
	extu.b r8,r6
	shll2 r6
	mov r6,r0
	nop
	mov.l @(r0,r9),r3
	mov.l @(0x30,r3),r3
	mov.l @r3,r0
	tst 0x01,r0
	bf loc_8c0100e8
	bra loc_8c010232
	nop

loc_8c0100e8:
	extu.b r8,r4
	mov.l @(loc_8c0101cc,PC),r2   ; $8c2681dc to r2
	mov r4,r3
	shll2 r4
	add r3,r4
	mov r6,r5
	shll2 r4
	add r2,r4
	mov.w @r4,r0
	add r9,r5
	mov 0x10,r3
	mov.w r0,@(0x2,r4)
	mov.l @r5,r0
	mov.w @(0x1A,r0),r0
	mov.w r0,@(0xA,r4)
	mov.l @r5,r0
	mov.w @(0x18,r0),r0
	mov.w r0,@(0x8,r4)
	mov.l @r5,r0
	mov.w @(0x1C,r0),r0
	mov.w r0,@(0xC,r4)
	mov.l @r5,r0
	mov.w @(0x1E,r0),r0
	mov.w r0,@(0xE,r4)
	mov.l @r5,r13
	mov.l @(0x8,r13),r13
	tst r13,r3
	bt.s loc_8c010124
	mov r12,r14
	mov.w @(loc_8c0101ae,PC),r14   ; $2000 to r14

loc_8c010124:
	mov 0x20,r3
	tst r13,r3
	bt.s loc_8c010130
	mov 0x40,r3
	mov.w @(loc_8c0101b0,PC),r1   ; $1000 to r1
	or r1,r14

loc_8c010130:
	tst r13,r3
	bt loc_8c010138
	mov.w @(loc_8c0101b2,PC),r1   ; $0800 to r1
	or r1,r14

loc_8c010138:
	mov.w @(loc_8c0101b4,PC),r3   ; $0400 to r3
	tst r13,r3
	bt loc_8c010142
	mov.w @(loc_8c0101b6,PC),r1   ; $0080 to r1
	or r1,r14

loc_8c010142:
	extu.w r14,r3
	tst r3,r3
	bf loc_8c01019a
	extu.b r8,r4
	mov.l @(loc_8c0101cc,PC),r2   ; $8c2681dc to r2
	mov r4,r3
	shll2 r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov.w @(0xC,r4),r0
	mov r0,r3
	lds r3,fpul
	mov.w @(0xE,r4),r0
	mov r0,r3
	float fpul,fr4
	lds r3,fpul
	float fpul,fr5
	fmov fr4,fr0
	fmov fr5,fr3
	fmul fr5,fr3
	fmac fr0,fr4,fr3
	fcmp/gt fr15,fr3
	bf loc_8c01019a
	mov.l @(loc_8c0101d4,PC),r1   ; $8c11e210 to r1
	jsr @r1
	nop
	mov r0,r4
	mov.w @(loc_8c0101b0,PC),r0   ; $1000 to r0
	add r4,r0
	extu.w r0,r0
	cmp/pz r0
	bt loc_8c010188
	mov.w @(loc_8c0101b8,PC),r3   ; $1fff to r3
	add r3,r0

loc_8c010188:
	mov 0xF3,r3
	mov 0x07,r4
	shad r3,r0
	and r0,r4
	mov.l @(loc_8c0101d8,PC),r0   ; $8c143c00 to r0
	extu.b r4,r4
	shll r4
	mov.w @(r0,r4),r2
	or r2,r14

loc_8c01019a:
	mov 0x08,r3
	tst r13,r3
	bt loc_8c0101a4
	mov.l @(loc_8c0101dc,PC),r1   ; $00008000 to r1
	or r1,r14

loc_8c0101a4:
	mov.w @(loc_8c0101b6,PC),r3   ; $0080 to r3
	tst r13,r3
	bt loc_8c0101e4
	bra loc_8c0101e0
	nop

;##############################################
loc_8c0101ae:
	#data 0x2000

loc_8c0101b0:
	#data 0x1000

loc_8c0101b2:
	#data 0x0800

loc_8c0101b4:
	#data 0x0080

loc_8c0101b6:
	#data 0x0400

loc_8c0101b8:
	#data 0x1fff
	#align4

loc_8c0101bc:
	#data bank17.loc_8c17794e

loc_8c0101c0:
	#data bank17.loc_8c177a54

loc_8c0101c4:
	#data 0x8c212be0

loc_8c0101c8:
	#data 0x8c213046

loc_8c0101cc:
	#data 0x8c2681dc

loc_8c0101d0:
	#data 0x45c80000

loc_8c0101d4:
	#data bank11.loc_8c11e210

loc_8c0101d8:
	#data bank14.loc_8c143c00

loc_8c0101dc:
	#data 0x00008000

;----------------------------------------------
loc_8c0101e0:
	mov.w @(loc_8c0102f6,PC),r1 ; $0200 to r1
	or r1,r14

loc_8c0101e4:
	mov.w @(loc_8c0102f6,PC),r3 ; $0200 to r3
	tst r13,r3
	bt loc_8c0101ee
	mov.w @(loc_8c0102f8,PC),r1 ; $0100 to r1
	or r1,r14

loc_8c0101ee:
	mov.l @(loc_8c0102fc,PC),r3 ; $00020000 to r3
	tst r13,r3
	bt.s loc_8c0101fa
	mov 0x04,r3
	mov.w @(loc_8c0102fa,PC),r1 ; $080 to r1
	or r1,r14

loc_8c0101fa:
	tst r13,r3
	bt.s loc_8c010204
	mov 0x02,r3
	mov 0x40,r1
	or r1,r14

loc_8c010204:
	tst r13,r3
	bt loc_8c01020c
	mov 0x20,r1
	or r1,r14

loc_8c01020c:
	mov.l @(loc_8c010300,PC),r3 ; $00010000 to r3
	tst r13,r3
	bt loc_8c010216
	mov 0x10,r1
	or r1,r14

loc_8c010216:
	mov.w @(loc_8c0102f8,PC),r3 ; $0100 to r3
	tst r13,r3
	bt.s loc_8c010222
	mov 0x01,r3
	mov.w @(loc_8c0102fa,PC),r1 ; $080 to r1
	or r1,r14

loc_8c010222:
	tst r3,r13
	bt loc_8c01022a
	mov 0x10,r1
	or r1,r14

loc_8c01022a:
	mov.l @r15,r3
	mov.w r14,@r3
	bra loc_8c010240
	nop

loc_8c010232:
	mov.w r12,@r10
	mov r12,r0
	nop
	mov.w r0,@(0xA,r10)
	mov.w r0,@(0x8,r10)
	mov.w r0,@(0xC,r10)
	mov.w r0,@(0xE,r10)

loc_8c010240:
	mov.w @(0x2,r11),r0
	add 0x01,r8
	mov.w @r11,r3
	extu.b r8,r2
	not r0,r0
	and r3,r0
	mov.w r0,@(0x4,r11)
	mov 0x02,r1
	mov.w @r11,r0
	cmp/ge r1,r2
	add 0x14,r10
	not r0,r0
	mov r0,r3
	mov.w @(0x2,r11),r0
	and r3,r0
	mov.w r0,@(0x6,r11)
	add 0x14,r11
	mov.l @r15,r3
	add 0x14,r3
	bt.s loc_8c01026e
	mov.l r3,@r15
	bra loc_8c0100d2
	nop

loc_8c01026e:
	mov.l @(0xC,r9),r0
	mov.l @(0x30,r0),r0
	mov.l @r0,r0
	tst 0x40,r0
	bt loc_8c01029a
	mov.l @(loc_8c010304,PC),r2 ; $8c177438 to r2
	jsr @r2
	mov 0x12,r4
	mov.l @(loc_8c010308,PC),r3 ; $8c212bf0 to r3
	mov.l r0,@r3
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c01030c,PC),r2 ; loc_8c02aef4 to r2
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c01029a:
	mov.l @(loc_8c010308,PC),r2 ; $8c212bf0 to r3
	mov.l @(loc_8c010314,PC),r1 ; $8c212f06 to r1
	mov.l r12,@r2
	mov.l @(loc_8c010318,PC),r2 ; $8c212f04 to r2
	mov.l @(loc_8c010310,PC),r3 ; $8c212f08 to r3
	mov.w r12,@r3
	mov.w r12,@r1
	mov.w r12,@r2
	add 0x04,r15
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

;==============================================
loc_8c0102c0:
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0x10,r4)
	mov.w @r4,r3
	mov.w @(0x2,r4),r0
	cmp/eq r3,r0
	bf loc_8c01031c
	mov.w @(0x12,r4),r0
	mov 0x1E,r5
	add 0x01,r0
	mov.w r0,@(0x12,r4)
	mov.w @(0x12,r4),r0
	extu.w r0,r0
	cmp/gt r5,r0
	bf loc_8c010322
	mov.w @(0x12,r4),r0
	mov 0x23,r3
	extu.w r0,r0
	cmp/gt r3,r0
	bf loc_8c010322
	mov r5,r0
	nop
	mov.w r0,@(0x12,r4)
	mov.w @r4,r0
	bra loc_8c010322
	mov.w r0,@(0x10,r4)

;##############################################
loc_8c0102f6:
	#data 0x0200

loc_8c0102f8:
	#data 0x0100

loc_8c0102fa:
	#data 0x0080
	#align4

loc_8c0102fc:
	#data 0x00020000

loc_8c010300:
	#data 0x00010000

loc_8c010304:
	#data bank17.loc_8c177438

loc_8c010308:
	#data 0x8c212bf0

loc_8c01030c:
	#data bank02.loc_8c02aef4

loc_8c010310:
	#data 0x8c212f08

loc_8c010314:
	#data 0x8c212f06

loc_8c010318:
	#data 0x8c212f04

;----------------------------------------------
loc_8c01031c:
	mov r5,r0
	nop
	mov.w r0,@(0x12,r4)

loc_8c010322:
	rts
	nop

;==============================================
loc_8c010326:
	mov.l @(loc_8c010414,PC),r3 ; GameGlobalPointer to r3
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c010338
	mov.l @(loc_8c010418,PC),r2 ; $8c11c0c0 to r2
	jmp @r2
	nop

loc_8c010338:
	rts
	nop

;==============================================
loc_8c01033c:
	sts.l pr,@-r15
	mov.l @(loc_8c010420,PC),r2 ; $8c1290a0 to r2
	mov.l @(loc_8c01041c,PC),r3 ; $8c212fb0 to r3
	jsr @r2
	mov.l @r3,r4
	mov.l @(loc_8c010424,PC),r1 ; $8c1290f6 to r1
	jsr @r1
	nop
	mov.l @(loc_8c010428,PC),r2 ; $8c1743a4 to r2
	jsr @r2
	nop
	mov.l @(loc_8c01042c,PC),r1 ; $8c1f8ac4 to r1
	mov.l @r1,r0
	cmp/eq 0xff,r0
	bt loc_8c010360
	mov.l @(loc_8c010430,PC),r2 ; $8c1744ca to r2
	jsr @r2
	nop

loc_8c010360:
	mov.l @(loc_8c010434,PC),r3 ; $8c17a21e to r3
	jsr @r3
	nop
	mov.l @(loc_8c010438,PC),r2 ; $8c177156 to r2
	jsr @r2
	nop
	mov.l @(loc_8c01043c,PC),r3 ; $8c177a78 to r3
	jsr @r3
	nop
	mov.l @(loc_8c010440,PC),r2 ; $8c1774f8 to r2
	jsr @r2
	nop
	mov.l @(loc_8c010444,PC),r3 ; $8c11d620 to r3
	jsr @r3
	nop
	mov.l @(loc_8c010448,PC),r2 ; $8c177c76 to r2
	jsr @r2
	nop
	mov.l @(loc_8c01044c,PC),r3 ; $8c178686 to r3
	jsr @r3
	nop
	stc sr,r0
	mov.w @(loc_8c010412,PC),r2 ; $ff0f to r2
	and r2,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(loc_8c010450,PC),r3 ; $8c17a454 to r3
	jmp @r3
	lds.l @r15+,pr
	sts.l pr,@-r15
	mov.l @(loc_8c010420,PC),r2 ; $8c1290a0 to r2
	mov.l @(loc_8c01041c,PC),r3 ; $8c212fb0 to r3
	jsr @r2
	mov.l @r3,r4
	mov.l @(loc_8c010424,PC),r1 ; $8c1290f6 to r1
	jsr @r1
	nop
	mov.l @(loc_8c010428,PC),r2 ; $8c1743a4 to r2
	jsr @r2
	nop
	mov.l @(loc_8c01042c,PC),r1 ; $8c1f8ac4 to r1
	mov.l @r1,r0
	cmp/eq 0xFF,r0
	bt loc_8c0103be
	mov.l @(loc_8c010430,PC),r2 ; $8c1744ca to r2
	jsr @r2
	nop

loc_8c0103be:
	mov.l @(loc_8c010434,PC),r3 ; $8c17a21e to r3
	jsr @r3
	nop
	mov.l @(loc_8c010438,PC),r2 ; $8c177156 to r2
	jsr @r2
	nop
	mov.l @(loc_8c01043c,PC),r3 ; $8c177a78 to r3
	jsr @r3
	nop
	mov.l @(loc_8c010440,PC),r2 ; $8c1774f8 to r2
	jsr @r2
	nop
	mov.l @(loc_8c010444,PC),r3 ; $8c11d620 to r3
	jsr @r3
	nop
	mov.l @(loc_8c010448,PC),r2 ; $8c177c76 to r2
	jsr @r2
	nop
	mov.l @(loc_8c01044c,PC),r3 ; $8c178686 to r3
	jsr @r3
	nop
	stc sr,r0
	mov.w @(loc_8c010412,PC),r2 ; $ff0f to r2
	and r2,r0
	or 0xF0,r0
	ldc r0,sr
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0103f8:
	mov r5,r0
	nop
	cmp/eq 0xE9,r0
	bt loc_8c010408
	mov r5,r0
	nop
	cmp/eq 0xDF,r0
	bf loc_8c01040e

loc_8c010408:
	mov.l @(loc_8c010454,PC),r2 ; $8c212bf8 to r2
	mov 0x01,r3
	mov.l r3,@r2

loc_8c01040e:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c010412:
	#data 0xff0f
	#align4

loc_8c010414:
	#data work.GameGlobalPointer

loc_8c010418:
	#data bank11.loc_8c11c0c0

loc_8c01041c:
	#data 0x8c212fb0

loc_8c010420:
	#data bank12.loc_8c1290a0

loc_8c010424:
	#data bank12.loc_8c1290f6

loc_8c010428:
	#data bank17.loc_8c1743a4

loc_8c01042c:
	#data 0x8c1f8ac4

loc_8c010430:
	#data bank17.loc_8c1744ca

loc_8c010434:
	#data bank17.loc_8c17a21e

loc_8c010438:
	#data bank17.loc_8c177156

loc_8c01043c:
	#data bank17.loc_8c177a78

loc_8c010440:
	#data bank17.loc_8c1774f8

loc_8c010444:
	#data bank11.loc_8c11d620

loc_8c010448:
	#data bank17.loc_8c177c76

loc_8c01044c:
	#data bank17.loc_8c178686

loc_8c010450:
	#data bank17.loc_8c17a454

loc_8c010454:
	#data 0x8c212bf8

;==============================================
loc_8c010458:
	mov.l r14,@-r15
	mov.l @(loc_8c010508,PC),r14 ; $8c1cbe04 to r14
	sts.l pr,@-r15
	mov.l @r14,r3
	tst r3,r3
	bf loc_8c010486
	mov.l @(loc_8c01050c,PC),r3 ; $8c1772b0 to r3
	jsr @r3
	nop
	mov r0,r4
	tst r4,r4
	bf.s loc_8c010476
	mov r4,r0
	mov 0x01,r3
	mov.l r3,@r14

loc_8c010476:
	cmp/eq 0xE9,r0
	bt loc_8c0104b4
	mov r4,r0
	nop
	cmp/eq 0xDF,r0
	bf loc_8c0104ba
	bra loc_8c0104b4
	nop

loc_8c010486:
	mov.l @(loc_8c010510,PC),r2 ; $8c17723e to r2
	jsr @r2
	nop
	mov.l @(loc_8c010514,PC),r3 ; $8c1cbe00 to r3
	mov.l @(loc_8c010518,PC),r2 ; $8c176eb0 to r2
	mov.l r0,@r3
	jsr @r2
	mov r0,r4
	cmp/eq 0x04,r0
	bt.s loc_8c0104a0
	mov r0,r4
	mov 0x00,r2
	mov.l r2,@r14

loc_8c0104a0:
	mov.l @(loc_8c01051c,PC),r3 ; $8c177298 to r3
	jsr @r3
	nop
	cmp/eq 0x06,r0
	bt.s loc_8c0104b4
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c0104ba

loc_8c0104b4:
	mov.l @(loc_8c010520,PC),r3 ; $8c212bf8 to r3
	mov 0x01,r2
	mov.l r2,@r3

loc_8c0104ba:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0104c0:
	mov.l @(loc_8c010528,PC),r4 ; loc_8c2152d0 to r4
	mov.l @(loc_8c010524,PC),r0 ; loc_8c26823c to r0
	sts.l pr,@-r15
	mov.l @r0,r1
	mov.l @(0x10,r1),r3
	add 0x01,r3
	mov.l r3,@(0x10,r1)
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.l @(loc_8c01052c,PC),r4 ; loc_8c2152cc to r4
	mov.l @r4,r3
	tst r3,r3
	bt loc_8c0104e2
	mov.l @r4,r3
	add 0xFF,r3
	mov.l r3,@r4

loc_8c0104e2:
	mov.l @(loc_8c010530,PC),r1 ; loc_8c21528a to r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c0104f2
	mov.l @(loc_8c010534,PC),r4 ; loc_8c21528c to r4
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4

loc_8c0104f2:
	mov.l @(loc_8c01053c,PC),r3 ; loc_8c174dfc to r3
	mov 0x00,r2
	mov.l @(loc_8c010538,PC),r1 ; loc_8c26a963 to r1
	jsr @r3
	mov.b r2,@r1
	bsr loc_8c010080
	nop
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c010508:
	#data 0x8c1cbe04

loc_8c01050c:
	#data bank17.loc_8c1772b0

loc_8c010510:
	#data bank17.loc_8c17723e

loc_8c010514:
	#data 0x8c1cbe00

loc_8c010518:
	#data bank17.loc_8c176eb0

loc_8c01051c:
	#data bank17.loc_8c177298

loc_8c010520:
	#data 0x8c212bf8

loc_8c010524:
	#data work.GameGlobalPointer

loc_8c010528:
	#data 0x8c2152d0

loc_8c01052c:
	#data 0x8c2152cc

loc_8c010530:
	#data 0x8c21528a

loc_8c010534:
	#data 0x8c21528c

loc_8c010538:
	#data 0x8c26a963

loc_8c01053c:
	#data bank17.loc_8c174dfc

;--------------------------------------------
loc_8c010540:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c0105a0,PC),r0 ; $fdfc to r0
	add r0,r15
	stc sr,r0
	mov.w @(loc_8c0105a2,PC),r3 ; $ff0f to r3
	and r3,r0
	or 0xE0,r0
	ldc r0,sr
	mov.l @(loc_8c0105ac,PC),r3 ; $8c122cc0 to r3
	mov.l @(loc_8c0105a8,PC),r2 ; $8c1327a8 to r2
	jsr @r3
	mov.l @r2,r4
	mov.l @(loc_8c0105b0,PC),r1 ; $8c17864c to r1
	jsr @r1
	nop
	mov.l @(loc_8c0105b8,PC),r3 ; $8c177c1c to r3
	mov.l @(loc_8c0105b4,PC),r4 ; $8ce2a020 to r4
	mov.w @(loc_8c0105a4,PC),r5 ; $4800 to r5
	jsr @r3
	nop
	mov.l @(loc_8c0105c0,PC),r2 ; $8c178d1a to r2
	mov.w @(loc_8c0105a6,PC),r12 ; $0080 to r12
	mov.l @(loc_8c0105bc,PC),r14 ; $8c11c610 to r14
	jsr @r2
	nop
	cmp/eq 0x01,r0
	bt loc_8c010590
	cmp/eq 0x00,r0
	bt loc_8c010598
	cmp/eq 0x02,r0
	bt loc_8c0105c4
	bra loc_8c0105ce
	nop

loc_8c010590:
	mov r12,r5
	mov 0x01,r6
	bra loc_8c0105ca
	mov 0x00,r4

loc_8c010598:
	mov r12,r5
	mov 0x01,r6
	bra loc_8c0105ca
	mov 0x09,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0105a0:
	#data 0xfdfc

loc_8c0105a2:
	#data 0xff0f

loc_8c0105a4:
	#data 0x4800

loc_8c0105a6:
	#data 0x0080

	#align4

loc_8c0105a8:
	#data bank13.loc_8c1327a8

loc_8c0105ac:
	#data bank12.loc_8c122cc0

loc_8c0105b0:
	#data bank17.loc_8c17864c

loc_8c0105b4:
	#data 0x8ce2a020

loc_8c0105b8:
	#data bank17.loc_8c177c1c

loc_8c0105bc:
	#data bank11.loc_8c11c610

loc_8c0105c0:
	#data bank17.loc_8c178d1a


;----------------------------------------------
loc_8c0105c4:
	mov 0x13,r4
	mov r12,r5
	mov 0x01,r6

loc_8c0105ca:
	jsr @r14
	nop

loc_8c0105ce:
	mov.l @(loc_8c0106e0,PC),r2 ; $8c11ca00 to r2
	mov.l @(loc_8c0106dc,PC),r4 ; $00100000 to r4
	jsr @r2
	nop
	stc sr,r0
	mov.w @(loc_8c0106ce,PC),r3 ; $ff0f to r3
	and r3,r0
	or 0xE0,r0
	ldc r0,sr
	mov.l @(loc_8c0106e4,PC),r2 ; $8c178676 to r2
	jsr @r2
	nop
	mov.l @(loc_8c0106f0,PC),r3 ; $8c177558 to r3
	mov.l @(loc_8c0106ec,PC),r5 ; $8c1faba0 to r5
	mov.l @(loc_8c0106e8,PC),r6 ; $8c206bc0 to r6
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c0106f4,PC),r2 ; $8c177380 to r2
	jsr @r2
	nop
	stc sr,r0
	mov.w @(loc_8c0106ce,PC),r3 ; $ff0f to r3
	and r3,r0
	ldc r0,sr
	mov.l @(loc_8c0106f8,PC),r2 ; $8c11d140 to r2
	jsr @r2
	nop
	mov.l @(loc_8c0106fc,PC),r1 ; $8c174352 to r1
	jsr @r1
	nop
	mov.l @(loc_8c010700,PC),r2 ; $8c11ca10 to r2
	jsr @r2
	nop
	mov.l @(loc_8c010704,PC),r3 ; $8c11cad0 to r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c01070c,PC),r2 ; $8c11cb90 to r2
	mov.l @(loc_8c010708,PC),r4 ; $0cf00000 to r4
	jsr @r2
	nop
	mov.l @(loc_8c010714,PC),r3 ; $8c11cb80 to r3
	mov.l @(loc_8c010710,PC),r4 ; $00010000 to r4
	jsr @r3
	nop
	mov.w @(loc_8c0106d0,PC),r7 ; $4000 to r7
	mov.l @(loc_8c01071c,PC),r2 ; $8c11cfc0 to r2
	mov.l @(loc_8c010718,PC),r6 ; $00024000 to r6
	mov r7,r5
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c010720,PC),r3 ; $8c11ec90 to r3
	jsr @r3
	nop
	mov.l @(loc_8c010724,PC),r2 ; $8c11efa0 to r2
	jsr @r2
	nop
	mov.l @(loc_8c010728,PC),r3 ; $8c11c720 to r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c01072c,PC),r4 ; $8c21631c to r4
	mov.l @(loc_8c010730,PC),r2 ; $8c11b700 to r2
	mov.w @(loc_8c0106d2,PC),r6 ; $1000 to r6
	mov.w @(loc_8c0106d4,PC),r5 ; $0c00 to r5
	jsr @r2
	nop
	mov.l @(loc_8c010734,PC),r4 ; $8c24b65c to r4
	mov.l @(loc_8c010738,PC),r3 ; $8c123d50 to r3
	mov.w @(loc_8c0106d2,PC),r6 ; $1000 to r6
	mov.w @(loc_8c0106d4,PC),r5 ; $0c00 to r5
	jsr @r3
	nop
	mov.l @(loc_8c010740,PC),r2 ; $8c11bd70 to r2
	mov.l @(loc_8c01073c,PC),r4 ; $8c2657dc to r4
	jsr @r2
	mov 0x40,r5
	mova @(loc_8c010744,PC),r0 ; $43f00000 to r0
	mov.l @(loc_8c01074c,PC),r3 ; $8c124480 to r3
	fmov @r0,fr5
	mova @(loc_8c010748,PC),r0 ; $44200000 to r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(loc_8c010750,PC),r2 ; $8c11c010 to r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c010754,PC),r3 ; $8c11bff0 to r3
	jsr @r3
	mov 0x02,r4
	mov.l @(loc_8c01075c,PC),r2 ; $8c11fcd0 to r2
	mov.l @(loc_8c010758,PC),r4 ; $8c2152dc to r4
	jsr @r2
	mov 0x40,r5
	mov.l @(loc_8c010760,PC),r3 ; $8c1204f0 to r3
	jsr @r3
	mov 0x03,r4
	mov.l @(loc_8c010764,PC),r2 ; $8c121100 to r2
	jsr @r2
	nop
	mova @(loc_8c010768,PC),r0 ; $463b8000 to r0
	mov.w @(loc_8c0106d6,PC),r4 ; $1d28 to r4
	fmov @r0,fr6
	mova @(loc_8c01076c,PC),r0 ; $3e99999a to r0
	mov.l @(loc_8c010774,PC),r3 ; $8c121730 to r3
	fmov @r0,fr5
	mova @(loc_8c010770,PC),r0 ; $3faaaaab to r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(loc_8c010760,PC),r2 ; $8c1204f0 to r2
	jsr @r2
	mov 0x01,r4
	mov.w @(loc_8c0106d8,PC),r5 ; $0204 to r5
	mov r15,r6
	mov r6,r4
	fldi0 fr4
	add r6,r5

loc_8c0106b2:
	fmov fr4,@r4
	add 0x04,r4
	cmp/hs r5,r4
	bf loc_8c0106b2
	mov.l @(loc_8c01077c,PC),r2 ; $8c11f280 to r2
	mov.l @(loc_8c010778,PC),r4 ; $00101010 to r4
	jsr @r2
	nop
	mov.l @(loc_8c010784,PC),r3 ; $8c11f2c0 to r3
	mov.l @(loc_8c010780,PC),r4 ; $0000ff09 to r4
	jsr @r3
	nop
	bra loc_8c010788
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0106ce:
	#data 0xff0f

loc_8c0106d0:
	#data 0x4000

loc_8c0106d2:
	#data 0x1000

loc_8c0106d4:
	#data 0x0c00

loc_8c0106d6:
	#data 0x1d28

loc_8c0106d8:
	#data 0x0204
	#align4

loc_8c0106dc:
	#data 0x00100000

loc_8c0106e0:
	#data bank11.loc_8c11ca00

loc_8c0106e4:
	#data bank17.loc_8c178676

loc_8c0106e8:
	#data 0x8c206bc0

loc_8c0106ec:
	#data 0x8c1faba0

loc_8c0106f0:
	#data bank17.loc_8c177558

loc_8c0106f4:
	#data bank17.loc_8c177380

loc_8c0106f8:
	#data bank11.loc_8c11d140

loc_8c0106fc:
	#data bank17.loc_8c174352

loc_8c010700:
	#data bank11.loc_8c11ca10

loc_8c010704:
	#data bank11.loc_8c11cad0

loc_8c010708:
	#data 0x0cf00000

loc_8c01070c:
	#data bank11.loc_8c11cb90

loc_8c010710:
	#data 0x00010000

loc_8c010714:
	#data bank11.loc_8c11cb80

loc_8c010718:
	#data 0x00024000

loc_8c01071c:
	#data bank11.loc_8c11cfc0

loc_8c010720:
	#data bank11.loc_8c11ec90

loc_8c010724:
	#data bank11.loc_8c11efa0

loc_8c010728:
	#data bank11.loc_8c11c720

loc_8c01072c:
	#data 0x8c21631c

loc_8c010730:
	#data bank11.loc_8c11b700

loc_8c010734:
	#data 0x8c24b65c

loc_8c010738:
	#data bank12.loc_8c123d50

loc_8c01073c:
	#data 0x8c2657dc

loc_8c010740:
	#data bank11.loc_8c11bd70

loc_8c010744:
	#data 0x43f00000

loc_8c010748:
	#data 0x44200000

loc_8c01074c:
	#data bank12.loc_8c124480

loc_8c010750:
	#data bank11.loc_8c11c010

loc_8c010754:
	#data bank11.loc_8c11bff0

loc_8c010758:
	#data 0x8c2152dc

loc_8c01075c:
	#data bank11.loc_8c11fcd0

loc_8c010760:
	#data bank12.loc_8c1204f0

loc_8c010764:
	#data bank12.loc_8c121100

loc_8c010768:
	#data 0x463b8000

loc_8c01076c:
	#data 0x3e99999a

loc_8c010770:
	#data 0x3faaaaab

loc_8c010774:
	#data bank12.loc_8c121730

loc_8c010778:
	#data 0x00101010

loc_8c01077c:
	#data bank11.loc_8c11f280

loc_8c010780:
	#data 0x0000ff09

loc_8c010784:
	#data bank11.loc_8c11f2c0

;----------------------------------------------
loc_8c010788:
	mov.l @(loc_8c010848,PC),r13 ; $8c1f8ac4 to r13
	mov 0xFF,r2
	mov.l @(loc_8c010850,PC),r9 ; bank17.loc_8c175b3e to r9
	mov.l @(loc_8c010854,PC),r10 ; $8c1cbe20 to r10
	mov.w @(loc_8c010844,PC),r11 ; $0400 to r11
	mov.l @(loc_8c01084c,PC),r8 ; $8c1cd1c0 to r8
	mov.w @(loc_8c010842,PC),r14 ; $0100 to r14
	mov.l r2,@r13

loc_8c010798:
	mov r10,r5
	mov r11,r6
	mov r8,r7
	jsr @r9
	mov 0x08,r4
	cmp/eq 0xE9,r0
	bt.s loc_8c0107b0
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0xDF,r0
	bf loc_8c0107b8

loc_8c0107b0:
	bsr loc_8c01033c
	nop
	bra loc_8c0107bc
	nop

loc_8c0107b8:
	tst r4,r4
	bt loc_8c0107c2

loc_8c0107bc:
	add 0xFF,r14
	cmp/pl r14
	bt loc_8c010798

loc_8c0107c2:
	tst r14,r14
	bf loc_8c0107ca
	bsr loc_8c01033c
	nop

loc_8c0107ca:
	mov.l @(loc_8c01085c,PC),r2 ; bank17.loc_8c17726a to r4
	mov.l @(loc_8c010858,PC),r4 ; loc_8c0103f8 to r4
	jsr @r2
	mov 0x00,r5
	mov.l @(loc_8c010864,PC),r2 ; $8c1f8ac8 to r2
	mov.l @(loc_8c010860,PC),r3 ; $0ce26000 to r3
	mov r3,r4
	mov.l r3,@r2
	mov.l @(loc_8c010868,PC),r3 ; bank17.loc_8c17a20c to r3
	jsr @r3
	nop
	mov.w @(loc_8c010846,PC),r4 ; $00ff to r4
	bsr init_default_settings
	nop
	mov.l @(loc_8c010870,PC),r3 ; bank02.loc_8c0273ae to r3
	mov 0x01,r6
	mov.l @(loc_8c01086c,PC),r5 ; $0cc00000 to r5
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c010874,PC),r2 ; bank12.loc_8c1250c0 to r2
	mov.l @(loc_8c01086c,PC),r4 ; $0cc00000 to r4
	jsr @r2
	mov 0x00,r5
	mov.l @(loc_8c010878,PC),r3 ; bank04.loc_8c041cee to r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c01087c,PC),r2 ; bank04.loc_8c041b22 to r2
	jsr @r2
	nop
	mov.l @(loc_8c010880,PC),r2 ; bank12.loc_8c125e20 to r2
	mov 0x00,r3
	mov 0x02,r5
	mov.l r3,@r13
	mov r3,r6
	jsr @r2
	mov r3,r4
	mov.l @(loc_8c010884,PC),r3 ; bank17.loc_8c17447a to r3
	jsr @r3
	nop
	mov.l @(loc_8c010890,PC),r2 ; bank17.loc_8c174768 to r2
	mov.l @(loc_8c01088c,PC),r5 ; $8c1d8200 to r5
	mov.l @(loc_8c010888,PC),r6 ; $000208c4 to r6
	jsr @r2
	mov 0x02,r4
	tst r0,r0
	bt.s loc_8c010830
	mov.l r0,@r13
	mov.l @(loc_8c010894,PC),r2 ; bank17.loc_8c174dec to r2
	mov 0x01,r5
	jsr @r2
	mov.l @r13,r4

loc_8c010830:
	mov.l @(loc_8c010898,PC),r2 ; $8c212cbc to r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c0108a0
	mov.l @(loc_8c01089c,PC),r3 ; bank04.loc_8c041b00 to r3
	jsr @r3
	nop
	bra loc_8c0108a6
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c010842:
	#data 0x0100

loc_8c010844:
	#data 0x0400

loc_8c010846:
	#data 0x00ff
	#align4

loc_8c010848:
	#data 0x8c1f8ac4

loc_8c01084c:
	#data 0x8c1cd1c0

loc_8c010850:
	#data bank17.loc_8c175b3e

loc_8c010854:
	#data 0x8c1cbe20

loc_8c010858:
	#data loc_8c0103f8

loc_8c01085c:
	#data bank17.loc_8c17726a

loc_8c010860:
	#data 0x0ce26000

loc_8c010864:
	#data 0x8c1f8ac8

loc_8c010868:
	#data bank17.loc_8c17a20c

loc_8c01086c:
	#data 0x0cc00000

loc_8c010870:
	#data bank02.loc_8c0273ae

loc_8c010874:
	#data bank12.loc_8c1250c0

loc_8c010878:
	#data bank04.loc_8c041cee

loc_8c01087c:
	#data bank04.loc_8c041b22

loc_8c010880:
	#data bank12.loc_8c125e20

loc_8c010884:
	#data bank17.loc_8c17447a

loc_8c010888:
	#data 0x000208c4

loc_8c01088c:
	#data 0x8c1d8200

loc_8c010890:
	#data bank17.loc_8c174768

loc_8c010894:
	#data bank17.loc_8c174dec

loc_8c010898:
	#data 0x8c212cbc

loc_8c01089c:
	#data bank04.loc_8c041b00


;----------------------------------------------
loc_8c0108a0:
	mov.l @(loc_8c010948,PC),r3
	jsr @r3
	nop

loc_8c0108a6:
	mov.l @(loc_8c01094c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c010950,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c010954,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c010958,PC),r3
	jsr @r3
	mov r12,r4
	mov.l @(loc_8c01095c,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c010960,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c01093c,PC),r4
	mov.l @(loc_8c010968,PC),r5
	mov.l @(loc_8c010964,PC),r14
	jsr @r14
	mov 0x00,r6
	mov.w @(loc_8c01093e,PC),r4
	mov.l @(loc_8c01096c,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.l @(loc_8c010974,PC),r2
	mov.l @(loc_8c010970,PC),r5
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c010974,PC),r3
	mov.l @(loc_8c010978,PC),r5
	jsr @r3
	mov 0x02,r4
	mov.w @(loc_8c010940,PC),r4
	mov.l @(loc_8c01097c,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.w @(loc_8c010942,PC),r4
	mov.l @(loc_8c010980,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.l @(loc_8c010984,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c01098c,PC),r3
	mov.l @(loc_8c010988,PC),r5
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c01098c,PC),r2
	mov.l @(loc_8c010990,PC),r5
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c010998,PC),r1
	mov 0x00,r3
	mov.l @(loc_8c010994,PC),r2
	jsr @r1
	mov.b r3,@r2
	cmp/eq 0xFD,r0
	bt loc_8c010926
	mov.l @(loc_8c010994,PC),r3
	mov 0x01,r2
	mov.b r2,@r3

loc_8c010926:
	mov.w @(loc_8c010944,PC),r1
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01093c:
	#data 0x0299
loc_8c01093e:
	#data 0x0298
loc_8c010940:
	#data 0x0094
loc_8c010942:
	#data 0x0092
loc_8c010944:
	#data 0x0204
	#align4

loc_8c010948:
	#data bank04.loc_8c041b10
loc_8c01094c:
	#data bank17.loc_8c178050
loc_8c010950:
	#data bank12.loc_8c1234f0
loc_8c010954:
	#data bank12.loc_8c122cf0
loc_8c010958:
	#data bank12.loc_8c123350
loc_8c01095c:
	#data bank12.loc_8c123380
loc_8c010960:
	#data bank12.loc_8c127840
loc_8c010964:
	#data bank02.loc_8c027366
loc_8c010968:
	#data 0x0ce00000
loc_8c01096c:
	#data 0x0ce08000
loc_8c010970:
	#data 0x0ce0a000
loc_8c010974:
	#data bank03.loc_8c031f50
loc_8c010978:
	#data 0x0ce1d000
loc_8c01097c:
	#data 0x0ce1e000
loc_8c010980:
	#data 0x0ce2ea00
loc_8c010984:
	#data bank12.loc_8c1229c0
loc_8c010988:
	#data loc_8c0104c0
loc_8c01098c:
	#data bank12.loc_8c122aa0
loc_8c010990:
	#data bank03.loc_8c031aac
loc_8c010994:
	#data 0x8c212f21
loc_8c010998:
	#data bank12.loc_8c128432

;----------------------------------------------
init_default_settings:
;8c01099c
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x01,r5
	mov r4,r3
	mov.l @(loc_8c010af8,PC),r14
	tst r5,r3
	mov 0x02,r6
	bt.s loc_8c0109e8
	mov 0x00,r13

;Set Difficulty
	mov.b r5,@r14

;Set Damage 2
	mov r6,r0
	nop
	mov.b r0,@(0x1,r14)

;Set Timer to 1
	mov r5,r0
	nop
	mov.b r0,@(0x2,r14) 

;Set Turbo to 0
	mov r13,r0
	nop
	mov.b r0,@(0x3,r14)

	mov.l @(loc_8c010b00,PC),r1
	mov.b @r14,r3
	mov.l @(loc_8c010afc,PC),r2
	mov.b r3,@r2
	mov.b @(0x1,r14),r0
	mov.l @(loc_8c010b04,PC),r3
	mov.b r0,@r1
	mov.b @(0x2,r14),r0
	mov.l @(loc_8c010b08,PC),r2
	mov.b r0,@r3
	mov.b @(0x3,r14),r0
	mov.b r0,@r2
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0x1F,r0
	mov.b r13,@(r0,r14)

loc_8c0109e8:
	tst r4,r6
	bt loc_8c010a16
	mov r13,r0
	nop
	mov.b r0,@(0x8,r14)
	mov r13,r5
	mov.b r0,@(0x9,r14)
	mov 0x1C,r0
	mov 0x06,r7
	mov.b r13,@(r0,r14)

loc_8c0109fc:
	mov r14,r0
	nop
	mov r5,r6
	mov r14,r3
	shll r6
	add 0x20,r0
	add 0x2C,r3
	mov.w r5,@(r0,r6)
	add r3,r6
	mov.w r5,@r6
	add 0x01,r5
	cmp/ge r7,r5
	bf loc_8c0109fc

loc_8c010a16:
	mov 0x04,r3
	tst r4,r3
	bt loc_8c010a2e
	mov 0x10,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x14,r0
	fmov fr4,@(r0,r14)
	mov 0x1D,r0
	mov.b r13,@(r0,r14)
	mov 0x1E,r0
	mov.b r13,@(r0,r14)

loc_8c010a2e:
	mov.w @(loc_8c010af4,PC),r3
	cmp/eq r3,r4
	bf loc_8c010a50
	mov.l @(loc_8c010b0c,PC),r1
	jsr @r1
	mov r15,r4
	mov.l @r15,r0
	xor 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x6,r14)
	mov.l @(loc_8c010b10,PC),r3
	mov.b @(0x4,r14),r0
	mov.b r0,@r3

loc_8c010a50:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c010a5a:
	mov.l @(loc_8c010b10,PC),r1
	mov 0x42,r0
	mov.l @(loc_8c010b14,PC),r4
	mov 0x01,r6
	mov.b @r1,r2
	mov 0x00,r5
	mov.l @r4,r3
	mov.l @(loc_8c010afc,PC),r1
	mov.b r2,@(r0,r3)
	mov 0x43,r0
	mov.l @r4,r3
	mov.b r6,@(r0,r3)
	mov 0x44,r0
	mov.l @r4,r3
	mov.b r6,@(r0,r3)
	mov 0x45,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x4F,r0
	mov.b @r1,r2
	mov.l @r4,r3
	mov.l @(loc_8c010b04,PC),r1
	mov.b r2,@(r0,r3)
	mov 0x46,r0
	mov.l @r4,r3
	mov.b r6,@(r0,r3)
	mov 0x1B,r0
	mov.b @r1,r2
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov 0x47,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x48,r0
	mov.l @r4,r3
	mov.l @(loc_8c010b08,PC),r1
	mov.b r5,@(r0,r3)
	mov 0x49,r0
	mov.b @r1,r2
	mov.l @r4,r3
	mov.l @(loc_8c010b00,PC),r1
	mov.b r2,@(r0,r3)
	mov 0x2A,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x4A,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x4B,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x4D,r0
	mov.b @r1,r2
	mov.l @r4,r3
	mov.b r2,@(r0,r3)
	mov 0x52,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x53,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x54,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov.l @r4,r3
	mov 0x55,r0
	mov.b r5,@(r0,r3)
	mov 0x56,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x57,r0
	mov.l @r4,r3
	mov.b r5,@(r0,r3)
	mov 0x58,r0
	mov.l @r4,r3
	rts
	mov.b r5,@(r0,r3)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c010af4:
	#data 0x00ff
	#align4
loc_8c010af8:
	#data 0x8c212bfc
loc_8c010afc:
	#data 0x8c212cbd
loc_8c010b00:
	#data 0x8c212cbe
loc_8c010b04:
	#data 0x8c212cbf
loc_8c010b08:
	#data 0x8c212cc0
loc_8c010b0c:
	#data bank17.loc_8c17a25e
loc_8c010b10:
	#data 0x8c212cbc
loc_8c010b14:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c010b18:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c010ca4,PC),r2
	mov.l r4,@r15
	mov 0x00,r4
	mov.l @r2,r3
	tst r3,r3
	bf.s loc_8c010b40
	mov r4,r11
	mov.l @(loc_8c010ca8,PC),r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c010b44

loc_8c010b40:
	bra loc_8c010ba8
	mov 0x00,r0

loc_8c010b44:
	mov.l @(loc_8c010cb0,PC),r9
	mov r4,r13
	mov.l @(loc_8c010cb4,PC),r12
	mov 0x02,r10
	mov.l @(loc_8c010cac,PC),r8
	bra loc_8c010ba0
	mov 0x01,r14

loc_8c010b52:
	mov.l @r8,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c010b70
	mov.l @(loc_8c010cb8,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c010b70
	mov.l @(loc_8c010cbc,PC),r3
	mov r14,r1
	shad r13,r1
	mov.b @r3,r2
	cmp/eq r1,r2
	bf loc_8c010b9e

loc_8c010b70:
	mov r13,r3
	shll2 r3
	mov r13,r2
	mov.l @(loc_8c010cc0,PC),r0
	add r2,r3
	shll2 r3
	mov.w @(r0,r3),r1
	extu.w r1,r1
	and r12,r1
	cmp/eq r12,r1
	bf loc_8c010b9e
	mov.l @r15,r0
	cmp/eq 0x00,r0
	bt.s loc_8c010b96
	mov r14,r11
	cmp/eq 0x01,r0
	bt loc_8c010b9a
	bra loc_8c010b9e
	nop

loc_8c010b96:
	bra loc_8c010b9e
	mov.l r14,@r9

loc_8c010b9a:
	bsr loc_8c010bbc
	mov 0x01,r4

loc_8c010b9e:
	add 0x01,r13

loc_8c010ba0:
	cmp/ge r10,r13
	bf loc_8c010b52
	mov r11,r0
	nop

loc_8c010ba8:
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
loc_8c010bbc:
	mov.l r14,@-r15
	mov.l @(loc_8c010cac,PC),r14
	sts.l pr,@-r15
	mov.l r4,@-r15
	mov.l @r14,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x60,r0
	bf loc_8c010bd0
	bsr loc_8c010c7c
	mov.l @r15,r4

loc_8c010bd0:
	mov.l @(loc_8c010cc4,PC),r3
	mov 0x1E,r2
	mov 0x01,r5
	mov.l r2,@r3
	mov 0x40,r2
	mov.l @r14,r1
	mov 0x00,r4
	mov.l r2,@(0x14,r1)
	mov.l @r14,r1
	mov.b r5,@r1
	mov.l @r14,r2
	mov r4,r0
	nop
	mov.b r0,@(0x1,r2)
	mov 0x07,r1
	mov.l @r14,r2
	mov.b r0,@(0x2,r2)
	mov.l @r14,r2
	mov.b r0,@(0x3,r2)
	mov.l @r14,r2
	mov.b r0,@(0x4,r2)
	mov.l @r14,r2
	mov.b r0,@(0x5,r2)
	mov.l @r14,r2
	mov.b r0,@(0x6,r2)
	mov.l @r14,r2
	mov.b r0,@(0x7,r2)
	mov 0x5D,r0
	mov.l @r14,r2
	mov.b r4,@(r0,r2)
	mov 0x5E,r0
	mov.l @r14,r2
	mov.b r4,@(r0,r2)
	mov 0x4C,r0
	mov.l @r14,r2
	mov.b r4,@(r0,r2)
	add 0x41,r0
	mov.l @r14,r2
	mov.b r5,@(r0,r2)
	mov 0x4E,r0
	mov.l @r14,r2
	mov.b r1,@(r0,r2)
	mov 0x59,r0
	mov.l @r14,r2
	mov 0xFF,r1
	mov.b r1,@(r0,r2)
	mov.l @(loc_8c010cc8,PC),r2
	jsr @r2
	nop
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c010c3e
	mov.l @(loc_8c010ccc,PC),r3
	jsr @r3
	nop

loc_8c010c3e:
	mov.l @(loc_8c010cd0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c010cd4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c010cd8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c010cdc,PC),r3
	mov 0x01,r5
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c010cdc,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r5,r4
	mov.l @(loc_8c010ce0,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c010ce4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c010ce8,PC),r3
	jsr @r3
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c010cec,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c010c7c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c010cac,PC),r3
	mov 0x4C,r1
	mov.l r4,@r15
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8c010cf0
	cmp/eq 0x01,r0
	bt loc_8c010d08
	cmp/eq 0x07,r0
	bt loc_8c010d08
	cmp/eq 0x05,r0
	bt loc_8c010d0c
	cmp/eq 0x02,r0
	bt loc_8c010d0c
	bra loc_8c010d0c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c010ca4:
	#data 0x8c212bf4
loc_8c010ca8:
	#data 0x8c289788
loc_8c010cac:
	#data work.GameGlobalPointer
loc_8c010cb0:
	#data 0x8c212bf8
loc_8c010cb4:
	#data 0x00008360
loc_8c010cb8:
	#data 0x8c213046
loc_8c010cbc:
	#data 0x8c213044
loc_8c010cc0:
	#data 0x8c2681dc
loc_8c010cc4:
	#data 0x8c2152cc
loc_8c010cc8:
	#data bank02.loc_8c02dc1c
loc_8c010ccc:
	#data bank03.loc_8c0395a0
loc_8c010cd0:
	#data bank04.loc_8c041ecc
loc_8c010cd4:
	#data bank04.loc_8c04182e
loc_8c010cd8:
	#data bank04.loc_8c04185e
loc_8c010cdc:
	#data bank04.loc_8c041a14
loc_8c010ce0:
	#data bank04.loc_8c041aa6
loc_8c010ce4:
	#data bank02.loc_8c027ada
loc_8c010ce8:
	#data bank02.loc_8c027b00
loc_8c010cec:
	#data bank03.loc_8c031bba

;----------------------------------------------
loc_8c010cf0:
	bsr loc_8c011780
	mov 0x9C,r4
	mov.l @(loc_8c010e28,PC),r3
	mov.w @(loc_8c010e26,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bf loc_8c010d0c
	bsr loc_8c011780
	mov 0x9C,r4
	bra loc_8c010d0c
	nop

loc_8c010d08:
	bsr loc_8c011780
	mov 0x9C,r4

loc_8c010d0c:
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c010d1e
	mov.l @(loc_8c010e2c,PC),r4
	mov 0x48,r0
	mov 0x00,r5
	mov.l r5,@(r0,r4)
	mov 0x4C,r0
	mov.l r5,@(r0,r4)

loc_8c010d1e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c010d26:
	mov.l r14,@-r15
	mova @(loc_8c010e34,PC),r0
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	fmov @r0,fr13
	mova @(loc_8c010e38,PC),r0
	fmov @r0,fr14
	fldi0 fr15
	mov.l @(loc_8c010e30,PC),r14
	fmov fr15,fr5
	fmov fr14,fr6
	fmov fr13,fr7
	jsr @r14
	fmov fr15,fr4
	mova @(loc_8c010e3c,PC),r0
	mov.l @(loc_8c010e40,PC),r3
	fmov @r0,fr12
	mov 0x00,r6
	mov r6,r5
	fmov fr12,fr4
	jsr @r3
	mov r6,r4
	mov.l @(loc_8c010e44,PC),r2
	jsr @r2
	nop
	fmov fr15,fr5
	fmov fr14,fr6
	fmov fr13,fr7
	jsr @r14
	fmov fr15,fr4
	mov.l @(loc_8c010e40,PC),r3
	mov 0x00,r6
	fmov fr12,fr4
	mov r6,r5
	jsr @r3
	mov r6,r4
	mov.l @(loc_8c010e44,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c010e48,PC),r3
	mov.l @(loc_8c010e4c,PC),r2
	fmov @r3,fr5
	fmov fr14,fr6
	fmov fr13,fr7
	jsr @r14
	fmov @r2,fr4
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c010d96:
	mov.l r14,@-r15
	mova @(loc_8c010e34,PC),r0
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	fmov @r0,fr13
	mova @(loc_8c010e38,PC),r0
	fmov @r0,fr14
	fldi0 fr15
	mov.l @(loc_8c010e30,PC),r14
	fmov fr15,fr5
	fmov fr14,fr6
	fmov fr13,fr7
	jsr @r14
	fmov fr15,fr4
	mova @(loc_8c010e3c,PC),r0
	mov.l @(loc_8c010e40,PC),r3
	fmov @r0,fr12
	mov 0x00,r6
	mov r6,r5
	fmov fr12,fr4
	jsr @r3
	mov r6,r4
	mov.l @(loc_8c010e44,PC),r2
	jsr @r2
	nop
	fmov fr15,fr5
	fmov fr14,fr6
	fmov fr13,fr7
	jsr @r14
	fmov fr15,fr4
	mov.l @(loc_8c010e40,PC),r3
	mov 0x00,r6
	fmov fr12,fr4
	mov r6,r5
	jsr @r3
	mov r6,r4
	mov.l @(loc_8c010e44,PC),r2
	jsr @r2
	nop
	fmov fr15,fr5
	fmov fr14,fr6
	fmov fr13,fr7
	jsr @r14
	fmov fr15,fr4
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

loc_8c010e02:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c010e50,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c010e2c,PC),r13
	mov r0,r5
	mov.l r0,@(0x1C,r13)
	mov r5,r0
	nop
	cmp/eq 0xFF,r0
	bt.s loc_8c010e7a
	mov 0x01,r14
	tst r5,r5
	bt loc_8c010e7a
	bra loc_8c010e56
	mov 0x00,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c010e26:
	#data 0x0084
	#align4
loc_8c010e28:
	#data work.GameGlobalPointer
loc_8c010e2c:
	#data 0x8c289750
loc_8c010e30:
	#data bank12.loc_8c122160
loc_8c010e34:
	#data 0x43f00000
loc_8c010e38:
	#data 0x44200000
loc_8c010e3c:
	#data 0x3a83126f
loc_8c010e40:
	#data bank11.loc_8c11d630
loc_8c010e44:
	#data bank11.loc_8c11c0c0
loc_8c010e48:
	#data 0x8c212c10
loc_8c010e4c:
	#data 0x8c212c0c
loc_8c010e50:
	#data bank11.loc_8c115d86

;----------------------------------------------
loc_8c010e54:
	add 0x01,r4

loc_8c010e56:
	mov r14,r3
	shad r4,r3
	tst r5,r3
	bf loc_8c010e64
	mov 0x08,r1
	cmp/hs r1,r4
	bf loc_8c010e54

loc_8c010e64:
	mov r4,r0
	nop
	cmp/eq 0x08,r0
	bt loc_8c010e7a
	shad r4,r14
	mov 0x5C,r0
	and r5,r14
	mov.l r14,@(0x18,r13)
	mov.l r4,@(r0,r13)
	bra loc_8c010ed2
	mov 0x02,r0

loc_8c010e7a:
	mov.l @(loc_8c011074,PC),r3
	jsr @r3
	nop
	mov r0,r5
	tst r5,r5
	bt loc_8c010eaa
	mov r5,r0
	nop
	cmp/eq 0xFF,r0
	bt loc_8c010eaa
	bra loc_8c010e94
	mov 0x00,r4

loc_8c010e92:
	add 0x01,r4

loc_8c010e94:
	mov r14,r2
	shad r4,r2
	tst r5,r2
	bf loc_8c010ea2
	mov 0x08,r1
	cmp/hs r1,r4
	bf loc_8c010e92

loc_8c010ea2:
	mov r4,r0
	nop
	cmp/eq 0x08,r0
	bf loc_8c010eae

loc_8c010eaa:
	bra loc_8c010ed2
	mov 0x05,r0

loc_8c010eae:
	shad r4,r14
	mov.l @(loc_8c011078,PC),r3
	and r5,r14
	mov 0x5C,r0
	mov.l r14,@(0x18,r13)
	jsr @r3
	mov.l r4,@(r0,r13)
	cmp/eq 0xFF,r0
	bt.s loc_8c010ed0
	mov r0,r4
	mov.l @(0x18,r13),r3
	tst r3,r4
	bt loc_8c010ecc
	bra loc_8c010ed2
	mov 0x03,r0

loc_8c010ecc:
	bra loc_8c010ed2
	mov 0x04,r0

loc_8c010ed0:
	mov 0x07,r0

loc_8c010ed2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c010eda:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c010e02
	mov.b r4,@r15
	mov.b @r15,r2
	mov r0,r4
	exts.b r4,r5
	cmp/eq r2,r5
	bt loc_8c010f1a
	mov r5,r0
	nop
	cmp/eq 0x07,r0
	bt loc_8c010f1a
	mov.l @(loc_8c01107c,PC),r5
	mov.l @r5,r3
	mov r4,r0
	nop
	mov.b r0,@(0x2,r3)
	mov.l @r5,r3
	mov r3,r0
	nop
	mov 0x04,r1
	add r0,r1
	mov 0x00,r2
	mov.b r2,@r1
	mov r2,r0
	nop
	mov.b r0,@(0x3,r3)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c010f1a:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c010f24:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c01107c,PC),r14
	mov.l @(loc_8c011088,PC),r3
	mov.l @(loc_8c011080,PC),r8
	mov.l @(loc_8c011084,PC),r9
	jsr @r3
	mov 0x03,r4
	mov.l @(loc_8c011090,PC),r13
	mov 0x01,r10
	mov.w r0,@r15
	mov 0x5C,r0
	mov.l @(r0,r13),r5
	mov.l @r14,r0
	mov.l @(loc_8c01108c,PC),r11
	mov.b @(0x2,r0),r0
	cmp/eq 0x00,r0
	bt.s loc_8c010f84
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c010fd4
	cmp/eq 0x02,r0
	bt loc_8c01101c
	cmp/eq 0x03,r0
	bf loc_8c010f68
	bra loc_8c011102
	nop

loc_8c010f68:
	cmp/eq 0x04,r0
	bf loc_8c010f70
	bra loc_8c0112ea
	nop

loc_8c010f70:
	cmp/eq 0x05,r0
	bf loc_8c010f78
	bra loc_8c01131c
	nop

loc_8c010f78:
	cmp/eq 0x06,r0
	bf loc_8c010f80
	bra loc_8c011376
	nop

loc_8c010f80:
	bra loc_8c0113ba
	nop

;----------------------------------------------
loc_8c010f84:
	mov.l @r14,r3
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x3,r3)
	mov 0x3C,r0
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c011094,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c011098,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c01109c,PC),r3
	jsr @r3
	mov 0x14,r4
	mov.l @(loc_8c0110a0,PC),r2
	jsr @r2
	nop
	bsr loc_8c011726
	nop
	mov 0x5B,r0
	mov r13,r2
	add 0x22,r2
	mov 0x00,r5
	mov.b r12,@r2
	mov.b r12,@(r0,r13)
	mov 0x2B,r0
	mov.b r12,@(r0,r13)
	jsr @r11
	mov r5,r4
	mov.l @(loc_8c0110a8,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c0110a4,PC),r4
	jsr @r3
	mov 0x0A,r5

loc_8c010fd4:
	mov.l @(loc_8c0110ac,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c010fe2
	bra loc_8c0113d4
	nop

loc_8c010fe2:
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r2)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c011002
	mov.l @r14,r2
	mov 0x02,r1
	add r2,r1
	bsr loc_8c010e02
	mov.l r1,@-r15
	mov.l @r15+,r3
	bra loc_8c0113d4
	mov.b r0,@r3

loc_8c011002:
	bsr loc_8c010e02
	nop
	cmp/eq 0x05,r0
	bf.s loc_8c011010
	mov r0,r4
	bra loc_8c0113d4
	nop

loc_8c011010:
	mov.l @r14,r3
	mov r4,r0
	nop
	mov.b r0,@(0x2,r3)
	bra loc_8c0113d4
	nop

loc_8c01101c:
	mov.l @r14,r0
	mov.b @(0x3,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c011038
	cmp/eq 0x01,r0
	bt loc_8c011048
	cmp/eq 0x02,r0
	bf loc_8c011030
	bra loc_8c01129a
	nop

loc_8c011030:
	cmp/eq 0x03,r0
	bt loc_8c0110d2
	bra loc_8c0113d4
	nop

loc_8c011038:
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov 0x5C,r0
	mov.l @(r0,r13),r5
	jsr @r11
	mov 0x01,r4

loc_8c011048:
	mov.l @(loc_8c0110b0,PC),r3
	mov 0x5C,r0
	mov 0x00,r5
	jsr @r3
	mov.l @(r0,r13),r4
	cmp/eq 0x01,r0
	bf.s loc_8c0110b4
	mov r0,r4
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov 0x3C,r0
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov 0x2B,r0
	mov.b r10,@(r0,r13)
	mov 0x5C,r0
	mov.l @(r0,r13),r5
	bra loc_8c0111fe
	mov 0x02,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c011074:
	#data bank11.loc_8c115cb0
loc_8c011078:
	#data bank11.loc_8c115f7c
loc_8c01107c:
	#data work.GameGlobalPointer
loc_8c011080:
	#data bank04.loc_8c04257c
loc_8c011084:
	#data 0x00008000
loc_8c011088:
	#data loc_8c01357a
loc_8c01108c:
	#data bank02.loc_8c0270f8
loc_8c011090:
	#data 0x8c289750
loc_8c011094:
	#data bank03.loc_8c0357d8
loc_8c011098:
	#data bank03.loc_8c03580c
loc_8c01109c:
	#data bank03.loc_8c032be0
loc_8c0110a0:
	#data bank04.loc_8c044d8c
loc_8c0110a4:
	#data 0xff000000
loc_8c0110a8:
	#data bank03.loc_8c0355b2
loc_8c0110ac:
	#data bank03.loc_8c03563a
loc_8c0110b0:
	#data bank11.loc_8c11843c

;----------------------------------------------
loc_8c0110b4:
	tst r4,r4
	bt loc_8c0110bc
	bra loc_8c0113d4
	nop

loc_8c0110bc:
	mov.l @r14,r2
	mov 0x03,r0
	mov.b r0,@(0x3,r2)
	mov 0x2B,r0
	mov.b r12,@(r0,r13)
	mov 0x5C,r0
	mov.l @(r0,r13),r5
	jsr @r11
	mov 0x09,r4
	bra loc_8c0113d4
	nop

loc_8c0110d2:
	mov.w @r15,r3
	extu.w r3,r3
	tst r9,r3
	bf loc_8c0110de
	bra loc_8c0113d4
	nop

loc_8c0110de:
	mov.l @r14,r1
	mov r10,r0
	nop
	mov.b r0,@(0x2,r1)
	mov.l @r14,r3
	mov r3,r0
	nop
	mov 0x04,r2
	add r0,r2
	mov.b r12,@r2
	mov r12,r0
	nop
	mov.b r0,@(0x3,r3)
	mov 0x3C,r0
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	bra loc_8c0112c2
	nop

loc_8c011102:
	mov.l @r14,r0
	mov.b @(0x3,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c01112e
	cmp/eq 0x01,r0
	bt loc_8c01113e
	cmp/eq 0x02,r0
	bt loc_8c011182
	cmp/eq 0x03,r0
	bf loc_8c01111a
	bra loc_8c01129a
	nop

loc_8c01111a:
	cmp/eq 0x04,r0
	bf loc_8c011122
	bra loc_8c0112ae
	nop

loc_8c011122:
	cmp/eq 0x05,r0
	bf loc_8c01112a
	bra loc_8c0112d0
	nop

loc_8c01112a:
	bra loc_8c0113d4
	nop

loc_8c01112e:
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov 0x5C,r0
	mov.l @(r0,r13),r5
	jsr @r11
	mov 0x03,r4

loc_8c01113e:
	mov 0x5C,r0
	mov.l @(r0,r13),r3
	mov.l r3,@(0x4,r15)
	mov.l @r14,r4
	mov.b @(0x2,r4),r0
	bsr loc_8c010eda
	mov r0,r4
	tst r0,r0
	bt loc_8c011154
	bra loc_8c0113d4
	nop

loc_8c011154:
	mov 0x5C,r0
	mov.l @(0x4,r15),r3
	mov.l @(r0,r13),r2
	cmp/eq r2,r3
	bt loc_8c011162
	bra loc_8c01126a
	nop

loc_8c011162:
	mov.w @r15,r3
	extu.w r3,r3
	tst r9,r3
	bf loc_8c01116e
	bra loc_8c0113d4
	nop

loc_8c01116e:
	jsr @r8
	mov 0x02,r4
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov r13,r3
	add 0x22,r3
	bra loc_8c0113d4
	mov.b r12,@r3

loc_8c011182:
	jsr @r11
	mov 0x04,r4
	mov.l @(loc_8c011308,PC),r3
	jsr @r3
	nop
	cmp/eq 0x01,r0
	bf.s loc_8c011220
	mov r0,r4
	mov.l @(loc_8c01130c,PC),r3
	jsr @r3
	nop
	mov r0,r4
	mov 0x5C,r0
	mov.l @(r0,r13),r3
	mov r10,r2
	shad r3,r2
	tst r4,r2
	bt loc_8c0111ae
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c011280

loc_8c0111ae:
	mov.l @(loc_8c011310,PC),r3
	jsr @r3
	nop
	mov r0,r4
	mov 0x5C,r0
	mov.l @(r0,r13),r3
	mov r10,r2
	shad r3,r2
	tst r4,r2
	bt loc_8c0111ca
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c011280

loc_8c0111ca:
	mov.l @(loc_8c011314,PC),r2
	jsr @r2
	nop
	mov r0,r4
	mov 0x5C,r0
	mov.l @(r0,r13),r3
	mov r10,r2
	shad r3,r2
	tst r4,r2
	bt loc_8c0111e6
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c011280

loc_8c0111e6:
	mov.l @r14,r3
	mov 0x05,r4
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov 0x3C,r0
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov 0x2B,r0
	mov.b r10,@(r0,r13)
	mov 0x5C,r0
	mov.l @(r0,r13),r5

loc_8c0111fe:
	jsr @r11
	nop
	mov 0x5C,r0
	mov.l @(r0,r13),r3
	mov r3,r4
	mov.l r3,@(0x34,r13)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c011318,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c011220:
	tst r4,r4
	bf loc_8c01123a
	mov.l @r14,r2
	mov 0x04,r0
	mov.b r0,@(0x3,r2)
	mov 0x2B,r0
	mov.b r12,@(r0,r13)
	mov 0x5C,r0
	mov.l @(r0,r13),r5
	jsr @r11
	mov 0x06,r4
	bra loc_8c0113d4
	nop

loc_8c01123a:
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c011280
	bsr loc_8c010e02
	nop
	mov r0,r4
	exts.b r4,r5
	mov r5,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c011256
	bra loc_8c0113d4
	nop

loc_8c011256:
	mov r5,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c011262
	bra loc_8c0113d4
	nop

loc_8c011262:
	mov.l @r14,r2
	mov r4,r0
	nop
	mov.b r0,@(0x2,r2)

loc_8c01126a:
	mov.l @r14,r3
	mov r3,r0
	nop
	mov 0x04,r2
	add r0,r2
	mov.b r12,@r2
	mov r12,r0
	nop
	mov.b r0,@(0x3,r3)
	bra loc_8c0113d4
	nop

loc_8c011280:
	mov.l @r14,r4
	mov.b @(0x2,r4),r0
	mov r0,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c010eda
	mov.l @r15+,r14

loc_8c01129a:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0112fe
	bra loc_8c0113d4
	nop

loc_8c0112ae:
	mov.w @r15,r3
	extu.w r3,r3
	tst r9,r3
	bf loc_8c0112ba
	bra loc_8c0113d4
	nop

loc_8c0112ba:
	mov.l @r14,r1
	mov.b @(0x3,r1),r0
	add 0x01,r0
	mov.b r0,@(0x3,r1)

loc_8c0112c2:
	mov 0x00,r5
	jsr @r11
	mov r5,r4
	jsr @r8
	mov 0x02,r4
	bra loc_8c0113d4
	nop

loc_8c0112d0:
	mov.l @r14,r2
	mov 0x02,r1
	add r2,r1
	bsr loc_8c010e02
	mov.l r1,@-r15
	mov.l @r15+,r3
	mov.b r0,@r3
	mov.l @r14,r2
	mov r12,r0
	nop
	mov.b r0,@(0x3,r2)
	bra loc_8c0113d4
	nop

loc_8c0112ea:
	mov.l @r14,r0
	mov.b @(0x3,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c0112fa
	cmp/eq 0x01,r0
	bt loc_8c01133c
	bra loc_8c0113d4
	nop

loc_8c0112fa:
	bra loc_8c011330
	mov 0x08,r4

loc_8c0112fe:
	mov.l @r14,r2
	mov 0x06,r0
	bra loc_8c01135a
	mov.b r0,@(0x2,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c011308:
	#data bank11.loc_8c11863c
loc_8c01130c:
	#data bank11.loc_8c115e8c
loc_8c011310:
	#data bank11.loc_8c115e56
loc_8c011314:
	#data bank11.loc_8c115e2c
loc_8c011318:
	#data bank11.loc_8c116166

;----------------------------------------------
loc_8c01131c:
	mov.l @r14,r0
	mov.b @(0x3,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c01132c
	cmp/eq 0x01,r0
	bt loc_8c01133c
	bra loc_8c0113d4
	nop

loc_8c01132c:
	mov 0x07,r4
	mov 0x00,r5

loc_8c011330:
	jsr @r11
	nop
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)

loc_8c01133c:
	mov.l @r14,r4
	mov.b @(0x2,r4),r0
	bsr loc_8c010eda
	mov r0,r4
	tst r0,r0
	bf loc_8c0113d4
	mov.w @r15,r3
	extu.w r3,r3
	tst r9,r3
	bt loc_8c0113d4
	jsr @r8
	mov 0x02,r4
	mov.l @r14,r3
	mov 0x06,r0
	mov.b r0,@(0x2,r3)

loc_8c01135a:
	mov.l @(loc_8c01150c,PC),r4;0xff000000
	mov 0x0A,r5
	mov 0x01,r6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c011510,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c011376:
	mov.l @(loc_8c011514,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c0113d4
	mov.l @r14,r2
	mov.b @(0x1,r2),r0
	add 0x01,r0
	mov.b r0,@(0x1,r2)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x2,r3)
	mov.l @r14,r3
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	mov 0x5B,r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0113d4
	mov.b r12,@(r0,r13)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c010d26
	mov.l @r15+,r14

loc_8c0113ba:
	mov.l @r14,r4
	mov.b @(0x2,r4),r0
	mov r0,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c010eda
	mov.l @r15+,r14

loc_8c0113d4:
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
loc_8c0113e8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c01151c,PC),r3
	mov.l @(loc_8c011518,PC),r13
	jsr @r3
	mov 0x03,r4
	mov.l @r13,r0
	mov 0x01,r11
	mov.l @(loc_8c011524,PC),r14
	mov.b @(0x2,r0),r0
	mov.l @(loc_8c011520,PC),r10
	cmp/eq 0x00,r0
	bt.s loc_8c01143c
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c0114f4
	cmp/eq 0x02,r0
	bf loc_8c011418
	bra loc_8c011548
	nop

loc_8c011418:
	cmp/eq 0x03,r0
	bf loc_8c011420
	bra loc_8c0115b8
	nop

loc_8c011420:
	cmp/eq 0x04,r0
	bf loc_8c011428
	bra loc_8c01161c
	nop

loc_8c011428:
	cmp/eq 0x05,r0
	bf loc_8c011430
	bra loc_8c011640
	nop

loc_8c011430:
	cmp/eq 0x06,r0
	bf loc_8c011438
	bra loc_8c011668
	nop

loc_8c011438:
	bra loc_8c01168a
	nop

loc_8c01143c:
	mov.l @r13,r3
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x3,r3)
	mov.l @(loc_8c011528,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c01152c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c011530,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c011534,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c011538,PC),r3
	jsr @r3
	mov 0x10,r4
	mov.l @(loc_8c01153c,PC),r2
	jsr @r2
	nop
	mov.l @r13,r3
	mov r14,r4
	mov 0x78,r0
	add 0x22,r4
	mov.w r0,@(0x8,r3)
	mov r12,r0
	nop
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov r14,r4
	add 0x24,r4
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov 0x48,r0
	mov.l @(r0,r14),r3
	mov r14,r4
	tst r3,r3
	bt.s loc_8c0114a4
	add 0x59,r4
	mov 0x4C,r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c0114a4
	mov 0x03,r3
	bra loc_8c0114bc
	mov.b r3,@r4

loc_8c0114a4:
	mov 0x48,r0
	mov.l @(r0,r14),r1
	tst r1,r1
	bt loc_8c0114b0
	bra loc_8c0114bc
	mov.b r11,@r4

loc_8c0114b0:
	mov 0x4C,r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c0114d0
	mov 0x02,r3
	mov.b r3,@r4

loc_8c0114bc:
	jsr @r10
	nop
	mov 0x5A,r0
	mov.l @(loc_8c011540,PC),r3
	mov.b r11,@(r0,r14)
	mov.b @(r0,r14),r4
	jsr @r3
	extu.b r4,r4
	bra loc_8c0114e4
	nop

loc_8c0114d0:
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bt loc_8c0114dc
	bra loc_8c011672
	nop

loc_8c0114dc:
	mov.l @r13,r2
	mov r11,r0
	nop
	mov.w r0,@(0x8,r2)

loc_8c0114e4:
	mov.l @(loc_8c011544,PC),r2
	jsr @r2
	mov 0x09,r4
	mov.l @(loc_8c011510,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c01150c,PC),r4;0xff000000
	jsr @r3
	mov 0x0A,r5

loc_8c0114f4:
	mov.l @(loc_8c011514,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c011502
	bra loc_8c01168a
	nop

loc_8c011502:
	mov.l @r13,r2
	mov.b @(0x2,r2),r0
	add 0x01,r0
	bra loc_8c01168a
	mov.b r0,@(0x2,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01150c:
	#data 0xff000000
loc_8c011510:
	#data bank03.loc_8c0355b2
loc_8c011514:
	#data bank03.loc_8c03563a
loc_8c011518:
	#data work.GameGlobalPointer
loc_8c01151c:
	#data loc_8c01357a
loc_8c011520:
	#data loc_8c0197fc
loc_8c011524:
	#data 0x8c289750
loc_8c011528:
	#data bank03.loc_8c030f24
loc_8c01152c:
	#data bank03.loc_8c030e30
loc_8c011530:
	#data bank03.loc_8c0357d8
loc_8c011534:
	#data bank03.loc_8c03580c
loc_8c011538:
	#data bank03.loc_8c032be0
loc_8c01153c:
	#data bank04.loc_8c044d8c
loc_8c011540:
	#data loc_8c0195c8
loc_8c011544:
	#data loc_8c016df2

;----------------------------------------------
loc_8c011548:
	bsr loc_8c011bbc
	nop
	tst r0,r0
	bt loc_8c011558
	mov.l @r13,r2
	mov r11,r0
	nop
	mov.w r0,@(0x8,r2)

loc_8c011558:
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bt loc_8c01156c
	bra loc_8c01168a
	nop

loc_8c01156c:
	mov 0x48,r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c011578
	bsr loc_8c0117a2
	nop

loc_8c011578:
	mov 0x4C,r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c011584
	bsr loc_8c011828
	nop

loc_8c011584:
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c01164c
	mov.l @r13,r2
	mov r14,r3
	add 0x59,r3
	mov.b @(0x2,r2),r0
	add 0x01,r0
	mov.b r0,@(0x2,r2)
	mov 0x04,r2
	jsr @r10
	mov.b r2,@r3
	mov 0x02,r3
	mov 0x5A,r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.b @(r0,r14),r4
	mov.l @(loc_8c011758,PC),r3
	mov.l @r15+,r10
	extu.b r4,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0115b8:
	mov.l @(loc_8c01175c,PC),r2
	mov 0x00,r5
	jsr @r2
	mov.l @(0x34,r14),r4
	cmp/eq 0x02,r0
	bt.s loc_8c01168a
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf.s loc_8c0115e4
	mov 0x05,r5
	mov.l @r13,r3
	mov 0x04,r0
	mov.b r0,@(0x2,r3)
	mov 0x3C,r0
	mov.l @r13,r3
	mov.w r0,@(0x8,r3)
	mov r14,r3
	add 0x59,r3
	bra loc_8c011614
	mov.b r5,@r3

loc_8c0115e4:
	tst r4,r4
	bf loc_8c0115fc
	mov.l @r13,r2
	mov r5,r0
	nop
	mov r14,r3
	mov.b r0,@(0x2,r2)
	mov 0x06,r2
	add 0x59,r3
	mov.b r2,@r3
	bra loc_8c011614
	nop

loc_8c0115fc:
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c01168a
	mov.l @r13,r2
	mov r5,r0
	nop
	mov r14,r3
	mov.b r0,@(0x2,r2)
	mov 0x07,r2
	add 0x59,r3
	mov.b r2,@r3

loc_8c011614:
	jsr @r10
	nop
	bra loc_8c01168a
	nop

loc_8c01161c:
	bsr loc_8c011d0c
	nop
	tst r0,r0
	bt loc_8c01162c
	mov.l @r13,r3
	mov r11,r0
	nop
	mov.w r0,@(0x8,r3)

loc_8c01162c:
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c01168a
	bra loc_8c01164c
	nop

loc_8c011640:
	bsr loc_8c011d0c
	nop
	tst r0,r0
	bt loc_8c01168a
	mov 0x2B,r0
	mov.b r12,@(r0,r14)

loc_8c01164c:
	mov.l @r13,r3
	mov 0x06,r0
	mov.l @(loc_8c011760,PC),r4
	mov 0x01,r6
	mov.b r0,@(0x2,r3)
	mov 0x0A,r5
	lds.l @r15+,pr
	mov.l @(loc_8c011764,PC),r3
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c011668:
	mov.l @(loc_8c011768,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c01168a

loc_8c011672:
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x1,r3)
	mov 0xFF,r2
	mov.l @r13,r3
	mov.b r0,@(0x2,r3)
	mov.l @r13,r3
	mov.b r0,@(0x3,r3)
	mov 0x59,r0
	mov.l @r13,r3
	mov.b r2,@(r0,r3)

loc_8c01168a:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c011698:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c011770,PC),r3
	mov.l @(loc_8c01176c,PC),r14
	jsr @r3
	nop
	mov.l @(loc_8c011774,PC),r2
	mov r0,r3
	cmp/hs r2,r3
	bf.s loc_8c01171e
	mov.l r0,@r14
	mov.l @(loc_8c011778,PC),r3
	mov 0x00,r13
	mov.l r13,@r14
	jsr @r3
	mov r13,r4
	mov.l @(loc_8c01177c,PC),r4
	mov 0x12,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x63,r0
	bf loc_8c0116da
	mov 0x13,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x3B,r0
	bf loc_8c0116da
	mov 0x14,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x3B,r0
	bt loc_8c01171e

loc_8c0116da:
	mov 0x14,r0
	mov.b @(r0,r4),r2
	mov 0x3C,r5
	add 0x01,r2
	mov.b r2,@(r0,r4)
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r5,r3
	bf loc_8c01171e
	mov.b r13,@(r0,r4)
	mov 0x13,r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r5,r2
	bf loc_8c01171e
	mov.b r13,@(r0,r4)
	mov 0x12,r0
	mov.b @(r0,r4),r3
	mov 0x63,r5
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/gt r5,r2
	bf loc_8c01171e
	mov.b r5,@(r0,r4)
	mov 0x13,r0
	mov 0x3B,r5
	mov.b r5,@(r0,r4)
	mov 0x14,r0
	mov.b r5,@(r0,r4)

loc_8c01171e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c011726:
	mov.l @(loc_8c01177c,PC),r4
	mov 0x01,r3
	mov 0x00,r5
	mov.b r3,@r4
	mov r5,r0
	nop
	mov.b r0,@(0x1,r4)
	mov 0x02,r3
	mov.w r0,@(0x2,r4)
	mov.w r0,@(0x4,r4)
	mov.w r0,@(0x6,r4)
	mov.w r0,@(0x8,r4)
	mov.w r0,@(0xA,r4)
	mov.w r0,@(0xC,r4)
	mov 0x10,r0
	mov.b r5,@(r0,r4)
	mov 0x11,r0
	mov.b r3,@(r0,r4)
	mov 0x12,r0
	mov.b r5,@(r0,r4)
	mov 0x13,r0
	mov.b r5,@(r0,r4)
	mov 0x14,r0
	rts
	mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c011758:
	#data loc_8c0195c8
loc_8c01175c:
	#data bank11.loc_8c118686
loc_8c011760:
	#data 0xff000000
loc_8c011764:
	#data bank03.loc_8c0355b2
loc_8c011768:
	#data bank03.loc_8c03563a
loc_8c01176c:
	#data 0x8c1f8acc
loc_8c011770:
	#data bank17.loc_8c178a2c
loc_8c011774:
	#data 0x0000bebc
loc_8c011778:
	#data bank17.loc_8c178a12
loc_8c01177c:
	#data 0x8c212c3c

;----------------------------------------------
loc_8c011780:
	mov.l @(loc_8c01188c,PC),r5
	mov 0x48,r0
	mov.l @(r0,r5),r3
	add r4,r3
	mov r3,r2
	cmp/pz r2
	mov.l r3,@(r0,r5)
	bt loc_8c011794
	mov 0x00,r1
	mov.l r1,@(r0,r5)

loc_8c011794:
	mov.l @(r0,r5),r3
	mov.w @(loc_8c011888,PC),r4
	cmp/gt r4,r3
	bf loc_8c01179e
	mov.l r4,@(r0,r5)

loc_8c01179e:
	rts
	nop

loc_8c0117a2:
	mov.l r14,@-r15
	mov 0x48,r0
	mov.l @(loc_8c01188c,PC),r14
	mov.l @(loc_8c011890,PC),r4
	mov.w @(loc_8c011888,PC),r5
	sts.l pr,@-r15
	mov.l @(r0,r14),r3
	mov.w @(0x2,r4),r0
	add r3,r0
	mov.w r0,@(0x2,r4)
	mov.w @(0x2,r4),r0
	extu.w r0,r0
	cmp/gt r5,r0
	bf loc_8c0117c4
	mov r5,r0
	nop
	mov.w r0,@(0x2,r4)

loc_8c0117c4:
	mov.b @(0x1,r4),r0
	mov.l @(loc_8c011894,PC),r3
	extu.b r0,r6
	mov 0x48,r0
	mov.l @(r0,r14),r1
	jsr @r3
	mov 0x0A,r0
	mov 0x64,r7
	add r0,r6
	cmp/ge r7,r6
	bf.s loc_8c0117f4
	mov 0x63,r5

loc_8c0117dc:
	mov.b @r4,r2
	add 0x01,r2
	mov.b r2,@r4
	mov.b @r4,r3
	extu.b r3,r3
	cmp/gt r5,r3
	bf.s loc_8c0117f0
	add 0x9C,r6
	mov r5,r6
	mov.b r5,@r4

loc_8c0117f0:
	cmp/ge r7,r6
	bt loc_8c0117dc

loc_8c0117f4:
	mov r6,r0
	nop
	mov.b r0,@(0x1,r4)
	mov 0x48,r0
	mov 0x00,r3
	mov.l r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c011806:
	mov.l @(loc_8c01188c,PC),r5
	mov 0x4C,r0
	mov.l @(r0,r5),r3
	add r4,r3
	mov r3,r2
	cmp/pz r2
	mov.l r3,@(r0,r5)
	bt loc_8c01181a
	mov 0x00,r1
	mov.l r1,@(r0,r5)

loc_8c01181a:
	mov.l @(r0,r5),r3
	mov.w @(loc_8c011888,PC),r4
	cmp/gt r4,r3
	bf loc_8c011824
	mov.l r4,@(r0,r5)

loc_8c011824:
	rts
	nop

loc_8c011828:
	mov.l @(loc_8c01188c,PC),r1
	mov 0x4C,r0
	mov.l @(loc_8c011890,PC),r4
	mov.l @(r0,r1),r3
	mov.w @(0x6,r4),r0
	mov.w @(loc_8c011888,PC),r5
	add r3,r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x6,r4),r0
	extu.w r0,r0
	cmp/gt r5,r0
	bf loc_8c011846
	mov r5,r0
	nop
	mov.w r0,@(0x6,r4)

loc_8c011846:
	mov.b @(0x1,r4),r0
	extu.b r0,r6
	mov 0x4C,r0
	mov.l @(r0,r1),r3
	cmp/pz r3
	bt loc_8c011854
	add 0x03,r3

loc_8c011854:
	shar r3
	shar r3
	mov 0x64,r7
	add r3,r6
	cmp/ge r7,r6
	bf.s loc_8c01187a
	mov 0x63,r5

loc_8c011862:
	mov.b @r4,r2
	add 0x01,r2
	mov.b r2,@r4
	mov.b @r4,r3
	extu.b r3,r3
	cmp/gt r5,r3
	bf.s loc_8c011876
	add 0x9C,r6
	mov r5,r6
	mov.b r5,@r4

loc_8c011876:
	cmp/ge r7,r6
	bt loc_8c011862

loc_8c01187a:
	mov r6,r0
	nop
	mov.b r0,@(0x1,r4)
	mov 0x4C,r0
	mov 0x00,r3
	rts
	mov.l r3,@(r0,r1)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c011888:
	#data 0x270f
	#align4
loc_8c01188c:
	#data 0x8c289750
loc_8c011890:
	#data 0x8c212c3c
loc_8c011894:
	#data bank12.loc_8c129128

;==============================================
loc_8c011898:
	sts.l pr,@-r15
	mov.l @(loc_8c011974,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c011978,PC),r1
	rts
	mov.l r0,@r1

;==============================================
loc_8c0118a8:
	mov.l @(loc_8c01197c,PC),r5
	mov 0x5C,r0
	mov 0xFF,r3
	mov.l r14,@-r15
	mov.l r3,@(r0,r5)
	mov 0x2B,r0
	mov.b @(r0,r5),r0
	mov 0x01,r6
	cmp/eq 0x01,r0
	bf.s loc_8c0118d8
	mov.l @(0x18,r5),r14
	mov r14,r0
	nop
	cmp/eq 0xFF,r0
	bt loc_8c011900
	mov.l @(0x34,r5),r3
	mov r6,r2
	shad r3,r2
	tst r14,r2
	bt loc_8c0118d8
	mov.l @(0x34,r5),r1
	mov 0x5C,r0
	bra loc_8c01190a
	mov.l r1,@(r0,r5)

loc_8c0118d8:
	mov r14,r0
	nop
	cmp/eq 0xFF,r0
	bt loc_8c011900
	tst r14,r14
	bt loc_8c011900
	bra loc_8c0118ea
	mov 0x00,r4

loc_8c0118e8:
	add 0x01,r4

loc_8c0118ea:
	mov r6,r2
	shad r4,r2
	tst r14,r2
	bf loc_8c0118f8
	mov 0x08,r1
	cmp/ge r1,r4
	bf loc_8c0118e8

loc_8c0118f8:
	mov r4,r0
	nop
	cmp/eq 0x08,r0
	bf loc_8c011906

loc_8c011900:
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c011906:
	mov 0x5C,r0
	mov.l r4,@(r0,r5)

loc_8c01190a:
	mov 0x01,r0
	rts
	mov.l @r15+,r14


loc_8c011910:
	mov.l r14,@-r15
	mov 0x5C,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(loc_8c01197c,PC),r12
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c011970,PC),r11
	mov.w @(loc_8c01196e,PC),r10
	mov.l @(r0,r12),r14
	mov r14,r0
	nop
	cmp/eq 0xFF,r0
	bt.s loc_8c0119c0
	extu.w r4,r13
	mov.w @(loc_8c011972,PC),r2
	mov.l @(loc_8c011980,PC),r9
	tst r13,r2
	bt loc_8c011984
	jsr @r9
	mov 0x01,r4
	mov r14,r0
	nop
	cmp/pz r0
	bf.s loc_8c01194e
	mov 0x07,r4
	bra loc_8c011958
	and 0x01,r0

loc_8c01194e:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c011958:
	tst r0,r0
	bf loc_8c011964
	mov r14,r1
	add 0x01,r1
	bra loc_8c01196a
	mov r1,r14

loc_8c011964:
	mov r14,r2
	add 0xFF,r2
	mov r2,r14

loc_8c01196a:
	bra loc_8c0119c0
	and r4,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01196e:
	#data 0x0400
loc_8c011970:
	#data 0x0800
loc_8c011972:
	#data 0x3000
	#align4
loc_8c011974:
	#data bank11.loc_8c115d2e
loc_8c011978:
	#data 0x8c289768
loc_8c01197c:
	#data 0x8c289750
loc_8c011980:
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c011984:
	mov r13,r2
	tst r11,r2
	bt loc_8c0119a2
	jsr @r9
	mov 0x01,r4
	tst r14,r14
	bt loc_8c01199a
	mov r14,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c01199e

loc_8c01199a:
	bra loc_8c0119c0
	add 0x06,r14

loc_8c01199e:
	bra loc_8c0119c0
	add 0xFE,r14

loc_8c0119a2:
	tst r10,r2
	bt loc_8c0119c0
	jsr @r9
	mov 0x01,r4
	mov r14,r0
	nop
	cmp/eq 0x06,r0
	bt loc_8c0119ba
	mov r14,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c0119be

loc_8c0119ba:
	bra loc_8c0119c0
	add 0xFA,r14

loc_8c0119be:
	add 0x02,r14

loc_8c0119c0:
	mov.w @(loc_8c011a4c,PC),r7
	mov.w @(loc_8c011a4a,PC),r9
	mov.w @(loc_8c011a48,PC),r8
	bra loc_8c011a1a
	mov 0x00,r6

loc_8c0119ca:
	mov 0x5C,r0
	mov r13,r3
	mov.l @(r0,r12),r4
	mov r6,r5
	shll2 r4
	shll2 r4
	shll r4
	tst r7,r3
	bt.s loc_8c011a10
	shll2 r5
	mov r13,r1
	tst r9,r1
	bt loc_8c0119ea
	mov.l @(loc_8c011a50,PC),r14
	bra loc_8c011a12
	nop

loc_8c0119ea:
	mov r13,r2
	tst r8,r2
	bt loc_8c0119f6
	mov.l @(loc_8c011a54,PC),r14
	bra loc_8c011a12
	nop

loc_8c0119f6:
	tst r10,r2
	bt loc_8c011a00
	mov.l @(loc_8c011a58,PC),r14
	bra loc_8c011a12
	nop

loc_8c011a00:
	mov r13,r2
	tst r11,r2
	bt loc_8c011a18
	mov.l @(loc_8c011a5c,PC),r14
	add r4,r14
	add r5,r14
	bra loc_8c011a18
	mov.l @r14,r14

loc_8c011a10:
	mov.l @(loc_8c011a60,PC),r14

loc_8c011a12:
	add r4,r14
	add r5,r14
	mov.l @r14,r14

loc_8c011a18:
	add 0x01,r6

loc_8c011a1a:
	mov.l @(0x18,r12),r2
	mov 0x01,r3
	shad r14,r3
	tst r2,r3
	bf loc_8c011a32
	mov r14,r0
	nop
	cmp/eq 0xFF,r0
	bt loc_8c011a32
	mov 0x08,r2
	cmp/ge r2,r6
	bf loc_8c0119ca

loc_8c011a32:
	mov 0x5C,r0
	mov.l r14,@(r0,r12)
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
loc_8c011a48:
	#data 0x1000
loc_8c011a4a:
	#data 0x2000
loc_8c011a4c:
	#data 0x3c00
	#align4
loc_8c011a50:
	#data bank14.loc_8c143d28
loc_8c011a54:
	#data bank14.loc_8c143e28
loc_8c011a58:
	#data bank14.loc_8c143f28
loc_8c011a5c:
	#data bank14.loc_8c144028
loc_8c011a60:
	#data bank14.loc_8c143c28

;----------------------------------------------
loc_8c011a64:
	mov.l @(loc_8c011b60,PC),r0
	exts.b r4,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8c011b5e,PC),r3
	mov.l @(0x4,r2),r1
	tst r3,r1
	bt loc_8c011a78
	bra loc_8c011a7a
	mov 0x50,r5

loc_8c011a78:
	mov 0x40,r5

loc_8c011a7a:
	mov.l @(loc_8c011b64,PC),r3
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c011a96
	mov.l @(loc_8c011b68,PC),r2
	exts.b r4,r4
	mov 0x01,r0
	mov.b @r2,r3
	shad r4,r0
	tst r3,r0
	bf loc_8c011a96
	mov 0x00,r5

loc_8c011a96:
	rts
	mov r5,r0

loc_8c011a9a:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c011a64
	mov 0x00,r4
	mov.w r0,@r15
	bsr loc_8c011a64
	mov 0x01,r4
	mov.l @(loc_8c011b6c,PC),r5
	mov r0,r4
	mov.w @r15,r3
	mov.w @(0x4,r5),r0
	extu.w r3,r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c011ac2
	mov.w @(0x18,r5),r0
	extu.w r4,r4
	extu.w r0,r0
	tst r4,r0
	bt loc_8c011ad0

loc_8c011ac2:
	mov.l @(loc_8c011b70,PC),r2
	jsr @r2
	mov 0x02,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c011ad0:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c011ada:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c011a64
	mov 0x00,r4
	mov.w r0,@r15
	bsr loc_8c011a64
	mov 0x01,r4
	mov.l @(loc_8c011b6c,PC),r5
	mov r0,r4
	mov.w @r15,r3
	mov.w @(0x4,r5),r0
	extu.w r3,r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c011b02
	mov.w @(0x18,r5),r0
	extu.w r4,r4
	extu.w r0,r0
	tst r4,r0
	bt loc_8c011b0a

loc_8c011b02:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c011b0a:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c011b14:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c011a64
	mov 0x00,r4
	mov.w r0,@r15
	bsr loc_8c011a64
	mov 0x01,r4
	mov.l @(loc_8c011b6c,PC),r5
	mov r0,r4
	mov.w @r15,r3
	mov.w @(0x4,r5),r0
	extu.w r3,r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c011b46
	mov.w @(0x18,r5),r0
	extu.w r4,r4
	extu.w r0,r0
	tst r4,r0
	bf loc_8c011b46
	mov.l @(loc_8c011b74,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c011b54

loc_8c011b46:
	mov.l @(loc_8c011b70,PC),r3
	jsr @r3
	mov 0x02,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c011b54:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c011b5e:
	#data 0x0101
	#align4
loc_8c011b60:
	#data 0x8c212be0
loc_8c011b64:
	#data work.GameGlobalPointer
loc_8c011b68:
	#data 0x8c2142a7
loc_8c011b6c:
	#data 0x8c2681dc
loc_8c011b70:
	#data bank04.loc_8c04257c
loc_8c011b74:
	#data 0x8c212f08

;----------------------------------------------
loc_8c011b78:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c011a64
	mov 0x00,r4
	mov.w r0,@r15
	bsr loc_8c011a64
	mov 0x01,r4
	mov.l @(loc_8c011d28,PC),r5
	mov r0,r4
	mov.w @r15,r3
	mov.w @(0x4,r5),r0
	extu.w r3,r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c011baa
	mov.w @(0x18,r5),r0
	extu.w r4,r4
	extu.w r0,r0
	tst r4,r0
	bf loc_8c011baa
	mov.l @(loc_8c011d2c,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c011bb2

loc_8c011baa:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c011bb2:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c011bbc:
	mov.l @(loc_8c011d30,PC),r3
	mov 0x4C,r1
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.l @(loc_8c011d28,PC),r4
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf.s loc_8c011bee
	mov 0x20,r5
	mov.l @(loc_8c011d34,PC),r2
	mov.b @r2,r0
	tst 0x01,r0
	bt loc_8c011be2
	mov.w @(0x4,r4),r0
	extu.w r0,r0
	tst r5,r0
	bf loc_8c011c02
	bra loc_8c011bfc
	nop

loc_8c011be2:
	mov.w @(0x18,r4),r0
	extu.w r0,r0
	tst r5,r0
	bf loc_8c011c02
	bra loc_8c011bfc
	nop

loc_8c011bee:
	mov.w @(0x4,r4),r0
	extu.w r0,r2
	mov.w @(0x18,r4),r0
	extu.w r0,r0
	or r0,r2
	tst r5,r2
	bf loc_8c011c02

loc_8c011bfc:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c011c02:
	mov.l @(loc_8c011d38,PC),r3
	jsr @r3
	mov 0x03,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

loc_8c011c10:
	mov.l @(loc_8c011d30,PC),r3
	mov 0x4C,r1
	mov.l @(loc_8c011d28,PC),r4
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf.s loc_8c011c40
	mov 0x20,r5
	mov.l @(loc_8c011d34,PC),r2
	mov.b @r2,r0
	tst 0x01,r0
	bt loc_8c011c34
	mov.w @(0x4,r4),r0
	extu.w r0,r0
	tst r5,r0
	bf loc_8c011c52
	bra loc_8c011c4e
	nop

loc_8c011c34:
	mov.w @(0x18,r4),r0
	extu.w r0,r0
	tst r5,r0
	bf loc_8c011c52
	bra loc_8c011c4e
	nop

loc_8c011c40:
	mov.w @(0x4,r4),r0
	extu.w r0,r2
	mov.w @(0x18,r4),r0
	extu.w r0,r0
	or r0,r2
	tst r5,r2
	bf loc_8c011c52

loc_8c011c4e:
	rts
	mov 0x00,r0

loc_8c011c52:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c011c58:
	mov.l @(loc_8c011d30,PC),r2
	mov 0x4C,r1
	mov.l @(loc_8c011d2c,PC),r3
	mov 0x20,r6
	sts.l pr,@-r15
	mov.l @r2,r0
	mov.l @(loc_8c011d28,PC),r4
	mov.b @(r0,r1),r0
	mov.w @r3,r5
	cmp/eq 0x05,r0
	bf.s loc_8c011c94
	extu.w r5,r5
	mov.l @(loc_8c011d34,PC),r3
	mov.b @r3,r0
	tst 0x01,r0
	bt loc_8c011c86
	mov.w @(0x4,r4),r0
	extu.w r0,r0
	or r5,r0
	tst r6,r0
	bf loc_8c011caa
	bra loc_8c011ca4
	nop

loc_8c011c86:
	mov.w @(0x18,r4),r0
	extu.w r0,r0
	or r5,r0
	tst r6,r0
	bf loc_8c011caa
	bra loc_8c011ca4
	nop

loc_8c011c94:
	mov.w @(0x4,r4),r0
	extu.w r0,r3
	mov.w @(0x18,r4),r0
	extu.w r0,r0
	or r0,r3
	or r5,r3
	tst r6,r3
	bf loc_8c011caa

loc_8c011ca4:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c011caa:
	mov.l @(loc_8c011d38,PC),r2
	jsr @r2
	mov 0x03,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c011cb8:
	mov.l @(loc_8c011d30,PC),r2
	mov 0x4C,r1
	mov.l @(loc_8c011d2c,PC),r3
	mov 0x20,r6
	mov.l @r2,r0
	mov.l @(loc_8c011d28,PC),r4
	mov.b @(r0,r1),r0
	mov.w @r3,r5
	cmp/eq 0x05,r0
	bf.s loc_8c011cf2
	extu.w r5,r5
	mov.l @(loc_8c011d34,PC),r3
	mov.b @r3,r0
	tst 0x01,r0
	bt loc_8c011ce4
	mov.w @(0x4,r4),r0
	extu.w r0,r0
	or r5,r0
	tst r6,r0
	bf loc_8c011d06
	bra loc_8c011d02
	nop

loc_8c011ce4:
	mov.w @(0x18,r4),r0
	extu.w r0,r0
	or r5,r0
	tst r6,r0
	bf loc_8c011d06
	bra loc_8c011d02
	nop

loc_8c011cf2:
	mov.w @(0x4,r4),r0
	extu.w r0,r3
	mov.w @(0x18,r4),r0
	extu.w r0,r0
	or r0,r3
	or r5,r3
	tst r6,r3
	bf loc_8c011d06

loc_8c011d02:
	rts
	mov 0x00,r0

loc_8c011d06:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c011d0c:
	sts.l pr,@-r15
	bsr loc_8c011ada
	nop
	tst r0,r0
	bt loc_8c011d1c
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c011d1c:
	bra loc_8c011c10
	lds.l @r15+,pr

loc_8c011d20:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c011d28:
	#data 0x8c2681dc
loc_8c011d2c:
	#data 0x8c212f08
loc_8c011d30:
	#data work.GameGlobalPointer
loc_8c011d34:
	#data 0x8c2142a7
loc_8c011d38:
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c011d3c:
	sts.l pr,@-r15
	bsr loc_8c011d8c
	mov 0x00,r4
	bsr loc_8c011d8c
	mov 0x01,r4
	mov.l @(loc_8c011e60,PC),r4
	mov.w @(loc_8c011e54,PC),r2
	mov.w @(loc_8c011e52,PC),r1
	mov r4,r5
	mov.l @(loc_8c011e64,PC),r3
	add r5,r2
	add r4,r1
	jsr @r3
	mov 0x14,r0
	mov.w @(loc_8c011e56,PC),r6
	mov.w @(loc_8c011e54,PC),r2
	mov.w @(loc_8c011e58,PC),r1
	add r4,r6
	mov.l @(loc_8c011e64,PC),r3
	add r6,r2
	add r4,r1
	jsr @r3
	mov 0x14,r0
	mov.w @(loc_8c011e54,PC),r2
	mov.w @(loc_8c011e5a,PC),r1
	mov.l @(loc_8c011e64,PC),r3
	add r5,r2
	add r4,r1
	jsr @r3
	mov 0x14,r0
	mov.w @(loc_8c011e54,PC),r2
	mov.w @(loc_8c011e5c,PC),r1
	mov.l @(loc_8c011e64,PC),r3
	add r6,r2
	add r4,r1
	jsr @r3
	mov 0x14,r0
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c011d8c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	add 0xFC,r15
	mov r4,r10
	mov r4,r3
	shll r10
	mov r4,r14
	add r3,r10
	mov r4,r3
	shll2 r14
	mov.l @(loc_8c011e68,PC),r13
	add r3,r14
	mov.l @(loc_8c011e70,PC),r3
	shll2 r14
	mov.l @(loc_8c011e6c,PC),r7
	mov.l r14,@r15
	shll2 r10
	mov 0x00,r11
	mov 0x0C,r6
	mov r11,r5
	add r3,r14
	add r10,r13

loc_8c011dbe:
	mov r5,r1
	add r13,r1
	mov r5,r0
	nop
	mov.w @r14,r2
	add 0x02,r5
	mov.w @(r0,r7),r3
	cmp/hs r6,r5
	and r2,r3
	mov.w r3,@r1
	bf loc_8c011dbe
	mov.l @(loc_8c011e74,PC),r5
	mov r11,r7
	mov.l @(loc_8c011e78,PC),r13
	mov r11,r12
	add r10,r5
	mov r5,r6
	mov.l @(loc_8c011e68,PC),r5
	mov 0x06,r14
	add r10,r5

loc_8c011de6:
	mov.w @r5,r2
	tst r2,r2
	bt.s loc_8c011df8
	add 0x01,r7
	mov.w @r6,r11
	extu.w r11,r0
	shll r0
	mov.w @(r0,r13),r3
	or r3,r12

loc_8c011df8:
	cmp/ge r14,r7
	add 0x02,r6
	bf.s loc_8c011de6
	add 0x02,r5
	mov.w @(loc_8c011e56,PC),r5
	mov.l @(loc_8c011e60,PC),r3
	mul.l r5,r4
	mov.w @(loc_8c011e54,PC),r0
	sts macl,r5
	add r3,r5
	mov.l @(loc_8c011e7c,PC),r3
	mov.w @(r0,r5),r2
	add 0x02,r0
	mov.w r2,@(r0,r5)
	mov.l @r15,r1
	mov.l @(loc_8c011e70,PC),r2
	mov.w @(loc_8c011e54,PC),r0
	add r2,r1
	mov.w @r1,r1
	and r3,r1
	or r1,r12
	mov.w r12,@(r0,r5)
	add 0x02,r0
	mov.w @(r0,r5),r3
	add 0xFE,r0
	mov.w @(r0,r5),r1
	add 0x04,r0
	not r3,r3
	and r1,r3
	mov.w r3,@(r0,r5)
	add 0xFC,r0
	mov.w @(r0,r5),r1
	add 0x02,r0
	mov.w @(r0,r5),r3
	not r1,r1
	and r3,r1
	add 0x04,r0
	mov.w r1,@(r0,r5)
	add 0x04,r15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c011e52:
	#data 0x1024
loc_8c011e54:
	#data 0x04dc
loc_8c011e56:
	#data 0x05a4;likely Player Offset
loc_8c011e58:
	#data 0x15c8
loc_8c011e5a:
	#data 0x1b6c
loc_8c011e5c:
	#data 0x2110
	#align4
loc_8c011e60:
	#data pl_mem.player_start
loc_8c011e64:
	#data bank12.loc_8c129620
loc_8c011e68:
	#data 0x8c1f8ad0
loc_8c011e6c:
	#data bank14.loc_8c144128
loc_8c011e70:
	#data 0x8c2681dc
loc_8c011e74:
	#data 0x8c212c1c
loc_8c011e78:
	#data bank14.loc_8c144134
loc_8c011e7c:
	#data 0x0000bc00

;----------------------------------------------
loc_8c011e80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	add 0xFC,r15
	mov r4,r10
	mov r4,r3
	shll r10
	mov r4,r14
	add r3,r10
	mov r4,r3
	shll2 r14
	mov.l @(loc_8c011f4c,PC),r13
	add r3,r14
	mov.l @(loc_8c011f54,PC),r3
	shll2 r14
	mov.l @(loc_8c011f50,PC),r7
	mov.l r14,@r15
	shll2 r10
	mov 0x00,r11
	mov 0x0C,r6
	mov r11,r5
	add r3,r14
	add r10,r13

loc_8c011eb2:
	mov r5,r1
	add r13,r1
	mov r5,r0
	nop
	mov.w @r14,r2
	add 0x02,r5
	mov.w @(r0,r7),r3
	cmp/hs r6,r5
	and r2,r3
	mov.w r3,@r1
	bf loc_8c011eb2
	mov.l @(loc_8c011f58,PC),r5
	mov r11,r7
	mov.l @(loc_8c011f5c,PC),r13
	mov r11,r12
	add r10,r5
	mov r5,r6
	mov.l @(loc_8c011f4c,PC),r5
	mov 0x06,r14
	add r10,r5

loc_8c011eda:
	mov.w @r5,r2
	tst r2,r2
	bt.s loc_8c011eec
	add 0x01,r7
	mov.w @r6,r11
	extu.w r11,r0
	shll r0
	mov.w @(r0,r13),r3
	or r3,r12

loc_8c011eec:
	cmp/ge r14,r7
	add 0x02,r6
	bf.s loc_8c011eda
	add 0x02,r5
	mov.w @(loc_8c011f46,PC),r5
	mov.l @(loc_8c011f60,PC),r3
	mul.l r5,r4
	mov.w @(loc_8c011f48,PC),r0
	sts macl,r5
	add r3,r5

;f00
	mov.l @(loc_8c011f64,PC),r3
	mov.w @(r0,r5),r2
	add 0x02,r0
	mov.w r2,@(r0,r5)
	mov.l @r15,r1
	mov.l @(loc_8c011f54,PC),r2
	mov.w @(loc_8c011f48,PC),r0
	add r2,r1
	mov.w @r1,r1
	and r3,r1
	or r1,r12
	mov.w r12,@(r0,r5)
	add 0x02,r0
	mov.w @(r0,r5),r3
	add 0xFE,r0
	mov.w @(r0,r5),r1

;f20
	add 0x04,r0
	not r3,r3
	and r1,r3
	mov.w r3,@(r0,r5)
	add 0xFC,r0
	mov.w @(r0,r5),r1
	add 0x02,r0
	mov.w @(r0,r5),r3
	not r1,r1
	and r3,r1
	add 0x04,r0
	mov.w r1,@(r0,r5)
	add 0x04,r15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c011f46:
	#data 0x05a4
loc_8c011f48:
	#data 0x04dc
	#align4
loc_8c011f4c:
	#data 0x8c1f8ad0
loc_8c011f50:
	#data bank14.loc_8c144128
loc_8c011f54:
	#data 0x8c2681dc
loc_8c011f58:
	#data 0x8c2152a6
loc_8c011f5c:
	#data bank14.loc_8c144134
loc_8c011f60:
	#data pl_mem.player_start
loc_8c011f64:
	#data 0x0000bc00

;==============================================
loc_8c011f68:
	sts.l pr,@-r15
	mov.l @(loc_8c012118,PC),r3
	jsr @r3
	mov 0x01,r4
	tst r0,r0
	bf loc_8c011fb6
	mov.l @(loc_8c01211c,PC),r5
	mov.l @(loc_8c012120,PC),r2
	mov r5,r6
	add 0x14,r6
	mov.w @(0x4,r6),r0
	mov r5,r4
	mov r0,r3
	mov.w @(0x4,r4),r0
	or r3,r0
	mov.w r0,@r2
	mov.w @r4,r1
	mov.w @r6,r3
	mov.l @(loc_8c012128,PC),r2
	or r3,r1
	mov.l @(loc_8c012124,PC),r0
	mov.w r1,@r0
	mov.l @r2,r3
	mov.l @(loc_8c01212c,PC),r1
	mov.b @(0x1,r3),r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(loc_8c012130,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c012130,PC),r2
	jsr @r2
	mov 0x0C,r4
	mov.l @(loc_8c012138,PC),r3
	mov.l @(loc_8c012134,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c011fb6:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c011fbc:
	mov.l r14,@-r15
	mov.l @(loc_8c012128,PC),r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r14,r4
	mov.b @(0x2,r4),r0
	tst r0,r0
	bf.s loc_8c01202c
	mov 0x00,r13
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c01213c,PC),r3
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x2,r4)
	mov.l @(loc_8c012140,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c012144,PC),r3
	jsr @r3
	mov 0x10,r4
	mov.l @(loc_8c012148,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c01214c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c012150,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c012154,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c01215c,PC),r2
	mov.l @(loc_8c012158,PC),r4
	jsr @r2
	nop
	mov.l @(loc_8c012160,PC),r3
	jsr @r3
	fldi1 fr4
	mov.l @r14,r2
	mov r13,r0
	nop
	mov.l @(loc_8c012164,PC),r3
	jsr @r3
	mov.w r0,@(0x8,r2)
	mov.l @(loc_8c012168,PC),r2
	jsr @r2
	mov 0x00,r4
	lds.l @r15+,pr
	mov.l @(loc_8c012170,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c01216c,PC),r4
	mov 0x19,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c01202c:
	mov 0x59,r0
	mov.b @(r0,r4),r3
	cmp/pz r3
	bf loc_8c012080
	mov.b @(r0,r4),r5
	tst r5,r5
	bt loc_8c01205a
	mov r5,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c01205a
	mov r5,r0
	nop
	cmp/eq 0x02,r0
	bt loc_8c01205a
	mov r5,r0
	nop
	cmp/eq 0x07,r0
	bt loc_8c01205a
	mov r5,r0
	nop
	cmp/eq 0x05,r0
	bf loc_8c01206c

loc_8c01205a:
	mov.l @(loc_8c012174,PC),r2
	jsr @r2
	mov 0x1C,r4
	mov.l @(loc_8c012178,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c01217c,PC),r2
	jsr @r2
	nop

loc_8c01206c:
	mov.l @r14,r3
	mov.b @(0x1,r3),r0
	add 0x01,r0
	mov.b r0,@(0x1,r3)
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x2,r3)
	bra loc_8c0120a4
	nop

loc_8c012080:
	mov.b @(0x1,r4),r0
	add 0x01,r0
	mov.b r0,@(0x1,r4)
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x2,r3)
	mov.l @(loc_8c012174,PC),r3
	jsr @r3
	mov 0x1C,r4
	mov.l @(loc_8c012178,PC),r2
	jsr @r2
	mov 0x01,r4
	lds.l @r15+,pr
	mov.l @(loc_8c01217c,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0120a4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0120ac:
	mov.l @(loc_8c012180,PC),r4
	mov 0x01,r5
	mov.l @r4,r3
	mov.l @(0x30,r3),r2
	mov.l @r2,r1
	tst r5,r1
	bt loc_8c0120c4
	mov.l @(0x4,r4),r2
	mov.l @(0x30,r2),r3
	mov.l @r3,r1
	tst r5,r1
	bf loc_8c0120c8

loc_8c0120c4:
	rts
	mov 0x01,r0

loc_8c0120c8:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c0120ce:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c012128,PC),r14
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @r14,r4
	mov.b @(0x2,r4),r0
	tst r0,r0
	bf.s loc_8c012188
	mov 0x08,r9
	mov.l @(loc_8c012184,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0120f8
	bra loc_8c0123d4
	nop

loc_8c0120f8:
	mov.l @r14,r3
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	mov.l @r14,r3
	mov r9,r0
	nop
	mov.w r0,@(0xA,r3)
	mov.l @r14,r3
	mov r3,r0
	nop
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	mov.w r0,@(0x8,r3)
	bra loc_8c0123d4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c012118:
	#data loc_8c010b18
loc_8c01211c:
	#data 0x8c2681dc
loc_8c012120:
	#data 0x8c1f8af8
loc_8c012124:
	#data 0x8c1f8afa
loc_8c012128:
	#data work.GameGlobalPointer
loc_8c01212c:
	#data bank14.loc_8c144160
loc_8c012130:
	#data bank04.loc_8c044ef0
loc_8c012134:
	#data bank03.loc_8c030780
loc_8c012138:
	#data bank03.loc_8c0395ac
loc_8c01213c:
	#data bank03.loc_8c0357d8
loc_8c012140:
	#data bank03.loc_8c03580c
loc_8c012144:
	#data bank03.loc_8c032be0
loc_8c012148:
	#data bank04.loc_8c044d8c
loc_8c01214c:
	#data bank02.loc_8c02e014
loc_8c012150:
	#data bank03.loc_8c0355a8
loc_8c012154:
	#data bank02.loc_8c02dc1c
loc_8c012158:
	#data bank14.loc_8c144154
loc_8c01215c:
	#data bank03.loc_8c031f10
loc_8c012160:
	#data bank03.loc_8c031f24
loc_8c012164:
	#data loc_8c016dac
loc_8c012168:
	#data loc_8c016df2
loc_8c01216c:
	#data 0xff000000
loc_8c012170:
	#data bank03.loc_8c0355b2
loc_8c012174:
	#data bank04.loc_8c041dde
loc_8c012178:
	#data bank04.loc_8c041aa6
loc_8c01217c:
	#data bank04.loc_8c041e44
loc_8c012180:
	#data 0x8c212be0
loc_8c012184:
	#data bank03.loc_8c03563a

;----------------------------------------------
loc_8c012188:
	mov.b @(0x2,r4),r0
	cmp/eq 0x01,r0
	bt.s loc_8c012194
	mov 0x00,r13
	bra loc_8c012344
	nop

loc_8c012194:
	mov.w @(0xA,r4),r0
	tst r0,r0
	bt loc_8c01219e
	bra loc_8c012326
	nop

loc_8c01219e:
	mov.l @(loc_8c012254,PC),r8
	mov 0x04,r11
	mov.w @(loc_8c012250,PC),r2
	mov.w @r8,r3
	mov.l @(loc_8c012258,PC),r10
	extu.w r3,r3
	tst r2,r3
	bt.s loc_8c012214
	mov 0x05,r12
	mov.w @(0x8,r4),r0
	cmp/ge r12,r0
	bf loc_8c0121dc
	mov.w @(0x8,r4),r0
	add 0x01,r0
	mov.w r0,@(0x8,r4)
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	cmp/gt r9,r0
	bf loc_8c0121cc
	mov.l @r14,r1
	mov r12,r0
	nop
	mov.w r0,@(0x8,r1)

loc_8c0121cc:
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x05,r0
	bf loc_8c012208
	mov.l @r14,r2
	mov 0x06,r0
	bra loc_8c012208
	mov.w r0,@(0x8,r2)

loc_8c0121dc:
	add 0xFF,r0
	mov.w r0,@(0x8,r4)
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x01,r0
	bf loc_8c0121f8
	bsr loc_8c0120ac
	nop
	tst r0,r0
	bt loc_8c0121f8
	mov.l @r14,r2
	mov r13,r0
	nop
	mov.w r0,@(0x8,r2)

loc_8c0121f8:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	cmp/pz r0
	bt loc_8c012208
	mov.l @r14,r2
	mov r11,r0
	nop
	mov.w r0,@(0x8,r2)

loc_8c012208:
	jsr @r10
	mov 0x01,r4
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.w r0,@(0xA,r3)

loc_8c012214:
	mov.w @r8,r3
	mov.w @(loc_8c012252,PC),r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c012296
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/ge r12,r0
	bf loc_8c01225c
	mov.l @r14,r1
	mov.w @(0x8,r1),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r1)
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	cmp/ge r12,r0
	bt loc_8c01223e
	mov.l @r14,r1
	mov r9,r0
	nop
	mov.w r0,@(0x8,r1)

loc_8c01223e:
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x05,r0
	bf loc_8c01228a
	mov.l @r14,r2
	mov r9,r0
	nop
	bra loc_8c01228a
	mov.w r0,@(0x8,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c012250:
	#data 0x0800
loc_8c012252:
	#data 0x0400
	#align4
loc_8c012254:
	#data 0x8c1f8af8
loc_8c012258:
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c01225c:
	mov.l @r14,r1
	mov.w @(0x8,r1),r0
	add 0x01,r0
	mov.w r0,@(0x8,r1)
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x01,r0
	bf loc_8c01227a
	bsr loc_8c0120ac
	nop
	tst r0,r0
	bt loc_8c01227a
	mov.l @r14,r2
	mov 0x02,r0
	mov.w r0,@(0x8,r2)

loc_8c01227a:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	cmp/ge r12,r0
	bf loc_8c01228a
	mov.l @r14,r2
	mov r13,r0
	nop
	mov.w r0,@(0x8,r2)

loc_8c01228a:
	jsr @r10
	mov 0x01,r4
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.w r0,@(0xA,r3)

loc_8c012296:
	mov.w @r8,r4
	mov.w @(loc_8c01233c,PC),r3
	extu.w r4,r4
	tst r4,r3
	bf loc_8c0122a6
	mov.w @(loc_8c01233e,PC),r1
	tst r4,r1
	bt loc_8c0122f0

loc_8c0122a6:
	mov.l @r14,r2
	mov.l @(loc_8c012340,PC),r4
	mov.w @(0x8,r2),r0
	cmp/ge r12,r0
	bf loc_8c0122d8
	mov.l @r14,r2
	mov r2,r0
	nop
	mov.w @(0x8,r0),r0
	add 0xFB,r0
	mov.b @(r0,r4),r0
	mov.w r0,@(0x8,r2)
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x01,r0
	bf loc_8c0122e4
	bsr loc_8c0120ac
	nop
	tst r0,r0
	bt loc_8c0122e4
	mov.l @r14,r2
	mov r13,r0
	nop
	bra loc_8c0122e4
	mov.w r0,@(0x8,r2)

loc_8c0122d8:
	mov r2,r0
	nop
	mov.w @(0x8,r0),r0
	add r4,r0
	mov.b @(0x5,r0),r0
	mov.w r0,@(0x8,r2)

loc_8c0122e4:
	jsr @r10
	mov 0x01,r4
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.w r0,@(0xA,r3)

loc_8c0122f0:
	mov.l @r14,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x01,r0
	bf loc_8c012308
	bsr loc_8c0120ac
	nop
	tst r0,r0
	bt loc_8c012308
	mov.l @r14,r2
	mov r13,r0
	nop
	mov.w r0,@(0x8,r2)

loc_8c012308:
	mov.l @r14,r3
	mov r3,r2
	mov.w @(0x8,r2),r0
	mov r0,r1
	mov 0x4C,r0
	mov.b r1,@(r0,r3)
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c012464
	mov.l @r15+,r14

loc_8c012326:
	mov.w @(0xA,r4),r0
	add 0xFF,r0
	mov.w r0,@(0xA,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0123d4
	mov.l @r14,r2
	mov r13,r0
	nop
	bra loc_8c0123d4
	mov.w r0,@(0xA,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01233c:
	#data 0x2000
loc_8c01233e:
	#data 0x1000
	#align4
loc_8c012340:
	#data bank14.loc_8c14416c

;==============================================
loc_8c012344:
	mov.l @(loc_8c012450,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c0123d4
	mov.l @r14,r2
	mov 0x40,r3
	mov 0x07,r0
	mov.l r3,@(0x14,r2)
	mov 0x01,r3
	mov.l @r14,r2
	mov.b r3,@r2
	mov.l @r14,r2
	mov.b r0,@(0x1,r2)
	mov 0x02,r2
	mov.l @r14,r3
	add r3,r2
	mov 0x03,r3
	mov.l r2,@-r15
	mov.l @r14,r0
	add r0,r3
	mov.l r3,@-r15
	mov 0x04,r3
	mov.l @r14,r2
	add r2,r3
	mov.l r3,@-r15
	mov 0x05,r3
	mov.l @r14,r1
	add r1,r3
	mov.l r3,@-r15
	mov 0x06,r3
	mov.l @r14,r0
	add r0,r3
	mov.l r3,@-r15
	mov 0x07,r3
	mov.l @r14,r0
	add r0,r3
	mov.l r3,@-r15
	mov 0x08,r3
	mov.l @r14,r0
	add r0,r3
	mov.l r3,@-r15
	mov 0x0E,r3
	mov.l @r14,r0
	mov.l @r14,r1
	add r0,r3
	mov.l @r14,r2
	add 0x0A,r1
	mov.w r13,@r3
	add 0x0C,r2
	mov.w r13,@r2
	mov.w r13,@r1
	mov.l @r15+,r0
	mov.w r13,@r0
	mov.l @r15+,r0
	mov.b r13,@r0
	mov.l @r15+,r0
	mov.b r13,@r0
	mov.l @r15+,r0
	mov.b r13,@r0
	mov.l @r15+,r0
	mov.b r13,@r0
	mov.l @r15+,r0
	mov.b r13,@r0
	mov 0x4C,r0
	mov.l @r15+,r1
	mov.b r13,@r1
	mov.l @r14,r3
	mov.b r13,@(r0,r3)
	mov.l @r14,r3
	mov 0x59,r0
	mov.b r13,@(r0,r3)

loc_8c0123d4:
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
loc_8c0123e6:
	mov.l @(loc_8c012454,PC),r3
	mov 0x4C,r1
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c0123fe
	mov.l @(loc_8c012450,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c012410

loc_8c0123fe:
	mov.l @(loc_8c012454,PC),r3
	mov 0x4C,r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov.l @(loc_8c012458,PC),r0
	shll2 r1
	mov.l @(r0,r1),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c012410:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c012416:
	mov.l @(loc_8c01245c,PC),r0
	extu.w r4,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8c01244c,PC),r3
	mov.l @(0x4,r2),r1
	tst r3,r1
	bt.s loc_8c01242c
	extu.w r4,r4
	bra loc_8c01242e
	mov 0x50,r5

loc_8c01242c:
	mov 0x40,r5

loc_8c01242e:
	mov r4,r3
	shll2 r4
	mov.l @(loc_8c012460,PC),r0
	add r3,r4
	shll2 r4
	mov.w @(r0,r4),r2
	extu.w r5,r5
	extu.w r2,r2
	tst r5,r2
	bt loc_8c012446
	rts
	mov 0x01,r0

loc_8c012446:
	mov 0x00,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01244c:
	#data 0x0101
	#align4
loc_8c012450:
	#data bank03.loc_8c03563a
loc_8c012454:
	#data work.GameGlobalPointer
loc_8c012458:
	#data bank14.loc_8c144178
loc_8c01245c:
	#data 0x8c212be0
loc_8c012460:
	#data 0x8c2681e0

;----------------------------------------------
loc_8c012464:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c0125ec,PC),r8
	mov.l @(loc_8c0125f4,PC),r3
	sts.l pr,@-r15
	mov.w @(0x4,r8),r0
	mov.l @(loc_8c0125f0,PC),r14
	extu.w r0,r0
	tst r3,r0
	bf.s loc_8c012490
	mov r13,r11
	bsr loc_8c012416
	mov 0x00,r4
	tst r0,r0
	bt loc_8c012492

loc_8c012490:
	mov r12,r11

loc_8c012492:
	mov.w @(0x18,r8),r0
	mov.l @(loc_8c0125f4,PC),r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c0124a4
	bsr loc_8c012416
	mov 0x01,r4
	tst r0,r0
	bt loc_8c0124a6

loc_8c0124a4:
	add 0x02,r11

loc_8c0124a6:
	exts.b r11,r2
	tst r2,r2
	bf loc_8c0124b0
	bra loc_8c012664
	nop

loc_8c0124b0:
	mov.l @r14,r1
	mov.b @(0x1,r1),r0
	add 0x01,r0
	mov.b r0,@(0x1,r1)
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x2,r3)
	mov.l @r14,r3
	mov.l @(loc_8c0125f8,PC),r10
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
	mov 0x18,r0
	mov.l @r14,r3
	jsr @r10
	mov.b r13,@(r0,r3)
	mov.l @(loc_8c0125fc,PC),r3
	jsr @r3
	nop
	mov.l @r14,r0
	mov 0x4C,r1
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt.s loc_8c012554
	mov 0xFF,r4
	cmp/eq 0x01,r0
	bt loc_8c012524
	cmp/eq 0x02,r0
	bt loc_8c012534
	cmp/eq 0x03,r0
	bt loc_8c012588
	cmp/eq 0x04,r0
	bt loc_8c012588
	cmp/eq 0x05,r0
	bt loc_8c01254e
	cmp/eq 0x06,r0
	bt loc_8c012588
	cmp/eq 0x07,r0
	bt loc_8c01255c
	cmp/eq 0x08,r0
	bt loc_8c012588
	bra loc_8c012588
	nop

loc_8c012524:
	mov.l @r14,r2
	mov 0x2A,r0
	mov.b r12,@(r0,r2)
	mov 0x1B,r0
	mov.l @r14,r3
	mov.b r12,@(r0,r3)
	bra loc_8c012588
	nop

loc_8c012534:
	mov.l @r14,r2
	mov 0x4A,r0
	mov.b r4,@(r0,r2)
	mov 0x4D,r0
	mov.l @r14,r3
	mov 0x03,r2
	mov.b r2,@(r0,r3)
	mov 0x49,r0
	mov.l @r14,r3
	mov.b r12,@(r0,r3)
	mov.l @(loc_8c012600,PC),r3
	bra loc_8c012582
	mov.b r13,@r3

loc_8c01254e:
	mov.l @r14,r2
	mov 0x4C,r0
	mov.b r13,@(r0,r2)

loc_8c012554:
	jsr @r10
	nop
	bra loc_8c012588
	nop

loc_8c01255c:
	mov.l @r14,r3
	mov 0x44,r0
	mov 0x02,r2
	mov.b r13,@(r0,r3)
	mov 0x4A,r0
	mov.l @r14,r3
	mov.b r4,@(r0,r3)
	mov 0x4F,r0
	mov.l @r14,r3
	mov.b r12,@(r0,r3)
	mov 0x4D,r0
	mov.l @r14,r3
	mov.b r2,@(r0,r3)
	mov 0x1B,r0
	mov.l @r14,r3
	mov.b r12,@(r0,r3)
	mov 0x49,r0
	mov.l @r14,r3
	mov.b r12,@(r0,r3)

loc_8c012582:
	mov.l @(loc_8c012604,PC),r3
	jsr @r3
	nop

loc_8c012588:
	mov.l @r14,r2
	mov 0x4C,r0
	mov r2,r3
	mov.b @(r0,r3),r1
	mov 0x59,r0
	mov.b r1,@(r0,r2)
	mov 0x4A,r0
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0125c6
	mov.w @(0x4,r8),r0
	mov.l @(loc_8c0125f4,PC),r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c0125b0
	bsr loc_8c012416
	mov 0x00,r4
	tst r0,r0
	bt loc_8c0125b2

loc_8c0125b0:
	mov r12,r11

loc_8c0125b2:
	mov.w @(0x18,r8),r0
	mov.l @(loc_8c0125f4,PC),r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c0125c4
	bsr loc_8c012416
	mov 0x01,r4
	tst r0,r0
	bt loc_8c0125c6

loc_8c0125c4:
	mov 0x02,r11

loc_8c0125c6:
	mov.l @r14,r2
	mov 0x2A,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c0125d2
	mov 0x03,r11

loc_8c0125d2:
	mov.l @r14,r3
	mov 0x18,r0
	mov.l @(loc_8c012608,PC),r9 ;Load p1 address memory
	mov 0x60,r2
	mov.b r11,@(r0,r3)
	add 0x6D,r0
	mov.l @r14,r3
	mov.b r11,@(r0,r3)
	mov.l @r14,r3
	mov.l r2,@(0x14,r3)
	bra loc_8c01262c
	mov r13,r11

;##############################################
	#align4
loc_8c0125ec:
	#data 0x8c2681dc
loc_8c0125f0:
	#data work.GameGlobalPointer
loc_8c0125f4:
	#data 0x00008000
loc_8c0125f8:
	#data loc_8c010a5a
loc_8c0125fc:
	#data bank03.loc_8c038028
loc_8c012600:
	#data 0x8c212cdb
loc_8c012604:
	#data bank11.loc_8c118960
loc_8c012608:
	#data pl_mem.player_start

;----------------------------------------------
loc_8c01260c:
	mov.w @(loc_8c0126b0,PC),r3
	exts.b r11,r10
	mov.l @(loc_8c0126b8,PC),r2
	mov 0x00,r5
	muls.w r3,r10
	mov r3,r6
	sts macl,r10
	add r9,r10
	jsr @r2
	mov r10,r4
	mov.w @(loc_8c0126b2,PC),r0
	mov.l @(loc_8c0126bc,PC),r3
	mov.b r11,@(r0,r10)
	jsr @r3
	mov r10,r4
	add 0x01,r11

loc_8c01262c:
	mov 0x06,r3
	exts.b r11,r2
	cmp/ge r3,r2
	bf loc_8c01260c
	mov.l @r14,r1
	mov 0x18,r0
	mov.b @(r0,r1),r3
	tst r12,r3
	bt loc_8c012642
	mov.w @(loc_8c0126b4,PC),r0
	mov.b r12,@(r0,r9)

loc_8c012642:
	mov.l @r14,r0
	mov 0x18,r1
	mov.w @(loc_8c0126b0,PC),r4
	mov.b @(r0,r1),r0
	tst 0x02,r0
	bt loc_8c012656
	mov.w @(loc_8c0126b4,PC),r0
	mov r9,r2
	add r4,r2
	mov.b r12,@(r0,r2)

loc_8c012656:
	mov.w @(loc_8c0126b6,PC),r0
	mov 0x02,r3
	mov.b r12,@(r0,r9)
	add r4,r9
	mov.b r3,@(r0,r9)
	bra loc_8c01267e
	mov r3,r4

loc_8c012664:
	mov.w @(0x4,r8),r0
	mov 0x20,r4
	extu.w r0,r0
	tst r4,r0
	bf loc_8c012676
	mov.w @(0x18,r8),r0
	extu.w r0,r0
	tst r4,r0
	bt loc_8c01269e

loc_8c012676:
	mov.l @r14,r2
	mov 0x02,r0
	mov 0x03,r4
	mov.b r0,@(0x2,r2)

loc_8c01267e:
	mov.l @(loc_8c0126c0,PC),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c0126c8,PC),r2   ;8c0355b2
	mov 0x01,r6
	mov.l @(loc_8c0126c4,PC),r4
	mov 0x0A,r5
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c01269e:
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
loc_8c0126b0:
	#data 0x05a4
loc_8c0126b2:
	#data 0x0524
loc_8c0126b4:
	#data 0x04bc
loc_8c0126b6:
	#data 0x04c8
	#align4
loc_8c0126b8:
	#data bank12.loc_8c129728
loc_8c0126bc:
	#data bank04.loc_8c043b42
loc_8c0126c0:
	#data bank04.loc_8c04257c
loc_8c0126c4:
	#data 0xff000000
loc_8c0126c8:
	#data bank03.loc_8c0355b2

;----------------------------------------------
loc_8c0126cc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0127dc,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c012792
	mov.l @(loc_8c0127e0,PC),r14
	mov 0x02,r10
	mov 0x00,r4
	mov.l @r14,r3
	mov.b r10,@r3
	mov.l @r14,r2
	mov r4,r0
	nop
	mov.b r0,@(0x1,r2)
	mov 0x60,r2
	mov.l @r14,r3
	mov r0,r13
	mov.l @(loc_8c0127e4,PC),r8
	mov 0x06,r9
	mov.b r0,@(0x2,r3)
	mov.l @r14,r3
	mov.l @(loc_8c0127e8,PC),r11
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
	mov.l @r14,r3
	mov.l r2,@(0x14,r3)

loc_8c01272e:
	mov.w @(loc_8c0127d2,PC),r3
	exts.b r13,r12
	mov 0x00,r5
	muls.w r3,r12
	mov r3,r6
	sts macl,r12
	add r11,r12
	jsr @r8
	mov r12,r4
	mov.w @(loc_8c0127d4,PC),r0
	mov.l @(loc_8c0127ec,PC),r3
	mov.b r13,@(r0,r12)
	jsr @r3
	mov r12,r4
	add 0x01,r13
	exts.b r13,r2
	cmp/ge r9,r2
	bf loc_8c01272e
	mov.l @r14,r2
	mov 0x18,r0
	mov 0x01,r4
	mov.b @(r0,r2),r3
	tst r4,r3
	bt loc_8c012762
	mov.w @(loc_8c0127d6,PC),r0
	mov.b r4,@(r0,r11)

loc_8c012762:
	mov.l @r14,r3
	mov 0x18,r0
	mov.w @(loc_8c0127d2,PC),r5
	mov.b @(r0,r3),r2
	tst r10,r2
	bt loc_8c012776
	mov.w @(loc_8c0127d6,PC),r0
	mov r11,r1
	add r5,r1
	mov.b r4,@(r0,r1)

loc_8c012776:
	mov.w @(loc_8c0127d8,PC),r0
	mov.l @(loc_8c0127f0,PC),r3
	mov.b r4,@(r0,r11)
	add r5,r11
	mov.b r10,@(r0,r11)
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c012792:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c0127a4:
	mov.l r14,@-r15
	mov.l @(loc_8c0127e0,PC),r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @r14,r12
	mov.b @(0x3,r12),r0
	cmp/eq 0x00,r0
	bt.s loc_8c0127f4
	mov 0x00,r13
	cmp/eq 0x01,r0
	bt loc_8c012830
	cmp/eq 0x02,r0
	bt loc_8c012874
	cmp/eq 0x03,r0
	bt loc_8c012888
	cmp/eq 0x04,r0
	bf loc_8c0127ce
	bra loc_8c012900
	nop

loc_8c0127ce:
	bra loc_8c012916
	nop

;##############################################
loc_8c0127d2:
	#data 0x05a4;chatacter offset
loc_8c0127d4:
	#data 0x0524
loc_8c0127d6:
	#data 0x04bc
loc_8c0127d8:
	#data 0x04c8
	#align4
loc_8c0127dc:
	#data bank03.loc_8c03563a
loc_8c0127e0:
	#data work.GameGlobalPointer
loc_8c0127e4:
	#data bank12.loc_8c129728
loc_8c0127e8:
	#data pl_mem.player_start
loc_8c0127ec:
	#data bank04.loc_8c043b42
loc_8c0127f0:
	#data bank04.loc_8c041ecc

;----------------------------------------------
loc_8c0127f4:
	mov.l @(loc_8c012a58,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c012802
	bra loc_8c012916
	nop

loc_8c012802:
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov r3,r0
	nop
	mov.b @(0x4,r0),r0
	mov.w r0,@(0x8,r3)
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov.l @(loc_8c012a5c,PC),r2
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.l @(loc_8c012a60,PC),r1
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	mov.b @r2,r3
	mov.l r3,@r1

loc_8c012830:
	mov.l @(loc_8c012a64,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c012a64,PC),r2
	jsr @r2
	mov 0x0C,r4
	mov.l @(loc_8c012a68,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c012a6c,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c012a70,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c012a74,PC),r2
	jsr @r2
	nop
	mov.l @r14,r3
	mov 0x00,r6
	mov.l @(loc_8c012a78,PC),r4
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov.l @(loc_8c012a7c,PC),r3
	jsr @r3
	mov 0x0A,r5
	lds.l @r15+,pr
	mov.l @(loc_8c012a80,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c012874:
	mov.l @(loc_8c012a58,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c012916
	mov.l @r14,r2
	mov.b @(0x3,r2),r0
	add 0x01,r0
	bra loc_8c012916
	mov.b r0,@(0x3,r2)

loc_8c012888:
	mov.l @(loc_8c012a84,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c0128a8
	mov.l @r14,r2
	mov.b @(0x3,r2),r0
	add 0x01,r0
	mov.b r0,@(0x3,r2)
	mov.l @r14,r3
	mov r3,r0
	nop
	mov.b @(0x8,r0),r0
	mov.b r0,@(0x4,r3)
	bra loc_8c0128c0
	nop

loc_8c0128a8:
	mov.l @(loc_8c012a88,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0128e4
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov 0x03,r0
	mov.l @r14,r3
	mov.b r0,@(0x4,r3)

loc_8c0128c0:
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x5,r3)
	mov 0x01,r6
	mov.l @r14,r3
	mov 0x0A,r5
	mov.l @(loc_8c012a78,PC),r4
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	lds.l @r15+,pr
	mov.l @(loc_8c012a7c,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0128e4:
	mov.l @r14,r2
	mov.l @r14,r8
	mov.w @(0x8,r2),r0
	add 0x08,r8
	mov.l r0,@-r15
	mov r0,r5
	bsr loc_8c01357a
	mov 0x03,r4
	mov.l @r15+,r5
	mov r0,r4
	bsr loc_8c013572
	mov 0x03,r6
	bra loc_8c012916
	mov.w r0,@r8

loc_8c012900:
	lds.l @r15+,pr
	mov.b @(0x4,r12),r0
	mov.l @(loc_8c012a8c,PC),r1
	mov.l @r15+,r8
	shll2 r0
	mov.l @(r0,r1),r3
	mov.l @r15+,r12
	mov.l @(loc_8c012a90,PC),r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c012916:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c012922:
	mov.l @(loc_8c012a94,PC),r5
	mov 0x00,r0
	mov.l @(loc_8c012a78,PC),r4
	mov 0x01,r6
	mov.l @r5,r3
	mov.b r0,@(0x2,r3)
	mov.l @r5,r3
	mov.b r0,@(0x3,r3)
	mov.l @(loc_8c012a7c,PC),r3
	jmp @r3
	mov 0x0A,r5

;----------------------------------------------
loc_8c012938:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c012a98,PC),r13
	bsr loc_8c01357a
	mov 0x03,r4
	mov.l @(loc_8c012a94,PC),r14
	mov 0x04,r10
	mov.l @(loc_8c012a9c,PC),r9
	mov 0x01,r11
	mov.l @r14,r4
	mov.b @(0x6,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_8c012992
	mov 0x00,r12
	cmp/eq 0x01,r0
	bf loc_8c012966
	bra loc_8c012aa8
	nop

loc_8c012966:
	cmp/eq 0x02,r0
	bf loc_8c01296e
	bra loc_8c012ac2
	nop

loc_8c01296e:
	cmp/eq 0x03,r0
	bf loc_8c012976
	bra loc_8c012b32
	nop

loc_8c012976:
	cmp/eq 0x04,r0
	bf loc_8c01297e
	bra loc_8c012b98
	nop

loc_8c01297e:
	cmp/eq 0x05,r0
	bf loc_8c012986
	bra loc_8c012bbe
	nop

loc_8c012986:
	cmp/eq 0x06,r0
	bf loc_8c01298e
	bra loc_8c012bea
	nop

loc_8c01298e:
	bra loc_8c012c16
	nop

loc_8c012992:
	mov 0x2B,r0
	mov.b @(r0,r13),r0
	cmp/eq 0x01,r0
	bt loc_8c0129be
	mov r10,r0
	nop
	mov.b r0,@(0x4,r4)
	mov.l @r14,r3
	mov r3,r0
	nop
	mov 0x07,r1
	mov r3,r2
	add r2,r1
	mov 0x06,r2
	mov.b r12,@r1
	add r0,r2
	mov.b r12,@r2
	mov r12,r0
	nop
	mov.b r0,@(0x5,r3)
	bra loc_8c012b06
	nop

loc_8c0129be:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)
	mov.l @(loc_8c012aa0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c012a68,PC),r2
	jsr @r2
	mov 0x09,r4
	mov.l @r14,r3
	mov r13,r4
	mov 0x78,r0
	add 0x22,r4
	mov.w r0,@(0x8,r3)
	mov r12,r0
	nop
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov r13,r4
	add 0x24,r4
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov 0x48,r0
	mov.l @(r0,r13),r3
	mov r13,r4
	tst r3,r3
	bt.s loc_8c012a0c
	add 0x59,r4
	mov 0x4C,r0
	mov.l @(r0,r13),r3
	tst r3,r3
	bt loc_8c012a0c
	mov 0x03,r3
	bra loc_8c012a24
	mov.b r3,@r4

loc_8c012a0c:
	mov 0x48,r0
	mov.l @(r0,r13),r1
	tst r1,r1
	bt loc_8c012a18
	bra loc_8c012a24
	mov.b r11,@r4

loc_8c012a18:
	mov 0x4C,r0
	mov.l @(r0,r13),r3
	tst r3,r3
	bt loc_8c012a38
	mov 0x02,r3
	mov.b r3,@r4

loc_8c012a24:
	jsr @r9
	nop
	mov 0x5A,r0
	mov.l @(loc_8c012aa4,PC),r3
	mov.b r11,@(r0,r13)
	mov.b @(r0,r13),r4
	jsr @r3
	extu.b r4,r4
	bra loc_8c012a40
	nop

loc_8c012a38:
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.w r0,@(0x8,r3)

loc_8c012a40:
	lds.l @r15+,pr
	mov.l @(loc_8c012a7c,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c012a78,PC),r4
	mov 0x0A,r5
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c012a58:
	#data bank03.loc_8c03563a
loc_8c012a5c:
	#data 0x8c212cbc
loc_8c012a60:
	#data 0x8c1f8af4
loc_8c012a64:
	#data bank04.loc_8c044e56
loc_8c012a68:
	#data loc_8c016df2
loc_8c012a6c:
	#data loc_8c0182e0
loc_8c012a70:
	#data loc_8c018320
loc_8c012a74:
	#data loc_8c0174c0
loc_8c012a78:
	#data 0xff000000
loc_8c012a7c:
	#data bank03.loc_8c0355b2
loc_8c012a80:
	#data loc_8c010d26
loc_8c012a84:
	#data loc_8c011a9a
loc_8c012a88:
	#data loc_8c011bbc
loc_8c012a8c:
	#data bank14.loc_8c14419c
loc_8c012a90:
	#data 0x8c212bfc
loc_8c012a94:
	#data work.GameGlobalPointer
loc_8c012a98:
	#data 0x8c289750
loc_8c012a9c:
	#data loc_8c0197fc
loc_8c012aa0:
	#data bank04.loc_8c044d8c
loc_8c012aa4:
	#data loc_8c0195c8

;----------------------------------------------
loc_8c012aa8:
	mov.l @(loc_8c012d24,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c012ab6
	bra loc_8c012c16
	nop

loc_8c012ab6:
	mov.l @r14,r3
	mov.b @(0x6,r3),r0
	add 0x01,r0
	mov.b r0,@(0x6,r3)
	bra loc_8c012c16
	nop

loc_8c012ac2:
	mov.l @(loc_8c012d28,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c012ad4
	mov.l @r14,r2
	mov r11,r0
	nop
	mov.w r0,@(0x8,r2)

loc_8c012ad4:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bt loc_8c012ae8
	bra loc_8c012c16
	nop

loc_8c012ae8:
	mov.l @r14,r2
	mov r13,r3
	add 0x59,r3
	mov.b @(0x6,r2),r0
	add 0x01,r0
	mov.b r0,@(0x6,r2)
	jsr @r9
	mov.b r10,@r3
	mov 0x5A,r0
	mov.l @(loc_8c012d2c,PC),r3
	mov 0x02,r2
	mov.b r2,@(r0,r13)
	mov.b @(r0,r13),r4
	jsr @r3
	extu.b r4,r4

loc_8c012b06:
	mov 0x48,r0
	mov.l @(r0,r13),r2
	tst r2,r2
	bt loc_8c012b14
	mov.l @(loc_8c012d30,PC),r3
	jsr @r3
	nop

loc_8c012b14:
	mov 0x4C,r0
	mov.l @(r0,r13),r2
	tst r2,r2
	bf loc_8c012b20
	bra loc_8c012c16
	nop

loc_8c012b20:
	lds.l @r15+,pr
	mov.l @(loc_8c012d34,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c012b32:
	mov.l @(loc_8c012d38,PC),r2
	mov 0x00,r5
	jsr @r2
	mov.l @(0x34,r13),r4
	cmp/eq 0x02,r0
	bt.s loc_8c012c16
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf.s loc_8c012b60
	mov 0x05,r5
	mov.l @r14,r3
	mov r10,r0
	nop
	mov.b r0,@(0x6,r3)
	mov 0x3C,r0
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov r13,r3
	add 0x59,r3
	bra loc_8c012b90
	mov.b r5,@r3

loc_8c012b60:
	tst r4,r4
	bf loc_8c012b78
	mov.l @r14,r2
	mov r5,r0
	nop
	mov r13,r3
	mov.b r0,@(0x6,r2)
	mov 0x06,r2
	add 0x59,r3
	mov.b r2,@r3
	bra loc_8c012b90
	nop

loc_8c012b78:
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c012c16
	mov.l @r14,r2
	mov r5,r0
	nop
	mov r13,r3
	mov.b r0,@(0x6,r2)
	mov 0x07,r2
	add 0x59,r3
	mov.b r2,@r3

loc_8c012b90:
	jsr @r9
	nop
	bra loc_8c012c16
	nop

loc_8c012b98:
	mov.l @(loc_8c012d3c,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c012baa
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.w r0,@(0x8,r3)

loc_8c012baa:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bt loc_8c012bcc
	bra loc_8c012c16
	nop

loc_8c012bbe:
	mov.l @(loc_8c012d3c,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c012c16
	mov 0x2B,r0
	mov.b r12,@(r0,r13)

loc_8c012bcc:
	mov.l @r14,r3
	mov 0x06,r0
	mov.l @(loc_8c012d40,PC),r4
	mov 0x01,r6
	mov.b r0,@(0x6,r3)
	mov 0x0A,r5
	lds.l @r15+,pr
	mov.l @(loc_8c012d44,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c012bea:
	mov.l @(loc_8c012d24,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c012c16
	mov.l @r14,r3
	mov r10,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.l @r14,r3
	mov r3,r0
	nop
	mov 0x07,r1
	mov r3,r2
	add r2,r1
	mov 0x06,r2
	mov.b r12,@r1
	add r0,r2
	mov.b r12,@r2
	mov r12,r0
	nop
	mov.b r0,@(0x5,r3)

loc_8c012c16:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c012c26:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c012d48,PC),r14
	mov.l r4,@r15
	mov.b @r14,r5
	mov.l r5,@-r15
	bsr loc_8c01357a
	mov 0x03,r4
	mov.l @r15+,r5
	mov 0x07,r6
	mov r0,r4
	bsr loc_8c013450
	mov 0x02,r7
	mov.b r0,@r14
	mov.b @r14,r2
	mov.l @r15,r3
	mov.b r2,@r3
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c012c52:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c012d4c,PC),r14
	mov.l r4,@r15
	mov.b @r14,r5
	mov.l r5,@-r15
	bsr loc_8c01357a
	mov 0x03,r4
	mov.l @r15+,r5
	mov 0x03,r6
	mov r0,r4
	bsr loc_8c013450
	mov 0x02,r7
	mov.b r0,@r14
	mov.b @r14,r0
	mov.l @r15,r3
	mov.b r0,@(0x1,r3)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c012c7e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c012d50,PC),r14
	mov.l r4,@r15
	mov.b @r14,r5
	mov.l r5,@-r15
	bsr loc_8c01357a
	mov 0x03,r4
	mov.l @r15+,r5
	mov 0x03,r6
	mov r0,r4
	bsr loc_8c013450
	mov 0x02,r7
	mov.b r0,@r14
	mov.b @r14,r0
	mov.l @r15,r3
	mov.b r0,@(0x2,r3)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c012caa:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c012d54,PC),r14
	mov.l r4,@r15
	mov.b @r14,r5
	mov.l r5,@-r15
	bsr loc_8c01357a
	mov 0x03,r4
	mov.l @r15+,r5
	mov 0x02,r6
	mov r0,r4
	bsr loc_8c013450
	mov r6,r7
	mov.b r0,@r14
	mov.b @r14,r0
	mov.l @r15,r3
	mov.b r0,@(0x3,r3)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c012cd6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c012d58,PC),r14
	mov.l r4,@r15
	mov.b @r14,r5
	mov.l r5,@-r15
	bsr loc_8c01357a
	mov 0x03,r4
	mov.l @r15+,r5
	mov 0x01,r6
	mov r0,r4
	bsr loc_8c013450
	mov 0x02,r7
	mov.b r0,@r14
	mov.l @r15,r3
	mov.b @(0x4,r3),r0
	mov.b @r14,r3
	cmp/eq r3,r0
	bt loc_8c012d1a
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c012d0e
	mov.l @(loc_8c012d5c,PC),r3
	jsr @r3
	nop
	bra loc_8c012d14
	nop

loc_8c012d0e:
	mov.l @(loc_8c012d60,PC),r3
	jsr @r3
	nop

loc_8c012d14:
	mov.b @r14,r0
	mov.l @r15,r2
	mov.b r0,@(0x4,r2)

loc_8c012d1a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c012d24:
	#data bank03.loc_8c03563a
loc_8c012d28:
	#data loc_8c011bbc
loc_8c012d2c:
	#data loc_8c0195c8
loc_8c012d30:
	#data loc_8c0117a2
loc_8c012d34:
	#data loc_8c011828
loc_8c012d38:
	#data bank11.loc_8c118686
loc_8c012d3c:
	#data loc_8c011d0c
loc_8c012d40:
	#data 0xff000000
loc_8c012d44:
	#data bank03.loc_8c0355b2
loc_8c012d48:
	#data 0x8c212cbd
loc_8c012d4c:
	#data 0x8c212cbe
loc_8c012d50:
	#data 0x8c212cbf
loc_8c012d54:
	#data 0x8c212cc0
loc_8c012d58:
	#data 0x8c212cbc
loc_8c012d5c:
	#data bank04.loc_8c041b00
loc_8c012d60:
	#data bank04.loc_8c041b10

;----------------------------------------------
loc_8c012d64:
	sts.l pr,@-r15
	mov.l @(loc_8c012e6c,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c012d78
	mov.l @(loc_8c012e70,PC),r3
	mov 0x01,r4
	jmp @r3
	lds.l @r15+,pr

loc_8c012d78:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c012d7e:
	sts.l pr,@-r15
	mov.l @(loc_8c012e6c,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c012d8e
	bra loc_8c012922
	lds.l @r15+,pr

loc_8c012d8e:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c012d94:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c012e74,PC),r14
	mov.l r4,@r15
	mov.l @r14,r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c012dec
	mov.l @(loc_8c012e78,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c012e78,PC),r2
	jsr @r2
	mov 0x0C,r4
	mov.l @r14,r3
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)
	mov 0x00,r0
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c012e7c,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c012e80,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c012e84,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c012e88,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c012e8c,PC),r4
	mov 0x0A,r5
	mov 0x00,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c012e90,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c012dec:
	mov.b @(0x5,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c012e06
	mov.l @(loc_8c012e94,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c012e5c
	mov.l @r14,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	bra loc_8c012e5c
	mov.b r0,@(0x5,r2)

loc_8c012e06:
	mov.l @(loc_8c012e98,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c012e1a
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c012922
	mov.l @r15+,r14

loc_8c012e1a:
	bsr loc_8c01357a
	mov 0x03,r4
	mov.w @(loc_8c012e66,PC),r5
	mov.w @(loc_8c012e68,PC),r3
	and r0,r5
	extu.w r5,r4
	cmp/eq r3,r4
	bt.s loc_8c012e32
	mov.l @r14,r13
	mov.w @(loc_8c012e6a,PC),r1
	cmp/eq r1,r4
	bf loc_8c012e48

loc_8c012e32:
	mov.w @(0x8,r13),r0
	mov.l r0,@-r15
	mov r0,r5
	bsr loc_8c01357a
	mov 0x03,r4
	mov.l @r15+,r5
	mov r0,r4
	bsr loc_8c013572
	mov 0x06,r6
	bra loc_8c012e5c
	mov.w r0,@(0x8,r13)

loc_8c012e48:
	mov.w @(0x8,r13),r0
	mov.l @(loc_8c012e9c,PC),r1
	shll2 r0
	mov.l @r15,r4
	mov.l @(r0,r1),r3
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c012e5c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c012e66:
	#data 0x3c00
loc_8c012e68:
	#data 0x2000
loc_8c012e6a:
	#data 0x1000
	#align4
loc_8c012e6c:
	#data loc_8c011a9a
loc_8c012e70:
	#data init_default_settings
loc_8c012e74:
	#data work.GameGlobalPointer
loc_8c012e78:
	#data bank04.loc_8c044e56
loc_8c012e7c:
	#data loc_8c016df2
loc_8c012e80:
	#data loc_8c0182e0
loc_8c012e84:
	#data loc_8c018320
loc_8c012e88:
	#data loc_8c01828a
loc_8c012e8c:
	#data 0xff000000
loc_8c012e90:
	#data bank03.loc_8c0355b2
loc_8c012e94:
	#data bank03.loc_8c03563a
loc_8c012e98:
	#data loc_8c011bbc
loc_8c012e9c:
	#data bank14.loc_8c1441b0

;----------------------------------------------
loc_8c012ea0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c012f64,PC),r14
	mov.l r4,@r15
	mov.l @r14,r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c012f08
	mov.l @(loc_8c012f68,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c012f68,PC),r2
	jsr @r2
	mov 0x0C,r4
	mov.l @r14,r3
	mov 0x00,r4
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)
	mov 0x71,r0
	mov.l @r14,r2
	add 0x70,r2
	mov.b r4,@r2
	mov.l @r14,r3
	mov.b r4,@(r0,r3)
	mov.l @r14,r3
	mov r4,r0
	nop
	mov.w r0,@(0xE,r3)
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c012f6c,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c012f70,PC),r2
	jsr @r2
	mov 0x02,r4
	mov.l @(loc_8c012f74,PC),r3
	jsr @r3
	mov 0x02,r4
	mov.l @(loc_8c012f78,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c012f7c,PC),r4
	mov 0x0A,r5
	mov 0x00,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c012f80,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c012f08:
	mov.b @(0x5,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c012f22
	mov.l @(loc_8c012f84,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c012f5a
	mov.l @r14,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	bra loc_8c012f5a
	mov.b r0,@(0x5,r2)

loc_8c012f22:
	mov.w @(0xE,r4),r0
	mov 0x08,r5
	add 0x01,r0
	mov.w r0,@(0xE,r4)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c012f5a
	mov.l @r14,r3
	mov r5,r0
	nop
	mov.w r0,@(0xE,r3)
	mov.l @r14,r0
	mov.b @(0x5,r0),r0
	cmp/eq 0x02,r0
	bf loc_8c012f52
	mov 0x00,r5
	bsr loc_8c012f88
	mov.l @r15,r4
	mov.l @r15,r4
	mov 0x01,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c012f88
	mov.l @r15+,r14

loc_8c012f52:
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c012922
	mov.l @r15+,r14

loc_8c012f5a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c012f64:
	#data work.GameGlobalPointer
loc_8c012f68:
	#data bank04.loc_8c044e56
loc_8c012f6c:
	#data loc_8c016df2
loc_8c012f70:
	#data loc_8c0182e0
loc_8c012f74:
	#data loc_8c018320
loc_8c012f78:
	#data loc_8c018b72
loc_8c012f7c:
	#data 0xff000000
loc_8c012f80:
	#data bank03.loc_8c0355b2
loc_8c012f84:
	#data bank03.loc_8c03563a

;----------------------------------------------
loc_8c012f88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r9
	extu.w r9,r3
	mov r4,r13
	mov 0x01,r4
	mov.l r3,@r15
	bsr loc_8c01357a
	shad r3,r4
	mov.l @(loc_8c0130a0,PC),r12
	mov r0,r4
	mov.w @(loc_8c013096,PC),r2
	extu.w r4,r3
	mov.l r3,@(0x4,r15)
	mov.l @r12,r11
	cmp/eq r2,r3
	mov.l r3,@(0x4,r15)
	bt.s loc_8c012fc4
	extu.w r9,r14
	mov.l @(0x4,r15),r3
	mov.w @(loc_8c013098,PC),r1
	cmp/eq r1,r3
	bf loc_8c012ff6

loc_8c012fc4:
	mov r11,r3
	add 0x70,r3
	add r14,r3
	mov.l r3,@r15
	mov 0x09,r6
	mov.l r3,@-r15
	mov.b @r3,r5
	bsr loc_8c013572
	extu.b r5,r5
	mov.l @r15+,r1
	mov.b r0,@r1
	mov.l @r12,r0
	add 0x70,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c012fea
	bra loc_8c013174
	nop

loc_8c012fea:
	mov.l @r12,r2
	mov 0x72,r0
	mov 0x00,r3
	mov.b r3,@(r0,r2)
	bra loc_8c013174
	nop

loc_8c012ff6:
	extu.w r9,r10
	mov.w @(loc_8c01309a,PC),r2
	mov r10,r3
	mov.l @(0x4,r15),r1
	shll r10
	cmp/eq r2,r1
	mov 0x06,r8
	add r3,r10
	bt.s loc_8c013012
	shll2 r10
	mov.l @(0x4,r15),r1
	mov.w @(loc_8c01309c,PC),r3
	cmp/eq r3,r1
	bf loc_8c0130d4

loc_8c013012:
	mov r11,r2
	add 0x70,r2
	add r14,r2
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r8,r3
	bt loc_8c01306a
	mov r11,r3
	add 0x70,r3
	add r14,r3
	mov.l @(loc_8c0130a4,PC),r0
	mov.b @r3,r2
	extu.b r2,r2
	mov.b @(r0,r2),r3
	extu.b r3,r14
	mov r13,r0
	nop
	extu.w r14,r3
	add 0x20,r0
	shll r3
	add r10,r0
	mov.w @(r0,r3),r2
	mov 0x0B,r6
	mov 0x02,r7
	mov.w r2,@r15
	mov.w @r15,r5
	bsr loc_8c013450
	extu.w r5,r5
	mov.w @r15,r2
	mov r0,r4
	extu.w r4,r3
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c01305a
	bra loc_8c013174
	nop

loc_8c01305a:
	mov r13,r0
	nop
	extu.w r14,r14
	add 0x20,r0
	shll r14
	add r10,r0
	bra loc_8c013174
	mov.w r4,@(r0,r14)

loc_8c01306a:
	mov r11,r0
	nop
	add 0x70,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0130ac
	mov.l @r15,r3
	mov 0x01,r4
	mov.b @(0x6,r13),r0
	shad r3,r4
	xor r4,r0
	mov.b r0,@(0x6,r13)
	mov.b @(0x6,r13),r0
	tst r4,r0
	bt loc_8c0130bc
	mov.l @(loc_8c0130a8,PC),r3
	mov 0x08,r5
	jsr @r3
	mov.l @r15,r4
	bra loc_8c0130bc
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c013096:
	#data 0x2000
loc_8c013098:
	#data 0x1000
loc_8c01309a:
	#data 0x0800
loc_8c01309c:
	#data 0x0400
	#align4
loc_8c0130a0:
	#data work.GameGlobalPointer
loc_8c0130a4:
	#data bank14.loc_8c1441cc
loc_8c0130a8:
	#data bank03.loc_8c031b48

;----------------------------------------------
loc_8c0130ac:
	cmp/eq 0x07,r0
	bf loc_8c013174
	mov r13,r3
	add 0x08,r3
	add r14,r3
	mov.b @r3,r0
	xor 0x01,r0
	mov.b r0,@r3

loc_8c0130bc:
	mov 0x04,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0131c0,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0130d4:
	bsr loc_8c012416
	mov r9,r4
	tst r0,r0
	bt loc_8c013140
	mov.l @r12,r0
	add 0x70,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c01311c
	bra loc_8c0130fc
	mov 0x00,r4

loc_8c0130ec:
	mov r13,r0
	nop
	extu.w r4,r3
	add 0x20,r0
	shll r3
	add r10,r0
	mov.w r4,@(r0,r3)
	add 0x01,r4

loc_8c0130fc:
	extu.w r4,r2
	cmp/ge r8,r2
	bf loc_8c0130ec
	mov r13,r2
	add 0x08,r2
	mov 0x00,r3
	add r14,r2
	mov.b r3,@r2
	mov 0x01,r2
	mov.l @r15,r3
	mov.b @(0x6,r13),r0
	shad r3,r2
	not r2,r2
	and r2,r0
	bra loc_8c013128
	mov.b r0,@(0x6,r13)


loc_8c01311c:
	cmp/eq 0x09,r0
	bf loc_8c013174
	mov.l @r12,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)

loc_8c013128:
	mov 0x02,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0131c0,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c013140:
	extu.w r9,r0
	mov.l @(loc_8c0131c4,PC),r1
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c013174
	mov.l @r12,r2
	mov 0x03,r4
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0131c0,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c013174:
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

;----------------------------------------------
loc_8c013188:
	mov.l r14,@-r15
	mova @(loc_8c0131c8,PC),r0
	mov.l r13,@-r15
	mov r4,r14
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	fmov @r0,fr14
	mova @(loc_8c0131cc,PC),r0
	fmov @r0,fr15
	bsr loc_8c01357a
	mov 0x03,r4
	mov.w @(loc_8c0131bc,PC),r3
	mov r0,r13
	extu.w r13,r2
	tst r3,r2
	bt loc_8c0131d0
	mov 0x10,r0
	fldi1 fr2
	fmov @(r0,r14),fr3
	fsub fr2,fr3
	fcmp/gt fr3,fr15
	bf.s loc_8c0131e8
	fmov fr3,@(r0,r14)
	bra loc_8c0131ee
	fmov fr15,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0131bc:
	#data 0x0800
	#align4
loc_8c0131c0:
	#data bank04.loc_8c04257c
loc_8c0131c4:
	#data 0x8c2681e0
loc_8c0131c8:
	#data 0x41200000
loc_8c0131cc:
	#data 0xc1200000

;----------------------------------------------
loc_8c0131d0:
	mov.w @(loc_8c0132ca,PC),r1
	tst r1,r2
	bt loc_8c0131ee
	mov 0x10,r0
	fldi1 fr2
	fmov @(r0,r14),fr3
	fadd fr2,fr3
	fcmp/gt fr14,fr3
	bf.s loc_8c0131e8
	fmov fr3,@(r0,r14)
	bra loc_8c0131ee
	fmov fr14,@(r0,r14)

loc_8c0131e8:
	mov.l @(loc_8c0132d0,PC),r3
	jsr @r3
	mov 0x04,r4

loc_8c0131ee:
	mov.w @(loc_8c0132cc,PC),r3
	extu.w r13,r2
	tst r3,r2
	bt loc_8c013208
	mov 0x14,r0
	fldi1 fr2
	fmov @(r0,r14),fr3
	fsub fr2,fr3
	fcmp/gt fr3,fr15
	bf.s loc_8c013222
	fmov fr3,@(r0,r14)
	bra loc_8c013232
	fmov fr15,@(r0,r14)

loc_8c013208:
	mov.w @(loc_8c0132ce,PC),r2
	extu.w r13,r13
	tst r2,r13
	bt loc_8c013232
	mov 0x14,r0
	fldi1 fr2
	fmov @(r0,r14),fr3
	fadd fr2,fr3
	fcmp/gt fr14,fr3
	bf.s loc_8c013222
	fmov fr3,@(r0,r14)
	bra loc_8c013232
	fmov fr14,@(r0,r14)

loc_8c013222:
	lds.l @r15+,pr
	mov.l @(loc_8c0132d0,PC),r3
	mov 0x04,r4
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c013232:
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c01323e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	sts.l pr,@-r15
	bsr loc_8c01357a
	mov 0x03,r4
	mov.l @(loc_8c0132d4,PC),r14
	mov r0,r4
	mov.l @r14,r13
	mov.b @(0x5,r13),r0
	cmp/eq 0x00,r0
	bt loc_8c013270
	cmp/eq 0x01,r0
	bt loc_8c0132f8
	cmp/eq 0x02,r0
	bt loc_8c013326
	cmp/eq 0x03,r0
	bt loc_8c01334c
	cmp/eq 0x04,r0
	bf loc_8c01326c
	bra loc_8c013398
	nop

loc_8c01326c:
	bra loc_8c0133a2
	nop

loc_8c013270:
	mov.l @(loc_8c0132d8,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c0132d8,PC),r2
	jsr @r2
	mov 0x0C,r4
	mov.l @r14,r3
	mov 0x00,r4
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov r4,r0
	nop
	mov.w r0,@(0xE,r3)
	mov.l @r14,r2
	add 0x70,r2
	mov.b r0,@r2
	mov.l @r14,r3
	mov.l @(loc_8c0132e0,PC),r2
	mov.w r0,@(0x8,r3)
	mov 0x10,r0
	mov.l @(loc_8c0132dc,PC),r3
	fmov @(r0,r12),fr3
	mov 0x14,r0
	fmov fr3,@r3
	fmov @(r0,r12),fr3
	mov.l @(loc_8c0132e4,PC),r0
	mov.l @(loc_8c0132e8,PC),r3
	fmov fr3,@r2
	mov.l @(0x18,r12),r1
	jsr @r3
	mov.l r1,@r0
	mov.l @(loc_8c0132ec,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c0132f4,PC),r3
	mov 0x0A,r5
	mov.l @(loc_8c0132f0,PC),r4
	mov 0x00,r6
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0132ca:
	#data 0x0400
loc_8c0132cc:
	#data 0x2000
loc_8c0132ce:
	#data 0x1000
	#align4
loc_8c0132d0:
	#data bank04.loc_8c04257c
loc_8c0132d4:
	#data work.GameGlobalPointer
loc_8c0132d8:
	#data bank04.loc_8c044e56
loc_8c0132dc:
	#data 0x8c1f8afc
loc_8c0132e0:
	#data 0x8c1f8b00
loc_8c0132e4:
	#data 0x8c1f8b04
loc_8c0132e8:
	#data loc_8c017406
loc_8c0132ec:
	#data loc_8c010d96
loc_8c0132f0:
	#data 0xff000000
loc_8c0132f4:
	#data bank03.loc_8c0355b2

;----------------------------------------------
loc_8c0132f8:
	mov.l @(loc_8c013420,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0133a2
	mov.l @r14,r3
	mov 0x08,r4
	mov.w @(0xE,r3),r0
	add 0x01,r0
	mov.w r0,@(0xE,r3)
	exts.w r0,r0
	cmp/ge r4,r0
	bf loc_8c0133a2
	mov.l @r14,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	mov.l @r14,r3
	mov r4,r0
	nop
	mov.w r0,@(0xE,r3)
	bra loc_8c0133a2
	nop

loc_8c013326:
	mov.w @(0x8,r13),r0
	mov 0x02,r6
	bsr loc_8c013572
	mov r0,r5
	mov.l @(loc_8c013424,PC),r2
	jsr @r2
	mov.w r0,@(0x8,r13)
	tst r0,r0
	bt loc_8c01333e
	mov.l @r14,r2
	bra loc_8c013356
	mov 0x03,r0

loc_8c01333e:
	mov.l @(loc_8c013428,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c013352
	bra loc_8c0133a2
	nop

loc_8c01334c:
	mov.w @(0x8,r13),r0
	cmp/eq 0x02,r0
	bf loc_8c01335a

loc_8c013352:
	mov.l @r14,r2
	mov 0x04,r0

loc_8c013356:
	bra loc_8c0133a2
	mov.b r0,@(0x5,r2)

loc_8c01335a:
	cmp/eq 0x01,r0
	bf loc_8c013370
	mov 0x02,r0
	mov.l @(loc_8c01342c,PC),r3
	mov.b r0,@(0x5,r13)
	mov 0x04,r4
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c013370:
	mov.l @(loc_8c013428,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c013384
	mov.l @r14,r3
	mov 0x02,r0
	mov.b r0,@(0x5,r3)
	bra loc_8c0133a2
	nop

loc_8c013384:
	mov.l @r14,r2
	mov.w @(0x8,r2),r0
	tst r0,r0
	bf loc_8c0133a2
	lds.l @r15+,pr
	mov r12,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c013188
	mov.l @r15+,r14

loc_8c013398:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c012922
	mov.l @r15+,r14

loc_8c0133a2:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0133ac:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c013420,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c01341a
	mov.l @(loc_8c013434,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c013430,PC),r4
	jsr @r3
	mov 0x0A,r5
	mov.l @(loc_8c013438,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt.s loc_8c0133d2
	mov 0x00,r14
	bra loc_8c0133d4
	mov r14,r4

loc_8c0133d2:
	mov 0x01,r4

loc_8c0133d4:
	mov.l @(loc_8c01343c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c013440,PC),r2
	jsr @r2
	mov 0x0B,r4
	mov.l @(loc_8c013440,PC),r3
	jsr @r3
	mov 0x0C,r4
	mov.l @(loc_8c013444,PC),r4
	mov 0x01,r0
	mov.l @r4,r2
	mov.b r0,@(0x1,r2)
	mov.l @r4,r3
	mov r14,r0
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
	mov.l @(loc_8c013448,PC),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c01344c,PC),r2
	mov 0x00,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c01341a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c013420:
	#data bank03.loc_8c03563a
loc_8c013424:
	#data loc_8c011a9a
loc_8c013428:
	#data loc_8c011bbc
loc_8c01342c:
	#data init_default_settings
loc_8c013430:
	#data 0xff000000
loc_8c013434:
	#data bank03.loc_8c0355b2
loc_8c013438:
	#data 0x8c212cbc
loc_8c01343c:
	#data bank17.loc_8c17a228
loc_8c013440:
	#data bank04.loc_8c044e56
loc_8c013444:
	#data work.GameGlobalPointer
loc_8c013448:
	#data loc_8c016dac
loc_8c01344c:
	#data loc_8c016df2

;----------------------------------------------
loc_8c013450:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r6,r12
	mov.l r11,@-r15
	extu.w r4,r11
	mov.l r10,@-r15
	mov 0x01,r10
	mov.w @(loc_8c013522,PC),r3
	and r7,r10
	mov.l r9,@-r15
	mov 0x02,r9
	mov.w @(loc_8c013524,PC),r2
	and r3,r11
	sts.l pr,@-r15
	mov.l @(loc_8c01352c,PC),r13
	cmp/eq r2,r11
	bf.s loc_8c01349a
	and r7,r9
	tst r10,r10
	bt.s loc_8c013486
	add 0xFF,r14
	cmp/pz r14
	bt loc_8c01348c
	bra loc_8c01349a
	mov 0x00,r14

loc_8c013486:
	cmp/pz r14
	bt loc_8c01348c
	mov r12,r14

loc_8c01348c:
	tst r9,r9
	bt loc_8c013494
	bra loc_8c013496
	mov 0x04,r4

loc_8c013494:
	mov 0x01,r4

loc_8c013496:
	jsr @r13
	nop

loc_8c01349a:
	mov.w @(loc_8c013526,PC),r3
	cmp/eq r3,r11
	bf loc_8c0134c2
	tst r10,r10
	bt.s loc_8c0134ae
	add 0x01,r14
	cmp/gt r12,r14
	bf loc_8c0134b4
	bra loc_8c0134c2
	mov r12,r14

loc_8c0134ae:
	cmp/gt r12,r14
	bf loc_8c0134b4
	mov 0x00,r14

loc_8c0134b4:
	tst r9,r9
	bt loc_8c0134bc
	bra loc_8c0134be
	mov 0x04,r4

loc_8c0134bc:
	mov 0x01,r4

loc_8c0134be:
	jsr @r13
	nop

loc_8c0134c2:
	mov r14,r0
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
;writefalse
loc_8c0134d6:
	bra loc_8c013450
	mov 0x00,r7

;writetrue
loc_8c0134da:
	bra loc_8c013450
	mov 0x01,r7

;----------------------------------------------
loc_8c0134de:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r6,r12
	mov.l r11,@-r15
	extu.w r4,r11
	mov.l r10,@-r15
	mov 0x01,r10
	mov.w @(loc_8c013522,PC),r3
	and r7,r10
	mov.l r9,@-r15
	mov 0x02,r9
	mov.w @(loc_8c013528,PC),r2
	and r3,r11
	sts.l pr,@-r15
	mov.l @(loc_8c01352c,PC),r13
	cmp/eq r2,r11
	bf.s loc_8c013536
	and r7,r9
	tst r10,r10
	bt.s loc_8c013514
	add 0xFF,r14
	cmp/pz r14
	bt loc_8c01351a
	bra loc_8c013536
	mov 0x00,r14

loc_8c013514:
	cmp/pz r14
	bt loc_8c01351a
	mov r12,r14

loc_8c01351a:
	tst r9,r9
	bt loc_8c013530
	bra loc_8c013532
	mov 0x04,r4

;##############################################
loc_8c013522:
	#data 0x3c00
loc_8c013524:
	#data 0x0800
loc_8c013526:
	#data 0x0400
loc_8c013528:
	#data 0x2000
	#align4
loc_8c01352c:
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c013530:
	mov 0x01,r4

loc_8c013532:
	jsr @r13
	nop

loc_8c013536:
	mov.w @(loc_8c0135f6,PC),r3
	cmp/eq r3,r11
	bf loc_8c01355e
	tst r10,r10
	bt.s loc_8c01354a
	add 0x01,r14
	cmp/gt r12,r14
	bf loc_8c013550
	bra loc_8c01355e
	mov r12,r14

loc_8c01354a:
	cmp/gt r12,r14
	bf loc_8c013550
	mov 0x00,r14

loc_8c013550:
	tst r9,r9
	bt loc_8c013558
	bra loc_8c01355a
	mov 0x04,r4

loc_8c013558:
	mov 0x01,r4

loc_8c01355a:
	jsr @r13
	nop

loc_8c01355e:
	mov r14,r0
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
loc_8c013572:
	bra loc_8c0134de
	mov 0x00,r7

loc_8c013576:
	bra loc_8c0134de
	mov 0x01,r7

;----------------------------------------------
loc_8c01357a:
	mov 0x01,r3
	mov.l @(loc_8c0135fc,PC),r6
	extu.b r4,r7
	tst r7,r3
	bt.s loc_8c013596
	mov 0x00,r5
	mov r6,r4
	mov.w @(0x10,r4),r0
	mov.w @(loc_8c0135f8,PC),r3
	and r3,r0
	mov r0,r2
	mov.w @(0x4,r4),r0
	or r2,r0
	or r0,r5

loc_8c013596:
	mov 0x02,r3
	tst r3,r7
	bt loc_8c0135ae
	mov r6,r4
	add 0x14,r4
	mov.w @(0x10,r4),r0
	mov.w @(loc_8c0135f8,PC),r2
	and r2,r0
	mov r0,r1
	mov.w @(0x4,r4),r0
	or r1,r0
	or r0,r5

loc_8c0135ae:
	rts
	mov r5,r0

;----------------------------------------------
loc_8c0135b2:
	mov.l @(loc_8c0135fc,PC),r1
	mov 0x01,r3
	mov.w @(loc_8c0135f8,PC),r6
	extu.b r4,r7
	tst r7,r3
	bt.s loc_8c0135ce
	mov 0x00,r5
	mov r1,r4
	mov.w @(0x10,r4),r0
	and r6,r0
	mov r0,r3
	mov.w @(0x4,r4),r0
	or r3,r0
	or r0,r5

loc_8c0135ce:
	mov 0x02,r3
	tst r3,r7
	bt loc_8c0135e4
	mov r1,r4
	add 0x14,r4
	mov.w @(0x10,r4),r0
	and r6,r0
	mov r0,r2
	mov.w @(0x4,r4),r0
	or r2,r0
	or r0,r5

loc_8c0135e4:
	mov.l @(loc_8c013600,PC),r2
	mov.l @(loc_8c013604,PC),r0

;----------------------------------------------
loc_8c0135e8:
	mov.w @r2,r3
	mov.w @r0,r1
	and r3,r6
	or r1,r6
	or r6,r5
	rts
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0135f6:
	#data 0x1000
loc_8c0135f8:
	#data 0x3c00
	#align4
loc_8c0135fc:
	#data 0x8c2681dc
loc_8c013600:
	#data 0x8c212f0a
loc_8c013604:
	#data 0x8c212f08

;----------------------------------------------
loc_8c013608:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c013824,PC),r14
	mov.l @(loc_8c013828,PC),r3
	mov.l @(loc_8c013820,PC),r13
	mov.l @(loc_8c013818,PC),r9
	mov.l @(loc_8c01381c,PC),r10
	jsr @r3
	mov 0x03,r4
	mov r0,r11
	mov.l @r14,r0
	mov 0x05,r8
	mov.b @(0x3,r0),r0
	cmp/eq 0x00,r0
	bt.s loc_8c013664
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c013686
	cmp/eq 0x02,r0
	bf loc_8c013640
	bra loc_8c013752
	nop

loc_8c013640:
	cmp/eq 0x03,r0
	bt loc_8c0136d2
	cmp/eq 0x04,r0
	bt loc_8c013728
	cmp/eq 0x05,r0
	bf loc_8c013650
	bra loc_8c013752
	nop

loc_8c013650:
	cmp/eq 0x06,r0
	bf loc_8c013658
	bra loc_8c01376a
	nop

loc_8c013658:
	cmp/eq 0x07,r0
	bf loc_8c013660
	bra loc_8c01378a
	nop

loc_8c013660:
	bra loc_8c013ad0
	nop

loc_8c013664:
	mov.l @(loc_8c01382c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c013830,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c013834,PC),r3
	jsr @r3
	mov 0x12,r4
	mov.l @r14,r2
	mov.b @(0x3,r2),r0
	add 0x01,r0
	mov.b r0,@(0x3,r2)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x4,r3)

loc_8c013686:
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	mov.l @(loc_8c013838,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c01383c,PC),r2
	jsr @r2
	mov 0x04,r4
	mov.l @(loc_8c013840,PC),r3
	jsr @r3
	mov 0x09,r4
	mov.l @(loc_8c013844,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c013848,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c01384c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c013850,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c013854,PC),r2
	jsr @r2
	nop
	bra loc_8c013ac8
	nop

loc_8c0136d2:
	mov.l @r14,r2
	mov 0x04,r1
	mov.l @(loc_8c013858,PC),r3
	mov 0x04,r6
	add r2,r1
	mov.l r1,@-r15
	mov.l @r14,r5
	mov.b @(0x4,r5),r0
	mov r0,r5
	jsr @r3
	mov r11,r4
	mov.l @(loc_8c01385c,PC),r2
	mov.l @r15+,r3
	jsr @r2
	mov.b r0,@r3
	tst r0,r0
	bt loc_8c01370e
	mov 0x0A,r5
	mov 0x01,r6
	jsr @r9
	mov r10,r4
	mov.l @r14,r0
	mov.b @(0x4,r0),r0
	cmp/eq 0x04,r0
	bt loc_8c013760
	mov.l @r14,r3
	mov r8,r0
	nop
	bra loc_8c013ad0
	mov.b r0,@(0x3,r3)

loc_8c01370e:
	mov.l @(loc_8c013860,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c01371c
	bra loc_8c013ad0
	nop

loc_8c01371c:
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)
	bra loc_8c013a3e
	nop

loc_8c013728:
	mov.l @(loc_8c013864,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c013736
	bra loc_8c013ad0
	nop

loc_8c013736:
	mov.l @r14,r2
	mov 0x07,r0
	mov.b r0,@(0x3,r2)
	mov.l @r14,r3
	mov r3,r0
	nop
	mov 0x07,r2
	add r0,r2
	mov.b r12,@r2
	mov r12,r0
	nop
	mov.b r0,@(0x6,r3)
	bra loc_8c013ad0
	nop

loc_8c013752:
	mov.l @(loc_8c013864,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c013760
	bra loc_8c013ad0
	nop

loc_8c013760:
	mov.l @r14,r2
	mov.b @(0x3,r2),r0
	add 0x01,r0
	bra loc_8c013ad0
	mov.b r0,@(0x3,r2)

loc_8c01376a:
	lds.l @r15+,pr
	extu.w r11,r4
	mov.l @r14,r2
	mov.l @(loc_8c013868,PC),r1
	mov 0x00,r5
	mov.l @r15+,r8
	mov.b @(0x4,r2),r0
	mov.l @r15+,r9
	shll2 r0
	mov.l @r15+,r10
	mov.l @(r0,r1),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c01378a:
	mov.l @r14,r0
	mov.b @(0x6,r0),r0
	cmp/eq 0x00,r0
	bt.s loc_8c0137c8
	mov 0x01,r11
	cmp/eq 0x01,r0
	bf loc_8c01379c
	bra loc_8c013914
	nop

loc_8c01379c:
	cmp/eq 0x02,r0
	bf loc_8c0137a4
	bra loc_8c01392e
	nop

loc_8c0137a4:
	cmp/eq 0x03,r0
	bf loc_8c0137ac
	bra loc_8c0139a6
	nop

loc_8c0137ac:
	cmp/eq 0x04,r0
	bf loc_8c0137b4
	bra loc_8c013a18
	nop

loc_8c0137b4:
	cmp/eq 0x05,r0
	bf loc_8c0137bc
	bra loc_8c013a4a
	nop

loc_8c0137bc:
	cmp/eq 0x06,r0
	bf loc_8c0137c4
	bra loc_8c013a6a
	nop

loc_8c0137c4:
	bra loc_8c013ad0
	nop

loc_8c0137c8:
	mov 0x2B,r0
	mov.b @(r0,r13),r0
	cmp/eq 0x01,r0
	bt loc_8c01386c
	mov.l @r14,r2
	mov 0x01,r3
	add r2,r3
	mov.l r3,@-r15
	mov 0x02,r3
	mov.l @r14,r0
	mov 0x03,r2
	add r0,r3
	mov.l r3,@-r15
	mov.l @r14,r3
	add r3,r2
	mov 0x04,r3
	mov.l r2,@-r15
	mov.l @r14,r1
	add r1,r3
	mov.l r3,@-r15
	mov 0x07,r3
	mov.l @r14,r0
	mov.l @r14,r2
	add r0,r3
	mov.l @r14,r1
	add 0x06,r2
	mov.b r12,@r3
	add 0x05,r1
	mov.b r12,@r2
	mov.b r12,@r1
	mov.l @r15+,r0
	mov.b r12,@r0
	mov.l @r15+,r0
	mov.b r12,@r0
	mov.l @r15+,r0
	mov.b r12,@r0
	mov.l @r15+,r1
	bra loc_8c013978
	mov.b r12,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c013818:
	#data bank03.loc_8c0355b2
loc_8c01381c:
	#data 0xff000000
loc_8c013820:
	#data 0x8c289750
loc_8c013824:
	#data work.GameGlobalPointer
loc_8c013828:
	#data loc_8c01357a
loc_8c01382c:
	#data bank03.loc_8c0357d8
loc_8c013830:
	#data bank03.loc_8c03580c
loc_8c013834:
	#data bank03.loc_8c032be0
loc_8c013838:
	#data bank04.loc_8c044d8c
loc_8c01383c:
	#data loc_8c016df2
loc_8c013840:
	#data loc_8c0182e0
loc_8c013844:
	#data bank02.loc_8c021074
loc_8c013848:
	#data bank02.loc_8c02147c
loc_8c01384c:
	#data bank02.loc_8c021514
loc_8c013850:
	#data bank02.loc_8c0215f0
loc_8c013854:
	#data bank02.loc_8c02164c
loc_8c013858:
	#data loc_8c013572
loc_8c01385c:
	#data loc_8c011a9a
loc_8c013860:
	#data loc_8c011bbc
loc_8c013864:
	#data bank03.loc_8c03563a
loc_8c013868:
	#data bank14.loc_8c1441d4

;----------------------------------------------
loc_8c01386c:
	mov.l @r14,r3
	mov.b @(0x6,r3),r0
	add 0x01,r0
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)
	mov.l @(loc_8c013ae4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c013ae8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c013aec,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c013af0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c013af4,PC),r3
	jsr @r3
	mov 0x10,r4
	mov.l @(loc_8c013af8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c013afc,PC),r3
	jsr @r3
	mov 0x09,r4
	mov.l @r14,r2
	mov r13,r4
	mov 0x78,r0
	add 0x22,r4
	mov.w r0,@(0x8,r2)
	mov r12,r0
	nop
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov r13,r4
	add 0x24,r4
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4
	mov 0x48,r0
	mov.l @(r0,r13),r3
	mov r13,r4
	tst r3,r3
	bt.s loc_8c0138da
	add 0x59,r4
	mov 0x4C,r0
	mov.l @(r0,r13),r3
	tst r3,r3
	bt loc_8c0138da
	mov 0x03,r3
	bra loc_8c0138f2
	mov.b r3,@r4

loc_8c0138da:
	mov 0x48,r0
	mov.l @(r0,r13),r1
	tst r1,r1
	bt loc_8c0138e6
	bra loc_8c0138f2
	mov.b r11,@r4

loc_8c0138e6:
	mov 0x4C,r0
	mov.l @(r0,r13),r3
	tst r3,r3
	bt loc_8c013908
	mov 0x02,r3
	mov.b r3,@r4

loc_8c0138f2:
	mov.l @(loc_8c013b00,PC),r2
	jsr @r2
	nop
	mov 0x5A,r0
	mov.l @(loc_8c013b04,PC),r3
	mov.b r11,@(r0,r13)
	mov.b @(r0,r13),r4
	jsr @r3
	extu.b r4,r4
	bra loc_8c013ac8
	nop

loc_8c013908:
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.w r0,@(0x8,r3)
	bra loc_8c013ac8
	nop

loc_8c013914:
	mov.l @(loc_8c013b08,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c013922
	bra loc_8c013ad0
	nop

loc_8c013922:
	mov.l @r14,r3
	mov.b @(0x6,r3),r0
	add 0x01,r0
	mov.b r0,@(0x6,r3)
	bra loc_8c013ad0
	nop

loc_8c01392e:
	mov.l @(loc_8c013b0c,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c013940
	mov.l @r14,r2
	mov r11,r0
	nop
	mov.w r0,@(0x8,r2)

loc_8c013940:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bt loc_8c013954
	bra loc_8c013ad0
	nop

loc_8c013954:
	mov.l @r14,r2
	mov r13,r3
	add 0x59,r3
	mov.b @(0x6,r2),r0
	add 0x01,r0
	mov.b r0,@(0x6,r2)
	mov 0x04,r2
	mov.b r2,@r3
	mov.l @(loc_8c013b00,PC),r3
	jsr @r3
	nop
	mov 0x5A,r0
	mov.l @(loc_8c013b04,PC),r3
	mov 0x02,r1
	mov.b r1,@(r0,r13)
	mov.b @(r0,r13),r4
	jsr @r3
	extu.b r4,r4

loc_8c013978:
	mov 0x48,r0
	mov.l @(r0,r13),r2
	tst r2,r2
	bt loc_8c013986
	mov.l @(loc_8c013b10,PC),r3
	jsr @r3
	nop

loc_8c013986:
	mov 0x4C,r0
	mov.l @(r0,r13),r2
	tst r2,r2
	bf loc_8c013992
	bra loc_8c013ad0
	nop

loc_8c013992:
	lds.l @r15+,pr
	mov.l @(loc_8c013b14,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0139a6:
	mov.l @(loc_8c013b18,PC),r2
	mov 0x00,r5
	jsr @r2
	mov.l @(0x34,r13),r4
	cmp/eq 0x02,r0
	bf.s loc_8c0139b8
	mov r0,r4
	bra loc_8c013ad0
	nop

loc_8c0139b8:
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0139d4
	mov.l @r14,r3
	mov 0x04,r0
	mov.b r0,@(0x6,r3)
	mov 0x3C,r0
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov r13,r3
	add 0x59,r3
	bra loc_8c013a04
	mov.b r8,@r3

loc_8c0139d4:
	tst r4,r4
	bf loc_8c0139ec
	mov.l @r14,r2
	mov r8,r0
	nop
	mov r13,r3
	mov.b r0,@(0x6,r2)
	mov 0x06,r2
	add 0x59,r3
	mov.b r2,@r3
	bra loc_8c013a04
	nop

loc_8c0139ec:
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c013ad0
	mov.l @r14,r2
	mov r8,r0
	nop
	mov r13,r3
	mov.b r0,@(0x6,r2)
	mov 0x07,r2
	add 0x59,r3
	mov.b r2,@r3

loc_8c013a04:
	lds.l @r15+,pr
	mov.l @(loc_8c013b00,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c013a18:
	mov.l @(loc_8c013b1c,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bt loc_8c013a2a
	mov.l @r14,r1
	mov r11,r0
	nop
	mov.w r0,@(0x8,r1)

loc_8c013a2a:
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r3)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c013ad0
	bra loc_8c013a58
	nop

loc_8c013a3e:
	mov 0x0A,r5
	mov 0x01,r6
	jsr @r9
	mov r10,r4
	bra loc_8c013ad0
	nop

loc_8c013a4a:
	mov.l @(loc_8c013b1c,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c013ad0
	mov 0x2B,r0
	mov.b r12,@(r0,r13)

loc_8c013a58:
	mov.l @r14,r3
	mov 0x06,r0
	mov 0x0A,r5
	mov 0x01,r6
	mov.b r0,@(0x6,r3)
	jsr @r9
	mov r10,r4
	bra loc_8c013ad0
	nop

loc_8c013a6a:
	mov.l @(loc_8c013b08,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c013ad0
	mov.l @(loc_8c013af8,PC),r2
	jsr @r2
	nop
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x1,r3)
	mov 0x02,r2
	mov.l @r14,r3
	add r3,r2
	mov 0x03,r3
	mov.l r2,@-r15
	mov.l @r14,r0
	add r0,r3
	mov.l r3,@-r15
	mov 0x04,r3
	mov.l @r14,r2
	add r2,r3
	mov.l r3,@-r15
	mov.l @r14,r1
	mov r1,r2
	add 0x06,r2
	mov r1,r0
	nop
	mov 0x07,r3
	add r0,r3
	mov.b r12,@r3
	mov.b r12,@r2
	mov r12,r0
	nop
	mov.b r0,@(0x5,r1)
	mov.l @r15+,r0
	mov.l @(loc_8c013b20,PC),r3
	mov.b r12,@r0
	mov.l @r15+,r0
	mov.b r12,@r0
	mov.l @r15+,r1
	jsr @r3
	mov.b r12,@r1
	mov.l @(loc_8c013afc,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c013ac8:
	mov 0x0A,r5
	mov 0x00,r6
	jsr @r9
	mov r10,r4

loc_8c013ad0:
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

loc_8c013ae4:
	#data bank03.loc_8c030f24
loc_8c013ae8:
	#data bank03.loc_8c030e30
loc_8c013aec:
	#data bank03.loc_8c0357d8
loc_8c013af0:
	#data bank03.loc_8c03580c
loc_8c013af4:
	#data bank03.loc_8c032be0
loc_8c013af8:
	#data bank04.loc_8c044d8c
loc_8c013afc:
	#data loc_8c016df2
loc_8c013b00:
	#data loc_8c0197fc
loc_8c013b04:
	#data loc_8c0195c8
loc_8c013b08:
	#data bank03.loc_8c03563a
loc_8c013b0c:
	#data loc_8c011bbc
loc_8c013b10:
	#data loc_8c0117a2
loc_8c013b14:
	#data loc_8c011828
loc_8c013b18:
	#data bank11.loc_8c118686
loc_8c013b1c:
	#data loc_8c011d0c
loc_8c013b20:
	#data loc_8c016dac

;----------------------------------------------
loc_8c013b24:
	mov.w @(loc_8c013c4e,PC),r0
	mov 0x00,r7
	sts.l pr,@-r15
	mov.l @r4,r5
	mov.l @(loc_8c013c5c,PC),r3
	mov.l @(r0,r5),r5
	mov.w @(0x12,r4),r0
	fldi0 fr5
	cmp/eq 0x03,r0
	fldi1 fr4
	bf.s loc_8c013b88
	mov.l @r3,r6
	mov.w @(loc_8c013c50,PC),r0
	mov.l @r6,r2
	mov.l @r4,r1
	mov.l @(r0,r2),r0
	mov.w @(loc_8c013c52,PC),r2
	add r1,r2
	mov.l r0,@r2
	mov 0x34,r0
	mov.l @r4,r1
	fmov fr5,@(r0,r1)
	mova @(loc_8c013c60,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @r4,r2
	fmov fr3,@(r0,r2)
	mova @(loc_8c013c64,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	mov.l @r4,r2
	fmov fr3,@(r0,r2)
	mov 0x50,r0
	mov.l @r4,r2
	fmov fr4,@(r0,r2)
	mova @(loc_8c013c68,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	mov.l @r4,r2
	fmov fr3,@(r0,r2)
	mov.w @(loc_8c013c54,PC),r0
	mov.b r7,@(r0,r5)
	mov.w @(loc_8c013c56,PC),r0
	mov.l @(0xC,r4),r5
	fmov fr4,@(r0,r5)
	mov 0x7C,r0
	fmov fr4,@(r0,r5)
	mov 0x78,r0
	bra loc_8c013bf8
	fmov fr4,@(r0,r5)

loc_8c013b88:
	mov.w @(loc_8c013c58,PC),r0
	mov.l @r6,r2
	mov.l @r4,r1
	mov.l @(r0,r2),r0
	mov.w @(loc_8c013c52,PC),r2
	add r1,r2
	mov.l r0,@r2
	mov.w @(0x12,r4),r0
	mov.l @(loc_8c013c6c,PC),r2
	shll2 r0
	mov.l @r4,r1
	fmov @(r0,r2),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r1)
	mov 0x38,r0
	mov.l @r4,r1
	fmov fr4,@(r0,r1)
	mova @(loc_8c013c70,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	mov.l @r4,r2
	mov 0x02,r1
	fmov fr3,@(r0,r2)
	mov 0x54,r0
	mov.l @r4,r6
	fmov fr4,@(r0,r6)
	mov 0x50,r0
	fmov fr4,@(r0,r6)
	mov 0x2E,r0
	mov.w @(r0,r4),r2
	cmp/ge r1,r2
	bt loc_8c013be2
	mov.w @(loc_8c013c54,PC),r0
	mov 0x01,r2
	mov.l @(loc_8c013c74,PC),r3
	mov r5,r1
	mov.b r2,@(r0,r5)
	add 0x34,r1
	mov.l @r4,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x38,r0
	bra loc_8c013be6
	fmov fr5,@(r0,r5)

loc_8c013be2:
	mov.w @(loc_8c013c54,PC),r0
	mov.b r7,@(r0,r5)

loc_8c013be6:
	mova @(loc_8c013c78,PC),r0
	mov.l @(0xC,r4),r5
	fmov @r0,fr3
	mov.w @(loc_8c013c56,PC),r0
	fmov fr3,@(r0,r5)
	mov 0x7C,r0
	fmov fr3,@(r0,r5)
	mov 0x78,r0
	fmov fr3,@(r0,r5)

loc_8c013bf8:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c013bfe:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c013c7c,PC),r3
	mov r4,r14
	mov r6,r1
	mov.l r5,@r15
	mov.b @r3,r4
	mov 0x04,r7
	extu.b r4,r4
	mov r7,r0
	nop
	mov.l @(loc_8c013c80,PC),r2
	jsr @r2
	nop
	mov r0,r5
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c013c8a
	mov 0x32,r1
	cmp/ge r1,r4
	bt loc_8c013c4a
	mov r4,r0
	nop
	cmp/pz r0
	bf loc_8c013c3c
	bra loc_8c013c46
	and 0x01,r0

loc_8c013c3c:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c013c46:
	tst r0,r0
	bt loc_8c013c84

loc_8c013c4a:
	bra loc_8c013cc4
	mov r5,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c013c4e:
	#data 0x00d4
loc_8c013c50:
	#data 0x02f0
loc_8c013c52:
	#data 0x0084
loc_8c013c54:
	#data 0x012c
loc_8c013c56:
	#data 0x0080
loc_8c013c58:
	#data 0x0298
	#align4
loc_8c013c5c:
	#data 0x8c26a944
loc_8c013c60:
	#data 0xc0300000
loc_8c013c64:
	#data 0xc150cccd
loc_8c013c68:
	#data 0x3e99999a
loc_8c013c6c:
	#data bank14.loc_8c1441e4
loc_8c013c70:
	#data 0xc14e3d71
loc_8c013c74:
	#data bank12.loc_8c1294c8
loc_8c013c78:
	#data 0x3f4ccccd
loc_8c013c7c:
	#data 0x8c212c3c
loc_8c013c80:
	#data bank12.loc_8c129128

;----------------------------------------------
loc_8c013c84:
	mov r5,r4
	bra loc_8c013cc4
	add 0x02,r4

loc_8c013c8a:
	mov 0x32,r1
	cmp/ge r1,r4
	bf loc_8c013c96
	mov r5,r4
	bra loc_8c013cc4
	add 0x04,r4

loc_8c013c96:
	mov.l @(loc_8c013d80,PC),r2
	mov r4,r1
	mov.l @(loc_8c013d7c,PC),r6
	jsr @r2
	mov 0x0A,r0
	shll2 r0
	mov.l @(r0,r6),r0
	cmp/eq 0x02,r0
	bf loc_8c013cae
	mov r5,r4
	bra loc_8c013cc4
	add 0x06,r4

loc_8c013cae:
	mov.l @(loc_8c013d80,PC),r2
	mov r4,r1
	jsr @r2
	mov 0x0A,r0
	shll2 r0
	mov.l @(r0,r6),r1
	tst r1,r1
	bf loc_8c013cc2
	bra loc_8c013cc4
	mov r7,r4

loc_8c013cc2:
	mov 0x05,r4

loc_8c013cc4:
	mov.l @(loc_8c013d84,PC),r13
	mov 0x00,r11
	mov.w @(loc_8c013d70,PC),r12
	mov r4,r0
	nop
	cmp/eq 0x00,r0
	bt.s loc_8c013cf4
	mov r11,r5
	cmp/eq 0x02,r0
	bt loc_8c013cf4
	cmp/eq 0x01,r0
	bt loc_8c013d08
	cmp/eq 0x03,r0
	bt loc_8c013d08
	cmp/eq 0x04,r0
	bt loc_8c013d1a
	cmp/eq 0x05,r0
	bt loc_8c013d1a
	cmp/eq 0x06,r0
	bt loc_8c013d2c
	cmp/eq 0x07,r0
	bt loc_8c013d2c
	bra loc_8c013d3c
	nop

loc_8c013cf4:
	jsr @r13
	nop
	mov r0,r1
	mov.l @(loc_8c013d80,PC),r3
	mov.w @(loc_8c013d72,PC),r0
	jsr @r3
	nop
	mov.w @(loc_8c013d74,PC),r5
	bra loc_8c013d3a
	nop

loc_8c013d08:
	jsr @r13
	nop
	mov.l @(loc_8c013d80,PC),r3
	mov r0,r1
	jsr @r3
	mov r12,r0
	mov.w @(loc_8c013d76,PC),r5
	bra loc_8c013d3a
	nop

loc_8c013d1a:
	jsr @r13
	nop
	mov.l @(loc_8c013d80,PC),r3
	mov r0,r1
	jsr @r3
	mov r12,r0
	mov.w @(loc_8c013d78,PC),r5
	bra loc_8c013d3a
	nop

loc_8c013d2c:
	jsr @r13
	nop
	mov.l @(loc_8c013d80,PC),r3
	mov r0,r1
	jsr @r3
	mov r12,r0
	mov.w @(loc_8c013d7a,PC),r5

loc_8c013d3a:
	add r0,r5

loc_8c013d3c:
	mov.l @r15,r4
	mov r14,r2
	add 0x1A,r2
	mov r4,r3
	shll2 r3
	shll r4
	add r3,r4
	mov r14,r3
	add 0x1A,r3
	add r4,r2
	add r4,r3
	mov.w r5,@r2
	mov r11,r0
	nop
	mov.w r0,@(0x2,r3)
	mov r14,r3
	add 0x1A,r3
	add r3,r4
	mov.w r0,@(0x4,r4)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c013d70:
	#data 0x03e9
loc_8c013d72:
	#data 0x01f5
loc_8c013d74:
	#data 0x01f4
loc_8c013d76:
	#data 0x03e8
loc_8c013d78:
	#data 0x07d0
loc_8c013d7a:
	#data 0x0bb8
	#align4
loc_8c013d7c:
	#data 0x8c1441f0
loc_8c013d80:
	#data bank12.loc_8c1292d4
loc_8c013d84:
	#data bank11.loc_8c11e730

;----------------------------------------------
loc_8c013d88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x01,r14
	mov.l r5,@(0x4,r15)
	mov r4,r8
	mov r14,r0
	nop
	mov.l @(loc_8c013ec8,PC),r3
	mov 0x00,r12
	mov.w r0,@(0x10,r8)
	mov.l r12,@r15
	jsr @r3
	mov 0x3B,r13
	mov.l @(0x118,PC),r2
	mov r0,r1
	jsr @r2
	mov r13,r0
	mov.l @(0x114,PC),r9
	mov 0x18,r6
	mov r0,r4
	bra loc_8c013e0a
	mov r12,r7

loc_8c013dc2:
	cmp/ge r6,r4
	bf loc_8c013dd0
	mov 0x1A,r3
	cmp/gt r3,r4
	bt loc_8c013dd0
	bra loc_8c013e08
	add 0x01,r4

loc_8c013dd0:
	mov 0x20,r2
	cmp/ge r2,r4
	bf.s loc_8c013de2
	mov.l @r9,r5
	mov r5,r10
	mov r5,r11
	add 0x34,r10
	bra loc_8c013dea
	add 0x3C,r11

loc_8c013de2:
	mov r5,r11
	mov r5,r10
	add 0x38,r11
	add 0x30,r10

loc_8c013dea:
	mov.l @r10,r2
	mov r14,r3
	shad r4,r3
	tst r2,r3
	bt loc_8c013e00
	mov r14,r0
	nop
	mov.l @r11,r3
	shad r4,r0
	tst r3,r0
	bt loc_8c013e0e

loc_8c013e00:
	add 0x01,r4
	cmp/ge r13,r4
	bf loc_8c013e08
	mov r12,r4

loc_8c013e08:
	add 0x01,r7

loc_8c013e0a:
	cmp/ge r13,r7
	bf loc_8c013dc2

loc_8c013e0e:
	mov.l @(0x4,r15),r5
	shll r5
	mov r7,r0
	nop
	cmp/eq 0x3B,r0
	bt loc_8c013e88
	mov r8,r2
	add 0x14,r2
	add r2,r5
	mov.w r4,@r5
	mov 0x3A,r13
	mov.l @r9,r7
	mov.l @r9,r5
	add 0x38,r7
	add 0x30,r5
	bra loc_8c013e64
	mov r12,r4

loc_8c013e30:
	mov r4,r0
	nop
	cmp/eq 0x20,r0
	bf loc_8c013e3c
	add 0x04,r7
	add 0x04,r5

loc_8c013e3c:
	cmp/ge r6,r4
	bf loc_8c013e46
	mov 0x1A,r2
	cmp/gt r2,r4
	bf loc_8c013e62

loc_8c013e46:
	mov.l @r5,r2
	mov r14,r3
	shad r4,r3
	tst r2,r3
	bt loc_8c013e62
	mov r14,r0
	nop
	mov.l @r7,r3
	shad r4,r0
	tst r3,r0
	bt loc_8c013e62
	mov.l @r15,r1
	add 0x01,r1
	mov.l r1,@r15
 
loc_8c013e62:
	add 0x01,r4

loc_8c013e64:
	cmp/gt r13,r4
	bf loc_8c013e30
	mov.l @(0x4,r15),r2
	mov r8,r1
	add 0x1A,r1
	mov r2,r3
	shll2 r3
	shll r2
	add r3,r2
	mov.l @r15,r3
	add r1,r2
	mov 0x64,r1
	add 0x01,r3
	muls.w r1,r3
	sts macl,r3
	mov.w r3,@r2
	bra loc_8c013e92
	nop

loc_8c013e88:
	mov r8,r1
	add 0x14,r1
	mov 0xFF,r3
	add r1,r5
	mov.w r3,@r5

loc_8c013e92:
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

;----------------------------------------------
loc_8c013ea6:
	mov.l @(0x2C,PC),r3
	mov 0x07,r1
	mov r5,r6
	mov 0x00,r0
	shll r6
	mov.w r0,@(0x10,r4)
	mov.b @r3,r7
	extu.b r7,r2
	cmp/ge r1,r2
	bf loc_8c013ed8
	mov r4,r0
	nop
	add 0x14,r0
	mov 0xFF,r2
	add r0,r6
	bra loc_8c013f06
	mov.w r2,@r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c013ec8:
	#data bank11.loc_8c11e730 bank12.loc_8c1292d4 work.GameGlobalPointer 0x8c28977a

;----------------------------------------------
loc_8c013ed8:
	mov r4,r2
	extu.b r7,r7
	add 0x14,r2
	add 0x01,r7
	add r2,r6
	mov.w r7,@r6
	mov r5,r0
	nop
	mov r4,r2
	shll2 r0
	shll r5
	mov.w @(loc_8c013fae,PC),r3
	add 0x1A,r2
	mov.w @(loc_8c013fb0,PC),r1
	add r0,r5
	add r2,r5
	mov.l @(loc_8c013fb4,PC),r2
	mov.b @r2,r0
	extu.b r0,r0
	muls.w r3,r0
	sts macl,r0
	add r1,r0
	mov.w r0,@r5

loc_8c013f06:
	rts
	nop

;----------------------------------------------
loc_8c013f0a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c013fb8,PC),r11
	mov 0x00,r8
	mov r4,r14
	mov r8,r0
	nop
	mov 0x32,r2
	mov.w r0,@(0x1A,r14)
	mov.w r0,@(0x1E,r14)
	mov.w r0,@(0x1C,r14)
	mov.b @r11,r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt.s loc_8c013f4a
	mov 0x01,r12
	mov.b @r11,r1
	mov.l @(loc_8c013fbc,PC),r3
	extu.b r1,r1
	jsr @r3
	mov 0x05,r0
	tst r0,r0
	bf loc_8c013f7a
	bra loc_8c013f64
	nop

;----------------------------------------------
loc_8c013f4a:
	mov.l @(loc_8c013fc0,PC),r1
	jsr @r1
	nop
	mov r0,r4
	and r12,r4
	tst r4,r4
	bt loc_8c013f6e
	mov 0x00,r5
	bsr loc_8c013d88
	mov r14,r4
	mov.w @(0x14,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c013f8e

loc_8c013f64:
	mov 0x00,r5
	bsr loc_8c013ea6
	mov r14,r4
	bra loc_8c013f80
	nop

loc_8c013f6e:
	mov 0x00,r5
	bsr loc_8c013ea6
	mov r14,r4
	mov.w @(0x14,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c013f8e

loc_8c013f7a:
	mov 0x00,r5
	bsr loc_8c013d88
	mov r14,r4

loc_8c013f80:
	mov.w @(0x14,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c013f8e
	mov 0x2E,r0
	mov.w @(r0,r14),r2
	add 0x01,r2
	mov.w r2,@(r0,r14)

loc_8c013f8e:
	mov.b @r11,r3
	mov 0x32,r2
	mov.l @(loc_8c013fc4,PC),r4
	extu.b r3,r3
	cmp/ge r2,r3
	bf.s loc_8c013fa2
	add 0x01,r8
	mov.l r4,@r15
	bra loc_8c013fdc
	mov 0x10,r9

loc_8c013fa2:
	mov.b @r11,r0
	extu.b r0,r0
	cmp/pz r0
	bf loc_8c013fc8
	bra loc_8c013fd2
	and 0x01,r0

;##############################################
loc_8c013fae:
	#data 0x01f4
loc_8c013fb0:
	#data 0x03e8
	#align4
loc_8c013fb4:
	#data 0x8c28977a
loc_8c013fb8:
	#data 0x8c212c3c
loc_8c013fbc:
	#data bank12.loc_8c1292d4
loc_8c013fc0:
	#data bank11.loc_8c11e730
loc_8c013fc4:
	#data bank14.loc_8c144218

;----------------------------------------------
loc_8c013fc8:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c013fd2:
	tst r0,r0
	bf loc_8c013fd8
	add 0x08,r4

loc_8c013fd8:
	mov 0x08,r9
	mov.l r4,@r15

loc_8c013fdc:
	mov.l @(loc_8c0141d0,PC),r3
	jsr @r3
	nop
	mov r0,r1
	mov r9,r0
	nop
	mov.l @(loc_8c0141d4,PC),r2
	jsr @r2
	nop
	mov r9,r3
	add 0xFF,r3
	mov.l @(loc_8c0141d8,PC),r2
	mov r0,r6
	cmp/pl r9
	mov 0x20,r10
	mov 0x00,r4
	mov.l r3,@(0x4,r15)
	bf.s loc_8c01402e
	mov.l @r2,r7

loc_8c014002:
	mov.l @r15,r0
	mov.b @(r0,r6),r13
	extu.b r13,r13
	cmp/ge r10,r13
	bf loc_8c014012
	mov r7,r5
	bra loc_8c014016
	add 0x34,r5

loc_8c014012:
	mov r7,r5
	add 0x30,r5

loc_8c014016:
	mov.l @r5,r2
	mov r12,r3
	shad r13,r3
	tst r2,r3
	bt loc_8c01402e
	mov r6,r1
	add 0x01,r4
	mov.l @(0x4,r15),r6
	cmp/ge r9,r4
	add 0x01,r1
	bf.s loc_8c014002
	and r1,r6

loc_8c01402e:
	mov r8,r2
	shll r2
	cmp/eq r9,r4
	bf.s loc_8c014046
	mov.l r2,@r15
	mov r14,r2
	mov.l @r15,r3
	add 0x14,r2
	mov 0xFF,r1
	add r3,r2
	bra loc_8c014056
	mov.w r1,@r2

loc_8c014046:
	mov r14,r2
	mov.l @r15,r3
	add 0x14,r2
	mov r8,r5
	add r3,r2
	mov.w r13,@r2
	bsr loc_8c013bfe
	mov r14,r4

loc_8c014056:
	mov.l @r15,r3
	mov r14,r0
	nop
	add 0x14,r0
	mov.w @(r0,r3),r0
	cmp/eq 0xFF,r0
	bf.s loc_8c01406e
	add 0x01,r8
	mov 0x2E,r0
	mov.w @(r0,r14),r3
	add 0x01,r3
	mov.w r3,@(r0,r14)

loc_8c01406e:
	mov.b @r11,r2
	mov 0x32,r3
	mov.l @(loc_8c0141dc,PC),r4
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c014082
	mov r4,r9
	add 0x10,r9
	bra loc_8c0140c6
	mov 0x10,r11

loc_8c014082:
	mov.b @r11,r1
	mov 0x0A,r6
	mov.l @(loc_8c0141e0,PC),r5
	extu.b r1,r1
	mov r6,r0
	nop
	mov.l @(loc_8c0141d4,PC),r2
	jsr @r2
	nop
	shll2 r0
	mov.l @(r0,r5),r0
	cmp/eq 0x02,r0
	bf loc_8c0140a4
	mov r4,r9
	add 0x18,r9
	bra loc_8c0140c6
	mov 0x08,r11

loc_8c0140a4:
	mov.b @r11,r1
	extu.b r1,r1
	mov r6,r0
	nop
	mov.l @(loc_8c0141d4,PC),r2
	jsr @r2
	nop
	shll2 r0
	mov.l @(r0,r5),r1
	tst r1,r1
	bf loc_8c0140c0
	mov r4,r9
	bra loc_8c0140c4
	add 0x10,r9

loc_8c0140c0:
	mov r4,r9
	add 0x14,r9

loc_8c0140c4:
	mov 0x04,r11

loc_8c0140c6:
	mov.l @(loc_8c0141d0,PC),r3
	jsr @r3
	nop
	mov r0,r1
	mov r11,r0
	nop
	mov.l @(loc_8c0141d4,PC),r2
	jsr @r2
	nop
	mov r11,r3
	add 0xFF,r3
	cmp/pl r11
	mov 0x00,r4
	mov r0,r6
	bf.s loc_8c014118
	mov.l r3,@r15
	mov.l @(loc_8c0141d8,PC),r1
	mov.l @r1,r7

loc_8c0140ea:
	mov r6,r0
	nop
	mov.b @(r0,r9),r13
	extu.b r13,r13
	cmp/ge r10,r13
	bf loc_8c0140fc
	mov r7,r5
	bra loc_8c014100
	add 0x34,r5

loc_8c0140fc:
	mov r7,r5
	add 0x30,r5

loc_8c014100:
	mov.l @r5,r2
	mov r12,r3
	shad r13,r3
	tst r2,r3
	bt loc_8c014118
	mov r6,r1
	add 0x01,r4
	mov.l @r15,r6
	cmp/ge r11,r4
	add 0x01,r1
	bf.s loc_8c0140ea
	and r1,r6

loc_8c014118:
	mov r8,r10
	shll r10
	cmp/eq r11,r4
	bf loc_8c01412e
	mov r14,r3
	add 0x14,r3
	mov 0xFF,r2
	add r10,r3
	mov.w r2,@r3
	bra loc_8c01413c
	nop

loc_8c01412e:
	mov r14,r1
	add 0x14,r1
	add r10,r1
	mov r8,r5
	mov.w r13,@r1
	bsr loc_8c013bfe
	mov r14,r4

loc_8c01413c:
	mov r14,r0
	nop
	add 0x14,r0
	mov.w @(r0,r10),r0
	cmp/eq 0xFF,r0
	bf loc_8c014150
	mov 0x2E,r0
	mov.w @(r0,r14),r2
	add 0x01,r2
	mov.w r2,@(r0,r14)

loc_8c014150:
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

loc_8c014164:
	mov.w @(0x12,r4),r0
	cmp/eq 0x00,r0

loc_8c014168:
	bt loc_8c01417a
	cmp/eq 0x01,r0
	bt loc_8c014196
	cmp/eq 0x02,r0
	bt loc_8c014196
	cmp/eq 0x03,r0
	bt loc_8c0141a0
	bra loc_8c0141ca
	nop

loc_8c01417a:
	mov.w @(0x10,r4),r0
	tst r0,r0
	bt loc_8c01418c
	mov.l @(0x4,r4),r3
	mov 0x23,r0
	mov 0x01,r2
	mov.b r2,@(r0,r3)
	bra loc_8c0141ca
	nop

loc_8c01418c:
	mov.l @(0x4,r4),r1
	mov 0x23,r0
	mov 0x02,r3
	bra loc_8c0141ca
	mov.b r3,@(r0,r1)

loc_8c014196:
	mov.l @(0x4,r4),r1
	mov 0x23,r0
	mov 0x00,r3
	bra loc_8c0141ca
	mov.b r3,@(r0,r1)

loc_8c0141a0:
	mov r4,r5
	add 0x14,r5
	mov.w @r5,r0
	cmp/eq 0xFF,r0
	bf loc_8c0141c2
	mov.w @(0x2,r5),r0
	cmp/eq 0xFF,r0
	bf loc_8c0141c2
	mov.w @(0x4,r5),r0
	cmp/eq 0xFF,r0
	bf loc_8c0141c2
	mov.l @(0x4,r4),r2
	mov 0x23,r0
	mov 0x06,r3
	mov.b r3,@(r0,r2)
	bra loc_8c0141ca
	nop

loc_8c0141c2:
	mov.l @(0x4,r4),r1
	mov 0x23,r0
	mov 0x07,r3
	mov.b r3,@(r0,r1)

loc_8c0141ca:
	bra loc_8c013b24
	nop

;##############################################
	#align4
loc_8c0141d0:
	#data bank11.loc_8c11e730
loc_8c0141d4:
	#data bank12.loc_8c1292d4
loc_8c0141d8:
	#data work.GameGlobalPointer
loc_8c0141dc:
	#data bank14.loc_8c144218
loc_8c0141e0:
	#data bank14.loc_8c1441f0

;----------------------------------------------
loc_8c0141e4:
	mov.l r14,@-r15
	mov 0x03,r7
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov 0x02,r4
	cmp/ge r4,r5
	bt.s loc_8c014270
	mov 0x00,r6
	mov 0x2E,r0
	mov.w @(r0,r13),r0
	cmp/eq 0x03,r0
	bf loc_8c014202
	bra loc_8c0142c2
	mov r7,r0

loc_8c014202:
	mov.w @(0x12,r13),r0
	mov r0,r14
	exts.w r14,r0
	cmp/eq 0x03,r0
	bt loc_8c01425a

loc_8c01420c:
	tst r5,r5
	bf loc_8c014234
	add 0x01,r14
	exts.w r14,r0
	cmp/eq 0x03,r0
	bf loc_8c01421a
	mov r6,r14

loc_8c01421a:
	mov r13,r3
	exts.w r14,r0
	add 0x14,r3
	shll r0
	mov.w @(r0,r3),r0
	cmp/eq 0xFF,r0
	bf loc_8c01425a
	mov.w @(0x12,r13),r0
	exts.w r14,r3
	cmp/eq r0,r3
	bt loc_8c01425a
	bra loc_8c014254
	nop

loc_8c014234:
	add 0xFF,r14
	exts.w r14,r2
	cmp/pz r2
	bt loc_8c01423e
	mov r4,r14

loc_8c01423e:
	mov r13,r3
	exts.w r14,r0
	add 0x14,r3
	shll r0
	mov.w @(r0,r3),r0
	cmp/eq 0xFF,r0
	bf loc_8c01425a
	mov.w @(0x12,r13),r0
	exts.w r14,r3
	cmp/eq r0,r3
	bt loc_8c01425a

loc_8c014254:
	exts.w r14,r0
	cmp/eq 0x03,r0
	bf loc_8c01420c

loc_8c01425a:
	mov.w @(0x12,r13),r0
	exts.w r14,r2
	cmp/eq r0,r2
	bt loc_8c0142be
	mov.l @(loc_8c0143b0,PC),r3
	mov.l @r3,r0
	mov.b @(0x5,r0),r0
	cmp/eq 0x02,r0
	bt loc_8c0142a8
	bra loc_8c0142be
	nop

loc_8c014270:
	mov r5,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c01427c
	bra loc_8c0142a8
	mov r7,r14

loc_8c01427c:
	cmp/eq 0x03,r0
	bf loc_8c0142ce
	mov.w @(0x16,r13),r0
	cmp/eq 0xFF,r0
	bt loc_8c01428a
	bra loc_8c0142a0
	mov 0x01,r14

loc_8c01428a:
	mov.w @(0x14,r13),r0
	cmp/eq 0xFF,r0
	bt loc_8c014294
	bra loc_8c0142a0
	mov r6,r14

loc_8c014294:
	mov.w @(0x18,r13),r0
	cmp/eq 0xFF,r0
	bt loc_8c01429e
	bra loc_8c0142a0
	mov r4,r14

loc_8c01429e:
	mov r7,r14

loc_8c0142a0:
	mov.w @(0x12,r13),r0
	exts.w r14,r3
	cmp/eq r0,r3
	bt loc_8c0142be

loc_8c0142a8:
	mova @(loc_8c0143b4,PC),r0
	mov.l @r13,r2
	fmov @r0,fr3
	mov 0x74,r0
	fmov fr3,@(r0,r2)
	mov 0xF7,r0
	mov.l @r13,r3
	mov.w r0,@(0x1E,r3)
	mov.l @(loc_8c0143b8,PC),r3
	jsr @r3
	mov 0x01,r4

loc_8c0142be:
	mov r14,r0
	nop

loc_8c0142c2:
	mov r13,r4
	mov.w r0,@(0x12,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c014164
	mov.l @r15+,r14

loc_8c0142ce:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c0142d6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c0143b0,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r13,r0
	mov.l @(loc_8c0143bc,PC),r14
	mov.b @(0x5,r0),r0
	mov.l @(loc_8c0143b8,PC),r12
	cmp/eq 0x00,r0
	bt.s loc_8c014312
	mov 0x01,r11
	cmp/eq 0x01,r0
	bt loc_8c0143a0
	cmp/eq 0x02,r0
	bf loc_8c0142fe
	bra loc_8c0143f8
	nop

loc_8c0142fe:
	cmp/eq 0x03,r0
	bf loc_8c014306
	bra loc_8c0144c4
	nop

loc_8c014306:
	cmp/eq 0x04,r0
	bf loc_8c01430e
	bra loc_8c0145f8
	nop

loc_8c01430e:
	bra loc_8c014610
	nop

loc_8c014312:
	mov.l @(loc_8c0143c0,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c0143c4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0143c8,PC),r3
	jsr @r3
	mov 0x06,r4
	mov.l @(loc_8c0143cc,PC),r2
	jsr @r2
	mov 0x0C,r4
	mov.l @(loc_8c0143d0,PC),r3
	mov 0x00,r5
	mov 0x30,r6
	jsr @r3
	mov r14,r4
	bsr loc_8c013f0a
	mov r14,r4
	mov.l @(loc_8c0143d4,PC),r3
	jsr @r3
	nop
	mov.l r0,@(0xC,r14)
	mov.w @(0x1A,r14),r0
	mov.l @(loc_8c0143d8,PC),r3
	mov r0,r6
	mov.w @(0x14,r14),r0
	mov r0,r5
	mov.w @(0x10,r14),r0
	jsr @r3
	mov r0,r4
	mov.w @(0x16,r14),r0
	mov r14,r6
	mov.l @(loc_8c0143dc,PC),r3
	add 0x20,r6
	mov r0,r5
	jsr @r3
	mov 0x00,r4
	mov.w @(0x18,r14),r0
	mov r14,r6
	mov.l @(loc_8c0143dc,PC),r3
	add 0x26,r6
	mov r0,r5
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c0143e0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0143e4,PC),r3
	jsr @r3
	mov.l r0,@(0x4,r14)
	mov.l r0,@r14
	mov r11,r0
	nop
	mov 0x01,r5
	mov.w r0,@(0x12,r14)
	bsr loc_8c0141e4
	mov r14,r4
	mov.l @(loc_8c0143e8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0143ec,PC),r4
	mov 0x00,r6
	mov.l @(loc_8c0143f0,PC),r3
	mov.l r0,@(0x8,r14)
	jsr @r3
	mov 0x0A,r5
	mov.l @r13,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)

loc_8c0143a0:
	mov.l @(loc_8c0143f4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0144a0
	bra loc_8c014610
	nop

;##############################################
	#align4
loc_8c0143b0:
	#data work.GameGlobalPointer
loc_8c0143b4:
	#data 0x3f7d70a4
loc_8c0143b8:
	#data bank04.loc_8c04257c
loc_8c0143bc:
	#data 0x8c1f8b08
loc_8c0143c0:
	#data bank04.loc_8c044e56
loc_8c0143c4:
	#data bank02.loc_8c023a44
loc_8c0143c8:
	#data loc_8c016df2
loc_8c0143cc:
	#data loc_8c0182e0
loc_8c0143d0:
	#data bank12.loc_8c129728
loc_8c0143d4:
	#data bank02.loc_8c023160
loc_8c0143d8:
	#data bank02.loc_8c0235a4
loc_8c0143dc:
	#data bank02.loc_8c023732
loc_8c0143e0:
	#data bank02.loc_8c0239c0
loc_8c0143e4:
	#data bank02.loc_8c02391c
loc_8c0143e8:
	#data bank02.loc_8c02384e
loc_8c0143ec:
	#data 0xff000000
loc_8c0143f0:
	#data bank03.loc_8c0355b2
loc_8c0143f4:
	#data bank03.loc_8c03563a

;----------------------------------------------
loc_8c0143f8:
	mov.w @(loc_8c0144ac,PC),r3
	extu.w r4,r10
	tst r10,r3
	bt loc_8c01440c
	mov.w @(0x12,r14),r0
	cmp/eq 0x03,r0
	bt loc_8c01440c
	mov 0x00,r5
	bsr loc_8c0141e4
	mov r14,r4

loc_8c01440c:
	mov.w @(loc_8c0144ae,PC),r3
	tst r10,r3
	bt loc_8c01441e
	mov.w @(0x12,r14),r0
	cmp/eq 0x03,r0
	bt loc_8c01441e
	mov 0x01,r5
	bsr loc_8c0141e4
	mov r14,r4

loc_8c01441e:
	mov.w @(loc_8c0144b0,PC),r3
	tst r10,r3
	bt loc_8c014430
	mov.w @(0x12,r14),r0
	cmp/eq 0x03,r0
	bt loc_8c014430
	mov 0x02,r5
	bsr loc_8c0141e4
	mov r14,r4

loc_8c014430:
	mov.w @(loc_8c0144b2,PC),r3
	tst r3,r10
	bt loc_8c014442
	mov.w @(0x12,r14),r0
	cmp/eq 0x03,r0
	bf loc_8c014442
	mov 0x03,r5
	bsr loc_8c0141e4
	mov r14,r4

loc_8c014442:
	mov.l @(loc_8c0144b4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0144b8,PC),r3
	jsr @r3
	mov r0,r10
	mov r0,r4
	tst r4,r4
	bf loc_8c014462
	tst r10,r10
	bf loc_8c01445c
	bra loc_8c014610
	nop

loc_8c01445c:
	mov.w @(0x12,r14),r0
	cmp/eq 0x03,r0
	bf loc_8c014484

loc_8c014462:
	tst r10,r10
	bt loc_8c01446a
	bra loc_8c01446c
	mov 0x02,r4

loc_8c01446a:
	mov 0x03,r4

loc_8c01446c:
	jsr @r12
	nop
	mov.l @(loc_8c0144c0,PC),r2
	mov 0x01,r6
	mov.l @(loc_8c0144bc,PC),r4
	jsr @r2
	mov 0x0A,r5
	mov.l @r13,r3
	mov 0x04,r0
	mov.b r0,@(0x5,r3)
	bra loc_8c014610
	nop

loc_8c014484:
	tst r10,r10
	bf loc_8c01448c
	bra loc_8c014610
	nop

loc_8c01448c:
	jsr @r12
	mov 0x02,r4
	mov.l @(0x8,r14),r3
	mov r11,r0
	nop
	mov.b r0,@(0x4,r3)
	mov 0x23,r0
	mov.l @(0x4,r14),r3
	mov 0x03,r2
	mov.b r2,@(r0,r3)

loc_8c0144a0:
	mov.l @r13,r3
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)
	bra loc_8c014610
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0144ac:
	#data 0x0400
loc_8c0144ae:
	#data 0x0800
loc_8c0144b0:
	#data 0x1000
loc_8c0144b2:
	#data 0x2000
	#align4
loc_8c0144b4:
	#data loc_8c011ada
loc_8c0144b8:
	#data loc_8c011c10
loc_8c0144bc:
	#data 0xff000000
loc_8c0144c0:
	#data bank03.loc_8c0355b2

;----------------------------------------------
loc_8c0144c4:
	mov.l @(0x8,r14),r2
	mov.b @(0x4,r2),r0
	tst r0,r0
	bt loc_8c0144d0
	bra loc_8c014610
	nop

loc_8c0144d0:
	mov.l @(0x8,r14),r2
	mov.b @(0x5,r2),r0
	tst r0,r0
	bf loc_8c0145be
	mov.w @(0x12,r14),r0
	mov r14,r2
	mov.l @(loc_8c0145d4,PC),r1
	add 0x1A,r2
	mov r0,r3
	shll2 r3
	shll r0
	add r3,r0
	add r2,r0
	mov.w @r1,r2
	mov.w @r0,r3
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c014504
	mov.l @(0x4,r14),r2
	mov 0x23,r0
	mov 0x05,r3
	mov.b r3,@(r0,r2)
	jsr @r12
	mov r3,r4
	bra loc_8c0145ee
	nop

loc_8c014504:
	mov.l @(loc_8c0145d8,PC),r2
	jsr @r2
	mov 0x2A,r4
	mov.w @(0x12,r14),r0
	mov r14,r2
	add 0x1A,r2
	mov r0,r3
	shll2 r3
	shll r0
	add r3,r0
	mov.l @(loc_8c0145d4,PC),r3
	mov.w @(r0,r2),r2
	mov.w @r3,r1
	sub r2,r1
	mov.w r1,@r3
	mov.l @(loc_8c0145dc,PC),r3
	jsr @r3
	nop
	mov.w @(0x12,r14),r0
	tst r0,r0
	bt.s loc_8c01454e
	mov 0x20,r5
	mov.w @(0x12,r14),r0
	mov r14,r3
	add 0x14,r3
	mov r0,r4
	shll r4
	add r3,r4
	mov.w @r4,r4
	cmp/ge r5,r4
	bf loc_8c014548
	mov.l @r13,r5
	bra loc_8c014570
	add 0x34,r5

loc_8c014548:
	mov.l @r13,r5
	bra loc_8c014570
	add 0x30,r5

loc_8c01454e:
	mov.w @(0x10,r14),r0
	tst r0,r0
	bt loc_8c01457a
	mov.w @(0x12,r14),r0
	mov r14,r3
	add 0x14,r3
	mov r0,r4
	shll r4
	add r3,r4
	mov.w @r4,r4
	cmp/ge r5,r4
	bf loc_8c01456c
	mov.l @r13,r5
	bra loc_8c014570
	add 0x3C,r5

loc_8c01456c:
	mov.l @r13,r5
	add 0x38,r5

loc_8c014570:
	mov.l @r5,r3
	shad r4,r11
	or r11,r3
	bra loc_8c01458e
	mov.l r3,@r5

loc_8c01457a:
	mov.l @(loc_8c0145e0,PC),r4
	mov 0x2A,r0
	mov 0x07,r2
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c01458e
	mov.b @(r0,r4),r1
	add 0x01,r1
	mov.b r1,@(r0,r4)

loc_8c01458e:
	mov.w @(0x12,r14),r0
	mov r14,r3
	add 0x14,r3
	shll r0
	mov 0xFF,r2
	add r3,r0
	mov.w r2,@r0
	mov 0x2E,r0
	mov.w @(r0,r14),r3
	add 0x01,r3
	mov.w r3,@(r0,r14)
	mov.l @(loc_8c0145e4,PC),r3
	mov.w @(0x12,r14),r0
	jsr @r3
	mov r0,r4
	mov.l @(0x4,r14),r2
	mov 0x23,r0
	mov 0x04,r3
	mov 0x00,r5
	mov.b r3,@(r0,r2)
	bsr loc_8c0141e4
	mov r14,r4
	bra loc_8c0145ee
	nop


loc_8c0145be:
	bsr loc_8c014164
	mov r14,r4
	mov.w @(loc_8c0145d0,PC),r0
	mov.l @(0x8,r14),r2
	mov.l @(r0,r2),r3
	tst r3,r3
	bt loc_8c0145e8
	bra loc_8c0145ea
	mov 0x02,r4


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0145d0:
	#data 0x00d8
	#align4
loc_8c0145d4:
	#data 0x8c212c3e
loc_8c0145d8:
	#data bank04.loc_8c0422dc
loc_8c0145dc:
	#data bank02.loc_8c02322c
loc_8c0145e0:
	#data 0x8c289750
loc_8c0145e4:
	#data bank02.loc_8c0239e8

;----------------------------------------------
loc_8c0145e8:
	mov 0x03,r4

loc_8c0145ea:
	jsr @r12
	nop

loc_8c0145ee:
	mov.l @r13,r2
	mov.b @(0x5,r2),r0
	add 0xFF,r0
	bra loc_8c014610
	mov.b r0,@(0x5,r2)

loc_8c0145f8:
	mov.l @(loc_8c014620,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c014610
	mov.l @r13,r2
	mov r11,r0
	nop
	mov.b r0,@(0x3,r2)
	mov 0x00,r0
	mov.l @r13,r3
	mov.b r0,@(0x5,r3)

loc_8c014610:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
loc_8c014620:
	#data bank03.loc_8c03563a

;----------------------------------------------
loc_8c014624:
	mov.l r14,@-r15
	mov.l @(loc_8c01470c,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r0
	mov.b @(0x5,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c014644
	cmp/eq 0x01,r0
	bt loc_8c01467a
	cmp/eq 0x02,r0
	bt loc_8c01468a
	cmp/eq 0x03,r0
	bt loc_8c0146c2
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c014644:
	mov.l @(loc_8c014710,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c014714,PC),r2
	jsr @r2
	mov 0x05,r4
	mov.l @(loc_8c014718,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c01471c,PC),r2
	mov.l @(loc_8c014720,PC),r3
	mov.b @r2,r4
	jsr @r3
	extu.b r4,r4
	mov.l @(loc_8c014728,PC),r3
	mov.l @(loc_8c014724,PC),r2
	jsr @r3
	mov.l r0,@r2
	mov.l @(loc_8c014730,PC),r2
	mov 0x00,r6
	mov.l @(loc_8c01472c,PC),r4
	jsr @r2
	mov 0x0A,r5
	mov.l @r14,r3
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)

loc_8c01467a:
	mov.l @(loc_8c014734,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0146fe
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c01468a:
	mov.l @(loc_8c014738,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0146b2
	mov.l @(loc_8c014724,PC),r3
	mov 0x23,r0
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0146aa
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c0146de
	bra loc_8c0146b2
	nop

loc_8c0146aa:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c0146de

loc_8c0146b2:
	mov.l @(loc_8c01473c,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0146de
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0146c2:
	mov.l @(loc_8c014734,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c014706
	mov.l @r14,r3
	mov 0x01,r0
	mov.b r0,@(0x3,r3)
	mov 0x00,r0
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0146de:
	mov.l @(loc_8c014738,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c0146ec
	bra loc_8c0146ee
	mov 0x02,r4

loc_8c0146ec:
	mov 0x03,r4

loc_8c0146ee:
	mov.l @(loc_8c014740,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c014730,PC),r3
	mov 0x01,r6
	mov.l @(loc_8c01472c,PC),r4
	jsr @r3
	mov 0x0A,r5

loc_8c0146fe:
	mov.l @r14,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)

loc_8c014706:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01470c:
	#data work.GameGlobalPointer
loc_8c014710:
	#data bank04.loc_8c044e56
loc_8c014714:
	#data loc_8c016df2
loc_8c014718:
	#data loc_8c0182e0
loc_8c01471c:
	#data 0x8c28977a
loc_8c014720:
	#data bank02.loc_8c022722
loc_8c014724:
	#data 0x8c1f8b3c
loc_8c014728:
	#data bank02.loc_8c022b94
loc_8c01472c:
	#data 0xff000000
loc_8c014730:
	#data bank03.loc_8c0355b2
loc_8c014734:
	#data bank03.loc_8c03563a
loc_8c014738:
	#data loc_8c011ada
loc_8c01473c:
	#data loc_8c011c10
loc_8c014740:
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c014744:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c0147e0,PC),r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r13,r0
	mov.b @(0x5,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c014768
	cmp/eq 0x01,r0
	bt loc_8c014792
	cmp/eq 0x02,r0
	bt loc_8c0147a0
	cmp/eq 0x03,r0
	bt loc_8c0147be
	bra loc_8c0147d4
	nop

loc_8c014768:
	mov.l @(0x78,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(0x78,PC),r11
	mov 0x00,r14
	bra loc_8c01477c
	mov 0x0E,r12

loc_8c014776:
	jsr @r11
	mov r14,r4
	add 0x01,r14

loc_8c01477c:
	cmp/ge r12,r14
	bf loc_8c014776
	mov.l @(loc_8c0147f0,PC),r2
	mov 0x00,r6
	mov.l @(0x64,PC),r4
	jsr @r2
	mov 0x0A,r5
	mov.l @r13,r3
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)

loc_8c014792:
	mov.l @(0x60,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0147b4
	bra loc_8c0147d4
	nop

loc_8c0147a0:
	mov.l @(0x54,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0147d4
	mov.l @(loc_8c0147f0,PC),r3
	mov 0x01,r6
	mov.l @(0x3C,PC),r4
	jsr @r3
	mov 0x0A,r5

loc_8c0147b4:
	mov.l @r13,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	bra loc_8c0147d4
	mov.b r0,@(0x5,r2)

loc_8c0147be:
	mov.l @(0x34,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c0147d4
	mov.l @r13,r2
	mov 0x01,r0
	mov.b r0,@(0x3,r2)
	mov 0x00,r0
	mov.l @r13,r3
	mov.b r0,@(0x5,r3)

loc_8c0147d4:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0147e0:
	#data work.GameGlobalPointer bank04.loc_8c044e56 bank02.loc_8c021cb4 0xff000000
loc_8c0147f0:
	#data bank03.loc_8c0355b2 bank03.loc_8c03563a loc_8c011bbc

;==============================================
loc_8c0147fc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c0148fc,PC),r14
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x01,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @r14,r12
	mov.l @(loc_8c0148f8,PC),r13
	mov.b @(0x5,r12),r0
	cmp/eq 0x00,r0
	bt.s loc_8c014838
	mov 0x00,r11
	cmp/eq 0x01,r0
	bt loc_8c014894
	cmp/eq 0x02,r0
	bt loc_8c0148ae
	cmp/eq 0x03,r0
	bf loc_8c01482c
	bra loc_8c014b3c
	nop

loc_8c01482c:
	cmp/eq 0x04,r0
	bf loc_8c014834
	bra loc_8c014b5e
	nop

loc_8c014834:
	bra loc_8c014b70
	nop

loc_8c014838:
	mov.b @(0x5,r12),r0
	add 0x01,r0
	mov.b r0,@(0x5,r12)
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov.l @r14,r3
	mov.w r0,@(0xA,r3)
	mov.l @(loc_8c014900,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c014904,PC),r2
	jsr @r2
	mov 0x04,r4
	mov.l @(loc_8c014908,PC),r3
	jsr @r3
	mov 0x0F,r4
	mov.l @(loc_8c01490c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c014910,PC),r2
	mov r13,r3
	add 0x59,r3
	jsr @r2
	mov.b r10,@r3
	mov.l @(loc_8c014918,PC),r2
	mov.w @(loc_8c0148f4,PC),r4
	mov.l @(loc_8c014914,PC),r3
	jsr @r2
	mov.l @r3,r5
	lds.l @r15+,pr
	mov.l @(loc_8c014920,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c01491c,PC),r4
	mov 0x0A,r5
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8c014894:
	mov.l @(loc_8c014924,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0148a2
	bra loc_8c014b70
	nop

loc_8c0148a2:
	mov.l @r14,r3
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)
	bra loc_8c014b70
	nop								  

loc_8c0148ae:
	mov.b @(0x6,r12),r0
	mov r13,r5
	mov.l @(loc_8c01492c,PC),r9
	mov.l @(loc_8c014928,PC),r8
	cmp/eq 0x00,r0
	bt.s loc_8c014930
	add 0x5A,r5
	cmp/eq 0x01,r0
	bt loc_8c0149a6
	cmp/eq 0x02,r0
	bf loc_8c0148c8
	bra loc_8c014a00
	nop


loc_8c0148c8:
	cmp/eq 0x03,r0
	bf loc_8c0148d0
	bra loc_8c014a1c
	nop

loc_8c0148d0:
	cmp/eq 0x04,r0
	bf loc_8c0148d8
	bra loc_8c014a8e
	nop

loc_8c0148d8:
	cmp/eq 0x05,r0
	bf loc_8c0148e0
	bra loc_8c014ab4
	nop

loc_8c0148e0:
	cmp/eq 0x06,r0
	bf loc_8c0148e8
	bra loc_8c014ad0
	nop

loc_8c0148e8:
	cmp/eq 0x07,r0					   
	bf loc_8c0148f0						
	bra loc_8c014b06					   
	nop								  

loc_8c0148f0:
	bra loc_8c014b70
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0148f4:
	#data 0x010e
	#align4

loc_8c0148f8:
	#data 0x8c289750
loc_8c0148fc:
	#data work.GameGlobalPointer
loc_8c014900:
	#data bank04.loc_8c044e56
loc_8c014904:
	#data loc_8c016df2
loc_8c014908:
	#data loc_8c0182e0
loc_8c01490c:
	#data bank02.loc_8c023a78
loc_8c014910:
	#data bank02.loc_8c023bc0
loc_8c014914:
	#data 0x8c26a944
loc_8c014918:
	#data bank02.loc_8c0267ec
loc_8c01491c:
	#data 0xff000000
loc_8c014920:
	#data bank03.loc_8c0355b2
loc_8c014924:
	#data bank03.loc_8c03563a
loc_8c014928:
	#data loc_8c011a9a
loc_8c01492c:
	#data loc_8c011bbc

;----------------------------------------------
loc_8c014930:
	mov.l @(loc_8c014a6c,PC),r3
	mov 0x01,r6
	mov.w @(0x8,r12),r0
	jsr @r3
	mov r0,r5
	mov r13,r3
	mov.w r0,@(0x8,r12)
	mov.l @r14,r2
	add 0x59,r3
	mov.w @(0x8,r2),r0
	mov.b @r3,r2
	add 0x01,r0
	extu.b r2,r2
	cmp/eq r2,r0
	bt loc_8c014960
	mov.l @r14,r3
	mov r13,r2
	add 0x59,r2
	mov.w @(0x8,r3),r0
	mov.l @(0x118,PC),r3
	mov r0,r1
	add 0x01,r1
	jsr @r3
	mov.b r1,@r2

loc_8c014960:
	jsr @r8
	nop																

;----------------------------------------------
loc_8c014964:
	tst r0,r0
	bt loc_8c014990
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bf loc_8c01499c
	mov.l @r14,r2
	mov r13,r3
	add 0x59,r3
	mov.b @(0x6,r2),r0
	add 0x01,r0
	mov.b r0,@(0x6,r2)
	mov 0x03,r2
	mov.b r2,@r3
	mov 0x5A,r0
	mov.b r10,@(r0,r13)
	mov.l @r14,r3
	mov.w @(0x8,r3),r0
	or 0x80,r0
	mov.w r0,@(0x8,r3)
	bra loc_8c014ae8
	nop

loc_8c014990:
	jsr @r9
	nop
	tst r0,r0
	bf loc_8c01499c
	bra loc_8c014b70
	nop

loc_8c01499c:
	mov.l @r14,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	bra loc_8c014b22
	mov.b r0,@(0x5,r2)

loc_8c0149a6:
	mov.l @(loc_8c014a6c,PC),r3
	mov 0x01,r6
	mov.w @(0xA,r12),r0
	jsr @r3
	mov r0,r5
	mov 0x5A,r3
	mov.w r0,@(0xA,r12)
	add r13,r3
	mov.l @r14,r2
	mov.b @r3,r3
	mov.w @(0xA,r2),r0
	extu.b r3,r3
	cmp/eq r3,r0
	bt loc_8c0149cc
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	mov r0,r2
	mov 0x5A,r0
	mov.b r2,@(r0,r13)

loc_8c0149cc:
	jsr @r8
	nop
	tst r0,r0
	bt loc_8c0149ec
	mov.l @r14,r1
	mov.w @(0xA,r1),r0
	tst r0,r0
	bf loc_8c0149e4
	mov.l @r14,r2
	mov.b @(0x6,r2),r0
	bra loc_8c0149e8
	add 0x01,r0

loc_8c0149e4:
	mov.l @r14,r2
	mov 0x05,r0

loc_8c0149e8:
	bra loc_8c014a5e
	mov.b r0,@(0x6,r2)

loc_8c0149ec:
	jsr @r9
	nop
	tst r0,r0
	bf loc_8c0149f8
	bra loc_8c014b70
	nop

loc_8c0149f8:
	mov.l @r14,r2
	mov 0x05,r0
	bra loc_8c014a86
	mov.b r0,@(0x6,r2)

loc_8c014a00:
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c014a0a
	bra loc_8c014b70
	nop

loc_8c014a0a:
	mov.b @(0x6,r12),r0
	mov r13,r3
	add 0x59,r3
	mov 0x04,r2
	add 0x01,r0
	mov.b r0,@(0x6,r12)
	mov.b r2,@r3
	bra loc_8c014ae4
	nop

loc_8c014a1c:
	mov.l @(loc_8c014a6c,PC),r3
	mov 0x01,r6
	mov.w @(0xA,r12),r0
	jsr @r3
	mov r0,r5
	mov 0x5A,r3
	mov.w r0,@(0xA,r12)
	add r13,r3
	mov.l @r14,r2
	mov.b @r3,r3
	mov.w @(0xA,r2),r0
	extu.b r3,r3
	cmp/eq r3,r0
	bt loc_8c014a42
	mov.l @r14,r3
	mov.w @(0xA,r3),r0
	mov r0,r2
	mov 0x5A,r0
	mov.b r2,@(r0,r13)

loc_8c014a42:
	jsr @r8
	nop
	tst r0,r0
	bt loc_8c014a74
	mov.l @r14,r1
	mov.w @(0xA,r1),r0
	tst r0,r0
	bf loc_8c014a58
	mov.l @r14,r2
	bra loc_8c014a5c
	mov 0x07,r0

loc_8c014a58:
	mov.l @r14,r2
	mov 0x06,r0

loc_8c014a5c:
	mov.b r0,@(0x6,r2)

loc_8c014a5e:
	mov 0x5A,r0
	mov.b @(r0,r13),r0
	mov 0x5A,r1
	add r13,r1
	or 0x80,r0
	bra loc_8c014b70
	mov.b r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c014a6c:
	#data  loc_8c013572 bank02.loc_8c023bc0 

;----------------------------------------------
loc_8c014a74:
	jsr @r9
	nop
	tst r0,r0
	bf loc_8c014a80
	bra loc_8c014b70
	nop

loc_8c014a80:
	mov.l @r14,r3
	mov 0x06,r0
	mov.b r0,@(0x6,r3)

loc_8c014a86:
	mov.w @(loc_8c014b82,PC),r3
	mov 0x5A,r0
	bra loc_8c014b70
	mov.b r3,@(r0,r13)

loc_8c014a8e:
	mov.l @(loc_8c014b84,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bf loc_8c014b70
	mov.l @r14,r1
	mov 0x04,r0
	mov.b r0,@(0x5,r1)
	mov.l @r14,r3
	mov r3,r0
	nop
	mov 0x07,r2
	add r0,r2
	mov.b r11,@r2
	mov r11,r0
	nop
	mov.b r0,@(0x6,r3)
	bra loc_8c014b70
	nop

loc_8c014ab4:
	mov.b @r5,r2
	tst r2,r2
	bf loc_8c014b70
	mov r11,r0
	nop
	mov.b r0,@(0x6,r12)
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov.l @r14,r3
	mov.w r0,@(0xA,r3)
	mov r13,r3
	add 0x59,r3
	bra loc_8c014af2
	mov.b r10,@r3

loc_8c014ad0:
	mov.b @r5,r2
	tst r2,r2
	bf loc_8c014b70
	mov r10,r0
	nop
	mov r13,r3
	mov 0x03,r2
	add 0x59,r3
	mov.b r0,@(0x6,r12)
	mov.b r2,@r3

loc_8c014ae4:
	mov 0x5A,r0
	mov.b r10,@(r0,r13)

loc_8c014ae8:
	mov 0x5A,r0
	mov.l @r14,r3
	mov.b @(r0,r13),r0
	extu.b r0,r0
	mov.w r0,@(0xA,r3)

loc_8c014af2:
	lds.l @r15+,pr
	mov.l @(loc_8c014b88,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c014b06:
	mov.b @r5,r3
	tst r3,r3
	bf loc_8c014b70
	mov 0x04,r0
	mov r13,r3
	mov.b r0,@(0x6,r12)
	mov 0x5A,r0
	add 0x59,r3
	mov.b r11,@r3
	mov.b r11,@(r0,r13)
	mov.b @(r0,r13),r0
	mov.l @r14,r3
	extu.b r0,r0
	mov.w r0,@(0xA,r3)

loc_8c014b22:
	lds.l @r15+,pr
	mov.l @(loc_8c014b90,PC),r3
	mov 0x01,r6
	mov.l @(loc_8c014b8c,PC),r4
	mov 0x0A,r5
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c014b3c:
	mov.l @(loc_8c014b84,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c014b70
	mov.l @r14,r2
	mov r10,r0
	nop
	mov.b r0,@(0x3,r2)
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	bra loc_8c014b70
	nop										   

loc_8c014b5e:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c014b94
	mov.l @r15+,r14

loc_8c014b70:
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
loc_8c014b82:
	#data 0x00ff
	#align4
loc_8c014b84:
	#data bank03.loc_8c03563a
loc_8c014b88:
	#data bank02.loc_8c023bc0
loc_8c014b8c:
	#data 0xff000000
loc_8c014b90:
	#data bank03.loc_8c0355b2

;##############################################
loc_8c014b94:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c014da8,PC),r3
	jsr @r3
	mov.w r4,@r15
	mov.l @(loc_8c014db0,PC),r14
	mov 0x05,r11
	mov.l @(loc_8c014dac,PC),r13
	mov.l @r14,r4
	mov.b @(0x6,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_8c014bd6
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c014c1a
	cmp/eq 0x02,r0
	bt loc_8c014c32
	cmp/eq 0x03,r0
	bt loc_8c014c4a
	cmp/eq 0x04,r0
	bt loc_8c014c90
	cmp/eq 0x05,r0
	bt loc_8c014ca0
	cmp/eq 0x06,r0
	bf loc_8c014bd2
	bra loc_8c014d26
	nop

loc_8c014bd2:
	bra loc_8c014d44
	nop

loc_8c014bd6:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)
	mov.l @r14,r3
	mov.w r0,@(0x8,r3)
	mov 0x5C,r0
	mov 0xFF,r3
	mov.l r3,@(r0,r13)
	mov.l @(loc_8c014db4,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c014db8,PC),r2
	jsr @r2
	mov 0x04,r4
	mov.l @(loc_8c014dbc,PC),r3
	jsr @r3
	mov 0x0F,r4
	mov.l @(loc_8c014dc0,PC),r3
	mov r13,r2
	add 0x59,r2
	jsr @r3
	mov.b r11,@r2
	mov.l @(loc_8c014dc4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c014dcc,PC),r3
	mov 0x00,r6
	mov.l @(loc_8c014dc8,PC),r4
	jsr @r3
	mov 0x0A,r5

loc_8c014c1a:
	mov.l @(loc_8c014dd0,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c014c28
	bra loc_8c014d44
	nop

loc_8c014c28:
	mov.l @r14,r2
	mov.b @(0x6,r2),r0
	add 0x01,r0
	bra loc_8c014d44
	mov.b r0,@(0x6,r2)

loc_8c014c32:
	mov.l @(loc_8c014dd4,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c014c50
	mov.l @r14,r2
	mov r13,r3
	mov 0x03,r0
	add 0x59,r3
	mov.b r0,@(0x6,r2)
	bra loc_8c014cea
	mov.b r11,@r3

loc_8c014c4a:
	mov.l @(0x18,r13),r3
	tst r3,r3
	bf loc_8c014c68

loc_8c014c50:
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)
	mov 0x5C,r0
	mov 0xFF,r3
	bra loc_8c014d44
	mov.l r3,@(r0,r13)

loc_8c014c68:
	mov.l @(loc_8c014dd8,PC),r3
	mov.w @r15,r4
	jsr @r3
	extu.w r4,r4
	mov.l @(loc_8c014ddc,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c014c82
	mov.l @r14,r2
	mov 0x04,r0
	bra loc_8c014d44
	mov.b r0,@(0x6,r2)

loc_8c014c82:
	mov.l @(loc_8c014de0,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c014d0a
	bra loc_8c014d44
	nop

loc_8c014c90:
	mov.w @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c014d52
	mov.l @r15+,r14

loc_8c014ca0:
	mov.l @(0x18,r13),r3
	tst r3,r3
	bt loc_8c014cac
	mov 0x02,r0
	bra loc_8c014d3c
	mov.b r0,@(0x6,r4)

loc_8c014cac:
	mov.b @(0x7,r4),r0
	cmp/eq 0x00,r0
	bt loc_8c014cbe
	cmp/eq 0x01,r0
	bt loc_8c014cd0
	cmp/eq 0x02,r0
	bt loc_8c014cfa
	bra loc_8c014d44
	nop

loc_8c014cbe:
	mov.b @(0x7,r4),r0
	mov r13,r3
	add 0x59,r3
	mov 0x06,r2
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov.b r2,@r3
	bra loc_8c014cea
	nop

loc_8c014cd0:
	mov.l @(loc_8c014de4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c014d44
	mov.l @r14,r3
	mov 0x07,r2
	mov.b @(0x7,r3),r0
	add 0x01,r0
	mov.b r0,@(0x7,r3)
	mov r13,r3
	add 0x59,r3
	mov.b r2,@r3

loc_8c014cea:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c014dc0,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c014cfa:
	mov.l @(loc_8c014de4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c014d44
	mov.l @(loc_8c014de8,PC),r3
	jsr @r3
	mov 0x03,r4

loc_8c014d0a:
	mov.l @r14,r2
	mov 0x06,r0
	mov.l @(loc_8c014dc8,PC),r4
	mov 0x0A,r5
	mov.b r0,@(0x6,r2)
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c014dcc,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c014d26:
	mov.l @(loc_8c014dd0,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c014d44
	mov.l @r14,r2
	mov r12,r0
	nop
	mov.b r0,@(0x5,r2)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)

loc_8c014d3c:
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)

loc_8c014d44:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c014d52:
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r15,r3
	add 0x0A,r3
	mov.w r4,@r3
	mov.l @(loc_8c014db0,PC),r3
	mov.l @r3,r0
	mov.b @(0x7,r0),r0

	cmp/eq 0x00,r0
	bt loc_8c014dec

	cmp/eq 0x01,r0
	bf loc_8c014d70
	bra loc_8c014f20
	nop

loc_8c014d70:
	cmp/eq 0x02,r0
	bf loc_8c014d78
	bra loc_8c015024
	nop

loc_8c014d78:
	cmp/eq 0x03,r0
	bf loc_8c014d80
	bra loc_8c015118
	nop

loc_8c014d80:
	cmp/eq 0x04,r0
	bf loc_8c014d88
	bra loc_8c015198
	nop

loc_8c014d88:
	cmp/eq 0x05,r0
	bf loc_8c014d90
	bra loc_8c01534c
	nop

loc_8c014d90:
	cmp/eq 0x06,r0
	bf loc_8c014d98
	bra loc_8c015448
	nop

loc_8c014d98:
	cmp/eq 0x07,r0
	bf loc_8c014da0
	bra loc_8c01545c
	nop

loc_8c014da0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c014da8:
	#data loc_8c011898
loc_8c014dac:
	#data 0x8c289750
loc_8c014db0:
	#data work.GameGlobalPointer
loc_8c014db4:
	#data bank04.loc_8c044e56
loc_8c014db8:
	#data loc_8c016df2
loc_8c014dbc:
	#data loc_8c0182e0
loc_8c014dc0:
	#data bank02.loc_8c023bc0
loc_8c014dc4:
	#data bank02.loc_8c024394
loc_8c014dc8:
	#data 0xff000000
loc_8c014dcc:
	#data bank03.loc_8c0355b2
loc_8c014dd0:
	#data bank03.loc_8c03563a
loc_8c014dd4:
	#data loc_8c0118a8
loc_8c014dd8:
	#data loc_8c011910
loc_8c014ddc:
	#data loc_8c011a9a
loc_8c014de0:
	#data loc_8c011bbc
loc_8c014de4:
	#data loc_8c011d0c
loc_8c014de8:
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c014dec:
	mov.l @r3,r2
	mov 0x00,r0
	mov.w r0,@(0xC,r2)
	mov.l @(loc_8c014f90,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c014f94,PC),r2
	mov.l r0,@(0x4,r15)
	mov.l @r2,r3
	mov 0x01,r2
	shad r3,r2
	tst r2,r0
	bt loc_8c014e14
	mov.l @(loc_8c014f98,PC),r3
	mov 0x02,r0
	mov.l @r3,r2
	mov.b r0,@(0x7,r2)
	mov.l @(loc_8c014f9c,PC),r2
	bra loc_8c014eca
	mov 0x10,r1

loc_8c014e14:
	mov.l @(loc_8c014fa0,PC),r3
	mov.l @(loc_8c014f94,PC),r2
	jsr @r3
	mov.l @r2,r4
	tst r0,r0
	bt loc_8c014e96
	mov.l @(loc_8c014fa4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c014f94,PC),r2
	mov.l r0,@(0x4,r15)
	mov.l @r2,r3
	mov 0x01,r2
	shad r3,r2
	tst r2,r0
	bt loc_8c014e4a
	mov.l @(loc_8c014f98,PC),r3
	mov 0x01,r0
	mov 0x0A,r1
	mov.l @r3,r2
	mov 0x01,r3
	mov.b r0,@(0x7,r2)
	mov.l @(loc_8c014f9c,PC),r2
	mov.l @(loc_8c014fa8,PC),r0
	mov.b r1,@r2
	bra loc_8c0151de
	mov.b r3,@r0

loc_8c014e4a:
	mov.l @(loc_8c014fac,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c014f94,PC),r2
	mov.l r0,@(0x4,r15)
	mov.l @r2,r3
	mov 0x01,r2
	shad r3,r2
	tst r2,r0
	bt loc_8c014e74
	mov.l @(loc_8c014f98,PC),r3
	mov 0x01,r0
	mov 0x0A,r1
	mov.l @r3,r2
	mov 0x01,r3
	mov.b r0,@(0x7,r2)
	mov.l @(loc_8c014f9c,PC),r2
	mov.l @(loc_8c014fa8,PC),r0
	mov.b r1,@r2
	bra loc_8c0151de
	mov.b r3,@r0

loc_8c014e74:
	mov.l @(loc_8c014f98,PC),r1
	mov 0x02,r0
	mov.l @r1,r2
	mov.b r0,@(0x7,r2)
	mov 0x01,r0
	mov.l @r1,r3
	mov 0x08,r2
	mov.w r0,@(0xC,r3)
	mov.l @(loc_8c014f9c,PC),r3
	mov.b r2,@r3
	mov.l @(loc_8c014fb0,PC),r2
	jsr @r2
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;==============================================
loc_8c014e96:
	mov.l @(loc_8c014fa4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c014f94,PC),r2
	mov.l r0,@(0x4,r15)
	mov.l @r2,r3
	mov 0x01,r2
	shad r3,r2
	tst r2,r0
	bt loc_8c014ee4
	mov.l @(loc_8c014fac,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c014f94,PC),r2
	mov.l r0,@(0x4,r15)
	mov.l @r2,r3
	mov 0x01,r2
	shad r3,r2
	tst r2,r0
	bt loc_8c014ece
	mov.l @(loc_8c014f98,PC),r3
	mov 0x03,r0
	mov 0x0B,r1
	mov.l @r3,r2
	mov.b r0,@(0x7,r2)
	mov.l @(loc_8c014f9c,PC),r2

loc_8c014eca:
	bra loc_8c0151de
	mov.b r1,@r2

loc_8c014ece:
	mov.l @(loc_8c014f98,PC),r2
	mov 0x02,r0
	mov 0x08,r1
	mov.l @r2,r3
	mov.b r0,@(0x7,r3)
	mov.l @r2,r3
	mov.w r0,@(0xC,r3)
	mov.l @(loc_8c014f9c,PC),r3
	mov.b r1,@r3
	bra loc_8c0151de
	nop

loc_8c014ee4:
	mov.l @(loc_8c014fac,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c014f94,PC),r2
	mov 0x01,r1
	mov.l r0,@(0x4,r15)
	mov.l @r2,r3
	shad r3,r1
	tst r1,r0
	bt loc_8c014f08
	mov.l @(loc_8c014f98,PC),r3
	mov 0x03,r0
	mov 0x0B,r1
	mov.l @r3,r2
	mov.b r0,@(0x7,r2)
	mov.l @(loc_8c014f9c,PC),r2
	bra loc_8c0151de
	mov.b r1,@r2

loc_8c014f08:
	mov.l @(loc_8c014f98,PC),r2
	mov 0x02,r0
	mov 0x08,r1
	mov.l @r2,r3
	mov.b r0,@(0x7,r3)
	mov 0x03,r0
	mov.l @r2,r3
	mov.w r0,@(0xC,r3)
	mov.l @(loc_8c014f9c,PC),r3
	mov.b r1,@r3
	bra loc_8c0151de
	nop

loc_8c014f20:
	mov.l @(loc_8c014fb4,PC),r2
	mov.l @(loc_8c014f94,PC),r0
	jsr @r2
	mov.l @r0,r4
	tst r0,r0
	bf.s loc_8c014f32
	mov.l r0,@r15
	bra loc_8c01546a
	nop

loc_8c014f32:
	cmp/eq 0xFF,r0
	bf loc_8c014f3a
	bra loc_8c01546a
	nop

loc_8c014f3a:
	mov.l @(loc_8c014f98,PC),r3
	mov.l @r3,r0
	mov.w @(0xC,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c014f54
	cmp/eq 0x01,r0
	bt loc_8c014fe4
	cmp/eq 0x02,r0
	bt loc_8c015010
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c014f54:
	mov.l @(loc_8c014fa8,PC),r2
	mov 0x01,r6
	mov.w @(0xA,r15),r0
	mov.b @r2,r5
	mov r2,r8
	mov.l @(loc_8c014fb8,PC),r1
	extu.b r5,r5
	jsr @r1
	mov r0,r4
	mov.l @(loc_8c014fbc,PC),r3
	jsr @r3
	mov.b r0,@r8
	tst r0,r0
	bt loc_8c014fc0
	mov.l @(loc_8c014fa8,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c014f84
	mov.l @(loc_8c014f98,PC),r1
	mov 0x01,r0
	mov.l @r1,r2
	mov.w r0,@(0xC,r2)
	bra loc_8c01539e
	nop

loc_8c014f84:
	mov.l @(loc_8c014f98,PC),r2
	mov 0x02,r0
	mov.l @r2,r1
	bra loc_8c01539e
	mov.w r0,@(0xC,r1)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c014f90:
	#data bank11.loc_8c115efe
loc_8c014f94:
	#data 0x8c2897ac
loc_8c014f98:
	#data work.GameGlobalPointer
loc_8c014f9c:
	#data 0x8c2897a9
loc_8c014fa0:
	#data bank11.loc_8c115c40
loc_8c014fa4:
	#data bank11.loc_8c115e8c
loc_8c014fa8:
	#data 0x8c2897aa
loc_8c014fac:
	#data bank11.loc_8c116058
loc_8c014fb0:
	#data bank02.loc_8c023bc0
loc_8c014fb4:
	#data bank11.loc_8c115bf0
loc_8c014fb8:
	#data loc_8c013572
loc_8c014fbc:
	#data loc_8c011a9a

;----------------------------------------------
loc_8c014fc0:
	mov.l @(loc_8c0150c4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c014fce
	bra loc_8c0154c8
	nop

loc_8c014fce:
	mov.l @(loc_8c0150cc,PC),r0
	mov.l @(loc_8c0150c8,PC),r3
	mov.w @(loc_8c0150c2,PC),r2
	mov.b r2,@r3
	mov.l @r0,r1
	mov 0x02,r0
	mov.w r0,@(0xC,r1)
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c014fe4:
	mov.l @(loc_8c0150c8,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bt loc_8c014ff0
	bra loc_8c0154c8
	nop

loc_8c014ff0:
	mov.l @r3,r1
	mov 0x03,r0
	mov.b r0,@(0x7,r1)
	mov 0x00,r0
	mov.l @r3,r1
	mov 0x0B,r3
	mov.w r0,@(0xC,r1)
	mov.l @(loc_8c0150d0,PC),r1
	mov.b r3,@r1
	mov.l @(loc_8c0150d4,PC),r3
	jsr @r3
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c015010:
	mov.l @(loc_8c0150c8,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c01501c
	bra loc_8c01546a
	nop

loc_8c01501c:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c015024:
	mov.l @r3,r0
	mov.w @(0xC,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c015044

	cmp/eq 0x01,r0
	bt loc_8c01506e

	cmp/eq 0x02,r0
	bt loc_8c015098

	cmp/eq 0x03,r0
	bt loc_8c0150dc

	cmp/eq 0x04,r0
	bt loc_8c015106

	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;==============================================
loc_8c015044:
	mov.l @(loc_8c0150d8,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c015052
	bra loc_8c0154c8
	nop

loc_8c015052:
	mov.l @(loc_8c0150cc,PC),r3
	mov 0x04,r0
	mov 0x15,r1
	mov.l @r3,r2
	mov.w r0,@(0xC,r2)
	mov.l @(loc_8c0150d0,PC),r2
	mov.b r1,@r2
	mov.l @(loc_8c0150d4,PC),r1
	jsr @r1
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;==============================================
loc_8c01506e:
	mov.l @(loc_8c0150d8,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c01507c
	bra loc_8c0154c8
	nop

loc_8c01507c:
	mov.l @(loc_8c0150cc,PC),r3
	mov 0x04,r0
	mov 0x0F,r1
	mov.l @r3,r2
	mov.w r0,@(0xC,r2)
	mov.l @(loc_8c0150d0,PC),r2
	mov.b r1,@r2
	mov.l @(loc_8c0150d4,PC),r1
	jsr @r1
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c015098:
	mov.l @(loc_8c0150d8,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c0150a6
	bra loc_8c0154c8
	nop

loc_8c0150a6:
	mov.l @(loc_8c0150cc,PC),r3
	mov 0x04,r0
	mov 0x17,r1
	mov.l @r3,r2
	mov.w r0,@(0xC,r2)
	mov.l @(loc_8c0150d0,PC),r2
	mov.b r1,@r2
	mov.l @(loc_8c0150d4,PC),r1
	jsr @r1
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0150c2:
	#data 0x00ff
	#align4
loc_8c0150c4:
	#data loc_8c011bbc
loc_8c0150c8:
	#data 0x8c2897aa
loc_8c0150cc:
	#data work.GameGlobalPointer
loc_8c0150d0:
	#data 0x8c2897a9
loc_8c0150d4:
	#data bank02.loc_8c023bc0
loc_8c0150d8:
	#data loc_8c011d0c

;----------------------------------------------
loc_8c0150dc:
	mov.l @(loc_8c0152d4,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c0150ea
	bra loc_8c0154c8
	nop

loc_8c0150ea:
	mov.l @(loc_8c0152d8,PC),r3
	mov 0x04,r0
	mov 0x07,r1
	mov.l @r3,r2
	mov.w r0,@(0xC,r2)
	mov.l @(loc_8c0152dc,PC),r2
	mov.b r1,@r2
	mov.l @(loc_8c0152e0,PC),r1
	jsr @r1
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c015106:
	mov.l @(loc_8c0152d4,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c015114
	bra loc_8c0154c8
	nop

loc_8c015114:
	bra loc_8c015452
	nop

;==============================================
loc_8c015118:
	mov.l @(loc_8c0152e8,PC),r0
	mov 0x01,r1
	mov.l @(loc_8c0152e4,PC),r2
	mov.l @(loc_8c0152ec,PC),r3
	mov.b r1,@r2
	mov.l @r0,r5
	jsr @r3
	mov r1,r4
	cmp/eq 0xFF,r0
	bf.s loc_8c015132
	mov.l r0,@r15
	bra loc_8c0154c8
	nop

loc_8c015132:
	mov.l @(loc_8c0152e4,PC),r3
	tst r0,r0
	mov 0x00,r2
	bf.s loc_8c015154
	mov.b r2,@r3
	mov.l @(loc_8c0152d8,PC),r1
	mov 0x04,r0
	mov 0x0C,r3
	mov.l @r1,r2
	mov.b r0,@(0x7,r2)
	mov 0x00,r0
	mov.l @r1,r2
	mov.w r0,@(0xC,r2)
	mov.l @(loc_8c0152dc,PC),r2
	mov.b r3,@r2
	bra loc_8c01518a
	nop

loc_8c015154:
	mov.l @(loc_8c0152d8,PC),r2
	mov 0x06,r0
	mov.l @r2,r1
	mov.b r0,@(0x7,r1)
	mov 0x00,r0
	mov.l @r2,r1
	mov.w r0,@(0xC,r1)
	mov.l @(loc_8c0152f0,PC),r1
	mov.b @r1,r0
	cmp/eq 0x01,r0
	bf loc_8c015184
	mov.l @(loc_8c0152e8,PC),r3
	mov.l @(loc_8c0152f4,PC),r2
	mov.l @r3,r0
	mov.l @r2,r3
	cmp/eq r0,r3
	bf loc_8c015184
	mov.l @(loc_8c0152f0,PC),r3
	mov 0x00,r1
	mov.l @(loc_8c0152dc,PC),r2
	mov.b r1,@r3
	mov 0x14,r1
	bra loc_8c01518a
	mov.b r1,@r2

loc_8c015184:
	mov.l @(loc_8c0152dc,PC),r3
	mov 0x15,r2
	mov.b r2,@r3

loc_8c01518a:
	mov.l @(loc_8c0152e0,PC),r3
	jsr @r3
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c015198:
	mov.l @r3,r0
	mov.w @(0xC,r0),r0

	cmp/eq 0x00,r0
	bt loc_8c0151b0

	cmp/eq 0x01,r0
	bt loc_8c0151ec

	cmp/eq 0x02,r0
	bt loc_8c01526a
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c0151b0:
	mov.l @(loc_8c0152f8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0152e8,PC),r2
	mov.l r0,@(0x4,r15)
	mov.l @r2,r3
	mov 0x01,r2
	shad r3,r2
	tst r2,r0
	bt loc_8c0151d0
	mov.l @(loc_8c0152d8,PC),r3
	mov 0x02,r0
	mov.l @r3,r2
	mov.w r0,@(0xC,r2)
	bra loc_8c0151d8
	nop

loc_8c0151d0:
	mov.l @(loc_8c0152d8,PC),r2
	mov 0x01,r0
	mov.l @r2,r3
	mov.w r0,@(0xC,r3)

loc_8c0151d8:
	mov.l @(loc_8c0152dc,PC),r3
	mov 0x11,r2
	mov.b r2,@r3

loc_8c0151de:
	mov.l @(loc_8c0152e0,PC),r1
	jsr @r1
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c0151ec:
	mov.l @(loc_8c0152e4,PC),r0
	mov 0x01,r1
	mov.l @(loc_8c0152e8,PC),r2
	mov.l @(loc_8c0152fc,PC),r3
	mov.b r1,@r0
	jsr @r3
	mov.l @r2,r4
	cmp/eq 0xFF,r0
	bf.s loc_8c015204
	mov.l r0,@r15
	bra loc_8c0154c8
	nop

loc_8c015204:
	tst r0,r0
	bf loc_8c015220
	mov.l @(loc_8c0152e4,PC),r2
	mov 0x01,r3
	mov.b r3,@r2
	mov.l @(loc_8c0152d8,PC),r3
	mov.l @r3,r1
	mov.w @(0xC,r1),r0
	add 0x01,r0
	mov.w r0,@(0xC,r1)
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c015220:
	mov.l @(loc_8c0152e4,PC),r2
	mov 0x00,r3
	mov 0x06,r0
	mov.b r3,@r2
	mov.l @(loc_8c0152d8,PC),r3
	mov.l @r3,r1
	mov.b r0,@(0x7,r1)
	mov 0x00,r0
	mov.l @r3,r1
	mov.w r0,@(0xC,r1)
	mov.l @(loc_8c0152f0,PC),r1
	mov.b @r1,r0
	cmp/eq 0x01,r0
	bf loc_8c015256
	mov.l @(loc_8c0152e8,PC),r2
	mov.l @(loc_8c0152f4,PC),r3
	mov.l @r2,r0
	mov.l @r3,r2
	cmp/eq r0,r2
	bf loc_8c015256
	mov.l @(loc_8c0152f0,PC),r3
	mov 0x00,r1
	mov.l @(loc_8c0152dc,PC),r2
	mov.b r1,@r3
	mov 0x14,r1
	bra loc_8c01525c
	mov.b r1,@r2

loc_8c015256:
	mov.l @(loc_8c0152dc,PC),r3
	mov 0x15,r2
	mov.b r2,@r3

loc_8c01525c:
	mov.l @(loc_8c0152e0,PC),r3
	jsr @r3
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c01526a:
	mov.l @(loc_8c0152e4,PC),r1
	mov 0x01,r0
	mov.l @(loc_8c0152e8,PC),r2
	mov 0x00,r5
	mov.l @(loc_8c015300,PC),r3
	mov.b r0,@r1
	jsr @r3
	mov.l @r2,r4
	cmp/eq 0xFF,r0
	bf.s loc_8c015284
	mov.l r0,@r15
	bra loc_8c0154c8
	nop

loc_8c015284:
	mov.l @(loc_8c0152e4,PC),r3
	tst r0,r0
	mov 0x00,r2
	bf.s loc_8c015308
	mov.b r2,@r3
	mov.l @(loc_8c0152d8,PC),r1
	mov.l @r1,r2
	mov.b @(0x7,r2),r0
	add 0x01,r0
	mov.b r0,@(0x7,r2)
	mov.l @(loc_8c0152f0,PC),r2
	mov.b @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c0152bc
	mov.l @(loc_8c0152e8,PC),r3
	mov.l @(loc_8c0152f4,PC),r1
	mov.l @r3,r0
	mov.l @r1,r3
	cmp/eq r0,r3
	bf loc_8c0152bc
	mov.l @(loc_8c0152d8,PC),r3
	mov 0x02,r0
	mov 0x16,r1
	mov.l @r3,r2
	mov.w r0,@(0xC,r2)
	mov.l @(loc_8c0152dc,PC),r2
	bra loc_8c01533e
	mov.b r1,@r2

loc_8c0152bc:
	mov.l @(loc_8c0152d8,PC),r2
	mov 0x00,r0
	mov 0x12,r1
	mov.l @r2,r3
	mov 0x01,r2
	mov.w r0,@(0xC,r3)
	mov.l @(loc_8c0152dc,PC),r3
	mov.l @(loc_8c015304,PC),r0
	mov.b r1,@r3
	bra loc_8c01533e
	mov.b r2,@r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
loc_8c0152d4:
	#data loc_8c011d0c
loc_8c0152d8:
	#data work.GameGlobalPointer
loc_8c0152dc:
	#data 0x8c2897a9
loc_8c0152e0:
	#data bank02.loc_8c023bc0
loc_8c0152e4:
	#data 0x8c2897a2
loc_8c0152e8:
	#data 0x8c2897ac
loc_8c0152ec:
	#data bank11.loc_8c116f34
loc_8c0152f0:
	#data 0x8c28977b
loc_8c0152f4:
	#data 0x8c289784
loc_8c0152f8:
	#data bank11.loc_8c115e8c
loc_8c0152fc:
	#data bank11.loc_8c117cf4
loc_8c015300:
	#data bank11.loc_8c1180b2
loc_8c015304:
	#data 0x8c2897aa

;----------------------------------------------
loc_8c015308:
	mov.l @(loc_8c0153f4,PC),r1
	mov 0x06,r0
	mov.l @r1,r2
	mov.b r0,@(0x7,r2)
	mov 0x00,r0
	mov.l @r1,r2
	mov.w r0,@(0xC,r2)
	mov.l @(loc_8c0153f8,PC),r2
	mov.b @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c015338
	mov.l @(loc_8c0153fc,PC),r3
	mov.l @(loc_8c015400,PC),r1
	mov.l @r3,r0
	mov.l @r1,r3
	cmp/eq r0,r3
	bf loc_8c015338
	mov.l @(loc_8c0153f8,PC),r3
	mov 0x00,r2
	mov.l @(loc_8c015404,PC),r1
	mov.b r2,@r3
	mov 0x14,r2
	bra loc_8c01533e
	mov.b r2,@r1

loc_8c015338:
	mov.l @(loc_8c015404,PC),r3
	mov 0x15,r2
	mov.b r2,@r3

loc_8c01533e:
	mov.l @(loc_8c015408,PC),r3
	jsr @r3
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;----------------------------------------------
loc_8c01534c:
	mov.l @r3,r0
	mov.w @(0xC,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c015364
	cmp/eq 0x01,r0
	bt loc_8c0153d2
	cmp/eq 0x02,r0
	bt loc_8c015424
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;==============================================
loc_8c015364:
	mov.l @(loc_8c01540c,PC),r2
	mov 0x01,r6
	mov.w @(0xA,r15),r0
	mov.b @r2,r5
	mov r2,r8
	mov.l @(loc_8c015410,PC),r1
	extu.b r5,r5
	jsr @r1
	mov r0,r4
	mov.l @(loc_8c015414,PC),r3
	jsr @r3
	mov.b r0,@r8
	tst r0,r0
	bt loc_8c0153ae
	mov.l @(loc_8c01540c,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c015396
	mov.l @(loc_8c0153fc,PC),r1
	mov 0x01,r3
	mov.l @(loc_8c015400,PC),r0
	mov.l @r1,r2
	mov.l r2,@r0
	mov.l @(loc_8c0153f8,PC),r2
	mov.b r3,@r2

loc_8c015396:
	mov.l @(loc_8c0153f4,PC),r0
	mov.l @r0,r1
	mov 0x01,r0
	mov.w r0,@(0xC,r1)

loc_8c01539e:
	mov.l @(loc_8c01540c,PC),r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c0153ae:
	mov.l @(loc_8c015418,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0153bc
	bra loc_8c0154c8
	nop

loc_8c0153bc:
	mov.l @(loc_8c0153f4,PC),r2
	mov 0x01,r0
	mov.w @(loc_8c0153f2,PC),r1
	mov.l @r2,r3
	mov.w r0,@(0xC,r3)
	mov.l @(loc_8c01540c,PC),r3
	mov.b r1,@r3
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c0153d2:
	mov.l @(loc_8c01540c,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bf loc_8c0154c8
	mov.l @r3,r1
	mov 0x07,r0
	mov.l @(loc_8c01541c,PC),r4
	mov 0x01,r6
	mov.b r0,@(0x7,r1)
	mov.l @(loc_8c015420,PC),r1
	jsr @r1
	mov 0x0A,r5
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0153f2:
	#data 0x00ff
	#align4
loc_8c0153f4:
	#data work.GameGlobalPointer
loc_8c0153f8:
	#data 0x8c28977b
loc_8c0153fc:
	#data 0x8c2897ac
loc_8c015400:
	#data 0x8c289784
loc_8c015404:
	#data 0x8c2897a9
loc_8c015408:
	#data bank02.loc_8c023bc0
loc_8c01540c:
	#data 0x8c2897aa
loc_8c015410:
	#data loc_8c013572
loc_8c015414:
	#data loc_8c011a9a
loc_8c015418:
	#data loc_8c011bbc
loc_8c01541c:
	#data 0xff000000
loc_8c015420:
	#data bank03.loc_8c0355b2

;----------------------------------------------
loc_8c015424:
	mov.l @(loc_8c0154d0,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c0154c8
	mov.l @(loc_8c0154d4,PC),r3
	mov 0x07,r0
	mov.l @(loc_8c0154d8,PC),r4
	mov 0x01,r6
	mov.l @r3,r2
	mov.b r0,@(0x7,r2)
	mov.l @(loc_8c0154dc,PC),r2
	jsr @r2
	mov 0x0A,r5
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;======================================
loc_8c015448:
	mov.l @(loc_8c0154d0,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bt loc_8c0154c8

loc_8c015452:
	mov.l @(loc_8c0154e0,PC),r2
	jsr @r2
	mov 0x03,r4
	bra loc_8c01546a
	nop

;==============================================
loc_8c01545c:
	mov.l @(loc_8c0154e4,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bf loc_8c0154c8
	bra loc_8c01549c
	nop

;==============================================
loc_8c01546a:
	mov.l @(loc_8c0154d4,PC),r3
	mov 0x02,r0
	mov.l @r3,r2
	mov.b r0,@(0x6,r2)
	mov 0x00,r0
	mov.l @r3,r2
	mov r0,r1
	mov.b r0,@(0x7,r2)
	mov.l @r3,r2
	mov 0x00,r3
	mov.w r0,@(0xC,r2)
	mov.l @(loc_8c0154ec,PC),r0
	mov.l @(loc_8c0154e8,PC),r2
	mov.b r1,@r2
	mov.b r3,@r0
	mov 0x00,r0
	mov.l @(loc_8c0154d4,PC),r3
	mov.l @r3,r1
	mov.w r0,@(0x8,r1)
	mov.l @r3,r2
	mov.w r0,@(0xA,r2)
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

loc_8c01549c:
	mov.l @(loc_8c0154d4,PC),r2
	mov 0x00,r0
	mov r0,r1
	mov.l @r2,r3
	mov.b r0,@(0x5,r3)
	mov.l @r2,r3
	mov.b r0,@(0x6,r3)
	mov.l @r2,r3
	mov.b r0,@(0x7,r3)
	mov.l @r2,r3
	mov 0x00,r2
	mov.w r0,@(0xC,r3)
	mov.l @(loc_8c0154ec,PC),r0
	mov.l @(loc_8c0154e8,PC),r3
	mov.b r1,@r3
	mov.b r2,@r0
	mov 0x00,r0
	mov.l @(loc_8c0154d4,PC),r2
	mov.l @r2,r1
	mov.w r0,@(0x8,r1)
	mov.l @r2,r3
	mov.w r0,@(0xA,r3)

loc_8c0154c8:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0154d0:
	#data loc_8c011d0c
loc_8c0154d4:
	#data work.GameGlobalPointer
loc_8c0154d8:
	#data 0xff000000
loc_8c0154dc:
	#data bank03.loc_8c0355b2
loc_8c0154e0:
	#data bank04.loc_8c04257c
loc_8c0154e4:
	#data bank03.loc_8c03563a
loc_8c0154e8:
	#data 0x8c2897a9
loc_8c0154ec:
	#data 0x8c2897aa

;==============================================
loc_8c0154f0:
	mov.l @(loc_8c0156f8,PC),r5
	mov 0x00,r0
	mov.l @r5,r3
	mov.b r0,@(0x3,r3)
	mov.l @r5,r3
	mov.b r0,@(0x4,r3)
	mov.l @r5,r3
	rts
	mov.b r0,@(0x5,r3)

;----------------------------------------------
loc_8c015502:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0156fc,PC),r3
	mov.l @(loc_8c0156f8,PC),r14
	jsr @r3
	mov 0x03,r4
	mov r0,r4
	mov.l @r14,r0
	mov.b @(0x3,r0),r0
	cmp/eq 0x00,r0
	bt.s loc_8c01553a
	mov 0x00,r13
	cmp/eq 0x01,r0
	bt loc_8c015558
	cmp/eq 0x02,r0
	bt loc_8c0155c8
	cmp/eq 0x03,r0
	bt loc_8c015588
	cmp/eq 0x04,r0
	bt loc_8c0155c8
	cmp/eq 0x05,r0
	bt loc_8c0155dc
	cmp/eq 0x06,r0
	bt loc_8c01561a
	bra loc_8c015640
	nop

loc_8c01553a:
	mov.l @(loc_8c015700,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c015704,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c015708,PC),r3
	jsr @r3
	mov 0x13,r4
	mov.l @r14,r2
	mov r13,r0
	nop
	mov.b r0,@(0x4,r2)
	mov.l @r14,r3
	mov.b r0,@(0x5,r3)

loc_8c015558:
	mov.l @r14,r3
	mov 0x02,r0
	mov.b r0,@(0x3,r3)
	mov.l @(loc_8c01570c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c015710,PC),r4
	mov.l @(loc_8c015714,PC),r2
	mov.l r13,@(0x18,r4)
	mov.l r13,@(0x1C,r4)
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c015718,PC),r3
	jsr @r3
	mov 0x08,r4
	lds.l @r15+,pr
	mov.l @(loc_8c015720,PC),r2
	mov 0x0A,r5
	mov.l @(loc_8c01571c,PC),r4
	mov 0x00,r6
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c015588:
	mov.l @r14,r5
	mov 0x02,r6
	mov.l @r14,r8
	mov.b @(0x4,r5),r0
	mov.l @(loc_8c015724,PC),r3
	add 0x04,r8
	jsr @r3
	mov r0,r5
	mov.l @(loc_8c015728,PC),r3
	jsr @r3
	mov.b r0,@r8
	tst r0,r0
	bt loc_8c0155b4
	mov.l @r14,r0
	mov.b @(0x4,r0),r0
	cmp/eq 0x02,r0
	bt loc_8c0155be
	mov.l @r14,r3
	mov 0x04,r0
	mov.b r0,@(0x3,r3)
	bra loc_8c015608
	nop

loc_8c0155b4:
	mov.l @(loc_8c01572c,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c015640

loc_8c0155be:
	mov.l @r14,r3
	mov 0x06,r0
	mov.b r0,@(0x3,r3)
	bra loc_8c015608
	nop

loc_8c0155c8:
	mov.l @(loc_8c015730,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c015640
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	bra loc_8c015640
	mov.b r0,@(0x3,r3)

loc_8c0155dc:
	mov.l @r14,r0
	mov.b @(0x4,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c0155ec
	cmp/eq 0x01,r0
	bt loc_8c0155f6
	bra loc_8c015600
	nop

loc_8c0155ec:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	bra loc_8c01564a
	mov.l @r15+,r14

loc_8c0155f6:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	bra loc_8c015cc4
	mov.l @r15+,r14

loc_8c015600:
	mov.l @r14,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)

loc_8c015608:
	lds.l @r15+,pr
	mov.l @(loc_8c015720,PC),r3
	mov 0x0A,r5
	mov.l @(loc_8c01571c,PC),r4
	mov 0x01,r6
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c01561a:
	mov.l @(loc_8c015730,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c015640
	mov.l @r14,r2
	mov r2,r0
	nop
	mov 0x02,r3
	add r0,r3
	mov.b r13,@r3
	mov r13,r0
	nop
	mov.b r0,@(0x1,r2)
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	bra loc_8c0154f0
	mov.l @r15+,r14

loc_8c015640:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c01564a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c015734,PC),r3
	jsr @r3
	mov.w r4,@r15
	mov.l @(loc_8c0156f8,PC),r14
	mov 0x01,r11
	mov.l @(loc_8c015710,PC),r13
	mov.l @r14,r4
	mov.b @(0x5,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_8c015694
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c0156ca
	cmp/eq 0x02,r0
	bt loc_8c0156e2
	cmp/eq 0x03,r0
	bt loc_8c01573c
	cmp/eq 0x04,r0
	bf loc_8c015680
	bra loc_8c01577e
	nop

loc_8c015680:
	cmp/eq 0x05,r0
	bf loc_8c015688
	bra loc_8c01578e
	nop

loc_8c015688:
	cmp/eq 0x06,r0
	bf loc_8c015690
	bra loc_8c015824
	nop

loc_8c015690:
	bra loc_8c01584c
	nop

loc_8c015694:
	mov.l @(loc_8c01570c,PC),r3
	jsr @r3
	nop
	mov.l @r14,r2
	mov r11,r0
	nop
	mov.b r0,@(0x5,r2)
	mov 0x5C,r0
	mov 0xFF,r3
	mov.l r3,@(r0,r13)
	mov.l @(loc_8c015714,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c015718,PC),r2
	jsr @r2
	mov 0x08,r4
	mov.l @(loc_8c01571c,PC),r4
	mov 0x0A,r5
	mov 0x00,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c015720,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0156ca:
	mov.l @(loc_8c015730,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0156d8
	bra loc_8c01584c
	nop

loc_8c0156d8:
	mov.l @r14,r3
	mov.b @(0x5,r3),r0
	add 0x01,r0
	bra loc_8c01584c
	mov.b r0,@(0x5,r3)

loc_8c0156e2:
	mov.l @(loc_8c015738,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c015742
	mov.l @r14,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	bra loc_8c0157a4
	mov.b r0,@(0x5,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0156f8:
	#data work.GameGlobalPointer
loc_8c0156fc:
	#data loc_8c01357a
loc_8c015700:
	#data bank03.loc_8c0357d8
loc_8c015704:
	#data bank03.loc_8c03580c
loc_8c015708:
	#data bank03.loc_8c032be0
loc_8c01570c:
	#data bank04.loc_8c044d8c
loc_8c015710:
	#data 0x8c289750
loc_8c015714:
	#data bank02.loc_8c026364
loc_8c015718:
	#data loc_8c016df2
loc_8c01571c:
	#data 0xff000000
loc_8c015720:
	#data bank03.loc_8c0355b2
loc_8c015724:
	#data loc_8c013572
loc_8c015728:
	#data loc_8c011a9a
loc_8c01572c:
	#data loc_8c011bbc
loc_8c015730:
	#data bank03.loc_8c03563a
loc_8c015734:
	#data loc_8c011898
loc_8c015738:
	#data loc_8c0118a8

;----------------------------------------------
loc_8c01573c:
	mov.l @(0x18,r13),r2
	tst r2,r2
	bf loc_8c015758

loc_8c015742:
	mov.l @r14,r3
	mov 0x05,r0
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x6,r3)
	mov 0x5C,r0
	mov 0xFF,r3
	bra loc_8c01584c
	mov.l r3,@(r0,r13)

loc_8c015758:
	mov.l @(loc_8c015934,PC),r3
	jsr @r3
	mov.w @r15,r4
	mov.l @(loc_8c015938,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c015770
	mov.l @r14,r2
	mov 0x04,r0
	bra loc_8c01584c
	mov.b r0,@(0x5,r2)

loc_8c015770:
	mov.l @(loc_8c01593c,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c015808
	bra loc_8c01584c
	nop

loc_8c01577e:
	mov.w @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c01585a
	mov.l @r15+,r14

loc_8c01578e:
	mov.l @(0x18,r13),r3
	tst r3,r3
	bt.s loc_8c0157ac
	mov 0x02,r5
	mov r5,r0
	nop
	mov.b r0,@(0x5,r4)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x6,r3)

loc_8c0157a4:
	mov r13,r3
	add 0x59,r3
	bra loc_8c0157e8
	mov.b r11,@r3

loc_8c0157ac:
	mov.b @(0x6,r4),r0
	cmp/eq 0x00,r0
	bt loc_8c0157be
	cmp/eq 0x01,r0
	bt loc_8c0157ce
	cmp/eq 0x02,r0
	bt loc_8c0157f8
	bra loc_8c01584c
	nop

loc_8c0157be:
	mov.b @(0x6,r4),r0
	mov r13,r3
	mov.l @(loc_8c015940,PC),r2
	add 0x59,r3
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	jsr @r2
	mov.b r5,@r3

loc_8c0157ce:
	mov.l @(loc_8c015944,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c01584c
	mov.l @r14,r3
	mov 0x04,r2
	mov.b @(0x6,r3),r0
	add 0x01,r0
	mov.b r0,@(0x6,r3)
	mov r13,r3
	add 0x59,r3
	mov.b r2,@r3

loc_8c0157e8:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c015940,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0157f8:
	mov.l @(loc_8c015944,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c01584c
	mov.l @(loc_8c015948,PC),r3
	jsr @r3
	mov 0x03,r4

loc_8c015808:
	mov.l @r14,r2
	mov 0x06,r0
	mov.l @(loc_8c01594c,PC),r4
	mov 0x0A,r5
	mov.b r0,@(0x5,r2)
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c015950,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c015824:
	mov.l @(loc_8c015954,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c01584c
	mov.l @r14,r2
	mov r11,r0
	nop
	mov.b r0,@(0x3,r2)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)
	mov r13,r3
	add 0x59,r3
	mov.b r0,@r3

loc_8c01584c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c01585a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c01595c,PC),r14
	mov 0x5C,r0
	mov.w r4,@r15
	mov 0x02,r10
	mov.l @(loc_8c015958,PC),r13
	mov 0x01,r11
	mov.l @(r0,r14),r4
	mov 0x00,r12
	mov.l @r13,r0
	mov r14,r8
	mov.l @(loc_8c015944,PC),r9
	mov.b @(0x6,r0),r0
	cmp/eq 0x00,r0
	bt.s loc_8c0158ca
	add 0x5A,r8
	cmp/eq 0x01,r0
	bt loc_8c015902
	cmp/eq 0x02,r0
	bf loc_8c015896
	bra loc_8c0159e2
	nop

loc_8c015896:
	cmp/eq 0x03,r0
	bf loc_8c01589e
	bra loc_8c015a2a
	nop

loc_8c01589e:
	cmp/eq 0x04,r0
	bf loc_8c0158a6
	bra loc_8c015a7c
	nop

loc_8c0158a6:
	cmp/eq 0x05,r0
	bf loc_8c0158ae
	bra loc_8c015ac4
	nop

loc_8c0158ae:
	cmp/eq 0x06,r0
	bf loc_8c0158b6
	bra loc_8c015b5e
	nop

loc_8c0158b6:
	cmp/eq 0x07,r0
	bf loc_8c0158be
	bra loc_8c015c24
	nop

loc_8c0158be:
	cmp/eq 0x08,r0
	bf loc_8c0158c6
	bra loc_8c015c36
	nop

loc_8c0158c6:
	bra loc_8c015c94
	nop

loc_8c0158ca:
	mov.l @(loc_8c015960,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0158f0
	mov.l @r13,r3
	mov r11,r0
	nop
	mov.b r0,@(0x6,r3)
	mov r14,r3
	mov 0x06,r2
	add 0x59,r3
	mov.b r2,@r3
	mov 0x5A,r0
	mov.l @(loc_8c015940,PC),r3
	jsr @r3
	mov.b r11,@(r0,r14)
	bra loc_8c0158f8
	nop

loc_8c0158f0:
	mov.l @r13,r3
	mov r10,r0
	nop
	mov.b r0,@(0x6,r3)

loc_8c0158f8:
	mov.l @r13,r3
	mov r12,r0
	nop
	bra loc_8c015c94
	mov.b r0,@(0x7,r3)

loc_8c015902:
	mov.l @(loc_8c015964,PC),r2
	jsr @r2
	nop
	mov r0,r4
	tst r4,r4
	bf loc_8c015912
	bra loc_8c015c60
	nop

loc_8c015912:
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c01591e
	bra loc_8c015c60
	nop

loc_8c01591e:
	mov.l @r13,r0
	mov.b @(0x7,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c015968
	cmp/eq 0x01,r0
	bt loc_8c0159c6
	cmp/eq 0x02,r0
	bt loc_8c0159d2
	bra loc_8c015c94
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c015934:
	#data loc_8c011910
loc_8c015938:
	#data loc_8c011a9a
loc_8c01593c:
	#data loc_8c011bbc
loc_8c015940:
	#data bank02.loc_8c0268a4
loc_8c015944:
	#data loc_8c011d0c
loc_8c015948:
	#data bank04.loc_8c04257c
loc_8c01594c:
	#data 0xff000000
loc_8c015950:
	#data bank03.loc_8c0355b2
loc_8c015954:
	#data bank03.loc_8c03563a
loc_8c015958:
	#data work.GameGlobalPointer
loc_8c01595c:
	#data 0x8c289750
loc_8c015960:
	#data bank11.loc_8c115c40
loc_8c015964:
	#data bank11.loc_8c115bf0

;----------------------------------------------
loc_8c015968:
	mov r14,r3
	add 0x5A,r3
	mov.l r3,@(0x4,r15)
	mov 0x01,r6
	mov.l r3,@-r15
	mov.b @r3,r5
	mov.w @(0x4,r15),r0
	mov.l @(loc_8c015a6c,PC),r2
	extu.b r5,r5
	jsr @r2
	mov r0,r4
	mov.l @(0xF0,PC),r3
	mov.l @r15+,r1
	jsr @r3
	mov.b r0,@r1
	tst r0,r0
	bt loc_8c0159a8
	mov 0x5A,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c01599e
	mov.l @r13,r3
	mov r11,r0
	nop
	mov.b r0,@(0x7,r3)
	bra loc_8c015ba8
	nop

loc_8c01599e:
	mov.l @r13,r2
	mov r10,r0
	nop
	bra loc_8c015ba8
	mov.b r0,@(0x7,r2)

loc_8c0159a8:
	mov.l @(0xC8,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0159b6
	bra loc_8c015c94
	nop

loc_8c0159b6:
	mov.w @(loc_8c015a6a,PC),r3
	mov 0x5A,r0
	mov.b r3,@(r0,r14)
	mov.l @r13,r2
	mov r10,r0
	nop
	bra loc_8c015c94
	mov.b r0,@(0x7,r2)

loc_8c0159c6:
	mov 0x5A,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0159f6
	bra loc_8c015c94
	nop

loc_8c0159d2:
	mov 0x5A,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0159de
	bra loc_8c015c60
	nop

loc_8c0159de:
	bra loc_8c015c94
	nop

loc_8c0159e2:
	mov.l @(0x94,PC),r2
	jsr @r2
	nop
	mov r0,r4
	mov 0x5C,r0
	mov.l @(r0,r14),r3
	mov r11,r2
	shad r3,r2
	tst r2,r4
	bt loc_8c015a10

loc_8c0159f6:
	mov.l @r13,r2
	mov 0x04,r0
	mov.b r0,@(0x6,r2)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)
	mov r14,r3
	mov 0x07,r2
	add 0x59,r3
	mov.b r2,@r3
	bra loc_8c015c7e
	nop

loc_8c015a10:
	mov.l @r13,r3
	mov 0x03,r4
	mov r4,r0
	nop
	mov.b r0,@(0x6,r3)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)
	mov r14,r3
	add 0x59,r3
	bra loc_8c015c7e
	mov.b r4,@r3

loc_8c015a2a:
	mov.l @r13,r0
	mov.b @(0x7,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c015a3a
	cmp/eq 0x01,r0
	bt loc_8c015a5a
	bra loc_8c015c94
	nop

loc_8c015a3a:
	jsr @r9
	nop
	tst r0,r0
	bf loc_8c015a46
	bra loc_8c015c94
	nop

loc_8c015a46:
	mov.l @r13,r2
	mov r14,r3
	add 0x59,r3
	mov.b @(0x7,r2),r0
	add 0x01,r0
	mov.b r0,@(0x7,r2)
	mov 0x04,r2
	mov.b r2,@r3
	bra loc_8c015c7e
	nop

loc_8c015a5a:
	jsr @r9
	nop
	tst r0,r0
	bt loc_8c015a66
	bra loc_8c015c2c
	nop

loc_8c015a66:
	bra loc_8c015c94
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c015a6a:
	#data 0x00ff
loc_8c015a6c:
	#data loc_8c013572 loc_8c011a9a loc_8c011bbc bank11.loc_8c115f7c

;----------------------------------------------
loc_8c015a7c:
	mov 0x52,r0
	mov.l @(loc_8c015bb8,PC),r3
	mov.b r11,@(r0,r14)
	mov 0x5C,r0
	mov.l @(r0,r14),r5
	jsr @r3
	mov 0x01,r4
	cmp/eq 0xFF,r0
	bf.s loc_8c015a94
	mov r0,r4
	bra loc_8c015c94
	nop

loc_8c015a94:
	tst r4,r4
	bf loc_8c015b28
	mov.l @(0x120,PC),r2
	jsr @r2
	nop
	mov r0,r4
	mov 0x5C,r0
	mov.l @(r0,r14),r3
	mov r11,r2
	shad r3,r2
	tst r2,r4
	bt loc_8c015ab6
	mov.l @r13,r2
	mov.b @(0x6,r2),r0
	add 0x01,r0
	bra loc_8c015c94
	mov.b r0,@(0x6,r2)

loc_8c015ab6:
	mov 0x52,r0
	mov.b r12,@(r0,r14)
	mov 0x06,r0
	mov.l @r13,r3
	mov.b r0,@(0x6,r3)
	bra loc_8c015aec
	nop

loc_8c015ac4:
	mov 0x52,r0
	mov.l @(0xF8,PC),r3
	mov.b r11,@(r0,r14)
	mov 0x5C,r0
	mov 0x00,r5
	jsr @r3
	mov.l @(r0,r14),r4
	cmp/eq 0xFF,r0
	bf.s loc_8c015adc
	mov r0,r4
	bra loc_8c015c94
	nop

loc_8c015adc:
	tst r4,r4
	bf loc_8c015b28
	mov 0x52,r0
	mov.b r12,@(r0,r14)
	mov.l @r13,r3
	mov.b @(0x6,r3),r0
	add 0x01,r0
	mov.b r0,@(0x6,r3)

loc_8c015aec:
	mov 0x5C,r0
	mov.l @(0x34,r14),r2
	mov.l @(r0,r14),r3
	cmp/eq r3,r2
	bf loc_8c015b12
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c015b12
	mov.l @r13,r2
	mov r10,r0
	nop
	mov r14,r3
	mov.b r0,@(0x7,r2)
	mov 0x08,r2
	add 0x59,r3
	mov.b r2,@r3
	bra loc_8c015c7e
	nop

loc_8c015b12:
	mov.l @r13,r1
	mov r12,r0
	nop
	mov r14,r3
	mov 0x09,r2
	add 0x59,r3
	mov.b r0,@(0x7,r1)
	mov 0x5A,r0
	mov.b r2,@r3
	bra loc_8c015c7e
	mov.b r11,@(r0,r14)

loc_8c015b28:
	mov 0x52,r0
	mov.b r12,@(r0,r14)
	mov 0x07,r0
	mov.l @r13,r3
	mov.b r0,@(0x6,r3)
	mov 0x5C,r0
	mov.l @(0x34,r14),r2
	mov.l @(r0,r14),r3
	cmp/eq r3,r2
	bf loc_8c015b52
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c015b52
	mov r14,r2
	mov 0x0A,r3
	add 0x59,r2
	mov 0x2B,r0
	mov.b r3,@r2
	bra loc_8c015c7e
	mov.b r12,@(r0,r14)

loc_8c015b52:
	mov r14,r2
	mov 0x0B,r3
	add 0x59,r2
	mov.b r3,@r2
	bra loc_8c015c7e
	nop

loc_8c015b5e:
	mov.l @r13,r0
	mov.b @(0x7,r0),r0
	cmp/eq 0x00,r0
	bt loc_8c015b72
	cmp/eq 0x01,r0
	bt loc_8c015bea
	cmp/eq 0x02,r0
	bt loc_8c015bf4
	bra loc_8c015c94
	nop

loc_8c015b72:
	mov.b @r8,r5
	mov 0x01,r6
	mov.l @(0x4C,PC),r3
	extu.b r5,r5
	jsr @r3
	mov.w @r15,r4
	mov.l @(loc_8c015bc8,PC),r2
	jsr @r2
	mov.b r0,@r8
	tst r0,r0
	bt loc_8c015bd0
	mov 0x5A,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c015ba0
	mov 0x5C,r0
	mov.l @(r0,r14),r3
	mov 0x2B,r0
	mov.l r3,@(0x34,r14)
	mov.l @(0x30,PC),r3
	mov.b r11,@(r0,r14)
	jsr @r3
	mov.l @(0x34,r14),r4

loc_8c015ba0:
	mov.l @r13,r2
	mov r11,r0
	nop
	mov.b r0,@(0x7,r2)

loc_8c015ba8:
	mov 0x5A,r0
	mov.b @(r0,r14),r0
	mov 0x5A,r1
	add r14,r1
	or 0x80,r0
	mov.b r0,@r1
	bra loc_8c015c94
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c015bb8:
	#data bank11.loc_8c116f34 bank11.loc_8c115e8c bank11.loc_8c1180b2 loc_8c013572
loc_8c015bc8:
	#data loc_8c011a9a bank11.loc_8c116166

;----------------------------------------------
loc_8c015bd0:
	mov.l @(loc_8c015cac,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c015c94
	mov.l @r13,r2
	mov r11,r0
	nop
	mov.w @(loc_8c015ca8,PC),r3
	mov.b r0,@(0x7,r2)
	mov 0x5A,r0
	bra loc_8c015c94
	mov.b r3,@(r0,r14)

loc_8c015bea:
	mov.b @r8,r1
	tst r1,r1
	bt loc_8c015c02
	bra loc_8c015c94
	nop

loc_8c015bf4:
	jsr @r9
	nop
	tst r0,r0
	bt loc_8c015c94
	mov.l @(loc_8c015cb0,PC),r3
	jsr @r3
	mov 0x03,r4

loc_8c015c02:
	mov.l @r13,r2
	mov 0x08,r0
	mov.l @(loc_8c015cb4,PC),r4
	mov 0x0A,r5
	mov.b r0,@(0x6,r2)
	mov 0x01,r6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c015cb8,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c015c24:
	jsr @r9
	nop
	tst r0,r0
	bt loc_8c015c94

loc_8c015c2c:
	mov.l @(loc_8c015cb0,PC),r3
	jsr @r3
	mov 0x03,r4
	bra loc_8c015c60
	nop

loc_8c015c36:
	mov.l @(loc_8c015cbc,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c015c94
	mov.l @r13,r2
	mov r11,r0
	nop
	mov.b r0,@(0x3,r2)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r13,r3
	mov.b r0,@(0x6,r3)
	mov.l @r13,r3
	mov.b r0,@(0x7,r3)
	mov r14,r3
	add 0x59,r3
	bra loc_8c015c94
	mov.b r0,@r3

loc_8c015c60:
	mov.l @r13,r3
	mov r11,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x6,r3)
	mov.l @r13,r3
	mov.b r0,@(0x7,r3)
	mov.l @r13,r3
	mov.w r0,@(0xA,r3)
	mov r14,r3
	add 0x59,r3
	mov.b r11,@r3

loc_8c015c7e:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c015cc0,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c015c94:
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
loc_8c015ca8:
	#data 0x00ff
	#align4
loc_8c015cac:
	#data loc_8c011bbc
loc_8c015cb0:
	#data bank04.loc_8c04257c
loc_8c015cb4:
	#data 0xff000000
loc_8c015cb8:
	#data bank03.loc_8c0355b2
loc_8c015cbc:
	#data bank03.loc_8c03563a
loc_8c015cc0:
	#data bank02.loc_8c0268a4

;==============================================
loc_8c015cc4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c015ed4,PC),r3
	jsr @r3
	mov.w r4,@r15
	mov.l @(loc_8c015ee0,PC),r14
	mov 0x02,r11
	mov.l @(loc_8c015ed8,PC),r10
	mov.l @r14,r4
	mov.l @(loc_8c015edc,PC),r13
	mov.b @(0x5,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_8c015d06
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c015d3c
	cmp/eq 0x02,r0
	bt loc_8c015d8c
	cmp/eq 0x03,r0
	bt loc_8c015ddc
	cmp/eq 0x04,r0
	bt loc_8c015dee
	cmp/eq 0x05,r0
	bf loc_8c015d02
	bra loc_8c015e38
	nop

loc_8c015d02:
	bra loc_8c015e58
	nop

loc_8c015d06:
	mov.b @(0x5,r4),r0
	mov 0xFF,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x5C,r0
	mov.l r3,@(r0,r13)
	mov.l @(loc_8c015ee4,PC),r3
	jsr @r3
	mov 0x0B,r4
	mov.l @(loc_8c015ee8,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c015eec,PC),r3
	jsr @r3
	mov 0x08,r4
	mov.l @(loc_8c015ef0,PC),r4
	mov 0x0A,r5
	mov 0x00,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c015ef4,PC),r2
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c015d3c:
	mov.l @(loc_8c015ef8,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c015d4a
	bra loc_8c015e58
	nop

loc_8c015d4a:
	mov.l @(loc_8c015efc,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c015d70
	mov.l @r14,r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x5,r3)
	mov r13,r3
	mov 0x0C,r2
	add 0x59,r3
	mov.b r2,@r3
	bra loc_8c015d84
	nop

loc_8c015d70:
	mov.l @r14,r3
	mov 0x04,r0
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x6,r3)
	mov r13,r3
	add 0x59,r3
	mov.b r11,@r3

loc_8c015d84:
	jsr @r10
	nop
	bra loc_8c015e58
	nop

loc_8c015d8c:
	mov.l @(0x18,r13),r3
	tst r3,r3
	bf loc_8c015dae
	mov 0x04,r0
	mov.b r0,@(0x5,r4)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x6,r3)
	mov r13,r3
	add 0x59,r3
	jsr @r10
	mov.b r11,@r3
	mov 0x5C,r0
	mov 0xFF,r2
	bra loc_8c015e58
	mov.l r2,@(r0,r13)

loc_8c015dae:
	mov.l @(loc_8c015f00,PC),r3
	jsr @r3
	mov.w @r15,r4
	mov.l @(loc_8c015f04,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c015dce
	mov.l @r14,r2
	mov 0x03,r0
	mov.b r0,@(0x5,r2)
	mov.l @r14,r3
	mov r12,r0
	nop
	bra loc_8c015e58
	mov.b r0,@(0x6,r3)

loc_8c015dce:
	mov.l @(loc_8c015f08,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c015e1a
	bra loc_8c015e58
	nop

loc_8c015ddc:
	mov.w @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c015e68
	mov.l @r15+,r14

loc_8c015dee:
	mov.l @(0x18,r13),r3
	tst r3,r3
	bt loc_8c015e0a
	mov r11,r0
	nop
	mov r13,r3
	mov 0x0C,r2
	add 0x59,r3
	mov.b r0,@(0x5,r4)
	jsr @r10
	mov.b r2,@r3
	mov.l @(loc_8c015efc,PC),r3
	jsr @r3
	nop

loc_8c015e0a:
	mov.l @(loc_8c015f0c,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bt loc_8c015e58
	mov.l @(loc_8c015f10,PC),r2
	jsr @r2
	mov 0x03,r4

loc_8c015e1a:
	mov.l @r14,r3
	mov 0x05,r0
	mov.l @(loc_8c015ef0,PC),r4
	mov 0x0A,r5
	mov.b r0,@(0x5,r3)
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c015ef4,PC),r3
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c015e38:
	mov.l @(loc_8c015ef8,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c015e58
	mov.l @r14,r3
	mov 0x01,r0
	mov.b r0,@(0x3,r3)
	mov.l @r14,r3
	mov r12,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.b r0,@(0x7,r3)

loc_8c015e58:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c015e68:
	mov.l r14,@-r15
	mov 0x5C,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c015ee0,PC),r13
	mov.l r11,@-r15
	mov 0x01,r11
	mov.l @(loc_8c015edc,PC),r14
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @r13,r5
	mov.l @(r0,r14),r9
	mov.b @(0x6,r5),r0
	mov.l @(loc_8c015f0c,PC),r10
	cmp/eq 0x00,r0
	bt.s loc_8c015eb0
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c015ec4
	cmp/eq 0x02,r0
	bt loc_8c015f6e
	cmp/eq 0x03,r0
	bf loc_8c015e9c
	bra loc_8c015fae
	nop

loc_8c015e9c:
	cmp/eq 0x04,r0
	bf loc_8c015ea4
	bra loc_8c0160ce
	nop

loc_8c015ea4:
	cmp/eq 0x05,r0
	bf loc_8c015eac
	bra loc_8c016114
	nop

loc_8c015eac:
	bra loc_8c0161aa
	nop

loc_8c015eb0:
	mov.b @(0x6,r5),r0
	add 0x01,r0
	mov.b r0,@(0x6,r5)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)
	mov 0x5B,r0
	bra loc_8c0161aa
	mov.b r12,@(r0,r14)

loc_8c015ec4:
	mov.b @(0x7,r5),r0
	cmp/eq 0x00,r0
	bt loc_8c015f14
	cmp/eq 0x01,r0
	bt loc_8c015f58
	bra loc_8c0161aa
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c015ed4:
	#data loc_8c011898
loc_8c015ed8:
	#data bank02.loc_8c0268a4
loc_8c015edc:
	#data 0x8c289750
loc_8c015ee0:
	#data work.GameGlobalPointer
loc_8c015ee4:
	#data bank04.loc_8c044e56
loc_8c015ee8:
	#data bank02.loc_8c026364
loc_8c015eec:
	#data loc_8c016df2
loc_8c015ef0:
	#data 0xff000000
loc_8c015ef4:
	#data bank03.loc_8c0355b2
loc_8c015ef8:
	#data bank03.loc_8c03563a
loc_8c015efc:
	#data loc_8c0118a8
loc_8c015f00:
	#data loc_8c011910
loc_8c015f04:
	#data loc_8c011a9a
loc_8c015f08:
	#data loc_8c011bbc
loc_8c015f0c:
	#data loc_8c011d0c
loc_8c015f10:
	#data bank04.loc_8c04257c

;----------------------------------------------
loc_8c015f14:
	mov.l @(loc_8c01603c,PC),r3
	jsr @r3
	mov r9,r4
	tst r0,r0
	bt loc_8c015f44
	mov.l @r13,r3
	mov 0x02,r0
	mov.b r0,@(0x6,r3)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x7,r3)
	mov r14,r3
	mov 0x0F,r2
	add 0x59,r3
	mov.b r2,@r3
	mov.l @(0x108,PC),r3
	jsr @r3
	nop
	mov r14,r1
	add 0x22,r1
	mov.b r12,@r1
	bra loc_8c0161aa
	nop

loc_8c015f44:
	mov.l @r13,r2
	mov r11,r0
	nop
	mov r14,r3
	mov.b r0,@(0x7,r2)
	mov 0x0E,r2
	add 0x59,r3
	mov.b r2,@r3
	bra loc_8c016198
	nop

loc_8c015f58:
	jsr @r10
	nop
	tst r0,r0
	bf loc_8c015f64
	bra loc_8c0161aa
	nop

loc_8c015f64:
	mov.l @(0xDC,PC),r2
	jsr @r2
	mov 0x03,r4
	bra loc_8c016178
	nop

loc_8c015f6e:
	mov 0x51,r0
	mov.l @(0xD4,PC),r3
	mov.b r11,@(r0,r14)
	mov 0x5C,r0
	mov 0x00,r5
	jsr @r3
	mov.l @(r0,r14),r4
	cmp/eq 0x01,r0
	bf.s loc_8c015f92
	mov r0,r4
	mov 0x51,r0
	mov.b r12,@(r0,r14)
	mov.l @r13,r3
	mov.b @(0x6,r3),r0
	add 0x01,r0
	mov.b r0,@(0x6,r3)
	bra loc_8c015fa4
	nop

loc_8c015f92:
	tst r4,r4
	bt loc_8c015f9a
	bra loc_8c0161aa
	nop

loc_8c015f9a:
	mov 0x51,r0
	mov.b r12,@(r0,r14)
	mov 0x04,r0
	mov.l @r13,r3
	mov.b r0,@(0x6,r3)

loc_8c015fa4:
	mov.l @r13,r3
	mov r12,r0
	nop
	bra loc_8c0161aa
	mov.b r0,@(0x7,r3)

loc_8c015fae:
	mov.b @(0x7,r5),r0
	mov r14,r12
	cmp/eq 0x00,r0
	bt.s loc_8c015fcc
	add 0x5A,r12
	cmp/eq 0x01,r0
	bt loc_8c015ffe
	cmp/eq 0x02,r0
	bt loc_8c016070
	cmp/eq 0x03,r0
	bt loc_8c016090
	cmp/eq 0x04,r0
	bt loc_8c01609e
	bra loc_8c0161aa
	nop

loc_8c015fcc:
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c015fea
	mov.l @(0x34,r14),r2
	cmp/eq r9,r2
	bf loc_8c015fea
	mov r14,r3
	add 0x59,r3
	mov 0x1F,r2
	mov 0x04,r0
	mov.b r0,@(0x7,r5)
	mov.b r2,@r3
	bra loc_8c016198
	nop

loc_8c015fea:
	mov r11,r0
	nop
	mov r14,r3
	mov 0x10,r2
	add 0x59,r3
	mov.b r0,@(0x7,r5)
	mov 0x5A,r0
	mov.b r2,@r3
	bra loc_8c016198
	mov.b r11,@(r0,r14)

;==============================================
loc_8c015ffe:
	mov.l @(loc_8c01604c,PC),r2
	mov 0x01,r6
	mov.b @r12,r5
	jsr @r2
	extu.b r5,r5
	mov.l @(0x44,PC),r3
	jsr @r3
	mov.b r0,@r12
	tst r0,r0
	bt loc_8c016054
	mov 0x5A,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c016024
	mov.l @r13,r3
	mov 0x02,r0
	mov.b r0,@(0x7,r3)
	bra loc_8c01602a
	nop

loc_8c016024:
	mov.l @r13,r2
	mov 0x03,r0
	mov.b r0,@(0x7,r2)

loc_8c01602a:
	mov 0x5A,r0
	mov.b @(r0,r14),r0
	mov 0x5A,r1
	add r14,r1
	or 0x80,r0
	mov.b r0,@r1
	bra loc_8c0161aa
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
loc_8c01603c:
	#data bank11.loc_8c115c40 bank02.loc_8c0268a4 bank04.loc_8c04257c bank11.loc_8c11843c
loc_8c01604c:
	#data loc_8c013572 loc_8c011a9a

;----------------------------------------------
loc_8c016054:
	mov.l @(loc_8c01615c,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c016062
	bra loc_8c0161aa
	nop

loc_8c016062:
	mov.l @r13,r2
	mov 0x03,r0
	mov.w @(loc_8c016158,PC),r3
	mov.b r0,@(0x7,r2)
	mov 0x5A,r0
	bra loc_8c0161aa
	mov.b r3,@(r0,r14)

loc_8c016070:
	mov.b @r12,r1
	tst r1,r1
	bt loc_8c01607a
	bra loc_8c0161aa
	nop

loc_8c01607a:
	mov 0x2B,r0
	mov.b r11,@(r0,r14)
	mov 0x5C,r0
	mov.l @(r0,r14),r3
	mov r3,r4
	mov.l r3,@(0x34,r14)
	mov.l @(loc_8c016160,PC),r3
	jsr @r3
	nop
	bra loc_8c0160b0
	nop

loc_8c016090:
	mov.b @r12,r3
	tst r3,r3
	bt loc_8c01609a
	bra loc_8c0161aa
	nop

loc_8c01609a:
	bra loc_8c0160b0
	nop

loc_8c01609e:
	jsr @r10
	nop
	tst r0,r0
	bf loc_8c0160aa
	bra loc_8c0161aa
	nop

loc_8c0160aa:
	mov.l @(loc_8c016164,PC),r2
	jsr @r2
	mov 0x03,r4

loc_8c0160b0:
	mov.l @r13,r3
	mov 0x05,r0
	mov.l @(loc_8c016168,PC),r4
	mov 0x01,r6
	mov.b r0,@(0x6,r3)
	mov 0x0A,r5
	lds.l @r15+,pr
	mov.l @(loc_8c01616c,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0160ce:
	mov.b @(0x7,r5),r0
	cmp/eq 0x00,r0
	bt loc_8c0160dc
	cmp/eq 0x01,r0
	bt loc_8c016108
	bra loc_8c0161aa
	nop

loc_8c0160dc:
	mov.b @(0x7,r5),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x7,r5)
	mov 0x5C,r0
	mov.l @(r0,r14),r3
	mov.l @(0x34,r14),r2
	cmp/eq r3,r2
	bf.s loc_8c016102
	add 0x59,r4
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c016102
	mov 0x11,r2
	mov 0x2B,r0
	mov.b r2,@r4
	bra loc_8c016198
	mov.b r12,@(r0,r14)

loc_8c016102:
	mov 0x12,r2
	bra loc_8c016198
	mov.b r2,@r4

loc_8c016108:
	jsr @r10
	nop
	tst r0,r0
	bf loc_8c016178
	bra loc_8c0161aa
	nop

loc_8c016114:
	mov.l @(loc_8c016170,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0161aa
	mov.l @r13,r3
	mov r11,r0
	nop
	mov.b r0,@(0x3,r3)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r13,r3
	mov.b r0,@(0x6,r3)
	mov.l @r13,r3
	mov.b r0,@(0x7,r3)
	mov r14,r3
	add 0x59,r3
	mov.b r0,@r3
	mov 0x5B,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0161aa
	mov.b r12,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8c016174,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c016158:
	#data 0x00ff
	#align4
loc_8c01615c:
	#data loc_8c011bbc
loc_8c016160:
	#data bank11.loc_8c116166
loc_8c016164:
	#data bank04.loc_8c04257c
loc_8c016168:
	#data 0xff000000
loc_8c01616c:
	#data bank03.loc_8c0355b2
loc_8c016170:
	#data bank03.loc_8c03563a
loc_8c016174:
	#data loc_8c010d26

;----------------------------------------------
loc_8c016178:
	mov.l @r13,r3
	mov r11,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r13,r3
	mov r12,r0
	nop
	mov.b r0,@(0x6,r3)
	mov 0x0C,r2
	mov.l @r13,r3
	mov.b r0,@(0x7,r3)
	mov.l @r13,r3
	mov.w r0,@(0xA,r3)
	mov r14,r3
	add 0x59,r3
	mov.b r2,@r3

loc_8c016198:
	lds.l @r15+,pr
	mov.l @(loc_8c0161bc,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0161aa:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
loc_8c0161bc:
	#data bank02.loc_8c0268a4

;----------------------------------------------
loc_8c0161c0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0163e4,PC),r3
	jsr @r3
	mov 0x03,r4
	mov.l @(loc_8c0163f4,PC),r14
	mov r0,r9
	mov.l @(loc_8c0163e8,PC),r10
	mov.l @r14,r4
	mov.l @(loc_8c0163ec,PC),r12
	mov.b @(0x3,r4),r0
	mov.l @(loc_8c0163f0,PC),r13
	cmp/eq 0x00,r0
	bt.s loc_8c0161fe
	mov 0x00,r11
	cmp/eq 0x01,r0
	bt loc_8c016214
	cmp/eq 0x02,r0
	bt loc_8c016256
	cmp/eq 0x03,r0
	bt loc_8c0162ba
	cmp/eq 0x04,r0
	bt loc_8c0162d6
	bra loc_8c0162e6
	nop

loc_8c0161fe:
	mov r11,r0
	nop
	mov.l @(loc_8c0163f8,PC),r3
	jsr @r3
	mov.b r0,@(0x4,r4)
	mov.l @(loc_8c0163fc,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c016400,PC),r3
	jsr @r3
	mov 0x12,r4

loc_8c016214:
	mov.l @r14,r2
	mov 0x02,r0
	mov.b r0,@(0x3,r2)
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @(loc_8c016404,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c016408,PC),r2
	mov.l @(loc_8c01640c,PC),r3
	mov.l @r2,r5
	jsr @r3
	mov 0x08,r4
	mov.l @(loc_8c016410,PC),r2
	jsr @r2
	mov 0x07,r4
	mov.l @(loc_8c016414,PC),r3
	jsr @r3
	mov 0x0D,r4
	mov.l @(loc_8c016418,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c01641c,PC),r3
	jsr @r3
	mov 0x0D,r4
	mov 0x00,r6

loc_8c01624c:
	mov 0x0A,r5
	jsr @r12
	mov r13,r4
	bra loc_8c0162e6
	nop

loc_8c016256:
	jsr @r10
	nop
	tst r0,r0
	bf loc_8c0162e6
	mov.l @r14,r5
	mov 0x02,r6
	mov.l @r14,r8
	mov.b @(0x4,r5),r0
	mov.l @(loc_8c016420,PC),r3
	add 0x04,r8
	mov r0,r5
	jsr @r3
	mov r9,r4
	mov.l @(loc_8c016424,PC),r3
	jsr @r3
	mov.b r0,@r8
	tst r0,r0
	bt loc_8c0162a0
	mov.l @(loc_8c016428,PC),r3
	jsr @r3
	mov 0x02,r4
	mov 0x0A,r5
	mov 0x01,r6
	jsr @r12
	mov r13,r4
	mov.l @r14,r0
	mov.b @(0x4,r0),r0
	cmp/eq 0x02,r0
	bf loc_8c016298
	mov.l @r14,r2
	mov 0x04,r0
	bra loc_8c0162e6
	mov.b r0,@(0x3,r2)

loc_8c016298:
	mov.l @r14,r3
	mov 0x03,r0
	bra loc_8c0162e6
	mov.b r0,@(0x3,r3)

loc_8c0162a0:
	mov.l @(loc_8c01642c,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0162e6
	mov.l @(loc_8c016428,PC),r3
	jsr @r3
	mov 0x03,r4
	mov.l @r14,r2
	mov 0x04,r0
	mov.b r0,@(0x3,r2)
	bra loc_8c01624c
	mov 0x01,r6

loc_8c0162ba:
	jsr @r10
	nop
	tst r0,r0
	bf loc_8c0162e6
	lds.l @r15+,pr
	mov r9,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0162f8
	mov.l @r15+,r14

loc_8c0162d6:
	jsr @r10
	nop
	tst r0,r0
	bf loc_8c0162e6
	mov.l @r14,r2
	mov r11,r0
	nop
	mov.b r0,@(0x1,r2)

loc_8c0162e6:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c0162f8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0163f4,PC),r14
	mov 0x01,r11
	mov.w r4,@r15
	mov.l @r14,r4
	mov.l @(loc_8c016430,PC),r12
	mov.b @(0x5,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_8c01632e
	mov 0x00,r13
	cmp/eq 0x01,r0
	bt loc_8c01638c
	cmp/eq 0x02,r0
	bf loc_8c016322
	bra loc_8c016444
	nop

loc_8c016322:
	cmp/eq 0x03,r0
	bf loc_8c01632a
	bra loc_8c016494
	nop

loc_8c01632a:
	bra loc_8c0164a6
	nop

loc_8c01632e:
	mov.l @(loc_8c016404,PC),r3
	jsr @r3
	nop
	mov.l @r14,r2
	mov r11,r0
	nop
	mov.b r0,@(0x5,r2)
	mov.l @r14,r3
	mov r13,r0
	nop
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov.l @(loc_8c01640c,PC),r2
	mov.b r0,@(0x7,r3)
	mov.l @r14,r3
	mov.w r0,@(0xE,r3)
	mov.l @(loc_8c016408,PC),r3
	mov.b r0,@r12
	mov.l @r3,r5
	jsr @r2
	mov 0x08,r4
	mov.l @(loc_8c016410,PC),r3
	jsr @r3
	mov 0x07,r4
	mov.l @(loc_8c016414,PC),r2
	jsr @r2
	mov 0x0E,r4
	mov.l @(loc_8c016434,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c016438,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c01643c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0163f0,PC),r4
	mov 0x0A,r5
	mov 0x00,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0163ec,PC),r2
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c01638c:
	mov.l @(loc_8c0163e8,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c01639a
	bra loc_8c0164a6
	nop

loc_8c01639a:
	mov.l @r14,r2
	mov.b @(0x7,r2),r0
	tst r0,r0
	bf loc_8c016468
	mov.l @r14,r5
	mov 0x11,r6
	mov.l @(loc_8c016440,PC),r3
	mov.b @(0x6,r5),r0
	mov r0,r5
	jsr @r3
	mov.w @r15,r4
	mov.b r0,@r12
	mov.l @r14,r2
	mov.b @r12,r4
	mov.b @(0x6,r2),r0
	cmp/eq r4,r0
	bt loc_8c016468
	mov.l @r14,r2
	mov.b @(0x6,r2),r0
	cmp/ge r4,r0
	bf.s loc_8c0163cc
	mov 0x02,r5
	mov.l @r14,r2
	bra loc_8c0163d0
	mov r11,r0

loc_8c0163cc:
	mov r5,r0
	nop

loc_8c0163d0:
	mov.b r0,@(0x7,r2)
	mov 0x0B,r0
	mov.l @r14,r3
	mov.w r0,@(0xE,r3)
	mov.l @r14,r3
	mov r5,r0
	nop
	mov.b r0,@(0x5,r3)
	bra loc_8c016468
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0163e4:
	#data loc_8c01357a
loc_8c0163e8:
	#data bank03.loc_8c03563a
loc_8c0163ec:
	#data bank03.loc_8c0355b2
loc_8c0163f0:
	#data 0xff000000
loc_8c0163f4:
	#data work.GameGlobalPointer
loc_8c0163f8:
	#data bank03.loc_8c0357d8
loc_8c0163fc:
	#data bank03.loc_8c03580c
loc_8c016400:
	#data bank03.loc_8c032be0
loc_8c016404:
	#data bank04.loc_8c044d8c
loc_8c016408:
	#data 0x8c26a944
loc_8c01640c:
	#data bank02.loc_8c0267ec
loc_8c016410:
	#data loc_8c016df2
loc_8c016414:
	#data loc_8c0182e0
loc_8c016418:
	#data bank02.loc_8c024640
loc_8c01641c:
	#data loc_8c018320
loc_8c016420:
	#data loc_8c013572
loc_8c016424:
	#data loc_8c011a9a
loc_8c016428:
	#data bank04.loc_8c04257c
loc_8c01642c:
	#data loc_8c011bbc
loc_8c016430:
	#data 0x8c1f8b40
loc_8c016434:
	#data bank02.loc_8c024820
loc_8c016438:
	#data bank02.loc_8c0261a4
loc_8c01643c:
	#data bank02.loc_8c0262e0
loc_8c016440:
	#data loc_8c013576

;----------------------------------------------
loc_8c016444:
	mov.w @(0xE,r4),r0
	add 0xFF,r0
	mov.w r0,@(0xE,r4)
	mov.l @r14,r3
	mov.w @(0xE,r3),r0
	tst r0,r0
	bf loc_8c016468
	mov.l @r14,r2
	mov r13,r0
	nop
	mov.b r0,@(0x7,r2)
	mov.b @r12,r0
	mov.l @r14,r3
	mov.b r0,@(0x6,r3)
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x5,r3)

loc_8c016468:
	mov.l @(loc_8c0164b4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c0164a6
	mov.l @(loc_8c0164b8,PC),r3
	jsr @r3
	mov 0x03,r4
	mov.l @r14,r2
	mov 0x03,r0
	mov.l @(loc_8c0164bc,PC),r4
	mov 0x0A,r5
	mov.b r0,@(0x5,r2)
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0164c0,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c016494:
	mov.l @(loc_8c0164c4,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0164a6
	mov.l @r14,r3
	mov r11,r0
	nop
	mov.b r0,@(0x3,r3)

loc_8c0164a6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0164b4:
	#data loc_8c011bbc
loc_8c0164b8:
	#data bank04.loc_8c04257c
loc_8c0164bc:
	#data 0xff000000
loc_8c0164c0:
	#data bank03.loc_8c0355b2
loc_8c0164c4:
	#data bank03.loc_8c03563a

;----------------------------------------------			
loc_8c0164c8:
	rts
	nop

;----------------------------------------------
loc_8c0164cc:
	mov.l @(loc_8c016588,PC),r6
	mov.l @(loc_8c016584,PC),r7
	mov r4,r0
	nop
	cmp/eq 0x00,r0
	bt.s loc_8c0164ea
	mov 0x00,r5
	cmp/eq 0x01,r0
	bt loc_8c0164ee
	cmp/eq 0x02,r0
	bt loc_8c016508
	cmp/eq 0x03,r0
	bt loc_8c01651a
	bra loc_8c01651e
	nop

loc_8c0164ea:
	bra loc_8c016522
	nop

loc_8c0164ee:
	mov.l @(loc_8c01658c,PC),r2
	mov 0x0F,r3
	mov.l @(loc_8c016594,PC),r1
	mov.b r3,@r2
	mov 0xF7,r2
	mov.l @(loc_8c016590,PC),r3
	mov.l @(loc_8c016598,PC),r0
	mov.b r5,@r7
	mov.b r5,@r3
	mov.b r5,@r1
	mov.b r5,@r6
	bra loc_8c01651e
	mov.b r2,@r0

loc_8c016508:
	mov 0x09,r1
	mov.l @(loc_8c016590,PC),r3
	mov.b r1,@r7
	mov 0x02,r2
	mov.l @(loc_8c016594,PC),r1
	mov.b r5,@r3
	mov.b r2,@r1
	bra loc_8c01651e
	mov.b r5,@r6

loc_8c01651a:
	bra loc_8c01656e
	nop

loc_8c01651e:
	rts
	nop

loc_8c016522:
	sts.l pr,@-r15
	mov.l @(loc_8c01659c,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0165a0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0165a4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0165a8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0165ac,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0165b0,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0165b4,PC),r3
	jsr @r3
	mov 0x10,r4
	mov.l @(loc_8c0165b8,PC),r5
	mov 0x00,r0
	mov.l @(loc_8c0165c4,PC),r1
	mov.l @r5,r2
	mov.b r0,@(0x2,r2)
	mov.l @r5,r3
	mov.l @(loc_8c0165c0,PC),r2
	mov.b r0,@(0x3,r3)
	mov.l @(loc_8c0165bc,PC),r3
	mov.b r0,@r3
	mov.l @(loc_8c0165c8,PC),r3
	mov.b r0,@r2
	mov.b r0,@r1
	lds.l @r15+,pr
	rts
	mov.b r0,@r3

loc_8c01656e:
	mov.l @(loc_8c0165c0,PC),r3
	mov 0x00,r2
	mov.l @(loc_8c0165c4,PC),r0
	mov.l @(loc_8c0165bc,PC),r1
	mov.b r2,@r1
	mov.b r2,@r3
	mov.l @(loc_8c0165c8,PC),r3
	mov.b r2,@r0
	rts
	mov.b r2,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c016584:
	#data 0x8c2136fd
loc_8c016588:
	#data 0x8c213700
loc_8c01658c:
	#data 0x8c2136fc
loc_8c016590:
	#data 0x8c2136fe
loc_8c016594:
	#data 0x8c2136ff
loc_8c016598:
	#data 0x8c213705
loc_8c01659c:
	#data bank04.loc_8c04182e
loc_8c0165a0:
	#data bank04.loc_8c04185e
loc_8c0165a4:
	#data bank04.loc_8c041ecc
loc_8c0165a8:
	#data bank03.loc_8c0357d8
loc_8c0165ac:
	#data bank03.loc_8c03580c
loc_8c0165b0:
	#data bank04.loc_8c044d8c
loc_8c0165b4:
	#data bank03.loc_8c032be0
loc_8c0165b8:
	#data work.GameGlobalPointer
loc_8c0165bc:
	#data 0x8c212f0f
loc_8c0165c0:
	#data 0x8c212f0e
loc_8c0165c4:
	#data 0x8c212f0d
loc_8c0165c8:
	#data 0x8c212f0c

;----------------------------------------------
loc_8c0165cc:
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(loc_8c0166dc,PC),r3
	mov 0x0B,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01662c
	mov r0,r4
	mov.w @(loc_8c0166ce,PC),r0
	mov 0x00,r3
	mov 0x23,r1
	mov.l @(loc_8c0166e0,PC),r2
	mov.b r3,@(r0,r4)
	add r4,r1
	mov.l r2,@(0x10,r4)
	mov 0x20,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov r4,r1
	mov.b @(0x4,r15),r0
	add 0x50,r1
	mov.b r0,@r2
	mov 0x21,r0
	mov.b @r15,r3
	mov.l @(loc_8c0166e4,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c0166e8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0166ec,PC),r2
	mov r4,r1
	mov.l @(loc_8c0166f0,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c0166d2,PC),r0
	mov.w @(loc_8c0166d0,PC),r1
	mov.l r1,@(r0,r4)

loc_8c01662c:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c016634:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(loc_8c0166dc,PC),r3
	mov 0x0B,r5
	mov.b r0,@(0x8,r15)
	mov.l r6,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c016698
	mov r0,r4
	mov.w @(loc_8c0166ce,PC),r0
	mov 0x01,r3
	mov 0x23,r1
	mov.l @(loc_8c0166e0,PC),r2
	mov.b r3,@(r0,r4)
	add r4,r1
	mov.l r2,@(0x10,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov 0x20,r0
	mov.l @r15,r3
	mov r4,r1
	add 0x74,r1
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c0166d4,PC),r2
	mov.l @r15,r3
	mov.w @(loc_8c0166d6,PC),r0
	add r3,r2
	mov.l @(loc_8c0166f4,PC),r3
	mov.l r2,@(r0,r4)
	mov.l @r3,r0
	mov.l @(0x4,r15),r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(loc_8c0166f0,PC),r3
	mov.l @(r0,r2),r2
	mov.w @(loc_8c0166d8,PC),r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c0166ec,PC),r2
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c0166d2,PC),r0
	mov.w @(loc_8c0166d0,PC),r1
	mov.l r1,@(r0,r4)

loc_8c016698:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0166a0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bt.s loc_8c0166b6
	mov 0x01,r13
	bra loc_8c0167b4
	nop

loc_8c0166b6:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c0166fc
	lds.l @r15+,pr
	mov.l @(loc_8c0166f8,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0166ce:
	#data 0x012c
loc_8c0166d0:
	#data 0x0431
loc_8c0166d2:
	#data 0x00cc
loc_8c0166d4:
	#data 0x0088
loc_8c0166d6:
	#data 0x00c8
loc_8c0166d8:
	#data 0x0084
	#align4
loc_8c0166dc:
	#data bank04.loc_8c044f12
loc_8c0166e0:
	#data loc_8c016d98
loc_8c0166e4:
	#data bank14.loc_8c144334
loc_8c0166e8:
	#data bank12.loc_8c1294c8
loc_8c0166ec:
	#data bank14.loc_8c144340
loc_8c0166f0:
	#data bank12.loc_8c1294bc
loc_8c0166f4:
	#data 0x8c26a93c
loc_8c0166f8:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c0166fc:
	mov.b @(0x4,r14),r0
	mov.l @(loc_8c01681c,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c016816,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r1
	mov.l @r2,r3
	extu.b r1,r1
	mov.l @r3,r3
	shll2 r1
	add r3,r1
	mov.l @(r0,r1),r3
	add 0x64,r0
	mov r14,r1
	add 0x34,r1
	mov.l r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c016820,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c016824,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(loc_8c016828,PC),r12
	mov.b @(r0,r14),r2
	mov r14,r1
	add 0x50,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c016824,PC),r3
	shll2 r2
	add r12,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x01,r5
	mov 0x06,r6
	bsr loc_8c016634
	mov r14,r4
	mov r0,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov r4,r1
	add 0x50,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c016824,PC),r3
	shll2 r2
	add r12,r2
	add 0x6C,r2
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8c01682c,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	mov 0x01,r5
	mov 0x07,r6
	fmov fr3,@(r0,r4)
	bsr loc_8c016634
	mov r14,r4
	mov r0,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov r4,r1
	add 0x50,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c016824,PC),r3
	shll2 r2
	add r12,r2
	add 0x6C,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b r13,@(r0,r4)
	mova @(loc_8c016830,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c0167b4:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0167e8
	mov.l @(loc_8c016834,PC),r4
	mov.l @r4,r2
	mov.l @(0x30,r2),r3
	mov.l @r3,r1
	tst r13,r1
	bt loc_8c0167d4
	mov.l @(0x4,r4),r2
	mov.l @(0x30,r2),r3
	mov.l @r3,r1
	tst r13,r1
	bf loc_8c0167da

loc_8c0167d4:
	mova @(loc_8c016838,PC),r0
	bra loc_8c0167dc
	fmov @r0,fr3

loc_8c0167da:
	fldi1 fr3

loc_8c0167dc:
	mov.w @(loc_8c016818,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x78,r0
	fmov fr3,@(r0,r14)

loc_8c0167e8:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0167f2:
	mov 0x21,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c016844
	mov 0x01,r6
	mov.l @(loc_8c01683c,PC),r1
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x4C,r0
	mov.l @r1,r2
	extu.b r3,r3
	mov.b @(r0,r2),r2
	cmp/eq r2,r3
	bf loc_8c016840
	mov.w @(loc_8c016816,PC),r0
	mov 0x00,r2
	bra loc_8c016844
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c016816:
	#data 0x012c
loc_8c016818:
	#data 0x0080
	#align4
loc_8c01681c:
	#data 0x8c26a93c
loc_8c016820:
	#data bank14.loc_8c144350
loc_8c016824:
	#data bank12.loc_8c1294c8
loc_8c016828:
	#data bank14.loc_8c1443bc
loc_8c01682c:
	#data 0xbdcccccd
loc_8c016830:
	#data 0xbdf5c28f
loc_8c016834:
	#data 0x8c212be0
loc_8c016838:
	#data 0x3f19999a
loc_8c01683c:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c016840:
	mov.w @(loc_8c016964,PC),r0
	mov.b r6,@(r0,r4)

loc_8c016844:
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c016878
	mov.l @(loc_8c01696c,PC),r5
	mov.l @r5,r2
	mov.l @(0x30,r2),r3
	mov.l @r3,r1
	tst r6,r1
	bt loc_8c016864
	mov.l @(0x4,r5),r2
	mov.l @(0x30,r2),r3
	mov.l @r3,r1
	tst r6,r1
	bf loc_8c01686a

loc_8c016864:
	mova @(loc_8c016970,PC),r0
	bra loc_8c01686c
	fmov @r0,fr3

loc_8c01686a:
	fldi1 fr3

loc_8c01686c:
	mov.w @(loc_8c016966,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)

loc_8c016878:
	rts
	nop

;----------------------------------------------
loc_8c01687c:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf.s loc_8c01689c
	mov 0x06,r5
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c016964,PC),r0
	mov.b r3,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x00,r0
	mov.w r0,@(0x1E,r4)

loc_8c01689c:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0168bc
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8c016974,PC),r3
	mov r0,r1
	add 0x01,r1
	jsr @r3
	mov r5,r0
	mov.w r0,@(0x1E,r4)

loc_8c0168bc:
	mov.l @(loc_8c016978,PC),r3
	mov.w @(0x1E,r4),r0
	mov.l @r3,r2
	shll2 r0
	mov.l @(loc_8c01697c,PC),r5
	mov.l @r2,r2
	mov.l @(loc_8c016980,PC),r3
	add r2,r0
	add 0x44,r0
	mov.l @r0,r1
	mov.w @(loc_8c016968,PC),r0
	mov.l r1,@(r0,r4)
	mov 0x4C,r0
	mov.l @r5,r2
	mov.b @(r0,r2),r2
	mov r2,r1
	shll r2
	add r1,r2
	mov r4,r1
	shll2 r2
	add r3,r2
	mov.l @(loc_8c016984,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8c016988,PC),r0
	mov r4,r1
	fmov @r0,fr3
	mov 0x3C,r0
	add 0x50,r1
	fmov fr3,@(r0,r4)
	mov 0x4C,r0
	mov.l @r5,r2
	mov.b @(r0,r2),r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c01698c,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c016984,PC),r3
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	rts
	nop

loc_8c016918:
	mov 0x20,r0
	mov.l @(loc_8c016978,PC),r6
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c016998
	mov 0x01,r5
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c016936
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c016964,PC),r0
	mov.b r5,@(r0,r4)

loc_8c016936:
	mov.l @(loc_8c01697c,PC),r2
	mov 0x4C,r1
	mov.l @(loc_8c016990,PC),r0
	mov.l @r2,r3
	mov.l @(loc_8c016994,PC),r2
	add r3,r1
	mov.b @r1,r1
	mov.b @(r0,r1),r3
	mov.l @r6,r0
	shll2 r3
	mov.l @r0,r1
	add r1,r3
	mov.w @(loc_8c016968,PC),r1
	mov.l @r3,r0
	add r4,r1
	mov.l @(loc_8c016984,PC),r3
	mov.l r0,@r1
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	bra loc_8c0169da
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c016964:
	#data 0x012c
loc_8c016966:
	#data 0x0080
loc_8c016968:
	#data 0x0084
	#align4
loc_8c01696c:
	#data 0x8c212be0
loc_8c016970:
	#data 0x3f19999a
loc_8c016974:
	#data bank12.loc_8c1292d4
loc_8c016978:
	#data 0x8c26a93c
loc_8c01697c:
	#data work.GameGlobalPointer
loc_8c016980:
	#data bank14.loc_8c144350
loc_8c016984:
	#data bank12.loc_8c1294c8
loc_8c016988:
	#data 0xc15028f6
loc_8c01698c:
	#data bank14.loc_8c144494
loc_8c016990:
	#data bank14.loc_8c144608
loc_8c016994:
	#data bank14.loc_8c144328

;----------------------------------------------
loc_8c016998:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c0169da
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c016aee,PC),r0
	mov.b r5,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	add 0x64,r0
	mov.l @r6,r3
	extu.b r2,r2
	mov.l @r3,r3
	add 0xFF,r2
	shll2 r2
	add r3,r2
	mov.l @(0x10,r2),r1
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov r4,r1
	add 0x34,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c016af8,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c016afc,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8c0169da:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c0169e0:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3
	mov.l r13,@-r15
	shll2 r6
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x00,r13
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c016aee,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @r5,r0
	mov.l @(r0,r6),r3
	mov.w @(loc_8c016af0,PC),r0
	mov.l r3,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8c016af4,PC),r0
	mov.w @(loc_8c016af2,PC),r3
	mov.l @(r0,r14),r2
	or r3,r2
	mov.l r2,@(r0,r14)
	add 0xB8,r0
	mov.l @(loc_8c016b00,PC),r2
	jsr @r2
	mov.l @(r0,r14),r4
	mov.w @(loc_8c016af6,PC),r0
	mov.l @(loc_8c016b04,PC),r4
	mov.l r13,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x78,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r4,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r4,r3
	fmov @(r0,r3),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	mov 0x08,r0
	add r3,r4
	fmov @(r0,r4),fr3
	add 0x78,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;Main Menu Rendering
;==============================================
loc_8c016a6e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov 0x1C,r3
	add r14,r3
	mov r6,r10
	mov.l @(loc_8c016b08,PC),r4
	shll2 r10
	mov.l r5,@(0x8,r15)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @r3,r3
	mov r10,r0
	nop
	mov.l @(r0,r4),r2
	cmp/ge r2,r3
	bf.s loc_8c016aaa
	mov 0x00,r13
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c016aaa:
	mov 0x1E,r3
	mov.w @(0x1E,r14),r0
	add r14,r3
	add 0x01,r0
	add 0x01,r6
	mov.w r0,@(0x1E,r14)
	mov.w @r3,r3
	shll2 r6
	mov r6,r0
	nop
	mov.l @(r0,r4),r2
	cmp/ge r2,r3
	bf.s loc_8c016acc
	mov r6,r12
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c016acc:
	mov.w @(loc_8c016af0,PC),r0
	mov.l @(loc_8c016b0c,PC),r3
	mov.l @(r0,r14),r5
	mov.l @(0x8,r15),r0
	mov.l @r0,r0
	jsr @r3
	mov.l @(r0,r12),r4
	mov r10,r11
	mov r12,r10
	mov.l @(loc_8c016b10,PC),r4
	mov.l @(loc_8c016b14,PC),r8
	mov.l @(loc_8c016b18,PC),r9
	add r4,r11
	mov.l @(loc_8c016b1c,PC),r12
	add r4,r10
	bra loc_8c016b96
	fldi1 fr15

;##############################################
loc_8c016aee:
	#data 0x012c
loc_8c016af0:
	#data 0x0084
loc_8c016af2:
	#data 0x0400
loc_8c016af4:
	#data 0x00cc
loc_8c016af6:
	#data 0x00d0
	#align4
loc_8c016af8:
	#data bank14.loc_8c14456c
loc_8c016afc:
	#data bank12.loc_8c1294c8
loc_8c016b00:
	#data bank10.loc_8c108210
loc_8c016b04:
	#data bank14.loc_8c144590
loc_8c016b08:
	#data bank14.loc_8c144624
loc_8c016b0c:
	#data bank10.loc_8c108060
loc_8c016b10:
	#data bank14.loc_8c144614
loc_8c016b14:
	#data bank10.loc_8c108192
loc_8c016b18:
	#data bank10.loc_8c1081e6
loc_8c016b1c:
	#data bank10.loc_8c108086

;----------------------------------------------
loc_8c016b20:
	mov r15,r5
	add 0x04,r5
	jsr @r8
	mov r15,r4
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c016b5e
	mov.w @(0x1C,r14),r0
	fmov @r11,fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr3,fr2
	fmov @r15,fr3
	fneg fr2
	fadd fr15,fr2
	fsub fr2,fr3
	fmov fr3,@r15
	mov.w @(0x1E,r14),r0
	fmov @r10,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	float fpul,fr3
	fmul fr3,fr2
	fmov @(r0,r15),fr3
	fneg fr2
	fadd fr15,fr2
	bra loc_8c016b8a
	fsub fr2,fr3

loc_8c016b5e:
	mov.w @(0x1C,r14),r0
	fmov @r11,fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr3,fr2
	fmov @r15,fr3
	fneg fr2
	fadd fr15,fr2
	fadd fr2,fr3
	fmov fr3,@r15
	mov.w @(0x1E,r14),r0
	fmov @r10,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	float fpul,fr3
	fmul fr3,fr2
	fmov @(r0,r15),fr3
	fneg fr2
	fadd fr15,fr2
	fadd fr2,fr3

loc_8c016b8a:
	mov r15,r5
	mov 0x04,r0
	add 0x04,r5
	fmov fr3,@(r0,r15)
	jsr @r9 ; Texture Movement
	mov r15,r4

loc_8c016b96:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c016b20
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c016baa
	bra loc_8c016cc8
	nop

loc_8c016baa:
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c016bb8
	bra loc_8c016cc8
	nop

loc_8c016bb8:
	mova @(loc_8c016c4c,PC),r0
	mov.l @(loc_8c016c50,PC),r3
	fmov @r0,fr4
	mov 0x1E,r6
	mov.b @(0x5,r14),r0
	mov.l @(loc_8c016c48,PC),r5
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c016bdc
	mov.l @r3,r4
	cmp/eq 0x01,r0
	bt loc_8c016c26
	cmp/eq 0x03,r0
	bt loc_8c016c26
	cmp/eq 0x02,r0
	bt loc_8c016c80
	bra loc_8c016cc8
	nop

loc_8c016bdc:
	mov.b @(0x3,r4),r0
	cmp/eq 0x03,r0
	bf loc_8c016cc8
	mov.b @(0x4,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c016cc8
	mov.b @(0x5,r14),r0
	mov r5,r4
	add 0x18,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(loc_8c016c46,PC),r0
	mov.l r6,@(r0,r14)
	mov 0x78,r0
	fmov @r4,fr2
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov @(r0,r4),fr2
	mov 0x60,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	add 0x20,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov @(r0,r4),fr2
	mov 0x64,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	bra loc_8c016cc8
	fmov fr2,@(r0,r14)

loc_8c016c26:
	mov.w @(loc_8c016c46,PC),r0
	mov.l @(r0,r14),r2
	add 0xFF,r2
	cmp/pz r2
	mov.l r2,@(r0,r14)
	bt loc_8c016c54
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c016c3e
	bra loc_8c016c42
	mov r13,r0

loc_8c016c3e:
	mov.b @(0x5,r14),r0
	add 0x01,r0

loc_8c016c42:
	bra loc_8c016cc8
	mov.b r0,@(0x5,r14)

;##############################################
loc_8c016c46:
	#data 0x00d4
	#align4
loc_8c016c48:
	#data bank14.loc_8c144590
loc_8c016c4c:
	#data 0x41f00000
loc_8c016c50:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c016c54:
	mov 0x5C,r1
	add r14,r1
	mov 0x78,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x64,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	add 0x04,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	bra loc_8c016cc8
	fmov fr2,@(r0,r14)

;----------------------------------------------
loc_8c016c80:
	mov.b @(0x3,r4),r0
	cmp/eq 0x03,r0
	bt loc_8c016cc8
	mov.b @(0x4,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c016cc8
	mov.b @(0x5,r14),r0
	mov r5,r4
	add 0x0C,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(loc_8c016d78,PC),r0
	mov.l r6,@(r0,r14)
	mov 0x78,r0
	fmov @r4,fr2
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov @(r0,r4),fr2
	mov 0x60,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	add 0x20,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov @(r0,r4),fr2
	mov 0x64,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)

loc_8c016cc8:
	add 0x0C,r15
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

;==============================================
loc_8c016cde:
	mov 0x21,r0
	mov.l r14,@-r15
	mov 0x04,r2
	mov.l r13,@-r15
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c016d06
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c016cfc
	mov.l @(loc_8c016d80,PC),r1
	bra loc_8c016d10
	mov.l @r1,r14

loc_8c016cfc:
	mov 0x21,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c016d0c

loc_8c016d06:
	mov.l @(loc_8c016d84,PC),r2
	bra loc_8c016d10
	mov.l @r2,r14

loc_8c016d0c:
	mov.l @(loc_8c016d88,PC),r1
	mov.l @r1,r14

loc_8c016d10:
	mov 0x20,r0
	mov.b @(r0,r4),r13
	mov.b @(0x4,r4),r0
	extu.b r13,r13
	shll r13
	tst r0,r0
	bf loc_8c016d28
	mov r13,r6
	mov.l @r15+,r13
	mov r14,r5
	bra loc_8c0169e0
	mov.l @r15+,r14

loc_8c016d28:
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c016d3a
	mov r13,r6
	mov.l @r15+,r13
	mov r14,r5
	bra loc_8c016a6e
	mov.l @r15+,r14

loc_8c016d3a:
	mov.l @(loc_8c016d8c,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8c016d42:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c016d74
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	mov.l @(loc_8c016d84,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c016d7a,PC),r0
	mov.b r3,@(r0,r4)
	mova @(loc_8c016d90,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c016d94,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.l @r2,r3
	mov.w @(loc_8c016d7c,PC),r0
	mov.l @r3,r1
	mov.l @(r0,r1),r0
	mov.w @(loc_8c016d7e,PC),r1
	add r4,r1
	mov.l r0,@r1

loc_8c016d74:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c016d78:
	#data 0x00d4
loc_8c016d7a:
	#data 0x012c
loc_8c016d7c:
	#data 0x014c
loc_8c016d7e:
	#data 0x0084
	#align4
loc_8c016d80:
	#data 0x8c26a948
loc_8c016d84:
	#data 0x8c26a93c
loc_8c016d88:
	#data 0x8c26a944
loc_8c016d8c:
	#data bank04.loc_8c0450c0
loc_8c016d90:
	#data 0xbf86a7f0
loc_8c016d94:
	#data 0x400b020c

;==============================================
loc_8c016d98:
	mov 0x23,r0
	mov r4,r3

loc_8c016d9c:
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c016e18,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8c016dac:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov 0x09,r13
	sts.l pr,@-r15

loc_8c016db6:
	mov r14,r5
	mov 0x00,r6
	bsr loc_8c0165cc
	mov r6,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c016db6
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c0165cc
	mov 0x03,r4
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c0165cc
	mov 0x04,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c0165cc
	mov 0x04,r4
	mov 0x02,r5
	mov 0x00,r6
	bsr loc_8c0165cc
	mov 0x04,r4
	lds.l @r15+,pr
	mov 0x00,r6
	mov r6,r5
	mov 0x06,r4
	mov.l @r15+,r13
	bra loc_8c0165cc
	mov.l @r15+,r14

loc_8c016df2:
	mov.l r14,@-r15
	mov 0x00,r5
	sts.l pr,@-r15
	mov r4,r6
	mov r4,r14
	bsr loc_8c0165cc
	mov 0x05,r4
	tst r14,r14
	bf loc_8c016e10
	lds.l @r15+,pr
	mov 0x05,r4
	mov r14,r6
	mov 0x01,r5
	bra loc_8c0165cc
	mov.l @r15+,r14

loc_8c016e10:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c016e18:
	#data bank14.loc_8c144634

;----------------------------------------------
loc_8c016e1c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop
	mov.l @(loc_8c016f50,PC),r3
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.b r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c016e6e
	mov r0,r4
	mov.w @(loc_8c016f42,PC),r0
	mov 0x00,r3
	mov 0x23,r1
	mov.l @(loc_8c016f54,PC),r2
	mov.b r3,@(r0,r4)
	add r4,r1
	mov.l r2,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c016f58,PC),r2
	mov.b r0,@r1
	mov 0x20,r0
	mov.b @r15,r3
	mov r4,r1
	add 0x50,r1
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c016f5c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c016f60,PC),r2
	mov r4,r1
	mov.l @(loc_8c016f64,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c016f46,PC),r0
	mov.w @(loc_8c016f44,PC),r1
	mov.l r1,@(r0,r4)

loc_8c016e6e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c016e76:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r14
	mov.l @(loc_8c016f68,PC),r3
	shll2 r14
	mov.w @(loc_8c016f44,PC),r10
	mov.l @(loc_8c016f60,PC),r8
	mov 0x01,r12
	shll2 r14
	mov r4,r13
	mov 0x00,r11
	mov.b r5,@r15
	mov r11,r4
	add r3,r14
	mov r12,r9

loc_8c016ea2:
	mov.l @(loc_8c016f50,PC),r3
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c016f74
	mov r0,r4
	mov.w @(loc_8c016f42,PC),r0
	mov.b r12,@(r0,r4)
	mov r12,r0
	nop
	mov.b r0,@(0x4,r4)
	mov 0x23,r0
	mov.l @(loc_8c016f54,PC),r3
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r13),r3
	mov.l @(loc_8c016f6c,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(loc_8c016f48,PC),r3
	mov.b r9,@(r0,r4)
	add 0x01,r9
	mov.w @(loc_8c016f4a,PC),r0
	add r13,r3
	mov.l r3,@(r0,r4)
	mov.l @r2,r0
	mov r14,r2
	mov.l @r0,r3
	mov.w @(0xC,r14),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8c016f4c,PC),r0
	mov.l @(loc_8c016f5c,PC),r3
	mov.l r1,@(r0,r4)
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c016f46,PC),r0
	mov r4,r1
	mov.l @(loc_8c016f58,PC),r2
	add 0x50,r1
	mov.l @(loc_8c016f5c,PC),r3
	mov.l r10,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b @(r0,r13),r1
	tst r1,r1
	bt loc_8c016f2c
	mov 0x21,r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c016f2c
	mov.w @(loc_8c016f42,PC),r0
	mov r4,r1
	mov.l @(loc_8c016f70,PC),r2
	add 0x74,r1
	mov.l @(loc_8c016f64,PC),r3
	mov.b r11,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	bra loc_8c016f38
	nop

loc_8c016f2c:
	mov.l @(loc_8c016f64,PC),r3
	mov r4,r1
	mov r8,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c016f38:
	mov.b @(0xF,r14),r0
	cmp/pz r0
	bf loc_8c016f74
	bra loc_8c016ea2
	add 0x10,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c016f42:
	#data 0x012c
loc_8c016f44:
	#data 0x0431
loc_8c016f46:
	#data 0x00cc
loc_8c016f48:
	#data 0x0088
loc_8c016f4a:
	#data 0x00c8
loc_8c016f4c:
	#data 0x0084
	#align4
loc_8c016f50:
	#data bank04.loc_8c044f12
loc_8c016f54:
	#data loc_8c0173f4
loc_8c016f58:
	#data bank14.loc_8c14465c
loc_8c016f5c:
	#data bank12.loc_8c1294c8
loc_8c016f60:
	#data bank14.loc_8c144668
loc_8c016f64:
	#data bank12.loc_8c1294bc
loc_8c016f68:
	#data bank14.loc_8c1446c8
loc_8c016f6c:
	#data 0x8c26a93c
loc_8c016f70:
	#data bank14.loc_8c144678

;----------------------------------------------
loc_8c016f74:
	mov r4,r0
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

;----------------------------------------------
loc_8c016f8c:
	rts
	nop

;----------------------------------------------
loc_8c016f90:
	mov 0x20,r0
	mov.l @(loc_8c01708c,PC),r3
	sts.l pr,@-r15
	mov.b @(r0,r4),r6
	mov.l @(loc_8c017090,PC),r7
	extu.b r6,r6
	mov r6,r5
	shll2 r5
	shll2 r5
	shll r5
	mov r6,r0
	nop
	cmp/eq 0x02,r0
	bf.s loc_8c016fd6
	add r3,r5
	mov.l @(0x18,r7),r4
	mov.l @(loc_8c017094,PC),r2
	neg r4,r4
	add 0x64,r4
	mov r4,r1
	jsr @r2
	mov 0x64,r0
	tst r0,r0
	bt loc_8c016fc6
	mov 0x01,r2
	bra loc_8c016fca
	mov.b r2,@r5

loc_8c016fc6:
	mov 0x00,r0
	mov.b r0,@r5

loc_8c016fca:
	mov.l @(loc_8c017098,PC),r3
	mov 0x64,r0
	jsr @r3
	mov r4,r1
	bra loc_8c016ffa
	mov r0,r4

loc_8c016fd6:
	mov 0x20,r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c016fe2
	bra loc_8c016fe4
	mov 0x10,r0

loc_8c016fe2:
	mov 0x14,r0

loc_8c016fe4:
	fmov @(r0,r7),fr3
	ftrc fr3,fpul
	sts fpul,r4
	cmp/pz r4
	bt loc_8c016ff6
	mov 0x42,r0
	mov.w r0,@(0x2,r5)
	bra loc_8c016ffa
	neg r4,r4

loc_8c016ff6:
	mov 0x41,r0
	mov.w r0,@(0x2,r5)

loc_8c016ffa:
	mov.l @(loc_8c017094,PC),r3
	mov r4,r1
	add 0x08,r5
	mov 0x0A,r6
	jsr @r3
	mov r6,r0
	add 0x37,r0
	mov.l @(loc_8c017098,PC),r2
	mov.w r0,@(0x2,r5)
	mov r4,r1
	add 0x08,r5
	jsr @r2
	mov r6,r0
	lds.l @r15+,pr
	add 0x37,r0
	rts
	mov.w r0,@(0x2,r5)

;----------------------------------------------
loc_8c01701c:
	mov 0x01,r3
	mov.l r14,@-r15
	mov.l @(loc_8c0170a0,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c017086,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r14
	mov.l @(loc_8c01709c,PC),r3
	extu.b r14,r14
	mov.l @r2,r0
	shll2 r14
	shll2 r14
	mov.l @r0,r1
	add r3,r14
	mov.l @(loc_8c0170a4,PC),r3
	mov.w @(0xC,r14),r0
	mov r14,r2
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r1),r1
	mov.w @(loc_8c017088,PC),r0
	mov.l r1,@(r0,r4)
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0170a8,PC),r2
	mov r4,r1
	mov.l @(loc_8c0170a4,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8c0170ac,PC),r0
	fmov @r0,fr4
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0170b8
	mova @(loc_8c0170b0,PC),r0
	fmov @r0,fr3
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c0170b4,PC),r0
	fmov @r0,fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	add 0x04,r0
	bra loc_8c0170f4
	fmov fr4,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c017086:
	#data 0x012c
loc_8c017088:
	#data 0x0084
	#align4
loc_8c01708c:
	#data bank14.loc_8c144768
loc_8c017090:
	#data 0x8c212bfc
loc_8c017094:
	#data bank12.loc_8c129128
loc_8c017098:
	#data bank12.loc_8c1292d4
loc_8c01709c:
	#data bank14.loc_8c144688
loc_8c0170a0:
	#data 0x8c26a93c
loc_8c0170a4:
	#data bank12.loc_8c1294c8
loc_8c0170a8:
	#data bank14.loc_8c14465c

;----------------------------------------------
loc_8c0170ac:
	mov 0x48,r1
	subc r7,r15
loc_8c0170b0:
	mov.l r0,@(0x23C,gbr)
	dmulu.l r7,r15
loc_8c0170b4:
	mov.l @r6+,r6
	cmp/hi r6,r15

loc_8c0170b8:
	mov 0x20,r2
	mov.l @(loc_8c0171cc,PC),r3
	add r4,r2
	mov.b @r2,r2
	mov.l @r3,r1
	extu.b r2,r2
	mov.w @(0x8,r1),r0
	add 0xFF,r2
	cmp/eq r2,r0
	bf loc_8c0170dc
	mov 0x78,r0
	fldi1 fr3
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c0171d0,PC),r0
	bra loc_8c0170f0
	fmov @r0,fr3

loc_8c0170dc:
	mova @(loc_8c0171d4,PC),r0
	fmov @r0,fr3
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c0171d8,PC),r0
	fmov @r0,fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c0171dc,PC),r0
	fmov @r0,fr3

loc_8c0170f0:
	mov.w @(loc_8c0171c4,PC),r0
	fmov fr3,@(r0,r4)

loc_8c0170f4:
	lds.l @r15+,pr
	mov.b @(0xF,r14),r0
	mov 0x00,r5
	mov r0,r6
	bra loc_8c016e76
	mov.l @r15+,r14

;----------------------------------------------
loc_8c017100:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8c0171e0,PC),r2
	mov r15,r5
	mov.l @(loc_8c0171e4,PC),r3;loc_8c1294bc
	mov r15,r1
	jsr @r3
	mov 0x10,r0
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c0171c6,PC),r0
	mov.b r3,@(r0,r4)
	add 0xE0,r0
	mov.l @(loc_8c0171e8,PC),r3
	mov.l @r3,r1
	mov.l @(loc_8c0171ec,PC),r3
	mov.l @r1,r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8c0171c8,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov r4,r1
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0171f0,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0171f4,PC),r2
	mov r4,r1
	mov.l @(loc_8c0171f0,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(loc_8c017204,PC),r1
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r5),fr3
	mova @(loc_8c0171f8,PC),r0
	fmov @r0,fr2
	mova @(loc_8c0171fc,PC),r0
	fmov @r0,fr1
	mova @(loc_8c017200,PC),r0
	fmul fr2,fr3
	fmov @r0,fr0
	mov 0x48,r0
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r4)
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c017182:
	mov 0x01,r3
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x34,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c0171c6,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c017208,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0171f0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(loc_8c01720c,PC),r3
	mov.b @(r0,r4),r5
	mov.w @(loc_8c0171ca,PC),r0
	extu.b r5,r5
	shll2 r5
	shll2 r5
	shll r5
	add r3,r5
	mov.l r5,@(r0,r4)
	bra loc_8c016f90
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0171c4:
	#data 0x0080
loc_8c0171c6:
	#data 0x012c
loc_8c0171c8:
	#data 0x0084
loc_8c0171ca:
	#data 0x00d4
	#align4
loc_8c0171cc:
	#data work.GameGlobalPointer
loc_8c0171d0:
	#data 0x3ea8f5c3
loc_8c0171d4:
	#data 0x3e947ae1
loc_8c0171d8:
	#data 0x3ef5c28f
loc_8c0171dc:
	#data 0x3f3851ec
loc_8c0171e0:
	#data bank13.loc_8c1327dc
loc_8c0171e4:
	#data bank12.loc_8c1294bc
loc_8c0171e8:
	#data 0x8c26a93c
loc_8c0171ec:
	#data bank14.loc_8c144738
loc_8c0171f0:
	#data bank12.loc_8c1294c8
loc_8c0171f4:
	#data bank14.loc_8c14465c
loc_8c0171f8:
	#data 0x47800000
loc_8c0171fc:
	#data 0x43b40000
loc_8c017200:
	#data 0x3f000000
loc_8c017204:
	#data 0x0000ffff
loc_8c017208:
	#data bank14.loc_8c1447c8
loc_8c01720c:
	#data bank14.loc_8c144768

;----------------------------------------------
loc_8c017210:
	mov 0x01,r3
	mov.l @(loc_8c017340,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	mov r4,r1
	add 0x50,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c017334,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c017344,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c017348,PC),r0
	mov.l @(loc_8c017350,PC),r5
	mov.l @r0,r1
	mov.w @(loc_8c017336,PC),r0
	mov.l @r1,r3
	mov.w @(loc_8c01733a,PC),r1
	mov.l @(r0,r3),r3
	mov.w @(loc_8c017338,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r1,@(r0,r4)
	mova @(loc_8c01734c,PC),r0
	fmov @r0,fr4
	mov 0x10,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fdiv fr4,fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov.l @(0x18,r5),r3
	mov.l @(loc_8c017354,PC),r0
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	lds.l @r15+,pr
	rts
	fmov fr3,@(r0,r4)

loc_8c01726e:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c017358,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8c017282:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c017296
	bra loc_8c01739e
	nop

loc_8c017296:
	mov 0x20,r2
	mov.l @(loc_8c01735c,PC),r3
	add r14,r2
	fldi1 fr4
	mov.l @r3,r5
	mov.b @r2,r2
	mov.w @(0x8,r5),r0
	extu.b r2,r2
	add 0xFF,r2
	cmp/eq r2,r0
	bf.s loc_8c017326
	mov 0x00,r4
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0172ca
	mov.b @(0x5,r5),r0
	cmp/eq 0x03,r0
	bf loc_8c0172c4
	mov.w @(loc_8c017334,PC),r0
	mov 0x01,r1
	bra loc_8c0172de
	mov.b r1,@(r0,r14)

loc_8c0172c4:
	mov.w @(loc_8c017334,PC),r0
	bra loc_8c0172de
	mov.b r4,@(r0,r14)

loc_8c0172ca:
	mova @(loc_8c017360,PC),r0
	fmov @r0,fr3
	mov 0x78,r0
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	mova @(loc_8c017364,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c01733c,PC),r0
	fmov fr3,@(r0,r14)

loc_8c0172de:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01733e,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0172f2
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0172f2:
	mova @(loc_8c017368,PC),r0
	mov.l @(loc_8c017378,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c01736c,PC),r0
	mov.l @(loc_8c017374,PC),r3
	fmov @r0,fr2
	mova @(loc_8c017370,PC),r0
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
	bra loc_8c01739e
	fmov fr2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c017326:
	#data 0xe021
loc_8c017328:
	#data 0x02ec
loc_8c01732a:
	#data 0x2228
loc_8c01732c:
	#data 0x8926
loc_8c01732e:
	#data 0x9001
loc_8c017330:
	#data 0xa035
loc_8c017332:
	#data 0x0e44
loc_8c017334:
	#data 0x012c
loc_8c017336:
	#data 0x010c
loc_8c017338:
	#data 0x0084
loc_8c01733a:
	#data 0x0439
loc_8c01733c:
	#data 0x0080
loc_8c01733e:
	#data 0x0168
	#align4

loc_8c017340:
	#data bank14.loc_8c14465c
loc_8c017344:
	#data bank12.loc_8c1294c8
loc_8c017348:
	#data 0x8c26a93c
loc_8c01734c:
	#data 0x41200000
loc_8c017350:
	#data 0x8c212bfc
loc_8c017354:
	#data bank14.loc_8c143c10
loc_8c017358:
	#data bank14.loc_8c1447ec
loc_8c01735c:
	#data work.GameGlobalPointer
loc_8c017360:
	#data 0x3f7ae148
loc_8c017364:
	#data 0x3ea8f5c3
loc_8c017368:
	#data 0x3f000000
loc_8c01736c:
	#data 0x47800000
loc_8c017370:
	#data 0x43b40000
loc_8c017374:
	#data 0x0000ffff
loc_8c017378:
	#data bank11.loc_8c11e2e0

;----------------------------------------------
loc_8c01737c:
	mova @(loc_8c017488,PC),r0
	fmov @r0,fr3
	mov 0x78,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c01748c,PC),r0
	fmov @r0,fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c017490,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c017482,PC),r0
	fmov fr3,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x74,r0
	fmov fr4,@(r0,r14)

loc_8c01739e:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

loc_8c0173a6:
	rts
	nop

loc_8c0173aa:
	bra loc_8c016f90
	nop

loc_8c0173ae:
	rts
	nop

;----------------------------------------------
loc_8c0173b2:
	mova @(loc_8c017494,PC),r0
	mov.l @(loc_8c017498,PC),r5
	fmov @r0,fr4
	mov 0x10,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fdiv fr4,fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov.l @(0x18,r5),r3
	mov.l @(loc_8c01749c,PC),r0
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	rts
	fmov fr3,@(r0,r4)

loc_8c0173e0:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c0174a0,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8c0173f4:
	mov r4,r3
	mov.l @(loc_8c0174a4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c017406:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x04,r13
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov r12,r14
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15

loc_8c01741a:
	mov r14,r5
	bsr loc_8c016e1c
	mov 0x00,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c01741a
	mov 0x00,r5
	bsr loc_8c016e1c
	mov 0x04,r4
	mov.l @(loc_8c0174b0,PC),r11
	mov r12,r13
	mov.l @(loc_8c0174ac,PC),r10
	mov 0x02,r14
	mov.l @(loc_8c0174a8,PC),r9

loc_8c017436:
	mov 0x0C,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01746c
	mov r0,r4
	mov.w @(loc_8c017484,PC),r0
	mov r4,r1
	mov.l @(loc_8c0174b4,PC),r3
	mov r10,r2
	mov.b r12,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x20,r0
	mov.l @(loc_8c0174b8,PC),r3
	mov.b r13,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0174bc,PC),r3
	mov r4,r1
	mov r9,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c01746c:
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c017436
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c017482:
	#data 0x0080
loc_8c017484:
	#data 0x012c
	#align4
loc_8c017488:
	#data 0x3e947ae1
loc_8c01748c:
	#data 0x3ef5c28f
loc_8c017490:
	#data 0x3f3851ec
loc_8c017494:
	#data 0x41200000
loc_8c017498:
	#data 0x8c212bfc
loc_8c01749c:
	#data bank14.loc_8c143c10
loc_8c0174a0:
	#data bank14.loc_8c144800
loc_8c0174a4:
	#data bank14.loc_8c144814
loc_8c0174a8:
	#data bank14.loc_8c144668
loc_8c0174ac:
	#data bank14.loc_8c14465c
loc_8c0174b0:
	#data bank04.loc_8c044f12
loc_8c0174b4:
	#data loc_8c0173f4
loc_8c0174b8:
	#data bank12.loc_8c1294c8
loc_8c0174bc:
	#data bank12.loc_8c1294bc

;----------------------------------------------
loc_8c0174c0:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov r14,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x04,r9
	sts.l pr,@-r15
	mov.w @(loc_8c01760a,PC),r12
	mov.l @(loc_8c01761c,PC),r11
	mov.l @(loc_8c017618,PC),r10

loc_8c0174da:
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c017508
	mov r0,r4
	mov.w @(loc_8c01760c,PC),r0
	mov r4,r1
	mov.l @(loc_8c017620,PC),r3
	mov r10,r2
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov 0x20,r0
	mov.l @(loc_8c017624,PC),r3
	mov.b r13,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01760e,PC),r0
	mov.l r12,@(r0,r4)

loc_8c017508:
	add 0x01,r13
	cmp/ge r9,r13
	bf loc_8c0174da
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01753e
	mov r0,r4
	mov.w @(loc_8c01760c,PC),r0
	mov 0x01,r2
	mov.l @(loc_8c017620,PC),r3
	mov r4,r1
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.l @(loc_8c017624,PC),r3
	mov r10,r2
	mov.b r14,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01760e,PC),r0
	mov.l r12,@(r0,r4)

loc_8c01753e:
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
loc_8c017552:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r14
	mov.l @(loc_8c017628,PC),r0
	shll2 r14
	mov.l @(loc_8c01761c,PC),r8
	mov 0x01,r12
	mov.l @(loc_8c01762c,PC),r9
	mov.w @(loc_8c01760a,PC),r11
	mov r4,r13
	mov 0x00,r4
	mov.b r5,@r15
	mov.l @(r0,r14),r14
	mov r12,r10

loc_8c01757c:
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r8
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0175f2
	mov r0,r4
	mov.w @(loc_8c01760c,PC),r0
	mov.l @(loc_8c017620,PC),r3
	mov.b r12,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r13),r3
	mov.l @(loc_8c017630,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(loc_8c017610,PC),r3
	mov.b r10,@(r0,r4)
	add 0x01,r10
	mov.w @(loc_8c017612,PC),r0
	add r13,r3
	mov.l r3,@(r0,r4)
	mov.l @r2,r0
	mov r14,r2
	mov.l @r0,r3
	mov.w @(0xC,r14),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8c017614,PC),r0
	mov.l @(loc_8c017624,PC),r3
	mov.l r1,@(r0,r4)
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov r13,r2
	mov.l @(loc_8c017624,PC),r3
	mov r4,r1
	add 0x50,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01760e,PC),r0
	mov r4,r1
	mov.l @(loc_8c017634,PC),r3
	mov r9,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.b @(0xF,r14),r0
	cmp/pz r0
	bf loc_8c0175f2
	bra loc_8c01757c
	add 0x10,r14

loc_8c0175f2:
	mov r4,r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01760a:
	#data 0x0431
loc_8c01760c:
	#data 0x012c
loc_8c01760e:
	#data 0x00cc
loc_8c017610:
	#data 0x0088
loc_8c017612:
	#data 0x00c8
loc_8c017614:
	#data 0x0084
	#align4

loc_8c017618:
	#data bank14.loc_8c144830
loc_8c01761c:
	#data bank04.loc_8c044f12
loc_8c017620:
	#data loc_8c018224
loc_8c017624:
	#data bank12.loc_8c1294c8
loc_8c017628:
	#data bank14.loc_8c1448cc
loc_8c01762c:
	#data bank14.loc_8c145430
loc_8c017630:
	#data 0x8c26a93c
loc_8c017634:
	#data bank12.loc_8c1294bc

;----------------------------------------------
loc_8c017638:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop
	mov.l @(loc_8c017760,PC),r3
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.b r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01767e
	mov r0,r4
	mov.w @(loc_8c017750,PC),r0
	mov 0x00,r3
	mov 0x23,r1
	mov.l @(loc_8c017764,PC),r2
	mov.b r3,@(r0,r4)
	add r4,r1
	mov.l r2,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c017768,PC),r2
	mov.b r0,@r1
	mov 0x20,r0
	mov.b @r15,r3
	mov r4,r1
	add 0x50,r1
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c01776c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c017754,PC),r0
	mov.w @(loc_8c017752,PC),r1
	mov.l r1,@(r0,r4)

loc_8c01767e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c017686:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r13
	mov.l @(loc_8c017770,PC),r0
	shll2 r13
	mov.w @(loc_8c017752,PC),r10
	mov 0x01,r12
	mov.l @(loc_8c017760,PC),r8
	mov.b r5,@r15
	mov 0x00,r14
	mov.l @(r0,r13),r13
	mov r4,r11
	mov r12,r9

loc_8c0176ae:
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r8
	mov r6,r4
	tst r0,r0
	bt.s loc_8c017738
	mov r0,r14
	mov.w @(loc_8c017750,PC),r0
	mov.l @(loc_8c017764,PC),r3
	mov.b r12,@(r0,r14)
	mov 0x23,r0
	mov.l r3,@(0x10,r14)
	mov.b @r15,r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r11),r3
	mov.l @(loc_8c017774,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.w @(loc_8c017756,PC),r3
	mov.b r9,@(r0,r14)
	add 0x01,r9
	mov.w @(loc_8c017758,PC),r0
	add r11,r3
	mov.l r3,@(r0,r14)
	mov.l @r2,r0
	mov r13,r2
	mov.l @r0,r3
	mov.w @(0x18,r13),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8c01775a,PC),r0
	mov.l @(loc_8c01776c,PC),r3
	mov.l r1,@(r0,r14)
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov r13,r2
	mov.l @(loc_8c01776c,PC),r3
	mov r14,r1
	add 0x0C,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c017754,PC),r0
	mov r14,r1
	mov.l @(loc_8c017778,PC),r2
	add 0x74,r1
	mov.l @(loc_8c01777c,PC),r3
	mov.l r10,@(r0,r14)
	jsr @r3
	mov 0x10,r0
	mov r12,r0
	nop
	mov.b r0,@(0x4,r14)
	mov 0x1A,r0
	mov.b @(r0,r13),r3
	mov.w @(loc_8c01775c,PC),r0
	mov.l r3,@(r0,r14)
	bsr loc_8c017900
	mov r14,r4
	mov 0x1B,r0
	mov.b @(r0,r13),r2
	cmp/pz r2
	bf loc_8c017738
	bra loc_8c0176ae
	add 0x1C,r13

loc_8c017738:
	mov r14,r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c017750:
	#data 0x012c
loc_8c017752:
	#data 0x0431
loc_8c017754:
	#data 0x00cc
loc_8c017756:
	#data 0x0088
loc_8c017758:
	#data 0x00c8
loc_8c01775a:
	#data 0x0084
loc_8c01775c:
	#data 0x00d0
	#align4
loc_8c017760:
	#data bank04.loc_8c044f12
loc_8c017764:
	#data loc_8c018090
loc_8c017768:
	#data bank14.loc_8c144830
loc_8c01776c:
	#data bank12.loc_8c1294c8
loc_8c017770:
	#data bank14.loc_8c144ff8
loc_8c017774:
	#data 0x8c26a93c
loc_8c017778:
	#data bank14.loc_8c145430
loc_8c01777c:
	#data bank12.loc_8c1294bc

;----------------------------------------------
loc_8c017780:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop
	mov.l @(loc_8c0178c0,PC),r3
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.b r5,@r15
	mov 0x0C,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0177d0
	mov r0,r4
	mov.w @(loc_8c0178b4,PC),r0
	mov 0x00,r5
	mov.l @(loc_8c0178c4,PC),r3
	mov 0x23,r1
	mov.b r5,@(r0,r4)
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c0178c8,PC),r2
	mov.b r0,@r1
	mov 0x20,r0
	mov.b @r15,r3
	mov r4,r1
	add 0x50,r1
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c0178cc,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0178b6,PC),r0
	mov r4,r1
	mov.l @(loc_8c0178d0,PC),r2
	add 0x74,r1
	mov.l @(loc_8c0178d4,PC),r3
	mov.l r5,@(r0,r4)
	jsr @r3
	mov 0x10,r0

loc_8c0177d0:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0177d8:
	rts
	nop

;----------------------------------------------
loc_8c0177dc:
	mov 0x01,r3
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c0178b4,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r5
	mov.l @(loc_8c0178d8,PC),r0
	extu.b r5,r5
	shll2 r5
	mov.l @(r0,r5),r5
	tst r5,r5
	bf loc_8c017800
	mov.l @(loc_8c0178dc,PC),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c017800:
	mov 0x20,r0
	mov.b @(r0,r4),r6
	mov 0x1C,r2
	extu.b r6,r3
	mulu.w r2,r3
	extu.b r6,r0
	cmp/eq 0x04,r0
	sts macl,r3
	add r3,r5
	bf loc_8c017822
	mov 0x21,r0
	mov.b @(r0,r4),r6
	mov.l @(loc_8c0178e0,PC),r0
	extu.b r6,r6
	shll r6
	bra loc_8c017826
	mov.w @(r0,r6),r6

loc_8c017822:
	mov.w @(0x18,r5),r0
	mov r0,r6

loc_8c017826:
	mov.l @(loc_8c0178e4,PC),r3
	extu.w r6,r6
	shll2 r6
	mov r4,r1
	mov.l @r3,r0
	add 0x34,r1
	mov.l @(loc_8c0178cc,PC),r3
	mov.l @r0,r0
	mov.l @(r0,r6),r2
	mov.w @(loc_8c0178b8,PC),r0
	mov.l r2,@(r0,r4)
	mov r5,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0178c8,PC),r2
	mov r4,r1
	mov.l @(loc_8c0178cc,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x1B,r0
	mov.b @(r0,r5),r1
	mova @(loc_8c0178e8,PC),r0
	fmov @r0,fr3
	mov.l @(loc_8c0178ec,PC),r0
	shll2 r1
	fmov @(r0,r1),fr2
	mova @(loc_8c0178f0,PC),r0
	fmov @r0,fr1
	mova @(loc_8c0178f4,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(loc_8c0178f8,PC),r1
	mov 0x48,r0
	fldi1 fr3
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r4)
	mov.w @(loc_8c0178bc,PC),r0
	mov.w @(loc_8c0178ba,PC),r3
	mov.l @(r0,r4),r2
	or r3,r2
	mov.l r2,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r5),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r5),fr3
	add 0x6C,r0
	mov.l @(loc_8c0178fc,PC),r5
	fmov fr3,@(r0,r4)
	mov.l @r5,r2
	lds.l @r15+,pr
	mov.b @(0x3,r2),r0
	shll8 r0
	mov r0,r1
	mov.b @(0x4,r2),r0
	or r0,r1
	mov.w @(loc_8c0178be,PC),r0
	rts
	mov.l r1,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0178b4:
	#data 0x012c
loc_8c0178b6:
	#data 0x00d4
loc_8c0178b8:
	#data 0x0084
loc_8c0178ba:
	#data 0x0428
loc_8c0178bc:
	#data 0x00cc
loc_8c0178be:
	#data 0x00d8
	#align4
loc_8c0178c0:
	#data bank04.loc_8c044f12
loc_8c0178c4:
	#data loc_8c018090
loc_8c0178c8:
	#data bank14.loc_8c144830
loc_8c0178cc:
	#data bank12.loc_8c1294c8
loc_8c0178d0:
	#data bank14.loc_8c145430
loc_8c0178d4:
	#data bank12.loc_8c1294bc
loc_8c0178d8:
	#data bank14.loc_8c1453e4
loc_8c0178dc:
	#data bank04.loc_8c0450c0
loc_8c0178e0:
	#data bank14.loc_8c145090
loc_8c0178e4:
	#data 0x8c26a93c
loc_8c0178e8:
	#data 0x47800000
loc_8c0178ec:
	#data bank14.loc_8c145084
loc_8c0178f0:
	#data 0x43b40000
loc_8c0178f4:
	#data 0x3f000000
loc_8c0178f8:
	#data 0x0000ffff
loc_8c0178fc:
	#data work.GameGlobalPointer

;==============================================
loc_8c017900:
	mova @(loc_8c0179a0,PC),r0
	mov.l @(loc_8c0179a4,PC),r3
	fmov @r0,fr5
	mov.w @(loc_8c01799a,PC),r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c017978
	mov.l @r3,r7
	mov 0x20,r0
	mov.b @(r0,r4),r5
	mov.l @(loc_8c0179a8,PC),r0
	extu.b r5,r5
	mov.b @(r0,r5),r5
	mov.l @(loc_8c0179ac,PC),r0
	mov r5,r6
	shll2 r6
	mov.l @(r0,r6),r6
	mov r5,r0
	nop
	cmp/eq 0x02,r0
	bf.s loc_8c017930
	mov.b @r6,r6
	mov 0x01,r1
	xor r1,r6

loc_8c017930:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov.w @(0x8,r7),r0
	extu.b r3,r3
	cmp/eq r0,r3
	bf loc_8c017952
	cmp/pz r5
	bf loc_8c01794c
	mov.w @(loc_8c01799a,PC),r0
	exts.b r6,r6
	mov.l @(r0,r4),r3
	add 0xFF,r3
	cmp/eq r3,r6
	bt loc_8c017984

loc_8c01794c:
	mova @(loc_8c0179b0,PC),r0
	bra loc_8c01798a
	fmov @r0,fr4

loc_8c017952:
	cmp/pz r5
	bf loc_8c017972
	mov.w @(loc_8c01799a,PC),r0
	exts.b r6,r6
	mov.l @(r0,r4),r3
	add 0xFF,r3
	cmp/eq r3,r6
	bf loc_8c017972
	mov 0x78,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	add 0x08,r0
	fmov fr5,fr4
	fmov fr4,@(r0,r4)
	bra loc_8c017994
	mov 0x7C,r0

loc_8c017972:
	mova @(loc_8c0179b4,PC),r0
	bra loc_8c01798a
	fmov @r0,fr4

loc_8c017978:
	mov 0x20,r0
	mov.b @(r0,r4),r1
	mov.w @(0x8,r7),r0
	extu.b r1,r1
	cmp/eq r0,r1
	bf loc_8c017988

loc_8c017984:
	bra loc_8c01798a
	fldi1 fr4

loc_8c017988:
	fmov fr5,fr4

loc_8c01798a:
	mov.w @(loc_8c01799c,PC),r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	mov 0x78,r0

loc_8c017994:
	fmov fr4,@(r0,r4)
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01799a:
	#data 0x00d0
loc_8c01799c:
	#data 0x0080
	#align4
loc_8c0179a0:
	#data 0x3f333333
loc_8c0179a4:
	#data work.GameGlobalPointer
loc_8c0179a8:
	#data bank14.loc_8c1454c0
loc_8c0179ac:
	#data bank14.loc_8c1454b4
loc_8c0179b0:
	#data 0x3f000000
loc_8c0179b4:
	#data 0x3e4ccccc

;----------------------------------------------
loc_8c0179b8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3
	mov.l r13,@-r15
	mov.l @(loc_8c017b00,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c017af4,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r13
	mov 0x1C,r3
	extu.b r13,r13
	mulu.w r3,r13
	mov.l @(loc_8c017b04,PC),r3
	mov.l @r3,r0
	sts macl,r13
	mov.l @r0,r1
	mov.l @(loc_8c017b08,PC),r3
	add r2,r13
	mov.w @(0x18,r13),r0
	mov r13,r2
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r1),r1
	mov.w @(loc_8c017af6,PC),r0
	mov.l r1,@(r0,r14)
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov r13,r2
	mov.l @(loc_8c017b08,PC),r3
	mov r14,r1
	add 0x0C,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c017afa,PC),r0
	mov 0x00,r1
	mov.w @(loc_8c017af8,PC),r3
	mov.l @(r0,r14),r2
	fldi1 fr3
	or r3,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l r1,@(r0,r14)
	mov 0x74,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c017900
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov 0x03,r5
	extu.b r6,r6
	bsr loc_8c017686
	mov r14,r4
	mov 0x1B,r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c017a58
	mov.b @(r0,r13),r0
	tst 0x80,r0
	bt loc_8c017a4a
	lds.l @r15+,pr
	mov 0x20,r0
	mov.b @(r0,r14),r5
	mov 0x05,r4
	mov.l @r15+,r13
	bra loc_8c017780
	mov.l @r15+,r14

loc_8c017a4a:
	lds.l @r15+,pr
	mov 0x20,r0
	mov.b @(r0,r14),r5
	mov 0x06,r4
	mov.l @r15+,r13
	bra loc_8c017638
	mov.l @r15+,r14

loc_8c017a58:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c017a60:
	mov.l @(loc_8c017b0c,PC),r6
	mov 0x01,r3
	mov.l @(loc_8c017b04,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c017af4,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @r6,r5
	mov.l @r1,r2
	mov r4,r1
	mov.w @(0x8,r5),r0
	mov 0x1C,r5
	mov.l @(loc_8c017b00,PC),r3
	add 0x34,r1
	muls.w r5,r0
	mov.l @r2,r2
	mov.w @(loc_8c017afc,PC),r0
	sts macl,r5
	mov.l @(r0,r2),r0
	add r3,r5
	mov.w @(loc_8c017af6,PC),r3
	mov r5,r2
	add r4,r3
	mov.l r0,@r3
	mov.l @(loc_8c017b08,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov r5,r2
	mov.l @(loc_8c017b08,PC),r3
	mov r4,r1
	add 0x0C,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c017afa,PC),r0
	mov r4,r1
	mov.w @(loc_8c017af8,PC),r3
	add 0x74,r1
	mov.l @(r0,r4),r2
	or r3,r2
	mov.l @(loc_8c017b14,PC),r3
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c017b10,PC),r2
	jsr @r3
	mov 0x10,r0
	mov.l @r6,r1
	lds.l @r15+,pr
	mov.w @(0x8,r1),r0
	mov.w @(loc_8c017afe,PC),r1
	add r4,r1
	rts
	mov.l r0,@r1

loc_8c017acc:
	mov 0x01,r3
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x02,r0
	mov.b r0,@(0x5,r4)
	mov.w @(loc_8c017af4,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r5
	mov.l @(loc_8c017b18,PC),r0
	extu.b r5,r5
	shll2 r5
	mov.l @(r0,r5),r5
	tst r5,r5
	bf loc_8c017b20
	mov.l @(loc_8c017b1c,PC),r2
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c017af4:
	#data 0x012c
loc_8c017af6:
	#data 0x0084
loc_8c017af8:
	#data 0x0420
loc_8c017afa:
	#data 0x00cc
loc_8c017afc:
	#data 0x015c
loc_8c017afe:
	#data 0x00d4
	#align4
loc_8c017b00:
	#data bank14.loc_8c1448dc
loc_8c017b04:
	#data 0x8c26a93c
loc_8c017b08:
	#data bank12.loc_8c1294c8
loc_8c017b0c:
	#data work.GameGlobalPointer
loc_8c017b10:
	#data bank14.loc_8c145430
loc_8c017b14:
	#data bank12.loc_8c1294bc
loc_8c017b18:
	#data bank14.loc_8c1453e4
loc_8c017b1c:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c017b20:
	mov 0x20,r0
	mov.b @(r0,r4),r6
	mov 0x1C,r2
	extu.b r6,r3
	mulu.w r2,r3
	extu.b r6,r0
	cmp/eq 0x04,r0
	sts macl,r3
	add r3,r5
	bf loc_8c017b42
	mov 0x21,r0
	mov.b @(r0,r4),r7
	mov.l @(loc_8c017c44,PC),r0
	extu.b r7,r7
	shll r7
	bra loc_8c017b46
	mov.w @(r0,r7),r7

loc_8c017b42:
	mov.w @(0x18,r5),r0
	mov r0,r7

loc_8c017b46:
	mov 0x21,r0
	mov.b @(r0,r4),r0
	extu.w r7,r6
	extu.b r0,r0
	cmp/eq 0x12,r0
	bf.s loc_8c017b62
	shll2 r6
	mov.l @(loc_8c017c48,PC),r3
	mov.l @r3,r0
	mov.l @r0,r0
	mov.l @(r0,r6),r2
	mov.w @(loc_8c017c3a,PC),r0
	bra loc_8c017b80
	mov.l r2,@(r0,r4)

loc_8c017b62:
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov 0x10,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c017b74
	mov.l @(loc_8c017c4c,PC),r3
	bra loc_8c017b76
	nop

loc_8c017b74:
	mov.l @(loc_8c017c50,PC),r3

loc_8c017b76:
	mov.l @r3,r0
	mov.l @r0,r0
	mov.l @(r0,r6),r1
	mov.w @(loc_8c017c3a,PC),r0
	mov.l r1,@(r0,r4)

loc_8c017b80:
	mov.l @(loc_8c017c54,PC),r3
	mov r4,r1
	mov r5,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c017c58,PC),r2
	mov r4,r1
	mov.l @(loc_8c017c54,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x1B,r0
	mov.b @(r0,r5),r1
	mova @(loc_8c017c5c,PC),r0
	fmov @r0,fr3
	mov.l @(loc_8c017c60,PC),r0
	shll2 r1
	fmov @(r0,r1),fr2
	mova @(loc_8c017c64,PC),r0
	fmov @r0,fr1
	mova @(loc_8c017c68,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(loc_8c017c6c,PC),r1
	mov 0x48,r0
	fldi1 fr3
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r4)
	mov.w @(loc_8c017c3e,PC),r0
	mov.w @(loc_8c017c3c,PC),r3
	mov.l @(r0,r4),r2
	or r3,r2
	mov.l r2,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r5),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	lds.l @r15+,pr
	fmov @(r0,r5),fr3
	add 0x6C,r0
	rts
	fmov fr3,@(r0,r4)

;----------------------------------------------
loc_8c017bec:
	mov 0x01,r7
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	mov r4,r1
	add 0x34,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c017c40,PC),r0
	mov.b r7,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	shlr r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c017c70,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c017c54,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c017c74,PC),r1
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov.l @r1,r3
	extu.b r2,r2
	mov.w @(0x8,r3),r0
	cmp/eq r0,r2
	bf.s loc_8c017c78
	fldi1 fr4
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	bra loc_8c017c88
	fmov fr4,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c017c3a:
	#data 0x0084
loc_8c017c3c:
	#data 0x0428
loc_8c017c3e:
	#data 0x00cc
loc_8c017c40:
	#data 0x012c
	#align4
loc_8c017c44:
	#data bank14.loc_8c145090
loc_8c017c48:
	#data 0x8c26a93c
loc_8c017c4c:
	#data 0x8c26a948
loc_8c017c50:
	#data 0x8c26a944
loc_8c017c54:
	#data bank12.loc_8c1294c8
loc_8c017c58:
	#data bank14.loc_8c144830
loc_8c017c5c:
	#data 0x47800000
loc_8c017c60:
	#data bank14.loc_8c145084
loc_8c017c64:
	#data 0x43b40000
loc_8c017c68:
	#data 0x3f000000
loc_8c017c6c:
	#data 0x0000ffff
loc_8c017c70:
	#data bank14.loc_8c1454c8
loc_8c017c74:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c017c78:
	mova @(loc_8c017d9c,PC),r0
	fmov @r0,fr5
	mov 0x78,r0
	fmov fr5,@(r0,r4)
	mov 0x7C,r0
	fmov fr5,@(r0,r4)
	add 0x04,r0
	fmov fr5,@(r0,r4)

loc_8c017c88:
	mov 0x74,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c017c9e
	mov.l @(loc_8c017da4,PC),r5
	mov 0x08,r14
	mov.l @(loc_8c017da0,PC),r3
	bra loc_8c017ca6
	mov.b @r3,r1

loc_8c017c9e:
	mov.l @(loc_8c017da8,PC),r3
	mov 0x04,r14
	mov.l @(loc_8c017dac,PC),r5
	mov.b @r3,r1

loc_8c017ca6:
	mov.w @(loc_8c017d90,PC),r0
	cmp/pl r14
	mov 0x00,r6
	mov.l r5,@(r0,r4)
	mov r5,r4
	bf.s loc_8c017cc6
	mov r6,r5

loc_8c017cb4:
	cmp/gt r1,r5
	bt loc_8c017cbc
	bra loc_8c017cbe
	mov.b r7,@r4

loc_8c017cbc:
	mov.b r6,@r4

loc_8c017cbe:
	add 0x01,r5
	cmp/ge r14,r5
	bf.s loc_8c017cb4
	add 0x08,r4

loc_8c017cc6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c017ccc:
	mov 0x01,r6
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c017d92,PC),r0
	mov.b r6,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c017cea
	mov.l @(loc_8c017db0,PC),r2
	bra loc_8c017cf0
	nop

loc_8c017cea:
	cmp/eq 0x03,r0
	bf loc_8c017cf4
	mov.l @(loc_8c017db4,PC),r2

loc_8c017cf0:
	bra loc_8c017cfa
	mov.b @r2,r5

loc_8c017cf4:
	mov.l @(loc_8c017db8,PC),r3
	mov.b @r3,r5
	xor r6,r5

loc_8c017cfa:
	mov 0x20,r0
	mov.l @(loc_8c017dbc,PC),r6
	mov.b @(r0,r4),r0
	mov r4,r1
	add 0x34,r1
	extu.b r0,r0
	add 0xFF,r0
	mov.b @(r0,r6),r2
	mov.l @(loc_8c017dc0,PC),r0
	extu.b r2,r2
	add r5,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c017dc4,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r3
	mov.l @(loc_8c017dc8,PC),r1
	add r4,r3
	mov.b @r3,r3
	mov.l @r1,r0
	mov r4,r1
	extu.b r3,r2
	add 0x03,r2
	mov.l @r0,r0
	add r2,r6
	mov.b @r6,r3
	add 0x50,r1
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8c017d94,PC),r0
	mov.l @(loc_8c017dc4,PC),r3
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c017dcc,PC),r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c017d98,PC),r0
	mov.w @(loc_8c017d96,PC),r3
	mov.l @(r0,r4),r1
	fldi1 fr3
	or r3,r1
	mov.l r1,@(r0,r4)
	mova @(loc_8c017d9c,PC),r0
	fmov @r0,fr4
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr
	rts
	mov.w r0,@(0x1E,r4)

loc_8c017d74:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c017dd0,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8c017d88:
	rts
	nop

;----------------------------------------------
loc_8c017d8c:
	bra loc_8c017900
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c017d90:
	#data 0x00d4
loc_8c017d92:
	#data 0x012c
loc_8c017d94:
	#data 0x0084
loc_8c017d96:
	#data 0x0420
loc_8c017d98:
	#data 0x00cc
	#align4
loc_8c017d9c:
	#data 0x3f333333
loc_8c017da0:
	#data 0x8c212cbd
loc_8c017da4:
	#data bank14.loc_8c145014
loc_8c017da8:
	#data 0x8c212cbf
loc_8c017dac:
	#data bank14.loc_8c14505c
loc_8c017db0:
	#data 0x8c212cbe
loc_8c017db4:
	#data 0x8c212cc0
loc_8c017db8:
	#data 0x8c212cbc
loc_8c017dbc:
	#data bank14.loc_8c1454ac
loc_8c017dc0:
	#data bank14.loc_8c145440
loc_8c017dc4:
	#data bank12.loc_8c1294c8
loc_8c017dc8:
	#data 0x8c26a93c
loc_8c017dcc:
	#data bank14.loc_8c144830
loc_8c017dd0:
	#data bank14.loc_8c1454e0

;----------------------------------------------
loc_8c017dd4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c017ee8,PC),r4
	mov r14,r1
	mov.l @(loc_8c017eec,PC),r3
	add 0x34,r1
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @r4,r5
	mov.w @(0x8,r5),r0
	mov 0x1C,r5
	muls.w r5,r0
	sts macl,r5
	add r3,r5
	mov.l @(loc_8c017ef0,PC),r3
	mov r5,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @r4,r0
	mov.l @(loc_8c017ef4,PC),r2
	mov.w @(0x8,r0),r0
	cmp/eq 0x06,r0
	bf.s loc_8c017e26
	mov.l @r2,r5
	mov.w @(loc_8c017edc,PC),r0
	mov.l @r5,r1
	fldi1 fr4
	mov.l @(r0,r1),r3
	mov.w @(loc_8c017ede,PC),r0
	mov.l r3,@(r0,r14)
	mova @(loc_8c017ef8,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	bra loc_8c017e5c
	fmov fr4,@(r0,r14)

loc_8c017e26:
	mov.w @(loc_8c017ee0,PC),r0
	mov.l @r5,r1
	mov.l @(r0,r1),r3
	mov.l @(loc_8c017efc,PC),r1
	mov.w @(loc_8c017ede,PC),r0
	lds r1,fpul
	mov.l r3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(loc_8c017f00,PC),r0
	fmov @r0,fr2
	mov 0x54,r0
	fmov fr2,@(r0,r14)
	mov.l @r4,r0
	mov.w @(0x8,r0),r0
	cmp/eq 0x05,r0
	bf loc_8c017e54
	mova @(loc_8c017f04,PC),r0
	bra loc_8c017e58
	fmov @r0,fr2

loc_8c017e54:
	mova @(loc_8c017f08,PC),r0
	fmov @r0,fr2

loc_8c017e58:
	mov 0x50,r0
	fmov fr2,@(r0,r14)

loc_8c017e5c:
	mov.w @(loc_8c017ee2,PC),r3
	mov.l @r4,r5
	add r14,r3
	mov.l @r3,r3
	mov.w @(0x8,r5),r0
	cmp/eq r0,r3
	bt.s loc_8c017e7a
	mov 0x00,r6
	mov.w @(loc_8c017ee2,PC),r1
	mov.w @(0x8,r5),r0
	add r14,r1
	mov.l r0,@r1
	mov r6,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c017e7a:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c017ee4,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c017e8e
	mov r6,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c017e8e:
	mova @(loc_8c017f0c,PC),r0
	mov.l @(loc_8c017f1c,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c017f10,PC),r0
	mov.l @(loc_8c017f18,PC),r3
	fmov @r0,fr2
	mova @(loc_8c017f14,PC),r0
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

;----------------------------------------------
loc_8c017ec8:
	mov.l @(loc_8c017ee8,PC),r1
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov.l @r1,r2
	extu.b r3,r3
	mov.w @(0x8,r2),r0
	cmp/eq r0,r3
	bf loc_8c017f20
	bra loc_8c017f24
	fldi1 fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c017edc:
	#data 0x01f4
loc_8c017ede:
	#data 0x0084
loc_8c017ee0:
	#data 0x0334
loc_8c017ee2:
	#data 0x00d4
loc_8c017ee4:
	#data 0x0168
	#align4
loc_8c017ee8:
	#data work.GameGlobalPointer
loc_8c017eec:
	#data bank14.loc_8c1448dc
loc_8c017ef0:
	#data bank12.loc_8c1294c8
loc_8c017ef4:
	#data 0x8c26a93c
loc_8c017ef8:
	#data 0xc14fd70a
loc_8c017efc:
	#data 0x3c23d70a
loc_8c017f00:
	#data 0x3f266666
loc_8c017f04:
	#data 0x4051eb85
loc_8c017f08:
	#data 0x3ff70a3d
loc_8c017f0c:
	#data 0x3f000000
loc_8c017f10:
	#data 0x47800000
loc_8c017f14:
	#data 0x43b40000
loc_8c017f18:
	#data 0x0000ffff
loc_8c017f1c:
	#data bank11.loc_8c11e2e0

;----------------------------------------------
loc_8c017f20:
	mova @(loc_8c018010,PC),r0
	fmov @r0,fr4

loc_8c017f24:
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c017f44
	mov 0x00,r7
	mov.l @(loc_8c018018,PC),r4
	mov 0x08,r6
	mov.l @(loc_8c018014,PC),r3
	bra loc_8c017f4c
	mov.b @r3,r1
 
loc_8c017f44:
	mov.l @(loc_8c01801c,PC),r3
	mov 0x04,r6
	mov.l @(loc_8c018020,PC),r4
	mov.b @r3,r1

loc_8c017f4c:
	cmp/pl r6
	mov r7,r5
	bf.s loc_8c017f66
	mov 0x01,r0

loc_8c017f54:
	cmp/gt r1,r5
	bt loc_8c017f5c
	bra loc_8c017f5e
	mov.b r0,@r4

loc_8c017f5c:
	mov.b r7,@r4

loc_8c017f5e:
	add 0x01,r5
	cmp/ge r6,r5
	bf.s loc_8c017f54
	add 0x08,r4

loc_8c017f66:
	rts
	nop

;----------------------------------------------
loc_8c017f6a:
	mov.l @(loc_8c018024,PC),r1
	mov 0x20,r0
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	mov 0x00,r4
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.l @r1,r2
	mov.b @(r0,r14),r3
	mov.w @(0x8,r2),r0
	extu.b r3,r3
	cmp/eq r0,r3
	bf.s loc_8c017fda
	fldi1 fr15
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01800e,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c017f9c
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c017f9c:
	mova @(loc_8c018028,PC),r0
	mov.l @(loc_8c018038,PC),r2
	fmov @r0,fr14
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c01802c,PC),r0
	mov.l @(loc_8c018034,PC),r3
	fmov @r0,fr2
	mova @(loc_8c018030,PC),r0
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
	mov 0x78,r0
	fmov fr15,@(r0,r14)
	mov 0x7C,r0
	fmov fr15,@(r0,r14)
	bra loc_8c017ff2
	add 0x04,r0

loc_8c017fda:
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)
	mova @(loc_8c018010,PC),r0
	fmov @r0,fr4
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	mov 0x74,r0

loc_8c017ff2:
	fmov fr15,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0

;----------------------------------------------
loc_8c017ffa:
	cmp/eq 0x01,r0
	bf loc_8c018004
	mov.l @(loc_8c01803c,PC),r2
	bra loc_8c01800a
	nop

loc_8c018004:
	cmp/eq 0x03,r0
	bf loc_8c018044
	mov.l @(loc_8c018040,PC),r2

loc_8c01800a:
	bra loc_8c01804c
	mov.b @r2,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01800e:
	#data 0x0168
loc_8c018010:
	#data 0x3f333333
loc_8c018014:
	#data 0x8c212cbd
loc_8c018018:
	#data bank14.loc_8c145014
loc_8c01801c:
	#data 0x8c212cbf
loc_8c018020:
	#data bank14.loc_8c14505c
loc_8c018024:
	#data work.GameGlobalPointer
loc_8c018028:
	#data 0x3f000000
loc_8c01802c:
	#data 0x47800000
loc_8c018030:
	#data 0x43b40000
loc_8c018034:
	#data 0x0000ffff
loc_8c018038:
	#data bank11.loc_8c11e2e0
loc_8c01803c:
	#data 0x8c212cbe
loc_8c018040:
	#data 0x8c212cc0

;----------------------------------------------
loc_8c018044:
	mov.l @(loc_8c018158,PC),r3
	mov 0x01,r4
	mov.b @r3,r0
	xor r0,r4

loc_8c01804c:
	mov 0x20,r0
	mov r14,r1
	mov.b @(r0,r14),r2
	add 0x34,r1
	mov.l @(loc_8c01815c,PC),r0
	extu.b r2,r2
	add 0xFF,r2
	mov.b @(r0,r2),r2
	extu.b r2,r2
	add r4,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c018160,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c018164,PC),r3
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01807c:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c018168,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c018090:
	mov r4,r3
	mov.l @(loc_8c01816c,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0180a2:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3
	mov r14,r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x74,r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c01814e,PC),r0
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.l @(r0,r14),r2
	mov.w @(loc_8c018150,PC),r3
	or r3,r2
	mov.l @(loc_8c018174,PC),r3
	mov.l r2,@(r0,r14)
	mov.l @(loc_8c018170,PC),r2
	jsr @r3
	mov 0x10,r0
	mov 0x23,r0
	mov.l @(loc_8c018178,PC),r1
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c01810e
	mov.l @r1,r4
	mov 0x20,r0
	mov.l @(loc_8c01817c,PC),r3
	mov.b @(r0,r14),r5
	mov.l @r4,r2
	extu.b r5,r5
	shll2 r5
	shll2 r5
	add r3,r5
	mov.l @(loc_8c018164,PC),r3
	mov.w @(0xC,r5),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r2),r1
	mov r5,r2
	mov.w @(loc_8c018152,PC),r0
	mov.l r1,@(r0,r14)
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov r14,r4
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov 0x02,r5
	extu.b r6,r6
	bra loc_8c017552
	mov.l @r15+,r14

loc_8c01810e:
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c018130
	mov.w @(loc_8c018154,PC),r0
	mov.l @r4,r3
	mov.l @(loc_8c018180,PC),r5
	mov.l @(r0,r3),r2
	mov.w @(loc_8c018152,PC),r0
	mov.l r2,@(r0,r14)
	mov.l @r5,r3
	mov.w @(loc_8c018156,PC),r2
	mov.w @(0x8,r3),r0
	add r14,r2
	mov.l r0,@r2
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c018130:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c018136:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x23,r0
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c018184
	mov.w @(loc_8c01814e,PC),r0
	mov 0x01,r3
	bra loc_8c01821c
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01814e:
	#data 0x012c
loc_8c018150:
	#data 0x0420
loc_8c018152:
	#data 0x0084
loc_8c018154:
	#data 0x0238
loc_8c018156:
	#data 0x00d4
	#align4
loc_8c018158:
	#data 0x8c212cbc
loc_8c01815c:
	#data bank14.loc_8c1454ac
loc_8c018160:
	#data bank14.loc_8c145440
loc_8c018164:
	#data bank12.loc_8c1294c8
loc_8c018168:
	#data bank14.loc_8c1454fc
loc_8c01816c:
	#data bank14.loc_8c145518
loc_8c018170:
	#data bank14.loc_8c145430
loc_8c018174:
	#data bank12.loc_8c1294bc
loc_8c018178:
	#data 0x8c26a93c
loc_8c01817c:
	#data bank14.loc_8c14483c
loc_8c018180:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c018184:
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c01821c
	mov.l @(loc_8c0182b0,PC),r4
	mov r14,r1
	mov.l @(loc_8c0182b4,PC),r3
	add 0x34,r1
	mov.l @r4,r5
	mov.w @(0x8,r5),r0
	mov r0,r5
	shll2 r5
	shll2 r5
	add r3,r5
	mov.l @(loc_8c0182b8,PC),r3
	mov r5,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0182bc,PC),r1
	mov 0x3C,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.l @r4,r3
	mov.w @(0x8,r3),r0
	mov.w @(loc_8c0182ac,PC),r3
	add r14,r3
	mov.l @r3,r3
	cmp/eq r0,r3
	bt.s loc_8c0181d6
	mov 0x00,r5
	mov.l @r4,r1
	mov.w @(0x8,r1),r0
	mov.w @(loc_8c0182ac,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0181d6:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c0182ae,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0181ea
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0181ea:
	mova @(loc_8c0182c0,PC),r0
	mov.l @(loc_8c0182d0,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c0182c4,PC),r0
	mov.l @(loc_8c0182cc,PC),r3
	fmov @r0,fr2
	mova @(loc_8c0182c8,PC),r0
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

loc_8c01821c:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c018224:
	mov r4,r3
	mov.l @(loc_8c0182d4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c018236:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mova @(loc_8c0182d8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r4)
	mov 0x74,r0
	fldi0 fr3
	rts
	fmov fr3,@(r0,r4)

;----------------------------------------------
loc_8c018250:
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
	bt loc_8c018276
	mov 0x74,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8c018276:
	rts
	nop

;----------------------------------------------
loc_8c01827a:
	rts
	nop

;----------------------------------------------
loc_8c01827e:
	mov.l @(loc_8c0182dc,PC),r3
	jmp @r3
	nop

;----------------------------------------------
loc_8c018284:
	mov.l @(loc_8c0182dc,PC),r3
	jmp @r3
	nop

;----------------------------------------------
loc_8c01828a:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov 0x07,r13
	sts.l pr,@-r15

loc_8c018294:
	mov r14,r5
	bsr loc_8c017638
	mov 0x01,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c018294
	lds.l @r15+,pr
	mov 0x00,r5
	mov 0x02,r4
	mov.l @r15+,r13
	bra loc_8c017638
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0182ac:
	#data 0x00d4
loc_8c0182ae:
	#data 0x0168
	#align4
loc_8c0182b0:
	#data work.GameGlobalPointer
loc_8c0182b4:
	#data bank14.loc_8c14483c
loc_8c0182b8:
	#data bank12.loc_8c1294c8
loc_8c0182bc:
	#data 0x3c23d70a
loc_8c0182c0:
	#data 0x3f000000
loc_8c0182c4:
	#data 0x47800000
loc_8c0182c8:
	#data 0x43b40000
loc_8c0182cc:
	#data 0x0000ffff
loc_8c0182d0:
	#data bank11.loc_8c11e2e0
loc_8c0182d4:
	#data bank14.loc_8c145528
loc_8c0182d8:
	#data 0x3d088889
loc_8c0182dc:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c0182e0:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x05,r12
	mov.l r11,@-r15
	mov 0x08,r11
	sts.l pr,@-r15

loc_8c0182f2:
	cmp/gt r11,r13
	bt loc_8c0182fc
	mov r14,r5
	bra loc_8c018300
	mov 0x00,r4

loc_8c0182fc:
	mov 0x04,r4
	mov r14,r5

loc_8c018300:
	bsr loc_8c017638
	nop
	add 0x01,r14
	mov r0,r4
	cmp/ge r12,r14
	mov 0x21,r0
	bf.s loc_8c0182f2
	mov.b r13,@(r0,r4)
	mov r4,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c018320:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov r14,r0
	nop
	cmp/eq 0x0D,r0
	bf.s loc_8c018342
	mov 0x00,r4
	mov 0x05,r5
	bsr loc_8c017638
	mov 0x04,r4
	mov r0,r4
	mov 0x21,r0
	mov 0x06,r5
	mov.b r14,@(r0,r4)
	bra loc_8c018358
	mov 0x04,r4

loc_8c018342:
	mov 0x08,r2
	cmp/gt r2,r14
	bt loc_8c018362
	mov 0x05,r5
	bsr loc_8c017638
	mov 0x00,r4
	mov r0,r4
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	mov 0x00,r4
	mov 0x06,r5

loc_8c018358:
	bsr loc_8c017638
	nop
	mov r0,r4
	mov 0x21,r0
	mov.b r14,@(r0,r4)

loc_8c018362:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c01836c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.w @(loc_8c0183e0,PC),r0
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c01838e
	bra loc_8c0184a2
	nop

loc_8c01838e:
	mov.w @(loc_8c0183e2,PC),r0
	mov.l @(r0,r13),r14
	tst r14,r14
	bf loc_8c01839a
	bra loc_8c0184a2
	nop

loc_8c01839a:
	mov.l @(loc_8c0183e8,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c0183ec,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0183f0,PC),r2
	mov r13,r4
	jsr @r2
	add 0x34,r4
	mov.l @(loc_8c0183f4,PC),r3
	mov.w @(loc_8c0183e4,PC),r4
	jsr @r3
	add r13,r4
	mov.l @(loc_8c0183f8,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c0183fc,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0183e8,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c018400,PC),r3
	mov.w @(loc_8c0183e4,PC),r4
	jsr @r3
	add r13,r4
	mov.l @(loc_8c01840c,PC),r10
	mov.l @(loc_8c018410,PC),r11
	mov.l @(loc_8c018414,PC),r12
	mov.l @(loc_8c018404,PC),r8
	mov.l @(loc_8c018408,PC),r9
	fldi0 fr15
	bra loc_8c018482
	fmov fr15,fr14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0183e0:
	#data 0x012c
loc_8c0183e2:
	#data 0x00d4
loc_8c0183e4:
	#data 0x0088
	#align4
loc_8c0183e8:
	#data bank12.loc_8c120950
loc_8c0183ec:
	#data bank12.loc_8c121100
loc_8c0183f0:
	#data bank12.loc_8c1210e0
loc_8c0183f4:
	#data bank11.loc_8c11fa80
loc_8c0183f8:
	#data bank12.loc_8c120900
loc_8c0183fc:
	#data bank02.loc_8c02e334
loc_8c018400:
	#data bank11.loc_8c1201e0
loc_8c018404:
	#data bank14.loc_8c144830
loc_8c018408:
	#data bank12.loc_8c120ff0
loc_8c01840c:
	#data bank12.loc_8c1210b0
loc_8c018410:
	#data bank12.loc_8c123610
loc_8c018414:
	#data 0x8c26a93c

;----------------------------------------------
loc_8c018418:
	tst r3,r3
	bt loc_8c01847c
	mov 0x04,r0
	fmov fr14,fr4
	fmov @(r0,r14),fr3
	fmov fr15,fr5
	fmov fr15,fr6
	jsr @r10
	fadd fr3,fr4
	mov.b @(0x1,r14),r0
	tst r0,r0
	bt loc_8c018454
	mov.l @(loc_8c0184bc,PC),r4
	jsr @r9
	nop
	mov.l @(loc_8c0184c0,PC),r3
	mov 0x0C,r0
	mov r8,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(loc_8c0184c4,PC),r2
	jsr @r2
	nop
	add 0x0C,r15
	lds r0,fpul
	mov.l @(loc_8c0184c8,PC),r3
	float fpul,fr3
	jsr @r3
	fmov fr3,fr4

loc_8c018454:
	mov.w @(loc_8c0184b8,PC),r0
	mov.l @(loc_8c0184cc,PC),r3
	fmov @(r0,r13),fr6
	mov 0x7C,r0
	fmov @(r0,r13),fr5
	mov 0x78,r0
	jsr @r3
	fmov @(r0,r13),fr4
	mov 0x74,r0
	fmov @(r0,r13),fr4
	mov.w @(0x2,r14),r0
	extu.w r0,r4
	mov.l @r12,r0
	shll2 r4
	mov.l @r0,r3
	add r3,r4
	jsr @r11
	mov.l @r4,r4
	bra loc_8c018480
	fmov fr15,fr14

loc_8c01847c:
	mov 0x04,r0
	fmov @(r0,r14),fr14

loc_8c018480:
	add 0x08,r14

loc_8c018482:
	mov.b @r14,r3
	cmp/pz r3
	bt loc_8c018418
	lds.l @r15+,pr
	mov.l @(loc_8c0184d0,PC),r3
	mov 0x01,r4
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0184a2:
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
loc_8c0184b8:
	#data 0x0080
	#align4
loc_8c0184bc:
	#data bank14.loc_8c144830
loc_8c0184c0:
	#data bank12.loc_8c1294c8
loc_8c0184c4:
	#data bank03.loc_8c0301b4
loc_8c0184c8:
	#data bank12.loc_8c122710
loc_8c0184cc:
	#data bank12.loc_8c123780
loc_8c0184d0:
	#data bank12.loc_8c120900

;----------------------------------------------
loc_8c0184d4:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop
	mov.l @(loc_8c018630,PC),r3
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.b r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01851a
	mov r0,r4
	mov.w @(loc_8c018624,PC),r0
	mov 0x00,r3
	mov 0x23,r1
	mov.l @(loc_8c018634,PC),r2
	mov.b r3,@(r0,r4)
	add r4,r1
	mov.l r2,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.l @(loc_8c018638,PC),r2
	mov.b r0,@r1
	mov 0x20,r0
	mov.b @r15,r3
	mov r4,r1
	add 0x50,r1
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c01863c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c018626,PC),r0
	mov 0x11,r1
	mov.l r1,@(r0,r4)

loc_8c01851a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c018522:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r14
	mov.l @(loc_8c018640,PC),r0
	shll2 r14
	mov.w @(loc_8c018628,PC),r11
	mov.l @(loc_8c018644,PC),r8
	mov r4,r13
	mov.l @(loc_8c018630,PC),r9
	mov 0x01,r12
	mov 0x00,r4
	mov.b r5,@r15
	mov.l @(r0,r14),r14
	mova @(loc_8c018648,PC),r0
	fmov @r0,fr15
	mov r12,r10

loc_8c018552:
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r9
	mov r6,r4
	tst r0,r0
	bt.s loc_8c018606
	mov r0,r4
	mov.w @(loc_8c018624,PC),r0
	mov r4,r1
	mov.l @(loc_8c018634,PC),r3
	add 0x34,r1
	mov.b r12,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(loc_8c01862a,PC),r3
	mov.b r10,@(r0,r4)
	add 0x01,r10
	mov.w @(loc_8c01862c,PC),r0
	add r13,r3
	mov.l r3,@(r0,r4)
	mov.l @r8,r0
	mov.l @r0,r3
	mov.w @(0xC,r14),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r2
	mov.w @(loc_8c01862e,PC),r0
	mov.l @(loc_8c01863c,PC),r3
	mov.l r2,@(r0,r4)
	mov r14,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov r4,r1
	mov.b @(r0,r4),r2
	add 0x50,r1
	mov.l @(loc_8c01864c,PC),r0
	extu.b r2,r2
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	mov.l @(loc_8c018650,PC),r2
	fmov fr3,@(r0,r4)
	mov.b @(0xE,r14),r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c01863c,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c018626,PC),r0
	mov r13,r2
	mov r4,r1
	mov.l @(loc_8c018654,PC),r3
	add 0x74,r2
	mov.l r11,@(r0,r4)
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov r12,r0
	nop
	mov.b r0,@(0x4,r4)
	mov 0x20,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c0185fc
	mov 0x21,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0185fc
	mov 0x78,r0
	fmov fr15,@(r0,r4)
	mov 0x7C,r0
	fmov fr15,@(r0,r4)
	add 0x04,r0
	fmov fr15,@(r0,r4)

loc_8c0185fc:
	mov.b @(0xF,r14),r0
	cmp/pz r0
	bf loc_8c018606
	bra loc_8c018552
	add 0x10,r14

loc_8c018606:
	mov r4,r0
	nop
	add 0x04,r15
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

loc_8c018620:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c018624:
	#data 0x012c
loc_8c018626:
	#data 0x00cc
loc_8c018628:
	#data 0x0431
loc_8c01862a:
	#data 0x0088
loc_8c01862c:
	#data 0x00c8
loc_8c01862e:
	#data 0x0084
	#align4
loc_8c018630:
	#data bank04.loc_8c044f12
loc_8c018634:
	#data loc_8c018b60
loc_8c018638:
	#data bank14.loc_8c145544
loc_8c01863c:
	#data bank12.loc_8c1294c8
loc_8c018640:
	#data bank14.loc_8c145798
loc_8c018644:
	#data 0x8c26a93c
loc_8c018648:
	#data 0x3f19999a
loc_8c01864c:
	#data bank14.loc_8c145620
loc_8c018650:
	#data bank14.loc_8c1455d8
loc_8c018654:
	#data bank12.loc_8c1294bc

;----------------------------------------------
loc_8c018658:
	mov 0x01,r3
	mov.l @(loc_8c018760,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c018750,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x20,r3
	add r4,r3
	mov.l @(loc_8c01875c,PC),r0
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r1
	mov.l @r2,r0
	extu.w r1,r1
	mov.l @r0,r3
	shll2 r1
	add r3,r1
	mov.l @r1,r0
	mov.w @(loc_8c018752,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov r4,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	mov.l @(loc_8c018764,PC),r3
	add 0x34,r1
	add r3,r2
	mov.l @(loc_8c018768,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01876c,PC),r2
	mov r4,r1
	mov.l @(loc_8c018768,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0186c4
	mov.w @(loc_8c018754,PC),r3
	mov 0x48,r0
	mov.l @(loc_8c018770,PC),r1
	bra loc_8c0186c6
	mov.l r1,@(r0,r4)

loc_8c0186c4:
	mov.w @(loc_8c018756,PC),r3

loc_8c0186c6:
	mov.w @(loc_8c018758,PC),r0
	mov.l @(r0,r4),r1
	or r3,r1
	mov.l @(loc_8c018774,PC),r3
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov r4,r1
	add 0x74,r1
	extu.b r2,r2
	shll2 r2
	shll2 r2
	add r3,r2
	mov.l @(loc_8c018778,PC),r3
	jsr @r3
	mov 0x10,r0
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c0186ec:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c018750,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c01877c,PC),r0
	extu.b r3,r3
	add 0xFF,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8c01875a,PC),r3
	mov.l @(0x4,r2),r1
	tst r3,r1
	bt.s loc_8c01871a
	mov r4,r5
	mov 0x0A,r5

loc_8c01871a:
	mov 0x20,r2
	mov.l @(loc_8c018780,PC),r0
	add r14,r2
	mov.l @(loc_8c018760,PC),r3
	mov.b @r2,r2
	extu.b r2,r2
	add r5,r2
	shll r2
	mov.w @(r0,r2),r1
	mov.l @r3,r0
	extu.w r1,r1
	mov.l @r0,r2
	shll2 r1
	add r2,r1
	mov.l @r1,r0
	mov 0x08,r2
	mov.w @(loc_8c018752,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov 0x20,r0
	mov.b @(r0,r14),r5
	extu.b r5,r5
	cmp/ge r2,r5
	bt.s loc_8c018784
	mov 0x23,r0
	bra loc_8c018786
	mov 0x00,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c018750:
	#data 0x012c
loc_8c018752:
	#data 0x0084
loc_8c018754:
	#data 0x0428
loc_8c018756:
	#data 0x0420
loc_8c018758:
	#data 0x00cc
loc_8c01875a:
	#data 0x0101
	#align4
loc_8c01875c:
	#data bank14.loc_8c145870
loc_8c018760:
	#data 0x8c26a93c
loc_8c018764:
	#data bank14.loc_8c145828
loc_8c018768:
	#data bank12.loc_8c1294c8
loc_8c01876c:
	#data bank14.loc_8c145544
loc_8c018770:
	#data 0x00008000
loc_8c018774:
	#data bank14.loc_8c1457c8
loc_8c018778:
	#data bank12.loc_8c1294bc
loc_8c01877c:
	#data 0x8c212be0
loc_8c018780:
	#data bank14.loc_8c1455b0

;----------------------------------------------
loc_8c018784:
	add 0xF9,r5

loc_8c018786:
	mov.b @(r0,r14),r2
	mov r14,r1
	add 0x34,r1
	extu.b r2,r2
	add 0xFF,r2
	shll2 r2
	add r5,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c0188a4,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0188a8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0188ac,PC),r2
	mov r14,r1
	mov.l @(loc_8c0188a8,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c018898,PC),r0
	mov.w @(loc_8c018896,PC),r3
	mov.l @(r0,r14),r1
	mov.l @(loc_8c0188b0,PC),r2
	or r3,r1
	fldi1 fr4
	mov.l r1,@(r0,r14)
	mov 0x23,r1
	add r14,r1
	mov 0x74,r0
	fmov fr4,@(r0,r14)
	mov.b @r1,r1
	mov.l @r2,r0
	extu.b r1,r1
	add 0x70,r0
	add 0xFF,r1
	mov.b @(r0,r1),r1
	mov 0x20,r0
	mov.b @(r0,r14),r0
	cmp/eq r0,r1
	bt loc_8c018806
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c0187f4
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c0187f4
	mov.w @(loc_8c01889a,PC),r0
	bra loc_8c018806
	mov.b r4,@(r0,r14)

loc_8c0187f4:
	mova @(loc_8c0188b4,PC),r0
	fmov @r0,fr4
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	bra loc_8c018812
	fmov fr4,@(r0,r14)

loc_8c018806:
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)

loc_8c018812:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8c01882e
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r6
	mov 0x23,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r5
	extu.b r6,r6
	bra loc_8c018522
	mov.l @r15+,r14

loc_8c01882e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c018834:
	mov 0x20,r0
	mov.l @(loc_8c0188b8,PC),r7
	mov.b @(r0,r4),r0
	mov 0x01,r6
	mov.l @(loc_8c0188bc,PC),r3
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf.s loc_8c018872
	mov.l @r3,r5
	mov 0x23,r2
	mov r6,r1
	add r4,r2
	mov.b @(0x6,r7),r0
	mov.b @r2,r2
	extu.b r2,r2
	add 0xFD,r2
	shad r2,r1
	tst r1,r0
	bt loc_8c01885e
	bra loc_8c018860
	mov 0x00,r7

loc_8c01885e:
	mov r6,r7

loc_8c018860:
	mov.l @r5,r2
	extu.w r7,r7
	mov.w @(loc_8c01889c,PC),r0
	shll2 r7
	add r2,r7
	mov.l @(r0,r7),r3
	mov.w @(loc_8c01889e,PC),r0
	bra loc_8c018900
	mov.l r3,@(r0,r4)

loc_8c018872:
	cmp/eq 0x07,r0
	bf loc_8c0188c0
	mov 0x23,r0
	mov r7,r2
	mov.b @(r0,r4),r1
	add 0x08,r2
	mov.w @(loc_8c0188a0,PC),r0
	extu.b r1,r1
	add 0xFD,r1
	add r2,r1
	mov.b @r1,r2
	mov.l @r5,r1
	shll2 r2
	add r1,r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8c01889e,PC),r0
	bra loc_8c018900
	mov.l r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c018896:
	#data 0x0420
loc_8c018898:
	#data 0x00cc
loc_8c01889a:
	#data 0x012c
loc_8c01889c:
	#data 0x02f4
loc_8c01889e:
	#data 0x0084
loc_8c0188a0:
	#data 0x02ec
	#align4
loc_8c0188a4:
	#data bank14.loc_8c145550
loc_8c0188a8:
	#data bank12.loc_8c1294c8
loc_8c0188ac:
	#data bank14.loc_8c145544
loc_8c0188b0:
	#data work.GameGlobalPointer
loc_8c0188b4:
	#data 0x3f19999a
loc_8c0188b8:
	#data 0x8c212bfc
loc_8c0188bc:
	#data 0x8c26a93c

;----------------------------------------------
loc_8c0188c0:
	mov 0x23,r0
	mov r7,r1
	mov.b @(r0,r4),r0
	add 0x20,r1
	extu.b r0,r0
	add 0xFD,r0
	mov r0,r2
	shll r0
	add r2,r0
	mov 0x20,r2
	shll2 r0
	add r4,r2
	add r1,r0
	mov.b @r2,r2
	mov r0,r3
	mov.l @(loc_8c0189e8,PC),r0
	extu.b r2,r2
	mov.b @(r0,r2),r1
	mov.l @(loc_8c0189ec,PC),r0
	extu.b r1,r1
	shll r1
	add r1,r3
	mov.w @r3,r7
	extu.w r7,r7
	shll r7
	mov.w @(r0,r7),r2
	mov.l @r5,r0
	extu.w r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8c0189de,PC),r0
	mov.l r3,@(r0,r4)

loc_8c018900:
	mov 0x23,r0
	mov.l @(loc_8c0189f0,PC),r5
	mov.b @(r0,r4),r3
	extu.b r3,r3
	tst r6,r3
	bt loc_8c018938
	mov 0x20,r0
	mov.b @(r0,r4),r6
	extu.b r6,r0
	cmp/eq 0x06,r0
	bt.s loc_8c018920
	mov r0,r6
	mov r6,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c018926

loc_8c018920:
	mova @(loc_8c0189f4,PC),r0
	bra loc_8c01892a
	fmov @r0,fr3

loc_8c018926:
	mova @(loc_8c0189f8,PC),r0
	fmov @r0,fr3

loc_8c01892a:
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	bra loc_8c018964
	shll2 r0

loc_8c018938:
	mov 0x20,r0
	mov.b @(r0,r4),r6
	extu.b r6,r0
	cmp/eq 0x06,r0
	bt.s loc_8c01894c
	mov r0,r6
	mov r6,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c018952

loc_8c01894c:
	mova @(loc_8c0189fc,PC),r0
	bra loc_8c018956
	fmov @r0,fr3

loc_8c018952:
	mova @(loc_8c018a00,PC),r0
	fmov @r0,fr3

loc_8c018956:
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll2 r3
	add r3,r5

loc_8c018964:
	mov 0x23,r2
	mov.l @(loc_8c018a04,PC),r3
	add r4,r2
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.b @r2,r2
	mov.l @r3,r1
	extu.b r2,r2
	add 0xFD,r2
	add 0x70,r1
	add r1,r2
	mov.b @r2,r0
	mov 0x20,r2
	add r4,r2
	mov.b @r2,r2
	cmp/eq r2,r0
	bf loc_8c01898c
	bra loc_8c018990
	fldi1 fr4

loc_8c01898c:
	mova @(loc_8c018a08,PC),r0
	fmov @r0,fr4

loc_8c018990:
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	rts
	fmov fr4,@(r0,r4)

;----------------------------------------------
loc_8c01899e:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c0189e0,PC),r0
	mov.b r3,@(r0,r14)
	bsr loc_8c018834
	mov r14,r4
	mova @(loc_8c018a0c,PC),r0
	mov r14,r1
	fmov @r0,fr3
	mov 0x3C,r0
	mov.l @(loc_8c018a10,PC),r2
	add 0x50,r1
	mov.l @(loc_8c018a14,PC),r3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0189e4,PC),r0
	mov.w @(loc_8c0189e2,PC),r3
	mov.l @(r0,r14),r1
	fldi1 fr3
	or r3,r1
	mov.l r1,@(r0,r14)
	mov 0x74,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0189de:
	#data 0x0084
loc_8c0189e0:
	#data 0x012c
loc_8c0189e2:
	#data 0x0420
loc_8c0189e4:
	#data 0x00cc
	#align4
loc_8c0189e8:
	#data bank14.loc_8c1457c0
loc_8c0189ec:
	#data bank14.loc_8c1458bc
loc_8c0189f0:
	#data bank14.loc_8c14587c
loc_8c0189f4:
	#data 0xc07c28f6
loc_8c0189f8:
	#data 0xc0b00000
loc_8c0189fc:
	#data 0x4100f5c3
loc_8c018a00:
	#data 0x40d00000
loc_8c018a04:
	#data work.GameGlobalPointer
loc_8c018a08:
	#data 0x3f333333
loc_8c018a0c:
	#data 0xc146147b
loc_8c018a10:
	#data bank14.loc_8c145544
loc_8c018a14:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c018a18:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c018b34,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8c018a2c:
	rts
	nop

;----------------------------------------------
loc_8c018a30:
	mov.l @(loc_8c018b38,PC),r7
	mov 0x01,r5
	mov.l @r7,r6
	mov.b @(0x3,r6),r0
	cmp/eq 0x01,r0
	bf.s loc_8c018a78
	fldi1 fr4
	mov 0x23,r0
	mov r6,r3
	mov.b @(r0,r4),r2
	add 0x70,r3
	mov 0x20,r0
	extu.b r2,r2
	add 0xFF,r2
	add r3,r2
	mov.b @(r0,r4),r3
	mov.b @r2,r1
	cmp/eq r3,r1
	bf loc_8c018b24
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c018b24
	mov 0x21,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c018b24
	mov.w @(loc_8c018b2c,PC),r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c018b2e,PC),r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	bra loc_8c018b24
	fmov fr4,@(r0,r4)

loc_8c018a78:
	mov 0x21,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c018abe
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mov.l @(loc_8c018b3c,PC),r0
	extu.b r3,r3
	add 0xFF,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8c018b30,PC),r3
	mov.l @(0x4,r2),r1
	tst r3,r1
	bt.s loc_8c018a9a
	mov 0x00,r6
	mov 0x0A,r6

loc_8c018a9a:
	mov 0x20,r2
	mov.l @(loc_8c018b40,PC),r0
	add r4,r2
	mov.l @(loc_8c018b44,PC),r3
	mov.b @r2,r2
	extu.b r2,r2
	add r6,r2
	shll r2
	mov.w @(r0,r2),r1
	mov.l @r3,r0
	extu.w r1,r1
	mov.l @r0,r2
	shll2 r1
	add r2,r1
	mov.l @r1,r0
	mov.w @(loc_8c018b32,PC),r1
	add r4,r1
	mov.l r0,@r1

loc_8c018abe:
	mov 0x23,r3
	mov.l @r7,r2
	add r4,r3
	mov.b @r3,r3
	add 0x70,r2
	mov 0x20,r0
	extu.b r3,r3
	add 0xFF,r3
	add r2,r3
	mov.b @r3,r1
	mov.b @(r0,r4),r3
	cmp/eq r3,r1
	bf loc_8c018afc
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c018aee
	mov 0x21,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c018aee
	mov.w @(loc_8c018b2c,PC),r0
	bra loc_8c018b14
	mov.b r5,@(r0,r4)

loc_8c018aee:
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	bra loc_8c018b24
	fmov fr4,@(r0,r4)

loc_8c018afc:
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c018b14
	mov 0x21,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c018b14
	mov.w @(loc_8c018b2c,PC),r0
	mov 0x00,r3
	bra loc_8c018b24
	mov.b r3,@(r0,r4)

loc_8c018b14:
	mova @(loc_8c018b48,PC),r0
	fmov @r0,fr4
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c018b24:
	rts
	nop

loc_8c018b28:
	bra loc_8c018834
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c018b2c:
	#data 0x012c
loc_8c018b2e:
	#data 0x0080
loc_8c018b30:
	#data 0x0101
loc_8c018b32:
	#data 0x0084
	#align4
loc_8c018b34:
	#data bank14.loc_8c1458d4
loc_8c018b38:
	#data work.GameGlobalPointer
loc_8c018b3c:
	#data 0x8c212be0
loc_8c018b40:
	#data bank14.loc_8c1455b0
loc_8c018b44:
	#data 0x8c26a93c
loc_8c018b48:
	#data 0x3f19999a

;==============================================
loc_8c018b4c:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c018bd4,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c018b60:
	mov r4,r3
	mov.l @(0x74,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15


;==============================================
loc_8c018b72:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x06,r13
	mov.l r12,@-r15
	mov 0x00,r12
	sts.l pr,@-r15
	mov r12,r14

loc_8c018b80:
	mov r14,r5
	bsr loc_8c0184d4
	mov 0x00,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c018b80
	mov r12,r13
	mov 0x0A,r14

loc_8c018b90:
	mov r13,r5
	bsr loc_8c0184d4
	mov 0x01,r4
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c018b90
	mov r12,r13

loc_8c018b9e:
	mov r13,r5
	bsr loc_8c0184d4
	mov 0x02,r4
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c018b9e
	mov r12,r13
	mov 0x08,r14

loc_8c018bae:
	mov r13,r5
	bsr loc_8c0184d4
	mov 0x03,r4
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c018bae
	mov r12,r13

loc_8c018bbc:
	mov r13,r5
	bsr loc_8c0184d4
	mov 0x04,r4
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c018bbc
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c018bd4:
	#data bank14.loc_8c1458ec bank14.loc_8c145904

;----------------------------------------------
loc_8c018bdc:
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(loc_8c018d14,PC),r3
	mov 0x0B,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c018c42
	mov r0,r4
	mov.w @(loc_8c018d0a,PC),r0
	mov 0x00,r3
	mov 0x23,r1
	mov.l @(loc_8c018d18,PC),r2
	mov.b r3,@(r0,r4)
	add r4,r1
	mov.l r2,@(0x10,r4)
	mov 0x20,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov r4,r1
	mov.b @(0x4,r15),r0
	add 0x50,r1
	mov.b r0,@r2
	mov 0x21,r0
	mov.b @r15,r3
	mov.l @(loc_8c018d1c,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c018d20,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c018d0c,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mov 0x74,r0
	mov.w @(loc_8c018d0e,PC),r3
	fmov fr3,@(r0,r4)
	add 0x58,r0
	mov.l r3,@(r0,r4)

loc_8c018c42:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c018c4a:
	mov 0x01,r3
	mov.l @(loc_8c018d24,PC),r5
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c018d0a,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c018c80
	mov 0x20,r2
	mov.l @(loc_8c018d28,PC),r3
	add r4,r2
	mov.b @r2,r2
	mov.l @r3,r0
	extu.b r2,r2
	shll r2
	mov.l @r0,r0
	add r2,r5
	mov.w @r5,r1
	extu.w r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	bra loc_8c018c9a
	nop

loc_8c018c80:
	mov 0x20,r2
	mov.l @(loc_8c018d2c,PC),r3
	add r4,r2
	mov.b @r2,r2
	mov.l @r3,r0
	extu.b r2,r2
	shll r2
	mov.l @r0,r1
	add r2,r5
	mov.w @(0xE,r5),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r1),r2

loc_8c018c9a:
	mov.w @(loc_8c018d10,PC),r0
	mov r4,r1
	add 0x34,r1
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c018d30,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c018d20,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b @(r0,r4),r1
	mov 0x02,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bt loc_8c018cda
	mova @(loc_8c018d36,PC),r0
	fldi1 fr3
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	bra loc_8c018ce6
	fmov fr3,@(r0,r4)

loc_8c018cda:
	mov.l @(loc_8c018d1c,PC),r2
	mov r4,r1
	mov.l @(loc_8c018d20,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8c018ce6:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c018cec:
	mov 0x01,r3
	mov.l @(loc_8c018d1c,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	mov r4,r1
	add 0x50,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c018d0a,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c018d20,PC),r3
	jsr @r3
	mov 0x0C,r0
	bra loc_8c018fd8
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c018d0a:
	#data 0x012c
loc_8c018d0c:
	#data 0x0080
loc_8c018d0e:
	#data 0x0431
loc_8c018d10:
	#data 0x0084
	#align4
loc_8c018d14:
	#data bank04.loc_8c044f12
loc_8c018d18:
	#data loc_8c019428
loc_8c018d1c:
	#data bank14.loc_8c145920
loc_8c018d20:
	#data bank12.loc_8c1294c8
loc_8c018d24:
	#data bank14.loc_8c1459b0
loc_8c018d28:
	#data 0x8c26a93c
loc_8c018d2c:
	#data 0x8c26a940
loc_8c018d30:
	#data bank14.loc_8c14592c

;==============================================
loc_8c018d34:
	mov.l @(0x24,r2),r12

loc_8c018d36:
	addv r8,r15

loc_8c018D38:
	mov 0x01,r3
	mov.l @(loc_8c018e74,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	mov r4,r1
	add 0x50,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c018e62,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c018e78,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c018e7c,PC),r0
	mov.l @r0,r1
	mov.w @(loc_8c018e64,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c018e66,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c018e80,PC),r3
	lds.l @r15+,pr
	mov.l @r3,r1
	mov.w @(0x8,r1),r0
	mov.w @(loc_8c018e68,PC),r1
	add r4,r1
	rts
	mov.l r0,@r1

;==============================================
loc_8c018d70:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3
	mov.l @(loc_8c018e74,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov r14,r1
	add 0x50,r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c018e62,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c018e78,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c018da6
	mov.l @(loc_8c018e7c,PC),r3
	mov.w @(loc_8c018e6a,PC),r0
	mov.l @r3,r1
	mov.l @r1,r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8c018e66,PC),r0
	bra loc_8c018db2
	mov.l r2,@(r0,r14)

loc_8c018da6:
	mov.l @(loc_8c018e84,PC),r1
	mov.w @(loc_8c018e66,PC),r0
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(0x38,r2),r3
	mov.l r3,@(r0,r14)

loc_8c018db2:
	mov.l @(loc_8c018e88,PC),r3
	mov.w @(loc_8c018e66,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c018dc4:
	mov 0x01,r3
	mov.l @(loc_8c018e74,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	mov r4,r1
	add 0x50,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c018e62,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c018e78,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c018df6
	mov.l @(loc_8c018e7c,PC),r3
	mov.w @(loc_8c018e6c,PC),r0
	mov.l @r3,r1
	mov.l @r1,r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8c018e66,PC),r0
	bra loc_8c018e02
	mov.l r2,@(r0,r4)

loc_8c018df6:
	mov.l @(loc_8c018e84,PC),r1
	mov.w @(loc_8c018e66,PC),r0
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @r2,r3
	mov.l r3,@(r0,r4)

loc_8c018e02:
	mov 0x00,r0
	mov.w @(loc_8c018e6e,PC),r3
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov.w @(loc_8c018e70,PC),r0
	fldi1 fr3
	mov.l r3,@(r0,r4)
	add 0xB4,r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mov 0x74,r0
	lds.l @r15+,pr
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c018e24:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3
	mov.l @(loc_8c018e74,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov r14,r1
	add 0x50,r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c018e62,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c018e78,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c018e8c
	mov 0x20,r0
	mov.l @(loc_8c018e7c,PC),r3
	mov.b @(r0,r14),r2
	mov.l @r3,r1
	extu.b r2,r2
	mov.w @(loc_8c018e72,PC),r0
	mov.l @r1,r1
	shll r2
	shll2 r2
	add r1,r2
	bra loc_8c018ea0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c018e62:
	#data 0x012c
loc_8c018e64:
	#data 0x04ac
loc_8c018e66:
	#data 0x0084
loc_8c018e68:
	#data 0x00d4
loc_8c018e6a:
	#data 0x04a4
loc_8c018e6c:
	#data 0x0488
loc_8c018e6e:
	#data 0x0411
loc_8c018e70:
	#data 0x00cc
loc_8c018e72:
	#data 0x04c8
	#align4
loc_8c018e74:
	#data bank14.loc_8c145920
loc_8c018e78:
	#data bank12.loc_8c1294c8
loc_8c018e7c:
	#data 0x8c26a93c
loc_8c018e80:
	#data work.GameGlobalPointer
loc_8c018e84:
	#data 0x8c26a940
loc_8c018e88:
	#data bank10.loc_8c108210

;==============================================
loc_8c018e8c:
	mov 0x20,r0
	mov.l @(loc_8c018fb0,PC),r1
	mov.b @(r0,r14),r2
	mov.l @r1,r3
	extu.b r2,r2
	mov.w @(loc_8c018fa4,PC),r0
	mov.l @r3,r3
	shll r2
	shll2 r2
	add r3,r2

loc_8c018ea0:
	mov.l @(r0,r2),r2
	mov.w @(loc_8c018fa6,PC),r0
	mov.l @(loc_8c018fb4,PC),r3
	mov.l r2,@(r0,r14)
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.l @(loc_8c018fb8,PC),r1
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r4
	exts.b r4,r0
	shll r0
	mov.w @(r0,r1),r0
	exts.b r4,r4
	shll2 r4
	mov.w r0,@(0x1E,r14)
	mov.l @(loc_8c018fbc,PC),r0
	fmov @(r0,r4),fr3
	mov 0x64,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c018ed0:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	mov r4,r1
	mov.l @(loc_8c018fc0,PC),r2
	add 0x50,r1
	add 0x01,r0
	mov.l @(loc_8c018fc4,PC),r3
	mov.b r0,@(0x4,r4)
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.l @(loc_8c018fc8,PC),r7
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf.s loc_8c018f0c
	mov 0x01,r5
	mov r4,r1
	mov r7,r2
	mov.l @(loc_8c018fc4,PC),r3
	mov 0x50,r0
	fldi0 fr3
	add 0x18,r2
	fmov fr3,@(r0,r4)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c018fa8,PC),r0
	bra loc_8c018f46
	mov.b r5,@(r0,r4)

loc_8c018f0c:
	mov 0x21,r0
	mov.b @(r0,r4),r6
	extu.b r6,r0
	cmp/eq 0x01,r0
	bt.s loc_8c018f20
	mov r0,r6
	mov r6,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c018f46

loc_8c018f20:
	mov 0x21,r0
	mov r4,r1
	mov.b @(r0,r4),r2
	add 0x34,r1
	extu.b r2,r2
	add 0xFF,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c018fc4,PC),r3
	shll2 r2
	add r7,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b @(r0,r4),r1
	mov.w @(loc_8c018faa,PC),r0
	extu.b r1,r1
	mov.l r1,@(r0,r4)

loc_8c018f46:
	mov 0x21,r0
	mov.l @(loc_8c018fcc,PC),r3
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf.s loc_8c018f6c
	mov.l @r3,r6
	mov 0x20,r0
	mov.l @r6,r2
	mov.b @(r0,r4),r1
	mov.w @(loc_8c018fac,PC),r0
	extu.b r1,r1
	xor r5,r1
	shll2 r1
	add r2,r1
	mov.l @(r0,r1),r1
	mov.w @(loc_8c018fa6,PC),r0
	bra loc_8c018f84
	mov.l r1,@(r0,r4)

loc_8c018f6c:
	mov 0x21,r0
	mov.b @(r0,r4),r2
	mov.l @(loc_8c018fd0,PC),r0
	extu.b r2,r2
	shll r2
	mov.w @(r0,r2),r1
	mov.l @r6,r0
	extu.w r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	mov.w @(loc_8c018fa6,PC),r0
	mov.l r2,@(r0,r4)

loc_8c018f84:
	lds.l @r15+,pr
	mov 0x0A,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8c018f8c:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c018fd4,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c018fa0:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c018fa4:
	#data 0x01ec
loc_8c018fa6:
	#data 0x0084
loc_8c018fa8:
	#data 0x012c
loc_8c018faa:
	#data 0x00d4
loc_8c018fac:
	#data 0x04dc
	#align4
loc_8c018fb0:
	#data 0x8c26a940
loc_8c018fb4:
	#data bank10.loc_8c108210
loc_8c018fb8:
	#data bank14.loc_8c145980
loc_8c018fbc:
	#data bank14.loc_8c145990
loc_8c018fc0:
	#data bank14.loc_8c145920
loc_8c018fc4:
	#data bank12.loc_8c1294c8
loc_8c018fc8:
	#data bank14.loc_8c1459e4
loc_8c018fcc:
	#data 0x8c26a93c
loc_8c018fd0:
	#data bank14.loc_8c1459d8
loc_8c018fd4:
	#data bank14.loc_8c145a08

;==============================================
loc_8c018fd8:
	mov.l @(loc_8c0190e8,PC),r7
	mov 0x02,r6
	mov.l @r7,r5
	mov.b @(0x2,r5),r0
	cmp/ge r6,r0
	bt loc_8c019026
	mov.b @(0x3,r5),r0
	cmp/ge r6,r0
	bt loc_8c019026
	mov.w @(loc_8c0190da,PC),r0
	mov 0x01,r2
	mov.l @(loc_8c0190ec,PC),r3
	mov.b r2,@(r0,r4)
	mov.l @r7,r2
	mov.w @(0x8,r2),r0
	cmp/ge r6,r0
	bt.s loc_8c019004
	mov.l @r3,r5
	mov.l @(loc_8c0190f0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c019018

loc_8c019004:
	mov.l @r7,r3
	mov.w @(loc_8c0190dc,PC),r1
	mov.w @(0x8,r3),r0
	mov.l @r5,r3
	shll2 r0
	add r3,r0
	mov.l @(r0,r1),r2
	mov.w @(loc_8c0190de,PC),r0
	bra loc_8c01902c
	mov.l r2,@(r0,r4)

loc_8c019018:
	mov.w @(loc_8c0190e0,PC),r0
	mov.l @r5,r2
	mov.w @(loc_8c0190de,PC),r3
	mov.l @(r0,r2),r0
	add r4,r3
	bra loc_8c01902c
	mov.l r0,@r3

loc_8c019026:
	mov.w @(loc_8c0190da,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r4)

loc_8c01902c:
	rts
	nop

;==============================================
loc_8c019030:
	mov.l @(loc_8c0190e8,PC),r6
	mov 0x02,r7
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @r6,r4
	mov.b @(0x2,r4),r0
	cmp/ge r7,r0
	bt.s loc_8c0190c6
	mov 0x00,r5
	mov.b @(0x3,r4),r0
	cmp/ge r7,r0
	bt loc_8c0190c6
	mov.w @(0x8,r4),r0
	mov.l @(loc_8c0190f4,PC),r1
	shll2 r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c0190f8,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov.l @r6,r3
	mov.w @(0x8,r3),r0
	mov.w @(loc_8c0190e2,PC),r3
	add r14,r3
	mov.l @r3,r3
	cmp/eq r0,r3
	bt loc_8c01907e
	mov.l @r6,r1
	mov.w @(0x8,r1),r0
	mov.w @(loc_8c0190e2,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01907e:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c0190e4,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c019092
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c019092:
	mova @(loc_8c0190fc,PC),r0
	mov.l @(loc_8c01910c,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c019100,PC),r0
	mov.l @(loc_8c019108,PC),r3
	fmov @r0,fr2
	mova @(loc_8c019104,PC),r0
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
	bra loc_8c0190d2
	fmov fr2,@(r0,r14)

loc_8c0190c6:
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x74,r0
	fldi1 fr3
	fmov fr3,@(r0,r14)

loc_8c0190d2:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0190da:
	#data 0x012c
loc_8c0190dc:
	#data 0x04b4
loc_8c0190de:
	#data 0x0084
loc_8c0190e0:
	#data 0x04e4
loc_8c0190e2:
	#data 0x00d4
loc_8c0190e4:
	#data 0x0168
	#align4
loc_8c0190e8:
	#data work.GameGlobalPointer
loc_8c0190ec:
	#data 0x8c26a93c
loc_8c0190f0:
	#data 0x8c212f21
loc_8c0190f4:
	#data bank14.loc_8c145a24
loc_8c0190f8:
	#data 0xc161999a
loc_8c0190fc:
	#data 0x3f000000
loc_8c019100:
	#data 0x47800000
loc_8c019104:
	#data 0x43b40000
loc_8c019108:
	#data 0x0000ffff
loc_8c01910c:
	#data bank11.loc_8c11e2e0

;==============================================
loc_8c019110:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov 0x19,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c019134
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c019134:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c01914c
	mov.l @(loc_8c0191f0,PC),r3
	mov.w @(loc_8c0191ea,PC),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.w @(loc_8c0191ec,PC),r0
	mov.l @r4,r2
	bra loc_8c019158
	mov.l @(r0,r2),r4

loc_8c01914c:
	mov.l @(loc_8c0191f4,PC),r3
	mov.w @(loc_8c0191ea,PC),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @r4,r2
	mov.l @(0x3C,r2),r4

loc_8c019158:
	mov.l @(loc_8c0191f8,PC),r1
	jsr @r1
	nop
	mova @(loc_8c01920a,PC),r0
	mov.l @(loc_8c019204,PC),r13
	fmov @r0,fr14
	mov.l @(loc_8c0191fc,PC),r11
	mov.l @(loc_8c019200,PC),r12
	bra loc_8c019190
	fldi1 fr15

;==============================================
loc_8c01916c:
	mov r15,r4
	mov r15,r5
	jsr @r13
	add 0x04,r4
	mov.w @(0x1C,r14),r0
	mov r15,r4
	fmov @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr14,fr3
	fneg fr3
	fadd fr15,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	jsr @r12
	add 0x04,r4

loc_8c019190:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c01916c
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c0191aa:
	mov.w @(0x1C,r4),r0
	mov 0x50,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8c0191c2
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	xor 0x01,r0
	mov.w r0,@(0x1E,r4)

loc_8c0191c2:
	mova @(loc_8c01920e,PC),r0
	fmov @r0,fr4
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bf loc_8c0191d4
	mov 0x78,r0
	fmov @(r0,r4),fr3
	bra loc_8c0191da
	fsub fr4,fr3

loc_8c0191d4:
	mov 0x78,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3

loc_8c0191da:
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	add 0x08,r0
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	rts
	fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0191ea:
	#data 0x0084
loc_8c0191ec:
	#data 0x04a8
	#align4
loc_8c0191f0:
	#data 0x8c26a93c
loc_8c0191f4:
	#data 0x8c26a940
loc_8c0191f8:
	#data bank10.loc_8c108060
loc_8c0191fc:
	#data bank10.loc_8c108086
loc_8c019200:
	#data bank10.loc_8c1081e6
loc_8c019204:
	#data bank10.loc_8c108192

;==============================================
loc_8c019208:
	mov.l @(loc_8c019234,PC),r7

loc_8c01920a:
	cmp/ge r2,r13
	mov.l @(loc_8c019238,PC),r7

loc_8c01920e:
	cmp/ge r10,r11

loc_8c019210:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	cmp/ge r0,r3
	bf loc_8c01924e
	mov 0x00,r0
	mov.l @(loc_8c01932c,PC),r1

loc_8c019234:
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0

loc_8c019238:
	mov.b @(r0,r14),r4
	exts.b r4,r0
	shll r0
	mov.w @(r0,r1),r0
	exts.b r4,r4
	shll2 r4
	mov.w r0,@(0x1E,r14)
	mov.l @(loc_8c019330,PC),r0
	fmov @(r0,r4),fr3
	mov 0x64,r0
	fmov fr3,@(r0,r14)

loc_8c01924e:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c019270
	mov.w @(loc_8c019324,PC),r0
	mov.l @(loc_8c019334,PC),r3
	mov.l @(r0,r14),r5
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.w @(loc_8c019326,PC),r0
	mov.l @r4,r4
	shll r2
	shll2 r2
	bra loc_8c019288
	add r2,r4

loc_8c019270:
	mov.w @(loc_8c019324,PC),r0
	mov.l @(loc_8c019338,PC),r3
	mov.l @(r0,r14),r5
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.w @(loc_8c019328,PC),r0
	mov.l @r4,r4
	shll r2
	shll2 r2
	add r2,r4

loc_8c019288:
	mov.l @(loc_8c01933c,PC),r2
	jsr @r2
	mov.l @(r0,r4),r4
	mov.l @(loc_8c019348,PC),r13
	mov.l @(loc_8c019344,PC),r12
	mov.l @(loc_8c019340,PC),r11
	bra loc_8c0192c0
	fldi1 fr15

loc_8c019298:
	mov r15,r4
	mov r15,r5
	jsr @r11
	add 0x04,r4
	mov.w @(0x1C,r14),r0
	mov r15,r4
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	mov 0x64,r0
	fmov @(r0,r14),fr2
	float fpul,fr3
	fmul fr3,fr2
	fmov @r15,fr3
	fneg fr2
	fadd fr15,fr2
	fadd fr2,fr3
	fmov fr3,@r15
	jsr @r13
	add 0x04,r4

loc_8c0192c0:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c019298
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0192d8:
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c01936a
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c019350
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c019304
	mov 0x50,r0
	fldi1 fr3
	bra loc_8c019316
	fmov fr3,@(r0,r14)

loc_8c019304:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c019316
	mov.l @(loc_8c01934c,PC),r2
	mov.l @r2,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)

loc_8c019316:
	mov.w @(loc_8c01932a,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	bra loc_8c0193fe
	mov.b r0,@(0x5,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c019324:
	#data 0x0084
loc_8c019326:
	#data 0x04c4
loc_8c019328:
	#data 0x01f0
loc_8c01932a:
	#data 0x012c
	#align4
loc_8c01932c:
	#data bank14.loc_8c145980
loc_8c019330:
	#data bank14.loc_8c145990
loc_8c019334:
	#data 0x8c26a93c
loc_8c019338:
	#data 0x8c26a940
loc_8c01933c:
	#data bank10.loc_8c108060
loc_8c019340:
	#data bank10.loc_8c108192
loc_8c019344:
	#data bank10.loc_8c108086
loc_8c019348:
	#data bank10.loc_8c1081e6
loc_8c01934c:
	#data work.GameGlobalPointer

;==============================================
loc_8c019350:
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0193fe
	mov.l @(loc_8c019440,PC),r1
	mov 0x50,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	bra loc_8c0193fe
	fmov fr2,@(r0,r14)

loc_8c01936a:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0193f4
	mov 0x20,r0
	mov r14,r1
	mov.b @(r0,r14),r2
	add 0x34,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c019444,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c019448,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c01943a,PC),r0
	extu.b r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r3,r2
	bt.s loc_8c0193ae
	mov 0x00,r4
	mov 0x20,r0
	mov.b @(r0,r14),r1
	mov.w @(loc_8c01943a,PC),r0
	extu.b r1,r1
	mov.l r1,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0193ae:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01943c,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0193c2
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0193c2:
	mova @(loc_8c01944c,PC),r0
	mov.l @(loc_8c01945c,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c019450,PC),r0
	mov.l @(loc_8c019458,PC),r3
	fmov @r0,fr2
	mova @(loc_8c019454,PC),r0
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

loc_8c0193f4:
	mov.l @(0x14,r14),r4
	tst r4,r4
	bt loc_8c0193fe
	mov.b @(0x4,r4),r0
	mov.b r0,@(0x4,r14)

loc_8c0193fe:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c019406:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c019460,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01941a:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c019422:
	mov.l @(loc_8c019464,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c019428:
	mov r4,r3
	mov.l @(loc_8c019468,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01943a:
	#data 0x00d4
loc_8c01943c:
	#data 0x0168
	#align4
loc_8c019440:
	#data 0x3dcccccd
loc_8c019444:
	#data bank14.loc_8c145a34
loc_8c019448:
	#data bank12.loc_8c1294c8
loc_8c01944c:
	#data 0x3f000000
loc_8c019450:
	#data 0x47800000
loc_8c019454:
	#data 0x43b40000
loc_8c019458:
	#data 0x0000ffff
loc_8c01945c:
	#data bank11.loc_8c11e2e0
loc_8c019460:
	#data bank14.loc_8c145a4c
loc_8c019464:
	#data bank04.loc_8c0450c0
loc_8c019468:
	#data bank14.loc_8c145a68

;==============================================
loc_8c01946c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c0195a2,PC),r4
	mov.l @(loc_8c0195b4,PC),r14
	mov.l @(loc_8c0195b0,PC),r13
	jsr @r14
	mov.l @r13,r5
	mov.w @(loc_8c0195a4,PC),r4
	jsr @r14
	mov.l @r13,r5
	mov.w @(loc_8c0195a6,PC),r4
	jsr @r14
	mov.l @r13,r5
	mov.w @(loc_8c0195a8,PC),r4
	jsr @r14
	mov.l @r13,r5
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c018bdc
	mov r6,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c018bdc
	mov r6,r4
	mov 0x03,r5
	mov 0x00,r6
	bsr loc_8c018bdc
	mov r6,r4
	mov 0x04,r5
	mov 0x00,r6
	bsr loc_8c018bdc
	mov r6,r4
	mov 0x05,r5
	mov 0x00,r6
	bsr loc_8c018bdc
	mov r6,r4
	mov 0x06,r5
	mov 0x00,r6
	bsr loc_8c018bdc
	mov r6,r4
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c018bdc
	mov 0x01,r4
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c018bdc
	mov 0x02,r4
	lds.l @r15+,pr
	mov 0x00,r4
	mov.l @r15+,r13
	mov.l @r15+,r14
	mov.l r14,@-r15
	mov 0x02,r5
	sts.l pr,@-r15
	mov r4,r6
	mov r4,r14
	bsr loc_8c018bdc
	mov 0x00,r4
	mov 0x00,r5
	mov r14,r6
	bsr loc_8c018bdc
	mov 0x03,r4
	mov 0x00,r5
	mov r14,r6
	bsr loc_8c018bdc
	mov 0x04,r4
	mov 0x00,r5
	mov r14,r6
	bsr loc_8c018bdc
	mov 0x05,r4
	mov 0x01,r5
	mov r14,r6
	bsr loc_8c018bdc
	mov 0x05,r4
	lds.l @r15+,pr
	mov 0x05,r4
	mov r14,r6
	mov 0x02,r5
	bra loc_8c018bdc
	mov.l @r15+,r14

;==============================================
loc_8c019510:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x00,r6
	mov.l r4,@r15
	mov r6,r5
	bsr loc_8c018bdc
	mov 0x06,r4
	mov.w @(loc_8c0195aa,PC),r11
	mov r0,r14
	mov.l @(loc_8c0195b8,PC),r8
	mov 0x00,r12
	fldi1 fr15
	mov 0x01,r13
	mov.l r12,@(0x14,r14)
	mov 0x06,r9
	mov 0x05,r10

loc_8c019540:
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r8
	mov r14,r4
	mov r0,r4
	mov.w @(loc_8c0195ac,PC),r0
	mov.l @(loc_8c0195bc,PC),r3
	mov r4,r1
	mov.b r12,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	add 0x50,r1
	mov.b r9,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r3
	mov.l @(loc_8c0195c0,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.l @(loc_8c0195c4,PC),r3
	mov.b r13,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0195ae,PC),r0
	add 0x01,r13
	cmp/ge r10,r13
	fmov fr15,@(r0,r4)
	mov 0x7C,r0
	fmov fr15,@(r0,r4)
	mov 0x78,r0
	fmov fr15,@(r0,r4)
	mov 0x74,r0
	fmov fr15,@(r0,r4)
	add 0x58,r0
	mov.l r11,@(r0,r4)
	bf.s loc_8c019540
	mov.l r14,@(0x14,r4)
	mov r14,r0
	nop
	add 0x04,r15
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
loc_8c0195a2:
	#data 0x0125
loc_8c0195a4:
	#data 0x0126
loc_8c0195a6:
	#data 0x0127
loc_8c0195a8:
	#data 0x0128
loc_8c0195aa:
	#data 0x0431
loc_8c0195ac:
	#data 0x012c
loc_8c0195ae:
	#data 0x0080
	#align4
loc_8c0195b0:
	#data 0x8c26a93c
loc_8c0195b4:
	#data bank02.loc_8c0267ec
loc_8c0195b8:
	#data bank04.loc_8c044f12
loc_8c0195bc:
	#data loc_8c019428
loc_8c0195c0:
	#data bank14.loc_8c145920
loc_8c0195c4:
	#data bank12.loc_8c1294c8

;==============================================
loc_8c0195c8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0196a4,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c019628
	mov r0,r4
	mov.w @(loc_8c01969c,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c0196a8,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l @(loc_8c0196b0,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @r15,r3
	mov.l @(loc_8c0196ac,PC),r0
	shll r3
	mov.w @(r0,r3),r3
	mov.l @r2,r0
	extu.w r3,r3
	mov.l @(loc_8c0196b4,PC),r2
	mov.l @r0,r1
	shll2 r3
	add r1,r3
	mov.w @(loc_8c01969e,PC),r1
	mov.l @r3,r0
	add r4,r1
	mov.l @(loc_8c0196b8,PC),r3
	mov.l r0,@r1
	mov r4,r1
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0196bc,PC),r2
	mov r4,r1
	mov.l @(loc_8c0196c0,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(loc_8c0196a2,PC),r0
	mov.w @(loc_8c0196a0,PC),r1
	mov.l r1,@(r0,r4)

loc_8c019628:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c019630:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c0196c4,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c019644:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c01966a
	mov 0x00,r4
	cmp/eq 0x01,r0
	bt loc_8c0196d0
	bra loc_8c019770
	nop

loc_8c01966a:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.l @(loc_8c0196c8,PC),r4
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov 0x78,r0
	fmov @r4,fr3
	mov.l @(loc_8c0196cc,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	add 0x78,r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c019770
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01969c:
	#data 0x012c
loc_8c01969e:
	#data 0x0084
loc_8c0196a0:
	#data 0x0431
loc_8c0196a2:
	#data 0x00cc
	#align4
loc_8c0196a4:
	#data bank04.loc_8c044f12
loc_8c0196a8:
	#data loc_8c019630
loc_8c0196ac:
	#data bank14.loc_8c145a78
loc_8c0196b0:
	#data 0x8c26a93c
loc_8c0196b4:
	#data bank14.loc_8c145a8c
loc_8c0196b8:
	#data bank12.loc_8c1294c8
loc_8c0196bc:
	#data bank14.loc_8c145a98
loc_8c0196c0:
	#data bank12.loc_8c1294bc
loc_8c0196c4:
	#data bank14.loc_8c145ab4
loc_8c0196c8:
	#data bank14.loc_8c145aa8
loc_8c0196cc:
	#data bank10.loc_8c108210

;==============================================
loc_8c0196d0:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8c0197ce,PC),r5
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c0196e4
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c0196e4:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c0196f6
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0196f6:
	mov 0x23,r4
	mov.l @(loc_8c0197d8,PC),r1
	add r14,r4
	mov.w @(loc_8c0197d0,PC),r0
	mov.b @r4,r4
	mov.l @(loc_8c0197d4,PC),r3
	extu.b r4,r4
	mov.l @(r0,r14),r5
	shll r4
	mov.l @r3,r0
	add r4,r1
	mov.l @(loc_8c0197dc,PC),r2
	mov.w @r1,r4
	mov.l @r0,r0
	extu.w r4,r4
	shll2 r4
	jsr @r2
	mov.l @(r0,r4),r4
	mova @(loc_8c0197ec,PC),r0
	mov.l @(loc_8c0197e4,PC),r12
	fmov @r0,fr13
	mova @(loc_8c0197f0,PC),r0
	fmov @r0,fr14
	mov.l @(loc_8c0197e8,PC),r13
	mov.l @(loc_8c0197e0,PC),r11
	bra loc_8c019768
	fldi1 fr15

;==============================================
loc_8c01972c:
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
	fmul fr13,fr3
	fneg fr3
	fadd fr15,fr3
	fadd fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	float fpul,fr3
	fmul fr14,fr3
	fneg fr3
	fadd fr15,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r12
	mov r15,r4

loc_8c019768:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c01972c

loc_8c019770:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c019784:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c0197c8
	mov.l @(loc_8c0197f4,PC),r2
	mov 0x23,r0
	mov.b @(r0,r4),r1
	mov.b @r2,r3
	cmp/eq r1,r3
	bt loc_8c0197a2
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c0197d2,PC),r0
	mov.b r3,@(r0,r4)

loc_8c0197a2:
	rts
	nop

;==============================================
loc_8c0197a6:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c0197c8
	mov.l @(loc_8c0197f4,PC),r2
	mov 0x23,r0
	mov.b @(r0,r4),r1
	mov.b @r2,r3
	cmp/eq r1,r3
	bt loc_8c0197c4
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c0197d2,PC),r0
	mov.b r3,@(r0,r4)

loc_8c0197c4:
	rts
	nop

loc_8c0197c8:
	mov.l @(loc_8c0197f8,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0197ce:
	#data 0x07d0
loc_8c0197d0:
	#data 0x0084
loc_8c0197d2:
	#data 0x012c
	#align4
loc_8c0197d4:
	#data 0x8c26a93c
loc_8c0197d8:
	#data bank14.loc_8c145a7a
loc_8c0197dc:
	#data bank10.loc_8c108060
loc_8c0197e0:
	#data bank10.loc_8c108086
loc_8c0197e4:
	#data bank10.loc_8c1081e6
loc_8c0197e8:
	#data bank10.loc_8c108192
loc_8c0197ec:
	#data 0x3a83126f
loc_8c0197f0:
	#data 0x3a03126f
loc_8c0197f4:
	#data 0x8c2897aa
loc_8c0197f8:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c0197fc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c0198d0,PC),r13
	mov.l @(loc_8c0198d4,PC),r0
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @r13,r13
	extu.b r13,r13
	mov r13,r4
	shll2 r4
	mov.l @(r0,r4),r14
	mov.l @(loc_8c0198d8,PC),r0
	bra loc_8c019822
	mov.l @(r0,r4),r12

loc_8c019818:
	mov.w @r14+,r5
	mov r12,r6
	add 0x0C,r12
	bsr loc_8c019984
	mov r13,r4

loc_8c019822:
	mov.w @r14,r0
	cmp/eq 0xFF,r0
	bf loc_8c019818
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c019832:
	mov r4,r3
	mov.l @(loc_8c0198dc,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c019844:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0xF8,r3
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.l @(loc_8c0198e8,PC),r2
	add 0x01,r0
	mov.l @(loc_8c0198e0,PC),r12
	mov.b r0,@(0x4,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r13
	mov r0,r4
	mov.l @(loc_8c0198e4,PC),r0
	shad r3,r13
	mov.b @(r0,r13),r13
	extu.b r13,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	mov r4,r0
	nop
	mov.w @(loc_8c0198c4,PC),r1
	cmp/eq r1,r0
	bt.s loc_8c019898
	add r2,r13
	mov.w @(loc_8c0198c6,PC),r1
	cmp/eq r1,r0
	bt loc_8c019898
	mov.w @(loc_8c0198c8,PC),r1
	cmp/eq r1,r0
	bt loc_8c0198b2
	mov.w @(loc_8c0198ca,PC),r1
	cmp/eq r1,r0
	bt loc_8c0198ec
	mov.w @(loc_8c0198cc,PC),r1
	cmp/eq r1,r0
	bt loc_8c0198ec
	bra loc_8c01992e
	nop

loc_8c019898:
	mov 0x48,r0
	mov.l r13,@-r15
	mov.l @(r0,r12),r5
	mov 0x04,r6
	mov 0x01,r7
	bsr loc_8c019a24
	mov r14,r4
	mov.w @(loc_8c0198c6,PC),r3
	mov.w @(0x1C,r14),r0
	cmp/eq r3,r0
	bt.s loc_8c01992e
	add 0x04,r15
	add 0x30,r13

loc_8c0198b2:
	mov 0x4C,r0
	mov.l r13,@-r15
	mov.l @(r0,r12),r5
	mov 0x04,r6
	mov 0x02,r7
	bsr loc_8c019a24
	mov r14,r4
	bra loc_8c01992e
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0198c4:
	#data 0x0300
loc_8c0198c6:
	#data 0x0100
loc_8c0198c8:
	#data 0x0200
loc_8c0198ca:
	#data 0x0400
loc_8c0198cc:
	#data 0x0500
	#align4
loc_8c0198d0:
	#data 0x8c2897a9
loc_8c0198d4:
	#data bank14.loc_8c145b14
loc_8c0198d8:
	#data bank14.loc_8c145b7c
loc_8c0198dc:
	#data bank14.loc_8c145c64
loc_8c0198e0:
	#data 0x8c289750
loc_8c0198e4:
	#data bank14.loc_8c145c5c
loc_8c0198e8:
	#data bank14.loc_8c145b9c

;==============================================
loc_8c0198ec:
	mov.l @(0x34,r12),r5
	mov 0x00,r3
	mov 0x20,r0
	mov r13,r6
	cmp/gt r5,r3
	mov.b @(r0,r14),r4
	addc r3,r5
	shar r5
	add 0x0C,r13
	add 0x11,r5
	bsr loc_8c019984
	extu.b r4,r4
	mov r0,r4
	tst r4,r4
	bt.s loc_8c019912
	mov r13,r6
	mov 0x21,r0
	mov 0x03,r3
	mov.b r3,@(r0,r4)

loc_8c019912:
	mov.l @(0x34,r12),r0
	and 0x01,r0
	mov r0,r5
	mov 0x20,r0
	mov.b @(r0,r14),r4
	add 0x04,r5
	bsr loc_8c019984
	extu.b r4,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c01992e
	mov 0x21,r0
	mov 0x03,r3
	mov.b r3,@(r0,r4)

loc_8c01992e:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c019938:
	mov.l @(loc_8c019a04,PC),r3
	mov 0x20,r0
	mov.b @(r0,r4),r1
	mov.b @r3,r2
	cmp/eq r1,r2
	bt loc_8c019952
	mov.b @(0x4,r4),r0
	mov 0x00,r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c0199fa,PC),r0
	rts
	mov.b r2,@(r0,r4)

loc_8c019952:
	mov 0x21,r0
	mov.l @(loc_8c019a08,PC),r2
	mov.b @(r0,r4),r5
	mov 0x78,r0
	extu.b r5,r5
	mov r5,r3
	shll r5
	add r3,r5
	shll2 r5
	add r2,r5
	fmov @r5,fr3
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	add 0x78,r0
	fmov fr3,@(r0,r4)
	rts
	nop

;==============================================
loc_8c01997e:
	mov.l @(loc_8c019a0c,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c019984:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c019a10,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x0B,r5
	mov.l r6,@(0x8,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c0199a6
	mov r0,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c0199a6:
	mov.l @(loc_8c019a14,PC),r2
	mov 0x01,r3
	mov.w @(loc_8c0199fa,PC),r0
	mov.l @(loc_8c019a18,PC),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r0
	mov.l @(loc_8c019a1c,PC),r2
	mov.l @r1,r3
	mov r4,r1
	and r2,r0
	mov.w @(loc_8c019a00,PC),r2
	mov.l @r3,r3
	shll2 r0
	add 0x34,r1
	add r3,r0
	mov.w @(loc_8c0199fc,PC),r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c0199fe,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c019a20,PC),r3
	mov.l @(0x8,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x4,r15),r1
	mov 0x20,r0
	mov 0x00,r3
	mov.b r1,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c019a02,PC),r3
	mov.l @r15,r0
	and r3,r0
	mov.w r0,@(0x1C,r4)
	mov r4,r0
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0199fa:
	#data 0x012c
loc_8c0199fc:
	#data 0x04f8
loc_8c0199fe:
	#data 0x0084
loc_8c019a00:
	#data 0x0401
loc_8c019a02:
	#data 0xff00
	#align4
loc_8c019a04:
	#data 0x8c2897a9
loc_8c019a08:
	#data bank14.loc_8c145ac0
loc_8c019a0c:
	#data bank04.loc_8c0450c0
loc_8c019a10:
	#data bank04.loc_8c044f12
loc_8c019a14:
	#data loc_8c019832
loc_8c019a18:
	#data 0x8c26a93c
loc_8c019a1c:
	#data 0xffff00ff
loc_8c019a20:
	#data bank12.loc_8c1294c8

;==============================================
loc_8c019a24:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r6,r10
	mov r10,r3
	mova @(loc_8c019ad0,PC),r0
	mov.l r4,@r15
	add 0xFF,r3
	cmp/pl r10
	mov 0x00,r4
	mov.l r5,@(0x8,r15)
	mov 0x0A,r8
	mov.l r7,@(0x4,r15)
	mov.l @(0x34,r15),r9
	mov r4,r14
	mov.l r3,@(0xC,r15)
	mov r4,r11
	fmov @r0,fr15
	bf.s loc_8c019aba
	mov 0x01,r12

loc_8c019a5a:
	mov r10,r3
	sub r14,r3
	add 0xFF,r3
	lds r3,fpul
	mov.l @(loc_8c019ad4,PC),r3
	float fpul,fr3
	fmov fr3,fr5
	jsr @r3
	fmov fr15,fr4
	ftrc fr0,fpul
	mov.l @(loc_8c019ad8,PC),r3
	sts fpul,r0
	jsr @r3
	mov.l @(0x8,r15),r1
	mov r0,r1
	mov r8,r0
	nop
	mov.l @(loc_8c019adc,PC),r3
	jsr @r3
	nop
	mov.l @(0xC,r15),r2
	mov r0,r13
	cmp/eq r2,r14
	bf loc_8c019a8c
	mov r12,r11

loc_8c019a8c:
	tst r11,r11
	bf loc_8c019a94
	tst r13,r13
	bt loc_8c019ab2

loc_8c019a94:
	mov.l @r15,r4
	mov 0x20,r0
	mov r13,r5
	mov r12,r11
	mov.b @(r0,r4),r4
	mov r9,r6
	add 0x03,r5
	bsr loc_8c019984
	extu.b r4,r4
	tst r0,r0
	bt.s loc_8c019ab2
	mov r0,r4
	mov.l @(0x4,r15),r3
	mov 0x21,r0
	mov.b r3,@(r0,r4)

loc_8c019ab2:
	add 0x01,r14
	cmp/ge r10,r14
	bf.s loc_8c019a5a
	add 0x0C,r9

loc_8c019aba:
	add 0x10,r15
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
loc_8c019ad0:
	#data 0x41200000
loc_8c019ad4:
	#data bank11.loc_8c11e680
loc_8c019ad8:
	#data bank12.loc_8c129128
loc_8c019adc:
	#data bank12.loc_8c1292d4

;==============================================
loc_8c019ae0:
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(loc_8c019c10,PC),r3
	mov 0x0B,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c019b40
	mov r0,r4
	mov.w @(loc_8c019c06,PC),r0
	mov 0x00,r3
	mov 0x23,r1
	mov.l @(loc_8c019c14,PC),r2
	mov.b r3,@(r0,r4)
	add r4,r1
	mov.l r2,@(0x10,r4)
	mov 0x20,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov r4,r1
	mov.b @(0x4,r15),r0
	add 0x50,r1
	mov.b r0,@r2
	mov 0x21,r0
	mov.b @r15,r3
	mov.l @(loc_8c019c18,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c019c1c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c019c0a,PC),r0
	mov.w @(loc_8c019c08,PC),r1
	mov.l @(loc_8c019c20,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c019c24,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c019b40:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c019b48:
	mov 0x01,r3
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x34,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c019c06,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c019c28,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c019c1c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r2
	mov.l @(loc_8c019c2c,PC),r5
	add r4,r2
	mov.l @(loc_8c019c30,PC),r3
	mov.b @r2,r2
	mov.l @r3,r0
	extu.b r2,r2
	shll r2
	mov.l @r0,r0
	add r5,r2
	mov.w @r2,r1
	extu.w r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	mov.w @(loc_8c019c0c,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r6
	extu.b r6,r0
	cmp/eq 0x06,r0
	bt.s loc_8c019ba6
	mov r0,r6
	mov r6,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c019bba

loc_8c019ba6:
	mova @(loc_8c019c34,PC),r0
	fldi1 fr3
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	bra loc_8c019c00
	fmov fr3,@(r0,r4)

loc_8c019bba:
	mov 0x20,r0
	mov r5,r6
	mov.b @(r0,r4),r0
	mov.w @(loc_8c019c0e,PC),r2
	extu.b r0,r0
	shll r0
	mov.w @(r0,r6),r3
	extu.w r3,r3
	cmp/eq r2,r3
	bf loc_8c019be0
	mova @(loc_8c019c38,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	bra loc_8c019c00
	fmov fr4,@(r0,r4)

loc_8c019be0:
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r6),r0
	extu.w r0,r0
	cmp/eq 0x10,r0
	bf loc_8c019c00
	mova @(loc_8c019c3c,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c019c00:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c019c06:
	#data 0x012c
loc_8c019c08:
	#data 0x0431
loc_8c019c0a:
	#data 0x00cc
loc_8c019c0c:
	#data 0x0084
loc_8c019c0e:
	#data 0x0082
	#align4
loc_8c019c10:
	#data bank04.loc_8c044f12
loc_8c019c14:
	#data loc_8c019e22
loc_8c019c18:
	#data bank14.loc_8c145c7c
loc_8c019c1c:
	#data bank12.loc_8c1294c8
loc_8c019c20:
	#data bank14.loc_8c145c88
loc_8c019c24:
	#data bank12.loc_8c1294bc
loc_8c019c28:
	#data bank14.loc_8c145c98
loc_8c019c2c:
	#data bank14.loc_8c145d1c
loc_8c019c30:
	#data 0x8c26a940
loc_8c019c34:
	#data 0x3f8f5c29
loc_8c019c38:
	#data 0x3fc28f5c
loc_8c019c3c:
	#data 0x3fcccccd

;==============================================
loc_8c019c40:
	mov.w @(loc_8c019d96,PC),r0
	mov 0x01,r3
	mov.w @(loc_8c019d96,PC),r1
	mov.l @(r0,r4),r0
	add r4,r1
	mov.l @(loc_8c019db0,PC),r2
	or 0x0E,r0
	mov.l r0,@r1
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c019d98,PC),r0
	mov.b r3,@(r0,r4)
	mova @(loc_8c019da4,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c019da8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c019dac,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @r2,r3
	mov.w @(loc_8c019d9a,PC),r0
	mov.l @r3,r1
	mov.l @(r0,r1),r0
	mov.w @(loc_8c019d9c,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(loc_8c019d9e,PC),r3
	mov 0x44,r0
	mov.l @(loc_8c019db4,PC),r1
	mov.l r3,@(r0,r4)
	mov 0x48,r0
	mov.l r1,@(r0,r4)
	mov 0x00,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8c019c92:
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	mov.l @(loc_8c019db0,PC),r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c019d98,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x44,r0
	mov.l @r1,r2
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	add 0x40,r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov.w @(loc_8c019da0,PC),r0
	extu.b r2,r2
	mov.l r2,@(r0,r4)
	mova @(loc_8c019db8,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mova @(loc_8c019dbc,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x00,r0
	bra loc_8c019d04
	mov.w r0,@(0x1E,r4)

loc_8c019ccc:
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c019d98,PC),r0
	mov.b r3,@(r0,r4)
	bra loc_8c019de0
	nop

loc_8c019cdc:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c019dc0,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8c019cf0:
	rts
	nop

loc_8c019cf4:
	mov.w @(0x1C,r4),r0
	mov r4,r3
	add 0x40,r3
	add 0x20,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	rts
	mov.l r0,@r3

loc_8c019d04:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r2
	mov r4,r1
	add 0x34,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c019dc4,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c019dc8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c019da0,PC),r0
	extu.b r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bt.s loc_8c019d48
	mov 0x00,r4
	mov 0x20,r0
	mov.b @(r0,r14),r1
	mov.w @(loc_8c019da0,PC),r0
	extu.b r1,r1
	mov.l r1,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c019d48:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c019da2,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c019d5c
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c019d5c:
	mova @(loc_8c019dcc,PC),r0
	mov.l @(loc_8c019ddc,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c019dd0,PC),r0
	mov.l @(loc_8c019dd8,PC),r3
	fmov @r0,fr2
	mova @(loc_8c019dd4,PC),r0
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
loc_8c019d96:
	#data 0x00cc
loc_8c019d98:
	#data 0x012c
loc_8c019d9a:
	#data 0x020c
loc_8c019d9c:
	#data 0x0084
loc_8c019d9e:
	#data 0x1d5d
loc_8c019da0:
	#data 0x00d4
loc_8c019da2:
	#data 0x0168
	#align4
loc_8c019da4:
	#data 0x3d8f5c29
loc_8c019da8:
	#data 0x40228f5c
loc_8c019dac:
	#data 0xc1ef851f
loc_8c019db0:
	#data 0x8c26a940
loc_8c019db4:
	#data 0x0000c001
loc_8c019db8:
	#data 0x3fcccccd
loc_8c019dbc:
	#data 0x3fd33333
loc_8c019dc0:
	#data bank14.loc_8c145d64
loc_8c019dc4:
	#data bank14.loc_8c145d34
loc_8c019dc8:
	#data bank12.loc_8c1294c8
loc_8c019dcc:
	#data 0x3f000000
loc_8c019dd0:
	#data 0x47800000
loc_8c019dd4:
	#data 0x43b40000
loc_8c019dd8:
	#data 0x0000ffff
loc_8c019ddc:
	#data bank11.loc_8c11e2e0

;==============================================
loc_8c019de0:
	mov.l @(loc_8c019ef4,PC),r0
	mov.l @(loc_8c019ef0,PC),r2
	mov.l @r0,r1
	mov.l @r2,r3
	mov.w @(0x8,r1),r0
	mov.l @r3,r3
	mov.w @(loc_8c019ee8,PC),r1
	shll2 r0
	add r3,r0
	mov.l @(r0,r1),r1
	mov.w @(loc_8c019eea,PC),r0
	rts
	mov.l r1,@(r0,r4)

;==============================================
loc_8c019dfa:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c019ef8,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c019e0e:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c019eec,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c019e1c:
	mov.l @(loc_8c019efc,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c019e22:
	mov r4,r3
	mov.l @(loc_8c019f00,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c019e34:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov 0x0B,r13
	sts.l pr,@-r15

loc_8c019e3e:
	mov r14,r5
	mov 0x00,r6
	bsr loc_8c019ae0
	mov r6,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c019e3e
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c019ae0
	mov 0x01,r4
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c019ae0
	mov 0x03,r4
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c019ae0
	mov 0x02,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c019e6c:
	mov 0x01,r3
	fldi0 fr4
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c019eec,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x3C,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r2
	mov.l @(loc_8c019ef0,PC),r3
	tst r2,r2
	bf.s loc_8c019ea8
	mov.l @r3,r5
	mov.w @(loc_8c019eee,PC),r0
	mov.l @r5,r2
	mov.l @(r0,r2),r1
	mov.w @(loc_8c019eea,PC),r0
	mov.l r1,@(r0,r4)
	mova @(loc_8c019f04,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	bra loc_8c019f5e
	fmov fr3,@(r0,r4)

loc_8c019ea8:
	mov 0x20,r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c019f14
	mov 0x21,r0
	mov.l @(loc_8c019f0c,PC),r3
	mov.b @(r0,r4),r2
	mov.l @(loc_8c019f08,PC),r0
	extu.b r2,r2
	shll r2
	mov.w @(r0,r2),r1
	mov.l @r5,r0
	extu.w r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	mov.w @(loc_8c019eea,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov r4,r1
	shll2 r2
	add r3,r2
	mov.l @(loc_8c019f10,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	bra loc_8c019f48
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c019ee8:
	#data 0x0210
loc_8c019eea:
	#data 0x0084
loc_8c019eec:
	#data 0x012c
loc_8c019eee:
	#data 0x02d0
	#align4
loc_8c019ef0:
	#data 0x8c26a940
loc_8c019ef4:
	#data work.GameGlobalPointer
loc_8c019ef8:
	#data bank14.loc_8c145d74
loc_8c019efc:
	#data bank04.loc_8c0450c0
loc_8c019f00:
	#data bank14.loc_8c145d84
loc_8c019f04:
	#data 0xc1a00000
loc_8c019f08:
	#data bank14.loc_8c145d94
loc_8c019f0c:
	#data bank14.loc_8c145d98
loc_8c019f10:
	#data bank12.loc_8c1294c8

;==============================================
loc_8c019f14:
	mov 0x21,r0
	mov.l @(loc_8c01a05c,PC),r3
	mov.b @(r0,r4),r2
	mov.l @(loc_8c01a058,PC),r0
	extu.b r2,r2
	shll r2
	mov.w @(r0,r2),r1
	mov.l @r5,r0
	extu.w r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	mov.w @(loc_8c01a04c,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov r4,r1
	shll2 r2
	add r3,r2
	mov.l @(loc_8c01a060,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0

loc_8c019f48:
	mov.w @(loc_8c01a04e,PC),r3
	mov.l @(0x18,r4),r1
	mov.w @(loc_8c01a050,PC),r0
	add r1,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c019f5e
	mov 0x74,r0
	fmov fr4,@(r0,r4)

loc_8c019f5e:
	lds.l @r15+,pr
	mov 0x14,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8c019f66:
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01a052,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c019f80
	mova @(loc_8c01a064,PC),r0
	bra loc_8c019f84
	fmov @r0,fr3

loc_8c019f80:
	mova @(loc_8c01a068,PC),r0
	fmov @r0,fr3

loc_8c019f84:
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c01a06c,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c01a070,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c019fa8
	mova @(loc_8c01a074,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c019fa8:
	mova @(loc_8c01a078,PC),r0
	mov.l @(loc_8c01a080,PC),r2
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c01a07c,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x58,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r1
	mov.l @r2,r3
	extu.b r1,r1
	mov.w @(loc_8c01a054,PC),r0
	mov.l @r3,r3
	shll2 r1
	fldi0 fr3
	add r3,r1
	mov.l @(r0,r1),r1
	add 0x98,r0
	mov.l r1,@(r0,r4)
	add 0x44,r0
	mov.w @(loc_8c01a04e,PC),r1
	mov.l @(0x18,r4),r3
	add r3,r1
	mov.l r1,@(r0,r4)
	mov 0x74,r0
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c019fe8:
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	mov.l @(loc_8c01a084,PC),r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01a052,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @r1,r2
	mov.b @(0x4,r2),r0
	tst r0,r0
	bf loc_8c01a004
	mova @(loc_8c01a064,PC),r0
	bra loc_8c01a008
	fmov @r0,fr3

loc_8c01a004:
	mova @(loc_8c01a068,PC),r0
	fmov @r0,fr3

loc_8c01a008:
	mov 0x34,r0
	fldi1 fr4
	fmov fr3,@(r0,r4)
	mova @(loc_8c01a06c,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(loc_8c01a080,PC),r2
	fmov fr3,@(r0,r4)
	mova @(loc_8c01a088,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)
	mov.l @r2,r3
	mov.w @(loc_8c01a056,PC),r0
	mov.l @r3,r1
	fldi0 fr3
	mov.l @(r0,r1),r0
	mov.w @(loc_8c01a04c,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(loc_8c01a04e,PC),r1
	mov.l @(0x18,r4),r3
	mov.w @(loc_8c01a050,PC),r0
	add r3,r1
	mov.l r1,@(r0,r4)
	mov 0x74,r0
	rts
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01a04c:
	#data 0x0084
loc_8c01a04e:
	#data 0x0088
loc_8c01a050:
	#data 0x00c8
loc_8c01a052:
	#data 0x012c
loc_8c01a054:
	#data 0x00ec
loc_8c01a056:
	#data 0x02dc
	#align4
loc_8c01a058:
	#data bank14.loc_8c145dec
loc_8c01a05c:
	#data bank14.loc_8c145db0
loc_8c01a060:
	#data bank12.loc_8c1294c8
loc_8c01a064:
	#data 0xc078f5c3
loc_8c01a068:
	#data 0x4078f5c3
loc_8c01a06c:
	#data 0xc0c051ec
loc_8c01a070:
	#data 0xc1500000
loc_8c01a074:
	#data 0xc15028f6
loc_8c01a078:
	#data 0x3e570a3d
loc_8c01a07c:
	#data 0x3e0f5c29
loc_8c01a080:
	#data 0x8c26a940
loc_8c01a084:
	#data work.GameGlobalPointer
loc_8c01a088:
	#data 0xc15051ec

;==============================================
loc_8c01a08c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c01a1c4,PC),r1
	mov 0x01,r3
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c01a1b6,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @r1,r2
	mov.w @(loc_8c01a1b8,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c01a1ba,PC),r0
	mov.l r3,@(r0,r14)
	add 0x44,r0
	mov.w @(loc_8c01a1bc,PC),r3
	mov.l @(0x18,r14),r2
	add r2,r3
	mov.w @(loc_8c01a1be,PC),r2
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l @(r0,r14),r0
	add r14,r2
	mov.l @(loc_8c01a1c8,PC),r3
	or 0x08,r0
	mov.l r0,@r2
	mov.w @(loc_8c01a1ba,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01a0d4:
	mov.l @(loc_8c01a1c4,PC),r1
	mov 0x01,r3
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01a1b6,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.w @(loc_8c01a1c0,PC),r0
	add 0x34,r1
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c01a1ba,PC),r0
	mov.l r3,@(r0,r4)
	add 0x44,r0
	mov.w @(loc_8c01a1bc,PC),r3
	mov.l @(0x18,r4),r2
	add r2,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c01a1cc,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c01a1d0,PC),r3
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	mov 0x74,r0
	fldi0 fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c01a120:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c01a1d4,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01a134:
	mov.b @(0x5,r4),r0
	mov.l @(loc_8c01a1d8,PC),r5
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c01a14e
	cmp/eq 0x01,r0
	bt loc_8c01a162
	cmp/eq 0x02,r0
	bt loc_8c01a182
	cmp/eq 0x03,r0
	bt loc_8c01a198
	bra loc_8c01a1b2
	nop

loc_8c01a14e:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01a1b2
	mov.b @(0x5,r4),r0
	add 0x01,r0
	bra loc_8c01a1b2
	mov.b r0,@(0x5,r4)

loc_8c01a162:
	mov.l @(loc_8c01a1dc,PC),r1
	mov 0x38,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fldi0 fr1
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt.s loc_8c01a1b2
	fmov fr2,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x38,r0
	bra loc_8c01a1aa
	fmov fr1,@(r0,r4)

loc_8c01a182:
	mov.l @r5,r3
	mov.b @(0x3,r3),r0
	mov 0x04,r3
	cmp/ge r3,r0
	bf loc_8c01a1b2
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x14,r0
	bra loc_8c01a1b2
	mov.w r0,@(0x1C,r4)

loc_8c01a198:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01a1b2
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8c01a1aa:
	mov.l @r5,r3
	mov.b @(0x3,r3),r0
	add 0x01,r0
	mov.b r0,@(0x3,r3)

loc_8c01a1b2:
	rts
	nop

;==============================================
loc_8c01a1b6:
	#data 0x012c
loc_8c01a1b8:
	#data 0x02e0
loc_8c01a1ba:
	#data 0x0084
loc_8c01a1bc:
	#data 0x0088
loc_8c01a1be:
	#data 0x00cc
loc_8c01a1c0:
	#data 0x02ec
	#align4
loc_8c01a1c4:
	#data 0x8c26a940
loc_8c01a1c8:
	#data bank10.loc_8c108210
loc_8c01a1cc:
	#data bank14.loc_8c145df8
loc_8c01a1d0:
	#data bank12.loc_8c1294c8
loc_8c01a1d4:
	#data bank14.loc_8c145e10
loc_8c01a1d8:
	#data work.GameGlobalPointer
loc_8c01a1dc:
	#data 0x3f200000

;==============================================
loc_8c01a1e0:
	mov.b @(0x5,r4),r0
	mov 0x00,r6
	mov.l @(loc_8c01a3c4,PC),r7
	extu.b r0,r0
	fldi0 fr5
	cmp/eq 0x00,r0
	fldi1 fr4
	bt.s loc_8c01a202
	mov.l @r7,r5
	cmp/eq 0x01,r0
	bt loc_8c01a226
	cmp/eq 0x02,r0
	bt loc_8c01a25e
	cmp/eq 0x03,r0
	bt loc_8c01a28e
	bra loc_8c01a2ce
	nop

loc_8c01a202:
	mov.w @(0x8,r5),r0
	tst r0,r0
	bt loc_8c01a2ce
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x5C,r0
	float fpul,fr3
	fdiv fr3,fr4
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c01a27e
	bra loc_8c01a286
	nop

loc_8c01a226:
	mov 0x5C,r1
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
	bt loc_8c01a2ce
	mov 0x20,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c01a24c
	mov 0x74,r0
	fmov fr5,@(r0,r4)

loc_8c01a24c:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c01a258
	mov 0x74,r0
	fmov fr4,@(r0,r4)

loc_8c01a258:
	mov.b @(0x5,r4),r0
	bra loc_8c01a2c4
	add 0x01,r0

loc_8c01a25e:
	mov.w @(0x8,r5),r0
	tst r0,r0
	bf loc_8c01a2ce
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x5C,r0
	float fpul,fr3
	fdiv fr3,fr4
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c01a286

loc_8c01a27e:
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)


loc_8c01a286:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	bra loc_8c01a2ce
	mov.b r0,@(0x5,r4)

loc_8c01a28e:
	mov 0x5C,r1
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
	bt loc_8c01a2ce
	mov 0x20,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c01a2b4
	mov 0x74,r0
	fmov fr5,@(r0,r4)

loc_8c01a2b4:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c01a2c0
	mov 0x74,r0
	fmov fr4,@(r0,r4)

loc_8c01a2c0:
	mov r6,r0
	nop

loc_8c01a2c4:
	mov.b r0,@(0x5,r4)
	mov.l @r7,r3
	mov r6,r0
	nop
	mov.w r0,@(0xA,r3)

loc_8c01a2ce:
	rts
	nop

;==============================================
loc_8c01a2d2:
	mov.b @(0x5,r4),r0
	mov 0x10,r6
	mov.l @(loc_8c01a3c4,PC),r3
	extu.b r0,r0
	fldi1 fr4
	cmp/eq 0x00,r0
	bt.s loc_8c01a2f2
	mov.l @r3,r5
	cmp/eq 0x01,r0
	bt loc_8c01a30c
	cmp/eq 0x02,r0
	bt loc_8c01a32c
	cmp/eq 0x03,r0
	bt loc_8c01a350
	bra loc_8c01a374
	nop

loc_8c01a2f2:
	mov.w @(0x8,r5),r0
	tst r0,r0
	bt loc_8c01a374
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr3,fr4
	bra loc_8c01a328
	mov 0x5C,r0

loc_8c01a30c:
	mov 0x5C,r1
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
	bt loc_8c01a374
	mov 0x74,r0

loc_8c01a328:
	bra loc_8c01a348
	fmov fr4,@(r0,r4)

loc_8c01a32c:
	mov.w @(0x8,r5),r0
	tst r0,r0
	bf loc_8c01a374
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r2
	lds r2,fpul
	mov 0x5C,r0
	float fpul,fr3
	fdiv fr3,fr4
	fneg fr4
	fmov fr4,@(r0,r4)

loc_8c01a348:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	bra loc_8c01a374
	mov.b r0,@(0x5,r4)

loc_8c01a350:
	mov 0x5C,r1
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
	bt loc_8c01a374
	mov 0x74,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mov 0x00,r0
	mov.b r0,@(0x5,r4)

loc_8c01a374:
	rts
	nop

loc_8c01a378:
	mov.l @(loc_8c01a3c4,PC),r5
	mov.l @r5,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bt loc_8c01a398
	mov.l @r5,r2
	mov.b @(0x4,r2),r0
	tst r0,r0
	bf loc_8c01a390
	mova @(loc_8c01a3c8,PC),r0
	bra loc_8c01a394
	fmov @r0,fr3

loc_8c01a390:
	mova @(loc_8c01a3cc,PC),r0
	fmov @r0,fr3

loc_8c01a394:
	mov 0x34,r0
	fmov fr3,@(r0,r4)

loc_8c01a398:
	bra loc_8c01a2d2
	nop

loc_8c01a39c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c01a3c4,PC),r2
	mov r4,r14
	mov.l @r2,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bt.s loc_8c01a3d4
	mov 0x00,r4
	mov.l @(loc_8c01a3d0,PC),r1
	mov 0x48,r0
	bra loc_8c01a3d8
	mov.l r1,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01a3c4:
	#data work.GameGlobalPointer
loc_8c01a3c8:
	#data 0xc078f5c3
loc_8c01a3cc:
	#data 0x4078f5c3
loc_8c01a3d0:
	#data 0x00008000

;==============================================
loc_8c01a3d4:
	mov 0x48,r0
	mov.l r4,@(r0,r14)

loc_8c01a3d8:
	mov.w @(0x1C,r14),r0
	mov 0x64,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c01a3ec
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c01a3ec:
	mov.l @(loc_8c01a4b8,PC),r3
	mov.w @(loc_8c01a4ac,PC),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @(loc_8c01a4bc,PC),r1
	mov.w @(loc_8c01a4ae,PC),r0
	mov.l @r4,r2
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8c01a4c8,PC),r13
	mova @(loc_8c01a4cc,PC),r0
	mov.l @(loc_8c01a4c4,PC),r12
	mov.l @(loc_8c01a4c0,PC),r11
	fldi1 fr14
	bra loc_8c01a430
	fmov @r0,fr15

loc_8c01a40c:
	mov r15,r4
	mov r15,r5
	jsr @r13
	add 0x04,r4
	mov.w @(0x1C,r14),r0
	mov r15,r4
	fmov @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	jsr @r12
	add 0x04,r4

loc_8c01a430:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c01a40c
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
loc_8c01a44a:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c01a4d0,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01a45e:
	mov r4,r3
	mov.l @(loc_8c01a4d4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01a470:
	mov.w @(loc_8c01a4b0,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c01a4d8,PC),r2
	mov r4,r1
	sts.l pr,@-r15
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.l r2,@(0x10,r4)
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov 0x20,r0
	mov.b r6,@(r0,r4)
	mov 0x21,r0
	mov.l @(loc_8c01a4dc,PC),r2
	mov.l @(loc_8c01a4e0,PC),r3
	mov.b r7,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01a4b4,PC),r0
	mov.w @(loc_8c01a4b2,PC),r1
	mov.l @(loc_8c01a4e4,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c01a4e8,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01a4ac:
	#data 0x0084
loc_8c01a4ae:
	#data 0x02f8
loc_8c01a4b0:
	#data 0x012c
loc_8c01a4b2:
	#data 0x0431
loc_8c01a4b4:
	#data 0x00cc
	#align4
loc_8c01a4b8:
	#data 0x8c26a940
loc_8c01a4bc:
	#data bank10.loc_8c108060
loc_8c01a4c0:
	#data bank10.loc_8c108086
loc_8c01a4c4:
	#data bank10.loc_8c1081e6
loc_8c01a4c8:
	#data bank10.loc_8c108192
loc_8c01a4cc:
	#data 0x3c23d70a
loc_8c01a4d0:
	#data bank14.loc_8c145e28
loc_8c01a4d4:
	#data bank14.loc_8c145e40
loc_8c01a4d8:
	#data loc_8c01a45e
loc_8c01a4dc:
	#data bank14.loc_8c145c7c
loc_8c01a4e0:
	#data bank12.loc_8c1294c8
loc_8c01a4e4:
	#data bank14.loc_8c145c88
loc_8c01a4e8:
	#data bank12.loc_8c1294bc

;==============================================
loc_8c01a4ec:
	mov.l r14,@-r15
	mov 0x0B,r5
	mov.l r13,@-r15
	mov 0x00,r6
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c01a5f0,PC),r13
	jsr @r13
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01a5de
	mov r0,r14
	mov 0x00,r7
	mov r7,r5
	mov r7,r6
	bsr loc_8c01a470
	mov r14,r4
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r13
	mov r14,r4
	mov 0x00,r7
	mov r0,r12
	mov 0x01,r5
	mov r7,r6
	bsr loc_8c01a470
	mov r0,r4
	mov 0x0B,r5
	mov.l r14,@(0x18,r12)
	mov 0x02,r6
	jsr @r13
	mov r14,r4
	mov 0x01,r7
	mov r0,r12
	mov r7,r5
	mov 0x00,r6
	bsr loc_8c01a470
	mov r0,r4
	mov.l r14,@(0x18,r12)
	mov 0x00,r12
	mov 0x05,r10

loc_8c01a542:
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r13
	mov r14,r4
	mov 0x01,r6
	mov r0,r11
	mov r6,r5
	mov r12,r7
	bsr loc_8c01a470
	mov r0,r4
	add 0x01,r12
	cmp/ge r10,r12
	bf.s loc_8c01a542
	mov.l r14,@(0x18,r11)
	mov 0x00,r12
	mov 0x04,r10

loc_8c01a562:
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r13
	mov r14,r4
	mov r0,r11
	mov r12,r0
	nop
	cmp/pz r0
	bf loc_8c01a578
	bra loc_8c01a582
	and 0x01,r0

loc_8c01a578:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c01a582:
	mov 0x00,r3
	mov r12,r6
	cmp/gt r6,r3
	mov 0x02,r5
	addc r3,r6
	mov r0,r7
	shar r6
	bsr loc_8c01a470
	mov r11,r4
	add 0x01,r12
	cmp/ge r10,r12
	bf.s loc_8c01a562
	mov.l r14,@(0x18,r11)
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r13
	mov r14,r4
	mov 0x00,r7
	mov r0,r12
	mov 0x03,r5
	mov r7,r6
	bsr loc_8c01a470
	mov r0,r4
	mov 0x0B,r5
	mov.l r14,@(0x18,r12)
	mov 0x02,r6
	jsr @r13
	mov r14,r4
	mov 0x00,r7
	mov r0,r12
	mov 0x04,r5
	mov r7,r6
	bsr loc_8c01a470
	mov r0,r4
	mov 0x0B,r5
	mov.l r14,@(0x18,r12)
	mov 0x02,r6
	jsr @r13
	mov r14,r4
	mov 0x00,r7
	mov r0,r13
	mov 0x05,r5
	mov r7,r6
	bsr loc_8c01a470
	mov r0,r4
	mov.l r14,@(0x18,r13)

loc_8c01a5de:
	mov r14,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01a5f0:
	#data bank04.loc_8c044f12

;==============================================
loc_8c01a5f4:
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(loc_8c01a728,PC),r3
	mov 0x0B,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01a654
	mov r0,r4
	mov.w @(loc_8c01a71a,PC),r0
	mov 0x00,r3
	mov 0x23,r1
	mov.l @(loc_8c01a72c,PC),r2
	mov.b r3,@(r0,r4)
	add r4,r1
	mov.l r2,@(0x10,r4)
	mov 0x20,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov r4,r1
	mov.b @(0x4,r15),r0
	add 0x50,r1
	mov.b r0,@r2
	mov 0x21,r0
	mov.b @r15,r3
	mov.l @(loc_8c01a730,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c01a734,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01a71e,PC),r0
	mov.w @(loc_8c01a71c,PC),r1
	mov.l @(loc_8c01a738,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c01a73c,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c01a654:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c01a65c:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov r12,r4
	mov.l r10,@-r15
	mov 0x01,r10
	mov.l r9,@-r15
	mov r12,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c01a740,PC),r8
	mov.w @(loc_8c01a71c,PC),r11

loc_8c01a67c:
	mov.l @(loc_8c01a728,PC),r2
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r2
	mov r13,r4
	tst r0,r0
	bt.s loc_8c01a704
	mov r0,r4
	mov.w @(loc_8c01a71a,PC),r0
	mov r4,r1
	mov.l @(loc_8c01a72c,PC),r3
	add 0x34,r1
	mov.b r12,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	mov.b r10,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(loc_8c01a720,PC),r3
	mov.b r9,@(r0,r4)
	add 0x01,r9
	mov.w @(loc_8c01a722,PC),r0
	add r13,r3
	mov.l r3,@(r0,r4)
	mov.l @r8,r0
	mov.l @r0,r3
	mov.w @(0xC,r14),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r3),r2
	mov.w @(loc_8c01a724,PC),r0
	mov.l @(loc_8c01a734,PC),r3
	mov.l r2,@(r0,r4)
	mov r14,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01a71e,PC),r0
	mov r4,r1
	mov.l @(loc_8c01a738,PC),r2
	add 0x74,r1
	mov.l @(loc_8c01a73c,PC),r3
	mov.l r11,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01a730,PC),r2
	mov r4,r1
	mov.l @(loc_8c01a734,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l r13,@(0x18,r4)
	mov.b @(0xE,r14),r0
	tst r0,r0
	bt loc_8c01a6fa
	mov.b @(0xE,r14),r0
	mov.l @(loc_8c01a744,PC),r1
	add 0xFF,r0
	shll2 r0
	fmov @(r0,r1),fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)

loc_8c01a6fa:
	mov.b @(0xF,r14),r0
	cmp/pz r0
	bf loc_8c01a704
	bra loc_8c01a67c
	add 0x10,r14

loc_8c01a704:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01a71a:
	#data 0x012c
loc_8c01a71c:
	#data 0x0431
loc_8c01a71e:
	#data 0x00cc
loc_8c01a720:
	#data 0x0088
loc_8c01a722:
	#data 0x00c8
loc_8c01a724:
	#data 0x0084
	#align4
loc_8c01a728:
	#data bank04.loc_8c044f12
loc_8c01a72c:
	#data loc_8c01b22e
loc_8c01a730:
	#data bank14.loc_8c145e5c
loc_8c01a734:
	#data bank12.loc_8c1294c8
loc_8c01a738:
	#data bank14.loc_8c145e68
loc_8c01a73c:
	#data bank12.loc_8c1294bc
loc_8c01a740:
	#data 0x8c26a940
loc_8c01a744:
	#data bank14.loc_8c146008

;==============================================
loc_8c01a748:
	mov.l r14,@-r15
	mov 0x0B,r5
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.l @(loc_8c01a894,PC),r3
	mov r13,r6
	jsr @r3
	mov r13,r4
	tst r0,r0
	bt.s loc_8c01a794
	mov r0,r14
	mov.w @(loc_8c01a88c,PC),r0
	mov 0x04,r2
	mov.l @(loc_8c01a898,PC),r3
	mov r14,r1
	mov.b r13,@(r0,r14)
	mov 0x23,r0
	mov.l r3,@(0x10,r14)
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b r13,@(r0,r14)
	mov 0x21,r0
	mov.l @(loc_8c01a89c,PC),r2
	mov.l @(loc_8c01a8a0,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01a890,PC),r0
	mov.w @(loc_8c01a88e,PC),r1
	mov.l @(loc_8c01a8a4,PC),r2
	mov.l r1,@(r0,r14)
	mov r14,r1
	mov.l @(loc_8c01a8a8,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c01a794:
	mov.l @(loc_8c01a894,PC),r2
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt.s loc_8c01a7dc
	mov r0,r4
	mov.w @(loc_8c01a88c,PC),r0
	mov 0x04,r2
	mov.l @(loc_8c01a898,PC),r3
	mov r4,r1
	mov.b r13,@(r0,r4)
	mov 0x23,r0
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	add 0x50,r1
	mov.l @(loc_8c01a89c,PC),r2
	mov.l @(loc_8c01a8a0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01a890,PC),r0
	mov.w @(loc_8c01a88e,PC),r1
	mov.l @(loc_8c01a8a4,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c01a8a8,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l r14,@(0x14,r4)

loc_8c01a7dc:
	mov r14,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01a7e8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r3
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c01a88c,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c01a866
	mov.l @(loc_8c01a8ac,PC),r2
	mov r14,r1
	mov.l @(loc_8c01a8a0,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01a89c,PC),r2
	mov r14,r1
	mov.l @(loc_8c01a8a0,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01a894,PC),r1
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r1
	mov r14,r4
	mov r0,r4
	mov 0x23,r0
	mov.l @(loc_8c01a898,PC),r3
	mov r4,r1
	add 0x34,r1
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.l @(loc_8c01a8a0,PC),r3
	mov.b r2,@(r0,r4)
	mov r14,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov r14,r2
	mov.l @(loc_8c01a8a0,PC),r3
	mov r4,r1
	add 0x50,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01a890,PC),r0
	mov.w @(loc_8c01a892,PC),r2
	mov.l @(loc_8c01a8b0,PC),r5
	mov.l r14,@(0x14,r4)
	mov.l r2,@(r0,r4)
	bra loc_8c01a876
	nop

loc_8c01a866:
	mova @(loc_8c01a8b4,PC),r0
	mov.l @(0x14,r14),r4
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mov.l @(loc_8c01a8b8,PC),r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c01a876:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c01a65c
	mov.l @r15+,r14

loc_8c01a87e:
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01a88c,PC),r0
	rts
	mov.b r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01a88c:
	#data 0x012c
loc_8c01a88e:
	#data 0x0431
loc_8c01a890:
	#data 0x00cc
loc_8c01a892:
	#data 0x0411
	#align4
loc_8c01a894:
	#data bank04.loc_8c044f12
loc_8c01a898:
	#data loc_8c01b22e
loc_8c01a89c:
	#data bank14.loc_8c145e5c
loc_8c01a8a0:
	#data bank12.loc_8c1294c8
loc_8c01a8a4:
	#data bank14.loc_8c145e68
loc_8c01a8a8:
	#data bank12.loc_8c1294bc
loc_8c01a8ac:
	#data bank14.loc_8c145e50
loc_8c01a8b0:
	#data bank14.loc_8c145e78
loc_8c01a8b4:
	#data 0x42000000
loc_8c01a8b8:
	#data bank14.loc_8c145f18

;==============================================
loc_8c01a8bc:
	mov 0x01,r3
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x34,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01a9f6,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c01aa04,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c01aa08,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01aa0c,PC),r2
	mov r4,r1
	mov.l @(loc_8c01aa08,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01aa10,PC),r0
	lds.l @r15+,pr
	mov.l @r0,r1
	mov 0x20,r0
	mov.b @(r0,r4),r3
	add 0x64,r0
	mov.l @r1,r1
	extu.b r3,r3
	shll2 r3
	add r1,r3
	add 0x58,r3
	mov.l @r3,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8c01a90e:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c01a9f6,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c01a944
	mova @(loc_8c01aa14,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x58,r0
	fldi1 fr3
	fmov fr3,@(r0,r14)
	mova @(loc_8c01aa18,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	bra loc_8c01a950
	fmov fr3,@(r0,r14)

loc_8c01a944:
	mov.l @(loc_8c01aa0c,PC),r2
	mov r14,r1
	mov.l @(loc_8c01aa08,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8c01a950:
	mov.w @(loc_8c01a9f8,PC),r3
	mov.l @(loc_8c01aa10,PC),r2
	add r14,r3
	mov.l @r2,r0
	mov.l @r3,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r1
	mov.w @(loc_8c01a9fa,PC),r0
	mov.l r1,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c01a974
	mov.l @(loc_8c01aa1c,PC),r3
	mov.w @(loc_8c01a9fa,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c01a974:
	mov 0x00,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	bra loc_8c01ab54
	mov.l @r15+,r14

loc_8c01a982:
	mov.b @(0x4,r4),r0
	mov.w @(loc_8c01a9fc,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	bra loc_8c01abf6
	nop

loc_8c01a992:
	rts
	nop

loc_8c01a996:
	mov 0x00,r3
	mov.l @(loc_8c01aa0c,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	mov r4,r1
	add 0x50,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01a9f6,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c01aa08,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(loc_8c01aa10,PC),r1
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c01a9c6
	mov.l @r1,r5
	mov.w @(loc_8c01a9fe,PC),r0
	mov.l @r5,r3
	mov.l @(r0,r3),r2
	bra loc_8c01a9cc
	nop

loc_8c01a9c6:
	mov.w @(loc_8c01aa00,PC),r0
	mov.l @r5,r3
	mov.l @(r0,r3),r2

loc_8c01a9cc:
	lds.l @r15+,pr
	mov.w @(loc_8c01a9fa,PC),r0
	rts
	mov.l r2,@(r0,r4)

loc_8c01a9d4:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01a9f6,PC),r0
	rts
	mov.b r3,@(r0,r4)

loc_8c01a9e2:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c01aa20,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01a9f6:
	#data 0x012c
loc_8c01a9f8:
	#data 0x00d0
loc_8c01a9fa:
	#data 0x0084
loc_8c01a9fc:
	#data 0x00ff
loc_8c01a9fe:
	#data 0x01dc
loc_8c01aa00:
	#data 0x0434
	#align4
loc_8c01aa04:
	#data bank14.loc_8c146168
loc_8c01aa08:
	#data bank12.loc_8c1294c8
loc_8c01aa0c:
	#data bank14.loc_8c145e5c
loc_8c01aa10:
	#data 0x8c26a940
loc_8c01aa14:
	#data 0x3f99999a
loc_8c01aa18:
	#data 0xc0400000
loc_8c01aa1c:
	#data bank10.loc_8c108210
loc_8c01aa20:
	#data bank14.loc_8c14618c

;==============================================
loc_8c01aa24:
	mov 0x21,r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c01aad8
	mov.b @(0x5,r4),r0
	mov 0x00,r7
	mov.l @(loc_8c01ab04,PC),r3
	mov 0x20,r6
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c01aa4e
	mov.l @r3,r5
	cmp/eq 0x01,r0
	bt loc_8c01aa6c
	cmp/eq 0x02,r0
	bt loc_8c01aa8e
	cmp/eq 0x03,r0
	bt loc_8c01aaa8
	bra loc_8c01aae6
	nop

loc_8c01aa4e:
	mov.w @(0x8,r5),r0
	tst r0,r0
	bt loc_8c01aae6
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.l @(loc_8c01ab08,PC),r2
	mov.w @(0x1C,r4),r0
	jsr @r2
	mov r6,r1
	lds r0,fpul
	mov 0x5C,r0
	float fpul,fr3
	bra loc_8c01aaa0
	fmov fr3,@(r0,r4)

loc_8c01aa6c:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01aa7e
	mov.b @(0x5,r4),r0
	bra loc_8c01aab8
	add 0x01,r0

loc_8c01aa7e:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	bra loc_8c01aae6
	fmov fr2,@(r0,r4)

loc_8c01aa8e:
	mov.w @(0x8,r5),r0
	tst r0,r0
	bt loc_8c01aae6
	mov.w @(0x8,r5),r0
	cmp/pz r0
	bt loc_8c01aae6
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)

loc_8c01aaa0:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	bra loc_8c01aae6
	mov.b r0,@(0x5,r4)

loc_8c01aaa8:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01aac8
	mov r7,r0
	nop

loc_8c01aab8:
	mov.l @(loc_8c01ab04,PC),r2
	mov.b r0,@(0x5,r4)
	mov.l @r2,r3
	mov r7,r0
	nop
	mov.w r0,@(0x8,r3)
	bra loc_8c01aae6
	nop

loc_8c01aac8:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	bra loc_8c01aae6
	fmov fr2,@(r0,r4)

loc_8c01aad8:
	mova @(loc_8c01ab0c,PC),r0
	mov.l @(0x14,r4),r5
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c01aae6:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01aaec:
	mov 0x21,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0E,r0
	bf loc_8c01ab4c
	mov.l @(loc_8c01ab10,PC),r3
	mov.b @r3,r0
	tst 0x80,r0
	bt loc_8c01ab14
	bra loc_8c01ab16
	mov 0x01,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01ab04:
	#data work.GameGlobalPointer
loc_8c01ab08:
	#data bank12.loc_8c129128
loc_8c01ab0c:
	#data 0x42000000
loc_8c01ab10:
	#data 0x8c212f1b

;==============================================
loc_8c01ab14:
	mov 0x00,r5

loc_8c01ab16:
	mov.w @(loc_8c01ac28,PC),r2
	exts.b r5,r5
	mov.l @(loc_8c01ac38,PC),r0
	muls.w r2,r5
	mov.l @(loc_8c01ac34,PC),r3
	sts macl,r5
	mov.b @(r0,r5),r1
	tst r1,r1
	bt.s loc_8c01ab3a
	mov.l @r3,r6
	mov.w @(loc_8c01ac2a,PC),r0
	mov.l @r6,r3
	mov.l @(r0,r3),r1
	add 0xD0,r0
	mov.l r1,@(r0,r4)
	mova @(loc_8c01ac3c,PC),r0
	bra loc_8c01ab48
	fmov @r0,fr3

loc_8c01ab3a:
	mov.w @(loc_8c01ac2c,PC),r0
	mov.l @r6,r1
	mov.l @(r0,r1),r3
	add 0xCC,r0
	mov.l r3,@(r0,r4)
	mova @(loc_8c01ac40,PC),r0
	fmov @r0,fr3

loc_8c01ab48:
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c01ab4c:
	rts
	nop

;==============================================
loc_8c01ab50:
	rts
	nop

;==============================================
loc_8c01ab54:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c01abe0
	mov.w @(loc_8c01ac2e,PC),r0
	mov.w @(loc_8c01ac30,PC),r4
	mov.l @(loc_8c01ac34,PC),r3
	mov.l @(r0,r14),r5
	add r14,r4
	mov.l @r3,r0
	mov.l @r4,r4
	mov.l @(loc_8c01ac44,PC),r2
	mov.l @r0,r0
	shll2 r4
	jsr @r2
	mov.l @(r0,r4),r4
	mova @(loc_8c01ac5c,PC),r0
	mov.l @(loc_8c01ac58,PC),r14
	fmov @r0,fr13
	mova @(loc_8c01ac60,PC),r0
	fmov @r0,fr14
	mov.l @(loc_8c01ac4c,PC),r11
	mov.l @(loc_8c01ac48,PC),r10
	mov.l @(loc_8c01ac54,PC),r13
	mov.l @(loc_8c01ac50,PC),r12
	bra loc_8c01abd8
	fldi1 fr15

loc_8c01aba0:
	mov r15,r5
	add 0x04,r5
	jsr @r14
	mov r15,r4
	mov.w @r10,r3
	mov 0x04,r0
	fmov fr15,fr2
	mov r15,r5
	lds r3,fpul
	add 0x04,r5
	fmov fr15,fr1
	float fpul,fr3
	fmul fr13,fr3
	fsub fr3,fr2
	fmov @r15,fr3
	fsub fr2,fr3
	fmov fr3,@r15
	mov.w @r11,r3
	lds r3,fpul
	float fpul,fr2
	fmul fr14,fr2
	fsub fr2,fr1
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fsub fr1,fr2
	fmov fr2,@(r0,r15)
	jsr @r13
	mov r15,r4

loc_8c01abd8:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c01aba0

loc_8c01abe0:
	add 0x08,r15
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

;==============================================
loc_8c01abf6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	mov.l @(loc_8c01ac64,PC),r3
	tst r0,r0
	bt.s loc_8c01ac10
	mov.l @r3,r4
	bra loc_8c01ad7c
	nop

loc_8c01ac10:
	mov.w @(0x8,r4),r0
	tst r0,r0
	bt loc_8c01ac68
	mov.w @(loc_8c01ac32,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r13,r0
	nop
	bra loc_8c01ad88
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ac28:
	#data 0x0229
loc_8c01ac2a:
	#data 0x00b4
loc_8c01ac2c:
	#data 0x00b8
loc_8c01ac2e:
	#data 0x0084
loc_8c01ac30:
	#data 0x00d4
loc_8c01ac32:
	#data 0x012c
	#align4
loc_8c01ac34:
	#data 0x8c26a940
loc_8c01ac38:
	#data 0x8c214e36
loc_8c01ac3c:
	#data 0xc1610625
loc_8c01ac40:
	#data 0xc1616873
loc_8c01ac44:
	#data bank10.loc_8c108060
loc_8c01ac48:
	#data 0x8c212f22
loc_8c01ac4c:
	#data 0x8c212f24
loc_8c01ac50:
	#data bank10.loc_8c108086
loc_8c01ac54:
	#data bank10.loc_8c1081e6
loc_8c01ac58:
	#data bank10.loc_8c108192
loc_8c01ac5c:
	#data 0x3b03126f
loc_8c01ac60:
	#data 0x3a83126f
loc_8c01ac64:
	#data work.GameGlobalPointer

;==============================================
loc_8c01ac68:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c01ac7e
	mov.l @(0x14,r14),r4
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c01ad92,PC),r0
	mov.l @(r0,r4),r2
	mov.l r2,@(r0,r14)

loc_8c01ac7e:
	mov.w @(loc_8c01ad92,PC),r0
	mov.l @(loc_8c01ad9c,PC),r7
	mov.l @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c01acd6
	mov 0x01,r5
	mov 0x21,r0
	mov.b @(r0,r14),r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r4,r4
	mov.l @(loc_8c01ada0,PC),r0
	mov r4,r3
	shll2 r4
	extu.b r2,r2
	add r3,r4
	add r2,r4
	mov r4,r6
	shll r6
	mov.w @(r0,r6),r6
	cmp/pz r6
	bf loc_8c01acf4
	mov.w @(loc_8c01ad94,PC),r0
	shll2 r6
	mov r4,r2
	shll r2
	mov.b r5,@(r0,r14)
	mov r14,r1
	mov.l @r7,r0
	add 0x34,r1
	mov.l @r0,r0
	mov.l @(r0,r6),r3
	mov.w @(loc_8c01ad96,PC),r0
	mov.l r3,@(r0,r14)
	mov r4,r3
	add r3,r2
	mov.l @(loc_8c01ada4,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c01ada8,PC),r3
	jsr @r3
	mov 0x0C,r0
	bra loc_8c01ad22
	nop

loc_8c01acd6:
	mov 0x21,r0
	mov.b @(r0,r14),r4
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r4,r4
	mov.l @(loc_8c01adac,PC),r0
	shll2 r4
	extu.b r3,r3
	shll r4
	add r3,r4
	mov r4,r6
	shll r6
	mov.w @(r0,r6),r6
	cmp/pz r6
	bt loc_8c01acfa

loc_8c01acf4:
	mov.w @(loc_8c01ad94,PC),r0
	bra loc_8c01ad22
	mov.b r13,@(r0,r14)

loc_8c01acfa:
	mov.w @(loc_8c01ad94,PC),r0
	shll2 r6
	mov r4,r2
	shll r2
	mov.b r5,@(r0,r14)
	mov r14,r1
	mov.l @r7,r0
	add 0x34,r1
	mov.l @r0,r0
	mov.l @(r0,r6),r3
	mov.w @(loc_8c01ad96,PC),r0
	mov.l r3,@(r0,r14)
	mov r4,r3
	add r3,r2
	mov.l @(loc_8c01adb0,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c01ada8,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8c01ad22:
	mov 0x22,r0
	mov.b @(r0,r14),r1
	extu.b r1,r1
	cmp/eq r4,r1
	bt loc_8c01ad34
	mov.b r4,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01ad34:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01ad98,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01ad48
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01ad48:
	mova @(loc_8c01adb4,PC),r0
	mov.l @(loc_8c01adc4,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c01adb8,PC),r0
	mov.l @(loc_8c01adc0,PC),r3
	fmov @r0,fr2
	mova @(loc_8c01adbc,PC),r0
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
	bra loc_8c01ad88
	fmov fr2,@(r0,r14)

loc_8c01ad7c:
	mov.w @(0x8,r4),r0
	tst r0,r0
	bf loc_8c01ad88
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)

loc_8c01ad88:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ad92:
	#data 0x00d0
loc_8c01ad94:
	#data 0x012c
loc_8c01ad96:
	#data 0x0084
loc_8c01ad98:
	#data 0x0168
	#align4
loc_8c01ad9c:
	#data 0x8c26a940
loc_8c01ada0:
	#data bank14.loc_8c146094
loc_8c01ada4:
	#data bank14.loc_8c146028
loc_8c01ada8:
	#data bank12.loc_8c1294c8
loc_8c01adac:
	#data bank14.loc_8c146144
loc_8c01adb0:
	#data bank14.loc_8c1460a8
loc_8c01adb4:
	#data 0x3f000000
loc_8c01adb8:
	#data 0x47800000
loc_8c01adbc:
	#data 0x43b40000
loc_8c01adc0:
	#data 0x0000ffff
loc_8c01adc4:
	#data bank11.loc_8c11e2e0

;==============================================
loc_8c01adc8:
	rts
	nop

;==============================================
loc_8c01adcc:
	mov.l @(loc_8c01aea0,PC),r3
	mov.w @r3,r0
	tst 0x80,r0
	bt loc_8c01addc
	mov.w @(loc_8c01ae9a,PC),r0
	mov 0x01,r1
	bra loc_8c01ade2
	mov.b r1,@(r0,r4)

loc_8c01addc:
	mov.w @(loc_8c01ae9a,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)

loc_8c01ade2:
	rts
	nop

;==============================================
loc_8c01ade6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0xA2,PC),r0
	add r0,r15
	mov r4,r13
	mov.b @(0x5,r13),r0
	mov.l @(0xA4,PC),r3
	mov 0x20,r5
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c01ae1a
	mov.l @r3,r4
	cmp/eq 0x01,r0
	bt loc_8c01ae38
	cmp/eq 0x02,r0
	bt loc_8c01ae54
	cmp/eq 0x03,r0
	bt loc_8c01ae6e
	bra loc_8c01ae8e
	nop

loc_8c01ae1a:
	mov.w @(0x8,r4),r0
	tst r0,r0
	bt loc_8c01ae8e
	mov r5,r0
	nop
	mov.l @(0x80,PC),r2
	mov.w @(0x74,PC),r1
	mov.w r0,@(0x1C,r13)
	jsr @r2
	mov.w @(0x1C,r13),r0
	lds r0,fpul
	mov 0x5C,r0
	float fpul,fr3
	bra loc_8c01ae66
	fmov fr3,@(r0,r13)

loc_8c01ae38:
	mov.w @(0x1C,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r13)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c01ae66
	mov 0x5C,r1
	add r13,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r13),fr2
	fsub fr3,fr2
	bra loc_8c01ae8e
	fmov fr2,@(r0,r13)

loc_8c01ae54:
	mov.w @(0x8,r4),r0
	tst r0,r0
	bt loc_8c01ae8e
	mov.w @(0x8,r4),r0
	cmp/pz r0
	bt loc_8c01ae8e
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r13)

loc_8c01ae66:
	mov.b @(0x5,r13),r0
	add 0x01,r0
	bra loc_8c01ae8e
	mov.b r0,@(0x5,r13)

loc_8c01ae6e:
	mov.w @(0x1C,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r13)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01ae80
	mov 0x00,r0
	bra loc_8c01ae8e
	mov.b r0,@(0x5,r13)

loc_8c01ae80:
	mov 0x5C,r1
	add r13,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r13)

loc_8c01ae8e:
	mov.l @(0x1C,PC),r3
	mov.b @r3,r0
	tst 0x80,r0
	bt loc_8c01aeb0
	bra loc_8c01aeb2
	mov 0x01,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ae9a:
	#data 0x012c 0xff7c 0x0280
	#align4

loc_8c01aea0:
	#data 0x8c212f10 work.GameGlobalPointer bank12.loc_8c129128 0x8c212f1b

;==============================================
loc_8c01aeb0:
	mov 0x00,r4

loc_8c01aeb2:
	mov.w @(loc_8c01b018,PC),r11
	mov.l @(0x178,PC),r10
	muls.w r11,r4
	mov.w @(0x15E,PC),r0
	mov.l @(0x16C,PC),r8
	mov.l @(loc_8c01b024,PC),r14
	sts macl,r11
	mov.l @(0x168,PC),r9
	mov r11,r3
	add r10,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c01aeee
	mov 0x08,r0
	mov.w @(0x148,PC),r3
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	mov r11,r5
	add r10,r5
	fadd fr3,fr5
	fmov @r14,fr3
	fmov @(r0,r13),fr4
	add r3,r5
	mov r8,r4
	jsr @r9
	fadd fr3,fr4

loc_8c01aeee:
	mov r11,r3
	add r10,r3
	mov.b @r3,r2
	add 0x0C,r14
	mov r15,r12
	tst r2,r2
	bt.s loc_8c01af30
	add 0x04,r12
	mov.l @(loc_8c01b034,PC),r3
	mov 0x00,r5
	mov.w @(0x116,PC),r6
	jsr @r3
	mov r12,r4
	mov.l @(0x12C,PC),r3
	mov r11,r5
	mov 0x12,r6
	add r10,r5
	jsr @r3
	mov r12,r4
	mov 0x08,r0
	mov r8,r4
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	fmov @(r0,r13),fr4
	mov r12,r5
	fadd fr3,fr5
	fmov @r14,fr3
	jsr @r9
	fadd fr3,fr4

loc_8c01af30:
	mov r10,r3
	mov.w @(0xE6,PC),r0
	add r11,r3
	mov.l r10,@r15
	mov.b @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c01af6e
	add 0x0C,r14
	mov.l @r15,r5
	mov 0x22,r6
	mov r6,r3
	mov.l @(0xF0,PC),r2
	add 0x5E,r3
	add r11,r5
	add r3,r5
	jsr @r2
	mov r12,r4
	mov 0x08,r0
	mov r8,r4
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	fmov @(r0,r13),fr4
	mov r12,r5
	fadd fr3,fr5
	fmov @r14,fr3
	jsr @r9
	fadd fr3,fr4

loc_8c01af6e:
	mov.w @(0xAC,PC),r0
	mov r11,r3
	add r10,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c01afb6
	add 0x0C,r14
	mov.l @(loc_8c01b034,PC),r3
	mov 0x00,r5
	mov.w @(0x98,PC),r6
	jsr @r3
	mov r12,r4
	mov.w @(0x94,PC),r3
	mov r11,r4
	mov.l @(0xB0,PC),r2
	add r10,r4
	jsr @r2
	add r3,r4
	mov.l @(0xAC,PC),r3
	mov r0,r4
	jsr @r3
	mov r12,r5
	mov 0x08,r0
	mov r8,r4
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	fmov @(r0,r13),fr4
	mov r12,r5
	fadd fr3,fr5
	fmov @r14,fr3
	jsr @r9
	fadd fr3,fr4

loc_8c01afb6:
	mov.w @(loc_8c01b020,PC),r0
	mov r11,r3
	add r10,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c01affa
	add 0x0C,r14
	mov.l @(loc_8c01b034,PC),r3
	mov 0x00,r5
	mov.w @(0x50,PC),r6
	jsr @r3
	mov r12,r4
	mov.w @(loc_8c01b020,PC),r3
	mov r11,r5
	mov.l @(0x64,PC),r2
	add r10,r5
	mov 0x24,r6
	add r3,r5
	jsr @r2
	mov r12,r4
	mov 0x08,r0
	mov r8,r4
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	fmov @(r0,r13),fr4
	mov r12,r5
	fadd fr3,fr5
	fmov @r14,fr3
	jsr @r9
	fadd fr3,fr4

loc_8c01affa:
	mov.w @(0x24,PC),r0
	mov r11,r3
	add r10,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c01b072
	add 0x0C,r14
	mov.l @(loc_8c01b034,PC),r3
	mov 0x00,r5
	mov.w @(0xC,PC),r6
	jsr @r3
	mov r12,r4
	mov r11,r4
	bra loc_8c01b044
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01b018:
	#data 0x0229 0x0200 0x0080 0x0216
loc_8c01b020:
	#data 0x0100 0x0212
	#align4
loc_8c01b024:
	#data bank14.loc_8c1461ac 0xff000000 bank02.loc_8c02a53a 0x8c214c16
loc_8c01b034:
	#data bank12.loc_8c129728 bank12.loc_8c1297d4 loc_8c01fec0 loc_8c01fe1c

;==============================================
loc_8c01b044:
	mov.l @(loc_8c01b150,PC),r2
	add r10,r4
	mov.w @(loc_8c01b148,PC),r3
	jsr @r2
	add r3,r4
	mov.l @(0x104,PC),r3
	mov r0,r4
	jsr @r3
	mov r12,r5
	mov 0x08,r0
	mov r8,r4
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	fmov @(r0,r13),fr4
	mov r12,r5
	fadd fr3,fr5
	fmov @r14,fr3
	jsr @r9
	fadd fr3,fr4

loc_8c01b072:
	mov 0x08,r0
	mov.l @(0xE0,PC),r5
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mov 0x34,r0
	fmov @(r0,r13),fr1
	mova @(0xD4,PC),r0
	fadd fr3,fr2
	fldi1 fr3
	fneg fr3
	mov r8,r4
	fmov fr2,fr5
	fadd fr3,fr5
	fmov @r14,fr2
	fadd fr2,fr1
	fmov @r0,fr2
	fmov fr1,fr4
	jsr @r9
	fadd fr2,fr4
	mov.w @(0xA8,PC),r0
	mov r11,r3
	add r10,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c01b0e2
	add 0x0C,r14
	mov.l @(loc_8c01b160,PC),r3
	mov 0x00,r5
	mov.w @(0x98,PC),r6
	jsr @r3
	mov r12,r4
	mov.w @(0x90,PC),r3
	mov r11,r5
	mov.l @(0xA8,PC),r2
	add r10,r5
	mov 0x28,r6
	add r3,r5
	jsr @r2
	mov r12,r4
	mov 0x08,r0
	mov r8,r4
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	fmov @(r0,r13),fr4
	mov r12,r5
	fadd fr3,fr5
	fmov @r14,fr3
	jsr @r9
	fadd fr3,fr4

loc_8c01b0e2:
	mov.l @(loc_8c01b160,PC),r3
	add 0x0C,r14
	mov.w @(0x62,PC),r6
	mov 0x00,r5
	jsr @r3
	mov r12,r4
	mov.w @(0x5C,PC),r0
	mov r11,r2
	add r10,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c01b1b2
	mov r11,r7
	add r10,r7
	mov 0x00,r4
	bra loc_8c01b116
	mov 0x03,r6

loc_8c01b104:
	exts.w r4,r5
	mov r5,r0
	nop
	mov.w @(0x40,PC),r3
	add 0x01,r4
	add r7,r3
	add r5,r3
	mov.b @r3,r3
	mov.b r3,@(r0,r12)

loc_8c01b116:
	exts.w r4,r2
	cmp/ge r6,r2
	bf loc_8c01b104
	mov 0x00,r3
	mov r12,r5
	exts.w r4,r0
	mov r8,r4
	mov.b r3,@(r0,r12)
	mov 0x08,r0
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	fmov @(r0,r13),fr4
	fadd fr3,fr5
	fmov @r14,fr3
	jsr @r9
	fadd fr3,fr4
	mov r11,r7
	add r10,r7
	mov 0x00,r4
	bra loc_8c01b182
	mov 0x04,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01b148:
	#data 0x0212 0x0140 0x0080 0x0180
loc_8c01b150:
	#data loc_8c01fec0 loc_8c01fe1c bank13.loc_8c1327ec 0x42d80000
loc_8c01b160:
	#data bank12.loc_8c129728 bank12.loc_8c1297d4

;==============================================
loc_8c01b168:
	exts.w r4,r6
	mov r6,r0
	nop
	mov.w @(loc_8c01b2bc,PC),r3
	mov 0x03,r1
	mov r6,r2
	add r12,r2
	add r7,r3
	add r6,r3
	add r3,r1
	mov.b @r1,r3
	add 0x01,r4
	mov.b r3,@r2

loc_8c01b182:
	exts.w r4,r3
	cmp/ge r5,r3
	bf loc_8c01b168
	mov 0x00,r3
	mov r12,r5
	exts.w r4,r0
	mov r8,r4
	mov.b r3,@(r0,r12)
	mov 0x08,r0
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mova @(loc_8c01b2c8,PC),r0
	fadd fr3,fr5
	fmov @r14,fr3
	fadd fr3,fr2
	fmov @r0,fr3
	fmov fr2,fr4
	jsr @r9
	fadd fr3,fr4

loc_8c01b1b2:
	mov.w @(0x108,PC),r0
	mov r11,r3
	add r10,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c01b1f6
	add 0x0C,r14
	mov.l @(0x108,PC),r3
	mov 0x00,r5
	mov.w @(0xF8,PC),r6
	jsr @r3
	mov r12,r4
	mov.w @(0xF0,PC),r3
	mov r11,r5
	mov.l @(0x100,PC),r2
	add r10,r5
	mov 0x1C,r6
	add r3,r5
	jsr @r2
	mov r12,r4
	mov 0x08,r0
	mov r8,r4
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr5
	mov 0x34,r0
	fmov @(r0,r13),fr4
	mov r12,r5
	fadd fr3,fr5
	fmov @r14,fr3
	jsr @r9
	fadd fr3,fr4

loc_8c01b1f6:
	mov.w @(0xC8,PC),r1
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
loc_8c01b20c:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0xBC,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01b220:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01b228:
	mov.l @(loc_8c01b2d8,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c01b22e:
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
loc_8c01b240:
	sts.l pr,@-r15
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c01a5f4
	mov r6,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c01a5f4
	mov 0x02,r4
	mov 0x02,r5
	mov 0x00,r6
	bsr loc_8c01a5f4
	mov r5,r4
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c01a5f4
	mov 0x06,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c01a5f4
	mov 0x06,r4
	mov 0x00,r6
	mov r6,r5
	bsr loc_8c01a5f4
	mov 0x07,r4
	lds.l @r15+,pr
	mov 0x00,r4

loc_8c01b276:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	shll2 r14
	mov.l @(0x60,PC),r3
	shll r14
	sts.l pr,@-r15
	mov r4,r6
	mov 0x00,r5
	mov r4,r13
	add r3,r14
	bsr loc_8c01a5f4
	mov 0x03,r4
	mov r0,r4
	mov.w @(loc_8c01b2c4,PC),r0
	mov.w @r14+,r3
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov.w @r14+,r3
	mov.l r3,@(r0,r4)
	mov.w @r14,r2
	cmp/pz r2
	bf loc_8c01b2b4
	mov 0x01,r5
	mov r13,r6
	bsr loc_8c01a5f4
	mov 0x03,r4
	mov r0,r4
	mov.w @(loc_8c01b2c4,PC),r0
	mov.w @r14,r3
	mov.l r3,@(r0,r4)

loc_8c01b2b4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01b2bc:
	#data 0x0180 0x018a 0x0080 0x0084
loc_8c01b2c4:
	#data 0x00d0
	#align4
loc_8c01b2c8:
	#data 0x42480000 bank12.loc_8c129728 bank12.loc_8c1297d4 bank14.loc_8c146218
loc_8c01b2d8:
	#data bank04.loc_8c0450c0 bank14.loc_8c146238 bank14.loc_8c146248

;==============================================
loc_8c01b2e4:
	sts.l pr,@-r15
	mov.l @(loc_8c01b3f0,PC),r3
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01b340
	mov r0,r4
	mov.w @(loc_8c01b3e4,PC),r0
	mov 0x00,r3
	mov.l @(0xF8,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xE0,PC),r3
	add 0x74,r1
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0xEC,PC),r2
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(0xF0,PC),r2
	mov.l @(loc_8c01b400,PC),r1
	mov.b @r2,r3
	mov.l @r1,r0
	mov 0x73,r1
	sub r3,r1
	mov.l @r0,r0
	shll2 r1
	mov.l @(r0,r1),r3
	mov.w @(0xC0,PC),r0
	mov.l r3,@(r0,r4)
	mova @(0xDC,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c01b410,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)

loc_8c01b340:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01b346:
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
loc_8c01b358:
	mov.w @(loc_8c01b3e4,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01b366:
	mov.l @(0x9C,PC),r1
	mov.l @(loc_8c01b400,PC),r3
	mov.b @r1,r2
	mov.l @r3,r0
	mov 0x73,r3
	sub r2,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(0x6C,PC),r0
	rts
	mov.l r2,@(r0,r4)

;==============================================
loc_8c01b37e:
	sts.l pr,@-r15
	mov.l @(loc_8c01b3f0,PC),r3
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01b3ba
	mov r0,r4
	mov.w @(loc_8c01b3e4,PC),r0
	mov 0x00,r3
	mov.l @(0x80,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x4A,PC),r3
	add 0x74,r1
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0x50,PC),r2
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01b400,PC),r0
	mov.l @r0,r1
	mov.w @(loc_8c01b3ec,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(0x2E,PC),r0
	mov.l r3,@(r0,r4)

loc_8c01b3ba:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01b3c0:
	mov r4,r3
	mov.l @(0x58,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01b3d2:
	mov.w @(loc_8c01b3e4,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01b3e0:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01b3e4:
	#data 0x012c 0x0421 0x0084 0x0400
loc_8c01b3ec:
	#data 0x0238
	#align4
loc_8c01b3f0:
	#data bank04.loc_8c044f12 loc_8c01b346 bank14.loc_8c146288 bank12.loc_8c1294bc
loc_8c01b400:
	#data 0x8c26a940 0x8c213b08 0x41500000 0x40aae148
loc_8c01b410:
	#data 0xc178f5c3 bank14.loc_8c146298 loc_8c01b3c0 bank14.loc_8c1462a8

;==============================================
loc_8c01b420:
	sts.l pr,@-r15
	mov.l @(loc_8c01b560,PC),r3
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01b46e
	mov r0,r4
	mov.w @(loc_8c01b552,PC),r0
	mov 0x00,r3
	mov.l @(0x12C,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x112,PC),r3
	add 0x74,r1
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0x120,PC),r2
	mov.l @(0x120,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01b570,PC),r0
	fldi1 fr4
	mov.l @r0,r1
	mov.w @(0xFE,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(0xFA,PC),r0
	mov.l r3,@(r0,r4)
	mova @(0x114,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c01b46e:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01b474:
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
loc_8c01b486:
	mov.w @(loc_8c01b552,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01b494:
	rts
	nop

;==============================================
loc_8c01b498:
	sts.l pr,@-r15
	mov.l @(loc_8c01b560,PC),r3
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01b4d4
	mov r0,r4
	mov.w @(loc_8c01b552,PC),r0
	mov 0x00,r3
	mov.l @(0xCC,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(loc_8c01b55a,PC),r3
	add 0x74,r1
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0xA8,PC),r2
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01b570,PC),r0
	mov.l @r0,r1
	mov.w @(0x8E,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(0x84,PC),r0
	mov.l r3,@(r0,r4)

loc_8c01b4d4:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01b4da:
	mov r4,r3
	mov.l @(loc_8c01b580,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01b4ec:
	mov.w @(loc_8c01b552,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	bra loc_8c01be90
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01b4fa:
	bra loc_8c01be90
	nop

;==============================================
loc_8c01b4fe:
	sts.l pr,@-r15
	mov.l @(loc_8c01b560,PC),r3
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01b53a
	mov r0,r4
	mov.w @(loc_8c01b552,PC),r0
	mov 0x00,r3
	mov.l @(0x6C,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(loc_8c01b55a,PC),r3
	add 0x74,r1
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0x40,PC),r2
	mov.l @(0x44,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01b570,PC),r0
	mov.l @r0,r1
	mov.w @(0x2A,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(0x1E,PC),r0
	mov.l r3,@(r0,r4)

loc_8c01b53a:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01b540:
	mov r4,r3
	mov.l @(0x44,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01b552:
	#data 0x012c 0x0410 0x0234 0x0084
loc_8c01b55a:
	#data 0x0400 0x023c 0x027c
	#align4
loc_8c01b560:
	#data bank04.loc_8c044f12 loc_8c01b474 bank14.loc_8c146288 bank12.loc_8c1294bc
loc_8c01b570:
	#data 0x8c26a940 0x3f666666 bank14.loc_8c1462b8 loc_8c01b4da
loc_8c01b580:
	#data bank14.loc_8c1462c8 loc_8c01b540 bank14.loc_8c1462d8 

;==============================================
loc_8c01b58c:
	mov.w @(loc_8c01b6ca,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01b59a:
	rts
	nop

;==============================================
loc_8c01b59e:
	sts.l pr,@-r15
	mov.l @(loc_8c01b6d8,PC),r3
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01b5da
	mov r0,r4
	mov.w @(loc_8c01b6ca,PC),r0
	mov 0x00,r3
	mov.l @(0x124,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x10C,PC),r3
	add 0x74,r1
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0x118,PC),r2
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01b6e8,PC),r0
	mov.l @r0,r1
	mov.w @(0xFA,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(0xF6,PC),r0
	mov.l r3,@(r0,r4)

loc_8c01b5da:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01b5e0:
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
loc_8c01b5f2:
	mov.w @(loc_8c01b6ca,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01b600:
	rts
	nop

;==============================================
loc_8c01b604:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c01b6d8,PC),r3
	mov 0x0B,r5
	mov.b r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01b682
	mov r0,r4
	mov.w @(loc_8c01b6ca,PC),r0
	mov 0x00,r3
	mov.l @(0xD0,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(loc_8c01b6d2,PC),r3
	add 0x74,r1
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0xB0,PC),r2
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01b6e8,PC),r0
	mov.l @r0,r1
	mov.w @(0x96,PC),r0
	mov.l @r1,r3
	mov.w @(0x94,PC),r1
	mov.l @(r0,r3),r3
	mov.w @(0x8A,PC),r0
	mov.l r3,@(r0,r4)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov.b @r15,r3
	mov.l @(loc_8c01b6f8,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x23,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x44,r0
	mov.l r1,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	add 0x01,r0
	shll2 r0
	shll r0
	mov.w r0,@(0x1C,r4)
	add 0x04,r15
	bra loc_8c01bbac
	lds.l @r15+,pr

loc_8c01b682:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01b68a:
	mov r4,r3
	mov.l @(0x70,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01b69c:
	mov.w @(loc_8c01b6ca,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01b6aa:
	mov r4,r3
	mov.l @(0x54,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01b6bc:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c01b708
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	rts
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01b6ca:
	#data 0x012c 0x0400 0x0280 0x0084
loc_8c01b6d2:
	#data 0x0405 0x0240 0x238e
	#align4
loc_8c01b6d8:
	#data bank04.loc_8c044f12 loc_8c01b5e0 bank14.loc_8c146288 bank12.loc_8c1294bc
loc_8c01b6e8:
	#data 0x8c26a940 bank14.loc_8c1462e8 loc_8c01b68a 0xc1ab2b02
loc_8c01b6f8:
	#data bank13.loc_8c1327fc 0xc08ced91 bank14.loc_8c1462f8 bank14.loc_8c146308

;==============================================
loc_8c01b708:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x0F,r0
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mova @(loc_8c01b848,PC),r0
	fmov @r0,fr2
	mov.w @(0x1C,r4),r0
	fneg fr3
	fadd fr2,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x5C,r0
	float fpul,fr1
	fdiv fr1,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	mova @(0x118,PC),r0
	fmov @r0,fr1
	mov.w @(0x1C,r4),r0
	fneg fr3
	fadd fr1,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x64,r0
	float fpul,fr0
	fdiv fr0,fr3
	fmov fr3,@(r0,r4)
	rts
	nop

;==============================================
loc_8c01b74a:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c01b774
	mov.w @(0x1C,r4),r0
	mov 0x5C,r1
	add r4,r1
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x64,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

loc_8c01b774:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x64,r0
	fmov fr3,@(r0,r4)
	rts
	nop

;==============================================
loc_8c01b792:
	mov 0x23,r0
	mov.l @(loc_8c01b858,PC),r2
	mov.b @(r0,r4),r1
	mov.b @r2,r3
	extu.b r1,r1
	cmp/eq r1,r3
	bf loc_8c01b7b2
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)

loc_8c01b7b2:
	rts
	nop

;==============================================
loc_8c01b7b6:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c01b7ea
	mov.w @(0x1C,r4),r0
	mov.l @(0xAC,PC),r2
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r4),fr2
	mova @(0x94,PC),r0
	fmov @r0,fr1
	mova @(loc_8c01b868,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov 0x44,r0
	mov.l @(r0,r4),r1
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	add r3,r1
	rts
	mov.l r1,@(r0,r4)

loc_8c01b7ea:
	mov.b @(0x5,r4),r0
	mov 0x00,r5
	mov.l @(0x80,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x44,r0
	mov.l r5,@(r0,r4)
	mov.l @r2,r3
	mov.w @(loc_8c01b840,PC),r0
	mov.l @r3,r1
	mov.l @(r0,r1),r3
	mov.l @(0x70,PC),r1
	mov.w @(0x3C,PC),r0
	mov.l r3,@(r0,r4)
	mov.b r5,@r1
	rts
	nop

;==============================================
loc_8c01b80c:
	mov 0x23,r0
	mov.l @(loc_8c01b858,PC),r2
	mov.b @(r0,r4),r1
	mov.b @r2,r3
	extu.b r1,r1
	cmp/eq r1,r3
	bt loc_8c01b83c
	mov.b @(0x5,r4),r0
	mov.l @(0x50,PC),r1
	add 0x01,r0
	mov.w @(0x1E,PC),r2
	mov.b r0,@(0x5,r4)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)
	mova @(loc_8c01b878,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	add r4,r2
	fmov fr3,@(r0,r4)
	mov.l @r1,r3
	mov.w @(0xC,PC),r0
	mov.l @r3,r3
	mov.l @(r0,r3),r0
	mov.l r0,@r2

loc_8c01b83c:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01b840:
	#data 0x0244 0x0084 0x0240
	#align4
loc_8c01b848:
	#data 0xc1365604 0xc16676c9 0xc12170a4 0xc1380000
loc_8c01b858:
	#data 0x8c212f18 0xc0a00000 0x47800000 0x43b40000
loc_8c01b868:
	#data 0x3f000000 0x0000ffff 0x8c26a940 0x8c212f20
loc_8c01b878:
	#data 0x40a00000

;==============================================
loc_8c01b87c:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c01b8b0
	mov.w @(0x1C,r4),r0
	mov.l @(0x144,PC),r2
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mova @(loc_8c01b9c0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r4),fr2
	mova @(0x130,PC),r0
	fmov @r0,fr1
	mova @(0x130,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov 0x44,r0
	mov.l @(r0,r4),r1
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	add r3,r1
	rts
	mov.l r1,@(r0,r4)

loc_8c01b8b0:
	mov 0x02,r0
	mov.w @(loc_8c01b9b4,PC),r3
	mov.b r0,@(0x5,r4)
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	rts
	nop

;==============================================
loc_8c01b8be:
	sts.l pr,@-r15
	mov.l @(loc_8c01b9d0,PC),r3
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01b914
	mov r0,r4
	mov.w @(0xE2,PC),r0
	mov 0x00,r3
	mov.l @(0xFC,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xD8,PC),r3
	add 0x74,r1
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(0xF0,PC),r2
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01b9e0,PC),r0
	fldi0 fr4
	mov.l @r0,r1
	mov.w @(0xC4,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c01b9bc,PC),r0
	mov.l r3,@(r0,r4)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	fmov fr4,@(r0,r4)
	mov 0x28,r0
	mov.w r0,@(0x1C,r4)
	bra loc_8c01b9f0
	lds.l @r15+,pr

loc_8c01b914:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01b91a:
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
loc_8c01b92c:
	mov.w @(0x86,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01b93a:
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
loc_8c01b94c:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c01b95a
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	rts
	mov.w r0,@(0x1C,r4)

loc_8c01b95a:
	mov.b @(0x5,r4),r0
	fldi0 fr2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x0F,r0
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov.w @(0x1C,r4),r0
	fneg fr3
	fadd fr2,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x5C,r0
	float fpul,fr1
	fdiv fr1,fr3
	fmov fr3,@(r0,r4)
	rts
	nop

;==============================================
loc_8c01b980:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c01b99c
	mov.w @(0x1C,r4),r0
	mov 0x5C,r1
	add r4,r1
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

loc_8c01b99c:
	mov.b @(0x5,r4),r0
	fldi0 fr3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	rts
	nop

;==============================================
loc_8c01b9b0:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01b9b4:
	#data 0x238e 0x012c 0x0401 0x0248
loc_8c01b9bc:
	#data 0x0084
	#align4
loc_8c01b9c0:
	#data 0x47800000 0x43b40000 0x3f000000 0x0000ffff
loc_8c01b9d0:
	#data bank04.loc_8c044f12 loc_8c01b91a bank14.loc_8c146288 bank12.loc_8c1294bc
loc_8c01b9e0:
	#data 0x8c26a940 0x42200000 bank14.loc_8c146320 bank14.loc_8c146330

;==============================================
loc_8c01b9f0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c01bae4,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01ba44
	mov r0,r14
	mov.w @(loc_8c01badc,PC),r0
	mov 0x00,r3
	mov.l @(0xD8,PC),r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov 0x01,r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	add 0x74,r1
	mov.l @(0xCC,PC),r2
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01baf4,PC),r0
	mov.l @r0,r1
	mov.w @(0xB2,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(0xAE,PC),r0
	mov.l r3,@(r0,r14)
	mov.l @r15,r1
	mov.l r1,@(0x18,r14)
	bsr loc_8c01bc64
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c01bcfa
	mov.l @r15+,r14

loc_8c01ba44:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01ba4c:
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
loc_8c01ba5e:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01ba66:
	mov r4,r3
	mov.l @(0x90,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01ba78:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c01ba9c
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(loc_8c01badc,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(0x4A,PC),r0
	mov.l @(0x68,PC),r3
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8c01ba9c:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01baa0:
	mov.l r14,@-r15
	mov 0x01,r3
	mov.w @(loc_8c01badc,PC),r0
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	bsr loc_8c01bb08
	mov r14,r4
	mov.l @(loc_8c01bb04,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c01bac6
	mov.w @(loc_8c01badc,PC),r1
	mov 0x00,r0
	add r14,r1
	mov.b r0,@r1
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c01bac6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01bacc:
	mov.l @(loc_8c01bb04,PC),r3
	mov.b @r3,r0
	cmp/eq 0x01,r0
	bf loc_8c01bad8
	mov 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8c01bad8:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01badc:
	#data 0x012c 0x024c 0x0084
	#align4
loc_8c01bae4:
	#data bank04.loc_8c044f12 loc_8c01ba4c bank14.loc_8c146288 bank12.loc_8c1294bc
loc_8c01baf4:
	#data 0x8c26a940 bank14.loc_8c14633c bank14.loc_8c14634c bank10.loc_8c108210
loc_8c01bb04:
	#data 0x8c212f20

;==============================================
loc_8c01bb08:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov 0x04,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c01bb2e
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c01bb2e:
	mov.l @(loc_8c01bc34,PC),r3
	mov.w @(loc_8c01bc2a,PC),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @(0x100,PC),r1
	mov.w @(0xF0,PC),r0
	mov.l @r4,r2
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8c01bc44,PC),r12
	mova @(0x108,PC),r0
	mov.l @(0x100,PC),r13
	mov.l @(0xF4,PC),r10
	mov.l @(0xF4,PC),r11
	fldi1 fr14
	bra loc_8c01bb90
	fmov @r0,fr15

loc_8c01bb50:
	mov r15,r5
	add 0x04,r5
	jsr @r10
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov 0x04,r1
	fmov @r15,fr2
	mov r15,r5
	shll r0
	shll2 r0
	fmov @(r0,r13),fr3
	add 0x04,r5
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1C,r14),r0
	shll r0
	shll2 r0
	add r13,r0
	fmov @(r0,r1),fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r12
	mov r15,r4

loc_8c01bb90:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c01bb50
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01bbac:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(0x9C,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01bc00
	mov r0,r4
	mov.w @(0x68,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c01bc54,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov 0x01,r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	add 0x74,r1
	mov.l @(0x80,PC),r2
	mov.l @(0x80,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01bc34,PC),r0
	mov.l @r0,r1
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.l @r1,r1
	extu.b r3,r3
	mov.w @(0x42,PC),r0
	shll2 r3
	add r1,r3
	mov.w @(loc_8c01bc32,PC),r1
	mov.l @(r0,r3),r3
	mov.w @(loc_8c01bc2a,PC),r0
	add r14,r1
	mov.l r3,@(r0,r4)
	add 0x44,r0
	mov.l r1,@(r0,r4)
	mov.l r14,@(0x18,r4)

loc_8c01bc00:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01bc06:
	mov r4,r3
	mov.l @(0x54,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01bc18:
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xA,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c01bc26:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01bc2a:
	#data 0x0084 0x0250 0x012c 0x0254
loc_8c01bc32:
	#data 0x0088
	#align4
loc_8c01bc34:
	#data 0x8c26a940 bank10.loc_8c108060 bank10.loc_8c108192 bank10.loc_8c108086
loc_8c01bc44:
	#data bank10.loc_8c1081e6 bank14.loc_8c146358 0x3c23d70a bank04.loc_8c044f12
loc_8c01bc54:
	#data loc_8c01bc06 bank14.loc_8c146288 bank12.loc_8c1294bc bank14.loc_8c146388

;==============================================
loc_8c01bc64:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c01bd84,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01bca8
	mov r0,r4
	mov.w @(loc_8c01bd7a,PC),r0
	mov 0x00,r3
	mov.l @(0x108,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov 0x01,r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	add 0x74,r1
	mov.l @(0xFC,PC),r2
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01bd94,PC),r0
	mov.l @r0,r1
	mov.w @(0xDE,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(0xDA,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.l r1,@(0x18,r4)

loc_8c01bca8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01bcb0:
	mov r4,r3
	mov.l @(0xE4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c01bcc2:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

loc_8c01bcca:
	mov.l @(0x18,r4),r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c01bcdc
	mov.w @(loc_8c01bd7a,PC),r0
	mov 0x01,r2
	bra loc_8c01bce2
	mov.b r2,@(r0,r4)

loc_8c01bcdc:
	mov.w @(loc_8c01bd7a,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r4)

loc_8c01bce2:
	mov.l @(loc_8c01bd94,PC),r2
	mov.l @(0xB4,PC),r0
	mov.l @r2,r3
	mov.b @r0,r1
	mov.l @r3,r3
	mov.w @(0x8C,PC),r0
	shll2 r1
	add r3,r1
	mov.l @(r0,r1),r1
	mov.w @(0x86,PC),r0
	rts
	mov.l r1,@(r0,r4)

;==============================================
loc_8c01bcfa:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c01bd84,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01bd3e
	mov r0,r4
	mov.w @(loc_8c01bd7a,PC),r0
	mov 0x00,r3
	mov.l @(0x88,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov 0x01,r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	add 0x74,r1
	mov.l @(0x64,PC),r2
	mov.l @(0x68,PC),r3
	jsr @r3
	mov 0x10,r0
	mov.l @(loc_8c01bd94,PC),r0
	mov.l @r0,r1
	mov.w @(0x4C,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(0x44,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.l r1,@(0x18,r4)

loc_8c01bd3e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01bd46:
	mov r4,r3
	mov.l @(loc_8c01bda4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01bd58:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01bd60:
	mov.w @(loc_8c01bd7a,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c01bd76
	mov.w @(loc_8c01bd7a,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)

loc_8c01bd76:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01bd7a:
	#data 0x012c 0x0268 0x0084 0x0284
	#align4
loc_8c01bd84:
	#data bank04.loc_8c044f12 loc_8c01bcb0 bank14.loc_8c146288 bank12.loc_8c1294bc
loc_8c01bd94:
	#data 0x8c26a940 bank14.loc_8c146390 0x8c212f18 loc_8c01bd46
loc_8c01bda4:
	#data bank14.loc_8c146398

;==============================================
loc_8c01bda8:
	sts.l pr,@-r15
	bsr loc_8c01bdb2
	mov 0x00,r4
	lds.l @r15+,pr
	mov 0x01,r4

loc_8c01bdb2:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c01be74,PC),r3
	mov 0x0B,r5
	mov.b r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01be0c
	mov r0,r4
	mov.l @(0xAC,PC),r3
	mov 0x01,r5
	mov.w @(loc_8c01be68,PC),r0
	mov r4,r1
	mov.l @(0xA8,PC),r2
	add 0x74,r1
	mov.b r5,@(r0,r4)
	add 0xA0,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0xA4,PC),r3
	mov.l r5,@(r0,r4)
	jsr @r3
	mov 0x10,r0
	mov.w @(0x84,PC),r0
	mov.w r0,@(0x1C,r4)
	mov.b @r15,r1
	tst r1,r1
	bt loc_8c01bdf8
	mov.l @(loc_8c01be84,PC),r1
	mov.w @(0x7A,PC),r0
	mov.l @r1,r3
	mov.l @r3,r3
	bra loc_8c01be02
	mov.l @(r0,r3),r3

loc_8c01bdf8:
	mov.l @(loc_8c01be84,PC),r3
	mov.w @(0x70,PC),r0
	mov.l @r3,r1
	mov.l @r1,r1
	mov.l @(r0,r1),r3

loc_8c01be02:
	mov.w @(loc_8c01be70,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x23,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8c01be0c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01be14:
	mov r4,r3
	mov.l @(0x70,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01be26:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c01be3a
	mov.l @(0x54,PC),r2
	mov 0x01,r3
	mov.b r3,@r2

loc_8c01be3a:
	rts
	nop

;==============================================
loc_8c01be3e:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c01be4a
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)

loc_8c01be4a:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_8c01be64
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c01be64
	mov.l @(0x2C,PC),r2
	mov 0x00,r3
	mov.b r3,@r2

loc_8c01be64:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01be68:
	#data 0x012c 0x00b4 0x0434 0x04d4
loc_8c01be70:
	#data 0x0084
	#align4
loc_8c01be74:
	#data bank04.loc_8c044f12 loc_8c01be14 bank14.loc_8c146288 bank12.loc_8c1294bc
loc_8c01be84:
	#data 0x8c26a940 bank14.loc_8c1463a0 0x8c212f20

;==============================================
loc_8c01be90:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xE0,r15
	mov.l @(0x160,PC),r3
	mov r15,r14
	mov.l @(0x160,PC),r2
	mov.l r3,@-r15
	mov.l @(loc_8c01c000,PC),r12
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mova @(loc_8c01c010,PC),r0
	mov.l @(0x158,PC),r13
	fmov @r0,fr6
	mova @(0x15C,PC),r0
	fmov @r0,fr5
	mova @(0x15C,PC),r0
	mov 0xFF,r4
	mov r14,r5
	jsr @r13
	fmov @r0,fr4
	mov.l @(0x154,PC),r3
	mov.l @(loc_8c01c020,PC),r2
	mov.w @r3,r4
	extu.w r4,r4
	mov.l r4,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mova @(0x14C,PC),r0
	mov r14,r5
	fmov @r0,fr14
	mova @(0x14C,PC),r0
	fmov @r0,fr15
	mova @(0x14C,PC),r0
	fmov fr14,fr5
	mov 0xFF,r4
	fmov fr15,fr6
	jsr @r13
	fmov @r0,fr4
	mov.l @(0x130,PC),r2
	mov.l @(loc_8c01c020,PC),r3
	mov.l @r2,r4
	shlr16 r4
	exts.w r4,r4
	extu.w r4,r4
	mov.l r4,@-r15
	mov.l r3,@-r15
	jsr @r12
	mov r14,r4
	fmov fr14,fr5
	mova @(loc_8c01c030,PC),r0
	fmov fr15,fr6
	mov r14,r5
	mov 0xFF,r4
	jsr @r13
	fmov @r0,fr4
	mov.l @(0x124,PC),r3
	mov.l @(0x128,PC),r2
	mov.l @r3,r4
	mov.l r4,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mova @(0x120,PC),r0
	fmov fr15,fr6
	fmov @r0,fr14
	mova @(loc_8c01c040,PC),r0
	mov r14,r5
	mov 0xFF,r4
	fmov fr14,fr5
	jsr @r13
	fmov @r0,fr4
	mov.l @(0x114,PC),r3
	mov.l @(0x108,PC),r2
	mov.l @r3,r4
	mov.l r4,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	fmov fr14,fr5
	mova @(0x108,PC),r0
	fmov fr15,fr6
	mov r14,r5
	mov 0xFF,r4
	jsr @r13
	fmov @r0,fr4
	mov.l @(0x100,PC),r3
	mov 0x3C,r11
	mov.l @(loc_8c01c050,PC),r2
	mov.l @r3,r1
	jsr @r2
	mov r11,r0
	mov.l @(loc_8c01c050,PC),r2
	mov r0,r1
	jsr @r2
	mov r11,r0
	mov.l @(0xF4,PC),r1
	mov r0,r4
	mov.l r0,@-r15
	mov.l r1,@-r15
	jsr @r12
	mov r14,r4
	fmov fr14,fr5
	mova @(0xEC,PC),r0
	fmov fr15,fr6
	mov r14,r5
	mov 0xFF,r4
	jsr @r13
	fmov @r0,fr4
	mov.l @(0xD4,PC),r3
	mov.l @(loc_8c01c050,PC),r2
	mov.l @r3,r1
	jsr @r2
	mov r11,r0
	mov.l @(0xD8,PC),r2
	mov r0,r1
	jsr @r2
	mov r11,r0
	mov.l @(0xC8,PC),r1
	mov r0,r4
	mov.l r0,@-r15
	mov.l r1,@-r15
	jsr @r12
	mov r14,r4
	fmov fr14,fr5
	mova @(loc_8c01c060,PC),r0
	fmov fr15,fr6
	mov r14,r5
	mov 0xFF,r4
	jsr @r13
	fmov @r0,fr4
	add 0x58,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01bfb4:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01bfbc:
	mov.l @(0xA4,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c01bfc2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8c01b2e4
	nop
	bsr loc_8c01b37e
	nop
	bsr loc_8c01b420
	nop
	bsr loc_8c01b498
	nop
	bsr loc_8c01b4fe
	nop
	bsr loc_8c01b59e
	nop
	mov 0x00,r14
	mov 0x05,r13

loc_8c01bfe4:
	bsr loc_8c01b604
	mov r14,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c01bfe4
	bsr loc_8c01b8be
	nop
	lds.l @r15+,pr
	mov.l @(0x70,PC),r2
	mov 0x01,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01c000:
	#data bank12.loc_8c129740 0x8c21384a bank13.loc_8c132810 bank02.loc_8c02a53a
loc_8c01c010:
	#data 0x41673333 0x42f00000 0x41a00000 0x8c213b0c
loc_8c01c020:
	#data bank13.loc_8c132814 0x42f20000 0x413e8f5c 0x43700000
loc_8c01c030:
	#data 0x43c80000 0x8c213af8 bank13.loc_8c132818 0x43c58000
loc_8c01c040:
	#data 0x435c0000 0x8c213b00 0x43b90000 0x8c213b04
loc_8c01c050:
	#data bank12.loc_8c129128 bank13.loc_8c13281c 0x43fa0000 bank12.loc_8c1292d4
loc_8c01c060:
	#data 0x440e8000 bank04.loc_8c0450c0 loc_8c01b276

;==============================================
loc_8c01c06c:
	mov.l @(loc_8c01c268,PC),r3
	mov 0x00,r4
	mov.l @(loc_8c01c26c,PC),r2
	mov.b r4,@r3
	mov.l @(loc_8c01c274,PC),r3
	mov.l @(loc_8c01c270,PC),r1
	mov.b r4,@r2
	mov.l @(loc_8c01c278,PC),r2
	mov.b r4,@r1
	mov.b r4,@r3
	jmp @r2
	mov 0x0B,r4

;==============================================
loc_8c01c084:
	mov.l @(loc_8c01c268,PC),r2
	mov.l @(loc_8c01c27c,PC),r0
	mov.b @r2,r3
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r3
	jmp @r3
	nop

;==============================================
loc_8c01c094:
	mov.l r14,@-r15
	mov.l @(loc_8c01c26c,PC),r14
	sts.l pr,@-r15
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c01c0aa
	cmp/eq 0x01,r0
	bt loc_8c01c16c
	bra loc_8c01c182
	nop

loc_8c01c0aa:
	mov.b @r14,r3
	mov.l @(loc_8c01c280,PC),r2
	add 0x01,r3
	mov.b r3,@r14
	jsr @r2
	mov 0x03,r4
	mov 0x02,r5
	bsr loc_8c01c424
	mov 0x01,r4
	mov 0x03,r5
	bsr loc_8c01c424
	mov 0x01,r4
	mov 0x04,r5
	bsr loc_8c01c424
	mov 0x01,r4
	mov 0x06,r5
	bsr loc_8c01c424
	mov 0x01,r4
	mov 0x08,r5
	bsr loc_8c01c424
	mov 0x01,r4
	mov 0x09,r5
	bsr loc_8c01c424
	mov 0x01,r4
	mov 0x0A,r5
	bsr loc_8c01c424
	mov 0x01,r4
	mov 0x0E,r5
	bsr loc_8c01c424
	mov 0x01,r4
	mov 0x10,r5
	bsr loc_8c01c424
	mov 0x02,r4
	mov 0x11,r5
	bsr loc_8c01c424
	mov 0x03,r4
	mov 0x0F,r5
	bsr loc_8c01c424
	mov 0x04,r4
	mov 0x0C,r5
	bsr loc_8c01c424
	mov 0x05,r4
	mov 0x07,r5
	bsr loc_8c01c424
	mov 0x06,r4
	mov 0x0B,r5
	bsr loc_8c01c424
	mov 0x07,r4
	mov 0x12,r5
	bsr loc_8c01c424
	mov 0x0A,r4
	mov 0x13,r5
	bsr loc_8c01c424
	mov 0x0B,r4
	mov 0x14,r5
	bsr loc_8c01c424
	mov 0x0C,r4
	mov 0x00,r5
	bsr loc_8c01c4ae
	mov 0x0D,r4
	mov.l @(loc_8c01c284,PC),r2
	mov 0x00,r3
	mov.l @(loc_8c01c288,PC),r1
	mov.b r3,@r2
	mov r3,r2
	mov.b r3,@r1
	mov.l @(loc_8c01c290,PC),r3
	mov.l @(loc_8c01c294,PC),r1
	mov.l @(loc_8c01c28c,PC),r0
	mov.b r2,@r0
	mov.b r2,@r3
	mov 0x00,r3
	mov.b r2,@r1
	mov.l @(loc_8c01c298,PC),r1
	mov.l @(loc_8c01c29c,PC),r2
	mov.b r3,@r1
	mov.b r3,@r2
	mov r3,r0
	nop
	mov.l @(loc_8c01c2a0,PC),r2
	mov 0x09,r3
	mov 0x00,r1
	mov.b r0,@r2
	mov.l @(loc_8c01c2a4,PC),r0
	mov.l @(loc_8c01c2ac,PC),r2
	mov.b r3,@r0
	mov.l @(loc_8c01c2a8,PC),r3
	mov.b r1,@r3
	mov.l @(loc_8c01c2b0,PC),r3
	mov.b r1,@r2
	jsr @r3
	mov r1,r4
	mov.l @(loc_8c01c2b8,PC),r2
	mov 0x00,r6
	mov.l @(loc_8c01c2b4,PC),r4
	jsr @r2
	mov 0x0A,r5

loc_8c01c16c:
	mov.l @(loc_8c01c2bc,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c01c182
	mov.l @(loc_8c01c268,PC),r4
	mov 0x00,r2
	mov.b @r4,r3
	add 0x01,r3
	mov.b r3,@r4
	mov.b r2,@r14

loc_8c01c182:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01c188:
	mov.l @(loc_8c01c2c0,PC),r5
	mov 0x04,r2
	mov 0x04,r3
	mov.l r14,@-r15
	mov r5,r6
	add 0x14,r6
	mov r5,r4
	mov.l @(loc_8c01c26c,PC),r5
	add r6,r2
	mov.l @(loc_8c01c29c,PC),r6
	add r4,r3
	mov.l r13,@-r15
	mov.w @r2,r2
	mov 0x01,r14
	mov.w @r3,r3
	mov.l @(loc_8c01c298,PC),r2
	mov.b @r6,r3
	mov.b r3,@r2
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c01c1c2
	mov 0x00,r4
	cmp/eq 0x01,r0
	bt loc_8c01c23e
	cmp/eq 0x10,r0
	bt loc_8c01c252
	bra loc_8c01c260
	nop

loc_8c01c1c2:
	mov.l @(loc_8c01c288,PC),r4
	mov.l @(loc_8c01c284,PC),r1
	mov.b @r4,r3
	mov.l @(loc_8c01c294,PC),r13
	mov.b r3,@r1
	mov.b @r13,r3
	mov.l @(loc_8c01c290,PC),r6
	mov.b r3,@r6
	mov.l @(loc_8c01c2c4,PC),r3
	mov.b @r3,r0
	mov.b r0,@r4
	mov.l @(loc_8c01c2c8,PC),r0
	mov.b @r0,r2
	mov.b r2,@r13
	mov.b @r13,r2
	mov.b @r6,r0
	cmp/eq r0,r2
	bt loc_8c01c212
	mov.b @r13,r4
	mov.l @(loc_8c01c2a4,PC),r7
	exts.b r4,r2
	mov.l @(loc_8c01c2a0,PC),r6
	cmp/ge r0,r2
	bt loc_8c01c204
	mov.b @r6,r1
	exts.b r4,r2
	cmp/ge r1,r2
	bt loc_8c01c212
	mov.b r4,@r6
	mov.b @r7,r1
	add 0xFF,r1
	bra loc_8c01c212
	mov.b r1,@r7

loc_8c01c204:
	mov.b @r7,r1
	cmp/gt r1,r2
	bf loc_8c01c212
	mov.b r4,@r7
	mov.b @r6,r1
	add 0x01,r1
	mov.b r1,@r6

loc_8c01c212:
	mov.l @(loc_8c01c2cc,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c01c260
	mov.l @(loc_8c01c2d0,PC),r3
	mov.b @r3,r0
	cmp/eq 0x01,r0
	bt loc_8c01c22a
	cmp/eq 0x02,r0
	bt loc_8c01c230
	bra loc_8c01c238
	nop

loc_8c01c22a:
	mov.l @(loc_8c01c2ac,PC),r1
	bra loc_8c01c234
	mov.b r14,@r1

loc_8c01c230:
	mov.l @(loc_8c01c2a8,PC),r0
	mov.b r14,@r0

loc_8c01c234:
	bra loc_8c01c260
	mov.b r14,@r5

loc_8c01c238:
	mov 0x10,r1
	bra loc_8c01c260
	mov.b r1,@r5

loc_8c01c23e:
	mov.l @(loc_8c01c2d0,PC),r3
	mov.b @r3,r0
	tst r0,r0
	bf loc_8c01c260
	mov.l @(loc_8c01c2a8,PC),r1
	mov.l @(loc_8c01c2ac,PC),r2
	mov.b r4,@r5
	mov.b r4,@r1
	bra loc_8c01c260
	mov.b r4,@r2

loc_8c01c252:
	mov.l @(loc_8c01c2cc,PC),r3
	mov.b r14,@r6
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c01c260
	mov.b r4,@r5
	mov.b r4,@r6

loc_8c01c260:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01c268:
	#data 0x8c1f8b54
loc_8c01c26c:
	#data 0x8c1f8b55
loc_8c01c270:
	#data 0x8c1f8b56
loc_8c01c274:
	#data 0x8c1f8b57
loc_8c01c278:
	#data bank04.loc_8c044e56
loc_8c01c27c:
	#data 0x8c1466d8
loc_8c01c280:
	#data loc_8c01b276
loc_8c01c284:
	#data 0x8c1f8b5a
loc_8c01c288:
	#data 0x8c1f8b58
loc_8c01c28c:
	#data 0x8c1f8b80
loc_8c01c290:
	#data 0x8c1f8b5b
loc_8c01c294:
	#data 0x8c1f8b59
loc_8c01c298:
	#data 0x8c1f8b5d
loc_8c01c29c:
	#data 0x8c1f8b5c
loc_8c01c2a0:
	#data 0x8c1f8b7e
loc_8c01c2a4:
	#data 0x8c1f8b7f
loc_8c01c2a8:
	#data 0x8c1f8b83
loc_8c01c2ac:
	#data 0x8c1f8b82
loc_8c01c2b0:
	#data loc_8c01f682
loc_8c01c2b4:
	#data 0xff000000
loc_8c01c2b8:
	#data bank03.loc_8c0355b2
loc_8c01c2bc:
	#data bank03.loc_8c03563a
loc_8c01c2c0:
	#data 0x8c2681dc
loc_8c01c2c4:
	#data 0x8c2141e5
loc_8c01c2c8:
	#data 0x8c212f19
loc_8c01c2cc:
	#data 0x8c2136ff
loc_8c01c2d0:
	#data 0x8c2141e8

;==============================================
loc_8c01c2d4:
	mov.l @(loc_8c01c3f0,PC),r4
	sts.l pr,@-r15
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c01c2e8
	cmp/eq 0x01,r0
	bt loc_8c01c2f8
	bra loc_8c01c308
	nop

loc_8c01c2e8:
	mov.b @r4,r3
	mov 0x01,r6
	mov.l @(0x108,PC),r2
	add 0x01,r3
	mov.b r3,@r4
	mov.l @(0x100,PC),r4
	jsr @r2
	mov 0x0A,r5

loc_8c01c2f8:
	mov.l @(0x100,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c01c308
	mov.l @(loc_8c01c400,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c01c308:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c01c30e:
	rts
	nop

;----------------------------------------------
loc_8c01c312:
	rts
	nop

;==============================================
loc_8c01c316:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0xE4,PC),r2
	mov 0x0B,r5
	mov 0x00,r14
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt.s loc_8c01c382
	mov r0,r4
	mov 0x20,r0
	mov.l @(0xD4,PC),r2
	mov 0x01,r3
	mov.l @(loc_8c01c410,PC),r5
	mov r4,r1
	mov.l r2,@(0x10,r4)
	mov.b r14,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	mov r5,r2
	mov.w @(loc_8c01c3e8,PC),r0
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xC4,PC),r2
	mov r4,r1
	mov.l @(0xBC,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x44,r0
	mov r4,r1
	add 0x40,r1
	mov.l r14,@r1
	mov.l r14,@(r0,r4)
	mov 0x48,r0
	mov.l r14,@(r0,r4)
	mov.w @(0x7A,PC),r0
	mov.l @(0x10,r5),r3
	mov.l @(0xA8,PC),r1
	mov.l r3,@(r0,r4)
	mov.l @r1,r0
	mov.l @(0xC,r5),r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r3
	mov.w @(0x6A,PC),r0
	mov.l r3,@(r0,r4)

loc_8c01c382:
	mov.l @(0x84,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c01c3e2
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x74,PC),r3
	mov.l @(loc_8c01c420,PC),r5
	mov r4,r1
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.b r14,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	mov r5,r2
	mov.w @(loc_8c01c3e8,PC),r0
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l @(0x64,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x64,PC),r2
	mov r4,r1
	mov.l @(0x5C,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x44,r0
	mov r4,r1
	add 0x40,r1
	mov.l r14,@r1
	mov.l r14,@(r0,r4)
	mov 0x48,r0
	mov.l r14,@(r0,r4)
	mov.w @(0x1A,PC),r0
	mov.l @(0x10,r5),r3
	mov.l @(0x48,PC),r1
	mov.l r3,@(r0,r4)
	mov.l @r1,r0
	mov.l @(0xC,r5),r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r3
	mov.w @(0xA,PC),r0
	mov.l r3,@(r0,r4)

loc_8c01c3e2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01c3e8:
	#data 0x012c 0x00cc 0x0084
	#align4
loc_8c01c3f0:
	#data 0x8c1f8b55 0xff000000 bank03.loc_8c0355b2 bank03.loc_8c03563a
loc_8c01c400:
	#data loc_8c01cd58 loc_8c01b276 bank04.loc_8c044f12 loc_8c01c312
loc_8c01c410:
	#data bank14.loc_8c146554 bank12.loc_8c1294c8 bank14.loc_8c1463bc 0x8c26a940
loc_8c01c420:
	#data bank14.loc_8c146568

;==============================================
loc_8c01c424:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop
	mov.l @(loc_8c01c518,PC),r3
	mov 0x01,r6
	mov.b r0,@(0x4,r15)
	mov.b r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c01c4a6
	mov r0,r4
	mov 0x20,r1
	mov.l @(0xD8,PC),r3
	add r4,r1
	mov.l @(0xD8,PC),r2
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.b @(r0,r4),r5
	mov.w @(loc_8c01c512,PC),r0
	extu.b r5,r5
	mov r5,r3
	shll2 r5
	add r3,r5
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	shll2 r5
	mov.l @(0xB8,PC),r3
	add r2,r5
	mov r5,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01c528,PC),r2
	mov r4,r1
	mov.l @(0xA8,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x44,r0
	mov r4,r1
	mov 0x00,r6
	add 0x40,r1
	mov.l r6,@r1
	mov.l r6,@(r0,r4)
	mov 0x48,r0
	mov.l r6,@(r0,r4)
	mov.w @(0x80,PC),r0
	mov.l @(0x10,r5),r3
	mov.l @(0x94,PC),r1
	mov.l r3,@(r0,r4)
	mov.l @r1,r0
	mov.l @(0xC,r5),r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r3
	mov.w @(0x70,PC),r0
	mov.l r3,@(r0,r4)

loc_8c01c4a6:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01c4ae:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop
	mov.l @(loc_8c01c518,PC),r3
	mov 0x01,r6
	mov.b r0,@(0x4,r15)
	mov.b r5,@r15
	mov 0x0B,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c01c4e2
	mov r0,r4
	mov.l @(0x50,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov 0x00,r2
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c01c512,PC),r0
	mov.b r2,@(r0,r4)

loc_8c01c4e2:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01c4ea:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x3C,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01c4fe:
	rts
	nop

;==============================================
loc_8c01c502:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01c50e
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8c01c50e:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01c512:
	#data 0x012c 0x00cc 0x0084
loc_8c01c518:
	#data bank04.loc_8c044f12 loc_8c01c4ea bank14.loc_8c1463d8 bank12.loc_8c1294c8
loc_8c01c528:
	#data bank14.loc_8c1463bc 0x8c26a940 bank14.loc_8c1466e8

;==============================================
loc_8c01c534:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c01c552
	mov 0x00,r13
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c552:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01c5e4,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01c566
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c566:
	mova @(loc_8c01c5e8,PC),r0
	mov.l @(loc_8c01c5f8,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x78,PC),r0
	mov.l @(0x7C,PC),r3
	fmov @r0,fr2
	mova @(0x74,PC),r0
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
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.w @(0x4E,PC),r0
	mov.l @(0x64,PC),r2
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov fr2,@(r0,r14)
	mov 0x78,r0
	fmov fr2,@(r0,r14)
	mov.l @(0x5C,PC),r0
	mov.b @r2,r3
	mov.b @r0,r1
	cmp/eq r1,r3
	bt loc_8c01c5cc
	mov.l @(0x54,PC),r3
	mov.b @r3,r2
	mov.l @(loc_8c01c608,PC),r3
	mov r2,r1
	shll r2
	add r1,r2
	mov r14,r1
	shll2 r2
	add r3,r2
	mov.l @(0x4C,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c5cc:
	mov.l @(0x40,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c01c5da
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c5da:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01c5e4:
	#data 0x0168 0x0080
	#align4
loc_8c01c5e8:
	#data 0x3f000000 0x47800000 0x43b40000 0x0000ffff
loc_8c01c5f8:
	#data bank11.loc_8c11e2e0 0x8c1f8b58 0x8c1f8b5a 0x8c2141e5
loc_8c01c608:
	#data bank14.loc_8c14657c bank12.loc_8c1294c8 0x8c1f8b5c

;==============================================
loc_8c01c614:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c01c632
	mov 0x00,r13
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c632:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01c6f6,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01c646
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c646:
	mova @(loc_8c01c6fc,PC),r0
	mov.l @(loc_8c01c70c,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xAC,PC),r0
	mov.l @(0xB0,PC),r3
	fmov @r0,fr2
	mova @(0xA8,PC),r0
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
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.w @(0x80,PC),r0
	mov.l @(0x98,PC),r2
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov fr2,@(r0,r14)
	mov 0x78,r0
	fmov fr2,@(r0,r14)
	mov.l @(0x90,PC),r0
	mov.b @r2,r3
	mov.b @r0,r1
	cmp/eq r1,r3
	bt loc_8c01c6ac
	mov.l @(0x88,PC),r3
	mov.b @r3,r2
	mov.l @(loc_8c01c71c,PC),r3
	mov r2,r1
	shll r2
	add r1,r2
	mov r14,r1
	shll2 r2
	add r3,r2
	mov.l @(0x80,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c6ac:
	mov.l @(0x74,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c01c6ba
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c6ba:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01c6c4:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01c6d4
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8c01c6d4:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	tst 0x01,r0
	bt loc_8c01c6e6
	mova @(0x44,PC),r0
	bra loc_8c01c6e8
	fmov @r0,fr3

loc_8c01c6e6:
	fldi1 fr3

loc_8c01c6e8:
	mov.w @(0xC,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	rts
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01c6f6:
	#data 0x0168 0x0080 0x0000
loc_8c01c6fc:
	#data 0x3f000000 0x47800000 0x43b40000 0x0000ffff
loc_8c01c70c:
	#data bank11.loc_8c11e2e0 0x8c1f8b59 0x8c1f8b5b 0x8c212f19
loc_8c01c71c:
	#data bank14.loc_8c1465b8 bank12.loc_8c1294c8 0x8c1f8b5c 0x3f4ccccd

;==============================================
loc_8c01c72c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c01c75e
	mov 0x00,r13
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov.l @(loc_8c01c81c,PC),r3
	mov.w @(loc_8c01c816,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c01c75e:
	mov.l @(0xC0,PC),r5
	mov.l @(0xC0,PC),r1
	mov.b @r5,r4
	mov.b @r1,r3
	exts.b r4,r2
	cmp/eq r3,r2
	bt loc_8c01c77e
	exts.b r4,r4
	tst r4,r4
	bf loc_8c01c77a
	mov.w @(0xA2,PC),r0
	mov 0x01,r3
	bra loc_8c01c77e
	mov.b r3,@(r0,r14)

loc_8c01c77a:
	mov.w @(0x9A,PC),r0
	mov.b r13,@(r0,r14)

loc_8c01c77e:
	mov.b @r5,r3
	tst r3,r3
	bf loc_8c01c802
	mov.w @(0x1C,r14),r0
	mov 0x04,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c01c798
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c01c798:
	mov.l @(0x8C,PC),r3
	mov.w @(loc_8c01c816,PC),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @(loc_8c01c82c,PC),r1
	mov.w @(0x74,PC),r0
	mov.l @r4,r2
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(0x8C,PC),r12
	mova @(0x90,PC),r0
	mov.l @(loc_8c01c83c,PC),r13
	mov.l @(0x7C,PC),r10
	mov.l @(0x80,PC),r11
	fldi1 fr14
	bra loc_8c01c7fa
	fmov @r0,fr15

loc_8c01c7ba:
	mov r15,r5
	add 0x04,r5
	jsr @r12
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov 0x04,r1
	fmov @r15,fr2
	mov r15,r5
	shll r0
	shll2 r0
	fmov @(r0,r13),fr3
	add 0x04,r5
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1C,r14),r0
	shll r0
	shll2 r0
	add r13,r0
	fmov @(r0,r1),fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r10
	mov r15,r4

loc_8c01c7fa:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c01c7ba

loc_8c01c802:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01c816:
	#data 0x0084 0x012c 0x02c4
loc_8c01c81c:
	#data bank10.loc_8c108210 0x8c1f8b5c 0x8c1f8b5d 0x8c26a940
loc_8c01c82c:
	#data bank10.loc_8c108060 bank10.loc_8c1081e6 bank10.loc_8c108086 bank10.loc_8c108192
loc_8c01c83c:
	#data bank14.loc_8c146630 0x3c23d70a

;==============================================
loc_8c01c844:
	mova @(loc_8c01c954,PC),r0
	fmov @r0,fr4
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01c860
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01c94e,PC),r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)

loc_8c01c860:
	mov.l @(0xF8,PC),r0
	mov.l @(0xF4,PC),r3
	mov.b @r0,r1
	mov.b @r3,r5
	cmp/eq r1,r5
	bt loc_8c01c88e
	exts.b r5,r5
	tst r5,r5
	bf loc_8c01c880
	mov.w @(loc_8c01c94e,PC),r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	bra loc_8c01c88e
	fmov fr4,@(r0,r4)

loc_8c01c880:
	mov.w @(loc_8c01c94e,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)

loc_8c01c88e:
	rts
	nop

;==============================================
loc_8c01c892:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf.s loc_8c01c8a4
	mov 0x00,r6
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xAC,PC),r0
	mov.b r6,@(r0,r4)

loc_8c01c8a4:
	mov.l @(0xB4,PC),r0
	mov.l @(0xB0,PC),r3
	mov.b @r0,r1
	mov.b @r3,r5
	cmp/eq r1,r5
	bt loc_8c01c8c2
	exts.b r5,r5
	tst r5,r5
	bf loc_8c01c8bc
	mov.w @(0x96,PC),r0
	bra loc_8c01c8c2
	mov.b r6,@(r0,r4)

loc_8c01c8bc:
	mov.w @(0x90,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r4)

loc_8c01c8c2:
	rts
	nop

;==============================================
loc_8c01c8c6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c01c8e2
	mov 0x00,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)

loc_8c01c8e2:
	mov.l @(0x7C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c01c8f0
	mov.w @(0x62,PC),r0
	bra loc_8c01c8f6
	mov.b r4,@(r0,r14)

loc_8c01c8f0:
	mov.w @(0x5C,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)

loc_8c01c8f6:
	mov.w @(0x1E,r14),r0
	mov.w @(0x56,PC),r3
	add 0x12,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01c90a
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c90a:
	mov.w @(0x1E,r14),r0
	mov.l @(0x60,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c01c964,PC),r0
	mov.l @(0x54,PC),r3
	fmov @r0,fr2
	mova @(0x4C,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(loc_8c01c954,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(loc_8c01c974,PC),r0
	fmov fr0,fr3
	fmov @r0,fr2
	mova @(0x40,PC),r0
	fmov @r0,fr0
	mov.w @(loc_8c01c94e,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov fr2,@(r0,r14)
	mov 0x78,r0
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01c94e:
	#data  0x0080 0x012c 0x0168
loc_8c01c954:
	#data  0x3f000000 0x8c1f8b5c 0x8c1f8b5d 0x8c1f8b7e
loc_8c01c964:
	#data  0x47800000 0x43b40000 0x0000ffff bank11.loc_8c11e2e0
loc_8c01c974:
	#data  0x3f333333 0x3e99999a

;==============================================
loc_8c01c97c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c01c998
	mov 0x00,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)

loc_8c01c998:
	mov.l @(0xE4,PC),r0
	mov.l @(loc_8c01ca7c,PC),r2
	mov.b @r0,r1
	mov.b @r2,r3
	cmp/eq r1,r3
	bf loc_8c01c9aa
	mov.w @(loc_8c01ca76,PC),r0
	bra loc_8c01c9b0
	mov.b r4,@(r0,r14)

loc_8c01c9aa:
	mov.w @(loc_8c01ca76,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)

loc_8c01c9b0:
	mov.w @(0x1E,r14),r0
	mov.w @(0xC2,PC),r3
	add 0x12,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01c9c4
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01c9c4:
	mov.w @(0x1E,r14),r0
	mov.l @(0xCC,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(0xB4,PC),r0
	mov.l @(0xC0,PC),r3
	fmov @r0,fr2
	mova @(0xB4,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(loc_8c01ca8c,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0xAC,PC),r0
	fmov fr0,fr3
	fmov @r0,fr2
	mova @(loc_8c01ca9c,PC),r0
	fmov @r0,fr0
	mov.w @(0x82,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov fr2,@(r0,r14)
	mov 0x78,r0
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01ca08:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01ca14
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8c01ca14:
	mov.l @(0x88,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c01ca20
	bra loc_8c01ca22
	mov 0x00,r3

loc_8c01ca20:
	mov 0x01,r3

loc_8c01ca22:
	mov.w @(loc_8c01ca76,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c01ca28:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01ca34
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8c01ca34:
	mov.l @(0x6C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c01ca40
	bra loc_8c01ca42
	mov 0x00,r3

loc_8c01ca40:
	mov 0x01,r3

loc_8c01ca42:
	mov.w @(loc_8c01ca76,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c01ca48:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01ca54
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8c01ca54:
	mov.l @(0x48,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c01ca64
	mov.l @(0x44,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c01ca6c

loc_8c01ca64:
	mov.w @(loc_8c01ca76,PC),r0
	mov 0x01,r3
	bra loc_8c01ca72
	mov.b r3,@(r0,r4)

loc_8c01ca6c:
	mov.w @(loc_8c01ca76,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r4)

loc_8c01ca72:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ca76:
	#data 0x012c 0x0168 0x0080
loc_8c01ca7c:
	#data 0x8c1f8b7f 0x8c212f19 0x47800000 0x43b40000
loc_8c01ca8c:
	#data 0x3f000000 0x0000ffff bank11.loc_8c11e2e0 0x3f333333
loc_8c01ca9c:
	#data 0x3e99999a 0x8c1f8b82 0x8c1f8b83

;==============================================
loc_8c01caa8:
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
	add 0xE8,r15
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01cace
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8c01cace:
	mova @(loc_8c01cbd0,PC),r0
	mov.l @(loc_8c01cbc0,PC),r3
	mov.l @(0xF4,PC),r5
	mov 0x00,r14
	mov.b @r3,r4
	mov r5,r11
	mov.w @(loc_8c01cbba,PC),r9
	mov r4,r2
	mov.l @(0xF8,PC),r10
	mov.l @(0xE8,PC),r8
	add 0x04,r5
	mov.l @(0xDC,PC),r12
	cmp/pl r2
	mov.l r5,@(0x4,r15)
	fmov @r0,fr12
	mova @(0xE4,PC),r0
	fmov @r0,fr13
	mova @(0xE8,PC),r0
	fmov @r0,fr14
	bf.s loc_8c01cb9e
	mov.l r4,@r15

loc_8c01caf8:
	extu.b r14,r2
	mov.l @(loc_8c01cbe0,PC),r3
	lds r2,fpul
	extu.b r14,r13
	mov.b @r3,r5
	mova @(0xE0,PC),r0
	fmov fr12,fr15
	mov 0xFF,r4
	float fpul,fr3
	add r13,r5
	mul.l r9,r5
	fmov fr13,fr0
	fmov fr14,fr6
	sts macl,r5
	fmac fr0,fr3,fr15
	add r8,r5
	add 0x06,r5
	fmov fr15,fr5
	jsr @r10
	fmov @r0,fr4
	mov.l @(loc_8c01cbe0,PC),r2
	mov.l @(0xC8,PC),r1
	mov.b @r2,r3
	add r13,r3
	mul.l r9,r3
	sts macl,r3
	add r8,r3
	mov.w @(0x4,r3),r0
	mov.l @(0xB4,PC),r3
	mov.l r0,@-r15
	mov.l r3,@-r15
	mov r15,r4
	jsr @r1
	add 0x10,r4
	add 0x08,r15
	mov.l @(loc_8c01cbf0,PC),r4
	mov r15,r5
	fmov fr15,fr5
	mova @(0xAC,PC),r0
	add 0x08,r5
	fmov fr14,fr6
	jsr @r10
	fmov @r0,fr4
	mov.l @(loc_8c01cbf0,PC),r4
	mova @(0xA4,PC),r0
	mov.l @r12,r5
	fmov fr15,fr5
	fmov fr14,fr6
	jsr @r10
	fmov @r0,fr4
	mov.l @(loc_8c01cbe0,PC),r2
	mov.b @r2,r3
	add r13,r3
	mul.l r9,r3
	sts macl,r3
	add r8,r3
	mov.b @(0x2,r3),r0
	tst r0,r0
	bt loc_8c01cb7a
	extu.b r14,r3
	mov.l @r11,r5
	lds r3,fpul
	mov.w @(0x44,PC),r4
	bra loc_8c01cb86
	fmov fr14,fr6

loc_8c01cb7a:
	extu.b r14,r3
	mov.l @(0x4,r15),r5
	lds r3,fpul
	mov.l @r5,r5
	mov.w @(0x36,PC),r4
	fmov fr14,fr6

loc_8c01cb86:
	float fpul,fr3
	fmov fr13,fr0
	fmov fr12,fr5
	mova @(0x6C,PC),r0
	fmac fr0,fr3,fr5
	jsr @r10
	fmov @r0,fr4
	mov.l @r15,r2
	add 0x01,r14
	extu.b r14,r3
	cmp/ge r2,r3
	bf loc_8c01caf8

loc_8c01cb9e:
	add 0x18,r15
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
loc_8c01cbba:
	#data 0x0086 0xff0a
	#align4
loc_8c01cbc0:
	#data 0x8c2141e7 bank14.loc_8c1466cc bank14.loc_8c1466d0 0x8c213ca8
loc_8c01cbd0:
	#data 0x42c00000 0x41fc0000 bank02.loc_8c02a53a 0x41673333
loc_8c01cbe0:
	#data 0x8c1f8b7e 0x42700000 bank13.loc_8c132820 bank12.loc_8c129740
loc_8c01cbf0:
	#data 0xff0affff 0x435c0000 0x43820000 0x43950000

;==============================================
loc_8c01cc00:
	mov.l @(loc_8c01cdf4,PC),r2
	mov 0x00,r3
	sts.l pr,@-r15
	mov.b r3,@r2
	mov.l @(0x1F0,PC),r2
	mov.l @(0x1EC,PC),r1
	mov.l @(0x1F0,PC),r0
	mov.b r3,@r1
	mov.b r3,@r2
	mov.l @(loc_8c01ce04,PC),r2
	jsr @r2
	mov.b r3,@r0
	mov.l @(0x1EC,PC),r2
	mov 0x00,r0
	mov.l @(0x1EC,PC),r3
	mov.l @r2,r1
	mov.b r0,@r3
	lds.l @r15+,pr
	rts
	mov.w r0,@(0x8,r1)

;==============================================
loc_8c01cc28:
	mov.l r14,@-r15
	mov.l @(0x1D0,PC),r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @r14,r0
	mov.l @(0x1D4,PC),r13
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c01cc52
	cmp/eq 0x01,r0
	bt loc_8c01cc5e
	cmp/eq 0x03,r0
	bt loc_8c01cc5e
	cmp/eq 0x02,r0
	bt loc_8c01cc70
	cmp/eq 0x04,r0
	bt loc_8c01ccdc
	bra loc_8c01cd14
	nop

loc_8c01cc52:
	mov.b @r14,r3
	add 0x01,r3
	bsr loc_8c01cd84
	mov.b r3,@r14
	bra loc_8c01ccaa
	mov 0x00,r6

loc_8c01cc5e:
	mov.l @(0x1B0,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c01cd14
	mov.b @r14,r3
	add 0x01,r3
	bra loc_8c01cd14
	mov.b r3,@r14

loc_8c01cc70:
	mov.l @(loc_8c01ce14,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bt loc_8c01cc8a
	mov.l @(0x17C,PC),r2
	mov 0x03,r1
	mov 0x00,r3
	mov.b r1,@r14
	mov 0x02,r1
	mov.b r3,@r2
	bra loc_8c01cca8
	mov.b r1,@r13

loc_8c01cc8a:
	mov.l @(0x18C,PC),r3
	mov.l @(0x178,PC),r12
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c01ccbc
	mov 0x03,r3
	mov.l @(0x15C,PC),r1
	mov.b r3,@r14
	mov 0x00,r2
	mov.b r2,@r1
	mov.l @r12,r3
	mov.w @(0x8,r3),r0
	mov r0,r2
	mov.b r2,@r13

loc_8c01cca8:
	mov 0x01,r6

loc_8c01ccaa:
	lds.l @r15+,pr
	mov.l @(0x170,PC),r3
	mov 0x0A,r5
	mov.l @(0x168,PC),r4
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c01ccbc:
	mov.l @r12,r2
	mov.l @r12,r8
	mov.w @(0x8,r2),r0
	mov.l @(loc_8c01ce24,PC),r3
	add 0x08,r8
	mov.l r0,@-r15
	mov r0,r5
	jsr @r3
	mov 0x03,r4
	mov.l @(0x158,PC),r2
	mov r0,r4
	mov.l @r15+,r5
	jsr @r2
	mov 0x02,r6
	bra loc_8c01cd14
	mov.w r0,@r8

loc_8c01ccdc:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c01ccf0
	cmp/eq 0x01,r0
	bt loc_8c01ccfc
	cmp/eq 0x02,r0
	bt loc_8c01cd08
	bra loc_8c01cd14
	nop

loc_8c01ccf0:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c01cd20
	mov.l @r15+,r14

loc_8c01ccfc:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c01cd28
	mov.l @r15+,r14

loc_8c01cd08:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c01cd52
	mov.l @r15+,r14

loc_8c01cd14:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c01cd20:
	mov.l @(0x108,PC),r2
	mov 0x80,r3
	rts
	mov.b r3,@r2

loc_8c01cd28:
	mov.l @(0xCC,PC),r4
	sts.l pr,@-r15
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c01cd3c
	cmp/eq 0x01,r0
	bt loc_8c01cd46
	bra loc_8c01cd4c
	nop

loc_8c01cd3c:
	mov.b @r4,r3
	mov.l @(0xF0,PC),r2
	add 0x01,r3
	jsr @r2
	mov.b r3,@r4

loc_8c01cd46:
	mov.l @(loc_8c01ce34,PC),r1
	jmp @r1
	lds.l @r15+,pr

loc_8c01cd4c:
	lds.l @r15+,pr
	rts
	nop

loc_8c01cd52:
	mov.l @(0xE4,PC),r2
	jmp @r2
	nop

loc_8c01cd58:
	mov.l @(loc_8c01cdf4,PC),r1
	mov 0x00,r2
	mov.l @(0x98,PC),r3
	mov.l @(0x9C,PC),r0
	sts.l pr,@-r15
	mov.b r2,@r1
	mov.b r2,@r3
	mov.l @(0x98,PC),r3
	mov.l @(loc_8c01ce04,PC),r1
	mov.b r2,@r0
	jsr @r1
	mov.b r2,@r3
	mov.l @(0x98,PC),r2
	mov.l @(0x94,PC),r1
	lds.l @r15+,pr
	mov.b @r2,r3
	mov.l @r1,r0
	mov 0x08,r1
	extu.b r3,r3
	add r0,r1
	rts
	mov.w r3,@r1

loc_8c01cd84:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r12
	mov.l @(0xA4,PC),r11
	bra loc_8c01cdc0
	add r12,r13

loc_8c01cd9a:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c01cdbc
	mov r0,r4
	mov 0x20,r0
	mov r13,r5
	mov 0x21,r1
	mov.l @(loc_8c01ce44,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.b @r13,r2
	mov.b r2,@(r0,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@r1

loc_8c01cdbc:
	add 0x02,r13
	add 0x01,r14
	
loc_8c01cdc0:
	mov r14,r3
	shll r3
	add r12,r3
	mov.b @r3,r2
	cmp/pl r2
	bt loc_8c01cd9a
	lds.l @r15+,pr
	mov.l @(0x78,PC),r2
	mov 0x02,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c01cddc:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x64,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8c01cdf0:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01cdf4:
	#data 0x8c1f8b8b 0x8c1f8b8a 0x8c1f8b89 0x8c1f8b88
loc_8c01ce04:
	#data bank04.loc_8c044d8c work.GameGlobalPointer 0x8c1f8b8c bank03.loc_8c03563a
loc_8c01ce14:
	#data loc_8c011bbc loc_8c011a9a 0xff000000 bank03.loc_8c0355b2
loc_8c01ce24:
	#data loc_8c01357a loc_8c013572 0x8c212f1b loc_8c01d070
loc_8c01ce34:
	#data loc_8c01d0dc loc_8c01656e bank04.loc_8c044f12 bank14.loc_8c146870
loc_8c01ce44:
	#data loc_8c01cddc loc_8c01b276 bank14.loc_8c146890

;==============================================
loc_8c01ce50:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01cefe
	mov 0x21,r0
	mov.l @(loc_8c01cf0c,PC),r2
	mov.b @(r0,r4),r5
	mov r4,r1
	mov.b @(0x4,r4),r0
	add 0x34,r1
	extu.b r5,r5
	mov r5,r3
	shll r5
	add r3,r5
	add 0x01,r0
	shll2 r5
	mov.b r0,@(0x4,r4)
	add r2,r5
	mov.w @(loc_8c01cf04,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @r5,r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x88,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x88,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x1,r5),r0
	mov r4,r2
	mov.l @(0x80,PC),r6
	add 0x40,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov.l @(r0,r6),r1
	mov.l r1,@r2
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r6,r0
	mov.l @(0x4,r0),r2
	mov 0x44,r0
	mov.l r2,@(r0,r4)
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r6
	mov.l @(0x8,r6),r2
	mov 0x48,r0
	mov.l r2,@(r0,r4)
	mov.b @(0x2,r5),r0
	extu.b r0,r0
	mov.l @(loc_8c01cf1c,PC),r2
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0x38,PC),r3
	shll2 r0
	mov r4,r1
	add 0x50,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1A,PC),r0
	mov.l @(0x8,r5),r2
	mov.l @(0x30,PC),r3
	mov.l r2,@(r0,r4)
	mov.l @r3,r0
	mov.l @(0x4,r5),r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r1
	mov.w @(0xA,PC),r0
	mov.l r1,@(r0,r4)

loc_8c01cefe:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01cf04:
	#data 0x012c 0x00cc 0x0084
	#align4
loc_8c01cf0c:
	#data bank14.loc_8c146720 bank14.loc_8c1467b0 bank12.loc_8c1294c8 bank14.loc_8c146834
loc_8c01cf1c:
	#data bank14.loc_8c146840 0x8c26a940

;==============================================
loc_8c01cf24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.l @(loc_8c01d048,PC),r13
	tst r0,r0
	bf.s loc_8c01cf7c
	mov 0x00,r12
	mov.b @(0x4,r14),r0
	mov 0x01,r3
	mov 0x21,r2
	mov r14,r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add 0x50,r1
	mov.w @(loc_8c01d03e,PC),r0
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.l r2,@(r0,r14)
	mov.l @(0xFC,PC),r3
	mov.l @(0xF8,PC),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xF8,PC),r0
	mov.l @r0,r1
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @r1,r2
	extu.b r3,r3
	mov.w @(0xD8,PC),r0
	shll2 r3
	add r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0xD2,PC),r0
	mov.l r3,@(r0,r14)
	mov r12,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov.l @r13,r0
	mov.b @(0x8,r0),r0
	mov.b r0,@(0x5,r14)

loc_8c01cf7c:
	mov.w @(0x1E,r14),r0
	mov.w @(0xC2,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01cf90
	mov r12,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01cf90:
	mova @(loc_8c01d058,PC),r0
	mov.l @(loc_8c01d068,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xBC,PC),r0
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
	fmov fr2,@(r0,r14)
	mov.b @(0x5,r14),r0
	mov.l @r13,r3
	extu.b r0,r2
	mov.w @(0x8,r3),r0
	cmp/eq r0,r2
	bt loc_8c01cfda
	mov.l @r13,r0
	mov.b @(0x8,r0),r0
	mov.b r0,@(0x5,r14)
	mov r12,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01cfda:
	mov 0x21,r0
	mov.l @r13,r1
	mov.b @(r0,r14),r2
	mov.w @(0x8,r1),r0
	extu.b r2,r2
	mov.l @(0x84,PC),r1
	mov r2,r3
	shll2 r2
	shll r2
	add r3,r2
	mov r0,r3
	shll r0
	shll2 r2
	add r1,r2
	mov r14,r1
	add r3,r0
	mov.l @(0x54,PC),r3
	shll2 r0
	add 0x34,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c01d012:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01d024
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01d03e,PC),r0
	mov.b r3,@(r0,r4)

loc_8c01d024:
	mov.l @(loc_8c01d048,PC),r0
	mov.l @(0x2C,PC),r1
	mov.l @r0,r3
	mov.l @r1,r2
	mov.w @(0x8,r3),r0
	mov.l @r2,r3
	mov.w @(0x12,PC),r2
	shll2 r0
	add r3,r0
	mov.l @(r0,r2),r2
	mov.w @(0x6,PC),r0
	rts
	mov.l r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01d03e:
	#data 0x012c 0x035c 0x0084 0x0168 0x036c
	#align4
loc_8c01d048:
	#data work.GameGlobalPointer bank14.loc_8c146840 bank12.loc_8c1294c8 0x8c26a940
loc_8c01d058:
	#data 0x3f000000 0x47800000 0x43b40000 0x0000ffff
loc_8c01d068:
	#data bank11.loc_8c11e2e0 bank14.loc_8c1468a0

;==============================================
loc_8c01d070:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c01d1f0,PC),r3
	mov 0x00,r14
	mov.l @(0x17C,PC),r1
	mov.l @(0x174,PC),r2
	mov.b r14,@r3
	mov.l @(0x178,PC),r3
	mov.b r14,@r2
	mov.b r14,@r1
	jsr @r3
	mov r15,r4
	mov.l @(0x178,PC),r1
	mov.l @(loc_8c01d200,PC),r3
	mov.w @r15,r2
	mov.w r2,@r3
	mov.w r2,@r1
	mov.l @(0x174,PC),r2
	mov.l @(0x170,PC),r3
	mov.b @(0x2,r15),r0
	mov.l @(0x178,PC),r1
	mov.b r0,@r3
	mov.b r0,@r2
	mov.b @(0x3,r15),r0
	mov.l @(loc_8c01d210,PC),r3
	mov.b r0,@r3
	mov.b r0,@r1
	mov.l @(0x170,PC),r1
	mov.l @(loc_8c01d220,PC),r0
	mov.l @(0x168,PC),r3
	mov.b r14,@r3
	mov.l @r1,r2
	mov.l @(0x174,PC),r1
	mov.l r2,@r0
	mov.l @(0x16C,PC),r2
	mov.l @r2,r3
	mov.l @(loc_8c01d230,PC),r2
	mov.l r3,@r1
	mov.l @(0x16C,PC),r3
	mov.l @r3,r0
	mov.l r0,@r2
	mov.l @(0x154,PC),r0
	mov.l @r0,r1
	mov.l r1,@-r15
	mov.l @(0x170,PC),r2
	mov.l @(0x168,PC),r4
	mov.l @(0x164,PC),r3
	jsr @r2
	mov.l r3,@-r15
	add 0x14,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c01d0dc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8c01d240,PC),r4
	mov 0x04,r2
	mov.l @(loc_8c01d1f0,PC),r14
	mov 0x04,r3
	mov r4,r6
	add 0x14,r6
	mov.b @r14,r0
	mov r4,r5
	add r5,r3
	mov.l @(0x134,PC),r12
	add r6,r2
	mov.l @(0x144,PC),r13
	extu.b r0,r0
	mov.w @r2,r2
	mov.w @r3,r3
	cmp/eq 0x00,r0
	mov.l @(0x134,PC),r8
	mov.l @(0x134,PC),r10
	mov.l @(loc_8c01d220,PC),r9
	bt.s loc_8c01d148
	mov 0x00,r11
	cmp/eq 0x01,r0
	bt loc_8c01d16a
	cmp/eq 0x06,r0
	bt loc_8c01d16a
	cmp/eq 0x02,r0
	bt loc_8c01d180
	cmp/eq 0x03,r0
	bf loc_8c01d12c
	bra loc_8c01d26c
	nop

loc_8c01d12c:
	cmp/eq 0x04,r0
	bf loc_8c01d134
	bra loc_8c01d2ec
	nop

loc_8c01d134:
	cmp/eq 0x07,r0
	bf loc_8c01d13c
	bra loc_8c01d374
	nop

loc_8c01d13c:
	cmp/eq 0x08,r0
	bf loc_8c01d144
	bra loc_8c01d3ac
	nop

loc_8c01d144:
	bra loc_8c01d3d0
	nop

loc_8c01d148:
	mov.b @r14,r3
	mov.l @(loc_8c01d250,PC),r2
	add 0x01,r3
	mov.b r3,@r14
	jsr @r2
	mov 0x0B,r4
	mov.l @r13,r3
	mov r11,r0
	nop
	mov.w r0,@(0x8,r3)
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x02,r4
	bsr loc_8c01d3e4
	nop
	bra loc_8c01d1bc
	mov 0x00,r6
	

loc_8c01d16a:
	mov.l @(0xEC,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c01d178
	bra loc_8c01d3d0
	nop

loc_8c01d178:
	mov.b @r14,r3
	add 0x01,r3
	bra loc_8c01d3d0
	mov.b r3,@r14

loc_8c01d180:
	mov.l @(0x70,PC),r12
	jsr @r10
	nop
	tst r0,r0
	bt loc_8c01d1a6
	mov.b @r12,r2
	tst r2,r2
	bt loc_8c01d1a0
	mov 0x06,r3
	mov.b r3,@r14
	mov.l @r13,r0
	mov.l @(0x80,PC),r3
	mov.b @(0x8,r0),r0
	xor 0x01,r0
	bra loc_8c01d1b2
	mov.b r0,@r3

loc_8c01d1a0:
	mov.b @r14,r2
	bra loc_8c01d2ae
	add 0x01,r2

loc_8c01d1a6:
	jsr @r8
	nop
	tst r0,r0
	bt loc_8c01d1c8
	mov 0x06,r3
	mov.b r3,@r14

loc_8c01d1b2:
	mov.l @r13,r2
	mov r11,r0
	nop
	mov 0x01,r6
	mov.w r0,@(0x8,r2)

loc_8c01d1bc:
	mov.l @(loc_8c01d260,PC),r3
	mov.l @(0x9C,PC),r4
	jsr @r3
	mov 0x0A,r5
	bra loc_8c01d3d0
	nop

loc_8c01d1c8:
	mov.b @r12,r5
	mov.l @(0x98,PC),r3
	extu.b r5,r5
	mov.l r5,@-r15
	jsr @r3
	mov 0x03,r4
	mov.l @(0x90,PC),r2
	mov r0,r4
	mov.l @r15+,r5
	jsr @r2
	mov 0x01,r6
	mov.b r0,@r12
	mov.b @r12,r3
	tst r3,r3
	bt loc_8c01d1ea
	bra loc_8c01d32c
	nop

loc_8c01d1ea:
	bra loc_8c01d320
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01d1f0:
	#data 0x8c1f8b90 0x8c1f8b91 0x8c1f8b92 bank17.loc_8c1780b2
loc_8c01d200:
	#data 0x8c1f8b94 0x8c1f8b98 0x8c1f8b96 0x8c1f8b9a
loc_8c01d210:
	#data 0x8c1f8b97 0x8c1f8b9b 0x8c1f8bbc 0x8c213b00
loc_8c01d220:
	#data 0x8c1f8b9c 0x8c213af8 0x8c1f8ba0 0x8c213afc
loc_8c01d230:
	#data 0x8c1f8ba4 bank13.loc_8c1328ec 0x8c21527e bank12.loc_8c129740
loc_8c01d240:
	#data 0x8c2681dc loc_8c011c58 loc_8c011b14 work.GameGlobalPointer
loc_8c01d250:
	#data bank04.loc_8c044e56 loc_8c01b276 bank03.loc_8c03563a 0xff000000
loc_8c01d260:
	#data bank03.loc_8c0355b2 loc_8c0135b2 loc_8c013572

;==============================================
loc_8c01d26c:
	mov.l @(loc_8c01d354,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c01d2b2
	jsr @r10
	nop
	tst r0,r0
	bt loc_8c01d2a0
	mov.w @(loc_8c01d352,PC),r0
	mov 0x01,r4
	mov.l @(loc_8c01d354,PC),r2
	mov 0x07,r3
	mov.b r4,@r2
	mov.w r3,@r15
	mov.w r0,@(0x2,r15)
	add 0x10,r0
	mov.w r0,@(0x4,r15)
	mov.l r12,@(0x8,r15)
	mov r4,r0
	nop
	mov.l @(loc_8c01d358,PC),r3
	mov.b r0,@(0xC,r15)
	jsr @r3
	mov r15,r4
	bra loc_8c01d3d0
	nop

loc_8c01d2a0:
	jsr @r8
	nop
	tst r0,r0
	bf loc_8c01d2ac
	bra loc_8c01d3d0
	nop

loc_8c01d2ac:
	mov 0x02,r2

loc_8c01d2ae:
	bra loc_8c01d320
	mov.b r2,@r14

loc_8c01d2b2:
	mov.l @(loc_8c01d35c,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bf loc_8c01d2c0
	bra loc_8c01d3d0
	nop

loc_8c01d2c0:
	mov 0x04,r1
	mov.b r1,@r14
	mov.l @r13,r3
	mov r11,r0
	nop
	mov.w r0,@(0x8,r3)
	mov.l @(loc_8c01d360,PC),r3
	jsr @r3
	mov r12,r4
	cmp/pz r0
	bt.s loc_8c01d2da
	mov.l r0,@r9
	mov.l r11,@r9

loc_8c01d2da:
	mov.l @r9,r3
	mov.l @(loc_8c01d364,PC),r2
	mov.l r3,@-r15
	mov.l @(loc_8c01d368,PC),r3
	mov.l r2,@-r15
	jsr @r3
	mov r12,r4
	bra loc_8c01d3d0
	add 0x08,r15

loc_8c01d2ec:
	jsr @r10
	nop
	tst r0,r0
	bt loc_8c01d314
	mov 0x02,r2
	mov.b r2,@r14
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bt loc_8c01d320
	mov.l @(loc_8c01d364,PC),r2
	mov 0x00,r3
	mov.l @(loc_8c01d368,PC),r1
	mov.l r11,@r9
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r1
	mov r12,r4
	bra loc_8c01d320
	add 0x08,r15

loc_8c01d314:
	jsr @r8
	nop
	tst r0,r0
	bt loc_8c01d32c
	mov 0x03,r2
	mov.b r2,@r14

loc_8c01d320:
	mov.l @r13,r3
	mov r11,r0
	nop
	mov.w r0,@(0x8,r3)
	bra loc_8c01d3d0
	nop

loc_8c01d32c:
	mov.l @r13,r2
	mov 0x08,r3
	add r2,r3
	mov.l r3,@-r15
	mov.l @r13,r3
	mov.w @(0x8,r3),r0
	mov.l @(loc_8c01d36c,PC),r3
	mov.l r0,@-r15
	mov r0,r5
	jsr @r3
	mov 0x03,r4
	mov.l @(loc_8c01d370,PC),r2
	mov r0,r4
	mov.l @r15+,r5
	jsr @r2
	mov 0x01,r6
	mov.l @r15+,r1
	bra loc_8c01d3d0
	mov.w r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01d352:
	#data 0x0082
	#align4
loc_8c01d354:
	#data 0x8c1f8b92
loc_8c01d358:
	#data bank02.loc_8c02b00c
loc_8c01d35c:
	#data bank02.loc_8c02b332
loc_8c01d360:
	#data loc_8c01fec0
loc_8c01d364:
	#data bank13.loc_8c1328ec
loc_8c01d368:
	#data bank12.loc_8c129740
loc_8c01d36c:
	#data loc_8c0135b2
loc_8c01d370:
	#data loc_8c0134d6

;==============================================
loc_8c01d374:
	mov.l @(loc_8c01d450,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c01d3c0
	mov.b @r14,r2
	mov.l @(0xD4,PC),r1
	add 0x01,r2
	jsr @r1
	mov.b r2,@r14
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov r12,r4
	mov.l @(0xCC,PC),r2
	mov r12,r5
	mov.w @(loc_8c01d44c,PC),r3
	mov.l r0,@r2
	mov.l @(loc_8c01d460,PC),r4
	mov.l @(0xCC,PC),r2
	jsr @r2
	add r3,r4
	mov.w @(loc_8c01d44c,PC),r3
	mov r12,r5
	mov.l @(0xC0,PC),r2
	mov.l @(0xC4,PC),r4
	jsr @r2
	add r3,r4
	bra loc_8c01d3d0
	nop

loc_8c01d3ac:
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov 0x03,r4
	cmp/eq 0x02,r0
	bt.s loc_8c01d3d0
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c01d3ca

loc_8c01d3c0:
	mov.l @(loc_8c01d470,PC),r2
	jsr @r2
	nop
	bra loc_8c01d3d0
	nop

loc_8c01d3ca:
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c01d3d0:
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
loc_8c01d3e4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0x5E,PC),r13
	mov.l @(0x8C,PC),r12
	mov.l @(0x84,PC),r14
	bra loc_8c01d416
	nop

loc_8c01d3f6:
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
	bsr loc_8c01d428
	extu.b r4,r4
	add 0x04,r14

loc_8c01d416:
	mov.b @r14,r2
	extu.b r2,r2
	cmp/eq r13,r2
	bf loc_8c01d3f6
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01d428:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8c01d480,PC),r3
	mov.l r4,@(0xC,r15)
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@r15
	mov 0x00,r6
	mov.l r7,@(0x4,r15)
	jsr @r3
	mov r6,r4
	tst r0,r0
	bf.s loc_8c01d484
	mov r0,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01d44c:
	#data 0x0216 0x00ff
	#align4
loc_8c01d450:
	#data 0x8c1f8bbc bank11.loc_8c11a858 loc_8c01fec0 0x8c213b00
loc_8c01d460:
	#data 0x8c214c16 bank12.loc_8c1297b0 0x8c214e3f bank11.loc_8c11a894
loc_8c01d470:
	#data loc_8c01cd58 loc_8c0164cc bank14.loc_8c146944 bank14.loc_8c146984
loc_8c01d480:
	#data bank04.loc_8c044f12

;==============================================
loc_8c01d484:
	mov.w @(loc_8c01d592,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c01d59c,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(0x110,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l @r3,r0
	mov.l @r15,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(0x108,PC),r3
	mov.l @(r0,r2),r2
	mov.w @(0xF4,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x23,r0
	mov.l @r15,r1
	mov.b r1,@(r0,r4)
	mov 0x20,r0
	mov.l @(0xC,r15),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x8,r15),r1
	mov.b r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x4,r15),r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xE8,PC),r2
	mov r4,r1
	mov.l @(0xE0,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01d5ac,PC),r2
	mov r4,r1
	mov.l @(0xE0,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.w @(0xC0,PC),r0
	mov.w @(0xBC,PC),r1
	mov.l r1,@(r0,r4)
	mov r4,r0
	nop
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01d4e6:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0xC4,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01d4fa:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x21,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c01d518
	bra loc_8c01d614
	nop

loc_8c01d518:
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c01d52a
	mov 0x00,r4
	cmp/eq 0x01,r0
	bt loc_8c01d544
	bra loc_8c01d614
	nop

loc_8c01d52a:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov.l @(0x7C,PC),r3
	mov.w @(0x56,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	bra loc_8c01d614
	nop

loc_8c01d544:
	mov.w @(0x1C,r14),r0
	mov.w @(0x50,PC),r5
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c01d558
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c01d558:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c01d56a
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01d56a:
	mov.w @(0x26,PC),r0
	mov.l @(0x30,PC),r3
	mov.l @(r0,r14),r5
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(loc_8c01d5bc,PC),r2
	jsr @r2
	mov.l @(0x4,r4),r4
	mov.l @(0x40,PC),r13
	mova @(loc_8c01d5cc,PC),r0
	mov.l @(0x38,PC),r12
	mov.l @(0x34,PC),r11
	fldi1 fr14
	bra loc_8c01d60c
	fmov @r0,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01d592:
	#data 0x012c 0x0084 0x0431 0x00cc 0x03e8
loc_8c01d59c:
	#data loc_8c01d4e6 0x8c26a940 bank12.loc_8c1294c8 bank14.loc_8c1468f4
loc_8c01d5ac:
	#data bank14.loc_8c146934 bank12.loc_8c1294bc bank14.loc_8c146acc bank10.loc_8c108210
loc_8c01d5bc:
	#data bank10.loc_8c108060 bank10.loc_8c108086 bank10.loc_8c1081e6 bank10.loc_8c108192
loc_8c01d5cc:
	#data 0x3a83126f

;==============================================
loc_8c01d5d0:
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

loc_8c01d60c:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c01d5d0

loc_8c01d614:
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
loc_8c01d626:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov 0x21,r0
	mov r4,r14
	mov.b @(r0,r14),r0
	mov r15,r13
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x40,r0
	bf.s loc_8c01d692
	add 0x04,r13
	mov 0x21,r0
	mov.w @(loc_8c01d6d4,PC),r3
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r3,r0
	cmp/eq 0x00,r0
	mov.l r0,@r15
	bt loc_8c01d65c
	cmp/eq 0x01,r0
	bt loc_8c01d662
	cmp/eq 0x02,r0
	bt loc_8c01d668
	bra loc_8c01d66c
	nop

loc_8c01d65c:
	mov.l @(loc_8c01d6d8,PC),r2
	bra loc_8c01d66c
	mov.l @r2,r4

loc_8c01d662:
	mov.l @(0x78,PC),r0
	bra loc_8c01d66c
	mov.l @r0,r4

loc_8c01d668:
	mov.l @(0x74,PC),r1
	mov.l @r1,r4

loc_8c01d66c:
	mov.l @(0x74,PC),r5
	cmp/gt r5,r4
	bf loc_8c01d674
	mov r5,r4

loc_8c01d674:
	mov.l @(loc_8c01d6e8,PC),r2
	jsr @r2
	mov r13,r5
	mova @(0x70,PC),r0
	mov.l @r15,r3
	fmov @r0,fr6
	mov r13,r5
	mov.l @(0x6C,PC),r0
	shll2 r3
	mov 0xFF,r4
	fmov @(r0,r3),fr5
	mova @(0x68,PC),r0
	mov.l @(loc_8c01d6f8,PC),r3
	jsr @r3
	fmov @r0,fr4

loc_8c01d692:
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x20,r0
	bf loc_8c01d740
	mov 0x21,r0
	mov.w @(loc_8c01d6d4,PC),r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r3,r2
	bf loc_8c01d710
	mov.l @(0x50,PC),r1
	mov.b @r1,r2
	extu.b r2,r2
	mov.l r2,@-r15
	mov.l @(0x4C,PC),r2
	mov.b @r2,r3
	mov.l @(loc_8c01d708,PC),r2
	extu.b r3,r3
	mov.l r3,@-r15
	mov.l @(0x44,PC),r3
	mov.w @r3,r0
	mov.l @(0x48,PC),r3
	extu.w r0,r0
	mov.l r0,@-r15
	mov.l r2,@-r15
	jsr @r3
	mov r13,r4
	mov 0x1D,r6
	mov.l r13,@-r15
	bra loc_8c01d738
	mov 0x12,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01d6d4:
	#data 0xff0f 0x0000
loc_8c01d6d8:
	#data 0x8c1f8b9c 0x8c1f8ba0 0x8c1f8ba4 0x0098967f
loc_8c01d6e8:
	#data loc_8c01fe1c 0x41380000 bank14.loc_8c146ac0 0x43930000
loc_8c01d6f8:
	#data bank02.loc_8c02a53a 0x8c1f8b97 0x8c1f8b96 0x8c1f8b94
loc_8c01d708:
	#data bank13.loc_8c1328f0 bank12.loc_8c129740 

;==============================================
loc_8c01d710:
	mov.l @(loc_8c01d7fc,PC),r1
	mov.b @r1,r2
	extu.b r2,r2
	mov.l r2,@-r15
	mov.l @(0xE4,PC),r2
	mov.b @r2,r3
	mov.l @(0xE8,PC),r2
	extu.b r3,r3
	mov.l r3,@-r15
	mov.l @(0xE0,PC),r3
	mov.w @r3,r0
	mov.l @(loc_8c01d80c,PC),r3
	extu.w r0,r0
	mov.l r0,@-r15
	mov.l r2,@-r15
	jsr @r3
	mov r13,r4
	mov 0x1A,r5
	mov.l r13,@-r15
	mov 0x1D,r6

loc_8c01d738:
	mov.l @(0xD4,PC),r2
	jsr @r2
	mov 0x73,r4
	add 0x14,r15

loc_8c01d740:
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x30,r0
	bf loc_8c01d756
	mov.l @(0xC8,PC),r2
	mov r14,r1
	mov.l @(0xC8,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8c01d756:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01d760:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r14,r2
	mov.l r12,@-r15
	mov r14,r1
	fmov fr15,@-r15
	mov 0x00,r12
	mov.w @(loc_8c01d7f8,PC),r0
	add 0x34,r2
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r3
	add 0x5C,r1
	mov.b r12,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1E,r14),r0
	mov.w @(0x74,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01d794
	mov r12,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01d794:
	mova @(loc_8c01d81c,PC),r0
	mov.l @(loc_8c01d82c,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x7C,PC),r0
	mov.l @(0x84,PC),r3
	fmov @r0,fr2
	mova @(0x7C,PC),r0
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
	mov 0x01,r5
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.l @(0x70,PC),r2
	mov.l @(0x68,PC),r3
	mov.l @(0x64,PC),r6
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	mov.b @r2,r13
	extu.b r0,r0
	mov.b @r3,r4
	cmp/eq 0x00,r0
	bt.s loc_8c01d7ee
	extu.b r13,r13
	cmp/eq 0x01,r0
	bt loc_8c01d83c
	cmp/eq 0x02,r0
	bt loc_8c01d886
	cmp/eq 0x03,r0
	bt loc_8c01d8b6
	bra loc_8c01d8c0
	nop

loc_8c01d7ee:
	extu.b r4,r4
	tst r4,r4
	bt loc_8c01d8bc
	bra loc_8c01d8c0
	nop

;==============================================
loc_8c01d7f8:
	#data 0x012c 0x0168
loc_8c01d7fc:
	#data 0x8c1f8b9b 0x8c1f8b9a 0x8c1f8b98 bank13.loc_8c1328f0
loc_8c01d80c:
	#data bank12.loc_8c129740 bank03.loc_8c0395c6 bank14.loc_8c14690c bank12.loc_8c1294c8
loc_8c01d81c:
	#data 0x3f000000 0x47800000 0x43b40000 0x0000ffff
loc_8c01d82c:
	#data bank11.loc_8c11e2e0 work.GameGlobalPointer 0x8c1f8b91 0x8c1f8b90

;==============================================
loc_8c01d83c:
	mov 0x03,r1
	cmp/ge r1,r13
	bf loc_8c01d8c0
	mov 0x04,r0
	cmp/gt r0,r13
	bt loc_8c01d8c0
	mov.l @r6,r4
	mov.w @(0x8,r4),r0
	mov r0,r4
	mov.w @(loc_8c01d8f2,PC),r0
	add r13,r4
	mov.b r5,@(r0,r14)
	add 0xFD,r4
	mov.l @(loc_8c01d8f4,PC),r0
	mov r4,r3
	shll2 r3
	fmov @(r0,r3),fr3
	tst r4,r4
	mov 0x34,r0
	bt.s loc_8c01d876
	fmov fr3,@(r0,r14)
	mov.l @(0x90,PC),r2
	mov r14,r1
	mov.l @(0x90,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	bra loc_8c01d8c0
	nop

loc_8c01d876:
	mov.l @(0x88,PC),r2
	mov r14,r1
	mov.l @(0x80,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	bra loc_8c01d8c0
	nop

loc_8c01d886:
	mov r13,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c01d8c0
	extu.b r4,r4
	tst r4,r4
	bt loc_8c01d8c0
	mov.w @(loc_8c01d8f2,PC),r0
	mov.l @(loc_8c01d904,PC),r1
	mov.b r5,@(r0,r14)
	mov.l @r6,r3
	mov.l @(0x68,PC),r2
	mov.w @(0x8,r3),r0
	mov.l @(0x58,PC),r3
	shll2 r0
	fmov @(r0,r1),fr3
	mov r14,r1
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	bra loc_8c01d8c0
	nop


loc_8c01d8b6:
	extu.b r4,r4
	tst r4,r4
	bt loc_8c01d8c0

loc_8c01d8bc:
	mov.w @(loc_8c01d8f2,PC),r0
	mov.b r5,@(r0,r14)

loc_8c01d8c0:
	mov.w @(loc_8c01d8f2,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c01d8e0
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bf loc_8c01d8e0
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bt loc_8c01d8e6

loc_8c01d8e0:
	mov r12,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01d8e6:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01d8f2:
	#data 0x012c
loc_8c01d8f4:
	#data bank14.loc_8c146aa4 bank14.loc_8c146900 bank12.loc_8c1294c8 bank14.loc_8c14690c
loc_8c01d904:
	#data bank14.loc_8c146ab0 bank14.loc_8c146918

;==============================================
loc_8c01d90c:
	sts.l pr,@-r15
	mov.w @(loc_8c01d9fe,PC),r5
	bsr loc_8c01d982
	mov 0x00,r4
	mov.w @(0xE8,PC),r5
	bsr loc_8c01d982
	mov 0x01,r4
	mov.w @(0xE4,PC),r5
	bsr loc_8c01d982
	mov 0x02,r4
	mov.w @(0xE0,PC),r5
	bsr loc_8c01d982
	mov 0x03,r4
	mov.w @(loc_8c01da06,PC),r5
	bsr loc_8c01d982
	mov 0x04,r4
	mov.w @(0xD8,PC),r5
	bsr loc_8c01d982
	mov 0x05,r4
	mov.w @(0xD4,PC),r5
	bsr loc_8c01d982
	mov 0x06,r4
	mov.w @(0xD0,PC),r5
	bsr loc_8c01d982
	mov 0x07,r4
	mov.w @(loc_8c01da0e,PC),r5
	bsr loc_8c01d982
	mov 0x08,r4
	mov.w @(loc_8c01da0e,PC),r5
	bsr loc_8c01d982
	mov 0x09,r4
	mov.w @(0xC2,PC),r5
	bsr loc_8c01d982
	mov 0x0A,r4
	mov.w @(0xBC,PC),r5
	bsr loc_8c01d982
	mov 0x0B,r4
	mov.w @(0xB8,PC),r5
	bsr loc_8c01d982
	mov 0x0C,r4
	mov.w @(0xB4,PC),r5
	bsr loc_8c01d982
	mov 0x0D,r4
	mov.w @(loc_8c01da16,PC),r5
	bsr loc_8c01d982
	mov 0x0E,r4
	mov.w @(0xAC,PC),r5
	bsr loc_8c01d982
	mov 0x0F,r4
	mov.w @(0xA8,PC),r5
	bsr loc_8c01d982
	mov 0x10,r4
	mov.w @(0xA4,PC),r5
	bsr loc_8c01d982
	mov 0x11,r4
	mov.l @(loc_8c01da24,PC),r3
	mov 0x05,r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c01d982:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.b r4,@r15
	mov r5,r0
	nop
	mov.l @(0x98,PC),r3
	mov 0x0B,r5
	mov.w r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01d9e4
	mov r0,r4
	mov.w @(loc_8c01da1e,PC),r0
	mov 0x00,r3
	mov.l @(0x88,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(0x88,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l @r3,r0
	fldi1 fr4
	mov.l @r0,r2
	mov.w @(0x4,r15),r0
	extu.w r0,r0
	shll2 r0
	mov.l @(r0,r2),r1
	mov.w @(0x64,PC),r0
	mov.w @(0x64,PC),r2
	mov.l r1,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x23,r0
	mov.b @r15,r1
	mov.b r1,@(r0,r4)
	mov 0x74,r0
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c01d9e4:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8c01d9ec:
	mov r4,r3
	mov.l @(loc_8c01da34,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01d9fe:
	#data 0x00a4 0x00a5 0x00a6 0x00a8
loc_8c01da06:
	#data 0x00b3 0x00f2 0x00f3 0x00f4
loc_8c01da0e:
	#data 0x00f5 0x00f6 0x00f7 0x010d
loc_8c01da16:
	#data 0x010c 0x00b2 0x00af 0x0109
loc_8c01da1e:
	#data 0x012c 0x0084 0x0431
	#align4
loc_8c01da24:
	#data loc_8c01b276 bank04.loc_8c044f12 loc_8c01d9ec 0x8c26a940
loc_8c01da34:
	#data bank14.loc_8c146ad8

;==============================================
loc_8c01da38:
	mov.w @(loc_8c01db1e,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mova @(loc_8c01db20,PC),r0
	fmov @r0,fr6
	mova @(0xD8,PC),r0
	fmov @r0,fr4
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt.s loc_8c01da7c
	fldi0 fr5
	cmp/eq 0x09,r0
	bt loc_8c01da8a
	cmp/eq 0x0A,r0
	bt loc_8c01da7c
	cmp/eq 0x0B,r0
	bt loc_8c01da8a
	cmp/eq 0x0D,r0
	bt loc_8c01da9c
	cmp/eq 0x0E,r0
	bt loc_8c01dac6
	cmp/eq 0x0F,r0
	bt loc_8c01dadc
	cmp/eq 0x10,r0
	bt loc_8c01dadc
	cmp/eq 0x11,r0
	bt loc_8c01db02
	bra loc_8c01db1a
	nop

;----------------------------------------------
loc_8c01da7c:
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	bra loc_8c01da96
	fmov fr3,@(r0,r4)

;----------------------------------------------
loc_8c01da8a:
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_8c01da96:
	mova @(loc_8c01db30,PC),r0
	bra loc_8c01db16
	fmov @r0,fr3

;----------------------------------------------
loc_8c01da9c:
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov fr5,@(r0,r4)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c01db40,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	fldi1 fr3
	bra loc_8c01db18
	mov 0x58,r0

;----------------------------------------------
loc_8c01dac6:
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0x78,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	bra loc_8c01db1a
	fmov fr5,@(r0,r4)

;----------------------------------------------
loc_8c01dadc:
	mov 0x34,r0
	fmov fr6,@(r0,r4)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c01db50,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	bra loc_8c01db1a
	fmov fr4,@(r0,r4)

;----------------------------------------------
loc_8c01db02:
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c01db60,PC),r0
	fmov @r0,fr3

loc_8c01db16:
	mov 0x3C,r0

loc_8c01db18:
	fmov fr3,@(r0,r4)

loc_8c01db1a:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01db1e:
	#data 0x012c
	#align4
loc_8c01db20:
	#data 0x42080000 0x412a72b0 0x41000000 0xc0833333
loc_8c01db30:
	#data 0xc1916e63 0x4218cccd 0x3fcccccd 0x3f4ccccd
loc_8c01db40:
	#data 0x3f19999a 0x42030000 0x4049999a 0x40400000
loc_8c01db50:
	#data 0xc0e00000 0x3e9eb852 0x42180000 0x40200000
loc_8c01db60:
	#data 0xc15e8f5c

;==============================================
loc_8c01db64:
	mov 0x23,r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c01db90
	cmp/eq 0x0A,r0
	bt loc_8c01db98
	cmp/eq 0x0B,r0
	bt loc_8c01db98
	cmp/eq 0x0D,r0
	bt loc_8c01db9c
	cmp/eq 0x0E,r0
	bt loc_8c01db9c
	cmp/eq 0x0F,r0
	bt loc_8c01db9c
	cmp/eq 0x10,r0
	bt loc_8c01db9c
	cmp/eq 0x11,r0
	bt loc_8c01db9c
	bra loc_8c01dba0
	nop

loc_8c01db90:
	bsr loc_8c01dba6
	nop
	bra loc_8c01df3c
	lds.l @r15+,pr

loc_8c01db98:
	bra loc_8c01dbc8
	lds.l @r15+,pr

loc_8c01db9c:
	bra loc_8c01dcb4
	lds.l @r15+,pr

loc_8c01dba0:
	lds.l @r15+,pr
	rts
	nop

loc_8c01dba6:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	tst 0x01,r0
	bt loc_8c01dbb8
	mova @(loc_8c01dc08,PC),r0
	bra loc_8c01dbba
	fmov @r0,fr3

loc_8c01dbb8:
	fldi1 fr3

loc_8c01dbba:
	mov.w @(loc_8c01dc04,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	rts
	fmov fr3,@(r0,r4)

loc_8c01dbc8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x23,r0
	mov.l r12,@-r15
	mov 0x00,r5
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	mov.l @(0x2C,PC),r3
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bf.s loc_8c01dbf2
	mov.b @r3,r4
	exts.b r4,r4
	tst r4,r4
	bf loc_8c01dbf8
	bra loc_8c01dc10
	nop

loc_8c01dbf2:
	exts.b r4,r4
	tst r4,r4
	bf loc_8c01dc10

loc_8c01dbf8:
	mov.w @(0xA,PC),r0
	mov.b r5,@(r0,r14)
	mov r5,r0
	nop
	bra loc_8c01dca4
	mov.w r0,@(0x1C,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01dc04:
	#data 0x0080 0x012c
	#align4
loc_8c01dc08:
	#data 0x3f4ccccd 0x8c212f19

;==============================================
loc_8c01dc10:
	mov.l @(loc_8c01dd00,PC),r2
	mov.w @(loc_8c01dcfa,PC),r0
	mov.b r5,@(r0,r14)
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c01dca4
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x1C,r1
	mov.w @(0x1C,r14),r0
	add r14,r1
	mov.l @(loc_8c01dd04,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov 0x2D,r0
	jsr @r3
	mov.w @r1,r1
	mov.w r0,@(0x1C,r14)
	mova @(loc_8c01dd08,PC),r0
	fmov @r0,fr13
	mova @(loc_8c01dd0c,PC),r0
	fmov @r0,fr14
	mova @(loc_8c01dd10,PC),r0
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c01dd18,PC),r13
	mov r0,r4
	shll2 r4
	lds r4,fpul
	mov.l @(loc_8c01dd14,PC),r12
	float fpul,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r13
	and r12,r4
	mov 0x78,r0
	fmov fr0,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r4
	shll2 r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r13
	and r12,r4
	mov 0x7C,r0
	fmov fr0,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r4
	shll2 r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r13
	and r12,r4
	mov.w @(0x58,PC),r0
	fmov fr0,@(r0,r14)

loc_8c01dca4:
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01dcb4:
	mov r4,r3
	mov.l @(loc_8c01dd1c,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01dcc6:
	mov.l @(loc_8c01dd20,PC),r1
	mov 0x00,r3
	mov.w @(loc_8c01dcfa,PC),r0
	mov.b r3,@(r0,r4)
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c01dcf6
	mov.l @(0x4C,PC),r2
	mov.b @r2,r0
	cmp/eq 0x03,r0
	bf loc_8c01dcf6
	mov.w @(loc_8c01dcfa,PC),r0
	mov 0x01,r5
	fldi1 fr3
	mov.b r5,@(r0,r4)
	mov 0x1E,r0
	mov.w r0,@(0x1E,r4)
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x6,r4),r0
	mov.l @(loc_8c01dd28,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.b r5,@r3

loc_8c01dcf6:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01dcfa:
	#data 0x012c 0x0080 0x0000
loc_8c01dd00:
	#data 0x8c21429c
loc_8c01dd04:
	#data bank12.loc_8c1292d4
loc_8c01dd08:
	#data 0x47800000
loc_8c01dd0c:
	#data 0x43b40000
loc_8c01dd10:
	#data 0x3f000000
loc_8c01dd14:
	#data 0x0000ffff
loc_8c01dd18:
	#data bank11.loc_8c11e860
loc_8c01dd1c:
	#data bank14.loc_8c146ae8
loc_8c01dd20:
	#data 0x8c212f19 0x8c2136fd
loc_8c01dd28:
	#data 0x8c212f20

;==============================================
loc_8c01dd2c:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8c01dd46
	mov.w @(0x1E,r4),r0
	mov 0x5C,r1
	add r4,r1
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c01dd46:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bf loc_8c01dd98
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mova @(loc_8c01dd9c,PC),r0
	fmov @r0,fr4
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0D,r0
	bt loc_8c01dd74
	cmp/eq 0x0E,r0
	bt loc_8c01dd84
	cmp/eq 0x0F,r0
	bt loc_8c01dd8a
	cmp/eq 0x10,r0
	bt loc_8c01dd8a
	cmp/eq 0x11,r0
	bt loc_8c01dd90
	bra loc_8c01dd98
	nop

loc_8c01dd74:
	mova @(0x28,PC),r0
	mov.l @(0x2C,PC),r2
	fmov @r0,fr3
	mov 0x34,r0
	mov 0x00,r3
	fmov fr3,@(r0,r4)
	bra loc_8c01dd98
	mov.b r3,@r2

loc_8c01dd84:
	mova @(0x20,PC),r0
	bra loc_8c01dd94
	fmov @r0,fr3

loc_8c01dd8a:
	mov 0x34,r0
	bra loc_8c01dd98
	fmov fr4,@(r0,r4)

loc_8c01dd90:
	mova @(loc_8c01ddac,PC),r0
	fmov @r0,fr3

loc_8c01dd94:
	mov 0x34,r0
	fmov fr3,@(r0,r4)

loc_8c01dd98:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01dd9c:
	#data 0x40800000 0x41033333 0x8c212f20 0x40300000
loc_8c01ddac:
	#data 0x41000000

;==============================================
loc_8c01ddb0:
	mov.l r14,@-r15
	mov 0x23,r0
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x10,r0
	bf loc_8c01de70
	mov.w @(0x1C,r14),r0
	mov 0x1C,r1
	mov.l @(loc_8c01dea4,PC),r3
	add r14,r1
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov 0x2D,r0
	jsr @r3
	mov.w @r1,r1
	mov.w r0,@(0x1C,r14)
	mova @(0xCC,PC),r0
	fmov @r0,fr12
	mova @(loc_8c01deb4,PC),r0
	fmov @r0,fr13
	mova @(0xCC,PC),r0
	fmov @r0,fr14
	mov.w @(0x1C,r14),r0
	mov.l @(0xB8,PC),r12
	mov r0,r4
	shll2 r4
	lds r4,fpul
	mov.l @(0xB4,PC),r13
	fldi1 fr15
	float fpul,fr3
	fmov fr3,fr2
	fmul fr12,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r13
	and r12,r4
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x78,r0
	fmul fr3,fr0
	fneg fr0
	fadd fr15,fr0
	fmov fr0,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r4
	shll2 r4
	lds r4,fpul
	float fpul,fr2
	fmov fr2,fr1
	fmul fr12,fr1
	fdiv fr13,fr1
	fmov fr1,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r13
	and r12,r4
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x7C,r0
	fmul fr3,fr0
	fneg fr0
	fadd fr15,fr0
	fmov fr0,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r4
	shll2 r4
	lds r4,fpul
	float fpul,fr2
	fmov fr2,fr1
	fmul fr12,fr1
	fdiv fr13,fr1
	fmov fr1,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r13
	and r12,r4
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c01dea2,PC),r0
	fmul fr3,fr0
	fneg fr0
	fadd fr15,fr0
	fmov fr0,@(r0,r14)

loc_8c01de70:
	mov.l @(0x4C,PC),r3
	mov.b @r3,r0
	cmp/eq 0x02,r0
	bf loc_8c01de90
	mov.l @(loc_8c01dec4,PC),r2
	mov.b @r2,r0
	cmp/eq 0x06,r0
	bf loc_8c01de90
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	mov.l @(0x40,PC),r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1E,r14)
	mov.b r3,@r2

loc_8c01de90:
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01dea2:
	#data 0x0080
loc_8c01dea4:
	#data bank12.loc_8c1292d4 0x0000ffff bank11.loc_8c11e860 0x47800000
loc_8c01deb4:
	#data 0x43b40000 0x3f000000 0x3f666666 0x8c2136fd
loc_8c01dec4:
	#data 0x8c2136fe 0x8c212f20

;==============================================
loc_8c01decc:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8c01dee6
	mov.w @(0x1E,r4),r0
	mov 0x5C,r1
	add r4,r1
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c01dee6:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bf loc_8c01df38
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x6,r4)
	mova @(loc_8c01df70,PC),r0
	fmov @r0,fr4
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0D,r0
	bt loc_8c01df16
	cmp/eq 0x0E,r0
	bt loc_8c01df24
	cmp/eq 0x0F,r0
	bt loc_8c01df2a
	cmp/eq 0x10,r0
	bt loc_8c01df2a
	cmp/eq 0x11,r0
	bt loc_8c01df30
	bra loc_8c01df38
	nop

loc_8c01df16:
	mova @(0x5C,PC),r0
	mov.l @(0x5C,PC),r3
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	bra loc_8c01df38
	mov.b r5,@r3

loc_8c01df24:
	mova @(0x54,PC),r0
	bra loc_8c01df34
	fmov @r0,fr3

loc_8c01df2a:
	mov 0x34,r0
	bra loc_8c01df38
	fmov fr4,@(r0,r4)

loc_8c01df30:
	mova @(loc_8c01df80,PC),r0
	fmov @r0,fr3

loc_8c01df34:
	mov 0x34,r0
	fmov fr3,@(r0,r4)

loc_8c01df38:
	rts
	nop

;==============================================
loc_8c01df3c:
	add 0xE0,r15
	mov.l @(0x44,PC),r3
	mova @(0x48,PC),r0
	mov.w @(loc_8c01df6e,PC),r2
	mov 0xFF,r4
	mov.b @r3,r5
	fmov @r0,fr6
	mova @(loc_8c01df90,PC),r0
	muls.w r2,r5
	fmov @r0,fr5
	mova @(0x40,PC),r0
	mov.l @(0x34,PC),r1
	mov.l @(0x40,PC),r3
	sts macl,r5
	fmov @r0,fr4
	add r1,r5
	jmp @r3
	add 0x20,r15

;==============================================
loc_8c01df60:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c01df68:
	mov.l @(0x30,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01df6e:
	#data 0x0086
loc_8c01df70:
	#data 0x42080000 0x4218cccd 0x8c212f20 0x42030000
loc_8c01df80:
	#data 0x42180000 0x8c2141e9 0x8c213cae 0x41673333
loc_8c01df90:
	#data 0x420c0000 0x43d08000 bank02.loc_8c02a53a bank04.loc_8c0450c0

;==============================================
loc_8c01dfa0:
	mov.l r14,@-r15
	mov 0x07,r1
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov.l @(loc_8c01e07c,PC),r2
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @r2,r3
	cmp/ge r1,r3
	bf.s loc_8c01e024
	mov r12,r14
	mov.l @(0xC4,PC),r2
	mov 0xFF,r0
	mov.l @(0xBC,PC),r3
	mov 0x0B,r5
	mov.l @(0xC0,PC),r10
	mov 0x01,r6
	mov.b r0,@r3
	mov.w r12,@r2
	jsr @r10
	mov 0x00,r4
	mov 0x01,r3
	mov r0,r14
	mov.b r3,@r14
	mov 0x02,r3
	mov 0x20,r0
	mov.l @(loc_8c01e08c,PC),r2
	mov 0x03,r11
	mov r12,r13
	mov 0x06,r9
	mov.l r2,@(0x10,r14)
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b r12,@(r0,r14)

loc_8c01dfea:
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r10
	mov r14,r4
	mov.l @(loc_8c01e08c,PC),r3
	mov r0,r4
	mov r13,r1
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov r11,r0
	nop
	mov.l @(0x8C,PC),r2
	jsr @r2
	nop
	mov 0x20,r1
	add r4,r1
	mov.b r0,@r1
	mov r13,r1
	mov r11,r0
	nop
	mov.l @(0x80,PC),r3
	jsr @r3
	nop
	add 0x01,r13
	mov 0x21,r1
	cmp/ge r9,r13
	add r4,r1
	bf.s loc_8c01dfea
	mov.b r0,@r1

loc_8c01e024:
	mov r14,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c01e038:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x54,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01e04c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x02,r4
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	cmp/ge r4,r0
	bf loc_8c01e06a
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/ge r4,r0
	bt loc_8c01e06a
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)

loc_8c01e06a:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(loc_8c01e09c,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01e07c:
	#data 0x8c287ae8 0x8c2143c2 0x8c2143c4 bank04.loc_8c044f12
loc_8c01e08c:
	#data loc_8c01e038 bank12.loc_8c129128 bank12.loc_8c1292d4 bank14.loc_8c146b08
loc_8c01e09c:
	#data bank14.loc_8c146b14

;==============================================
loc_8c01e0a0:
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01e1aa,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r2
	mov.l @(loc_8c01e1bc,PC),r0
	extu.b r2,r2
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x34,r0
	mov.l @(0x108,PC),r2
	fmov fr3,@(r0,r4)
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.l @r2,r3
	mov.w @(0xE0,PC),r0
	mov.l @r3,r1
	mov.l @(r0,r1),r0
	mov.w @(0xDC,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(0xD8,PC),r1
	mov.l @(0x18,r4),r3
	mov.w @(loc_8c01e1b2,PC),r0
	add r3,r1
	mov.w @(0xD4,PC),r3
	mov.l r1,@(r0,r4)
	add 0x04,r0
	mov.w @(0xD0,PC),r1
	mov.l r3,@(r0,r4)
	mov 0x22,r0
	mov.b r1,@(r0,r4)

loc_8c01e0ea:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x22,r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r4
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r4,r4
	extu.b r3,r3
	sub r3,r4
	cmp/pz r4
	bt loc_8c01e106
	neg r4,r4

loc_8c01e106:
	mov.l @(0x18,r14),r3
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.b @(r0,r3),r1
	mov.l @(0xB8,PC),r6
	cmp/eq r1,r2
	bt.s loc_8c01e146
	mov 0x00,r5
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov r4,r0
	nop
	shll2 r0
	mov r4,r2
	fmov @(r0,r6),fr3
	mov 0x3C,r0
	mov r4,r3
	shll r2
	fmov fr3,@(r0,r14)
	add r3,r2
	mov.l @(loc_8c01e1cc,PC),r0
	shll2 r2
	mov.l @(0x98,PC),r3
	mov r14,r1
	add r0,r2
	add 0x78,r1
	jsr @r3
	mov 0x0C,r0
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01e146:
	tst r4,r4
	bf loc_8c01e1f0
	mov.l @(0x18,r14),r0
	mov 0x23,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c01e15c
	mov.w @(0x1E,r14),r0
	add 0x14,r0
	mov.w r0,@(0x1E,r14)

loc_8c01e15c:
	mov.w @(0x1E,r14),r0
	mov.w @(0x56,PC),r3
	add 0x08,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01e170
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01e170:
	mov.w @(0x1E,r14),r0
	mov.l @(0x70,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(0x58,PC),r0
	mov.l @(0x64,PC),r3
	fmov @r0,fr2
	mova @(0x58,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(loc_8c01e1dc,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mova @(loc_8c01e1ec,PC),r0
	fmov @r0,fr2
	mov 0x78,r0
	fmul fr3,fr0
	fneg fr0
	fadd fr2,fr0
	bra loc_8c01e226
	fmov fr0,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01e1aa:
	#data 0x012c 0x03ac 0x0084 0x0088
loc_8c01e1b2:
	#data 0x00c8 0x0401 0x00ff 0x0168
	#align4
loc_8c01e1bc:
	#data bank14.loc_8c146af8 0xc0f147ae 0x8c26a940 bank14.loc_8c146b48
loc_8c01e1cc:
	#data bank14.loc_8c146b24 bank12.loc_8c1294c8 0x47800000 0x43b40000
loc_8c01e1dc:
	#data 0x3f000000 0x0000ffff bank11.loc_8c11e860 0x3e4ccccd
loc_8c01e1ec:
	#data 0x3f4ccccd 

;==============================================
loc_8c01e1f0:
	mov.l @(0x18,r14),r0
	mov 0x23,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c01e226
	mova @(loc_8c01e2f4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c01e214
	mov.l @(0xEC,PC),r2
	fmov @(r0,r14),fr1
	lds r2,fpul
	fsts fpul,fr2
	fsub fr2,fr1
	fmov fr1,@(r0,r14)

loc_8c01e214:
	mov r4,r0
	nop
	shll2 r0
	fmov @(r0,r6),fr3
	mova @(0xDC,PC),r0
	fmov @r0,fr2
	mov 0x3C,r0
	fadd fr2,fr3
	fmov fr3,@(r0,r14)

loc_8c01e226:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01e22c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x02,r4
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	cmp/ge r4,r0
	bf loc_8c01e24a
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/ge r4,r0
	bt loc_8c01e24a
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)

loc_8c01e24a:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0xB0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c01e25a:
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	mov.l @(0xB0,PC),r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01e2e6,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r2
	mov.l @(loc_8c01e304,PC),r0
	extu.b r2,r2
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x34,r0
	mov.w @(0x6E,PC),r2
	fmov fr3,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.l @(0x18,r4),r3
	mov.w @(0x5A,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r2
	mov.l @r1,r3
	extu.b r2,r2
	mov.l @r3,r3
	shll2 r2
	mov.w @(0x4A,PC),r0
	add r3,r2
	mov.w @(0x4A,PC),r3
	mov.l @(r0,r2),r2
	mov.w @(loc_8c01e2ee,PC),r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.w @(0x42,PC),r2
	mov.l r3,@(r0,r4)
	mov 0x22,r0
	mov.b r2,@(r0,r4)

loc_8c01e2b4:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x22,r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r2
	mov.b @(r0,r14),r3
	mov.b @(r0,r2),r1
	cmp/eq r1,r3
	bt.s loc_8c01e33a
	mov 0x00,r5
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov 0x21,r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bf.s loc_8c01e314
	mov r14,r1
	mov r5,r4
	mov r5,r0
	nop
	bra loc_8c01e324
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01e2e6:
	#data 0x012c 0x0088 0x00c8 0x03b0
loc_8c01e2ee:
	#data 0x0084 0x0411 0x00ff
loc_8c01e2f4:
	#data 0xc128a3d7 0x3ecccccd 0xbdcccccd bank14.loc_8c146b54
loc_8c01e304:
	#data bank14.loc_8c146af8 0xc0e00000 0xc12fd70a 0x8c26a940

;==============================================
loc_8c01e314:
	mov 0x58,r0
	fldi1 fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x01,r4

loc_8c01e324:
	mov r4,r2
	shll r2
	mov r4,r3
	mov.l @(loc_8c01e448,PC),r0
	add r3,r2
	mov.l @(0x11C,PC),r3
	shll2 r2
	add r0,r2
	add 0x78,r1
	jsr @r3
	mov 0x0C,r0

loc_8c01e33a:
	mov.l @(0x18,r14),r3
	mov 0x22,r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x21,r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r14),r3
	mov 0x22,r0
	mov.b @(r0,r2),r1
	cmp/eq r1,r3
	bf loc_8c01e3a4
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01e43c,PC),r3
	add 0x08,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c01e364
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01e364:
	mov.w @(0x1E,r14),r0
	mov.l @(0xF8,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(0xE0,PC),r0
	mov.l @(0xEC,PC),r3
	fmov @r0,fr2
	mova @(0xE0,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(loc_8c01e458,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0xD8,PC),r0
	fmov fr0,fr3
	fmov @r0,fr2
	mova @(loc_8c01e468,PC),r0
	fmov @r0,fr0
	mov 0x58,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	fmov fr2,@(r0,r14)
	mov 0x50,r0
	bra loc_8c01e3d0
	fmov fr2,@(r0,r14)

loc_8c01e3a4:
	mov.l @(0x18,r14),r0
	mov 0x23,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c01e3d0
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c01e3c8
	mov.l @(0xB0,PC),r2
	fmov @(r0,r14),fr1
	lds r2,fpul
	fsts fpul,fr2
	fsub fr2,fr1
	fmov fr1,@(r0,r14)

loc_8c01e3c8:
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)

loc_8c01e3d0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01e3d6:
	mov r4,r3
	mov.l @(loc_8c01e478,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01e3e8:
	mov 0x00,r5
	fldi0 fr3
	mov.l @(0x90,PC),r2
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x44,PC),r0
	mov.b r5,@(r0,r4)
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.l @r2,r3
	mov.w @(0x2C,PC),r0
	mov.l @r3,r1
	mov 0x01,r3
	mov.l @(r0,r1),r0
	mov.w @(0x26,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(loc_8c01e444,PC),r0
	mov.l r4,@(0x18,r4)
	mov.l r3,@(r0,r4)
	mov 0x22,r0
	mov.l @(0x18,r4),r1
	mov.b r5,@(r0,r1)
	mov 0x23,r0
	mov.l @(0x18,r4),r3
	mov.b r5,@(r0,r3)
	bsr loc_8c01e488
	nop
	mov.l @(0x4C,PC),r2
	mov 0x39,r4
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01e43c:
	#data  0x0168 0x012c 0x03ac 0x0084
loc_8c01e444:
	#data 0x00cc
	#align4
loc_8c01e448:
	#data  bank14.loc_8c146b64 bank12.loc_8c1294c8 0x47800000 0x43b40000
loc_8c01e458:
	#data  0x3f000000 0x0000ffff bank11.loc_8c11e2e0 0x3f8ccccd
loc_8c01e468:
	#data  0x3dcccccd 0xc1200000 0x3ecccccd 0xc13170a4
loc_8c01e478:
	#data  bank14.loc_8c146b7c 0xc0400000 0x8c26a940 bank04.loc_8c04257c

;==============================================
loc_8c01e488:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mova @(loc_8c01e580,PC),r0
	mov r4,r14
	fmov @r0,fr4
	mov 0x23,r1
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c01e4b2
	cmp/eq 0x01,r0
	bt loc_8c01e4e4
	cmp/eq 0x02,r0
	bt loc_8c01e542
	cmp/eq 0x03,r0
	bt loc_8c01e55a
	bra loc_8c01e576
	nop

loc_8c01e4b2:
	mov 0x38,r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bt.s loc_8c01e4ce
	fmov fr3,@(r0,r14)
	fmov fr2,@(r0,r14)
	mov 0x23,r0
	mov.l @(0x18,r14),r3
	mov 0x01,r2
	mov.b r2,@(r0,r3)
	bra loc_8c01e576
	nop

loc_8c01e4ce:
	mov.l @(0xB4,PC),r1
	jsr @r1
	nop
	tst r0,r0
	bf loc_8c01e54e
	mov.l @(0xAC,PC),r3
	mov.l @r3,r1
	tst r1,r1
	bt loc_8c01e576
	bra loc_8c01e54e
	nop

loc_8c01e4e4:
	mov.l @(0x9C,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c01e54e
	mov.l @(0x98,PC),r1
	mov.l @r1,r3
	tst r3,r3
	bf loc_8c01e54e
	mov.l @(0x94,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c01e51c
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mov 0x23,r0
	mov.l @(0x18,r14),r3
	mov 0x02,r2
	mov.b r2,@(r0,r3)
	mov 0x22,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.l @(loc_8c01e590,PC),r3
	extu.b r2,r2
	add 0x01,r2
	bra loc_8c01e576
	mov.w r2,@r3

loc_8c01e51c:
	mov.l @(0x18,r14),r0
	mov r0,r3
	mov r0,r8
	mov.l r0,@r15
	mov 0x22,r0
	mov.b @(r0,r3),r5
	add 0x22,r8
	mov.l @(0x68,PC),r3
	extu.b r5,r5
	mov.l r5,@-r15
	jsr @r3
	mov 0x03,r4
	mov.l @(0x60,PC),r2
	mov r0,r4
	mov.l @r15+,r5
	jsr @r2
	mov 0x02,r6
	bra loc_8c01e576
	mov.b r0,@r8

loc_8c01e542:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01e576

loc_8c01e54e:
	mov.l @(0x18,r14),r2
	mov 0x23,r0
	mov 0x03,r3
	mov.b r3,@(r0,r2)
	bra loc_8c01e576
	nop

loc_8c01e55a:
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr2
	fcmp/gt fr2,fr3
	bt loc_8c01e576
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	mov.l @(loc_8c01e5a0,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.b r3,@r2

loc_8c01e576:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c01e580:
	#data 0x3ecccccd loc_8c011bbc 0x8c21429c loc_8c011a9a
loc_8c01e590:
	#data 0x8c2143c4 loc_8c01357a loc_8c0134d6 0xc0400000
loc_8c01e5a0:
	#data 0x8c2143c2

;==============================================
loc_8c01e5a4:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01e5ba,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c01e5b2:
	mov.l @(loc_8c01e5bc,PC),r3
	mov 0x00,r2
	jmp @r3
	mov.b r2,@r4


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01e5ba:
	#data 0x012c
loc_8c01e5bc:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c01e5c0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x188,PC),r10
	mov 0x00,r13
	mov.l @(0x17C,PC),r8
	mov 0x01,r11
	mov.l @(0x17C,PC),r9
	mov r13,r12
	mov.l @(loc_8c01e750,PC),r14
	mov.w r4,@r15

loc_8c01e5e2:
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r9
	mov r6,r4
	tst r0,r0
	bf.s loc_8c01e5f4
	mov r0,r4
	bra loc_8c01e732
	nop

loc_8c01e5f4:
	mov.w @(loc_8c01e746,PC),r0
	mov r4,r1
	mov.l @(loc_8c01e760,PC),r3
	add 0x74,r1
	mov.w @(0x148,PC),r2
	mov.b r11,@(r0,r4)
	add 0xA0,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x15C,PC),r3
	mov.l r2,@(r0,r4)
	mov r8,r2
	jsr @r3
	mov 0x10,r0
	mov 0x20,r0
	mov.b r12,@(r0,r4)
	mov 0x21,r0
	mov.b r13,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x18,r0
	fmov @(r0,r14),fr3
	mov 0x58,r0
	fmov fr3,@(r0,r4)
	mov.w @r14,r3
	mov.l @r10,r0
	extu.w r3,r3
	shll2 r3
	mov.l @r0,r0
	add 0x01,r12
	mov.l @(r0,r3),r2
	mov 0x08,r3
	mov.w @(0xF0,PC),r0
	mov.l r2,@(r0,r4)
	exts.b r12,r2
	cmp/ge r3,r2
	bf.s loc_8c01e5e2
	add 0x1C,r14
	mov 0x0B,r5
	mov 0x00,r6
	jsr @r9
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01e732
	mov r0,r4
	mov.w @(loc_8c01e746,PC),r0
	mov r4,r1
	mov.l @(loc_8c01e760,PC),r3
	add 0x74,r1
	mov.w @(0xCC,PC),r2
	mov.b r11,@(r0,r4)
	add 0xA0,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0xE0,PC),r3
	mov.l r2,@(r0,r4)
	mov r8,r2
	jsr @r3
	mov 0x10,r0
	mova @(0xDC,PC),r0
	mov.l @(0xDC,PC),r5
	fmov @r0,fr4
	mov 0x50,r0
	mov r4,r1
	add 0x34,r1
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @r5,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r11,@(r0,r4)
	mov.b @r5,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c01e770,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @r10,r1
	mov.w @(0x88,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r2
	mov.w @(0x80,PC),r0
	mov.l r2,@(r0,r4)
	mov r13,r0
	nop
	mov 0x0B,r5
	mov.w r0,@(0x1E,r4)
	mov 0x00,r6
	jsr @r9
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01e732
	mov r0,r4
	mov.w @(loc_8c01e746,PC),r0
	mov r4,r1
	mov.l @(loc_8c01e760,PC),r3
	add 0x74,r1
	mov.w @(0x64,PC),r2
	mov.b r11,@(r0,r4)
	add 0xA0,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x74,PC),r3
	mov.l r2,@(r0,r4)
	mov r8,r2
	jsr @r3
	mov 0x10,r0
	mov 0x20,r0
	fldi0 fr4
	mov.b r13,@(r0,r4)
	mov 0x21,r0
	mov.b r13,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	fmov fr4,@(r0,r4)
	mov 0x23,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x23,r3
	add r4,r3
	mov.l @(0x5C,PC),r0
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r2
	mov.l @r10,r0
	extu.w r2,r2
	mov.l @r0,r3
	shll2 r2
	mov.w @(0x1C,PC),r0
	add r3,r2
	mov.l @r2,r1
	mov.l r1,@(r0,r4)

loc_8c01e732:
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
loc_8c01e746:
	#data 0x012c 0x0431 0x0084 0x02bc 0x0421
loc_8c01e750:
	#data bank14.loc_8c146b8c bank14.loc_8c146ca8 bank04.loc_8c044f12 0x8c26a940
loc_8c01e760:
	#data loc_8c01e77c bank12.loc_8c1294bc 0x3f000000 0x8c212f19
loc_8c01e770:
	#data bank14.loc_8c146c88 bank12.loc_8c1294c8 bank14.loc_8c146ca0

;==============================================
loc_8c01e77c:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x21,r0
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c01e81a
	mov.l @(loc_8c01e828,PC),r4
	mov r14,r1
	add 0x34,r1
	mov.b @r4,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x90,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b @r4,r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r3,r2
	bt.s loc_8c01e7cc
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x20,r0
	mov.b @r4,r3
	mov r14,r1
	mov.l @(0x70,PC),r2
	add 0x74,r1
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c01e838,PC),r3
	jsr @r3
	mov 0x10,r0

loc_8c01e7cc:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01e822,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01e7e0
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01e7e0:
	mova @(0x58,PC),r0
	mov.l @(0x68,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x50,PC),r0
	mov.l @(loc_8c01e848,PC),r3
	fmov @r0,fr2
	mova @(0x50,PC),r0
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
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.w @(0x12,PC),r0
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov fr2,@(r0,r14)
	mov 0x78,r0
	fmov fr2,@(r0,r14)

loc_8c01e81a:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01e822:
	#data 0x0168 0x0080
	#align4
loc_8c01e828:
	#data 0x8c212f19 bank14.loc_8c146c88 bank12.loc_8c1294c8 bank14.loc_8c146ca8
loc_8c01e838:
	#data bank12.loc_8c1294bc 0x3f000000 0x47800000 0x43b40000
loc_8c01e848:
	#data 0x0000ffff bank11.loc_8c11e2e0

;==============================================
loc_8c01e850:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	shll2 r14
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r12
	mov.w @(loc_8c01e93a,PC),r13
	mov.l @(loc_8c01e944,PC),r0
	bra loc_8c01e886
	mov.l @(r0,r14),r14

loc_8c01e866:
	mov.w @(0x6,r14),r0
	mov.w @r14,r4
	extu.w r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov r0,r7
	mov.w @(0x4,r14),r0
	add r12,r7
	extu.w r0,r6
	mov.w @(0x2,r14),r0
	extu.w r0,r5
	bsr loc_8c01e898
	extu.w r4,r4
	add 0x08,r14

loc_8c01e886:
	mov.w @r14,r2
	extu.w r2,r2
	cmp/eq r13,r2
	bf loc_8c01e866
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01e898:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xAC,PC),r3
	mov.l r4,@(0xC,r15)
	mov.l r5,@(0x8,r15)
	mov 0x0B,r5
	mov.l r6,@r15
	mov 0x00,r6
	mov.l r7,@(0x4,r15)
	jsr @r3
	mov r6,r4
	tst r0,r0
	bf.s loc_8c01e8bc
	mov r0,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c01e8bc:
	mov.w @(0x7C,PC),r0
	mov 0x01,r3
	mov.l @(0x8C,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c01e954,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l @r3,r0
	mov.l @r15,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(0x84,PC),r1
	mov.l @(r0,r2),r2
	mov.w @(0x66,PC),r0
	mov.l r2,@(r0,r4)
	mov.b @r1,r0
	mov r4,r1
	add 0x34,r1
	mov.b r0,@(0x2,r4)
	mov 0x20,r0
	mov.l @(0xC,r15),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x8,r15),r3
	mov.b r3,@(r0,r4)
	mov.l @r15,r0
	mov.w @(0x4E,PC),r3
	mov.w r0,@(0x1C,r4)
	mov 0x00,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x48,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(0x4,r15),r2
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x5C,PC),r2
	mov r4,r1
	mov.l @(0x54,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01e964,PC),r2
	mov r4,r1
	mov.l @(0x54,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov r4,r0
	nop
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01e926:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x3C,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01e93a:
	#data 0x00ff 0x012c 0x0084 0x0431 0x00cc
loc_8c01e944:
	#data bank14.loc_8c146ebc bank14.loc_8c146ec4 bank04.loc_8c044f12 loc_8c01e926
loc_8c01e954:
	#data 0x8c26a940 0x8c213836 bank12.loc_8c1294c8 bank14.loc_8c146cb8
loc_8c01e964:
	#data bank14.loc_8c146d0c bank12.loc_8c1294bc bank14.loc_8c147144

;==============================================
loc_8c01e970:
	mov.l r14,@-r15
	mov 0x21,r0
	mov.l r13,@-r15
	mov 0x0F,r7
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r6
	mov.w @(0xE2,PC),r0
	extu.b r6,r6
	mov.w @(loc_8c01ea68,PC),r13
	mov r6,r5
	and r6,r0
	mov.l @(loc_8c01ea74,PC),r11
	and r7,r5
	mov.l @(0xE4,PC),r12
	cmp/eq 0x10,r0
	mov r5,r14
	bt.s loc_8c01e9dc
	shll2 r14
	cmp/eq 0x20,r0
	bt loc_8c01ea22
	cmp/eq 0x30,r0
	bt loc_8c01ea4a
	cmp/eq 0x40,r0
	bf loc_8c01e9ac
	bra loc_8c01eaac
	nop

loc_8c01e9ac:
	cmp/eq 0x50,r0
	bf loc_8c01e9b4
	bra loc_8c01eaf6
	nop

loc_8c01e9b4:
	cmp/eq 0x60,r0
	bf loc_8c01e9bc
	bra loc_8c01ec00
	nop

loc_8c01e9bc:
	cmp/eq 0x70,r0
	bf loc_8c01e9c4
	bra loc_8c01ec1e
	nop

loc_8c01e9c4:
	mov.w @(0xA4,PC),r1
	cmp/eq r1,r0
	bf loc_8c01e9ce
	bra loc_8c01ec3a
	nop

loc_8c01e9ce:
	mov.w @(0x9C,PC),r1
	cmp/eq r1,r0
	bf loc_8c01e9d8
	bra loc_8c01ec6e
	nop

loc_8c01e9d8:
	bra loc_8c01ec9e
	nop

loc_8c01e9dc:
	mov.l @(0x9C,PC),r2
	mov r4,r1
	mov.l @(0x9C,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c01ea84,PC),r1
	extu.b r0,r0
	cmp/eq r5,r0
	bf.s loc_8c01ea0c
	mov.l @r1,r6
	mov.l @(0x90,PC),r2
	mov.w @(0x1C,r4),r0
	mov.b @r2,r3
	sub r3,r0
	mov.l @r6,r3
	shll2 r0
	mov.l @(r0,r3),r0
	mov.w @(0x6A,PC),r3
	add r4,r3
	mov.l r0,@r3
	bra loc_8c01ec9e
	nop

loc_8c01ea0c:
	mov.l @(0x7C,PC),r2
	mov.w @(0x1C,r4),r0
	mov.b @r2,r3
	sub r3,r0
	mov.l @r6,r3
	shll2 r0
	mov.l @(r0,r3),r0
	mov.w @(0x52,PC),r3
	add r4,r3
	bra loc_8c01ec9e
	mov.l r0,@r3

loc_8c01ea22:
	mova @(0x6C,PC),r0
	fmov @r0,fr14
	mova @(loc_8c01ea94,PC),r0
	fmov @r0,fr15
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	cmp/eq r5,r0
	bf loc_8c01ea38
	mov.l @(0x64,PC),r5
	bra loc_8c01ea3a
	nop

loc_8c01ea38:
	mov.l @(0x60,PC),r5

loc_8c01ea3a:
	mov.l @(loc_8c01eaa4,PC),r0
	mov.l @(0x60,PC),r4
	fmov fr14,fr5
	fmov fr15,fr6
	jsr @r12
	fmov @(r0,r14),fr4
	bra loc_8c01ec9e
	nop

loc_8c01ea4a:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bt loc_8c01ea54
	bra loc_8c01ec9e
	nop

loc_8c01ea54:
	mov.b @(0x4,r4),r0
	mov 0x34,r3
	add r4,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.l @(0x48,PC),r0
	fmov @(r0,r14),fr3
	fmov fr3,@r3
	bra loc_8c01ec9e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ea68:
	#data 0x03e7 0x00f0 0x0080 0x00c0 0x0084 0x0000
loc_8c01ea74:
	#data 0x8c213aee bank02.loc_8c02a53a bank14.loc_8c146cd0 bank12.loc_8c1294c8
loc_8c01ea84:
	#data 0x8c26a940 0x8c213b08 0x8c214284 0x42b20000
loc_8c01ea94:
	#data 0x414028f6 0x8c21384a 0x8c2141f2 0xff000000
loc_8c01eaa4:
	#data bank14.loc_8c147008 bank14.loc_8c146fc0

;==============================================
loc_8c01eaac:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bt loc_8c01eab6
	bra loc_8c01ec9e
	nop

loc_8c01eab6:
	mov.b @(0x4,r4),r0
	mov 0x01,r2
	mov 0x34,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	and r2,r5
	mov.l @(loc_8c01ebc8,PC),r0
	add r4,r3
	shll2 r5
	fmov @(r0,r14),fr3
	mov.l @(0x100,PC),r0
	fmov fr3,@r3
	fmov @(r0,r5),fr3
	mov 0x38,r0
	mov.l @(0xFC,PC),r3
	fmov fr3,@(r0,r4)
	mov.w @r11,r1
	mov.l @r3,r0
	cmp/pl r1
	movt r1
	mov.l @r0,r3
	mov r1,r2
	shll2 r1
	shll2 r1
	mov.w @(0x1C,r4),r0
	sub r2,r1
	add r1,r0
	shll2 r0
	mov.l @(r0,r3),r2
	mov.w @(loc_8c01ebc2,PC),r0
	bra loc_8c01ec9e
	mov.l r2,@(r0,r4)

loc_8c01eaf6:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bt loc_8c01eb00
	bra loc_8c01ec9e
	nop

loc_8c01eb00:
	mov.b @(0x4,r4),r0
	and r5,r7
	shll2 r7
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.l @(0xC8,PC),r0
	fmov @(r0,r7),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov.l @(loc_8c01ebd8,PC),r0
	mov.l @(r0,r14),r14
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	cmp/eq r5,r0
	bf loc_8c01eb6c
	mov.l @(0xC0,PC),r1
	mov r14,r7
	mov.l @(0xB8,PC),r3
	mov.w @r1,r2
	mov.w @r3,r4
	mov.l @(0xB8,PC),r0
	add r2,r4
	mov.w @(0x94,PC),r5
	mov.w @r0,r2
	add r2,r4
	mov.l @(loc_8c01ebe8,PC),r2
	mov.w @r2,r3
	add r3,r4
	mov.l @(0xB0,PC),r3
	mov.l r3,@-r15
	bsr loc_8c01eeec
	mov 0x04,r6
	mov.l @(0xA0,PC),r0
	add 0x30,r14
	mov.l @(0x94,PC),r2
	mov r14,r7
	mov.l @(0xA0,PC),r3
	mov r13,r5
	mov 0x03,r6
	mov.l r3,@-r15
	mov.w @r2,r4
	mov.w @r0,r1
	bsr loc_8c01eeec
	add r1,r4
	mov.l @(0x90,PC),r2
	add 0x24,r14
	mov.l @(0x80,PC),r3
	mov r13,r5
	mov.l @(loc_8c01ebe8,PC),r0
	mov r14,r7
	mov.l r2,@-r15
	mov 0x03,r6
	bra loc_8c01ebb8
	mov.w @r3,r4

loc_8c01eb6c:
	mov.l @(0x84,PC),r1
	mov r14,r7
	mov.l @(0x7C,PC),r3
	mov.w @r1,r2
	mov.w @r3,r4
	mov.l @(loc_8c01ebf8,PC),r0
	add r2,r4
	mov.w @(0x46,PC),r5
	mov.w @r0,r2
	add r2,r4
	mov.l @(0x78,PC),r2
	mov.w @r2,r3
	add r3,r4
	mov.l @(0x64,PC),r3
	mov.l r3,@-r15
	bsr loc_8c01eeec
	mov 0x04,r6
	mov.l @(loc_8c01ebf8,PC),r0
	add 0x30,r14
	mov.l @(0x5C,PC),r2
	mov r14,r7
	mov.l @(0x54,PC),r3
	mov r13,r5
	mov 0x03,r6
	mov.l r3,@-r15
	mov.w @r2,r4
	mov.w @r0,r1
	bsr loc_8c01eeec
	add r1,r4
	mov.l @(0x4C,PC),r3
	add 0x24,r14
	mov.l @(0x40,PC),r2
	mov r13,r5
	mov.l @(0x4C,PC),r0
	mov r14,r7
	mov.l r2,@-r15
	mov 0x03,r6
	mov.w @r3,r4

loc_8c01ebb8:
	mov.w @r0,r1
	bsr loc_8c01eeec
	add r1,r4
	bra loc_8c01ec9e
	add 0x0C,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ebc2:
	#data 0x0084 0x270f
	#align4
loc_8c01ebc8:
	#data bank14.loc_8c146fd0 bank14.loc_8c146fe0 0x8c26a940 bank14.loc_8c146fe8
loc_8c01ebd8:
	#data bank14.loc_8c147100 0x8c213b90 0x8c213b92 0x8c213af0
loc_8c01ebe8:
	#data 0x8c213af2 bank14.loc_8c146d2c 0x8c214286 0x8c214288
loc_8c01ebf8:
	#data 0x8c21428c 0x8c21428e

;==============================================
loc_8c01ec00:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01ec9e
	mov.b @(0x4,r4),r0
	mov 0x0A,r5
	mov.l @(loc_8c01ecb4,PC),r3
	mov.w @(loc_8c01ecae,PC),r6
	add 0x01,r0
	mov.l @(0xA4,PC),r7
	mov.b r0,@(0x4,r4)
	mov.l r3,@-r15
	bsr loc_8c01eeec
	mov.w @r11,r4
	bra loc_8c01ec9e
	add 0x04,r15

;==============================================
loc_8c01ec1e:
	mov.w @r11,r2
	tst r2,r2
	bt loc_8c01ec9e
	mov.w @(0x88,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)
	mov.l @(0x90,PC),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x01,r0
	bf loc_8c01ec9e
	mov.w @(0x7A,PC),r0
	mov 0x01,r2
	bra loc_8c01ec9e
	mov.b r2,@(r0,r4)

;==============================================
loc_8c01ec3a:
	tst r5,r5
	bf loc_8c01ec4a
	mov.l @(0x80,PC),r2
	mov r4,r1
	mov.l @(loc_8c01ecc4,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8c01ec4a:
	mov r5,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c01ec9e
	mov.l @(0x74,PC),r2
	mov r4,r1
	mov.l @(loc_8c01ecc4,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x6C,PC),r2
	mov r4,r1
	mov.l @(0x6C,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	bra loc_8c01ec9e
	nop

loc_8c01ec6e:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01ec8c
	mov.b @(0x4,r4),r0
	mov r13,r5
	mov.l @(loc_8c01ecd4,PC),r3
	mov 0x03,r6
	mov.l @(0x58,PC),r7
	add 0x01,r0
	mov.l @(0x58,PC),r2
	mov.b r0,@(0x4,r4)
	mov.l r3,@-r15
	bsr loc_8c01eeec
	mov.l @r2,r4
	add 0x04,r15

loc_8c01ec8c:
	mova @(loc_8c01ece4,PC),r0
	mov.l @(0x50,PC),r5
	fmov @r0,fr6
	mova @(0x54,PC),r0
	fmov @r0,fr5
	mova @(0x54,PC),r0
	mov 0xFF,r4
	jsr @r12
	fmov @r0,fr4

loc_8c01ec9e:
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ecae:
	#data 0x0082 0x012c
	#align4
loc_8c01ecb4:
	#data bank14.loc_8c146d3c bank14.loc_8c147108 0x8c212f1e bank14.loc_8c146cc4
loc_8c01ecc4:
	#data bank12.loc_8c1294c8 bank14.loc_8c146d00 bank14.loc_8c146d1c bank12.loc_8c1294bc
loc_8c01ecd4:
	#data bank14.loc_8c146d4c bank14.loc_8c147120 0x8c215294 0x8c21384a
loc_8c01ece4:
	#data 0xc14028f6 0x43540000 0x43700000

;==============================================
loc_8c01ecf0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c01edc4
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01ee1a,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf.s loc_8c01ed16
	mov 0x00,r13
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01ed16:
	mova @(loc_8c01ee24,PC),r0
	mov.l @(loc_8c01ee34,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x104,PC),r0
	mov.l @(0x108,PC),r3
	fmov @r0,fr2
	mova @(0x100,PC),r0
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
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.w @(0xD4,PC),r0
	mov.l @(0xF0,PC),r5
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov fr2,@(r0,r14)
	mov 0x78,r0
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	mov r4,r0
	nop
	mov.b @(r0,r5),r0
	mov r4,r3
	mov.l @(0xD0,PC),r2
	shll2 r3
	shll2 r0
	shll r0
	add r0,r2
	add r2,r3
	mov 0x21,r2
	fmov @r3,fr3
	add r14,r2
	mov.l @(0xC4,PC),r3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov.b @r2,r2
	mov.l @r3,r0
	extu.b r2,r2
	add r2,r5
	mov.l @r0,r3
	mov.b @r5,r1
	mov.w @(0x1C,r14),r0
	add r1,r0
	shll2 r0
	mov.l @(r0,r3),r2
	mov.w @(0x86,PC),r0
	mov.l r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bt loc_8c01edaa
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01edaa:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c01ee44,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c01edd2
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x5E,PC),r0
	bra loc_8c01edd2
	mov.b r13,@(r0,r14)

loc_8c01edc4:
	lds.l @r15+,pr
	mov.l @(0x80,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c01edd2:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01eddc:
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
	bt.s loc_8c01ee00
	mov 0x00,r4
	cmp/eq 0x01,r0
	bt loc_8c01ee50
	bra loc_8c01eeda
	nop

;==============================================
loc_8c01ee00:
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
	bra loc_8c01eeda
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ee1a:
	#data 0x0168 0x0080 0x0084 0x012c
	#align4
loc_8c01ee24:
	#data 0x3f000000 0x47800000 0x43b40000 0x0000ffff
loc_8c01ee34:
	#data bank11.loc_8c11e2e0 0x8c212f1c bank14.loc_8c146ff0 0x8c26a940
loc_8c01ee44:
	#data 0x8c212f1e bank04.loc_8c0450c0 bank10.loc_8c108210

;==============================================
loc_8c01ee50:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8c01ef26,PC),r5
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c01ee64
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c01ee64:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c01ee76
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01ee76:
	mov.l @(loc_8c01ef30,PC),r3
	mov.w @(0xAC,PC),r0
	mov.l @r3,r4
	mov.l @(0xB4,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	add 0x64,r0
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8c01ef40,PC),r13
	mova @(0xB8,PC),r0
	mov.l @(0xAC,PC),r12
	mov.l @(0xA8,PC),r11
	fldi1 fr14
	bra loc_8c01eed2
	fmov @r0,fr15

loc_8c01ee96:
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

loc_8c01eed2:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c01ee96

loc_8c01eeda:
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
loc_8c01eeec:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r9
	cmp/gt r5,r9
	bf.s loc_8c01ef0a
	mov r7,r8
	mov r5,r9

loc_8c01ef0a:
	mov.w @(0x1E,PC),r10
	mov 0xF9,r3
	mov.w @(0x18,PC),r11
	mova @(0x34,PC),r0
	and r6,r10
	fmov @r0,fr15
	shad r3,r10
	and r6,r11
	mov r11,r3
	add 0xFF,r3
	mov 0x00,r14
	mov 0x01,r13
	bra loc_8c01efb4
	mov.l r3,@r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ef26:
	#data 0x03e8 0x0084 0xff7f 0x0080
	#align4
loc_8c01ef30:
	#data 0x8c26a940 bank10.loc_8c108060 bank10.loc_8c108192 bank10.loc_8c108086
loc_8c01ef40:
	#data bank10.loc_8c1081e6 0x3a83126f 0x41200000

;==============================================
loc_8c01ef4c:
	mov r11,r1
	sub r14,r1
	add 0xFF,r1
	mov.l @(loc_8c01efd4,PC),r3
	lds r1,fpul
	float fpul,fr3
	fmov fr3,fr5
	jsr @r3
	fmov fr15,fr4
	ftrc fr0,fpul
	mov.l @(0x74,PC),r3
	sts fpul,r0
	jsr @r3
	mov r9,r1
	mov.l @(0x70,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x0A,r0
	mov.l @r15,r3
	mov r0,r12
	cmp/eq r3,r14
	bf loc_8c01ef7a
	mov r13,r10

loc_8c01ef7a:
	tst r10,r10
	bf loc_8c01ef82
	tst r12,r12
	bt loc_8c01efb0

loc_8c01ef82:
	mov.w @(loc_8c01efce,PC),r6
	mov r8,r7
	mov.w @(0x46,PC),r5
	add r12,r6
	bsr loc_8c01e898
	mov 0x00,r4
	mov r0,r4
	mov.l @(0x4C,PC),r3
	mov r4,r1
	mov.l @(0x28,r15),r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov 0x02,r1
	cmp/gt r1,r11
	bf loc_8c01efae
	mov.l @(loc_8c01efe4,PC),r2
	mov r4,r1
	mov.l @(0x40,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8c01efae:
	mov r13,r10

loc_8c01efb0:
	add 0x0C,r8
	add 0x01,r14

loc_8c01efb4:
	cmp/ge r11,r14
	bf loc_8c01ef4c
	add 0x04,r15
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
loc_8c01efce:
	#data 0x00f8 0x00d0
	#align4
loc_8c01efd4:
	#data bank11.loc_8c11e680 bank12.loc_8c129128 bank12.loc_8c1292d4 bank12.loc_8c1294bc
loc_8c01efe4:
	#data bank14.loc_8c146cf4 bank12.loc_8c1294c8 

;==============================================
loc_8c01efec:
	mov.w @(loc_8c01f0ca,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c01f0d4,PC),r2
	mov r4,r1
	sts.l pr,@-r15
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.l r2,@(0x10,r4)
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov 0x20,r0
	mov.b r6,@(r0,r4)
	mov 0x21,r0
	mov.l @(0xD0,PC),r2
	mov.l @(0xD0,PC),r3
	mov.b r7,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xBA,PC),r0
	mov.w @(0xB6,PC),r1
	mov.l @(0xC8,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c01f0e4,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01f028:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xB0,PC),r12
	mov 0x0B,r5
	mov 0x00,r6
	mov.b r4,@r15
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01f0b6
	mov r0,r14
	mov.b @r15,r6
	mov 0x00,r7
	mov r7,r5
	bsr loc_8c01efec
	mov r14,r4
	mov 0x00,r11
	mov.l r14,@(0x18,r14)
	mov 0x02,r10

loc_8c01f058:
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r12
	mov r14,r4
	mov r11,r6
	mov 0x01,r5
	mov r0,r13
	mov 0x00,r7
	bsr loc_8c01efec
	mov r0,r4
	mov.w @(0x60,PC),r3
	add 0x01,r11
	mov.w @(0x5E,PC),r0
	cmp/ge r10,r11
	add r14,r3
	mov.l r14,@(0x18,r13)
	mov.l r3,@(r0,r13)
	bf loc_8c01f058
	mov.b @r15,r2
	tst r2,r2
	bf loc_8c01f088
	mov 0x00,r4
	bra loc_8c01f08c
	mov 0x04,r10

loc_8c01f088:
	mov 0x03,r10
	mov 0x01,r4

loc_8c01f08c:
	mov r4,r11
	cmp/ge r10,r11
	bt loc_8c01f0b6

loc_8c01f092:
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r12
	mov r14,r4
	mov r11,r6
	mov 0x02,r5
	mov r0,r13
	mov 0x00,r7
	bsr loc_8c01efec
	mov r0,r4
	mov.w @(0x26,PC),r2
	add 0x01,r11
	mov.w @(0x24,PC),r0
	cmp/ge r10,r11
	mov.l r14,@(0x18,r13)
	add r14,r2
	bf.s loc_8c01f092
	mov.l r2,@(r0,r13)

loc_8c01f0b6:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01f0ca:
	#data 0x012c 0x0431 0x00cc 0x0088 0x00c8
loc_8c01f0d4:
	#data loc_8c01f650 bank14.loc_8c14715c bank12.loc_8c1294c8 bank14.loc_8c147168
loc_8c01f0e4:
	#data bank12.loc_8c1294bc bank04.loc_8c044f12

;==============================================
loc_8c01f0ec:
	mov.l r14,@-r15
	mov 0x0B,r5
	mov.l r13,@-r15
	mov 0x00,r6
	sts.l pr,@-r15
	mov.l @(loc_8c01f1dc,PC),r14
	jsr @r14
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01f1ce
	mov r0,r13
	mov 0x00,r7
	mov 0x06,r5
	mov r7,r6
	bsr loc_8c01efec
	mov r13,r4
	mov 0x26,r0
	mov 0x3C,r3
	mov.w r3,@(r0,r13)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov r3,r0
	nop
	mov 0x0B,r5
	fmov fr3,@(r0,r13)
	mov 0x00,r6
	jsr @r14
	mov r6,r4
	mov 0x00,r7
	mov r0,r13
	mov 0x06,r5
	mov r7,r6
	bsr loc_8c01efec
	mov r0,r4
	mov 0x26,r0
	mov 0x3B,r2
	mov.w r2,@(r0,r13)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	mov 0x0B,r5
	mov 0x00,r6
	fmov fr3,@(r0,r13)
	jsr @r14
	mov r6,r4
	mov 0x00,r7
	mov r0,r13
	mov 0x06,r5
	mov r7,r6
	bsr loc_8c01efec
	mov r0,r4
	mov 0x26,r0
	mov 0x3D,r2
	mov.w r2,@(r0,r13)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	mov 0x0B,r5
	mov 0x00,r6
	fmov fr3,@(r0,r13)
	jsr @r14
	mov r6,r4
	mov 0x00,r7
	mov r0,r13
	mov 0x06,r5
	mov r7,r6
	bsr loc_8c01efec
	mov r0,r4
	mov.w @(loc_8c01f1d6,PC),r2
	mov 0x26,r0
	mov 0x0B,r5
	mov 0x00,r6
	mov.w r2,@(r0,r13)
	jsr @r14
	mov r6,r4
	mov 0x00,r7
	mov r0,r13
	mov 0x06,r5
	mov r7,r6
	bsr loc_8c01efec
	mov r0,r4
	mov.w @(0x46,PC),r2
	mov 0x26,r0
	mov 0x0B,r5
	mov 0x00,r6
	mov.w r2,@(r0,r13)
	jsr @r14
	mov r6,r4
	mov 0x00,r7
	mov r0,r13
	mov 0x06,r5
	mov r7,r6
	bsr loc_8c01efec
	mov r0,r4
	mov.w @(0x2E,PC),r2
	mov 0x26,r0
	mov 0x0B,r5
	mov.w r2,@(r0,r13)
	mova @(loc_8c01f1ec,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	mov 0x00,r6
	fmov fr3,@(r0,r13)
	jsr @r14
	mov r6,r4
	lds.l @r15+,pr
	mov 0x00,r7
	mov r0,r4
	mov 0x07,r5
	mov r7,r6
	mov.l @r15+,r13
	bra loc_8c01efec
	mov.l @r15+,r14

loc_8c01f1ce:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01f1d6:
	#data 0x0089 0x008a 0x0081
loc_8c01f1dc:
	#data bank04.loc_8c044f12 0xc154cccd 0xc1533333 0xc1500000
loc_8c01f1ec:
	#data 0xc3390000

;==============================================
loc_8c01f1f0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x0B,r5
	mov.l r12,@-r15
	mov 0x02,r6
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x00,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.l @(loc_8c01f34c,PC),r11
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(loc_8c01f342,PC),r0
	mov.b r10,@(r0,r14)
	mov 0x22,r0
	mov.b r10,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov r0,r13
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov 0x03,r5
	mov r10,r7
	bsr loc_8c01efec
	mov r13,r4
	mov.l r14,@(0x18,r13)
	mov r10,r13
	mov 0x04,r9

loc_8c01f22e:
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r11
	mov r14,r4
	mov r13,r6
	mov 0x04,r5
	mov r0,r12
	mov 0x00,r7
	bsr loc_8c01efec
	mov r0,r4
	add 0x01,r13
	cmp/ge r9,r13
	bf.s loc_8c01f22e
	mov.l r14,@(0x18,r12)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c01f280
	mov 0x0B,r5
	mov 0x02,r6
	jsr @r11
	mov r14,r4
	mov r0,r13
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov 0x05,r5
	mov 0x00,r7
	bsr loc_8c01efec
	mov r13,r4
	mov 0x26,r0
	fldi0 fr3
	mov 0x4E,r2
	mov.l r14,@(0x18,r13)
	mov.w r2,@(r0,r13)
	mov 0x74,r0
	fmov fr3,@(r0,r13)
	mov 0x10,r0
	mov.w r0,@(0x1C,r13)
	mov r10,r0
	nop
	mov.w r0,@(0x1E,r13)

loc_8c01f280:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01f290:
	mov.b @(0x4,r4),r0
	fldi0 fr3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c01f2c2
	mov.l @(0xA0,PC),r1
	mov 0x3C,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c01f2c2:
	mova @(loc_8c01f35c,PC),r0
	mov.l @(0x98,PC),r2
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r1
	add 0x64,r0
	mov.l @r2,r3
	extu.b r1,r1
	mov.l @r3,r3
	shll2 r1
	add r3,r1
	mov.l @(0x30,r1),r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8c01f2e6:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x03,r0
	bt.s loc_8c01f2fc
	mov r0,r5
	bra loc_8c01f2fe
	add 0x02,r5

loc_8c01f2fc:
	mov 0x06,r5

loc_8c01f2fe:
	mov.l @(0x60,PC),r3
	shll2 r5
	mov.l @r3,r0
	mov.l @r0,r0
	mov.l @(r0,r5),r2
	mov.w @(0x38,PC),r0
	rts
	mov.l r2,@(r0,r4)

;==============================================
loc_8c01f30e:
	mov.b @(0x4,r4),r0
	mov.w @(0x32,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.l @(0x18,r4),r3
	mov.w @(0x2C,PC),r0
	add r3,r2
	mov.l @(0x40,PC),r3
	mov.l r2,@(r0,r4)
	mov 0x20,r2
	add r4,r2
	mov.l @(0x3C,PC),r0
	mov.b @r2,r2
	extu.b r2,r2
	shll r2
	mov.w @(r0,r2),r1
	mov.l @r3,r0
	extu.w r1,r1
	mov.l @r0,r2
	shll2 r1
	add r2,r1
	mov.l @r1,r0
	mov.w @(0x6,PC),r1
	add r4,r1
	rts
	mov.l r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01f342:
	#data 0x012c 0x0084 0x0088 0x00c8
	#align4
loc_8c01f34c:
	#data bank04.loc_8c044f12 0xc0d75c29 0xc1600000 0x3dcccccd
loc_8c01f35c:
	#data 0x3f8f5c29 0x8c26a940 bank14.loc_8c147178

;==============================================
loc_8c01f368:
	mov.b @(0x4,r4),r0
	mov.w @(loc_8c01f486,PC),r2
	add 0x01,r0
	mov.l @(loc_8c01f490,PC),r1
	mov.b r0,@(0x4,r4)
	mov.l @(0x18,r4),r3
	mov.w @(0x110,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)
	add 0x08,r0
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xB4,r0
	mov 0x20,r2
	mov.l r3,@(r0,r4)
	mov.l @(0x18,r4),r0
	mov.b @(r0,r2),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c01f3a0
	mov 0x20,r0
	mov.l @(0xFC,PC),r1
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll2 r0
	bra loc_8c01f3ac
	fmov @(r0,r1),fr3

loc_8c01f3a0:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov.l @(0xF0,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr3

loc_8c01f3ac:
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mova @(0xE8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov 0x00,r3
	fmov fr3,@(r0,r4)
	mova @(loc_8c01f4a0,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	fldi0 fr3
	extu.b r0,r0
	add 0x01,r0
	shll2 r0
	shll2 r0
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	neg r0,r0
	add 0x05,r0
	shll2 r0
	shll2 r0
	mov.w r0,@(0x1E,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	rts
	mov.b r3,@(r0,r4

;==============================================
loc_8c01f3ec:
	mov.b @(0x4,r4),r0
	mov 0x26,r2
	mov.l @(loc_8c01f490,PC),r3
	add r4,r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @r2,r2
	mov.l @r3,r0
	extu.w r2,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r1
	mov.w @(0x82,PC),r0
	rts
	mov.l r1,@(r0,r4)

;==============================================
loc_8c01f40a:
	sts.l pr,@-r15
	add 0xE0,r15
	mov.w @(0x7A,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x90,PC),r3
	mov.l @(0x8C,PC),r4
	jsr @r3
	mov r15,r5
	mova @(loc_8c01f4b0,PC),r0
	mov.l @(0x9C,PC),r3
	fmov @r0,fr6
	mova @(0x90,PC),r0
	fmov @r0,fr5
	mov r15,r5
	mov.l @(0x80,PC),r4
	mova @(0x8C,PC),r0
	jsr @r3
	fmov @r0,fr4
	add 0x20,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c01f438:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c01f4c0,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01f44c:
	rts
	nop

;==============================================
loc_8c01f450:
	rts
	nop

;==============================================
loc_8c01f454:
	mov.l @(0x6C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c01f46e
	mov.l @(0x18,r4),r0
	mov 0x20,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c01f46e
	mov.w @(0x20,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)

loc_8c01f46e:
	rts
	nop

;==============================================
loc_8c01f472:
	mov.b @(0x5,r4),r0
	mov.l @(loc_8c01f490,PC),r5
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c01f4c8
	mov.l @r5,r6
	cmp/eq 0x01,r0
	bt loc_8c01f532
	bra loc_8c01f552
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01f486:
	#data 0x0088 0x00c8 0x0084 0x012c
	#align4
loc_8c01f490:
	#data 0x8c26a940 bank14.loc_8c147190 bank14.loc_8c147180 0x3f8ccccd
loc_8c01f4a0:
	#data 0xc1487ae1 0x8c213842 loc_8c01fd86 0xff000000
loc_8c01f4b0:
	#data 0x414ccccd 0x434d0000 0x42c40000 bank02.loc_8c02a53a
loc_8c01f4c0:
	#data bank14.loc_8c1471a0 0x8c212f20

;==============================================
loc_8c01f4c8:
	mov.l @(loc_8c01f5d8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf.s loc_8c01f4f6
	mov 0x02,r7
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c01f4e8
	mov.w @(loc_8c01f5d0,PC),r0
	mov.l @r6,r1
	mov.l @(r0,r1),r3
	add 0xB0,r0
	bra loc_8c01f4f0
	mov.l r3,@(r0,r4)

loc_8c01f4e8:
	mov.l @r6,r3
	mov.w @(0xE4,PC),r0
	mov.l @(0x20,r3),r1
	mov.l r1,@(r0,r4)

loc_8c01f4f0:
	mov r7,r0
	nop
	mov.b r0,@(0x5,r4)

loc_8c01f4f6:
	mov.l @(0xE4,PC),r2
	mov.b @r2,r3
	cmp/pz r3
	bt loc_8c01f552
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c01f51e
	mov.l @r5,r1
	mov.w @(0xC6,PC),r0
	mov.l @r1,r3
	mov.w @(0xC0,PC),r1
	mov.l @(r0,r3),r0
	add r4,r1
	mov.l r0,@r1
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)
	bra loc_8c01f52e
	mov 0x01,r0

loc_8c01f51e:
	mov.l @r5,r1
	mov.l @r1,r3
	mov.w @(0xAC,PC),r1
	mov.l @(0x24,r3),r0
	add r4,r1
	mov.l r0,@r1
	mov r7,r0
	nop

loc_8c01f52e:
	bra loc_8c01f552
	mov.b r0,@(0x5,r4)

;----------------------------------------------
loc_8c01f532:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01f552
	mov 0x20,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c01f552
	mov.l @r5,r3
	mov.w @(0x8A,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	add 0xB4,r0
	mov.l r1,@(r0,r4)

loc_8c01f552:
	rts
	nop

;==============================================
loc_8c01f556:
	mov.l @(loc_8c01f5d8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c01f5c8
	mov.l @(0x7C,PC),r1
	mov.b @r1,r3
	cmp/pz r3
	bf loc_8c01f5c8
	mov 0x22,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c01f59a
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01f5cc
	mov 0x20,r0
	fldi1 fr3
	mov.b @(r0,r4),r0
	mov 0x01,r3
	extu.b r0,r0
	add 0x01,r0
	shll2 r0
	shll2 r0
	mov.w r0,@(0x1C,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r2
	xor r3,r2
	mov.b r2,@(r0,r4)
	mov 0x74,r0
	bra loc_8c01f5cc
	fmov fr3,@(r0,r4)

loc_8c01f59a:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01f5cc
	mov 0x20,r0
	fldi0 fr3
	mov.b @(r0,r4),r0
	mov 0x01,r3
	extu.b r0,r0
	neg r0,r0
	add 0x05,r0
	shll2 r0
	shll2 r0
	mov.w r0,@(0x1E,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r2
	xor r3,r2
	mov.b r2,@(r0,r4)
	mov 0x74,r0
	bra loc_8c01f5cc
	fmov fr3,@(r0,r4)

loc_8c01f5c8:
	mov 0x02,r0
	mov.b r0,@(0x4,r4)

loc_8c01f5cc:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01f5d0:
	#data 0x00d4 0x0084 0x00cc 0x00d0
loc_8c01f5d8:
	#data 0x8c212f20 0x8c213705

;==============================================
loc_8c01f5e0:
	mov.w @(0x1E,r4),r0
	mov 0x05,r3
	cmp/ge r3,r0
	bt loc_8c01f620
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c01f620
	mov 0x74,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c01f6e6,PC),r0
	mov.l @(loc_8c01f6f0,PC),r1
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	mov.l @(0xF0,PC),r2
	shll r0
	mov.w @(r0,r1),r1
	mov.l @r2,r0
	extu.w r1,r1
	mov.l @r0,r3
	shll2 r1
	add r3,r1
	mov.l @r1,r0
	mov.w @(0xD0,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)

loc_8c01f620:
	rts
	nop

;==============================================
loc_8c01f624:
	rts
	nop

;==============================================
loc_8c01f628:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0xC4,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01f63c:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01f6e6,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c01f64a:
	mov.l @(0xB0,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c01f650:
	mov.l r14,@-r15
	mov 0x23,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov 0x06,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c01f672
	mov.l @(0x18,r14),r1
	mov 0x02,r4
	mov.b @(0x4,r1),r0
	extu.b r0,r0
	cmp/ge r4,r0
	bf loc_8c01f672
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)

loc_8c01f672:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(loc_8c01f700,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c01f682:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x7C,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c01f6de
	mov r0,r4
	mov.w @(loc_8c01f6e6,PC),r0
	mov 0x01,r3
	mov 0x00,r5
	mov.l @(0x68,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.l r2,@(0x10,r4)
	mov r4,r1
	mov.b r5,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r3
	add 0x50,r1
	mov.l @(0x58,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.l @(loc_8c01f710,PC),r3
	mov.b r5,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x2A,PC),r0
	mov.w @(0x26,PC),r1
	mov.l @(0x50,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x4C,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(0x20,PC),r0
	mov.l @r0,r1
	mov.w @(0x16,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(0xA,PC),r0
	mov.l r3,@(r0,r4)

loc_8c01f6de:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01f6e6:
	#data 0x012c 0x0084 0x0431 0x00cc 0x0390
loc_8c01f6f0:
	#data bank14.loc_8c1471c0 0x8c26a940 bank14.loc_8c1471cc bank04.loc_8c0450c0
loc_8c01f700:
	#data bank14.loc_8c1471ec bank04.loc_8c044f12 loc_8c01f71c bank14.loc_8c14715c
loc_8c01f710:
	#data bank12.loc_8c1294c8 bank14.loc_8c147168 bank12.loc_8c1294bc

;==============================================
loc_8c01f71c:
	mov.l r14,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.l @(loc_8c01f7d8,PC),r6
	mov.l @(loc_8c01f7d4,PC),r5
	mov.l r4,@r15
	mov.l @r6,r1
	mov r5,r0
	nop
	mov.l @(loc_8c01f7dc,PC),r3
	jsr @r3
	nop
	mov 0x63,r7
	mov r0,r4
	cmp/gt r7,r4
	bf loc_8c01f742
	mov r7,r4

loc_8c01f742:
	mov.l @r6,r1
	mov.w @(loc_8c01f7d0,PC),r7
	mov r5,r0
	nop
	mov.l @(loc_8c01f7e0,PC),r3
	jsr @r3
	nop
	mov r0,r1
	mov r7,r0
	nop
	mov.l @(loc_8c01f7dc,PC),r2
	jsr @r2
	nop
	mov.l @r6,r1
	mov r0,r5
	mov r7,r0
	nop
	mov.l @(loc_8c01f7e0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c01f7dc,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x3C,r0
	mov r15,r14
	mov.l r0,@-r15
	mov.l r5,@-r15
	add 0x04,r14
	mov.l @(loc_8c01f7e4,PC),r3
	mov r0,r6
	mov.l r4,@-r15
	mov.l @(loc_8c01f7e8,PC),r2
	mov.l r3,@-r15
	jsr @r2
	mov r14,r4
	add 0x10,r15
	mova @(loc_8c01f7ec,PC),r0
	mov.l @r15,r3
	fmov @r0,fr14
	mova @(loc_8c01f7f0,PC),r0
	fmov @r0,fr15
	mov 0x20,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf.s loc_8c01f7aa
	fmov fr15,fr4
	fmov fr14,fr6
	mova @(loc_8c01f7f4,PC),r0
	mov r14,r5
	mov 0xFF,r4
	bra loc_8c01f7be
	fmov @r0,fr5

loc_8c01f7aa:
	mova @(loc_8c01f7f8,PC),r0
	mov.l @r15,r3
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr14,fr6
	mov r14,r5
	fmov fr3,@(r0,r3)
	mova @(loc_8c01f7fc,PC),r0
	fmov @r0,fr5
	mov 0xFF,r4

loc_8c01f7be:
	mov.l @(loc_8c01f800,PC),r3
	jsr @r3
	nop
	add 0x14,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01f7d0:
	#data 0x0e10
	#align4
loc_8c01f7d4:
	#data 0x00034bc0
loc_8c01f7d8:
	#data 0x8c21528c
loc_8c01f7dc:
	#data bank12.loc_8c1291dc
loc_8c01f7e0:
	#data bank12.loc_8c12939c
loc_8c01f7e4:
	#data bank13.loc_8c1328fc
loc_8c01f7e8:
	#data bank12.loc_8c129740
loc_8c01f7ec:
	#data 0x4130a3d7
loc_8c01f7f0:
	#data 0x41a80000
loc_8c01f7f4:
	#data 0x43d78000
loc_8c01f7f8:
	#data 0x41333333
loc_8c01f7fc:
	#data 0x42d60000
loc_8c01f800:
	#data bank02.loc_8c02a53a

;==============================================
loc_8c01f804:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c01f96c,PC),r12
	mov.l @(loc_8c01f968,PC),r11
	bra loc_8c01f840
	add r12,r13

loc_8c01f81a:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c01f83c
	mov r0,r4
	mov 0x20,r0
	mov r13,r5
	mov 0x21,r1
	mov.l @(loc_8c01f970,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.b @r13,r2
	mov.b r2,@(r0,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@r1

loc_8c01f83c:
	add 0x02,r13
	add 0x01,r14

loc_8c01f840:
	mov r14,r3
	shll r3
	add r12,r3
	mov.b @r3,r2
	cmp/pz r2
	bt loc_8c01f81a
	lds.l @r15+,pr
	mov.l @(loc_8c01f974,PC),r2
	mov 0x07,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c01f85c:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c01f978,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c01f870:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01f95c
	mov 0x21,r0
	mov.l @(loc_8c01f97c,PC),r2
	mov.b @(r0,r4),r5
	mov r4,r1
	mov.b @(0x4,r4),r0
	add 0x34,r1
	extu.b r5,r5
	mov r5,r3
	shll r5
	add r3,r5
	add 0x01,r0
	shll2 r5
	mov.b r0,@(0x4,r4)
	add r2,r5
	mov.w @(loc_8c01f962,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @r5,r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c01f980,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c01f984,PC),r3
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8c01f990,PC),r0
	mov.l @(loc_8c01f98c,PC),r6
	fmov @r0,fr6
	mova @(loc_8c01f994,PC),r0
	fmov @r0,fr5
	mova @(loc_8c01f998,PC),r0
	fmov @r0,fr4
	mov r4,r3
	mov.b @(0x1,r5),r0
	add 0x40,r3
	mov.l @(loc_8c01f988,PC),r7
	extu.b r0,r0
	mov r0,r2
	shll r0
	add r2,r0
	shll2 r0
	mov.l @(r0,r6),r1
	lds r1,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r7,r2
	mov.l r2,@r3
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r6,r0
	mov.l @(0x4,r0),r2
	mov 0x44,r0
	lds r2,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r7,r3
	mov.l r3,@(r0,r4)
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r6
	mov.l @(0x8,r6),r2
	mov 0x48,r0
	lds r2,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r7,r3
	mov.l r3,@(r0,r4)
	mov.b @(0x2,r5),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	mov.l @(loc_8c01f99c,PC),r2
	add r3,r0
	mov.l @(loc_8c01f984,PC),r3
	shll2 r0
	mov r4,r1
	add 0x50,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c01f964,PC),r0
	mov.l @(0x8,r5),r2
	mov.l @(loc_8c01f9a0,PC),r3
	mov.l r2,@(r0,r4)
	mov.l @r3,r0
	mov.l @(0x4,r5),r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r1
	mov.w @(loc_8c01f966,PC),r0
	mov.l r1,@(r0,r4)

loc_8c01f95c:
	lds.l @r15+,pr
	rts
	nop


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01f962:
	#data 0x012c
loc_8c01f964:
	#data 0x00cc
loc_8c01f966:
	#data 0x0084
	#align4
loc_8c01f968:
	#data bank04.loc_8c044f12
loc_8c01f96c:
	#data bank14.loc_8c1472c8
loc_8c01f970:
	#data loc_8c01f85c
loc_8c01f974:
	#data loc_8c01b276
loc_8c01f978:
	#data bank14.loc_8c1472e4
loc_8c01f97c:
	#data bank14.loc_8c1471fc
loc_8c01f980:
	#data bank14.loc_8c14725c
loc_8c01f984:
	#data bank12.loc_8c1294c8
loc_8c01f988:
	#data 0x0000ffff
loc_8c01f98c:
	#data bank14.loc_8c14728c
loc_8c01f990:
	#data 0x47800000
loc_8c01f994:
	#data 0x43b40000
loc_8c01f998:
	#data 0x3f000000
loc_8c01f99c:
	#data bank14.loc_8c1472a4
loc_8c01f9a0:
	#data 0x8c26a940

;==============================================
loc_8c01f9a4:
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c01f9f8
	mov 0x00,r4
	mov.b @(0x4,r14),r0
	mov 0x01,r3
	mov.w @(loc_8c01fa9e,PC),r2
	mov r14,r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add 0x50,r1
	mov.w @(loc_8c01fa9c,PC),r0
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.l r2,@(r0,r14)
	mov.l @(loc_8c01fab0,PC),r3
	mov.l @(loc_8c01faac,PC),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01fab4,PC),r2
	mov r14,r1
	mov.l @(loc_8c01fab0,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01fab8,PC),r0
	mov.l @r0,r1
	mov.w @(loc_8c01faa0,PC),r0
	mov.l @r1,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c01faa2,PC),r0
	mov.l r3,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x74,r0
	fldi1 fr3
	fmov fr3,@(r0,r14)

loc_8c01f9f8:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8c01faa4,PC),r3
	add 0x09,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c01fa0c
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c01fa0c:
	mova @(loc_8c01fabc,PC),r0
	mov.l @(loc_8c01facc,PC),r2
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8c01fac0,PC),r0
	mov.l @(loc_8c01fac8,PC),r3
	fmov @r0,fr2
	mova @(loc_8c01fac4,PC),r0
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
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.w @(loc_8c01faa6,PC),r0
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov fr2,@(r0,r14)
	mov 0x78,r0
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01fa4e:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf.s loc_8c01fa82
	mov 0x01,r6
	mov.b @(0x4,r4),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c01fa9c,PC),r0
	mov.b r6,@(r0,r4)
	mov r5,r0
	nop
	mov.l @(loc_8c01fab8,PC),r1
	mov 0x20,r3
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8c01faa8,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @r1,r2
	mov.w @(loc_8c01faaa,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8c01faa2,PC),r0
	mov.l r3,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)

loc_8c01fa82:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	tst r6,r0
	bt loc_8c01fa94
	mova @(loc_8c01fad0,PC),r0
	bra loc_8c01fa96
	fmov @r0,fr3

loc_8c01fa94:
	fldi1 fr3

loc_8c01fa96:
	mov 0x74,r0
	rts
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01fa9c:
	#data 0x012c
loc_8c01fa9e:
	#data 0x0411
loc_8c01faa0:
	#data 0x02bc
loc_8c01faa2:
	#data 0x0084
loc_8c01faa4:
	#data 0x0168
loc_8c01faa6:
	#data 0x0080
loc_8c01faa8:
	#data 0x00cc
loc_8c01faaa:
	#data 0x0488
	#align4
loc_8c01faac:
	#data bank14.loc_8c1472bc
loc_8c01fab0:
	#data bank12.loc_8c1294c8
loc_8c01fab4:
	#data bank14.loc_8c1472f8
loc_8c01fab8:
	#data 0x8c26a940
loc_8c01fabc:
	#data 0x3f000000
loc_8c01fac0:
	#data 0x47800000
loc_8c01fac4:
	#data 0x43b40000
loc_8c01fac8:
	#data 0x0000ffff
loc_8c01facc:
	#data bank11.loc_8c11e2e0
loc_8c01fad0:
	#data 0x3f4ccccd

;==============================================
loc_8c01fad4:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c01fb18
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	mov.l @(loc_8c01fb28,PC),r2
	mov r4,r1
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	add 0x34,r1
	mov.w @(loc_8c01fb1e,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x03,r3
	mov.w @(loc_8c01fb20,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c01fb2c,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c01fb34,PC),r2
	mov.l @(loc_8c01fb30,PC),r0
	mov.b @r2,r3
	mov.l @r0,r1
	mov 0x07,r0
	sub r3,r0
	mov.l @r1,r3
	shll2 r0
	mov.w @(loc_8c01fb22,PC),r1
	add r3,r0
	mov.l @(r0,r1),r1
	mov.w @(loc_8c01fb24,PC),r0
	mov.l r1,@(r0,r4)

loc_8c01fb18:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01fb1e:
	#data 0x012c
loc_8c01fb20:
	#data 0x00cc
loc_8c01fb22:
	#data 0x01b0
loc_8c01fb24:
	#data 0x0084
	#align4
loc_8c01fb28:
	#data bank14.loc_8c147304
loc_8c01fb2c:
	#data bank12.loc_8c1294c8
loc_8c01fb30:
	#data 0x8c26a940
loc_8c01fb34:
	#data 0x8c213b08

;==============================================
loc_8c01fb38:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xC0,r15
	mov.l @(loc_8c01fc98,PC),r3
	mov r15,r12
	mov.l @(loc_8c01fc9c,PC),r2
	add 0x20,r12
	mov.l r3,@-r15
	mov.l @(loc_8c01fc94,PC),r10
	mov.l r2,@-r15
	jsr @r10
	mov r12,r4
	mova @(loc_8c01fca4,PC),r0
	mov.l @(loc_8c01fca0,PC),r11
	fmov @r0,fr15
	mova @(loc_8c01fca8,PC),r0
	fmov @r0,fr5
	mova @(loc_8c01fcac,PC),r0
	mov r12,r5
	mov 0xFF,r4
	fmov fr15,fr6
	jsr @r11
	fmov @r0,fr4
	mov.l @(loc_8c01fcb0,PC),r3
	mov.l @(loc_8c01fc9c,PC),r2
	mov.l r3,@-r15
	mov.l r2,@-r15

	jsr @r10
	mov r12,r4
	mov r15,r14
	add 0x10,r14
	mov r14,r5
	bsr loc_8c01fd86
	mov r12,r4

	mova @(loc_8c01fcb4,PC),r0
	mov r14,r5
	fmov @r0,fr5
	mova @(loc_8c01fcb8,PC),r0
	mov 0xFF,r4
	fmov fr15,fr6
	jsr @r11
	fmov @r0,fr4
	mov.l @(loc_8c01fcc4,PC),r0
	mov.l @(loc_8c01fcc0,PC),r2
	mov.w @r0,r1
	mov.w @r2,r3
	mov.l @(loc_8c01fcbc,PC),r9
	add r1,r3
	mov.l r3,@-r15
	mov.l r9,@-r15
	jsr @r10
	mov r12,r4
	mov r14,r5
	bsr loc_8c01fd86
	mov r12,r4
	mova @(loc_8c01fcc8,PC),r0
	mov.l @(loc_8c01fcd0,PC),r13
	fmov @r0,fr14
	mova @(loc_8c01fccc,PC),r0
	fmov @r0,fr13
	mov r14,r5
	fmov fr15,fr6
	mov r13,r4
	fmov fr14,fr5
	jsr @r11
	fmov fr13,fr4
	mov.l @(loc_8c01fcc0,PC),r2
	mov.w @r2,r3
	mov.l r3,@-r15
	mov.l r9,@-r15
	jsr @r10
	mov r12,r4
	mov r14,r5
	bsr loc_8c01fd86
	mov r12,r4
	mova @(loc_8c01fcd4,PC),r0
	fmov fr15,fr6
	fmov @r0,fr12
	mov r14,r5
	fmov fr14,fr5
	mov r13,r4
	jsr @r11
	fmov fr12,fr4
	mov.l @(loc_8c01fcc4,PC),r2
	mov.w @r2,r3
	mov.l r3,@-r15
	mov.l r9,@-r15
	jsr @r10
	mov r12,r4
	mov r14,r5
	bsr loc_8c01fd86
	mov r12,r4
	fmov fr14,fr5
	mova @(loc_8c01fcd8,PC),r0
	fmov fr15,fr6
	mov r14,r5
	mov r13,r4
	jsr @r11
	fmov @r0,fr4
	mov.l @(loc_8c01fce0,PC),r0
	mov.l @(loc_8c01fcdc,PC),r2
	mov.w @r0,r1
	mov.w @r2,r3
	add r1,r3
	mov.l r3,@-r15
	mov.l r9,@-r15
	jsr @r10
	mov r12,r4
	mov r14,r5
	bsr loc_8c01fd86
	mov r12,r4
	mova @(loc_8c01fce4,PC),r0
	fmov fr15,fr6
	fmov @r0,fr14
	mov r14,r5
	mov r13,r4
	fmov fr14,fr5
	jsr @r11
	fmov fr13,fr4
	mov.l @(loc_8c01fcdc,PC),r2
	mov.w @r2,r3
	mov.l r3,@-r15
	mov.l r9,@-r15
	jsr @r10
	mov r12,r4
	mov r14,r5
	bsr loc_8c01fd86
	mov r12,r4
	fmov fr15,fr6
	mov r14,r5
	fmov fr14,fr5
	mov r13,r4
	jsr @r11
	fmov fr12,fr4
	mov.l @(loc_8c01fce0,PC),r3
	mov.w @r3,r2
	mov.l r2,@-r15
	mov.l r9,@-r15
	jsr @r10
	mov r12,r4
	add 0x40,r15
	mov r14,r5
	bsr loc_8c01fd86
	mov r12,r4
	fmov fr14,fr5
	mova @(loc_8c01fcd8,PC),r0
	fmov fr15,fr6
	mov r14,r5
	mov r13,r4
	jsr @r11
	fmov @r0,fr4
	mov.l @(loc_8c01fce8,PC),r3
	mov r12,r5
	bsr loc_8c01fe1c
	mov.l @r3,r4
	mova @(loc_8c01fcec,PC),r0
	mov.w @(loc_8c01fc90,PC),r4
	fmov @r0,fr14
	mova @(loc_8c01fcf0,PC),r0
	fmov @r0,fr15
	mov r12,r5
	bra loc_8c01fcf4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01fc90:
	#data 0xa00a
	#align4
loc_8c01fc94:
	#data bank12.loc_8c129740
loc_8c01fc98:
	#data 0x8c21384a
loc_8c01fc9c:
	#data bank13.loc_8c13290c
loc_8c01fca0:
	#data bank02.loc_8c02a53a
loc_8c01fca4:
	#data 0x413e8f5c
loc_8c01fca8:
	#data 0x42180000
loc_8c01fcac:
	#data 0x43dc0000
loc_8c01fcb0:
	#data 0x8c213842
loc_8c01fcb4:
	#data 0x43830000
loc_8c01fcb8:
	#data 0x42a00000
loc_8c01fcbc:
	#data bank13.loc_8c132910
loc_8c01fcc0:
	#data 0x8c213b90
loc_8c01fcc4:
	#data 0x8c213b92
loc_8c01fcc8:
	#data 0x42e80000
loc_8c01fccc:
	#data 0x42780000
loc_8c01fcd0:
	#data 0xff0affff
loc_8c01fcd4:
	#data 0x43300000
loc_8c01fcd8:
	#data 0x438e0000
loc_8c01fcdc:
	#data 0x8c2152a0
loc_8c01fce0:
	#data 0x8c2152a2
loc_8c01fce4:
	#data 0x43480000
loc_8c01fce8:
	#data 0x8c213af8
loc_8c01fcec:
	#data 0x41673333
loc_8c01fcf0:
	#data 0x43a60000

;==============================================
loc_8c01fcf4:
	mova @(loc_8c01fdec,PC),r0
	fmov fr15,fr5
	fmov fr14,fr6
	jsr @r11
	fmov @r0,fr4
	mov.l @(loc_8c01fdf0,PC),r3
	mov r12,r5
	bsr loc_8c01fe1c
	mov.l @r3,r4
	mov.w @(loc_8c01fde4,PC),r4
	mova @(loc_8c01fdf4,PC),r0
	fmov fr15,fr5
	mov r12,r5
	fmov fr14,fr6
	jsr @r11
	fmov @r0,fr4
	mov.l @(loc_8c01fdfc,PC),r3
	mov.w @(loc_8c01fde6,PC),r0
	mov.l @(loc_8c01fdf8,PC),r2
	jsr @r3
	mov.l @r2,r1
	mov.w @(loc_8c01fde8,PC),r5
	mov r0,r4
	cmp/gt r5,r4
	bf loc_8c01fd28
	mov r5,r4

loc_8c01fd28:
	mov.l r4,@-r15
	mov.l r9,@-r15
	jsr @r10
	mov r12,r4
	mova @(loc_8c01fe00,PC),r0
	fmov fr14,fr6
	fmov @r0,fr15
	mova @(loc_8c01fe04,PC),r0
	mov r12,r5
	mov 0xFF,r4
	fmov fr15,fr5
	jsr @r11
	fmov @r0,fr4
	mov.l @(loc_8c01fe08,PC),r3
	mov.w @(loc_8c01fde6,PC),r0
	mov.l @(loc_8c01fdf8,PC),r2
	jsr @r3
	mov.l @r2,r1
	mov.l @(loc_8c01fdfc,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x3C,r0
	mov.l @(loc_8c01fe0c,PC),r1
	mov.l r0,@-r15
	mov.l r1,@-r15
	jsr @r10
	mov r12,r4
	fmov fr15,fr5
	mova @(loc_8c01fe10,PC),r0
	fmov fr14,fr6
	mov r12,r5
	mov 0xFF,r4
	jsr @r11
	fmov @r0,fr4
	add 0x50,r15
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
loc_8c01fd86:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c01fe14,PC),r3
	mov r5,r13
	mov.l r4,@r15
	jsr @r3
	mov r4,r14
	mov.w @(loc_8c01fdea,PC),r12
	mov r0,r4
	mov.l @(loc_8c01fe18,PC),r11
	cmp/pl r4
	bf.s loc_8c01fdd2
	mov 0x00,r6

loc_8c01fda8:
	mov.b @r14+,r5
	mov r5,r3
	tst r12,r3
	bf.s loc_8c01fdcc
	add 0x01,r6
	add 0xE0,r5
	mov r5,r7
	shll2 r7
	add r11,r7
	mov.l @r7,r2
	mov.b @r2,r1
	mov.b r1,@r13
	add 0x01,r13
	mov.l @r7,r2
	mov.b @(0x1,r2),r0
	mov.b r0,@r13
	bra loc_8c01fdce
	add 0x01,r13

loc_8c01fdcc:
	add 0x01,r14

loc_8c01fdce:
	cmp/ge r4,r6
	bf loc_8c01fda8

loc_8c01fdd2:
	mov 0x00,r3
	mov.b r3,@r13
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01fde4:
	#data 0xa00a
loc_8c01fde6:
	#data 0x0e10
loc_8c01fde8:
	#data 0x270f
loc_8c01fdea:
	#data 0x0080
	#align4
loc_8c01fdec:
	#data 0x43160000
loc_8c01fdf0:
	#data 0x8c213b00
loc_8c01fdf4:
	#data 0x43e10000
loc_8c01fdf8:
	#data 0x8c213b04
loc_8c01fdfc:
	#data bank12.loc_8c1291dc
loc_8c01fe00:
	#data 0x43c80000
loc_8c01fe04:
	#data 0x43460000
loc_8c01fe08:
	#data bank12.loc_8c12939c
loc_8c01fe0c:
	#data bank13.loc_8c132914
loc_8c01fe10:
	#data 0x43960000
loc_8c01fe14:
	#data bank12.loc_8c1297c4
loc_8c01fe18:
	#data bank14.loc_8c147310

;==============================================
loc_8c01fe1c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov.l @(loc_8c01ff2c,PC),r5
	cmp/gt r5,r4
	bf.s loc_8c01fe32
	mov r4,r14
	mov r5,r14

loc_8c01fe32:
	bsr loc_8c01fe8e
	mov r14,r4
	mov.l @(loc_8c01ff30,PC),r3
	mov r0,r14
	mov.l @(loc_8c01ff34,PC),r2
	mov.l r3,@-r15
	jsr @r2
	mov.l @(0x4,r15),r4
	add 0x04,r15
	mov.l @r15,r5
	mov 0x09,r7
	mov.l @(loc_8c01ff38,PC),r12
	mov 0x2C,r6
	mov 0x0F,r13
	mov 0x00,r4
	add 0x08,r5

loc_8c01fe52:
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bt loc_8c01fe62
	mov r4,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c01fe68

loc_8c01fe62:
	mov.b r6,@r5
	bra loc_8c01fe7c
	add 0xFF,r5

loc_8c01fe68:
	mov r14,r0
	nop
	and r13,r0
	mov 0xFC,r3
	mov.b @(r0,r12),r2
	shad r3,r14
	tst r14,r14
	mov.b r2,@r5
	bt.s loc_8c01fe82
	add 0xFF,r5

loc_8c01fe7c:
	add 0x01,r4
	cmp/ge r7,r4
	bf loc_8c01fe52

loc_8c01fe82:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c01fe8e:
	mov 0x00,r5
	sts.l pr,@-r15
	mov r5,r6
	mov r5,r7
	mov 0x0A,r5

loc_8c01fe98:
	mov r4,r1
	mov r5,r0
	nop
	mov.l @(loc_8c01ff3c,PC),r3
	jsr @r3
	nop
	shad r6,r0
	add 0x04,r6
	add r0,r7
	mov r5,r0
	nop
	mov.l @(loc_8c01ff40,PC),r2
	jsr @r2
	mov r4,r1
	tst r0,r0
	bf.s loc_8c01fe98
	mov r0,r4
	lds.l @r15+,pr
	rts
	mov r7,r0

;==============================================
loc_8c01fec0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c01ff44,PC),r3
	mov.l r4,@(0x4,r15)
	jsr @r3
	mov.l r4,@r15
	mov.l @r15,r9
	mov r0,r14
	mova @(loc_8c01ff48,PC),r0
	fmov @r0,fr15
	mov 0x00,r4
	add r14,r9
	mov r4,r12
	mov r4,r11
	add 0xFF,r9
	mov 0x30,r8
	bra loc_8c01ff6e
	mov r4,r13

loc_8c01fef6:
	mov.w @(loc_8c01ff28,PC),r3
	mov.b @r9,r10
	tst r10,r3
	bf.s loc_8c01ff76
	add 0xFF,r9
	mov r10,r0
	nop
	cmp/eq 0x2C,r0
	bt loc_8c01ff6c
	mov r10,r0
	nop
	cmp/eq 0x20,r0
	bf loc_8c01ff14
	bra loc_8c01ff1e
	mov r8,r10

loc_8c01ff14:
	cmp/ge r8,r10
	bf loc_8c01ff76
	mov 0x39,r3
	cmp/gt r3,r10
	bt loc_8c01ff76

loc_8c01ff1e:
	tst r13,r13
	bf.s loc_8c01ff4c
	add 0xD0,r10
	bra loc_8c01ff6a
	add r10,r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c01ff28:
	#data 0x0080
	#align4
loc_8c01ff2c:
	#data 0x0098967f
loc_8c01ff30:
	#data bank13.loc_8c132918
loc_8c01ff34:
	#data bank12.loc_8c129740
loc_8c01ff38:
	#data bank14.loc_8c147490
loc_8c01ff3c:
	#data bank12.loc_8c1292d4
loc_8c01ff40:
	#data bank12.loc_8c129128
loc_8c01ff44:
	#data bank12.loc_8c1297c4
loc_8c01ff48:
	#data 0x41200000

;==============================================
loc_8c01ff4c:
	lds r10,fpul
	mov.l @(loc_8c01ff90,PC),r3
	float fpul,fr3
	lds r13,fpul
	float fpul,fr2
	fmov fr3,fr12
	fmov fr2,fr5
	jsr @r3
	fmov fr15,fr4
	lds r12,fpul
	fmul fr0,fr12
	float fpul,fr3
	fadd fr12,fr3
	ftrc fr3,fpul
	sts fpul,r12

loc_8c01ff6a:
	add 0x01,r13

loc_8c01ff6c:
	add 0x01,r11

loc_8c01ff6e:
	cmp/ge r14,r11
	bf loc_8c01fef6
	bra loc_8c01ff78
	mov r12,r0

loc_8c01ff76:
	mov 0xFF,r0

loc_8c01ff78:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
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
loc_8c01ff90:
	#data bank11.loc_8c11e680

;==============================================
loc_8c01ff94:
	sts.l pr,@-r15
	mov.l @(loc_8c020030,PC),r3
	mov.l r4,@-r15
	jsr @r3
	mov 0x0B,r4
	bsr loc_8c01ffbc
	mov 0x3B,r4
	bsr loc_8c01ffbc
	mov 0x3C,r4
	mov.l @(loc_8c020034,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r4
	bsr loc_8c01ffbc
	extu.b r4,r4
	mov.l @(loc_8c02003c,PC),r4
	mov.l @(loc_8c020038,PC),r5
	add 0x04,r15
	mov.l @(loc_8c020040,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c01ffbc:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c020044,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c02001c
	mov r0,r4
	mov.w @(loc_8c020028,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c020048,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c02004c,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l @r3,r0
	mov.l @r15,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(loc_8c020054,PC),r3
	mov.l @(r0,r2),r2
	mov.w @(loc_8c02002a,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x23,r0
	mov.l @r15,r1
	mov.w @(loc_8c02002c,PC),r2
	mov.b r1,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8c02002e,PC),r0
	add 0x34,r1
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c020050,PC),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c020058,PC),r2
	mov r4,r1
	mov.l @(loc_8c020054,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c02005c,PC),r2
	mov r4,r1
	mov.l @(loc_8c020060,PC),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c02001c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c020024:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c020028:
	#data 0x012c
loc_8c02002a:
	#data 0x0084
loc_8c02002c:
	#data 0x0431
loc_8c02002e:
	#data 0x00cc
	#align4
loc_8c020030:
	#data bank04.loc_8c044e56
loc_8c020034:
	#data bank14.loc_8c1474c4
loc_8c020038:
	#data 0xff800000
loc_8c02003c:
	#data 0xff00003c
loc_8c020040:
	#data bank02.loc_8c02dc32
loc_8c020044:
	#data bank04.loc_8c044f12
loc_8c020048:
	#data loc_8c020024
loc_8c02004c:
	#data 0x8c26a940
loc_8c020050:
	#data bank14.loc_8c14749c
loc_8c020054:
	#data bank12.loc_8c1294c8
loc_8c020058:
	#data bank14.loc_8c1474a8
loc_8c02005c:
	#data bank14.loc_8c1474b4
loc_8c020060:
	#data bank12.loc_8c1294bc
