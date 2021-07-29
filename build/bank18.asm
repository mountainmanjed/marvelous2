loc_8c1801F4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	cmp/eq 0x03,r0
	bf loc_8c180208
	bsr bank17.loc_8c17fea8
	mov r14,r4
	bra loc_8c180238
	nop

loc_8c180208:
	cmp/eq 0x01,r0
	bf loc_8c180214
	bsr bank17.loc_8c17FBCC
	mov r14,r4
	bra loc_8c180238
	nop

loc_8c180214:
	mov.b @(0x01,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180222
	bsr bank17.loc_8c17FDD6
	mov r14,r4
	bra loc_8c180238
	nop

loc_8c180222:
	cmp/eq 0x04,r0
	bf loc_8c18022E
	bsr bank17.loc_8c17FF0E
	mov r14,r4
	bra loc_8c180238
	nop

loc_8c18022e:
	mov.b @(0x01,r14),r0 
	cmp/eq 0x05,r0 
	bf loc_8c180238
	bsr bank17.loc_8c17ffb8
	mov r14,r4

loc_8c180238:
	lds.l @r15+,pr
	mov r14,r4
	bra bank17.loc_8c180044
	mov.l @r15+,r14

loc_8c180240:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1802C0,pc),r4 ; r4 set to 0x8C32FE78
	mov.w @(loc_8c1802B2,pc),r6 ; r6 set to 0x300
	mov.l @(loc_8c1802BC,pc),r14 ; r14 set to 0x8C129728
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802C4,pc),r4 ; r4 set to 0x8C330178
	mov.w @(loc_8c1802B4,pc),r6 ; r6 set to 0x400
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802C8,pc),r4 ; r4 set to 0x8C33057C
	mov.w @(loc_8c1802B8,pc),r5 ; r5 set to 0xFF
	mov.w @(loc_8c1802B6,pc),r6 ; r6 set to 0x1000
	jsr @r14
	nop
	mov.l @(loc_8c1802CC,pc),r4 ; r4 set to 0x8C33157C
	mov 0x20,r6 ; r6 set to 0x20
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802D4,pc),r0 ; r0 set to 0x8C330578
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c1802D0,pc),r2 ; r2 set to 0x8C33159C
	mov r3,r1 ; r1 set to 0x00
	mov.l r3,@r2 ; r2 ??
	mov.l r3,@r0 ; r0 ??
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18027A:
	mov.l r14,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c1802D4,pc),r2 ; r2 set to 0x8C330578
	mov r3,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802D0,pc),r0 ; r0 set to 0x8C33159C
	sts.l pr,@-r15
	mov.l @(loc_8c1802BC,pc),r14 ; r14 set to 0x8C129728
	mov.l @(loc_8c1802CC,pc),r4 ; r4 set to 0x8C33157C
	mov.l r3,@r2 ; r2 ??
	mov.l r3,@r0 ; r0 ??
	jsr @r14
	mov 0x20,r6 ; r6 set to 0x20
	mov.l @(loc_8c1802C8,pc),r4 ; r4 set to 0x8C33057C
	mov.w @(loc_8c1802B8,pc),r5 ; r5 set to 0xFF
	mov.w @(loc_8c1802B6,pc),r6 ; r6 set to 0x1000
	jsr @r14
	nop
	mov.l @(loc_8c1802C4,pc),r4 ; r4 set to 0x8C330178
	mov.w @(loc_8c1802B4,pc),r6 ; r6 set to 0x400
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802C0,pc),r4 ; r4 set to 0x8C32FE78
	mov.w @(loc_8c1802B2,pc),r6 ; r6 set to 0x300
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1802B2:
	#data 0x0300
loc_8c1802B4:
	#data 0x0400
loc_8c1802B6:
	#data 0x1000
loc_8c1802B8:
	#data 0x00FF
	#align4

loc_8c1802BC:
	#data bank12.loc_8c129728
loc_8c1802C0:
	#data 0x8C32FE78
loc_8c1802C4:
	#data 0x8C330178
loc_8c1802C8:
	#data 0x8C33057C
loc_8c1802CC:
	#data 0x8C33157C
loc_8c1802D0:
	#data 0x8C33159C
loc_8c1802D4:
	#data 0x8C330578

;==============================================
loc_8c1802d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0xE0,PC),r13
	mov.w @(0xD6,PC),r2
	mov.l @r13,r3
	cmp/pz r3
	bf loc_8c1802ea
	bra loc_8c1802f4
	and r2,r3

loc_8c1802ea:
	not r3,r3
	add 0x01,r3
	and r2,r3
	not r3,r3
	add 0x01,r3

loc_8c1802f4:
	mov r3,r14
	mov.l r3,@r13
	mov.l @(0xC8,PC),r3
	mov r4,r1
	shll2 r14
	shll r1
	tst r5,r5
	shll2 r14
	bf/s loc_8c180310
	add r3,r14
	mov.l @(0xBC,PC),r0
	mov.w @(r0,r1),r2
	add 0x01,r2
	mov.w r2,@(r0,r1)

loc_8c180310:
	mov r5,r0
	mov 0x02,r2
	add r14,r2
	mov.b r4,@r14
	mov.b r0,@(0x1,r14)
	mov.l @(0xAC,PC),r0
	mov.w @(r0,r1),r3
	mov.w r3,@r2
	mov.l r6,@(0x4,r14)
	mov.l r7,@(0x8,r14)
	mov.l @(0x8,r15),r3
	mov.l r3,@(0xC,r14)
	mov.l @r13,r2
	add 0x01,r2
	mov.l r2,@r13
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180334:
	mov.l @(0x94,PC),r4

loc_8c180336:
	dt r4
	bf loc_8c180336
	rts 
	nop

;==============================================
loc_8c18033e:
	sts.l pr,@-r15
	cmp/pz r4
	bf loc_8c18034a
	mov.w @(0x72,PC),r2
	cmp/ge r2,r4
	bf loc_8c180356

loc_8c18034a:
	mov.l @(0x88,PC),r2
	mov.l @(0x80,PC),r4
	jsr @r2
	nop 
	bra loc_8c180362
	nop 

loc_8c180356:
	tst r5,r5
	bf loc_8c180368
	mov.l @(0x78,PC),r3
	mov.l @(0x78,PC),r4
	jsr @r3
	nop 

loc_8c180362:
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

loc_8c180368:
	mov 0x00,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180370:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x5C,PC),r11
	mov 0x00,r12
	mov.l @(0x5C,PC),r13
	mov r4,r10
	mov.w @(0x32,PC),r14
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)

loc_8c18038c:
	mov.l @r15,r5
	mov.l @(0x4,r15),r6
	bsr loc_8c180b3c
	mov r10,r4
	mov r0,r4
	cmp/pl r4
	bt loc_8c1803b0
	jsr @r13
	nop 
	jsr @r11
	nop 
	bsr loc_8c180d4c
	nop 
	bsr loc_8c180334
	nop 
	add 0x01,r12
	cmp/ge r14,r12
	bf loc_8c18038c

loc_8c1803b0:
	cmp/eq r14,r12
	bf loc_8c1803e4
	bra loc_8c180416
	mov 0x00,r0


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1803b8:
	#data 0x00FF
loc_8c1803ba:
	#data 0x0100
loc_8c1803bc:
	#data 0x2710
	#align4

loc_8c1803c0:
	#data 0x8C33159C
loc_8c1803c4:
	#data 0x8C33057C
loc_8c1803c8:
	#data 0x8C33157C
loc_8c1803cc:
	#data 0x0000C350
loc_8c1803D0:
	#data bank1c.loc_8c1c4CF4
loc_8c1803D4:
	#data bank17.loc_8c17EB7A
loc_8c1803D8:
	#data bank1c.loc_8c1c4D28
loc_8c1803DC:
	#data bank17.loc_8c17F918
loc_8c1803E0:
	#data bank17.loc_8c177254

;==============================================
loc_8c1803e4:
	mov 0x00,r12

loc_8c1803e6:
	jsr @r13
	nop 
	jsr @r11
	nop 
	bsr loc_8c180d4c
	nop 
	bsr loc_8c180ecc
	mov r10,r4
	cmp/eq 0x03,r0
	bt loc_8c180404
	bsr loc_8c180334
	nop 
	add 0x01,r12
	cmp/ge r14,r12
	bf loc_8c1803e6

loc_8c180404:
	mov r10,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c180eb0
	mov.l @r15+,r14

loc_8c180416:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c180426:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov r6,r14
	mov r5,r9
	mov r14,r5
	mov.l r4,@(0x4,r15)
	mov.l r7,@(0x14,r15)
	bsr loc_8c18033e
	mov.l @(0x4,r15),r4
	mov r0,r12
	cmp/pz r12
	bt loc_8c180450
	bra loc_8c1805b4
	nop 

loc_8c180450:
	mov.l @(0x9C,PC),r2
	mov r15,r5
	add 0x08,r5
	jsr @r2
	mov r9,r4
	cmp/pz r0
	bt loc_8c180464
	mov.l @(0x94,PC),r4
	bra loc_8c180476
	mov r9,r5

loc_8c180464:
	mov r15,r5
	add 0x18,r5
	bsr loc_8c180890
	mov r9,r4
	tst r0,r0
	bf/s loc_8c180480
	mov.l r0,@(0x10,r15)
	mov.l @(0x84,PC),r4
	mov r9,r5

loc_8c180476:
	mov.l @(0x84,PC),r2
	jsr @r2
	nop 
	bra loc_8c1805b6
	mov 0xFF,r0

loc_8c180480:
	mov.l @(0x7C,PC),r3
	mov 0x00,r5
	mov 0xFF,r12
	mov 0x18,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x4,r15),r2
	mov 0x00,r13
	mov.l @(0x70,PC),r0
	shll2 r2
	mov.l @(0x70,PC),r8
	mov.l r14,@(r0,r2)
	mov r13,r2
	mov r2,r11
	mov 0x12,r0
	mov.l r13,@r14
	mov.l @(0x8,r15),r3
	mov.l r3,@(0x8,r14)
	mov r14,r3
	add 0x14,r3
	mov.b r13,@(r0,r14)
	mov.l r3,@(0xC,r15)
	add 0x02,r3
	mov.l r3,@(0x20,r15)
	mov 0xE0,r3
	mov.l r2,@(0x4,r15)
	and r3,r8
	mov.l r2,@(0xC,r14)
	mov r8,r2
	add 0x04,r2
	mov r8,r1
	add 0x08,r1
	mov.l r2,@r15
	bra loc_8c18058e
	mov.l r1,@(0x1C,r15)

loc_8c1804c6:
	mov 0x01,r5
	mov r8,r6
	bsr loc_8c180370
	mov.l @(0x10,r15),r4
	cmp/pl r0
	bf loc_8c18058c
	mov.l @(0xC,r14),r3
	mov.w @(0x16,PC),r6
	tst r3,r3
	bf loc_8c180548
	mov.l @r15,r3
	mov.l @(0x2C,PC),r4
	mov.l @r3,r2
	cmp/gt r4,r2
	bf loc_8c180510
	mov.l @r15,r1
	mov.l r4,@r1
	mov 0xFC,r4
	bra loc_8c1805a2
	mov r4,r12


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1804ee:
	#data 0x0800
	#align4

loc_8c1804F0:
	#data bank17.loc_8c17F9BA
loc_8c1804F4:
	#data bank1c.loc_8c1c4D54
loc_8c1804F8:
	#data bank1c.loc_8c1c4D8C
loc_8c1804FC:
	#data bank17.loc_8c17EB7A
loc_8c180500:
	#data bank12.loc_8c129728
loc_8c180504:
	#data 0x8C330178
loc_8c180508:
	#data 0x8C3315C0
loc_8c18050c:
	#data 0x00010000

;==============================================
loc_8c180510:
	mov.l @r15,r4
	mov.l @(0x14,r15),r3
	mov.l @r4,r4
	cmp/ge r4,r3
	bt loc_8c18051e
	bra loc_8c180520
	mov.l @(0x14,r15),r0

loc_8c18051e:
	mov r4,r0

loc_8c180520:
	mov.w r0,@(0x10,r14)
	extu.w r0,r0
	mov r0,r2
	add 0x01,r2
	shll r2
	mov.l @(0xE4,PC),r3
	add 0x16,r2
	mov.l r0,@(0xC,r14)
	shlr2 r2
	shll2 r2
	mov.l r2,@(0x4,r14)
	mov.l @(0xC,r15),r1
	mov r1,r2
	mov.l @(0x1C,r15),r1
	mov.l @r1,r1
	jsr @r3
	mov r6,r0
	mov.w r0,@r2
	bra loc_8c18054c
	mov r10,r4

loc_8c180548:
	mov 0x01,r5
	mov r5,r4

loc_8c18054c:
	mov.w @(0xBA,PC),r7
	mov r4,r5
	shll2 r5
	cmp/ge r7,r4
	bt/s loc_8c180588
	add r8,r5

loc_8c180558:
	mov.l @(0x4,r15),r2
	mov.w @(0xAE,PC),r11
	add 0x01,r2
	mov.l @(0xB0,PC),r3
	mov.l r2,@(0x4,r15)
	add 0xFF,r2
	mov.l @r5,r1
	shll r2
	mov.l @(0x20,r15),r0
	add r11,r1
	add r0,r2
	jsr @r3
	mov r6,r0
	mov.w r0,@r2
	mov.l @(0x4,r15),r2
	mov.l @(0xC,r14),r3
	cmp/ge r3,r2
	bf loc_8c180580
	bra loc_8c1805a2
	mov r13,r12

loc_8c180580:
	add 0x02,r4
	cmp/ge r7,r4
	bf/s loc_8c180558
	add 0x08,r5

loc_8c180588:
	bra loc_8c18058e
	mov r13,r11

loc_8c18058c:
	add 0x01,r11

loc_8c18058e:
	mov 0x03,r10
	cmp/ge r10,r11
	bf loc_8c1804c6
	mov r11,r0
	cmp/eq 0x03,r0
	bf loc_8c1805a2
	mov.l @(0x7C,PC),r2
	mov.l @(0x74,PC),r4
	jsr @r2
	mov r9,r5

loc_8c1805a2:
	mov r12,r0
	cmp/eq 0xFC,r0
	bf loc_8c1805b0
	mov.l @(0x6C,PC),r2
	mov.l @(0x70,PC),r4
	jsr @r2
	mov r9,r5

loc_8c1805b0:
	bsr loc_8c1809dc
	mov.l @(0x10,r15),r4

loc_8c1805b4:
	mov r12,r0

loc_8c1805b6:
	add 0x24,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c1805ca:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov r6,r13
	mov r5,r8
	mov r13,r14
	mov r13,r5
	mov.l r4,@r15
	mov.l r7,@(0xC,r15)
	bsr loc_8c18033e
	mov.l @r15,r4
	mov r0,r11
	cmp/pz r11
	bt loc_8c1805f6
	bra loc_8c18077a
	nop 

loc_8c1805f6:
	mov.l @(0x28,PC),r2
	mov r15,r5
	add 0x04,r5
	jsr @r2
	mov r8,r4
	cmp/pz r0
	bt loc_8c180628
	mov.l @(0x1C,PC),r4
	bra loc_8c18063a
	mov r8,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18060a:
	#data 0x0200
loc_8c18060c:
	#data 0x07FF
	#align4

loc_8c180610:
	#data bank12.loc_8c129128
loc_8c180614:
	#data bank1c.loc_8c1c4DBC
loc_8c180618:
	#data bank17.loc_8c17EB7A
loc_8c18061C:
	#data bank1c.loc_8c1c4DEC
loc_8c180620:
	#data bank17.loc_8c17F9BA
loc_8c180624:
	#data bank1c.loc_8c1c4E1C

;==============================================
loc_8c180628:
	mov r15,r5
	add 0x14,r5
	bsr loc_8c180890
	mov r8,r4
	tst r0,r0
	bf/s loc_8c180644
	mov.l r0,@(0x8,r15)
	mov.l @(0xEC,PC),r4
	mov r8,r5

loc_8c18063a:
	mov.l @(0xEC,PC),r2
	jsr @r2
	nop 
	bra loc_8c18077c
	mov 0xFF,r0

loc_8c180644:
	mov.l @r15,r4
	mov 0x12,r0
	mov.l @(0xE0,PC),r3
	mov 0xFF,r11
	shll2 r4
	mov.l @(0xE0,PC),r12
	add r3,r4
	mov.l @r4,r2
	mov.l r2,@r14
	mov 0x01,r2
	mov.l r13,@r4
	mov 0x00,r13
	mov.l @(0x4,r15),r1
	mov r13,r10
	mov r10,r9
	mov.l r1,@(0x8,r14)
	mov r14,r1
	mov.b r2,@(r0,r14)
	mov 0xE0,r2
	and r2,r12
	mov r12,r3
	add 0x14,r1
	mov.l r1,@(0x18,r15)
	add 0x04,r3
	mov.l r13,@(0x10,r15)
	mov.l r10,@(0xC,r14)
	bra loc_8c18073e
	mov.l r3,@r15

loc_8c18067c:
	mov 0x01,r5
	mov r12,r6
	bsr loc_8c180370
	mov.l @(0x8,r15),r4
	cmp/pl r0
	bf loc_8c18073c
	mov.l @(0xC,r14),r3
	tst r3,r3
	bf/s loc_8c1806ba
	mov r13,r4
	mov.l @r15,r3
	mov.l @(0xA0,PC),r4
	mov.l @r3,r2
	cmp/gt r4,r2
	bf loc_8c1806a4
	mov.l @r15,r1
	mov.l r4,@r1
	mov 0xFC,r4
	bra loc_8c180752
	mov r4,r11

loc_8c1806a4:
	mov.l @r15,r4
	mov.l @(0xC,r15),r3
	mov.l @r4,r4
	cmp/ge r4,r3
	bt loc_8c1806b2
	bra loc_8c1806b4
	mov.l @(0xC,r15),r3

loc_8c1806b2:
	mov r4,r3

loc_8c1806b4:
	mov 0x02,r5
	mov.l r3,@(0xC,r14)
	mov r5,r4

loc_8c1806ba:
	mov.w @(0x62,PC),r5
	mov r5,r9
	cmp/ge r9,r4
	bt loc_8c18071c

loc_8c1806c2:
	mov r4,r0
	shll2 r0
	mov.l @(r0,r12),r3
	tst r3,r3
	bf loc_8c1806d0
	bra loc_8c18070c
	add 0x02,r4

loc_8c1806d0:
	mov.l @(0x10,r15),r5
	mov r4,r0
	mov.w @(0x4A,PC),r7
	shll2 r0
	add 0x01,r5
	mov.l r5,@(0x10,r15)
	add 0xFF,r5
	mov.l @(0x18,r15),r3
	shll2 r5
	shll r5
	mov r7,r6
	add r3,r5
	mov.l @(0x4C,PC),r3
	mov.w r10,@r5
	add 0x01,r6
	mov.l @(r0,r12),r1
	add 0x01,r4
	add r7,r1
	jsr @r3
	mov r6,r0
	mov.l r0,@(0x4,r5)
	mov r4,r0
	shll2 r0
	mov.l @(0x38,PC),r3
	mov.l @(r0,r12),r1
	add 0x01,r4
	add r7,r1
	jsr @r3
	mov r6,r0
	mov.w r0,@(0x2,r5)

loc_8c18070c:
	mov.l @(0xC,r14),r2
	add 0x01,r10
	cmp/ge r2,r10
	bf loc_8c180718
	bra loc_8c180752
	mov r13,r11

loc_8c180718:
	cmp/ge r9,r4
	bf loc_8c1806c2

loc_8c18071c:
	bra loc_8c18073e
	mov r13,r9

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c180720:
	#data 0x0200
loc_8c180722:
	#data 0x07FF
	#align4

loc_8c180724:
	#data bank1c.loc_8c1c4E4C
loc_8c180728:
	#data bank17.loc_8c17EB7A
loc_8c18072c:
	#data 0x8C330178
loc_8c180730:
	#data 0x8C333640
loc_8c180734:
	#data 0x00010000

loc_8c180738:
#data bank12.loc_8c129128

;==============================================
loc_8c18073c:
	add 0x01,r9

loc_8c18073e:
	mov 0x03,r4
	cmp/ge r4,r9
	bf loc_8c18067c
	mov r9,r0
	cmp/eq 0x03,r0
	bf loc_8c180752
	mov.l @(0xF0,PC),r3
	mov.l @(0xE8,PC),r4
	jsr @r3
	mov r8,r5

loc_8c180752:
	mov r11,r0
	cmp/eq 0xFC,r0
	bf loc_8c180760
	mov.l @(0xE0,PC),r3
	mov.l @(0xE4,PC),r4
	jsr @r3
	mov r8,r5

loc_8c180760:
	mov.w @(0x10,r15),r0
	mov.w r0,@(0x10,r14)
	mov.w @(0x10,r14),r0
	mov.l @r14,r3
	extu.w r0,r0
	mov.l @(0x4,r3),r3
	shll2 r0
	shll r0
	add r3,r0
	add 0x14,r0
	mov.l r0,@(0x4,r14)
	bsr loc_8c1809dc
	mov.l @(0x8,r15),r4

loc_8c18077a:
	mov r11,r0

loc_8c18077c:
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

loc_8c180790:
	mov.l @(0xB0,PC),r0
	shll2 r4
	mov.l @(r0,r4),r4
	rts 
	mov.l @(0x4,r4),r0

;==============================================
loc_8c18079a:
	mov.l @(0xAC,PC),r7
	mov.w @(0x96,PC),r3
	mov r7,r5
	mov r7,r4
	add r3,r7
	cmp/hs r7,r4
	bt/s loc_8c1807bc
	mov 0x00,r6

loc_8c1807aa:
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c1807b4
	bra loc_8c1807bc
	mov r5,r6

loc_8c1807b4:
	add 0x30,r4
	cmp/hs r7,r4
	bf/s loc_8c1807aa
	add 0x30,r5

loc_8c1807bc:
	rts 
	mov r6,r0

loc_8c1807c0:
	sts.l pr,@-r15
	bsr loc_8c18079a
	nop 
	mov r0,r4
	tst r4,r4
	bf loc_8c1807d2
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

loc_8c1807d2:
	mov 0x01,r6
	mov r6,r0
	mov 0x00,r5
	mov.b r0,@(0x1,r4)
	mov r5,r0
	mov.l r5,@(0x4,r4)
	mov.l r5,@(0x1C,r4)
	mov.l r5,@(0x20,r4)
	mov.l r5,@(0x24,r4)
	mov.b r0,@(0x2,r4)
	mov.l r0,@(0x8,r4)
	mov r4,r0
	mov.b r6,@r4
	lds.l @r15+,pr
	rts 
	nop 

loc_8c1807f2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r5,r13
	mov.l @(0x48,PC),r3
	mov r15,r5
	mov r4,r12
	add 0x08,r5
	jsr @r3
	mov r13,r4
	mov.l @(0x2C,PC),r11
	mov r0,r14
	cmp/pz r14
	bt loc_8c18081a
	mov.l @(0x38,PC),r4
	bra loc_8c18082e
	mov r13,r5

loc_8c18081a:
	mov.l @(0x38,PC),r3
	mov r15,r5
	add 0x04,r5
	jsr @r3
	mov r13,r4
	mov r0,r14
	cmp/pz r14
	bt loc_8c18085c
	mov.l @(0x2C,PC),r4
	mov r13,r5

loc_8c18082e:
	jsr @r11
	nop 
	bra loc_8c180870
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c180836:
	#data 0x0300
	#align4

loc_8c180838:
	#data bank1c.loc_8c1c4E7C
loc_8c18083C:
	#data bank17.loc_8c17EB7A
loc_8c180840:
	#data bank1c.loc_8c1c4EAC
loc_8c180844:
	#data 0x8C330178
loc_8c180848:
	#data 0x8C32FE78
loc_8c18084C:
	#data bank17.loc_8c17F9BA
loc_8c180850:
	#data bank1c.loc_8c1c4EDC
loc_8c180854:
	#data bank17.loc_8c17F9D8
loc_8c180858:
	#data bank1c.loc_8c1c4F04

;==============================================
loc_8c18085c:
	mov.l @(0x23C,PC),r2
	mov r15,r5
	jsr @r2
	mov r13,r4
	mov r0,r14
	cmp/pz r14
	bt loc_8c180874
	mov.l @(0x234,PC),r4
	jsr @r11
	mov r13,r5

loc_8c180870:
	bra loc_8c180882
	mov r14,r0

loc_8c180874:
	mov.l @(0x8,r15),r2
	mov 0x00,r0
	mov.l r2,@(0xC,r12)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x10,r12)
	mov.l @r15,r2
	mov.l r2,@(0x14,r12)

loc_8c180882:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180890:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0xFF,r3
	mov.l r5,@r15
	mov.l r3,@-r15
	mov r4,r13
	mov.l @(0x4,r15),r7
	mov 0x00,r5
	mov r13,r6
	bsr loc_8c1802d8
	mov 0x01,r4
	mov.l @(0x1F8,PC),r3
	jsr @r3
	add 0x04,r15
	bsr loc_8c1807c0
	nop 
	mov r0,r14
	tst r14,r14
	bt loc_8c1808cc
	mov r13,r5
	bsr loc_8c1807f2
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c1808cc
	bsr loc_8c1809dc
	mov r14,r4
	mov 0x00,r14

loc_8c1808cc:
	mov.l @(0x1D8,PC),r3
	jsr @r3
	nop 
	mov 0xFF,r2
	mov r13,r6
	mov.l r2,@-r15
	mov 0x01,r5
	mov.l @(0x4,r15),r7
	bsr loc_8c1802d8
	mov r5,r4
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1808ec:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r5,@(0x8,r15)
	mov r4,r14
	mov.l r6,@(0xC,r15)
	mov r15,r6
	mov.l @(0xC,r15),r5
	add 0x04,r6
	mov r15,r7
	bsr loc_8c180f26
	mov.l @(0x8,r15),r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c180914
	mov 0xFD,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c180914:
	mov.l @(0x4,r15),r3
	mov 0x00,r0
	mov.l r3,@(0xC,r14)
	mov.l @r15,r2
	mov.l r2,@(0x10,r14)
	mov.l @r15,r3
	shll8 r3
	shll2 r3
	shll r3
	mov.l r3,@(0x14,r14)
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180930:
	mov.l r14,@-r15
	mov 0xFF,r3
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov r4,r12
	sts.l pr,@-r15
	mov r12,r6
	mov 0x00,r5
	mov r13,r7
	mov.l r3,@-r15
	bsr loc_8c1802d8
	mov 0x02,r4
	mov.l @(0x158,PC),r3
	jsr @r3
	add 0x04,r15
	bsr loc_8c1807c0
	nop 
	mov r0,r14
	tst r14,r14
	bt loc_8c18096e
	mov r12,r5
	mov r13,r6
	bsr loc_8c1808ec
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18096e
	bsr loc_8c1809dc
	mov r14,r4
	mov 0x00,r14

loc_8c18096e:
	mov.l @(0x138,PC),r3
	jsr @r3
	nop 
	mov 0xFF,r2
	mov r12,r6
	mov 0x01,r5
	mov.l r2,@-r15
	mov r13,r7
	bsr loc_8c1802d8
	mov 0x02,r4
	mov r14,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14


;==============================================
loc_8c180990:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x4,r14),r3
	tst r3,r3
	bt loc_8c1809a8
	mov.l @(0x10C,PC),r3
	jsr @r3
	mov.l @(0x4,r14),r4
	mov 0x00,r2
	mov.l r2,@(0x4,r14)

loc_8c1809A8:
	mov.l @(0x8,r14),r3
	tst r3,r3
	bt loc_8c1809d4
	mov.b @(0x2,r14),r0
	tst r0,r0
	bf loc_8c1809d4
	mov.l @(0xF8,PC),r2
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c1809c4
	mov.l @(0xF4,PC),r1
	mov.l @(0x2C,r14),r5
	jsr @r1
	mov.l @(0x28,r14),r4

loc_8c1809C4:
	mov.l @(0x8,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0xC,r2),r1
	jsr @r1
	mov r3,r4
	mov 0x00,r3
	mov.l r3,@(0x8,r14)

loc_8c1809D4:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1809dc:
	mov.l r14,@-r15
	mov 0xFF,r3
	sts.l pr,@-r15
	mov r4,r14
	mov r14,r6
	mov 0x00,r5
	mov r3,r7
	mov.l r3,@-r15
	bsr loc_8c1802d8
	mov 0x03,r4
	tst r14,r14
	bt/s loc_8c180a26
	add 0x04,r15
	mov.l @(0xAC,PC),r2
	jsr @r2
	nop 
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180a06
	bsr loc_8c180c2a
	mov r14,r4

loc_8c180a06:
	mov.l @(0xB0,PC),r3
	mov 0x00,r5
	mov 0x30,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x94,PC),r2
	jsr @r2
	nop 
	mov 0xFF,r3
	mov r14,r6
	mov 0x01,r5
	mov.l r3,@-r15
	mov r3,r7
	bsr loc_8c1802d8
	mov 0x03,r4
	add 0x04,r15

loc_8c180a26:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180a2c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x84,PC),r12
	mov r4,r14
	tst r14,r14
	mov r5,r13
	bf/s loc_8c180a48
	mov.l r6,@r15
	mov.l @(0x7C,PC),r4
	bra loc_8c180a4e
	nop 

loc_8c180a48:
	cmp/pz r13
	bt loc_8c180a56
	mov.l @(0x74,PC),r4

loc_8c180a4e:
	jsr @r12
	nop 
	bra loc_8c180a62
	nop 

loc_8c180a56:
	mov.l @r15,r2
	tst r2,r2
	bf loc_8c180a66
	mov.l @(0x68,PC),r4
	jsr @r12
	nop 

loc_8c180a62:
	bra loc_8c180b02
	mov 0xFD,r0

loc_8c180a66:
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180a70
	bra loc_8c180b02
	mov 0x00,r0

loc_8c180a70:
	mov.l @(0x4,r14),r2
	tst r2,r2
	bt loc_8c180a80
	mov.l @(0x54,PC),r4
	jsr @r12
	nop 
	bra loc_8c180b02
	mov 0xFF,r0

loc_8c180a80:
	mov.l @(0x20,PC),r3
	jsr @r3
	nop 
	mov.l @(0xC,r14),r2
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.l r2,@(0x1C,r14)
	mov.l @(0x10,r14),r4
	mov.l @(0x18,r14),r3
	sub r3,r4
	cmp/ge r4,r13
	bt loc_8c180ad0
	bra loc_8c180ad2
	mov r13,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c180A9C:
	#data bank17.loc_8c17FA06
loc_8c180AA0:
	#data bank1c.loc_8c1c4F38
loc_8c180AA4:
	#data bank17.loc_8c17E784
loc_8c180AA8:
	#data bank17.loc_8c17E7AC
loc_8c180AAC:
	#data bank17.loc_8c17F64E
loc_8c180Ab0:
	#data 0x8C330578
loc_8c180AB4:
	#data bank19.loc_8c194F5E
loc_8c180AB8:
	#data bank12.loc_8c129728
loc_8c180ABC:
	#data bank17.loc_8c17EB7A
loc_8c180AC0:
	#data bank1c.loc_8c1c4F70
loc_8c180AC4:
	#data bank1c.loc_8c1c4F9C
loc_8c180AC8:
	#data bank1c.loc_8c1c4FCC
loc_8c180ACC:
	#data bank1c.loc_8c1c4FF4

;==============================================
loc_8c180AD0:
	mov r4,r3

loc_8c180ad2:
	mov.l r3,@(0x20,r14)
	mov 0x00,r2
	mov.l @(0x22C,PC),r3
	mov.l r2,@(0x24,r14)
	mov.l @r15,r6
	mov.l @(0x20,r14),r5
	jsr @r3
	mov.l @(0x1C,r14),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c180aec
	bra loc_8c180afa
	mov 0xFF,r13

loc_8c180aec:
	mov.l @(0x218,PC),r3
	mov 0x02,r0
	mov.l r4,@(0x4,r14)
	mov.b r0,@(0x1,r14)
	jsr @r3
	mov.l @(0x4,r14),r4
	mov.l @(0x20,r14),r13

loc_8c180afa:
	mov.l @(0x210,PC),r2
	jsr @r2
	nop 
	mov r13,r0

loc_8c180b02:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x1FC,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@(0x8,r15)
	jsr @r3
	mov.l r6,@r15
	mov.l @(0x8,r15),r5
	mov.l @r15,r6
	bsr loc_8c180a2c
	mov.l @(0x4,r15),r4
	mov.l r0,@r15
	mov 0x01,r0
	mov.l @(0x4,r15),r3
	mov.b r0,@(0x2,r3)
	mov.l @(0x1DC,PC),r3
	jsr @r3
	nop 
	mov.l @r15,r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180b3c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r13
	mov.l r6,@-r15
	mov r4,r14
	mov r5,r11
	mov 0x00,r5
	mov r14,r6
	mov r11,r7
	bsr loc_8c1802d8
	mov 0x04,r4
	mov.l @(0x1B8,PC),r12
	tst r14,r14
	bf/s loc_8c180b68
	add 0x04,r15
	mov.l @(0x1B4,PC),r4
	bra loc_8c180b6e
	nop 

loc_8c180b68:
	cmp/pz r11
	bt loc_8c180b76
	mov.l @(0x1AC,PC),r4

loc_8c180b6e:
	jsr @r12
	nop 
	bra loc_8c180b92
	nop 

loc_8c180b76:
	tst r13,r13
	bf loc_8c180b84
	mov.l @(0x1A4,PC),r4
	jsr @r12
	nop 
	bra loc_8c180b92
	nop 

loc_8c180b84:
	mov 0x1F,r3
	mov r13,r4
	tst r3,r4
	bt loc_8c180b96
	mov.l @(0x194,PC),r4
	jsr @r12
	nop 

loc_8c180b92:
	bra loc_8c180c1c
	mov 0xFD,r0

loc_8c180b96:
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180ba0
	bra loc_8c180c1c
	mov 0x00,r0

loc_8c180ba0:
	mov.l @(0x8,r14),r2
	tst r2,r2
	bt loc_8c180bb0
	mov.l @(0x180,PC),r4
	jsr @r12
	nop 
	bra loc_8c180c1c
	mov 0xFF,r0

loc_8c180bb0:
	mov r11,r5
	shll8 r5
	shll2 r5
	mov.l @(0x174,PC),r3
	shll r5
	mov 0x00,r6
	mov.l r5,@r15
	jsr @r3
	mov r13,r4
	mov r0,r12
	tst r12,r12
	bf loc_8c180bcc
	bra loc_8c180c1c
	mov 0xFE,r0

loc_8c180bcc:
	mov.l @(0x160,PC),r2
	mov.l r13,@(0x28,r14)
	mov.l @r15,r3
	mov.l r3,@(0x2C,r14)
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c180be2
	mov.l @(0x158,PC),r1
	mov.l @(0x2C,r14),r5
	jsr @r1

loc_8c180be0:
	mov.l @(0x28,r14),r4

loc_8c180be2:
	mov.l @(0x12C,PC),r3
	jsr @r3
	nop 
	mov r11,r5
	mov r12,r6
	bsr loc_8c180a2c
	mov r14,r4
	cmp/pl r0
	bt/s loc_8c180c02
	mov.l r0,@r15
	mov.l @r12,r2
	mov.l @(0xC,r2),r3
	jsr @r3
	mov r12,r4
	bra loc_8c180c04
	nop 

loc_8c180c02:
	mov.l r12,@(0x8,r14)

loc_8c180c04:
	mov.l @(0x104,PC),r3
	mov 0x00,r0
	jsr @r3
	mov.b r0,@(0x2,r14)
	mov r14,r6
	mov 0x01,r5
	mov.l r13,@-r15
	mov r11,r7
	bsr loc_8c1802d8
	mov 0x04,r4
	add 0x04,r15
	mov.l @r15,r0

loc_8c180c1c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180c2a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0xFF,r3
	mov r4,r14
	mov r14,r6
	mov 0x00,r5
	mov.l r3,@-r15
	mov r3,r7
	bsr loc_8c1802d8
	mov 0x05,r4
	tst r14,r14
	bf/s loc_8c180c58
	add 0x04,r15
	mov.l @(0xCC,PC),r2
	mov.l @(0xEC,PC),r4
	jsr @r2
	nop 
	mov 0xFD,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c180c58:
	mov.b @(0x1,r14),r0
	cmp/eq 0x01,r0
	bt loc_8c180cb6
	mov.b @(0x1,r14),r0
	cmp/eq 0x03,r0
	bf loc_8c180c6a
	mov 0x01,r0
	bra loc_8c180cb6
	mov.b r0,@(0x1,r14)

loc_8c180c6a:
	mov.l @(0x4,r14),r2
	tst r2,r2
	bf loc_8c180c82
	mov.l @(0xA0,PC),r3
	mov.l @(0xC8,PC),r4
	jsr @r3
	nop 
	mov 0xFF,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c180c82:
	mov.l @(0x8C,PC),r2
	jsr @r2
	nop 
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov.l @(0x4,r14),r4
	mov.l @(0xB4,PC),r2
	mov r15,r5
	jsr @r2
	mov.l @(0x4,r14),r4
	mov.l @r15,r3
	mov.l r3,@(0x24,r14)
	bsr loc_8c180990
	mov r14,r4
	mov.l @(0x6C,PC),r3
	mov 0x01,r0
	jsr @r3
	mov.b r0,@(0x1,r14)
	mov 0xFF,r2
	mov r14,r6
	mov 0x01,r5
	mov.l r2,@-r15
	mov r2,r7
	bsr loc_8c1802d8
	mov 0x05,r4
	add 0x04,r15

loc_8c180cb6:
	mov.l @(0x18,r14),r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180CC0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180cfc
	mov.l @(0x78,PC),r2
	jsr @r2
	mov.l @(0x4,r14),r4
	mov.l @(0x6C,PC),r3
	mov r15,r5
	mov.b r0,@(0x1,r14)
	jsr @r3
	mov.l @(0x4,r14),r4
	mov.l @r15,r2
	mov.l r2,@(0x24,r14)
	mov.b @(0x1,r14),r0
	cmp/eq 0x03,r0
	bt/s loc_8c180cf0
	mov r0,r4
	mov r4,r0
	cmp/eq 0x04,r0
	bf loc_8c180cfc

loc_8c180CF0:
	mov.l @(0x18,r14),r2
	mov.l @(0x24,r14),r3
	add r3,r2
	mov.l r2,@(0x18,r14)
	bsr loc_8c180990
	mov r14,r4

loc_8c180CFC:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c180D04:
	#data bank17.loc_8c17F590
loc_8c180D08:
	#data bank17.loc_8c17F676
loc_8c180D0C:
	#data bank17.loc_8c17E7AC
loc_8c180D10:
	#data bank17.loc_8c17E784
loc_8c180D14:
	#data bank17.loc_8c17EB7A
loc_8c180D18:
	#data bank1c.loc_8c1c5028
loc_8c180D1C:
	#data bank1c.loc_8c1c5054
loc_8c180D20:
	#data bank1c.loc_8c1c5084
loc_8c180D24:
	#data bank1c.loc_8c1c50AC
loc_8c180D28:
	#data bank1c.loc_8c1c50E8
loc_8c180D2C:
	#data loc_8c182854
loc_8c180D30:
	#data 0x8C330578
loc_8c180D34:
	#data bank19.loc_8c194F5E
loc_8c180D38:
	#data bank1c.loc_8c1c5110
loc_8c180D3C:
	#data bank1c.loc_8c1c5138
loc_8c180D40:
	#data bank17.loc_8c17F6A0
loc_8c180D44:
	#data bank17.loc_8c17F958
loc_8c180D48:
	#data bank17.loc_8c17F940

;==============================================
loc_8c180D4C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	jsr @r3
	nop 
	mov.w @(0xCC,PC),r13
	mov.l @(0xD4,PC),r4
	add r4,r13
	mov r4,r14

loc_8c180D60:
	mov r14,r4
	mov.b @r4,r0
	cmp/eq 0x01,r0
	bf loc_8c180d6c
	bsr loc_8c180cc0
	nop 

loc_8c180D6C:
	add 0x30,r14
	cmp/hs r13,r14
	bf loc_8c180d60
	lds.l @r15+,pr
	mov.l @(0xBC,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r6,r13
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov 0x00,r5
	mov r12,r7
	mov.l r6,@-r15
	mov r14,r6
	bsr loc_8c1802d8
	mov 0x06,r4
	tst r14,r14
	bf/s loc_8c180da2
	add 0x04,r15
	mov.l @(0x98,PC),r4
	bra loc_8c180dd0
	nop 

loc_8c180da2:
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180dac
	bsr loc_8c180c2a
	mov r14,r4

loc_8c180dac:
	tst r13,r13
	bf loc_8c180db4
	bra loc_8c180dda
	mov.l r12,@(0x18,r14)

loc_8c180db4:
	mov r13,r0
	cmp/eq 0x01,r0
	bf loc_8c180dc2
	mov.l @(0x18,r14),r2
	add r12,r2
	bra loc_8c180dda
	mov.l r2,@(0x18,r14)

loc_8c180dc2:
	cmp/eq 0x02,r0
	bf loc_8c180dce
	mov.l @(0x10,r14),r3
	add r12,r3
	bra loc_8c180dda
	mov.l r3,@(0x18,r14)

loc_8c180dce:
	mov.l @(0x6C,PC),r4

loc_8c180dd0:
	mov.l @(0x6C,PC),r3
	jsr @r3
	nop 
	bra loc_8c180e02
	mov 0xFD,r0

loc_8c180dda:
	mov.l @(0x18,r14),r2
	cmp/pz r2
	bt loc_8c180de6
	mov 0x00,r1
	bra loc_8c180df2
	mov.l r1,@(0x18,r14)

loc_8c180de6:
	mov.l @(0x18,r14),r3
	mov.l @(0x10,r14),r2
	cmp/gt r2,r3
	bf loc_8c180df2
	mov.l @(0x10,r14),r0
	mov.l r0,@(0x18,r14)

loc_8c180df2:
	mov r14,r6
	mov 0x01,r5
	mov.l r13,@-r15
	mov r12,r7
	bsr loc_8c1802d8
	mov 0x06,r4
	add 0x04,r15
	mov.l @(0x18,r14),r0

loc_8c180e02:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180e0c:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180e20
	mov.l @(0x2C,PC),r2
	mov.l @(0x2C,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180e20:
	mov.l @(0x18,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c180E28:
	#data 0x0300
	#align4

loc_8c180E2C:
	#data bank17.loc_8c17E784
loc_8c180E30:
	#data 0x8C32FE78
loc_8c180E34:
	#data bank17.loc_8c17E7AC
loc_8c180E38:
	#data bank1c.loc_8c1c5164
loc_8c180E3C:
	#data bank1c.loc_8c1c518C
loc_8c180E40:
	#data bank17.loc_8c17EB7A
loc_8c180E44:
	#data bank1c.loc_8c1c51B4

;==============================================
loc_8c180e48:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180e5c
	mov.l @(0x100,PC),r2
	mov.l @(0xF8,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180e5c:
	mov.l @(0x10,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180e64:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180e78
	mov.l @(0xE4,PC),r2
	mov.l @(0xE4,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180e78:
	mov.l @(0x14,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180e80:
	sts.l pr,@-r15
	add 0xFC,r15
	tst r4,r4
	bf/s loc_8c180ea0
	mov.l r5,@r15
	mov.l @(0xC4,PC),r2
	mov.l @(0xC8,PC),r4
	jsr @r2
	nop 
	mov.l @r15,r3
	mov 0x00,r2
	mov.l r2,@r3
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180ea0:
	mov.l @(0x1C,r4),r2
	mov.l @r15,r3
	mov.l r2,@r3
	mov.l @(0x20,r4),r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180eb0:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180ec4
	mov.l @(0x98,PC),r2
	mov.l @(0xA0,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180ec4:
	mov.l @(0x24,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180ecc:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180ee0
	mov.l @(0x7C,PC),r2
	mov.l @(0x88,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180ee0:
	mov.b @(0x1,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180ee8:
	sts.l pr,@-r15
	cmp/pz r4
	bf loc_8c180ef4
	mov.w @(loc_8C180F4A,pc),r2
	cmp/ge r2,r4
	bf loc_8c180f00

loc_8c180ef4:
	mov.l @(loc_8c180f50,pc),r2
	mov.l @(loc_8c180f64,pc),r4
	jsr @r2
	nop 
	bra loc_8c180f18
	nop 

loc_8c180f00:
	mov.l @(loc_8C180F68,pc),r0
	cmp/pz r5
	shll2 r4
	bf/s loc_8c180f10
	mov.l @(r0,r4),r4
	mov.l @(0x0C,r4),r3
	cmp/ge r3,r5
	bf loc_8c180f1e

loc_8c180f10:
	mov.l @(loc_8c180f50,pc),r3
	mov.l @(loc_8c180f6c,pc),r4
	jsr @r3
	nop 

loc_8c180f18:
	lds.l @r15+,pr 
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180f1e:
	mov 0x00,r0
	lds.l @r15+,pr 
	rts 
	nop 

loc_8c180F26:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r12
	mov r5,r14
	mov.l r4,@r15
	bsr loc_8c180EE8
	mov r7,r13
	mov r0,r11
	cmp/pz r11
	bt loc_8c180F70
	mov 0xFF,r4 ; r4 set to 0xFFFFFFFF
	mov.l r4,@r12
	bra loc_8c180FE8
	mov.l r4,@r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c180f4a:
	#data 0x0100
	#align4

loc_8c180F4C:
	#data bank1c.loc_8c1c51DC
loc_8c180F50:
	#data bank17.loc_8c17EB7A
loc_8c180F54:
	#data bank1c.loc_8c1c5208
loc_8c180F58:
	#data bank1c.loc_8c1c5238
loc_8c180F5C:
	#data bank1c.loc_8c1c5268
loc_8c180F60:
	#data bank1c.loc_8c1c5298
loc_8c180F64:
	#data bank1c.loc_8c1c52C0
loc_8c180f68:
	#data 0x8C330178
loc_8c180F6C:
	#data bank1c.loc_8c1c52F8

;==============================================
loc_8c180F70:
	mov.l @r15,r4
	mov.l @(loc_8c181000,pc),r0 ; r0 set to 0x8C330178
	shll2 r4
	bra loc_8c180FAE
	mov.l @(r0,r4),r4

loc_8c180F7A:
	mov r4,r1
	add 0x14,r1
	bra loc_8c180fa4
	mov r7,r6

loc_8c180F82:
	mov r6,r5
	shll2 r5
	shll r5
	add r1,r5
	mov.w @r5,r3
	extu.w r3,r3
	cmp/eq r14,r3
	bf loc_8c180fa2
	mov.l @(0x8,r4),r2
	mov.l @(0x4,r5),r3
	add r3,r2
	mov.l r2,@r12
	mov.w @(0x2,r5),r0
	extu.w r0,r0
	bra loc_8c180fe8
	mov.l r0,@r13

loc_8c180FA2:
	add 0x01,r6

loc_8c180FA4:
	mov.w @(0x10,r4),r0
	extu.w r0,r0
	cmp/ge r0,r6
	bf loc_8c180f82
	mov.l @r4,r4

loc_8c180fae:
	mov.l @r4,r2
	tst r2,r2
	bf/s loc_8c180f7a
	mov 0x00,r7
	mov r4,r5
	add 0x14,r5
	mov.w @r5,r6
	mov r5,r1
	mov 0x00,r0
	cmp/pl r14
	mov r7,r5
	extu.w r6,r6
	add 0x02,r1
	bf/s loc_8c180fd8
	add r1,r0

loc_8c180fcc:
	mov.w @r0+,r3
	add 0x01,r5
	cmp/ge r14,r5
	extu.w r3,r3
	bf/s loc_8c180fcc
	add r3,r6

loc_8c180fd8:
	mov.l @(0x08,r4),r3
	mov r14,r0
	shll r0
	add r3,r6
	mov.l r6,@r12
	mov.w @(r0,r1),r3
	extu.w r3,r3
	mov.l r3,@r13

loc_8c180FE8:
	mov r11,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;==============================================
loc_8c180ff8:
	mov.l @(0x8,PC),r3
	rts 
	mov.l r4,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c181000:
	#data 0x8C330178
loc_8c181004:
	#data 0x8C330578

;==============================================
loc_8c181008:
	rts
	nop

;==============================================
loc_8c18100C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r3
	jsr @r3
	nop 
	mov.l @(0xFC,PC),r2
	mov.l @(0xF4,PC),r4
	mov.w @(0xE6,PC),r6
	jsr @r2
	mov 0x00,r5
	mov.l @(0xF0,PC),r3
	mov.l @(0xF4,PC),r4
	mov.w @(0xDE,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(0xF4,PC),r5
	mov 0x00,r4
	mov.w @(0xD6,PC),r7
	mov.l @(0xE8,PC),r6

loc_8c181032:
	add 0x01,r4
	mov.l r5,@r6
	cmp/ge r7,r4
	bf/s loc_8c181032
	add 0x04,r6
	mov.l @(0xE4,PC),r14
	mov.l @r14,r2
	tst r2,r2
	bf loc_8c18104c
	mov.l @(0xE0,PC),r3
	jsr @r3
	nop 
	mov.l r0,@r14

loc_8c18104C:
	mov.l @r14,r2
	mov.l @(0xDC,PC),r1
	mov.l @(0xC,r2),r3
	jsr @r3
	mov.l @r1,r4
	bsr loc_8c181008
	nop 
	lds.l @r15+,pr
	mov.l @(0xD0,PC),r2
	mov 0x00,r5
	mov r5,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c181066:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0x9C,PC),r11
	mov.l r9,@-r15
	mov.w @(0x8C,PC),r10
	mov r11,r9
	sts.l pr,@-r15
	mov.w @(0x8C,PC),r14
	add r10,r9
	mov r11,r4
	mov r11,r12
	mov r11,r13

loc_8c181084:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181090
	bsr loc_8c1813a0
	mov r12,r4

loc_8c181090:
	add r14,r13
	cmp/hs r9,r13
	bf/s loc_8c181084
	add r14,r12
	mov r11,r9
	mov r11,r13
	add r10,r9
	mov r11,r4
	mov r11,r5
	mov r11,r12

loc_8c1810A4:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1810b0
	bsr loc_8c1812ba
	mov r12,r4

loc_8c1810B0:
	add r14,r13
	cmp/hs r9,r13
	bf/s loc_8c1810a4
	add r14,r12
	mov.l @(0x58,PC),r2
	mov 0x00,r5
	mov r10,r6
	jsr @r2
	mov r11,r4
	mov.l @(0x50,PC),r3
	mov.l @(0x50,PC),r4
	mov.w @(0x3C,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(0x50,PC),r5
	mov 0x00,r4
	mov.w @(0x34,PC),r6
	mov.l @(0x48,PC),r7

loc_8c1810D4:
	add 0x01,r4
	mov.l r5,@r7
	cmp/ge r6,r4
	bf/s loc_8c1810d4
	add 0x04,r7
	mov.l @(0x44,PC),r3
	mov.l @r3,r2
	mov.l @(0x10,r2),r1
	jsr @r1
	nop 
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c1810fa:
	mov.l @(0x28,PC),r3
	mov.l @(0x2C,PC),r2
	mov.l r4,@r3
	rts 
	mov.l r5,@r2


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181104:
	#data 0x0480
loc_8c181106:
	#data 0x0820
loc_8c181108:
	#data 0x0200
loc_8c18110a:
	#data 0x0090
	#align4

loc_8c18110C:
	#data bank19.loc_8c19518C
loc_8c181110:
	#data 0x8C3356A0
loc_8c181114:
	#data bank12.loc_8c129728
loc_8c181118:
	#data 0x8C335B20
loc_8c18111c:
	#data 0x8C336340
loc_8c181120:
	#data 0x80808080
loc_8c181124:
	#data bank1c.loc_8c1c9624
loc_8c181128:
	#data bank19.loc_8c195E58
loc_8c18112C:
	#data bank1c.loc_8c1c9628
loc_8c181130:
	#data bank19.loc_8c1951C4
loc_8c181134:
	#data bank19.loc_8c195190

;==============================================
loc_8c181138:
	mov 0x00,r5
	mov.w @(0xDA,PC),r6
	mov r5,r0
	mov.b r0,@(0x1,r4)
	mov.b r0,@(0x4,r4)
	mov 0xFF,r3
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x6,r4)
	mov.l r0,@(0x34,r4)
	mov.l r0,@(0x2C,r4)
	mov.l r0,@(0x30,r4)
	mov 0x40,r0
	mov.l r6,@(r0,r4)
	mov 0x44,r0
	mov.l r6,@(r0,r4)
	mov 0x48,r0
	mov.l r5,@(r0,r4)
	mov 0x60,r0
	mov.l r5,@(r0,r4)
	mov 0x6C,r0
	mov.l r3,@(r0,r4)
	mov 0x70,r0
	mov.l r5,@(r0,r4)
	mov 0x74,r0
	mov.l r5,@(r0,r4)
	mov 0x78,r0
	mov.l r5,@(r0,r4)
	mov 0x7C,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0x0C,r0
	mov.l r5,@(r0,r4)
	mov r5,r0
	mov.b r0,@(0x7,r4)
	mov.w @(0x98,PC),r0
	rts 
	mov.l r5,@(r0,r4)

;==============================================
loc_8c181184:
	mov.w @(0x94,PC),r0
	mov.l @(0x98,PC),r6
	add r6,r0
	mov r6,r4
	mov r6,r5
	mov.w @(0x8C,PC),r6
	cmp/hs r0,r4
	bt/s loc_8c1811a8
	mov 0x00,r7

loc_8c181196:
	mov.b @r4,r2
	tst r2,r2
	bf loc_8c1811a0
	bra loc_8c1811a8
	mov r5,r7

loc_8c1811A0:
	add r6,r4
	cmp/hs r0,r4
	bf/s loc_8c181196
	add r6,r5

loc_8c1811A8:
	rts 
	mov r7,r0

;==============================================
loc_8c1811AC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x01,r3
	mov.l @(0x64,PC),r12
	mov r5,r13
	cmp/ge r3,r13
	bf/s loc_8c1811cc
	mov r4,r11
	mov 0x02,r1
	cmp/gt r1,r13
	bf loc_8c1811d6

loc_8c1811CC:
	mov.l @(0x58,PC),r3
	jsr @r12
	mov.l r3,@-r15
	bra loc_8c1811f2
	add 0x04,r15

loc_8c1811D6:
	tst r11,r11
	bt loc_8c1811ea
	mov 0x00,r10
	cmp/pl r13
	mov r10,r5
	bf/s loc_8c1811fe
	mov r11,r4
 
loc_8c1811E4:
	mov.l @r4,r2
	tst r2,r2
	bf loc_8c1811f6

loc_8c1811EA:
	mov.l @(0x40,PC),r14
	jsr @r12
	mov.l r14,@-r15
	add 0x04,r15

loc_8c1811F2:
	bra loc_8c1812aa
	mov 0x00,r0

loc_8c1811F6:
	add 0x01,r5
	cmp/ge r13,r5
	bf/s loc_8c1811e4
	add 0x04,r4

loc_8c1811FE:
	mov.l @(0x30,PC),r2
	jsr @r2
	mov r15,r4
	bsr loc_8c181184
	nop 
	mov r0,r14
	tst r14,r14
	bf loc_8c181238
	mov.l @(0x24,PC),r3
	jsr @r12
	mov.l r3,@-r15
	bra loc_8c1812a2
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181218:
	#data 0x2000
loc_8c18121a:
	#data 0x0088
loc_8c18121c:
	#data 0x0480
loc_8c18121e:
	#data 0x0090
	#align4

loc_8c181220:
	#data 0x8C3356A0
loc_8c181224:
	#data bank19.loc_8c1951E2
loc_8c181228:
	#data bank1c.loc_8c1c5360
loc_8c18122C:
	#data bank1c.loc_8c1c5390
loc_8c181230:
	#data bank19.loc_8c195194
loc_8c181234:
	#data bank1c.loc_8c1c53BC

;==============================================
loc_8c181238:
	mov r13,r0
	mov r10,r5
	cmp/pl r13
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0x2,r14)
	bf/s loc_8c18125a
	mov r10,r4

loc_8c181246:
	mov r4,r0
	mov r14,r3
	mov.l @(r0,r11),r2
	add 0x10,r3
	add 0x01,r5
	add r4,r3
	cmp/ge r13,r5
	mov.l r2,@r3
	bf/s loc_8c181246
	add 0x04,r4

loc_8c18125A:
	mov.l @(0xF0,PC),r3
	mov.l @r3,r2
	mov.l @(0x14,r2),r1
	jsr @r1
	mov r13,r4
	mov r0,r3
	tst r3,r3
	bf/s loc_8c181278
	mov.l r0,@(0x38,r14)
	mov.l @(0xE0,PC),r3
	jsr @r12
	mov.l r3,@-r15
	add 0x04,r15
	bra loc_8c1812a2
	mov r10,r14

loc_8c181278:
	bsr loc_8c181138
	mov r14,r4
	mov 0x10,r5
	bsr loc_8c181fd6
	mov r14,r4
	mov.l @(0xD0,PC),r5
	bsr loc_8c18202e
	mov r14,r4
	mov.b @(0x3,r14),r0
	extu.b r0,r5
	bsr loc_8c181f30
	mov r14,r4
	mov.l @(0x38,r14),r2
	mov.l r2,@(0x4,r15)
	mov.l @r2,r3
	mov.l @(0x18,r3),r1
	jsr @r1
	mov r2,r4
	mov 0x01,r3
	mov.l r0,@(0x28,r14)
	mov.b r3,@r14

loc_8c1812A2:
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r15,r4
	mov r14,r0

loc_8c1812AA:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1812BA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c1812D8
	mov.l @(loc_8c181360,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c18135C,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1812d8:
	mov.l @(loc_8c181364,pc),r2
	jsr @r2
	mov r15,r4
	mov.b @(0x01,r14),r0 
	tst r0,r0
	bt loc_8c1812e8
	bsr loc_8c1813a0
	mov r14,r4

loc_8c1812e8:
	mov 0x00,r5
	mov.b r5,@r14
	bra loc_8c1812fe
	mov r5,r4

loc_8c1812f0:
	mov r14,r3
	mov r4,r2
	add 0x10,r3
	shll2 r2
	add r3,r2
	add 0x01,r4
	mov.l r5,@r2

loc_8c1812fe:
	mov.b @(0x02,r14),r0 
	extu.b r0,r0
	cmp/ge r0,r4
	bf loc_8c1812f0
	mov.l @(0x38,r14),r2
	mov.l r2,@(0x04,r15) 
	mov.l @r2,r3
	mov.l @(0x0C,r3),r1
	jsr @r1
	mov r2,r4
	mov.l @(loc_8c181368,pc),r3
	mov 0x00,r5
	mov.w @(loc_8C181348,pc),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c181358,pc),r2
	jsr @r2
	mov r15,r4
	add 0x08,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8c18132A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c18136C
	mov.l @(loc_8c181360,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c18135C,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181348:
	#data 0x0090
	#align4

loc_8c18134C:
	#data bank1c.loc_8c1c9624
loc_8c181350:
	#data bank1c.loc_8c1c53EC
loc_8c181354:
	#data 0x0000AC44
loc_8c181358:
	#data bank19.loc_8c1951AC
loc_8c18135C:
	#data bank1c.loc_8c1c5410
loc_8c181360:
	#data bank19.loc_8c1951E2
loc_8c181364:
	#data bank19.loc_8c195194
loc_8c181368:
	#data bank12.loc_8c129728

;==============================================
loc_8c18136c:
	mov.l @(loc_8c1815b4,pc),r2
	jsr @r2
	mov r15,r4
	mov.b @(0x01,r14),r0 
	tst r0,r0
	bt loc_8c18137c
	bsr loc_8c1813a0
	mov r14,r4

loc_8c18137c:
	mov 0x04,r0
	mov.b r0,@(0x01,r14) 
	mov 0x44,r0
	mov.l @(r0,r14),r3
	mov 0x40,r0
	mov 0x01,r5
	mov.l r3,@(r0,r14) 
	bsr loc_8c1816f6
	mov r14,r4
	mov.l @(loc_8c1815b8,pc),r2
	jsr @r2
	mov r15,r4
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18139c:
	rts
	nop

;==============================================
loc_8c1813A0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c1813BE
	mov.l @(loc_8c1815C0,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1815BC,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1813be:
	mov.b @(0x01,r14),r0 
	tst r0,r0
	bt loc_8c1813e8
	mov.l @(loc_8c1815b4,pc),r2
	jsr @r2
	mov r15,r4
	mov 0x00,r5
	bsr loc_8c1817d4
	mov r14,r4
	mov 0x00,r5
	bsr loc_8c1816f6
	mov r14,r4
	bsr loc_8c18139c
	mov r14,r4
	mov 0x00,r4
	mov.l @(loc_8c1815b8,pc),r3
	mov r4,r0
	mov.b r0,@(0x07,r14) 
	mov.b r0,@(0x01,r14) 
	jsr @r3
	mov r15,r4

loc_8c1813e8:
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14


;==============================================
loc_8c1813f0:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181406
	mov.l @(0x1C8,PC),r3
	mov.l @(0x1C0,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

loc_8c181406:
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c181412
	mov 0x01,r0
	mov.b r0,@(0x6,r4)

loc_8c181412:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c181418:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l @(0x10,r15),r14
	cmp/pl r14
	bt loc_8c181430
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c181430:
	mov.l @r15,r2
	mov 0x4C,r0
	mov.l @(0x38,r2),r3
	mov.l r3,@(0x4,r15)
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	mov.l r14,@-r15
	jsr @r1
	mov.l @(0x8,r15),r4
	add 0x04,r15
	mov.l @r15,r3
	mov 0x5C,r0
	mov 0x01,r2
	mov.l r2,@(r0,r3)
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c181456:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov 0x5C,r0
	mov r4,r12
	mov.l @(r0,r12),r3
	tst r3,r3
	bf loc_8c181474
	bra loc_8c1814d2
	mov 0x00,r0

loc_8c181474:
	mov r15,r11
	add 0x08,r11
	mov r11,r3
	mov r3,r2
	mov 0x01,r4
	mov.l r3,@r15
	mov r4,r10
	add 0x04,r2
	mov 0x00,r13
	mov.l r2,@(0x4,r15)
	mov.l r10,@r2
	mov.l r10,@r3
	bra loc_8c1814ac
	mov r13,r14

loc_8c181490:
	mov.l @(0x38,r12),r9
	mov 0x50,r0
	mov r14,r5
	mov.l @r9,r2
	mov.l @(r0,r2),r3
	jsr @r3
	mov r9,r4
	cmp/eq 0x01,r0
	bt/s loc_8c1814aa
	mov r0,r4
	mov r14,r0
	shll2 r0
	mov.l r13,@(r0,r11)


loc_8c1814aa:
	add 0x01,r14

loc_8c1814ac:
	mov.b @(0x3,r12),r0
	extu.b r0,r0
	cmp/ge r0,r14
	bf loc_8c181490
	mov.l @r15,r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c1814c4
	mov.l @(0x4,r15),r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c1814c6

loc_8c1814c4:
	mov r13,r10

loc_8c1814c6:
	mov r10,r0
	cmp/eq 0x01,r0
	bf loc_8c1814d0
	mov 0x5C,r0
	mov.l r13,@(r0,r12)

loc_8c1814d0:
	mov r10,r0

loc_8c1814d2:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1814e4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x38,r14),r3
	mov.l @(0x30,r14),r11
	mov 0x00,r5
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x20,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @(0xC0,PC),r3
	mov 0x20,r1
	mov r0,r5
	jsr @r3
	mov.l @(0x8,r14),r0
	mov r0,r4
	mov.l @(0xB4,PC),r2
	shll2 r4
	mov r5,r1
	shll r4
	jsr @r2
	mov r4,r0
	mul.l r4,r0
	sts macl,r0
	mov r0,r13
	sub r11,r13
	cmp/pz r13
	bt/s loc_8c18152c
	mov.l r0,@(0x30,r14)
	mov.l @(0x28,r14),r2
	add r2,r13

loc_8c18152c:
	mov.l @(0x34,r14),r12
	sub r13,r12
	cmp/pz r12
	bt loc_8c18153e
	mov.l @(0x2C,r14),r13
	mov 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r12
	sub r11,r13

loc_8c18153e:
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181556
	bsr loc_8c181e78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181556
	mov.l @(0x30,r14),r2
	mov 0x00,r0
	mov.l r2,@(0x2C,r14)
	mov.b r0,@(0x4,r14)

loc_8c181556:
	mov 0x48,r0
	mov.l r12,@(0x34,r14)
	mov.l @(r0,r14),r3
	add r13,r3
	mov.l r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18156E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l @(loc_8c1815C8,pc),r11 ; r11 set to 0x8C1C5438
	mov 0x00,r12 ; r12 set to 0x00
	mov.l @(loc_8c1815C0,pc),r10 ; r10 set to 0x8C1951E2
	mov r4,r14
	bra loc_8c1815A4
	mov r12,r13

loc_8c18158c:
	mov r14,r3
	mov r13,r2
	add 0x10,r3
	shll2 r2
	add r3,r2
	mov.l @r2,r1
	tst r1,r1
	bf loc_8c1815a2
	jsr @r10
	mov.l r11,@-r15
	add 0x04,r15

loc_8c1815a2:
	add 0x01,r13

loc_8c1815A4:
	mov.b @(0x03,r14),r0
	extu.b r0,r0
	cmp/ge r0,r13
	bf loc_8c18158C
	mov.l @(loc_8c1815CC,pc),r9 ; r9 set to 0x8C1830D8
	mov 0x08,r11 ; r11 set to 0x08
	bra loc_8c181636
	mov r12,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1815B4:
	#data bank19.loc_8c195194
loc_8c1815B8:
	#data bank19.loc_8c1951AC
loc_8c1815BC:
	#data bank1c.loc_8c1c5410
loc_8c1815C0:
	#data bank19.loc_8c1951E2
loc_8c1815C4:
	#data bank12.loc_8c129128
loc_8c1815C8:
	#data bank1c.loc_8c1c5438
loc_8c1815CC:
	#data loc_8c1830D8

;==============================================
loc_8c1815D0:
	mov r13,r4
	mov r14,r3
	shll2 r4
	mov r15,r6
	add 0x18,r3
	mov r15,r7
	shll r4
	add r4,r3
	mov.l @r3,r2
	mov r14,r3
	add 0x18,r3
	add r3,r4
	mov.l r2,@(0x10,r15)
	mov.l @(0x04,r4),r2
	add 0x08,r6
	mov.l r2,@(0x14,r15)
	mov.l @(0x3C,r14),r2
	mov.l @(0x08,r14),r3
	mul.l r3,r2
	mov.l @(loc_8c181718,pc),r3 ; r3 set to 0x8C129128
	sts macl,r1
	jsr @r3
	mov r11,r0
	mov r15,r4
	mov r0,r5
	jsr @r9
	add 0x10,r4
	mov r14,r8
	mov r13,r10
	add 0x10,r8
	mov r15,r6
	shll2 r10
	add r10,r8
	mov.l @r8,r8
	mov 0x00,r5 ; r5 set to 0x00
	add 0x08,r6
	mov.l @r8,r3 ; r3 ??? bc r8 is ???
	mov.l @(0x20,r3),r2
	jsr @r2
	mov r8,r4
	mov r14,r8
	add 0x10,r8
	add r10,r8
	mov r15,r6
	mov.l @r8,r8
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @r8,r3
	mov.l @(0x1C,r3),r2
	jsr @r2
	mov r8,r4
	add 0x01,r13

loc_8c181636:
	mov.b @(0x03,r14),r0
	extu.b r0,r0
	cmp/ge r0,r13
	bf loc_8c1815D0
	mov.l @(0x2C,r14),r1
	mov.l @(0x3C,r14),r3
	mov.l @(loc_8c18171C,pc),r2 ; r2 set to 0x8C1292D4, r2 set to 0x8C1292D4
	add r3,r1
	jsr @r2
	mov.l @(0x28,r14),r0
	mov.l r0,@(0x2C,r14)
	mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
	mov.l @(0x34,r14),r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(0x3C,r14),r3
	add r3,r2
	mov.l r2,@(0x34,r14)
	mov.l @(r0,r14),r2
	mov.l @(0x3C,r14),r3
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.l r12,@(0x3C,r14)
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
loc_8c181674:
	mov 0x58,r0
	mov.l @(0xA4,PC),r2
	sts.l pr,@-r15
	mov.l @(r0,r4),r3
	mov 0x50,r0
	mov.l @(r0,r4),r1
	add r3,r1
	jsr @r2
	mov.l @(0x28,r4),r0
	mov 0x50,r1
	add r4,r1
	mov 0x58,r3
	mov.l r0,@r1
	add r4,r3
	mov 0x54,r0
	mov.l @r3,r3
	mov.l @(r0,r4),r2
	mov 0x00,r1
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x58,r0
	lds.l @r15+,pr
	rts 
	mov.l r1,@(r0,r4)

;==============================================
loc_8c1816A4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c181720,pc),r14 ; r14 set to 0x8C1C962C
	mov.l r4,@r15
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8c181712,pc),r11 ; r11 set to 0x1388
	mov.w @(loc_8c181714,pc),r12 ; r12 set to 0xC8
	mov.l r4,@r14 ; r14 ??
	bra loc_8c1816D6
	mov r4,r13

loc_8c1816C0:
	bsr loc_8c181456
	mov.l @r15,r4
	cmp/eq 0x01,r0
	bt loc_8c1816da
	mov r11,r4

loc_8c1816CA:
	dt r4
	bf loc_8c1816ca
	mov.l @r14,r3
	add 0x01,r13
	add 0x01,r3
	mov.l r3,@r14

loc_8c1816d6:
	cmp/ge r12,r13
	bf loc_8c1816c0

loc_8c1816da:
	cmp/eq r12,r13
	bf loc_8c1816e8
	mov.l @(loc_8c181728,pc),r3
	mov.l @(loc_8c181724,pc),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15

loc_8c1816e8:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c1816F6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c181730
	mov.l r5,@(0x04,r15)
	mov.l @(loc_8c181728,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c18172C,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c1817CA
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181712:
	#data 0x1388
loc_8c181714:
	#data 0x00C8
	#align4

loc_8c181718:
	#data bank12.loc_8c129128
loc_8c18171C:
	#data bank12.loc_8c1292D4
loc_8c181720:
	#data bank1c.loc_8c1c962C
loc_8c181724:
	#data bank1c.loc_8c1c545C
loc_8c181728:
	#data bank19.loc_8c1951E2
loc_8c18172C:
	#data bank1c.loc_8c1c5410

;==============================================
loc_8c181730:
	mov.w @(loc_8c18181E,pc),r0 ; r0 set to 0x8C
	mov 0x01,r1 ; r1 set to 0x01
	mov.l r1,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x8C
	cmp/eq 0x01,r0
	bf/s loc_8c18175C
	mov 0x00,r13 ; r13 set to 0x00
	bsr loc_8c1816A4
	mov r14,r4
	bsr loc_8c181E78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181754
	bsr loc_8c18156E
	mov r14,r4
	bra loc_8c181758
	nop

loc_8c181754:
	bsr loc_8c181674
	mov r14,r4

loc_8c181758:
	mov r13,r0
	mov.b r0,@(0x05,r14) 

loc_8c18175C:
	mov.l @(loc_8c181820,pc),r3 ; r3 set to 0x8C195194
	jsr @r3
	mov r15,r4
	mov.w @(loc_8c18181E,pc),r0 ; r0 set to 0x8C
	mov.l r13,@(r0,r14)
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	tst r3,r3
	bf loc_8c18178A
	bsr loc_8c181E78
	mov r14,r4
	tst r0,r0
	bt loc_8c1817C4
	mov.l @(0x2C,r14),r3
	mov 0x50,r0 ; r0 set to 0x50
	mov.l r3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l r13,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	mov.l r13,@(r0,r14)
	mov.b @(0x01,r14),r0
	and 0x06,r0
	bra loc_8c1817C4
	mov.b r0,@(0x01,r14)

loc_8c18178a:
	mov.l @(0x04,r15),r0
	cmp/eq 0x01,r0 
	bf loc_8c1817c4
	bsr loc_8c181e78
	mov r14,r4
	cmp/eq 0x01,r0 
	bt loc_8c1817c4
	mov r13,r0
	mov.l r13,@(0x2C,r14) 
	mov.l r13,@(0x30,r14) 
	mov.l r13,@(0x34,r14) 
	mov.b r0,@(0x06,r14) 
	mov 0x5C,r0
	mov.l r13,@(r0,r14) 
	mov 0x48,r0
	mov.l r13,@(r0,r14) 
	mov 0x4C,r0
	mov.l r13,@(r0,r14) 
	mov r13,r0
	mov.l r13,@(0x3C,r14) 
	mov.b r0,@(0x04,r14) 
	mov 0x50,r0
	mov.l @(0x2C,r14),r3
	mov.l r3,@(r0,r14) 
	mov 0x54,r0
	mov.l r13,@(r0,r14) 
	mov.b @(0x01,r14),r0 
	or 0x01,r0 
	mov.b r0,@(0x01,r14) 

loc_8c1817C4:
	mov.l @(loc_8c181824,pc),r3 ; r3 set to 0x8C1951AC
	jsr @r3
	mov r15,r4

loc_8c1817CA:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1817D4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c1817F4
	mov.l r5,@r15
	mov.l @(loc_8c18182C,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c181828,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1817F4:
	mov.l @(loc_8c181820,pc),r2 ; r2 set to 0x8C195194
	mov r15,r4
	jsr @r2
	add 0x04,r4
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c181830
	bsr loc_8c181E9E
	mov r14,r4
	tst r0,r0
	bt loc_8c181850
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x14,r2),r1
	jsr @r1
	mov r3,r4
	mov.b @(0x01,r14),r0
	and 0x05,r0
	bra loc_8c181850
	mov.b r0,@(0x01,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18181E:
	#data 0x008C
	#align4

loc_8c181820:
	#data bank19.loc_8c195194
loc_8c181824:
	#data bank19.loc_8c1951AC
loc_8c181828:
	#data bank1c.loc_8c1c5410
loc_8c18182C:
	#data bank19.loc_8c1951E2

;==============================================
loc_8c181830:
	mov.l @r15,r0
	cmp/eq 0x01,r0 
	bf loc_8c181850
	bsr loc_8c181e9e
	mov r14,r4
	cmp/eq 0x01,r0 
	bt loc_8c181850
	mov.l @(0x38,r14),r2
	mov.l r2,@r15
	mov.l @r2,r3
	mov.l @(0x10,r3),r1
	jsr @r1
	mov r2,r4
	mov.b @(0x01,r14),r0 
	or 0x02,r0 
	mov.b r0,@(0x01,r14) 

loc_8c181850:
	mov.l @(loc_8c181A28,pc),r3 ; r3 set to 0x8C1951AC
	mov r15,r4
	jsr @r3
	add 0x04,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c181860:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x1B8,PC),r3
	mov 0x20,r1
	mov r4,r14
	jsr @r3
	mov.l @(0x8,r14),r0
	mov.l @(0x34,r14),r3
	mov r0,r9
	mov.l @(0x28,r14),r4
	shll2 r9
	mov.l @(0x1A4,PC),r2
	shll r9
	sub r3,r4
	mov r4,r1
	jsr @r2
	mov r9,r0
	mul.l r9,r0
	mov.l @(0x1A0,PC),r11
	mov 0x00,r13
	mov.l @(0x198,PC),r10
	sts macl,r8
	bra loc_8c1818ec
	mov r13,r12

loc_8c18189E:
	mov r14,r3
	mov r12,r2
	add 0x10,r3
	shll2 r2
	add r3,r2
	mov.l @r2,r1
	tst r1,r1
	bf loc_8c1818b4
	jsr @r11
	mov.l r10,@-r15
	add 0x04,r15

loc_8c1818B4:
	mov r14,r2
	mov r12,r3
	add 0x10,r2
	mov r12,r7
	shll2 r3
	add r2,r3
	mov.l @r3,r1
	shll2 r7
	shll r7
	mov.l r1,@r15
	mov.l @(0x8,r14),r6
	mov.l @r1,r3
	mul.l r6,r8
	mov.l @(0x18,r3),r2
	mov r14,r3
	add 0x18,r3
	add r3,r7
	sts macl,r6
	cmp/pz r6
	bt loc_8c1818de
	add 0x07,r6

loc_8c1818DE:
	shar r6
	shar r6
	mov 0x01,r5
	shar r6
	jsr @r2
	mov.l @r15,r4
	add 0x01,r12

loc_8c1818EC:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/ge r0,r12
	bf loc_8c18189e
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181900
	bra loc_8c18191c
	mov.l @(0x1C,r14),r1

loc_8c181900:
	mov r14,r5
	add 0x18,r5
	mov r5,r7
	add 0x08,r7
	mov r5,r6
	mov.l r6,@(0x8,r15)
	mov.l @(0x4,r6),r6
	mov.l r7,@(0x4,r15)
	mov.l @(0x4,r7),r7
	cmp/ge r7,r6
	bt loc_8c18191a
	bra loc_8c18191c
	mov r6,r1

loc_8c18191A:
	mov r7,r1

loc_8c18191C:
	mov.l @(0x10C,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r0
	mov r0,r4
	shll2 r4
	shll r4
	cmp/ge r8,r4
	bf loc_8c18192e
	mov r8,r4

loc_8c18192E:
	mov.l @(0x28,r14),r5
	mov.l @(0x2C,r14),r3
	sub r3,r5
	cmp/ge r5,r4
	bf loc_8c18193a
	mov r5,r4

loc_8c18193A:
	mov.l @(0xF0,PC),r2
	mov r4,r1
	jsr @r2
	mov r9,r0
	mul.l r9,r0
	sts macl,r9
	cmp/pl r9
	bt loc_8c181990
	bra loc_8c181984
	mov r13,r12

loc_8c18194E:
	mov r14,r3
	mov r12,r13
	add 0x10,r3
	shll2 r13
	add r13,r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c181964
	jsr @r11
	mov.l r10,@-r15
	add 0x04,r15

loc_8c181964:
	mov r14,r9
	add 0x10,r9
	add r13,r9
	mov r12,r6
	mov.l @r9,r9
	shll2 r6
	shll r6
	mov.l @r9,r3
	mov 0x01,r5
	mov.l @(0x1C,r3),r2
	mov r14,r3
	add 0x18,r3
	add r3,r6
	jsr @r2
	mov r9,r4
	add 0x01,r12

loc_8c181984:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/ge r0,r12
	bf loc_8c18194e
	bra loc_8c1819ca
	mov 0x00,r0

loc_8c181990:
	mov.l @(0xA4,PC),r4
	mov r13,r12
	mov r4,r10
	mov r4,r11
	bra loc_8c1819be
	add 0x04,r10

loc_8c18199C:
	mov r12,r7
	mov r14,r3
	shll2 r7
	mov.l @(0x2C,r14),r6
	add 0x18,r3
	mov r12,r5
	shll r7
	add r3,r7
	mov.l @r7,r7
	mov.l r13,@r11
	mov.l r9,@-r15
	bsr loc_8c181418
	mov r14,r4
	add 0x04,r15
	add 0x01,r12
	mov.l r13,@r10
	mov r0,r4

loc_8c1819BE:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/ge r0,r12
	bf loc_8c18199c
	mov r4,r0
	mov.l r4,@(0x3C,r14)

loc_8c1819CA:
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

;==============================================
loc_8c1819DE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x28,r14),r5
	mov.l @(0x34,r14),r3
	mov 0x54,r0
	mov r5,r7
	mov.l @(r0,r14),r2
	sub r3,r7
	mov.l @(0x8,r14),r6
	mov.l @(0x30,PC),r3
	mov 0x20,r1
	sub r2,r7
	jsr @r3
	mov r6,r0
	mov r0,r4
	mov.l @(0x24,PC),r2
	shll2 r4
	mov r7,r1
	shll r4
	jsr @r2
	mov r4,r0
	mul.l r4,r0
	mov 0x50,r0
	mov.l @(r0,r14),r3
	sts macl,r7
	sub r3,r5
	cmp/ge r5,r7
	bt/s loc_8c181a3c
	mov.l r5,@r15
	bra loc_8c181a3e
	mov r7,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c181A28:
	#data bank19.loc_8c1951AC
loc_8c181A2C:
	#data bank12.loc_8c129128
loc_8c181A30:
	#data bank1c.loc_8c1c5490
loc_8c181A34:
	#data bank19.loc_8c1951E2
loc_8c181A38:
	#data 0x8C336B60

;==============================================
loc_8c181A3C:
	mov.l @r15,r5

loc_8c181A3E:
	mov.l @(0xB4,PC),r2
	mov.w @(0xAC,PC),r1
	jsr @r2
	mov r6,r0
	mov r0,r7
	shll2 r7
	shll r7
	cmp/ge r7,r5
	bf loc_8c181a52
	mov r7,r5

loc_8c181A52:
	mov.l @(0xA0,PC),r3
	mov r5,r1
	jsr @r3
	mov r4,r0
	mul.l r4,r0
	sts macl,r12
	cmp/pl r12
	bt loc_8c181a66
	bra loc_8c181aa2
	mov 0x00,r0

loc_8c181A66:
	mov.l @(0x8,r14),r0
	cmp/eq 0x04,r0
	bf loc_8c181a72
	mov.l @(0x88,PC),r4
	bra loc_8c181a74
	nop 

loc_8c181A72:
	mov.l @(0x88,PC),r4

loc_8c181A74:
	mov r4,r11
	mov 0xE0,r3
	add 0x20,r11
	and r3,r11
	bra loc_8c181a94
	mov 0x00,r13

loc_8c181A80:
	mov 0x50,r0
	mov r13,r5
	mov.l @(r0,r14),r6
	mov r11,r7
	mov.l r12,@-r15
	bsr loc_8c181418
	mov r14,r4
	add 0x04,r15
	add 0x01,r13
	mov r0,r4

loc_8c181A94:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/ge r0,r13
	bf loc_8c181a80
	mov 0x58,r0
	mov.l r4,@(r0,r14)
	mov r4,r0

loc_8c181AA2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c181AB0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x34,PC),r0
	mov r4,r14
	mov.l @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c181ac8
	bra loc_8c181bde
	nop 

loc_8c181AC8:
	mov 0x00,r13
	bsr loc_8c181e78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b0a
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181b0a
	mov.l @(0x24,PC),r12
	bsr loc_8c181456
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b04
	bsr loc_8c18156e
	mov r14,r4
	mov r13,r0
	mov.b r0,@(0x5,r14)
	bra loc_8c181b0a
	mov.l r0,@r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181af0:
	#data 0x0800
loc_8c181af2:
	#data 0x008C
	#align4

loc_8c181AF4:
	#data bank12.loc_8c129128
loc_8c181AF8:
	#data 0x8C336340
loc_8c181AFc:
	#data 0x8C335B20
loc_8c181B00:
	#data bank1c.loc_8c1c9630

;==============================================
loc_8c181B04:
	mov.l @r12,r2
	add 0x01,r2
	mov.l r2,@r12

loc_8c181B0A:
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181b36
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c181b36
	mov.l @(0x10,r14),r2
	mov 0x01,r5
	mov.l r2,@r15
	mov.l @r2,r3
	mov.l @(0x24,r3),r1
	jsr @r1
	mov r2,r4
	mov 0x20,r3
	cmp/ge r3,r0
	bt loc_8c181b36
	mov 0x00,r5
	bsr loc_8c1816f6
	mov r14,r4
	mov r13,r0
	mov.b r0,@(0x6,r14)

loc_8c181B36:
	bsr loc_8c181e9e
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b42
	bsr loc_8c1814e4
	mov r14,r4

loc_8c181B42:
	bsr loc_8c181e78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b5c
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c181b98
	bsr loc_8c181860
	mov r14,r4
	cmp/pl r0
	bt loc_8c181b94
	bra loc_8c181b98
	nop 

loc_8c181B5C:
	bsr loc_8c181e9e
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b98
	mov 0x54,r0
	mov.l @(0x28,r14),r2
	mov.l @(r0,r14),r3
	cmp/ge r2,r3
	bt loc_8c181b98
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181b86
	bsr loc_8c181456
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b86
	bsr loc_8c181674
	mov r14,r4
	mov r13,r0
	mov.b r0,@(0x5,r14)

loc_8c181B86:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c181b98
	bsr loc_8c1819de
	mov r14,r4
	cmp/pl r0
	bf loc_8c181b98

loc_8c181B94:
	mov 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c181B98:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c181bbc
	mov 0x40,r0
	mov.l @(0x34,r14),r3
	mov.l @(r0,r14),r2
	cmp/ge r2,r3
	bf loc_8c181bbc
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c181bbc
	mov 0x01,r5
	bsr loc_8c1817d4
	mov r14,r4
	mov.l @(0x34,PC),r3
	mov 0x40,r0
	mov.l r3,@(r0,r14)

loc_8c181BBC:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c181bde
	mov.l @(0x34,r14),r2
	tst r2,r2
	bf loc_8c181bde
	mov 0x00,r5
	bsr loc_8c1817d4
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c18139c
	mov.l @r15+,r14

loc_8c181BDE:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c181bec:
	#data 0x7FFFFFFF

;==============================================
loc_8c181BF0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov r15,r4
	mov.w @(0xD0,PC),r11
	mov.l @(0xD8,PC),r5
	mov.w @(0xCA,PC),r12
	add r5,r11
	mov r5,r4
	mov r5,r13
	mov r5,r14

loc_8c181C10:
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181c1c
	bsr loc_8c181ab0
	mov r13,r4

loc_8c181C1C:
	add r12,r14
	cmp/hs r11,r14
	bf/s loc_8c181c10
	add r12,r13
	mov.l @(0xBC,PC),r2
	jsr @r2
	mov r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14


;==============================================
;Unused?
loc_8c181c38:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c181c52
	mov.l @(0xA4,PC),r3
	mov.l @(0x9C,PC),r2
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c181cac
	add 0x04,r15

loc_8c181c52:
	mov.l @(0x88,PC),r2
	jsr @r2
	mov r15,r4
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c181ca6
	bsr loc_8c181e9e
	mov r14,r4
	shll r0
	mov r0,r8
	bsr loc_8c181e78
	mov r14,r4
	or r0,r8
	mov.w @(0x68,PC),r0
	mov.l r8,@(r0,r14)
	bsr loc_8c1814e4
	mov r14,r4
	mov 0x00,r5
	bsr loc_8c1817d4
	mov r14,r4
	mov 0x01,r4
	mov r4,r0
	mov.b r0,@(0x7,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181ca2
	mov.w @(0x4E,PC),r0
	mov.l @(0x58,PC),r3
	mov.l r4,@(r0,r14)
	jsr @r3
	mov r15,r4
	bsr loc_8c1816a4
	mov r14,r4
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r15,r4
	mov.w @(0x3A,PC),r0
	mov 0x00,r2
	mov.l r2,@(r0,r14)

loc_8c181ca2:
	bsr loc_8c181d44
	mov r14,r4

loc_8c181ca6:
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov r15,r4

loc_8c181cac:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c181cb6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c181cf0
	mov.l @(0x28,PC),r3
	mov.l @(0x20,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181CD4:
	#data 0x0090
loc_8c181CD6:
	#data 0x0480
loc_8c181CD8:
	#data 0x0088
loc_8c181CDa:
	#data 0x008C
	#align4

loc_8c181CDC:
	#data bank19.loc_8c195194
loc_8c181Ce0:
	#data 0x8C3356A0
loc_8c181CE4:
	#data bank19.loc_8c1951AC
loc_8c181CE8:
	#data bank1c.loc_8c1c5410
loc_8c181CEC:
	#data bank19.loc_8c1951E2

;==============================================
loc_8c181cf0:
	mov.l @(0x110,PC),r2
	jsr @r2
	mov r15,r4
	mov.b @(0x7,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181d16
	mov.w @(0xFE,PC),r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bt loc_8c181d12
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c181d12
	mov 0x01,r5
	bsr loc_8c1817d4
	mov r14,r4

loc_8c181d12:
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8c181d16:
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181d3a
	mov.l @(0xE4,PC),r3
	mov.l @(0xDC,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

loc_8c181d3a:
	mov.b @(0x7,r4),r0
	extu.b r0,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c181D44:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c181D62
	mov.l @(loc_8c181E10,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c181E0C,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c181D62:
	mov.l @(loc_8c181E04,pc),r2 ; r2 set to 0x8C195194
	mov r15,r4
	jsr @r2
	add 0x04,r4
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181D8A
	bsr loc_8c181E78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181D82
	bsr loc_8c18156E
	mov r14,r4
	bra loc_8c181D86
	nop

loc_8c181d82:
	bsr loc_8c181674
	mov r14,r4

loc_8c181d86:
	mov 0x00,r0
	mov.b r0,@(0x05,r14) 

loc_8c181d8a:
	mov.l @(0x30,r14),r3
	tst r3,r3
	bt loc_8c181dec
	mov.l @(0x34,r14),r2
	cmp/pl r2
	bf loc_8c181dec
	mov.l @(0x38,r14),r2
	mov 0x54,r0
	mov.l @(0x30,r14),r5
	mov r15,r6
	mov.l r2,@(0x08,r15) 
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	jsr @r1
	mov r2,r4
	mov r0,r4
	mov.w @(loc_8C181E00,pc),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x02,r0 
	bf loc_8c181dca
	mov 0x50,r0
	mov.l @(0x28,r14),r5
	mov.l @(r0,r14),r1
	mov.l @r15,r3
	mov.l @(loc_8c181e14,pc),r2
	add r5,r1
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov 0x50,r1
	add r14,r1
	mov.l r0,@r1

loc_8c181dca:
	mov.l @(0x2C,r14),r1
	mov.l @(0x28,r14),r5
	mov.l @r15,r3
	mov.l @(loc_8c181e14,pc),r2
	add r5,r1
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov.l r0,@(0x2C,r14) 
	mov.l @(0x30,r14),r3
	mov.l @r15,r2
	add r4,r3
	sub r2,r3
	mov.l r3,@(0x30,r14) 
	mov.l @(0x34,r14),r2
	sub r4,r2
	mov.l r2,@(0x34,r14) 

loc_8c181dec:
	mov.l @(loc_8c181e08,pc),r3
	mov r15,r4
	jsr @r3
	add 0x04,r4
	add 0x0C,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8c181DFC:
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181e00:
	#data 0x0088
	#align4

loc_8c181E04:
	#data bank19.loc_8c195194
loc_8c181E08:
	#data bank19.loc_8c1951AC
loc_8c181E0C:
	#data bank1c.loc_8c1c5410
loc_8c181E10:
	#data bank19.loc_8c1951E2
loc_8c181E14:
	#data bank12.loc_8c1292D4

;==============================================
loc_8c181E18:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	mov.l r5,@(0x04,r15)
	bf/s loc_8c181E36
	mov.l r6,@r15
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c181E4E
	add 0x04,r15

loc_8c181E36:
	bsr loc_8c1814E4
	mov r14,r4
	mov 0x4C,r0 ; r0 set to 0x4C
	mov.l @(0x34,r14),r2
	mov.l @(r0,r14),r1
	mov.l @(0x04,r15),r3
	sub r2,r1
	mov.l r1,@r3
	mov.l @r15,r8
	bsr loc_8c182262
	mov r14,r4
	mov.l r0,@r8
	
loc_8c181E4E:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c181E58:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181E6E
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c181E6E:
	mov.b @(0x01,r4),r0
	extu.b r0,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c181E78:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181E8E
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c181E8E:
	mov.b @(0x01,r4),r0
	mov 0x01,r4 ; r4 set to 0x01
	extu.b r0,r0
	and r0,r4 ; r4 ??? bc r0 is ???
	mov r4,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c181E9E:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181EB4
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c181EB4:
	mov.b @(0x01,r4),r0
	mov 0x02,r4 ; r4 set to 0x02
	extu.b r0,r0
	and r0,r4 ; r4 ??? bc r0 is ???
	shar r4
	mov r4,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c181ec6:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181edc
	mov.l @(0x1B8,PC),r3
	mov.l @(0x1B4,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

loc_8c181edc:
	mov.b @(0x1,r4),r0
	mov 0x04,r4
	extu.b r0,r0
	and r0,r4
	shar r4
	shar r4
	mov r4,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c181EF0:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181F06
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c181F06:
	mov.l @(0x34,r4),r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c181f0e:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181f24
	mov.l @(0x170,PC),r3
	mov.l @(0x16C,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

loc_8c181f24:
	mov.l @(0x28,r4),r0
	mov.l @(0x34,r4),r3
	sub r3,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c181F30:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c181F46
	mov r5,r13
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	bra loc_8c181F50
	nop

loc_8c181F46:
	mov.b @(0x02,r14),r0
	extu.b r0,r0
	cmp/gt r0,r13
	bf loc_8c181F5A
	mov.l @(loc_8c18208C,pc),r2 ; r2 set to 0x8C1C54B4

loc_8c181F50:
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2, r3 set to 0x8C1951E2
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c181FAC
	add 0x04,r15

loc_8c181F5A:
	mov r13,r0
	exts.b r13,r5
	mov.b r0,@(0x03,r14)
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x1C,r2),r1
	jsr @r1
	mov r3,r4
	mov r13,r0
	cmp/eq 0x01,r0
	bf/s loc_8c181F82
	mov r14,r6
	mov r14,r2
	add 0x64,r2
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x68,r0 ; r0 set to 0x68
	mov.l r4,@r2
	bra loc_8c181F90
	mov.l r4,@(r0,r14)

loc_8c181F82:
	mov r14,r2
	mov 0xF1,r3 ; r3 set to 0xFFFFFFF1
	add 0x64,r2
	mov.l r3,@r2
	mov 0x68,r0 ; r0 set to 0x68
	mov 0x0F,r2 ; r2 set to 0x0F
	mov.l r2,@(r0,r14)

loc_8c181F90:
	add 0x64,r6
	mov.l @r6,r6
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	bsr loc_8c1820C4
	mov r14,r4
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov r14,r4
	mov.l @(r0,r14),r6
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c1820C4
	mov.l @r15+,r14

loc_8c181FAC:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c181FB6:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181FCC
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c181FCC:
	mov 0x44,r0 ; r0 set to 0x44
	mov.l r5,@(r0,r4)
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c181FD6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c181FF2
	mov r5,r13
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c182024
	add 0x04,r15

loc_8c181ff2:
	mov.l @(0x28,r14),r2
	mov.l @(0x08,r14),r3
	mul.l r3,r2
	sts macl,r4
	cmp/pz r4
	bt loc_8c182000
	add 0x07,r4

loc_8c182000:
	shar r4
	mov.l @(loc_8c182090,pc),r2
	shar r4
	shar r4
	mov r4,r1
	jsr @r2
	mov r13,r0
	shll2 r0
	mov r13,r5
	shll r0
	mov.l r0,@(0x28,r14) 
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x2C,r2),r1
	jsr @r1
	mov r3,r4
	mov.l r13,@(0x08,r14) 

loc_8c182024:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18202E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c18204E
	mov.l r5,@r15
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18204E:
	mov.l @(0x38,r14),r1
	mov.l r1,@(0x04,r15)
	mov.l @r1,r3
	mov.l @r15,r5
	mov.l @(0x24,r3),r2
	jsr @r2
	mov r1,r4
	mov.l @r15,r3
	mov.l r3,@(0x0C,r14)
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182068:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	tst r13,r13
	bf loc_8c182094
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c1820BA
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c182084:
	#data bank1c.loc_8c1c5410
loc_8c182088:
	#data bank19.loc_8c1951E2
loc_8c18208C:
	#data bank1c.loc_8c1c54B4
loc_8c182090:
	#data bank12.loc_8c129128

;==============================================
loc_8c182094:
	cmp/pz r5
	bf loc_8c18209C
	bra loc_8c1820A8
	mov 0x00,r14

loc_8c18209C:
	mov.w @(loc_8c182184,pc),r4 ; r4 set to 0xFC19
	cmp/gt r4,r5
	bt loc_8c1820A6
	bra loc_8c1820A8
	mov r4,r14

loc_8c1820A6:
	mov r5,r14

loc_8c1820A8:
	mov.l @(0x38,r13),r2
	mov r14,r5
	mov.l r2,@r15
	mov.l @r2,r3
	mov.l @(0x34,r3),r1
	jsr @r1
	mov r2,r4
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov.l r14,@(r0,r13)

loc_8c1820BA:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1820C4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	tst r13,r13
	bf/s loc_8c1820E0
	mov.l r5,@r15
	mov.l @(loc_8c18218C,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182188,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c18210E
	add 0x04,r15
	
loc_8c1820e0:
	mov 0xF1,r4
	cmp/ge r4,r6
	bf loc_8c1820ec
	mov 0x0F,r4
	cmp/gt r4,r6
	bf loc_8c1820f0

loc_8c1820ec:
	bra loc_8c1820f2
	mov r4,r14

loc_8c1820f0:
	mov r6,r14

loc_8c1820f2:
	mov.l @(0x38,r13),r2
	mov r14,r6
	mov.l r2,@(0x04,r15) 
	mov.l @r2,r3
	mov.l @r15,r5
	mov.l @(0x3C,r3),r1
	jsr @r1
	mov r2,r4
	mov.l @r15,r3
	mov r13,r2
	add 0x64,r2
	shll2 r3
	add r2,r3
	mov.l r14,@r3

loc_8c18210E:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182118:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	tst r13,r13
	bf/s loc_8c182130
	mov r5,r12
	mov.l @(loc_8c182188,pc),r2 ; r2 set to 0x8C1C5410
	bra loc_8c18213E
	mov.l r2,@-r15

loc_8c182130:
	cmp/pz r12
	bf loc_8c18213a
	mov 0x10,r3
	cmp/gt r3,r12
	bf loc_8c182148

loc_8c18213a:
	mov.l @(loc_8c182190,pc),r1
	mov.l r1,@-r15

loc_8c18213E:
	mov.l @(loc_8c18218C,pc),r3 ; r3 set to 0x8C1951E2
	jsr @r3
	nop
	bra loc_8c182178
	add 0x04,r15

loc_8c182148:
	mov 0xD3,r4
	cmp/ge r4,r6
	bt loc_8c182152
	bra loc_8c18215c
	mov r4,r14


loc_8c182152:
	cmp/pl r6
	bf loc_8c18215a
	bra loc_8c18215c
	mov 0x00,r14

loc_8c18215A:
	mov r6,r14

loc_8c18215C:
	mov.l @(0x38,r13),r2
	mov 0x44,r0
	mov r12,r6
	mov 0x00,r5
	mov.l r2,@r15
	mov r14,r7
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	jsr @r1
	mov r2,r4
	mov 0x6C,r0
	mov.l r12,@(r0,r13)
	mov 0x70,r0
	mov.l r14,@(r0,r13)

loc_8c182178:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182184:
	#data 0xFC19
	#align4

loc_8c182188:
	#data bank1c.loc_8c1c5410
loc_8c18218C:
	#data bank19.loc_8c1951E2
loc_8c182190:
	#data bank1c.loc_8c1c54E8

;==============================================
loc_8c182194:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r4,r14
	tst r14,r14
	mov.l r5,@(0x0C,r15)
	bf/s loc_8c1821B6
	mov.l r6,@(0x10,r15)
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x14,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1821B6:
	mov.l @(0x38,r14),r1
	mov 0x44,r0 ; r0 set to 0x44
	mov 0x01,r5 ; r5 set to 0x01
	mov.l r1,@(0x08,r15)
	mov.l @r1,r3
	mov.l @(0x10,r15),r7
	mov.l @(0x0C,r15),r6
	mov.l @(r0,r3),r2
	jsr @r2
	mov r1,r4
	mov.l @(0x38,r14),r3
	mov 0x48,r0 ; r0 set to 0x48
	mov r15,r7
	mov r15,r6
	mov 0x01,r5 ; r5 set to 0x01
	mov.l r3,@(0x08,r15)
	mov.l @r3,r2
	add 0x04,r7
	mov.l @(r0,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @r15,r3
	mov 0x74,r0 ; r0 set to 0x74
	mov.l r3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	mov.l @(0x04,r15),r2
	mov.l r2,@(r0,r14)
	add 0x14,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1821f4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	tst r13,r13
	bf loc_8c18220e
	mov.l @(0xB8,PC),r3
	mov.l @(0xB0,PC),r2
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c18223a
	add 0x04,r15

loc_8c18220e:
	mov 0xD3,r4
	cmp/ge r4,r5
	bt loc_8c182218
	bra loc_8c182222
	mov r4,r14

loc_8c182218:
	cmp/pl r5
	bf loc_8c182220
	bra loc_8c182222
	mov 0x00,r14

loc_8c182220:
	mov r5,r14

loc_8c182222:
	mov.l @(0x38,r13),r2
	mov 0x44,r0
	mov r14,r6
	mov 0x02,r5
	mov.l r2,@r15
	mov 0x00,r7
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	jsr @r1
	mov r2,r4
	mov.w @(0x7C,PC),r0
	mov.l r14,@(r0,r13)

loc_8c18223a:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182244:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c18225A
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c18225A:
	mov.l @(0x08,r4),r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c182262:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c182278
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c182278:
	mov.l @(0x0C,r4),r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c182280:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c182296
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c182296:
	mov 0x60,r0 ; r0 set to 0x60
	mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1822A0:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c1822C0
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1822b6:
	#data 0x0084
	#align4

loc_8c1822B8:
	#data bank1c.loc_8c1c5410
loc_8c1822BC:
	#data bank19.loc_8c1951E2

;==============================================
loc_8c1822C0:
	mov r4,r3
	mov r5,r0
	add 0x64,r3
	shll2 r0
	mov.l @(r0,r3),r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1822D0:
	sts.l pr,@-r15
	add 0xF8,r15
	tst r4,r4
	mov.l r5,@(0x04,r15)
	bf/s loc_8c1822F8
	mov.l r6,@r15
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	mov.l @(0x04,r15),r2 ; r2 ??? bc r15 is ???
	mov 0xFF,r4 ; r4 set to 0xFFFFFFFF
	mov.l r4,@r2
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.l r4,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1822F8:
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(0x04,r15),r3
	mov.l @(r0,r4),r2
	mov 0x70,r0 ; r0 set to 0x70
	mov.l r2,@r3
	mov.l @(r0,r4),r2
	mov.l @r15,r3
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c182310:
	sts.l pr,@-r15
	add 0xF8,r15
	tst r4,r4
	mov.l r5,@(0x04,r15)
	bf/s loc_8c182338
	mov.l r6,@r15
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	mov.l @(0x04,r15),r2 ; r2 ??? bc r15 is ???
	mov 0xFF,r4 ; r4 set to 0xFFFFFFFF
	mov.l r4,@r2
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.l r4,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c182338:
	mov 0x74,r0 ; r0 set to 0x74
	mov.l @(0x04,r15),r3
	mov.l @(r0,r4),r2
	mov 0x78,r0 ; r0 set to 0x78
	mov.l r2,@r3
	mov.l @(r0,r4),r2
	mov.l @r15,r3
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c182350:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c182366
	mov.l @(0xBC,PC),r3
	mov.l @(0xB4,PC),r1
	jsr @r3
	mov.l r1,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

loc_8c182366:
	mov.w @(0xA2,PC),r0
	mov.l @(r0,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c182370:
	mov.l @(loc_8c182418,pc),r3 ; r3 set to 0x8C1951C4
	jmp @r3
	nop

;==============================================
loc_8c182376:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	tst r14,r14
	mov.l r5,@(0x04,r15)
	bf/s loc_8c182398
	mov.l r6,@r15
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182398:
	mov.l @(0x04,r15),r1
	mov 0x7C,r0 ; r0 set to 0x7C
	mov 0x03,r5 ; r5 set to 0x03
	mov.l r1,@(r0,r14)
	mov.w @(loc_8c18240E,pc),r0 ; r0 set to 0x80
	mov.l @r15,r3
	mov.l r3,@(r0,r14)
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(0x38,r14),r2
	mov r2,r4
	mov.l r2,@(0x08,r15)
	mov.l @r2,r3
	mov.l @r15,r7
	mov.l @(0x04,r15),r6
	mov.l @(r0,r3),r1
	add 0x0C,r15
	lds.l @r15+,pr
	jmp @r1
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1823be:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1823C6:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c1823DC
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1823DC:
	mov 0x7C,r0 ; r0 set to 0x7C
	mov.l @(r0,r4),r1
	add 0x04,r0 ; r0 set to 0x80
	mov.l r1,@r5
	mov.l @(r0,r4),r3
	mov.l r3,@r6
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1823EE:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov r4,r14
	tst r14,r14
	mov.l r5,@(0x1C,r15)
	bf/s loc_8c18241C
	mov.l r6,@r15
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c182518
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18240c:
	#data 0x0084
loc_8c18240E:
	#data 0x0080
	#align4

loc_8c182410:
	#data bank1c.loc_8c1c5410
loc_8c182414:
	#data bank19.loc_8c1951E2
loc_8c182418:
	#data bank19.loc_8c1951C4

;==============================================
loc_8c18241c:
	mov.l @(0x38,r14),r1
	mov 0x44,r0
	mov 0x04,r5
	mov.l r1,@(0x04,r15) 
	mov 0x00,r7
	mov.l @r1,r3
	mov.l @(0x1C,r15),r6
	mov.l @(r0,r3),r2
	jsr @r2
	mov r1,r4
	mov.l @(0x38,r14),r3
	mov 0x48,r0
	mov r15,r7
	mov 0x04,r5
	mov.l r3,@(0x04,r15) 
	add 0x24,r7
	mov.l @r3,r2
	mov.l @r15,r6
	mov.l @(r0,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @r15,r3
	mov.l @r3,r2
	cmp/pl r2
	bf loc_8c182518
	mov.l @(0x38,r14),r1
	mov.l r1,@r15
	mov.l @r1,r3
	mov.l @(0x30,r3),r2
	jsr @r2
	mov r1,r4
	mov.l r0,@(0x04,r15) 
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x28,r2),r1
	jsr @r1
	mov r3,r4
	mov.l r0,@(0x28,r15) 
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x38,r2),r1
	jsr @r1
	mov r3,r4
	mov.l r0,@r15
	mov 0x40,r0
	mov r15,r3
	add 0x2C,r3
	mov 0x00,r5
	mov.l r3,@(0x1C,r15) 
	mov.l @(0x38,r14),r2
	mov r3,r8
	mov.l r2,@(0x20,r15) 
	mov.l @r2,r1
	mov.l @(r0,r1),r0
	jsr @r0
	mov r2,r4
	mov.l r0,@r8
	mov 0x40,r0
	mov r15,r3
	add 0x30,r3
	mov 0x01,r5
	mov.l r3,@(0x20,r15) 
	mov.l @(0x38,r14),r2
	mov r3,r8
	mov.l r2,@(0x08,r15) 
	mov.l @r2,r1
	mov.l @(r0,r1),r0
	jsr @r0
	mov r2,r4
	mov.l r0,@r8
	mov 0x48,r0
	mov.l @(0x38,r14),r3
	mov r15,r7
	mov r15,r6
	add 0x14,r6
	mov 0x00,r5
	mov.l r3,@(0x08,r15) 
	mov.l @r3,r2
	add 0x18,r7
	mov.l @(r0,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @(0x38,r14),r3
	mov 0x48,r0
	mov r15,r7
	mov r15,r6
	add 0x0C,r6
	mov.l r3,@(0x08,r15) 
	mov.l @r3,r2
	mov 0x03,r5
	add 0x10,r7
	mov.l @(r0,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @(0x04,r15),r5
	bsr loc_8c181fd6
	mov r14,r4
	mov.l @(0x28,r15),r5
	bsr loc_8c18202e
	mov r14,r4
	mov.l @r15,r2
	mov 0x60,r0
	mov r14,r3
	add 0x64,r3
	mov.l r2,@(r0,r14) 
	mov 0x68,r0
	mov.l @(0x1C,r15),r2
	mov.l @r2,r1
	mov.l r1,@r3
	mov.l @(0x20,r15),r3
	mov.l @r3,r2
	mov.l r2,@(r0,r14) 
	mov 0x6C,r0
	mov.l @(0x14,r15),r3
	mov.l r3,@(r0,r14) 
	mov 0x70,r0
	mov.l @(0x18,r15),r2
	mov.l r2,@(r0,r14) 
	mov 0x7C,r0
	mov.l @(0x0C,r15),r3
	mov.l r3,@(r0,r14) 
	mov.w @(loc_8C182522,pc),r0
	mov.l @(0x10,r15),r2
	mov.l r2,@(r0,r14) 

loc_8c182518:
	add 0x34,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182522:
	#data 0x0080

;===============================================
loc_8c182524:
	stc sr, r0
	mov.w @(loc_8c182642,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov r0,r4
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	rts
	mov r4,r0

;==============================================
loc_8c18253C:
	stc sr, r3
	mov r5,r0
	mov.w @(loc_8c182642,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr
	rts
	nop

;==============================================
loc_8c182552:
	bra loc_8c182552
	nop

loc_8c182556:
	mov.l @(loc_8c182648,pc),r4 ; r4 set to 0x8C1C9664
	mov.l @r4,r3
	cmp/pl r3
	bt loc_8c18256E
	mov.l @r4,r1
	mov.l @(loc_8c182650,pc),r3 ; r3 set to 0x8C129728
	add 0x01,r1
	mov.w @(loc_8c182644,pc),r6 ; r6 set to 0x480
	mov.l r1,@r4 ; r4 ??? bc r1 is ???
	mov.l @(loc_8c18264C,pc),r4 ; r4 set to 0x8C336B68
	jmp @r3
	mov 0x00,r5

loc_8c18256E:
	rts
	nop

;==============================================
loc_8c182572:
	mov.l @(loc_8c182648,pc),r4 ; r4 set to 0x8C1C9664
	mov.l @r4,r3
	add 0xFF,r3
	mov r3,r2
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	rts
	cmp/pl r2

;==============================================
loc_8c182580:
	mov.l r14,@-r15
	mov 0x20,r14
	sts.l pr,@-r15
	mov.l @(0xC4,PC),r7
	mov 0x00,r6

loc_8c18258a:
	mov r6,r3
	shll2 r3
	shll r3
	mov r6,r2
	add r2,r3
	shll2 r3
	add r7,r3
	mov.l @(0x4,r3),r1
	tst r1,r1
	bt loc_8c1825a4
	add 0x01,r6
	cmp/ge r14,r6
	bf loc_8c18258a

loc_8c1825a4:
	mov r6,r0
	cmp/eq 0x20,r0
	bf loc_8c1825b2
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_8c1825b2:
	mov r6,r14
	shll2 r14
	shll r14
	mov r6,r3
	add r3,r14
	mov.l @(0x94,PC),r3
	shll2 r14
	mov 0x01,r2
	add r7,r14
	mov.l r2,@(0x4,r14)
	mov.l r3,@r14
	mov.l @(0x8C,PC),r2
	mov.l @(0x90,PC),r3
	mov.l r4,@(0x14,r14)
	mov.l r5,@(0x18,r14)
	mov.l r2,@(0x8,r14)
	mov.l r3,@(0x1C,r14)
	mov.l r14,@(0x20,r14)
	bsr loc_8c18260a
	mov r14,r4
	mov r14,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1825e2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	tst r14,r14
	bt loc_8c1825fa
	mov.l @(0x60,PC),r2
	mov 0x00,r5
	mov 0x24,r6
	jsr @r2
	mov r14,r4
	mov 0x00,r3
	mov.l r3,@(0x4,r14)

loc_8c1825fa:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182600:
	rts
	mov.l @(0x08,r4),r0

;==============================================
loc_8c182604:
	mov.l r5,@(0x1C,r4)
	rts
	mov.l r6,@(0x20,r4)

;==============================================
loc_8c18260A:
	mov.l @(0x18,r4),r3
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r3,@(0x0C,r4)
	rts
	mov.l r2,@(0x10,r4)

;==============================================
loc_8c182614:
	mov.l r14,@-r15
	mov r5,r0
	sts.l pr,@-r15
	cmp/eq 0x01,r0
	bf/s loc_8c182628
	mov r4,r14
	lds.l @r15+,pr
	mov.l @(0x0C,r14),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182628:
	tst r5,r5
	bt loc_8c18263a
	mov.l @(0x1C,r14),r2
	tst r2,r2
	bt loc_8c18263a
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c18263a:
	mov 0x00,r0
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182642:
	#data 0xFF0F
loc_8c182644:
	#data 0x0480
	#align4

loc_8c182648:
	#data bank1c.loc_8C1C9664
loc_8c18264c:
	#data 0x8C336B68
loc_8c182650:
	#data bank12.loc_8C129728
loc_8c182654:
	#data bank1C.loc_8C1C9634
loc_8c182658:
	#data bank1C.loc_8C1C5540
loc_8c18265c:
	#data loc_8C182552

;==============================================
loc_8c182660:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r7,r13
	mov.l r5,@(0x04,r15)
	mov.l r6,@r15
	bsr loc_8c182524
	mov r4,r14
	mov.l r0,@(0x08,r15)
	mov.l @(0x04,r15),r3
	tst r3,r3
	bf/s loc_8c182682
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r4,@(0x04,r13)
	bra loc_8c1826C4
	mov.l r4,@r13

loc_8c182682:
	mov.l @(0x04,r15),r0
	cmp/eq 0x01,r0
	bf loc_8c1826B2
	mov.l @r15,r3
	mov.l @(0x0C,r14),r4
	cmp/ge r3,r4
	bt loc_8c182694
	bra loc_8c182696
	mov r4,r2

loc_8c182694:
	mov.l @r15,r2

loc_8c182696:
	mov.l r2,@(0x04,r13)
	mov.l @(0x14,r14),r1
	mov.l @(0x10,r14),r3
	add r3,r1
	mov.l r1,@r13
	mov.l @(0x10,r14),r2
	mov.l @(0x04,r13),r3
	add r3,r2
	mov.l r2,@(0x10,r14)
	mov.l @(0x04,r13),r3
	mov.l @(0x0C,r14),r1
	sub r3,r1
	bra loc_8c1826C4
	mov.l r1,@(0x0C,r14)

loc_8c1826b2:
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt loc_8c1826c4
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c1826C4:
	mov.l @(0x08,r15),r5
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c18253C
	mov.l @r15+,r14

loc_8c1826D2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	bsr loc_8c182524
	mov r4,r14
	mov.l r0,@(0x8,r15)
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c182706
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bt loc_8c182706
	mov.l @(0x4,r15),r3
	mov 0x00,r4
	mov.l r4,@(0x4,r3)
	mov.l @(0x4,r15),r3
	mov.l r4,@r3
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt loc_8c182706
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c182706:
	mov.l @(0x8,r15),r5
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	bra loc_8c18253c
	mov.l @r15+,r14

loc_8c182712:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r6,r13
	mov.l r5,@r15
	bsr loc_8c182524
	mov r4,r14
	mov.l r0,@(0x04,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c182734
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bf loc_8c18277C
	bra loc_8c182784
	nop

loc_8c182734:
	mov.l @r15,r0
	cmp/eq 0x01,r0 
	bf loc_8c182770
	mov.l @(0x10,r14),r4
	mov.l @(0x04,r13),r3
	sub r3,r4
	cmp/pl r4
	bt loc_8c182746
	mov 0x00,r4

loc_8c182746:
	mov.l r4,@(0x10,r14) 
	mov.l @(0x04,r13),r3
	mov.l @(0x0C,r14),r6
	mov.l @(0x18,r14),r5
	add r3,r6
	cmp/ge r6,r5
	bt loc_8c182758
	bra loc_8c18275a
	mov r5,r2

loc_8c182758:
	mov r6,r2

loc_8c18275a:
	mov.l r2,@(0x0C,r14) 
	mov.l @r13,r5
	mov.l @(0x14,r14),r3
	sub r3,r5
	cmp/eq r5,r4
	bt loc_8c182784
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt loc_8c182784
	bra loc_8c18277c
	nop 

loc_8c182770:
	mov 0x00,r4
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt loc_8c182784

loc_8c18277c:
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c182784:
	mov.l @(0x04,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c18253C
	mov.l @r15+,r14

loc_8c182792:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r6,r12
	mov.l r5,@r15
	mov.l r7,@(0x4,r15)
	bsr loc_8c182524
	mov r4,r14
	mov.l r0,@(0x8,r15)
	mov.l @r15,r3
	tst r3,r3
	bt/s loc_8c1827bc
	mov 0x00,r4
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c1827c4
	mov.l @(0xC,r14),r4
	cmp/ge r12,r4
	bt loc_8c1827c0

loc_8c1827BC:
	bra loc_8c1827d4
	mov r4,r13

loc_8c1827C0:
	bra loc_8c1827d4
	mov r12,r13

loc_8c1827C4:
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt/s loc_8c1827d4
	mov r4,r13
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c1827D4:
	mov.l @(0x4,r15),r2
	mov.l r13,@r2
	mov.l @(0x8,r15),r5
	bsr loc_8c18253c
	mov r14,r4
	cmp/eq r12,r13
	movt r0
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1827ee:
	rts 
	mov.l @(0x14,r4),r0

;==============================================
loc_8c1827f2:
	rts 
	mov.l @(0x18,r4),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8c1827F8:
	stc sr, r0
	mov.w @(loc_8c182922,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov r0,r4
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	rts
	mov r4,r0

;==============================================
loc_8c182810:
	stc sr, r3
	mov r5,r0
	mov.w @(loc_8c182922,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr
	rts
	nop

;==============================================
loc_8c182826:
	bra loc_8c182826
	nop

loc_8c18282A:
	mov.l @(loc_8c182928,pc),r4 ; r4 set to 0x8C1C969C
	mov.l @r4,r3
	cmp/pl r3
	bt loc_8c182842
	mov.l @r4,r1
	mov.l @(loc_8c182930,pc),r3 ; r3 set to 0x8C129728
	add 0x01,r1
	mov.w @(loc_8c182924,pc),r6 ; r6 set to 0xC00
	mov.l r1,@r4 ; r4 ??? bc r1 is ???
	mov.l @(loc_8c18292C,pc),r4 ; r4 set to 0x8C336FE8
	jmp @r3
	mov 0x00,r5

loc_8c182842:
	rts
	nop

;==============================================
loc_8c182846:
	mov.l @(loc_8c182928,pc),r4 ; r4 set to 0x8C1C969C
	mov.l @r4,r3
	add 0xFF,r3
	mov r3,r2
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	rts
	cmp/pl r2

;==============================================
loc_8c182854:
	mov.l r14,@-r15
	mov 0x40,r0
	sts.l pr,@-r15
	mov.l @(0xD0,PC),r14
	mov 0x00,r7

loc_8c18285E:
	mov r7,r3
	shll r3
	mov r7,r2
	add r2,r3
	shll2 r3
	shll2 r3
	add r14,r3
	mov.l @(0x4,r3),r1
	tst r1,r1
	bt loc_8c182878
	add 0x01,r7
	cmp/ge r0,r7
	bf loc_8c18285e

loc_8c182878:
	mov r7,r0
	cmp/eq 0x40,r0
	bf loc_8c182886
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182886:
	mov r7,r3
	shll r7
	add r3,r7
	mov.l @(0xA4,PC),r3
	shll2 r7
	shll2 r7
	mov 0x01,r2
	add r7,r14
	mov.l r2,@(0x4,r14)
	mov.l r3,@r14
	mov.l @(0xA0,PC),r3
	mov.l @(0x98,PC),r2
	mov.l r4,@(0x1C,r14)
	mov.l r5,@(0x20,r14)
	mov.l r6,@(0x24,r14)
	mov.l r2,@(0x8,r14)
	mov.l r3,@(0x28,r14)
	mov.l r14,@(0x2C,r14)
	bsr loc_8c1828de
	mov r14,r4
	mov r14,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1828B6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	tst r14,r14
	bt loc_8c1828ce
	mov.l @(0x6C,PC),r2
	mov 0x00,r5
	mov 0x30,r6
	jsr @r2
	mov r14,r4
	mov 0x00,r3
	mov.l r3,@(0x4,r14)

loc_8c1828CE:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1828D4:
	rts
	mov.l @(0x08,r4),r0

;==============================================
loc_8c1828D8:
	mov.l r5,@(0x28,r4)
	rts
	mov.l r6,@(0x2C,r4)

;==============================================
loc_8c1828DE:
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r5,@(0x0C,r4)
	mov.l @(0x20,r4),r3
	mov.l r3,@(0x10,r4)
	mov.l r5,@(0x14,r4)
	rts
	mov.l r5,@(0x18,r4)

;==============================================
loc_8c1828EC:
	mov.l r14,@-r15
	mov r5,r0
	sts.l pr,@-r15
	cmp/eq 0x01,r0
	bf/s loc_8c182900
	mov r4,r14
	lds.l @r15+,pr
	mov.l @(0x0C,r14),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182900:
	tst r5,r5
	bf loc_8c18290C
	lds.l @r15+,pr
	mov.l @(0x10,r14),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18290c:
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c18291a
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c18291a:
	mov 0x00,r0
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182922:
	#data 0xFF0F
loc_8c182924:
	#data 0x0C00
	#align4

loc_8c182928:
	#data bank1c.loc_8C1C969C
loc_8c18292c:
	#data 0x8C336FE8
loc_8c182930:
	#data bank12.loc_8C129728
loc_8c182934:
	#data bank1c.loc_8C1C966C
loc_8c182938:
	#data bank1c.loc_8C1C5550
loc_8c18293c:
	#data loc_8C182826

;==============================================
loc_8c182940:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r7,r13
	mov r6,r12
	mov.l r5,@r15
	bsr loc_8c1827F8
	mov r4,r14
	mov.l r0,@(0x04,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c1829A2
	mov.l @(0x20,r14),r4
	mov.l @(0x14,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r4
	mov.l @(0x10,r14),r5
	add r2,r4
	cmp/ge r4,r5
	bt loc_8c182970
	bra loc_8c182972
	mov r5,r3

loc_8c182970:
	mov r4,r3

loc_8c182972:
	mov r3,r4
	cmp/ge r12,r4
	mov.l r3,@(0x04,r13)
	bt loc_8c18297E
	bra loc_8c182980
	mov r4,r1

loc_8c18297E:
	mov r12,r1

loc_8c182980:
	mov.l r1,@(0x04,r13)
	mov.l @(0x1C,r14),r2
	mov.l @(0x14,r14),r3
	add r3,r2
	mov.l r2,@r13
	mov.l @(0x14,r14),r1
	mov.l @(0x04,r13),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4, r2 set to 0x8C1292D4
	add r3,r1
	jsr @r2
	mov.l @(0x20,r14),r0
	mov.l r0,@(0x14,r14)
	mov.l @(0x10,r14),r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(0x04,r13),r3
	sub r3,r2
	bra loc_8c182A02
	mov.l r2,@(0x10,r14)

loc_8c1829A2:
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c1829EE
	mov.l @(0x20,r14),r5
	mov.l @(0x18,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r5
	mov.l @(0x0C,r14),r4
	add r2,r5
	cmp/ge r5,r4
	bt loc_8c1829BC
	bra loc_8c1829BE
	mov r4,r2

loc_8c1829BC:
	mov r5,r2

loc_8c1829BE:
	mov r2,r4
	cmp/ge r12,r4
	mov.l r2,@(0x04,r13)
	bt loc_8c1829CA
	bra loc_8c1829CC
	mov r4,r3

loc_8c1829CA:
	mov r12,r3

loc_8c1829CC:
	mov.l r3,@(0x04,r13)
	mov.l @(0x1C,r14),r2
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.l r2,@r13
	mov.l @(0x18,r14),r1
	mov.l @(0x04,r13),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4, r2 set to 0x8C1292D4
	add r3,r1
	jsr @r2
	mov.l @(0x20,r14),r0
	mov.l r0,@(0x18,r14)
	mov.l @(0x0C,r14),r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(0x04,r13),r3
	sub r3,r2
	bra loc_8c182A02
	mov.l r2,@(0x0C,r14)

loc_8c1829ee:
	mov 0x00,r4
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c182a02
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182A02:
	mov.l @(0x04,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c182810
	mov.l @r15+,r14

loc_8c182A12:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r6,r13
	mov.l r5,@r15
	bsr loc_8c1827F8
	mov r4,r14
	mov.l r0,@(0x04,r15)
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c182A98
	mov.l @(0x0C,r14),r2
	mov.l @(0x04,r13),r3
	add r3,r2
	mov.l r2,@(0x0C,r14)
	mov.l @r13,r12
	mov.l @(0x1C,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r12
	cmp/ge r2,r12
	bt loc_8c182A62
	mov.l @(0x24,r14),r5
	mov.l @(0x04,r13),r4
	sub r12,r5
	cmp/ge r5,r4
	bt loc_8c182A4E
	bra loc_8c182A50
	mov r4,r1

loc_8c182a4e:
	mov r5,r1

loc_8c182a50:
	mov.l @(loc_8c182b84,pc),r2
	mov r1,r6
	mov.l r1,@r15
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r3
	mov.l @r13,r5
	add r12,r4
	jsr @r2
	add r3,r4

loc_8c182A62:
	mov.l @r13,r12
	mov.l @(0x1C,r14),r3
	mov.l @(0x04,r13),r2
	sub r3,r12
	mov.l @(0x20,r14),r3
	add r2,r12
	cmp/gt r3,r12
	bf loc_8c182ABC
	mov.l @(0x20,r14),r3
	mov r12,r5
	mov.l @(0x04,r13),r4
	sub r3,r5
	cmp/ge r5,r4
	bt loc_8c182A82
	bra loc_8c182A84
	mov r4,r13

loc_8c182A82:
	mov r5,r13

loc_8c182A84:
	mov.l @(0x1C,r14),r5
	sub r13,r12
	mov.l @(loc_8c182B84,pc),r3 ; r3 set to 0x8C129668, r3 set to 0x8C129668
	mov r13,r6
	mov.l r5,@r15
	add r12,r5
	jsr @r3
	mov.l @r15,r4
	bra loc_8c182ABC
	nop

loc_8c182A98:
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c182AA8
	mov.l @(0x10,r14),r2
	mov.l @(0x04,r13),r3
	add r3,r2
	bra loc_8c182ABC
	mov.l r2,@(0x10,r14)

loc_8c182aa8:
	mov 0x00,r4
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c182abc
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182ABC:
	mov.l @(0x04,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c182810
	mov.l @r15+,r14

loc_8c182ACC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r6,r13
	mov.l r5,@r15
	bsr loc_8c1827F8
	mov r4,r14
	mov.l r0,@(0x04,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c182B1E
	mov.l @(0x14,r14),r1
	mov.l @(0x20,r14),r5
	mov.l @(0x04,r13),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4
	add r5,r1
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov.l @r13,r1
	mov r0,r4
	mov.l @(0x1C,r14),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov r0,r5
	cmp/eq r5,r4
	bf loc_8c182B14
	mov.l r4,@(0x14,r14)
	mov.l @(0x10,r14),r2 ; r2 ??? bc r14 is ???
	mov.l @(0x04,r13),r3
	add r3,r2
	bra loc_8c182B72
	mov.l r2,@(0x10,r14)

loc_8c182B14:
	mov.l @(0x28,r14),r0
	tst r0,r0
	bf loc_8c182B6A
	bra loc_8c182B72
	nop

loc_8c182B1E:
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c182B5E
	mov.l @(0x18,r14),r1
	mov.l @(0x20,r14),r5
	mov.l @(0x04,r13),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4
	add r5,r1
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov.l @r13,r1
	mov r0,r4
	mov.l @(0x1C,r14),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov r0,r5
	cmp/eq r5,r4
	bf loc_8c182B54
	mov.l r4,@(0x18,r14)
	mov.l @(0x0C,r14),r2 ; r2 ??? bc r14 is ???
	mov.l @(0x04,r13),r3
	add r3,r2
	bra loc_8c182B72
	mov.l r2,@(0x0C,r14)

loc_8c182B54:
	mov.l @(0x28,r14),r0
	tst r0,r0
	bt loc_8c182B72
	bra loc_8c182B6A
	nop

loc_8c182b5e:
	mov 0x00,r4
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c182b72

loc_8c182b6a:
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182B72:
	mov.l @(0x04,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c182810
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c182B80:
	#data bank12.loc_8c1292D4
loc_8c182B84:
	#data bank12.loc_8c129668

;==============================================
loc_8c182B88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r6,r12
	mov.l r5,@r15
	mov.l r7,@(0x04,r15)
	bsr loc_8c1827F8
	mov r4,r14
	mov.l r0,@(0x08,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c182BBC
	mov.l @(0x20,r14),r5
	mov.l @(0x14,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r5
	mov.l @(0x10,r14),r6
	add r2,r5
	cmp/ge r5,r6
	bt loc_8c182BB8
	bra loc_8c182BD8
	mov r6,r4

loc_8c182BB8:
	bra loc_8c182BD8
	mov r5,r4

loc_8c182BBC:
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c182BE4
	mov.l @(0x20,r14),r6
	mov.l @(0x18,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r6
	mov.l @(0x0C,r14),r5
	add r2,r6
	cmp/ge r6,r5
	bt loc_8c182BD6
	bra loc_8c182BD8
	mov r5,r4

loc_8c182BD6:
	mov r6,r4

loc_8c182BD8:
	cmp/ge r12,r4
	bt loc_8c182BE0
	bra loc_8c182BF4
	mov r4,r13

loc_8c182BE0:
	bra loc_8c182BF4
	mov r12,r13
	
loc_8c182be4:
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt/s loc_8c182bf4
	mov 0x00,r13
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182BF4:
	mov.l @(0x04,r15),r2
	mov.l r13,@r2
	mov.l @(0x08,r15),r5
	bsr loc_8c182810
	mov r14,r4
	cmp/eq r12,r13
	movt r0
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182C0E:
	rts
	mov.l @(0x1C,r4),r0

;==============================================
loc_8c182C12:
	rts
	mov.l @(0x20,r4),r0
;==============================================
loc_8c182C16:
	rts
	mov.l @(0x24,r4),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8c182C1C:
	stc sr,r0
	mov.w @(0x138,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov r0,r4
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	rts 
	mov r4,r0

;==============================================
loc_8c182C34:
	stc sr,r3
	mov r5,r0
	mov.w @(0x11E,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	rts 
	nop 

;==============================================
loc_8c182C4A:
	bra loc_8c182C4A
	nop

;==============================================
loc_8c182C4E:
	mov.l @(loc_8c182D60,pc),r4 ; r4 set to 0x8C1C96D0
	mov.l @r4,r3
	cmp/pl r3
	bt loc_8c182C66
	mov.l @r4,r1
	mov.l @(loc_8c182D68,pc),r3 ; r3 set to 0x8C129728
	add 0x01,r1
	mov.w @(loc_8c182D5C,pc),r6 ; r6 set to 0xC00
	mov.l r1,@r4 ; r4 ??? bc r1 is ???
	mov.l @(loc_8c182D64,pc),r4 ; r4 set to 0x8C337BE8
	jmp @r3
	mov 0x00,r5

loc_8c182C66:
	rts
	nop

;==============================================
loc_8c182C6A:
	mov.l @(loc_8c182D60,pc),r4 ; r4 set to 0x8C1C96D0
	mov.l @r4,r3
	add 0xFF,r3
	mov r3,r2
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	rts
	cmp/pl r2

;==============================================
loc_8c182c78:
	mov.l r14,@-r15
	mov 0x40,r1
	sts.l pr,@-r15
	mov.l @(0xE4,PC),r14
	mov 0x00,r7

loc_8c182c82:
	mov r7,r3
	shll r3
	mov r7,r2
	add r2,r3
	shll2 r3
	shll2 r3
	add r14,r3
	mov.b @(0x4,r3),r0
	tst r0,r0
	bt loc_8c182c9c
	add 0x01,r7
	cmp/ge r1,r7
	bf loc_8c182c82

loc_8c182c9c:
	mov r7,r0
	cmp/eq 0x40,r0
	bf loc_8c182caa
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_8c182caa:
	mov r7,r3
	shll r7
	add r3,r7
	mov.l @(0xB8,PC),r3
	shll2 r7
	shll2 r7
	add r7,r14
	mov 0x01,r0
	shlr2 r6
	mov.b r0,@(0x4,r14)
	shlr2 r6
	mov r4,r0
	mov.b r0,@(0x5,r14)
	mov.l r3,@r14
	mov.l @(0xA8,PC),r3
	mov.b r0,@(0x5,r14)
	mov.l r3,@(0x8,r14)
	mov.l @(0xA4,PC),r3
	mov.l r5,@(0xC,r14)
	mov.l r6,@(0x10,r14)
	mov.l r3,@(0x28,r14)
	mov.l r14,@(0x2C,r14)
	bsr loc_8c182d0a
	mov r14,r4
	mov r14,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182CE2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	tst r14,r14
	bt loc_8c182cfa
	mov.l @(0x78,PC),r2
	mov 0x00,r5
	mov 0x30,r6
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x4,r14)

loc_8c182CFA:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182D00:
	rts
	mov.l @(0x08,r4),r0

;==============================================
loc_8c182D04:
	mov.l r5,@(0x28,r4)
	rts
	mov.l r6,@(0x2C,r4)

;==============================================
loc_8c182D0A:
	mov r4,r6
	mov.l @(0x0C,r6),r7
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r7,@(0x14,r6)
	bra loc_8c182D30
	mov r4,r5

loc_8c182D16:
	mov r5,r3
	add 0x01,r3
	mov r5,r0
	shll2 r3
	shll2 r0
	shll2 r3
	shll2 r0
	add r7,r3
	add r7,r0
	add 0x01,r5
	mov.l r3,@r0
	mov.l r4,@(0x8,r0)
	mov.l r4,@(0xC,r0)

loc_8c182d30:
	mov.l @(0x10,r6),r2
	add 0xFF,r2
	cmp/ge r2,r5
	bf loc_8c182d16
	mov r5,r0
	shll2 r0
	shll2 r0
	mov r6,r5
	add r7,r0
	add 0x18,r5
	mov.l r4,@r0
	mov.l r4,@(0x08,r0) 
	mov.l r4,@(0x0C,r0) 

loc_8c182d4a:
	mov r6,r3
	mov.l r4,@r5
	add 0x28,r3
	add 0x04,r5
	cmp/hs r3,r5
	bf loc_8c182d4a
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182d5a:
	#data 0xFF0F
loc_8c182d5c:
	#data 0x0C00
	#align4

loc_8c182d60:
	#data bank1c.loc_8C1C96D0
loc_8c182d64:
	#data 0x8C337BE8
loc_8c182d68:
	#data bank12.loc_8C129728
loc_8c182d6c:
	#data bank1C.loc_8C1C96A0
loc_8c182d70:
	#data bank1C.loc_8C1C558C
loc_8c182d74:
	#data loc_8C182C4A

;==============================================
loc_8c182d78:
	mov.l r14,@-r15
	cmp/pz r5
	sts.l pr,@-r15
	bf/s loc_8c182d88
	mov r4,r14
	mov 0x04,r2
	cmp/ge r2,r5
	bf loc_8c182d9e

loc_8c182d88:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c182d96
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182d96:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182d9e:
	mov r14,r3
	mov r5,r4
	add 0x18,r3
	mov 0x00,r6
	shll2 r4
	bra loc_8c182db0
	add r3,r4

loc_8c182dac:
	mov.l @(0xC,r4),r3
	add r3,r6

loc_8c182db0:
	mov.l @r4,r4
	tst r4,r4
	bf loc_8c182dac
	mov r6,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182dbe:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov r5,r13
	mov r4,r14
	cmp/pz r13
	mov.l r6,@r15
	mov r7,r12
	bf/s loc_8c182dde
	mov 0x00,r11
	mov 0x04,r2
	cmp/ge r2,r13
	bf loc_8c182df2

loc_8c182dde:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c182dec
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182dec:
	mov.l r11,@r12
	bra loc_8c182e7c
	mov.l r11,@(0x4,r12)

loc_8c182df2:
	bsr loc_8c182c1c
	mov r14,r4
	mov r14,r3
	mov r13,r4
	add 0x18,r3
	mov.l r0,@(0x4,r15)
	shll2 r4
	add r4,r3
	mov.l @r3,r13
	tst r13,r13
	bt loc_8c182e72
	mov r13,r2
	mov.l @(0x178,PC),r3
	mov r15,r1
	add 0x08,r2
	add 0x10,r1
	jsr @r3
	mov 0x08,r0
	mov.l @(0x14,r15),r1
	mov.l @r15,r2
	cmp/gt r2,r1
	bt loc_8c182e3c
	mov.l @(0x164,PC),r3
	mov r15,r2
	mov r12,r1
	add 0x10,r2
	jsr @r3
	mov 0x08,r0
	mov r14,r2
	add 0x18,r2
	add r2,r4
	mov.l @r13,r3
	mov.l r3,@r4
	mov.l @(0x14,r14),r2
	mov.l r2,@r13
	bra loc_8c182e76
	mov.l r13,@(0x14,r14)

loc_8c182e3c:
	mov.b @(0x5,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c182e72
	mov r15,r6
	mov.l @r15,r5
	mov r15,r7
	mov.l @(0x13C,PC),r3
	mov r15,r4
	add 0x08,r7
	add 0x10,r6
	jsr @r3
	add 0x10,r4
	mov.l @(0x12C,PC),r3
	mov r15,r2
	mov r12,r1
	add 0x10,r2
	jsr @r3
	mov 0x08,r0
	mov r15,r2
	mov.l @(0x120,PC),r3
	mov r13,r1
	add 0x08,r2
	add 0x08,r1
	jsr @r3
	mov 0x08,r0
	bra loc_8c182e76
	nop 

loc_8c182e72:
	mov.l r11,@r12
	mov.l r11,@(0x4,r12)

loc_8c182e76:
	mov.l @(0x4,r15),r5
	bsr loc_8c182c34
	mov r14,r4

loc_8c182e7c:
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182e8a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r12
	cmp/pz r12
	mov r6,r13
	bf/s loc_8c182ea4
	mov r4,r14
	mov 0x04,r2
	cmp/ge r2,r12
	bf loc_8c182ebc

loc_8c182ea4:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c182f46
	mov.l @(0x2C,r14),r4
	mov 0xFD,r5
	mov.l @(0x28,r14),r3
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c182ebc:
	mov.l @(0x4,r13),r2
	cmp/pl r2
	bf loc_8c182f46
	mov.l @r13,r1
	tst r1,r1
	bt loc_8c182f46
	bsr loc_8c182c1c
	mov r14,r4
	mov r12,r4
	mov r14,r3
	mov 0x00,r7
	mov.l r0,@r15
	add 0x18,r3
	mov r7,r5
	shll2 r4
	bra loc_8c182ee4
	add r3,r4

loc_8c182ede:
	mov.l @r4,r6
	mov r6,r4
	mov r6,r5

loc_8c182ee4:
	mov.l @r4,r3
	tst r3,r3
	bf loc_8c182ede
	mov.b @(0x5,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c182f0a
	tst r5,r5
	bt loc_8c182f0a
	mov.l @(0x8,r5),r2
	mov.l @(0xC,r5),r3
	mov.l @r13,r1
	add r3,r2
	cmp/eq r1,r2
	bf loc_8c182f0a
	mov.l @(0xC,r5),r2
	mov.l @(0x4,r13),r3
	add r3,r2
	bra loc_8c182f36
	mov.l r2,@(0xC,r5)

loc_8c182f0a:
	mov.l @(0x14,r14),r5
	tst r5,r5
	bf loc_8c182f22
	mov.l @(0x28,r14),r2
	tst r2,r2
	bt loc_8c182f36
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4
	bra loc_8c182f36
	nop 

loc_8c182f22:
	mov.l @r5,r3
	mov r5,r1
	mov r13,r2
	add 0x08,r1
	mov.l r3,@(0x14,r14)
	mov.l @(0x54,PC),r3
	mov.l r7,@r5
	jsr @r3
	mov 0x08,r0
	mov.l r5,@r4

loc_8c182f36:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c182c34
	mov.l @r15+,r14

loc_8c182f46:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182f52:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r12
	cmp/pz r12
	mov r6,r13
	bf/s loc_8c182f6c
	mov r4,r14
	mov 0x04,r2
	cmp/ge r2,r12
	bf loc_8c182f8c

loc_8c182f6c:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c183022
	mov.l @(0x2C,r14),r4
	mov 0xFD,r5
	mov.l @(0x28,r14),r3
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182f84:
	#data bank12.loc_8C1294BC
loc_8c182f88:
	#data loc_8C1830D8

;==============================================
loc_8c182f8c:
	mov.l @(0x4,r13),r2
	cmp/pl r2
	bf loc_8c183022
	mov.l @r13,r1
	tst r1,r1
	bt loc_8c183022
	bsr loc_8c182c1c
	mov r14,r4
	mov r12,r4
	mov.l r0,@(0x4,r15)
	mov r14,r3
	shll2 r4
	add 0x18,r3
	mov.l r4,@r15
	mov.b @(0x5,r14),r0
	add r3,r4
	cmp/eq 0x01,r0
	bf/s loc_8c182fd0
	mov.l @r4,r4
	tst r4,r4
	bt loc_8c182fd0
	mov.l @r13,r2
	mov.l @(0x4,r13),r3
	mov.l @(0x8,r4),r1
	add r3,r2
	cmp/eq r1,r2
	bf loc_8c182fd0
	mov.l @r13,r2
	mov.l r2,@(0x8,r4)
	mov.l @(0x4,r13),r3
	mov.l @(0xC,r4),r1
	add r3,r1
	bra loc_8c183012
	mov.l r1,@(0xC,r4)

loc_8c182fd0:
	mov.l @(0x14,r14),r4
	tst r4,r4
	bf loc_8c182fe8
	mov.l @(0x28,r14),r2
	tst r2,r2
	bt loc_8c183012
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4
	bra loc_8c183012
	nop 

loc_8c182fe8:
	mov.l @r4,r3
	mov 0x00,r2
	mov r4,r1
	add 0x08,r1
	mov.l r3,@(0x14,r14)
	mov.l @(0xE0,PC),r3
	mov.l r2,@r4
	mov r13,r2
	jsr @r3
	mov 0x08,r0
	mov r14,r2
	mov.l @r15,r3
	add 0x18,r2
	add r3,r2
	mov.l @r2,r1
	mov r14,r2
	add 0x18,r2
	mov.l r1,@r4
	mov.l @r15,r3
	add r3,r2
	mov.l r4,@r2

loc_8c183012:
	mov.l @(0x4,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c182c34
	mov.l @r15+,r14

loc_8c183022:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18302e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	cmp/pz r5
	mov 0x00,r3
	mov r4,r14
	bf/s loc_8c183044
	mov.l r3,@r7
	mov 0x04,r3
	cmp/ge r3,r5
	bf loc_8c183056

loc_8c183044:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c183096
	mov.l @(0x28,r14),r2
	mov 0xFD,r5
	jsr @r2
	mov.l @(0x2C,r14),r4
	bra loc_8c183096
	nop 

loc_8c183056:
	mov r14,r3
	mov r5,r4
	add 0x18,r3
	shll2 r4
	add r3,r4
	mov.l @r4,r4
	tst r4,r4
	bt loc_8c183096
	mov r4,r2
	mov.l @(0x68,PC),r3
	mov r15,r5
	add 0x08,r2
	mov r5,r1
	jsr @r3
	mov 0x08,r0
	mov.l @(0x4,r5),r2
	mov.l r2,@r7
	mov.b @(0x5,r14),r0
	cmp/eq 0x01,r0
	bf/s loc_8c183088
	mov.l @(0x4,r5),r4
	cmp/ge r6,r4
	bt loc_8c18308c
	bra loc_8c183096
	nop 

loc_8c183088:
	cmp/eq r6,r4
	bf loc_8c183096

loc_8c18308c:
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c183096:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1830a0:
	mov r4,r7
	mov r7,r3
	mov r5,r4
	add 0x18,r3
	shll2 r4
	add r3,r4
	mov.l @r4,r4
	bra loc_8c1830b6
	mov 0x00,r6

loc_8c1830b2:
	mov.l @r4,r4
	add 0x01,r6

loc_8c1830b6:
	tst r4,r4
	bf loc_8c1830b2
	rts 
	mov r6,r0

;==============================================
;unused?
loc_8c1830be:
	mov r4,r6
	mov.l @(0x14,r6),r4
	bra loc_8c1830ca
	mov 0x00,r5

loc_8c1830c6:
	mov.l @r4,r4
	add 0x01,r5

loc_8c1830ca:
	tst r4,r4
	bf loc_8c1830c6
	rts 
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1830d4:
	#data bank12.loc_8C1294BC

;==============================================
loc_8c1830d8:
	sts.l pr,@-r15
	mov.l @(0x28,PC),r3
	mov r4,r2
	mov r6,r1
	jsr @r3
	mov 0x08,r0
	mov.l @(0x4,r6),r2
	mov.l r2,@(0x4,r7)
	mov.l @(0x4,r6),r3
	cmp/gt r5,r3
	bf loc_8c1830f0
	mov.l r5,@(0x4,r6)

loc_8c1830f0:
	mov.l @r6,r2
	mov.l @(0x4,r6),r3
	add r3,r2
	mov.l r2,@r7
	mov.l @(0x4,r7),r1
	mov.l @(0x4,r6),r3
	lds.l @r15+,pr
	sub r3,r1
	rts 
	mov.l r1,@(0x4,r7)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183104:
	#data bank12.loc_8c1294bc

;==============================================
loc_8c183108:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	mov.l @(loc_8c183238,pc),r5 ; r5 set to 0xFF00
	mov.l @(loc_8c183234,pc),r14 ; r14 set to 0x8C1C559C
	bra loc_8c183134
	nop

;==============================================
loc_8c183116:
	extu.w r4,r7
	mov r7,r0
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	shad r3, r0
	mov.b @r13+,r3 ; r3 ??? bc r13 is ???
	extu.b r0,r0
	mov r7,r2
	extu.b r3,r3
	xor r3,r0
	shll r0
	shll8 r2
	mov.w @(r0,r14),r1
	and r5,r2
	mov r2,r4
	xor r1,r4

loc_8c183134:
	cmp/pl r6
	bt/s loc_8c183116
	add 0xFF,r6
	mov.l @r15+,r13
	mov r4,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183142:
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x0A,r6 ; r6 set to 0x0A
	mov.l r4,@(0x04,r15)
	mov.w r5,@r15
	mov.l @(0x04,r15),r5
	bsr loc_8c183108
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @r15,r2
	not r0,r4 ; r4 ??? bc r0 is ???
	extu.w r4,r4
	extu.w r2,r2
	cmp/eq r4,r2
	bt loc_8c183166
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c183166:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c183170:
	mov.w @(loc_8c183230,pc),r0 ; r0 set to 0xF0
	exts.b r4,r5
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFC
	and r5,r0 ; r0 ??? bc r5 is ???
	shad r3, r0
	mov r0,r3 ; r3 ??? bc r0 is ???
	shll2 r0
	mov 0x0F,r2 ; r2 set to 0x0F
	add r3,r0
	and r5,r2 ; r2 ??? bc r5 is ???
	shll r0
	rts
	add r2,r0

;==============================================
loc_8c18318A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	bsr loc_8c183170
	mov.b @r14+,r4
	mov.l r0,@(0x04,r15)
	bsr loc_8c183170
	mov.b @r14+,r4
	mov.l r0,@r15
	bsr loc_8c183170
	mov.b @r14,r4
	mov.l @(0x04,r15),r2
	mov 0x3C,r3 ; r3 set to 0x3C
	mov r0,r4
	mov.l @r15,r1
	mul.l r3,r2
	mov 0x4B,r3 ; r3 set to 0x4B
	sts macl,r0
	add r1,r0
	mul.l r3,r0
	sts macl,r0
	add r4,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1831C0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov.b @r4,r3
	tst r3,r3
	bt/s loc_8c1831DE
	mov r5,r11
	bra loc_8c1832CA
	mov 0xFF,r0

loc_8c1831DE:
	mov.b @(0x02,r4),r0
	shll8 r0
	mov r0,r3
	mov.b @(0x03,r4),r0
	add r3,r0
	cmp/eq 0x64,r0
	bt loc_8c1831F0
	bra loc_8c1832CA
	mov 0xFE,r0

loc_8c1831F0:
	mov r15,r14
	mov r4,r12
	mov 0x00,r7 ; r7 set to 0x00
	mov 0x40,r6 ; r6 set to 0x40
	add 0x04,r14
	mov 0x07,r8 ; r8 set to 0x07
	add 0x04,r12
	mov 0x06,r10 ; r10 set to 0x06
	mov 0x0F,r9 ; r9 set to 0x0F
	bra loc_8c183262
	mov r7,r5

loc_8c183206:
	mov r14,r3
	mov r14,r2
	add 0x0C,r3
	mov r8,r4
	add r5,r3
	add r5,r2
	mov.b r7,@r2
	mov.b r7,@r3

loc_8c183216:
	mov r4,r0
	mov r14,r13
	cmp/eq 0x07,r0
	add 0x0C,r13
	bf/s loc_8c18323C
	add r5,r13
	mov.b @r12+,r3
	mov.b @r13,r2
	and r6,r3
	shll r3
	or r3,r2
	bra loc_8c18324E
	mov.b r2,@r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183230:
	#data 0x00F0
	#align4

loc_8c183234:
	#data bank1c.loc_8c1c559C
loc_8c183238:
	#data 0x0000FF00

;==============================================
loc_8c18323C:
	mov r10,r2
	mov.b @r12+,r3
	sub r4,r2
	mov.b @r13,r1
	neg r2,r2
	and r6,r3
	shad r2, r3
	or r3,r1
	mov.b r1,@r13

loc_8c18324E:
	add 0xFF,r4
	cmp/pz r4
	bt loc_8c183216
	mov.b @(0x0C,r14),r0
	and r9,r0
	cmp/eq 0x01,r0
	bt loc_8c183260
	bra loc_8c1832CA
	mov 0xFB,r0

loc_8c183260:
	add 0x01,r5

loc_8c183262:
	mov 0x0C,r2 ; r2 set to 0x0C, r2 set to 0x0C
	cmp/ge r2,r5
	bf loc_8c183206
	mov r14,r13
	add 0x0C,r13
	mov.b @(0x0A,r13),r0
	extu.b r0,r0
	shll8 r0
	mov r0,r5
	mov.b @(0x0B,r13),r0
	extu.b r0,r0
	or r0,r5
	bsr loc_8c183142
	mov r13,r4
	tst r0,r0
	bt loc_8c183286
	bra loc_8c1832CA
	mov 0xFD,r0

loc_8c183286:
	mov.b @(0x0D,r14),r0
	bsr loc_8c183170
	mov r0,r4
	mov.l r0,@r11
	mov.b @(0x0F,r14),r0
	bsr loc_8c183170
	mov r0,r4
	mov.l r0,@(0x04,r11)
	mov 0x10,r0 ; r0 set to 0x10
	bsr loc_8c183170
	mov.b @(r0,r14),r4
	mov.l r0,@(0x08,r11)
	mov 0x11,r0 ; r0 set to 0x11
	bsr loc_8c183170
	mov.b @(r0,r14),r4
	mov r14,r2
	add 0x0C,r2
	mov.l r0,@(0x0C,r11)
	mov.l r2,@r15
	mov.b @r2,r3
	shll16 r3
	shll8 r3
	mov.l r3,@-r15
	mov.l @(0x04,r15),r4
	bsr loc_8c18318A
	add 0x07,r4
	mov.l @r15+,r2
	or r2,r0 ; r0 ??? bc r2 is ???
	mov.l r0,@(0x10,r11)
	mov.b @(0x0E,r14),r0
	bsr loc_8c183170
	mov r0,r4
	mov.l r0,@(0x14,r11)
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1832CA:
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
	#align4

;==============================================
loc_8c1832E0:
	sts.l pr,@-r15
	mov.l @(loc_8c1834D0,pc),r3 ; r3 set to 0x8C18AF44
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c1832EE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r15,r14
	add 0x04,r14
	mov.l r5,@r15
	mov r6,r13
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_8c1834D4,pc),r6 ; r6 set to 0x1FFFFFFF
	mov r14,r5
	mov r7,r0
	cmp/eq 0x01,r0
	add 0x08,r5
	mov.l r4,@r14
	mov.l @r15,r3
	mov.l r3,@(0x04,r14)
	mov.l r2,@(0x0C,r14)
	bf/s loc_8c18331A
	and r13,r6 ; r6 ??? bc r13 is ???
	bra loc_8c183324
	mov 0x11,r4

loc_8c18331A:
	tst r7,r7
	bf loc_8c183328
	mov.l @(loc_8c1834D8,pc),r2 ; r2 set to 0xA0000000
	mov 0x10,r4 ; r4 set to 0x10
	or r2,r6

loc_8c183324:
	bra loc_8c18332C
	mov.l r6,@r5

loc_8c183328:
	bra loc_8c183364
	mov 0xEE,r0

loc_8c18332C:
	mov.l @(loc_8c1834DC,pc),r2 ; r2 set to 0x8C18AF08
	jsr @r2
	mov r14,r5
	mov r0,r14
	tst r14,r14
	bt loc_8c183362
	mov 0xE4,r3 ; r3 set to 0xFFFFFFE4
	mov r13,r0
	shad r3, r0
	and 0x0E,r0
	cmp/eq 0x0A,r0
	bt loc_8c183362
	mov.l @r15,r5
	mov 0x1F,r3 ; r3 set to 0x1F
	shll8 r5
	shll2 r5
	shll r5
	tst r13,r3
	bf loc_8c18335C
	mov.l @(loc_8c1834E0,pc),r3 ; r3 set to 0x8C183C10
	jsr @r3
	mov r13,r4
	bra loc_8c183362
	nop

loc_8c18335c:
	mov.l @(loc_8c1834e4,pc),r3
	jsr @r3
	mov r13,r4

loc_8c183362:
	mov r14,r0

loc_8c183364:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18336E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r14
	mov.l @(loc_8c1834DC,pc),r3 ; r3 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	jsr @r3
	mov 0x1C,r4 ; r4 set to 0x1C
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18338A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r12
	mov.l @(loc_8c1834E8,pc),r3 ; r3 set to 0x8C18AF80
	mov r6,r13
	mov r5,r14
	mov.l r5,@r12
	mov.l r13,@(0x04,r12)
	jsr @r3
	mov r12,r5
	mov r0,r12
	tst r12,r12
	bf loc_8c1833D4
	tst r13,r13
	bt loc_8c1833D4
	mov 0xE4,r3 ; r3 set to 0xFFFFFFE4
	mov r14,r0
	shad r3, r0
	and 0x0F,r0
	cmp/eq 0x0A,r0
	bt loc_8c1833D4
	mov 0x1F,r3 ; r3 set to 0x1F
	tst r14,r3
	bf loc_8c1833CC
	mov.l @(loc_8c1834E0,pc),r3 ; r3 set to 0x8C183C10
	mov r13,r5
	jsr @r3
	mov r14,r4
	bra loc_8c1833D4
	nop

loc_8c1833cc:
	mov.l @(loc_8c1834e4,pc),r3
	mov r13,r5
	jsr @r3
	mov r14,r4

loc_8c1833D4:
	mov r12,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1833E2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8c1834EC,pc),r3 ; r3 set to 0x8C18AF1C
	mov r5,r14
	jsr @r3
	mov r15,r5
	mov r0,r4
	mov r4,r0
	mov.l @(0x08,r15),r5
	cmp/eq 0x00,r0
	bt loc_8c183412
	cmp/eq 0x01,r0
	bt loc_8c183416
	cmp/eq 0x02,r0
	bt loc_8c183420
	cmp/eq 0x03,r0
	bt loc_8c183426
	cmp/eq 0x04,r0
	bt loc_8c18342A
	cmp/eq 0xFF,r0
	bt loc_8c18342E
	bra loc_8c183492
	nop

loc_8c183412:
	bra loc_8c183492
	mov 0x00,r4

loc_8c183416:
	mov.l r5,@r14
	mov 0x04,r4 ; r4 set to 0x04
	mov.l @(0x0C,r15),r2
	bra loc_8c183492
	mov.l r2,@(0x08,r14)

loc_8c183420:
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8c183492
	mov.l r5,@r14

loc_8c183426:
	bra loc_8c183492
	mov 0x41,r4

loc_8c18342A:
	bra loc_8c183492
	mov 0x43,r4

loc_8c18342E:
	mov.l @(0x04,r15),r3
	mov.l r3,@(0x04,r14)
	mov.l @r15,r0
	cmp/eq 0x00,r0
	bt/s loc_8c183462
	mov 0x05,r4 ; r4 set to 0x05
	cmp/eq 0x01,r0
	bt loc_8c183468
	cmp/eq 0x02,r0
	bt loc_8c18346C
	cmp/eq 0x03,r0
	bt loc_8c183470
	cmp/eq 0x04,r0
	bt loc_8c183474
	cmp/eq 0x05,r0
	bt loc_8c183478
	cmp/eq 0x06,r0
	bt loc_8c18347C
	cmp/eq 0x07,r0
	bt loc_8c183480
	cmp/eq 0x0B,r0
	bt loc_8c183484
	cmp/eq 0x10,r0
	bt loc_8c183488
	bra loc_8c18348E
	nop

loc_8c183462:
	mov 0xE5,r3 ; r3 set to 0xFFFFFFE5
	bra loc_8c183492
	mov.l r3,@r14

loc_8c183468:
	bra loc_8c18348A
	mov 0xE4,r1

loc_8c18346C:
	bra loc_8c183490
	mov 0xE3,r2

loc_8c183470:
	bra loc_8c18348A
	mov 0xE2,r1

loc_8c183474:
	bra loc_8c183490
	mov 0xE1,r2

loc_8c183478:
	bra loc_8c18348A
	mov 0xE0,r1

loc_8c18347C:
	bra loc_8c183490
	mov 0xDF,r2

loc_8c183480:
	bra loc_8c18348A
	mov 0xDE,r1

loc_8c183484:
	bra loc_8c183490
	mov 0xDD,r2

loc_8c183488:
	mov 0xDC,r1

loc_8c18348A:
	bra loc_8c183492
	mov.l r1,@r14

loc_8c18348e:
	mov 0xE6,r2

loc_8c183490:
	mov.l r2,@r14

loc_8c183492:
	mov r4,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18349C:
	mov.l @(loc_8c1834F0,pc),r3 ; r3 set to 0x8C18AFA8
	jmp @r3
	nop

;==============================================
loc_8c1834A2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c1834DC,pc),r2 ; r2 set to 0x8C18AF08
	mov r15,r14
	mov r14,r5
	mov.l r4,@r14
	mov.l r3,@(0x04,r14)
	jsr @r2
	mov 0x1B,r4 ; r4 set to 0x1B
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1834C0:
	sts.l pr,@-r15
	mov.l @(loc_8c1834DC,pc),r3 ; r3 set to 0x8C18AF08
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov 0x18,r4 ; r4 set to 0x18
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1834D0:
	#data loc_8c18AF44
loc_8c1834D4:
	#data 0x1FFFFFFF
loc_8c1834D8:
	#data 0xA0000000
loc_8c1834DC:
	#data loc_8c18AF08
loc_8c1834E0:
	#data loc_8c183C10
loc_8c1834E4:
	#data loc_8c183E6E
loc_8c1834E8:
	#data loc_8c18AF80
loc_8c1834EC:
	#data loc_8c18AF1C
loc_8c1834F0:
	#data loc_8c18AFA8

;==============================================
loc_8c1834F4:
	sts.l pr,@-r15
	mov.l @(loc_8c183628,pc),r3 ; r3 set to 0x8C18AF58
	jsr @r3
	nop
	cmp/eq 0x01,r0
	bf/s loc_8c183508
	mov r0,r4
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c183508:
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c183510:
	sts.l pr,@-r15
	mov.l @(loc_8c18362C,pc),r3 ; r3 set to 0x8C18AF94
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c18351E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r14
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	mov.l r6,@(0x08,r14)
	mov.l r3,@(0x0C,r14)
	jsr @r2
	mov 0x14,r4 ; r4 set to 0x14
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183540:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r14
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	mov.l r6,@(0x08,r14)
	mov.l r3,@(0x0C,r14)
	jsr @r2
	mov 0x15,r4 ; r4 set to 0x15
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183562:
	sts.l pr,@-r15
	mov.l @(loc_8c183630,pc),r3 ; r3 set to 0x8C18AF08
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov 0x16,r4 ; r4 set to 0x16
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c183572:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov r15,r14
	mov r14,r5
	mov.l r4,@r14
	mov.l r3,@(0x04,r14)
	jsr @r2
	mov 0x17,r4 ; r4 set to 0x17
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183590:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r14
	mov.l @(loc_8c183630,pc),r3 ; r3 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	jsr @r3
	mov 0x13,r4 ; r4 set to 0x13
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1835AC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r14
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	mov.l r6,@(0x08,r14)
	mov.l r3,@(0x0C,r14)
	jsr @r2
	mov 0x22,r4 ; r4 set to 0x22
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1835CE:
	sts.l pr,@-r15
	mov.l @(loc_8c183634,pc),r3 ; r3 set to 0x8C18AF30
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c1835DC:
	mov.l @(loc_8c183638,pc),r3 ; r3 set to 0x8C18AFBC
	jmp @r3
	nop

;==============================================
loc_8c1835E2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r14
	mov.l @(loc_8c183630,pc),r3 ; r3 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	mov.l r6,@(0x08,r14)
	mov.l r7,@(0x0C,r14)
	jsr @r3
	mov 0x24,r4 ; r4 set to 0x24
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183602:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov r15,r14
	mov r14,r5
	mov.l r4,@r14
	mov.l r3,@(0x04,r14)
	jsr @r2
	mov 0x28,r4 ; r4 set to 0x28
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183620:
	mov.l @(loc_8c18363C,pc),r0 ; r0 set to 0x8C1C579C
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183628:
	#data loc_8c18AF58
loc_8c18362C:
	#data loc_8c18AF94
loc_8c183630:
	#data loc_8c18AF08
loc_8c183634:
	#data loc_8c18AF30
loc_8c183638:
	#data loc_8c18AFBC
loc_8c18363C:
	#data bank1c.loc_8c1c579C

;==============================================
loc_8c183640:
	mov 0x61,r3
	exts.b r4,r5
	cmp/ge r3,r5
	bf loc_8c183650
	mov 0x7A,r1
	cmp/gt r1,r5
	bt loc_8c183650
	add 0xE0,r4

loc_8c183650:
	rts 
	mov r4,r0

;==============================================
loc_8c183654:
	cmp/pl r6
	mov r4,r7
	bf/s loc_8c183668
	mov r5,r4

loc_8c18365c:
	mov.b @r7+,r3
	add 0xFF,r6
	cmp/pl r6
	mov.b r3,@r4
	bt/s loc_8c18365c
	add 0x01,r4

loc_8c183668:
	rts 
	nop 

;==============================================
loc_8c18366c:
	mov.l r14,@-r15
	mov r6,r14
	mov.l r13,@-r15
	cmp/pl r14
	mov.l r12,@-r15
	mov r4,r13
	mov.l r8,@-r15
	sts.l pr,@-r15
	bf/s loc_8c1836aa
	mov r5,r12

loc_8c183680:
	mov.b @r13,r2
	tst r2,r2
	bt loc_8c18369a
	bsr loc_8c183640
	mov.b @r13+,r4
	exts.b r0,r8
	bsr loc_8c183640
	mov.b @r12+,r4
	exts.b r0,r0
	cmp/eq r0,r8
	bf loc_8c1836a0
	bra loc_8c1836a4
	nop 

loc_8c18369a:
	mov.b @r12,r2
	tst r2,r2
	bt loc_8c1836aa

loc_8c1836a0:
	bra loc_8c1836ac
	mov 0x00,r0

loc_8c1836a4:
	add 0xFF,r14
	cmp/pl r14
	bt loc_8c183680

loc_8c1836aa:
	mov 0x01,r0

loc_8c1836ac:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1836B8:
	bra loc_8c1836C4
	nop

;==============================================
loc_8c1836BC:
	mov.b @r5+,r2
	mov.b @r4+,r3
	cmp/eq r2,r3
	bf loc_8c1836d0

loc_8c1836c4:
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c1836bc
	mov.b @r5,r1
	tst r1,r1
	bt loc_8c1836d4

loc_8c1836d0:
	rts 
	mov 0x00,r0

;==============================================
loc_8c1836d4:
	mov 0x01,r0
	rts 
	nop 

loc_8c1836DA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	bra loc_8c1836F8
	mov r5,r13

loc_8c1836E8:
	bsr loc_8c183640
	mov.b @r14+,r4
	exts.b r0,r8
	bsr loc_8c183640
	mov.b @r13+,r4
	exts.b r0,r0
	cmp/eq r0,r8
	bf loc_8c183704

loc_8c1836f8:
	mov.b @r14,r3
	tst r3,r3
	bf loc_8c1836e8
	mov.b @r13,r1
	tst r1,r1
	bt loc_8c183708

loc_8c183704:
	bra loc_8c18370a
	mov 0x00,r0

loc_8c183708:
	mov 0x01,r0

loc_8c18370a:
	lds.l @r15+,pr 
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c183714:
	bra loc_8c183730
	mov 0x00,r7

loc_8c183718:
	bra loc_8c183726
	mov r5,r6

loc_8c18371c:
	mov.b @r6,r2
	mov.b @r4,r3
	cmp/eq r2,r3
	bt loc_8c183736
	add 0x01,r6

loc_8c183726:
	mov.b @r6,r3
	tst r3,r3
	bf loc_8c18371c
	add 0x01,r7
	add 0x01,r4

loc_8c183730:
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c183718

loc_8c183736:
	rts 
	mov r7,r0

;==============================================
loc_8c18373A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c183846,pc),r13 ; r13 set to 0xDA
	bra loc_8c18374E
	mov r4,r14

loc_8c183746:
	bsr loc_8c183640
	mov.b @r14+,r4
	extu.b r0,r0
	add r0,r13

loc_8c18374E:
	mov.b @r14,r2
	tst r2,r2
	bf loc_8c183746
	lds.l @r15+,pr
	shlr2 r13
	extu.b r13,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183760:
	mov.l r14,@-r15
	mov 0x22,r2
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @r13,r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt/s loc_8c18377a
	mov r5,r14
	bra loc_8c1837ec
	mov 0x00,r0

loc_8c18377A:
	mov r13,r4
	mov r14,r5
	mov 0x04,r6
	bsr loc_8c183654
	add 0x02,r4
	mov r14,r5
	mov r13,r4
	add 0x04,r5
	mov 0x04,r6
	bsr loc_8c183654
	add 0x0A,r4
	mov 0x19,r0
	mov.b @(r0,r13),r0
	mov.b r0,@(0x8,r14)
	mov 0x20,r0
	mov.b @(r0,r13),r12
	mov.b @(0x8,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bf/s loc_8c1837a6
	extu.b r12,r12
	add 0xFE,r12

loc_8c1837A6:
	mov r14,r5
	mov r13,r4
	add 0x0A,r5
	mov r12,r6
	bsr loc_8c183654
	add 0x21,r4
	mov r14,r3
	add 0x0A,r3
	mov 0x00,r4
	add r3,r12
	mov.b r4,@r12
	mov.b @(0x8,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1837e0
	mov.b @(0xA,r14),r0
	tst r0,r0
	bf/s loc_8c1837d2
	mov 0x2E,r5
	mov r5,r0
	bra loc_8c1837e0
	mov.b r0,@(0xA,r14)

loc_8c1837D2:
	cmp/eq 0x01,r0
	bf loc_8c1837e0
	mov r5,r0
	mov.b r0,@(0xA,r14)
	mov.b r0,@(0xB,r14)
	mov r4,r0
	mov.b r0,@(0xC,r14)

loc_8c1837E0:
	mov r14,r4
	bsr loc_8c18373a
	add 0x0A,r4
	mov.b r0,@(0x9,r14)
	mov.b @r13,r0
	extu.b r0,r0

loc_8c1837EC:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1837F6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r6,r9
	mov r5,r3
	mov r6,r12
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov r7,r11
	mov.l @(0x08,r9),r2
	cmp/eq r3,r2
	bt/s loc_8c1838B0
	add 0x10,r12
	mov.l @r15,r3
	mov 0x00,r14 ; r14 set to 0x00
	mov.w @(loc_8c183848,pc),r8 ; r8 set to 0x800
	mov.l r3,@(0x08,r9)
	mov.l @(0x04,r15),r3
	mov.l @(0x04,r9),r10
	add r8,r3
	bra loc_8c18388A
	mov.l r3,@(0x08,r15)

loc_8c18382E:
	mov.l @(0x1C,PC),r3
	mov 0x01,r5
	mov.l @(0x4,r15),r6
	jsr @r3
	mov.l @r15,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c183850
	mov 0x00,r3
	mov.l r3,@(0x8,r9)
	bra loc_8c1838b2
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183846:
	#data 0x00DA
loc_8c183848:
	#data 0x0800
	#align4

loc_8c18384C:
	#data bank17.loc_8c1757A4

;==============================================
loc_8c183850:
	cmp/ge r10,r14
	bt/s loc_8c18388e
	mov.l @(0x4,r15),r13

loc_8c183856:
	mov r12,r5
	bsr loc_8c183760
	mov r13,r4
	tst r0,r0
	bt/s loc_8c18387e
	mov r0,r4
	tst r14,r14
	bf loc_8c18386e
	mov.l @(0x4,r12),r2
	cmp/eq r11,r2
	bt loc_8c18386e
	mov.l @(0x4,r12),r11

loc_8c18386E:
	mov.l @(0x8,r15),r2
	add r4,r13
	add 0x2C,r12
	cmp/hs r2,r13
	bt/s loc_8c18387e
	add 0x01,r14
	cmp/ge r10,r14
	bf loc_8c183856

loc_8c18387E:
	cmp/ge r10,r14
	bt loc_8c18388e
	mov.l @r15,r2
	sub r8,r11
	add 0x01,r2
	mov.l r2,@r15

loc_8c18388a:
	cmp/pl r11
	bt loc_8c18382e

loc_8c18388e:
	cmp/eq r10,r14
	bf/s loc_8c1838b0
	mov.l r14,@r9
	tst r11,r11
	bt loc_8c1838b0
	cmp/eq r8,r11
	bf loc_8c1838a8
	mov.l @(0x08,r15),r2
	cmp/hs r2,r13
	bt loc_8c1838b0
	mov.b @r13,r1
	tst r1,r1
	bt loc_8c1838b0

loc_8c1838a8:
	mov 0x00,r2
	mov.l r2,@(0x08,r9) 
	bra loc_8c1838b2
	mov 0xF4,r0

loc_8c1838B0:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1838B2:
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

;==============================================
loc_8c1838C6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	add 0x10,r14
	mov r4,r12
	mov.l r6,@r15
	mov.l @r5,r11
	bsr loc_8c18373A
	mov r12,r4
	cmp/pl r11
	mov r0,r10
	bf/s loc_8c183924
	mov 0x00,r13 ; r13 set to 0x00

loc_8c1838EA:
	mov.b @(0x09,r14),r0
	extu.b r10,r3
	extu.b r0,r0
	cmp/eq r3,r0
	bf loc_8c18391C
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c18390A
	mov r14,r5
	add 0x0A,r5
	bsr loc_8c1836B8
	mov r12,r4
	cmp/eq 0x01,r0
	bt loc_8c183916
	bra loc_8c18391C
	nop

loc_8c18390A:
	mov r14,r5
	add 0x0A,r5
	bsr loc_8c1836DA
	mov r12,r4
	cmp/eq 0x01,r0
	bf loc_8c18391C

loc_8c183916:
	mov r13,r0
	bra loc_8c183926
	add 0x01,r0

loc_8c18391c:
	add 0x01,r13
	cmp/ge r11,r13
	bf/s loc_8c1838ea
	add 0x2C,r14

loc_8c183924:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c183926:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183936:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.w @(0x112,PC),r14
	mov r4,r9
	mov 0x00,r4
	mov r7,r12
	add r9,r14
	mov r4,r10
	mov 0x01,r8
	mov.l r5,@(0x8,r15)
	add 0x01,r12
	mov.l r6,@(0x10,r15)
	mov.l r8,@(0x14,r15)
	mov r8,r11
	mov.l r4,@(0xC,r15)
	mov.l r14,@r15

loc_8c183964:
	mov.l @r15,r2
	cmp/hs r2,r14
	bt/s loc_8c183982
	mov r14,r13
	mov.b @r13,r0
	mov.b @r13,r1
	extu.b r0,r0
	mov.l @r15,r3
	and 0x01,r0
	extu.b r1,r1
	add r0,r1
	add 0x08,r1
	add r14,r1
	cmp/hs r3,r1
	bf loc_8c1839ac

loc_8c183982:
	mov.w @(0xD8,PC),r3
	mov r9,r6
	sub r14,r6
	mov r9,r13
	add r3,r6
	sub r6,r13
	mov r13,r5
	bsr loc_8c183654
	mov r14,r4
	mov.l @(0xC8,PC),r3
	mov 0x01,r5
	mov r9,r6
	jsr @r3
	mov.l @(0x8,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c183a20
	mov.l @(0x8,r15),r2
	mov r13,r14
	add 0x01,r2
	mov.l r2,@(0x8,r15)

loc_8c1839ac:
	mov r15,r5
	mov r13,r4
	add 0x04,r5
	mov 0x02,r6
	bsr loc_8c183654
	add 0x06,r4
	mov.w @(0x4,r15),r0
	mov.l @(0x14,r15),r3
	extu.w r0,r0
	cmp/eq r3,r0
	bf loc_8c183a04
	mov r11,r0
	cmp/eq 0x01,r0
	bt loc_8c1839de
	mov.b @r13,r2
	extu.b r2,r2
	cmp/eq r10,r2
	bf loc_8c183a04
	mov r13,r4
	mov r12,r5
	mov r10,r6
	bsr loc_8c18366c
	add 0x08,r4
	tst r0,r0
	bt loc_8c183a04

loc_8c1839de:
	add r10,r12
	mov.l r11,@(0x14,r15)
	mov.b @r12,r3
	tst r3,r3
	bf loc_8c1839f4
	mov.l @(0x78,PC),r3
	mov r13,r4
	jsr @r3
	add 0x02,r4
	bra loc_8c183a22
	nop 

loc_8c1839f4:
	mov r11,r0
	cmp/eq 0x01,r0
	bt loc_8c1839fc
	add 0x01,r12

loc_8c1839fc:
	mov.l @(0x68,PC),r5
	bsr loc_8c183714
	mov r12,r4
	mov r0,r10

loc_8c183a04:
	mov.b @r13,r4
	add 0x01,r11
	mov.l @(0xC,r15),r3
	extu.b r4,r4
	mov r4,r5
	and r8,r5
	add r4,r5
	add 0x08,r5
	add r5,r3
	mov.l r3,@(0xC,r15)
	mov.l @(0x10,r15),r2
	cmp/ge r2,r3
	bf/s loc_8c183964
	add r5,r14

loc_8c183a20:
	mov 0x00,r0

loc_8c183a22:
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
loc_8c183A36:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xD8,r15
	mov 0x00,r9 ; r9 set to 0x00
	mov r7,r12
	mov 0x01,r8 ; r8 set to 0x01
	mov.l r4,@r15
	mov r8,r10 ; r10 set to 0x01
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r5,@(0x10,r15)
	mov.l r6,@(0x20,r15)
	mov.l r9,@(0x04,r15)
	bra loc_8c183A72
	mov.l @(r0,r15),r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183a5e:
	#data 0x0800
	#align4
loc_8c183A60:
	#data bank17.loc_8c1757A4
loc_8c183A64:
	#data bank17.loc_8c1754CC
loc_8c183A68:
	#data bank1c.loc_8c1c57EC

;==============================================
loc_8c183A6C:
	mov.l @(0x4,r15),r2
	add 0x01,r2
	mov.l r2,@(0x4,r15)

loc_8c183a72:
	mov.b @r4+,r3
	tst r3,r3
	bf loc_8c183a6c
	mov.w @(loc_8C183B3E,pc),r3
	add 0x01,r12
	mov r8,r11
	mov.l r8,@(0x24,r15) 
	mov.l r9,@(0x14,r15) 
	mov.l @r15,r14
	add r3,r14
	mov.l r14,@(0x08,r15) 
	mov.l r9,@(0x18,r15) 

loc_8c183a8a:
	mov.l @(0x08,r15),r3
	cmp/hs r3,r14
	bt/s loc_8c183aa8
	mov r14,r13
	mov.b @r13,r0
	mov.b @r13,r1
	extu.b r0,r0
	mov.l @(0x08,r15),r3
	and 0x01,r0 
	extu.b r1,r1
	add r0,r1
	add 0x08,r1
	add r14,r1
	cmp/hs r3,r1
	bf loc_8c183ad2

loc_8c183aa8:
	mov.l @r15,r6
	mov.w @(loc_8C183B3E,pc),r3
	mov.l @r15,r13
	sub r14,r6
	add r3,r6
	sub r6,r13
	mov r13,r5
	bsr loc_8c183654
	mov r14,r4
	mov.l @r15,r6
	mov 0x01,r5
	mov.l @(loc_8c183b40,pc),r14
	jsr @r14
	mov.l @(0x10,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c183b76
	mov.l @(0x10,r15),r3
	mov r13,r14
	add 0x01,r3
	mov.l r3,@(0x10,r15) 

loc_8c183ad2:
	mov r15,r5
	mov r13,r4
	add 0x0C,r5
	mov 0x02,r6
	bsr loc_8c183654
	add 0x06,r4
	mov.w @(0x0C,r15),r0 
	mov.l @(0x24,r15),r3
	extu.w r0,r0
	cmp/eq r3,r0
	bf loc_8c183b5a
	mov r11,r0
	cmp/eq 0x01,r0 
	bt loc_8c183b58
	mov r10,r0
	cmp/eq 0x01,r0 
	bf loc_8c183afe
	mov.l @(0x04,r15),r3
	mov 0x48,r0
	mov.l r3,@(0x1C,r15) 
	bra loc_8c183b04
	mov.l @(r0,r15),r5

loc_8c183afe:
	mov.l @(0x18,r15),r2
	mov r12,r5
	mov.l r2,@(0x1C,r15) 

loc_8c183b04:
	mov.b @r13,r3
	mov.l @(0x1C,r15),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c183b5a
	mov.l @(0x1C,r15),r6
	mov r13,r4
	bsr loc_8c18366c
	add 0x08,r4
	tst r0,r0
	bt loc_8c183b5a
	tst r10,r10
	bf loc_8c183b22
	mov.l @(0x18,r15),r2
	add r2,r12

loc_8c183b22:
	mov.b @r12,r3
	tst r3,r3
	bf loc_8c183b34
	mov.l @(loc_8c183b44,pc),r14
	mov r13,r4
	jsr @r14
	add 0x02,r4
	bra loc_8c183b78
	nop 

loc_8c183b34:
	mov r10,r0
	cmp/eq 0x01,r0 
	bf loc_8c183b48
	bra loc_8c183b50
	mov r9,r10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C183B3E:
	#data 0x0800
	#align4

loc_8c183b40:
	#data bank17.loc_8c1757a4
loc_8c183b44:
	#data bank17.loc_8c1754cc

;==============================================
loc_8c183b48:
	mov r11,r0
	cmp/eq 0x01,r0 
	bt loc_8c183b50
	add 0x01,r12

loc_8c183b50:
	mov.l @(loc_8c183b8c,pc),r5
	bsr loc_8c183714
	mov r12,r4
	mov.l r0,@(0x18,r15) 

loc_8c183b58:
	mov.l r11,@(0x24,r15) 

loc_8c183b5a:
	mov.b @r13,r5
	add 0x01,r11
	mov.l @(0x14,r15),r3
	extu.b r5,r5
	mov r5,r4
	and r8,r4
	add r5,r4
	add 0x08,r4
	add r4,r3
	mov.l r3,@(0x14,r15) 
	mov.l @(0x20,r15),r2
	cmp/ge r2,r3
	bf/s loc_8c183a8a
	add r4,r14

loc_8c183b76:
	mov 0x00,r0

loc_8c183b78:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183b8c:
	#data bank1c.loc_8c1c57ec

;==============================================
;unused?
loc_8c183b90:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c183b98:
	pref @r4
	dt r5
	bf/s loc_8c183b98
	add 0x20,r4
	rts 
	nop 

;==============================================
loc_8c183BA4:
	sts.l pr,@-r15
	add 0xF8,r15
	stc sr, r0
	mov.w @(loc_8c183C42,pc),r3 ; r3 set to 0xFF0F
	mov.l r4,@r15
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x04,r15)
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c183C48,pc),r2 ; r2 set to 0x8C184354
	jsr @r2
	nop
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.l @(loc_8c183C4C,pc),r4 ; r4 set to 0xFF00001C
	mov.w @(loc_8c183C46,pc),r1 ; r1 set to 0x800
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	mov.l @r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8c183C44,pc),r3 ; r3 set to 0xF7FF
	and r3,r2
	or r1,r2
	mov.w @(loc_8c183C42,pc),r1 ; r1 set to 0xFF0F
	mov.l r2,@r4
	mov 0xF7,r2 ; r2 set to 0xFFFFFFF7
	mov.l @r4,r0
	stc sr, r3
	and r2,r0
	or 0x08,r0
	mov.l r0,@r4
	and r1,r3 ; r3 ??
	mov.w @(0x04,r15),r0
	and 0x0F,r0
	shll2 r0
	shll2 r0
	or r3,r0
	ldc r0, sr
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c183bfa:
	mov.l @(0x50,PC),r3
	mov.w @(0x46,PC),r2
	mov.l @r3,r0
	or r2,r0
	rts 
	mov.l r0,@r3

;==============================================
;unused?
loc_8c183c06:
	mov.l @(0x44,PC),r3
	mov.l @r3,r0
	or 0x08,r0
	rts 
	mov.l r0,@r3

;==============================================
loc_8c183C10:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	add 0xF8,r15
	mov r5,r13
	tst r13,r13
	bf/s loc_8c183C26
	mov r4,r12
	mov.l @(loc_8c183C50,pc),r3 ; r3 set to 0x8C183E64
	jmp @r3
	nop

loc_8c183C26:
	mov.l @(loc_8c183C58,pc),r2 ; r2 set to 0x30000
	mov.l @(loc_8c183C54,pc),r14 ; r14 set to 0x9FFFFFE0
	cmp/hs r2,r13
	bf/s loc_8c183C36
	and r12,r14 ; r14 ??? bc r12 is ???
	mov.l @(loc_8c183C5C,pc),r3 ; r3 set to 0x8C183C76
	jmp @r3
	nop

loc_8c183C36:
	mov 0x1F,r5 ; r5 set to 0x1F
	mov r14,r4
	and r12,r5 ; r5 ??? bc r12 is ???
	add r13,r5
	bra loc_8c183C60
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183C42:
	#data 0xFF0F
loc_8c183C44:
	#data 0xF7FF
loc_8c183C46:
	#data 0x0800
	#align4

loc_8c183C48:
	#data loc_8c184354
loc_8c183C4C:
	#data 0xFF00001C
loc_8c183C50:
	#data loc_8c183E64
loc_8c183C54:
	#data 0x9FFFFFE0
loc_8c183C58:
	#data 0x00030000
loc_8c183C5C:
	#data loc_8c183C76

;==============================================
loc_8c183C60:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c183C68:
	ocbi @r4
	dt r5
	bf/s loc_8c183C68
	add 0x20,r4
	mov.l @(loc_8c183C90,pc),r2 ; r2 set to 0x8C183E64, r2 set to 0x8C183E64
	jmp @r2
	nop

loc_8c183C76:
	stc sr, r0
	mov.w @(loc_8c183C8E,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	bra loc_8c183C94
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183C8E:
	#data 0xFF0F
	#align4

loc_8c183C90:
	#data loc_8c183E64

;==============================================
loc_8c183C94:
	mova @(loc_8c183CA4,pc),r0  ; r0 init to 0x8C183CA4
	mov.l @(loc_8c183CA0,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;==============================================
	#align16_nop
loc_8c183CA0:
	#data 0xA0000000

;==============================================
loc_8c183CA4:
	mov.l @(0x2C,PC),r2
	add r13,r12
	mov 0xF9,r1
	mov.l @(0x24,PC),r3
	mov.l @r2,r4
	mov 0x01,r5
	add 0xFF,r12
	mov r4,r13
	shlr2 r13
	shld r1,r4
	shlr2 r13
	and r5,r4
	shlr r13
	mov.l r4,@(0x4,r15)
	and r3,r12
	mov r14,r4
	and r5,r13
	mov r12,r5
	mov r13,r6
	bra loc_8c183cd8
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183cd0:
	#data 0x1FFFFFE0
loc_8c183cd4:
	#data 0xFF00001C

;==============================================
loc_8c183cd8:
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x18,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x1C,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x20,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c183d34
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
	#align4

loc_8c183cfc:
	#data 0xF4000000
loc_8c183d00:
	#data 0x1FFFFC00
loc_8c183d04:
	#data 0x00001FFF
loc_8c183d08:
	#data 0x00002000
loc_8c183d0c:
	#data 0x00000FE0
loc_8c183d10:
	#data 0x80000000

;==============================================
;unused?
loc_8c183d14:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c183d2a
	cmp/hi r5,r1
	bt loc_8c183d2a
	or r7,r1
	ocbi @r1

loc_8c183d2a:
	tst r6,r6
	bt loc_8c183d32
	cmp/eq r0,r3
	bt loc_8c183d38

loc_8c183d32:
	add 0x20,r0

loc_8c183d34:
	cmp/hi r0,r2
	bt loc_8c183d14

loc_8c183d38:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	nop 
	mov.l @(0x4,r15),r3
	tst r3,r3
	bf loc_8c183d4c
	mov.l @(0x10,PC),r3
	jmp @r3
	nop 

loc_8c183d4c:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c183d5c
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183D58:
	#data loc_8c183DD6

;==============================================
;unused?
loc_8c183d5c:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x1C,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x20,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x24,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c183dc4
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183d80:
	#data 0x00002000
loc_8c183d84:
	#data 0xF4000000
loc_8c183d88:
	#data 0x1FFFFC00
loc_8c183d8c:
	#data 0x00001FFF
loc_8c183d90:
	#data 0x00004000
loc_8c183d94:
	#data 0x00002FE0
loc_8c183d98:
	#data 0x80000000

;==============================================
;unused?
loc_8c183d9c:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	mov r0,r11
	and r10,r11
	or r11,r1
	or r12,r1
	cmp/hi r1,r4
	bt loc_8c183dba
	cmp/hi r5,r1
	bt loc_8c183dba
	or r7,r1
	ocbi @r1

loc_8c183dba:
	tst r6,r6
	bt loc_8c183dc2
	cmp/eq r0,r3
	bt loc_8c183dc8

loc_8c183dc2:
	add 0x20,r0

loc_8c183dc4:
	cmp/hi r0,r2
	bt loc_8c183d9c

loc_8c183dc8:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @(0xC,PC),r2
	jmp @r2
	nop 

;==============================================
loc_8c183DD6:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c183DE4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183DE0:
	#data loc_8c183E50

;==============================================
loc_8c183DE4:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c183E08,pc),r0 ; r0 set to 0x2000
	mov.l @(loc_8c183E0C,pc),r8 ; r8 set to 0xF4000000
	mov.l @(loc_8c183E10,pc),r9 ; r9 set to 0x1FFFFC00
	mov.l @(loc_8c183E14,pc),r10 ; r10 set to 0x1FFF
	mov.l @(loc_8c183E18,pc),r2 ; r2 set to 0x4000
	mov.l @(loc_8c183E1C,pc),r3 ; r3 set to 0x2FE0
	mov.l @(loc_8c183E20,pc),r7 ; r7 set to 0x80000000
	and r4,r7 ; r7 ??? bc r4 is ???
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c183E44
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183E08:
	#data 0x00002000
loc_8c183E0C:
	#data 0xF4000000
loc_8c183E10:
	#data 0x1FFFFC00
loc_8c183E14:
	#data 0x00001FFF
loc_8c183E18:
	#data 0x00004000
loc_8c183E1C:
	#data 0x00002FE0
loc_8c183E20:
	#data 0x80000000

;==============================================
loc_8c183E24:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c183e3a
	cmp/hi r5,r1
	bt loc_8c183e3a
	or r7,r1
	ocbi @r1

loc_8c183E3A:
	tst r6,r6
	bt loc_8c183e42
	cmp/eq r0,r3
	bt loc_8c183e48

loc_8c183e42:
	add 0x20,r0

loc_8c183e44:
	cmp/hi r0,r2
	bt loc_8c183e24

loc_8c183e48:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11

loc_8c183e50:
	mov.w @r15,r0
	stc sr, r3
	extu.w r0,r0
	mov.w @(loc_8C183EA0,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 

loc_8c183E64:
	add 0x08,r15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183E6E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	add 0xF8,r15
	mov r5,r13
	tst r13,r13
	bf/s loc_8c183E84
	mov r4,r12
	mov.l @(loc_8c183EA4,pc),r3 ; r3 set to 0x8C1840B8
	jmp @r3
	nop

loc_8c183E84:
	mov.l @(loc_8c183EAC,pc),r2 ; r2 set to 0x10000
	mov.l @(loc_8c183EA8,pc),r14 ; r14 set to 0x9FFFFFE0
	cmp/hs r2,r13
	bf/s loc_8c183E94
	and r12,r14 ; r14 ??? bc r12 is ???
	mov.l @(loc_8c183EB0,pc),r3 ; r3 set to 0x8C183ECA
	jmp @r3
	nop

loc_8c183E94:
	mov 0x1F,r5 ; r5 set to 0x1F
	mov r14,r4
	and r12,r5 ; r5 ??? bc r12 is ???
	add r13,r5
	bra loc_8c183EB4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183ea0:
	#data 0xFF0F
	#align4

loc_8c183EA4:
	#data loc_8c1840B8
loc_8c183EA8:
	#data 0x9FFFFFE0
loc_8c183EAC:
	#data 0x00010000
loc_8c183EB0:
	#data loc_8c183ECA

;==============================================
loc_8c183EB4:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c183EBC:
	ocbp @r4
	dt r5
	bf/s loc_8c183EBC
	add 0x20,r4
	mov.l @(loc_8c183EE4,pc),r2 ; r2 set to 0x8C1840B8, r2 set to 0x8C1840B8
	jmp @r2
	nop

loc_8c183ECA:
	stc sr, r0
	mov.w @(loc_8c183EE2,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	bra loc_8c183EE8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183EE2:
	#data 0xFF0F
	#align4

loc_8c183EE4:
	#data loc_8c1840B8

;==============================================
loc_8c183EE8:
	mova @(loc_8c183EF8,pc),r0  ; r0 init to 0x8C183EF8
	mov.l @(loc_8c183EF4,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;==============================================
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183EF4:
	#data 0xA0000000

;===============================================
loc_8c183EF8:
	mov.l @(0x2C,PC),r2
	add r13,r12
	mov 0xF9,r1
	mov.l @(0x24,PC),r3
	mov.l @r2,r4
	mov 0x01,r5
	add 0xFF,r12
	mov r4,r13
	shlr2 r13
	shld r1,r4
	shlr2 r13
	and r5,r4
	shlr r13
	mov.l r4,@(0x4,r15)
	and r3,r12
	mov r14,r4
	and r5,r13
	mov r12,r5
	mov r13,r6
	bra loc_8c183f2c
	nop 
	
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183f24:
	#data 0x1FFFFFE0
loc_8c183f28:
	#data 0xFF00001C

;==============================================
;unused
loc_8c183f2c:
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x18,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x1C,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x20,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c183f88
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
	#align4
loc_8c183f50:
	#data 0xF4000000
loc_8c183f54:
	#data 0x1FFFFC00
loc_8c183f58:
	#data 0x00001FFF
loc_8c183f5c:
	#data 0x00002000
loc_8c183f60:
	#data 0x00000FE0
loc_8c183f64:
	#data 0x80000000

;==============================================
;unused
loc_8c183f68:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c183f7e
	cmp/hi r5,r1
	bt loc_8c183f7e
	or r7,r1
	ocbp @r1

loc_8c183f7e:
	tst r6,r6
	bt loc_8c183f86
	cmp/eq r0,r3
	bt loc_8c183f8c

loc_8c183f86:
	add 0x20,r0

loc_8c183f88:
	cmp/hi r0,r2
	bt loc_8c183f68

loc_8c183f8c:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	nop 
	mov.l @(0x4,r15),r3
	tst r3,r3
	bf loc_8c183fa0
	mov.l @(0x10,PC),r3
	jmp @r3
	nop 

loc_8c183fa0:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c183fb0
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183FAC:
	#data loc_8c18402A

;==============================================
;unused
loc_8c183fb0:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x1C,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x20,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x24,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c184018
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c183fd4:
	#data 0x00002000
loc_8c183fd8:
	#data 0xF4000000
loc_8c183fdc:
	#data 0x1FFFFC00
loc_8c183fe0:
	#data 0x00001FFF
loc_8c183fe4:
	#data 0x00004000
loc_8c183fe8:
	#data 0x00002FE0
loc_8c183fec:
	#data 0x80000000

;==============================================
;unused?
loc_8c183ff0:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	mov r0,r11
	and r10,r11
	or r11,r1
	or r12,r1
	cmp/hi r1,r4
	bt loc_8c18400e
	cmp/hi r5,r1
	bt loc_8c18400e
	or r7,r1
	ocbp @r1

loc_8c18400e:
	tst r6,r6
	bt loc_8c184016
	cmp/eq r0,r3
	bt loc_8c18401c

loc_8c184016:
	add 0x20,r0

loc_8c184018:
	cmp/hi r0,r2
	bt loc_8c183ff0

loc_8c18401c:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @(0xC,PC),r2
	jmp @r2
	nop 

;==============================================
loc_8c18402A:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c184038
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184034:
	#data loc_8c1840A4

;==============================================
loc_8c184038:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c18405C,pc),r0 ; r0 set to 0x2000
	mov.l @(loc_8c184060,pc),r8 ; r8 set to 0xF4000000
	mov.l @(loc_8c184064,pc),r9 ; r9 set to 0x1FFFFC00
	mov.l @(loc_8c184068,pc),r10 ; r10 set to 0x1FFF
	mov.l @(loc_8c18406C,pc),r2 ; r2 set to 0x4000
	mov.l @(loc_8c184070,pc),r3 ; r3 set to 0x2FE0
	mov.l @(loc_8c184074,pc),r7 ; r7 set to 0x80000000
	and r4,r7 ; r7 ??? bc r4 is ???
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c184098
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18405C:
	#data 0x00002000
loc_8c184060:
	#data 0xF4000000
loc_8c184064:
	#data 0x1FFFFC00
loc_8c184068:
	#data 0x00001FFF
loc_8c18406C:
	#data 0x00004000
loc_8c184070:
	#data 0x00002FE0
loc_8c184074:
	#data 0x80000000

;==============================================
loc_8c184078:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c18408e
	cmp/hi r5,r1
	bt loc_8c18408e
	or r7,r1
	ocbp @r1

loc_8c18408E:
	tst r6,r6
	bt loc_8c184096
	cmp/eq r0,r3
	bt loc_8c18409c

loc_8c184096:
	add 0x20,r0

loc_8c184098:
	cmp/hi r0,r2
	bt loc_8c184078

loc_8c18409c:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11

loc_8c1840a4:
	mov.w @r15,r0
	stc sr, r3
	extu.w r0,r0
	mov.w @(loc_8C1840F4,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 

loc_8c1840B8:
	add 0x08,r15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1840C2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	add 0xF8,r15
	mov r5,r13
	tst r13,r13
	bf/s loc_8c1840D8
	mov r4,r12
	mov.l @(loc_8c1840F8,pc),r3 ; r3 set to 0x8C18430C
	jmp @r3
	nop

loc_8c1840D8:
	mov.l @(loc_8c184100,pc),r2 ; r2 set to 0x10000
	mov.l @(loc_8c1840FC,pc),r14 ; r14 set to 0x9FFFFFE0
	cmp/hs r2,r13
	bf/s loc_8c1840E8
	and r12,r14 ; r14 ??? bc r12 is ???
	mov.l @(loc_8c184104,pc),r3 ; r3 set to 0x8C18411E
	jmp @r3
	nop

loc_8c1840E8:
	mov 0x1F,r5 ; r5 set to 0x1F
	mov r14,r4
	and r12,r5 ; r5 ??? bc r12 is ???
	add r13,r5
	bra loc_8c184108
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1840f4:
	#data 0xFF0F
	#align4

loc_8c1840F8:
	#data loc_8c18430C
loc_8c1840FC:
	#data 0x9FFFFFE0
loc_8c184100:
	#data 0x00010000
loc_8c184104:
	#data loc_8c18411E

;==============================================
loc_8c184108:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c184110:
	ocbwb @r4
	dt r5
	bf/s loc_8c184110
	add 0x20,r4
	mov.l @(loc_8c184138,pc),r2 ; r2 set to 0x8C18430C, r2 set to 0x8C18430C
	jmp @r2
	nop

loc_8c18411E:
	stc sr, r0
	mov.w @(loc_8c184136,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	bra loc_8c18413C
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184136:
	#data 0xFF0F
	#align4

loc_8c184138:
	#data loc_8c18430C

;==============================================
loc_8c18413C:
	mova @(loc_8c18414C,pc),r0  ; r0 init to 0x8C18414C
	mov.l @(loc_8c184148,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	nop
	#align4
loc_8c184148:
	#data 0xA0000000

;==============================================
loc_8c18414C:
	mov.l @(0x2C,PC),r2
	add r13,r12
	mov 0xF9,r1
	mov.l @(0x24,PC),r3
	mov.l @r2,r4
	mov 0x01,r5
	add 0xFF,r12
	mov r4,r13
	shlr2 r13
	shld r1,r4
	shlr2 r13
	and r5,r4
	shlr r13
	mov.l r4,@(0x4,r15)
	and r3,r12
	mov r14,r4
	and r5,r13
	mov r12,r5
	mov r13,r6
	bra loc_8c184180
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184178:
	#data 0x1FFFFFE0
loc_8c18417c:
	#data 0xFF00001C

;==============================================
loc_8c184180:
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x18,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x1C,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x20,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c1841dc
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
	#align4

loc_8c1841a4:
	#data 0xF4000000
loc_8c1841a8:
	#data 0x1FFFFC00
loc_8c1841ac:
	#data 0x00001FFF
loc_8c1841b0:
	#data 0x00002000
loc_8c1841b4:
	#data 0x00000FE0
loc_8c1841b8:
	#data 0x80000000

;==============================================
loc_8c1841bc:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c1841d2
	cmp/hi r5,r1
	bt loc_8c1841d2
	or r7,r1
	ocbwb @r1

loc_8c1841d2:
	tst r6,r6
	bt loc_8c1841da
	cmp/eq r0,r3
	bt loc_8c1841e0

loc_8c1841da:
	add 0x20,r0

loc_8c1841dc:
	cmp/hi r0,r2
	bt loc_8c1841bc

loc_8c1841e0:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	nop 
	mov.l @(0x4,r15),r3
	tst r3,r3
	bf loc_8c1841f4
	mov.l @(0x10,PC),r3
	jmp @r3
	nop 

loc_8c1841f4:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c184204
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184200:
	#data loc_8c18427E

;==============================================
loc_8c184204:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x1C,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x20,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x24,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c18426c
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184228:
	#data 0x00002000
loc_8c18422c:
	#data 0xF4000000
loc_8c184230:
	#data 0x1FFFFC00
loc_8c184234:
	#data 0x00001FFF
loc_8c184238:
	#data 0x00004000
loc_8c18423c:
	#data 0x00002FE0
loc_8c184240:
	#data 0x80000000

;==============================================
loc_8c184244:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	mov r0,r11
	and r10,r11
	or r11,r1
	or r12,r1
	cmp/hi r1,r4
	bt loc_8c184262
	cmp/hi r5,r1
	bt loc_8c184262
	or r7,r1
	ocbwb @r1

loc_8c184262:
	tst r6,r6
	bt loc_8c18426a
	cmp/eq r0,r3
	bt loc_8c184270

loc_8c18426a:
	add 0x20,r0

loc_8c18426c:
	cmp/hi r0,r2
	bt loc_8c184244

loc_8c184270:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @(0xC,PC),r2
	jmp @r2
	nop 

;==============================================
loc_8c18427E:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c18428C
	nop


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184288:
	#data loc_8c1842F8

;==============================================
loc_8c18428C:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1842B0,pc),r0 ; r0 set to 0x2000
	mov.l @(loc_8c1842B4,pc),r8 ; r8 set to 0xF4000000
	mov.l @(loc_8c1842B8,pc),r9 ; r9 set to 0x1FFFFC00
	mov.l @(loc_8c1842BC,pc),r10 ; r10 set to 0x1FFF
	mov.l @(loc_8c1842C0,pc),r2 ; r2 set to 0x4000
	mov.l @(loc_8c1842C4,pc),r3 ; r3 set to 0x2FE0
	mov.l @(loc_8c1842C8,pc),r7 ; r7 set to 0x80000000
	and r4,r7 ; r7 ??? bc r4 is ???
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c1842EC
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1842B0:
	#data 0x00002000
loc_8c1842B4:
	#data 0xF4000000
loc_8c1842B8:
	#data 0x1FFFFC00
loc_8c1842BC:
	#data 0x00001FFF
loc_8c1842C0:
	#data 0x00004000
loc_8c1842C4:
	#data 0x00002FE0
loc_8c1842C8:
	#data 0x80000000

;==============================================
loc_8c1842CC:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c1842e2
	cmp/hi r5,r1
	bt loc_8c1842e2
	or r7,r1
	ocbwb @r1

loc_8c1842e2:
	tst r6,r6
	bt loc_8c1842ea
	cmp/eq r0,r3
	bt loc_8c1842f0

loc_8c1842ea:
	add 0x20,r0

loc_8c1842ec:
	cmp/hi r0,r2
	bt loc_8c1842cc

loc_8c1842f0:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11

loc_8c1842f8:
	mov.w @r15,r0
	stc sr, r3
	extu.w r0,r0
	mov.w @(loc_8C18432C,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 

loc_8c18430C:
	add 0x08,r15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c184316:
	add 0xF8,r15
	mov.l r4,@r15
	mov.l @(0x14,PC),r3
	mov.l r5,@(0x4,r15)
	mov.l @r15,r0
	mov.l @r15,r4
	and 0x1F,r0
	and r3,r4
	add r0,r5
	bra loc_8c184334
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18432c:
	#data 0xFF0F
	#align4

loc_8c184330:
	#data 0x9FFFFFE0

;==============================================
loc_8c184334:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c18433c:
	pref @r4
	dt r5
	bf/s loc_8c18433c
	add 0x20,r4
	rts 
	add 0x08,r15

;==============================================
loc_8c184348:
	mov r5,r0
	movca.l r0,@r4
	rts
	nop

;==============================================
loc_8c184350:
	rts
	nop

;==============================================
loc_8c184354:
	add 0xFC,r15
	stc sr, r0
	mov.w @(loc_8c18436E,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	bra loc_8c184370
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18436E:
	#data 0xFF0F

;==============================================
loc_8c184370:
	mova @(loc_8c184380,pc),r0  ; r0 init to 0x8C184380
	mov.l @(loc_8c18437C,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	nop
	#align4

loc_8c18437C:
	#data 0xA0000000

;==============================================
loc_8c184380:
	mov.l @(0x54,PC),r2
	mov.l @(0x50,PC),r5
	mov.l @r2,r0
	shlr2 r0
	shlr2 r0
	shlr r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bf/s loc_8c1843b8
	mov 0x00,r4
	mov.w @(0x34,PC),r7
	mov r4,r6

loc_8c184398:
	mov r6,r2
	add 0x20,r6
	cmp/hs r7,r6
	or r5,r2
	bf/s loc_8c184398
	mov.l r4,@r2
	mov.w @(0x28,PC),r6
	mov.w @(0x24,PC),r7

loc_8c1843a8:
	mov r6,r2
	add 0x20,r6
	cmp/hs r7,r6
	or r5,r2
	bf/s loc_8c1843a8
	mov.l r4,@r2
	bra loc_8c1843c8
	nop 

loc_8c1843b8:
	mov.w @(0x16,PC),r7
	mov r4,r6

loc_8c1843bc:
	mov r6,r3
	add 0x20,r6
	cmp/hs r7,r6
	or r5,r3
	bf/s loc_8c1843bc
	mov.l r4,@r3

loc_8c1843c8:
	bra loc_8c1843dc
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1843cc:
	#data 0x1000
loc_8c1843ce:
	#data 0x3000
loc_8c1843d0:
	#data 0x2000
loc_8c1843d2:
	#data 0x4000
	#align4

loc_8c1843d4:
	#data 0xF4000000
loc_8c1843d8:
	#data 0xFF00001C

;==============================================
loc_8c1843dc:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c1843ec:
	mov.w @r15,r0
	stc sr,r3
	extu.w r0,r0
	mov.w @(0x7C,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	rts 
	add 0x04,r15

;==============================================
loc_8c184404:
	mov.l @(0x74,PC),r7
	mov.l @(0x70,PC),r1
	bra loc_8c18441a
	mov.l @r7,r6

loc_8c18440c:
	mov r6,r3
	shll8 r3
	mov r6,r0
	shll2 r3
	shll r0
	add 0x01,r6
	mov.w r3,@(r0,r1)

loc_8c18441a:
	mov.l @r7,r2
	add r5,r2
	cmp/hs r2,r6
	bt loc_8c184428
	mov 0x08,r2
	cmp/hs r2,r6
	bf loc_8c18440c

loc_8c184428:
	mov r6,r0
	cmp/eq 0x08,r0
	bt loc_8c184440
	mov.l @r7,r2
	mov.l @(0x4C,PC),r3
	shll8 r2
	shll2 r2
	or r3,r2
	mov.l r2,@r4
	mov.l @r7,r1
	add r5,r1
	mov.l r1,@r7

loc_8c184440:
	rts 
	nop 

;==============================================
loc_8c184444:
	mov.l @(0x34,PC),r6
	mov.l @(0x30,PC),r7
	mov.l @r6,r5
	mov.w @(0x26,PC),r3
	shll r5
	and r3,r4
	add r7,r5
	cmp/hi r7,r5
	shlr8 r4
	bf/s loc_8c18446e
	shlr2 r4

loc_8c18445a:
	mov.w @r5,r3

loc_8c18445c:
	extu.w r3,r3
	cmp/eq r4,r3
	bf/s loc_8c18446a
	add 0xFE,r5
	mov.l @r6,r3
	add 0xFF,r3
	mov.l r3,@r6

loc_8c18446a:
	cmp/hi r7,r5
	bt loc_8c18445a

loc_8c18446e:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184472:
	#data 0xFF0F
loc_8c184474:
	#data 0x1FFF
	#align4

loc_8c184478:
	#data 0x8C3387EC
loc_8c18447c:
	#data 0x8C3387E8
loc_8c184480:
	#data 0x7C000000

;==============================================
loc_8c184484:
	add 0xFC,r15
	stc sr,r0
	mov.w @(0xF8,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.w @(0xE8,PC),r6
	mov 0x00,r5
	mov.l @(0xF4,PC),r7
	add r7,r6
	mov r7,r4

loc_8c1844a4:
	mov.l r5,@(0xC,r4)
	add 0x10,r4
	cmp/hs r6,r4
	bf loc_8c1844a4
	mov.w @(0xD8,PC),r6
	mov.l @(0xE8,PC),r7
	add r7,r6
	mov r7,r4

loc_8c1844b4:
	mov.l r5,@r4
	add 0x04,r4
	cmp/hs r6,r4
	bf loc_8c1844b4
	mov.w @r15,r0
	stc sr,r3
	extu.w r0,r0
	mov.w @(0xBE,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	rts 
	add 0x04,r15

;==============================================
loc_8c1844D4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r0
	mov.w r0,@(0x04,r15)
	stc sr, r0
	mov.w @(loc_8c184584,pc),r3 ; r3 set to 0xFF0F
	mov r7,r8
	mov.l r5,@r15
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x08,r15)
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.w @(0x04,r15),r0
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFC
	mov.l @(loc_8c184598,pc),r9 ; r9 set to 0x8C3397FC
	mov r6,r11
	mov r0,r13
	mov r13,r0
	shad r3, r0
	mov.l @(loc_8c18459C,pc),r7 ; r7 set to 0x80000000
	shll2 r0
	mov.l @(r0,r9),r4
	mov r4,r5
	bra loc_8c184520
	or r7,r11

loc_8c18451C:
	mov r4,r5
	mov.l @(0x4,r4),r4

loc_8c184520:
	tst r4,r4
	bt loc_8c18452a
	mov.l @(0x0C,r4),r2
	cmp/hs r11,r2
	bf loc_8c18451c

loc_8c18452a:
	mov.l @(loc_8C184594,pc),r10
	mov 0x01,r12
	mov.w @(loc_8C18458A,pc),r6
	mov r12,r14

loc_8c184532:
	mov r14,r2
	shll2 r2
	shll2 r2
	add r10,r2
	mov.l @(0x0C,r2),r3
	tst r7,r3
	bt loc_8c184546
	add 0x01,r14
	cmp/hs r6,r14
	bf loc_8c184532

loc_8c184546:
	cmp/hs r6,r14
	bf loc_8c18454e
	bra loc_8c184656
	nop 

loc_8c18454e:
	tst r4,r4
	bf loc_8c184622
	tst r5,r5
	bf loc_8c184622
	mov.w @(loc_8C18458C,pc),r4
	cmp/ge r4,r13
	bt loc_8c184574
	mov.w @(loc_8C18458E,pc),r3
	stc vbr, r2
	add r13,r3
	mov.w @(loc_8C184590,pc),r0
	shar r3
	shar r3
	shar r3
	add r3,r2
	mov.l @(loc_8c1845a0,pc),r3
	mov.l r3,@(r0,r2) 
	bra loc_8c1845c6
	nop 

loc_8c184574:
	cmp/eq r4,r13
	bf loc_8c1845ac
	mov.l @(loc_8c1845a8,pc),r2
	mov.l @(loc_8c1845a4,pc),r4
	jsr @r2
	mov 0x00,r5
	bra loc_8c1845c6
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184584:
	#data 0xFF0F
loc_8c184586:
	#data 0x1000
loc_8c184588:
	#data 0x0300
loc_8C18458A:
	#data 0x0100
loc_8C18458C:
	#data 0x0900
loc_8C18458E:
	#data 0xFE00
loc_8C184590:
	#data 0x0200
	#align4

loc_8C184594:
	#data 0x8C3387FC
loc_8c184598:
	#data 0x8C3397FC
loc_8c18459c:
	#data 0x80000000
loc_8c1845a0:
	#data loc_8c184682
loc_8c1845a4:
	#data loc_8c1846a6
loc_8c1845a8:
	#data bank17.loc_8c17afc0

;==============================================
loc_8c1845ac:
	mov.w @(loc_8C1846CC,pc),r2
	cmp/eq r2,r13
	bf loc_8c1845be
	mov.l @(loc_8c1846d8,pc),r1
	mov.l @(loc_8c1846d4,pc),r4
	jsr @r1
	mov 0x00,r5
	bra loc_8c1845c6
	nop 

loc_8c1845be:
	stc vbr, r1
	mov.w @(loc_8C1846CE,pc),r0
	mov.l @(loc_8c1846dc,pc),r3
	mov.l r3,@(r0,r1) 

loc_8c1845c6:
	mov r14,r4
	shll2 r4
	mov r13,r0
	mov 0xFC,r3
	shll2 r4
	shad r3, r0
	add r10,r4
	shll2 r0
	mov.l r4,@(r0,r9) 
	mov 0x00,r3
	mov.l r3,@(0x04,r4) 
	mov 0xF8,r3
	mov.l @r15,r2
	mov.l r2,@r4
	mov.l r8,@(0x08,r4) 
	mov.l r11,@(0x0C,r4) 
	mov.w @(0x04,r15),r0 
	mov r0,r4
	extu.b r4,r4
	mov r13,r0
	shlr2 r4
	shad r3, r0
	shlr2 r4
	shlr r4
	cmp/eq 0x0A,r0 
	bf loc_8c18460a
	mov.l @(loc_8C1846E0,pc),r3
	add 0x0C,r4
	shad r4, r12
	mov.l @r3,r2
	or r12,r2
	mov.l r2,@r3
	bra loc_8c184652
	nop 

loc_8c18460a:
	mov 0xF8,r3
	mov r13,r0
	shad r3, r0
	cmp/eq 0x0B,r0 
	bf loc_8c184652
	mov.l @(loc_8C1846E4,pc),r3
	shad r4, r12
	mov.l @r3,r2
	or r12,r2
	mov.l r2,@r3
	bra loc_8c184652
	nop 

loc_8c184622:
	mov r13,r0
	mov 0xFC,r3
	shad r3, r0
	mov r14,r12
	shll2 r0
	mov.l @(r0,r9),r2
	shll2 r12
	shll2 r12
	cmp/eq r2,r4
	bf/s loc_8c184646
	add r10,r12
	mov 0xFC,r3
	mov r13,r0
	shad r3, r0
	mov.l r4,@(0x04,r12) 
	shll2 r0
	bra loc_8c18464a
	mov.l r12,@(r0,r9) 

loc_8c184646:
	mov.l r12,@(0x04,r5) 
	mov.l r4,@(0x04,r12) 

loc_8c18464a:
	mov.l @r15,r2
	mov.l r2,@r12
	mov.l r8,@(0x08,r12) 
	mov.l r11,@(0x0C,r12) 

loc_8c184652:
	bra loc_8c184658
	mov r14,r4

loc_8c184656:
	mov 0x00,r4

loc_8c184658:
	mov.w @(0x08,r15),r0 
	stc sr, r3
	extu.w r0,r0
	mov.w @(loc_8c1846d0,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 
	mov r4,r0
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

loc_8c184682:
	mov.l r14,@-r15
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFC
	exts.w r4,r14
	mov.l @(loc_8c1846E8,pc),r0 ; r0 set to 0x8C3397FC
	sts.l pr,@-r15
	shad r3, r14
	shll2 r14
	bra loc_8c18469C
	mov.l @(r0,r14),r14

loc_8c184694:
	mov.l @r14,r3
	jsr @r3
	mov.l @(0x08,r14),r4
	mov.l @(0x04,r14),r14

loc_8c18469C:
	tst r14,r14
	bf loc_8c184694
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1846A6:
	stc sr, r0
	mov.w @(loc_8c1846D0,pc),r3 ; r3 set to 0xFF0F
	mov.l r14,@-r15
	sts.l pr,@-r15
	and r3,r0
	or 0x60,r0
	ldc r0, sr
	mov.l @(loc_8c1846EC,pc),r14 ; r14 set to 0x8C339A3C
	bra loc_8c1846C2
	mov.l @r14,r14

loc_8c1846BA:
	mov.l @r14,r3
	jsr @r3
	mov.l @(0x08,r14),r4
	mov.l @(0x04,r14),r14

loc_8c1846C2:
	tst r14,r14
	bf loc_8c1846BA
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1846cc:
	#data 0x0920
loc_8c1846ce:
	#data 0x022C
loc_8c1846D0:
	#data 0xFF0F
	#align4

loc_8c1846D4:
	#data loc_8c1846F0
loc_8c1846D8:
	#data bank17.loc_8c17AEC0
loc_8c1846DC:
	#data loc_8c184716
loc_8c1846e0:
	#data 0xA05F6920
loc_8c1846e4:
	#data 0xA05F6924
loc_8c1846E8:
	#data 0x8C3397FC
loc_8c1846EC:
	#data 0x8C339A3C

;==============================================
loc_8c1846F0:
	stc sr, r0
	mov.w @(loc_8c1847C0,pc),r3 ; r3 set to 0xFF0F
	mov.l r14,@-r15
	sts.l pr,@-r15
	and r3,r0
	or 0x60,r0
	ldc r0, sr
	mov.l @(loc_8c1847C8,pc),r14 ; r14 set to 0x8C339A44
	bra loc_8c18470C
	mov.l @r14,r14

loc_8c184704:
	mov.l @r14,r3
	jsr @r3
	mov.l @(0x08,r14),r4
	mov.l @(0x04,r14),r14

loc_8c18470C:
	tst r14,r14
	bf loc_8c184704
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c184716:
	mov.l r14,@-r15
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFC
	mov.l r13,@-r15
	exts.w r4,r0
	mov.l r12,@-r15
	shad r3, r0
	mov.l r11,@-r15
	cmp/eq 0x32,r0
	mov.l r10,@-r15
	sts.l pr,@-r15
	bt loc_8c1847B2
	cmp/eq 0x36,r0
	bt loc_8c184738
	cmp/eq 0x3A,r0
	bt loc_8c1847B2
	bra loc_8c1847B2
	nop

loc_8c184738:
	stc sr, r0
	mov.w @(loc_8c1847C0,pc),r1 ; r1 set to 0xFF0F
	and r1,r0
	or 0x40,r0
	ldc r0, sr
	mov.l @(loc_8c1847D0,pc),r0 ; r0 set to 0xA05F6900
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1847CC,pc),r2 ; r2 set to 0xA05F6920
	mov.l @r0,r12
	mov.l @r2,r3
	and r3,r12
	shlr8 r12
	shlr2 r12
	shlr2 r12
	tst r12,r12
	bt/s loc_8c184784
	mov 0x01,r14 ; r14 set to 0x01
	mov.w @(loc_8c1847C4,pc),r11 ; r11 set to 0x80
	mov.w @(loc_8c1847C2,pc),r10 ; r10 set to 0xA00
	bra loc_8c184778
	mov r4,r13

loc_8c184762:
	mov r14,r3
	shad r13, r3
	tst r12,r3
	bt loc_8c184776
	mov r13,r4
	shll2 r4
	shll2 r4
	shll r4
	bsr loc_8c184682
	add r10,r4

loc_8c184776:
	add 0x01,r13

loc_8c184778:
	mov r14,r2
	shad r13, r2
	cmp/eq r11,r2
	bf loc_8c184762
	bra loc_8c1847B2
	nop

loc_8c184784:
	mov.l @(loc_8c1847D8,pc),r2 ; r2 set to 0xA05F6904
	mov.l @(loc_8c1847D4,pc),r1 ; r1 set to 0xA05F6924
	mov.l @r2,r11
	mov.l @r1,r3
	mov.w @(loc_8c1847C6,pc),r12 ; r12 set to 0xB00
	and r3,r11
	bra loc_8c1847AA
	mov r4,r13

loc_8c184794:
	mov r14,r2
	shad r13,r2
	tst r11,r2
	bt loc_8c1847a8
	mov r13,r4
	shll2 r4
	shll2 r4
	shll r4
	bsr loc_8c184682
	add r12,r4

loc_8c1847A8:
	add 0x01,r13

loc_8c1847aa:
	mov r14,r0
	shad r13, r0
	cmp/eq 0x10,r0 
	bf loc_8c184794

loc_8c1847B2:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1847C0:
	#data 0xFF0F
loc_8c1847C2:
	#data 0x0A00
loc_8c1847C4:
	#data 0x0080
loc_8c1847C6:
	#data 0x0B00
	#align4

loc_8c1847C8:
	#data 0x8C339A44
loc_8c1847CC:
	#data 0xA05F6920
loc_8c1847D0:
	#data 0xA05F6900
loc_8c1847D4:
	#data 0xA05F6924
loc_8c1847D8:
	#data 0xA05F6904

;==============================================
loc_8c1847DC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	stc sr,r0
	mov.w @(0xF6,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov r4,r12
	shll2 r12
	mov.l @(0xF0,PC),r7
	shll2 r12
	mov r12,r13
	mov.w @(0xDC,PC),r4
	mov 0x01,r5
	mov r5,r6
	add r7,r13

loc_8c184812:
	mov r6,r14
	shll2 r14
	shll2 r14
	add r7,r14
	mov.l @(0x4,r14),r3
	cmp/eq r13,r3
	bf loc_8c184828
	mov.l @(0xC,r14),r2
	mov.l @(0xD8,PC),r3
	tst r3,r2
	bf loc_8c18482e

loc_8c184828:
	add 0x01,r6
	cmp/hs r4,r6
	bf loc_8c184812

loc_8c18482e:
	cmp/eq r4,r6
	bt/s loc_8c184846
	mov 0x00,r1
	mov r12,r4
	shll2 r6
	add r7,r4
	mov.l @(0x4,r4),r3
	shll2 r6
	add r7,r6
	mov.l r3,@(0x4,r6)
	bra loc_8c184920
	mov.l r1,@(0xC,r4)

loc_8c184846:
	mov r12,r13
	add r7,r13
	mov.w @(0xA2,PC),r7
	mov r5,r14
	mov.l @(0xB4,PC),r10
	mov.l @(0xB4,PC),r4
	mov.l @(0xAC,PC),r9
	mov.w @(0x94,PC),r12
	mov.w @(0x94,PC),r8

loc_8c184858:
	mov r14,r0
	shll2 r0
	mov.l @(r0,r4),r3
	cmp/eq r13,r3
	bf loc_8c184918
	mov r14,r6
	shll2 r6
	add r4,r6
	mov.l @(0x4,r13),r3
	mov.l r3,@r6
	mov.l r1,@(0xC,r13)
	mov.l @r6,r2
	tst r2,r2
	bf loc_8c18491e
	cmp/eq r7,r14
	bf loc_8c184884
	mov.l @(0x90,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r5,r4
	bra loc_8c18491e
	nop 

loc_8c184884:
	mov.w @(0x6A,PC),r2
	cmp/eq r2,r14
	bf loc_8c184896
	mov.l @(0x84,PC),r1
	mov 0x00,r5
	jsr @r1
	mov r5,r4
	bra loc_8c18491e
	nop 

loc_8c184896:
	mov r14,r13
	shll2 r13
	shll2 r13
	mov r13,r4
	extu.b r4,r7
	mov 0xF8,r3
	exts.w r4,r6
	shlr2 r7
	shad r3,r6
	mov r6,r0
	shlr2 r7
	shlr r7
	cmp/eq 0x0A,r0
	bf loc_8c1848c2
	mov r5,r3
	add 0x0C,r7
	mov.l @r10,r1
	shad r7,r3
	not r3,r3
	and r3,r1
	bra loc_8c1848d2
	mov.l r1,@r10

loc_8c1848c2:
	cmp/eq 0x0B,r0
	bf loc_8c1848d2
	mov r5,r3
	mov.l @r9,r1
	shad r7,r3
	not r3,r3
	and r3,r1
	mov.l r1,@r9

loc_8c1848d2:
	mov.w @(0x1E,PC),r2
	stc vbr,r3
	add r2,r13
	mov.l @(0x38,PC),r0
	shlr2 r13
	shlr r13
	add r13,r3
	add r8,r3
	mov.l r0,@r3
	bra loc_8c18491e
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1848e8:
	#data 0xFF0F
loc_8c1848ea:
	#data 0x0100
loc_8c1848ec:
	#data 0x00C0
loc_8c1848ee:
	#data 0x0200
loc_8c1848f0:
	#data 0x0090
loc_8c1848f2:
	#data 0x0092
loc_8c1848f4:
	#data 0xFE00
	#align4

loc_8c1848f8:
	#data 0x8C3387FC
loc_8c1848fc:
	#data 0x80000000
loc_8c184900:
	#data 0xA05F6924
loc_8c184904:
	#data 0xA05F6920
loc_8c184908:
	#data 0x8C3397FC
loc_8c18490C:
	#data bank17.loc_8c17AFC0
loc_8c184910:
	#data bank17.loc_8c17AEC0
loc_8c184914:
	#data bank19.loc_8c195E74

;==============================================
loc_8c184918:
	add 0x01,r14
	cmp/hs r12,r14
	bf loc_8c184858

loc_8c18491E:
	cmp/eq r12,r14

loc_8c184920:
	mov.w @r15,r0
	stc sr,r3
	extu.w r0,r0
	mov.w @(0x1C,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184946:
	#data 0xFF0F

;==============================================
loc_8c184948:
	shll r4
	shll r4
	shll r4
	shll r4
	stc sr,r0
	mov.l @(loc_8c184960,PC),r1
	and r1,r0
	or r4,r0
	ldc r0,sr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	nop
loc_8c184960:
	#data 0xFF0F

;==============================================
loc_8c184962:
	mov 0xff,r15;???
	rts
	nop

;==============================================
loc_8c184968:
	mov.l r14,@-r15
	add 0xFC,r15
	stc sr, r0
	mov.w @(loc_8c1849D4,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c1849D8,pc),r3 ; r3 set to 0xFF00001C
	mov.w @(loc_8c1849D6,pc),r2 ; r2 set to 0x800
	mov.l @r3,r1
	mov.l @(loc_8c1849DC,pc),r7 ; r7 set to 0x8C195FFC
	or r2,r1
	mov.l r1,@r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8c1849E0,pc),r3 ; r3 set to 0x80000000
	cmp/eq r3,r4
	bf/s loc_8c1849A6
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c1849EC,pc),r2 ; r2 set to 0x8C196340
	mov.l @(loc_8c1849E8,pc),r0 ; r0 set to 0x8C195FA0
	mov.l @(loc_8c1849E4,pc),r4 ; r4 set to 0x8C196198
	mov.l @(loc_8c1849F0,pc),r3 ; r3 set to 0x8C196338
	mov.l r4,@r0 ; r0 ??
	mov.l r4,@r7 ; r7 ??
	mov.l r6,@r2 ; r2 ??
	bra loc_8c1849B6
	mov.l r5,@r3

loc_8c1849A6:
	mov.l @(loc_8c1849EC,pc),r2 ; r2 set to 0x8C196340
	mov.l @(loc_8c1849F0,pc),r3 ; r3 set to 0x8C196338
	mov.l @(loc_8c1849F4,pc),r4 ; r4 set to 0x8C196030
	mov.l @(loc_8c1849E8,pc),r0 ; r0 set to 0x8C195FA0
	mov.l r4,@r0 ; r0 ??
	mov.l r4,@r7
	mov.l r6,@r2 ; r2 ??? bc r6 is ???
	mov.l r6,@r3 ; r3 ??? bc r6 is ???

loc_8c1849B6:
	mov.l @(loc_8c1849F8,pc),r4 ; r4 set to 0x8C196000, r4 set to 0x8C196000
	bra loc_8c1849C2
	stc vbr, r14

loc_8c1849BC:
	mov.l @r4+,r2
	mov.l r2,@r14
	add 0x04,r14

loc_8c1849C2:
	mov.l @(loc_8c1849FC,pc),r3 ; r3 set to 0x8C196030, r3 set to 0x8C196030
	cmp/hi r3,r4
	bf loc_8c1849BC
	stc vbr, r1
	stc vbr, r4
	mov r14,r5
	sub r1,r5
	bra loc_8c184A00
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1849D4:
	#data 0xFF0F
loc_8c1849D6:
	#data 0x0800
	#align4

loc_8c1849D8:
	#data 0xFF00001C
loc_8c1849DC:
	#data bank19.loc_8c195FFC
loc_8c1849E0:
	#data 0x80000000
loc_8c1849E4:
	#data bank19.loc_8c196198
loc_8c1849E8:
	#data bank19.loc_8c195FA0
loc_8c1849EC:
	#data bank19.loc_8c196340
loc_8c1849F0:
	#data bank19.loc_8c196338
loc_8c1849F4:
	#data bank19.loc_8c196030
loc_8c1849F8:
	#data bank19.loc_8c196000
loc_8c1849FC:
	#data bank19.loc_8c196030

;==============================================
loc_8c184A00:
	shlr2 r5
	shlr2 r5
	shlr r5
	add 0x01,r5

loc_8c184A08:
	ocbp @r4
	dt r5
	bf/s loc_8c184A08
	add 0x20,r4
	stc vbr, r14
	mov.l @(loc_8c184A40,pc),r4 ; r4 set to 0x8C195F6C, r4 set to 0x8C195F6C
	mov.w @(loc_8c184A38,pc),r3 ; r3 set to 0x100, r3 set to 0x100
	bra loc_8c184A20
	add r3,r14

loc_8c184A1A:
	mov.l @r4+,r2
	mov.l r2,@r14
	add 0x04,r14

loc_8c184A20:
	mov.l @(loc_8c184A44,pc),r3 ; r3 set to 0x8C195FA4, r3 set to 0x8C195FA4
	cmp/hi r3,r4
	bf loc_8c184A1A
	stc vbr, r1
	stc vbr, r4
	mov.w @(loc_8c184A3C,pc),r3 ; r3 set to 0x400, r3 set to 0x400
	mov.w @(loc_8c184A3A,pc),r5 ; r5 set to 0xFF00, r5 set to 0xFF00
	sub r1,r14
	add r3,r4
	add r14,r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	bra loc_8c184A48
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184A38:
	#data 0x0100
loc_8c184A3A:
	#data 0xFF00
loc_8c184A3C:
	#data 0x0400
	#align4

loc_8c184A40:
	#data bank19.loc_8c195F6C
loc_8c184A44:
	#data bank19.loc_8c195FA4

;==============================================
loc_8c184A48:
	shlr2 r5
	shlr2 r5
	shlr r5
	add 0x01,r5

loc_8c184A50:
	ocbp @r4
	dt r5
	bf/s loc_8c184A50
	add 0x20,r4
	stc vbr, r14
	mov.l @(loc_8c184A88,pc),r4 ; r4 set to 0x8C195F6C, r4 set to 0x8C195F6C
	mov.w @(loc_8c184A80,pc),r3 ; r3 set to 0x400, r3 set to 0x400
	bra loc_8c184A68
	add r3,r14

loc_8c184A62:
	mov.l @r4+,r2
	mov.l r2,@r14
	add 0x04,r14

loc_8c184A68:
	mov.l @(loc_8c184A8C,pc),r3 ; r3 set to 0x8C195FA4, r3 set to 0x8C195FA4
	cmp/hi r3,r4
	bf loc_8c184A62
	stc vbr, r1
	stc vbr, r4
	mov.w @(loc_8c184A84,pc),r3 ; r3 set to 0x1000, r3 set to 0x1000
	mov.w @(loc_8c184A82,pc),r5 ; r5 set to 0xFC00, r5 set to 0xFC00
	sub r1,r14
	add r3,r4
	add r14,r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	bra loc_8c184A90
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184A80:
	#data 0x0400
loc_8c184A82:
	#data 0xFC00
loc_8c184A84:
	#data 0x1000
	#align4

loc_8c184A88:
	#data bank19.loc_8c195F6C
loc_8c184A8C:
	#data bank19.loc_8c195FA4

;==============================================
loc_8c184A90:
	shlr2 r5
	shlr2 r5
	shlr r5
	add 0x01,r5

loc_8c184A98:
	ocbp @r4
	dt r5
	bf/s loc_8c184A98
	add 0x20,r4
	stc vbr, r14
	mov.l @(loc_8c184AD0,pc),r4 ; r4 set to 0x8C195FA4, r4 set to 0x8C195FA4
	mov.w @(loc_8c184AC8,pc),r3 ; r3 set to 0x600, r3 set to 0x600
	bra loc_8c184AB0
	add r3,r14

loc_8c184AAA:
	mov.l @r4+,r2
	mov.l r2,@r14
	add 0x04,r14

loc_8c184AB0:
	mov.l @(loc_8c184AD4,pc),r3 ; r3 set to 0x8C196000, r3 set to 0x8C196000
	cmp/hi r3,r4
	bf loc_8c184AAA
	stc vbr, r1
	stc vbr, r4
	mov.w @(loc_8c184ACC,pc),r3 ; r3 set to 0x1800, r3 set to 0x1800
	mov.w @(loc_8c184ACA,pc),r5 ; r5 set to 0xFA00, r5 set to 0xFA00
	sub r1,r14
	add r3,r4
	add r14,r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	bra loc_8c184AD8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184AC8:
	#data 0x0600
loc_8c184ACA:
	#data 0xFA00
loc_8c184ACC:
	#data 0x1800
	#align4

loc_8c184AD0:
	#data bank19.loc_8c195FA4
loc_8c184AD4:
	#data bank19.loc_8c196000

;==============================================
loc_8c184ad8:
	shlr2 r5
	shlr2 r5
	shlr r5
	add 0x01,r5

loc_8c184ae0:
	ocbp @r4
	dt r5
	bf/s loc_8c184ae0
	add 0x20,r4
	mov.l @r15,r0
	stc sr, r3
	mov.w @(loc_8C184B1C,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 
	mov.w @(loc_8C184B20,pc),r5
	mov.w @(loc_8C184B22,pc),r4
	mov.l @(loc_8c184b24,pc),r7
	mov.w @(loc_8C184B1E,pc),r6

loc_8c184b02:
	mov r4,r2
	shar r2
	stc vbr, r3
	shar r2
	shar r2
	add r2,r3
	add 0x20,r4
	add r5,r3
	cmp/ge r6,r4
	mov.l r7,@r3
	bf loc_8c184b02
	bra loc_8c184b28
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C184B1C:
	#data 0xFF0F
loc_8C184B1E:
	#data 0x0620
loc_8C184B20:
	#data 0x0200
loc_8C184B22:
	#data 0xFE40
	#align4

loc_8c184b24:
	#data bank19.loc_8c195e74

;==============================================
loc_8c184b28:
	stc sr, r0
	mov.l @(loc_8C184B34,pc),r1
	and r1,r0
	ldc r0, sr 
	bra loc_8c184b38
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C184B34:
	#data 0xEFFFFFFF

;==============================================
loc_8c184b38:
	add 0x04,r15
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8c184B40:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c184C70,pc),r3 ; r3 set to 0xFF000010
	mov.l @r3,r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bf loc_8c184BDA
	mov.l @(loc_8c184C84,pc),r1 ; r1 set to 0xE0000000
	mov 0x00,r8 ; r8 set to 0x00
	mov.l @(loc_8c184C7C,pc),r13 ; r13 set to 0x100000
	mov r8,r14 ; r14 set to 0x00
	mov.l @(loc_8c184C80,pc),r11 ; r11 set to 0xC000000
	mov.l @(loc_8c184C74,pc),r9 ; r9 set to 0xD000000
	mov.l @(loc_8c184C78,pc),r12 ; r12 set to 0x8C196350
	mov.l r1,@r15
	bra loc_8c184B8E
	mov r8,r10

loc_8c184B70:
	mov.l @(loc_8c184C88,pc),r2 ; r2 set to 0x8C339AFC
	mov r10,r3
	shll2 r3
	mov r11,r4
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l r2,@-r15
	mov 0x04,r6 ; r6 set to 0x04
	mov.l @(0x04,r15),r5
	add r14,r5
	jsr @r12
	add r14,r4
	mov.l @r15+,r1
	add 0x01,r10
	add r13,r14
	mov.l r0,@r1

loc_8c184B8E:
	mov r11,r3
	add r14,r3
	cmp/hs r9,r3
	bf loc_8c184B70
	mov.l @(loc_8c184C94,pc),r3 ; r3 set to 0xE1000000, r3 set to 0xE1000000
	mov r8,r14
	mov.l @(loc_8c184C8C,pc),r9 ; r9 set to 0x10800000, r9 set to 0x10800000
	mov.l @(loc_8c184C90,pc),r11 ; r11 set to 0x10000000, r11 set to 0x10000000
	mov.l r3,@r15
	bra loc_8c184BC2
	mov r8,r10
	
loc_8c184BA4:
	mov.l @(0xF0,PC),r3
	mov r10,r2
	shll2 r2
	mov r11,r4
	add r2,r3
	mov.l r3,@-r15
	mov 0x04,r6
	mov.l @(0x4,r15),r5
	add r14,r5
	jsr @r12
	add r14,r4
	mov.l @r15+,r1
	add 0x01,r10
	add r13,r14
	mov.l r0,@r1

loc_8c184bc2:
	mov r11,r3
	add r14,r3
	cmp/hs r9,r3
	bf loc_8c184ba4
	mov.l @(loc_8c184c9c,pc),r3
	mov 0x04,r6
	mov.l @(loc_8C184CA0,pc),r5
	mov.l r3,@-r15
	jsr @r12
	mov r9,r4
	mov.l @r15+,r2
	mov.l r0,@r2

loc_8c184BDA:
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
loc_8c184BEE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c184C88,pc),r4 ; r4 set to 0x8C339AFC
	mov.l @(loc_8c184CA4,pc),r13 ; r13 set to 0x8C1963E2
	mov r4,r12 ; r12 set to 0x8C339AFC
	mov r4,r14 ; r14 set to 0x8C339AFC
	bra loc_8c184C08
	add 0x40,r12

loc_8c184C04:
	jsr @r13
	mov.l @r14+,r4

loc_8c184C08:
	cmp/hs r12,r14
	bf loc_8c184C04
	mov.l @(loc_8c184C98,pc),r4 ; r4 set to 0x8C339B3C, r4 set to 0x8C339B3C
	mov r4,r12 ; r12 set to 0x8C339B3C, r12 set to 0x8C339B3C
	mov r4,r14 ; r14 set to 0x8C339B3C, r14 set to 0x8C339B3C
	bra loc_8c184C1A
	add 0x20,r12

loc_8c184C16:
	jsr @r13
	mov.l @r14+,r4

loc_8c184C1A:
	cmp/hs r12,r14
	bf loc_8c184C16
	mov.l @(loc_8c184C9C,pc),r3 ; r3 set to 0x8C339B5C, r3 set to 0x8C339B5C
	mov r3,r4 ; r4 set to 0x8C339B5C, r4 set to 0x8C339B5C
	mov.l r3,@r15
	jsr @r13
	mov.l @r4,r4 ; r4 ??, r4 ??
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;Unused?
loc_8c184c34:
	mov r4,r0
	shlr16 r0
	shlr8 r0
	mov r4,r5
	and 0x1F,r0
	mov 0x0D,r2
	cmp/hs r2,r0
	shll8 r5
	bt/s loc_8c184c4e
	shlr8 r5
	mov.l @(0x38,PC),r4
	bra loc_8c184c50
	nop 

loc_8c184c4e:
	mov.l @(0x44,PC),r4

loc_8c184c50:
	or r5,r4
	rts 
	mov r4,r0

;==============================================
;Unused?
loc_8c184c56:
	mov.l @(0x3C,PC),r2
	mov r4,r5
	shll8 r5
	cmp/hs r2,r4
	bt/s loc_8c184c68
	shlr8 r5
	mov.l @(0x44,PC),r4
	bra loc_8c184c6a
	nop 

loc_8c184c68:
	mov.l @(0x24,PC),r4

loc_8c184c6a:
	or r5,r4
	rts 
	mov r4,r0

;==============================================
	#align4
loc_8c184C70:
	#data 0xFF000010
loc_8c184C74:
	#data 0x0D000000
loc_8c184C78:
	#data bank19.loc_8c196350
loc_8c184C7C:
	#data 0x00100000
loc_8c184C80:
	#data 0x0C000000
loc_8c184C84:
	#data 0xE0000000
loc_8c184C88:
	#data 0x8C339AFC
loc_8c184C8C:
	#data 0x10800000
loc_8c184C90:
	#data 0x10000000
loc_8c184C94:
	#data 0xE1000000
loc_8c184C98:
	#data 0x8C339B3C
loc_8c184C9C:
	#data 0x8C339B5C
loc_8c184ca0:
	#data 0xE1800000
loc_8c184CA4:
	#data bank19.loc_8c1963E2
loc_8c184CA8:
	#data 0x8C000000

;==============================================
loc_8c184CAC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xC4,PC),r3
	mov r5,r9
	mov.w @(0xBA,PC),r1
	mov r4,r10
	mov.l r6,@r15
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf/s loc_8c184ce4
	mov r7,r14
	stc sr,r0
	mov.w @(0xAA,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0x4,r15)
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr

loc_8c184CE4:
	mov.l @(0x24,r15),r0
	mov 0x01,r5
	mov 0xFF,r4
	cmp/eq 0x00,r0
	bt/s loc_8c184cfc
	mov 0x00,r11
	cmp/eq 0x01,r0
	bt loc_8c184d00
	cmp/eq 0x02,r0
	bt loc_8c184d04
	bra loc_8c184d06
	nop 

loc_8c184CFC:
	bra loc_8c184d06
	mov r11,r12

loc_8c184D00:
	bra loc_8c184d06
	mov r5,r12

loc_8c184D04:
	mov r4,r12

loc_8c184D06:
	mov.l @(0x28,r15),r0
	cmp/eq 0x00,r0
	bt loc_8c184d18
	cmp/eq 0x01,r0
	bt loc_8c184d1c
	cmp/eq 0x02,r0
	bt loc_8c184d20
	bra loc_8c184d22
	nop 

loc_8c184D18:
	bra loc_8c184d22
	mov r11,r13

loc_8c184d1c:
	bra loc_8c184d22
	mov r5,r13

loc_8c184d20:
	mov r4,r13

loc_8c184d22:
	mov.l @(0x64,PC),r2
	jsr @r2
	nop 
	mov.l @(0x60,PC),r3
	jsr @r3
	nop 
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bt loc_8c184d40
	cmp/eq 0x02,r0
	bt loc_8c184d5c
	cmp/eq 0x04,r0
	bt loc_8c184d90
	bra loc_8c184dae
	nop 

loc_8c184d40:
	cmp/pl r14
	mov r10,r5
	mov r9,r6
	bf/s loc_8c184dae
	mov r11,r4

loc_8c184d4a:
	mov.b @r5,r2
	add 0x01,r4
	cmp/ge r14,r4
	add r12,r5
	mov.b r2,@r6
	bf/s loc_8c184d4a
	add r13,r6
	bra loc_8c184dae
	nop 

loc_8c184d5c:
	mov r12,r7
	shll r7
	shll r13
	cmp/pl r14
	mov r10,r6
	mov r9,r4
	bf/s loc_8c184dae
	mov r11,r5

loc_8c184d6c:
	mov.w @r6,r2
	add 0x01,r5
	cmp/ge r14,r5
	add r7,r6
	mov.w r2,@r4
	bf/s loc_8c184d6c
	add r13,r4
	bra loc_8c184dae
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184d7e:
	#data 0x00D4
loc_8c184d80:
	#data 0xFF0F
	#align4

loc_8c184D84:
	#data bank1c.loc_8c1c993C
loc_8c184D88:
	#data bank19.loc_8c196664
loc_8c184D8C:
	#data bank19.loc_8c1966A8

;==============================================
loc_8c184D90:
	mov r12,r7
	shll2 r7
	cmp/pl r14
	mov r9,r4
	mov r10,r5
	mov r11,r6
	bf/s loc_8c184dae
	shll2 r13

loc_8c184DA0:
	mov.l @r5,r2
	add 0x01,r6
	cmp/ge r14,r6
	add r7,r5
	mov.l r2,@r4
	bf/s loc_8c184da0
	add r13,r4

loc_8c184DAE:
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x38,PC),r3
	mov.w @(0x2C,PC),r1
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c184dd2
	mov.l @(0x4,r15),r0
	stc sr,r2
	mov.w @(0x20,PC),r3
	and 0x0F,r0
	shll2 r0
	and r3,r2
	shll2 r0
	or r2,r0
	ldc r0,sr

loc_8c184DD2:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184de6:
	#data 0x00D4
loc_8c184de8:
	#data 0xFF0F
	#align4

loc_8c184DEC:
	#data bank19.loc_8c1965E8
loc_8c184DF0:
	#data bank1c.loc_8c1c993C

;==============================================
loc_8c184DF4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c184F9C,pc),r2 ; r2 set to 0x8C1297C4
	mov.l @(loc_8c184F98,pc),r3 ; r3 set to 0x8C1C9940
	jsr @r2
	mov.l @r3,r4
	mov.l @(loc_8c184FA4,pc),r2 ; r2 set to 0x8C345E3B
	mov 0xE0,r3 ; r3 set to 0xFFFFFFE0
	mov.w @(loc_8c184F80,pc),r6 ; r6 set to 0x114
	mov.l @(loc_8c184FA0,pc),r14 ; r14 set to 0x8C1C993C
	and r3,r2 ; r2 ??
	mov r6,r5 ; r5 set to 0x114
	mov.l @(loc_8c184FA8,pc),r1 ; r1 set to 0x8C129728
	add 0xEB,r5 ; r5 set to 0xFF
	mov.l r2,@r14 ; r14 ??? bc r2 is ???
	jsr @r1
	mov r2,r4
	mov.l @(loc_8c184FAC,pc),r2 ; r2 set to 0xA05F7800
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @r14,r3 ; r3 ??? bc r14 is ???
	mov 0x04,r10 ; r10 set to 0x04
	mov.w @(loc_8c184F82,pc),r0 ; r0 set to 0xD4
	mov r13,r11 ; r11 set to 0x00
	mov.l r2,@r3
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @r14,r3
	mov 0x34,r9 ; r9 set to 0x34
	mov 0x03,r8 ; r8 set to 0x03
	mov.l r2,@(r0,r3)
	mov.l @r14,r3
	mov.w @(loc_8c184F84,pc),r0 ; r0 set to 0xD8
	mov.l r13,@(r0,r3)

loc_8c184E42:
	mul.l r9,r11 ; r11 ??
	mov.l @r14,r2 ; r2 ??? bc r14 is ???
	add 0x04,r2
	sts macl,r12
	add r12,r2
	mov.l r11,@r2
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x28,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x2C,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x30,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x04,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x08,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x0C,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l @(loc_8c184FB0,pc),r3 ; r3 set to 0x8C19651C, r3 set to 0x8C19651C
	mov.l r13,@(0x10,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x14,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r8,@(0x18,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x1C,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x20,r2)
	mov.l @r14,r4
	add 0x04,r4
	jsr @r3
	add r12,r4
	mov.w @(loc_8c184F86,pc),r3 ; r3 set to 0xDC, r3 set to 0xDC
	mov r11,r4
	mov.l @r14,r0 ; r0 ??? bc r14 is ???
	shll2 r4
	add 0x01,r11
	add r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
	cmp/ge r10,r11
	add r4,r3
	mov.l r13,@r3
	mov.w @(loc_8c184F88,pc),r3 ; r3 set to 0xFC, r3 set to 0xFC
	mov.l @r14,r0
	add r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
	add r4,r3
	mov.l r13,@r3
	mov.w @(loc_8c184F8A,pc),r3 ; r3 set to 0xEC, r3 set to 0xEC
	mov.l @r14,r0
	add r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
	add r3,r4
	bf/s loc_8c184E42
	mov.l r13,@r4
	mov.w @(loc_8c184F8C,pc),r0 ; r0 set to 0x10C, r0 set to 0x10C
	mov.l @r14,r3
	mov.l @(loc_8c184FB8,pc),r4 ; r4 set to 0xC000000, r4 set to 0xC000000
	mov.l r13,@(r0,r3)
	add 0x04,r0 ; r0 set to 0x110, r0 set to 0x110
	mov.l @r14,r3
	mov.l @(loc_8c184FB4,pc),r5 ; r5 set to 0xCFFFFFF, r5 set to 0xCFFFFFF
	mov.l r13,@(r0,r3)
	mov.l @(loc_8c184FBC,pc),r3 ; r3 set to 0x8C19662C, r3 set to 0x8C19662C
	jsr @r3
	nop
	mov.w @(loc_8c184F82,pc),r0 ; r0 set to 0xD4, r0 set to 0xD4
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.l @r14,r2
	mov 0x60,r6 ; r6 set to 0x60, r6 set to 0x60
	mov.w @(loc_8c184F8E,pc),r4 ; r4 set to 0xA60, r4 set to 0xA60
	mov.l r3,@(r0,r2)
	mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.l @r14,r2
	mov.l @(loc_8c184FC4,pc),r12 ; r12 set to 0x8C1844D4, r12 set to 0x8C1844D4
	add 0x04,r2
	mov.l @(loc_8c184FC0,pc),r11 ; r11 set to 0x8C196494, r11 set to 0x8C196494
	add r2,r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	mov.l r2,@r15
	mov.l r3,@-r15
	mov.l @(0x04,r15),r7
	jsr @r12
	mov r11,r5 ; r5 set to 0x8C196494, r5 set to 0x8C196494
	mov.l @r15+,r1 ; r1 ??? bc r15 is ???
	mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.w @(loc_8c184F90,pc),r4 ; r4 set to 0xA80, r4 set to 0xA80
	mov 0x60,r6 ; r6 set to 0x60, r6 set to 0x60
	mov.l r0,@r1
	mov.l @r14,r2
	add 0x38,r2
	add r2,r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	mov.l r2,@r15
	mov.l r3,@-r15
	mov.l @(0x04,r15),r7
	jsr @r12
	mov r11,r5 ; r5 set to 0x8C196494, r5 set to 0x8C196494
	mov.l @r15+,r1
	mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.w @(loc_8c184F92,pc),r4 ; r4 set to 0xAA0, r4 set to 0xAA0
	mov 0x60,r6 ; r6 set to 0x60, r6 set to 0x60
	mov.l r0,@r1
	mov.l @r14,r2
	add 0x6C,r2
	add r2,r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	mov.l r2,@r15
	mov.l r3,@-r15
	mov.l @(0x04,r15),r7
	jsr @r12
	mov r11,r5 ; r5 set to 0x8C196494, r5 set to 0x8C196494
	mov.l @r15+,r1
	mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.w @(loc_8c184F94,pc),r2 ; r2 set to 0x9C, r2 set to 0x9C
	mov 0x60,r6 ; r6 set to 0x60, r6 set to 0x60
	mov.l r0,@r1
	mov.l @r14,r1
	mov.w @(loc_8c184F96,pc),r4 ; r4 set to 0xAC0, r4 set to 0xAC0
	add 0x04,r1
	add r2,r1
	add r1,r3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	mov.l r1,@r15
	mov.l r3,@-r15
	mov.l @(0x04,r15),r7
	jsr @r12
	mov r11,r5 ; r5 set to 0x8C196494, r5 set to 0x8C196494
	mov.l @r15+,r2 ; r2 ??? bc r15 is ???, r2 ??? bc r15 is ???
	mov.l @(loc_8c184FC8,pc),r3 ; r3 set to 0x8C345F50, r3 set to 0x8C345F50
	mov.l r0,@r2
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	mov.l r13,@r3 ; r3 ??? bc r13 is ???, r3 ??
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8 ; r8 ??? bc r15 is ???
	mov.l @r15+,r9 ; r9 ??? bc r15 is ???
	mov.l @r15+,r10 ; r10 ??? bc r15 is ???
	mov.l @r15+,r11 ; r11 ??? bc r15 is ???, r11 ??? bc r15 is ???
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???, r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c184F80:
	#data 0x0114
loc_8c184F82:
	#data 0x00D4
loc_8c184F84:
	#data 0x00D8
loc_8c184F86:
	#data 0x00DC
loc_8c184F88:
	#data 0x00FC
loc_8c184F8A:
	#data 0x00EC
loc_8c184F8C:
	#data 0x010C
loc_8c184F8E:
	#data 0x0A60
loc_8c184F90:
	#data 0x0A80
loc_8c184F92:
	#data 0x0AA0
loc_8c184F94:
	#data 0x009C
loc_8c184F96:
	#data 0x0AC0
	#align4

loc_8c184F98:
	#data bank1c.loc_8c1c9940
loc_8c184F9C:
	#data bank12.loc_8c1297C4
loc_8c184FA0:
	#data bank1c.loc_8c1c993C
loc_8c184FA4:
	#data 0x8C345E3B
loc_8c184FA8:
	#data bank12.loc_8c129728
loc_8c184FAC:
	#data 0xA05F7800
loc_8c184FB0:
	#data bank19.loc_8c19651C
loc_8c184FB4:
	#data 0x0CFFFFFF
loc_8c184FB8:
	#data 0x0C000000
loc_8c184FBC:
	#data bank19.loc_8c19662C
loc_8c184FC0:
	#data bank19.loc_8c196494
loc_8c184FC4:
	#data loc_8c1844D4
loc_8c184FC8:
	#data 0x8C345F50

;==============================================
loc_8c184FCC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xC0,PC),r3
	mov r4,r8
	mov.w @(0xB6,PC),r1
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf/s loc_8c185006
	mov r7,r13
	stc sr,r0
	mov.w @(0xA6,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0xC,r15)
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr

loc_8c185006:
	mov.l @(0x30,r15),r0
	mov 0x01,r5
	cmp/eq 0x00,r0
	bt/s loc_8c18501c
	mov 0xFF,r4
	cmp/eq 0x01,r0
	bt loc_8c185020
	cmp/eq 0x02,r0
	bt loc_8c185024
	bra loc_8c185026
	nop 

loc_8c18501c:
	bra loc_8c185026
	mov 0x00,r10

loc_8c185020:
	bra loc_8c185026
	mov r5,r10

loc_8c185024:
	mov r4,r10

loc_8c185026:
	mov.l @(0x34,r15),r0
	cmp/eq 0x00,r0
	bt loc_8c185038
	cmp/eq 0x01,r0
	bt loc_8c18503c
	cmp/eq 0x02,r0
	bt loc_8c185040
	bra loc_8c185042
	nop 

loc_8c185038:
	bra loc_8c185042
	mov 0x00,r9

loc_8c18503c:
	bra loc_8c185042
	mov r5,r9

loc_8c185040:
	mov r4,r9

loc_8c185042:
	mov.l @(0x60,PC),r2
	jsr @r2
	nop 
	mov.l @(0x5C,PC),r12
	jsr @r12
	nop 
	mov.l @(0x4,r15),r0
	mov.l @(0x58,PC),r11
	cmp/eq 0x01,r0
	bt/s loc_8c185064
	mov 0x07,r14
	cmp/eq 0x02,r0
	bt loc_8c1850b0
	cmp/eq 0x04,r0
	bt loc_8c1850ec
	bra loc_8c18512a
	nop 

loc_8c185064:
	mov.l @r15,r3
	cmp/pl r13
	mov.l r3,@(0x4,r15)
	mov.l r8,@r15
	bf/s loc_8c18512a
	mov 0x00,r8

loc_8c185070:
	mov r8,r2
	tst r14,r2
	bf loc_8c18507e
	jsr @r12
	nop 
	jsr @r11
	nop 

loc_8c18507e:
	mov.l @r15,r3
	add 0x01,r8
	mov.l @(0x4,r15),r1
	cmp/ge r13,r8
	mov.b @r3,r2
	mov.b r2,@r1
	mov.l @r15,r3
	add r10,r3
	mov.l r3,@r15
	mov.l @(0x4,r15),r2
	add r9,r2
	bf/s loc_8c185070
	mov.l r2,@(0x4,r15)
	bra loc_8c18512a
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18509c:
	#data 0x00D4
loc_8c18509e:
	#data 0xFF0F
	#align4

loc_8c1850A0:
	#data bank1c.loc_8c1c993C
loc_8c1850A4:
	#data bank19.loc_8c196664
loc_8c1850A8:
	#data bank19.loc_8c1966A8
loc_8c1850AC:
	#data bank19.loc_8c196458

;==============================================
loc_8c1850B0:
	mov.l @r15,r2
	shll r10
	shll r9
	cmp/pl r13
	mov.l r2,@(0x4,r15)
	mov.l r8,@r15
	bf/s loc_8c18512a
	mov 0x00,r8

loc_8c1850c0:
	mov r8,r2
	tst r14,r2
	bf loc_8c1850ce
	jsr @r12
	nop 
	jsr @r11
	nop 

loc_8c1850ce:
	mov.l @r15,r3
	add 0x01,r8
	mov.l @(0x4,r15),r1
	cmp/ge r13,r8
	mov.w @r3,r2
	mov.w r2,@r1
	mov.l @r15,r3
	add r10,r3
	mov.l r3,@r15
	mov.l @(0x4,r15),r2
	add r9,r2
	bf/s loc_8c1850c0
	mov.l r2,@(0x4,r15)
	bra loc_8c18512a
	nop 

loc_8c1850ec:
	shll2 r10
	mov.l @r15,r2
	cmp/pl r13
	mov.l r2,@(0x4,r15)
	mov.l r8,@r15
	mov 0x00,r8
	mov.l r10,@(0x8,r15)
	mov r9,r10
	bf/s loc_8c18512a
	shll2 r10

loc_8c185100:
	mov r8,r2
	tst r14,r2
	bf loc_8c18510e
	jsr @r12
	nop 
	jsr @r11
	nop 

loc_8c18510e:
	mov.l @r15,r3
	add 0x01,r8
	mov.l @(0x4,r15),r1
	cmp/ge r13,r8
	mov.l @r3,r2
	mov.l r2,@r1
	mov.l @r15,r1
	mov.l @(0x8,r15),r3
	add r3,r1
	mov.l r1,@r15
	mov.l @(0x4,r15),r2
	add r10,r2
	bf/s loc_8c185100
	mov.l r2,@(0x4,r15)

loc_8c18512a:
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x38,PC),r3
	mov.w @(0x2E,PC),r1
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c18514e
	mov.l @(0xC,r15),r0
	stc sr,r2
	mov.w @(0x22,PC),r3
	and 0x0F,r0
	shll2 r0
	and r3,r2
	shll2 r0
	or r2,r0
	ldc r0,sr

loc_8c18514e:
	mov 0x00,r0
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
loc_8c185164:
	#data 0x00D4
loc_8c185166:
	#data 0xFF0F
	#align4

loc_8c185168:
	#data bank19.loc_8c1965E8
loc_8c18516C:
	#data bank1c.loc_8c1c993C

;==============================================
loc_8c185170:
	mov.l @(loc_8c18528C,pc),r3 ; r3 set to 0x8C339E38
	mov.l @r3,r2
	add 0x01,r2
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	bra loc_8c1854D0
	nop
	
;==============================================
loc_8c18517C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	stc sr,r0
	mov.l r12,@-r15
	mov.w @(0xF8,PC),r3
	mov.l r11,@-r15
	sts.l pr,@-r15
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0xFC,PC),r4
	mov.l @r4,r2
	tst r2,r2
	bf loc_8c1851cc
	mov.l @(0xF8,PC),r3
	mov.l @r3,r2
	add 0x01,r2
	mov.l r2,@r3
	bsr loc_8c185780
	nop 
	bsr loc_8c1851e4
	nop 
	mov.w @(0xD6,PC),r11
	mov.l @(0xEC,PC),r5
	add r5,r11
	mov r5,r14
	mov r5,r4
	mov r5,r13

loc_8c1851b4:
	mov.l @r14,r3
	tst r3,r3
	bt loc_8c1851c0
	mov.l @r13,r12
	jsr @r12
	nop 

loc_8c1851c0:
	add 0x04,r14
	cmp/hs r11,r14
	bf/s loc_8c1851b4
	add 0x04,r13
	bra loc_8c1851d8
	nop 

loc_8c1851cc:
	mov 0x00,r3
	mov.l r3,@r4
	mov.l @(0xC8,PC),r4
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4

loc_8c1851d8:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1851E4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xB0,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c18524c
	mov r4,r13
	mov.l @(0xB0,PC),r4
	mov.l @(0xA8,PC),r3
	add 0xFF,r13
	mov.l @(0xAC,PC),r5
	mov r13,r2
	and r3,r4
	mov.l @(0xAC,PC),r1
	shll16 r2
	mov.w @(0x7A,PC),r0
	add 0x20,r4
	or r1,r2
	or r4,r5
	mov.l r2,@r5
	mov 0x01,r14
	mov.l @(0xA0,PC),r5
	mov.l @(0x78,PC),r2
	mov.l r14,@r2
	mov.l @r5,r3
	mov.l @(r0,r3),r3
	mov.l r4,@(0x4,r3)
	mov.l @r5,r3
	mov.l @(r0,r3),r1
	mov.l r14,@(0x18,r1)
	mov r13,r1
	mov r13,r4
	mov.l r14,@r15
	mov 0x00,r3
	shll r4
	mov.l r3,@-r15
	shll2 r1
	mov.l r3,@-r15
	add r1,r4
	mov.l @(0x80,PC),r1
	mov r15,r6
	mov r14,r7
	add 0x08,r6
	jsr @r1
	mov 0x09,r5
	add 0x08,r15
	mov.l @(0x58,PC),r2
	mov.l @(0x74,PC),r1
	mov.l @r2,r3
	mov.l r3,@r1

loc_8c18524c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c185256:
	mov.l @(loc_8c1852C0,pc),r3 ; r3 set to 0xA05F6900
	mov.w @(loc_8c185286,pc),r0 ; r0 set to 0x1000
	rts
	mov.l r0,@r3

;==============================================
loc_8c18525E:
	mov.l @(loc_8c1852C4,pc),r4 ; r4 set to 0x8C339E30
	mov.l @(loc_8c1852C8,pc),r1 ; r1 set to 0x8C33A0B4
	mov.l @(0x18,r4),r3
	add 0x01,r3
	mov.l r3,@(0x18,r4)  ; r4 ??? bc r3 is ???
	mov r4,r3
	mov.l @r1,r2
	add 0x34,r3
	shll r2
	add r3,r2
	mov.w @(loc_8c185288,pc),r3 ; r3 set to 0x2000
	mov.w @r2,r0
	add 0x01,r0
	mov.w r0,@r2
	mov.l @(loc_8c1852C0,pc),r2 ; r2 set to 0xA05F6900
	rts
	mov.l r3,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185280:
	#data 0xFF0F
loc_8c185282:
	#data 0x0080
loc_8c185284:
	#data 0x10F4
loc_8c185286:
	#data 0x1000
loc_8c185288:
	#data 0x2000
	#align4

loc_8c18528C:
	#data 0x8C339E38
loc_8c185290:
	#data 0x8C33A0E0
loc_8c185294:
	#data 0x8C339E3C
loc_8c185298:
	#data 0x8C339B70
loc_8c18529c:
	#data 0x8C33A0E4
loc_8c1852a0:
	#data 0x8C33A0C0
loc_8c1852a4:
	#data 0x1FFFFFE0
loc_8c1852a8:
	#data 0x8C33A0E8
loc_8c1852ac:
	#data 0xA0000000
loc_8c1852b0:
	#data 0x80000200
loc_8c1852b4:
	#data 0x8C347150
loc_8c1852B8:
	#data bank19.loc_8c1975B0
loc_8c1852Bc:
	#data 0x8C33A0C8
loc_8c1852C0:
	#data 0xA05F6900
loc_8c1852C4:
	#data 0x8C339E30
loc_8c1852C8:
	#data 0x8C33A0B4

;==============================================
loc_8c1852CC:
	mov.l @(loc_8c1853C0,pc),r3 ; r3 set to 0x8C347150
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c1853BC,pc),r5 ; r5 set to 0x8C339BF0
	mov 0x18,r7 ; r7 set to 0x18
	mov.l @r3,r4
	add 0x28,r4

loc_8c1852D8:
	mov.b @r4,r2
	add 0x01,r6 ; r6 set to 0x01
	cmp/ge r7,r6
	mov.b r2,@r5 ; r5 ??? bc r2 is ???
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r5)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r5)
	mov.b @(0x03,r4),r0
	mov.b r0,@(0x03,r5)
	mov.l @(0x10,r4),r3 ; r3 ??? bc r4 is ???
	mov.l r3,@(0x08,r5)
	mov.b @(0x08,r4),r0
	mov.b r0,@(0x04,r5)
	mov.b @(0x09,r4),r0
	mov.b r0,@(0x05,r5)
	mov.b @(0x0A,r4),r0
	mov.b r0,@(0x06,r5)
	mov.b @(0x0B,r4),r0
	mov.b r0,@(0x07,r5)
	mov.l @(0x14,r4),r3
	mov.l r3,@(0x0C,r5)
	add 0x18,r5
	bf/s loc_8c1852D8
	add 0x2C,r4
	rts
	nop

;==============================================
loc_8c18530E:
	mov.l r14,@-r15
	mov 0x00,r7 ; r7 set to 0x00
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1853D0,pc),r5 ; r5 set to 0x8C185170
	mov.w @(loc_8c1853B2,pc),r4 ; r4 set to 0x900
	mov.l @(loc_8c1853CC,pc),r14 ; r14 set to 0x8C339B60
	mov.l @(loc_8c1853C4,pc),r12 ; r12 set to 0x8C1C58C8
	mov.l @(loc_8c1853C8,pc),r13 ; r13 set to 0x8C1844D4
	jsr @r13
	mov.l @r12,r6
	mov.l @(loc_8c1853D4,pc),r5 ; r5 set to 0x8C18517C
	mov 0x00,r7 ; r7 set to 0x00
	mov.w @(loc_8c1853B4,pc),r4 ; r4 set to 0xA00
	mov.l r0,@r14 ; r14 ??? bc r0 is ???
	jsr @r13
	mov.l @(0x04,r12),r6
	mov.l @(loc_8c1853D8,pc),r5 ; r5 set to 0x8C185256
	mov 0x00,r7 ; r7 set to 0x00
	mov.w @(loc_8c1853B4,pc),r4 ; r4 set to 0xA00
	mov.l r0,@(0x04,r14)
	jsr @r13
	mov.l @(0x08,r12),r6
	mov.l @(loc_8c1853DC,pc),r5 ; r5 set to 0x8C18525E
	mov 0x00,r7 ; r7 set to 0x00
	mov.w @(loc_8c1853B6,pc),r4 ; r4 set to 0xA20
	mov.l r0,@(0x08,r14)
	jsr @r13
	mov.l @(0x0C,r12),r6
	mov.l @(loc_8c1853E0,pc),r2 ; r2 set to 0x8C339E68
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r0,@(0x0C,r14)
	mov r3,r1 ; r1 set to 0x00
	mov.l @(loc_8c1853E4,pc),r0 ; r0 set to 0x8C33A0B4
	mov 0x38,r6 ; r6 set to 0x38
	mov.l @(loc_8c1853E8,pc),r1 ; r1 set to 0x8C33A0B8
	mov.l r3,@r2 ; r2 ??
	mov r3,r2 ; r2 set to 0x00
	mov.l r3,@r0 ; r0 ??
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r3,@r1 ; r1 ??
	mov r0,r1 ; r1 set to 0x00
	mov.l @(loc_8c1853EC,pc),r3 ; r3 set to 0x8C33A0BC
	mov.l @(loc_8c185408,pc),r14 ; r14 set to 0x8C129728
	mov.l r2,@r3 ; r3 ??
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFF
	mov.l @(loc_8c1853F0,pc),r2 ; r2 set to 0x8C33A0C0
	mov.l r0,@r2 ; r2 ??
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_8c1853F4,pc),r0 ; r0 set to 0x8C33A0C8
	mov.l r1,@r0 ; r0 ??
	mov r2,r0 ; r0 set to 0x00
	mov.l @(loc_8c1853F8,pc),r1 ; r1 set to 0x8C33A0C4
	mov.l r3,@r1 ; r1 ??
	mov 0x00,r1 ; r1 set to 0x00
	mov.l @(loc_8c1853FC,pc),r3 ; r3 set to 0x8C33A0DC
	mov.l r2,@r3 ; r3 ??
	mov.l @(loc_8c185400,pc),r2 ; r2 set to 0x8C33A0E0
	mov.l r0,@r2 ; r2 ??
	mov.l @(loc_8c185404,pc),r0 ; r0 set to 0x8C33A0E4
	mov.l r1,@r0 ; r0 ??
	mov.l @(loc_8c18540C,pc),r4 ; r4 set to 0x8C339E30
	jsr @r14
	mov r1,r5 ; r5 set to 0x00
	mov.l @(loc_8c1853BC,pc),r4 ; r4 set to 0x8C339BF0
	mov.w @(loc_8c1853B8,pc),r6 ; r6 set to 0x240
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c185410,pc),r4 ; r4 set to 0x8C339E70
	mov.w @(loc_8c1853B8,pc),r6 ; r6 set to 0x240
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c185414,pc),r4 ; r4 set to 0x8C339B70
	mov.w @(loc_8c1853BA,pc),r6 ; r6 set to 0x80
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	lds.l @r15+,pr
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1853B2:
	#data 0x0900
loc_8c1853B4:
	#data 0x0A00
loc_8c1853B6:
	#data 0x0A20
loc_8c1853B8:
	#data 0x0240
loc_8c1853BA:
	#data 0x0080
	#align4

loc_8c1853BC:
	#data 0x8C339BF0
loc_8c1853C0:
	#data 0x8C347150
loc_8c1853C4:
	#data bank1c.loc_8c1c58C8
loc_8c1853C8:
	#data loc_8c1844D4
loc_8c1853CC:
	#data 0x8C339B60
loc_8c1853D0:
	#data loc_8c185170
loc_8c1853D4:
	#data loc_8c18517C
loc_8c1853D8:
	#data loc_8c185256
loc_8c1853DC:
	#data loc_8c18525E
loc_8c1853E0:
	#data 0x8C339E68
loc_8c1853E4:
	#data 0x8C33A0B4
loc_8c1853E8:
	#data 0x8C33A0B8
loc_8c1853EC:
	#data 0x8C33A0BC
loc_8c1853F0:
	#data 0x8C33A0C0
loc_8c1853F4:
	#data 0x8C33A0C8
loc_8c1853F8:
	#data 0x8C33A0C4
loc_8c1853FC:
	#data 0x8C33A0DC
loc_8c185400:
	#data 0x8C33A0E0
loc_8c185404:
	#data 0x8C33A0E4
loc_8c185408:
	#data bank12.loc_8c129728
loc_8c18540C:
	#data 0x8C339E30
loc_8c185410:
	#data 0x8C339E70
loc_8c185414:
	#data 0x8C339B70

;==============================================
loc_8c185418:
	sts.l pr,@-r15
	add 0xF4,r15
	stc sr, r0
	mov.w @(loc_8c1854E8,pc),r3 ; r3 set to 0xFF0F
	mov.l r4,@r15
	shlr2 r0
	mov.l r5,@(0x04,r15)
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0x08,r15)
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c1854EC,pc),r4 ; r4 set to 0x8C198320
	mov.l @(loc_8c1854F0,pc),r3 ; r3 set to 0xA0000000
	mov.l @r4,r2
	or r3,r2
	bsr loc_8c18530E
	mov.l r2,@r4 ; r4 ??? bc r2 is ???
	mov.l @(loc_8c1854F4,pc),r7 ; r7 set to 0xC000
	mov.l @(loc_8c1854F8,pc),r3 ; r3 set to 0x8C1966E4
	mov.l @r15,r6
	mov r7,r5 ; r5 set to 0xC000
	jsr @r3
	mov.l @(0x04,r15),r4
	bsr loc_8c1852CC
	mov.l r0,@r15
	mov.l @(loc_8c1854FC,pc),r3 ; r3 set to 0x8C33A0B0
	mov 0x01,r2 ; r2 set to 0x01
	stc sr, r1
	mov.l r2,@r3 ; r3 ??
	mov.l @(0x08,r15),r0
	mov.w @(loc_8c1854E8,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r1
	shll2 r0
	or r1,r0
	ldc r0, sr
	mov.l @r15,r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c185472:
	sts.l pr,@-r15
	add 0xEC,r15
	stc sr, r0
	mov.w @(loc_8c1854E8,pc),r3 ; r3 set to 0xFF0F
	mov.l r4,@(0x0C,r15)
	shlr2 r0
	mov.l r5,@(0x08,r15)
	shlr2 r0
	mov.l r6,@(0x04,r15)
	and 0x0F,r0
	mov.l r7,@r15
	mov.l r0,@(0x10,r15)
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c1854EC,pc),r4 ; r4 set to 0x8C198320
	mov.l @(loc_8c1854F0,pc),r3 ; r3 set to 0xA0000000
	mov.l @r4,r2
	or r3,r2
	bsr loc_8c18530E
	mov.l r2,@r4 ; r4 ??? bc r2 is ???
	mov.l @(0x08,r15),r5
	mov.l @(loc_8c185500,pc),r3 ; r3 set to 0x8C196800
	mov.l @r15,r7
	mov.l @(0x04,r15),r6
	jsr @r3
	mov.l @(0x0C,r15),r4
	bsr loc_8c1852CC
	mov.l r0,@r15
	mov.l @(loc_8c1854FC,pc),r3 ; r3 set to 0x8C33A0B0
	mov 0x01,r2 ; r2 set to 0x01
	stc sr, r1
	mov.l r2,@r3 ; r3 ??
	mov.l @(0x10,r15),r0
	mov.w @(loc_8c1854E8,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r1
	shll2 r0
	or r1,r0
	ldc r0, sr
	mov.l @r15,r0
	add 0x14,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1854D0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c1854FC,pc),r2 ; r2 set to 0x8C33A0B0
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c185504
	bra loc_8c1856A8
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1854E8:
	#data 0xFF0F
	#align4

loc_8c1854EC:
	#data bank19.loc_8c198320
loc_8c1854F0:
	#data 0xA0000000
loc_8c1854F4:
	#data 0x0000C000
loc_8c1854F8:
	#data bank19.loc_8c1966E4
loc_8c1854FC:
	#data 0x8C33A0B0
loc_8c185500:
	#data bank19.loc_8c196800

;==============================================
loc_8c185504:
	mov.l @(loc_8C185604,pc),r4
	mov 0x00,r11
	mov.l @(loc_8C185608,pc),r2
	mov.l @r4,r3
	mov.l @(loc_8C18560C,pc),r6
	add 0xFF,r3
	mov.w @(loc_8C1855F6,pc),r10
	mov.l r3,@r2
	mov.l r11,@r4
	mov.l @r6,r3
	tst r3,r3
	bt loc_8c185530
	mov.l @(loc_8C185614,pc),r4
	mov.l @(loc_8C185610,pc),r5
	mov.l @r5,r3
	and r10,r3
	mov.l r3,@r4
	mov.l @r5,r1
	shlr16 r1
	exts.w r1,r1
	and r10,r1
	mov.l r1,@(0x04,r4) 

loc_8c185530:
	mov.l @(loc_8C185618,pc),r4
	mov.l r11,@r6
	mov.l @r4,r2
	tst r2,r2
	bt loc_8c18554e
	mov.l @(loc_8C18561C,pc),r2
	mov.l @(loc_8C185620,pc),r1
	mov.l @r2,r3
	mov.l r3,@r1
	mov.l @(loc_8C185624,pc),r3
	mov 0xF7,r0
	mov.l @r3,r2
	and r0,r2
	mov.l r2,@r3
	mov.l r11,@r4

loc_8c18554e:
	mov.l @(loc_8C185630,pc),r14
	mov.w @(loc_8C1855F8,pc),r3
	mov.l @(loc_8C185628,pc),r12
	mov.l @(loc_8C18562C,pc),r13
	mov.l @r12,r2
	tst r3,r2
	bt loc_8c18564e
	mov.w @(loc_8C1855FA,pc),r2
	mov.l @r12,r1
	tst r2,r1
	bt loc_8c18557c
	mov.l @(0x1C,r14),r1
	add 0x01,r1
	mov.l r1,@(0x1C,r14) 
	mov.l @r13,r0
	tst r0,r0
	bt loc_8c18557c
	mov.l @r13,r0
	mov.l @r12,r7
	mov.l @(0x08,r14),r6
	mov 0xFE,r5
	jsr @r0
	mov 0x01,r4

loc_8c18557c:
	mov.w @(loc_8C1855FC,pc),r3
	mov.l @r12,r2
	tst r3,r2
	bt loc_8c18559c
	mov.l @(0x20,r14),r0
	add 0x01,r0
	mov.l r0,@(0x20,r14) 
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c18559c
	mov.l @r13,r2
	mov.l @r12,r7
	mov.l @(0x08,r14),r6
	mov 0xFD,r5
	jsr @r2
	mov 0x01,r4

loc_8c18559c:
	mov.w @(loc_8C1855FE,pc),r3
	mov.l @r12,r2
	tst r3,r2
	bt loc_8c1855bc
	mov.l @(0x24,r14),r0
	add 0x01,r0
	mov.l r0,@(0x24,r14) 
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c1855bc
	mov.l @r13,r2
	mov.l @r12,r7
	mov.l @(0x08,r14),r6
	mov 0xFC,r5
	jsr @r2
	mov 0x01,r4

loc_8c1855bc:
	mov.w @(loc_8C185600,pc),r3
	mov.l @r12,r2
	tst r3,r2
	bt loc_8c1855dc
	mov.l @(0x28,r14),r0
	add 0x01,r0
	mov.l r0,@(0x28,r14) 
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c1855dc
	mov.l @r13,r2
	mov.l @r12,r7
	mov.l @(0x08,r14),r6
	mov 0xFB,r5
	jsr @r2
	mov 0x01,r4

loc_8c1855dc:
	mov.w @(loc_8C1855F8,pc),r3
	bsr loc_8c185780
	mov.l r3,@r12
	mov.l @(loc_8c185634,pc),r1
	jsr @r1
	nop 
	mov r0,r12
	cmp/pz r12
	bf loc_8c185638
	bsr loc_8c1852cc
	nop 
	bra loc_8c1856a6
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1855F6:
	#data 0x03FF
loc_8C1855F8:
	#data 0x0F00
loc_8C1855FA:
	#data 0x0800
loc_8C1855FC:
	#data 0x0400
loc_8C1855FE:
	#data 0x0200
loc_8C185600:
	#data 0x0100
	#align4

loc_8C185604:
	#data 0x8C33A0C8
loc_8C185608:
	#data 0x8C33A0C4
loc_8C18560C:
	#data 0x8C33A0C0
loc_8C185610:
	#data 0xA05F80C4
loc_8C185614:
	#data 0x8C33A0CC
loc_8C185618:
	#data 0x8C33A0BC
loc_8C18561C:
	#data 0x8C33A0B8
loc_8C185620:
	#data 0xA05F8040
loc_8C185624:
	#data 0xA05F80E8
loc_8C185628:
	#data 0xA05F6908
loc_8C18562C:
	#data 0x8C339E68
loc_8C185630:
	#data 0x8C339E30
loc_8c185634:
	#data bank19.loc_8c196b0e

;==============================================
loc_8c185638:
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c1856a6
	mov.l @(0x08,r14),r6
	mov 0xFA,r5
	mov.l @r13,r3
	mov r12,r7
	jsr @r3
	mov 0x01,r4
	bra loc_8c1856a6
	nop 

loc_8c18564e:
	mov.l @(loc_8c185744,pc),r1
	jsr @r1
	nop 
	mov r0,r12
	cmp/pz r12
	bf loc_8c18568a
	mov.l @(loc_8C18574C,pc),r4
	mov r14,r1
	add 0x34,r1
	mov.l @(loc_8C185748,pc),r2
	mov.l r11,@r2
	mov.l @r4,r3
	shll r3
	add r1,r3
	mov r14,r1
	mov.w r11,@r3
	add 0x2C,r1
	mov.l @r4,r3
	shll r3
	add r1,r3
	mov.l @(loc_8C185750,pc),r1
	mov.l @r1,r0
	and r10,r0
	mov.w r0,@r3
	bsr loc_8c1852cc
	nop 
	mov.l @r14,r2
	add 0x01,r2
	bra loc_8c1856a6
	mov.l r2,@r14

loc_8c18568a:
	bsr loc_8c185780
	nop 
	mov.l @(0x10,r14),r3
	add 0x01,r3
	mov.l r3,@(0x10,r14) 
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c1856a6
	mov.l @(0x08,r14),r6
	mov 0xF9,r5
	mov.l @r13,r2
	mov r12,r7
	jsr @r2
	mov 0x01,r4

loc_8c1856a6:
	mov r12,r0

loc_8c1856A8:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1856B6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x88,PC),r2
	mov 0x04,r8
	mov.w @(0x72,PC),r0
	mov r8,r10
	mov.l @r2,r3
	mov 0x01,r9
	mov.l @(0x80,PC),r11
	add 0x7C,r10
	mov.b @(r0,r3),r1
	mov.l @(0x80,PC),r12
	mov.b r1,@r15
	bra loc_8c185766
	mov 0x00,r14

loc_8c1856E2:
	mov.b @r15,r3
	mov r9,r2
	shad r14,r2
	extu.b r3,r3
	tst r3,r2
	bt loc_8c185764
	mov.l @(0x70,PC),r4
	add r14,r4
	mov.l r4,@(0x4,r15)
	mov.b @r4,r4
	bsr loc_8c1859a0
	extu.b r4,r4
	mov.l @(0x4,r15),r4
	mov r0,r13
	mov.b @r4,r4
	bsr loc_8c1859b2
	extu.b r4,r4
	mov r0,r4
	mov r14,r0
	mov.b @(r0,r11),r3
	mov.b r3,@(r0,r12)
	mov.l @r4,r2
	tst r10,r2
	bt loc_8c185764
	mov.b @(0x2,r13),r0
	tst r0,r0
	bf loc_8c185764
	mov.b @(0x4,r13),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c185764
	mov.l @(0x8,r13),r4
	mov.b @(0x8,r4),r0
	and 0x04,r0
	mov r0,r4
	mov r14,r0
	mov.b r4,@(r0,r11)
	mov.b @(r0,r12),r5
	xor r4,r5
	extu.b r4,r4
	tst r4,r4
	bf loc_8c185764
	extu.b r5,r5
	tst r5,r5
	bt loc_8c185764
	mov r14,r0
	bra loc_8c18576c
	add 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185742:
	#data 0x0FB0
	#align4

loc_8c185744:
	#data bank19.loc_8c196B0E
loc_8c185748:
	#data 0x8C33A0E0
loc_8c18574c:
	#data 0x8C33A0B4
loc_8c185750:
	#data 0xA05F810C
loc_8c185754:
	#data 0x8C347150
loc_8c185758:
	#data 0x8C33A12C
loc_8c18575c:
	#data 0x8C33A128
loc_8c185760:
	#data bank1c.loc_8c1c58DC

;=================================================
loc_8c185764:
	add 0x01,r14

loc_8c185766:
	cmp/ge r8,r14
	bf loc_8c1856e2
	mov 0x00,r0

loc_8c18576C:
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
loc_8c185780:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	stc sr,r0
	mov.w @(0xCC,PC),r3
	mov 0x01,r8
	mov.l @(0xD0,PC),r9
	shlr2 r0
	mov.l @(0xD0,PC),r10
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0x4,r15)
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0xC4,PC),r2
	jsr @r2
	nop 
	cmp/eq 0xFE,r0
	bf/s loc_8c1857c0
	mov r0,r13
	mov.w @(0xAA,PC),r0
	mov.l @r9,r2
	bra loc_8c185912
	mov.l r8,@(r0,r2)

loc_8c1857C0:
	cmp/pz r13
	bt loc_8c1857c8
	bra loc_8c185900
	nop 

loc_8c1857C8:
	mov.l @(0xAC,PC),r3
	jsr @r3
	nop 
	mov.l @(0xAC,PC),r2
	mov r10,r3
	add 0x30,r3
	mov.l @(0xA8,PC),r0
	mov.l @r2,r4
	mov.w @(0x8C,PC),r5
	shll r4
	add r4,r3
	mov.l r3,@-r15
	mov.l @r0,r1
	mov r10,r2
	mov.l @(0x9C,PC),r3
	add 0x34,r2
	and r5,r1
	add r4,r2
	mov.l @r3,r0
	mov.w @r2,r2
	and r5,r0
	mulu.w r0,r2
	sts macl,r0
	add r0,r1
	mov.l @r15+,r0
	bsr loc_8c1852cc
	mov.w r1,@r0
	mov.l @(0x88,PC),r3
	jsr @r3
	nop 
	mov.l @(0x84,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bt loc_8c18585c
	mov.l @(0x80,PC),r2
	mov.l @r2,r14
	tst r14,r14
	bt loc_8c18581e
	jsr @r14
	nop 
	tst r0,r0
	bt loc_8c185826

loc_8c18581E:
	bsr loc_8c1856b6
	nop 
	mov.l @(0x70,PC),r1
	mov.l r0,@r1

loc_8c185826:
	mov.w @(0x40,PC),r0
	mov.l @r9,r3
	mov.l @(r0,r3),r2
	tst r2,r2
	bt loc_8c18585c
	mov.l @(0x60,PC),r1
	mov.l @r1,r2
	tst r2,r2
	bt loc_8c18585c
	mov.l @(0x5C,PC),r4
	mov.l @r4,r3
	mov.l @(0x5C,PC),r2
	mov.l r3,@r2
	mov.w @(0x26,PC),r3
	mov.l @r9,r0
	mov.l @(r0,r3),r3
	mov.l r3,@r4
	mov.l @(0x54,PC),r3
	mov.l @r3,r0
	or 0x08,r0
	mov.l r0,@r3
	mov.l @(0x54,PC),r4
	mov.l @(0x50,PC),r1
	mov.l r8,@r1
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4

loc_8c18585C:
	mov.l @(0x4C,PC),r14
	mov 0x00,r12
	bra loc_8c1858e4
	mov r12,r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185864:
	#data 0xFF0F
loc_8c185866:
	#data 0x10E8
loc_8c185868:
	#data 0x03FF
loc_8c18586a:
	#data 0x0FBC
	#align4

loc_8c18586c:
	#data 0x8C347150
loc_8c185870:
	#data 0x8C339E30
loc_8c185874:
	#data bank19.loc_8c196CDE
loc_8c185878:
	#data bank19.loc_8c196D36
loc_8c18587c:
	#data 0x8C33A0B4
loc_8c185880:
	#data 0xA05F810C
loc_8c185884:
	#data 0xA05F80DC
loc_8c185888:
	#data bank19.loc_8c196D20
loc_8c18588C:
	#data bank19.loc_8c197040
loc_8c185890:
	#data 0x8C339E6C
loc_8c185894:
	#data 0x8C33A0C0
loc_8c185898:
	#data 0xA05F8040
loc_8c18589c:
	#data 0x8C33A0B8
loc_8c1858a0:
	#data 0xA05F80E8
loc_8c1858a4:
	#data 0x8C33A0BC
loc_8c1858a8:
	#data 0x8C33A0DC
loc_8c1858ac:
	#data 0x8C339E70

;==============================================
loc_8c1858B0:
	mov.l @(0x8,r14),r3
	tst r3,r3
	bt loc_8c1858e0
	mov.l @(0x4,r14),r5
	bsr loc_8c1859ce
	mov.l @r14,r4
	tst r0,r0
	bt loc_8c1858e0
	mov.l @(0x8,r14),r3
	mov.l r3,@r15
	mov.l r12,@(0x8,r14)
	mov.l @r15,r3
	mov.l r3,@-r15
	bsr loc_8c1859b2
	mov.l @r14,r4
	mov.l r0,@-r15
	bsr loc_8c1859a0
	mov.l @r14,r4
	mov.l @r15+,r7
	mov r0,r6
	mov.l @(0x4,r14),r5
	mov.l @r15+,r1
	jsr @r1
	mov.l @r14,r4

loc_8c1858E0:
	add 0x0C,r14
	add 0x01,r11

loc_8c1858E4:
	mov 0x30,r3
	cmp/ge r3,r11
	bf loc_8c1858b0
	mov.l @(0xF0,PC),r3
	mov.w @(0xE4,PC),r0
	mov.l @r9,r1
	mov.l r12,@(r0,r1)
	mov.l @r3,r2
	xor r8,r2
	mov.l r2,@r3
	mov.l @(0x4,r10),r3
	add 0x01,r3
	bra loc_8c185912
	mov.l r3,@(0x4,r10)

loc_8c185900:
	mov.l @(0xDC,PC),r1
	mov.l @r1,r14
	tst r14,r14
	bt loc_8c185912
	mov.l @(0x8,r10),r6
	mov 0xF8,r5
	mov r13,r7
	jsr @r14
	mov 0x02,r4

loc_8c185912:
	mov.l @(0x4,r15),r0
	stc sr,r2
	mov.w @(0xBC,PC),r3
	and 0x0F,r0
	shll2 r0
	and r3,r2
	shll2 r0
	or r2,r0
	ldc r0,sr
	mov r13,r0
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
loc_8c18593A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	stc sr, r0
	mov.w @(loc_8c1859D6,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.w @(loc_8c1859D8,pc),r2 ; r2 set to 0xCFFF
	mov.l @(loc_8c1859E4,pc),r3 ; r3 set to 0xA05F6920
	mov.l @r3,r1
	and r2,r1
	mov.l r1,@r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8c1859EC,pc),r14 ; r14 set to 0x8C339B60
	mov.l @(loc_8c1859E8,pc),r13 ; r13 set to 0x8C1847DC
	jsr @r13
	mov.l @(0x0C,r14),r4
	jsr @r13
	mov.l @(0x10,r14),r4
	jsr @r13
	mov.l @(0x08,r14),r4
	jsr @r13
	mov.l @(0x04,r14),r4
	mov.l @(loc_8c1859F0,pc),r3 ; r3 set to 0x8C196DD8
	jsr @r3
	nop
	mov.l @(loc_8c1859F8,pc),r2 ; r2 set to 0x8C129728
	mov.l @(loc_8c1859F4,pc),r4 ; r4 set to 0x8C339BF0
	mov.w @(loc_8c1859DA,pc),r6 ; r6 set to 0x240
	jsr @r2
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @r15,r0
	stc sr, r3
	mov.w @(loc_8c1859D6,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r3 ; r3 ??
	shll2 r0
	or r3,r0
	ldc r0, sr
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1859A0:
	mov r4,r0
	shll r0
	mov r4,r3
	add r3,r0
	mov.l @(loc_8c1859F4,pc),r2 ; r2 set to 0x8C339BF0
	shll2 r0
	shll r0
	rts
	add r2,r0

;==============================================
loc_8c1859B2:
	sts.l pr,@-r15
	mov.l @(loc_8c1859FC,pc),r3 ; r3 set to 0x8C196ED4
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c1859c0:
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop 
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c1859CE:
	mov.l @(loc_8c185A04,pc),r3 ; r3 set to 0x8C196F28
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1859D4:
	#data 0x10E8
loc_8c1859D6:
	#data 0xFF0F
loc_8c1859D8:
	#data 0xCFFF
loc_8c1859DA:
	#data 0x0240
	#align4

loc_8c1859dc:
	#data 0x8C33A0B4
loc_8c1859E0:
	#data 0x8C339E68
loc_8c1859E4:
	#data 0xA05F6920
loc_8c1859E8:
	#data loc_8c1847DC
loc_8c1859EC:
	#data 0x8C339B60
loc_8c1859F0:
	#data bank19.loc_8c196DD8
loc_8c1859F4:
	#data 0x8C339BF0
loc_8c1859F8:
	#data bank12.loc_8c129728
loc_8c1859FC:
	#data bank19.loc_8c196ED4
loc_8c185A00:
	#data bank19.loc_8c196EE6
loc_8c185A04:
	#data bank19.loc_8c196F28

;==============================================
;unused?
loc_8c185A08:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xE0,PC),r3
	jsr @r3
	nop 
	mov.l @(0xE0,PC),r2
	mov.l r0,@r15
	mov.w @(0xD2,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185a24
	bsr loc_8c185780
	nop 

loc_8c185a24:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185a2e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xC4,PC),r3
	jsr @r3
	nop 
	mov.l @(0xB8,PC),r2
	mov.l r0,@r15
	mov.w @(0xAC,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185a4a
	bsr loc_8c185780
	nop 

loc_8c185a4a:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185a54:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	nop 
	mov.l @(0x94,PC),r2
	mov.l r0,@r15
	mov.w @(0x86,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185a70
	bsr loc_8c185780
	nop 

loc_8c185a70:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185a7a:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x80,PC),r3
	jsr @r3
	nop 
	mov.l @(0x6C,PC),r2
	mov.l r0,@r15
	mov.w @(0x60,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185a96
	bsr loc_8c185780
	nop 

loc_8c185a96:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185aa0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x48,PC),r2
	mov.l r0,@r15
	mov.w @(0x3A,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185abc
	bsr loc_8c185780
	nop 

loc_8c185abc:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185AC6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x20,PC),r2
	mov.l r0,@r15
	mov.w @(0x14,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185ae2
	bsr loc_8c185780
	nop 

loc_8c185AE2:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185Aec:
	#data 0x10E8
	#align4

loc_8c185AF0:
	#data bank19.loc_8c197EB0
loc_8c185Af4:
	#data 0x8C347150
loc_8c185AF8:
	#data bank19.loc_8c197F7C
loc_8c185AFC:
	#data bank19.loc_8c197F38
loc_8c185B00:
	#data bank19.loc_8c197EF4
loc_8c185B04:
	#data bank19.loc_8c197E4E
loc_8c185B08:
	#data bank19.loc_8c197FC0

;==============================================
loc_8c185B0C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x8,r15),r3
	mov.l r3,@-r15
	mov.l @(0xF4,PC),r3
	jsr @r3
	nop 
	add 0x04,r15
	mov.l @(0xF0,PC),r2
	mov.l r0,@r15
	mov.w @(0xE6,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185b2e
	bsr loc_8c185780
	nop 

loc_8c185b2e:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185B38:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x10,r15),r3
	mov.l r3,@-r15
	mov.l @(0x10,r15),r2
	mov.l r2,@-r15
	mov.l @(0x10,r15),r3
	mov.l r3,@-r15
	mov.l @(0xC8,PC),r3
	jsr @r3
	nop 
	add 0x0C,r15
	mov.l @(0xBC,PC),r2
	mov.l r0,@r15
	mov.w @(0xB2,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185b62
	bsr loc_8c185780
	nop 

loc_8c185b62:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185B6C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x8,r15),r3
	mov.l r3,@-r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	nop 
	add 0x04,r15
	mov.l @(0x90,PC),r2
	mov.l r0,@r15
	mov.w @(0x86,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185b8e
	bsr loc_8c185780
	nop 

loc_8c185b8e:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185b98:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x7C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x6C,PC),r2
	mov.l r0,@r15
	mov.w @(0x60,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185bb4
	bsr loc_8c185780
	nop 

loc_8c185bb4:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185bbe:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x44,PC),r2
	mov.l r0,@r15
	mov.w @(0x3A,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185bda
	bsr loc_8c185780
	nop 

loc_8c185bda:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 


;==============================================
loc_8c185BE4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x38,PC),r3
	jsr @r3
	nop 
	mov.l @(0x20,PC),r2
	mov.l r0,@r15
	mov.w @(0x14,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185c00
	bsr loc_8c185780
	nop 

loc_8c185c00:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185c0a:
	#data 0x10E8
	#align4

loc_8c185C0C:
	#data bank19.loc_8c198012
loc_8c185C10:
	#data 0x8C347150
loc_8c185C14:
	#data bank19.loc_8c198072
loc_8c185C18:
	#data bank19.loc_8c1980DC
loc_8c185C1C:
	#data bank19.loc_8c19818C
loc_8c185C20:
	#data bank19.loc_8c1981DC
loc_8c185C24:
	#data bank19.loc_8c19822C

;==============================================
;unused
loc_8c185c28:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x138,PC),r3
	jsr @r3
	nop 
	mov.l @(0x138,PC),r2
	mov.l r0,@r15
	mov.w @(0x12A,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185c44
	bsr loc_8c185780
	nop 

loc_8c185c44:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused
loc_8c185c4e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x11C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x110,PC),r2
	mov.l r0,@r15
	mov.w @(0x104,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185c6a
	bsr loc_8c185780
	nop 

loc_8c185c6a:
	mov.l @r15,r0

loc_8c185c6c:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185c74:
	mov.l @(0xFC,PC),r3
	jmp @r3
	nop 

;==============================================
loc_8c185C7A:
	mov.l @(loc_8c185D78,pc),r3 ; r3 set to 0x8C196F42
	jmp @r3
	nop

;==============================================
loc_8c185C80:
	mov.l @(loc_8c185D7C,pc),r3 ; r3 set to 0x8C196F52
	jmp @r3
	nop

;==============================================
loc_8c185C86:
	mov r4,r7
	mov.l r12,@-r15
	mov.l @(loc_8c185D80,pc),r6 ; r6 set to 0x80000000
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @r4+,r12
	add 0x04,r7
	mov 0x00,r1 ; r1 set to 0x00

loc_8c185C94:
	mov r6,r3 ; r3 set to 0x80000000
	tst r12,r3
	bt loc_8c185CA8
	cmp/eq r6,r5
	bf loc_8c185CA4
	mov r7,r0 ; r0 ??? bc r7 is ???
	rts
	mov.l @r15+,r12

;==============================================
loc_8c185CA4:
	add 0x04,r4
	mov r4,r7

loc_8c185CA8:
	add 0x01,r1
	shlr r6
	cmp/ge r0,r1
	bf loc_8c185C94
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	rts
	mov.l @r15+,r12

;==============================================
loc_8c185CB6:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov 0x01,r5 ; r5 set to 0x01
	bsr loc_8c185C86
	mov.l @(0x04,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185CD2
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c185CD2:
	mov.b @(0x01,r4),r0
	mov.b @r4,r1
	extu.b r0,r0
	mov.l @r15,r3
	shll16 r0
	mov r0,r2
	mov.b @(0x02,r4),r0
	extu.b r1,r1
	extu.b r0,r0
	shll8 r0
	or r0,r2
	mov.b @(0x03,r4),r0
	shll16 r1
	shll8 r1
	extu.b r0,r0
	or r1,r2
	or r0,r2
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c185D00:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x02,r5 ; r5 set to 0x02
	mov r4,r14
	bsr loc_8c185C86
	mov.l @r15,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185D20
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c185D20:
	mov r4,r5
	add 0x02,r5
	mov.b @r4,r3
	extu.b r3,r3
	add 0x01,r3
	mov.w r3,@r14
	mov 0xF9,r3 ; r3 set to 0xFFFFFFF9
	mov.b @(0x01,r4),r0
	extu.b r0,r0
	add 0x01,r0
	shll2 r0
	shll2 r0
	shll r0
	mov.w r0,@(0x02,r14)
	mov.b @r5,r0
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x04,r14)
	mov.b @r5,r0
	extu.b r0,r0
	and 0x0F,r0
	mov.w r0,@(0x06,r14)
	mov.b @(0x03,r4),r0
	extu.b r0,r0
	shld r3, r0
	and 0x01,r0
	mov.w r0,@(0x08,r14)
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185D64:
	#data 0x10E8
	#align4

loc_8c185D68:
	#data bank19.loc_8c198148
loc_8c185D6c:
	#data 0x8C347150
loc_8c185D70:
	#data bank19.loc_8c19828C
loc_8c185D74:
	#data bank19.loc_8c196FBE
loc_8c185D78:
	#data bank19.loc_8c196F42
loc_8c185D7C:
	#data bank19.loc_8c196F52
loc_8c185D80:
	#data 0x80000000

;==============================================
loc_8c185D84:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x10,r5
	bsr loc_8c185c86
	mov.l @(0x4,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185da0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

loc_8c185Da0:
	mov.b @(0x1,r4),r0
	mov.b @r4,r1
	extu.b r0,r0
	mov.l @r15,r3
	shll16 r0
	mov r0,r2
	mov.b @(0x2,r4),r0
	extu.b r1,r1
	extu.b r0,r0
	shll8 r0
	or r0,r2
	mov.b @(0x3,r4),r0
	shll16 r1
	shll8 r1
	extu.b r0,r0
	or r1,r2
	or r0,r2
	mov 0x00,r0
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185DCE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x04,r5 ; r5 set to 0x04
	mov r4,r14
	bsr loc_8c185C86
	mov.l @r15,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185DEE
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c185DEE:
	mov r4,r5
	add 0x03,r5
	mov.b @r4,r3
	extu.b r3,r3
	add 0x01,r3
	mov.w r3,@r14
	mov.b @(0x01,r4),r0
	extu.b r0,r0
	add 0x01,r0
	shll2 r0
	shll2 r0
	shll r0
	mov.w r0,@(0x02,r14)
	mov.b @(0x02,r4),r0
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x04,r14)
	mov.b @r5,r0
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	shlr2 r0
	and 0x03,r0
	mov.b r0,@(0x06,r14)
	mov.b @r5,r0
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	shlr r0
	and 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c185e3a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x08,r5
	mov r4,r14
	bsr loc_8c185c86
	mov.l @r15,r4
	mov r0, r4
	tst r4, r4
	bf loc_8c185e5a
	mov 0xFF,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c185e5a:
	mov.b @r4,r3
	mov.b r3,@r14
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r14)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r14)
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c185e74:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x20,r5
	bsr loc_8c185c86
	mov.l @(0x4,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185e90
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

;==============================================
loc_8c185e90:
	mov.b @(0x1,r4),r0
	mov.b @r4,r1
	extu.b r0,r0
	mov.l @r15,r3
	shll16 r0
	mov r0,r2
	mov.b @(0x2,r4),r0
	extu.b r1,r1
	extu.b r0,r0
	shll8 r0
	or r0,r2
	mov.b @(0x3,r4),r0
	shll16 r1
	shll8 r1
	extu.b r0,r0
	or r1,r2
	or r0,r2
	mov 0x00,r0
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185EBE:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov.w @(loc_8c185EF4,pc),r5 ; r5 set to 0x100
	bsr loc_8c185C86
	mov.l @(0x04,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185EDA
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c185EDA:
	mov.b @r4,r2
	mov.l @r15,r3
	extu.b r2,r2
	mov.l r2,@r3
	mov.b @(0x01,r4),r0
	mov.l @r15,r3
	extu.b r0,r0
	mov.l r0,@(0x04,r3)
	mov 0x00,r0 ; r0 set to 0x00
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185EF4:
	#data 0x0100

;==============================================
loc_8c185EF6:
	mov.l r14,@-r15
	mov r4,r0
	sts.l pr,@-r15
	cmp/eq 0x01,r0
	bt/s loc_8c185F2A
	mov r5,r14
	cmp/eq 0x02,r0
	bt loc_8c185F34
	cmp/eq 0x04,r0
	bt loc_8c185F3E
	cmp/eq 0x03,r0
	bt loc_8c185F48
	cmp/eq 0x06,r0
	bt loc_8c185F52
	cmp/eq 0x05,r0
	bt loc_8c185F5C
	cmp/eq 0x00,r0
	bt loc_8c185F66
	cmp/eq 0x07,r0
	bt loc_8c185F70
	cmp/eq 0x08,r0
	bt loc_8c185F7A
	cmp/eq 0x09,r0
	bt loc_8c185F84
	bra loc_8c185F8E
	nop

loc_8c185F2A:
	mov.l @(loc_8c186044,pc),r3 ; r3 set to 0x8C196F96
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F34:
	mov.l @(loc_8c186048,pc),r3 ; r3 set to 0x8C196F62
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F3E:
	mov.l @(loc_8c18604C,pc),r3 ; r3 set to 0x8C196FEA
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F48:
	mov.l @(loc_8c186050,pc),r3 ; r3 set to 0x8C196FAA
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F52:
	mov.l @(loc_8c186054,pc),r3 ; r3 set to 0x8C196FD6
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F5C:
	mov.l @(loc_8c186058,pc),r3 ; r3 set to 0x8C196F7E
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F66:
	mov.l @(loc_8c18605C,pc),r3 ; r3 set to 0x8C196FFE
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F70:
	mov.l @(loc_8c186060,pc),r3 ; r3 set to 0x8C197022
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F7A:
	mov.l @(loc_8c186064,pc),r3 ; r3 set to 0x8C197036
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F84:
	mov.l @(loc_8c186068,pc),r3 ; r3 set to 0x8C197070
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F8E:
	lds.l @r15+,pr
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF
	rts
	mov.l @r15+,r14

loc_8c185F96:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c185F9E:
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c185FCC
	cmp/eq 0x02,r0
	bt loc_8c185FD2
	cmp/eq 0x04,r0
	bt loc_8c185FD8
	cmp/eq 0x03,r0
	bt loc_8c185FDE
	cmp/eq 0x06,r0
	bt loc_8c185FE4
	cmp/eq 0x05,r0
	bt loc_8c185FEA
	cmp/eq 0x00,r0
	bt loc_8c185FF0
	cmp/eq 0x07,r0
	bt loc_8c185FF6
	cmp/eq 0x08,r0
	bt loc_8c185FFC
	cmp/eq 0x09,r0
	bt loc_8c186002
	bra loc_8c186008
	nop

loc_8c185FCC:
	mov.l @(loc_8c18606C,pc),r3 ; r3 set to 0x8C196FA0
	jmp @r3
	nop

loc_8c185FD2:
	mov.l @(loc_8c186070,pc),r2 ; r2 set to 0x8C196F6E
	jmp @r2
	nop

loc_8c185FD8:
	mov.l @(loc_8c186074,pc),r3 ; r3 set to 0x8C196FF4
	jmp @r3
	nop

loc_8c185FDE:
	mov.l @(loc_8c186078,pc),r2 ; r2 set to 0x8C196FB4
	jmp @r2
	nop

loc_8c185FE4:
	mov.l @(loc_8c18607C,pc),r3 ; r3 set to 0x8C196FE0
	jmp @r3
	nop

loc_8c185FEA:
	mov.l @(loc_8c186080,pc),r2 ; r2 set to 0x8C196F8C
	jmp @r2
	nop

loc_8c185FF0:
	mov.l @(loc_8c186084,pc),r3 ; r3 set to 0x8C19700E
	jmp @r3
	nop

loc_8c185FF6:
	mov.l @(loc_8c186088,pc),r2 ; r2 set to 0x8C19702C
	jmp @r2
	nop

loc_8c185FFC:
	mov.l @(loc_8c18608C,pc),r3 ; r3 set to 0x8C197040
	jmp @r3
	nop

loc_8c186002:
	mov.l @(loc_8c186090,pc),r2 ; r2 set to 0x8C19707A
	jmp @r2
	nop

loc_8c186008:
	rts
	mov 0xFF,r0

;==============================================
loc_8c18600c:
	mov.l @(0x84,PC),r0
	rts
	nop

;==============================================
loc_8c186012:
	mov.l @(loc_8c186098,pc),r6 ; r6 set to 0x8C33A0CC
	mov.l @r6,r3
	mov.l r3,@r4
	mov.l @(0x04,r6),r2
	rts
	mov.l r2,@r5

;==============================================
loc_8c18601E:
	mov.l @(loc_8c18609C,pc),r3 ; r3 set to 0x8C33A0C4
	rts
	mov.l @r3,r0

;==============================================
loc_8c186024:
	mov.l @(loc_8c1860A0,pc),r3 ; r3 set to 0x8C33A0C0
	add 0x01,r4
	rts
	mov.l r4,@r3

;==============================================
loc_8c18602C:
	mov.l @(loc_8c1860A4,pc),r2 ; r2 set to 0x8C339E6C
	rts
	mov.l r4,@r2

;==============================================
loc_8c186032:
	mov 0x1F,r3
	cmp/hi r3,r4
	bt loc_8c18603e
	mov.l @(0x6C,PC),r0
	shll2 r4
	mov.l r5,@(r0,r4)

loc_8c18603E:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c186044:
	#data bank19.loc_8c196F96
loc_8c186048:
	#data bank19.loc_8c196F62
loc_8c18604C:
	#data bank19.loc_8c196FEA
loc_8c186050:
	#data bank19.loc_8c196FAA
loc_8c186054:
	#data bank19.loc_8c196FD6
loc_8c186058:
	#data bank19.loc_8c196F7E
loc_8c18605C:
	#data bank19.loc_8c196FFE
loc_8c186060:
	#data bank19.loc_8c197022
loc_8c186064:
	#data bank19.loc_8c197036
loc_8c186068:
	#data bank19.loc_8c197070
loc_8c18606C:
	#data bank19.loc_8c196FA0
loc_8c186070:
	#data bank19.loc_8c196F6E
loc_8c186074:
	#data bank19.loc_8c196FF4
loc_8c186078:
	#data bank19.loc_8c196FB4
loc_8c18607C:
	#data bank19.loc_8c196FE0
loc_8c186080:
	#data bank19.loc_8c196F8C
loc_8c186084:
	#data bank19.loc_8c19700E
loc_8c186088:
	#data bank19.loc_8c19702C
loc_8c18608C:
	#data bank19.loc_8c197040
loc_8c186090:
	#data bank19.loc_8c19707A
loc_8c186094:
	#data 0x8C339E30
loc_8c186098:
	#data 0x8C33A0CC
loc_8c18609C:
	#data 0x8C33A0C4
loc_8c1860A0:
	#data 0x8C33A0C0
loc_8c1860A4:
	#data 0x8C339E6C
loc_8c1860A8:
	#data 0x8C339B70

;==============================================
loc_8c1860AC:
	mov.l @(0x104,PC),r2
	mov r4,r7
	mov.w @(0xFA,PC),r0
	shll r7
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	add r1,r7
	mov.l @(0xFC,PC),r1
	mov r7,r3
	shll r7
	add r3,r7
	shll2 r7
	add r1,r7
	mov.l r5,@(0x8,r7)
	mov.l r6,@(0x4,r7)
	mov.l r4,@r7
	rts 
	mov 0x00,r0

;==============================================
loc_8c1860d0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE4,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c1860f6
	mov.l @(0xE0,PC),r2
	mov.l @(0xD8,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c1860f6:
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pl r14
	bf loc_8c18610a
	mov.l @(0x4,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c18610a:
	mov.l @(0xB0,PC),r3
	mov 0x00,r1
	mov.l @(0xA4,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0x96,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c186122
	bsr loc_8c185780
	nop 

loc_8c186122:
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18612c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x88,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c186152
	mov.l @(0x84,PC),r2
	mov.l @(0x7C,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c186152:
	mov.l @(0x78,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pl r14
	bf loc_8c186166
	mov.l @(0x4,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c186166:
	mov.l @(0x54,PC),r3
	mov 0x00,r1
	mov.l @(0x48,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0x3A,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c18617e
	bsr loc_8c185780
	nop 

loc_8c18617e:
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c186188:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x2C,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c1861d0
	mov.l @(0x28,PC),r2
	mov.l @(0x20,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1861ae:
	#data 0x0FC0
loc_8c1861B0:
	#data 0x10E8
	#align4

loc_8c1861B4:
	#data 0x8C347150
loc_8c1861B8:
	#data 0x8C339E70
loc_8c1861BC:
	#data bank19.loc_8c198320
loc_8c1861C0:
	#data bank1c.loc_8c1c58E0
loc_8c1861C4:
	#data bank19.loc_8c196E7C
loc_8c1861C8:
	#data bank19.loc_8c197EDC
loc_8c1861CC:
	#data bank19.loc_8c197FA8

;==============================================
loc_8c1861d0:
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pl r14
	bf loc_8c1861e4
	mov.l @(0x4,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c1861e4:
	mov.l @(0xDC,PC),r3
	mov 0x00,r1
	mov.l @(0xDC,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0xCA,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c1861fc
	bsr loc_8c185780
	nop 

loc_8c1861fc:
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c186206:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xB4,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c18622c
	mov.l @(0xB4,PC),r2
	mov.l @(0xB0,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0

loc_8c186224:
	add 0x08,r15
	lds.l @r15+,pr

loc_8c186228:
	rts 
	mov.l @r15+,r14

loc_8c18622c:
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pl r14
	bf loc_8c186240
	mov.l @(0x4,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c186240:
	mov.l @(0x80,PC),r3
	mov 0x00,r1
	mov.l @(0x80,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0x6E,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c186258
	bsr loc_8c185780
	nop 

loc_8c186258:
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c186262:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x58,PC),r3
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c186288
	mov.l @(0x58,PC),r2
	mov.l @(0x54,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c186288:
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pl r14
	bf loc_8c18629c
	mov.l @(0x4,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c18629c:
	mov.l @(0x24,PC),r3
	mov 0x00,r1
	mov.l @(0x24,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0x12,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c1862b4
	bsr loc_8c185780
	nop 

loc_8c1862b4:
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1862be:
	#data 0x10E8
	#align4

loc_8c1862C0:
	#data bank19.loc_8c197F64
loc_8c1862C4:
	#data bank19.loc_8c198320
loc_8c1862c8:
	#data 0x8C347150
loc_8c1862CC:
	#data bank1c.loc_8c1c58E0
loc_8c1862D0:
	#data bank19.loc_8c196E7C
loc_8c1862D4:
	#data bank19.loc_8c197F20
loc_8c1862D8:
	#data bank19.loc_8c197E7A

;==============================================
loc_8c1862DC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c1863C0,pc),r3 ; r3 set to 0x8C198320
	mov.l r4,@r15
	mov.l r7,@(0x04,r15)
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c186302
	mov.l @(loc_8c1863C8,pc),r2 ; r2 set to 0x8C196E7C
	mov.l @(loc_8c1863C4,pc),r1 ; r1 set to 0x8C1C58E0
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0 ; r0 set to 0xFFFFFFFE
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c186302:
	mov.l @(loc_8c1863cc,pc),r3
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pl r14
	bf loc_8c186316
	mov.l @(0x04,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c186316:
	mov.l @(loc_8c1863c0,pc),r3
	mov 0x00,r1
	mov.l @(loc_8C1863D0,pc),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(loc_8C1863BC,pc),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c18632e
	bsr loc_8c185780
	nop 

loc_8c18632e:
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c186338:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x80,PC),r3
	mov.l r4,@r15
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c18635c
	mov.l @(0x7C,PC),r2
	mov.l @(0x78,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c18635c:
	mov.l @(0xC,r15),r3
	mov.l r3,@-r15
	mov.l @(0x70,PC),r3
	jsr @r3
	mov.l @(0x4,r15),r4
	mov r0,r14
	cmp/pl r14
	bf/s loc_8c186376
	add 0x04,r15
	mov.l @(0x10,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c186376:
	mov.l @(0x48,PC),r3
	mov 0x00,r1
	mov.l @(0x54,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0x36,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c18638e
	bsr loc_8c185780
	nop 

loc_8c18638e:
	mov r14,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c186398:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x20,PC),r3
	mov.l r4,@r15
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c1863d8
	mov.l @(0x1C,PC),r2
	mov.l @(0x18,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1863BC:
	#data 0x10E8
	#align4

loc_8c1863c0:
	#data bank19.loc_8c198320
loc_8c1863c4:
	#data bank1c.loc_8C1C58E0
loc_8c1863c8:
	#data bank19.loc_8C196E7C
loc_8c1863cc:
	#data bank19.loc_8c197fec
loc_8C1863D0:
	#data 0x8C347150
loc_8c1863d4:
	#data bank19.loc_8C198044

;==============================================
loc_8c1863d8:
	mov.l @(0x14,r15),r3
	mov.l r3,@-r15
	mov.l @(0x14,r15),r2
	mov.l r2,@-r15
	mov.l @(0x14,r15),r3
	mov.l r3,@-r15
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov.l @(0xC,r15),r4
	mov r0,r14
	cmp/pl r14
	bf/s loc_8c1863fa
	add 0x0C,r15
	mov.l @(0x18,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c1863fa:
	mov.l @(0xE4,PC),r3
	mov 0x00,r1
	mov.l @(0xE4,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0xCE,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c186412
	bsr loc_8c185780
	nop 

loc_8c186412:
	mov r14,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18641c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xBC,PC),r3
	mov.l r4,@r15
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c186440
	mov.l @(0xBC,PC),r2
	mov.l @(0xB8,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c186440:
	mov.l @(0xC,r15),r3
	mov.l r3,@-r15
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov.l @(0x4,r15),r4
	mov r0,r14
	cmp/pl r14
	bf/s loc_8c18645a
	add 0x04,r15
	mov.l @(0x10,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c18645a:
	mov.l @(0x84,PC),r3
	mov 0x00,r1
	mov.l @(0x84,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0x6E,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c186472
	bsr loc_8c185780
	nop 

loc_8c186472:
	mov r14,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18647c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x5C,PC),r3
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c1864a2
	mov.l @(0x5C,PC),r2
	mov.l @(0x54,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c1864a2:
	mov.l @(0x50,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pl r14
	bf loc_8c1864b6
	mov.l @(0x4,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c1864b6:
	mov.l @(0x28,PC),r3
	mov 0x00,r1
	mov.l @(0x28,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0x12,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c1864ce
	bsr loc_8c185780
	nop 

loc_8c1864ce:
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1864d8:
	#data 0x10E8
	#align4

loc_8c1864dc:
	#data bank19.loc_8C1980AC
loc_8c1864e0:
	#data bank19.loc_8C198320
loc_8c1864e4:
	#data 0x8C347150
loc_8c1864e8:
	#data bank1C.loc_8C1C58E0
loc_8c1864ec:
	#data bank19.loc_8C196E7C
loc_8c1864f0:
	#data bank19.loc_8C19810E
loc_8c1864f4:
	#data bank19.loc_8C1981B8

;==============================================
loc_8c1864f8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xB0,PC),r3
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c18651e
	mov.l @(0xAC,PC),r2
	mov.l @(0xA4,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c18651e:
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pl r14
	bf loc_8c186532
	mov.l @(0x4,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c186532:
	mov.l @(0x7C,PC),r3
	mov 0x00,r1
	mov.l @(0x88,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0x6C,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c18654a
	bsr loc_8c185780
	nop 

loc_8c18654a:
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c186554:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x54,PC),r3
	mov.l r4,@r15
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c186578
	mov.l @(0x50,PC),r2
	mov.l @(0x4C,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	mov 0xFE,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c186578:
	mov.l @(0x48,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pl r14
	bf loc_8c18658c
	mov.l @(0xC,r15),r5
	mov r14,r6
	bsr loc_8c1860ac
	mov.l @r15,r4

loc_8c18658c:
	mov.l @(0x20,PC),r3
	mov 0x00,r1
	mov.l @(0x2C,PC),r0
	mov.l @r3,r2
	mov.b r1,@r2
	mov.l @r0,r2
	mov.w @(0x12,PC),r0
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c1865a4
	bsr loc_8c185780
	nop 

loc_8c1865a4:
	mov r14,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1865ae:
	#data 0x10E8
	#align4

loc_8c1865b0:
	#data bank19.loc_8C198320
loc_8c1865b4:
	#data bank1C.loc_8C1C58E0
loc_8c1865b8:
	#data bank19.loc_8C196E7C
loc_8c1865bc:
	#data bank19.loc_8C198208
loc_8c1865c0:
	#data 0x8C347150
loc_8c1865c4:
	#data bank19.loc_8C198268

;==============================================
loc_8c1865c8:
	mov.w @(0x2A,PC),r1
	mov 0x20,r2
	add r1,r4

loc_8c1865ce:
	mov 0x06,r3

loc_8c1865d0:
	mov 0x00,r6
	mov.w @(0x22,PC),r1
	mov 0x08,r7

loc_8c1865d6:
	mov.b @r5+,r0
	tst 0x08,r0
	bt loc_8c1865de
	or r1,r6

loc_8c1865de:
	shlr r1
	dt r7
	bf loc_8c1865d6
	mov.b r6,@r4
	add 0x01,r4
	dt r3
	bf loc_8c1865d0
	dt r2
	bf/s loc_8c1865ce
	add 0xF4,r4
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1865f6:
	#data 0x00BA
loc_8c1865f8:
	#data 0x0080

;==============================================
loc_8c1865fa:
	mov 0x20,r2
	add 0x05,r4

loc_8c1865fe:
	mov 0x06,r3

loc_8c186600:
	mov 0x00,r6
	mov 0x01,r1
	mov 0x08,r7

loc_8c186606:
	mov.b @r5+,r0
	tst 0x08,r0
	bt loc_8c18660e
	or r1,r6

loc_8c18660e:
	shll r1
	dt r7
	bf loc_8c186606
	mov.b r6,@r4
	add 0xFF,r4
	dt r3
	bf loc_8c186600
	dt r2
	bf/s loc_8c1865fe
	add 0x0C,r4
	rts 
	nop 

;==============================================
loc_8c186626:
	mov.w @(0x26,PC),r1
	mov 0x20,r2
	add r1,r4

loc_8c18662c:
	mov 0x06,r3

loc_8c18662e:
	mov 0x00,r6
	mov 0x01,r1
	mov 0x08,r7

loc_8c186634:
	mov.b @r5+,r0
	tst 0x08,r0
	bt loc_8c18663c
	or r1,r6

loc_8c18663c:
	dt r7
	bf/s loc_8c186634
	shll r1
	mov.b r6,@-r4
	dt r3
	bf loc_8c18662e
	dt r2
	bf loc_8c18662c
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c186650:
	#data 0x00C0

;==============================================
loc_8c186652:
	mov.w @(0x1E,PC),r3

loc_8c186654:
	mov 0x00,r6
	mov.w @(0x1C,PC),r1
	mov 0x08,r7

loc_8c18665a:
	mov.b @r5+,r0
	tst 0x08,r0
	bt loc_8c186662
	or r1,r6

loc_8c186662:
	shlr r1
	dt r7
	bf loc_8c18665a
	mov.b r6,@r4
	dt r3
	bf/s loc_8c186654
	add 0x01,r4
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c186674:
	#data 0x00C0
loc_8c186676:
	#data 0x0080

;==============================================
loc_8c186678:
	sts.l pr,@-r15
	bsr loc_8c18668A
	nop
	lds.l @r15+,pr
	mov 0x03,r4 ; r4 set to 0x03
	shlr8 r0
	and r0,r4 ; r4 ??? bc r0 is ???
	rts
	mov r4,r0

;==============================================
loc_8c18668A:
	mov.l @(loc_8c186698,pc),r3 ; r3 set to 0xFF800030
	mov.w @(loc_8c186696,pc),r2 ; r2 set to 0x300
	mov.w @r3,r4
	extu.w r4,r0
	rts
	and r2,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c186696:
	#data 0x0300
	#align4

loc_8c186698:
	#data 0xFF800030

;==============================================
loc_8c18669C:
	mov.l @(loc_8c18675C,pc),r3 ; r3 set to 0x8C33A130
	mov.l r4,@r3 ; r3 ??? bc r4 is ???
	rts
	mov r4,r0

;==============================================
loc_8c1866A4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x9A,PC),r12
	mov r4,r13
	mov.l @(0xA0,PC),r3
	mul.l r12,r13
	mov.l @(0xA0,PC),r2
	mov.l @(0xA4,PC),r10
	mov.l @(0xA0,PC),r8
	sts macl,r12
	mov.w @(0x8C,PC),r11
	mov.l r5,@r15
	mov.l @r3,r9
	mov.l r12,@(0x4,r15)
	add r2,r12

loc_8c1866D0:
	mov.l @r15,r5
	jsr @r10
	mov r13,r4
	mov r0,r14
	tst r14,r14
	bt loc_8c1866fa
	mov.l @r8,r3
	tst r3,r3
	bt loc_8c1866e6
	cmp/eq r11,r14
	bt loc_8c186738

loc_8c1866E6:
	mov.l @(0x34,r12),r3
	tst r9,r9
	add 0x01,r3
	mov.l r3,@(0x34,r12)
	bf/s loc_8c1866d0
	add 0xFF,r9
	mov.l @(0x68,PC),r1
	mov.l @r1,r0
	cmp/eq 0xFF,r0
	bt loc_8c1866d0

loc_8c1866FA:
	mov.l @(0x4,r15),r12
	mov r13,r2
	mov.l @(0x60,PC),r3
	shll2 r2
	shll2 r2
	mov.l @(0x64,PC),r1
	add r3,r12
	mov.l @(0x64,PC),r3
	shll2 r2
	shll r2
	add r1,r2
	mov.l r2,@r15
	mov.l @(0x30,r12),r6
	mov.l @(0x34,r12),r7
	add 0x01,r6
	mov.l r6,@(0x30,r12)
	add 0xFF,r6
	mov.l @r15,r5
	mov.l @(0x8,r5),r5
	jsr @r3
	mov r13,r4
	mov r14,r0
	cmp/eq 0x00,r0
	bt loc_8c186734
	mov.w @(0x2A,PC),r1
	cmp/eq r1,r0
	bt loc_8c186738
	bra loc_8c18673e
	nop 

loc_8c186734:
	bra loc_8c186740
	mov 0x00,r0

loc_8c186738:
	mov.w @(0x1C,PC),r0
	bra loc_8c186740
	nop 

loc_8c18673E:
	mov.l @(0x34,PC),r0

loc_8c186740:
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
loc_8c186754:
	#data 0x0148
loc_8c186756:
	#data 0xFF30
loc_8c186758:
	#data 0xFF01
	#align4

loc_8c18675C:
	#data 0x8C33A130
loc_8c186760:
	#data 0x8C33C56C
loc_8c186764:
	#data bank1c.loc_8c1c5964
loc_8c186768:
	#data bank19.loc_8c1983D0
loc_8c18676c:
	#data 0x8C33A154
loc_8c186770:
	#data loc_8c186D46
loc_8c186774:
	#data 0xFFFF0000

;==============================================
loc_8c186778:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x9E,PC),r12
	mov r4,r13
	mov.l @(0xA4,PC),r3
	mul.l r12,r13
	mov.l @(0xA4,PC),r2
	mov.l @(0xA4,PC),r8
	mov.w @(0x94,PC),r11
	sts macl,r12
	mov.l @(0xA4,PC),r10
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	mov.l @r3,r9
	mov.l r12,@(0x8,r15)
	add r2,r12

loc_8c1867A6:
	mov.l @r15,r5
	mov.l @(0x4,r15),r6
	jsr @r10
	mov r13,r4
	mov r0,r14
	tst r14,r14
	bt loc_8c1867d2
	mov.l @r8,r3
	tst r3,r3
	bt loc_8c1867be
	cmp/eq r11,r14
	bt loc_8c186810

loc_8c1867BE:
	mov.l @(0x34,r12),r3
	tst r9,r9
	add 0x01,r3
	mov.l r3,@(0x34,r12)
	bf/s loc_8c1867a6
	add 0xFF,r9
	mov.l @(0x68,PC),r1
	mov.l @r1,r0
	cmp/eq 0xFF,r0
	bt loc_8c1867a6

loc_8c1867D2:
	mov.l @(0x8,r15),r12
	mov r13,r2
	mov.l @(0x60,PC),r3
	shll2 r2
	shll2 r2
	mov.l @(0x64,PC),r1
	add r3,r12
	mov.l @(0x64,PC),r3
	shll2 r2
	shll r2
	add r1,r2
	mov.l r2,@r15
	mov.l @(0x30,r12),r6
	mov.l @(0x34,r12),r7
	add 0x01,r6
	mov.l r6,@(0x30,r12)
	add 0xFF,r6
	mov.l @r15,r5
	mov.l @(0x8,r5),r5
	jsr @r3
	mov r13,r4
	mov r14,r0
	cmp/eq 0x00,r0
	bt loc_8c18680c
	mov.w @(0x2A,PC),r1
	cmp/eq r1,r0
	bt loc_8c186810
	bra loc_8c186816
	nop 

loc_8c18680C:
	bra loc_8c186818
	mov 0x00,r0

loc_8c186810:
	mov.w @(0x1C,PC),r0
	bra loc_8c186818
	nop 

loc_8c186816:
	mov.l @(0x34,PC),r0

loc_8c186818:
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
loc_8c18682c:
	#data 0x0148
loc_8c18682e:
	#data 0xFF30
loc_8c186830:
	#data 0xFF01
	#align4

loc_8c186834:
	#data 0x8C33A130
loc_8c186838:
	#data 0x8C33C56C
loc_8c18683C:
	#data bank1c.loc_8c1c5964
loc_8c186840:
	#data bank19.loc_8c1985AA
loc_8c186844:
	#data 0x8C33A154
loc_8c186848:
	#data loc_8c186D46
loc_8c18684C:
	#data 0xFFFF0000

;==============================================
loc_8c186850:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0xAA,PC),r12
	mov r4,r13
	mov.l @(0xB0,PC),r3
	mul.l r12,r13
	mov.l @(0xB0,PC),r2
	mov.l @(0xB0,PC),r8
	mov.w @(0xA0,PC),r11
	sts macl,r12
	mov.l @(0xB0,PC),r10
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	mov.l @r3,r9
	mov.l r12,@(0x8,r15)
	add r2,r12

loc_8c18687E:
	mov.l @r15,r5
	mov.l @(0x4,r15),r6
	jsr @r10
	mov r13,r4
	mov r0,r14
	tst r14,r14
	bt loc_8c1868aa
	mov.l @r8,r3
	tst r3,r3
	bt loc_8c186896
	cmp/eq r11,r14
	bt loc_8c1868ee

loc_8c186896:
	mov.l @(0x34,r12),r3
	tst r9,r9
	add 0x01,r3
	mov.l r3,@(0x34,r12)
	bf/s loc_8c18687e
	add 0xFF,r9
	mov.l @(0x74,PC),r1
	mov.l @r1,r0
	cmp/eq 0xFF,r0
	bt loc_8c18687e

loc_8c1868AA:
	mov.l @(0x8,r15),r12
	mov r13,r2
	mov.l @(0x6C,PC),r3
	shll2 r2
	shll2 r2
	mov.l @(0x70,PC),r1
	add r3,r12
	mov.l @(0x70,PC),r3
	shll2 r2
	shll r2
	add r1,r2
	mov.l r2,@r15
	mov.l @(0x30,r12),r6
	mov.l @(0x34,r12),r7
	add 0x01,r6
	mov.l r6,@(0x30,r12)
	add 0xFF,r6
	mov.l @r15,r5
	mov.l @(0x8,r5),r5
	jsr @r3
	mov r13,r4
	mov r14,r0
	cmp/eq 0x00,r0
	bt loc_8c1868ea
	mov.w @(0x36,PC),r1
	cmp/eq r1,r0
	bt loc_8c1868ee
	mov.w @(0x32,PC),r1
	cmp/eq r1,r0
	bt loc_8c1868f4
	bra loc_8c1868fa
	nop 

loc_8c1868ea:
	bra loc_8c1868fc
	mov 0x00,r0

loc_8c1868ee:
	mov.w @(0x22,PC),r0
	bra loc_8c1868fc
	nop 

loc_8c1868f4:
	mov.w @(0x1E,PC),r0
	bra loc_8c1868fc
	nop 

loc_8c1868fa:
	mov.l @(0x34,PC),r0

loc_8c1868fc:
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
loc_8c186910:
	#data 0x0148
loc_8c186912:
	#data 0xFF30
loc_8c186914:
	#data 0xFF01
loc_8c186916:
	#data 0xFF40
	#align4

loc_8c186918:
	#data 0x8C33A130
loc_8c18691c:
	#data 0x8C33C56C
loc_8c186920:
	#data bank1c.loc_8c1c5964
loc_8c186924:
	#data bank19.loc_8c1986DA
loc_8c186928:
	#data 0x8C33A154
loc_8c18692C:
	#data loc_8c186D46
loc_8c186930:
	#data 0xFFFF0000

;==============================================
loc_8c186934:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l @(loc_8c1869B0,pc),r4 ; r4 set to 0x8C33A134
	mov.l r11,@-r15
	mov 0x00,r11 ; r11 set to 0x00
	mov.w @(loc_8c1869AE,pc),r14 ; r14 set to 0x400
	sts.l pr,@-r15
	mov.l r11,@r4 ; r4 ??
	mov r14,r6 ; r6 set to 0x400
	mov.l r11,@(0x04,r4)
	mov.l r11,@(0x08,r4)
	mov.l r11,@(0x0C,r4)
	mov.l r11,@(0x10,r4)
	mov.l r11,@(0x14,r4)
	mov.l r11,@(0x18,r4)
	mov.l r11,@(0x1C,r4)
	mov.l @(loc_8c1869B8,pc),r4 ; r4 set to 0x8C33A154
	mov.l @(loc_8c1869B4,pc),r13 ; r13 set to 0x8C129728
	jsr @r13
	mov r11,r5 ; r5 set to 0x00
	mov.l @(loc_8c1869BC,pc),r4 ; r4 set to 0x8C33A554
	mov r14,r6 ; r6 set to 0x400
	jsr @r13
	mov 0x30,r5 ; r5 set to 0x30
	mov.l @(loc_8c1869C0,pc),r4 ; r4 set to 0x8C33A954
	mov r14,r6 ; r6 set to 0x400
	jsr @r13
	mov 0x31,r5 ; r5 set to 0x31
	mov.l @(loc_8c1869C4,pc),r4 ; r4 set to 0x8C33AD54
	mov r14,r6 ; r6 set to 0x400
	jsr @r13
	mov 0x32,r5 ; r5 set to 0x32
	mov.l @(loc_8c1869C8,pc),r4 ; r4 set to 0x8C33B154
	mov r14,r6 ; r6 set to 0x400
	jsr @r13
	mov 0x33,r5 ; r5 set to 0x33
	mov.l @(loc_8c1869CC,pc),r4 ; r4 set to 0x8C33B554
	mov r14,r6 ; r6 set to 0x400
	jsr @r13
	mov 0x34,r5 ; r5 set to 0x34
	mov.l @(loc_8c1869D0,pc),r4 ; r4 set to 0x8C33B954
	mov r14,r6 ; r6 set to 0x400
	jsr @r13
	mov 0x35,r5 ; r5 set to 0x35
	mov.l @(loc_8c1869D4,pc),r4 ; r4 set to 0x8C33BD54
	mov r14,r6 ; r6 set to 0x400
	jsr @r13
	mov 0x36,r5 ; r5 set to 0x36
	mov.l @(loc_8c1869D8,pc),r4 ; r4 set to 0x8C33C154
	mov r14,r6 ; r6 set to 0x400
	jsr @r13
	mov 0x37,r5 ; r5 set to 0x37
	mov.l @(loc_8c1869DC,pc),r3 ; r3 set to 0x8C198358
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c1869E0
	bra loc_8c186A54
	mov 0xFF,r0


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1869AE:
	#data 0x0400
	#align4

loc_8c1869B0:
	#data 0x8C33A134
loc_8c1869B4:
	#data bank12.loc_8c129728
loc_8c1869B8:
	#data 0x8C33A154
loc_8c1869BC:
	#data 0x8C33A554
loc_8c1869C0:
	#data 0x8C33A954
loc_8c1869C4:
	#data 0x8C33AD54
loc_8c1869C8:
	#data 0x8C33B154
loc_8c1869CC:
	#data 0x8C33B554
loc_8c1869D0:
	#data 0x8C33B954
loc_8c1869D4:
	#data 0x8C33BD54
loc_8c1869D8:
	#data 0x8C33C154
loc_8c1869DC:
	#data bank19.loc_8c198358

;==============================================
loc_8c1869e0:
	mov 0x01,r3
	mov.l @(loc_8c186a98,pc),r13
	tst r12,r3
	bt loc_8c1869f0
	mov.l @(loc_8c186aa0,pc),r4
	mov.l @(loc_8C186A9C,pc),r5
	jsr @r13
	mov r14,r6

loc_8c1869f0:
	mov 0x02,r3
	tst r12,r3
	bt loc_8c1869fe
	mov.l @(loc_8c186aa8,pc),r4
	mov.l @(loc_8C186AA4,pc),r5
	jsr @r13
	mov r14,r6

loc_8c1869fe:
	mov 0x04,r3
	tst r12,r3
	bt loc_8c186a0c
	mov.l @(loc_8c186ab0,pc),r4
	mov.l @(loc_8C186AAC,pc),r5
	jsr @r13
	mov r14,r6

loc_8c186a0c:
	mov 0x08,r3
	tst r12,r3
	bt loc_8c186a1a
	mov.l @(loc_8c186ab8,pc),r4
	mov.l @(loc_8C186AB4,pc),r5
	jsr @r13
	mov r14,r6

loc_8c186a1a:
	mov 0x10,r3
	tst r12,r3
	bt loc_8c186a28
	mov.l @(loc_8c186ac0,pc),r4
	mov.l @(loc_8C186ABC,pc),r5
	jsr @r13
	mov r14,r6

loc_8c186a28:
	mov 0x20,r3
	tst r12,r3
	bt loc_8c186a36
	mov.l @(loc_8c186ac8,pc),r4
	mov.l @(loc_8C186AC4,pc),r5
	jsr @r13
	mov r14,r6

loc_8c186a36:
	mov 0x40,r3
	tst r12,r3
	bt loc_8c186a44
	mov.l @(loc_8c186ad0,pc),r4
	mov.l @(loc_8C186ACC,pc),r5
	jsr @r13
	mov r14,r6

loc_8c186a44:
	mov.w @(loc_8C186A94,pc),r3
	tst r3,r12
	bt loc_8c186a52
	mov.l @(loc_8c186ad8,pc),r4
	mov.l @(loc_8C186AD4,pc),r5
	jsr @r13
	mov r14,r6

loc_8c186a52:
	mov 0x00,r0

loc_8c186A54:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c186A60:
sts.l pr,@-r15
mov.l @(loc_8c186AE0,pc),r3 ; r3 set to 0x8C129728
	mov.l @(loc_8c186ADC,pc),r4 ; r4 set to 0x8C33A154
	mov.w @(loc_8c186A96,pc),r6 ; r6 set to 0x400
	jsr @r3
	mov 0x00,r5 ; r5 set to 0x00
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c186A72:
	mov.l @(loc_8c186AE4,pc),r3 ; r3 set to 0x8C198386
	jmp @r3
	nop

loc_8c186A78:
	bra loc_8c186AEA
	mov 0x00,r4

loc_8c186A7C:
	bra loc_8c186AEA
	mov 0x01,r4

loc_8c186A80:
	bra loc_8c186AEA
	mov 0x02,r4

loc_8c186A84:
	bra loc_8c186AEA
	mov 0x03,r4

loc_8c186A88:
	bra loc_8c186AEA
	mov 0x04,r4

loc_8c186A8C:
	bra loc_8c186AEA
	mov 0x05,r4

loc_8c186A90:
	bra loc_8c186AEA
	mov 0x06,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c186a94:
	#data 0x0080
loc_8c186A96:
	#data 0x0400
	#align4

loc_8c186A98:
	#data bank19.loc_8c19836E
loc_8c186a9c:
	#data 0x8C33A554
loc_8c186AA0:
	#data loc_8c186A78
loc_8c186aa4:
	#data 0x8C33A954
loc_8c186AA8:
	#data loc_8c186A7C
loc_8c186aac:
	#data 0x8C33AD54
loc_8c186AB0:
	#data loc_8c186A80
loc_8c186ab4:
	#data 0x8C33B154
loc_8c186AB8:
	#data loc_8c186A84
loc_8c186abc:
	#data 0x8C33B554
loc_8c186AC0:
	#data loc_8c186A88
loc_8c186ac4:
	#data 0x8C33B954
loc_8c186AC8:
	#data loc_8c186A8C
loc_8c186acc:
	#data 0x8C33BD54
loc_8c186AD0:
	#data loc_8c186A90
loc_8c186ad4:
	#data 0x8C33C154
loc_8c186AD8:
	#data loc_8c186AE8
loc_8c186ADC:
	#data 0x8C33A154
loc_8c186AE0:
	#data bank12.loc_8c129728
loc_8c186AE4:
	#data bank19.loc_8c198386

;==============================================
loc_8c186AE8:
	mov 0x07,r4

loc_8c186AEA:
	mov r4,r14
	shll2 r14
	shll2 r14
	mov.l @(loc_8c186B24,pc),r3 ; r3 set to 0x8C33A154
	mov.l @(loc_8c186B2C,pc),r2 ; r2 set to 0x8C33A134
	mov r4,r9
	shll2 r14
	mov.w @(loc_8c186B20,pc),r10 ; r10 set to 0xFF01
	shll2 r9
	mov.l @(loc_8c186B28,pc),r8 ; r8 set to 0x8C187502
	shll r14
	mov r4,r11
	add r2,r9
	add r3,r14
	mov 0x00,r13 ; r13 set to 0x00

loc_8c186B08:
	mov.l @(0x08,r14),r0
	mov 0x15,r1 ; r1 set to 0x15, r1 set to 0x15
	cmp/hs r1,r0
	bf loc_8c186B14
	bra loc_8c186CD6
	nop

loc_8c186B14:
	shll r0
	mov r0,r1
	mova @(loc_8c186B30,pc),r0  ; r0 set to 0x8C186B30
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???

braf_8c186b1c:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c186B20:
	#data 0xFF01
	#align4

loc_8c186B24:
	#data 0x8C33A154
loc_8c186B28:
	#data loc_8c187502
loc_8c186B2C:
	#data 0x8C33A134

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c186B30:
	#data16 {loc_8c186cd6-braf_8c186b1c-4} ; 0x01B6
	#data16 {loc_8c186b66-braf_8c186b1c-4} ; 0x0046
	#data16 {loc_8c186cd6-braf_8c186b1c-4} ; 0x01B6
	#data16 {loc_8c186b74-braf_8c186b1c-4} ; 0x0054
	#data16 {loc_8c186b90-braf_8c186b1c-4} ; 0x0070
	#data16 {loc_8c186ba2-braf_8c186b1c-4} ; 0x0082
	#data16 {loc_8c186bb6-braf_8c186b1c-4} ; 0x0096
	#data16 {loc_8c186bca-braf_8c186b1c-4} ; 0x00Aa
	#data16 {loc_8c186bdc-braf_8c186b1c-4} ; 0x00Bc
	#data16 {loc_8c186c08-braf_8c186b1c-4} ; 0x00E8
	#data16 {loc_8c186bf2-braf_8c186b1c-4} ; 0x00D2
	#data16 {loc_8c186c38-braf_8c186b1c-4} ; 0x0118
	#data16 {loc_8c186c4e-braf_8c186b1c-4} ; 0x012e
	#data16 {loc_8c186c6e-braf_8c186b1c-4} ; 0x014e
	#data16 {loc_8c186c8e-braf_8c186b1c-4} ; 0x016e
	#data16 {loc_8c186c18-braf_8c186b1c-4} ; 0x00F8
	#data16 {loc_8c186c28-braf_8c186b1c-4} ; 0x0108
	#data16 {loc_8c186ca8-braf_8c186b1c-4} ; 0x0188
	#data16 {loc_8c186b5a-braf_8c186b1c-4} ; 0x003a
	#data16 {loc_8c186cd6-braf_8c186b1c-4} ; 0x01B6
	#data16 {loc_8c186cba-braf_8c186b1c-4} ; 0x019a

;==============================================
loc_8c186b5a:
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x10,r14)
	jsr @r8
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186b66:
	mov.l @(0x14,r14),r3
	mov.l @(0x1FC,PC),r2
	mov.l r3,@(0x10,r14)
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186b74:
	mov.l @(0x14,r14),r2
	mov r14,r5
	mov r14,r7
	add 0x4C,r5
	mov.l r2,@(0x10,r14)
	add 0x6C,r7
	mov.l @(0x24,r14),r3
	mov.l @(0x1E8,PC),r2
	mov.l r3,@-r15
	mov.l @(0x1C,r14),r6
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	add 0x04,r15

loc_8c186b90:
	mov.l @(0x14,r14),r2
	mov.l @(0x28,r2),r3
	mov.l @(0x1D8,PC),r2
	mov.l r3,@(0x10,r14)
	mov.l @(0x18,r14),r5
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186ba2:
	mov.l @(0x14,r14),r2
	mov.l @(0x28,r2),r3
	mov.l @(0x1CC,PC),r2
	mov.l r3,@(0x10,r14)
	mov.l @(0x18,r14),r5
	mov.l @(0x1C,r14),r6
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186bb6:
	mov.l @(0x14,r14),r2
	mov.l @(0x28,r2),r3
	mov.l @(0x1BC,PC),r2
	mov.l r3,@(0x10,r14)
	mov.l @(0x18,r14),r5
	mov.l @(0x1C,r14),r6
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186bca:
	mov.l @(0x14,r14),r2
	mov r14,r5
	mov.l @(0x1AC,PC),r3
	add 0x2C,r5
	mov.l r2,@(0x10,r14)
	jsr @r3
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186bdc:
	mov.l @(0x14,r14),r3
	mov r14,r5
	mov r14,r6
	mov.l @(0x19C,PC),r2
	add 0x2C,r5
	mov.l r3,@(0x10,r14)
	add 0x3C,r6
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186bf2:
	mov.l @(0x14,r14),r2
	mov r14,r5
	mov.l @(0x18C,PC),r3
	add 0x2C,r5
	mov.l r2,@(0x10,r14)
	mov.l @(0x1C,r14),r6
	mov.l @(0x20,r14),r7
	jsr @r3
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186c08:
	mov.l @(0x14,r14),r3
	mov.l @(0x17C,PC),r2
	mov.l r3,@(0x10,r14)
	mov.l @(0x18,r14),r5
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186c18:
	mov.l @(0x14,r14),r2
	mov.l @(0x170,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l @(0x18,r14),r5
	jsr @r3
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186c28:
	mov.l @(0x14,r14),r3
	mov.l @(0x164,PC),r2
	mov.l r3,@(0x10,r14)
	mov.l @(0x18,r14),r5
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186c38:
	mov.l @(0x14,r14),r2
	mov r14,r5
	mov.l @(0x154,PC),r3
	add 0x2C,r5
	mov.l r2,@(0x10,r14)
	mov.l @(0x1C,r14),r6
	mov.l @(0x20,r14),r7
	jsr @r3
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186c4e:
	mov.l @(0x14,r14),r3
	mov r14,r5
	add 0x2C,r5
	mov.l r3,@(0x10,r14)
	mov r14,r3
	mov.l @(0x28,r14),r2
	add 0x6C,r3
	mov.l r2,@-r15
	mov.l @(0x138,PC),r2
	mov.l r3,@-r15
	mov.l @(0x1C,r14),r6
	mov.l @(0x20,r14),r7
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	add 0x08,r15

loc_8c186c6e:
	mov.l @(0x14,r14),r2
	mov r14,r5
	add 0x2C,r5
	mov.l r2,@(0x10,r14)
	mov r14,r2
	mov.l @(0x28,r14),r3
	add 0x6C,r2
	mov.l r3,@-r15
	mov.l @(0x11C,PC),r3
	mov.l r2,@-r15
	mov.l @(0x1C,r14),r6
	mov.l @(0x20,r14),r7
	jsr @r3
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	add 0x08,r15

loc_8c186c8e:
	mov.l @(0x14,r14),r3
	mov r14,r5
	add 0x2C,r5
	mov.l r3,@(0x10,r14)
	mov.l @(0x24,r14),r2
	mov.l @(0x104,PC),r3
	mov.l r2,@-r15
	mov.l @(0x1C,r14),r6
	mov.l @(0x20,r14),r7
	jsr @r3
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	add 0x04,r15

loc_8c186ca8:
	mov.l @(0x14,r14),r3
	mov.l @(0xF8,PC),r2
	mov.l r3,@(0x10,r14)
	mov.l @(0x18,r14),r5
	mov.l @(0x1C,r14),r6
	jsr @r2
	mov.l @(0x14,r14),r4
	bra loc_8c186cd2
	nop 

loc_8c186cba:
	mov.l @(0x14,r14),r2
	mov r14,r5
	add 0x2C,r5
	mov.l r2,@(0x10,r14)
	mov.l @(0x24,r14),r3
	mov.l @(0xE0,PC),r2
	mov.l r3,@-r15
	mov.l @(0x1C,r14),r6
	mov.l @(0x20,r14),r7
	jsr @r2
	mov.l @(0x14,r14),r4
	add 0x04,r15

loc_8c186cd2:
	bra loc_8c186ce0
	mov r0,r12

;==============================================
loc_8c186CD6:
	mov.l @(loc_8c186DAC,pc),r2 ; r2 set to 0x8C198396
	jsr @r2
	nop
	bra loc_8c186B08
	nop

;==============================================
loc_8c186ce0:
	cmp/eq r10,r12
	bf loc_8c186cea
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov.l @(0x10,r14),r4

loc_8c186cea:
	mov 0x7C,r0
	mov.l r12,@r9
	mov.l @(r0,r14),r7
	mov 0x74,r0
	mov.l @(0x8,r14),r5
	mov.l r13,@r14
	mov.l r13,@(0x4,r14)
	mov.l r13,@(0x8,r14)
	mov.l r13,@(0xC,r14)
	mov.l r13,@(0x10,r14)
	mov.l r13,@(0x14,r14)
	mov.l r13,@(0x18,r14)
	mov.l r13,@(0x1C,r14)
	mov.l r13,@(0x20,r14)
	mov.l r13,@(0x24,r14)
	mov.l r13,@(0x28,r14)
	mov.l @(r0,r14),r3
	tst r3,r3
	bf loc_8c186d14
	bra loc_8c186b08
	nop 

loc_8c186d14:
	mov.l @(r0,r14),r3
	mov r12,r6
	jsr @r3
	mov r11,r4
	bra loc_8c186b08
	nop 

loc_8c186D20:
	mov.l r14,@-r15
	mov r4,r14
	shll2 r14
	mov.l @(loc_8c186DB4,pc),r3 ; r3 set to 0x8C33A154
	shll2 r14
	shll2 r14
	shll r14
	mov 0x74,r0 ; r0 set to 0x74
	add r3,r14
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c186D42
	mov.l @(r0,r14),r2
	mov 0x7C,r0 ; r0 set to 0x7C
	mov.l @(r0,r14),r7
	jmp @r2
	mov.l @r15+,r14

loc_8c186D42:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c186D46:
	mov.l r14,@-r15
	mov r4,r14
	shll2 r14
	mov.l @(loc_8c186DB4,pc),r3 ; r3 set to 0x8C33A154
	shll2 r14
	shll2 r14
	shll r14
	mov 0x78,r0 ; r0 set to 0x78
	add r3,r14
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c186D64
	mov.l @(r0,r14),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c186D64:
	rts
	mov.l @r15+,r14

;==============================================
	#align4
loc_8c186D68:
	#data loc_8c187408
loc_8c186D6C:
	#data loc_8c187788
loc_8c186D70:
	#data loc_8c188306
loc_8c186D74:
	#data loc_8c188752
loc_8c186D78:
	#data loc_8c18846E
loc_8c186D7C:
	#data loc_8c188E88
loc_s8c186D80:
	#data loc_8c189086
loc_8c186D84:
	#data loc_8c1893AC
loc_8c186D88:
	#data loc_8c189990
loc_8c186D8C:
	#data loc_8c18A6EC
loc_8c186D90:
	#data loc_8c18A776
loc_8c186D94:
	#data loc_8c18A7E2
loc_8c186D98:
	#data loc_8c18A884
loc_8c186D9C:
	#data loc_8c18AA84
loc_8c186DA0:
	#data loc_8c18AD1A
loc_8c186DA4:
	#data loc_8c188F68
loc_8c186DA8:
	#data loc_8c18AE3E
loc_8c186DAC:
	#data bank19.loc_8c198396
loc_8c186DB0:
	#data loc_8c187672
loc_8c186DB4:
	#data 0x8C33A154

;==============================================
loc_8c186DB8:
	add 0xFC,r15
	mov.l @(loc_8c186E78,pc),r5 ; r5 set to 0x8C33A154
	mov.w @(loc_8c186E76,pc),r3 ; r3 set to 0x400
	mov r5,r7 ; r7 set to 0x8C33A154
	mov.w @(loc_8c186E74,pc),r6 ; r6 set to 0x80
	add r3,r7 ; r7 set to 0x8C33A554
	mov.l r5,@r15

loc_8c186DC6:
	mov 0x74,r0 ; r0 set to 0x74, r0 set to 0x74
	mov.l r4,@(r0,r5)  ; r5 ??? bc r4 is ???
	add r6,r5
	cmp/hs r7,r5
	bf loc_8c186DC6
	rts
	add 0x04,r15

;==============================================
loc_8c186DD4:
	add 0xFC,r15
	mov.l @(loc_8c186E78,pc),r5 ; r5 set to 0x8C33A154
	mov.w @(loc_8c186E76,pc),r3 ; r3 set to 0x400
	mov r5,r7 ; r7 set to 0x8C33A154
	mov.w @(loc_8c186E74,pc),r6 ; r6 set to 0x80
	add r3,r7 ; r7 set to 0x8C33A554
	mov.l r5,@r15

loc_8c186DE2:
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	mov.l r4,@(r0,r5)  ; r5 ??? bc r4 is ???
	add r6,r5
	cmp/hs r7,r5
	bf loc_8c186DE2
	rts
	add 0x04,r15

;==============================================
loc_8c186DF0:
	add 0xFC,r15
	mov.l @(loc_8c186E78,pc),r5 ; r5 set to 0x8C33A154
	mov.w @(loc_8c186E76,pc),r3 ; r3 set to 0x400
	mov r5,r7 ; r7 set to 0x8C33A154
	mov.w @(loc_8c186E74,pc),r6 ; r6 set to 0x80
	add r3,r7 ; r7 set to 0x8C33A554
	mov.l r5,@r15

loc_8c186DFE:
	mov 0x7C,r0 ; r0 set to 0x7C, r0 set to 0x7C
	mov.l r4,@(r0,r5)  ; r5 ??? bc r4 is ???
	add r6,r5
	cmp/hs r7,r5
	bf loc_8c186DFE
	rts
	add 0x04,r15

;==============================================
loc_8c186E0C:
	shll2 r4
	mov.l @(loc_8c186E78,pc),r3 ; r3 set to 0x8C33A154
	shll2 r4
	shll2 r4
	shll r4
	add r3,r4
	rts
	mov.l @(0x04,r4),r0

;==============================================
loc_8c186E1C:
	shll2 r4
	mov.l @(loc_8c186E78,pc),r3 ; r3 set to 0x8C33A154
	shll2 r4
	shll2 r4
	shll r4
	add r3,r4
	rts
	mov.l r5,@(0x08,r4)

;==============================================
loc_8c186E2C:
	shll2 r4
	mov.l @(loc_8c186E78,pc),r3 ; r3 set to 0x8C33A154
	shll2 r4
	shll2 r4
	shll r4
	add r3,r4
	mov.l r5,@(0x14,r4)
	mov.l r6,@(0x18,r4)
	mov.l r7,@(0x1C,r4)
	mov.l @r15,r2
	mov.l r2,@(0x20,r4)
	mov.l @(0x04,r15),r1
	mov.l r1,@(0x24,r4)
	mov 0x01,r1 ; r1 set to 0x01
	mov.l @(0x08,r15),r2
	mov.l r2,@(0x28,r4)
	rts
	mov.l r1,@(0x04,r4)

;==============================================
loc_8c186E50:
	mov r4,r6
	shll2 r6
	shll2 r6
	mov.l @(loc_8c186E78,pc),r3 ; r3 set to 0x8C33A154
	shll2 r6
	shll r6
	add r3,r6
	mov r6,r4
	add 0x4C,r4

loc_8c186E62:
	mov.b @r5+,r3 ; r3 ??? bc r5 is ???
	mov r6,r2
	add 0x6C,r2
	mov.b r3,@r4
	add 0x01,r4
	cmp/hs r2,r4
	bf loc_8c186E62
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c186E74:
	#data 0x0080
loc_8c186E76:
	#data 0x0400
	#align4

loc_8c186E78:
	#data 0x8C33A154

;==============================================
loc_8c186E7C:
	mov r4,r7
	shll2 r7
	shll2 r7
	mov.l @(0x88,PC),r3
	shll2 r7
	mov.l r14,@-r15
	shll r7
	add r3,r7
	mov r7,r4
	add 0x2C,r4
	mov 0x00,r14

loc_8c186E92:
	mov r7,r2
	mov.b r14,@r4
	add 0x39,r2
	add 0x01,r4
	cmp/hs r2,r4
	bf loc_8c186e92
	mov r7,r4
	add 0x3C,r4

loc_8c186EA2:
	mov r7,r2
	mov.b r14,@r4
	add 0x49,r2
	add 0x01,r4
	cmp/hs r2,r4
	bf loc_8c186ea2
	mov r5,r0
	mov r5,r4
	add 0x0C,r5
	mov r7,r14
	cmp/hs r5,r4
	bt/s loc_8c186ece
	add 0x2C,r14

loc_8c186EBC:
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c186ece
	mov.b @r0+,r3
	add 0x01,r4
	cmp/hs r5,r4
	mov.b r3,@r14
	bf/s loc_8c186ebc
	add 0x01,r14

loc_8c186ECE:
	mov r6,r14
	mov r6,r4
	add 0x0C,r6
	mov r7,r5
	cmp/hs r6,r4
	bt/s loc_8c186eee
	add 0x3C,r5

loc_8c186EDC:
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c186eee
	mov.b @r14+,r3
	add 0x01,r4
	cmp/hs r6,r4
	mov.b r3,@r5
	bf/s loc_8c186edc
	add 0x01,r5

loc_8c186EEE:
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c186EF2:
	add 0xFC,r15
	shll2 r4
	mov.l @(loc_8c186F0C,pc),r3 ; r3 set to 0x8C33A154
	shll2 r4
	mov.l @(loc_8c186F10,pc),r2 ; r2 set to 0x8C129668
	shll2 r4
	shll r4
	add r3,r4
	mov.l r4,@r15
	add 0x6C,r4
	mov 0x08,r6 ; r6 set to 0x08
	jmp @r2
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c186F0C:
	#data 0x8C33A154
loc_8c186F10:
	#data bank12.loc_8c129668

;==============================================
loc_8c186f14:
	mov.l r14,@-r15
	mov 0x03,r5
	sts.l pr,@-r15
	mov r15,r0
	add 0x08,r0
	add 0x04,r0
	tst r0,r5
	bt loc_8c186f2c
	mov r15,r5
	add 0x08,r5
	bra loc_8c186f32
	add 0x08,r5

loc_8c186f2c:
	mov r15,r5
	add 0x08,r5
	add 0x04,r5

loc_8c186f32:
	mov.l @(0xC8,PC),r3
	mov r5,r6
	mov.l @(0xC0,PC),r4
	jsr @r3
	mov.l @(0x8,r15),r5
	mov.l @(0xC0,PC),r2
	mov.l @r2,r14
	tst r14,r14
	bt loc_8c186f4a
	mov.l @(0xB0,PC),r4
	jsr @r14
	nop 

loc_8c186f4a:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c186F50:
	mov.l @(0xB0,PC),r5
	mov 0x01,r3
	and r3,r4
	mov.l @r5,r2
	mov r4,r0
	cmp/eq 0x01,r0
	mov.l r4,@r2
	bf/s loc_8c186f70
	mov.l @r5,r6
	mov.l @(0xA4,PC),r2
	mov.l r2,@(0xC,r6)
	mov.l @(0xA4,PC),r2
	mov.l @r5,r1
	mov.l r2,@(0x10,r1)
	bra loc_8c186f7a
	nop 

loc_8c186F70:
	mov.l @(0xA0,PC),r1
	mov.l @(0x9C,PC),r0
	mov.l r0,@(0xC,r6)
	mov.l @r5,r2
	mov.l r1,@(0x10,r2)

loc_8c186F7A:
	rts 
	nop 

;==============================================
loc_8c186F7E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r10
	mov.l @(0x88,PC),r6
	mov.l @(0x84,PC),r3
	mov r5,r12
	mov.l @(0x6C,PC),r9
	mov r6,r5
	mov.l r4,@r15
	add 0x20,r5
	mov 0x00,r14
	mov.l r3,@r9
	mov r6,r4

loc_8c186FA4:
	mov.l r14,@r4
	add 0x04,r4
	cmp/hs r5,r4
	bf loc_8c186fa4
	mov.l @(0x68,PC),r4
	mov 0x14,r6
	mov.l @(0x6C,PC),r11
	jsr @r11
	mov 0x00,r5
	mov.l @(0x6C,PC),r4
	mov.w @(0x38,PC),r6
	jsr @r11
	mov 0x00,r5
	bsr loc_8c186f50
	mov 0x00,r4
	mov.l @(0x64,PC),r4
	mov 0x00,r2
	mov r14,r5
	mov 0x01,r6
	mov.l r2,@r4
	mov 0x08,r13

loc_8c186FCE:
	mov r12,r3
	tst r6,r3
	bt/s loc_8c186fdc
	add 0x01,r5
	mov.l @r4,r1
	add 0x01,r1
	mov.l r1,@r4

loc_8c186FDC:
	shll r6
	cmp/ge r13,r5
	bf loc_8c186fce
	tst r10,r10
	bt loc_8c18702c
	mov r12,r5
	mov r10,r6
	bsr loc_8c1870b4
	mov.l @r15,r4
	mov.l @r9,r2
	bra loc_8c18703a
	mov.l r14,@(0x8,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c186FF4:
	#data 0x0A40
	#align4

loc_8c186FF8:
	#data 0x8C342478
loc_8c186FFC:
	#data bank12.loc_8c129804
loc_8c187000:
	#data bank1c.loc_8c1c96D8
loc_8c187004:
	#data 0x8C33C568
loc_8c187008:
	#data bank19.loc_8c198338
loc_8c18700C:
	#data bank19.loc_8c19834A
loc_8c187010:
	#data bank19.loc_8c198342
loc_8c187014:
	#data bank19.loc_8c198352
loc_8c187018:
	#data 0x8C33C554
loc_8c18701c:
	#data 0x8C33CFAC
loc_8c187020:
	#data bank12.loc_8c129728
loc_8c187024:
	#data 0x8C33C56C
loc_8c187028:
	#data 0x8C341474

;==============================================
loc_8c18702C:
	mov r12,r5
	mov r10,r6
	bsr loc_8c187078
	mov.l @r15,r4
	mov.l @r9,r2
	mov 0x01,r3
	mov.l r3,@(0x8,r2)

loc_8c18703A:
	mov.l @(0xE4,PC),r3
	mov.l @(0xDC,PC),r2
	mov.l @(0xE4,PC),r1
	mov.l r13,@r2
	mov.l r14,@r3
	jsr @r1
	mov 0x0A,r4
	mov.l @(0xD0,PC),r2
	mov.l @(0xDC,PC),r4
	mov.l @r2,r6
	mov r6,r3
	shll2 r6
	shll r6
	add r3,r6
	shll2 r6
	shll r6
	jsr @r11
	mov 0x00,r5
	mov.l @(0xCC,PC),r3
	jsr @r3
	nop 
	mov r14,r0
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
loc_8c187078:
	mov r4,r0
	mov.l @(0xB4,PC),r3
	cmp/eq 0x0F,r0
	bt/s loc_8c187092
	mov.l @r3,r5
	cmp/eq 0x21,r0
	bt loc_8c187098
	cmp/eq 0x41,r0
	bt loc_8c18709c
	cmp/eq 0x7A,r0
	bt loc_8c1870a2
	bra loc_8c1870a8
	nop 

loc_8c187092:
	mov 0x00,r2
	bra loc_8c1870ae
	mov.l r2,@(0x4,r5)

loc_8c187098:
	bra loc_8c1870a4
	mov 0x01,r0

loc_8c18709C:
	mov 0x02,r1
	bra loc_8c1870ae
	mov.l r1,@(0x4,r5)

loc_8c1870A2:
	mov 0x03,r0

loc_8c1870A4:
	bra loc_8c1870ae
	mov.l r0,@(0x4,r5)

loc_8c1870A8:
	mov.w @(0x6E,PC),r0
	rts 
	nop 

;==============================================
loc_8c1870AE:
	mov 0x00,r0
	rts 
	nop 

;==============================================
loc_8c1870B4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.l r5,@(0x4,r15)
	mov r4,r0
	mov.l @(0x64,PC),r3
	cmp/eq 0x0F,r0
	mov.l @(0x6C,PC),r5
	mov 0x01,r10
	mov.l @(0x60,PC),r14
	mov 0x00,r13
	mov.l @(0x60,PC),r12
	bt/s loc_8c1870ec
	mov.l @r3,r7
	cmp/eq 0x21,r0
	bt loc_8c1870f4
	cmp/eq 0x41,r0
	bt loc_8c1870fe
	cmp/eq 0x7A,r0
	bt loc_8c187108
	bra loc_8c187114
	nop 

loc_8c1870EC:
	mov.l r13,@(0x4,r7)
	mov.l @r12,r8
	bra loc_8c1870fa
	mov.l @r5,r2

loc_8c1870F4:
	mov.l r10,@(0x4,r7)
	mov.l @(0x4,r5),r2
	mov.l @(0x4,r12),r8

loc_8c1870FA:
	bra loc_8c187140
	mov.l r2,@(0x10,r15)

loc_8c1870FE:
	mov 0x02,r2
	mov.l r2,@(0x4,r7)
	mov.l @(0x8,r12),r8
	bra loc_8c187110
	mov.l @(0x8,r5),r1

loc_8c187108:
	mov 0x03,r2
	mov.l r2,@(0x4,r7)
	mov.l @(0xC,r12),r8
	mov.l @(0xC,r5),r1

loc_8c187110:
	bra loc_8c187140
	mov.l r1,@(0x10,r15)

loc_8c187114:
	mov.w @(0x2,PC),r0
	bra loc_8c1871f6
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18711a:
	#data 0xFF00
	#align4

loc_8c18711c:
	#data 0x8C34146C
loc_8c187120:
	#data 0x8C341470
loc_8c187124:
	#data loc_8c18669C
loc_8c187128:
	#data 0x8C34122C
loc_8c18712C:
	#data bank19.loc_8c1983C4
loc_8c187130:
	#data 0x8C33C568
loc_8c187134:
	#data 0x8C33C56C
loc_8c187138:
	#data bank1c.loc_8c1c96DC
loc_8c18713C:
	#data bank1c.loc_8c1c96EC

;==============================================
loc_8c187140:
	mov r8,r3
	shll8 r4
	add 0x01,r3
	mov.l @(0x100,PC),r12
	shll r4
	mov r6,r11
	add 0x20,r4
	mov r13,r9
	shll8 r3
	mov.l r4,@(0x8,r15)
	shll r3
	mov.l r10,@r15
	bra loc_8c1871ee
	mov.l r3,@(0xC,r15)

loc_8c18715C:
	mov.l @(0x4,r15),r2
	mov.l @r15,r3
	tst r3,r2
	bt loc_8c1871e2
	mov 0x4C,r3
	mov.l @(0xE4,PC),r2
	mul.l r3,r9
	mov r10,r0
	mov.b r0,@(0x2,r14)
	mov r13,r0
	mov.w @(0xCC,PC),r1
	mov.w r9,@r14
	sts macl,r3
	add r11,r1
	add r2,r3
	mov.l r3,@(0x1C,r14)
	mov r11,r3
	mov.b r0,@(0xA,r14)
	add 0x20,r3
	mov.b r0,@(0xB,r14)
	mov.b r0,@(0xC,r14)
	mov r13,r0
	mov.l r11,@(0x2C,r14)
	mov.l r3,@(0x20,r14)
	mov.l r1,@(0x24,r14)
	mov.l @(0xC,r15),r3
	add r11,r3
	add 0x20,r3
	mov.l r3,@(0x28,r14)
	mov.b r0,@(0x8,r14)
	mov.b r0,@(0x9,r14)
	mov r10,r0
	mov.w r0,@(0xE,r14)
	mov r8,r0
	mov.w r0,@(0x10,r14)
	mov.w @(0x10,r15),r0
	mov.w r0,@(0x12,r14)
	mov 0x20,r0
	mov 0x00,r5
	mov r14,r4
	mov.w r0,@(0x14,r14)
	mov 0x10,r6
	jsr @r12
	add 0x38,r4
	mov.w @(0x8A,PC),r6
	mov r14,r4
	mov 0x00,r5
	jsr @r12
	add 0x48,r4
	mov 0x47,r5
	mov 0x20,r6
	jsr @r12
	mov.l @(0x2C,r14),r4
	mov 0x53,r5
	mov 0x20,r6
	jsr @r12
	mov.l @(0x20,r14),r4
	mov 0x46,r5
	mov 0x20,r6
	jsr @r12
	mov.l @(0x24,r14),r4
	mov 0x44,r5
	mov 0x20,r6
	jsr @r12
	mov.l @(0x28,r14),r4
	mov.l @(0x8,r15),r3
	add r3,r11

loc_8c1871E2:
	mov.l @r15,r3
	add 0x01,r9
	mov.w @(0x5A,PC),r2
	shll r3
	add r2,r14
	mov.l r3,@r15

loc_8c1871EE:
	mov 0x08,r3
	cmp/ge r3,r9
	bf loc_8c18715c
	mov 0x00,r0

loc_8c1871F6:
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

;==============================================
loc_8c18720a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x30,PC),r3
	mov r4,r2
	mov.l @(0x38,PC),r1
	mov 0x00,r5
	mul.l r3,r2
	mov.l @(0x2C,PC),r2
	mov r3,r6
	mov.l r4,@r15
	sts macl,r14
	add r1,r14
	jsr @r2
	mov r14,r4
	mov.l @r15,r2
	mov 0x4C,r3
	mov.l @(0x1C,PC),r1
	mov 0x00,r0
	mul.l r3,r2
	sts macl,r3
	add r1,r3
	mov.l r3,@(0x1C,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c187240:
	#data 0x0220
loc_8c187242:
	#data 0x0100
loc_8c187244:
	#data 0x0148
loc_8c187246:
	#align4

loc_8c187248:
	#data bank12.loc_8c129728
loc_8c18724c:
	#data 0x8C340FCC
loc_8c187250:
	#data 0x8C33C56C

;==============================================
loc_8c187254:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c187380,pc),r2 ; r2 set to 0x8C33C568
	mov.l @r2,r3
	mov.l @(0x08,r3),r1
	tst r1,r1
	bt loc_8c1872BC
	tst r5,r5
	bt loc_8c1872BC
	mov.w @(loc_8c187374,pc),r14 ; r14 set to 0x148
	mov.l @(loc_8c187384,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r14,r4
	mov.l @(loc_8c18738C,pc),r12 ; r12 set to 0x8C1C96EC
	mov.l @(loc_8c187388,pc),r7 ; r7 set to 0x8C1C96DC
	sts macl,r14
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.l @(0x04,r14),r2 ; r2 ??
	mov r2,r0
	cmp/eq 0x00,r0
	mov.l r2,@r15
	bt loc_8c187294
	cmp/eq 0x01,r0
	bt loc_8c18729A
	cmp/eq 0x02,r0
	bt loc_8c1872A0
	cmp/eq 0x03,r0
	bt loc_8c1872A6
	bra loc_8c1872BC
	nop

loc_8c187294:
	mov.l @r7,r7
	bra loc_8c1872AA
	mov.l @r12,r13

loc_8c18729A:
	mov.l @(0x04,r7),r7
	bra loc_8c1872AA
	mov.l @(0x04,r12),r13

loc_8c1872A0:
	mov.l @(0x08,r7),r7
	bra loc_8c1872AA
	mov.l @(0x08,r12),r13

loc_8c1872a6:
	mov.l @(0x0C,r12),r13
	mov.l @(0x0C,r7),r7

loc_8c1872aa:
	mov r7,r2
	add r13,r2
	add 0x01,r2
	shll8 r2
	shll r2
	add 0x20,r2
	cmp/gt r6,r2
	bf/s loc_8c1872c2
	mov.l r2,@r15

loc_8c1872BC:
	mov.w @(loc_8c187376,pc),r0 ; r0 set to 0xFF00
	bra loc_8c187350
	nop

loc_8c1872C2:
	mov 0x4C,r3
	mov.l @(0xC8,PC),r2
	mul.l r3,r4
	mov 0x01,r12
	mov r7,r3
	mov r12,r0
	mov.b r0,@(0x2,r14)
	mov.w r4,@r14
	add 0x01,r3
	sts macl,r4
	shll8 r3
	mov r5,r1
	shll r3
	add r2,r4
	mov.l r4,@(0x1C,r14)
	mov 0x00,r4
	mov r4,r0
	mov.b r0,@(0xA,r14)
	mov.b r0,@(0xB,r14)
	add r5,r3
	mov.b r0,@(0xC,r14)
	add 0x20,r3
	mov.w @(0x86,PC),r0
	add 0x20,r1
	mov.l r5,@(0x2C,r14)
	add r5,r0
	mov.l r1,@(0x20,r14)
	mov.l r0,@(0x24,r14)
	mov r12,r0
	mov.l r3,@(0x28,r14)
	mov.w r0,@(0xE,r14)
	mov r7,r0
	mov.w r0,@(0x10,r14)
	mov r13,r0
	mov.w r0,@(0x12,r14)
	mov r4,r5
	mov.l @(0x88,PC),r13
	mov 0x20,r0
	mov r14,r4
	mov.w r0,@(0x14,r14)
	mov 0x10,r6
	jsr @r13
	add 0x38,r4
	mov.w @(0x5E,PC),r6
	mov r14,r4
	mov 0x00,r5
	jsr @r13
	add 0x48,r4
	mov 0x47,r5
	mov 0x20,r6
	jsr @r13
	mov.l @(0x2C,r14),r4
	mov 0x53,r5
	mov 0x20,r6
	jsr @r13
	mov.l @(0x20,r14),r4
	mov 0x46,r5
	mov 0x20,r6
	jsr @r13
	mov.l @(0x24,r14),r4
	mov 0x44,r5
	mov 0x20,r6
	jsr @r13
	mov.l @(0x28,r14),r4
	mov.l @(0x1C,r14),r4
	mov r12,r0
	mov.l @(0x1C,r4),r3
	mov.l r3,@(0x30,r4)
	mov.b r0,@(0x8,r14)
	mov.b r0,@(0x9,r14)
	mov 0x00,r0

loc_8c187350:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18735C:
	sts.l pr,@-r15
	mov.l @(loc_8c187394,pc),r3 ; r3 set to 0x8C129728
	mov.l @(loc_8c187384,pc),r4 ; r4 set to 0x8C33C56C
	mov.w @(loc_8c18737C,pc),r6 ; r6 set to 0xA40
	jsr @r3
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c187398,pc),r2 ; r2 set to 0x8C1983CC
	jsr @r2
	nop
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c187374:
	#data 0x0148
loc_8c187376:
	#data 0xFF00
loc_8c187378:
	#data 0x0220
loc_8c18737a:
	#data 0x0100
loc_8c18737C:
	#data 0x0A40
	#align4

loc_8c187380:
	#data 0x8C33C568
loc_8c187384:
	#data 0x8C33C56C
loc_8c187388:
	#data bank1c.loc_8c1c96DC
loc_8c18738C:
	#data bank1c.loc_8c1c96EC
loc_8c187390:
	#data 0x8C340FCC
loc_8c187394:
	#data bank12.loc_8c129728
loc_8c187398:
	#data bank19.loc_8c1983CC

;==============================================
loc_8c18739C:
	mov.l r14,@-r15
	mov 0x00,r4
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	mov 0x01,r13
	mov.l r11,@-r15
	mov r4,r12
	mov.l r10,@-r15
	mov 0x08,r11
	sts.l pr,@-r15
	mov.l @(0x118,PC),r10

loc_8c1873B4:
	jsr @r10
	mov r14,r4
	tst r0,r0
	bt/s loc_8c1873c0
	add 0x01,r14
	or r13,r12

loc_8c1873C0:
	shll r13
	cmp/ge r11,r14
	bf loc_8c1873b4
	lds.l @r15+,pr
	mov r12,r0
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1873D6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c1874C8,pc),r3 ; r3 set to 0x148
	mov.l @(loc_8c1874D0,pc),r2 ; r2 set to 0x8C33C56C
	mul.l r3,r4
	mov.l @(loc_8c1874D4,pc),r1 ; r1 set to 0x8C198918
	sts macl,r3
	add r2,r3 ; r3 set to 0x8C33C6B4
	jsr @r1
	mov.l r3,@r15
	tst r0,r0
	bt loc_8c1873FE
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	mov.b @(0x08,r2),r0
	tst r0,r0
	bt loc_8c1873FE
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c1873FE:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c187408:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c1874C8,pc),r14 ; r14 set to 0x148
	mov r4,r13
	mov.l @(loc_8c1874D8,pc),r2 ; r2 set to 0x8C33C568
	mul.l r14,r13
	mov.l @r2,r0
	mov.l @(loc_8c1874D0,pc),r3 ; r3 set to 0x8C33C56C
	mov.l @(0x08,r0),r0
	sts macl,r14
	cmp/eq 0x01,r0
	bf/s loc_8c18743A
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov r13,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1875D8
	mov.l @r15+,r14

loc_8c18743a:
	mov.b @(0x02,r14),r0 
	tst r0,r0
	bt loc_8c18748e
	mov.l @(loc_8c1874dc,pc),r0
	mov 0x01,r11
	mov.l r11,@(0x30,r14) 
	mov.l @(0x04,r14),r2
	mov r2,r3
	shll2 r2
	add r3,r2
	mov r13,r3
	shll2 r2
	shll2 r3
	shll2 r2
	shll2 r3
	mov.l @(r0,r2),r1
	shll2 r3
	mov.l @(loc_8C1874E0,pc),r2
	shll r3
	mov.l r1,@(0x34,r14) 
	add r2,r3
	mov.l r3,@r15
	mov.l @(0x30,r14),r6
	mov.l @(loc_8c1874e4,pc),r3
	add 0x01,r6
	mov.l @(0x34,r14),r7
	mov.l r6,@(0x30,r14) 
	add 0xFF,r6
	mov.l @r15,r5
	mov.l @(0x08,r5),r5
	jsr @r3
	mov r13,r4
	mov.l @(loc_8c1874e8,pc),r2
	mov 0x00,r12
	mov.l @(0x1C,r14),r5
	jsr @r2
	mov r13,r4
	cmp/pz r0
	bt loc_8c187494
	mov r12,r0
	mov.b r0,@(0x09,r14) 
	mov.b r0,@(0x08,r14) 

loc_8c18748e:
	mov.w @(loc_8C1874CA,pc),r0
	bra loc_8c1874f4
	nop 

loc_8c187494:
	mov.l @(loc_8c1874ec,pc),r2
	jsr @r2
	mov r14,r4
	cmp/pz r0
	bt loc_8c1874a2
	bra loc_8c1874f4
	mov 0x83,r0

loc_8c1874a2:
	mov.l @(0x1C,r14),r4
	mov r11,r0
	mov.l @(0x1C,r4),r2
	mov.l r2,@(0x30,r4) 
	mov r13,r4
	mov.b r0,@(0x09,r14) 
	mov.b r0,@(0x08,r14) 
	mov r12,r0
	mov.b r0,@(0x0A,r14) 
	mov.b r0,@(0x0B,r14) 
	mov.b r0,@(0x0C,r14) 
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c1874f0,pc),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1874c8:
	#data 0x0148
loc_8C1874CA:
	#data 0xFF01
	#align4

loc_8c1874cc:
	#data bank19.loc_8C1988D8
loc_8c1874d0:
	#data 0x8C33C56C
loc_8c1874d4:
	#data bank19.loc_8C198918
loc_8c1874d8:
	#data 0x8C33C568
loc_8c1874dc:
	#data bank1c.loc_8c1c9700
loc_8C1874E0:
	#data 0x8C33A154
loc_8c1874e4:
	#data loc_8c186d46
loc_8c1874e8:
	#data loc_8c1866a4
loc_8c1874ec:
	#data loc_8c18a64c
loc_8c1874f0:
	#data loc_8c18a358

;==============================================
loc_8c1874f4:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c187502:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c1875F8,pc),r14 ; r14 set to 0x148
	mov r4,r13
	mov 0x4C,r2 ; r2 set to 0x4C
	mov.l @(loc_8c187600,pc),r1 ; r1 set to 0x8C340FCC
	mul.l r14,r13
	mov.l @(loc_8c1875FC,pc),r3 ; r3 set to 0x8C33C56C
	mov 0x01,r0 ; r0 set to 0x01
	sts macl,r14
	mul.l r2,r13
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov r13,r3 ; r3 ??? bc r13 is ???
	shll2 r3
	sts macl,r2
	shll2 r3
	shll2 r3
	add r1,r2 ; r2 set to 0x8C341018
	mov.l r2,@(0x1C,r14)  ; r14 ??
	shll r3
	mov.l r0,@(0x30,r14)
	mov.l @(0x04,r14),r2 ; r2 ??? bc r14 is ???
	mov r2,r0 ; r0 ??? bc r2 is ???
	shll2 r2
	add r0,r2
	mov.l @(loc_8c187604,pc),r0 ; r0 set to 0x8C1C9744
	shll2 r2
	shll2 r2
	mov.l @(r0,r2),r2
	mov.l r2,@(0x34,r14)
	mov.l @(loc_8c187608,pc),r2 ; r2 set to 0x8C33A154
	add r2,r3
	mov.l r3,@r15
	mov.l @(0x34,r14),r7
	mov.l @(0x30,r14),r6
	mov.l @(loc_8c18760C,pc),r3 ; r3 set to 0x8C186D46
	add 0x01,r6
	mov.l r6,@(0x30,r14)
	add 0xFF,r6
	mov.l @r15,r5
	mov.l @(0x08,r5),r5
	jsr @r3
	mov r13,r4
	mov.l @(loc_8c187610,pc),r2 ; r2 set to 0x8C1866A4
	mov 0x00,r12 ; r12 set to 0x00
	mov.l @(0x1C,r14),r5
	jsr @r2
	mov r13,r4
	cmp/pz r0
	bt loc_8c187574
	mov r12,r0 ; r0 set to 0x00
	mov.b r0,@(0x09,r14)
	bra loc_8c187592
	mov.b r0,@(0x08,r14)

loc_8c187574:
	mov.l @(loc_8c187614,pc),r3 ; r3 set to 0x8C18A64C
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bf loc_8c1875CA
	mov.l @(0x1C,r14),r4
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c187618,pc),r6 ; r6 set to 0x8C342678
	mov.l @(0x1C,r4),r2
	mov.l @(loc_8c18761C,pc),r3 ; r3 set to 0x8C1985AA
	mov.l r2,@(0x30,r4)
	jsr @r3
	mov r13,r4
	cmp/pz r0
	bt loc_8c187598

loc_8c187592:
	mov.w @(loc_8c1875FA,pc),r0 ; r0 set to 0xFF01, r0 set to 0xFF01
	bra loc_8c1875CC
	nop

loc_8c187598:
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x09,r14)
	mov r12,r0 ; r0 ??? bc r12 is ???
	mov.b r0,@(0x0A,r14)
	mov.b r0,@(0x0B,r14)
	mov.b r0,@(0x0C,r14)
	mov.l @(0x04,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c1875BA
	cmp/eq 0x01,r0
	bt loc_8c1875BE
	cmp/eq 0x02,r0
	bt loc_8c1875C2
	cmp/eq 0x03,r0
	bt loc_8c1875C6
	bra loc_8c1875CA
	nop

loc_8c1875BA:
	bra loc_8c1875CC
	mov 0x0F,r0

loc_8c1875BE:
	bra loc_8c1875CC
	mov 0x21,r0

loc_8c1875C2:
	bra loc_8c1875CC
	mov 0x41,r0

loc_8c1875C6:
	bra loc_8c1875CC
	mov 0x7A,r0

loc_8c1875CA:
	mov 0x83,r0 ; r0 set to 0xFFFFFF83

loc_8c1875CC:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1875D8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c1875F8,pc),r14 ; r14 set to 0x148
	mov r4,r13
	mov.l @(loc_8c1875FC,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r14,r13
	sts macl,r14
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.b @(0x02,r14),r0
	tst r0,r0
	bf loc_8c187620
	mov.w @(loc_8c1875FA,pc),r0 ; r0 set to 0xFF01
	bra loc_8c187668
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1875F8:
	#data 0x0148
loc_8c1875FA:
	#data 0xFF01
	#align4

loc_8c1875FC:
	#data 0x8C33C56C
loc_8c187600:
	#data 0x8C340FCC
loc_8c187604:
	#data bank1c.loc_8c1c9744
loc_8c187608:
	#data 0x8C33A154
loc_8c18760C:
	#data loc_8c186D46
loc_8c187610:
	#data loc_8c1866A4
loc_8c187614:
	#data loc_8c18A64C
loc_8c187618:
	#data 0x8C342678
loc_8c18761C:
	#data bank19.loc_8c1985AA

;==============================================
loc_8c187620:
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8c187720,pc),r0 ; r0 set to 0x8C1C9700
	mov.l r3,@(0x30,r14)
	mov.l @(0x04,r14),r2
	mov r2,r3 ; r3 ??? bc r2 is ???
	shll2 r2
	add r3,r2
	mov r13,r3
	shll2 r2
	shll2 r3
	shll2 r2
	shll2 r3
	mov.l @(r0,r2),r1
	mov.l @(loc_8c187724,pc),r2 ; r2 set to 0x8C33A154
	shll2 r3
	shll r3
	mov.l r1,@(0x34,r14)
	add r2,r3
	mov.l r3,@r15
	mov.l @(0x30,r14),r6
	mov.l @(loc_8c187728,pc),r3 ; r3 set to 0x8C186D46
	add 0x01,r6
	mov.l @(0x34,r14),r7
	mov.l r6,@(0x30,r14)
	add 0xFF,r6
	mov.l @r15,r5
	mov.l @(0x08,r5),r5
	jsr @r3
	mov r13,r4
	mov r13,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c18772C,pc),r2 ; r2 set to 0x8C18A358
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c187668:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c187672:
	mov.w @(loc_8c187716,pc),r1 ; r1 set to 0x148
	mov.l @(loc_8c187730,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r1,r4
	sts macl,r1
	add r3,r1 ; r1 set to 0x8C33C6B4
	mov.b @(0x02,r1),r0
	tst r0,r0
	bf loc_8c187688
	mov.w @(loc_8c187718,pc),r0 ; r0 set to 0xFF01
	rts
	nop

;==============================================
loc_8c187688:
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	mov.b r0,@(0x09,r1)
	mov.b r0,@(0x08,r1)
	mov.b r0,@(0x0A,r1)
	mov.b r0,@(0x0B,r1)
	mov.b r0,@(0x0C,r1)
	mov.l r0,@(0x04,r1)
	rts
	nop

;==============================================
loc_8c18769C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xC8,r15
	mov.w @(loc_8c187716,pc),r3 ; r3 set to 0x148
	mov r4,r13
	mov.l @(loc_8c187730,pc),r2 ; r2 set to 0x8C33C56C
	mul.l r3,r13
	mov.l r5,@(0x04,r15)
	sts macl,r3
	mov.l r3,@(0x08,r15)
	add r2,r3 ; r3 set to 0x8C33C6B4
	mov r3,r1 ; r1 set to 0x8C33C6B4
	mov.l r3,@r15
	mov.b @(0x02,r1),r0
	tst r0,r0
	bt/s loc_8c1876E8
	mov r6,r14
	mov.l @(loc_8c187734,pc),r2 ; r2 set to 0x8C1988D8
	jsr @r2
	mov r13,r4
	tst r0,r0
	bf loc_8c1876D2
	bsr loc_8c187672
	mov r13,r4
	bra loc_8c1876E8
	nop

loc_8c1876d2:
	mov.l @(loc_8c187738,pc),r3
	jsr @r3
	mov r13,r4
	tst r0,r0
	bt loc_8c1876e8
	mov.l @(0x08,r15),r2
	mov.l @(loc_8c187730,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c1876ee

loc_8c1876E8:
	mov.w @(loc_8c187718,pc),r0 ; r0 set to 0xFF01
	bra loc_8c18777E
	nop

loc_8c1876EE:
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r13,r4
	cmp/pz r0
	bt loc_8c1876fe
	mov.w @(0x1E,PC),r0
	bra loc_8c18777e
	nop 

loc_8c1876FE:
	mov.l @(0x4,r15),r5
	mov r15,r6
	mov.l @(0x3C,PC),r3
	add 0x0C,r6
	jsr @r3
	mov r13,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c187744
	mov.w @(0x8,PC),r0
	bra loc_8c18777e
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c187716:
	#data 0x0148
loc_8c187718:
	#data 0xFF01
loc_8c18771a:
	#data 0xFF03
loc_8c18771c:
	#data 0xFF05
	#align4

loc_8c187720:
	#data bank1c.loc_8c1c9700
loc_8c187724:
	#data 0x8C33A154
loc_8c187728:
	#data loc_8c186D46
loc_8c18772C:
	#data loc_8c18A358
loc_8c187730:
	#data 0x8C33C56C
loc_8c187734:
	#data bank19.loc_8c1988D8
loc_8c187738:
	#data bank19.loc_8c198918
loc_8c18773C:
	#data bank17.loc_8c1790BA
loc_8c187740:
	#data loc_8c189EBE

;==============================================
loc_8c187744:
	mov.l @r15,r3
	mov r15,r5
	mov r14,r4
	add 0x2C,r5
	mov.l @(0x1C,r3),r2
	mov.l @(0x34,r15),r3
	mov.l @(0x2C,r2),r1
	add 0x01,r1
	mul.l r1,r3
	mov.w @(0x108,PC),r3
	sts macl,r1
	mov.l r1,@r14
	mov.l @(0x34,r15),r0
	mov.w r0,@(0x4,r14)
	mov.l @(0x10,r15),r0
	mov.b r0,@(0x6,r14)
	mov 0x16,r0
	mov.b @(r0,r15),r0
	mov.b r0,@(0x7,r14)
	mov.w @(0x14,r15),r0
	mov.w r0, @(0x8,r14)
	mov.l @(0x10,r15),r2
	cmp/eq r3, r2
	mov.l @(0xf8,pc),r3
	movt r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	add 0x0A,r4
	mov 0x00,r0

loc_8c18777E:
	add 0x38,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c187788:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.w @(loc_8c187864,pc),r14 ; r14 set to 0x148
	mov r4,r13
	mov.l @(loc_8c187870,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r14,r13
	mov.l r5,@(0x08,r15)
	mov.l r6,@(0x0C,r15)
	mov.l r7,@r15
	sts macl,r14
	mov.l r14,@(0x04,r15)
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.b @(0x02,r14),r0
	tst r0,r0
	bf loc_8c1877B8
	bra loc_8c1879D0
	nop

loc_8c1877B8:
	mov.l @(0x38,r15),r3
	mov.l @(loc_8c187874,pc),r5 ; r5 set to 0x8C1C96FC
	tst r3,r3
	bt/s loc_8c1877D8
	mov 0x01,r4 ; r4 set to 0x01
	mov.l r4,@(0x30,r14)
	mov.l @(0x04,r14),r3
	mov r3,r2
	shll2 r3
	add r2,r3
	shll2 r3
	shll2 r3
	add r3,r5 ; r5 ??? bc r3 is ???
	mov.l @(0x0C,r5),r3
	bra loc_8c1877F2
	mov.l r3,@(0x34,r14)

loc_8c1877D8:
	mov.l @(loc_8c187878,pc),r2 ; r2 set to 0x8C129128
	mov.l r4,@(0x30,r14)
	mov.l @(0x04,r14),r1
	mov r1,r3
	shll2 r1
	add r3,r1
	shll2 r1
	shll2 r1
	add r5,r1
	mov.l @(0x0C,r1),r1
	jsr @r2
	mov 0x0A,r0 ; r0 set to 0x0A
	mov.l r0,@(0x34,r14)

loc_8c1877F2:
	mov.l @(loc_8c18787C,pc),r3 ; r3 set to 0x8C198918, r3 set to 0x8C198918
	jsr @r3
	mov r13,r4
	tst r0,r0
	bf loc_8c187800
	bra loc_8c1879D0
	nop

loc_8c187800:
	mov.l @(0x04,r15),r2
	mov.l @(loc_8c187870,pc),r3 ; r3 set to 0x8C33C56C
	add r3,r2
	mov.b @(0x08,r2),r0
	tst r0,r0
	bf loc_8c187810
	bra loc_8c1879D0
	nop

loc_8c187810:
	mov r13,r9
	mov.l @(loc_8c187880,pc),r3 ; r3 set to 0x8C341478
	shll8 r9
	mov.l @(loc_8c187884,pc),r10 ; r10 set to 0x8C129728
	mov.w @(loc_8c187866,pc),r6 ; r6 set to 0x200
	shll r9
	mov 0x00,r5 ; r5 set to 0x00
	add r3,r9
	jsr @r10
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r5 ; r5 ??? bc r14 is ???
	mov.l @(loc_8c187888,pc),r8 ; r8 set to 0x8C186850
	mov.l @(0x08,r5),r5
	mov.l @(0x20,r14),r6 ; r6 ??? bc r14 is ???
	jsr @r8
	mov r13,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c187844
	mov.w @(loc_8c187868,pc),r2 ; r2 set to 0xFF40
	cmp/eq r2,r4
	bt loc_8c187840
	bra loc_8c1879D0
	nop

loc_8c187840:
	bra loc_8c187A9E
	mov 0x81,r0

loc_8c187844:
	mov.l @(loc_8c18788C,pc),r3 ; r3 set to 0x8C1866A4
	mov.l @(0x1C,r14),r5
	jsr @r3
	mov r13,r4
	cmp/pz r0
	bt loc_8c187854
	bra loc_8c1879D0
	nop

loc_8c187854:
	mov.l @(loc_8c187890,pc),r3 ; r3 set to 0x8C18A64C
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c187894
	bra loc_8c187A9E
	mov 0x83,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c187862:
	#data 0x00CC
loc_8c187864:
	#data 0x0148
loc_8c187866:
	#data 0x0200
loc_8c187868:
	#data 0xFF40
	#align4

loc_8c18786C:
	#data loc_8c18A5DA
loc_8c187870:
	#data 0x8C33C56C
loc_8c187874:
	#data bank1c.loc_8c1c96FC
loc_8c187878:
	#data bank12.loc_8c129128
loc_8c18787C:
	#data bank19.loc_8c198918
loc_8c187880:
	#data 0x8C341478
loc_8c187884:
	#data bank12.loc_8c129728
loc_8c187888:
	#data loc_8c186850
loc_8c18788C:
	#data loc_8c1866A4
loc_8c187890:
	#data loc_8c18A64C

;==============================================
loc_8c187894:
	mov.l @(0x1C,r14),r4
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8c1879DC,pc),r6 ; r6 set to 0x200
	mov.l @(0x1C,r4),r3
	mov.l r3,@(0x30,r4)
	jsr @r10
	mov.l @(0x20,r14),r4
	mov.l @(0x20,r14),r4
	mov 0x20,r6 ; r6 set to 0x20
	mov r6,r5 ; r5 set to 0x20
	jsr @r10
	add 0x10,r4
	mov.l @(0x08,r15),r5 ; r5 ??? bc r15 is ???
	mov 0x00,r4 ; r4 set to 0x00
	bra loc_8c1878C0
	mov 0x20,r6

loc_8c1878B4:
	mov.l @(0x20,r14),r0
	mov r4,r2
	mov.b @r5+,r3
	add 0x10,r2
	add 0x01,r4
	mov.b r3,@(r0,r2)

loc_8c1878C0:
	cmp/ge r6,r4
	bf loc_8c1878B4
	mov.l @(loc_8c1879E4,pc),r3 ; r3 set to 0x8C18A554, r3 set to 0x8C18A554
	mov r15,r4
	mov.l @r15,r5
	jsr @r3
	add 0x10,r4
	mov.l @(0x20,r14),r4
	mov r15,r7
	mov 0x00,r12 ; r12 set to 0x00, r12 set to 0x00
	add 0x30,r4
	mov r12,r5 ; r5 set to 0x00, r5 set to 0x00
	add 0x10,r7
	bra loc_8c1878E6
	mov 0x08,r6

loc_8c1878DE:
	mov.b @r7+,r3
	add 0x01,r5
	mov.b r3,@r4
	add 0x01,r4

loc_8c1878E6:
	cmp/ge r6,r5
	bf loc_8c1878DE
	mov.l @(0x1C,r14),r3
	mov 0x42,r5 ; r5 set to 0x42, r5 set to 0x42
	mov.l @(loc_8c1879E8,pc),r11 ; r11 set to 0x8C33C568, r11 set to 0x8C33C568
	mov.l r3,@r15
	mov.l @(0x0C,r3),r2
	mov.l r2,@(0x04,r15)
	mov.l @r15,r3
	mov.l @(0x14,r3),r2
	mov.l r2,@(0x08,r15)
	mov.l @r11,r3
	mov.l @r15,r6
	mov.l @(0x10,r3),r2
	mov.l @(0x04,r6),r6
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @(0x0C,r15),r2
	mov 0x4E,r0 ; r0 set to 0x4E, r0 set to 0x4E
	mov.l @(0x20,r14),r3
	mov 0x40,r5 ; r5 set to 0x40, r5 set to 0x40
	mov.b r2,@(r0,r3)
	mov 0x4F,r0 ; r0 set to 0x4F, r0 set to 0x4F
	mov.l @(0x20,r14),r3
	mov.b r12,@(r0,r3)
	mov.l @(0x1C,r14),r6
	mov.l @r11,r3
	mov.l @r6,r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @r11,r3
	mov 0x4A,r5 ; r5 set to 0x4A, r5 set to 0x4A
	mov.l @(0x08,r15),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @r11,r3
	mov 0x46,r5 ; r5 set to 0x46, r5 set to 0x46
	mov.l @(0x04,r15),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r6
	mov 0x4C,r5 ; r5 set to 0x4C, r5 set to 0x4C
	mov.l @r11,r3
	mov.l @(0x18,r6),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r6
	mov 0x48,r5 ; r5 set to 0x48, r5 set to 0x48
	mov.l @r11,r3
	mov.l @(0x10,r6),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r6
	mov 0x50,r5 ; r5 set to 0x50, r5 set to 0x50
	mov.l @r11,r3
	mov.l @(0x1C,r6),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r6
	mov 0x52,r5 ; r5 set to 0x52, r5 set to 0x52
	mov.l @r11,r3
	mov.l @(0x20,r6),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r6
	mov 0x54,r5 ; r5 set to 0x54, r5 set to 0x54
	mov.l @r11,r3
	mov.l @(0x34,r6),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r6
	mov 0x56,r5 ; r5 set to 0x56, r5 set to 0x56
	mov.l @r11,r3
	mov.l @(0x38,r6),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r6
	mov 0x44,r5 ; r5 set to 0x44, r5 set to 0x44
	mov.l @r11,r3
	mov.l @r6,r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.w @(loc_8c1879DC,pc),r6 ; r6 set to 0x200, r6 set to 0x200
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	jsr @r10
	mov r9,r4
	bra loc_8c1879FC
	mov 0x00,r11

loc_8c1879AA:
	mov.l @(0x38,r15),r2
	tst r2,r2
	bt loc_8c1879BC
	mov r11,r5
	mov r9,r6
	jsr @r8
	mov r13,r4
	bra loc_8c1879BE
	mov r0,r4

loc_8c1879BC:
	mov r12,r4

loc_8c1879BE:
	mov.w @(loc_8c1879DE,pc),r1 ; r1 set to 0xFF01, r1 set to 0xFF01
	mov r4,r0
	cmp/eq r1,r0
	bt loc_8c1879D0
	mov.w @(loc_8c1879E0,pc),r1 ; r1 set to 0xFF40, r1 set to 0xFF40
	cmp/eq r1,r0
	bt loc_8c1879D6
	bra loc_8c1879F0
	nop

loc_8c1879D0:
	mov.w @(loc_8c1879DE,pc),r0 ; r0 set to 0xFF01
	bra loc_8c187A9E
	nop

loc_8c1879D6:
	mov.l @(loc_8c1879EC,pc),r6 ; r6 set to 0xFFFF
	bra loc_8c1879F2
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1879DC:
	#data 0x0200
loc_8c1879DE:
	#data 0xFF01
loc_8c1879E0:
	#data 0xFF40
	#align4

loc_8c1879E4:
	#data loc_8c18A554
loc_8c1879E8:
	#data 0x8C33C568
loc_8c1879EC:
	#data 0x0000FFFF

;==============================================
loc_8c1879f0:
	mov.l @(loc_8C187B1C,pc),r6

loc_8c1879F2:
	mov.l @(loc_8c187B20,pc),r2 ; r2 set to 0x8C18A2F6
	mov r11,r5
	jsr @r2
	mov r13,r4
	add 0x01,r11

loc_8c1879FC:
	mov.l @(0x1C,r14),r3
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	cmp/ge r2,r11
	bf loc_8c1879AA
	mov.l @(0x1C,r14),r4
	mov 0x30,r2 ; r2 set to 0x30, r2 set to 0x30
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.l @(0x18,r4),r3
	add r4,r2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???
	mov.l @r2,r2
	mov r3,r6
	shll8 r6
	shll r6
	mov.l r3,@r15
	jsr @r10
	mov.l @(0x28,r14),r4
	mov.l @(loc_8c187B24,pc),r3 ; r3 set to 0x8C189B7E, r3 set to 0x8C189B7E
	jsr @r3
	mov r13,r4
	mov.l @(0x1C,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	mov.l @(loc_8c187B28,pc),r11 ; r11 set to 0xFFFA, r11 set to 0xFFFA
	mov.l @(loc_8c187B20,pc),r3 ; r3 set to 0x8C18A2F6, r3 set to 0x8C18A2F6
	mov.l @(0x08,r5),r5
	mov r11,r6 ; r6 set to 0xFFFA, r6 set to 0xFFFA
	jsr @r3
	mov r13,r4
	bra loc_8c187A44
	mov 0x00,r9

loc_8c187A34:
	mov.l @(0x1C,r14),r5
	mov r11,r6
	mov.l @(loc_8c187B20,pc),r3 ; r3 set to 0x8C18A2F6
	mov.l @(0x0C,r5),r5
	add r9,r5
	jsr @r3
	mov r13,r4
	add 0x01,r9

loc_8c187A44:
	mov.l @(0x1C,r14),r2
	mov.l @(0x10,r2),r3 ; r3 ??? bc r2 is ???
	cmp/ge r3,r9
	bf loc_8c187A34
	mov.l @(0x1C,r14),r5
	mov r11,r6
	mov.l @(loc_8c187B20,pc),r3 ; r3 set to 0x8C18A2F6, r3 set to 0x8C18A2F6
	mov.l @(0x08,r5),r5
	jsr @r3
	mov r13,r4
	bra loc_8c187A6C
	mov r12,r9

loc_8c187A5C:
	mov.l @(0x1C,r14),r5
	mov r11,r6
	mov.l @(0xBC,PC),r3
	mov.l @(0xC,r5),r5
	add r9,r5
	jsr @r3
	mov r13,r4
	add 0x01,r9

loc_8c187a6c:
	mov.l @(0x1C,r14),r2
	mov.l @(0x10,r2),r3
	cmp/ge r3,r9
	bf loc_8c187a5c
	mov.l @(loc_8c187b2c,pc),r3
	jsr @r3
	mov r13,r4
	mov 0x55,r5
	mov 0x10,r6
	jsr @r10
	mov.l @(0x20,r14),r4
	mov.l @(loc_8c187b30,pc),r2
	jsr @r2
	mov r13,r4
	mov 0x00,r5
	mov 0x10,r6
	jsr @r10
	mov.l @(0x20,r14),r4
	mov.l @(loc_8c187b34,pc),r3
	mov r12,r0
	mov.b r0,@(0x0B,r14) 
	mov.b r0,@(0x0C,r14) 
	mov.b r0,@(0x0A,r14) 
	jsr @r3
	mov r13,r4

loc_8c187A9E:
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
loc_8c187AB2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x5A,PC),r13
	mov r4,r14
	mov.l @(0x78,PC),r3
	mov r5,r0
	mul.l r13,r14
	mov.w r0,@(0x4,r15)
	mov.w @(0x4,r15),r0
	sts macl,r13
	add r3,r13
	mov.l @(0x1C,r13),r4
	mov.l @(0x8,r4),r5
	mov.l @(0x10,r4),r2
	sub r2,r5
	mov.l @(0x18,r4),r2
	mov r5,r7
	mov r5,r6
	mov r0,r5
	sub r2,r6
	add 0xFF,r7
	bsr loc_8c187b3c
	mov r14,r4
	cmp/pl r0
	bt/s loc_8c187b08
	mov r0,r4
	mov.l @(0x1C,r13),r4
	mov.l @(0x1C,r4),r3
	mov.l r3,@r15
	mov.l @r15,r7
	mov.l @(0x20,r4),r3
	mov.w @(0x4,r15),r0
	mov.l @r15,r6
	add r3,r7
	mov r0,r5
	add 0xFF,r7
	bsr loc_8c187b3c
	mov r14,r4
	cmp/pl r0
	bf/s loc_8c187b0c
	mov r0,r4

loc_8c187B08:
	bra loc_8c187b0e
	mov r4,r0

loc_8c187B0C:
	mov 0xFF,r0

loc_8c187B0E:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c187b18:
	#data 0x0148
	#align4

loc_8c187b1c:
	#data 0x0000FFFC
loc_8c187B20:
	#data loc_8c18A2F6
loc_8c187B24:
	#data loc_8c189B7E
loc_8c187B28:
	#data 0x0000FFFA
loc_8c187B2C:
	#data loc_8c18A148
loc_8c187B30:
	#data loc_8c189FB2
loc_8c187B34:
	#data loc_8c18A358
loc_8c187B38:
	#data 0x8C33C56C

;==============================================
loc_8c187B3C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c187C18,pc),r12 ; r12 set to 0x148
	mov r7,r14
	mov.l @(loc_8c187C24,pc),r11 ; r11 set to 0x8C33C568
	mov r6,r13
	mul.l r12,r4
	mov.l @(loc_8c187C20,pc),r3 ; r3 set to 0x8C33C56C
	cmp/ge r13,r14
	mov.w r5,@r15
	sts macl,r12
	bf/s loc_8c187B7E
	add r3,r12 ; r12 set to 0x8C33C6B4

loc_8c187B5E:
	mov.l @r11,r3 ; r3 ??
	mov r14,r5
	shll r5
	mov.l @(0x0C,r3),r2
	jsr @r2
	mov.l @(0x24,r12),r4
	mov.w @r15,r3
	extu.w r0,r0
	extu.w r3,r3
	cmp/eq r3,r0
	bf loc_8c187B78
	bra loc_8c187B80
	mov r14,r0

loc_8c187b78:
	add 0xFF,r14
	cmp/ge r13,r14
	bt loc_8c187b5e

loc_8c187B7E:
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF

loc_8c187B80:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c187B8E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8c187C18,pc),r13 ; r13 set to 0x148
	mov r4,r12
	mov.l @(loc_8c187C20,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r13,r12
	sts macl,r13
	mov.l r13,@r15
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.b @(0x02,r13),r0
	tst r0,r0
	bt/s loc_8c187BD8
	mov r5,r14
	mov.l @(loc_8c187C28,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r12,r4
	tst r0,r0
	bf loc_8c187BC2
	bsr loc_8c187672
	mov r12,r4
	bra loc_8c187BD8
	nop

loc_8c187bc2:
	mov.l @(loc_8c187c2c,pc),r2
	jsr @r2
	mov r12,r4
	tst r0,r0
	bt loc_8c187bd8
	mov.l @r15,r2
	mov.l @(loc_8c187c20,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c187bde

loc_8c187BD8:
	mov.w @(loc_8c187C1A,pc),r0 ; r0 set to 0xFF01
	bra loc_8c187C9A
	nop

loc_8c187BDE:
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r12,r4
	cmp/pz r0
	bt loc_8c187bee
	mov.w @(0x30,PC),r0
	bra loc_8c187c9a
	nop 

loc_8c187BEE:
	mov 0x00,r4
	bra loc_8c187c04
	mov 0x20,r5

loc_8c187BF4:
	mov r4,r3
	mov.l @(0x20,r13),r0
	add 0x10,r3
	mov r14,r2
	mov.b @(r0,r3),r1
	add r4,r2
	add 0x01,r4
	mov.b r1,@r2

loc_8c187C04:
	cmp/ge r5,r4
	bf loc_8c187bf4
	mov r15,r11
	mov.l @(0x20,r13),r5
	add 0x04,r11
	mov r11,r6
	mov r11,r4
	add 0x30,r5
	bra loc_8c187c3a
	add 0x08,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c187C18:
	#data 0x0148
loc_8c187C1A:
	#data 0xFF01
loc_8c187C1c:
	#data 0xFF03
	#align4

loc_8c187C20:
	#data 0x8C33C56C
loc_8c187C24:
	#data 0x8C33C568
loc_8c187C28:
	#data bank19.loc_8c1988D8
loc_8c187C2C:
	#data bank19.loc_8c198918
loc_8c187C30:
	#data bank17.loc_8c1790BA

;==============================================
loc_8c187C34:
	mov.b @r5+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c187C3A:
	cmp/hs r6,r4
	bf loc_8c187c34
	mov.l @(0xFC,PC),r3
	mov r14,r4
	mov r11,r5
	jsr @r3
	add 0x30,r4
	mov.l @(0x1C,r13),r2
	mov 0x20,r0
	mov 0x00,r5
	mov.l @r2,r3
	add 0x01,r3
	mov.w r3,@(r0,r14)
	mov 0x22,r0
	mov.l @(0x1C,r13),r2
	mov.l @(0x30,r2),r3
	mov.w r3,@(r0,r14)
	bsr loc_8c187ca8
	mov r12,r4
	mov 0x26,r1
	add r14,r1
	mov.w r0,@r1
	mov 0x26,r0
	mov.w @(r0,r14),r3
	mov 0x24,r0
	mov 0x01,r5
	mov.w r3,@(r0,r14)
	mov 0x28,r0
	mov.l @(0x1C,r13),r2
	mov.l @(0x38,r2),r3
	mov.w r3,@(r0,r14)
	bsr loc_8c187ca8
	mov r12,r4
	mov 0x2A,r1
	add r14,r1
	mov.w r0,@r1
	mov 0x2C,r0
	mov.l @(0x1C,r13),r3
	mov.l @(0x2C,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r14)
	mov 0x4E,r0
	mov.l @(0x20,r13),r3
	mov.b @(r0,r3),r2
	mov 0x2E,r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov 0x00,r0

loc_8c187C9A:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c187CA8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c187D36,pc),r12 ; r12 set to 0x148
	mov r4,r14
	mov.l @(loc_8c187D40,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r12,r14
	mov.l r5,@r15
	sts macl,r12
	mov.l r12,@(0x04,r15)
	add r3,r12 ; r12 set to 0x8C33C6B4
	mov.b @(0x02,r12),r0
	tst r0,r0
	bt loc_8c187CF4
	mov.l @(loc_8c187D44,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c187CDE
	bsr loc_8c187672
	mov r14,r4
	bra loc_8c187CF4
	nop

loc_8c187cde:
	mov.l @(loc_8c187d48,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c187cf4
	mov.l @(0x04,r15),r2
	mov.l @(loc_8c187d40,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c187cfa

loc_8c187CF4:
	mov.w @(loc_8c187D38,pc),r0 ; r0 set to 0xFF01
	bra loc_8c187DAE
	nop

loc_8c187CFA:
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c187d0a
	mov.w @(0x32,PC),r0
	bra loc_8c187dae
	nop 

loc_8c187D0A:
	mov.l @r15,r0
	mov 0x00,r4
	mov.l @(0x40,PC),r13
	cmp/eq 0x01,r0
	bf/s loc_8c187d58
	mov r4,r10
	bra loc_8c187d2a
	mov r4,r11

loc_8c187D1A:
	mov.l @(0x38,PC),r3
	mov r11,r5
	jsr @r3
	mov r14,r4
	extu.w r0,r0
	cmp/eq r13,r0
	bf loc_8c187d32
	add 0x01,r11

loc_8c187D2A:
	mov.l @(0x1C,r12),r2
	mov.l @(0x38,r2),r3
	cmp/ge r3,r11
	bf loc_8c187d1a

loc_8c187D32:
	bra loc_8c187dac
	mov r11,r10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c187D36:
	#data 0x0148
loc_8c187D38:
	#data 0xFF01
loc_8c187D3a:
	#data 0xFF03
	#align4

loc_8c187D3C:
	#data loc_8c18A5DA
loc_8c187D40:
	#data 0x8C33C56C
loc_8c187D44:
	#data bank19.loc_8c1988D8
loc_8c187D48:
	#data bank19.loc_8c198918
loc_8c187D4C:
	#data bank17.loc_8c1790BA
loc_8c187D50:
	#data 0x0000FFFC
loc_8c187D54:
	#data loc_8c18A328

;==============================================
loc_8c187D58:
	mov.l @(0xD4,PC),r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c187d8e
	bra loc_8c187d82
	mov r4,r11

loc_8c187D64:
	mov.l @(0xCC,PC),r3
	mov r11,r5
	jsr @r3
	mov r14,r4
	extu.w r0,r0
	cmp/eq r13,r0
	bf loc_8c187d80
	mov.l @(0xC4,PC),r3
	mov r11,r5
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bf loc_8c187d80
	add 0x01,r10

loc_8c187D80:
	add 0x01,r11

loc_8c187D82:
	mov.l @(0x1C,r12),r3
	mov.l @(0x30,r3),r2
	cmp/ge r2,r11
	bf loc_8c187d64
	bra loc_8c187dac
	nop 

loc_8c187D8E:
	bra loc_8c187da4
	mov r4,r11

loc_8c187D92:
	mov.l @(0xA0,PC),r3
	mov r11,r5
	jsr @r3
	mov r14,r4
	extu.w r0,r0
	cmp/eq r13,r0
	bf/s loc_8c187da4
	add 0x01,r11
	add 0x01,r10

loc_8c187DA4:
	mov.l @(0x1C,r12),r3
	mov.l @(0x30,r3),r2
	cmp/ge r2,r11
	bf loc_8c187d92

loc_8c187DAC:
	mov r10,r0

loc_8c187DAE:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;unused
loc_8c187dbe:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x58,PC),r11
	mov r4,r14
	mov.l @(0x68,PC),r3
	mul.l r11,r14
	sts macl,r11
	mov.l r11,@r15
	add r3,r11
	mov.b @(0x2,r11),r0
	tst r0,r0
	bt loc_8c187e08
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c187df2
	bsr loc_8c187672
	mov r14,r4
	bra loc_8c187e08
	nop 

loc_8c187df2:
	mov.l @(0x50,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c187e08
	mov.l @r15,r2
	mov.l @(0x3C,PC),r3
	add r3,r2
	mov.b @(0x8,r2),r0
	tst r0,r0
	bf loc_8c187e0e

loc_8c187e08:
	mov.w @(0x1E,PC),r0
	bra loc_8c187e7c
	nop 

loc_8c187e0e:
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c187e1e
	mov.w @(0x10,PC),r0
	bra loc_8c187e7c
	nop 

loc_8c187e1e:
	mov.l @(0x2C,PC),r10
	mov 0x00,r4
	mov r4,r12
	bra loc_8c187e62
	mov r4,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c187e28:
	#data 0x0148
loc_8c187e2a:
	#data 0xff01
loc_8c187e2c:
	#data 0xff03
	#align4

loc_8c187E30:
	#data bank1c.loc_8c1c5968
loc_8c187E34:
	#data loc_8c18A328
loc_8c187E38:
	#data loc_8c18A292
loc_8c187E3c:
	#data 0x8C33C56C
loc_8c187E40:
	#data bank19.loc_8c1988D8
loc_8c187E44:
	#data bank19.loc_8c198918
loc_8c187E48:
	#data bank17.loc_8c1790BA
loc_8c187E4C:
	#data 0x0000FFFC

;==============================================
loc_8c187E50:
	mov.l @(0xD8,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	extu.w r0,r0
	cmp/eq r10,r0
	bf/s loc_8c187e62
	add 0x01,r13
	add 0x01,r12

loc_8c187e62:
	mov.l @(0x1C,r11),r4
	mov.l @(0x2C,r4),r2
	mov.l @(0x10,r4),r3
	add 0x01,r2
	mul.l r2,r3
	mov 0x00,r3
	sts macl,r2
	cmp/gt r2,r3
	addc r3,r2
	shar r2
	cmp/ge r2,r13

loc_8c187e78:
	bf loc_8c187e50
	mov r12,r0

loc_8c187e7c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c187E8C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov 0x00,r12 ; r12 set to 0x00
	mov r6,r3
	mov r4,r13
	mov.l @(loc_8c187F30,pc),r0 ; r0 set to 0x8C33C56E
	mov.l r6,@r15
	mov.l r12,@r3
	mov.w @(loc_8c187F22,pc),r3 ; r3 set to 0x148
	mul.l r3,r13
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt/s loc_8c187EDC
	mov r5,r11
	mov.l @(loc_8c187F34,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r13,r4
	tst r0,r0
	bf loc_8c187EC4
	bsr loc_8c187672
	mov r13,r4
	bra loc_8c187EDC
	nop

loc_8c187ec4:
	mov.l @(loc_8c187f38,pc),r2
	jsr @r2
	mov r13,r4
	tst r0,r0
	bt loc_8c187edc
	mov.w @(loc_8c187f22,pc),r3
	mov.l @(loc_8C187F3C,pc),r0
	mul.l r3,r13
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c187ee2

loc_8c187EDC:
	mov.w @(loc_8c187F24,pc),r0 ; r0 set to 0xFF01
	bra loc_8c187F90
	nop

loc_8c187EE2:
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r13,r4
	cmp/pz r0
	bt loc_8c187ef2
	mov.w @(0x36,PC),r0
	bra loc_8c187f90
	nop 

loc_8c187EF2:
	mov.l @(0x50,PC),r3
	mov r11,r5
	jsr @r3
	mov r13,r4
	cmp/pz r0
	bf loc_8c187f1c
	mov.l @(0x48,PC),r2
	mov r11,r5
	jsr @r2
	mov r13,r4
	cmp/pz r0
	bt loc_8c187f10
	mov.w @(0x1A,PC),r0
	bra loc_8c187f90
	nop 

loc_8c187F10:
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r13,r4
	mov r0,r14
	tst r14,r14
	bf loc_8c187f50

loc_8c187F1C:
	mov.w @(0xA,PC),r0
	bra loc_8c187f90
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c187F22:
	#data 0x0148
loc_8c187F24:
	#data 0xFF01
loc_8c187F26:
	#data 0xFF03
loc_8c187F28:
	#data 0xFF41
loc_8c187F2a:
	#data 0xFF07
	#align4

loc_8c187F2C:
	#data loc_8c18A328
loc_8c187F30:
	#data 0x8C33C56E
loc_8c187F34:
	#data bank19.loc_8c1988D8
loc_8c187F38:
	#data bank19.loc_8c198918
loc_8c187f3c:
	#data 0x8C33C574
loc_8c187F40:
	#data bank17.loc_8c1790BA
loc_8c187F44:
	#data loc_8c18A444
loc_8c187F48:
	#data loc_8c18A468
loc_8c187F4C:
	#data loc_8c18A40E

;==============================================
loc_8c187F50:
	mov.l @(0xF0,PC),r2
	mov r15,r6
	mov r11,r5
	add 0x04,r6
	jsr @r2
	mov r13,r4
	mov.l @(0xE8,PC),r3
	cmp/pz r0
	bt/s loc_8c187f70
	mov.l r0,@r3
	mov.l @(0xE4,PC),r1
	jsr @r1
	mov r14,r4
	mov.w @(0xCC,PC),r0
	bra loc_8c187f90
	nop 

loc_8c187F70:
	mov 0x40,r0
	mov.l r12,@(0x4,r14)
	mov.l @(0x2C,r15),r3
	mov.l r3,@(0x34,r14)
	mov.l @(0x10,r15),r2
	mov.l r2,@(0x38,r14)
	mov r2,r3
	mov.l r2,@(r0,r14)
	mov.l r13,@(0x28,r14)
	mov.w @(0xC,r15),r0
	mov.w r0,@(0x2,r14)
	mov.b @(0xE,r15),r0
	mov.b r0,@(0x1,r14)
	mov r12,r0
	mov.l @r15,r3
	mov.l r14,@r3

loc_8c187F90:
	add 0x30,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c187F9E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xC4,r15
	mov.w @(loc_8c18803C,pc),r3 ; r3 set to 0x148
	mov r4,r14
	mov.l @(loc_8c188050,pc),r2 ; r2 set to 0x8C33C56C
	mov 0x00,r11 ; r11 set to 0x00
	mul.l r3,r14
	mov.l r6,@(0x08,r15)
	mov.l r7,@(0x04,r15)
	sts macl,r3
	mov.l r3,@(0x0C,r15)
	add r2,r3 ; r3 set to 0x8C33C6B4
	mov.l r3,@r15
	mov.l @(0x04,r15),r1
	mov.l r11,@r1
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.b @(0x02,r3),r0
	tst r0,r0
	bt/s loc_8c187FF8
	mov r5,r12
	mov.l @(loc_8c188054,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c187FE2
	bsr loc_8c187672
	mov r14,r4
	bra loc_8c187FF8
	nop

loc_8c187fe2:
	mov.l @(loc_8c188058,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c187ff8
	mov.l @(0x0C,r15),r2
	mov.l @(loc_8c188050,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c187ffe

loc_8c187FF8:
	mov.w @(loc_8c18803E,pc),r0 ; r0 set to 0xFF01
	bra loc_8c1880F2
	nop

loc_8c187FFE:
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c18800e
	mov.w @(0x34,PC),r0
	bra loc_8c1880f2
	nop 

loc_8c18800E:
	mov.l @r15,r3
	mov.l @(0x1C,r3),r2
	mov.l @(0x38,r2),r1
	tst r1,r1
	bt loc_8c188094
	mov.l @(0x44,PC),r3
	mov r12,r5
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bf loc_8c188094
	mov.l @(0x1C,PC),r3
	mov r15,r6
	mov r12,r5
	add 0x10,r6
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bf loc_8c188064
	mov.w @(0xA,PC),r0
	bra loc_8c1880f2
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18803a:
	#data 0xFF05
loc_8c18803C:
	#data 0x0148
loc_8c18803E:
	#data 0xFF01
loc_8c188040:
	#data 0xFF03
loc_8c188042:
	#data 0xFF06
loc_8c188044:
	#data loc_8c189EBE
loc_8c188048:
	#data 0x8C341470
loc_8c18804C:
	#data loc_8c18A43C
loc_8c188050:
	#data 0x8C33C56C
loc_8c188054:
	#data bank19.loc_8c1988D8
loc_8c188058:
	#data bank19.loc_8c198918
loc_8c18805C:
	#data bank17.loc_8c1790BA
loc_8c188060:
	#data loc_8c18A444

;==============================================
loc_8c188064:
	mov.l @(0x100,PC),r3
	mov r15,r5
	add 0x10,r5
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bf loc_8c188078
	mov.w @(0xE6,PC),r0
	bra loc_8c1880f2
	nop 

loc_8c188078:
	mov.l @(0xF0,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	mov.l @(0xEC,PC),r2
	extu.w r0,r0
	cmp/eq r2,r0
	bf loc_8c188094
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov r14,r4
	mov r0,r10
	cmp/pz r10
	bt loc_8c18809a

loc_8c188094:
	mov.w @(0xC6,PC),r0
	bra loc_8c1880f2
	nop 

loc_8c18809A:
	mov.l @(0xDC,PC),r3
	mov r10,r5
	jsr @r3
	mov r14,r4
	mov.l @(0xD8,PC),r2
	jsr @r2
	mov r14,r4
	mov r0,r13
	tst r13,r13
	bf loc_8c1880b4
	mov.w @(0xAE,PC),r0
	bra loc_8c1880f2
	nop 

loc_8c1880B4:
	mov 0x01,r4
	mov.l @(0xC8,PC),r3
	mov r4,r0
	mov 0x02,r2
	mov.l r4,@(0x8,r13)
	mov r13,r4
	mov.l r2,@(0x4,r13)
	mov.l r10,@(0x2C,r13)
	mov.l r3,@(0x38,r13)
	mov.l r11,@(0x30,r13)
	mov.l r14,@(0x28,r13)
	mov.w r0,@(0x2,r13)
	mov r11,r0
	mov.b r0,@(0x1,r13)
	bra loc_8c1880da
	add 0x10,r4

loc_8c1880D4:
	mov.b @r12+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c1880DA:
	mov.b @r12,r2
	tst r2,r2
	bf loc_8c1880d4
	mov.l @(0xA0,PC),r3
	mov.b r11,@r4
	mov r13,r4
	mov.l @(0x8,r15),r5
	jsr @r3
	add 0x20,r4
	mov.l @(0x4,r15),r2
	mov 0x00,r0
	mov.l r13,@r2

loc_8c1880F2:
	add 0x3C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c188102:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov 0x00,r11 ; r11 set to 0x00
	mov r7,r3
	mov r4,r14
	mov.l @(loc_8c188188,pc),r0 ; r0 set to 0x8C33C56E
	mov.l r6,@(0x04,r15)
	mov.l r7,@r15
	mov.l r11,@r3
	mov.w @(loc_8c188162,pc),r3 ; r3 set to 0x148
	mul.l r3,r14
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt/s loc_8c188156
	mov r5,r12
	mov.l @(loc_8c18818C,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c18813E
	bsr loc_8c187672
	mov r14,r4
	bra loc_8c188156
	nop

loc_8c18813e:
	mov.l @(loc_8c188190,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c188156
	mov.w @(loc_8c188162,pc),r3
	mov.l @(loc_8C188194,pc),r0
	mul.l r3,r14
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c188198

loc_8c188156:
	mov.w @(loc_8c188164,pc),r0 ; r0 set to 0xFF01
	bra loc_8c18823A
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18815c:
	#data 0xFF09
loc_8c18815e:
	#data 0xFF08
loc_8c188160:
	#data 0xFF07
loc_8c188162:
	#data 0x0148
loc_8c188164:
	#data 0xFF01
	#align4

loc_8c188168:
	#data loc_8c189F2E
loc_8c18816C:
	#data loc_8c18A328
loc_8c188170:
	#data 0x0000FFFC
loc_8c188174:
	#data loc_8c189F6C
loc_8c188178:
	#data loc_8c18A3DC
loc_8c18817C:
	#data loc_8c18A40E
loc_8c188180:
	#data 0x0000FFFF
loc_8c188184:
	#data loc_8c18A554
loc_8c188188:
	#data 0x8C33C56E
loc_8c18818C:
	#data bank19.loc_8c1988D8
loc_8c188190:
	#data bank19.loc_8c198918
loc_8c188194:
	#data 0x8C33C574

;==============================================
loc_8c188198:
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c1881a8
	mov.w @(0xE2,PC),r0
	bra loc_8c18823a
	nop 

loc_8c1881A8:
	mov.l @(0xEC,PC),r3
	mov r12,r5
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bf loc_8c1881e0
	mov.l @(0xE4,PC),r2
	mov r15,r6
	mov r12,r5
	add 0x08,r6
	jsr @r2
	mov r14,r4
	cmp/pz r0
	bf loc_8c1881d4
	mov r12,r5
	bsr loc_8c188dd0
	mov r14,r4
	cmp/pz r0
	bt/s loc_8c1881d4
	mov r0,r4
	bra loc_8c18823a
	mov r4,r0

loc_8c1881D4:
	mov.l @(0xC8,PC),r2
	jsr @r2
	mov r14,r4
	mov r0,r10
	cmp/pz r10
	bt loc_8c1881e6

loc_8c1881E0:
	mov.w @(0xA6,PC),r0
	bra loc_8c18823a
	nop 

loc_8c1881E6:
	mov.l @(0xBC,PC),r2
	mov r10,r5
	jsr @r2
	mov r14,r4
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r14,r4
	mov r0,r13
	tst r13,r13
	bf loc_8c188200
	mov.w @(0x8E,PC),r0
	bra loc_8c18823a
	nop 

loc_8c188200:
	mov.l @(0xA8,PC),r2
	mov r11,r0
	mov 0x01,r3
	mov r13,r4
	mov.l r11,@(0x8,r13)
	mov.l r3,@(0x4,r13)
	mov.l r10,@(0x2C,r13)
	mov.l r2,@(0x38,r13)
	mov.l r11,@(0x30,r13)
	mov.l r14,@(0x28,r13)
	mov.w r0,@(0x2,r13)
	mov.b r0,@(0x1,r13)
	bra loc_8c188222
	add 0x10,r4

loc_8c18821C:
	mov.b @r12+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c188222:
	mov.b @r12,r2
	tst r2,r2
	bf loc_8c18821c
	mov.l @(0x84,PC),r3
	mov.b r11,@r4
	mov r13,r4
	mov.l @(0x4,r15),r5
	jsr @r3
	add 0x20,r4
	mov.l @r15,r2
	mov 0x00,r0
	mov.l r13,@r2

loc_8c18823A:
	add 0x34,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18824A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r0
	mov r4,r14
	tst r14,r14
	mov.w r0,@(0x04,r15)
	bf/s loc_8c188266
	mov.b r6,@r15
	mov.w @(loc_8c18828E,pc),r0 ; r0 set to 0xFF00
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c188266:
	mov.l @(0x28,r14),r2
	mov.w @(loc_8c188290,pc),r3 ; r3 set to 0x148
	mov.l @(loc_8c1882B4,pc),r0 ; r0 set to 0x8C33C56E
	mul.l r3,r2
	sts macl,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c1882D6
	mov.l @(loc_8c1882B8,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov.l @(0x28,r14),r4
	tst r0,r0
	bf loc_8c1882BC
	bsr loc_8c187672
	mov.l @(0x28,r14),r4
	bra loc_8c1882D6
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c188288:
	#data 0xFF03
loc_8c18828a:
	#data 0xFF08
loc_8c18828c:
	#data 0xFF07
loc_8c18828E:
	#data 0xFF00
loc_8c188290:
	#data 0x0148
	#align4

loc_8c188294:
	#data bank17.loc_8c1790BA
loc_8c188298:
	#data loc_8c18A444
loc_8c18829C:
	#data loc_8c189EBE
loc_8c1882A0:
	#data loc_8c189F6C
loc_8c1882A4:
	#data loc_8c18A3DC
loc_8c1882A8:
	#data loc_8c18A40E
loc_8c1882Ac:
	#data 0x0000FFFF
loc_8c1882B0:
	#data loc_8c18A554
loc_8c1882B4:
	#data 0x8C33C56E
loc_8c1882B8:
	#data bank19.loc_8c1988D8

;==============================================
loc_8c1882bc:
	mov.l @(loc_8c1883c0,pc),r2
	jsr @r2
	mov.l @(0x28,r14),r4
	tst r0,r0
	bt loc_8c1882d6
	mov.l @(0x28,r14),r2
	mov.w @(loc_8c1883b6,pc),r3
	mov.l @(loc_8C1883C4,pc),r0
	mul.l r3,r2
	sts macl,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c1882e0

loc_8c1882D6:
	mov.w @(loc_8c1883B8,pc),r0 ; r0 set to 0xFF01
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1882E0:
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov.l @(0x28,r14),r4
	cmp/pz r0
	bt loc_8c1882f4
	mov.w @(0xCC,PC),r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1882F4:
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x2,r14)
	mov.b @r15,r0
	mov.b r0,@(0x1,r14)
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c188306:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c188322
	mov.l r5,@r15
	mov.w @(loc_8c1883BC,pc),r0 ; r0 set to 0xFF00
	bra loc_8c18845E
	nop

loc_8c188322:
	mov.l @(0x28,r14),r2
	mov.w @(loc_8c1883B6,pc),r11 ; r11 set to 0x148
	mov.l @(loc_8c1883CC,pc),r10 ; r10 set to 0x8C33C56C
	mul.l r11,r2
	sts macl,r2
	add r10,r2
	mov.b @(0x02,r2),r0
	tst r0,r0
	bf/s loc_8c18833A
	mov 0x00,r13 ; r13 set to 0x00
	bra loc_8c188456
	nop

loc_8c18833A:
	mov.l @(loc_8c1883C0,pc),r2 ; r2 set to 0x8C198918
	jsr @r2
	mov.l @(0x28,r14),r4
	tst r0,r0
	bf loc_8c188348
	bra loc_8c188456
	nop

loc_8c188348:
	mov.l @(0x28,r14),r3
	mul.l r11,r3
	sts macl,r3
	add r10,r3
	mov.b @(0x08,r3),r0
	tst r0,r0
	bf loc_8c18835A
	bra loc_8c188456
	nop

loc_8c18835A:
	mov.l @(loc_8c1883D0,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov.l @(0x28,r14),r4
	tst r0,r0
	bf loc_8c18836C
	bsr loc_8c187672
	mov.l @(0x28,r14),r4
	bra loc_8c188456
	nop

loc_8c18836c:
	mov.l @(loc_8c1883c8,pc),r3
	jsr @r3
	mov.l @(0x28,r14),r4
	cmp/pz r0
	bf loc_8c188456
	mov.l @(0x04,r14),r2
	tst r2,r2
	bt/s loc_8c188454
	mov.l @(0x28,r14),r12
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c1883a0
	mul.l r11,r12
	mov 0x01,r3
	mov.l @(loc_8c1883d4,pc),r0
	sts macl,r4
	add r10,r4
	mov.l r3,@(0x30,r4) 
	mov.l @(0x04,r4),r2
	mov r2,r3
	shll2 r2
	add r3,r2
	shll2 r2
	shll2 r2
	mov.l @(r0,r2),r1
	mov.l r1,@(0x34,r4) 

loc_8c1883a0:
	mov.l @(loc_8c1883d8,pc),r3
	mov.l @(0x2C,r14),r5
	jsr @r3
	mov r12,r4
	mov r0,r13
	mov.l @(0x08,r14),r0
	cmp/eq 0x01,r0 
	bf loc_8c1883dc
	mov.w @(loc_8C1883BE,pc),r4
	bra loc_8c1883de
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1883b6:
	#data 0x0148
loc_8c1883b8:
	#data 0xFF01
loc_8c1883ba:
	#data 0xFF03
loc_8c1883bc:
	#data 0xFF00
loc_8C1883BE:
	#data 0x00CC
	#align4

loc_8c1883c0:
	#data bank19.loc_8C198918
loc_8c1883c4:
	#data 0x8C33C574
loc_8c1883c8:
	#data bank17.loc_8c1790ba
loc_8c1883cc:
	#data 0x8C33C56C
loc_8c1883d0:
	#data bank19.loc_8C1988D8
loc_8c1883d4:
	#data bank1c.loc_8c1c970c
loc_8c1883d8:
	#data loc_8c18a3dc

;==============================================
loc_8c1883dc:
	mov 0x33,r4

loc_8c1883de:
	mov.l @(loc_8C1884CC,pc),r11
	mov 0x02,r5
	mov.b r4,@r13
	mov.b @(0x01,r14),r0 
	mov.b r0,@(0x01,r13) 
	mov.l @r11,r3
	mov.l @(0x38,r14),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov r13,r4
	mov.l @r11,r3
	mov 0x18,r5
	mov.l @(0x30,r14),r6
	mov.l @(0x10,r3),r2
	jsr @r2
	mov r13,r4
	mov.l @r11,r3
	mov 0x1A,r5
	mov.w @(0x02,r14),r0 
	mov.l @(0x10,r3),r2
	mov r0,r6
	jsr @r2
	mov r13,r4
	mov r13,r4
	mov r14,r5
	mov r13,r11
	add 0x04,r4
	add 0x10,r5
	bra loc_8c188420
	add 0x10,r11

loc_8c18841a:
	mov.b @r5+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c188420:
	cmp/hs r11,r4
	bf loc_8c18841a
	mov r14,r5
	mov r13,r6
	mov r11,r4
	add 0x20,r5
	bra loc_8c188436
	add 0x18,r6

loc_8c188430:
	mov.b @r5+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c188436:
	cmp/hs r6,r4
	bf loc_8c188430
	mov.l @(loc_8c1884d0,pc),r3
	mov.l @(0x2C,r14),r5
	jsr @r3
	mov r12,r4
	mov.l @(loc_8c1884d4,pc),r2
	jsr @r2
	mov r12,r4
	cmp/pz r0
	bf/s loc_8c188456
	mov r0,r13
	mov.l @(loc_8c1884d8,pc),r3
	jsr @r3
	mov r12,r4

loc_8c188454:
	mov 0x00,r13

loc_8c188456:
	mov.l @(loc_8c1884DC,pc),r2 ; r2 set to 0x8C18A43C
	jsr @r2
	mov r14,r4
	mov r13,r0

loc_8c18845E:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18846E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	tst r14,r14
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	bf/s loc_8c18848A
	mov r6,r11
	mov.w @(loc_8c1884C2,pc),r0 ; r0 set to 0xFF00
	bra loc_8c18851E
	nop

loc_8c18848A:
	mov.l @(0x28,r14),r2
	mov.w @(loc_8c1884C4,pc),r6 ; r6 set to 0x148
	mov.l @(loc_8c1884E0,pc),r4 ; r4 set to 0x8C33C56C
	mul.l r6,r2
	sts macl,r2
	add r4,r2
	mov.b @(0x02,r2),r0
	tst r0,r0
	bf loc_8c1884A2
	mov.w @(loc_8c1884C6,pc),r0 ; r0 set to 0xFF01
	bra loc_8c18851E
	nop

loc_8c1884A2:
	mov.l @(0x04,r14),r0
	cmp/eq 0x01,r0
	bt loc_8c1884B0
	cmp/eq 0x02,r0
	bt loc_8c1884B6
	bra loc_8c1884BC
	nop

loc_8c1884B0:
	mov.l @(loc_8c1884E4,pc),r10 ; r10 set to 0x8C18852E
	bra loc_8c1884EC
	nop

loc_8c1884B6:
	mov.l @(loc_8c1884E8,pc),r10 ; r10 set to 0x8C18864A
	bra loc_8c1884EC
	nop

loc_8c1884BC:
	mov.w @(loc_8c1884C8,pc),r0 ; r0 set to 0xFF0B
	bra loc_8c18851E
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1884C2:
	#data 0xFF00
loc_8c1884C4:
	#data 0x0148
loc_8c1884C6:
	#data 0xFF01
loc_8c1884C8:
	#data 0xFF0B
	#align4

loc_8c1884cc:
	#data 0x8C33C568
loc_8c1884D0:
	#data loc_8c18A3F4
loc_8c1884D4:
	#data loc_8c189C9E
loc_8c1884D8:
	#data loc_8c18A148
loc_8c1884DC:
	#data loc_8c18A43C
loc_8c1884E0:
	#data 0x8C33C56C
loc_8c1884E4:
	#data loc_8c18852E
loc_8c1884E8:
	#data loc_8c18864A

;==============================================
loc_8c1884EC:
	mov.l @(0x28,r14),r3
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_8c1885CE,pc),r9 ; r9 set to 0x200
	mov r5,r13
	mul.l r6,r3
	cmp/pl r11
	sts macl,r6
	add r6,r4
	mov.l r2,@(0x30,r4)
	mov.l r11,@(0x34,r4)
	bf/s loc_8c18851C
	mov 0x00,r12 ; r12 set to 0x00

loc_8c188504:
	mov r13,r5
	jsr @r10
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c188514
	bra loc_8c18851E
	mov r4,r0

loc_8c188514:
	add 0x01,r12
	cmp/ge r11,r12
	bf/s loc_8c188504
	add r9,r13

loc_8c18851C:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c18851E:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18852E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov r5,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1885D8,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov.l @(0x28,r13),r4
	tst r0,r0
	bf loc_8c188554
	bsr loc_8c187672
	mov.l @(0x28,r13),r4
	bra loc_8c18856E
	nop

loc_8c188554:
	mov.l @(loc_8c1885dc,pc),r2
	jsr @r2
	mov.l @(0x28,r13),r4
	tst r0,r0
	bt loc_8c18856e
	mov.l @(0x28,r13),r2
	mov.w @(loc_8C1885D0,pc),r3
	mov.l @(loc_8C1885E0,pc),r0
	mul.l r3,r2
	sts macl,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c188574

loc_8c18856E:
	mov.w @(loc_8c1885D2,pc),r0 ; r0 set to 0xFF01
	bra loc_8c188638
	nop

loc_8c188574:
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov.l @(0x28,r13),r4
	cmp/pz r0
	bt loc_8c188584
	mov.w @(0x52,PC),r0
	bra loc_8c188638
	nop 

loc_8c188584:
	mov.l @(0x60,PC),r3
	mov.l @(0x28,r13),r12
	jsr @r3
	mov r12,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c1885c8
	mov.l @(0x58,PC),r10
	mov r14,r5
	mov r9,r6
	jsr @r10
	mov r12,r4
	mov.l @(0x50,PC),r11
	mov r0,r4
	cmp/pz r4
	bt loc_8c18860e
	mov.w @(0x2A,PC),r3
	cmp/eq r3,r4
	bf loc_8c1885ae
	bra loc_8c188638
	mov r4,r0

loc_8c1885AE:
	mov.l @(0x44,PC),r2
	mov r14,r5
	mov r11,r6
	jsr @r2
	mov r12,r4
	mov.l @(0x3C,PC),r8
	mov.l @(0x40,PC),r3
	mov r8,r5
	jsr @r3
	mov r12,r4
	mov r0,r14
	cmp/pz r14
	bt loc_8c188600

loc_8c1885C8:
	mov.w @(0xA,PC),r0
	bra loc_8c188638
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1885CE:
	#data 0x0200
loc_8c1885d0:
	#data 0x0148
loc_8c1885D2:
	#data 0xFF01
loc_8c1885D4:
	#data 0xFF03
loc_8c1885D6:
	#data 0xFF04
	#align4

loc_8c1885D8:
	#data bank19.loc_8c1988D8
loc_8c1885DC:
	#data bank19.loc_8c198918
loc_8c1885e0:
	#data 0x8C33C574
loc_8c1885E4:
	#data bank17.loc_8c1790BA
loc_8c1885E8:
	#data loc_8c18A24C
loc_8c1885EC:
	#data loc_8c186850
loc_8c1885f0:
	#data 0x0000FFFF
loc_8c1885F4:
	#data loc_8c18A2F6
loc_8c1885F8:
	#data 0x0000FFFC
loc_8c1885FC:
	#data loc_8c18A1E8

;==============================================
loc_8c188600:
	mov r14,r5
	mov r9,r6
	jsr @r10
	mov r12,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c1885ae

loc_8c18860E:
	mov.l @(0xE0,PC),r3
	mov r14,r5
	mov.l @(0xD8,PC),r6
	jsr @r3
	mov r12,r4
	mov.l @(0x38,r13),r2
	cmp/eq r11,r2
	bf/s loc_8c188624
	exts.w r14,r10
	bra loc_8c18862e
	mov.l r10,@(0x38,r13)

loc_8c188624:
	mov.l @(0xC8,PC),r3
	mov r14,r6
	mov.l @(0x3C,r13),r5
	jsr @r3
	mov r12,r4

loc_8c18862E:
	mov 0x00,r0
	mov.l r10,@(0x3C,r13)
	mov.l @(0x30,r13),r2
	add 0x01,r2
	mov.l r2,@(0x30,r13)

loc_8c188638:
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
loc_8c18864A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(loc_8c1886E4,pc),r3 ; r3 set to 0x148
	mov.l @(loc_8c1886F4,pc),r2 ; r2 set to 0x8C33C56C
	mov.l @(loc_8c1886F8,pc),r1 ; r1 set to 0x8C1988D8
	mov.l r5,@r15
	mov.l @(0x28,r14),r4
	mul.l r3,r4
	sts macl,r3
	add r2,r3 ; r3 set to 0x8C33C6B4
	jsr @r1
	mov.l r3,@(0x04,r15)
	tst r0,r0
	bf loc_8c18867A
	mov.l @(loc_8c1886FC,pc),r2 ; r2 set to 0x8C187672
	jsr @r2
	mov.l @(0x28,r14),r4
	bra loc_8c188694
	nop

loc_8c18867a:
	mov.l @(loc_8c188700,pc),r3
	jsr @r3
	mov.l @(0x28,r14),r4
	tst r0,r0
	bt loc_8c188694
	mov.l @(0x28,r14),r2
	mov.w @(loc_8c1886e4,pc),r3
	mov.l @(loc_8C188704,pc),r0
	mul.l r3,r2
	sts macl,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c18869a

loc_8c188694:
	mov.w @(loc_8c1886E6,pc),r0 ; r0 set to 0xFF01
	bra loc_8c188744
	nop

loc_8c18869A:
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov.l @(0x28,r14),r4
	cmp/pz r0
	bt loc_8c1886aa
	mov.w @(0x40,PC),r0
	bra loc_8c188744
	nop 

loc_8c1886AA:
	mov.l @(0x30,r14),r13
	mov.l @(0x5C,PC),r3
	mov.l @(0x28,r14),r12
	mov r13,r5
	jsr @r3
	mov r12,r4
	mov.l @(0x58,PC),r2
	extu.w r0,r0
	cmp/eq r2,r0
	bf loc_8c1886ca
	mov.l @(0x4,r15),r3
	mov.l @(0x30,r14),r0
	mov.l @(0x1C,r3),r2
	mov.l @(0x38,r2),r1
	cmp/ge r1,r0
	bf loc_8c1886d0

loc_8c1886CA:
	mov.w @(0x1C,PC),r0
	bra loc_8c188744
	nop 

loc_8c1886D0:
	mov.l @(0x40,PC),r3
	mov r13,r5
	mov.l @r15,r6
	jsr @r3
	mov r12,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c188718
	bra loc_8c188744
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1886E4:
	#data 0x0148
loc_8c1886E6:
	#data 0xFF01
loc_8c1886E8:
	#data 0xFF03
loc_8c1886Ea:
	#data 0xFF04
loc_8c1886Ec:
	#data 0xFFFA
	#align4

loc_8c1886F0:
	#data loc_8c18A2F6
loc_8c1886F4:
	#data 0x8C33C56C
loc_8c1886F8:
	#data bank19.loc_8c1988D8
loc_8c1886FC:
	#data loc_8c187672
loc_8c188700:
	#data bank19.loc_8c198918
loc_8c188704:
	#data 0x8C33C574
loc_8c188708:
	#data bank17.loc_8c1790BA
loc_8c18870C:
	#data loc_8c18A328
loc_8c188710:
	#data 0x0000FFFC
loc_8c188714:
	#data loc_8c186850

;==============================================
loc_8c188718:
	mov.l @(0xF8,PC),r3
	mov r13,r5
	mov.l @(0xF0,PC),r6
	jsr @r3
	mov r12,r4
	mov.l @(0x38,r14),r3
	mov.l @(0xF0,PC),r2
	cmp/eq r2,r3
	bf/s loc_8c188730
	exts.w r13,r11
	bra loc_8c18873a
	mov.l r11,@(0x38,r14)

loc_8c188730:
	mov.l @(0xE0,PC),r1
	mov r13,r6
	mov.l @(0x3C,r14),r5
	jsr @r1
	mov r12,r4

loc_8c18873A:
	mov 0x00,r0
	mov.l r11,@(0x3C,r14)
	mov.l @(0x30,r14),r3
	add 0x01,r3
	mov.l r3,@(0x30,r14)

loc_8c188744:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c188752:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	tst r14,r14
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	bf/s loc_8c18876C
	mov r6,r11
	mov.w @(loc_8c188806,pc),r0 ; r0 set to 0xFF00
	bra loc_8c1887B6
	nop

loc_8c18876C:
	mov.l @(0x28,r14),r2
	mov.w @(loc_8c188808,pc),r6 ; r6 set to 0x148
	mov.l @(loc_8c18881C,pc),r4 ; r4 set to 0x8C33C56C
	mul.l r6,r2
	sts macl,r2
	add r4,r2
	mov.b @(0x02,r2),r0
	tst r0,r0
	bf loc_8c188784
	mov.w @(loc_8c18880A,pc),r0 ; r0 set to 0xFF01
	bra loc_8c1887B6
	nop

loc_8c188784:
	mov.l @(0x28,r14),r3
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_8c18880C,pc),r10 ; r10 set to 0x200
	mov r5,r13
	mul.l r6,r3
	cmp/pl r11
	sts macl,r6
	add r6,r4
	mov.l r2,@(0x30,r4)
	mov.l r11,@(0x34,r4)
	bf/s loc_8c1887B4
	mov 0x00,r12 ; r12 set to 0x00

loc_8c18879C:
	mov r13,r5
	bsr loc_8c1887C4
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c1887AC
	bra loc_8c1887B6
	mov r4,r0

loc_8c1887ac:
	add 0x01,r12
	cmp/ge r11,r12
	bf/s loc_8c18879c
	add r10,r13

loc_8c1887B4:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1887B6:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1887C4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c188820,pc),r3 ; r3 set to 0x8C1988D8
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov.l @(0x28,r14),r4
	tst r0,r0
	bf loc_8c1887E6
	mov.l @(loc_8c188824,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov.l @(0x28,r14),r4
	bra loc_8c188800
	nop

loc_8c1887e6:
	mov.l @(loc_8c188828,pc),r2
	jsr @r2
	mov.l @(0x28,r14),r4
	tst r0,r0
	bt loc_8c188800
	mov.l @(0x28,r14),r2
	mov.w @(loc_8c188808,pc),r3
	mov.l @(loc_8C18882C,pc),r0
	mul.l r3,r2
	sts macl,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c188830

loc_8c188800:
	mov.w @(loc_8c18880A,pc),r0 ; r0 set to 0xFF01
	bra loc_8c1888A6
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c188806:
	#data 0xFF00
loc_8c188808:
	#data 0x0148
loc_8c18880A:
	#data 0xFF01
loc_8c18880C:
	#data 0x0200
	#align4

loc_8c188810:
	#data 0x0000FFFA
loc_8c188814:
	#data loc_8c18A2F6
loc_8c188818:
	#data 0x0000FFFF
loc_8c18881C:
	#data 0x8C33C56C
loc_8c188820:
	#data bank19.loc_8c1988D8
loc_8c188824:
	#data loc_8c187672
loc_8c188828:
	#data bank19.loc_8c198918
loc_8c18882c:
	#data 0x8C33C574

;==============================================
loc_8c188830:
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov.l @(0x28,r14),r4
	cmp/pz r0
	bt loc_8c188840
	mov.w @(0xC2,PC),r0
	bra loc_8c1888a6
	nop 

loc_8c188840:
	mov 0x40,r0
	mov.l @(0xC8,PC),r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bf/s loc_8c188858
	mov.l @(0x28,r14),r13
	mov.l @(0x34,r14),r2
	tst r2,r2
	bt loc_8c18885e
	mov.l @(0xBC,PC),r0
	bra loc_8c1888a6
	nop 

loc_8c188858:
	mov.l @(0x34,r14),r2
	tst r2,r2
	bf loc_8c188862

loc_8c18885E:
	bra loc_8c1888a6
	mov 0x00,r0

loc_8c188862:
	mov.l @(r0,r14),r2
	mov.l @(0xAC,PC),r3
	cmp/eq r3,r2
	bt loc_8c188872
	mov.l @(r0,r14),r2
	mov.l @(0xA8,PC),r3
	cmp/eq r3,r2
	bf loc_8c188878

loc_8c188872:
	mov.w @(0x8C,PC),r0
	bra loc_8c1888a6
	nop 

loc_8c188878:
	mov.l @(r0,r14),r12
	mov.l @(0xA0,PC),r3
	mov.l @r15,r6
	mov r12,r5
	jsr @r3
	mov r13,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18888e
	bra loc_8c1888a6
	mov r4,r0

loc_8c18888E:
	mov.l @(0x90,PC),r3
	mov r12,r5
	jsr @r3
	mov r13,r4
	mov 0x40,r1
	add r14,r1
	extu.w r0,r0
	mov.l r0,@r1
	mov.l @(0x34,r14),r3
	add 0xFF,r3
	mov r3,r0
	mov.l r3,@(0x34,r14)

loc_8c1888A6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1888B2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov.w @(loc_8c188904,pc),r3 ; r3 set to 0x148
	mov r4,r14
	mov.l @(loc_8c188924,pc),r0 ; r0 set to 0x8C33C56E
	mul.l r3,r14
	mov.l r5,@r15
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c1888F6
	mov.l @(loc_8c188928,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c1888DE
	mov.l @(loc_8c18892C,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r14,r4
	bra loc_8c1888F6
	nop

loc_8c1888de:
	mov.l @(loc_8c188930,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c1888f6
	mov.w @(loc_8c188904,pc),r3
	mov.l @(loc_8C188934,pc),r0
	mul.l r3,r14
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c188938

loc_8c1888F6:
	mov.w @(loc_8c188906,pc),r0 ; r0 set to 0xFF01
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c188900:
	#data 0xFF03
loc_8c188902:
	#data 0xFF41
loc_8c188904:
	#data 0x0148
loc_8c188906:
	#data 0xFF01
	#align4

loc_8c188908:
	#data bank17.loc_8c1790BA
loc_8c18890c:
	#data 0x0000FFFA
loc_8c188910:
	#data 0xFFFF0000
loc_8c188914:
	#data 0x0000FFFC
loc_8c188918:
	#data 0x0000FFFF
loc_8c18891C:
	#data loc_8c186778
loc_8c188920:
	#data loc_8c18A328
loc_8c188924:
	#data 0x8C33C56E
loc_8c188928:
	#data bank19.loc_8c1988D8
loc_8c18892C:
	#data loc_8c187672
loc_8c188930:
	#data bank19.loc_8c198918
loc_8c188934:
	#data 0x8C33C574

;==============================================
loc_8c188938:
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c18894c
	mov.w @(0xDC,PC),r0
	add 0x30,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18894C:
	mov.l @r15,r5
	mov r15,r6
	mov.l @(0xDC,PC),r3
	add 0x04,r6
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bf loc_8c188966
	mov 0x00,r0
	add 0x30,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c188966:
	mov.w @(0xBA,PC),r0
	add 0x30,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c188970:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c188A26,pc),r14 ; r14 set to 0x148
	mov r4,r13
	mov.l @(loc_8c188A34,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r14,r13
	mov.l r5,@r15
	sts macl,r14
	mov.l r14,@(0x04,r15)
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.b @(0x02,r14),r0
	tst r0,r0
	bt loc_8c1889BA
	mov.l @(loc_8c188A38,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r13,r4
	tst r0,r0
	bf loc_8c1889A4
	mov.l @(loc_8c188A3C,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r13,r4
	bra loc_8c1889BA
	nop

loc_8c1889a4:
	mov.l @(loc_8c188a40,pc),r2
	jsr @r2
	mov r13,r4
	tst r0,r0
	bt loc_8c1889ba
	mov.l @(0x04,r15),r2
	mov.l @(loc_8c188a34,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c1889c0

loc_8c1889BA:
	mov.w @(loc_8c188A28,pc),r0 ; r0 set to 0xFF01
	bra loc_8c188A5C
	nop

loc_8c1889C0:
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r13,r4
	cmp/pz r0
	bt loc_8c1889d0
	mov.w @(0x54,PC),r0
	bra loc_8c188a5c
	nop 

loc_8c1889D0:
	mov.l @(0x70,PC),r3
	mov 0x00,r12
	mov r12,r5
	mov.l r12,@(0x18,r14)
	jsr @r3
	mov r13,r4
	mov r12,r5
	mov r12,r7
	mov r0,r4
	bra loc_8c188a04
	mov 0x01,r13

loc_8c1889E6:
	mov.b @r4,r1
	extu.b r1,r6
	mov r6,r0
	cmp/eq 0x33,r0
	bt loc_8c1889f6
	mov.w @(0x36,PC),r2
	cmp/eq r2,r6
	bf loc_8c1889fa

loc_8c1889F6:
	bra loc_8c188a0c
	mov r13,r7

loc_8c1889FA:
	mov.l @(0x18,r14),r3
	add 0x20,r4
	add 0x01,r5
	add 0x01,r3
	mov.l r3,@(0x18,r14)

loc_8c188A04:
	mov.l @(0x1C,r14),r2
	mov.l @(0x30,r2),r3
	cmp/ge r3,r5
	bf loc_8c1889e6

loc_8c188A0C:
	tst r7,r7
	bf loc_8c188a16
	mov.w @(0x10,PC),r0
	bra loc_8c188a5c
	nop 

loc_8c188A16:
	mov r4,r5
	mov.l @r15,r4
	add 0x04,r5
	mov r4,r13
	bra loc_8c188a4e
	add 0x0C,r13
 
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c188A22:
	#data 0xFF03
loc_8c188A24:
	#data 0xFF05
loc_8c188A26:
	#data 0x0148
loc_8c188A28:
	#data 0xFF01
loc_8c188A2a:
	#data 0x00CC
	#align4

loc_8c188A2C:
	#data bank17.loc_8c1790BA
loc_8c188A30:
	#data loc_8c189EBE
loc_8c188A34:
	#data 0x8C33C56C
loc_8c188A38:
	#data bank19.loc_8c1988D8
loc_8c188A3C:
	#data loc_8c187672
loc_8c188A40:
	#data bank19.loc_8c198918
loc_8c188A44:
	#data loc_8c18A3DC

;==============================================
loc_8c188A48:
	mov.b @r5+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c188A4E:
	cmp/hs r13,r4
	bf loc_8c188a48
	mov 0x00,r0
	mov.b r12,@r13
	mov.l @(0x18,r14),r3
	add 0x01,r3
	mov.l r3,@(0x18,r14)

loc_8c188A5C:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c188A68:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c188B2E,pc),r14 ; r14 set to 0x148
	mov r4,r13
	mov.l @(loc_8c188B38,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r14,r13
	mov.l r5,@r15
	sts macl,r14
	mov.l r14,@(0x04,r15)
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.b @(0x02,r14),r0
	tst r0,r0
	bt loc_8c188AB0
	mov.l @(loc_8c188B3C,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r13,r4
	tst r0,r0
	bf loc_8c188A9A
	mov.l @(loc_8c188B40,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r13,r4
	bra loc_8c188AB0
	nop

loc_8c188a9a:
	mov.l @(loc_8c188b44,pc),r2
	jsr @r2
	mov r13,r4
	tst r0,r0
	bt loc_8c188ab0
	mov.l @(0x04,r15),r2
	mov.l @(loc_8c188b38,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c188ab6

loc_8c188AB0:
	mov.w @(loc_8c188B30,pc),r0 ; r0 set to 0xFF01
	bra loc_8c188B24
	nop

loc_8c188AB6:
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r13,r4
	cmp/pz r0
	bt loc_8c188ac6
	mov.w @(0x6E,PC),r0
	bra loc_8c188b24
	nop 

loc_8c188AC6:
	mov.l @(0x84,PC),r3
	mov.l @(0x18,r14),r5
	jsr @r3
	mov r13,r4
	mov.l @(0x18,r14),r5
	mov 0x00,r7
	mov r0,r4
	bra loc_8c188af6
	mov 0x01,r1

loc_8c188AD8:
	mov.l @(0x18,r14),r3
	add 0x01,r3
	mov.l r3,@(0x18,r14)
	mov.b @r4,r13
	extu.b r13,r6
	mov r6,r0
	cmp/eq 0x33,r0
	bt loc_8c188aee
	mov.w @(0x48,PC),r3
	cmp/eq r3,r6
	bf loc_8c188af2

loc_8c188AEE:
	bra loc_8c188afe
	mov r1,r7

loc_8c188AF2:
	add 0x20,r4
	add 0x01,r5

loc_8c188AF6:
	mov.l @(0x1C,r14),r2
	mov.l @(0x30,r2),r3
	cmp/ge r3,r5
	bf loc_8c188ad8

loc_8c188AFE:
	tst r7,r7
	bf loc_8c188b08
	mov.w @(0x30,PC),r0
	bra loc_8c188b24
	nop 

loc_8c188B08:
	mov r4,r5
	mov.l @r15,r4
	add 0x04,r5
	mov r4,r14
	bra loc_8c188b1a
	add 0x0C,r14

loc_8c188B14:
	mov.b @r5+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c188B1A:
	cmp/hs r14,r4
	bf loc_8c188b14
	mov 0x00,r3
	mov r3,r0
	mov.b r3,@r14

loc_8c188B24:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c188B2E:
	#data 0x0148
loc_8c188B30:
	#data 0xFF01
loc_8c188B32:
	#data 0xFF03
loc_8c188B34:
	#data 0x00CC
loc_8c188B36:
	#data 0xFF05
	#align4

loc_8c188B38:
	#data 0x8C33C56C
loc_8c188B3C:
	#data bank19.loc_8c1988D8
loc_8c188B40:
	#data loc_8c187672
loc_8c188B44:
	#data bank19.loc_8c198918
loc_8c188B48:
	#data bank17.loc_8c1790BA
loc_8c188B4C:
	#data loc_8c18A3DC

;==============================================
loc_8c188B50:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov.w @(loc_8c188C06,pc),r14 ; r14 set to 0x148
	mov r4,r12
	mov.l @(loc_8c188C10,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r14,r12
	mov.l r5,@r15
	sts macl,r14
	mov.l r14,@(0x04,r15)
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.b @(0x02,r14),r0
	tst r0,r0
	bt/s loc_8c188B9E
	mov r6,r13
	mov.l @(loc_8c188C14,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r12,r4
	tst r0,r0
	bf loc_8c188B88
	mov.l @(loc_8c188C18,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r12,r4
	bra loc_8c188B9E
	nop

loc_8c188b88:
	mov.l @(loc_8c188c1c,pc),r2
	jsr @r2
	mov r12,r4
	tst r0,r0
	bt loc_8c188b9e
	mov.l @(0x04,r15),r2
	mov.l @(loc_8c188c10,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c188ba4

loc_8c188B9E:
	mov.w @(loc_8c188C08,pc),r0 ; r0 set to 0xFF01
	bra loc_8c188C80
	nop

loc_8c188BA4:
	mov.l @(0x78,PC),r3
	jsr @r3
	mov r12,r4
	cmp/pz r0
	bt loc_8c188bb4
	mov.w @(0x58,PC),r0
	bra loc_8c188c80
	nop 

loc_8c188BB4:
	mov.l @(0x6C,PC),r3
	mov 0x00,r11
	mov r11,r5
	mov.l r11,@(0x18,r14)
	jsr @r3
	mov r12,r4
	mov r11,r5
	mov r11,r7
	mov r0,r4
	bra loc_8c188be8
	mov 0x01,r12

loc_8c188BCA:
	mov.b @r4,r6
	extu.b r6,r1
	mov r1,r0
	cmp/eq 0x33,r0
	bt loc_8c188bda
	mov.w @(0x34,PC),r2
	cmp/eq r2,r1
	bf loc_8c188bde

loc_8c188BDA:
	bra loc_8c188bf0
	mov r12,r7

loc_8c188BDE:
	mov.l @(0x18,r14),r3
	add 0x20,r4
	add 0x01,r5
	add 0x01,r3
	mov.l r3,@(0x18,r14)

loc_8c188BE8:
	mov.l @(0x1C,r14),r2
	mov.l @(0x30,r2),r3
	cmp/ge r3,r5
	bf loc_8c188bca

loc_8c188BF0:
	tst r7,r7
	bf loc_8c188bfa
	mov.w @(0x16,PC),r0
	bra loc_8c188c80
	nop 

loc_8c188BFA:
	mov.l @r15,r5
	mov r4,r6
	add 0x04,r6
	mov r5,r1
	bra loc_8c188c2e
	add 0x0C,r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c188C06:
	#data 0x0148

loc_8c188C08:
	#data 0xFF01
loc_8c188C0a:
	#data 0xFF03
loc_8c188C0c:
	#data 0x00CC
loc_8c188C0e:
	#data 0xFF05
	#align4

loc_8c188C10:
	#data 0x8C33C56C
loc_8c188C14:
	#data bank19.loc_8c1988D8
loc_8c188C18:
	#data loc_8c187672
loc_8c188C1C:
	#data bank19.loc_8c198918
loc_8c188C20:
	#data bank17.loc_8c1790BA
loc_8c188C24:
	#data loc_8c18A3DC

;==============================================
loc_8c188C28:
	mov.b @r6+,r3
	mov.b r3,@r5
	add 0x01,r5

loc_8c188C2E:
	cmp/hs r1,r5
	bf loc_8c188c28
	mov.l @(0xF8,PC),r2
	mov r15,r5
	mov.b r11,@r1
	mov.l @(0x18,r14),r3
	add 0x01,r3
	mov.l r3,@(0x18,r14)
	jsr @r2
	add 0x08,r5
	mov.l @(0x1C,r14),r3
	mov.l @(0x2C,r3),r2
	mov.l @(0x30,r15),r3
	add 0x01,r2
	mul.l r2,r3
	mov.w @(0xD2,PC),r3
	sts macl,r2
	mov.l r2,@r13
	mov.l @(0x30,r15),r0
	mov.w r0,@(0x4,r13)
	mov.b @(0xC,r15),r0
	mov.b r0,@(0x6,r13)
	mov 0x12,r0
	mov.b @(r0,r15),r0
	mov.b r0,@(0x7,r13)
	mov.w @(0x10,r15),r0
	mov.w r0,@(0x8,r13)
	mov.l @(0xC,r15),r2
	cmp/eq r3,r2
	bf loc_8c188c6e
	bra loc_8c188c70
	mov r12,r0

loc_8c188C6E:
	mov r11,r0

loc_8c188C70:
	mov r15,r5
	mov.l @(0xBC,PC),r3
	mov r13,r4
	mov.b r0,@(0x6,r13)
	add 0x28,r5
	jsr @r3
	add 0x0A,r4
	mov 0x00,r0

loc_8c188C80:
	add 0x34,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c188C8E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov.w @(loc_8c188D24,pc),r13 ; r13 set to 0x148
	mov r4,r12
	mov.l @(loc_8c188D34,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r13,r12
	mov.l r5,@r15
	sts macl,r13
	mov.l r13,@(0x04,r15)
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.b @(0x02,r13),r0
	tst r0,r0
	bt/s loc_8c188CDE
	mov r6,r14
	mov.l @(loc_8c188D38,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r12,r4
	tst r0,r0
	bf loc_8c188CC8
	mov.l @(loc_8c188D3C,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r12,r4
	bra loc_8c188CDE
	nop

loc_8c188cc8:
	mov.l @(loc_8c188d40,pc),r2
	jsr @r2
	mov r12,r4
	tst r0,r0
	bt loc_8c188cde
	mov.l @(0x04,r15),r2
	mov.l @(loc_8c188d34,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c188ce4

loc_8c188CDE:
	mov.w @(loc_8c188D26,pc),r0 ; r0 set to 0xFF01
	bra loc_8c188DC0
	nop

loc_8c188CE4:
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r12,r4
	cmp/pz r0
	bt loc_8c188cf4
	mov.w @(0x36,PC),r0
	bra loc_8c188dc0
	nop 

loc_8c188CF4:
	mov.l @(0x50,PC),r3
	mov.l @(0x18,r13),r5
	jsr @r3
	mov r12,r4
	mov.l @(0x18,r13),r5
	mov 0x00,r10
	mov r0,r4
	mov r10,r11
	bra loc_8c188d50
	mov 0x01,r12

loc_8c188D08:
	mov.l @(0x18,r13),r3
	add 0x01,r3
	mov.l r3,@(0x18,r13)
	mov.b @r4,r7
	extu.b r7,r6
	mov r6,r0
	cmp/eq 0x33,r0
	bt loc_8c188d1e
	mov.w @(0x6,PC),r3
	cmp/eq r3,r6
	bf loc_8c188d4c

loc_8c188D1E:
	bra loc_8c188d58
	mov r12,r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c188D22:
	#data 0x00CC
loc_8c188D24:
	#data 0x0148
loc_8c188D26:
	#data 0xFF01
loc_8c188D28:
	#data 0xFF03
	#align4

loc_8c188D2C:
	#data loc_8c189E42
loc_8c188D30:
	#data loc_8c18A5DA
loc_8c188D34:
	#data 0x8C33C56C
loc_8c188D38:
	#data bank19.loc_8c1988D8
loc_8c188D3C:
	#data loc_8c187672
loc_8c188D40:
	#data bank19.loc_8c198918
loc_8c188D44:
	#data bank17.loc_8c1790BA
loc_8c188D48:
	#data loc_8c18A3DC

;==============================================
loc_8c188D4C:
	add 0x20,r4
	add 0x01,r5

loc_8c188D50:
	mov.l @(0x1C,r13),r2
	mov.l @(0x30,r2),r3
	cmp/ge r3,r5
	bf loc_8c188d08

loc_8c188D58:
	tst r11,r11
	bf loc_8c188d62
	mov.w @(0xFC,PC),r0
	bra loc_8c188dc0
	nop 

loc_8c188D62:
	mov.l @r15,r5
	mov r4,r6
	add 0x04,r6
	mov r5,r11
	bra loc_8c188d74
	add 0x0C,r11

loc_8c188D6E:
	mov.b @r6+,r3
	mov.b r3,@r5
	add 0x01,r5

loc_8c188D74:
	cmp/hs r11,r5
	bf loc_8c188d6e
	mov.l @(0xE4,PC),r3
	mov r15,r5
	mov.b r10,@r11
	jsr @r3
	add 0x08,r5
	mov.l @(0x1C,r13),r2
	mov.l @(0x2C,r2),r3
	mov.l @(0x30,r15),r2
	add 0x01,r3
	mul.l r3,r2
	sts macl,r3
	mov.l r3,@r14
	mov.l @(0x30,r15),r0
	mov.w @(0xC8,PC),r3
	mov.w r0,@(0x4,r14)
	mov.b @(0xC,r15),r0
	mov.b r0,@(0x6,r14)
	mov 0x12,r0
	mov.b @(r0,r15),r0
	mov.b r0,@(0x7,r14)
	mov.w @(0x10,r15),r0
	mov.w r0,@(0x8,r14)
	mov.l @(0xC,r15),r2
	cmp/eq r3,r2
	bf loc_8c188dae
	bra loc_8c188db0
	mov r12,r0

loc_8c188DAE:
	mov r10,r0

loc_8c188DB0:
	mov r15,r5
	mov.l @(0xB0,PC),r3
	mov r14,r4
	mov.b r0,@(0x6,r14)
	add 0x28,r5
	jsr @r3
	add 0x0A,r4
	mov 0x00,r0

loc_8c188DC0:
	add 0x34,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c188DD0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov r15,r6
	mov.l @(0x84,PC),r3
	mov r4,r14
	add 0x08,r6
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov r0,r11
	cmp/pz r11
	bt loc_8c188dfa
	mov.w @(0x64,PC),r0
	bra loc_8c188e4a
	nop 

loc_8c188DFA:
	mov.l @(0x70,PC),r3
	mov r11,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x6C,PC),r3
	mov.l r0,@(0x4,r15)
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c188e36
	mov.l @(0x60,PC),r10
	mov.l @(0x14,r15),r13
	bra loc_8c188e30
	mov 0x00,r12

loc_8c188E18:
	mov.l @(0x5C,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x58,PC),r3
	mov r13,r5
	extu.w r0,r9
	mov r10,r6
	jsr @r3
	mov r14,r4
	add 0x01,r12
	mov r9,r13

loc_8c188E30:
	mov.l @(0x30,r15),r2
	cmp/ge r2,r12
	bf loc_8c188e18


loc_8c188E36:
	mov.l @(0x48,PC),r3
	mov 0x00,r5
	mov 0x20,r6
	jsr @r3
	mov.l @(0x4,r15),r4
	mov.l @(0x40,PC),r2
	mov r11,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0

loc_8c188E4A:
	add 0x34,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c188E5c:
	#data 0xFF05
loc_8c188E5e:
	#data 0x00CC
	#align4

loc_8c188E60:
	#data loc_8c189E42
loc_8c188E64:
	#data loc_8c18A5DA
loc_8c188E68:
	#data loc_8c189EBE
loc_8c188E6C:
	#data loc_8c18A3DC
loc_8c188E70:
	#data loc_8c18A468
loc_8c188E74:
	#data 0x0000FFFC
loc_8c188E78:
	#data loc_8c18A328
loc_8c188E7C:
	#data loc_8c18A2F6
loc_8c188E80:
	#data bank12.loc_8c129728
loc_8c188E84:
	#data loc_8c18A3F4

;==============================================
loc_8c188E88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c188F40,pc),r13 ; r13 set to 0x148
	mov r4,r14
	mov.l @(loc_8c188F48,pc),r3 ; r3 set to 0x8C33C56C
	mov 0x01,r2 ; r2 set to 0x01
	mul.l r13,r14
	mov.l @(loc_8c188F4C,pc),r0 ; r0 set to 0x8C1C9718
	mov.l r5,@r15
	sts macl,r13
	mov.l r13,@(0x04,r15)
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.l r2,@(0x30,r13)  ; r13 ??
	mov.l @(0x04,r13),r1
	mov r1,r2 ; r2 ??? bc r1 is ???
	shll2 r1
	add r2,r1
	shll2 r1
	shll2 r1
	mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l r0,@(0x34,r13)
	mov.b @(0x02,r13),r0
	tst r0,r0
	bt loc_8c188EE6
	mov.l @(loc_8c188F50,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c188ED0
	mov.l @(loc_8c188F54,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r14,r4
	bra loc_8c188EE6
	nop

loc_8c188ed0:
	mov.l @(loc_8c188f58,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c188ee6
	mov.l @(0x04,r15),r2
	mov.l @(loc_8c188f48,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c188eec

loc_8c188EE6:
	mov.w @(loc_8c188F42,pc),r0 ; r0 set to 0xFF01
	bra loc_8c188F36
	nop

loc_8c188EEC:
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c188efc
	mov.w @(0x4A,PC),r0
	bra loc_8c188f36
	nop 

loc_8c188EFC:
	mov.l @(0x60,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c188f0e
	mov.w @(0x3A,PC),r0
	bra loc_8c188f36
	nop 

loc_8c188F0E:
	mov.l @r15,r5
	bsr loc_8c188dd0
	mov r14,r4
	cmp/pz r0
	bf/s loc_8c188f24
	mov r0,r4
	bsr loc_8c189c9e
	mov r14,r4
	cmp/pz r0
	bt/s loc_8c188f28
	mov r0,r4

loc_8c188F24:
	bra loc_8c188f36
	mov r4,r0

loc_8c188F28:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x34,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c188F36:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c188F40:
	#data 0x0148
loc_8c188F42:
	#data 0xFF01
loc_8c188F44:
	#data 0xFF03
loc_8c188F46:
	#data 0xFF0B
	#align4

loc_8c188F48:
	#data 0x8C33C56C
loc_8c188F4C:
	#data bank1c.loc_8c1c9718
loc_8c188F50:
	#data bank19.loc_8c1988D8
loc_8c188F54:
	#data loc_8c187672
loc_8c188F58:
	#data bank19.loc_8c198918
loc_8c188F5C:
	#data bank17.loc_8c1790BA
loc_8c188F60:
	#data loc_8c18A444
loc_8c188F64:
	#data loc_8c18A148

;==============================================
loc_8c188F68:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c189048,pc),r13 ; r13 set to 0x148
	mov r4,r14
	mov.l @(loc_8c189050,pc),r3 ; r3 set to 0x8C33C56C
	mov 0x01,r11 ; r11 set to 0x01
	mul.l r13,r14
	mov.l @(loc_8c189054,pc),r0 ; r0 set to 0x8C1C9740
	mov.l r5,@r15
	sts macl,r13
	mov.l r13,@(0x04,r15)
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.l r11,@(0x30,r13)  ; r13 ??
	mov.l @(0x04,r13),r2
	mov r2,r1
	shll2 r2
	add r1,r2
	shll2 r2
	shll2 r2
	mov.l @(r0,r2),r0 ; r0 ??? bc r2 is ???
	mov.l r0,@(0x34,r13)
	mov.b @(0x02,r13),r0
	tst r0,r0
	bt/s loc_8c188FD2
	mov r6,r12
	mov.l @(loc_8c189058,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c188FBC
	mov.l @(loc_8c18905C,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r14,r4
	bra loc_8c188FD2
	nop

loc_8c188fbc:
	mov.l @(loc_8c189060,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c188fd2
	mov.l @(0x04,r15),r2
	mov.l @(loc_8c189050,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c188fd8

loc_8c188FD2:
	mov.w @(loc_8c18904A,pc),r0 ; r0 set to 0xFF01
	bra loc_8c189072
	nop

loc_8c188FD8:
	mov.l @(0x88,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c188fe8
	mov.w @(0x66,PC),r0
	bra loc_8c189072
	nop 

loc_8c188FE8:
	mov 0x00,r8
	cmp/pl r12
	mov r8,r10
	bf/s loc_8c189006
	mov.l @r15,r13

loc_8c188FF2:
	mov.l @(0x74,PC),r2
	mov.l @r13,r5
	jsr @r2
	mov r14,r4
	cmp/pz r0
	bf loc_8c189042
	add 0x01,r10
	cmp/ge r12,r10
	bf/s loc_8c188ff2
	add 0x04,r13

loc_8c189006:
	cmp/pl r12
	mov r8,r10
	mov r8,r9
	bf/s loc_8c189024
	mov.l @r15,r13

loc_8c189010:
	mov.l @r13,r5
	bsr loc_8c188dd0
	mov r14,r4
	cmp/pz r0
	bt/s loc_8c18901e
	add 0x01,r10
	mov r11,r9

loc_8c18901E:
	cmp/ge r12,r10
	bf/s loc_8c189010
	add 0x04,r13

loc_8c189024:
	bsr loc_8c189c9e
	mov r14,r4
	cmp/pz r0
	bf/s loc_8c18903a
	mov r0,r4
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov r14,r4
	cmp/pz r0
	bt/s loc_8c18903e
	mov r0,r4

loc_8c18903A:
	bra loc_8c189072
	mov r4,r0

loc_8c18903E:
	tst r9,r9
	bt loc_8c189070

loc_8c189042:
	mov.w @(0x8,PC),r0
	bra loc_8c189072
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c189048:
	#data 0x0148
loc_8c18904A:
	#data 0xFF01
loc_8c18904c:
	#data 0xFF03
loc_8c18904e:
	#data 0xFF0A
	#align4

loc_8c189050:
	#data 0x8C33C56C
loc_8c189054:
	#data bank1c.loc_8c1c9740
loc_8c189058:
	#data bank19.loc_8c1988D8
loc_8c18905C:
	#data loc_8c187672
loc_8c189060:
	#data bank19.loc_8c198918
loc_8c189064:
	#data bank17.loc_8c1790BA
loc_8c189068:
	#data loc_8c18A444
loc_8c18906C:
	#data loc_8c18A148

;==============================================
loc_8c189070:
	mov 0x00,r0

loc_8c189072:
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
loc_8c189086:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xC8,r15
	mov.w @(loc_8c18914E,pc),r13 ; r13 set to 0x148
	mov r4,r14
	mov.l @(loc_8c18915C,pc),r3 ; r3 set to 0x8C33C56C
	mov 0x01,r2 ; r2 set to 0x01
	mul.l r13,r14
	mov.l @(loc_8c189160,pc),r0 ; r0 set to 0x8C1C971C
	mov.l r5,@r15
	mov.l r6,@(0x04,r15)
	sts macl,r13
	mov.l r13,@(0x08,r15)
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.l r2,@(0x30,r13)  ; r13 ??
	mov.l @(0x04,r13),r1
	mov r1,r2 ; r2 ??? bc r1 is ???
	shll2 r1
	add r2,r1
	shll2 r1
	shll2 r1
	mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l r0,@(0x34,r13)
	mov.b @(0x02,r13),r0
	tst r0,r0
	bt loc_8c1890E6
	mov.l @(loc_8c189164,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c1890D0
	mov.l @(loc_8c189168,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r14,r4
	bra loc_8c1890E6
	nop

loc_8c1890d0:
	mov.l @(loc_8c18916c,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c1890e6
	mov.l @(0x08,r15),r2
	mov.l @(loc_8c18915c,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c1890ec

loc_8c1890E6:
	mov.w @(loc_8c189150,pc),r0 ; r0 set to 0xFF01
	bra loc_8c189192
	nop

loc_8c1890EC:
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c1890fc
	mov.w @(0x58,PC),r0
	bra loc_8c189192
	nop 

loc_8c1890FC:
	mov.l @(0x74,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c18910e
	mov.w @(0x48,PC),r0
	bra loc_8c189192
	nop 

loc_8c18910E:
	mov.l @r15,r5
	mov r15,r6
	add 0x0C,r6
	bsr loc_8c189ebe
	mov r14,r4
	mov r0,r13
	cmp/pz r13
	bt loc_8c189124
	mov.w @(0x34,PC),r0
	bra loc_8c189192
	nop 

loc_8c189124:
	mov.l @(0x4,r15),r5
	mov r15,r6
	add 0x0C,r6
	bsr loc_8c189ebe
	mov r14,r4
	cmp/pz r0
	bf loc_8c189138
	mov.w @(0x22,PC),r0
	bra loc_8c189192
	nop 

loc_8c189138:
	mov.l @(0x3C,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov r0,r5
	mov r5,r4
	mov.l @(0x4,r15),r7
	mov r5,r6
	add 0x04,r4
	bra loc_8c189182
	add 0x10,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18914E:
	#data 0x0148
loc_8c189150:
	#data 0xFF01
loc_8c189152:
	#data 0xFF03
loc_8c189154:
	#data 0xFF0B
loc_8c189156:
	#data 0xFF05
loc_8c189158:
	#data 0xFF06
	#align4

loc_8c18915C:
	#data 0x8C33C56C
loc_8c189160:
	#data bank1c.loc_8c1c971C
loc_8c189164:
	#data bank19.loc_8c1988D8
loc_8c189168:
	#data loc_8c187672
loc_8c18916C:
	#data bank19.loc_8c198918
loc_8c189170:
	#data bank17.loc_8c1790BA
loc_8c189174:
	#data loc_8c18A444
loc_8c189178:
	#data loc_8c18A3DC

;==============================================
loc_8c18917C:
	mov.b @r7+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c189182:
	cmp/hs r6,r4
	bf loc_8c18917c
	mov.l @(0xE0,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	bsr loc_8c189c9e
	mov r14,r4

loc_8c189192:
	add 0x38,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18919c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xC0,r15
	mov.w @(0xB4,PC),r13
	mov r4,r14
	mov.l @(0xC0,PC),r3
	mov 0x01,r2
	mul.l r13,r14
	mov.l @(0xBC,PC),r0
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	sts macl,r13
	mov.l r13,@(0x8,r15)
	add r3,r13
	mov.l r2,@(0x30,r13)
	mov.l @(0x4,r13),r1
	mov r1,r2
	shll2 r1
	add r2,r1
	shll2 r1
	shll2 r1
	mov.l @(r0,r1),r0
	mov.l r0,@(0x34,r13)
	mov.b @(0x2,r13),r0
	tst r0,r0
	bt loc_8c1891fe
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c1891e8
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c1891fe
	nop 

loc_8c1891e8:
	mov.l @(0x90,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c1891fe
	mov.l @(0x8,r15),r2
	mov.l @(0x74,PC),r3
	add r3,r2
	mov.b @(0x8,r2),r0
	tst r0,r0
	bf loc_8c189204

loc_8c1891fe:
	mov.w @(0x5E,PC),r0
	bra loc_8c1892a6
	nop 

loc_8c189204:
	mov.l @(0x78,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c189214
	mov.w @(0x50,PC),r0
	bra loc_8c1892a6
	nop 


loc_8c189214:
	mov.l @(0x6C,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c189226
	mov.w @(0x40,PC),r0
	bra loc_8c1892a6
	nop 

loc_8c189226:
	mov.l @r15,r5
	mov r15,r6
	add 0x0C,r6
	bsr loc_8c189ebe
	mov r14,r4
	mov r0,r13
	cmp/pz r13
	bt loc_8c18923c
	mov.w @(0x2C,PC),r0
	bra loc_8c1892a6
	nop 

loc_8c18923c:
	mov.l @(0x48,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x44,PC),r3
	mov r0,r12
	mov.l @(0x4,r15),r5
	mov r15,r4
	jsr @r3
	add 0x38,r4
	mov r12,r4
	mov r15,r5
	mov r12,r6
	add 0x10,r4
	add 0x38,r5
	bra loc_8c189296
	add 0x18,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18925e:
	#data 0x0148
loc_8c189260:
	#data 0xFF01
loc_8c189262:
	#data 0xFF03
loc_8c189264:
	#data 0xFF0B
loc_8c189266:
	#data 0xFF05
	#align4

loc_8c189268:
	#data loc_8c18A3F4
loc_8c18926c:
	#data 0x8C33C56C
loc_8c189270:
	#data bank1c.loc_8c1c9724
loc_8c189274:
	#data bank19.loc_8c1988D8
loc_8c189278:
	#data loc_8c187672
loc_8c18927C:
	#data bank19.loc_8c198918
loc_8c189280:
	#data bank17.loc_8c1790BA
loc_8c189284:
	#data loc_8c18A444
loc_8c189288:
	#data loc_8c18A3DC
loc_8c18928C:
	#data loc_8c18A554

;==============================================
loc_8c189290:
	mov.b @r5+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c189296:
	cmp/hs r6,r4
	bf loc_8c189290
	mov.l @(0xE8,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	bsr loc_8c189c9e
	mov r14,r4

loc_8c1892a6:
	add 0x40,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1892b2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xC4,r15
	mov.w @(0xBC,PC),r3
	mov r4,r14
	mov.l @(0xC8,PC),r0
	mul.l r3,r14
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c1892f8
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c1892e0
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c1892f8
	nop 

loc_8c1892e0:
	mov.l @(0xB0,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c1892f8
	mov.w @(0x8A,PC),r3
	mov.l @(0xA8,PC),r0
	mul.l r3,r14
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c189302

loc_8c1892f8:
	mov.w @(0x7E,PC),r0
	add 0x3C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c189302:
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c189316
	mov.w @(0x6C,PC),r0
	add 0x3C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c189316:
	mov.l @(0x88,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c18932c
	mov.w @(0x58,PC),r0
	add 0x3C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c18932c:
	mov.l @r15,r5
	mov r15,r6
	add 0x10,r6
	bsr loc_8c189ebe
	mov r14,r4
	mov r0,r5
	cmp/pz r5
	bt loc_8c189346
	mov.w @(0x40,PC),r0
	add 0x3C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c189346:
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r14,r4
	mov r15,r14
	add 0x08,r14
	mov r0,r6
	mov r14,r5
	mov r14,r4
	add 0x10,r6
	bra loc_8c189362
	add 0x08,r5

loc_8c18935c:
	mov.b @r6+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c189362:
	cmp/hs r5,r4
	bf loc_8c18935c
	mov.l @(0x40,PC),r3
	mov r14,r5
	jsr @r3
	mov.l @(0x4,r15),r4
	mov 0x00,r0
	add 0x3C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189378:
	#data 0x0148
loc_8c18937a:
	#data 0xFF01
loc_8c18937c:
	#data 0xFF03
loc_8c18937e:
	#data 0xFF0B
loc_8c189380:
	#data 0xFF05
	#align4

loc_8c189384:
	#data loc_8c18A3F4
loc_8c189388:
	#data 0x8C33C56E
loc_8c18938C:
	#data bank19.loc_8c1988D8
loc_8c189390:
	#data loc_8c187672
loc_8c189394:
	#data bank19.loc_8c198918
loc_8c189398:
	#data 0x8C33C574
loc_8c18939C:
	#data bank17.loc_8c1790BA
loc_8c1893A0:
	#data loc_8c18A444
loc_8c1893A4:
	#data loc_8c18A3DC
loc_8c1893A8:
	#data loc_8c18A5DA

;==============================================
loc_8c1893AC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xC4,r15
	mov.w @(loc_8c189492,pc),r13 ; r13 set to 0x148
	mov r4,r14
	mov.l @(loc_8c18949C,pc),r3 ; r3 set to 0x8C33C56C
	mov 0x01,r2 ; r2 set to 0x01
	mul.l r13,r14
	mov r6,r0
	mov.l r5,@r15
	mov.w r0,@(0x08,r15)
	mov r7,r0
	mov.b r0,@(0x04,r15)
	sts macl,r13
	mov.l @(loc_8c1894A0,pc),r0 ; r0 set to 0x8C1C9724
	mov.l r13,@(0x0C,r15)
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.l r2,@(0x30,r13)  ; r13 ??
	mov.l @(0x04,r13),r1
	mov r1,r2 ; r2 ??? bc r1 is ???
	shll2 r1
	add r2,r1
	shll2 r1
	shll2 r1
	mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l r0,@(0x34,r13)
	mov.b @(0x02,r13),r0
	tst r0,r0
	bt loc_8c189414
	mov.l @(loc_8c1894A4,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c1893FE
	mov.l @(loc_8c1894A8,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r14,r4
	bra loc_8c189414
	nop

loc_8c1893fe:
	mov.l @(loc_8c1894ac,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c189414
	mov.l @(0x0C,r15),r2
	mov.l @(loc_8c18949c,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c18941a

loc_8c189414:
	mov.w @(loc_8c189494,pc),r0 ; r0 set to 0xFF01
	bra loc_8c189486
	nop

loc_8c18941A:
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c18942a
	mov.w @(0x6E,PC),r0
	bra loc_8c189486
	nop 

loc_8c18942A:
	mov.l @(0x88,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c18943c
	mov.w @(0x5E,PC),r0
	bra loc_8c189486
	nop 

loc_8c18943C:
	mov.l @r15,r5
	mov r15,r6
	add 0x10,r6
	bsr loc_8c189ebe
	mov r14,r4
	mov r0,r13
	cmp/pz r13
	bt loc_8c189452
	mov.w @(0x4A,PC),r0
	bra loc_8c189486
	nop 

loc_8c189452:
	mov.l @(0x64,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x60,PC),r3
	mov.l @r3,r2
	tst r2,r2
	bt/s loc_8c189476
	mov r0,r12
	mov.l @(0x58,PC),r1
	mov 0x1A,r5
	mov.l @r1,r2
	mov.l @(0x10,r2),r0
	mov r15,r2
	add 0x08,r2
	mov.w @r2,r6
	jsr @r0
	mov r12,r4

loc_8c189476:
	mov.b @(0x4,r15),r0
	mov r13,r5
	mov.l @(0x48,PC),r3
	mov.b r0,@(0x1,r12)
	jsr @r3
	mov r14,r4
	bsr loc_8c189c9e
	mov r14,r4

loc_8c189486:
	add 0x3C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c189492:
	#data 0x0148
loc_8c189494:
	#data 0xFF01
loc_8c189496:
	#data 0xFF03
loc_8c189498:
	#data 0xFF0B
loc_8c18949a:
	#data 0xFF05
	#align4

loc_8c18949C:
	#data 0x8C33C56C
loc_8c1894A0:
	#data bank1c.loc_8c1c9724
loc_8c1894A4:
	#data bank19.loc_8c1988D8
loc_8c1894A8:
	#data loc_8c187672
loc_8c1894AC:
	#data bank19.loc_8c198918
loc_8c1894B0:
	#data bank17.loc_8c1790BA
loc_8c1894B4:
	#data loc_8c18A444
loc_8c1894B8:
	#data loc_8c18A3DC
loc_8c1894BC:
	#data bank1c.loc_8c1c596C
loc_8c1894c0:
	#data 0x8C33C568
loc_8c1894C4:
	#data loc_8c18A3F4

;==============================================
loc_8c1894C8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov.w @(loc_8c1895AE,pc),r3 ; r3 set to 0x148
	mov r4,r14
	mov.l @(loc_8c1895B8,pc),r0 ; r0 set to 0x8C33C56E
	mul.l r3,r14
	mov.l r5,@r15
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c18950C
	mov.l @(loc_8c1895BC,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c1894F4
	mov.l @(loc_8c1895C0,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r14,r4
	bra loc_8c18950C
	nop

loc_8c1894f4:
	mov.l @(loc_8c1895c4,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c18950c
	mov.w @(loc_8c1895ae,pc),r3
	mov.l @(loc_8C1895C8,pc),r0
	mul.l r3,r14
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c189516

loc_8c18950C:
	mov.w @(loc_8c1895B0,pc),r0 ; r0 set to 0xFF01
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c189516:
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c18952a
	mov.w @(0x8E,PC),r0
	add 0x30,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18952A:
	mov.l @r15,r5
	bsr loc_8c18a444
	mov r14,r4
	cmp/pz r0
	bt loc_8c18953e
	mov.w @(0x7C,PC),r0
	add 0x30,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18953E:
	mov.l @r15,r5
	mov r15,r6
	add 0x04,r6
	bsr loc_8c189ebe
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c189558
	mov.w @(0x64,PC),r0
	add 0x30,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189558:
	mov.l @(0x2C,r15),r0
	add 0x30,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189562:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xD4,r15
	mov.w @(loc_8c1895AE,pc),r3 ; r3 set to 0x148
	mov r4,r14
	mov.l @(loc_8c1895B8,pc),r0 ; r0 set to 0x8C33C56E
	mul.l r3,r14
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt/s loc_8c1895A8
	mov r5,r13
	mov.l @(loc_8c1895BC,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c189590
	mov.l @(loc_8c1895C0,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r14,r4
	bra loc_8c1895A8
	nop

loc_8c189590:
	mov.l @(loc_8c1895c4,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c1895a8
	mov.w @(loc_8c1895ae,pc),r3
	mov.l @(loc_8C1895C8,pc),r0
	mul.l r3,r14
	sts macl,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c1895d0

loc_8c1895A8:
	mov.w @(loc_8c1895B0,pc),r0 ; r0 set to 0xFF01
	bra loc_8c189610
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1895AE:
	#data 0x0148
loc_8c1895B0:
	#data 0xFF01
loc_8c1895B2:
	#data 0xFF03
loc_8c1895B4:
	#data 0xFF0B
loc_8c1895B6:
	#data 0xFF05
	#align4

loc_8c1895B8:
	#data 0x8C33C56E
loc_8c1895BC:
	#data bank19.loc_8c1988D8
loc_8c1895C0:
	#data loc_8c187672
loc_8c1895C4:
	#data bank19.loc_8c198918
loc_8c1895c8:
	#data 0x8C33C574
loc_8c1895CC:
	#data bank17.loc_8c1790BA

;==============================================
loc_8c1895D0:
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c1895e0
	mov.w @(0xC4,PC),r0
	bra loc_8c189610
	nop 

loc_8c1895E0:
	mov r15,r5
	bsr loc_8c189f2e
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c1895f2
	mov.w @(0xB4,PC),r0
	bra loc_8c189610
	nop 

loc_8c1895F2:
	mov 0x00,r6
	mov r6,r4
	bra loc_8c189606
	mov 0x0C,r5

loc_8c1895FA:
	mov r15,r3
	add 0x10,r3
	mov r4,r0
	mov.b @(r0,r3),r3
	add 0x01,r4
	mov.b r3,@(r0,r13)

loc_8c189606:
	cmp/ge r5,r4
	bf loc_8c1895fa
	mov r6,r0
	mov.b r0,@(0xC,r13)
	mov 0x00,r0

loc_8c189610:
	add 0x2C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18961A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c1896A6,pc),r14 ; r14 set to 0x148
	mov r4,r13
	mov.l @(loc_8c1896B0,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r14,r13
	sts macl,r14
	mov.l r14,@r15
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.b @(0x02,r14),r0
	tst r0,r0
	bt loc_8c189660
	mov.l @(loc_8c1896B4,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r13,r4
	tst r0,r0
	bf loc_8c18964A
	mov.l @(loc_8c1896B8,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r13,r4
	bra loc_8c189660
	nop

loc_8c18964a:
	mov.l @(loc_8c1896bc,pc),r2
	jsr @r2
	mov r13,r4
	tst r0,r0
	bt loc_8c189660
	mov.l @r15,r2
	mov.l @(loc_8c1896b0,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c189666

loc_8c189660:
	mov.w @(loc_8c1896A8,pc),r0 ; r0 set to 0xFF01
	bra loc_8c189698
	nop

loc_8c189666:
	mov.l @(0x20,r14),r5
	mov 0x00,r4
	mov 0x10,r7
	mov r4,r6

loc_8c18966E:
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x55,r0
	bt loc_8c18967e
	mov r4,r0
	mov.b r0,@(0xB,r14)
	bra loc_8c189690
	mov.b r0,@(0xC,r14)

loc_8c18967E:
	add 0x01,r6
	cmp/ge r7,r6
	bf/s loc_8c18966e
	add 0x01,r5
	mov.l @(0x38,PC),r0
	shll2 r13
	mov.l @(r0,r13),r3
	tst r3,r3
	bt loc_8c189696

loc_8c189690:
	mov.w @(0xE,PC),r0
	bra loc_8c189698
	nop 


loc_8c189696:
	mov 0x00,r0

loc_8c189698:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1896A2:
	#data 0xFF03
loc_8c1896A4:
	#data 0xFF05
loc_8c1896A6:
	#data 0x0148
loc_8c1896A8:
	#data 0xFF01
	#align4

loc_8c1896AC:
	#data bank17.loc_8c1790BA
loc_8c1896B0:
	#data 0x8C33C56C
loc_8c1896B4:
	#data bank19.loc_8c1988D8
loc_8c1896B8:
	#data loc_8c187672
loc_8c1896BC:
	#data bank19.loc_8c198918
loc_8c1896C0:
	#data 0x8C33CFAC

;==============================================
loc_8c1896c4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0xE2,PC),r3
	mov r4,r14
	mov.l @(0xE8,PC),r2
	mul.l r3,r14
	mov.l r5,@(0x4,r15)
	sts macl,r3
	mov.l r3,@(0x8,r15)
	add r2,r3
	mov r3,r1
	mov.l r3,@r15
	mov.b @(0x2,r1),r0
	tst r0,r0
	bt loc_8c18970e
	mov.l @(0xD4,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c1896f8
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c18970e
	nop 

loc_8c1896f8:
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c18970e
	mov.l @(0x8,r15),r2
	mov.l @(0xB0,PC),r3
	add r3,r2
	mov.b @(0x8,r2),r0
	tst r0,r0
	bf loc_8c189718

loc_8c18970e:
	mov.w @(0xA0,PC),r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c189718:
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c18972c
	mov.w @(0x8E,PC),r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c18972c:
	mov.l @r15,r4
	mov 0x00,r5
	mov.l @(0x20,r4),r4
	add 0x10,r4
	bra loc_8c189744
	mov 0x20,r6

loc_8c189738:
	mov.l @(0x4,r15),r2
	add 0x01,r5
	add 0x01,r2
	mov.l r2,@(0x4,r15)
	mov.b @r4+,r3
	mov.b r3,@-r2

loc_8c189744:
	cmp/ge r6,r5
	bf loc_8c189738
	mov 0x00,r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189752:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x52,PC),r13
	mov r4,r14
	mov.l @(0x58,PC),r3
	mul.l r13,r14
	mov.l r5,@r15
	sts macl,r13
	mov.l r13,@(0x4,r15)
	add r3,r13
	mov.b @(0x2,r13),r0
	tst r0,r0
	bt loc_8c18979a
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c189784
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c18979a
	nop 

loc_8c189784:
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c18979a
	mov.l @(0x4,r15),r2
	mov.l @(0x24,PC),r3
	add r3,r2
	mov.b @(0x8,r2),r0
	tst r0,r0
	bf loc_8c1897a0

loc_8c18979a:
	mov.w @(0x14,PC),r0
	bra loc_8c189808
	nop 

loc_8c1897a0:
	mov.l @(0x24,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c1897cc
	mov.w @(0x6,PC),r0
	bra loc_8c189808
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1897b0:
	#data 0x0148
loc_8c1897b2:
	#data 0xFF01
loc_8c1897b4:
	#data 0xFF03
	#align4
	#data 0x8C33C56C

loc_8c1897BC:
	#data bank19.loc_8c1988D8
loc_8c1897C0:
	#data loc_8c187672
loc_8c1897C4:
	#data bank19.loc_8c198918
loc_8c1897C8:
	#data bank17.loc_8c1790BA

;==============================================
loc_8c1897cc:
	mov.l @(0x20,r13),r5
	mov 0x00,r6
	mov r6,r7
	add 0x10,r5
	bra loc_8c1897de
	mov 0x20,r4

loc_8c1897d8:
	mov.b r6,@r5
	add 0x01,r5
	add 0x01,r7

loc_8c1897de:
	cmp/ge r4,r7
	bf loc_8c1897d8
	mov.l @(0x20,r13),r5
	bra loc_8c1897f8
	add 0x10,r5

loc_8c1897e8:
	mov.l @r15,r2
	add 0x01,r6
	add 0x01,r2
	mov.l r2,@r15
	add 0xFF,r2
	mov.b @r2,r3
	mov.b r3,@r5
	add 0x01,r5

loc_8c1897f8:
	cmp/ge r4,r6
	bf loc_8c1897e8
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c189fb2
	mov.l @r15+,r14

loc_8c189808:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c189812:
	rts 
	mov 0x00,r0

;==============================================
loc_8c189816:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.w @(0xB8,PC),r13
	mov.l r12,@-r15
	mul.l r13,r4
	mov.l @(0xB4,PC),r3
	sts.l pr,@-r15
	mov.l @(0xB4,PC),r12
	sts macl,r13
	add r3,r13
	bra loc_8c189850
	mov 0x00,r14

loc_8c18982E:
	mov.l @r12,r3
	mov r14,r5
	shll r5
	mov.l @(0xC,r3),r2
	jsr @r2
	mov.l @(0x24,r13),r4
	mov.l @(0xA4,PC),r1
	extu.w r0,r4
	mov r4,r0
	cmp/eq r1,r0
	bt loc_8c18984e
	mov.l @(0x9C,PC),r1
	cmp/eq r1,r0
	bt loc_8c18984e
	bra loc_8c18985a
	mov r14,r0

loc_8c18984E:
	add 0x01,r14

loc_8c189850:
	mov.l @(0x1C,r13),r2
	mov.l @(0x30,r2),r3
	cmp/ge r3,r14
	bf loc_8c18982e
	mov 0xFF,r0

loc_8c18985A:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189864:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.w @(0x6A,PC),r13
	mov.l @(0x6C,PC),r3
	mul.l r13,r4
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r5,r11
	mov.l r10,@-r15
	sts macl,r13
	sts.l pr,@-r15
	mov.l @(0x60,PC),r10
	add r3,r13
	mov.l @(0x60,PC),r12
	mov.l @(0x1C,r13),r14
	mov.l @(0x30,r14),r14
	add 0xFF,r14
	cmp/ge r11,r14
	bf loc_8c1898a6

loc_8c18988A:
	mov.l @r10,r3
	mov r14,r5
	shll r5
	mov.l @(0xC,r3),r2
	jsr @r2
	mov.l @(0x24,r13),r4
	extu.w r0,r0
	cmp/eq r12,r0
	bf loc_8c1898a0
	bra loc_8c1898a8
	mov r14,r0

loc_8c1898A0:
	add 0xFF,r14
	cmp/ge r11,r14
	bt loc_8c18988a

loc_8c1898A6:
	mov 0xFF,r0

loc_8c1898A8:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1898B6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x10,PC),r12
	mov.l @(0x10,PC),r3
	mul.l r12,r4
	mov.l @(0x10,PC),r11
	mov.l r5,@r15
	sts macl,r12
	add r3,r12
	mov.l @(0x28,r12),r14
	bra loc_8c18990a
	mov 0x00,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1898d6:
	#data 0x0148
	#align4

loc_8c1898d8:
	#data 0x8C33C56C
loc_8c1898dc:
	#data 0x8C33C568
loc_8c1898e0:
	#data 0x0000FFFC
loc_8c1898e4:
	#data 0x0000FFFF

;==============================================
loc_8c1898E8:
	mov.b @r14,r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c189906
	mov.l @r11,r2
	mov 0x02,r5
	mov.l @(0xC,r2),r3
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	extu.w r0,r0
	cmp/eq r2,r0
	bf loc_8c189906
	bra loc_8c189914
	mov r14,r0

loc_8c189906:
	add 0x20,r14
	add 0x01,r13

loc_8c18990A:
	mov.l @(0x1C,r12),r2
	mov.l @(0x30,r2),r3
	cmp/ge r3,r13
	bf loc_8c1898e8
	mov 0x00,r0

loc_8c189914:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189922:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.w @(0xA0,PC),r14
	mov.l r12,@-r15
	mov r4,r12
	mul.l r14,r12
	mov.l @(0x9C,PC),r3
	sts.l pr,@-r15
	sts macl,r14
	add r3,r14
	bra loc_8c18997a
	mov 0x00,r13

loc_8c18993A:
	mov r13,r5
	bsr loc_8c18a328
	mov r12,r4
	mov.l @(0x8C,PC),r1
	extu.w r0,r4
	mov r4,r0
	cmp/eq r1,r0
	bt loc_8c189978
	mov.l @(0x88,PC),r1
	cmp/eq r1,r0
	bt loc_8c189978
	mov.l @(0x84,PC),r1
	cmp/eq r1,r0
	bt loc_8c189978
	mov.l @(0x1C,r14),r3
	mov.l @(0x30,r3),r2
	cmp/ge r2,r13
	bt loc_8c18996a
	mov.l @(0x1C,r14),r1
	mov.l @(0x30,r1),r3
	cmp/ge r3,r4
	bt loc_8c189974
	bra loc_8c189978
	nop 

loc_8c18996A:
	mov.l @(0x1C,r14),r2
	mov.l @r2,r3
	add 0x01,r3
	cmp/ge r3,r4
	bf loc_8c189978

loc_8c189974:
	bra loc_8c189986
	mov 0xFF,r0

loc_8c189978:
	add 0x01,r13

loc_8c18997a:
	mov.l @(0x1C,r14),r2
	mov.l @r2,r3
	add 0x01,r3
	cmp/ge r3,r13
	bf loc_8c18993a
	mov 0x00,r0

loc_8c189986:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189990:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.w @(loc_8c1899CA,pc),r11 ; r11 set to 0x148
	mov r4,r14
	mov.l @(loc_8c1899CC,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r11,r14
	sts macl,r11
	mov.l r11,@r15
	add r3,r11 ; r11 set to 0x8C33C6B4
	mov.b @(0x02,r11),r0
	tst r0,r0
	bt/s loc_8c1899FA
	mov r5,r10
	mov.l @(loc_8c1899DC,pc),r3 ; r3 set to 0x8C1988D8
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c1899E4
	mov.l @(loc_8c1899E0,pc),r3 ; r3 set to 0x8C187672
	jsr @r3
	mov r14,r4
	bra loc_8c1899FA
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1899CA:
	#data 0x0148
	#align4

loc_8c1899CC:
	#data 0x8C33C56C
loc_8c1899D0:
	#data 0x0000FFFC
loc_8c1899D4:
	#data 0x0000FFFF
loc_8c1899D8:
	#data 0x0000FFFA
loc_8c1899DC:
	#data bank19.loc_8c1988D8
loc_8c1899E0:
	#data loc_8c187672

;==============================================
loc_8c1899e4:
	mov.l @(loc_8c189ab8,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c1899fa
	mov.l @r15,r2
	mov.l @(loc_8C189ABC,pc),r3
	add r3,r2
	mov.b @(0x08,r2),r0 
	tst r0,r0
	bf loc_8c189a00

loc_8c1899FA:
	mov.w @(loc_8c189AB2,pc),r0 ; r0 set to 0xFF01
	bra loc_8c189AFE
	nop

loc_8c189A00:
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r14,r4
	cmp/pz r0
	bt loc_8c189a10
	mov.w @(0xA6,PC),r0
	bra loc_8c189afe
	nop 

loc_8c189A10:
	mov.l @(0x1C,r11),r3
	mov.l @(0x38,r3),r2
	tst r2,r2
	bt loc_8c189a2e
	mov r15,r5
	add 0x04,r5
	bsr loc_8c189562
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c189a2e
	bsr loc_8c189922
	mov r14,r4
	cmp/pz r0
	bt loc_8c189a34

loc_8c189A2E:
	mov.w @(0x84,PC),r0
	bra loc_8c189afe
	nop 

loc_8c189A34:
	bsr loc_8c189816
	mov r14,r4
	mov r0,r13
	cmp/pz r13
	bf loc_8c189ad4
	mov r13,r5
	add 0x01,r5
	bsr loc_8c189864
	mov r14,r4
	mov r0,r12
	cmp/pz r12
	bf loc_8c189ad4
	mov.l @(0x74,PC),r9
	mov r13,r5
	mov r10,r6
	jsr @r9
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bf loc_8c189afc
	mov.l @(0x68,PC),r9
	mov r12,r5
	mov r10,r6
	jsr @r9
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bf loc_8c189afc
	mov r13,r5
	bsr loc_8c18a1e8
	mov r14,r4
	mov r0,r5
	cmp/pl r5
	bf loc_8c189a82
	mov r12,r6
	bsr loc_8c18a2f6
	mov r14,r4
	bra loc_8c189a96
	nop 

loc_8c189A82:
	mov r13,r5
	bsr loc_8c1898b6
	mov r14,r4
	mov.l @(0x40,PC),r9
	mov r12,r6
	mov r0,r4
	mov.l @r9,r3
	mov.l @(0x10,r3),r2
	jsr @r2
	mov 0x02,r5

loc_8c189A96:
	mov r13,r5
	bsr loc_8c18a328
	mov r14,r4
	mov r12,r5
	mov r0,r6
	bsr loc_8c18a2f6
	mov r14,r4
	mov.l @(0x28,PC),r12
	mov r13,r5
	mov r12,r6
	bsr loc_8c18a2f6
	mov r14,r4
	bra loc_8c189a34
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c189AB2:
	#data 0xFF01
loc_8c189AB4:
	#data 0xFF03
loc_8c189AB6:
	#data 0xFF0B
	#align4

loc_8c189AB8:
	#data bank19.loc_8c198918
loc_8c189abc:
	#data 0x8C33C56C
loc_8c189AC0:
	#data bank17.loc_8c1790BA
loc_8c189AC4:
	#data loc_8c186778
loc_8c189AC8:
	#data loc_8c186850
loc_8c189Acc:
	#data 0x8C33C568
loc_8c189Ad0:
	#data 0x0000FFFC

;==============================================
loc_8c189AD4:
	mov.w @(0x10E,PC),r5
	mov r11,r4
	add 0x48,r4
	bra loc_8c189ae2
	mov 0x01,r6

loc_8c189ADE:
	mov.b r6,@r4
	add 0x01,r4

loc_8c189AE2:
	mov r11,r2
	add 0x48,r2
	add r5,r2
	cmp/hs r2,r4
	bf loc_8c189ade
	bsr loc_8c189c9e
	mov r14,r4
	cmp/pz r0
	bf/s loc_8c189afc
	mov r0,r4
	bsr loc_8c18a148
	mov r14,r4
	mov r0,r4

loc_8c189AFC:
	mov r4,r0

loc_8c189AFE:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c189B10:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.w @(0xCC,PC),r4
	mov.l @(0xD0,PC),r3
	mul.l r4,r12
	mov.l r11,@-r15
	mov 0x00,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts macl,r4
	mov.l r8,@-r15
	sts.l pr,@-r15
	add r3,r4
	mov.w @(0xB8,PC),r8
	mov.l @(0x1C,r4),r5
	mov.l @(0xBC,PC),r9
	mov.l @(0x18,r5),r10
	mov.l @(0x14,r5),r13
	cmp/pl r10
	bf/s loc_8c189b6a
	mov.l @(0x28,r4),r14

loc_8c189B3E:
	mov.l @(0xB4,PC),r3
	extu.w r13,r5
	mov r14,r6
	jsr @r3
	mov r12,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c189b52
	bra loc_8c189b6c
	mov r4,r0

loc_8c189B52:
	extu.w r13,r5
	bsr loc_8c18a328
	mov r12,r4
	mov r0,r4
	extu.w r4,r2
	cmp/eq r9,r2
	bt loc_8c189b6a
	add 0x01,r11
	mov r4,r13
	cmp/ge r10,r11
	bf/s loc_8c189b3e
	add r8,r14

loc_8c189B6A:
	mov 0x00,r0

loc_8c189B6C:
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
loc_8c189B7E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0x54,PC),r9
	mov r4,r14
	mov.l @(0x54,PC),r3
	mov 0x00,r11
	mul.l r9,r14
	mov.l @(0x54,PC),r10
	mov r10,r13
	sts macl,r9
	add r3,r9
	mov.l @(0x1C,r9),r4
	mov.w @(0x14,r4),r0
	mov.w r0,@(0x4,r15)
	mov.w @(0x4,r15),r0
	mov.l @(0x18,r4),r8
	mov r0,r12
	cmp/pl r8
	bf/s loc_8c189bd8
	add 0x02,r13

loc_8c189BB4:
	extu.w r12,r5
	mov.l r5,@r15
	bsr loc_8c18a328
	mov r14,r4
	mov.l @r15,r5
	mov r13,r6
	mov r0,r12
	bsr loc_8c18a2f6
	mov r14,r4
	extu.w r12,r2
	cmp/eq r10,r2
	bt loc_8c189bd8
	extu.w r12,r3
	cmp/eq r13,r3
	bt loc_8c189bd8
	add 0x01,r11
	cmp/ge r8,r11
	bf loc_8c189bb4

loc_8c189BD8:
	mov.w @(0x4,r15),r0
	mov r8,r3
	add 0xFF,r3
	mov r0,r12
	mov 0x00,r11
	bra loc_8c189c60
	mov.l r3,@(0x8,r15)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c189Be6:
	#data 0x0100
loc_8c189Be8:
	#data 0x0148
loc_8c189Bea:
	#data 0x0200
	#align4

loc_8c189Bec:
	#data 0x8C33C56C
loc_8c189Bf0:
	#data 0x0000FFFA
loc_8c189BF4:
	#data loc_8c186778

;==============================================
loc_8c189BF8:
	mov r11,r1
	shll8 r1
	shll r1
	mov.l r1,@r15

loc_8c189C00:
	mov.l @(0x28,r9),r6
	extu.w r12,r5
	mov.l @r15,r3
	mov.l @(0x10C,PC),r2
	add r3,r6
	jsr @r2
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c189c32
	mov.w @(0xF6,PC),r3
	cmp/eq r3,r4
	bf loc_8c189c1e
	bra loc_8c189c8a
	mov r4,r0

loc_8c189C1E:
	mov.l @(0xF8,PC),r6
	extu.w r12,r5
	bsr loc_8c18a2f6
	mov r14,r4
	mov.l @(0xF4,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	bra loc_8c189c00
	mov r0,r12

loc_8c189C32:
	tst r11,r11
	bf/s loc_8c189c3c
	mov r10,r6
	mov r12,r0
	mov.w r0,@(0x4,r15)

loc_8c189C3C:
	extu.w r12,r5
	mov.l r5,@(0xC,r15)
	bsr loc_8c18a2f6
	mov r14,r4
	mov.l @(0x8,r15),r2
	cmp/eq r2,r11
	bt loc_8c189c5e
	mov.l @(0xD0,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	mov r0,r6
	mov.w r0,@r15
	mov.l @(0xC,r15),r5
	bsr loc_8c18a2f6
	mov r14,r4
	mov.w @r15,r12

loc_8c189C5E:
	add 0x01,r11

loc_8c189C60:
	cmp/ge r8,r11
	bf loc_8c189bf8
	mov.l @(0x1C,r9),r3
	mov.w @(0x4,r15),r0
	mov.l @(0x14,r3),r2
	extu.w r0,r0
	cmp/eq r2,r0
	bt loc_8c189c88
	mov.l @(0xAC,PC),r3
	mov 0x4A,r5
	mov.w @(0x4,r15),r0
	mov.l @r3,r1
	mov r0,r6
	mov.l @(0x10,r1),r2
	jsr @r2
	mov.l @(0x20,r9),r4
	bsr loc_8c18a148
	mov r14,r4
	bsr loc_8c189fb2
	mov r14,r4

loc_8c189C88:
	mov 0x00,r0

loc_8c189C8A:
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
loc_8c189C9E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8c189D10,pc),r9 ; r9 set to 0x148
	mov r4,r13
	mov.l @(loc_8c189D24,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r9,r13
	sts macl,r9
	add r3,r9 ; r9 set to 0x8C33C6B4
	mov.l @(0x1C,r9),r5
	mov.l @(0x18,r5),r2
	mov.l @(0x14,r5),r4
	mov.l r2,@(0x04,r15)
	mov 0x00,r2 ; r2 set to 0x00
	mov r2,r10 ; r10 set to 0x00
	mov.l r2,@(0x08,r15)
	bra loc_8c189D90
	extu.w r4,r14

loc_8c189CCE:
	mov r9,r3
	add 0x48,r3
	add r10,r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c189d82
	mov r10,r2
	shll8 r2
	shll r2
	mov.l r2,@r15
loc_8c189CE2:
	mov.l @(0x28,r9),r6
	mov r14,r5
	mov.l @r15,r3
	mov.l @(0x28,PC),r2
	add r3,r6
	jsr @r2
	mov r13,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c189d28
	mov r14,r5
	bsr loc_8c18a328
	mov r13,r4
	mov r9,r3
	add 0x48,r3
	add r10,r3
	mov r14,r8
	mov 0x00,r2
	mov.b r2,@r3
	extu.w r0,r11
	bra loc_8c189d8e
	mov r11,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c189D0e:
	#data 0xFF01
loc_8c189D10:
	#data 0x0148
	#align4

loc_8c189D14:
	#data loc_8c186850
loc_8c189D18:
	#data 0x0000FFFF
loc_8c189D1C:
	#data loc_8c187AB2
loc_8c189D20:
	#data 0x8C33C568
loc_8c189D24:
	#data 0x8C33C56C

;==============================================
loc_8c189D28:
	mov.w @(0xB8,PC),r2
	cmp/eq r2,r4
	bt loc_8c189db0
	mov 0x01,r2
	mov r14,r5
	mov.l r2,@(0x8,r15)
	bsr loc_8c18a328
	mov r13,r4
	mov.l @(0xAC,PC),r6
	mov r14,r5
	extu.w r0,r11
	bsr loc_8c18a2f6
	mov r13,r4
	mov.l @(0xAC,PC),r3
	mov.l @(0xA4,PC),r5
	jsr @r3
	mov r13,r4
	mov r0,r12
	cmp/pz r12
	bt loc_8c189d56
	mov.w @(0x92,PC),r0
	bra loc_8c189db6
	nop 

loc_8c189D56:
	mov r12,r5
	mov r11,r6
	bsr loc_8c18a2f6
	mov r13,r4
	tst r10,r10
	bf loc_8c189d74
	mov.l @(0x90,PC),r2
	mov 0x4A,r5
	mov r12,r6
	mov.l @r2,r3
	mov.l @(0x10,r3),r1
	jsr @r1
	mov.l @(0x20,r9),r4
	bra loc_8c189d7c
	nop 

loc_8c189D74:
	mov r8,r5
	mov r12,r6
	bsr loc_8c18a2f6
	mov r13,r4

loc_8c189D7C:
	mov r14,r8
	bra loc_8c189ce2
	mov r12,r14

loc_8c189D82:
	mov r14,r5
	bsr loc_8c18a328
	mov r13,r4
	mov r14,r8
	extu.w r0,r11
	mov r11,r14

loc_8c189D8E:
	add 0x01,r10

loc_8c189d90:
	mov.l @(0x04,r15),r3
	cmp/ge r3,r10
	bf loc_8c189cce
	mov.l @(0x08,r15),r1
	tst r1,r1
	bt loc_8c189db4
	bsr loc_8c18a148
	mov r13,r4
	mov r0,r4
	cmp/pz r4
	bf loc_8c189db0
	bsr loc_8c189fb2
	mov r13,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c189db4

loc_8c189db0:
	bra loc_8c189db6
	mov r4,r0

loc_8c189db4:
	mov 0x00,r0

loc_8c189db6:
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

;==============================================
loc_8c189dca:
	mov 0x00,r6
	mov 0x0C,r7
	mov r6,r5

loc_8c189dd0:
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c189de0
	add 0x01,r6
	cmp/ge r7,r6
	add 0x01,r5
	bf/s loc_8c189dd0
	add 0x01,r4

loc_8c189de0:
	rts 
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c189de4:
	#data 0xFF01
loc_8c189de6:
	#data 0xFF04
	#align4

loc_8c189de8:
	#data 0x0000FFFF
loc_8c189dec:
	#data 0x0000FFFC
loc_8c189df0:
	#data loc_8C187AB2
loc_8c189df4:
	#data 0x8C33C568

;==============================================
loc_8c189df8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	bsr loc_8c189dca
	mov.l @r15,r4
	mov r0,r14
	bsr loc_8c189dca
	mov.l @(0x4,r15),r4
	mov r0,r4
	cmp/eq r4,r14
	bf loc_8c189e24
	mov.l @(0x4,r15),r4
	cmp/pl r14
	mov 0x00,r6
	bf/s loc_8c189e38
	mov.l @r15,r5

loc_8c189e1c:
	mov.b @r4,r3
	mov.b @r5,r2
	cmp/eq r3,r2
	bt loc_8c189e2e

loc_8c189e24:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189e2e:
	add 0x01,r6
	cmp/ge r14,r6
	add 0x01,r4
	bf/s loc_8c189e1c
	add 0x01,r5

loc_8c189e38:
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189e42:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r13,r5
	sts.l pr,@-r15
	mov.b @r13,r3
	mov r14,r4
	add 0x10,r4
	extu.b r3,r3
	mov.l r3,@(0x4,r14)
	add 0x04,r5

loc_8c189e5c:
	mov.b @r5+,r2
	mov r14,r3
	add 0x1C,r3
	mov.b r2,@r4
	add 0x01,r4
	cmp/hs r3,r4
	bf loc_8c189e5c
	mov r13,r5
	mov r14,r4
	mov 0x00,r3
	mov 0x1C,r0
	add 0x20,r4
	mov.b r3,@(r0,r14)
	add 0x10,r5

loc_8c189e78:
	mov.b @r5+,r3
	mov r14,r2
	add 0x28,r2
	mov.b r3,@r4
	add 0x01,r4
	cmp/hs r2,r4
	bf loc_8c189e78
	mov.l @(0x84,PC),r12
	mov 0x02,r5
	mov.l @r12,r2
	mov.l @(0xC,r2),r3
	jsr @r3
	mov r13,r4
	extu.w r0,r0
	mov 0x18,r5
	mov.l r0,@(0xC,r14)
	mov.l @r12,r2
	mov.l @(0xC,r2),r3
	jsr @r3
	mov r13,r4
	extu.w r0,r0
	mov.l r0,@(0x28,r14)
	mov 0x1A,r5
	mov.b @(0x1,r13),r0
	mov.b r0,@(0xA,r14)
	mov.l @r12,r0
	mov.l @(0xC,r0),r0
	jsr @r0
	mov r13,r4
	mov.w r0,@(0x8,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189EBE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c189F08,pc),r12 ; r12 set to 0x148
	mov.l @(loc_8c189F10,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r12,r4
	mov.l r5,@(0x04,r15)
	mov.l r6,@r15
	sts macl,r12
	add r3,r12 ; r12 set to 0x8C33C6B4
	mov.l @(0x28,r12),r14
	bra loc_8c189F18
	mov 0x00,r13

loc_8c189EDC:
	mov.b @r14,r4
	extu.b r4,r0
	cmp/eq 0x33,r0
	bt loc_8c189ef2
	mov.w @(0x22,PC),r1
	cmp/eq r1,r0
	bt loc_8c189ef2
	cmp/eq 0x00,r0
	bt loc_8c189f14
	bra loc_8c189f14
	nop 

loc_8c189EF2:
	mov r14,r5
	add 0x04,r5
	bsr loc_8c189df8
	mov.l @(0x4,r15),r4
	tst r0,r0
	bt loc_8c189f14
	mov.l @r15,r5
	bsr loc_8c189e42
	mov r14,r4
	bra loc_8c189f22
	mov r13,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c189F08:
	#data 0x0148
loc_8c189F0a:
	#data 0x00CC
	#align4

loc_8c189F0c:
	#data 0x8C33C568
loc_8c189F10:
	#data 0x8C33C56C

;==============================================
loc_8c189F14:
	add 0x20,r14
	add 0x01,r13

loc_8c189f18:
	mov.l @(0x1C,r12),r3
	mov.l @(0x30,r3),r2
	cmp/ge r2,r13
	bf loc_8c189edc
	mov 0xFF,r0

loc_8c189f22:
	add 0x08,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c189F2E:
	mov.w @(loc_8c18A022,pc),r6 ; r6 set to 0x148
	mov.l @(loc_8c18A028,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r6,r4
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	sts macl,r6
	mov.w @(loc_8c18A024,pc),r4 ; r4 set to 0xCC
	add r3,r6 ; r6 set to 0x8C33C6B4
	mov.l @(0x28,r6),r13
	bra loc_8c189F5A
	mov 0x00,r14

loc_8c189F46:
	mov.b @r13,r7
	extu.b r7,r7
	cmp/eq r4,r7
	bf loc_8c189f56
	bsr loc_8c189e42
	mov r13,r4
	bra loc_8c189f64
	mov r14,r0

loc_8c189F56:
	add 0x20,r13
	add 0x01,r14

loc_8c189f5a:
	mov.l @(0x1C,r6),r3
	mov.l @(0x30,r3),r2
	cmp/ge r2,r14
	bf loc_8c189f46
	mov 0xFF,r0

loc_8c189f64:
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c189F6C:
	mov.w @(loc_8c18A022,pc),r6 ; r6 set to 0x148
	mov.l @(loc_8c18A028,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r6,r4
	sts macl,r6
	add r3,r6 ; r6 set to 0x8C33C6B4
	mov.l @(0x28,r6),r5
	bra loc_8c189F8C
	mov 0x00,r4

loc_8c189F7C:
	mov.b @r5,r7
	extu.b r7,r7
	tst r7,r7
	bf loc_8c189F88
	rts
	mov r4,r0

;==============================================
loc_8c189F88:
	add 0x20,r5
	add 0x01,r4

loc_8c189F8C:
	mov.l @(0x1C,r6),r2
	mov.l @(0x30,r2),r3
	cmp/ge r3,r4
	bf loc_8c189F7C
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF, r0 set to 0xFFFFFFFF
	rts
	nop

;==============================================
loc_8c189F9A:
	mov.l r14,@-r15
	mov.w @(0x82,PC),r14
	mov.l @(0x88,PC),r3
	mul.l r14,r4
	mov.l @(0x88,PC),r2
	sts macl,r14
	add r3,r14
	mov.l @(0x1C,r14),r5
	mov.l @(0x20,r14),r6
	mov.l @(0x8,r5),r5
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c189FB2:
	mov.l r14,@-r15
	mov.w @(loc_8c18A022,pc),r14 ; r14 set to 0x148
	mov.l @(loc_8c18A028,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r14,r4
	mov.l @(loc_8c18A030,pc),r2 ; r2 set to 0x8C186850
	sts macl,r14
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.l @(0x1C,r14),r5
	mov.l @(0x20,r14),r6
	mov.l @(0x08,r5),r5
	jmp @r2
	mov.l @r15+,r14

loc_8c189FCA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x4E,PC),r13
	mov.l r11,@-r15
	mov r4,r11
	mul.l r13,r11
	mov.l @(0x4C,PC),r3
	mov.l r10,@-r15
	sts.l pr,@-r15
	sts macl,r13
	mov.l @(0x48,PC),r10
	add r3,r13
	mov.l @(0x1C,r13),r12
	mov.l @(0x10,r12),r12
	cmp/pl r12
	bf/s loc_8c18a012
	mov 0x00,r14

loc_8c189FEE:
	mov.l @(0x1C,r13),r5
	mov r14,r6
	mov.l @(0x24,r13),r3
	shll8 r6
	mov.l @(0xC,r5),r5
	shll r6
	add r3,r6
	add r14,r5
	jsr @r10
	mov r11,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18a00c
	bra loc_8c18a014
	mov r4,r0

loc_8c18A00C:
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c189fee

loc_8c18A012:
	mov 0x00,r0

loc_8c18A014:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18A022:
	#data 0x0148
loc_8c18A024:
	#data 0x00CC
	#align4

loc_8c18A028:
	#data 0x8C33C56C
loc_8c18A02C:
	#data loc_8c186778
loc_8c18A030:
	#data loc_8c186850

;==============================================
loc_8c18A034:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov.w @(loc_8c18A130,pc),r13 ; r13 set to 0x148
	mov.l r12,@-r15
	mov r4,r12
	mul.l r13,r12
	mov.l @(loc_8c18A134,pc),r3 ; r3 set to 0x8C33C56C
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts macl,r13
	mov.l r9,@-r15
	mov.l r8,@-r15
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.l @(loc_8c18A138,pc),r8 ; r8 set to 0xFFFA
	sts.l pr,@-r15
	mov.l @(0x1C,r13),r10
	mov r8,r9 ; r9 set to 0xFFFA
	mov.l @(0x10,r10),r10
	cmp/pl r10
	bf/s loc_8c18A09E
	add 0x05,r9 ; r9 set to 0xFFFF

loc_8c18A060:
	mov r14,r6 ; r6 set to 0x00
	mov.l @(0x24,r13),r3 ; r3 ??
	mov.l @(0x1C,r13),r5
	shll8 r6 ; r6 set to 0x00
	shll r6 ; r6 set to 0x00
	mov.l @(0x0C,r5),r5
	add r3,r6 ; r6 ??? bc r3 is ???
	mov.l @(loc_8c18A13C,pc),r3 ; r3 set to 0x8C186850
	add r14,r5
	jsr @r3
	mov r12,r4
	mov r0,r11
	cmp/pz r11
	bt loc_8c18A08C
	mov.l @(0x1C,r13),r5
	mov r9,r6 ; r6 set to 0xFFFF
	mov.l @(0x0C,r5),r5
	add r14,r5
	bsr loc_8c18A2F6
	mov r12,r4
	bra loc_8c18A0A0
	mov r11,r0

loc_8c18a08c:
	mov.l @(0x1C,r13),r5
	mov r8,r6
	mov.l @(0x0C,r5),r5
	add r14,r5
	bsr loc_8c18a2f6
	mov r12,r4
	add 0x01,r14
	cmp/ge r10,r14
	bf loc_8c18a060

loc_8c18A09E:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c18A0A0:
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
loc_8c18A0B2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(loc_8c18A130,pc),r5 ; r5 set to 0x148
	mov.l r10,@-r15
	mov r4,r10
	mul.l r5,r10
	mov.l @(loc_8c18A134,pc),r3 ; r3 set to 0x8C33C56C
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts macl,r5
	sts.l pr,@-r15
	mov.l @(loc_8c18A140,pc),r11 ; r11 set to 0xFFFC
	add r3,r5 ; r5 set to 0x8C33C6B4
	mov.l @(0x1C,r5),r4
	mov.l @(0x20,r4),r9
	mov.l @(0x1C,r4),r8
	mov.l @(0x10,r4),r12
	add r8,r9
	add 0xFF,r9

loc_8c18A0DC:
	mov.l @(loc_8c18A144,pc),r3 ; r3 set to 0x8C187B3C
	mov r11,r5 ; r5 set to 0xFFFC
	mov r9,r7
	mov r8,r6
	jsr @r3
	mov r10,r4
	mov r0,r13
	cmp/pz r13
	bt loc_8c18A0F2
	bra loc_8c18A11E
	mov 0xFF,r0

loc_8c18A0F2:
	cmp/pl r12
	bf/s loc_8c18A114
	mov 0x00,r14 ; r14 set to 0x00

loc_8c18A0F8:
	mov r13,r5
	sub r14,r5
	bsr loc_8c18A328
	mov r10,r4
	extu.w r0,r0
	cmp/eq r11,r0
	bt loc_8c18A10E
	mov r13,r9
	sub r14,r9
	bra loc_8c18A114
	add 0xFF,r9

loc_8c18a10e:
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c18a0f8

loc_8c18a114:
	cmp/eq r12,r14
	bf loc_8c18a0dc
	sub r12,r13
	mov r13,r0
	add 0x01,r0

loc_8c18A11E:
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
loc_8c18A130:
	#data 0x0148
	#align4

loc_8c18A134:
	#data 0x8C33C56C
loc_8c18A138:
	#data 0x0000FFFA
loc_8c18A13C:
	#data loc_8c186850
loc_8c18A140:
	#data 0x0000FFFC
loc_8c18A144:
	#data loc_8c187B3C

;==============================================
loc_8c18A148:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.w @(loc_8c18A23A,pc),r14 ; r14 set to 0x148
	mov.l r12,@-r15
	mov r4,r12
	mul.l r14,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x00,r10 ; r10 set to 0x00
	mov.l r9,@-r15
	mov 0x01,r9 ; r9 set to 0x01
	sts macl,r14
	mov.l r8,@-r15
	mov r10,r13 ; r13 set to 0x00
	mov.l @(loc_8c18A240,pc),r3 ; r3 set to 0x8C33C56C
	sts.l pr,@-r15
	mov.l @(loc_8c18A244,pc),r8 ; r8 set to 0x8C33C568
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.l @(loc_8c18A248,pc),r11 ; r11 set to 0xFFFA

loc_8c18A16E:
	bsr loc_8c18A034
	mov r12,r4
	mov.w @(loc_8c18A23C,pc),r1 ; r1 set to 0xFF01, r1 set to 0xFF01
	cmp/eq r1,r0
	bt/s loc_8c18A188
	mov r0,r4
	mov.w @(loc_8c18A23E,pc),r1 ; r1 set to 0xFF40, r1 set to 0xFF40
	cmp/eq r1,r0
	bt loc_8c18A18E
	cmp/eq 0x00,r0
	bt loc_8c18A1CC
	bra loc_8c18A1CC
	nop

loc_8c18A188:
	mov.w @(loc_8c18A23C,pc),r0 ; r0 set to 0xFF01
	bra loc_8c18A1D6
	nop

loc_8c18A18E:
	bsr loc_8c18A0B2
	mov r12,r4
	mov r0,r13
	cmp/pz r13
	bt loc_8c18A19E
	mov.w @(loc_8c18A23E,pc),r0 ; r0 set to 0xFF40
	bra loc_8c18A1D6
	nop

loc_8c18A19E:
	mov.l @(0x1C,r14),r2
	mov 0x46,r5 ; r5 set to 0x46
	mov r13,r6
	mov.l r13,@(0x0C,r2)
	mov.l @r8,r3
	mov.l @(0x10,r3),r2
	jsr @r2
	mov.l @(0x20,r14),r4
	bra loc_8c18A1C0
	mov r10,r13

loc_8c18A1B2:
	mov.l @(0x1C,r14),r5
	mov r11,r6
	mov.l @(0x0C,r5),r5
	add r13,r5
	bsr loc_8c18A2F6
	mov r12,r4
	add 0x01,r13

loc_8c18A1C0:
	mov.l @(0x1C,r14),r2
	mov.l @(0x10,r2),r3
	cmp/ge r3,r13
	bf loc_8c18A1B2
	bra loc_8c18A16E
	mov r9,r13

loc_8c18a1cc:
	tst r13,r13
	bt loc_8c18a1d4
	bsr loc_8c189fb2
	mov r12,r4

loc_8c18a1d4:
	mov 0x00,r0

loc_8c18A1D6:
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
loc_8c18A1E8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c18A23A,pc),r13 ; r13 set to 0x148
	mov.l @(loc_8c18A240,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r13,r4
	mov.l @(loc_8c18A244,pc),r12 ; r12 set to 0x8C33C568
	mov.w r5,@r15
	sts macl,r13
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.l @(0x1C,r13),r4
	mov.l @(0x30,r4),r4
	mov r4,r14
	add 0xFF,r14
	cmp/pz r14
	bf loc_8c18A22C

loc_8c18A20C:
	mov.l @r12,r3 ; r3 ??
	mov r14,r5
	shll r5
	mov.l @(0x0C,r3),r2
	jsr @r2
	mov.l @(0x24,r13),r4
	mov.w @r15,r3
	extu.w r0,r0
	extu.w r3,r3
	cmp/eq r3,r0
	bf loc_8c18A226
	bra loc_8c18A22E
	mov r14,r0

loc_8c18a226:
	add 0xFF,r14
	cmp/pz r14
	bt loc_8c18a20c

loc_8c18A22C:
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF

loc_8c18A22E:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18A23A:
	#data 0x0148
loc_8c18A23C:
	#data 0xFF01
loc_8c18A23E:
	#data 0xFF40
	#align4

loc_8c18A240:
	#data 0x8C33C56C
loc_8c18A244:
	#data 0x8C33C568
loc_8c18A248:
	#data 0x0000FFFA

;==============================================
loc_8c18A24C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(loc_8c18A34C,pc),r11 ; r11 set to 0xFFFC
	sts.l pr,@-r15
	mov r11,r12 ; r12 set to 0xFFFC
	add 0xFE,r12 ; r12 set to 0xFFFA

loc_8c18A25E:
	mov r11,r5 ; r5 set to 0xFFFC
	bsr loc_8c18A1E8
	mov r13,r4
	mov r0,r14
	cmp/pz r14
	bt loc_8c18A26E
	bra loc_8c18A286
	mov 0xFF,r0

loc_8c18A26E:
	mov r14,r5
	bsr loc_8c18A292
	mov r13,r4
	cmp/pz r0
	bt loc_8c18A284
	mov r14,r5
	mov r12,r6
	bsr loc_8c18A2F6
	mov r13,r4
	bra loc_8c18A25E
	nop

loc_8c18A284:
	mov r14,r0

loc_8c18A286:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18A292:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov.w @(loc_8c18A348,pc),r11 ; r11 set to 0x148
	mov.l r10,@-r15
	mul.l r11,r12
	mov.l @(loc_8c18A350,pc),r3 ; r3 set to 0x8C33C56C
	sts.l pr,@-r15
	mov.l @(loc_8c18A354,pc),r10 ; r10 set to 0x8C33C568
	sts macl,r11
	add r3,r11 ; r11 set to 0x8C33C6B4
	bra loc_8c18A2DE
	extu.w r5,r13

loc_8c18A2B2:
	mov r14,r5
	bsr loc_8c18a3dc
	mov r12,r4
	mov r0,r4
	mov.b @r4,r5
	extu.b r5,r0
	cmp/eq 0x33,r0
	bt/s loc_8c18a2ca
	mov r0,r5
	mov.w @(0x82,PC),r3
	cmp/eq r3,r5
	bf loc_8c18a2dc

loc_8c18A2CA:
	mov.l @r10,r1
	mov.l @(0xC,r1),r3
	jsr @r3
	mov 0x02,r5
	extu.w r0,r4
	cmp/eq r4,r13
	bf loc_8c18a2dc
	bra loc_8c18a2e8
	mov 0xFF,r0

loc_8c18A2DC:
	add 0x01,r14

loc_8c18a2de:
	mov.l @(0x1C,r11),r3
	mov.l @(0x30,r3),r2
	cmp/ge r2,r14
	bf loc_8c18a2b2
	mov r13,r0

loc_8c18a2e8:
	lds.l @r15+,pr 
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c18A2F6:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.w @(loc_8c18A348,pc),r14 ; r14 set to 0x148
	mov r5,r0
	mov.l @(loc_8c18A350,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r14,r4
	mov.l r5,@r15
	sts macl,r14
	add r3,r14 ; r14 set to 0x8C33C6B4
	mov.l @(0x1C,r14),r2
	mov.l @r2,r1
	cmp/gt r1,r0
	bt loc_8c18A322
	mov.l @(loc_8c18A354,pc),r2 ; r2 set to 0x8C33C568
	mov.l @r15,r5
	mov.l @r2,r3 ; r3 ??
	mov.l @(0x24,r14),r4
	shll r5
	mov.l @(0x10,r3),r1
	add 0x04,r15
	jmp @r1
	mov.l @r15+,r14

loc_8c18A322:
	add 0x04,r15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18A328:
	add 0xF8,r15
	mov.w @(loc_8c18A348,pc),r3 ; r3 set to 0x148
	mov.l @(loc_8c18A354,pc),r1 ; r1 set to 0x8C33C568
	mul.l r3,r4
	mov.l @(loc_8c18A350,pc),r2 ; r2 set to 0x8C33C56C
	mov.l r5,@r15
	sts macl,r4
	add r2,r4
	mov.l r4,@(0x04,r15)
	mov.l @r1,r0
	mov.l @r15,r5
	mov.l @(0x24,r4),r4
	mov.l @(0x0C,r0),r0
	shll r5
	jmp @r0
	add 0x08,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18A348:
	#data 0x0148
loc_8c18A34a:
	#data 0x00CC
	#align4

loc_8c18A34C:
	#data 0x0000FFFC
loc_8c18A350:
	#data 0x8C33C56C
loc_8c18A354:
	#data 0x8C33C568

;==============================================
loc_8c18A358:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xE2,PC),r14
	mov r4,r13
	mov.l @(0xE4,PC),r3
	mov r4,r2
	mul.l r14,r13
	mov.l @(0xE0,PC),r0
	shll2 r2
	mov.l r2,@r15
	sts macl,r14
	add r3,r14
	mov 0x00,r3
	mov.l r3,@(r0,r2)
	mov.b @(0xA,r14),r0
	tst r0,r0
	bf/s loc_8c18a38c
	mov 0x01,r12
	bsr loc_8c189f9a
	mov r13,r4
	cmp/pz r0
	bf/s loc_8c18a3c2
	mov r0,r4

loc_8c18A38C:
	bsr loc_8c18961a
	mov r13,r4
	cmp/pz r0
	bf loc_8c18a3ce
	mov.b @(0xB,r14),r0
	tst r0,r0
	bf loc_8c18a3a4
	bsr loc_8c189fca
	mov r13,r4
	cmp/pz r0
	bf/s loc_8c18a3b4
	mov r0,r4

loc_8c18A3A4:
	mov.b @(0xC,r14),r0
	tst r0,r0
	bf loc_8c18a3c6
	bsr loc_8c189b10
	mov r13,r4
	cmp/pz r0
	bt/s loc_8c18a3c6
	mov r0,r4

loc_8c18A3B4:
	mov.l @(0x9C,PC),r3
	cmp/eq r3,r4
	bf loc_8c18a3c2
	mov.l @(0x94,PC),r0
	mov.l @r15,r1
	bra loc_8c18a3ce
	mov.l r12,@(r0,r1)

loc_8c18A3C2:
	bra loc_8c18a3d0
	mov r4,r0

loc_8c18A3C6:
	mov r12,r0
	mov.b r0,@(0xA,r14)
	mov.b r0,@(0xB,r14)
	mov.b r0,@(0xC,r14)

loc_8c18A3CE:
	mov 0x00,r0

loc_8c18A3D0:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18A3DC:
	mov.w @(loc_8c18A448,pc),r3 ; r3 set to 0x148
	mov r5,r0
	mov.l @(loc_8c18A44C,pc),r2 ; r2 set to 0x8C33C56C
	shll2 r0
	mul.l r3,r4
	shll2 r0
	shll r0
	sts macl,r4
	add r2,r4
	mov.l @(0x28,r4),r1
	rts
	add r1,r0

;==============================================
loc_8c18A3F4:
	mov.w @(loc_8c18A448,pc),r3 ; r3 set to 0x148
	mov 0xFC,r1 ; r1 set to 0xFFFFFFFC
	mov.l @(loc_8c18A44C,pc),r2 ; r2 set to 0x8C33C56C
	shad r1, r5
	mul.l r3,r4
	mov 0x01,r1 ; r1 set to 0x01
	sts macl,r4
	add r2,r4
	mov r4,r0
	add 0x48,r0
	add r0,r5
	rts
	mov.b r1,@r5

;==============================================
loc_8c18A40E:
	mov.l @(loc_8c18A45C,pc),r7 ; r7 set to 0x8C34146C
	mov 0x01,r6 ; r6 set to 0x01
	mov.l @(loc_8c18A458,pc),r4 ; r4 set to 0x8C34122C
	bra loc_8c18A42A
	mov 0x00,r5

loc_8c18A418:
	mov.b @r4,r2
	tst r2,r2
	bf loc_8c18A426
	mov.b r6,@r4
	mov.l r5,@(0x0C,r4)
	rts
	mov r4,r0

;==============================================
loc_8c18A426:
	add 0x48,r4
	add 0x01,r5

loc_8c18A42A:
	mov.l @r7,r3
	cmp/ge r3,r5
	bf loc_8c18A418
	mov.l @(loc_8c18A460,pc),r2 ; r2 set to 0x8C341470, r2 set to 0x8C341470
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	mov.w @(loc_8c18A44A,pc),r1 ; r1 set to 0xFF07, r1 set to 0xFF07
	mov.l r1,@r2 ; r2 ??, r2 ??
	rts
	nop

;==============================================
loc_8c18A43C:
	mov.l @(loc_8c18A464,pc),r3 ; r3 set to 0x8C129728
	mov 0x48,r6 ; r6 set to 0x48
	jmp @r3
	mov 0x00,r5

loc_8c18A444:
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18A448:
	#data 0x0148
loc_8c18A44A:
	#data 0xFF07
	#align4

loc_8c18A44C:
	#data 0x8C33C56C
loc_8c18A450:
	#data 0x8C33CFAC
loc_8c18A454:
	#data 0xFFFF0000
loc_8c18A458:
	#data 0x8C34122C
loc_8c18A45C:
	#data 0x8C34146C
loc_8c18A460:
	#data 0x8C341470
loc_8c18A464:
	#data bank12.loc_8c129728

;==============================================
loc_8c18A468:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xD4,r15
	mov.w @(loc_8c18A534,pc),r11 ; r11 set to 0x148
	mov r4,r12
	mov.l @(loc_8c18A53C,pc),r3 ; r3 set to 0x8C33C56C
	mul.l r11,r12
	sts macl,r11
	add r3,r11 ; r11 set to 0x8C33C6B4
	bsr loc_8c189EBE
	mov r15,r6
	mov r0,r5
	cmp/pz r5
	bt loc_8c18A490
	mov.w @(loc_8c18A536,pc),r0 ; r0 set to 0xFF05
	bra loc_8c18A4EA
	nop

loc_8c18A490:
	bsr loc_8c18A3DC
	mov r12,r4
	mov.l @(0x1C,r11),r3
	mov.l @(0x0C,r15),r13
	mov.l @(0x30,r3),r2
	cmp/ge r2,r13
	bt loc_8c18A4D8
	bra loc_8c18A4E2
	mov 0x00,r14

loc_8c18A4A2:
	mov r13,r5
	bsr loc_8c18a328
	mov r12,r4
	mov.l @(0x28,r15),r2
	extu.w r0,r4
	mov.l @(0x90,PC),r5
	add 0xFF,r2
	cmp/eq r2,r14
	bf loc_8c18a4bc
	cmp/eq r5,r4
	bt loc_8c18a4de
	bra loc_8c18a4d8
	nop 

loc_8c18A4BC:
	cmp/eq r13,r4
	bt loc_8c18a4d8
	cmp/eq r5,r4
	bt loc_8c18a4d8
	mov.l @(0x7C,PC),r5
	cmp/eq r5,r4
	bt loc_8c18a4d8
	mov.l @(0x7C,PC),r5
	cmp/eq r5,r4
	bt loc_8c18a4d8
	mov.l @(0x1C,r11),r3
	mov.l @(0x30,r3),r2
	cmp/ge r2,r4
	bf loc_8c18a4de

loc_8c18A4D8:
	mov.w @(loc_8c18A538,pc),r0 ; r0 set to 0xFF41
	bra loc_8c18A4EA
	nop

loc_8c18A4DE:
	add 0x01,r14
	mov r4,r13

loc_8c18a4e2:
	mov.l @(0x28,r15),r2
	cmp/ge r2,r14
	bf loc_8c18a4a2
	mov 0x00,r0

loc_8c18A4EA:
	add 0x2C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18A4F8:
	sts.l pr,@-r15
	mov.l @(loc_8c18A54C,pc),r3 ; r3 set to 0x8C1291DC
	mov r4,r1
	mov 0x0A,r6 ; r6 set to 0x0A
	jsr @r3
	mov r6,r0 ; r0 set to 0x0A
	mov.l @(loc_8c18A550,pc),r2 ; r2 set to 0x8C12939C
	mov r4,r1
	mov r0,r5 ; r5 set to 0x0A
	jsr @r2
	mov r6,r0 ; r0 set to 0x0A
	mov r0,r4 ; r4 set to 0x0A
	mov r5,r0 ; r0 set to 0x0A
	lds.l @r15+,pr
	shll2 r0 ; r0 set to 0x28
	shll2 r0 ; r0 set to 0xA0
	rts
	add r4,r0

;==============================================
loc_8c18A51C:
	mov r4,r5
	shlr2 r5
	shlr2 r5
	mov r5,r0
	mov r5,r3
	shll2 r0
	mov 0x0F,r2 ; r2 set to 0x0F
	add r3,r0
	shll r0
	and r2,r4
	rts
	add r4,r0

;==============================================
loc_8c18A534:
	#data 0x0148
loc_8c18A536:
	#data 0xFF05
loc_8c18A538:
	#data 0xFF41
	#align4

loc_8c18A53C:
	#data 0x8C33C56C
loc_8c18A540:
	#data 0x0000FFFA
loc_8c18A544:
	#data 0x0000FFFC
loc_8c18A548:
	#data 0x0000FFFF
loc_8c18A54C:
	#data bank12.loc_8c1291DC
loc_8c18A550:
	#data bank12.loc_8c12939C

;==============================================
loc_8c18A554:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r8,@-r15
	mov r4,r8
	sts.l pr,@-r15
	mov.w @r13,r1
	add 0x01,r14
	mov.l @(loc_8c18A63C,pc),r3 ; r3 set to 0x8C129128
	extu.w r1,r1
	jsr @r3
	mov 0x64,r0 ; r0 set to 0x64
	bsr loc_8c18A4F8
	mov r0,r4 ; r4 set to 0x64
	mov.b r0,@r8
	mov r14,r8
	mov.w @r13,r1
	add 0x01,r14
	mov.l @(loc_8c18A640,pc),r3 ; r3 set to 0x8C1292D4
	extu.w r1,r1
	jsr @r3
	mov 0x64,r0 ; r0 set to 0x64
	bsr loc_8c18A4F8
	mov r0,r4 ; r4 set to 0x64
	mov.b r0,@r8
	mov r14,r8
	mov.b @(0x02,r13),r0
	add 0x01,r14
	bsr loc_8c18A4F8
	extu.b r0,r4 ; r4 set to 0x64
	mov.b r0,@r8
	mov r14,r8
	mov.b @(0x03,r13),r0
	add 0x01,r14
	bsr loc_8c18A4F8
	extu.b r0,r4 ; r4 set to 0x64
	mov.b r0,@r8
	mov r14,r8
	mov.b @(0x04,r13),r0
	add 0x01,r14
	bsr loc_8c18A4F8
	extu.b r0,r4 ; r4 set to 0x64
	mov.b r0,@r8
	mov r14,r8
	mov.b @(0x05,r13),r0
	add 0x01,r14
	bsr loc_8c18A4F8
	extu.b r0,r4 ; r4 set to 0x64
	mov.b r0,@r8
	mov r14,r8
	mov.b @(0x06,r13),r0
	add 0x01,r14
	bsr loc_8c18A4F8
	extu.b r0,r4 ; r4 set to 0x64
	mov.b r0,@r8
	mov.b @(0x07,r13),r0
	mov.l @(loc_8c18A644,pc),r1 ; r1 set to 0x8C1C5970
	extu.b r0,r0 ; r0 set to 0x64
	and 0x07,r0
	mov.b @(r0,r1),r3 ; r3 ??
	mov.b r3,@r14
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18A5DA:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @r14,r4
	bsr loc_8c18A51C
	extu.b r4,r4
	mov 0x64,r2 ; r2 set to 0x64
	mulu.w r2,r0
	sts macl,r0
	mov r0,r8
	mov.b @(0x01,r14),r0
	bsr loc_8c18A51C
	extu.b r0,r4
	add r0,r8
	mov.w r8,@r13
	mov.b @(0x02,r14),r0
	bsr loc_8c18A51C
	extu.b r0,r4
	mov.b r0,@(0x02,r13)
	mov.b @(0x03,r14),r0
	bsr loc_8c18A51C
	extu.b r0,r4
	mov.b r0,@(0x03,r13)
	mov.b @(0x04,r14),r0
	bsr loc_8c18A51C
	extu.b r0,r4
	mov.b r0,@(0x04,r13)
	mov.b @(0x05,r14),r0
	bsr loc_8c18A51C
	extu.b r0,r4
	mov.b r0,@(0x05,r13)
	mov.b @(0x06,r14),r0
	bsr loc_8c18A51C
	extu.b r0,r4
	mov.b r0,@(0x06,r13)
	mov.b @(0x07,r14),r0
	mov.l @(loc_8c18A648,pc),r1 ; r1 set to 0x8C1C5978
	extu.b r0,r0
	and 0x07,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x07,r13)
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align4
loc_8c18A63C:
	#data bank12.loc_8c129128
loc_8c18A640:
	#data bank12.loc_8c1292D4
loc_8c18A644:
	#data bank1c.loc_8c1c5970
loc_8c18A648:
	#data bank1c.loc_8c1c5978

;==============================================
loc_8c18A64C:
	mov.l @(0x1C,r4),r5
	mov 0x01,r6
	mov.l @r5,r7
	cmp/ge r6,r7
	bf loc_8c18a6e2
	mov.w @(0xCC,PC),r2
	cmp/gt r2,r7
	bt loc_8c18a6e2
	mov.l @r5,r3
	mov.l @(0x8,r5),r2
	cmp/eq r2,r3
	bf loc_8c18a6e2
	mov.l @(0xC,r5),r7
	cmp/pz r7
	bf loc_8c18a6e2
	mov.l @r5,r2
	cmp/ge r2,r7
	bt loc_8c18a6e2
	mov.l @(0x14,r5),r7
	cmp/pz r7
	bf loc_8c18a6e2
	mov.l @r5,r3
	cmp/ge r3,r7
	bt loc_8c18a6e2
	mov.l @(0x34,r5),r7
	cmp/pz r7
	bf loc_8c18a6e2
	mov.l @r5,r2
	cmp/gt r2,r7
	bt loc_8c18a6e2
	mov.l @(0x38,r5),r7
	cmp/pz r7
	bf loc_8c18a6e2
	mov.l @r5,r3
	cmp/gt r3,r7
	bt loc_8c18a6e2
	mov.l @(0x9C,PC),r2
	mov.l @r2,r3
	mov.l @(0x8,r3),r1
	tst r1,r1
	bf loc_8c18a6ae
	mov.l @(0x10,r5),r3
	mov.w @(0x10,r4),r0
	cmp/ge r3,r0
	bf loc_8c18a6e2
	mov.l @(0x18,r5),r3
	mov.w @(0x12,r4),r0
	cmp/ge r3,r0
	bf loc_8c18a6e2

loc_8c18A6AE:
	mov.w @(0x76,PC),r1
	mov.l @r5,r0
	cmp/eq r1,r0
	bt loc_8c18a6cc
	mov.w @(0x70,PC),r1
	cmp/eq r1,r0
	bt loc_8c18a6d2
	mov.w @(0x6C,PC),r1
	cmp/eq r1,r0
	bt loc_8c18a6d6
	mov.w @(0x60,PC),r1
	cmp/eq r1,r0
	bt loc_8c18a6dc
	bra loc_8c18a6e2
	nop 

loc_8c18A6CC:
	mov 0x00,r3
	bra loc_8c18a6e6
	mov.l r3,@(0x4,r4)

loc_8c18a6d2:
	bra loc_8c18a6e6
	mov.l r6,@(0x4,r4)

loc_8c18a6d6:
	mov 0x02,r2
	bra loc_8c18a6e6
	mov.l r2,@(0x4,r4)

loc_8c18a6dc:
	mov 0x03,r1
	bra loc_8c18a6e6
	mov.l r1,@(0x4,r4)

loc_8c18A6E2:
	rts 
	mov 0xFF,r0

;==============================================
loc_8c18A6E6:
	mov 0x00,r0
	rts 
	nop 

;==============================================
loc_8c18A6EC:
	mov.l r14,@-r15
	mov 0x01,r2 ; r2 set to 0x01
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov.w @(loc_8c18A72E,pc),r13 ; r13 set to 0x148
	mov.l r10,@-r15
	mov r4,r10
	mul.l r13,r10
	mov.l @(loc_8c18A738,pc),r3 ; r3 set to 0x8C33C56C
	mov.l @(loc_8c18A73C,pc),r0 ; r0 set to 0x8C1C9738
	mov.l r9,@-r15
	sts macl,r13
	sts.l pr,@-r15
	mov.l @(loc_8c18A740,pc),r9 ; r9 set to 0x8C186778
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.w @(loc_8c18A730,pc),r11 ; r11 set to 0x200
	mov.l r2,@(0x30,r13)  ; r13 ??
	mov.l @(0x04,r13),r1
	mov r1,r2 ; r2 ??? bc r1 is ???
	shll2 r1
	add r2,r1
	shll2 r1
	shll2 r1
	mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l r0,@(0x34,r13)
	bra loc_8c18A75A
	mov 0x00,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18A726:
	#data 0x07FF
loc_8c18A728:
	#data 0x00FF
loc_8c18A72A:
	#data 0x01FF
loc_8c18A72C:
	#data 0x03FF
loc_8c18A72E:
	#data 0x0148
loc_8c18A730:
	#data 0x0200
	#align4

loc_8c18A734:
	#data 0x8C33C568
loc_8c18A738:
	#data 0x8C33C56C
loc_8c18A73C:
	#data bank1c.loc_8c1c9738
loc_8c18A740:
	#data loc_8c186778

;==============================================
loc_8c18A744:
	mov r14,r5
	mov r12,r6
	jsr @r9
	mov r10,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18a756
	bra loc_8c18a766
	mov r4,r0

loc_8c18A756:
	add 0x01,r14
	add r11,r12

loc_8c18a75a:
	mov.l @(0x1C,r13),r2
	mov.l @r2,r3
	add 0x01,r3
	cmp/ge r3,r14
	bf loc_8c18a744
	mov 0x00,r0

loc_8c18a766:
	lds.l @r15+,pr 
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c18A776:
	mov.l r14,@-r15
	mov 0x01,r2 ; r2 set to 0x01
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov.w @(loc_8c18A80E,pc),r13 ; r13 set to 0x148
	mov.l r10,@-r15
	mov r4,r10
	mul.l r13,r10
	mov.l @(loc_8c18A814,pc),r3 ; r3 set to 0x8C33C56C
	mov.l @(loc_8c18A818,pc),r0 ; r0 set to 0x8C1C973C
	mov.l r9,@-r15
	sts macl,r13
	sts.l pr,@-r15
	mov.l @(loc_8c18A81C,pc),r9 ; r9 set to 0x8C186850
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.w @(loc_8c18A810,pc),r11 ; r11 set to 0x200
	mov.l r2,@(0x30,r13)  ; r13 ??
	mov.l @(0x04,r13),r1
	mov r1,r2 ; r2 ??? bc r1 is ???
	shll2 r1
	add r2,r1
	shll2 r1
	shll2 r1
	mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l r0,@(0x34,r13)
	bra loc_8c18A7C6
	mov 0x00,r14

loc_8c18A7B0:
	mov r14,r5
	mov r12,r6
	jsr @r9
	mov r10,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18a7c2
	bra loc_8c18a7d2
	mov r4,r0

loc_8c18A7C2:
	add 0x01,r14
	add r11,r12

loc_8c18a7c6:
	mov.l @(0x1C,r13),r2
	mov.l @r2,r3
	add 0x01,r3
	cmp/ge r3,r14
	bf loc_8c18a7b0
	mov 0x00,r0

loc_8c18a7d2:
	lds.l @r15+,pr 
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c18A7E2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r7,r13
	tst r13,r13
	mov r4,r11
	mov.l r5,@(0x04,r15)
	bf/s loc_8c18A826
	mov.l r6,@(0x08,r15)
	mov.l @(loc_8c18A820,pc),r3 ; r3 set to 0x8C1894C8
	mov.l @(0x04,r15),r5
	jsr @r3
	mov r11,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18A824
	bra loc_8c18A874
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18A80E:
	#data 0x0148
loc_8c18A810:
	#data 0x0200
	#align4

loc_8c18A814:
	#data 0x8C33C56C
loc_8c18A818:
	#data bank1c.loc_8c1c973C
loc_8c18A81C:
	#data loc_8c186850
loc_8c18A820:
	#data loc_8c1894C8

;==============================================
loc_8c18a824:
	mov r4,r13

loc_8c18a826:
	mov.l @(loc_8c18a8e8,pc),r3
	mov r15,r6
	mov.l @(0x04,r15),r5
	jsr @r3
	mov r11,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18a872
	mov.w @(loc_8C18A8E0,pc),r4
	mov 0x01,r2
	mov.l @(loc_8C18A8EC,pc),r3
	mul.l r4,r11
	mov 0x00,r11
	mov.l @(0x08,r15),r12
	mov r11,r1
	cmp/hs r13,r1
	sts macl,r4
	add r3,r4
	mov.l r2,@(0x30,r4) 
	bt/s loc_8c18a868
	mov.l r13,@(0x34,r4) 
	mov.w @(loc_8C18A8E2,pc),r10

loc_8c18a852:
	mov.l @(loc_8c18a8f0,pc),r3
	mov r12,r5
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18a86a
	add 0x01,r11
	cmp/hs r13,r11
	bf/s loc_8c18a852
	add r10,r12

loc_8c18a868:
	mov 0x00,r14

loc_8c18a86a:
	mov.l @(loc_8c18a8f4,pc),r3
	mov 0x00,r5
	jsr @r3
	mov.l @r15,r4

loc_8c18a872:
	mov r14,r0

loc_8c18A874:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18A884:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r11
	mov.l @(0x60,PC),r3
	mov 0x00,r5
	mov r4,r12
	mov.l r6,@(0x4,r15)
	mov r7,r13
	mov.l @(0x24,r15),r10
	jsr @r3
	mov r12,r4
	mov.l @(0x54,PC),r2
	mov r11,r5
	mov r0,r14
	jsr @r2
	mov r12,r4
	mov r0,r4
	cmp/pl r4
	bf loc_8c18a8b6
	add r4,r14

loc_8c18A8B6:
	cmp/pz r14
	bf loc_8c18a96a
	cmp/hs r13,r14
	bt loc_8c18a8c4
	mov.w @(0x22,PC),r0
	bra loc_8c18a96c
	nop 

loc_8c18A8C4:
	mov.l @(0x38,PC),r4
	and r10,r4
	tst r4,r4
	bt loc_8c18a904
	mov.l r10,@-r15
	mov r11,r5
	mov.l @(0x24,r15),r3
	mov r13,r7
	mov.l r3,@-r15
	mov.l @(0xC,r15),r6
	bsr loc_8c18a994
	mov r12,r4
	bra loc_8c18a96c
	add 0x08,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18a8e0:
	#data 0x0148
loc_8c18a8e2:
	#data 0x0200
loc_8c18a8e4:
	#data 0xFF04
	#align4

loc_8c18A8E8:
	#data loc_8c187E8C
loc_8c18a8ec:
	#data 0x8C33C56C
loc_8c18A8F0:
	#data loc_8c1887C4
loc_8c18A8F4:
	#data loc_8c188306
loc_8c18A8F8:
	#data loc_8c187CA8
loc_8c18A8FC:
	#data loc_8c1894C8
loc_8c18A900:
	#data 0x80000000

;==============================================
loc_8c18A904:
	mov.l @(0x78,PC),r3
	mov r15,r7
	mov.l @(0x20,r15),r6
	mov r11,r5
	jsr @r3
	mov r12,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18a96a
	mov.w @(0x62,PC),r4
	mov r10,r0
	mov.l @(0x68,PC),r3
	mul.l r4,r12
	mov.l @r15,r2
	mov 0x00,r12
	mov.b r0,@(0x1,r2)
	mov 0x01,r2
	sts macl,r4
	mov.l @(0x5C,PC),r0
	mov.l @(0x4,r15),r11
	add r3,r4
	mov.l r2,@(0x30,r4)
	mov.l @(0x4,r4),r1
	mov r1,r2
	shll2 r1
	add r2,r1
	mov r12,r2
	shll2 r1
	cmp/hs r13,r2
	shll2 r1
	mov.l @(r0,r1),r0
	add r13,r0
	bt/s loc_8c18a960
	mov.l r0,@(0x34,r4)
	mov.w @(0x32,PC),r10

loc_8c18A94A:
	mov.l @(0x40,PC),r3
	mov r11,r5
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18a962
	add 0x01,r12
	cmp/hs r13,r12
	bf/s loc_8c18a94a
	add r10,r11

loc_8c18A960:
	mov 0x00,r14

loc_8c18A962:
	mov.l @(0x2C,PC),r3
	mov 0x00,r5
	jsr @r3
	mov.l @r15,r4

loc_8c18A96A:
	mov r14,r0

loc_8c18A96C:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18a97c:
	#data 0x0148
loc_8c18a97e:
	#data 0x0200
	#align4

loc_8c18A980:
	#data loc_8c188102
loc_8c18A984:
	#data 0x8C33C56C
loc_8c18A988:
	#data bank1c.loc_8c1c972C
loc_8c18A98C:
	#data loc_8c18852E
loc_8c18A990:
	#data loc_8c188306

;==============================================
loc_8c18A994:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r5,@(0x4,r15)
	mov r7,r12
	mov.l r6,@(0x8,r15)
	mov r4,r9
	mov.l @(0x2C,r15),r6
	mov r15,r7
	mov.l @(0x4,r15),r5
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov r9,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18aa6e
	mov.w @(0xEA,PC),r4
	mov 0x01,r2
	mov.l @r15,r3
	mov r12,r1
	mul.l r4,r9
	mov.l @(0x30,r15),r0
	shll r1
	mov 0x00,r10
	mov.w @(0xDC,PC),r13
	mov.b r0,@(0x1,r3)
	sts macl,r4
	mov.l @(0xE0,PC),r3
	mov.l @(0x8,r15),r11
	add r3,r4
	mov.l r2,@(0x30,r4)
	mov.l @(0x4,r4),r2
	mov r2,r0
	shll2 r2
	add r0,r2
	mov.l @(0xD4,PC),r0
	shll2 r2
	shll2 r2
	mov.l @(r0,r2),r2
	add r2,r1
	mov r10,r2
	cmp/hs r12,r2
	bt/s loc_8c18aa0e
	mov.l r1,@(0x34,r4)

loc_8c18A9F8:
	mov.l @(0xC4,PC),r3
	mov r11,r5
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18aa66
	add 0x01,r10
	cmp/hs r12,r10
	bf/s loc_8c18a9f8
	add r13,r11

loc_8c18AA0E:
	mov.l @(0xB4,PC),r3
	mov 0x00,r5
	jsr @r3
	mov.l @r15,r4
	mov.l @(0xB0,PC),r3
	mov r15,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov r9,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18aa6e
	mov r9,r8
	shll8 r8
	mov 0x00,r11
	mov.l @(0x9C,PC),r3
	mov r11,r2
	mov.l @(0x8,r15),r10
	shll2 r8
	shll r8
	cmp/hs r12,r2
	bt/s loc_8c18aa64
	add r3,r8
	mov.w @(0x72,PC),r9

loc_8c18AA3E:
	mov.l @(0x90,PC),r3
	mov r8,r5
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18aa66
	mov.l @(0x84,PC),r2
	mov r10,r5
	jsr @r2
	mov r8,r4
	tst r0,r0
	bt loc_8c18aa5c
	bra loc_8c18aa66
	mov r9,r14

loc_8c18AA5C:
	add 0x01,r11
	cmp/hs r12,r11
	bf/s loc_8c18aa3e
	add r13,r10

loc_8c18AA64:
	mov 0x00,r14

loc_8c18AA66:
	mov.l @(0x5C,PC),r3
	mov 0x00,r5
	jsr @r3
	mov.l @r15,r4

loc_8c18AA6E:
	mov r14,r0
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

;==============================================
loc_8c18AA84:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r5,@(0x08,r15)
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8c18AAD8,pc),r3 ; r3 set to 0x8C187CA8
	mov r4,r11
	mov.l r6,@(0x04,r15)
	mov r7,r13
	mov.l @(0x28,r15),r12
	jsr @r3
	mov r11,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18AADC
	bra loc_8c18AB6A
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18aaae:
	#data 0x0148
loc_8c18aab0:
	#data 0x0200
loc_8c18aab2:
	#data 0xFF10
	#align4

loc_8c18AAB4:
	#data loc_8c188102
loc_8c18AAB8:
	#data 0x8C33C56C
loc_8c18AABC:
	#data bank1c.loc_8c1c972C
loc_8c18AAC0:
	#data loc_8c18852E
loc_8c18AAC4:
	#data loc_8c188306
loc_8c18AAC8:
	#data loc_8c187E8C
loc_8c18AACC:
	#data 0x8C33CFCC
loc_8c18AAD0:
	#data loc_8c1887C4
loc_8c18AAD4:
	#data bank19.loc_8c1988B8
loc_8c18AAD8:
	#data loc_8c187CA8

;==============================================
loc_8c18AADC:
	cmp/hs r13,r4
	bt loc_8c18AAE6
	mov.w @(loc_8c18AB7A,pc),r0 ; r0 set to 0xFF04
	bra loc_8c18AB6A
	nop

loc_8c18AAE6:
	mov.l @(loc_8c18AB80,pc),r4 ; r4 set to 0x80000000
	and r12,r4 ; r4 ??? bc r12 is ???
	tst r4,r4
	bt loc_8c18AB02
	mov.l r12,@-r15
	mov r13,r7
	mov.l @(0x28,r15),r3
	mov.l r3,@-r15
	mov.l @(0x10,r15),r5
	mov.l @(0x0C,r15),r6
	bsr loc_8c18AB98
	mov r11,r4
	bra loc_8c18AB6A
	add 0x08,r15

loc_8c18ab02:
	mov.l @(0x08,r15),r5
	mov r15,r7
	mov.l @(loc_8c18ab84,pc),r3
	mov.l @(0x24,r15),r6
	jsr @r3
	mov r11,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18ab68
	mov.w @(loc_8C18AB7C,pc),r4
	mov r12,r0
	mov.l @(loc_8C18AB88,pc),r3
	mul.l r4,r11
	mov.l @r15,r2
	mov 0x00,r11
	mov.b r0,@(0x01,r2) 
	mov 0x01,r2
	sts macl,r4
	mov.l @(loc_8c18ab8c,pc),r0
	mov.l @(0x04,r15),r12
	add r3,r4
	mov.l r2,@(0x30,r4) 
	mov.l @(0x04,r4),r1
	mov r1,r2
	shll2 r1
	add r2,r1
	mov r11,r2
	shll2 r1
	cmp/hs r13,r2
	shll2 r1
	mov.l @(r0,r1),r0
	add r13,r0
	bt/s loc_8c18ab5e
	mov.l r0,@(0x34,r4) 
	mov.w @(loc_8C18AB7E,pc),r10

loc_8c18ab48:
	mov.l @(loc_8c18ab90,pc),r3
	mov r12,r5
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18ab60
	add 0x01,r11
	cmp/hs r13,r11
	bf/s loc_8c18ab48
	add r10,r12

loc_8c18ab5e:
	mov 0x00,r14

loc_8c18ab60:
	mov.l @(loc_8c18ab94,pc),r3
	mov 0x00,r5
	jsr @r3
	mov.l @r15,r4

loc_8c18ab68:
	mov r14,r0

loc_8c18AB6A:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18AB7A:
	#data 0xFF04
loc_8c18ab7c:
	#data 0x0148
loc_8c18ab7e:
	#data 0x0200
	#align4

loc_8c18AB80:
	#data 0x80000000
loc_8c18AB84:
	#data loc_8c187F9E
loc_8c18ab88:
	#data 0x8C33C56C
loc_8c18AB8C:
	#data bank1c.loc_8c1c972C
loc_8c18AB90:
	#data loc_8c18864A
loc_8c18AB94:
	#data loc_8c188306

;==============================================
loc_8c18ab98:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r5,@(0x04,r15) 
	mov r7,r12
	mov.l r6,@(0x08,r15) 
	mov r4,r9
	mov.l @(0x2C,r15),r6
	mov r15,r7
	mov.l @(0x04,r15),r5
	mov.l @(loc_8c18ac90,pc),r3
	jsr @r3
	mov r9,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18ac72
	mov.w @(loc_8C18AC88,pc),r4
	mov 0x01,r2
	mov.l @r15,r3
	mov r12,r1
	mul.l r4,r9
	mov.l @(0x30,r15),r0
	shll r1
	mov 0x00,r10
	mov.w @(loc_8C18AC8A,pc),r13
	mov.b r0,@(0x01,r3) 
	sts macl,r4
	mov.l @(loc_8C18AC94,pc),r3
	mov.l @(0x08,r15),r11
	add r3,r4
	mov.l r2,@(0x30,r4) 
	mov.l @(0x04,r4),r2
	mov r2,r0
	shll2 r2
	add r0,r2
	mov.l @(loc_8c18ac98,pc),r0
	shll2 r2
	shll2 r2
	mov.l @(r0,r2),r2
	add r2,r1
	mov r10,r2
	cmp/hs r12,r2
	bt/s loc_8c18ac12
	mov.l r1,@(0x34,r4) 

loc_8c18abfc:
	mov.l @(loc_8c18ac9c,pc),r3
	mov r11,r5
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18ac6a
	add 0x01,r10
	cmp/hs r12,r10
	bf/s loc_8c18abfc
	add r13,r11

loc_8c18ac12:
	mov.l @(loc_8c18aca0,pc),r3
	mov 0x00,r5
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c18aca4,pc),r3
	mov r15,r6
	mov.l @(0x04,r15),r5
	jsr @r3
	mov r9,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18ac72
	mov r9,r8
	shll8 r8
	mov 0x00,r11
	mov.l @(loc_8C18ACA8,pc),r3
	mov r11,r2
	mov.l @(0x08,r15),r10
	shll2 r8
	shll r8
	cmp/hs r12,r2
	bt/s loc_8c18ac68
	add r3,r8
	mov.w @(loc_8C18AC8C,pc),r9

loc_8c18ac42:
	mov.l @(loc_8c18acac,pc),r3
	mov r8,r5
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18ac6a
	mov.l @(loc_8c18acb0,pc),r2
	mov r10,r5
	jsr @r2
	mov r8,r4
	tst r0,r0
	bt loc_8c18ac60
	bra loc_8c18ac6a
	mov r9,r14

loc_8c18ac60:
	add 0x01,r11
	cmp/hs r12,r11
	bf/s loc_8c18ac42
	add r13,r10

loc_8c18ac68:
	mov 0x00,r14

loc_8c18ac6a:
	mov.l @(loc_8c18aca0,pc),r3
	mov 0x00,r5
	jsr @r3
	mov.l @r15,r4

loc_8c18ac72:
	mov r14,r0
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
loc_8C18AC88:
	#data 0x0148
loc_8C18AC8A:
	#data 0x0200
loc_8C18AC8C:
	#data 0xFF10
	#align4

loc_8c18ac90:
	#data loc_8c187f9e
loc_8C18AC94:
	#data 0x8C33C56C
loc_8c18ac98:
	#data bank1c.loc_8c1c972c
loc_8c18ac9c:
	#data loc_8c18864a
loc_8c18aca0:
	#data loc_8c188306
loc_8c18aca4:
	#data loc_8c187e8c
loc_8C18ACA8:
	#data 0x8C33CFCC
loc_8c18acac:
	#data loc_8c1887c4
loc_8c18acb0:
	#data bank19.loc_8c1988b8

;==============================================
loc_8c18acb4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x40,r0
	mov.l r12,@-r15
	mov 0x00,r13
	mov.l r11,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov.l @(0x38,r14),r3
	mov.l @(0x28,r14),r11
	mov.l r3,@(r0,r14)
	mov r13,r3
	cmp/hs r12,r3
	bt loc_8c18ad0c

loc_8c18acd2:
	mov 0x40,r0
	mov.l @(0xE0,PC),r4
	mov.l @(r0,r14),r3
	cmp/eq r4,r3
	bf loc_8c18ace6
	mov.l @(0x34,r14),r1
	tst r1,r1
	bf loc_8c18acec
	bra loc_8c18ad0e
	mov 0x00,r0

loc_8c18ace6:
	mov.l @(0x34,r14),r3
	tst r3,r3
	bf loc_8c18acf2

loc_8c18acec:
	mov.l @(0xCC,PC),r0
	bra loc_8c18ad0e
	nop 

loc_8c18acf2:
	mov.l @(r0,r14),r5
	bsr loc_8c18a328
	mov r11,r4
	mov 0x40,r1
	add 0x01,r13
	extu.w r0,r0
	cmp/hs r12,r13
	add r14,r1
	mov.l r0,@r1
	mov.l @(0x34,r14),r3
	add 0xFF,r3
	bf/s loc_8c18acd2
	mov.l r3,@(0x34,r14)

loc_8c18ad0c:
	mov.l @(0x34,r14),r0

loc_8c18ad0e:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18AD1A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r5,@(0x08,r15)
	mov.l r6,@(0x0C,r15)
	mov.l r7,@(0x04,r15)
	mov.l @(0x28,r15),r13
	tst r13,r13
	bf/s loc_8c18AD4E
	mov r4,r11
	mov.l @(loc_8c18ADC0,pc),r3 ; r3 set to 0x8C1894C8
	mov.l @(0x08,r15),r5
	jsr @r3
	mov r11,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18AD48
	bra loc_8c18ADA4
	mov r4,r0

loc_8c18ad48:
	mov.l @(0x04,r15),r3
	mov r4,r13
	sub r3,r13

loc_8c18ad4e:
	mov.l @(loc_8c18adc4,pc),r3
	mov r15,r6
	mov.l @(0x08,r15),r5
	jsr @r3
	mov r11,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18ada2
	mov.w @(loc_8C18ADB4,pc),r4
	mov 0x01,r2
	mov.l @(loc_8C18ADC8,pc),r3
	mov 0x00,r6
	mul.l r4,r11
	mov.l @(0x0C,r15),r12
	sts macl,r4
	add r3,r4
	mov.l r2,@(0x30,r4) 
	mov.l r13,@(0x34,r4) 
	mov.l @(0x04,r15),r5
	bsr loc_8c18acb4
	mov.l @r15,r4
	mov 0x00,r11
	mov r11,r3
	cmp/hs r13,r3
	bt loc_8c18ad98
	mov.w @(loc_8C18ADB6,pc),r10

loc_8c18ad82:
	mov.l @(loc_8c18adcc,pc),r3
	mov r12,r5
	jsr @r3
	mov.l @r15,r4
	mov r0,r14
	cmp/pz r14
	bf loc_8c18ad9a
	add 0x01,r11
	cmp/hs r13,r11
	bf/s loc_8c18ad82
	add r10,r12

loc_8c18ad98:
	mov 0x00,r14

loc_8c18ad9a:
	mov.l @(loc_8c18add0,pc),r3
	mov 0x00,r5
	jsr @r3
	mov.l @r15,r4

loc_8c18ada2:
	mov r14,r0

loc_8c18ADA4:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18adb4:
	#data 0x0148
loc_8c18adb6:
	#data 0x0200
loc_8c18adb8:
	#data 0xFFFA
	#align4

loc_8c18ADbc:
	#data 0xFFFF0000
loc_8c18ADC0:
	#data loc_8c1894C8
loc_8c18ADC4:
	#data loc_8c187E8C
loc_8c18adc8:
	#data 0x8C33C56C
loc_8c18ADCC:
	#data loc_8c1887C4
loc_8c18ADD0:
	#data loc_8c188306

;==============================================
loc_8c18ADD4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov r6,r11
	mov r15,r6
	add 0x04,r6
	mov.l r5,@r15
	mov r4,r13
	bsr loc_8c189ebe
	mov r13,r4
	mov r0,r12
	cmp/pz r12
	bt loc_8c18adfa
	mov.w @(0xD6,PC),r0
	bra loc_8c18ae30
	nop 

loc_8c18ADfa:
	mov r12,r5
	bsr loc_8c18a3dc
	mov r13,r4
	mov.l @(0x10,r15),r5
	mov.w r5,@r11
	add 0x02,r11
	bra loc_8c18ae18
	mov 0x00,r14

loc_8c18Ae0a:
	bsr loc_8c18a328
	mov r13,r4
	extu.w r0,r4
	mov r4,r5
	mov.w r5,@r11
	add 0x01,r14
	add 0x02,r11

loc_8c18ae18:
	mov.l @(0x2C,r15),r3
	cmp/ge r3,r14
	bf loc_8c18ae0a
	mov.l @r15,r5
	bsr loc_8c18a468
	mov r13,r4
	cmp/pz r0
	bt/s loc_8c18ae2e
	mov r0,r4
	bra loc_8c18ae30
	mov r4,r0

loc_8c18Ae2e:
	mov r12,r0

loc_8c18ae30:
	add 0x30,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18AE3E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.w @(loc_8c18AED0,pc),r13 ; r13 set to 0x148
	mov r4,r12
	mov.l @(loc_8c18AED8,pc),r3 ; r3 set to 0x8C33C56C
	mov 0x01,r2 ; r2 set to 0x01
	mul.l r13,r12
	mov.l r5,@r15
	mov r6,r11
	mov.l @(0x34,r15),r14
	mov r15,r6
	mov r7,r9
	add 0x04,r6
	sts macl,r13
	add r3,r13 ; r13 set to 0x8C33C6B4
	mov.l r2,@(0x30,r13)  ; r13 ??
	mov.l @(loc_8c18AEDC,pc),r2 ; r2 set to 0x8C18769C
	mov.l r14,@(0x34,r13)
	mov.l @r15,r5
	jsr @r2
	mov r12,r4
	mov r0,r4
	cmp/pz r4
	bf loc_8c18AECA
	mov.b @(0x0A,r15),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c18AE88
	mov.w @(loc_8c18AED2,pc),r0 ; r0 set to 0xFF0B
	bra loc_8c18AEF2
	nop

loc_8c18ae88:
	mov.w @(0x08,r15),r0 
	mov r0,r4
	extu.w r4,r4
	cmp/hs r4,r9
	bt loc_8c18ae9e
	cmp/hi r4,r14
	bt loc_8c18ae9e
	mov r9,r2
	add r14,r2
	cmp/hi r4,r2
	bf loc_8c18aea4

loc_8c18ae9e:
	mov.w @(loc_8C18AED4,pc),r0
	bra loc_8c18aef2
	nop 

loc_8c18aea4:
	mov.l @r15,r5
	bsr loc_8c18a468
	mov r12,r4
	cmp/pz r0
	bf/s loc_8c18aeca
	mov r0,r4
	mov 0x00,r10
	mov r10,r2
	cmp/hs r14,r2
	bt/s loc_8c18aef0
	mov r9,r13

loc_8c18aeba:
	mov.l @(loc_8c18aee0,pc),r9
	mov r13,r5
	mov r11,r6
	jsr @r9
	mov r12,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18aee4

loc_8c18AECA:
	bra loc_8c18AEF2
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18AEce:
	#data 0xFF05
loc_8c18AED0:
	#data 0x0148
loc_8c18AED2:
	#data 0xFF0B
loc_8c18aed4:
	#data 0xFF00
	#align4

loc_8c18AED8:
	#data 0x8C33C56C
loc_8c18AEDC:
	#data loc_8c18769C
loc_8c18AEE0:
	#data loc_8c186850

;==============================================
loc_8c18AEE4:
	mov.w @(0x1C,PC),r4
	add 0x01,r10
	cmp/hs r14,r10
	add r4,r11
	bf/s loc_8c18aeba
	add 0x01,r13

loc_8c18AEF0:
	mov 0x00,r0

loc_8c18AEF2:
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18af04:
	#data 0x0200
	#align4

;==============================================
loc_8c18AF08:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AF14,pc),r7 ; r7 set to 0x00
	mov.l @(loc_8c18AF18,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AF14:
	#data 0x00000000
loc_8c18AF18:
	#data 0x8C0000BC

;==============================================
loc_8c18AF1C:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AF28,pc),r7 ; r7 set to 0x01
	mov.l @(loc_8c18AF2C,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AF28:
	#data 0x00000001
loc_8c18AF2C:
	#data 0x8C0000BC

;==============================================
loc_8c18AF30:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AF3C,pc),r7 ; r7 set to 0x02
	mov.l @(loc_8c18AF40,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AF3C:
	#data 0x00000002
loc_8c18AF40:
	#data 0x8C0000BC

;==============================================
loc_8c18AF44:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AF50,pc),r7 ; r7 set to 0x03
	mov.l @(loc_8c18AF54,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AF50:
	#data 0x00000003
loc_8c18AF54:
	#data 0x8C0000BC

;==============================================
loc_8c18AF58:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AF64,pc),r7 ; r7 set to 0x04
	mov.l @(loc_8c18AF68,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AF64:
	#data 0x00000004
loc_8c18AF68:
	#data 0x8C0000BC

;==============================================
loc_8c18AF6C:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AF78,pc),r7 ; r7 set to 0x05
	mov.l @(loc_8c18AF7C,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AF78:
	#data 0x00000005
loc_8c18AF7C:
	#data 0x8C0000BC

;==============================================
loc_8c18AF80:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AF8C,pc),r7 ; r7 set to 0x06
	mov.l @(loc_8c18AF90,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AF8C:
	#data 0x00000006
loc_8c18AF90:
	#data 0x8C0000BC

;==============================================
loc_8c18AF94:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AFA0,pc),r7 ; r7 set to 0x07
	mov.l @(loc_8c18AFA4,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AFA0:
	#data 0x00000007
loc_8c18AFA4:
	#data 0x8C0000BC

;==============================================
loc_8c18AFA8:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AFB4,pc),r7 ; r7 set to 0x08
	mov.l @(loc_8c18AFB8,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AFB4:
	#data 0x00000008
loc_8c18AFB8:
	#data 0x8C0000BC

;==============================================
loc_8c18AFBC:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AFc8,pc),r7 ; r7 set to 0x09
	mov.l @(loc_8c18AFcc,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AFc8:
	#data 0x00000009
loc_8c18AFcc:
	#data 0x8C0000BC

;==============================================
loc_8c18afd0:
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AFdc,pc),r7 ; r7 set to 0x09
	mov.l @(loc_8c18AFe0,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AFdc:
	#data 0x0000000a
loc_8c18AFe0:
	#data 0x8C0000BC

;=============================================
loc_8c18AFe4:
	mov 0xff,r6 ; r6 set to 0x00
	mov.l @(loc_8c18AFf0,pc),r7 ; r7 set to 0x09
	mov.l @(loc_8c18AFf4,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18AFf0:
	#data 0x00000000
loc_8c18AFf4:
	#data 0x8C0000BC

;==============================================
loc_8c18AFf8:
	mov 0xff,r6 ; r6 set to 0x00
	mov.l @(loc_8c18b004,pc),r7 ; r7 set to 0x09
	mov.l @(loc_8c18b008,pc),r0 ; r0 set to 0x8C0000BC
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18b004:
	#data 0x00000001
loc_8c18b008:
	#data 0x8C0000BC

;==============================================
loc_8c18B00C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x4C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x48,PC),r4
	mov r15,r14
	mov.l @(0x48,PC),r3
	mov 0x02,r6
	mov.l r0,@r15
	add 0x04,r14
	jsr @r3
	mov r14,r5
	tst r0,r0
	bf loc_8c18b052
	mov.b @r14,r3
	mov.w @(0x2A,PC),r4
	extu.b r3,r3
	cmp/eq r4,r3
	bf loc_8c18b03e
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq r4,r0
	bt loc_8c18b052

loc_8c18B03E:
	mov.b @r14,r3
	mov.l @(0x28,PC),r4
	mov.b r3,@r4
	add 0x01,r4
	mov.b @(0x1,r14),r0
	mov.l @(0x24,PC),r3
	mov.b r0,@r4
	mov.l @(0x1C,PC),r4
	jsr @r3
	mov 0x02,r5

loc_8c18B052:
	mov.l @r15,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18b05c:
	#data 0x00FF
	#align4

loc_8c18B060:
	#data loc_8c18B074
loc_8c18B064:
	#data 0x0001A05E
loc_8c18B068:
	#data bank19.loc_8c198998
loc_8c18B06C:
	#data 0x8C000070
loc_8c18B070:
	#data loc_8c1840C2

;==============================================
loc_8c18B074:
	mov.l @(loc_8c18B080,pc),r7 ; r7 set to 0x00
	mov.l @(loc_8c18B084,pc),r0 ; r0 set to 0x8C0000B0
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18B080:
	#data 0x00000000
loc_8c18B084:
	#data 0x8C0000B0

;==============================================
loc_8c18b088:
	mov.l @(loc_8c18b094,pc),r7 ; r7 set to 0x02
	mov.l @(loc_8c18b098,pc),r0 ; r0 set to 0x8C0000B0
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18b094:
	#data 0x00000002
loc_8c18b098:
	#data 0x8C0000B0

;==============================================
loc_8c18B09C:
	mov.l @(loc_8c18B0A8,pc),r7 ; r7 set to 0x03
	mov.l @(loc_8c18B0AC,pc),r0 ; r0 set to 0x8C0000B0
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18B0A8:
	#data 0x00000003
loc_8c18B0AC:
	#data 0x8C0000B0

;==============================================
loc_8c18B0B0:
	bra loc_8c18b0c0
	nop 

;==============================================
loc_8c18B0B4:
	mov.b @r5+,r2
	mov.b @r4+,r3
	cmp/eq r2,r3
	bt loc_8c18b0c0
	rts 
	mov 0x00,r0

;==============================================
loc_8c18B0C0:
	cmp/pl r6
	bt/s loc_8c18b0b4
	add 0xFF,r6
	mov 0x01,r0
	rts 
	nop 

;==============================================
loc_8c18b0cc:
	cmp/pz r6
	bt loc_8c18b0d2
	add 0x03,r6

loc_8c18b0d2:
	shar r6
	bra loc_8c18b0de
	shar r6

loc_8c18b0d8:
	mov.l @r4+,r3
	mov.l r3,@r5
	add 0x04,r5

loc_8c18b0de:
	cmp/pl r6
	bt/s loc_8c18b0d8
	add 0xFF,r6
	rts 
	nop 

;==============================================
loc_8c18B0E8:
	bra loc_8c18B0F2
	nop

;==============================================
loc_8c18B0EC:
	mov.b @r4+,r3
	mov.b r3,@r5
	add 0x01,r5

loc_8c18B0F2:
	cmp/pl r6
	bt/s loc_8c18B0EC
	add 0xFF,r6
	rts
	nop

;==============================================
loc_8c18b0fc:
	cmp/pl r5
	bf/s loc_8c18b10c
	mov 0xFF,r6

loc_8c18b102:
	add 0xFF,r5
	mov.b r6,@r4
	cmp/pl r5
	bt/s loc_8c18b102
	add 0x01,r4

loc_8c18b10c:
	rts
	nop

;==============================================
loc_8c18b110:
	mov.l r14,@-r15
	mov r5,r14
	shll2 r14
	mov.l r12,@-r15
	mov 0x08,r12
	shll2 r14
	mov r12,r0
	mov 0x00,r7
	shll2 r14
	bra loc_8c18b13c
	add 0x78,r0

loc_8c18b126:
	mov.b @r4+,r6
	mov r12,r5

loc_8c18b12a:
	exts.b r6,r3
	tst r0,r3
	bf loc_8c18b140
	add 0xFF,r5
	shll r6
	cmp/pl r5
	bt/s loc_8c18b12a
	add 0x01,r7
	add 0xFF,r14

loc_8c18b13c:
	cmp/pl r14
	bt loc_8c18b126

loc_8c18b140:
	mov.l @r15+,r12
	mov r7,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18b148:
	mov r6,r1
	mov.l r12,@-r15
	shll2 r1
	mov.l r11,@-r15
	shll2 r1
	mov 0x00,r11
	mov 0xFF,r12
	mov 0x08,r7
	bra loc_8c18b18a
	shll2 r1

loc_8c18b15c:
	cmp/ge r7,r4
	bf loc_8c18b168
	mov.b r11,@r5
	add 0x01,r5
	bra loc_8c18b188
	add 0xF8,r4

loc_8c18b168:
	cmp/pl r4
	bf loc_8c18b184
	mov r7,r0

loc_8c18b16e:
	shll r6
	cmp/pl r4
	bf loc_8c18b178
	bra loc_8c18b17c
	add 0xFF,r4

loc_8c18b178:
	mov 0x01,r2
	or r2,r6

loc_8c18b17c:
	dt r0
	bf loc_8c18b16e
	bra loc_8c18b186
	mov.b r6,@r5

loc_8c18b184:
	mov.b r12,@r5

loc_8c18b186:
	add 0x01,r5

loc_8c18b188:
	add 0xFF,r1

loc_8c18b18a:
	cmp/pl r1
	bt loc_8c18b15c
	mov.l @r15+,r11
	mov 0x00,r0
	rts 
	mov.l @r15+,r12

;==============================================
loc_8c18b196:
	mov.l r14,@-r15
	mov 0x3C,r4
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.w @(0xBC,PC),r14
	add 0x02,r5

loc_8c18b1a4:
	mov.b @r5+,r3
	extu.b r3,r3
	cmp/eq r14,r3
	bf loc_8c18b1c8
	add 0xFF,r4
	cmp/pl r4
	bt loc_8c18b1a4
	mov.l @(0xB0,PC),r3
	mov r13,r5
	jsr @r3
	mov 0x3E,r4
	mov r0,r4
	mov 0x3E,r0
	mov.w @(r0,r13),r2
	extu.w r4,r4
	extu.w r2,r2
	cmp/eq r4,r2
	bt loc_8c18b1cc

loc_8c18b1c8:
	bra loc_8c18b1de
	mov 0x00,r0

loc_8c18b1cc:
	mov r13,r5
	bra loc_8c18b1d8
	mov 0x40,r4

loc_8c18b1d2:
	mov.b r14,@r5
	add 0xFF,r4
	add 0x01,r5

loc_8c18b1d8:
	tst r4,r4
	bf loc_8c18b1d2
	mov 0x01,r0

loc_8c18b1de:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18b1e6:
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
	mov.l @(0xC,r13),r10
	mov.l @(0x68,PC),r11
	mov 0x40,r6
	mov.l @(0x4,r13),r14
	mov r10,r5
	jsr @r11
	mov r14,r4
	cmp/eq 0xFF,r0
	bt/s loc_8c18b25c
	mov r0,r4
	mov.l @(0x14,r13),r12
	mov r14,r4
	mov.l @(0x18,r13),r6
	add 0x01,r12
	shll2 r12
	shll2 r12
	shll2 r12
	mov r12,r5
	shll2 r6
	add r10,r5
	shll2 r6
	mov.l r5,@r15
	shll2 r6
	jsr @r11
	add r12,r4
	cmp/eq 0xFF,r0
	bt/s loc_8c18b25c
	mov r0,r4
	mov.l @(0x18,r13),r5
	bsr loc_8c18b110
	mov.l @r15,r4
	mov.l r0,@(0x10,r13)
	mov r0,r12
	mov.w @(0x2,r13),r0
	mov r14,r9
	tst r0,r0
	bf/s loc_8c18b2b6
	add 0x40,r9
	cmp/pl r12
	mov r13,r14
	bf/s loc_8c18b2b2
	add 0x34,r14

loc_8c18b24e:
	mov r14,r5
	mov 0x40,r6
	jsr @r11
	mov r9,r4
	cmp/eq 0xFF,r0
	bf/s loc_8c18b26c
	mov r0,r4

loc_8c18b25c:
	bra loc_8c18b2b8
	mov 0xFF,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18b260:
	#data 0x00FF
	#align4

loc_8c18b264:
	#data bank19.loc_8C1989D4
loc_8c18b268:
	#data bank19.loc_8C198998

;==============================================
loc_8c18b26c:
	mov.w @r14,r2
	mov.l @(0x250,PC),r4
	extu.w r2,r2
	cmp/eq r4,r2
	bt loc_8c18b2b2
	mov.l @(0x24C,PC),r8
	mov r14,r5
	jsr @r8
	mov 0x3E,r4
	mov r0,r4
	mov 0x3E,r0
	mov.w @(r0,r14),r3
	extu.w r4,r4
	extu.w r3,r3
	cmp/eq r4,r3
	bf loc_8c18b2aa
	mov.w @r14,r2
	mov.l @(0x14,r13),r3
	extu.w r2,r2
	cmp/ge r3,r2
	bt loc_8c18b2aa
	mov.w @r14,r5
	mov 0x40,r6
	extu.w r5,r5
	add 0x01,r5
	shll2 r5
	shll2 r5
	shll2 r5
	add r10,r5
	bsr loc_8c18b0cc
	mov r14,r4

loc_8c18b2aa:
	add 0xFF,r12
	cmp/pl r12
	bt/s loc_8c18b24e
	add 0x40,r9

loc_8c18b2b2:
	bra loc_8c18b2b8
	mov 0x00,r0

loc_8c18b2b6:
	mov 0xFA,r0

loc_8c18b2b8:
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
loc_8c18b2cc:
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
	mov.w @(0x2,r13),r0
	tst r0,r0
	bf/s loc_8c18b372
	mov.l @(0x4,r13),r8
	mov.l @(0xC,r13),r14
	mov r8,r12
	mov.l @(0x1D8,PC),r10
	mov 0x40,r6
	mov r14,r5
	add 0x40,r14
	jsr @r10
	mov r8,r4
	cmp/eq 0x40,r0
	bf/s loc_8c18b368
	mov r0,r4
	mov.l @(0x14,r13),r9
	add 0x40,r12
	cmp/pl r9
	bf/s loc_8c18b336
	mov 0x00,r11

loc_8c18b308:
	mov.w @r14,r2
	mov.l @(0x1B4,PC),r4
	extu.w r2,r2
	cmp/eq r4,r2
	bt loc_8c18b32e
	mov r14,r5
	bsr loc_8c18b196
	mov r13,r4
	tst r0,r0
	bf loc_8c18b32e
	mov r14,r5
	mov 0x40,r6
	jsr @r10
	mov r12,r4
	cmp/eq 0x40,r0
	bf/s loc_8c18b368
	mov r0,r4
	add 0x01,r11
	add 0x40,r12

loc_8c18b32e:
	add 0xFF,r9
	cmp/pl r9
	bt/s loc_8c18b308
	add 0x40,r14

loc_8c18b336:
	mov.l @(0x14,r13),r3
	mov r14,r5
	add 0x01,r3
	shll2 r3
	shll2 r3
	shll2 r3
	mov.l r3,@r15
	mov.l @(0x18,r13),r6
	bsr loc_8c18b148
	mov r11,r4
	mov.l @(0x18,r13),r6
	mov r14,r5
	mov.l @r15,r4
	shll2 r6
	shll2 r6
	shll2 r6
	jsr @r10
	add r8,r4
	mov.l @(0x18,r13),r3
	mov r0,r4
	shll2 r3
	shll2 r3
	shll2 r3
	cmp/eq r3,r4
	bt loc_8c18b36c

loc_8c18b368:
	bra loc_8c18b374
	mov 0xFE,r0

loc_8c18b36c:
	mov.l r11,@(0x10,r13)
	bra loc_8c18b374
	mov 0x00,r0

loc_8c18b372:
	mov 0xFA,r0

loc_8c18b374:
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
loc_8c18B388:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x02,r14),r0
	tst r0,r0
	bf loc_8c18B442
	mov r14,r13
	mov.l @(0x28,r14),r2
	add 0x34,r13
	mov r13,r5
	add 0x02,r5
	mov.w r2,@r13
	mov 0x3C,r6 ; r6 set to 0x3C
	bsr loc_8c18B0E8
	mov.l @(0x30,r14),r4
	mov.l @(loc_8c18B4C4,pc),r2 ; r2 set to 0x8C1989D4
	mov r13,r5
	jsr @r2
	mov 0x3E,r4 ; r4 set to 0x3E
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov 0x3E,r0 ; r0 set to 0x3E
	mov.w r4,@(r0,r13)
	mov 0x40,r6 ; r6 set to 0x40
	mov.l @(0x28,r14),r3
	add 0x01,r3
	shll2 r3
	shll2 r3
	shll2 r3
	mov.l r3,@r15
	mov.l @(0x0C,r14),r5
	add r3,r5
	bsr loc_8c18B0CC
	mov r13,r4
	mov.l @(0x10,r14),r3
	mov.l @(0x14,r14),r2 ; r2 ??? bc r14 is ???
	cmp/ge r2,r3
	bf loc_8c18B3DC
	bra loc_8c18B444
	mov 0xF6,r0

loc_8c18b3dc:
	mov.l @(0x14,r14),r12
	mov.l @(0x0C,r14),r5
	add 0x01,r12
	mov.l @(0x10,r14),r4
	shll2 r12
	mov.l @(0x18,r14),r6
	shll2 r12
	shll2 r12
	add r12,r5
	bsr loc_8c18b148
	add 0x01,r4
	mov.l @(0x18,r14),r6
	mov.l @(0x0C,r14),r5
	shll2 r6
	mov.l @(0x04,r14),r4
	shll2 r6
	mov.l @(loc_8c18b4c8,pc),r2
	shll2 r6
	add r12,r5
	jsr @r2
	add r12,r4
	mov.l @(0x18,r14),r3
	mov r0,r4
	shll2 r3
	shll2 r3
	shll2 r3
	cmp/eq r3,r4
	bf loc_8c18b43a
	mov.l @(0x10,r14),r2
	mov 0x40,r6
	mov r13,r5
	add 0x01,r2
	shll2 r2
	shll2 r2
	shll2 r2
	mov.l r2,@r15
	mov.l @(0x10,r14),r3
	mov.l @(loc_8c18b4c8,pc),r2
	add 0x01,r3
	mov.l r3,@(0x10,r14) 
	mov.l @r15,r3
	mov.l @(0x04,r14),r4
	jsr @r2
	add r3,r4
	cmp/eq 0x40,r0 
	bt/s loc_8c18b43e
	mov r0,r4

loc_8c18b43a:
	bra loc_8c18b444
	mov 0xFE,r0

loc_8c18b43e:
	bra loc_8c18b444
	mov 0x00,r0

loc_8c18B442:
	mov 0xFA,r0 ; r0 set to 0xFFFFFFFA

loc_8c18B444:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18B450:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.w @(0x02,r13),r0
	tst r0,r0
	bf loc_8c18B49E
	mov.l @(0x28,r13),r14
	mov 0x3C,r6 ; r6 set to 0x3C
	mov.l @(0x0C,r13),r3
	add 0x01,r14
	mov.l @(0x30,r13),r5
	shll2 r14
	shll2 r14
	shll2 r14
	add r3,r14
	mov r14,r4
	bsr loc_8c18B0E8
	add 0x02,r4
	mov.w @r14,r3
	mov.l @(loc_8c18B4C0,pc),r2 ; r2 set to 0xFFFF
	extu.w r3,r3
	cmp/eq r2,r3
	bt loc_8c18B49A
	mov.l @(loc_8c18B4C4,pc),r1 ; r1 set to 0x8C1989D4
	mov r14,r5
	jsr @r1
	mov 0x3E,r4 ; r4 set to 0x3E
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov 0x3E,r0 ; r0 set to 0x3E
	mov.w @(r0,r14),r3
	extu.w r4,r4
	extu.w r3,r3
	cmp/eq r4,r3
	bt loc_8c18B49A
	bra loc_8c18B4A0
	mov 0xFC,r0

loc_8c18B49A:
	bra loc_8c18B4A0
	mov 0x00,r0

loc_8c18B49E:
	mov 0xFA,r0 ; r0 set to 0xFFFFFFFA

loc_8c18B4A0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18B4A8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x24,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c18B4CC
	cmp/eq 0x01,r0
	bt loc_8c18B4DE
	cmp/eq 0x02,r0
	bt loc_8c18B4F6
	bra loc_8c18B4FE
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18B4C0:
	#data 0x0000FFFF
loc_8c18B4C4:
	#data bank19.loc_8c1989D4
loc_8c18B4C8:
	#data bank19.loc_8c1989AC

;==============================================
loc_8c18B4CC:
	bsr loc_8c18B388
	mov r14,r4
	cmp/eq 0xF6,r0
	bf/s loc_8c18B4DA
	mov r0,r5
	bra loc_8c18B4F0
	mov 0x01,r3

loc_8c18B4DA:
	bra loc_8c18B500
	mov r5,r4

loc_8c18B4DE:
	mov.l @(loc_8c18B5D0,pc),r2 ; r2 set to 0x8C1989C0
	jsr @r2
	mov.l @(0x04,r14),r4
	cmp/eq 0xFF,r0
	bf/s loc_8c18B4EE
	mov r0,r4
	bra loc_8c18B500
	mov 0xFD,r4

loc_8c18b4ee:
	mov 0x02,r3

loc_8c18B4F0:
	mov.l r3,@(0x24,r14)
	bra loc_8c18B500
	mov 0x01,r4

loc_8c18B4F6:
	bsr loc_8c18B2CC
	mov r14,r4
	bra loc_8c18B500
	mov r0,r4

loc_8c18b4fe:
	mov 0xFE,r4

loc_8c18B500:
	lds.l @r15+,pr
	mov r4,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18B508:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x01,r3
	mov r4,r13
	cmp/ge r3,r13
	bf/s loc_8c18b520
	mov.l r5,@r15
	mov 0x05,r1
	cmp/ge r1,r13
	bf loc_8c18b524

loc_8c18B520:
	bra loc_8c18b602
	mov 0xF9,r0

loc_8c18B524:
	mov.l @(0xB0,PC),r3
	mov r15,r5
	mov.l @(0xA8,PC),r14
	add 0x04,r5
	mov.l @(0xAC,PC),r2
	mov.l r3,@r14
	jsr @r2
	mov r13,r4
	mov.l @r14,r3
	mov 0x00,r4
	mov.w @(0x90,PC),r1
	mov.w r13,@r3
	mov.l @(0x4,r15),r3
	mov.l @r14,r2
	mov.l r3,@(0x4,r2)
	mov.l @(0x8,r15),r3
	mov.l @r14,r2
	mov.l r3,@(0x8,r2)
	mov.l @r14,r2
	mov r2,r3
	mov.l @(0x8,r3),r0
	mov 0xF1,r3
	add r1,r0
	shad r3,r0
	mov.l r0,@(0x18,r2)
	mov 0xFA,r0
	mov.l @r14,r2
	mov r2,r3
	mov.l @(0x8,r3),r3
	shad r0,r3
	mov r2,r0
	mov.l @(0x18,r0),r0
	sub r0,r3
	add 0xFF,r3
	mov.l r3,@(0x14,r2)
	mov.l @r15,r3
	mov.l @r14,r2
	mov.l r3,@(0xC,r2)
	mov.l @r14,r3
	mov.l r4,@(0x1C,r3)
	mov.l @r14,r2
	mov 0x40,r6
	mov.l r4,@(0x20,r2)
	mov.l @r14,r3
	mov.l r4,@(0x2C,r3)
	mov.l @r14,r5
	mov.l @r14,r4
	mov.l @(0x5C,PC),r3
	add 0x34,r5
	jsr @r3
	mov.l @(0x4,r4),r4
	cmp/eq 0xFF,r0
	bf/s loc_8c18b594
	mov r0,r4
	bra loc_8c18b602
	mov 0xFF,r0

loc_8c18B594:
	mov.l @r14,r13
	mov 0x0C,r6
	mov.l @(0x48,PC),r5
	add 0x34,r13
	bsr loc_8c18b0b0
	mov r13,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c18b5c8
	mov.l @r14,r4
	mov 0x10,r0
	mov.b @(r0,r13),r2
	mov.w @r4,r3
	cmp/eq r2,r3
	bf loc_8c18b5c8
	mov 0x11,r0
	mov.b @(r0,r13),r0
	mov.w r0,@(0x2,r4)
	mov.l @r14,r4
	mov.w @(0x2,r4),r0
	mov r0,r4
	tst r4,r4
	bt loc_8c18b5e8
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18b5e8

loc_8c18B5C8:
	bra loc_8c18b602
	mov 0xF8,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18B5Cc:
	#data 0x7FFF
	#align4

loc_8c18B5D0:
	#data bank19.loc_8c1989C0
loc_8c18B5D4:
	#data bank1c.loc_8c1c983C
loc_8c18B5D8:
	#data 0x8C342878
loc_8c18B5DC:
	#data bank19.loc_8c198984
loc_8c18B5E0:
	#data bank19.loc_8c198998
loc_8c18B5E4:
	#data bank1c.loc_8c1c5984

;==============================================
loc_8c18B5E8:
	mov.l @r14,r5
	mov.l @r14,r4
	mov.l @(0x8,r5),r5
	bsr loc_8c18b0fc
	mov.l @(0xC,r4),r4
	bsr loc_8c18b1e6
	mov.l @r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c18b600
	bra loc_8c18b602
	mov r4,r0

loc_8c18B600:
	mov 0x00,r0

loc_8c18B602:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18B60C:
	mov.l r14,@-r15
	mov.l @(loc_8c18B7E4,pc),r14 ; r14 set to 0x8C1C983C
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r14,r12
	tst r12,r12
	bf/s loc_8c18B622
	mov r4,r13
	bra loc_8c18B68E
	mov 0xF5,r0

loc_8c18B622:
	tst r13,r13
	bt loc_8c18B630
	mov r13,r0
	cmp/eq 0x01,r0
	bt loc_8c18B630
	bra loc_8c18B68E
	mov 0xFA,r0

loc_8c18B630:
	mov.l @(loc_8c18B7E8,pc),r2 ; r2 set to 0x8C1989C0
	jsr @r2
	mov.l @(0x04,r12),r4
	mov r0,r4
	tst r4,r4
	bt loc_8c18B640
	bra loc_8c18B68E
	mov 0xFD,r0

loc_8c18B640:
	mov.l @r14,r12
	mov 0x10,r6 ; r6 set to 0x10
	mov.l @(loc_8c18B7EC,pc),r4 ; r4 set to 0x8C1C5984
	add 0x34,r12
	bsr loc_8c18B0E8
	mov r12,r5
	mov.l @r14,r2
	mov r13,r0
	mov r12,r5
	mov 0x12,r6 ; r6 set to 0x12
	mov.w r0,@(0x02,r2)
	mov 0x11,r0 ; r0 set to 0x11
	mov.b r13,@(r0,r12)
	mov 0x10,r0 ; r0 set to 0x10
	mov.l @r14,r3
	mov.b @r3,r2
	mov.l @(loc_8c18B7F0,pc),r3 ; r3 set to 0x8C1989AC
	mov.b r2,@(r0,r12)
	mov.l @r14,r4 ; r4 ??? bc r14 is ???
	jsr @r3
	mov.l @(0x04,r4),r4
	cmp/eq 0x12,r0
	bt/s loc_8c18B674
	mov r0,r4 ; r4 set to 0x10
	bra loc_8c18B68E
	mov 0xFE,r0

loc_8c18B674:
	mov.l @r14,r5
	mov.l @r14,r4
	mov.l @(0x08,r5),r5
	bsr loc_8c18B0FC
	mov.l @(0x0C,r4),r4
	bsr loc_8c18B1E6
	mov.l @r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c18B68C
	bra loc_8c18B68E
	mov r4,r0

loc_8c18B68C:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c18B68E:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18B698:
	mov.l @(loc_8c18B7E4,pc),r7 ; r7 set to 0x8C1C983C
	mov.l @r7,r6
	tst r6,r6
	bf loc_8c18B6A4
	rts
	mov 0xF5,r0

;==============================================
loc_8c18B6A4:
	mov.l @(0x1C,r6),r2
	tst r2,r2
	bt loc_8c18B6AE
	rts
	mov 0xF7,r0

;==============================================
loc_8c18b6ae:
	cmp/pz r4
	bf loc_8c18b6b8
	mov.l @(0x14,r6),r2
	cmp/ge r2,r4
	bf loc_8c18b6bc

loc_8c18b6b8:
	rts
	mov 0xFB,r0

;==============================================
loc_8c18b6bc:
	mov 0x01,r2
	mov.l r2,@(0x1C,r6) 
	mov 0x02,r2
	mov.l @r7,r3
	mov 0x00,r0
	mov.l r2,@(0x20,r3) 
	mov.l @r7,r3
	mov.l r4,@(0x28,r3) 
	mov.l @r7,r2
	mov.l r5,@(0x30,r2) 
	rts 
	nop 

loc_8c18B6D4:
	mov.l @(loc_8c18B7E4,pc),r7 ; r7 set to 0x8C1C983C
	mov.l @r7,r6
	tst r6,r6
	bf loc_8c18B6E0
	rts
	mov 0xF5,r0

;==============================================
loc_8c18B6E0:
	mov.l @(0x1C,r6),r2
	tst r2,r2
	bt loc_8c18B6EA
	rts
	mov 0xF7,r0

;==============================================
loc_8c18b6ea:
	cmp/pz r4
	bf loc_8c18b6f4
	mov.l @(0x14,r6),r2
	cmp/ge r2,r4
	bf loc_8c18b6f8

loc_8c18b6f4:
	rts 
	mov 0xFB,r0

;==============================================
loc_8c18b6f8:
	mov 0x02,r2
	mov.l r2,@(0x1C,r6) 
	mov.l @r7,r3
	mov.l r2,@(0x20,r3) 
	mov.l @r7,r3
	mov.l r4,@(0x28,r3) 
	mov 0x00,r4
	mov.l @r7,r2
	mov r4,r0
	mov.l r5,@(0x30,r2) 
	mov.l @r7,r3
	mov.l r4,@(0x24,r3) 
	rts 
	nop 

loc_8c18B714:
	mov.l r14,@-r15
	mov.l @(loc_8c18B7E4,pc),r14 ; r14 set to 0x8C1C983C
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r14,r4
	tst r4,r4
	bf loc_8c18B726
	bra loc_8c18B78E
	mov 0x00,r0

loc_8c18B726:
	mov.l @(0x1C,r4),r0
	cmp/eq 0x00,r0
	bt/s loc_8c18B78A
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8c18B73A
	cmp/eq 0x02,r0
	bt loc_8c18B75C
	bra loc_8c18B784
	nop

loc_8c18B73A:
	bsr loc_8c18B450
	nop
	mov.l @r14,r2
	mov r0,r4
	tst r4,r4
	bt/s loc_8c18B752
	mov.l r13,@(0x1C,r2)
	mov.l @r14,r2
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r3,@(0x20,r2)
	bra loc_8c18B77E
	nop

loc_8c18B752:
	mov.l @r14,r1
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r3,@(0x20,r1)
	bra loc_8c18B77E
	nop

loc_8c18B75C:
	bsr loc_8c18B4A8
	nop
	cmp/eq 0x01,r0
	bt/s loc_8c18B78A
	mov r0,r4
	mov.l @r14,r3
	tst r4,r4
	bt/s loc_8c18B778
	mov.l r13,@(0x1C,r3)
	mov.l @r14,r3
	mov 0x03,r2 ; r2 set to 0x03
	mov.l r2,@(0x20,r3)
	bra loc_8c18B77E
	nop

loc_8c18b778:
	mov.l @r14,r1
	mov 0x01,r3
	mov.l r3,@(0x20,r1) 

loc_8c18B77E:
	mov.l @r14,r2
	bra loc_8c18B78A
	mov.l r4,@(0x2C,r2)

loc_8c18b784:
	mov.l r13,@(0x1C,r4) 
	mov.l @r14,r2
	mov.l r13,@(0x20,r2) 

loc_8c18B78A:
	mov.l @r14,r0
	mov.l @(0x20,r0),r0

loc_8c18B78E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18b796:
	mov.l @(0x4C,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bf loc_8c18b7a2
	rts 
	mov 0xF5,r0

loc_8c18b7a2:
	mov.l @(0x2C,r4),r0
	rts 
	nop 

;==============================================
loc_8c18B7A8:
	mov.l @(loc_8c18B7E4,pc),r2 ; r2 set to 0x8C1C983C
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.l r3,@r2

;==============================================
loc_8c18b7b0:
	mov.l @(0x30,PC),r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r1,r14
	tst r14,r14
	bf loc_8c18b7c4
	lds.l @r15+,pr
	mov 0xF5,r0
	rts 
	mov.l @r15+,r14

loc_8c18b7c4:
	mov.l @(0x20,PC),r2
	jsr @r2
	mov.l @(0x4,r14),r4
	cmp/eq 0xFF,r0
	bf/s loc_8c18b7d4
	mov r0,r4
	bra loc_8c18b7dc
	mov 0xFD,r4

loc_8c18b7d4:
	mov.l @(0xC,PC),r3
	bsr loc_8c18b2cc
	mov.l @r3,r4
	mov r0,r4

loc_8c18b7dc:
	mov r4,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18B7E4:
	#data bank1c.loc_8c1c983C
loc_8c18B7E8:
	#data bank19.loc_8c1989C0
loc_8c18B7EC:
	#data bank1c.loc_8c1c5984
loc_8c18B7F0:
	#data bank19.loc_8c1989AC

;==============================================
loc_8c18b7f4:
	mov.l @(0x14,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bf loc_8c18b800
	rts
	mov 0xF5,r0

loc_8c18b800:
	mov.l @(0x14,r4),r0
	mov.l @(0x10,r4),r3
	sub r3,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18B80C:
	#data bank1c.loc_8c1c983C

;==============================================
loc_8c18B810:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xC4,r15
	mov.l @(loc_8c18B8F4,pc),r3 ; r3 set to 0x8C18B508
	mov r4,r14
	jsr @r3
	mov 0x02,r4 ; r4 set to 0x02
	cmp/eq 0xF8,r0
	bf/s loc_8c18B83A
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8c18B8F8,pc),r3 ; r3 set to 0x8C18B60C
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov r0,r4 ; r4 ??? bc r0 is ???
	tst r4,r4
	bf loc_8c18B8DE
	bra loc_8c18B83E
	nop

loc_8c18B83A:
	tst r4,r4
	bf loc_8c18B8DE

loc_8c18B83E:
	mov.l @(loc_8c18B8FC,pc),r2 ; r2 set to 0x8C18B698
	mov r15,r12
	mov r12,r5
	jsr @r2
	mov 0x05,r4 ; r4 set to 0x05
	mov r0,r4 ; r4 ??? bc r0 is ???
	tst r4,r4
	bf loc_8c18B8DE
	mov.l @(loc_8c18B900,pc),r13 ; r13 set to 0x8C18B714

loc_8c18B850:
	jsr @r13
	nop
	cmp/eq 0x02,r0
	bt/s loc_8c18B850
	mov r0,r4
	mov r4,r0
	cmp/eq 0x01,r0
	bf loc_8c18B8DE
	mov.l @(loc_8c18B904,pc),r3 ; r3 set to 0x8C18B09C, r3 set to 0x8C18B09C
	jsr @r3
	nop
	tst r14,r14
	mov r0,r4
	bf/s loc_8c18B884
	add 0x10,r4
	mov r12,r6
	bra loc_8c18B87C
	mov 0x08,r5

loc_8c18B874:
	mov.b @r6+,r3
	add 0xFF,r5
	mov.b r3,@r4
	add 0x01,r4

loc_8c18B87C:
	tst r5,r5
	bf loc_8c18B874
	bra loc_8c18B8E2
	nop

loc_8c18B884:
	mov r12,r5
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x05,r11 ; r11 set to 0x05
	add 0x07,r5
	add 0x07,r4
	bra loc_8c18B8BC
	mov 0x01,r7

loc_8c18B892:
	mov r14,r3
	tst r7,r3
	bt loc_8c18b8b4
	mov r6,r0
	mov.b @r4,r1
	cmp/eq 0x04,r0
	bf/s loc_8c18b8b4
	mov.b r1,@r5
	add 0xFF,r4
	mov.b @r4,r3
	add 0xFF,r4
	mov.b r3,@-r5
	mov.b @r4,r3
	add 0xFF,r4
	mov.b r3,@-r5
	mov.b @r4,r3
	mov.b r3,@-r5

loc_8c18B8B4:
	add 0xFF,r4
	add 0x01,r6
	shar r14
	add 0xFF,r5

loc_8c18b8bc:
	cmp/ge r11,r6
	bf loc_8c18b892
	mov.l @(loc_8c18b908,pc),r2
	mov r12,r5
	jsr @r2
	mov 0x05,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c18b8de

loc_8c18b8ce:
	jsr @r13
	nop 
	cmp/eq 0x02,r0 
	bt/s loc_8c18b8ce
	mov r0,r4
	mov r4,r0
	cmp/eq 0x01,r0 
	bt loc_8c18b8e2

loc_8c18B8DE:
	bra loc_8c18B8E4
	mov 0xFF,r0

loc_8c18b8e2:
	mov 0x00,r0

loc_8c18B8E4:
	add 0x3C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18B8F4:
	#data loc_8c18B508
loc_8c18B8F8:
	#data loc_8c18B60C
loc_8c18B8FC:
	#data loc_8c18B698
loc_8c18B900:
	#data loc_8c18B714
loc_8c18B904:
	#data loc_8c18B09C
loc_8c18B908:
	#data loc_8c18B6D4

;==============================================
loc_8c18B90C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c18BA0C,pc),r3 ; r3 set to 0x8C1859B2
	jsr @r3
	mov.l r4,@r15
	mov r0,r4
	mov.l @r4,r0
	mov.w @(loc_8c18BA08,pc),r3 ; r3 set to 0x100
	tst r3,r0
	bt loc_8c18B928
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c18B928:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c18b932:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xE0,r15
	mov r7,r13
	mov.l r4,@(0x8,r15)
	mov.l r5,@(0x4,r15)
	mov.l r6,@r15
	bsr loc_8c18b90c
	mov.l @(0x8,r15),r4
	tst r0,r0
	bf loc_8c18b950
	bra loc_8c18b9da
	mov 0xFE,r0

loc_8c18b950:
	mov 0x00,r3
	mov r15,r14
	mov r3,r2
	add 0x0C,r14
	mov r3,r4
	mov r3,r12
	cmp/hs r13,r2
	mov r3,r5
	mov r14,r6
	mov.l r3,@(0x10,r14)
	mov.l r3,@(0xC,r14)
	mov.l r3,@(0x8,r14)
	mov.l r3,@(0x4,r14)
	mov.l r3,@r14
	bt/s loc_8c18b988
	mov 0x01,r7

loc_8c18b970:
	mov.l @(0x4,r15),r1
	add 0x01,r5
	mov r7,r2
	cmp/hs r13,r5
	add 0x01,r1
	mov.l r1,@(0x4,r15)
	add 0xFF,r1
	mov.b @r1,r3
	extu.b r3,r3
	shad r3,r2
	bf/s loc_8c18b970
	or r2,r4

loc_8c18b988:
	extu.w r4,r3
	shlr8 r3
	mov.b r3,@r6
	add 0x01,r6
	mov 0x00,r3
	mov.b r4,@r6
	cmp/hs r13,r3
	mov r12,r4
	bt/s loc_8c18b9b0
	add 0x01,r6

loc_8c18b99c:
	mov.l @r15,r3
	add 0x01,r4
	cmp/hs r13,r4
	add 0x01,r3
	mov.l r3,@r15
	add 0xFF,r3
	mov.b @r3,r2
	mov.b r2,@r6
	bf/s loc_8c18b99c
	add 0x01,r6

loc_8c18b9b0:
	mov r13,r4
	add 0x05,r4
	shlr2 r4
	mov.w @(0x4E,PC),r5
	mov.l r4,@r15
	mov 0x00,r7
	mov.l r4,@-r15
	mov r4,r3
	mov.l @(0x4C,PC),r3
	mov r7,r6
	mov.l r14,@-r15
	mov.l r12,@-r15
	jsr @r3
	mov.l @(0x14,r15),r4
	mov r0,r4
	cmp/pz r4
	bt/s loc_8c18b9d8
	add 0x0C,r15
	bra loc_8c18b9da
	mov 0xFF,r0

loc_8c18b9d8:
	mov 0x00,r0

loc_8c18b9da:
	add 0x20,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18B9E6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xBC,r15
	mov r5,r14
	mov.l r4,@r15
	bsr loc_8c18B90C
	mov r6,r10
	tst r0,r0
	bf loc_8c18BA14
	bra loc_8c18BABC
	mov 0xFE,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18BA08:
	#data 0x0100
	#align4

loc_8c18BA0C:
	#data loc_8c1859B2
loc_8c18BA10:
	#data loc_8c185B38

;==============================================
loc_8c18ba14:
	mov 0x00,r12
	mov.w @(loc_8C18BB22,pc),r13
	mov r12,r3
	mov r15,r7
	cmp/hs r10,r3
	add 0x04,r7
	mov r12,r11
	mov 0xFE,r8
	bt/s loc_8c18baa2
	mov 0x02,r9

loc_8c18ba28:
	mov.b @r14,r2
	mov 0x01,r1
	mov.b @(0x01,r14),r0 
	extu.b r2,r2
	shll2 r2
	mov r0,r6
	and r6,r1
	shll2 r2
	extu.b r6,r3
	or r1,r2
	tst r13,r3
	mov.b r2,@r7
	mov.b @(0x02,r14),r0 
	mov r0,r4
	bf/s loc_8c18ba58
	add 0x01,r7
	exts.b r4,r0
	cmp/eq 0x01,r0 
	bf loc_8c18ba50
	mov r9,r4

loc_8c18ba50:
	exts.b r4,r0
	cmp/eq 0xFF,r0 
	bf loc_8c18ba58
	mov r8,r4

loc_8c18ba58:
	exts.b r4,r5
	cmp/pl r5
	bf loc_8c18ba68
	shll2 r5
	mov 0x70,r4
	shll2 r5
	bra loc_8c18ba76
	and r5,r4

loc_8c18ba68:
	cmp/pz r5
	bt loc_8c18ba74
	mov 0x07,r4
	neg r5,r0
	bra loc_8c18ba76
	and r0,r4

loc_8c18ba74:
	mov r12,r4

loc_8c18ba76:
	mov.w @(loc_8C18BB22,pc),r2
	and r6,r2
	or r2,r4
	mov.b r4,@r7
	add 0x01,r7
	mov.b @(0x03,r14),r0 
	extu.b r6,r6
	tst r13,r6
	mov.b r0,@r7
	add 0x01,r7
	mov r7,r3
	bt/s loc_8c18ba96
	add 0x01,r7
	mov.b @(0x04,r14),r0 
	bra loc_8c18ba98
	extu.b r0,r2

loc_8c18ba96:
	mov 0x00,r2

loc_8c18ba98:
	add 0x01,r11
	mov.b r2,@r3
	cmp/hs r10,r11
	bf/s loc_8c18ba28
	add 0x08,r14

loc_8c18baa2:
	mov.w @(loc_8C18BB24,pc),r5
	mov r15,r6
	mov.l @(loc_8c18bb28,pc),r3
	mov r10,r7
	add 0x04,r6
	jsr @r3
	mov.l @r15,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18baba
	bra loc_8c18babc
	mov 0xFF,r0

loc_8c18baba:
	mov 0x00,r0

loc_8c18BABC:
	add 0x44,r15
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
loc_8c18bad0:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0x54,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	jsr @r3
	mov.l @(0x4,r15),r4
	mov.l @(0x50,PC),r2
	mov r15,r4
	mov r0,r5
	jsr @r2
	add 0x08,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18baf6
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov 0xFE,r0

loc_8c18baf6:
	mov.l @(0x8,r15),r3
	mov.l @r15,r2
	mov.b r3,@r2
	mov.b @(0xC,r15),r0
	mov.l @r15,r2
	mov.b r0,@(0x1,r2)
	mov 0x00,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c18BB0C:
	mov.l @r7,r2
	mov.w @(0x12,PC),r3
	tst r3,r2
	bt/s loc_8c18bb1e
	mov.l @r15,r4
	mov.b @(0x4,r6),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8c18bb34

loc_8c18BB1E:
	bra loc_8c18bbd4
	mov 0xFE,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18bb22:
	#data 0x0088
loc_8c18bb24:
	#data 0x0100
	#align4

loc_8c18BB28:
	#data loc_8c185BE4
loc_8c18BB2C:
	#data loc_8c1859B2
loc_8c18BB30:
	#data loc_8c185EBE

;==============================================
loc_8c18BB34:
	mov.l @(0x4,r15),r3
	mov.l @(0x8,r6),r5
	tst r3,r3
	bt/s loc_8c18bb4c
	add 0x08,r5
	mov.b @r5,r0
	mov.l @(0x4,r15),r3
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r3

loc_8c18BB4C:
	mov.b @(0x1,r5),r0
	mov r0,r7
	mov.b @r5,r0
	extu.b r7,r6
	extu.b r0,r0
	shlr2 r0
	and 0x03,r0
	mov.b r0,@r4
	mov.b @r5,r0
	and 0x03,r0
	mov.b r0,@(0x1,r4)
	mov.w @(0xA6,PC),r0
	tst r6,r0
	bt loc_8c18bb6c
	bra loc_8c18bb6e
	mov 0x01,r0

loc_8c18BB6C:
	mov 0x00,r0

loc_8c18BB6E:
	mov.b r0,@(0x2,r4)
	mov 0x40,r0
	tst r6,r0
	bt loc_8c18bb7a
	bra loc_8c18bb7c
	mov 0x01,r0

loc_8c18BB7A:
	mov 0x00,r0

loc_8c18BB7C:
	mov.b r0,@(0x3,r4)
	mov 0x20,r0
	tst r6,r0
	bt loc_8c18bb88
	bra loc_8c18bb8a
	mov 0x01,r0

loc_8c18BB88:
	mov 0x00,r0

loc_8c18BB8A:
	mov.b r0,@(0x4,r4)
	mov 0x10,r0
	tst r6,r0
	bt loc_8c18bb96
	bra loc_8c18bb98
	mov 0x01,r0

loc_8c18BB96:
	mov 0x00,r0

loc_8c18BB98:
	mov.b r0,@(0x5,r4)
	mov 0x0F,r0
	and r6,r0
	mov r5,r2
	cmp/eq 0x00,r0
	mov 0x00,r7
	bt/s loc_8c18bbb4
	add 0x02,r2
	cmp/eq 0x01,r0
	bt loc_8c18bbbc
	cmp/eq 0x0F,r0
	bt loc_8c18bbc4
	bra loc_8c18bbca
	nop 

loc_8c18BBB4:
	mov.b @r2,r0
	mov.b r0,@(0x6,r4)
	bra loc_8c18bbd0
	mov.b @(0x3,r5),r0

loc_8c18BBBC:
	mov.b @r2,r0
	mov.b r0,@(0x6,r4)
	bra loc_8c18bbd0
	mov.b @r2,r0

loc_8c18BBC4:
	mov r7,r0
	bra loc_8c18bbd0
	mov.b r0,@(0x6,r4)

loc_8c18BBCA:
	mov.w @(0x40,PC),r5
	mov r5,r0
	mov.b r0,@(0x6,r4)

loc_8c18BBD0:
	mov.b r0,@(0x7,r4)
	mov r7,r4

loc_8c18BBD4:
	rts 
	mov r4,r0

;==============================================
loc_8c18bbd8:
	mov.l r14,@-r15
	mov 0x1C,r14
	mul.l r14,r4
	mov.l @(0x30,PC),r3
	sts.l pr,@-r15
	sts macl,r14
	add r3,r14
	mov.l @(0xC,r14),r2
	tst r2,r2
	bt loc_8c18bc06
	mov 0x00,r2
	mov.l r2,@-r15
	mov.l @(0x4,r14),r1
	mov.l r1,@-r15
	bsr loc_8c18bb0c
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x8,r14),r5
	mov r0,r4
	mov.l @(0xC,r14),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c18bc06:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18bc0c:
	#data 0x0080
loc_8c18bc0e:
	#data 0x00FF
	#align4

loc_8c18bc10:
	#data 0x8C3428EC

;==============================================
loc_8c18BC14:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x1C,r14
	mov r4,r13
	mul.l r14,r13
	mov.l @(0xF0,PC),r3
	mov 0x00,r2
	sts macl,r14
	add r3,r14
	mov.l r2,@r14
	mov.l @(0x10,r14),r1
	tst r1,r1
	bt loc_8c18bc54
	mov r15,r1
	mov.l r1,@-r15
	mov r15,r2
	add 0x08,r2
	mov.l r2,@-r15
	bsr loc_8c18bb0c
	mov r13,r4
	add 0x08,r15
	mov.l @(0x8,r14),r7
	mov r15,r6
	mov.l @(0x10,r14),r3
	mov r0,r5
	add 0x04,r6
	mov r0,r12
	jsr @r3
	mov.l @r15,r4

loc_8c18BC54:
	tst r12,r12
	bf loc_8c18bc76
	mov 0x18,r0
	mov.l @(0x14,r14),r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/hi r3,r2
	bf loc_8c18bc76
	mov.l @(0x14,r14),r1
	mov.w @(0xAC,PC),r5
	mov.l @(0xB4,PC),r3
	add 0x01,r1
	mov.l @(0xAC,PC),r7
	mov r1,r6
	mov.l r1,@(0x14,r14)
	jsr @r3
	mov r13,r4

loc_8c18BC76:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18bc82:
	mov.l r14,@-r15
	mov 0x1C,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mul.l r14,r12
	mov.l @(0x88,PC),r3
	sts.l pr,@-r15
	sts macl,r14
	add r3,r14
	mov.l @r14,r2
	tst r2,r2
	bf loc_8c18bcce
	mov 0x00,r13
	mov 0x01,r4
	mov.l r4,@r14
	mov.l r13,@(0x4,r14)
	mov.l r6,@(0x8,r14)
	mov.l r13,@(0xC,r14)
	mov.l r5,@(0x10,r14)
	mov r14,r5
	mov.l r4,@(0x14,r14)
	add 0x18,r5
	bsr loc_8c18bad0
	mov r12,r4
	mov r0,r4
	cmp/pz r4
	bf loc_8c18bcd4
	mov.w @(0x58,PC),r5
	mov 0x01,r6
	mov.l @(0x60,PC),r2
	mov.l @(0x58,PC),r7
	jsr @r2
	mov r12,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18bcd2
	mov.l r13,@r14

loc_8c18bcce:
	bra loc_8c18bcd4
	mov 0xFF,r4

loc_8c18bcd2:
	mov r13,r4

loc_8c18bcd4:
	lds.l @r15+,pr
	mov r4,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18bce0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x3C,PC),r0
	mov r4,r14
	mov.l @(0x3C,PC),r3
	mov.b @(r0,r14),r4
	jsr @r3
	extu.b r4,r4
	mov.l @(0x34,PC),r3
	mov.l r0,@r15
	jsr @r3
	mov r14,r4
	mov r0,r5
	mov r14,r0
	cmp/eq 0x02,r0
	bt loc_8c18bd12
	cmp/eq 0x08,r0
	bt loc_8c18bd12
	cmp/eq 0x0E,r0
	bt loc_8c18bd12
	cmp/eq 0x14,r0
	bt loc_8c18bd12
	bra loc_8c18bd2c
	nop 

loc_8c18bd12:
	bra loc_8c18bd2e
	mov 0x01,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18bd16:
	#data 0x0100
	#align4

loc_8c18BD18:
	#data 0x8C3428EC
loc_8c18BD1C:
	#data loc_8c18BC14
loc_8c18BD20:
	#data loc_8c1862DC
loc_8c18BD24:
	#data bank1c.loc_8c1c5A20
loc_8c18BD28:
	#data loc_8c1859B2

;==============================================
loc_8c18BD2c:
	mov 0x00,r4

loc_8c18bd2e:
	mov.l @r15,r0
	mov r5,r3
	add 0x12,r3
	mov.l @(0x18,PC),r1
	add 0x12,r0
	mov.b @r3,r2
	mov.b @(r0,r4),r0
	extu.b r2,r2
	extu.b r0,r0
	shll2 r0
	add r2,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18BD50:
	#data bank1c.loc_8c1c5A38

;==============================================
loc_8c18BD54:
	mov.l @(loc_8c18BE58,pc),r3 ; r3 set to 0x8C18BDE6
	mov.l @(loc_8c18BE54,pc),r4 ; r4 set to 0x8C342C10
	mov.l r3,@r4 ; r4 ??
	mov.l @(loc_8c18BE5C,pc),r2 ; r2 set to 0x8C18BF30
	mov.l r2,@(0x04,r4)
	mov.l @(loc_8c18BE60,pc),r3 ; r3 set to 0x8C18BFA8
	mov.l r3,@(0x08,r4)
	rts
	mov r4,r0

;==============================================
loc_8c18BD66:
	mov.l @(loc_8c18BE64,pc),r3 ; r3 set to 0x8C19F0BA
	jmp @r3
	nop

;==============================================
loc_8c18BD6C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c18BE68,pc),r2 ; r2 set to 0x8C342C20
	sts.l pr,@-r15
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c18BDBA
	mov.l @(loc_8c18BE6C,pc),r4 ; r4 set to 0x8C1C9848
	mov.l @(loc_8c18BE74,pc),r13 ; r13 set to 0x8C1A0B50
	mov.l @r4,r3
	mov.l @(loc_8c18BE70,pc),r12 ; r12 set to 0x8C19FF44
	mov.l @(loc_8c18BE78,pc),r14 ; r14 set to 0x8C199284
	add 0x11,r3
	bra loc_8c18BD98
	mov.l r3,@r4

loc_8c18BD8C:
	jsr @r14
	nop
	jsr @r13
	nop
	jsr @r12
	nop

loc_8c18BD98:
	bsr loc_8c18BDC4
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c18BD8C
	mov.l @(loc_8c18BE7C,pc),r3 ; r3 set to 0x8C1A21DE, r3 set to 0x8C1A21DE
	jsr @r3
	nop
	mov.l @(loc_8c18BE80,pc),r2 ; r2 set to 0x8C1A024E, r2 set to 0x8C1A024E
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c18BE84,pc),r3 ; r3 set to 0x8C1A21FE, r3 set to 0x8C1A21FE
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c18BDBA:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18BDC4:
	mov.l @(loc_8c18BE6C,pc),r5 ; r5 set to 0x8C1C9848
	sts.l pr,@-r15
	mov.l @(loc_8c18BE88,pc),r3 ; r3 set to 0x8C1291DC
	mov.l @r5,r1
	jsr @r3
	mov 0x0A,r0 ; r0 set to 0x0A
	tst r0,r0
	bt loc_8c18BDDE
	mov.l @r5,r3 ; r3 ??
	mov 0x01,r4 ; r4 set to 0x01
	add 0xF6,r3
	bra loc_8c18BDE0
	mov.l r3,@r5

loc_8c18BDDE:
	mov 0x00,r4 ; r4 set to 0x00

loc_8c18BDE0:
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c18BDE6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c18BE68,pc),r3 ; r3 set to 0x8C342C20
	mov.b r13,@r3 ; r3 ??
	add 0xF8,r15
	mov.l @(loc_8c18BE8C,pc),r1 ; r1 set to 0x8C342B98
	mov.l @r14,r2
	mov.l r2,@r1 ; r1 ??? bc r2 is ???
	mov.l @(loc_8c18BE90,pc),r2 ; r2 set to 0x8C1A0416
	jsr @r2
	mov.l @(0x18,r14),r4
	mov.l @(loc_8c18BE94,pc),r3 ; r3 set to 0x8C1A0220
	jsr @r3
	mov.l @(0x18,r14),r4
	mov.l @(0x14,r14),r2 ; r2 ??? bc r14 is ???
	mov.l @(loc_8c18BE98,pc),r11 ; r11 set to 0x8C342B94
	mov r2,r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bf/s loc_8c18BE1C
	mov.l r2,@r11 ; r11 ??? bc r2 is ???
	bra loc_8c18BF22
	mov 0x04,r0

loc_8c18BE1C:
	mov.l @(loc_8c18BE9C,pc),r3 ; r3 set to 0x8C1A00FC
	jsr @r3
	nop
	mov.l @(loc_8c18BEA4,pc),r2 ; r2 set to 0x8C342BA4
	mov 0x04,r6 ; r6 set to 0x04
	mov.l @(loc_8c18BEA0,pc),r12 ; r12 set to 0x8C342BA0
	mov r2,r3 ; r3 set to 0x8C342BA4
	mov.l r2,@r12 ; r12 ??
	mov.l @(loc_8c18BEA8,pc),r2 ; r2 set to 0x8C347A30
	mov.l r2,@(0x04,r3)  ; r3 ??
	mov.l @(loc_8c18BEAC,pc),r4 ; r4 set to 0x8C342C1C
	mov.l @(loc_8c18BEB0,pc),r3 ; r3 set to 0x8C129728
	jsr @r3
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c18BEB8,pc),r2 ; r2 set to 0x8C342C00
	mov.l @(loc_8c18BEB4,pc),r14 ; r14 set to 0x8C342B9C
	mov.l r2,@r14 ; r14 ??
	mov.l @r12,r5 ; r5 ??? bc r12 is ???
	mov.l @(loc_8c18BEBC,pc),r3 ; r3 set to 0x8C1A13F0
	jsr @r3
	mov r2,r4 ; r4 set to 0x8C342C00
	mov.l @r14,r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt loc_8c18BEC4
	mov.l @(loc_8c18BEC0,pc),r2 ; r2 set to 0x8C342B90
	mov.l @r14,r3 ; r3 ??? bc r14 is ???
	bra loc_8c18BECA
	mov.l r3,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18BE54:
	#data 0x8C342C10
loc_8c18BE58:
	#data loc_8c18BDE6
loc_8c18BE5C:
	#data loc_8c18BF30
loc_8c18BE60:
	#data loc_8c18BFA8
loc_8c18BE64:
	#data bank19.loc_8c19F0BA
loc_8c18BE68:
	#data 0x8C342C20
loc_8c18BE6C:
	#data bank1c.loc_8c1c9848
loc_8c18BE70:
	#data bank19.loc_8c19FF44
loc_8c18BE74:
	#data bank1a.loc_8c1a0B50
loc_8c18BE78:
	#data bank19.loc_8c199284
loc_8c18BE7C:
	#data bank1a.loc_8c1a21DE
loc_8c18BE80:
	#data bank1a.loc_8c1a024E
loc_8c18BE84:
	#data bank1a.loc_8c1a21FE
loc_8c18BE88:
	#data bank12.loc_8c1291DC
loc_8c18BE8C:
	#data 0x8C342B98
loc_8c18BE90:
	#data bank1a.loc_8c1a0416
loc_8c18BE94:
	#data bank1a.loc_8c1a0220
loc_8c18BE98:
	#data 0x8C342B94
loc_8c18BE9C:
	#data bank1a.loc_8c1a00FC
loc_8c18BEA0:
	#data 0x8C342BA0
loc_8c18BEA4:
	#data 0x8C342BA4
loc_8c18BEA8:
	#data 0x8C347A30
loc_8c18BEAC:
	#data 0x8C342C1C
loc_8c18BEB0:
	#data bank12.loc_8c129728
loc_8c18BEB4:
	#data 0x8C342B9C
loc_8c18BEB8:
	#data 0x8C342C00
loc_8c18BEBC:
	#data bank1a.loc_8c1a13F0
loc_8c18BEC0:
	#data 0x8C342B90

;==============================================
loc_8c18BEC4:
	mov.w @(loc_8c18BF6E,pc),r0 ; r0 set to 0x200
	bra loc_8c18BF22
	nop

loc_8c18BECA:
	mov.l @(loc_8c18BF70,pc),r3 ; r3 set to 0x8C1A13F8
	jsr @r3
	mov.l @r14,r4
	mov.l @(loc_8c18BF74,pc),r2 ; r2 set to 0x8C1A00A4
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c18BEE8
	mov.l r13,@r12
	mov.l r13,@r14
	mov.l @(loc_8c18BF78,pc),r2 ; r2 set to 0x8C342B90
	mov.l r13,@r2 ; r2 ??? bc r13 is ???
	bra loc_8c18BF22
	mov 0x40,r0

loc_8c18bee8:
	mov.l @(loc_8c18bf7c,pc),r3
	jsr @r3
	nop 
	mov.l @(loc_8c18bf80,pc),r2
	jsr @r2
	nop 
	bsr loc_8c18c14e
	nop 
	mov.l @r14,r2
	mov 0x41,r0
	mov.l @(0x0C,r2),r3
	mov.b r13,@(r0,r3) 
	mov.l @r14,r3
	mov 0x42,r0
	mov.l @(0x0C,r3),r2
	mov.b r13,@(r0,r2) 
	mov 0xFF,r3
	mov.l r3,@r15
	mov.l @r11,r2
	mov.l @(0x10,r2),r3
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c18bf88,pc),r2
	mov.l @(loc_8c18bf84,pc),r5
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c18bf8c,pc),r3
	mov 0x00,r0
	mov.b r13,@r3

loc_8c18BF22:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18BF30:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c18BF90,pc),r3 ; r3 set to 0x8C1A024A
	jsr @r3
	nop
	mov.l @(loc_8c18BF94,pc),r2 ; r2 set to 0x8C342BA0
	mov 0x00,r14 ; r14 set to 0x00
	mov r14,r5 ; r5 set to 0x00
	mov.l r14,@r2 ; r2 ??
	mov.l @(loc_8c18BF98,pc),r3 ; r3 set to 0x8C342B9C
	mov.l r14,@r3 ; r3 ??
	mov.l @(loc_8c18BF78,pc),r1 ; r1 set to 0x8C342B90
	mov.l r14,@r1 ; r1 ??
	mov.l @(loc_8c18BF88,pc),r2 ; r2 set to 0x8C1A0294
	jsr @r2
	mov r14,r4 ; r4 set to 0x00
	mov.l @(loc_8c18BF9C,pc),r3 ; r3 set to 0x8C1A025C
	mov r14,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4 ; r4 set to 0x00
	mov.l @(loc_8c18BFA0,pc),r2 ; r2 set to 0x8C1A00EE
	jsr @r2
	nop
	bsr loc_8c18C194
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c18BFA4,pc),r2 ; r2 set to 0x8C342C20
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r14,@r2 ; r2 ??
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18BF6E:
	#data 0x0200
	#align4

loc_8c18BF70:
	#data bank1a.loc_8c1a13F8
loc_8c18BF74:
	#data bank1a.loc_8c1a00A4
loc_8c18BF78:
	#data 0x8C342B90
loc_8c18BF7C:
	#data bank1a.loc_8c1a21C4
loc_8c18BF80:
	#data bank1a.loc_8c1a0244
loc_8c18BF84:
	#data loc_8c18BD6C
loc_8c18BF88:
	#data bank1a.loc_8c1a0294
loc_8c18BF8C:
	#data bank1c.loc_8c1c984C
loc_8c18BF90:
	#data bank1a.loc_8c1a024A
loc_8c18BF94:
	#data 0x8C342BA0
loc_8c18BF98:
	#data 0x8C342B9C
loc_8c18BF9C:
	#data bank1a.loc_8c1a025C
loc_8c18BFA0:
	#data bank1a.loc_8c1a00EE
loc_8c18BFA4:
	#data 0x8C342C20

;==============================================
loc_8c18BFA8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov r4,r0
	nop 
	mov.b @(0x3,r0),r0
	tst 0x80,r0
	mov r4,r0
	nop 
	mov.b @(0x3,r0),r0
	tst 0x40,r0
	mov r4,r0
	nop 
	mov.b @(0x3,r0),r0
	tst 0x20,r0
	bt/s loc_8c18bfde
	mov r4,r14
	mov.l @(0x224,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bt loc_8c18bfde
	mov.l @(0x220,PC),r0
	mov.l @r0,r1
	mov.l @(0xC,r1),r2
	jsr @r2
	nop 
	bsr loc_8c18c0ac
	mov r0,r4

loc_8c18BFDE:
	mov r14,r0
	nop 
	mov.b @(0x3,r0),r0
	tst 0x10,r0
	mov r14,r0
	nop 
	mov.b @(0x3,r0),r0
	mov.l @(0x208,PC),r5
	tst 0x08,r0
	mov r14,r0
	nop 
	mov.b @(0x3,r0),r0
	tst 0x04,r0
	bt/s loc_8c18c004
	mov 0x01,r4
	mov.l @r5,r1
	mov 0x58,r0
	mov.l @(0x8,r1),r3
	mov.b r4,@(r0,r3)

loc_8c18C004:
	mov r14,r0
	nop 
	mov.b @(0x3,r0),r0
	tst 0x02,r0
	bt loc_8c18c016
	mov.l @r5,r1
	mov 0x59,r0
	mov.l @(0x8,r1),r3
	mov.b r4,@(r0,r3)

loc_8c18C016:
	mov r14,r0
	nop 
	mov.b @(0x3,r0),r0
	tst 0x01,r0
	bt loc_8c18c024
	mov.l @(0x1CC,PC),r2
	mov.b r4,@r2

loc_8c18C024:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18C02A:
	mov.l @(0x1D0,PC),r1
	mov.l @r1,r3
	tst r3,r3
	bf loc_8c18c038
	mov.l @r1,r3
	add 0x01,r3
	mov.l r3,@r1

loc_8c18C038:
	mov.l @(0x4,r4),r1
	tst r1,r1
	bt loc_8c18c046
	mov.l @(0x1B0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c18c056

loc_8c18C046:
	mov.l @(0x1B8,PC),r1
	mov 0x01,r3
	mov 0x00,r2
	mov.l r2,@r1
	mov.l @(0x1B4,PC),r0
	mov.l r3,@r0
	rts 
	mov r1,r0

;==============================================
loc_8c18C056:
	mov.l @(0x19C,PC),r3
	mov.l @r3,r0
	mov.l @r0,r0
	jmp @r0
	nop 
	rts 
	nop 

;==============================================
loc_8c18C064:
	mov.l @(0x1A0,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c18c072
	mov.l @r2,r3
	add 0x01,r3
	mov.l r3,@r2

loc_8c18C072:
	mov.l @(0x17C,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bf loc_8c18c088
	mov.l @(0x190,PC),r3
	mov 0x00,r4
	mov.l r4,@r3
	mov.l @(0x18C,PC),r1
	mov.l r4,@r1
	rts 
	mov r3,r0

;==============================================
loc_8c18C088:
	mov.l @(0x168,PC),r3
	mov.l @r3,r0
	mov.l @(0x4,r0),r0
	jmp @r0
	nop 

;==============================================
;unused?
loc_8c18c092:
	rts 
	nop 

;==============================================
loc_8c18C096:
	mov.l @(loc_8c18C1F0,pc),r2 ; r2 set to 0x8C342C20
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c18C0A8
	mov.l @(loc_8c18C1F4,pc),r2 ; r2 set to 0x8C342B94
	mov.l @r2,r3
	mov.l @(0x08,r3),r1
	jmp @r1
	nop

loc_8c18C0A8:
	rts
	nop

;==============================================
loc_8c18C0AC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r5
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r4
	add 0x08,r4
	mov r4,r3
	mov.l r4,@(0x4,r4)
	mov.b r5,@r3
	mov.l @(0x14C,PC),r13
	mov.b @r14,r3
	mov.b @r13,r2
	mov.l @(0x12C,PC),r12
	cmp/eq r2,r3
	bt loc_8c18c0fe
	mov r15,r4
	mov r4,r2
	mov.l r4,@(0x4,r4)
	mov.b r5,@r2
	mov r15,r5
	mov.b @r14,r2
	mov.b r2,@r13
	mov.b @r14,r2
	mov.l @(0x4,r15),r3
	mov.b r2,@r3
	mov.l @(0x130,PC),r3
	jsr @r3
	mov.l @r12,r4
	mov r15,r2
	add 0x08,r2
	mov.b @r2,r0
	mov r15,r5
	add 0x08,r5
	or 0x40,r0
	mov.b r0,@r2
	mov.l @(0x120,PC),r3
	jsr @r3
	mov.l @r12,r4

loc_8c18C0FE:
	mov.b @(0x1,r14),r0
	mov r0,r3
	mov.b @(0x1,r13),r0
	cmp/eq r0,r3
	bt loc_8c18c12a
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r13)
	mov.b @(0x1,r14),r0
	mov.l @(0x110,PC),r3
	mov r0,r5
	jsr @r3
	mov.l @r12,r4
	mov r15,r2
	add 0x08,r2
	mov.b @r2,r0
	mov r15,r5
	add 0x08,r5
	or 0x80,r0
	mov.b r0,@r2
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov.l @r12,r4

loc_8c18C12A:
	mov.w @(0x2,r14),r0
	mov r0,r3
	mov.w @(0x2,r13),r0
	cmp/eq r0,r3
	bt loc_8c18c142
	mov.w @(0x2,r14),r0
	mov.w r0,@(0x2,r13)
	mov.w @(0x2,r14),r0
	mov.l @(0xE8,PC),r3
	mov r0,r5
	jsr @r3
	mov.l @r12,r4

loc_8c18C142:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18C14E:
	mov.l @(0xD8,PC),r2
	sts.l pr,@-r15
	mov.b @r2,r3
	tst r3,r3
	add 0xEC,r15
	bf loc_8c18c18c
	mov.l @(0xD0,PC),r3
	mov r15,r4
	jsr @r3
	add 0x04,r4
	mov.w r0,@(0x8,r15)
	extu.w r0,r6
	mov.l @(0xC8,PC),r5
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov.l @(0x4,r15),r4
	mov.l @(0xC8,PC),r2
	mov r15,r4
	jsr @r2
	add 0x0C,r4
	mov.l @(0xC8,PC),r4
	mov r15,r5
	mov.l @(0xC0,PC),r6
	bsr loc_8c18c1cc
	add 0x0C,r5
	mov.l @(0xC0,PC),r2
	jsr @r2
	mov r15,r4
	mov.l @(0xB4,PC),r5
	bsr loc_8c18c2d6
	mov.l @r15,r4

loc_8c18C18C:
	add 0x14,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c18C194:
	sts.l pr,@-r15
	mov.l @(loc_8c18C22C,pc),r3 ; r3 set to 0x8C199706
	add 0xF4,r15
	mov r15,r4
	jsr @r3
	add 0x04,r4
	mov.w r0,@(0x08,r15)
	extu.w r0,r6
	mov.l @(loc_8c18C230,pc),r4 ; r4 set to 0x8C342C2E
	mov.l @(loc_8c18C234,pc),r3 ; r3 set to 0x8C129668
	jsr @r3
	mov.l @(0x04,r15),r5
	mov.l @(loc_8c18C238,pc),r2 ; r2 set to 0x8C1A0384
	mov.l @(loc_8c18C240,pc),r4 ; r4 set to 0x8C342C26
	jsr @r2
	nop
	mov.l @(loc_8c18C244,pc),r3 ; r3 set to 0x8C19970E
	jsr @r3
	mov r15,r4 ; r4 ??? bc r15 is ???
	mov.l @(loc_8c18C234,pc),r3 ; r3 set to 0x8C129668
	mov 0x04,r6 ; r6 set to 0x04
	mov.l @(loc_8c18C23C,pc),r4 ; r4 set to 0x8C342C21
	jsr @r3
	mov.l @r15,r5
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c18C1CC:
	mov.l r14,@-r15
	mov 0xFF,r14
	mov.b @(0x6,r4),r0
	add 0xFC,r15
	mov r0,r3
	mov.b @(0x6,r5),r0
	sub r3,r0
	mov.b r0,@(0x3,r15)
	exts.b r0,r0
	cmp/pz r0
	bt/s loc_8c18c248
	mov 0x00,r7
	mov.b @(0x3,r15),r0
	add 0x3C,r0
	mov.b r0,@(0x3,r15)
	mov r14,r0
	bra loc_8c18c24e
	mov.b r0,@(0x2,r15)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18C1F0:
	#data 0x8C342C20
loc_8c18C1F4:
	#data 0x8C342B94
loc_8c18C1F8:
	#data 0x8C342B90
loc_8c18C1Fc:
	#data 0x8C343408
loc_8c18C200:
	#data 0x8C343400
loc_8c18C204:
	#data 0x8C343404
loc_8c18C208:
	#data 0x8C343414
loc_8c18C20c:
	#data 0x8C34340C
loc_8c18C210:
	#data 0x8C343410
loc_8c18C214:
	#data 0x8C342C1C
loc_8c18C218:
	#data bank1a.loc_8c1a1BEA
loc_8c18C21C:
	#data bank1a.loc_8c1a2020
loc_8c18C220:
	#data bank1a.loc_8c1a1D3A
loc_8c18C224:
	#data bank1a.loc_8c1a1DB2
loc_8c18C228:
	#data bank1c.loc_8c1c984C
loc_8c18C22C:
	#data bank19.loc_8c199706
loc_8c18C230:
	#data 0x8C342C2E
loc_8c18C234:
	#data bank12.loc_8c129668
loc_8c18C238:
	#data bank1a.loc_8c1a0384
loc_8c18C23C:
	#data 0x8C342C21
loc_8c18C240:
	#data 0x8C342C26
loc_8c18C244:
	#data bank19.loc_8c19970E

;==============================================
loc_8c18C248:
	mov r7,r0
	nop 
	mov.b r0,@(0x2,r15)

loc_8c18C24E:
	mov.b @(0x5,r5),r0
	mov 0x05,r2
	add r4,r2
	mov r0,r3
	mov.b @(0x2,r15),r0
	mov.b @r2,r2
	add r3,r0
	sub r2,r0
	mov.b r0,@(0x2,r15)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c18c272
	mov.b @(0x2,r15),r0
	add 0x3C,r0
	mov.b r0,@(0x2,r15)
	mov r14,r0
	bra loc_8c18c278
	mov.b r0,@(0x1,r15)

loc_8c18C272:
	mov r7,r0
	nop 
	mov.b r0,@(0x1,r15)

loc_8c18C278:
	mov.b @(0x4,r5),r0
	mov 0x04,r2
	add r4,r2
	mov r0,r3
	mov.b @(0x1,r15),r0
	mov.b @r2,r2
	add r3,r0
	sub r2,r0
	mov.b r0,@(0x1,r15)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c18c29a
	mov.b @(0x1,r15),r0
	add 0x18,r0
	mov.b r0,@(0x1,r15)
	bra loc_8c18c29c
	mov.b r14,@r15

loc_8c18C29A:
	mov.b r7,@r15

loc_8c18C29C:
	mov.b @r15,r3
	mov.b @(0x3,r5),r0
	add r3,r0
	mov r0,r2
	mov.b @(0x3,r4),r0
	sub r0,r2
	mov.b r2,@r15
	mov.b @(0x3,r15),r0
	mov r0,r3
	mov.b @(0x3,r6),r0
	add r3,r0
	mov.b r0,@(0x3,r6)
	mov.b @(0x2,r15),r0
	mov r0,r3
	mov.b @(0x2,r6),r0
	add r3,r0
	mov.b r0,@(0x2,r6)
	mov.b @(0x1,r15),r0
	mov r0,r3
	mov.b @(0x1,r6),r0
	add r3,r0
	mov.b r0,@(0x1,r6)
	mov.b @r6,r2
	mov.b @r15,r3
	add 0x04,r15
	add r3,r2
	mov.b r2,@r6
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18C2D6:
	mov.b @r5,r1
	mov.b r1,@r4
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x3,r5),r0
	rts 
	mov.b r0,@(0x3,r4)

;==============================================
loc_8c18C2E8:
	sts.l pr,@-r15
	mov.l @(loc_8c18C308,pc),r3 ; r3 set to 0x8C1A278C
	mov.l @(loc_8c18C304,pc),r4 ; r4 set to 0x8C342BA4
	jsr @r3
	nop
	mov.l @(loc_8c18C310,pc),r2 ; r2 set to 0x8C1A13E2
	mov.l @(loc_8c18C30C,pc),r4 ; r4 set to 0x8C342C00
	jmp @r2
	lds.l @r15+,pr

loc_8c18C2FA:
	mov.l @(loc_8c18C314,pc),r3 ; r3 set to 0x8C1A281C
	mov.l @(loc_8c18C304,pc),r4 ; r4 set to 0x8C342BA4
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18C304:
	#data 0x8C342BA4
loc_8c18C308:
	#data bank1a.loc_8c1a278C
loc_8c18C30C:
	#data 0x8C342C00
loc_8c18C310:
	#data bank1a.loc_8c1a13E2
loc_8c18C314:
	#data bank1a.loc_8c1a281C
	#align16

;==============================================
loc_8c18C320:
	mov.l @(loc_8c18C340,pc),r3 ; r3 set to 0xA05F8000
	add r3,r4
	mov.l r5,@r4
	rts
	mov 0x01,r0

;==============================================
loc_8c18C32A:
	mov.l @(loc_8c18C340,pc),r0 ; r0 set to 0xA05F8000
	rts
	mov.l @(r0,r4),r0

;==============================================
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18C340:
	#data 0xA05F8000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18C360:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r11
	mov r11,r3
	mov 0x02,r4
	mov r5,r13
	tst r4,r3
	mov r6,r12
	bt/s loc_8c18c384
	mov 0x00,r14
	mov r4,r14

loc_8c18C384:
	mov.l @(0xA0,PC),r3
	mov.l @(0x98,PC),r8
	mov.l @r3,r0
	mov.l @(0x98,PC),r9
	cmp/eq 0x01,r0
	bf/s loc_8c18c3b2
	mov 0x01,r10
	tst r10,r11
	bt loc_8c18c3a4
	mov r13,r5
	mov r12,r6
	mov 0x00,r7
	jsr @r8
	mov r14,r4
	bra loc_8c18c3ae
	nop 

loc_8c18C3A4:
	mov r13,r5
	mov r12,r6
	mov 0x00,r7
	jsr @r9
	mov r14,r4

loc_8c18C3AE:
	bra loc_8c18c402
	mov r0,r4

loc_8c18C3B2:
	mov.l @(0x78,PC),r1
	mov r15,r5
	add 0x04,r5
	jsr @r1
	mov r15,r4
	mov.l @r15,r2
	mov.l @(0x4,r15),r3
	cmp/hs r3,r2
	bt loc_8c18c3e4
	tst r10,r11
	bt loc_8c18c3d6
	mov r13,r5
	mov r12,r6
	mov 0x01,r7
	jsr @r8
	mov r14,r4
	bra loc_8c18c3e0
	nop 

loc_8c18C3D6:
	mov r13,r5
	mov r12,r6
	mov 0x01,r7
	jsr @r9
	mov r14,r4

loc_8c18C3E0:
	bra loc_8c18c402
	mov r0,r4

loc_8c18C3E4:
	tst r10,r11
	bt loc_8c18c3f6
	mov r13,r5
	mov r12,r6
	mov 0x00,r7
	jsr @r8
	mov r14,r4
	bra loc_8c18c400
	nop 

loc_8c18C3F6:
	mov r13,r5
	mov r12,r6
	mov 0x00,r7
	jsr @r9
	mov r14,r4

loc_8c18C400:
	mov r0,r4

loc_8c18C402:
	mov r4,r0
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
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18C420:
	#data bank1a.loc_8c1a873E
loc_8c18C424:
	#data bank1a.loc_8c1a860E
loc_8c18C428:
	#data bank1c.loc_8c1c9B20
loc_8c18C42C:
	#data bank1a.loc_8c1a8C00

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18C440:
	sts.l pr,@-r15
	add 0xE4,r15
	mov.l @(loc_8c18C5C0,pc),r2 ; r2 set to 0x8C1A8A60
	mov.l r4,@(0x04,r15)
	mov r15,r4
	mov.l r6,@r15
	jsr @r2
	add 0x08,r4
	mov.l @(0x04,r15),r0
	tst 0x01,r0
	bt loc_8c18C478
	mov 0x14,r3 ; r3 set to 0x14
	mov r15,r2 ; r2 ??? bc r15 is ???
	sub r3,r15
	add 0x08,r2
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.l @(0x04,r2),r1
	mov.l r3,@r15
	mov.l r1,@(0x04,r15)
	mov.l @(0x08,r2),r3
	mov.l @(0x0C,r2),r1
	mov.l r3,@(0x08,r15)
	mov.l r1,@(0x0C,r15)
	mov.l @(0x10,r2),r3
	mov.l r3,@(0x10,r15)
	mov.l @(0x14,r15),r5
	bra loc_8c18C498
	mov 0x01,r4

loc_8c18C478:
	mov 0x14,r2 ; r2 set to 0x14
	mov r15,r3
	sub r2,r15
	add 0x08,r3
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(0x04,r3),r1
	mov.l r2,@r15
	mov.l r1,@(0x04,r15)
	mov.l @(0x08,r3),r2
	mov.l @(0x0C,r3),r1
	mov.l r2,@(0x08,r15)
	mov.l r1,@(0x0C,r15)
	mov.l @(0x10,r3),r2
	mov.l r2,@(0x10,r15)
	mov.l @(0x14,r15),r5

loc_8c18C498:
	bsr loc_8c18C4A4
	nop
	add 0x30,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c18c4a4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c18c5c4,pc),r3
	mov r4,r8
	mov 0x00,r13
	mov r15,r12
	mov.l r5,@(0x08,r15) 
	mov r13,r14
	mov.l @r3,r4
	tst r4,r4
	bt/s loc_8c18c50a
	add 0x2C,r12
	mov.l @(loc_8C18C5C8,pc),r7

loc_8c18c4cc:
	mov.w @r4,r3
	mov.l @r12,r2
	extu.w r3,r3
	and r7,r3
	cmp/eq r2,r3
	bf loc_8c18c500
	mov.l @(0x10,r12),r6
	mov 0x00,r2
	cmp/hs r6,r2
	bt/s loc_8c18c500
	mov r13,r5

loc_8c18c4e2:
	mov r4,r3
	mov r5,r1
	add 0x0C,r3
	shll2 r1
	add r3,r1
	mov.l @r1,r2
	tst r2,r2
	bf loc_8c18c4fa
	mov r5,r11
	mov r4,r14
	mov r13,r4
	mov r6,r5

loc_8c18c4fa:
	add 0x01,r5
	cmp/hs r6,r5
	bf loc_8c18c4e2

loc_8c18c500:
	tst r14,r14
	bf loc_8c18c506
	mov.l @(0x04,r4),r4

loc_8c18c506:
	tst r4,r4
	bf loc_8c18c4cc

loc_8c18c50a:
	tst r14,r14
	bt loc_8c18c512
	bra loc_8c18c610
	nop 

loc_8c18c512:
	bsr loc_8c18c64a
	nop 
	mov r0,r14
	tst r14,r14
	bf loc_8c18c520
	bra loc_8c18c60c
	nop 

loc_8c18c520:
	mov r14,r4
	add 0x0C,r4

loc_8c18c524:
	mov r14,r3
	mov.l r13,@r4
	add 0x4C,r3
	add 0x04,r4
	cmp/hs r3,r4
	bf loc_8c18c524
	mov.l @(loc_8c18c5c4,pc),r4
	mov r13,r11
	bsr loc_8c18c68c
	mov r14,r5
	mov.w @r14,r2
	mov.l @r12,r3
	mov.l @(loc_8c18c5d0,pc),r10
	or r3,r2
	mov.l @(loc_8c18c5d4,pc),r3
	mov.l @(loc_8c18c5cc,pc),r9
	mov.w r2,@r14
	mov.l @r3,r0
	cmp/eq 0x01,r0 
	bf/s loc_8c18c572
	mov.l @(0x0C,r12),r13
	tst r8,r8
	bt loc_8c18c562
	mov r14,r6
	mov r13,r5
	add 0x08,r6
	mov 0x00,r7
	jsr @r9
	mov 0x04,r4
	bra loc_8c18c56e
	nop 

loc_8c18c562:
	mov r14,r6
	mov r13,r5
	add 0x08,r6
	mov 0x00,r7
	jsr @r10
	mov 0x04,r4

loc_8c18c56e:
	bra loc_8c18c602
	mov r0,r4

loc_8c18c572:
	mov.l @(loc_8c18c5d8,pc),r1
	mov r15,r5
	add 0x04,r5
	jsr @r1
	mov r15,r4
	mov.l @r15,r2
	mov.l @(0x04,r15),r3
	cmp/hs r3,r2
	bt loc_8c18c5e0
	tst r8,r8
	bt loc_8c18c598
	mov r14,r6
	mov r13,r5
	add 0x08,r6
	mov 0x01,r7
	jsr @r9
	mov 0x04,r4
	bra loc_8c18c5a4
	nop 

loc_8c18c598:
	mov r14,r6
	mov r13,r5
	add 0x08,r6
	mov 0x01,r7
	jsr @r10
	mov 0x04,r4

loc_8c18c5a4:
	bra loc_8c18c602
	mov r0,r4

;==============================================
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18c5c0:
	#data bank1a.loc_8C1A8A60
loc_8c18c5c4:
	#data bank1c.loc_8c1c9b64
loc_8C18C5C8:
	#data 0x0000F000
loc_8c18c5cc:
	#data bank1a.loc_8c1a873e
loc_8c18c5d0:
	#data bank1a.loc_8c1a860e
loc_8c18c5d4:
	#data bank1c.loc_8c1c9b20
loc_8c18c5d8:
	#data bank1a.loc_8c1a8c00
	#align16_nop

;==============================================
loc_8c18c5e0:
	tst r8,r8
	bt loc_8c18c5f4
	mov r14,r6
	mov r13,r5
	add 0x08,r6
	mov 0x00,r7
	jsr @r9
	mov 0x04,r4
	bra loc_8c18c600
	nop 

loc_8c18c5f4:
	mov r14,r6
	mov r13,r5
	add 0x08,r6
	mov 0x00,r7
	jsr @r10
	mov 0x04,r4

loc_8c18c600:
	mov r0,r4

loc_8c18c602:
	tst r4,r4
	bt loc_8c18c610
	mov.l @(loc_8c18c6a0,pc),r3
	jsr @r3
	mov r14,r4

loc_8c18c60c:
	bra loc_8c18c636
	mov 0x03,r0

loc_8c18c610:
	mov.l @(0x04,r12),r3
	mov.l @(0x08,r14),r0
	shlr2 r3
	mov.l @(0x08,r15),r2
	mul.l r3,r11
	shll2 r11
	sts macl,r3
	shll2 r3
	add r0,r3
	mov.l r3,@r2
	mov r14,r3
	mov.l @(0x08,r15),r2
	add 0x0C,r3
	add r3,r11
	mov.l r2,@r11
	mov.w @r14,r0
	or 0x02,r0 
	mov.w r0,@r14
	mov 0x00,r0

loc_8c18c636:
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

;==============================================
loc_8c18c64a:
	mov.l @(loc_8c18c6a4,pc),r4
	mov 0x00,r5
	mov.l r14,@-r15
	mov r5,r3
	mov.l @(0x0C,r4),r14
	mov 0x01,r7
	cmp/hs r14,r3
	bt/s loc_8c18c686
	mov 0x4C,r6

loc_8c18c65c:
	mul.l r6,r5
	mov 0x48,r0
	mov.l @(r0,r4),r3
	sts macl,r1
	add r3,r1
	mov.w @r1,r2
	extu.w r2,r2
	tst r7,r2
	bf loc_8c18c680
	mul.l r6,r5
	mov.l @(r0,r4),r2
	sts macl,r14
	add r14,r2
	mov.w r7,@r2
	mov.l @(r0,r4),r0
	add r14,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18c680:
	add 0x01,r5
	cmp/hs r14,r5
	bf loc_8c18c65c

loc_8c18c686:
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18c68c:
	mov.l @r4,r3
	tst r3,r3
	bf loc_8c18c696
	bra loc_8c18c698
	mov 0x00,r3

loc_8c18c696:
	mov.l @r4,r3

loc_8c18c698:
	mov.l r3,@(0x04,r5) 
	rts 
	mov.l r5,@r4

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18c6a0:
	#data bank1a.loc_8c1a8b88
loc_8c18c6a4:
	#data bank1c.loc_8c1c9b20

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18C6C0:
	mov.l r14,@-r15
	mov r4,r0
	sts.l pr,@-r15
	mov.l @(loc_8c18C724,pc),r14 ; r14 set to 0x8C18C320
	cmp/eq 0x01,r0
	bf loc_8c18C6E2
	mov.l @(loc_8c18C728,pc),r2 ; r2 set to 0x8C343450
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFE
	mov.l @r2,r5
	and r3,r5
	jsr @r14
	mov 0x44,r4 ; r4 set to 0x44
	mov.l @(loc_8c18C72C,pc),r3 ; r3 set to 0x8C34348C
	mov.l @r3,r0
	or 0x08,r0
	bra loc_8c18C6F2
	mov r0,r5

loc_8c18C6E2:
	mov.l @(loc_8c18C728,pc),r2 ; r2 set to 0x8C343450
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFE
	mov.l @r2,r5
	and r3,r5
	jsr @r14
	mov 0x44,r4 ; r4 set to 0x44
	mov.l @(loc_8c18C72C,pc),r3 ; r3 set to 0x8C34348C
	mov.l @r3,r5

loc_8c18C6F2:
	mov.w @(loc_8c18C720,pc),r4 ; r4 set to 0xE8, r4 set to 0xE8
	jsr @r14
	nop
	mov.l @(loc_8c18C728,pc),r2 ; r2 set to 0x8C343450, r2 set to 0x8C343450
	mov.l @r2,r5
	jsr @r14
	mov 0x44,r4 ; r4 set to 0x44, r4 set to 0x44
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18C720:
	#data 0x00E8
	#align4

loc_8c18C724:
	#data loc_8c18C320
loc_8c18C728:
	#data 0x8C343450
loc_8c18C72C:
	#data 0x8C34348C

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18C740:
	add 0xFC,r15
	stc sr, r0
	mov.w @(loc_8c18C7A0,pc),r3 ; r3 set to 0xFF0F
	mov.l @(loc_8c18C7A4,pc),r7 ; r7 set to 0x8C343894
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov r4,r0
	mov r7,r2 ; r2 set to 0x8C343894
	shll2 r0
	mov r7,r3 ; r3 set to 0x8C343894
	add 0x30,r2 ; r2 set to 0x8C3438C4
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	add 0x30,r3 ; r3 set to 0x8C3438C4
	mov.l r5,@r2
	mov r7,r2 ; r2 set to 0x8C343894
	add r0,r3 ; r3 ??? bc r0 is ???
	add 0x30,r2 ; r2 set to 0x8C3438C4
	mov.l r6,@(0x0C,r3)
	mov 0x00,r3 ; r3 set to 0x00
	add r0,r2 ; r2 ??? bc r0 is ???
	mov.l r3,@(0x04,r2)
	mov r7,r2 ; r2 set to 0x8C343894
	add 0x30,r2 ; r2 set to 0x8C3438C4
	add r2,r0
	mov.w @(loc_8c18C7A0,pc),r2 ; r2 set to 0xFF0F
	mov.l r4,@(0x08,r0)
	mov.l @r15,r0
	stc sr, r3
	and 0x0F,r0
	shll2 r0
	and r2,r3 ; r3 ??
	shll2 r0
	or r3,r0
	ldc r0, sr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	add 0x04,r15


;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18C7A0:
	#data 0xFF0F
	#align4

loc_8c18C7A4:
	#data 0x8C343894

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18C7C0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r12
	tst r12,r12
	mov r4,r9
	mov r5,r10
	bf/s loc_8c18C7E4
	mov r7,r14
	mov.l @(loc_8c18C860,pc),r0 ; r0 set to 0xEEEE
	bra loc_8c18C8FA
	nop

loc_8c18C7E4:
	stc sr, r0
	mov 0x1F,r3 ; r3 set to 0x1F
	tst r9,r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	bt/s loc_8c18C7F8
	mov.l r0,@r15
	bra loc_8c18C8E4
	nop

loc_8c18C7F8:
	mov 0x1F,r1 ; r1 set to 0x1F
	tst r10,r1
	bt loc_8c18C802
	bra loc_8c18C8E4
	nop

loc_8c18C802:
	tst r0,r0
	bt loc_8c18C80A
	bra loc_8c18C8E4
	nop

loc_8c18C80A:
	mov.l @(loc_8c18C864,pc),r3 ; r3 set to 0x8C18F380
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c18C818
	bra loc_8c18C8E4
	nop

loc_8c18C818:
	mov 0xE0,r11 ; r11 set to 0xFFFFFFE0
	and r12,r11 ; r11 ??? bc r12 is ???
	tst r11,r11
	bt loc_8c18C8A4
	mov.l @(loc_8c18C86C,pc),r2 ; r2 set to 0x8C18DFA0
	mov.l @(loc_8c18C868,pc),r8 ; r8 set to 0x8C18DA80
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c18C83A

loc_8c18C82C:
	jsr @r8
	mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
	tst r0,r0
	bt/s loc_8c18C82C
	mov r0,r13
	bra loc_8c18C880
	nop

loc_8c18C83A:
	jsr @r8
	mov 0x01,r4 ; r4 set to 0x01
	tst r0,r0
	bf/s loc_8c18C880
	mov r0,r13
	mov.l @(loc_8c18C870,pc),r4 ; r4 set to 0xA4000000
	mov r12,r6
	mov.l @(loc_8c18C874,pc),r2 ; r2 set to 0x8C17A6E0
	mov r10,r5
	jsr @r2
	add r9,r4 ; r4 ??? bc r9 is ???
	tst r14,r14
	bt loc_8c18C8F8
	jsr @r14
	mov 0x00,r4 ; r4 set to 0x00
	bra loc_8c18C8F8
	nop

;==============================================
	#align16_nop
	#align4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18C860:
	#data 0x0000EEEE
loc_8c18C864:
	#data loc_8c18F380
loc_8c18C868:
	#data loc_8c18DA80
loc_8c18C86C:
	#data loc_8c18DFA0
loc_8c18C870:
	#data 0xA4000000
loc_8c18C874:
	#data bank17.loc_8c17A6E0

;==============================================
	#align16_nop


;==============================================
loc_8c18c880:
	mov.l @(loc_8c18c924,pc),r2
	mov r9,r5
	mov r11,r7
	mov r10,r6
	jsr @r2
	mov r13,r4
	tst r14,r14
	bt loc_8c18c898
	mov.l @(loc_8c18c928,pc),r2
	mov r14,r5
	jsr @r2
	mov r13,r4
	
loc_8c18c898:
	mov.l @(loc_8c18c92c,pc),r3
	jsr @r3
	mov r13,r4
	mov.l @(loc_8C18C930,pc),r2
	mov r0,r13
	mov.l r0,@r2
	
loc_8c18c8a4:
	mov 0x1F,r6
	and r12,r6
	tst r6,r6
	bt loc_8c18c8bc
	mov.l @(loc_8C18C934,pc),r3
	mov r9,r4
	mov.l @(loc_8c18c938,pc),r2
	mov r10,r5
	add r11,r5
	add r11,r4
	jsr @r2
	add r3,r4
	
loc_8c18c8bc:
	tst r14,r14
	bf loc_8c18c8f8
	mov.l @(loc_8c18c93c,pc),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c18c8f8
	mov.l @(loc_8c18c940,pc),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c18c8f8
	mov.w @(loc_8C18C920,pc),r14
	mov.l @(loc_8c18c944,pc),r12
	
loc_8c18c8d8:
	jsr @r12
	mov r13,r4
	cmp/eq r14,r0
	bf loc_8c18c8d8
	bra loc_8c18c8f8
	nop 
	
loc_8c18c8e4:
	mov.l @(0x4C,PC),r4
	mov r12,r6
	mov.l @(0x4C,PC),r3
	mov r10,r5
	jsr @r3
	add r9,r4
	tst r14,r14
	bt loc_8c18c8f8
	jsr @r14
	mov 0x00,r4

loc_8c18C8F8:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c18C8FA:
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
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18c920:
	#data 0x0101
	#align4

loc_8c18C924:
	#data loc_8c18FEE0
loc_8c18C928:
	#data loc_8c18FD60
loc_8c18C92C:
	#data loc_8c18FC20
loc_8c18c930:
	#data 0x8C343B18
loc_8c18c934:
	#data 0xA4000000
loc_8c18C938:
	#data bank17.loc_8c17A6E0
loc_8c18C93C:
	#data loc_8c18DFA0
loc_8c18C940:
	#data loc_8c18F380
loc_8c18C944:
	#data loc_8c18F3C0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18C960:
	sts.l pr,@-r15
	add 0xE4,r15
	mov.l @(0xDC,PC),r3
	mov r15,r5
	mov.l r4,@r15
	mov 0x18,r6
	mov.l @(0xD8,PC),r4
	add 0x04,r5
	mov.l r3,@(0x4,r15)
	mov.l @(0xD8,PC),r3
	mov.l r4,@(0x8,r15)
	mov.l r4,@(0xC,r15)
	mov.l r4,@(0x10,r15)
	mov.l r4,@(0x14,r15)
	mov.l r4,@(0x18,r15)
	jsr @r3
	mov.l @r15,r4
	add 0x1C,r15
	lds.l @r15+,pr
	rts 
	mov 0x18,r0

;==============================================
loc_8c18C98A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c18CA40,pc),r0 ; r0 set to 0xFC58
	add r0,r15
	mov r4,r3
	add 0x18,r3
	mov.l r3,@r15
	mov r4,r13
	mov.l @(0x04,r13),r2
	mov 0x00,r12 ; r12 set to 0x00
	mov.l @(0x08,r13),r3
	mov r12,r7 ; r7 set to 0x00
	mov.w @(loc_8c18CA42,pc),r9 ; r9 set to 0x108
	mul.l r3,r2
	mov.l @(loc_8c18CA48,pc),r10 ; r10 set to 0x80000000
	mov r12,r2 ; r2 set to 0x00
	add r15,r9 ; r9 ??? bc r15 is ???
	sts macl,r1
	mov.l r1,@(0x0C,r15)
	mov.l @(0x0C,r13),r3
	cmp/hs r3,r2
	bt/s loc_8c18CA76
	mov 0x54,r11 ; r11 set to 0x54

loc_8c18C9C4:
	mul.l r11,r7 ; r7 ??
	mov.l @r15,r0 ; r0 ??? bc r15 is ???
	mov r7,r3
	shll2 r3
	mov r12,r6 ; r6 set to 0x00
	mov r0,r2 ; r2 ??? bc r0 is ???
	add 0x30,r2
	shll r3
	sts macl,r14
	add r2,r3
	mov.l @r3,r1
	mov.l @(loc_8c18CA50,pc),r3 ; r3 set to 0x7F000000
	add r9,r14
	mov r1,r2
	mov r14,r4
	and r3,r2
	mov r4,r5
	mov.l r1,@(0x08,r15)
	add 0x18,r5
	mov.l r2,@r4
	mov r7,r2
	shll2 r2
	mov.l r12,@(0x04,r15)
	shll r2
	mov.l r2,@(0x10,r15)

loc_8c18C9F6:
	mov.l @(0x08,r15),r0
	neg r6,r3 ; r3 ??
	mov.l @(0x10,r15),r2
	mov 0x03,r8 ; r8 set to 0x03
	shld r3, r0
	mov.l @r15,r3
	and r0,r8 ; r8 ??? bc r0 is ???
	mov.l @(loc_8c18CA54,pc),r0 ; r0 set to 0x8C1C5A7C
	mov r3,r1
	add 0x30,r1
	add r2,r1
	mov.l @(0x04,r15),r3
	mov.l @(0x04,r1),r2
	mov r5,r4
	tst r8,r8
	add r3,r2
	mov r8,r3
	mov.l r2,@(0x04,r4)
	shll2 r3
	mov.l @(r0,r3),r2
	shll2 r2
	mov.l r2,@(0x08,r4)
	mov.l @(0x0C,r15),r3
	mov.l @(0x04,r15),r1
	mul.l r3,r2
	sts macl,r3
	add r3,r1
	bf/s loc_8c18CA60
	mov.l r1,@(0x04,r15)
	bra loc_8c18CA62
	mov.l r10,@r4

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18CA40:
	#data 0xFC58
loc_8c18CA42:
	#data 0x0108

	#align4
loc_8c18CA44:
	#data 0x10000000
loc_8c18CA48:
	#data 0x80000000
loc_8c18CA4C:
	#data bank1a.loc_8c1a4E20
loc_8c18CA50:
	#data 0x7F000000
loc_8c18CA54:
	#data bank1c.loc_8c1c5A7C

;==============================================
	#align16_nop

;==============================================
loc_8c18ca60:
	mov.l r12,@r4

loc_8c18ca62:
mov r14,r3
add 0x54,r3
	add 0x0C,r5
	cmp/hs r3,r5
	bf/s loc_8c18c9f6
	add 0x04,r6
	mov.l @(0x0C,r13),r3
	add 0x01,r7
	cmp/hs r3,r7
	bf loc_8c18c9c4

loc_8c18ca76:
	mov.l @r15,r1
	mov.l @(loc_8C18CB60,pc),r2
	mov.l @(0x0C,r1),r3
	mov.l r3,@(0x14,r15) 
	mov.l @r2,r0
	tst 0x80,r0 
	bt loc_8c18ca90
	mov.l @r15,r4
	bsr loc_8c18c960
	mov.l @(0x0C,r4),r4
	mov.l @(0x14,r15),r2
	add r0,r2
	mov.l r2,@(0x14,r15) 

loc_8c18ca90:
	mov.l @(0x04,r13),r3
	mov 0x00,r1
	mov r12,r8
	mov r15,r14
	mov.l r3,@(0x34,r15) 
	mov.l @(0x08,r13),r2
	mov.l r2,@(0x38,r15) 
	mov.l @(0x0C,r15),r3
	add 0xFF,r3
	mov.l r3,@(0x24,r15) 
	mov.l @(0x0C,r15),r2
	cmp/hs r2,r1
	bf/s loc_8c18cab0
	add 0x48,r14
	bra loc_8c18ccbc
	nop 

loc_8c18cab0:
	mov 0x40,r0
	mov.l r8,@(0x28,r15) 
	mov.l r12,@(0x3C,r15) 
	mov.l r12,@(r0,r15) 
	mov.l @(0x24,r15),r3
	cmp/eq r3,r8
	bf loc_8c18caca
	mov 0x40,r0
	mov r15,r1
	mov.l @(r0,r15),r0
	add 0x40,r1
	or 0x01,r0 
	mov.l r0,@r1

loc_8c18caca:
	mov.l @(0x14,r13),r3
	mov r15,r4
	jsr @r3
	add 0x28,r4
	mov.l @(0x2C,r15),r4
	mov 0x3F,r2
	mov.l @(0x30,r15),r5
	mov 0x3F,r3
	and r4,r2
	and r5,r3
	shll2 r2
	shll8 r3
	or r2,r3
	mov.l r3,@(0x10,r15) 
	mov.l @(0x34,r15),r2
	mul.l r5,r2
	mov 0x00,r2
	sts macl,r5
	add r4,r5
	mov.l r5,@(0x08,r15) 
	mov.l @(0x0C,r13),r3
	cmp/hs r3,r2
	bf/s loc_8c18cafe
	mov r12,r4
	bra loc_8c18cc7e
	nop 

loc_8c18cafe:
	mul.l r11,r4
	mov r4,r3
	shll r3
	mov r4,r2
	add r2,r3
	mov.l @(0x10,r15),r2
	shll2 r3
	sts macl,r5
	mul.l r11,r4
	shll r3
	mov r4,r7
	add r9,r5
	mov.l @r5,r1
	add r14,r3
	shll r7
	or r2,r1
	mov.l r1,@r3
	mov r4,r3
	sts macl,r6
	add r3,r7
	mov.l r12,@(0x04,r15) 
	shll2 r7
	shll r7
	add r9,r6
	add r14,r7
	add 0x18,r6
	add 0x04,r7

loc_8c18cb34:
	mov.l @(0x3C,r15),r0
	cmp/eq 0x01,r0 
	bt/s loc_8c18cb80
	mov r6,r5
	mov.l @r5,r2
	bra loc_8c18cb82
	mov.l r2,@r15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C18CB60:
	#data 0x8C343B04

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18cb80:
	mov.l r10,@r15

loc_8c18cb82:
	mov.l @(0x08,r15),r2
	mov.l @(0x08,r5),r3
	mov.l @(0x04,r5),r1
	mul.l r3,r2
	mov.l @r15,r0
	sts macl,r3
	add r1,r3
	or r0,r3
	mov.l r3,@r7
	mov 0x05,r3
	mov.l @(0x04,r15),r2
	add 0x04,r7
	add 0x01,r2
	cmp/ge r3,r2
	mov.l r2,@(0x04,r15) 
	bf/s loc_8c18cb34
	add 0x0C,r6
	mov r4,r5
	mov r13,r0
	shll2 r5
	add 0x48,r0
	shll r5
	mov.l @(r0,r5),r0
	tst 0x40,r0 
	bt/s loc_8c18cbcc
	mov r13,r2
	mov r4,r6
	shll r6
	mov r4,r3
	add r3,r6
	shll2 r6
	shll r6
	add r14,r6
	mov.l r6,@(0x20,r15) 
	add 0x04,r6
	mov.l @(0x0C,r6),r3
	mov.l r3,@(0x04,r6) 

loc_8c18cbcc:
	add 0x48,r2
	mov.w @(loc_8C18CCE0,pc),r3
	add r5,r2
	mov.l @r2,r1
	tst r3,r1
	bt/s loc_8c18cbf0
	mov r13,r3
	mov r4,r6
	shll r6
	mov r4,r2
	add r2,r6
	shll2 r6
	shll r6
	add r14,r6
	mov.l r6,@(0x1C,r15) 
	add 0x04,r6
	mov.l @(0x04,r6),r2
	mov.l r2,@(0x0C,r6) 

loc_8c18cbf0:
	add 0x48,r3
	mov.l @(loc_8C18CCE4,pc),r2
	add r5,r3
	mov.l @r3,r1
	tst r2,r1
	bt loc_8c18cc12
	mov r4,r6
	shll r6
	mov r4,r3
	add r3,r6
	shll2 r6
	shll r6
	add r14,r6
	mov.l r6,@(0x18,r15) 
	add 0x04,r6
	mov.l @(0x08,r6),r3
	mov.l r3,@(0x10,r6) 

loc_8c18cc12:
	cmp/pl r4
	bf loc_8c18cc72
	mov r13,r0
	add 0x48,r0
	mov.l @(r0,r5),r0
	tst 0x80,r0 
	bt loc_8c18cc42
	mov r4,r2
	mov r4,r1
	shll r2
	mov r4,r3
	add 0xFF,r1
	add r3,r2
	mov r1,r3
	shll2 r2
	shll r2
	shll r1
	add r3,r1
	shll2 r1
	shll r1
	add r14,r1
	mov.l @(0x08,r1),r0
	add r14,r2
	mov.l r0,@(0x08,r2) 

loc_8c18cc42:
	mov r13,r3
	add 0x48,r3
	add r3,r5
	mov.l @(loc_8C18CCE8,pc),r3
	mov.l @r5,r2
	tst r3,r2
	bt loc_8c18cc72
	mov r4,r0
	mov r4,r1
	shll r0
	mov r4,r2
	add 0xFF,r1
	add r2,r0
	mov r1,r2
	shll2 r0
	shll r0
	shll r1
	add r2,r1
	shll2 r1
	shll r1
	add r14,r1
	mov.l @(0x10,r1),r2
	add r14,r0
	mov.l r2,@(0x10,r0) 

loc_8c18cc72:
	mov.l @(0x0C,r13),r3
	add 0x01,r4
	cmp/hs r3,r4
	bt loc_8c18cc7e
	bra loc_8c18cafe
	nop 

loc_8c18cc7e:
	mov r15,r1
	add 0x40,r1
	mov.l @r1,r0
	tst 0x01,r0 
	bf loc_8c18ccbc
	mov.l @(0x0C,r13),r6
	mov r14,r5
	mov.l r6,@r15
	mov r6,r3
	mov.l @r15,r4
	shll r6
	add r3,r6
	mov.l @(0x14,r15),r2
	mul.l r4,r8
	shll2 r6
	shll r6
	sts macl,r4
	mov r4,r3
	shll r4
	add r3,r4
	mov.l @(loc_8c18ccec,pc),r3
	shll2 r4
	shll r4
	jsr @r3
	add r2,r4
	mov.l @(0x0C,r15),r2
	add 0x01,r8
	cmp/hs r2,r8
	bt loc_8c18ccbc
	bra loc_8c18cab0
	nop 

loc_8c18ccbc:
	mov.l @(0x0C,r13),r3
	add 0xFF,r3
	mov r3,r0
	shll r3
	add r0,r3
	shll2 r3
	shll r3
	add r14,r3
	mov.l @r3,r2
	or r10,r2
	mov.l r2,@r3
	mov.l @(0x0C,r13),r6
	mov r6,r3
	mov.l r6,@r15
	shll r6
	bra loc_8c18cd00
	nop 

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C18CCE0:
	#data 0x4000
	#align4

loc_8C18CCE4:
	#data 0x00040000
loc_8C18CCE8:
	#data 0x00008000
loc_8c18ccec:
	#data bank1a.loc_8c1a4e20

;==============================================
	#data 0x0009
	#data 0x0009
	#data 0x0009
	#align16_nop

;==============================================
loc_8c18cd00:
	add r3,r6
	mov.l @(0x28,r15),r2
	mov.l @r15,r3
	shll2 r6
	mov.l @(0x14,r15),r1
	shll r6
	mul.l r3,r2
	mov r14,r5
	sts macl,r4
	mov r4,r2
	shll r4
	add r2,r4
	mov.l @(loc_8c18cd44,pc),r2
	shll2 r4
	shll r4
	jsr @r2
	add r1,r4
	mov.w @(loc_8C18CD40,pc),r1
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
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C18CD40:
	#data 0x03A8
	#align4

loc_8c18cd44:
	#data bank1a.loc_8c1a4e20

;==============================================
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18cd60:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r4,r9
	tst r0,r0
	bt loc_8c18ce2e
	mov r9,r6
	mov.l @(0xC,r6),r4
	mov r9,r5
	tst r4,r4
	bt/s loc_8c18ce2e
	add 0x18,r5
	mov 0x08,r2
	cmp/hi r2,r4
	bt loc_8c18ce2e
	mov.l @(0x8,r6),r3
	mov 0x00,r10
	mov.l @(0x4,r6),r2
	mov r10,r13
	mov.l @(0xC,r6),r8
	mov r15,r12
	mul.l r3,r2
	mov.l @(0xA4,PC),r7
	mov r13,r2
	mov r10,r11
	add 0x04,r12
	sts macl,r4
	mul.l r8,r4
	shll2 r4
	mov.l r4,@r15
	sts macl,r8
	mov r8,r3
	shll r8
	add r3,r8
	mov.l @(0xC,r6),r3
	shll2 r8
	shll r8
	cmp/hs r3,r2
	bt/s loc_8c18ce24
	mov 0x03,r4

loc_8c18cdc0:
	mov r13,r14
	mov r6,r3
	shll2 r14
	add 0x48,r3
	shll r14
	add r3,r14
	mov.l @r14,r14
	mov r14,r0
	shlr2 r0
	shlr2 r0
	and r4,r0
	shll2 r0
	mov.l @(r0,r7),r2
	mov r14,r0
	shlr8 r0
	and r4,r0
	shll2 r0
	mov.l @(r0,r7),r1
	mov r14,r0
	shlr8 r0
	shlr2 r0
	shlr2 r0
	and r4,r0
	shll2 r0
	add r1,r2
	mov.l @(r0,r7),r1
	mov r14,r0
	shlr16 r0
	and r4,r0
	shll2 r0
	add r1,r2
	mov.l @(r0,r7),r1
	mov r14,r0
	and r4,r0
	shll2 r0
	add r1,r2
	mov.l @(r0,r7),r3
	mov r2,r14
	mov.l @r15,r2
	add r3,r14
	mov r13,r0
	mul.l r2,r14
	add 0x01,r13
	shll2 r0
	sts macl,r14
	mov.l r14,@(r0,r12)
	mov.l @(0xC,r6),r3
	cmp/hs r3,r13
	bf/s loc_8c18cdc0
	add r14,r11

loc_8c18ce24:
	mov.l @(0x4,r5),r3
	mov r11,r1
	add r8,r1
	cmp/hi r3,r1
	bf loc_8c18ce60


loc_8c18ce2e:
	mov.l @(0x18,PC),r0
	bra loc_8c18ceda
	nop 

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18ce40:
	#data 0x8C1A7FC0
loc_8c18ce44:
	#data 0x8C1C5A7C
loc_8c18ce48:
	#data 0x0000EEEE

;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18ce60:
	mov.l @(0x4,r5),r4
	mov.l @(0xC,r5),r2
	sub r11,r4
	mov.w @(0x96,PC),r7
	sub r8,r4
	shlr2 r4
	mov r4,r3
	shll r4
	sub r11,r2
	add r3,r4
	mov 0x80,r3
	add r7,r2
	and r3,r2
	mov.l @(0x88,PC),r3
	mov.l r2,@(0x10,r5)
	mov 0xE0,r2
	mov.l @r5,r1
	add r1,r4
	and r2,r4
	mov.l r4,@(0x18,r5)
	mov.l @(0x10,r5),r1
	mov.l r1,@(0x1C,r5)
	mov.l @(0x18,r5),r0
	add r0,r7
	mov.w @(0x6E,PC),r0
	mov.l r7,@(0x14,r5)
	mov.l @(r0,r6),r4
	mov.l @(0x8,r5),r2
	mov.l @(0x24,r5),r0
	mov.l @(0x8,r4),r1
	sub r2,r0
	and r3,r1
	shll r0
	mov r10,r7
	or r0,r1
	mov.l r1,@(0x8,r4)
	mov 0x00,r1
	mov.l @(0xC,r6),r2
	cmp/hs r2,r1
	bt/s loc_8c18ced4
	mov r10,r4

loc_8c18ceb2:
	mov r4,r3
	mov r5,r2
	mov.l @(0x10,r5),r1
	shll2 r3
	add 0x30,r2
	mov r4,r0
	shll r3
	add r7,r1
	add r2,r3
	shll2 r0
	mov.l r1,@(0x4,r3)
	mov.l @(0xC,r6),r2
	add 0x01,r4
	mov.l @(r0,r12),r3
	cmp/hs r2,r4
	add r3,r7
	bf loc_8c18ceb2

loc_8c18ced4:
	bsr loc_8c18c98a
	mov r9,r4
	mov 0x00,r0

loc_8c18ceda:
	add 0x24,r15
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
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18cf00:
	#data 0xFF00
loc_8c18cf02:
	#data 0x0088
	#align4

loc_8c18cf04:
	#data 0xFF000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18CF20:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c18CF84,pc),r3 ; r3 set to 0x8C1A7FC0
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bf loc_8c18CF3C
	mov.l @(loc_8c18CF88,pc),r0 ; r0 set to 0xEEEE
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8c18CF3C:
	mov.w @(loc_8c18CF80,pc),r0 ; r0 set to 0x88
	mov.l @r15,r4
	mov.l @(0x04,r15),r3
	mov.l @(r0,r4),r4
	tst r3,r3
	bt loc_8c18CF52
	mov.l @(0x24,r4),r2
	mov.l @(loc_8c18CF8C,pc),r3 ; r3 set to 0x10000
	or r3,r2
	bra loc_8c18CF5A
	mov.l r2,@(0x24,r4)

loc_8c18CF52:
	mov.l @(0x24,r4),r1
	mov.l @(loc_8c18CF90,pc),r3 ; r3 set to 0xFFFEFFFF
	and r3,r1
	mov.l r1,@(0x24,r4)

loc_8c18CF5A:
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop


;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18CF80:
	#data 0x0088
	#align4

loc_8c18CF84:
	#data bank1a.loc_8c1a7FC0
loc_8c18CF88:
	#data 0x0000EEEE
loc_8c18CF8C:
	#data 0x00010000
loc_8c18CF90:
	#data 0xFFFEFFFF

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c18CFA0:
	mov.l @(0x44,PC),r4
	mov.l @(0x40,PC),r5
	mov.l @(0x4,r4),r3
	tst r3,r3
	bf loc_8c18cfbe
	mov.l @(0x8,r4),r0
	mov 0x00,r5
	stc sr,r3
	mov.w @(0x2C,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr


loc_8c18CFBE:
	rts 
	mov r5,r0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18cfe0:
	#data 0xFF0F
	#align4
loc_8c18cfe4:
	#data 0x0000EEEE
loc_8c18cfe8:
	#data 0x8C343894

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18D000:
	mov.w @(loc_8c18D080,pc),r6 ; r6 set to 0xD0
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c18D084,pc),r7 ; r7 set to 0x8C3434F8
	add r7,r6 ; r6 set to 0x8C3435C8
	mov r7,r4 ; r4 set to 0x8C3434F8

loc_8c18D00A:
	mov.l r5,@(0x28,r4)  ; r4 ??
	add 0x34,r4
	cmp/hs r6,r4
	bf loc_8c18D00A
	rts
	nop

;==============================================
loc_8c18D016:
	mov.l r13,@-r15
	add 0xE8,r15
	mov.l @(loc_8c18D088,pc),r3 ; r3 set to 0x8C1C5A8C
	mov r15,r2
	mov.l @(loc_8c18D084,pc),r7 ; r7 set to 0x8C3434F8
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(0x04,r3),r0
	mov.l @r3,r1
	mov r7,r5 ; r5 set to 0x8C3434F8
	mov r7,r6 ; r6 set to 0x8C3434F8
	mov.l r1,@r2
	mov.l r0,@(0x04,r2)
	mov.l @(0x0C,r3),r0
	mov.l @(0x08,r3),r1
	mov.l r1,@(0x08,r2)
	mov.l r0,@(0x0C,r2)
	mov.l @(0x14,r3),r0
	mov.l @(0x10,r3),r1
	mov.l r1,@(0x10,r2)
	mov.l r0,@(0x14,r2)
	mov.w @(loc_8c18D080,pc),r0 ; r0 set to 0xD0
	add r7,r0 ; r0 set to 0x8C3435C8
	cmp/hs r0,r5
	bt/s loc_8c18D05C
	mov 0x01,r7 ; r7 set to 0x01

loc_8c18D048:
	mov.l @(0x28,r5),r3 ; r3 ??
	tst r3,r3
	bf loc_8c18D054
	mov r7,r13 ; r13 set to 0x01
	bra loc_8c18D05C
	mov r6,r5

loc_8c18d054:
	add 0x34,r5
	cmp/hs r0,r5
	bf/s loc_8c18d048
	add 0x34,r6

loc_8c18D05C:
	tst r13,r13
	bf loc_8c18D0A0
	mov 0x00,r0 ; r0 set to 0x00
	add 0x18,r15
	rts
	mov.l @r15+,r13
	
;==============================================
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18D080:
	#data 0x00D0
	#align4

loc_8c18D084:
	#data 0x8C3434F8
loc_8c18D088:
	#data bank1c.loc_8c1c5A8C

;==============================================
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18D0A0:
	mov.l @(loc_8c18D144,pc),r1 ; r1 set to 0x8C343434
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r7,@(0x28,r5)
	mov.l r4,@(0x1C,r5)
	mov.l r4,@(0x24,r5)
	mov.l r2,@r5
	mov r15,r2 ; r2 ??? bc r15 is ???
	mov.l @r1,r3
	shll2 r3
	add r2,r3
	mov.l @r3,r0
	shll2 r0
	shll r0
	mov.l r0,@(0x04,r5)
	mov r1,r0 ; r0 set to 0x8C343434
	mov.l @r0,r3
	mov.l r3,@(0x08,r5)
	mov.l @(loc_8c18D148,pc),r3 ; r3 set to 0x8C3434A0
	mov.l @r3,r2
	mov.l r2,@(0x0C,r5)
	mov.l @(loc_8c18D14C,pc),r2 ; r2 set to 0x8C3434A4
	mov.l @r2,r1 ; r1 ??
	mov.l r1,@(0x10,r5)
	mov.l @(0x04,r5),r1
	mov.l @r3,r0 ; r0 ??
	mul.l r1,r0
	mov r5,r0
	sts macl,r1
	shlr2 r1
	shlr2 r1
	shlr2 r1
	mov.l r1,@(0x2C,r5)
	add 0x18,r15
	rts
	mov.l @r15+,r13

;==============================================
loc_8c18d0e6:
	mov.l r14,@-r15
	add 0xFC,r15
	tst r5,r5
	bt/s loc_8c18d11e
	mov 0x00,r14
	mov.l @(0x5C,PC),r6
	mov 0x01,r7
	mov.w @(0x48,PC),r3
	mov r6,r1
	mov.l r6,@r15
	add r3,r1

loc_8c18d0fc:
	cmp/eq r4,r6
	bf/s loc_8c18d104
	add 0x34,r6
	mov r7,r14

loc_8c18d104:
	cmp/hs r1,r6
	bf loc_8c18d0fc
	tst r14,r14
	bt loc_8c18d116
	mov.l @(0x28,r4),r2
	tst r2,r2
	bt loc_8c18d116
	mov.l @(0x1C,r4),r3
	mov.l r3,@r5

loc_8c18d116:
	mov 0x00,r0
	add 0x04,r15
	rts 
	mov.l @r15+,r14

loc_8c18d11e:
	mov.l @(0x34,PC),r0
	add 0x04,r15
	rts 
	mov.l @r15+,r14

;==============================================
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18D140:
	#data 0x00D0
	#align4

loc_8c18D144:
	#data 0x8C343434
loc_8c18D148:
	#data 0x8C3434A0
loc_8c18D14C:
	#data 0x8C3434A4
loc_8c18D150:
	#data 0x8C3434F8
loc_8c18D154:
	#data 0x0000EEEE

;==============================================
	#align16_nop

;==============================================
loc_8c18D160:
	add 0xFC,r15
	tst r4,r4
	bt/s loc_8c18d190
	mov 0x00,r6
	mov r4,r5
	mov.l @(0x98,PC),r4
	mov.w @(0x90,PC),r3
	mov 0x01,r7
	mov r4,r1
	mov.l r4,@r15
	add r3,r1

loc_8c18D176:
	cmp/eq r5,r4
	bf/s loc_8c18d17e
	add 0x34,r4
	mov r7,r6

loc_8c18D17E:
	cmp/hs r1,r4
	bf loc_8c18d176
	tst r6,r6
	bt loc_8c18d190
	mov.l @(0x28,r5),r2
	tst r2,r2
	bt loc_8c18d190
	mov 0x00,r3
	mov.l r3,@(0x28,r5)

loc_8c18D190:
	mov 0x00,r0
	rts 
	add 0x04,r15

;==============================================
loc_8c18D196:
	mov.l r14,@-r15
	mov 0x01,r6
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x68,PC),r3
	mov.l @(0x64,PC),r12
	mov.l @r3,r0
	and r6,r0
	cmp/eq 0x01,r0
	bt loc_8c18d1ba
	mov.l @(0x5C,PC),r1
	mov.l @r1,r0
	and 0x2C,r0
	cmp/eq 0x20,r0
	bf loc_8c18d1ba
	tst r6,r6
	bf loc_8c18d1c2

loc_8c18D1BA:
	mov.l @(0x54,PC),r3
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bf loc_8c18d220

loc_8c18D1C2:
	tst r4,r4
	bt loc_8c18d24a
	mov.l @(0x1C,r4),r14
	tst r5,r5
	bt loc_8c18d24a
	mov.l @(0x40,PC),r2
	mov.l @(0x1C,r5),r13
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c18d250
	mov r14,r5
	jsr @r12
	mov 0x60,r4
	mov r13,r5
	jsr @r12
	mov 0x64,r4
	bra loc_8c18d250
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18D200:
	#data 0x00D0
	#align4
loc_8c18D204:
	#data 0x8C3434F8
loc_8c18D208:
	#data loc_8c18C320
loc_8c18D20c:
	#data 0x8C343430
loc_8c18D210:
	#data 0x8C3434E8

;==============================================
	#align16_nop

;==============================================
loc_8c18D220:
	tst r4,r4
	bt loc_8c18d234
	mov.l @(0xB8,PC),r14
	mov.l @r14,r3
	mov.l @(0x1C,r4),r14
	mov.l @(0xB8,PC),r13
	add r3,r14
	mov.l @r13,r3
	bra loc_8c18d246
	mov.l @(0x1C,r4),r13

loc_8c18D234:
	tst r5,r5
	bt loc_8c18d24a
	mov.l @(0xA4,PC),r14
	mov.l @r14,r3
	mov.l @(0x1C,r5),r14
	mov.l @(0xA4,PC),r13
	add r3,r14
	mov.l @r13,r3
	mov.l @(0x1C,r5),r13

loc_8c18D246:
	bra loc_8c18d250
	add r3,r13

loc_8c18D24A:
	mov.l @(0x9C,PC),r0
	bra loc_8c18d25e
	nop 

loc_8c18D250:
	mov r14,r5
	jsr @r12
	mov 0x50,r4
	mov r13,r5
	jsr @r12
	mov 0x54,r4
	mov 0x00,r0

loc_8c18D25E:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18D268:
	sts.l pr,@-r15
	add 0xDC,r15
	mov.l @(loc_8c18D2EC,pc),r3 ; r3 set to 0x8C1C5AA4
	mov r15,r2
	add 0x0C,r2
	mov r15,r5
	mov.l @(0x04,r3),r0
	add 0x0C,r5
	mov.l @r3,r1
	mov r15,r6
	add 0x04,r6
	mov.l r1,@r2
	mov.l r0,@(0x04,r2)
	mov.l @(0x0C,r3),r0
	mov.l @(0x08,r3),r1
	mov.l r1,@(0x08,r2)
	mov.l r0,@(0x0C,r2)
	mov.l @(0x14,r3),r0
	mov.l @(0x10,r3),r1
	mov.l r1,@(0x10,r2)
	mov.l r0,@(0x14,r2)
	mov r4,r0
	shll2 r0
	mov.l @(loc_8c18D2F0,pc),r1 ; r1 set to 0x8C1A70A0
	mov.l @(r0,r5),r2
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r2,@(0x08,r15)
	jsr @r1
	mov 0x07,r4 ; r4 set to 0x07
	mov.l @(loc_8c18D2F0,pc),r3 ; r3 set to 0x8C1A70A0
	mov 0x00,r5 ; r5 set to 0x00
	mov r15,r6
	jsr @r3
	mov 0x08,r4 ; r4 set to 0x08
	mov.l @(0x08,r15),r2
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	mov.l @r15,r1 ; r1 ??? bc r15 is ???
	mul.l r3,r2
	sts macl,r4
	mul.l r1,r4 ; r4 ??? bc r1 is ???
	sts macl,r4
	add 0x24,r15
	lds.l @r15+,pr
	rts
	mov r4,r0
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c18D2E0:
	#data 0x8C3434C4
loc_8c18D2E4:
	#data 0x8C3434C8
loc_8c18D2E8:
	#data 0x0000EEEE
loc_8c18D2EC:
	#data bank1c.loc_8c1c5AA4
loc_8c18D2F0:
	#data bank1a.loc_8c1a70A0

	#align16

;==============================================
loc_8c18D300:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@(0x04,r15)
	bsr loc_8c18D324
	mov r15,r5
	mov r0,r5
	tst r5,r5
	bf loc_8c18D318
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x07,r0

;==============================================
loc_8c18D318:
	bsr loc_8c18D35C
	mov.w @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c18D324:
	mov.l @(loc_8c18D3E0,pc),r2 ; r2 set to 0x8C1C9B38
	mov.l @r2,r3
	cmp/hs r3,r4
	bt/s loc_8c18D332
	mov 0x00,r6 ; r6 set to 0x00
	bra loc_8c18D336
	mov.w r6,@r5

loc_8c18D332:
	mov 0x01,r1 ; r1 set to 0x01
	mov.w r1,@r5

loc_8c18D336:
	mov.w @r5,r3
	mov.l @(loc_8c18D3E4,pc),r0 ; r0 set to 0x8C1C9B44
	shll2 r3
	shll2 r3
	mov.l @(r0,r3),r5
	tst r5,r5
	bt/s loc_8c18D358
	mov r6,r7

loc_8c18D346:
	mov.l @(0x0C,r5),r1 ; r1 ??? bc r5 is ???
	cmp/eq r4,r1
	bf loc_8c18D352
	mov r5,r7
	bra loc_8c18D354
	mov r6,r5

loc_8c18d352:
	mov.l @(0x08,r5),r5

loc_8c18d354:
	tst r5,r5
	bf loc_8c18d346

loc_8c18D358:
	rts
	mov r7,r0

;==============================================
loc_8c18d35c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	mov.w r0,@(0x04,r15) 
	mov.w @(0x04,r15),r0 
	mov r5,r6
	mov.l @(loc_8c18d3ec,pc),r11
	mov r5,r14
	mov r0,r10
	shll2 r10
	mov r11,r5
	add 0x24,r5
	shll2 r10
	mov.l @(loc_8c18d3e8,pc),r9
	add r10,r5
	mov.l r5,@r15
	add 0x04,r5
	jsr @r9
	mov.l @r15,r4
	mov r11,r4
	add 0x24,r4
	add r10,r4
	mov.l @(0x08,r4),r4
	mov 0x00,r12
	tst r4,r4
	bt/s loc_8c18d3c0
	mov r12,r13

loc_8c18d3a0:
	mov.l @(0x10,r14),r2
	mov.l @(0x0C,r14),r6
	mov.l @(0x0C,r4),r5
	add r6,r2
	cmp/eq r2,r5
	bt loc_8c18d3b4
	mov.l @(0x10,r4),r2
	add r5,r2
	cmp/eq r2,r6
	bf loc_8c18d3ba

loc_8c18d3b4:
	mov r4,r13
	bra loc_8c18d3bc
	mov r12,r4

loc_8c18d3ba:
	mov.l @(0x08,r4),r4

loc_8c18d3bc:
	tst r4,r4
	bf loc_8c18d3a0

loc_8c18d3c0:
	tst r13,r13
	bt loc_8c18d454

loc_8c18d3c4:
	mov.l @(0x0C,r14),r2
	mov.l @(0x10,r14),r3
	mov.l @(0x0C,r13),r1
	add r3,r2
	cmp/eq r2,r1
	bf/s loc_8c18d400
	mov r14,r4
	mov.l @(0x0C,r14),r2
	mov.l r2,@(0x0C,r13) 
	mov.l @(0x10,r14),r3
	mov.l @(0x10,r13),r1
	add r3,r1
	bra loc_8c18d408
	mov.l r1,@(0x10,r13) 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18d3e0:
	#data bank1c.loc_8C1C9B38
loc_8c18d3e4:
	#data bank1c.loc_8C1C9B44
loc_8c18d3e8:
	#data bank1a.loc_8c1a8a10
loc_8c18d3ec:
	#data bank1c.loc_8c1c9b20

;==============================================
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18d400:
	mov.l @(0x10,r13),r2
	mov.l @(0x10,r14),r3
	add r3,r2
	mov.l r2,@(0x10,r13) 

loc_8c18d408:
	mov.l @(loc_8c18d480,pc),r3
	jsr @r3
	nop 
	mov r11,r8
	add 0x24,r8
	add r10,r8
	mov r13,r6
	mov r8,r5
	mov r8,r4
	add 0x0C,r5
	jsr @r9
	add 0x08,r4
	mov r11,r4
	add 0x24,r4
	add r10,r4
	mov r13,r14
	mov.l @(0x08,r4),r4
	tst r4,r4
	bt/s loc_8c18d450
	mov r12,r13

loc_8c18d430:
	mov.l @(0x10,r14),r2
	mov.l @(0x0C,r14),r5
	mov.l @(0x0C,r4),r6
	add r5,r2
	cmp/eq r2,r6
	bt loc_8c18d444
	mov.l @(0x10,r4),r2
	add r6,r2
	cmp/eq r2,r5
	bf loc_8c18d44a

loc_8c18d444:
	mov r4,r13
	bra loc_8c18d44c
	mov r12,r4

loc_8c18d44a:
	mov.l @(0x08,r4),r4

loc_8c18d44c:
	tst r4,r4
	bf loc_8c18d430

loc_8c18d450:
	tst r13,r13
	bf loc_8c18d3c4

loc_8c18d454:
	mov r11,r5
	add 0x24,r5
	add r10,r5
	mov.l @(loc_8c18d484,pc),r3
	mov.l r5,@r15
	mov r14,r6
	mov.l @r15,r4
	add 0x0C,r5
	jsr @r3
	add 0x08,r4
	mov 0x00,r0
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
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18d480:
	#data bank1a.loc_8c1a898c
loc_8c18d484:
	#data bank1a.loc_8c1a89d0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18D4A0:
	sts.l pr,@-r15
	add 0xE4,r15
	mov.l @(loc_8c18D5E0,pc),r3 ; r3 set to 0x8C1A8A60
	mov.l r4,@(0x04,r15)
	mov r15,r4
	mov.l r5,@r15
	mov.l @(0x04,r15),r5
	jsr @r3
	add 0x08,r4
	mov 0x14,r3 ; r3 set to 0x14
	mov r15,r2
	sub r3,r15
	add 0x08,r2
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.l @(0x04,r2),r1
	mov.l r3,@r15
	mov.l r1,@(0x04,r15)
	mov.l @(0x08,r2),r3
	mov.l @(0x0C,r2),r1
	mov.l r3,@(0x08,r15)
	mov.l r1,@(0x0C,r15)
	mov.l @(0x10,r2),r3
	mov.l r3,@(0x10,r15)
	bsr loc_8c18D4DA
	mov.l @(0x14,r15),r4
	add 0x30,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c18d4da:
	mov.l r14,@-r15
	mov 0x00,r7
	mov.l r13,@-r15
	mov r7,r14
	mov.l r12,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(loc_8c18d5e4,pc),r3
	sts.l pr,@-r15
	mov.l @r3,r5
	mov r15,r13
	tst r5,r5
	add 0x18,r13
	bt/s loc_8c18d548
	mov.l @(0x10,r13),r12
	mov.l @(loc_8C18D5E8,pc),r9

loc_8c18d4fa:
	mov.w @r5,r3
	mov.l @r13,r2
	extu.w r3,r3
	and r9,r3
	cmp/eq r2,r3
	bf loc_8c18d53e
	mov 0x00,r2
	cmp/hs r12,r2
	bt/s loc_8c18d53e
	mov r7,r6

loc_8c18d50e:
	mov r5,r3
	mov r6,r1
	add 0x0C,r3
	shll2 r1
	add r3,r1
	mov.l @r1,r2
	tst r2,r2
	bt loc_8c18d538
	mov.l @(0x04,r13),r0
	mov.l @(0x08,r5),r2
	shlr2 r0
	mul.l r0,r6
	sts macl,r0
	shll2 r0
	add r2,r0
	cmp/eq r4,r0
	bf loc_8c18d538
	mov r6,r10
	mov r5,r14
	mov r7,r5
	mov r12,r6

loc_8c18d538:
	add 0x01,r6
	cmp/hs r12,r6
	bf loc_8c18d50e

loc_8c18d53e:
	tst r14,r14
	bf loc_8c18d544
	mov.l @(0x04,r5),r5

loc_8c18d544:
	tst r5,r5
	bf loc_8c18d4fa

loc_8c18d548:
	tst r14,r14
	bt loc_8c18d5a0
	mov r14,r2
	add 0x0C,r2
	shll2 r10
	mov r7,r12
	mov 0x00,r3
	mov r7,r4
	add r2,r10
	mov.l r7,@r10
	mov.l @(0x10,r13),r6
	cmp/hs r6,r3
	bt/s loc_8c18d57c
	mov 0x01,r5

loc_8c18d564:
	mov r14,r3
	mov r4,r1
	add 0x0C,r3
	shll2 r1
	add r3,r1
	mov.l @r1,r2
	tst r2,r2
	bt/s loc_8c18d578
	add 0x01,r4
	mov r5,r12

loc_8c18d578:
	cmp/hs r6,r4
	bf loc_8c18d564

loc_8c18d57c:
	tst r12,r12
	bf loc_8c18d59c
	mov.l @(loc_8c18d5ec,pc),r3
	jsr @r3
	mov.l @(0x08,r14),r4
	mov r0,r4
	tst r4,r4
	bt loc_8c18d590
	bra loc_8c18d5a2
	mov r4,r0

loc_8c18d590:
	mov.l @(loc_8c18d5e4,pc),r4
	bsr loc_8c18d5b0
	mov r14,r5
	mov.l @(loc_8c18d5f0,pc),r2
	jsr @r2
	mov r14,r4

loc_8c18d59c:
	bra loc_8c18d5a2
	mov 0x00,r0

loc_8c18d5a0:
	mov 0x07,r0

loc_8c18d5a2:
	lds.l @r15+,pr 
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18d5b0:
	mov.l @r4,r6
	mov 0x00,r7
	tst r6,r6
	bt/s loc_8c18d5cc
	mov r7,r0

loc_8c18d5ba:
	mov.l @(0x04,r6),r2
	cmp/eq r5,r2
	bf loc_8c18d5c6
	mov r6,r0
	bra loc_8c18d5c8
	mov r7,r6

loc_8c18d5c6:
	mov.l @(0x04,r6),r6

loc_8c18d5c8:
	tst r6,r6
	bf loc_8c18d5ba

loc_8c18d5cc:
	mov.l @r4,r2
	cmp/eq r5,r2
	bf loc_8c18d600
	mov.l @(0x04,r5),r1
	bra loc_8c18d604
	mov.l r1,@r4

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18d5e0:
	#data bank1a.loc_8C1A8A60
loc_8c18d5e4:
	#data bank1c.loc_8c1c9b64
loc_8C18D5E8:
	#data 0x0000F000
loc_8c18d5ec:
	#data loc_8c18d300
loc_8c18d5f0:
	#data bank1a.loc_8c1a8b88

;==============================================
	#align16_nop

;==============================================
loc_8c18d600:
	mov.l @(0x04,r5),r2
	mov.l r2,@(0x04,r0) 

loc_8c18d604:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18d620:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xB8,PC),r14
	mov r14,r5
	add 0x24,r5
	mov.l r5,@r15
	add 0x04,r5
	bsr loc_8c18d7a0
	mov.l @r15,r4
	mov r14,r5
	add 0x34,r5
	mov.l r5,@r15
	add 0x04,r5
	bsr loc_8c18d7a0
	mov.l @r15,r4
	mov r14,r5
	add 0x24,r5
	mov.l r5,@r15
	add 0x0C,r5
	mov.l @r15,r4
	bsr loc_8c18d7a0
	add 0x08,r4
	mov r14,r5
	add 0x34,r5
	mov.l r5,@r15
	add 0x0C,r5
	mov.l @r15,r4
	bsr loc_8c18d7a0
	add 0x08,r4
	mov r14,r13
	add 0x24,r13
	mov r13,r5
	mov r13,r7
	add 0x0C,r5
	mov r13,r4
	add 0x04,r7
	mov r13,r6
	bsr loc_8c18d874
	add 0x08,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c18d68e
	mov r14,r13
	add 0x34,r13
	mov r13,r5
	mov r13,r7
	add 0x0C,r5
	mov r13,r4
	add 0x04,r7
	mov r13,r6
	bsr loc_8c18d874
	add 0x08,r4
	mov r0,r4

loc_8c18d68e:
	mov r4,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18d69a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x32,PC),r0
	add r0,r15
	mov.w @(0x30,PC),r14
	mov r6,r13
	mov.l @(0x34,PC),r10
	mov r4,r9
	cmp/hi r14,r13
	bf/s loc_8c18d722
	mov r5,r8
	mov r15,r2
	add 0x04,r2
	mov.l r2,@r15

loc_8c18d6c2:
	mov.l @(0x28,PC),r3
	mov r8,r5
	mov r14,r6
	jsr @r3
	mov.l @r15,r4
	mov.l @r15,r12
	bra loc_8c18d708
	mov 0x40,r11

;==============================================
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18d6e0:
	#data 0xF7FC
loc_8c18d6e2:
	#data 0x0800
	#align4

loc_8c18d6e4:
	#data bank1c.loc_8C1C9B20
loc_8c18d6e8:
	#data bank17.loc_8C17A798
loc_8c18d6ec:
	#data 0x8C1A4DC0

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c18d700:
	jsr @r10
	mov r12,r4
	add 0xFF,r11
	add 0x20,r12

loc_8c18d708:
	tst r11,r11
	bf loc_8c18d700
	mov.l @r15,r5
	mov 0x00,r7
	mov.l @(0x70,PC),r3
	mov r14,r6
	jsr @r3
	mov r9,r4
	sub r14,r13
	cmp/hi r14,r13
	add r14,r8
	bt/s loc_8c18d6c2
	add r14,r9

loc_8c18d722:
	mov r15,r4
	mov.l @(0x60,PC),r3
	mov r13,r6
	add 0x04,r4
	mov r8,r5
	jsr @r3
	mov.l r4,@r15
	mov.l @r15,r14
	bra loc_8c18d73e
	mov 0x40,r12

loc_8c18d736:
	jsr @r10
	mov r14,r4
	add 0xFF,r12
	add 0x20,r14

loc_8c18d73e:
	tst r12,r12
	bf loc_8c18d736
	mov.l @r15,r5
	mov 0x00,r7
	mov.l @(0x3C,PC),r3
	mov r13,r6
	jsr @r3
	mov r9,r4
	mov.w @(0x2E,PC),r1
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18d780:
	#data 0x0804
	#align4

loc_8c18d784:
	#data loc_8C18C7C0
loc_8c18d788:
	#data bank1a.loc_8C1A4DC0

;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18d7a0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r9
	mov.l @r9,r3
	mov r5,r10
	mov 0x00,r8
	tst r3,r3
	bt/s loc_8c18d840
	mov r8,r12
	mov.l @r9,r4
	mov r4,r14

loc_8c18d7c4:
	mov.l @(0xC,r4),r2
	mov.l @(0xC,r14),r3
	cmp/hi r3,r2
	bf loc_8c18d7ce
	mov r4,r14

loc_8c18d7ce:
	mov.l @(0x8,r4),r4
	tst r4,r4
	bf/s loc_8c18d7c4
	add 0x01,r12
	mov 0x01,r2
	cmp/gt r2,r12
	bf loc_8c18d840
	mov.l @r10,r1
	cmp/eq r14,r1
	bt loc_8c18d7f6
	mov.l @(0x13C,PC),r1
	mov r10,r5
	mov r14,r6
	jsr @r1
	mov r9,r4
	mov.l @(0x134,PC),r3
	mov r14,r5
	mov.l @r10,r6
	jsr @r3
	mov r10,r4

loc_8c18d7f6:
	add 0xFE,r12
	cmp/pl r12
	mov r12,r11
	bf/s loc_8c18d840
	mov.l r8,@r15

loc_8c18d800:
	mov.l @r9,r14
	cmp/pl r11
	mov r14,r13
	bf/s loc_8c18d81c
	mov r8,r4

loc_8c18d80a:
	mov.l @(0x8,r14),r14
	mov.l @(0xC,r13),r3
	mov.l @(0xC,r14),r2
	cmp/hi r3,r2
	bf/s loc_8c18d818
	add 0x01,r4
	mov r14,r13

loc_8c18d818:
	cmp/ge r11,r4
	bf loc_8c18d80a

loc_8c18d81c:
	cmp/eq r13,r14
	bt loc_8c18d834
	mov.l @(0xFC,PC),r3
	mov r10,r5
	mov r13,r6
	jsr @r3
	mov r9,r4
	mov.l @(0xF8,PC),r2
	mov r13,r5
	mov r14,r6
	jsr @r2
	mov r10,r4

loc_8c18d834:
	mov.l @r15,r3
	add 0xFF,r11
	add 0x01,r3
	cmp/ge r12,r3
	bf/s loc_8c18d800
	mov.l r3,@r15

loc_8c18d840:
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
loc_8c18d854:
	mov.l @(0xD0,PC),r3
	mov 0x00,r7
	mov r7,r6
	mov.l @r3,r5

loc_8c18d85c:
	mov.l @(0x8,r5),r2
	cmp/eq r4,r2
	bf loc_8c18d866
	mov r5,r6
	mov r7,r5

loc_8c18d866:
	tst r6,r6
	bf loc_8c18d86c
	mov.l @(0x4,r5),r5

loc_8c18d86c:
	tst r5,r5
	bf loc_8c18d85c
	rts 
	mov r6,r0

;==============================================
loc_8c18d874:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r8
	mov.l @r8,r14
	mov r5,r9
	tst r14,r14
	bf/s loc_8c18d896
	mov.l @r6,r13
	bra loc_8c18da34
	nop 

loc_8c18d896:
	tst r13,r13
	bf loc_8c18d89e
	bra loc_8c18da34
	nop 

loc_8c18d89e:
	mov 0x02,r10

loc_8c18d8a0:
	mov.w @r13,r3
	extu.w r3,r3
	tst r10,r3
	bf/s loc_8c18d8b8
	mov 0x00,r11
	mov.w @r13,r0
	extu.w r0,r0
	tst 0x04,r0
	bt loc_8c18d8b6
	bra loc_8c18d8b8
	mov r10,r11


loc_8c18d8b6:
	mov 0x01,r11

loc_8c18d8b8:
	tst r11,r11
	bf loc_8c18d8c0
	bra loc_8c18d9f0
	nop 

loc_8c18d8c0:
	mov.l @(0xC,r14),r2
	mov.l @(0x10,r14),r3
	mov.l @(0xC,r13),r1
	add r3,r2
	cmp/eq r1,r2
	bt loc_8c18d8d0
	bra loc_8c18d9ce
	nop 

loc_8c18d8d0:
	mov.l @(0xC,r14),r0
	tst 0x1F,r0
	bt loc_8c18d948
	mov.l @(0x54,PC),r3
	jsr @r3
	nop 
	mov r0,r12
	tst r12,r12
	bf loc_8c18d8e6
	bra loc_8c18da36
	mov 0x03,r0

loc_8c18d8e6:
	mov.l @(0xC,r14),r3
	mov.l r3,@(0xC,r12)
	mov 0xE0,r3
	mov.l @(0xC,r14),r2
	add 0x1F,r2
	and r3,r2
	mov.l r2,@(0xC,r14)
	mov.l @(0xC,r14),r1
	mov.l @(0xC,r12),r2
	sub r2,r1
	mov r1,r2
	mov.l r1,@(0x10,r12)
	mov.l @(0x10,r14),r0
	sub r2,r0
	mov.l r0,@(0x10,r14)
	mov.l @(0x4,r14),r6
	tst r6,r6
	bf loc_8c18d940
	mov.l @(0x24,PC),r1
	mov r9,r5
	mov r12,r6
	jsr @r1
	mov r8,r4
	bra loc_8c18d948
	nop 

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18d920:
	#data bank1a.loc_8C1A8A10
loc_8c18d924:
	#data bank1a.loc_8C1A89F4
loc_8c18d928:
	#data bank1c.loc_8C1C9B64
loc_8c18d92c:
	#data bank1a.loc_8C1A8904
loc_8c18d930:
	#data bank1a.loc_8C1A89D0

;==============================================
	#align16_nop

;==============================================
loc_8c18d940:
	mov.l @(0x11C,PC),r2
	mov r12,r5
	jsr @r2
	mov r9,r4

loc_8c18d948:
	mov.l @(0xC,r13),r5
	mov.l @(0x10,r13),r6
	bsr loc_8c18d69a
	mov.l @(0xC,r14),r4
	mov.l @(0xC,r13),r12
	mov r11,r0
	mov.l @(0xC,r14),r4
	cmp/eq 0x01,r0
	mov r12,r2
	sub r4,r2
	mov.l r2,@r15
	mov.l r4,@(0xC,r13)
	mov.l @(0xC,r14),r2
	mov.l @(0x10,r13),r3
	add r3,r2
	bf/s loc_8c18d974
	mov.l r2,@(0xC,r14)
	mov.l @(0xC,r13),r3
	mov.l @(0x14,r13),r2
	mov.l r3,@r2
	bra loc_8c18d9a4
	nop 

loc_8c18d974:
	bsr loc_8c18d854
	mov r12,r4
	mov r0,r6
	mov r6,r4
	mov.l @(0xC,r13),r2
	add 0x0C,r4
	mov r4,r5
	mov.l r2,@(0x8,r6)
	mov.l @r15,r7
	shlr2 r7
	shll2 r7

loc_8c18d98a:
	mov.l @r4,r3
	tst r3,r3
	bt loc_8c18d998
	mov.l @r5,r3
	mov.l @r3,r2
	sub r7,r2
	mov.l r2,@r3

loc_8c18d998:
	mov r6,r3
	add 0x4C,r3
	add 0x04,r4
	cmp/hs r3,r4
	bf/s loc_8c18d98a
	add 0x04,r5

loc_8c18d9a4:
	mov.l @(0x8,r14),r12
	tst r12,r12
	bt loc_8c18d9ce
	mov.l @(0xC,r14),r2
	mov.l @(0x10,r14),r3
	mov.l @(0xC,r12),r1
	add r3,r2
	cmp/eq r1,r2
	bf loc_8c18d9ce
	mov.l @(0x10,r14),r2
	mov r9,r5
	mov.l @(0x10,r12),r3
	mov r12,r6
	add r3,r2
	mov.l @(0xA0,PC),r3
	mov.l r2,@(0x10,r14)
	jsr @r3
	mov r8,r4
	mov.l @(0x9C,PC),r2
	jsr @r2
	mov r12,r4

loc_8c18d9ce:
	tst r13,r13
	bt loc_8c18d9e8
	mov.l @(0xC,r14),r3
	mov.l @(0xC,r13),r2
	cmp/hi r2,r3
	bf loc_8c18d9e8

loc_8c18d9da:
	mov.l @(0x8,r13),r13
	tst r13,r13
	bt loc_8c18d9e8
	mov.l @(0xC,r14),r3
	mov.l @(0xC,r13),r2
	cmp/hi r2,r3
	bt loc_8c18d9da

loc_8c18d9e8:
	tst r13,r13
	bf loc_8c18da2c
	bra loc_8c18da34
	nop 

loc_8c18d9f0:
	tst r14,r14
	bt loc_8c18da34
	mov.l @(0xC,r14),r2
	mov.l @(0xC,r13),r3
	cmp/hs r3,r2
	bt loc_8c18da0a

loc_8c18d9fc:
	mov.l @(0x8,r14),r14
	tst r14,r14
	bt loc_8c18da34
	mov.l @(0xC,r14),r3
	mov.l @(0xC,r13),r2
	cmp/hs r2,r3
	bf loc_8c18d9fc

loc_8c18da0a:
	tst r14,r14
	bt loc_8c18da34
	tst r13,r13
	bt loc_8c18da34
	mov.l @(0xC,r14),r3
	mov.l @(0xC,r13),r2
	cmp/hi r2,r3
	bf loc_8c18da28

loc_8c18da1a:
	mov.l @(0x8,r13),r13
	tst r13,r13
	bt loc_8c18da34
	mov.l @(0xC,r14),r3
	mov.l @(0xC,r13),r2
	cmp/hi r2,r3
	bt loc_8c18da1a

loc_8c18da28:
	tst r13,r13
	bt loc_8c18da34

loc_8c18da2c:
	tst r14,r14
	bt loc_8c18da34
	bra loc_8c18d8a0
	nop 

loc_8c18da34:
	mov 0x00,r0

loc_8c18da36:
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
	nop 

;==============================================
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18da60:
	#data bank1a.loc_8C1A89F4
loc_8c18da64:
	#data bank1a.loc_8c1A8A10
loc_8c18da68:
	#data bank1a.loc_8c1A898C

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18da80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x78,PC),r14
	mov.l r4,@r15
	mov 0x00,r4
	mov.l @(0x8,r14),r3
	tst r3,r3
	bf/s loc_8c18daaa
	mov r4,r13
	stc sr,r0
	mov.w @(0x64,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0xC,r14)
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr

loc_8c18daaa:
	mov.l @(0x8,r14),r2
	add 0x01,r2
	mov.l r2,@(0x8,r14)
	mov.l @r15,r0
	cmp/eq 0x00,r0
	bt/s loc_8c18dac4
	mov 0x20,r5
	cmp/eq 0x01,r0
	bt loc_8c18db20
	cmp/eq 0x02,r0
	bt loc_8c18db4a
	bra loc_8c18db7c
	nop 

loc_8c18dac4:
	mov 0x30,r0
	mov.w @(r0,r14),r3
	cmp/ge r5,r3
	bt loc_8c18daea
	mov.w @(r0,r14),r2
	mov r14,r3
	add 0x01,r2
	mov.w r2,@(r0,r14)
	mov 0x2C,r0
	mov.w @(r0,r14),r13
	add 0x01,r13
	mov.w r13,@(r0,r14)
	add 0xFF,r13
	exts.w r13,r13
	shll2 r13
	shll2 r13
	shll2 r13
	bra loc_8c18db6e
	add 0x40,r3

loc_8c18daea:
	bra loc_8c18db7c
	mov r4,r13

;==============================================
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18db00:
	#data 0xFF0F
	#align4

loc_8c18db04:
	#data bank1a.loc_8C1A4E80

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18db20:
	mov 0x36,r0
	mov.w @(r0,r14),r2
	cmp/ge r5,r2
	bt loc_8c18db46
	mov.w @(r0,r14),r2
	mov.w @(0x92,PC),r3
	add 0x01,r2
	mov.w r2,@(r0,r14)
	mov 0x32,r0
	mov.w @(r0,r14),r13
	add 0x01,r13
	mov.w r13,@(r0,r14)
	add 0xFF,r13
	exts.w r13,r13
	shll2 r13
	shll2 r13
	shll2 r13
	bra loc_8c18db6e
	add r14,r3

loc_8c18db46:
	bra loc_8c18db7c
	mov r4,r13

loc_8c18db4a:
	mov 0x3C,r0
	mov.w @(r0,r14),r2
	cmp/ge r5,r2
	bt loc_8c18db7a
	mov.w @(r0,r14),r2
	mov.w @(0x6A,PC),r3
	add 0x01,r2
	mov.w r2,@(r0,r14)
	mov 0x38,r0
	mov.w @(r0,r14),r13
	add r14,r3
	add 0x01,r13
	mov.w r13,@(r0,r14)
	add 0xFF,r13
	exts.w r13,r13
	shll2 r13
	shll2 r13
	shll2 r13

loc_8c18db6e:
	mov.w @(r0,r14),r2
	add r3,r13
	mov 0x1F,r3
	and r3,r2
	bra loc_8c18db7c
	mov.w r2,@(r0,r14)

loc_8c18db7a:
	mov r4,r13

loc_8c18db7c:
	tst r13,r13
	bf loc_8c18dbe0
	mov.l @(0x8,r14),r3
	add 0xFF,r3
	mov r3,r2
	tst r2,r2
	bf/s loc_8c18db9e
	mov.l r3,@(0x8,r14)
	mov.l @(0xC,r14),r0
	stc sr,r2
	mov.w @(0x30,PC),r1
	and 0x0F,r0
	shll2 r0
	and r1,r2
	shll2 r0
	or r2,r0
	ldc r0,sr

loc_8c18db9e:
	bra loc_8c18dc06
	mov 0x00,r0


;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18dbc0:
	#data 0x0840
loc_8c18dbc2:
	#data 0x1040
loc_8c18dbc4:
	#data 0xFF0F

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18dbe0:
	mov.l @(0x3C,PC),r3
	mov 0x40,r5
	jsr @r3
	mov r13,r4
	mov 0x01,r4
	mov.l r4,@(0x28,r13)
	mov.l @r15,r3
	mov.l r3,@(0x20,r13)
	mov.l @(0x4,r14),r2
	mov.l @(0x30,PC),r3
	add 0x01,r2
	mov.l r2,@(0x4,r14)
	add 0xFF,r2
	mov.l r2,@r13
	mov.l @(0x4,r14),r1
	cmp/hs r3,r1
	bf/s loc_8c18dc06
	mov r13,r0
	mov.l r4,@(0x4,r14)

loc_8c18dc06:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18dc20:
	#data bank17.loc_8C17A734
loc_8c18dc24:
	#data 0x80000000


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18dc40:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xD4,r15
	mov.l @(0xF0,PC),r3
	mov r15,r2
	add 0x18,r2
	mov r15,r11
	mov r15,r10
	mov.l r5,@r15
	mov.l @r3,r1
	add 0x04,r11
	mov.l @(0x4,r3),r0
	mov r7,r14
	mov.l r1,@r2
	mov r4,r13
	mov.l r0,@(0x4,r2)
	add 0x18,r10
	mov.l @(0x8,r3),r1
	mov.l @(0xC,r3),r0
	mov.l r1,@(0x8,r2)
	mov.l r0,@(0xC,r2)
	mov.l @(0x10,r3),r1
	mov.l r1,@(0x10,r2)
	mov r15,r1
	mov.l @(0xC8,PC),r2
	add 0x04,r1
	mov.l @r2,r0
	mov.l @(0x4,r2),r3
	mov.l r0,@r1
	mov.l r3,@(0x4,r1)
	mov.l @(0x8,r2),r0
	mov.l @(0xC,r2),r3
	mov.l r0,@(0x8,r1)
	mov.l r3,@(0xC,r1)
	mov.l @(0x10,r2),r0
	mov 0x42,r12
	mov.l r0,@(0x10,r1)
	and r13,r12
	mov.l @r15,r1
	mov r12,r0
	cmp/eq 0x42,r0
	bf/s loc_8c18dca6
	mov.l r1,@r6
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov r13,r4
	mov r0,r7

loc_8c18dca6:
	mov.l @r15,r3
	mov r13,r4
	mov 0x01,r6
	mov r7,r5
	tst r3,r3
	and r6,r4
	bt/s loc_8c18dd00
	shll2 r5
	mov r12,r0
	cmp/eq 0x42,r0
	bf loc_8c18dcde
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18dcd4
	mov 0x2C,r0
	and r13,r0
	cmp/eq 0x20,r0
	bf loc_8c18dcd4
	mov r5,r0
	mov.l @(r0,r11),r3
	mov.l r3,@r14
	bra loc_8c18dd76
	nop 

loc_8c18dcd4:
	mov r5,r0
	mov.l @(r0,r10),r3
	mov.l r3,@r14
	bra loc_8c18dd76
	nop 

loc_8c18dcde:
	mov 0x20,r2
	tst r13,r2
	bt loc_8c18dcfa
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18dcf6
	mov 0x2C,r0
	and r13,r0
	cmp/eq 0x20,r0
	bf loc_8c18dcf6
	bra loc_8c18dd22
	mov 0x02,r3

loc_8c18dcf6:
	bra loc_8c18dd76
	mov.l r6,@r14

loc_8c18dcfa:
	mov 0x04,r2
	bra loc_8c18dd76
	mov.l r2,@r14

loc_8c18dd00:
	tst r4,r4
	bt loc_8c18dd0a
	mov 0x00,r3
	bra loc_8c18dd22
	nop 

loc_8c18dd0a:
	mov r12,r0
	cmp/eq 0x42,r0
	bf loc_8c18dd60
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18dd28
	mov 0x2C,r0
	and r13,r0
	cmp/eq 0x20,r0
	bf loc_8c18dd28
	mov r5,r0
	mov.l @(r0,r11),r3

loc_8c18dd22:
	mov.l r3,@r14
	bra loc_8c18dd76
	nop 

loc_8c18dd28:
	mov r5,r0
	mov.l @(r0,r10),r3
	mov.l r3,@r14
	bra loc_8c18dd76
	nop 

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18dd40:
	#data bank1c.loc_8C1C5ABC
loc_8c18dd44:
	#data bank1c.loc_8C1C5AD0
loc_8c18dd48:
	#data loc_8C18F200

;==============================================
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18dd60:
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18dd74
	mov 0x2C,r0
	and r13,r0
	cmp/eq 0x20,r0
	bf loc_8c18dd74
	mov 0x02,r3
	bra loc_8c18dd76
	mov.l r3,@r14

loc_8c18dd74:
	mov.l r6,@r14

loc_8c18dd76:
	mov 0x00,r0
	add 0x2C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18DDA0:
	tst r7,r7
	mov 0x10,r0 ; r0 set to 0x10
	bt/s loc_8c18DDB6
	and r4,r0 ; r0 ??? bc r4 is ???
	tst r0,r0
	bt loc_8c18DDB0
	bra loc_8c18DDC6
	mov 0x28,r7

loc_8c18DDB0:
	mov 0x14,r7 ; r7 set to 0x14
	bra loc_8c18DDC6
	nop

loc_8c18DDB6:
	tst r0,r0
	bt loc_8c18DDBE
	bra loc_8c18DDC0
	mov 0x14,r7

loc_8c18DDBE:
	mov 0x0A,r7 ; r7 set to 0x0A

loc_8c18DDC0:
	mov 0x20,r2 ; r2 set to 0x20, r2 set to 0x20
	tst r2,r4
	bt loc_8c18DDCA

loc_8c18DDC6:
	bra loc_8c18DDCC
	mov 0x0F,r4

loc_8c18ddca:
	mov 0x08,r4

loc_8c18ddcc:
	tst r5,r5
	bt loc_8c18ddd2
	mov.l r7,@r5

loc_8c18ddd2:
	tst r6,r6
	bt/s loc_8c18ddda
	mov 0x00,r0
	mov.l r4,@r6

loc_8c18ddda:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c18dde0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xF4,r15
	mov.l @(0x9C,PC),r7
	mov 0x00,r13
	mov.l r13,@(0x4,r15)
	mov r13,r9
	mov.l r13,@(0x8,r15)
	mov.l r13,@r15
	mov.l @(0x2C,r7),r6
	tst r6,r6
	bt/s loc_8c18de1a
	mov r13,r8

loc_8c18de04:
	mov.l @(0x10,r6),r2
	cmp/hi r8,r2
	bf loc_8c18de0c
	mov.l @(0x10,r6),r8

loc_8c18de0c:
	mov.l @(0x8,r15),r2
	mov.l @(0x10,r6),r3
	add r3,r2
	mov.l r2,@(0x8,r15)
	mov.l @(0x8,r6),r6
	tst r6,r6
	bf loc_8c18de04

loc_8c18de1a:
	mov.l @(0x3C,r7),r6
	tst r6,r6
	bt loc_8c18de36

loc_8c18de20:
	mov.l @(0x10,r6),r3
	cmp/hi r9,r3
	bf/s loc_8c18de2a
	mov.l @(0x10,r6),r3
	mov.l @(0x10,r6),r9

loc_8c18de2a:
	mov.l @(0x4,r15),r2
	add r3,r2
	mov.l r2,@(0x4,r15)
	mov.l @(0x8,r6),r6
	tst r6,r6
	bf loc_8c18de20

loc_8c18de36:
	mov 0x44,r0
	mov.l @(r0,r7),r12
	tst r12,r12
	bf loc_8c18de42
	bra loc_8c18df36
	nop 

loc_8c18de42:
	mov 0x10,r14

loc_8c18de44:
	mov.w @r12,r0
	mov.l @(0x4C,PC),r3
	mov.w @(0x34,PC),r1
	extu.w r0,r0
	and r3,r0
	cmp/eq r1,r0
	bt loc_8c18dea0
	mov.w @(0x2C,PC),r1
	cmp/eq r1,r0
	bt loc_8c18dea6
	mov.w @(0x28,PC),r1
	cmp/eq r1,r0
	bt loc_8c18deac
	mov.w @(0x24,PC),r1
	cmp/eq r1,r0
	bt loc_8c18deb2
	mov.w @(0x20,PC),r1
	cmp/eq r1,r0
	bt loc_8c18deb8
	mov.w @(0x1C,PC),r1
	cmp/eq r1,r0
	bt loc_8c18debe
	mov.w @(0x18,PC),r1
	cmp/eq r1,r0
	bt loc_8c18df00
	mov.l @(0x20,PC),r1
	cmp/eq r1,r0
	bt loc_8c18df06
	bra loc_8c18df0c
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18de80:
	#data 0x1000
loc_8c18de82:
	#data 0x2000
loc_8c18de84:
	#data 0x3000
loc_8c18de86:
	#data 0x4000
loc_8c18de88:
	#data 0x5000
loc_8c18de8a:
	#data 0x6000
loc_8c18de8c:
	#data 0x7000
	#align4

loc_8c18de90:
	#data bank1c.loc_8C1C9B20
loc_8c18de94:
	#data 0x0000F000
loc_8c18de98:
	#data 0x00008000

;==============================================
	#align16_nop

;==============================================
loc_8c18dea0:
	mov.w @(0x3C,PC),r7
	bra loc_8c18deb4
	nop 

loc_8c18dea6:
	mov.w @(0x38,PC),r7
	bra loc_8c18deb4
	nop 

loc_8c18deac:
	mov.w @(0x34,PC),r7
	bra loc_8c18deb4
	nop 

loc_8c18deb2:
	mov.w @(0x30,PC),r7

loc_8c18deb4:
	bra loc_8c18df10
	mov r14,r6

loc_8c18deb8:
	mov.w @(0x2C,PC),r7
	bra loc_8c18df10
	mov 0x08,r6

loc_8c18debe:
	mov.w @(0x28,PC),r7
	bra loc_8c18df10
	mov 0x04,r6

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18dee0:
	#data 0x0090
loc_8c18dee2:
	#data 0x00A0
loc_8c18dee4:
	#data 0x00C0
loc_8c18dee6:
	#data 0x00E0
loc_8c18dee8:
	#data 0x0200
loc_8c18deea:
	#data 0x0360

;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18df00:
	mov.w @(0x7C,PC),r7
	bra loc_8c18df10
	mov 0x02,r6

loc_8c18df06:
	mov.w @(0x78,PC),r7
	bra loc_8c18df10
	mov 0x01,r6

loc_8c18df0c:
	mov r13,r6
	mov r13,r7

loc_8c18df10:
	mov 0x00,r3
	mov r13,r10
	cmp/hs r6,r3
	mov r12,r11
	bt/s loc_8c18df30
	add 0x0C,r11

loc_8c18df1c:
	mov.l @r11,r1
	tst r1,r1
	bf/s loc_8c18df2a
	add 0x01,r10
	mov.l @r15,r2
	add r7,r2
	mov.l r2,@r15

loc_8c18df2a:
	cmp/hs r6,r10
	bf/s loc_8c18df1c
	add 0x04,r11

loc_8c18df30:
	mov.l @(0x4,r12),r12
	tst r12,r12
	bf loc_8c18de44

loc_8c18df36:
	mov.l @(0x8,r15),r2
	cmp/hs r9,r8
	mov.l @(0x4,r15),r3
	mov.l @r15,r1
	add r3,r2
	add r1,r2
	mov.l r2,@r4
	bt loc_8c18df4a
	bra loc_8c18df4c
	mov r9,r3

loc_8c18df4a:
	mov r8,r3

loc_8c18df4c:
	mov 0x00,r0
	mov.l r3,@r5
	add 0x0C,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18df80:
	#data 0x0800
loc_8c18df82:
	#data 0x0D60

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18DFA0:
	mov.l @(loc_8c18DFC0,pc),r4 ; r4 set to 0x8C343894
	rts
	mov.l @(0x04,r4),r0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18DFC0:
	#data 0x8C343894

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18DFE0:
	mov.l @(loc_8c18E000,pc),r3 ; r3 set to 0x8C343B18
	rts
	mov.l @r3,r0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18E000:
	#data 0x8C343B18

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18E020:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c18E080,pc),r3 ; r3 set to 0x8C1A7FC0
	mov.l r4,@(0x08,r15)
	mov.l r5,@(0x04,r15)
	mov.l r6,@r15
	jsr @r3
	mov.l @(0x08,r15),r4
	tst r0,r0
	bt loc_8c18E05E
	mov.l @(0x08,r15),r4
	mov.l @(0x04,r15),r2
	mov.l @(0x0C,r4),r3 ; r3 ??? bc r4 is ???
	cmp/hs r3,r2
	bt loc_8c18E05E
	mov.l @(0x04,r15),r2
	mov r4,r1
	add 0x48,r1
	mov.l @r15,r3
	shll2 r2
	shll r2
	add r1,r2
	mov.l @r2,r0
	mov.l @(loc_8c18E084,pc),r2 ; r2 set to 0xEFFFFFFF
	mov.l r0,@r3
	mov.l @r15,r3
	mov.l @r3,r1
	and r2,r1
	mov.l r1,@r3
	bra loc_8c18E068
	nop

loc_8c18E05E:
	mov.l @(loc_8c18E088,pc),r0 ; r0 set to 0xEEEE
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c18E068:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18E080:
	#data bank1a.loc_8c1a7FC0
loc_8c18E084:
	#data 0xEFFFFFFF
loc_8c18E088:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18E0A0:
	mov.l r14,@-r15
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r13,@-r15
	mov 0x1F,r3 ; r3 set to 0x1F
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c18E144,pc),r14 ; r14 set to 0x8C1C9B20
	mov.l r5,@(0x08,r14)  ; r14 ??? bc r5 is ???
	mov.l r6,@(0x20,r14)
	mov.l r7,@(0x0C,r14)
	mov.l @(0x18,r15),r2
	mov.l r2,@(r0,r14)
	mov 0x4C,r0 ; r0 set to 0x4C
	mov.l @(r0,r14),r5
	tst r5,r3
	bf loc_8c18E0C8
	bra loc_8c18E0D0
	mov r5,r3

loc_8c18E0C8:
	mov r5,r1
	mov 0xE0,r3 ; r3 set to 0xFFFFFFE0
	add 0x20,r1
	and r1,r3 ; r3 ??? bc r1 is ???

loc_8c18E0D0:
	mov r4,r7
	mov.l r3,@(r0,r14)
	mov.l r4,@(0x04,r14)
	mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00
	mov.l @(r0,r14),r4
	mov.l @r14,r0
	mov.l @(loc_8c18E154,pc),r12 ; r12 set to 0x8C18C320, r12 set to 0x8C18C320
	mov.l @(loc_8c18E14C,pc),r10 ; r10 set to 0x8C1A8904, r10 set to 0x8C1A8904
	cmp/eq 0x01,r0
	mov.l @(loc_8c18E148,pc),r6 ; r6 set to 0x1000000, r6 set to 0x1000000
	mov.w @(loc_8c18E140,pc),r11 ; r11 set to 0xE4, r11 set to 0xE4
	mov.l @(loc_8c18E150,pc),r5 ; r5 set to 0x800000, r5 set to 0x800000
	bf/s loc_8c18E160
	neg r4,r4
	cmp/eq r6,r7
	bf loc_8c18E100
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	add r6,r4
	mov.l r4,@(r0,r14)
	mov.l r13,@(0x10,r14)
	mov.l @(r0,r14),r3
	mov.l r3,@(0x14,r14)
	bra loc_8c18E10E
	mov.l r6,@(0x18,r14)

loc_8c18E100:
	mov 0x50,r0 ; r0 set to 0x50
	add r5,r4
	mov.l r4,@(r0,r14)
	mov.l r13,@(0x10,r14)
	mov.l @(r0,r14),r3
	mov.l r3,@(0x14,r14)
	mov.l r5,@(0x18,r14)

loc_8c18E10E:
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.l r13,@(0x1C,r14)
	jsr @r12
	mov r11,r4
	bsr loc_8c18E1F2
	nop
	jsr @r10
	nop
	mov r0,r4 ; r4 set to 0x50
	tst r4,r4
	bt loc_8c18E1B6
	mov.l @(0x10,r14),r3
	mov.l r3,@(0x0C,r4)  ; r4 ??? bc r3 is ???
	mov.l @(0x14,r14),r2
	mov.l r2,@(0x10,r4)
	mov.l @(0x2C,r14),r3
	mov.l r3,@(0x08,r4)
	mov.l r4,@(0x2C,r14)
	mov.l @(0x30,r14),r2
	mov.l r2,@(0x04,r4)
	bra loc_8c18E1D0
	mov.l r4,@(0x30,r14)

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18E140:
	#data 0x00E4
	#align4

loc_8c18E144:
	#data bank1c.loc_8c1c9B20
loc_8c18E148:
	#data 0x01000000
loc_8c18E14C:
	#data bank1a.loc_8c1a8904
loc_8c18E150:
	#data 0x00800000
loc_8c18E154:
	#data loc_8c18C320

;==============================================
	#align16_nop

;===========================================
loc_8c18E160:
	cmp/eq r6,r7
	bf loc_8c18E174
	mov 0x50,r0 ; r0 set to 0x50
	add r5,r4
	mov.l r4,@(r0,r14)
	mov.l r13,@(0x10,r14)
	mov.l @(r0,r14),r3
	mov.l r3,@(0x14,r14)
	bra loc_8c18E182
	nop

loc_8c18e174:
	mov 0x50,r0
	mov.l @(loc_8C18E260,pc),r5
	add r5,r4
	mov.l r4,@(r0,r14) 
	mov.l r13,@(0x10,r14) 
	mov.l @(r0,r14),r3
	mov.l r3,@(0x14,r14) 

loc_8c18e182:
	mov.l r5,@(0x18,r14) 
	mov.l r5,@(0x1C,r14) 
	mov 0x00,r5
	jsr @r12
	mov r11,r4
	bsr loc_8c18e1f2
	nop 
	jsr @r10
	nop 
	mov r0,r4
	tst r4,r4
	bt loc_8c18e1b6
	mov.l @(0x10,r14),r3
	mov.l r3,@(0x0C,r4) 
	mov.l @(0x14,r14),r2
	mov.l r2,@(0x10,r4) 
	mov.l @(0x2C,r14),r3
	mov.l r3,@(0x08,r4) 
	mov.l r4,@(0x2C,r14) 
	mov.l @(0x30,r14),r2
	mov.l r2,@(0x04,r4) 
	jsr @r10
	mov.l r4,@(0x30,r14) 
	mov r0,r4
	tst r4,r4
	bf loc_8c18e1ba

loc_8c18E1B6:
	bra loc_8c18E1E4
	mov 0x03,r0

loc_8c18E1BA:
	mov.l @(0x18,r14),r2
	mov 0x40,r0
	mov.l r2,@(0xc,r4)
	mov.l @(0x1c,r14),r3
	mov.l r3,@(0x10,r4)
	mov.l @(0x3c,r14),r2
	mov.l r2,@(0x8,r4)
	mov.l r4,@(0x3c,r14)
	mov.l @(r0,r14),r3
	mov.l r3,@(0x4,r4)
	mov.l r4,@(r0,r14)

loc_8c18e1d0:
	mov 0x4C,r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c18e1e2
	mov 0x54,r0
	mov.l @(r0,r14),r3
	mov 0x50,r0
	mov.l @(r0,r14),r2
	mov.l r2,@r3

loc_8c18e1e2:
	mov 0x00,r0

loc_8c18E1E4:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18e1f2:
	mov.l @(loc_8c18e264,pc),r4
	mov 0x00,r5
	mov r5,r2
	mov.l @(0x08,r4),r3
	cmp/hs r3,r2
	bt/s loc_8c18e21a
	mov r5,r6

loc_8c18e200:
	mov r6,r0
	shll r0
	mov r6,r3
	add r3,r0
	mov.l @(0x20,r4),r2
	shll2 r0
	shll r0
	add 0x01,r6
	add r2,r0
	mov.w r5,@r0
	mov.l @(0x08,r4),r3
	cmp/hs r3,r6
	bf loc_8c18e200

loc_8c18e21a:
	mov 0x40,r0
	mov r5,r6
	mov 0x00,r2
	mov.l r5,@(0x24,r4) 
	mov.l r5,@(0x28,r4) 
	mov.l r5,@(0x2C,r4) 
	mov.l r5,@(0x30,r4) 
	mov.l r5,@(0x34,r4) 
	mov.l r5,@(0x38,r4) 
	mov.l r5,@(0x3C,r4) 
	mov.l r5,@(r0,r4) 
	mov.l @(0x0C,r4),r3
	cmp/hs r3,r2
	bt/s loc_8c18e24e
	mov 0x4C,r7

loc_8c18e238:
	mul.l r7,r6
	mov 0x48,r3
	add r4,r3
	mov.l @r3,r3
	add 0x01,r6
	sts macl,r0
	add r3,r0
	mov.w r5,@r0
	mov.l @(0x0C,r4),r2
	cmp/hs r2,r6
	bf loc_8c18e238

loc_8c18e24e:
	mov 0x44,r0
	mov.l r5,@(r0,r4) 
	rts 
	mov 0x00,r0

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18e260:
	#data 0x00400000
loc_8c18e264:
	#data bank1c.loc_8c1c9b20

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18E280:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	stc sr, r0
	mov.w @(loc_8c18E340,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c18E348,pc),r1 ; r1 set to 0x8C3437F0
	mov.l @(loc_8c18E344,pc),r2 ; r2 set to 0x8C1A4E80
	mov.w @(loc_8c18E342,pc),r5 ; r5 set to 0x1840
	mov.l @(loc_8c18E34C,pc),r3 ; r3 set to 0x8C17A734
	mov.l r2,@r1 ; r1 ??
	jsr @r3
	mov r2,r4 ; r4 set to 0x8C1A4E80
	mov.l @(loc_8c18E350,pc),r13 ; r13 set to 0x8C1A4A00
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8c18E342,pc),r2 ; r2 set to 0x1840
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c18E344,pc),r4 ; r4 set to 0x8C1A4E80
	mov r13,r5 ; r5 set to 0x8C1A4A00
	mov.l @(loc_8c18E354,pc),r14 ; r14 set to 0x8C18C740
	mov.l r2,@r4 ; r4 ??
	mov.l r3,@(0x04,r4)
	jsr @r14
	mov 0x11,r4 ; r4 set to 0x11
	mov r13,r5 ; r5 set to 0x8C1A4A00
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r14
	mov 0x12,r4 ; r4 set to 0x12
	mov r13,r5 ; r5 set to 0x8C1A4A00
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r14
	mov 0x13,r4 ; r4 set to 0x13
	mov r13,r5 ; r5 set to 0x8C1A4A00
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r14
	mov 0x19,r4 ; r4 set to 0x19
	mov r13,r5 ; r5 set to 0x8C1A4A00
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r14
	mov 0x18,r4 ; r4 set to 0x18
	mov r13,r5 ; r5 set to 0x8C1A4A00
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r14
	mov 0x17,r4 ; r4 set to 0x17
	mov r13,r5 ; r5 set to 0x8C1A4A00
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r14
	mov 0x16,r4 ; r4 set to 0x16
	mov r13,r5 ; r5 set to 0x8C1A4A00
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r14
	mov 0x15,r4 ; r4 set to 0x15
	mov.l @(loc_8c18E358,pc),r5 ; r5 set to 0x8C1A4CA8
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r14
	mov 0x1C,r4 ; r4 set to 0x1C
	mov.l @(loc_8c18E358,pc),r5 ; r5 set to 0x8C1A4CA8
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r14
	mov 0x1B,r4 ; r4 set to 0x1B
	mov.l @(loc_8c18E35C,pc),r3 ; r3 set to 0xA05F6884
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r2,@r3 ; r3 ??
	mov.l @(loc_8c18E360,pc),r0 ; r0 set to 0xA05F6888
	mov 0x01,r1 ; r1 set to 0x01
	mov.l r1,@r0 ; r0 ??
	mov.l @r15,r0
	stc sr, r2
	mov.w @(loc_8c18E340,pc),r1 ; r1 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r1,r2 ; r2 ??
	shll2 r0
	or r2,r0
	ldc r0, sr
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18E340:
	#data 0xFF0F
loc_8c18E342:
	#data 0x1840
	#align4

loc_8c18E344:
	#data bank1a.loc_8c1a4E80
loc_8c18E348:
	#data 0x8C3437F0
loc_8c18E34C:
	#data bank17.loc_8c17A734
loc_8c18E350:
	#data bank1a.loc_8c1a4A00
loc_8c18E354:
	#data loc_8c18C740
loc_8c18E358:
	#data bank1a.loc_8c1a4CA8
loc_8c18E35C:
	#data 0xA05F6884
loc_8c18E360:
	#data 0xA05F6888

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18E380:
	rts
	nop

;==============================================
loc_8c18E384:
	mov 0x00,r6 ; r6 set to 0x00
	mov.w @(loc_8c18E400,pc),r7 ; r7 set to 0x80
	mov.l @(0x08,r4),r5
	mov r6,r4 ; r4 set to 0x00

loc_8c18E38C:
	mov r5,r3
	mov.l @(0x04,r5),r2
	add 0x08,r3
	add r4,r3
	mov.l r2,@r3
	mov r5,r3
	add 0x08,r3
	add r4,r3
	add 0x08,r4 ; r4 set to 0x08
	cmp/hs r7,r4
	bf/s loc_8c18E38C
	mov.l r6,@(0x04,r3)
	rts
	nop

;==============================================
loc_8c18E3A8:
	mov.l @(loc_8c18E404,pc),r3 ; r3 set to 0x8C18E384
	mov 0x00,r6 ; r6 set to 0x00
	mov.w @(loc_8c18E400,pc),r7 ; r7 set to 0x80
	mov 0x10,r2 ; r2 set to 0x10
	mov.l r3,@(0x14,r4)
	mov.l @(loc_8c18E408,pc),r3 ; r3 set to 0x8C18E380
	mov.l @(0x08,r4),r5
	mov r6,r4 ; r4 set to 0x00
	mov.l r2,@r5
	mov.l r3,@(0x04,r5)

loc_8c18E3BC:
	mov r5,r2 ; r2 ??? bc r5 is ???
	mov.l @(0x04,r5),r3 ; r3 ??? bc r5 is ???
	add 0x08,r2
	add r4,r2
	mov.l r3,@r2
	mov r5,r2
	add 0x08,r2
	add r4,r2
	add 0x08,r4 ; r4 set to 0x08
	cmp/hs r7,r4
	bf/s loc_8c18E3BC
	mov.l r6,@(0x04,r2)
	rts
	nop

;==============================================
loc_8c18E3D8:
	mov.l @(loc_8c18E410,pc),r2 ; r2 set to 0x8C343800
	mov.l @(loc_8c18E40C,pc),r3 ; r3 set to 0x8C18E3A8
	mov.l r3,@r2 ; r2 ??
	mov.l @(loc_8c18E414,pc),r1 ; r1 set to 0x8C348DE4
	mov.l @r1,r0
	mov.l @(loc_8c18E420,pc),r4 ; r4 set to 0x8C348DD0
	mov.l @(loc_8c18E41C,pc),r5 ; r5 set to 0x8C3437F4
	mov.l @(loc_8c18E418,pc),r6 ; r6 set to 0x8C34380C
	jmp @r0
	nop

;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18E400:
	#data 0x0080
	#align4

loc_8c18E404:
	#data loc_8c18E384
loc_8c18E408:
	#data loc_8c18E380
loc_8c18E40C:
	#data loc_8c18E3A8
loc_8c18E410:
	#data 0x8C343800
loc_8c18E414:
	#data 0x8C348DE4
loc_8c18E418:
	#data 0x8C34380C
loc_8c18E41C:
	#data 0x8C3437F4
loc_8c18E420:
	#data 0x8C348DD0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18E440:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c18E580,pc),r14 ; r14 set to 0x8C343894
	mov 0x0F,r2 ; r2 set to 0x0F
	mov.l @(loc_8c18E584,pc),r7 ; r7 set to 0xA05F6908
	mov.l @(0x04,r14),r3
	mov.l r3,@(0x08,r15)
	mov.l r2,@(0x04,r14)  ; r14 ??
	mov.l @(0x1C,r14),r3
	mov.l @r7,r2 ; r2 ??
	and r3,r2
	mov.l @(loc_8c18E588,pc),r13 ; r13 set to 0x8C343AE4
	mov.l r2,@(0x04,r15)
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(0x04,r15),r3
	tst r3,r3
	bt/s loc_8c18E4A4
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8c18E58C,pc),r11 ; r11 set to 0x8C1C98A8
	mov 0x04,r12 ; r12 set to 0x04

loc_8c18E474:
	mov.l @(0x04,r15),r3
	mov r5,r6 ; r6 set to 0x01
	shad r4, r6 ; r6 ??
	tst r6,r3
	bt loc_8c18E49A
	mov r4,r0 ; r0 set to 0x00
	shll2 r0 ; r0 set to 0x00
	mov.l @(r0,r11),r4 ; r4 ??
	mov.l r4,@(0x04,r14)
	mov.l r6,@r7 ; r7 ??? bc r6 is ???
	mov.l r4,@r13 ; r13 ??? bc r4 is ???
	mov r4,r13
	mov r14,r3
	shll2 r13
	add 0x30,r3
	shll2 r13
	add r3,r13
	bra loc_8c18E4F6
	nop

loc_8c18E49A:
	add 0x01,r4
	cmp/ge r12,r4
	bf loc_8c18E474
	bra loc_8c18E508
	nop

loc_8c18E4A4:
	mov.l @(0x18,r14),r3
	mov.l @(loc_8c18E590,pc),r12 ; r12 set to 0xA05F6900
	mov.l @r12,r2
	and r3,r2
	mov.l r2,@r15
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c18E508
	mov.l @(loc_8c18E598,pc),r7 ; r7 set to 0xFFA0002C
	mov 0x03,r11 ; r11 set to 0x03
	mov.l @(loc_8c18E594,pc),r8 ; r8 set to 0x8C1C9850
	mov 0x16,r1 ; r1 set to 0x16
	mov 0xFC,r10 ; r10 set to 0xFFFFFFFC

loc_8c18E4BE:
	mov.l @r15,r3
	mov r5,r6
	shad r4, r6
	tst r6,r3
	bt loc_8c18E502
	mov r4,r0
	shll2 r0
	mov.l @(r0,r8),r4
	mov r4,r0
	cmp/eq 0x12,r0
	bf/s loc_8c18E4DE
	mov.l r4,@(0x04,r14)
	mov.l @r7,r5
	and r10,r5
	bra loc_8c18E4E6
	mov.l r5,@r7

loc_8c18e4de:
	mov r4,r0
	cmp/eq 0x14,r0 
	bf loc_8c18e4e6
	or r11,r6

loc_8c18E4E6:
	mov.l r6,@r12
	mov.l r4,@r13
	mov r4,r13
	mov r14,r3
	shll2 r13
	add 0x30,r3
	shll2 r13
	add r3,r13

loc_8c18E4F6:
	mov.l @(loc_8c18E588,pc),r4 ; r4 set to 0x8C343AE4, r4 set to 0x8C343AE4
	mov.l @r13,r2
	jsr @r2
	mov.l @(0x0C,r13),r5
	bra loc_8c18E508
	nop

loc_8c18e502:
	add 0x01,r4
	cmp/ge r1,r4
	bf loc_8c18e4be

loc_8c18E508:
	mov.l @(0x08,r15),r3
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r3,@(0x04,r14)
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18E520:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c18E580,pc),r14 ; r14 set to 0x8C343894
	mov 0x0F,r2 ; r2 set to 0x0F
	mov.l @(loc_8c18E584,pc),r7 ; r7 set to 0xA05F6908
	mov.l @(0x04,r14),r3
	mov.l r3,@(0x08,r15)
	mov.l r2,@(0x04,r14)  ; r14 ??
	mov.l @(0x1C,r14),r3
	mov.l @r7,r2 ; r2 ??
	and r3,r2
	mov.l @(loc_8c18E588,pc),r13 ; r13 set to 0x8C343AE4
	mov.l @(loc_8c18E59C,pc),r12 ; r12 set to 0x8C1A4868
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r2,@(0x04,r15)
	mov.l @(0x04,r15),r3
	tst r3,r3
	bt/s loc_8c18E5A0
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8c18E58C,pc),r10 ; r10 set to 0x8C1C98A8
	mov 0x04,r11 ; r11 set to 0x04

loc_8c18E556:
	mov.l @(0x04,r15),r3
	mov r5,r6 ; r6 set to 0x01
	shad r4, r6 ; r6 ??
	tst r6,r3
	bt loc_8c18E56C
	mov r4,r0 ; r0 set to 0x00
	shll2 r0 ; r0 set to 0x00
	mov.l @(r0,r10),r4 ; r4 ??
	mov.l r4,@(0x04,r14)
	bra loc_8c18E5E0
	mov.l r6,@r7

loc_8c18E56C:
	add 0x01,r4
	cmp/ge r11,r4
	bf loc_8c18E556
	bra loc_8c18E600
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18E580:
	#data 0x8C343894
loc_8c18E584:
	#data 0xA05F6908
loc_8c18E588:
	#data 0x8C343AE4
loc_8c18E58C:
	#data bank1c.loc_8c1c98A8
loc_8c18E590:
	#data 0xA05F6900
loc_8c18E594:
	#data bank1c.loc_8c1c9850
loc_8c18E598:
	#data 0xFFA0002C
loc_8c18E59C:
	#data bank1a.loc_8c1a4868

;==============================================
loc_8c18E5A0:
	mov.l @(0x18,r14),r3
	mov.l @(loc_8c18E640,pc),r11 ; r11 set to 0xA05F6900
	mov.l @r11,r2
	and r3,r2
	mov.l r2,@r15
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c18E600
	mov.l @(loc_8c18E644,pc),r7 ; r7 set to 0xFFA0002C
	mov 0x03,r10 ; r10 set to 0x03
	mov 0xFC,r8 ; r8 set to 0xFFFFFFFC
	mov 0x16,r1 ; r1 set to 0x16

loc_8c18E5B8:
	mov.l @r15,r3
	mov r5,r6
	shad r4, r6
	tst r6,r3
	bt loc_8c18E5FA
	mov.l @(loc_8c18E648,pc),r0 ; r0 set to 0x8C1C9850
	shll2 r4
	mov.l @(r0,r4),r4
	mov r4,r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x12,r0
	bf/s loc_8c18E5D8
	mov.l r4,@(0x04,r14)
	mov.l @r7,r5
	and r8,r5
	bra loc_8c18E5DE
	mov.l r5,@r7


loc_8c18e5d8:
	cmp/eq 0x14,r0 
	bf loc_8c18e5de
	or r10,r6

loc_8c18E5DE:
	mov.l r6,@r11

loc_8c18E5E0:
	mov.l r4,@r13
	mov r4,r13
	mov r14,r3
	shll2 r13
	add 0x30,r3
	mov.l @(loc_8c18E64C,pc),r5 ; r5 set to 0x8C343AE4, r5 set to 0x8C343AE4
	shll2 r13
	add r3,r13
	mov.l @(0x0C,r13),r6
	jsr @r12
	mov.l @r13,r4
	bra loc_8c18E600
	nop

loc_8c18e5fa:
	add 0x01,r4
	cmp/ge r1,r4
	bf loc_8c18e5b8

loc_8c18E600:
	mov.l @(0x08,r15),r2
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r2,@(0x04,r14)
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18E618:
	rts
	mov 0x01,r0

;==============================================
loc_8c18E61C:
	sts.l pr,@-r15
	bsr loc_8c18E7AE
	nop
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18E640:
	#data 0xA05F6900
loc_8c18E644:
	#data 0xFFA0002C
loc_8c18E648:
	#data bank1c.loc_8c1c9850
loc_8c18E64C:
	#data 0x8C343AE4

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c18E660:
	mov.l r14,@-r15
	mov 0x00,r5
	mov.l r13,@-r15
	mov.l @(0x9C,PC),r3
	sts.l pr,@-r15
	mov.w @(0x92,PC),r6
	mov.l @(0x98,PC),r2
	mov.l r3,@(0x14,r4)
	mov.l @(0x8,r4),r14
	jsr @r2
	mov r14,r4
	mov.l @(0x94,PC),r3
	mov 0x20,r2
	mov 0x00,r13
	mov.l r3,@(0x24,r14)
	mov r2,r3
	cmp/pl r3
	mov.l r2,@r14
	bf/s loc_8c18e6b8
	mov r13,r5

loc_8c18E688:
	mov r5,r4
	mov r14,r3
	shll2 r4
	mov.l @(0x7C,PC),r2
	add 0x30,r3
	shll2 r4
	add r4,r3
	mov.l r2,@r3
	mov r14,r3
	mov r14,r2
	add 0x30,r3
	add 0x30,r2
	add r4,r3
	add r4,r2
	mov.l r13,@(0x4,r3)
	mov r14,r3
	mov.l r13,@(0x8,r2)
	add 0x30,r3
	add 0x01,r5
	add r3,r4
	mov.l r13,@(0xC,r4)
	mov.l @r14,r2
	cmp/ge r2,r5
	bf loc_8c18e688

loc_8c18E6B8:
	mov.l @(0x58,PC),r0
	mov.l @(0x54,PC),r1
	mov.l @r0,r3
	cmp/eq r1,r3
	bf loc_8c18e6c8
	mov.l @(0x54,PC),r4
	bra loc_8c18e6ca
	nop 

loc_8c18E6C8:
	mov.l @(0x50,PC),r4

loc_8c18E6CA:
	bsr loc_8c18e740
	nop 
	mov.w @(0x30,PC),r0
	mov 0x0E,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l r13,@(r0,r14)
	mov 0x00,r0
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18E6E2:
	mov.l @(loc_8c18E724,pc),r2 ; r2 set to 0x8C343AD8
	mov.l @(loc_8c18E720,pc),r3 ; r3 set to 0x8C18E660
	mov.l @(loc_8c18E728,pc),r1 ; r1 set to 0x8C348DE4
	mov.l r3,@r2 ; r2 ??
	mov.l @r1,r0
	mov.l @(loc_8c18E734,pc),r4 ; r4 set to 0x8C348DD0
	mov.l @(loc_8c18E730,pc),r5 ; r5 set to 0x8C343ACC
	mov.l @(loc_8c18E72C,pc),r6 ; r6 set to 0x8C343894
	jmp @r0
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18E700:
	#data 0x0238
loc_8c18E702:
	#data 0x0230
	#align4

loc_8c18E704:
	#data loc_8c18E61C
loc_8c18E708:
	#data bank12.loc_8c129728
loc_8c18E70C:
	#data loc_8c18E618
loc_8c18E710:
	#data 0x00010000
loc_8c18E714:
	#data 0x8C343B10
loc_8c18E718:
	#data loc_8c18E520
loc_8c18E71C:
	#data loc_8c18E440
loc_8c18E720:
	#data loc_8c18E660
loc_8c18E724:
	#data 0x8C343AD8
loc_8c18E728:
	#data 0x8C348DE4
loc_8c18E72C:
	#data 0x8C343894
loc_8c18E730:
	#data 0x8C343ACC
loc_8c18E734:
	#data 0x8C348DD0

;==============================================
	#align16_nop

;==============================================
loc_8c18E740:
	stc sr,r0
	mov.l @(0xE0,PC),r5
	mov.l @(0xE0,PC),r6
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0x8,r5)
	mov.l @r6,r3
	mov.l @(0xD8,PC),r7
	mov.l r3,@(0xC,r5)
	mov.l @r7,r2
	stc sr,r0
	mov.w @(0xC4,PC),r3
	mov.l r2,@(0x10,r5)
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	stc vbr,r1
	mov.w @(0xBA,PC),r0
	mov.l @(r0,r1),r1
	cmp/eq r1,r4
	bt loc_8c18e778
	stc vbr,r2
	mov r0,r3
	mov.l r1,@(0x28,r5)
	mov.l r4,@(0x2C,r5)
	add r3,r2
	mov.l r4,@r2

loc_8c18E778:
	mov 0x00,r4
	mov.l r4,@r6
	mov.l r4,@r7
	mov.l @(0xB0,PC),r2
	mov 0xFF,r4
	mov.l r4,@r2
	mov.l @(0xAC,PC),r3
	mov.l r4,@r3
	mov.l @(0xAC,PC),r1
	mov 0x0E,r0
	mov.l r1,@(0x18,r5)
	mov.l r0,@(0x1C,r5)
	mov.l @(0x18,r5),r1
	mov.l r1,@r6
	mov.l @(0x1C,r5),r0
	mov.l r0,@r7
	mov.l @(0x8,r5),r0
	stc sr,r1
	mov.w @(0x80,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r1
	shll2 r0
	or r1,r0
	ldc r0,sr
	rts 
	nop 

;==============================================
loc_8c18e7ae:
	stc sr, r0
	mov.l @(loc_8C18E824,pc),r4
	mov.l @(loc_8C18E828,pc),r6
	shlr2 r0
	shlr2 r0
	and 0x0F,r0 
	mov.l r0,@(0x08,r4) 
	mov.l @r6,r3
	mov.l @(loc_8C18E82C,pc),r7
	mov.l r3,@(0x0C,r4) 
	mov.l @r7,r2
	stc sr, r0
	mov.w @(loc_8C18E820,pc),r3
	mov.l r2,@(0x10,r4) 
	and r3,r0
	or 0xF0,r0 
	ldc r0, sr 
	stc vbr, r5
	mov.w @(loc_8C18E822,pc),r0
	mov.l @(0x2C,r4),r3
	mov.l @(r0,r5),r5
	cmp/eq r5,r3
	bt/s loc_8c18e7e8
	mov 0x00,r5
	stc vbr, r1
	mov.l @(0x28,r4),r2
	mov r0,r3
	add r3,r1
	mov.l r2,@r1

loc_8c18e7e8:
	mov.l r5,@r6
	mov.l r5,@r7
	mov.l @(loc_8C18E830,pc),r2
	mov 0xFF,r3
	mov.l r3,@r2
	mov.l @(loc_8C18E834,pc),r0
	mov.l r3,@r0
	mov.l r5,@(0x18,r4) 
	mov.l r5,@(0x1C,r4) 
	mov.l @(0x18,r4),r3
	mov.l r3,@r6
	mov.l @(0x1C,r4),r1
	mov.l r1,@r7
	mov.l @(0x08,r4),r0
	stc sr, r3
	mov.w @(loc_8C18E820,pc),r1
	and 0x0F,r0 
	shll2 r0
	and r1,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 
	rts 
	nop 

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C18E820:
	#data 0xFF0F
loc_8C18E822:
	#data 0x0224
	#align4

loc_8C18E824:
	#data 0x8C343894
loc_8C18E828:
	#data 0xA05F6930
loc_8C18E82C:
	#data 0xA05F6938
loc_8C18E830:
	#data 0xA05F6900
loc_8C18E834:
	#data 0xA05F6908
loc_8C18E838:
	#data 0x00280FEC

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c18E840:
	sts.l pr,@-r15
	mov.w @(loc_8c18E8C0,pc),r0 ; r0 set to 0xFF04
	add r0,r15
	mov.l @(loc_8c18E8D8,pc),r2 ; r2 set to 0x8C190C58
	mov.l @(loc_8c18E8D4,pc),r3 ; r3 set to 0x8C343430
	jsr @r2
	mov.l r4,@r3 ; r3 ??? bc r4 is ???
	mov.w @(loc_8c18E8C2,pc),r3 ; r3 set to 0x353
	mov 0x01,r4 ; r4 set to 0x01
	mov.l r3,@(0x08,r15)
	mov.l @(loc_8c18E8D4,pc),r3 ; r3 set to 0x8C343430
	mov.l @r3,r0 ; r0 ??
	and r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18E870
	mov.l @(loc_8c18E8D4,pc),r2 ; r2 set to 0x8C343430
	mov.l @r2,r0
	tst 0x2C,r0
	bt loc_8c18E870
	tst r4,r4
	bt loc_8c18E870
	mov.w @(loc_8c18E8C4,pc),r3 ; r3 set to 0x218
	bra loc_8c18E874
	mov.l r3,@(0x14,r15)

loc_8c18E870:
	mov.w @(loc_8c18E8C6,pc),r1 ; r1 set to 0x10C
	mov.l r1,@(0x14,r15)

loc_8c18E874:
	mov.w @(loc_8c18E8C8,pc),r3 ; r3 set to 0x8C, r3 set to 0x8C
	mov.w @(loc_8c18E8CA,pc),r2 ; r2 set to 0x334, r2 set to 0x334
	mov.l r3,@r15
	mov.l @(loc_8c18E8D4,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
	mov.l r2,@(0x04,r15)
	mov.l @r3,r0
	and r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18E89C
	mov.l @(loc_8c18E8D4,pc),r2 ; r2 set to 0x8C343430, r2 set to 0x8C343430
	mov.l @r2,r0
	tst 0x2C,r0
	bt loc_8c18E89C
	tst r4,r4
	bt loc_8c18E89C
	mov.w @(loc_8c18E8CC,pc),r2 ; r2 set to 0x214, r2 set to 0x214
	mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.l r3,@(0x0C,r15)
	bra loc_8c18E8A4
	mov.l r2,@(0x10,r15)

loc_8c18E89C:
	mov.w @(loc_8c18E8CE,pc),r3 ; r3 set to 0x10A
	mov 0x12,r1 ; r1 set to 0x12
	mov.l r1,@(0x0C,r15)
	mov.l r3,@(0x10,r15)

loc_8c18E8A4:
	mov.l @(loc_8c18E8D4,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
	mov 0x57,r2 ; r2 set to 0x57, r2 set to 0x57
	mov.l r2,@(0x18,r15)
	mov.l @r3,r0
	tst 0x20,r0
	bt/s loc_8c18E8E0
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	mov.w @(loc_8c18E8D0,pc),r1 ; r1 set to 0x104, r1 set to 0x104
	bra loc_8c18E8E2
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18E8C0:
	#data 0xFF04
loc_8c18E8C2:
	#data 0x0353
loc_8c18E8C4:
	#data 0x0218
loc_8c18E8C6:
	#data 0x010C
loc_8c18E8C8:
	#data 0x008C
loc_8c18E8CA:
	#data 0x0334
loc_8c18E8CC:
	#data 0x0214
loc_8c18E8CE:
	#data 0x010A
loc_8c18E8D0:
	#data 0x0104
	#align4

loc_8c18E8D4:
	#data 0x8C343430
loc_8c18E8D8:
	#data bank19.loc_8c190C58

;==============================================
	#align16_nop

;==============================================
loc_8c18E8E0:
	mov.w @(loc_8c18E960,pc),r1 ; r1 set to 0x102

loc_8c18E8E2:
	mov 0x74,r0 ; r0 set to 0x74, r0 set to 0x74
	mov.l @(loc_8c18E968,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
	mov.l r1,@(r0,r15)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	mov.l r5,@(r0,r15)
	mov.l @r3,r0 ; r0 ??, r0 ??
	and r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18E906
	mov.l @(loc_8c18E968,pc),r2 ; r2 set to 0x8C343430, r2 set to 0x8C343430
	mov.l @r2,r0
	tst 0x2C,r0
	bt loc_8c18E906
	tst r4,r4
	bt loc_8c18E906
	mov 0x0C,r3 ; r3 set to 0x0C, r3 set to 0x0C
	bra loc_8c18E90A
	mov.l r3,@(0x1C,r15)

loc_8c18E906:
	mov 0x06,r1 ; r1 set to 0x06
	mov.l r1,@(0x1C,r15)

loc_8c18E90A:
	mov.l @(loc_8c18E968,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
	mov.l @r3,r0
	and r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18E926
	mov.l @(loc_8c18E968,pc),r2 ; r2 set to 0x8C343430, r2 set to 0x8C343430
	mov.l @r2,r0
	tst 0x2C,r0
	bt loc_8c18E926
	tst r4,r4
	bt loc_8c18E926
	mov.w @(loc_8c18E962,pc),r3 ; r3 set to 0x16C, r3 set to 0x16C
	bra loc_8c18E92A
	mov.l r3,@(0x20,r15)

loc_8c18E926:
	mov.w @(loc_8c18E964,pc),r1 ; r1 set to 0x319
	mov.l r1,@(0x20,r15)

loc_8c18E92A:
	mov.l @(loc_8c18E968,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
	mov.l @r3,r0
	and r4,r0
	cmp/eq 0x01,r0
	bt loc_8c18E980
	mov.l @(loc_8c18E968,pc),r2 ; r2 set to 0x8C343430, r2 set to 0x8C343430
	mov.l @r2,r0
	tst 0x2C,r0
	bt loc_8c18E980
	tst r4,r4
	bt loc_8c18E980
	mov 0x1F,r3 ; r3 set to 0x1F, r3 set to 0x1F
	bra loc_8c18E984
	mov.l r3,@(0x24,r15)

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18E960:
	#data 0x0102
loc_8c18E962:
	#data 0x016C
loc_8c18E964:
	#data 0x0319
	#align4

loc_8c18E968:
	#data 0x8C343430

;==============================================
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18E980:
	mov 0x0F,r1 ; r1 set to 0x0F
	mov.l r1,@(0x24,r15)

loc_8c18E984:
	mov.l @(loc_8c18E9E0,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.l r4,@(0x28,r15)
	mov.l r5,@(0x2C,r15)
	mov.l @r3,r0
	and r4,r0
	cmp/eq 0x01,r0
	bf loc_8c18E99C
	tst r5,r5
	bt loc_8c18E9B4
	bra loc_8c18E9B0
	nop

loc_8c18E99C:
	mov.l @(loc_8c18E9E0,pc),r2 ; r2 set to 0x8C343430
	mov.l @r2,r0
	tst 0x2C,r0
	bt loc_8c18E9AC
	tst r4,r4
	bt loc_8c18E9B4
	bra loc_8c18E9B0
	nop

loc_8c18E9AC:
	tst r5,r5
	bt loc_8c18E9B4

loc_8c18E9B0:
	bra loc_8c18E9B6
	mov.l r4,@(0x30,r15)

loc_8c18E9B4:
	mov.l r5,@(0x30,r15)

loc_8c18E9B6:
	mov 0x40,r0 ; r0 set to 0x40, r0 set to 0x40
	mov.l @(loc_8c18E9E0,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
	mov 0x16,r7 ; r7 set to 0x16, r7 set to 0x16
	mov.l r5,@(0x34,r15)
	mov.l r5,@(0x38,r15)
	mov.l r5,@(0x3C,r15)
	mov.l r5,@(r0,r15)
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	mov.l r5,@(r0,r15)
	mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
	mov.l r7,@(r0,r15)
	mov.l @r3,r0 ; r0 ??, r0 ??
	tst 0x10,r0
	bt loc_8c18EA00
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C
	bra loc_8c18EA04
	mov.l r5,@(r0,r15)

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18E9E0:
	#data 0x8C343430

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18EA00:
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l r4,@(r0,r15)

loc_8c18EA04:
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.w @(loc_8c18EA60,pc),r3 ; r3 set to 0xA0, r3 set to 0xA0
	mov.l r4,@(r0,r15)
	mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
	mov.l r5,@(r0,r15)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	mov.l r5,@(r0,r15)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	mov.l r5,@(r0,r15)
	mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
	mov.l r5,@(r0,r15)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	mov.l r5,@(r0,r15)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov.l r5,@(r0,r15)
	mov.w @(loc_8c18EA62,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
	mov.w @(loc_8c18EA64,pc),r2 ; r2 set to 0x1E0, r2 set to 0x1E0
	mov.l r3,@(r0,r15)
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
	mov.l r2,@(r0,r15)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov.l @(loc_8c18EA68,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
	mov.l r5,@(r0,r15)
	mov.l @r3,r0 ; r0 ??, r0 ??
	and r4,r0
	cmp/eq 0x01,r0
	bf/s loc_8c18EA44
	mov 0x17,r6 ; r6 set to 0x17, r6 set to 0x17
	tst r5,r5
	bt loc_8c18EA80
	bra loc_8c18EA58
	nop

loc_8c18EA44:
	mov.l @(loc_8c18EA68,pc),r2 ; r2 set to 0x8C343430
	mov.l @r2,r0
	tst 0x2C,r0
	bt loc_8c18EA54
	tst r4,r4
	bt loc_8c18EA80
	bra loc_8c18EA58
	nop

loc_8c18EA54:
	tst r5,r5
	bt loc_8c18EA80

loc_8c18EA58:
	mov.w @(loc_8c18EA66,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
	bra loc_8c18EA84
	mov.l r6,@(r0,r15)

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18EA60:
	#data 0x00A0

loc_8c18EA62:
	#data 0x00F8
loc_8c18EA64:
	#data 0x01E0
loc_8c18EA66:
	#data 0x00F0
	#align4

loc_8c18EA68:
	#data 0x8C343430


;==============================================
	nop 
	nop 
	nop 
	nop 
	#align16_nop

;==============================================
loc_8c18EA80:
	mov.w @(loc_8c18EAC0,pc),r0 ; r0 set to 0xF0
	mov.l r7,@(r0,r15)

loc_8c18EA84:
	mov.w @(loc_8c18EAC2,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
	mov.w @(loc_8c18EAC0,pc),r3 ; r3 set to 0xF0, r3 set to 0xF0
	mov.l @(loc_8c18EAC8,pc),r2 ; r2 set to 0x8C3434E4, r2 set to 0x8C3434E4
	mov.l r6,@(r0,r15)
	mov.l r3,@r2 ; r2 ??, r2 ??
	mov.l @(0x0C,r15),r1
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov r2,r0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
	cmp/gt r1,r3
	addc r3,r1
	shar r1
	mov.l @r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
	add r3,r1
	mov.l @(loc_8c18EACC,pc),r3 ; r3 set to 0x8C3434DC, r3 set to 0x8C3434DC
	mov.l r1,@r3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	mov.l @(loc_8c18EAD0,pc),r1 ; r1 set to 0x8C3434E0, r1 set to 0x8C3434E0
	mov.l @(0x0C,r15),r2
	mov.l r2,@r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
	mov.l @(loc_8c18EAD4,pc),r0 ; r0 set to 0x8C343438, r0 set to 0x8C343438
	mov.l @r0,r2
	jsr @r2
	mov r15,r4
	mov.w @(loc_8c18EAC4,pc),r1 ; r1 set to 0xFC, r1 set to 0xFC
	add r1,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18EAC0:
	#data 0x00F0
loc_8c18EAC2:
	#data 0x00F4
loc_8c18EAC4:
	#data 0x00FC
	#align4

loc_8c18EAC8:
	#data 0x8C3434E4
loc_8c18EACC:
	#data 0x8C3434DC
loc_8c18EAD0:
	#data 0x8C3434E0
loc_8c18EAD4:
	#data 0x8C343438

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c18EAE0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c18EBE0,pc),r0 ; r0 set to 0xFF04
	add r0,r15
	mov.l @(loc_8c18EBFC,pc),r3 ; r3 set to 0x8C343430
	mov r4,r13
	mov.l r4,@r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8c18EC00,pc),r2 ; r2 set to 0x8C190C58
	jsr @r2
	mov r13,r4
	mov.w @(loc_8c18EBE2,pc),r3 ; r3 set to 0x353
	mov 0x74,r0 ; r0 set to 0x74
	mov.w @(loc_8c18EBE4,pc),r2 ; r2 set to 0x211
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r3,@(0x08,r15)
	mov 0x24,r5 ; r5 set to 0x24
	mov.w @(loc_8c18EBE6,pc),r3 ; r3 set to 0x88
	mov.w @(loc_8c18EBEA,pc),r4 ; r4 set to 0x208
	mov.l r2,@(0x14,r15)
	mov.l r3,@r15
	mov 0x51,r3 ; r3 set to 0x51
	mov.w @(loc_8c18EBE8,pc),r2 ; r2 set to 0x343
	mov.l r2,@(0x04,r15)
	mov 0x03,r2 ; r2 set to 0x03
	mov.l r5,@(0x0C,r15)
	mov.l r4,@(0x10,r15)
	mov.l r3,@(0x18,r15)
	mov.w @(loc_8c18EBEC,pc),r3 ; r3 set to 0x319
	mov.l r2,@(0x1C,r15)
	mov 0x0F,r2 ; r2 set to 0x0F
	mov.l r3,@(0x20,r15)
	mov 0x15,r3 ; r3 set to 0x15
	mov.l r2,@(0x24,r15)
	mov.l r4,@(r0,r15)
	mov 0x78,r0 ; r0 set to 0x78
	mov.l r3,@(r0,r15)
	mov 0x40,r0 ; r0 set to 0x40
	mov.l r14,@(0x34,r15)
	mov.l r14,@(0x38,r15)
	mov.l r14,@(0x3C,r15)
	mov.l r14,@(r0,r15)
	mov 0x44,r0 ; r0 set to 0x44
	mov.l r14,@(r0,r15)
	mov 0x70,r0 ; r0 set to 0x70
	mov 0x16,r3 ; r3 set to 0x16
	mov.l r3,@(r0,r15)
	mov 0x10,r3 ; r3 set to 0x10
	tst r3,r13
	bt/s loc_8c18EB4C
	mov 0x01,r4 ; r4 set to 0x01
	mov 0x6C,r0 ; r0 set to 0x6C
	bra loc_8c18EB50
	mov.l r14,@(r0,r15)

loc_8c18EB4C:
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l r4,@(r0,r15)

loc_8c18EB50:
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.w @(loc_8c18EBEE,pc),r6 ; r6 set to 0x1E0, r6 set to 0x1E0
	mov.w @(loc_8c18EBF0,pc),r3 ; r3 set to 0x90, r3 set to 0x90
	mov.l r14,@(0x28,r15)
	mov.l r14,@(0x2C,r15)
	mov.l r14,@(0x30,r15)
	mov.l r4,@(r0,r15)
	mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
	mov.l r14,@(r0,r15)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	mov.l r14,@(r0,r15)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	mov.l r14,@(r0,r15)
	mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
	mov.l r14,@(r0,r15)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	mov.l r14,@(r0,r15)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov.l r14,@(r0,r15)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov.l r14,@(r0,r15)
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
	mov.l r6,@(r0,r15)
	mov 0x23,r4 ; r4 set to 0x23, r4 set to 0x23
	mov.w @(loc_8c18EBF2,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
	mov.l r3,@(r0,r15)
	add 0x15,r3 ; r3 set to 0xA5, r3 set to 0xA5
	mov.w @(loc_8c18EBF4,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
	mov.l r4,@(r0,r15)
	mov.w @(loc_8c18EBF6,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
	mov.l r4,@(r0,r15)
	mov.w @(loc_8c18EBF2,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
	mov.l r3,@(r0,r15)
	mov.w @(loc_8c18EBF4,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
	mov.l @(loc_8c18EC04,pc),r3 ; r3 set to 0x8C3434E4, r3 set to 0x8C3434E4
	mov.l r5,@(r0,r15)
	mov.w @(loc_8c18EBF6,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
	mov.l r5,@(r0,r15)
	mov.l r6,@r3 ; r3 ??, r3 ??
	mov r3,r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???
	mov.l @r0,r2
	mov.l @(0x0C,r15),r1
	add r2,r1
	mov.l @(loc_8c18EC08,pc),r2 ; r2 set to 0x8C3434DC, r2 set to 0x8C3434DC
	mov.l r1,@r2 ; r2 ??? bc r1 is ???, r2 ??? bc r1 is ???
	mov.l @(loc_8c18EC0C,pc),r1 ; r1 set to 0x8C3434E0, r1 set to 0x8C3434E0
	mov.l @(0x0C,r15),r0
	mov.l r0,@r1 ; r1 ??? bc r0 is ???, r1 ??? bc r0 is ???
	mov.l @(loc_8c18EC10,pc),r0 ; r0 set to 0x8C343438, r0 set to 0x8C343438
	mov.l @r0,r3
	jsr @r3
	mov r15,r4 ; r4 ??? bc r15 is ???, r4 ??? bc r15 is ???
	mov.w @(loc_8c18EBF8,pc),r1 ; r1 set to 0xFC, r1 set to 0xFC
	mov r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	add r1,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18EBE0:
	#data 0xFF04
loc_8c18EBE2:
	#data 0x0353
loc_8c18EBE4:
	#data 0x0211
loc_8c18EBE6:
	#data 0x0088
loc_8c18EBE8:
	#data 0x0343
loc_8c18EBEA:
	#data 0x0208
loc_8c18EBEC:
	#data 0x0319
loc_8c18EBEE:
	#data 0x01E0
loc_8c18EBF0:
	#data 0x0090
loc_8c18EBF2:
	#data 0x00F8
loc_8c18EBF4:
	#data 0x00F0
loc_8c18EBF6:
	#data 0x00F4
loc_8c18EBF8:
	#data 0x00FC
	#align4

loc_8c18EBFC:
	#data 0x8C343430
loc_8c18EC00:
	#data bank19.loc_8c190C58
loc_8c18EC04:
	#data 0x8C3434E4
loc_8c18EC08:
	#data 0x8C3434DC
loc_8c18EC0C:
	#data 0x8C3434E0
loc_8c18EC10:
	#data 0x8C343438

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c18EC20:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c18ECA0,pc),r0 ; r0 set to 0xFF04
	add r0,r15
	mov.l @(loc_8c18ECB0,pc),r3 ; r3 set to 0x8C343430
	mov r4,r14
	mov.l r4,@r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8c18ECB4,pc),r2 ; r2 set to 0x8C190C58
	jsr @r2
	mov r14,r4
	mov 0x01,r6 ; r6 set to 0x01
	mov r14,r5
	and r6,r5
	mov.w @(loc_8c18ECA2,pc),r3 ; r3 set to 0x359
	mov r5,r0 ; r0 ??? bc r5 is ???
	cmp/eq 0x01,r0
	mov.l r3,@(0x08,r15)
	bt loc_8c18EC54
	mov 0x2C,r3 ; r3 set to 0x2C
	tst r14,r3
	bt loc_8c18EC54
	tst r6,r6
	bt loc_8c18EC54
	mov.w @(loc_8c18ECA4,pc),r2 ; r2 set to 0x20C
	bra loc_8c18EC58
	mov.l r2,@(0x14,r15)

loc_8c18EC54:
	mov.w @(loc_8c18ECA6,pc),r1 ; r1 set to 0x106
	mov.l r1,@(0x14,r15)

loc_8c18EC58:
	mov.w @(loc_8c18ECA8,pc),r2 ; r2 set to 0x345, r2 set to 0x345
	mov r5,r0
	mov.w @(loc_8c18ECAA,pc),r4 ; r4 set to 0x102, r4 set to 0x102
	mov 0x7E,r3 ; r3 set to 0x7E, r3 set to 0x7E
	cmp/eq 0x01,r0
	mov.l r3,@r15
	mov.l r2,@(0x04,r15)
	bt/s loc_8c18EC7A
	mov 0x12,r7 ; r7 set to 0x12, r7 set to 0x12
	mov 0x2C,r3 ; r3 set to 0x2C, r3 set to 0x2C
	tst r14,r3
	bt loc_8c18EC7A
	mov.w @(loc_8c18ECAC,pc),r3 ; r3 set to 0x204, r3 set to 0x204
	mov 0x24,r2 ; r2 set to 0x24, r2 set to 0x24
	mov.l r2,@(0x0C,r15)
	bra loc_8c18EC7E
	mov.l r3,@(0x10,r15)

loc_8c18EC7A:
	mov.l r7,@(0x0C,r15)
	mov.l r4,@(0x10,r15)

loc_8c18EC7E:
	mov 0x20,r2 ; r2 set to 0x20, r2 set to 0x20
	mov 0x3F,r3 ; r3 set to 0x3F, r3 set to 0x3F
	tst r14,r2
	mov.l r3,@(0x18,r15)
	bt loc_8c18ECC0
	mov.w @(loc_8c18ECAE,pc),r1 ; r1 set to 0x104, r1 set to 0x104
	mov 0x74,r0 ; r0 set to 0x74, r0 set to 0x74
	bra loc_8c18ECC4
	mov.l r1,@(r0,r15)

;==============================================
	nop 
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18ECA0:
	#data 0xFF04
loc_8c18ECA2:
	#data 0x0359
loc_8c18ECA4:
	#data 0x020C
loc_8c18ECA6:
	#data 0x0106
loc_8c18ECA8:
	#data 0x0345
loc_8c18ECAA:
	#data 0x0102
loc_8c18ECAC:
	#data 0x0204
loc_8c18ECAE:
	#data 0x0104
	#align4

loc_8c18ECB0:
	#data 0x8C343430
loc_8c18ECB4:
	#data bank19.loc_8c190C58

;==============================================
	#align16_nop

;==============================================
loc_8c18ECC0:
	mov 0x74,r0 ; r0 set to 0x74
	mov.l r4,@(r0,r15)

loc_8c18ECC4:
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	mov 0x15,r3 ; r3 set to 0x15, r3 set to 0x15
	mov.l r3,@(r0,r15)
	mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	cmp/eq 0x01,r0
	bt loc_8c18ECDC
	mov 0x2C,r3 ; r3 set to 0x2C, r3 set to 0x2C
	tst r14,r3
	bt loc_8c18ECDC
	mov 0x06,r2 ; r2 set to 0x06, r2 set to 0x06
	bra loc_8c18ECE0
	mov.l r2,@(0x1C,r15)

loc_8c18ECDC:
	mov 0x03,r1 ; r1 set to 0x03
	mov.l r1,@(0x1C,r15)

loc_8c18ECE0:
	mov r5,r0
	cmp/eq 0x01,r0
	bt loc_8c18ECF2
	mov 0x2C,r3 ; r3 set to 0x2C, r3 set to 0x2C
	tst r14,r3
	bt loc_8c18ECF2
	mov.w @(loc_8c18ED20,pc),r2 ; r2 set to 0x16C, r2 set to 0x16C
	bra loc_8c18ECF6
	mov.l r2,@(0x20,r15)

loc_8c18ECF2:
	mov.w @(loc_8c18ED22,pc),r1 ; r1 set to 0x319
	mov.l r1,@(0x20,r15)

loc_8c18ECF6:
	mov r5,r0
	cmp/eq 0x01,r0
	bt loc_8c18ED08
	mov 0x2C,r3 ; r3 set to 0x2C, r3 set to 0x2C
	tst r14,r3
	bt loc_8c18ED08
	mov 0x1F,r2 ; r2 set to 0x1F, r2 set to 0x1F
	bra loc_8c18ED0C
	mov.l r2,@(0x24,r15)

loc_8c18ED08:
	mov 0x0F,r1 ; r1 set to 0x0F
	mov.l r1,@(0x24,r15)

loc_8c18ED0C:
	mov r5,r0
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	cmp/eq 0x01,r0
	mov.l r6,@(0x28,r15)
	mov.l r4,@(0x2C,r15)
	bf loc_8c18ED40
	tst r4,r4
	bt loc_8c18ED56
	bra loc_8c18ED52
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18ED20:
	#data 0x016C
loc_8c18ED22:
	#data 0x0319

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18ED40:
	mov 0x2C,r3 ; r3 set to 0x2C
	tst r14,r3
	bt loc_8c18ED4E
	tst r6,r6
	bt loc_8c18ED56
	bra loc_8c18ED52
	nop

loc_8c18ED4E:
	tst r4,r4
	bt loc_8c18ED56

loc_8c18ED52:
	bra loc_8c18ED58
	mov.l r6,@(0x30,r15)

loc_8c18ED56:
	mov.l r4,@(0x30,r15)

loc_8c18ED58:
	mov 0x40,r0 ; r0 set to 0x40, r0 set to 0x40
	mov.l r4,@(0x34,r15)
	mov 0x16,r3 ; r3 set to 0x16, r3 set to 0x16
	mov.l r4,@(0x38,r15)
	mov 0x10,r2 ; r2 set to 0x10, r2 set to 0x10
	mov.l r4,@(0x3C,r15)
	mov.l r4,@(r0,r15)
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	mov.l r4,@(r0,r15)
	mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
	tst r14,r2
	mov.l r3,@(r0,r15)
	bt loc_8c18ED78
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C
	bra loc_8c18ED7C
	mov.l r4,@(r0,r15)

loc_8c18ED78:
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l r6,@(r0,r15)

loc_8c18ED7C:
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.w @(loc_8c18EDC0,pc),r3 ; r3 set to 0xA4, r3 set to 0xA4
	mov.l r6,@(r0,r15)
	mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
	mov.l r4,@(r0,r15)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	mov.l r4,@(r0,r15)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	mov.l r4,@(r0,r15)
	mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
	mov.l r4,@(r0,r15)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	mov.l r4,@(r0,r15)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov.l r4,@(r0,r15)
	mov.w @(loc_8c18EDC2,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
	mov.w @(loc_8c18EDC4,pc),r2 ; r2 set to 0x1E0, r2 set to 0x1E0
	mov.l r3,@(r0,r15)
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
	mov.l r2,@(r0,r15)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov.l r4,@(r0,r15)
	mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	cmp/eq 0x01,r0
	bf loc_8c18EDE0
	tst r4,r4
	bt loc_8c18EDF8
	bra loc_8c18EDF2
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18EDC0:
	#data 0x00A4
loc_8c18EDC2:
	#data 0x00F8
loc_8c18EDC4:
	#data 0x01E0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18EDE0:
	mov 0x2C,r3 ; r3 set to 0x2C
	tst r3,r14
	bt loc_8c18EDEE
	tst r6,r6
	bt loc_8c18EDF8
	bra loc_8c18EDF2
	nop

loc_8c18EDEE:
	tst r4,r4
	bt loc_8c18EDF8

loc_8c18EDF2:
	mov.w @(loc_8c18EE40,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
	bra loc_8c18EDFE
	mov.l r7,@(r0,r15)

loc_8c18EDF8:
	mov.w @(loc_8c18EE40,pc),r0 ; r0 set to 0xF0
	mov 0x11,r2 ; r2 set to 0x11
	mov.l r2,@(r0,r15)

loc_8c18EDFE:
	mov.w @(loc_8c18EE42,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
	mov.w @(loc_8c18EE40,pc),r3 ; r3 set to 0xF0, r3 set to 0xF0
	mov.l @(loc_8c18EE48,pc),r2 ; r2 set to 0x8C3434E4, r2 set to 0x8C3434E4
	mov.l r7,@(r0,r15)
	mov.l r3,@r2 ; r2 ??, r2 ??
	mov.l @(0x0C,r15),r1
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov r2,r0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
	cmp/gt r1,r3
	addc r3,r1
	shar r1
	mov.l @r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
	add r3,r1
	mov.l @(loc_8c18EE4C,pc),r3 ; r3 set to 0x8C3434DC, r3 set to 0x8C3434DC
	mov.l r1,@r3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	mov.l @(loc_8c18EE50,pc),r1 ; r1 set to 0x8C3434E0, r1 set to 0x8C3434E0
	mov.l @(0x0C,r15),r2
	mov.l r2,@r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
	mov.l @(loc_8c18EE54,pc),r0 ; r0 set to 0x8C343438, r0 set to 0x8C343438
	mov.l @r0,r2
	jsr @r2
	mov r15,r4
	mov.w @(loc_8c18EE44,pc),r1 ; r1 set to 0xFC, r1 set to 0xFC
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	add r1,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18EE40:
	#data 0x00F0
loc_8c18EE42:
	#data 0x00F4
loc_8c18EE44:
	#data 0x00FC
	#align4

loc_8c18EE48:
	#data 0x8C3434E4
loc_8c18EE4C:
	#data 0x8C3434DC
loc_8c18EE50:
	#data 0x8C3434E0
loc_8c18EE54:
	#data 0x8C343438

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c18EE60:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(0xB2,PC),r0
	add r0,r15
	mov.l @(0xC0,PC),r3
	mov r4,r14
	mov.l r4,@r3
	mov.l @(0xBC,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x42,r12
	and r14,r12
	mov r12,r0
	cmp/eq 0x42,r0
	mov 0x20,r13
	bf/s loc_8c18eeca
	and r14,r13
	mov.l @(0xAC,PC),r2
	mov r15,r3
	mov.l @r2,r1
	mov.l @(0x4,r2),r0
	mov.l r1,@r3
	mov.l r0,@(0x4,r3)
	mov.l @(0x8,r2),r1
	mov.l @(0xC,r2),r0
	mov.l r1,@(0x8,r3)
	mov.l r0,@(0xC,r3)
	mov.l @(0x10,r2),r1
	mov.l r1,@(0x10,r3)
	bsr loc_8c18f200
	mov r14,r4
	mov.l @(0x94,PC),r2
	mov.l r0,@r2
	mov r2,r1
	mov.l @r1,r3
	mov r15,r0
	tst r13,r13
	shll2 r3
	mov.l @(r0,r3),r2
	mov.l @(0x88,PC),r3
	bf/s loc_8c18eeca
	mov.l r2,@r3
	mov.l @(0x84,PC),r1
	mov.l @r1,r2
	mov 0x00,r1
	mov.l @(0x7C,PC),r3
	cmp/gt r2,r1
	addc r1,r2
	shar r2
	mov.l r2,@r3

loc_8c18EECA:
	mov.w @(0x56,PC),r3
	mov r14,r5
	mov 0x01,r6
	mov.w @(0x52,PC),r2
	and r6,r5
	mov.w @(0x4A,PC),r1
	mov r5,r0
	cmp/eq 0x01,r0
	mov.l r1,@(0x1C,r15)
	mov.l r3,@(0x14,r15)
	mov 0x3F,r3
	mov.l r2,@(0x18,r15)
	mov.l r3,@(0x2C,r15)
	bt loc_8c18eef6
	mov 0x2C,r3
	tst r14,r3
	bt loc_8c18eef6
	tst r6,r6
	bt loc_8c18eef6
	mov.w @(0x34,PC),r2
	bra loc_8c18eefa
	mov.l r2,@(0x28,r15)

loc_8c18EEF6:
	mov.w @(0x30,PC),r1
	mov.l r1,@(0x28,r15)

loc_8c18EEFA:
	mov r12,r0
	mov.w @(0x2E,PC),r4
	mov.w @(0x2A,PC),r7
	cmp/eq 0x42,r0
	bf/s loc_8c18ef76
	mov 0x16,r11
	mov r5,r0
	cmp/eq 0x01,r0
	bt loc_8c18ef60
	mov 0x2C,r3
	tst r14,r3
	bt loc_8c18ef60
	mov 0x2C,r2
	mov.l r2,@(0x20,r15)
	bra loc_8c18ef64
	mov.l r7,@(0x24,r15)

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18ef20:
	#data 0xFEF0
loc_8c18ef22:
	#data 0x035F
loc_8c18ef24:
	#data 0x008D
loc_8c18ef26:
	#data 0x034B
loc_8c18ef28:
	#data 0x0270
loc_8c18ef2a:
	#data 0x0138
loc_8c18ef2c:
	#data 0x026C
loc_8c18ef2e:
	#data 0x0134
	#align4

loc_8c18EF30:
	#data 0x8C343430
loc_8c18EF34:
	#data bank19.loc_8c190C58
loc_8c18EF38:
	#data bank1c.loc_8c1c5AE4
loc_8c18EF3C:
	#data 0x8C3434F0
loc_8c18EF40:
	#data 0x8C3434A4

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18EF60:
	mov.l r11,@(0x20,r15)
	mov.l r4,@(0x24,r15)

loc_8c18EF64:
	tst r13,r13
	bt loc_8c18ef70
	mov.w @(0x36,PC),r0
	mov.w @(0x32,PC),r2
	bra loc_8c18efc4
	mov.l r2,@(r0,r15)

loc_8c18EF70:
	mov.w @(0x2E,PC),r0
	bra loc_8c18efc4
	mov.l r4,@(r0,r15)

loc_8c18EF76:
	mov r5,r0
	cmp/eq 0x01,r0
	bt loc_8c18ef8a
	mov 0x2C,r3
	tst r14,r3
	bt loc_8c18ef8a
	mov 0x2C,r2
	mov.l r2,@(0x20,r15)
	bra loc_8c18ef8e
	mov.l r7,@(0x24,r15)

loc_8c18EF8A:
	mov.l r11,@(0x20,r15)
	mov.l r4,@(0x24,r15)

loc_8c18EF8E:
	tst r13,r13
	bt loc_8c18efc0
	mov.w @(0xC,PC),r0
	mov.w @(0x8,PC),r2
	bra loc_8c18efc4
	mov.l r2,@(r0,r15)

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18efa0:
	#data 0x0136
loc_8c18efa2:
	#data 0x0088

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18EFC0:
	mov.w @(0x7C,PC),r0
	mov.l r4,@(r0,r15)

loc_8c18EFC4:
	mov.w @(0x7A,PC),r0
	mov 0x15,r3
	mov.l r3,@(r0,r15)
	mov r5,r0
	cmp/eq 0x01,r0
	bt/s loc_8c18efea
	mov 0x00,r4
	mov 0x2C,r3
	tst r14,r3
	bt loc_8c18efea
	mov.w @(0x68,PC),r2
	mov 0x1F,r3
	mov 0x44,r0
	mov.l r2,@(0x34,r15)
	mov 0x05,r2
	mov.l r3,@(0x38,r15)
	mov.l r2,@(0x30,r15)
	bra loc_8c18effa
	mov.l r6,@(r0,r15)

loc_8c18EFEA:
	mov.w @(0x58,PC),r2
	mov 0x44,r0
	mov 0x0F,r3
	mov.l r2,@(0x34,r15)
	mov 0x03,r2
	mov.l r3,@(0x38,r15)
	mov.l r2,@(0x30,r15)
	mov.l r4,@(r0,r15)

loc_8c18EFFA:
	mov 0x48,r0
	mov.l r4,@(r0,r15)
	mov 0x4C,r0
	mov.l r4,@(r0,r15)
	mov 0x50,r0
	mov.l r4,@(r0,r15)
	mov 0x54,r0
	mov.l r4,@(r0,r15)
	mov r5,r0
	cmp/eq 0x01,r0
	bf loc_8c18f018
	tst r4,r4
	bt loc_8c18f060
	bra loc_8c18f022
	nop 

loc_8c18F018:
	mov 0x2C,r3
	tst r14,r3
	bf loc_8c18f022
	tst r4,r4
	bt loc_8c18f060

loc_8c18F022:
	mov 0x58,r0
	bra loc_8c18f066
	mov.l r4,@(r0,r15)

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18f040:
	#data 0x0088
loc_8c18f042:
	#data 0x008C
loc_8c18f044:
	#data 0x016A
loc_8c18f046:
	#data 0x031F

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18F060:
	mov 0x58,r0
	mov 0x02,r2
	mov.l r2,@(r0,r15)

loc_8c18F066:
	mov 0x10,r3
	mov.w @(0xB4,PC),r0
	tst r14,r3
	bt/s loc_8c18f076
	mov.l r11,@(r0,r15)
	mov.w @(0xAE,PC),r0
	bra loc_8c18f07a
	mov.l r4,@(r0,r15)

loc_8c18F076:
	mov.w @(0xA8,PC),r0
	mov.l r6,@(r0,r15)

loc_8c18F07A:
	mov 0x40,r0
	mov.l r4,@(0x3C,r15)
	mov.l r6,@(r0,r15)
	mov 0x5C,r0
	mov.l r6,@(r0,r15)
	mov 0x60,r0
	mov.l r4,@(r0,r15)
	mov 0x64,r0
	mov.l r4,@(r0,r15)
	mov 0x68,r0
	mov.l r4,@(r0,r15)
	mov 0x6C,r0
	mov.l r4,@(r0,r15)
	mov 0x70,r0
	mov.l r4,@(r0,r15)
	mov 0x7C,r0
	mov.l r4,@(r0,r15)
	mov 0x74,r0
	mov.l r4,@(r0,r15)
	mov 0x78,r0
	mov.w @(0x7E,PC),r4
	mov.w @(0x7E,PC),r3
	mov.l r4,@(r0,r15)
	mov.w @(0x7C,PC),r0
	mov.l r3,@(r0,r15)
	mov r12,r0
	cmp/eq 0x42,r0
	bf loc_8c18f140
	mov.l @(0x7C,PC),r2
	mov r15,r3
	mov r15,r4
	mov.l @r2,r1
	mov.l @(0x4,r2),r0
	mov.l r1,@r3
	mov.l r0,@(0x4,r3)
	mov.l @(0x8,r2),r1
	mov.l @(0xC,r2),r0
	mov.l r1,@(0x8,r3)
	mov.l r0,@(0xC,r3)
	mov.l @(0x10,r2),r1
	mov.l r1,@(0x10,r3)
	mov.l @(0x64,PC),r3
	mov.l @r3,r0
	shll2 r0
	mov.l @(r0,r4),r1
	mov.w @(0x52,PC),r0
	mov r1,r4
	mov.l r1,@(r0,r15)
	mov r5,r0
	cmp/eq 0x01,r0
	bt loc_8c18f0e8
	mov 0x2C,r1
	tst r1,r14
	bt loc_8c18f0e8
	add 0xFF,r4

loc_8c18F0E8:
	mov.w @(0x40,PC),r0
	tst r13,r13
	bt/s loc_8c18f102
	mov.l r4,@(r0,r15)
	mov.l @(0x44,PC),r1
	mov.l @r1,r2
	mov 0x00,r3
	mov.l @(0x44,PC),r0
	cmp/gt r2,r3
	addc r3,r2
	shar r2
	bra loc_8c18f162
	mov.l r2,@r0


loc_8c18F102:
	mov.l @(0x34,PC),r3
	mov.l @r3,r1
	mov.l @(0x34,PC),r2
	bra loc_8c18f162
	mov.l r1,@r2

;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18F120:
	#data 0x0084
loc_8c18F122:
	#data 0x0080
loc_8c18F124:
	#data 0x00F0
loc_8c18F126:
	#data 0x00AE
loc_8c18F128:
	#data 0x010C
loc_8c18F12a:
	#data 0x0108
loc_8c18F12c:
	#data 0x0104
	#align4

loc_8c18F130:
	#data bank1c.loc_8c1c5AF8
loc_8c18F134:
	#data 0x8C3434F0
loc_8c18F138:
	#data 0x8C3434A4
loc_8c18F13c:
	#data 0x8C3434E4

;==============================================
loc_8c18F140:
	mov r5,r0
	cmp/eq 0x01,r0
	bt/s loc_8c18f156
	mov 0x2E,r6
	mov 0x2C,r3
	tst r3,r14
	bt loc_8c18f156
	mov.w @(0x6E,PC),r0
	mov 0x2D,r2
	bra loc_8c18f15a
	mov.l r2,@(r0,r15)

loc_8c18F156:
	mov.w @(0x66,PC),r0
	mov.l r6,@(r0,r15)

loc_8c18F15A:
	mov.w @(0x64,PC),r0
	mov.l @(0x68,PC),r3
	mov.l r6,@(r0,r15)
	mov.l r4,@r3

loc_8c18F162:
	mov.l @(0x20,r15),r2
	mov 0x00,r3
	cmp/gt r2,r3
	addc r3,r2
	mov.l @(0x5C,PC),r3
	shar r2
	mov.l @r3,r1
	mov.l @(0x58,PC),r0
	add r1,r2
	mov.l r2,@r0
	mov.l @(0x58,PC),r2
	mov.l @(0x20,r15),r1
	mov.l r1,@r2
	mov.l @(0x54,PC),r0
	mov.l @r0,r1
	mov r15,r4
	jsr @r1
	add 0x14,r4
	mov.w @(0x3A,PC),r1
	mov 0x00,r0
	add r1,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18F198:
	tst r4,r4
	bt loc_8c18F1A4
	mov.l @(loc_8c18F1D8,pc),r2 ; r2 set to 0x8C3434F4
	mov.l r4,@r2 ; r2 ??? bc r4 is ???
	rts
	mov 0x00,r0

;==============================================
loc_8c18F1A4:
	mov.l @(loc_8c18F1D8,pc),r3 ; r3 set to 0x8C3434F4
	mov.l @(loc_8c18F1DC,pc),r2 ; r2 set to 0x8C190180
	mov.l r2,@r3 ; r3 ??
	mov.l @(loc_8c18F1E0,pc),r0 ; r0 set to 0xEEEE
	rts
	nop

;==============================================
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18F1c0:
	#data 0x0104
loc_8c18F1c2:
	#data 0x0108
loc_8c18F1c4:
	#data 0x0110
	#align4

loc_8c18F1c8:
	#data 0x8C3434E4
loc_8c18F1cc:
	#data 0x8C3434DC
loc_8c18F1D0:
	#data 0x8C3434E0
loc_8c18F1D4:
	#data 0x8C343438
loc_8c18F1D8:
	#data 0x8C3434F4
loc_8c18F1DC:
	#data bank19.loc_8c190180
loc_8c18F1E0:
	#data 0x0000EEEE

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18F200:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x38,PC),r2
	mov.l r4,@r15
	mov.l @r2,r3
	jsr @r3
	mov r15,r4
	mov.l @(0x4,r15),r4
	cmp/pz r4
	bf loc_8c18f21a
	mov 0x04,r2
	cmp/gt r2,r4
	bf loc_8c18f21e

loc_8c18F21A:
	mov 0x01,r1
	mov.l r1,@(0x4,r15)

loc_8c18F21E:
	mov.l @(0x4,r15),r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18f240:
	#data 0x8C3434F4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18F260:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c18F340,pc),r0 ; r0 set to 0xFF04
	add r0,r15
	mov.l @(loc_8c18F358,pc),r3 ; r3 set to 0x8C343430
	mov r4,r13
	mov.l r4,@r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8c18F35C,pc),r2 ; r2 set to 0x8C190C58
	jsr @r2
	mov r13,r4
	mov.w @(loc_8c18F342,pc),r3 ; r3 set to 0x359
	mov 0x74,r0 ; r0 set to 0x74
	mov.w @(loc_8c18F344,pc),r2 ; r2 set to 0x20C
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r3,@(0x08,r15)
	mov 0x7E,r3 ; r3 set to 0x7E
	mov.w @(loc_8c18F348,pc),r4 ; r4 set to 0x208
	mov 0x28,r5 ; r5 set to 0x28
	mov.l r2,@(0x14,r15)
	mov.l r3,@r15
	mov 0x3F,r3 ; r3 set to 0x3F
	mov.w @(loc_8c18F346,pc),r2 ; r2 set to 0x345
	mov.l r2,@(0x04,r15)
	mov 0x03,r2 ; r2 set to 0x03
	mov.l r5,@(0x0C,r15)
	mov.l r4,@(0x10,r15)
	mov.l r3,@(0x18,r15)
	mov.w @(loc_8c18F34A,pc),r3 ; r3 set to 0x319
	mov.l r2,@(0x1C,r15)
	mov 0x0F,r2 ; r2 set to 0x0F
	mov.l r3,@(0x20,r15)
	mov 0x15,r3 ; r3 set to 0x15
	mov.l r2,@(0x24,r15)
	mov.l r4,@(r0,r15)
	mov 0x78,r0 ; r0 set to 0x78
	mov.l r3,@(r0,r15)
	mov 0x40,r0 ; r0 set to 0x40
	mov.l r14,@(0x34,r15)
	mov.l r14,@(0x38,r15)
	mov.l r14,@(0x3C,r15)
	mov.l r14,@(r0,r15)
	mov 0x44,r0 ; r0 set to 0x44
	mov.l r14,@(r0,r15)
	mov 0x70,r0 ; r0 set to 0x70
	mov 0x16,r3 ; r3 set to 0x16
	mov.l r3,@(r0,r15)
	mov 0x10,r3 ; r3 set to 0x10
	tst r3,r13
	bt/s loc_8c18F2CC
	mov 0x01,r4 ; r4 set to 0x01
	mov 0x6C,r0 ; r0 set to 0x6C
	bra loc_8c18F2D0
	mov.l r14,@(r0,r15)

loc_8c18F2CC:
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l r4,@(r0,r15)

loc_8c18F2D0:
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.w @(loc_8c18F34E,pc),r3 ; r3 set to 0xA8, r3 set to 0xA8
	mov.l r14,@(0x28,r15)
	mov.l r14,@(0x2C,r15)
	mov.l r14,@(0x30,r15)
	mov.l r4,@(r0,r15)
	mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
	mov.l r14,@(r0,r15)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	mov.l r14,@(r0,r15)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	mov.l r14,@(r0,r15)
	mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
	mov.l r14,@(r0,r15)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	mov.l r14,@(r0,r15)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov.l r14,@(r0,r15)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov.w @(loc_8c18F34C,pc),r4 ; r4 set to 0x1E0, r4 set to 0x1E0
	mov.l r14,@(r0,r15)
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
	mov.l r4,@(r0,r15)
	mov.w @(loc_8c18F350,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
	mov.l r3,@(r0,r15)
	mov.w @(loc_8c18F352,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
	mov.l @(loc_8c18F360,pc),r3 ; r3 set to 0x8C3434E4, r3 set to 0x8C3434E4
	mov.l r5,@(r0,r15)
	mov.w @(loc_8c18F354,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
	mov.l r5,@(r0,r15)
	mov.l r4,@r3 ; r3 ??, r3 ??
	mov r3,r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???
	mov.l @r0,r2
	mov.l @(0x0C,r15),r1
	add r2,r1
	mov.l @(loc_8c18F364,pc),r2 ; r2 set to 0x8C3434DC, r2 set to 0x8C3434DC
	mov.l r1,@r2 ; r2 ??? bc r1 is ???, r2 ??? bc r1 is ???
	mov.l @(loc_8c18F368,pc),r1 ; r1 set to 0x8C3434E0, r1 set to 0x8C3434E0
	mov.l @(0x0C,r15),r0
	mov.l r0,@r1 ; r1 ??? bc r0 is ???, r1 ??? bc r0 is ???
	mov.l @(loc_8c18F36C,pc),r0 ; r0 set to 0x8C343438, r0 set to 0x8C343438
	mov.l @r0,r3
	jsr @r3
	mov r15,r4 ; r4 ??? bc r15 is ???, r4 ??? bc r15 is ???
	mov.w @(loc_8c18F356,pc),r1 ; r1 set to 0xFC, r1 set to 0xFC
	mov r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	add r1,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18F340:
	#data 0xFF04
loc_8c18F342:
	#data 0x0359
loc_8c18F344:
	#data 0x020C
loc_8c18F346:
	#data 0x0345
loc_8c18F348:
	#data 0x0208
loc_8c18F34A:
	#data 0x0319
loc_8c18F34C:
	#data 0x01E0
loc_8c18F34E:
	#data 0x00A8
loc_8c18F350:
	#data 0x00F8
loc_8c18F352:
	#data 0x00F0
loc_8c18F354:
	#data 0x00F4
loc_8c18F356:
	#data 0x00FC
	#align4

loc_8c18F358:
	#data 0x8C343430
loc_8c18F35C:
	#data bank19.loc_8c190C58
loc_8c18F360:
	#data 0x8C3434E4
loc_8c18F364:
	#data 0x8C3434DC
loc_8c18F368:
	#data 0x8C3434E0
loc_8c18F36C:
	#data 0x8C343438

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18F380:
	mov.l @(loc_8c18F3A0,pc),r3 ; r3 set to 0x8C343B14
	rts
	mov.l @r3,r0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18F3A0:
	#data 0x8C343B14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18F3C0:
	mov.l r14,@-r15
	cmp/pz r4
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	bt loc_8c18F3D0
	bra loc_8c18F500
	nop

loc_8c18F3D0:
	stc sr, r0
	mov.w @(loc_8c18F480,pc),r2 ; r2 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov r0,r7
	stc sr, r0
	and r2,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c18F484,pc),r5 ; r5 set to 0x8C1A4E80
	mov 0x2E,r0 ; r0 set to 0x2E
	mov 0x00,r11 ; r11 set to 0x00
	mov.w @(r0,r5),r13
	mov 0x30,r0 ; r0 set to 0x30
	mov.w @(r0,r5),r12
	mov r11,r3 ; r3 set to 0x00
	mov r11,r14 ; r14 set to 0x00
	cmp/hs r12,r3
	bt/s loc_8c18F42C
	mov 0x1F,r6 ; r6 set to 0x1F

loc_8c18F3FA:
	mov r13,r1
	shll2 r1
	mov r5,r3 ; r3 set to 0x8C1A4E80
	shll2 r1
	add 0x40,r3 ; r3 set to 0x8C1A4EC0
	shll2 r1
	add r3,r1
	mov.l @r1,r2 ; r2 ??? bc r1 is ???
	cmp/eq r4,r2
	bf/s loc_8c18F424
	add 0x01,r13
	stc sr, r1
	mov r7,r0 ; r0 ??? bc r7 is ???
	mov.w @(loc_8c18F480,pc),r3 ; r3 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r3,r1
	shll2 r0
	or r1,r0
	bra loc_8c18F4DE
	nop

loc_8c18f424:
	add 0x01,r14
	cmp/hs r12,r14
	bf/s loc_8c18f3fa
	and r6,r13

loc_8c18F42C:
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @(r0,r5),r14
	mov 0x36,r0 ; r0 set to 0x36
	mov.w @(r0,r5),r12
	mov 0x00,r3 ; r3 set to 0x00
	cmp/hs r12,r3
	bt/s loc_8c18F4A8
	mov r11,r13

loc_8c18F43C:
	mov r14,r1
	mov.w @(loc_8c18F482,pc),r3 ; r3 set to 0x840
	shll2 r1
	shll2 r1
	add r5,r3 ; r3 ??? bc r5 is ???
	shll2 r1
	add r3,r1
	mov.l @r1,r2
	cmp/eq r4,r2
	bf/s loc_8c18F4A0
	add 0x01,r14
	stc sr, r1
	mov r7,r0 ; r0 ??? bc r7 is ???
	mov.w @(loc_8c18F480,pc),r3 ; r3 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r3,r1
	shll2 r0
	or r1,r0
	bra loc_8c18F4DE
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18F480:
	#data 0xFF0F
loc_8c18F482:
	#data 0x0840
	#align4

loc_8c18F484:
	#data bank1a.loc_8c1a4E80

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18f4a0:
	add 0x01,r13
	cmp/hs r12,r13
	bf/s loc_8c18f43c
	and r6,r14

loc_8c18F4A8:
	mov 0x3A,r0 ; r0 set to 0x3A
	mov.w @(r0,r5),r13
	mov 0x3C,r0 ; r0 set to 0x3C
	mov.w @(r0,r5),r12
	mov 0x00,r3 ; r3 set to 0x00
	cmp/hs r12,r3
	bt/s loc_8c18F4EE
	mov r11,r14

loc_8c18F4B8:
	mov r13,r1
	mov.w @(loc_8c18F520,pc),r3 ; r3 set to 0x1040
	shll2 r1
	shll2 r1
	add r5,r3 ; r3 ??? bc r5 is ???
	shll2 r1
	add r3,r1
	mov.l @r1,r2
	cmp/eq r4,r2
	bf/s loc_8c18F4E6
	add 0x01,r13
	stc sr, r1
	mov r7,r0 ; r0 ??? bc r7 is ???
	mov.w @(loc_8c18F522,pc),r3 ; r3 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r3,r1
	shll2 r0
	or r1,r0

loc_8c18F4DE:
	ldc r0, sr
	mov.w @(loc_8c18F524,pc),r0 ; r0 set to 0x100, r0 set to 0x100
	bra loc_8c18F502
	nop

loc_8c18f4e6:
	add 0x01,r14
	cmp/hs r12,r14
	bf/s loc_8c18f4b8
	and r6,r13

loc_8c18F4EE:
	stc sr, r3
	mov r7,r0
	mov.w @(loc_8c18F522,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr

loc_8c18F500:
	mov.w @(loc_8c18F526,pc),r0 ; r0 set to 0x101

loc_8c18F502:
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18F520:
	#data 0x1040
loc_8c18F522:
	#data 0xFF0F
loc_8c18F524:
	#data 0x0100
loc_8c18F526:
	#data 0x0101
	#align4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18F540:
	mov r4,r7
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x16,r2
	mov.l @r7,r0
	mov 0x00,r6
	mov.l @(0x4,r7),r13
	mov r6,r1
	mov.l @(0x230,PC),r3
	and 0x0F,r0
	shld r2,r0
	mov.l @(0x228,PC),r5
	and r3,r13
	or r0,r13
	mov r5,r0
	add 0x08,r0
	shll2 r1
	add r0,r1
	mov r5,r0
	mov.l r13,@r1
	add 0x01,r6
	mov r6,r1
	add 0x08,r0
	shll2 r1
	add r0,r1
	mov.l @(0x8,r4),r0
	add 0x01,r6
	mov.l r0,@r1
	mov r6,r1
	mov r5,r0
	shll2 r1
	add 0x01,r6
	add 0x08,r0
	mov r13,r14
	add r0,r1
	mov.l @(0xC,r4),r0
	neg r2,r2
	mov r13,r7
	shlr16 r14
	mov.l r0,@r1
	shld r2,r7
	mov r6,r1
	shlr8 r14
	mov r5,r2
	shlr16 r13
	shlr8 r13
	shlr r14
	mov 0x01,r0
	shll2 r1
	and r0,r7
	add 0x08,r2
	and r0,r13
	and r0,r14
	mov r4,r0
	add r2,r1
	mov.l @(0x10,r0),r2
	add 0x01,r6
	mov.l r2,@r1
	mov r5,r2
	mov r6,r1
	add 0x08,r2
	shll2 r1
	add r2,r1
	add 0x01,r6
	mov.l @(0x14,r0),r2
	add 0x18,r0
	tst r14,r14
	mov.l r2,@r1
	mov r5,r2
	mov r6,r1
	add 0x08,r2
	shll2 r1
	add r2,r1
	mov.l @r0,r2
	mov.l r2,@r1
	bt/s loc_8c18f624
	add 0x01,r6
	mov r5,r2
	mov r6,r0
	add 0x08,r2
	mov.l @(0x1C,r4),r1
	shll2 r0
	tst r7,r7
	add 0x01,r6
	add r2,r0
	bf/s loc_8c18f5fe
	mov.l r1,@r0
	mov r5,r2
	mov r6,r0
	add 0x08,r2
	mov.l @(0x20,r4),r1
	shll2 r0
	add r2,r0
	mov.l r1,@r0
	add 0x01,r6
 
loc_8c18F5FE:
	mov r5,r2
	mov r6,r3
	mov.l @(0x24,r4),r1
	add 0x08,r2
	shll2 r3
	add r2,r3
	tst r13,r13
	mov.l r1,@r3
	bt/s loc_8c18f634
	add 0x01,r6
	mov r5,r3
	mov r6,r2
	add 0x08,r3
	mov.l @(0x28,r4),r1
	shll2 r2
	add r3,r2
	add 0x01,r6
	bra loc_8c18f634
	mov.l r1,@r2

loc_8c18F624:
	mov r5,r1
	mov r6,r2
	add 0x08,r1
	mov.l @(0x24,r4),r0
	shll2 r2
	add r1,r2
	mov.l r0,@r2
	add 0x01,r6

loc_8c18F634:
	mov r5,r2
	mov r6,r3
	add 0x08,r2
	mov r4,r1
	shll2 r3
	add r2,r3
	mov.l @(0x2C,r1),r2
	add 0x01,r6
	mov.l r2,@r3
	mov r5,r2
	mov r6,r3
	add 0x08,r2
	shll2 r3
	add r2,r3
	mov.l @(0x30,r1),r2
	add 0x01,r6
	mov.l r2,@r3
	mov r5,r2
	mov r6,r3
	add 0x08,r2
	shll2 r3
	add 0x34,r1
	add r2,r3
	mov.l @r1,r2
	tst r14,r14
	mov.l r2,@r3
	bt/s loc_8c18f6ba
	add 0x01,r6
	mov r5,r3
	mov r6,r1
	add 0x08,r3
	mov.l @(0x38,r4),r2
	shll2 r1
	tst r7,r7
	add 0x01,r6
	add r3,r1
	bf/s loc_8c18f690
	mov.l r2,@r1
	mov r5,r3
	mov r6,r1
	add 0x08,r3
	mov.l @(0x3C,r4),r2
	shll2 r1
	add r3,r1
	mov.l r2,@r1
	add 0x01,r6

loc_8c18F690:
	mov r5,r2
	mov 0x40,r0
	mov r6,r3
	mov.l @(r0,r4),r1
	shll2 r3
	add 0x08,r2
	add r2,r3
	tst r13,r13
	mov.l r1,@r3
	bt/s loc_8c18f6cc
	add 0x01,r6
	mov r5,r3
	mov 0x44,r0
	mov r6,r2
	mov.l @(r0,r4),r1
	add 0x08,r3
	shll2 r2
	add 0x01,r6
	add r3,r2
	bra loc_8c18f6cc
	mov.l r1,@r2

loc_8c18F6BA:
	mov 0x40,r0
	mov r5,r3
	mov r6,r2
	mov.l @(r0,r4),r1
	add 0x08,r3
	shll2 r2
	add r3,r2
	mov.l r1,@r2
	add 0x01,r6

loc_8c18F6CC:
	mov r5,r2
	mov r6,r3
	add 0x08,r2
	mov r4,r1
	shll2 r3
	add 0x48,r1
	add r2,r3
	mov.l @r1,r2
	add 0x01,r6
	mov r4,r1
	mov.l r2,@r3
	mov r5,r2
	mov r6,r3
	add 0x08,r2
	shll2 r3
	add 0x4C,r1
	add r2,r3
	mov.l @r1,r2
	add 0x01,r6
	mov r4,r1
	mov.l r2,@r3
	mov r5,r2
	mov r6,r3
	add 0x08,r2
	shll2 r3
	add 0x50,r1
	add r2,r3
	mov.l @r1,r2
	tst r14,r14
	mov.l r2,@r3
	bt/s loc_8c18f760
	add 0x01,r6
	mov r5,r3
	mov r6,r1
	add 0x08,r3
	mov r4,r2
	shll2 r1
	add 0x54,r2
	add r3,r1
	mov.l @r2,r3
	tst r7,r7
	add 0x01,r6
	bf/s loc_8c18f736
	mov.l r3,@r1
	mov 0x58,r0
	mov r5,r3
	mov r6,r1
	mov.l @(r0,r4),r2
	add 0x08,r3
	shll2 r1
	add r3,r1
	mov.l r2,@r1
	add 0x01,r6

loc_8c18F736:
	mov r5,r2
	mov 0x5C,r0
	mov r6,r3
	mov.l @(r0,r4),r1
	shll2 r3
	add 0x08,r2
	add r2,r3
	tst r13,r13
	mov.l r1,@r3
	bt/s loc_8c18f772
	add 0x01,r6
	mov r5,r3
	mov 0x60,r0
	mov r6,r2
	mov.l @(r0,r4),r1
	add 0x08,r3
	shll2 r2
	add 0x01,r6
	add r3,r2
	bra loc_8c18f772
	mov.l r1,@r2

loc_8c18F760:
	mov 0x5C,r0
	mov r5,r3
	mov r6,r2
	mov.l @(r0,r4),r1
	add 0x08,r3
	shll2 r2
	add r3,r2
	mov.l r1,@r2
	add 0x01,r6

loc_8c18F772:
	shll2 r6
	mov 0x00,r0
	mov.l r6,@(0x4,r5)
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c18f780:
	#data 0x8C343B1C
loc_8c18f784:
	#data 0xFFC30000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18F7A0:
	tst r5,r5
	bf loc_8c18F7AA
	mov.l @(loc_8c18F7C0,pc),r2 ; r2 set to 0x8C1A7DA0
	jmp @r2
	nop

;==============================================
loc_8c18F7AA:
	mov r4,r7
	mov.l @(loc_8c18F7C4,pc),r0 ; r0 set to 0x8C343814
	shll2 r7
	shll r7
	mov r0,r3 ; r3 set to 0x8C343814
	mov.l r5,@(r0,r7)
	add r3,r7
	mov.l r6,@(0x04,r7)
	rts
	mov 0x00,r0

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18F7C0:
	#data bank1a.loc_8c1a7DA0
loc_8c18F7C4:
	#data 0x8C343814

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18F7E0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r2
	mov.l @(loc_8c18F820,pc),r3 ; r3 set to 0x8C343814
	shll2 r2
	mov.l r4,@r15
	shll r2
	add r3,r2
	mov r2,r4
	mov.l r2,@(0x04,r15)
	mov.l @r2,r1
	jsr @r1
	mov.l @(0x04,r4),r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18F820:
	#data 0x8C343814

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18F840:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x00,r11 ; r11 set to 0x00
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(loc_8c18F8E4,pc),r7 ; r7 set to 0xA05F7C18
	mov.l r8,@-r15
	mov.l @(loc_8c18F8E8,pc),r5 ; r5 set to 0xA05F7C10
	mov r7,r6 ; r6 set to 0xA05F7C18
	sts.l pr,@-r15
	mov.l @(0x08,r14),r0
	mov r5,r4 ; r4 set to 0xA05F7C10
	mov.l @(loc_8c18F8F0,pc),r9 ; r9 set to 0xFFA00020
	add 0xFC,r6 ; r6 set to 0xA05F7C14
	mov.l @(loc_8c18F8F4,pc),r10 ; r10 set to 0xA05F6800
	cmp/eq 0x00,r0
	mov.l @(loc_8c18F8F8,pc),r13 ; r13 set to 0xFFA0002C
	add 0x70,r4 ; r4 set to 0xA05F7C80
	mov.l @(loc_8c18F8EC,pc),r8 ; r8 set to 0x8201
	bt/s loc_8c18F8A8
	mov 0x01,r12 ; r12 set to 0x01
	cmp/eq 0x04,r0
	bt loc_8c18F920
	cmp/eq 0x01,r0
	bf loc_8c18F87C
	bra loc_8c18F972
	nop

loc_8c18F87C:
	cmp/eq 0x02,r0
	bf loc_8c18F884
	bra loc_8c18F9E0
	nop

loc_8c18F884:
	cmp/eq 0x03,r0
	bf loc_8c18F88C
	bra loc_8c18FA12
	nop

loc_8c18F88C:
	cmp/eq 0x05,r0
	bf loc_8c18F894
	bra loc_8c18FA5C
	nop

loc_8c18F894:
	cmp/eq 0x07,r0
	bf loc_8c18F89C
	bra loc_8c18FA5C
	nop

loc_8c18F89C:
	cmp/eq 0x06,r0
	bf loc_8c18F8A4
	bra loc_8c18FA5C
	nop

loc_8c18F8A4:
	bra loc_8c18FA7E
	nop

loc_8c18F8A8:
	mov.l @r13,r2
	mov.l r11,@r13
	mov.l @(0x10,r14),r3
	mov.l r3,@r9
	mov.l @(0x0C,r14),r2
	mov.l @(loc_8c18F8FC,pc),r1 ; r1 set to 0xFFA00028
	shlr2 r2
	shlr2 r2
	shlr r2
	mov.l r2,@r1 ; r1 ??? bc r2 is ???
	mov.w @(loc_8c18F8E0,pc),r3 ; r3 set to 0x12C1
	mov.l r3,@r13
	mov.l @(loc_8c18F900,pc),r2 ; r2 set to 0xFFA00040
	mov.l r8,@r2 ; r2 ??? bc r8 is ???
	bra loc_8c18F942
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18F8E0:
	#data 0x12C1
	#align4

loc_8c18F8E4:
	#data 0xA05F7C18
loc_8c18F8E8:
	#data 0xA05F7C10
loc_8c18F8EC:
	#data 0x00008201
loc_8c18F8F0:
	#data 0xFFA00020
loc_8c18F8F4:
	#data 0xA05F6800
loc_8c18F8F8:
	#data 0xFFA0002C
loc_8c18F8FC:
	#data 0xFFA00028
loc_8c18F900:
	#data 0xFFA00040

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18f920:
	mov.l @(0x04,r14),r0
	tst 0x08,r0 
	bt loc_8c18f94e
	mov.l @r13,r2
	mov.l r11,@r13
	mov.l @(0x10,r14),r3
	mov.l r3,@r9
	mov.l @(0x0C,r14),r2
	mov.l @(loc_8c18f9a4,pc),r1
	shlr2 r2
	shlr2 r2
	shlr r2
	mov.l r2,@r1
	mov.w @(loc_8c18f9a0,pc),r3
	mov.l r3,@r13
	mov.l @(loc_8c18f9a8,pc),r2
	mov.l r8,@r2

loc_8c18F942:
	mov.l @(0x14,r14),r3
	mov.l r3,@r10
	mov.l @(loc_8c18F9AC,pc),r3 ; r3 set to 0xA05F6804
	mov.l @(0x0C,r14),r0
	bra loc_8c18FA0C
	mov.l r0,@r3

loc_8c18F94E:
	mov.l @(0x60,PC),r3
	mov.l r3,@r4
	mov.l @(0x60,PC),r1
	mov.l @(0x14,r14),r2
	mov.l r2,@r1
	mov.l @(0x5C,PC),r0
	mov.l @(0x10,r14),r3
	mov.l r3,@r0
	mov.l @(0x5C,PC),r3
	mov.l @(0xC,r14),r2
	mov.l r2,@r3
	mov.l @(0x58,PC),r2
	mov.l @(0x3C,r14),r1
	mov.l r1,@r2
	mov.l r11,@r5
	mov.l r12,@r6
	bra loc_8c18fa7e
	mov.l r12,@r7

loc_8c18F972:
mov.l @(loc_8c18F9C4,pc),r2 ; r2 set to 0x8C1A7B00
jsr @r2
mov.l @(0x30,r14),r4
mov.l @r13,r3
mov.l r11,@r13
mov.l @(0x10,r14),r2 ; r2 ??? bc r14 is ???
mov.l r2,@r9
mov.l @(0x0C,r14),r3
mov.l @(loc_8c18F9A4,pc),r1 ; r1 set to 0xFFA00028
shlr2 r3
shlr2 r3
shlr r3
mov.l r3,@r1 ; r1 ??? bc r3 is ???
mov.w @(loc_8c18F9A0,pc),r2 ; r2 set to 0x12C1
mov.l r2,@r13
mov.l @(loc_8c18F9A8,pc),r3 ; r3 set to 0xFFA00040
mov.l r8,@r3 ; r3 ??? bc r8 is ???
mov.l @(0x14,r14),r2 ; r2 ??? bc r14 is ???
mov.l r2,@r10
mov.l @(loc_8c18F9AC,pc),r2 ; r2 set to 0xA05F6804
mov.l @(0x0C,r14),r0
bra loc_8c18FA0C
mov.l r0,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18F9A0:
	#data 0x12C1
	#align4

loc_8c18F9A4:
	#data 0xFFA00028
loc_8c18F9A8:
	#data 0xFFA00040

loc_8c18F9AC:
	#data 0xA05F6804
loc_8c18F9b0:
	#data 0x6702007F
loc_8c18F9b4:
	#data 0xA05F7C00
loc_8c18F9b8:
	#data 0xA05F7C04
loc_8c18F9bc:
	#data 0xA05F7C08
loc_8c18F9c0:
	#data 0xA05F7C0C
loc_8c18F9C4:
	#data bank1a.loc_8c1a7B00

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18f9e0:
	mov.l @(loc_8c18faa8,pc),r2
	jsr @r2
	mov.l @(0x30,r14),r4
	mov.l @r13,r3
	mov.l r11,@r13
	mov.l @(0x10,r14),r2
	mov.l r2,@r9
	mov.l @(0x0C,r14),r3
	mov.l @(loc_8c18faac,pc),r1
	shlr2 r3
	shlr2 r3
	shlr r3
	mov.l r3,@r1
	mov.w @(loc_8c18faa0,pc),r2
	mov.l r2,@r13
	mov.l @(loc_8c18fab0,pc),r3
	mov.l r8,@r3
	mov.l @(0x14,r14),r2
	mov.l r2,@r10
	mov.l @(loc_8c18fab4,pc),r2
	mov.l @(0x0C,r14),r0
	mov.l r0,@r2

loc_8c18FA0C:
	mov.l @(loc_8c18FAB8,pc),r1 ; r1 set to 0xA05F6808
	bra loc_8c18FA7E
	mov.l r12,@r1

loc_8c18FA12:
	mov.l @(loc_8c18FABC,pc),r12 ; r12 set to 0x8C18C320
	mov 0x01,r5 ; r5 set to 0x01
	jsr @r12
	mov 0x08,r4 ; r4 set to 0x08
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r12
	mov 0x08,r4 ; r4 set to 0x08
	mov.w @(loc_8c18FAA2,pc),r4 ; r4 set to 0x14C
	jsr @r12
	mov.l @(0x34,r14),r5 ; r5 ??? bc r14 is ???
	mov.w @(loc_8c18FAA4,pc),r4 ; r4 set to 0x148
	jsr @r12
	mov.l @(0x30,r14),r5
	mov.l @r13,r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r3,@r13
	mov.l @(0x10,r14),r2
	mov.l r2,@r9
	mov.l @(0x0C,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8c18FAAC,pc),r1 ; r1 set to 0xFFA00028
	shlr2 r3
	shlr2 r3
	shlr r3
	mov.l r3,@r1 ; r1 ??? bc r3 is ???
	mov.w @(loc_8c18FAA0,pc),r2 ; r2 set to 0x12C1
	mov.l r2,@r13
	mov.l @(loc_8c18FAB0,pc),r3 ; r3 set to 0xFFA00040
	mov.l r8,@r3 ; r3 ??? bc r8 is ???
	mov.l @(0x14,r14),r2 ; r2 ??? bc r14 is ???
	mov.l r2,@r10
	mov.l @(loc_8c18FAB4,pc),r2 ; r2 set to 0xA05F6804
	mov.l @(0x0C,r14),r0
	mov.l r0,@r2 ; r2 ??? bc r0 is ???
	mov.l @(loc_8c18FAB8,pc),r0 ; r0 set to 0xA05F6808
	mov 0x01,r1 ; r1 set to 0x01
	bra loc_8c18FA7E
	mov.l r1,@r0

loc_8c18fa5c:
	mov.l @(loc_8C18FAC0,pc),r2
	mov.l r2,@r4
	mov.l @(loc_8C18FAC4,pc),r1
	mov.l @(0x14,r14),r3
	mov.l r3,@r1
	mov.l @(loc_8C18FAC8,pc),r0
	mov.l @(0x10,r14),r2
	mov.l r2,@r0
	mov.l @(loc_8C18FACC,pc),r2
	mov.l @(0x0C,r14),r3
	mov.l r3,@r2
	mov.l @(loc_8C18FAD0,pc),r3
	mov.l @(0x30,r14),r1
	mov.l r1,@r3
	mov.l r11,@r5
	mov.l r12,@r6
	mov.l r12,@r7

loc_8c18FA7E:
	mov.l @(loc_8c18FAD4,pc),r2 ; r2 set to 0xFFD8000C
	mov.l @r2,r3
	mov 0x03,r1 ; r1 set to 0x03
	mov.l r3,@(0x24,r14)
	mov.l r1,@(0x28,r14)
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
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18FAA0:
	#data 0x12C1
loc_8c18FAA2:
	#data 0x014C
loc_8c18FAA4:
	#data 0x0148
	#align4

loc_8c18FAA8:
	#data bank1a.loc_8c1a4D20
loc_8c18FAAC:
	#data 0xFFA00028
loc_8c18FAB0:
	#data 0xFFA00040
loc_8c18FAB4:
	#data 0xA05F6804
loc_8c18FAB8:
	#data 0xA05F6808
loc_8c18FABC:
	#data loc_8c18C320
loc_8c18fac0:
	#data 0x6702007F
loc_8c18fac4:
	#data 0xA05F7C00
loc_8c18fac8:
	#data 0xA05F7C04
loc_8c18facc:
	#data 0xA05F7C08
loc_8c18fad0:
	#data 0xA05F7C0C
loc_8c18FAD4:
	#data 0xFFD8000C

;==============================================
	#align16_nop

;==============================================
loc_8c18FAE0:
	mov.l r14,@-r15
	mov.l @(loc_8c18FB44,pc),r14 ; r14 set to 0x8C1A4E80
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x08,r14),r3
	tst r3,r3
	bt loc_8c18FAF6
	mov.w @(loc_8c18FB40,pc),r0 ; r0 set to 0x102
	bra loc_8c18FC16
	nop

loc_8c18FAF6:
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x1C,r14),r6
	mov.w @(r0,r14),r3
	mov 0x08,r12 ; r12 set to 0x08
	mov 0x00,r13 ; r13 set to 0x00
	cmp/pl r3
	bf/s loc_8c18FB60
	mov.l @(0x18,r14),r5
	mov.l @(0x20,r14),r2
	tst r2,r2
	bf loc_8c18FB60
	mov 0x2E,r0 ; r0 set to 0x2E
	mov r14,r3
	mov.w @(r0,r14),r4
	add 0x40,r3
	shll2 r4
	shll2 r4
	shll2 r4
	add r3,r4
	mov.l @(0x04,r4),r2
	tst r12,r2
	bt loc_8c18FB2A
	tst r6,r6
	bf loc_8c18FB2E
	bra loc_8c18FB34
	mov.l r4,@(0x1C,r14)

loc_8c18FB2A:
	tst r5,r5
	bt loc_8c18FB32

loc_8c18FB2E:
	bra loc_8c18FB34
	mov r13,r4

loc_8c18FB32:
	mov.l r4,@(0x18,r14)

loc_8c18FB34:
	tst r4,r4
	bt loc_8c18FB9E
	bsr loc_8c18F840
	mov.l r4,@(0x20,r14)
	bra loc_8c18FB9E
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18FB40:
	#data 0x0102
	#align4

loc_8c18FB44:
	#data bank1a.loc_8c1a4E80

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18FB60:
	mov 0x36,r0 ; r0 set to 0x36
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c18FB9E
	mov.l @(0x24,r14),r2
	tst r2,r2
	bf loc_8c18FB9E
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @(loc_8c18FBE0,pc),r3 ; r3 set to 0x840
	mov.w @(r0,r14),r4
	add r14,r3 ; r3 ??? bc r14 is ???
	shll2 r4
	shll2 r4
	shll2 r4
	add r3,r4
	mov.l @(0x04,r4),r2
	tst r12,r2
	bt loc_8c18FB8C
	tst r6,r6
	bf loc_8c18FB90
	bra loc_8c18FB96
	mov.l r4,@(0x1C,r14)

loc_8c18FB8C:
	tst r5,r5
	bt loc_8c18FB94

loc_8c18FB90:
	bra loc_8c18FB96
	mov r13,r4

loc_8c18fb94:
	mov.l r4,@(0x18,r14) 

loc_8c18fb96:
	tst r4,r4
	bt loc_8c18fb9e
	bsr loc_8c18f840
	mov.l r4,@(0x24,r14) 

loc_8c18FB9E:
	mov 0x3C,r0 ; r0 set to 0x3C
	mov.w @(r0,r14),r3
	cmp/pl r3
	bf loc_8c18FC14
	mov.l @(0x28,r14),r2
	tst r2,r2
	bf loc_8c18FC14
	mov 0x3A,r0 ; r0 set to 0x3A
	mov.w @(loc_8c18FBE2,pc),r3 ; r3 set to 0x1040
	mov.w @(r0,r14),r4
	add r14,r3 ; r3 ??? bc r14 is ???
	shll2 r4
	shll2 r4
	shll2 r4
	add r3,r4
	mov.l @(0x04,r4),r2
	tst r2,r12
	bt loc_8c18FC00
	mov.l @(0x1C,r14),r1
	tst r1,r1
	bf loc_8c18FC06
	bra loc_8c18FC0C
	mov.l r4,@(0x1C,r14)

;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18FBE0:
	#data 0x0840
loc_8c18FBE2:
	#data 0x1040

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18FC00:
	mov.l @(0x18,r14),r3
	tst r3,r3
	bt loc_8c18FC0A

loc_8c18FC06:
	bra loc_8c18FC0C
	mov r13,r4

loc_8c18fc0a:
	mov.l r4,@(0x18,r14) 

loc_8c18fc0c:
	tst r4,r4
	bt loc_8c18fc14
	bsr loc_8c18f840
	mov.l r4,@(0x28,r14) 

loc_8c18FC14:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c18FC16:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18FC20:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @r4,r3
	mov 0x02,r2
	mov.l @(0x38,PC),r14
	mov.l r3,@r15
	mov.l r2,@(0x28,r4)
	mov.l @(0x8,r14),r3
	add 0xFF,r3
	bsr loc_8c18fae0
	mov.l r3,@(0x8,r14)
	mov.l @(0x8,r14),r1
	tst r1,r1
	bf loc_8c18fc50
	mov.l @(0xC,r14),r0
	stc sr,r2
	mov.w @(0x1A,PC),r1
	and 0x0F,r0
	shll2 r0
	and r1,r2
	shll2 r0
	or r2,r0
	ldc r0,sr

loc_8c18FC50:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0xFF0F
	#align4

loc_8c18FC64:
	#data bank1a.loc_8c1a4E80

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18FC80:
	mov.l r14,@-r15
	mov r4,r3
	mov 0x03,r14 ; r14 set to 0x03
	mov r4,r2
	and r14,r3
	mov r4,r1
	shlr2 r2
	mov.l r3,@r5
	mov r4,r3
	shlr2 r2
	shlr8 r3
	and r14,r2
	shlr2 r3
	mov.l r2,@r6
	shlr2 r3
	and r14,r3
	shlr8 r1
	shlr16 r4
	and r14,r4
	and r14,r1
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r1,@r7
	mov.l @(0x04,r15),r2
	mov.l r3,@r2
	mov.l @(0x08,r15),r2
	mov.l r4,@r2
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c18FCC0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c18FD04,pc),r3 ; r3 set to 0x8C1A7038
	mov.l @(loc_8c18FD00,pc),r14 ; r14 set to 0x8C343B1C
	mov.l r4,@(0x04,r15)
	jsr @r3
	mov r15,r5
	mov.l @(loc_8c18FD08,pc),r3 ; r3 set to 0x8C1A4E20
	mov r14,r5 ; r5 set to 0x8C343B1C
	mov.l @(0x04,r14),r6
	add 0x08,r5 ; r5 set to 0x8C343B24
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c18FD0C,pc),r3 ; r3 set to 0x8C1A6FE0
	mov.l @(0x08,r14),r5 ; r5 ??
	jsr @r3
	mov.l @(0x04,r15),r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18FD00:
	#data 0x8C343B1C
loc_8c18FD04:
	#data bank1a.loc_8c1a7038
loc_8c18FD08:
	#data bank1a.loc_8c1a4E20
loc_8c18FD0C:
	#data bank1a.loc_8c1a6FE0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#align16

;==============================================
loc_8c18FD20:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c18FD40,pc),r3 ; r3 set to 0xFFFFFF
	mov r4,r5
	mov.l @(loc_8c18FD44,pc),r2 ; r2 set to 0x8C18C320
	mov.l r4,@r15
	and r3,r5
	jsr @r2
	mov 0x40,r4 ; r4 set to 0x40
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
	#align16_nop
	
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18FD40:
	#data 0x00FFFFFF
loc_8c18FD44:
	#data loc_8c18C320

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18FD60:
	rts
	mov.l r5,@(0x18,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18FD80:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8c18FE44,pc),r3 ; r3 set to 0x8C1A7FC0
	mov.l r4,@(0x08,r15)
	mov.l r5,@(0x04,r15)
	mov.l r6,@r15
	mov.l r7,@(0x0C,r15)
	jsr @r3
	mov.l @(0x08,r15),r4
	tst r0,r0
	bf loc_8c18FDA0
	mov.l @(loc_8c18FE48,pc),r0 ; r0 set to 0xEEEE
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c18fda0:
	mov.l @(0x08,r15),r4
	mov.w @(loc_8C18FE40,pc),r0
	mov r4,r5
	add 0x18,r5
	mov.l @(r0,r4),r6
	mov.l @(loc_8C18FE4C,pc),r3
	mov.l @(0x0C,r15),r3
	mov.l r3,@(0x0C,r4) 
	mov.l @(0x04,r15),r2
	mov.l r2,@(0x04,r4) 
	mov.l @r15,r3
	mov.l r3,@(0x08,r4) 
	mov.l @r15,r2
	mov.l @(0x04,r15),r3
	add 0xFF,r2
	shll16 r2
	add 0xFF,r3
	or r3,r2
	mov.l r2,@(0x38,r4) 
	mov.l @r5,r3
	mov.l r3,@(0x08,r5) 
	mov.l @(0x04,r5),r3
	mov.l @r5,r2
	mov.l @(0x04,r4),r1
	add r3,r2
	mov.l @(0x08,r4),r3
	mul.l r3,r1
	mov.l @(0x0C,r4),r3
	sts macl,r0
	mul.l r3,r0
	sts macl,r0
	mov r0,r3
	shll r0
	mov.l @(loc_8C18FE50,pc),r1
	add r3,r0
	shll2 r0
	shll r0
	sub r0,r2
	mov.l r2,@(0x0C,r5) 
	mov.l @r1,r0
	tst 0x80,r0 
	bt loc_8c18fdfa
	mov.l @(0x0C,r5),r2
	add 0xE8,r2
	mov.l r2,@(0x0C,r5) 

loc_8c18fdfa:
	mov.l @(0x0C,r5),r1
	mov.w @(loc_8C18FE42,pc),r3
	mov.l @(loc_8C18FE54,pc),r0
	add r3,r1
	mov.l r1,@(0x24,r5)
	mov.l @r0,r2
	mov.l r2,@(0x14,r6)
	mov.l @(loc_8C18FE58,pc),r2
	mov.l @r2,r1
	mov.l r1,@(0x18,r6)
	mov.l @(loc_8C18FE5C,pc),r1
	mov.l @r1,r3
	mov.l r3,@(0x10,r6)
	mov.l @(loc_8C18FE60,pc),r3
	mov.l @r3,r0
	mov.l r0,@(0x04,r6)
	mov 0x00,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C18FE40:
	#data 0x0088
loc_8C18FE42:
	#data 0xFF00
	#align4

loc_8c18fe44:
	#data bank1a.loc_8C1A7FC0
loc_8c18fe48:
	#data 0x0000EEEE
loc_8C18FE4C:
	#data 0x8C348DF4
loc_8C18FE50:
	#data 0x8C343B04
loc_8C18FE54:
	#data 0x8C34343C
loc_8C18FE58:
	#data 0x8C343440
loc_8C18FE5C:
	#data 0x8C34344C
loc_8C18FE60:
	#data 0x8C343454

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18fe80:
	mov r5,r7
	cmp/pz r7
	bt loc_8c18fe88
	add 0x1F,r7

loc_8c18fe88:
	mov 0xFB,r3
	mov.l @(0x38,PC),r2
	shad r3,r7
	mov.l @(0x30,PC),r3
	mov.l @r2,r6
	mov 0x01,r2
	mov 0x1F,r1
	and r3,r6
	and r4,r2
	mov 0x16,r3
	and r1,r7
	shad r3,r2
	shll16 r7
	or r2,r7
	mov.l @(0x1C,PC),r2
	or r7,r6
	mov.l r6,@r2
	mov.l @(0x1C,PC),r3
	mov.l r4,@r3
	mov.l @(0x1C,PC),r1
	mov.l r5,@r1
	rts 
	mov 0x00,r0

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18fec0:
	#data 0xFFFF
loc_8c18fec2:
	#data 0xFFA0
	#align4

loc_8c18fec4:
	#data 0x8C343450
loc_8c18fec8:
	#data 0x8C3434E8
loc_8c18fecc:
	#data 0x8C3434EC

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#align16

;==============================================
loc_8c18FEE0:
	mov.l @(loc_8c18FF00,pc),r3 ; r3 set to 0x11000000
	mov r4,r1
	mov.l @(loc_8c18FF04,pc),r0 ; r0 set to 0x8000
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x08,r2 ; r2 set to 0x08
	mov.l r6,@(0x10,r1)
	or r3,r5
	mov.l r5,@(0x14,r1)
	mov.l r7,@(0x0C,r1)
	mov.l r4,@(0x08,r1)
	mov.l r2,@(0x04,r1)
	mov.w r0,@(0x1C,r1)
	mov r4,r0 ; r0 set to 0x00
	rts
	mov.w r0,@(0x1E,r1)

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18FF00:
	#data 0x11000000
loc_8c18FF04:
	#data 0x00008000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c18FF20:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c18FF40,pc),r3 ; r3 set to 0x8C1A7FC0
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bf loc_8c18FF60
	mov.l @(loc_8c18FF44,pc),r0 ; r0 set to 0xEEEE
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18FF40:
	#data bank1a.loc_8c1a7FC0
loc_8c18FF44:
	#data 0x0000EEEE

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c18FF60:
	mov.w @(loc_8c18FF82,pc),r0 ; r0 set to 0x88
	mov.l @r15,r4
	mov.w @(loc_8c18FF86,pc),r6 ; r6 set to 0x400
	mov.l @(r0,r4),r5
	mov.l @(0x04,r15),r0 ; r0 ??? bc r15 is ???
	mov.w @(loc_8c18FF84,pc),r7 ; r7 set to 0x800
	mov 0x23,r1 ; r1 set to 0x23
	cmp/hs r1,r0
	bf loc_8c18FF76
	bra loc_8c190092
	nop

loc_8c18FF76:
	shll r0
	mov r0,r1
	mova @(loc_8c18FF88,pc),r0  ; r0 set to 0x8C18FF88
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???

braf_8c18ff7e:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18FF82:
	#data 0x0088
loc_8c18FF84:
	#data 0x0800
loc_8c18FF86:
	#data 0x0400

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18FF88:
	#data16 {loc_8c18FFCE-braf_8c18ff7e-4} ; 0x004C
	#data16 {loc_8c18ffd2-braf_8c18ff7e-4} ; 0x0050
	#data16 {loc_8c18ffd8-braf_8c18ff7e-4} ; 0x0056
	#data16 {loc_8c18ffdc-braf_8c18ff7e-4} ; 0x005A
	#data16 {loc_8c18ffd8-braf_8c18ff7e-4} ; 0x0056
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c18ffe2-braf_8c18ff7e-4} ; 0x0060
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c18ffe8-braf_8c18ff7e-4} ; 0x0066
	#data16 {loc_8c190020-braf_8c18ff7e-4} ; 0x009E
	#data16 {loc_8c190026-braf_8c18ff7e-4} ; 0x00A4
	#data16 {loc_8c19002c-braf_8c18ff7e-4} ; 0x00AA
	#data16 {loc_8c190032-braf_8c18ff7e-4} ; 0x00B0
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190092-braf_8c18ff7e-4} ; 0x0110
	#data16 {loc_8c190038-braf_8c18ff7e-4} ; 0x00B6
	#data16 {loc_8c19003e-braf_8c18ff7e-4} ; 0x00BC
	#data16 {loc_8c190080-braf_8c18ff7e-4} ; 0x00FE
	#data16 {loc_8c190086-braf_8c18ff7e-4} ; 0x0104
	#data16 {loc_8c19008c-braf_8c18ff7e-4} ; 0x010A

;==============================================
loc_8c18ffce:
	bra loc_8c190092
	nop 

loc_8c18ffd2:
	mov.w @(0x2A,PC),r4
	bra loc_8c190094
	nop 

loc_8c18ffd8:
	bra loc_8c190094
	mov r7,r4

loc_8c18ffdc:
	mov.w @(0x22,PC),r4
	bra loc_8c190094
	nop 

loc_8c18ffe2:
	mov.w @(0x1E,PC),r4
	bra loc_8c190094
	nop 

loc_8c18ffe8:
	mov.w @(0x1A,PC),r4
	bra loc_8c190094
	nop 

;==============================================
	nop 
	nop 
	nop 
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c190000:
	#data 0x0401
loc_8c190002:
	#data 0x0472
loc_8c190004:
	#data 0x08E3
loc_8c190006:
	#data 0x03DE

;==============================================
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c190020:
	mov.w @(0x3C,PC),r4
	bra loc_8c190094
	nop 

loc_8c190026:
	mov.w @(0x38,PC),r4
	bra loc_8c190094
	nop 

loc_8c19002c:
	mov.w @(0x34,PC),r4
	bra loc_8c190094
	nop 

loc_8c190032:
	mov.w @(0x30,PC),r4
	bra loc_8c190094
	nop 

loc_8c190038:
	mov.w @(0x2C,PC),r4
	bra loc_8c190094
	nop 

loc_8c19003e:
	mov.w @(0x28,PC),r4
	bra loc_8c190094
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c190060:
	#data 0x03BF
loc_8c190062:
	#data 0x03A2
loc_8c190064:
	#data 0x0387
loc_8c190066:
	#data 0x036D
loc_8c190068:
	#data 0x07BD
loc_8c19006a:
	#data 0x0780

;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c190080:
	mov.w @(0x3C,PC),r4
	bra loc_8c190094
	nop 

loc_8c190086:
	mov.w @(0x38,PC),r4
	bra loc_8c190094
	nop 

loc_8c19008c:
	mov.w @(0x34,PC),r4
	bra loc_8c190094
	nop 

loc_8c190092:
	mov r6,r4

loc_8c190094:
	mov.l @(0x24,r5),r2
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(loc_8c1900C8,pc),r3 ; r3 set to 0xFFFF0000
	and r3,r2
	mov r2,r1
	or r4,r1
	mov.l r1,@(0x24,r5)
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1900C0:
	#data 0x0745
loc_8c1900C2:
	#data 0x070F
loc_8c1900C4:
	#data 0x06DB
	#align4

loc_8c1900C8:
	#data 0xFFFF0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16
