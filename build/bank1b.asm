;==============================================
loc_8c1b0050:
	mov.l r14,@-r15
	mov.l @(loc_8c1b0264,pc),r6
	mov r6,r0
	nop
	add 0x2F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x01,r0
	bt/s loc_8c1b0066
	mov 0x00,r7
	add 0x01,r7

loc_8c1b0066:
	mov r6,r0
	nop
	add 0x2F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x02,r0
	bt/s loc_8c1b0078
	mov r6,r0
	add 0x01,r7

loc_8c1b0078:
	add 0x2F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt/s loc_8c1b0086
	mov r6,r0
	add 0x01,r7

loc_8c1b0086:
	add 0x2F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt/s loc_8c1b0094
	mov r6,r0
	add 0x01,r7

loc_8c1b0094:
	add 0x2F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt/s loc_8c1b00a2
	mov r6,r0
	add 0x01,r7

loc_8c1b00a2:
	add 0x2F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt/s loc_8c1b00b0
	mov r6,r0
	add 0x01,r7

loc_8c1b00b0:
	add 0x2F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt/s loc_8c1b00be
	mov r6,r0
	add 0x01,r7

loc_8c1b00be:
	add 0x2F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt/s loc_8c1b00cc
	mov 0x01,r2
	add 0x01,r7

loc_8c1b00cc:
	and r2,r7
	mov r6,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst r2,r0
	bt/s loc_8c1b00e0
	mov 0x00,r14
	add 0x01,r14

loc_8c1b00e0:
	mov r6,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x02,r0
	bt/s loc_8c1b00f2
	mov r6,r0
	add 0x01,r14

loc_8c1b00f2:
	add 0x30,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt/s loc_8c1b0100
	mov r6,r0
	add 0x01,r14

loc_8c1b0100:
	add 0x30,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt/s loc_8c1b010e
	mov r6,r0
	add 0x01,r14

loc_8c1b010e:
	add 0x30,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt/s loc_8c1b011c
	mov r6,r0
	add 0x01,r14

loc_8c1b011c:
	add 0x30,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt/s loc_8c1b012a
	mov r6,r0
	add 0x01,r14

loc_8c1b012a:
	add 0x30,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt/s loc_8c1b0138
	mov r6,r0
	add 0x01,r14

loc_8c1b0138:
	add 0x30,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt/s loc_8c1b0146
	mov 0x01,r2
	add 0x01,r14

loc_8c1b0146:
	mov r6,r3
	add 0x17,r3
	mov.b @r3,r1
	and r2,r14
	mov 0x30,r2
	extu.b r1,r1
	tst r2,r1
	bf loc_8c1b017a
	extu.b r7,r7
	tst r7,r7
	bf/s loc_8c1b0166
	extu.b r14,r14
	mov r6,r7
	add 0x2F,r7
	bra loc_8c1b0172
	mov.b @r7,r7

loc_8c1b0166:
	mov r6,r0
	nop
	add 0x2F,r0
	mov.b @r0,r0
	or 0x80,r0
	mov r0,r7

loc_8c1b0172:
	tst r14,r14
	bt loc_8c1b01b6
	bra loc_8c1b01ca
	nop

loc_8c1b017a:
	mov r6,r0
	nop
	add 0x17,r0
	mov.b @r0,r0
	extu.b r0,r0
	and r2,r0
	cmp/eq 0x10,r0
	bf loc_8c1b0192
	mov r6,r7
	add 0x2F,r7
	bra loc_8c1b01b6
	mov.b @r7,r7

loc_8c1b0192:
	cmp/eq 0x20,r0
	bf loc_8c1b01be
	extu.b r7,r7
	tst r7,r7
	bt/s loc_8c1b01a6
	extu.b r14,r14
	mov r6,r7
	add 0x2F,r7
	bra loc_8c1b01b2
	mov.b @r7,r7

loc_8c1b01a6:
	mov r6,r0
	nop
	add 0x2F,r0
	mov.b @r0,r0
	or 0x80,r0
	mov r0,r7

loc_8c1b01b2:
	tst r14,r14
	bt loc_8c1b01ca

loc_8c1b01b6:
	mov r6,r14
	add 0x30,r14
	bra loc_8c1b01d6
	mov.b @r14,r14

loc_8c1b01be:
	mov r6,r0
	nop
	add 0x2F,r0
	mov.b @r0,r0
	or 0x80,r0
	mov r0,r7

loc_8c1b01ca:
	mov r6,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	or 0x80,r0
	mov r0,r14

loc_8c1b01d6:
	mov.b r7,@r4
	mov.b r14,@r5
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b01de:
	mov.l @(0x88,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1b01ec
	bra bank1a.loc_8c1afb9c
	nop

loc_8c1b01ec:
	rts
	nop

;==============================================
loc_8c1B01F0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1B026C,pc),r3 ; r3 set to 0x8C1A11E0
	add 0xFC,r15
	jsr @r3
	nop
	mov.l @(loc_8c1B0274,pc),r3 ; r3 set to 0x8C1B3F0C
	mov r0,r13
	mov.l @(loc_8c1B0270,pc),r2 ; r2 set to 0x8C34B110
	jsr @r3
	mov.l @r2,r4
	mov.l @(loc_8c1B0264,pc),r11 ; r11 set to 0x8C34AF50
	mov 0x18,r9 ; r9 set to 0x18
	mov.l @(loc_8c1B0278,pc),r14 ; r14 set to 0x8C34B288
	mov r0,r12
	mov r11,r4 ; r4 set to 0x8C34AF50
	add 0x15,r4 ; r4 set to 0x8C34AF65
	mov.b @r4,r2 ; r2 ??
	mov 0x02,r8 ; r8 set to 0x02
	extu.b r2,r2
	tst r9,r2
	bt/s loc_8c1B02C4
	mov 0x04,r10 ; r10 set to 0x04
	mov.b @r4,r1
	extu.b r1,r1
	tst r8,r1
	bt loc_8c1B02C4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1B0286
	exts.b r13,r2
	tst r2,r2
	bt loc_8c1B0280
	mov r14,r4 ; r4 set to 0x8C34B288
	add 0x10,r4 ; r4 set to 0x8C34B298
	mov.b @r4,r3 ; r3 ??
	extu.b r3,r3
	tst r10,r3
	bt loc_8c1B0286
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1B0286
	exts.b r12,r2
	tst r2,r2
	bt loc_8c1B0286
	mov.l @(loc_8c1B027C,pc),r3 ; r3 set to 0x8C1A122A
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8c1B0286
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B0264:
	#data 0x8C34AF50
loc_8c1B0268:
	#data 0x8C34B291
loc_8c1B026C:
	#data bank1a.loc_8c1a11E0
loc_8c1B0270:
	#data 0x8C34B110
loc_8c1B0274:
	#data loc_8c1B3F0C
loc_8c1B0278:
	#data 0x8C34B288
loc_8c1B027C:
	#data bank1a.loc_8c1a122A

;==============================================
loc_8c1b0280:
	mov.l @(loc_8c1b048c,pc),r3
	jsr @r3
	mov 0x00,r4

loc_8c1B0286:
	mov r11,r0
	nop
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c1B02C4
	exts.b r13,r2
	tst r2,r2
	bt loc_8c1B02BE
	mov r14,r4
	add 0x10,r4
	mov.b @r4,r3
	extu.b r3,r3
	tst r10,r3
	bt loc_8c1B02C4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1B02C4
	exts.b r12,r2
	tst r2,r2
	bt loc_8c1B02C4
	mov.l @(loc_8c1B0490,pc),r3 ; r3 set to 0x8C1A124C
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8c1B02C4
	nop

loc_8c1b02be:
	mov.l @(loc_8c1b0490,pc),r3
	jsr @r3
	mov 0x00,r4

loc_8c1b02c4:
	mov r11,r6
	mov r11,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	mov 0x08,r5
	and 0x03,r0
	mov r0,r7
	extu.b r7,r7
	mov r7,r3
	tst r3,r3
	mov.l r7,@r15
	bt/s loc_8c1b02ee
	mov r14,r4
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1b035c
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c1b035c

loc_8c1b02ee:
	add 0x15,r6
	mov.b @r6,r2
	extu.b r2,r2
	tst r9,r2
	bf loc_8c1b02fc
	bra loc_8c1b0458
	nop

loc_8c1b02fc:
	exts.b r13,r13
	tst r13,r13
	bt loc_8c1b038e
	mov r4,r3
	add 0x10,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r5,r2
	bf loc_8c1b03a6
	mov r4,r2
	add 0x10,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r10,r3
	bf loc_8c1b031e
	bra loc_8c1b0458
	nop

loc_8c1b031e:
	exts.b r12,r12
	tst r12,r12
	bf loc_8c1b0328
	bra loc_8c1b0458
	nop

loc_8c1b0328:
	mov r4,r3
	add 0x10,r3
	mov.b @r3,r0
	and 0xFB,r0
	mov.b r0,@r3
	mov r11,r0
	nop
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	and r9,r0
	cmp/eq 0x08,r0
	bt loc_8c1b03fa
	cmp/eq 0x10,r0
	bt loc_8c1b0412
	cmp/eq 0x18,r0
	bt loc_8c1b034e
	bra loc_8c1b0458
	nop

loc_8c1b034e:
	bsr bank1a.loc_8c1afc2c
	nop
	mov.b @(0x08,r14),r0
	or 0x04,r0
	mov.b r0,@(0x08,r14)
	bra loc_8c1b045a
	mov 0x03,r0

loc_8c1b035c:
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	tst r5,r0
	bt loc_8c1b041a
	mov.b @(0x0A,r4),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b0388
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c1b0378
	exts.b r12,r12
	tst r12,r12
	bt loc_8c1b0458

loc_8c1b0378:
	mov.b @(0x0A,r4),r0
	exts.b r13,r13
	tst r13,r13
	and 0xDF,r0
	bf/s loc_8c1b044e
	mov.b r0,@(0x0A,r4)
	bra loc_8c1b038e
	nop

loc_8c1b0388:
	exts.b r13,r13
	tst r13,r13
	bf loc_8c1b039a

loc_8c1b038e:
	mov r14,r3
	add 0x10,r3
	mov.b @r3,r0
	or 0x08,r0
	bra loc_8c1b0458
	mov.b r0,@r3

loc_8c1b039a:
	mov r4,r3
	add 0x10,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r5,r2
	bt loc_8c1b03c8

loc_8c1b03a6:
	mov r4,r5
	add 0x10,r5
	mov.b @r5,r0
	and 0xF7,r0
	mov.b r0,@r5
	mov.b @r5,r0
	or 0x04,r0
	mov.b r0,@r5
	mov r11,r5
	add 0x19,r5
	mov.l @(loc_8c1b0498,pc),r3
	mov.l @(loc_8C1B0494,pc),r4
	mov.b @r5,r5
	jsr @r3
	extu.b r5,r5
	bra loc_8c1b0458
	nop

loc_8c1b03c8:
	mov r4,r2
	add 0x10,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r10,r3
	bt loc_8c1b0458
	exts.b r12,r12
	tst r12,r12
	bt loc_8c1b0458
	mov r4,r3
	add 0x10,r3
	mov.b @r3,r0
	and 0xFB,r0
	mov.b r0,@r3
	mov r11,r0
	nop
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	and r9,r0
	cmp/eq 0x08,r0
	bf loc_8c1b0412
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c1b0412

loc_8c1b03fa:
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	tst r8,r0
	bt loc_8c1b040e
	mov.b @(0x03,r14),r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1b040e
	bsr bank1a.loc_8c1afcf4
	nop

loc_8c1b040e:
	bra loc_8c1b045a
	mov 0x01,r0

loc_8c1b0412:
	bsr loc_8c1b01de
	nop
	bra loc_8c1b045a
	mov 0x02,r0

loc_8c1b041a:
	exts.b r13,r13
	tst r13,r13
	bf loc_8c1b044e
	mov r4,r3
	add 0x10,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r5,r2
	bf loc_8c1b0458
	mov r4,r3
	add 0x10,r3
	mov.b @r3,r0
	or 0x08,r0
	mov.b r0,@r3
	mov r14,r2
	add 0x1F,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r8,r3
	bf loc_8c1b0458
	mov.b @(0x02,r14),r0
	or 0x04,r0
	bsr bank1a.loc_8c1afbfe
	mov.b r0,@(0x02,r14)
	bra loc_8c1b045a
	mov 0x04,r0

loc_8c1b044e:
	mov r14,r3
	add 0x10,r3
	mov.b @r3,r0
	and 0xF7,r0
	mov.b r0,@r3

loc_8c1b0458:
	mov 0x00,r0

loc_8c1b045a:
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

loc_8c1B046E:
	mov.l r14,@-r15
	mov.l @(loc_8c1B049C,pc),r14 ; r14 set to 0x8C34B288
	sts.l pr,@-r15
	mov r14,r4 ; r4 set to 0x8C34B288
	mov.b @(0x0E,r4),r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1B04A0
	mov.b @(0x0E,r4),r0
	and 0xEF,r0
	mov.b r0,@(0x0E,r4)
	lds.l @r15+,pr
	bra bank1a.loc_8c1aFCF4
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B048C:
	#data bank1a.loc_8c1a122A
loc_8c1B0490:
	#data bank1a.loc_8c1a124C
loc_8c1b0494:
	#data 0x8C34B110
loc_8c1B0498:
	#data loc_8c1B3EEC
loc_8c1B049C:
	#data 0x8C34B288

;==============================================
loc_8c1b04a0:
	mov r4,r0
	nop
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b04c6
	mov r4,r3
	add 0x15,r3
	mov.b @r3,r0
	and 0xDF,r0
	bsr bank1a.loc_8c1afd14
	mov.b r0,@r3
	mov.b @(0x06,r14),r0
	or 0x40,r0
	mov.b r0,@(0x06,r14)
	mov.b @(0x07,r14),r0
	or 0x01,r0
	mov.b r0,@(0x07,r14)

loc_8c1b04c6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c1B04CC:
	rts
	nop

;==============================================
loc_8c1B04D0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c1B05C0,pc),r3 ; r3 set to 0x8C34B200
	sts.l pr,@-r15
	mov.b r14,@r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8c1B05C4,pc),r2 ; r2 set to 0x8C1A0100
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c1B05D0,pc),r3 ; r3 set to 0x8C1A01E4
	mov r14,r4
	mov.l @(loc_8c1B05C8,pc),r6 ; r6 set to 0x8C34B1FC
	mov.l @(loc_8c1B05CC,pc),r5 ; r5 set to 0x8C34B1F8
	jmp @r3
	mov.l @r15+,r14

loc_8c1B04EE:
	sts.l pr,@-r15
	mov.l @(loc_8c1B05D4,pc),r3 ; r3 set to 0x8C1A0164
	jsr @r3
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B0502
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c1B0502:
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B050A:
	mov.l @(loc_8c1B05C8,pc),r3 ; r3 set to 0x8C34B1FC
	mov.w @(loc_8c1B05BC,pc),r7 ; r7 set to 0xFF
	bra loc_8c1B054C
	mov.l @r3,r6

loc_8c1B0512:
	mov.b @r6,r1
	extu.b r4,r3
	extu.b r1,r1
	cmp/eq r3,r1
	bf loc_8c1B054A
	mov.b @(0x02,r6),r0
	mov.b @r5,r4
	mov r0,r7
	extu.b r7,r3
	extu.b r4,r2
	cmp/gt r3,r2
	bf loc_8c1B052E
	bra loc_8c1B0530
	mov r4,r3

loc_8c1B052E:
	mov r7,r3

loc_8c1B0530:
	mov.b r3,@r5
	mov.b @(0x03,r6),r0
	mov.b @r5,r4
	mov r0,r7
	extu.b r7,r2
	extu.b r4,r3
	cmp/ge r2,r3
	bt loc_8c1B0544
	bra loc_8c1B0546
	mov r4,r2

loc_8c1B0544:
	mov r7,r2

loc_8c1B0546:
	rts
	mov.b r2,@r5

;==============================================
loc_8c1B054A:
	add 0x04,r6

loc_8c1B054C:
	mov.b @r6,r3
	extu.b r3,r3
	cmp/eq r7,r3
	bf loc_8c1B0512
	rts
	nop

;==============================================
loc_8c1B0558:
	mov.l r13,@-r15
	mov.l @(loc_8c1B05C8,pc),r3 ; r3 set to 0x8C34B1FC
	mov.w @(loc_8c1B05BC,pc),r7 ; r7 set to 0xFF
	bra loc_8c1B058A
	mov.l @r3,r5

loc_8c1b0562:
	mov.b @r5,r13
	mov.b @(0x02,r5),r0
	extu.b r13,r13
	add r4,r13
	mov r0,r1
	mov.b @r13,r6
	extu.b r1,r2
	extu.b r6,r3
	cmp/gt r2,r3
	bt loc_8c1b0578
	mov r1,r6

loc_8c1b0578:
	mov.b @(0x03,r5),r0
	extu.b r6,r3
	mov r0,r1
	extu.b r1,r2
	cmp/ge r2,r3
	bf loc_8c1b0586
	mov r1,r6

loc_8c1b0586:
	add 0x04,r5
	mov.b r6,@r13

loc_8c1B058A:
	mov.b @r5,r3
	extu.b r3,r3
	cmp/eq r7,r3
	bf loc_8c1B0562
	rts
	mov.l @r15+,r13

;==============================================
loc_8c1b0596:
	mov.l @(0x30,PC),r3
	mov.w @(0x20,PC),r7
	bra loc_8c1b05b0
	mov.l @r3,r6

loc_8c1b059e:
	mov.b @r6,r1
	extu.b r4,r3
	extu.b r1,r1
	cmp/eq r3,r1
	bf loc_8c1b05ae
	mov.b @(0x1,r6),r0
	rts
	mov.b r0,@r5

loc_8c1b05ae:
	add 0x04,r6

loc_8c1b05b0:
	mov.b @r6,r3
	extu.b r3,r3
	cmp/eq r7,r3
	bf loc_8c1b059e
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B05BC:
	#data 0x00FF
	#align4

loc_8c1B05C0:
	#data 0x8C34B200
loc_8c1B05C4:
	#data bank1a.loc_8c1a0100
loc_8c1B05C8:
	#data 0x8C34B1FC
loc_8c1B05CC:
	#data 0x8C34B1F8
loc_8c1B05D0:
	#data bank1a.loc_8c1a01E4
loc_8c1B05D4:
	#data bank1a.loc_8c1a0164

;==============================================
loc_8c1B05D8:
	mov.l @(loc_8c1B06C4,pc),r5 ; r5 set to 0x8C34B1F8
	mov 0x23,r0 ; r0 set to 0x23
	mov r0,r2 ; r2 set to 0x23
	add 0x67,r2 ; r2 set to 0x8A
	mov.l @r5,r3
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.b @r2,r2
	mov.b r2,@(r0,r4)
	mov 0x39,r0 ; r0 set to 0x39
	mov r0,r2 ; r2 set to 0x39
	mov.l @r5,r3
	add 0x51,r2 ; r2 set to 0x8A
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.b @r2,r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c1B06BC,pc),r6 ; r6 set to 0xFF
	mov.l @(loc_8c1B06C8,pc),r3 ; r3 set to 0x8C34B1FC
	bra loc_8c1B060A
	mov.l @r3,r5

loc_8c1B05FE:
	mov.b @r5,r0
	extu.b r0,r3
	mov.b @(0x01,r5),r0
	add r4,r3
	add 0x04,r5
	mov.b r0,@r3

loc_8c1B060A:
	mov.b @r5,r3
	extu.b r3,r3
	cmp/eq r6,r3
	bf loc_8c1B05FE
	rts
	nop

;==============================================
loc_8c1B0616:
	mov.l @(loc_8c1B06CC,pc),r3 ; r3 set to 0x8C34B201
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1B06D0,pc),r2 ; r2 set to 0x8C34B202
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1B06D4,pc),r1 ; r1 set to 0x8C34B203
	rts
	mov.b r4,@r1

;==============================================
loc_8c1B0626:
	mov.l @(loc_8c1B06D8,pc),r3 ; r3 set to 0x8C34B204
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1B06DC,pc),r2 ; r2 set to 0x8C34B205
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1B06E0,pc),r1 ; r1 set to 0x8C34B206
	mov.b r4,@r1 ; r1 ??
	mov.l @(loc_8c1B06E4,pc),r3 ; r3 set to 0x8C34B207
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1B06E8,pc),r2 ; r2 set to 0x8C34B208
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1B06EC,pc),r1 ; r1 set to 0x8C34B209
	mov.b r4,@r1 ; r1 ??
	mov.l @(loc_8c1B06F0,pc),r3 ; r3 set to 0x8C34B20A
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1B06F4,pc),r2 ; r2 set to 0x8C34B20B
	rts
	mov.b r4,@r2

;==============================================
loc_8c1B064A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c1B06C4,pc),r3 ; r3 set to 0x8C34B1F8
	mov.w @(loc_8c1B06BE,pc),r0 ; r0 set to 0xB0
	mov.l @r3,r7
	mov.w @(loc_8c1B06C0,pc),r1 ; r1 set to 0x800
	mov.w @(r0,r7),r2
	mov.l @(loc_8c1B06F8,pc),r14 ; r14 set to 0x8C34B106
	extu.w r2,r2
	mov.l @(loc_8c1B06DC,pc),r13 ; r13 set to 0x8C34B205
	tst r1,r2
	bf/s loc_8c1B066C
	mov 0x00,r12 ; r12 set to 0x00
	bra loc_8c1B07E2
	nop

loc_8c1B066C:
	extu.b r4,r4
	mov.b @r13,r3
	mov.l @(loc_8c1B06D8,pc),r6 ; r6 set to 0x8C34B204
	tst r4,r4
	bf/s loc_8c1B074E
	extu.b r3,r3
	mov r3,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1B068C
	cmp/eq 0x02,r0
	bt loc_8c1B06FC
	cmp/eq 0x04,r0
	bt loc_8c1B071A
	bra loc_8c1B0742
	nop

loc_8c1b068c:
	mov 0x30,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b06a0
	mov 0x32,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bt loc_8c1b072e

loc_8c1b06a0:
	mov 0x38,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bf loc_8c1b06ae
	bra loc_8c1b07d6
	nop

loc_8c1b06ae:
	mov 0x3A,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bt loc_8c1b0710
	bra loc_8c1b07d6
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b06bc:
	#data 0x00FF
loc_8c1b06be:
	#data 0x00B0
loc_8c1b06c0:
	#data 0x0800
	#align4

loc_8c1b06c4:
	#data 0x8C34B1F8
loc_8c1b06c8:
	#data 0x8C34B1FC
loc_8c1b06cc:
	#data 0x8C34B201
loc_8c1b06d0:
	#data 0x8C34B202
loc_8c1b06d4:
	#data 0x8C34B203
loc_8c1b06d8:
	#data 0x8C34B204
loc_8c1b06dc:
	#data 0x8C34B205
loc_8c1b06e0:
	#data 0x8C34B206
loc_8c1b06e4:
	#data 0x8C34B207
loc_8c1b06e8:
	#data 0x8C34B208
loc_8c1b06ec:
	#data 0x8C34B209
loc_8c1b06f0:
	#data 0x8C34B20A
loc_8c1b06f4:
	#data 0x8C34B20B
loc_8c1b06f8:
	#data 0x8C34B106

;==============================================
loc_8c1b06fc:
	mov 0x38,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bt loc_8c1b073a
	mov 0x3A,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b073a

loc_8c1b0710:
	mov.b @r6,r0
	or 0x02,r0
	mov.b r0,@r6
	bra loc_8c1b0736
	mov 0x03,r2

loc_8c1b071a:
	mov 0x30,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b073a
	mov 0x32,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b073a

loc_8c1b072e:
	mov.b @r6,r0
	mov 0x01,r2
	or 0x01,r0
	mov.b r0,@r6

loc_8c1b0736:
	bra loc_8c1b07d6
	mov.b r2,@r13

loc_8c1b073a:
	mov.b @r6,r0
	and 0xFC,r0
	bra loc_8c1b0748
	mov.b r0,@r6

loc_8c1b0742:
	mov.b @r6,r0
	and 0xFC,r0
	mov.b r0,@r6

loc_8c1b0748:
	mov.b r12,@r14
	bra loc_8c1b07d6
	mov.b r12,@r13

loc_8c1B074E:
	mov.b @r6,r10
	mov 0x02,r4 ; r4 set to 0x02
	mov r3,r0
	nop
	cmp/eq 0x01,r0
	bt/s loc_8c1B0764
	extu.b r10,r10
	cmp/eq 0x03,r0
	bt loc_8c1B079C
	bra loc_8c1B07D6
	nop

loc_8c1B0764:
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1B0792
	mov 0x36,r0 ; r0 set to 0x36
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1B0792
	mov r10,r2
	tst r4,r2
	bt loc_8c1B07D4
	mov 0x01,r1 ; r1 set to 0x01
	tst r10,r1
	bt loc_8c1B07D4
	mov.b @r14,r2
	add 0x01,r2
	mov.b r2,@r14
	mov.b @r6,r0 ; r0 ??? bc r6 is ???
	and 0xFC,r0
	bra loc_8c1B07D4
	mov.b r0,@r6

loc_8c1B0792:
	mov.b @r6,r0
	and 0xFC,r0
	mov.b r0,@r6
	bra loc_8c1B07C6
	mov.b r12,@r14

loc_8c1b079c:
	mov 0x3C,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b07cc
	mov 0x3E,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b07cc
	tst r10,r4
	bt loc_8c1b07c6
	mov 0x01,r3
	tst r10,r3
	bt loc_8c1b07c6
	mov.b @r14,r1
	add 0x01,r1
	mov.b r1,@r14
	mov.b @r6,r0
	and 0xFC,r0
	mov.b r0,@r6

loc_8c1B07C6:
	mov 0x04,r3 ; r3 set to 0x04
	bra loc_8c1B07D6
	mov.b r3,@r13

loc_8c1B07CC:
	mov.b @r6,r0
	and 0xFC,r0
	mov.b r0,@r6
	mov.b r12,@r14

loc_8c1b07d4:
	mov.b r4,@r13

loc_8c1B07D6:
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c1B07E2
	bra loc_8c1B07E4
	mov 0x01,r0

loc_8c1B07E2:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1B07E4:
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B07EE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c1B08D4,pc),r3 ; r3 set to 0x8C34B1F8
	mov.w @(loc_8c1B08C8,pc),r0 ; r0 set to 0xB0
	mov.l @r3,r6
	mov.w @(loc_8c1B08CA,pc),r1 ; r1 set to 0x1000
	mov.w @(r0,r6),r2
	mov.l @(loc_8c1B08D0,pc),r14 ; r14 set to 0x8C34B207
	extu.w r2,r2
	mov.l @(loc_8c1B08CC,pc),r13 ; r13 set to 0x8C34B206
	tst r1,r2
	bf/s loc_8c1B0810
	mov 0x00,r12 ; r12 set to 0x00
	bra loc_8c1B098C
	nop

loc_8c1B0810:
	extu.b r4,r4
	mov.b @r13,r3
	mov.l @(loc_8c1B08D8,pc),r7 ; r7 set to 0x8C34B204
	tst r4,r4
	bf/s loc_8c1B08B2
	extu.b r3,r3
	mov r3,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1B0830
	cmp/eq 0x02,r0
	bt loc_8c1B0860
	cmp/eq 0x04,r0
	bt loc_8c1B087E
	bra loc_8c1B08A6
	nop

loc_8c1b0830:
	mov 0x40,r0
	mov.w @(r0,r6),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b0844
	mov 0x42,r0
	mov.w @(r0,r6),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bt loc_8c1b0892

loc_8c1b0844:
	mov 0x48,r0
	mov.w @(r0,r6),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bf loc_8c1b0852
	bra loc_8c1b097c
	nop

loc_8c1b0852:
	mov 0x4A,r0
	mov.w @(r0,r6),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bt loc_8c1b0874
	bra loc_8c1b097c
	nop

loc_8c1b0860:
	mov 0x48,r0
	mov.w @(r0,r6),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bt loc_8c1b089e
	mov 0x4A,r0
	mov.w @(r0,r6),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b089e

loc_8c1b0874:
	mov.b @r7,r0
	or 0x20,r0
	mov.b r0,@r7
	bra loc_8c1b089a
	mov 0x03,r2

loc_8c1b087e:
	mov 0x40,r0
	mov.w @(r0,r6),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b089e
	mov 0x42,r0
	mov.w @(r0,r6),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b089e

loc_8c1b0892:
	mov.b @r7,r0
	mov 0x01,r2
	or 0x10,r0
	mov.b r0,@r7

loc_8c1b089a:
	bra loc_8c1b097c
	mov.b r2,@r13

loc_8c1b089e:
	mov.b @r7,r0
	and 0xCF,r0
	bra loc_8c1b08ac
	mov.b r0,@r7

loc_8c1b08a6:
	mov.b @r7,r0
	and 0xCF,r0
	mov.b r0,@r7

loc_8c1b08ac:
	mov.b r12,@r14
	bra loc_8c1b097c
	mov.b r12,@r13

loc_8c1B08B2:
	mov.b @r7,r10
	mov 0x10,r4 ; r4 set to 0x10
	mov r3,r0
	nop
	cmp/eq 0x01,r0
	bt/s loc_8c1B08DC
	extu.b r10,r10
	cmp/eq 0x03,r0
	bt loc_8c1B092A
	bra loc_8c1B097C
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B08C8:
	#data 0x00B0
loc_8c1B08CA:
	#data 0x1000
	#align4

loc_8c1B08CC:
	#data 0x8C34B206
loc_8c1B08D0:
	#data 0x8C34B207
loc_8c1B08D4:
	#data 0x8C34B1F8
loc_8c1B08D8:
	#data 0x8C34B204

;==============================================
loc_8c1b08dc:
	mov 0x44,r0
	mov.w @(r0,r6),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b0920
	mov 0x46,r0
	mov.w @(r0,r6),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b0920
	tst r10,r4
	bt loc_8c1b08fa
	mov 0x20,r3
	tst r10,r3
	bf loc_8c1b0912

loc_8c1b08fa:
	mov 0x44,r0
	mov.w @(r0,r6),r1
	mov 0x4C,r0
	mov.w @(r0,r6),r3
	cmp/eq r3,r1
	bf loc_8c1b0978
	mov 0x46,r0
	mov.w @(r0,r6),r2
	mov 0x4E,r0
	mov.w @(r0,r6),r3
	cmp/eq r3,r2
	bf loc_8c1b0978

loc_8c1b0912:
	mov.b @r14,r2
	add 0x01,r2
	mov.b r2,@r14
	mov.b @r7,r0
	and 0xCF,r0
	bra loc_8c1b0978
	mov.b r0,@r7

loc_8c1b0920:
	mov.b @r7,r0
	and 0xCF,r0
	mov.b r0,@r7
	bra loc_8c1b096c
	mov.b r12,@r14

loc_8c1b092a:
	mov 0x4C,r0
	mov.w @(r0,r6),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b0970
	mov 0x4E,r0
	mov.w @(r0,r6),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b0970
	tst r10,r4
	bt loc_8c1b0948
	mov 0x20,r3
	tst r10,r3
	bf loc_8c1b0960

loc_8c1b0948:
	mov 0x44,r0
	mov.w @(r0,r6),r1
	mov 0x4C,r0
	mov.w @(r0,r6),r3
	cmp/eq r3,r1
	bf loc_8c1b096c
	mov 0x46,r0
	mov.w @(r0,r6),r2
	mov 0x4E,r0
	mov.w @(r0,r6),r3
	cmp/eq r3,r2
	bf loc_8c1b096c

loc_8c1b0960:
	mov.b @r14,r2
	add 0x01,r2
	mov.b r2,@r14
	mov.b @r7,r0
	and 0xCF,r0
	mov.b r0,@r7

loc_8c1b096c:
	bra loc_8c1b097a
	mov 0x04,r3

loc_8c1b0970:
	mov.b @r7,r0
	and 0xCF,r0
	mov.b r0,@r7
	mov.b r12,@r14

loc_8c1b0978:
	mov 0x02,r3

loc_8c1b097a:
	mov.b r3,@r13

loc_8c1B097C:
	mov.b @r14,r2
	mov 0x01,r3 ; r3 set to 0x01
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c1B098C
	mov.b r12,@r14
	bra loc_8c1B098E
	mov 0x01,r0

loc_8c1B098C:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1B098E:
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B0998:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c1B0A80,pc),r3 ; r3 set to 0x8C34B1F8
	mov.w @(loc_8c1B0A72,pc),r0 ; r0 set to 0xB0
	mov.l @r3,r7
	mov.w @(loc_8c1B0A74,pc),r1 ; r1 set to 0x2000
	mov.w @(r0,r7),r2
	mov.l @(loc_8c1B0A7C,pc),r14 ; r14 set to 0x8C34B209
	extu.w r2,r2
	mov.l @(loc_8c1B0A78,pc),r13 ; r13 set to 0x8C34B208
	tst r1,r2
	bf/s loc_8c1B09BA
	mov 0x00,r12 ; r12 set to 0x00
	bra loc_8c1B0B06
	nop

loc_8c1B09BA:
	extu.b r4,r4
	mov.b @r13,r3
	mov.l @(loc_8c1B0A84,pc),r6 ; r6 set to 0x8C34B204
	tst r4,r4
	bf/s loc_8c1B0A5C
	extu.b r3,r3
	mov r3,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1B09DA
	cmp/eq 0x02,r0
	bt loc_8c1B0A0A
	cmp/eq 0x04,r0
	bt loc_8c1B0A28
	bra loc_8c1B0A50
	nop

loc_8c1b09da:
	mov 0x60,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b09ee
	mov 0x62,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bt loc_8c1b0a3c

loc_8c1b09ee:
	mov 0x68,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bf loc_8c1b09fc
	bra loc_8c1b0afa
	nop

loc_8c1b09fc:
	mov 0x6A,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bt loc_8c1b0a1e
	bra loc_8c1b0afa
	nop

loc_8c1b0a0a:
	mov 0x68,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bt loc_8c1b0a48
	mov 0x6A,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b0a48

loc_8c1b0a1e:
	mov.b @r6,r0
	or 0x08,r0
	mov.b r0,@r6
	bra loc_8c1b0a44
	mov 0x03,r2

loc_8c1b0a28:
	mov 0x60,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b0a48
	mov 0x62,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b0a48

loc_8c1b0a3c:
	mov.b @r6,r0
	mov 0x01,r2
	or 0x04,r0
	mov.b r0,@r6

loc_8c1b0a44:
	bra loc_8c1b0afa
	mov.b r2,@r13

loc_8c1b0a48:
	mov.b @r6,r0
	and 0xF3,r0
	bra loc_8c1b0a56
	mov.b r0,@r6

loc_8c1b0a50:
	mov.b @r6,r0
	and 0xF3,r0
	mov.b r0,@r6

loc_8c1b0a56:
	mov.b r12,@r14
	bra loc_8c1b0afa
	mov.b r12,@r13

loc_8c1B0A5C:
	mov.b @r6,r10
	mov 0x04,r4 ; r4 set to 0x04
	mov r3,r0
	nop
	cmp/eq 0x01,r0
	bt/s loc_8c1B0A88
	extu.b r10,r10
	cmp/eq 0x03,r0
	bt loc_8c1B0ABE
	bra loc_8c1B0AFA
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B0A72:
	#data 0x00B0
loc_8c1B0A74:
	#data 0x2000
	#align4

loc_8c1B0A78:
	#data 0x8C34B208
loc_8c1B0A7C:
	#data 0x8C34B209
loc_8c1B0A80:
	#data 0x8C34B1F8
loc_8c1B0A84:
	#data 0x8C34B204

;==============================================
loc_8c1B0A88:
	mov 0x64,r0 ; r0 set to 0x64
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1B0AB4
	mov 0x66,r0 ; r0 set to 0x66
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1B0AB4
	tst r10,r4
	bt loc_8c1B0AF6
	mov 0x08,r3 ; r3 set to 0x08
	tst r10,r3
	bt loc_8c1B0AF6
	mov.b @r14,r1
	add 0x01,r1
	mov.b r1,@r14
	mov.b @r6,r0 ; r0 ??? bc r6 is ???
	and 0xF3,r0
	bra loc_8c1B0AF6
	mov.b r0,@r6

loc_8c1B0AB4:
	mov.b @r6,r0
	and 0xF3,r0
	mov.b r0,@r6
	bra loc_8c1B0AEA
	mov.b r12,@r14

loc_8c1b0abe:
	mov 0x6C,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b0aee
	mov 0x6E,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b0aee
	mov r10,r2
	tst r4,r2
	bt loc_8c1b0aea
	mov 0x08,r1
	tst r10,r1
	bt loc_8c1b0aea
	mov.b @r14,r2
	add 0x01,r2
	mov.b r2,@r14
	mov.b @r6,r0
	and 0xF3,r0
	mov.b r0,@r6

loc_8c1B0AEA:
	bra loc_8c1B0AFA
	mov.b r4,@r13

loc_8c1B0AEE:
	mov.b @r6,r0
	and 0xF3,r0
	mov.b r0,@r6
	mov.b r12,@r14

loc_8c1b0af6:
	mov 0x02,r2
	mov.b r2,@r13

loc_8c1B0AFA:
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c1B0B06
	bra loc_8c1B0B08
	mov 0x01,r0

loc_8c1B0B06:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1B0B08:
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B0B12:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c1B0B60,pc),r3 ; r3 set to 0x8C34B1F8
	mov.w @(loc_8c1B0B54,pc),r0 ; r0 set to 0xB0
	mov.l @r3,r7
	mov.w @(loc_8c1B0B56,pc),r1 ; r1 set to 0x4000
	mov.w @(r0,r7),r2
	mov.l @(loc_8c1B0B5C,pc),r14 ; r14 set to 0x8C34B20B
	extu.w r2,r2
	mov.l @(loc_8c1B0B58,pc),r13 ; r13 set to 0x8C34B20A
	tst r1,r2
	bf/s loc_8c1B0B34
	mov 0x00,r12 ; r12 set to 0x00
	bra loc_8c1B0C7A
	nop

loc_8c1B0B34:
	extu.b r4,r4
	mov.b @r13,r3
	mov.l @(loc_8c1B0B64,pc),r6 ; r6 set to 0x8C34B204
	tst r4,r4
	bf/s loc_8c1B0BE6
	extu.b r3,r3
	mov r3,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1B0B68
	cmp/eq 0x02,r0
	bt loc_8c1B0B94
	cmp/eq 0x04,r0
	bt loc_8c1B0BB2
	bra loc_8c1B0BDA
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B0B54:
	#data 0x00B0
loc_8c1B0B56:
	#data 0x4000
	#align4

loc_8c1B0B58:
	#data 0x8C34B20A
loc_8c1B0B5C:
	#data 0x8C34B20B
loc_8c1B0B60:
	#data 0x8C34B1F8
loc_8c1B0B64:
	#data 0x8C34B204

;==============================================
loc_8c1b0b68:
	mov 0x50,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b0b7c
	mov 0x52,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bt loc_8c1b0bc6

loc_8c1b0b7c:
	mov 0x58,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bt loc_8c1b0c6e
	mov 0x5A,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bt loc_8c1b0ba8
	bra loc_8c1b0c6e
	nop

loc_8c1b0b94:
	mov 0x58,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bt loc_8c1b0bd2
	mov 0x5A,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b0bd2

loc_8c1b0ba8:
	mov.b @r6,r0
	or 0x80,r0
	mov.b r0,@r6
	bra loc_8c1b0bce
	mov 0x03,r2

loc_8c1b0bb2:
	mov 0x50,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b0bd2
	mov 0x52,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b0bd2

loc_8c1b0bc6:
	mov.b @r6,r0
	mov 0x01,r2
	or 0x40,r0
	mov.b r0,@r6

loc_8c1b0bce:
	bra loc_8c1b0c6e
	mov.b r2,@r13

loc_8c1b0bd2:
	mov.b @r6,r0
	and 0x3F,r0
	bra loc_8c1b0be0
	mov.b r0,@r6

loc_8c1b0bda:
	mov.b @r6,r0
	and 0x3F,r0
	mov.b r0,@r6

loc_8c1B0BE0:
	mov.b r12,@r14
	bra loc_8c1b0c6e
	mov.b r12,@r13

loc_8c1B0BE6:
	mov.b @r6,r10
	mov.w @(loc_8c1B0C32,pc),r4 ; r4 set to 0x80
	mov r3,r0
	nop
	cmp/eq 0x01,r0
	bt/s loc_8c1B0BFC
	extu.b r10,r10
	cmp/eq 0x03,r0
	bt loc_8c1B0C34
	bra loc_8c1B0C6E
	nop

loc_8c1B0BFC:
	mov 0x54,r0 ; r0 set to 0x54
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1B0C28
	mov 0x56,r0 ; r0 set to 0x56
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1B0C28
	tst r10,r4
	bt loc_8c1B0C6A
	mov 0x40,r3 ; r3 set to 0x40
	tst r10,r3
	bt loc_8c1B0C6A
	mov.b @r14,r1
	add 0x01,r1
	mov.b r1,@r14
	mov.b @r6,r0 ; r0 ??? bc r6 is ???
	and 0x3F,r0
	bra loc_8c1B0C6A
	mov.b r0,@r6

loc_8c1B0C28:
	mov.b @r6,r0
	and 0x3F,r0
	mov.b r0,@r6
	bra loc_8c1B0C5E
	mov.b r12,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B0C32:
	#data 0x0080

;==============================================
loc_8c1b0c34:
	mov 0x5C,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b0c62
	mov 0x5E,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bf loc_8c1b0c62
	tst r10,r4
	bt loc_8c1b0c5e
	mov 0x40,r3
	tst r10,r3
	bt loc_8c1b0c5e
	mov.b @r14,r1
	add 0x01,r1
	mov.b r1,@r14
	mov.b @r6,r0
	and 0x3F,r0
	mov.b r0,@r6

loc_8c1B0C5E:
	bra loc_8c1B0C6C
	mov 0x04,r3

loc_8c1B0C62:
	mov.b @r6,r0
	and 0x3F,r0
	mov.b r0,@r6
	mov.b r12,@r14

loc_8c1b0c6a:
	mov 0x02,r3

loc_8c1B0C6C:
	mov.b r3,@r13

loc_8c1B0C6E:
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c1B0C7A
	bra loc_8c1B0C7C
	mov 0x01,r0

loc_8c1B0C7A:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1B0C7C:
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B0C86:
	mov 0x70,r0 ; r0 set to 0x70
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(loc_8c1B0E20,pc),r3 ; r3 set to 0x8C34B1F8
	mov.l @(loc_8c1B0E18,pc),r13 ; r13 set to 0x8C34B202
	mov.l @r3,r7
	mov.l @(loc_8c1B0E1C,pc),r14 ; r14 set to 0x8C34B203
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/pl r2
	bt/s loc_8c1B0CA8
	mov 0x00,r12 ; r12 set to 0x00
	bra loc_8c1B0DD8
	nop

loc_8c1B0CA8:
	mov.b @r13,r2
	extu.b r4,r4
	mov.l @(loc_8c1B0E24,pc),r6 ; r6 set to 0x8C34B201
	tst r4,r4
	mov 0x01,r10 ; r10 set to 0x01
	bf/s loc_8c1B0D48
	extu.b r2,r2
	mov r2,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1B0CCA
	cmp/eq 0x02,r0
	bt loc_8c1B0CF6
	cmp/eq 0x04,r0
	bt loc_8c1B0D16
	bra loc_8c1B0D3C
	nop

loc_8c1b0cca:
	mov 0x70,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bt loc_8c1b0cde
	mov 0x72,r0
	mov.w @(r0,r7),r1
	extu.w r1,r1
	cmp/hs r1,r5
	bt loc_8c1b0d2a

loc_8c1b0cde:
	mov 0x78,r0
	mov.w @(r0,r7),r3
	extu.w r3,r3
	cmp/hi r3,r5
	bt loc_8c1b0dcc
	mov 0x7A,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hs r2,r5
	bt loc_8c1b0d0a
	bra loc_8c1b0dcc
	nop

loc_8c1b0cf6:
	mov 0x78,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bt loc_8c1b0d34
	mov 0x7A,r0
	mov.w @(r0,r7),r1
	extu.w r1,r1
	cmp/hs r1,r5
	bf loc_8c1b0d34

loc_8c1b0d0a:
	mov.b @r6,r0
	mov 0x03,r3
	or 0x02,r0
	mov.b r0,@r6
	bra loc_8c1b0dcc
	mov.b r3,@r13

loc_8c1b0d16:
	mov 0x70,r0
	mov.w @(r0,r7),r2
	extu.w r2,r2
	cmp/hi r2,r5
	bt loc_8c1b0d34
	mov 0x72,r0
	mov.w @(r0,r7),r1
	extu.w r1,r1
	cmp/hs r1,r5
	bf loc_8c1b0d34

loc_8c1b0d2a:
	mov.b @r6,r0
	or 0x01,r0
	mov.b r0,@r6
	bra loc_8c1b0dcc
	mov.b r10,@r13

loc_8c1b0d34:
	mov.b @r6,r0
	and 0xFC,r0
	bra loc_8c1b0d42
	mov.b r0,@r6

loc_8c1b0d3c:
	mov.b @r6,r0
	and 0xFC,r0
	mov.b r0,@r6

loc_8c1b0d42:
	mov.b r12,@r14
	bra loc_8c1b0dcc
	mov.b r12,@r13

loc_8c1B0D48:
	mov.b @r6,r9
	mov r2,r0
	nop
	cmp/eq 0x01,r0
	bt/s loc_8c1B0D5C
	extu.b r9,r9
	cmp/eq 0x03,r0
	bt loc_8c1B0D92
	bra loc_8c1B0DCC
	nop

loc_8c1B0D5C:
	mov 0x74,r0 ; r0 set to 0x74
	mov.w @(r0,r7),r1
	extu.w r1,r1
	cmp/hi r1,r5
	bt loc_8c1B0D88
	mov 0x76,r0 ; r0 set to 0x76
	mov.w @(r0,r7),r1
	extu.w r1,r1
	cmp/hs r1,r5
	bf loc_8c1B0D88
	tst r9,r10
	bt loc_8c1B0DC8
	mov 0x02,r2 ; r2 set to 0x02
	tst r9,r2
	bt loc_8c1B0DC8
	mov.b @r14,r1
	add 0x01,r1
	mov.b r1,@r14
	mov.b @r6,r0 ; r0 ??? bc r6 is ???
	and 0xFC,r0
	bra loc_8c1B0DC8
	mov.b r0,@r6

loc_8c1B0D88:
	mov.b @r6,r0
	and 0xFC,r0
	mov.b r0,@r6
	bra loc_8c1B0DBC
	mov.b r12,@r14

loc_8c1b0d92:
	mov 0x7C,r0
	mov.w @(r0,r7),r1
	extu.w r1,r1
	cmp/hi r1,r5
	bt loc_8c1b0dc0
	mov 0x7E,r0
	mov.w @(r0,r7),r1
	extu.w r1,r1
	cmp/hs r1,r5
	bf loc_8c1b0dc0
	tst r9,r10
	bt loc_8c1b0dbc
	mov 0x02,r2
	tst r9,r2
	bt loc_8c1b0dbc
	mov.b @r14,r1
	add 0x01,r1
	mov.b r1,@r14
	mov.b @r6,r0
	and 0xFC,r0
	mov.b r0,@r6

loc_8c1B0DBC:
	bra loc_8c1B0DCA
	mov 0x04,r3

loc_8c1B0DC0:
	mov.b @r6,r0
	and 0xFC,r0
	mov.b r0,@r6
	mov.b r12,@r14

loc_8c1b0dc8:
	mov 0x02,r3

loc_8c1B0DCA:
	mov.b r3,@r13

loc_8c1B0DCC:
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1B0DD8
	bra loc_8c1B0DDA
	mov 0x01,r0

loc_8c1B0DD8:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1B0DDA:
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B0DE6:
	mov.l @(loc_8c1B0E20,pc),r3 ; r3 set to 0x8C34B1F8
	mov 0x2E,r1 ; r1 set to 0x2E
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8c1B0E0E
	extu.b r4,r5
	cmp/eq 0x01,r0
	bt loc_8c1B0E02
	cmp/eq 0x02,r0
	bt loc_8c1B0E08
	bra loc_8c1B0E0E
	nop

loc_8c1B0E02:
	mov.l @(loc_8c1B0E28,pc),r0 ; r0 set to 0x8C1C7ED8
	bra loc_8c1B0E0A
	nop

loc_8c1b0e08:
	mov.l @(loc_8c1b0e2c,pc),r0

loc_8c1B0E0A:
	rts
	mov.b @(r0,r5),r0

;==============================================
loc_8c1B0E0E:
	mov r4,r0
	nop
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B0E18:
	#data 0x8C34B202
loc_8c1B0E1C:
	#data 0x8C34B203
loc_8c1B0E20:
	#data 0x8C34B1F8
loc_8c1B0E24:
	#data 0x8C34B201
loc_8c1B0E28:
	#data bank1c.loc_8c1c7ED8
loc_8c1B0E2C:
	#data bank1c.loc_8c1c7EE2

;==============================================
loc_8c1B0E30:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c1B0F70,pc),r4 ; r4 set to 0x2E3
	mov.l @(loc_8c1B0F78,pc),r3 ; r3 set to 0x8C19E1F8
	mov.w @(loc_8c1B0F6E,pc),r11 ; r11 set to 0x3B0
	mov.l @(loc_8c1B0F74,pc),r12 ; r12 set to 0x8C34B23C
	jsr @r3
	mov 0x01,r5 ; r5 set to 0x01
	mov 0x00,r14 ; r14 set to 0x00
	mov.w r0,@r12 ; r12 ??? bc r0 is ???
	mov.l @(loc_8c1B0F80,pc),r10 ; r10 set to 0x8C1C7EF0
	mov 0x0F,r13 ; r13 set to 0x0F
	mov.l @(loc_8c1B0F7C,pc),r9 ; r9 set to 0x8C19E30C

loc_8c1B0E54:
	mov.b @r12,r0
	extu.b r14,r5 ; r5 set to 0x00
	mov r11,r4 ; r4 set to 0x3B0
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	mov r0,r3 ; r3 ??? bc r0 is ???
	shll2 r0
	shll2 r0
	sub r3,r0
	exts.b r0,r0
	add r10,r0
	mov.b @(r0,r5),r5 ; r5 ??
	extu.b r5,r5
	jsr @r9
	add 0x01,r11 ; r11 set to 0x3B1
	add 0x01,r14 ; r14 set to 0x01
	extu.b r14,r3 ; r3 set to 0x01
	cmp/ge r13,r3
	bf loc_8c1B0E54
	lds.l @r15+,pr
	mov.l @r15+,r9 ; r9 ??? bc r15 is ???
	mov.l @r15+,r10 ; r10 ??? bc r15 is ???
	mov.l @r15+,r11 ; r11 ??? bc r15 is ???
	mov.l @r15+,r12
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B0E88:
	mov.l r14,@-r15
	mov.l @(loc_8c1B0F84,pc),r14 ; r14 set to 0x8C347979
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	and 0x7F,r0
	mov.b r0,@(0x01,r14)
	mov.b @r14,r0
	and 0xFE,r0
	mov.b r0,@r14 ; r14 ??? bc r0 is ???
	mov.b @r14,r0
	and 0xBF,r0
	mov.b r0,@r14
	mov.b @r14,r0
	and 0xFB,r0
	mov.b r0,@r14
	mov.b @(0x01,r14),r0
	and 0xEF,r0
	mov.b r0,@(0x01,r14)
	mov.b @(0x01,r14),r0
	and 0xBF,r0
	mov.b r0,@(0x01,r14)
	mov.b @(0x01,r14),r0
	and 0xDF,r0
	mov.b r0,@(0x01,r14)
	mov.b @(0x01,r14),r0
	and 0xF7,r0
	mov.b r0,@(0x01,r14)
	mov.b @(0x01,r14),r0
	and 0xFB,r0
	mov.b r0,@(0x01,r14)
	mov.b @(0x02,r14),r0
	and 0xDF,r0
	mov.b r0,@(0x02,r14)
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(0x02,r14),r0
	and 0xBF,r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x02,r14),r0
	and 0x7F,r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x03,r14),r0
	and 0xBF,r0
	mov.b r0,@(0x03,r14)
	mov.b @(0x03,r14),r0
	and 0xDF,r0
	mov.b r0,@(0x03,r14)
	mov.b @(0x03,r14),r0
	and 0xEF,r0
	mov.b r0,@(0x03,r14)
	mov.b @(0x03,r14),r0
	and 0xF7,r0
	mov.b r0,@(0x03,r14)
	mov.l @(loc_8c1B0F88,pc),r3 ; r3 set to 0x8C347992
	mov.w r5,@r3 ; r3 ??
	mov.b @(0x02,r14),r0
	and 0xEF,r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x02,r14),r0
	and 0xF7,r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x02,r14),r0
	and 0xFB,r0
	mov.b r0,@(0x02,r14)
	mov.l @(loc_8c1B0F8C,pc),r4 ; r4 set to 0x8C347974
	mov.b @(0x01,r4),r0
	mov r5,r1 ; r1 set to 0x00
	and 0xBF,r0
	mov.b r0,@(0x01,r4)
	mov.b @(0x01,r4),r0
	and 0xDF,r0
	mov.b r0,@(0x01,r4)
	mov.b @r4,r0
	and 0xFD,r0
	mov.b r0,@r4 ; r4 ??? bc r0 is ???
	mov.b @(0x01,r4),r0
	and 0xFD,r0
	mov.b r0,@(0x01,r4)
	mov.b @r4,r0
	and 0xFB,r0
	mov.b r0,@r4
	mov.l @(loc_8c1B0F90,pc),r2 ; r2 set to 0x8C34B23E
	mov.w r5,@r2 ; r2 ??
	mov.b @(0x03,r14),r0
	and 0xFE,r0
	mov.b r0,@(0x03,r14)
	mov.b @(0x04,r14),r0
	and 0x7F,r0
	mov.b r0,@(0x04,r14)
	mov.b @(0x04,r14),r0
	and 0xBF,r0
	mov.b r0,@(0x04,r14)
	mov.l @(loc_8c1B0F94,pc),r0 ; r0 set to 0x8C34B234
	mov.b r1,@r0 ; r0 ??
	mov.l @(loc_8c1B0F98,pc),r3 ; r3 set to 0x8C347970
	mov.l @r3,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8c1B0F62
	mov.l @(loc_8c1B0F78,pc),r1 ; r1 set to 0x8C19E1F8
	mov.w @(loc_8c1B0F72,pc),r4 ; r4 set to 0x304
	jsr @r1
	mov 0x01,r5 ; r5 set to 0x01
	extu.w r0,r0
	tst 0x10,r0
	bt loc_8c1B0F62
	mov.b @(0x03,r14),r0
	bra loc_8c1B0F66
	or 0x04,r0

loc_8c1B0F62:
	mov.b @(0x03,r14),r0
	and 0xFB,r0

loc_8c1B0F66:
	lds.l @r15+,pr
	mov.b r0,@(0x03,r14)
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B0F6E:
	#data 0x03B0
loc_8c1B0F70:
	#data 0x02E3
loc_8c1B0F72:
	#data 0x0304
	#align4

loc_8c1B0F74:
	#data 0x8C34B23C
loc_8c1B0F78:
	#data bank19.loc_8c19E1F8
loc_8c1B0F7C:
	#data bank19.loc_8c19E30C
loc_8c1B0F80:
	#data bank1c.loc_8c1c7EF0
loc_8c1B0F84:
	#data 0x8C347979
loc_8c1B0F88:
	#data 0x8C347992
loc_8c1B0F8C:
	#data 0x8C347974
loc_8c1B0F90:
	#data 0x8C34B23E
loc_8c1B0F94:
	#data 0x8C34B234
loc_8c1B0F98:
	#data 0x8C347970

;==============================================
loc_8c1B0F9C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xEC,PC),r14
	add 0xFC,r15
	mov r14,r0
	nop
	mov.b @(0x3,r0),r0
	tst 0x04,r0
	bt loc_8c1b100a
	mov.l @(0xE4,PC),r3
	mov.w @(0xCC,PC),r4
	jsr @r3
	mov 0x01,r5
	mov.b r0,@r15
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b0fce
	mov.b @r15,r5
	mov 0x01,r6
	mov.l @(0xD4,PC),r3
	mov.w @(0xB8,PC),r4
	extu.b r5,r5
	mov.l @(0xD0,PC),r2
	jsr @r2
	and r3,r5

loc_8c1B0FCE:
	mov r14,r0
	nop
	mov.b @(0x3,r0),r0
	tst 0x08,r0
	bf loc_8c1b100a
	mov.l @(0xC4,PC),r2
	mov 0x5C,r1
	mov.l @r2,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1b100a
	mov.b @(0x3,r14),r0
	or 0x08,r0
	mov.b r0,@(0x3,r14)
	mov.w @(0x92,PC),r4
	mov.l @(0xA4,PC),r2
	jsr @r2
	mov 0x01,r5
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c1b100a
	add 0x04,r15
	mov.l @(0x9C,PC),r2
	lds.l @r15+,pr
	mov.w @(0x80,PC),r4
	mov 0x01,r6
	mov 0x7E,r5
	jmp @r2
	mov.l @r15+,r14

loc_8c1B100A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B1012:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c1B1086,pc),r4 ; r4 set to 0x6C1
	mov.l @(loc_8c1B1094,pc),r13 ; r13 set to 0x8C19E1F8
	jsr @r13
	mov 0x01,r5 ; r5 set to 0x01
	extu.w r0,r4 ; r4 ??? bc r0 is ???
	or r4,r14 ; r14 ??? bc r4 is ???
	mov.w @(loc_8c1B1088,pc),r4 ; r4 set to 0x6C2
	jsr @r13
	mov 0x01,r5 ; r5 set to 0x01
	extu.w r0,r4 ; r4 ??? bc r0 is ???
	shll8 r4
	or r4,r14
	mov.w @(loc_8c1B108A,pc),r4 ; r4 set to 0x6C3
	jsr @r13
	mov 0x01,r5 ; r5 set to 0x01
	extu.w r0,r4 ; r4 ??? bc r0 is ???
	shll16 r4
	or r4,r14
	mov r14,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B104A:
	mov.l r14,@-r15
	mov 0x00,r3
	mov.l @(0x54,PC),r14
	sts.l pr,@-r15
	mov.b r3,@r14
	mov.w @(0x34,PC),r4
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov 0x01,r5
	mov 0x40,r5
	mov r0,r6
	mov 0x01,r4

loc_8c1B1062:
	extu.b r4,r2
	extu.b r6,r3
	tst r2,r3
	bt.s loc_8c1b1072
	extu.b r4,r4
	mov.b @r14,r2
	add 0x01,r2
	mov.b r2,@r14

loc_8c1B1072:
	shll r4
	extu.b r4,r2
	cmp/ge r5,r2
	bf loc_8c1b1062
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B1080:
	#data 0x0303
loc_8c1B1082:
	#data 0x0305
loc_8c1B1084:
	#data 0x0335
loc_8c1B1086:
	#data 0x06C1
loc_8c1B1088:
	#data 0x06C2
loc_8c1B108A:
	#data 0x06C3
loc_8c1B108c:
	#data 0x06EA
	#align4

loc_8c1B1090:
	#data 0x8C347979
loc_8c1B1094:
	#data bank19.loc_8c19E1F8
loc_8c1B1098:
	#data 0x0000FFFD
loc_8c1B109C:
	#data bank19.loc_8c19E30C
loc_8c1B10a0:
	#data 0x8C347970
loc_8c1B10a4:
	#data 0x8C34B210

;==============================================
loc_8c1B10A8:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(0x50,PC),r4
	mov.l @(0x58,PC),r13
	jsr @r13
	mov 0x02,r5
	mov.w @(0x4A,PC),r4
	extu.w r0,r0
	add r0,r14
	jsr @r13
	mov 0x02,r5
	mov.w @(0x42,PC),r4
	extu.w r0,r0
	add r0,r14
	jsr @r13
	mov 0x02,r5
	extu.w r0,r0
	mov.l @(0x40,PC),r3
	add r0,r14
	mov 0x03,r0
	jsr @r3
	mov r14,r1
	mov.w @(0x2E,PC),r4
	mov r0,r14
	jsr @r13
	mov 0x02,r5
	extu.w r0,r1
	mov r14,r0
	nop
	mov.l @(0x28,PC),r3
	jsr @r3
	nop
	mov.l @(0x24,PC),r2
	mov 0x06,r3
	cmp/hi r3,r0
	mov.l r0,@r2
	bf loc_8c1b10fa
	bra loc_8c1b10fc
	mov 0x01,r0

loc_8c1B10FA:
	mov 0x00,r0

loc_8c1B10FC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b1104:
	#data 0x0A62
loc_8c1b1106:
	#data 0x0A61
loc_8c1b1108:
	#data 0x0A60
loc_8c1b110a:
	#data 0x0A63
	#align4

loc_8c1B110C:
	#data bank19.loc_8c19E1F8
loc_8c1B1110:
	#data bank12.loc_8c1291DC
loc_8c1B1114:
	#data 0x8C34B22C

;==============================================
loc_8c1B1118:
	mov.l r14,@-r15
	mov 0x5C,r0 ; r0 set to 0x5C
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1B1240,pc),r13 ; r13 set to 0x8C347970
	sts.l pr,@-r15
	mov.l @r13,r4
	mov.w @(loc_8c1B1236,pc),r5 ; r5 set to 0xFF
	add 0xF0,r15
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/eq r5,r3
	bf loc_8c1B113E
	bra loc_8c1B179C
	nop

loc_8c1B113E:
	mov 0x58,r0 ; r0 set to 0x58
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/eq r5,r2
	bf loc_8c1B114C
	bra loc_8c1B179C
	nop

loc_8c1b114c:
	mov.l @(loc_8C1B1244,pc),r12
	mov r12,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x10,r0
	bf loc_8c1b1166
	mov r4,r0
	nop
	add 0x54,r0
	mov.b @r0,r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bt loc_8c1b116e

loc_8c1b1166:
	mov.l @(loc_8C1B1248,pc),r0
	mov.b @r0,r0
	tst 0x04,r0
	bt loc_8c1b1180

loc_8c1b116e:
	mov.b @(0x02,r12),r0
	or 0x10,r0
	mov.b r0,@(0x02,r12)
	mov.l @r13,r2
	mov r2,r3
	add 0x54,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3

loc_8c1b1180:
	mov.l @r13,r4
	mov 0x5C,r0
	mov.b @(r0,r4),r2
	mov 0x21,r3
	extu.b r2,r2
	cmp/gt r3,r2
	bf loc_8c1b11ae
	mov 0x58,r0
	mov.b @(r0,r4),r1
	mov 0x22,r2
	extu.b r1,r1
	cmp/gt r2,r1
	bf loc_8c1b11ae
	mov 0x5C,r0
	mov.b @(r0,r4),r1
	mov 0x60,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bt loc_8c1b11ae
	mov.l @(loc_8C1B1248,pc),r1
	mov.b @r1,r0
	or 0x02,r0
	mov.b r0,@r1

loc_8c1b11ae:
	mov.l @(loc_8c1b124c,pc),r9
	mov r12,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x80,r0
	bf loc_8c1b11ee
	mov.l @(loc_8c1b1240,pc),r2
	mov 0x5C,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r3
	mov 0x21,r1
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c1b11ee
	mov.l @(loc_8c1b1250,pc),r2
	mov.w @(loc_8C1B1238,pc),r4
	jsr @r2
	mov 0x01,r5
	mov.b r0,@(0x08,r15)
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1b11ee
	mov.b @(0x02,r12),r0
	mov 0x01,r6
	or 0x80,r0
	mov.b r0,@(0x02,r12)
	mov.b @(0x08,r15),r0
	mov.l @(loc_8C1B1254,pc),r5
	mov.w @(loc_8C1B1238,pc),r4
	extu.b r0,r0
	jsr @r9
	and r0,r5

loc_8c1b11ee:
	mov.l @r13,r3
	mov 0x5C,r0
	mov.l @(loc_8c1b1250,pc),r10
	mov.b @(r0,r3),r2
	mov 0x2F,r3
	extu.b r2,r2
	cmp/gt r3,r2
	bf/s loc_8c1b126a
	mov 0x01,r11
	mov.l @(loc_8C1B1258,pc),r0
	mov.b @r0,r0
	tst 0x10,r0
	bf loc_8c1b126a
	mov.b @(0x01,r12),r0
	or 0x10,r0
	mov.b r0,@(0x01,r12)
	mov.w @(loc_8C1B123A,pc),r4
	jsr @r10
	mov 0x01,r5
	extu.w r0,r0
	tst r11,r0
	bf loc_8c1b126a
	mov.l @(loc_8C1B125C,pc),r0
	mov.l @(loc_8c1b1260,pc),r3
	mov.b @r0,r0
	mov.w @(loc_8C1B123C,pc),r1
	tst 0x10,r0
	mov.l @r13,r2
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	add 0x54,r2
	mov.b @(0x01,r12),r0
	bra loc_8c1b1264
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b1236:
	#data 0x00FF
loc_8C1B1238:
	#data 0x03A5
loc_8C1B123A:
	#data 0x0401
loc_8C1B123C:
	#data 0x0701
	#align4

loc_8c1b1240:
	#data 0x8C347970
loc_8C1B1244:
	#data 0x8C347979
loc_8C1B1248:
	#data 0x8C347974
loc_8c1b124c:
	#data bank19.loc_8c19e30c
loc_8c1b1250:
	#data bank19.loc_8c19e1f8
loc_8C1B1254:
	#data 0x0000FFFB
loc_8C1B1258:
	#data 0x8C34797A
loc_8C1B125C:
	#data 0x8C347975
loc_8c1b1260:
	#data bank13.loc_8c130ecc

;==============================================
loc_8c1b1264:
	or 0x20,r0
	bra loc_8c1b179c
	mov.b r0,@(0x01,r12)

loc_8c1b126a:
	mov.l @r13,r2
	mov 0x5C,r0
	mov.b @(r0,r2),r3
	mov 0x30,r2
	extu.b r3,r3
	cmp/gt r2,r3
	bf loc_8c1b129a
	mov.l @(loc_8C1B135C,pc),r0
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c1b129a
	mov.b @(0x02,r12),r0
	or 0x40,r0
	mov.b r0,@(0x02,r12)
	mov.w @(loc_8C1B1350,pc),r4
	jsr @r10
	mov 0x01,r5
	extu.b r0,r5
	mov.b r0,@(0x04,r15)
	mov.l @(loc_8C1B1360,pc),r3
	mov 0x01,r6
	mov.w @(loc_8C1B1350,pc),r4
	jsr @r9
	and r3,r5

loc_8c1b129a:
	mov r12,r0
	nop
	mov.b @(0x03,r0),r0
	tst 0x40,r0
	bf loc_8c1b12c0
	mov.l @(loc_8C1B1364,pc),r3
	mov 0x5C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x48,r0
	bf loc_8c1b12c0
	mov.b @(0x03,r12),r0
	mov 0x01,r6
	or 0x40,r0
	mov.b r0,@(0x03,r12)
	mov.w @(loc_8C1B1352,pc),r5
	jsr @r9
	mov 0x49,r4

loc_8c1b12c0:
	mov.l @r13,r0
	mov 0x58,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x62,r0
	bt loc_8c1b12d0
	bra loc_8c1b179c
	nop

loc_8c1b12d0:
	mov.l @(loc_8c1b1368,pc),r2
	mov.w @(loc_8C1B1354,pc),r4
	jsr @r2
	mov 0x02,r5
	mov.l @(loc_8C1B136C,pc),r3
	extu.w r0,r0
	mov.w @(loc_8C1B1356,pc),r2
	and r3,r0
	cmp/eq r2,r0
	bt loc_8c1b12e8
	bra loc_8c1b179c
	nop

loc_8c1b12e8:
	mov r12,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x10,r0
	bf loc_8c1b12f6
	bra loc_8c1b179c
	nop

loc_8c1b12f6:
	mov r12,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x04,r0
	bt loc_8c1b1304
	bra loc_8c1b179c
	nop

loc_8c1b1304:
	mov.l @(loc_8C1B1370,pc),r14
	mov 0x00,r2
	mov.l r2,@r14
	mov.l @r13,r3
	add 0x74,r3
	mov.b @r3,r0
	and 0xF0,r0
	or 0x02,r0
	mov.b r0,@r3
	mov.l @r13,r2
	mov 0x70,r0
	mov 0x0C,r3
	mov.b r3,@(r0,r2)
	bra loc_8c1b13a8
	mov 0x00,r8

loc_8c1b1322:
	mov.l @r13,r3
	add 0x74,r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @(loc_8c1b1374,pc),r2
	mov 0x32,r5
	jsr @r2
	mov r15,r4
	bra loc_8c1b1380
	nop

loc_8c1b1338:
	mov.l @(loc_8c1b1378,pc),r3
	jsr @r3
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b1380
	mov.l @(loc_8c1b137c,pc),r3
	mov.w @(loc_8C1B1358,pc),r4
	jsr @r3
	nop
	bra loc_8c1b179c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B1350:
	#data 0x0406
loc_8C1B1352:
	#data 0x00D0
loc_8C1B1354:
	#data 0x0275
loc_8C1B1356:
	#data 0x0E00
loc_8C1B1358:
	#data 0x1004
	#align4

loc_8C1B135C:
	#data 0x8C34797B
loc_8C1B1360:
	#data 0x0000FF7F
loc_8C1B1364:
	#data 0x8C347970
loc_8c1b1368:
	#data bank19.loc_8c19e1f8
loc_8C1B136C:
	#data 0x0000FF00
loc_8C1B1370:
	#data 0x8C34B220
loc_8c1b1374:
	#data loc_8c1b3eec
loc_8c1b1378:
	#data loc_8c1b3f0c
loc_8c1b137c:
	#data bank1a.loc_8c1a003e

;==============================================
loc_8c1b1380:
	mov.l @r13,r0
	add 0x74,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c1b1338
	mov.l @r13,r4
	mov 0x64,r0
	mov.b @(r0,r4),r4
	mov.l @r13,r3
	extu.b r4,r4
	mov 0x60,r0
	shll8 r4
	mov.b @(r0,r3),r2
	extu.b r2,r2
	mov.l @r14,r3
	or r2,r4
	extu.w r4,r4
	add r4,r3
	add 0x01,r8
	mov.l r3,@r14

loc_8c1b13a8:
	mov.w @(loc_8C1B1440,pc),r3
	extu.w r8,r2
	cmp/ge r3,r2
	bf loc_8c1b1322
	mov.l @r14,r1
	shlr8 r1
	shlr2 r1
	shlr r1
	mov.l r1,@r14
	mov.w @(loc_8C1B1442,pc),r4
	jsr @r10
	mov 0x01,r5
	bsr loc_8c1b1012
	mov.b r0,@(0x04,r15)
	mov.l @(loc_8C1B144C,pc),r2
	mov 0x51,r3
	mov.l r0,@r2
	mov.l @r14,r1
	cmp/hs r3,r1
	bt loc_8c1b13da
	mov.l @(loc_8C1B1450,pc),r2
	tst r2,r0
	bt loc_8c1b13da
	bra loc_8c1b15da
	mov 0x16,r14

loc_8c1b13da:
	mov.l @r14,r4
	mov 0x71,r2
	cmp/hs r2,r4
	bt loc_8c1b13f0
	mov.l @(loc_8C1B144C,pc),r0
	mov.l @(loc_8C1B1454,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b13f0
	bra loc_8c1b15da
	mov 0x15,r14

loc_8c1b13f0:
	mov.w @(loc_8C1B1444,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b1404
	mov.l @(loc_8C1B144C,pc),r0
	mov.l @(loc_8C1B1458,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b1404
	bra loc_8c1b15da
	mov 0x14,r14

loc_8c1b1404:
	mov.w @(loc_8C1B1446,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b1418
	mov.l @(loc_8C1B144C,pc),r0
	mov.l @(loc_8C1B145C,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b1418
	bra loc_8c1b15da
	mov 0x13,r14

loc_8c1b1418:
	mov.w @(loc_8C1B1448,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b142c
	mov.l @(loc_8C1B144C,pc),r0
	mov.l @(loc_8C1B1460,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b142c
	bra loc_8c1b15da
	mov 0x12,r14

loc_8c1b142c:
	mov.w @(loc_8C1B144A,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b1468
	mov.l @(loc_8C1B144C,pc),r0
	mov.l @(loc_8C1B1464,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b1468
	bra loc_8c1b15da
	mov 0x11,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B1440:
	#data 0x0190
loc_8C1B1442:
	#data 0x0604
loc_8C1B1444:
	#data 0x0081
loc_8C1B1446:
	#data 0x0091
loc_8C1B1448:
	#data 0x00B1
loc_8C1B144A:
	#data 0x00BD
	#align4

loc_8C1B144C:
	#data 0x8C34B228
loc_8C1B1450:
	#data 0x00200000
loc_8C1B1454:
	#data 0x00100000
loc_8C1B1458:
	#data 0x00080000
loc_8C1B145C:
	#data 0x00040000
loc_8C1B1460:
	#data 0x00020000
loc_8C1B1464:
	#data 0x00010000

;==============================================
loc_8c1b1468:
	mov.w @(loc_8C1B1508,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b147c
	mov.l @(loc_8C1B152C,pc),r0
	mov.l @(loc_8C1B1528,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b147c
	bra loc_8c1b15da
	mov 0x10,r14

loc_8c1b147c:
	mov.w @(loc_8C1B150A,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b1490
	mov.l @(loc_8C1B152C,pc),r0
	mov.w @(loc_8C1B150C,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b1490
	bra loc_8c1b15da
	mov 0x0F,r14

loc_8c1b1490:
	mov.w @(loc_8C1B150E,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b14a4
	mov.l @(loc_8C1B152C,pc),r0
	mov.w @(loc_8C1B1510,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b14a4
	bra loc_8c1b15da
	mov 0x0E,r14

loc_8c1b14a4:
	mov.w @(loc_8C1B1512,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b14b8
	mov.l @(loc_8C1B152C,pc),r0
	mov.w @(loc_8C1B1514,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b14b8
	bra loc_8c1b15da
	mov 0x0D,r14

loc_8c1b14b8:
	mov.w @(loc_8C1B1516,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b14cc
	mov.l @(loc_8C1B152C,pc),r0
	mov.w @(loc_8C1B1518,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b14cc
	bra loc_8c1b15da
	mov 0x0C,r14

loc_8c1b14cc:
	mov.w @(loc_8C1B151A,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b14e0
	mov.l @(loc_8C1B152C,pc),r0
	mov.w @(loc_8C1B151C,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b14e0
	bra loc_8c1b15da
	mov 0x0B,r14

loc_8c1b14e0:
	mov.w @(loc_8C1B151E,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b14f4
	mov.l @(loc_8C1B152C,pc),r0
	mov.w @(loc_8C1B1520,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b14f4
	bra loc_8c1b15da
	mov 0x0A,r14

loc_8c1b14f4:
	mov.w @(loc_8C1B1522,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b1530
	mov.l @(loc_8C1B152C,pc),r0
	mov.w @(loc_8C1B1524,pc),r3
	mov.l @r0,r1
	tst r3,r1
	bt loc_8c1b1530
	bra loc_8c1b15da
	mov 0x09,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B1508:
	#data 0x00D0
loc_8C1B150A:
	#data 0x00D8
loc_8C1B150C:
	#data 0x4000
loc_8C1B150E:
	#data 0x00E8
loc_8C1B1510:
	#data 0x2000
loc_8C1B1512:
	#data 0x00F6
loc_8C1B1514:
	#data 0x1000
loc_8C1B1516:
	#data 0x00FB
loc_8C1B1518:
	#data 0x0800
loc_8C1B151A:
	#data 0x0106
loc_8C1B151C:
	#data 0x0400
loc_8C1B151E:
	#data 0x011A
loc_8C1B1520:
	#data 0x0200
loc_8C1B1522:
	#data 0x0120
loc_8C1B1524:
	#data 0x0100
	#align4

loc_8C1B1528:
	#data 0x00008000
loc_8C1B152C:
	#data 0x8C34B228

;==============================================
loc_8c1b1530:
	mov.w @(loc_8C1B15C0,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b1542
	mov.l @(loc_8C1B15D0,pc),r1
	mov.l @r1,r0
	tst 0x80,r0
	bt loc_8c1b1542
	bra loc_8c1b15da
	mov 0x08,r14

loc_8c1b1542:
	mov.w @(loc_8C1B15C2,pc),r3
	cmp/hs r3,r4
	bt loc_8c1b1554
	mov.l @(loc_8C1B15D0,pc),r1
	mov.l @r1,r0
	tst 0x40,r0
	bt loc_8c1b1554
	bra loc_8c1b15da
	mov 0x07,r14

loc_8c1b1554:
	mov.w @(loc_8C1B15C4,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b1566
	mov.l @(loc_8C1B15D0,pc),r1
	mov.l @r1,r0
	tst 0x20,r0
	bt loc_8c1b1566
	bra loc_8c1b15da
	mov 0x06,r14

loc_8c1b1566:
	mov.w @(loc_8C1B15C6,pc),r3
	cmp/hs r3,r4
	bt loc_8c1b1578
	mov.l @(loc_8C1B15D0,pc),r1
	mov.l @r1,r0
	tst 0x10,r0
	bt loc_8c1b1578
	bra loc_8c1b15da
	mov 0x05,r14

loc_8c1b1578:
	mov.w @(loc_8C1B15C8,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b158a
	mov.l @(loc_8C1B15D0,pc),r1
	mov.l @r1,r0
	tst 0x08,r0
	bt loc_8c1b158a
	bra loc_8c1b15da
	mov 0x04,r14

loc_8c1b158a:
	mov.w @(loc_8C1B15CA,pc),r3
	cmp/hs r3,r4
	bt loc_8c1b159c
	mov.l @(loc_8C1B15D0,pc),r1
	mov.l @r1,r0
	tst 0x04,r0
	bt loc_8c1b159c
	bra loc_8c1b15da
	mov 0x03,r14

loc_8c1b159c:
	mov.w @(loc_8C1B15CC,pc),r2
	cmp/hs r2,r4
	bt loc_8c1b15ae
	mov.l @(loc_8C1B15D0,pc),r1
	mov.l @r1,r0
	tst 0x02,r0
	bt loc_8c1b15ae
	bra loc_8c1b15da
	mov 0x02,r14

loc_8c1b15ae:
	mov.w @(loc_8C1B15CE,pc),r3
	cmp/hs r3,r4
	bt loc_8c1b15d4
	mov.l @(loc_8C1B15D0,pc),r1
	mov.l @r1,r0
	tst 0x01,r0
	bt loc_8c1b15d4
	bra loc_8c1b15da
	mov r11,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B15C0:
	#data 0x012A
loc_8C1B15C2:
	#data 0x0135
loc_8C1B15C4:
	#data 0x0139
loc_8C1B15C6:
	#data 0x013D
loc_8C1B15C8:
	#data 0x0145
loc_8C1B15CA:
	#data 0x014F
loc_8C1B15CC:
	#data 0x0151
loc_8C1B15CE:
	#data 0x0155
	#align4

loc_8C1B15D0:
	#data 0x8C34B228

;==============================================
loc_8c1b15d4:
	mov.b @(0x02,r12),r0
	or 0x08,r0
	mov.b r0,@(0x02,r12)

loc_8c1b15da:
	bsr loc_8c1b104a
	nop
	mov.l @(loc_8C1B16A4,pc),r8
	mov.l @(loc_8C1B16A8,pc),r2
	mov.b @r8,r3
	extu.b r3,r3
	shlr r3
	bsr loc_8c1b10a8
	mov.b r3,@r2
	mov.l @(loc_8C1B16AC,pc),r3
	mov 0x00,r2
	mov.b r0,@r3
	mov.l @(loc_8C1B16B0,pc),r1
	mov.b r2,@r1
	mov.w @(loc_8C1B1692,pc),r4
	jsr @r10
	mov 0x02,r5
	mov.w r0,@(0x0C,r15)
	mov.w @(loc_8C1B1694,pc),r4
	jsr @r10
	mov 0x02,r5
	mov r0,r7
	mov.w @(0x0C,r15),r0
	mov.w @(loc_8C1B1696,pc),r3
	extu.w r7,r4
	mov r0,r5
	mov.b @r8,r6
	extu.w r5,r5
	cmp/eq r3,r5
	bf/s loc_8c1b163a
	extu.b r6,r6
	mov.w @(loc_8C1B1698,pc),r1
	cmp/gt r1,r4
	bf loc_8c1b16c2
	mov 0x05,r2
	extu.b r14,r0
	cmp/gt r2,r0
	bf loc_8c1b16c2
	cmp/gt r11,r6
	bt loc_8c1b162e
	bra loc_8c1b16c2
	add 0xFF,r14

loc_8c1b162e:
	mov 0x06,r3
	extu.b r14,r2
	cmp/gt r3,r2
	bf loc_8c1b16c2
	bra loc_8c1b16c2
	add 0xFE,r14

loc_8c1b163a:
	mov.l @(loc_8C1B16B4,pc),r7
	mov r5,r2
	and r7,r2
	cmp/eq r3,r2
	bf loc_8c1b1668
	mov.w @(loc_8C1B169A,pc),r2
	cmp/gt r2,r4
	bt loc_8c1b1654
	mov.l @(loc_8C1B16B8,pc),r3
	mov 0x04,r0
	mov.l @r3,r1
	cmp/hs r0,r1
	bf loc_8c1b16c2

loc_8c1b1654:
	mov.b @r8,r2
	extu.b r2,r2
	cmp/gt r11,r2
	bt loc_8c1b1660
	bra loc_8c1b1662
	mov r11,r3

loc_8c1b1660:
	mov 0x02,r3

loc_8c1b1662:
	mov.l @(loc_8C1B16B0,pc),r1
	bra loc_8c1b16c2
	mov.b r3,@r1

loc_8c1b1668:
	mov.w @(loc_8C1B169C,pc),r2
	and r7,r5
	cmp/eq r2,r5
	bt/s loc_8c1b167a
	mov.l r5,@(0x0C,r15)
	mov.l @(0x0C,r15),r1
	mov.w @(loc_8C1B169E,pc),r0
	cmp/eq r0,r1
	bf loc_8c1b16c2

loc_8c1b167a:
	mov.w @(loc_8C1B16A0,pc),r2
	cmp/gt r2,r4
	bf loc_8c1b16c2
	mov 0x02,r1
	cmp/ge r1,r6
	bf loc_8c1b16c2
	mov.b @r8,r3
	extu.b r3,r3
	cmp/gt r11,r3
	bf loc_8c1b16bc
	bra loc_8c1b16be
	mov 0x02,r2

;==============================================
loc_8C1B1692:
	#data 0x06C9
loc_8C1B1694:
	#data 0x0A63
loc_8C1B1696:
	#data 0x2000
loc_8C1B1698:
	#data 0x0600
loc_8C1B169A:
	#data 0x03E8
loc_8C1B169C:
	#data 0x3000
loc_8C1B169E:
	#data 0x4000
loc_8C1B16A0:
	#data 0x0200
	#align4

loc_8C1B16A4:
	#data 0x8C34B210
loc_8C1B16A8:
	#data 0x8C34B211
loc_8C1B16AC:
	#data 0x8C34B212
loc_8C1B16B0:
	#data 0x8C34B230
loc_8C1B16B4:
	#data 0x0000F000
loc_8C1B16B8:
	#data 0x8C34B22C

;===========================================
loc_8c1b16bc:
	mov 0x00,r2

loc_8c1b16be:
	mov.l @(loc_8C1B17B8,pc),r1
	mov.b r2,@r1

loc_8c1b16c2:
	mov.l @(loc_8C1B17B8,pc),r3
	extu.b r14,r2
	mov.b @r3,r4
	extu.b r4,r1
	cmp/gt r1,r2
	bf loc_8c1b16d2
	bra loc_8c1b16d8
	sub r4,r14

loc_8c1b16d2:
	mov.b @(0x02,r12),r0
	or 0x08,r0
	mov.b r0,@(0x02,r12)

loc_8c1b16d8:
	mov.l @(loc_8C1B17BC,pc),r3
	extu.b r14,r2
	mov.b @r3,r4
	extu.b r4,r1
	cmp/gt r1,r2
	bf loc_8c1b16e8
	bra loc_8c1b16ee
	sub r4,r14

loc_8c1b16e8:
	mov.b @(0x02,r12),r0
	or 0x08,r0
	mov.b r0,@(0x02,r12)

loc_8c1b16ee:
	mov.l @(loc_8C1B17C0,pc),r3
	extu.b r14,r2
	mov.b @r3,r4
	extu.b r4,r1
	cmp/gt r1,r2
	bf loc_8c1b16fe
	bra loc_8c1b1704
	sub r4,r14

loc_8c1b16fe:
	mov.b @(0x02,r12),r0
	or 0x08,r0
	mov.b r0,@(0x02,r12)

loc_8c1b1704:
	mov 0x02,r3
	extu.b r14,r4
	cmp/gt r3,r4
	bf loc_8c1b1718
	mov.l @(loc_8C1B17C4,pc),r2
	mov.b @r2,r1
	tst r1,r1
	bf loc_8c1b1718
	bra loc_8c1b1728
	add 0xFE,r14

loc_8c1b1718:
	cmp/gt r11,r4
	bf loc_8c1b1728
	mov.l @(loc_8C1B17C4,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1b1728
	add 0xFF,r14

loc_8c1b1728:
	extu.b r14,r3
	cmp/gt r11,r3
	bf loc_8c1b1732
	bra loc_8c1b1738
	add 0xFF,r14

loc_8c1b1732:
	mov.b @(0x02,r12),r0
	or 0x08,r0
	mov.b r0,@(0x02,r12)

loc_8c1b1738:
	mov.b @(0x04,r15),r0
	extu.b r14,r2
	extu.b r0,r0
	cmp/gt r0,r2
	bf loc_8c1b1746
	mov.b @(0x04,r15),r0
	mov r0,r14

loc_8c1b1746:
	extu.b r14,r0
	cmp/eq 0x01,r0
	bf loc_8c1b1752
	mov.b @(0x02,r12),r0
	or 0x08,r0
	mov.b r0,@(0x02,r12)

loc_8c1b1752:
	mov r12,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x08,r0
	bt loc_8c1b178e
	mov.b @(0x01,r12),r0
	or 0x20,r0
	mov.b r0,@(0x01,r12)
	mov.w @(loc_8C1B17B0,pc),r4
	jsr @r10
	mov 0x01,r5
	mov.l @(loc_8C1B17C8,pc),r5
	mov.w @(loc_8C1B17B0,pc),r4
	and r0,r5
	jsr @r9
	mov 0x01,r6
	mov.w @(loc_8C1B17B2,pc),r4
	jsr @r10
	mov 0x01,r5
	mov.l @(loc_8C1B17C8,pc),r5
	mov.w @(loc_8C1B17B2,pc),r4
	and r0,r5
	jsr @r9
	mov 0x01,r6
	mov.l @r13,r3
	add 0x54,r3
	mov.b @r3,r0
	or 0x01,r0
	bra loc_8c1b1796
	mov.b r0,@r3

loc_8c1b178e:
	mov.w @(loc_8C1B17B4,pc),r4
	mov 0x01,r6
	jsr @r9
	extu.b r14,r5

loc_8c1b1796:
	mov.b @(0x02,r12),r0
	or 0x04,r0
	mov.b r0,@(0x02,r12)

loc_8c1B179C:
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
loc_8c1b17b0:
	#data 0x0401
loc_8c1b17b2:
	#data 0x06C0
	#align4

loc_8c1b17b4:
	#data 0x000002E4
loc_8c1b17b8:
	#data 0x8C34B230
loc_8c1b17bc:
	#data 0x8C34B211
loc_8c1b17c0:
	#data 0x8C34B212
loc_8c1b17c4:
	#data 0x8C347986
loc_8c1b17c8:
	#data 0x0000FFFE

;==============================================
loc_8c1B17CC:
	mov.l r14,@-r15
	mov 0x5C,r0 ; r0 set to 0x5C
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1B190C,pc),r13 ; r13 set to 0x8C347970
	sts.l pr,@-r15
	mov.l @(loc_8c1B1908,pc),r14 ; r14 set to 0x8C347979
	mov.w @(loc_8c1B18F4,pc),r11 ; r11 set to 0xFF
	mov.l @r13,r4
	add 0xF4,r15
	mov.w @(loc_8c1B18F2,pc),r8 ; r8 set to 0x401
	mov.l @(loc_8c1B1900,pc),r10 ; r10 set to 0x8C19E1F8
	mov.l @(loc_8c1B1904,pc),r12 ; r12 set to 0x8C19E30C
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/eq r11,r3
	bf loc_8c1B17FA
	bra loc_8c1B1D1E
	nop

loc_8c1B17FA:
	mov 0x58,r0 ; r0 set to 0x58
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/eq r11,r2
	bf loc_8c1B1808
	bra loc_8c1B1D1E
	nop

loc_8c1B1808:
	mov r14,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x08,r0
	bt loc_8c1B1832
	mov.l @(loc_8c1B1914,pc),r3 ; r3 set to 0x8C1B3F0C
	mov.l @(loc_8c1B1910,pc),r1 ; r1 set to 0x8C34B224
	jsr @r3
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B1824
	bra loc_8c1B1D1E
	nop

loc_8c1b1824:
	mov r11,r5
	mov 0x01,r6
	jsr @r12
	mov 0x53,r4
	mov.b @(0x01,r14),r0
	and 0xF7,r0
	mov.b r0,@(0x01,r14)
	
loc_8c1b1832:
	mov.l @r13,r4
	mov 0x5C,r0
	mov.b @(r0,r4),r2
	mov 0x21,r3
	extu.b r2,r2
	cmp/gt r3,r2
	bf loc_8c1b1860
	mov 0x58,r0
	mov.b @(r0,r4),r1
	mov 0x22,r2
	extu.b r1,r1
	cmp/gt r2,r1
	bf loc_8c1b1860
	mov 0x5C,r0
	mov.b @(r0,r4),r1
	mov 0x60,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bt loc_8c1b1860
	mov.l @(loc_8C1B1918,pc),r1
	mov.b @r1,r0
	or 0x02,r0
	mov.b r0,@r1
	
loc_8c1b1860:
	mov r14,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x80,r0
	bf loc_8c1b189e
	mov.l @(loc_8c1b190c,pc),r2
	mov 0x5C,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r3
	mov 0x21,r1
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c1b189e
	mov.l @(loc_8c1b1900,pc),r2
	mov.w @(loc_8C1B18F6,pc),r4
	jsr @r2
	mov 0x01,r5
	mov.b r0,@(0x08,r15)
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1b189e
	mov.b @(0x02,r14),r0
	mov 0x01,r6
	or 0x80,r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x08,r15),r0
	mov.l @(loc_8C1B191C,pc),r5
	mov.w @(loc_8C1B18F6,pc),r4
	extu.b r0,r0
	jsr @r12
	and r0,r5
	
loc_8c1b189e:
	mov.w @(loc_8C1B18F8,pc),r11
	mov r14,r0
	nop
	mov.b @(0x01,r0),r0
	tst 0x08,r0
	bf loc_8c1b193a
	mov.l @(loc_8c1b190c,pc),r2
	mov 0x5C,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r3
	mov 0x20,r1
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c1b193a
	mov.l @(loc_8c1b190c,pc),r3
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x2F,r2
	extu.b r1,r1
	cmp/gt r2,r1
	bt loc_8c1b193a
	mov.b @(0x01,r14),r0
	or 0x08,r0
	mov.b r0,@(0x01,r14)
	mov r14,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x08,r0
	bt loc_8c1b193a
	mov.b @r14,r0
	or 0x04,r0
	mov.b r0,@r14
	mov.w @(loc_8C1B18FA,pc),r5
	mov.w @(loc_8C1B18FC,pc),r4
	jsr @r12
	mov 0x02,r6
	mov.w @(loc_8C1B18FE,pc),r4
	mov 0x02,r6
	jsr @r12
	mov 0x00,r5
	bra loc_8c1b1920
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b18f2:
	#data 0x0401
loc_8c1b18f4:
	#data 0x00FF
loc_8C1B18F6:
	#data 0x03A5
loc_8C1B18F8:
	#data 0x02E4
loc_8C1B18FA:
	#data 0x7FFF
loc_8C1B18FC:
	#data 0x0AFB
loc_8C1B18FE:
	#data 0x0BFB
	#align4

loc_8c1b1900:
	#data bank19.loc_8c19e1f8
loc_8c1b1904:
	#data bank19.loc_8c19E30C
loc_8c1b1908:
	#data 0x8C347979
loc_8c1b190c:
	#data 0x8C347970
loc_8c1b1910:
	#data 0x8C34B224
loc_8c1b1914:
	#data loc_8c1b3F0C
loc_8C1B1918:
	#data 0x8C347974
loc_8C1B191C:
	#data 0x0000FFFB

;==============================================
loc_8c1b1920:
	mov.b @(0x01,r14),r0
	mov 0x0E,r5
	mov 0x01,r6
	or 0x40,r0
	mov.b r0,@(0x01,r14)
	jsr @r12
	mov r11,r4
	mov.l @r13,r3
	add 0x54,r3
	mov.b @r3,r0
	or 0x01,r0
	bra loc_8c1b1d1e
	mov.b r0,@r3

loc_8c1b193a:
	mov.l @r13,r2
	mov 0x5C,r0
	mov.b @(r0,r2),r3
	mov 0x2F,r2
	extu.b r3,r3
	cmp/gt r2,r3
	bf loc_8c1b198e
	mov r14,r0
	nop
	mov.b @(0x01,r0),r0
	tst 0x08,r0
	bt loc_8c1b198e
	mov.b @(0x01,r14),r0
	mov 0x01,r5
	and 0xF7,r0
	mov.b r0,@(0x01,r14)
	jsr @r10
	mov r8,r4
	extu.w r0,r0
	tst 0x01,r0
	bf loc_8c1b196c
	mov.b @(0x01,r14),r0
	or 0x40,r0
	bra loc_8c1b1d1e
	mov.b r0,@(0x01,r14)

loc_8c1b196c:
	mov.l @r13,r2
	mov r2,r0
	nop
	add 0x54,r0
	mov.b @r0,r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bf loc_8c1b198e
	mov.b @(0x02,r14),r0
	or 0x10,r0
	mov.b r0,@(0x02,r14)
	mov.l @r13,r2
	mov r2,r3
	add 0x54,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3

loc_8c1b198e:
	mov.l @r13,r2
	mov 0x5C,r0
	mov.b @(r0,r2),r3
	mov 0x30,r2
	extu.b r3,r3
	cmp/gt r2,r3
	bf loc_8c1b19bc
	mov.l @(loc_8C1B1A24,pc),r0
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c1b19bc
	mov.b @(0x02,r14),r0
	or 0x40,r0
	mov.b r0,@(0x02,r14)
	mov.w @(loc_8C1B1A1C,pc),r4
	jsr @r10
	mov 0x01,r5
	mov.w r0,@r15
	mov 0x01,r6
	mov.l @(loc_8C1B1A28,pc),r5
	mov.w @(loc_8C1B1A1C,pc),r4
	jsr @r12
	and r0,r5

loc_8c1b19bc:
	mov r14,r0
	nop
	mov.b @(0x03,r0),r0
	tst 0x10,r0
	bf loc_8c1b1a3c
	mov.l @(loc_8C1B1A2C,pc),r2
	mov 0x5C,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r3
	mov 0x47,r1
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c1b1a3c
	mov.b @(0x03,r14),r0
	or 0x10,r0
	mov.b r0,@(0x03,r14)
	mov.w @(loc_8C1B1A1E,pc),r4
	jsr @r10
	mov 0x01,r5
	extu.w r0,r0
	tst 0x3F,r0
	bt loc_8c1b1a3c
	mov.w @(loc_8C1B1A20,pc),r4
	jsr @r10
	mov 0x01,r5
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c1b1a3c
	mov 0x01,r5
	jsr @r10
	mov r8,r4
	mov.l @(loc_8C1B1A30,pc),r5
	mov r8,r4
	and r0,r5
	jsr @r12
	mov 0x01,r6
	mov.w @(loc_8C1B1A22,pc),r4
	mov 0x01,r6
	jsr @r12
	mov 0x00,r5
	mov.l @(loc_8c1b1a38,pc),r2
	mov.l @(loc_8C1B1A34,pc),r4
	jsr @r2
	mov 0x0A,r5
	mov.b @(0x02,r14),r0
	or 0x08,r0
	bra loc_8c1b1d1e
	mov.b r0,@(0x02,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B1A1C:
	#data 0x0406
loc_8C1B1A1E:
	#data 0x06EA
loc_8C1B1A20:
	#data 0x0368
loc_8C1B1A22:
	#data 0x0276
	#align4

loc_8C1B1A24:
	#data 0x8C34797B
loc_8C1B1A28:
	#data 0x0000FF7F
loc_8C1B1A2C:
	#data 0x8C347970
loc_8C1B1A30:
	#data 0x0000FFFE
loc_8C1B1A34:
	#data 0x8C34B224
loc_8c1b1a38:
	#data loc_8c1b3eec

;==============================================
loc_8c1b1a3c:
	mov r14,r0
	nop
	mov.b @(0x01,r0),r0
	tst 0x04,r0
	bf loc_8c1b1a88
	mov.l @(loc_8C1B1B18,pc),r2
	mov 0x5C,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r3
	mov 0x40,r1
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c1b1a88
	mov.l @(loc_8C1B1B18,pc),r3
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x4F,r2
	extu.b r1,r1
	cmp/gt r2,r1
	bt loc_8c1b1a88
	mov.l @r13,r2
	mov r2,r0
	nop
	add 0x54,r0
	mov.b @r0,r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bf loc_8c1b1a82
	mov.w @(loc_8C1B1B14,pc),r4
	jsr @r10
	mov 0x02,r5
	mov.w @(loc_8C1B1B14,pc),r4
	mov r0,r5
	jsr @r12
	mov 0x02,r6

loc_8c1b1a82:
	mov.b @(0x01,r14),r0
	or 0x04,r0
	mov.b r0,@(0x01,r14)

loc_8c1b1a88:
	mov.l @r13,r0
	mov 0x5C,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x63,r0
	bt loc_8c1b1a98
	bra loc_8c1b1d1e
	nop

loc_8c1b1a98:
	mov.l @(loc_8c1b1b1c,pc),r2
	mov 0x01,r5
	jsr @r2
	mov 0x4D,r4
	extu.w r0,r0
	cmp/eq 0x02,r0
	bt loc_8c1b1aaa
	bra loc_8c1b1d1e
	nop

loc_8c1b1aaa:
	mov r14,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x10,r0
	bf loc_8c1b1ab8
	bra loc_8c1b1d1e
	nop

loc_8c1b1ab8:
	mov r14,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x04,r0
	bt loc_8c1b1ac6
	bra loc_8c1b1d1e
	nop

loc_8c1b1ac6:
	mov.l @(loc_8C1B1B20,pc),r9
	mov 0x00,r4
	mov.l r4,@r9
	mov.l @r13,r3
	add 0x74,r3
	mov.b @r3,r0
	and 0xF0,r0
	or 0x02,r0
	mov.b r0,@r3
	mov.l @r13,r2
	mov 0x70,r0
	mov 0x0C,r3
	mov.b r3,@(r0,r2)
	bra loc_8c1b1b5c
	mov.b r4,@r15

loc_8c1b1ae4:
	mov.l @r13,r3
	add 0x74,r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @(loc_8c1b1b24,pc),r2
	mov r15,r4
	mov 0x32,r5
	jsr @r2
	add 0x04,r4
	bra loc_8c1b1b30
	nop

loc_8c1b1afc:
	mov.l @(loc_8c1b1b28,pc),r3
	jsr @r3
	mov.l @(0x04,r15),r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b1b30
	mov.l @(loc_8c1b1b2c,pc),r3
	mov.w @(loc_8C1B1B16,pc),r4
	jsr @r3
	nop
	bra loc_8c1b1d1e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B1B14:
	#data 0x0A29
loc_8C1B1B16:
	#data 0x1018
	#align4

loc_8C1B1B18:
	#data 0x8C347970
loc_8c1b1b1c:
	#data bank19.loc_8c19e1f8
loc_8C1B1B20:
	#data 0x8C34B21C
loc_8c1b1b24:
	#data loc_8c1b3eec
loc_8c1b1b28:
	#data loc_8c1b3f0c
loc_8c1b1b2c:
	#data bank1a.loc_8c1a003e

;==============================================
loc_8c1b1b30:
	mov.l @r13,r0
	add 0x74,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c1b1afc
	mov.l @r13,r4
	mov 0x64,r0
	mov.b @(r0,r4),r4
	mov.l @r13,r3
	extu.b r4,r4
	mov 0x60,r0
	shll8 r4
	mov.b @(r0,r3),r2
	extu.b r2,r2
	mov.l @r9,r3
	or r2,r4
	extu.w r4,r4
	add r4,r3
	mov.l r3,@r9
	mov.b @r15,r2
	add 0x01,r2
	mov.b r2,@r15

loc_8c1b1b5c:
	mov.b @r15,r3
	mov 0x32,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c1b1ae4
	mov.l @r9,r1
	shlr8 r1
	mov.l r1,@r9
	mov.w @(loc_8C1B1BFE,pc),r4
	jsr @r10
	mov 0x01,r5
	mov.l @r9,r2
	mov 0x50,r3
	cmp/hs r3,r2
	bt/s loc_8c1b1b82
	mov r0,r4
	extu.b r4,r0
	cmp/eq 0x0D,r0
	bt loc_8c1b1ba0

loc_8c1b1b82:
	mov.w @(loc_8C1B1C00,pc),r2
	mov.l @r9,r5
	cmp/hs r2,r5
	bt loc_8c1b1b92
	mov 0x0C,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bt loc_8c1b1ba0

loc_8c1b1b92:
	mov.w @(loc_8C1B1C02,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1ba6
	mov 0x0B,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1ba6

loc_8c1b1ba0:
	mov 0x01,r6
	bra loc_8c1b1c4a
	mov 0x0B,r5

loc_8c1b1ba6:
	mov.w @(loc_8C1B1C04,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1bbc
	mov 0x0A,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1bbc
	mov 0x0A,r5
	mov 0x01,r6
	bra loc_8c1b1c4a
	nop

loc_8c1b1bbc:
	mov.w @(loc_8C1B1C06,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1bd2
	mov 0x09,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1bd2
	mov 0x09,r5
	mov 0x01,r6
	bra loc_8c1b1c4a
	nop

loc_8c1b1bd2:
	mov.w @(loc_8C1B1C08,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1be8
	mov 0x08,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1be8
	mov 0x08,r5
	mov 0x01,r6
	bra loc_8c1b1c4a
	nop

loc_8c1b1be8:
	mov.w @(loc_8C1B1C0A,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1c0c
	mov 0x07,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1c0c
	mov 0x07,r5
	mov 0x01,r6
	bra loc_8c1b1c4a
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B1BFE:
	#data 0x0604
loc_8C1B1C00:
	#data 0x0090
loc_8C1B1C02:
	#data 0x0095
loc_8C1B1C04:
	#data 0x00A6
loc_8C1B1C06:
	#data 0x00B0
loc_8C1B1C08:
	#data 0x00C0
loc_8C1B1C0A:
	#data 0x00D0

;==============================================
loc_8c1b1c0c:
	mov.w @(loc_8C1B1C9A,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1c22
	mov 0x06,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1c22
	mov 0x06,r5
	mov 0x01,r6
	bra loc_8c1b1c4a
	nop

loc_8c1b1c22:
	mov.w @(loc_8C1B1C9C,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1c38
	mov 0x05,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1c38
	mov 0x05,r5
	mov 0x01,r6
	bra loc_8c1b1c4a
	nop

loc_8c1b1c38:
	mov.w @(loc_8C1B1C9E,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1c52
	mov 0x04,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1c52
	mov 0x04,r5
	mov 0x01,r6

loc_8c1b1c4a:
	jsr @r12
	mov r11,r4
	bra loc_8c1b1cc4
	nop

loc_8c1b1c52:
	mov.w @(loc_8C1B1CA0,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1c66
	mov 0x03,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1c66
	mov 0x01,r6
	bra loc_8c1b1c78
	mov 0x03,r5

loc_8c1b1c66:
	mov.w @(loc_8C1B1CA2,pc),r2
	cmp/hs r2,r5
	bt loc_8c1b1c80
	mov 0x02,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b1c80
	mov 0x02,r5
	mov 0x01,r6

loc_8c1b1c78:
	jsr @r12
	mov r11,r4
	bra loc_8c1b1c96
	nop

loc_8c1b1c80:
	mov.w @(loc_8C1B1CA4,pc),r3
	cmp/hs r3,r5
	bt loc_8c1b1ca6
	mov 0x01,r1
	extu.b r4,r4
	cmp/ge r1,r4
	bf loc_8c1b1ca6
	mov 0x01,r6
	mov r6,r5
	jsr @r12
	mov r11,r4

loc_8c1b1c96:
	bra loc_8c1b1cc4
	mov 0x01,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B1C9A:
	#data 0x00E0
loc_8C1B1C9C:
	#data 0x00E5
loc_8C1B1C9E:
	#data 0x00F0
loc_8C1B1CA0:
	#data 0x0100
loc_8C1B1CA2:
	#data 0x0105
loc_8C1B1CA4:
	#data 0x0110

;==============================================
loc_8c1b1ca6:
	mov.b @(0x02,r14),r0
	mov 0x01,r5
	or 0x08,r0
	mov.b r0,@(0x02,r14)
	jsr @r10
	mov r8,r4
	mov.l @(loc_8C1B1DA8,pc),r5
	mov r8,r4
	and r0,r5
	jsr @r12
	mov 0x01,r6
	mov.w @(loc_8C1B1D96,pc),r4
	mov 0x01,r6
	jsr @r12
	mov 0x00,r5

loc_8c1b1cc4:
	exts.b r4,r4
	tst r4,r4
	bt loc_8c1b1cee
	mov.w @(loc_8C1B1D98,pc),r4
	jsr @r10
	mov 0x02,r5
	mov.w r0,@r15
	mov.w @(loc_8C1B1D9A,pc),r4
	jsr @r10
	mov 0x02,r5
	mov.w @r15,r3
	mov r0,r4
	extu.w r4,r4
	extu.w r3,r3
	mov 0x0A,r2
	sub r4,r3
	cmp/gt r2,r3
	bt loc_8c1b1cee
	mov.b @(0x02,r14),r0
	or 0x08,r0
	mov.b r0,@(0x02,r14)

loc_8c1b1cee:
	mov r14,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x08,r0
	bt loc_8c1b1d18
	mov 0x01,r5
	jsr @r10
	mov r8,r4
	mov.l @(loc_8C1B1DA8,pc),r5
	mov r8,r4
	and r0,r5
	jsr @r12
	mov 0x01,r6
	mov.w @(loc_8C1B1D96,pc),r4
	mov 0x01,r6
	jsr @r12
	mov 0x00,r5
	mov.l @(loc_8c1b1db0,pc),r2
	mov.l @(loc_8C1B1DAC,pc),r4
	jsr @r2
	mov 0x0A,r5

loc_8c1b1d18:
	mov.b @(0x02,r14),r0
	or 0x04,r0
	mov.b r0,@(0x02,r14)

loc_8c1B1D1E:
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
loc_8c1B1D32:
	extu.b r4,r0
	mov.l r14,@-r15
	mov.l @(loc_8c1B1DB4,pc),r6 ; r6 set to 0x8C34B23A
	cmp/eq 0x0B,r0
	mov 0x00,r14 ; r14 set to 0x00
	bt/s loc_8c1B1D48
	extu.b r5,r7
	cmp/eq 0x0C,r0
	bt loc_8c1B1D6E
	bra loc_8c1B1D8C
	nop

loc_8c1B1D48:
	mov r7,r0
	nop
	cmp/eq 0x03,r0
	bt loc_8c1B1D64
	cmp/eq 0x04,r0
	bt loc_8c1B1D5E
	cmp/eq 0x05,r0
	bf loc_8c1B1D6A
	mov.w @(loc_8c1B1D9C,pc),r3 ; r3 set to 0x5F2
	bra loc_8c1B1D84
	mov.w r3,@r6

loc_8c1B1D5E:
	mov.w @(loc_8c1B1D9E,pc),r1 ; r1 set to 0x2C8
	bra loc_8c1B1D84
	mov.w r1,@r6

loc_8c1B1D64:
	mov.w @(loc_8c1B1DA0,pc),r3 ; r3 set to 0x4F5
	bra loc_8c1B1D84
	mov.w r3,@r6

loc_8c1B1D6A:
	bra loc_8c1B1D8E
	mov r14,r4

loc_8c1B1D6E:
	mov r7,r0
	nop
	cmp/eq 0x04,r0
	bt loc_8c1B1D80
	cmp/eq 0x05,r0
	bf loc_8c1B1D88
	mov.w @(loc_8c1B1DA2,pc),r3 ; r3 set to 0x54D
	bra loc_8c1B1D84
	mov.w r3,@r6

loc_8c1b1d80:
	mov.w @(loc_8C1B1DA4,pc),r2
	mov.w r2,@r6

loc_8c1B1D84:
	bra loc_8c1B1D8E
	mov 0x01,r4

loc_8c1B1D88:
	bra loc_8c1B1D8E
	mov r14,r4

loc_8c1b1d8c:
	mov r14,r4

loc_8c1B1D8E:
	mov r4,r0
	nop
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b1d96:
	#data 0x0276
loc_8c1b1d98:
	#data 0x06A5
loc_8c1b1d9a:
	#data 0x06A7
loc_8c1B1D9C:
	#data 0x05F2
loc_8c1B1D9E:
	#data 0x02C8
loc_8c1B1DA0:
	#data 0x04F5
loc_8c1B1DA2:
	#data 0x054D
loc_8c1b1da4:
	#data 0x03FF
	#align4

loc_8c1b1da8:
	#data 0x0000FFFE
loc_8c1b1dac:
	#data 0x8C34B224
loc_8c1B1DB0:
	#data loc_8c1B3EEC
loc_8c1B1DB4:
	#data 0x8C34B23A

;==============================================
loc_8c1B1DB8:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1B1ED4,pc),r14 ; r14 set to 0x8C347970
	sts.l pr,@-r15
	mov.l @r14,r0
	mov.l @(loc_8c1B1EC4,pc),r9 ; r9 set to 0x8C347974
	mov.b @(r0,r1),r0
	add 0xF4,r15
	mov.l @(loc_8c1B1EC0,pc),r8 ; r8 set to 0x8C34797F
	extu.b r0,r0
	mov.l @(loc_8c1B1EC8,pc),r11 ; r11 set to 0x8C19E1F8
	and 0xF0,r0
	mov.l @(loc_8c1B1ED0,pc),r13 ; r13 set to 0x8C347979
	mov.l @(loc_8c1B1ECC,pc),r12 ; r12 set to 0x8C19E30C
	cmp/eq 0x20,r0
	bt loc_8c1B1DE8
	bra loc_8c1B1EF4
	nop

loc_8c1B1DE8:
	mov r13,r0
	nop
	mov.b @(0x03,r0),r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf loc_8c1B1E08
	mov.l @(loc_8c1B1EDC,pc),r3 ; r3 set to 0x8C1B3EEC
	mov.l @(loc_8c1B1ED8,pc),r4 ; r4 set to 0x8C34B258
	mov.w @(loc_8c1B1EB8,pc),r5 ; r5 set to 0x320
	jsr @r3
	nop
	mov.b @(0x03,r13),r0
	or 0x01,r0
	bra loc_8c1B1E32
	mov.b r0,@(0x03,r13)

loc_8c1b1e08:
	mov.l @(loc_8c1b1ee0,pc),r2
	mov 0x5C,r0
	mov.l @r14,r3
	mov.b @r2,r10
	extu.b r10,r10
	mov.b @(r0,r3),r0
	extu.b r0,r0
	cmp/eq r0,r10
	bf loc_8c1b1e28
	mov.l @r14,r0
	mov 0x58,r2
	mov.l @(loc_8c1b1ee4,pc),r3
	mov.b @(r0,r2),r0
	mov.b @r3,r1
	cmp/eq r0,r1
	bt loc_8c1b1e48

loc_8c1b1e28:
	mov.l @(loc_8c1b1edc,pc),r3
	mov.l @(loc_8c1b1ed8,pc),r4
	mov.w @(loc_8c1b1eb8,pc),r5
	jsr @r3
	nop

loc_8c1B1E32:
	mov.l @r14,r2
	mov 0x5C,r0 ; r0 set to 0x5C
	mov.b @(r0,r2),r3
	mov.l @(loc_8c1B1EE0,pc),r1 ; r1 set to 0x8C34B232
	mov 0x58,r0 ; r0 set to 0x58
	mov.b r3,@r1 ; r1 ??? bc r3 is ???
	mov.l @r14,r2
	mov.b @(r0,r2),r3
	mov.l @(loc_8c1B1EE4,pc),r2 ; r2 set to 0x8C34B233
	bra loc_8c1B1F06
	mov.b r3,@r2

loc_8c1B1E48:
	mov.l @r14,r3
	mov 0x5C,r0
	mov.b @(r0,r3),r2
	extu.b r2,r2
	cmp/eq r2,r10
	bt loc_8c1b1e60
	mov.l @r14,r2
	mov 0x58,r0
	mov.b @(r0,r2),r3
	extu.b r3,r3
	cmp/eq r3,r10
	bf loc_8c1b1f06

loc_8c1B1E60:
	mov.l @(0x84,PC),r3
	mov.l @(0x74,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b1f06
	mov r13,r0
	nop
	mov.b @(0x4,r0),r0
	tst 0x80,r0
	bf loc_8c1b1ea6
	mov 0x01,r5
	jsr @r11
	mov 0x52,r4
	extu.b r0,r5
	mov.b r0,@r15
	mov.l @(0x68,PC),r3
	mov 0x01,r6
	and r3,r5
	jsr @r12
	mov 0x52,r4
	mov.w @(0x2A,PC),r4
	mov 0x01,r6
	jsr @r12
	mov 0x00,r5
	mov.b @(0x4,r13),r0
	mov.l @(0x40,PC),r4
	mov.l @(0x40,PC),r2
	or 0x80,r0
	mov.w @(0x1C,PC),r5
	jsr @r2
	mov.b r0,@(0x4,r13)
	bra loc_8c1b1f06
	nop

loc_8c1B1EA6:
	tst 0x40,r0
	bf loc_8c1b1f06
	mov.l @(0x44,PC),r1
	jsr @r1
	nop
	mov.b @(0x4,r13),r0
	or 0x40,r0
	bra loc_8c1b1f06
	mov.b r0,@(0x4,r13)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B1EB8:
	#data 0x0320
loc_8c1B1EBa:
	#data 0x02AD
loc_8c1B1EBc:
	#data 0x0190
	#align4

loc_8c1B1EC0:
	#data 0x8C34797F
loc_8c1B1EC4:
	#data 0x8C347974
loc_8c1B1EC8:
	#data bank19.loc_8c19E1F8
loc_8c1B1ECC:
	#data bank19.loc_8c19E30C
loc_8c1B1ED0:
	#data 0x8C347979
loc_8c1B1ED4:
	#data 0x8C347970
loc_8c1B1ED8:
	#data 0x8C34B258
loc_8c1B1EDC:
	#data loc_8c1B3EEC
loc_8c1B1EE0:
	#data 0x8C34B232
loc_8c1B1EE4:
	#data 0x8C34B233
loc_8c1B1EE8:
	#data loc_8c1B3F0C
loc_8c1B1EEC:
	#data 0x0000FFDF
loc_8c1B1EF0:
	#data bank19.loc_8c19E562

;==============================================
loc_8c1b1ef4:
	mov.b @(0x03,r13),r0
	and 0xFE,r0
	mov.b r0,@(0x03,r13)
	mov.b @(0x04,r13),r0
	and 0x7F,r0
	mov.b r0,@(0x04,r13)
	mov.b @(0x04,r13),r0
	and 0xBF,r0
	mov.b r0,@(0x04,r13)

loc_8c1b1f06:
	mov r13,r0
	nop
	mov.b @r0,r0
	tst 0x04,r0
	bf loc_8c1b1f4a
	mov r13,r0
	nop
	mov.b @(0x01,r0),r0
	tst 0x80,r0
	bf loc_8c1b1f28
	mov r13,r0
	nop
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1b1f4a

loc_8c1b1f28:
	mov.b @r13,r0
	or 0x04,r0
	mov.b r0,@r13
	mov.w @(loc_8C1B2016,pc),r5
	mov.w @(loc_8C1B2018,pc),r4
	jsr @r12
	mov 0x02,r6
	mov.w @(loc_8C1B201A,pc),r4
	mov 0x02,r6
	jsr @r12
	mov 0x00,r5
	mov.l @r14,r2
	mov r2,r3
	add 0x54,r3
	mov.b @r3,r0
	or 0x01,r0
	mov.b r0,@r3

loc_8c1b1f4a:
	mov.l @r14,r2
	mov 0x5C,r0
	mov.b @(r0,r2),r3
	mov 0x21,r2
	extu.b r3,r3
	cmp/gt r2,r3
	bf loc_8c1b1f7a
	mov.l @r14,r1
	mov 0x58,r0
	mov.b @(r0,r1),r3
	mov 0x22,r1
	extu.b r3,r3
	cmp/gt r1,r3
	bf loc_8c1b1f7a
	mov.l @r14,r2
	mov 0x5C,r0
	mov.b @(r0,r2),r3
	mov 0x60,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c1b1f7a
	mov.b @r9,r0
	or 0x02,r0
	mov.b r0,@r9

loc_8c1b1f7a:
	mov r13,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x80,r0
	bf loc_8c1b1fd0
	mov r13,r0
	nop
	mov.b @(0x01,r0),r0
	tst 0x80,r0
	bf loc_8c1b1fd0
	mov r13,r0
	nop
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf loc_8c1b1fd0
	mov.l @(loc_8C1B2020,pc),r2
	mov 0x5C,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	mov 0x21,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bf loc_8c1b1fd0
	mov.l @(loc_8c1b2024,pc),r1
	mov.w @(loc_8C1B201C,pc),r4
	jsr @r1
	mov 0x01,r5
	mov.b r0,@(0x08,r15)
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1b1fd0
	mov.b @(0x02,r13),r0
	mov 0x01,r6
	or 0x80,r0
	mov.b r0,@(0x02,r13)
	mov.b @(0x08,r15),r0
	mov.l @(loc_8C1B2028,pc),r5
	mov.w @(loc_8C1B201C,pc),r4
	extu.b r0,r0
	jsr @r12
	and r0,r5

loc_8c1b1fd0:
	mov r13,r0
	nop
	mov.b @(0x02,r0),r0
	tst 0x20,r0
	bf loc_8c1b2094
	mov.l @(loc_8C1B2020,pc),r2
	mov 0x5C,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r3
	mov 0x22,r1
	extu.b r3,r3
	cmp/gt r1,r3
	bf loc_8c1b2094
	mov.l @(loc_8C1B2020,pc),r3
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x2A,r2
	extu.b r1,r1
	cmp/ge r2,r1
	bt loc_8c1b2094
	mov.b @(0x02,r13),r0
	or 0x20,r0
	mov.b r0,@(0x02,r13)
	mov.l @(loc_8C1B202C,pc),r4
	mov.w @r4,r2
	add 0x01,r2
	mov.w r2,@r4
	mov 0x01,r2
	mov.w @r4,r3
	extu.w r3,r3
	cmp/gt r2,r3
	bf loc_8c1b2046
	mov.l @r14,r2
	bra loc_8c1b2030
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B2016:
	#data 0x7FFF
loc_8C1B2018:
	#data 0x0AFB
loc_8C1B201A:
	#data 0x0BFB
loc_8C1B201C:
	#data 0x03A5
	#align4

loc_8C1B2020:
	#data 0x8C347970
loc_8c1b2024:
	#data bank19.loc_8c19e1f8
loc_8C1B2028:
	#data 0x0000FFFB
loc_8C1B202C:
	#data 0x8C34B23E

;==============================================
loc_8c1b2030:
	mov r9,r0
	nop
	mov.b @(0x01,r0),r0
	mov.w @(loc_8C1B2084,pc),r1
	tst 0x10,r0
	mov.l @(loc_8c1b208c,pc),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	add 0x54,r2

loc_8c1b2046:
	mov.b @(0x01,r9),r0
	and 0xDF,r0
	mov.b r0,@(0x01,r9)
	mov.b @(0x02,r13),r0
	and 0xFB,r0
	mov.b r0,@(0x02,r13)
	mov.w @(loc_8C1B2086,pc),r4
	jsr @r11
	mov 0x01,r5
	extu.w r0,r0
	tst 0x20,r0
	bf loc_8c1b2090
	mov.w @(loc_8C1B2088,pc),r4
	jsr @r11
	mov 0x01,r5
	extu.w r0,r0
	tst 0x01,r0
	bf loc_8c1b2090
	mov 0x00,r2
	mov.b r2,@r8
	mov.l @r14,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x10,r0
	bf loc_8c1b2094
	mov.w @(loc_8C1B208A,pc),r4
	mov 0x01,r6
	jsr @r12
	mov 0x1F,r5
	bra loc_8c1b2094
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B2084:
	#data 0x0701
loc_8C1B2086:
	#data 0x011B
loc_8C1B2088:
	#data 0x011A
loc_8C1B208A:
	#data 0x0101
	#align4

loc_8c1b208c:
	#data bank13.loc_8c130ecc

;==============================================
loc_8c1b2090:
	mov 0x03,r2
	mov.b r2,@r8

loc_8c1b2094:
	mov r13,r0
	nop
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c1b20c6
	mov.l @(loc_8C1B2180,pc),r2
	mov 0x5C,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r3
	mov 0x30,r1
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c1b20c6
	mov.l @(loc_8C1B2184,pc),r2
	mov 0x01,r6
	mov.w @(loc_8C1B2174,pc),r4
	mov.b @r2,r5
	jsr @r12
	extu.b r5,r5
	mov.l @(loc_8C1B2188,pc),r3
	mov 0x01,r6
	mov.w @(loc_8C1B2176,pc),r4
	mov.b @r3,r5
	jsr @r12
	extu.b r5,r5

loc_8c1b20c6:
	mov r9,r0
	nop
	mov.b @(0x01,r0),r0
	tst 0x40,r0
	movt r2
	add 0xFF,r2
	neg r2,r2
	tst r2,r2
	bf loc_8c1b2112
	mov.l @(loc_8C1B2180,pc),r3
	mov.l @r3,r0
	add 0x54,r0
	mov.b @r0,r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bf loc_8c1b2112
	mov.l @r3,r0
	mov 0x5C,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x40,r0
	bf loc_8c1b2112
	mov.w @(loc_8C1B2178,pc),r4
	jsr @r11
	mov 0x01,r5
	mov.b r0,@r15
	mov 0x10,r5
	mov.w @(loc_8C1B2178,pc),r4
	mov 0x01,r6
	extu.b r0,r0
	jsr @r12
	or r0,r5
	mov.l @(loc_8c1b218c,pc),r3
	jsr @r3
	nop
	mov.b @(0x01,r9),r0
	or 0x40,r0
	mov.b r0,@(0x01,r9)

loc_8c1b2112:
	mov.l @r14,r0
	mov 0x5C,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x63,r0
	bt loc_8c1b2122
	bra loc_8c1b23f6
	nop

loc_8c1b2122:
	mov.b @(0x02,r13),r0
	and 0xDF,r0
	mov.b r0,@(0x02,r13)
	mov r9,r0
	nop
	mov.b @(0x01,r0),r0
	tst 0x20,r0
	bf loc_8c1b21c0
	mov.w @(loc_8C1B217A,pc),r4
	jsr @r11
	mov 0x01,r5
	mov.l @(loc_8C1B2190,pc),r2
	mov 0x04,r3
	mov.b r0,@r2
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c1b216e
	mov.l @(loc_8C1B2194,pc),r1
	mov 0x03,r3
	mov.w @r1,r0
	extu.w r0,r0
	cmp/ge r3,r0
	bf loc_8c1b216e
	mov.w @(loc_8C1B217C,pc),r4
	jsr @r11
	mov 0x02,r5
	mov.w @(loc_8C1B217E,pc),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c1b216e
	mov.l @(loc_8C1B2180,pc),r1
	mov.l @r1,r0
	add 0x54,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf loc_8c1b2198

loc_8c1b216e:
	mov.b @(0x02,r13),r0
	bra loc_8c1b21b8
	and 0xEF,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B2174:
	#data 0x0604
loc_8C1B2176:
	#data 0x0605
loc_8C1B2178:
	#data 0x03A5
loc_8C1B217A:
	#data 0x039A
loc_8C1B217C:
	#data 0x0382
loc_8C1B217E:
	#data 0x3FF0
	#align4

loc_8C1B2180:
	#data 0x8C347970
loc_8C1B2184:
	#data 0x8C347983
loc_8C1B2188:
	#data 0x8C347981
loc_8c1b218c:
	#data loc_8c1b0e30
loc_8C1B2190:
	#data 0x8C34B213
loc_8C1B2194:
	#data 0x8C34B23C

;==============================================
loc_8c1b2198:
	mov.w @(loc_8C1B22A0,pc),r4
	mov.w @(loc_8C1B229E,pc),r5
	jsr @r12
	mov 0x02,r6
	mov.w @(loc_8C1B22A4,pc),r4
	mov.w @(loc_8C1B22A2,pc),r5
	jsr @r12
	mov 0x02,r6
	mov.l @r14,r2
	mov r2,r3
	add 0x54,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov.b @(0x02,r13),r0
	or 0x10,r0

loc_8c1b21b8:
	mov.b r0,@(0x02,r13)
	mov.b @(0x01,r9),r0
	or 0x20,r0
	mov.b r0,@(0x01,r9)

loc_8c1b21c0:
	mov 0x01,r5
	jsr @r11
	mov 0x4D,r4
	extu.w r0,r0
	cmp/eq 0x02,r0
	bt loc_8c1b21d0
	bra loc_8c1b23f6
	nop

loc_8c1b21d0:
	mov.l @(loc_8C1B22AC,pc),r0
	mov.b @r0,r0
	tst 0x10,r0
	bf loc_8c1b21dc
	bra loc_8c1b23f6
	nop

loc_8c1b21dc:
	mov.l @(loc_8C1B22AC,pc),r0
	mov.b @r0,r0
	tst 0x04,r0
	bt loc_8c1b21e8
	bra loc_8c1b23f6
	nop

loc_8c1b21e8:
	mov.l @(loc_8C1B22B0,pc),r10
	mov 0x00,r2
	mov.l r2,@r10
	mov.l @r14,r3
	add 0x74,r3
	mov.b @r3,r0
	and 0xF0,r0
	or 0x02,r0
	mov.b r0,@r3
	mov.l @r14,r2
	mov 0x70,r0
	mov 0x0C,r3
	mov.b r3,@(r0,r2)
	bra loc_8c1b2260
	mov 0x00,r2

loc_8c1b2206:
	mov.l @r14,r3
	add 0x74,r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @(loc_8c1b22b4,pc),r2
	mov r15,r4
	mov 0x32,r5
	jsr @r2
	add 0x04,r4
	bra loc_8c1b2236
	nop

loc_8c1b221e:
	mov.l @(loc_8c1b22b8,pc),r3
	jsr @r3
	mov.l @(0x04,r15),r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b2236
	mov.l @(loc_8c1b22bc,pc),r3
	mov.w @(loc_8C1B22A6,pc),r4
	jsr @r3
	nop
	bra loc_8c1b247a
	nop

loc_8c1b2236:
	mov.l @r14,r0
	add 0x74,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c1b221e
	mov.l @r14,r4
	mov 0x64,r0
	mov.b @(r0,r4),r4
	mov.l @r14,r3
	extu.b r4,r4
	mov 0x60,r0
	shll8 r4
	mov.b @(r0,r3),r2
	extu.b r2,r2
	mov.l @r10,r3
	or r2,r4
	extu.w r4,r4
	add r4,r3
	mov.l r3,@r10
	mov.b @r15,r2
	add 0x01,r2

loc_8c1b2260:
	mov.b r2,@r15
	mov 0x32,r2
	mov.b @r15,r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c1b2206
	mov.l @r10,r1
	shlr8 r1
	mov.l r1,@r10
	mov.w @(loc_8C1B22A8,pc),r4
	jsr @r11
	mov 0x01,r5
	mov.l @(loc_8C1B22C0,pc),r2
	mov r0,r4
	mov 0x40,r6
	mov.w @r2,r3
	extu.w r3,r3
	mov.l r3,@r15
	mov r3,r0
	nop
	cmp/eq 0x05,r0
	bf/s loc_8c1b2336
	mov.l @r10,r5
	mov 0x2A,r0
	cmp/hi r0,r5
	bt loc_8c1b22c4
	extu.b r4,r0
	cmp/eq 0x0E,r0
	bf loc_8c1b22c4
	bra loc_8c1b23e8
	mov 0x0E,r10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B229E:
	#data 0x7800
loc_8C1B22A0:
	#data 0x0A29
loc_8C1B22A2:
	#data 0x7F00
loc_8C1B22A4:
	#data 0x0B29
loc_8C1B22A6:
	#data 0x102C
loc_8C1B22A8:
	#data 0x0604
	#align4

loc_8C1B22AC:
	#data 0x8C34797B
loc_8C1B22B0:
	#data 0x8C34B218
loc_8c1b22b4:
	#data loc_8c1b3eec
loc_8c1b22b8:
	#data loc_8c1b3f0c
loc_8c1b22bc:
	#data bank1a.loc_8c1a003e
loc_8C1B22C0:
	#data 0x8C34B23C

;==============================================
loc_8c1b22c4:
	cmp/hi r6,r5
	bt loc_8c1b22d0
	mov 0x0D,r3
	extu.b r4,r2
	cmp/ge r3,r2
	bt loc_8c1b235a

loc_8c1b22d0:
	mov 0x6A,r1
	cmp/hi r1,r5
	bt loc_8c1b22de
	mov 0x0C,r3
	extu.b r4,r2
	cmp/ge r3,r2
	bt loc_8c1b236a

loc_8c1b22de:
	mov.w @(loc_8C1B236E,pc),r1
	cmp/hi r1,r5
	bt loc_8c1b22ec
	mov 0x0B,r3
	extu.b r4,r2
	cmp/ge r3,r2
	bt loc_8c1b2388

loc_8c1b22ec:
	mov.w @(loc_8C1B2370,pc),r1
	cmp/hi r1,r5
	bt loc_8c1b22fa
	mov 0x0A,r3
	extu.b r4,r2
	cmp/ge r3,r2
	bt loc_8c1b239a

loc_8c1b22fa:
	mov.w @(loc_8C1B2372,pc),r1
	cmp/hi r1,r5
	bt loc_8c1b2308
	mov 0x09,r3
	extu.b r4,r2
	cmp/ge r3,r2
	bt loc_8c1b23ac

loc_8c1b2308:
	mov.w @(loc_8C1B2374,pc),r1
	cmp/hi r1,r5
	bt loc_8c1b2316
	mov 0x08,r3
	extu.b r4,r2
	cmp/ge r3,r2
	bt loc_8c1b23be

loc_8c1b2316:
	mov.w @(loc_8C1B2376,pc),r1
	cmp/hi r1,r5
	bt loc_8c1b2324
	mov 0x07,r3
	extu.b r4,r2
	cmp/ge r3,r2
	bt loc_8c1b23d0

loc_8c1b2324:
	mov.w @(loc_8C1B2378,pc),r1
	cmp/hi r1,r5
	bt loc_8c1b23e6
	mov 0x06,r2
	extu.b r4,r4
	cmp/ge r2,r4
	bt loc_8c1b23e2
	bra loc_8c1b23e6
	nop

loc_8c1b2336:
	mov.l r3,@r15
	mov r3,r0
	nop
	cmp/eq 0x04,r0
	bt loc_8c1b2346
	mov.l @r15,r0
	cmp/eq 0x03,r0
	bf loc_8c1b23e8

loc_8c1b2346:
	mov 0x2E,r2
	cmp/hi r2,r5
	bt loc_8c1b235e
	mov 0x0D,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b235e
	mov.l @r15,r0
	cmp/eq 0x04,r0
	bf loc_8c1b235e

loc_8c1b235a:
	bra loc_8c1b23e8
	mov 0x0D,r10

loc_8c1b235e:
	cmp/hi r6,r5
	bt loc_8c1b237a
	mov 0x0C,r2
	extu.b r4,r3
	cmp/ge r2,r3
	bf loc_8c1b237a

loc_8c1b236a:
	bra loc_8c1b23e8
	mov 0x0C,r10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B236E:
	#data 0x00AF
loc_8C1B2370:
	#data 0x0125
loc_8C1B2372:
	#data 0x01F4
loc_8C1B2374:
	#data 0x02DB
loc_8C1B2376:
	#data 0x047E
loc_8C1B2378:
	#data 0x0708

;==============================================
loc_8c1b237a:
	mov.w @(loc_8C1B243C,pc),r3
	cmp/hi r3,r5
	bt loc_8c1b238c
	mov 0x0B,r2
	extu.b r4,r1
	cmp/ge r2,r1
	bf loc_8c1b238c

loc_8c1b2388:
	bra loc_8c1b23e8
	mov 0x0B,r10

loc_8c1b238c:
	mov.w @(loc_8C1B243E,pc),r2
	cmp/hi r2,r5
	bt loc_8c1b239e
	mov 0x0A,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b239e

loc_8c1b239a:
	bra loc_8c1b23e8
	mov 0x0A,r10

loc_8c1b239e:
	mov.w @(loc_8C1B2440,pc),r2
	cmp/hi r2,r5
	bt loc_8c1b23b0
	mov 0x09,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b23b0

loc_8c1b23ac:
	bra loc_8c1b23e8
	mov 0x09,r10

loc_8c1b23b0:
	mov.w @(loc_8C1B2442,pc),r2
	cmp/hi r2,r5
	bt loc_8c1b23c2
	mov 0x08,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b23c2

loc_8c1b23be:
	bra loc_8c1b23e8
	mov 0x08,r10

loc_8c1b23c2:
	mov.w @(loc_8C1B2444,pc),r2
	cmp/hi r2,r5
	bt loc_8c1b23d4
	mov 0x07,r3
	extu.b r4,r1
	cmp/ge r3,r1
	bf loc_8c1b23d4

loc_8c1b23d0:
	bra loc_8c1b23e8
	mov 0x07,r10

loc_8c1b23d4:
	mov.w @(loc_8C1B2446,pc),r2
	cmp/hi r2,r5
	bt loc_8c1b23e6
	mov 0x06,r1
	extu.b r4,r4
	cmp/ge r1,r4
	bf loc_8c1b23e6

loc_8c1b23e2:
	bra loc_8c1b23e8
	mov 0x06,r10

loc_8c1b23e6:
	mov 0x05,r10

loc_8c1b23e8:
	mov.w @(loc_8C1B2448,pc),r4
	mov 0x01,r6
	jsr @r12
	extu.b r10,r5
	mov.b @(0x02,r13),r0
	or 0x04,r0
	mov.b r0,@(0x02,r13)

loc_8c1b23f6:
	mov.b @r8,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1b240e
	cmp/eq 0x01,r0
	bt loc_8c1b244e
	cmp/eq 0x02,r0
	bt loc_8c1b246a
	cmp/eq 0x03,r0
	bt loc_8c1b247a
	bra loc_8c1b247a
	nop

loc_8c1b240e:
	mov.l @r14,r0
	mov 0x5C,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x65,r0
	bf loc_8c1b247a
	mov.w @(loc_8C1B244A,pc),r4
	jsr @r11
	mov 0x01,r5
	mov.l r0,@-r15
	mov r0,r5
	mov.w @(loc_8C1B244C,pc),r4
	jsr @r11
	mov 0x01,r5
	mov r0,r4
	bsr loc_8c1b1d32
	mov.l @r15+,r5
	exts.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1b2464
	mov 0x01,r2
	bra loc_8c1b247a
	mov.b r2,@r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B243C:
	#data 0x0092
loc_8C1B243E:
	#data 0x0109
loc_8C1B2440:
	#data 0x01C2
loc_8C1B2442:
	#data 0x02EE
loc_8C1B2444:
	#data 0x04B0
loc_8C1B2446:
	#data 0x073A
loc_8C1B2448:
	#data 0x02E4
loc_8C1B244A:
	#data 0x02E3
loc_8C1B244C:
	#data 0x02E5

;==============================================
loc_8c1b244e:
	mov.l @r14,r0
	mov 0x5C,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x67,r0
	bf loc_8c1b247a
	mov.w @(loc_8C1B2552,pc),r4
	mov 0x02,r6
	mov.l @(loc_8C1B255C,pc),r2
	jsr @r12
	mov.w @r2,r5

loc_8c1b2464:
	mov 0x02,r3
	bra loc_8c1b247a
	mov.b r3,@r8

loc_8c1b246a:
	mov.l @r14,r0
	mov 0x5C,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x65,r0
	bt loc_8c1b247a
	mov 0x00,r2
	mov.b r2,@r8

loc_8c1b247a:
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
loc_8c1b248e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(0xCC,PC),r13
	sts.l pr,@-r15
	mov.l @r13,r4
	mov.l @(0xCC,PC),r14
	mov.l @(0xC0,PC),r12
	mov r4,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	tst 0x08,r0
	bf loc_8c1b24b6
	mov r4,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	tst 0x04,r0
	bt loc_8c1b24ec

loc_8c1b24b6:
	mov.l @(0xB4,PC),r2
	mov 0x01,r3
	mov.b @r2,r0
	or 0x02,r0
	mov.b r0,@r2
	mov.b r3,@r14
	mov.l @r13,r2
	mov r2,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	tst 0x10,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1b24de
	mov.w @(0x78,PC),r4
	bra loc_8c1b24e2
	mov 0x02,r5

loc_8c1b24de:
	mov.w @(0x74,PC),r4
	mov 0x02,r5

loc_8c1b24e2:
	jsr @r12
	nop
	mov.l @(0x88,PC),r2
	bra loc_8c1b25ba
	mov.w r0,@r2

loc_8c1b24ec:
	mov r4,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1b251e
	mov 0x03,r3
	mov.b r3,@r14
	mov.w @(0x50,PC),r4
	jsr @r12
	mov 0x02,r5
	mov.w @(0x4E,PC),r2
	extu.w r0,r0
	cmp/eq r2,r0
	bf loc_8c1b2512
	mov 0x07,r1
	mov.b r1,@r14

loc_8c1b2512:
	mov.l @r13,r3
	add 0x30,r3
	mov.b @r3,r0
	and 0xFE,r0
	bra loc_8c1b25ba
	mov.b r0,@r3

loc_8c1b251e:
	mov r4,r0
	nop
	add 0x34,r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c1b252e
	bra loc_8c1b254e
	mov 0x08,r2

loc_8c1b252e:
	mov r4,r0
	nop
	add 0x34,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8c1b2540
	mov 0x09,r2
	bra loc_8c1b254e
	nop

loc_8c1b2540:
	mov r4,r0
	nop
	add 0x34,r0
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c1b2574
	mov 0x0A,r2

loc_8c1b254e:
	bra loc_8c1b25ba
	mov.b r2,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b2552:
	#data 0x0840
loc_8c1b2554:
	#data 0x0208
loc_8c1b2556:
	#data 0x0204
loc_8c1b2558:
	#data 0x0111
	#align4

loc_8C1B255C:
	#data 0x8C34B23A
loc_8c1b2560:
	#data bank19.loc_8c19E1F8
loc_8c1b2564:
	#data 0x8C347970
loc_8c1b2568:
	#data 0x8C34797E
loc_8c1b256c:
	#data 0x8C347974
loc_8c1b2570:
	#data 0x8C34798A

;==============================================
loc_8c1b2574:
	mov r4,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c1b25a4
	mov r4,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c1b25a4
	mov r4,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c1b25a4
	mov r4,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8c1b25aa

loc_8c1b25a4:
	mov 0x0B,r1
	bra loc_8c1b25ba
	mov.b r1,@r14

loc_8c1b25aa:
	mov r4,r0
	nop
	add 0x28,r0
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8c1b25ba
	mov 0x0C,r1
	mov.b r1,@r14

loc_8c1b25ba:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B25C4:
	mov.l r14,@-r15
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(loc_8c1B2654,pc),r12 ; r12 set to 0x8C34797F
	sts.l pr,@-r15
	mov.b @r12,r0
	mov.w @(loc_8c1B2642,pc),r4 ; r4 set to 0x85
	extu.b r0,r0
	mov.l @(loc_8c1B264C,pc),r13 ; r13 set to 0x8C19E1F8
	mov.l @(loc_8c1B2650,pc),r14 ; r14 set to 0x8C347970
	cmp/eq 0x00,r0
	add 0xFC,r15
	bt/s loc_8c1B25F4
	mov r5,r11 ; r11 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8c1B2622
	cmp/eq 0x02,r0
	bt loc_8c1B2660
	cmp/eq 0x03,r0
	bt loc_8c1B266E
	bra loc_8c1B266E
	nop

loc_8c1B25F4:
	mov.l @r14,r3
	mov 0x5C,r0 ; r0 set to 0x5C
	mov.b @(r0,r3),r2
	extu.b r2,r2
	cmp/eq r4,r2
	bf loc_8c1B266E
	mov.w @(loc_8c1B2644,pc),r4 ; r4 set to 0x2E3
	jsr @r13
	mov 0x01,r5 ; r5 set to 0x01
	mov.l r0,@-r15
	mov r0,r5 ; r5 set to 0x5C
	mov.w @(loc_8c1B2646,pc),r4 ; r4 set to 0x2E5
	jsr @r13
	mov 0x01,r5 ; r5 set to 0x01
	mov r0,r4 ; r4 set to 0x5C
	bsr loc_8c1B1D32
	mov.l @r15+,r5 ; r5 ??? bc r15 is ???
	exts.b r0,r0 ; r0 ??
	cmp/eq 0x01,r0
	bf loc_8c1B263C
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8c1B266E
	mov.b r2,@r12

loc_8c1b2622:
	mov.l @r14,r1
	mov 0x5C,r0
	mov.b @(r0,r1),r3
	mov.w @(loc_8C1B2648,pc),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c1b266e
	mov.w @(loc_8C1B264A,pc),r4
	mov 0x02,r6
	mov.l @(loc_8c1b265c,pc),r3
	mov.l @(loc_8C1B2658,pc),r1
	jsr @r3
	mov.w @r1,r5

loc_8c1B263C:
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_8c1B266E
	mov.b r2,@r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B2642:
	#data 0x0085
loc_8c1B2644:
	#data 0x02E3
loc_8c1B2646:
	#data 0x02E5
loc_8c1b2648:
	#data 0x0087
loc_8c1b264a:
	#data 0x0840
	#align4

loc_8c1B264C:
	#data bank19.loc_8c19E1F8
loc_8c1B2650:
	#data 0x8C347970
loc_8c1B2654:
	#data 0x8C34797F
loc_8c1b2658:
	#data 0x8C34B23A
loc_8c1B265C:
	#data bank19.loc_8c19E30C

;==============================================
loc_8c1b2660:
	mov.l @r14,r1
	mov 0x5C,r0
	mov.b @(r0,r1),r3
	extu.b r3,r3
	cmp/eq r4,r3
	bt loc_8c1b266e
	mov.b r5,@r12

loc_8c1B266E:
	mov.l @r14,r0
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.w @(loc_8c1B273C,pc),r3 ; r3 set to 0x80
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c1B26EE
	mov.l @(loc_8c1B2744,pc),r0 ; r0 set to 0x8C34797C
	mov.l @(loc_8c1B2740,pc),r12 ; r12 set to 0x8C34B231
	mov.b @r0,r0 ; r0 ??
	tst 0x02,r0
	bf loc_8c1B269C
	mov.l @(loc_8c1B274C,pc),r2 ; r2 set to 0x8C1B3EEC
	mov.l @(loc_8c1B2748,pc),r4 ; r4 set to 0x8C34B254
	mov.w @(loc_8c1B273E,pc),r5 ; r5 set to 0x1F4
	jsr @r2
	nop
	mov.l @(loc_8c1B2744,pc),r3 ; r3 set to 0x8C34797C
	mov.b @r3,r0
	or 0x02,r0
	bra loc_8c1B26E6
	mov.b r0,@r3

loc_8c1B269C:
	mov.l @r14,r3
	mov 0x5C,r0 ; r0 set to 0x5C
	mov.b @r12,r2
	mov.b @(r0,r3),r0 ; r0 ??? bc r3 is ???
	cmp/eq r0,r2
	bf loc_8c1B26D0
	mov.l @(loc_8c1B2750,pc),r3 ; r3 set to 0x8C1B3F0C
	mov.l @(loc_8c1B2748,pc),r2 ; r2 set to 0x8C34B254
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1B26D0
	mov 0x01,r5 ; r5 set to 0x01
	jsr @r13
	mov 0x45,r4 ; r4 set to 0x45
	mov.b r0,@r15
	mov 0x20,r5 ; r5 set to 0x20
	mov.l @(loc_8c1B2754,pc),r3 ; r3 set to 0x8C19E30C
	extu.b r0,r0
	mov 0x01,r6 ; r6 set to 0x01
	or r0,r5 ; r5 ??? bc r0 is ???
	jsr @r3
	mov 0x45,r4 ; r4 set to 0x45
	bra loc_8c1B26EE
	mov 0x01,r11

loc_8c1b26d0:
	mov.l @r14,r2
	mov 0x5C,r0
	mov.b @r12,r3
	mov.b @(r0,r2),r1
	cmp/eq r1,r3
	bt loc_8c1b26ee
	mov.l @(loc_8c1b274c,pc),r2
	mov.l @(loc_8c1b2748,pc),r4
	mov.w @(loc_8c1b273e,pc),r5
	jsr @r2
	nop

loc_8c1b26e6:
	mov.l @r14,r3
	mov 0x5C,r0
	mov.b @(r0,r3),r2
	mov.b r2,@r12

loc_8c1b26ee:
	exts.b r11,r0
	cmp/eq 0x01,r0
	bt loc_8c1b2704
	mov.l @(loc_8C1B2758,pc),r3
	mov 0x5C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x20,r0
	bf loc_8c1b272e

loc_8c1b2704:
	mov.l @(loc_8c1b275c,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8C1B2760,pc),r4
	mov.b @r4,r0
	or 0x04,r0
	mov.b r0,@r4
	mov.b @r4,r0
	or 0x40,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xDF,r0
	mov.b r0,@r4
	mov r4,r0
	nop
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c1b272e
	mov.b @r4,r0
	or 0x10,r0
	mov.b r0,@r4

loc_8c1b272e:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b273c:
	#data 0x0080
loc_8c1b273e:
	#data 0x01F4
	#align4

loc_8c1b2740:
	#data 0x8C34B231
loc_8c1b2744:
	#data 0x8C34797C
loc_8c1b2748:
	#data 0x8C34B254
loc_8c1b274c:
	#data loc_8c1b3eec
loc_8c1b2750:
	#data loc_8c1b3F0C
loc_8c1b2754:
	#data bank19.loc_8c19E30C
loc_8C1B2758:
	#data 0x8C347970
loc_8c1b275c:
	#data loc_8c1b0e88
loc_8C1B2760:
	#data 0x8C347974

;==============================================
loc_8c1b2764:
	mov.l r14,@-r15
	mov 0x5C,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(0xF4,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.l @(0xE8,PC),r12
	add 0xFC,r15
	mov.b @(r0,r3),r2
	mov.w @(0xDC,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bt.s loc_8c1b2790
	mov 0x00,r11
	mov.l @r14,r1
	mov.b @(r0,r1),r2
	mov.w @(0xD0,PC),r1
	extu.b r2,r2
	cmp/eq r1,r2
	bf loc_8c1b2802

loc_8c1b2790:
	mov.l @(0xD4,PC),r13
	mov r12,r0
	nop
	mov.b @(0x3,r0),r0
	tst 0x02,r0
	bf loc_8c1b27ae
	mov.l @(0xD0,PC),r2
	mov.l @(0xCC,PC),r4
	mov.w @(0xBA,PC),r5
	jsr @r2
	nop
	mov.b @(0x3,r12),r0
	or 0x02,r0
	bra loc_8c1b27fa
	mov.b r0,@(0x3,r12)

loc_8c1b27ae:
	mov.l @r14,r2
	mov 0x5C,r0
	mov.b @r13,r3
	mov.b @(r0,r2),r1
	cmp/eq r1,r3
	bf loc_8c1b27e4
	mov.l @(0xB8,PC),r3
	mov.l @(0xAC,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b27e4
	mov.l @(0xAC,PC),r3
	mov 0x01,r5
	jsr @r3
	mov 0x45,r4
	mov.b r0,@r15
	mov 0x20,r5
	mov.l @(0xA4,PC),r3
	extu.b r0,r0
	mov 0x01,r6
	or r0,r5
	jsr @r3
	mov 0x45,r4
	bra loc_8c1b2802
	mov 0x01,r11

loc_8c1b27e4:
	mov.l @r14,r2
	mov 0x5C,r0
	mov.b @r13,r3
	mov.b @(r0,r2),r1
	cmp/eq r1,r3
	bt loc_8c1b2802
	mov.l @(0x7C,PC),r2
	mov.l @(0x78,PC),r4
	mov.w @(0x66,PC),r5
	jsr @r2
	nop

loc_8c1b27fa:
	mov.l @r14,r3
	mov 0x5C,r0
	mov.b @(r0,r3),r2
	mov.b r2,@r13

loc_8c1b2802:
	exts.b r11,r0
	cmp/eq 0x01,r0
	bt loc_8c1b2818
	mov.l @(0x58,PC),r3
	mov 0x5C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x20,r0
	bf loc_8c1b2848

loc_8c1b2818:
	mov.l @(0x64,PC),r3
	jsr @r3
	nop
	mov.l @(0x64,PC),r4
	mov.b @r4,r0
	or 0x04,r0
	mov.b r0,@r4
	mov.b @r4,r0
	or 0x40,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xDF,r0
	mov.b r0,@r4
	mov.b @(0x3,r12),r0
	and 0xFD,r0
	mov.b r0,@(0x3,r12)
	mov r4,r0
	nop
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c1b2848
	mov.b @r4,r0
	or 0x10,r0
	mov.b r0,@r4

loc_8c1b2848:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c1B2856:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B285a:
	#data 0x0084
loc_8c1B285c:
	#data 0x0085
loc_8c1B285e:
	#data 0x00C8
	#align4

loc_8c1B2860:
	#data 0x8C347979
loc_8c1B2864:
	#data 0x8C347970
loc_8c1B2868:
	#data 0x8C34B231
loc_8c1B286c:
	#data 0x8C34B254
loc_8c1B2870:
	#data loc_8c1B3EEC
loc_8c1B2874:
	#data loc_8c1B3F0C
loc_8c1B2878:
	#data bank19.loc_8c19E1F8
loc_8c1B287C:
	#data bank19.loc_8c19E30C
loc_8c1B2880:
	#data loc_8c1B0E88
loc_8c1B2884:
	#data 0x8C347974

;==============================================
loc_8c1B2888:
	mov.l @(0x20,PC),r3
	mov 0x50,r0
	mov.l @(0x18,PC),r5
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	mov.b @r5,r1
	cmp/eq r1,r2
	bt loc_8c1b28a4
	mov.b @(r0,r4),r1
	mov.b r1,@r5
	mov.l @(0x10,PC),r4
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4

loc_8c1B28A4:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B28a8:
	#data 0x8C34B234
loc_8c1B28ac:
	#data 0x8C347970
loc_8c1B28B0:
	#data 0x8C34B24C

;==============================================
loc_8c1B28B4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1B2A14,pc),r14 ; r14 set to 0x8C34B270
	bsr loc_8c1B2B58
	nop
	mov.l r0,@r14 ; r14 ??? bc r0 is ???
	mov.l @(loc_8c1B2A18,pc),r2 ; r2 set to 0x8C19FE4A
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @r14,r3
	mov.l @(loc_8c1B2A1C,pc),r13 ; r13 set to 0x8C19E416
	mov.w @(0x08,r3),r0
	mov.l r0,@-r15
	mov r0,r2 ; r2 ??? bc r0 is ???
	mov.l @r14,r1
	mov.w @(0x06,r1),r0
	mov.l r0,@-r15
	mov r0,r3
	mov.l @r14,r7
	mov.l @r14,r6
	mov.w @(0x04,r7),r0
	mov.l @r14,r5
	mov r0,r7
	mov.w @(0x02,r6),r0
	mov.w @(loc_8c1B29E6,pc),r4 ; r4 set to 0xAA1
	mov r0,r6
	jsr @r13
	mov.w @r5,r5
	mov.l @r14,r3
	mov.w @(0x12,r3),r0
	mov.l r0,@-r15
	mov r0,r2
	mov.l @r14,r1
	mov.w @(0x10,r1),r0
	mov r0,r3
	mov.l r0,@-r15
	mov.l @r14,r7
	mov.l @r14,r6
	mov.w @(0x0E,r7),r0
	mov.l @r14,r5
	mov r0,r7
	mov.w @(0x0C,r6),r0
	mov.w @(loc_8c1B29E8,pc),r4 ; r4 set to 0xBA1
	mov r0,r6
	mov.w @(0x0A,r5),r0
	jsr @r13
	mov r0,r5
	mov.l @r14,r1
	mov.l @(loc_8c1B2A24,pc),r3 ; r3 set to 0x8C1C7F50
	mov.w @(0x14,r1),r0
	mov.w @r3,r1
	mov.l @(loc_8c1B2A28,pc),r2 ; r2 set to 0x8C129128
	mulu.w r1,r0
	mov.w @(loc_8c1B29EA,pc),r0 ; r0 set to 0x2710
	mov.l @(loc_8c1B2A20,pc),r12 ; r12 set to 0x8C19E430
	jsr @r2
	sts macl,r1
	mov.l r0,@-r15
	mov.l @r14,r1
	mov.l @(loc_8c1B2A28,pc),r2 ; r2 set to 0x8C129128
	mov.w @(0x14,r1),r0
	mov.w @r3,r1
	mulu.w r1,r0 ; r0 ??? bc r1 is ???
	mov.w @(loc_8c1B29EA,pc),r0 ; r0 set to 0x2710
	jsr @r2
	sts macl,r1
	mov.l @r14,r6
	mov r0,r7 ; r7 set to 0x2710
	mov.l @r14,r5
	mov.w @(0x18,r6),r0
	mov r0,r6 ; r6 set to 0x2710
	mov.w @(0x16,r5),r0
	mov r0,r5 ; r5 set to 0x2710
	jsr @r12
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1B2A30,pc),r3 ; r3 set to 0xD22D
	mov.l @(loc_8c1B2A2C,pc),r14 ; r14 set to 0xC147
	mov.l r3,@-r15
	mov.l @(loc_8c1B2A34,pc),r6 ; r6 set to 0xFBF9
	mov.w @(loc_8c1B29EE,pc),r5 ; r5 set to 0x205
	mov.w @(loc_8c1B29F0,pc),r4 ; r4 set to 0xAA7
	mov.w @(loc_8c1B29EC,pc),r7 ; r7 set to 0x206
	jsr @r13
	mov.l r14,@-r15
	mov.l @(loc_8c1B2A38,pc),r2 ; r2 set to 0xD1F8
	mov.l r2,@-r15
	mov.w @(loc_8c1B29EE,pc),r5 ; r5 set to 0x205
	mov.w @(loc_8c1B29F4,pc),r4 ; r4 set to 0xBA7
	mov.w @(loc_8c1B29F2,pc),r6 ; r6 set to 0x380
	mov.w @(loc_8c1B29EC,pc),r7 ; r7 set to 0x206
	jsr @r13
	mov.l r14,@-r15
	mov.w @(loc_8c1B29F6,pc),r3 ; r3 set to 0x1C00
	mov.l r3,@-r15
	mov.w @(loc_8c1B29FA,pc),r6 ; r6 set to 0x2DF
	mov.w @(loc_8c1B29FC,pc),r5 ; r5 set to 0x7E67
	mov.w @(loc_8c1B29F8,pc),r7 ; r7 set to 0x2A00
	jsr @r12
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8c1B2A3C,pc),r3 ; r3 set to 0x8C347970
	mov.l @r3,r2 ; r2 ??
	mov.b @(0x08,r2),r0
	or 0x40,r0
	mov.b r0,@(0x08,r2)
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r2,@-r15
	mov r2,r6 ; r6 set to 0x00
	mov.l r2,@-r15
	mov.w @(loc_8c1B29FE,pc),r7 ; r7 set to 0x7FFF
	mov.w @(loc_8c1B2A00,pc),r4 ; r4 set to 0xAB2
	jsr @r13
	mov r2,r5 ; r5 set to 0x00
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r3,@-r15
	mov r3,r6 ; r6 set to 0x00
	mov.l r3,@-r15
	mov.w @(loc_8c1B29FE,pc),r7 ; r7 set to 0x7FFF
	mov.w @(loc_8c1B2A02,pc),r4 ; r4 set to 0xBB2
	jsr @r13
	mov r3,r5 ; r5 set to 0x00
	mov.w @(loc_8c1B2A04,pc),r2 ; r2 set to 0x35A7
	mov.l r2,@-r15
	mov.w @(loc_8c1B2A08,pc),r5 ; r5 set to 0x244
	mov.w @(loc_8c1B2A0A,pc),r4 ; r4 set to 0xAAD
	mov.l @(loc_8c1B2A40,pc),r6 ; r6 set to 0xFB7B
	mov.w @(loc_8c1B2A06,pc),r7 ; r7 set to 0x245
	jsr @r13
	mov.l r14,@-r15
	mov.w @(loc_8c1B2A0C,pc),r3 ; r3 set to 0x3574
	mov.l r3,@-r15
	mov.w @(loc_8c1B2A08,pc),r5 ; r5 set to 0x244
	mov.w @(loc_8c1B2A10,pc),r4 ; r4 set to 0xBAD
	mov.w @(loc_8c1B2A0E,pc),r6 ; r6 set to 0xCA
	mov.w @(loc_8c1B2A06,pc),r7 ; r7 set to 0x245
	jsr @r13
	mov.l r14,@-r15
	mov.w @(loc_8c1B29F6,pc),r2 ; r2 set to 0x1C00
	mov.l r2,@-r15
	mov.w @(loc_8c1B29FA,pc),r6 ; r6 set to 0x2DF
	mov.w @(loc_8c1B29FC,pc),r5 ; r5 set to 0x7E67
	mov.w @(loc_8c1B29F8,pc),r7 ; r7 set to 0x2A00
	jsr @r12
	mov 0x02,r4 ; r4 set to 0x02
	bsr loc_8c1B2A70
	add 0x4C,r15
	lds.l @r15+,pr
	mov.l @(loc_8c1B2A44,pc),r2 ; r2 set to 0x8C19E444
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B29E6:
	#data 0x0AA1
loc_8c1B29E8:
	#data 0x0BA1
loc_8c1B29EA:
	#data 0x2710
loc_8c1B29EC:
	#data 0x0206
loc_8c1B29EE:
	#data 0x0205
loc_8c1B29F0:
	#data 0x0AA7
loc_8c1B29F2:
	#data 0x0380
loc_8c1B29F4:
	#data 0x0BA7
loc_8c1B29F6:
	#data 0x1C00
loc_8c1B29F8:
	#data 0x2A00
loc_8c1B29FA:
	#data 0x02DF
loc_8c1B29FC:
	#data 0x7E67
loc_8c1B29FE:
	#data 0x7FFF
loc_8c1B2A00:
	#data 0x0AB2
loc_8c1B2A02:
	#data 0x0BB2
loc_8c1B2A04:
	#data 0x35A7
loc_8c1B2A06:
	#data 0x0245
loc_8c1B2A08:
	#data 0x0244
loc_8c1B2A0A:
	#data 0x0AAD
loc_8c1B2A0C:
	#data 0x3574
loc_8c1B2A0E:
	#data 0x00CA
loc_8c1B2A10:
	#data 0x0BAD
	#align4

loc_8c1B2A14:
	#data 0x8C34B270
loc_8c1B2A18:
	#data bank19.loc_8c19FE4A
loc_8c1B2A1C:
	#data bank19.loc_8c19E416
loc_8c1B2A20:
	#data bank19.loc_8c19E430
loc_8c1B2A24:
	#data bank1c.loc_8c1c7F50
loc_8c1B2A28:
	#data bank12.loc_8c129128
loc_8c1B2A2C:
	#data 0x0000C147
loc_8c1B2A30:
	#data 0x0000D22D
loc_8c1B2A34:
	#data 0x0000FBF9
loc_8c1B2A38:
	#data 0x0000D1F8
loc_8c1B2A3C:
	#data 0x8C347970
loc_8c1B2A40:
	#data 0x0000FB7B
loc_8c1B2A44:
	#data bank19.loc_8c19E444

;==============================================
loc_8c1B2A48:
	mov.l @(loc_8c1B2B44,pc),r3 ; r3 set to 0x8C347970
	mov 0x48,r0 ; r0 set to 0x48
	sts.l pr,@-r15
	mov.l @r3,r5
	mov.b @(r0,r5),r5
	mov.w @(loc_8c1B2B40,pc),r2 ; r2 set to 0x80
	extu.b r5,r5
	mov.l @r3,r0 ; r0 ??
	cmp/eq r2,r5
	add 0x2C,r0
	movt r5
	mov.b @r0,r0
	tst 0x80,r0
	movt r4
	add 0xFF,r4
	bsr loc_8c1B2A90
	neg r4,r4
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B2A70:
	mov.l @(loc_8c1B2B48,pc),r4 ; r4 set to 0x8C34B260
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r5,@r4 ; r4 ??
	mov.b r0,@(0x01,r4)
	mov.l r5,@(0x0C,r4)
	mov.l @(loc_8c1B2B4C,pc),r5 ; r5 set to 0x8C34B270
	mov.l @r5,r3
	mov.w @(0x1A,r3),r0
	extu.w r0,r0 ; r0 set to 0x01
	mov.l r0,@(0x04,r4)
	mov.l @r5,r3
	mov.w @(0x1C,r3),r0
	extu.w r0,r0 ; r0 set to 0x01
	rts
	mov.l r0,@(0x08,r4)

;==============================================
loc_8c1B2A90:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c1B2B4C,pc),r2 ; r2 set to 0x8C34B270
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(loc_8c1B2B48,pc),r14 ; r14 set to 0x8C34B260
	mov.w @(0x1A,r3),r0
	tst r0,r0
	bt/s loc_8c1B2AF8
	mov r4,r12
	exts.b r5,r5
	mov.l @(loc_8c1B2B50,pc),r13 ; r13 set to 0x8C1B3EEC
	tst r5,r5
	bf/s loc_8c1B2AFC
	mov.b @r14,r4
	exts.b r4,r3
	exts.b r12,r2 ; r2 ??? bc r12 is ???
	cmp/eq r3,r2
	bt loc_8c1B2AF8
	mov.b @(0x01,r14),r0
	tst r0,r0
	bt loc_8c1B2AEA
	exts.b r4,r4
	tst r4,r4
	bt loc_8c1B2AD8
	mov r14,r4 ; r4 set to 0x8C34B260
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r13
	add 0x04,r4 ; r4 set to 0x8C34B264
	mov.l @(0x04,r14),r2
	mov.l @(0x0C,r14),r3
	sub r3,r2
	add 0x03,r2
	bra loc_8c1B2AEA
	mov.l r2,@(0x04,r14)

loc_8c1b2ad8:
	mov r14,r4
	mov 0x00,r5
	jsr @r13
	add 0x08,r4
	mov.l @(0x08,r14),r2
	mov.l @(0x0C,r14),r3
	sub r3,r2
	add 0x03,r2
	mov.l r2,@(0x08,r14)

loc_8c1b2aea:
	mov r14,r4
	mov 0x00,r5
	jsr @r13
	add 0x0C,r4
	mov 0x01,r0
	mov.b r0,@(0x01,r14)
	mov.b r12,@r14
	
loc_8c1B2AF8:
	bra loc_8c1B2B36
	mov r12,r0
	
loc_8c1B2AFC:
	exts.b r4,r4
	tst r4,r4
	bt/s loc_8c1B2B16
	mov.l @(0x0C,r14),r12
	mov.l @(loc_8c1B2B54,pc),r3 ; r3 set to 0x8C1B3F0C
	mov.l @(0x04,r14),r4
	jsr @r3
	add r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1B2B30
	bra loc_8c1B2B26
	mov 0x00,r3
	
loc_8c1b2b16:
	mov.l @(loc_8c1b2b54,pc),r3
	mov.l @(0x08,r14),r4
	jsr @r3
	add r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b2b30
	mov 0x01,r3

loc_8c1b2b26:
	mov r14,r4
	mov 0x00,r5
	mov.b r3,@r14
	jsr @r13
	add 0x0C,r4

loc_8c1b2b30:
	mov 0x00,r0
	mov.b r0,@(0x01,r14)
	mov.b @r14,r0

loc_8c1B2B36:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B2B40:
	#data 0x0080
	#align4

loc_8c1B2B44:
	#data 0x8C347970
loc_8c1B2B48:
	#data 0x8C34B260
loc_8c1B2B4C:
	#data 0x8C34B270
loc_8c1B2B50:
	#data loc_8c1B3EEC
loc_8c1B2B54:
	#data loc_8c1B3F0C

;==============================================
loc_8c1B2B58:
	add 0xFC,r15
	mov r15,r2
	mov r15,r3
	add 0x01,r2
	add 0x02,r3
	mov.w r4,@r3
	mov.b r5,@r2
	mov.w @(0x02,r15),r0
	extu.w r0,r0
	mov 0x2A,r1 ; r1 set to 0x2A
	cmp/hs r1,r0
	bf loc_8c1B2B74
	bra loc_8c1B2EC6
	nop

loc_8c1B2B74:
	shll r0
	mov r0,r1
	mova @(loc_8c1B2B80,pc),r0  ; r0 set to 0x8C1B2B80
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???

braf_8c1b2b7c:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B2B80:
	#data16 {loc_8c1b2bd4-braf_8c1b2b7c-4} ; 0x0054
	#data16 {loc_8c1b2be2-braf_8c1b2b7c-4} ; 0x0062
	#data16 {loc_8c1b2bf4-braf_8c1b2b7c-4} ; 0x0074
	#data16 {loc_8c1b2c06-braf_8c1b2b7c-4} ; 0x0086
	#data16 {loc_8c1b2c18-braf_8c1b2b7c-4} ; 0x0098
	#data16 {loc_8c1b2c2a-braf_8c1b2b7c-4} ; 0x00AA
	#data16 {loc_8c1b2c3c-braf_8c1b2b7c-4} ; 0x00BC
	#data16 {loc_8c1b2c4e-braf_8c1b2b7c-4} ; 0x00CE
	#data16 {loc_8c1b2c60-braf_8c1b2b7c-4} ; 0x00E0
	#data16 {loc_8c1b2c72-braf_8c1b2b7c-4} ; 0x00F2
	#data16 {loc_8c1b2c84-braf_8c1b2b7c-4} ; 0x0104
	#data16 {loc_8c1b2c96-braf_8c1b2b7c-4} ; 0x0116
	#data16 {loc_8c1b2ca8-braf_8c1b2b7c-4} ; 0x0128
	#data16 {loc_8c1b2cba-braf_8c1b2b7c-4} ; 0x013A
	#data16 {loc_8c1b2ccc-braf_8c1b2b7c-4} ; 0x014C
	#data16 {loc_8c1b2cda-braf_8c1b2b7c-4} ; 0x015A
	#data16 {loc_8c1b2cec-braf_8c1b2b7c-4} ; 0x016C
	#data16 {loc_8c1b2cfe-braf_8c1b2b7c-4} ; 0x017E
	#data16 {loc_8c1b2d0c-braf_8c1b2b7c-4} ; 0x018C
	#data16 {loc_8c1b2d1a-braf_8c1b2b7c-4} ; 0x019A
	#data16 {loc_8c1b2d28-braf_8c1b2b7c-4} ; 0x01A8
	#data16 {loc_8c1b2d36-braf_8c1b2b7c-4} ; 0x01B6
	#data16 {loc_8c1b2d48-braf_8c1b2b7c-4} ; 0x01C8
	#data16 {loc_8c1b2d56-braf_8c1b2b7c-4} ; 0x01D6
	#data16 {loc_8c1b2d64-braf_8c1b2b7c-4} ; 0x01E4
	#data16 {loc_8c1b2d72-braf_8c1b2b7c-4} ; 0x01F2
	#data16 {loc_8c1b2d80-braf_8c1b2b7c-4} ; 0x0200
	#data16 {loc_8c1b2e16-braf_8c1b2b7c-4} ; 0x0296
	#data16 {loc_8c1b2e20-braf_8c1b2b7c-4} ; 0x02A0
	#data16 {loc_8c1b2e2a-braf_8c1b2b7c-4} ; 0x02AA
	#data16 {loc_8c1b2e34-braf_8c1b2b7c-4} ; 0x02B4
	#data16 {loc_8c1b2e46-braf_8c1b2b7c-4} ; 0x02C6
	#data16 {loc_8c1b2e50-braf_8c1b2b7c-4} ; 0x02D0
	#data16 {loc_8c1b2e5a-braf_8c1b2b7c-4} ; 0x02DA
	#data16 {loc_8c1b2e64-braf_8c1b2b7c-4} ; 0x02E4
	#data16 {loc_8c1b2e76-braf_8c1b2b7c-4} ; 0x02F6
	#data16 {loc_8c1b2e80-braf_8c1b2b7c-4} ; 0x0300
	#data16 {loc_8c1b2e92-braf_8c1b2b7c-4} ; 0x0312
	#data16 {loc_8c1b2e9c-braf_8c1b2b7c-4} ; 0x031C
	#data16 {loc_8c1b2ea6-braf_8c1b2b7c-4} ; 0x0326
	#data16 {loc_8c1b2eb0-braf_8c1b2b7c-4} ; 0x0330
	#data16 {loc_8c1b2eba-braf_8c1b2b7c-4} ; 0x033A

;==============================================
loc_8c1b2bd4:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2bde
	bra loc_8c1b2ec0
	nop

loc_8c1b2bde:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2be2:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2bee
	mov.l @(0x1A0,PC),r0
	rts
	add 0x04,r15

loc_8c1b2bee:
	mov.l @(0x1A0,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2bf4:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2c00
	mov.l @(0x198,PC),r0
	rts
	add 0x04,r15

loc_8c1b2c00:
	mov.l @(0x194,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2c06:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2c12
	mov.l @(0x18C,PC),r0
	rts
	add 0x04,r15

loc_8c1b2c12:
	mov.l @(0x18C,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2c18:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2c24
	mov.l @(0x184,PC),r0
	rts
	add 0x04,r15

loc_8c1b2c24:
	mov.l @(0x180,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2c2a:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2c36
	mov.l @(0x178,PC),r0
	rts
	add 0x04,r15

loc_8c1b2c36:
	mov.l @(0x178,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2c3c:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2c48
	mov.l @(0x170,PC),r0
	rts
	add 0x04,r15

loc_8c1b2c48:
	mov.l @(0x16C,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2c4e:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2c5a
	mov.l @(0x164,PC),r0
	rts
	add 0x04,r15

loc_8c1b2c5a:
	mov.l @(0x164,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2c60:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2c6c
	mov.l @(0x15C,PC),r0
	rts
	add 0x04,r15

loc_8c1b2c6c:
	mov.l @(0x158,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2c72:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2c7e
	mov.l @(0x150,PC),r0
	rts
	add 0x04,r15

loc_8c1b2c7e:
	mov.l @(0x150,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2c84:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2c90
	mov.l @(0x148,PC),r0
	rts
	add 0x04,r15

loc_8c1b2c90:
	mov.l @(0x144,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2c96:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ca2
	mov.l @(0x13C,PC),r0
	rts
	add 0x04,r15

loc_8c1b2ca2:
	mov.l @(0x13C,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2ca8:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2cb4
	mov.l @(0x134,PC),r0
	rts
	add 0x04,r15

loc_8c1b2cb4:
	mov.l @(0x130,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2cba:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2cc6
	mov.l @(0x128,PC),r0
	rts
	add 0x04,r15

loc_8c1b2cc6:
	mov.l @(0x128,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2ccc:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2cd6
	bra loc_8c1b2ec0
	nop

loc_8c1b2cd6:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2cda:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ce6
	mov.l @(0x110,PC),r0
	rts
	add 0x04,r15

loc_8c1b2ce6:
	mov.l @(0x110,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2cec:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2cf8
	mov.l @(0x108,PC),r0
	rts
	add 0x04,r15

loc_8c1b2cf8:
	mov.l @(0x104,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2cfe:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2d08
	bra loc_8c1b2ec0
	nop

loc_8c1b2d08:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2d0c:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2d16
	bra loc_8c1b2ec0
	nop

loc_8c1b2d16:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2d1a:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2d24
	bra loc_8c1b2ec0
	nop

loc_8c1b2d24:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2d28:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2d32
	bra loc_8c1b2ec0
	nop

loc_8c1b2d32:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2d36:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2d42
	mov.l @(0xC4,PC),r0
	rts
	add 0x04,r15

loc_8c1b2d42:
	mov.l @(0xC4,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2d48:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2d52
	bra loc_8c1b2ec0
	nop

loc_8c1b2d52:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2d56:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2d60
	bra loc_8c1b2ec0
	nop

loc_8c1b2d60:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2d64:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2d6e
	bra loc_8c1b2ec0
	nop

loc_8c1b2d6e:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2d72:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2d7c
	bra loc_8c1b2ec0
	nop

loc_8c1b2d7c:
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2d80:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2e10
	mov.l @(0x84,PC),r0
	rts
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B2D8C:
	#data bank1c.loc_8c1c7F98
loc_8c1B2D90:
	#data bank1c.loc_8c1c7FB6
loc_8c1B2D94:
	#data bank1c.loc_8c1c7FD4
loc_8c1B2D98:
	#data bank1c.loc_8c1c7FF2
loc_8c1B2D9C:
	#data bank1c.loc_8c1c8010
loc_8c1B2DA0:
	#data bank1c.loc_8c1c802E
loc_8c1B2DA4:
	#data bank1c.loc_8c1c804C
loc_8c1B2DA8:
	#data bank1c.loc_8c1c806A
loc_8c1B2DAC:
	#data bank1c.loc_8c1c8088
loc_8c1B2DB0:
	#data bank1c.loc_8c1c80A6
loc_8c1B2DB4:
	#data bank1c.loc_8c1c80C4
loc_8c1B2DB8:
	#data bank1c.loc_8c1c80E2
loc_8c1B2DBC:
	#data bank1c.loc_8c1c81F0
loc_8c1B2DC0:
	#data bank1c.loc_8c1c820E
loc_8c1B2DC4:
	#data bank1c.loc_8c1c81B4
loc_8c1B2DC8:
	#data bank1c.loc_8c1c81D2
loc_8c1B2DCC:
	#data bank1c.loc_8c1c822C
loc_8c1B2DD0:
	#data bank1c.loc_8c1c824A
loc_8c1B2DD4:
	#data bank1c.loc_8c1c8178
loc_8c1B2DD8:
	#data bank1c.loc_8c1c8196
loc_8c1B2DDC:
	#data bank1c.loc_8c1c813C
loc_8c1B2DE0:
	#data bank1c.loc_8c1c815A
loc_8c1B2DE4:
	#data bank1c.loc_8c1c8100
loc_8c1B2DE8:
	#data bank1c.loc_8c1c811E
loc_8c1B2DEC:
	#data bank1c.loc_8c1c82E0
loc_8c1B2DF0:
	#data bank1c.loc_8c1c82FE
loc_8c1B2DF4:
	#data bank1c.loc_8c1c8268
loc_8c1B2DF8:
	#data bank1c.loc_8c1c8286
loc_8c1B2DFC:
	#data bank1c.loc_8c1c82A4
loc_8c1B2E00:
	#data bank1c.loc_8c1c82C2
loc_8c1B2E04:
	#data bank1c.loc_8c1c831C
loc_8c1B2E08:
	#data bank1c.loc_8c1c833A
loc_8c1B2E0C:
	#data bank1c.loc_8c1c8358

;==============================================
loc_8c1b2e10:
	mov.l @(0xB8,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2e16:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2e20:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2e2a:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2e34:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2e40
	mov.l @(0x94,PC),r0
	rts
	add 0x04,r15

loc_8c1b2e40:
	mov.l @(0x90,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2e46:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2e50:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2e5a:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2e64:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2e70
	mov.l @(0x6C,PC),r0
	rts
	add 0x04,r15

loc_8c1b2e70:
	mov.l @(0x68,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2e76:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2e80:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2e8c
	mov.l @(0x58,PC),r0
	rts
	add 0x04,r15

loc_8c1b2e8c:
	mov.l @(0x54,PC),r0
	rts
	add 0x04,r15

;==============================================
loc_8c1b2e92:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2e9c:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2ea6:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2eb0:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bf loc_8c1b2ec0
	bra loc_8c1b2ec6
	nop

;==============================================
loc_8c1b2eba:
	mov.b @(0x1,r15),r0
	tst r0,r0
	bt loc_8c1b2ec6

loc_8c1b2ec0:
	mov.l @(0x24,PC),r0
	rts
	add 0x04,r15

loc_8c1B2EC6:
	mov.l @(loc_8c1B2EEC,pc),r0 ; r0 set to 0x8C1C7F5C
	rts
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B2ECC:
	#data bank1c.loc_8c1c8376
loc_8c1B2ED0:
	#data bank1c.loc_8c1c8394
loc_8c1B2ED4:
	#data bank1c.loc_8c1c83B2
loc_8c1B2ED8:
	#data bank1c.loc_8c1c83D0
loc_8c1B2EDC:
	#data bank1c.loc_8c1c83EE
loc_8c1B2EE0:
	#data bank1c.loc_8c1c840C
loc_8c1B2EE4:
	#data bank1c.loc_8c1c842A
loc_8c1B2EE8:
	#data bank1c.loc_8c1c7F7A
loc_8c1B2EEC:
	#data bank1c.loc_8c1c7F5C

;==============================================
loc_8c1B2EF0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1B302C,pc),r3 ; r3 set to 0x8C1A03CC
	mov.l @(loc_8c1B3028,pc),r13 ; r13 set to 0x8C34B280
	jsr @r3
	nop
	mov r0,r2
	tst r2,r2
	bf/s loc_8c1B2F12
	mov.l r0,@r13 ; r13 ??? bc r0 is ???
	mov.l @(loc_8c1B3030,pc),r3 ; r3 set to 0x8C1A003E
	mov.w @(loc_8c1B3012,pc),r4 ; r4 set to 0x4F10
	jsr @r3
	nop
	bra loc_8c1B2FFA
	nop

loc_8c1b2f12:
	mov 0x00,r7
	mov 0x01,r14
	mov r7,r6
	mov.l r14,@-r15
	mov.w @(loc_8C1B3014,pc),r5
	bsr loc_8c1b31da
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x00,r7
	mov.l r14,@-r15
	mov.w @(loc_8C1B3016,pc),r5
	mov r7,r6
	bsr loc_8c1b31da
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x00,r7
	mov.l r14,@-r15
	mov.w @(loc_8C1B3018,pc),r5
	mov r7,r6
	bsr loc_8c1b31da
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x00,r7
	mov.l r14,@-r15
	mov 0x41,r5
	mov r7,r6
	bsr loc_8c1b31da
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x00,r7
	mov.l r14,@-r15
	mov.w @(loc_8C1B301A,pc),r5
	mov r7,r6
	bsr loc_8c1b31da
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x00,r7
	mov.l r14,@-r15
	mov.w @(loc_8C1B301C,pc),r5
	mov r7,r6
	bsr loc_8c1b31da
	mov r7,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x00,r7
	mov.l r14,@-r15
	mov.w @(loc_8C1B301E,pc),r5
	mov r7,r6
	bsr loc_8c1b31da
	mov r7,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x00,r7
	mov.l r14,@-r15
	mov.w @(loc_8C1B3020,pc),r5
	mov r7,r6
	bsr loc_8c1b31da
	mov r7,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x00,r7
	mov.l r14,@-r15
	mov.w @(loc_8C1B3022,pc),r5
	mov r7,r6
	bsr loc_8c1b31da
	mov r7,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x01,r6
	mov.l r14,@-r15
	mov r6,r5
	mov 0x00,r7
	bsr loc_8c1b31da
	mov r7,r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1b2ff0
	add 0x04,r15
	mov 0x01,r6
	mov.l r14,@-r15
	mov.w @(loc_8C1B3024,pc),r5
	mov 0x00,r7
	bsr loc_8c1b31da
	mov r7,r4
	exts.b r0,r0
	tst r0,r0
	bf/s loc_8c1b2ffe
	add 0x04,r15

loc_8c1b2ff0:
	mov.l @(loc_8c1b3034,pc),r2
	jsr @r2
	nop
	mov 0x00,r3
	mov.l r3,@r13

loc_8c1B2FFA:
	bra loc_8c1B300A
	mov 0x00,r0

loc_8c1B2FFE:
	mov.l @(0x34,PC),r2
	jsr @r2
	nop
	mov 0x00,r3
	mov 0x01,r0
	mov.l r3,@r13

loc_8c1B300A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B3012:
	#data 0x4F10
loc_8c1b3014:
	#data 0x00EB
loc_8c1b3016:
	#data 0x00EE
loc_8c1b3018:
	#data 0x00EC
loc_8c1b301a:
	#data 0x00EA
loc_8c1b301c:
	#data 0x00F2
loc_8c1b301e:
	#data 0x00FD
loc_8c1b3020:
	#data 0x00F7
loc_8c1b3022:
	#data 0x00F8
loc_8c1b3024:
	#data 0x00F0
	#align4

loc_8c1B3028:
	#data 0x8C34B280
loc_8c1B302C:
	#data bank1a.loc_8c1a03CC
loc_8c1B3030:
	#data bank1a.loc_8c1a003E
loc_8c1B3034:
	#data bank1a.loc_8c1a03F2

;==============================================
loc_8c1B3038:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1B3138,pc),r4 ; r4 set to 0x8C347979
	mov.l @(loc_8c1B3134,pc),r12 ; r12 set to 0x8C19E30C
	mov r4,r0 ; r0 set to 0x8C347979
	nop
	mov.b @r0,r0 ; r0 ??
	tst 0x20,r0
	bt loc_8c1B3076
	mov.l @(loc_8c1B313C,pc),r2 ; r2 set to 0x8C347970
	mov 0x50,r1 ; r1 set to 0x50
	mov.l @r2,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x43,r0
	bf loc_8c1B3076
	mov.b @r4,r0
	and 0xDF,r0
	bsr loc_8c1B3102
	mov.b r0,@r4 ; r4 ??? bc r0 is ???
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1B30CC
	mov.l @(loc_8c1B3140,pc),r3 ; r3 set to 0x8C347985
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8c1B312A,pc),r4 ; r4 set to 0x604
	mov.b @r3,r5
	bra loc_8c1B30EE
	extu.b r5,r5

loc_8c1B3076:
	mov r4,r0
	nop
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c1B30F6
	mov.l @(loc_8c1B313C,pc),r3 ; r3 set to 0x8C347970
	mov 0x50,r1 ; r1 set to 0x50
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x43,r0
	bf loc_8c1B30F6
	mov.b @r4,r0
	mov.l @(loc_8c1B3144,pc),r14 ; r14 set to 0x8C34B280
	mov.l @(loc_8c1B3148,pc),r3 ; r3 set to 0x8C1A03CC
	and 0xF7,r0
	jsr @r3
	mov.b r0,@r4
	mov r0,r2
	tst r2,r2
	bf/s loc_8c1B30AE
	mov.l r0,@r14 ; r14 ??? bc r0 is ???
	mov.l @(loc_8c1B314C,pc),r3 ; r3 set to 0x8C1A003E
	mov.w @(loc_8c1B312C,pc),r4 ; r4 set to 0x4F24
	jsr @r3
	nop
	bra loc_8c1B30CC
	nop

loc_8c1B30AE:
	mov 0x00,r13 ; r13 set to 0x00
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r13,@-r15
	mov 0x43,r5 ; r5 set to 0x43
	mov r13,r7 ; r7 set to 0x00
	bsr loc_8c1B31DA
	mov r6,r4 ; r4 set to 0x01
	exts.b r0,r0
	tst r0,r0
	bf/s loc_8c1B30D0
	add 0x04,r15
	mov.l @(loc_8c1B3150,pc),r3 ; r3 set to 0x8C1A03F2
	jsr @r3
	nop
	mov.l r13,@r14

loc_8c1B30CC:
	bra loc_8c1B30F8
	mov 0x02,r0

loc_8c1B30D0:
	mov.l @(loc_8c1B3150,pc),r3 ; r3 set to 0x8C1A03F2
	jsr @r3
	nop
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r13,@r14
	mov.l @(loc_8c1B3154,pc),r2 ; r2 set to 0x8C347983
	mov.w @(loc_8c1B312A,pc),r4 ; r4 set to 0x604
	mov.b @r2,r5
	jsr @r12
	extu.b r5,r5
	mov.l @(loc_8c1B3158,pc),r3 ; r3 set to 0x8C347981
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8c1B312E,pc),r4 ; r4 set to 0x605
	mov.b @r3,r5
	extu.b r5,r5

loc_8c1B30EE:
	jsr @r12
	nop
	bra loc_8c1B30F8
	mov 0x01,r0

loc_8c1B30F6:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1B30F8:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B3102:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1B3144,pc),r13 ; r13 set to 0x8C34B280
	mov.l @(loc_8c1B3148,pc),r3 ; r3 set to 0x8C1A03CC
	add 0xFC,r15
	jsr @r3
	nop
	mov r0,r2
	mov.l @(loc_8c1B314C,pc),r12 ; r12 set to 0x8C1A003E
	tst r2,r2
	bf/s loc_8c1B315C
	mov.l r0,@r13 ; r13 ??? bc r0 is ???
	mov.w @(loc_8c1B3130,pc),r4 ; r4 set to 0x4F4C
	jsr @r12
	nop
	bra loc_8c1B31BE
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B312A:
	#data 0x0604
loc_8c1B312C:
	#data 0x4F24
loc_8c1B312E:
	#data 0x0605
loc_8c1B3130:
	#data 0x4F4C
	#align4

loc_8c1B3134:
	#data bank19.loc_8c19E30C
loc_8c1B3138:
	#data 0x8C347979
loc_8c1B313C:
	#data 0x8C347970
loc_8c1B3140:
	#data 0x8C347985
loc_8c1B3144:
	#data 0x8C34B280
loc_8c1B3148:
	#data bank1a.loc_8c1a03CC
loc_8c1B314C:
	#data bank1a.loc_8c1a003E
loc_8c1B3150:
	#data bank1a.loc_8c1a03F2
loc_8c1B3154:
	#data 0x8C347983
loc_8c1B3158:
	#data 0x8C347981

;==============================================
loc_8c1B315C:
	mov 0x00,r14 ; r14 set to 0x00
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r14,@-r15
	mov 0x43,r5 ; r5 set to 0x43
	mov r14,r7 ; r7 set to 0x00
	bsr loc_8c1B31DA
	mov r6,r4 ; r4 set to 0x01
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c1B31B6
	add 0x04,r15
	mov.l @(loc_8c1B324C,pc),r2 ; r2 set to 0x8C1B3EEC
	mov 0x32,r5 ; r5 set to 0x32
	jsr @r2
	mov r15,r4 ; r4 ??? bc r15 is ???
	bra loc_8c1B3194
	nop

;==============================================
loc_8c1B317E:
	mov.l @(0xD0,PC),r11
	jsr @r11
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b3194
	mov.w @(0xBA,PC),r14
	jsr @r12
	mov r14,r4
	bra loc_8c1b31be
	nop

;==============================================
loc_8c1b3194:
	mov.l @(loc_8c1b3254,pc),r4
	mov 0x50,r1
	mov.l @r4,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x4A,r0
	bf loc_8c1b317e
	mov 0x01,r6
	mov.l r14,@-r15
	mov 0x4A,r5
	mov 0x00,r7
	bsr loc_8c1b31da
	mov r6,r4
	exts.b r0,r0
	tst r0,r0
	bf/s loc_8c1b31c2
	add 0x04,r15

loc_8c1B31B6:
	mov.l @(loc_8c1B3258,pc),r2 ; r2 set to 0x8C1A03F2
	jsr @r2
	nop
	mov.l r14,@r13

loc_8c1B31BE:
	bra loc_8c1B31CC
	mov 0x00,r0

loc_8c1B31C2:
	mov.l @(0x94,PC),r3
	jsr @r3
	nop
	mov 0x01,r0
	mov.l r14,@r13

loc_8c1B31CC:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B31DA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1B3250,pc),r11 ; r11 set to 0x8C1B3F0C
	mov.l @(loc_8c1B3260,pc),r13 ; r13 set to 0x8C34B280
	mov.l @(loc_8c1B3254,pc),r14 ; r14 set to 0x8C347970
	add 0xE4,r15
	mov.l @(loc_8c1B3258,pc),r8 ; r8 set to 0x8C1A03F2
	mov.l @(loc_8c1B325C,pc),r9 ; r9 set to 0x8C1A003E
	mov r4,r0
	nop
	mov.b r0,@(0x08,r15)
	mov 0x10,r0 ; r0 set to 0x10
	mov.b r5,@(r0,r15)
	mov 0x14,r0 ; r0 set to 0x14
	mov.b r6,@(r0,r15)
	mov r7,r0 ; r0 ??? bc r7 is ???
	nop
	mov.b r0,@(0x04,r15)
	mov.l @r13,r3
	tst r3,r3
	bf/s loc_8c1B3228
	mov r12,r10 ; r10 set to 0x00
	mov.l @(loc_8c1B3264,pc),r3 ; r3 set to 0x8C1A03CC
	jsr @r3
	mov 0x01,r10 ; r10 set to 0x01
	mov r0,r2
	tst r2,r2
	bf/s loc_8c1B3228
	mov.l r0,@r13 ; r13 ??? bc r0 is ???
	mov.w @(loc_8c1B324A,pc),r4 ; r4 set to 0x4F10
	bra loc_8c1B3354
	nop

loc_8c1B3228:
	mov 0x18,r0 ; r0 set to 0x18
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r15)
	mov.b @(0x08,r15),r0
	extu.b r0,r0 ; r0 set to 0x18
	cmp/eq 0x01,r0
	bf/s loc_8c1B3268
	mov.l @r13,r4
	mov 0x4F,r0 ; r0 set to 0x4F
	mov.b r0,@(0x08,r15)
	mov.b @(0x04,r15),r0
	tst r0,r0
	bf loc_8c1B327A
	mov 0x07,r7 ; r7 set to 0x07
	bra loc_8c1B327A
	mov r4,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B3248:
	#data 0x4E98
loc_8c1B324A:
	#data 0x4F10
	#align4

loc_8c1B324C:
	#data loc_8c1B3EEC
loc_8c1B3250:
	#data loc_8c1B3F0C
loc_8c1B3254:
	#data 0x8C347970
loc_8c1B3258:
	#data bank1a.loc_8c1a03F2
loc_8c1B325C:
	#data bank1a.loc_8c1a003E
loc_8c1B3260:
	#data 0x8C34B280
loc_8c1B3264:
	#data bank1a.loc_8c1a03CC

;==============================================
loc_8c1b3268:
	mov 0x5F,r0
	mov.b r0,@(0x08,r15)
	mov.b @(0x04,r15),r0
	tst r0,r0
	bf loc_8c1b327a
	mov.w @(loc_8C1B335C,pc),r3
	mov r4,r5
	mov 0x06,r7
	add r3,r5

loc_8c1B327A:
	mov 0x10,r0 ; r0 set to 0x10
	mov r12,r4
	mov.b @(r0,r15),r2
	extu.w r7,r6
	cmp/pl r6
	extu.b r2,r2
	bf/s loc_8c1B32BC
	mov.l r2,@(0x0C,r15)

loc_8c1B328A:
	extu.w r4,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x0C,r15),r3
	shll2 r2
	shll r2
	add r5,r2
	mov.w @r2,r1
	extu.w r1,r1
	cmp/eq r1,r3
	bf loc_8c1B32B4
	extu.w r4,r1
	mov r1,r3
	shll r1
	add r3,r1
	shll2 r1
	shll r1
	add r5,r1
	bra loc_8c1B32BC
	mov.l r1,@(0x04,r15)

loc_8c1b32b4:
	add 0x01,r4
	extu.w r4,r2
	cmp/ge r6,r2
	bf loc_8c1b328a

loc_8c1b32bc:
	extu.w r4,r4
	cmp/eq r6,r4
	bf loc_8c1b32d6
	extu.b r10,r0
	cmp/eq 0x01,r0
	bf loc_8c1b32d0
	jsr @r8
	nop
	mov r12,r10
	mov.l r12,@r13

loc_8c1b32d0:
	mov.w @(loc_8C1B335E,pc),r4
	bra loc_8c1b340c
	nop

loc_8c1b32d6:
	mov 0x3C,r0
	mov.b @(r0,r15),r2
	tst r2,r2
	bt loc_8c1b3326
	mov.l @r14,r3
	mov 0x50,r1
	mov.b @(0x08,r15),r0
	add r3,r1
	mov.b r0,@r1
	mov.l @(loc_8c1b3364,pc),r3
	mov 0x32,r5
	jsr @r3
	mov r15,r4
	bra loc_8c1b3314
	nop

loc_8c1b32f4:
	jsr @r11
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b3314
	extu.b r10,r0
	cmp/eq 0x01,r0
	bf loc_8c1b330a
	jsr @r8
	nop
	mov.l r12,@r13

loc_8c1b330a:
	mov.w @(loc_8C1B3360,pc),r10
	jsr @r9
	mov r10,r4
	bra loc_8c1b33f8
	nop

loc_8c1b3314:
	mov.l @r14,r3
	mov 0x6C,r2
	mov.b @(0x08,r15),r0
	add r3,r2
	mov.b @r2,r2
	cmp/eq r2,r0
	bf loc_8c1b32f4
	bra loc_8c1b3368
	nop

loc_8c1b3326:
	mov.l @(loc_8c1b3364,pc),r3
	mov 0x02,r5
	jsr @r3
	mov r15,r4

loc_8c1b332e:
	jsr @r11
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b332e
	mov.l @r14,r2
	mov 0x50,r0
	mov.b @(r0,r2),r3
	mov.l @(0x0C,r15),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c1b3368
	extu.b r10,r0
	cmp/eq 0x01,r0
	bf loc_8c1b3352
	jsr @r8
	nop
	mov.l r12,@r13

loc_8c1b3352:
	mov.w @(loc_8C1B3362,pc),r4

loc_8c1B3354:
	jsr @r9
	nop
	bra loc_8c1B33F8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b335c:
	#data 0x00A8
loc_8c1b335e:
	#data 0x4EAC
loc_8c1b3360:
	#data 0x4EC0
loc_8c1b3362:
	#data 0x4ED4
	#align4

loc_8c1B3364:
	#data loc_8c1B3EEC

;==============================================
loc_8c1B3368:
	mov.l @(0x4,r15),r4
	mov 0x58,r0
	mov.l @r14,r3
	mov.l @(0x8,r4),r4
	mov.b r4,@(r0,r3)
	extu.w r4,r4
	mov.l @r14,r3
	mov 0x5C,r0
	shlr8 r4
	mov.b r4,@(r0,r3)
	bra loc_8c1b33a0
	mov r12,r4

loc_8c1B3380:
	mov.l @r14,r0
	add 0x34,r0
	mov.b @r0,r0
	tst 0x02,r0
	bt loc_8c1b33a0
	mov.l @(0x4,r15),r3
	mov.w @(0xB0,PC),r2
	mov.l @r13,r0
	mov.l @(0x14,r3),r3
	add r2,r0
	mov.l @r14,r1
	add r3,r0
	mov.b @(r0,r4),r3
	mov 0x40,r0
	mov.b r3,@(r0,r1)
	add 0x01,r4

loc_8c1B33A0:
	mov.l @(0x4,r15),r3
	mov.l @(0x10,r3),r2
	cmp/hs r2,r4
	bf loc_8c1b3380
	mov.l @(0x9C,PC),r2
	mov 0x02,r5
	jsr @r2
	mov r15,r4

loc_8c1B33B0:
	jsr @r11
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b33b0
	mov 0x14,r0
	mov.l @r14,r3
	mov.b @(r0,r15),r2
	mov 0x50,r0
	tst r2,r2
	mov.b r12,@(r0,r3)
	mov.l @(0x80,PC),r3
	mov 0x32,r5
	jsr @r3
	mov r15,r4
	mov.w @(0x70,PC),r4

loc_8c1B33D0:
	mov.l @r14,r3
	mov 0x5C,r0
	mov.b @(r0,r3),r2
	extu.b r2,r2
	cmp/eq r4,r2
	bf loc_8c1b33d0
	jsr @r11
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b33fc
	extu.b r10,r0
	cmp/eq 0x01,r0
	bf loc_8c1b33f2
	jsr @r8
	nop
	mov.l r12,@r13

loc_8c1B33F2:
	mov.w @(0x4E,PC),r4
	jsr @r9
	nop

loc_8c1B33F8:
	bra loc_8c1B3424
	mov 0x00,r0

loc_8c1B33FC:
	mov.l @r14,r2
	mov 0x58,r0
	mov.b @(r0,r2),r3
	mov.l @(0x4,r15),r2
	mov.b @(0x4,r2),r0
	cmp/eq r0,r3
	bt loc_8c1b3414
	mov.w @(0x38,PC),r4

loc_8c1B340C:
	jsr @r9
	nop
	mov 0x18,r0
	mov.b r12,@(r0,r15)

loc_8c1B3414:
	extu.b r10,r0
	cmp/eq 0x01,r0
	bf loc_8c1b3420
	jsr @r8
	nop
	mov.l r12,@r13

loc_8c1B3420:
	mov 0x18,r0
	mov.b @(r0,r15),r0

loc_8c1B3424:
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
loc_8c1B3438:
	mov.l @(loc_8c1B344C,pc),r2 ; r2 set to 0x8C34B280
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.l r3,@r2


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B3440:
	#data 0x0138
loc_8c1B3442:
	#data 0x00FF
loc_8c1B3444:
	#data 0x4EE8
loc_8c1B3446:
	#data 0x4EFC
	#align4

loc_8c1B3448:
	#data loc_8c1B3EEC
loc_8c1B344C:
	#data 0x8C34B280

;==============================================
loc_8c1B3450:
	rts
	nop

;==============================================
loc_8c1b3454:
	mov.l @(loc_8C1B3640,pc),r3
	extu.b r4,r0
	cmp/eq 0x05,r0
	mov.b r4,@r3
	mov.l @(loc_8C1B3644,pc),r5
	bt/s loc_8c1b347e
	mov.b r4,@r5
	cmp/eq 0x06,r0
	bf loc_8c1b347e
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x01,r5)
	mov.l @(loc_8C1B3648,pc),r6
	mov.b @r6,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1b347c
	mov 0x01,r0
	mov.b r0,@(0x01,r5)

loc_8c1b347c:
	mov.b r4,@r6

loc_8c1b347e:
	mov.l @(loc_8c1b364c,pc),r3
	jmp @r3
	nop

;==============================================
loc_8c1b3484:
	mov.l r14,@-r15
	mov 0x01,r3
	mov.l @(0x1C4,PC),r14
	sts.l pr,@-r15
	mov.b @r14,r4
	extu.b r4,r4
	tst r4,r3
	bf loc_8c1b34e8
	mov 0x02,r1
	tst r1,r4
	bf loc_8c1b34a2
	lds.l @r15+,pr
	mov.l @(0x1B4,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c1b34a2:
	mov.l @(0x1B4,PC),r4
	mov r4,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b34c0
	mov r4,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b34c8

loc_8c1b34c0:
	lds.l @r15+,pr
	mov 0x05,r4
	bra loc_8c1b3454
	mov.l @r15+,r14

loc_8c1b34c8:
	bsr loc_8c1b3aa8
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b34e8
	mov.l @(0x188,PC),r4
	mov.l @(0x188,PC),r3
	mov.w @r4,r2
	and r3,r2
	mov.w r2,@r4
	mov.w @r4,r0
	or 0x08,r0
	mov.w r0,@r4
	mov.b @r14,r0
	or 0x01,r0
	mov.b r0,@r14

loc_8c1b34e8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B34EE:
	mov.l @(loc_8c1B3668,pc),r3 ; r3 set to 0x8C34B302
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1B3664,pc),r5 ; r5 set to 0x8C1B3450
	mov.b r4,@r3 ; r3 ??
	mov.b @r5,r2
	mov.l @(loc_8c1B366C,pc),r4 ; r4 set to 0x8C34B30A
	tst r2,r2
	bf loc_8c1B3506
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@r4 ; r4 ??
	bra loc_8c1B3454
	mov r0,r4

loc_8c1B3506:
	mov 0x03,r2 ; r2 set to 0x03
	mov.b r2,@r4
	bra loc_8c1B3454
	mov r2,r4

;==============================================
;unused?
loc_8c1b350e:
	mov.l @(0x134,PC),r5
	mov 0x00,r0
	mov.b r0,@(0x1,r5)
	mov.b r0,@(0x2,r5)
	bra loc_8c1b3454
	mov 0x04,r4

;==============================================
;unused?
loc_8c1b351a:
	mov.l @(0x154,PC),r3
	sts.l pr,@-r15
	mov.w @r3,r5
	extu.w r5,r2
	tst r2,r2
	bt loc_8c1b3532
	mov.l @(0x150,PC),r2
	mov.l @(0x148,PC),r1
	jsr @r2
	extu.w r5,r0
	mov.l @(0x14C,PC),r1
	mov.l r0,@r1

loc_8c1b3532:
	mov.l @(0x148,PC),r5
	lds.l @r15+,pr
	mov.l @r5,r3
	mov.l r3,@r4
	mov.w @(0x4,r5),r0
	mov.w r0,@(0x4,r4)
	mov.w @(0x6,r5),r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x8,r5),r0
	mov.w r0,@(0x8,r4)
	mov.w @(0xA,r5),r0
	mov.w r0,@(0xA,r4)
	mov.w @(0xC,r5),r0
	mov.w r0,@(0xC,r4)
	mov.w @(0xE,r5),r0
	mov.w r0,@(0xE,r4)
	mov.l @(0x10,r5),r3
	rts
	mov.l r3,@(0x10,r4)

;==============================================
loc_8c1B3558:
	mov.l @(loc_8c1B3680,pc),r3 ; r3 set to 0x8C129728
	mov 0x14,r6 ; r6 set to 0x14
	mov.l @(loc_8c1B367C,pc),r4 ; r4 set to 0x8C34B314
	jmp @r3
	mov 0x00,r5

;==============================================
;unused?
loc_8c1b3562:
	sts.l pr,@-r15
	mov.l @(0x11C,PC),r4
	mov 0x0C,r6
	mov.l @(0x114,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.l @(0xE0,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c1b357c
	bra loc_8c1b3746
	nop

loc_8c1b357c:
	mov.l @(0xD8,PC),r5
	mov.l @(0x104,PC),r4
	mov r5,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b35fc
	mov.l @(0xF8,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bt loc_8c1b359c
	mov.b @(0x3,r4),r0
	or 0x08,r0
	mov.b r0,@(0x3,r4)

loc_8c1b359c:
	mov.l @(0xEC,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1b35aa
	mov.b @(0x3,r4),r0
	or 0x10,r0
	mov.b r0,@(0x3,r4)

loc_8c1b35aa:
	mov.l @(0xE4,PC),r3
	mov.w @r3,r0
	mov.w r0,@(0x4,r4)
	mov.l @(0xE0,PC),r5
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c1b35be
	mov.b @(0x3,r4),r0
	or 0x80,r0
	mov.b r0,@(0x3,r4)

loc_8c1b35be:
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c1b35d2
	mov r4,r3
	add 0x03,r3
	mov.b @r3,r0
	and 0xF8,r0
	or 0x04,r0
	bra loc_8c1b35de
	mov.b r0,@r3

loc_8c1b35d2:
	mov r4,r1
	add 0x03,r1
	mov.b @r1,r0
	and 0xF8,r0
	or 0x03,r0
	mov.b r0,@r1

loc_8c1b35de:
	mov.l @(0xB8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1b35f2
	mov.b @(0x1,r4),r0
	or 0x80,r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x2,r4),r0
	or 0x01,r0
	mov.b r0,@(0x2,r4)

loc_8c1b35f2:
	mov.l @(0xA8,PC),r3
	mov.b @r3,r0
	mov.b r0,@(0x9,r4)
	bra loc_8c1b3746
	mov.b r0,@(0x8,r4)

loc_8c1b35fc:
	mov r5,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b360e
	bra loc_8c1b371e
	nop

loc_8c1b360e:
	mov.l @(0x90,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bt loc_8c1b361c
	mov.b @(0x3,r4),r0
	or 0x20,r0
	mov.b r0,@(0x3,r4)

loc_8c1b361c:
	mov.l @(0x84,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1b362a
	mov.b @(0x3,r4),r0
	or 0x40,r0
	mov.b r0,@(0x3,r4)

loc_8c1b362a:
	mov.l @(0x80,PC),r2
	mov.l @(0x78,PC),r3
	mov.w @r2,r6
	mov.w @r3,r5
	extu.w r6,r0
	extu.w r5,r1
	cmp/gt r0,r1
	bf loc_8c1b36b0
	bra loc_8c1b36b4
	mov r6,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1b3640:
	#data 0x8C34B309
loc_8c1b3644:
	#data 0x8C34B301
loc_8c1b3648:
	#data 0x8C34B2D4
loc_8c1B364C:
	#data bank19.loc_8c199364
loc_8c1B3650:
	#data 0x8C34B2CA
loc_8c1B3654:
	#data loc_8c1B3DE0
loc_8c1B3658:
	#data 0x8C34B288
loc_8c1B365c:
	#data 0x8C34B2C8
loc_8c1B3660:
	#data 0x0000FFBF
loc_8c1B3664:
	#data loc_8c1B3450
loc_8c1B3668:
	#data 0x8C34B302
loc_8c1B366C:
	#data 0x8C34B30A
loc_8c1B3670:
	#data 0x8C34B30C
loc_8c1B3674:
	#data 0x00019000
loc_8c1B3678:
	#data bank12.loc_8c129128
loc_8c1B367C:
	#data 0x8C34B314
loc_8c1B3680:
	#data bank12.loc_8c129728
loc_8c1B3684:
	#data 0x8C34B328
loc_8c1B3688:
	#data 0x8C352F25
loc_8c1B368c:
	#data 0x8C352F24
loc_8c1B3690:
	#data 0x8C352F20
loc_8c1B3694:
	#data 0x8C352F05
loc_8c1B3698:
	#data 0x8C352EF5
loc_8c1B369c:
	#data 0x8C352EFF
loc_8c1B36a0:
	#data 0x8C352E61
loc_8c1B36a4:
	#data 0x8C352E5F
loc_8c1B36a8:
	#data 0x8C352E26
loc_8c1B36ac:
	#data 0x8C352E28

;==============================================
;unused?
loc_8c1b36b0:
	mov r5,r0
	nop

loc_8c1b36b4:
	mov.w r0,@(0x4,r4)
	mov r4,r3
	mov.b @(0x3,r4),r0
	add 0x03,r3
	or 0x80,r0
	mov.b r0,@(0x3,r4)
	mov.b @r3,r0
	and 0xF8,r0
	or 0x05,r0
	mov.b r0,@r3
	mov.l @(0xE0,PC),r2
	mov.l @(0xE4,PC),r3
	mov.w @r2,r0
	mov.w @(0xD4,PC),r1
	extu.w r0,r0
	jsr @r3
	mov r4,r2
	mov.l @(0xDC,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c1b3710
	mov.l @(0xD8,PC),r5
	mov.w @r5,r3
	tst r3,r3
	bt.s loc_8c1b36ec
	mov r4,r2
	bra loc_8c1b36ee
	mov 0x01,r0

loc_8c1b36ec:
	mov 0x00,r0

loc_8c1b36ee:
	mov.l @(0xC0,PC),r3
	mov.w @(0xB4,PC),r1
	jsr @r3
	nop
	mov.w @r5,r2
	tst r2,r2
	bt loc_8c1b3700
	bra loc_8c1b3702
	mov 0x01,r0

loc_8c1b3700:
	mov 0x00,r0

loc_8c1b3702:
	mov.l @(0xAC,PC),r3
	mov.w @(0xA2,PC),r1
	jsr @r3
	mov r4,r2
	mov.l @(0xB0,PC),r2
	mov.w @r2,r0
	mov.w r0,@(0x6,r4)

loc_8c1b3710:
	mov.l @(0xAC,PC),r3
	mov.b @r3,r0
	mov.b r0,@(0x8,r4)
	mov.l @(0xAC,PC),r2
	mov.b @r2,r0
	bra loc_8c1b3746
	mov.b r0,@(0x9,r4)

loc_8c1b371e:
	mov r5,r0
	nop
	add 0x1C,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0xC0,r0
	bf loc_8c1b373a
	mov r4,r1
	add 0x03,r1
	mov.b @r1,r0
	and 0xF8,r0
	or 0x02,r0
	bra loc_8c1b3746
	mov.b r0,@r1

loc_8c1b373a:
	mov r4,r2
	add 0x03,r2
	mov.b @r2,r0
	and 0xF8,r0
	or 0x01,r0
	mov.b r0,@r2

loc_8c1b3746:
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r0
	rts
	nop

;==============================================
loc_8c1B374E:
	mov 0x02,r2 ; r2 set to 0x02
	mov.l r14,@-r15
	mov.l @(loc_8c1B37CC,pc),r3 ; r3 set to 0x8C34B2CA
	mov.b @r3,r4
	extu.b r4,r4
	tst r4,r2
	bt loc_8c1B37FE
	mov.l @(loc_8c1B37D0,pc),r0 ; r0 set to 0x8C34B2E3
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c1B37FE
	mov.l @(loc_8c1B37D4,pc),r0 ; r0 set to 0x8C34B2A4
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0xC0,r0
	bf loc_8c1B37FE
	mov.l @(loc_8c1B37D0,pc),r5 ; r5 set to 0x8C34B2E3
	mov.l @(loc_8c1B37D8,pc),r6 ; r6 set to 0x8C34B2C6
	mov.b @r5,r3 ; r3 ??
	mov.l @(loc_8c1B37DC,pc),r14 ; r14 set to 0x8C34B2A9
	tst r3,r3
	bf loc_8c1B379A
	mov 0x04,r1 ; r1 set to 0x04
	tst r1,r4
	bf loc_8c1B37FE
	mov r14,r0 ; r0 set to 0x8C34B2A9
	nop
	add 0x19,r0 ; r0 set to 0x8C34B2C2
	mov.b @r0,r0 ; r0 ??
	mov 0x0C,r4 ; r4 set to 0x0C
	mov 0x05,r3 ; r3 set to 0x05
	extu.b r0,r0
	and r0,r4 ; r4 ??? bc r0 is ???
	shar r4
	shar r4
	bra loc_8c1B381E
	mov.b r3,@r6

loc_8c1B379A:
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c1B37E0
	bra loc_8c1B381E
	mov 0x00,r4


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B37a6:
	#data 0x0807
loc_8c1B37a8:
	#data 0x0F01
loc_8c1B37aa:
	#data 0x1001
	#align4

loc_8c1B37ac:
	#data 0x8C352E5A
loc_8c1B37B0:
	#data bank13.loc_8c13148C
loc_8c1B37B4:
	#data 0x8C352E50
loc_8c1B37B8:
	#data 0x8C352E52
loc_8c1B37Bc:
	#data 0x8C352E56
loc_8c1B37C0:
	#data 0x8C352E2F
loc_8c1B37C4:
	#data 0x8C352E32
loc_8c1B37C8:
	#data 0x8C34B328
loc_8c1B37CC:
	#data 0x8C34B2CA
loc_8c1B37D0:
	#data 0x8C34B2E3
loc_8c1B37D4:
	#data 0x8C34B2A4
loc_8c1B37D8:
	#data 0x8C34B2C6
loc_8c1B37DC:
	#data 0x8C34B2A9

;==============================================
loc_8c1b37e0:
	mov.l @(loc_8C1B39D4,pc),r4
	mov r4,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b3804
	mov r4,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1b3804

loc_8c1B37FE:
	mov.l @(loc_8c1B39D8,pc),r2 ; r2 set to 0x8C1B3DE0
	jmp @r2
	mov.l @r15+,r14
	
;==============================================
loc_8c1B3804:
	mov r4,r3
	add 0x1C,r3
	mov.b @r3,r0
	or 0x20,r0
	mov.b r0,@r3
	mov r14,r0
	nop
	add 0x19,r0
	mov.b @r0,r0
	mov 0x03,r3
	mov.b r3,@r6
	and 0x03,r0
	mov r0,r4

loc_8c1B381E:
	extu.b r4,r0
	cmp/eq 0x00,r0
	bt loc_8c1B3830
	cmp/eq 0x01,r0
	bt loc_8c1B3834
	cmp/eq 0x02,r0
	bt loc_8c1B383C
	bra loc_8c1B3852
	nop

loc_8c1B3830:
	bra loc_8c1B384A
	mov 0x00,r5

loc_8c1B3834:
	mov.l @(loc_8c1B39DC,pc),r3 ; r3 set to 0x8C34B2D8
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFF
	bra loc_8c1B3852
	mov.l r2,@r3

loc_8c1b383c:
	mov r14,r5
	add 0x12,r5
	mov.b @r5,r5
	mov 0x64,r3
	extu.b r5,r5
	mulu.w r3,r5
	sts macl,r5

loc_8c1B384A:
	mov.l @(loc_8c1B39E0,pc),r2 ; r2 set to 0x8C1B3EEC
	mov.l @(loc_8c1B39DC,pc),r4 ; r4 set to 0x8C34B2D8
	jmp @r2
	mov.l @r15+,r14

loc_8c1B3852:
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1B3856:
	mov.l r14,@-r15
	mov 0x01,r3
	mov.l @(0x188,PC),r14
	sts.l pr,@-r15
	mov.b @r14,r4
	extu.b r4,r4
	tst r4,r3
	bf loc_8c1b38b2
	mov 0x02,r1
	tst r1,r4
	bf loc_8c1b3874
	lds.l @r15+,pr
	mov.l @(0x168,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c1B3874:
	mov.l @(0x15C,PC),r4
	mov r4,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b3892
	mov r4,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b389a

loc_8c1B3892:
	lds.l @r15+,pr
	mov 0x05,r4
	bra loc_8c1b3454
	mov.l @r15+,r14

loc_8c1B389a:
	bsr loc_8c1b3aa8
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b38b2
	mov.l @(0x140,PC),r4
	mov.w @r4,r0
	or 0x40,r0
	mov.w r0,@r4
	mov.b @r14,r0
	or 0x01,r0
	mov.b r0,@r14

loc_8c1B38b2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1B38b8:
	mov.l @(0x130,PC),r4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1b38ca
	mov.b @r4,r0
	or 0x04,r0
	bra loc_8c1b38d4
	mov.b r0,@r4

loc_8c1B38ca:
	mov.l @(0x124,PC),r3
	mov 0x00,r2
	mov.b r2,@r3
	bra loc_8c1b3454
	mov 0x0C,r4

loc_8c1B38d4:
	rts
	nop

;==============================================
loc_8c1B38D8:
	mov.l r14,@-r15
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8c1B39E4,pc),r14 ; r14 set to 0x8C34B2CA
	sts.l pr,@-r15
	mov.b @r14,r4
	extu.b r4,r4
	tst r4,r3
	bf loc_8c1B3918
	mov 0x02,r1 ; r1 set to 0x02
	tst r1,r4
	bt loc_8c1B38F6
	lds.l @r15+,pr
	mov 0x05,r4 ; r4 set to 0x05
	bra loc_8c1B3454
	mov.l @r15+,r14

loc_8c1b38f6:
	bsr loc_8c1b3aa8
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b3918
	mov.l @(loc_8C1B39F4,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1b3912
	mov.l @(loc_8C1B39E8,pc),r4
	mov.w @r4,r0
	or 0x40,r0
	mov.w r0,@r4

loc_8c1b3912:
	mov.b @r14,r0
	or 0x01,r0
	mov.b r0,@r14

loc_8c1B3918:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1b391e:
	mov.l r14,@-r15
	mov 0x01,r3
	mov.l @(0xC0,PC),r14
	sts.l pr,@-r15
	mov.b @r14,r4
	extu.b r4,r4
	tst r4,r3
	bf loc_8c1b3984
	mov 0x02,r1
	tst r1,r4
	bf loc_8c1b393c
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c1b393c:
	mov.l @(0x94,PC),r4
	mov r4,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b395a
	mov r4,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b3962

loc_8c1b395a:
	lds.l @r15+,pr
	mov 0x05,r4
	bra loc_8c1b3454
	mov.l @r15+,r14

loc_8c1b3962:
	bsr loc_8c1b3aa8
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b3984
	mov.l @(0x84,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1b397e
	mov.l @(0x70,PC),r4
	mov.w @r4,r0
	or 0x40,r0
	mov.w r0,@r4

loc_8c1b397e:
	mov.b @r14,r0
	or 0x01,r0
	mov.b r0,@r14

loc_8c1b3984:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B398A:
	mov.l @(0x58,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x01,r0
	bf loc_8c1b39a8
	bsr loc_8c1b3aa8
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b39ae
	mov.l @(0x44,PC),r4
	mov.w @r4,r0
	and 0x71,r0
	mov.w r0,@r4

loc_8c1B39A8:
	mov 0x09,r4
	bra loc_8c1b3454
	lds.l @r15+,pr

loc_8c1B39AE:
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c1b39b4:
	mov.l @(0x40,PC),r3
	bra loc_8c1b3454
	mov.b @r3,r4

;==============================================
;unused?
loc_8c1b39ba:
	mov.l @(0x28,PC),r2
	mov.b @r2,r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c1b39c8
	bra loc_8c1b3454
	mov 0x09,r4

loc_8c1b39c8:
	mov.l @(0x30,PC),r4
	mov.l @(0x34,PC),r3
	mov.b @r4,r4
	jmp @r3
	extu.b r4,r4


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1b39d4:
	#data 0x8C34B288
loc_8c1B39D8:
	#data loc_8c1B3DE0
loc_8c1B39DC:
	#data 0x8C34B2D8
loc_8c1B39E0:
	#data loc_8c1B3EEC
loc_8c1B39E4:
	#data 0x8C34B2CA
loc_8c1b39e8:
	#data 0x8C34B2C8
loc_8c1b39ec:
	#data 0x8C34B2A3
loc_8c1b39f0:
	#data 0x8C34B302
loc_8c1b39f4:
	#data 0x8C34B2B0
loc_8c1b39f8:
	#data 0x8C34B309
loc_8c1b39fc:
	#data 0x8C34B2E3
loc_8c1B3A00:
	#data bank1a.loc_8c1a0E82

;==============================================
loc_8c1B3A04:
	mov.l @(0x194,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b3a14
	bsr loc_8c1b3a1a
	nop

loc_8c1B3A14:
	mov 0x09,r4
	bra loc_8c1b3454
	lds.l @r15+,pr

loc_8c1B3A1A:
	mov.l @(0x180,PC),r4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1b3a2e
	mov.b @r4,r0
	mov.l @(0x178,PC),r2
	and 0xFB,r0
	jmp @r2
	mov.b r0,@r4

loc_8c1B3A2E:
	rts
	nop

;==============================================
loc_8c1B3A32:
	mov.l @(0x168,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b3a42
	bsr loc_8c1b3a48
	nop

loc_8c1B3A42:
	mov 0x09,r4
	bra loc_8c1b3454
	lds.l @r15+,pr

;==============================================
loc_8c1B3A48:
	mov.l @(0x150,PC),r4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c1b3a5e
	mov.b @r4,r0
	or 0x04,r0
	mov.b r0,@r4
	mov.l @(0x148,PC),r2
	jmp @r2
	mov 0x07,r4

loc_8c1B3A5E:
	rts
	nop

;==============================================
;unused?
loc_8c1b3a62:
	mov.l @(0x138,PC),r4
	mov 0x03,r3
	mov.b @r4,r5
	extu.b r5,r5
	tst r5,r3
	bt loc_8c1b3a9e
	mov 0x01,r1
	tst r1,r5
	bf loc_8c1b3a88
	mov.l @(0x130,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b3a88
	mov.l @(0x12C,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b3a9a

loc_8c1b3a88:
	mov.l @(0x124,PC),r2
	mov 0x00,r5
	mov.b r5,@r2
	mov.l @(0x124,PC),r3
	mov.b r5,@r3
	mov.b @r4,r0
	or 0x20,r0
	bra loc_8c1b3aa4
	mov.b r0,@r4

loc_8c1b3a9a:
	bra loc_8c1b3454
	mov 0x05,r4

loc_8c1b3a9e:
	mov.l @(0x118,PC),r3
	jmp @r3
	nop

loc_8c1b3aa4:
	rts
	nop

;==============================================
loc_8c1B3AA8:
	mov.l @(0x110,PC),r6
	mov 0x00,r1
	sts.l pr,@-r15
	mov 0x00,r0
	add r6,r1
	mov r0,r7
	mov 0x1D,r4
	mov r0,r5

loc_8c1B3AB8:
	add 0x01,r5
	mov.b @r1+,r3
	extu.b r5,r2
	cmp/gt r4,r2
	add r3,r7
	bf loc_8c1b3ab8
	extu.b r7,r7
	tst r7,r7
	bt loc_8c1b3ad4
	bsr loc_8c1b3454
	mov 0x01,r4
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c1B3AD4:
	mov.l @(0xE8,PC),r1
	mov r0,r5

loc_8c1B3AD8:
	extu.b r5,r7
	mov r7,r0
	nop
	add 0x01,r5
	mov.b @(r0,r6),r3
	extu.b r5,r2
	cmp/ge r4,r2
	mov.b r3,@(r0,r1)
	bf loc_8c1b3ad8
	bsr loc_8c1b3af6
	nop
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B3AF6:
	mov.l r14,@-r15
	mov.l @(0xC4,PC),r6
	mov.l @(0xA0,PC),r14
	mov.b @r6,r0
	sts.l pr,@-r15
	and 0x0F,r0
	mov.l @(0xC0,PC),r4
	mov r0,r7
	mov.b @r14,r0
	extu.b r7,r5
	extu.b r0,r0
	shll r5
	tst 0x02,r0
	bt loc_8c1b3b1c
	mov.l @(0xB4,PC),r0
	mov.w @(r0,r5),r3
	mov.w r3,@r4
	bra loc_8c1b3b22
	nop

loc_8c1B3B1C:
	mov.l @(0xAC,PC),r0
	mov.w @(r0,r5),r3
	mov.w r3,@r4

loc_8c1B3B22:
	mov.b @(0xA,r6),r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1b3b4a
	mov.l @(0x98,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c1b3b4a
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x0C,r0
	bt loc_8c1b3b4a
	mov.w @r4,r2
	mov.l @(0x90,PC),r3
	and r3,r2
	mov.w r2,@r4
	mov.w @r4,r0
	or 0x10,r0
	mov.w r0,@r4

loc_8c1B3B4A:
	add 0x1C,r6
	mov.b @r6,r3
	mov 0x01,r2
	extu.b r3,r3
	cmp/gt r2,r3
	bt loc_8c1b3b6c
	mov.w @r4,r0
	or 0x20,r0
	mov.w r0,@r4
	mov.w @r4,r1
	mov.l @(0x74,PC),r3
	and r3,r1
	mov.w r1,@r4
	mov.w @r4,r0
	mov.l @(0x70,PC),r1
	and r1,r0
	mov.w r0,@r4

loc_8c1B3B6C:
	mov.l @(0x6C,PC),r3
	mov 0x00,r4
	mov.w r4,@r3
	mov.l @(0x6C,PC),r2
	mov.w r4,@r2
	mov.b @r14,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b3b94
	mov.l @(0x64,PC),r1
	jsr @r1
	nop
	mov.b @r14,r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c1b3b94
	lds.l @r15+,pr
	mov.l @(0x10,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c1B3B94:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B3B9c:
	#data 0x8C34B2CA
loc_8c1B3BA0:
	#data loc_8c1B41F6
loc_8c1B3BA4:
	#data loc_8c1B4252
loc_8c1B3BA8:
	#data 0x8C34B2A3
loc_8c1B3BAc:
	#data 0x8C34B2A5
loc_8c1B3BB0:
	#data 0x8C352F2A
loc_8c1B3BB4:
	#data 0x8C352F2B
loc_8c1B3BB8:
	#data loc_8c1B3DE0
loc_8c1B3BBC:
	#data 0x8C34B2E3
loc_8c1B3BC0:
	#data 0x8C34B2A9
loc_8c1B3BC4:
	#data 0x8C34B2C8
loc_8c1B3BC8:
	#data bank1c.loc_8c1c8468
loc_8c1B3BCC:
	#data bank1c.loc_8c1c8448
loc_8c1B3Bd0:
	#data 0x0000FFFE
loc_8c1B3Bd4:
	#data 0x0000FFFB
loc_8c1B3Bd8:
	#data 0x0000FF7D
loc_8c1B3Bdc:
	#data 0x8C34B2D2
loc_8c1B3BE0:
	#data 0x8C34B2D0
loc_8c1B3BE4:
	#data loc_8c1B40B6

;==============================================
loc_8c1B3BE8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l @(0xBC,PC),r4
	sts.l pr,@-r15
	mov r4,r3
	mov.w @(0xAE,PC),r5
	add 0x1B,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r5,r2
	bf loc_8c1b3c84
	mov r4,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x30,r0
	bf loc_8c1b3c84
	mov r4,r2
	add 0x1C,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r5,r3
	bf loc_8c1b3c84
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x12,r4
	mov.l @(0x90,PC),r13
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	tst 0x06,r0
	bf loc_8c1b3c42
	mov.l @(0x8C,PC),r2
	jsr @r2
	nop
	mov.l @(0x88,PC),r3
	jsr @r3
	nop
	mov.l @(0x88,PC),r2
	jsr @r2
	nop
	mov.l @(0x84,PC),r3
	jsr @r3
	nop

loc_8c1B3C42:
	mov.w @(0x62,PC),r3
	extu.w r14,r2
	cmp/hs r3,r2
	bf loc_8c1b3c5e
	mov.l @(0x7C,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1b3c5e
	lds.l @r15+,pr
	mov.l @(0x74,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1B3C5E:
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	tst 0x08,r0
	bf.s loc_8c1b3c6a
	mov.b @(0x1,r13),r0
	mov 0x1E,r14

loc_8c1B3C6A:
	mov 0x04,r5
	extu.b r0,r0
	tst r0,r5
	bt.s loc_8c1b3c78
	mov r14,r4
	bra loc_8c1b3c7a
	mov 0x01,r5

loc_8c1B3C78:
	mov 0x00,r5

loc_8c1B3C7A:
	lds.l @r15+,pr
	mov.l @(0x50,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1B3C84:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B3C8C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c1B3CD4,pc),r4 ; r4 set to 0x8C34B2AA
	sts.l pr,@-r15
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x01,r0
	bf loc_8c1B3CD8
	lds.l @r15+,pr
	mov.l @(loc_8c1B3CB0,pc),r2 ; r2 set to 0x8C1B3454
	mov 0x11,r4 ; r4 set to 0x11
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b3ca6:
	#data 0x0080
loc_8c1b3ca8:
	#data 0x00A0
	#align4

loc_8c1B3Cac:
	#data 0x8C34B288
loc_8c1B3CB0:
	#data loc_8c1B3454
loc_8c1B3CB4:
	#data 0x8C34B2A9
loc_8c1B3CB8:
	#data bank1a.loc_8c1a0434
loc_8c1B3CBC:
	#data bank1a.loc_8c1a048C
loc_8c1B3CC0:
	#data loc_8c1B6048
loc_8c1B3CC4:
	#data loc_8c1B6118
loc_8c1B3CC8:
	#data 0x8C34B2C2
loc_8c1B3CCC:
	#data loc_8c1B374E
loc_8c1B3CD0:
	#data bank1a.loc_8c1a0E8A
loc_8c1B3CD4:
	#data 0x8C34B2AA


;==============================================
loc_8c1b3cd8:
	tst 0x08,r0
	bf loc_8c1b3cde
	mov 0x1E,r14

loc_8c1b3cde:
	mov.l @(loc_8C1B3DB8,pc),r6
	mov.w @(loc_8C1B3DB6,pc),r7
	mov r6,r2
	add 0x1B,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r7,r3
	bf/s loc_8c1b3d46
	mov r6,r5
	mov r5,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1b3d46
	mov r5,r2
	add 0x1C,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r7,r3
	bf loc_8c1b3d46
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x06,r0
	bf loc_8c1b3d2a
	mov.l @(loc_8c1b3dbc,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8c1b3dc0,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8c1b3dc4,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8c1b3dc8,pc),r3
	jsr @r3
	nop

loc_8c1b3d2a:
	mov.l @(loc_8C1B3DCC,pc),r0
	mov 0x04,r5
	mov.b @r0,r0
	extu.b r0,r0
	tst r0,r5
	bt/s loc_8c1b3d3c
	mov r14,r4
	bra loc_8c1b3d3e
	mov 0x01,r5

loc_8c1b3d3c:
	mov 0x00,r5

loc_8c1b3d3e:
lds.l @r15+,pr
	mov.l @(loc_8c1b3dd0,pc),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c1b3d46:
	mov.l @(loc_8C1B3DD4,pc),r5
	bra loc_8c1b3d54
	mov 0x00,r4

loc_8c1b3d4c:
	extu.b r4,r0
	cmp/eq 0x03,r0
	bt loc_8c1b3d70
	add 0x01,r4
	
loc_8c1b3d54:
	extu.b r4,r0
	shll r0
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r3,r3
	bf loc_8c1b3d4c
	extu.b r4,r0
	mov r6,r3
	shll r0
	add 0x19,r3
	mov.w r14,@(r0,r5)
	mov.b @r3,r0
	or 0x08,r0
	mov.b r0,@r3

loc_8c1b3d70:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b3d76:
	mov.l @(0x5C,PC),r4
	add 0xFC,r15
	mov r4,r5
	mov r5,r6
	add 0x04,r6
	mov.w @r5,r3
	mov r5,r7
	add 0x02,r7
	mov.w r3,@r15
	mov.w @r7,r3
	mov.w r3,@r5
	mov.w @r6,r2
	mov.w r2,@r7
	mov r5,r7
	add 0x06,r7
	mov.w @r7,r3
	mov 0x00,r2
	mov.w r3,@r6
	mov.w r2,@r7
	mov.w @r5,r3
	tst r3,r3
	bf loc_8c1b3daa
	mov.l @(0x34,PC),r3
	mov.b @r3,r0
	and 0xF7,r0
	mov.b r0,@r3

loc_8c1b3daa:
	mov.w @r15,r0
	rts
	add 0x04,r15

;==============================================
loc_8c1B3DB0:
	mov.l @(loc_8c1B3DDC,pc),r3 ; r3 set to 0x8C1B3454
	jmp @r3
	mov 0x10,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b3db6:
	#data 0x0080
	#align4

loc_8c1b3db8:
	#data 0x8C34B288
loc_8c1B3DBC:
	#data bank1a.loc_8c1a0434
loc_8c1B3DC0:
	#data bank1a.loc_8c1a048C
loc_8c1B3DC4:
	#data loc_8c1B6048
loc_8c1B3DC8:
	#data loc_8c1B6118
loc_8c1b3dcc:
	#data 0x8C34B2AA
loc_8c1B3DD0:
	#data loc_8c1B6660
loc_8c1b3dd4:
	#data 0x8C352EB8
loc_8c1b3dd8:
	#data 0x8C34B2A1
loc_8c1B3DDC:
	#data loc_8c1B3454

;==============================================
loc_8c1B3DE0:
	mov 0x04,r2 ; r2 set to 0x04
	mov.l @(loc_8c1B3EB0,pc),r3 ; r3 set to 0x8C34B2C8
	sts.l pr,@-r15
	mov 0x00,r4 ; r4 set to 0x00
	mov.w r4,@r3 ; r3 ??
	mov.l @(loc_8c1B3EB4,pc),r5 ; r5 set to 0x8C34B2CA
	mov.b r2,@r5 ; r5 ??
	mov.l @(loc_8c1B3EB8,pc),r5 ; r5 set to 0x8C34B288
	mov r5,r2 ; r2 set to 0x8C34B288
	add 0x1C,r2 ; r2 set to 0x8C34B2A4
	mov.b @r2,r0
	and 0x10,r0
	mov.b r0,@r2 ; r2 ??? bc r0 is ???
	mov r5,r1 ; r1 set to 0x8C34B288
	add 0x1B,r1 ; r1 set to 0x8C34B2A3
	mov.b r4,@r1 ; r1 ??
	add 0x1D,r5 ; r5 set to 0x8C34B2A5
	mov.b r4,@r5 ; r5 ??
	mov.l @(loc_8c1B3EBC,pc),r2 ; r2 set to 0x8C1B4252
	jsr @r2
	mov 0x07,r4 ; r4 set to 0x07
	mov.l @(loc_8c1B3EC0,pc),r3 ; r3 set to 0x8C1B4156
	jsr @r3
	mov 0x07,r4 ; r4 set to 0x07
	mov.l @(loc_8c1B3EC8,pc),r1 ; r1 set to 0x8C1A0434
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8c1B3EC4,pc),r3 ; r3 set to 0x8C34B2C6
	jsr @r1
	mov.b r2,@r3 ; r3 ??
	mov.l @(loc_8c1B3ECC,pc),r3 ; r3 set to 0x8C1A048C
	jsr @r3
	nop
	mov.l @(loc_8c1B3ED0,pc),r1 ; r1 set to 0x8C1B6048
	jsr @r1
	nop
	mov.l @(loc_8c1B3ED4,pc),r3 ; r3 set to 0x8C1B6118
	jsr @r3
	nop
	mov.l @(loc_8c1B3ED8,pc),r2 ; r2 set to 0x8C1B3454
	mov 0x06,r4 ; r4 set to 0x06
	jmp @r2
	lds.l @r15+,pr

loc_8c1B3E34:
	mov.l @(loc_8c1B3EDC,pc),r4 ; r4 set to 0x8C34B2E0
	mov 0x64,r2 ; r2 set to 0x64
	mov.b @r4,r3
	add 0x01,r3
	mov.b r3,@r4 ; r4 ??? bc r3 is ???
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c1B3EA8
	mov 0x00,r6 ; r6 set to 0x00
	mov.b r6,@r4
	mov.l @(loc_8c1B3EB4,pc),r4 ; r4 set to 0x8C34B2CA
	mov.l @(loc_8c1B3EE0,pc),r7 ; r7 set to 0x8C34B2A9
	mov.b @r4,r0
	mov.l @(loc_8c1B3EE4,pc),r5 ; r5 set to 0x8C34B2D0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1B3E5A
	bra loc_8c1B3E80
	mov.w r6,@r5

loc_8c1b3e5a:
	mov.w @r5,r3
	add 0x01,r3
	mov.w r3,@r5
	mov.b @(0x04,r7),r0
	mov.w @(loc_8C1B3EAC,pc),r6
	extu.b r0,r0
	and r0,r6
	tst r6,r6
	bt loc_8c1b3e80
	mov 0x3C,r1
	mov.w @r5,r3
	mul.l r1,r6
	extu.w r3,r3
	sts macl,r1
	cmp/gt r3,r1
	bt loc_8c1b3e80
	mov.b @r4,r0
	or 0x08,r0
	mov.b r0,@r4

loc_8c1b3e80:
	mov.l @(loc_8C1B3EE8,pc),r5
	mov 0x07,r6
	mov.w @r5,r3
	add 0x01,r3
	mov.w r3,@r5
	mov.b @(0x03,r7),r0
	extu.b r0,r0
	and r0,r6
	tst r6,r6
	bt loc_8c1b3ea8
	mov 0x3C,r2
	mov.w @r5,r3
	mul.l r2,r6
	extu.w r3,r3
	sts macl,r2
	cmp/gt r3,r2
	bt loc_8c1b3ea8
	mov.b @r4,r0
	or 0x08,r0
	mov.b r0,@r4

loc_8c1B3EA8:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b3eac:
	#data 0xFF7F
	#align4

loc_8c1B3EB0:
	#data 0x8C34B2C8
loc_8c1B3EB4:
	#data 0x8C34B2CA
loc_8c1B3EB8:
	#data 0x8C34B288
loc_8c1B3EBC:
	#data loc_8c1B4252
loc_8c1B3EC0:
	#data loc_8c1B4156
loc_8c1B3EC4:
	#data 0x8C34B2C6
loc_8c1B3EC8:
	#data bank1a.loc_8c1a0434
loc_8c1B3ECC:
	#data bank1a.loc_8c1a048C
loc_8c1B3ED0:
	#data loc_8c1B6048
loc_8c1B3ED4:
	#data loc_8c1B6118
loc_8c1B3ED8:
	#data loc_8c1B3454
loc_8c1B3EDC:
	#data 0x8C34B2E0
loc_8c1B3EE0:
	#data 0x8C34B2A9
loc_8c1B3EE4:
	#data 0x8C34B2D0
loc_8c1b3ee8:
	#data 0x8C34B2D2

;==============================================
loc_8c1B3EEC:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	bsr loc_8c1B3F0C
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1B3FE4,pc),r0 ; r0 set to 0x8C34B2CC
	mov.l @r15,r3
	mov.l @(0x04,r15),r2
	add 0x08,r15
	mov.l @r0,r1
	lds.l @r15+,pr
	add r3,r1
	mov.l r1,@r2
	rts
	nop

;==============================================
loc_8c1B3F0C:
	sts.l pr,@-r15
	mov.l @(loc_8c1B3FE8,pc),r3 ; r3 set to 0x8C1A02CC
	add 0xFC,r15
	jsr @r3
	mov.l r4,@r15
	mov.l @(loc_8c1B3FE4,pc),r2 ; r2 set to 0x8C34B2CC
	mov.l r0,@r2 ; r2 ??? bc r0 is ???
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	add 0x04,r15
	lds.l @r15+,pr
	cmp/hi r0,r3
	movt r0
	rts
	xor 0x01,r0

;==============================================
;unused?
loc_8c1b3f28:
	mov.l @(0xB8,PC),r0
	mov.l @r0,r2
	rts
	mov.l r2,@r4

;==============================================
;unused
loc_8c1b3f30:
	mov.l @(0xB0,PC),r1
	mov.l @r1,r3
	sub r4,r3
	rts
	mov r3,r0

;==============================================
loc_8c1B3F3A:
	mov.l r14,@-r15
	mov 0x20,r3 ; r3 set to 0x20
	mov.l @(loc_8c1B3FEC,pc),r4 ; r4 set to 0x8C34B2CA
	sts.l pr,@-r15
	mov.b @r4,r6
	extu.b r6,r6
	tst r6,r3
	bt loc_8c1B3F52
	mov.b @r4,r0
	and 0xDF,r0
	bra loc_8c1B3FD8
	mov.b r0,@r4

loc_8c1b3f52:
	mov.l @(loc_8C1B3FF0,pc),r2
	mov.w @(loc_8C1B3FDE,pc),r3
	mov.w @r2,r14
	extu.w r14,r14
	tst r14,r3
	bt loc_8c1b3f8c
	mov.l @(loc_8C1B3FF4,pc),r5
	mov 0x10,r7
	tst r7,r6
	bt loc_8c1b3f9c
	mov.b @r5,r0
	and 0x0F,r0
	mov r0,r6
	extu.b r6,r5
	mov r5,r0
	nop
	cmp/eq 0x02,r0
	bt loc_8c1b3f86
	mov r5,r0
	nop
	cmp/eq 0x04,r0
	bt loc_8c1b3f86
	mov r5,r0
	nop
	cmp/eq 0x05,r0
	bf loc_8c1b3f94

loc_8c1b3f86:
	mov.b @r4,r0
	and 0xEF,r0
	mov.b r0,@r4

loc_8c1b3f8c:
	lds.l @r15+,pr
	mov.l @(loc_8c1b3ff8,pc),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c1b3f94:
	bsr loc_8c1b4156
	mov 0x00,r4
	bra loc_8c1b3fd8
	nop

loc_8c1b3f9c:
	mov.w @(loc_8C1B3FE0,pc),r1
	tst r14,r1
	bf loc_8c1b3fb0
	mov 0x40,r0
	tst r14,r0
	bf loc_8c1b3fbe
	mov.b @(0x09,r5),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b3fbe

loc_8c1b3fb0:
	mov.l @(loc_8C1B3FFC,pc),r3
	mov 0x00,r2
	mov 0x02,r1
	mov.b r2,@r3
	mov.l @(loc_8C1B4000,pc),r0
	bra loc_8c1b4008
	mov.b r1,@r0

loc_8c1b3fbe:
	tst r14,r7
	bt loc_8c1b3fd8
	mov.b @(0x06,r5),r0
	mov.l @(loc_8C1B4004,pc),r4
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1b3fd2
	mov.b @r4,r0
	bra loc_8c1b3fd6
	or 0x40,r0

loc_8c1b3fd2:
	mov.b @r4,r0
	or 0x80,r0

loc_8c1b3fd6:
	mov.b r0,@r4

loc_8c1B3FD8:
	lds.l @r15+,pr
	bra loc_8c1B400E
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b3fde:
	#data 0x0717
loc_8c1b3fe0:
	#data 0x0080
	#align4

loc_8c1B3FE4:
	#data 0x8C34B2CC
loc_8c1B3FE8:
	#data bank1a.loc_8c1a02CC
loc_8c1B3FEC:
	#data 0x8C34B2CA
loc_8c1b3ff0:
	#data 0x8C34B2C8
loc_8c1b3ff4:
	#data 0x8C34B2A9
loc_8c1B3FF8:
	#data loc_8c1B3DE0
loc_8c1b3ffc:
	#data 0x8C34CF58
loc_8c1b4000:
	#data 0x8C34B2C6
loc_8c1b4004:
	#data 0x8C34B2A4

;==============================================
loc_8c1B4008:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b400e:
	mov.l r14,@-r15
	mov.l @(loc_8c1b4108,pc),r14
	sts.l pr,@-r15
	mov r14,r5
	add 0x1D,r5
	mov.b @r5,r0
	and 0xEF,r0
	mov.b r0,@r5
	mov.l @(loc_8C1B4110,pc),r0
	mov.l @(loc_8C1B410C,pc),r4
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1b404e
	mov r14,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1b4048
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1b4048
	mov.l @(loc_8C1B4114,pc),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1b404e
	
loc_8c1b4048:
	mov.b @r4,r0
	or 0x20,r0
	mov.b r0,@r4
	
loc_8c1b404e:
	mov r14,r3
	add 0x1B,r3
	mov.b @r3,r0
	and 0xF7,r0
	mov.b r0,@r3
	mov.b @r4,r0
	or 0x02,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xFE,r0
	mov.b r0,@r4
	mov r14,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c1b4076
	bsr loc_8c1b40b6
	nop
	
loc_8c1b4076:
	mov.l @(loc_8C1B4118,pc),r4
	mov r14,r1
	mov 0x04,r3
	mov.w @r4,r0
	add 0x1B,r1
	and 0x71,r0
	mov.w r0,@r4
	mov.l @(loc_8C1B411C,pc),r2
	mov.b r3,@r2
	mov.b @r1,r3
	mov.l @(loc_8C1B4120,pc),r0
	mov r14,r1
	add 0x1D,r1
	mov.b r3,@r0
	mov.b @r1,r3
	mov.l @(loc_8C1B4124,pc),r1
	mov.b r3,@r1
	mov r14,r0
	nop
	add 0x1A,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1b40b0
	lds.l @r15+,pr
	mov.l @(loc_8c1b4128,pc),r2
	mov 0x05,r4
	jmp @r2
	mov.l @r15+,r14
	
loc_8c1b40b0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14
	
loc_8c1B40B6:
	mov.l @(loc_8c1B4108,pc),r4 ; r4 set to 0x8C34B288
	mov.w @(loc_8c1B4106,pc),r5 ; r5 set to 0x80
	mov r4,r3 ; r3 set to 0x8C34B288
	add 0x1B,r3 ; r3 set to 0x8C34B2A3
	mov.b @r3,r2
	extu.b r2,r2
	tst r5,r2
	bt loc_8c1B40D2
	mov.l @(loc_8c1B412C,pc),r3 ; r3 set to 0x8C352E5F
	mov.b @r3,r1
	tst r1,r1
	bt loc_8c1B40E8
	bra loc_8c1B4102
	mov 0x09,r4
	
loc_8c1B40D2:
	mov r4,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1B40F2
	mov.l @(loc_8c1B4130,pc),r3 ; r3 set to 0x8C352F05
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1B40EC
	
loc_8c1B40E8:
	bra loc_8c1B40EE
	mov 0x08,r4
	
loc_8c1B40EC:
	mov 0x65,r4 ; r4 set to 0x65
	
loc_8c1B40EE:
	bra loc_8c1B4156
	nop
	
loc_8c1B40F2:
	mov r4,r0
	nop
	add 0x1C,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1B4134
	mov 0x03,r4 ; r4 set to 0x03
	
loc_8c1B4102:
	bra loc_8c1B4156
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B4106:
	#data 0x0080
	#align4

loc_8c1B4108:
	#data 0x8C34B288
loc_8c1b410c:
	#data 0x8C34B2CA
loc_8c1b4110:
	#data 0x8C34B2B4
loc_8c1b4114:
	#data 0x8C352E8D
loc_8c1b4118:
	#data 0x8C34B2C8
loc_8c1b411c:
	#data 0x8C34B2C6
loc_8c1b4120:
	#data 0x8C34B2E1
loc_8c1b4124:
	#data 0x8C34B2E2
loc_8c1B4128:
	#data loc_8c1B3454
loc_8c1B412C:
	#data 0x8C352E5F
loc_8c1B4130:
	#data 0x8C352F05

;==============================================
loc_8c1B4134:
	add 0x1C,r4
	mov.b @r4,r2
	extu.b r2,r2
	tst r5,r2
	bt loc_8c1B4152
	mov.l @(loc_8c1B4214,pc),r1 ; r1 set to 0x8C34B2AF
	mov.b @r1,r3
	extu.b r3,r3
	tst r5,r3
	bt loc_8c1B414C
	bra loc_8c1B414E
	mov 0x02,r4

loc_8c1B414C:
	mov 0x01,r4 ; r4 set to 0x01

loc_8c1B414E:
	bra loc_8c1B4156
	nop

loc_8c1B4152:
	bra loc_8c1B4156
	mov 0x00,r4

loc_8c1B4156:
	mov.l r14,@-r15
	extu.b r4,r6
	mov.l r13,@-r15
	tst r6,r6
	mov.l r12,@-r15
	mov.l @(loc_8c1B4218,pc),r14 ; r14 set to 0x8C34B2A9
	sts.l pr,@-r15
	mov r14,r3 ; r3 set to 0x8C34B2A9
	add 0x1C,r3 ; r3 set to 0x8C34B2C5
	mov.b @r3,r2
	add 0xFC,r15
	mov.b r2,@r15
	bf/s loc_8c1B41A8
	mov 0x00,r5 ; r5 set to 0x00
	mov r14,r6 ; r6 set to 0x8C34B2A9
	add 0x0B,r6 ; r6 set to 0x8C34B2B4
	mov.b @r6,r0
	mov 0x10,r12 ; r12 set to 0x10
	mov r5,r13 ; r13 set to 0x00
	extu.b r0,r0
	tst 0x40,r0
	bt/s loc_8c1B419C
	mov 0x04,r7 ; r7 set to 0x04
	mov.l @(loc_8c1B421C,pc),r0 ; r0 set to 0x8C34B2A5
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x10,r0
	bf loc_8c1B419C
	mov.b @r6,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1B419A
	bra loc_8c1B419C
	mov r7,r13

loc_8c1b419a:
	mov 0x02,r13

loc_8c1B419C:
	mov.b @(0x01,r14),r0
	extu.b r0,r0
	tst r7,r0
	bt loc_8c1B41CA
	bra loc_8c1B41CC
	mov 0x01,r6

loc_8c1B41A8:
	mov r6,r0
	nop
	cmp/eq 0x65,r0
	bf loc_8c1B41B6
	mov.w @(loc_8c1B420E,pc),r12 ; r12 set to 0xFE
	bra loc_8c1B41C8
	mov r5,r4

loc_8c1B41B6:
	cmp/eq 0x64,r0
	bf loc_8c1B41C0
	mov.w @(loc_8c1B4210,pc),r12 ; r12 set to 0xFF
	bra loc_8c1B41C8
	mov r5,r4

loc_8c1B41C0:
	mov 0x06,r0 ; r0 set to 0x06
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	and 0x18,r0
	mov r0,r12

loc_8c1B41C8:
	mov r5,r13

loc_8c1B41CA:
	mov r5,r6

loc_8c1B41CC:
	mov 0x0F,r0 ; r0 set to 0x0F, r0 set to 0x0F, r0 set to 0x0F, r0 set to 0x0F
	mov.l r6,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	mov r13,r7
	mov r12,r6
	and 0x7F,r0
	mov.l r0,@-r15
	mov 0x0E,r0 ; r0 set to 0x0E, r0 set to 0x0E, r0 set to 0x0E, r0 set to 0x0E
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	and 0x7F,r0
	mov.l r0,@-r15
	mov.b @(0x0C,r15),r0
	mov.l @(loc_8c1B4220,pc),r3 ; r3 set to 0x8C1B646E, r3 set to 0x8C1B646E, r3 set to 0x8C1B646E, r3 set to 0x8C1B646E
	jsr @r3
	mov r0,r5
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B41F6:
	mov.l @(loc_8c1B4224,pc),r3 ; r3 set to 0x8C34B2CA
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c1B424E
	mov.l @(loc_8c1B4228,pc),r4 ; r4 set to 0x8C34B2A4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1B422C
	bra loc_8c1B4252
	mov 0x03,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B420E:
	#data 0x00FE
loc_8c1B4210:
	#data 0x00FF
	#align4

loc_8c1B4214:
	#data 0x8C34B2AF
loc_8c1B4218:
	#data 0x8C34B2A9
loc_8c1B421C:
	#data 0x8C34B2A5
loc_8c1B4220:
	#data loc_8c1B646E
loc_8c1B4224:
	#data 0x8C34B2CA
loc_8c1B4228:
	#data 0x8C34B2A4

;==============================================
loc_8c1B422C:
	mov.w @(loc_8c1B4306,pc),r5 ; r5 set to 0x80
	mov.b @r4,r2
	extu.b r2,r2
	tst r5,r2
	bt loc_8c1B424A
	mov.l @(loc_8c1B4308,pc),r0 ; r0 set to 0x8C34B2AF
	mov.b @r0,r2
	extu.b r2,r2
	tst r5,r2
	bt loc_8c1B4244
	bra loc_8c1B4246
	mov 0x02,r4

loc_8c1B4244:
	mov 0x01,r4 ; r4 set to 0x01

loc_8c1B4246:
	bra loc_8c1B4252
	nop

loc_8c1B424A:
	bra loc_8c1B4252
	mov 0x00,r4

loc_8c1B424E:
	rts
	nop

;==============================================
loc_8c1b4252:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8C1B430C,pc),r14
	sts.l pr,@-r15
	mov r14,r12
	add 0x1C,r12
	add 0xFC,r15
	mov.b r4,@r15
	mov.b @r12,r12
	extu.b r12,r3
	tst r3,r3
	bf/s loc_8c1b4274
	mov 0x02,r7
	mov r7,r12

loc_8c1b4274:
	mov.b @r15,r4
	mov r14,r6
	mov 0x00,r5
	extu.b r4,r4
	tst r4,r4
	bf/s loc_8c1b42ea
	add 0x06,r6
	mov r14,r0
	nop
	add 0x19,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bf/s loc_8c1b4298
	mov.b @r6,r0
	mov r14,r12
	add 0x1B,r12
	mov.b @r12,r12

loc_8c1b4298:
	and 0x3F,r0
	mov r0,r11
	mov.b @(0x05,r14),r0
	mov 0x04,r6
	extu.b r0,r0
	and 0xE0,r0
	cmp/eq 0x00,r0
	bt/s loc_8c1b42c0
	mov 0x01,r4
	cmp/eq 0x20,r0
	bt loc_8c1b42c4
	cmp/eq 0x40,r0
	bt loc_8c1b42d4
	cmp/eq 0x60,r0
	bt loc_8c1b42d8
	mov.w @(loc_8c1b4306,pc),r1
	cmp/eq r1,r0
	bt loc_8c1b42dc
	bra loc_8c1b42de
	nop

loc_8c1b42c0:
	bra loc_8c1b42de
	mov r5,r13

loc_8c1b42c4:
	mov.b @(0x0B,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1b42d0
	bra loc_8c1b42de
	mov r6,r13

loc_8c1b42d0:
	bra loc_8c1b42de
	mov r7,r13

loc_8c1b42d4:
	bra loc_8c1b42de
	mov 0x05,r13

loc_8c1b42d8:
	bra loc_8c1b42de
	mov r4,r13

loc_8c1b42dc:
	mov 0x03,r13

loc_8c1b42de:
	mov.b @(0x01,r14),r0
	extu.b r0,r0
	tst r6,r0
	bt loc_8c1b4316
	bra loc_8c1b4318
	mov r4,r10

loc_8c1b42ea:
	mov.b @r6,r0
	and 0x18,r0
	mov r0,r11
	mov r4,r0
	nop
	cmp/eq 0x07,r0
	bf loc_8c1b4314
	mov.l @(loc_8C1B4310,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1b4314
	bra loc_8c1b4316
	mov 0x05,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b4306:
	#data 0x0080
	#align4

loc_8c1b4308:
	#data 0x8C34B2AF
loc_8C1B430C:
	#data 0x8C34B2A9
loc_8C1B4310:
	#data 0x8C34B2AD

;==============================================
loc_8c1b4314:
	mov r5,r13
	
loc_8c1b4316:
	mov r5,r10
	
loc_8c1b4318:
	mov.l r10,@-r15
	mov r14,r1
	mov.b @(0x0D,r14),r0
	add 0x10,r1
	mov.l r0,@-r15
	mov r0,r3
	mov r14,r3
	add 0x11,r3
	mov.b @(0x0C,r14),r0
	mov.l r0,@-r15
	mov r0,r2
	mov.b @r3,r2
	mov.l r2,@-r15
	mov.b @r1,r3
	mov.l r3,@-r15
	mov.l @(loc_8c1b435c,pc),r2
	jsr @r2
	mov r12,r4
	mov r0,r5
	mov 0x14,r0
	mov.l @(loc_8c1b4360,pc),r3
	mov r11,r6
	mov.b @(r0,r15),r4
	jsr @r3
	mov r13,r7
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1b435c:
	#data bank1a.loc_8c1a0e86
loc_8c1b4360:
	#data bank1a.loc_8c1a06c8

;==============================================
;unused
loc_8c1b4364:
	bsr loc_8c1b4396
	nop

loc_8c1b4368:
	bsr loc_8c1b43e0
	nop
	bra loc_8c1b4368
	nop

;==============================================
loc_8c1b4370:
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r3
	add 0xF8,r15
	mov r15,r4
	mov r15,r5
	jsr @r3
	add 0x04,r4
	mov.w @r15,r2
	tst r2,r2
	bt loc_8c1b438c
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c1b438c:
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B4396:
	mov.l @(loc_8c1B4460,pc),r2 ; r2 set to 0x8C34B0F8
	mov 0x01,r3 ; r3 set to 0x01
	sts.l pr,@-r15
	mov.b r3,@r2 ; r2 ??
	mov.l @(loc_8c1B4464,pc),r3 ; r3 set to 0x8C19FE5C
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1B4468,pc),r2 ; r2 set to 0x8C1B34EE
	jsr @r2
	nop
	mov.l @(loc_8c1B446C,pc),r2 ; r2 set to 0x8C34B2D4
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@r2 ; r2 ??
	mov.l @(loc_8c1B4470,pc),r3 ; r3 set to 0x8C1AEE90
	mov.w @(loc_8c1B445A,pc),r4 ; r4 set to 0xFF
	jsr @r3
	nop
	mov.l @(loc_8c1B4474,pc),r2 ; r2 set to 0x8C1BFAAC
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1B4478,pc),r3 ; r3 set to 0x8C1B3DE0
	jsr @r3
	nop
	mov.l @(loc_8c1B447C,pc),r2 ; r2 set to 0x8C1AFD44
	jsr @r2
	nop
	mov.l @(loc_8c1B4480,pc),r3 ; r3 set to 0x8C1994AC
	jmp @r3
	lds.l @r15+,pr

loc_8c1B43D0:
	mov.l @(loc_8c1B4484,pc),r3 ; r3 set to 0x8C34B28F
	mov.b @r3,r0
	and 0xF7,r0
	mov.b r0,@r3 ; r3 ??? bc r0 is ???
	mov.l @(loc_8c1B4488,pc),r1 ; r1 set to 0x8C34B2C6
	mov 0x08,r2 ; r2 set to 0x08
	rts
	mov.b r2,@r1

;==============================================
loc_8c1B43E0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x01,r9 ; r9 set to 0x01
	mov.l r8,@-r15
	mov r9,r11 ; r11 set to 0x01
	sts.l pr,@-r15
	mov.l @(loc_8c1B448C,pc),r14 ; r14 set to 0x8C34B288
	mov.l @(loc_8c1B4490,pc),r3 ; r3 set to 0x8C1A00E8
	jsr @r3
	add 0x7F,r11 ; r11 set to 0x80
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1B4406
	bra loc_8c1B4796
	nop

loc_8c1B4406:
	mov.l @(loc_8c1B4474,pc),r3 ; r3 set to 0x8C1BFAAC
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8c1B4464,pc),r2 ; r2 set to 0x8C19FE5C
	jsr @r2
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8c1B4488,pc),r8 ; r8 set to 0x8C34B2C6
	mov 0x20,r10 ; r10 set to 0x20
	mov.l @(loc_8c1B4494,pc),r13 ; r13 set to 0x8C34B2CA
	mov.b @r8,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8c1B4498
	mov 0x00,r12 ; r12 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8c1B44AC
	cmp/eq 0x02,r0
	bt loc_8c1B44C4
	cmp/eq 0x03,r0
	bt loc_8c1B44E8
	cmp/eq 0x04,r0
	bf loc_8c1B4436
	bra loc_8c1B4580
	nop

loc_8c1B4436:
	cmp/eq 0x05,r0
	bf loc_8c1B443E
	bra loc_8c1B4608
	nop

loc_8c1B443E:
	cmp/eq 0x06,r0
	bf loc_8c1B4446
	bra loc_8c1B46C8
	nop

loc_8c1B4446:
	cmp/eq 0x07,r0
	bf loc_8c1B444E
	bra loc_8c1B4756
	nop

loc_8c1B444E:
	cmp/eq 0x08,r0
	bf loc_8c1B4456
	bra loc_8c1B4778
	nop

loc_8c1B4456:
	bra loc_8c1B4794
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B445A:
	#data 0x00FF
	#align4

loc_8c1B445C:
	#data bank1a.loc_8c1a0500
loc_8c1B4460:
	#data 0x8C34B0F8
loc_8c1B4464:
	#data bank19.loc_8c19FE5C
loc_8c1B4468:
	#data loc_8c1B34EE
loc_8c1B446C:
	#data 0x8C34B2D4
loc_8c1B4470:
	#data bank1a.loc_8c1aEE90
loc_8c1B4474:
	#data loc_8c1BFAAC
loc_8c1B4478:
	#data loc_8c1B3DE0
loc_8c1B447C:
	#data bank1a.loc_8c1aFD44
loc_8c1B4480:
	#data bank19.loc_8c1994AC
loc_8c1B4484:
	#data 0x8C34B28F
loc_8c1B4488:
	#data 0x8C34B2C6
loc_8c1B448C:
	#data 0x8C34B288
loc_8c1B4490:
	#data bank1a.loc_8c1a00E8
loc_8c1B4494:
	#data 0x8C34B2CA

;==============================================
loc_8c1B4498:
	lds.l @r15+,pr
	mov.l @(loc_8c1B4554,pc),r3 ; r3 set to 0x8C1B3DE0
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1B44AC:
	mov.l @(loc_8c1B4558,pc),r3 ; r3 set to 0x8C34B2D0
	mov.w r12,@r3 ; r3 ??? bc r12 is ???
	mov.l @(loc_8c1B455C,pc),r2 ; r2 set to 0x8C34B2D2
	mov.w r12,@r2 ; r2 ??? bc r12 is ???
	mov.b @r13,r1
	extu.b r1,r1
	tst r9,r1
	bt loc_8c1B44C0
	bra loc_8c1B4722
	nop

loc_8c1B44C0:
	bra loc_8c1B4796
	nop

loc_8c1B44C4:
	mov.l @(loc_8c1B4560,pc),r3 ; r3 set to 0x8C34B0B0
	mov 0x03,r1 ; r1 set to 0x03
	mov.b @r3,r2
	extu.b r2,r2
	cmp/gt r1,r2
	bf loc_8c1B44D4
	bra loc_8c1B4796
	nop

loc_8c1B44D4:
	lds.l @r15+,pr
	mov.l @(loc_8c1B4564,pc),r3 ; r3 set to 0x8C1B8D58
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1B44E8:
	mov r14,r3
	add 0x1B,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r11,r2
	bf loc_8c1B4506
	mov r14,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1B4506
	bra loc_8c1B4764
	nop

loc_8c1b4506:
	bsr loc_8c1b4370
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b4538
	mov.l @(loc_8C1B4568,pc),r2
	mov.w @r2,r3
	tst r3,r3
	bf loc_8c1b4538
	mov.w @(loc_8C1B4552,pc),r4
	mov.l @(loc_8C1B456C,pc),r3
	mov.b r4,@r3
	mov.l @(loc_8C1B4570,pc),r2
	mov.b r4,@r2
	mov.b @r13,r1
	extu.b r1,r1
	tst r10,r1
	bf loc_8c1b4532
	mov.l @(loc_8c1b4578,pc),r1
	mov.l @(loc_8C1B4574,pc),r4
	jsr @r1
	mov 0x64,r5

loc_8c1b4532:
	mov.b @r13,r0
	or 0x20,r0
	mov.b r0,@r13

loc_8c1b4538:
	mov.l @(loc_8c1b457c,pc),r2
	mov.l @(loc_8C1B4574,pc),r3
	jsr @r2
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b4580
	mov.b @r13,r2
	extu.b r2,r2
	tst r10,r2
	bt loc_8c1b4632
	bra loc_8c1b4764
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B4552:
	#data 0x00FF
	#align4

loc_8c1b4554:
	#data loc_8c1b3DE0
loc_8c1b4558:
	#data 0x8C34B2D0
loc_8c1b455c:
	#data 0x8C34B2D2
loc_8c1b4560:
	#data 0x8C34B0B0
loc_8c1b4564:
	#data loc_8c1b8D58
loc_8C1B4568:
	#data 0x8C351784
loc_8C1B456C:
	#data 0x8C352F2A
loc_8C1B4570:
	#data 0x8C352F2B
loc_8C1B4574:
	#data 0x8C34B2D8
loc_8c1b4578:
	#data loc_8c1b3eec
loc_8c1b457c:
	#data loc_8c1b3f0c

;==============================================
loc_8c1B4580:
	mov.l @(loc_8c1B47A8,pc),r1 ; r1 set to 0x8C34B0B0
	mov 0x03,r2 ; r2 set to 0x03
	mov.b @r1,r3
	extu.b r3,r3
	cmp/gt r2,r3
	bf loc_8c1B4590
	bra loc_8c1B4796
	nop

loc_8c1b4590:
	mov.b @r13,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1b45ac
	mov.l @(loc_8c1b47ac,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8C1B47B0,pc),r3
	mov.w r12,@r3
	mov.l @(loc_8C1B47B4,pc),r2
	mov.w r12,@r2
	mov.b @r13,r0
	and 0xF7,r0
	mov.b r0,@r13

loc_8c1b45ac:
	mov.l @(loc_8c1b47b8,pc),r3
	jsr @r3
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b45bc
	bra loc_8c1b4796
	nop

loc_8c1b45bc:
	mov r14,r2
	add 0x1B,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r11,r3
	bf loc_8c1b4644
	mov r14,r2
	add 0x1D,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r10,r3
	bf loc_8c1b467c
	mov r14,r0
	nop
	add 0x1C,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0xC0,r0
	bt loc_8c1b45e6
	bra loc_8c1b4796
	nop

loc_8c1b45e6:
	mov.l @(loc_8C1B47BC,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x0C,r0
	bt loc_8c1b45f4
	bra loc_8c1b4796
	nop

loc_8c1b45f4:
	lds.l @r15+,pr
	mov.l @(loc_8c1b47c0,pc),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c1b4608:
	mov.l @(0x1BC,PC),r3
	mov.l @(0x1B8,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b4622
	mov.l @(0x1B4,PC),r3
	jsr @r3
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b4638

loc_8c1b4622:
	mov.l @(0x1A8,PC),r3
	jsr @r3
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b4632
	bra loc_8c1b4764
	nop

loc_8c1b4632:
	mov.l @(0x19C,PC),r3
	bra loc_8c1b4764
	mov.b r9,@r3

loc_8c1b4638:
	mov r14,r1
	add 0x1B,r1
	mov.b @r1,r3
	extu.b r3,r3
	tst r11,r3
	bt loc_8c1b466c

;==============================================
loc_8c1b4644:
	mov r14,r1
	add 0x1D,r1
	mov.b @r1,r3
	extu.b r3,r3
	tst r11,r3
	bt loc_8c1b4656
	mov.l @(loc_8c1b47d4,pc),r3
	jsr @r3
	mov 0x01,r4

loc_8c1b4656:
	mov.l @(loc_8c1b47d8,pc),r2
	jsr @r2
	nop
	mov r14,r3
	add 0x1D,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r11,r2
	bf loc_8c1b46b2
	bra loc_8c1b4796
	nop

loc_8c1b466c:
	mov r14,r1
	add 0x1D,r1
	mov.b @r1,r3
	extu.b r3,r3
	tst r10,r3
	bf loc_8c1b467c
	bra loc_8c1b4796
	nop

loc_8c1b467c:
	mov r14,r1
	add 0x1D,r1
	mov.b @r1,r3
	extu.b r3,r3
	tst r11,r3
	bt loc_8c1b469a
	mov r14,r1
	add 0x1D,r1
	mov.b @r1,r3
	extu.b r3,r3
	tst r9,r3
	bt loc_8c1b469a
	mov.l @(loc_8c1b47d4,pc),r3
	jsr @r3
	mov 0x01,r4

loc_8c1b469a:
	mov r14,r3
	add 0x1D,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r11,r2
	bt loc_8c1b4796
	mov r14,r1
	add 0x1D,r1
	mov.b @r1,r3
	extu.b r3,r3
	tst r9,r3
	bt loc_8c1b4796

loc_8c1b46b2:
	lds.l @r15+,pr
	mov.l @(loc_8c1b47d4,pc),r3
	mov 0x00,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1b46c8:
	mov.l @(0x110,PC),r2
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b46e2
	mov.l @(0xF0,PC),r3
	mov.l @(0x108,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b4796

loc_8c1b46e2:
	mov r14,r3
	add 0x1C,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r10,r2
	bt.s loc_8c1b46fe
	mov r14,r4
	mov.l @(0xF0,PC),r2
	mov.l @(0xEC,PC),r4
	jsr @r2
	mov 0x0A,r5
	mov 0x07,r3
	bra loc_8c1b4796
	mov.b r3,@r8

loc_8c1b46fe:
	mov r4,r1
	add 0x1D,r1
	mov.b @r1,r3
	extu.b r3,r3
	tst r10,r3
	bt loc_8c1b4736
	mov.l @(0xDC,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bf loc_8c1b4736
	add 0x1B,r4
	mov.b r12,@r4
	mov r14,r2
	add 0x1D,r2
	mov.b r12,@r2
	mov.b @r13,r0
	or 0x01,r0
	mov.b r0,@r13

loc_8c1B4722:
	lds.l @r15+,pr
	mov.l @(loc_8c1B47EC,pc),r3 ; r3 set to 0x8C1B3F3A
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1B4736:
	mov.b @r13,r3
	extu.b r3,r3
	tst r10,r3
	bf loc_8c1b4764
	lds.l @r15+,pr
	mov.l @(0xAC,PC),r1
	mov.b r12,@r1
	mov.l @r15+,r8
	mov.l @(0xAC,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1b4756:
	mov.l @(loc_8c1b47c8,pc),r2
	mov.l @(loc_8C1B47E0,pc),r3
	jsr @r2
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b4796

loc_8c1B4764:
	lds.l @r15+,pr
	mov.l @(loc_8c1B47F8,pc),r2 ; r2 set to 0x8C1B3DE0
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c1B4778:
	mov.b @(0x07,r14),r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1B4796
	lds.l @r15+,pr
	mov.l @(loc_8c1B47FC,pc),r2 ; r2 set to 0x8C1AFA18
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c1b4794:
	mov.b r12,@r8

loc_8c1B4796:
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

loc_8c1B47A8:
	#data 0x8C34B0B0
loc_8c1B47AC:
	#data bank1a.loc_8c1aFB9C
loc_8c1b47b0:
	#data 0x8C34B2D0
loc_8c1b47b4:
	#data 0x8C34B2D2
loc_8c1B47B8:
	#data loc_8c1B9CC0
loc_8c1b47bc:
	#data 0x8C34AF60
loc_8c1B47C0:
	#data loc_8c1B9CFC
loc_8c1B47C4:
	#data 0x8C34B2D8
loc_8c1B47C8:
	#data loc_8c1B3F0C
loc_8c1B47CC:
	#data bank1a.loc_8c1a10A2
loc_8c1B47D0:
	#data 0x8C34B2D4
loc_8c1B47D4:
	#data loc_8c1BCFF0
loc_8c1B47D8:
	#data loc_8c1B9DDC
loc_8c1B47DC:
	#data loc_8c1B6720
loc_8c1b47e0:
	#data 0x8C34B2DC
loc_8c1B47E4:
	#data loc_8c1B3EEC
loc_8c1B47E8:
	#data 0x8C352F2A
loc_8c1B47EC:
	#data loc_8c1B3F3A
loc_8c1B47F0:
	#data 0x8C34B2E3
loc_8c1B47F4:
	#data loc_8c1B374E
loc_8c1B47F8:
	#data loc_8c1B3DE0
loc_8c1B47FC:
	#data bank1a.loc_8c1aFA18

;==============================================
loc_8c1B4800:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l r6,@(0x10,r15)
	mov.l r7,@(0x14,r15)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x08,r15)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x04,r15)
	mov r5,r14
	mov.w @(loc_8c1B4906,pc),r0 ; r0 set to 0xFF
	tst r14,r14
	mov r13,r6 ; r6 set to 0x00
	mov.b r0,@(0x0C,r15)
	bt/s loc_8c1B48BE
	mov.b r13,@r15
	add 0x04,r14
	mov.b @r14+,r0 ; r0 ??? bc r14 is ???
	mov.b r0,@(0x08,r15)
	mov.b @r14+,r0
	mov.b r0,@(0x0C,r15)
	mov.b @r14+,r0
	bra loc_8c1B485A
	mov.b r0,@(0x04,r15)

loc_8c1B4838:
	bra loc_8c1b4840
	mov r13,r5

loc_8c1B483C:
	add 0x01,r5
	add 0x01,r14

loc_8c1B4840:
	mov.b @(0x4,r15),r0
	extu.w r5,r3
	extu.b r0,r0
	add 0x01,r0
	cmp/ge r0,r3
	bf loc_8c1b483c
	mov.b @r14+,r2
	add 0x01,r6
	mov.b r2,@r15
	mov.b @r15,r3
	extu.b r3,r3
	add r3,r14
	add 0x02,r14

loc_8c1b485a:
	mov.b @(0x08,r15),r0
	extu.b r0,r0
	cmp/hs r0,r6
	bt loc_8c1b486c
	mov.b @r14,r2
	extu.b r4,r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c1b4838

loc_8c1b486c:
	mov.b @r14,r3
	extu.b r4,r4
	extu.b r3,r3
	cmp/eq r4,r3
	bf loc_8c1b487e
	add 0x01,r14
	mov r14,r5
	bsr loc_8c1b4908
	mov.l @(0x10,r15),r4

loc_8c1b487e:
	bra loc_8c1b4886
	mov r13,r4

loc_8c1b4882:
	add 0x01,r4
	add 0x01,r14

loc_8c1b4886:
	mov.b @(0x04,r15),r0
	extu.w r4,r3
	extu.b r0,r0
	cmp/ge r0,r3
	bf loc_8c1b4882
	mov.b @r14+,r2
	mov.b r2,@r15
	mov.b @r15,r5
	mov.l @(0x14,r15),r4
	extu.b r5,r5
	shlr2 r5
	extu.b r5,r7
	cmp/pl r7
	bf/s loc_8c1b48be
	mov r13,r6

loc_8c1b48a4:
	mov.b @r14+,r2
	add 0x01,r6
	extu.w r6,r3
	cmp/ge r7,r3
	mov.b r2,@r4
	mov.b @r14+,r0
	mov.b r0,@(0x01,r4)
	mov.b @r14+,r0
	mov.b r0,@(0x02,r4)
	mov.b @r14+,r0
	mov.b r0,@(0x03,r4)
	bf/s loc_8c1b48a4
	add 0x04,r4

loc_8c1B48BE:
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B48C8:
	mov 0x00,r7
	mov r7,r3
	cmp/hs r6,r3
	bt loc_8c1b48dc

loc_8c1B48D0:
	mov.b @r5+,r3
	add 0x01,r7
	cmp/hs r6,r7
	mov.b r3,@r4
	bf.s loc_8c1b48d0
	add 0x01,r4

loc_8c1B48DC:
	rts
	nop

;==============================================
loc_8c1B48E0:
	add 0x01,r5
	mov.b @r5,r1
	add 0xFF,r5
	mov.b r1,@r4
	add 0x01,r4
	mov.b @r5,r3
	rts
	mov.b r3,@r4

;==============================================
loc_8c1B48F0:
	mov 0x04,r6
	add 0x03,r5

loc_8c1B48F4:
	mov.b @r5,r1
	add 0xFF,r6
	tst r6,r6
	add 0xFF,r5
	mov.b r1,@r4
	bf.s loc_8c1b48f4
	add 0x01,r4
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B4906:
	#data 0x00FF

;==============================================
loc_8c1B4908:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	bsr loc_8c1b48c8
	mov 0x20,r6
	add 0x20,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x20,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	mov 0x01,r6
	bsr loc_8c1b48c8
	add 0x22,r4
	add 0x01,r14
	mov r13,r4
	mov r14,r5
	mov 0x01,r6
	bsr loc_8c1b48c8
	add 0x23,r4
	add 0x01,r14
	mov r13,r4
	mov r14,r5
	mov 0x01,r6
	bsr loc_8c1b48c8
	add 0x24,r4
	add 0x01,r14
	mov r13,r4
	mov r14,r5
	mov 0x01,r6
	bsr loc_8c1b48c8
	add 0x25,r4
	add 0x01,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x26,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x28,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x2A,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x2C,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	mov 0x01,r6
	bsr loc_8c1b48c8
	add 0x2E,r4
	add 0x01,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x30,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x32,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x34,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x36,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x38,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x3A,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x3C,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x3E,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x40,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x42,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x44,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x46,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x48,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x4A,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x4C,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x4E,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x50,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x52,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x54,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x56,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x58,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x5A,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x5C,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x5E,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x60,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x62,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x64,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x66,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x68,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x6A,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x6C,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x6E,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x70,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x72,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x74,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x76,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x78,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x7A,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x7C,r4
	add 0x02,r14
	mov r13,r4
	mov r14,r5
	bsr loc_8c1b48e0
	add 0x7E,r4
	add 0x02,r14
	mov r14,r5
	bra loc_8c1b4b1c
	nop

loc_8c1B4B1C:
	mov.w @(0x110,PC),r4
	bsr loc_8c1b48f0
	add r13,r4
	mov.w @(0x10C,PC),r4
	add 0x04,r14
	mov r14,r5
	bsr loc_8c1b48f0
	add r13,r4
	mov.w @(0x104,PC),r4
	add 0x04,r14
	mov r14,r5
	mov 0x01,r6
	bsr loc_8c1b48c8
	add r13,r4
	mov.w @(0xFA,PC),r4
	add 0x01,r14
	mov r14,r5
	mov 0x01,r6
	bsr loc_8c1b48c8
	add r13,r4
	mov.w @(0xF0,PC),r4
	add 0x01,r14
	mov r14,r5
	mov 0x01,r6
	bsr loc_8c1b48c8
	add r13,r4
	mov.w @(0xE6,PC),r4
	add 0x01,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0xDE,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0xD6,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0xCE,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0xC6,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0xBE,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0xB6,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0xAE,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0xA6,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x9E,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x96,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x8E,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x86,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x7E,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x76,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x6E,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x66,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x5E,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x56,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x4E,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	mov.w @(0x46,PC),r4
	add 0x02,r14
	mov r14,r5
	bsr loc_8c1b48e0
	add r13,r4
	add 0x02,r14
	mov r14,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b4c30:
	#data 0x0080
loc_8c1b4c32:
	#data 0x0084
loc_8c1b4c34:
	#data 0x0088
loc_8c1b4c36:
	#data 0x0089
loc_8c1b4c38:
	#data 0x008A
loc_8c1b4c3a:
	#data 0x008C
loc_8c1b4c3c:
	#data 0x008E
loc_8c1b4c3e:
	#data 0x0090
loc_8c1b4c40:
	#data 0x0092
loc_8c1b4c42:
	#data 0x0094
loc_8c1b4c44:
	#data 0x0096
loc_8c1b4c46:
	#data 0x0098
loc_8c1b4c48:
	#data 0x009A
loc_8c1b4c4a:
	#data 0x009C
loc_8c1b4c4c:
	#data 0x009E
loc_8c1b4c4e:
	#data 0x00A0
loc_8c1b4c50:
	#data 0x00A2
loc_8c1b4c52:
	#data 0x00A4
loc_8c1b4c54:
	#data 0x00A6
loc_8c1b4c56:
	#data 0x00A8
loc_8c1b4c58:
	#data 0x00AA
loc_8c1b4c5a:
	#data 0x00AC
loc_8c1b4c5c:
	#data 0x00AE
loc_8c1b4c5e:
	#data 0x00B0
loc_8c1b4c60:
	#data 0x00B2
loc_8c1b4c62:
	#data 0x00B4

;==============================================
loc_8c1b4c64:
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	jsr @r3
	nop
	mov.l @(0x7C,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c1B4C72:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1B4CF0,pc),r13 ; r13 set to 0x8C34BC20
	add 0xFC,r15
	mov.l r4,@r15
	mov.l @(loc_8c1B4CF4,pc),r3 ; r3 set to 0x8C1B5F5E
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B4C8E
	bra loc_8c1B4CDC
	mov 0x03,r0

loc_8c1B4C8E:
	mov.l @r15,r3
	mov.l @r3,r3
	add 0x01,r3
	bsr loc_8c1B50EA
	mov.l r3,@r13
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1B4CB0
	bsr loc_8c1B5134
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1B4CC2
	bsr loc_8c1B51A4
	nop
	bra loc_8c1B4CBE
	nop

loc_8c1B4CB0:
	bsr loc_8c1B51D4
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1B4CC2
	bsr loc_8c1B51F6
	nop

loc_8c1B4CBE:
	bra loc_8c1B4CC4
	mov r0,r14

loc_8c1b4cc2:
	mov 0x03,r14

loc_8c1b4cc4:
	extu.b r14,r2
	tst r2,r2
	bf loc_8c1b4ccc
	mov 0x03,r14

loc_8c1b4ccc:
	mov.l @r13,r3
	mov.l @r15,r2
	mov.l r3,@r2
	mov.l @(loc_8c1b4cf8,pc),r2
	jsr @r2
	nop
	mov r14,r0
	nop

loc_8c1B4CDC:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B4CE8:
	#data bank1a.loc_8c1aECDC
loc_8c1B4CEC:
	#data bank1a.loc_8c1aEE08
loc_8c1B4CF0:
	#data 0x8C34BC20
loc_8c1B4CF4:
	#data loc_8c1B5F5E
loc_8c1B4CF8:
	#data loc_8c1B600C

;==============================================
loc_8c1B4CFC:
	mov.l r14,@-r15
	extu.b r6,r3
	mov.l r13,@-r15
	tst r3,r3
	mov.b @(0x8,r15),r0
	bf.s loc_8c1b4d0c
	mov r0,r14
	mov.w @(0xCC,PC),r6

loc_8c1B4D0C:
	extu.b r14,r3
	tst r3,r3
	bf loc_8c1b4d14
	mov.w @(0xC4,PC),r14

loc_8c1B4D14:
	mov.l @(0xD0,PC),r1
	mov.l @r4,r2
	mov.l @r1,r3
	and r3,r2
	mov.l r2,@r4
	mov.w @(0xBA,PC),r3
	tst r3,r2
	bt.s loc_8c1b4d4c
	extu.b r6,r13
	mov 0x05,r2
	cmp/ge r2,r13
	bf loc_8c1b4d44
	mov 0x18,r1
	extu.b r14,r0
	cmp/ge r1,r0
	bf loc_8c1b4d44
	mov 0x20,r3
	extu.b r5,r0
	cmp/gt r3,r0
	bt loc_8c1b4d44
	mov 0x38,r2
	extu.b r7,r0
	cmp/gt r2,r0
	bf loc_8c1b4d4c

loc_8c1B4D44:
	mov.l @r4,r1
	mov.w @(0x94,PC),r3
	and r3,r1
	mov.l r1,@r4

loc_8c1B4D4C:
	mov.l @r4,r2
	mov.w @(0x8E,PC),r3
	tst r3,r2
	bt loc_8c1b4d7a
	mov 0x05,r0
	cmp/ge r0,r13
	bf loc_8c1b4d72
	mov 0x1E,r2
	extu.b r14,r1
	cmp/ge r2,r1
	bf loc_8c1b4d72
	mov 0x20,r3
	extu.b r5,r1
	cmp/gt r3,r1
	bt loc_8c1b4d72
	mov 0x38,r2
	extu.b r7,r1
	cmp/gt r2,r1
	bf loc_8c1b4d7a

loc_8c1B4D72:
	mov.l @r4,r1
	mov.w @(0x6A,PC),r3
	and r3,r1
	mov.l r1,@r4

loc_8c1B4D7A:
	mov.l @r4,r0
	tst 0x80,r0
	bt loc_8c1b4da4
	mov 0x05,r2
	cmp/ge r2,r13
	bf loc_8c1b4d9c
	extu.b r14,r1
	cmp/ge r2,r1
	bf loc_8c1b4d9c
	mov 0x20,r3
	extu.b r5,r1
	cmp/gt r3,r1
	bt loc_8c1b4d9c
	mov 0x20,r3
	extu.b r7,r0
	cmp/gt r3,r0
	bf loc_8c1b4da4

loc_8c1B4D9C:
	mov.l @r4,r2
	mov.w @(0x42,PC),r3
	and r3,r2
	mov.l r2,@r4

loc_8c1B4DA4:
	mov.l @r4,r0
	tst 0x40,r0
	bt loc_8c1b4dcc
	mov 0x06,r2
	cmp/ge r2,r13
	bf loc_8c1b4dc4
	mov 0x0C,r3
	extu.b r5,r1
	cmp/gt r3,r1
	bt loc_8c1b4dc4
	extu.b r14,r0
	cmp/ge r2,r0
	bf loc_8c1b4dc4
	extu.b r7,r0
	cmp/gt r3,r0
	bf loc_8c1b4dcc

loc_8c1B4DC4:
	mov.l @r4,r2
	mov 0xBF,r3
	and r3,r2
	mov.l r2,@r4

loc_8c1B4DCC:
	mov.l @r4,r0
	tst 0x20,r0
	bt loc_8c1b4e0a
	mov 0x06,r2
	cmp/ge r2,r13
	bra loc_8c1b4dec
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B4DDA:
	#data 0x00FF
loc_8c1B4DDC:
	#data 0x0200
loc_8c1B4DDE:
	#data 0xFDFF
loc_8c1B4DE0:
	#data 0x0100
loc_8c1B4DE2:
	#data 0xFEFF
loc_8c1B4DE4:
	#data 0xFF7F
	#align4

loc_8c1B4De8:
	#data 0x8C34B0F4

;==============================================
loc_8c1B4DEC:
	bf loc_8c1b4e02
	mov 0x08,r3
	extu.b r5,r1
	cmp/gt r3,r1
	bt loc_8c1b4e02
	extu.b r14,r0
	cmp/ge r2,r0
	bf loc_8c1b4e02
	extu.b r7,r0
	cmp/gt r3,r0
	bf loc_8c1b4e0a

loc_8c1B4E02:
	mov.l @r4,r2
	mov 0xDF,r3
	and r3,r2
	mov.l r2,@r4

loc_8c1B4E0A:
	mov.l @r4,r0
	tst 0x10,r0
	bt loc_8c1b4e32
	mov 0x04,r2
	cmp/ge r2,r13
	bf loc_8c1b4e2a
	mov 0x05,r3
	extu.b r5,r1
	cmp/gt r3,r1
	bt loc_8c1b4e2a
	extu.b r14,r0
	cmp/ge r2,r0
	bf loc_8c1b4e2a
	extu.b r7,r0
	cmp/gt r3,r0
	bf loc_8c1b4e32

loc_8c1B4E2A:
	mov.l @r4,r2
	mov 0xEF,r3
	and r3,r2
	mov.l r2,@r4

loc_8c1B4E32:
	mov.l @r4,r0
	tst 0x08,r0
	bt loc_8c1b4e58
	mov 0x04,r2
	cmp/ge r2,r13
	bf loc_8c1b4e50
	extu.b r5,r1
	cmp/gt r2,r1
	bt loc_8c1b4e50
	extu.b r14,r1
	cmp/ge r2,r1
	bf loc_8c1b4e50
	extu.b r7,r1
	cmp/gt r2,r1
	bf loc_8c1b4e58

loc_8c1B4E50:
	mov.l @r4,r2
	mov 0xF7,r3
	and r3,r2
	mov.l r2,@r4

loc_8c1B4E58:
	mov.l @r4,r0
	tst 0x04,r0
	bt loc_8c1b4eb0
	mov 0x04,r2
	cmp/ge r2,r13
	bt loc_8c1b4e6a
	extu.b r14,r1
	cmp/ge r2,r1
	bf loc_8c1b4ea8

loc_8c1B4E6A:
	mov 0x01,r3
	extu.b r5,r2
	cmp/gt r3,r2
	bf loc_8c1b4e7a
	mov 0x01,r3
	extu.b r7,r1
	cmp/gt r3,r1
	bt loc_8c1b4ea8

loc_8c1B4E7A:
	mov 0x04,r3
	extu.b r5,r1
	cmp/gt r3,r1
	bt loc_8c1b4ea8
	mov 0x04,r3
	extu.b r7,r1
	cmp/gt r3,r1
	bt loc_8c1b4ea8
	mov 0x01,r3
	extu.b r5,r1
	cmp/gt r3,r1
	bf loc_8c1b4e98
	mov 0x04,r1
	cmp/ge r1,r13
	bf loc_8c1b4ea8

loc_8c1B4E98:
	mov 0x01,r3
	extu.b r7,r2
	cmp/gt r3,r2
	bf loc_8c1b4eb0
	mov 0x04,r3
	extu.b r14,r1
	cmp/ge r3,r1
	bt loc_8c1b4eb0

loc_8c1B4EA8:
	mov.l @r4,r2
	mov 0xFB,r3
	and r3,r2
	mov.l r2,@r4

loc_8c1B4EB0:
	mov.l @r4,r0
	tst 0x02,r0
	bt loc_8c1b4ed6
	mov 0x02,r2
	cmp/ge r2,r13
	bf loc_8c1b4ece
	extu.b r5,r1
	cmp/gt r2,r1
	bt loc_8c1b4ece
	extu.b r14,r1
	cmp/ge r2,r1
	bf loc_8c1b4ece
	extu.b r7,r1
	cmp/gt r2,r1
	bf loc_8c1b4ed6

loc_8c1B4ECE:
	mov.l @r4,r2
	mov 0xFD,r3
	and r3,r2
	mov.l r2,@r4

loc_8c1B4ED6:
	mov.l @r4,r0
	tst 0x01,r0
	bt loc_8c1b4f0c
	mov 0x02,r2
	cmp/ge r2,r13
	bf loc_8c1b4f04
	mov 0x04,r3
	extu.b r5,r1
	cmp/gt r3,r1
	bt loc_8c1b4f04
	extu.b r14,r14
	cmp/ge r2,r14
	bf loc_8c1b4f04
	extu.b r7,r7
	cmp/gt r3,r7
	bt loc_8c1b4f04
	mov r13,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c1b4f0c
	extu.b r5,r0
	cmp/eq 0x03,r0
	bf loc_8c1b4f0c

loc_8c1B4F04:
	mov.l @r4,r2
	mov 0xFE,r3
	and r3,r2
	mov.l r2,@r4

loc_8c1B4F0C:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B4F12:
	rts
	nop

;==============================================
loc_8c1B4F16:
	mov.l @(loc_8c1B4F4C,pc),r5 ; r5 set to 0x80000000
	bra loc_8c1B4F2A
	mov 0x1F,r6

loc_8c1B4F1C:
	extu.b r6,r2
	tst r2,r2
	bf/s loc_8c1B4F28
	add 0xFF,r6
	rts
	mov 0x01,r0

;==============================================
loc_8c1B4F28:
	shlr r5

loc_8c1B4F2A:
	mov r4,r2
	tst r5,r2
	bt loc_8c1B4F1C
	mov r5,r0
	nop
	rts
	nop

;==============================================
loc_8c1B4F38:
	mov.l @(0x14,PC),r5
	mov 0x01,r4
	sts.l pr,@-r15
	mov.b @r5,r0
	extu.b r0,r0
	tst r4,r0
	add 0xF8,r15
	bt loc_8c1b4f54
	bra loc_8c1b4f56
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B4F4C:
	#data 0x80000000
loc_8c1B4F50:
	#data 0x8C34AF74

;==============================================
loc_8c1b4f54:
	mov 0x00,r0

loc_8c1b4f56:
	mov.l @(0xB4,PC),r3
	mov r15,r2
	mov.w @(0x9E,PC),r1
	jsr @r3
	add 0x04,r2
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b4f6c
	bra loc_8c1b4f6e
	mov r4,r0

loc_8c1b4f6c:
	mov 0x00,r0

loc_8c1b4f6e:
	mov.l @(0x9C,PC),r3
	mov r15,r2
	mov.w @(0x88,PC),r1
	jsr @r3
	add 0x04,r2
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1b4f84
	bra loc_8c1b4f86
	mov r4,r0

loc_8c1b4f84:
	mov 0x00,r0

loc_8c1b4f86:
	mov.l @(0x84,PC),r3
	mov r15,r2
	mov.w @(0x72,PC),r1
	jsr @r3
	add 0x04,r2
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1b4f9c
	bra loc_8c1b4f9e
	mov r4,r0

loc_8c1b4f9c:
	mov 0x00,r0

loc_8c1b4f9e:
	mov.l @(0x6C,PC),r3
	mov r15,r2
	mov.w @(0x5C,PC),r1
	jsr @r3
	add 0x04,r2
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1b4fb4
	bra loc_8c1b4fb6
	mov r4,r0

loc_8c1b4fb4:
	mov 0x00,r0

loc_8c1b4fb6:
	mov.l @(0x54,PC),r3
	mov r15,r2
	mov.w @(0x46,PC),r1
	jsr @r3
	add 0x04,r2
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b4fcc
	bra loc_8c1b4fce
	mov r4,r0

loc_8c1b4fcc:
	mov 0x00,r0

loc_8c1b4fce:
	mov.l @(0x3C,PC),r3
	mov r15,r2
	mov.w @(0x30,PC),r1
	jsr @r3
	add 0x04,r2
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1b4fe4
	bra loc_8c1b4fe6
	mov r4,r0

loc_8c1b4fe4:
	mov 0x00,r0

loc_8c1b4fe6:
	mov.l @(0x24,PC),r3
	mov r15,r2
	mov.w @(0x1A,PC),r1
	jsr @r3
	add 0x04,r2
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1b5010
	bra loc_8c1b5012
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B4ffc:
	#data 0x0F01
loc_8c1B4ffe:
	#data 0x0E01
loc_8c1B5000:
	#data 0x0D01
loc_8c1B5002:
	#data 0x0C01
loc_8c1B5004:
	#data 0x0A01
loc_8c1B5006:
	#data 0x0B01
loc_8c1B5008:
	#data 0x0901
	#align4

loc_8c1B500C:
	#data bank13.loc_8c130F04

;==============================================
loc_8c1b5010:
	mov 0x00,r0

loc_8c1b5012:
	mov.l @(0x118,PC),r3
	mov r15,r2
	mov.w @(0x100,PC),r1
	jsr @r3
	add 0x04,r2
	mov r15,r5
	mov r15,r4
	add 0x04,r5
	mov r5,r0
	nop
	mov.b @(0x1,r0),r0
	mov r4,r2
	mov.l @(0x100,PC),r3
	and 0xFF,r0
	jsr @r3
	mov 0x08,r1
	mov r5,r0
	nop
	mov.b @r0,r0
	mov.w @(0xDE,PC),r1
	tst 0x80,r0
	mov.l @(0xEC,PC),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	mov r4,r2
	mov r5,r0
	nop
	mov.b @r0,r0
	mov.w @(0xCA,PC),r1
	tst 0x40,r0
	mov.l @(0xD8,PC),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	mov r4,r2
	mov r5,r0
	nop
	mov.b @r0,r0
	mov.w @(0xB6,PC),r1
	tst 0x20,r0
	mov.l @(0xC0,PC),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	mov r4,r2
	mov r5,r0
	nop
	mov.b @r0,r0
	mov.w @(0xA2,PC),r1
	tst 0x10,r0
	mov.l @(0xAC,PC),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	mov r4,r2
	mov r5,r0
	nop
	mov.b @r0,r0
	mov.w @(0x8E,PC),r1
	tst 0x08,r0
	mov.l @(0x94,PC),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	mov r4,r2
	mov r5,r0
	nop
	mov.b @r0,r0
	mov.w @(0x7A,PC),r1
	tst 0x04,r0
	mov.l @(0x80,PC),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	mov r4,r2
	mov r5,r0
	nop
	mov.b @r0,r0
	mov.w @(0x66,PC),r1
	tst 0x02,r0
	mov.l @(0x68,PC),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	mov r4,r2
	mov r5,r0
	nop
	mov.b @r0,r0
	mov.w @(0x52,PC),r1
	mov.l @(0x54,PC),r3
	and 0x01,r0
	jsr @r3
	mov r4,r2
	mov.w @r15,r2
	mov.l @(0xC,r15),r1
	add 0x08,r15
	lds.l @r15+,pr
	mov.w r2,@r1
	rts
	nop

;==============================================
loc_8c1B50EA:
	mov.l @(loc_8c1B5130,pc),r3 ; r3 set to 0x8C34BC20
	mov.l @r3,r0
	mov.b @r0,r0
	cmp/eq 0x41,r0
	bt loc_8c1B5110
	cmp/eq 0x44,r0
	bt loc_8c1B5110
	cmp/eq 0x45,r0
	bt loc_8c1B5110
	cmp/eq 0x47,r0
	bt loc_8c1B5110
	cmp/eq 0x49,r0
	bt loc_8c1B5110
	cmp/eq 0x4D,r0
	bt loc_8c1B5110
	cmp/eq 0x54,r0
	bt loc_8c1B5110
	bra loc_8c1B5114
	nop

loc_8c1B5110:
	rts
	mov 0x01,r0

;==============================================
loc_8c1B5114:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8c1B511a:
	#data 0x0801
loc_8c1B511c:
	#data 0x0901
loc_8c1B511e:
	#data 0x0A01
loc_8c1B5120:
	#data 0x0B01
loc_8c1B5122:
	#data 0x0C01
loc_8c1B5124:
	#data 0x0D01
loc_8c1B5126:
	#data 0x0E01
loc_8c1B5128:
	#data 0x0F01
	#align4

loc_8c1B512C:
	#data bank13.loc_8c130F04
loc_8c1B5130:
	#data 0x8C34BC20

;==============================================
loc_8c1b5134:
	mov.l r14,@-r15
	mov 0x03,r6
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.l @(loc_8c1b5328,pc),r5
	mov.l @(loc_8c1b5324,pc),r14
	mov.l @(loc_8c1b532c,pc),r3
	jsr @r3
	mov.l @r14,r4
	tst r0,r0
	bt loc_8c1b5196
	mov.l @(loc_8c1b5330,pc),r4
	mov r4,r0
	nop
	add 0x1F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c1b5196
	mov r4,r5
	add 0x18,r5
	mov.b @r5,r5
	mov 0x08,r3
	extu.b r5,r5
	tst r5,r3
	bt loc_8c1b5198
	mov 0x10,r1
	tst r5,r1
	bt loc_8c1b5198
	mov.l @r14,r0
	mov.b @r0,r0
	cmp/eq 0x41,r0
	bt loc_8c1b5196
	mov.l @(loc_8c1b532c,pc),r2
	mov 0x02,r6
	mov.l @(loc_8c1b5334,pc),r5
	jsr @r2
	mov.l @r14,r4
	tst r0,r0
	bt loc_8c1b5196
	mov.l @(loc_8c1b5324,pc),r2
	mov 0x02,r6
	mov.l @(loc_8c1b532c,pc),r3
	mov.l @(loc_8c1b5338,pc),r5
	jsr @r3
	mov.l @r2,r4
	tst r0,r0
	bf loc_8c1b5198

loc_8c1b5196:
	mov 0x01,r13

loc_8c1b5198:
	mov r13,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c1B51A4:
	mov.l @(loc_8c1B533C,pc),r2 ; r2 set to 0x8C34BBA9
	mov 0x01,r3 ; r3 set to 0x01
	sts.l pr,@-r15
	mov.b r3,@r2 ; r2 ??
	mov.l @(loc_8c1B5324,pc),r4 ; r4 set to 0x8C34BC20
	mov.l @r4,r0
	add 0x01,r0
	mov.l r0,@r4 ; r4 ??? bc r0 is ???
	add 0xFF,r0
	mov.b @r0,r0
	cmp/eq 0x4D,r0
	bf loc_8c1B51C4
	bsr loc_8c1B51FA
	nop
	bra loc_8c1B51CA
	nop

loc_8c1B51C4:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c1B51CA:
	mov.l @(loc_8c1B533C,pc),r3 ; r3 set to 0x8C34BBA9
	mov.b @r3,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1b51d4:
	mov.l r14,@-r15
	mov 0x00,r14
	sts.l pr,@-r15
	mov.l @(loc_8c1b5340,pc),r5
	mov 0x06,r6
	mov.l @(loc_8c1b5324,pc),r3
	mov.l @(loc_8c1b532c,pc),r2
	jsr @r2
	mov.l @r3,r4
	tst r0,r0
	bf loc_8c1b51ec
	mov 0x01,r14

loc_8c1b51ec:
	mov r14,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c1B51F6:
	rts
	mov r15,r0

;==============================================
loc_8c1B51FA:
	mov.l @(loc_8c1B5324,pc),r4 ; r4 set to 0x8C34BC20
	mov.l @r4,r5
	mov.b @r5,r0
	cmp/eq 0x53,r0
	bf loc_8c1B520C
	mov.l @r4,r2
	add 0x01,r2
	bra loc_8c1B5402
	mov.l r2,@r4

loc_8c1B520C:
	cmp/eq 0x41,r0
	bf loc_8c1B5218
	mov.l @r4,r2
	add 0x01,r2
	bra loc_8c1B5220
	mov.l r2,@r4

loc_8c1B5218:
	mov.l @(loc_8c1B533C,pc),r1 ; r1 set to 0x8C34BBA9
	mov 0x03,r3 ; r3 set to 0x03
	rts
	mov.b r3,@r1

;==============================================
loc_8c1B5220:
	mov.l r14,@-r15
	mov.l @(loc_8c1B5324,pc),r4 ; r4 set to 0x8C34BC20
	sts.l pr,@-r15
	mov.l @r4,r0
	mov.l @(loc_8c1B5330,pc),r14 ; r14 set to 0x8C34AF50
	add 0x01,r0
	mov.l r0,@r4 ; r4 ??? bc r0 is ???
	add 0xFF,r0
	mov.b @r0,r0
	cmp/eq 0x3D,r0
	bt/s loc_8c1B5240
	mov 0x08,r5 ; r5 set to 0x08
	cmp/eq 0x3F,r0
	bt loc_8c1B526C
	bra loc_8c1B5292
	nop

loc_8c1b5240:
	mov.l @r4,r0
	mov.b @r0,r0
	cmp/eq 0x3F,r0
	bf loc_8c1b5266
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r5,r0
	bt loc_8c1b525a
	bsr loc_8c1b5ff2
	nop

loc_8c1b525a:
	mov.l @(loc_8C1B5344,pc),r3
	lds.l @r15+,pr
	mov.w @r3,r4
	extu.w r4,r4
	bra loc_8c1b5298
	mov.l @r15+,r14

loc_8c1b5266:
	lds.l @r15+,pr
	bra loc_8c1b52ec
	mov.l @r15+,r14

loc_8c1b526c:
	mov.b @(0xE,r14),r0
	extu.b r0,r0
	tst r5,r0
	bt loc_8c1b5278
	bsr loc_8c1b5ff2
	nop

loc_8c1b5278:
	mov r14,r4
	mov r14,r3
	add 0x3D,r4
	add 0x3C,r3
	mov.b @r4,r4
	mov.b @r3,r2
	lds.l @r15+,pr
	extu.b r4,r4
	extu.b r2,r2
	shll8 r4
	or r2,r4
	bra loc_8c1b5298
	mov.l @r15+,r14

loc_8c1B5292:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B5298:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r4,@r15
	mov.l @(0xA4,PC),r4
	bsr loc_8c1b5f96
	nop
	bsr loc_8c1b4f16
	mov.l @r15,r4
	mov.l @(0x94,PC),r2
	mov 0xFE,r1
	mov.l @r15,r14
	mov.l @r2,r3
	mov.l @(0x94,PC),r4
	sub r0,r14
	and r3,r14
	bsr loc_8c1b5f96
	and r1,r14
	mov.l @(0x90,PC),r13
	bra loc_8c1b52d2
	nop

loc_8c1B52C4:
	bsr loc_8c1b4f16
	mov r14,r4
	sub r0,r14
	tst r14,r14
	bt loc_8c1b52d2
	bsr loc_8c1b5f96
	mov r13,r4

loc_8c1B52D2:
	bsr loc_8c1b5654
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b52c4
	mov.l @(0x74,PC),r4
	bsr loc_8c1b5f96
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c1b5ff2
	mov.l @r15+,r14

loc_8c1B52EC:
	mov.l r14,@-r15
	mov 0x00,r3
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x03,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r3,@r15
	mov.l @(0x54,PC),r10
	mov.l @(0x38,PC),r11
	mov.l @(0x54,PC),r13

loc_8c1B5306:
	mov.l @(0x1C,PC),r5
	mov 0x08,r6
	jsr @r10
	mov r13,r4
	mov r0,r14
	extu.b r14,r3
	tst r3,r3
	bf loc_8c1b5366
	bsr loc_8c1b59aa
	mov r13,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c1b5360
	bra loc_8c1b536c
	mov.b r12,@r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B5324:
	#data 0x8C34BC20
loc_8c1B5328:
	#data bank1c.loc_8c1c84B8
loc_8c1B532C:
	#data bank13.loc_8c131D6C
loc_8c1B5330:
	#data 0x8C34AF50
loc_8c1B5334:
	#data bank1c.loc_8c1c84BC
loc_8c1B5338:
	#data bank1c.loc_8c1c84C0
loc_8c1B533C:
	#data 0x8C34BBA9
loc_8c1B5340:
	#data bank1c.loc_8c1c84C4
loc_8c1b5344:
	#data 0x8C34B0F4
loc_8c1B5348:
	#data bank1c.loc_8c1c84CC
loc_8c1B534C:
	#data bank1c.loc_8c1c84D4
loc_8c1B5350:
	#data bank1c.loc_8c1c84D8
loc_8c1B5354:
	#data bank1c.loc_8c1c84DC
loc_8c1B5358:
	#data loc_8c1B8028
loc_8c1B535c:
	#data 0x8C34BC2C

;==============================================
loc_8c1B5360:
	mov.l @r15,r3
	or r4,r3
	mov.l r3,@r15

loc_8c1B5366:
	extu.b r14,r0
	cmp/eq 0x02,r0
	bf loc_8c1b5306

loc_8c1B536C:
	mov.l @r15,r2
	mov.l r2,@(0x4,r15)
	mov.l @(0xF8,PC),r14
	mov r14,r3
	add 0x41,r3
	mov r14,r5
	mov r14,r6
	mov r14,r7
	mov.b @r3,r2
	add 0x3F,r6
	add 0x3E,r5
	mov.l r2,@-r15
	add 0x40,r7
	mov.b @r5,r5
	mov.b @r6,r6
	mov r15,r4
	mov.b @r7,r7
	bsr loc_8c1b4cfc
	add 0x04,r4
	mov r14,r4
	mov r14,r3
	add 0x3D,r4
	add 0x3C,r3
	mov.b @r4,r4
	mov.b @r3,r2
	add 0x04,r15
	extu.b r4,r4
	extu.b r2,r2
	shll8 r4
	bsr loc_8c1b4f16
	or r2,r4
	mov.l @r15,r2
	cmp/hs r0,r2
	bt loc_8c1b53b8
	mov.l @(0x4,r15),r3
	mov.l @r15,r0
	cmp/eq r0,r3
	bt loc_8c1b53bc

loc_8c1B53B8:
	bra loc_8c1b53f2
	mov.b r12,@r11

loc_8c1B53BC:
	mov r14,r12
	add 0x3D,r12
	mov r14,r13
	mov.b @r12,r4
	add 0x3C,r13
	mov.b @r13,r3
	extu.b r4,r4
	shll8 r4
	extu.b r3,r3
	bsr loc_8c1b4f16
	or r3,r4
	mov.l @r15,r3
	or r3,r0
	mov.b r0,@r13
	mov.b @r12,r4
	mov.b @r13,r3
	extu.b r4,r4
	extu.b r3,r3
	shll8 r4
	bsr loc_8c1b4f16
	or r3,r4
	mov.l @r15,r3
	mov.l @(0x84,PC),r2
	or r3,r0
	and r2,r0
	shlr8 r0
	mov.b r0,@r12

loc_8c1B53F2:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B5402:
	mov.l @(loc_8c1B5474,pc),r4 ; r4 set to 0x8C34BC20
	sts.l pr,@-r15
	mov.l @r4,r0
	mov.l @(loc_8c1B546C,pc),r5 ; r5 set to 0x8C34AF50
	add 0x01,r0
	mov.l r0,@r4 ; r4 ??? bc r0 is ???
	add 0xFF,r0
	mov.b @r0,r0
	cmp/eq 0x3D,r0
	bt/s loc_8c1B5420
	mov 0x08,r6 ; r6 set to 0x08
	cmp/eq 0x3F,r0
	bt loc_8c1B544C
	bra loc_8c1B5466
	nop

loc_8c1b5420:
	mov.l @r4,r0
	mov.b @r0,r0
	cmp/eq 0x3F,r0
	bf loc_8c1b5448
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b @(0x0E,r5),r0
	extu.b r0,r0
	tst r6,r0
	bt loc_8c1b543a
	bsr loc_8c1b5ff2
	nop

loc_8c1b543a:
	mov.l @(loc_8c1b5478,pc),r4
	bsr loc_8c1b5f96
	nop
	bsr loc_8c1b547c
	nop
	bra loc_8c1b5462
	nop

loc_8c1b5448:
	bra loc_8c1b5756
	lds.l @r15+,pr

loc_8c1b544c:
	mov.b @(0xE,r5),r0
	extu.b r0,r0
	tst r6,r0
	bt loc_8c1b5458
	bsr loc_8c1b5ff2
	nop

loc_8c1b5458:
	mov.l @(0x1C,PC),r4
	bsr loc_8c1b5f96
	nop
	bsr loc_8c1b5594
	nop

loc_8c1b5462:
	bra loc_8c1b5ff2
	lds.l @r15+,pr

loc_8c1B5466:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B546C:
	#data 0x8C34AF50
loc_8c1B5470:
	#data 0x0000FF00
loc_8c1B5474:
	#data 0x8C34BC20
loc_8c1B5478:
	#data bank1c.loc_8c1c84E0

;==============================================
loc_8c1B547C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8c1b5510
	nop
	mov.l @(0x60,PC),r4
	bsr loc_8c1b5f96
	nop
	mov.l @(0x60,PC),r2
	mov.l @(0x5C,PC),r3
	jsr @r2
	mov.b @r3,r4
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r0,r4
	mov.l @(0x5C,PC),r2
	mov.w @(0x44,PC),r3
	mov.l @r2,r13
	tst r3,r13
	bt.s loc_8c1b54ac
	mov r0,r14
	mov.l @(0x54,PC),r13
	bra loc_8c1b54ae
	nop

loc_8c1B54AC:
	mov r14,r13

loc_8c1B54AE:
	mov.l r14,@-r15
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r13,@-r15
	mov.l @(0x48,PC),r2
	mov.l @(0x48,PC),r4
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov.l r2,@-r15
	mov 0x46,r2
	cmp/gt r2,r0
	bf.s loc_8c1b54d2
	add 0x14,r15
	mov.l @(0x40,PC),r3
	mov 0x03,r1
	mov.b r1,@r3
	bra loc_8c1b54dc
	nop

loc_8c1B54D2:
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r4
	mov.l @r15+,r13
	bra loc_8c1b5f96
	mov.l @r15+,r14

loc_8c1B54DC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B54E4:
	#data 0x0300
	#align4

loc_8c1B54E8:
	#data bank1c.loc_8c1c84E8
loc_8c1B54EC:
	#data 0x8C34B0F0
loc_8c1B54F0:
	#data loc_8c1BF488
loc_8c1B54F4:
	#data bank1a.loc_8c1aEE58
loc_8c1B54F8:
	#data 0x8C34B0F4
loc_8c1B54FC:
	#data 0x00008340
loc_8c1B5500:
	#data bank1c.loc_8c1c84F0
loc_8c1B5504:
	#data 0x8C34BC2C
loc_8c1B5508:
	#data bank12.loc_8c129740
loc_8c1B550c:
	#data 0x8C34BBA9

;==============================================
loc_8c1B5510:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xC4,PC),r4
	bsr loc_8c1b5f96
	nop
	mov.l @(0xC4,PC),r14
	mov.l @r14,r0
	tst 0x02,r0
	bt loc_8c1b5528
	mov.l @(0xC0,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B5528:
	mov.l @r14,r0
	tst 0x08,r0
	bt loc_8c1b5534
	mov.l @(0xB8,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B5534:
	mov.l @r14,r0
	tst 0x10,r0
	bt loc_8c1b5540
	mov.l @(0xB0,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B5540:
	mov.l @r14,r0
	tst 0x04,r0
	bt loc_8c1b554c
	mov.l @(0xA8,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B554C:
	mov.l @r14,r0
	tst 0x20,r0
	bt loc_8c1b5558
	mov.l @(0xA0,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B5558:
	mov.l @r14,r0
	tst 0x40,r0
	bt loc_8c1b5564
	mov.l @(0x98,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B5564:
	mov.l @r14,r0
	tst 0x80,r0
	bt loc_8c1b5570
	mov.l @(0x90,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B5570:
	mov.l @r14,r2
	mov.w @(0x62,PC),r3
	tst r3,r2
	bt loc_8c1b557e
	mov.l @(0x84,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B557E:
	mov.l @r14,r2
	mov.w @(0x56,PC),r3
	tst r3,r2
	bt loc_8c1b558c
	mov.l @(0x7C,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B558C:
	lds.l @r15+,pr
	mov.l @(0x78,PC),r4
	bra loc_8c1b5f96
	mov.l @r15+,r14

loc_8c1B5594:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x70,PC),r14
	sts.l pr,@-r15
	mov r14,r4
	add 0x3D,r4
	mov r14,r3
	add 0x3C,r3
	mov.b @r4,r4
	mov.b @r3,r2
	extu.b r4,r4
	extu.b r2,r2
	shll8 r4
	bsr loc_8c1b5654
	or r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b55be
	mov.l @(0x54,PC),r4
	bsr loc_8c1b5f96
	nop

loc_8c1B55BE:
	mov.l @(0x54,PC),r13
	bsr loc_8c1b5f96
	mov r13,r4
	mov r14,r0
	nop
	add 0x42,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b561c
	mov.l @(0x44,PC),r4
	bra loc_8c1b561e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B55D8:
	#data 0x0100
loc_8c1B55Da:
	#data 0x0200
	#align4

loc_8c1B55DC:
	#data bank1c.loc_8c1c84D4
loc_8c1B55E0:
	#data 0x8C34B0F4
loc_8c1B55E4:
	#data bank1c.loc_8c1c851C
loc_8c1B55E8:
	#data bank1c.loc_8c1c8520
loc_8c1B55EC:
	#data bank1c.loc_8c1c8528
loc_8c1B55F0:
	#data bank1c.loc_8c1c8530
loc_8c1B55F4:
	#data bank1c.loc_8c1c8538
loc_8c1B55F8:
	#data bank1c.loc_8c1c8540
loc_8c1B55FC:
	#data bank1c.loc_8c1c8548
loc_8c1B5600:
	#data bank1c.loc_8c1c8550
loc_8c1B5604:
	#data bank1c.loc_8c1c8558
loc_8c1B5608:
	#data bank1c.loc_8c1c84DC
loc_8c1B560c:
	#data 0x8C34AF50
loc_8c1B5610:
	#data bank1c.loc_8c1c8560
loc_8c1B5614:
	#data bank1c.loc_8c1c84D8
loc_8c1B5618:
	#data bank1c.loc_8c1c8574

;==============================================
loc_8c1B561C:
	mov.l @(0xC4,PC),r4

loc_8c1B561E:
	bsr loc_8c1b5f96
	nop
	mov r14,r4
	add 0x3E,r4
	bsr loc_8c1b5718
	mov.b @r4,r4
	bsr loc_8c1b5f96
	mov r13,r4
	mov r14,r4
	add 0x3F,r4
	bsr loc_8c1b5718
	mov.b @r4,r4
	bsr loc_8c1b5f96
	mov r13,r4
	mov r14,r4
	add 0x40,r4
	bsr loc_8c1b5718
	mov.b @r4,r4
	bsr loc_8c1b5f96
	mov r13,r4
	lds.l @r15+,pr
	mov r14,r4
	add 0x41,r4
	mov.b @r4,r4
	mov.l @r15+,r13
	bra loc_8c1b5718
	mov.l @r15+,r14

loc_8c1B5654:
	mov.w @(0x84,PC),r3
	sts.l pr,@-r15
	tst r4,r3
	bt loc_8c1b5662
	mov.l @(0x88,PC),r4
	bra loc_8c1b56be
	nop

loc_8c1B5662:
	mov.w @(0x78,PC),r3
	tst r4,r3
	bt loc_8c1b566e
	mov.l @(0x80,PC),r4
	bra loc_8c1b56be
	nop

loc_8c1B566E:
	mov.w @(0x6E,PC),r3
	tst r4,r3
	bt loc_8c1b567a
	mov.l @(0x78,PC),r4
	bra loc_8c1b56be
	nop

loc_8c1B567A:
	mov 0x40,r3
	tst r4,r3
	bt loc_8c1b5686
	mov.l @(0x70,PC),r4
	bra loc_8c1b56be
	nop

loc_8c1B5686:
	mov 0x20,r3
	tst r4,r3
	bt loc_8c1b5692
	mov.l @(0x68,PC),r4
	bra loc_8c1b56be
	nop

loc_8c1B5692:
	mov 0x10,r3
	tst r4,r3
	bt loc_8c1b569e
	mov.l @(0x60,PC),r4
	bra loc_8c1b56be
	nop

loc_8c1B569E:
	mov 0x08,r3
	tst r4,r3
	bt loc_8c1b56aa
	mov.l @(0x58,PC),r4
	bra loc_8c1b56be
	nop

loc_8c1B56AA:
	mov 0x04,r3
	tst r4,r3
	bt loc_8c1b56b6
	mov.l @(0x50,PC),r4
	bra loc_8c1b56be
	nop

loc_8c1B56B6:
	mov 0x02,r3
	tst r4,r3
	bt loc_8c1b56c6
	mov.l @(0x48,PC),r4

loc_8c1B56BE:
	bsr loc_8c1b5f96
	nop
	bra loc_8c1b5710
	nop

loc_8c1B56C6:
	mov 0x01,r3
	tst r3,r4
	bt loc_8c1b56d6
	mov.l @(0x3C,PC),r4
	bsr loc_8c1b5f96
	nop
	bra loc_8c1b5710
	nop

loc_8c1B56D6:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c1b56dc:
	#data 0x0200
loc_8c1b56de:
	#data 0x0100
loc_8c1b56e0:
	#data 0x0080
	#align4

loc_8c1B56E4:
	#data bank1c.loc_8c1c8578
loc_8c1B56E8:
	#data bank1c.loc_8c1c857C
loc_8c1B56EC:
	#data bank1c.loc_8c1c8580
loc_8c1B56F0:
	#data bank1c.loc_8c1c8584
loc_8c1B56F4:
	#data bank1c.loc_8c1c8588
loc_8c1B56F8:
	#data bank1c.loc_8c1c8590
loc_8c1B56FC:
	#data bank1c.loc_8c1c8594
loc_8c1B5700:
	#data bank1c.loc_8c1c859C
loc_8c1B5704:
	#data bank1c.loc_8c1c85A0
loc_8c1B5708:
	#data bank1c.loc_8c1c851C
loc_8c1B570C:
	#data bank1c.loc_8c1c85A8

;==============================================
loc_8c1B5710:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B5718:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.b r4,@r15
	mov.b @r15,r3
	tst r3,r3
	bf loc_8c1b572a
	mov.l @(0xE0,PC),r4
	bra loc_8c1b574a
	nop

loc_8c1B572A:
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov.b @r15,r4
	mov.l @(0xDC,PC),r2
	jsr @r2
	mov r0,r4
	mov.l r0,@-r15
	mov.l @(0xD8,PC),r3
	mov.l r3,@-r15
	mov.l @(0xD8,PC),r2
	mov r15,r4
	jsr @r2
	add 0x0C,r4
	add 0x08,r15
	mov r15,r4
	add 0x04,r4

loc_8c1B574A:
	bsr loc_8c1b5f96
	nop
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B5756:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0xB8,PC),r4
	mov.l @(0xB0,PC),r5
	mov.l @(0xB8,PC),r3
	add 0xF4,r15
	jsr @r3
	mov 0x08,r6
	mov r0,r4
	extu.b r4,r2
	mov.l @(0xB0,PC),r14
	tst r2,r2
	bf.s loc_8c1b5798
	mov r14,r13
	mov.l @(0xA0,PC),r4
	bsr loc_8c1b59aa
	nop
	mov.l @(0xA4,PC),r2
	mov.l @r2,r3
	and r3,r0
	tst r0,r0
	bf.s loc_8c1b5794
	mov.l r0,@r15
	bra loc_8c1b594a
	nop

loc_8c1B5794:
	bra loc_8c1b57c2
	mov r0,r9

loc_8c1B5798:
	extu.b r4,r0
	cmp/eq 0x01,r0
	bf loc_8c1b57ba
	mov r13,r4
	mov r13,r3
	add 0x3D,r4
	add 0x3C,r3
	mov.b @r4,r4
	mov.b @r3,r2
	extu.b r4,r4
	extu.b r2,r2
	shll8 r4
	bsr loc_8c1b4f16
	or r2,r4
	mov.l r0,@r15
	bra loc_8c1b57c2
	mov 0x00,r9

loc_8c1B57BA:
	cmp/eq 0x02,r0
	bf loc_8c1b57c2
	bra loc_8c1b594a
	nop

loc_8c1B57C2:
	mov.l @(0x58,PC),r5
	mov r15,r4
	mov.l @(0x68,PC),r10
	mov 0x64,r6
	jsr @r10
	add 0x04,r4
	extu.b r0,r4
	tst r4,r4
	bf loc_8c1b57f4
	mov.l @(0x4,r15),r2
	mov 0x01,r3
	cmp/hi r3,r2
	bf loc_8c1b57e0
	bra loc_8c1b594a
	nop

loc_8c1B57E0:
	mov.l @(0x4,r15),r1
	tst r1,r1
	bt loc_8c1b57ee
	mov r3,r0
	nop
	bra loc_8c1b57f0
	nop

loc_8c1B57EE:
	mov 0x00,r0

loc_8c1B57F0:
	bra loc_8c1b5838
	mov.b r0,@(0x8,r15)

loc_8c1B57F4:
	mov r14,r0
	nop
	add 0x42,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b5834
	bra loc_8c1b5836
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B5808:
	#data bank1c.loc_8c1c85B0
loc_8c1B580C:
	#data loc_8c1BF488
loc_8c1B5810:
	#data bank1a.loc_8c1aEE58
loc_8c1B5814:
	#data bank1c.loc_8c1c85B4
loc_8c1B5818:
	#data bank12.loc_8c129740
loc_8c1B581c:
	#data 0x8C34BC20
loc_8c1B5820:
	#data 0x8C34BC2C
loc_8c1B5824:
	#data loc_8c1B8028
loc_8c1B5828:
	#data 0x8C34AF50
loc_8c1B582c:
	#data 0x8C34B0F4
loc_8c1B5830:
	#data loc_8c1B7F74

;==============================================
loc_8c1B5834:
	mov 0x00,r0

loc_8c1B5836:
	mov.b r0,@(0x8,r15)

loc_8c1B5838:
	mov.l @(0xBC,PC),r5
	mov r15,r4
	mov 0x6E,r6
	jsr @r10
	add 0x04,r4
	mov r0,r4
	extu.b r4,r4
	mov.w @(0xAC,PC),r8
	tst r4,r4
	bf loc_8c1b585c
	bsr loc_8c1b5a7c
	mov.l @(0x4,r15),r4
	mov r0,r13
	extu.b r13,r2
	cmp/eq r8,r2
	bf loc_8c1b5862
	bra loc_8c1b594a
	nop

loc_8c1B585C:
	mov r14,r13
	add 0x3E,r13
	mov.b @r13,r13

loc_8c1B5862:
	mov.l @(0x94,PC),r5
	mov r15,r4
	mov 0x6E,r6
	jsr @r10
	add 0x04,r4
	extu.b r0,r4
	tst r4,r4
	bf loc_8c1b5896
	bsr loc_8c1b5cb6
	mov.l @(0x4,r15),r4
	mov r0,r11
	extu.b r11,r4
	cmp/eq r8,r4
	bt loc_8c1b594a
	tst r4,r4
	bt loc_8c1b5888
	extu.b r13,r2
	cmp/gt r4,r2
	bt loc_8c1b594a

loc_8c1B5888:
	mov.l @(0x70,PC),r3
	mov.b @r3,r2
	extu.b r2,r2
	cmp/gt r2,r4
	bf loc_8c1b589c
	bra loc_8c1b594a
	nop

loc_8c1B5896:
	mov r14,r11
	add 0x3F,r11
	mov.b @r11,r11

loc_8c1B589C:
	mov.l @(0x58,PC),r5
	mov r15,r4
	mov 0x6E,r6
	jsr @r10
	add 0x04,r4
	extu.b r0,r4
	tst r4,r4
	bf loc_8c1b58bc
	bsr loc_8c1b5a7c
	mov.l @(0x4,r15),r4
	mov r0,r12
	extu.b r12,r2
	cmp/eq r8,r2
	bf loc_8c1b58c2
	bra loc_8c1b594a
	nop

loc_8c1B58BC:
	mov r14,r12
	add 0x40,r12
	mov.b @r12,r12

loc_8c1B58C2:
	mov.l @(0x34,PC),r5
	mov r15,r4
	mov 0x6E,r6
	jsr @r10
	add 0x04,r4
	extu.b r0,r4
	tst r4,r4
	bf loc_8c1b5900
	bsr loc_8c1b5cb6
	mov.l @(0x4,r15),r4
	mov r0,r10
	extu.b r10,r4
	cmp/eq r8,r4
	bt loc_8c1b594a
	tst r4,r4
	bt loc_8c1b58e8
	extu.b r12,r2
	cmp/gt r4,r2
	bt loc_8c1b594a

loc_8c1B58E8:
	mov.l @(0x10,PC),r3
	mov.b @r3,r2
	extu.b r2,r2
	cmp/gt r2,r4
	bf loc_8c1b5906
	bra loc_8c1b594a
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b58f6:
	#data 0x00ff
	#align4

loc_8c1b58f8:
	#data 0x8c34bc20
loc_8c1b58fc:
	#data 0x8c34b0f0

;==============================================
loc_8c1B5900:
	mov r14,r10
	add 0x41,r10
	mov.b @r10,r10

loc_8c1B5906:
	mov.l @r15,r3
	mov r13,r5
	mov.l @(0x108,PC),r0
	mov r12,r7
	mov r3,r2
	add r3,r2
	mov.l @r0,r1
	add 0xFF,r2
	mov r11,r6
	and r1,r2
	mov.l r2,@r15
	mov.l r10,@-r15
	mov r15,r4
	bsr loc_8c1b4cfc
	add 0x04,r4
	mov 0x00,r2
	cmp/hi r2,r9
	add 0x04,r15
	bf.s loc_8c1b5934
	extu.b r11,r4
	mov.l @r15,r1
	tst r9,r1
	bt loc_8c1b594a

loc_8c1B5934:
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c1b594a
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bt loc_8c1b594a
	extu.b r13,r2
	cmp/ge r2,r4
	bt loc_8c1b5952
	tst r4,r4
	bt loc_8c1b5952

loc_8c1B594A:
	mov.l @(0xCC,PC),r2
	mov 0x03,r3
	bra loc_8c1b5996
	mov.b r3,@r2

loc_8c1B5952:
	mov r14,r0
	nop
	mov.l @r15,r3
	add 0x3C,r0
	mov r14,r2
	add 0x3D,r2
	mov.b r3,@r0
	mov r14,r4
	mov.l @(0xB8,PC),r3
	mov.l @r15,r1
	and r3,r1
	shlr8 r1
	mov.b r1,@r2
	mov.b @(0x8,r15),r0
	tst r0,r0
	bf.s loc_8c1b597a
	add 0x42,r4
	mov.b @r4,r0
	bra loc_8c1b597e
	or 0x80,r0

loc_8c1B597A:
	mov.b @r4,r0
	and 0x7F,r0

loc_8c1B597E:
	mov r14,r3
	add 0x3E,r3
	mov r14,r2
	add 0x3F,r2
	mov.b r0,@r4
	mov.b r13,@r3
	mov r14,r3
	add 0x41,r14
	mov.b r11,@r2
	add 0x40,r3
	mov.b r12,@r3
	mov.b r10,@r14

loc_8c1B5996:
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
loc_8c1B59AA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x70,PC),r5
	mov.l @(0x68,PC),r13
	jsr @r13
	mov 0x08,r6
	tst r0,r0
	bf loc_8c1b59c2
	bra loc_8c1b5a74
	mov 0x02,r0

loc_8c1B59C2:
	mov.l @(0x64,PC),r5
	mov 0x08,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b59d2
	bra loc_8c1b5a74
	mov 0x08,r0

loc_8c1B59D2:
	mov.l @(0x58,PC),r5
	mov 0x08,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b59e2
	bra loc_8c1b5a74
	mov 0x10,r0

loc_8c1B59E2:
	mov.l @(0x4C,PC),r5
	mov 0x08,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b59f2
	bra loc_8c1b5a74
	mov 0x04,r0

loc_8c1B59F2:
	mov.l @(0x40,PC),r5
	mov 0x08,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b5a02
	bra loc_8c1b5a74
	mov 0x20,r0


loc_8c1B5A02:
	mov.l @(0x34,PC),r5
	mov 0x08,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b5a3c
	bra loc_8c1b5a74
	mov 0x40,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B5A14:
	#data 0x8C34B0F4
loc_8c1B5A18:
	#data 0x8C34BBA9
loc_8c1B5A1c:
	#data 0x0000FF00
loc_8c1B5A20:
	#data bank13.loc_8c131D6C
loc_8c1B5A24:
	#data bank1c.loc_8c1c85B8
loc_8c1B5A28:
	#data bank1c.loc_8c1c85C4
loc_8c1B5A2C:
	#data bank1c.loc_8c1c85D0
loc_8c1B5A30:
	#data bank1c.loc_8c1c85DC
loc_8c1B5A34:
	#data bank1c.loc_8c1c85E8
loc_8c1B5A38:
	#data bank1c.loc_8c1c85F4

;==============================================
loc_8c1B5A3C:
	mov.l @(0xD8,PC),r5
	mov 0x08,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b5a4e
	mov.w @(0xB0,PC),r0
	bra loc_8c1b5a74
	nop

loc_8c1B5A4E:
	mov.l @(0xCC,PC),r5
	mov 0x08,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b5a60
	mov.w @(0xA0,PC),r0
	bra loc_8c1b5a74
	nop

loc_8c1B5A60:
	mov.l @(0xBC,PC),r5
	mov 0x08,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b5a72
	mov.w @(0x90,PC),r0
	bra loc_8c1b5a74
	nop

loc_8c1B5A72:
	mov 0x00,r0

loc_8c1B5A74:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B5A7C:
	tst r4,r4
	bf loc_8c1b5a84
	rts
	mov 0x00,r0

loc_8c1B5A84:
	mov 0x4B,r2
	cmp/hi r2,r4
	bt loc_8c1b5a8e
	rts
	mov 0x01,r0

loc_8c1B5A8E:
	mov.w @(0x70,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5a98
	rts
	mov 0x02,r0

loc_8c1B5A98:
	mov.w @(0x68,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5aa2
	rts
	mov 0x03,r0

;==============================================
loc_8c1B5AA2:
	mov.w @(0x60,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5aac
	rts
	mov 0x04,r0

;==============================================
loc_8c1B5AAC:
	mov.w @(0x58,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5ab6
	rts
	mov 0x05,r0

loc_8c1B5AB6:
	mov.w @(0x50,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5ac0
	rts
	mov 0x06,r0

loc_8c1B5AC0:
	mov.w @(0x48,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5aca
	rts
	mov 0x07,r0

loc_8c1B5ACA:
	mov.w @(0x40,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5ad4
	rts
	mov 0x08,r0

loc_8c1B5Ad4:
	mov.w @(0x38,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5ade
	rts
	mov 0x0B,r0

loc_8c1B5Ade:
	mov.w @(0x30,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5ae8
	rts
	mov 0x0C,r0

loc_8c1B5Ae8:
	mov.w @(0x28,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5af2
	rts
	mov 0x0D,r0

loc_8c1B5Af2:
	mov.w @(0x20,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b24
	rts
	mov 0x0E,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b5afc:
	#data 0x0080
loc_8c1b5afe:
	#data 0x0100
loc_8c1b5b00:
	#data 0x0200
loc_8c1b5b02:
	#data 0x012C
loc_8c1b5b04:
	#data 0x0258
loc_8c1b5b06:
	#data 0x04B0
loc_8c1b5b08:
	#data 0x0960
loc_8c1b5b0a:
	#data 0x12C0
loc_8c1b5b0c:
	#data 0x1C20
loc_8c1b5b0e:
	#data 0x2580
loc_8c1b5b10:
	#data 0x2EE0
loc_8c1b5b12:
	#data 0x3840
loc_8c1b5b14:
	#data 0x41A0
loc_8c1b5b16:
	#data 0x4B00
	#align4

loc_8c1B5B18:
	#data bank1c.loc_8c1c8600
loc_8c1B5B1C:
	#data bank1c.loc_8c1c860C
loc_8c1B5B20:
	#data bank1c.loc_8c1c8618

;==============================================
loc_8c1B5B24:
	mov.w @(0xB0,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b2e
	rts
	mov 0x15,r0

loc_8c1B5B2e:
	mov.w @(0xA8,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b38
	rts
	mov 0x16,r0

loc_8c1B5B38:
	mov.w @(0xA0,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b42
	rts
	mov 0x17,r0

loc_8c1B5B42:
	mov.w @(0x98,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b4c
	rts
	mov 0x18,r0

loc_8c1B5B4c:
	mov.w @(0x90,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b56
	rts
	mov 0x19,r0

loc_8c1B5B56:
	mov.w @(0x88,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b60
	rts
	mov 0x1A,r0

loc_8c1B5B60:
	mov.w @(0x80,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b6a
	rts
	mov 0x1C,r0

loc_8c1B5B6a:
	mov.w @(0x78,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b74
	rts
	mov 0x1D,r0

loc_8c1B5B74:
	mov.w @(0x70,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b7e
	rts
	mov 0x1E,r0

loc_8c1B5B7e:
	mov.l @(0x6C,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b88
	rts
	mov 0x1F,r0

loc_8c1B5B88:
	mov.l @(0x64,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b92
	rts
	mov 0x20,r0

loc_8c1B5B92:
	mov.l @(0x60,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5b9c
	rts
	mov 0x21,r0

loc_8c1B5B9c:
	mov.l @(0x58,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5ba6
	rts
	mov 0x22,r0

loc_8c1B5Ba6:
	mov.l @(0x54,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5bb0
	rts
	mov 0x23,r0

loc_8c1B5Bb0:
	mov.l @(0x4C,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5bba
	rts
	mov 0x24,r0

loc_8c1B5Bba:
	mov.l @(0x48,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5bc4
	rts
	mov 0x25,r0

loc_8c1B5Bc4:
	mov.l @(0x40,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5bce
	rts
	mov 0x27,r0

loc_8c1B5Bce:
	mov.l @(0x3C,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c10
	rts
	mov 0x28,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b5bd8:
	#data 0x5460
loc_8c1b5bda:
	#data 0x5DC0
loc_8c1b5bdc:
	#data 0x6720
loc_8c1b5bde:
	#data 0x6D60
loc_8c1b5be0:
	#data 0x7080
loc_8c1b5be2:
	#data 0x7295
loc_8c1b5be4:
	#data 0x77CB
loc_8c1b5be6:
	#data 0x79E0
loc_8c1b5be8:
	#data 0x7D00
	#align4

loc_8c1b5bec:
	#data 0x00008235
loc_8c1b5bf0:
	#data 0x00008340
loc_8c1b5bf4:
	#data 0x000084D0
loc_8c1b5bf8:
	#data 0x0000876B
loc_8c1b5bfc:
	#data 0x00008CA0
loc_8c1b5c00:
	#data 0x000091D5
loc_8c1b5c04:
	#data 0x00009470
loc_8c1b5c08:
	#data 0x0000970B
loc_8c1b5c0c:
	#data 0x00009C40

;==============================================
loc_8c1B5C10:
	mov.l @(0xAC,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c1a
	rts
	mov 0x29,r0

loc_8c1b5c1a:
	mov.l @(0xA8,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c24
	rts
	mov 0x2A,r0

loc_8c1b5c24:
	mov.l @(0xA0,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c2e
	rts
	mov 0x2B,r0

loc_8c1b5c2e:
	mov.l @(0x9C,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c38
	rts
	mov 0x2C,r0

loc_8c1b5c38:
	mov.l @(0x94,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c42
	rts
	mov 0x2D,r0

loc_8c1b5c42:
	mov.l @(0x90,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c4c
	rts
	mov 0x2E,r0

loc_8c1b5c4c:
	mov.l @(0x88,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c56
	rts
	mov 0x2F,r0

loc_8c1B5C56:
	mov.l @(0x84,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c60
	rts
	mov 0x30,r0

loc_8c1B5C60:
	mov.l @(0x7C,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c6a
	rts
	mov 0x31,r0

loc_8c1B5C6a:
	mov.l @(0x78,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c74
	rts
	mov 0x32,r0

loc_8c1B5C74:
	mov.l @(0x70,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c7e
	rts
	mov 0x33,r0

loc_8c1B5C7e:
	mov.l @(0x6C,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c88
	rts
	mov 0x34,r0

loc_8c1B5C88:
	mov.l @(0x64,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c92
	rts
	mov 0x35,r0

loc_8c1B5C92:
	mov.l @(0x60,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5c9c
	rts
	mov 0x36,r0

loc_8c1B5C9c:
	mov.l @(0x58,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5ca6
	rts
	mov 0x37,r0

loc_8c1B5Ca6:
	mov.l @(0x54,PC),r2
	cmp/hi r2,r4
	bt loc_8c1b5cb0
	rts
	mov 0x38,r0

loc_8c1B5Cb0:
	mov.w @(0xA,PC),r0
	rts
	nop

;==============================================
loc_8c1B5CB6:
	tst r4,r4
	bf loc_8c1b5d00
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B5Cbe:
	#data 0x00FF
	#align4

loc_8c1B5Cc0:
	#data 0x0000A175
loc_8c1B5Cc4:
	#data 0x0000A410
loc_8c1B5Cc8:
	#data 0x0000A6AB
loc_8c1B5Ccc:
	#data 0x0000ABE0
loc_8c1B5Cd0:
	#data 0x0000B115
loc_8c1B5Cd4:
	#data 0x0000B3B0
loc_8c1B5Cd8:
	#data 0x0000B64B
loc_8c1B5Cdc:
	#data 0x0000BB80
loc_8c1B5Ce0:
	#data 0x0000C0B5
loc_8c1B5Ce4:
	#data 0x0000C350
loc_8c1B5Ce8:
	#data 0x0000C5EB
loc_8c1B5Cec:
	#data 0x0000CB20
loc_8c1B5Cf0:
	#data 0x0000D055
loc_8c1B5Cf4:
	#data 0x0000D2F0
loc_8c1B5Cf8:
	#data 0x0000D58B
loc_8c1B5Cfc:
	#data 0x0000DAC0

;==============================================
loc_8c1B5D00:
	mov.l @(0xF8,PC),r2
	cmp/eq r2,r4
	bf loc_8c1b5d0a
	rts
	mov 0x38,r0

loc_8c1B5D0a:
	mov.l @(0xF4,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d14
	rts
	mov 0x37,r0

loc_8c1B5D14:
	mov.l @(0xEC,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d1e
	rts
	mov 0x36,r0

loc_8c1B5D1e:
	mov.l @(0xE8,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d28
	rts
	mov 0x35,r0

loc_8c1B5D28:
	mov.l @(0xE0,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d32
	rts
	mov 0x34,r0

loc_8c1B5D32:
	mov.l @(0xDC,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d3c
	rts
	mov 0x33,r0

loc_8c1B5D3c:
	mov.l @(0xD4,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d46
	rts
	mov 0x32,r0

loc_8c1B5D46:
	mov.l @(0xD0,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d50
	rts
	mov 0x31,r0

loc_8c1B5D50:
	mov.l @(0xC8,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d5a
	rts
	mov 0x30,r0

loc_8c1B5D5a:
	mov.l @(0xC4,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d64
	rts
	mov 0x2F,r0

loc_8c1B5D64:
	mov.l @(0xBC,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d6e
	rts
	mov 0x2E,r0

loc_8c1B5D6e:
	mov.l @(0xB8,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d78
	rts
	mov 0x2D,r0

loc_8c1B5D78:
	mov.l @(0xB0,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d82
	rts
	mov 0x2C,r0

loc_8c1B5D82:
	mov.l @(0xAC,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d8c
	rts
	mov 0x2B,r0

loc_8c1B5D8c:
	mov.l @(0xA4,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5d96
	rts
	mov 0x2A,r0

loc_8c1B5D96:
	mov.l @(0xA0,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5da0
	rts
	mov 0x29,r0

loc_8c1B5Da0:
	mov.l @(0x98,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5daa
	rts
	mov 0x28,r0

loc_8c1B5Daa:
	mov.l @(0x94,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5db4
	rts
	mov 0x27,r0

loc_8c1B5Db4:
	mov.l @(0x8C,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5dbe
	rts
	mov 0x25,r0

loc_8c1B5Dbe:
	mov.l @(0x88,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5dc8
	rts
	mov 0x24,r0

loc_8c1B5Dc8:
	mov.l @(0x80,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5dd2
	rts
	mov 0x23,r0

loc_8c1B5Dd2:
	mov.l @(0x7C,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5ddc
	rts
	mov 0x22,r0

loc_8c1B5Ddc:
	mov.l @(0x74,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5de6
	rts
	mov 0x21,r0

loc_8c1B5De6:
	mov.l @(0x70,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5df0
	rts
	mov 0x20,r0

loc_8c1B5Df0:
	mov.l @(0x68,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5e60
	rts
	mov 0x1F,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1b5dfc:
	#data 0x0000DAC0
loc_8c1b5e00:
	#data 0x0000D58A
loc_8c1b5e04:
	#data 0x0000D2F0
loc_8c1b5e08:
	#data 0x0000D055
loc_8c1b5e0c:
	#data 0x0000CB20
loc_8c1b5e10:
	#data 0x0000C5EA
loc_8c1b5e14:
	#data 0x0000C350
loc_8c1b5e18:
	#data 0x0000C0B5
loc_8c1b5e1c:
	#data 0x0000BB80
loc_8c1b5e20:
	#data 0x0000B64A
loc_8c1b5e24:
	#data 0x0000B3B0
loc_8c1b5e28:
	#data 0x0000B115
loc_8c1b5e2c:
	#data 0x0000ABE0
loc_8c1b5e30:
	#data 0x0000A6AA
loc_8c1b5e34:
	#data 0x0000A410
loc_8c1b5e38:
	#data 0x0000A175
loc_8c1b5e3c:
	#data 0x00009C40
loc_8c1b5e40:
	#data 0x0000970A
loc_8c1b5e44:
	#data 0x00009470
loc_8c1b5e48:
	#data 0x000091D5
loc_8c1b5e4c:
	#data 0x00008CA0
loc_8c1b5e50:
	#data 0x0000876A
loc_8c1b5e54:
	#data 0x000084D0
loc_8c1b5e58:
	#data 0x00008340
loc_8c1b5e5c:
	#data 0x00008235

;==============================================
loc_8c1B5E60:
	mov.w @(0xBA,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5e6a
	rts
	mov 0x1E,r0

loc_8c1B5E6a:
	mov.w @(0xB2,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5e74
	rts
	mov 0x1D,r0

loc_8c1B5E74:
	mov.w @(0xAA,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5e7e
	rts
	mov 0x1C,r0

loc_8c1B5E7e:
	mov.w @(0xA2,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5e88
	rts
	mov 0x1A,r0

loc_8c1B5E88:
	mov.w @(0x9A,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5e92
	rts
	mov 0x19,r0

loc_8c1B5E92:
	mov.w @(0x92,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5e9c
	rts
	mov 0x18,r0

loc_8c1B5E9c:
	mov.w @(0x8A,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5ea6
	rts
	mov 0x17,r0

loc_8c1B5Ea6:
	mov.w @(0x82,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5eb0
	rts
	mov 0x16,r0

loc_8c1B5Eb0:
	mov.w @(0x7A,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5eba
	rts
	mov 0x15,r0

loc_8c1B5Eba:
	mov.w @(0x72,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5ec4
	rts
	mov 0x0E,r0

loc_8c1B5Ec4:
	mov.w @(0x6A,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5ece
	rts
	mov 0x0D,r0

loc_8c1B5Ece:
	mov.w @(0x62,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5ed8
	rts
	mov 0x0C,r0

loc_8c1B5Ed8:
	mov.w @(0x5A,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5ee2
	rts
	mov 0x0B,r0

loc_8c1B5Ee2:
	mov.w @(0x52,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5eec
	rts
	mov 0x08,r0

loc_8c1B5Eec:
	mov.w @(0x4A,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5ef6
	rts
	mov 0x07,r0

loc_8c1B5Ef6:
	mov.w @(0x42,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5f00
	rts
	mov 0x06,r0

loc_8c1B5f00:
	mov.w @(0x3A,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5f0a
	rts
	mov 0x05,r0

loc_8c1B5f0a:
	mov.w @(0x32,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5f14
	rts
	mov 0x04,r0

loc_8c1B5f14:
	mov.w @(0x2A,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5f44
	rts
	mov 0x03,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B5F1e:
	#data 0x7D00
loc_8c1B5F20:
	#data 0x79E0
loc_8c1B5F22:
	#data 0x77CA
loc_8c1B5F24:
	#data 0x7295
loc_8c1B5F26:
	#data 0x7080
loc_8c1B5F28:
	#data 0x6D60
loc_8c1B5F2a:
	#data 0x6720
loc_8c1B5F2c:
	#data 0x5DC0
loc_8c1B5F2e:
	#data 0x5460
loc_8c1B5F30:
	#data 0x4B00
loc_8c1B5F32:
	#data 0x41A0
loc_8c1B5F34:
	#data 0x3840
loc_8c1B5F36:
	#data 0x2EE0
loc_8c1B5F38:
	#data 0x2580
loc_8c1B5F3a:
	#data 0x1C20
loc_8c1B5F3c:
	#data 0x12C0
loc_8c1B5F3e:
	#data 0x0960
loc_8c1B5F40:
	#data 0x04B0
loc_8c1B5F42:
	#data 0x0258

;==============================================
loc_8c1B5F44:
	mov.w @(0xD8,PC),r2
	cmp/hs r2,r4
	bf loc_8c1b5f4e
	rts
	mov 0x02,r0

loc_8c1B5F4e:
	mov 0x4B,r2
	cmp/hs r2,r4
	bf loc_8c1b5f58
	rts
	mov 0x01,r0

loc_8c1B5F58:
	mov.w @(0xC6,PC),r0
	rts
	nop

;==============================================
loc_8c1B5F5E:
	mov.l r14,@-r15
	mov.l @(loc_8c1B6024,pc),r14 ; r14 set to 0x8C34BC14
	sts.l pr,@-r15
	mov.b r4,@r14 ; r14 ??? bc r4 is ???
	exts.b r4,r4
	tst r4,r4
	bt loc_8c1B5F88
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.w r0,@(0x08,r14)
	mov.l @(loc_8c1B6028,pc),r3 ; r3 set to 0x8C1A0D48
	jsr @r3
	add 0x04,r4
	mov.w r0,@(0x0A,r14)
	mov.w @(0x0A,r14),r0
	tst r0,r0
	bf loc_8c1B5F8E
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B5F88:
	mov.l @(loc_8c1B602C,pc),r3 ; r3 set to 0x8C1AFE8A
	jsr @r3
	nop

loc_8c1B5F8E:
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B5F96:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x88,PC),r14
	sts.l pr,@-r15
	mov.b @r14,r3
	tst r3,r3
	bt.s loc_8c1b5fe2
	mov r4,r13
	bra loc_8c1b5fd8
	nop

loc_8c1B5FAA:
	mov.w @(0x8,r14),r0
	mov r0,r3
	mov.w @(0xA,r14),r0
	cmp/hs r0,r3
	bt loc_8c1b5fc6
	mov.l @(0x4,r14),r3
	add 0x01,r3
	mov.l r3,@(0x4,r14)
	mov.b @r13+,r2
	mov.b r2,@-r3
	mov.w @(0x8,r14),r0
	add 0x01,r0
	bra loc_8c1b5fd8
	mov.w r0,@(0x8,r14)

loc_8c1B5FC6:
	bsr loc_8c1b600c
	nop
	bsr loc_8c1b5f5e
	mov 0x01,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b5fd8
	bra loc_8c1b5fea
	mov 0x00,r0

loc_8c1B5FD8:
	mov.b @r13,r3
	tst r3,r3
	bf loc_8c1b5faa
	bra loc_8c1b5fe8
	nop

loc_8c1B5FE2:
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r13,r4

loc_8c1B5FE8:
	mov 0x01,r0

loc_8c1B5FEA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B5FF2:
	mov.l r14,@-r15
	mov.l @(0x3C,PC),r14
	mov.l @(0x40,PC),r3
	mov r14,r4
	mov.b @r3,r2
	mov.b r2,@r14
	mov.l @(0x3C,PC),r1
	mov.b @r1,r0
	mov.b r0,@(0x1,r14)
	mov 0x00,r0
	mov.b r0,@(0x2,r14)
	bra loc_8c1b5f96
	mov.l @r15+,r14

;==============================================
loc_8c1B600C:
	mov.l @(loc_8c1B6024,pc),r2 ; r2 set to 0x8C34BC14
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1B601C
	mov.l @(loc_8c1B6044,pc),r1 ; r1 set to 0x8C1A0D92
	mov.l @(loc_8c1B6040,pc),r3 ; r3 set to 0x8C34BC1C
	jmp @r1
	mov.w @r3,r4

loc_8c1B601C:
	rts
	nop

;==============================================
loc_8c1B6020:
	#data 0x012C
loc_8c1B6022:
	#data 0x00FF
	#align4

loc_8c1B6024:
	#data 0x8C34BC14
loc_8c1B6028:
	#data bank1a.loc_8c1a0D48
loc_8c1B602C:
	#data bank1a.loc_8c1aFE8A
loc_8c1B6030:
	#data bank1a.loc_8c1aECDC
loc_8c1B6034:
	#data 0x8C34BC72
loc_8c1B6038:
	#data 0x8C34AF53
loc_8c1B603c:
	#data 0x8C34B037
loc_8c1B6040:
	#data 0x8C34BC1C
loc_8c1B6044:
	#data bank1a.loc_8c1a0D92

;==============================================
loc_8c1B6048:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	add 0xFC,r15
	jsr @r3
	nop
	mov.b r0,@r15
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b6062
	mov.l @(0x84,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c1B6062:
	mov.l @(0x84,PC),r3
	mov 0x00,r14
	mov.b r14,@r3
	mov.l @(0x80,PC),r2
	mov.b r14,@r2
	mov.l @(0x80,PC),r1
	mov.w r14,@r1
	mov.l @(0x80,PC),r3
	mov.w r14,@r3
	mov.l @(0x80,PC),r4
	mov.w @(0x62,PC),r6
	mov.l @(0x80,PC),r2
	jsr @r2
	mov r14,r5
	mov.l @(0x84,PC),r3
	mov.l @(0x7C,PC),r4
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1b60a2
	cmp/eq 0x01,r0
	bt loc_8c1b60a2
	cmp/eq 0x02,r0
	bt loc_8c1b60a2
	cmp/eq 0x08,r0
	bt loc_8c1b60b8
	cmp/eq 0x09,r0
	bt loc_8c1b60b8
	cmp/eq 0x0C,r0
	bt loc_8c1b60b0
	bra loc_8c1b60c2
	nop

loc_8c1B60A2:
	mov r14,r0
	nop
	mov.l @(0x60,PC),r2
	jsr @r2
	mov.w r0,@(0x4,r4)
	bra loc_8c1b60c2
	nop

loc_8c1B60B0:
	mov.l @(0x58,PC),r1
	mov 0x08,r2
	bra loc_8c1b60c2
	mov.b r2,@r1

loc_8c1B60B8:
	mov r14,r0
	nop
	mov.l @(0x50,PC),r2
	jsr @r2
	mov.w r0,@(0x4,r4)

loc_8c1B60C2:
	mov.b @r15,r2
	tst r2,r2
	bt loc_8c1b60d4
	add 0x04,r15
	mov.l @(0x18,PC),r3
	lds.l @r15+,pr
	mov.l @(0x44,PC),r4
	jmp @r3
	mov.l @r15+,r14

loc_8c1B60D4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B60dc:
	#data 0x0920
	#align4

loc_8c1B60E0:
	#data bank1a.loc_8c1a00C4
loc_8c1B60E4:
	#data bank1a.loc_8c1a00CA
loc_8c1B60e8:
	#data 0x8C34BC78
loc_8c1B60ec:
	#data 0x8C34BC7A
loc_8c1B60F0:
	#data 0x8C34CECE
loc_8c1B60F4:
	#data 0x8C34CED0
loc_8c1B60F8:
	#data 0x8C34BC8E
loc_8c1B60FC:
	#data bank12.loc_8c129728
loc_8c1B6100:
	#data 0x8C34BC84
loc_8c1B6104:
	#data 0x8C34BB40
loc_8c1B6108:
	#data bank1c.loc_8c1c0A60
loc_8c1B610c:
	#data 0x8C34BB78
loc_8c1B6110:
	#data bank1c.loc_8c1c134C
loc_8c1B6114:
	#data bank19.loc_8c19F0BA

;==============================================
loc_8c1B6118:
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	add 0xFC,r15
	jsr @r3
	nop
	mov.b r0,@r15
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b6130
	mov.l @(0x84,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c1B6130:
	mov.l @(0x80,PC),r3
	mov 0x00,r4
	mov.b r4,@r3
	mov.l @(0x80,PC),r2
	mov.b r4,@r2
	mov.l @(0x80,PC),r1
	mov.w r4,@r1
	mov.l @(0x80,PC),r3
	mov.w r4,@r3
	mov.l @(0x84,PC),r2
	mov.w @(0x62,PC),r6
	mov.l @(0x7C,PC),r4
	jsr @r2
	mov 0x00,r5
	mov.l @(0x80,PC),r3
	mov.l @(0x7C,PC),r5
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c1b6172
	mov 0x04,r4
	cmp/eq 0x01,r0
	bt loc_8c1b6172
	cmp/eq 0x02,r0
	bt loc_8c1b6172
	cmp/eq 0x08,r0
	bt loc_8c1b6188
	cmp/eq 0x09,r0
	bt loc_8c1b6188
	cmp/eq 0x0C,r0
	bt loc_8c1b6180
	bra loc_8c1b6192
	nop

loc_8c1B6172:
	mov r4,r0
	nop
	mov.l @(0x5C,PC),r2
	jsr @r2
	mov.w r0,@(0x4,r5)
	bra loc_8c1b6192
	nop

loc_8c1B6180:
	mov.l @(0x54,PC),r1
	mov 0x08,r2
	bra loc_8c1b6192
	mov.b r2,@r1

loc_8c1B6188:
	mov r4,r0
	nop
	mov.l @(0x4C,PC),r2
	jsr @r2
	mov.w r0,@(0x4,r5)

loc_8c1B6192:
	mov.b @r15,r2
	tst r2,r2
	bt loc_8c1b61a2
	mov.l @(0x14,PC),r3
	add 0x04,r15
	mov.l @(0x40,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c1B61A2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B61Aa:
	#data 0x0920
	#align4

loc_8c1B61AC:
	#data bank1a.loc_8c1a00C4
loc_8c1B61B0:
	#data bank1a.loc_8c1a00CA
loc_8c1B61B4:
	#data 0x8C34BC79
loc_8c1B61B8:
	#data 0x8C34BC7B
loc_8c1B61Bc:
	#data 0x8C34CED2
loc_8c1B61C0:
	#data 0x8C34CED4
loc_8c1B61C4:
	#data 0x8C34C5AE
loc_8c1B61C8:
	#data bank12.loc_8c129728
loc_8c1B61Cc:
	#data 0x8C34BC7C
loc_8c1B61D0:
	#data 0x8C34BB40
loc_8c1B61D4:
	#data bank1c.loc_8c1c0A24
loc_8c1B61D8:
	#data 0x8C34BB67
loc_8c1B61DC:
	#data bank1c.loc_8c1c1368
loc_8c1B61E0:
	#data bank19.loc_8c19F0BA

;==============================================
loc_8c1B61E4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0xE4,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	add 0xFC,r15
	bt.s loc_8c1b620c
	mov 0x40,r14
	cmp/eq 0x1B,r0
	bt loc_8c1b620c
	mov.l @(0xD4,PC),r2
	mov.w @r2,r1
	extu.w r1,r1
	cmp/gt r14,r1
	bf loc_8c1b620c
	mov.l @(0xD0,PC),r1
	jsr @r1
	mov 0x04,r4

loc_8c1B620C:
	mov.l @(0xCC,PC),r5
	mov 0x00,r4
	mov 0x07,r1
	mov r4,r13
	mov r5,r7
	mov.l r5,@r15
	mov.w @(0xB0,PC),r6

loc_8c1B621A:
	mov.w @(0x2,r7),r0
	extu.w r0,r0
	cmp/gt r14,r0
	bf.s loc_8c1b622c
	add 0x01,r13
	mov.b r4,@r5
	mov r4,r0
	nop
	mov.w r0,@(0x2,r5)

loc_8c1B622C:
	extu.b r13,r3
	cmp/gt r1,r3
	add r6,r5
	bf.s loc_8c1b621a
	add r6,r7
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B6240:
	sts.l pr,@-r15
	bsr loc_8c1B6EA4
	nop
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B624C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov.l @(loc_8c1B62D0,pc),r3 ; r3 set to 0x8C34BB40
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8c1B627E
	mov 0x01,r12 ; r12 set to 0x01
	cmp/eq 0x01,r0
	bt loc_8c1B627E
	cmp/eq 0x02,r0
	bt loc_8c1B627E
	cmp/eq 0x12,r0
	bt loc_8c1B627E
	bra loc_8c1B628E
	nop

loc_8c1b627e:
	mov.l @(loc_8C1B62E0,pc),r1
	mov.b @r1,r2
	extu.b r2,r2
	cmp/gt r12,r2
	bt loc_8c1b628e
	mov.l @(loc_8c1b62e4,pc),r2
	jsr @r2
	nop

loc_8c1B628E:
	mov.l @(loc_8c1B62EC,pc),r14 ; r14 set to 0x8C34BC78
	mov 0x00,r9 ; r9 set to 0x00
	mov.w @(loc_8c1B62CC,pc),r3 ; r3 set to 0x124
	mov 0x02,r10 ; r10 set to 0x02
	mov.b @r14,r0
	mov.l @(loc_8c1B62E8,pc),r13 ; r13 set to 0x8C34BC8E
	extu.b r0,r0
	muls.w r3,r0
	sts macl,r0
	exts.w r0,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	tst 0x04,r0
	bf/s loc_8c1B633E
	mov 0x03,r11 ; r11 set to 0x03
	mov.l @(loc_8c1B62F0,pc),r8 ; r8 set to 0x8C1B3BE8
	bra loc_8c1B6328
	nop

loc_8c1B62B2:
	mov.b @r14,r4
	mov.w @(0x14,PC),r3
	extu.b r4,r4
	muls.w r3,r4
	sts macl,r4
	exts.w r4,r4
	add r13,r4
	jsr @r8
	mov.w @(r0,r4),r4
	mov r10,r5
	mov r12,r6
	bra loc_8c1b6310
	mov 0x00,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B62CC:
	#data 0x0124
	#align4

loc_8c1B62D0:
	#data 0x8C34BB40
loc_8c1B62D4:
	#data 0x8C34BB68
loc_8c1B62D8:
	#data bank1c.loc_8c1c1634
loc_8c1B62Dc:
	#data 0x8C34C5AE
loc_8c1b62e0:
	#data 0x8C34BB41
loc_8c1B62E4:
	#data bank1c.loc_8c1c0CFA
loc_8c1B62E8:
	#data 0x8C34BC8E
loc_8c1B62EC:
	#data 0x8C34BC78
loc_8c1B62F0:
	#data loc_8c1B3BE8

;==============================================
loc_8c1B62F4:
	mov.b @r14,r0
	add 0x01,r6
	mov.w @(0xF4,PC),r3
	extu.b r0,r0
	mov.w @(0xF2,PC),r2
	muls.w r3,r0
	sts macl,r0
	exts.w r0,r0
	add r13,r0
	add r2,r0
	mov.w @(r0,r5),r3
	add 0x02,r5
	mov.w r3,@(r0,r4)
	add 0x02,r4

loc_8c1B6310:
	extu.b r6,r2
	cmp/gt r11,r2
	bf loc_8c1b62f4
	mov.b @r14,r2
	mov.w @(0xD4,PC),r3
	extu.b r2,r2
	mov.w @(0xD4,PC),r0
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	add r13,r2
	mov.w r9,@(r0,r2)

loc_8c1b6328:
	mov.b @r14,r3
	mov.w @(loc_8C1B63F0,pc),r2
	extu.b r3,r3
	mov.w @(loc_8C1B63F2,pc),r0
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r13,r3
	mov.w @(r0,r3),r1
	tst r1,r1
	bf loc_8c1b62b2

loc_8c1b633e:
	mov.l @r15,r2
	bsr loc_8c1b6e98
	mov.w r9,@r2
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1b638c
	mov.b @r14,r2
	mov.w @(loc_8C1B63F0,pc),r1
	extu.b r2,r2
	mov.l @(0x04,r15),r3
	muls.w r1,r2
	sts macl,r2
	exts.w r2,r2
	add r13,r2
	mov r2,r0
	nop
	add 0x04,r0
	mov.l r0,@r3
	mov.b @r14,r2
	mov.l @r15,r3
	extu.b r2,r2
	muls.w r1,r2
	sts macl,r2
	exts.w r2,r2
	add r13,r2
	mov.w @(0x02,r2),r0
	mov.w r0,@r3
	mov.b @r14,r3
	mov.w @(loc_8C1B63F0,pc),r2
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r13,r3
	mov.b @r3,r14
	mov 0x0B,r3
	extu.b r14,r13
	tst r13,r3
	bf loc_8c1b6390

loc_8c1b638c:
	bra loc_8c1b63dc
	mov 0x00,r0

loc_8c1b6390:
	mov.l @(loc_8C1B63F8,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bt loc_8c1b63a8
	mov.l @r15,r0
	bsr loc_8c1b6424
	mov.w r9,@r0
	mov.l @(loc_8C1B63FC,pc),r4
	mov.w @r4,r3
	add 0x01,r3
	mov.w r3,@r4

loc_8c1b63a8:
	mov r13,r2
	tst r12,r2
	bt loc_8c1b63b2
	bra loc_8c1b63d8
	mov r12,r14

loc_8c1b63b2:
	mov r13,r3
	tst r10,r3
	bt loc_8c1b63bc
	bra loc_8c1b63d8
	mov r10,r14

loc_8c1b63bc:
	mov 0x08,r2
	tst r13,r2
	bt loc_8c1b63c6
	bra loc_8c1b63d8
	mov r11,r14

loc_8c1b63c6:
	mov 0x10,r3
	tst r13,r3
	bt loc_8c1b63d0
	bra loc_8c1b63d8
	mov 0x04,r14

loc_8c1b63d0:
	mov 0x20,r2
	tst r2,r13
	bt loc_8c1b63d8
	mov 0x05,r14

loc_8c1b63d8:
	mov r14,r0
	nop

loc_8c1b63dc:
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
loc_8C1B63F0:
	#data 0x0124
loc_8C1B63F2:
	#data 0x011C
loc_8C1B63F4:
	#data 0x0122
	#align4

loc_8C1B63F8:
	#data 0x8C34BB40
loc_8C1B63FC:
	#data 0x8C34CEDE

;==============================================
loc_8c1B6400:
	mov.l @(loc_8c1B649C,pc),r3 ; r3 set to 0x8C34BB40
	mov.b @r3,r4
	extu.b r4,r0
	cmp/eq 0x08,r0
	bt/s loc_8c1B6418
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x09,r0
	bt loc_8c1B6418
	rts
	mov 0x00,r0

;==============================================
loc_8c1B6418:
	mov.l @(loc_8c1B64A0,pc),r5 ; r5 set to 0x8C34CEDE
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @r5,r0
	mov.w r3,@r5 ; r5 ??
	rts
	nop

;==============================================
loc_8c1B6424:
	sts.l pr,@-r15
	bsr loc_8c1b6e98
	nop
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1b6468
	mov.l @(0x74,PC),r4
	mov 0x00,r5
	mov.w @(0x62,PC),r2
	mov.b @r4,r3
	mov.l @(0x68,PC),r6
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r6,r3
	mov.b r5,@r3
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r6,r3
	mov r5,r0
	nop
	mov.w r0,@(0x2,r3)
	mov.b @r4,r0
	add 0x01,r0
	and 0x07,r0
	mov.b r0,@r4
	mov.l @(0x48,PC),r4
	mov.w @r4,r3
	add 0x01,r3
	mov.w r3,@r4

loc_8c1B6468:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B646E:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov r6,r10
	mov.l r9,@-r15
	extu.b r12,r9
	mov.l r8,@-r15
	tst r9,r9
	sts.l pr,@-r15
	mov.l @(0x24,PC),r11
	bt.s loc_8c1b6496
	mov 0x00,r13
	mov r9,r0
	nop
	cmp/eq 0x1B,r0
	bf loc_8c1b64b4

loc_8c1B6496:
	bra loc_8c1b64b6
	mov.b r7,@r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B649a:
	#data 0x0124
	#align4

loc_8c1B649C:
	#data 0x8C34BB40
loc_8c1B64A0:
	#data 0x8C34CEDE
loc_8c1B64A4:
	#data 0x8C34BC8E
loc_8c1B64A8:
	#data 0x8C34BC78
loc_8c1B64Ac:
	#data 0x8C34CED0
loc_8c1B64b0:
	#data 0x8C34BB64

;==============================================
loc_8c1B64B4:
	mov.b r13,@r11

loc_8c1B64B6:
	mov 0x28,r0
	mov.l @(0xF4,PC),r1
	mov.l @(0xF0,PC),r3
	mov.b @(r0,r15),r2
	jsr @r1
	mov.b r2,@r3
	mov.l @(0xF0,PC),r3
	extu.b r12,r0
	cmp/eq 0x00,r0
	mov 0x04,r4
	mov.b r13,@r3
	mov.l @(0xF0,PC),r8
	mov.l @(0xF4,PC),r2
	mov.l @(0xE4,PC),r7
	mov.l @(0xE8,PC),r6
	bt.s loc_8c1b6514
	mov.b r12,@r2
	cmp/eq 0x01,r0
	bt loc_8c1b6514
	cmp/eq 0x02,r0
	bt loc_8c1b6514
	cmp/eq 0x03,r0
	bf loc_8c1b64e8
	bra loc_8c1b65f4
	nop

loc_8c1B64E8:
	cmp/eq 0x07,r0
	bf loc_8c1b64f0
	bra loc_8c1b65f4
	nop

loc_8c1B64F0:
	cmp/eq 0x08,r0
	bt loc_8c1b655c
	cmp/eq 0x09,r0
	bt loc_8c1b655c
	cmp/eq 0x0C,r0
	bt loc_8c1b658e
	cmp/eq 0x12,r0
	bt loc_8c1b6514
	cmp/eq 0x1A,r0
	bt loc_8c1b65f4
	cmp/eq 0x1B,r0
	bt loc_8c1b65f4
	cmp/eq 0x1D,r0
	bt loc_8c1b655c
	cmp/eq 0x65,r0
	bt loc_8c1b6514
	bra loc_8c1b65ec
	nop

loc_8c1B6514:
	mov 0x01,r0
	mov.l @(0xB0,PC),r1
	extu.b r14,r3
	cmp/gt r0,r3
	bt.s loc_8c1b6540
	mov.b r14,@r1
	mov.l @(0xA8,PC),r2
	jsr @r2
	nop
	mov.l @(0xA8,PC),r3
	mov r14,r5
	mov.b @r11,r7
	mov r10,r6
	jsr @r3
	mov r12,r4
	mov.l @(0xA0,PC),r2
	jsr @r2
	mov 0x08,r4
	mov 0x00,r5
	mov r14,r6
	bra loc_8c1b65a0
	mov 0x01,r4

loc_8c1B6540:
	mov r13,r0
	nop
	mov.w r0,@(0x4,r6)
	mov r4,r0
	nop
	mov.w r0,@(0x4,r7)
	mov r14,r5
	mov.l @(0x80,PC),r3
	mov r10,r6
	mov.b @r11,r7
	jsr @r3
	mov r12,r4
	bra loc_8c1b6582
	nop

loc_8c1B655C:
	mov.l @(0x7C,PC),r5
	mov.l @(0x78,PC),r1
	mov r9,r0
	nop
	cmp/eq 0x08,r0
	bf.s loc_8c1b6570
	mov.w r13,@r1
	mov 0x02,r0
	bra loc_8c1b6572
	mov.b r0,@r5

loc_8c1B6570:
	mov.b r4,@r5

loc_8c1B6572:
	mov r4,r0
	nop
	mov.w r0,@(0x4,r7)
	mov r13,r0
	nop
	mov.l @(0x60,PC),r3
	jsr @r3
	mov.w r0,@(0x4,r6)

loc_8c1B6582:
	mov 0x00,r5
	mov r14,r6
	jsr @r8
	mov r5,r4
	bra loc_8c1b65f4
	nop

loc_8c1B658E:
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x50,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x03,r4
	mov r14,r6
	mov 0x00,r5

loc_8c1B65A0:
	jsr @r8
	nop
	mov.l @(0xC,PC),r2
	mov 0x01,r3
	bra loc_8c1b65f4
	mov.b r3,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B65ac:
	#data 0x8C34BC8C
loc_8c1B65B0:
	#data bank19.loc_8c19ED64
loc_8c1B65B4:
	#data 0x8C34CEE1
loc_8c1B65B8:
	#data 0x8C34BC7C
loc_8c1B65Bc:
	#data 0x8C34BC84
loc_8c1B65C0:
	#data bank19.loc_8c19E878
loc_8c1B65C4:
	#data 0x8C34BB40
loc_8c1B65C8:
	#data 0x8C34BB41
loc_8c1B65CC:
	#data bank19.loc_8c19D2A0
loc_8c1B65D0:
	#data bank1c.loc_8c1c0A7C
loc_8c1B65D4:
	#data bank1c.loc_8c1c1634
loc_8c1B65D8:
	#data 0x8C34CEDE
loc_8c1B65Dc:
	#data 0x8C34BC8D
loc_8c1B65E0:
	#data bank1c.loc_8c1c1384
loc_8c1B65E4:
	#data bank19.loc_8c19D26E
loc_8c1B65E8:
	#data bank1c.loc_8c1c13D0

;==============================================
loc_8c1B65EC:
	mov.l @(0x100,PC),r3
	mov.w @(0xF4,PC),r4
	jsr @r3
	nop

loc_8c1B65F4:
	mov 0x28,r0
	mov.l @(0xFC,PC),r3
	mov.b r10,@r3
	mov.l @(0xFC,PC),r2
	mov.b r14,@r2
	mov.b @(r0,r15),r1
	mov.l @(0xF8,PC),r0
	mov.b r1,@r0
	mov 0x20,r0
	mov.l @(0xF8,PC),r1
	mov.b @(r0,r15),r3
	mov 0x24,r0
	mov.b r3,@r1
	mov.b @(r0,r15),r3
	lds.l @r15+,pr
	mov.l @(0xF0,PC),r0
	mov.b r3,@r0
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B6626:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c1B6EA4
	mov.l r4,@r15
	mov 0x07,r2 ; r2 set to 0x07
	extu.w r0,r0
	cmp/gt r2,r0
	bt loc_8c1B6656
	mov.l @(loc_8c1B6708,pc),r0 ; r0 set to 0x8C34BC7B
	mov.w @(loc_8c1B66E8,pc),r2 ; r2 set to 0x124
	mov.b @r0,r3
	mov.l @r15,r1
	add 0x04,r15
	extu.b r3,r3
	muls.w r2,r3
	mov.l @(loc_8c1B670C,pc),r2 ; r2 set to 0x8C34C5B2
	lds.l @r15+,pr
	sts macl,r3
	exts.w r3,r3
	add r2,r3
	mov.l r3,@r1
	mov.w @(loc_8c1B66EA,pc),r0 ; r0 set to 0x118
	rts
	nop

;==============================================
loc_8c1B6656:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B6660:
	mov.l r14,@-r15
	extu.b r5,r5
	mov.l r13,@-r15
	tst r5,r5
	mov.l r12,@-r15
	mov r4,r12
	sts.l pr,@-r15
	bf/s loc_8c1B6680
	mov 0x00,r14 ; r14 set to 0x00
	mov.l @(loc_8c1B6714,pc),r2 ; r2 set to 0x8C1B3EEC
	mov.l @(loc_8c1B6710,pc),r4 ; r4 set to 0x8C34BB74
	jsr @r2
	extu.w r12,r5
	mov.l @(loc_8c1B6718,pc),r3 ; r3 set to 0x8C34BB72
	bra loc_8c1B66C8
	mov.b r14,@r3

loc_8c1b6680:
	mov r14,r4
	mov r14,r5
	mov r14,r7

loc_8c1b6686:
	mov.l @(loc_8c1b6708,pc),r14
	mov.w @(loc_8c1b66e8,pc),r3
	mov.b @r14,r6
	mov.l @(loc_8C1B671C,pc),r13
	extu.b r6,r6
	mov.w @(loc_8C1B66EC,pc),r2
	muls.w r3,r6
	sts macl,r6
	exts.w r6,r6
	add r13,r6
	add r6,r2
	add r4,r2
	mov.w @r2,r1
	tst r1,r1
	bf loc_8c1b66cc
	mov.w @(loc_8C1B66EC,pc),r0
	add r6,r0
	add r0,r5
	bsr loc_8c1b6ea4
	mov.w r12,@r5
	extu.w r0,r0
	cmp/eq 0x08,r0
	bf loc_8c1b66c8
	mov.b @r14,r3
	mov.w @(loc_8c1b66e8,pc),r2
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r13,r3
	mov.b @r3,r0
	or 0x04,r0
	mov.b r0,@r3

loc_8c1B66C8:
	bra loc_8c1B66DC
	mov 0x01,r0

loc_8c1B66CC:
	add 0x01,r7
	extu.b r7,r3
	mov 0x03,r6
	cmp/gt r6,r3
	add 0x02,r5
	bf.s loc_8c1b6686
	add 0x02,r4
	mov 0x00,r0

loc_8c1B66DC:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B66E6:
	#data 0x0C1C
loc_8c1B66E8:
	#data 0x0124
loc_8c1B66EA:
	#data 0x0118
loc_8c1b66ec:
	#data 0x011C
	#align4

loc_8c1B66F0:
	#data bank1a.loc_8c1a003E
loc_8c1B66F4:
	#data 0x8C34BB42
loc_8c1B66F8:
	#data 0x8C34BB41
loc_8c1B66Fc:
	#data 0x8C34BB46
loc_8c1B6700:
	#data 0x8C34BB44
loc_8c1B6704:
	#data 0x8C34BB45
loc_8c1B6708:
	#data 0x8C34BC7B
loc_8c1B670C:
	#data 0x8C34C5B2
loc_8c1B6710:
	#data 0x8C34BB74
loc_8c1B6714:
	#data loc_8c1B3EEC
loc_8c1B6718:
	#data 0x8C34BB72
loc_8c1b671c:
	#data 0x8C34C5AE

;==============================================
loc_8c1B6720:
	sts.l pr,@-r15
	bsr loc_8c1B6EA4
	nop
	extu.w r0,r0
	tst r0,r0
	bf loc_8c1B6748
	mov.l @(loc_8c1B680C,pc),r2 ; r2 set to 0x8C19EFA8
	jsr @r2
	nop
	mov.l @(loc_8c1B6810,pc),r3 ; r3 set to 0x8C34CED8
	mov.l @(loc_8c1B6814,pc),r2 ; r2 set to 0x8C1B3F0C
	mov.l @r3,r4
	jsr @r2
	add r0,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1B6748
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c1B6748:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B6750:
	sts.l pr,@-r15
	extu.w r4,r3
	tst r3,r3
	bt loc_8c1B67A2
	mov.l @(loc_8c1B6818,pc),r5 ; r5 set to 0x8C34BC7B
	mov.w @(loc_8c1B680A,pc),r2 ; r2 set to 0x124
	mov.b @r5,r3
	mov.l @(loc_8c1B681C,pc),r0 ; r0 set to 0x8C34C5B0
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	mov.w r4,@(r0,r3)
	mov.b @r5,r0 ; r0 ??
	add 0x01,r0
	and 0x07,r0
	mov.b r0,@r5 ; r5 ??? bc r0 is ???
	mov.l @(loc_8c1B6820,pc),r4 ; r4 set to 0x8C34CED2
	mov.w @r4,r3
	add 0x01,r3
	mov.w r3,@r4 ; r4 ??? bc r3 is ???
	mov.l @(loc_8c1B6824,pc),r1 ; r1 set to 0x8C34BB40
	mov.b @r1,r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bt loc_8c1B67A2
	cmp/eq 0x1B,r0
	bt loc_8c1B67A2
	mov.l @(loc_8c1B6828,pc),r3 ; r3 set to 0x8C34CEE1
	mov.b @r3,r2 ; r2 ??
	tst r2,r2
	bt loc_8c1B67A2
	mov.l @(loc_8c1B682C,pc),r2 ; r2 set to 0x8C19EEC4
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B67A2
	mov.l @(loc_8c1B6830,pc),r2 ; r2 set to 0x8C19EE78
	jmp @r2
	lds.l @r15+,pr

loc_8c1B67A2:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B67A8:
	mov.l @(0x78,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	add 0xFC,r15
	bf loc_8c1b67ea
	mov.l @(0x7C,PC),r3
	jsr @r3
	nop
	mov.b r0,@r15
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b67ca
	mov.l @(0x70,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c1B67ca:
	bsr loc_8c1b6e98
	nop
	mov.l @(0x6C,PC),r2
	mov.b r0,@r2
	mov.l @(0x6C,PC),r1
	mov.l @(0x6C,PC),r0
	mov.w @r1,r3
	mov.w r3,@r0
	mov.b @r15,r2
	tst r2,r2
	bt loc_8c1b67ea
	mov.l @(0x54,PC),r3
	add 0x04,r15
	mov.l @(0x60,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c1B67ea:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop
	mov.l @(0x30,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8c1b6804
	mov.l @(0x3C,PC),r2
	mov.b @r2,r1
	cmp/pz r1
	bt loc_8c1b684c

loc_8c1B6804:
	mov 0x00,r3
	rts
	mov.w r3,@r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B680A:
	#data 0x0124
	#align4

loc_8c1B680C:
	#data bank19.loc_8c19EFA8
loc_8c1B6810:
	#data 0x8C34CED8
loc_8c1B6814:
	#data loc_8c1B3F0C
loc_8c1B6818:
	#data 0x8C34BC7B
loc_8c1B681C:
	#data 0x8C34C5B0
loc_8c1B6820:
	#data 0x8C34CED2
loc_8c1B6824:
	#data 0x8C34BB40
loc_8c1B6828:
	#data 0x8C34CEE1
loc_8c1B682C:
	#data bank19.loc_8c19EEC4
loc_8c1B6830:
	#data bank19.loc_8c19EE78
loc_8c1B6834:
	#data bank1a.loc_8c1a00C4
loc_8c1B6838:
	#data bank1a.loc_8c1a00CA
loc_8c1B683c:
	#data 0x8C34BB4C
loc_8c1B6840:
	#data 0x8C34BB7C
loc_8c1B6844:
	#data 0x8C34BB4E
loc_8c1B6848:
	#data bank19.loc_8c19F0BA

;==============================================
loc_8c1b684c:
	mov.l @(0x110,PC),r6
	mov.w @(0x102,PC),r3
	mov.b @r6,r2
	mov.l @(0x108,PC),r7
	extu.b r2,r2
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	add r7,r2
	mov r2,r1
	add 0x04,r1
	mov.l r1,@r4
	mov.l @(0xFC,PC),r4
	mov.b @r4,r2
	add 0xFF,r2
	mov.b r2,@r4
	add 0x01,r2
	exts.b r2,r2
	tst r2,r2
	bf loc_8c1b6878
	bra loc_8c1b6886
	mov.w @(0x2,r4),r0

loc_8c1b6878:
	mov.b @r6,r1
	extu.b r1,r1
	muls.w r3,r1
	sts macl,r1
	exts.w r1,r1
	add r7,r1
	mov.w @(0x2,r1),r0

loc_8c1b6886:
	mov.w r0,@r5
	rts
	nop

;==============================================
loc_8c1b688c:
	rts
	nop

loc_8c1b6890:
	rts
	nop

loc_8c1b6894:
	rts
	nop

loc_8c1b6898:
	rts
	nop

;==============================================
loc_8c1B689C:
	mov.l @(loc_8c1B6968,pc),r3 ; r3 set to 0x8C34CEDC
	rts
	mov.b r4,@r3

;==============================================
loc_8c1B68A2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c1B696C,pc),r2 ; r2 set to 0x8C34BB40
	sts.l pr,@-r15
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c1B68BC
	bra loc_8c1B69C6
	nop

loc_8c1B68BC:
	cmp/eq 0x17,r0
	bf loc_8c1B68C4
	bra loc_8c1B69C6
	nop

loc_8c1B68C4:
	cmp/eq 0x18,r0
	bf loc_8c1B68CC
	bra loc_8c1B69C6
	nop

loc_8c1B68CC:
	mov.l @(loc_8c1B6974,pc),r13 ; r13 set to 0x8C34BC79
	mov 0x01,r10 ; r10 set to 0x01
	mov.w @(loc_8c1B6954,pc),r3 ; r3 set to 0x124
	mov.b @r13,r4
	mov.l @(loc_8c1B6978,pc),r14 ; r14 set to 0x8C34C5AE
	extu.b r4,r4
	mov.l @(loc_8c1B6970,pc),r11 ; r11 set to 0x8C34BB71
	muls.w r3,r4
	sts macl,r4
	exts.w r4,r4
	add r14,r4
	mov.b @r4,r0
	extu.b r0,r0
	or 0x04,r0
	tst r0,r0
	bf/s loc_8c1B6988
	mov 0x00,r12 ; r12 set to 0x00
	mov.w @(loc_8c1B6956,pc),r0 ; r0 set to 0x11C
	mov.w @(r0,r4),r1
	tst r1,r1
	bt loc_8c1B69C6
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r2,@r11 ; r11 ??
	mov.l @(loc_8c1B697C,pc),r1 ; r1 set to 0x8C34BB72
	mov.b r10,@r1 ; r1 ??
	mov.b @r13,r5
	mov.w @(loc_8c1B6954,pc),r3 ; r3 set to 0x124
	extu.b r5,r5
	mov.l @(loc_8c1B6980,pc),r4 ; r4 set to 0x8C34BB74
	muls.w r3,r5
	mov.l @(loc_8c1B6984,pc),r2 ; r2 set to 0x8C1B3EEC
	sts macl,r5
	exts.w r5,r5
	add r14,r5
	mov.w @(r0,r5),r5
	jsr @r2
	extu.w r5,r5
	mov 0x03,r11 ; r11 set to 0x03
	mov r12,r4 ; r4 set to 0x00
	mov r10,r6 ; r6 set to 0x01
	mov 0x02,r5 ; r5 set to 0x02

loc_8c1B691E:
	mov.b @r13,r0 ; r0 ??
	add 0x01,r6 ; r6 set to 0x02
	mov.w @(loc_8c1B6954,pc),r3 ; r3 set to 0x124, r3 set to 0x124
	extu.b r6,r1 ; r1 set to 0x02
	extu.b r0,r0
	mov.w @(loc_8c1B6956,pc),r2 ; r2 set to 0x11C, r2 set to 0x11C
	muls.w r3,r0
	cmp/gt r11,r1
	sts macl,r0
	exts.w r0,r0
	add r14,r0
	add r2,r0
	mov.w @(r0,r5),r3 ; r3 ??, r3 ??? bc r5 is ???
	add 0x02,r5 ; r5 set to 0x04
	mov.w r3,@(r0,r4)  ; r4 ??? bc r3 is ???
	bf/s loc_8c1B691E
	add 0x02,r4
	mov.b @r13,r2 ; r2 ??? bc r13 is ???, r2 ??
	mov.w @(loc_8c1B6954,pc),r3 ; r3 set to 0x124, r3 set to 0x124
	extu.b r2,r2
	mov.w @(loc_8c1B6958,pc),r0 ; r0 set to 0x122, r0 set to 0x122
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	add r14,r2
	bra loc_8c1B69C6
	mov.w r12,@(r0,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B6954:
	#data 0x0124
loc_8c1B6956:
	#data 0x011C
loc_8c1B6958:
	#data 0x0122
	#align4

loc_8c1B695c:
#data 0x8C34BC8E
loc_8c1B6960:
	#data 0x8C34BC78
loc_8c1B6964:
	#data 0x8C34BB4C
loc_8c1B6968:
	#data 0x8C34CEDC
loc_8c1B696C:
	#data 0x8C34BB40
loc_8c1B6970:
	#data 0x8C34BB71
loc_8c1B6974:
	#data 0x8C34BC79
loc_8c1B6978:
	#data 0x8C34C5AE
loc_8c1B697C:
	#data 0x8C34BB72
loc_8c1B6980:
	#data 0x8C34BB74
loc_8c1B6984:
	#data loc_8c1B3EEC

;==============================================
loc_8c1B6988:
	bsr loc_8c1B6EA4
	nop
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1B69C0
	mov.b r10,@r11
	mov.b @r13,r2
	mov.w @(loc_8c1B6A2A,pc),r3 ; r3 set to 0x124
	extu.b r2,r2
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	add r14,r2
	mov.b r12,@r2
	mov.b @r13,r4
	mov.l @(loc_8c1B6A2C,pc),r1 ; r1 set to 0x8C34BB6C
	extu.b r4,r4
	muls.w r3,r4
	sts macl,r4
	exts.w r4,r4
	add r14,r4
	mov r4,r2
	add 0x04,r2
	mov.l r2,@r1 ; r1 ??? bc r2 is ???
	mov.l @(loc_8c1B6A30,pc),r2 ; r2 set to 0x8C34BB68
	mov.w @(0x02,r4),r0
	bra loc_8c1B69C6
	mov.w r0,@r2

loc_8c1B69C0:
	mov.b r12,@r11
	mov.l @(loc_8c1B6A30,pc),r3 ; r3 set to 0x8C34BB68
	mov.w r12,@r3 ; r3 ??? bc r12 is ???

loc_8c1B69C6:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B69D4:
	mov.l @(loc_8c1B6A34,pc),r2 ; r2 set to 0x8C34BB40
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c1B6A26
	cmp/eq 0x17,r0
	bt loc_8c1B6A26
	cmp/eq 0x18,r0
	bt loc_8c1B6A26
	mov.l @(loc_8c1B6A3C,pc),r4 ; r4 set to 0x8C34BC79
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8c1B6A2A,pc),r3 ; r3 set to 0x124
	mov.b @r4,r2 ; r2 ??
	mov.l @(loc_8c1B6A38,pc),r6 ; r6 set to 0x8C34C5AE
	extu.b r2,r2
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	add r6,r2
	mov.b r5,@r2
	mov.b @r4,r2
	extu.b r2,r2
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	add r6,r2
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x02,r2)
	mov.b @r4,r0 ; r0 ??
	add 0x01,r0
	and 0x07,r0
	mov.b r0,@r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8c1B6A40,pc),r4 ; r4 set to 0x8C34CED4
	mov.w @r4,r2
	add 0x01,r2
	mov.w r2,@r4 ; r4 ??? bc r2 is ???
	mov.l @(loc_8c1B6A48,pc),r1 ; r1 set to 0x8C1B3EEC
	mov.l @(loc_8c1B6A44,pc),r4 ; r4 set to 0x8C34CED8
	jmp @r1
	nop

loc_8c1B6A26:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B6A2A:
	#data 0x0124
	#align4

loc_8c1B6A2C:
	#data 0x8C34BB6C
loc_8c1B6A30:
	#data 0x8C34BB68
loc_8c1B6A34:
	#data 0x8C34BB40
loc_8c1B6A38:
	#data 0x8C34C5AE
loc_8c1B6A3C:
	#data 0x8C34BC79
loc_8c1B6A40:
	#data 0x8C34CED4
loc_8c1B6A44:
	#data 0x8C34CED8
loc_8c1B6A48:
	#data loc_8c1B3EEC

;==============================================
loc_8c1B6A4C:
	mov.l r14,@-r15
	mov.l @(0xB4,PC),r5
	sts.l pr,@-r15
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c1b6afc
	cmp/eq 0x17,r0
	bt loc_8c1b6afc
	cmp/eq 0x18,r0
	bt loc_8c1b6afc
	mov.l @(0xA4,PC),r2
	mov 0x00,r14
	mov.b r14,@r2
	mov.l @(0xA0,PC),r3
	mov.b @r5,r4
	mov.b @r3,r0
	cmp/eq 0x01,r0
	bf.s loc_8c1b6a84
	extu.b r4,r4
	mov r4,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1b6afc
	cmp/eq 0x01,r0
	bt loc_8c1b6afc
	cmp/eq 0x02,r0
	bt loc_8c1b6afc

loc_8c1B6A84:
	mov r4,r0
	nop
	cmp/eq 0x12,r0
	bf loc_8c1b6aba
	bsr loc_8c1b6ea4
	nop
	mov 0x08,r2
	extu.w r0,r0
	cmp/ge r2,r0
	bt loc_8c1b6af6
	mov.l @(0x74,PC),r1
	mov.w r14,@r1
	mov.l @(0x74,PC),r3
	mov.w @(0x60,PC),r2
	mov.b @r3,r4
	mov.l @(0x74,PC),r1
	extu.b r4,r4
	mov.l @(0x74,PC),r0
	muls.w r2,r4
	sts macl,r4
	exts.w r4,r4
	add r1,r4
	mov r4,r3
	add 0x04,r3
	mov.l r3,@r0
	bra loc_8c1b6ae4
	nop

loc_8c1B6ABA:
	bsr loc_8c1b6e98
	nop
	mov 0x08,r2
	extu.w r0,r0
	cmp/ge r2,r0
	bt loc_8c1b6af6
	mov.l @(0x48,PC),r1
	mov.w r14,@r1
	mov.l @(0x54,PC),r3
	mov.w @(0x32,PC),r2
	mov.b @r3,r4
	mov.l @(0x50,PC),r1
	extu.b r4,r4
	mov.l @(0x44,PC),r0
	muls.w r2,r4
	sts macl,r4
	exts.w r4,r4
	add r1,r4
	mov r4,r3
	add 0x04,r3
	mov.l r3,@r0

loc_8c1B6AE4:
	mov.b @r4,r0
	mov 0x01,r3
	and 0x04,r0
	mov.b r0,@r4
	mov.l @(0x18,PC),r2
	mov.b r3,@r2
	mov.l @(0x34,PC),r1
	bra loc_8c1b6afc
	mov.b r14,@r1

loc_8c1B6AF6:
	lds.l @r15+,pr
	bra loc_8c1b6e40
	mov.l @r15+,r14

loc_8c1B6AFC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b6b02:
	#data 0x0124
	#align4

loc_8c1b6b04:
	#data 0x8C34BB40
loc_8c1b6b08:
	#data 0x8C34BB91
loc_8c1b6b0c:
	#data 0x8C34CEDC
loc_8c1b6b10:
	#data 0x8C34BB7C
loc_8c1b6b14:
	#data 0x8C34BC7B
loc_8c1b6b18:
	#data 0x8C34C5AE
loc_8c1b6b1c:
	#data 0x8C34BB80
loc_8c1b6b20:
	#data 0x8C34BC7A
loc_8c1b6b24:
	#data 0x8C34BC8E
loc_8c1b6b28:
	#data 0x8C34CEE0

;==============================================
loc_8c1B6B2C:
	mov.l r14,@-r15
	mov.l @(loc_8c1B6C1C,pc),r3 ; r3 set to 0x8C34BB40
	sts.l pr,@-r15
	mov.b @r3,r4
	extu.b r4,r0
	cmp/eq 0x16,r0
	bt/s loc_8c1B6BC4
	mov r0,r4
	cmp/eq 0x17,r0
	bt loc_8c1B6BC4
	cmp/eq 0x18,r0
	bt loc_8c1B6BC4
	mov.l @(loc_8c1B6C20,pc),r6 ; r6 set to 0x8C34BB7C
	mov 0x00,r14 ; r14 set to 0x00
	mov r4,r0
	nop
	cmp/eq 0x12,r0
	bf/s loc_8c1B6B78
	mov.w @r6,r5
	mov.l @(loc_8c1B6C24,pc),r4 ; r4 set to 0x8C34BC7B
	mov.w @(loc_8c1B6C18,pc),r3 ; r3 set to 0x124
	mov.b @r4,r2
	mov.l @(loc_8c1B6C28,pc),r0 ; r0 set to 0x8C34C5B0
	extu.b r2,r2
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	mov.w r5,@(r0,r2)
	mov.w r14,@r6 ; r6 ??
	mov.b @r4,r0 ; r0 ??
	add 0x01,r0
	and 0x07,r0
	mov.b r0,@r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8c1B6C2C,pc),r4 ; r4 set to 0x8C34CED2
	mov.w @r4,r2
	add 0x01,r2
	bra loc_8c1B6B9C
	mov.w r2,@r4

loc_8c1b6b78:
	mov.l @(loc_8C1B6C30,pc),r4
	mov.w @(loc_8c1b6c18,pc),r2
	mov.b @r4,r3
	mov.l @(loc_8C1B6C34,pc),r0
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	mov.w r5,@(r0,r3)
	mov.w r14,@r6
	mov.b @r4,r0
	add 0x01,r0
	and 0x07,r0
	mov.b r0,@r4
	mov.l @(loc_8C1B6C38,pc),r4
	mov.w @r4,r3
	add 0x01,r3
	mov.w r3,@r4

loc_8c1b6b9c:
	mov.l @(loc_8C1B6C3C,pc),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c1b6bc4
	mov.l @(loc_8C1B6C40,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1b6bc4
	bsr loc_8c1b6e98
	nop
	mov 0x06,r3
	extu.w r0,r0
	cmp/ge r3,r0
	bf loc_8c1b6bc4
	mov.l @(loc_8C1B6C40,pc),r1
	mov 0x01,r2
	mov.b r14,@r1
	mov.l @(loc_8C1B6C44,pc),r0
	mov.b r2,@r0

loc_8c1B6BC4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B6BCA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1B6C1C,pc),r1 ; r1 set to 0x8C34BB40
	mov.l @(loc_8c1B6C58,pc),r3 ; r3 set to 0x8C34BB41
	mov.b @r1,r0
	mov.b @r3,r4
	sts.l pr,@-r15
	extu.b r0,r0
	mov.l @(loc_8c1B6C5C,pc),r2 ; r2 set to 0x8C34BC88
	mov.l @(loc_8c1B6C4C,pc),r9 ; r9 set to 0x8C19EF9A
	cmp/eq 0x00,r0
	mov.l @(loc_8c1B6C48,pc),r8 ; r8 set to 0x8C19EF5E
	extu.b r4,r4
	mov.w @(loc_8c1B6C1A,pc),r13 ; r13 set to 0x1F4
	mov.l @(loc_8c1B6C54,pc),r11 ; r11 set to 0x8C34BC7C
	mov.l @(loc_8c1B6C50,pc),r10 ; r10 set to 0x8C1A003E
	bt/s loc_8c1B6C60
	mov.w @r2,r5
	cmp/eq 0x08,r0
	bf loc_8c1B6C00
	bra loc_8c1B6CFA
	nop

loc_8c1b6C00:
	cmp/eq 0x09,r0
	bt loc_8c1B6CFA
	cmp/eq 0x0C,r0
	bf loc_8c1B6C0C
	bra loc_8c1B6E0C
	nop

loc_8c1b6C0C:
	cmp/eq 0x12,r0
	bt loc_8c1B6C60
	cmp/eq 0x1D,r0
	bt loc_8c1B6CFA
	bra loc_8c1B6E26
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B6C18:
	#data 0x0124
loc_8c1B6C1A:
	#data 0x01F4
	#align4

loc_8c1B6C1C:
	#data 0x8C34BB40
loc_8c1B6C20:
	#data 0x8C34BB7C
loc_8c1B6C24:
	#data 0x8C34BC7B
loc_8c1B6C28:
	#data 0x8C34C5B0
loc_8c1B6C2C:
	#data 0x8C34CED2
loc_8c1b6c30:
	#data 0x8C34BC7A
loc_8c1b6c34:
	#data 0x8C34BC90
loc_8c1b6c38:
	#data 0x8C34CECE
loc_8c1b6c3c:
	#data 0x8C34BB64
loc_8c1b6c40:
	#data 0x8C34BB85
loc_8c1b6c44:
	#data 0x8C34BB86
loc_8c1B6C48:
	#data bank19.loc_8c19EF5E
loc_8c1B6C4C:
	#data bank19.loc_8c19EF9A
loc_8c1B6C50:
	#data bank1a.loc_8c1a003E
loc_8c1B6C54:
	#data 0x8C34BC7C
loc_8c1B6C58:
	#data 0x8C34BB41
loc_8c1B6C5C:
	#data 0x8C34BC88

;==============================================
loc_8c1B6C60:
	mov 0x01,r3 ; r3 set to 0x01
	cmp/gt r3,r4
	bt loc_8c1B6C70
	mov.l @(loc_8c1B6D3C,pc),r1 ; r1 set to 0x8C1C0C14
	jsr @r1
	nop
	bra loc_8c1B6E12
	nop

loc_8c1b6C70:
	mov.w @(loc_8c1B6D34,pc),r12 ; r12 set to 0xC30
	bra loc_8c1B6C92
	mov r5,r14

loc_8c1b6C76:
	extu.w r13,r3
	tst r3,r3
	bt/s loc_8c1B6CB6
	add 0xFF,r13
	add 0x01,r14
	extu.w r14,r0
	cmp/eq 0x04,r0
	bf loc_8c1B6C92
	mov.l @(loc_8c1B6D44,pc),r3 ; r3 set to 0x8C1C074E
	mov 0x20,r5 ; r5 set to 0x20
	mov.l @(loc_8c1B6D40,pc),r2 ; r2 set to 0x8C34BC84
	jsr @r3
	mov.l @r2,r4
	mov 0x00,r14 ; r14 set to 0x00

loc_8c1b6C92:
	mov.l @(loc_8c1B6D48,pc),r2 ; r2 set to 0x8C19EF30, r2 set to 0x8C19EF30
	extu.w r14,r4 ; r4 set to 0x00
	mov.l @(loc_8c1B6D40,pc),r3 ; r3 set to 0x8C34BC84, r3 set to 0x8C34BC84
	jsr @r2
	add r3,r4 ; r4 set to 0x8C34BC84
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B6C76
	mov.l @(loc_8c1B6D4C,pc),r2 ; r2 set to 0x8C34BC88, r2 set to 0x8C34BC88
	mov.w r14,@r2 ; r2 ??, r2 ??? bc r14 is ???
	mov.w @(0x04,r11),r0
	mov.w @(loc_8c1B6D36,pc),r12 ; r12 set to 0xC44, r12 set to 0xC44
	bra loc_8c1B6CEC
	mov r0,r14

loc_8c1b6cae:
	extu.w r13,r2
	tst r2,r2
	bf/s loc_8c1b6cba
	add 0xFF,r13

loc_8c1b6CB6:
	bra loc_8c1B6DD8
	mov r12,r4

;==============================================
loc_8c1B6CBA:
	extu.w r14,r0
	cmp/eq 0x04,r0
	bf loc_8c1b6ce0
	bsr loc_8c1b6ea4
	nop
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1b6cd6
	mov.l @(0x84,PC),r2
	jsr @r2
	mov 0x20,r4
	mov.l r0,@r11
	bra loc_8c1b6ce0
	mov 0x00,r14

loc_8c1B6CD6:
	mov.l @(0x7C,PC),r2
	jsr @r2
	nop
	bra loc_8c1b6e04
	nop

loc_8c1B6CE0:
	mov r11,r3
	extu.w r14,r4
	add 0x01,r14
	add r3,r4
	jsr @r9
	mov.b @r4,r4

loc_8c1B6CEC:
	jsr @r8
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B6CAE
	bra loc_8c1B6E04
	nop

loc_8c1B6CFA:
	mov.l @(loc_8c1B6D58,pc),r12 ; r12 set to 0x8C1C106C
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1B6D30
	mov.w @(loc_8c1B6D38,pc),r14 ; r14 set to 0xC58
	bra loc_8c1B6D1E
	nop

loc_8c1B6D0A:
	extu.w r13,r3
	tst r3,r3
	bf/s loc_8c1B6D16
	add 0xFF,r13
	bra loc_8c1B6DD8
	mov r14,r4

loc_8c1B6D16:
	mov.l @(loc_8c1B6D40,pc),r3 ; r3 set to 0x8C34BC84
	mov 0x08,r5 ; r5 set to 0x08
	jsr @r12
	mov.l @r3,r4

loc_8c1b6D1E:
	mov.l @(loc_8c1B6D48,pc),r2 ; r2 set to 0x8C19EF30, r2 set to 0x8C19EF30
	mov.l @(loc_8c1B6D40,pc),r4 ; r4 set to 0x8C34BC84, r4 set to 0x8C34BC84
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B6D0A
	bra loc_8c1B6D90
	nop

loc_8c1b6D30:
	bra loc_8c1B6D7C
	mov r5,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B6D34:
	#data 0x0C30
loc_8c1B6D36:
	#data 0x0C44
loc_8c1B6D38:
	#data 0x0C58
	#align4

loc_8c1B6D3C:
	#data bank1c.loc_8c1c0C14
loc_8c1B6D40:
	#data 0x8C34BC84
loc_8c1B6D44:
	#data bank1c.loc_8c1c074E
loc_8c1B6D48:
	#data bank19.loc_8c19EF30
loc_8c1B6D4C:
	#data 0x8C34BC88
loc_8c1B6D50:
	#data bank1c.loc_8c1c04A8
loc_8c1B6D54:
	#data bank19.loc_8c19EFA4
loc_8c1B6D58:
	#data bank1c.loc_8c1c106C

;==============================================
loc_8c1B6D5C:
	extu.w r13,r2
	tst r2,r2
	bf/s loc_8c1B6D6A
	add 0xFF,r13
	mov.w @(loc_8c1B6E54,pc),r4 ; r4 set to 0xC6C
	bra loc_8c1B6DD8
	nop

loc_8c1B6D6A:
	add 0x01,r14
	extu.w r14,r0
	cmp/eq 0x04,r0
	bf loc_8c1B6D7C
	mov.l @(loc_8c1B6E5C,pc),r2 ; r2 set to 0x8C34BC84
	mov 0x20,r5 ; r5 set to 0x20
	jsr @r12
	mov.l @r2,r4
	mov 0x00,r14 ; r14 set to 0x00

loc_8c1B6D7C:
	mov.l @(loc_8c1B6E60,pc),r2 ; r2 set to 0x8C19EF30, r2 set to 0x8C19EF30
	extu.w r14,r4 ; r4 set to 0x00
	mov.l @(loc_8c1B6E5C,pc),r3 ; r3 set to 0x8C34BC84, r3 set to 0x8C34BC84
	jsr @r2
	add r3,r4 ; r4 set to 0x8C34BC84
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B6D5C
	mov.l @(loc_8c1B6E64,pc),r2 ; r2 set to 0x8C34BC88, r2 set to 0x8C34BC88
	mov.w r14,@r2 ; r2 ??, r2 ??? bc r14 is ???

loc_8c1B6D90:
	mov.l @(loc_8c1B6E6C,pc),r3 ; r3 set to 0x8C34BB41, r3 set to 0x8C34BB41, r3 set to 0x8C34BB41
	mov.l @(loc_8c1B6E68,pc),r12 ; r12 set to 0x8C1C0EA2, r12 set to 0x8C1C0EA2, r12 set to 0x8C1C0EA2
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1B6DC8
	mov.w @(loc_8c1B6E56,pc),r14 ; r14 set to 0xC80, r14 set to 0xC80, r14 set to 0xC80
	bra loc_8c1B6DBA
	nop

loc_8c1b6DA2:
	extu.w r13,r3
	tst r3,r3
	bf/s loc_8c1B6DAE
	add 0xFF,r13
	bra loc_8c1B6DD8
	mov r14,r4

loc_8c1b6DAE:
	jsr @r12
	mov 0x08,r4 ; r4 set to 0x08
	mov.l r0,@r11
	mov.b @(0x03,r11),r0
	jsr @r9
	mov r0,r4 ; r4 ??? bc r0 is ???

loc_8c1b6DBA:
	jsr @r8
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B6DA2
	bra loc_8c1B6E26
	nop

loc_8c1b6DC8:
	mov.w @(0x04,r11),r0
	bra loc_8c1B6DFA
	mov r0,r14

loc_8c1B6DCE:
	extu.w r13,r3
	tst r3,r3
	bf.s loc_8c1b6de0
	add 0xFF,r13
	mov.w @(0x7E,PC),r4

loc_8c1B6DD8:
	jsr @r10
	nop
	bra loc_8c1B6E26
	nop

loc_8c1B6DE0:
	extu.w r14,r0
	cmp/eq 0x04,r0
	bf loc_8c1b6dee
	jsr @r12
	mov 0x20,r4
	mov 0x00,r14
	mov.l r0,@r11

loc_8c1B6DEE:
	mov r11,r3
	extu.w r14,r4
	add 0x01,r14
	add r3,r4
	jsr @r9
	mov.b @r4,r4

loc_8c1b6dfa:
	jsr @r8
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b6dce

loc_8c1B6E04:
	mov r14,r0
	nop
	bra loc_8c1B6E26
	mov.w r0,@(0x04,r11)

loc_8c1b6e0c:
	mov.l @(loc_8c1b6e70,pc),r1
	jsr @r1
	nop

loc_8c1B6E12:
	lds.l @r15+,pr
	mov.l @(loc_8c1B6E74,pc),r3 ; r3 set to 0x8C1C1526
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1B6E26:
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
loc_8c1b6e38:
	rts
	nop

;==============================================
loc_8c1b6e3c:
	rts
	nop

;==============================================
loc_8c1B6E40:
	mov.l @(0x34,PC),r4
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c1b6e4c
	mov 0x01,r3
	mov.b r3,@r4

loc_8c1B6E4C:
	rts
	nop

;==============================================
loc_8c1B6E50:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B6E54:
	#data 0x0C6C
loc_8c1B6E56:
	#data 0x0C80
loc_8c1B6E58:
	#data 0x0C94
	#align4

loc_8c1B6E5C:
	#data 0x8C34BC84
loc_8c1B6E60:
	#data bank19.loc_8c19EF30
loc_8c1B6E64:
	#data 0x8C34BC88
loc_8c1B6E68:
	#data bank1c.loc_8c1c0EA2
loc_8c1B6E6C:
	#data 0x8C34BB41
loc_8c1B6E70:
	#data bank1c.loc_8c1c143A
loc_8c1B6E74:
	#data bank1c.loc_8c1c1526
loc_8c1B6E78:
	#data 0x8C34CEE0

;==============================================
loc_8c1B6E7C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c1b6e98
	mov 0x00,r14
	mov 0x04,r2
	extu.w r0,r0
	cmp/gt r2,r0
	bt loc_8c1b6e8e
	mov 0x01,r14

loc_8c1B6E8E:
	mov r14,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B6E98:
	mov.l @(0x18,PC),r1
	mov.l @(0x14,PC),r2
	mov.w @r1,r0
	mov.w @r2,r3
	rts
	sub r3,r0

;==============================================
loc_8c1B6EA4:
	mov.l @(loc_8c1B6EBC,pc),r1 ; r1 set to 0x8C34CED2
	mov.l @(loc_8c1B6EB8,pc),r2 ; r2 set to 0x8C34CED4
	mov.w @r1,r0
	mov.w @r2,r3
	rts
	sub r3,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B6EB0:
	#data 0x8C34CED0
loc_8c1B6EB4:
	#data 0x8C34CECE
loc_8c1B6EB8:
	#data 0x8C34CED4
loc_8c1B6EBC:
	#data 0x8C34CED2

;==============================================
loc_8c1B6EC0:
	mov.l r14,@-r15
	mov 0x46,r0 ; r0 set to 0x46
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1B6EF0,pc),r14 ; r14 set to 0x8C347A30
	mov.l @(loc_8c1B6EEC,pc),r13 ; r13 set to 0x8C34CEE9
	mov.b @(r0,r14),r3
	mov.b r3,@r13 ; r13 ??? bc r3 is ???
	mov.b @r13,r3
	mov.w @(loc_8c1B6EEA,pc),r2 ; r2 set to 0xFF
	extu.b r3,r3
	cmp/eq r2,r3
	bf/s loc_8c1B6EF8
	mov 0x00,r12 ; r12 set to 0x00
	mov.l @(loc_8c1B6EF4,pc),r1 ; r1 set to 0x8C34BBA1
	bsr loc_8c1B6FE0
	mov.b r12,@r1 ; r1 ??
	mov 0x46,r0 ; r0 set to 0x46
	bra loc_8c1B6FC6
	mov.b r12,@(r0,r14)


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B6EEA:
	#data 0x00FF
	#align4

loc_8c1B6EEC:
	#data 0x8C34CEE9
loc_8c1B6EF0:
	#data 0x8C347A30
loc_8c1B6EF4:
	#data 0x8C34BBA1

;==============================================
loc_8c1b6ef8:
	mov.b r12,@(r0,r14)
	mov 0x45,r0
	mov 0x40,r4
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r4,r3
	bf loc_8c1b6f2e
	mov.b @r13,r1
	extu.b r1,r1
	tst r4,r1
	bt loc_8c1b6f2e
	mov.l @(loc_8C1B6FD4,pc),r3
	mov 0x72,r0
	mov.b @r3,r2
	mov.b @(r0,r14),r1
	cmp/eq r1,r2
	bt loc_8c1b6f1e
	bsr loc_8c1b7412
	mov.b @(r0,r14),r4

loc_8c1b6f1e:
	mov.l @(loc_8C1B6FD8,pc),r2
	mov 0x74,r0
	mov.b @r2,r3
	mov.b @(r0,r14),r1
	cmp/eq r1,r3
	bt loc_8c1b6f2e
	bsr loc_8c1b754a
	nop
	
loc_8c1b6f2e:
	mov 0x45,r0
	mov 0x01,r4
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r4,r3
	bf loc_8c1b6f46
	mov.b @r13,r1
	extu.b r1,r1
	tst r4,r1
	bt loc_8c1b6f46
	bsr loc_8c1b71be
	nop
	
loc_8c1b6f46:
	mov 0x45,r0
	mov 0x02,r4
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r4,r3
	bf loc_8c1b6f5e
	mov.b @r13,r1
	extu.b r1,r1
	tst r4,r1
	bt loc_8c1b6f5e
	bsr loc_8c1b72fe
	nop
	
loc_8c1b6f5e:
	mov 0x45,r0
	mov 0x08,r4
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r4,r3
	bf loc_8c1b6f78
	mov.b @r13,r1
	extu.b r1,r1
	tst r4,r1
	bt loc_8c1b6f78
	mov.l @(loc_8c1b6fdc,pc),r2
	jsr @r2
	nop
	
loc_8c1b6f78:
	mov 0x45,r0
	mov 0x10,r4
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r4,r3
	bf loc_8c1b6f90
	mov.b @r13,r1
	extu.b r1,r1
	tst r4,r1
	bt loc_8c1b6f90
	bsr loc_8c1b7110
	nop
	
loc_8c1b6f90:
	mov 0x45,r0
	mov 0x20,r4
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r4,r3
	bf loc_8c1b6fa8
	mov.b @r13,r1
	extu.b r1,r1
	tst r4,r1
	bt loc_8c1b6fa8
	bsr loc_8c1b7390
	nop
	
loc_8c1b6fa8:
	mov.w @(loc_8C1B6FD0,pc),r4
	mov 0x45,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r4,r3
	bf loc_8c1b6fc6
	mov.b @r13,r1
	extu.b r1,r1
	tst r4,r1
	bt loc_8c1b6fc6
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1b7434
	mov.l @r15+,r14
	
loc_8c1b6FC6:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b6fd0:
	#data 0x0080
	#align4

loc_8c1b6fd4:
	#data 0x8C34CEEA
loc_8c1b6fd8:
	#data 0x8C34CEEC
loc_8c1B6FDC:
	#data bank1a.loc_8c1a0C42

;==============================================
loc_8c1b6fe0:
	mov.l r14,@-r15
	mov 0x00,r4
	mov.l r12,@-r15
	mov 0x3C,r0
	mov.l r11,@-r15
	mov.l @(loc_8C1B70CC,pc),r3
	mov.b r4,@r3
	mov.w @(loc_8C1B70C0,pc),r2
	mov.l @(loc_8C1B70D0,pc),r5
	mov.w r2,@(r0,r5)
	mov 0x3E,r0
	mov.b r4,@(r0,r5)
	mov 0x45,r0
	mov.b r4,@(r0,r5)
	mov 0x48,r0
	mov.b r4,@(r0,r5)
	mov.w @(loc_8C1B70C2,pc),r7
	mov 0x4B,r0
	mov.b r7,@(r0,r5)
	mov.w @(loc_8C1B70C4,pc),r6
	mov 0x4A,r0
	mov.b r6,@(r0,r5)
	mov 0x4D,r0
	mov.b r7,@(r0,r5)
	mov 0x4C,r0
	mov.b r6,@(r0,r5)
	mov 0x4F,r0
	mov.b r7,@(r0,r5)
	mov 0x4E,r0
	mov.b r6,@(r0,r5)
	mov 0x50,r0
	mov.b r4,@(r0,r5)
	mov 0x75,r0
	mov 0x10,r7
	mov.b r7,@(r0,r5)
	mov 0x76,r0
	mov 0x02,r2
	mov.b r2,@(r0,r5)
	mov r4,r6

loc_8c1b702e:
	mov r5,r2
	add 0x51,r2
	extu.b r6,r3
	add r2,r3
	mov.b r4,@r3
	add 0x01,r6
	extu.b r6,r3
	cmp/ge r7,r3
	bf loc_8c1b702e
	mov.l @(loc_8C1B70D8,pc),r3
	mov r4,r7
	mov.l @(loc_8C1B70D4,pc),r6
	mov 0x08,r11
	mov.l r6,@r3
	mov.l @(loc_8C1B70DC,pc),r2
	mov.l r6,@r2
	mov.w @(loc_8C1B70C6,pc),r1
	mov.l @(loc_8C1B70E0,pc),r3
	add r1,r6
	mov.l r6,@r3
	mov r4,r6
	mov.l @(loc_8C1B70E4,pc),r2
	mov.w r4,@r2
	mov.w @(loc_8C1B70C8,pc),r12
	mov r12,r14
	add 0x91,r14

loc_8c1b7062:
	mov.w @(loc_8C1B70CA,pc),r3
	exts.w r6,r1
	add r5,r3
	add r1,r3
	mov.w r12,@r3
	mov.w @(loc_8C1B70CA,pc),r2
	add r5,r2
	add r2,r1
	mov r4,r0
	nop
	mov.w r0,@(0x02,r1)
	add 0x01,r7
	extu.b r7,r3
	cmp/ge r11,r3
	bf/s loc_8c1b7062
	add r14,r6
	mov.l @(loc_8C1B70E8,pc),r3
	mov.b r4,@r3
	mov.l @(loc_8C1B70EC,pc),r2
	mov.b r4,@r2
	mov.l @(loc_8C1B70F0,pc),r1
	mov.b r4,@r1
	mov.l @(loc_8C1B70F4,pc),r3
	mov.b r4,@r3
	mov 0x17,r3
	mov.l @(loc_8C1B70F8,pc),r2
	mov.b r4,@r2
	mov 0x03,r2
	mov.l @(loc_8C1B70FC,pc),r1
	mov.b r4,@r1
	mov.l @(loc_8C1B7100,pc),r0
	mov.b r3,@r0
	mov 0x43,r0
	mov.l @(loc_8C1B7104,pc),r3
	mov.b r2,@r3
	mov.l @(loc_8C1B7108,pc),r1
	mov.b r4,@r1
	mov.b r4,@(r0,r5)
	mov 0x44,r0
	mov.b r4,@(r0,r5)
	mov.l @(loc_8C1B710C,pc),r2
	mov 0x01,r3
	mov.b r3,@r2
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B70C0:
	#data 0x0080
loc_8C1B70C2:
	#data 0x00FF
loc_8C1B70C4:
	#data 0x00BF
loc_8C1B70C6:
	#data 0x07CF
loc_8C1B70C8:
	#data 0x00FB
loc_8C1B70CA:
	#data 0x04D8
	#align4

loc_8C1B70CC:
	#data 0x8C34BBA3
loc_8C1B70D0:
	#data 0x8C347A30
loc_8C1B70D4:
	#data 0x8C34B35C
loc_8C1B70D8:
	#data 0x8C34BB30
loc_8C1B70DC:
	#data 0x8C34BB34
loc_8C1B70E0:
	#data 0x8C34BB2C
loc_8C1B70E4:
	#data 0x8C34B35A
loc_8C1B70E8:
	#data 0x8C34BB96
loc_8C1B70EC:
	#data 0x8C34BB97
loc_8C1B70F0:
	#data 0x8C34BB9A
loc_8C1B70F4:
	#data 0x8C34BB95
loc_8C1B70F8:
	#data 0x8C34BB98
loc_8C1B70FC:
	#data 0x8C34BB99
loc_8C1B7100:
	#data 0x8C34CEEA
loc_8C1B7104:
	#data 0x8C34CEEB
loc_8C1B7108:
	#data 0x8C34CEEC
loc_8C1B710C:
	#data 0x8C34BBA1

;==============================================
loc_8c1b7110:
	mov.l r13,@-r15
	mov 0x00,r4
	mov.l r12,@-r15
	mov 0x50,r0
	mov.l @(0xFC,PC),r3
	sts.l pr,@-r15
	mov.w r4,@r3
	mov.l @(0xFC,PC),r7
	mov.b r4,@(r0,r7)
	mov.l @(0xFC,PC),r5
	mov.w @r5,r2
	tst r2,r2
	bf loc_8c1b7166
	mov.l @(0xF8,PC),r2
	mov.b @r2,r4
	extu.b r4,r0
	cmp/eq 0x0B,r0
	bf loc_8c1b71b6
	mov.l @(0xF0,PC),r3
	mov.b @r3,r1
	mov.l r1,@-r15
	mov.l @(0xF0,PC),r1
	mov.b @r1,r0
	mov.l r0,@-r15
	mov.l @(0xEC,PC),r0
	mov.b @r0,r2
	mov.l r2,@-r15
	mov.l @(0xEC,PC),r2
	mov.b @r2,r3
	mov.l r3,@-r15
	mov.l @(0xE8,PC),r3
	mov.b @r3,r1
	mov.l r1,@-r15
	mov.l @(0xEC,PC),r3
	mov.l @(0xE4,PC),r2
	mov.b @r3,r6
	mov.b @r2,r7
	mov.l @(0xEC,PC),r3
	mov.l @(0xE4,PC),r2
	jsr @r3
	mov.b @r2,r5
	bra loc_8c1b71b6
	add 0x14,r15

loc_8c1b7166:
	mov r4,r6
	mov.l @(0xE8,PC),r4
	mov.l @(0xE4,PC),r13
	mov.l @(0xDC,PC),r12
	bra loc_8c1b7198
	mov 0x10,r0

loc_8c1b7172:
	mov r7,r2
	mov.l @r4,r1
	add 0x51,r2
	extu.b r6,r3
	add r2,r3
	mov.b @r1,r2
	mov.b r2,@r3
	mov.l @r4,r3
	add 0x01,r3
	mov r3,r1
	mov.l r3,@r4
	mov.l @r13,r2
	cmp/hi r2,r1
	bf.s loc_8c1b7192
	add 0x01,r6
	mov.l r12,@r4

loc_8c1b7192:
	mov.w @r5,r2
	add 0xFF,r2
	mov.w r2,@r5

loc_8c1b7198:
	extu.b r6,r3
	cmp/ge r0,r3
	bt loc_8c1b71a6
	mov.l @(0x80,PC),r2
	mov.w @r2,r3
	tst r3,r3
	bf loc_8c1b7172

loc_8c1b71a6:
	mov 0x50,r0
	mov.b r6,@(r0,r7)
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r3
	mov 0x04,r4
	mov.l @r15+,r12
	jmp @r3
	mov.l @r15+,r13

loc_8c1b71b6:
	lds.l @r15+,pr
	mov.l @r15+,r12
	rts
	mov.l @r15+,r13

;==============================================
loc_8c1b71be:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x98,PC),r13
	mov.w @(0x4C,PC),r3
	mov.b @r13,r7
	mov.l @(0x50,PC),r6
	extu.b r7,r7
	muls.w r3,r7
	mov r6,r4
	add 0x78,r4
	sts.l pr,@-r15
	sts macl,r7
	exts.w r7,r7
	add r7,r4
	mov.w @(0x2,r4),r0
	mov r0,r5
	mov r4,r2
	extu.w r5,r14
	add 0x04,r2
	add 0xFF,r14
	add r2,r14
	mov.b @r14,r14
	mov.l @(0x2C,PC),r2
	mov 0x00,r1
	mov.w r1,@r2
	mov r6,r0
	nop
	add 0x78,r0
	mov.w @(r0,r7),r0
	extu.w r0,r0
	tst 0x04,r0
	bt loc_8c1b7264
	mov.l @(0x60,PC),r3
	extu.b r14,r0
	and 0x7F,r0
	mov.b @r3,r1
	extu.b r1,r1
	cmp/eq r1,r0
	bf loc_8c1b7264
	bsr loc_8c1b75c4
	nop
	bra loc_8c1b726a
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b7214:
	#data 0x008C
	#align4

loc_8c1b7218:
	#data 0x8c34b2d0
loc_8c1b721c:
	#data 0x8c347a30
loc_8c1b7220:
	#data 0x8c34b35a
loc_8c1b7224:
	#data 0x8c34b338
loc_8c1b7228:
	#data 0x8c34b340
loc_8c1b722c:
	#data 0x8c34b33f
loc_8c1b7230:
	#data 0x8c34b33e
loc_8c1b7234:
	#data 0x8c34b33d
loc_8c1b7238:
	#data 0x8c34b33c
loc_8c1b723c:
	#data 0x8c34b33b
loc_8c1b7240:
	#data 0x8c34b33a
loc_8c1b7244:
	#data 0x8c34b339
loc_8c1b7248:
	#data bank1a.loc_8c1a06C8
loc_8c1b724c:
	#data 0x8c34b35c
loc_8c1b7250:
	#data 0x8c34bb2c
loc_8c1b7254:
	#data 0x8c34bb30
loc_8c1b7258:
	#data bank1a.loc_8c1a1296
loc_8c1b725c:
	#data 0x8c34bb9a
loc_8c1b7260:
	#data 0x8c34b345

;==============================================
loc_8c1b7264:
	mov.l @(0xF8,PC),r3
	jsr @r3
	nop

loc_8c1b726a:
	mov.l @(0xF8,PC),r5
	mov 0x01,r7
	mov r5,r2
	add 0x15,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r7,r3
	bf.s loc_8c1b72a2
	mov r5,r4
	mov.b @(0xE,r4),r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1b728e
	mov.l @(0xE0,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b72a2

loc_8c1b728e:
	mov.l @(0xDC,PC),r2
	extu.b r14,r0
	and 0x7F,r0
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf loc_8c1b72a2
	mov.b @(0xE,r4),r0
	or 0x01,r0
	mov.b r0,@(0xE,r4)

loc_8c1b72a2:
	mov r5,r6
	add 0x0E,r6
	mov.b @r6,r3
	extu.b r3,r3
	tst r7,r3
	bf.s loc_8c1b72b8
	mov r5,r4
	mov.b @r6,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b72e4

loc_8c1b72b8:
	mov.l @(0xB0,PC),r2
	extu.b r14,r0
	and 0x7F,r0
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bt loc_8c1b72e4
	mov r4,r0
	nop
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1b72e4
	mov.b @(0xE,r4),r0
	and 0xFC,r0
	mov.b r0,@(0xE,r4)
	mov r5,r3
	add 0x15,r3
	mov.b @r3,r0
	and 0xE0,r0
	mov.b r0,@r3

loc_8c1b72e4:
	mov.b @r13,r0
	lds.l @r15+,pr
	add 0x01,r0
	and 0x07,r0
	mov.b r0,@r13
	mov.l @(0x80,PC),r4
	mov.b @r4,r3
	add 0x01,r3
	mov.b r3,@r4
	mov.l @r15+,r13
	mov.l @(0x78,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c1b72fe:
	mov.l @(0x7C,PC),r4
	mov 0x00,r0
	mov.w @(0x54,PC),r2
	mov.b @r4,r3
	mov.l @(0x70,PC),r6
	extu.b r3,r3
	mov.w @(0x4E,PC),r1
	muls.w r2,r3
	sts.l pr,@-r15
	add r6,r1
	sts macl,r3
	exts.w r3,r3
	add r1,r3
	mov.w r0,@(0x2,r3)
	mov.l @(0x64,PC),r3
	mov.w r0,@r3
	mov.b @r4,r0
	add 0x01,r0
	and 0x07,r0
	mov.b r0,@r4
	mov.l @(0x5C,PC),r5
	mov.b @r5,r1
	tst r1,r1
	bt loc_8c1b7334
	mov.b @r5,r1
	add 0xFF,r1
	mov.b r1,@r5

loc_8c1b7334:
	mov.b @r4,r3
	mov.w @(0x20,PC),r2
	extu.b r3,r3
	mov.w @(0x1E,PC),r1
	muls.w r2,r3
	mov.w @(0x1C,PC),r0
	add r6,r1
	sts macl,r3
	exts.w r3,r3
	add r1,r3
	mov.w @(r0,r3),r0
	tst r0,r0
	bt loc_8c1b7354
	mov.l @(0x38,PC),r1
	jsr @r1
	nop

loc_8c1b7354:
	mov.l @(0x34,PC),r3
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b735a:
	#data 0x008C
loc_8c1b735c:
	#data 0x04D8
loc_8c1b735e:
	#data 0x0084
	#align4

loc_8c1b7360:
	#data bank1a.loc_8c1a0C42
loc_8c1b7364:
	#data 0x8C34B288
loc_8c1b7368:
	#data 0x8C34BB9B
loc_8c1b736c:
	#data 0x8C34B345
loc_8c1b7370:
	#data 0x8C34BB96
loc_8c1b7374:
	#data bank1a.loc_8c1a1356
loc_8c1b7378:
	#data 0x8C347A30
loc_8c1b737c:
	#data 0x8C34BB98
loc_8c1b7380:
	#data 0x8C34B2D0
loc_8c1b7384:
	#data 0x8C34BB95
loc_8c1b7388:
	#data bank1a.loc_8c1a0F28
loc_8c1b738c:
	#data bank1a.loc_8c1a1338

;==============================================
loc_8c1b7390:
	mov.l r14,@-r15
	mov 0x61,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r4
	add 0xEC,r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c1b7400
	mov.l @(0xD0,PC),r2
	mov 0x00,r6
	mov r15,r14
	mov.w r6,@r2
	bra loc_8c1b73c8
	mov r6,r5

loc_8c1b73b6:
	extu.b r5,r6
	mov r6,r2
	add r14,r2
	mov r4,r0
	nop
	add 0x62,r0
	mov.b @(r0,r6),r0
	add 0x01,r5
	mov.b r0,@(0x1,r2)

loc_8c1b73c8:
	mov 0x61,r0
	extu.b r5,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r2,r3
	bf loc_8c1b73b6
	mov.b @(r0,r4),r2
	mov.b r2,@r14
	mov 0x01,r13
	mov.l @(0xA4,PC),r9
	mov.l @(0xA4,PC),r11
	bra loc_8c1b73f0
	mov r14,r10

loc_8c1b73e2:
	extu.b r13,r12
	add r14,r12
	jsr @r9
	mov r12,r4
	jsr @r11
	mov.b @r12,r4
	add 0x01,r13

loc_8c1b73f0:
	mov.b @r10,r2
	extu.b r13,r3
	extu.b r2,r2
	cmp/gt r2,r3
	bf loc_8c1b73e2
	mov.l @(0x8C,PC),r2
	jsr @r2
	mov 0x08,r4

loc_8c1b7400:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c1B7412:
	sts.l pr,@-r15
	mov.l @(loc_8c1B7490,pc),r2 ; r2 set to 0x8C198A10
	mov.l @(loc_8c1B748C,pc),r3 ; r3 set to 0x8C34B141
	jsr @r2
	mov.b @r3,r5
	mov.l @(loc_8c1B7494,pc),r4 ; r4 set to 0x8C34CEEA
	mov 0x72,r0 ; r0 set to 0x72
	mov.l @(loc_8c1B7478,pc),r5 ; r5 set to 0x8C347A30
	mov.b @(r0,r5),r3 ; r3 ??
	mov.b r3,@r4 ; r4 ??? bc r3 is ???
	mov.w @(loc_8c1B7474,pc),r0 ; r0 set to 0x938
	mov.b @r4,r2 ; r2 ??? bc r4 is ???
	mov.b r2,@(r0,r5)  ; r5 ??? bc r2 is ???
	mov.l @(loc_8c1B7488,pc),r3 ; r3 set to 0x8C1A1296
	mov.w @(loc_8c1B7476,pc),r4 ; r4 set to 0x800
	jmp @r3
	lds.l @r15+,pr

loc_8c1B7434:
	mov.l r14,@-r15
	mov 0x73,r0
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r14
	mov 0x40,r4
	mov.b @(r0,r14),r3
	mov.l @(0x54,PC),r1
	extu.b r3,r3
	and r4,r3
	mov.b @r1,r2
	extu.b r2,r2
	and r4,r2
	cmp/eq r2,r3
	bf loc_8c1b7458
	bsr loc_8c1b749c
	nop
	bra loc_8c1b7466
	nop

loc_8c1B7458:
	mov 0x76,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c1b7466
	bsr loc_8c1b74f6
	nop

loc_8c1B7466:
	mov 0x73,r0
	mov.b @(r0,r14),r3
	lds.l @r15+,pr
	mov.l @(0x28,PC),r2
	mov.b r3,@r2
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B7474:
	#data 0x0938
loc_8c1B7476:
	#data 0x0800
	#align4

loc_8c1B7478:
	#data 0x8C347A30
loc_8c1B747c:
	#data 0x8C34B2D0
loc_8c1B7480:
	#data bank1a.loc_8c1aEC5A
loc_8c1B7484:
	#data bank19.loc_8c198AD0
loc_8c1B7488:
	#data bank1a.loc_8c1a1296
loc_8c1B748C:
	#data 0x8C34B141
loc_8c1B7490:
	#data bank19.loc_8c198A10
loc_8c1B7494:
	#data 0x8C34CEEA
loc_8c1B7498:
	#data 0x8C34CEEB

;==============================================
loc_8c1B749C:
	mov 0x10,r6
	mov.l r14,@-r15
	mov.l @(0xEC,PC),r3
	mov.b @r3,r4
	mov 0x01,r2
	extu.b r4,r14
	tst r14,r2
	bf.s loc_8c1b74dc
	mov r6,r5
	mov 0x02,r0
	tst r14,r0
	bt loc_8c1b74dc
	mov 0x20,r3
	tst r14,r3
	bf loc_8c1b74cc
	mov 0x08,r1
	tst r14,r1
	bt loc_8c1b74cc
	tst r14,r6
	bt loc_8c1b74c8
	bra loc_8c1b74dc
	mov 0x0C,r5

loc_8c1B74C8:
	bra loc_8c1b74dc
	mov 0x0D,r5

loc_8c1B74CC:
	mov r14,r3
	mov 0x08,r4
	tst r4,r3
	bt loc_8c1b74da
	mov 0x10,r1
	tst r14,r1
	bf loc_8c1b74dc

loc_8c1B74DA:
	mov r4,r5

loc_8c1B74DC:
	mov.l @(0xB4,PC),r1
	extu.b r5,r2
	mov.b @r1,r3
	extu.b r3,r3
	cmp/eq r3,r2
	bt loc_8c1b74f2
	mov.l @(0xAC,PC),r2
	mov.b @r2,r4
	mov.l @(0xAC,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c1B74F2:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B74F6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x94,PC),r3
	mov.l @(0xA0,PC),r14
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1b752c
	mov.l @(0x9C,PC),r1
	jsr @r1
	nop
	mov.l @(0x98,PC),r3
	mov 0x00,r4
	mov.w r4,@r3
	mov.b @r14,r0
	extu.b r0,r0
	tst 0x01,r0
	bf loc_8c1b7544
	mov.b @r14,r0
	or 0x01,r0
	mov.b r0,@r14
	mov.l @(0x88,PC),r1
	mov.w r4,@r1
	mov.b @r14,r0
	and 0xEF,r0
	bra loc_8c1b7544
	mov.b r0,@r14

loc_8c1B752C:
	mov.b @r14,r0
	extu.b r0,r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bf loc_8c1b7544
	mov.b @r14,r0
	lds.l @r15+,pr
	or 0x10,r0
	mov.b r0,@r14
	mov.l @(0x70,PC),r1
	jmp @r1
	mov.l @r15+,r14

loc_8c1B7544:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B754A:
	mov.l r14,@-r15
	mov 0x74,r0
	sts.l pr,@-r15
	mov.w @(0x38,PC),r4
	mov.l @(0x60,PC),r14
	mov.b @(r0,r14),r3
	mov.l @(0x60,PC),r1
	extu.b r3,r3
	and r4,r3
	mov.b @r1,r2
	extu.b r2,r2
	and r4,r2
	cmp/eq r2,r3
	bt loc_8c1b757e
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r4,r2
	bt loc_8c1b757e
	mov.l @(0x4C,PC),r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r4,r3
	bf loc_8c1b757e
	mov.l @(0x44,PC),r2
	jsr @r2
	nop

loc_8c1B757E:
	mov 0x74,r0
	mov.b @(r0,r14),r1
	lds.l @r15+,pr
	mov.l @(0x30,PC),r2
	mov.b r1,@r2
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b758c:
	#data 0x0080
	#align4

loc_8c1b7590:
	#data 0x8C347AA3
loc_8c1b7594:
	#data 0x8C34B141
loc_8c1b7598:
	#data 0x8C347AA2
loc_8c1B759C:
	#data bank19.loc_8c198A10
loc_8c1B75a0:
	#data 0x8C34BB93
loc_8c1B75A4:
	#data bank1a.loc_8c1a0C42
loc_8c1B75A8:
	#data 0x8C34B2D0
loc_8c1B75Ac:
	#data 0x8C34B358

loc_8c1B75B0:
	#data bank19.loc_8c19FF44
loc_8c1B75B4:
	#data 0x8C347A30
loc_8c1B75B8:
	#data 0x8C34CEEC
loc_8c1B75Bc:
	#data 0x8C34BB9B
loc_8c1B75C0:
	#data bank1a.loc_8c1a0BD8

;==============================================
loc_8c1B75C4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(0x11C,PC),r14
	sts.l pr,@-r15
	mov.l @(0x11C,PC),r3
	mov r14,r5
	mov.l @(0x110,PC),r12
	add 0x15,r5
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c1b75fe
	mov.l @r3,r4
	mov.l @(0x10C,PC),r2
	mov.l @r12,r1
	mov.b @r2,r7
	extu.b r7,r7
	shll r7
	add r1,r7
	extu.b r7,r6
	cmp/hi r4,r6
	bf loc_8c1b75f6
	bra loc_8c1b76aa
	mov.l r4,@r12

loc_8c1B75F6:
	bt loc_8c1b75fe
	mov.b @r5,r0
	and 0xFE,r0
	mov.b r0,@r5
  
loc_8c1B75FE:
	mov r14,r0
	nop
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b7662
	mov.l @(0xE4,PC),r3
	mov.w @(0xCE,PC),r2
	mov.b @r3,r5
	mov.l @(0xE4,PC),r1
	extu.b r5,r5
	muls.w r2,r5
	sts macl,r5
	exts.w r5,r5
	add r1,r5
	mov.w @(0x2,r5),r0
	mov r0,r4
	mov r5,r3
	extu.w r4,r13
	add 0x04,r3
	add 0xFF,r13
	add r3,r13
	mov.b @r13,r13
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r13,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b76aa
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov r13,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b7662
	mov r14,r4
	add 0x0E,r4
	mov.b @r4,r0
	and 0xFC,r0
	mov.b r0,@r4
	mov r14,r3
	add 0x15,r3
	mov.b @r3,r0
	and 0xE0,r0
	mov.b r0,@r3
	mov.b @r4,r0
	or 0x01,r0
	bra loc_8c1b76aa
	mov.b r0,@r4

loc_8c1B7662:
	mov r14,r4
	mov.b @(0xE,r4),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b7696
	mov r4,r0
	nop
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1b7684
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1b76b4
	mov.l @r15+,r14

loc_8c1B7684:
	mov.l @(0x64,PC),r2
	mov.l @r2,r3
	mov.l r3,@r12
	mov r14,r3
	add 0x15,r3
	mov.b @r3,r0
	or 0x1C,r0
	bra loc_8c1b76aa
	mov.b r0,@r3

loc_8c1B7696:
	mov.b @(0xE,r4),r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c1b76a4
	mov.b @(0xE,r4),r0
	bra loc_8c1b76a8
	or 0x02,r0

loc_8c1B76A4:
	mov.b @(0xE,r4),r0
	or 0x01,r0

loc_8c1B76A8:
	mov.b r0,@(0xE,r4)

loc_8c1B76AA:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B76B4:
	sts.l pr,@-r15
	mov.l @(0x48,PC),r3
	add 0xFC,r15
	mov.l r3,@r15
	mov.b @r3,r0
	and 0xEF,r0
	mov.b r0,@r3
	mov.l @(0x40,PC),r3
	jsr @r3
	nop
	mov.l @r15,r3
	mov.b @r3,r0
	or 0x01,r0
	mov.b r0,@r3
	mov.l @(0x18,PC),r2
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r2,r3
	mov.l @(0x8,PC),r1
	mov.l r3,@r1
	rts
	nop

;==============================================
loc_8c1B76e0:
	#data 0x008C
	#align4

loc_8c1B76e4:
	#data 0x8C34BB38
loc_8c1B76e8:
	#data 0x8C34B288
loc_8c1B76ec:
	#data 0x8C34B2CC
loc_8c1B76f0:
	#data 0x8C34B346
loc_8c1B76f4:
	#data 0x8C34BB9A
loc_8c1B76f8:
	#data 0x8C347AA8
loc_8c1B76FC:
	#data bank19.loc_8c198E04
loc_8c1B7700:
	#data 0x8C34B29D
loc_8c1B7704:
	#data bank1a.loc_8c1a0C42

;==============================================
loc_8c1B7708:
	mov.l r14,@-r15
	mov 0x43,r0
	sts.l pr,@-r15
	add 0xE0,r15
	mov r15,r4
	add 0x10,r4
	mov r4,r2
	add 0x01,r2
	mov.l r4,@(0xC,r4)
	mov r4,r3
	mov.l r2,@(0x8,r4)
	add 0xFF,r2
	mov.l r2,@(0x4,r4)
	mov r15,r4
	mov r4,r3
	add 0x01,r3
	mov r4,r2
	mov.l r4,@(0xC,r4)
	mov.l r3,@(0x8,r4)
	add 0xFF,r3
	mov.l r3,@(0x4,r4)
	mov.l @(0x168,PC),r14
	mov.l @(0x14,r15),r3
	mov.l @r14,r2
	mov.l @(0xC,r2),r1
	mov.b @(r0,r1),r0
	mov.b r0,@r3
	mov 0x44,r0
	mov.l @r14,r2
	mov.l @(0x18,r15),r3
	mov.l @(0xC,r2),r1
	mov.b @(r0,r1),r0
	mov.b r0,@r3
	mov 0x43,r0
	mov.l @r14,r3
	mov 0x00,r4
	mov.l @(0xC,r3),r2
	mov.b r4,@(r0,r2)
	mov.l @r14,r3
	mov 0x44,r0
	mov.l @(0xC,r3),r2
	mov.b r4,@(r0,r2)
	mov.l @r14,r2
	mov 0x41,r0
	mov.l @(0x4,r15),r3
	mov.l @(0xC,r2),r1
	mov.b @(r0,r1),r0
	mov.b r0,@r3
	mov 0x42,r0
	mov.l @r14,r2
	mov.l @(0x8,r15),r3
	mov.l @(0xC,r2),r1
	mov.b @(r0,r1),r0
	mov.b r0,@r3
	mov r15,r0
	add 0x10,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8c1b778e
	mov r15,r0
	nop
	mov.b @r0,r0
	tst 0x10,r0
	bf loc_8c1b778e
	mov.l @(0x114,PC),r2
	jsr @r2
	mov.l @r14,r4

loc_8c1B778E:
	mov r15,r0
	add 0x10,r0
	mov.b @r0,r0
	tst 0x04,r0
	bt loc_8c1b77a0
	mov r15,r0
	nop
	mov.b @r0,r0
	tst 0x04,r0

loc_8c1B77A0:
	mov r15,r0
	add 0x10,r0
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c1b77ba
	mov r15,r0
	nop
	mov.b @r0,r0
	tst 0x08,r0
	bf loc_8c1b77ba
	mov.l @(0xEC,PC),r2
	jsr @r2
	mov.l @r14,r4

loc_8c1B77BA:
	mov r15,r0
	add 0x10,r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c1b77d4
	mov r15,r0
	nop
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c1b77d4
	mov.l @(0xD8,PC),r2
	jsr @r2
	mov.l @r14,r4

loc_8c1B77D4:
	mov r15,r0
	add 0x10,r0
	mov.b @r0,r0
	tst 0x40,r0
	bt loc_8c1b77ee
	mov r15,r0
	nop
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c1b77ee
	mov.l @(0xC0,PC),r2
	jsr @r2
	mov.l @r14,r4

loc_8c1B77EE:
	mov r15,r0
	add 0x10,r0
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8c1b7808
	mov r15,r0
	nop
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c1b7808
	mov.l @(0xAC,PC),r2
	jsr @r2
	mov.l @r14,r4

loc_8c1B7808:
	mov r15,r0
	add 0x11,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1b782a
	mov r15,r0
	add 0x01,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.w r0,r0
	tst r0,r0
	bf loc_8c1b782a
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov.l @r14,r4

loc_8c1B782A:
	mov r15,r0
	add 0x11,r0
	mov.b @r0,r0
	tst 0x04,r0
	bt loc_8c1b7844
	mov r15,r0
	add 0x01,r0
	mov.b @r0,r0
	tst 0x04,r0
	bf loc_8c1b7844
	mov.l @(0x78,PC),r2
	jsr @r2
	mov.l @r14,r4

loc_8c1B7844:
	mov r15,r0
	add 0x11,r0
	mov.b @r0,r0
	tst 0x02,r0
	bt loc_8c1b785e
	mov r15,r0
	add 0x01,r0
	mov.b @r0,r0
	tst 0x02,r0
	bf loc_8c1b785e
	mov.l @(0x60,PC),r2
	jsr @r2
	mov.l @r14,r4

loc_8c1B785E:
	mov r15,r0
	add 0x11,r0
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c1b7878
	mov r15,r0
	add 0x01,r0
	mov.b @r0,r0
	tst 0x08,r0
	bf loc_8c1b7878
	mov.l @(0x4C,PC),r2
	jsr @r2
	mov.l @r14,r4

loc_8c1B7878:
	mov r15,r0
	add 0x13,r0
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8c1b7892
	mov r15,r0
	add 0x03,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c1b7892
	mov.l @(0x34,PC),r2
	jsr @r2
	mov.l @r14,r4

loc_8c1B7892:
	add 0x20,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1B789C:
	#data 0x8C342B90
loc_8c1B78A0:
	#data bank1a.loc_8c1a1DEC
loc_8c1B78A4:
	#data bank1a.loc_8c1a1A5A
loc_8c1B78A8:
	#data bank1a.loc_8c1a1A64
loc_8c1B78AC:
	#data bank1a.loc_8c1a1B28
loc_8c1B78B0:
	#data bank1a.loc_8c1a1B50
loc_8c1B78B4:
	#data bank1a.loc_8c1a1F9E
loc_8c1B78B8:
	#data bank1a.loc_8c1a1AB0
loc_8c1B78BC:
	#data bank1a.loc_8c1a2158
loc_8c1B78C0:
	#data bank1a.loc_8c1a213E
loc_8c1B78C4:
	#data bank1a.loc_8c1a2172

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1B78E0:
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r8
	mov.l r4,@r15
	mov.l @(loc_8c1B7924,pc),r3 ; r3 set to 0x8C18C32A
	mov.w @(loc_8c1B7920,pc),r4 ; r4 set to 0x138
	jsr @r3
	add 0x40,r8
	mov.l r0,@r8
	mov.l @(loc_8c1B7924,pc),r3 ; r3 set to 0x8C18C32A
	mov.w @(loc_8c1B7922,pc),r4 ; r4 set to 0x134
	mov.l @r15,r8
	jsr @r3
	add 0x44,r8
	mov.l r0,@r8
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;==============================================
	#repeat 6
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B7920:
	#data 0x0138

loc_8c1B7922:
	#data 0x0134
	#align4

loc_8c1B7924:
	#data bank18.loc_8c18C32A

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16


;==============================================
loc_8c1B7940:
	mov.l @(loc_8c1B7960,pc),r2 ; r2 set to 0x8C1C9B38
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @r6,r7
	cmp/hs r3,r7
	mov.l @(loc_8c1B7964,pc),r3 ; r3 set to 0x8C1A83C0
	movt r7
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1B7960:
	#data bank1c.loc_8c1c9B38
loc_8c1B7964:
	#data bank1a.loc_8c1a83C0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1B7980:
	mov 0xF8,r5
	mov.l @(0x3C,PC),r6
	mov 0x03,r2
	and r4,r5
	mov 0x04,r3
	shlr r5
	and r4,r2
	tst r4,r3
	add r2,r5
	bt loc_8c1b7996
	add r6,r5

loc_8c1B7996:
	mov.l @(0x2C,PC),r3
	cmp/hs r3,r4
	bf loc_8c1b799e
	add r6,r5

loc_8c1B799E:
	rts
	mov r5,r0

;==============================================
	#repeat 8
	nop

	#align16_nop


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b79c0:
	#data 0x00400000
loc_8c1b79c4:
	#data 0x00800000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1B79E0:
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xF8,r15
	mov.w @r7,r3
	mova @(loc_8c1B7AE8,pc),r0  ; r0 init to 0x8C1B7AE8
	mov r4,r13
	shll16 r3
	lds r3,fpul
	mov r7,r3
	add 0x02,r3
	mov.l r3,@(0x04,r15)
	mov.w @r3,r2
	float fpul,fr3
	fmov.s @r0,fr4
	mov 0x20,r0 ; r0 set to 0x20
	shll16 r2
	lds r2,fpul
	mov.w @(r0,r15),r2
	mov 0x24,r0 ; r0 set to 0x24
	fmov fr3,fr6
	float fpul,fr3
	shll2 r2
	shll2 r2
	lds r2,fpul
	mov.w @(r0,r15),r2
	fmov fr3,fr7
	float fpul,fr3
	shll2 r2
	shll2 r2
	lds r2,fpul
	fmov fr3,fr9
	fdiv fr4,fr9
	float fpul,fr3
	fmov fr3,fr8
	fdiv fr4,fr8
	mov.w @(loc_8c1B7AE4,pc),r9 ; r9 set to 0x1FFF
	mov 0x20,r11 ; r11 set to 0x20
	mov.w @(loc_8c1B7AE2,pc),r8 ; r8 set to 0xFF00
	mov 0x00,r10 ; r10 set to 0x00
	bra loc_8c1B7ABA
	mov r10,r12

loc_8c1B7A3A:
	mov.w @r13,r4
	mov 0xF8,r3
	mov r4,r2
	mov r4,r1
	shll8 r2
	shad r3,r1
	mov.l @(0xA4,PC),r3
	and r8,r2
	extu.b r1,r1
	or r2,r1
	exts.w r1,r4
	tst r4,r3
	bt loc_8c1b7a58
	bra loc_8c1b7ad2
	mov r12,r0

loc_8c1B7A58:
	and r9,r4
	mov.l r10,@r15
	add 0x01,r4
	lds r4,fpul
	add 0x02,r13
	float fpul,fr3
	fmov fr3,fr10

loc_8c1B7A66:
	fmov fr8,fr3
	fmul fr7,fr3
	mov.b @r13+,r4
	fmov fr9,fr0
	mov.l @(0x80,PC),r0
	extu.b r4,r4
	fmac fr0,fr6,fr3
	shll2 r4
	fmov @(r0,r4),fr4
	mov r4,r1
	fmov fr10,fr0
	fmov fr6,fr5
	fmac fr0,fr4,fr3
	fmov fr9,fr0
	mov.l @(0x70,PC),r0
	fmov fr3,fr1
	ftrc fr1,fpul
	fmov fr8,fr3
	fmul fr5,fr3
	fmov fr1,fr7
	sts fpul,r4
	fmac fr0,fr1,fr3
	fmov fr10,fr0
	shlr16 r4
	mov.w r4,@r6
	add 0x02,r6
	fmov @(r0,r1),fr4
	fmac fr0,fr4,fr3
	fmov fr3,fr4
	ftrc fr4,fpul
	fmov fr3,fr6
	sts fpul,r4
	shlr16 r4
	exts.w r4,r4
	mov.w r4,@r6
	add 0x02,r6
	mov.l @r15,r3
	add 0x02,r3
	cmp/ge r11,r3
	bf.s loc_8c1b7a66
	mov.l r3,@r15
	add 0x01,r12

loc_8c1b7aba:
	cmp/ge r5,r12
	bf loc_8c1b7a3a
	ftrc fr6,fpul
	mov r5,r0
	sts fpul,r2
	ftrc fr7,fpul
	shlr16 r2
	sts fpul,r3
	mov.w r2,@r7
	mov.l @(0x04,r15),r1
	shlr16 r3
	mov.w r3,@r1

loc_8c1b7ad2:
	add 0x08,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b7ae2:
	#data 0xFF00
loc_8c1b7ae4:
	#data 0x1FFF
	#align4

loc_8c1b7ae8:
	#data 0x47800000
loc_8c1b7aec:
	#data 0x00008000
loc_8c1b7af0:
	#data bank1c.loc_8c1c8780
loc_8c1b7af4:
	#data bank1c.loc_8c1c8B80

;==============================================
loc_8c1B7AF8:
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xE8,r15
	mov.w @r7,r3
	mova @(loc_8c1B7C24,pc),r0  ; r0 init to 0x8C1B7C24
	mov.l @(0x34,r15),r11
	mov r4,r10
	shll16 r3
	mov.l @(0x30,r15),r12
	lds r3,fpul
	mov r7,r3
	add 0x02,r3
	mov.l r3,@(0x10,r15)
	float fpul,fr3
	mov.w @r3,r2
	shll16 r2
	lds r2,fpul
	mov.w @r11,r2
	fmov fr3,fr9
	float fpul,fr3
	shll16 r2
	lds r2,fpul
	mov r11,r2
	add 0x02,r2
	mov.l r2,@(0x14,r15)
	mov.w @r2,r1
	fmov fr3,fr2
	float fpul,fr3
	shll16 r1
	fmov.s @r0,fr4
	lds r1,fpul
	mov 0x38,r0 ; r0 set to 0x38
	fmov fr3,fr10
	float fpul,fr3
	fmov fr3,fr11
	mov.w @(r0,r15),r1
	mov 0x3C,r0 ; r0 set to 0x3C
	mov 0x00,r8 ; r8 set to 0x00
	shll2 r1
	shll2 r1
	lds r1,fpul
	mov 0x20,r9 ; r9 set to 0x20
	mov.w @(r0,r15),r1
	mov r8,r0 ; r0 set to 0x00
	mov.l r8,@r15
	float fpul,fr3
	shll2 r1
	shll2 r1
	lds r1,fpul
	mov 0x01,r1 ; r1 set to 0x01
	mov.l r1,@(0x08,r15)
	mov r5,r1 ; r1 ??? bc r5 is ???
	cmp/gt r1,r0
	mov.l r8,@(0x04,r15)
	fmov fr3,fr7
	float fpul,fr3
	fdiv fr4,fr7
	addc r0,r1
	shar r1
	fmov fr3,fr8 ; r8 ??? bc r3 is ???
	fdiv fr4,fr8
	bra loc_8c1B7CA4
	mov.l r1,@(0x0C,r15)

loc_8c1B7B7E:
	mov.w @r10,r4
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov r4,r2
	shad r3, r2
	mov r4,r1
	mov.w @(loc_8c1B7C20,pc),r3 ; r3 set to 0xFF00
	shll8 r1
	extu.b r2,r2
	mov r2,r4
	and r3,r1
	or r1,r4
	mov.l @(loc_8c1B7C28,pc),r1 ; r1 set to 0x8000
	exts.w r4,r2
	tst r1,r2
	bt loc_8c1B7BA0
	bra loc_8c1B7CD8
	mov.l @(0x04,r15),r0

loc_8c1B7BA0:
	mov.w @(loc_8c1B7C22,pc),r3 ; r3 set to 0x1FFF
	exts.w r4,r4
	mov r8,r1
	add 0x02,r10
	and r3,r4
	add 0x01,r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr6

loc_8c1B7BB2:
	fmov fr8,fr3 ; r3 ??? bc r8 is ???
	fmul fr2,fr3
	mov.b @r10+,r4
	fmov fr7,fr0
	mov.l @(loc_8c1B7C2C,pc),r0 ; r0 set to 0x8C1C8780, r0 set to 0x8C1C8780
	extu.b r4,r4
	fmac fr0,fr9,fr3
	shll2 r4
	fmov.s @(r0,r4),fr4
	mov r4,r14
	fmov fr6,fr0 ; r0 ??? bc r6 is ???, r0 ??? bc r6 is ???
	fmov fr9,fr5
	fmac fr0,fr4,fr3
	fmov fr7,fr0
	mov.l @(loc_8c1B7C30,pc),r0 ; r0 set to 0x8C1C8B80, r0 set to 0x8C1C8B80
	fmov fr3,fr1
	ftrc fr1,fpul
	fmov fr8,fr3
	fmul fr5,fr3
	fmov fr1,fr2
	sts fpul,r4
	fmac fr0,fr1,fr3
	fmov fr6,fr0 ; r0 ??? bc r6 is ???, r0 ??? bc r6 is ???
	shlr16 r4
	mov.w r4,@r6
	add 0x02,r6
	fmov.s @(r0,r14),fr4
	fmac fr0,fr4,fr3
	fmov fr3,fr4
	ftrc fr4,fpul
	fmov fr3,fr9
	sts fpul,r4
	shlr16 r4
	add 0x02,r1
	exts.w r4,r4
	cmp/ge r9,r1
	mov.w r4,@r6
	bf/s loc_8c1B7BB2
	add 0x02,r6
	mov.w @r10,r4
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8, r3 set to 0xFFFFFFF8
	mov r4,r14
	shad r3, r14
	mov r4,r2
	mov.w @(loc_8c1B7C20,pc),r3 ; r3 set to 0xFF00, r3 set to 0xFF00
	shll8 r2
	and r3,r2
	extu.b r14,r14
	or r2,r14
	mov.l @(loc_8c1B7C28,pc),r2 ; r2 set to 0x8000, r2 set to 0x8000
	exts.w r14,r4
	tst r4,r2
	bt loc_8c1B7C34
	bra loc_8c1B7CD8
	mov.l @(0x08,r15),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B7C20:
	#data 0xFF00
loc_8c1B7C22:
	#data 0x1FFF
	#align4

loc_8c1B7C24:
	#data 0x47800000
loc_8c1B7C28:
	#data 0x00008000
loc_8c1B7C2C:
	#data bank1c.loc_8c1c8780
loc_8c1B7C30:
	#data bank1c.loc_8c1c8B80

;==============================================
loc_8c1B7C34:
	mov.w @(loc_8c1B7CE8,pc),r3 ; r3 set to 0x1FFF
	mov r8,r1
	add 0x02,r10
	and r3,r4
	add 0x01,r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr6

loc_8c1B7C44:
	fmov fr8,fr3 ; r3 ??? bc r8 is ???
	fmul fr11,fr3
	mov.b @r10+,r4
	fmov fr7,fr0
	mov.l @(loc_8c1B7CEC,pc),r0 ; r0 set to 0x8C1C8780, r0 set to 0x8C1C8780
	extu.b r4,r4
	fmac fr0,fr10,fr3
	shll2 r4
	fmov.s @(r0,r4),fr4
	mov r4,r14
	fmov fr6,fr0 ; r0 ??? bc r6 is ???, r0 ??? bc r6 is ???
	fmov fr10,fr5
	fmac fr0,fr4,fr3
	fmov fr7,fr0
	mov.l @(loc_8c1B7CF0,pc),r0 ; r0 set to 0x8C1C8B80, r0 set to 0x8C1C8B80
	fmov fr3,fr1
	ftrc fr1,fpul
	fmov fr8,fr3
	fmul fr5,fr3
	fmov fr1,fr11
	sts fpul,r4
	fmac fr0,fr1,fr3
	fmov fr6,fr0 ; r0 ??? bc r6 is ???, r0 ??? bc r6 is ???
	shlr16 r4
	mov.w r4,@r12
	add 0x02,r12
	fmov.s @(r0,r14),fr4
	fmac fr0,fr4,fr3
	fmov fr3,fr4
	ftrc fr4,fpul
	fmov fr3,fr10
	sts fpul,r4
	shlr16 r4
	add 0x02,r1
	exts.w r4,r4
	cmp/ge r9,r1
	mov.w r4,@r12
	bf/s loc_8c1B7C44
	add 0x02,r12
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.l @(0x08,r15),r3
	add 0x02,r3
	mov.l r3,@(0x08,r15)
	mov.l @(0x04,r15),r1
	add 0x02,r1
	mov.l r1,@(0x04,r15)

loc_8c1B7CA4:
	mov.l @r15,r2
	mov.l @(0x0C,r15),r3
	cmp/ge r3,r2
	bt loc_8c1B7CB0
	bra loc_8c1B7B7E
	nop

loc_8c1B7CB0:
	ftrc fr9,fpul
	mov r5,r0
	sts fpul,r3
	ftrc fr2,fpul
	shlr16 r3
	mov.w r3,@r7
	sts fpul,r3
	ftrc fr10,fpul
	mov.l @(0x10,r15),r1
	shlr16 r3
	mov.w r3,@r1
	sts fpul,r1
	ftrc fr11,fpul
	shlr16 r1
	sts fpul,r3
	exts.w r1,r1
	mov.w r1,@r11
	mov.l @(0x14,r15),r2
	shlr16 r3
	mov.w r3,@r2

loc_8c1B7CD8:
	add 0x18,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B7CE8:
	#data 0x1FFF
	#align4

loc_8c1B7CEC:
	#data bank1c.loc_8c1c8780
loc_8c1B7CF0:
	#data bank1c.loc_8c1c8B80

;==============================================
loc_8c1B7CF4:
	add 0xF4,r15
	mov.l @(loc_8c1B7DD4,pc),r4 ; r4 set to 0xFFC00004
	mov.b @r4,r0
	and 0xFE,r0
	mov.b r0,@r4 ; r4 ??? bc r0 is ???
	mov.b @r4,r3
	mov.l @(loc_8c1B7DD8,pc),r5 ; r5 set to 0x50000
	extu.b r3,r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r3,@r15
	bra loc_8c1B7D12
	mov.l r4,@r15

loc_8c1B7D0C:
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15

loc_8c1B7D12:
	mov.l @r15,r3
	cmp/ge r5,r3
	bf loc_8c1B7D0C
	mov.l @(loc_8c1B7DE0,pc),r6 ; r6 set to 0x8C34CEF4, r6 set to 0x8C34CEF4
	mov.l @(loc_8c1B7DDC,pc),r7 ; r7 set to 0x8C34CEFC, r7 set to 0x8C34CEFC
	mov.l @r6,r0
	add 0x1C,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1B7D2C
	bra loc_8c1B7D30
	mov.l r4,@r7

loc_8c1B7D2C:
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r3,@r7

loc_8c1B7D30:
	mov.l @r7,r0
	mov.l @(loc_8c1B7DE4,pc),r5 ; r5 set to 0x80000, r5 set to 0x80000
	cmp/eq 0x00,r0
	bt loc_8c1B7D40
	cmp/eq 0x01,r0
	bt loc_8c1B7D88
	bra loc_8c1B7D88
	nop

loc_8c1B7D40:
	mov.l @(loc_8c1B7DEC,pc),r2 ; r2 set to 0xFFE80000
	mov.l @(loc_8c1B7DE8,pc),r6 ; r6 set to 0x8C34CEF8
	mov.l @(loc_8c1B7DF0,pc),r3 ; r3 set to 0xFFE80008
	mov.l r2,@r6 ; r6 ??
	mov.w r4,@r3 ; r3 ??? bc r4 is ???
	mov.l @r6,r2 ; r2 ??? bc r6 is ???
	mov 0x06,r1 ; r1 set to 0x06
	add 0x18,r2
	mov.w r1,@r2
	mov.l @r6,r2
	add 0x08,r2
	mov.w r4,@r2
	mov.l @r6,r1 ; r1 ??? bc r6 is ???
	mov.w r4,@r1
	mov.l @r6,r2
	mov 0x28,r1 ; r1 set to 0x28
	add 0x04,r2
	mov.b r1,@r2
	bra loc_8c1B7D6E
	mov.l r4,@(0x08,r15)

loc_8c1B7D68:
	mov.l @(0x08,r15),r3
	add 0x01,r3
	mov.l r3,@(0x08,r15)

loc_8c1B7D6E:
	mov.l @(0x08,r15),r2
	cmp/ge r5,r2
	bf loc_8c1B7D68
	mov.l @r6,r1
	mov.w @(loc_8c1B7DD2,pc),r3 ; r3 set to 0x308, r3 set to 0x308
	add 0x18,r1
	mov.w r3,@r1
	mov.l @r6,r2
	mov 0x30,r3 ; r3 set to 0x30, r3 set to 0x30
	add 0x08,r2
	mov.w r3,@r2
	bra loc_8c1B7DBA
	nop

loc_8c1B7D88:
	mov.l @(loc_8c1B7DF4,pc),r1 ; r1 set to 0xFFE00000
	mov.l @(loc_8c1B7DF8,pc),r3 ; r3 set to 0xFFE00008
	mov.l r1,@r6
	mov.b r4,@r3 ; r3 ??? bc r4 is ???
	mov.l @r6,r2
	add 0x08,r2
	mov.b r4,@r2
	mov.l @r6,r1 ; r1 ??? bc r6 is ???
	mov.b r4,@r1
	mov.l @r6,r2
	mov 0x28,r1 ; r1 set to 0x28
	add 0x04,r2
	mov.b r1,@r2
	bra loc_8c1B7DAC
	mov.l r4,@(0x04,r15)

loc_8c1B7DA6:
	mov.l @(0x4,r15),r3
	add 0x01,r3
	mov.l r3,@(0x4,r15)

loc_8c1b7dac:
	mov.l @(0x04,r15),r2
	cmp/ge r5,r2
	bf loc_8c1b7da6
	mov.l @r6,r1
	mov 0x30,r3
	add 0x08,r1
	mov.b r3,@r1

loc_8c1B7DBA:
	mov.l @r7,r0
	rts
	add 0x0C,r15

;==============================================
loc_8c1B7DC0:
	mov.l @(loc_8c1B7DDC,pc),r3 ; r3 set to 0x8C34CEFC
	mov.l @r3,r0
	cmp/eq 0x00,r0
	bt/s loc_8c1B7DFC
	mov r4,r6
	cmp/eq 0x01,r0
	bt loc_8c1B7E3C
	bra loc_8c1B7E6E
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B7DD2:
	#data 0x0308
	#align4

loc_8c1B7DD4:
	#data 0xFFC00004
loc_8c1B7DD8:
	#data 0x00050000
loc_8c1B7DDC:
	#data 0x8C34CEFC
loc_8c1B7DE0:
	#data 0x8C34CEF4
loc_8c1B7DE4:
	#data 0x00080000
loc_8c1B7DE8:
	#data 0x8C34CEF8
loc_8c1B7DEC:
	#data 0xFFE80000
loc_8c1B7DF0:
	#data 0xFFE80008
loc_8c1B7DF4:
	#data 0xFFE00000
loc_8c1B7DF8:
	#data 0xFFE00008

;==============================================
loc_8c1b7dfc:
	mov.l @(loc_8c1b7f10,pc),r4
	mov 0x20,r5

loc_8c1b7e00:
	mov.l @r4,r0
	mov.w @(0x10,r0),r0
	extu.w r0,r0
	and r5,r0
	cmp/eq 0x20,r0
	bf loc_8c1b7e00
	mov.l @r4,r2
	add 0x0C,r2
	mov.b r6,@r2
	mov.l @r4,r3
	mov.l @(loc_8C1B7F14,pc),r2
	add 0x10,r3
	mov.w @r3,r1
	and r2,r1
	mov.w r1,@r3
	mov.l @r4,r3
	mov.l @(loc_8C1B7F18,pc),r1
	add 0x10,r3
	mov.w @r3,r0
	and r1,r0
	mov.w r0,@r3
	mov 0x40,r5

loc_8c1b7e2c:
	mov.l @r4,r0
	mov.w @(0x10,r0),r0
	extu.w r0,r0
	and r5,r0
	cmp/eq 0x40,r0
	bf loc_8c1b7e2c
	bra loc_8c1b7e6e
	nop

loc_8c1b7e3c:
	mov.l @(0xDC,PC),r4
	mov.w @(0xC8,PC),r5

loc_8c1b7e40:
	mov.l @r4,r3
	add 0x10,r3
	mov.b @r3,r2
	extu.b r2,r2
	and r5,r2
	cmp/eq r5,r2
	bf loc_8c1b7e40
	mov.l @r4,r2
	add 0x0C,r2
	mov.b r6,@r2
	mov.l @r4,r3
	add 0x10,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov 0x04,r5

loc_8c1b7e60:
	mov.l @r4,r0
	add 0x10,r0
	mov.b @r0,r0
	extu.b r0,r0
	and r5,r0
	cmp/eq 0x04,r0
	bf loc_8c1b7e60

loc_8c1B7E6E:
	rts
	nop

;==============================================
loc_8c1B7E72:
	mov.l @(loc_8c1B7F20,pc),r3 ; r3 set to 0x8C34CEFC
	mov.l @r3,r0
	cmp/eq 0x00,r0
	bt loc_8c1B7E82
	cmp/eq 0x01,r0
	bt loc_8c1B7E96
	bra loc_8c1B7EA8
	nop

loc_8c1B7E82:
	mov.l @(loc_8c1B7F10,pc),r2 ; r2 set to 0x8C34CEF8
	mov.l @r2,r4

loc_8c1B7E86:
	mov.w @(0x1C,r4),r0
	extu.b r0,r3
	tst r3,r3
	bt loc_8c1B7E86
	mov r4,r5
	add 0x14,r5
	bra loc_8c1B7EA8
	mov.b @r5,r5

loc_8c1b7e96:
	mov.l @(loc_8C1B7F1C,pc),r2
	mov.l @r2,r0
	add 0x1C,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x04,r0
	cmp/eq 0x04,r0
	bf loc_8c1b7ea8
	mov 0x0D,r5

loc_8c1B7EA8:
	rts
	mov r5,r0

;==============================================
loc_8c1B7EAC:
	mov.l @(loc_8c1B7F20,pc),r3 ; r3 set to 0x8C34CEFC
	mov.l @r3,r0
	cmp/eq 0x00,r0
	bt loc_8c1B7EBC
	cmp/eq 0x01,r0
	bt loc_8c1B7EF8
	bra loc_8c1B7EF8
	nop

loc_8c1B7EBC:
	mov.l @(loc_8c1B7F10,pc),r4 ; r4 set to 0x8C34CEF8
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @r4,r2
	add 0x08,r2
	mov.w r5,@r2
	mov.l @r4,r1
	mov 0x06,r2 ; r2 set to 0x06
	add 0x18,r1
	mov.w r2,@r1
	mov.l @r4,r1
	mov.w r5,@r1
	mov.l @r4,r2 ; r2 ??
	mov.w @(loc_8c1B7F0C,pc),r1 ; r1 set to 0xFF
	add 0x04,r2
	mov.b r1,@r2
	mov.l @r4,r2
	add 0x08,r2
	mov.w r5,@r2
	mov.l @r4,r1 ; r1 ??
	add 0x10,r1
	mov.w r5,@r1
	mov.l @r4,r2
	add 0x18,r2
	mov.w r5,@r2
	mov.l @r4,r1
	add 0x20,r1
	mov.w r5,@r1
	mov.l @r4,r2
	add 0x24,r2
	mov.w r5,@r2

loc_8c1B7EF8:
	mov.l @(loc_8c1B7F24,pc),r3 ; r3 set to 0xFFC00004, r3 set to 0xFFC00004
	mov.b @r3,r0
	or 0x01,r0
	rts
	mov.b r0,@r3

;==============================================
loc_8c1B7F02:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bra loc_8c1B7F2C
	mov r4,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B7F0a:
	#data 0x0080
loc_8c1B7F0C:
	#data 0x00FF
	#align4

loc_8c1B7F10:
	#data 0x8C34CEF8
loc_8c1b7f14:
	#data 0x0000FFDF
loc_8c1b7f18:
	#data 0x0000FFBF
loc_8c1b7f1c:
	#data 0x8C34CEF4
loc_8c1B7F20:
	#data 0x8C34CEFC
loc_8c1B7F24:
	#data 0xFFC00004

;==============================================
loc_8c1B7F28:
	bsr loc_8c1B7DC0
	mov.b @r14+,r4

loc_8c1B7F2C:
	mov.b @r14,r2
	tst r2,r2
	bf loc_8c1B7F28
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B7F38:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x1C,r13 ; r13 set to 0x1C
	mov.l r4,@r15
	mov 0x0A,r12 ; r12 set to 0x0A

loc_8c1B7F48:
	mov.l @r15,r0
	neg r13,r3
	mov 0x0F,r14 ; r14 set to 0x0F, r14 set to 0x0F
	shld r3, r0
	and r0,r14 ; r14 ??? bc r0 is ???, r14 ??? bc r0 is ???
	extu.b r14,r3
	cmp/ge r12,r3
	bf loc_8c1B7F5C
	bra loc_8c1B7F5E
	add 0x37,r14

loc_8c1B7F5C:
	add 0x30,r14

loc_8c1B7F5E:
	bsr loc_8c1B7DC0
	mov r14,r4
	add 0xFC,r13
	cmp/pz r13
	bt loc_8c1B7F48
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B7F74:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r5,r11
	mov.l r10,@-r15
	tst r11,r11
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l r4,@r15
	bt.s loc_8c1b7f9a
	mov r6,r10
	mov.l @r11,r2
	tst r2,r2
	bt loc_8c1b7f9a
	mov.l @r15,r3
	tst r3,r3

loc_8c1B7F9A:
	bra loc_8c1b7fa0
	mov.l @r11,r14

loc_8c1B7F9E:
	add 0x01,r14

loc_8c1B7FA0:
	mov.b @r14,r0
	cmp/eq 0x20,r0
	bt loc_8c1b7f9e
	mov r10,r5
	bsr loc_8c1b80ce
	mov.b @r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b8000
	mov r15,r12
	add 0x04,r12
	mov 0x00,r9
	bra loc_8c1b7fc4
	mov r9,r13

loc_8c1B7FBC:
	mov.b @r14+,r3
	extu.b r13,r0
	add 0x01,r13
	mov.b r3,@(r0,r12)

loc_8c1B7FC4:
	mov r10,r5
	bsr loc_8c1b80ce
	mov.b @r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b7fd8
	mov 0x08,r3
	extu.b r13,r2
	cmp/ge r3,r2
	bf loc_8c1b7fbc

loc_8c1B7FD8:
	extu.b r13,r13
	mov r13,r0
	nop
	bra loc_8c1b7fe4
	mov.b r9,@(r0,r12)

loc_8c1B7FE2:
	add 0x01,r14

loc_8c1B7FE4:
	mov.b @r14,r0
	cmp/eq 0x20,r0
	bt loc_8c1b7fe2
	mov.b @r14,r0
	cmp/eq 0x2C,r0
	bf loc_8c1b7ff2
	add 0x01,r14

loc_8c1B7FF2:
	mov.l @r15,r8
	mov r10,r5
	bsr loc_8c1b8176
	mov r12,r4
	mov.l r0,@r8
	bra loc_8c1b800e
	mov r9,r4

loc_8c1B8000:
	mov.b @r14,r0
	cmp/eq 0x2C,r0
	bf loc_8c1b800c
	add 0x01,r14
	bra loc_8c1b800e
	mov 0x01,r4

loc_8c1B800C:
	mov 0x02,r4

loc_8c1B800E:
	mov.l r14,@r11
	mov r4,r0
	nop
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
loc_8c1B8028:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r5,r11
	mov.l r10,@-r15
	tst r11,r11
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	bt.s loc_8c1b804c
	mov.b r6,@r15
	mov.l @r11,r2
	tst r2,r2
	bt loc_8c1b804c
	tst r13,r13

loc_8c1B804C:
	bra loc_8c1b8052
	mov.l @r11,r14

loc_8c1B8050:
	add 0x01,r14

loc_8c1B8052:
	mov.b @r14,r0
	cmp/eq 0x20,r0
	bt loc_8c1b8050
	bsr loc_8c1b8146
	mov.b @r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b80a6
	mov.b @r15,r10
	mov 0x00,r8
	mov r8,r12
	extu.b r10,r10
	cmp/pl r10
	bf.s loc_8c1b808c
	mov 0x20,r9

loc_8c1B8070:
	bsr loc_8c1b8146
	mov.b @r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b8080
	mov.b @r14+,r3
	bra loc_8c1b8082
	mov.b r3,@r13

loc_8c1B8080:
	mov.b r9,@r13

loc_8c1B8082:
	add 0x01,r12
	extu.b r12,r3
	cmp/ge r10,r3
	bf.s loc_8c1b8070
	add 0x01,r13

loc_8c1B808C:
	bra loc_8c1b8092
	mov.b r8,@r13

loc_8c1B8090:
	add 0x01,r14

loc_8c1B8092:
	mov.b @r14,r0
	cmp/eq 0x20,r0
	bt loc_8c1b8090
	mov.b @r14,r0
	cmp/eq 0x2C,r0
	bf.s loc_8c1b80a2
	mov r8,r4
	add 0x01,r14

loc_8c1B80A2:
	bra loc_8c1b80b4
	nop

loc_8c1B80A6:
	mov.b @r14,r0
	cmp/eq 0x2C,r0
	bf loc_8c1b80b2
	add 0x01,r14
	bra loc_8c1b80b4
	mov 0x01,r4

loc_8c1B80B2:
	mov 0x02,r4

loc_8c1B80B4:
	mov.l r14,@r11
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

;==============================================
loc_8c1B80CE:
	mov.l r14,@-r15
	extu.b r5,r14
	mov r14,r0
	nop
	cmp/eq 0x64,r0
	bt loc_8c1b80f2
	mov r14,r0
	nop
	cmp/eq 0x7A,r0
	bt loc_8c1b80f2
	mov r14,r0
	nop
	cmp/eq 0x6C,r0
	bt loc_8c1b80f2
	mov r14,r0
	nop
	cmp/eq 0x6E,r0
	bf loc_8c1b8102

loc_8c1B80F2:
	mov 0x30,r2
	exts.b r4,r3
	cmp/ge r2,r3
	bf loc_8c1b8102
	mov 0x39,r3
	exts.b r4,r1
	cmp/gt r3,r1
	bf loc_8c1b813a

loc_8c1B8102:
	mov r14,r0
	nop
	cmp/eq 0x68,r0
	bt loc_8c1b811a
	mov r14,r0
	nop
	cmp/eq 0x6D,r0
	bt loc_8c1b811a
	mov r14,r0
	nop
	cmp/eq 0x73,r0
	bf loc_8c1b8140

loc_8c1B811A:
	mov 0x30,r2
	exts.b r4,r3
	cmp/ge r2,r3
	bf loc_8c1b812a
	mov 0x39,r3
	exts.b r4,r1
	cmp/gt r3,r1
	bf loc_8c1b813a

loc_8c1B812A:
	mov 0x41,r3
	exts.b r4,r2
	cmp/ge r3,r2
	bf loc_8c1b8140
	mov 0x46,r2
	exts.b r4,r1
	cmp/gt r2,r1
	bt loc_8c1b8140

loc_8c1B813A:
	mov 0x01,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B8140:
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B8146:
	mov 0x41,r3
	exts.b r4,r5
	cmp/ge r3,r5
	bf loc_8c1b8154
	mov 0x5A,r1
	cmp/gt r1,r5
	bf loc_8c1b816c

loc_8c1B8154:
	mov 0x61,r3
	cmp/ge r3,r5
	bf loc_8c1b8160
	mov 0x7A,r1
	cmp/gt r1,r5
	bf loc_8c1b816c

loc_8c1B8160:
	mov 0x30,r3
	cmp/ge r3,r5
	bf loc_8c1b8170
	mov 0x39,r1
	cmp/gt r1,r5
	bt loc_8c1b8170

loc_8c1B816C:
	rts
	mov 0x01,r0

;==============================================
loc_8c1B8170:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c1B8176:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	bra loc_8c1b8184
	mov r4,r14

loc_8c1B8182:
	add 0x01,r14

loc_8c1B8184:
	mov.b @r14,r0
	cmp/eq 0x20,r0
	bt.s loc_8c1b8182
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x09,r0
	bt loc_8c1b8182
	extu.b r5,r13
	mov r13,r0
	nop
	cmp/eq 0x64,r0
	bt.s loc_8c1b81b8
	mov 0x00,r4
	mov r13,r0
	nop
	cmp/eq 0x7A,r0
	bt loc_8c1b81b8
	mov r13,r0
	nop
	cmp/eq 0x6C,r0
	bt loc_8c1b81b8
	mov r13,r0
	nop
	cmp/eq 0x6E,r0
	bf loc_8c1b81de

loc_8c1B81B8:
	bra loc_8c1b81ce
	mov r4,r13

loc_8c1B81BC:
	mov r13,r3
	shll2 r3
	mov r13,r2
	add r2,r3
	mov.b @r14+,r2
	shll r3
	add r2,r3
	mov r3,r13
	add 0xD0,r13

loc_8c1B81CE:
	mov 0x64,r5
	bsr loc_8c1b80ce
	mov.b @r14,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b81bc
	bra loc_8c1b822e
	nop

loc_8c1B81DE:
	cmp/eq 0x68,r0
	bt loc_8c1b81f2
	mov r13,r0
	nop
	cmp/eq 0x6D,r0
	bt loc_8c1b81f2
	mov r13,r0
	nop
	cmp/eq 0x73,r0
	bf loc_8c1b8226

loc_8c1B81F2:
	bra loc_8c1b8216
	mov r4,r13

loc_8c1B81F6:
	mov r13,r12
	shll2 r12
	mov 0x64,r5
	shll2 r12
	bsr loc_8c1b80ce
	mov.b @r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b8210
	mov.b @r14+,r13
	add r12,r13
	bra loc_8c1b8216
	add 0xD0,r13

loc_8c1B8210:
	mov.b @r14+,r13
	add r12,r13
	add 0xC9,r13

loc_8c1B8216:
	mov 0x68,r5
	bsr loc_8c1b80ce
	mov.b @r14,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b81f6
	bra loc_8c1b822e
	nop

loc_8c1B8226:
	mov.l @(0x18,PC),r2
	mov.l @(0x10,PC),r4
	jsr @r2
	nop

loc_8c1B822E:
	mov r13,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B823C:
	#data bank1c.loc_8c1c8668
loc_8c1B8240:
	#data bank1a.loc_8c1aECDC

;==============================================
loc_8c1B8244:
	mov.l r14,@-r15
	mov 0x04,r5
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0x118,PC),r3
	add 0xFC,r15
	mov r15,r14
	mov r14,r6
	jsr @r3
	mov 0x00,r4
	mov.l @(0x110,PC),r4
	mov.b @r14,r2
	mov.b @r4,r3
	cmp/eq r3,r2
	bf loc_8c1b8282
	mov.b @(0x1,r14),r0
	mov r0,r3
	mov.b @(0x1,r4),r0
	cmp/eq r0,r3
	bf loc_8c1b8282
	mov.b @(0x2,r14),r0
	mov r0,r3
	mov.b @(0x2,r4),r0
	cmp/eq r0,r3
	bf loc_8c1b8282
	mov.b @(0x3,r14),r0
	mov r0,r3
	mov.b @(0x3,r4),r0
	cmp/eq r0,r3
	bt loc_8c1b828a

loc_8c1B8282:
	bsr loc_8c1b82a4
	mov r13,r4
	bra loc_8c1b828e
	nop

loc_8c1B828A:
	bsr loc_8c1b83e0
	mov r13,r4

loc_8c1B828E:
	mov.l @(0xD8,PC),r2
	mov r13,r6
	mov 0x01,r5
	add 0x38,r6
	jsr @r2
	mov 0x0B,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B82A4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x04,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov r13,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r4,@r15
	mov.l @(0xAC,PC),r12
	mov.w @(0xA0,PC),r10
	mov.l @(0xAC,PC),r14
	bra loc_8c1b82d2
	mov r13,r11

loc_8c1B82C6:
	extu.b r11,r0
	mov r9,r5
	mov.b @(r0,r12),r4
	add 0x01,r9
	jsr @r14
	add 0x01,r11

loc_8c1B82D2:
	extu.b r11,r0
	mov.b @(r0,r12),r3
	extu.b r3,r3
	cmp/eq r10,r3
	bf loc_8c1b82c6
	mov.l @(0x88,PC),r2
	mov 0x06,r5
	mov.l @(0x90,PC),r6
	jsr @r2
	mov 0x05,r4
	mov.l @(0x90,PC),r3
	jsr @r3
	nop
	mov r0,r4
	jsr @r14
	mov 0x0B,r5
	mov.l @(0x84,PC),r2
	jsr @r2
	nop
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r0,r4
	mov.l @(0x80,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov 0x00,r11
	mov.w @(0x5A,PC),r8
	mov r11,r9
	mov 0x0C,r10

loc_8c1B830C:
	mov r10,r5
	mov r8,r4
	jsr @r14
	add 0x01,r10
	mov r10,r5
	add 0x01,r10
	jsr @r14
	mov 0x00,r4
	add 0x01,r9
	mov 0x0A,r3
	extu.b r9,r2
	cmp/gt r3,r2
	bf loc_8c1b830c
	mov r11,r10

loc_8c1B8328:
	mov.l @r15,r5
	mov r10,r4
	bsr loc_8c1b8388
	add 0x01,r10
	extu.b r10,r2
	cmp/ge r13,r2
	bf loc_8c1b8328
	mov r11,r9
	mov r11,r10

loc_8c1B833A:
	extu.b r9,r0
	mov r10,r5
	mov.b @(r0,r12),r4
	add 0x01,r10
	jsr @r14
	add 0x01,r9
	extu.w r10,r3
	cmp/ge r13,r3
	bf loc_8c1b833a
	add 0x04,r15
	mov.l @(0x34,PC),r3
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b8362:
	#data 0x00FF
loc_8c1b8364:
	#data 0x00C2
	#align4

loc_8c1B8368:
	#data bank1c.loc_8c1c0480
loc_8c1B836C:
	#data bank1c.loc_8c1c86A8
loc_8c1B8370:
	#data bank1c.loc_8c1c0478
loc_8c1B8374:
	#data 0x8C352E96
loc_8c1B8378:
	#data bank1a.loc_8c1a01CC
loc_8c1B837C:
	#data loc_8c1B04D0
loc_8c1B8380:
	#data loc_8c1B05D8
loc_8c1B8384:
	#data bank1c.loc_8c1c04A0

;==============================================
loc_8c1B8388:
	mov.l r14,@-r15
	extu.b r4,r4
	mov.l r13,@-r15
	mov r4,r3
	mov.l r12,@-r15
	shll2 r4
	mov.l r11,@-r15
	add r3,r4
	mov.l r10,@-r15
	shll2 r4
	sts.l pr,@-r15
	shll r4
	mov r4,r10
	add 0x22,r10
	add 0xFC,r15
	mov.l r5,@r15
	mov.w @(loc_8c1B84B2,pc),r12 ; r12 set to 0xFF
	mov.l @(loc_8c1B84B4,pc),r11 ; r11 set to 0x8C1C0478
	mov.l @(loc_8c1B84B8,pc),r14 ; r14 set to 0x8C1C8680
	bra loc_8c1B83C4
	mov 0x00,r13

loc_8c1B83B2:
	extu.b r13,r0
	mov r10,r5
	mov.b @(r0,r14),r4
	add 0x01,r10
	mov.l @r15,r0
	add 0x01,r13
	extu.b r4,r4
	jsr @r11
	mov.b @(r0,r4),r4

loc_8c1B83C4:
	extu.b r13,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/eq r12,r3
	bf loc_8c1B83B2
	add 0x04,r15
	mov.l @(loc_8c1B84BC,pc),r2 ; r2 set to 0x8C1C04A0, r2 set to 0x8C1C04A0
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14


loc_8c1B83E0:
	mov.l r14,@-r15
	mov 0x06,r5
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov.l @(0xD4,PC),r14
	mov.l @(0xD4,PC),r6
	jsr @r14
	mov 0x05,r4
	mov r15,r6
	mov 0x01,r5
	add 0x04,r6
	jsr @r14
	mov 0x04,r4
	mov.l @(0xC8,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1b840c
	mov.l @(0xC4,PC),r3
	mov.b @r3,r0
	mov.b r0,@(0x4,r15)

loc_8c1B840C:
	mov 0x01,r5
	mov r15,r6
	jsr @r14
	mov 0x0B,r4
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov.b @r15,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b8424
	mov 0x00,r3
	mov.b r3,@r15

loc_8c1B8424:
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov.b @r15,r4
	mov.b @(0x4,r15),r0
	mov.l @(0x8,r15),r5
	bsr loc_8c1b8440
	mov r0,r4
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov.l @(0x8,r15),r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B8440:
	extu.b r4,r4
	mov r4,r3
	shll2 r4
	sts.l pr,@-r15
	add r3,r4
	shll2 r4
	add 0xD4,r15
	mov r15,r6
	shll r4
	mov.l r5,@r15
	add 0x04,r6
	mov.l @(0x68,PC),r2
	add 0x22,r4
	jsr @r2
	mov 0x28,r5
	mov.w @(0x50,PC),r6
	mov 0x00,r5
	mov.l @(0x54,PC),r4
	mov r15,r7
	bra loc_8c1b8478
	add 0x04,r7

loc_8c1B846A:
	extu.b r5,r0
	mov.b @r7+,r2
	mov.b @(r0,r4),r3
	add 0x01,r5
	mov.l @r15,r0
	extu.b r3,r3
	mov.b r2,@(r0,r3)

loc_8c1B8478:
	extu.b r5,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/eq r6,r3
	bf loc_8c1b846a
	add 0x2C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B848A:
	mov.l r14,@-r15
	mov 0x01,r5 ; r5 set to 0x01
	sts.l pr,@-r15
	mov.l @(loc_8c1B84C0,pc),r3 ; r3 set to 0x8C1C0480
	add 0xF8,r15
	mov r15,r6
	jsr @r3
	mov 0x04,r4 ; r4 set to 0x04
	mov.b @r15,r0
	extu.b r0,r0
	mov r0,r3 ; r3 ??? bc r0 is ???
	shll2 r0
	add r3,r0
	shll2 r0
	shll r0
	mov.w r0,@(0x04,r15)
	mov.w @(loc_8c1B84B2,pc),r5 ; r5 set to 0xFF
	mov.l @(loc_8c1B84B8,pc),r4 ; r4 set to 0x8C1C8680
	bra loc_8c1B84EC
	mov 0x00,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B84B2:
	#data 0x00FF
	#align4

loc_8c1B84B4:
	#data bank1c.loc_8c1c0478
loc_8c1B84B8:
	#data bank1c.loc_8c1c8680
loc_8c1B84BC:
	#data bank1c.loc_8c1c04A0
loc_8c1B84C0:
	#data bank1c.loc_8c1c0480
loc_8c1B84C4:
	#data 0x8C352E96
loc_8c1B84C8:
	#data 0x8C34B28C
loc_8c1b84cc:
	#data 0x8C34B038
loc_8c1B84D0:
	#data loc_8c1B04EE
loc_8c1B84D4:
	#data loc_8c1B04D0
loc_8c1B84D8:
	#data loc_8c1B0558

;==============================================
loc_8c1B84DC:
	add 0x01,r14
	extu.b r14,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/eq r5,r3
	bf loc_8c1B84EC

loc_8c1B84E8:
	bra loc_8c1B84E8
	nop

loc_8c1B84EC:
	extu.b r14,r0
	mov.b @(r0,r4),r3
	extu.b r3,r0
	cmp/eq 0x31,r0
	bf loc_8c1B84DC
	mov.w @(0x04,r15),r0
	extu.b r14,r5
	mov.l @(loc_8c1B8578,pc),r4 ; r4 set to 0x8C34AF81
	add r5,r0
	mov.l @(loc_8c1B857C,pc),r3 ; r3 set to 0x8C1C0478
	mov r0,r5
	add 0x22,r5
	jsr @r3
	mov.b @r4,r4 ; r4 ??
	mov.l @(loc_8c1B8580,pc),r2 ; r2 set to 0x8C1C04A0
	jsr @r2
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b8514:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c1b8542
	nop
	mov r0,r14
	exts.b r14,r0
	cmp/eq 0x01,r0
	bf loc_8c1b852c
	mov.l @(0x58,PC),r2
	jsr @r2
	nop

loc_8c1B852c:
	mov r14,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1b8536:
	sts.l pr,@-r15
	bsr loc_8c1b8542
	nop
	lds.l @r15+,pr
	rts
	nop

loc_8c1b8542:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,PC),r0
	add r0,r15
	mov r4,r0
	nop
	mov.b r0,@(0xC,r15)
	mov.l r5,@(0x18,r15)
	mov r6,r0
	nop
	mov 0x00,r9
	mov.b r0,@(0x4,r15)
	mov.l @(0x18,r15),r13
	mov r9,r10
	mov.l @(0x18,PC),r11
	mov r9,r14
	mov.l @r13,r13
	bra loc_8c1b85a6
	mov 0x23,r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b8574:
	#data 0xFEB8
	#align4

loc_8c1B8578:
	#data 0x8C34AF81
loc_8c1B857C:
	#data bank1c.loc_8c1c0478
loc_8c1B8580:
	#data bank1c.loc_8c1c04A0
loc_8c1B8584:
	#data 0x8C34B075

;==============================================
loc_8c1B8588:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bf loc_8c1b8596
	exts.b r14,r2
	tst r2,r2
	bt loc_8c1b85a4

loc_8c1b8596:
	extu.b r10,r3
	cmp/ge r12,r3
	bt loc_8c1b8628
	mov.b @r13,r2
	add 0x01,r10
	mov.b r2,@r11
	add 0x01,r11

loc_8c1b85a4:
	add 0x01,r13

loc_8c1b85a6:
	bsr loc_8c1b88da
	mov.b @r13,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b85b6
	exts.b r14,r3
	tst r3,r3
	bt loc_8c1b85d2

loc_8c1b85b6:
	mov.l @(0xC8,PC),r1
	mov.b @r13,r2
	mov.b @r1,r3
	cmp/eq r3,r2
	bt loc_8c1b85d2
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x3B,r0
	bf loc_8c1b8588
	mov.b @(0x4,r15),r0
	mov 0x01,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bt loc_8c1b8588

loc_8c1b85d2:
	mov.l @(0xB0,PC),r11
	mov r15,r6
	mov 0x02,r5
	mov.b r9,@r11
	mov.b @(0xC,r15),r0
	mov.l @(0xA8,PC),r12
	extu.b r0,r0
	mov.l r0,@(0x4,r15)
	shll r0
	mov r0,r4
	jsr @r12
	add 0x0C,r4
	mov.l @(0x4,r15),r4
	mov r15,r6
	add 0x08,r6
	add 0x01,r4
	shll r4
	mov 0x02,r5
	jsr @r12
	add 0x0C,r4
	mov.w @r15,r3
	mov r15,r6
	mov.w @(0x8,r15),r0
	mov 0x02,r5
	extu.w r3,r3
	extu.w r0,r0
	sub r3,r0
	add 0x14,r6
	mov.b r0,@(0x4,r15)
	jsr @r12
	mov 0x20,r4
	mov.b @r11,r4
	mov.b @(0x4,r15),r0
	add r10,r4
	mov.w @(0x62,PC),r3
	sub r0,r4
	mov.w @(0x14,r15),r0
	exts.b r4,r8
	mov r8,r4
	add r0,r4
	extu.w r4,r9
	cmp/ge r3,r9
	bf loc_8c1b862c

loc_8c1b8628:
	bra loc_8c1b872a
	mov 0x00,r0

loc_8c1b862c:
	mov.w @(0x8,r15),r0
	mov r15,r6
	add 0x1C,r6
	mov r0,r3
	mov.w @(0x14,r15),r0
	mov r0,r5
	sub r3,r5
	jsr @r12
	mov r3,r4
	mov r15,r6
	mov 0x01,r5
	add 0x10,r6
	jsr @r12
	mov 0x00,r4
	mov 0x10,r0
	mov.l @(0x40,PC),r14
	mov.b @(r0,r15),r4
	mov 0x00,r5
	jsr @r14
	add 0x01,r4
	mov.l @(0x38,PC),r3
	bra loc_8c1b866e
	mov.l r3,@(0x4,r15)

loc_8c1b865a:
	mov.w @r15,r5
	add 0x01,r5
	mov.w r5,@r15
	add 0xFF,r5
	mov.l @(0x4,r15),r4
	add 0x01,r4
	mov.l r4,@(0x4,r15)
	add 0xFF,r4
	jsr @r14
	mov.b @r4,r4

loc_8c1b866e:
	extu.b r10,r3
	cmp/pl r3
	bt.s loc_8c1b865a
	add 0xFF,r10
	mov.l @(0x1C,PC),r10
	bra loc_8c1b86a4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B867c:
	#data 0x01EB
	#align4

loc_8c1B8680:
	#data 0x8C34B036
loc_8c1B8684:
	#data 0x8C34B098
loc_8c1B8688:
	#data bank1c.loc_8c1c0480
loc_8c1B868C:
	#data bank1c.loc_8c1c0478
loc_8c1B8690:
	#data 0x8C34B075
loc_8c1B8694:
	#data 0x8C34B048

;==============================================
loc_8c1B8698:
	mov.w @r15,r5
	add 0x01,r5
	mov.w r5,@r15
	add 0xFF,r5
	jsr @r14
	mov.b @r10+,r4

loc_8c1b86a4:
	mov.b @r11,r3
	add 0xFF,r3
	mov.b r3,@r11
	add 0x01,r3
	extu.b r3,r3
	cmp/pl r3
	bt loc_8c1b8698
	mov r15,r11
	bra loc_8c1b86c4
	add 0x1C,r11

loc_8c1b86b8:
	mov.w @r15,r5
	add 0x01,r5
	mov.w r5,@r15
	add 0xFF,r5
	jsr @r14
	mov.b @r11+,r4

loc_8c1b86c4:
	mov.w @r15,r3
	extu.w r3,r3
	cmp/ge r9,r3
	bf loc_8c1b86b8
	mov.b @(0xC,r15),r0
	mov 0x0A,r9
	mov r0,r10
	add 0x01,r10
	extu.b r10,r3
	extu.b r10,r11
	shll r11
	cmp/gt r9,r3
	bt loc_8c1b871c

loc_8c1b86de:
	mov 0x02,r5
	mov r15,r6
	mov r11,r0
	nop
	add 0x0C,r0
	mov.w r0,@(0xC,r15)
	jsr @r12
	mov r0,r4
	mov.w @r15,r3

loc_8c1b86f0:
	add r8,r3
	extu.w r3,r0
	mov r3,r4
	mov.w r3,@r15
	mov.l @(0xB8,PC),r2
	and r2,r0
	mov 0xF8,r2
	shad r2,r0
	mov.b r0,@(0x4,r15)
	mov.w @(0xC,r15),r0
	jsr @r14
	mov r0,r5
	mov.b @(0x4,r15),r0
	mov r11,r5
	add 0x0D,r5
	jsr @r14
	mov r0,r4
	add 0x01,r10
	extu.b r10,r3
	cmp/gt r9,r3
	bf.s loc_8c1b86de
	add 0x02,r11

loc_8c1b871c:
	mov 0x10,r0
	mov 0x00,r5
	jsr @r14
	mov.b @(r0,r15),r4
	mov.l @(0x18,r15),r3
	mov 0x01,r0
	mov.l r13,@r3

loc_8c1b872a:
	mov.w @(0x82,PC),r1
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
loc_8c1B8740:
	mov.l r14,@-r15
	mov 0x10,r0 ; r0 set to 0x10
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.b r4,@(r0,r15)
	mov 0x10,r0 ; r0 set to 0x10
	mov.l r5,@(0x0C,r15)
	mov r15,r6
	mov.b @(r0,r15),r4
	add 0x04,r6
	mov.l @(loc_8c1B87B8,pc),r13 ; r13 set to 0x8C1C0480
	mov 0x02,r5 ; r5 set to 0x02
	extu.b r4,r4
	mov.l r4,@(0x14,r15)
	shll r4
	jsr @r13
	add 0x0C,r4
	mov.l @(0x14,r15),r4
	mov r15,r6
	add 0x08,r6
	add 0x01,r4
	shll r4
	mov 0x02,r5 ; r5 set to 0x02
	jsr @r13
	add 0x0C,r4
	mov 0x10,r0 ; r0 set to 0x10
	mov.l @(loc_8c1B87BC,pc),r2 ; r2 set to 0x8C34B099
	mov.b @(r0,r15),r3
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(0x0C,r15),r11
	mov r15,r6
	mov.l @r11,r11
	mov.b r3,@r2 ; r2 ??? bc r3 is ???
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c1B87C0,pc),r14 ; r14 set to 0x8C34B098
	mov.b r3,@r14 ; r14 ??
	mov.w @(0x04,r15),r0
	jsr @r13
	mov r0,r4 ; r4 set to 0x10
	mov.w @(0x04,r15),r0
	mov r0,r3 ; r3 set to 0x10
	mov.w @(0x08,r15),r0
	cmp/eq r0,r3
	bf loc_8c1B87A8
	bra loc_8c1B87FE
	mov 0x00,r0

loc_8c1B87A8:
	mov.l @(loc_8c1B87C8,pc),r8 ; r8 set to 0x8C34B048
	mov.l @(loc_8c1B87C4,pc),r10 ; r10 set to 0x8C34B29C
	bra loc_8c1B87EE
	mov 0x01,r9

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B87B0:
	#data 0x0148
	#align4

loc_8c1B87B4:
	#data 0x0000FF00
loc_8c1B87B8:
	#data bank1c.loc_8c1c0480
loc_8c1B87BC:
	#data 0x8C34B099
loc_8c1B87C0:
	#data 0x8C34B098
loc_8c1B87C4:
	#data 0x8C34B29C
loc_8c1B87C8:
	#data 0x8C34B048

;==============================================
loc_8c1B87CC:
	mov.w @(0x04,r15),r0
	mov r15,r6
	mov 0x01,r5 ; r5 set to 0x01
	add 0x01,r0
	mov.w r0,@(0x04,r15)
	add 0xFF,r0
	jsr @r13
	mov r0,r4
	mov.b @r10,r0
	or 0x20,r0
	mov.b r0,@r10
	mov.b @r15,r2
	mov.b r2,@r12
	add 0x01,r12
	mov.b @r14,r3
	add 0x01,r3
	mov.b r3,@r14

loc_8c1B87EE:
	mov.w @(0x04,r15),r0
	mov r0,r3
	mov.w @(0x08,r15),r0
	cmp/hs r0,r3
	bf loc_8c1B87CC
	mov.l @(0x0C,r15),r3
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	mov.l r11,@r3

loc_8c1B87FE:
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
;unused?
loc_8c1b8812:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r4,r0
	nop
	mov.b r0,@(0xC,r15)
	mov r15,r6
	mov.b @(0xC,r15),r0
	add 0x04,r6
	mov.l @(0x12C,PC),r12
	mov 0x02,r5
	extu.b r0,r0
	mov.l r0,@(0x10,r15)
	shll r0
	mov r0,r4
	jsr @r12
	add 0x0C,r4
	mov.l @(0x10,r15),r4
	mov r15,r6
	add 0x08,r6
	add 0x01,r4
	shll r4
	mov 0x02,r5
	jsr @r12
	add 0x0C,r4
	mov.l @(0x110,PC),r13
	jsr @r13
	nop
	mov.l @(0x110,PC),r3
	mov.l @(0x10C,PC),r4
	jsr @r3
	nop
	mov.l @(0x10C,PC),r9
	mov 0x00,r11
	mov r11,r14
	bra loc_8c1b88ae
	mov 0x01,r10

loc_8c1b8866:
	mov.w @(0x4,r15),r0
	mov r15,r6
	mov 0x01,r5
	add 0x01,r0
	mov.w r0,@(0x4,r15)
	add 0xFF,r0
	jsr @r12
	mov r0,r4
	bsr loc_8c1b88da
	mov.b @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b8888
	jsr @r13
	nop
	bra loc_8c1b88ae
	nop

loc_8c1b8888:
	extu.b r14,r0
	mov.b @r15,r4
	cmp/eq 0x01,r0
	bf.s loc_8c1b889e
	extu.b r4,r4
	mov r4,r0
	nop
	cmp/eq 0x5D,r0
	bf loc_8c1b88ae
	bra loc_8c1b88ae
	mov r11,r14

loc_8c1b889e:
	mov r4,r0
	nop
	cmp/eq 0x5B,r0
	bf loc_8c1b88aa
	bra loc_8c1b88ae
	mov r10,r14

loc_8c1b88aa:
	jsr @r9
	mov.b @r15,r4

loc_8c1b88ae:
	mov.w @(0x4,r15),r0
	mov r0,r3
	mov.w @(0x8,r15),r0
	cmp/hs r0,r3
	bf loc_8c1b8866
	jsr @r13
	nop
	mov.l @(0xA8,PC),r3
	mov.l @(0xB0,PC),r4
	jsr @r3
	nop
	jsr @r13
	nop
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
loc_8c1b88da:
	extu.b r4,r0
	cmp/eq 0x01,r0
	bt loc_8c1b88f8
	cmp/eq 0x03,r0
	bt loc_8c1b88f8
	cmp/eq 0x10,r0
	bt loc_8c1b88f8
	cmp/eq 0x12,r0
	bt loc_8c1b88f8
	cmp/eq 0x14,r0
	bt loc_8c1b88f8
	cmp/eq 0x18,r0
	bt loc_8c1b88f8
	bra loc_8c1b88fc
	nop

loc_8c1b88f8:
	rts
	mov 0x01,r0

loc_8c1b88fc:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c1B8902:
	sts.l pr,@-r15
	mov.l @(loc_8c1B8974,pc),r3 ; r3 set to 0x8C1C0478
	jsr @r3
	mov 0x0B,r5 ; r5 set to 0x0B
	mov.l @(loc_8c1B8978,pc),r2 ; r2 set to 0x8C1C04A0
	jmp @r2
	lds.l @r15+,pr

;==============================================
;unused?
loc_8c1b8910:
	sts.l pr,@-r15
	mov.l @(0x60,PC),r3
	jsr @r3
	mov 0x04,r5
	mov.l @(0x5C,PC),r2
	jmp @r2
	lds.l @r15+,pr
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	extu.b r5,r11
	mov.l r10,@-r15
	cmp/pl r11
	sts.l pr,@-r15
	mov.l @(0x40,PC),r10
	add r4,r13
	bf.s loc_8c1b894a
	mov 0x05,r14

loc_8c1b893a:
	mov r14,r5
	jsr @r10
	mov.b @r13+,r4
	add 0x01,r12
	extu.b r12,r2
	cmp/ge r11,r2
	bf.s loc_8c1b893a
	add 0x01,r14

loc_8c1b894a:
	lds.l @r15+,pr
	mov.l @(0x28,PC),r2
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B895C:
	#data bank1c.loc_8c1c0480
loc_8c1B8960:
	#data bank1a.loc_8c1aEE08
loc_8c1B8964:
	#data bank1c.loc_8c1c86B4
loc_8c1B8968:
	#data bank1a.loc_8c1aECDC
loc_8c1B896C:
	#data bank1a.loc_8c1aEC3A
loc_8c1B8970:
	#data bank1c.loc_8c1c86C4
loc_8c1B8974:
	#data bank1c.loc_8c1c0478
loc_8c1B8978:
	#data bank1c.loc_8c1c04A0

;==============================================
loc_8c1B897c:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x04,r12
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(0x5A,PC),r13
	mov.l @(0x5C,PC),r11

loc_8c1b898e:
	extu.b r14,r5
	add 0x01,r14
	jsr @r11
	mov r13,r4
	extu.b r14,r3
	cmp/ge r12,r3
	bf loc_8c1b898e
	lds.l @r15+,pr
	mov.l @(0x50,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c1B89AA:
	sts.l pr,@-r15
	add 0xF0,r15
	mov r4,r0
	nop
	mov.b r0,@(0x08,r15)
	mov r15,r6
	mov.b @(0x08,r15),r0
	add 0x04,r6
	mov 0x02,r5 ; r5 set to 0x02
	extu.b r0,r0
	mov.l r0,@(0x0C,r15)
	shll r0
	mov.l @(loc_8c1B89F4,pc),r3 ; r3 set to 0x8C1C0480
	mov r0,r4
	jsr @r3
	add 0x0C,r4
	mov.l @(0x0C,r15),r4
	mov 0x02,r5 ; r5 set to 0x02
	mov.l @(loc_8c1B89F4,pc),r3 ; r3 set to 0x8C1C0480
	mov r15,r6
	add 0x01,r4
	shll r4
	jsr @r3
	add 0x0C,r4
	mov.w @(0x04,r15),r0
	mov r0,r3 ; r3 ??? bc r0 is ???
	mov.w @r15,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts
	sub r3,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B89E8:
	#data 0x00FF
	#align4

loc_8c1B89EC:
	#data bank1c.loc_8c1c0478
loc_8c1B89F0:
	#data bank1c.loc_8c1c04A0
loc_8c1B89F4:
	#data bank1c.loc_8c1c0480

;==============================================
loc_8c1B89F8:
	mov.l r14,@-r15
	mov 0x00,r5
	mov.l r13,@-r15
	mov 0x03,r6
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0x1FC,PC),r3
	add 0xD0,r15
	mov r15,r12
	add 0x0C,r12
	jsr @r3
	mov r12,r4
	mov.l @(0x1F0,PC),r2
	mov r15,r11
	mov 0x00,r5
	add 0x04,r11
	mov 0x05,r6
	jsr @r2
	mov r11,r4
	mov.l @(0x1E4,PC),r14
	mov 0x02,r6
	mov.l @(0x1E4,PC),r3
	mov r14,r5
	add 0x04,r5
	jsr @r3
	mov r12,r4
	mov.l @(0x1DC,PC),r2
	mov r14,r5
	mov 0x04,r6
	add 0x07,r5
	jsr @r2
	mov r11,r4
	mov.b @r12,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bf loc_8c1b8a46
	mov 0x30,r2
	mov.b r2,@r12

loc_8c1B8A46:
	mov.b @r11,r3
	mov 0x03,r6
	add 0x01,r3
	mov.b r3,@r11
	mov.l @(0x1C0,PC),r13
	mov.l @(0x1C0,PC),r5
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8a5e
	bra loc_8c1b8b0c
	mov 0x01,r14

loc_8c1B8A5E:
	mov.l @(0x1B8,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8a6e
	bra loc_8c1b8b0c
	mov 0x02,r14

loc_8c1B8A6E:
	mov.l @(0x1AC,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8a7e
	bra loc_8c1b8b0c
	mov 0x03,r14

loc_8c1B8A7E:
	mov.l @(0x1A0,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8a8e
	bra loc_8c1b8b0c
	mov 0x04,r14

loc_8c1B8A8E:
	mov.l @(0x194,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8a9e
	bra loc_8c1b8b0c
	mov 0x05,r14

loc_8c1B8A9E:
	mov.l @(0x188,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8aae
	bra loc_8c1b8b0c
	mov 0x06,r14

loc_8c1B8AAE:
	mov.l @(0x17C,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8abe
	bra loc_8c1b8b0c
	mov 0x07,r14

loc_8c1B8Abe:
	mov.l @(0x170,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8ace
	bra loc_8c1b8b0c
	mov 0x08,r14

loc_8c1B8Ace:
	mov.l @(0x164,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8ade
	bra loc_8c1b8b0c
	mov 0x09,r14

loc_8c1B8Ade:
	mov.l @(0x158,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8aee
	bra loc_8c1b8b0c
	mov 0x0A,r14

loc_8c1B8Aee:
	mov.l @(0x14C,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8afe
	bra loc_8c1b8b0c
	mov 0x0B,r14

loc_8c1B8Afe:
	mov.l @(0x140,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8b0c
	mov 0x0C,r14

loc_8c1B8B0C:
	mov.l @(0x134,PC),r13
	extu.b r14,r14
	mov.b @(0x7,r13),r0
	mov.l r0,@-r15
	mov.b @(0x6,r13),r0
	mov.l r0,@-r15
	mov.b @(0x4,r13),r0
	mov.l r0,@-r15
	mov.b @(0x3,r13),r0
	mov.l r0,@-r15
	mov.b @(0x1,r13),r0
	mov.l r0,@-r15
	mov.b @r13,r3
	mov.l r3,@-r15
	mov.l r12,@-r15
	mov.l r14,@-r15
	mov.l r11,@-r15
	mov.l @(0x118,PC),r2
	mov.l r2,@-r15
	mov.l @(0x118,PC),r3
	mov r15,r4
	add 0x38,r4
	jsr @r3
	mov.l r4,@(0x28,r15)
	mov.l @(0x110,PC),r2
	jsr @r2
	nop
	mov.l @(0x110,PC),r3
	jsr @r3
	mov.l @(0x28,r15),r4
	mov.l @(0x104,PC),r2
	jsr @r2
	nop
	add 0x58,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B8B5C:
	mov.l r14,@-r15
	mov 0x00,r5
	mov.l r13,@-r15
	mov 0x03,r6
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov r15,r12
	mov.l r4,@r15
	mov.l @(0x90,PC),r3
	add 0x10,r12
	jsr @r3
	mov r12,r4
	mov.l @(0x88,PC),r2
	mov r15,r11
	mov 0x00,r5
	add 0x08,r11
	mov 0x05,r6
	jsr @r2
	mov r11,r4
	mov.l @(0x80,PC),r14
	mov 0x02,r6
	mov.l @(0x80,PC),r3
	mov r14,r5
	add 0x04,r5
	jsr @r3
	mov r12,r4
	mov.l @(0x74,PC),r2
	mov r14,r5
	mov 0x04,r6
	add 0x07,r5
	jsr @r2
	mov r11,r4
	mov.b @r12,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bf loc_8c1b8bac
	mov 0x30,r2
	mov.b r2,@r12

loc_8c1B8BAC:
	mov.b @r11,r3
	mov 0x03,r6
	add 0x01,r3
	mov.b r3,@r11
	mov.l @(0x58,PC),r13
	mov.l @(0x5C,PC),r5
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8bc4
	bra loc_8c1b8cc6
	mov 0x01,r14

loc_8c1b8bc4:
	mov.l @(0x50,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8bd4
	bra loc_8c1b8cc6
	mov 0x02,r14

loc_8c1b8bd4:
	mov.l @(0x44,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8be4
	bra loc_8c1b8cc6
	mov 0x03,r14

loc_8c1b8be4:
	mov.l @(0x38,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8bf4
	bra loc_8c1b8cc6
	mov 0x04,r14

loc_8c1b8bf4:
	mov.l @(0x2C,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8c58
	bra loc_8c1b8cc6
	mov 0x05,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B8C04:
	#data bank12.loc_8c129728
loc_8c1B8C08:
	#data bank1c.loc_8c1c86D8
loc_8c1B8C0C:
	#data bank12.loc_8c1297D4
loc_8c1B8C10:
	#data bank13.loc_8c131D6C
loc_8c1B8C14:
	#data bank1c.loc_8c1c86E4
loc_8c1B8C18:
	#data bank1c.loc_8c1c86E8
loc_8c1B8C1C:
	#data bank1c.loc_8c1c86EC
loc_8c1B8C20:
	#data bank1c.loc_8c1c86F0
loc_8c1B8C24:
	#data bank1c.loc_8c1c86F4
loc_8c1B8C28:
	#data bank1c.loc_8c1c86F8
loc_8c1B8C2C:
	#data bank1c.loc_8c1c86FC
loc_8c1B8C30:
	#data bank1c.loc_8c1c8700
loc_8c1B8C34:
	#data bank1c.loc_8c1c8704
loc_8c1B8C38:
	#data bank1c.loc_8c1c8708
loc_8c1B8C3C:
	#data bank1c.loc_8c1c870C
loc_8c1B8C40:
	#data bank1c.loc_8c1c8710
loc_8c1B8C44:
	#data bank1c.loc_8c1c8734
loc_8c1B8C48:
	#data bank1c.loc_8c1c8714
loc_8c1B8C4C:
	#data bank12.loc_8c129740
loc_8c1B8C50:
	#data bank1a.loc_8c1aEE08
loc_8c1B8C54:
	#data bank1a.loc_8c1aECDC

;==============================================
loc_8c1B8C58:
	mov.l @(0xC8,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8c68
	bra loc_8c1b8cc6
	mov 0x06,r14

loc_8c1B8C68:
	mov.l @(0xBC,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8c78
	bra loc_8c1b8cc6
	mov 0x07,r14

loc_8c1B8C78:
	mov.l @(0xB0,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8c88
	bra loc_8c1b8cc6
	mov 0x08,r14

loc_8c1B8C88:
	mov.l @(0xA4,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8c98
	bra loc_8c1b8cc6
	mov 0x09,r14

loc_8c1B8C98:
	mov.l @(0x98,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8ca8
	bra loc_8c1b8cc6
	mov 0x0A,r14

loc_8c1B8CA8:
	mov.l @(0x8C,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8cb8
	bra loc_8c1b8cc6
	mov 0x0B,r14

loc_8c1B8CB8:
	mov.l @(0x80,PC),r5
	mov 0x03,r6
	jsr @r13
	mov r14,r4
	tst r0,r0
	bf loc_8c1b8cc6
	mov 0x0C,r14

loc_8c1B8CC6:
	mov.l @(0x78,PC),r13
	extu.b r14,r14
	mov.b @(0x7,r13),r0
	mov.l r0,@-r15
	mov.b @(0x6,r13),r0
	mov.l r0,@-r15
	mov.b @(0x4,r13),r0
	mov.l r0,@-r15
	mov.b @(0x3,r13),r0
	mov.l r0,@-r15
	mov.b @(0x1,r13),r0
	mov.l r0,@-r15
	mov.b @r13,r3
	mov.l r3,@-r15
	mov.l r12,@-r15
	mov.l r14,@-r15
	mov.l r11,@-r15
	mov.l @(0x58,PC),r2
	mov.l r2,@-r15
	mov.l @(0x58,PC),r3
	mov r15,r4
	add 0x3C,r4
	jsr @r3
	mov.l r4,@(0x2C,r15)
	mov.l @(0x54,PC),r2
	mov.l @(0x2C,r15),r1
	jsr @r2
	mov.l @(0x28,r15),r0
	add 0x5C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b8d0c:
	sts.l pr,@-r15
	mov.l @(0x40,PC),r3
	add 0xFC,r15
	jsr @r3
	mov.l r4,@r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov.l @(0x30,PC),r2
	add 0x04,r15
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B8D24:
	#data bank1c.loc_8c1c86F8
loc_8c1B8D28:
	#data bank1c.loc_8c1c86FC
loc_8c1B8D2C:
	#data bank1c.loc_8c1c8700
loc_8c1B8D30:
	#data bank1c.loc_8c1c8704
loc_8c1B8D34:
	#data bank1c.loc_8c1c8708
loc_8c1B8D38:
	#data bank1c.loc_8c1c870C
loc_8c1B8D3C:
	#data bank1c.loc_8c1c8710
loc_8c1B8D40:
	#data bank1c.loc_8c1c8734
loc_8c1B8D44:
	#data bank1c.loc_8c1c8714
loc_8c1B8D48:
	#data bank12.loc_8c129740
loc_8c1B8D4C:
	#data bank12.loc_8c12E5D4
loc_8c1B8D50:
	#data bank1a.loc_8c1aEE08
loc_8c1B8D54:
	#data bank1a.loc_8c1aECDC

;==============================================
loc_8c1B8D58:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(loc_8c1B8E38,pc),r4 ; r4 set to 0x8C34B2CA
	sts.l pr,@-r15
	mov.b @r4,r0
	mov.l @(loc_8c1B8E34,pc),r12 ; r12 set to 0x8C34B288
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1B8D88
	lds.l @r15+,pr
	mov.b @r4,r0
	and 0xDF,r0
	mov.b r0,@r4 ; r4 ??? bc r0 is ???
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13
	bra loc_8c1B9560
	mov.l @r15+,r14

loc_8c1B8D88:
	mov.l @(loc_8c1B8E3C,pc),r9 ; r9 set to 0x8C34B2A9
	mov.l @(loc_8c1B8E48,pc),r2 ; r2 set to 0x8C34CF64
	mov r9,r1 ; r1 set to 0x8C34B2A9
	add 0x1C,r1 ; r1 set to 0x8C34B2C5
	mov.b @r1,r0
	mov.b @r2,r3
	mov.l @(loc_8c1B8E40,pc),r13 ; r13 set to 0x8C34CF58
	mov.l @(loc_8c1B8E44,pc),r14 ; r14 set to 0x8C1B3EEC
	cmp/eq r0,r3
	bf/s loc_8c1B8DA2
	mov 0x00,r10 ; r10 set to 0x00
	bra loc_8c1B8E94
	nop

loc_8c1B8DA2:
	mov.l @(loc_8c1B8E4C,pc),r4 ; r4 set to 0x8C34CF70
	mov.b r10,@r4 ; r4 ??? bc r10 is ???
	mov r10,r0
	nop
	mov.b r0,@(0x01,r4)
	mov r9,r11
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt/s loc_8c1B8DD4
	add 0x03,r11
	cmp/eq 0x02,r0
	bt loc_8c1B8DD8
	cmp/eq 0x03,r0
	bt loc_8c1B8E1C
	cmp/eq 0x04,r0
	bt loc_8c1B8E20
	cmp/eq 0x05,r0
	bt loc_8c1B8E24
	cmp/eq 0x06,r0
	bt loc_8c1B8E5C
	cmp/eq 0x07,r0
	bt loc_8c1B8E8C
	bra loc_8c1B8E94
	nop

loc_8c1B8DD4:
	bra loc_8c1B8E8E
	mov 0x0A,r5

loc_8c1B8DD8:
	mov.b @r11,r0
	extu.b r0,r0
	tst 0xF8,r0
	bf loc_8c1B8DE6
	mov.w @(loc_8c1B8E2A,pc),r5 ; r5 set to 0xFF00
	bra loc_8c1B8E8E
	nop

loc_8c1B8DE6:
	mov.l @(loc_8c1B8E50,pc),r1 ; r1 set to 0x8C352E16
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c1B8DFE
	mov.l @(loc_8c1B8E54,pc),r3 ; r3 set to 0x8C34B2C8
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c1B8DFE
	mov.w @(loc_8c1B8E2C,pc),r5 ; r5 set to 0x1F4
	bra loc_8c1B8E12
	nop

loc_8c1B8DFE:
	mov.b @r11,r0
	mov.w @(loc_8c1B8E2E,pc),r5 ; r5 set to 0xF8
	extu.b r0,r0
	and r0,r5 ; r5 ??? bc r0 is ???
	shar r5
	shar r5
	shar r5
	mov r5,r3
	shll2 r5
	add r3,r5

loc_8c1B8E12:
	mov.l @(loc_8c1B8E58,pc),r4 ; r4 set to 0x8C352E38, r4 set to 0x8C352E38
	jsr @r14
	nop
	bra loc_8c1B8E94
	nop

loc_8c1B8E1C:
	bra loc_8c1B8E8E
	mov 0x64,r5

loc_8c1B8E20:
	bra loc_8c1B8E8E
	mov 0x14,r5

loc_8c1B8E24:
	mov.w @(loc_8c1B8E30,pc),r5 ; r5 set to 0x4B0
	bra loc_8c1B8E8E
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B8E2A:
	#data 0xFF00
loc_8c1B8E2C:
	#data 0x01F4
loc_8c1B8E2E:
	#data 0x00F8
loc_8c1B8E30:
	#data 0x04B0
	#align4

loc_8c1B8E34:
	#data 0x8C34B288
loc_8c1B8E38:
	#data 0x8C34B2CA
loc_8c1B8E3C:
	#data 0x8C34B2A9
loc_8c1B8E40:
	#data 0x8C34CF58
loc_8c1B8E44:
	#data loc_8c1B3EEC
loc_8c1B8E48:
	#data 0x8C34CF64
loc_8c1B8E4C:
	#data 0x8C34CF70
loc_8c1B8E50:
	#data 0x8C352E16
loc_8c1B8E54:
	#data 0x8C34B2C8
loc_8c1B8E58:
	#data 0x8C352E38

;==============================================
loc_8c1B8E5C:
	mov.l @(loc_8c1B8F5C,pc),r3 ; r3 set to 0x8C34B2C8
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c1B8E80
	mov.l @(loc_8c1B8F60,pc),r1 ; r1 set to 0x8C34CF59
	mov.b @r1,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c1B8E80
	mov.b @r11,r5
	extu.b r5,r5
	shlr2 r5
	shlr r5
	mov r5,r3 ; r3 ??? bc r5 is ???
	shll2 r5
	bra loc_8c1B8E82
	add r3,r5

loc_8c1B8E80:
	mov 0x00,r5 ; r5 set to 0x00

loc_8c1B8E82:
	mov.l @(loc_8c1B8F64,pc),r4 ; r4 set to 0x8C352E38, r4 set to 0x8C352E38
	jsr @r14
	nop
	bra loc_8c1B8E94
	nop

loc_8c1b8e8c:
	mov 0x00,r5

loc_8c1B8E8E:
	mov.l @(loc_8c1B8F64,pc),r4 ; r4 set to 0x8C352E38
	jsr @r14
	nop

loc_8c1B8E94:
	add 0x1C,r9
	mov.l @(loc_8c1B8F68,pc),r3 ; r3 set to 0x8C34CF64, r3 set to 0x8C34CF64
	mov.b @r9,r2
	mov.b r2,@r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1B8EE4
	cmp/eq 0x01,r0
	bt loc_8c1B8F16
	cmp/eq 0x02,r0
	bt loc_8c1B8F30
	cmp/eq 0x03,r0
	bt loc_8c1B8F38
	cmp/eq 0x04,r0
	bf loc_8c1B8EB8
	bra loc_8c1B8FBC
	nop

loc_8c1B8EB8:
	cmp/eq 0x05,r0
	bf loc_8c1B8EC0
	bra loc_8c1B8FC4
	nop

loc_8c1B8EC0:
	cmp/eq 0x06,r0
	bf loc_8c1B8EC8
	bra loc_8c1B8FCC
	nop

loc_8c1B8EC8:
	cmp/eq 0x07,r0
	bf loc_8c1B8ED0
	bra loc_8c1B8FCC
	nop

loc_8c1B8ED0:
	cmp/eq 0x08,r0
	bf loc_8c1B8ED8
	bra loc_8c1B8FD4
	nop

loc_8c1B8ED8:
	cmp/eq 0x09,r0
	bf loc_8c1B8EE0
	bra loc_8c1B8FEC
	nop

loc_8c1B8EE0:
	bra loc_8c1B9022
	nop

loc_8c1B8EE4:
	mov.l @(loc_8c1B8F5C,pc),r2 ; r2 set to 0x8C34B2C8
	mov 0x04,r1 ; r1 set to 0x04
	mov.w @r2,r4
	extu.w r4,r4
	tst r4,r1
	bt loc_8c1B8F04
	mov 0x40,r0 ; r0 set to 0x40
	tst r4,r0
	bt loc_8c1B8F04
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@r13
	mov.l @(loc_8c1B8F64,pc),r4 ; r4 set to 0x8C352E38
	jsr @r14
	mov 0x0A,r5 ; r5 set to 0x0A
	bra loc_8c1B8F08
	nop

loc_8c1B8F04:
	bsr loc_8c1B9070
	nop

loc_8c1B8F08:
	mov.l @(loc_8c1B8F70,pc),r3 ; r3 set to 0x8C129728, r3 set to 0x8C129728
	mov 0x14,r6 ; r6 set to 0x14, r6 set to 0x14
	mov.l @(loc_8c1B8F6C,pc),r4 ; r4 set to 0x8C34B314, r4 set to 0x8C34B314
	jsr @r3
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	bra loc_8c1B9022
	nop

loc_8c1B8F16:
	mov.l @(loc_8c1B8F74,pc),r2 ; r2 set to 0x8C1B3F0C
	mov.l @(loc_8c1B8F64,pc),r1 ; r1 set to 0x8C352E38
	jsr @r2
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1B8F28
	bra loc_8c1B9022
	nop

loc_8c1B8F28:
	bsr loc_8c1B9070
	nop
	bra loc_8c1B9022
	nop

loc_8c1B8F30:
	bsr loc_8c1B921C
	nop
	bra loc_8c1B9022
	nop

loc_8c1B8F38:
	bsr loc_8c1B93FE
	nop
	mov r12,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1B8F78
	mov r12,r2
	add 0x1B,r2
	mov.b r10,@r2
	mov.l @(loc_8c1B8F64,pc),r4 ; r4 set to 0x8C352E38
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x06,r3 ; r3 set to 0x06
	bra loc_8c1B9022
	mov.b r3,@r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B8F5C:
	#data 0x8C34B2C8
loc_8c1B8F60:
	#data 0x8C34CF59
loc_8c1B8F64:
	#data 0x8C352E38
loc_8c1B8F68:
	#data 0x8C34CF64
loc_8c1B8F6C:
	#data 0x8C34B314
loc_8c1B8F70:
	#data bank12.loc_8c129728
loc_8c1B8F74:
	#data loc_8c1B3F0C

;==============================================
loc_8c1b8f78:
	mov.l @(loc_8C1B9054,pc),r2
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c1b8f90
	mov.l @(loc_8c1b905c,pc),r3
	mov.l @(loc_8c1b9058,pc),r1
	jsr @r3
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b8fb2

loc_8c1b8f90:
	mov r12,r4
	add 0x1B,r4
	mov.b @r4,r0
	and 0xFE,r0
	mov.b r0,@r4
	mov.b @r4,r0
	or 0x80,r0
	mov.b r0,@r4
	mov.l @(loc_8c1b9058,pc),r4
	mov.w @(loc_8C1B9050,pc),r5
	jsr @r14
	nop
	bsr loc_8c1b9b7c
	nop
	mov 0x05,r2
	bra loc_8c1b9022
	mov.b r2,@r13

loc_8c1b8fb2:
	mov 0x45,r5
	bsr loc_8c1b9782
	mov 0x43,r4
	bra loc_8c1b9022
	nop

loc_8c1B8FBC:
	bsr loc_8c1B94D8
	nop
	bra loc_8c1B9022
	nop

loc_8c1B8FC4:
	bsr loc_8c1B94FE
	nop
	bra loc_8c1B9022
	nop

loc_8c1B8FCC:
	bsr loc_8c1B958A
	nop
	bra loc_8c1B9022
	nop

loc_8c1B8FD4:
	mov.l @(loc_8c1B9060,pc),r2 ; r2 set to 0x8C1B6720
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1B9022
	mov.l @(loc_8c1B9058,pc),r4 ; r4 set to 0x8C352E38
	jsr @r14
	mov 0x32,r5 ; r5 set to 0x32
	mov 0x09,r2 ; r2 set to 0x09
	bra loc_8c1B9022
	mov.b r2,@r13

loc_8c1b8fec:
	bsr loc_8c1b93fe
	nop
	mov.l @(loc_8c1b905c,pc),r2
	mov.l @(loc_8c1b9058,pc),r3
	jsr @r2
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1b9010
	mov.l @(loc_8C1B9064,pc),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c1b9010
	mov.l @(loc_8C1B9054,pc),r2
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c1b9022

loc_8c1b9010:
	mov.l @(loc_8C1B9068,pc),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1b901c
	bsr loc_8c1b9b7c
	nop

loc_8c1b901c:
	mov.l @(loc_8c1b906c,pc),r3
	jsr @r3
	nop

loc_8c1B9022:
	mov r12,r0
	nop
	add 0x19,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1B9040
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1B958A
	mov.l @r15+,r14

loc_8c1B9040:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b9050:
	#data 0x04B0
	#align4

loc_8c1b9054:
	#data 0x8C34CF59
loc_8c1B9058:
	#data 0x8C352E38
loc_8c1B905C:
	#data loc_8c1B3F0C
loc_8c1B9060:
	#data loc_8c1B6720
loc_8c1b9064:
	#data 0x8C352E16
loc_8c1b9068:
	#data 0x8C352F05
loc_8c1B906C:
	#data loc_8c1B400E

;==============================================
loc_8c1B9070:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1B9168,pc),r13 ; r13 set to 0x8C34B288
	sts.l pr,@-r15
	mov r13,r3 ; r3 set to 0x8C34B288
	add 0x17,r3 ; r3 set to 0x8C34B29F
	mov.b r14,@r3 ; r3 ??
	mov r13,r3 ; r3 set to 0x8C34B288
	add 0x19,r3 ; r3 set to 0x8C34B2A1
	mov.b @r3,r0
	and 0x37,r0
	mov.b r0,@r3 ; r3 ??? bc r0 is ???
	mov r13,r2 ; r2 set to 0x8C34B288
	add 0x1B,r2 ; r2 set to 0x8C34B2A3
	mov.b r14,@r2 ; r2 ??
	mov r13,r3 ; r3 set to 0x8C34B288
	add 0x1C,r3 ; r3 set to 0x8C34B2A4
	mov.b @r3,r0
	and 0x18,r0
	mov.b r0,@r3 ; r3 ??? bc r0 is ???
	mov r13,r2 ; r2 set to 0x8C34B288
	mov 0x10,r3 ; r3 set to 0x10
	add 0x1D,r2 ; r2 set to 0x8C34B2A5
	mov.b r3,@r2 ; r2 ??
	mov.l @(loc_8c1B916C,pc),r2 ; r2 set to 0x8C1C169C
	jsr @r2
	nop
	mov.l @(loc_8c1B9170,pc),r1 ; r1 set to 0x8C34CF59
	mov.b r14,@r1 ; r1 ??
	mov.l @(loc_8c1B9174,pc),r3 ; r3 set to 0x8C34CF5A
	mov.b r14,@r3 ; r3 ??
	mov.l @(loc_8c1B9178,pc),r2 ; r2 set to 0x8C352E3F
	mov.b r14,@r2 ; r2 ??
	mov.l @(loc_8c1B917C,pc),r1 ; r1 set to 0x8C34CF5C
	mov.b r14,@r1 ; r1 ??
	mov.l @(loc_8c1B9180,pc),r4 ; r4 set to 0x8C34CF70
	mov.b r14,@r4 ; r4 ??
	mov r14,r0 ; r0 set to 0x00
	nop
	mov 0x02,r9 ; r9 set to 0x02
	mov.b r0,@(0x01,r4)
	mov.l @(loc_8c1B9190,pc),r3 ; r3 set to 0x8C34B2C8
	mov r9,r2 ; r2 set to 0x02
	add 0x7E,r2 ; r2 set to 0x80
	mov.l @(loc_8c1B9184,pc),r8 ; r8 set to 0x8C34B2A9
	mov.w @r3,r11
	mov.l @(loc_8c1B9188,pc),r10 ; r10 set to 0x8C34CF58
	extu.w r11,r11
	mov.l @(loc_8c1B918C,pc),r12 ; r12 set to 0x8C1B3EEC
	tst r11,r2
	bt loc_8c1B90EC
	mov 0x04,r0 ; r0 set to 0x04
	tst r11,r0
	bf loc_8c1B90EC
	bra loc_8c1B91E2
	nop

loc_8c1B90EC:
	bsr loc_8c1B9932
	nop
	mov.l @(loc_8c1B9194,pc),r5 ; r5 set to 0x8C34CF5D
	mov.b r14,@r5 ; r5 ??? bc r14 is ???
	mov.l @(loc_8c1B9190,pc),r2 ; r2 set to 0x8C34B2C8
	mov.w @r2,r4
	extu.w r4,r4
	mov r4,r3
	tst r9,r3
	bf loc_8c1B9138
	mov 0x01,r0 ; r0 set to 0x01
	tst r4,r0
	bf loc_8c1B9138
	mov 0x40,r1 ; r1 set to 0x40
	tst r4,r1
	bt loc_8c1B9138
	mov.l @(loc_8c1B9198,pc),r0 ; r0 set to 0x8C34B2B2
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c1B9138
	mov r13,r4
	mov 0x01,r2 ; r2 set to 0x01
	add 0x1B,r4
	mov.b r2,@r5
	mov.b @r4,r0
	or 0x80,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xFE,r0
	bsr loc_8c1B9B7C
	mov.b r0,@r4
	mov.l @(loc_8c1B919C,pc),r4 ; r4 set to 0x8C352E38
	jsr @r12
	mov 0x14,r5 ; r5 set to 0x14
	mov 0x04,r2 ; r2 set to 0x04
	bra loc_8c1B920A
	mov.b r2,@r10

loc_8c1B9138:
	mov.l @(loc_8c1B91A0,pc),r2 ; r2 set to 0x8C1B4156
	jsr @r2
	mov 0x64,r4 ; r4 set to 0x64
	mov r13,r3
	add 0x1B,r3
	mov.b @r3,r0
	or 0x01,r0
	mov.b r0,@r3
	mov.l @(loc_8c1B91A4,pc),r2 ; r2 set to 0x8C352F34
	mov.w r14,@r2 ; r2 ??? bc r14 is ???
	mov.l @(loc_8c1B91A8,pc),r3 ; r3 set to 0x8C352F2E
	mov.w r14,@r3 ; r3 ??? bc r14 is ???
	mov.b @(0x03,r8),r0
	extu.b r0,r0
	tst 0xF8,r0
	bf loc_8c1B91AC
	mov.l @(loc_8c1B919C,pc),r4 ; r4 set to 0x8C352E38
	mov.w @(loc_8c1B9164,pc),r5 ; r5 set to 0xFF00
	jsr @r12
	nop
	bra loc_8c1B91DE
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B9164:
	#data 0xFF00
	#align4

loc_8c1B9168:
	#data 0x8C34B288
loc_8c1B916C:
	#data bank1c.loc_8c1c169C
loc_8c1B9170:
	#data 0x8C34CF59
loc_8c1B9174:
	#data 0x8C34CF5A
loc_8c1B9178:
	#data 0x8C352E3F
loc_8c1B917C:
	#data 0x8C34CF5C
loc_8c1B9180:
	#data 0x8C34CF70
loc_8c1B9184:
	#data 0x8C34B2A9
loc_8c1B9188:
	#data 0x8C34CF58
loc_8c1B918C:
	#data loc_8c1B3EEC
loc_8c1B9190:
	#data 0x8C34B2C8
loc_8c1B9194:
	#data 0x8C34CF5D
loc_8c1B9198:
	#data 0x8C34B2B2
loc_8c1B919C:
	#data 0x8C352E38
loc_8c1B91A0:
	#data loc_8c1B4156
loc_8c1B91A4:
	#data 0x8C352F34
loc_8c1B91A8:
	#data 0x8C352F2E

;==============================================
loc_8c1B91AC:
	mov.l @(loc_8c1B92B0,pc),r0 ; r0 set to 0x8C352E16
	mov.b @r0,r1
	tst r1,r1
	bf loc_8c1B91C4
	mov.l @(loc_8c1B92B4,pc),r2 ; r2 set to 0x8C34B2C8
	mov.w @r2,r0 ; r0 ??
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c1B91C4
	mov.w @(loc_8c1B92AA,pc),r5 ; r5 set to 0x1F4
	bra loc_8c1B91D8
	nop

loc_8c1B91C4:
	mov.b @(0x03,r8),r0
	mov.w @(loc_8c1B92AC,pc),r5 ; r5 set to 0xF8
	extu.b r0,r0
	and r0,r5 ; r5 ??? bc r0 is ???
	shar r5
	shar r5
	shar r5
	mov r5,r3
	shll2 r5
	add r3,r5

loc_8c1B91D8:
	mov.l @(loc_8c1B92B8,pc),r4 ; r4 set to 0x8C352E38, r4 set to 0x8C352E38
	jsr @r12
	nop

loc_8c1B91DE:
	bra loc_8c1B920A
	mov.b r9,@r10

loc_8c1B91E2:
	tst r11,r9
	bt loc_8c1B920A
	mov 0x40,r2 ; r2 set to 0x40
	tst r11,r2
	bt loc_8c1B91FE
	mov.b @(0x03,r8),r0
	extu.b r0,r0
	shlr2 r0
	shlr r0
	mov r0,r3
	shll2 r0
	add r3,r0
	bra loc_8c1B9200
	mov r0,r5

loc_8c1b91fe:
	mov 0x00,r5

loc_8c1b9200:
	mov.l @(loc_8c1b92b8,pc),r4
	jsr @r12
	nop
	mov 0x06,r3
	mov.b r3,@r10

loc_8c1B920A:
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
loc_8c1B921C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(loc_8c1B92B0,pc),r2 ; r2 set to 0x8C352E16
	sts.l pr,@-r15
	mov.b @r2,r3
	mov.l @(loc_8c1B92C8,pc),r14 ; r14 set to 0x8C34B288
	mov.l @(loc_8c1B92C4,pc),r13 ; r13 set to 0x8C34CF59
	tst r3,r3
	mov.l @(loc_8c1B92B4,pc),r10 ; r10 set to 0x8C34B2C8
	mov.l @(loc_8c1B92BC,pc),r11 ; r11 set to 0x8C34CF58
	mov.l @(loc_8c1B92C0,pc),r12 ; r12 set to 0x8C1B3EEC
	bt/s loc_8c1B92CC
	mov 0x00,r9 ; r9 set to 0x00
	mov.w @(loc_8c1B92AE,pc),r4 ; r4 set to 0x91
	bsr loc_8c1B9782
	mov 0x11,r5 ; r5 set to 0x11
	bsr loc_8c1B93FE
	nop
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c1B9262
	mov r14,r2 ; r2 set to 0x8C34B288
	add 0x1B,r2 ; r2 set to 0x8C34B2A3
	mov.b r9,@r2 ; r2 ??
	mov.l @(loc_8c1B92B8,pc),r4 ; r4 set to 0x8C352E38
	jsr @r12
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x06,r3 ; r3 set to 0x06
	bra loc_8c1B93B0
	mov.b r3,@r11

loc_8c1b9262:
	mov.b @r13,r4
	extu.b r4,r0
	cmp/eq 0x02,r0
	bt/s loc_8c1b9274
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bf loc_8c1b9292

loc_8c1b9274:
	mov r14,r4
	add 0x1B,r4
	mov.b @r4,r0
	and 0xFE,r0
	mov.b r0,@r4
	mov.b @r4,r0
	or 0x80,r0
	mov.b r0,@r4
	mov.l @(loc_8c1b92b8,pc),r4
	jsr @r12
	mov 0x14,r5
	bsr loc_8c1b9b7c
	nop
	bra loc_8c1b9374
	mov 0x04,r2

loc_8c1b9292:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c1b929e
	bra loc_8c1b93b0
	nop

loc_8c1b929e:
	mov r14,r3
	add 0x1B,r3
	mov.b @r3,r0
	or 0x08,r0
	bra loc_8c1b93c6
	mov.b r0,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b92aa:
	#data 0x01F4
loc_8c1b92ac:
	#data 0x00F8
loc_8c1b92ae:
	#data 0x0091

loc_8c1b92b0:
	#data 0x8C352E16
loc_8c1b92b4:
	#data 0x8C34B2C8
loc_8c1b92b8:
	#data 0x8C352E38
loc_8c1b92bc:
	#data 0x8C34CF58
loc_8c1b92c0:
	#data loc_8c1b3EEC
loc_8c1b92c4:
	#data 0x8C34CF59
loc_8c1b92c8:
	#data 0x8C34B288

;==============================================
loc_8c1B92CC:
	bsr loc_8c1B93FE
	nop
	mov r14,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1B92F0
	mov r14,r2
	add 0x1B,r2
	mov.b r9,@r2
	mov.l @(loc_8c1B939C,pc),r4 ; r4 set to 0x8C352E38
	jsr @r12
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x06,r3 ; r3 set to 0x06
	bra loc_8c1B93EE
	mov.b r3,@r11

loc_8c1b92f0:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c1b9300
	mov.l @(loc_8C1B93A0,pc),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1b9348

loc_8c1b9300:
	mov.w @r10,r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c1b9342
	mov.l @(loc_8C1B93A4,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1b9338
	mov.l @(loc_8C1B93A8,pc),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1b9338
	mov.l @(loc_8C1B93A0,pc),r4
	mov 0x0A,r3
	mov.b @r4,r2
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c1b9330
	mov 0x45,r5
	bsr loc_8c1b9782
	mov 0x4D,r4
	bra loc_8c1b9348
	nop

loc_8c1b9330:
	mov.l @(loc_8C1B93A8,pc),r1
	mov 0x01,r2
	mov.b r2,@r1
	mov.b r9,@r4

loc_8c1b9338:
	mov 0x45,r5
	bsr loc_8c1b9782
	mov 0x43,r4
	bra loc_8c1b9348
	nop

loc_8c1b9342:
	mov 0x45,r5
	bsr loc_8c1b9782
	mov 0x00,r4

loc_8c1b9348:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c1b935c
	mov.l @(loc_8C1B93A0,pc),r3
	mov 0x15,r1
	mov.b @r3,r2
	extu.b r2,r2
	cmp/gt r1,r2
	bf loc_8c1b93b0

loc_8c1b935c:
	mov.w @r10,r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c1b93ac
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c1b9378
	mov.l @(loc_8c1b939c,pc),r4
	jsr @r12
	mov 0x64,r5
	mov 0x03,r2

loc_8c1b9374:
	bra loc_8c1b93b0
	mov.b r2,@r11

loc_8c1b9378:
	mov r14,r4
	add 0x1B,r4
	mov.b @r4,r0
	and 0xFE,r0
	mov.b r0,@r4
	mov.b @r4,r0
	or 0x80,r0
	mov.b r0,@r4
	mov.l @(loc_8c1b939c,pc),r4
	mov.w @(loc_8C1B939A,pc),r5
	jsr @r12
	nop
	bsr loc_8c1b9b7c
	nop
	mov 0x05,r3
	bra loc_8c1b93b0
	mov.b r3,@r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B939A:
	#data 0x04B0
	#align4

loc_8c1b939c:
	#data 0x8C352E38
loc_8C1B93A0:
	#data 0x8C352E3F
loc_8C1B93A4:
	#data 0x8C34B2B3
loc_8C1B93A8:
	#data 0x8C34CF5C

;==============================================
loc_8c1b93ac:
	bsr loc_8c1b958a
	nop

loc_8c1B93B0:
	mov.l @(loc_8c1B94A0,pc),r3 ; r3 set to 0x8C1B3F0C
	mov.l @(loc_8c1B949C,pc),r2 ; r2 set to 0x8C352E38
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1B93EE
	mov.w @r10,r0
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c1B93D6

loc_8c1B93C6:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1B958A
	mov.l @r15+,r14

loc_8c1b93d6:
	mov r14,r3
	add 0x1B,r3
	mov.b @r3,r0
	mov.l @(loc_8c1b949c,pc),r4
	or 0x80,r0
	mov.w @(loc_8C1B949A,pc),r5
	jsr @r12
	mov.b r0,@r3
	bsr loc_8c1b9b7c
	nop
	mov 0x05,r3
	mov.b r3,@r11

loc_8c1B93EE:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b93fe:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(loc_8C1B94AC,pc),r14
	sts.l pr,@-r15
	mov.w @r14,r3
	mov.l @(loc_8C1B94A4,pc),r12
	mov.l @(loc_8C1B94A8,pc),r13
	tst r3,r3
	bf/s loc_8c1b942c
	mov.b @r12,r11
	mov.l @(loc_8c1b94b8,pc),r3
	mov.l @(loc_8C1B94B4,pc),r4
	mov.l @(loc_8C1B94B0,pc),r5
	jsr @r3
	nop
	mov.l @(loc_8C1B94B0,pc),r3
	mov.w @r3,r2
	mov.w r2,@r14
	mov.l @(loc_8C1B94B4,pc),r0
	mov.l @r0,r1
	mov.l r1,@r13

loc_8c1b942c:
	mov.w @r14,r3
	tst r3,r3
	bt loc_8c1b94cc
	bra loc_8c1b9448
	nop

loc_8c1b9436:
	mov.l @r13,r4
	add 0x01,r4
	mov.l r4,@r13
	add 0xFF,r4
	bsr loc_8c1b9800
	mov.b @r4,r4
	mov.w @r14,r2
	add 0xFF,r2
	mov.w r2,@r14

loc_8c1b9448:
	mov.b @r12,r2
	extu.b r11,r3
	extu.b r2,r2
	cmp/eq r2,r3
	bf loc_8c1b945a
	mov.l @(loc_8C1B94AC,pc),r3
	mov.w @r3,r2
	tst r2,r2
	bf loc_8c1b9436

loc_8c1b945a:
	mov.w @r14,r2
	tst r2,r2
	bf loc_8c1b94cc
	mov.l @(loc_8C1B94BC,pc),r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c1b9472
	mov.l @(loc_8C1B94C0,pc),r1
	mov.w @r1,r0
	extu.w r0,r0
	tst 0x02,r0
	bf loc_8c1b947c

loc_8c1b9472:
	mov.l @(loc_8C1B94C4,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c1b9488

loc_8c1b947c:
	mov.l @(loc_8C1B94B0,pc),r2
	mov.w @r2,r3
	mov.w r3,@r14
	mov.l @(loc_8C1B94B4,pc),r0
	mov.l @r0,r1
	mov.l r1,@r13

loc_8c1b9488:
	bsr loc_8c1b961c
	nop
	lds.l @r15+,pr
	mov.l @(loc_8c1b94c8,pc),r2
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b949a:
	#data 0x04B0
	#align4

loc_8c1b949c:
	#data 0x8C352E38
loc_8c1b94a0:
	#data loc_8c1b3F0C
loc_8C1B94A4:
	#data 0x8C34CF59
loc_8C1B94A8:
	#data 0x8C352F30
loc_8C1B94AC:
	#data 0x8C352F2E
loc_8C1B94B0:
	#data 0x8C352F34
loc_8C1B94B4:
	#data 0x8C352F38
loc_8c1b94b8:
	#data loc_8c1b624c
loc_8C1B94BC:
	#data 0x8C352E16
loc_8C1B94C0:
	#data 0x8C34B2C8
loc_8C1B94C4:
	#data 0x8C34CF58
loc_8c1b94c8:
	#data loc_8c1b6424

;==============================================
loc_8c1b94cc:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b94d8:
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r2
	mov.l @(0xF0,PC),r3
	jsr @r2
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b94f8
	mov.l @(0xEC,PC),r3
	mov.l @(0xE4,PC),r4
	mov.w @(0xDE,PC),r5
	jsr @r3
	nop
	mov.l @(0xE8,PC),r3
	mov 0x05,r2
	mov.b r2,@r3

loc_8c1b94f8:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1b94fe:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xDC,PC),r1
	jsr @r1
	nop
	mov.l @(0xD8,PC),r14
	mov r14,r4
	add 0x1B,r4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b951c
	mov 0x00,r2
	bsr loc_8c1b9560
	mov.b r2,@r4

loc_8c1b951c:
	mov r14,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1b9530
	mov.l @(0xBC,PC),r2
	jsr @r2
	nop

loc_8c1b9530:
	mov.l @(0xB8,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x08,r0
	bf loc_8c1b955a
	mov.l @(0x98,PC),r2
	mov.l @(0x90,PC),r1
	jsr @r2
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b955a
	mov 0x00,r2
	add 0x1B,r14
	mov.b r2,@r14
	lds.l @r15+,pr
	mov.l @(0x9C,PC),r1
	mov 0x01,r3
	mov.l r3,@r1
	bra loc_8c1b9560
	mov.l @r15+,r14

loc_8c1b955a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c1B9560:
	mov.l @(loc_8c1B95F4,pc),r2 ; r2 set to 0x8C34B2CA
	mov.b @r2,r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c1B958A
	mov.l @(loc_8c1B95E4,pc),r4 ; r4 set to 0x8C34B288
	mov r4,r3 ; r3 set to 0x8C34B288
	add 0x1B,r3 ; r3 set to 0x8C34B2A3
	mov.b @r3,r0
	and 0x08,r0
	mov.b r0,@r3 ; r3 ??? bc r0 is ???
	mov r4,r2 ; r2 set to 0x8C34B288
	add 0x1D,r2 ; r2 set to 0x8C34B2A5
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r5,@r2 ; r2 ??
	mov 0x7F,r3 ; r3 set to 0x7F
	add 0x19,r4 ; r4 set to 0x8C34B2A1
	mov.b r3,@r4 ; r4 ??
	mov.l @(loc_8c1B95F8,pc),r2 ; r2 set to 0x8C34B2C6
	rts
	mov.b r5,@r2

;==============================================
loc_8c1b958a:
	mov.l @(loc_8c1b95f4,pc),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	mov.l @(loc_8C1B95EC,pc),r5
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1b959e
	mov.w @r5,r0
	or 0x01,r0
	mov.w r0,@r5

loc_8c1b959e:
	mov.l @(loc_8c1b95e4,pc),r4
	mov r4,r3
	add 0x1B,r3
	mov.b @r3,r0
	and 0x08,r0
	mov.b r0,@r3
	mov r4,r2
	mov 0x00,r3
	add 0x1D,r2
	mov.b r3,@r2
	mov 0x7F,r2
	add 0x19,r4
	mov.b r2,@r4
	mov.w @r5,r4
	mov 0x11,r3
	extu.w r4,r4
	tst r4,r3
	bf loc_8c1b95fc
	bsr loc_8c1b9560
	nop
	mov.l @(loc_8C1B95F0,pc),r1
	mov 0x01,r2
	bra loc_8c1b9616
	mov.l r2,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b95ce:
	#data 0x04B0
	#align4

loc_8c1b95d0:
	#data 0x8C352E38
loc_8c1b95d4:
	#data loc_8c1b3F0C
loc_8c1b95d8:
	#data loc_8c1b3EEC
loc_8c1b95dc:
	#data 0x8C34CF58
loc_8c1b95e0:
	#data loc_8c1b9DDC
loc_8c1b95e4:
	#data 0x8C34B288
loc_8c1b95e8:
	#data loc_8c1b400E
loc_8C1B95EC:
	#data 0x8C34B2C8
loc_8C1B95F0:
	#data 0x8C34B324
loc_8c1b95f4:
	#data 0x8C34B2CA
loc_8c1b95f8:
	#data 0x8C34B2C6

;==============================================
loc_8c1b95fc:
	mov 0x10,r0
	tst r0,r4
	bf loc_8c1b9610
	mov.l @(loc_8C1B96E0,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1b9610
	bsr loc_8c1b9772
	nop

loc_8c1b9610:
	mov.l @(loc_8c1b96e4,pc),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c1b9616:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1b961c:
	sts.l pr,@-r15
	mov.l @(0xC8,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1b968c
	mov.l @(0xB4,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0xC0,r0
	bt loc_8c1b968c
	mov.l @(0xB8,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b968c
	mov.l @(0xB0,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c1b968c
	mov.l @(0xB0,PC),r2
	mov.l @(0xA8,PC),r1
	jsr @r2
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b968c
	mov.l @(0xA4,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1b9664
	mov.l @(0xA0,PC),r0
	mov.b @r0,r2
	tst r2,r2
	bf loc_8c1b968c

loc_8c1b9664:
	mov.l @(0x9C,PC),r2
	mov.l @(0xA0,PC),r0
	mov.w @r2,r3
	mov.w r3,@r0
	extu.w r3,r3
	tst r3,r3
	bt loc_8c1b968c
	mov.l @(0x98,PC),r1
	mov.l @(0x98,PC),r2
	mov.l @r1,r3
	mov.l r3,@r2
	bsr loc_8c1b9692
	nop
	mov.l @(0x8C,PC),r3
	mov 0x00,r1
	mov.l @(0x8C,PC),r2
	mov.l @r3,r0
	mov.l r0,@r2
	mov.l @(0x7C,PC),r0
	mov.w r1,@r0

loc_8c1b968c:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1b9692:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0x74,PC),r4
	mov.w @(0x36,PC),r5
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst r5,r0
	bt loc_8c1b96b2
	mov 0x02,r0
	mov.b @(r0,r4),r0
	and 0x7F,r0
	bra loc_8c1b96b4
	mov r0,r13

loc_8c1b96b2:
	mov r5,r13

loc_8c1b96b4:
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1b96c2
	mov.w @(0x1A,PC),r12
	bra loc_8c1b96c4
	nop

loc_8c1b96c2:
	mov.w @(0x16,PC),r12

loc_8c1b96c4:
	mov.l @(0x50,PC),r4
	mov.l @(0x24,PC),r1
	mov r4,r10
	mov r4,r11
	mov.l @(0x40,PC),r4
	add 0x02,r11
	mov.l @(0x34,PC),r6
	mov.w @r10,r14
	bra loc_8c1b9752
	mov 0x7F,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1B96d8:
	#data 0x0080
loc_8C1B96da:
	#data 0x0200
loc_8C1B96dc:
	#data 0x0FA0
	#align4

loc_8C1B96E0:
	#data 0x8C34B2AA
loc_8c1b96e4:
	#data loc_8c1b400e
loc_8c1b96e8:
	#data 0x8C34B2A5
loc_8c1b96ec:
	#data 0x8C34B2A1
loc_8c1b96f0:
	#data 0x8C34B2C8
loc_8c1b96f4:
	#data 0x8C34CF60
loc_8c1b96f8:
	#data loc_8c1b3F0C
loc_8c1b96fc:
	#data 0x8C352E16
loc_8c1b9700:
	#data 0x8C352E3F
loc_8c1b9704:
	#data 0x8C352F34
loc_8c1b9708:
	#data 0x8C352F2E
loc_8c1b970c:
	#data 0x8C352F38
loc_8c1b9710:
	#data 0x8C352F30
loc_8c1b9714:
	#data 0x8C34B2A9
loc_8c1b9718:
	#data 0x8C34CF70

;==============================================
loc_8c1b971c:
	mov.l @r4,r7
	mov.b @r7,r0
	extu.b r0,r0
	and r5,r0
	cmp/eq 0x11,r0
	bt loc_8c1b9730
	mov.b @r7,r3
	extu.w r14,r0
	add 0x01,r14
	mov.b r3,@(r0,r11)

loc_8c1b9730:
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	add 0xFF,r2
	mov.b @r2,r3
	extu.b r13,r2
	extu.b r3,r3
	and r5,r3
	cmp/eq r2,r3
	bt loc_8c1b974c
	extu.w r12,r3
	extu.w r14,r2
	cmp/gt r3,r2
	bf loc_8c1b9752

loc_8c1b974c:
	mov.b @r1,r0
	or 0x80,r0
	mov.b r0,@r1

loc_8c1b9752:
	mov.w @r6,r3
	add 0xFF,r3
	mov.w r3,@r6
	add 0x01,r3
	extu.w r3,r3
	tst r3,r3
	bf loc_8c1b971c
	mov 0x00,r1
	mov.w r1,@r6
	mov.w r14,@r10
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b9772:
	mov.l @(loc_8C1B97EC,pc),r4
	mov.w @r4,r3
	tst r3,r3
	bt loc_8c1b977e
	bra loc_8c1b9c50
	mov.w @r4+,r5

loc_8c1b977e:
	rts
	nop

loc_8c1B9782:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r0
	nop
	mov.b r0,@(0x08,r15)
	mov r5,r0
	nop
	mov.b r0,@(0x04,r15)
	mov.l @(loc_8c1B97F0,pc),r3 ; r3 set to 0x8C1B6626
	jsr @r3
	mov r15,r4
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1B97E0
	mov.l @(loc_8c1B97F4,pc),r4 ; r4 set to 0x8C352E3F
	mov 0x00,r14 ; r14 set to 0x00
	mov.w @(loc_8c1B97E8,pc),r5 ; r5 set to 0x80

loc_8c1B97A6:
	mov.b @r4,r1
	add 0x01,r1
	mov.b r1,@r4 ; r4 ??? bc r1 is ???
	add 0xFF,r1
	mov.l @(loc_8c1B97F8,pc),r3 ; r3 set to 0x8C1292D4
	extu.b r1,r1
	jsr @r3
	mov 0x02,r0 ; r0 set to 0x02
	tst r0,r0
	bt/s loc_8c1B97C8
	add 0x01,r14 ; r14 set to 0x01
	mov.l @r15,r1
	add 0x01,r1
	mov.l r1,@r15
	mov.b @(0x08,r15),r0
	bra loc_8c1B97D2
	mov.b r0,@-r1

loc_8c1b97c8:
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b @(0x04,r15),r0
	mov.b r0,@-r2

loc_8c1b97d2:
	extu.b r14,r3
	cmp/ge r5,r3
	bf loc_8c1b97a6
	mov.l @(loc_8c1b97fc,pc),r3
	mov 0x01,r5
	jsr @r3
	extu.b r14,r4

loc_8c1B97E0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B97E8:
	#data 0x0080
	#align4

loc_8c1b97ec:
	#data 0x8C34CF70
loc_8c1B97F0:
	#data loc_8c1B6626
loc_8c1B97F4:
	#data 0x8C352E3F
loc_8c1B97F8:
	#data bank12.loc_8c1292D4
loc_8c1B97FC:
	#data loc_8c1B6750

;==============================================
loc_8c1B9800:
	mov.l r14,@-r15
	extu.b r4,r0
	mov.l @(0xB4,PC),r2
	add 0xFC,r15
	mov.l @(0xAC,PC),r7
	cmp/eq 0x00,r0
	mov.b @r2,r3
	mov 0x04,r6
	mov.b r3,@r15
	mov.l @(0xAC,PC),r5
	mov.b @r7,r14
	bt.s loc_8c1b989a
	extu.b r14,r14
	cmp/eq 0x11,r0
	bt loc_8c1b9840
	cmp/eq 0x3F,r0
	bf loc_8c1b9826
	bra loc_8c1b98ea
	nop

loc_8c1B9826:
	cmp/eq 0x43,r0
	bt loc_8c1b987e
	cmp/eq 0x45,r0
	bt loc_8c1b9866
	cmp/eq 0x4D,r0
	bt loc_8c1b98c4
	cmp/eq 0x7E,r0
	bt loc_8c1b98fe
	mov.w @(0x7C,PC),r1
	cmp/eq r1,r0
	bt loc_8c1b984a
	bra loc_8c1b991a
	nop

loc_8c1B9840:
	mov.w @(0x72,PC),r3
	cmp/eq r3,r14
	bt loc_8c1b98f2
	bra loc_8c1b991a
	nop

loc_8c1B984A:
	mov r14,r0
	nop
	cmp/eq 0x11,r0
	bf loc_8c1b991a
	mov.b @r2,r1
	add 0x01,r1
	mov.b r1,@r2
	add 0xFF,r1
	extu.b r1,r1
	cmp/ge r6,r1
	bf loc_8c1b991a
	mov 0x01,r1
	bra loc_8c1b991a
	mov.b r1,@r5

loc_8c1B9866:
	mov r14,r0
	nop
	cmp/eq 0x43,r0
	bt loc_8c1b98f2
	tst r14,r14
	bt loc_8c1b98f2
	mov r14,r0
	nop
	cmp/eq 0x4D,r0
	bf loc_8c1b991a
	bra loc_8c1b98f2
	nop

loc_8c1B987E:
	mov r14,r0
	nop
	cmp/eq 0x45,r0
	bf loc_8c1b991a
	mov.b @r2,r1
	mov 0x02,r6
	add 0x01,r1
	mov.b r1,@r2
	add 0xFF,r1
	extu.b r1,r1
	cmp/ge r6,r1
	bf loc_8c1b991a
	bra loc_8c1b991a
	mov.b r6,@r5

loc_8c1B989A:
	mov r14,r0
	nop
	cmp/eq 0x45,r0
	bf loc_8c1b991a
	mov.b @r2,r1
	add 0x01,r1
	mov.b r1,@r2
	add 0xFF,r1
	extu.b r1,r1
	cmp/ge r6,r1
	bf loc_8c1b991a
	mov 0x03,r1
	bra loc_8c1b991a
	mov.b r1,@r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b98b6:
	#data 0x0091
	#align4

loc_8c1b98b8:
	#data 0x8C34CF65
loc_8c1b98bc:
	#data 0x8C34CF5A
loc_8c1b98c0:
	#data 0x8C34CF59

;==============================================
loc_8c1B98C4:
	mov r14,r0
	nop
	cmp/eq 0x45,r0
	bf loc_8c1b991a
	mov.l @(0xD8,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x30,r0
	bt loc_8c1b991a
	mov.b @r2,r1
	mov 0x02,r3
	add 0x01,r1
	mov.b r1,@r2
	add 0xFF,r1
	extu.b r1,r1
	cmp/ge r3,r1
	bf loc_8c1b991a
	bra loc_8c1b991a
	mov.b r6,@r5

loc_8c1B98EA:
	mov r14,r0
	nop
	cmp/eq 0x7E,r0
	bf loc_8c1b991a

loc_8c1B98F2:
	mov.l @(0xB8,PC),r3
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	bra loc_8c1b991a
	nop

loc_8c1B98FE:
	mov r14,r0
	nop
	cmp/eq 0x3F,r0
	bf loc_8c1b991a
	mov.b @r2,r3
	mov 0x20,r1
	add 0x01,r3
	mov.b r3,@r2
	add 0xFF,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c1b991a
	mov 0x05,r0
	mov.b r0,@r5

loc_8c1B991A:
	mov.b r4,@r7
	mov.l @(0x8C,PC),r1
	mov.b @r15,r2
	mov.b @r1,r3
	cmp/eq r3,r2
	bf loc_8c1b992c
	mov.l @(0x84,PC),r3
	mov 0x00,r2
	mov.b r2,@r3

loc_8c1B992C:
	add 0x04,r15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B9932:
	mov.l r14,@-r15
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1B99B4,pc),r5 ; r5 set to 0x8C34B2A9
	add 0xFC,r15
	mov.l @(loc_8c1B99B8,pc),r3 ; r3 set to 0x8C352E1A
	mov.w @(loc_8c1B999E,pc),r12 ; r12 set to 0x400
	mov.w @(loc_8c1B999C,pc),r10 ; r10 set to 0x80
	mov.l @(loc_8c1B99B0,pc),r6 ; r6 set to 0x8C352E56
	mov.b r4,@r3 ; r3 ??
	mov.b @(0x08,r5),r0
	mov.w @(loc_8c1B99A0,pc),r1 ; r1 set to 0x190
	extu.b r0,r0
	and 0x3F,r0
	mov r0,r2
	shll2 r0
	add r2,r0
	mov.l @(loc_8c1B99BC,pc),r2 ; r2 set to 0x8C352DEC
	shll r0
	add r1,r0
	mov.l r0,@r2 ; r2 ??? bc r0 is ???
	mov.b @(0x0B,r5),r0
	mov.l @(loc_8c1B99C0,pc),r3 ; r3 set to 0x8C352E52
	extu.b r0,r0
	and 0x0C,r0
	shar r0
	shar r0
	mov.w r0,@r3 ; r3 ??? bc r0 is ???
	mov r5,r0 ; r0 set to 0x8C34B2A9
	nop
	add 0x13,r0 ; r0 set to 0x8C34B2BC
	mov.b @r0,r0 ; r0 ??
	and 0xC0,r0
	extu.b r0,r7
	tst r7,r7
	bf/s loc_8c1B998A
	mov.b r0,@r15
	mov.w @(loc_8c1B99A2,pc),r1 ; r1 set to 0x200
	bra loc_8c1B9998
	nop

loc_8c1B998A:
	mov r7,r0
	nop
	cmp/eq 0x40,r0
	bt loc_8c1B99C4
	cmp/eq r10,r7
	bf loc_8c1B99C4
	mov.w @(loc_8c1B99A4,pc),r1 ; r1 set to 0x800

loc_8c1B9998:
	bra loc_8c1B99C6
	mov.w r1,@r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1B999C:
	#data 0x0080
loc_8c1B999E:
	#data 0x0400
loc_8c1B99A0:
	#data 0x0190
loc_8c1B99A2:
	#data 0x0200
loc_8c1B99A4:
	#data 0x0800
	#align4

loc_8c1B99A8:
	#data 0x8C34B2B3
loc_8c1B99Ac:
	#data 0x8C34CF5A
loc_8c1B99B0:
	#data 0x8C352E56
loc_8c1B99B4:
	#data 0x8C34B2A9
loc_8c1B99B8:
	#data 0x8C352E1A
loc_8c1B99BC:
	#data 0x8C352DEC
loc_8c1B99C0:
	#data 0x8C352E52

;==============================================
loc_8c1b99c4:
	mov.w r12,@r6

loc_8c1b99c6:
	mov.w @r6,r3
	extu.w r3,r3
	cmp/gt r12,r3
	bf/s loc_8c1b99d2
	mov r5,r3
	mov.w r12,@r6

loc_8c1b99d2:
	add 0x13,r3
	mov.l @(loc_8C1B9A78,pc),r1
	mov.b @r3,r2
	mov.l @(loc_8C1B9A74,pc),r3
	extu.b r2,r2
	and r3,r2
	add 0x06,r2
	mov.w r2,@r1
	mov.l @(loc_8C1B9A7C,pc),r3
	mov.b r4,@r3
	mov.b @(0x08,r5),r0
	mov.l @(loc_8C1B9A80,pc),r8
	extu.b r0,r0
	tst r10,r0
	bt loc_8c1b99f6
	mov 0x04,r2
	bra loc_8c1b99f8
	mov.b r2,@r8

loc_8c1b99f6:
	mov.b r4,@r8

loc_8c1b99f8:
	mov.b @(0x08,r5),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1b9a08
	mov.l @(loc_8C1B9A84,pc),r3
	mov 0x01,r2
	bra loc_8c1b9a0c
	mov.b r2,@r3

loc_8c1b9a08:
	mov.l @(loc_8C1B9A84,pc),r0
	mov.b r4,@r0

loc_8c1b9a0c:
	mov.b @(0x09,r5),r0
	mov.l @(loc_8C1B9A88,pc),r14
	extu.b r0,r0
	tst r10,r0
	bt loc_8c1b9a1c
	mov 0x20,r2
	bra loc_8c1b9a1e
	mov.b r2,@r14

loc_8c1b9a1c:
	mov.b r4,@r14

loc_8c1b9a1e:
	mov.b @r5,r0
	mov 0xFC,r3
	mov.l @(loc_8C1B9A8C,pc),r2
	extu.b r0,r0
	and 0xF0,r0
	shad r3, r0
	mov.b r0,@r2
	mov.b @(0x01,r5),r0
	mov.l @(loc_8C1B9A90,pc),r7
	extu.b r0,r0
	and 0x30,r0
	mov.w r0,@r7
	mov.w @r7,r3
	extu.w r3,r3
	shll2 r3
	add 0x40,r3
	mov.w r3,@r7
	mov.l @(loc_8C1B9A94,pc),r0
	mov.w @r7,r1
	mov.w r1,@r0
	mov 0x09,r0
	mov.b @(r0,r5),r0
	mov 0x0F,r1
	mov.l @(loc_8C1B9A98,pc),r11
	and 0x1F,r0
	mov.b r0,@r11
	mov.b @r11,r0
	mov.l @(loc_8C1B9A9C,pc),r13
	extu.b r0,r3
	cmp/ge r1,r3
	bt loc_8c1b9a60
	bra loc_8c1b9a62
	mov.b r1,@r13

loc_8c1b9a60:
	mov.b r0,@r13

loc_8c1b9a62:
	mov.l @(loc_8C1B9AA0,pc),r3
	mov.w @r3,r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c1b9aa8
	mov.l @(loc_8C1B9AA4,pc),r2
	mov 0x01,r1
	bra loc_8c1b9aac
	mov.b r1,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C1B9A74:
	#data 0x0000FF3F
loc_8C1B9A78:
	#data 0x8C352E5A
loc_8C1B9A7C:
	#data 0x8C352E50
loc_8C1B9A80:
	#data 0x8C352E61
loc_8C1B9A84:
	#data 0x8C352E5F
loc_8C1B9A88:
	#data 0x8C352E63
loc_8C1B9A8C:
	#data 0x8C352DFE
loc_8C1B9A90:
	#data 0x8C352E26
loc_8C1B9A94:
	#data 0x8C352E2A
loc_8C1B9A98:
	#data 0x8C352E2E
loc_8C1B9A9C:
	#data 0x8C352E2F
loc_8C1B9AA0:
	#data 0x8C34B2C8
loc_8C1B9AA4:
	#data 0x8C352E16

;==============================================
loc_8c1b9aa8:
	mov.l @(loc_8C1B9BA0,pc),r2
	mov.b r4,@r2

loc_8c1b9aac:
	mov.l @(loc_8C1B9BA4,pc),r1
	mov.l @(loc_8C1B9BA8,pc),r0
	mov.w @r1,r3
	mov.w r3,@r0
	mov.l @(loc_8C1B9BAC,pc),r3
	mov.w @r6,r2
	mov.w r2,@r3
	mov.l @(loc_8C1B9BB0,pc),r2
	mov.l @(loc_8C1B9BB4,pc),r0
	mov.w @r2,r1
	mov.w r1,@r0
	mov.l @(loc_8C1B9BB8,pc),r1
	mov.b @r8,r3
	mov.b r3,@r1
	mov.l @(loc_8C1B9BBC,pc),r3
	mov.l @(loc_8C1B9BC0,pc),r0
	mov.b @r3,r2
	mov.b r2,@r0
	mov.l @(loc_8C1B9BC4,pc),r2
	mov.b @r14,r1
	mov.b r1,@r2
	mov.l @(loc_8C1B9BC8,pc),r1
	mov.l @(loc_8C1B9BCC,pc),r0
	mov.w @r1,r3
	mov.w r3,@r0
	mov.l @(loc_8C1B9BD0,pc),r3
	mov.w @r7,r2
	mov.w r2,@r3
	mov.l @(loc_8C1B9BD4,pc),r2
	mov.b @r11,r1
	mov.b r1,@r2
	mov.b @r13,r0
	mov.l @(loc_8C1B9BD8,pc),r1
	mov.b r0,@r1
	mov.l @(loc_8C1B9BDC,pc),r3
	mov.w r4,@r3
	mov.l @(loc_8C1B9BE0,pc),r7
	mov.l @(loc_8C1B9BE4,pc),r2
	mov.l r7,@r2
	mov.l @(loc_8C1B9BE8,pc),r1
	mov.l r7,@r1
	mov.w @(loc_8C1B9B98,pc),r3
	mov.l @(loc_8C1B9BEC,pc),r2
	add r7,r3
	mov.l r3,@r2
	mov.l @(loc_8C1B9BF0,pc),r1
	mov.l r7,@r1
	mov.l @(loc_8C1B9BF4,pc),r3
	mov.w r4,@r3
	mov.w @(loc_8C1B9B9A,pc),r2
	mov.l @(loc_8C1B9BF8,pc),r0
	mov.w r2,@r0
	mov.l @(loc_8C1B9BFC,pc),r1
	mov.w r4,@r1
	mov.l @(loc_8C1B9C04,pc),r3
	mov.l @(loc_8C1B9C00,pc),r7
	mov r3,r2
	mov.l r3,@r7
	mov.l @(loc_8C1B9C08,pc),r0
	mov.l r3,@r0
	mov.l @r7,r3
	mov.l @(loc_8C1B9C0C,pc),r2
	mov.l r3,@r2
	mov.w @(loc_8C1B9B98,pc),r3
	mov.l @r7,r1
	mov.l @(loc_8C1B9C10,pc),r0
	add r3,r1
	mov.l r1,@r0
	mov.l @r7,r3
	mov.l @(loc_8C1B9C14,pc),r2
	mov.l r3,@r2
	mov.l @(loc_8C1B9C18,pc),r1
	mov.w r4,@r1
	mov.l @r7,r3
	mov.l @(loc_8C1B9C1C,pc),r0
	mov.l r3,@r0
	mov.l @(loc_8C1B9C24,pc),r3
	mov.l @(loc_8C1B9C20,pc),r7
	mov.l r7,@r3
	mov.w @(loc_8C1B9B9C,pc),r2
	mov.l @(loc_8C1B9C28,pc),r1
	add r2,r7
	mov.l r7,@r1
	mov r3,r0
	nop
	add 0x04,r15
	mov.l @r0,r3
	mov.w r4,@r3
	mov.l @(loc_8C1B9C30,pc),r2
	mov.l @(loc_8C1B9C2C,pc),r3
	mov.l r3,@r2
	mov.l @(loc_8C1B9C34,pc),r1
	mov.b r4,@r1
	mov.l @(loc_8C1B9C38,pc),r3
	mov.b r4,@r3
	mov.l @(loc_8C1B9C3C,pc),r2
	mov.b r4,@r2
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c1B9B7C:
	sts.l pr,@-r15
	mov.l @(loc_8c1B9C40,pc),r3 ; r3 set to 0x8C34B2A5
	mov.b @r3,r0
	mov.l @(loc_8c1B9C44,pc),r2 ; r2 set to 0x8C1B6048
	or 0x40,r0
	jsr @r2
	mov.b r0,@r3 ; r3 ??? bc r0 is ???
	mov.l @(loc_8c1B9C48,pc),r3 ; r3 set to 0x8C1B6118
	jsr @r3
	nop
	mov.l @(loc_8c1B9C4C,pc),r2 ; r2 set to 0x8C1B4156
	mov 0x08,r4 ; r4 set to 0x08
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1b9b98:
	#data 0x0FFF
loc_8c1b9b9a:
	#data 0x1000
loc_8c1b9b9c:
	#data 0x0100
	#align4

loc_8c1b9ba0:
	#data 0x8C352E16
loc_8c1b9ba4:
	#data 0x8C352E52
loc_8c1b9ba8:
	#data 0x8C352E54
loc_8c1b9bac:
	#data 0x8C352E58
loc_8c1b9bb0:
	#data 0x8C352E5A
loc_8c1b9bb4:
	#data 0x8C352E5C
loc_8c1b9bb8:
	#data 0x8C352E60
loc_8c1b9bbc:
	#data 0x8C352E5F
loc_8c1b9bc0:
	#data 0x8C352E5E
loc_8c1b9bc4:
	#data 0x8C352E62
loc_8c1b9bc8:
	#data 0x8C352E2A
loc_8c1b9bcc:
	#data 0x8C352E2C
loc_8c1b9bd0:
	#data 0x8C352E28
loc_8c1b9bd4:
	#data 0x8C352E30
loc_8c1b9bd8:
	#data 0x8C352E31
loc_8c1b9bdc:
	#data 0x8C35279C
loc_8c1b9be0:
	#data 0x8C35178A
loc_8c1b9be4:
	#data 0x8C352790
loc_8c1b9be8:
	#data 0x8C352794
loc_8c1b9bec:
	#data 0x8C35278C
loc_8c1b9bf0:
	#data 0x8C352798
loc_8c1b9bf4:
	#data 0x8C35279E
loc_8c1b9bf8:
	#data 0x8C351786
loc_8c1b9bfc:
	#data 0x8C351784
loc_8c1b9c00:
	#data 0x8C351770
loc_8c1b9c04:
	#data 0x8C350770
loc_8c1b9c08:
	#data 0x8C351778
loc_8c1b9c0c:
	#data 0x8C35177C
loc_8c1b9c10:
	#data 0x8C351774
loc_8c1b9c14:
	#data 0x8C351780
loc_8c1b9c18:
	#data 0x8C351788
loc_8c1b9c1c:
	#data 0x8C352BC4
loc_8c1b9c20:
	#data 0x8C352BD4
loc_8c1b9c24:
	#data 0x8C352DD4
loc_8c1b9c28:
	#data 0x8C352DD8
loc_8c1b9c2c:
	#data 0x8C352BAB
loc_8c1b9c30:
	#data 0x8C352BAC
loc_8c1b9c34:
	#data 0x8C352E8C
loc_8c1b9c38:
	#data 0x8C352E8B
loc_8c1b9c3c:
	#data 0x8C352E8A
loc_8c1B9C40:
	#data 0x8C34B2A5
loc_8c1B9C44:
	#data loc_8c1B6048
loc_8c1B9C48:
	#data loc_8c1B6118
loc_8c1B9C4C:
	#data loc_8c1B4156

;==============================================
loc_8c1B9C50:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r4,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0x54,PC),r9
	mov.l @(0x54,PC),r10
	add 0xFC,r15
	bra loc_8c1b9c9e
	mov 0x00,r12

loc_8c1B9C6C:
	mov r12,r14
	jsr @r10
	mov r15,r4
	mov r0,r4
	extu.w r4,r2
	tst r2,r2
	bt loc_8c1b9ca4
	bra loc_8c1b9c8c
	nop

loc_8c1B9C7E:
	mov.l @r15,r2
	add 0xFF,r13
	add 0x01,r14
	add 0x01,r2
	mov.l r2,@r15
	mov.b @r11+,r3
	mov.b r3,@-r2

loc_8c1B9C8C:
	extu.w r13,r2
	tst r2,r2
	bt loc_8c1b9c9a
	extu.w r4,r2
	extu.w r14,r3
	cmp/ge r2,r3
	bf loc_8c1b9c7e

loc_8c1B9C9A:
	jsr @r9
	mov r14,r4

loc_8c1B9C9E:
	extu.w r13,r3
	tst r3,r3
	bf loc_8c1b9c6c

loc_8c1B9CA4:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B9CB8:
	#data bank1a.loc_8c1a0D92
loc_8c1B9CBC:
	#data bank1a.loc_8c1a0D48

;==============================================
loc_8c1B9CC0:
	mov.l @(loc_8c1B9DA4,pc),r3 ; r3 set to 0x8C34B2CA
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c1B9CD6
	mov.l @(loc_8c1B9DA8,pc),r1 ; r1 set to 0x8C1B3F3A
	jsr @r1
	nop
	bra loc_8c1B9CEE
	nop

loc_8c1B9CD6:
	mov.l @(loc_8c1B9DAC,pc),r0 ; r0 set to 0x8C34B2A3
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1B9CF4
	mov.l @(loc_8c1B9DB4,pc),r2 ; r2 set to 0x8C1B3EEC
	mov.l @(loc_8c1B9DB0,pc),r4 ; r4 set to 0x8C34B2DC
	jsr @r2
	mov 0x64,r5 ; r5 set to 0x64
	mov.l @(loc_8c1B9DB8,pc),r2 ; r2 set to 0x8C34B2C6
	mov 0x06,r3 ; r3 set to 0x06
	mov.b r3,@r2 ; r2 ??

loc_8c1B9CEE:
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c1B9CF4:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1B9CFC:
	sts.l pr,@-r15
	mov.l @(loc_8c1B9DBC,pc),r3 ; r3 set to 0x8C1A0500
	add 0xF4,r15
	mov r15,r4
	mov r15,r5
	jsr @r3
	add 0x08,r4
	mov.w @r15,r2
	tst r2,r2
	bt loc_8c1B9D4E
	mov.l @(loc_8c1B9DC0,pc),r3 ; r3 set to 0x8C1B6626
	mov r15,r4
	jsr @r3
	add 0x04,r4
	mov.w @r15,r2
	extu.w r0,r0
	extu.w r2,r2
	cmp/ge r2,r0
	bf loc_8c1B9D4E
	bra loc_8c1B9D38
	mov.w @r15,r4

loc_8c1B9D26:
	mov.l @(0x4,r15),r2
	add 0x01,r2
	mov.l r2,@(0x4,r15)
	mov.l @(0x8,r15),r3
	add 0x01,r3
	mov.l r3,@(0x8,r15)
	add 0xFF,r3
	mov.b @r3,r1
	mov.b r1,@-r2

loc_8c1b9d38:
	extu.w r4,r3
	tst r3,r3
	bf/s loc_8c1b9d26
	add 0xFF,r4
	mov.l @(loc_8c1b9dc4,pc),r3
	mov 0x01,r5
	jsr @r3
	mov.w @r15,r4
	mov.l @(loc_8c1b9dc8,pc),r2
	jsr @r2
	nop

loc_8c1B9D4E:
	mov.l @(loc_8c1B9DCC,pc),r3 ; r3 set to 0x8C1B624C
	mov r15,r4
	mov r15,r5
	jsr @r3
	add 0x08,r4
	mov.w @r15,r2
	tst r2,r2
	bt loc_8c1B9D9A
	mov.l @(loc_8c1B9DD0,pc),r3 ; r3 set to 0x8C1A0D48
	mov r15,r4
	jsr @r3
	add 0x04,r4
	mov.w @r15,r2
	extu.w r0,r0
	extu.w r2,r2
	cmp/ge r2,r0
	bf loc_8c1B9D9A
	bra loc_8c1B9D86
	mov.w @r15,r4

loc_8c1B9D74:
	mov.l @(0x4,r15),r2
	add 0x01,r2
	mov.l r2,@(0x4,r15)
	mov.l @(0x8,r15),r3
	add 0x01,r3
	mov.l r3,@(0x8,r15)
	add 0xFF,r3
	mov.b @r3,r1
	mov.b r1,@-r2

loc_8c1b9d86:
	extu.w r4,r3
	tst r3,r3
	bf/s loc_8c1b9d74
	add 0xFF,r4
	mov.l @(loc_8c1b9dd4,pc),r3
	jsr @r3
	mov.w @r15,r4
	mov.l @(loc_8c1b9dd8,pc),r2
	jsr @r2
	nop

loc_8c1B9D9A:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align4

loc_8c1B9DA4:
	#data 0x8C34B2CA
loc_8c1B9DA8:
	#data loc_8c1B3F3A
loc_8c1B9DAC:
	#data 0x8C34B2A3
loc_8c1B9DB0:
	#data 0x8C34B2DC
loc_8c1B9DB4:
	#data loc_8c1B3EEC
loc_8c1B9DB8:
	#data 0x8C34B2C6
loc_8c1B9DBC:
	#data bank1a.loc_8c1a0500
loc_8c1B9DC0:
	#data loc_8c1B6626
loc_8c1B9DC4:
	#data loc_8c1B6750
loc_8c1B9DC8:
	#data bank1a.loc_8c1a0648
loc_8c1B9DCC:
	#data loc_8c1B624C
loc_8c1B9DD0:
	#data bank1a.loc_8c1a0D48
loc_8c1B9DD4:
	#data bank1a.loc_8c1a0D92
loc_8c1B9DD8:
	#data loc_8c1B6424

;==============================================
loc_8c1B9DDC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12 ; r12 set to 0x01
	mov.l @(loc_8c1B9F8C,pc),r4 ; r4 set to 0x8C352E4F
	sts.l pr,@-r15
	mov.b @r4,r3
	mov.l @(loc_8c1B9F88,pc),r14 ; r14 set to 0x8C34CF68
	tst r3,r3
	bt/s loc_8c1B9EA4
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(loc_8c1B9F90,pc),r2 ; r2 set to 0x8C352E50
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1B9E0E
	mov.l @(loc_8c1B9F94,pc),r3 ; r3 set to 0x8C1BCD66
	jsr @r3
	nop
	mov.l @(loc_8c1B9F98,pc),r0 ; r0 set to 0x8C34B2A1
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1B9E32
	bra loc_8c1B9E38
	nop

loc_8c1B9E0E:
	mov.l @(loc_8c1B9F9C,pc),r1 ; r1 set to 0x8C352E52
	mov 0x02,r3 ; r3 set to 0x02
	mov.w @r1,r4
	extu.w r4,r4
	tst r4,r3
	bf loc_8c1B9E24
	mov.l @(loc_8c1B9F94,pc),r3 ; r3 set to 0x8C1BCD66
	jsr @r3
	nop
	bra loc_8c1B9E38
	nop

loc_8c1b9e24:
	tst r12,r4
	bf loc_8c1b9e38
	mov.l @(loc_8c1b9f98,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1b9e38

loc_8c1b9e32:
	mov.l @(loc_8c1b9fa0,pc),r2
	jsr @r2
	nop

loc_8c1b9e38:
	mov.b @r14,r0
	cmp/eq 0x01,r0
	bf loc_8c1b9e66
	mov.l @(loc_8c1b9fa4,pc),r2
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b9ec6
	mov.l @(loc_8c1b9fac,pc),r3
	mov.l @(loc_8c1b9fa8,pc),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b9ec6
	mov.b r13,@r14
	mov.l @(loc_8c1b9fb0,pc),r3
	jsr @r3
	mov 0x09,r4
	mov.l @(loc_8c1b9fb4,pc),r2
	jsr @r2
	nop

loc_8c1b9e66:
	bsr loc_8c1b9ed0
	nop
	mov.b @r14,r3
	tst r3,r3
	bf loc_8c1b9ec6
	bsr loc_8c1ba086
	nop
	mov.l @(loc_8c1b9fb4,pc),r2
	jsr @r2
	nop
	bsr loc_8c1ba148
	nop
	mov.l @(loc_8c1b9fb4,pc),r2
	jsr @r2
	nop
	bsr loc_8c1ba2c0
	nop
	mov.l @(loc_8c1b9fb4,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8c1b9fb8,pc),r1
	jsr @r1
	nop
	mov.l @(loc_8c1b9fb4,pc),r2
	jsr @r2
	nop
	bsr loc_8c1b9f50
	nop
	mov.l @(loc_8C1B9FBC,pc),r2
	bra loc_8c1b9eba
	mov.b r12,@r2

loc_8c1B9EA4:
	mov.b r13,@r14
	mov.l @(loc_8c1B9FA8,pc),r3 ; r3 set to 0x8C34CF6C
	mov.l r13,@r3 ; r3 ??? bc r13 is ???
	mov.b r12,@r4
	mov.l @(loc_8c1B9FC0,pc),r2 ; r2 set to 0x8C352E16
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1B9EC6
	bsr loc_8c1BA688
	nop

loc_8c1B9EBA:
	lds.l @r15+,pr
	mov.l @(loc_8c1B9FB4,pc),r3 ; r3 set to 0x8C1BBA74
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1B9EC6:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1B9ED0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1B9FC4,pc),r14 ; r14 set to 0x8C1B624C

loc_8c1B9EE0:
	mov.l @(loc_8c1B9FCC,pc),r4 ; r4 set to 0x8C352E68, r4 set to 0x8C352E68
	mov.l @(loc_8c1B9FC8,pc),r5 ; r5 set to 0x8C352E6C, r5 set to 0x8C352E6C
	jsr @r14
	nop
	extu.b r0,r0
	tst r0,r0
	bf loc_8c1B9EE0
	mov.l @(loc_8c1B9FC8,pc),r12 ; r12 set to 0x8C352E6C, r12 set to 0x8C352E6C
	mov.l @(loc_8c1B9F88,pc),r13 ; r13 set to 0x8C34CF68, r13 set to 0x8C34CF68
	mov.l @(loc_8c1B9FD0,pc),r9 ; r9 set to 0x8C1B6424, r9 set to 0x8C1B6424
	mov.l @(loc_8c1B9FD4,pc),r10 ; r10 set to 0x8C352DEA, r10 set to 0x8C352DEA
	bra loc_8c1B9F32
	mov 0x00,r11

loc_8c1B9EFA:
	bsr loc_8c1ba7c6
	nop
	bsr loc_8c1ba220
	mov.b r0,@r10
	mov.l @(0xB0,PC),r2
	jsr @r2
	nop
	bsr loc_8c1ba744
	nop
	mov.b @r13,r2
	tst r2,r2
	bf loc_8c1b9f18
	mov.l @(0xA0,PC),r1
	jsr @r1
	nop

loc_8c1B9F18:
	jsr @r9
	nop
	mov.w r11,@r12
	mov.b @r13,r3
	tst r3,r3
	bf loc_8c1b9f32

loc_8c1B9F24:
	mov.l @(0xA4,PC),r4
	mov.l @(0xA0,PC),r5
	jsr @r14
	nop
	extu.b r0,r0
	tst r0,r0
	bf loc_8c1b9f24

loc_8c1b9f32:
	mov.w @r12,r2
	tst r2,r2
	bt loc_8c1b9f40
	mov.l @(loc_8C1B9FD8,pc),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1b9efa

loc_8c1b9f40:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1b9f50:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x00,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x80,PC),r13
	mov.l @(0x80,PC),r14
	mov.l @(0x74,PC),r9
	mov.l @(0x74,PC),r10
	bra loc_8c1ba024
	mov 0x1C,r12

loc_8c1b9f6e:
	mov.b @r14,r0
	add 0x01,r0
	mov.b r0,@r14
	add 0xFF,r0
	mov.b @r14,r3
	extu.b r0,r0
	extu.b r3,r3
	cmp/ge r12,r3
	bf.s loc_8c1b9f84
	mov.b @(r0,r9),r4
	mov.b r11,@r14

loc_8c1b9f84:
	bra loc_8c1ba00a
	mov r4,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1b9f88:
	#data 0x8C34CF68
loc_8c1b9f8c:
	#data 0x8C352E4F
loc_8c1b9f90:
	#data 0x8C352E50
loc_8c1b9f94:
	#data loc_8c1bCD66
loc_8c1b9f98:
	#data 0x8C34B2A1
loc_8c1b9f9c:
	#data 0x8C352E52
loc_8c1b9fa0:
	#data loc_8c1bCE9E
loc_8c1b9fa4:
	#data loc_8c1b6720
loc_8c1b9fa8:
	#data 0x8C34CF6C
loc_8c1b9fac:
	#data loc_8c1b3F0C
loc_8c1b9fb0:
	#data loc_8c1b4156
loc_8c1b9fb4:
	#data loc_8c1bBA74
loc_8c1b9fb8:
	#data loc_8c1bCCB8
loc_8c1b9fbc:
	#data 0x8C352E00
loc_8c1b9fc0:
	#data 0x8C352E16
loc_8c1b9fc4:
	#data loc_8c1b624C
loc_8c1b9fc8:
	#data 0x8C352E6C
loc_8c1b9fcc:
	#data 0x8C352E68
loc_8c1b9fd0:
	#data loc_8c1b6424
loc_8c1b9fd4:
	#data 0x8C352DEA
loc_8C1B9FD8:
	#data 0x8C352E1C
loc_8C1B9FDc:
	#data 0x8C352E6E
loc_8c1b9fe0:
	#data 0x8C352BCC
loc_8c1b9fe4:
	#data 0x8C352E8C
loc_8c1b9fe8:
	#data 0x8C352E8A

;==============================================
loc_8c1b9fec:
	mov.l @r10,r2
	add 0x01,r2
	mov.l r2,@r10
	mov.b @r14,r0
	add 0x01,r0
	mov.b r0,@r14
	add 0xFF,r0
	extu.b r0,r0
	mov.b @(r0,r9),r3
	mov.b r3,@-r2
	mov.b @r14,r2
	extu.b r2,r2
	cmp/ge r12,r2
	bf loc_8c1ba00a
	mov.b r11,@r14

loc_8c1ba00a:
	extu.b r4,r2
	tst r2,r2
	bf.s loc_8c1b9fec
	add 0xFF,r4
	mov.b @r13,r3
	mov r8,r1
	add 0x01,r1
	sub r1,r3
	mov 0x01,r5
	mov.b r3,@r13
	mov.l @(0xAC,PC),r2
	jsr @r2
	extu.b r8,r4

loc_8c1ba024:
	mov.b @r13,r3
	tst r3,r3
	bt loc_8c1ba038
	mov.l @(0xA8,PC),r3
	mov.l @(0xA0,PC),r4
	jsr @r3
	nop
	extu.w r0,r0
	tst r0,r0
	bf loc_8c1b9f6e

loc_8c1ba038:
	mov.b @r13,r3
	mov.l @(0x9C,PC),r12
	tst r3,r3
	bt.s loc_8c1ba044
	mov 0x01,r14
	mov.b r14,@r12

loc_8c1ba044:
	mov.l @(0x94,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1ba04e
	mov.b r14,@r12

loc_8c1ba04e:
	mov.l @(0x90,PC),r3
	jsr @r3
	nop
	mov.l @(0x8C,PC),r3
	mov r0,r5
	mov.w @(0x6C,PC),r1
	mov.w @r3,r2
	extu.w r2,r2
	cmp/ge r1,r2
	bt.s loc_8c1ba06e
	extu.b r5,r4
	mov 0x04,r0
	cmp/ge r0,r4
	bt loc_8c1ba072
	bra loc_8c1ba074
	nop

loc_8c1ba06e:
	cmp/ge r14,r4
	bf loc_8c1ba074

loc_8c1ba072:
	mov.b r14,@r12

loc_8c1ba074:
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
loc_8c1ba086:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x54,PC),r13
	mov.b r14,@r13
	mov.l @(0x40,PC),r3
	mov.b r14,@r3
	mov.l @(0x50,PC),r6
	mov.b @r6,r2
	tst r2,r2
	bt loc_8c1ba13e
	mov.l @(0x4C,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c1ba13e
	mov.l @(0x48,PC),r1
	mov.l @(0x38,PC),r3
	mov.w @r1,r2
	mov.w @(0x18,PC),r5
	mov.w @r3,r4
	tst r2,r2
	bt.s loc_8c1ba0fc
	extu.w r4,r4
	cmp/ge r5,r4
	bt loc_8c1ba13e
	lds.l @r15+,pr
	mov.l @(0x38,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ba0c8:
	#data 0x0180
loc_8c1ba0ca:
	#data 0x0800
	#align4

loc_8c1ba0cc:
#data loc_8c1b6750
loc_8c1ba0d0:
	#data 0x8C352BCC
loc_8c1ba0d4:
#data loc_8c1b6626
loc_8c1ba0d8:
	#data 0x8C352E17
loc_8c1ba0dc:
	#data 0x8C352E0E
loc_8c1ba0e0:
	#data loc_8c1b6240
loc_8c1ba0e4:
	#data 0x8C35279C
loc_8c1ba0e8:
	#data 0x8C352E00
loc_8c1ba0ec:
	#data 0x8C352E14
loc_8c1ba0f0:
	#data 0x8C352BBD
loc_8c1ba0f4:
	#data 0x8C352BB8
loc_8c1ba0f8:
	#data loc_8c1bC780

;==============================================
loc_8c1ba0fc:
	cmp/ge r5,r4
	bt loc_8c1ba13e
	mov.b r14,@r6
	mov.l @(0xD4,PC),r2
	mov.b @r2,r0
	tst r0,r0
	bt.s loc_8c1ba114
	mov 0x01,r12
	mov.l @(0xCC,PC),r0
	mov.b @r0,r3
	tst r3,r3
	bt loc_8c1ba11e

loc_8c1ba114:
	mov 0x02,r3
	mov.b r3,@r13
	mov.l @(0xC4,PC),r2
	bra loc_8c1ba132
	mov.b r12,@r2

loc_8c1ba11e:
	mov.l @(0xC4,PC),r3
	jsr @r3
	nop
	mov.l @(0xB4,PC),r1
	mov 0x09,r2
	mov 0x04,r3
	mov.b r12,@r1
	mov.b r3,@r13
	mov.l @(0xB0,PC),r0
	mov.b r2,@r0

loc_8c1ba132:
	mov.l @(0xB4,PC),r3
	mov.b r12,@r3
	mov.l @(0xB4,PC),r2
	mov.b r14,@r2
	mov.l @(0x9C,PC),r1
	mov.b r14,@r1

loc_8c1ba13e:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1ba148:
	mov.l r14,@-r15
	mov 0x00,r4
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r5
	mov.b r4,@r5
	mov.l @(0xA0,PC),r6
	mov.b @r6,r3
	tst r3,r3
	bf loc_8c1ba1ce
	mov.l @(0x9C,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1ba1ce
	mov.l @(0x94,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x06,r0
	cmp/eq 0x04,r0
	bf loc_8c1ba178
	mov.l @(0x8C,PC),r3
	mov.w @r3,r2
	tst r2,r2
	bf loc_8c1ba1ce

loc_8c1ba178:
	mov 0x03,r1
	mov 0x01,r14
	mov 0x08,r2
	mov.b r14,@r6
	mov.l @(0x80,PC),r3
	mov.b r2,@r3
	mov.l @(0x58,PC),r0
	mov.b r1,@r0
	mov.l @(0x5C,PC),r2
	mov.b r14,@r2
	mov.l @(0x5C,PC),r3
	mov.b r4,@r3
	mov.l @(0x74,PC),r0
	mov.l @(0x78,PC),r2
	mov.b @r0,r1
	mov.b r1,@r2
	mov.l @(0x74,PC),r6
	mov.b @(0x1,r6),r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c1ba1a6
	mov 0x40,r1
	mov.b r1,@r5

loc_8c1ba1a6:
	mov.b @(0x1,r6),r0
	extu.b r0,r0
	tst 0x06,r0
	bf loc_8c1ba1b2
	mov.w @(0x22,PC),r2
	mov.b r2,@r5

loc_8c1ba1b2:
	mov.b @(0xB,r6),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1ba1c6
	mov.l @(0x58,PC),r2
	jsr @r2
	nop
	mov.l @(0x54,PC),r3
	bra loc_8c1ba1ca
	mov.b r0,@r3

loc_8c1ba1c6:
	mov.l @(0x50,PC),r1
	mov.b r4,@r1

loc_8c1ba1ca:
	mov.l @(0x50,PC),r3
	mov.b r14,@r3

loc_8c1ba1ce:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1ba1d4:
	#data 0x00C0
	#align4

loc_8c1ba1d8:
	#data 0x8C352E18
loc_8c1ba1dc:
	#data 0x8C352E12
loc_8c1ba1e0:
	#data 0x8C352E01
loc_8c1ba1e4:
	#data loc_8c1bCB80
loc_8c1ba1e8:
	#data 0x8C352E05
loc_8c1ba1ec:
	#data 0x8C352E04
loc_8c1ba1f0:
	#data 0x8C352E0C
loc_8c1ba1f4:
	#data 0x8C352E0F
loc_8c1ba1f8:
	#data 0x8C34B2A1
loc_8c1ba1fc:
	#data 0x8C34B2AA
loc_8c1ba200:
	#data 0x8C351784
loc_8c1ba204:
	#data 0x8C352E00
loc_8c1ba208:
	#data 0x8C352DE7
loc_8c1ba20c:
	#data 0x8C352DE8
loc_8c1ba210:
	#data 0x8C34B2A9
loc_8c1ba214:
	#data loc_8c1b3D76
loc_8c1ba218:
	#data 0x8C352E0B
loc_8c1ba21c:
	#data 0x8C352DE9

;==============================================
loc_8c1ba220:
	mov.l @(0xC8,PC),r7
	sts.l pr,@-r15
	mov.b @r7,r4
	extu.b r4,r4
	cmp/pl r4
	add 0xF8,r15
	bf loc_8c1ba2b8
	mov 0x0E,r2
	cmp/ge r2,r4
	bt loc_8c1ba2b8
	mov.l @(0xB8,PC),r3
	mov 0x00,r1
	mov.b r1,@r3
	mov 0x06,r1
	mov.b @r7,r2
	extu.b r2,r2
	cmp/ge r1,r2
	bt loc_8c1ba2b8
	mov.l @(0xAC,PC),r0
	mov.b @r0,r5
	mov r5,r0
	nop
	extu.b r5,r2
	mov.b r0,@(0x4,r15)
	mov.l @(0xA4,PC),r3
	mov.b @r3,r6
	extu.b r6,r6
	cmp/ge r6,r2
	bt loc_8c1ba25e
	mov.w @(0x8A,PC),r2
	add r2,r5

loc_8c1ba25e:
	mov.l @(0x9C,PC),r3
	mov.b @r3,r4
	extu.b r4,r2
	cmp/ge r6,r2
	bf loc_8c1ba26c
	bra loc_8c1ba270
	mov r4,r1

loc_8c1ba26c:
	mov.w @(0x78,PC),r1
	add r4,r1

loc_8c1ba270:
	extu.b r5,r5
	extu.b r1,r1
	cmp/gt r5,r1
	bt.s loc_8c1ba29c
	mov.l r1,@r15
	mov.l @r15,r2
	cmp/ge r6,r2
	bf loc_8c1ba29c
	mov.b @r7,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c1ba28e
	mov.l @(0x6C,PC),r2
	bra loc_8c1ba2b8
	mov.b r4,@r2

loc_8c1ba28e:
	mov.b @(0x4,r15),r0
	extu.b r4,r4
	extu.b r0,r0
	cmp/eq r0,r4
	bt loc_8c1ba2a4
	bra loc_8c1ba2b8
	nop

loc_8c1ba29c:
	mov.l @(0x60,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1ba2b8

loc_8c1ba2a4:
	bsr loc_8c1ba614
	nop
	mov.l @(0x58,PC),r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @(0x54,PC),r2
	add 0x08,r15
	jmp @r2
	lds.l @r15+,pr

loc_8c1ba2b8:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1ba2c0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x48,PC),r12
	mov.l @(0x40,PC),r11
	mov.l @(0x48,PC),r7
	add 0xFC,r15
	mov.l @(0x48,PC),r5
	mov.l @(0x2C,PC),r8
	mov.l @(0x48,PC),r4
	mov.l @(0x30,PC),r10
	mov.l @(0x2C,PC),r9
	bra loc_8c1ba3a0
	mov 0x01,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ba2e8:
	#data 0x0080
	#align4

loc_8c1ba2ec:
	#data 0x8C352DEA
loc_8c1ba2f0:
	#data 0x8C352DFD
loc_8c1ba2f4:
	#data 0x8C352DE2
loc_8c1ba2f8:
	#data 0x8C352DE1
loc_8c1ba2fc:
	#data 0x8C352DE0
loc_8c1ba300:
	#data 0x8C352E61
loc_8c1ba304:
	#data 0x8C34B29F
loc_8c1ba308:
	#data bank1c.loc_8c1c1658
loc_8c1ba30c:
	#data 0x8C352E00
loc_8c1ba310:
	#data 0x8C352E01
loc_8c1ba314:
	#data 0x8C352DF0
loc_8c1ba318:
	#data 0x8C34B2CC
loc_8c1ba31c:
	#data 0x8C352E11
loc_8c1ba320:
	#data 0x8C352BC8
loc_8c1ba324:
	#data 0x8C352DE4
loc_8c1ba328:
	#data 0x8C351778

;==============================================
loc_8c1ba32c:
	mov.b @r5,r6
	extu.b r6,r6
	shll r6
	mov.l r6,@r15
	mov.l @(0xE4,PC),r2
	mov.w @r7,r0
	mov.l @r2,r3
	add r3,r6
	mov.w @r6,r1
	sub r1,r0
	mov.w r0,@r7
	mov.l @(0xDC,PC),r3
	mov.w @r6,r1
	mov.w @r3,r0
	sub r1,r0
	mov.w r0,@r3
	mov.l @(0xD4,PC),r3
	mov.w @r6,r1
	mov.w @r3,r2
	sub r1,r2
	mov.w r2,@r3
	mov.l @(0xD0,PC),r1
	mov.l @r15,r0
	mov.l @r1,r3
	mov.l @(0xCC,PC),r1
	mov.w @(r0,r3),r3
	mov.l @r1,r2
	extu.w r3,r3
	add r2,r3
	mov.l r3,@r4
	mov.w @r6,r2
	extu.w r2,r2
	add r2,r3
	mov r3,r1
	mov.l r3,@r4
	mov.l @(0xBC,PC),r0
	mov.l @r0,r2
	cmp/hi r2,r1
	bf loc_8c1ba38c
	mov.l @r4,r3
	add 0xFF,r3
	mov.l r3,@r4
	mov.l @r0,r2
	sub r2,r3
	mov.l @(0xA4,PC),r2
	mov.l @r2,r1
	add r1,r3
	mov.l r3,@r4

loc_8c1ba38c:
	mov.l @(0x8C,PC),r3
	mov.b @r5,r1
	mov.l @r3,r0
	extu.b r1,r1
	shll r1
	mov.w r13,@(r0,r1)
	mov.b @r5,r0
	add 0x01,r0
	and 0x7F,r0
	mov.b r0,@r5

loc_8c1ba3a0:
	mov.l @(0x90,PC),r1
	mov.b @r5,r3
	mov.b @r1,r2
	cmp/eq r2,r3
	bf loc_8c1ba32c
	mov.l @(0x8C,PC),r5
	mov.b r13,@r5
	mov.l @(0x8C,PC),r2
	mov.l @(0x80,PC),r0
	mov.b @r2,r4
	mov.b @r0,r1
	extu.b r4,r3
	extu.b r1,r1
	cmp/ge r1,r3
	bt loc_8c1ba3c2
	mov.w @(0x58,PC),r1
	add r1,r4

loc_8c1ba3c2:
	mov.l @(0x70,PC),r2
	extu.b r4,r4
	mov.l @(0x78,PC),r1
	mov.b @r2,r3
	extu.b r3,r3
	sub r3,r4
	mov.b @r1,r3
	extu.b r3,r3
	cmp/ge r3,r4
	bt loc_8c1ba3d8
	mov.b r14,@r5

loc_8c1ba3d8:
	mov.l @(0x74,PC),r3
	mov.l @(0x68,PC),r6
	mov.l @r3,r2
	mov.l @(0x6C,PC),r4
	mov.l @r11,r5
	mov.l @(0x64,PC),r7
	mov.l r2,@r15
	mov.b @r6,r1
	tst r1,r1
	bf loc_8c1ba3fc
	mov.l @(0x64,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bf loc_8c1ba3fc
	mov.l @(0x60,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bt loc_8c1ba4de

loc_8c1ba3fc:
	mov.l @r10,r3
	mov r5,r1
	mov.l @r15,r2
	sub r3,r1
	cmp/hi r2,r1
	bt loc_8c1ba40c
	bra loc_8c1ba600
	nop

loc_8c1ba40c:
	mov.l r5,@r10
	mov.b @r12,r2
	tst r2,r2
	bf loc_8c1ba45c
	mov.b r14,@r12
	bra loc_8c1ba46a
	mov.b r13,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ba41a:
	#data 0x0080
	#align4

loc_8c1ba41c:
	#data 0x8C352DD8
loc_8c1ba420:
	#data 0x8C351784
loc_8c1ba424:
	#data 0x8C351788
loc_8c1ba428:
	#data 0x8C352DD4
loc_8c1ba42c:
	#data 0x8C351770
loc_8c1ba430:
	#data 0x8C351774
loc_8c1ba434:
	#data 0x8C352DE1
loc_8c1ba438:
	#data 0x8C352E4E
loc_8c1ba43c:
	#data 0x8C352DE2
loc_8c1ba440:
	#data 0x8C352E32
loc_8c1ba444:
	#data 0x8C352E19
loc_8c1ba448:
	#data 0x8C352DFE
loc_8c1ba44c:
	#data 0x8C352DFF
loc_8c1ba450:
	#data 0x8C352DEC
loc_8c1ba454:
	#data 0x8C352E1B
loc_8c1ba458:
	#data 0x8C352E1E

;==============================================
loc_8c1ba45c:
	mov.b @r4,r2
	add 0x01,r2
	mov.b r2,@r4
	mov.l @(0xDC,PC),r3
	mov.w @r3,r1
	add 0x01,r1
	mov.w r1,@r3

loc_8c1ba46a:
	mov.b @r7,r3
	tst r3,r3
	bt loc_8c1ba492
	mov.l @(0xD0,PC),r2
	mov.b @r7,r1
	mov.b @r2,r3
	cmp/hs r1,r3
	bf loc_8c1ba492
	mov.l @(0xCC,PC),r3
	mov.b @r3,r0
	or 0x02,r0
	mov.b r0,@r3
	mov.l @(0xC8,PC),r2
	mov 0x03,r1
	mov.b @r2,r0
	or 0x10,r0
	mov.b r0,@r2
	mov.l @(0xC0,PC),r2
	bra loc_8c1ba600
	mov.l r1,@r2

loc_8c1ba492:
	mov.b @r6,r0
	tst r0,r0
	bt loc_8c1ba4a8
	mov 0x0C,r3
	mov.b r3,@r8
	mov.w @(0x9E,PC),r2
	mov.b r2,@r9
	mov.l @(0xB0,PC),r3
	mov.b r14,@r3
	mov.l @(0xB0,PC),r2
	mov.b r14,@r2

loc_8c1ba4a8:
	mov.l @(0xB0,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1ba4c0
	mov 0x7F,r2
	mov 0x06,r3
	mov.b r3,@r8
	mov.b r2,@r9
	mov.l @(0x98,PC),r3
	mov.b r14,@r3
	mov.l @(0x98,PC),r2
	mov.b r14,@r2

loc_8c1ba4c0:
	mov.l @(0x9C,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c1ba4cc
	bra loc_8c1ba600
	nop

loc_8c1ba4cc:
	mov 0x09,r3
	mov 0x43,r2
	mov.b r3,@r8
	mov.b r2,@r9
	mov.l @(0x7C,PC),r3
	mov.b r14,@r3
	mov.l @(0x7C,PC),r2
	bra loc_8c1ba600
	mov.b r14,@r2

loc_8c1ba4de:
	mov.l @(0x88,PC),r3
	mov.l @(0x80,PC),r6
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1ba58c
	mov.b r13,@r6
	mov.l @r11,r1
	mov.l @r10,r2
	sub r2,r1
	mov.l @(0x78,PC),r2
	mov.l @r2,r0
	cmp/hi r0,r1
	bf loc_8c1ba5e0
	mov.b @r12,r1
	tst r1,r1
	bf loc_8c1ba508
	mov.l @(0x70,PC),r1
	mov.b r13,@r1
	mov.b r14,@r12
	bra loc_8c1ba516
	mov.b r13,@r4

loc_8c1ba508:
	mov.b @r4,r1
	add 0x01,r1
	mov.b r1,@r4
	mov.l @(0x30,PC),r0
	mov.w @r0,r1
	add 0x01,r1
	mov.w r1,@r0

loc_8c1ba516:
	mov.b @r7,r4
	extu.b r4,r3
	tst r3,r3
	bt loc_8c1ba57c
	mov.l @(0x24,PC),r3
	extu.b r4,r1
	mov.b @r3,r2
	extu.b r2,r2
	cmp/ge r1,r2
	bf loc_8c1ba57c
	bsr loc_8c1ba614
	nop
	mov.l @(0x44,PC),r3
	mov.b @r3,r0
	mov.l @(0x44,PC),r2
	or 0x80,r0
	jsr @r2
	mov.b r0,@r3
	bra loc_8c1ba5e0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ba53e:
	#data 0x00AF
	#align4

loc_8c1ba540:
	#data 0x8C34B320
loc_8c1ba544:
	#data 0x8C352DFF
loc_8c1ba548:
	#data 0x8C34B2A3
loc_8c1ba54c:
	#data 0x8C34B2CA
loc_8c1ba550:
	#data 0x8C34B324
loc_8c1ba554:
	#data 0x8C352E05
loc_8c1ba558:
	#data 0x8C352E04
loc_8c1ba55c:
	#data 0x8C352E1B
loc_8c1ba560:
	#data 0x8C352E1E
loc_8c1ba564:
	#data 0x8C352DFD
loc_8c1ba568:
	#data 0x8C352DFC
loc_8c1ba56c:
	#data 0x8C352DEC
loc_8c1ba570:
	#data 0x8C352BBE
loc_8c1ba574:
	#data 0x8C34B29F
loc_8c1ba578:
	#data bank1c.loc_8c1c1658

;==============================================
loc_8c1ba57c:
	mov.l @r11,r2
	mov.l r2,@r10
	mov.l @(0xC8,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1ba5c8
	bra loc_8c1ba5d0
	nop

loc_8c1ba58c:
	mov.l @(0xC0,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bt loc_8c1ba5e0
	mov.b @r6,r2
	mov.l @(0xBC,PC),r7
	tst r2,r2
	bf loc_8c1ba5a4
	mov.b r14,@r6
	mov.l @r11,r2
	bra loc_8c1ba5e0
	mov.l r2,@r7

loc_8c1ba5a4:
	mov.l @r7,r2
	mov.l @r15,r1
	sub r2,r5
	cmp/hi r1,r5
	bf loc_8c1ba5e0
	mov.b r13,@r6
	mov.l @(0xA4,PC),r1
	mov.b r13,@r1
	mov.b r13,@r4
	mov.b r14,@r12
	mov.l @r11,r2
	mov.l r2,@r10
	mov.l @(0x9C,PC),r0
	mov.b r14,@r0
	mov.l @(0x88,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1ba5d0

loc_8c1ba5c8:
	mov 0x02,r3
	mov.b r3,@r8
	bra loc_8c1ba5d8
	mov.b r14,@r9

loc_8c1ba5d0:
	mov 0x05,r3
	mov 0x03,r2
	mov.b r2,@r8
	mov.b r3,@r9

loc_8c1ba5d8:
	mov.l @(0x84,PC),r2
	mov.b r14,@r2
	mov.l @(0x84,PC),r3
	mov.b r14,@r3

loc_8c1ba5e0:
	mov.l @(0x84,PC),r2
	mov.b @r2,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1ba600
	mov 0x43,r3
	mov 0x09,r1
	mov.b r1,@r8
	mov.b r3,@r9
	mov.l @(0x6C,PC),r1
	mov.b r14,@r1
	mov.l @(0x6C,PC),r3
	mov.b r14,@r3
	mov.b r13,@r12
	mov.l @r11,r2
	mov.l r2,@r10

loc_8c1ba600:
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
loc_8c1ba614:
	mov.l @(0x54,PC),r5
	mov.b @r5,r3
	tst r3,r3
	bf loc_8c1ba646
	mov 0x7F,r1
	mov.l @(0x50,PC),r2
	mov 0x06,r3
	mov.b r3,@r2
	mov 0x01,r4
	mov.l @(0x4C,PC),r0
	mov.b r1,@r0
	mov 0x00,r1
	mov.l @(0x30,PC),r3
	mov.b r4,@r3
	mov.l @(0x30,PC),r2
	mov.b r4,@r2
	mov.l @(0x40,PC),r0
	mov.b r1,@r0
	mov.l @(0x40,PC),r1
	mov.l @(0x44,PC),r2
	mov.l @r1,r3
	mov.l r3,@r2
	mov.l @(0x40,PC),r0
	mov.b r4,@r0
	mov.b r4,@r5

loc_8c1ba646:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ba64c:
	#data 0x8C352E14
loc_8c1ba650:
	#data 0x8C352E1A
loc_8c1ba654:
	#data 0x8C352DF4
loc_8c1ba658:
	#data 0x8C352BBE
loc_8c1ba65c:
	#data 0x8C352DFC
loc_8c1ba660:
	#data 0x8C352E05
loc_8c1ba664:
	#data 0x8C352E04
loc_8c1ba668:
	#data 0x8C34B2CA
loc_8c1ba66c:
	#data 0x8C352E0F
loc_8c1ba670:
	#data 0x8C352E00
loc_8c1ba674:
	#data 0x8C352E01
loc_8c1ba678:
	#data 0x8C352E11
loc_8c1ba67c:
	#data 0x8C34B2CC
loc_8c1ba680:
	#data 0x8C352DF0
loc_8c1ba684:
	#data 0x8C352E0E

;==============================================
loc_8c1BA688:
	mov.l @(loc_8c1BA6F8,pc),r3 ; r3 set to 0x8C352E1C
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x7F,r7 ; r7 set to 0x7F
	mov r4,r5 ; r5 set to 0x00
	mov.b r4,@r3 ; r3 ??
	mov r4,r6 ; r6 set to 0x00
	mov.l @(loc_8c1BA6FC,pc),r2 ; r2 set to 0x8C352DE2
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1BA700,pc),r1 ; r1 set to 0x8C352DE1
	mov.b r4,@r1 ; r1 ??
	mov.l @(loc_8c1BA704,pc),r3 ; r3 set to 0x8C352DE3
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1BA708,pc),r2 ; r2 set to 0x8C352DE4
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1BA70C,pc),r1 ; r1 set to 0x8C352E13
	mov.b r4,@r1 ; r1 ??
	mov.l @(loc_8c1BA710,pc),r3 ; r3 set to 0x8C352E14
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1BA714,pc),r0 ; r0 set to 0x8C352DD4
	mov.l @(loc_8c1BA718,pc),r3 ; r3 set to 0x8C351770
	mov.l @r0,r2
	mov.l @(loc_8c1BA71C,pc),r0 ; r0 set to 0x8C351778
	mov.l @r3,r1
	mov.l @r0,r3 ; r3 ??
	sub r1,r3
	mov.w r3,@r2
	mov.l @(loc_8c1BA720,pc),r1 ; r1 set to 0x8C352DD8

loc_8c1BA6BE:
	add 0x01,r6 ; r6 set to 0x01
	mov.l @r1,r0 ; r0 ??
	extu.w r6,r3 ; r3 set to 0x01
	cmp/gt r7,r3
	mov.w r4,@(r0,r5)  ; r5 ??
	bf/s loc_8c1BA6BE
	add 0x02,r5
	mov.l @(loc_8c1BA724,pc),r2 ; r2 set to 0x8C352E00, r2 set to 0x8C352E00
	mov 0x0C,r3 ; r3 set to 0x0C, r3 set to 0x0C
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	mov.b r3,@r2 ; r2 ??, r2 ??
	mov.w @(loc_8c1BA6F4,pc),r1 ; r1 set to 0xAF, r1 set to 0xAF
	mov.l @(loc_8c1BA728,pc),r0 ; r0 set to 0x8C352E01, r0 set to 0x8C352E01
	mov.b r1,@r0 ; r0 ??, r0 ??
	mov.l @(loc_8c1BA72C,pc),r3 ; r3 set to 0x8C352E05, r3 set to 0x8C352E05
	mov.b r5,@r3 ; r3 ??, r3 ??
	mov.l @(loc_8c1BA730,pc),r2 ; r2 set to 0x8C352E04, r2 set to 0x8C352E04
	mov.b r5,@r2 ; r2 ??, r2 ??
	mov.l @(loc_8c1BA734,pc),r1 ; r1 set to 0x8C352E19, r1 set to 0x8C352E19
	mov.b r5,@r1 ; r1 ??, r1 ??
	mov.l @(loc_8c1BA738,pc),r3 ; r3 set to 0x8C352E11, r3 set to 0x8C352E11
	mov.b r4,@r3 ; r3 ??? bc r4 is ???, r3 ??
	mov.l @(loc_8c1BA73C,pc),r0 ; r0 set to 0x8C34B2CC, r0 set to 0x8C34B2CC
	mov.l @(loc_8c1BA740,pc),r1 ; r1 set to 0x8C352DF0, r1 set to 0x8C352DF0
	mov.l @r0,r2
	rts
	mov.l r2,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BA6F4:
	#data 0x00AF
	#align4

loc_8c1BA6F8:
	#data 0x8C352E1C
loc_8c1BA6FC:
	#data 0x8C352DE2
loc_8c1BA700:
	#data 0x8C352DE1
loc_8c1BA704:
	#data 0x8C352DE3
loc_8c1BA708:
	#data 0x8C352DE4
loc_8c1BA70C:
	#data 0x8C352E13
loc_8c1BA710:
	#data 0x8C352E14
loc_8c1BA714:
	#data 0x8C352DD4
loc_8c1BA718:
	#data 0x8C351770
loc_8c1BA71C:
	#data 0x8C351778
loc_8c1BA720:
	#data 0x8C352DD8
loc_8c1BA724:
	#data 0x8C352E00
loc_8c1BA728:
	#data 0x8C352E01
loc_8c1BA72C:
	#data 0x8C352E05
loc_8c1BA730:
	#data 0x8C352E04
loc_8c1BA734:
	#data 0x8C352E19
loc_8c1BA738:
	#data 0x8C352E11
loc_8c1BA73C:
	#data 0x8C34B2CC
loc_8c1BA740:
	#data 0x8C352DF0

;==============================================
loc_8c1BA744:
	mov.l @(0x14,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	mov 0x0E,r1
	cmp/hs r1,r0
	bt loc_8c1ba7bc
	shll r0
	mov r0,r1
	mova @(0x8,PC),r0
	mov.w @(r0,r1),r0

braf_8c1ba758:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ba75c:
	#data 0x8c352dea

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ba760:
	#data16 {loc_8c1ba77c-braf_8c1ba758-4};0x0020
	#data16 {loc_8c1ba780-braf_8c1ba758-4};0x0024
	#data16 {loc_8c1ba784-braf_8c1ba758-4};0x0028
	#data16 {loc_8c1ba78a-braf_8c1ba758-4};0x002e
	#data16 {loc_8c1BA790-braf_8c1ba758-4};0x0034
	#data16 {loc_8c1BA796-braf_8c1ba758-4};0x003a
	#data16 {loc_8c1BA79c-braf_8c1ba758-4};0x0040
	#data16 {loc_8c1ba7a0-braf_8c1ba758-4};0x0044
	#data16 {loc_8c1BA7a4-braf_8c1ba758-4};0x0048
	#data16 {loc_8c1ba7a8-braf_8c1ba758-4};0x004c
	#data16 {loc_8c1ba7ac-braf_8c1ba758-4};0x0050
	#data16 {loc_8c1ba7b0-braf_8c1ba758-4};0x0054
	#data16 {loc_8c1ba7b4-braf_8c1ba758-4};0x0058
	#data16 {loc_8c1ba7b8-braf_8c1ba758-4};0x005c

;==============================================
loc_8c1ba77c:
	bra loc_8c1ba7c2
	nop

;==============================================
loc_8c1BA780:
	bra loc_8c1ba9b8
	nop

;==============================================
loc_8c1BA784:
	mov.l @(0xA0,PC),r1
	jmp @r1
	nop

;==============================================
loc_8c1BA78a:
	mov.l @(0xA0,PC),r1
	jmp @r1
	nop

;==============================================
loc_8c1BA790:
	mov.l @(0x9C,PC),r1
	jmp @r1
	nop

;==============================================
loc_8c1BA796:
	mov.l @(0x9C,PC),r1
	jmp @r1
	nop

;==============================================
loc_8c1BA79c:
	bra loc_8c1bac56
	nop

;==============================================
loc_8c1BA7a0:
	bra loc_8c1bac88
	nop

;==============================================
loc_8c1BA7a4:
	bra loc_8c1bacee
	nop

;==============================================
loc_8c1BA7a8:
	bra loc_8c1baea4
	nop

;==============================================
loc_8c1BA7ac:
	bra loc_8c1baed4
	nop

;==============================================
loc_8c1BA7b0:
	bra loc_8c1baf4a
	nop

;==============================================
loc_8c1BA7b4:
	bra loc_8c1baf64
	nop

;==============================================
loc_8c1BA7b8:
	bra loc_8c1bb704
	nop

loc_8c1BA7BC:
	mov.l @(0x78,PC),r1
	jmp @r1
	nop

loc_8c1ba7c2:
	rts
	nop

;==============================================
loc_8c1BA7C6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0x68,PC),r3
	mov.b r13,@r3
	mov.l @(0x68,PC),r6
	mov.w @r6,r2
	tst r2,r2
	bf loc_8c1ba7e2
	bra loc_8c1ba9aa
	nop

loc_8c1BA7E2:
	mov 0x01,r12
	mov.l @(0x5C,PC),r2
	mov.b r13,@r2
	mov.l @(0x60,PC),r0
	mov.l @(0x5C,PC),r4
	mov.l @r0,r1
	mov.l r1,@r4
	mov.w @r6,r3
	mov.l @(0x5C,PC),r5
	mov.w r3,@r5
	mov.l @r4,r0
	mov.l @(0x58,PC),r6
	mov.b @r0,r0
	extu.b r0,r0
	and 0x02,r0
	cmp/gt r12,r0
	movt r0
	mov.b r0,@r6
	mov.l @(0x50,PC),r1
	mov.b @r1,r3
	mov.b @r6,r1
	xor r3,r1
	mov.b r1,@r6
	mov.l @r4,r0
	mov.b @r0,r3
	extu.b r3,r3
	tst r12,r3
	bt loc_8c1ba85c
	mov.l @r4,r0
	add 0x01,r0
	mov.l r0,@r4
	mov.w @r5,r3
	bra loc_8c1ba866
	add 0xFF,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1BA828:
	#data loc_8c1BB7A8
loc_8c1BA82C:
	#data loc_8c1BB944
loc_8c1BA830:
	#data loc_8c1BB894
loc_8c1BA834:
	#data loc_8c1BB9D6
loc_8c1BA838:
	#data loc_8c1BB7A4
loc_8c1BA83c:
	#data 0x8C352E04
loc_8c1BA840:
	#data 0x8C352E6C
loc_8c1BA844:
	#data 0x8C352DDF
loc_8c1BA848:
	#data 0x8C352BC0
loc_8c1BA84c:
	#data 0x8C352E68
loc_8c1BA850:
	#data 0x8C352DDC
loc_8c1BA854:
	#data 0x8C352E03
loc_8c1BA858:
	#data 0x8C352E16

;==============================================
loc_8c1BA85C:
	mov.l @r4,r0
	add 0x02,r0
	mov.l r0,@r4
	mov.w @r5,r3
	add 0xFE,r3

loc_8c1BA866:
	mov.w r3,@r5
	mov.l @r4,r6
	add 0x01,r6
	mov.l r6,@r4
	add 0xFF,r6
	mov.l @(0xCC,PC),r2
	mov.b @r6,r6
	mov.b @r2,r3
	tst r3,r3
	bf.s loc_8c1ba88c
	extu.b r6,r14
	mov.w @(0xB4,PC),r3
	cmp/eq r3,r14
	bt loc_8c1ba88c
	mov.w @(0xB0,PC),r0
	cmp/eq r0,r14
	bt loc_8c1ba88c
	bra loc_8c1ba9a6
	nop

loc_8c1BA88C:
	mov.l @(0xBC,PC),r7
	mov r14,r3
	mov.l @(0xB0,PC),r10
	tst r12,r3
	mov.l @(0xB0,PC),r11
	bf loc_8c1ba8d4
	mov.l @r4,r1
	mov r14,r2
	shar r2
	add 0x01,r1
	mov.l r1,@r4
	add 0xFF,r1
	mov.w @r5,r3
	mov.b @r1,r4
	mov 0x01,r1
	add 0xFE,r3
	mov.w r3,@r5
	and r4,r1
	mov.l @(0x9C,PC),r3
	mov.b r2,@r3
	extu.b r4,r2
	shlr r2
	mov.b r1,@r7
	mov.b @r11,r3
	extu.b r3,r3
	cmp/eq r2,r3
	bt.s loc_8c1ba8ce
	mov 0x01,r0
	extu.b r4,r4
	mov.b r13,@r10
	shlr r4
	bra loc_8c1ba8d0
	mov.b r4,@r11

loc_8c1BA8CE:
	mov.b r12,@r10

loc_8c1BA8D0:
	bra loc_8c1ba9ac
	nop

loc_8c1BA8D4:
	mov 0x03,r0
	and r14,r0
	cmp/eq 0x03,r0
	bf loc_8c1ba95c
	mov 0x10,r2
	and r6,r2
	mov.b r2,@r7
	mov.w @(0x52,PC),r2
	mov.b @r7,r3
	and r2,r6
	extu.b r3,r3
	extu.b r6,r0
	shlr2 r3
	cmp/eq 0x03,r0
	shlr2 r3
	bt.s loc_8c1ba924
	mov.b r3,@r7
	cmp/eq 0x0F,r0
	bt loc_8c1ba920
	cmp/eq 0x43,r0
	bt loc_8c1ba928
	cmp/eq 0x63,r0
	bt loc_8c1ba92c
	cmp/eq 0x6F,r0
	bt loc_8c1ba91c
	mov.w @(0x30,PC),r1
	cmp/eq r1,r0
	bt loc_8c1ba930
	mov.w @(0x24,PC),r1
	cmp/eq r1,r0
	bt loc_8c1ba954
	mov.w @(0x26,PC),r1
	cmp/eq r1,r0
	bt loc_8c1ba958
	bra loc_8c1ba9a6
	nop

loc_8c1BA91C:
	bra loc_8c1ba9ac
	mov 0x06,r0

loc_8c1BA920:
	bra loc_8c1ba9ac
	mov 0x07,r0

loc_8c1BA924:
	bra loc_8c1ba9ac
	mov 0x08,r0

loc_8c1BA928:
	bra loc_8c1ba9ac
	mov 0x09,r0

loc_8c1BA92c:
	bra loc_8c1ba9ac
	mov 0x0A,r0

loc_8c1BA930:
	bra loc_8c1ba9ac
	mov 0x0B,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ba934:
	#data 0x00AF
loc_8c1ba936:
	#data 0x00BF
loc_8c1ba938:
	#data 0x00EF
loc_8c1ba93a:
	#data 0x0087
loc_8c1ba93c:
	#data 0x00E3
	#align4

loc_8c1ba940:
	#data 0x8C352E1A
loc_8c1ba944:
	#data 0x8C352E10
loc_8c1ba948:
	#data 0x8C352DE0
loc_8c1ba94c:
	#data 0x8C352E02
loc_8c1ba950:
	#data 0x8C352DDF

;==============================================
loc_8c1BA954:
	bra loc_8c1ba9ac
	mov 0x0C,r0

loc_8c1BA958:
	bra loc_8c1ba9ac
	mov 0x0d,r0

loc_8c1BA95C:
	mov.l @r4,r5
	mov 0x01,r3
	add 0x01,r5
	mov.l r5,@r4
	add 0xFF,r5
	mov.b @r5,r5
	and r5,r3
	mov.b r3,@r7
	extu.b r5,r4
	mov.b @r11,r3
	shlr r4
	extu.b r3,r3
	cmp/eq r4,r3
	bt.s loc_8c1ba980
	mov r14,r0
	mov.b r4,@r11
	bra loc_8c1ba982
	mov.b r13,@r10

loc_8c1BA980:
	mov.b r12,@r10

loc_8c1BA982:
	cmp/eq 0x0D,r0
	bf loc_8c1ba98a
	bra loc_8c1ba9ac
	mov 0x05,r0

loc_8c1BA98A:
	cmp/eq 0x05,r0
	bf loc_8c1ba992
	bra loc_8c1ba9ac
	mov 0x03,r0

loc_8c1BA992:
	mov r14,r0
	nop
	cmp/eq 0x09,r0
	bf loc_8c1ba99e
	bra loc_8c1ba9ac
	mov 0x04,r0

loc_8c1BA99E:
	cmp/eq 0x01,r0
	bf loc_8c1ba9a6
	bra loc_8c1ba9ac
	mov 0x02,r0

loc_8c1BA9A6:
	bra loc_8c1ba9ac
	mov 0x0E,r0

loc_8c1BA9AA:
	mov 0x00,r0

loc_8c1BA9AC:
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;unused
loc_8c1BA9b8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x01,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x60,PC),r2
	sts.l pr,@-r15
	mov.b @r2,r3
	mov.l @(0x58,PC),r4
	tst r3,r3
	bt.s loc_8c1ba9da
	mov 0x00,r14
	bra loc_8c1bac44
	mov.b r14,@r4

loc_8c1ba9da:
	mov.l @(0x60,PC),r2
	mov.l @(0x58,PC),r12
	mov.b @r2,r3
	mov.l @(0x4C,PC),r9
	mov.l @(0x50,PC),r11
	tst r3,r3
	bt loc_8c1ba9ec
	bra loc_8c1babee
	nop

loc_8c1ba9ec:
	mov.l @(0x5C,PC),r3
	mov.l @(0x50,PC),r6
	mov.b @r3,r5
	mov.b @r6,r4
	extu.b r5,r1
	mov.l @(0x50,PC),r10
	extu.b r4,r4
	mov.l @(0x48,PC),r8
	cmp/eq r4,r1
	bt loc_8c1baa04
	bra loc_8c1bab06
	nop

loc_8c1baa04:
	mov.l @(0x48,PC),r1
	mov.w @r1,r0
	add 0x01,r0
	mov.w r0,@r1
	mov.b @r6,r0
	add 0x01,r0
	and 0x7F,r0
	mov.b r0,@r6
	mov.b r14,@r10
	mov.l @(0x40,PC),r0
	mov.l @(0x38,PC),r4
	mov.l @r0,r1
	mov.l r1,@r4
	mov.l @(0x40,PC),r6
	mov.l @(0x38,PC),r10
	mov.l @(0x40,PC),r5
	bra loc_8c1baa8e
	mov r13,r7

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1baa28:
	#data 0x8C352E18
loc_8c1baa2c:
	#data 0x8C352E0E
loc_8c1baa30:
	#data 0x8C352E02
loc_8c1baa34:
	#data 0x8C352E00
loc_8c1baa38:
	#data 0x8C352E01
loc_8c1baa3c:
	#data 0x8C352E14
loc_8c1baa40:
	#data 0x8C352DE3
loc_8c1baa44:
	#data 0x8C352DDC
loc_8c1baa48:
	#data 0x8C352E12
loc_8c1baa4c:
	#data 0x8C352DDF
loc_8c1baa50:
	#data 0x8C34B31A
loc_8c1baa54:
	#data 0x8C352BD0
loc_8c1baa58:
	#data 0x8C352794
loc_8c1baa5c:
	#data 0x8C35178A
loc_8c1baa60:
	#data 0x8C352BC0
loc_8c1baa64:
	#data 0x8C35279C

;==============================================
loc_8c1baa68:
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.l @r6,r2
	add 0x01,r2
	mov.l r2,@r6
	add 0xFF,r2
	mov.b @r2,r1
	mov.b r1,@-r3
	mov.w @r5,r3
	add 0x01,r3
	mov.w r3,@r5
	mov.l @(0xD4,PC),r0
	mov.l @r4,r1
	mov.l @r0,r2
	cmp/hi r2,r1
	bf.s loc_8c1baa8e
	add 0x01,r7
	mov.l r10,@r4

loc_8c1baa8e:
	mov.w @r8,r3
	extu.w r7,r2
	extu.w r3,r3
	cmp/gt r3,r2
	bf loc_8c1baa68
	mov.l @(0xC0,PC),r2
	mov.l @r4,r3
	mov.l r3,@r2
	mov.w @r5,r1
	mov.w @(0xAE,PC),r3
	extu.w r1,r1
	cmp/ge r3,r1
	bt loc_8c1baae6
	mov.l @(0xB4,PC),r1
	mov.b @r1,r0
	tst r0,r0
	bf loc_8c1baada
	mov.b @r9,r2
	tst r2,r2
	bt loc_8c1baaba
	bra loc_8c1babe6
	nop

loc_8c1baaba:
	mov.l @(0xAC,PC),r1
	mov.l @(0xA4,PC),r0
	mov.w @r1,r3
	mov.w @r0,r2
	cmp/eq r3,r2
	bt loc_8c1baad2
	mov.l @(0xA4,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1baad2
	bra loc_8c1bac16
	nop

loc_8c1baad2:
	mov 0x02,r2
	mov.b r2,@r11
	bra loc_8c1bab00
	mov.b r13,@r12

loc_8c1baada:
	mov.l @(0x94,PC),r3
	mov.l @(0x80,PC),r2
	jsr @r3
	mov.b r14,@r2
	bra loc_8c1bac16
	nop

loc_8c1baae6:
	mov.l @(0x78,PC),r0
	mov.b r14,@r0
	mov.l @(0x88,PC),r2
	mov.b r13,@r2
	mov.b @r9,r3
	tst r3,r3
	bt loc_8c1baaf8
	bra loc_8c1bac06
	nop

loc_8c1baaf8:
	mov 0x05,r3
	mov 0x03,r1
	mov.b r1,@r11
	mov.b r3,@r12

loc_8c1bab00:
	mov.l @(0x74,PC),r2
	bra loc_8c1baba4
	mov.b r14,@r2

loc_8c1bab06:
	extu.b r5,r0
	cmp/ge r4,r0
	bt loc_8c1bab10
	mov.w @(0x44,PC),r0
	add r0,r5

loc_8c1bab10:
	mov.l @(0x68,PC),r2
	extu.b r5,r5
	sub r4,r5
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r3,r5
	bf loc_8c1bab22
	bra loc_8c1bac44
	nop

loc_8c1bab22:
	mov.l @(0x5C,PC),r2
	jsr @r2
	nop
	mov.l @(0x58,PC),r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @(0x54,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c1babaa
	mov.w r14,@r8
	mov 0x09,r5
	mov.b @r9,r2
	tst r2,r2
	bt.s loc_8c1bab8c
	mov 0x04,r4
	mov.b @r10,r2
	tst r2,r2
	bf loc_8c1babe6
	mov.b r13,@r10
	mov.b r4,@r11
	bra loc_8c1bac0e
	mov.b r5,@r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BAb52:
	#data 0x0F00
loc_8c1BAb54:
	#data 0x0080
	#align4

loc_8c1BAB58:
	#data 0x8C35278C
loc_8c1BAB5c:
	#data 0x8C352794
loc_8c1BAB60:
	#data 0x8C352BBD
loc_8c1BAB64:
	#data 0x8C352BC8
loc_8c1BAB68:
	#data 0x8C351784
loc_8c1BAB6c:
	#data 0x8C352E13
loc_8c1BAB70:
	#data loc_8c1BC780
loc_8c1BAB74:
	#data 0x8C352E14
loc_8c1BAB78:
	#data 0x8C352E05
loc_8c1BAB7c:
	#data 0x8C352E2F
loc_8c1BAB80:
	#data bank1c.loc_8c1c1658
loc_8c1BAB84:
	#data 0x8C34B29F
loc_8c1BAB88:
	#data 0x8C352E61

;==============================================
loc_8c1bab8c:
	mov.b @r10,r0
	tst r0,r0
	bf loc_8c1bac16
	mov.l @(0x1DC,PC),r2
	mov.w @r2,r0
	add 0x01,r0
	mov.w r0,@r2
	mov.b r13,@r10
	mov.b r4,@r11
	mov.b r5,@r12
	mov.l @(0x1D0,PC),r2
	mov.b r13,@r2

loc_8c1baba4:
	mov.l @(0x1D0,PC),r3
	bra loc_8c1bac16
	mov.b r14,@r3

loc_8c1babaa:
	mov.b @r10,r0
	tst r0,r0
	bf loc_8c1babde
	mov.l @(0x1C8,PC),r0
	mov.w @r0,r2
	tst r2,r2
	bf loc_8c1babd4
	mov.l @(0x1B4,PC),r2
	mov 0x0D,r1
	mov.w @r2,r3
	add 0x01,r3
	mov.w r3,@r2
	mov 0x05,r3
	mov.l @(0x1B8,PC),r2
	mov.b r13,@r2
	mov.b r3,@r11
	mov.b r1,@r12
	mov.l @(0x1A4,PC),r3
	mov.b r13,@r3
	mov.l @(0x1A4,PC),r1
	mov.b r14,@r1

loc_8c1babd4:
	mov.l @(0x1AC,PC),r3
	jsr @r3
	nop
	bra loc_8c1bac16
	nop

loc_8c1babde:
	mov.w r14,@r8
	mov.b @r9,r0
	tst r0,r0
	bt loc_8c1bac16

loc_8c1babe6:
	mov 0x02,r3
	mov.b r3,@r11
	bra loc_8c1bac0e
	mov.b r13,@r12

loc_8c1babee:
	mov.l @(0x198,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c1babfa
	bra loc_8c1bac00
	mov.b r13,@r4

loc_8c1babfa:
	mov.l @(0x188,PC),r1
	jsr @r1
	mov.b r14,@r4

loc_8c1bac00:
	mov.b @r9,r3
	tst r3,r3
	bt loc_8c1bac16

loc_8c1bac06:
	mov 0x05,r2
	mov 0x03,r3
	mov.b r3,@r11
	mov.b r2,@r12

loc_8c1bac0e:
	mov.l @(0x164,PC),r3
	mov.b r14,@r3
	mov.l @(0x164,PC),r2
	mov.b r13,@r2

loc_8c1bac16:
	mov.l @(0x174,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c1bac44
	mov.l @(0x170,PC),r0
	mov.b @r0,r3
	tst r3,r3
	bf loc_8c1bac44
	mov.l @(0x16C,PC),r4
	mov.b r14,@r4
	mov.l @(0x16C,PC),r3
	mov.b r14,@r3
	mov.l @(0x170,PC),r3
	mov.l @(0x168,PC),r1
	mov.b @r3,r0
	mov.b @r1,r2
	cmp/eq r0,r2
	bt loc_8c1bac44
	mov.b r13,@r4
	mov.l @(0x164,PC),r2
	mov.l @(0x168,PC),r3
	mov.l @r2,r0
	mov.l r0,@r3

loc_8c1bac44:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c1bac56:
	mov 0x63,r2
	mov.l @(0x150,PC),r3
	mov 0x0A,r1
	mov.b r1,@r3
	mov.l @(0x150,PC),r0
	sts.l pr,@-r15
	mov.b r2,@r0
	mov 0x00,r0
	mov.l @(0x14C,PC),r2
	mov.l @(0x10C,PC),r3
	mov.b @r2,r1
	mov.b r1,@r3
	mov.l @(0x104,PC),r1
	mov.l @(0x144,PC),r3
	jsr @r3
	mov.b r0,@r1
	mov.l @(0x114,PC),r3
	mov 0x00,r2
	mov.b r2,@r3
	mov.l @(0x13C,PC),r2
	mov.b @r2,r0
	lds.l @r15+,pr
	or 0x10,r0
	rts
	mov.b r0,@r2

loc_8c1bac88:
	mov.l @(0x134,PC),r4
	mov 0x00,r6
	mov.l @(0x124,PC),r7
	mov.b @r4,r3
	tst r3,r3
	bt.s loc_8c1bacb6
	mov 0x01,r5
	mov.l @(0x12C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bacb6
	mov.b @r7,r3
	tst r3,r3
	bt loc_8c1bacb6
	mov.l @(0x120,PC),r3
	mov.b r5,@r3
	mov.l @(0x120,PC),r2
	mov.b r5,@r2
	mov.l @(0x10C,PC),r1
	mov.b @r1,r0
	or 0x02,r0
	mov.b r0,@r1
	mov.b r6,@r4

loc_8c1bacb6:
	mov.l @(0x118,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt.s loc_8c1bace0
	mov.b @r7,r4
	mov.l @(0x100,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c1bace0
	extu.b r4,r4
	tst r4,r4
	bt loc_8c1bacea
	mov.l @(0xF8,PC),r2
	mov.b r5,@r2
	mov.l @(0xE8,PC),r3
	mov.b @r3,r0
	or 0x02,r0
	mov.b r0,@r3
	mov.l @(0xF4,PC),r1
	bra loc_8c1bacea
	mov.b r6,@r1

loc_8c1bace0:
	extu.b r4,r4
	tst r4,r4
	bf loc_8c1bacea
	bra loc_8c1ba614
	nop

loc_8c1bacea:
	rts
	nop

loc_8c1bacee:
	mov.l r14,@-r15
	mov 0x01,r5
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(0xDC,PC),r4
	sts.l pr,@-r15
	mov.l @r4,r0
	mov.l @(0xD4,PC),r7
	mov.b @r0,r0
	extu.b r0,r0
	and 0x20,r0
	cmp/eq 0x20,r0
	bf.s loc_8c1bad14
	mov 0x00,r14
	mov.b r14,@r7
	mov.l @(0xCC,PC),r2
	bra loc_8c1bad16
	mov.b r14,@r2

loc_8c1bad14:
	mov.b r5,@r7

loc_8c1bad16:
	mov.l @r4,r0
	mov 0xF9,r3
	mov.l @(0xC4,PC),r6
	add 0x01,r0
	mov.l r0,@r4
	add 0xFF,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x80,r0
	shad r3,r0
	mov.b r0,@r6
	mov.b @r7,r0
	mov.l @(0xB4,PC),r12
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c1bad3a
	bra loc_8c1bae62
	nop

loc_8c1bad3a:
	mov.l @r4,r0
	mov.l @(0xA8,PC),r7
	mov.b @r0,r0
	and 0x80,r0
	mov.b r0,@r7
	mov.l @r4,r0
	add 0x01,r0
	mov.l r0,@r4
	add 0xFF,r0
	mov.b @r0,r0
	mov.l @(0x9C,PC),r3
	and 0x40,r0
	mov.b r0,@r3
	mov.l @(0x9C,PC),r2
	mov.l @(0x98,PC),r11
	mov.w @r2,r0
	extu.w r0,r0
	cmp/eq 0x03,r0
	bf loc_8c1badf8
	mov.l @r4,r0
	add 0x01,r0
	mov.l r0,@r4
	add 0xFF,r0
	mov.b @r0,r1
	bra loc_8c1badfe
	mov.b r1,@r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1bad70:
	#data 0x8C34B31E
loc_8c1bad74:
	#data 0x8C352E05
loc_8c1bad78:
	#data 0x8C352E04
loc_8c1bad7c:
	#data 0x8C352BB8
loc_8c1bad80:
	#data 0x8C352BBD
loc_8c1BAD84:
	#data loc_8c1BCBEC
loc_8c1bad88:
	#data 0x8C352E61
loc_8c1bad8c:
	#data 0x8C352E13
loc_8c1bad90:
	#data 0x8C352E10
loc_8c1bad94:
	#data 0x8C352DFC
loc_8c1bad98:
	#data 0x8C352E11
loc_8c1bad9c:
	#data 0x8C352DE1
loc_8c1bada0:
	#data 0x8C352DE2
loc_8c1bada4:
	#data 0x8C34B2CC
loc_8c1bada8:
	#data 0x8C352DF0
loc_8c1badac:
	#data 0x8C352E00
loc_8c1badb0:
	#data 0x8C352E01
loc_8c1badb4:
	#data 0x8C352E02
loc_8c1BADB8:
	#data loc_8c1BC6A4
loc_8c1badbc:
	#data 0x8C34B2A3
loc_8c1badc0:
	#data 0x8C352E1B
loc_8c1badc4:
	#data 0x8C352E03
loc_8c1badc8:
	#data 0x8C352E1C
loc_8c1badcc:
	#data 0x8C352E1D
loc_8c1badd0:
	#data 0x8C352E1E
loc_8c1badd4:
	#data 0x8C352E15
loc_8c1badd8:
	#data 0x8C352BC0
loc_8c1baddc:
	#data 0x8C352E0D
loc_8c1bade0:
	#data 0x8C352E09
loc_8c1bade4:
	#data 0x8C352E0E
loc_8c1bade8:
	#data 0x8C352E08
loc_8c1badec:
	#data 0x8C352E07
loc_8c1badf0:
	#data 0x8C352E0A
loc_8c1badf4:
	#data 0x8C352DDC

;==============================================
loc_8c1badf8:
	mov.l @(0x210,PC),r1
	mov.b @r1,r3
	mov.b r3,@r11

loc_8c1badfe:
	mov.l @(0x210,PC),r13
	mov.b @r6,r2
	mov.b @r13,r3
	cmp/eq r3,r2
	bf loc_8c1bae3e
	mov.b @r13,r0
	xor 0x01,r0
	mov.b r0,@r13
	mov.b @r7,r3
	tst r3,r3
	bt loc_8c1bae1c
	mov.l @(0x1FC,PC),r3
	jsr @r3
	mov.b r5,@r12
	mov.b r14,@r12

loc_8c1bae1c:
	mov.l @(0x1F8,PC),r2
	jsr @r2
	mov 0x12,r4
	mov.l @(0x1F8,PC),r2
	mov.b @r11,r4
	mov.b @r2,r3
	tst r3,r3
	bt.s loc_8c1bae38
	extu.b r4,r4
	mov.l @(0x1F0,PC),r3
	jsr @r3
	mov 0x00,r5
	bra loc_8c1bae3e
	nop

loc_8c1bae38:
	mov.l @(0x1E8,PC),r3
	jsr @r3
	nop

loc_8c1bae3e:
	mov.l @(0x1E8,PC),r3
	mov 0x08,r0
	mov.l @(0x1E8,PC),r1
	mov.b @r3,r2
	mov 0x03,r3
	mov.b r2,@r1
	mov.l @(0x1E4,PC),r2
	mov.b r0,@r2
	mov.l @(0x1E4,PC),r0
	mov.b r3,@r0
	mov.l @(0x1E4,PC),r1
	mov.b r14,@r1
	mov.b @r13,r3
	mov.l @(0x1E0,PC),r2
	mov.b r3,@r2
	mov.l @(0x1E0,PC),r0
	bra loc_8c1bae98
	mov.b r14,@r0

loc_8c1bae62:
	mov.l @(0x1E0,PC),r7
	mov.b @r6,r2
	mov.b @r7,r3
	extu.b r2,r2
	extu.b r3,r3
	xor r5,r3
	cmp/eq r3,r2
	bf loc_8c1bae98
	mov.b @r7,r0
	xor 0x01,r0
	mov.b r0,@r7
	mov.l @(0x1CC,PC),r2
	mov.l @r4,r1
	mov.w @r2,r3
	extu.w r3,r3
	add 0xFE,r3
	add r1,r3
	mov.l r3,@r4
	mov.l @(0x1C4,PC),r0
	mov.b r14,@r0
	mov.b @r12,r3
	tst r3,r3
	bt loc_8c1bae98
	mov.l @(0x180,PC),r3
	jsr @r3
	nop
	mov.b r14,@r12

loc_8c1bae98:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c1baea4:
	mov.l @(0x180,PC),r2
	mov 0x63,r0
	mov.l @(0x180,PC),r1
	mov.b @r2,r3
	mov 0x0A,r2
	mov.b r3,@r1
	mov 0x00,r1
	mov.l @(0x180,PC),r3
	mov.b r0,@r3
	mov 0x01,r3
	mov.l @(0x174,PC),r0
	mov.b r2,@r0
	mov.l @(0x178,PC),r2
	mov.b r1,@r2
	mov.l @(0x18C,PC),r1
	mov.b r3,@r1
	mov.l @(0x18C,PC),r3
	mov.b @r3,r0
	or 0x02,r0
	mov.b r0,@r3
	mov.l @(0x188,PC),r0
	mov 0x06,r2
	rts
	mov.l r2,@r0

loc_8c1baed4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x178,PC),r3
	mov.b @r3,r0
	or 0x10,r0
	mov.b r0,@r3
	mov.l @(0x168,PC),r4
	mov.b @r4,r2
	tst r2,r2
	bt.s loc_8c1baefc
	mov 0x00,r14
	mov 0x01,r2
	mov.b r14,@r4
	mov.l @(0x16C,PC),r1
	mov.b r2,@r1
	mov.l @(0x120,PC),r2
	jsr @r2
	nop
	mov.l @(0x160,PC),r3
	mov.b r14,@r3

loc_8c1baefc:
	mov.l @(0x160,PC),r4
	mov.l @(0x128,PC),r5
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c1baf24
	mov.l @(0x15C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1baf24
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c1baf24
	mov.l @(0x138,PC),r2
	mov 0x01,r3
	mov.b r3,@r2
	mov.l @(0x138,PC),r3
	mov.b @r3,r0
	or 0x02,r0
	mov.b r0,@r3
	mov.b r14,@r4

loc_8c1baf24:
	mov.l @(0x140,PC),r4
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c1baf44
	mov.l @(0x134,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1baf44
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c1baf44
	lds.l @r15+,pr
	mov.b r14,@r4
	mov.l @(0xD4,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c1baf44:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c1baf4a:
	mov 0x06,r1
	mov.l @(0xE4,PC),r2
	mov 0x7F,r3
	mov.b r3,@r2
	mov 0x01,r3
	mov.l @(0xD8,PC),r0
	mov 0x00,r2
	mov.b r1,@r0
	mov.l @(0xDC,PC),r1
	mov.b r3,@r1
	mov.l @(0xCC,PC),r3
	rts
	mov.b r2,@r3

loc_8c1baf64:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x01,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x00,r9
	mov.l r8,@-r15
	mov.l @(0xFC,PC),r3
	mov.l @(0xF4,PC),r14
	sts.l pr,@-r15
	mov.l @(0xEC,PC),r8
	mov.b r9,@r3
	mov.l @(0xF4,PC),r2
	add 0xD4,r15
	mov.b r13,@r2
	mov.l @(0xF4,PC),r0
	mov.l @r0,r1
	add 0x03,r1
	mov r1,r3
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	mov.b @r3,r1
	mov.l @(0xE8,PC),r3
	mov.b r1,@r3
	mov r13,r0
	nop
	mov.b r0,@(0x8,r15)
	mov 0x18,r0
	mov.b r9,@(r0,r15)
	mov 0x24,r0
	mov.b r9,@(r0,r15)
	mov 0x28,r0
	mov.b r9,@(r0,r15)
	mov 0x20,r0
	mov.b r9,@(r0,r15)
	mov 0x0F,r11
	mov 0x1C,r0
	mov r11,r7
	mov.b r9,@(r0,r15)
	mov.l @(0xC8,PC),r3
	mov.l r3,@(0x14,r15)
	add 0x02,r3
	mov.l @(0xC8,PC),r2
	mov.l r2,@(0x10,r15)
	mov.l r3,@(0xC,r15)
	mov.l @(0xC8,PC),r12
	mov.l @(0xCC,PC),r6
	mov.l @(0xD0,PC),r4
	mov.l @(0xCC,PC),r5
	mov.l @(0xBC,PC),r10
	bra loc_8c1bb2b0
	add 0x71,r7

;==============================================
loc_8c1bafd2:
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	mov.b r3,@r6
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	mov.b r3,@r10
	mov.b @r10,r2
	mov.b @(0x8,r15),r0
	add 0x02,r2
	add r2,r0
	mov.b r0,@(0x8,r15)
	mov.b @r6,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c1bb000
	bra loc_8c1bb118
	nop

loc_8c1bb000:
	mov 0x18,r0
	mov.b r13,@(r0,r15)
	mov r9,r0
	mov.l @(0x7C,PC),r3
	bra loc_8c1bb0b8
	mov.b r0,@(0x4,r15)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1BB00c:
	#data 0x8C34B2C1
loc_8c1BB010:
	#data 0x8C352DE6
loc_8c1BB014:
	#data loc_8c1BC6A4
loc_8c1BB018:
	#data loc_8c1B3454
loc_8c1BB01c:
	#data 0x8C352E07
loc_8c1BB020:
	#data bank1a.loc_8c1a0E8A
loc_8c1BB024:
	#data loc_8c1BCF34
loc_8c1BB028:
	#data 0x8C352E02
loc_8c1BB02c:
	#data 0x8C352E04
loc_8c1BB030:
	#data 0x8C352E00
loc_8c1BB034:
	#data 0x8C352E01
loc_8c1BB038:
	#data 0x8C352E05
loc_8c1BB03c:
	#data 0x8C352DE5
loc_8c1BB040:
	#data 0x8C352DE9
loc_8c1BB044:
	#data 0x8C352DE7
loc_8c1BB048:
	#data 0x8C352DDC
loc_8c1BB04c:
	#data 0x8C352E0F
loc_8c1BB050:
	#data 0x8C352E1C
loc_8c1BB054:
	#data 0x8C34B2A3
loc_8c1BB058:
	#data 0x8C34B324
loc_8c1BB05c:
	#data 0x8C352E0E
loc_8c1BB060:
	#data 0x8C352E1E
loc_8c1BB064:
	#data 0x8C352E03
loc_8c1BB068:
	#data 0x8C352E1B
loc_8c1BB06c:
	#data 0x8C352E56
loc_8c1BB070:
	#data 0x8C352BCC
loc_8c1BB074:
	#data 0x8C352E19
loc_8c1BB078:
	#data 0x8C352E1A
loc_8c1BB07c:
	#data 0x8C352BC0
loc_8c1BB080:
	#data 0x8C352E21
loc_8c1BB084:
	#data 0x8C352E33
loc_8c1BB088:
	#data 0x8C352E34
loc_8c1BB08c:
	#data 0x8C352E24
loc_8c1BB090:
	#data 0x8C352E2E
loc_8c1BB094:
	#data 0x8C352E23
loc_8c1BB098:
	#data 0x8C352E2A
loc_8c1BB09c:
	#data 0x8C352E26

;==============================================
loc_8c1bb0a0:
	mov.l @r14,r3
	mov.l @r15,r1
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	mov.b @r3,r2
	mov.b r2,@r1
	mov.b @(0x4,r15),r0
	add 0x01,r0
	mov.b r0,@(0x4,r15)
	mov.l @r15,r3
	add 0x01,r3

loc_8c1bb0b8:
	mov.l r3,@r15
	mov.b @r10,r3
	mov.b @(0x4,r15),r0
	cmp/hs r3,r0
	bf loc_8c1bb0a0
	mov.l @(0x14,r15),r0
	mov.l @(0x1B0,PC),r3
	mov.b @r0,r0
	and 0x04,r0
	mov.b r0,@r3
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1bb0da
	mov.l @(0x1A8,PC),r2
	mov.l @(0x1A0,PC),r3
	mov.b @r2,r1
	mov.b r1,@r3

loc_8c1bb0da:
	mov.l @(0x10,r15),r0
	mov.l @(0x1A0,PC),r3
	mov.b @r0,r0
	and 0x20,r0
	mov.b r0,@r3
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1bb0f2
	mov.l @(0x198,PC),r2
	mov.l @(0x190,PC),r3
	mov.b @r2,r1
	mov.b r1,@r3

loc_8c1bb0f2:
	mov.l @(0xC,r15),r0
	mov.b @r0,r3
	tst r3,r3
	bt loc_8c1bb0fe
	bra loc_8c1bb100
	mov 0x01,r3

loc_8c1bb0fe:
	mov 0x00,r3

loc_8c1bb100:
	mov.l @(0x184,PC),r1
	mov.b r3,@r1
	extu.b r3,r3
	tst r3,r3
	bf loc_8c1bb10e
	bra loc_8c1bb2b0
	nop

loc_8c1bb10e:
	mov.l @(0x17C,PC),r2
	mov.l @(0x174,PC),r3
	mov.b @r2,r0
	bra loc_8c1bb2b0
	mov.b r0,@r3

loc_8c1bb118:
	cmp/eq 0x05,r0
	bf loc_8c1bb174
	mov 0x24,r0
	mov.b r13,@(r0,r15)
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	mov.b @r3,r2
	extu.b r2,r2
	mov.w r2,@r15
	mov.w @r15,r3
	shll8 r3
	mov.w r3,@r15
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	extu.b r3,r3
	mov.w r3,@r5
	mov.w @r5,r2
	mov.w @r15,r3
	or r3,r2
	mov.w r2,@r5
	mov.w @r5,r1
	extu.w r1,r1
	shlr2 r1
	shlr r1
	mov.w r1,@r5
	mov.w @r5,r3
	tst r3,r3
	bf loc_8c1bb15c
	mov.w r7,@r5

loc_8c1bb15c:
	mov.l @(0x130,PC),r2
	mov.w @r2,r3
	mov.w r3,@r15
	mov.w @r5,r3
	mov.w @r15,r1
	cmp/hs r3,r1
	bf loc_8c1bb16e
	bra loc_8c1bb2b0
	nop

loc_8c1bb16e:
	mov.w @r15,r3
	bra loc_8c1bb2b0
	mov.w r3,@r5

loc_8c1bb174:
	mov.b @r6,r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c1bb1f2
	mov 0x28,r0
	mov.b r13,@(r0,r15)
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	mov.b @r3,r2
	extu.b r2,r2
	mov.w r2,@r15
	mov.w @r15,r3
	shll8 r3
	mov.w r3,@r15
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	extu.b r3,r3
	mov.w r3,@r4
	mov.w @r4,r2
	mov.w @r15,r3
	or r3,r2
	mov.w r2,@r4
	mov.w @r4,r1
	extu.w r1,r1
	shlr2 r1
	shlr r1
	mov.w r1,@r4
	mov.w @r4,r3
	tst r3,r3
	bf loc_8c1bb1bc
	mov.w r7,@r4

loc_8c1bb1bc:
	mov.l @(0xD4,PC),r2
	mov.w @r4,r1
	mov.w @r2,r3
	cmp/hi r1,r3
	bf loc_8c1bb1d0
	mov.w @r4,r1
	mov.l @(0xCC,PC),r3
	add 0x03,r1
	bra loc_8c1bb2b0
	mov.w r1,@r3

loc_8c1bb1d0:
	mov.w @r2,r0
	mov.l @(0xC4,PC),r3
	add 0x03,r0
	mov.w r0,@r3
	mov.w @r2,r1
	extu.w r1,r1
	cmp/ge r7,r1
	bt loc_8c1bb1ec
	mov.w @r4,r1
	extu.w r1,r1
	cmp/gt r7,r1
	bf loc_8c1bb2b0
	bra loc_8c1bb2b0
	mov.w r7,@r4

loc_8c1bb1ec:
	mov.w @r2,r3
	bra loc_8c1bb2b0
	mov.w r3,@r4

loc_8c1bb1f2:
	cmp/eq 0x07,r0
	bf loc_8c1bb22a
	mov 0x20,r0
	mov.b r13,@(r0,r15)
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	mov.l @(0x98,PC),r1
	mov.b @r3,r2
	mov.b r2,@r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c1bb212
	mov.l @(0x8C,PC),r0
	mov.b r11,@r0

loc_8c1bb212:
	mov.l @(0x8C,PC),r2
	mov.b @r2,r3
	mov.b r3,@r15
	mov.l @(0x80,PC),r0
	mov.b @r15,r1
	mov.b @r0,r3
	cmp/hs r3,r1
	bt loc_8c1bb2b0
	mov.l @(0x78,PC),r3
	mov.b @r15,r1
	bra loc_8c1bb2b0
	mov.b r1,@r3

loc_8c1bb22a:
	mov.b @r6,r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c1bb2b0
	mov 0x1C,r0
	mov.b r13,@(r0,r15)
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	mov.b @r3,r2
	mov.b r2,@r12
	mov.b @r12,r3
	tst r3,r3
	bf loc_8c1bb24a
	mov.b r11,@r12
	
loc_8c1bb24a:
	mov.l @(0x58,PC),r2
	mov.b @r12,r1
	mov.b @r2,r3
	cmp/hi r1,r3
	bf loc_8c1bb25c
	mov.l @(0x50,PC),r3
	mov.b @r12,r1
	bra loc_8c1bb2b0
	mov.b r1,@r3

loc_8c1bb25c:
	mov.l @(0x48,PC),r0
	mov.b @r2,r3
	mov.b r3,@r0
	mov.b @r2,r1
	extu.b r1,r1
	cmp/ge r11,r1
	bt loc_8c1bb2ac
	mov.b @r12,r1
	extu.b r1,r1
	cmp/gt r11,r1
	bf loc_8c1bb2b0
	bra loc_8c1bb2b0
	mov.b r11,@r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1bb278:
	#data 0x8C352E61
loc_8c1bb27c:
	#data 0x8C352E60
loc_8c1bb280:
	#data 0x8C352E63
loc_8c1bb284:
	#data 0x8C352E62
loc_8c1bb288:
	#data 0x8C352E5F
loc_8c1bb28c:
	#data 0x8C352E5E
loc_8c1bb290:
	#data 0x8C352E2C
loc_8c1bb294:
	#data 0x8C352E28
loc_8c1bb298:
	#data 0x8C352E64
loc_8c1bb29c:
	#data 0x8C352E2F
loc_8c1bb2a0:
	#data 0x8C352E31
loc_8c1bb2a4:
	#data 0x8C352E30
loc_8c1bb2a8:
	#data 0x8C352E32

;==============================================
loc_8c1bb2ac:
	mov.b @r2,r3
	mov.b r3,@r12

loc_8c1bb2b0:
	mov.l @(0xE4,PC),r2
	mov.b @(0x8,r15),r0
	mov.b @r2,r3
	cmp/hi r3,r0
	bt loc_8c1bb2be
	bra loc_8c1bafd2
	nop

loc_8c1bb2be:
	mov 0x18,r0
	mov.b @(r0,r15),r2
	tst r2,r2
	bf loc_8c1bb2d2
	mov.l @(0xD4,PC),r3
	mov.b r9,@r3
	mov.l @(0xD4,PC),r2
	mov.b r9,@r2
	mov.l @(0xD4,PC),r1
	mov.b r9,@r1

loc_8c1bb2d2:
	mov 0x24,r0
	mov.b @(r0,r15),r3
	tst r3,r3
	bf loc_8c1bb2dc
	mov.w r7,@r5

loc_8c1bb2dc:
	mov 0x28,r0
	mov.b @(r0,r15),r3
	tst r3,r3
	bf loc_8c1bb302
	mov.w r7,@r4
	mov.l @(0xC0,PC),r2
	mov.w @r2,r3
	extu.w r3,r3
	cmp/gt r7,r3
	bf loc_8c1bb2fa
	mov.w @r4,r1
	mov.l @(0xB8,PC),r3
	add 0x03,r1
	bra loc_8c1bb302
	mov.w r1,@r3

loc_8c1bb2fa:
	mov.w @r2,r0
	mov.l @(0xAC,PC),r3
	add 0x03,r0
	mov.w r0,@r3

loc_8c1bb302:
	mov 0x20,r0
	mov.b @(r0,r15),r2
	tst r2,r2
	bf loc_8c1bb30e
	mov.l @(0xA4,PC),r2
	mov.b r11,@r2

loc_8c1bb30e:
	mov 0x1C,r0
	mov.b @(r0,r15),r3
	tst r3,r3
	bf loc_8c1bb330
	mov.b r11,@r12
	mov.l @(0x98,PC),r2
	mov.b @r2,r3
	extu.b r3,r3
	cmp/gt r11,r3
	bf loc_8c1bb32a
	mov.l @(0x94,PC),r3
	mov.b @r12,r1
	bra loc_8c1bb330
	mov.b r1,@r3

loc_8c1bb32a:
	mov.l @(0x8C,PC),r0
	mov.b @r2,r3
	mov.b r3,@r0

loc_8c1bb330:
	mov.w @r5,r11
	mov.w @r4,r12
	extu.w r11,r2
	extu.w r12,r3
	cmp/gt r2,r3
	bf loc_8c1bb342
	mov.l @(0x7C,PC),r2
	bra loc_8c1bb346
	mov.w r11,@r2

loc_8c1bb342:
	mov.l @(0x78,PC),r1
	mov.w r12,@r1

loc_8c1bb346:
	mov.l @r14,r3
	mov.b @r3,r2
	mov.w @(0x48,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bt loc_8c1bb356
	bra loc_8c1bb558
	nop

loc_8c1bb356:
	mov.l @(0x68,PC),r2
	mov 0x23,r0
	mov.w @r2,r1
	extu.w r1,r1
	cmp/gt r0,r1
	bt loc_8c1bb366
	bra loc_8c1bb558
	nop

loc_8c1bb366:
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	mov.l @(0x50,PC),r1
	mov.b r3,@r1
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	mov.l @(0x18,PC),r0
	mov.b r3,@r0
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	mov r0,r2
	mov.b r3,@r2
	mov.l @(0x34,PC),r11
	bra loc_8c1bb4a8
	mov r13,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bb396:
	#data 0x00F0
	#align4

loc_8c1bb398:
	#data 0x8C352E21
loc_8c1bb39c:
	#data 0x8C352E61
loc_8c1bb3a0:
	#data 0x8C352E5F
loc_8c1bb3a4:
	#data 0x8C352E63
loc_8c1bb3a8:
	#data 0x8C352E28
loc_8c1bb3ac:
	#data 0x8C352E64
loc_8c1bb3b0:
	#data 0x8C352E2F
loc_8c1bb3b4:
	#data 0x8C352E30
loc_8c1bb3b8:
	#data 0x8C352E32
loc_8c1bb3bc:
	#data 0x8C352E66
loc_8c1bb3c0:
	#data 0x8C352DDC
loc_8c1bb3c4:
	#data 0x8C352E22
loc_8c1bb3c8:
	#data 0x8C352E58

;==============================================
loc_8c1bb3cc:
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	mov.b r3,@r6
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	mov.b r3,@r10
	mov.b @r10,r2
	mov.b @r6,r3
	add 0x02,r2
	tst r3,r3
	add r2,r5
	bf loc_8c1bb40a
	bra loc_8c1bb3fc
	mov r13,r4

loc_8c1bb3f4:
	mov.l @r14,r2
	add 0x01,r4
	add 0x01,r2
	mov.l r2,@r14

loc_8c1bb3fc:
	mov.b @r10,r2
	extu.b r4,r3
	extu.b r2,r2
	cmp/gt r2,r3
	bf loc_8c1bb3f4
	bra loc_8c1bb4a8
	nop

loc_8c1bb40a:
	mov.b @r6,r4
	extu.b r4,r0
	cmp/eq 0x01,r0
	bf.s loc_8c1bb44a
	mov r0,r4
	mov.l @r14,r12
	add 0x01,r12
	mov.l r12,@r14
	add 0xFF,r12
	mov.l @(0xF4,PC),r1
	mov.b @r12,r12
	mov.b @r1,r2
	mov.l @(0xEC,PC),r3
	tst r2,r2
	bt.s loc_8c1bb434
	mov.w @r3,r4
	mov.l @(0xEC,PC),r2
	extu.b r12,r12
	and r4,r12
	bra loc_8c1bb4a8
	mov.w r12,@r2

loc_8c1bb434:
	extu.b r12,r0
	mov.l r0,@r15
	shll r0
	mov.l @r15,r3
	and 0x03,r0
	shar r3
	add r3,r0
	mov.l @(0xD4,PC),r3
	and r4,r0
	bra loc_8c1bb4a8
	mov.w r0,@r3

loc_8c1bb44a:
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c1bb484
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	extu.b r3,r3
	shll8 r3
	mov.w r3,@r8
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	mov.w @r8,r2
	extu.b r3,r3
	or r2,r3
	mov.w r3,@r8
	mov.w @r8,r2
	mov.w @r11,r4
	extu.w r2,r2
	extu.w r4,r3
	cmp/ge r2,r3
	bt loc_8c1bb4a8
	bra loc_8c1bb4a8
	mov.w r4,@r8

loc_8c1bb484:
	cmp/eq 0x03,r0
	bf loc_8c1bb4a8
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	add 0xFF,r2
	mov.b @r2,r3
	mov.l @(0x88,PC),r2
	extu.b r3,r3
	mov.w r3,@r2
	extu.w r3,r3
	mov.l @(0x84,PC),r1
	mov.w @r1,r4
	extu.w r4,r2
	cmp/ge r3,r2
	bt loc_8c1bb4a8
	mov.l @(0x74,PC),r2
	mov.w r4,@r2

loc_8c1bb4a8:
	mov.l @(0x78,PC),r1
	extu.b r5,r3
	mov.b @r1,r2
	extu.b r2,r2
	cmp/ge r2,r3
	bf loc_8c1bb3cc
	mov.l @(0x70,PC),r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r7,r3
	bt loc_8c1bb558
	mov.l @(0x58,PC),r1
	mov.w @r1,r0
	tst r0,r0
	bt loc_8c1bb558
	mov.l @(0x64,PC),r2
	mov.b r13,@r2
	mov.l @(0x4C,PC),r3
	mov.l @(0x60,PC),r4
	mov.w @r3,r5
	extu.w r5,r5
	cmp/pl r5
	bf loc_8c1bb534
	mov 0x03,r0
	cmp/ge r0,r5
	bt loc_8c1bb534
	mov.b @r4,r0
	or 0x02,r0
	mov.b r0,@r4
	mov.l @(0x30,PC),r1
	mov.l @(0x30,PC),r3
	mov.b @r1,r2
	mov.w @r3,r4
	mov.l @(0x44,PC),r5
	tst r2,r2
	bt.s loc_8c1bb4fa
	extu.w r4,r4
	tst r13,r4
	bf loc_8c1bb500
	bra loc_8c1bb506
	nop

loc_8c1bb4fa:
	mov 0x02,r2
	tst r2,r4
	bt loc_8c1bb506

loc_8c1bb500:
	mov.b @r5,r0
	bra loc_8c1bb50a
	or 0x04,r0

loc_8c1bb506:
	mov.b @r5,r0
	and 0xFB,r0

loc_8c1bb50a:
	bra loc_8c1bb53a
	mov.b r0,@r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1bb510:
	#data 0x8C352E54
loc_8c1bb514:
	#data 0x8C352E16
loc_8c1bb518:
	#data 0x8C352E52
loc_8c1bb51c:
	#data 0x8C352E5A
loc_8c1bb520:
	#data 0x8C352E5C
loc_8c1bb524:
	#data 0x8C352E21
loc_8c1bb528:
	#data 0x8C34B2AB
loc_8c1bb52c:
	#data 0x8C352E50
loc_8c1bb530:
	#data 0x8C34B2A5

;==============================================
loc_8c1bb534:
	mov.b @r4,r0
	and 0xFD,r0
	mov.b r0,@r4

loc_8c1bb53a:
	mov.l @(0xE4,PC),r3
	mov.b @r3,r0
	or 0x20,r0
	mov.b r0,@r3
	mov.l @(0xE0,PC),r2
	mov.b @r2,r0
	or 0x80,r0
	mov.b r0,@r2
	mov.l @(0xDC,PC),r1
	mov.l @(0xDC,PC),r3
	mov.l @(0xE0,PC),r2
	mov.w @r1,r6
	mov.w @r8,r5
	jsr @r2
	mov.w @r3,r4

loc_8c1bb558:
	mov.l @(0xD8,PC),r4
	mov.b r9,@r4
	mov.l @(0xD8,PC),r5
	mov.b r9,@r5
	mov.l @r14,r3
	mov.b @r3,r2
	mov.w @(0xB6,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c1bb574
	mov.l @r14,r1
	mov.b @(0x1,r1),r0
	tst r0,r0
	bf loc_8c1bb57c

loc_8c1bb574:
	mov.l @r14,r3
	mov.b @(0x2,r3),r0
	tst r0,r0
	bt loc_8c1bb618

loc_8c1bb57c:
	mov.l @r14,r2
	add 0x03,r2
	mov.l r2,@r14
	mov r2,r0
	nop
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1bb5be
	mov.l @r14,r2
	mov.b @(0x1,r2),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c1bb5be
	mov.l @r14,r2
	mov.b @(0x2,r2),r0
	extu.b r0,r0
	cmp/eq 0x4D,r0
	bf loc_8c1bb5be
	mov.l @r14,r2
	mov.b @(0x3,r2),r0
	extu.b r0,r0
	cmp/eq 0x4D,r0
	bf loc_8c1bb5be
	mov.l @r14,r2
	mov.b @(0x4,r2),r0
	extu.b r0,r0
	cmp/eq 0x41,r0
	bf loc_8c1bb5be
	mov.b r13,@r4
	mov.l @r14,r2
	add 0x05,r2
	mov.l r2,@r14

loc_8c1bb5be:
	mov.l @r14,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1bb618
	mov.l @r14,r2
	mov.b @(0x1,r2),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c1bb618
	mov.l @r14,r2
	mov.b @(0x2,r2),r0
	extu.b r0,r0
	cmp/eq 0x4D,r0
	bf loc_8c1bb618
	mov.l @r14,r2
	mov.b @(0x3,r2),r0
	extu.b r0,r0
	cmp/eq 0x49,r0
	bf loc_8c1bb618
	mov.l @r14,r2
	mov.b @(0x4,r2),r0
	extu.b r0,r0
	cmp/eq 0x58,r0
	bf loc_8c1bb618
	mov.l @(0x48,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1bb5fc
	mov.b r13,@r5

loc_8c1bb5fc:
	mov.l @(0x40,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1bb612
	mov.l @r14,r2
	mov.l @(0x3C,PC),r4
	mov.b @(0x5,r2),r0
	mov.b r0,@(0x6,r4)
	mov.l @r14,r2
	mov.b @(0x6,r2),r0
	mov.b r0,@(0x7,r4)

loc_8c1bb612:
	mov.l @r14,r3
	add 0x07,r3
	mov.l r3,@r14

loc_8c1bb618:
	mov.l @(0x2C,PC),r5
	bra loc_8c1bb656
	mov 0x02,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bb61e:
	#data 0x00FF
	#align4

loc_8c1bb620:
	#data 0x8C34B2A3
loc_8c1bb624:
	#data 0x8C34B2A5
loc_8c1bb628:
	#data 0x8C352E5A
loc_8c1bb62c:
	#data 0x8C352E52
loc_8c1BB630:
	#data loc_8c1BE034
loc_8c1bb634:
	#data 0x8C352E20
loc_8c1bb638:
	#data 0x8C352E8D
loc_8c1bb63c:
	#data 0x8C34B2B4
loc_8c1bb640:
	#data 0x8C352E16
loc_8c1bb644:
	#data 0x8C352E8E
loc_8c1bb648:
	#data 0x8C352DDC

;==============================================
loc_8c1bb64c:
	mov.l @(0x7C,PC),r3
	add 0x01,r4
	mov.l @r3,r2
	add 0x01,r2
	mov.l r2,@r3

loc_8c1bb656:
	mov.w @r5,r2
	extu.b r4,r3
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c1bb64c
	mov.l @(0x6C,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1bb67c
	mov.l @(0x68,PC),r1
	mov 0x0C,r2
	mov.b r2,@r1
	mov.l @(0x68,PC),r2
	mov.w @(0x54,PC),r0
	mov.b r0,@r2
	mov.l @(0x64,PC),r3
	mov.l @(0x68,PC),r1
	bra loc_8c1bb6b2
	mov.b r9,@r3

loc_8c1Bb67c:
	mov.l @(0x64,PC),r2
	mov.b @r2,r0
	tst r0,r0
	bt loc_8c1bb690
	mov.l @(0x60,PC),r0
	mov.b r13,@r0
	mov.l @(0x60,PC),r4
	mov.l @(0x64,PC),r3
	jsr @r3
	mov 0x0A,r5

loc_8c1Bb690:
	mov.l @(0x40,PC),r3
	mov 0x06,r2
	mov 0x7F,r1
	mov.b r2,@r3
	mov.l @(0x3C,PC),r0
	mov.b r1,@r0
	mov.l @(0x3C,PC),r2
	mov.b r13,@r2
	mov.l @(0x3C,PC),r3
	mov.b r13,@r3
	mov.l @(0x4C,PC),r1
	mov.b r9,@r1
	mov.l @(0x4C,PC),r0
	mov.l @(0x50,PC),r3
	mov.l @r0,r2
	mov.l r2,@r3
	mov.l @(0x4C,PC),r1

loc_8c1Bb6b2:
	add 0x2C,r15
	mov.b r13,@r1
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
loc_8c1BB6c8:
	#data 0x00AF
	#align4

loc_8c1BB6cc:
	#data 0x8C352BC0
loc_8c1BB6d0:
	#data 0x8C352E03
loc_8c1BB6d4:
	#data 0x8C352E00
loc_8c1BB6d8:
	#data 0x8C352E01
loc_8c1BB6dc:
	#data 0x8C352E05
loc_8c1BB6e0:
	#data 0x8C352E04
loc_8c1BB6e4:
	#data 0x8C352E5F
loc_8c1BB6e8:
	#data 0x8C34CF68
loc_8c1BB6ec:
	#data 0x8C34CF6C
loc_8c1BB6F0:
	#data loc_8c1B3EEC
loc_8c1BB6f4:
	#data 0x8C352E11
loc_8c1BB6f8:
	#data 0x8C34B2CC
loc_8c1BB6fc:
	#data 0x8C352DF0
loc_8c1BB700:
	#data 0x8C352E0F


;==============================================
loc_8c1BB704:
	mov.l @(0xF0,PC),r2
	add 0xFC,r15
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bb7a0
	mov.l @(0xEC,PC),r4
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c1bb78a
	mov 0x00,r3
	mov 0x01,r5
	mov.b r3,@r4
	mov r5,r4
	mov.b r5,@r15
	mov.l @(0xDC,PC),r1
	mov.l @(0xE0,PC),r0
	mov.l @r1,r3
	mov.l r3,@r0
	mov.l @(0xDC,PC),r5

loc_8c1bb72a:
	mov.w @r5,r3
	extu.w r4,r2
	extu.w r3,r3
	cmp/ge r3,r2
	bt.s loc_8c1bb752
	add 0x01,r4
	mov.b @r15,r3
	add 0x01,r3
	mov.b r3,@r15
	add 0xFF,r3
	mov.l @(0xC4,PC),r2
	extu.b r3,r3
	mov.l @r2,r1
	add 0x01,r1
	mov.l r1,@r2
	add 0xFF,r1
	mov.b @r1,r2
	extu.b r2,r2
	cmp/eq r2,r3
	bt loc_8c1bb72a

loc_8c1bb752:
	mov.l @(0xBC,PC),r1
	add 0xFF,r4
	mov.l @(0xB4,PC),r2
	mov.w @r1,r3
	add r2,r4
	extu.w r3,r3
	extu.w r4,r4
	cmp/eq r3,r4
	bf loc_8c1bb782
	mov.b @r15,r0
	add 0xFF,r0
	mov.b r0,@r15
	extu.b r0,r0
	mov.l @(0x94,PC),r2
	mov.l @r2,r3
	add 0xFF,r3
	mov.l r3,@r2
	mov.b @r3,r2
	extu.b r2,r2
	cmp/eq r2,r0
	bf loc_8c1bb782
	mov.l @(0x94,PC),r3
	jmp @r3
	add 0x04,r15

loc_8c1bb782:
	mov.l @(0x94,PC),r3
	mov 0x03,r4
	jmp @r3
	add 0x04,r15

loc_8c1bb78a:
	mov.l @(0x90,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1bb7a0
	mov.l @(0x88,PC),r1
	mov 0x0D,r0
	mov.b r0,@r1
	mov.l @(0x88,PC),r0
	mov.w @(0x54,PC),r2
	mov.b r2,@r0

loc_8c1bb7a0:
	rts
	add 0x04,r15

;==============================================
loc_8c1BB7A4:
	rts
	nop

;==============================================
loc_8c1BB7A8:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov.l @(loc_8c1BB828,pc),r3 ; r3 set to 0x8C352E13
	sts.l pr,@-r15
	mov.b r14,@r3 ; r3 ??
	mov.l @(loc_8c1BB81C,pc),r2 ; r2 set to 0x8C352E03
	mov.b @r2,r4
	extu.b r4,r1
	tst r1,r1
	bt/s loc_8c1BB840
	mov 0x01,r13 ; r13 set to 0x01
	mov.l @(loc_8c1BB82C,pc),r1 ; r1 set to 0x8C352E02
	mov.b @r1,r0
	tst r0,r0
	bt loc_8c1BB840
	mov.l @(loc_8c1BB830,pc),r3 ; r3 set to 0x8C1BCB80
	jsr @r3
	nop
	mov.l @(loc_8c1BB834,pc),r3 ; r3 set to 0x8C352E14
	mov.l @(loc_8c1BB824,pc),r5 ; r5 set to 0x8C352E01
	mov.b @r3,r2 ; r2 ??
	mov.l @(loc_8c1BB820,pc),r4 ; r4 set to 0x8C352E00
	tst r2,r2
	bf loc_8c1BB7E2
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r2,@r4 ; r4 ??
	bra loc_8c1BB7EA
	mov.b r13,@r5

loc_8c1BB7E2:
	mov 0x05,r1 ; r1 set to 0x05
	mov 0x03,r2 ; r2 set to 0x03
	mov.b r2,@r4
	mov.b r1,@r5

loc_8c1BB7EA:
	mov.l @(loc_8c1BB838,pc),r3 ; r3 set to 0x8C352E05, r3 set to 0x8C352E05
	mov.b r14,@r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov.l @(loc_8c1BB83C,pc),r2 ; r2 set to 0x8C352E04, r2 set to 0x8C352E04
	bra loc_8c1BB862
	mov.b r13,@r2


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BB7f4:
	#data 0x00E3
	#align4

loc_8c1BB7f8:
	#data 0x8C352E63
loc_8c1BB7fc:
	#data 0x8C352E1F
loc_8c1BB800:
	#data 0x8C352BC0
loc_8c1BB804:
	#data 0x8C352BCC
loc_8c1BB808:
	#data 0x8C352DDC
loc_8c1BB80c:
	#data 0x0000FFFF
loc_8c1BB810:
	#data 0x8C352E66
loc_8c1BB814:
	#data bank1c.loc_8c1c1664
loc_8c1BB818:
	#data bank1c.loc_8c1c166A
loc_8c1BB81C:
	#data 0x8C352E03
loc_8c1BB820:
	#data 0x8C352E00
loc_8c1BB824:
	#data 0x8C352E01
loc_8c1BB828:
	#data 0x8C352E13
loc_8c1BB82C:
	#data 0x8C352E02
loc_8c1BB830:
	#data loc_8c1BCB80
loc_8c1BB834:
	#data 0x8C352E14
loc_8c1BB838:
	#data 0x8C352E05
loc_8c1BB83C:
	#data 0x8C352E04

;==============================================
loc_8c1bb840:
	extu.b r4,r4
	tst r4,r4
	bf loc_8c1bb862
	mov.l @(loc_8C1BBA14,pc),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1bb862
	mov.l @(loc_8C1BBA18,pc),r0
	mov.b @r0,r3
	tst r3,r3
	bt loc_8c1bb862
	mov.l @(loc_8C1BBA1C,pc),r1
	mov.l @(loc_8C1BBA20,pc),r0
	mov.b @r1,r3
	mov.b r3,@r0
	mov.l @(loc_8C1BBA18,pc),r2
	mov.b r14,@r2

loc_8c1bb862:
	mov.l @(loc_8C1BBA18,pc),r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c1bb88c
	mov.l @(loc_8C1BBA24,pc),r0
	mov.b @r0,r3
	tst r3,r3
	bf loc_8c1bb88c
	mov.l @(loc_8C1BBA28,pc),r4
	mov.b r14,@r4
	mov.l @(loc_8C1BBA2C,pc),r2
	mov.l @(loc_8C1BBA20,pc),r0
	mov.b @r2,r3
	mov.b @r0,r1
	cmp/eq r1,r3
	bt loc_8c1bb88c
	mov.b r13,@r4
	mov.l @(loc_8C1BBA30,pc),r3
	mov.l @(loc_8C1BBA34,pc),r2
	mov.l @r3,r1
	mov.l r1,@r2

loc_8c1bb88c:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bb894:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x19C,PC),r3
	jsr @r3
	mov 0x00,r14
	mov.l @(0x19C,PC),r2
	mov.w @r2,r3
	add 0x01,r3
	mov.w r3,@r2
	mov.l @(0x198,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c1bb8ba
	mov.l @(0x194,PC),r3
	mov.b @r3,r0
	mov.l @(0x194,PC),r2
	or 0x80,r0
	jsr @r2
	mov.b r0,@r3

loc_8c1bb8ba:
	mov.l @(0x184,PC),r3
	mov.b r14,@r3
	mov.l @(0x158,PC),r1
	mov.l @(0x158,PC),r5
	mov.b @r1,r2
	mov.l @(0x158,PC),r7
	mov.l @(0x164,PC),r6
	tst r2,r2
	bf.s loc_8c1bb8da
	mov.b @r5,r4
	mov.b r4,@r7
	mov.b @r5,r2
	mov.b r2,@r6
	mov.l @(0x150,PC),r0
	bra loc_8c1bb8fc
	mov.b r14,@r0

loc_8c1bb8da:
	mov.l @(0x170,PC),r0
	mov.b @r0,r2
	tst r2,r2
	bf loc_8c1bb8fa
	mov.l @(0x130,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bb8fa
	mov.b r4,@r7
	mov.b @r5,r3
	mov.b r3,@r6
	mov.l @(0x124,PC),r2
	mov.b r14,@r2
	mov.l @(0x130,PC),r3
	bra loc_8c1bb93e
	mov.b r14,@r3

loc_8c1bb8fa:
	mov.b r4,@r6

loc_8c1bb8fc:
	mov.l @(0x14C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bb93e
	mov.l @(0x10C,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1bb93e
	mov.l @(0x140,PC),r3
	jsr @r3
	nop
	mov.l @(0x140,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1bb928
	mov.l @(0x13C,PC),r3
	mov 0x02,r2
	mov 0x01,r1
	mov.b r2,@r3
	mov.l @(0x138,PC),r0
	bra loc_8c1bb934
	mov.b r1,@r0

loc_8c1bb928:
	mov.l @(0x12C,PC),r2
	mov 0x05,r1
	mov 0x03,r3
	mov.b r3,@r2
	mov.l @(0x128,PC),r0
	mov.b r1,@r0

loc_8c1bb934:
	mov.l @(0x128,PC),r3
	mov 0x01,r2
	mov.b r14,@r3
	mov.l @(0x128,PC),r1
	mov.b r2,@r1

loc_8c1bb93e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bb944:
	mov.l r14,@-r15
	mov.l @(0x120,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt.s loc_8c1bb958
	mov 0x01,r14
	mov.l @(0xE8,PC),r1
	mov.b r14,@r1

loc_8c1bb958:
	mov.l @(0xF0,PC),r3
	mov.b @r3,r4
	extu.b r4,r2
	tst r2,r2
	bt loc_8c1bb998
	mov.l @(0xB0,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bt loc_8c1bb998
	mov.l @(0xE4,PC),r1
	jsr @r1
	nop
	mov.l @(0xE0,PC),r2
	mov.l @(0xE8,PC),r5
	mov.b @r2,r3
	mov.l @(0xE0,PC),r4
	tst r3,r3
	bf.s loc_8c1bb986
	mov 0x00,r2
	mov 0x02,r3
	mov.b r3,@r4
	bra loc_8c1bb98e
	mov.b r14,@r5

loc_8c1bb986:
	mov 0x05,r3
	mov 0x03,r1
	mov.b r1,@r4
	mov.b r3,@r5

loc_8c1bb98e:
	mov.l @(0xD0,PC),r1
	mov.b r2,@r1
	mov.l @(0xD0,PC),r3
	bra loc_8c1bb9bc
	mov.b r14,@r3

loc_8c1bb998:
	extu.b r4,r4
	tst r4,r4
	bf loc_8c1bb9bc
	mov.l @(0x74,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c1bb9bc
	mov.l @(0x70,PC),r0
	mov.b @r0,r2
	tst r2,r2
	bt loc_8c1bb9bc
	mov.l @(0x6C,PC),r1
	mov 0x00,r3
	mov.l @(0x6C,PC),r0
	mov.b @r1,r2
	mov.b r2,@r0
	mov.l @(0x5C,PC),r2
	mov.b r3,@r2

loc_8c1bb9bc:
	mov.l @(0x58,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bf loc_8c1bb9d0
	mov.l @(0x60,PC),r1
	mov.b r14,@r1
	mov.l @(0x64,PC),r2
	mov.l @(0x68,PC),r0
	mov.l @r2,r3
	mov.l r3,@r0

loc_8c1bb9d0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bb9d6:
	mov.l @(0x64,PC),r1
	mov.w @r1,r3
	add 0x01,r3
	mov.w r3,@r1
	mov.l @(0x34,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c1bba0e
	mov.l @(0x30,PC),r0
	mov.b @r0,r2
	tst r2,r2
	bf loc_8c1bba0e
	mov.l @(0x50,PC),r1
	mov 0x00,r2
	mov 0x01,r4
	mov.b r2,@r1
	mov.l @(0x24,PC),r0
	mov.l @(0x70,PC),r2
	mov.b @r0,r3
	mov.b r3,@r2
	mov.l @(0x70,PC),r3
	mov.b r4,@r3
	mov.l @(0x2C,PC),r1
	mov.l @(0x2C,PC),r0
	mov.l @r1,r2
	mov.l r2,@r0
	mov.l @(0x1C,PC),r3
	mov.b r4,@r3

loc_8c1bba0e:
	rts
	nop

;==============================================
	#align4

loc_8C1BBA14:
	#data 0x8C352E02
loc_8C1BBA18:
	#data 0x8C352E11
loc_8C1BBA1C:
	#data 0x8C352DE0
loc_8C1BBA20:
	#data 0x8C352DE2
loc_8C1BBA24:
	#data 0x8C352E10
loc_8C1BBA28:
	#data 0x8C352DFC
loc_8C1BBA2C:
	#data 0x8C352DE1
loc_8C1BBA30:
	#data 0x8C34B2CC
loc_8C1BBA34:
	#data 0x8C352DF0
loc_8c1bba38:
	#data loc_8c1b61E4
loc_8c1bba3c:
	#data 0x8C34B322
loc_8c1bba40:
	#data 0x8C352E13
loc_8c1bba44:
	#data 0x8C34B29F
loc_8c1bba48:
	#data bank1c.loc_8c1c165E
loc_8c1bba4c:
	#data 0x8C352E03
loc_8c1bba50:
	#data loc_8c1bCB80
loc_8c1bba54:
	#data 0x8C352E14
loc_8c1bba58:
	#data 0x8C352E00
loc_8c1bba5c:
	#data 0x8C352E01
loc_8c1bba60:
	#data 0x8C352E05
loc_8c1bba64:
	#data 0x8C352E04
loc_8c1bba68:
	#data 0x8C352E0D
loc_8c1bba6c:
	#data 0x8C352BBC
loc_8c1bba70:
	#data 0x8C352BBE

;==============================================
loc_8c1BBA74:
	mov.l r14,@-r15
	mov 0x01,r14 ; r14 set to 0x01
	mov.l @(loc_8c1BBAB0,pc),r3 ; r3 set to 0x8C352E16
	mov.l @(loc_8c1BBAAC,pc),r1 ; r1 set to 0x8C352E05
	mov.b @r3,r0
	mov.b @r1,r2
	tst r0,r0
	movt r0
	extu.b r2,r2
	xor r0,r2
	mov.l @(loc_8c1BBAB4,pc),r0 ; r0 set to 0x8C352E06
	shll r2
	add 0x01,r2
	mov.b r2,@r0 ; r0 ??? bc r2 is ???
	mov.l @(loc_8c1BBAB8,pc),r3 ; r3 set to 0x8C352E00
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	mov 0x0E,r1 ; r1 set to 0x0E
	cmp/hs r1,r0
	bt loc_8c1BBB34
	shll r0
	mov r0,r1 ; r1 ??? bc r0 is ???
	mova @(loc_8c1BBABC,pc),r0  ; r0 set to 0x8C1BBABC
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???

braf_8c1bbaa6:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1BBAAC:
	#data 0x8C352E05
loc_8c1BBAB0:
	#data 0x8C352E16
loc_8c1BBAB4:
	#data 0x8C352E06
loc_8c1BBAB8:
	#data 0x8C352E00

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BBABC:
#data16 {loc_8c1bbad8-braf_8c1bbaa6-4} ; 0x002E
#data16 {loc_8c1bbadc-braf_8c1bbaa6-4} ; 0x0032
#data16 {loc_8c1bbae8-braf_8c1bbaa6-4} ; 0x003E
#data16 {loc_8c1bbae8-braf_8c1bbaa6-4} ; 0x003E
#data16 {loc_8c1bbae8-braf_8c1bbaa6-4} ; 0x003E
#data16 {loc_8c1bbae8-braf_8c1bbaa6-4} ; 0x003E
#data16 {loc_8c1bbaf0-braf_8c1bbaa6-4} ; 0x0046
#data16 {loc_8c1bbaf6-braf_8c1bbaa6-4} ; 0x004C
#data16 {loc_8c1bbafa-braf_8c1bbaa6-4} ; 0x0050
#data16 {loc_8c1bbb02-braf_8c1bbaa6-4} ; 0x0058
#data16 {loc_8c1bbb0e-braf_8c1bbaa6-4} ; 0x0064
#data16 {loc_8c1bbb0e-braf_8c1bbaa6-4} ; 0x0064
#data16 {loc_8c1bbb16-braf_8c1bbaa6-4} ; 0x006C
#data16 {loc_8c1bbb30-braf_8c1bbaa6-4} ; 0x0086

;==============================================
loc_8c1bbad8:
	bra loc_8c1bbb34
	nop

;==============================================
loc_8c1bbadc:
	mov.l @(0x1D0,PC),r1
	mov 0x00,r2
	bsr loc_8c1bbb40
	mov.b r2,@r1
	bra loc_8c1bbb34
	nop

;==============================================
loc_8c1bbae8:
	bsr loc_8c1bbe6a
	nop
	bra loc_8c1bbb34
	nop

;==============================================
loc_8c1bbaf0:
	mov.l @(0x1C0,PC),r0
	bra loc_8c1bbb06
	mov.b r14,@r0

;==============================================
loc_8c1bbaf6:
	bra loc_8c1bbb0e
	nop

;==============================================
loc_8c1bbafa:
	bsr loc_8c1bc58c
	nop
	bra loc_8c1bbb34
	nop

;==============================================
loc_8c1bbb02:
	mov.l @(0x1B4,PC),r1
	mov.b r14,@r1

loc_8c1bbb06:
	bsr loc_8c1bc486
	nop
	bra loc_8c1bbb34
	nop

;==============================================
loc_8c1bbb0e:
	bsr loc_8c1bc486
	nop
	bra loc_8c1bbb34
	nop

;==============================================
loc_8c1bbb16:
	bsr loc_8c1bbfb0
	nop
	mov.l @(0x1A0,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bbb34
	mov.l @(0x19C,PC),r0
	mov.b @r0,r3
	tst r3,r3
	bt loc_8c1bbb34
	mov.l @(0x198,PC),r3
	bra loc_8c1bbb34
	mov.b r14,@r3

;==============================================
loc_8c1bbb30:
	bsr loc_8c1bc3d6
	nop

loc_8c1BBB34:
	lds.l @r15+,pr
	mov.l @(loc_8c1BBCC8,pc),r1 ; r1 set to 0x8C352E00
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@r1 ; r1 ??
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bbb40:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x16C,PC),r0
	sts.l pr,@-r15
	mov.b @r0,r3
	tst r3,r3
	bf loc_8c1bbb5c
	bra loc_8c1bbe52
	nop

loc_8c1bbb5c:
	mov.l @(0x16C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bbb68
	bra loc_8c1bbe52
	nop

loc_8c1bbb68:
	mov.l @(0x164,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1bbb74
	bra loc_8c1bbe52
	nop

loc_8c1bbb74:
	mov.l @(0x15C,PC),r4
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c1bbb92
	mov.l @(0x158,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bbb88
	bra loc_8c1bbe52
	nop

loc_8c1bbb88:
	mov 0x00,r3
	bsr loc_8c1bcacc
	mov.b r3,@r4
	bra loc_8c1bbe52
	nop

loc_8c1bbb92:
	mov.l @(0x148,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bf loc_8c1bbb9e
	bra loc_8c1bbe52
	nop

loc_8c1bbb9e:
	mov 0x01,r8
	mov.l @(0x13C,PC),r3
	mov.b r8,@r3
	mov.l @(0x13C,PC),r1
	mov.l @(0x140,PC),r2
	mov.b @r1,r0
	tst r0,r0
	movt r0
	xor r8,r0
	shll r0
	add 0x01,r0
	mov.b r0,@r2
	mov.l @(0x120,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bbbc2
	bra loc_8c1bbe52
	nop

loc_8c1bbbc2:
	mov.l @(0x12C,PC),r3
	mov.l @(0x124,PC),r4
	jsr @r3
	nop
	extu.w r0,r0
	tst r0,r0
	bf loc_8c1bbbd4
	bra loc_8c1bbe52
	nop

loc_8c1bbbd4:
	mov.l @(0x11C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bbbe0
	bra loc_8c1bbe52
	nop

loc_8c1bbbe0:
	mov.l @(0x114,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1bbbec
	bra loc_8c1bbe52
	nop

loc_8c1bbbec:
	mov.l @(0x114,PC),r12
	mov.l @(0x11C,PC),r2
	mov.b @r12,r3
	mov.l @r2,r0
	extu.b r3,r3
	mov.l @(0x104,PC),r10
	shll r3
	mov.l @(0x10C,PC),r14
	mov.w @(r0,r3),r3
	mov.l @(0xEC,PC),r13
	extu.w r3,r3
	mov.l @(0xFC,PC),r11
	tst r3,r3
	bt loc_8c1bbc0c
	bra loc_8c1bbda2
	nop

loc_8c1bbc0c:
	mov.l @(0x104,PC),r2
	mov.l @(0x100,PC),r1
	mov.w @r2,r9
	mov.w @r1,r3
	sub r3,r9
	mov.l @(0x100,PC),r3
	extu.w r9,r0
	mov.w @r3,r2
	extu.w r2,r2
	cmp/ge r2,r0
	bt loc_8c1bbc4e
	extu.w r9,r0
	tst r0,r0
	bf loc_8c1bbc2c
	bra loc_8c1bbe52
	nop

loc_8c1bbc2c:
	mov.l @(0xF0,PC),r2
	mov.l @(0xEC,PC),r5
	jsr @r2
	mov r5,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1bbc3e
	bra loc_8c1bbe52
	nop

loc_8c1bbc3e:
	mov.l @(0xE4,PC),r2
	jsr @r2
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1bbc4e
	bra loc_8c1bbe52
	nop

loc_8c1bbc4e:
	mov.l @(0xD8,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1bbc68
	mov.l @(0xD4,PC),r1
	mov.l @(0xD4,PC),r0
	mov.l @r1,r2
	mov.l r2,@r0
	mov 0x00,r2
	mov.l @(0xC4,PC),r3
	mov.b r8,@r3
	mov.l @(0x8C,PC),r1
	mov.b r2,@r1

loc_8c1bbc68:
	mov.l @(0xC8,PC),r2
	mov.b @r12,r3
	mov.l @r2,r0
	mov.l @r11,r1
	extu.b r3,r3
	mov.l @r14,r2
	shll r3
	sub r1,r2
	mov.w r2,@(r0,r3)
	mov.l @r13,r3
	add 0x01,r3
	mov.l r3,@r13
	mov.l @(0x64,PC),r1
	mov.b @r1,r2
	mov.b r2,@-r3
	mov.l @r13,r3
	add 0x01,r3
	mov.l r3,@r13
	mov.b @r12,r2
	extu.b r2,r2
	shll r2
	mov.b r2,@-r3

loc_8c1bbc94:
	mov.l @r13,r3
	add 0x01,r3
	mov.l r3,@r13
	mov.l @(0x9C,PC),r0
	mov.b @r0,r2
	mov.l @(0x10,PC),r0
	extu.b r2,r2
	mov.b @r0,r1
	shll r2
	add r1,r2
	mov.b r2,@-r3
	bra loc_8c1bbd5c
	mov 0x03,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1BBCb0:
	#data 0x8C352E04
loc_8c1BBCb4:
	#data 0x8C352E1B
loc_8c1BBCb8:
	#data 0x8C352E1E
loc_8c1BBCbc:
	#data 0x8C352E1A
loc_8c1BBCc0:
	#data 0x8C352E5F
loc_8c1BBCc4:
	#data 0x8C34CF68
loc_8c1BBCC8:
	#data 0x8C352E00
loc_8c1BBCcc:
	#data 0x8C352E0F
loc_8c1BBCd0:
	#data 0x8C352E0D
loc_8c1BBCd4:
	#data 0x8C352BBE
loc_8c1BBCd8:
	#data 0x8C352E17
loc_8c1BBCdc:
	#data 0x8C352E4E
loc_8c1BBCe0:
	#data 0x8C352E05
loc_8c1BBCe4:
	#data 0x8C352E16
loc_8c1BBCe8:
	#data 0x8C352E06
loc_8c1BBCec:
	#data 0x8C352BCC
loc_8c1BBCF0:
	#data loc_8c1B6626
loc_8c1BBCF4:
	#data 0x8C352E11
loc_8c1BBCF8:
	#data 0x8C352E13
loc_8c1BBCFc:
	#data 0x8C351774
loc_8c1BBd00:
	#data 0x8C351770
loc_8c1BBd04:
	#data 0x8C352DE2
loc_8c1BBd08:
	#data 0x8C352BC4
loc_8c1BBd0c:
	#data 0x8C352DD8
loc_8c1BBd10:
	#data 0x8C352BC8
loc_8c1BBd14:
	#data 0x8C351784
loc_8c1BBd18:
	#data 0x8C352E64
loc_8c1BBd1c:
	#data 0x8C352BD0
loc_8c1BBD20:
	#data bank1a.loc_8c1a0500
loc_8c1BBD24:
	#data loc_8c1B6240
loc_8c1bbd28:
	#data 0x8C352DFC
loc_8c1bbd2c:
	#data 0x8C34B2CC
loc_8c1bbd30:
	#data 0x8C352DF0
loc_8c1bbd34:
	#data 0x8C352DD4
loc_8c1bbd38:
	#data 0x8C352DE3

;==============================================
loc_8c1bbd3c:
	mov.l @r13,r1
	add 0x01,r1
	mov.l r1,@r13
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	mov.b @r3,r2
	mov.b r2,@-r1
	mov.l @r14,r1
	mov.l @r10,r3
	cmp/hi r3,r1
	bf.s loc_8c1bbd5c
	add 0x01,r4
	mov.l @r11,r0
	mov.l r0,@r14

loc_8c1Bbd5c:
	extu.w r9,r3
	tst r3,r3
	bt.s loc_8c1bbd70
	add 0xFF,r9
	mov.l @(0x1EC,PC),r2
	extu.w r4,r1
	mov.w @r2,r3
	extu.w r3,r3
	cmp/ge r3,r1
	bf loc_8c1bbd3c

loc_8c1Bbd70:
	mov.l @(0x1E8,PC),r2
	mov.l @(0x1E4,PC),r5
	mov.w @r2,r3
	add r4,r5
	add r5,r3
	mov.w r3,@r2
	mov.l @(0x1E0,PC),r1
	mov.b @r12,r2
	mov.l @r1,r0
	extu.b r2,r2
	shll r2
	mov.w r5,@(r0,r2)
	mov.b @r12,r0
	add 0x01,r0
	and 0x7F,r0
	mov.b r0,@r12
	mov.l @(0x1D0,PC),r3
	jsr @r3
	mov 0x01,r5
	mov.l @(0x1D0,PC),r2
	mov.w @r2,r3
	add 0x01,r3
	mov.w r3,@r2
	bra loc_8c1bbe52
	nop

loc_8c1Bbda2:
	mov.l @(0x1C8,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bf.s loc_8c1bbdbe
	mov 0x03,r4
	mov.l @(0x1C0,PC),r1
	mov.l @(0x1C4,PC),r0
	mov.l @r1,r2
	mov.l r2,@r0
	mov 0x00,r2
	mov.l @(0x1B4,PC),r3
	mov.b r8,@r3
	mov.l @(0x1BC,PC),r1
	mov.b r2,@r1

loc_8c1Bbdbe:
	mov.l @r13,r3
	add 0x01,r3
	mov.l r3,@r13
	mov.l @(0x1B4,PC),r1
	mov.b @r1,r2
	mov.b r2,@-r3
	mov.l @r13,r3
	add 0x01,r3
	mov.l r3,@r13
	mov.b @r12,r2
	extu.b r2,r2
	shll r2
	mov.b r2,@-r3
	mov.l @r13,r3
	add 0x01,r3
	mov.l r3,@r13
	mov.l @(0x1A0,PC),r0
	mov.b @r0,r2
	mov.l @(0x1A0,PC),r0
	extu.b r2,r2
	mov.b @r0,r1
	shll r2
	add r1,r2
	mov.b r2,@-r3
	mov.l @(0x198,PC),r2
	mov.b @r12,r3
	mov.l @r2,r0
	extu.b r3,r3
	mov.l @r11,r1
	shll r3
	mov.w @(r0,r3),r3
	extu.w r3,r3
	add r1,r3
	mov.l r3,@r14
	bra loc_8c1bbe28
	mov r8,r5

loc_8c1Bbe06:
	mov.l @r13,r2
	add 0x01,r2
	mov.l r2,@r13
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	mov.b @r3,r1
	mov.b r1,@-r2
	mov.l @r14,r2
	mov.l @r10,r3
	cmp/hi r3,r2
	bf.s loc_8c1bbe26
	add 0x01,r4
	mov.l @r11,r0
	mov.l r0,@r14

loc_8c1Bbe26:
	add 0x01,r5

loc_8c1Bbe28:
	mov.l @(0x134,PC),r1
	extu.w r5,r3
	mov.b @r12,r2
	mov.l @r1,r0
	extu.b r2,r2
	shll r2
	mov.w @(r0,r2),r2
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c1bbe06
	mov.b @r12,r0
	add 0x01,r0
	and 0x7F,r0
	mov.b r0,@r12
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov 0x01,r5
	mov.l @(0x140,PC),r2
	mov.w @r2,r3
	add 0x01,r3
	mov.w r3,@r2

loc_8c1Bbe52:
	lds.l @r15+,pr
	mov.l @(0x138,PC),r1
	mov 0x00,r2
	mov.b r2,@r1
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1Bbe6a:
	mov.l @(0x128,PC),r0
	sts.l pr,@-r15
	mov.b @r0,r3
	tst r3,r3
	bf loc_8c1bbf4e
	mov.l @(0x124,PC),r3
	mov.l @(0x120,PC),r4
	jsr @r3
	nop
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1bbec4
	mov.l @(0x11C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bbec4
	mov.l @(0x10C,PC),r4
	mov 0x01,r5
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.l @(0xE4,PC),r1
	mov.b @r1,r2
	mov.b r2,@-r3
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.l @(0x100,PC),r0
	mov.b @r0,r2
	mov.b r2,@-r3
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov 0x03,r4
	mov.l @(0xD0,PC),r1
	mov.b @r1,r2
	mov.l @(0xD0,PC),r1
	extu.b r2,r2
	mov.b @r1,r0
	shll r2
	add r0,r2
	mov.b r2,@-r3
	mov.l @(0xA4,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c1Bbec4:
	mov.l @(0xD8,PC),r4
	mov 0x18,r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/gt r2,r3
	bt loc_8c1bbf4e
	mov.b @r4,r1
	mov 0x1C,r7
	mov 0x03,r3
	add 0x04,r1
	mov.b r1,@r4
	mov.l @(0xD0,PC),r4
	mov.l @(0xC8,PC),r6
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4
	add 0xFF,r0
	extu.b r0,r0
	mov.b r3,@(r0,r6)
	mov.b @r4,r1
	extu.b r1,r1
	cmp/ge r7,r1
	bf.s loc_8c1bbef6
	mov 0x00,r5
	mov.b r5,@r4

loc_8c1Bbef6:
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4
	add 0xFF,r0
	mov.l @(0x7C,PC),r2
	extu.b r0,r0
	mov.b @r2,r3
	mov.b r3,@(r0,r6)
	mov.b @r4,r1
	extu.b r1,r1
	cmp/ge r7,r1
	bf loc_8c1bbf10
	mov.b r5,@r4

loc_8c1Bbf10:
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4
	add 0xFF,r0
	mov.l @(0x88,PC),r2
	extu.b r0,r0
	mov.b @r2,r3
	mov.b r3,@(r0,r6)
	mov.b @r4,r1
	extu.b r1,r1
	cmp/ge r7,r1
	bf loc_8c1bbf2a
	mov.b r5,@r4

loc_8c1Bbf2a:
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4
	add 0xFF,r0
	mov.l @(0x4C,PC),r2
	extu.b r0,r0
	mov.b @r2,r3
	mov.l @(0x48,PC),r2
	extu.b r3,r3
	mov.b @r2,r1
	shll r3
	add r1,r3
	mov.b r3,@(r0,r6)
	mov.b @r4,r1
	extu.b r1,r1
	cmp/ge r7,r1
	bf loc_8c1bbf4e
	mov.b r5,@r4

loc_8c1bbf4e:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1BBF54:
	#data 0x8C352E64
loc_8c1BBF58:
	#data 0x0000FFFD
loc_8c1BBF5c:
	#data 0x8C352BC8
loc_8c1BBF60:
	#data 0x8C352DD8
loc_8c1BBF64:
	#data loc_8c1B6750
loc_8c1BBF68:
	#data 0x8C34B318
loc_8c1BBF6c:
	#data 0x8C352DFC
loc_8c1BBF70:
	#data 0x8C34B2CC
loc_8c1BBF74:
	#data 0x8C352DF0
loc_8c1BBF78:
	#data 0x8C352E11
loc_8c1BBF7c:
	#data 0x8C352E06
loc_8c1BBF80:
	#data 0x8C352DE3
loc_8c1BBF84:
	#data 0x8C352E04
loc_8c1BBF88:
	#data 0x8C352DD4
loc_8c1BBF8c:
	#data 0x8C34B31C
loc_8c1BBF90:
	#data 0x8C352E4E
loc_8c1BBF94:
	#data 0x8C352E0E
loc_8c1BBF98:
	#data 0x8C352BCC
loc_8c1BBF9C:
	#data loc_8c1B6626
loc_8c1Bbfa0:
	#data 0x8C352E8C
loc_8c1Bbfa4:
	#data 0x8C352E01
loc_8c1Bbfa8:
	#data 0x8C352E6E
loc_8c1Bbfac:
	#data 0x8C352E8B

;==============================================
loc_8c1BBFb0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x168,PC),r4
	mov.l @(0x16C,PC),r3
	add 0xF8,r15
	jsr @r3
	nop
	extu.w r0,r0
	tst r0,r0
	bf loc_8c1bbfd0
	bra loc_8c1bc3c6
	nop

loc_8c1bbfd0:
	mov.l @(0x15C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bbfdc
	bra loc_8c1bc3c6
	nop

loc_8c1bbfdc:
	mov.l @(0x148,PC),r5
	mov 0x00,r6
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.l @(0x14C,PC),r1
	mov.b @r1,r2
	mov.b r2,@-r3
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.w @(0x130,PC),r2
	mov.b r2,@-r3
	add 0xD3,r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r2,@-r3
	add 0xFE,r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r2,@-r3
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r6,@-r3
	mov 0x13,r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r3,@-r2
	mov.l @r5,r2
	mov 0x03,r7
	mov 0x05,r13
	add 0x01,r2
	mov.l r2,@r5
	mov.b r7,@-r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r7,@-r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.l @(0x100,PC),r3
	mov.b @r3,r0
	or 0x8A,r0
	mov.b r0,@-r2
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.l @(0xF4,PC),r1
	mov.b @r1,r0
	or 0x89,r0
	mov.b r0,@-r2
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.l @(0xEC,PC),r3
	mov.b @r3,r0
	mov.b r0,@-r2
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov 0x02,r14
	mov.b r13,@-r2
	mov.l @r5,r0
	add 0x01,r0
	mov.l r0,@r5
	mov.b r14,@-r0
	mov.l @(0xD8,PC),r2
	mov.l @r5,r1
	mov.w @r2,r4
	add 0x01,r1
	extu.w r4,r4
	mov.l r1,@r5
	shlr2 r4
	shlr2 r4
	shlr r4
	mov.b r4,@-r1
	mov.l @r5,r0
	mov.w @r2,r4
	add 0x01,r0
	shll2 r4
	mov.l r0,@r5
	shll r4
	mov.b r4,@-r0
	mov 0x06,r0
	mov.l @r5,r1
	add 0x01,r1
	mov.l r1,@r5
	mov.b r0,@-r1
	mov.l @r5,r1
	add 0x01,r1
	mov.l r1,@r5
	mov.b r14,@-r1
	mov 0x01,r12
	mov.l @(0xA4,PC),r0
	mov.l @r5,r3
	mov.w @r0,r4
	add 0x01,r3
	extu.w r4,r4
	mov.l r3,@r5
	shlr2 r4
	shlr2 r4
	shlr r4
	mov.b r4,@-r3
	mov.l @r5,r1
	mov.w @r0,r4
	add 0x01,r1
	shll2 r4
	mov.l r1,@r5
	shll r4
	mov.b r4,@-r1
	mov 0x07,r1
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r1,@-r3
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r12,@-r3
	mov.l @r5,r1
	add 0x01,r1
	mov.l r1,@r5
	mov.l @(0x70,PC),r2
	mov.b @r2,r3
	mov.b r3,@-r1
	mov 0x08,r3
	mov.l @r5,r1
	add 0x01,r1
	mov.l r1,@r5
	mov.b r3,@-r1
	mov.l @r5,r1
	add 0x01,r1
	mov.l r1,@r5
	mov.b r12,@-r1
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.l @(0x54,PC),r0
	mov.b @r0,r1
	mov.b r1,@-r3
	mov.l @(0x54,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf.s loc_8c1bc10e
	mov 0x19,r4
	bra loc_8c1bc23e
	nop

loc_8c1bc10e:
	mov.l @(0x48,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c1bc122
	mov.l @(0x44,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bf loc_8c1bc122
	bra loc_8c1bc23e
	nop

loc_8c1bc122:
	bra loc_8c1bc160
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BC126:
	#data 0x00AF
	#align4

loc_8c1BC128:
	#data 0x8C352BCC
loc_8c1BC12C:
	#data loc_8c1B6626
loc_8c1BC130:
	#data 0x8C352E8C
loc_8c1BC134:
	#data 0x8C352E06
loc_8c1BC138:
	#data 0x8C352E61
loc_8c1BC13c:
	#data 0x8C352E63
loc_8c1BC140:
	#data 0x8C352E5F
loc_8c1BC144:
	#data 0x8C352E26
loc_8c1BC148:
	#data 0x8C352E2A
loc_8c1BC14c:
	#data 0x8C352E2E
loc_8c1BC150:
	#data 0x8C352E2F
loc_8c1BC154:
	#data 0x8C34B2AB
loc_8c1BC158:
	#data 0x8C352E05
loc_8c1BC15c:
	#data 0x8C352E50

;==============================================
loc_8c1BC160:
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.w @(0x68,PC),r2
	mov.b r2,@-r3
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r6,@-r3
	mov 0x0F,r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r3,@-r2
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r6,@-r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r7,@-r3
	mov 0x56,r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r3,@-r2
	mov 0x34,r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r3,@-r2
	mov.l @r5,r2
	mov 0x32,r3
	add 0x01,r2
	mov.l r2,@r5
	mov.b r3,@-r2
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r12,@-r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r12,@-r3
	mov.l @(0x1C,PC),r3
	mov.l @(0x14,PC),r4
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1bc1dc
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b @r4,r1
	mov.b r1,@-r2
	bra loc_8c1bc1f6
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bc1d2:
	#data 0x00f0
	#align4

loc_8c1bc1d4:
	#data 0x8c352e52
loc_8c1bc1d8:
	#data 0x8c352e16

;==============================================
loc_8c1bc1dc:
	mov.l @r5,r0
	mov r0,r3
	add 0x01,r0
	mov.l r0,@r5
	mov.w @r4,r0
	extu.w r0,r0
	mov.l r0,@r15
	shll r0
	mov.l @r15,r2
	and 0x03,r0
	shar r2
	add r2,r0
	mov.b r0,@r3

loc_8c1bc1f6:
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r14,@-r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r14,@-r3
	mov.l @(0x124,PC),r4
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.w @r4,r3
	extu.w r3,r3
	shlr8 r3
	mov.b r3,@-r2
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b @r4,r3
	mov.b r3,@-r2
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r7,@-r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r12,@-r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.l @(0xF8,PC),r1
	mov 0x2B,r4
	mov.b @r1,r3
	mov.b r3,@-r2

loc_8c1bc23e:
	mov.l @(0xF8,PC),r2
	mov.l @(0xF0,PC),r11
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bc262
	mov.l @(0xF0,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c1bc262
	mov.l @(0xEC,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1bc282
	mov.l @(0xE8,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1bc282

loc_8c1bc262:
	mov.l @r5,r2
	add 0x03,r4
	add 0x01,r2
	mov.l r2,@r5
	mov.w @(0xBC,PC),r3
	mov.b r3,@-r2
	mov.l @r5,r2
	mov.l r2,@r11
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r6,@-r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r6,@-r2

loc_8c1bc282:
	mov.l @(0xB4,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf.s loc_8c1bc294
	mov 0x4D,r10
	mov.l @(0xAC,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1bc2cc

loc_8c1bc294:
	mov.l @r11,r3
	mov.b r6,@r3
	mov.l @r11,r2
	mov r13,r0
	nop
	mov.b r0,@(0x1,r2)
	add 0x05,r4
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r12,@-r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r7,@-r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r10,@-r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r10,@-r2
	mov 0x41,r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r2,@-r3

loc_8c1bc2cc:
	mov.l @(0x70,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1bc3b2
	mov.l @(0x60,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1bc2e6
	mov.l @(0x64,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c1bc3b2

loc_8c1bc2e6:
	mov.l @r11,r3
	mov.b @(0x1,r3),r0
	add 0x07,r0
	mov.b r0,@(0x1,r3)
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r14,@-r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r13,@-r2
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r10,@-r3
	mov 0x49,r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r3,@-r2
	mov 0x58,r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.b r3,@-r2
	mov.l @(0x2C,PC),r7
	mov.l @(0x2C,PC),r6
	mov.b @r7,r2
	mov.b r2,@r6
	mov.b @(0x1,r7),r0
	mov.b r0,@(0x1,r6)
	bra loc_8c1bc350
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bc32a:
	#data 0x00FF
	#align4

loc_8c1bc32c:
	#data 0x8C352E56
loc_8c1bc330:
	#data 0x8C352E5A
loc_8c1bc334:
	#data 0x8C352BD0
loc_8c1bc338:
	#data 0x8C352E05
loc_8c1bc33c:
	#data 0x8C352E20
loc_8c1bc340:
	#data 0x8C34B2B4
loc_8c1bc344:
	#data 0x8C352E8D
loc_8c1bc348:
	#data 0x8C352E96
loc_8c1bc34c:
	#data 0x8C352E8E

;==============================================
loc_8c1bc350:
	mov.b @(0x2,r7),r0
	mov.b r0,@(0x2,r6)
	mov.b @(0x3,r7),r0
	mov.b r0,@(0x3,r6)
	mov.b @(0x4,r7),r0
	mov.b r0,@(0x4,r6)
	mov.b @(0x5,r7),r0
	mov.b r0,@(0x5,r6)
	mov.l @(0x1E8,PC),r2
	mov.l @(0x1E4,PC),r7
	mov.b @r2,r3
	tst r3,r3
	bt.s loc_8c1bc39c
	add 0x07,r4
	mov r6,r3
	add 0x06,r3
	mov.l r3,@r15
	add 0x07,r6
	mov.l @r7,r1
	shlr8 r1
	mov.b r1,@r3
	mov.l r6,@(0x4,r15)
	mov.l @r7,r3
	mov.b r3,@r6
	mov.l @r5,r1
	add 0x01,r1
	mov.l r1,@r5
	mov.l @r15,r3
	mov.b @r3,r3
	mov.b r3,@-r1
	mov.l @r5,r1
	add 0x01,r1
	mov.l r1,@r5
	mov.l @(0x4,r15),r3
	mov.b @r3,r3
	mov.b r3,@-r1
	bra loc_8c1bc3b2
	nop

loc_8c1bc39c:
	mov.l @r5,r0
	add 0x01,r0
	mov.l r0,@r5
	mov.l @r7,r3
	shlr8 r3
	mov.b r3,@-r0
	mov.l @r5,r1
	add 0x01,r1
	mov.l r1,@r5
	mov.l @r7,r3
	mov.b r3,@-r1

loc_8c1bc3b2:
	add 0x08,r15
	mov.l @(0x198,PC),r2
	lds.l @r15+,pr
	mov 0x01,r5
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c1bc3c6:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c1bc3d6:
	mov.l r14,@-r15
	mov.l @(0x178,PC),r2
	sts.l pr,@-r15
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bc480
	mov.l @(0x178,PC),r3
	mov.l @(0x170,PC),r4
	jsr @r3
	nop
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1bc480
	mov.l @(0x16C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bc480
	mov.l @(0x15C,PC),r5
	mov 0x02,r4
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.l @(0x160,PC),r1
	mov.b @r1,r2
	mov.b r2,@-r3
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.l @(0x158,PC),r0
	mov.b @r0,r2
	mov.l @(0x158,PC),r0
	extu.b r2,r2
	mov.b @r0,r1
	shll2 r2
	shll2 r2
	or r1,r2
	mov.b r2,@-r3
	mov.l @(0x14C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt.s loc_8c1bc44a
	mov 0x01,r14
	mov.l @(0x148,PC),r7
	bra loc_8c1bc43c
	mov r14,r6

loc_8c1bc430:
	mov.l @r5,r2
	add 0x01,r4
	add 0x01,r2
	mov.l r2,@r5
	mov.b r6,@-r2
	add 0x01,r6

loc_8c1bc43c:
	mov.w @r7,r2
	extu.w r6,r3
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c1bc430
	bra loc_8c1bc472
	nop

loc_8c1bc44a:
	mov.l @(0x130,PC),r6
	mov.l @(0x128,PC),r0
	bra loc_8c1bc468
	mov r14,r7

loc_8c1bc452:
	mov.l @r5,r2
	add 0x01,r7
	add 0x01,r4
	add 0x01,r2
	mov.l r2,@r5
	mov.l @r6,r3
	add 0x01,r3
	mov.l r3,@r6
	add 0xFF,r3
	mov.b @r3,r1
	mov.b r1,@-r2

loc_8c1bc468:
	mov.w @r0,r2
	extu.w r7,r3
	extu.w r2,r2
	cmp/ge r2,r3
	bf loc_8c1bc452

loc_8c1bc472:
	lds.l @r15+,pr
	mov.l @(0x108,PC),r2
	mov 0x01,r5
	mov.b r14,@r2
	mov.l @(0xD4,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c1bc480:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c1bc486:
	sts.l pr,@-r15
	mov.l @(0xD0,PC),r3
	mov.l @(0xCC,PC),r4
	jsr @r3
	nop
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1bc4ce
	mov.l @(0xC8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bc4ce
	mov.l @(0xB8,PC),r4
	mov 0x01,r5
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.l @(0xB8,PC),r1
	mov.b @r1,r2
	mov.b r2,@-r3
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov 0x02,r4
	mov.l @(0xB0,PC),r0
	mov.b @r0,r2
	mov.l @(0xB0,PC),r0
	extu.b r2,r2
	mov.b @r0,r1
	shll2 r2
	shll2 r2
	or r1,r2
	mov.b r2,@-r3
	mov.l @(0x84,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c1bc4ce:
	mov.l @(0x90,PC),r4
	mov 0x19,r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/gt r2,r3
	bt loc_8c1bc540
	mov.b @r4,r1
	mov 0x1C,r7
	mov 0x02,r3
	add 0x03,r1
	mov.b r1,@r4
	mov.l @(0xA0,PC),r4
	mov.l @(0x9C,PC),r6
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4
	add 0xFF,r0
	extu.b r0,r0
	mov.b r3,@(r0,r6)
	mov.b @r4,r1
	extu.b r1,r1
	cmp/ge r7,r1
	bf.s loc_8c1bc500
	mov 0x00,r5
	mov.b r5,@r4

loc_8c1bc500:
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4
	add 0xFF,r0
	mov.l @(0x58,PC),r2
	extu.b r0,r0
	mov.b @r2,r3
	mov.b r3,@(r0,r6)
	mov.b @r4,r1
	extu.b r1,r1
	cmp/ge r7,r1
	bf loc_8c1bc51a
	mov.b r5,@r4

loc_8c1bc51a:
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4
	add 0xFF,r0
	mov.l @(0x44,PC),r2
	extu.b r0,r0
	mov.b @r2,r3
	mov.l @(0x40,PC),r2
	extu.b r3,r3
	mov.b @r2,r1
	shll2 r3
	shll2 r3
	or r1,r3
	mov.b r3,@(r0,r6)
	mov.b @r4,r1
	extu.b r1,r1
	cmp/ge r7,r1
	bf loc_8c1bc540
	mov.b r5,@r4

loc_8c1bc540:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1BC548:
	#data 0x8C34B2CC
loc_8c1BC54c:
	#data 0x8C352E16
loc_8c1BC550:
	#data loc_8c1B6750
loc_8c1BC554:
	#data 0x8C352E0E
loc_8c1BC558:
	#data 0x8C352BCC
loc_8c1BC55C:
	#data loc_8c1B6626
loc_8c1BC560:
	#data 0x8C352E8C
loc_8c1BC564:
	#data 0x8C352E06
loc_8c1BC568:
	#data 0x8C352E04
loc_8c1BC56C:
	#data 0x8C352E01
loc_8c1BC570:
	#data 0x8C352E1F
loc_8c1BC574:
	#data 0x8C352E66
loc_8c1BC578:
	#data 0x8C352DDC
loc_8c1BC57c:
	#data 0x8C352BC0
loc_8c1bc580:
	#data 0x8C352E17
loc_8c1bc584:
	#data 0x8C352E6E
loc_8c1bc588:
	#data 0x8C352E8B

;==============================================
loc_8c1bc58c:
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	mov.l @(0xCC,PC),r4
	jsr @r3
	nop
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1bc656
	mov.l @(0xC8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bc656
	mov.l @(0xB8,PC),r4
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.l @(0xBC,PC),r1
	mov.b @r1,r2
	mov.b r2,@-r3
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.l @(0xB4,PC),r0
	mov.b @r0,r2
	mov.l @(0xB4,PC),r0
	extu.b r2,r2
	mov.b @r0,r1
	shll2 r2
	shll2 r2
	or r1,r2
	mov.b r2,@-r3
	mov.l @(0xAC,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1bc638
	mov.l @r4,r1
	mov 0x07,r3
	add 0x01,r1
	mov.l r1,@r4
	mov.l @(0x9C,PC),r2
	mov.b @r2,r0
	extu.b r0,r0
	shld r3,r0
	or 0x40,r0
	mov.b r0,@-r1
	mov.l @r4,r1
	mov.l @(0x94,PC),r7
	add 0x01,r1
	mov.l r1,@r4
	mov.b @r7,r0
	mov.b r0,@-r1
	mov.l @(0x8C,PC),r5
	mov.b @r5,r1
	tst r1,r1
	bt loc_8c1bc60a
	mov.l @r4,r1
	add 0x01,r1
	mov.l r1,@r4
	mov.b @r5,r0
	mov.b r0,@-r1
	bra loc_8c1bc60c
	mov 0x05,r4

loc_8c1bc60a:
	mov 0x04,r4

loc_8c1bc60c:
	mov.b @r7,r3
	mov.w @(0x4A,PC),r6
	extu.b r3,r3
	cmp/eq r6,r3
	bf.s loc_8c1bc61c
	mov 0x01,r5
	mov.l @(0x6C,PC),r3
	mov.b r5,@r3

loc_8c1bc61c:
	mov.b @r7,r2
	extu.b r2,r2
	cmp/eq r6,r2
	bf loc_8c1bc64e
	mov.l @(0x64,PC),r2
	mov.b r5,@r2
	mov.l @(0x64,PC),r3
	mov.b r5,@r3
	mov 0x00,r5
	mov.l @(0x64,PC),r1
	mov.b r5,@r1
	mov.l @(0x64,PC),r2
	bra loc_8c1bc64e
	mov.b r5,@r2

loc_8c1bc638:
	mov.l @r4,r1
	mov 0x07,r3
	add 0x01,r1
	mov.l r1,@r4
	mov 0x03,r4
	mov.l @(0x58,PC),r2
	mov.b @r2,r0
	extu.b r0,r0
	shld r3,r0
	or 0x60,r0
	mov.b r0,@-r1

loc_8c1bc64e:
	mov.l @(0x50,PC),r2
	mov 0x01,r5
	jmp @r2
	lds.l @r15+,pr

loc_8c1bc656:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1BC65c:
	#data 0x00C0
	#align4

loc_8c1BC660:
	#data 0x8C352BCC
loc_8c1BC664:
	#data loc_8c1B6626
loc_8c1BC668:
	#data 0x8C352E8C
loc_8c1BC66c:
	#data 0x8C352E06
loc_8c1BC670:
	#data 0x8C352E04
loc_8c1BC674:
	#data 0x8C352E01
loc_8c1BC678:
	#data 0x8C352DE9
loc_8c1BC67c:
	#data 0x8C352DE8
loc_8c1BC680:
	#data 0x8C352E0C
loc_8c1BC684:
	#data 0x8C352E0B
loc_8c1BC688:
	#data 0x8C352E0D
loc_8c1BC68c:
	#data 0x8C352E0E
loc_8c1BC690:
	#data 0x8C352E17
loc_8c1BC694:
	#data 0x8C352DFC
loc_8c1BC698:
	#data 0x8C352E11
loc_8c1BC69c:
	#data 0x8C352DE5
loc_8c1BC6A0:
	#data loc_8c1B6750

;==============================================
loc_8c1BC6A4:
	mov.l r14,@-r15
	mov.l @(0x1DC,PC),r2
	sts.l pr,@-r15
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bc6bc
	mov.l @(0x1D4,PC),r3
	jsr @r3
	nop
	mov.l @(0x1D4,PC),r2
	jsr @r2
	nop

loc_8c1BC6BC:
	mov.l @(0x1D0,PC),r4
	mov 0x00,r14
	mov.l @(0x1D0,PC),r2
	mov.l @r4,r3
	mov.l r3,@r2
	mov.l @(0x1D4,PC),r3
	mov.l @(0x1CC,PC),r5
	mov.l r3,@r5
	mov.l @r4,r1
	mov.l @(0x1D0,PC),r6
	mov.l r1,@r6
	mov.l @r4,r3
	mov.l @(0x1CC,PC),r0
	mov.l r3,@r0
	mov.l @(0x1CC,PC),r3
	mov.w r14,@r3
	mov.l @(0x1CC,PC),r2
	mov.w r14,@r2
	mov.l @(0x1CC,PC),r1
	mov.w r14,@r1
	mov.l @(0x1CC,PC),r4
	mov.l @(0x1D0,PC),r0
	mov.l @r4,r3
	mov.l r3,@r0
	mov.l @(0x1CC,PC),r3
	mov.l @r4,r2
	mov.l r2,@r3
	mov.l @(0x1CC,PC),r1
	mov.w r14,@r1
	mov.l @(0x1CC,PC),r2
	mov.w r14,@r2
	mov.l @(0x1CC,PC),r3
	mov.b r14,@r3
	mov.l @(0x1CC,PC),r1
	mov.b r14,@r1
	mov.l @(0x1CC,PC),r2
	mov.b r14,@r2
	mov.l @(0x1CC,PC),r3
	mov.b r14,@r3
	mov.l @(0x1CC,PC),r1
	mov.b r14,@r1
	mov.l @(0x1CC,PC),r2
	mov.b r14,@r2
	mov.l @(0x1CC,PC),r3
	mov.b r14,@r3
	mov.l @(0x1CC,PC),r1
	mov.b r14,@r1
	mov.l @(0x1CC,PC),r7
	mov.l @(0x1CC,PC),r2
	mov.l r2,@r7
	mov.l @(0x1D0,PC),r3
	mov.l @(0x1CC,PC),r4
	mov.l r3,@r4
	mov.l @r6,r0
	mov r14,r6
	mov.l @r5,r3
	mov r14,r5
	mov.l @r7,r2
	mov 0x7F,r7
	sub r3,r0
	mov.w r0,@r2

loc_8c1BC736:
	add 0x01,r6
	mov.l @r4,r0
	extu.w r6,r3
	cmp/gt r7,r3
	mov.w r14,@(r0,r5)
	bf.s loc_8c1bc736
	add 0x02,r5
	bsr loc_8c1bcb80
	nop
	mov.l @(0x1AC,PC),r2
	mov.b r14,@r2
	mov.l @(0x1AC,PC),r3
	mov.b r14,@r3
	mov.l @(0x1AC,PC),r1
	mov.b r14,@r1
	mov.l @(0x1AC,PC),r2
	mov.w r14,@r2
	mov.l @(0x1AC,PC),r3
	mov.l @(0x1B0,PC),r1
	mov.w @r3,r6
	mov.l @(0x1B4,PC),r3
	mov.l @(0x1AC,PC),r2
	mov.w @r1,r5
	jsr @r3
	mov.w @r2,r4
	mov.l @(0x1AC,PC),r1
	jsr @r1
	nop
	mov.l @(0x1AC,PC),r3
	lds.l @r15+,pr
	mov.b r14,@r3
	mov.l @(0x1A8,PC),r2
	mov.b r14,@r2
	mov.l @(0x1A8,PC),r1
	mov.b r14,@r1
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BC780:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(loc_8c1BC884,pc),r2 ; r2 set to 0x8C352E0E
	sts.l pr,@-r15
	mov.b @r2,r3
	tst r3,r3
	add 0xF4,r15
	bt loc_8c1BC79C
	bra loc_8c1BCABA
	nop

loc_8c1BC79C:
	mov.l @(loc_8c1BC934,pc),r6 ; r6 set to 0x8C352BBA
	mov.l @(loc_8c1BC930,pc),r7 ; r7 set to 0x8C352BAC
	mov.l @(loc_8c1BC93C,pc),r4 ; r4 set to 0x8C352BB0
	mov.l @(loc_8c1BC938,pc),r5 ; r5 set to 0x8C352BB8
	mov.l @(loc_8c1BC8C0,pc),r11 ; r11 set to 0x8C35279C
	mov.l @(loc_8c1BC8D4,pc),r10 ; r10 set to 0x8C352DE3
	mov.l @(loc_8c1BC92C,pc),r14 ; r14 set to 0x8C352BD0
	mov.l @(loc_8c1BC928,pc),r13 ; r13 set to 0x8C3527A0
	bra loc_8c1BC9E4
	mov 0x01,r12

loc_8c1BC7B0:
	mov.l @r4,r9
	add 0x01,r9
	mov.l r9,@r4
	add 0xFF,r9
	mov.l @r4,r3
	mov.b @r10,r1
	mov.b @r9,r9
	mov.l r3,@(0x04,r15)
	extu.b r1,r1
	mov.l @r7,r2
	extu.b r9,r3
	cmp/eq r1,r3
	mov.l r2,@r15
	bt/s loc_8c1BC7D2
	mov.l r13,@(0x08,r15)
	bra loc_8c1BC948
	nop

loc_8c1bc7d2:
	mov.l @(0x04,r15),r2
	mov.l @r15,r3
	cmp/hi r3,r2
	bf loc_8c1bc7de
	mov.l @(0x08,r15),r2
	mov.l r2,@r4

loc_8c1bc7de:
	mov.w @r5,r3
	add 0xFF,r3
	mov.w r3,@r5
	mov.l @r4,r9
	add 0x01,r9
	mov.l r9,@r4
	add 0xFF,r9
	mov.l @r7,r3
	mov.l @r4,r2
	mov.b @r9,r9
	cmp/hi r3,r2
	bf/s loc_8c1bc7fa
	extu.b r9,r9
	mov.l r13,@r4

loc_8c1bc7fa:
	mov.w @r5,r3
	add 0xFF,r3
	mov.w r3,@r5
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	add 0xFF,r2
	mov.b @r2,r3
	extu.b r3,r3
	mov.w r3,@r6
	mov.l @r7,r2
	mov.l @r4,r1
	cmp/hi r2,r1
	bf/s loc_8c1bc81a
	shll8 r9
	mov.l r13,@r4

loc_8c1bc81a:
	mov.w @r5,r2
	add 0xFF,r2
	mov.w r2,@r5
	mov.w @r6,r3
	or r9,r3
	mov.w r3,@r6
	mov.b @r10,r0
	add 0x01,r0
	and 0x7F,r0
	mov.b r0,@r10
	mov.l @(loc_8C1BC8B4,pc),r2
	mov.l @r2,r3
	mov.l r3,@r14
	bra loc_8c1bc870
	mov r12,r9

loc_8c1bc838:
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	add 0xFF,r3
	mov.b @r3,r1
	mov.b r1,@-r2
	mov.l @r4,r2
	mov.l @r7,r3
	cmp/hi r3,r2
	bf loc_8c1bc854
	mov.l r13,@r4

loc_8c1bc854:
	mov.w @r5,r3
	add 0xFF,r3
	mov.w r3,@r5
	mov.w @r11,r2
	add 0x01,r2
	mov.w r2,@r11
	mov.l @(loc_8C1BC940,pc),r0
	mov.l @r14,r1
	mov.l @r0,r3
	cmp/hi r3,r1
	bf/s loc_8c1bc870
	add 0x01,r9
	mov.l @(loc_8C1BC944,pc),r2
	mov.l r2,@r14

loc_8c1bc870:
	mov.w @r6,r2
	extu.w r9,r3
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c1bc838
	mov.l @(loc_8C1BC8B4,pc),r3
	mov.l @r14,r2
	bra loc_8c1bc9e4
	mov.l r2,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1bc884:
	#data 0x8C352E0E
loc_8c1bc888:
	#data bank1a.loc_8c1a0434
loc_8c1bc88c:
	#data bank1a.loc_8c1a048C
loc_8c1bc890:
	#data 0x8C35177C
loc_8c1bc894:
	#data 0x8C351778
loc_8c1bc898:
	#data 0x8C351770
loc_8c1bc89c:
	#data 0x8C350770
loc_8c1bc8a0:
	#data 0x8C352BC4
loc_8c1bc8a4:
	#data 0x8C351780
loc_8c1bc8a8:
	#data 0x8C351784
loc_8c1bc8ac:
	#data 0x8C352BC8
loc_8c1bc8b0:
	#data 0x8C351788
loc_8C1BC8B4:
	#data 0x8C352794
loc_8C1BC8B8:
	#data 0x8C352790
loc_8C1BC8Bc:
	#data 0x8C352798
loc_8c1bc8c0:
	#data 0x8C35279C
loc_8c1bc8c4:
	#data 0x8C35279E
loc_8c1bc8c8:
	#data 0x8C352E14
loc_8c1bc8cc:
	#data 0x8C352DE2
loc_8c1bc8d0:
	#data 0x8C352DE1
loc_8c1bc8d4:
	#data 0x8C352DE3
loc_8c1bc8d8:
	#data 0x8C352DE0
loc_8c1bc8dc:
	#data 0x8C352DE4
loc_8c1bc8e0:
	#data 0x8C352E13
loc_8c1bc8e4:
	#data 0x8C352E1F
loc_8c1bc8e8:
	#data 0x8C352DD4
loc_8c1bc8ec:
	#data 0x8C352BD4
loc_8c1bc8f0:
	#data 0x8C352DD8
loc_8c1bc8f4:
	#data 0x8C352CD4
loc_8c1bc8f8:
	#data 0x8C352DFC
loc_8c1bc8fc:
	#data 0x8C352E11
loc_8c1bc900:
	#data 0x8C352E18
loc_8c1bc904:
	#data 0x8C3537E8
loc_8c1bc908:
	#data 0x8C352E5A
loc_8c1bc90c:
	#data 0x8C352E56
loc_8c1bc910:
	#data 0x8C352E52
loc_8c1bc914:
	#data loc_8c1bE034
loc_8c1bc918:
	#data loc_8c1b3558
loc_8c1bc91c:
	#data 0x8C352E8C
loc_8c1bc920:
	#data 0x8C352E8B
loc_8c1bc924:
	#data 0x8C352E8A
loc_8c1bc928:
	#data 0x8C3527A0
loc_8c1bc92c:
	#data 0x8C352BD0
loc_8c1bc930:
	#data 0x8C352BAC
loc_8c1bc934:
	#data 0x8C352BBA
loc_8c1bc938:
	#data 0x8C352BB8
loc_8c1bc93c:
	#data 0x8C352BB0
loc_8C1BC940:
	#data 0x8C35278C
loc_8C1BC944:
	#data 0x8C35178A

;==============================================
loc_8c1bc948:
	extu.b r9,r0
	cmp/ge r1,r0
	bt loc_8c1bc952
	mov.w @(0x1A,PC),r2
	add r2,r9

loc_8c1bc952:
	mov.l @(0x1C,PC),r2
	extu.b r9,r9
	sub r1,r9
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r3,r9
	bt loc_8c1bc978
	mov.l @(0x10,PC),r1
	mov.b r12,@r1
	mov.l @r4,r3
	add 0xFF,r3
	bra loc_8c1bc9e4
	mov.l r3,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bc96c:
	#data 0x0080
	#align4

loc_8c1bc970:
	#data 0x8C352E2F
loc_8c1bc974:
	#data 0x8C352BBD

;==============================================
loc_8c1bc978:
	mov.l @(0x4,r15),r0
	mov.l @r15,r1
	cmp/hi r1,r0
	bf loc_8c1bc984
	mov.l @(0x8,r15),r3
	mov.l r3,@r4

loc_8c1bc984:
	mov.l @r4,r9
	add 0x01,r9
	mov.l r9,@r4
	add 0xFF,r9
	mov.l @r7,r3
	mov.l @r4,r2
	mov.b @r9,r9
	cmp/hi r3,r2
	bf.s loc_8c1bc99a
	extu.b r9,r9
	mov.l r13,@r4

loc_8c1bc99a:
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	add 0xFF,r3
	mov.b @r3,r2
	extu.b r2,r2
	mov.w r2,@r6
	mov.l @r7,r3
	mov.l @r4,r1
	cmp/hi r3,r1
	bf.s loc_8c1bc9b4
	shll8 r9
	mov.l r13,@r4

loc_8c1bc9b4:
	mov.w @r6,r3
	or r9,r3
	mov.w r3,@r6
	mov.w @r6,r2
	mov.w @r5,r3
	add 0x03,r2
	sub r2,r3
	mov.w r3,@r5
	mov.w @r6,r2
	mov.l @r4,r3
	extu.w r2,r2
	add r2,r3
	mov r3,r1
	mov.l r3,@r4
	mov.l @r7,r2
	cmp/hi r2,r1
	bf loc_8c1bc9e4
	mov.l @r4,r0
	add 0xFF,r0
	mov.l r0,@r4
	mov.l @r7,r3
	sub r3,r0
	add r13,r0
	mov.l r0,@r4

loc_8c1BC9E4:
	mov.w @r5,r2
	tst r2,r2
	bt loc_8c1BCA02
	mov.l @(loc_8c1BCA68,pc),r2 ; r2 set to 0x8C35279C
	mov.w @(loc_8c1BCA66,pc),r1 ; r1 set to 0xF00
	mov.w @r2,r3
	extu.w r3,r3
	cmp/ge r1,r3
	bt loc_8c1BCA02
	mov.l @(loc_8c1BCA6C,pc),r3 ; r3 set to 0x8C352BBD
	mov.b @r3,r0
	tst r0,r0
	bf loc_8c1BCA02
	bra loc_8c1BC7B0
	nop
	
loc_8c1bca02:
	mov.l @(loc_8c1bca6c,pc),r3
	mov.l @(loc_8C1BCA78,pc),r14
	mov.b @r3,r2
	mov.l @(loc_8C1BCA70,pc),r13
	mov.l @(loc_8C1BCA74,pc),r4
	tst r2,r2
	bf loc_8c1bca98
	mov.b @r4,r2
	tst r2,r2
	bf loc_8c1bcaba
	mov.w @r11,r2
	mov.w @(loc_8c1bca66,pc),r1
	extu.w r2,r2
	cmp/ge r1,r2
	bt loc_8c1bca54
	mov.l @(loc_8C1BCA7C,pc),r2
	mov.b @r2,r0
	tst r0,r0
	bt loc_8c1bca30
	mov.l @(loc_8C1BCA80,pc),r0
	mov.b @r0,r3
	tst r3,r3
	bf loc_8c1bcaba
	
loc_8c1bca30:
	mov.l @(loc_8C1BCA88,pc),r0
	mov.l @(loc_8C1BCA84,pc),r2
	mov.w @r0,r1
	mov.w @r2,r3
	cmp/eq r1,r3
	bt loc_8c1bca4c
	mov.l @(loc_8C1BCA8C,pc),r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c1bca4c
	mov.l @(loc_8C1BCA90,pc),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c1bcaba
	
loc_8c1bca4c:
	mov 0x02,r3
	mov.b r3,@r13
	bra loc_8c1bca5e
	mov.b r12,@r14
	
loc_8c1bca54:
	mov 0x05,r2
	mov.b r12,@r4
	mov 0x03,r0
	mov.b r0,@r13
	mov.b r2,@r14
	
loc_8c1bca5e:
	mov.l @(loc_8C1BCA94,pc),r1
	mov 0x00,r3
	bra loc_8c1bcab4
	mov.b r3,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV	
loc_8c1bca66:
	#data 0x0F00
	#align4
	
loc_8c1bca68:
	#data 0x8C35279C
loc_8c1bca6c:
	#data 0x8C352BBD
loc_8C1BCA70:
	#data 0x8C352E00
loc_8C1BCA74:
	#data 0x8C352E14
loc_8C1BCA78:
	#data 0x8C352E01
loc_8C1BCA7C:
	#data 0x8C352E03
loc_8C1BCA80:
	#data 0x8C352E02
loc_8C1BCA84:
	#data 0x8C352BC8
loc_8C1BCA88:
	#data 0x8C351784
loc_8C1BCA8C:
	#data 0x8C352E13
loc_8C1BCA90:
	#data 0x8C352E4E
loc_8C1BCA94:
	#data 0x8C352E05

;==============================================
loc_8c1bca98:
	mov 0x00,r2
	mov.b r2,@r4
	mov.l @(loc_8C1BCB98,pc),r2
	mov.b @r2,r0
	mov.l @(loc_8c1bcb9c,pc),r1
	or 0x80,r0
	jsr @r1
	mov.b r0,@r2
	mov 0x05,r3
	mov.b r3,@r13
	mov 0x0D,r2
	mov.b r2,@r14
	mov.l @(loc_8C1BCBA0,pc),r3
	mov.b r12,@r3

loc_8c1bcab4:
	mov.l @(loc_8C1BCBA4,pc),r1
	mov 0x00,r2
	mov.b r2,@r1

loc_8c1BCABA:
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
loc_8c1bcacc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	mov.l @(0xCC,PC),r4
	jsr @r3
	nop
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1bcb74
	mov.l @(0xC8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bcb74
	mov.l @(0xB8,PC),r5
	mov 0x03,r4
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.l @(0xBC,PC),r1
	mov.b @r1,r2
	mov.b r2,@-r3
	mov.l @(0xB8,PC),r14
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b @r14,r2
	extu.b r2,r2
	shll r2
	mov.b r2,@-r3
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.l @(0xA8,PC),r0
	mov.b @r0,r2
	mov.l @(0x8C,PC),r0
	extu.b r2,r2
	mov.b @r0,r1
	shll r2
	add r1,r2
	mov.b r2,@-r3
	mov.b @r14,r6
	mov.l @(0x9C,PC),r3
	extu.b r6,r6
	mov.l @(0x94,PC),r13
	shll r6
	mov.l @r3,r0
	mov.l @r13,r2
	mov.w @(r0,r6),r6
	mov.l @(0x94,PC),r11
	mov.l @(0x94,PC),r12
	extu.w r6,r6
	add r2,r6
	bra loc_8c1bcb54
	mov 0x01,r7

loc_8c1bcb3e:
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b @r6+,r2
	mov.b r2,@-r3
	mov.l @r12,r3
	cmp/hi r3,r6
	bf.s loc_8c1bcb52
	add 0x01,r4
	mov.l @r13,r6

loc_8c1bcb52:
	add 0x01,r7

loc_8c1bcb54:
	mov.b @r14,r0
	extu.w r7,r3
	mov.l @r11,r2
	extu.b r0,r0
	shll r0
	mov.w @(r0,r2),r1
	extu.w r1,r1
	cmp/gt r1,r3
	bf loc_8c1bcb3e
	mov.l @(0x68,PC),r2
	jsr @r2
	mov 0x01,r5
	mov.l @(0x64,PC),r3
	mov.w @r3,r2
	add 0x01,r2
	mov.w r2,@r3

loc_8c1bcb74:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BCB80:
	mov.l @(loc_8c1BCBDC,pc),r3 ; r3 set to 0x8C352BB0
	mov.l @(loc_8c1BCBD8,pc),r4 ; r4 set to 0x8C3527A0
	mov.l r4,@r3 ; r3 ??
	mov.l @(loc_8c1BCBE0,pc),r2 ; r2 set to 0x8C352BB4
	mov.l r4,@r2 ; r2 ??
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1BCBE4,pc),r1 ; r1 set to 0x8C352BB8
	mov.w r4,@r1 ; r1 ??
	mov.l @(loc_8c1BCBE8,pc),r3 ; r3 set to 0x8C352BBD
	rts
	mov.b r4,@r3

;==============================================
	#align4

loc_8c1bcb98:
	#data 0x8C34B29F
loc_8c1BCB9C:
	#data bank1c.loc_8c1c1658
loc_8c1bcba0:
	#data 0x8C352E05
loc_8c1bcba4:
	#data 0x8C352E04
loc_8c1BCBA8:
	#data 0x8C352BCC
loc_8c1BCBAC:
	#data loc_8c1B6626
loc_8c1BCBb0:
	#data 0x8C352E8C
loc_8c1BCBb4:
	#data 0x8C352E06
loc_8c1BCBb8:
	#data 0x8C352BBC
loc_8c1BCBbc:
	#data 0x8C352DE3
loc_8c1BCBc0:
	#data 0x8C351770
loc_8c1BCBc4:
	#data 0x8C352DD4
loc_8c1BCBc8:
	#data 0x8C352DD8
loc_8c1BCBcc:
	#data 0x8C351774
loc_8c1BCBD0:
	#data loc_8c1B6750
loc_8c1BCBD4:
	#data 0x8C34B31C
loc_8c1BCBD8:
	#data 0x8C3527A0
loc_8c1BCBDC:
	#data 0x8C352BB0
loc_8c1BCBE0:
	#data 0x8C352BB4
loc_8c1BCBE4:
	#data 0x8C352BB8
loc_8c1BCBE8:
	#data 0x8C352BBD

;==============================================
loc_8c1BCBEC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0xA8,PC),r7
	mov.l @(0xAC,PC),r5
	mov.w @r7,r3
	mov.w @r5,r2
	extu.w r3,r3
	mov.w @(0x9C,PC),r1
	extu.w r2,r2
	add r2,r3
	add 0x03,r3
	cmp/gt r1,r3
	bt loc_8c1bcc94
	mov.l @(0x9C,PC),r4
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.l @(0x98,PC),r1
	mov.b @r1,r3
	mov.b r3,@-r2
	mov.l @(0x98,PC),r14
	mov.l @r4,r2
	mov.l @r14,r3
	mov.l @(0x90,PC),r13
	cmp/hi r3,r2
	bf loc_8c1bcc22
	mov.l r13,@r4

loc_8c1BCC22:
	mov.w @r5,r3
	add 0x01,r3
	mov.w r3,@r5
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.w @r7,r3
	extu.w r3,r3
	shlr8 r3
	mov.b r3,@-r2
	mov.l @r4,r1
	mov.l @r14,r2
	cmp/hi r2,r1
	bf loc_8c1bcc40
	mov.l r13,@r4

loc_8c1BCC40:
	mov.w @r5,r2
	add 0x01,r2
	mov.w r2,@r5
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.b @r7,r2
	mov.b r2,@-r3
	mov.l @r4,r1
	mov.l @r14,r3
	cmp/hi r3,r1
	bf loc_8c1bcc5a
	mov.l r13,@r4

loc_8c1BCC5A:
	mov.w @r5,r3
	add 0x01,r3
	mov.w r3,@r5
	mov.l @(0x50,PC),r6
	bra loc_8c1bcc8a
	mov 0x01,r0

loc_8c1BCC66:
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.l @r6,r2
	add 0x01,r2
	mov.l r2,@r6
	add 0xFF,r2
	mov.b @r2,r1
	mov.b r1,@-r3
	mov.l @r4,r2
	mov.l @r14,r3
	cmp/hi r3,r2
	bf loc_8c1bcc82
	mov.l r13,@r4

loc_8c1BCC82:
	mov.w @r5,r3
	add 0x01,r0
	add 0x01,r3
	mov.w r3,@r5

loc_8c1BCC8A:
	mov.w @r7,r3
	extu.w r0,r2
	extu.w r3,r3
	cmp/gt r3,r2
	bf loc_8c1bcc66


loc_8c1BCC94:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BCC9a:
	#data 0x040C
	#align4

loc_8c1BCC9c:
	#data 0x8C352DDC
loc_8c1BCCa0:
	#data 0x8C352BB8
loc_8c1BCCa4:
	#data 0x8C352BB4
loc_8c1BCCa8:
	#data 0x8C352DDF
loc_8c1BCCac:
	#data 0x8C3527A0
loc_8c1BCCb0:
	#data 0x8C352BAC
loc_8c1BCCb4:
	#data 0x8C352BC0

;==============================================
loc_8c1BCCB8:
	mov.l r14,@-r15
	mov.l @(loc_8c1BCDB4,pc),r2 ; r2 set to 0x8C352E63
	sts.l pr,@-r15
	mov.b @r2,r3
	mov.l @(loc_8c1BCDB0,pc),r4 ; r4 set to 0x8C34B2A3
	tst r3,r3
	bt/s loc_8c1BCD48
	mov 0x04,r5 ; r5 set to 0x04
	mov.l @(loc_8c1BCDB8,pc),r14 ; r14 set to 0x8C352E1F
	mov.b @r4,r3
	extu.b r3,r3
	tst r5,r3
	bt loc_8c1BCD24
	mov.l @(loc_8c1BCDB8,pc),r1 ; r1 set to 0x8C352E1F
	mov.b @r1,r0
	tst r0,r0
	bf loc_8c1BCD24
	mov.l @(loc_8c1BCDBC,pc),r3 ; r3 set to 0x8C352E0E
	mov.b @r3,r0
	tst r0,r0
	bf loc_8c1BCD24
	mov.l @(loc_8c1BCDC4,pc),r2 ; r2 set to 0x8C1B6626
	mov.l @(loc_8c1BCDC0,pc),r4 ; r4 set to 0x8C352BCC
	jsr @r2
	nop
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1BCD60
	mov.l @(loc_8c1BCDC8,pc),r3 ; r3 set to 0x8C352E8C
	mov.b @r3,r2 ; r2 ??
	tst r2,r2
	bf loc_8c1BCD60
	mov.l @(loc_8c1BCDCC,pc),r3 ; r3 set to 0x8C352E00
	mov 0x0D,r2 ; r2 set to 0x0D
	mov 0x01,r4 ; r4 set to 0x01
	mov.b r2,@r3 ; r3 ??
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8c1BCDAC,pc),r1 ; r1 set to 0xE3
	mov.l @(loc_8c1BCDD0,pc),r0 ; r0 set to 0x8C352E01
	mov.b r1,@r0 ; r0 ??
	mov.l @(loc_8c1BCDD4,pc),r1 ; r1 set to 0x8C352E04
	mov.b r2,@r1 ; r1 ??
	mov.l @(loc_8c1BCDD8,pc),r3 ; r3 set to 0x8C352E05
	mov.b r4,@r3 ; r3 ??
	mov.b r4,@r14 ; r14 ??
	mov.l @(loc_8c1BCDB0,pc),r2 ; r2 set to 0x8C34B2A3
	mov.b @r2,r0
	and 0xFB,r0
	mov.b r0,@r2 ; r2 ??? bc r0 is ???
	mov.l @(loc_8c1BCDDC,pc),r0 ; r0 set to 0x8C34B2CC
	mov.l @(loc_8c1BCDE0,pc),r3 ; r3 set to 0x8C352DF8
	mov.l @r0,r1
	bra loc_8c1BCD60
	mov.l r1,@r3

loc_8c1BCD24:
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c1BCD60
	mov.l @(loc_8c1BCDE0,pc),r2 ; r2 set to 0x8C352DF8
	mov.l @(loc_8c1BCDDC,pc),r1 ; r1 set to 0x8C34B2CC
	mov.l @r2,r3
	mov.l @r1,r2 ; r2 ??
	mov.l @(loc_8c1BCDE4,pc),r1 ; r1 set to 0x8C352DEC
	sub r3,r2
	mov.l @r1,r0
	cmp/hi r0,r2
	bf loc_8c1BCD60
	mov.l @(loc_8c1BCDE8,pc),r3 ; r3 set to 0x8C1C166A
	jsr @r3
	mov 0x02,r4 ; r4 set to 0x02
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8c1BCD60
	mov.b r2,@r14

loc_8c1BCD48:
	mov.b @r4,r1
	extu.b r1,r1
	tst r5,r1
	bt loc_8c1BCD60
	mov.b @r4,r0
	and 0xFB,r0
	mov.b r0,@r4
	lds.l @r15+,pr
	mov.l @(loc_8c1BCDE8,pc),r1 ; r1 set to 0x8C1C166A
	mov 0x01,r4 ; r4 set to 0x01
	jmp @r1
	mov.l @r15+,r14

loc_8c1BCD60:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BCD66:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x74,PC),r10
	sts.l pr,@-r15
	mov.w @r10,r3
	mov.l @(0x70,PC),r13
	add 0xF8,r15
	mov.w r3,@r13
	mov.l @(0x74,PC),r2
	mov.l @(0x6C,PC),r8
	mov.l r2,@(0x4,r15)
	mov.l @(0x74,PC),r14
	mov.l @(0x70,PC),r9
	mov.w @(0x1E,PC),r11

loc_8c1BCD8E:
	jsr @r9
	mov r15,r4
	mov.w @r13,r3
	mov r0,r5
	extu.w r5,r2
	extu.w r3,r3
	cmp/ge r2,r3
	bt.s loc_8c1bcda2
	mov 0x00,r4
	mov.w @r13,r5

loc_8c1BCDA2:
	extu.w r5,r2
	cmp/gt r11,r2
	bf loc_8c1bce3a
	bra loc_8c1bce3a
	mov r11,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BCDAC:
	#data 0x00E3
loc_8c1BCDAe:
	#data 0x0080
	#align4

loc_8c1BCDB0:
	#data 0x8C34B2A3
loc_8c1BCDB4:
	#data 0x8C352E63
loc_8c1BCDB8:
	#data 0x8C352E1F
loc_8c1BCDBC:
	#data 0x8C352E0E
loc_8c1BCDC0:
	#data 0x8C352BCC
loc_8c1BCDC4:
	#data loc_8c1B6626
loc_8c1BCDC8:
	#data 0x8C352E8C
loc_8c1BCDCC:
	#data 0x8C352E00
loc_8c1BCDD0:
	#data 0x8C352E01
loc_8c1BCDD4:
	#data 0x8C352E04
loc_8c1BCDD8:
	#data 0x8C352E05
loc_8c1BCDDC:
	#data 0x8C34B2CC
loc_8c1BCDE0:
	#data 0x8C352DF8
loc_8c1BCDE4:
	#data 0x8C352DEC
loc_8c1BCDE8:
	#data bank1c.loc_8c1c166A
loc_8c1BCDec:
	#data 0x8C35279C
loc_8c1BCDf0:
	#data 0x8C35279E
loc_8c1BCDf4:
	#data 0x8C34B29F
loc_8c1BCDf8:
	#data 0x8C352EA8
loc_8c1BCDFC:
	#data bank1a.loc_8c1a0D48
loc_8c1BCE00:
	#data 0x8C352790

;==============================================
loc_8c1BCE04:
	mov.b @r8,r3
	extu.b r3,r3
	tst r12,r3
	bt loc_8c1bce18
	mov.l @(0x198,PC),r2
	mov.l @(0x4,r15),r1
	mov.l @r2,r3
	mov.l @r1,r2
	cmp/eq r3,r2
	bt loc_8c1bce42

loc_8c1BCE18:
	mov.l @r15,r1
	add 0x01,r1
	mov.l r1,@r15
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	mov.b @r3,r2
	mov.b r2,@-r1
	mov.l @(0x180,PC),r0
	mov.l @r14,r1
	mov.l @r0,r3
	cmp/hi r3,r1
	bf.s loc_8c1bce3a
	add 0x01,r4
	mov.l @(0x178,PC),r2
	mov.l r2,@r14

loc_8c1BCE3A:
	extu.w r5,r3
	tst r3,r3
	bf.s loc_8c1bce04
	add 0xFF,r5

loc_8c1BCE42:
	extu.w r4,r1
	tst r1,r1
	bt loc_8c1bce58
	mov.w @r10,r2
	sub r4,r2
	mov.w r2,@r10
	mov.w @r13,r3
	mov.l @(0x160,PC),r2
	sub r4,r3
	jsr @r2
	mov.w r3,@r13

loc_8c1BCE58:
	mov.b @r8,r3
	extu.b r3,r3
	tst r12,r3
	bt loc_8c1bce78
	mov.l @(0x144,PC),r2
	mov.l @(0x4,r15),r1
	mov.l @r2,r3
	mov.l @r1,r2
	cmp/eq r3,r2
	bf loc_8c1bce78
	bsr loc_8c1bcf6c
	nop
	mov.l @(0x144,PC),r2
	mov r0,r4
	jsr @r2
	mov 0x01,r5

loc_8c1BCE78:
	jsr @r9
	mov r15,r4
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1bce8a
	mov.l @(0x138,PC),r3
	mov.w @r3,r2
	tst r2,r2
	bf loc_8c1bcd8e

loc_8c1BCE8A:
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
loc_8c1BCE9E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1BCFCC,pc),r12 ; r12 set to 0x8C351770
	mov.l @(loc_8c1BCFD0,pc),r13 ; r13 set to 0x8C351788
	mov.l @(loc_8c1BCFD4,pc),r14 ; r14 set to 0x8C35177C
	add 0xF8,r15
	mov.l @(loc_8c1BCFC8,pc),r11 ; r11 set to 0x8C351774
	mov.l @(loc_8c1BCFC0,pc),r9 ; r9 set to 0x8C1A0648
	mov.l @(loc_8c1BCFC4,pc),r10 ; r10 set to 0x8C1A0500

loc_8c1BCEBA:
	mov r15,r4
	mov r15,r5
	jsr @r10
	add 0x04,r4
	mov.w @r15,r2
	tst r2,r2
	bt loc_8c1BCF1C
	mov.l @(loc_8c1BCFD0,pc),r2 ; r2 set to 0x8C351788, r2 set to 0x8C351788
	mov.w @r15,r1
	mov.w @r2,r3
	mov.l @(loc_8c1BCFD8,pc),r0 ; r0 set to 0x8C351786, r0 set to 0x8C351786
	extu.w r1,r1
	extu.w r3,r3
	add r1,r3
	mov.w @r0,r1
	extu.w r1,r1
	cmp/ge r1,r3
	bt loc_8c1BCF1C
	mov.w @r13,r2 ; r2 ??, r2 ??? bc r13 is ???
	mov.w @r15,r3
	add r3,r2
	bra loc_8c1BCF06
	mov.w r2,@r13

loc_8c1BCEE8:
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14
	mov.l @(0x04,r15),r2
	add 0x01,r2
	mov.l r2,@(0x04,r15)
	add 0xFF,r2
	mov.b @r2,r1
	mov.b r1,@-r3
	mov.l @r14,r2
	mov.l @r11,r3
	cmp/hi r3,r2
	bf loc_8c1BCF06
	mov.l @r12,r0
	mov.l r0,@r14

loc_8c1BCF06:
	mov.w @r15,r3
	add 0xFF,r3
	mov.w r3,@r15
	add 0x01,r3
	extu.w r3,r3
	tst r3,r3
	bf loc_8c1BCEE8
	jsr @r9
	nop
	bra loc_8c1BCEBA
	nop

loc_8c1BCF1C:
	add 0x08,r15
	mov.l @(loc_8c1BCFDC,pc),r1 ; r1 set to 0x8C351784
	lds.l @r15+,pr
	mov.w @r13,r2
	mov.w r2,@r1 ; r1 ??? bc r2 is ???
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BCF34:
	mov.l @(loc_8c1BCFE0,pc),r6 ; r6 set to 0x8C352E9E
	bra loc_8c1BCF42
	mov 0x00,r5

loc_8c1BCF3A:
	extu.b r5,r0
	cmp/eq 0x03,r0
	bt loc_8c1bcf68
	add 0x01,r5

loc_8c1bcf42:
	extu.b r5,r0
	shll r0
	mov.w @(r0,r6),r3
	extu.w r3,r3
	tst r3,r3
	bf loc_8c1bcf3a
	extu.b r5,r0
	shll r0
	mov.w r4,@(r0,r6)
	extu.b r5,r5
	mov.l @(loc_8C1BCFE8,pc),r2
	shll2 r5
	mov.l @(loc_8C1BCFE4,pc),r0
	mov.l @r2,r3
	mov.l r3,@(r0,r5)
	mov.l @(loc_8C1BCFEC,pc),r3
	mov.b @r3,r0
	or 0x01,r0
	mov.b r0,@r3

loc_8c1bcf68:
	rts
	nop

;==============================================
loc_8c1bcf6c:
	mov.l @(0x70,PC),r4
	add 0xFC,r15
	mov r4,r5
	mov r5,r6
	add 0x04,r6
	mov.w @r5,r3
	mov r5,r7
	add 0x02,r7
	mov.w r3,@r15
	mov.w @r7,r3
	mov.w r3,@r5
	mov.w @r6,r2
	mov.w r2,@r7
	mov r5,r7
	add 0x06,r7
	mov.w @r7,r3
	mov 0x00,r2
	mov.w r3,@r6
	mov.w r2,@r7
	mov.w @r5,r3
	tst r3,r3
	bf loc_8c1bcfa0
	mov.l @(0x50,PC),r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3

loc_8c1bcfa0:
	mov.w @r15,r0
	rts
	add 0x04,r15

;==============================================
	#align4

loc_8c1bcfa8:
	#data 0x8C352790
loc_8c1bcfac:
	#data 0x8C35278C
loc_8c1bcfb0:
	#data 0x8C35178A
loc_8c1bcfb4:
	#data bank1a.loc_8c1a0D92
loc_8c1bcfb8:
	#data bank1a.loc_8c1a0E8A
loc_8c1bcfbc:
	#data 0x8C35279E
loc_8c1bcfc0:
	#data bank1a.loc_8c1a0648
loc_8c1bcfc4:
	#data bank1a.loc_8c1a0500
loc_8c1bcfc8:
	#data 0x8C351774
loc_8c1bcfcc:
	#data 0x8C351770
loc_8c1bcfd0:
	#data 0x8C351788
loc_8c1bcfd4:
	#data 0x8C35177C
loc_8c1bcfd8:
	#data 0x8C351786
loc_8c1bcfdc:
	#data 0x8C351784
loc_8c1bcfe0:
	#data 0x8C352E9E
loc_8C1BCFE4:
	#data 0x8C352EA8
loc_8C1BCFE8:
	#data 0x8C352794
loc_8C1BCFEC:
	#data 0x8C34B29F

;==============================================
loc_8c1BCFF0:
	mov.l @(loc_8c1BD050,pc),r2 ; r2 set to 0x8C35279C
	exts.b r4,r4
	mov.l @(loc_8c1BD054,pc),r1 ; r1 set to 0x8C35279E
	tst r4,r4
	mov.w @r2,r3
	mov 0x01,r6 ; r6 set to 0x01
	sts.l pr,@-r15
	mov.w r3,@r1 ; r1 ??? bc r3 is ???
	mov.l @(loc_8c1BD058,pc),r3 ; r3 set to 0x8C352E52
	mov.w @r3,r5
	bf/s loc_8c1BD078
	extu.w r5,r5
	mov 0x02,r0 ; r0 set to 0x02
	tst r0,r5
	bt loc_8c1BD0E6
	mov.l @(loc_8c1BD05C,pc),r1 ; r1 set to 0x8C34B29F
	mov.b @r1,r3 ; r3 ??
	extu.b r3,r3
	tst r6,r3
	bt loc_8c1BD036
	mov.l @(loc_8c1BD064,pc),r0 ; r0 set to 0x8C352790
	mov.l @(loc_8c1BD060,pc),r3 ; r3 set to 0x8C352EA8
	mov.l @r0,r2 ; r2 ??
	mov.l @r3,r0 ; r0 ??
	cmp/eq r2,r0
	bf loc_8c1BD036
	mov.l @(loc_8c1BD068,pc),r2 ; r2 set to 0x8C1BCF6C
	jsr @r2
	nop
	mov.l @(loc_8c1BD06C,pc),r3 ; r3 set to 0x8C1A0E8A
	mov r0,r4
	jsr @r3
	mov 0x01,r5 ; r5 set to 0x01
	bra loc_8c1BD0E6
	nop

loc_8c1BD036:
	mov.l @(loc_8c1BD074,pc),r3 ; r3 set to 0x8C1A0D48
	mov.l @(loc_8c1BD070,pc),r4 ; r4 set to 0x8C353830
	jsr @r3
	nop
	mov.w @(loc_8c1BD04E,pc),r2 ; r2 set to 0x80
	extu.w r0,r0
	cmp/ge r2,r0
	bf loc_8c1BD0E6
	bsr loc_8c1BD678
	nop
	bra loc_8c1BD0E6
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BD04E:
	#data 0x0080
	#align4

loc_8c1BD050:
	#data 0x8C35279C
loc_8c1BD054:
	#data 0x8C35279E
loc_8c1BD058:
	#data 0x8C352E52
loc_8c1BD05C:
	#data 0x8C34B29F
loc_8c1BD060:
	#data 0x8C352EA8
loc_8c1BD064:
	#data 0x8C352790
loc_8c1BD068:
	#data loc_8c1BCF6C
loc_8c1BD06c:
	#data bank1a.loc_8c1a0E8A
loc_8c1BD070:
	#data 0x8C353830
loc_8c1BD074:
	#data bank1a.loc_8c1a0D48

;==============================================
loc_8c1bd078:
	tst r6,r5
	bt loc_8c1bd0e6
	mov.l @(loc_8C1BD150,pc),r3
	mov.l @(loc_8c1bd14c,pc),r0
	mov.w @r3,r1
	mov.w @r0,r4
	mov.w @(loc_8C1BD14A,pc),r0
	extu.w r1,r1
	extu.w r4,r2
	add r0,r1
	cmp/ge r1,r2
	bt loc_8c1bd0e6
	mov.l @(loc_8C1BD158,pc),r2
	mov.l @(loc_8C1BD154,pc),r5
	mov.w @r2,r1
	sub r1,r4
	mov.w r4,@r5
	mov.l @(loc_8C1BD15C,pc),r0
	mov.w @r5,r3
	mov.w @r0,r1
	cmp/hs r1,r3
	bt loc_8c1bd0e6
	bsr loc_8c1bd0f8
	nop
	mov.l @(loc_8C1BD160,pc),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bd0e6
	mov.l @(loc_8c1bd168,pc),r3
	mov.l @(loc_8C1BD164,pc),r4
	mov.l @(loc_8C1BD154,pc),r5
	jsr @r3
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1bd0de
	mov.l @(loc_8C1BD16C,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1bd0e6
	mov.l @(loc_8C1BD170,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x06,r0
	cmp/eq 0x04,r0
	bf loc_8c1bd0de
	mov.l @(loc_8C1BD174,pc),r3
	mov.w @r3,r2
	tst r2,r2
	bf loc_8c1bd0e6

loc_8c1bd0de:
	mov.l @(loc_8C1BD160,pc),r1
	mov 0x00,r0
	bsr loc_8c1bd2fe
	mov.b r0,@r1

loc_8c1BD0E6:
	mov.l @(loc_8c1BD178,pc),r3 ; r3 set to 0x8C353964
	mov 0x00,r2 ; r2 set to 0x00
	lds.l @r15+,pr
	mov.b r2,@r3 ; r3 ??
	mov.l @(loc_8c1BD14C,pc),r0 ; r0 set to 0x8C351788
	mov.l @(loc_8c1BD17C,pc),r2 ; r2 set to 0x8C351784
	mov.w @r0,r1
	rts
	mov.w r1,@r2

;==============================================
loc_8c1BD0F8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x6C,PC),r14
	sts.l pr,@-r15
	mov.w @r14,r3
	mov.l @(0x70,PC),r8
	tst r3,r3
	add 0xFC,r15
	bf loc_8c1bd13a
	mov.l @(0x54,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1bd122
	bra loc_8c1bd2ca
	nop

loc_8c1BD122:
	mov.l @(0x44,PC),r2
	mov.l @(0x5C,PC),r4
	mov.l @(0x58,PC),r5
	jsr @r2
	nop
	mov.w @r8,r3
	mov.w r3,@r14
	mov.w @r14,r2
	tst r2,r2
	bf loc_8c1bd13a
	bra loc_8c1bd2ca
	nop

loc_8c1BD13A:
	mov.l @(0x30,PC),r2
	mov 0x00,r13
	mov.l @(0x50,PC),r12
	mov 0x01,r11
	mov.l @(0x44,PC),r9
	mov.l @(0x44,PC),r10
	bra loc_8c1bd2ac
	mov.l r2,@r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bd14a:
	#data 0xFED4
	#align4

loc_8c1BD14C:
	#data 0x8C351788
loc_8c1bd150:
	#data 0x8C351786
loc_8c1bd154:
	#data 0x8C3537D0
loc_8c1bd158:
	#data 0x8C352BC8
loc_8c1bd15c:
	#data 0x8C352E64
loc_8c1bd160:
	#data 0x8C3537DA
loc_8c1bd164:
	#data 0x8C3537DC
loc_8c1BD168:
	#data bank1a.loc_8c1a0500
loc_8c1bd16c:
	#data 0x8C34B2A1
loc_8c1bd170:
	#data 0x8C34B2AA
loc_8c1bd174:
	#data 0x8C3537E8
loc_8c1BD178:
	#data 0x8C353964
loc_8c1BD17C:
	#data 0x8C351784
loc_8c1BD180:
	#data 0x8C3537E0
loc_8c1BD184:
	#data 0x8C3537E4
loc_8c1BD188:
	#data 0x8C3537FA
loc_8c1BD18c:
	#data 0x8C3537D2
loc_8c1BD190:
	#data 0x8C3537D7

;==============================================
loc_8c1BD194:
	mov.l @(0x1C0,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bt loc_8c1bd1a4
	mov.l @(0x1BC,PC),r2
	mov.l @(0x1B8,PC),r1
	jsr @r2
	mov.b r13,@r1

loc_8c1BD1a4:
	mov.w @r14,r3
	tst r3,r3
	bf loc_8c1bd1d8
	mov.w @r8,r1
	tst r1,r1
	bt loc_8c1bd1b6
	mov.l @(0x1AC,PC),r2
	jsr @r2
	nop

loc_8c1BD1b6:
	mov.l @r15,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1bd1c4
	bra loc_8c1bd2ca
	nop

loc_8c1BD1c4:
	mov.l @(0x1A4,PC),r2
	mov.l @(0x1A0,PC),r4
	mov.l @(0x198,PC),r5
	jsr @r2
	nop
	mov.w @r8,r3
	mov.w r3,@r14
	mov.w @r14,r2
	tst r2,r2
	bt loc_8c1bd2ca

loc_8c1BD1d8:
	mov.l @(0x18C,PC),r1
	mov.l @r1,r3
	add 0x01,r3
	mov.l r3,@r1
	add 0xFF,r3
	mov.b @r3,r2
	mov.b r2,@r12
	mov.w @r14,r3
	add 0xFF,r3
	mov.w r3,@r14
	mov.w @r9,r2
	add 0x01,r2
	mov.w r2,@r9
	mov.l @(0x17C,PC),r3
	bsr loc_8c1bd458
	mov.b r11,@r3
	mov.l @(0x178,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bf loc_8c1bd22c
	mov.b @r10,r1
	tst r1,r1
	bt loc_8c1bd24c
	mov.l @(0x170,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bf loc_8c1bd24c
	mov.l @(0x170,PC),r0
	mov.l @(0x168,PC),r2
	mov.w @r0,r1
	mov.w @r2,r4
	extu.w r1,r1
	extu.w r4,r3
	cmp/ge r1,r3
	bf loc_8c1bd222
	bsr loc_8c1bde4a
	nop

loc_8c1BD222:
	mov.l @(0x158,PC),r3
	bsr loc_8c1bdd50
	mov.w @r3,r4
	bra loc_8c1bd24c
	nop

loc_8c1BD22c:
	mov.l @(0x144,PC),r0
	mov.b r13,@r0
	mov.b @r10,r3
	tst r3,r3
	bf loc_8c1bd24c
	mov.l @(0x14C,PC),r2
	mov.b @r12,r3
	mov.w @r2,r1
	mov.l @(0x148,PC),r0
	extu.b r3,r3
	add r1,r3
	mov.w r3,@r0
	mov.l @(0x144,PC),r2
	mov.w r11,@r2
	mov.l @(0x144,PC),r3
	mov.w r13,@r3

loc_8c1BD24c:
	mov.b @r10,r2
	tst r2,r2
	bt loc_8c1bd28c
	mov.b r13,@r10
	mov.l @(0x140,PC),r0
	mov.l @(0x13C,PC),r3
	mov.w @r0,r2
	mov.w @r3,r1
	add r2,r1
	mov.w r1,@r3
	mov.l @(0x138,PC),r1
	mov.w @r9,r3
	mov.w @r1,r2
	cmp/hi r2,r3
	bf loc_8c1bd26e
	bsr loc_8c1bd3b4
	nop

loc_8c1BD26e:
	mov.l @(0x130,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bd28c
	bsr loc_8c1bd55c
	nop
	mov.l @(0x108,PC),r1
	mov.b @r12,r2
	mov.w @r1,r3
	extu.b r2,r2
	mov.l @(0x104,PC),r0
	add r3,r2
	mov.w r2,@r0
	mov.l @(0x100,PC),r3
	mov.w r11,@r3

loc_8c1BD28c:
	mov.l @(0xE8,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c1bd298
	bsr loc_8c1bd2de
	nop

loc_8c1BD298:
	mov.l @(0x108,PC),r1
	mov.b @r12,r3
	mov.b @r1,r4
	extu.b r3,r3
	extu.b r4,r2
	cmp/eq r2,r3
	bf loc_8c1bd2ac
	mov.l @(0xFC,PC),r2
	add 0x33,r4
	mov.b r4,@r2

loc_8c1BD2ac:
	mov.l @(0xFC,PC),r0
	mov.l @(0xF8,PC),r1
	mov.w @r0,r2
	mov.w @r1,r3
	cmp/hs r2,r3
	bt loc_8c1bd2bc
	bra loc_8c1bd194
	nop

loc_8c1BD2bc:
	mov.w @r14,r2
	tst r2,r2
	bf loc_8c1bd2ca
	mov.l @(0x9C,PC),r1
	jsr @r1
	nop
	mov.w r13,@r8

loc_8c1bd2ca:
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
loc_8c1BD2DE:
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
	bsr loc_8c1bde96
	mov.b @r3,r4
	mov.l @(0xBC,PC),r0
	mov.l @(0xC4,PC),r2
	mov.b @r0,r3
	mov.b @r2,r1
	cmp/eq r3,r1
	bf loc_8c1bd2f8
	mov 0x01,r4
	bra loc_8c1bde96
	lds.l @r15+,pr

loc_8c1BD2F8:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1BD2FE:
	mov.l @(0x78,PC),r2
	sts.l pr,@-r15
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bd322
	mov.l @(0x7C,PC),r3
	bsr loc_8c1bde4a
	mov.w @r3,r4
	mov.l @(0x78,PC),r2
	bsr loc_8c1bdd50
	mov.w @r2,r4
	bsr loc_8c1bdd50
	mov 0x01,r4
	bsr loc_8c1bdeee
	nop
	mov.l @(0x54,PC),r3
	mov 0x01,r2
	mov.b r2,@r3

loc_8c1BD322:
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c1BD328:
	mov.l @(0x4C,PC),r0
	sts.l pr,@-r15
	mov.b @r0,r1
	tst r1,r1
	bf loc_8c1bd348
	mov.l @(0x3C,PC),r4
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c1bd340
	mov 0x00,r3
	bsr loc_8c1bd2fe
	mov.b r3,@r4

loc_8c1bd340:
	bsr loc_8c1bdd50
	mov 0x00,r4
	bsr loc_8c1bdeee
	nop

loc_8c1bd348:
	mov.l @(0x58,PC),r3
	bsr loc_8c1bde96
	mov.b @r3,r4
	bsr loc_8c1bde96
	mov 0x02,r4
	bra loc_8c1be0d0
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1BD358:
	#data 0x8C353964
loc_8c1BD35C:
	#data loc_8c1B9ED0
loc_8c1BD360:
	#data bank1a.loc_8c1a0648
loc_8c1BD364:
	#data 0x8C3537E0
loc_8c1BD368:
	#data 0x8C3537E4
loc_8c1BD36C:
	#data bank1a.loc_8c1a0500
loc_8c1bd370:
	#data 0x8C3537DA
loc_8c1bd374:
	#data 0x8C3537D5
loc_8c1bd378:
	#data 0x8C3537D6
loc_8c1bd37c:
	#data 0x8C3537FC
loc_8c1bd380:
	#data 0x8C35380E
loc_8c1bd384:
	#data 0x8C353804
loc_8c1bd388:
	#data 0x8C3537F4
loc_8c1bd38c:
	#data 0x8C3537F2
loc_8c1bd390:
	#data 0x8C353814
loc_8c1bd394:
	#data 0x8C3537F8
loc_8c1bd398:
	#data 0x8C35380C
loc_8c1bd39c:
	#data 0x8C3537F6
loc_8c1bd3a0:
	#data 0x8C3537DB
loc_8c1bd3a4:
	#data 0x8C3537D8
loc_8c1bd3a8:
	#data 0x8C3537D0
loc_8c1bd3ac:
	#data 0x8C352E64
loc_8c1bd3b0:
	#data 0x8C3537D7

;==============================================
loc_8c1BD3B4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0xEC,PC),r13
	mov.l @(0xF0,PC),r4
	mov.w @r13,r3
	mov.w @r4,r2
	sts.l pr,@-r15
	add r3,r2
	mov.w r2,@r4
	mov.w @r4,r3
	mov.w @(0xD6,PC),r2
	extu.w r3,r3
	cmp/ge r2,r3
	bf.s loc_8c1bd3de
	mov 0x00,r14
	mov.l @(0xDC,PC),r5
	mov.l @(0xDC,PC),r3
	mov.w @r5,r1
	mov.w r1,@r3
	mov.w r14,@r4
	mov.w r14,@r5

loc_8c1BD3DE:
	mov.l @(0xE0,PC),r3
	mov.l @(0xD4,PC),r0
	mov.b @r3,r2
	mov.l @(0xD4,PC),r4
	tst r2,r2
	bt.s loc_8c1bd406
	mov.b @r4,r5
	exts.b r5,r5
	tst r5,r5
	bt loc_8c1bd450
	mov.b r14,@r4
	mov.w @(0xAC,PC),r1
	mov.w r1,@r0
	mov.l @(0xC8,PC),r2
	bsr loc_8c1bde96
	mov.b @r2,r4
	bsr loc_8c1bde96
	mov 0x00,r4
	bra loc_8c1bd44a
	nop

loc_8c1BD406:
	mov.w @r13,r6
	exts.b r5,r5
	mov.l @(0xBC,PC),r3
	extu.w r6,r6
	mov.w @r3,r7
	shll2 r6
	shll r6
	tst r5,r5
	bt.s loc_8c1bd434
	extu.w r7,r7
	add 0x10,r7
	cmp/gt r7,r6
	bf loc_8c1bd44a
	mov.b r14,@r4
	mov.w @(0x7E,PC),r2
	mov.w r2,@r0
	mov.l @(0x9C,PC),r1
	bsr loc_8c1bde96
	mov.b @r1,r4
	bsr loc_8c1bde96
	mov 0x00,r4
	bra loc_8c1bd44a
	nop

loc_8c1BD434:
	add 0xF0,r7
	cmp/ge r7,r6
	bt loc_8c1bd44a
	mov 0x01,r2
	mov 0x40,r1
	mov.w r1,@r0
	mov.b r2,@r4
	bsr loc_8c1bdd50
	mov 0x00,r4
	bsr loc_8c1bdeee
	nop

loc_8c1BD44A:
	mov.w r14,@r13
	mov.l @(0x78,PC),r2
	mov.w r14,@r2

loc_8c1BD450:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BD458:
	mov.l r14,@-r15
	mov 0x00,r3
	mov.l r13,@-r15
	mov 0x01,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(0x64,PC),r1
	mov.b r3,@r1
	mov.l @(0x64,PC),r12
	mov.l @(0x68,PC),r3
	mov.w @r12,r11
	mov.l @r3,r0
	extu.w r11,r4
	mov.l @(0x64,PC),r14
	shll r4
	mov.l @(0x64,PC),r2
	mov.w @(r0,r4),r4
	extu.w r4,r4
	tst r4,r4
	bf.s loc_8c1bd496
	mov.b @r2,r0
	mov.w @r14,r1
	tst r1,r1
	bf loc_8c1bd506
	mov.l @(0x54,PC),r3
	extu.b r0,r0
	mov.w @r3,r1
	add r1,r0
	mov.w r0,@r12
	bra loc_8c1bd552
	mov.w r13,@r14

loc_8c1BD496:
	mov.l @(0x50,PC),r3
	mov.l @(0x48,PC),r1
	mov.l @r3,r5
	mov.l @r1,r6
	bra loc_8c1bd4f6
	extu.b r0,r7

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bd4a2:
	#data 0x0400
loc_8c1bd4a4:
	#data 0x0100
	#align4

loc_8c1bd4a8:
	#data 0x8C3537FA
loc_8c1bd4ac:
	#data 0x8C34B30E
loc_8c1bd4b0:
	#data 0x8C34B310
loc_8c1bd4b4:
	#data 0x8C34B30C
loc_8c1bd4b8:
	#data 0x8C3537F6
loc_8c1bd4bc:
	#data 0x8C3537D6
loc_8c1bd4c0:
	#data 0x8C352E8D
loc_8c1bd4c4:
	#data 0x8C3537D8
loc_8c1bd4c8:
	#data 0x8C3537F8
loc_8c1bd4cc:
	#data 0x8C3537DB
loc_8c1bd4d0:
	#data 0x8C3537F4
loc_8c1bd4d4:
	#data 0x8C353820
loc_8c1bd4d8:
	#data 0x8C3537F2
loc_8c1bd4dc:
	#data 0x8C3537D7
loc_8c1bd4e0:
	#data 0x8C353804
loc_8c1bd4e4:
	#data 0x8C353818
loc_8c1bd4e8:
	#data 0x8C353824

;==============================================
loc_8c1BD4EC:
	shll r0
	mov.w @(r0,r5),r3
	extu.w r3,r4
	tst r4,r4
	bt loc_8c1bd506

loc_8c1BD4F6:
	mov r4,r0
	nop
	mov.b @(r0,r6),r3
	extu.b r3,r3
	cmp/eq r7,r3
	bf loc_8c1bd4ec
	tst r4,r4
	bf loc_8c1bd516

loc_8c1BD506:
	mov.l @(0x1F4,PC),r3
	mov.w r11,@r3
	mov.l @(0x1F4,PC),r2
	mov.b r13,@r2
	mov.l @(0x1F4,PC),r1
	mov.b r13,@r1
	bra loc_8c1bd552
	nop

loc_8c1BD516:
	mov.l @(0x1F0,PC),r5
	mov.w @r5,r3
	extu.w r3,r3
	cmp/eq r3,r4
	bf loc_8c1bd54a
	mov.l @(0x1D8,PC),r3
	mov.w r11,@r3
	mov.l @(0x1E4,PC),r1
	mov.l @(0x1E8,PC),r3
	mov.b @r1,r2
	mov.w @r3,r0
	mov 0x00,r3
	extu.b r2,r2
	add r0,r2
	mov.w r2,@r12
	mov.w r13,@r14
	mov.l @(0x1C8,PC),r2
	mov.b r13,@r2
	mov.w r3,@r5
	mov.l @(0x1D8,PC),r0
	mov.l @(0x1D4,PC),r4
	mov.w @r0,r3
	mov.w @r4,r0
	add r3,r0
	bra loc_8c1bd552
	mov.w r0,@r4

loc_8c1BD54A:
	mov.w @r14,r2
	add 0x01,r2
	mov.w r2,@r14
	mov.w r4,@r12

loc_8c1BD552:
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BD55C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x1B8,PC),r2
	mov.l @(0x1BC,PC),r0
	sts.l pr,@-r15
	mov.w @r0,r1
	mov.w @r2,r3
	add 0xFC,r15
	cmp/hs r1,r3
	bt loc_8c1bd628
	mov.l @(0x1BC,PC),r7
	mov.l @(0x1B4,PC),r1
	mov.w @r7,r3
	mov.l @(0x1AC,PC),r14
	extu.w r3,r3
	mov.l @r1,r5
	mov.w @r14,r4
	mov.l @(0x1AC,PC),r13
	extu.w r4,r4
	mov r4,r6
	mov.l @r13,r0
	shll r6
	shll r3
	add r5,r3
	mov.w @r3,r2
	mov.w r2,@(r0,r6)
	mov.w @r7,r0
	extu.w r0,r0
	shll r0
	mov.w r4,@(r0,r5)
	mov.l @(0x198,PC),r3
	mov.l @(0x170,PC),r1
	mov.l @r3,r0
	mov.b @r1,r2
	mov.b r2,@(r0,r4)
	mov.l @(0x194,PC),r3
	mov.w @r7,r2
	mov.l @r3,r0
	mov.w r2,@(r0,r6)
	mov r6,r0
	nop
	mov 0x00,r2
	mov.w r2,@(r0,r5)
	mov.l @(0x154,PC),r1
	mov.w r4,@r1
	add 0x01,r4
	mov.l @(0x180,PC),r2
	mov.l @(0x184,PC),r3
	mov.w @r2,r6
	mov.w @r3,r7
	extu.w r6,r6
	cmp/hi r6,r4
	bf.s loc_8c1bd5d4
	extu.w r7,r7
	bra loc_8c1bd5d4
	mov r7,r4

loc_8c1BD5CC:
	add 0x01,r4
	cmp/hi r6,r4
	bf loc_8c1bd5d4
	mov r7,r4

loc_8c1BD5D4:
	mov r4,r0
	nop
	shll r0
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r3,r3
	bf loc_8c1bd5cc
	mov r15,r5
	mov.w r4,@r14
	bsr loc_8c1bd638
	mov.w @r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1bd608
	mov.w @r15,r0
	mov.l @r13,r3
	extu.w r0,r0
	mov.w @r14,r2
	shll r0
	add r0,r3
	mov.l @r13,r0
	extu.w r2,r2
	shll r2
	mov.w @(r0,r2),r1
	bra loc_8c1bd62c
	nop

loc_8c1BD608:
	mov.l @(0x12C,PC),r3
	mov.w @r14,r4
	mov.l @r3,r0
	extu.w r4,r4
	mov.l @(0x114,PC),r1
	shll r4
	mov.w @(r0,r4),r2
	mov.l @r1,r0
	extu.w r2,r2
	shll r2
	add r0,r2
	mov.l @r13,r0
	mov.w @(r0,r4),r3
	mov.w r3,@r2
	bra loc_8c1bd62e
	nop

loc_8c1BD628:
	mov.l @(0xDC,PC),r3
	mov 0x00,r1

loc_8c1BD62C:
	mov.w r1,@r3

loc_8c1BD62E:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BD638:
	mov.l @(0xFC,PC),r3
	mov r4,r7
	mov.l @(0xEC,PC),r2
	extu.w r7,r4
	mov.l @r3,r0
	shll r4
	mov.l @r2,r6
	mov.l @(0xE0,PC),r2
	mov.w @(r0,r4),r4
	mov.l @r2,r0
	extu.w r4,r4
	shll r4
	bra loc_8c1bd66c
	mov.w @(r0,r4),r4

loc_8c1BD654:
	extu.w r4,r0
	shll r0
	add r6,r0
	mov.w @r0,r2
	extu.w r7,r3
	extu.w r2,r2
	cmp/eq r2,r3
	bf loc_8c1bd66a
	mov.w r4,@r5
	rts
	mov 0x01,r0

loc_8c1BD66A:
	mov.w @r0,r4

loc_8c1BD66C:
	extu.w r4,r2
	tst r2,r2
	bf loc_8c1bd654
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c1BD678:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x01,r8 ; r8 set to 0x01
	mov.l @(loc_8c1BD748,pc),r2 ; r2 set to 0x8C35279E
	mov r8,r10 ; r10 set to 0x01
	mov.l @(loc_8c1BD744,pc),r9 ; r9 set to 0x8C35394C
	add 0x7F,r10 ; r10 set to 0x80
	mov.w @r2,r3
	sts.l pr,@-r15
	mov.w r3,@r9 ; r9 ??? bc r3 is ???
	mov.l @(loc_8c1BD74C,pc),r1 ; r1 set to 0x8C34B29F
	add 0xF8,r15
	mov.l r1,@(0x04,r15)
	mov.l @(loc_8c1BD754,pc),r12 ; r12 set to 0x8C353964
	mov.l @(loc_8c1BD750,pc),r11 ; r11 set to 0x8C1A0D92
	mov.l @(loc_8c1BD758,pc),r14 ; r14 set to 0x8C35382C
	mov.l @(loc_8c1BD75C,pc),r3 ; r3 set to 0x8C352EA8
	bra loc_8c1BD77C
	mov.l r3,@r15

loc_8c1BD6AA:
	mov.b @r12,r2
	tst r2,r2
	bt loc_8c1bd6b6
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov.b r13,@r12

loc_8c1BD6B6:
	mov.l @(0xAC,PC),r1
	mov.w @r14,r2
	mov.w @r1,r3
	cmp/hi r3,r2
	bf loc_8c1bd6ea
	jsr @r11
	mov.w @r14,r4
	mov.w r13,@r14
	mov.l @(0x80,PC),r1
	mov.w @r9,r2
	mov.w @r1,r3
	mov.l @(0x98,PC),r0
	extu.w r2,r2
	extu.w r3,r3
	sub r3,r2
	mov.w @r0,r3
	extu.w r3,r3
	cmp/gt r3,r2
	bt loc_8c1bd7a8
	mov.l @(0x90,PC),r2
	mov.l @(0x8C,PC),r4
	jsr @r2
	nop
	extu.w r0,r0
	cmp/ge r10,r0
	bf loc_8c1bd7a8

loc_8c1BD6EA:
	mov.l @(0x88,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1bd778
	bsr loc_8c1bd7bc
	nop
	bra loc_8c1bd77c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1bd6fc:
	#data 0x8C3537FC
loc_8c1BD700:
	#data 0x8C3537D2
loc_8c1BD704:
	#data 0x8C3537DB
loc_8c1BD708:
	#data 0x8C353814
loc_8c1BD70c:
	#data 0x8C3537D7
loc_8c1BD710:
	#data 0x8C353804
loc_8c1BD714:
	#data 0x8C3537F8
loc_8c1BD718:
	#data 0x8C35380C
loc_8c1BD71c:
	#data 0x8C3537F2
loc_8c1BD720:
	#data 0x8C353806
loc_8c1BD724:
	#data 0x8C35380A
loc_8c1BD728:
	#data 0x8C353820
loc_8c1BD72c:
	#data 0x8C353824
loc_8c1BD730:
	#data 0x8C3537F4
loc_8c1BD734:
	#data 0x8C353818
loc_8c1BD738:
	#data 0x8C35381C
loc_8c1BD73c:
	#data 0x8C353808
loc_8c1BD740:
	#data 0x8C353802
loc_8c1BD744:
	#data 0x8C35394C
loc_8c1BD748:
	#data 0x8C35279E
loc_8c1BD74C:
	#data 0x8C34B29F
loc_8c1BD750:
	#data bank1a.loc_8c1a0D92
loc_8c1BD754:
	#data 0x8C353964
loc_8c1BD758:
	#data 0x8C35382C
loc_8c1BD75C:
	#data 0x8C352EA8
loc_8c1BD760:
	#data loc_8c1B9ED0
loc_8c1BD764:
	#data 0x8C353952
loc_8c1BD768:
	#data 0x8C352E64
loc_8c1BD76c:
	#data 0x8C353830
loc_8c1BD770:
	#data bank1a.loc_8c1a0D48
loc_8c1BD774:
	#data 0x8C353834

;==============================================
loc_8c1BD778:
	bsr loc_8c1bd93c
	nop

loc_8c1bd77c:
	mov.l @(0x04,r15),r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r8,r2
	bt loc_8c1bd792
	mov.l @(loc_8C1BD95C,pc),r2
	mov.l @r15,r1
	mov.l @r2,r3
	mov.l @r1,r2
	cmp/eq r3,r2
	bt loc_8c1bd79a

loc_8c1bd792:
	mov.l @(loc_8C1BD960,pc),r1
	mov.w @r1,r0
	tst r0,r0
	bf loc_8c1bd6aa

loc_8c1bd79a:
	mov.w @r14,r4
	extu.w r4,r2
	tst r2,r2
	bt loc_8c1bd7a8
	jsr @r11
	nop
	mov.w r13,@r14

loc_8c1bd7a8:
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
loc_8c1bd7bc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(0x1A4,PC),r2
	sts.l pr,@-r15
	mov.b @r2,r3
	mov.l @(0x190,PC),r13
	mov.l @(0x198,PC),r14
	tst r3,r3
	bt loc_8c1bd7e2
	mov.l @r13,r4
	add 0x01,r4
	mov.l r4,@r13
	add 0xFF,r4
	bsr loc_8c1be45c
	mov.b @r4,r4
	extu.b r0,r0
	bra loc_8c1bd7f0
	mov.w r0,@r14

loc_8c1bd7e2:
	mov.l @r13,r3
	add 0x01,r3
	mov.l r3,@r13
	add 0xFF,r3
	mov.b @r3,r1
	extu.b r1,r1
	mov.w r1,@r14

loc_8c1bd7f0:
	mov.l @(0x178,PC),r4
	mov.w @r4,r3
	add 0xFF,r3
	mov.w r3,@r4
	mov.l @(0x164,PC),r4
	mov.w @r4,r2
	add 0xFF,r2
	mov.w r2,@r4
	mov.l @(0x16C,PC),r0
	mov.l @r13,r1
	mov.l @r0,r3
	cmp/hi r3,r1
	bf.s loc_8c1bd810
	mov 0x01,r5
	mov.l @(0x164,PC),r2
	mov.l r2,@r13

loc_8c1bd810:
	mov.l @(0x164,PC),r4
	mov.l @(0x168,PC),r12
	mov.b @r4,r3
	tst r3,r3
	bf.s loc_8c1bd82c
	mov 0x00,r13
	mov.b @r12,r2
	mov.w @r14,r3
	extu.b r2,r2
	extu.w r3,r3
	cmp/eq r2,r3
	bf loc_8c1bd87e
	bra loc_8c1bd88a
	mov.b r5,@r4

loc_8c1bd82c:
	mov.b r13,@r4
	mov.w @r14,r3
	tst r3,r3
	bf loc_8c1bd848
	mov.l @(0x148,PC),r1
	mov.b r13,@r1
	mov.l @(0x148,PC),r3
	mov.w r13,@r3
	mov.l @(0x148,PC),r2
	mov.b r5,@r2
	mov.l @(0x148,PC),r1
	mov.b r13,@r1
	bra loc_8c1bd88a
	nop

loc_8c1bd848:
	mov.w @r14,r4
	extu.w r4,r0
	cmp/eq 0x01,r0
	bf.s loc_8c1bd86c
	mov r0,r4
	mov.b @r12,r3
	extu.b r3,r3
	mov.w r3,@r14
	bsr loc_8c1be020
	mov.b @r12,r4
	bsr loc_8c1bd894
	nop
	mov.l @(0x12C,PC),r2
	mov.b r13,@r2
	mov.b @r12,r3
	add 0x33,r3
	bra loc_8c1bd88a
	mov.b r3,@r12

loc_8c1bd86c:
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c1bd88a
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1be2a0
	mov.l @r15+,r14

loc_8c1bd87e:
	bsr loc_8c1be020
	mov.w @r14,r4
	bsr loc_8c1bd894
	nop
	mov.l @(0x108,PC),r3
	mov.b r13,@r3

loc_8c1bd88a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bd894:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0xF4,PC),r13
	mov.l @(0xFC,PC),r2
	mov.w @r13,r6
	mov.l @r2,r3
	extu.w r6,r6
	mov.l @(0xE8,PC),r11
	shll r6
	mov.l @(0xB4,PC),r10
	add r3,r6
	mov.l @(0xE8,PC),r14
	mov.w @r6,r1
	sts.l pr,@-r15
	tst r1,r1
	bf.s loc_8c1bd8ce
	mov.w @r10,r5
	mov.w @r14,r1
	tst r1,r1
	bf loc_8c1bd8e2
	mov.w @r11,r1
	add r1,r5
	mov.w r5,@r13
	bra loc_8c1bd92e
	mov.w r12,@r14


loc_8c1bd8ce:
	bra loc_8c1bd8f4
	mov.w @r6,r4

loc_8c1bd8d2:
	mov.l @(0xD0,PC),r6
	extu.w r4,r0
	shll r0
	mov.l @r6,r3
	mov.w @(r0,r3),r4
	extu.w r4,r2
	tst r2,r2
	bf loc_8c1bd8f4

loc_8c1bd8e2:
	mov.l @(0xC4,PC),r4
	bsr loc_8c1bdbe8
	mov.b r5,@r4
	mov.w r12,@r14
	mov.w @r10,r2
	mov.w @r11,r3
	add r3,r2
	bra loc_8c1bd92e
	mov.w r2,@r13

loc_8c1bd8f4:
	mov.l @(0xB4,PC),r6
	extu.w r4,r0
	mov.l @r6,r3
	mov.b @(r0,r3),r2
	extu.w r5,r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c1bd8d2
	mov.l @(0xA8,PC),r6
	extu.w r4,r3
	mov.w @r6,r2
	extu.w r2,r2
	cmp/eq r2,r3
	bt loc_8c1bd918
	mov.l @(0x7C,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1bd926

loc_8c1bd918:
	mov.w @r11,r2
	mov 0x00,r3
	add r2,r5
	mov.w r5,@r13
	mov.w r12,@r14
	bra loc_8c1bd92e
	mov.w r3,@r6

loc_8c1bd926:
	mov.w @r14,r1
	add 0x01,r1
	mov.w r1,@r14
	mov.w r4,@r13

loc_8c1bd92e:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bd93c:
	sts.l pr,@-r15
	bsr loc_8c1bdf04
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1bd94c
	bra loc_8c1bda40
	nop

loc_8c1bd94c:
	mov.l @(0x14,PC),r3
	mov 0x02,r2
	mov.w @r3,r4
	extu.w r4,r4
	cmp/gt r2,r4
	bf loc_8c1bd9b4
	bra loc_8c1bda46
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C1BD95C:
	#data 0x8C352790
loc_8C1BD960:
	#data 0x8C35279E
loc_8C1BD964:
	#data 0x8C3537FC
loc_8C1BD968:
	#data 0x8C352E8D
loc_8C1BD96c:
	#data 0x8C35279C
loc_8C1BD970:
	#data 0x8C35278C
loc_8C1BD974:
	#data 0x8C35178A
loc_8C1BD978:
	#data 0x8C353835
loc_8C1BD97c:
	#data 0x8C353838
loc_8C1BD980:
	#data 0x8C353939
loc_8C1BD984:
	#data 0x8C35394E
loc_8C1BD988:
	#data 0x8C35393A
loc_8C1BD98c:
	#data 0x8C353834
loc_8C1BD990:
	#data 0x8C353836
loc_8C1BD994:
	#data 0x8C353804
loc_8C1BD998:
	#data 0x8C35394A
loc_8C1BD99c:
	#data 0x8C353948
loc_8C1BD9a0:
	#data 0x8C35395C
loc_8C1BD9a4:
	#data 0x8C353960
loc_8C1BD9a8:
	#data 0x8C353837
loc_8C1BD9ac:
	#data 0x8C353954
loc_8C1BD9b0:
	#data 0x8C353946

;==============================================
loc_8c1bd9b4:
	mov.l @(0xDC,PC),r7
	tst r4,r4
	mov 0x01,r6
	bf.s loc_8c1bd9ce
	mov 0x00,r5
	mov.l @(0xD8,PC),r0
	mov.b r5,@r0
	mov.w r5,@r7
	mov.l @(0xD4,PC),r3
	mov.b r6,@r3
	mov.l @(0xD4,PC),r2
	bra loc_8c1bda40
	mov.b r6,@r2

loc_8c1bd9ce:
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1bd9e2
	mov.l @(0xC0,PC),r1
	mov.b r5,@r1
	mov.w r5,@r7
	mov.l @(0xC4,PC),r3
	bra loc_8c1bda40
	mov.b r6,@r3

loc_8c1bd9e2:
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c1bda40
	mov.l @(0xBC,PC),r6
	mov.w @r6,r0
	add 0x01,r0
	mov.w r0,@r6
	mov.w @r6,r4
	mov.l @(0xB4,PC),r5
	extu.w r4,r0
	cmp/eq 0x09,r0
	bf.s loc_8c1bda04
	mov r0,r4
	mov.w @(0x86,PC),r0
	bra loc_8c1bda34
	nop

loc_8c1bda04:
	mov r4,r0
	nop
	cmp/eq 0x0A,r0
	bf loc_8c1bda12
	mov.w @(0x7A,PC),r1
	bra loc_8c1bda26
	nop
 
loc_8c1bda12:
	mov r4,r0
	nop
	cmp/eq 0x0B,r0
	bf loc_8c1bda20
	mov.w @(0x6E,PC),r0
	bra loc_8c1bda34
	nop

loc_8c1bda20:
	cmp/eq 0x0C,r0
	bf loc_8c1bda2a
	mov.w @(0x66,PC),r1

loc_8c1bda26:
	bra loc_8c1bda40
	mov.w r1,@r5

loc_8c1bda2a:
	mov r4,r0
	nop
	cmp/eq 0x0D,r0
	bf loc_8c1bda38
	mov.w @(0x5A,PC),r0

loc_8c1bda34:
	bra loc_8c1bda40
	mov.w r0,@r5

loc_8c1bda38:
	cmp/eq 0x0E,r0
	bf loc_8c1bda40
	mov.w @(0x52,PC),r1
	mov.w r1,@r5

loc_8c1bda40:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1bda46:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x68,PC),r3
	mov.l @(0x68,PC),r6
	mov.w @r3,r5
	mov.l @r6,r1
	extu.w r5,r0
	mov.l @(0x58,PC),r13
	mov.b @(r0,r1),r0
	extu.w r5,r2
	mov r13,r4
	mov.b r0,@r4
	mov.l @(0x5C,PC),r0
	sts.l pr,@-r15
	mov.w @r0,r1
	extu.w r1,r1
	cmp/eq r1,r2
	bf.s loc_8c1bda80
	add 0x01,r4
	mov.l @(0x50,PC),r2
	mov 0x00,r1
	mov.w r1,@r2
	mov.l @(0x50,PC),r3
	jsr @r3
	mov 0x13,r4
	mov.l @(0x4C,PC),r3
	mov 0x05,r2
	bra loc_8c1bdb56
	mov.l r2,@r3

loc_8c1bda80:
	mov.l @(0x4C,PC),r7
	mov.l @(0x48,PC),r14
	bra loc_8c1bdae6
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bda88:
	#data 0x01FF
loc_8c1bda8a:
	#data 0x03FF
loc_8c1bda8c:
	#data 0x07FF
loc_8c1bda8e:
	#data 0x0FFF
loc_8c1bda90:
	#data 0x1FFF
loc_8c1bda92:
	#data 0x3FFF
	#align4

loc_8c1bda94:
	#data 0x8C35394E
loc_8c1bda98:
	#data 0x8C353939
loc_8c1bda9c:
	#data 0x8C353834
loc_8c1bdaa0:
	#data 0x8C353836
loc_8c1bdaa4:
	#data 0x8C35393A
loc_8c1bdaa8:
	#data 0x8C35393E
loc_8c1bdaac:
	#data 0x8C353942
loc_8c1bdab0:
	#data 0x8C353839
loc_8c1bdab4:
	#data 0x8C3537FC
loc_8c1bdab8:
	#data 0x8C353954
loc_8c1bdabc:
	#data 0x8C35393C
loc_8c1bdac0:
	#data 0x8C35279E
loc_8c1bdac4:
	#data loc_8c1b3454
loc_8c1bdac8:
	#data 0x8C34B324
loc_8c1bdacc:
	#data 0x8C353958
loc_8c1bdad0:
	#data 0x8C353802

;==============================================
loc_8c1bdad4:
	mov.l @r14,r3
	extu.w r5,r0
	shll r0
	mov.w @(r0,r3),r5
	mov.l @r6,r3
	extu.w r5,r0
	mov.b @(r0,r3),r1
	mov.b r1,@r4
	add 0x01,r4

loc_8c1bdae6:
	mov.w @r7,r2
	extu.w r5,r3
	extu.w r2,r2
	cmp/ge r2,r3
	bt loc_8c1bdad4
	mov r4,r2
	sub r13,r2
	mov.l @(0x20C,PC),r14
	extu.b r2,r2
	add 0xFF,r4
	mov.w r2,@r14
	mov.l @(0x208,PC),r2
	mov.b @r4,r3
	mov.b r3,@r2
	mov.l @(0x208,PC),r5
	mov.w @r14,r3
	mov.w @r5,r1
	mov.l @(0x204,PC),r7
	mov.l @(0x208,PC),r6
	add r3,r1
	bra loc_8c1bdb2e
	mov.w r1,@r5

loc_8c1bdb12:
	mov.b @r4,r2
	mov.b @r6,r5
	extu.b r2,r2
	extu.b r5,r3
	cmp/eq r3,r2
	bf loc_8c1bdb22
	add 0x33,r5
	mov.b r5,@r6

loc_8c1bdb22:
	mov.l @r7,r3
	add 0x01,r3
	mov.l r3,@r7
	mov.b @r4,r1
	add 0xFF,r4
	mov.b r1,@-r3

loc_8c1bdb2e:
	cmp/hs r13,r4
	bt loc_8c1bdb12
	bsr loc_8c1bdb5e
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1bdb48
	mov.l @(0x1D8,PC),r3
	mov.w @r3,r2
	tst r2,r2
	bt loc_8c1bdb48
	bsr loc_8c1bdbe8
	nop

loc_8c1bdb48:
	mov.l @(0x1D0,PC),r2
	mov.w @r14,r3
	mov.w r3,@r2
	mov.l @(0x1D0,PC),r0
	mov.l @(0x1C4,PC),r3
	mov.w @r0,r1
	mov.w r1,@r3

loc_8c1bdb56:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bdb5e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x1C4,PC),r5
	mov.l @(0x1B0,PC),r4
	mov.b @r5,r3
	mov.l @(0x1B8,PC),r13
	mov.l @(0x19C,PC),r6
	tst r3,r3
	bf.s loc_8c1bdba8
	mov 0x00,r14
	mov.l @(0x1B8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1bdba8
	mov.w @r13,r2
	mov.l @(0x1B0,PC),r1
	extu.w r2,r2
	mov.w @r4,r3
	mov.l @r1,r0
	shll r2
	extu.w r3,r3
	mov.w @(r0,r2),r2
	extu.w r2,r2
	cmp/eq r2,r3
	bf loc_8c1bdbe0
	mov.l @(0x1A0,PC),r1
	mov.w @r13,r3
	mov.l @r1,r0
	extu.w r3,r3
	mov.b @r6,r2
	mov.b @(r0,r3),r3
	extu.b r2,r2
	extu.b r3,r3
	cmp/eq r3,r2
	bt loc_8c1bdbd0
	bra loc_8c1bdbe0
	nop

loc_8c1bdba8:
	mov.b r14,@r5
	mov.l @(0x18C,PC),r2
	mov.w @r4,r3
	mov.l @r2,r0
	extu.w r3,r3
	mov.b @r6,r6
	shll r3
	mov.l @(0x17C,PC),r2
	mov.w @(r0,r3),r4
	extu.b r6,r6
	mov.l @(0x17C,PC),r3
	mov.l @r3,r7
	bra loc_8c1bdbda
	mov.l @r2,r5

loc_8c1bdbc4:
	extu.w r4,r0
	mov.b @(r0,r5),r3
	extu.w r6,r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c1bdbd6

loc_8c1bdbd0:
	mov.w r14,@r13
	bra loc_8c1bdbe2
	mov 0x00,r0

loc_8c1bdbd6:
	shll r0
	mov.w @(r0,r7),r4

loc_8c1bdbda:
	extu.w r4,r3
	tst r3,r3
	bf loc_8c1bdbc4

loc_8c1bdbe0:
	mov 0x01,r0

loc_8c1bdbe2:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bdbe8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x12C,PC),r2
	mov.l @(0x150,PC),r0
	sts.l pr,@-r15
	mov.w @r0,r1
	mov.w @r2,r3
	add 0xFC,r15
	cmp/hs r1,r3
	bt loc_8c1bdcb4
	mov.l @(0x118,PC),r7
	mov.l @(0x144,PC),r14
	mov.w @r7,r3
	mov.l @(0x134,PC),r1
	extu.w r3,r3
	mov.w @r14,r4
	mov.l @r1,r5
	mov.l @(0x130,PC),r13
	extu.w r4,r4
	mov r4,r6
	shll r6
	shll r3
	mov.l @r13,r0
	add r5,r3
	mov.w @r3,r2
	mov.w r2,@(r0,r6)
	mov.w @r7,r0
	extu.w r0,r0
	shll r0
	mov.w r4,@(r0,r5)
	mov.l @(0x10C,PC),r3
	mov.l @(0xE0,PC),r1
	mov.l @r3,r0
	mov.b @r1,r2
	mov.b r2,@(r0,r4)
	mov.l @(0x100,PC),r3
	mov.w @r7,r2
	mov.l @r3,r0
	mov.w r2,@(r0,r6)
	mov r6,r0
	nop
	mov 0x00,r2
	mov.w r2,@(r0,r5)
	mov.l @(0xE4,PC),r1
	mov.w r4,@r1
	add 0x01,r4
	mov.l @(0x100,PC),r2
	mov.l @(0x104,PC),r3
	mov.w @r2,r6
	mov.w @r3,r7
	extu.w r6,r6
	cmp/hi r6,r4
	bf.s loc_8c1bdc60
	extu.w r7,r7
	bra loc_8c1bdc60
	mov r7,r4

loc_8c1bdc58:
	add 0x01,r4
	cmp/hi r6,r4
	bf loc_8c1bdc60
	mov r7,r4

loc_8c1bdc60:
	mov r4,r0
	nop
	shll r0
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r3,r3
	bf loc_8c1bdc58
	mov r15,r5
	mov.w r4,@r14
	bsr loc_8c1bdcc4
	mov.w @r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1bdc94
	mov.w @r15,r0
	mov.l @r13,r3
	extu.w r0,r0
	mov.w @r14,r2
	shll r0
	add r0,r3
	mov.l @r13,r0
	extu.w r2,r2
	shll r2
	mov.w @(r0,r2),r1
	bra loc_8c1bdcb8
	nop

loc_8c1bdc94:
	mov.l @(0x98,PC),r3
	mov.w @r14,r4
	mov.l @r3,r0
	extu.w r4,r4
	mov.l @(0x98,PC),r1
	shll r4
	mov.w @(r0,r4),r2
	mov.l @r1,r0
	extu.w r2,r2
	shll r2
	add r0,r2
	mov.l @r13,r0
	mov.w @(r0,r4),r3
	mov.w r3,@r2
	bra loc_8c1bdcba
	nop

loc_8c1bdcb4:
	mov.l @(0x6C,PC),r3
	mov 0x00,r1

loc_8c1bdcb8:
	mov.w r1,@r3

loc_8c1bdcba:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;==============================================
loc_8c1bdcc4:
	mov.l @(0x68,PC),r3
	mov r4,r7
	mov.l @(0x70,PC),r2
	extu.w r7,r4
	mov.l @r3,r0
	shll r4
	mov.l @r2,r6
	mov.l @(0x64,PC),r2
	mov.w @(r0,r4),r4
	mov.l @r2,r0
	extu.w r4,r4
	shll r4
	bra loc_8c1bdcf8
	mov.w @(r0,r4),r4

loc_8c1bdce0:
	extu.w r4,r0
	shll r0
	add r6,r0
	mov.w @r0,r2
	extu.w r7,r3
	extu.w r2,r2
	cmp/eq r2,r3
	bf loc_8c1bdcf6
	mov.w r4,@r5
	rts
	mov 0x01,r0

;==============================================
loc_8c1bdcf6:
	mov.w @r0,r4

loc_8c1bdcf8:
	extu.w r4,r2
	tst r2,r2
	bf loc_8c1bdce0
	mov 0x00,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1dd04:
	#data 0x8C353944
loc_8c1dd08:
	#data 0x8C353837
loc_8c1dd0c:
	#data 0x8C35382C
loc_8c1dd10:
	#data 0x8C353830
loc_8c1dd14:
	#data 0x8C353838
loc_8c1dd18:
	#data 0x8C35394A
loc_8c1dd1c:
	#data 0x8C353948
loc_8c1dd20:
	#data 0x8C3537FC
loc_8c1dd24:
	#data 0x8C353946
loc_8c1dd28:
	#data 0x8C35393A
loc_8c1dd2c:
	#data 0x8C352E20
loc_8c1dd30:
	#data 0x8C353958
loc_8c1dd34:
	#data 0x8C353954
loc_8c1dd38:
	#data 0x8C35395C
loc_8c1dd3c:
	#data 0x8C353960
loc_8c1dd40:
	#data 0x8C353806
loc_8c1dd44:
	#data 0x8C35393C
loc_8c1dd48:
	#data 0x8C353808
loc_8c1dd4c:
	#data 0x8C353802

;==============================================
loc_8c1bdd50:
	mov.l r14,@-r15
	extu.w r4,r4
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x1E0,PC),r9
	sts.l pr,@-r15
	mov.l @(0x1D8,PC),r3
	add 0xFC,r15
	mov.w @r3,r14
	mov.l r4,@r15
	mov.b @r9,r2
	mov.l @(0x1D8,PC),r10
	extu.b r2,r2
	shad r2,r4
	mov.l @(0x1D4,PC),r2
	mov.b @r2,r1
	tst r1,r1
	bt.s loc_8c1bdd90
	or r4,r14
	mov.l @r10,r1
	add 0x01,r1
	mov.l r1,@r10
	add 0xFF,r1
	mov r1,r8
	bsr loc_8c1be426
	mov r14,r4
	bra loc_8c1bdd98
	mov.b r0,@r8

loc_8c1bdd90:
	mov.l @r10,r1
	add 0x01,r1
	mov.l r1,@r10
	mov.b r14,@-r1

loc_8c1bdd98:
	mov.l @(0x1B4,PC),r11
	mov.w @r11,r3
	add 0x01,r3
	mov.w r3,@r11
	mov.l @(0x1B0,PC),r13
	mov.w @r13,r2
	add 0x01,r2
	mov.w r2,@r13
	mov.l @(0x1AC,PC),r12
	mov.w @r12,r3
	add 0x01,r3
	mov.w r3,@r12
	mov.l @(0x1A8,PC),r0
	mov.l @r10,r1
	mov.l @r0,r2
	cmp/hi r2,r1
	bf loc_8c1bddc0
	mov.l @(0x1A4,PC),r1
	mov.l @r1,r3
	mov.l r3,@r10

loc_8c1bddc0:
	mov.b @r9,r2
	mov 0x08,r3
	mov.l @r15,r14
	extu.b r2,r2
	mov.l @(0x198,PC),r1
	sub r2,r3
	mov.b @r9,r2
	neg r3,r3
	shad r3,r14
	mov.w @r1,r3
	add r3,r2
	mov 0x08,r3
	mov.b r2,@r9
	mov.b @r9,r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c1bde32
	mov.l @(0x168,PC),r2
	mov.b @r2,r0
	tst r0,r0
	bt loc_8c1bddfc
	mov.l @r10,r1
	add 0x01,r1
	mov.l r1,@r10
	add 0xFF,r1
	mov r1,r8
	bsr loc_8c1be426
	mov r14,r4
	bra loc_8c1bde04
	mov.b r0,@r8

loc_8c1bddfc:
	mov.l @r10,r1
	add 0x01,r1

loc_8c1bde00:
	mov.l r1,@r10
	mov.b r14,@-r1

loc_8c1bde04:
	mov.w @r11,r3
	add 0x01,r3
	mov.w r3,@r11
	mov.w @r13,r2
	add 0x01,r2
	mov.w r2,@r13
	mov.w @r12,r3
	add 0x01,r3
	mov.w r3,@r12
	mov.l @(0x144,PC),r0
	mov.l @r10,r1
	mov.l @r0,r2
	cmp/hi r2,r1
	bf.s loc_8c1bde28
	extu.w r14,r2
	mov.l @(0x13C,PC),r1
	mov.l @r1,r3
	mov.l r3,@r10

loc_8c1bde28:
	mov.b @r9,r3
	mov r2,r14
	shlr8 r14
	add 0xF8,r3
	mov.b r3,@r9

loc_8c1bde32:
	add 0x04,r15
	mov.l @(0x108,PC),r2
	lds.l @r15+,pr
	mov.w r14,@r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bde4a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0x114,PC),r13
	mov.l @(0x118,PC),r14
	mov.l @(0x108,PC),r12
	add 0xFC,r15
	mov.l @(0x108,PC),r11
	bra loc_8c1bde80
	mov.w r4,@r15

loc_8c1bde62:
	bsr loc_8c1bdd50
	mov 0x02,r4
	mov.w @r13,r3
	add 0x01,r3
	mov.w r3,@r13
	mov.w @r12,r2
	add 0x01,r2
	mov.w r2,@r12
	mov.w @r11,r3
	add 0x01,r3
	mov.w r3,@r11
	mov.w @r14,r2
	mov.w @r14,r3
	add r3,r2
	mov.w r2,@r14

loc_8c1bde80:
	mov.w @r14,r3
	mov.w @r15,r1
	cmp/hs r3,r1
	bt loc_8c1bde62
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bde96:
	mov.l r14,@-r15
	mov.l r8,@-r15
	mov.l @(0xB0,PC),r2
	sts.l pr,@-r15
	mov.b @r2,r3
	mov.l @(0xA4,PC),r14
	tst r3,r3
	bt loc_8c1bdeb6
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14
	add 0xFF,r3
	bsr loc_8c1be426
	mov r3,r8
	bra loc_8c1bdebe
	mov.b r0,@r8

loc_8c1bdeb6:
	mov.l @r14,r1
	add 0x01,r1
	mov.l r1,@r14
	mov.b r4,@-r1

loc_8c1bdebe:
	mov.l @(0x90,PC),r4
	mov.w @r4,r3
	add 0x01,r3
	mov.w r3,@r4
	mov.l @(0x8C,PC),r4
	mov.w @r4,r2
	add 0x01,r2
	mov.w r2,@r4
	mov.l @(0x88,PC),r4
	mov.w @r4,r3
	add 0x01,r3
	mov.w r3,@r4
	mov.l @(0x84,PC),r0
	mov.l @r14,r1
	mov.l @r0,r2
	cmp/hi r2,r1
	bf loc_8c1bdee6
	mov.l @(0x7C,PC),r1
	mov.l @r1,r3
	mov.l r3,@r14

loc_8c1bdee6:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1bdeee:
	mov.l @(0x54,PC),r4
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c1bdf00
	mov 0x00,r1
	mov.b r1,@r4
	mov.l @(0x44,PC),r3
	bra loc_8c1bde96
	mov.w @r3,r4

loc_8c1bdf00:
	rts
	nop

;==============================================
loc_8c1bdf04:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x6C,PC),r12
	mov.l @(0x70,PC),r13
	mov.l @(0x70,PC),r14
	mov.l @(0x64,PC),r11
	mov.l @(0x54,PC),r8
	mov.l @(0x58,PC),r9
	mov.l @(0x58,PC),r10
	bra loc_8c1be004
	nop

loc_8c1bdf26:
	mov.l @(0x24,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1bdf90
	mov.l @r13,r4
	add 0x01,r4
	mov.l r4,@r13
	add 0xFF,r4
	bsr loc_8c1be45c
	mov.b @r4,r4
	extu.b r0,r0
	bra loc_8c1bdf9e
	mov.w r0,@r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bdf40:
	#data 0x8C3537EA
loc_8c1bdf44:
	#data 0x8C3537D9
loc_8c1bdf48:
	#data 0x8C35177C
loc_8c1bdf4c:
	#data 0x8C352E8D
loc_8c1bdf50:
	#data 0x8C351788
loc_8c1bdf54:
	#data 0x8C3537D0
loc_8c1bdf58:
	#data 0x8C34B310
loc_8c1bdf5c:
	#data 0x8C351774
loc_8c1bdf60:
	#data 0x8C351770
loc_8c1bdf64:
	#data 0x8C353810
loc_8c1bdf68:
	#data 0x8C353812
loc_8c1bdf6c:
	#data 0x8C35380C
loc_8c1bdf70:
	#data 0x8C35380E
loc_8c1bdf74:
	#data 0x8C35279C
loc_8c1bdf78:
	#data 0x8C35393E
loc_8c1bdf7c:
	#data 0x8C35279E
loc_8c1bdf80:
	#data 0x8C353950
loc_8c1bdf84:
	#data 0x8C35394E
loc_8c1bdf88:
	#data 0x8C352790
loc_8c1bdf8c:
	#data 0x8C353939

;==============================================
loc_8c1bdf90:
	mov.l @r13,r2
	add 0x01,r2
	mov.l r2,@r13
	add 0xFF,r2
	mov.b @r2,r1
	extu.b r1,r1
	mov.w r1,@r11

loc_8c1bdf9e:
	mov.l @(0xF4,PC),r0
	mov.l @r13,r2
	mov.l @r0,r3
	cmp/hi r3,r2
	bf loc_8c1bdfac
	mov.l @(0xEC,PC),r2
	mov.l r2,@r13

loc_8c1bdfac:
	mov.w @r10,r3
	add 0xFF,r3
	mov.w r3,@r10
	mov.w @r8,r2
	add 0xFF,r2
	mov.w r2,@r8
	mov.b @r14,r2
	mov.w @r11,r3
	extu.b r2,r2
	mov.w @r12,r1
	extu.w r3,r3
	shld r2,r3
	or r1,r3
	mov.w r3,@r12
	mov.b @r14,r2
	add 0x08,r2
	mov.b r2,@r14
	mov.w @r9,r2
	mov.b @r14,r3
	extu.w r2,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c1be004
	mov.l @(0xC0,PC),r1
	mov.w @r12,r3
	mov.w @r1,r2
	mov.l @(0xBC,PC),r0
	and r3,r2
	mov.w r2,@r0
	mov.w @r9,r3
	mov.b @r14,r1
	sub r3,r1
	mov.b r1,@r14
	mov 0x08,r1
	mov.b @r14,r3
	mov.w @r11,r2
	extu.b r3,r3
	sub r3,r1
	neg r1,r1
	extu.w r2,r2
	shld r1,r2
	mov.w r2,@r12
	bra loc_8c1be00e
	mov 0x01,r0

loc_8c1be004:
	mov.w @r10,r3
	extu.w r3,r3
	cmp/pl r3
	bt loc_8c1bdf26
	mov 0x00,r0

loc_8c1be00e:
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
loc_8c1be020:
	mov.l @(0x80,PC),r5
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.b r4,@-r3
	mov.l @(0x7C,PC),r4
	mov.w @r4,r2
	add 0x01,r2
	rts
	mov.w r2,@r4

loc_8c1BE034:
	mov.l @(loc_8c1BE0AC,pc),r7 ; r7 set to 0x8C353800
	mov 0x09,r1 ; r1 set to 0x09
	sts.l pr,@-r15
	mov.w r5,@r7 ; r7 ??? bc r5 is ???
	mov.l @(loc_8c1BE0B0,pc),r3 ; r3 set to 0xFFFF
	mov.l @(loc_8c1BE0B4,pc),r2 ; r2 set to 0x8C353808
	add r3,r5
	mov.w r5,@r2 ; r2 ??? bc r5 is ???
	mov.l @(loc_8c1BE0B8,pc),r4 ; r4 set to 0x8C3537FE
	mov.w @(loc_8c1BE08E,pc),r5 ; r5 set to 0x200
	bra loc_8c1BE054
	mov.w r1,@r4

loc_8c1BE04C:
	mov.w @r4,r3
	add r5,r5
	add 0x01,r3
	mov.w r3,@r4

loc_8c1BE054:
	mov.w @r7,r2
	exts.w r5,r3
	extu.w r2,r2
	cmp/gt r3,r2
	bt loc_8c1BE04C
	mov.l @(loc_8c1BE0BC,pc),r2 ; r2 set to 0x8C353802, r2 set to 0x8C353802
	mov 0x03,r1 ; r1 set to 0x03, r1 set to 0x03
	mov.w @(loc_8c1BE090,pc),r3 ; r3 set to 0x103, r3 set to 0x103
	mov.w r3,@r2 ; r2 ??, r2 ??
	mov 0x7E,r2 ; r2 set to 0x7E, r2 set to 0x7E
	mov.l @(loc_8c1BE0C0,pc),r0 ; r0 set to 0x8C353804, r0 set to 0x8C353804
	sub r6,r2 ; r2 ??? bc r6 is ???, r2 ??? bc r6 is ???
	mov.w r1,@r0 ; r0 ??, r0 ??
	mov.l @(loc_8c1BE0C4,pc),r3 ; r3 set to 0x8C353806, r3 set to 0x8C353806
	mov.w r6,@r3 ; r3 ??? bc r6 is ???, r3 ??? bc r6 is ???
	mov.l @(loc_8c1BE0C8,pc),r1 ; r1 set to 0x8C353952, r1 set to 0x8C353952
	bsr loc_8c1BE0D0
	mov.w r2,@r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
	bsr loc_8c1BE2A0
	nop
	mov.l @(loc_8c1BE0CC,pc),r3 ; r3 set to 0x8C352E8D, r3 set to 0x8C352E8D
	mov.b @r3,r0
	tst r0,r0
	bt loc_8c1BE088
	bra loc_8c1BE3B0
	lds.l @r15+,pr

loc_8c1BE088:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BE08E:
	#data 0x0200
loc_8c1BE090:
	#data 0x0103
	#align4

loc_8c1BE094:
	#data 0x8C35278C
loc_8c1BE098:
	#data 0x8C35178A
loc_8c1BE09c:
	#data 0x8C353942
loc_8c1BE0A0:
	#data 0x8C3537FC
loc_8c1BE0A4:
	#data 0x8C353830
loc_8c1BE0A8:
	#data 0x8C35382C
loc_8c1BE0AC:
	#data 0x8C353800
loc_8c1BE0B0:
	#data 0x0000FFFF
loc_8c1BE0B4:
	#data 0x8C353808
loc_8c1BE0B8:
	#data 0x8C3537FE
loc_8c1BE0BC:
	#data 0x8C353802
loc_8c1BE0C0:
	#data 0x8C353804
loc_8c1BE0C4:
	#data 0x8C353806
loc_8c1BE0C8:
	#data 0x8C353952
loc_8c1BE0CC:
	#data 0x8C352E8D

;==============================================
loc_8c1BE0D0:
	mov.l r14,@-r15
	mov 0x09,r1 ; r1 set to 0x09
	mov 0x01,r5 ; r5 set to 0x01
	mov.l r13,@-r15
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(loc_8c1BE1BC,pc),r14 ; r14 set to 0x8C353802
	mov.l @(loc_8c1BE1C0,pc),r2 ; r2 set to 0x8C35380A
	mov.w @r14,r3
	mov.w r3,@r2 ; r2 ??? bc r3 is ???
	mov 0xF9,r2 ; r2 set to 0xFFFFFFF9
	mov.l @(loc_8c1BE1C4,pc),r0 ; r0 set to 0x8C35380C
	mov.w r1,@r0 ; r0 ??
	mov.l @(loc_8c1BE1C8,pc),r3 ; r3 set to 0x8C353810
	mov.w r5,@r3 ; r3 ??
	mov.l @(loc_8c1BE1CC,pc),r1 ; r1 set to 0x8C353812
	mov.w r2,@r1 ; r1 ??
	mov.l @(loc_8c1BE1D0,pc),r2 ; r2 set to 0x8C35380E
	mov.w @(loc_8c1BE1AE,pc),r0 ; r0 set to 0x200
	mov.w r0,@r2 ; r2 ??
	mov.l @(loc_8c1BE1D4,pc),r3 ; r3 set to 0x8C3537F2
	mov.w r4,@r3 ; r3 ??
	mov.l @(loc_8c1BE1D8,pc),r1 ; r1 set to 0x8C3537D9
	mov.b r4,@r1 ; r1 ??
	mov.l @(loc_8c1BE1DC,pc),r2 ; r2 set to 0x8C3537F4
	mov.w r4,@r2 ; r2 ??
	mov.l @(loc_8c1BE1E0,pc),r3 ; r3 set to 0x8C3537FC
	mov.w r4,@r3 ; r3 ??
	mov.l @(loc_8c1BE1E4,pc),r1 ; r1 set to 0x8C3537EA
	mov.w r4,@r1 ; r1 ??
	mov.l @(loc_8c1BE1E8,pc),r2 ; r2 set to 0x8C353814
	mov.w r4,@r2 ; r2 ??
	mov.l @(loc_8c1BE1EC,pc),r3 ; r3 set to 0x8C3537FA
	mov.w r4,@r3 ; r3 ??
	mov.w @(loc_8c1BE1B0,pc),r6 ; r6 set to 0x400
	mov.l @(loc_8c1BE1F0,pc),r1 ; r1 set to 0x8C34B30C
	mov.w r6,@r1 ; r1 ??
	mov.l @(loc_8c1BE1F4,pc),r2 ; r2 set to 0x8C34B30E
	mov.w r4,@r2 ; r2 ??
	mov.l @(loc_8c1BE1F8,pc),r3 ; r3 set to 0x8C34B310
	mov.w r4,@r3 ; r3 ??
	mov.l @(loc_8c1BE1FC,pc),r1 ; r1 set to 0x8C3537F8
	mov.w r4,@r1 ; r1 ??
	mov.l @(loc_8c1BE200,pc),r2 ; r2 set to 0x8C3537D8
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1BE204,pc),r3 ; r3 set to 0x8C3537D6
	mov.b r5,@r3 ; r3 ??
	mov.l @(loc_8c1BE208,pc),r1 ; r1 set to 0x8C3537D2
	mov.b r4,@r1 ; r1 ??
	mov.l @(loc_8c1BE20C,pc),r2 ; r2 set to 0x8C3537D3
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1BE210,pc),r3 ; r3 set to 0x8C3537D4
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1BE214,pc),r1 ; r1 set to 0x8C3537DA
	mov.b r4,@r1 ; r1 ??
	mov.l @(loc_8c1BE218,pc),r2 ; r2 set to 0x8C3537D5
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1BE220,pc),r0 ; r0 set to 0x8C352E8D
	mov.l @(loc_8c1BE21C,pc),r5 ; r5 set to 0x8C3537F6
	mov.b @r0,r3
	tst r3,r3
	bt loc_8c1BE152
	bra loc_8c1BE156
	mov.w r4,@r5

loc_8c1BE152:
	mov 0x40,r1 ; r1 set to 0x40
	mov.w r1,@r5

loc_8c1BE156:
	mov.l @(loc_8c1BE224,pc),r3 ; r3 set to 0x8C3537E0, r3 set to 0x8C3537E0
	mov.w r4,@r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	mov.l @(loc_8c1BE228,pc),r2 ; r2 set to 0x8C3537E8, r2 set to 0x8C3537E8
	mov.w r4,@r2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???
	mov.l @(loc_8c1BE230,pc),r1 ; r1 set to 0x8C34CF70, r1 set to 0x8C34CF70
	mov.l @(loc_8c1BE22C,pc),r5 ; r5 set to 0x8C353818, r5 set to 0x8C353818
	mov r1,r3 ; r3 set to 0x8C34CF70, r3 set to 0x8C34CF70
	add r3,r6
	mov.l r1,@r5 ; r5 ??, r5 ??
	mov.l @(loc_8c1BE234,pc),r1 ; r1 set to 0x8C353954, r1 set to 0x8C353954
	mov.l r6,@r1 ; r1 ??? bc r6 is ???, r1 ??? bc r6 is ???
	mov.l @r5,r0
	mov.w @(loc_8c1BE1B2,pc),r3 ; r3 set to 0x800, r3 set to 0x800
	mov.l @(loc_8c1BE238,pc),r11 ; r11 set to 0x8C35381C, r11 set to 0x8C35381C
	add r3,r0
	mov.l r0,@r11 ; r11 ??? bc r0 is ???, r11 ??? bc r0 is ???
	shll2 r3 ; r3 set to 0x2000, r3 set to 0x2000
	mov.w @(loc_8c1BE1B4,pc),r2 ; r2 set to 0x1000, r2 set to 0x1000
	mov.l @r5,r0
	mov.l @(loc_8c1BE23C,pc),r12 ; r12 set to 0x8C353820, r12 set to 0x8C353820
	add r2,r0
	mov.l r0,@r12 ; r12 ??? bc r0 is ???, r12 ??? bc r0 is ???
	mov.w @(loc_8c1BE1B6,pc),r1 ; r1 set to 0x1800, r1 set to 0x1800
	mov.l @r5,r0
	mov.l @(loc_8c1BE240,pc),r13 ; r13 set to 0x8C353824, r13 set to 0x8C353824
	add r1,r0
	mov.l r0,@r13 ; r13 ??? bc r0 is ???, r13 ??? bc r0 is ???
	mov.l @r5,r0
	mov.l @(loc_8c1BE244,pc),r2 ; r2 set to 0x8C353958, r2 set to 0x8C353958
	add r3,r0
	mov.l r0,@r2 ; r2 ??? bc r0 is ???, r2 ??? bc r0 is ???
	mov.w @(loc_8c1BE1B8,pc),r3 ; r3 set to 0x2800, r3 set to 0x2800
	mov.l @r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???
	mov.l @(loc_8c1BE248,pc),r2 ; r2 set to 0x8C35395C, r2 set to 0x8C35395C
	add r3,r1
	mov.l r1,@r2 ; r2 ??? bc r1 is ???, r2 ??? bc r1 is ???
	mov.l @r5,r0
	mov.w @(loc_8c1BE1BA,pc),r3 ; r3 set to 0x3000, r3 set to 0x3000
	mov.l @(loc_8c1BE24C,pc),r2 ; r2 set to 0x8C353960, r2 set to 0x8C353960
	add r3,r0
	mov.l r0,@r2 ; r2 ??? bc r0 is ???, r2 ??? bc r0 is ???
	mov.l @(loc_8c1BE250,pc),r1 ; r1 set to 0x8C353808, r1 set to 0x8C353808
	bra loc_8c1BE26C
	mov r4,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BE1AE:
	#data 0x0200
loc_8c1BE1B0:
	#data 0x0400
loc_8c1BE1B2:
	#data 0x0800
loc_8c1BE1B4:
	#data 0x1000
loc_8c1BE1B6:
	#data 0x1800
loc_8c1BE1B8:
	#data 0x2800
loc_8c1BE1BA:
	#data 0x3000
	#align4

loc_8c1BE1BC:
	#data 0x8C353802
loc_8c1BE1C0:
	#data 0x8C35380A
loc_8c1BE1C4:
	#data 0x8C35380C
loc_8c1BE1C8:
	#data 0x8C353810
loc_8c1BE1CC:
	#data 0x8C353812
loc_8c1BE1D0:
	#data 0x8C35380E
loc_8c1BE1D4:
	#data 0x8C3537F2
loc_8c1BE1D8:
	#data 0x8C3537D9
loc_8c1BE1DC:
	#data 0x8C3537F4
loc_8c1BE1E0:
	#data 0x8C3537FC
loc_8c1BE1E4:
	#data 0x8C3537EA
loc_8c1BE1E8:
	#data 0x8C353814
loc_8c1BE1EC:
	#data 0x8C3537FA
loc_8c1BE1F0:
	#data 0x8C34B30C
loc_8c1BE1F4:
	#data 0x8C34B30E
loc_8c1BE1F8:
	#data 0x8C34B310
loc_8c1BE1FC:
	#data 0x8C3537F8
loc_8c1BE200:
	#data 0x8C3537D8
loc_8c1BE204:
	#data 0x8C3537D6
loc_8c1BE208:
	#data 0x8C3537D2
loc_8c1BE20C:
	#data 0x8C3537D3
loc_8c1BE210:
	#data 0x8C3537D4
loc_8c1BE214:
	#data 0x8C3537DA
loc_8c1BE218:
	#data 0x8C3537D5
loc_8c1BE21C:
	#data 0x8C3537F6
loc_8c1BE220:
	#data 0x8C352E8D
loc_8c1BE224:
	#data 0x8C3537E0
loc_8c1BE228:
	#data 0x8C3537E8
loc_8c1BE22C:
	#data 0x8C353818
loc_8c1BE230:
	#data 0x8C34CF70
loc_8c1BE234:
	#data 0x8C353954
loc_8c1BE238:
	#data 0x8C35381C
loc_8c1BE23C:
	#data 0x8C353820
loc_8c1BE240:
	#data 0x8C353824
loc_8c1BE244:
	#data 0x8C353958
loc_8c1BE248:
	#data 0x8C35395C
loc_8c1BE24C:
	#data 0x8C353960
loc_8c1BE250:
	#data 0x8C353808

;==============================================
loc_8c1BE254:
	mov.l @r5,r3
	exts.w r6,r0
	exts.w r6,r7
	mov.b r4,@(r0,r3)
	shll r7
	mov.l @r11,r0
	add 0x01,r6
	mov.w r4,@(r0,r7)
	mov.l @r12,r0
	mov.w r4,@(r0,r7)
	mov.l @r13,r0
	mov.w r4,@(r0,r7)

loc_8c1BE26C:
	mov.w @r1,r2
	exts.w r6,r3
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c1BE254
	mov.l @(loc_8c1BE354,pc),r6 ; r6 set to 0x8C353804, r6 set to 0x8C353804
	bra loc_8c1BE28C
	mov.w @r6,r4

loc_8c1BE27C:
	mov.w @r6,r1
	exts.w r4,r2
	mov.l @r5,r3
	exts.w r4,r0
	extu.w r1,r1
	sub r1,r2
	add 0x01,r4
	mov.b r2,@(r0,r3)

loc_8c1BE28C:
	mov.w @r14,r2
	exts.w r4,r3
	extu.w r2,r2
	cmp/ge r2,r3
	bf loc_8c1BE27C
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BE2A0:
	mov.l r14,@-r15
	mov 0x09,r1 ; r1 set to 0x09
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c1BE358,pc),r14 ; r14 set to 0x8C353802
	mov.l @(loc_8c1BE35C,pc),r2 ; r2 set to 0x8C35393C
	mov.w @r14,r3
	mov.w r3,@r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8c1BE360,pc),r0 ; r0 set to 0x8C35393E
	mov.w r1,@r0 ; r0 ??
	mov.w @(loc_8c1BE350,pc),r3 ; r3 set to 0x200
	mov.l @(loc_8c1BE364,pc),r1 ; r1 set to 0x8C353940
	mov.w r3,@r1 ; r1 ??
	mov.w @(loc_8c1BE352,pc),r2 ; r2 set to 0x1FF
	mov.l @(loc_8c1BE368,pc),r3 ; r3 set to 0x8C353942
	mov.w r2,@r3 ; r3 ??
	mov.l @(loc_8c1BE36C,pc),r2 ; r2 set to 0x8C353948
	mov.w r4,@r2 ; r2 ??
	mov.l @(loc_8c1BE370,pc),r1 ; r1 set to 0x8C35394A
	mov.w r4,@r1 ; r1 ??
	mov.l @(loc_8c1BE374,pc),r3 ; r3 set to 0x8C353939
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1BE378,pc),r2 ; r2 set to 0x8C353946
	mov.w r4,@r2 ; r2 ??
	mov.l @(loc_8c1BE37C,pc),r1 ; r1 set to 0x8C35394E
	mov.w r4,@r1 ; r1 ??
	mov.l @(loc_8c1BE380,pc),r3 ; r3 set to 0x8C353838
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1BE384,pc),r2 ; r2 set to 0x8C353835
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1BE388,pc),r1 ; r1 set to 0x8C353834
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r5,@r1 ; r1 ??
	mov.l @(loc_8c1BE38C,pc),r3 ; r3 set to 0x8C353836
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1BE390,pc),r2 ; r2 set to 0x8C35393A
	mov.b r5,@r2 ; r2 ??
	mov.l @(loc_8c1BE394,pc),r1 ; r1 set to 0x8C353950
	mov.w r4,@r1 ; r1 ??
	mov.l @(loc_8c1BE398,pc),r3 ; r3 set to 0x8C35382C
	mov.w r4,@r3 ; r3 ??
	mov.l @(loc_8c1BE3A0,pc),r11 ; r11 set to 0x8C353960
	mov.l @(loc_8c1BE3A4,pc),r12 ; r12 set to 0x8C35395C
	mov.l @(loc_8c1BE39C,pc),r10 ; r10 set to 0x8C353808
	mov.l @(loc_8c1BE3AC,pc),r7 ; r7 set to 0x8C353954
	mov.l @(loc_8c1BE3A8,pc),r1 ; r1 set to 0x8C353958
	bra loc_8c1BE31C
	mov r4,r5

loc_8c1BE304:
	mov.l @r7,r3
	exts.w r5,r0
	exts.w r5,r6
	mov.b r4,@(r0,r3)
	shll r6
	mov.l @r1,r0
	add 0x01,r5
	mov.w r4,@(r0,r6)
	mov.l @r12,r0
	mov.w r4,@(r0,r6)
	mov.l @r11,r0
	mov.w r4,@(r0,r6)

loc_8c1BE31C:
	mov.w @r10,r2
	exts.w r5,r3
	extu.w r2,r2
	cmp/gt r2,r3
	bf loc_8c1BE304
	mov.l @(loc_8c1BE354,pc),r5 ; r5 set to 0x8C353804, r5 set to 0x8C353804
	bra loc_8c1BE33C
	mov.w @r5,r4

loc_8c1BE32C:
	mov.w @r5,r1
	exts.w r4,r2
	mov.l @r7,r3
	exts.w r4,r0
	extu.w r1,r1
	sub r1,r2
	add 0x01,r4
	mov.b r2,@(r0,r3)

loc_8c1BE33C:
	mov.w @r14,r2
	exts.w r4,r3
	extu.w r2,r2
	cmp/ge r2,r3
	bf loc_8c1BE32C
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BE350:
	#data 0x0200
loc_8c1BE352:
	#data 0x01FF
	#align4

loc_8c1BE354:
	#data 0x8C353804
loc_8c1BE358:
	#data 0x8C353802
loc_8c1BE35C:
	#data 0x8C35393C
loc_8c1BE360:
	#data 0x8C35393E
loc_8c1BE364:
	#data 0x8C353940
loc_8c1BE368:
	#data 0x8C353942
loc_8c1BE36C:
	#data 0x8C353948
loc_8c1BE370:
	#data 0x8C35394A
loc_8c1BE374:
	#data 0x8C353939
loc_8c1BE378:
	#data 0x8C353946
loc_8c1BE37C:
	#data 0x8C35394E
loc_8c1BE380:
	#data 0x8C353838
loc_8c1BE384:
	#data 0x8C353835
loc_8c1BE388:
	#data 0x8C353834
loc_8c1BE38C:
	#data 0x8C353836
loc_8c1BE390:
	#data 0x8C35393A
loc_8c1BE394:
	#data 0x8C353950
loc_8c1BE398:
	#data 0x8C35382C
loc_8c1BE39C:
	#data 0x8C353808
loc_8c1BE3A0:
	#data 0x8C353960
loc_8c1BE3A4:
	#data 0x8C35395C
loc_8c1BE3A8:
	#data 0x8C353958
loc_8c1BE3AC:
	#data 0x8C353954

;==============================================
loc_8c1be3b0:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov 0x03,r4
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r14,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x01,r9
	mov.l r8,@-r15
	mov 0x14,r8
	mov.l @(loc_8C1BE4C8,pc),r3
	sts.l pr,@-r15
	mov.l r14,@r3
	mov.l @(loc_8C1BE4CC,pc),r2
	mov.l r14,@r2
	mov.l @(loc_8C1BE4D0,pc),r1
	mov.b r4,@r1
	mov.l @(loc_8C1BE4D4,pc),r3
	mov.b r4,@r3
	mov.l @(loc_8C1BE4D8,pc),r13
	mov.b r14,@r13
	mov.l @(loc_8C1BE4DC,pc),r12
	mov.b r14,@r12

loc_8c1be3e2:
	mov 0x08,r3
	exts.b r11,r2
	cmp/ge r3,r2
	bf/s loc_8c1be3ee
	add 0x01,r11
	mov r14,r11

loc_8c1be3ee:
	mov.l @(loc_8C1BE4E0,pc),r3
	exts.b r11,r10
	add r3,r10
	bsr loc_8c1be484
	mov.b @r10,r4
	bsr loc_8c1be4a4
	mov r0,r4
	mov.b @r13,r2
	add 0x01,r9
	mov.b @r10,r3
	add r3,r2
	mov.b r2,@r13
	mov.b @r12,r1
	mov.b @r10,r3
	add r3,r1
	exts.b r9,r3
	cmp/gt r8,r3
	bf/s loc_8c1be3e2
	mov.b r1,@r12
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
loc_8c1be426:
	mov.l r14,@-r15
	mov 0x08,r2
	mov.l @(0xA4,PC),r5
	sts.l pr,@-r15
	mov.b @r5,r3
	add 0x01,r3
	mov.b r3,@r5
	exts.b r3,r3
	cmp/ge r2,r3
	bf loc_8c1be43e
	mov 0x00,r1
	mov.b r1,@r5

loc_8c1be43e:
	mov.l @(0xA0,PC),r0
	mov.b @r5,r3
	mov.l @(0x94,PC),r14
	mov.b @(r0,r3),r2
	mov.b @r14,r1
	add r2,r1
	bsr loc_8c1be484
	mov.b r1,@r14
	mov.b @r14,r4
	xor r0,r4
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1be45c:
	mov.l @(0x74,PC),r5
	mov 0x08,r2
	mov.b @r5,r3
	add 0x01,r3
	mov.b r3,@r5
	exts.b r3,r3
	cmp/ge r2,r3
	bf loc_8c1be470
	mov 0x00,r1
	mov.b r1,@r5

loc_8c1be470:
	mov.l @(0x6C,PC),r0
	mov.b @r5,r3
	mov.l @(0x64,PC),r6
	mov.b @(r0,r3),r2
	mov.b @r6,r1
	add r2,r1
	mov.b r1,@r6
	mov.b @r6,r3
	bra loc_8c1be4a4
	xor r3,r4

loc_8c1be484:
	mov.l @(loc_8C1BE4C8,pc),r6
	mov 0xFA,r3
	mov.l @r6,r5
	shad r3, r5
	mov.l @r6,r3
	extu.w r5,r7
	shlr2 r7
	shlr r7
	xor r5,r7
	xor r7,r4
	extu.b r4,r2
	shll8 r3
	or r2,r3
	mov.l r3,@r6
	rts
	mov r4,r0

;==============================================
loc_8c1be4a4:
	mov.l @(loc_8C1BE4CC,pc),r6
	mov 0xFA,r3
	extu.b r4,r2
	mov.l @r6,r5
	shad r3, r5
	mov.l @r6,r3
	extu.w r5,r7
	shll8 r3
	or r2,r3
	shlr2 r7
	mov.l r3,@r6
	shlr r7
	mov r5,r0
	nop
	xor r7,r0
	rts
	xor r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C1BE4C8:
	#data 0x8C35396C
loc_8C1BE4CC:
	#data 0x8C353970
loc_8C1BE4D0:
	#data 0x8C353967
loc_8C1BE4D4:
	#data 0x8C353968
loc_8C1BE4D8:
	#data 0x8C353965
loc_8C1BE4DC:
	#data 0x8C353966
loc_8C1BE4E0:
	#data 0x8C352E8E

;==============================================
loc_8c1BE4E4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1BE578,pc),r14 ; r14 set to 0x8C34AF50
	mov.l @(loc_8c1BE57C,pc),r3 ; r3 set to 0x8C1C2B48
	mov.l @(loc_8c1BE574,pc),r11 ; r11 set to 0x8C1995D6
	mov.w @(loc_8c1BE570,pc),r12 ; r12 set to 0x80
	jsr @r3
	mov 0x00,r10 ; r10 set to 0x00
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BE522
	mov.l @(loc_8c1BE580,pc),r3 ; r3 set to 0x8C34B03A
	mov.b r10,@r3 ; r3 ??
	bsr loc_8c1BE930
	mov 0x03,r4 ; r4 set to 0x03
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bf loc_8c1BE51A
	bra loc_8c1BE8DC
	nop

loc_8c1BE51A:
	jsr @r11
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8c1BE8DC
	nop

loc_8c1BE522:
	mov.l @(loc_8c1BE58C,pc),r13 ; r13 set to 0x8C34B0FD
	mov.l @(loc_8c1BE590,pc),r2 ; r2 set to 0x8C34B0D8
	mov.b @r13,r0
	mov.l @(loc_8c1BE584,pc),r8 ; r8 set to 0x8C1B3EEC
	extu.b r0,r0
	mov.l @(loc_8c1BE588,pc),r9 ; r9 set to 0x8C1B3F0C
	cmp/eq 0x00,r0
	bt/s loc_8c1BE594
	mov.l @r2,r4
	cmp/eq 0x02,r0
	bf loc_8c1BE53C
	bra loc_8c1BE774
	nop

loc_8c1BE53C:
	cmp/eq 0x03,r0
	bf loc_8c1BE544
	bra loc_8c1BE652
	nop

loc_8c1BE544:
	cmp/eq 0x04,r0
	bf loc_8c1BE54C
	bra loc_8c1BE678
	nop

loc_8c1BE54C:
	cmp/eq 0x05,r0
	bf loc_8c1BE554
	bra loc_8c1BE794
	nop

loc_8c1BE554:
	cmp/eq 0x06,r0
	bf loc_8c1BE55C
	bra loc_8c1BE83E
	nop

loc_8c1BE55C:
	cmp/eq 0x07,r0
	bf loc_8c1BE564
	bra loc_8c1BE8B6
	nop

loc_8c1BE564:
	cmp/eq 0x09,r0
	bf loc_8c1BE56C
	bra loc_8c1BE81E
	nop

loc_8c1BE56C:
	bra loc_8c1BE8DC
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BE570:
	#data 0x0080
	#align4

loc_8c1BE574:
	#data bank19.loc_8c1995D6
loc_8c1BE578:
	#data 0x8C34AF50
loc_8c1BE57C:
	#data bank1c.loc_8c1c2B48
loc_8c1BE580:
	#data 0x8C34B03A
loc_8c1BE584:
	#data loc_8c1B3EEC
loc_8c1BE588:
	#data loc_8c1B3F0C
loc_8c1BE58C:
	#data 0x8C34B0FD
loc_8c1BE590:
	#data 0x8C34B0D8

;==============================================
loc_8c1be594:
	mov.l r10,@-r15
	mov.l @(loc_8C1BE6A8,pc),r6
	mov.l @(loc_8C1BE6AC,pc),r5
	mov.l @(loc_8C1BE6B0,pc),r4
	mov.l @(loc_8C1BE6A0,pc),r3
	mov.l @(loc_8C1BE6A4,pc),r7
	bsr loc_8c1bed30
	mov.l r3,@-r15
	mov r14,r0
	nop
	add 0x16,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x0C,r0
	bt/s loc_8c1be5ba
	add 0x08,r15
	mov.l @(loc_8c1be6b4,pc),r2
	jsr @r2
	nop

loc_8c1be5ba:
	mov.l @(loc_8C1BE6B8,pc),r11
	mov.b @(0x07,r11),r0
	and 0x7F,r0
	mov.b r0,@(0x07,r11)
	mov.b @(0x0A,r11),r0
	and 0x6B,r0
	mov.b r0,@(0x0A,r11)
	mov.b @(0x0B,r11),r0
	and 0xF6,r0
	mov.b r0,@(0x0B,r11)
	mov.b @(0x0C,r11),r0
	and 0xFE,r0
	mov.b r0,@(0x0C,r11)
	mov.b @(0x0E,r11),r0
	and 0xEF,r0
	mov.b r0,@(0x0E,r11)
	mov r11,r3
	add 0x10,r3
	mov.b @r3,r0
	and 0x0C,r0
	mov.b r0,@r3
	mov.l @(loc_8c1be6bc,pc),r2
	jsr @r2
	mov 0x01,r4
	mov r11,r4
	add 0x06,r4
	mov.b @r4,r0
	and 0xF8,r0
	or 0x09,r0
	mov.b r0,@r4
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bf loc_8c1be61e
	mov.l @(loc_8C1BE6C0,pc),r4
	mov.w @(loc_8C1BE69E,pc),r5
	jsr @r8
	nop
	mov r14,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1be618
	bra loc_8c1be782
	nop

loc_8c1be618:
	mov 0x02,r3
	bra loc_8c1be8dc
	mov.b r3,@r13

loc_8c1be61e:
	mov r14,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1be630
	bra loc_8c1be782
	nop

loc_8c1be630:
	mov.l @(loc_8c1be6c4,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8c1be6c8,pc),r3
	jsr @r3
	nop
	mov 0x64,r5
	mov 0x03,r2
	mov.b r2,@r13
	mov.b @(0x07,r14),r0
	mov.l @(loc_8C1BE6C0,pc),r4
	extu.b r0,r0
	mulu.w r5,r0
	jsr @r8
	sts macl,r5
	bra loc_8c1be8dc
	nop

loc_8c1be652:
	mov.l @(0x78,PC),r1
	jsr @r9
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1be678
	mov.l @(0x70,PC),r3
	mov 0x04,r2
	jsr @r3
	mov.b r2,@r13
	mov.l @(0x6C,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bt loc_8c1be678
	mov.l @(0x68,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0x5C,PC),r3
	mov.b r10,@r3

loc_8c1BE678:
	mov.l @(loc_8c1BE6DC,pc),r2 ; r2 set to 0x8C1BF690
	jsr @r2
	nop
	extu.b r0,r4
	extu.w r4,r0
	cmp/eq 0x02,r0
	bf loc_8c1BE6E0
	bsr loc_8c1BE930
	mov 0x07,r4 ; r4 set to 0x07
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bf loc_8c1BE696
	bra loc_8c1BE8DC
	nop

loc_8c1BE696:
	jsr @r11
	mov 0x08,r4 ; r4 set to 0x08
	bra loc_8c1BE8DC
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1be69e:
	#data 0x00C8
	#align4

loc_8c1be6a0:
	#data 0x8C352F5F
loc_8c1be6a4:
	#data 0x8C352F5E
loc_8c1be6a8:
	#data 0x8C352F5D
loc_8c1be6ac:
	#data 0x8C352F5C
loc_8c1be6b0:
	#data 0x8C352F58
loc_8c1BE6B4:
	#data bank1a.loc_8c1aFF72
loc_8c1be6b8:
	#data 0x8C34B288
loc_8c1BE6BC:
	#data loc_8c1B689C
loc_8c1be6c0:
	#data 0x8C34B0D8
loc_8c1BE6C4:
	#data loc_8c1BF62A
loc_8c1BE6C8:
	#data loc_8c1BF762
loc_8c1BE6CC:
	#data 0x8C34B184
loc_8c1BE6D0:
	#data loc_8c1BF88C
loc_8c1BE6D4:
	#data 0x8C34B1DF
loc_8c1BE6D8:
	#data bank19.loc_8c19FE4E
loc_8c1BE6DC:
	#data loc_8c1BF690

;==============================================
loc_8c1BE6E0:
	cmp/eq 0x03,r0
	bf loc_8c1BE6E8
	bra loc_8c1BE6F0
	mov 0x63,r4

loc_8c1BE6E8:
	extu.w r4,r0
	cmp/eq 0x04,r0
	bf loc_8c1BE702
	mov 0x07,r4 ; r4 set to 0x07

loc_8c1BE6F0:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1BE930
	mov.l @r15+,r14

loc_8c1BE702:
	cmp/eq 0x01,r0
	bf loc_8c1BE712
	mov.l @(loc_8c1BE8F0,pc),r2 ; r2 set to 0x8C1AED24
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r2
	mov 0x12,r4 ; r4 set to 0x12
	bra loc_8c1BE736
	nop

loc_8c1BE712:
	mov.l @(loc_8c1BE8F4,pc),r2 ; r2 set to 0x8C1BF7BC
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BE736
	bsr loc_8c1BE95C
	nop
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bf loc_8c1BE72E
	bra loc_8c1BE8DC
	nop

loc_8c1BE72E:
	jsr @r11
	mov 0x40,r4 ; r4 set to 0x40
	bra loc_8c1BE8DC
	nop

loc_8c1be736:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c1be744
	mov.l @(loc_8c1be8f8,pc),r2
	jsr @r2
	nop

loc_8c1be744:
	mov.l @(loc_8C1BE8FC,pc),r3
	jsr @r9
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1be754
	bra loc_8c1be8dc
	nop

loc_8c1be754:
	mov r14,r1
	mov 0x02,r3
	add 0x2D,r1
	mov.b r3,@r1
	bsr loc_8c1be930
	mov 0x03,r4
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bf loc_8c1be76c
	bra loc_8c1be8dc
	nop
	
loc_8c1be76c:
	jsr @r11
	mov 0x10,r4
	bra loc_8c1be8dc
	nop
	
loc_8c1BE774:
	jsr @r9
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1BE782
	bra loc_8c1BE8DC
	nop
	
loc_8c1BE782:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1BE95C
	mov.l @r15+,r14
	
loc_8c1BE794:
	jsr @r9
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BE7BE
	mov r14,r3
	mov 0x02,r2 ; r2 set to 0x02
	add 0x2D,r3
	mov.b r2,@r3
	bsr loc_8c1BE930
	mov 0x03,r4 ; r4 set to 0x03
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bf loc_8c1BE7B6
	bra loc_8c1BE8DC
	nop
	
loc_8c1BE7B6:
	jsr @r11
	mov 0x04,r4 ; r4 set to 0x04
	bra loc_8c1BE8DC
	nop
	
loc_8c1BE7BE:
	mov.l @(loc_8c1BE900,pc),r2 ; r2 set to 0x8C19BEBC
	jsr @r2
	nop
	extu.b r0,r5
	extu.w r5,r4
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c1BE82A
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c1BE7FC
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c1BE7FC
	bsr loc_8c1BEC54
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BE7F0
	mov 0x06,r2 ; r2 set to 0x06
	bra loc_8c1BE7FC
	mov.b r2,@r13
	
loc_8c1BE7F0:
	mov.l @(loc_8c1BE904,pc),r1 ; r1 set to 0x8C19F21E
	jsr @r1
	nop
	mov 0x09,r3 ; r3 set to 0x09
	bra loc_8c1BE8DC
	mov.b r3,@r13
	
loc_8c1BE7FC:
	mov.l @(loc_8c1BE908,pc),r2 ; r2 set to 0x8C19D37A
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BE8DC
	lds.l @r15+,pr
	mov.l @(loc_8c1BE90C,pc),r3 ; r3 set to 0x8C1A124C
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14
	
loc_8c1BE81E:
	mov.l @(loc_8c1BE910,pc),r3 ; r3 set to 0x8C19F2FC
	jsr @r3
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BE8DC
	
loc_8c1BE82A:
	lds.l @r15+,pr
	mov 0x03,r4 ; r4 set to 0x03, r4 set to 0x03
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1BE930
	mov.l @r15+,r14
	
loc_8c1be83e:
	mov.l @(loc_8C1BE914,pc),r3
	mov.b r10,@r3
	mov.l @(loc_8C1BE918,pc),r1
	mov.b r10,@r1
	mov.l @(loc_8C1BE91C,pc),r2
	bsr loc_8c1bf5c8
	mov.b r10,@r2
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bt loc_8c1be858
	jsr @r11
	mov r12,r4
	
loc_8c1be858:
	mov.l @(loc_8c1be920,pc),r4
	jsr @r8
	mov 0x00,r5
	mov r14,r0
	nop
	add 0x16,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x0C,r0
	cmp/eq 0x08,r0
	bt loc_8c1be874
	mov.l @(loc_8c1be924,pc),r2
	jsr @r2
	mov 0x00,r4
	
loc_8c1be874:
	mov r14,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x03,r0
	bf/s loc_8c1be89a
	mov r14,r4
	mov.b @(0x0E,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1be89a
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x0C,r0
	bf loc_8c1be8c2
	
loc_8c1be89a:
	mov.b @(0x0E,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1be8b0
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0xC0,r0
	bf loc_8c1be8c2
	
loc_8c1be8b0:
	mov 0x07,r2
	bra loc_8c1be8dc
	mov.b r2,@r13
	
loc_8c1BE8B6:
	mov.l @(loc_8c1BE920,pc),r1 ; r1 set to 0x8C34CF60
	jsr @r9
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BE8DC
	
loc_8c1BE8C2:
	mov.l @(loc_8c1BE928,pc),r2 ; r2 set to 0x8C1B689C
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	lds.l @r15+,pr
	mov.l @(loc_8c1BE92C,pc),r3 ; r3 set to 0x8C1BF9B0
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14
	
loc_8c1BE8DC:
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
	#align4

loc_8c1BE8F0:
	#data bank1a.loc_8c1aED24
loc_8c1BE8F4:
	#data loc_8c1BF7BC
loc_8c1BE8F8:
	#data loc_8c1BF8EA
loc_8c1be8fc:
	#data 0x8C34B0D8
loc_8c1BE900:
	#data bank19.loc_8c19BEBC
loc_8c1BE904:
	#data bank19.loc_8c19F21E
loc_8c1BE908:
	#data bank19.loc_8c19D37A
loc_8c1BE90C:
	#data bank1a.loc_8c1a124C
loc_8c1BE910:
	#data bank19.loc_8c19F2FC
loc_8c1be914:
	#data 0x8C34B0F9
loc_8c1be918:
	#data 0x8C34B0FA
loc_8c1be91c:
	#data 0x8C34B0F8
loc_8c1BE920:
	#data 0x8C34CF60
loc_8c1BE924:
	#data bank19.loc_8c19FEEC
loc_8c1BE928:
	#data loc_8c1B689C
loc_8c1BE92C:
	#data loc_8c1BF9B0

;==============================================
loc_8c1BE930:
	sts.l pr,@-r15
	mov.l @(loc_8c1BEA08,pc),r3 ; r3 set to 0x8C1AFA18
	add 0xFC,r15
	jsr @r3
	mov.b r4,@r15
	mov.l @(loc_8c1BEA0C,pc),r3 ; r3 set to 0x8C1AED24
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov.b @r15,r4
	mov.l @(loc_8c1BEA10,pc),r2 ; r2 set to 0x8C1AFD44
	add 0x04,r15
	jmp @r2
	lds.l @r15+,pr

;==============================================
;unused
loc_8c1be94a:
	sts.l pr,@-r15
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov 0x64,r4
	lds.l @r15+,pr
	mov.l @(0xC0,PC),r3
	mov 0x00,r2
	rts
	mov.b r2,@r3

;==============================================
loc_8c1be95c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x04,r12
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C1BEA1C,pc),r14
	mov.l @(loc_8c1bea20,pc),r3
	jsr @r3
	mov 0x00,r4
	mov r14,r2
	add 0x1B,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r12,r3
	bt loc_8c1be988
	mov.l @(loc_8C1BEA24,pc),r3
	mov.b @r3,r0
	mov.l @(loc_8c1bea28,pc),r2
	or 0x10,r0
	jsr @r2
	mov.b r0,@r3

loc_8c1be988:
	mov.b @(0x0E,r14),r0
	mov.w @(loc_8C1BEA06,pc),r11
	extu.b r0,r0
	tst r11,r0
	bt loc_8c1be99c
	mov.l @(loc_8c1bea2c,pc),r2
	jsr @r2
	nop
	bra loc_8c1be9a2
	nop

loc_8c1be99c:
	mov.l @(loc_8c1bea30,pc),r2
	jsr @r2
	nop

loc_8c1be9a2:
	bsr loc_8c1beaf4
	mov 0x00,r4
	mov r14,r2
	add 0x1B,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r12,r3
	bt loc_8c1be9ba
	mov r14,r4
	add 0x3A,r4
	bra loc_8c1be9d6
	mov.b @r4,r4

loc_8c1be9ba:
	mov r14,r0
	nop
	add 0x20,r0
	mov.b @r0,r0
	mov 0x10,r4
	extu.b r0,r0
	tst r0,r4
	bt loc_8c1be9d0
	mov r14,r4
	bra loc_8c1be9d4
	add 0x21,r4

loc_8c1be9d0:
	mov r14,r4
	add 0x23,r4

loc_8c1be9d4:
	mov.b @r4,r4

loc_8c1be9d6:
	mov.l @(loc_8c1bea34,pc),r2
	jsr @r2
	nop
	mov r14,r4
	add 0x31,r4
	mov.b @r4,r4
	mov.l @(loc_8c1bea38,pc),r3
	extu.b r4,r4
	and r11,r4
	tst r4,r4
	jsr @r3
	movt r4
	mov r14,r0
	nop
	add 0x17,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c1bea40
	mov.l @(loc_8c1bea3c,pc),r2
	jsr @r2
	nop
	bra loc_8c1bea46
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1BEA06:
	#data 0x0080
	#align4

loc_8c1bea08:
	#data bank1a.loc_8c1aFA18
loc_8c1bea0c:
	#data bank1a.loc_8c1aED24
loc_8c1bea10:
	#data bank1a.loc_8c1aFD44
loc_8c1bea14:
	#data bank19.loc_8c19FEE8
loc_8c1bea18:
	#data 0x8C34B148
loc_8C1BEA1C:
	#data 0x8C34AF50
loc_8c1bea20:
	#data bank19.loc_8c19c818
loc_8C1BEA24:
	#data 0x8C34B293
loc_8c1bea28:
	#data bank19.loc_8c19ab2e
loc_8c1bea2c:
	#data bank19.loc_8c19a9e8
loc_8c1bea30:
	#data bank19.loc_8c19a9fa
loc_8c1bea34:
	#data bank19.loc_8c19aa0c
loc_8c1bea38:
	#data bank19.loc_8c19aace
loc_8c1bea3c:
	#data bank19.loc_8c19d5cc

;==============================================
loc_8c1bea40:
	mov.l @(loc_8c1bead4,pc),r2
	jsr @r2
	nop

loc_8c1bea46:
	mov.l @(loc_8C1BEADC,pc),r3
	mov.w @(loc_8C1BEACA,pc),r0
	mov.l @r3,r4
	mov.w @(loc_8C1BEACC,pc),r1
	mov.w @(r0,r4),r2
	mov.l @(loc_8c1bead8,pc),r13
	extu.w r2,r2
	tst r1,r2
	bf loc_8c1bea74
	mov r14,r4
	add 0x17,r4
	mov.b @r4,r2
	extu.b r2,r2
	tst r11,r2
	bf loc_8c1bea7e
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c1bea82
	jsr @r13
	mov 0x00,r4
	bra loc_8c1bea88
	nop

loc_8c1bea74:
	mov.w @(r0,r4),r3
	mov.w @(loc_8C1BEACE,pc),r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c1bea82

loc_8c1bea7e:
	bra loc_8c1bea84
	mov 0x02,r4

loc_8c1bea82:
	mov 0x01,r4

loc_8c1bea84:
	jsr @r13
	nop

loc_8c1bea88:
	mov r14,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x03,r0
	bt loc_8c1beaac
	bsr loc_8c1bf942
	nop
	mov r14,r3
	add 0x1F,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r12,r2
	bt loc_8c1beaac
	mov.l @(loc_8c1beae0,pc),r1
	jsr @r1
	nop

loc_8c1beaac:
	mov.l @(loc_8c1beae4,pc),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov.l @(loc_8C1BEAE8,pc),r3
	mov 0x05,r1
	mov.b r1,@r3
	mov.l @r15+,r11
	mov.l @(loc_8c1beaf0,pc),r2
	mov.l @r15+,r12
	mov.w @(loc_8C1BEAD0,pc),r5
	mov.l @r15+,r13
	mov.l @(loc_8C1BEAEC,pc),r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1BEACA:
	#data 0x00B0
loc_8C1BEACC:
	#data 0x0200
loc_8C1BEACE:
	#data 0x0400
loc_8C1BEAD0:
	#data 0x1770
	#align4

loc_8c1bead4:
	#data bank19.loc_8c19d5ea
loc_8c1bead8:
	#data bank19.loc_8c19aaf2
loc_8C1BEADC:
	#data 0x8C34B1F8
loc_8c1beae0:
	#data bank19.loc_8c19ab2a
loc_8c1beae4:
	#data bank19.loc_8c19bc4a
loc_8C1BEAE8:
	#data 0x8C34B0FD
loc_8C1BEAEC:
	#data 0x8C34B0D8
loc_8c1beaf0:
	#data loc_8c1b3eec

;==============================================
loc_8c1beaf4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r4,@r15
	mov.l @(loc_8C1BEB7C,pc),r3
	mov.l @r3,r0
	tst 0x80,r0
	bt loc_8c1bebd4
	mov.l @(loc_8C1BEB80,pc),r5
	mov 0x03,r6
	mov r5,r14
	mov r5,r2
	add 0x35,r14
	mov r5,r4
	add 0x36,r2
	mov.b @r14,r14
	mov.b @r2,r1
	mov r5,r2
	extu.b r14,r14
	extu.b r1,r1
	shll16 r1
	shll8 r14
	add 0x32,r2
	add r1,r14
	mov.b @r2,r1
	mov r5,r2
	add 0x34,r2
	extu.b r1,r1
	shll16 r1
	shll8 r1
	add r1,r14
	mov.b @r2,r1
	mov r5,r2
	add 0x1B,r2
	extu.b r1,r1
	add r1,r14
	mov.b @r2,r1
	add 0x37,r4
	extu.b r1,r1
	tst r6,r1
	bf/s loc_8c1beb5e
	mov.b @r4,r4
	mov.b @(0x0E,r5),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1beb5e
	mov r5,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1beb74

loc_8c1beb5e:
	mov.b @(0x0E,r5),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1beb84
	mov r5,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1beb84

loc_8c1beb74:
	mov 0x08,r2
	bra loc_8c1beb88
	or r2,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C1BEB7C:
	#data 0x8C34B0F4
loc_8C1BEB80:
	#data 0x8C34AF50

;==============================================
loc_8c1beb84:
	mov.w @(loc_8C1BEC7E,pc),r1
	and r1,r4

loc_8c1beb88:
	mov r5,r3
	add 0x1B,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r6,r2
	bf loc_8c1bebac
	mov.b @(0x0E,r5),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1bebac
	mov r5,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x0F,r0
	cmp/eq 0x01,r0
	bt loc_8c1bebc4

loc_8c1bebac:
	mov.b @(0x0E,r5),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1bebc8
	mov r5,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x10,r0
	bf loc_8c1bebc8

loc_8c1bebc4:
	mov 0xFE,r2
	and r2,r14

loc_8c1bebc8:
	mov.l @(loc_8c1bec80,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8c1bec84,pc),r2
	jsr @r2
	mov r14,r4

loc_8c1bebd4:
	mov.b @r15,r3
	tst r3,r3
	bt loc_8c1bebee
	mov 0x01,r3
	mov.l r3,@-r15
	mov.l @(loc_8c1bec90,pc),r6
	mov.l @(loc_8c1bec94,pc),r5
	mov.l @(loc_8C1BEC98,pc),r4
	mov.l @(loc_8c1bec8c,pc),r7
	mov.l @(loc_8c1bec88,pc),r2
	bsr loc_8c1bed30
	mov.l r2,@-r15
	add 0x08,r15

loc_8c1bebee:
	mov.l @(loc_8c1bec90,pc),r3
	bsr loc_8c1bf488
	mov.b @r3,r4
	mov.l @(loc_8C1BEC9C,pc),r1
	mov.b r0,@r1
	mov.l @(loc_8c1bec88,pc),r2
	mov.b @r2,r3
	mov.l r3,@-r15
	mov.l @(loc_8c1bec90,pc),r3
	mov.l @(loc_8c1bec94,pc),r2
	mov.l @(loc_8c1bec8c,pc),r1
	mov.b @r2,r5
	mov.b @r3,r6
	mov.l @(loc_8c1beca0,pc),r2
	mov.l @(loc_8C1BEC98,pc),r3
	mov.b @r1,r7
	jsr @r2
	mov.l @r3,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c1BEC1A:
	mov.l @(loc_8c1BEC94,pc),r2 ; r2 set to 0x8C352F5C
	rts
	mov.b @r2,r0

;==============================================
loc_8c1BEC20:
	mov.l @(loc_8c1BEC90,pc),r3 ; r3 set to 0x8C352F5D
	rts
	mov.b @r3,r0

;==============================================
loc_8c1BEC26:
	mov.l @(loc_8c1BEC8C,pc),r2 ; r2 set to 0x8C352F5E
	rts
	mov.b @r2,r0

;==============================================
loc_8c1BEC2C:
	mov.l @(loc_8c1BEC88,pc),r3 ; r3 set to 0x8C352F5F
	rts
	mov.b @r3,r0

;==============================================
loc_8c1BEC32:
	mov.l @(0x64,PC),r2
	rts
	mov.l @r2,r0

;==============================================
loc_8c1bec38:
	sts.l pr,@-r15
	mov 0x00,r3
	mov.l r3,@-r15
	mov.l @(0x50,PC),r6
	mov.l @(0x50,PC),r5
	mov.l @(0x54,PC),r4
	mov.l @(0x44,PC),r7
	mov.l @(0x40,PC),r2
	bsr loc_8c1bed30
	mov.l r2,@-r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1BEC54:
	sts.l pr,@-r15
	mov.l @(loc_8c1BECA4,pc),r3 ; r3 set to 0x8C19C378
	add 0xEC,r15
	mov r15,r5
	mov r15,r6
	add 0x08,r5
	add 0x0C,r6
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c1BECA8,pc),r2 ; r2 set to 0x8C19F342
	mov r15,r5
	mov r15,r4
	add 0x04,r5
	jsr @r2
	add 0x10,r4
	mov.l @(loc_8c1BEC90,pc),r4 ; r4 set to 0x8C352F5D
	mov.b @r4,r3 ; r3 ??
	tst r3,r3
	bt loc_8c1BECAC
	bra loc_8c1BECB0
	mov.b @r4,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bec7e:
	#data 0x00F7
	#align4

loc_8c1BEC80:
	#data bank19.loc_8c19C81C
loc_8c1BEC84:
	#data bank19.loc_8c19C904
loc_8c1BEC88:
	#data 0x8C352F5F
loc_8c1BEC8C:
	#data 0x8C352F5E
loc_8c1BEC90:
	#data 0x8C352F5D
loc_8c1BEC94:
	#data 0x8C352F5C
loc_8c1bec98:
	#data 0x8C352F58
loc_8c1bec9c:
	#data 0x8C34B0FE
loc_8c1BECA0:
	#data bank19.loc_8c19BAE0
loc_8c1BECA4:
	#data bank19.loc_8c19C378
loc_8c1BECA8:
	#data bank19.loc_8c19F342

;==============================================
loc_8c1BECAC:
	mov.b @(0x04,r15),r0
	mov r0,r6

loc_8c1BECB0:
	mov.l @(loc_8c1BED20,pc),r4 ; r4 set to 0x8C352F5F, r4 set to 0x8C352F5F
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c1BECBC
	bra loc_8c1BECC0
	mov.b @r4,r5

loc_8c1becbc:
	mov.b @(0x04,r15),r0
	mov r0,r5

loc_8c1becc0:
	mov.l @(loc_8C1BED24,pc),r2
	mov.l @r15,r3
	mov.l @r2,r4
	tst r4,r3
	bf loc_8c1becd6
	mov.l @r15,r3
	cmp/eq r4,r3
	bf loc_8c1bed0a
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c1bed0a

loc_8c1becd6:
	mov.b @(0x08,r15),r0
	extu.b r6,r6
	mov r0,r4
	extu.b r4,r4
	cmp/ge r4,r6
	bf loc_8c1bed0a
	mov.l @(loc_8C1BED28,pc),r3
	mov.b @r3,r2
	extu.b r2,r2
	cmp/gt r4,r2
	bt loc_8c1bed0a
	mov.l @r15,r2
	mov.w @(loc_8C1BED1C,pc),r3
	tst r3,r2
	bt loc_8c1bed12
	mov.b @(0x0C,r15),r0
	extu.b r5,r5
	mov r0,r4
	extu.b r4,r4
	cmp/ge r4,r5
	bf loc_8c1bed0a
	mov.l @(loc_8C1BED2C,pc),r2
	mov.b @r2,r1
	extu.b r1,r1
	cmp/gt r4,r1
	bf loc_8c1bed12

loc_8c1bed0a:
	add 0x14,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c1bed12:
	mov 0x01,r0
	add 0x14,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1BED1C:
	#data 0x0380
	#align4

loc_8c1bed20:
	#data 0x8C352F5F
loc_8C1BED24:
	#data 0x8C352F58
loc_8C1BED28:
	#data 0x8C352F5C
loc_8C1BED2C:
	#data 0x8C352F5E

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bed30:
	mov.l r14,@-r15
	mov r6,r14
	mov.l r13,@-r15
	mov 0x08,r3
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov 0x28,r0
	mov.l r10,@-r15
	mov r5,r10
	mov.l r9,@-r15
	mov r7,r9
	mov.l r8,@-r15
	mov.l @(0xD8,PC),r13
	sts.l pr,@-r15
	mov r13,r4
	add 0x18,r4
	mov.b @r4,r5
	add 0xFC,r15
	mov.w @(0xC8,PC),r6
	extu.b r5,r5
	mov.l @(0x24,r15),r11
	tst r5,r3
	bf.s loc_8c1bed66
	mov.b @(r0,r15),r8
	bra loc_8c1bee72
	nop

loc_8c1bed66:
	mov 0x10,r1
	tst r5,r1
	bf loc_8c1bed70
	bra loc_8c1bee72
	nop

loc_8c1bed70:
	mov r13,r2
	add 0x3D,r2
	mov.b @r2,r3
	mov r13,r2
	add 0x3C,r2
	mov.b @r2,r1
	extu.b r3,r3
	shll8 r3
	mov r13,r2
	extu.b r1,r1
	or r1,r3
	add 0x3E,r2
	mov.l r3,@r12
	mov.b @r2,r3
	mov r13,r2
	add 0x40,r2
	mov.b r3,@r10
	mov.b @r2,r3
	mov r13,r2
	add 0x25,r2
	mov.b r3,@r9
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r6,r3
	bf loc_8c1bede2
	mov.l @(0x84,PC),r3
	bsr loc_8c1bf11c
	mov.b @r3,r4
	mov r13,r4
	add 0x3F,r4
	mov.b r0,@r14
	mov.b @r14,r3
	mov.b r3,@r11
	mov.b @r14,r2
	mov.b @r4,r4
	extu.b r2,r2
	extu.b r4,r4
	cmp/gt r4,r2
	bf loc_8c1bedca
	cmp/pl r4
	bf loc_8c1bedca
	mov r13,r3
	add 0x3F,r3
	mov.b @r3,r2
	mov.b r2,@r14

loc_8c1bedca:
	mov r13,r4
	add 0x41,r4
	mov.b @r4,r4
	mov.b @r11,r3
	extu.b r4,r4
	extu.b r3,r3
	cmp/gt r4,r3
	bf loc_8c1bedf2
	cmp/pl r4
	bt loc_8c1bedea
	bra loc_8c1bedf2
	nop

loc_8c1bede2:
	mov r13,r3
	add 0x3F,r3
	mov.b @r3,r2
	mov.b r2,@r14

loc_8c1bedea:
	mov r13,r3
	add 0x41,r3
	mov.b @r3,r2
	mov.b r2,@r11

loc_8c1bedf2:
	exts.b r8,r3
	tst r3,r3
	bf loc_8c1bee00
	mov.l @r12,r3
	mov 0x07,r1
	cmp/hi r1,r3
	bt loc_8c1bee30

loc_8c1bee00:
	mov.b @r11,r0
	mov.l r0,@-r15
	mov.b @r10,r5
	mov.l @(0x24,PC),r3
	mov.b @r14,r6
	mov.b @r9,r7
	jsr @r3
	mov r12,r4
	mov r11,r6
	mov r14,r5
	add 0x04,r15
	mov r8,r7
	bsr loc_8c1bef74
	mov r12,r4
	mov.b @r14,r3
	bra loc_8c1bee6c
	mov.b r3,@r10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bee22:
	#data 0x00FF
	#align4

loc_8c1bee24:
	#data 0x8C34AF50
loc_8c1bee28:
	#data 0x8C34B140
loc_8c1bee2c:
	#data loc_8c1b4CFC

;==============================================
loc_8c1bee30:
	mov r13,r0
	nop
	add 0x42,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1bee46
	mov.l @(0xA0,PC),r2
	jsr @r2
	mov.l @r12,r4
	mov.l r0,@r12

loc_8c1bee46:
	mov.b @r11,r3
	mov.l r3,@-r15
	mov.b @r10,r5
	mov.l @(0x94,PC),r2
	mov.b @r14,r6
	mov.b @r9,r7
	jsr @r2
	mov r12,r4
	mov.b @r14,r2
	mov.b @r10,r3
	cmp/hi r2,r3
	bf.s loc_8c1bee64
	add 0x04,r15
	mov.b @r14,r2
	mov.b r2,@r10

loc_8c1bee64:
	mov.b @r11,r2
	mov.b @r9,r3
	cmp/hi r2,r3
	bf loc_8c1bef60

loc_8c1bee6c:
	mov.b @r11,r2
	bra loc_8c1bef60
	mov.b r2,@r9

loc_8c1bee72:
	mov.b @r4,r0
	mov.l @(0x70,PC),r1
	extu.b r0,r0
	mov.w @(0x60,PC),r3
	mov.l @r1,r5
	tst 0x10,r0
	bt.s loc_8c1beebc
	and r3,r5
	mov.l @(0x68,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c1beebc
	exts.b r8,r1
	tst r1,r1
	bf loc_8c1beebc
	mov r13,r3
	add 0x25,r3
	mov.l r5,@r12
	mov.b @r3,r2
	extu.b r2,r2
	cmp/eq r6,r2
	bf loc_8c1beeaa
	mov.l @(0x4C,PC),r2
	bsr loc_8c1bf11c
	mov.b @r2,r4
	bra loc_8c1beeae
	mov.b r0,@r14

loc_8c1beeaa:
	mov 0x00,r3
	mov.b r3,@r14

loc_8c1beeae:
	mov 0x00,r2
	mov r2,r3
	mov.b r2,@r10
	mov.b r3,@r9
	mov.b @r14,r2
	bra loc_8c1bef4e
	mov.b r2,@r11

loc_8c1beebc:
	mov r13,r3
	add 0x25,r3
	mov.l r3,@r15
	mov.b @r3,r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c1beed0
	mov.w @(0x10,PC),r1
	cmp/eq r1,r4
	bf loc_8c1beef4

loc_8c1beed0:
	mov.l r5,@r12
	mov.l @(0x1C,PC),r3
	bsr loc_8c1bf11c
	mov.b @r3,r4
	bra loc_8c1bef02
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1beedc:
	#data 0x03FF
loc_8c1beede:
	#data 0x00FF
	#align4

loc_8c1beee0:
	#data loc_8c1b4F16
loc_8c1beee4:
	#data loc_8c1b4CFC
loc_8c1beee8:
	#data 0x8C34B0F4
loc_8c1beeec:
	#data 0x8C34AF6B
loc_8c1beef0:
	#data 0x8C34B140

;==============================================
loc_8c1beef4:
	mov.l @r15,r4
	bsr loc_8c1bf274
	mov.b @r4,r4
	mov.l r0,@r12
	mov.l @r15,r4
	bsr loc_8c1bf314
	mov.b @r4,r4

loc_8c1bef02:
	mov r11,r6
	mov r14,r5
	mov r8,r7
	mov.b r0,@r14
	mov.b @r14,r2
	mov.b r2,@r11
	bsr loc_8c1bef74
	mov r12,r4
	mov r13,r0
	nop
	add 0x18,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1bef46
	exts.b r8,r8
	tst r8,r8
	bf loc_8c1bef46
	mov.l @r12,r3
	tst r3,r3
	bt loc_8c1bef3c
	mov.l @(0xA4,PC),r1
	mov.l @r12,r3
	mov.l @r1,r2
	mov.l @r12,r0
	add 0xFF,r3
	and r2,r3
	add r3,r0
	mov.l r0,@r12

loc_8c1bef3c:
	mov 0x00,r3
	mov r3,r2
	mov.b r3,@r10
	bra loc_8c1bef4e
	mov.b r2,@r9

loc_8c1bef46:
	mov.b @r14,r1
	mov.b r1,@r10
	mov.b @r11,r3
	mov.b r3,@r9

loc_8c1bef4e:
	mov.b @r11,r2
	mov.l r2,@-r15
	mov.b @r10,r5
	mov.l @(0x80,PC),r3
	mov.b @r14,r6
	mov.b @r9,r7
	jsr @r3
	mov r12,r4
	add 0x04,r15

loc_8c1bef60:
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
loc_8c1bef74:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x50,PC),r3
	add 0xFC,r15
	mov.l @r4,r2
	and r3,r2
	mov.l r2,@r15
	mov.b @r5,r1
	tst r1,r1
	bf loc_8c1bef8e
	mov.w @(0x42,PC),r1
	mov.b r1,@r5

loc_8c1bef8e:
	mov.b @r6,r3
	tst r3,r3
	bf.s loc_8c1bef9a
	mov 0x38,r13
	mov.w @(0x36,PC),r1
	mov.b r1,@r6

loc_8c1bef9a:
	mov.l @r4,r2
	mov.w @(0x32,PC),r3
	tst r3,r2
	bt.s loc_8c1befdc
	mov 0x20,r14
	mov.b @r6,r0
	mov 0x18,r2
	extu.b r0,r0
	cmp/ge r2,r0
	bf loc_8c1befdc
	exts.b r7,r0
	tst r0,r0
	bf loc_8c1befdc
	mov.b @r5,r3
	extu.b r3,r3
	cmp/gt r14,r3
	bf loc_8c1befbe
	mov.b r14,@r5

loc_8c1befbe:
	mov.b @r6,r3
	extu.b r3,r3
	cmp/gt r13,r3
	bf loc_8c1befc8
	mov.b r13,@r6

loc_8c1befc8:
	mov.w @(0x6,PC),r3
	bra loc_8c1bf098
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1befce:
	#data 0xFC00
loc_8c1befd0:
	#data 0x00FF
loc_8c1befd2:
	#data 0x0200
	#align4

loc_8c1befd4:
	#data 0x8C34B0F4
loc_8c1befd8:
	#data loc_8c1b4CFC

;==============================================
loc_8c1befdc:
	mov.l @r4,r2
	mov.w @(0xBA,PC),r3
	tst r3,r2
	bt loc_8c1bf00e
	mov.b @r6,r0
	mov 0x1E,r2
	extu.b r0,r0
	cmp/ge r2,r0
	bf loc_8c1bf00e
	exts.b r7,r0
	tst r0,r0
	bf loc_8c1bf00e
	mov.b @r5,r3
	extu.b r3,r3
	cmp/gt r14,r3
	bf loc_8c1beffe
	mov.b r14,@r5

loc_8c1beffe:
	mov.b @r6,r3
	extu.b r3,r3
	cmp/gt r13,r3
	bf loc_8c1bf008
	mov.b r13,@r6

loc_8c1bf008:
	mov.w @(0x90,PC),r3
	bra loc_8c1bf098
	nop

loc_8c1bf00e:
	mov.l @r4,r3
	mov.w @(0x8A,PC),r13
	tst r13,r3
	bt loc_8c1bf038
	mov.b @r5,r1
	mov 0x05,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bf loc_8c1bf038
	mov.b @r5,r1
	extu.b r1,r1
	cmp/gt r14,r1
	bf loc_8c1bf02a
	mov.b r14,@r5

loc_8c1bf02a:
	mov.b @r6,r2
	extu.b r2,r2
	cmp/gt r14,r2
	bf loc_8c1bf034
	mov.b r14,@r6

loc_8c1bf034:
	bra loc_8c1bf104
	mov.l r13,@r4

loc_8c1bf038:
	mov.l @r4,r0
	tst 0x40,r0
	bt loc_8c1bf05a
	mov.b @r5,r2
	mov 0x06,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c1bf05a
	mov.b @r5,r3
	mov 0x0C,r6
	extu.b r3,r3
	cmp/gt r6,r3
	bf loc_8c1bf054
	mov.b r6,@r5

loc_8c1bf054:
	mov 0x40,r3
	bra loc_8c1bf098
	nop

loc_8c1bf05a:
	mov.l @r4,r3
	tst r14,r3
	bt.s loc_8c1bf07a
	mov 0x08,r12
	mov.b @r5,r1
	mov 0x06,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bf loc_8c1bf07a
	mov.b @r5,r1
	extu.b r1,r1
	cmp/gt r12,r1
	bf loc_8c1bf076
	mov.b r12,@r5

loc_8c1bf076:
	bra loc_8c1bf104
	mov.l r14,@r4
 
loc_8c1bf07a:
	mov.l @r4,r0
	tst 0x10,r0
	bt loc_8c1bf0a0
	mov.b @r5,r2
	mov 0x04,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c1bf0a0
	mov.b @r5,r3
	mov 0x05,r6
	extu.b r3,r3
	cmp/gt r6,r3
	bf loc_8c1bf096
	mov.b r6,@r5

loc_8c1bf096:
	mov 0x10,r3

loc_8c1bf098:
	bra loc_8c1bf104
	mov.l r3,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bf09c:
	#data 0x0100
loc_8c1bf09e:
	#data 0x0080

;==============================================
loc_8c1bf0a0:
	mov.l @r4,r3
	tst r12,r3
	bt.s loc_8c1bf0c0
	mov 0x04,r14
	mov.b @r5,r1
	mov 0x04,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bf loc_8c1bf0c0
	mov.b @r5,r1
	extu.b r1,r1
	cmp/gt r14,r1
	bf loc_8c1bf0bc
	mov.b r14,@r5

loc_8c1bf0bc:
	bra loc_8c1bf104
	mov.l r12,@r4

loc_8c1bf0c0:
	mov.l @r4,r3
	tst r14,r3
	bt.s loc_8c1bf0e6
	mov 0x01,r12
	exts.b r7,r7
	tst r7,r7
	bf loc_8c1bf0e6
	mov.l r14,@r4
	mov.l @(0x44,PC),r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r13,r2
	bt loc_8c1bf0e0
	mov.b r12,@r5
	bra loc_8c1bf104
	mov.b r14,@r6

loc_8c1bf0e0:
	mov.b r14,@r5
	bra loc_8c1bf104
	mov.b r12,@r6

loc_8c1bf0e6:
	mov.l @r4,r2
	mov 0x02,r6
	tst r6,r2
	bt loc_8c1bf0f4
	mov.b r6,@r5
	bra loc_8c1bf104
	mov.l r6,@r4

loc_8c1bf0f4:
	mov.b @r5,r3
	extu.b r3,r3
	cmp/gt r6,r3
	bf loc_8c1bf100
	bra loc_8c1bf102
	mov.b r14,@r5


loc_8c1bf100:
	mov.b r6,@r5

loc_8c1bf102:
	mov.l r12,@r4

loc_8c1bf104:
	mov.l @r15,r3
	add 0x04,r15
	mov.l @r4,r2
	or r3,r2
	mov.l r2,@r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1bf118:
	#data 0x8C34AF5E

;==============================================
loc_8c1bf11c:
	extu.b r4,r0
	mov 0x25,r5
	mov 0x37,r1
	cmp/hs r1,r0
	bf loc_8c1bf12a
	bra loc_8c1bf258
	nop

loc_8c1bf12a:
	shll r0
	mov r0,r1
	mova @(loc_8c1bf138,PC),r0
	mov.w @(r0,r1),r0

braf_8c1bf132:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bf138:
	#data16 {loc_8c1bf1a6-braf_8c1bf132-4} ; 0x0070
	#data16 {loc_8c1bf1aa-braf_8c1bf132-4} ; 0x0074
	#data16 {loc_8c1bf1ae-braf_8c1bf132-4} ; 0x0078
	#data16 {loc_8c1bf1b2-braf_8c1bf132-4} ; 0x007C
	#data16 {loc_8c1bf1b6-braf_8c1bf132-4} ; 0x0080
	#data16 {loc_8c1bf1ba-braf_8c1bf132-4} ; 0x0084
	#data16 {loc_8c1bf1be-braf_8c1bf132-4} ; 0x0088
	#data16 {loc_8c1bf1c2-braf_8c1bf132-4} ; 0x008C
	#data16 {loc_8c1bf1c6-braf_8c1bf132-4} ; 0x0090
	#data16 {loc_8c1bf1ca-braf_8c1bf132-4} ; 0x0094
	#data16 {loc_8c1bf1ce-braf_8c1bf132-4} ; 0x0098
	#data16 {loc_8c1bf1d2-braf_8c1bf132-4} ; 0x009C
	#data16 {loc_8c1bf1d6-braf_8c1bf132-4} ; 0x00A0
	#data16 {loc_8c1bf1da-braf_8c1bf132-4} ; 0x00A4
	#data16 {loc_8c1bf1de-braf_8c1bf132-4} ; 0x00A8
	#data16 {loc_8c1bf1e2-braf_8c1bf132-4} ; 0x00AC
	#data16 {loc_8c1bf1e6-braf_8c1bf132-4} ; 0x00B0
	#data16 {loc_8c1bf1ea-braf_8c1bf132-4} ; 0x00B4
	#data16 {loc_8c1bf1ee-braf_8c1bf132-4} ; 0x00B8
	#data16 {loc_8c1bf1f2-braf_8c1bf132-4} ; 0x00BC
	#data16 {loc_8c1bf1f6-braf_8c1bf132-4} ; 0x00C0
	#data16 {loc_8c1bf1fa-braf_8c1bf132-4} ; 0x00C4
	#data16 {loc_8c1bf1fe-braf_8c1bf132-4} ; 0x00C8
	#data16 {loc_8c1bf202-braf_8c1bf132-4} ; 0x00CC
	#data16 {loc_8c1bf206-braf_8c1bf132-4} ; 0x00D0
	#data16 {loc_8c1bf20a-braf_8c1bf132-4} ; 0x00D4
	#data16 {loc_8c1bf20e-braf_8c1bf132-4} ; 0x00D8
	#data16 {loc_8c1bf20e-braf_8c1bf132-4} ; 0x00D8
	#data16 {loc_8c1bf212-braf_8c1bf132-4} ; 0x00DC
	#data16 {loc_8c1bf216-braf_8c1bf132-4} ; 0x00E0
	#data16 {loc_8c1bf21a-braf_8c1bf132-4} ; 0x00E4
	#data16 {loc_8c1bf21e-braf_8c1bf132-4} ; 0x00E8
	#data16 {loc_8c1bf222-braf_8c1bf132-4} ; 0x00EC
	#data16 {loc_8c1bf226-braf_8c1bf132-4} ; 0x00F0
	#data16 {loc_8c1bf22a-braf_8c1bf132-4} ; 0x00F4
	#data16 {loc_8c1bf22e-braf_8c1bf132-4} ; 0x00F8
	#data16 {loc_8c1bf232-braf_8c1bf132-4} ; 0x00FC
	#data16 {loc_8c1bf236-braf_8c1bf132-4} ; 0x0100
	#data16 {loc_8c1bf23a-braf_8c1bf132-4} ; 0x0104
	#data16 {loc_8c1bf23e-braf_8c1bf132-4} ; 0x0108
	#data16 {loc_8c1bf242-braf_8c1bf132-4} ; 0x010C
	#data16 {loc_8c1bf246-braf_8c1bf132-4} ; 0x0110
	#data16 {loc_8c1bf24a-braf_8c1bf132-4} ; 0x0114
	#data16 {loc_8c1bf24e-braf_8c1bf132-4} ; 0x0118
	#data16 {loc_8c1bf252-braf_8c1bf132-4} ; 0x011C
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120
	#data16 {loc_8c1bf256-braf_8c1bf132-4} ; 0x0120


;==============================================
loc_8c1bf1a6:
	bra loc_8c1bf258
	mov 0x01,r4

;==============================================
loc_8c1bf1aa:
	bra loc_8c1bf258
	mov 0x02,r4

;==============================================
loc_8c1bf1ae:
	bra loc_8c1bf258
	mov 0x04,r4

;==============================================
loc_8c1bf1b2:
	bra loc_8c1bf258
	mov 0x05,r4

;==============================================
loc_8c1bf1b6:
	bra loc_8c1bf258
	mov 0x06,r4

;==============================================
loc_8c1bf1ba:
	bra loc_8c1bf258
	mov 0x07,r4

;==============================================
loc_8c1bf1be:
	bra loc_8c1bf258
	mov 0x08,r4

;==============================================
loc_8c1bf1c2:
	bra loc_8c1bf258
	mov 0x0B,r4

;==============================================
loc_8c1bf1c6:
	bra loc_8c1bf258
	mov 0x0C,r4

;==============================================
loc_8c1bf1ca:
	bra loc_8c1bf258
	mov 0x0D,r4

;==============================================
loc_8c1bf1ce:
	bra loc_8c1bf258
	mov 0x0E,r4

;==============================================
loc_8c1bf1d2:
	bra loc_8c1bf258
	mov 0x15,r4

;==============================================
loc_8c1bf1d6:
	bra loc_8c1bf258
	mov 0x16,r4

;==============================================
loc_8c1bf1da:
	bra loc_8c1bf258
	mov 0x17,r4

;==============================================
loc_8c1bf1de:
	bra loc_8c1bf258
	mov 0x18,r4

;==============================================
loc_8c1bf1e2:
	bra loc_8c1bf258
	mov 0x19,r4

;==============================================
loc_8c1bf1e6:
	bra loc_8c1bf258
	mov 0x1A,r4

;==============================================
loc_8c1bf1ea:
	bra loc_8c1bf258
	mov 0x1C,r4

;==============================================
loc_8c1bf1ee:
	bra loc_8c1bf258
	mov 0x1D,r4

;==============================================
loc_8c1bf1f2:
	bra loc_8c1bf258
	mov 0x1E,r4

;==============================================
loc_8c1bf1f6:
	bra loc_8c1bf258
	mov 0x1F,r4

;==============================================
loc_8c1bf1fa:
	bra loc_8c1bf258
	mov 0x20,r4

;==============================================
loc_8c1bf1fe:
	bra loc_8c1bf258
	mov 0x21,r4

;==============================================
loc_8c1bf202:
	bra loc_8c1bf258
	mov 0x22,r4

;==============================================
loc_8c1bf206:
	bra loc_8c1bf258
	mov 0x23,r4

;==============================================
loc_8c1bf20a:
	bra loc_8c1bf258
	mov 0x24,r4

;==============================================
loc_8c1bf20e:
	bra loc_8c1bf258
	mov r5,r4

;==============================================
loc_8c1bf212:
	bra loc_8c1bf258
	mov 0x27,r4

;==============================================
loc_8c1bf216:
	bra loc_8c1bf258
	mov 0x28,r4

;==============================================
loc_8c1bf21a:
	bra loc_8c1bf258
	mov 0x29,r4

;==============================================
loc_8c1bf21e:
	bra loc_8c1bf258
	mov 0x2A,r4

;==============================================
loc_8c1bf222:
	bra loc_8c1bf258
	mov 0x2B,r4

;==============================================
loc_8c1bf226:
	bra loc_8c1bf258
	mov 0x2C,r4

;==============================================
loc_8c1bf22a:
	bra loc_8c1bf258
	mov 0x2D,r4

;==============================================
loc_8c1bf22e:
	bra loc_8c1bf258
	mov 0x2E,r4

;==============================================
loc_8c1bf232:
	bra loc_8c1bf258
	mov 0x2F,r4

;==============================================
loc_8c1bf236:
	bra loc_8c1bf258
	mov 0x30,r4

;==============================================
loc_8c1bf23a:
	bra loc_8c1bf258
	mov 0x31,r4

;==============================================
loc_8c1bf23e:
	bra loc_8c1bf258
	mov 0x32,r4

;==============================================
loc_8c1bf242:
	bra loc_8c1bf258
	mov 0x33,r4

;==============================================
loc_8c1bf246:
	bra loc_8c1bf258
	mov 0x34,r4

;==============================================
loc_8c1bf24a:
	bra loc_8c1bf258
	mov 0x35,r4

;==============================================
loc_8c1bf24e:
	bra loc_8c1bf258
	mov 0x36,r4

;==============================================
loc_8c1bf252:
	bra loc_8c1bf258
	mov 0x37,r4

;==============================================
loc_8c1bf256:
	mov 0x38,r4

loc_8c1bf258:
	mov.l @(0x14,PC),r3
	extu.b r4,r2
	mov.b @r3,r5
	extu.b r5,r1
	cmp/gt r1,r2
	bf loc_8c1bf268
	rts
	mov r5,r0

loc_8c1bf268:
	mov r4,r0
	nop
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1bf270:
	#data 0x8C34B0F0

;==============================================
loc_8c1bf274:
	mov 0x2F,r3
	extu.b r4,r5
	cmp/ge r3,r5
	bf loc_8c1bf282
	mov.w @(0x80,PC),r0
	rts
	nop

;==============================================
loc_8c1bf282:
	mov 0x22,r2
	cmp/ge r2,r5
	bf loc_8c1bf28e
	mov.w @(0x76,PC),r0
	rts
	nop

;==============================================
loc_8c1bf28e:
	mov 0x14,r1
	cmp/ge r1,r5
	bf loc_8c1bf29a
	mov.w @(0x6C,PC),r0
	rts
	nop

;==============================================
loc_8c1bf29a:
	mov 0x0D,r3
	cmp/ge r3,r5
	bf loc_8c1bf2a4
	rts
	mov 0x40,r0

;==============================================
loc_8c1bf2a4:
	mov.l @(0x60,PC),r4
	mov r5,r0
	nop
	cmp/eq 0x05,r0
	bt.s loc_8c1bf2e2
	mov 0x40,r6
	cmp/eq 0x06,r0
	bt loc_8c1bf2ea
	cmp/eq 0x07,r0
	bt loc_8c1bf2d2
	cmp/eq 0x09,r0
	bt loc_8c1bf2cc
	cmp/eq 0x0A,r0
	bt loc_8c1bf2d2
	cmp/eq 0x0B,r0
	bt loc_8c1bf2fa
	cmp/eq 0x0C,r0
	bt loc_8c1bf2d6
	bra loc_8c1bf2ee
	nop

loc_8c1bf2cc:
	mov.l @(0x3C,PC),r0
	rts
	nop

;==============================================
loc_8c1bf2d2:
	rts
	mov 0x20,r0

;==============================================
loc_8c1bf2d6:
	mov.l @(0x38,PC),r3
	mov.b @r3,r0
	or 0x40,r0
	mov.b r0,@r3
	rts
	mov 0x04,r0

;==============================================
loc_8c1bf2e2:
	mov.b @r4,r3
	extu.b r3,r3
	tst r6,r3
	bf loc_8c1bf2f6

loc_8c1bf2ea:
	rts
	mov 0x10,r0

;==============================================
loc_8c1bf2ee:
	mov.b @r4,r3
	extu.b r3,r3
	tst r6,r3
	bt loc_8c1bf2fa

loc_8c1bf2f6:
	rts
	mov 0x01,r0

;==============================================
loc_8c1bf2fa:
	mov 0x02,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bf300:
	#data 0x0200
loc_8c1bf302:
	#data 0x0100
loc_8c1bf304:
	#data 0x0080
	#align4

loc_8c1bf308:
	#data 0x8C34AF6B
loc_8c1bf30c:
	#data 0x00800020
loc_8c1bf310:
	#data 0x8C34B290

;==============================================
loc_8c1bf314:
	extu.b r4,r0
	mov 0x04,r5
	add 0xFF,r0
	mov 0x44,r1
	cmp/hs r1,r0
	bf loc_8c1bf324
	bra loc_8c1bf480
	nop

loc_8c1bf324:
	shll r0
	mov r0,r1
	mova @(loc_8c1bf330,PC),r0
	mov.w @(r0,r1),r0

braf_8c1bf32c:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bf330:
	#data16 {loc_8c1bf3b8-braf_8c1bf32c-4} ; 0x0088
	#data16 {loc_8c1bf3b8-braf_8c1bf32c-4} ; 0x0088
	#data16 {loc_8c1bf3b8-braf_8c1bf32c-4} ; 0x0088
	#data16 {loc_8c1bf480-braf_8c1bf32c-4} ; 0x0150
	#data16 {loc_8c1bf3ce-braf_8c1bf32c-4} ; 0x009E
	#data16 {loc_8c1bf3d2-braf_8c1bf32c-4} ; 0x00A2
	#data16 {loc_8c1bf3d6-braf_8c1bf32c-4} ; 0x00A6
	#data16 {loc_8c1bf480-braf_8c1bf32c-4} ; 0x0150
	#data16 {loc_8c1bf3de-braf_8c1bf32c-4} ; 0x00AE
	#data16 {loc_8c1bf3de-braf_8c1bf32c-4} ; 0x00AE
	#data16 {loc_8c1bf3b8-braf_8c1bf32c-4} ; 0x0088
	#data16 {loc_8c1bf3bc-braf_8c1bf32c-4} ; 0x008C
	#data16 {loc_8c1bf480-braf_8c1bf32c-4} ; 0x0150
	#data16 {loc_8c1bf480-braf_8c1bf32c-4} ; 0x0150
	#data16 {loc_8c1bf3d6-braf_8c1bf32c-4} ; 0x00A6
	#data16 {loc_8c1bf3da-braf_8c1bf32c-4} ; 0x00AA
	#data16 {loc_8c1bf3de-braf_8c1bf32c-4} ; 0x00AE
	#data16 {loc_8c1bf3e2-braf_8c1bf32c-4} ; 0x00B2
	#data16 {loc_8c1bf3e6-braf_8c1bf32c-4} ; 0x00B6
	#data16 {loc_8c1bf3d2-braf_8c1bf32c-4} ; 0x00A2
	#data16 {loc_8c1bf3d6-braf_8c1bf32c-4} ; 0x00A6
	#data16 {loc_8c1bf3da-braf_8c1bf32c-4} ; 0x00AA
	#data16 {loc_8c1bf3de-braf_8c1bf32c-4} ; 0x00AE
	#data16 {loc_8c1bf3e2-braf_8c1bf32c-4} ; 0x00B2
	#data16 {loc_8c1bf3e6-braf_8c1bf32c-4} ; 0x00B6
	#data16 {loc_8c1bf3ea-braf_8c1bf32c-4} ; 0x00BA
	#data16 {loc_8c1bf3ee-braf_8c1bf32c-4} ; 0x00BE
	#data16 {loc_8c1bf3f2-braf_8c1bf32c-4} ; 0x00C2
	#data16 {loc_8c1bf3f6-braf_8c1bf32c-4} ; 0x00C6
	#data16 {loc_8c1bf3fa-braf_8c1bf32c-4} ; 0x00CA
	#data16 {loc_8c1bf3fe-braf_8c1bf32c-4} ; 0x00CE
	#data16 {loc_8c1bf402-braf_8c1bf32c-4} ; 0x00D2
	#data16 {loc_8c1bf406-braf_8c1bf32c-4} ; 0x00D6
	#data16 {loc_8c1bf40a-braf_8c1bf32c-4} ; 0x00DA
	#data16 {loc_8c1bf40e-braf_8c1bf32c-4} ; 0x00DE
	#data16 {loc_8c1bf412-braf_8c1bf32c-4} ; 0x00E2
	#data16 {loc_8c1bf416-braf_8c1bf32c-4} ; 0x00E6
	#data16 {loc_8c1bf41a-braf_8c1bf32c-4} ; 0x00EA
	#data16 {loc_8c1bf41e-braf_8c1bf32c-4} ; 0x00EE
	#data16 {loc_8c1bf422-braf_8c1bf32c-4} ; 0x00F2
	#data16 {loc_8c1bf426-braf_8c1bf32c-4} ; 0x00F6
	#data16 {loc_8c1bf42a-braf_8c1bf32c-4} ; 0x00FA
	#data16 {loc_8c1bf42e-braf_8c1bf32c-4} ; 0x00FE
	#data16 {loc_8c1bf432-braf_8c1bf32c-4} ; 0x0102
	#data16 {loc_8c1bf436-braf_8c1bf32c-4} ; 0x0106
	#data16 {loc_8c1bf43a-braf_8c1bf32c-4} ; 0x010A
	#data16 {loc_8c1bf43e-braf_8c1bf32c-4} ; 0x010E
	#data16 {loc_8c1bf442-braf_8c1bf32c-4} ; 0x0112
	#data16 {loc_8c1bf446-braf_8c1bf32c-4} ; 0x0116
	#data16 {loc_8c1bf40a-braf_8c1bf32c-4} ; 0x00DA
	#data16 {loc_8c1bf44a-braf_8c1bf32c-4} ; 0x011A
	#data16 {loc_8c1bf44e-braf_8c1bf32c-4} ; 0x011E
	#data16 {loc_8c1bf412-braf_8c1bf32c-4} ; 0x00E2
	#data16 {loc_8c1bf452-braf_8c1bf32c-4} ; 0x0122
	#data16 {loc_8c1bf456-braf_8c1bf32c-4} ; 0x0126
	#data16 {loc_8c1bf41a-braf_8c1bf32c-4} ; 0x00EA
	#data16 {loc_8c1bf45a-braf_8c1bf32c-4} ; 0x012A
	#data16 {loc_8c1bf45e-braf_8c1bf32c-4} ; 0x012E
	#data16 {loc_8c1bf422-braf_8c1bf32c-4} ; 0x00F2
	#data16 {loc_8c1bf462-braf_8c1bf32c-4} ; 0x0132
	#data16 {loc_8c1bf466-braf_8c1bf32c-4} ; 0x0136
	#data16 {loc_8c1bf42a-braf_8c1bf32c-4} ; 0x00FA
	#data16 {loc_8c1bf46a-braf_8c1bf32c-4} ; 0x013A
	#data16 {loc_8c1bf46e-braf_8c1bf32c-4} ; 0x013E
	#data16 {loc_8c1bf432-braf_8c1bf32c-4} ; 0x0102
	#data16 {loc_8c1bf472-braf_8c1bf32c-4} ; 0x0142
	#data16 {loc_8c1bf476-braf_8c1bf32c-4} ; 0x0146
	#data16 {loc_8c1bf43a-braf_8c1bf32c-4} ; 0x010A

;==============================================
loc_8c1bf3b8:
	bra loc_8c1bf482
	mov 0x02,r4

;==============================================
loc_8c1bf3bc:
	mov.l @(0xBC,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1bf3ca
	bra loc_8c1bf482
	mov 0x01,r4

loc_8c1bf3ca:
	bra loc_8c1bf482
	mov r5,r4

;==============================================
loc_8c1bf3ce:
	bra loc_8c1bf482
	mov r5,r4

;==============================================
loc_8c1bf3d2:
	bra loc_8c1bf482
	mov 0x05,r4

;==============================================
loc_8c1bf3d6:
	bra loc_8c1bf482
	mov 0x06,r4

;==============================================
loc_8c1bf3da:
	bra loc_8c1bf482
	mov 0x07,r4

;==============================================
loc_8c1bf3de:
	bra loc_8c1bf482
	mov 0x08,r4

;==============================================
loc_8c1bf3e2:
	bra loc_8c1bf482
	mov 0x0B,r4

;==============================================
loc_8c1bf3e6:
	bra loc_8c1bf482
	mov 0x0C,r4

;==============================================
loc_8c1bf3ea:
	bra loc_8c1bf482
	mov 0x0D,r4

;==============================================
loc_8c1bf3ee:
	bra loc_8c1bf482
	mov 0x0E,r4

;==============================================
loc_8c1bf3f2:
	bra loc_8c1bf482
	mov 0x15,r4

;==============================================
loc_8c1bf3f6:
	bra loc_8c1bf482
	mov 0x16,r4

;==============================================
loc_8c1bf3fa:
	bra loc_8c1bf482
	mov 0x17,r4

;==============================================
loc_8c1bf3fe:
	bra loc_8c1bf482
	mov 0x19,r4

;==============================================
loc_8c1bf402:
	bra loc_8c1bf482
	mov 0x1D,r4

;==============================================
loc_8c1bf406:
	bra loc_8c1bf482
	mov 0x20,r4

;==============================================
loc_8c1bf40a:
	bra loc_8c1bf482
	mov 0x1E,r4

;==============================================
loc_8c1bf40e:
	bra loc_8c1bf482
	mov 0x21,r4

;==============================================
loc_8c1bf412:
	bra loc_8c1bf482
	mov 0x23,r4

;==============================================
loc_8c1bf416:
	bra loc_8c1bf482
	mov 0x25,r4

;==============================================
loc_8c1bf41a:
	bra loc_8c1bf482
	mov 0x28,r4

;==============================================
loc_8c1bf41e:
	bra loc_8c1bf482
	mov 0x2A,r4

;==============================================
loc_8c1bf422:
	bra loc_8c1bf482
	mov 0x2C,r4

;==============================================
loc_8c1bf426:
	bra loc_8c1bf482
	mov 0x2E,r4

;==============================================
loc_8c1bf42a:
	bra loc_8c1bf482
	mov 0x30,r4

;==============================================
loc_8c1bf42e:
	bra loc_8c1bf482
	mov 0x32,r4

;==============================================
loc_8c1bf432:
	bra loc_8c1bf482
	mov 0x34,r4

;==============================================
loc_8c1bf436:
	bra loc_8c1bf482
	mov 0x36,r4

;==============================================
loc_8c1bf43a:
	bra loc_8c1bf482
	mov 0x38,r4

;==============================================
loc_8c1bf43e:
	bra loc_8c1bf482
	mov 0x18,r4

;==============================================
loc_8c1bf442:
	bra loc_8c1bf482
	mov 0x1A,r4

;==============================================
loc_8c1bf446:
	bra loc_8c1bf482
	mov 0x1C,r4

;==============================================
loc_8c1bf44a:
	bra loc_8c1bf482
	mov 0x1F,r4

;==============================================
loc_8c1bf44e:
	bra loc_8c1bf482
	mov 0x22,r4

;==============================================
loc_8c1bf452:
	bra loc_8c1bf482
	mov 0x24,r4

;==============================================
loc_8c1bf456:
	bra loc_8c1bf482
	mov 0x27,r4

;==============================================
loc_8c1bf45a:
	bra loc_8c1bf482
	mov 0x29,r4

;==============================================
loc_8c1bf45e:
	bra loc_8c1bf482
	mov 0x2B,r4

;==============================================
loc_8c1bf462:
	bra loc_8c1bf482
	mov 0x2D,r4

;==============================================
loc_8c1bf466:
	bra loc_8c1bf482
	mov 0x2F,r4

;==============================================
loc_8c1bf46a:
	bra loc_8c1bf482
	mov 0x31,r4

;==============================================
loc_8c1bf46e:
	bra loc_8c1bf482
	mov 0x33,r4

;==============================================
loc_8c1bf472:
	bra loc_8c1bf482
	mov 0x35,r4

;==============================================
loc_8c1bf476:
	bra loc_8c1bf482
	mov 0x37,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1bf47c:
	#data 0x8C34AF5E

;==============================================
loc_8c1bf480:
	mov.w @(0x2,PC),r4

loc_8c1bf482:
	rts
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BF486:
	#data 0x00FF

;==============================================
loc_8c1BF488:
	extu.b r4,r0
	add 0xFE,r0
	mov 0x37,r1 ; r1 set to 0x37
	cmp/hs r1,r0
	bf loc_8c1BF496
	bra loc_8c1BF5C2
	nop

loc_8c1BF496:
	shll r0
	mov r0,r1
	mova @(loc_8c1BF4A4,pc),r0  ; r0 set to 0x8C1BF4A4
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???

braf_8c1bf49e:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1BF4A4:
	#data16 {loc_8c1bf5be-braf_8c1bf49e-4} ; 0x011C
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf5ba-braf_8c1bf49e-4} ; 0x0118
	#data16 {loc_8c1bf5b6-braf_8c1bf49e-4} ; 0x0114
	#data16 {loc_8c1bf5b2-braf_8c1bf49e-4} ; 0x0110
	#data16 {loc_8c1bf5ae-braf_8c1bf49e-4} ; 0x010C
	#data16 {loc_8c1bf5aa-braf_8c1bf49e-4} ; 0x0108
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf5a6-braf_8c1bf49e-4} ; 0x0104
	#data16 {loc_8c1bf5a2-braf_8c1bf49e-4} ; 0x0100
	#data16 {loc_8c1bf59e-braf_8c1bf49e-4} ; 0x00FC
	#data16 {loc_8c1bf59a-braf_8c1bf49e-4} ; 0x00F8
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf596-braf_8c1bf49e-4} ; 0x00F4
	#data16 {loc_8c1bf592-braf_8c1bf49e-4} ; 0x00F0
	#data16 {loc_8c1bf58e-braf_8c1bf49e-4} ; 0x00EC
	#data16 {loc_8c1bf58a-braf_8c1bf49e-4} ; 0x00E8
	#data16 {loc_8c1bf586-braf_8c1bf49e-4} ; 0x00E4
	#data16 {loc_8c1bf582-braf_8c1bf49e-4} ; 0x00E0
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf57e-braf_8c1bf49e-4} ; 0x00DC
	#data16 {loc_8c1bf57a-braf_8c1bf49e-4} ; 0x00D8
	#data16 {loc_8c1bf576-braf_8c1bf49e-4} ; 0x00D4
	#data16 {loc_8c1bf572-braf_8c1bf49e-4} ; 0x00D0
	#data16 {loc_8c1bf56e-braf_8c1bf49e-4} ; 0x00CC
	#data16 {loc_8c1bf56a-braf_8c1bf49e-4} ; 0x00C8
	#data16 {loc_8c1bf566-braf_8c1bf49e-4} ; 0x00C4
	#data16 {loc_8c1bf562-braf_8c1bf49e-4} ; 0x00C0
	#data16 {loc_8c1bf55e-braf_8c1bf49e-4} ; 0x00BC
	#data16 {loc_8c1bf55a-braf_8c1bf49e-4} ; 0x00B8
	#data16 {loc_8c1bf5c2-braf_8c1bf49e-4} ; 0x0120
	#data16 {loc_8c1bf556-braf_8c1bf49e-4} ; 0x00B4
	#data16 {loc_8c1bf552-braf_8c1bf49e-4} ; 0x00B0
	#data16 {loc_8c1bf54e-braf_8c1bf49e-4} ; 0x00AC
	#data16 {loc_8c1bf54a-braf_8c1bf49e-4} ; 0x00A8
	#data16 {loc_8c1bf546-braf_8c1bf49e-4} ; 0x00A4
	#data16 {loc_8c1bf542-braf_8c1bf49e-4} ; 0x00A0
	#data16 {loc_8c1bf53e-braf_8c1bf49e-4} ; 0x009C
	#data16 {loc_8c1bf53a-braf_8c1bf49e-4} ; 0x0098
	#data16 {loc_8c1bf536-braf_8c1bf49e-4} ; 0x0094
	#data16 {loc_8c1bf532-braf_8c1bf49e-4} ; 0x0090
	#data16 {loc_8c1bf52e-braf_8c1bf49e-4} ; 0x008C
	#data16 {loc_8c1bf52a-braf_8c1bf49e-4} ; 0x0088
	#data16 {loc_8c1bf526-braf_8c1bf49e-4} ; 0x0084
	#data16 {loc_8c1bf522-braf_8c1bf49e-4} ; 0x0080
	#data16 {loc_8c1bf51e-braf_8c1bf49e-4} ; 0x007C
	#data16 {loc_8c1bf51a-braf_8c1bf49e-4} ; 0x0078
	#data16 {loc_8c1bf516-braf_8c1bf49e-4} ; 0x0074
	#data16 {loc_8c1bf512-braf_8c1bf49e-4} ; 0x0070

;==============================================
loc_8c1bf512:
	rts
	mov 0x2D,r0

;==============================================
loc_8c1bf516:
	rts
	mov 0x2C,r0

;==============================================
loc_8c1bf51a:
	rts
	mov 0x2B,r0

;==============================================
loc_8c1bf51e:
	rts
	mov 0x2A,r0

;==============================================
loc_8c1bf522:
	rts
	mov 0x29,r0

;==============================================
loc_8c1bf526:
	rts
	mov 0x28,r0

;==============================================
loc_8c1bf52a:
	rts
	mov 0x27,r0

;==============================================
loc_8c1bf52e:
	rts
	mov 0x26,r0

;==============================================
loc_8c1bf532:
	rts
	mov 0x25,r0

;==============================================
loc_8c1bf536:
	rts
	mov 0x24,r0

;==============================================
loc_8c1bf53a:
	rts
	mov 0x23,r0

;==============================================
loc_8c1bf53e:
	rts
	mov 0x22,r0

;==============================================
loc_8c1bf542:
	rts
	mov 0x21,r0

;==============================================
loc_8c1bf546:
	rts
	mov 0x20,r0

;==============================================
loc_8c1bf54a:
	rts
	mov 0x1F,r0

;==============================================
loc_8c1bf54e:
	rts
	mov 0x1E,r0

;==============================================
loc_8c1bf552:
	rts
	mov 0x1D,r0

;==============================================
loc_8c1bf556:
	rts
	mov 0x1C,r0

;==============================================
loc_8c1bf55a:
	rts
	mov 0x1A,r0

;==============================================
loc_8c1bf55e:
	rts
	mov 0x19,r0

;==============================================
loc_8c1bf562:
	rts
	mov 0x18,r0

;==============================================
loc_8c1bf566:
	rts
	mov 0x17,r0

;==============================================
loc_8c1bf56a:
	rts
	mov 0x16,r0

;==============================================
loc_8c1bf56e:
	rts
	mov 0x15,r0

;==============================================
loc_8c1bf572:
	rts
	mov 0x14,r0

;==============================================
loc_8c1bf576:
	rts
	mov 0x13,r0

;==============================================
loc_8c1bf57a:
	rts
	mov 0x12,r0

;==============================================
loc_8c1bf57e:
	rts
	mov 0x11,r0

;==============================================
loc_8c1bf582:
	rts
	mov 0x10,r0

;==============================================
loc_8c1bf586:
	rts
	mov 0x0F,r0

;==============================================
loc_8c1bf58a:
	rts
	mov 0x0E,r0

;==============================================
loc_8c1bf58e:
	rts
	mov 0x0D,r0

;==============================================
loc_8c1bf592:
	rts
	mov 0x0C,r0

;==============================================
loc_8c1bf596:
	rts
	mov 0x0B,r0

;==============================================
loc_8c1bf59a:
	rts
	mov 0x0A,r0

;==============================================
loc_8c1bf59e:
	rts
	mov 0x09,r0

;==============================================
loc_8c1bf5a2:
	rts
	mov 0x08,r0

;==============================================
loc_8c1bf5a6:
	rts
	mov 0x07,r0

;==============================================
loc_8c1bf5aa:
	rts
	mov 0x06,r0

;==============================================
loc_8c1bf5ae:
	rts
	mov 0x05,r0

;==============================================
loc_8c1bf5b2:
	rts
	mov 0x04,r0

;==============================================
loc_8c1bf5b6:
	rts
	mov 0x03,r0

;==============================================
loc_8c1bf5ba:
	rts
	mov 0x02,r0

;==============================================
loc_8c1bf5be:
	rts
	mov 0x01,r0

;==============================================
loc_8c1BF5C2:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8c1BF5C8:
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	add 0xF4,r15
	mov r15,r5
	mov r15,r6
	add 0x04,r5
	add 0x08,r6
	jsr @r3
	mov r15,r4
	mov.b @(0x4,r15),r0
	bsr loc_8c1bf488
	mov r0,r4
	mov.l @(0x7C,PC),r2
	mov.b r0,@r2
	mov.b @(0x8,r15),r0
	bsr loc_8c1bf488
	mov r0,r4
	mov.l @(0x78,PC),r2
	mov.b r0,@r2
	mov.l @(0x78,PC),r3
	mov.b r0,@r3
	mov.l @(0x78,PC),r5
	mov.l @(0x68,PC),r2
	mov.b @r5,r1
	mov.b @r2,r4
	extu.b r1,r1
	extu.b r4,r3
	cmp/gt r1,r3
	bf loc_8c1bf604
	mov.b r4,@r5

loc_8c1BF604:
	mov.l @(0x5C,PC),r2
	mov.l @(0x68,PC),r5
	mov.b @r2,r4
	mov.b @r5,r1
	extu.b r4,r3
	extu.b r1,r1
	cmp/gt r1,r3
	bf loc_8c1bf616
	mov.b r4,@r5

loc_8c1BF616:
	mov.l @r15,r0
	tst 0x04,r0
	bt loc_8c1bf622
	mov.l @(0x48,PC),r3
	mov 0x00,r2
	mov.b r2,@r3

loc_8c1BF622:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1BF62A:
	mov.l @(loc_8c1BF674,pc),r3 ; r3 set to 0x8C34B1F8
	mov 0x01,r5 ; r5 set to 0x01
	sts.l pr,@-r15
	mov.w @(loc_8c1BF65A,pc),r0 ; r0 set to 0xB4
	mov.l @(loc_8c1BF678,pc),r2 ; r2 set to 0x8C1B28B4
	mov.l @r3,r4
	jsr @r2
	mov.w @(r0,r4),r4
	mov.l @(loc_8c1BF67C,pc),r3 ; r3 set to 0x8C1B0626
	jsr @r3
	nop
	mov.l @(loc_8c1BF680,pc),r3 ; r3 set to 0x8C34B106
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@r3 ; r3 ??
	mov.l @(loc_8c1BF684,pc),r2 ; r2 set to 0x8C34B28A
	mov.b @r2,r0 ; r0 ??
	and 0x7F,r0
	mov.b r0,@r2 ; r2 ??? bc r0 is ???
	mov.l @(loc_8c1BF688,pc),r0 ; r0 set to 0x8C34B2CC
	lds.l @r15+,pr
	mov.l @(loc_8c1BF68C,pc),r3 ; r3 set to 0x8C34B108
	mov.l @r0,r1
	rts
	mov.l r1,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BF65A:
	#data 0x00B4
	#align4

loc_8c1BF65C:
	#data bank19.loc_8c19C378
loc_8c1bf660:
	#data 0x8C34B0FB
loc_8c1bf664:
	#data 0x8C34B0FC
loc_8c1bf668:
	#data 0x8C34B0FE
loc_8c1bf66c:
	#data 0x8C34B0F9
loc_8c1BF670:
	#data 0x8C34B0FA
loc_8c1BF674:
	#data 0x8C34B1F8
loc_8c1BF678:
	#data loc_8c1B28B4
loc_8c1BF67C:
	#data loc_8c1B0626
loc_8c1BF680:
	#data 0x8C34B106
loc_8c1BF684:
	#data 0x8C34B28A
loc_8c1BF688:
	#data 0x8C34B2CC
loc_8c1BF68C:
	#data 0x8C34B108

;==============================================
loc_8c1BF690:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1BF784,pc),r2 ; r2 set to 0x8C1B2A48
	jsr @r2
	nop
	mov.l @(loc_8c1BF788,pc),r6 ; r6 set to 0x8C34B105
	mov r0,r14
	extu.b r14,r2 ; r2 ??? bc r14 is ???
	mov.l @(loc_8c1BF78C,pc),r5 ; r5 set to 0x8C34B108
	mov.b @r6,r1
	mov.l @(loc_8c1BF790,pc),r3 ; r3 set to 0x8C34B2CC
	extu.b r1,r1
	cmp/eq r1,r2
	bt/s loc_8c1BF722
	mov.l @r3,r4
	mov.l @r5,r2
	mov r4,r13
	mov.l r4,@r5 ; r5 ??? bc r4 is ???
	sub r2,r13
	mov.b r14,@r6 ; r6 ??? bc r14 is ???
	mov.l @(loc_8c1BF794,pc),r2 ; r2 set to 0x8C34B039
	mov.b @r2,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1BF6D6
	mov.l @(loc_8c1BF798,pc),r1 ; r1 set to 0x8C1B064A
	mov r13,r5
	jsr @r1
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BF6D6
	bra loc_8c1BF75A
	mov 0x02,r0

loc_8c1BF6D6:
	mov.l @(loc_8c1BF794,pc),r3 ; r3 set to 0x8C34B039
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1BF6F2
	mov.l @(loc_8c1BF79C,pc),r1 ; r1 set to 0x8C1B07EE
	mov r13,r5
	jsr @r1
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BF6F2
	bra loc_8c1BF75A
	mov 0x01,r0

loc_8c1BF6F2:
	mov.l @(loc_8c1BF7A0,pc),r2 ; r2 set to 0x8C1B0998
	mov r13,r5
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BF704
	bra loc_8c1BF75A
	mov 0x03,r0

loc_8c1BF704:
	mov.l @(loc_8c1BF7A4,pc),r3 ; r3 set to 0x8C34B1F8
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @r3,r2
	mov.w @(r0,r2),r1
	tst r1,r1
	bt loc_8c1BF758
	mov.l @(loc_8c1BF7A8,pc),r1 ; r1 set to 0x8C1B0B12
	mov r13,r5
	jsr @r1
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8c1BF754
	bra loc_8c1BF758
	nop

loc_8c1BF722:
	extu.b r14,r14
	tst r14,r14
	bt loc_8c1BF758
	mov.l @(loc_8c1BF7A4,pc),r2 ; r2 set to 0x8C34B1F8
	mov.w @(loc_8c1BF780,pc),r0 ; r0 set to 0xB0
	mov.l @r2,r1
	mov.w @(loc_8c1BF782,pc),r3 ; r3 set to 0x4000
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	extu.w r0,r0
	tst r3,r0
	bt loc_8c1BF758
	mov.l @r2,r1
	mov 0x54,r0 ; r0 set to 0x54
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	tst r0,r0
	bf loc_8c1BF758
	mov.l @(loc_8c1BF7A4,pc),r1 ; r1 set to 0x8C34B1F8
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @r5,r3 ; r3 ??? bc r5 is ???
	mov.l @r1,r2 ; r2 ??
	sub r3,r4
	mov.w @(r0,r2),r3
	extu.w r3,r3
	cmp/hs r3,r4
	bf loc_8c1BF758

loc_8c1BF754:
	bra loc_8c1BF75A
	mov 0x04,r0

loc_8c1BF758:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1BF75A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BF762:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1BF7B0,pc),r4 ; r4 set to 0x8C34B0E0
	mov.l @(loc_8c1BF7AC,pc),r14 ; r14 set to 0x8C1B3EEC
	jsr @r14
	mov 0x1E,r5 ; r5 set to 0x1E
	mov.l @(loc_8c1BF7B4,pc),r4 ; r4 set to 0x8C34B0E4
	jsr @r14
	mov 0x19,r5 ; r5 set to 0x19
	mov.l @(loc_8c1BF7B8,pc),r4 ; r4 set to 0x8C34B0E8
	jsr @r14
	mov 0x1E,r5 ; r5 set to 0x1E
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BF780:
	#data 0x00B0
loc_8c1BF782:
	#data 0x4000
	#align4

loc_8c1BF784:
	#data loc_8c1B2A48
loc_8c1BF788:
	#data 0x8C34B105
loc_8c1BF78C:
	#data 0x8C34B108
loc_8c1BF790:
	#data 0x8C34B2CC
loc_8c1BF794:
	#data 0x8C34B039
loc_8c1BF798:
	#data loc_8c1B064A
loc_8c1BF79C:
	#data loc_8c1B07EE
loc_8c1BF7A0:
	#data loc_8c1B0998
loc_8c1BF7A4:
	#data 0x8C34B1F8
loc_8c1BF7A8:
	#data loc_8c1B0B12
loc_8c1BF7AC:
	#data loc_8c1B3EEC
loc_8c1BF7B0:
	#data 0x8C34B0E0
loc_8c1BF7B4:
	#data 0x8C34B0E4
loc_8c1BF7B8:
	#data 0x8C34B0E8

;==============================================
loc_8c1BF7BC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1BF870,pc),r3 ; r3 set to 0x8C19AF60
	mov.l @(loc_8c1BF86C,pc),r14 ; r14 set to 0x8C1B3EEC
	jsr @r3
	nop
	mov.l @(loc_8c1BF874,pc),r13 ; r13 set to 0x8C1B3F0C
	extu.b r0,r5
	extu.w r5,r4
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1BF7EA
	mov.l @(loc_8c1BF878,pc),r3 ; r3 set to 0x8C34B0E4
	jsr @r13
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1BF832
	bra loc_8c1BF852
	nop

loc_8c1BF7EA:
	mov.l @(loc_8c1BF87C,pc),r12 ; r12 set to 0x8C34B1F8
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c1BF816
	mov.l @(loc_8c1BF880,pc),r2 ; r2 set to 0x8C34B0E8
	jsr @r13
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1BF832
	mov.l @(loc_8c1BF884,pc),r4 ; r4 set to 0x8C34B0E0
	jsr @r14
	mov 0x1E,r5 ; r5 set to 0x1E
	mov.w @(loc_8c1BF86A,pc),r0 ; r0 set to 0xA6
	mov.l @r12,r5 ; r5 ??
	mov.l @(loc_8c1BF878,pc),r4 ; r4 set to 0x8C34B0E4
	mov.w @(r0,r5),r5
	jsr @r14
	extu.w r5,r5
	bra loc_8c1BF85E
	nop

loc_8c1BF816:
	mov.l @(loc_8c1BF888,pc),r3 ; r3 set to 0x8C34B0FE
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1BF846
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c1BF846
	mov.l @(loc_8c1BF884,pc),r3 ; r3 set to 0x8C34B0E0
	jsr @r13
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BF836

loc_8c1BF832:
	bra loc_8c1BF860
	mov 0x01,r0

loc_8c1BF836:
	mov.w @(loc_8c1BF86A,pc),r0 ; r0 set to 0xA6
	mov.l @r12,r5
	mov.l @(loc_8c1BF878,pc),r4 ; r4 set to 0x8C34B0E4
	mov.w @(r0,r5),r5
	jsr @r14
	extu.w r5,r5
	bra loc_8c1BF858
	nop

loc_8c1BF846:
	mov.w @(loc_8c1BF86A,pc),r0 ; r0 set to 0xA6
	mov.l @r12,r5
	mov.l @(loc_8c1BF878,pc),r4 ; r4 set to 0x8C34B0E4
	mov.w @(r0,r5),r5
	jsr @r14
	extu.w r5,r5

loc_8c1BF852:
	mov.l @(loc_8c1BF884,pc),r4 ; r4 set to 0x8C34B0E0
	jsr @r14
	mov 0x1E,r5 ; r5 set to 0x1E

loc_8c1BF858:
	mov.l @(loc_8c1BF880,pc),r4 ; r4 set to 0x8C34B0E8, r4 set to 0x8C34B0E8
	jsr @r14
	mov 0x1E,r5 ; r5 set to 0x1E, r5 set to 0x1E

loc_8c1BF85E:
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00

loc_8c1BF860:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BF86A:
	#data 0x00A6
	#align4

loc_8c1BF86C:
	#data loc_8c1B3EEC
loc_8c1BF870:
	#data bank19.loc_8c19AF60
loc_8c1BF874:
	#data loc_8c1B3F0C
loc_8c1BF878:
	#data 0x8C34B0E4
loc_8c1BF87C:
	#data 0x8C34B1F8
loc_8c1BF880:
	#data 0x8C34B0E8
loc_8c1BF884:
	#data 0x8C34B0E0
loc_8c1BF888:
	#data 0x8C34B0FE

;==============================================
loc_8c1BF88C:
	mov.l @(0xE4,PC),r3
	mov.w @(0xDC,PC),r1
	mov.l @r3,r0
	sts.l pr,@-r15
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c1bf8c4
	mov.l @(0xD8,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c1bf8c4
	mov.l @(0xD8,PC),r2
	mov.l @(0xD0,PC),r4
	jsr @r2
	mov.b @r4,r4
	mov.l @(0xD4,PC),r3
	mov.w @(0xBC,PC),r4
	jsr @r3
	nop
	mov.l @(0xD4,PC),r2
	mov.l @(0xCC,PC),r4
	jsr @r2
	mov 0x3C,r5
	mov.l @(0xD0,PC),r2
	mov 0x01,r3
	mov.b r3,@r2

loc_8c1BF8C4:
	mov.l @(0xCC,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1bf8e2
	mov.l @(0xC8,PC),r2
	mov.l @r2,r0
	tst 0x80,r0
	bt loc_8c1bf8e2
	mov.l @(0xB8,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c1bf8e2
	bra loc_8c1bf8e4
	mov 0x02,r4

loc_8c1BF8E2:
	mov 0x00,r4

loc_8c1BF8E4:
	mov.l @(0xB4,PC),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c1BF8EA:
	mov.l @(loc_8c1BF974,pc),r3 ; r3 set to 0x8C34B1F8
	mov.w @(loc_8c1BF96E,pc),r1 ; r1 set to 0xB0
	mov.l @r3,r0
	sts.l pr,@-r15
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c1BF93C
	mov.l @(loc_8c1BF978,pc),r0 ; r0 set to 0x8C34B290
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c1BF93C
	mov.l @(loc_8c1BF9A0,pc),r3 ; r3 set to 0x8C1B3F0C
	mov.l @(loc_8c1BF988,pc),r2 ; r2 set to 0x8C34B100
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BF93C
	mov.l @(loc_8c1BF990,pc),r4 ; r4 set to 0x8C34B104
	mov.b @r4,r3 ; r3 ??
	tst r3,r3
	bf loc_8c1BF92A
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@r4 ; r4 ??
	mov.l @(loc_8c1BF984,pc),r2 ; r2 set to 0x8C19B084
	mov.w @(loc_8c1BF970,pc),r4 ; r4 set to 0x514
	jsr @r2
	nop
	bra loc_8c1BF934
	mov 0x3C,r5

loc_8c1BF92A:
	mov.l @(loc_8c1BF9A4,pc),r2 ; r2 set to 0x8C19B102
	mov 0x00,r3 ; r3 set to 0x00
	jsr @r2
	mov.b r3,@r4
	mov.w @(loc_8c1BF972,pc),r5 ; r5 set to 0xAF

loc_8c1BF934:
	mov.l @(loc_8c1BF98C,pc),r3 ; r3 set to 0x8C1B3EEC, r3 set to 0x8C1B3EEC
	mov.l @(loc_8c1BF988,pc),r4 ; r4 set to 0x8C34B100, r4 set to 0x8C34B100
	jmp @r3
	lds.l @r15+,pr

loc_8c1BF93C:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1BF942:
	mov.l r14,@-r15
	mov.l @(0x64,PC),r4
	sts.l pr,@-r15
	mov.b @r4,r0
	mov.l @(0x5C,PC),r14
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1bf95a
	jsr @r14
	mov 0x02,r4
	bra loc_8c1bf968
	nop

loc_8c1BF95A:
	tst 0x10,r0
	bt loc_8c1bf962
	bra loc_8c1bf964
	mov 0x01,r4

loc_8c1BF962:
	mov 0x00,r4

loc_8c1BF964:
	jsr @r14
	nop

loc_8c1BF968:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BF96E:
	#data 0x00B0
loc_8c1BF970:
	#data 0x0514
loc_8c1BF972:
	#data 0x00AF
	#align4

loc_8c1BF974:
	#data 0x8C34B1F8
loc_8c1BF978:
	#data 0x8C34B290
loc_8c1BF97c:
	#data 0x8C34AF73
loc_8c1BF980:
	#data bank19.loc_8c19AA0C
loc_8c1BF984:
	#data bank19.loc_8c19B084
loc_8c1BF988:
	#data 0x8C34B100
loc_8c1BF98C:
	#data loc_8c1B3EEC
loc_8c1BF990:
	#data 0x8C34B104
loc_8c1BF994:
	#data 0x8C34AF87
loc_8c1BF998:
	#data 0x8C34B0F4
loc_8c1BF99C:
	#data bank19.loc_8c19C818
loc_8c1BF9A0:
	#data loc_8c1B3F0C
loc_8c1BF9A4:
	#data bank19.loc_8c19B102
loc_8c1BF9A8:
	#data bank19.loc_8c19D26E
loc_8c1BF9Ac:
	#data 0x8C34AF6B

;==============================================
loc_8c1BF9B0:
	mov.l r14,@-r15
	mov 0x03,r14 ; r14 set to 0x03
	mov.l @(loc_8c1BFA84,pc),r5 ; r5 set to 0x8C34B288
	sts.l pr,@-r15
	mov r5,r4 ; r4 set to 0x8C34B288
	add 0x0A,r4 ; r4 set to 0x8C34B292
	mov.b @r4,r0
	and 0xFB,r0
	mov.b r0,@r4 ; r4 ??? bc r0 is ???
	mov.b @r4,r0
	and 0xEF,r0
	mov.b r0,@r4
	mov.l @(loc_8c1BFA88,pc),r6 ; r6 set to 0x8C34AF50
	mov r5,r1 ; r1 set to 0x8C34B288
	mov r6,r3 ; r3 set to 0x8C34AF50
	add 0x1B,r3 ; r3 set to 0x8C34AF6B
	mov.b @r3,r2
	mov r6,r4 ; r4 set to 0x8C34AF50
	extu.b r2,r2
	tst r14,r2
	bt/s loc_8c1BFA0A
	add 0x0A,r1 ; r1 set to 0x8C34B292
	mov.b @r1,r0
	or 0x04,r0
	mov.b r0,@r1 ; r1 ??? bc r0 is ???
	mov.b @r1,r0
	or 0x10,r0
	mov.b r0,@r1
	mov r5,r3 ; r3 set to 0x8C34B288
	add 0x10,r3 ; r3 set to 0x8C34B298
	mov.b @r3,r0
	or 0x10,r0
	mov.b r0,@r3 ; r3 ??? bc r0 is ???
	mov r6,r0 ; r0 set to 0x8C34AF50
	nop
	add 0x15,r0 ; r0 set to 0x8C34AF65
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c1BFA4E
	mov.l @(loc_8c1BFA8C,pc),r2 ; r2 set to 0x8C1A1208
	jsr @r2
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8c1BFA54
	nop

loc_8c1bfa0a:
	mov r4,r2
	add 0x1B,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r14,r3
	bf loc_8c1bfa2e
	mov.b @(0x0E,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1bfa2e
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x0F,r0
	cmp/eq 0x01,r0
	bt loc_8c1bfa46

loc_8c1bfa2e:
	mov.b @(0x0E,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1bfa4e
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x10,r0
	bf loc_8c1bfa4e

loc_8c1bfa46:
	mov.b @r1,r0
	or 0x10,r0
	bra loc_8c1bfa54
	mov.b r0,@r1

loc_8c1BFA4E:
	mov.l @(loc_8c1BFA8C,pc),r3 ; r3 set to 0x8C1A1208
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00

loc_8c1BFA54:
	mov.l @(loc_8c1BFA90,pc),r2 ; r2 set to 0x8C1AEA7E, r2 set to 0x8C1AEA7E
	jsr @r2
	nop
	mov.l @(loc_8c1BFA98,pc),r1 ; r1 set to 0x8C1AF31A, r1 set to 0x8C1AF31A
	mov.w @(loc_8c1BFA80,pc),r2 ; r2 set to 0xFF, r2 set to 0xFF
	mov.l @(loc_8c1BFA94,pc),r3 ; r3 set to 0x8C34B301, r3 set to 0x8C34B301
	jsr @r1
	mov.b r2,@r3 ; r3 ??, r3 ??
	mov.l @(loc_8c1BFA9C,pc),r3 ; r3 set to 0x8C1B38D8, r3 set to 0x8C1B38D8
	jsr @r3
	nop
	mov.l @(loc_8c1BFAA0,pc),r1 ; r1 set to 0x8C34B11C, r1 set to 0x8C34B11C
	mov.b r14,@r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l @(loc_8c1BFAA4,pc),r3 ; r3 set to 0x8C19FEE8, r3 set to 0x8C19FEE8
	jsr @r3
	mov 0x64,r4 ; r4 set to 0x64, r4 set to 0x64
	lds.l @r15+,pr
	mov.l @(loc_8c1BFAA8,pc),r3 ; r3 set to 0x8C34B148, r3 set to 0x8C34B148
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	mov.b r2,@r3 ; r3 ??, r3 ??
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BFA80:
	#data 0x00FF
	#align4

loc_8c1BFA84:
	#data 0x8C34B288
loc_8c1BFA88:
	#data 0x8C34AF50
loc_8c1BFA8C:
	#data bank1a.loc_8c1a1208
loc_8c1BFA90:
	#data bank1a.loc_8c1aEA7E
loc_8c1BFA94:
	#data 0x8C34B301
loc_8c1BFA98:
	#data bank1a.loc_8c1aF31A
loc_8c1BFA9C:
	#data loc_8c1B38D8
loc_8c1BFAA0:
	#data 0x8C34B11C
loc_8c1BFAA4:
	#data bank19.loc_8c19FEE8
loc_8c1BFAA8:
	#data 0x8C34B148

;==============================================
loc_8c1BFAAC:
	mov.l r14,@-r15
	extu.b r4,r4
	mov.l r13,@-r15
	tst r4,r4
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1BFB98,pc),r12 ; r12 set to 0x8C34B11C
	mov.l @(loc_8c1BFB94,pc),r11 ; r11 set to 0x8C1C9D98
	add 0xFC,r15
	bf/s loc_8c1BFB16
	mov 0x00,r14 ; r14 set to 0x00
	mov.b r14,@r11 ; r11 ??
	mov.b r14,@r12 ; r12 ??
	mov.l @(loc_8c1BFB9C,pc),r2 ; r2 set to 0x8C34B0A3
	mov.b r14,@r2 ; r2 ??
	mov.l @(loc_8c1BFBA0,pc),r3 ; r3 set to 0x8C34B0B0
	mov.b r14,@r3 ; r3 ??
	mov.l @(loc_8c1BFBA4,pc),r1 ; r1 set to 0x8C34B194
	mov.b r14,@r1 ; r1 ??
	mov.l @(loc_8c1BFBA8,pc),r2 ; r2 set to 0x8C34B0FD
	mov.b r14,@r2 ; r2 ??
	mov.l @(loc_8c1BFBAC,pc),r3 ; r3 set to 0x8C34B11D
	mov.b r14,@r3 ; r3 ??
	mov.l @(loc_8c1BFBB0,pc),r1 ; r1 set to 0x8C34B0A0
	mov.b r14,@r1 ; r1 ??
	mov.l @(loc_8c1BFBB4,pc),r2 ; r2 set to 0x8C34B17A
	mov.b r14,@r2 ; r2 ??
	mov.l @(loc_8c1BFBB8,pc),r3 ; r3 set to 0x8C34B1F8
	mov.w @(loc_8c1BFB90,pc),r0 ; r0 set to 0x8C
	mov.l @r3,r5
	mov.l @r3,r4
	mov.w @(r0,r5),r5
	mov.l @(loc_8c1BFBBC,pc),r2 ; r2 set to 0x8C19D1DA
	mov.w @(loc_8c1BFB92,pc),r0 ; r0 set to 0x8E
	jsr @r2
	mov.w @(r0,r4),r4
	add 0x04,r15
	mov.l @(loc_8c1BFBC4,pc),r3 ; r3 set to 0x8C1B3EEC
	lds.l @r15+,pr
	mov.l @(loc_8c1BFBC0,pc),r4 ; r4 set to 0x8C34B14C
	mov 0x64,r5 ; r5 set to 0x64
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1BFB16:
	mov.l @(loc_8c1BFBC8,pc),r2 ; r2 set to 0x8C19E5E0
	jsr @r2
	nop
	mov.l @(loc_8c1BFBCC,pc),r3 ; r3 set to 0x8C199404
	jsr @r3
	nop
	mov.b @r12,r0
	mov.l @(loc_8c1BFBDC,pc),r13 ; r13 set to 0x8C34B288
	extu.b r0,r0
	mov.l @(loc_8c1BFBD0,pc),r8 ; r8 set to 0x8C1AED24
	mov.l @(loc_8c1BFBD4,pc),r9 ; r9 set to 0x8C1AFD44
	cmp/eq 0x00,r0
	mov.l @(loc_8c1BFBD8,pc),r10 ; r10 set to 0x8C1AFA18
	bt loc_8c1BFB5E
	cmp/eq 0x01,r0
	bt loc_8c1BFB68
	cmp/eq 0x02,r0
	bt loc_8c1BFC18
	cmp/eq 0x03,r0
	bf loc_8c1BFB42
	bra loc_8c1BFC4E
	nop

loc_8c1BFB42:
	cmp/eq 0x04,r0
	bf loc_8c1BFB4A
	bra loc_8c1BFCD0
	nop

loc_8c1BFB4A:
	cmp/eq 0x06,r0
	bf loc_8c1BFB52
	bra loc_8c1BFD04
	nop

loc_8c1BFB52:
	cmp/eq 0x08,r0
	bf loc_8c1BFB5A
	bra loc_8c1BFD52
	nop

loc_8c1BFB5A:
	bra loc_8c1BFDEE
	nop

loc_8c1BFB5E:
	bsr loc_8c1BFE28
	nop
	mov.l @(loc_8c1BFBE0,pc),r3 ; r3 set to 0x8C34B130
	bra loc_8c1BFDEE
	mov.b r14,@r3

loc_8c1BFB68:
	mov.l @(loc_8c1BFBE4,pc),r1 ; r1 set to 0x8C1B01F0
	jsr @r1
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1BFB78
	bra loc_8c1BFC3A
	mov.b r14,@r12

loc_8c1BFB78:
	mov.l @(loc_8c1BFBE8,pc),r2 ; r2 set to 0x8C1C2168
	jsr @r2
	nop
	extu.b r0,r8
	mov.b r0,@r15
	mov r8,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1BFBEC
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_8c1BFC14
	mov.b r2,@r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1BFB90:
	#data 0x008C
loc_8c1BFB92:
	#data 0x008E
	#align4

loc_8c1BFB94:
	#data bank1c.loc_8c1c9D98
loc_8c1BFB98:
	#data 0x8C34B11C
loc_8c1BFB9C:
	#data 0x8C34B0A3
loc_8c1BFBA0:
	#data 0x8C34B0B0
loc_8c1BFBA4:
	#data 0x8C34B194
loc_8c1BFBA8:
	#data 0x8C34B0FD
loc_8c1BFBAC:
	#data 0x8C34B11D
loc_8c1BFBB0:
	#data 0x8C34B0A0
loc_8c1BFBB4:
	#data 0x8C34B17A
loc_8c1BFBB8:
	#data 0x8C34B1F8
loc_8c1BFBBC:
	#data bank19.loc_8c19D1DA
loc_8c1BFBC0:
	#data 0x8C34B14C
loc_8c1BFBC4:
	#data loc_8c1B3EEC
loc_8c1BFBC8:
	#data bank19.loc_8c19E5E0
loc_8c1BFBCC:
	#data bank19.loc_8c199404
loc_8c1BFBD0:
	#data bank1a.loc_8c1aED24
loc_8c1BFBD4:
	#data bank1a.loc_8c1aFD44
loc_8c1BFBD8:
	#data bank1a.loc_8c1aFA18
loc_8c1BFBDC:
	#data 0x8C34B288
loc_8c1BFBE0:
	#data 0x8C34B130
loc_8c1BFBE4:
	#data loc_8c1B01F0
loc_8c1BFBE8:
	#data bank1c.loc_8c1c2168

;==============================================
loc_8c1BFBEC:
	cmp/eq 0x02,r0
	bf loc_8c1BFBF8
	bsr loc_8c1BFAAC
	mov 0x00,r4 ; r4 set to 0x00
	bra loc_8c1BFC14
	nop

loc_8c1bfbf8:
	tst r8,r8
	bt loc_8c1bfc14
	jsr @r10
	nop
	mov.l @(loc_8c1bfd8c,pc),r2
	mov.w r14,@r2
	mov.b @(0x07,r13),r0
	and 0xFE,r0
	mov.b r0,@(0x07,r13)
	mov.l @(loc_8c1bfd90,pc),r3
	jsr @r3
	mov.b @r15,r4
	jsr @r9
	nop

loc_8c1BFC14:
	bra loc_8c1BFDEE
	tst r8,r8

loc_8c1BFC18:
	mov.l @(loc_8c1BFD94,pc),r2 ; r2 set to 0x8C1B01F0
	jsr @r2
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1BFC44
	mov.b @(0x06,r13),r0
	and 0xF0,r0
	mov.b r0,@(0x06,r13)
	mov.b r14,@r12
	mov.l @(loc_8c1BFD98,pc),r0 ; r0 set to 0x8C34AF5E
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1BFC3A
	bra loc_8c1BFDEE
	nop

loc_8c1BFC3A:
	mov.l @(loc_8c1BFD9C,pc),r2 ; r2 set to 0x8C1995D6
	jsr @r2
	mov 0x02,r4 ; r4 set to 0x02
	bra loc_8c1BFDEE
	nop

loc_8c1BFC44:
	mov.l @(loc_8c1BFDA0,pc),r2 ; r2 set to 0x8C1BE4E4
	jsr @r2
	nop
	bra loc_8c1BFDEE
	nop

loc_8c1bfc4e:
	bsr loc_8c1bfe4e
	nop
	mov.l @(loc_8C1BFDA4,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c1bfc72
	mov r13,r3
	add 0x10,r3
	mov.b @r3,r0
	or 0x40,r0
	mov.b r0,@r3
	mov.l @(loc_8c1bfdac,pc),r2
	mov.l @(loc_8C1BFDA8,pc),r4
	jsr @r2
	mov 0x00,r5
	mov 0x04,r3
	mov.b r3,@r12
	
loc_8c1bfc72:
	mov.l @(loc_8c1bfdb0,pc),r2
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1bfcb4
	mov.l @(loc_8C1BFDB4,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1bfca6
	mov.l @(loc_8C1BFDB8,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bf loc_8c1bfca6
	mov.l @(loc_8c1bfd98,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1bfcb4
	mov.l @(loc_8C1BFDBC,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1bfcb4
	
loc_8c1bfca6:
	mov.l @(loc_8C1BFDA4,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c1bfcb4
	bra loc_8c1bfdee
	nop
	
loc_8c1bfcb4:
	jsr @r10
	nop
	mov.l @(loc_8c1bfdc4,pc),r1
	mov 0x02,r3
	mov.l @(loc_8c1bfdc0,pc),r2
	jsr @r1
	mov.b r3,@r2
	mov 0x00,r5
	jsr @r8
	mov 0x03,r4
	jsr @r9
	nop
	bra loc_8c1bfdee
	nop
	
loc_8c1BFCD0:
	mov.b @(0x06,r13),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1BFCEE
	jsr @r10
	nop
	mov.l @(loc_8c1BFDC4,pc),r1 ; r1 set to 0x8C1B374E
	mov 0x02,r3 ; r3 set to 0x02
	mov.l @(loc_8c1BFDC0,pc),r2 ; r2 set to 0x8C34B2E3
	jsr @r1
	mov.b r3,@r2 ; r2 ??
	jsr @r9
	nop
	bra loc_8c1BFE14
	nop
	
loc_8c1bfcee:
	mov.b @(0x0A,r13),r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1bfcfc
	mov.l @(loc_8c1bfdc8,pc),r2
	jsr @r2
	nop
	
loc_8c1bfcfc:
	bsr loc_8c1bfe4e
	nop
	bra loc_8c1bfdee
	nop
	
loc_8c1bfd04:
	mov.l @(0xC4,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1bfd12
	mov.l @(0xC0,PC),r3
	jsr @r3
	nop

loc_8c1bfd12:
	mov.l @(0x90,PC),r4
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c1bfdee
	mov.l @(0xAC,PC),r3
	mov.b @r3,r0
	cmp/eq 0x01,r0
	bt loc_8c1bfd2c
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1bfd46

loc_8c1bfd2c:
	mov.l @(0x68,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1bfd3c
	mov.b @(0xA,r13),r0
	or 0x40,r0
	mov.b r0,@(0xA,r13)

loc_8c1bfd3c:
	jsr @r10
	nop
	mov 0x00,r5
	bra loc_8c1bfd72
	mov 0x03,r4

loc_8c1bfd46:
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop
	mov 0x08,r2
	bra loc_8c1bfdee
	mov.b r2,@r12

loc_8c1BFD52:
	mov.l @(loc_8c1BFDD8,pc),r1 ; r1 set to 0x8C19F2FC
	jsr @r1
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1BFDEE
	mov.l @(loc_8c1BFDDC,pc),r1 ; r1 set to 0x8C1AB9C2
	jsr @r1
	nop
	mov.l @(loc_8c1BFDE0,pc),r3 ; r3 set to 0x8C34AFA8
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1BFDE4
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r4 ; r4 set to 0x00
	
loc_8c1BFD72:
	jsr @r8
	nop
	jsr @r9
	nop
	mov.b @(0x07,r13),r0
	and 0xFE,r0
	mov.b r0,@(0x07,r13)
	mov.b @(0x06,r13),r0
	and 0xBF,r0
	mov.b r0,@(0x06,r13)
	mov.l @(loc_8c1BFD8C,pc),r3 ; r3 set to 0x8C34B034
	bra loc_8c1BFDEE
	mov.w r14,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1BFD8C:
	#data 0x8C34B034
loc_8c1BFD90:
	#data bank1c.loc_8c1c2B9C
loc_8c1BFD94:
	#data loc_8c1B01F0
loc_8c1BFD98:
	#data 0x8C34AF5E
loc_8c1BFD9C:
	#data bank19.loc_8c1995D6
loc_8c1BFDA0:
	#data loc_8c1BE4E4
loc_8c1bfda4:
	#data 0x8C34B301
loc_8c1bfda8:
	#data 0x8C34B128
loc_8c1BFDAC:
	#data loc_8c1B3EEC
loc_8c1BFDB0:
	#data bank19.loc_8c19FED2
loc_8c1bfdb4:
	#data 0x8C34B28F
loc_8c1bfdb8:
	#data 0x8C34B293
loc_8c1bfdbc:
	#data 0x8C34AF6F
loc_8c1BFDC0:
	#data 0x8C34B2E3
loc_8c1BFDC4:
	#data loc_8c1B374E
loc_8c1BFDC8:
	#data bank1a.loc_8c1a0648
loc_8c1BFDCc:
	#data 0x8C34B130
loc_8c1BFDD0:
	#data bank1c.loc_8c1c2FB8
loc_8c1BFDD4:
	#data bank19.loc_8c19F21E
loc_8c1BFDD8:
	#data bank19.loc_8c19F2FC
loc_8c1BFDDC:
	#data bank1a.loc_8c1aB9C2
loc_8c1BFDE0:
	#data 0x8C34AFA8

;==============================================
loc_8c1bfde4:
	mov r13,r2
	add 0x10,r2
	mov.b @r2,r0
	or 0x01,r0
	mov.b r0,@r2

loc_8c1bfdee:
	mov.b @r12,r3
	tst r3,r3
	bf loc_8c1bfe12
	mov.l @(loc_8C1BFEAC,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x01,r0
	bf loc_8c1bfe12
	mov.b @r11,r0
	add 0x01,r0
	mov.b r0,@r11
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1bfe14
	mov.l @(loc_8c1bfeb0,pc),r2
	mov.w @(loc_8C1BFEAA,pc),r4
	jsr @r2
	nop

loc_8c1bfe12:
	mov.b r14,@r11

loc_8c1BFE14:
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
loc_8c1BFE28:
	sts.l pr,@-r15
	mov.l @(loc_8c1BFEB4,pc),r3 ; r3 set to 0x8C1AAEDC
	jsr @r3
	nop
	mov.l @(loc_8c1BFEB8,pc),r2 ; r2 set to 0x8C1B01F0
	jsr @r2
	nop
	bsr bank1c.loc_8c1c0378
	nop
	bsr loc_8c1BFF56
	nop
	mov.l @(loc_8c1BFEBC,pc),r3 ; r3 set to 0x8C1AFFAA
	jsr @r3
	nop
	bsr bank1c.loc_8c1c02BC
	nop
	mov.l @(loc_8c1BFEC0,pc),r3 ; r3 set to 0x8C1C1A94
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c1BFE4E:
	mov.l r14,@-r15
	mov 0x08,r4
	sts.l pr,@-r15
	mov.l @(0x6C,PC),r14
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	tst r4,r0
	bt loc_8c1bff50
	mov.l @(0x68,PC),r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r4,r2
	bt loc_8c1bfe72
	mov.l @(0x64,PC),r1
	mov 0x04,r2
	mov.l @(0x5C,PC),r0
	jsr @r1
	mov.b r2,@r0

loc_8c1BFE72:
	mov.b @(0x7,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1bfeec
	mov.l @(0x58,PC),r2
	jsr @r2
	nop
	mov.l @(0x58,PC),r1
	mov 0x02,r2
	mov.l @(0x50,PC),r3
	jsr @r1
	mov.b r2,@r3
	mov.l @(0x54,PC),r3
	mov 0x00,r5
	jsr @r3
	mov 0x03,r4
	mov.l @(0x50,PC),r2
	jsr @r2
	nop
	mov.b @(0x7,r14),r0
	and 0x7F,r0
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov 0x00,r3
	mov.w r3,@r2
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1bfeaa:
	#data 0x2000
	#align4

loc_8c1bfeac:
	#data 0x8C34B28F
loc_8c1BFEB0:
	#data bank1a.loc_8c1a1296
loc_8c1BFEB4:
	#data bank1a.loc_8c1aAEDC
loc_8c1BFEB8:
	#data loc_8c1B01F0
loc_8c1BFEBC:
	#data bank1a.loc_8c1aFFAA
loc_8c1BFEC0:
	#data bank1c.loc_8c1c1A94
loc_8c1BFEC4:
	#data 0x8C34B288
loc_8c1BFEC8:
	#data 0x8C34B2CA
loc_8c1BFECc:
	#data 0x8C34AF7D
loc_8c1BFED0:
	#data bank1a.loc_8c1aFB9C
loc_8c1BFED4:
	#data bank1a.loc_8c1aFA18
loc_8c1BFED8:
	#data 0x8C34B2E3
loc_8c1BFEDC:
	#data loc_8c1B374E
loc_8c1BFEE0:
	#data bank1a.loc_8c1aED24
loc_8c1BFEE4:
	#data bank1a.loc_8c1aFD44
loc_8c1BFEE8:
	#data 0x8C34B034

;==============================================
loc_8c1BFEEC:
	mov.l @(0x12C,PC),r1
	jsr @r1
	nop
	mov.l @(0x12C,PC),r3
	jsr @r3
	nop
	bsr bank1c.loc_8c1c0378
	nop
	mov.l @(0x124,PC),r3
	jsr @r3
	nop
	mov.l @(0x128,PC),r3
	mov.l @(0x120,PC),r1
	jsr @r3
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1bff3c
	mov r14,r1
	add 0x10,r1
	mov.b @r1,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1bff2c
	mov.b @r1,r0
	or 0x10,r0
	mov.b r0,@r1
	mov.b @r1,r0
	mov.l @(0x108,PC),r2
	and 0xBF,r0
	jsr @r2
	mov.b r0,@r1

loc_8c1BFF2C:
	mov.l @(0x104,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c1bff3c
	mov.l @(0x100,PC),r1
	jsr @r1
	mov 0x00,r4

loc_8c1BFF3C:
	mov.l @(0xFC,PC),r3
	jsr @r3
	nop
	mov.l @(0xFC,PC),r2
	jsr @r2
	nop
	lds.l @r15+,pr
	mov.l @(0xF8,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c1BFF50:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1BFF56:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1C0048,pc),r3 ; r3 set to 0x8C34B124
	mov.l @(loc_8c1C002C,pc),r12 ; r12 set to 0x8C1B3F0C
	jsr @r12
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1BFF78
	bra bank1c.loc_8c1c02A4
	nop

loc_8c1BFF78:
	mov.l @(loc_8c1C004C,pc),r0 ; r0 set to 0x8C34AF6B
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1BFF86
	bra bank1c.loc_8c1c02A4
	nop

loc_8c1BFF86:
	mov.l @(loc_8c1C0050,pc),r0 ; r0 set to 0x8C34B291
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1BFF94
	bra bank1c.loc_8c1c02A4
	nop

loc_8c1BFF94:
	mov.l @(0xBC,PC),r10
	mov.l @(0xC0,PC),r14
	mov.b @(0x1,r10),r0
	tst r0,r0
	bt loc_8c1bffb4
	mov.l @(0xBC,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1bffb4
	mov.l @(0xB0,PC),r3
	mov.b @r3,r0
	and 0xDF,r0
	mov.b r0,@r3
	mov 0x05,r2
	mov.b r2,@r14

loc_8c1BFFB4:
	mov.l @(0xA8,PC),r4
	mov.b @r10,r8
	mov.b @r4,r2
	extu.b r8,r3
	extu.b r2,r2
	cmp/eq r2,r3
	bt loc_8c1bffd6
	extu.b r8,r2
	tst r2,r2
	bt loc_8c1bffd6
	mov.b @(0x1,r10),r0
	extu.b r8,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c1bffd6
	mov 0x04,r3
	mov.b r3,@r14

loc_8c1BFFD6:
	mov.b @r10,r2
	mov.b r2,@r4
	mov.b @r14,r0
	mov.l @(0x88,PC),r13
	extu.b r0,r0
	mov.l @(0x80,PC),r11
	cmp/eq 0x00,r0
	bt.s bank1c.loc_8c1c006c
	mov 0x00,r9
	cmp/eq 0x01,r0
	bt bank1c.loc_8c1c00c6
	cmp/eq 0x02,r0
	bf loc_8c1bfff4
	bra bank1c.loc_8c1c01c2
	nop

loc_8c1BFFF4:
	cmp/eq 0x03,r0
	bf loc_8c1bfffc
	bra bank1c.loc_8c1c01de
	nop

loc_8c1BFFFC:
	cmp/eq 0x04,r0
	bf loc_8c1c0004
	bra bank1c.loc_8c1c021a
	nop

loc_8c1c0004:
	cmp/eq 0x05,r0
	bf loc_8c1c000c
	bra bank1c.loc_8c1c0294
	nop

loc_8c1c000c:
	cmp/eq 0x07,r0
	bf loc_8c1c0014
	bra bank1c.loc_8c1c0170
	nop

loc_8c1c0014:
	cmp/eq 0x08,r0
	bt bank1c.loc_8c1c00c6
	bra bank1c.loc_8c1c02a4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C001C:
	#data loc_8c1B01F0
loc_8c1C0020:
	#data loc_8c1B04CC
loc_8c1C0024:
	#data loc_8c1B046E
loc_8c1C0028:
	#data 0x8C34B128
loc_8c1C002C:
	#data loc_8c1B3F0C
loc_8c1C0030:
	#data bank1a.loc_8c1aF91A
loc_8c1C0034:
	#data 0x8C34B0B0
loc_8c1C0038:
	#data loc_8c1B689C
loc_8c1C003C:
	#data bank1a.loc_8c1aAEDC
loc_8c1C0040:
	#data bank1c.loc_8c1c1A94
loc_8c1C0044:
	#data bank1c.loc_8c1c2FB8
loc_8c1C0048:
	#data 0x8C34B124
loc_8c1C004C:
	#data 0x8C34AF6B
loc_8c1C0050:
	#data 0x8C34B291
loc_8c1C0054:
	#data 0x8C34AF50
loc_8c1C0058:
	#data 0x8C34B11D
loc_8c1C005c:
	#data 0x8C34B2A8
loc_8c1C0060:
	#data 0x8C352F6C
loc_8c1C0064:
	#data 0x8C34B1F8
loc_8c1C0068:
	#data loc_8c1B3EEC
