;==============================================
loc_8c1C006C:
	mov.l @(0xE0,PC),r3
	jsr @r12
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c0086
	mov.l @(0xD8,PC),r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov r9,r0
	nop 
	mov.b r0,@(0x1,r10)

loc_8c1C0086:
	bsr loc_8c1c02b6
	nop 
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c0094
	bra loc_8c1c02a4
	nop 

loc_8c1C0094:
	mov.l @r11,r5
	mov 0x42,r0
	mov.l @(0xB4,PC),r4
	mov.w @(r0,r5),r5
	jsr @r13
	extu.w r5,r5
	mov.l @r11,r5
	mov 0x40,r0
	mov.l @(0xB0,PC),r4
	mov.w @(r0,r5),r5
	jsr @r13
	extu.w r5,r5
	mov.l @(0xAC,PC),r4
	jsr @r13
	mov 0x1E,r5
	mov.l @(0xAC,PC),r4
	mov.w @(0x92,PC),r5
	jsr @r13
	nop 
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov 0x00,r4
	mov 0x01,r2
	bra loc_8c1c02a4
	mov.b r2,@r14

loc_8c1C00C6:
	bsr loc_8c1c02b6
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c00d4
	bra loc_8c1c02a4
	nop 

loc_8c1C00D4:
	mov.l @(0x8C,PC),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(0x74,PC),r3
	jsr @r12
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c0108
	mov.l @(0x74,PC),r1
	jsr @r12
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c01b6
	mov.l @(0x74,PC),r3
	mov.w @(0x54,PC),r0
	mov.l @r3,r2
	mov.w @(r0,r2),r1
	mov.w @(0x50,PC),r2
	extu.w r1,r1
	tst r2,r1
	bt loc_8c1c01b6
	mov 0x02,r0
	bra loc_8c1c02a4
	mov.b r0,@r14

loc_8c1C0108:
	mov.l @(0x4C,PC),r2
	jsr @r12
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c01b6
	mov.l @r11,r3
	mov 0x46,r0
	mov.w @(r0,r3),r2
	mov 0x4E,r0
	mov.w @(r0,r3),r1
	cmp/eq r1,r2
	bt loc_8c1c01d8
	mov.l @(0x48,PC),r3
	mov.b @r3,r0

loc_8c1c0126:
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1c01d8
	mov.l @r11,r5
	mov 0x46,r0
	mov.l @(0x1C,PC),r4
	mov.w @(r0,r5),r5
	jsr @r13
	extu.w r5,r5
	mov.l @r11,r5
	mov 0x44,r0
	mov.l @(0x20,PC),r4
	mov.w @(r0,r5),r5
	jsr @r13
	extu.w r5,r5
	mov 0x07,r3
	bra loc_8c1c02a4
	mov.b r3,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C014a:
	#data 0x00C8
loc_8c1C014c:
	#data 0x00B2
loc_8c1C014e:
	#data 0x0200
	#align4

loc_8c1C0150:
	#data 0x8C34B114
loc_8c1C0154:
	#data 0x8C34B2A7
loc_8c1C0158:
	#data 0x8C352F64
loc_8c1C015c:
	#data 0x8C352F68
loc_8c1C0160:
	#data 0x8C352F60
loc_8c1C0164:
	#data bank1a.loc_8c1a126E
loc_8c1C0168:
	#data 0x8C34B1F8
loc_8c1C016c:
	#data 0x8C34B11D

;==============================================
loc_8c1C0170:
	bsr loc_8c1c02b6
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c01aa
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0xE0,PC),r2
	jsr @r12
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c01b6
	mov.l @r11,r5
	mov 0x4A,r0
	mov.l @(0xD0,PC),r4
	mov.w @(r0,r5),r5
	jsr @r13
	extu.w r5,r5
	mov.l @r11,r5
	mov 0x40,r0
	mov.l @(0xC8,PC),r4
	mov.w @(r0,r5),r5
	jsr @r13
	extu.w r5,r5
	mov 0x08,r3
	bra loc_8c1c02a4
	mov.b r3,@r14

loc_8c1C01AA:
	mov.l @(0xC0,PC),r1
	jsr @r12
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c02a4

loc_8c1C01B6:
	mov.l @(0xAC,PC),r4
	mov.w @(0xA0,PC),r5
	jsr @r13
	mov.b r9,@r14
	bra loc_8c1c02a4
	nop 

loc_8c1C01C2:
	mov.l @(0xA8,PC),r3
	jsr @r12
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c02a4
	bsr loc_8c1c02b6
	nop 
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c02a4

loc_8c1C01D8:
	mov 0x03,r1
	bra loc_8c1c02a4
	mov.b r1,@r14

loc_8c1C01DE:
	mov.b @(0x1,r10),r0
	mov.w @(0x78,PC),r5
	mov.l @(0x80,PC),r4
	add 0x01,r0
	jsr @r13
	mov.b r0,@(0x1,r10)
	mov.l @(0x84,PC),r2
	mov.w @r2,r3
	tst r3,r3
	bf loc_8c1c0208
	mov.l @(0x80,PC),r3
	mov.b @r3,r0
	or 0x40,r0
	mov.b r0,@r3
	mov.l @(0x7C,PC),r1
	mov 0x00,r5
	jsr @r1
	mov 0x02,r4
	mov.l @(0x78,PC),r3
	jsr @r3
	nop 

loc_8c1C0208:
	extu.b r8,r2
	tst r2,r2
	bt loc_8c1c02a2
	mov.l @(0x70,PC),r3
	extu.b r8,r1
	mov.b @r3,r2
	extu.b r2,r2
	cmp/ge r1,r2
	bf loc_8c1c02a2

loc_8c1C021A:
	mov.l @(0x68,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x01,r0
	bf loc_8c1c0246
	mov.l @(0x60,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c1c023a
	mov.l @(0x5C,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x18,r0
	cmp/eq 0x10,r0
	bf loc_8c1c0294

loc_8c1C023A:
	mov.l @(0x54,PC),r2
	jsr @r2
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c0294

loc_8c1C0246:
	lds.l @r15+,pr
	mov.b r9,@r14
	mov.l @(0x30,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C025c:
	#data 0x0320
	#align4

loc_8c1C0260:
	#data bank1a.loc_8c1a126E
loc_8c1C0264:
	#data 0x8C34B114
loc_8c1C0268:
	#data 0x8C352F64
loc_8c1C026c:
	#data 0x8C352F60
loc_8c1C0270:
	#data 0x8C34B034
loc_8c1C0274:
	#data 0x8C34B292
loc_8c1C0278:
	#data bank1a.loc_8c1aED24
loc_8c1C027C:
	#data bank1a.loc_8c1aFD44
loc_8c1C0280:
	#data 0x8C34AF51
loc_8c1C0284:
	#data 0x8C34B2A7
loc_8c1C0288:
	#data 0x8C34AF6B
loc_8c1C028c:
	#data 0x8C34AF65
loc_8c1C0290:
	#data bank1a.loc_8c1a11E0

;==============================================
loc_8c1C0294:
	mov r9,r0
	nop 
	mov.b r0,@(0x1,r10)
	mov.l @(0xB4,PC),r2
	mov.l @(0xAC,PC),r3
	jsr @r2
	mov.b r0,@r3

loc_8c1C02A2:
	mov.b r9,@r14

loc_8c1C02A4:
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
loc_8c1C02B6:
	mov.l @(loc_8c1C0354,pc),r3 ; r3 set to 0x8C19D204
	jmp @r3
	nop

;==============================================
loc_8c1C02BC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c1C0358,pc),r13 ; r13 set to 0x8C34B288
	sts.l pr,@-r15
	mov r13,r14 ; r14 set to 0x8C34B288
	add 0x0B,r14 ; r14 set to 0x8C34B293
	mov.b @r14,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1C033A
	mov.l @(loc_8c1C035C,pc),r3 ; r3 set to 0x8C34B034
	mov 0x02,r1 ; r1 set to 0x02
	mov.w @r3,r2
	extu.w r2,r2
	cmp/ge r1,r2
	bf loc_8c1C02EA
	mov.b @r14,r0
	and 0xEF,r0
	mov.b r0,@r14 ; r14 ??? bc r0 is ???
	mov.b @r14,r0
	and 0xDF,r0
	bra loc_8c1C0340
	mov.b r0,@r14

loc_8c1C02EA:
	mov.b @r14,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1C0304
	mov.l @(loc_8c1C0364,pc),r2 ; r2 set to 0x8C1B3EEC
	mov.l @(loc_8c1C0360,pc),r4 ; r4 set to 0x8C34B118
	mov.w @(loc_8c1C0348,pc),r5 ; r5 set to 0x12C
	jsr @r2
	nop
	mov.b @(0x0B,r13),r0
	or 0x20,r0
	bra loc_8c1C0340
	mov.b r0,@(0x0B,r13)

loc_8c1C0304:
	mov.l @(loc_8c1C0368,pc),r3 ; r3 set to 0x8C1B3F0C
	mov.l @(loc_8c1C0360,pc),r2 ; r2 set to 0x8C34B118
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C0340
	mov.l @(loc_8c1C0368,pc),r2 ; r2 set to 0x8C1B3F0C
	mov.l @(loc_8c1C036C,pc),r3 ; r3 set to 0x8C34B124
	jsr @r2
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C0340
	mov.l @(loc_8c1C0370,pc),r0 ; r0 set to 0x8C34AF5E
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1C0334
	mov.l @(loc_8c1C0374,pc),r2 ; r2 set to 0x8C1AFBFE
	jsr @r2
	nop
	bra loc_8c1C033A
	nop

loc_8c1c0334:
	mov.l @(bank1c.loc_8c1c0350,pc),r2
	jsr @r2
	nop 

loc_8c1C033A:
	mov.b @(0x0B,r13),r0
	and 0xDF,r0
	mov.b r0,@(0x0B,r13)

loc_8c1C0340:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1C0348:
	#data 0x012C
	#align4

loc_8c1C034C:
	#data 0x8C34B03A
loc_8c1C0350:
	#data bank1a.loc_8c1aFBD6
loc_8c1C0354:
	#data bank19.loc_8c19D204
loc_8c1C0358:
	#data 0x8C34B288
loc_8c1C035C:
	#data 0x8C34B034
loc_8c1C0360:
	#data 0x8C34B118
loc_8c1C0364:
	#data bank1b.loc_8c1b3EEC
loc_8c1C0368:
	#data bank1b.loc_8c1b3F0C
loc_8c1C036C:
	#data 0x8C34B124
loc_8c1C0370:
	#data 0x8C34AF5E
loc_8c1C0374:
	#data bank1a.loc_8c1aFBFE

;==============================================
loc_8c1c0378:
	mov.l r14,@-r15
	mov 0x40,r4
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8C1C0454,pc),r3
	sts.l pr,@-r15
	mov.b @r3,r2
	extu.b r2,r2
	tst r4,r2
	add 0xFC,r15
	bt loc_8c1c0448
	mov.l @(loc_8C1C0458,pc),r0
	mov.b @r0,r2
	extu.b r2,r2
	tst r4,r2
	bf loc_8c1c0448
	mov.l @(loc_8C1C0464,pc),r14
	mov.l @(bank1c.loc_8c1c0468,pc),r3
	mov.l @(loc_8C1C045C,pc),r13
	mov.l @(bank1c.loc_8c1c0460,pc),r12
	jsr @r3
	nop 
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c03d2
	mov.b @r13,r3
	tst r3,r3
	bf loc_8c1c03ce
	mov.l @(loc_8C1C046C,pc),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1c03ce
	mov.l @(loc_8C1C0458,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0 
	bf loc_8c1c03ce
	mov.b @r14,r3
	mov.b r3,@r15
	jsr @r12
	mov 0x01,r4
	mov.b @r15,r3
	mov.b r3,@r14

loc_8c1c03ce:
	bra loc_8c1c03f0
	mov 0x01,r2

loc_8c1c03d2:
	mov.b @r13,r1
	tst r1,r1
	bt loc_8c1c03ee
	mov.l @(loc_8C1C046C,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf loc_8c1c03ee
	mov.b @r14,r2
	mov.b r2,@r15
	jsr @r12
	mov 0x00,r4
	mov.b @r15,r3
	mov.b r3,@r14

loc_8c1c03ee:
	mov 0x00,r2

loc_8c1c03f0:
	mov.b r2,@r13
	mov.l @(bank1c.loc_8c1c0474,pc),r3
	mov.l @(loc_8C1C0470,pc),r13
	jsr @r3
	nop 
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c0428
	mov.b @r13,r3
	tst r3,r3
	bf loc_8c1c0424
	mov.l @(loc_8C1C046C,pc),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1c0424
	mov.l @(loc_8C1C0458,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0 
	bt loc_8c1c0424
	mov.b @r14,r3
	mov.b r3,@r15
	jsr @r12
	mov 0x06,r4
	mov.b @r15,r3
	mov.b r3,@r14

loc_8c1c0424:
	bra loc_8c1c0446
	mov 0x01,r2

loc_8c1c0428:
	mov.b @r13,r1
	tst r1,r1
	bt loc_8c1c0444
	mov.l @(loc_8C1C046C,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x10,r0 
	bf loc_8c1c0444
	mov.b @r14,r2
	mov.b r2,@r15
	jsr @r12
	mov 0x00,r4
	mov.b @r15,r3
	mov.b r3,@r14

loc_8c1c0444:
	mov 0x00,r2

loc_8c1c0446:
	mov.b r2,@r13

loc_8c1c0448:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align4

loc_8C1C0454:
	#data 0x8C34AF77
loc_8C1C0458:
	#data 0x8C34B28E
loc_8C1C045C:
	#data 0x8C34B11E
loc_8c1c0460:
	#data bank1a.loc_8c1ac774
loc_8C1C0464:
	#data 0x8C34AFA8
loc_8c1c0468:
	#data bank1a.loc_8c1a11dc
loc_8C1C046C:
	#data 0x8C34AF60
loc_8C1C0470:
	#data 0x8C34B11F
loc_8c1c0474:
	#data bank1a.loc_8c1a11f2

;==============================================
loc_8c1C0478:
	mov.l @(loc_8c1C04A4,pc),r0 ; r0 set to 0x8C352F70
	extu.w r5,r5
	rts
	mov.b r4,@(r0,r5)

;==============================================
loc_8c1C0480:
	mov.l @(0x20,PC),r3
	extu.w r5,r0
	cmp/pl r0
	mov 0x00,r7
	extu.w r4,r4
	bf.s loc_8c1c049c
	add r3,r4

loc_8c1C048E:
	add 0x01,r7
	mov.b @r4+,r3
	extu.w r7,r2
	cmp/ge r0,r2
	mov.b r3,@r6
	bf.s loc_8c1c048e
	add 0x01,r6

loc_8c1C049C:
	rts 
	nop 

;==============================================
loc_8c1C04A0:
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C04A4:
	#data 0x8C352F70

;==============================================
loc_8c1C04A8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x00,r9 ; r9 set to 0x00
	mov.l r8,@-r15
	mov r9,r14 ; r14 set to 0x00
	mov.l @(loc_8c1C06A8,pc),r8 ; r8 set to 0x8C353172
	sts.l pr,@-r15
	mov.b @r8,r10
	mov.b @(0x01,r8),r0
	add 0xFC,r15
	bra loc_8c1C0602
	mov r0,r11

loc_8c1C04CA:
	extu.b r10,r0
	mov r14,r4
	shlr r4
	cmp/eq 0x00,r0
	bt loc_8c1C04EC
	cmp/eq 0x01,r0
	bt loc_8c1C04FA
	cmp/eq 0x02,r0
	bf loc_8c1C04E0
	bra loc_8c1C066C
	nop

loc_8c1C04E0:
	cmp/eq 0x03,r0
	bf loc_8c1C04E8
	bra loc_8c1C0704
	nop

loc_8c1C04E8:
	bra loc_8c1C071E
	nop

loc_8c1C04EC:
	mov r4,r14
	mov.l @(loc_8c1C06AC,pc),r4 ; r4 set to 0x8C34BB90
	add 0xFF,r13
	mov.b @r4,r11
	mov 0x02,r4 ; r4 set to 0x02
	bra loc_8c1C071E
	mov r4,r10

loc_8c1C04FA:
	mov.l @(loc_8c1C06B0,pc),r2 ; r2 set to 0x8C353183
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1C050C
	mov r4,r14
	mov.l @(loc_8c1C06B4,pc),r4 ; r4 set to 0x80000000
	or r4,r14
	bra loc_8c1C0514
	add 0xFF,r13

loc_8c1C050C:
	mov.l @(loc_8c1C06B0,pc),r1 ; r1 set to 0x8C353183
	mov.b r9,@r1 ; r1 ??? bc r9 is ???
	mov.l @(loc_8c1C06B8,pc),r3 ; r3 set to 0x8C34BB8C
	mov.w r9,@r3 ; r3 ??? bc r9 is ???

loc_8c1C0514:
	mov.l @(loc_8c1C06BC,pc),r4 ; r4 set to 0x8C353184, r4 set to 0x8C353184
	mov.b @r4,r2
	add 0xFF,r2
	mov.b r2,@r4 ; r4 ??? bc r2 is ???, r4 ??? bc r2 is ???
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c1C0526
	bra loc_8c1C071E
	nop

loc_8c1C0526:
	mov.l @(loc_8c1C06C0,pc),r5 ; r5 set to 0x8C34BB66
	mov.b @r5,r3
	mov.b r3,@r4
	mov.l @(loc_8c1C06C4,pc),r1 ; r1 set to 0x8C34BB72
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c1C0538
	bra loc_8c1C0630
	nop

loc_8c1C0538:
	mov.l @(loc_8c1C06C8,pc),r4 ; r4 set to 0x8C353181
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c1C056C
	cmp/eq 0x17,r0
	bt loc_8c1C056C
	cmp/eq 0x18,r0
	bt loc_8c1C056C
	cmp/eq 0x19,r0
	bt loc_8c1C056C
	mov.l @(loc_8c1C06CC,pc),r6 ; r6 set to 0x8C34BB86
	mov.b @r6,r3
	tst r3,r3
	bt loc_8c1C056C
	mov.l @(loc_8c1C06D0,pc),r5 ; r5 set to 0x8C34BB85
	mov.b @r5,r3
	tst r3,r3
	bf loc_8c1C0564
	mov.l @(loc_8c1C06D4,pc),r5 ; r5 set to 0x8C34BB45
	bra loc_8c1C0566
	nop

loc_8c1c0564:
	mov.l @(loc_8C1C06D8,pc),r5

loc_8c1c0566:
	mov.b @r5,r12
	mov r9,r10
	mov.b r9,@r6

loc_8c1c056c:
	mov.l @(loc_8C1C06DC,pc),r6
	mov.b @r6,r5
	extu.b r5,r0
	cmp/eq 0x01,r0 
	bt/s loc_8c1c0580
	mov r0,r5
	mov.l @(loc_8C1C06E0,pc),r2
	mov.b @r2,r3
	tst r3,r3
	bf bank1c.loc_8c1c0652

loc_8c1c0580:
	mov.l @(loc_8C1C06E4,pc),r1
	mov.w @r1,r0
	tst r0,r0
	bt loc_8c1c05de
	mov.l @(loc_8C1C06E8,pc),r0
	mov.l @r0,r12
	add 0x01,r12
	mov.l r12,@r0
	add 0xFF,r12
	mov.w @r1,r3
	mov.b @r12,r12
	add 0xFF,r3
	mov.w r3,@r1
	mov.l @(bank1c.loc_8c1c06b8,pc),r2
	mov.w @r2,r0
	add 0x01,r0
	mov.w r0,@r2
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x12,r0 
	bt/s loc_8c1c05b0
	mov r9,r10
	bra bank1c.loc_8c1c071e
	nop 

loc_8c1c05b0:
	mov.l @(bank1c.loc_8c1c06ec,pc),r2
	jsr @r2
	nop 
	mov 0x03,r3
	extu.w r0,r0
	cmp/ge r3,r0
	bt loc_8c1c05c2
	bra bank1c.loc_8c1c071e
	nop 

loc_8c1c05c2:
	mov.l @(bank1c.loc_8c1c06b8,pc),r2
	mov.l @(loc_8C1C06F0,pc),r4
	mov.w @r2,r1
	mov.b @r4,r0
	extu.w r1,r1
	extu.b r0,r0
	cmp/ge r0,r1
	bt loc_8c1c05d6
	bra bank1c.loc_8c1c071e
	nop 

loc_8c1c05d6:
	mov.l @(bank1c.loc_8c1c06b0,pc),r1
	mov 0x01,r0
	bra bank1c.loc_8c1c071e
	mov.b r0,@r1

loc_8c1c05de:
	mov.b @r4,r5
	extu.b r5,r0
	cmp/eq 0x01,r0 
	bt/s loc_8c1c05f0
	mov r0,r5
	mov r5,r0
	nop 
	cmp/eq 0x02,r0 
	bf bank1c.loc_8c1c0608

loc_8c1c05f0:
	mov.l @(bank1c.loc_8c1c06f4,pc),r2
	mov r8,r4
	mov r8,r5
	jsr @r2
	add 0x02,r4
	exts.b r0,r0
	tst r0,r0
	bt bank1c.loc_8c1c0656
	mov.b @r8,r10

loc_8c1c0602:
	mov.b @(0x02,r8),r0
	bra loc_8c1C071E
	mov r0,r12

loc_8c1C0608:
	mov.l @(0xEC,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1c061e
	mov.l @(0xE8,PC),r2
	mov.l @r2,r1
	jsr @r1
	nop 
	mov.l @(0xDC,PC),r3
	mov.b r9,@r3

loc_8c1C061E:
	mov.l @(0xE0,PC),r1
	mov.l @r1,r2
	jsr @r2
	nop 
	mov.l @(0xD0,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1c0634

loc_8c1C0630:
	bra loc_8c1C071E
	mov 0x03,r10

loc_8c1C0634:
	mov.l @(0xAC,PC),r1
	mov.w @r1,r2
	tst r2,r2
	bt loc_8c1c0656
	mov.l @(0xA8,PC),r2
	mov.l @r2,r12
	add 0x01,r12
	mov.l r12,@r2
	add 0xFF,r12
	mov.w @r1,r2
	mov.b @r12,r12
	add 0xFF,r2
	mov.w r2,@r1
	bra loc_8c1c071e
	mov r9,r10

loc_8c1C0652:
	tst r5,r5
	bf loc_8c1c071e

loc_8c1C0656:
	extu.b r13,r3
	neg r3,r3
	extu.b r13,r13
	mov 0x20,r2
	shld r3,r14
	mov 0xFF,r4
	mov r4,r3
	sub r13,r2
	shld r2,r3
	bra loc_8c1c06a4
	or r3,r14

loc_8c1C066C:
	extu.b r11,r4
	extu.b r13,r2
	cmp/ge r4,r2
	mov.l r2,@r15
	bf/s loc_8c1C068A
	extu.b r12,r5
	mov 0x20,r3 ; r3 set to 0x20
	extu.b r11,r1
	sub r4,r3 ; r3 ??? bc r4 is ???
	neg r1,r1
	shad r3, r5
	shld r1, r14
	or r5,r14
	bra loc_8c1C071C
	sub r11,r13

loc_8c1c068a:
	mov.l r2,@r15
	neg r2,r2
	mov.l @r15,r3
	extu.b r13,r1
	neg r1,r1
	add 0x20,r2
	extu.b r12,r12
	neg r3,r3
	shad r2, r5
	shld r1, r14
	shld r3, r12
	sub r13,r11
	or r5,r14

loc_8c1c06a4:
	bra bank1c.loc_8c1c071e
	mov r9,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1c06a8:
	#data 0x8C353172
loc_8c1c06ac:
	#data 0x8C34BB90
loc_8c1c06b0:
	#data 0x8C353183
loc_8c1c06b4:
	#data 0x80000000
loc_8c1c06b8:
	#data 0x8C34BB8C
loc_8c1c06bc:
	#data 0x8C353184
loc_8c1c06c0:
	#data 0x8C34BB66
loc_8c1c06c4:
	#data 0x8C34BB72
loc_8c1c06c8:
	#data 0x8C353181
loc_8c1c06cc:
	#data 0x8C34BB86
loc_8c1c06d0:
	#data 0x8C34BB85
loc_8c1c06d4:
	#data 0x8C34BB45
loc_8c1c06d8:
	#data 0x8C34BB44
loc_8c1c06dc:
	#data 0x8C34BB70
loc_8c1c06e0:
	#data 0x8C353182
loc_8c1c06e4:
	#data 0x8C34BB68
loc_8c1c06e8:
	#data 0x8C34BB6C
loc_8c1c06ec:
	#data bank1b.loc_8c1b6EA4
loc_8c1c06f0:
	#data 0x8C34BB8F
loc_8c1c06f4:
	#data bank1a.loc_8c1a1320
loc_8c1c06f8:
	#data 0x8C34BB71
loc_8c1c06fc:
	#data 0x8C353194
loc_8c1C0700:
	#data 0x8C353190

;==============================================
loc_8c1C0704:
	mov.l @(loc_8c1C07E8,pc),r2 ; r2 set to 0x8C34BB74
	shlr r14
	mov.l @(loc_8c1C07EC,pc),r3 ; r3 set to 0x8C1B3F0C
	add 0xFF,r13
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C071E
	mov.l @(loc_8c1C07F0,pc),r3 ; r3 set to 0x8C34BB72
	mov.w @(loc_8c1C07E4,pc),r4 ; r4 set to 0xFF
	mov.b r4,@r3 ; r3 ??
	
loc_8c1C071C:
	mov 0x01,r10 ; r10 set to 0x01, r10 set to 0x01
	
loc_8c1C071E:
	extu.b r13,r3
	tst r3,r3
	bt loc_8c1C0728
	bra loc_8c1C04CA
	nop
	
loc_8c1C0728:
	mov.b r10,@r8
	mov r11,r0
	nop
	mov.b r0,@(0x01,r8)
	mov r12,r0
	nop
	mov.b r0,@(0x02,r8)
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
	
;==============================================
loc_8c1C074E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1C07F4,pc),r8 ; r8 set to 0x8C353178
	sts.l pr,@-r15
	mov.b @(0x01,r8),r0
	mov.l @(0x04,r8),r12
	mov.b @r8,r10
	add 0xF8,r15
	mov r0,r11
	bra loc_8c1C09B8
	mov r4,r14
	
loc_8c1C0770:
	mov.l @(loc_8c1C0800,pc),r4 ; r4 set to 0x8C34BB88
	extu.b r10,r0
	mov.l @(loc_8c1C07F8,pc),r6 ; r6 set to 0x8C34BB90
	cmp/eq 0x02,r0
	mov.l @(loc_8c1C07FC,pc),r5 ; r5 set to 0x8C34B2CC
	mov 0x08,r9 ; r9 set to 0x08
	mov 0x01,r7 ; r7 set to 0x01
	bf/s loc_8c1C0786
	and r14,r7 ; r7 ??? bc r14 is ???
	bra loc_8c1C0886
	nop
	
loc_8c1C0786:
	cmp/eq 0x03,r0
	bf loc_8c1C078E
	bra loc_8c1C098E
	nop
	
loc_8c1C078E:
	cmp/eq 0x08,r0
	bt loc_8c1C0796
	bra loc_8c1C09B8
	nop
	
loc_8c1C0796:
	mov.l @(loc_8c1C0804,pc),r5 ; r5 set to 0x8C34BB84
	tst r7,r7
	bf loc_8c1C07D6
	mov.l @(loc_8c1C0808,pc),r3 ; r3 set to 0x8C34BB87
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1C07AC
	mov 0x03,r4 ; r4 set to 0x03
	bra loc_8c1C09B4
	mov r4,r10
	
loc_8c1C07AC:
	mov.l @(loc_8c1C080C,pc),r4 ; r4 set to 0x8C34B2D2
	mov 0x00,r2 ; r2 set to 0x00
	mov r2,r1 ; r1 set to 0x00
	mov r2,r12 ; r12 set to 0x00
	mov.w r2,@r4 ; r4 ??
	mov 0x02,r4 ; r4 set to 0x02
	mov.b @r6,r11
	mov.b r1,@r5
	mov.l @(loc_8c1C0810,pc),r0 ; r0 set to 0x8C34BB7C
	mov.w @r0,r2 ; r2 ??
	tst r2,r2
	bt/s loc_8c1C07CA
	mov r4,r10 ; r10 set to 0x02
	bra loc_8c1C09B4
	nop
	
loc_8c1C07CA:
	mov.l @(loc_8c1C0814,pc),r9 ; r9 set to 0x8C353188
	mov.l @r9,r2
	jsr @r2
	nop
	bra loc_8c1C09B4
	nop
	
loc_8c1C07D6:
	mov.w @(loc_8c1C07E4,pc),r4 ; r4 set to 0xFF
	extu.b r14,r9
	cmp/eq r4,r9
	bf/s loc_8c1C0818
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8c1C081A
	mov 0x08,r9

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C07E4:
	#data 0x00FF
	#align4

loc_8c1C07E8:
	#data 0x8C34BB74
loc_8c1C07EC:
	#data bank1b.loc_8c1b3F0C
loc_8c1C07F0:
	#data 0x8C34BB72
loc_8c1C07F4:
	#data 0x8C353178
loc_8c1C07F8:
	#data 0x8C34BB90
loc_8c1C07FC:
	#data 0x8C34B2CC
loc_8c1C0800:
	#data 0x8C34BB88
loc_8c1C0804:
	#data 0x8C34BB84
loc_8c1C0808:
	#data 0x8C34BB87
loc_8c1C080C:
	#data 0x8C34B2D2
loc_8c1C0810:
	#data 0x8C34BB7C
loc_8c1C0814:
	#data 0x8C353188

;==============================================
loc_8c1c0818:
	mov 0x01,r9

loc_8c1c081a:
	mov.l @(loc_8C1C09E0,pc),r3
	mov.b r2,@r3
	mov.b @r5,r1
	add r9,r1
	mov.b r1,@r5
	mov.l @(loc_8C1C09E4,pc),r4
	mov.b @r5,r2
	mov.b @r4,r1
	cmp/hs r1,r2
	bf loc_8c1c087c
	mov.l @(loc_8C1C09E8,pc),r2
	mov.b @r2,r1
	tst r1,r1
	bf loc_8c1c084e
	mov.l @(loc_8C1C09EC,pc),r0
	mov.l @r0,r1
	jsr @r1
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c084e
	mov.l @(loc_8C1C09E8,pc),r3
	mov 0x01,r2
	mov.b r2,@r3
	mov.l @(loc_8C1C09F0,pc),r4
	mov.b r2,@r4
	
loc_8c1c084e:
	mov.l @(loc_8C1C09F4,pc),r3
	mov.b @r3,r4
	extu.b r4,r0
	cmp/eq 0x01,r0 
	bt/s loc_8c1c0862
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x02,r0 
	bf loc_8c1c086c
	
loc_8c1c0862:
	mov.l @(bank1c.loc_8c1c09f8,pc),r3
	jsr @r3
	nop 
	bra loc_8c1c087c
	nop 
	
loc_8c1c086c:
	mov.l @(loc_8C1C09FC,pc),r2
	mov.w @r2,r3
	tst r3,r3
	bt loc_8c1c087c
	mov.l @(loc_8C1C0A00,pc),r1
	mov.l @r1,r3
	jsr @r3
	nop 
	
loc_8c1c087c:
	extu.b r9,r0
	neg r0,r0
	shld r0, r14
	bra bank1c.loc_8c1c09b8
	sub r9,r13
	
loc_8c1C0886:
	extu.b r13,r3
	extu.b r11,r2
	cmp/gt r3,r2
	mov.l r2,@(0x04,r15)
	mov.l r3,@r15
	mov.b @r6,r7
	bf/s loc_8c1C08AA
	extu.b r7,r7
	extu.b r13,r0
	mov r14,r1
	sub r3,r7
	neg r0,r0
	shld r7, r1
	shld r0, r12
	sub r13,r11
	or r1,r12
	bra loc_8c1C09B8
	mov 0x00,r13
	
loc_8c1c08aa:
	extu.b r11,r6
	neg r6,r1
	sub r2,r7
	shld r1, r12
	mov r14,r0
	nop 
	neg r6,r6
	mov.l @(loc_8C1C09F4,pc),r1
	shld r6, r14
	shld r7, r0
	mov.b @r1,r6
	or r0,r12
	extu.b r6,r0
	cmp/eq 0x01,r0 
	extu.b r12,r12
	sub r11,r13
	bt/s loc_8c1c08d6
	mov r0,r6
	mov r6,r0
	nop 
	cmp/eq 0x02,r0 
	bf loc_8c1c08e0
	
loc_8c1c08d6:
	mov.l @(bank1c.loc_8c1c0a04,pc),r10
	jsr @r10
	mov r12,r4
	bra loc_8c1c098a
	nop 
	
loc_8c1c08e0:
	tst r12,r12
	bf loc_8c1c08f2
	mov.l @(loc_8C1C09E0,pc),r2
	mov.b @r2,r3
	add 0x01,r3
	mov.b r3,@r2
	mov.l @r5,r2
	bra loc_8c1c08f8
	mov.l r2,@r4
	
loc_8c1c08f2:
	mov.l @(loc_8C1C09E0,pc),r3
	mov 0x00,r1
	mov.b r1,@r3
	
loc_8c1c08f8:
	mov.l @(loc_8C1C0A08,pc),r5
	mov.l @(loc_8C1C0A0C,pc),r4
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c1c0912
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.b r12,@-r3
	mov.l @(loc_8C1C09FC,pc),r2
	mov.w @r2,r3
	add 0x01,r3
	mov.w r3,@r2
	
loc_8c1c0912:
	mov.l @(loc_8C1C09F4,pc),r2
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x16,r0 
	bt loc_8c1c0976
	cmp/eq 0x17,r0 
	bt loc_8c1c0976
	cmp/eq 0x18,r0 
	bt loc_8c1c0976
	cmp/eq 0x19,r0 
	bt loc_8c1c0976
	mov.l @(loc_8C1C0A10,pc),r7
	mov.b @r7,r2
	tst r2,r2
	bt loc_8c1c0976
	mov.l @(loc_8C1C0A14,pc),r3
	mov.b @r3,r1
	extu.b r1,r1
	cmp/eq r1,r12
	bt loc_8c1c0944
	mov.l @(loc_8C1C0A18,pc),r2
	mov.b @r2,r1
	extu.b r1,r1
	cmp/eq r1,r12
	bf loc_8c1c0976
	
loc_8c1c0944:
	mov.l @(loc_8C1C0A14,pc),r10
	mov.l @(loc_8C1C0A1C,pc),r6
	mov.b @r10,r3
	extu.b r3,r3
	cmp/eq r3,r12
	bf loc_8c1c0956
	mov 0x00,r3
	bra loc_8c1c095a
	mov.b r3,@r6
	
loc_8c1c0956:
	mov 0x01,r1
	mov.b r1,@r6
	
loc_8c1c095a:
	mov.b @r7,r0
	extu.b r0,r0
	cmp/eq 0x04,r0 
	bt loc_8c1c0976
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c1c0976
	mov.l @r4,r3
	add 0xFF,r3
	mov.l r3,@r4
	mov.l @(loc_8C1C09FC,pc),r2
	mov.w @r2,r1
	add 0xFF,r1
	mov.w r1,@r2
	
loc_8c1c0976:
	mov.l @(loc_8C1C09FC,pc),r3
	mov.l @(loc_8C1C0A20,pc),r4
	mov.w @r3,r2
	mov.w @r4,r1
	cmp/hs r1,r2
	bf loc_8c1c098a
	mov.l @(loc_8C1C0A00,pc),r2
	mov.l @r2,r1
	jsr @r1
	nop 
	
loc_8c1c098a:
	bra bank1c.loc_8c1c09b8
	mov r9,r10

loc_8c1c098e:
	tst r7,r7
	bt loc_8c1c09b4
	mov.l @r4,r2
	mov.l @r5,r3
	mov.l @(0x64,PC),r1
	sub r2,r3
	mov.w @r1,r2
	extu.w r3,r3
	tst r3,r3
	tst r2,r2
	bt loc_8c1c09ac
	mov.l @(0x58,PC),r0
	mov.l @r0,r2
	jsr @r2
	nop 

loc_8c1c09ac:
	mov.l @(0x30,PC),r1
	mov 0x00,r3
	mov r9,r10
	mov.b r3,@r1

loc_8c1C09B4:
	add 0xFF,r13
	shlr r14

loc_8c1C09B8:
	extu.b r13,r3
	tst r3,r3
	bt loc_8c1C09C2
	bra loc_8c1C0770
	nop

loc_8c1C09C2:
	mov.b r10,@r8
	mov r11,r0
	nop
	add 0x08,r15
	mov.b r0,@(0x01,r8)
	lds.l @r15+,pr
	mov.l r12,@(0x04,r8)
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

loc_8c1c09e0:
	#data 0x8C34BB87
loc_8c1c09e4:
	#data 0x8C353185
loc_8c1c09e8:
	#data 0x8C34BB85
loc_8c1c09ec:
	#data 0x8C353198
loc_8c1c09f0:
	#data 0x8C34BB86
loc_8c1c09f4:
	#data 0x8C353181
loc_8c1C09F8:
	#data bank1a.loc_8c1a131C
loc_8c1c09fc:
	#data 0x8C34BB7C
loc_8c1c0a00:
	#data 0x8C35318C
loc_8c1C0A04:
	#data bank1a.loc_8c1a1324
loc_8c1c0a08:
	#data 0x8C34BB91
loc_8c1c0a0c:
	#data 0x8C34BB80
loc_8c1c0a10:
	#data 0x8C353182
loc_8c1c0a14:
	#data 0x8C34BB45
loc_8c1c0a18:
	#data 0x8C34BB44
loc_8c1c0a1c:
	#data 0x8C34BB70
loc_8c1c0a20:
	#data 0x8C353170

;==============================================
loc_8c1C0A24:
	mov.l @(loc_8c1C0B0C,pc),r5 ; r5 set to 0x8C353172
	mov 0x01,r4 ; r4 set to 0x01
	mov.b r4,@r5 ; r5 ??
	mov.l @(loc_8c1C0B10,pc),r3 ; r3 set to 0x8C34BB67
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1C0B14,pc),r2 ; r2 set to 0x8C34BB70
	mov.b r4,@r2 ; r2 ??
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1C0B18,pc),r1 ; r1 set to 0x8C34BB71
	mov.b r4,@r1 ; r1 ??
	mov.w @(loc_8c1C0B04,pc),r6 ; r6 set to 0xFF
	mov.l @(loc_8c1C0B1C,pc),r3 ; r3 set to 0x8C34BB72
	mov.b r6,@r3 ; r3 ??
	mov.l @(loc_8c1C0B20,pc),r0 ; r0 set to 0x8C34BB66
	mov.l @(loc_8c1C0B24,pc),r1 ; r1 set to 0x8C353184
	mov.b @r0,r2
	mov.b r2,@r1 ; r1 ??? bc r2 is ???
	mov.l @(loc_8c1C0B28,pc),r3 ; r3 set to 0x8C34BB68
	mov.w r4,@r3 ; r3 ??
	mov.l @(loc_8c1C0B2C,pc),r2 ; r2 set to 0x8C34BB8C
	mov.w r4,@r2 ; r2 ??
	mov.l @(loc_8c1C0B30,pc),r1 ; r1 set to 0x8C353183
	mov.b r4,@r1 ; r1 ??
	mov r6,r0 ; r0 set to 0xFF
	nop
	mov.b r0,@(0x02,r5)
	mov r4,r0 ; r0 set to 0x00
	nop
	rts
	mov.b r0,@(0x01,r5)

;==============================================
loc_8c1C0A60:
	mov.l @(loc_8c1C0B34,pc),r2 ; r2 set to 0x8C353178
	mov 0x08,r3 ; r3 set to 0x08
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r3,@r2 ; r2 ??
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8c1C0B38,pc),r3 ; r3 set to 0x8C34BB7C
	mov.w r4,@r3 ; r3 ??
	mov.l @(loc_8c1C0B3C,pc),r1 ; r1 set to 0x8C34BB86
	mov.b r4,@r1 ; r1 ??
	mov.l @(loc_8c1C0B40,pc),r0 ; r0 set to 0x8C34BB85
	mov.b r2,@r0 ; r0 ??
	mov.l @(loc_8c1C0B44,pc),r3 ; r3 set to 0x8C34BB87
	rts
	mov.b r4,@r3

;==============================================
loc_8c1C0A7C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r0
	nop
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r0,@(0x04,r15)
	mov.b r6,@r15
	mov.l @(loc_8c1C0B48,pc),r14 ; r14 set to 0x8C353181
	mov.b r4,@r14 ; r14 ??? bc r4 is ???
	mov.l @(loc_8c1C0B4C,pc),r3 ; r3 set to 0x8C353182
	mov.b r7,@r3 ; r3 ??? bc r7 is ???
	mov.l @(loc_8c1C0B20,pc),r1 ; r1 set to 0x8C34BB66
	mov.b r2,@r1 ; r1 ??
	bsr loc_8c1C0A24
	nop
	bsr loc_8c1C0A60
	nop
	mov.b @r15,r5
	mov.l @(loc_8c1C0B50,pc),r4 ; r4 set to 0x8C34BB90
	extu.b r5,r5
	mov r5,r0
	nop
	cmp/eq 0x08,r0
	bf/s loc_8c1C0AB6
	mov 0x08,r7 ; r7 set to 0x08
	mov 0x07,r2 ; r2 set to 0x07
	bra loc_8c1C0AB8
	mov.b r2,@r4

loc_8c1c0ab6:
	mov.b r7,@r4

loc_8c1c0ab8:
	mov.b @r14,r4
	mov.l @(loc_8C1C0B54,pc),r6
	extu.b r4,r0
	cmp/eq 0x02,r0 
	bt/s loc_8c1c0acc
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x18,r0 
	bf loc_8c1c0ad2

loc_8c1c0acc:
	mov 0x04,r2
	bra loc_8c1c0ad4
	mov.b r2,@r6

loc_8c1c0ad2:
	mov.b r7,@r6

loc_8c1c0ad4:
	mov.b @(0x04,r15),r0 
	mov 0x02,r3
	mov.l @(loc_8C1C0B58,pc),r4
	mov r0,r6
	extu.b r6,r6
	cmp/gt r3,r6
	bt loc_8c1c0ae6
	bra loc_8c1c0aee
	mov 0x0B,r1

loc_8c1c0ae6:
	mov 0x1B,r0
	cmp/gt r0,r6
	bt loc_8c1c0af2
	mov 0x37,r1

loc_8c1c0aee:
	bra loc_8c1c0af6
	mov.b r1,@r4

loc_8c1c0af2:
	mov.w @(loc_8C1C0B06,pc),r2
	mov.b r2,@r4

loc_8c1c0af6:
	mov.w @(loc_8C1C0B08,pc),r3
	mov.l @(loc_8C1C0B5C,pc),r4
	cmp/eq r3,r5
	bf loc_8c1c0b60
	mov.w @(loc_8C1C0B0A,pc),r1
	bra loc_8c1c0bd4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c0b04:
	#data 0x00FF
loc_8C1C0B06:
	#data 0x00F2
loc_8C1C0B08:
	#data 0x00FE
loc_8C1C0B0A:
	#data 0x0118
	#align4

loc_8c1c0b0c:
	#data 0x8C353172
loc_8c1c0b10:
	#data 0x8C34BB67
loc_8c1c0b14:
	#data 0x8C34BB70
loc_8c1c0b18:
	#data 0x8C34BB71
loc_8c1c0b1c:
	#data 0x8C34BB72
loc_8c1c0b20:
	#data 0x8C34BB66
loc_8c1c0b24:
	#data 0x8C353184
loc_8c1c0b28:
	#data 0x8C34BB68
loc_8c1c0b2c:
	#data 0x8C34BB8C
loc_8c1c0b30:
	#data 0x8C353183
loc_8c1c0b34:
	#data 0x8C353178
loc_8c1c0b38:
	#data 0x8C34BB7C
loc_8c1c0b3c:
	#data 0x8C34BB86
loc_8c1c0b40:
	#data 0x8C34BB85
loc_8c1c0b44:
	#data 0x8C34BB87
loc_8c1c0b48:
	#data 0x8C353181
loc_8c1c0b4c:
	#data 0x8C353182
loc_8c1c0b50:
	#data 0x8C34BB90
loc_8C1C0B54:
	#data 0x8C34BB8F
loc_8C1C0B58:
	#data 0x8C353185
loc_8C1C0B5C:
	#data 0x8C353170

;==============================================
loc_8c1c0b60:
	mov.w @(loc_8C1C0B86,pc),r7
	mov r7,r1
	add 0x7F,r1
	cmp/eq r1,r5
	bf loc_8c1c0bdc
	mov.l @(loc_8C1C0B88,pc),r2
	mov 0x09,r0
	mov.b r0,@r2
	mov r6,r0
	nop 
	mov 0x0D,r1
	cmp/hs r1,r0
	bt loc_8c1c0bd8
	shll r0
	mov r0,r1
	mova @(loc_8C1C0B8C,pc),r0 
	mov.w @(r0,r1),r0

braf_8c1c0b82:
	braf r0
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1C0B86:
	#data 0x0080
	#align4

loc_8C1C0B88:
	#data 0x8C34BB66

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1C0B8C:
	#data16 {loc_8c1c0ba6-braf_8c1c0b82-4} ; 0x0020
	#data16 {loc_8c1c0ba6-braf_8c1c0b82-4} ; 0x0020
	#data16 {loc_8c1c0ba6-braf_8c1c0b82-4} ; 0x0020
	#data16 {loc_8c1c0bac-braf_8c1c0b82-4} ; 0x0026
	#data16 {loc_8c1c0bb0-braf_8c1c0b82-4} ; 0x002A
	#data16 {loc_8c1c0bb4-braf_8c1c0b82-4} ; 0x002E
	#data16 {loc_8c1c0bb8-braf_8c1c0b82-4} ; 0x0032
	#data16 {loc_8c1c0bbc-braf_8c1c0b82-4} ; 0x0036
	#data16 {loc_8c1c0bc0-braf_8c1c0b82-4} ; 0x003A
	#data16 {loc_8c1c0bc4-braf_8c1c0b82-4} ; 0x003E
	#data16 {loc_8c1c0bc8-braf_8c1c0b82-4} ; 0x0042
	#data16 {loc_8c1c0bcc-braf_8c1c0b82-4} ; 0x0046
	#data16 {loc_8c1c0bd2-braf_8c1c0b82-4} ; 0x004C

;==============================================
loc_8c1c0ba6:
	mov 0x06,r3
	bra loc_8c1c0bde
	mov.w r3,@r4

;==============================================
loc_8c1c0bac:
	bra loc_8c1c0bce
	mov 0x0C,r0

;==============================================
loc_8c1c0bb0:
	bra loc_8c1c0bd4
	mov 0x18,r1

;==============================================
loc_8c1c0bb4:
	bra loc_8c1c0bce
	mov 0x24,r0

;==============================================
loc_8c1c0bb8:
	bra loc_8c1c0bd4
	mov 0x30,r1

;==============================================
loc_8c1c0bbc:
	bra loc_8c1c0bce
	mov 0x3C,r0

;==============================================
loc_8c1c0bc0:
	bra loc_8c1c0bd4
	mov 0x48,r1

;==============================================
loc_8c1c0bc4:
	bra loc_8c1c0bce
	mov 0x54,r0

;==============================================
loc_8c1c0bc8:
	bra loc_8c1c0bd4
	mov 0x60,r1

;==============================================
loc_8c1c0bcc:
	mov 0x6C,r0

loc_8c1c0bce:
	bra loc_8c1c0bde
	mov.w r0,@r4

;==============================================
loc_8c1c0bd2:
	mov 0x78,r1

loc_8c1c0bd4:
	bra loc_8c1c0bde
	mov.w r1,@r4

loc_8c1c0bd8:
	bra loc_8c1c0bde
	mov.w r7,@r4

loc_8c1c0bdc:
	mov.w r7,@r4

loc_8c1c0bde:
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x16,r0 
	bt loc_8c1c0c0c
	cmp/eq 0x17,r0 
	bt loc_8c1c0c0c
	cmp/eq 0x18,r0 
	bt loc_8c1c0c0c
	mov.l @(loc_8C1C0C64,pc),r2
	mov.l @(bank1c.loc_8c1c0c60,pc),r3
	mov.l r3,@r2
	mov.l @(bank1c.loc_8c1c0c68,pc),r1
	mov.l @(loc_8C1C0C6C,pc),r0
	mov.l r1,@r0
	mov.l @(bank1c.loc_8c1c0c70,pc),r3
	mov.l @(loc_8C1C0C74,pc),r2
	mov.l r3,@r2
	mov.l @(bank1c.loc_8c1c0c78,pc),r1
	mov.l @(loc_8C1C0C7C,pc),r0
	mov.l r1,@r0
	mov.l @(bank1c.loc_8c1c0c80,pc),r3
	mov.l @(loc_8C1C0C84,pc),r2
	mov.l r3,@r2

loc_8c1c0c0c:
	add 0x08,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8c1C0C14:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c1C0C5C,pc),r14 ; r14 set to 0x1F4
	add 0xFC,r15
	bra loc_8c1C0CE2
	mov r12,r11

loc_8c1C0C2C:
	extu.w r14,r2
	tst r2,r2
	bf.s loc_8c1c0c40
	add 0xFF,r14
	mov.w @(0x26,PC),r4
	mov.l @(0x50,PC),r13
	jsr @r13
	nop 
	bra loc_8c1c0ce8
	nop 

loc_8c1C0C40:
	mov.l @(0x48,PC),r13
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt.s loc_8c1c0c90
	mov 0x01,r10
	cmp/eq 0x08,r0
	bf loc_8c1c0ce0
	mov.l @(0xC,PC),r10
	jsr @r10
	nop 
	mov 0x02,r4
	bra loc_8c1c0ce2
	mov.b r4,@r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C0C5C:
	#data 0x01F4
loc_8c1C0C5e:
	#data 0x17D4
	#align4

loc_8c1C0C60:
	#data bank1b.loc_8c1b6A4C
loc_8c1c0c64:
	#data 0x8C353188
loc_8c1C0C68:
	#data bank1b.loc_8c1b6B2C
loc_8c1c0c6c:
	#data 0x8C35318C
loc_8c1C0C70:
	#data bank1b.loc_8c1b68A2
loc_8c1c0c74:
	#data 0x8C353190
loc_8c1C0C78:
	#data bank1b.loc_8c1b69D4
loc_8c1c0c7c:
	#data 0x8C353194
loc_8c1C0C80:
	#data bank1b.loc_8c1b6E7C
loc_8c1c0c84:
	#data 0x8C353198
loc_8c1C0C88:
	#data bank1a.loc_8c1a003E
loc_8c1C0C8c:
	#data 0x8C353178

;==============================================
loc_8c1C0C90:
	mov.l @(0xE4,PC),r9
	jsr @r9
	mov r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c0cdc
	mov.l @(0xDC,PC),r4
	mov.w r12,@r4
	mov.l @(0xDC,PC),r4
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1c0cd6
	mov.l @(0xD8,PC),r4
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b @r15,r3
	mov.b r3,@-r2
	mov.l @(0xD0,PC),r10
	mov.w @r10,r3
	add 0x01,r3
	mov.w r3,@r10
	mov.l @(0xCC,PC),r9
	mov.l @(0xCC,PC),r4
	jsr @r9
	mov 0x00,r5
	mov.l @(0xCC,PC),r4
	mov.w @r10,r2
	mov.w @r4,r3
	cmp/eq r3,r2
	bf loc_8c1c0ce2
	mov.l @(0xC4,PC),r10
	jsr @r10
	nop 

loc_8c1C0CD6:
	mov 0x08,r4
	bra loc_8c1c0ce2
	mov.b r4,@r13

loc_8c1C0CDC:
	bra loc_8c1c0ce2
	mov r10,r11

loc_8c1C0CE0:
	mov r10,r11

loc_8c1c0ce2:
	exts.b r11,r3
	tst r3,r3
	bt bank1c.loc_8c1c0c2c

loc_8c1c0ce8:
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
loc_8c1c0cfa:
	sts.l pr,@-r15
	mov.l @(0x9C,PC),r2
	add 0xFC,r15
	jsr @r2
	nop 
	mov.b r0,@r15
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c0d12
	mov.l @(0x90,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c1c0d12:
	mov.l @(0x74,PC),r2
	mov.w @r2,r3
	tst r3,r3
	bt loc_8c1c0d36
	mov.l @(0x74,PC),r3
	mov.l @(0x84,PC),r1
	mov.l @r3,r4
	jsr @r1
	add 0x0A,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c0d36
	mov.l @(0x6C,PC),r2
	jsr @r2
	nop 
	mov.l @(0x74,PC),r2
	mov 0x08,r3
	mov.b r3,@r2

loc_8c1c0d36:
	mov.b @r15,r1
	tst r1,r1
	bt loc_8c1c0d46
	mov.l @(0x60,PC),r3
	add 0x04,r15
	mov.l @(0x68,PC),r4
	jmp @r3
	lds.l @r15+,pr

loc_8c1c0d46:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c1c0d4e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w r4,@r15
	mov.l @(0x58,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c1c0d6e
	mov.l @(0x2C,PC),r3
	mov.l @(0x50,PC),r4
	mov.w @r15,r5
	jsr @r3
	extu.w r5,r5
	mov.l @(0x4C,PC),r3
	mov 0x00,r2
	mov.b r2,@r3

loc_8c1c0d6e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1c0d78:
	#data bank19.loc_8c19EF30
loc_8c1c0d7c:
	#data 0x8C34B2D2
loc_8c1c0d80:
	#data 0x8C34BB91
loc_8c1c0d84:
	#data 0x8C34BB80
loc_8c1c0d88:
	#data 0x8C34BB7C
loc_8c1c0d8c:
	#data bank1b.loc_8c1b3EEC
loc_8c1c0d90:
	#data 0x8C35319C
loc_8c1c0d94:
	#data 0x8C353170
loc_8c1c0d98:
	#data bank1b.loc_8c1b6B2C
loc_8c1c0d9c:
	#data bank1a.loc_8c1a00C4
loc_8c1c0da0:
	#data bank1a.loc_8c1a00CA
loc_8c1c0da4:
	#data bank1b.loc_8c1b3F0C
	#data 0x8C353178
loc_8c1c0dac:
	#data bank19.loc_8c19F0BA
loc_8c1c0db0:
	#data 0x8C353172
loc_8c1c0db4:
	#data 0x8C34BB74
loc_8c1c0db8:
	#data 0x8C34BB72

;==============================================
loc_8c1c0dbc:
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(0x11C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1c0e22
	mov.l @(0x11C,PC),r12
	mov 0x00,r5
	mov.l @(0x114,PC),r11
	mov r5,r4
	mov.w @(0x106,PC),r9
	mov 0x07,r10

loc_8c1c0dda:
	extu.w r4,r0
	mov r4,r7
	extu.w r4,r14
	mov r5,r6
	shll r0
	shll r14
	mov.w r5,@(r0,r12)
	add r12,r14

loc_8c1c0dea:
	mov.b @r14,r0
	mov.w @r14,r3
	and 0x01,r0
	mov r0,r1
	extu.b r7,r0
	extu.w r3,r3
	and 0x01,r0
	extu.b r1,r1
	shlr r3
	cmp/eq r1,r0
	mov.w r3,@r14
	bt.s loc_8c1c0e0a
	extu.b r7,r7
	mov.w @r14,r2
	xor r11,r2
	mov.w r2,@r14

loc_8c1c0e0a:
	add 0x01,r6
	extu.w r6,r3
	shlr r7
	cmp/gt r10,r3
	bf loc_8c1c0dea
	add 0x01,r4
	extu.w r4,r3
	cmp/gt r9,r3
	bf loc_8c1c0dda
	mov.l @(0xC4,PC),r2
	mov 0x01,r3
	mov.b r3,@r2

loc_8c1c0e22:
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1c0e2e:
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0xB4,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bf loc_8c1c0e94
	mov 0x00,r5
	mov.l @(0xB0,PC),r12
	mov.l @(0xAC,PC),r10
	mov r5,r4
	mov.w @(0x92,PC),r8
	mov 0x07,r9
	mov 0x01,r11

loc_8c1c0e50:
	extu.w r4,r0
	mov r4,r7
	extu.w r4,r14
	mov r5,r6
	shll2 r14
	shll2 r0
	add r12,r14
	mov.l r5,@(r0,r12)

loc_8c1c0e60:
	mov.l @r14,r0
	mov 0x01,r1
	extu.b r7,r2
	mov r0,r3
	and r0,r1
	and r11,r2
	extu.b r1,r1
	shlr r3
	cmp/eq r1,r2
	mov.l r3,@r14
	bt.s loc_8c1c0e7e
	extu.b r7,r7
	mov.l @r14,r2
	xor r10,r2
	mov.l r2,@r14

loc_8c1c0e7e:
	add 0x01,r6
	extu.w r6,r3
	shlr r7
	cmp/gt r9,r3
	bf loc_8c1c0e60
	add 0x01,r4
	extu.w r4,r3
	cmp/gt r8,r3
	bf loc_8c1c0e50
	mov.l @(0x5C,PC),r3
	mov.b r11,@r3

loc_8c1c0e94:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r14

loc_8c1C0EA2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1C0EFC,pc),r8 ; r8 set to 0x8C3537A8
	sts.l pr,@-r15
	mov.b @(0x01,r8),r0
	mov.b @r8,r11
	mov r0,r9
	mov.b @(0x02,r8),r0
	mov r0,r14
	bra loc_8c1C103A
	mov.l @(0x0C,r8),r10

loc_8c1C0EC4:
	extu.b r14,r2
	shlr r13
	tst r2,r2
	bf loc_8c1C0ED0
	bra loc_8c1C0F0A
	mov 0x05,r14

loc_8c1C0ED0:
	mov r10,r3
	mov 0x01,r4 ; r4 set to 0x01
	tst r4,r3
	bt loc_8c1C0F04
	mov.l @(loc_8c1C0F00,pc),r4 ; r4 set to 0x80000000
	add 0xFF,r14
	bra loc_8c1C0F06
	or r4,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C0Ee0:
	#data 0x00FF
	#align4

loc_8c1C0Ee4:
	#data 0x8C3537C8
loc_8c1C0Ee8:
	#data 0x00008408
loc_8c1C0Eec:
	#data 0x8C3531A2
loc_8c1C0Ef0:
	#data 0x8C3537C9
loc_8c1C0Ef4:
	#data 0xEDB88320
loc_8c1C0Ef8:
	#data 0x8C3533A4
loc_8c1C0EFC:
	#data 0x8C3537A8
loc_8c1C0F00:
	#data 0x80000000

;==============================================
loc_8c1C0F04:
	mov 0x05,r14 ; r14 set to 0x05

loc_8c1C0F06:
	add 0xFF,r9
	shlr r10

loc_8c1C0F0A:
	extu.b r9,r2
	tst r2,r2
	bt loc_8c1C0F14
	bra loc_8c1C103A
	nop

loc_8c1C0F14:
	extu.b r11,r0
	cmp/eq 0x02,r0
	bt/s loc_8c1C0F30
	mov 0x00,r4 ; r4 set to 0x00
	cmp/eq 0x04,r0
	bf loc_8c1C0F24
	bra loc_8c1C1022
	nop

loc_8c1C0F24:
	cmp/eq 0x05,r0
	bt loc_8c1C0FBC
	cmp/eq 0x06,r0
	bt loc_8c1C0FAE
	bra loc_8c1C103A
	nop

loc_8c1C0F30:
	mov.l @(loc_8c1C10BC,pc),r3 ; r3 set to 0x8C34BB68
	mov.l @(loc_8c1C10B8,pc),r5 ; r5 set to 0x8C34BC8D
	mov.w @r3,r2
	tst r2,r2
	bt loc_8c1C0F8E
	mov.l @(loc_8c1C10C0,pc),r4 ; r4 set to 0x8C34BB6C
	mov.l @r4,r10
	add 0x01,r10
	mov.l r10,@r4 ; r4 ??? bc r10 is ???
	add 0xFF,r10
	mov.w @r3,r2
	mov.b @r10,r10
	add 0xFF,r2
	extu.b r10,r10
	mov.w r2,@r3 ; r3 ??? bc r2 is ???
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_8c1C0F74
	mov 0x08,r9 ; r9 set to 0x08
	mov.w @(0x04,r8),r0
	mov r0,r4
	extu.w r0,r0
	shlr8 r0
	mov.w r0,@(0x04,r8)
	xor r10,r4
	extu.b r4,r0
	mov.l @(loc_8c1C10C4,pc),r5 ; r5 set to 0x8C3531A2
	shll r0
	mov.w @(r0,r5),r2
	mov.w @(0x04,r8),r0
	xor r2,r0
	bra loc_8c1C103A
	mov.w r0,@(0x04,r8)

loc_8c1C0F74:
	mov.l @(0x08,r8),r4
	mov.l @(0x08,r8),r2
	xor r10,r4
	extu.b r4,r0
	shlr8 r2
	shll2 r0
	mov.l r2,@(0x08,r8)
	mov.l @(loc_8c1C10C8,pc),r5 ; r5 set to 0x8C3533A4
	mov.l @(0x08,r8),r1
	mov.l @(r0,r5),r2
	xor r2,r1
	bra loc_8c1C103A
	mov.l r1,@(0x08,r8)

loc_8c1C0F8E:
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1C0FA0
	mov.w @(0x04,r8),r0
	extu.w r0,r0
	not r0,r10
	bra loc_8c1C0FA6
	mov 0x10,r4

loc_8c1C0FA0:
	mov.l @(0x08,r8),r10
	mov 0x20,r4 ; r4 set to 0x20
	not r10,r10

loc_8c1C0FA6:
	mov r4,r9 ; r9 set to 0x20
	mov 0x06,r4 ; r4 set to 0x06, r4 set to 0x06
	bra loc_8c1C103A
	mov r4,r11

loc_8c1C0FAE:
	mov.l @(loc_8c1C10CC,pc),r2 ; r2 set to 0x8C1B69D4
	jsr @r2
	nop
	mov 0x04,r9 ; r9 set to 0x04
	mov 0x7E,r10 ; r10 set to 0x7E
	bra loc_8c1C103A
	mov 0x05,r11

loc_8c1C0FBC:
	extu.b r14,r0
	cmp/eq 0x05,r0
	bt loc_8c1C0FC8
	mov 0x04,r9 ; r9 set to 0x04
	bra loc_8c1C103A
	mov 0x05,r14

loc_8c1C0FC8:
	mov.l @(loc_8c1C10BC,pc),r3 ; r3 set to 0x8C34BB68
	bra loc_8c1C0FE2
	mov.w r4,@r3

loc_8c1C0FCE:
	mov.l @(0x100,PC),r10
	jsr @r10
	nop 
	mov.l @(0xE4,PC),r2
	mov.w @r2,r3
	tst r3,r3
	bf loc_8c1c0fe2
	mov.l @(0xEC,PC),r3
	jsr @r3
	nop 

loc_8c1c0fe2:
	mov.l @(bank1c.loc_8c1c10d4,pc),r10
	jsr @r10
	nop 
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1c0ff6
	mov.l @(bank1c.loc_8c1c10bc,pc),r2
	mov.w @r2,r3
	tst r3,r3
	bt bank1c.loc_8c1c0fce

loc_8c1c0ff6:
	mov.l @(bank1c.loc_8c1c10bc,pc),r2
	mov.w @r2,r3
	tst r3,r3
	bt loc_8c1c1014
	mov.l @(loc_8C1C10D8,pc),r0
	mov 0xFF,r3
	mov 0x02,r4
	mov.w r0,@(0x04,r8) 
	mov.l r3,@(0x08,r8) 
	bra bank1c.loc_8c1c0f30
	mov r4,r11

loc_8c1c100c:
	mov.l @(loc_8C1C10DC,pc),r4
	shlr8 r13
	add 0xF8,r12
	or r4,r13

loc_8c1c1014:
	mov 0x08,r2
	extu.b r12,r3
	cmp/gt r2,r3
	bt loc_8c1c100c
	mov 0x7E,r10
	bra bank1c.loc_8c1c103a
	mov 0x04,r9

loc_8c1C1022:
	mov r4,r12
	mov.l @(loc_8c1C10E0,pc),r4 ; r4 set to 0x8C34BB71
	mov 0xFF,r13 ; r13 set to 0xFFFFFFFF
	mov.b @r4,r3
	mov 0x7E,r10 ; r10 set to 0x7E
	mov 0x04,r9 ; r9 set to 0x04
	tst r3,r3
	bt/s loc_8c1C103A
	mov 0x05,r11 ; r11 set to 0x05
	mov.l @(loc_8c1C10CC,pc),r1 ; r1 set to 0x8C1B69D4
	jsr @r1
	nop

loc_8c1C103A:
	extu.b r12,r1 ; r1 ??? bc r12 is ???
	tst r1,r1
	bt/s loc_8c1C1046
	add 0xFF,r12
	bra loc_8c1C0EC4
	nop

loc_8c1C1046:
	mov.b r11,@r8
	mov r9,r0
	nop
	mov.b r0,@(0x01,r8)
	mov r14,r0
	nop
	mov.b r0,@(0x02,r8)
	mov.l r10,@(0x0C,r8)
	mov r13,r0
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

;==============================================
loc_8c1C106C:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1C10E4,pc),r9 ; r9 set to 0x8C3537B8
	sts.l pr,@-r15
	mov.b @(0x01,r9),r0
	mov.b @r9,r11
	mov r0,r4
	mov.b @(0x02,r9),r0
	mov.l @(0x0C,r9),r10
	mov r0,r12
	extu.b r11,r0
	cmp/eq 0x05,r0
	bt/s loc_8c1C109A
	mov 0x08,r8 ; r8 set to 0x08
	bra loc_8c1C131E
	nop

loc_8c1C109A:
	bra loc_8c1C10A2
	nop

loc_8c1C109E:
	add 0xF8,r14
	shlr8 r13

loc_8c1C10A2:
	extu.b r14,r3
	cmp/ge r8,r3
	bt loc_8c1C10AC
	bra loc_8c1C131E
	nop

loc_8c1C10AC:
	extu.b r13,r0
	cmp/eq 0x7E,r0
	bt loc_8c1C109E
	bra loc_8c1C131E
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C10B8:
	#data 0x8C34BC8D
loc_8c1C10BC:
	#data 0x8C34BB68
loc_8c1C10C0:
	#data 0x8C34BB6C
loc_8c1C10C4:
	#data 0x8C3531A2
loc_8c1C10C8:
	#data 0x8C3533A4
loc_8c1C10CC:
	#data bank1b.loc_8c1b69D4
loc_8c1C10D0:
	#data bank1b.loc_8c1b68A2
loc_8c1C10D4:
	#data bank1b.loc_8c1b6EA4
loc_8c1c10d8:
	#data 0x0000FFFF
loc_8c1c10dc:
	#data 0x7E000000
loc_8c1C10E0:
	#data 0x8C34BB71
loc_8c1C10E4:
	#data 0x8C3537B8

;==============================================
loc_8c1C10E8:
	mov r13,r3
	mov 0x01,r5 ; r5 set to 0x01
	tst r5,r3
	bt loc_8c1C110C
	mov r10,r3
	add 0x01,r12
	shlr r3
	mov.w @(loc_8c1C11DE,pc),r5 ; r5 set to 0x80
	extu.b r12,r0
	mov r3,r10
	cmp/eq 0x07,r0
	or r5,r10
	bf/s loc_8c1C112E
	add 0xFF,r4
	mov 0x04,r5 ; r5 set to 0x04
	mov 0x00,r4 ; r4 set to 0x00
	bra loc_8c1C112E
	mov r5,r11

loc_8c1C110C:
	extu.b r12,r6
	mov 0x05,r5 ; r5 set to 0x05
	cmp/ge r5,r6
	bt loc_8c1C111A
	shlr r10
	bra loc_8c1C112C
	add 0xFF,r4

loc_8c1c111a:
	mov r6,r0
	nop 
	cmp/eq 0x06,r0 
	bf loc_8c1c112c
	mov.l @(loc_8C1C11E4,pc),r4
	mov 0x00,r2
	mov r5,r11
	mov.w r2,@r4
	mov r2,r4

loc_8c1C112C:
	mov 0x00,r12 ; r12 set to 0x00

loc_8c1C112E:
	extu.b r4,r3
	shlr r13
	tst r3,r3
	bt loc_8c1C113A
	bra loc_8c1C131E
	nop

loc_8c1C113A:
	extu.b r11,r0
	cmp/eq 0x02,r0
	bt loc_8c1C1160
	cmp/eq 0x04,r0
	bf loc_8c1C1148
	bra loc_8c1C12E0
	nop

loc_8c1C1148:
	cmp/eq 0x05,r0
	bt loc_8c1C1208
	cmp/eq 0x07,r0
	bf loc_8c1C1154
	bra loc_8c1C1290
	nop

loc_8c1C1154:
	cmp/eq 0x08,r0
	bf loc_8c1C115C
	bra loc_8c1C131A
	nop

loc_8c1C115C:
	bra loc_8c1C131A
	nop

loc_8c1C1160:
	mov.l @(loc_8c1C11E8,pc),r3 ; r3 set to 0x8C34BC8D
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1C1186
	mov.w @(0x04,r9),r0
	mov r0,r4
	extu.w r0,r0
	shlr8 r0
	mov.w r0,@(0x04,r9)
	xor r10,r4
	extu.b r4,r0
	mov.l @(loc_8c1C11EC,pc),r5 ; r5 set to 0x8C3531A2
	shll r0
	mov.w @(r0,r5),r2
	mov.w @(0x04,r9),r0
	xor r2,r0
	bra loc_8c1C119E
	mov.w r0,@(0x04,r9)

loc_8c1C1186:
	mov.l @(0x08,r9),r4
	mov.l @(0x08,r9),r2
	xor r10,r4
	extu.b r4,r0
	shlr8 r2
	shll2 r0
	mov.l r2,@(0x08,r9)
	mov.l @(loc_8c1C11F0,pc),r5 ; r5 set to 0x8C3533A4
	mov.l @(0x08,r9),r1
	mov.l @(r0,r5),r2
	xor r2,r1
	mov.l r1,@(0x08,r9)

loc_8c1C119E:
	mov.l @(loc_8c1C11F4,pc),r4 ; r4 set to 0x8C34BB80, r4 set to 0x8C34BB80
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???
	mov.b r10,@-r3
	mov.l @(loc_8c1C11F8,pc),r2 ; r2 set to 0x8C34BB7C, r2 set to 0x8C34BB7C
	mov.w @(loc_8c1C11E0,pc),r4 ; r4 set to 0x114, r4 set to 0x114
	mov.w @r2,r3
	add 0x01,r3
	mov.w r3,@r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???
	extu.w r3,r3
	cmp/gt r4,r3
	bt loc_8c1C11BC
	bra loc_8c1C131A
	nop

loc_8c1C11BC:
	mov.l @(loc_8c1C11FC,pc),r2 ; r2 set to 0x8C34BC7A
	mov.w @(loc_8c1C11E2,pc),r1 ; r1 set to 0x124
	mov.b @r2,r3
	mov 0x08,r2 ; r2 set to 0x08
	mov.l @(loc_8c1C1200,pc),r0 ; r0 set to 0x8C34BC8E
	extu.b r3,r3
	muls.w r1,r3
	sts macl,r3
	exts.w r3,r3
	mov.b @(r0,r3),r1 ; r1 ??? bc r3 is ???
	or r2,r1
	mov.b r1,@(r0,r3)
	mov.l @(loc_8c1C1204,pc),r3 ; r3 set to 0x8C1B6B2C
	jsr @r3
	nop
	bra loc_8c1C131A
	mov r8,r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C11DE:
	#data 0x0080
loc_8c1C11E0:
	#data 0x0114
loc_8c1C11E2:
	#data 0x0124
	#align4

loc_8c1c11e4:
	#data 0x8C34B2D2
loc_8c1C11E8:
	#data 0x8C34BC8D
loc_8c1C11EC:
	#data 0x8C3531A2
loc_8c1C11F0:
	#data 0x8C3533A4
loc_8c1C11F4:
	#data 0x8C34BB80
loc_8c1C11F8:
	#data 0x8C34BB7C
loc_8c1C11FC:
	#data 0x8C34BC7A
loc_8c1C1200:
	#data 0x8C34BC8E
loc_8c1C1204:
	#data bank1b.loc_8c1b6B2C

;==============================================
loc_8c1c1208:
	mov.l @(loc_8C1C12B0,pc),r3
	mov.w @r3,r4
	extu.w r4,r4
	cmp/pl r4
	bf/s loc_8c1c1280
	mov 0x07,r11
	mov.l @(loc_8C1C12B4,pc),r1
	mov.b @r1,r5
	extu.b r5,r5
	cmp/gt r5,r4
	bf loc_8c1c1244
	mov r5,r0
	nop 
	cmp/eq 0x02,r0 
	bf loc_8c1c1232
	mov.l @(loc_8C1C12B8,pc),r0
	mov.l @(loc_8C1C12BC,pc),r3
	mov.w @r0,r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c1c1244

loc_8c1c1232:
	mov r5,r0
	nop 
	cmp/eq 0x04,r0 
	bf loc_8c1c1266
	mov.l @(loc_8C1C12C4,pc),r1
	mov.l @(loc_8C1C12C0,pc),r2
	mov.l @r1,r3
	cmp/eq r2,r3
	bt loc_8c1c1266

loc_8c1c1244:
	mov.l @(loc_8C1C12C8,pc),r0
	mov 0x01,r1
	mov.w @(loc_8C1C12AC,pc),r2
	mov.b @r0,r3
	mov.l @(loc_8C1C12CC,pc),r0
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	mov.b @(r0,r3),r2
	or r1,r2
	mov.b r2,@(r0,r3) 
	mov.l @(bank1c.loc_8c1c12d0,pc),r3
	jsr @r3
	nop 
	bra loc_8c1c1280
	mov r8,r11

loc_8c1c1266:
	mov.l @(loc_8C1C12B4,pc),r2
	mov.l @(loc_8C1C12B0,pc),r1
	mov.b @r2,r3
	mov.w @r1,r0
	extu.b r3,r3
	sub r3,r0
	mov.l @(bank1c.loc_8c1c12d0,pc),r3
	jsr @r3
	mov.w r0,@r1
	bra loc_8c1c1280
	nop 

loc_8c1c127c:
	add 0xF8,r14
	shlr8 r13

loc_8c1c1280:
	extu.b r14,r3
	cmp/ge r8,r3
	bf bank1c.loc_8c1c131a
	extu.b r13,r0
	cmp/eq 0x7E,r0 
	bt loc_8c1c127c
	bra bank1c.loc_8c1c131a
	nop 

loc_8c1C1290:
	mov.l @(loc_8c1C12D4,pc),r3 ; r3 set to 0x8C1B6A4C
	jsr @r3
	nop
	mov.l @(loc_8c1C12D8,pc),r3 ; r3 set to 0x8C34BB91
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1C131A
	mov 0xFF,r4 ; r4 set to 0xFFFFFFFF
	mov.l @(loc_8c1C12DC,pc),r0 ; r0 set to 0xFFFF
	mov.w r0,@(0x04,r9)
	mov.l r4,@(0x08,r9)
	mov 0x02,r4 ; r4 set to 0x02
	bra loc_8c1C1160
	mov r4,r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c12ac:
	#data 0x0124
	#align4

loc_8c1c12b0:
	#data 0x8C34BB7C
loc_8c1c12b4:
	#data 0x8C34BC8D
loc_8c1c12b8:
	#data 0x8C3537BC
loc_8c1c12bc:
	#data 0x0000F0B8
loc_8c1c12c0:
	#data 0xDEBB20E3
loc_8c1c12c4:
	#data 0x8C3537C0
loc_8c1c12c8:
	#data 0x8C34BC7A
loc_8c1c12cc:
	#data 0x8C34BC8E
loc_8c1C12D0:
	#data bank1b.loc_8c1b6B2C
loc_8c1C12D4:
	#data bank1b.loc_8c1b6A4C
loc_8c1C12D8:
	#data 0x8C34BB91
loc_8c1C12DC:
	#data 0x0000FFFF

;==============================================
loc_8c1c12e0:
	mov.b @r9,r0
	extu.b r0,r0
	cmp/eq 0x08,r0 
	bt loc_8c1c1316
	mov.l @(bank1c.loc_8c1c13a4,pc),r2
	jsr @r2
	nop 
	mov.l @(loc_8C1C13A8,pc),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1c1314
	mov.l @(loc_8C1C13AC,pc),r1
	mov 0x02,r2
	mov.w @(loc_8C1C13A2,pc),r0
	mov.b @r1,r3
	extu.b r3,r3
	muls.w r0,r3
	mov.l @(loc_8C1C13B0,pc),r0
	sts macl,r3
	exts.w r3,r3
	mov.b @(r0,r3),r1
	or r2,r1
	mov.b r1,@(r0,r3) 
	mov.l @(bank1c.loc_8c1c13b4,pc),r3
	jsr @r3
	nop 

loc_8c1c1314:
	mov.b r8,@r9

loc_8c1c1316:
	mov 0x00,r12
	mov r8,r11

loc_8c1C131A:
	mov r8,r4
	mov 0x00,r10 ; r10 set to 0x00

loc_8c1C131E:
	extu.b r14,r3
	tst r3,r3
	bt/s loc_8c1C132A
	add 0xFF,r14
	bra loc_8c1C10E8
	nop

loc_8c1C132A:
	mov.b r11,@r9
	mov r4,r0
	nop
	mov.b r0,@(0x01,r9)
	mov r12,r0
	nop
	lds.l @r15+,pr
	mov.b r0,@(0x02,r9)
	mov.l r10,@(0x0C,r9)
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1C134C:
	mov.l @(loc_8c1C13B8,pc),r3 ; r3 set to 0x8C34BB7C
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x08,r6 ; r6 set to 0x08
	mov.w r5,@r3 ; r3 ??
	mov.l @(loc_8c1C13BC,pc),r4 ; r4 set to 0x8C3537B8
	mov.l r5,@(0x0C,r4)  ; r4 ??
	mov r6,r0 ; r0 set to 0x08
	nop
	mov.b r0,@(0x01,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x02,r4)
	rts
	mov.b r6,@r4

;==============================================
loc_8c1C1368:
	mov.l @(loc_8c1C13C0,pc),r4 ; r4 set to 0x8C3537A8
	mov 0x04,r0 ; r0 set to 0x04
	mov 0x05,r5 ; r5 set to 0x05
	mov.b r5,@r4 ; r4 ??
	mov.b r0,@(0x01,r4)
	mov r5,r0 ; r0 set to 0x05
	nop
	mov 0x7E,r3 ; r3 set to 0x7E
	mov.b r0,@(0x02,r4)
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r3,@(0x0C,r4)
	mov.l @(loc_8c1C13C4,pc),r1 ; r1 set to 0x8C34BB68
	rts
	mov.w r2,@r1

;==============================================
loc_8c1C1384:
	sts.l pr,@-r15
	mov.l @(loc_8c1C13C8,pc),r3 ; r3 set to 0x8C1B6118
	jsr @r3
	nop
	mov.l @(loc_8c1C13CC,pc),r3 ; r3 set to 0x8C1B6048
	jsr @r3
	nop
	bsr loc_8c1C134C
	nop
	bsr loc_8c1C1368
	nop
	bsr loc_8c1C0E2E
	nop
	bra loc_8c1C0DBC
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c13a2:
	#data 0x0124
	#align4

loc_8c1C13A4:
	#data bank1b.loc_8c1b6A4C
loc_8c1c13a8:
	#data 0x8C34BB91
loc_8c1c13ac:
	#data 0x8C34BC7A
loc_8c1c13b0:
	#data 0x8C34BC8E
loc_8c1C13B4:
	#data bank1b.loc_8c1b6B2C
loc_8c1C13B8:
	#data 0x8C34BB7C
loc_8c1C13BC:
	#data 0x8C3537B8
loc_8c1C13C0:
	#data 0x8C3537A8
loc_8c1C13C4:
	#data 0x8C34BB68
loc_8c1C13C8:
	#data bank1b.loc_8c1b6118
loc_8c1C13CC:
	#data bank1b.loc_8c1b6048

;==============================================
loc_8c1C13D0:
	sts.l pr,@-r15
	mov.l @(loc_8c1C14AC,pc),r3 ; r3 set to 0x8C1B6118
	add 0xFC,r15
	jsr @r3
	mov.b r4,@r15
	mov.l @(loc_8c1C14B0,pc),r2 ; r2 set to 0x8C1B6048
	jsr @r2
	nop
	mov.l @(loc_8c1C14B4,pc),r3 ; r3 set to 0x8C34BB67
	mov 0x08,r4 ; r4 set to 0x08
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1C14B8,pc),r2 ; r2 set to 0x8C34BB78
	mov.b r4,@r2 ; r2 ??
	mov.b @r15,r0
	mov.l @(loc_8c1C14BC,pc),r4 ; r4 set to 0x8C3531A0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c1C1428
	cmp/eq 0x03,r0
	bt loc_8c1C1424
	cmp/eq 0x04,r0
	bt loc_8c1C1420
	cmp/eq 0x05,r0
	bt loc_8c1C141C
	cmp/eq 0x06,r0
	bt loc_8c1C1418
	cmp/eq 0x07,r0
	bt loc_8c1C1412
	cmp/eq 0x08,r0
	bf loc_8c1C142E
	mov.w @(loc_8c1C14A2,pc),r1 ; r1 set to 0xB4
	bra loc_8c1C1430
	nop

loc_8c1C1412:
	mov.w @(loc_8c1C14A4,pc),r1 ; r1 set to 0x96
	bra loc_8c1C1430
	nop

loc_8c1C1418:
	bra loc_8c1C1430
	mov 0x78,r1

loc_8c1C141C:
	bra loc_8c1C1430
	mov 0x5A,r1

loc_8c1C1420:
	bra loc_8c1C1430
	mov 0x3C,r1

loc_8c1C1424:
	bra loc_8c1C1430
	mov 0x1E,r1

loc_8c1C1428:
	mov 0x14,r1 ; r1 set to 0x14
	bra loc_8c1C1430
	nop

loc_8c1c142e:
	mov.w @(loc_8C1C14A6,pc),r1

loc_8c1C1430:
	add 0x04,r15
	mov.w r1,@r4
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1C143A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x08,r8 ; r8 set to 0x08
	sts.l pr,@-r15
	mov.l @(loc_8c1C14B8,pc),r11 ; r11 set to 0x8C34BB78
	mov.l @(loc_8c1C14C4,pc),r12 ; r12 set to 0x8C34BB80
	mov.l @(loc_8c1C14C8,pc),r13 ; r13 set to 0x8C34BB7C
	add 0xFC,r15
	mov.l @(loc_8c1C14C0,pc),r10 ; r10 set to 0x8C3537CC
	mov.w @(loc_8c1C14A8,pc),r14 ; r14 set to 0x1F4
	bra loc_8c1C1506
	mov 0x00,r9

loc_8c1C145C:
	extu.w r14,r2
	tst r2,r2
	bf.s loc_8c1c1470
	add 0xFF,r14
	mov.l @(0x64,PC),r2
	mov.w @(0x40,PC),r4
	jsr @r2
	nop 
	bra loc_8c1c1512
	nop 

loc_8c1C1470:
	mov.b @r11,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c1c14e0
	cmp/eq 0x08,r0
	bf loc_8c1c1506
	mov.l @(0x50,PC),r3
	jsr @r3
	nop 
	mov.l @(0x50,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1c14d8
	mov.l @r12,r1
	add 0x01,r1
	mov.l r1,@r12
	mov.b @r15,r2
	mov.b r2,@-r1
	mov 0x02,r2
	mov.w @r13,r1
	add 0x01,r1
	mov.w r1,@r13
	bra loc_8c1c1506
	mov.b r2,@r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C14A2:
	#data 0x00B4
loc_8c1C14A4:
	#data 0x0096
loc_8c1c14a6:
	#data 0x0118
loc_8c1C14A8:
	#data 0x01F4
loc_8c1C14Aa:
	#data 0x1414
	#align4

loc_8c1C14AC:
	#data bank1b.loc_8c1b6118
loc_8c1C14B0:
	#data bank1b.loc_8c1b6048
loc_8c1C14B4:
	#data 0x8C34BB67
loc_8c1C14B8:
	#data 0x8C34BB78
loc_8c1C14BC:
	#data 0x8C3531A0
loc_8c1C14C0:
	#data 0x8C3537CC
loc_8c1C14C4:
	#data 0x8C34BB80
loc_8c1C14C8:
	#data 0x8C34BB7C
loc_8c1C14CC:
	#data bank1a.loc_8c1a003E
loc_8c1C14D0:
	#data bank1b.loc_8c1b6A4C
loc_8c1C14D4:
	#data 0x8C34BB91

;==============================================
loc_8c1C14D8:
	mov.l @r10,r0
	add 0x01,r0
	bra loc_8c1c1506
	mov.l r0,@r10

loc_8c1C14E0:
	mov.l @(0xC0,PC),r2
	mov.w r9,@r2
	mov.l @r12,r3
	add 0x01,r3
	mov.l r3,@r12
	mov.b @r15,r1
	mov.b r1,@-r3
	mov.w @r13,r3
	add 0x01,r3
	mov.w r3,@r13
	mov.l @(0xB0,PC),r0
	mov.w @r13,r1
	mov.w @r0,r3
	cmp/eq r3,r1
	bf loc_8c1c1506
	mov.l @(0xAC,PC),r1
	jsr @r1
	nop 
	mov.b r8,@r11

loc_8c1c1506:
	mov.l @(bank1c.loc_8c1c15b0,pc),r2
	jsr @r2
	mov r15,r4
	exts.b r0,r0
	tst r0,r0
	bf bank1c.loc_8c1c145c

loc_8c1c1512:
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

loc_8c1C1526:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c1C15A0,pc),r14 ; r14 set to 0x1F4
	bra loc_8c1C161C
	mov 0x00,r12

loc_8c1C153C:
	extu.w r14,r2
	tst r2,r2
	bf.s loc_8c1c1550
	add 0xFF,r14
	mov.w @(0x5A,PC),r4
	mov.l @(0x6C,PC),r13
	jsr @r13
	nop 
	bra loc_8c1c1622
	nop 

loc_8c1C1550:
	mov.l @(0x70,PC),r13
	mov.l @(0x64,PC),r8
	mov.b @r13,r0
	mov.l @(0x64,PC),r10
	extu.b r0,r0
	mov.l @(0x64,PC),r11
	cmp/eq 0x02,r0
	bt.s loc_8c1c15d4
	mov 0x01,r9
	cmp/eq 0x08,r0
	bf loc_8c1c161a
	mov.l @(0x60,PC),r2
	jsr @r2
	nop 
	extu.w r0,r0
	tst r0,r0
	bt loc_8c1c158c
	mov.l @(0x58,PC),r9
	jsr @r9
	nop 
	mov.w @r11,r2
	tst r2,r2
	bt loc_8c1c1584
	mov 0x02,r4
	bra loc_8c1c161c
	mov.b r4,@r13

loc_8c1C1584:
	jsr @r10
	nop 
	bra loc_8c1c161c
	nop 

loc_8c1C158C:
	jsr @r8
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c1616
	mov.l @(0x38,PC),r13
	jsr @r13
	nop
	bra loc_8c1c1616
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C15A0:
	#data 0x01F4
loc_8c1C15A2:
	#data 0x1428
	#align4

loc_8c1C15A4:
	#data 0x8C34B2D2
loc_8c1C15A8:
	#data 0x8C3531A0
loc_8c1C15AC:
	#data bank1b.loc_8c1b6B2C
loc_8c1C15B0:
	#data bank19.loc_8c19EF30
loc_8c1C15B4:
	#data bank1a.loc_8c1a003E
loc_8c1C15B8:
	#data bank19.loc_8c19EEC4
loc_8c1C15BC:
	#data bank1b.loc_8c1b69D4
loc_8c1C15C0:
	#data 0x8C34BB68
loc_8c1C15C4:
	#data 0x8C34BB67
loc_8c1C15C8:
	#data bank1b.loc_8c1b6EA4
loc_8c1C15CC:
	#data bank1b.loc_8c1b68A2
loc_8c1C15D0:
	#data bank19.loc_8c19EE9E

;==============================================
loc_8c1C15D4:
	mov.l @(0x68,PC),r2
	jsr @r2
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c1606
	mov.l @(0x64,PC),r9
	mov.l @(0x60,PC),r8
	mov.l @r9,r4
	add 0x01,r4
	mov.l r4,@r9
	add 0xFF,r4
	jsr @r8
	mov.b @r4,r4
	mov.w @r11,r3
	add 0xFF,r3
	mov.w r3,@r11
	mov.w @r11,r2
	tst r2,r2
	bf loc_8c1c161c
	jsr @r10
	nop 
	mov 0x08,r4
	bra loc_8c1c161c
	mov.b r4,@r13

loc_8c1C1606:
	jsr @r8
	nop 
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c1616
	mov.l @(0x38,PC),r13
	jsr @r13
	nop 

loc_8c1C1616:
	bra loc_8c1c161c
	mov r9,r12

loc_8c1C161A:
	mov r9,r12

loc_8c1c161c:
	exts.b r12,r2
	tst r2,r2
	bt bank1c.loc_8c1c153c
	
loc_8c1c1622:
	lds.l @r15+,pr 
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
	
loc_8c1C1634:
	mov.l @(loc_8c1C1650,pc),r3 ; r3 set to 0x8C3537A8
	mov.b r4,@r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8c1C1654,pc),r2 ; r2 set to 0x8C34BB67
	rts
	mov.b r4,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C1640:
	#data bank19.loc_8c19EF5E
loc_8c1C1644:
	#data bank19.loc_8c19EF9A
loc_8c1C1648:
	#data 0x8C34BB6C
loc_8c1C164C:
	#data bank19.loc_8c19EE78
loc_8c1C1650:
	#data 0x8C3537A8
loc_8c1C1654:
	#data 0x8C34BB67

;==============================================
loc_8c1C1658:
	mov.l @(loc_8c1C1694,pc),r3 ; r3 set to 0x8C1B3454
	jmp @r3
	mov 0x07,r4

loc_8c1C165E:
	mov.l @(loc_8c1C1694,pc),r3 ; r3 set to 0x8C1B3454
	jmp @r3
	mov 0x08,r4

loc_8c1C1664:
	mov.l @(loc_8c1C1694,pc),r3 ; r3 set to 0x8C1B3454
	jmp @r3
	mov 0x0B,r4

loc_8c1C166A:
	mov.l @(loc_8c1C1698,pc),r5 ; r5 set to 0x8C34B302
	extu.b r4,r6
	mov r6,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1C167C
	mov 0x40,r2 ; r2 set to 0x40
	bra loc_8c1C168A
	mov.b r2,@r5

loc_8c1C167C:
	cmp/eq 0x02,r0
	bf loc_8c1C1686
	mov.w @(loc_8c1C1690,pc),r3 ; r3 set to 0x80
	bra loc_8c1C168A
	mov.b r3,@r5

loc_8c1C1686:
	mov.w @(loc_8c1C1692,pc),r1 ; r1 set to 0xC0
	mov.b r1,@r5

loc_8c1C168A:
	mov.l @(loc_8c1C1694,pc),r3 ; r3 set to 0x8C1B3454, r3 set to 0x8C1B3454
	jmp @r3
	mov 0x0C,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C1690:
	#data 0x0080
loc_8c1C1692:
	#data 0x00C0
	#align4

loc_8c1C1694:
	#data bank1b.loc_8c1b3454
loc_8c1C1698:
	#data 0x8C34B302

;==============================================
loc_8c1C169C:
	mov.l @(0xE8,PC),r3
	mov 0x00,r4
	mov.w r4,@r3
	mov.l @(0xE8,PC),r5
	mov.l @(0xE8,PC),r2
	mov.l r2,@r5
	mov r2,r6
	mov.w @(0xD6,PC),r5
	mov r5,r7

loc_8c1C16AE:
	dt r7
	mov.b r4,@r6
	bf.s loc_8c1c16ae
	add 0x01,r6
	mov.l @(0xDC,PC),r7
	mov r5,r6

loc_8c1C16BA:
	dt r6
	mov.b r4,@r7
	bf.s loc_8c1c16ba
	add 0x01,r7
	mov.l @(0xD4,PC),r3
	mov.w r4,@r3
	mov.l @(0xD4,PC),r6
	mov.w @(0xBA,PC),r5

loc_8c1C16CA:
	dt r5
	mov.b r4,@r6
	bf.s loc_8c1c16ca
	add 0x01,r6
	mov.l @(0xCC,PC),r2
	mov.w r4,@r2
	mov.l @(0xCC,PC),r3
	mov.w r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.w r4,@r2
	mov.l @(0xCC,PC),r3
	mov.w r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.l r4,@r2
	mov.l @(0xCC,PC),r3
	mov.l r4,@r3
	mov.l @(0xCC,PC),r1
	mov.l r4,@r1
	mov.l @(0xCC,PC),r2
	mov.l r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	mov.b r4,@r3
	mov.l @(0xCC,PC),r1
	mov.b r4,@r1
	mov.l @(0xCC,PC),r2
	mov.b r4,@r2
	mov.l @(0xCC,PC),r3
	bra loc_8c1c1850
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c1784:
	#data 0x1000
loc_8c1c1786:
	#data 0x040C
	#align4

loc_8c1c1788:
	#data 0x8C351784
loc_8c1c178c:
	#data 0x8C351770
loc_8c1c1790:
	#data 0x8C350770
loc_8c1c1794:
	#data 0x8C35178A
loc_8c1c1798:
	#data 0x8C35279C
loc_8c1c179c:
	#data 0x8C3527A0
loc_8c1c17a0:
	#data 0x8C352BB8
loc_8c1c17a4:
	#data 0x8C352BBA
loc_8c1c17a8:
	#data 0x8C352BBC
loc_8c1c17ac:
	#data 0x8C352BBD
loc_8c1c17b0:
	#data 0x8C352BBE
loc_8c1c17b4:
	#data 0x8C352BBF
loc_8c1c17b8:
	#data 0x8C352BC8
loc_8c1c17bc:
	#data 0x8C352DDC
loc_8c1c17c0:
	#data 0x8C352DDE
loc_8c1c17c4:
	#data 0x8C352DDF
loc_8c1c17c8:
	#data 0x8C352DE0
loc_8c1c17cc:
	#data 0x8C352DE1
loc_8c1c17d0:
	#data 0x8C352DE2
loc_8c1c17d4:
	#data 0x8C352DE3
loc_8c1c17d8:
	#data 0x8C352DE4
loc_8c1c17dc:
	#data 0x8C352DE5
loc_8c1c17e0:
	#data 0x8C352DE6
loc_8c1c17e4:
	#data 0x8C352DE7
loc_8c1c17e8:
	#data 0x8C352DE8
loc_8c1c17ec:
	#data 0x8C352DE9
loc_8c1c17f0:
	#data 0x8C352DEA
loc_8c1c17f4:
	#data 0x8C352DEC
loc_8c1c17f8:
	#data 0x8C352DF0
loc_8c1c17fc:
	#data 0x8C352DF4
loc_8c1c1800:
	#data 0x8C352DF8
loc_8c1c1804:
	#data 0x8C352DFC
loc_8c1c1808:
	#data 0x8C352DFD
loc_8c1c180c:
	#data 0x8C352DFE
loc_8c1c1810:
	#data 0x8C352DFF
loc_8c1c1814:
	#data 0x8C352E00
loc_8c1c1818:
	#data 0x8C352E01
loc_8c1c181c:
	#data 0x8C352E02
loc_8c1c1820:
	#data 0x8C352E03
loc_8c1c1824:
	#data 0x8C352E04
loc_8c1c1828:
	#data 0x8C352E05
loc_8c1c182c:
	#data 0x8C352E06
loc_8c1c1830:
	#data 0x8C352E07
loc_8c1c1834:
	#data 0x8C352E08
loc_8c1c1838:
	#data 0x8C352E09
loc_8c1c183c:
	#data 0x8C352E0A
loc_8c1c1840:
	#data 0x8C352E0B
loc_8c1c1844:
	#data 0x8C352E0C
loc_8c1c1848:
	#data 0x8C352E0D
loc_8c1c184c:
	#data 0x8C352E0E

;==============================================
loc_8c1C1850:
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r2
	mov.b r4,@r2
	mov.l @(0x134,PC),r3
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r2
	mov.b r4,@r2
	mov.l @(0x134,PC),r3
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r2
	mov.b r4,@r2
	mov.l @(0x134,PC),r3
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r2
	mov.b r4,@r2
	mov.l @(0x134,PC),r3
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r2
	mov.b r4,@r2
	mov.l @(0x134,PC),r3
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r2
	mov.b r4,@r2
	mov.l @(0x134,PC),r3
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r2
	mov.b r4,@r2
	mov.l @(0x134,PC),r3
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r2
	mov.w r4,@r2
	mov.l @(0x134,PC),r3
	mov.w r4,@r3
	mov.l @(0x134,PC),r1
	mov.w r4,@r1
	mov.l @(0x134,PC),r2
	mov.w r4,@r2
	mov.l @(0x134,PC),r3
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r2
	mov.b r4,@r2
	mov.l @(0x134,PC),r3
	mov.b r4,@r3
	mov.l @(0x134,PC),r1
	mov.b r4,@r1
	mov.l @(0x134,PC),r7
	mov 0x04,r5
	mov r5,r6

loc_8c1C18D4:
	dt r6
	mov.b r4,@r7
	bf.s loc_8c1c18d4
	add 0x01,r7
	mov.l @(0x128,PC),r3
	mov.l r4,@r3
	mov.l @(0x128,PC),r2
	mov.b r4,@r2
	mov.l @(0x128,PC),r1
	mov.b r4,@r1
	mov.l @(0x128,PC),r3
	mov.b r4,@r3
	mov.l @(0x128,PC),r2
	mov.b r4,@r2
	mov.l @(0x128,PC),r1
	mov.b r4,@r1
	mov.l @(0x128,PC),r3
	mov.b r4,@r3
	mov.l @(0x128,PC),r2
	mov.b r4,@r2
	mov.l @(0x128,PC),r1
	mov.b r4,@r1
	mov.l @(0x128,PC),r3
	mov.b r4,@r3
	mov.l @(0x128,PC),r2
	mov.b r4,@r2
	mov.l @(0x128,PC),r1
	mov.b r4,@r1
	mov.l @(0x128,PC),r3
	mov.b r4,@r3
	mov.l @(0x128,PC),r2
	mov.b r4,@r2
	mov.l @(0x128,PC),r1
	mov.w r4,@r1
	mov.l @(0x128,PC),r3
	mov.w r4,@r3
	mov.l @(0x128,PC),r2
	mov r5,r6
	mov.w r4,@r2
	mov.l @(0x128,PC),r1
	mov.w r4,@r1
	mov.l @(0x128,PC),r3
	mov.w r4,@r3
	mov.l @(0x128,PC),r2
	mov.w r4,@r2
	mov.l @(0x128,PC),r1
	mov.b r4,@r1
	mov.l @(0x128,PC),r3
	mov.b r4,@r3
	mov.l @(0x128,PC),r2
	mov.b r4,@r2
	mov.l @(0x128,PC),r1
	mov.b r4,@r1
	mov.l @(0x128,PC),r3
	mov.b r4,@r3
	mov.l @(0x128,PC),r2
	mov.b r4,@r2
	mov.l @(0x128,PC),r1
	mov.w r4,@r1
	mov.l @(0x128,PC),r3
	mov.w r4,@r3
	mov.l @(0x128,PC),r2
	mov.w r4,@r2
	mov.l @(0x128,PC),r1
	mov.b r4,@r1
	mov.l @(0x128,PC),r7

loc_8c1C1958:
	dt r6
	mov.w r4,@r7
	bf.s loc_8c1c1958
	add 0x02,r7
	mov.l @(0x120,PC),r7
	mov r5,r6

loc_8c1C1964:
	dt r6
	mov.w r4,@r7
	bf.s loc_8c1c1964
	add 0x02,r7
	rts 
	nop 

;==============================================
loc_8c1C1970:
	mov.l @(0x118,PC),r3
	sts.l pr,@-r15
	mov.w @r3,r0
	mov.l @(0x118,PC),r2
	mov.l @(0x10C,PC),r4
	extu.w r0,r0
	jsr @r2
	mov.l @r4,r1
	lds.l @r15+,pr
	rts 
	mov.l r0,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C1988:
	#data 0x8C352E0F
loc_8c1C198c:
	#data 0x8C352E10
loc_8c1C1990:
	#data 0x8C352E11
loc_8c1C1994:
	#data 0x8C352E12
loc_8c1C1998:
	#data 0x8C352E13
loc_8c1C199c:
	#data 0x8C352E14
loc_8c1C19a0:
	#data 0x8C352E15
loc_8c1C19a4:
	#data 0x8C352E16
loc_8c1C19a8:
	#data 0x8C352E17
loc_8c1C19ac:
	#data 0x8C352E18
loc_8c1C19b0:
	#data 0x8C352E19
loc_8c1C19b4:
	#data 0x8C352E1A
loc_8c1C19b8:
	#data 0x8C352E1B
loc_8c1C19bc:
	#data 0x8C352E1C
loc_8c1C19c0:
	#data 0x8C352E1D
loc_8c1C19c4:
	#data 0x8C352E1E
loc_8c1C19c8:
	#data 0x8C352E1F
loc_8c1C19cc:
	#data 0x8C352E20
loc_8c1C19d0:
	#data 0x8C352E21
loc_8c1C19d4:
	#data 0x8C352E22
loc_8c1C19d8:
	#data 0x8C352E23
loc_8c1C19dc:
	#data 0x8C352E24
loc_8c1C19e0:
	#data 0x8C352E26
loc_8c1C19e4:
	#data 0x8C352E28
loc_8c1C19e8:
	#data 0x8C352E2A
loc_8c1C19ec:
	#data 0x8C352E2C
loc_8c1C19f0:
	#data 0x8C352E2E
loc_8c1C19f4:
	#data 0x8C352E2F
loc_8c1C19f8:
	#data 0x8C352E30
loc_8c1C19fc:
	#data 0x8C352E31
loc_8c1C1a00:
	#data 0x8C352E32
loc_8c1C1a04:
	#data 0x8C352E33
loc_8c1C1a08:
	#data 0x8C352E38
loc_8c1C1a0c:
	#data 0x8C352E3C
loc_8c1C1a10:
	#data 0x8C352E3D
loc_8c1C1a14:
	#data 0x8C352E3E
loc_8c1C1a18:
	#data 0x8C352E3F
loc_8c1C1a1c:
	#data 0x8C352E40
loc_8c1C1a20:
	#data 0x8C352E4A
loc_8c1C1a24:
	#data 0x8C352E4B
loc_8c1C1a28:
	#data 0x8C352E4C
loc_8c1C1a2c:
	#data 0x8C352E4D
loc_8c1C1a30:
	#data 0x8C352E4E
loc_8c1C1a34:
	#data 0x8C352E4F
loc_8c1C1a38:
	#data 0x8C352E50
loc_8c1C1a3c:
	#data 0x8C352E51
loc_8c1C1a40:
	#data 0x8C352E52
loc_8c1C1a44:
	#data 0x8C352E54
loc_8c1C1a48:
	#data 0x8C352E56
loc_8c1C1a4c:
	#data 0x8C352E58
loc_8c1C1a50:
	#data 0x8C352E5A
loc_8c1C1a54:
	#data 0x8C352E5C
loc_8c1C1a58:
	#data 0x8C352E5E
loc_8c1C1a5c:
	#data 0x8C352E5F
loc_8c1C1a60:
	#data 0x8C352E60
loc_8c1C1a64:
	#data 0x8C352E61
loc_8c1C1a68:
	#data 0x8C352E62
loc_8c1C1a6c:
	#data 0x8C352E63
loc_8c1C1a70:
	#data 0x8C352E64
loc_8c1C1a74:
	#data 0x8C352E66
loc_8c1C1a78:
	#data 0x8C352E6C
loc_8c1C1a7c:
	#data 0x8C352E8D
loc_8c1C1a80:
	#data 0x8C352E9E
loc_8c1C1a84:
	#data 0x8C352EB8
loc_8c1C1a88:
	#data 0x8C352EE0
loc_8c1C1a8c:
	#data 0x8C352F4E
loc_8c1C1A90:
	#data bank12.loc_8c1291DC

;==============================================
loc_8c1C1A94:
	mov.l r14,@-r15
	mov 0x03,r1 ; r1 set to 0x03
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1C1C0C,pc),r2 ; r2 set to 0x8C34B0B0
	sts.l pr,@-r15
	mov.b @r2,r3
	extu.b r3,r3
	cmp/gt r1,r3
	add 0xE8,r15
	bf loc_8c1C1AB6
	bra loc_8c1C20D4
	nop

loc_8c1C1AB6:
	mov.l @(loc_8c1C1C2C,pc),r2 ; r2 set to 0x8C34B0A3
	mov.l @(loc_8c1C1C24,pc),r13 ; r13 set to 0x8C34AF50
	mov.b @r2,r0
	mov.l @(loc_8c1C1C28,pc),r14 ; r14 set to 0x8C34B288
	extu.b r0,r0
	mov.l @(loc_8c1C1C14,pc),r8 ; r8 set to 0x8C34B2CC
	mov.l @(loc_8c1C1C10,pc),r9 ; r9 set to 0x8C34B128
	cmp/eq 0x00,r0
	mov.l @(loc_8c1C1C18,pc),r10 ; r10 set to 0x8C1B3EEC
	mov.l @(loc_8c1C1C20,pc),r12 ; r12 set to 0x8C1B689C
	mov.l @(loc_8c1C1C1C,pc),r11 ; r11 set to 0x8C1B3F0C
	bt/s loc_8c1C1AF8
	mov r14,r5 ; r5 set to 0x8C34B288
	cmp/eq 0x01,r0
	bt loc_8c1C1B00
	cmp/eq 0x02,r0
	bt loc_8c1C1B94
	cmp/eq 0x03,r0
	bt loc_8c1C1BCC
	cmp/eq 0x04,r0
	bf loc_8c1C1AE4
	bra loc_8c1C1BFA
	nop

loc_8c1C1AE4:
	cmp/eq 0x05,r0
	bf loc_8c1C1AEC
	bra loc_8c1C1D5C
	nop

loc_8c1C1AEC:
	cmp/eq 0x06,r0
	bf loc_8c1C1AF4
	bra loc_8c1C1F90
	nop

loc_8c1C1AF4:
	bra loc_8c1C20D4
	nop

loc_8c1C1AF8:
	bsr loc_8c1C2102
	nop
	bra loc_8c1C20D4
	nop

loc_8c1C1B00:
	mov.b @(0x06,r5),r0
	extu.b r0,r0
	tst 0x06,r0
	bf loc_8c1C1B0C
	bra loc_8c1C20D4
	nop

loc_8c1C1B0C:
	mov.l @(loc_8c1C1C30,pc),r0 ; r0 set to 0x8C34AF67
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x01,r0
	bf loc_8c1C1B1A
	bra loc_8c1C20D4
	nop

loc_8c1C1B1A:
	mov r5,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1C1B2C
	bra loc_8c1C20D4
	nop

loc_8c1C1B2C:
	mov r5,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1C1B3E
	bra loc_8c1C20D4
	nop

loc_8c1C1B3E:
	mov.l @(loc_8c1C1C34,pc),r2 ; r2 set to 0x8C19D926
	jsr @r2
	nop
	extu.b r0,r0
	extu.w r0,r4
	tst r4,r4
	bf/s loc_8c1C1B52
	mov.w r0,@r15
	bra loc_8c1C20D4
	nop

loc_8c1C1B52:
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1C1B6E
	mov.l @r8,r3
	add 0x0A,r3
	mov.l r3,@r9
	jsr @r12
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8c1C1C38,pc),r2 ; r2 set to 0x8C1B6048
	jsr @r2
	nop
	bra loc_8c1C20D4
	nop

loc_8c1C1B6E:
	mov 0x08,r2 ; r2 set to 0x08
	add 0x10,r13
	mov.b r2,@r13
	mov.l @(loc_8c1C1C3C,pc),r3 ; r3 set to 0x8C19FED6
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	mov.b @(0x0C,r14),r0
	or 0x01,r0
	mov.b r0,@(0x0C,r14)
	mov.b @(0x03,r14),r0
	or 0x08,r0
	mov.b r0,@(0x03,r14)
	mov.l @(loc_8c1C1C40,pc),r3 ; r3 set to 0x8C1A1290
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1C1C2C,pc),r3 ; r3 set to 0x8C34B0A3
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_8c1C20D4
	mov.b r2,@r3

loc_8c1C1B94:
	mov.l @(loc_8c1C1C34,pc),r3 ; r3 set to 0x8C19D926
	jsr @r3
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1C1BA4
	bra loc_8c1C20D4
	nop

loc_8c1C1BA4:
	mov.l @r8,r3
	add 0x64,r3
	mov.l r3,@r9
	jsr @r12
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8c1C1C3C,pc),r2 ; r2 set to 0x8C19FED6
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1C1C38,pc),r1 ; r1 set to 0x8C1B6048
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c1C1C0C,pc),r2 ; r2 set to 0x8C34B0B0
	jsr @r1
	mov.b r3,@r2 ; r2 ??
	mov.l @(loc_8c1C1C44,pc),r3 ; r3 set to 0x8C1B6118
	jsr @r3
	nop
	bsr loc_8c1C2102
	nop
	bra loc_8c1C20D4
	nop

loc_8c1C1BCC:
	add 0x12,r13
	mov.b @r13,r3
	tst r3,r3
	bf loc_8c1C1BD8
	bra loc_8c1C20D4
	nop

loc_8c1C1BD8:
	mov.l @(loc_8c1C1C48,pc),r2 ; r2 set to 0x8C34AFA4
	mov.l @(loc_8c1C1C14,pc),r0 ; r0 set to 0x8C34B2CC
	mov.l @r2,r1
	mov.l @r0,r3
	cmp/hs r3,r1
	bf loc_8c1C1BE8
	bra loc_8c1C20D4
	nop

loc_8c1C1BE8:
	mov.b @(0x0C,r5),r0
	mov.l @(loc_8c1C1C4C,pc),r3 ; r3 set to 0x8C1AFD14
	or 0x20,r0
	jsr @r3
	mov.b r0,@(0x0C,r5)
	mov.l @(loc_8c1C1C2C,pc),r3 ; r3 set to 0x8C34B0A3
	mov 0x06,r2 ; r2 set to 0x06
	bra loc_8c1C20D4
	mov.b r2,@r3

loc_8c1C1BFA:
	mov.l @(loc_8c1C1C50,pc),r3 ; r3 set to 0x8C34B0A4
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1C1C54
	cmp/eq 0x01,r0
	bt loc_8c1C1C86
	bra loc_8c1C20D4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C1C0C:
	#data 0x8C34B0B0
loc_8c1C1C10:
	#data 0x8C34B128
loc_8c1C1C14:
	#data 0x8C34B2CC
loc_8c1C1C18:
	#data bank1b.loc_8c1b3EEC
loc_8c1C1C1C:
	#data bank1b.loc_8c1b3F0C
loc_8c1C1C20:
	#data bank1b.loc_8c1b689C
loc_8c1C1C24:
	#data 0x8C34AF50
loc_8c1C1C28:
	#data 0x8C34B288
loc_8c1C1C2C:
	#data 0x8C34B0A3
loc_8c1C1C30:
	#data 0x8C34AF67
loc_8c1C1C34:
	#data bank19.loc_8c19D926
loc_8c1C1C38:
	#data bank1b.loc_8c1b6048
loc_8c1C1C3C:
	#data bank19.loc_8c19FED6
loc_8c1C1C40:
	#data bank1a.loc_8c1a1290
loc_8c1C1C44:
	#data bank1b.loc_8c1b6118
loc_8c1C1C48:
	#data 0x8C34AFA4
loc_8c1C1C4C:
	#data bank1a.loc_8c1aFD14
loc_8c1C1C50:
	#data 0x8C34B0A4

;==============================================
loc_8c1C1C54:
	mov.b @(0x07,r5),r0
	and 0xF7,r0
	mov.b r0,@(0x07,r5)
	mov.b @(0x0E,r13),r0
	or 0x80,r0
	mov.b r0,@(0x0E,r13)
	mov.b @(0x09,r14),r0
	or 0x80,r0
	mov.b r0,@(0x09,r14)
	mov r14,r4
	add 0x06,r4
	mov.b @r4,r0
	mov.l @(loc_8c1C1D30,pc),r1 ; r1 set to 0x8C19D3BC
	and 0xF8,r0
	or 0x09,r0
	jsr @r1
	mov.b r0,@r4
	mov.l @(loc_8c1C1D34,pc),r4 ; r4 set to 0x8C34B0AC
	mov.w @(loc_8c1C1D2E,pc),r5 ; r5 set to 0x7D0
	jsr @r10
	nop
	mov.l @(loc_8c1C1D38,pc),r2 ; r2 set to 0x8C34B0A4
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8c1C20D4
	mov.b r3,@r2
	
loc_8c1c1c86:
	mov.l @(bank1c.loc_8c1c1d40,pc),r1
	mov.l @(loc_8C1C1D3C,pc),r4
	jsr @r1
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c1d10
	mov r14,r4
	add 0x03,r4
	mov.b @r4,r0
	or 0x08,r0 
	mov.b r0,@r4
	mov.b @r4,r0
	or 0x40,r0 
	mov.b r0,@r4
	mov.l @(bank1c.loc_8c1c1d44,pc),r2
	jsr @r2
	mov 0x00,r4
	mov.l @r8,r3
	add 0x19,r3
	mov.l r3,@r9
	jsr @r12
	mov 0x01,r4
	mov r13,r0
	nop 
	add 0x10,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x40,r0 
	bf loc_8c1c1ccc
	mov.b @(0x03,r14),r0 
	mov.l @(bank1c.loc_8c1c1d48,pc),r3
	or 0x20,r0 
	jsr @r3
	mov.b r0,@(0x03,r14) 

loc_8c1c1ccc:
	mov r13,r2
	add 0x12,r2
	mov.b @r2,r3
	mov 0x64,r2
	mov.l @r8,r1
	extu.b r3,r3
	mov.l @(loc_8C1C1D4C,pc),r0
	mulu.w r2,r3
	mov.l @(bank1c.loc_8c1c1d50,pc),r2
	sts macl,r3
	add r1,r3
	jsr @r2
	mov.l r3,@r0
	mov r13,r0
	nop 
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x03,r0 
	bf loc_8c1c1d06
	mov r13,r0
	nop 
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x0C,r0 
	bt loc_8c1c1d06
	jsr @r12
	mov 0x00,r4

loc_8c1c1d06:
	mov.l @(bank1c.loc_8c1c1d54,pc),r2
	jsr @r2
	nop 
	bra bank1c.loc_8c1c1f4c
	nop 

loc_8c1c1d10:
	mov.l @(bank1c.loc_8c1c1d34,pc),r3
	jsr @r11
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf bank1c.loc_8c1c1dca
	mov.l @(loc_8C1C1D58,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0 
	bf loc_8c1c1d2a
	bra bank1c.loc_8c1c20d4
	nop 

loc_8c1c1d2a:
	bra bank1c.loc_8c1c1dca
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c1d2e:
	#data 0x07D0
	#align4

loc_8c1c1d30:
	#data bank19.loc_8c19D3BC
loc_8c1c1d34:
	#data 0x8C34B0AC
loc_8c1c1d38:
	#data 0x8C34B0A4
loc_8C1C1D3C:
	#data 0x8C34B0A8
loc_8c1c1d40:
	#data bank19.loc_8c19d582
loc_8c1c1d44:
	#data bank1a.loc_8c1a1290
loc_8c1c1d48:
	#data bank19.loc_8c19d7f4
loc_8C1C1D4C:
	#data 0x8C34AFA4
loc_8c1c1d50:
	#data bank1b.loc_8c1bf5c8
loc_8c1c1d54:
	#data bank1b.loc_8c1bf9b0
loc_8C1C1D58:
	#data 0x8C34B28F

;==============================================
loc_8c1C1D5C:
	mov.l @(loc_8c1C1E44,pc),r9 ; r9 set to 0x8C34B0A5
	mov.l @(loc_8c1C1E48,pc),r3 ; r3 set to 0x8C34B0AC
	mov.b @r9,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8c1C1D8E
	mov.l @r3,r4
	cmp/eq 0x01,r0
	bt loc_8c1C1DC0
	cmp/eq 0x02,r0
	bt loc_8c1C1E00
	cmp/eq 0x03,r0
	bt loc_8c1C1E14
	cmp/eq 0x04,r0
	bt loc_8c1C1E72
	cmp/eq 0x05,r0
	bf loc_8c1C1D82
	bra loc_8c1C1E9A
	nop

loc_8c1C1D82:
	cmp/eq 0x06,r0
	bf loc_8c1C1D8A
	bra loc_8c1C1F06
	nop

loc_8c1C1D8A:
	bra loc_8c1C20D4
	nop

loc_8c1C1D8E:
	mov r5,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1C1E0E
	mov.l @(loc_8c1C1E4C,pc),r1 ; r1 set to 0x8C1A1290
	jsr @r1
	mov 0x00,r4 ; r4 set to 0x00
	mov r14,r3
	add 0x18,r3
	mov.b @r3,r0
	and 0x3F,r0
	mov.b r0,@r3
	mov r14,r3
	add 0x1B,r3
	mov.b @r3,r0
	mov.l @(loc_8c1C1E48,pc),r4 ; r4 set to 0x8C34B0AC
	or 0x04,r0
	mov.w @(loc_8c1C1E40,pc),r5 ; r5 set to 0x190
	jsr @r10
	mov.b r0,@r3
	bra loc_8c1C1ED2
	mov 0x03,r2
	
loc_8c1C1DC0:
	jsr @r11
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C1DD2

loc_8c1C1DCA:
	bsr loc_8c1C20E8
	nop
	bra loc_8c1C20D4
	nop

loc_8c1C1DD2:
	mov r14,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1C1DE4
	bra loc_8c1C20D4
	nop

loc_8c1C1DE4:
	mov.l @(loc_8c1C1E50,pc),r2 ; r2 set to 0x8C1B6720
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C1DF4
	bra loc_8c1C20D4
	nop

loc_8c1C1DF4:
	mov.l @(loc_8c1C1E48,pc),r4 ; r4 set to 0x8C34B0AC
	jsr @r10
	mov 0x0A,r5 ; r5 set to 0x0A
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_8c1C20D4
	mov.b r2,@r9

loc_8c1C1E00:
	jsr @r11
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C1E0E
	bra loc_8c1C20D4
	nop

loc_8c1C1E0E:
	mov 0x04,r3 ; r3 set to 0x04
	bra loc_8c1C20D4
	mov.b r3,@r9

loc_8c1C1E14:
	jsr @r11
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C1E2C
	mov.l @(loc_8c1C1E54,pc),r0 ; r0 set to 0x8C34B2A0
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0xC0,r0
	bf loc_8c1C1E2C
	bra loc_8c1C20D4
	nop

loc_8c1C1E2C:
	mov r14,r0
	nop
	add 0x18,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1C1E58
	mov 0x00,r5 ; r5 set to 0x00
	bra loc_8c1C1E5C
	mov 0x62,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C1E40:
	#data 0x0190
	#align4

loc_8c1C1E44:
	#data 0x8C34B0A5
loc_8c1C1E48:
	#data 0x8C34B0AC
loc_8c1C1E4C:
	#data bank1a.loc_8c1a1290
loc_8c1C1E50:
	#data bank1b.loc_8c1b6720
loc_8c1C1E54:
	#data 0x8C34B2A0

;==============================================
loc_8c1C1E58:
	mov 0x61,r4 ; r4 set to 0x61
	mov 0x00,r5 ; r5 set to 0x00

loc_8c1C1E5C:
	mov.l @(loc_8c1C1F58,pc),r2 ; r2 set to 0x8C1AED24, r2 set to 0x8C1AED24
	jsr @r2
	nop
	bsr loc_8c1C2102
	nop
	mov.l @(loc_8c1C1F58,pc),r2 ; r2 set to 0x8C1AED24, r2 set to 0x8C1AED24
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	jsr @r2
	mov r5,r4 ; r4 set to 0x00, r4 set to 0x00
	bra loc_8c1C1EFC
	nop

loc_8c1C1E72:
	jsr @r12
	mov 0x01,r4 ; r4 set to 0x01
	mov.b @(0x03,r14),r0
	and 0x17,r0
	mov.b r0,@(0x03,r14)
	mov.b @(0x0C,r14),r0
	mov.l @(loc_8c1C1F5C,pc),r3 ; r3 set to 0x8C19D61C
	and 0xDE,r0
	jsr @r3
	mov.b r0,@(0x0C,r14)
	mov.l @(loc_8c1C1F60,pc),r4 ; r4 set to 0x8C34B128
	mov.w @(loc_8c1C1F54,pc),r5 ; r5 set to 0x190
	jsr @r10
	nop
	mov.l @(loc_8c1C1F64,pc),r4 ; r4 set to 0x8C34B0AC
	mov.w @(loc_8c1C1F54,pc),r5 ; r5 set to 0x190
	jsr @r10
	nop
	bra loc_8c1C1ED2
	mov 0x05,r2

loc_8c1c1e9a:
	mov.l @(bank1c.loc_8c1c1f6c,pc),r1
	mov.l @(loc_8C1C1F68,pc),r4
	jsr @r1
	nop 
	extu.b r0,r0
	tst r0,r0
	bt bank1c.loc_8c1c1ed6
	mov.l @(bank1c.loc_8c1c1f70,pc),r2
	jsr @r2
	nop 
	mov r14,r4
	add 0x03,r4
	mov.b @r4,r0
	or 0x80,r0 
	mov.b r0,@r4
	mov.b @r4,r0
	or 0x08,r0 
	mov.b r0,@r4
	mov.l @(bank1c.loc_8c1c1f74,pc),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8C1C1F78,pc),r3
	mov 0x00,r2
	mov.b r2,@r3
	mov.l @(bank1c.loc_8c1c1f64,pc),r4
	jsr @r10
	mov 0x64,r5
	mov 0x06,r2

loc_8c1C1ED2:
	bra loc_8c1C20D4
	mov.b r2,@r9

loc_8c1C1ED6:
	mov.l @(0x8C,PC),r1
	jsr @r11
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c1ee6
	bra loc_8c1c20d4
	nop 

loc_8c1C1EE6:
	mov.l @(0x88,PC),r2
	jsr @r2
	nop 
	bsr loc_8c1c2102
	nop 
	mov.l @(0x64,PC),r2
	mov 0x00,r5
	jsr @r2
	mov 0x04,r4
	bra loc_8c1c2066
	nop 

loc_8c1C1EFC:
	mov.l @(loc_8c1C1F7C,pc),r2 ; r2 set to 0x8C1AFD44
	jsr @r2
	nop
	bra loc_8c1C20D4
	nop

loc_8c1C1F06:
	jsr @r11
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C1F14
	bra loc_8c1C20D4
	nop

loc_8c1c1f14:
	mov r13,r3
	add 0x12,r3
	mov.b @r3,r2
	mov 0x64,r3
	mov.l @r8,r1
	extu.b r2,r2
	mov.l @(loc_8C1C1F80,pc),r0
	mulu.w r3,r2
	sts macl,r2
	add r1,r2
	mov.l r2,@r0
	mov r13,r0
	nop 
	add 0x10,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x20,r0 
	bf loc_8c1c1f42
	mov.b @(0x03,r14),r0 
	mov.l @(bank1c.loc_8c1c1f84,pc),r3
	or 0x20,r0 
	jsr @r3
	mov.b r0,@(0x03,r14) 

loc_8c1c1f42:
	mov.l @(bank1c.loc_8c1c1f88,pc),r2
	jsr @r2
	nop 
	jsr @r12
	mov 0x00,r4

loc_8c1c1f4c:
	mov.l @(loc_8C1C1F8C,pc),r2
	mov 0x03,r3
	bra bank1c.loc_8c1c20d4
	mov.b r3,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c1f54:
	#data 0x0190
	#align4

loc_8c1c1f58:
	#data bank1a.loc_8c1aED24
loc_8c1c1f5c:
	#data bank19.loc_8c19D61C
loc_8c1c1f60:
	#data 0x8C34B128
loc_8c1c1f64:
	#data 0x8C34B0AC
loc_8c1c1f68:
	#data 0x8C34B0A8
loc_8c1c1f6c:
	#data bank19.loc_8c19D6B2
loc_8c1c1f70:
	#data bank1b.loc_8c1b6048
loc_8c1c1f74:
	#data bank1a.loc_8c1a1290
loc_8c1c1f78:
	#data 0x8C34B0B0
loc_8c1c1f7c:
	#data bank1a.loc_8c1aFD44
loc_8C1C1F80:
	#data 0x8C34AFA4
loc_8c1c1f84:
	#data bank19.loc_8c19d7f4
loc_8c1c1f88:
	#data bank1a.loc_8c1af91a
loc_8C1C1F8C:
	#data 0x8C34B0A3

;==============================================
loc_8c1C1F90:
	mov.l @(loc_8c1C2078,pc),r11 ; r11 set to 0x8C34B0A6
	mov.l @(loc_8c1C207C,pc),r13 ; r13 set to 0x8C1AEE08
	mov.b @r11,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1C1FAC
	cmp/eq 0x01,r0
	bt loc_8c1C2024
	cmp/eq 0x02,r0
	bf loc_8c1C1FA8
	bra loc_8c1C20B8
	nop

loc_8c1C1FA8:
	bra loc_8c1C20D4
	nop

loc_8c1c1fac:
	mov.l @(bank1c.loc_8c1c2080,pc),r3
	jsr @r3
	nop 
	mov.b @(0x0C,r14),r0 
	extu.b r0,r0
	tst 0x20,r0 
	bt loc_8c1c1fbe
	jsr @r13
	nop 
	
loc_8c1c1fbe:
	mov.b @(0x03,r14),r0 
	extu.b r0,r0
	tst 0x40,r0 
	bt loc_8c1c1ff2
	mov.l @(bank1c.loc_8c1c2088,pc),r2
	mov.l @(loc_8C1C2084,pc),r4
	jsr @r2
	nop 
	mov r14,r0
	nop 
	add 0x03,r0
	mov.l r0,@(0x08,r15) 
	mov.b @r0,r0
	mov.l @(bank1c.loc_8c1c208c,pc),r3
	jsr @r3
	mov.b r0,@(0x04,r15) 
	mov.b @(0x04,r15),r0 
	mov.l @(0x08,r15),r1
	mov.b r0,@r1
	mov.l @(bank1c.loc_8c1c2094,pc),r1
	mov 0x02,r2
	mov.l @(loc_8C1C2090,pc),r3
	jsr @r1
	mov.b r2,@r3
	bra loc_8c1c2024
	nop 
	
loc_8c1c1ff2:
	mov.l @r8,r1
	add 0x64,r1
	mov.l r1,@r9
	jsr @r12
	mov 0x01,r4
	mov.l @(loc_8C1C2098,pc),r2
	mov 0x00,r3
	mov.b r3,@r2
	mov.b @(0x03,r14),r0 
	extu.b r0,r0
	tst 0x80,r0 
	bt loc_8c1c201e
	mov.l @(bank1c.loc_8c1c209c,pc),r1
	mov.l @(loc_8C1C2084,pc),r4
	jsr @r1
	nop 
	mov.l @(bank1c.loc_8c1c20a0,pc),r3
	jsr @r3
	nop 
	mov 0x02,r2
	bra loc_8c1c20d4
	mov.b r2,@r11
	
loc_8c1c201e:
	mov.l @(bank1c.loc_8c1c20a4,pc),r3
	jsr @r3
	mov 0x00,r4
	
loc_8c1c2024:
	mov.b @(0x03,r14),r0 
	extu.b r0,r0
	tst 0x20,r0 
	bt loc_8c1c205a
	jsr @r13
	nop 
	jsr @r13
	nop 
	mov.l @(loc_8C1C2084,pc),r13
	mov.w @(loc_8C1C2074,pc),r4
	mov.w @r13,r2
	extu.w r2,r2
	cmp/gt r4,r2
	bf loc_8c1c2042
	mov.w r4,@r13
	
loc_8c1c2042:
	mov.w @r13,r4
	mov r15,r7
	mov.l @(bank1c.loc_8c1c20a8,pc),r2
	mov 0x0A,r5
	add 0x0C,r7
	mov 0x03,r6
	jsr @r2
	extu.w r4,r4
	mov.l @(bank1c.loc_8c1c20ac,pc),r3
	mov r15,r4
	jsr @r3
	add 0x0C,r4
	
loc_8c1c205a:
	bsr bank1c.loc_8c1c2102
	nop 
	mov.l @(bank1c.loc_8c1c20b0,pc),r3
	mov 0x00,r5
	jsr @r3
	mov r5,r4
	
loc_8c1c2066:
	mov.b @(0x06,r14),r0 
	mov.l @(bank1c.loc_8c1c20b4,pc),r3
	and 0xBF,r0 
	jsr @r3
	mov.b r0,@(0x06,r14) 
	bra loc_8c1c20d4
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1C2074:
	#data 0x00FF
	#align4

loc_8c1c2078:
	#data 0x8C34B0A6
loc_8c1c207c:
	#data bank1a.loc_8c1aEE08
loc_8c1c2080:
	#data bank1a.loc_8c1afe8a
loc_8C1C2084:
	#data 0x8C34B0A8
loc_8c1c2088:
	#data bank19.loc_8c19d582
loc_8c1c208c:
	#data bank1a.loc_8c1afa18
loc_8C1C2090:
	#data 0x8C34B2E3
loc_8c1c2094:
	#data bank1b.loc_8c1b374e
loc_8C1C2098:
	#data 0x8C34B0B0
loc_8c1c209c:
	#data bank19.loc_8c19d6b2
loc_8c1c20a0:
	#data bank19.loc_8c19d798
loc_8c1c20a4:
	#data bank19.loc_8c19fed6
loc_8c1c20a8:
	#data bank1a.loc_8c1af1a4
loc_8c1c20ac:
	#data bank1a.loc_8c1aecdc
loc_8c1c20b0:
	#data bank1a.loc_8c1aed24
loc_8c1c20b4:
	#data bank1a.loc_8c1afd44

;==============================================
loc_8c1c20b8:
	mov.l @(0x78,PC),r3
	jsr @r3
	mov r15,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c1c20d4
	mov.l @(0x70,PC),r3
	jsr @r3
	nop 
	mov.l @(0x70,PC),r2
	jsr @r2
	nop 
	mov 0x01,r3
	mov.b r3,@r11

loc_8c1C20D4:
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
loc_8c1C20E8:
	sts.l pr,@-r15
	bsr loc_8c1C2102
	nop
	mov.l @(loc_8c1C2140,pc),r1 ; r1 set to 0x8C1AFA18
	jsr @r1
	nop
	mov.l @(loc_8c1C2144,pc),r3 ; r3 set to 0x8C1AED24
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov 0x03,r4 ; r4 set to 0x03
	mov.l @(loc_8c1C2148,pc),r2 ; r2 set to 0x8C1AFD44
	jmp @r2
	lds.l @r15+,pr

loc_8c1C2102:
	sts.l pr,@-r15
	mov.l @(loc_8c1C214C,pc),r3 ; r3 set to 0x8C1A1290
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8c1C2150,pc),r2 ; r2 set to 0x8C34AF60
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1C2154,pc),r1 ; r1 set to 0x8C34B0A3
	mov.b r3,@r1 ; r1 ??
	mov.l @(loc_8c1C2158,pc),r0 ; r0 set to 0x8C34B0A5
	mov.b r4,@r0 ; r0 ??
	mov.l @(loc_8c1C215C,pc),r3 ; r3 set to 0x8C34B0A4
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c1C2160,pc),r2 ; r2 set to 0x8C34B0A6
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8c1C2164,pc),r4 ; r4 set to 0x8C34B288
	mov.b @(0x03,r4),r0
	and 0x17,r0
	mov.b r0,@(0x03,r4)
	mov.b @(0x0C,r4),r0
	lds.l @r15+,pr
	and 0xDE,r0
	rts
	mov.b r0,@(0x0C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C2134:
	#data bank19.loc_8c19D6B2
loc_8c1C2138:
	#data bank1b.loc_8c1b6048
loc_8c1C213C:
	#data bank1a.loc_8c1a048C
loc_8c1C2140:
	#data bank1a.loc_8c1aFA18
loc_8c1C2144:
	#data bank1a.loc_8c1aED24
loc_8c1C2148:
	#data bank1a.loc_8c1aFD44
loc_8c1C214C:
	#data bank1a.loc_8c1a1290
loc_8c1C2150:
	#data 0x8C34AF60
loc_8c1C2154:
	#data 0x8C34B0A3
loc_8c1C2158:
	#data 0x8C34B0A5
loc_8c1C215C:
	#data 0x8C34B0A4
loc_8c1C2160:
	#data 0x8C34B0A6
loc_8c1C2164:
	#data 0x8C34B288

;==============================================
loc_8c1C2168:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c1C2B48
	mov 0x00,r12 ; r12 set to 0x00
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C2196
	mov.l @(loc_8c1C21C8,pc),r2 ; r2 set to 0x8C34B03A
	mov 0x00,r3 ; r3 set to 0x00
	mov r3,r4 ; r4 set to 0x00
	mov.b r3,@r2 ; r2 ??
	mov.l @(loc_8c1C21CC,pc),r3 ; r3 set to 0x8C1995D6
	jsr @r3
	nop
	bra loc_8c1C26F4
	mov 0x03,r0

loc_8c1C2196:
	mov.l @(loc_8c1C21E8,pc),r2 ; r2 set to 0x8C34B194
	mov.l @(loc_8c1C21E4,pc),r14 ; r14 set to 0x8C1B3F0C
	mov.b @r2,r0
	mov.l @(loc_8c1C21E0,pc),r13 ; r13 set to 0x8C34B1F8
	extu.b r0,r0
	mov.l @(loc_8c1C21D4,pc),r9 ; r9 set to 0x8C34B288
	mov.l @(loc_8c1C21D0,pc),r8 ; r8 set to 0x8C34B039
	cmp/eq 0x00,r0
	mov.l @(loc_8c1C21DC,pc),r11 ; r11 set to 0x8C1B3EEC
	mov.l @(loc_8c1C21D8,pc),r10 ; r10 set to 0x8C34AF50
	bt loc_8c1C21EC
	cmp/eq 0x01,r0
	bf loc_8c1C21B4
	bra loc_8c1C22D0
	nop

loc_8c1C21B4:
	cmp/eq 0x02,r0
	bf loc_8c1C21BC
	bra loc_8c1C236C
	nop

loc_8c1C21BC:
	cmp/eq 0x03,r0
	bf loc_8c1C21C4
	bra loc_8c1C26EE
	nop

loc_8c1C21C4:
	bra loc_8c1C26F0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C21C8:
	#data 0x8C34B03A
loc_8c1C21CC:
	#data bank19.loc_8c1995D6
loc_8c1C21D0:
	#data 0x8C34B039
loc_8c1C21D4:
	#data 0x8C34B288
loc_8c1C21D8:
	#data 0x8C34AF50
loc_8c1C21DC:
	#data bank1b.loc_8c1b3EEC
loc_8c1C21E0:
	#data 0x8C34B1F8
loc_8c1C21E4:
	#data bank1b.loc_8c1b3F0C
loc_8c1C21E8:
	#data 0x8C34B194

;==============================================
loc_8c1c21ec:
	mov.w @(loc_8C1C22F6,pc),r1
	mov.l @r13,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x01,r0 
	bf loc_8c1c21fe
	mov.b @(0x0E,r10),r0 
	or 0x20,r0 
	mov.b r0,@(0x0E,r10) 

loc_8c1c21fe:
	mov.w @(loc_8C1C22F6,pc),r1
	mov.l @r13,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x02,r0 
	bf loc_8c1c2216
	mov.b @(0x0E,r10),r0 
	and 0xDF,r0 
	mov.b r0,@(0x0E,r10) 
	mov.b @r8,r0
	and 0xFB,r0 
	mov.b r0,@r8

loc_8c1c2216:
	mov.w @(loc_8C1C22F6,pc),r1
	mov.l @r13,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x04,r0 
	bf loc_8c1c2228
	mov.b @r8,r0
	or 0x10,r0 
	mov.b r0,@r8

loc_8c1c2228:
	mov.w @(loc_8C1C22F6,pc),r1
	mov.l @r13,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x08,r0 
	bf loc_8c1c223a
	mov.b @r8,r0
	and 0xFB,r0 
	mov.b r0,@r8

loc_8c1c223a:
	mov.l @(loc_8C1C22FC,pc),r2
	jsr @r14
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c224a
	bra bank1c.loc_8c1c26f0
	nop 

loc_8c1c224a:
	mov.l @(bank1c.loc_8c1c2300,pc),r3
	jsr @r3
	nop 
	mov.l @(loc_8C1C2304,pc),r3
	mov 0x00,r1
	mov.b r1,@r3
	mov r10,r0
	nop 
	add 0x16,r0
	mov.b @r0,r0
	mov 0x0C,r4
	extu.b r0,r0
	and r0,r4
	extu.w r4,r5
	mov r5,r0
	nop 
	cmp/eq 0x04,r0 
	bt loc_8c1c2276
	mov r5,r0
	nop 
	cmp/eq 0x08,r0 
	bf loc_8c1c227c

loc_8c1c2276:
	mov.l @(bank1c.loc_8c1c2308,pc),r3
	jsr @r3
	nop 

loc_8c1c227c:
	mov.l @(loc_8C1C230C,pc),r4
	jsr @r11
	mov 0x00,r5
	mov r9,r4
	add 0x07,r4
	mov.b @r4,r0
	and 0xF7,r0 
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xDF,r0 
	mov.b r0,@r4
	mov.b @(0x08,r9),r0 
	and 0xBF,r0 
	mov.b r0,@(0x08,r9) 
	mov r9,r3
	add 0x10,r3
	mov.b @r3,r0
	and 0x7F,r0 
	mov.b r0,@r3
	mov.b @(0x01,r9),r0 
	extu.b r0,r0
	tst 0x01,r0 
	bt loc_8c1c22b2
	mov.b @(0x01,r9),r0 
	and 0xFE,r0 
	bra loc_8c1c22bc
	mov.b r0,@(0x01,r9) 

loc_8c1c22b2:
	mov r10,r2
	add 0x29,r2
	mov.l @(loc_8C1C2310,pc),r1
	mov.b @r2,r3
	mov.b r3,@r1

loc_8c1c22bc:
	mov.w @(loc_8C1C22F8,pc),r0
	mov.l @r13,r5
	mov.l @(r0,r5),r5
	mov.b @(0x06,r10),r0 
	bsr bank1c.loc_8c1c2d44
	mov r0,r4
	mov.l @(loc_8C1C2314,pc),r3
	mov 0x01,r2
	bra bank1c.loc_8c1c26c8
	mov.b r2,@r3

loc_8c1C22D0:
	bsr loc_8c1C2DBA
	nop
	extu.b r0,r4
	extu.w r4,r0
	cmp/eq 0x01,r0
	bf loc_8c1C2334
	mov.b @(0x0E,r10),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1C231C
	mov.l @(loc_8c1C2318,pc),r3 ; r3 set to 0x8C34B039
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c1C231C
	bsr loc_8c1C2BFC
	nop
	bra loc_8c1C2320
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c22f6:
	#data 0x00B0
loc_8c1c22f8:
	#data 0x0080
	#align4

loc_8c1c22fc:
	#data 0x8C34B124
loc_8c1C2300:
	#data bank1a.loc_8c1aF876
loc_8c1c2304:
	#data 0x8C34B1DF
loc_8c1C2308:
	#data bank1a.loc_8c1aFF72
loc_8c1c230c:
	#data 0x8C34B18C
loc_8c1c2310:
	#data 0x8C34B03A
loc_8c1c2314:
	#data 0x8C34B194
loc_8c1C2318:
	#data 0x8C34B039

;==============================================
loc_8c1C231C:
	bsr loc_8c1C2CAA
	nop

loc_8c1C2320:
	mov.l @(loc_8c1C2410,pc),r2 ; r2 set to 0x8C19B3A0, r2 set to 0x8C19B3A0
	jsr @r2
	nop
	mov.l @(loc_8c1C2414,pc),r2 ; r2 set to 0x8C34B194, r2 set to 0x8C34B194
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	mov 0x07,r1 ; r1 set to 0x07, r1 set to 0x07
	mov.b r3,@r2 ; r2 ??, r2 ??
	mov.l @(loc_8c1C2418,pc),r0 ; r0 set to 0x8C34B195, r0 set to 0x8C34B195
	bra loc_8c1C233A
	mov.b r1,@r0

loc_8c1c2334:
	cmp/eq 0x02,r0 
	bf loc_8c1c233a
	mov 0x05,r12

loc_8c1C233A:
	mov r10,r4
	add 0x16,r4
	mov.b @r4,r4
	mov 0x40,r3 ; r3 set to 0x40
	extu.b r4,r4
	tst r4,r3
	bt loc_8c1C2358
	mov 0x20,r1 ; r1 set to 0x20
	tst r4,r1
	bt loc_8c1C2358
	mov 0x10,r2 ; r2 set to 0x10
	tst r4,r2
	bf loc_8c1C2358
	bra loc_8c1C26F0
	nop

loc_8c1C2358:
	mov.l @(loc_8c1C241C,pc),r1 ; r1 set to 0x8C1BF690
	jsr @r1
	nop
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1C2368
	bra loc_8c1C268E
	nop

loc_8c1C2368:
	bra loc_8c1C26F0
	nop

loc_8c1C236C:
	mov.l @(loc_8c1C2420,pc),r3 ; r3 set to 0x8C19B3D4
	jsr @r3
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C23B6
	mov r9,r0
	nop
	add 0x12,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1C2390
	mov.l @(loc_8c1C2424,pc),r4 ; r4 set to 0x8C34B18C
	jsr @r11
	mov 0x4B,r5 ; r5 set to 0x4B
	bra loc_8c1C23B2
	nop

loc_8c1C2390:
	mov.l @r13,r3
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r3),r2
	extu.b r2,r2
	cmp/pl r2
	bf loc_8c1C23A6
	mov.l @r13,r5
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r5),r5
	bra loc_8c1C23AA
	extu.b r5,r5

loc_8c1C23A6:
	mov.b @(0x0B,r10),r0
	extu.b r0,r5

loc_8c1C23AA:
	mov.l @(loc_8c1C2424,pc),r4 ; r4 set to 0x8C34B18C, r4 set to 0x8C34B18C
	shlr2 r5
	jsr @r11
	shlr r5

loc_8c1C23B2:
	bra loc_8c1C26F4
	mov 0x00,r0

loc_8c1C23B6:
	mov.l @(loc_8c1C2424,pc),r1 ; r1 set to 0x8C34B18C
	mov.l @(loc_8c1C2428,pc),r3 ; r3 set to 0x8C34B184
	mov.l @r1,r0
	mov.l @r3,r4
	mov.l @(loc_8c1C242C,pc),r2 ; r2 set to 0x8C34B1DF
	mov.b @r2,r5
	mov.l r0,@r15
	mov.l @(loc_8c1C2418,pc),r3 ; r3 set to 0x8C34B195
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1C2430
	cmp/eq 0x01,r0
	bt loc_8c1C2476
	cmp/eq 0x02,r0
	bt loc_8c1C24A0
	cmp/eq 0x03,r0
	bf loc_8c1C23DE
	bra loc_8c1C258C
	nop

loc_8c1C23DE:
	cmp/eq 0x04,r0
	bf loc_8c1C23E6
	bra loc_8c1C25F8
	nop

loc_8c1C23E6:
	cmp/eq 0x06,r0
	bf loc_8c1C23EE
	bra loc_8c1C26BE
	nop

loc_8c1C23EE:
	cmp/eq 0x07,r0
	bf loc_8c1C23F6
	bra loc_8c1C26D0
	nop

loc_8c1C23F6:
	cmp/eq 0x08,r0
	bt loc_8c1C2488
	cmp/eq 0x09,r0
	bf loc_8c1C2402
	bra loc_8c1C2698
	nop

loc_8c1C2402:
	cmp/eq 0x0A,r0
	bf loc_8c1C240A
	bra loc_8c1C26A6
	nop

loc_8c1C240A:
	bra loc_8c1C26F0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C2410:
	#data bank19.loc_8c19B3A0
loc_8c1C2414:
	#data 0x8C34B194
loc_8c1C2418:
	#data 0x8C34B195
loc_8c1C241C:
	#data bank1b.loc_8c1bF690
loc_8c1C2420:
	#data bank19.loc_8c19B3D4
loc_8c1C2424:
	#data 0x8C34B18C
loc_8c1C2428:
	#data 0x8C34B184
loc_8c1C242C:
	#data 0x8C34B1DF

;==============================================
loc_8c1C2430:
	mov r9,r4
	add 0x07,r4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1C2450
	mov.b @r4,r0
	or 0x20,r0
	mov.b r0,@r4
	mov.w @(loc_8c1C251C,pc),r0 ; r0 set to 0x80
	mov.l @r13,r5
	mov.l @(r0,r5),r5
	bsr loc_8c1C2D44
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8c1C26F0
	nop

loc_8c1C2450:
	bsr loc_8c1C2DBA
	nop
	extu.b r0,r4
	extu.w r4,r0
	cmp/eq 0x01,r0
	bf loc_8c1C246A
	bsr loc_8c1C2BFC
	nop
	mov.l @(loc_8c1C2520,pc),r4 ; r4 set to 0x8C34B190
	mov.l @r4,r3
	add 0xFF,r3
	bra loc_8c1C26C8
	mov.l r3,@r4

loc_8c1C246A:
	cmp/eq 0x02,r0
	bt loc_8c1C2472
	bra loc_8c1C26F0
	nop

loc_8c1C2472:
	bra loc_8c1C26C8
	nop

loc_8c1C2476:
	jsr @r14
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C2484
	bra loc_8c1C26F0
	nop

loc_8c1C2484:
	bra loc_8c1C26C8
	nop

loc_8c1C2488:
	jsr @r14
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C2496
	bra loc_8c1C26F0
	nop

loc_8c1C2496:
	mov.l @(loc_8c1C2524,pc),r3 ; r3 set to 0x8C1A0108
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	bra loc_8c1C26C8
	nop

loc_8c1C24A0:
	extu.b r5,r5
	mov.l @(loc_8c1C2528,pc),r13 ; r13 set to 0x8C34B1E0
	tst r5,r5
	bt loc_8c1C24DC
	jsr @r14
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C24B6
	bra loc_8c1C26F0
	nop

loc_8c1C24B6:
	bsr loc_8c1C2CFC
	nop
	mov.l @(loc_8c1C252C,pc),r4 ; r4 set to 0x8C34B184
	jsr @r11
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x64,r5 ; r5 set to 0x64
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@r13
	mov.b @(0x07,r10),r0
	mov.l @(loc_8c1C2530,pc),r4 ; r4 set to 0x8C34B188
	extu.b r0,r0
	mulu.w r5,r0
	jsr @r11
	sts macl,r5
	mov.l @(loc_8c1C2534,pc),r3 ; r3 set to 0x8C1BF62A
	jsr @r3
	nop
	bra loc_8c1C26F0
	nop

loc_8c1C24DC:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1C2540
	mov.l @(loc_8c1C2538,pc),r1 ; r1 set to 0x8C19CE00
	jsr @r1
	mov 0x19,r4 ; r4 set to 0x19
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C24FC
	mov.l @(loc_8c1C252C,pc),r4 ; r4 set to 0x8C34B184
	mov.w @(loc_8c1C251E,pc),r5 ; r5 set to 0x1F4
	jsr @r11
	nop
	bra loc_8c1C250C
	nop

loc_8c1C24FC:
	mov.l @(loc_8c1C252C,pc),r3 ; r3 set to 0x8C34B184
	jsr @r14
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C250C
	bra loc_8c1C26C8
	nop

loc_8c1C250C:
	mov.l @(loc_8c1C253C,pc),r1 ; r1 set to 0x8C1BF690
	jsr @r1
	nop
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1C256C
	bra loc_8c1C268E
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C251C:
	#data 0x0080
loc_8c1C251E:
	#data 0x01F4
	#align4

loc_8c1C2520:
	#data 0x8C34B190
loc_8c1C2524:
	#data bank1a.loc_8c1a0108
loc_8c1C2528:
	#data 0x8C34B1E0
loc_8c1C252C:
	#data 0x8C34B184
loc_8c1C2530:
	#data 0x8C34B188
loc_8c1C2534:
	#data bank1b.loc_8c1bF62A
loc_8c1C2538:
	#data bank19.loc_8c19CE00
loc_8c1C253C:
	#data bank1b.loc_8c1bF690

;==============================================
loc_8c1C2540:
	mov.l @(loc_8c1C2640,pc),r1 ; r1 set to 0x8C19CE00
	jsr @r1
	mov 0x19,r4 ; r4 set to 0x19
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C2556
	mov.l @(loc_8c1C2644,pc),r4 ; r4 set to 0x8C34B184
	jsr @r11
	mov 0x16,r5 ; r5 set to 0x16
	bra loc_8c1C256C
	nop

loc_8c1c2556:
	mov.l @(bank1c.loc_8c1c2644,pc),r3
	jsr @r14
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c256c
	mov.l @(bank1c.loc_8c1c2644,pc),r4
	mov 0x01,r1
	mov.w @(loc_8C1C2638,pc),r5
	jsr @r11
	mov.b r1,@r13

loc_8c1C256C:
	mov.l @(loc_8c1C2648,pc),r3 ; r3 set to 0x8C34B188
	jsr @r14
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C257C
	bra loc_8c1C26F0
	nop

loc_8c1C257C:
	mov.b @r8,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1C2588
	bra loc_8c1C26F0
	mov 0x07,r12

loc_8c1C2588:
	bra loc_8c1C26F0
	mov 0x04,r12

loc_8c1C258C:
	jsr @r14
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C25E8
	mov.l @(loc_8c1C2644,pc),r2 ; r2 set to 0x8C34B184
	jsr @r14
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C25A6
	bra loc_8c1C26F0
	nop

loc_8c1C25A6:
	mov r9,r4
	mov.b @(0x09,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1C25D6
	mov.b @(0x02,r4),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1C25BC
	bra loc_8c1C26C8
	nop

loc_8c1C25BC:
	mov.b @(0x09,r4),r0
	and 0x7F,r0
	mov.b r0,@(0x09,r4)
	mov.l @(loc_8c1C264C,pc),r3 ; r3 set to 0x8C19FE46
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8c1C2650,pc),r2 ; r2 set to 0x8C19D25A
	jsr @r2
	nop
	mov.b @(0x02,r9),r0
	or 0x40,r0
	bra loc_8c1C25E8
	mov.b r0,@(0x02,r9)

loc_8c1c25d6:
	mov.b @(0x09,r4),r0 
	or 0x80,r0 
	mov.b r0,@(0x09,r4) 
	mov.l @(bank1c.loc_8c1c264c,pc),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(bank1c.loc_8c1c2654,pc),r2
	jsr @r2
	nop 

loc_8c1C25E8:
	mov.w @(loc_8c1C263A,pc),r0 ; r0 set to 0xAE
	mov.l @r13,r5
	mov.l @(loc_8c1C2644,pc),r4 ; r4 set to 0x8C34B184
	mov.w @(r0,r5),r5
	jsr @r11
	extu.w r5,r5
	bra loc_8c1C26F0
	nop

loc_8c1C25F8:
	extu.b r5,r5
	tst r5,r5
	bt loc_8c1C2658
	jsr @r14
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C260C
	bra loc_8c1C26F0
	nop

loc_8c1C260C:
	bsr loc_8c1C2CFC
	nop
	mov.l @r13,r11
	mov r11,r0
	nop
	mov.w @(loc_8c1C263C,pc),r1 ; r1 set to 0xB2
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x08,r0
	bt/s loc_8c1C262A
	mov r10,r14
	mov.w @(loc_8c1C263E,pc),r0 ; r0 set to 0x84
	mov.l @(r0,r11),r5
	bra loc_8c1C2630
	mov.b @(0x06,r14),r0

loc_8c1C262A:
	mov.w @(loc_8c1C263E,pc),r0 ; r0 set to 0x84
	mov.l @(r0,r11),r5
	mov.b @(0x07,r14),r0

loc_8c1C2630:
	bsr loc_8c1C2D44
	mov r0,r4 ; r4 set to 0x84
	bra loc_8c1C26F0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c2638:
	#data 0x01F4
loc_8c1C263A:
	#data 0x00AE
loc_8c1C263C:
	#data 0x00B2
loc_8c1C263E:
	#data 0x0084
	#align4

loc_8c1C2640:
	#data bank19.loc_8c19CE00
loc_8c1C2644:
	#data 0x8C34B184
loc_8c1C2648:
	#data 0x8C34B188
loc_8c1C264C:
	#data bank19.loc_8c19FE46
loc_8c1C2650:
	#data bank19.loc_8c19D25A
loc_8c1C2654:
	#data bank19.loc_8c19D24C

;==============================================
loc_8c1C2658:
	bsr loc_8c1C2DBA
	nop
	extu.b r0,r5
	extu.w r5,r4
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1C2670
	mov.l @(loc_8c1C27A0,pc),r3 ; r3 set to 0x8C34B195
	mov 0x07,r2 ; r2 set to 0x07
	bra loc_8c1C2682
	mov.b r2,@r3
	
loc_8c1C2670:
	cmp/eq 0x02,r0
	bf loc_8c1C2682
	mov.b @r8,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1C2680
	bra loc_8c1C2682
	mov 0x05,r12
	
loc_8c1c2680:
	mov 0x04,r12
	
loc_8c1c2682:
	mov.l @(bank1c.loc_8c1c27a4,pc),r3
	jsr @r3
	nop 
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf bank1c.loc_8c1c26f0
	
loc_8c1C268E:
	mov.l @(loc_8c1C27A8,pc),r2 ; r2 set to 0x8C34B03A
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@r2 ; r2 ??
	bra loc_8c1C26F0
	mov 0x06,r12
	
loc_8c1C2698:
	jsr @r14
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C26F0
	bra loc_8c1C26C8
	nop
	
loc_8c1c26a6:
	jsr @r14
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c26b6
	mov.l @(bank1c.loc_8c1c27a0,pc),r3
	mov 0x07,r2
	mov.b r2,@r3
	
loc_8c1c26b6:
	bsr bank1c.loc_8c1c2cfc
	nop 
	bra bank1c.loc_8c1c26f0
	nop 
	
loc_8c1c26be:
	jsr @r14
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c26f0
	
loc_8c1C26C8:
	mov.l @(loc_8c1C27A0,pc),r3 ; r3 set to 0x8C34B195
	mov 0x07,r2 ; r2 set to 0x07
	bra loc_8c1C26F0
	mov.b r2,@r3

loc_8c1C26D0:
	bsr loc_8c1C2708
	nop
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c1C26E2
	cmp/eq 0x02,r0
	bt loc_8c1C26EA
	bra loc_8c1C26F0
	nop

loc_8c1C26E2:
	mov.l @(loc_8c1C27AC,pc),r2 ; r2 set to 0x8C34B194
	mov 0x03,r3 ; r3 set to 0x03
	bra loc_8c1C26F0
	mov.b r3,@r2

loc_8c1C26EA:
	bra loc_8c1C26F0
	mov 0x02,r12

loc_8c1c26ee:
	mov 0x01,r12

loc_8c1C26F0:
	mov r12,r0
	nop

loc_8c1C26F4:
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
loc_8c1C2708:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x00,r8 ; r8 set to 0x00
	mov.l @(loc_8c1C27BC,pc),r3 ; r3 set to 0x8C34B190
	mov.l @(loc_8c1C27C4,pc),r1 ; r1 set to 0x8C34B1DF
	mov.l @r3,r4
	mov.l @(loc_8c1C27C0,pc),r2 ; r2 set to 0x8C34B1F8
	mov.b @r4,r0
	sts.l pr,@-r15
	mov.l @(loc_8c1C27B0,pc),r9 ; r9 set to 0x8C34AF50
	extu.b r0,r0
	mov.b @r1,r6
	cmp/eq 0x20,r0
	mov.l @r2,r14
	mov r9,r11 ; r11 set to 0x8C34AF50
	mov.l @(loc_8c1C27A0,pc),r12 ; r12 set to 0x8C34B195
	mov.l @(loc_8c1C27B4,pc),r10 ; r10 set to 0x8C34B288
	mov.l @(loc_8c1C27B8,pc),r13 ; r13 set to 0x8C1B3EEC
	bf/s loc_8c1C273E
	mov r10,r5 ; r5 set to 0x8C34B288
	bra loc_8c1C2A44
	nop

loc_8c1C273E:
	cmp/eq 0x21,r0
	bf loc_8c1C2746
	bra loc_8c1C28F8
	nop

loc_8c1C2746:
	cmp/eq 0x24,r0
	bf loc_8c1C274E
	bra loc_8c1C2968
	nop

loc_8c1C274E:
	cmp/eq 0x2C,r0
	bt loc_8c1C2836
	cmp/eq 0x2D,r0
	bf loc_8c1C275A
	bra loc_8c1C2A44
	nop

loc_8c1C275A:
	cmp/eq 0x2E,r0
	bf loc_8c1C2762
	bra loc_8c1C2A44
	nop

loc_8c1C2762:
	cmp/eq 0x3B,r0
	bf loc_8c1C276A
	bra loc_8c1C2876
	nop

loc_8c1C276A:
	cmp/eq 0x3D,r0
	bf loc_8c1C2772
	bra loc_8c1C286E
	nop

loc_8c1C2772:
	cmp/eq 0x3E,r0
	bt loc_8c1C2848
	cmp/eq 0x40,r0
	bf loc_8c1C277E
	bra loc_8c1C2890
	nop

loc_8c1C277E:
	cmp/eq 0x50,r0
	bt loc_8c1C280E
	cmp/eq 0x52,r0
	bt loc_8c1C282E
	cmp/eq 0x54,r0
	bt loc_8c1C27C8
	cmp/eq 0x57,r0
	bf loc_8c1C2792
	bra loc_8c1C2920
	nop

loc_8c1C2792:
	cmp/eq 0x5E,r0
	bf loc_8c1C279A
	bra loc_8c1C2956
	nop

loc_8c1C279A:
	bra loc_8c1C29A8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1C27A0:
	#data 0x8C34B195
loc_8c1C27A4:
	#data bank1b.loc_8c1bF690
loc_8c1C27A8:
	#data 0x8C34B03A
loc_8c1C27AC:
	#data 0x8C34B194
loc_8c1C27B0:
	#data 0x8C34AF50
loc_8c1C27B4:
	#data 0x8C34B288
loc_8c1C27B8:
	#data bank1b.loc_8c1b3EEC
loc_8c1C27BC:
	#data 0x8C34B190
loc_8c1C27C0:
	#data 0x8C34B1F8
loc_8c1C27C4:
	#data 0x8C34B1DF

;==============================================
loc_8c1c27c8:
	mov.b @(0x07,r10),r0 
	extu.b r0,r0
	tst 0x20,r0 
	bt loc_8c1c27ec
	mov.l @(loc_8C1C28D0,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0 
	bt loc_8c1c27ec
	mov.l @(bank1c.loc_8c1c28d8,pc),r3
	mov.l @(loc_8C1C28D4,pc),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c27ec
	mov 0x06,r3
	mov.b r3,@r12

loc_8c1c27ec:
	mov.l @(loc_8C1C28DC,pc),r2
	mov.w @(bank1c.loc_8c1c28c8,pc),r1
	mov.l @r2,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x01,r0 
	bf loc_8c1c27fe
	bra bank1c.loc_8c1c2a44
	nop 

loc_8c1c27fe:
	bsr bank1c.loc_8c1c2caa
	nop 
	mov.b @(0x07,r10),r0 
	or 0x20,r0 
	mov.b r0,@(0x07,r10) 
	mov.b @(0x0E,r9),r0 
	bra bank1c.loc_8c1c282a
	and 0xDF,r0 

loc_8c1C280E:
	mov.w @(loc_8c1C28C8,pc),r0 ; r0 set to 0xB0
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.w r0,r0
	tst 0x02,r0
	bf loc_8c1C281C
	bra loc_8c1C2A44
	nop

loc_8c1C281C:
	bsr loc_8c1C2BFC
	nop
	mov.b @(0x07,r10),r0
	or 0x20,r0
	mov.b r0,@(0x07,r10)
	mov.b @(0x0E,r9),r0
	or 0x20,r0

loc_8c1C282A:
	bra loc_8c1C2A44
	mov.b r0,@(0x0E,r9)

loc_8c1C282E:
	mov.b @(0x0E,r11),r0
	and 0x7F,r0
	bra loc_8c1C2A44
	mov.b r0,@(0x0E,r11)

loc_8c1C2836:
	mov.b @(0x08,r11),r0
	mov 0x64,r5 ; r5 set to 0x64
	extu.b r0,r0

loc_8c1C283C:
	mulu.w r5,r0
	mov.l @(loc_8c1C28E0,pc),r4 ; r4 set to 0x8C34B184, r4 set to 0x8C34B184
	jsr @r13
	sts macl,r5
	bra loc_8c1C29A2
	nop

loc_8c1C2848:
	mov.w @(loc_8c1C28CA,pc),r0 ; r0 set to 0xB2
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.w r0,r0
	tst 0x02,r0
	bt loc_8c1C2868
	mov r11,r5
	add 0x3B,r5
	mov.l @(loc_8c1C28E0,pc),r4 ; r4 set to 0x8C34B184
	mov.b @r5,r5
	jsr @r13
	extu.b r5,r5
	mov.l @(loc_8c1C28E4,pc),r3 ; r3 set to 0x8C1A0108
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8c1C2952
	mov 0x08,r2

loc_8c1C2868:
	mov 0x07,r1 ; r1 set to 0x07
	bra loc_8c1C2A44
	mov.b r1,@r12

loc_8c1C286E:
	mov.w @(loc_8c1C28CC,pc),r5 ; r5 set to 0xC8
	mov.b @(0x08,r11),r0
	bra loc_8c1C283C
	extu.b r0,r0

loc_8c1C2876:
	mov r5,r4
	add 0x10,r4
	mov.b @r4,r0
	or 0x80,r0
	mov.b r0,@r4
	mov.b @r4,r0
	or 0x01,r0
	mov.b r0,@r4
	mov.l @(loc_8c1C28E8,pc),r1 ; r1 set to 0x8C34B03A
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@r1 ; r1 ??
	bra loc_8c1C2A44
	mov 0x02,r8

loc_8c1C2890:
	extu.b r6,r6
	tst r6,r6
	bt loc_8c1C28A4
	mov.w @(loc_8c1C28CE,pc),r0 ; r0 set to 0xAC
	mov.l @(loc_8c1C28E0,pc),r4 ; r4 set to 0x8C34B184
	mov.w @(r0,r14),r5
	jsr @r13
	extu.w r5,r5
	bra loc_8c1C28C4
	nop

loc_8c1C28A4:
	mov.l @(loc_8c1C28E0,pc),r4 ; r4 set to 0x8C34B184
	jsr @r13
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x64,r5 ; r5 set to 0x64
	mov.l @(loc_8c1C28EC,pc),r3 ; r3 set to 0x8C34B1E0
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@r3 ; r3 ??
	mov.b @(0x07,r9),r0
	mov.l @(loc_8c1C28F0,pc),r4 ; r4 set to 0x8C34B188
	extu.b r0,r0
	mulu.w r5,r0
	jsr @r13
	sts macl,r5
	mov.l @(loc_8c1C28F4,pc),r3 ; r3 set to 0x8C1BF62A
	jsr @r3
	nop

loc_8c1C28C4:
	bra loc_8c1C2952
	mov 0x02,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C28C8:
	#data 0x00B0
loc_8c1C28CA:
	#data 0x00B2
loc_8c1C28CC:
	#data 0x00C8
loc_8c1C28CE:
	#data 0x00AC
	#align4

loc_8c1c28d0:
	#data 0x8C34AF5E
loc_8c1c28d4:
	#data 0x8C34B18C
loc_8c1C28D8:
	#data bank1b.loc_8c1b3F0C
loc_8c1c28dc:
	#data 0x8C34B1F8
loc_8c1C28E0:
	#data 0x8C34B184
loc_8c1C28E4:
	#data bank1a.loc_8c1a0108
loc_8c1C28E8:
	#data 0x8C34B03A
loc_8c1C28EC:
	#data 0x8C34B1E0
loc_8c1C28F0:
	#data 0x8C34B188
loc_8c1C28F4:
	#data bank1b.loc_8c1bF62A

;==============================================
loc_8c1C28F8:
	mov.w @(loc_8c1C29CC,pc),r0 ; r0 set to 0xB2
	mov.w @(loc_8c1C29CE,pc),r3 ; r3 set to 0x800
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r3,r1
	bt loc_8c1C2908
	bra loc_8c1C2A44
	nop

loc_8c1C2908:
	mov.b @(0x02,r5),r0
	and 0xBF,r0
	mov.b r0,@(0x02,r5)
	mov.l @(loc_8c1C29D8,pc),r3 ; r3 set to 0x8C34B1F8
	mov.w @(loc_8c1C29D0,pc),r0 ; r0 set to 0xAE
	mov.l @r3,r5
	mov.l @(loc_8c1C29DC,pc),r4 ; r4 set to 0x8C34B184
	mov.w @(r0,r5),r5
	jsr @r13
	extu.w r5,r5
	bra loc_8c1C29A4
	mov 0x03,r3

loc_8c1C2920:
	extu.b r6,r6
	tst r6,r6
	bt loc_8c1C2934
	mov.w @(loc_8c1C29D2,pc),r0 ; r0 set to 0xAC
	mov.l @(loc_8c1C29DC,pc),r4 ; r4 set to 0x8C34B184
	mov.w @(r0,r14),r5
	jsr @r13
	extu.w r5,r5
	bra loc_8c1C2950
	nop

loc_8c1C2934:
	mov.w @(loc_8c1C29CC,pc),r0 ; r0 set to 0xB2
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.w r0,r0
	tst 0x08,r0
	bt loc_8c1C2946
	mov.w @(loc_8c1C29D4,pc),r0 ; r0 set to 0x84
	mov.l @(r0,r14),r5
	bra loc_8c1C294C
	mov.b @(0x06,r11),r0

loc_8c1c2946:
	mov.w @(bank1c.loc_8c1c29d4,pc),r0
	mov.l @(r0,r14),r5
	mov.b @(0x07,r11),r0 

loc_8c1c294c:
	bsr bank1c.loc_8c1c2d44
	mov r0,r4

loc_8c1c2950:
	mov 0x04,r2

loc_8c1C2952:
	bra loc_8c1C2A44
	mov.b r2,@r12

loc_8c1C2956:
	mov.w @(loc_8c1C29D6,pc),r0 ; r0 set to 0xB0
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.w r0,r0
	tst 0x40,r0
	bf loc_8c1C2A44
	mov.b @(0x08,r5),r0
	or 0x40,r0
	bra loc_8c1C2A44
	mov.b r0,@(0x08,r5)

loc_8c1c2968:
	mov.l @(bank1c.loc_8c1c29dc,pc),r4
	jsr @r13
	mov 0x32,r5
	mov.b @(0x07,r10),r0 
	extu.b r0,r0
	tst 0x20,r0 
	bt loc_8c1c2992
	mov.l @(loc_8C1C29E0,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0 
	bt loc_8c1c2992
	mov.l @(bank1c.loc_8c1c29e8,pc),r3
	mov.l @(loc_8C1C29E4,pc),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c2992
	mov 0x06,r3
	mov.b r3,@r12

loc_8c1c2992:
	bsr bank1c.loc_8c1c2caa
	nop 
	mov.b @(0x07,r10),r0 
	or 0x20,r0 
	mov.b r0,@(0x07,r10) 
	mov.b @(0x0E,r9),r0 
	and 0xDF,r0 
	mov.b r0,@(0x0E,r9) 

loc_8c1C29A2:
	mov 0x01,r3 ; r3 set to 0x01

loc_8c1C29A4:
	bra loc_8c1C2A44
	mov.b r3,@r12

loc_8c1C29A8:
	mov.l @(loc_8c1C29EC,pc),r0 ; r0 set to 0x8C34B036
	mov.b @r4,r1
	mov.b @r0,r3
	cmp/eq r3,r1
	bf loc_8c1C29F0
	extu.b r6,r6
	tst r6,r6
	bt loc_8c1C29C0
	mov.w @(loc_8c1C29D2,pc),r0 ; r0 set to 0xAC
	mov.w @(r0,r14),r5
	bra loc_8c1C29C2
	extu.w r5,r5

loc_8c1C29C0:
	mov 0x4B,r5 ; r5 set to 0x4B

loc_8c1C29C2:
	mov.l @(loc_8c1C29DC,pc),r4 ; r4 set to 0x8C34B184, r4 set to 0x8C34B184
	jsr @r13
	nop
	bra loc_8c1C2A44
	mov 0x01,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C29CC:
	#data 0x00B2
loc_8c1C29CE:
	#data 0x0800
loc_8c1C29D0:
	#data 0x00AE
loc_8c1C29D2:
	#data 0x00AC
loc_8c1C29D4:
	#data 0x0084
loc_8c1C29D6:
	#data 0x00B0
	#align4

loc_8c1C29D8:
	#data 0x8C34B1F8
loc_8c1C29DC:
	#data 0x8C34B184
loc_8c1c29e0:
	#data 0x8C34AF5E
loc_8c1c29e4:
	#data 0x8C34B18C
loc_8c1C29E8:
	#data bank1b.loc_8c1b3F0C
loc_8c1C29EC:
	#data 0x8C34B036

;==============================================
loc_8c1C29F0:
	mov.b @r4,r4
	mov 0x30,r3 ; r3 set to 0x30
	extu.b r4,r6
	cmp/ge r3,r6
	bf loc_8c1C2A04
	mov 0x39,r1 ; r1 set to 0x39
	cmp/gt r1,r6
	bt loc_8c1C2A04
	bra loc_8c1C2A38
	add 0xD0,r4

loc_8c1C2A04:
	mov r5,r0
	nop
	add 0x12,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c1C2A36
	mov 0x41,r2 ; r2 set to 0x41
	extu.b r4,r5
	cmp/ge r2,r5
	bf loc_8c1C2A24
	mov 0x44,r1 ; r1 set to 0x44
	cmp/gt r1,r5
	bt loc_8c1C2A24
	bra loc_8c1C2A38
	add 0xC9,r4

loc_8c1C2A24:
	extu.b r4,r0
	cmp/eq 0x2A,r0
	bf loc_8c1C2A2E
	bra loc_8c1C2A38
	mov 0x0E,r4

loc_8c1C2A2E:
	cmp/eq 0x23,r0
	bf loc_8c1C2A36
	bra loc_8c1C2A38
	mov 0x0F,r4

loc_8c1c2a36:
	mov.w @(loc_8C1C2ABE,pc),r4

loc_8c1c2a38:
	mov.w @(loc_8C1C2ABE,pc),r2
	extu.b r4,r3
	cmp/eq r2,r3
	bt loc_8c1c2a44
	bsr bank1c.loc_8c1c2a62
	nop 

loc_8c1C2A44:
	mov.l @(loc_8c1C2AC8,pc),r2 ; r2 set to 0x8C34B190
	mov.l @r2,r3
	add 0x01,r3
	mov.l r3,@r2 ; r2 ??? bc r3 is ???
	mov r8,r0
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

;==============================================
loc_8c1C2A62:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x04,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0x64,PC),r3
	mov.w @(0x4C,PC),r0
	mov.l @r3,r14
	sts.l pr,@-r15
	mov.w @(r0,r14),r2
	mov.w @(0x46,PC),r1
	extu.w r2,r2
	mov.l @(0x4C,PC),r10
	mov.l @(0x50,PC),r11
	tst r1,r2
	bt.s loc_8c1c2afe
	mov r4,r13
	mov r10,r2
	mov.l @(0x4C,PC),r3
	add 0x12,r2
	mov.b @r2,r1
	extu.b r1,r1
	tst r12,r1
	bt.s loc_8c1c2ae8
	mov.b @r3,r4
	extu.b r4,r4
	tst r4,r4
	bf loc_8c1c2afe
	mov.l @(0x3C,PC),r1
	jsr @r1
	mov 0x01,r4
	mov.l @(0x34,PC),r2
	mov 0x01,r3
	mov.b r3,@r2
	mov.l @(0x28,PC),r1
	mov.w @(0x16,PC),r0
	mov.l @r1,r5
	mov.l @(0x34,PC),r3
	mov.l @(0x2C,PC),r4
	mov.w @(r0,r5),r5
	jsr @r3
	extu.w r5,r5
	mov 0x09,r2
	bra loc_8c1c2afe
	mov.b r2,@r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c2abe:
	#data 0x00FF
loc_8c1C2AC0:
	#data 0x00B0
loc_8c1C2AC2:
	#data 0x0100
loc_8c1C2AC4:
	#data 0x00AA
	#align4

loc_8c1C2AC8:
	#data 0x8C34B190
loc_8c1C2ACc:
	#data 0x8C34B288
loc_8c1C2Ad0:
	#data 0x8C34B195
loc_8c1C2Ad4:
	#data 0x8C34B1F8
loc_8c1C2Ad8:
	#data 0x8C34B1DF
loc_8c1C2ADC:
	#data bank19.loc_8c19FE4E
loc_8c1C2Ae0:
	#data 0x8C34B184
loc_8c1C2AE4:
	#data bank1b.loc_8c1b3EEC

;==============================================
loc_8c1C2AE8:
	extu.b r4,r4
	tst r4,r4
	bt loc_8c1c2afe
	mov.w @(0xD0,PC),r0
	mov.l @(0xD4,PC),r2
	mov.l @(0xD0,PC),r4
	mov.w @(r0,r14),r5
	jsr @r2
	extu.w r5,r5
	mov 0x0A,r3
	mov.b r3,@r11

loc_8c1C2AFE:
	mov r10,r2
	add 0x12,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r12,r3
	bt loc_8c1c2b12
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov r13,r4
	mov r0,r13

loc_8c1C2B12:
	mov.l @(0xBC,PC),r2
	jsr @r2
	mov r13,r4
	mov r10,r4
	add 0x07,r4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1c2b3a
	mov.l @(0xAC,PC),r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r12,r2
	bt loc_8c1c2b34
	mov 0x00,r0
	bra loc_8c1c2b3a
	mov.b r0,@r11

loc_8c1C2B34:
	mov.b @r4,r0
	or 0x20,r0
	mov.b r0,@r4

loc_8c1C2B3A:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1c2b48:
	sts.l pr,@-r15
	mov.l @(bank1c.loc_8c1c2bd8,pc),r3
	jsr @r3
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c2b8e
	mov.l @(loc_8C1C2BDC,pc),r4
	mov 0x08,r5
	mov.b @(0x07,r4),r0 
	extu.b r0,r0
	tst r5,r0
	bt loc_8c1c2b94
	mov.b @(0x0B,r4),r0 
	extu.b r0,r0
	tst 0x10,r0 
	bf loc_8c1c2b94
	mov.b @(0x04,r4),r0 
	extu.b r0,r0
	tst 0x10,r0 
	bf loc_8c1c2b94
	mov.b @(0x06,r4),r0 
	extu.b r0,r0
	tst 0x02,r0 
	bf loc_8c1c2b94
	mov.l @(loc_8C1C2BE0,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0 
	bf loc_8c1c2b8e
	mov.l @(loc_8C1C2BE4,pc),r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r5,r3
	bf loc_8c1c2b94

loc_8c1c2b8e:
	lds.l @r15+,pr 
	rts 
	mov 0x01,r0

;==============================================
loc_8c1c2b94:
	mov 0x00,r0
	lds.l @r15+,pr 
	rts 
	nop 

loc_8c1C2B9C:
	extu.b r4,r0
	cmp/eq 0x03,r0
	bt loc_8c1C2BBA
	cmp/eq 0x04,r0
	bt loc_8c1C2BBE
	cmp/eq 0x05,r0
	bt loc_8c1C2BE8
	cmp/eq 0x06,r0
	bt loc_8c1C2BEC
	cmp/eq 0x07,r0
	bt loc_8c1C2BF0
	cmp/eq 0x08,r0
	bt loc_8c1C2BF4
	bra loc_8c1C2BF6
	nop

loc_8c1C2BBA:
	bra loc_8c1C2BF6
	mov 0x00,r4

loc_8c1C2BBE:
	bra loc_8c1C2BF6
	mov 0x03,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c2bc2:
	#data 0x00AC
	#align4

loc_8c1C2BC4:
	#data 0x8C34B184
loc_8c1C2BC8:
	#data bank1b.loc_8c1b3EEC
loc_8c1C2BCC:
	#data bank1b.loc_8c1b0DE6
loc_8c1C2BD0:
	#data bank19.loc_8c19B3E6
loc_8c1C2BD4:
	#data 0x8C34B039
loc_8c1C2BD8:
	#data bank19.loc_8c19FED2
loc_8c1c2bdc:
	#data 0x8C34B288
loc_8c1c2be0:
	#data 0x8C34AF5E
loc_8c1c2be4:
	#data 0x8C34AF6F

;==============================================
loc_8c1C2BE8:
	bra loc_8c1C2BF6
	mov 0x06,r4

loc_8c1C2BEC:
	bra loc_8c1C2BF6
	mov 0x07,r4

loc_8c1C2BF0:
	bra loc_8c1C2BF6
	mov 0x08,r4

loc_8c1c2bf4:
	mov 0x63,r4

loc_8c1C2BF6:
	mov.l @(loc_8c1C2D14,pc),r3 ; r3 set to 0x8C1AED24
	jmp @r3
	mov 0x00,r5

loc_8c1C2BFC:
	mov.l @(loc_8c1C2D1C,pc),r0 ; r0 set to 0x8C34AF66
	mov 0x64,r5 ; r5 set to 0x64
	sts.l pr,@-r15
	mov.b @r0,r0 ; r0 ??
	mov.l @(loc_8c1C2D18,pc),r3 ; r3 set to 0x8C34B1F8
	extu.b r0,r0
	tst 0x80,r0
	add 0xF8,r15
	bt/s loc_8c1C2C3C
	mov.l @r3,r7
	mov 0x28,r0 ; r0 set to 0x28
	mov.w @(r0,r7),r6
	mov 0x2C,r0 ; r0 set to 0x2C
	mov.w @(r0,r7),r2
	mov r6,r4
	sub r6,r5 ; r5 ??? bc r6 is ???
	mov.w r2,@r15
	extu.w r4,r4
	mov.w @r15,r6
	extu.w r5,r5
	shlr r4
	extu.w r6,r6
	shlr r5
	shlr r6
	mov.l r6,@(0x04,r15)
	mov.w @(loc_8c1C2D0E,pc),r2 ; r2 set to 0x258
	cmp/ge r2,r6
	bt loc_8c1C2C38
	bra loc_8c1C2C48
	mov r2,r6

loc_8c1C2C38:
	bra loc_8c1C2C48
	mov.l @(0x04,r15),r6
	
loc_8c1c2c3c:
	mov 0x26,r0
	mov.w @(r0,r7),r6
	mov 0x2A,r0
	sub r6,r5
	mov r6,r4
	mov.w @(r0,r7),r6

loc_8c1c2c48:
	mov.w @(loc_8C1C2D10,pc),r0
	mov.w @(loc_8C1C2D12,pc),r2
	mov.w @(r0,r7),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c1c2c8e
	extu.w r4,r1
	mov r1,r3
	shll2 r3
	shll r1
	add r3,r1
	mov.l @(bank1c.loc_8c1c2d20,pc),r3
	mov 0x0A,r7
	jsr @r3
	mov r7,r0
	mov.l @(bank1c.loc_8c1c2d20,pc),r3
	mov r0,r1
	add 0x05,r1
	jsr @r3
	mov r7,r0
	extu.w r5,r1
	mov r1,r3
	shll2 r3
	shll r1
	add r3,r1
	mov.l @(bank1c.loc_8c1c2d20,pc),r3
	add r0,r4
	jsr @r3
	mov r7,r0
	mov.l @(bank1c.loc_8c1c2d20,pc),r3
	mov r0,r1
	add 0x05,r1
	jsr @r3
	mov r7,r0
	add r0,r5

loc_8c1c2c8e:
	mov.l @(bank1c.loc_8c1c2d24,pc),r2
	jsr @r2
	nop 
	mov.l @(bank1c.loc_8c1c2d28,pc),r3
	jsr @r3
	nop 
	mov.l @(bank1c.loc_8c1c2d2c,pc),r3
	mov.b @r3,r0
	or 0x04,r0 
	mov.b r0,@r3
	add 0x08,r15
	lds.l @r15+,pr 
	rts 
	nop 

loc_8c1C2CAA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1C2D2C,pc),r3 ; r3 set to 0x8C34B29A
	add 0xFC,r15
	mov.b @r3,r0
	and 0xFB,r0
	mov.b r0,@r3 ; r3 ??? bc r0 is ???
	mov.l @(loc_8c1C2D18,pc),r14 ; r14 set to 0x8C34B1F8
	mov 0x23,r0 ; r0 set to 0x23
	mov.l @(loc_8c1C2D30,pc),r2 ; r2 set to 0x8C19B148
	mov.l @r14,r5
	mov.l @r14,r4
	mov.b @(r0,r5),r5
	mov 0x22,r0 ; r0 set to 0x22
	jsr @r2
	mov.b @(r0,r4),r4
	mov.l @r14,r3
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r3),r2 ; r2 ??? bc r3 is ???
	extu.b r2,r2
	cmp/pl r2
	bf loc_8c1C2CE8
	mov.l @r14,r5
	mov 0x25,r0 ; r0 set to 0x25
	mov.l @r14,r4
	mov.b @(r0,r5),r5
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r4
	extu.b r5,r5
	bra loc_8c1C2CF2
	extu.b r4,r4

loc_8c1C2CE8:
	mov.l @(loc_8c1C2D34,pc),r5 ; r5 set to 0x8C34AF5B
	mov.b @r5,r5 ; r5 ??
	extu.b r5,r5
	mov.w r5,@r15
	mov.w @r15,r4

loc_8c1C2CF2:
	add 0x04,r15
	mov.l @(loc_8c1C2D38,pc),r3 ; r3 set to 0x8C19B2D8, r3 set to 0x8C19B2D8
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c1C2CFC:
	sts.l pr,@-r15
	mov.l @(loc_8c1C2D3C,pc),r3 ; r3 set to 0x8C19FE4E
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	lds.l @r15+,pr
	mov.l @(loc_8c1C2D40,pc),r3 ; r3 set to 0x8C34B1DF
	mov 0x00,r2 ; r2 set to 0x00
	rts
	mov.b r2,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C2D0E:
	#data 0x0258
loc_8c1c2d10:
	#data 0x00B2
loc_8c1c2d12:
	#data 0x1000
	#align4

loc_8c1C2D14:
	#data bank1a.loc_8c1aED24
loc_8c1C2D18:
	#data 0x8C34B1F8
loc_8c1C2D1C:
	#data 0x8C34AF66
loc_8c1C2D20:
	#data bank12.loc_8c129128
loc_8c1C2D24:
	#data bank19.loc_8c19B326
loc_8c1C2D28:
	#data bank19.loc_8c19B290
loc_8c1C2D2C:
	#data 0x8C34B29A
loc_8c1C2D30:
	#data bank19.loc_8c19B148
loc_8c1C2D34:
	#data 0x8C34AF5B
loc_8c1C2D38:
	#data bank19.loc_8c19B2D8
loc_8c1C2D3C:
	#data bank19.loc_8c19FE4E
loc_8c1C2D40:
	#data 0x8C34B1DF

;==============================================
loc_8c1c2d44:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.b r4,@r15
	mov.l r5,@(0x04,r15) 
	mov 0x00,r5
	mov.l @(loc_8C1C2E44,pc),r14
	mov.w @(loc_8C1C2E3E,pc),r0
	mov.l @(bank1c.loc_8c1c2e48,pc),r3
	mov.l @r14,r4
	jsr @r3
	mov.w @(r0,r4),r4
	mov.l @r14,r2
	mov 0x70,r0
	mov.w @(r0,r2),r3
	extu.w r3,r3
	cmp/pl r3
	bf loc_8c1c2d70
	mov.l @(bank1c.loc_8c1c2e4c,pc),r2
	jsr @r2
	nop 

loc_8c1c2d70:
	mov.l @(loc_8C1C2E50,pc),r2
	mov.l @(0x04,r15),r3
	mov.l r3,@r2
	mov.l @(bank1c.loc_8c1c2e54,pc),r13
	mov.l @(loc_8C1C2E58,pc),r4
	jsr @r13
	mov r3,r5
	mov.l @(loc_8C1C2E5C,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x10,r0 
	bf loc_8c1c2da0
	mov.l @(loc_8C1C2E44,pc),r2
	mov.w @(loc_8C1C2E40,pc),r1
	mov.l @r2,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x04,r0 
	bt loc_8c1c2da0
	mov.w @(loc_8C1C2E42,pc),r0
	mov.l @r14,r5
	mov.w @(r0,r5),r5
	bra loc_8c1c2daa
	extu.w r5,r5

loc_8c1c2da0:
	mov.b @r15,r5
	mov 0x64,r3
	extu.b r5,r5
	mulu.w r3,r5
	sts macl,r5

loc_8c1c2daa:
	mov.l @(loc_8C1C2E60,pc),r4
	jsr @r13
	nop 
	add 0x08,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c1C2DBA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1C2E70,pc),r14 ; r14 set to 0x8C353978
	mov.l @(loc_8c1C2E74,pc),r4 ; r4 set to 0x8C34B298
	mov.l @(loc_8c1C2E6C,pc),r12 ; r12 set to 0x8C1B3F0C
	mov.l @(loc_8c1C2E64,pc),r10 ; r10 set to 0x8C35398C
	mov.l @(loc_8c1C2E68,pc),r11 ; r11 set to 0x8C353985
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1C2DE4
	mov.b @r4,r0
	and 0xFD,r0
	bra loc_8c1C2F4E
	mov.b r0,@r4

loc_8c1C2DE4:
	mov.l @(loc_8c1C2E78,pc),r3 ; r3 set to 0x8C34B195
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c1C2E80
	mov.l @(loc_8c1C2E7C,pc),r4 ; r4 set to 0x8C34AF6B
	mov 0x04,r2 ; r2 set to 0x04
	mov.b @r4,r4 ; r4 ??
	extu.b r4,r4
	tst r4,r2
	bt loc_8c1C2DFE
	bra loc_8c1C2F4E
	nop

loc_8c1C2DFE:
	mov 0x03,r0 ; r0 set to 0x03
	and r4,r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x03,r0
	bf loc_8c1C2E0A
	bra loc_8c1C2F4E
	nop

loc_8c1c2e0a:
	mov.l @(loc_8C1C2E5C,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x10,r0 
	bt loc_8c1c2e2a
	mov.l @(loc_8C1C2E50,pc),r2
	mov.l @r2,r1
	tst r1,r1
	bf loc_8c1c2e80
	mov.l @(loc_8C1C2E44,pc),r0
	mov.l @r0,r1
	mov 0x70,r0
	mov.w @(r0,r1),r3
	extu.w r3,r3
	cmp/pl r3
	bt loc_8c1c2e80

loc_8c1c2e2a:
	mov.l @(loc_8C1C2E60,pc),r2
	jsr @r12
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c2e3a
	bra bank1c.loc_8c1c2f6a
	nop 

loc_8c1c2e3a:
	bra bank1c.loc_8c1c2f4e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c2e3e:
	#data 0x00B4
loc_8c1c2e40:
	#data 0x00B2
loc_8c1c2e42:
	#data 0x00A8
	#align4

loc_8C1C2E44:
	#data 0x8C34B1F8
loc_8c1c2e48:
	#data bank1b.loc_8c1b28B4
loc_8c1c2e4c:
	#data bank1b.loc_8c1b0616
loc_8C1C2E50:
	#data 0x8C34B1EC
loc_8c1c2e54:
	#data bank1b.loc_8c1b3EEC
loc_8c1c2e58:
	#data 0x8C34B1E4
loc_8C1C2E5C:
	#data 0x8C34B039
loc_8C1C2E60:
	#data 0x8C34B1E8
loc_8c1c2e64:
	#data 0x8C35398C
loc_8c1c2e68:
	#data 0x8C353985
loc_8c1c2e6c:
	#data bank1b.loc_8c1b3F0C
loc_8c1c2e70:
	#data 0x8C353978
loc_8c1c2e74:
	#data 0x8C34B298
loc_8c1c2e78:
	#data 0x8C34B195
loc_8c1c2e7c:
	#data 0x8C34AF6B

;==============================================
loc_8c1C2E80:
	mov.l @(loc_8c1C2F80,pc),r2 ; r2 set to 0x8C1B2A48
	jsr @r2
	nop
	mov.b r0,@r14
	mov 0x01,r9 ; r9 set to 0x01
	mov.b @r14,r3
	mov.l @(loc_8c1C2F84,pc),r8 ; r8 set to 0x8C353984
	tst r3,r3
	bf/s loc_8c1C2EAE
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(loc_8c1C2F84,pc),r2 ; r2 set to 0x8C353984
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1C2EAE
	mov.l @(loc_8c1C2F8C,pc),r2 ; r2 set to 0x8C1B3EEC
	mov.l @(loc_8c1C2F88,pc),r4 ; r4 set to 0x8C353988
	jsr @r2
	mov 0x07,r5 ; r5 set to 0x07
	mov.b r9,@r14
	mov.b r13,@r8 ; r8 ??
	bra loc_8c1C2EE6
	mov.b r9,@r11

loc_8c1C2EAE:
	mov.b @r14,r2
	tst r2,r2
	bf loc_8c1C2EE0
	mov.l @(loc_8c1C2F84,pc),r3 ; r3 set to 0x8C353984
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c1C2EE0
	mov.l @(loc_8c1C2F90,pc),r2 ; r2 set to 0x8C353985
	mov.b @r2,r0
	tst r0,r0
	bt loc_8c1C2EE0
	mov.l @(loc_8c1C2F88,pc),r0 ; r0 set to 0x8C353988
	jsr @r12
	mov.l @r0,r4
	exts.b r0,r0 ; r0 ??
	tst r0,r0
	bt loc_8c1C2EDC
	mov 0x07,r2 ; r2 set to 0x07
	mov.b r13,@r14
	mov.b r13,@r8
	mov.b r13,@r11
	bra loc_8c1C2EE8
	mov.l r2,@r10

loc_8c1C2EDC:
	bra loc_8c1C2EE6
	mov.b r9,@r14

loc_8c1c2ee0:
	mov.b @r14,r2
	mov.b r2,@r8
	mov.b r13,@r11

loc_8c1c2ee6:
	mov.l r13,@r10

loc_8c1c2ee8:
	mov.l @(loc_8C1C2F94,pc),r2
	mov 0x70,r0
	mov.l @r2,r3

loc_8c1c2eee:
	mov.w @(r0,r3),r1
	extu.w r1,r1
	cmp/pl r1
	bf loc_8c1c2f2c
	mov.l @(loc_8C1C2F98,pc),r5
	mov.b @r14,r1
	mov.b @r5,r3
	cmp/eq r3,r1
	bt loc_8c1c2f2c
	mov.l @(loc_8C1C2FA0,pc),r4
	mov.l @(loc_8C1C2F9C,pc),r6
	mov.l @r4,r3
	mov.l @r6,r1
	sub r3,r1
	mov.l @r10,r3
	sub r3,r1
	mov.l @(loc_8C1C2FA4,pc),r3
	mov.l r1,@r3
	mov.l @r6,r0
	mov.l @r10,r2
	sub r2,r0
	mov.l r0,@r4
	mov.b @r14,r2
	mov.b r2,@r5
	mov.l @(bank1c.loc_8c1c2fa8,pc),r1
	mov.l @r3,r5
	jsr @r1
	mov.b @r14,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c2f4e
	
loc_8c1c2f2c:
	mov.l @(loc_8C1C2FAC,pc),r3
	mov 0x00,r2
	mov.l @r3,r5
	cmp/hi r2,r5
	bf bank1c.loc_8c1c2f5a
	mov.b @r11,r0
	tst r0,r0
	bf bank1c.loc_8c1c2f5a
	mov.b @r14,r1
	tst r1,r1
	bt bank1c.loc_8c1c2f52
	mov.l @(loc_8C1C2FB0,pc),r1
	jsr @r12
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt bank1c.loc_8c1c2f5a
	
loc_8c1C2F4E:
	bra loc_8c1C2F6C
	mov 0x01,r0
	
loc_8c1C2F52:
	mov.l @(0x38,PC),r1
	mov.l @(0x58,PC),r4
	jsr @r1
	nop 

loc_8c1C2F5A:
	mov.l @(0x58,PC),r3
	jsr @r12
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c2f6a
	bra loc_8c1c2f6c
	mov 0x02,r0

loc_8c1C2F6A:
	mov 0x00,r0

loc_8c1C2F6C:
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

loc_8c1C2F80:
	#data bank1b.loc_8c1b2A48
loc_8c1C2F84:
	#data 0x8C353984
loc_8c1C2F88:
	#data 0x8C353988
loc_8c1C2F8C:
	#data bank1b.loc_8c1b3EEC
loc_8c1C2F90:
	#data 0x8C353985
loc_8c1c2f94:
	#data 0x8C34B1F8
loc_8c1c2f98:
	#data 0x8C353979
loc_8c1c2f9c:
	#data 0x8C34B2CC
loc_8c1c2fa0:
	#data 0x8C353980
loc_8c1c2fa4:
	#data 0x8C35397C
loc_8c1C2FA8:
	#data bank1b.loc_8c1b0C86
loc_8c1c2fac:
	#data 0x8C34B1EC
loc_8c1c2fb0:
	#data 0x8C34B1E4
loc_8c1c2fb4:
	#data 0x8C34B1E8

;==============================================
loc_8c1C2FB8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1C3148,pc),r0 ; r0 set to 0x8C34B28E
	add 0xF4,r15
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x06,r0
	bf loc_8c1C2FD8
	bra loc_8c1C3738
	nop

loc_8c1C2FD8:
	mov.l @(loc_8c1C3154,pc),r11 ; r11 set to 0x8C34B0B0
	mov 0x01,r10 ; r10 set to 0x01
	mov.l @(loc_8c1C315C,pc),r2 ; r2 set to 0x8C34B0BC
	mov 0x10,r13 ; r13 set to 0x10
	mov.b @r11,r0
	mov 0x00,r14 ; r14 set to 0x00
	mov.l @(loc_8c1C3160,pc),r3 ; r3 set to 0x8C34B0B1
	mov.l @r2,r4
	extu.b r0,r0
	mov.b @r3,r5
	cmp/eq 0x00,r0
	mov.l @(loc_8c1C314C,pc),r8 ; r8 set to 0x8C1B3F0C
	mov.l @(loc_8c1C3150,pc),r9 ; r9 set to 0x8C3539A0
	mov.l @(loc_8c1C3158,pc),r12 ; r12 set to 0x8C1B3EEC
	bt/s loc_8c1C3034
	extu.b r5,r5
	cmp/eq 0x01,r0
	bt loc_8c1C3064
	cmp/eq 0x02,r0
	bt loc_8c1C30B2
	cmp/eq 0x03,r0
	bf loc_8c1C3008
	bra loc_8c1C3220
	nop

loc_8c1C3008:
	cmp/eq 0x04,r0
	bf loc_8c1C3010
	bra loc_8c1C34F8
	nop

loc_8c1C3010:
	cmp/eq 0x05,r0
	bf loc_8c1C3018
	bra loc_8c1C3532
	nop

loc_8c1C3018:
	cmp/eq 0x06,r0
	bf loc_8c1C3020
	bra loc_8c1C35BC
	nop

loc_8c1C3020:
	cmp/eq 0x07,r0
	bf loc_8c1C3028
	bra loc_8c1C3678
	nop

loc_8c1C3028:
	cmp/eq 0x08,r0
	bf loc_8c1C3030
	bra loc_8c1C370E
	nop

loc_8c1C3030:
	bra loc_8c1C3738
	nop

loc_8c1C3034:
	mov.l @(loc_8c1C3164,pc),r0 ; r0 set to 0x8C34B2CC
	mov.l @(loc_8c1C3168,pc),r3 ; r3 set to 0x8C34B0D0
	mov.l @r0,r1
	mov.l r1,@r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8c1C316C,pc),r2 ; r2 set to 0x8C34B0B4
	mov.b r14,@r2 ; r2 ??? bc r14 is ???
	mov.l @(loc_8c1C3174,pc),r5 ; r5 set to 0xA410
	mov.l @(loc_8c1C3178,pc),r4 ; r4 set to 0x8C3539AC
	mov.l @(loc_8c1C3170,pc),r3 ; r3 set to 0x8C34B0B6
	jsr @r12
	mov.b r14,@r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8c1C317C,pc),r2 ; r2 set to 0x8C3539A6
	mov.b r14,@r2 ; r2 ??? bc r14 is ???
	mov.l @(loc_8c1C3180,pc),r3 ; r3 set to 0x8C3539A7
	mov.b r14,@r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8c1C3184,pc),r1 ; r1 set to 0x8C3539A8
	mov.b r14,@r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8c1C3188,pc),r2 ; r2 set to 0x8C3539A9
	mov.b r10,@r2 ; r2 ??? bc r10 is ???
	mov.l @(loc_8c1C318C,pc),r6 ; r6 set to 0x8C34B0BB
	mov.l @(loc_8c1C315C,pc),r4 ; r4 set to 0x8C34B0BC
	mov.l @(loc_8c1C3190,pc),r3 ; r3 set to 0x8C19C378
	jsr @r3
	mov r15,r5 ; r5 ??? bc r15 is ???

loc_8c1C3064:
	mov.l @(loc_8c1C3194,pc),r2 ; r2 set to 0x8C34B0B5, r2 set to 0x8C34B0B5
	mov.b r14,@r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(loc_8c1C3198,pc),r3 ; r3 set to 0x8C34B0B7, r3 set to 0x8C34B0B7
	mov.b r14,@r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov.l @(loc_8c1C319C,pc),r1 ; r1 set to 0x8C3539A5, r1 set to 0x8C3539A5
	mov.b r14,@r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l @(loc_8c1C31A0,pc),r2 ; r2 set to 0x8C34B0B8, r2 set to 0x8C34B0B8
	mov.b r14,@r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(loc_8c1C31A4,pc),r3 ; r3 set to 0x8C34B28F, r3 set to 0x8C34B28F
	mov.b @r3,r0 ; r0 ??
	or 0x10,r0
	mov.b r0,@r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
	mov 0x02,r1 ; r1 set to 0x02, r1 set to 0x02
	mov.b r1,@r11
	mov.l @(loc_8c1C3160,pc),r0 ; r0 set to 0x8C34B0B1, r0 set to 0x8C34B0B1
	mov.b r14,@r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	mov.l @(loc_8c1C31A8,pc),r4 ; r4 set to 0x8C34B0CC, r4 set to 0x8C34B0CC
	jsr @r12
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.l @(loc_8c1C31AC,pc),r4 ; r4 set to 0x8C34B0C8, r4 set to 0x8C34B0C8
	jsr @r12
	mov 0x04,r5 ; r5 set to 0x04, r5 set to 0x04
	mov.l @(loc_8c1C3190,pc),r3 ; r3 set to 0x8C19C378, r3 set to 0x8C19C378
	mov.l @(loc_8c1C315C,pc),r4 ; r4 set to 0x8C34B0BC, r4 set to 0x8C34B0BC
	mov.l @(loc_8c1C31B0,pc),r6 ; r6 set to 0x8C34B0B9, r6 set to 0x8C34B0B9
	jsr @r3
	mov r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???
	mov.b r14,@r9
	mov.l @(loc_8c1C31B4,pc),r4 ; r4 set to 0x8C353990, r4 set to 0x8C353990
	bra loc_8c1C30A8
	mov r14,r5

loc_8c1C30A2:
	mov.b r14,@r4
	add 0x01,r4
	add 0x01,r5

loc_8c1C30A8:
	extu.w r5,r3
	cmp/ge r13,r3
	bf loc_8c1C30A2
	bra loc_8c1C320C
	nop

loc_8c1C30B2:
	mov.l @(loc_8c1C31A8,pc),r1 ; r1 set to 0x8C34B0CC
	jsr @r8
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C30C2
	bra loc_8c1C31C0
	nop

loc_8c1C30C2:
	mov.l @(loc_8c1C316C,pc),r3 ; r3 set to 0x8C34B0B4
	mov 0x01,r1 ; r1 set to 0x01
	mov.b @r3,r2
	extu.b r2,r2
	cmp/ge r1,r2
	bf loc_8c1C30D2
	bra loc_8c1C31C0
	nop

loc_8c1C30D2:
	mov.l @(loc_8c1C31AC,pc),r3 ; r3 set to 0x8C34B0C8
	jsr @r8
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C30E2
	bra loc_8c1C3738
	nop

loc_8c1C30E2:
	mov.l @(loc_8c1C31AC,pc),r4 ; r4 set to 0x8C34B0C8
	jsr @r12
	mov 0x04,r5 ; r5 set to 0x04
	mov.b @r9,r3
	add 0x01,r3
	mov.b r3,@r9
	add 0xFF,r3
	mov.l @(loc_8c1C31B4,pc),r1 ; r1 set to 0x8C353990
	extu.b r3,r3
	mov.l @(loc_8c1C31B8,pc),r2 ; r2 set to 0x8C19CE60
	add r3,r1 ; r1 ??? bc r3 is ???
	jsr @r2
	mov.l r1,@-r15
	mov.l @r15+,r2 ; r2 ??? bc r15 is ???
	mov.b r0,@r2
	mov.b @r9,r0
	extu.b r0,r0
	cmp/eq 0x10,r0
	bt loc_8c1C310C
	bra loc_8c1C3738
	nop

loc_8c1C310C:
	mov r14,r4
	mov.b r14,@r9
	mov.l @(loc_8c1C31B4,pc),r6 ; r6 set to 0x8C353990
	bra loc_8c1C311E
	mov r14,r5

loc_8c1C3116:
	mov.b @r6+,r3
	add 0x01,r4
	extu.b r3,r3
	add r3,r5

loc_8c1C311E:
	extu.w r4,r2
	cmp/ge r13,r2
	bf loc_8c1C3116
	mov 0x18,r2 ; r2 set to 0x18, r2 set to 0x18
	extu.w r5,r5
	cmp/gt r2,r5
	bt loc_8c1C3130
	bra loc_8c1C3738
	nop

loc_8c1C3130:
	mov.l @(loc_8c1C31BC,pc),r1 ; r1 set to 0x8C3539A4
	bsr loc_8c1C3904
	mov.b r10,@r1 ; r1 ??? bc r10 is ???
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C3140
	bra loc_8c1C34E0
	nop

loc_8c1C3140:
	mov.l @(loc_8c1C31BC,pc),r3 ; r3 set to 0x8C3539A4
	bra loc_8c1C3738
	mov.b r14,@r3
	#data 0x0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C3148:
	#data 0x8C34B28E
loc_8c1C314C:
	#data bank1b.loc_8c1b3F0C
loc_8c1C3150:
	#data 0x8C3539A0
loc_8c1C3154:
	#data 0x8C34B0B0
loc_8c1C3158:
	#data bank1b.loc_8c1b3EEC
loc_8c1C315C:
	#data 0x8C34B0BC
loc_8c1C3160:
	#data 0x8C34B0B1
loc_8c1C3164:
	#data 0x8C34B2CC
loc_8c1C3168:
	#data 0x8C34B0D0
loc_8c1C316C:
	#data 0x8C34B0B4
loc_8c1C3170:
	#data 0x8C34B0B6
loc_8c1C3174:
	#data 0x0000A410
loc_8c1C3178:
	#data 0x8C3539AC
loc_8c1C317C:
	#data 0x8C3539A6
loc_8c1C3180:
	#data 0x8C3539A7
loc_8c1C3184:
	#data 0x8C3539A8
loc_8c1C3188:
	#data 0x8C3539A9
loc_8c1C318C:
	#data 0x8C34B0BB
loc_8c1C3190:
	#data bank19.loc_8c19C378
loc_8c1C3194:
	#data 0x8C34B0B5
loc_8c1C3198:
	#data 0x8C34B0B7
loc_8c1C319C:
	#data 0x8C3539A5
loc_8c1C31A0:
	#data 0x8C34B0B8
loc_8c1C31A4:
	#data 0x8C34B28F
loc_8c1C31A8:
	#data 0x8C34B0CC
loc_8c1C31AC:
	#data 0x8C34B0C8
loc_8c1C31B0:
	#data 0x8C34B0B9
loc_8c1C31B4:
	#data 0x8C353990
loc_8c1C31B8:
	#data bank19.loc_8c19CE60
loc_8c1C31BC:
	#data 0x8C3539A4

;==============================================
loc_8c1C31C0:
	mov.l @(loc_8c1C326C,pc),r1 ; r1 set to 0x8C34B0B5
	mov.b r14,@r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8c1C3270,pc),r3 ; r3 set to 0x8C34B0B7
	mov.b r14,@r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8c1C3274,pc),r2 ; r2 set to 0x8C3539A5
	mov.b r14,@r2 ; r2 ??? bc r14 is ???
	mov.l @(loc_8c1C3278,pc),r1 ; r1 set to 0x8C34B0B8
	mov.b r14,@r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8c1C327C,pc),r3 ; r3 set to 0x8C34B28F
	mov.b @r3,r0
	or 0x10,r0
	mov.b r0,@r3 ; r3 ??? bc r0 is ???
	mov 0x03,r2 ; r2 set to 0x03
	mov.b r2,@r11
	mov.w @(loc_8c1C3266,pc),r5 ; r5 set to 0x1770
	mov.l @(loc_8c1C3284,pc),r4 ; r4 set to 0x8C34B0CC
	mov.l @(loc_8c1C3280,pc),r0 ; r0 set to 0x8C34B0B1
	jsr @r12
	mov.b r14,@r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_8c1C3288,pc),r4 ; r4 set to 0x8C34B0C8
	mov.w @(loc_8c1C3268,pc),r5 ; r5 set to 0x12C
	jsr @r12
	nop
	mov.l @(loc_8c1C3294,pc),r3 ; r3 set to 0x8C19C378
	mov.l @(loc_8c1C3290,pc),r4 ; r4 set to 0x8C34B0BC
	mov.l @(loc_8c1C328C,pc),r6 ; r6 set to 0x8C34B0B9
	jsr @r3
	mov r15,r5 ; r5 ??? bc r15 is ???
	mov.b r14,@r9
	mov.l @(loc_8c1C3298,pc),r4 ; r4 set to 0x8C353990
	bra loc_8c1C3206
	mov r14,r5

loc_8c1C3200:
	mov.b r14,@r4
	add 0x01,r4
	add 0x01,r5
	
loc_8c1c3206:
	extu.w r5,r3
	cmp/ge r13,r3
	bf bank1c.loc_8c1c3200
	
loc_8c1C320C:
	mov.l @(loc_8c1C329C,pc),r3 ; r3 set to 0x8C3539A1
	mov.b r14,@r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8c1C32A0,pc),r2 ; r2 set to 0x8C3539A4
	mov.b r14,@r2 ; r2 ??? bc r14 is ???
	mov.l @(loc_8c1C32A4,pc),r1 ; r1 set to 0x8C3539A2
	mov.l @(loc_8c1C32A8,pc),r3 ; r3 set to 0x8C1B6400
	jsr @r3
	mov.w r14,@r1 ; r1 ??? bc r14 is ???
	bra loc_8c1C3738
	nop

loc_8c1C3220:
	mov.l @(loc_8c1C32AC,pc),r1 ; r1 set to 0x8C19CD7A
	jsr @r1
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C3230
	bra loc_8c1C34F0
	nop

loc_8c1C3230:
	mov.l @(loc_8c1C32B0,pc),r2 ; r2 set to 0x8C19DCCE
	jsr @r2
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1C3254
	mov.l @(loc_8c1C3290,pc),r2 ; r2 set to 0x8C34B0BC
	mov.l @r2,r0
	cmp/eq 0x10,r0
	bf loc_8c1C324A
	mov 0x05,r1 ; r1 set to 0x05
	bra loc_8c1C324E
	mov.b r1,@r11

loc_8c1C324A:
	mov 0x06,r0 ; r0 set to 0x06
	mov.b r0,@r11

loc_8c1C324E:
	mov.l @(loc_8c1C3278,pc),r3 ; r3 set to 0x8C34B0B8, r3 set to 0x8C34B0B8
	bra loc_8c1C35F2
	nop

loc_8c1C3254:
	mov.l @(loc_8c1C32B4,pc),r1 ; r1 set to 0x8C34B293
	mov.b @r1,r3
	extu.b r3,r3
	tst r10,r3
	bt loc_8c1C32B8
	bsr loc_8c1C37A0
	nop
	bra loc_8c1C32D2
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C3266:
	#data 0x1770
loc_8c1C3268:
	#data 0x012C
	#align4

loc_8c1C326C:
	#data 0x8C34B0B5
loc_8c1C3270:
	#data 0x8C34B0B7
loc_8c1C3274:
	#data 0x8C3539A5
loc_8c1C3278:
	#data 0x8C34B0B8
loc_8c1C327C:
	#data 0x8C34B28F
loc_8c1C3280:
	#data 0x8C34B0B1
loc_8c1C3284:
	#data 0x8C34B0CC
loc_8c1C3288:
	#data 0x8C34B0C8
loc_8c1C328C:
	#data 0x8C34B0B9
loc_8c1C3290:
	#data 0x8C34B0BC
loc_8c1C3294:
	#data bank19.loc_8c19C378
loc_8c1C3298:
	#data 0x8C353990
loc_8c1C329C:
	#data 0x8C3539A1
loc_8c1C32A0:
	#data 0x8C3539A4
loc_8c1C32A4:
	#data 0x8C3539A2
loc_8c1C32A8:
	#data bank1b.loc_8c1b6400
loc_8c1C32AC:
	#data bank19.loc_8c19CD7A
loc_8c1C32B0:
	#data bank19.loc_8c19DCCE
loc_8c1C32B4:
	#data 0x8C34B293

;==============================================
loc_8c1c32b8:
	mov.l @(loc_8C1C33B4,pc),r0
	jsr @r8
	mov.l @r0,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c32ca
	mov.l @(bank1c.loc_8c1c33b8,pc),r2
	jsr @r2
	mov 0x00,r4

loc_8c1c32ca:
	mov.l @(loc_8C1C33BC,pc),r3
	mov.b @r3,r0
	or 0x10,r0 
	mov.b r0,@r3

loc_8c1C32D2:
	mov.l @(loc_8c1C33C0,pc),r3 ; r3 set to 0x8C34B0A3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c1C32E0
	bra loc_8c1C3738
	nop

loc_8c1C32E0:
	mov.l @(loc_8c1C33C4,pc),r3 ; r3 set to 0x8C34B0C8
	jsr @r8
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C32F0
	bra loc_8c1C3738
	nop

loc_8c1C32F0:
	mov.l @(loc_8c1C33C4,pc),r4 ; r4 set to 0x8C34B0C8
	jsr @r12
	mov 0x0A,r5 ; r5 set to 0x0A
	mov.l @(loc_8c1C33C8,pc),r3 ; r3 set to 0x8C3539A2
	mov.w @r3,r2
	add 0x01,r2
	mov.w r2,@r3 ; r3 ??? bc r2 is ???
	mov 0x64,r3 ; r3 set to 0x64
	extu.w r2,r2
	cmp/ge r3,r2
	bf loc_8c1C332E
	mov.l @(loc_8c1C33C8,pc),r1 ; r1 set to 0x8C3539A2
	mov.w r14,@r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8c1C33CC,pc),r3 ; r3 set to 0x8C3539A4
	mov.l @(loc_8c1C33D0,pc),r2 ; r2 set to 0x8C1B6400
	jsr @r2
	mov.b r10,@r3 ; r3 ??? bc r10 is ???
	mov.w r0,@(0x08,r15)
	mov 0x0A,r3 ; r3 set to 0x0A
	extu.w r0,r0
	cmp/gt r3,r0
	bf loc_8c1C332A
	bsr loc_8c1C3904
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C332A
	bra loc_8c1C34E0
	nop

loc_8c1c332a:
	mov.l @(bank1c.loc_8c1c33cc,pc),r2
	mov.b r14,@r2

loc_8c1C332E:
	mov.b @r9,r3
	add 0x01,r3
	mov.b r3,@r9
	add 0xFF,r3
	mov.l @(loc_8c1C33D4,pc),r1 ; r1 set to 0x8C353990
	extu.b r3,r3
	mov.l @(loc_8c1C33D8,pc),r2 ; r2 set to 0x8C19CE60
	add r3,r1 ; r1 ??? bc r3 is ???
	jsr @r2
	mov.l r1,@-r15
	mov.l @r15+,r2 ; r2 ??? bc r15 is ???
	mov.b r0,@r2
	mov.b @r9,r0
	extu.b r0,r0
	cmp/eq 0x10,r0
	bt loc_8c1C3352
	bra loc_8c1C3738
	nop

loc_8c1C3352:
	mov r14,r4
	mov.b r14,@r9
	mov.l @(loc_8c1C33D4,pc),r5 ; r5 set to 0x8C353990
	bra loc_8c1C3364
	mov r14,r6

loc_8c1C335C:
	mov.b @r5+,r3
	add 0x01,r4
	extu.b r3,r3
	add r3,r6

loc_8c1C3364:
	extu.w r4,r2
	cmp/ge r13,r2
	bf loc_8c1C335C
	mov.l @(loc_8c1C33DC,pc),r5 ; r5 set to 0x8C34B293, r5 set to 0x8C34B293
	extu.w r6,r4
	tst r4,r4
	bf loc_8c1C33F4
	mov.b @r5,r0
	and 0xFE,r0
	mov.b r0,@r5 ; r5 ??? bc r0 is ???, r5 ??? bc r0 is ???
	mov.l @(loc_8c1C33E0,pc),r3 ; r3 set to 0x8C3539A1, r3 set to 0x8C3539A1
	mov.b r14,@r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov.l @(loc_8c1C33E4,pc),r0 ; r0 set to 0x8C34AF77, r0 set to 0x8C34AF77
	mov.b @r0,r0 ; r0 ??, r0 ??
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1C338A
	bra loc_8c1C3738
	nop

loc_8c1C338A:
	bsr loc_8c1C3854
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C3398
	bra loc_8c1C3738
	nop

loc_8c1C3398:
	mov 0x06,r2 ; r2 set to 0x06
	mov.b r2,@r11
	mov.l @(loc_8c1C33B8,pc),r3 ; r3 set to 0x8C1B689C
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8c1C33E8,pc),r2 ; r2 set to 0x8C34B0BA
	mov.l @(loc_8c1C33EC,pc),r3 ; r3 set to 0x8C19DB9C
	mov.b @r2,r5
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1C33F0,pc),r2 ; r2 set to 0x8C34B0B5
	bra loc_8c1C3738
	mov.b r10,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1c33b4:
	#data 0x8C34B128
loc_8c1C33B8:
	#data bank1b.loc_8c1b689C
loc_8c1c33bc:
	#data 0x8C34B28F
loc_8c1C33C0:
	#data 0x8C34B0A3
loc_8c1C33C4:
	#data 0x8C34B0C8
loc_8c1C33C8:
	#data 0x8C3539A2
loc_8c1C33CC:
	#data 0x8C3539A4
loc_8c1C33D0:
	#data bank1b.loc_8c1b6400
loc_8c1C33D4:
	#data 0x8C353990
loc_8c1C33D8:
	#data bank19.loc_8c19CE60
loc_8c1C33DC:
	#data 0x8C34B293
loc_8c1C33E0:
	#data 0x8C3539A1
loc_8c1C33E4:
	#data 0x8C34AF77
loc_8c1C33E8:
	#data 0x8C34B0BA
loc_8c1C33EC:
	#data bank19.loc_8c19DB9C
loc_8c1C33F0:
	#data 0x8C34B0B5

;==============================================
loc_8c1C33F4:
	mov 0x18,r1 ; r1 set to 0x18
	cmp/ge r1,r4
	bt loc_8c1C340C
	mov.b @r5,r0
	and 0xFE,r0
	mov.b r0,@r5
	mov.l @(loc_8c1C34B4,pc),r4 ; r4 set to 0x8C34B0CC
	mov.w @(loc_8c1C34B0,pc),r5 ; r5 set to 0x1770
	jsr @r12
	nop
	bra loc_8c1C3466
	nop
	
loc_8c1C340C:
	mov.l @(loc_8c1C34B8,pc),r3 ; r3 set to 0x8C34B0FE
	mov 0x03,r0 ; r0 set to 0x03
	mov.b @r3,r2
	extu.b r2,r2
	cmp/gt r0,r2
	bt loc_8c1C344C
	mov r4,r0 ; r0 ??? bc r4 is ???
	nop
	cmp/eq 0x30,r0
	bf loc_8c1C342C
	mov.b @r5,r0
	or 0x01,r0
	bsr loc_8c1C37FC
	mov.b r0,@r5
	bra loc_8c1C3738
	nop
	
loc_8c1C342C:
	mov.l @(loc_8c1C34BC,pc),r2 ; r2 set to 0x8C34B0BC
	mov.l @r2,r0
	cmp/eq 0x10,r0
	bt loc_8c1C3438
	bra loc_8c1C3738
	nop
	
loc_8c1C3438:
	mov.l @(loc_8c1C34C0,pc),r0 ; r0 set to 0x8C34AF77
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1C3446
	bra loc_8c1C3738
	nop
	
loc_8c1C3446:
	mov 0x05,r2 ; r2 set to 0x05
	bra loc_8c1C3576
	mov.b r2,@r11
	
loc_8c1C344C:
	mov r4,r0
	nop
	cmp/eq 0x30,r0
	bt loc_8c1C3490
	mov.l @(loc_8c1C34B4,pc),r4 ; r4 set to 0x8C34B0CC
	mov.w @(loc_8c1C34B0,pc),r5 ; r5 set to 0x1770
	jsr @r12
	nop
	mov.l @(loc_8c1C34C4,pc),r0 ; r0 set to 0x8C34AF84
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1C346C
	
loc_8c1C3466:
	mov.l @(loc_8c1C34C8,pc),r2 ; r2 set to 0x8C3539A1, r2 set to 0x8C3539A1
	bra loc_8c1C3738
	mov.b r14,@r2
	
loc_8c1C346C:
	mov.l @(loc_8c1C34C8,pc),r1 ; r1 set to 0x8C3539A1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1C34AA
	mov.l @(loc_8c1C34C0,pc),r0 ; r0 set to 0x8C34AF77
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1C3482
	bra loc_8c1C3738
	nop
	
loc_8c1C3482:
	bsr loc_8c1C3904
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1C34E8
	bra loc_8c1C34E0
	nop
	
loc_8c1C3490:
	mov.l @(loc_8c1C34B4,pc),r4 ; r4 set to 0x8C34B0CC
	mov.w @(loc_8c1C34B0,pc),r5 ; r5 set to 0x1770
	jsr @r12
	nop
	mov.l @(loc_8c1C34C4,pc),r0 ; r0 set to 0x8C34AF84
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1C34CC
	mov.l @(loc_8c1C34C8,pc),r3 ; r3 set to 0x8C3539A1
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1C34CC
	
loc_8c1C34AA:
	mov.l @(loc_8c1C34C8,pc),r2 ; r2 set to 0x8C3539A1, r2 set to 0x8C3539A1
	bra loc_8c1C3738
	mov.b r10,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C34B0:
	#data 0x1770
	#align4

loc_8c1C34B4:
	#data 0x8C34B0CC
loc_8c1C34B8:
	#data 0x8C34B0FE
loc_8c1C34BC:
	#data 0x8C34B0BC
loc_8c1C34C0:
	#data 0x8C34AF77
loc_8c1C34C4:
	#data 0x8C34AF84
loc_8c1C34C8:
	#data 0x8C3539A1

;==============================================
loc_8c1c34cc:
	mov.l @(loc_8C1C3598,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0 
	bt bank1c.loc_8c1c34e8
	bsr bank1c.loc_8c1c3904
	nop 
	exts.b r0,r0
	tst r0,r0
	bt bank1c.loc_8c1c34e8

loc_8c1C34E0:
	bsr loc_8c1C3C98
	nop
	bra loc_8c1C3738
	nop

loc_8c1C34E8:
	bsr loc_8c1C3D00
	nop
	bra loc_8c1C3738
	nop

loc_8c1C34F0:
	bsr loc_8c1C37A0
	nop
	bra loc_8c1C3738
	nop

loc_8c1C34F8:
	mov r4,r0
	nop
	cmp/eq 0x10,r0
	bf loc_8c1C3514
	mov 0x00,r7 ; r7 set to 0x00
	mov 0x05,r0 ; r0 set to 0x05
	mov r7,r6 ; r6 set to 0x00
	mov r0,r5 ; r5 set to 0x05
	mov.b r0,@r11
	mov.l @(loc_8c1C359C,pc),r1 ; r1 set to 0x8C19DAAC
	jsr @r1
	mov r0,r4 ; r4 set to 0x05
	bra loc_8c1C351C
	nop

loc_8c1C3514:
	mov 0x06,r1 ; r1 set to 0x06
	mov.b r1,@r11
	bsr loc_8c1C3D00
	nop

loc_8c1C351C:
	mov.l @(loc_8c1C35A0,pc),r3 ; r3 set to 0x8C34B0B7, r3 set to 0x8C34B0B7
	mov.b r10,@r3 ; r3 ??? bc r10 is ???, r3 ??? bc r10 is ???
	mov.l @(loc_8c1C35A4,pc),r2 ; r2 set to 0x8C3539A5, r2 set to 0x8C3539A5
	mov.b r14,@r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(loc_8c1C35A8,pc),r1 ; r1 set to 0x8C34B0B3, r1 set to 0x8C34B0B3
	mov.b r14,@r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l @(loc_8c1C35AC,pc),r3 ; r3 set to 0x8C1B689C, r3 set to 0x8C1B689C
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
	bra loc_8c1C3738
	nop

loc_8c1C3532:
	mov.l @(loc_8c1C35B0,pc),r14 ; r14 set to 0x8C34B0B2
	mov r5,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1C3544
	cmp/eq 0x01,r0
	bt loc_8c1C3552
	bra loc_8c1C3738
	nop

loc_8c1C3544:
	mov.l @(loc_8c1C35B4,pc),r4 ; r4 set to 0x8C34B0C0
	mov.w @(loc_8c1C3596,pc),r5 ; r5 set to 0xC8
	jsr @r12
	nop
	mov 0x03,r3 ; r3 set to 0x03
	bra loc_8c1C35F0
	mov.b r3,@r14

loc_8c1C3552:
	mov.l @(loc_8c1C35B4,pc),r0 ; r0 set to 0x8C34B0C0
	jsr @r8
	mov.l @r0,r4
	exts.b r0,r0 ; r0 ??
	tst r0,r0
	bt loc_8c1C3586
	mov.b @r14,r2
	add 0xFF,r2
	mov.b r2,@r14
	extu.b r2,r2
	tst r2,r2
	bf loc_8c1C356E
	bra loc_8c1C365A
	nop

loc_8c1C356E:
	mov.l @(loc_8c1C35B4,pc),r4 ; r4 set to 0x8C34B0C0
	mov.w @(loc_8c1C3596,pc),r5 ; r5 set to 0xC8
	jsr @r12
	nop

loc_8c1C3576:
	mov.l @(loc_8c1C359C,pc),r3 ; r3 set to 0x8C19DAAC, r3 set to 0x8C19DAAC
	mov 0x00,r7 ; r7 set to 0x00, r7 set to 0x00
	mov 0x05,r5 ; r5 set to 0x05, r5 set to 0x05
	mov r7,r6 ; r6 set to 0x00, r6 set to 0x00
	jsr @r3
	mov r5,r4 ; r4 set to 0x05, r4 set to 0x05
	bra loc_8c1C3738
	nop

loc_8c1C3586:
	mov.l @(loc_8c1C35B8,pc),r3 ; r3 set to 0x8C19DDC6
	jsr @r3
	nop
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c1C3640
	bra loc_8c1C3738
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C3596:
	#data 0x00C8
	#align4

loc_8c1c3598:
	#data 0x8C34AF77
loc_8c1C359C:
	#data bank19.loc_8c19DAAC
loc_8c1C35A0:
	#data 0x8C34B0B7
loc_8c1C35A4:
	#data 0x8C3539A5
loc_8c1C35A8:
	#data 0x8C34B0B3
loc_8c1C35AC:
	#data bank1b.loc_8c1b689C
loc_8c1C35B0:
	#data 0x8C34B0B2
loc_8c1C35B4:
	#data 0x8C34B0C0
loc_8c1C35B8:
	#data bank19.loc_8c19DDC6

;==============================================
loc_8c1C35BC:
	mov r5,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1C35D0
	cmp/eq 0x01,r0
	bt loc_8c1C35F6
	cmp/eq 0x02,r0
	bt loc_8c1C3626
	bra loc_8c1C3738
	nop
	
loc_8c1c35d0:
	mov.w @(loc_8C1C3660,pc),r1
	cmp/eq r1,r4
	bt loc_8c1c35e2
	mov.w @(loc_8C1C3662,pc),r0
	cmp/eq r0,r4
	bt loc_8c1c35e2
	mov.w @(loc_8C1C3664,pc),r2
	cmp/eq r2,r4
	bf loc_8c1c35e8
	
loc_8c1c35e2:
	mov.w @(loc_8C1C3666,pc),r5
	bra loc_8c1c35ea
	nop 
	
loc_8c1c35e8:
	mov.w @(loc_8C1C3668,pc),r5
	
loc_8c1c35ea:
	mov.l @(bank1c.loc_8c1c366c,pc),r4
	jsr @r12
	nop 
	
loc_8c1C35F0:
	mov.l @(loc_8c1C3670,pc),r3 ; r3 set to 0x8C34B0B1
	
loc_8c1C35F2:
	bra loc_8c1C3738
	mov.b r10,@r3
	
loc_8c1C35F6:
	mov.l @(loc_8c1C3674,pc),r1 ; r1 set to 0x8C19DDC6
	jsr @r1
	nop
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1C3616
	mov.l @(loc_8c1C366C,pc),r2 ; r2 set to 0x8C34B0C0
	jsr @r8
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1C3612
	bra loc_8c1C3738
	nop
	
loc_8c1C3612:
	bra loc_8c1C365A
	nop
	
loc_8c1C3616:
	mov.w @(loc_8c1C366A,pc),r5 ; r5 set to 0x1770
	mov 0x02,r1 ; r1 set to 0x02
	mov.l @(loc_8c1C366C,pc),r4 ; r4 set to 0x8C34B0C0
	mov.l @(loc_8c1C3670,pc),r3 ; r3 set to 0x8C34B0B1
	jsr @r12
	mov.b r1,@r3 ; r3 ??
	bra loc_8c1C3738
	nop
	
loc_8c1c3626:
	mov.l @(bank1c.loc_8c1c3674,pc),r1
	jsr @r1
	nop 
	extu.b r0,r4
	extu.w r4,r14
	mov r14,r0
	nop 
	cmp/eq 0x03,r0 
	bt loc_8c1c3640
	mov r14,r0
	nop 
	cmp/eq 0x04,r0 
	bf bank1c.loc_8c1c3646
	
loc_8c1C3640:
	mov 0x07,r3 ; r3 set to 0x07
	bra loc_8c1C3738
	mov.b r3,@r11
	
loc_8c1C3646:
	mov.l @(0x24,PC),r1
	jsr @r8
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c365a
	mov r14,r0
	nop 
	cmp/eq 0x05,r0
	bf loc_8c1c3738

loc_8c1C365A:
	mov 0x08,r3 ; r3 set to 0x08
	bra loc_8c1C3738
	mov.b r3,@r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c3660:
	#data 0x0080
loc_8c1c3662:
	#data 0x0200
loc_8c1c3664:
	#data 0x0100
loc_8c1c3666:
	#data 0x08FC
loc_8c1c3668:
	#data 0x012C
loc_8c1C366A:
	#data 0x1770
	#align4

loc_8c1C366C:
	#data 0x8C34B0C0
loc_8c1C3670:
	#data 0x8C34B0B1
loc_8c1C3674:
	#data bank19.loc_8c19DDC6

;==============================================
loc_8c1c3678:
	mov.l @(bank1c.loc_8c1c3754,pc),r1
	jsr @r1
	nop 
	mov.l @(bank1c.loc_8c1c3758,pc),r2
	jsr @r2
	nop 
	mov.l @(bank1c.loc_8c1c375c,pc),r1
	jsr @r1
	nop 
	mov.l @(loc_8C1C3760,pc),r4
	mov r15,r6
	mov.l @(bank1c.loc_8c1c3764,pc),r3
	add 0x04,r6
	jsr @r3
	mov r15,r5
	mov.l @(loc_8C1C3768,pc),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1c36a6
	mov.l @(loc_8C1C376C,pc),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c1c36fe

loc_8c1c36a6:
	mov.l @(loc_8C1C3770,pc),r4
	jsr @r12
	mov 0x32,r5
	mov.l @(loc_8C1C3774,pc),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1c36bc
	mov.l @(loc_8C1C376C,pc),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1c36d0

loc_8c1c36bc:
	mov.l @(bank1c.loc_8c1c3778,pc),r3
	jsr @r3
	nop 
	mov.l @(bank1c.loc_8c1c377c,pc),r2
	jsr @r2
	nop 
	mov.l @(loc_8C1C376C,pc),r3
	mov.b r14,@r3
	mov.l @(loc_8C1C3774,pc),r2
	mov.b r14,@r2

loc_8c1c36d0:
	mov.l @(loc_8C1C3780,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf bank1c.loc_8c1c3736
	mov.l @(loc_8C1C3760,pc),r0
	mov.w @(loc_8C1C374C,pc),r1
	mov.l @r0,r2
	cmp/eq r1,r2
	bt bank1c.loc_8c1c3736
	mov.l @r0,r2
	mov.w @(loc_8C1C374E,pc),r3
	cmp/eq r3,r2
	bt bank1c.loc_8c1c3736
	mov.l @(loc_8C1C3760,pc),r3
	mov.w @(loc_8C1C3750,pc),r2
	mov.l @r3,r0
	cmp/eq r2,r0
	bt bank1c.loc_8c1c3736
	mov.l @(loc_8C1C3784,pc),r1
	mov.b @(0x04,r15),r0 
	bra bank1c.loc_8c1c3736
	mov.b r0,@r1

loc_8c1c36fe:
	mov.l @(loc_8C1C3788,pc),r3
	mov.b @(0x04,r15),r0 
	mov.b @r3,r2
	cmp/eq r0,r2
	bt bank1c.loc_8c1c3736
	mov.l @(loc_8C1C378C,pc),r1
	bra bank1c.loc_8c1c3736
	mov.b r10,@r1

loc_8c1C370E:
	mov.l @(loc_8c1C3790,pc),r0 ; r0 set to 0x8C34AF5A
	mov.w @(loc_8c1C3752,pc),r1 ; r1 set to 0xFF
	mov.b @r0,r3
	extu.b r3,r3
	cmp/eq r1,r3
	bt loc_8c1C3724
	mov.l @(loc_8c1C3794,pc),r2 ; r2 set to 0x8C1AF998
	jsr @r2
	nop
	bra loc_8c1C3738
	nop

loc_8c1c3724:
	mov.l @(bank1c.loc_8c1c3798,pc),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(bank1c.loc_8c1c379c,pc),r3
	jsr @r3
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c3738

loc_8c1c3736:
	mov.b r10,@r11

loc_8c1C3738:
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
loc_8c1c374c:
	#data 0x0080
loc_8c1c374e:
	#data 0x0200
loc_8c1c3750:
	#data 0x0100
loc_8c1C3752:
	#data 0x00FF
	#align4

loc_8c1C3754:
	#data bank1b.loc_8c1bF5C8
loc_8c1C3758:
	#data bank1a.loc_8c1aF31A
loc_8c1C375C:
	#data bank1b.loc_8c1b398A
loc_8c1c3760:
	#data 0x8C34B0BC
loc_8c1C3764:
	#data bank19.loc_8c19C378
loc_8c1c3768:
	#data 0x8C34B0B5
loc_8c1c376c:
	#data 0x8C3539A5
loc_8c1c3770:
	#data 0x8C34B128
loc_8c1c3774:
	#data 0x8C34B0B7
loc_8c1C3778:
	#data bank1a.loc_8c1aF914
loc_8c1C377C:
	#data bank1a.loc_8c1aF91A
loc_8c1c3780:
	#data 0x8C34B0B8
loc_8c1c3784:
	#data 0x8C34B0BB
loc_8c1c3788:
	#data 0x8C34B0BA
loc_8c1c378c:
	#data 0x8C34B0B6
loc_8c1C3790:
	#data 0x8C34AF5A
loc_8c1C3794:
	#data bank1a.loc_8c1aF998
loc_8c1C3798:
	#data bank1b.loc_8c1b689C
loc_8c1C379C:
	#data bank19.loc_8c19CD7A

;==============================================
loc_8c1C37A0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c1C37FC
	nop
	mov.l @(loc_8c1C3834,pc),r4 ; r4 set to 0x8C34B28F
	mov.l @(loc_8c1C3830,pc),r14 ; r14 set to 0x8C34AF50
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1C37D2
	mov.b @r4,r0
	and 0xEF,r0
	mov.b r0,@r4 ; r4 ??? bc r0 is ???
	mov.b @(0x0A,r14),r0
	lds.l @r15+,pr
	extu.b r0,r0
	mov.l @(loc_8c1C383C,pc),r2 ; r2 set to 0x8C1B3EEC
	mov r0,r3
	shll2 r0
	add r3,r0
	mov.l @(loc_8c1C3838,pc),r4 ; r4 set to 0x8C34B0C4
	shll r0
	mov r0,r5
	jmp @r2
	mov.l @r15+,r14

loc_8c1c37d2:
	mov.b @(0x0A,r14),r0 
	mov.w @(loc_8C1C382E,pc),r3
	extu.b r0,r0
	cmp/eq r3,r0
	bt loc_8c1c37f6
	mov.l @(bank1c.loc_8c1c3840,pc),r2
	mov.l @(bank1c.loc_8c1c3838,pc),r1
	jsr @r2
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c37f6
	mov 0x08,r3
	add 0x2D,r14
	mov 0x00,r2
	mov.b r2,@r14
	mov.l @(loc_8C1C3844,pc),r1
	mov.b r3,@r1

loc_8c1c37f6:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8c1C37FC:
	sts.l pr,@-r15
	mov.l @(loc_8c1C3848,pc),r4 ; r4 set to 0x8C34B288
	mov r4,r0 ; r0 set to 0x8C34B288
	nop
	add 0x1B,r0 ; r0 set to 0x8C34B2A3
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1C3828
	mov r4,r0 ; r0 set to 0x8C34B288
	nop
	add 0x19,r0 ; r0 set to 0x8C34B2A1
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1C3828
	mov.l @(loc_8c1C384C,pc),r2 ; r2 set to 0x8C1B689C
	jsr @r2
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8c1C3850,pc),r3 ; r3 set to 0x8C1B6048
	jmp @r3
	lds.l @r15+,pr

loc_8c1C3828:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c382e:
	#data 0x00FF
	#align4

loc_8c1C3830:
	#data 0x8C34AF50
loc_8c1C3834:
	#data 0x8C34B28F
loc_8c1C3838:
	#data 0x8C34B0C4
loc_8c1C383C:
	#data bank1b.loc_8c1b3EEC
loc_8c1C3840:
	#data bank1b.loc_8c1b3F0C
loc_8c1c3844:
	#data 0x8C34B0B0
loc_8c1C3848:
	#data 0x8C34B288
loc_8c1C384C:
	#data bank1b.loc_8c1b689C
loc_8c1C3850:
	#data bank1b.loc_8c1b6048

;==============================================
loc_8c1c3854:
	mov.l r8,@-r15
	mov.l @(loc_8C1C392C,pc),r0
	sts.l pr,@-r15
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x01,r0 
	bt loc_8c1c38fc
	mov.l @(loc_8C1C3934,pc),r0
	mov.l @(loc_8C1C3930,pc),r3
	mov.b @r0,r1
	mov.b @r3,r2
	cmp/hs r1,r2
	bt loc_8c1c38fc
	mov.b @r3,r1
	mov.l @(loc_8C1C3938,pc),r3
	mov.b @r3,r2
	cmp/hs r2,r1
	bt loc_8c1c38fc
	mov.l @(loc_8C1C393C,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bt loc_8c1c38fc
	mov.l @(bank1c.loc_8c1c3940,pc),r3
	jsr @r3
	nop 
	mov r0,r4
	bsr loc_8c1c3b28
	mov 0x00,r5
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c38fc
	mov.l @(loc_8C1C3944,pc),r1
	mov.w @(loc_8C1C3928,pc),r3
	mov.l @r1,r2
	cmp/eq r3,r2
	bf loc_8c1c38b4
	mov.l @(loc_8C1C3948,pc),r0
	mov.b @r0,r2
	tst r2,r2
	bt loc_8c1c38b4
	mov.l @(bank1c.loc_8c1c394c,pc),r1
	mov.b @r0,r2
	jsr @r1
	extu.b r2,r8
	extu.b r0,r0
	cmp/gt r0,r8
	bt loc_8c1c38fc

loc_8c1c38b4:
	mov.l @(loc_8C1C3944,pc),r3
	mov.l @r3,r0
	cmp/eq 0x40,r0 
	bf loc_8c1c38d4
	mov.l @(loc_8C1C3948,pc),r2
	mov.b @r2,r1
	tst r1,r1
	bt loc_8c1c38d4
	mov.b @r2,r1
	extu.b r1,r8
	mov.l @(bank1c.loc_8c1c3950,pc),r1
	jsr @r1
	nop 
	extu.b r0,r0
	cmp/gt r0,r8
	bt loc_8c1c38fc

loc_8c1c38d4:
	mov.l @(bank1c.loc_8c1c3958,pc),r2
	mov.l @(loc_8C1C3954,pc),r3
	jsr @r2
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c38ea
	mov.l @(loc_8C1C395C,pc),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c1c38fc

loc_8c1c38ea:
	mov.l @(bank1c.loc_8c1c3960,pc),r3
	mov.l @(loc_8C1C3954,pc),r4
	mov.w @(loc_8C1C392A,pc),r5
	jsr @r3
	nop 
	lds.l @r15+,pr 
	mov 0x01,r0
	rts 
	mov.l @r15+,r8

;==============================================
loc_8c1c38fc:
	mov 0x00,r0
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r8

;==============================================
loc_8c1c3904:
	mov.l r14,@-r15
	mov 0x10,r3
	mov.l r13,@-r15
	mov.l r8,@-r15
	mov.l @(0x54,PC),r4
	sts.l pr,@-r15
	mov r4,r5
	add 0x18,r5
	mov.b @r5,r5
	extu.b r5,r5
	tst r5,r3
	bf.s loc_8c1c3924
	mov 0x01,r13
	mov 0x08,r1
	tst r5,r1
	bt loc_8c1c3968

loc_8c1c3924:
	bra loc_8c1c396a
	mov r13,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1C3928:
	#data 0x0080
loc_8C1C392A:
	#data 0x1770
	#align4

loc_8C1C392C:
	#data 0x8C34AF77
loc_8C1C3930:
	#data 0x8C34B0B9
loc_8C1C3934:
	#data 0x8C34B0BB
loc_8C1C3938:
	#data 0x8C34B0F0
loc_8C1C393C:
	#data 0x8C34B0B6
loc_8c1c3940:
	#data bank19.loc_8c19c6de
loc_8C1C3944:
	#data 0x8C34B0BC
loc_8C1C3948:
	#data 0x8C34B0BA
loc_8c1c394c:
	#data bank1b.loc_8c1bec2c
loc_8c1c3950:
	#data bank1b.loc_8c1bec20
loc_8C1C3954:
	#data 0x8C34B0CC
loc_8c1c3958:
	#data bank1b.loc_8c1b3f0c
loc_8C1C395C:
	#data 0x8C3539A5
loc_8c1c3960:
	#data bank1b.loc_8c1b3eec
	#data 0x8C34AF50

;==============================================
loc_8c1c3968:
	mov 0x00,r5

loc_8c1c396a:
	mov r4,r0
	nop 
	add 0x27,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1c397e
	exts.b r5,r5
	tst r5,r5
	bf loc_8c1c398a

loc_8c1c397e:
	mov.l @(0x6C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1c398a
	bra loc_8c1c3b18
	nop 

loc_8c1c398a:
	mov.l @(0x64,PC),r14
	mov 0x02,r3
	mov.b @r14,r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c1c39a8
	mov.l @(0x60,PC),r2
	mov.l @(0x58,PC),r1
	jsr @r2
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c39a8
	bra loc_8c1c3b18
	nop 

loc_8c1c39a8:
	mov.l @(0x50,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1c3a14
	mov.l @(0x4C,PC),r0
	mov.w @(0x32,PC),r3
	mov.l @r0,r1
	cmp/eq r3,r1
	bf loc_8c1c3a14
	mov.l @(0x48,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bf loc_8c1c3a14
	mov.l @(0x44,PC),r2
	mov.b r13,@r2
	mov.l @(0x2C,PC),r2
	mov.l @(0x40,PC),r0
	mov.l @r2,r1
	mov.l @r0,r3
	cmp/hi r3,r1
	bt loc_8c1c39e0
	mov.l @(0x3C,PC),r2
	mov.l @(0x1C,PC),r4
	mov.w @(0x10,PC),r5
	jsr @r2
	nop 
	bra loc_8c1c3b18
	mov.b r13,@r14

loc_8c1c39e0:
	mov.b @r14,r2
	add 0x01,r2
	bra loc_8c1c3b18
	mov.b r2,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c39e8:
	#data 0x0200
loc_8c1c39ea:
	#data 0x07D0
	#align4

loc_8c1c39ec:
	#data 0x8C3539A4
loc_8c1c39f0:
	#data 0x8C34B0B4
loc_8c1c39f4:
	#data 0x8C34B0D0
loc_8c1c39f8:
	#data bank1b.loc_8c1b3F0C
loc_8c1c39fc:
	#data 0x8C34AF5F
loc_8c1c3a00:
	#data 0x8C34B0BC
loc_8c1c3a04:
	#data 0x8C3539A7
loc_8c1c3a08:
	#data 0x8C3539A8
loc_8c1c3a0c:
	#data 0x8C34B2CC
loc_8c1c3a10:
	#data bank1b.loc_8c1b3EEC

;==============================================
loc_8c1c3a14:
	mov.l @(0xA4,PC),r2
	mov 0x00,r3
	mov.b r3,@r2
	mov.l @(0xA4,PC),r14
	mov.l @r14,r0
	cmp/eq 0x40,r0
	bt.s loc_8c1c3a3a
	mov r0,r4
	mov.w @(0x8C,PC),r2
	cmp/eq r2,r4
	bt loc_8c1c3a3a
	mov.w @(0x88,PC),r1
	cmp/eq r1,r4
	bt loc_8c1c3a3a
	mov.w @(0x84,PC),r0
	cmp/eq r0,r4
	bt loc_8c1c3a3a
	bra loc_8c1c3b18
	nop 

loc_8c1c3a3a:
	mov.l @(0x88,PC),r2
	jsr @r2
	nop 
	mov.l @r14,r2
	mov.w @(0x70,PC),r3
	cmp/eq r3,r2
	bf.s loc_8c1c3ad0
	mov r0,r4
	mov.l @(0x80,PC),r2
	mov.l @(0x78,PC),r4
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x21,r0
	bt loc_8c1c3aae
	cmp/eq 0x23,r0
	bt loc_8c1c3aaa
	cmp/eq 0x25,r0
	bt loc_8c1c3aa6
	cmp/eq 0x28,r0
	bt loc_8c1c3aa2
	cmp/eq 0x2A,r0
	bt loc_8c1c3a9e
	cmp/eq 0x2C,r0
	bt loc_8c1c3a9a
	cmp/eq 0x2E,r0
	bt loc_8c1c3a96
	cmp/eq 0x30,r0
	bt loc_8c1c3a92
	cmp/eq 0x32,r0
	bt loc_8c1c3a8e
	cmp/eq 0x34,r0
	bt loc_8c1c3a8a
	cmp/eq 0x36,r0
	bt loc_8c1c3a86
	cmp/eq 0x38,r0
	bf loc_8c1c3b18
	bra loc_8c1c3ab0
	mov 0x36,r1

loc_8c1c3a86:
	bra loc_8c1c3ab0
	mov 0x34,r1

loc_8c1c3a8a:
	bra loc_8c1c3ab0
	mov 0x32,r1

loc_8c1c3a8e:
	bra loc_8c1c3ab0
	mov 0x30,r1

loc_8c1c3a92:
	bra loc_8c1c3ab0
	mov 0x2E,r1

loc_8c1c3a96:
	bra loc_8c1c3ab0
	mov 0x2C,r1

loc_8c1c3a9a:
	bra loc_8c1c3ab0
	mov 0x2A,r1

loc_8c1c3a9e:
	bra loc_8c1c3ab0
	mov 0x28,r1

loc_8c1c3aa2:
	bra loc_8c1c3ab0
	mov 0x25,r1

loc_8c1c3aa6:
	bra loc_8c1c3ab0
	mov 0x23,r1

loc_8c1c3aaa:
	bra loc_8c1c3ab0
	mov 0x21,r1

loc_8c1c3aae:
	mov 0x1E,r1

loc_8c1c3ab0:
	bra loc_8c1c3ada
	mov.b r1,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c3ab4:
	#data 0x0080
loc_8c1c3ab6:
	#data 0x0100
loc_8c1c3ab8:
	#data 0x0200
	#align4

loc_8c1c3abc:
	#data 0x8C3539A7
loc_8c1c3ac0:
	#data 0x8C34B0BC
loc_8c1c3ac4:
	#data bank19.loc_8c19C6DE
loc_8c1c3ac8:
	#data 0x8C34B0BA
loc_8c1c3acc:
	#data 0x8C34B0B9

;==============================================
loc_8c1c3ad0:
	bsr loc_8c1c3b28
	mov 0x01,r5
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c3b18

loc_8c1c3ada:
	mov.l @r14,r3
	mov.w @(0xB8,PC),r2
	cmp/eq r2,r3
	bt loc_8c1c3af2
	mov.l @r14,r1
	mov.w @(0xB2,PC),r0
	cmp/eq r0,r1
	bt loc_8c1c3af2
	mov.l @r14,r1
	mov.w @(0xAC,PC),r3
	cmp/eq r3,r1
	bf loc_8c1c3b02

loc_8c1c3af2:
	mov.l @(0xAC,PC),r2
	mov.l @(0xAC,PC),r3
	mov.b @r2,r0
	jsr @r3
	extu.b r0,r8
	extu.b r0,r0
	cmp/ge r0,r8
	bf loc_8c1c3b18

loc_8c1c3b02:
	mov.l @r14,r0
	cmp/eq 0x40,r0
	bf loc_8c1c3b1c
	mov.l @(0x94,PC),r2
	mov.l @(0x9C,PC),r1
	mov.b @r2,r3
	jsr @r1
	extu.b r3,r8
	extu.b r0,r0
	cmp/ge r0,r8
	bt loc_8c1c3b1c

loc_8c1c3b18:
	bra loc_8c1c3b1e
	mov 0x00,r0

loc_8c1c3b1c:
	mov 0x01,r0

loc_8c1c3b1e:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1c3b28:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r0
	nop 
	mov.b r0,@(0x04,r15) 
	mov 0x00,r11
	mov.l r11,@r15
	mov.l @(loc_8C1C3BAC,pc),r3
	mov.l @r3,r0
	cmp/eq 0x40,r0 
	bt/s loc_8c1c3b58
	mov r4,r13
	mov.w @(loc_8C1C3B98,pc),r1
	cmp/eq r1,r0
	bt loc_8c1c3b64
	mov.w @(loc_8C1C3B9C,pc),r1
	cmp/eq r1,r0
	bt loc_8c1c3b6a
	bra loc_8c1c3c2a
	nop 

loc_8c1c3b58:
	mov.l @(bank1c.loc_8c1c3bb0,pc),r14
	mov 0x07,r12
	bsr loc_8c1c3c3e
	mov r13,r4
	bra loc_8c1c3b6e
	mov r0,r13

loc_8c1c3b64:
	mov.l @(bank1c.loc_8c1c3bb4,pc),r14
	bra loc_8c1c3b6e
	mov 0x0E,r12

loc_8c1c3b6a:
	mov.l @(bank1c.loc_8c1c3bb8,pc),r14
	mov 0x16,r12

loc_8c1c3b6e:
	extu.b r12,r5
	cmp/pl r5
	bf/s loc_8c1c3bc8
	mov r11,r4
	mov.l @(loc_8C1C3BBC,pc),r6

loc_8c1c3b78:
	extu.b r4,r2
	mov.b @r6,r3
	shll2 r2
	shll r2
	add r14,r2
	mov.l @r2,r1
	extu.b r3,r3
	cmp/eq r1,r3
	bf loc_8c1c3bc0
	extu.b r4,r2
	shll2 r2
	shll r2
	add r14,r2
	mov.l @(0x04,r2),r3
	bra loc_8c1c3bc8
	mov.l r3,@r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1C3B98:
	#data 0x0080
loc_8C1C3B9a:
	#data 0x0100
loc_8C1C3B9C:
	#data 0x0200
	#align4

loc_8C1C3Ba0:
	#data 0x8C34B0BA
loc_8c1c3ba4:
	#data bank1b.loc_8c1bEC26
loc_8c1c3ba8:
	#data bank1b.loc_8c1bEC1A
loc_8C1C3BAC:
	#data 0x8C34B0BC
loc_8c1c3bb0:
	#data bank1c.loc_8c1c8f80
loc_8c1c3bb4:
	#data bank1c.loc_8c1c8fb8
loc_8c1c3bb8:
	#data bank1c.loc_8c1c9028
loc_8C1C3BBC:
	#data 0x8C34B0B9

;==============================================
loc_8c1c3bc0:
	add 0x01,r4
	extu.b r4,r3
	cmp/ge r5,r3
	bf loc_8c1c3b78

loc_8c1c3bc8:
	extu.b r4,r4
	cmp/eq r4,r5
	bt loc_8c1c3c2a
	mov.b @(0x04,r15),r0 
	tst r0,r0
	bt loc_8c1c3be8

loc_8c1c3bd4:
	mov.l @r15,r2
	tst r2,r2
	bt loc_8c1c3bf0
	mov.l @r15,r3
	shlr r3
	tst r13,r3
	bt/s loc_8c1c3bd4
	mov.l r3,@r15
	bra loc_8c1c3bf0
	nop 

loc_8c1c3be8:
	mov.l @r15,r2
	shll r2
	and r13,r2
	mov.l r2,@r15

loc_8c1c3bf0:
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c1c3c2a
	cmp/pl r5
	bf/s loc_8c1c3c24
	mov r11,r4
	mov.l @(loc_8C1C3C94,pc),r6

loc_8c1c3bfe:
	extu.b r4,r3
	mov.l @r15,r1
	shll2 r3
	shll r3
	add r14,r3
	mov.l @(0x04,r3),r2
	cmp/eq r2,r1
	bf loc_8c1c3c1c
	extu.b r4,r3
	shll2 r3
	shll r3
	add r14,r3
	mov.l @r3,r2
	bra loc_8c1c3c24
	mov.b r2,@r6

loc_8c1c3c1c:
	add 0x01,r4
	extu.b r4,r2
	cmp/ge r5,r2
	bf loc_8c1c3bfe

loc_8c1c3c24:
	extu.b r4,r4
	cmp/eq r4,r5
	bf loc_8c1c3c2e

loc_8c1c3c2a:
	bra loc_8c1c3c30
	mov 0x00,r0

loc_8c1c3c2e:
	mov 0x01,r0

loc_8c1c3c30:
	add 0x08,r15
	lds.l @r15+,pr 
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1c3c3e:
	mov r4,r3
	mov 0x20,r6
	tst r6,r3
	bt/s loc_8c1c3c4a
	mov 0x00,r5
	mov 0x01,r5

loc_8c1c3c4a:
	mov.w @(loc_8C1C3C88,pc),r3
	tst r4,r3
	bt/s loc_8c1c3c56
	mov 0x40,r7
	mov 0x02,r1
	or r1,r5

loc_8c1c3c56:
	mov r4,r3
	tst r7,r3
	bt loc_8c1c3c60
	mov 0x04,r1
	or r1,r5

loc_8c1c3c60:
	mov.w @(loc_8C1C3C8A,pc),r3
	tst r4,r3
	bt loc_8c1c3c6a
	mov 0x08,r1
	or r1,r5

loc_8c1c3c6a:
	mov.w @(loc_8C1C3C8C,pc),r3
	tst r4,r3
	bt loc_8c1c3c74
	mov 0x10,r1
	or r1,r5

loc_8c1c3c74:
	mov.w @(loc_8C1C3C8E,pc),r3
	tst r4,r3
	bt loc_8c1c3c7c
	or r6,r5

loc_8c1c3c7c:
	mov.w @(loc_8C1C3C90,pc),r3
	tst r3,r4
	bt loc_8c1c3c84
	or r7,r5

loc_8c1c3c84:
	rts 
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1C3C88:
	#data 0x0200
loc_8C1C3C8A:
	#data 0x0400
loc_8C1C3C8C:
	#data 0x1000
loc_8C1C3C8E:
	#data 0x2000
loc_8C1C3C90:
	#data 0x4000
	#align4

loc_8C1C3C94:
	#data 0x8C34B0BA

;==============================================
loc_8c1C3C98:
	mov.l r14,@-r15
	mov 0x06,r3 ; r3 set to 0x06
	mov.l @(loc_8c1C3CE0,pc),r2 ; r2 set to 0x8C34B0B0
	sts.l pr,@-r15
	mov.b r3,@r2 ; r2 ??
	mov.l @(loc_8c1C3CE4,pc),r1 ; r1 set to 0x8C34B0BA
	mov.l @(loc_8c1C3CE8,pc),r3 ; r3 set to 0x8C19DB9C
	mov.b @r1,r5
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1C3CF4,pc),r0 ; r0 set to 0x8C34B0D0
	mov.l @(loc_8c1C3CF0,pc),r1 ; r1 set to 0x8C34B2CC
	mov.l @r0,r3 ; r3 ??
	mov.l @r1,r2
	mov.l @(loc_8c1C3CEC,pc),r14 ; r14 set to 0x8C34B0B4
	cmp/hi r2,r3
	bt loc_8c1C3CCA
	mov.l @(loc_8c1C3CF8,pc),r3 ; r3 set to 0x8C1B3EEC
	mov.l @(loc_8c1C3CF4,pc),r4 ; r4 set to 0x8C34B0D0
	mov.w @(loc_8c1C3CDC,pc),r5 ; r5 set to 0x7D0
	jsr @r3
	nop
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8c1C3CD0
	mov.b r2,@r14

loc_8c1C3CCA:
	mov.b @r14,r0
	add 0x01,r0
	mov.b r0,@r14

loc_8c1C3CD0:
	lds.l @r15+,pr
	mov.l @(loc_8c1C3CFC,pc),r2 ; r2 set to 0x8C34B0B6, r2 set to 0x8C34B0B6
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.b r3,@r2 ; r2 ??, r2 ??
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C3CDC:
	#data 0x07D0
	#align4

loc_8c1C3CE0:
	#data 0x8C34B0B0
loc_8c1C3CE4:
	#data 0x8C34B0BA
loc_8c1C3CE8:
	#data bank19.loc_8c19DB9C
loc_8c1C3CEC:
	#data 0x8C34B0B4
loc_8c1C3CF0:
	#data 0x8C34B2CC
loc_8c1C3CF4:
	#data 0x8C34B0D0
loc_8c1C3CF8:
	#data bank1b.loc_8c1b3EEC
loc_8c1C3CFC:
	#data 0x8C34B0B6

;==============================================
loc_8c1c3d00:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8C1C3DEC,pc),r2
	sts.l pr,@-r15
	mov.b @r2,r3
	mov.l @(loc_8C1C3DE8,pc),r13
	tst r3,r3
	bt/s loc_8c1c3d24
	mov 0x01,r12
	mov.l @(bank1c.loc_8c1c3df4,pc),r1
	mov.l @(loc_8C1C3DF0,pc),r3
	jsr @r1
	mov.b r12,@r3

loc_8c1c3d24:
	mov.l @(loc_8C1C3DF8,pc),r3
	mov 0x00,r9
	mov.b r9,@r3
	mov.l @(loc_8C1C3DFC,pc),r4
	mov.l @(bank1c.loc_8c1c3e00,pc),r2
	jsr @r2
	mov r9,r5
	mov.l @(loc_8C1C3E14,pc),r1
	mov.w @(loc_8C1C3DE4,pc),r3
	mov.l @r1,r2
	mov.l @(loc_8C1C3E10,pc),r14
	mov.l @(bank1c.loc_8c1c3e04,pc),r8
	cmp/eq r3,r2
	mov.l @(loc_8C1C3E08,pc),r10
	mov.l @(bank1c.loc_8c1c3e0c,pc),r11
	bt loc_8c1c3d48
	bra loc_8c1c3e44
	nop 

loc_8c1c3d48:
	mov.l @(loc_8C1C3E18,pc),r0
	mov.b @r0,r2
	tst r2,r2
	bt loc_8c1c3d54
	bra loc_8c1c3e44
	nop 

loc_8c1c3d54:
	mov.l @(bank1c.loc_8c1c3e20,pc),r3
	mov.l @(loc_8C1C3E1C,pc),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c3e44
	mov 0x06,r3
	mov.b r3,@r10
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x03,r0 
	bf loc_8c1c3d7c
	mov.l @(bank1c.loc_8c1c3e20,pc),r3
	mov.l @(loc_8C1C3E24,pc),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c3e5a

loc_8c1c3d7c:
	mov.l @(loc_8C1C3E28,pc),r4
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c1c3dce
	mov.b r9,@r4
	mov.l @(loc_8C1C3E2C,pc),r4
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c1c3daa
	mov.l @(bank1c.loc_8c1c3e30,pc),r3
	jsr @r3
	mov.b r12,@r4
	mov r0,r4
	bsr bank1c.loc_8c1c3b28
	mov 0x01,r5
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c3da6
	mov.l @(loc_8C1C3E34,pc),r2
	bra loc_8c1c3db0
	mov.b @r2,r10

loc_8c1c3da6:
	bra loc_8c1c3db0
	mov.b @r14,r10

loc_8c1c3daa:
	mov.b r9,@r4
	mov.l @(loc_8C1C3E38,pc),r3
	mov.b @r3,r10

loc_8c1c3db0:
	mov.l @(bank1c.loc_8c1c3e3c,pc),r2
	jsr @r2
	nop 
	mov.l @(bank1c.loc_8c1c3e40,pc),r3
	jsr @r3
	mov.l r0,@-r15
	jsr @r8
	mov.l r0,@-r15
	mov.l @r15+,r5
	mov r0,r4
	mov.l @r15+,r6
	jsr @r11
	mov r10,r7
	bra loc_8c1c3ec8
	nop 

loc_8c1c3dce:
	lds.l @r15+,pr 
	mov.b r12,@r4
	mov.l @(bank1c.loc_8c1c3df4,pc),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1C3DE4:
	#data 0x0200
	#align4

loc_8C1C3DE8:
	#data 0x8C34B0B3
loc_8C1C3DEC:
	#data 0x8C3539A8
loc_8C1C3DF0:
	#data 0x8C3539A7
loc_8c1c3df4:
	#data bank19.loc_8c19da4c
loc_8C1C3DF8:
	#data 0x8C34B0B4
loc_8C1C3DFC:
	#data 0x8C34B0D0
loc_8c1c3e00:
	#data bank1b.loc_8c1b3eec
loc_8c1c3e04:
	#data bank1b.loc_8c1bec1a
loc_8C1C3E08:
	#data 0x8C34B0B0
loc_8c1c3e0c:
	#data bank19.loc_8c19daac
loc_8C1C3E10:
	#data 0x8C34B0B9
loc_8C1C3E14:
	#data 0x8C34B0BC
loc_8C1C3E18:
	#data 0x8C34B0B7
loc_8C1C3E1C:
	#data 0x8C3539AC
loc_8c1c3e20:
	#data bank1b.loc_8c1b3f0c
loc_8C1C3E24:
	#data 0x8C34B0D4
loc_8C1C3E28:
	#data 0x8C3539A6
loc_8C1C3E2C:
	#data 0x8C3539A9
loc_8c1c3e30:
	#data bank19.loc_8c19c6de
loc_8C1C3E34:
	#data 0x8C34B0BA
loc_8C1C3E38:
	#data 0x8C34B0BB
loc_8c1c3e3c:
	#data bank1b.loc_8c1bec26
loc_8c1c3e40:
	#data bank1b.loc_8c1bec20

;==============================================
loc_8c1c3e44:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x03,r0 
	bf loc_8c1c3e60
	mov.l @(bank1c.loc_8c1c3f08,pc),r3
	mov.l @(loc_8C1C3F04,pc),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1c3e60
	
loc_8c1c3e5a:
	mov 0x08,r3
	bra loc_8c1c3eea
	mov.b r3,@r10
	
loc_8c1c3e60:
	mov 0x10,r3
	mov 0x06,r1
	mov.b r1,@r10
	mov.l @(loc_8C1C3F0C,pc),r4
	mov.b @r4,r4
	extu.b r4,r4
	tst r4,r3
	bf loc_8c1c3e76
	mov 0x08,r1
	tst r4,r1
	bt loc_8c1c3ebe
	
loc_8c1c3e76:
	mov.l @(loc_8C1C3F10,pc),r2
	mov.l @(loc_8C1C3F14,pc),r3
	mov.w @(loc_8C1C3EFC,pc),r1
	mov.l @r2,r4
	mov.b @r3,r14
	cmp/eq r1,r4
	bt loc_8c1c3e90
	mov.w @(loc_8C1C3EFE,pc),r0
	cmp/eq r0,r4
	bt loc_8c1c3e90
	mov.w @(loc_8C1C3F00,pc),r2
	cmp/eq r2,r4
	bf loc_8c1c3eaa
	
loc_8c1c3e90:
	mov.l @(bank1c.loc_8c1c3f18,pc),r2
	jsr @r2
	nop 
	mov.l @(bank1c.loc_8c1c3f1c,pc),r3
	jsr @r3
	mov.l r0,@-r15
	jsr @r8
	mov.l r0,@-r15
	mov.l @r15+,r5
	mov r0,r4
	mov.l @r15+,r6
	bra loc_8c1c3eb6
	mov r14,r7
	
loc_8c1c3eaa:
	jsr @r8
	nop 
	mov 0x00,r6
	mov r0,r4
	mov r6,r7
	mov r14,r5
	
loc_8c1c3eb6:
	jsr @r11
	nop 
	bra loc_8c1c3ec8
	nop 
	
loc_8c1c3ebe:
	mov.b @r14,r5
	mov.b @r14,r6
	mov.b @r14,r7
	jsr @r11
	mov.b @r14,r4
	
loc_8c1c3ec8:
	mov.l @(bank1c.loc_8c1c3f08,pc),r3
	mov.l @(loc_8C1C3F04,pc),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1c3ee4
	mov.l @(bank1c.loc_8c1c3f20,pc),r3
	mov.l @(loc_8C1C3F04,pc),r4
	mov.w @(loc_8C1C3F02,pc),r5
	jsr @r3
	nop 
	bra loc_8c1c3eea
	mov.b r12,@r13
	
loc_8c1c3ee4:
	mov.b @r13,r3
	add 0x01,r3
	mov.b r3,@r13
	
loc_8c1c3eea:
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
loc_8C1C3EFC:
	#data 0x0080
loc_8C1C3EFE:
	#data 0x0200
loc_8C1C3F00:
	#data 0x0100
loc_8C1C3F02:
	#data 0x2328
	#align4

loc_8C1C3F04:
	#data 0x8C34B0D4
loc_8c1c3f08:
	#data bank1b.loc_8c1b3f0c
loc_8C1C3F0C:
	#data 0x8C34AF68
loc_8C1C3F10:
	#data 0x8C34B0BC
loc_8C1C3F14:
	#data 0x8C34B0BB
loc_8c1c3f18:
	#data bank1b.loc_8c1bec26
loc_8c1c3f1c:
	#data bank1b.loc_8c1bec20
loc_8c1c3f20:
	#data bank1b.loc_8c1b3eec
loc_8c1c3f24:
	#data bank01.loc_8c010000
loc_8c1c3f28:
	#data bank01.loc_8c010060
loc_8c1c3f2c:
	#data bank01.loc_8c010060
loc_8c1c3f30:
	#data bank01.loc_8c010080
loc_8c1c3f34:
	#data loc_8c1c90E0
loc_8c1c3f38:
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
loc_8c1c3f3c:
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
loc_8c1c3f40:
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
loc_8c1c3f44:
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
loc_8c1c3f48:
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
loc_8c1c3f4c:
	#data 0x8C32C4A0
loc_8c1c3f50:
	#data 0x8C3539b0
loc_8c1c3f54:
	#data 0x8C3539C0
loc_8c1c3f58:
	#data 0x8C3539C0
loc_8c1c3f5c:
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0
	#data {loc_8c1c9d98+8} ; 0x8c1c9da0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#repeat 32
	#data 0x0000

;==============================================
loc_8c1c4020:
	#data 0x0A
	#data "syStart Ver 1.15 Build:Nov 06 1999 23:00:30"
	#data 0x0A
	#data 0x00
	#data 0x0000

loc_8c1c4050:
	#data "%s"
	#data 0x0000

loc_8c1c4054:
	#data "E8101202: can't open %d, %d (ADXT_StartAfs)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4084:
	#data "E8101205: can't open '%s' (ADXT_StartFname)"
	#data 0x00

loc_8c1c40b0:
	#data "E8101207: can't create sj (ADXT_StartMem)"
	#data 0x0A
	#align4

loc_8c1c40dc:
	#data "E8101207: can't create sj (ADXT_StartMemIdx)"
	#data 0x0000
	#data 0x0000

loc_8c1c410c:
	#data 0x0a
	#data "ADXT Ver.5.66 Build:Aug 26 1999 12:36:27"
	#data 0x0a
	#data 0x0000

loc_8c1c4138:
	#data "E8101208: parameter error (ADXT_SetOutPan)"
	#data 0x0000

loc_8c1c4164:
	#data 0x0a
	#data "--------------------------------------------------"
	#data 0x0a
	#data " Shinobi Library for Dreamcast Version 1.62"
	#data 0x0a
	#data " Copyright (C) 1998,1999 SEGA"
	#data 0x0a
	#data "--------------------------------------------------"
	#data 0x0a
	#data "Shinobi Ver 1.62 Build:Aug 30 1999 17:32:03"
	#data 0x0a

	#align4
loc_8c1c4244:
	#data loc_8c1c4268

loc_8c1c4248:
	#data "Lib Handle Start"

loc_8c1c4258:
	#data "Lib Handle End  "

loc_8c1c4268:
	#data 0x0a
	#data "ov Ver.1.00Build:Apr 23 1999 22:13:01"
	#data 0x0a
	#data 0x00

loc_8c1c4290:
	#data loc_8c1c4320

loc_8c1c4294:
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000

loc_8c1c42a0:
	#data bank17.loc_8c175B44
loc_8c1c42a4:
	#data bank17.loc_8c175C62
loc_8c1c42a8:
	#data bank17.loc_8c175D4C
loc_8c1c42ac:
	#data bank17.loc_8c175514
loc_8c1c42b0:
	#data bank17.loc_8c1757A4
loc_8c1c42b4:
	#data bank17.loc_8c175DAE
loc_8c1c42b8:
	#data bank17.loc_8c175EBA
loc_8c1c42bc:
	#data bank17.loc_8c175EBE
loc_8c1c42c0:
	#data bank17.loc_8c175F26
loc_8c1c42c4:
	#data bank17.loc_8c1760FA
loc_8c1c42c8:
	#data bank17.loc_8c176102
loc_8c1c42cc:
	#data bank17.loc_8c175F70
loc_8c1c42d0:
	#data bank17.loc_8c175FE0
loc_8c1c42d4:
	#data bank17.loc_8c176058
loc_8c1c42d8:
	#data bank17.loc_8c17605C
loc_8c1c42dc:
	#data bank17.loc_8c1760CE
loc_8c1c42e0:
	#data bank17.loc_8c1760F2
loc_8c1c42e4:
	#data bank17.loc_8c17610A
loc_8c1c42e8:
	#data bank17.loc_8c176194
loc_8c1c42ec:
	#data bank17.loc_8c1761CC
loc_8c1c42f0:
	#data bank17.loc_8c17629C
loc_8c1c42f4:
	#data bank17.loc_8c1763A8
loc_8c1c42f8:
	#data bank17.loc_8c1764A0
loc_8c1c42fc:
	#data bank17.loc_8c17654A
loc_8c1c4300:
	#data bank17.loc_8c176606
loc_8c1c4304:
	#data bank17.loc_8c176726
loc_8c1c4308:
	#data bank17.loc_8c17625C
loc_8c1c430c:
	#data bank17.loc_8c1767BC

;LBA?
loc_8c1c4310:
	#data 0x0000b06e ; GDI
;	#data 0x000000A6 ; CDI

loc_8c1c4314:
	#data 0x00000001

loc_8c1c4318:
	#data "CD001"
	#data 0x00
	#align4

loc_8c1c4320:
	#data 0x0a
	#data "gdFs Ver 1.08 Build:Apr 26 1999 14:29:58"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c434c:
	#data 0x0a
	#data "pdKbd Ver 1.51 Build:Jul 30 1999 15:01:35"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4378:
	#data 0x00 0x06 0x0c 0x12
	#data 0x0a
	#data "pd Ver 1.50 Build:Jul 30 1999 15:01:33"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c43a8:
	#data 0x0A
	#data 0x00
	#align4

loc_8c1c43ac:
	#data 0x0001
	#data 0x0000

loc_8c1c43b0:
	#data "(no device)"
	#data 0x00

loc_8c1c43bc:
	#data 0x00000000
	#data 0x00000006
	#data 0x0000000C
	#data 0x00000012

loc_8c1c43cc:
	#data loc_8c1c43E4
	#data 0x0501
	#data 0x0000

loc_8c1c43d4:
	#data bank17.loc_8c177CFE

loc_8c1c43d8:
	#data bank17.loc_8c177DCC

loc_8c1c43dc:
	#data bank17.loc_8c177FB6

loc_8c1c43e0:
	#data bank17.loc_8c177E84

loc_8c1c43e4:
	#data 0x0a
	#data "syMalloc Ver 1.50 Build:May 31 1999 16:39:06"
	#data 0x0a
	#data 0x0000

loc_8c1c4414:
	#data loc_8c1c4478

loc_8c1c4418:
	#data 0x00000000 0x0000001f 0x0000003b
	#data 0x0000005a 0x00000078 0x00000097
	#data 0x000000b5 0x000000d4 0x000000f3
	#data 0x00000111 0x00000130 0x0000014e

loc_8c1c4448:
	#data 0x00000000 0x0000001f 0x0000003b
	#data 0x0000005a 0x00000078 0x00000097
	#data 0x000000b5 0x000000d4 0x000000f3
	#data 0x00000111 0x00000130 0x0000014e

loc_8c1c4478:
	#data 0x0a
	#data "syRtc Ver 1.02 Build:May 31 1999 09:05:20"
	#data 0x0a
	#data 0x00
	#data 0x0a
	#data "syHw Ver 1.07 Build:Apr 26 1999 16:55:31"
	#data 0x0a
	#align4

loc_8c1c44d0:
	#data 0x00000105

loc_8c1c44d4:
	#data 0x00000000

loc_8c1c44d8:
	#data 0xa05f6800 0x11ff0000 0xa05f6804 0x00000020
	#data 0xa05f6810 0x0cff0000 0xa05f6814 0x0cff0000
	#data 0xa05f6818 0x00000000 0xa05f681c 0x00000000
	#data 0xa05f6840 0x00000000 0xa05f6844 0x00000000
	#data 0xa05f6848 0x00000000 0xa05f684c 0x00000000
	#data 0xa05f6884 0x00000000 0xa05f6888 0x00000000
	#data 0xa05f68a0 0x80000000 0xa05f68a4 0x00000000
	#data 0xa05f68ac 0x00000000 0xa05f6910 0x00000000
	#data 0xa05f6914 0x00000000 0xa05f6918 0x00000000
	#data 0xa05f6920 0x00000000 0xa05f6924 0x00000000
	#data 0xa05f6928 0x00000000 0xa05f6930 0x00000000
	#data 0xa05f6934 0x00000000 0xa05f6938 0x00000000
	#data 0xa05f6940 0x00000000 0xa05f6944 0x00000000
	#data 0xa05f6950 0x00000000 0xa05f6954 0x00000000
	#data 0xa05f6c04 0x0cff0000 0xa05f6c10 0x00000000
	#data 0xa05f6c14 0x00000000 0xa05f6c80 0xc3500000
	#data 0xa05f6c8c 0x61557f00 0xa05f6ce8 0x00000001
	#data 0xa05f7800 0x009f0000 0xa05f7804 0x0cff0000
	#data 0xa05f7808 0x00000020 0xa05f780c 0x00000000
	#data 0xa05f7810 0x00000005 0xa05f7814 0x00000000
	#data 0xa05f781c 0x00000000 0xa05f7820 0x009f0000
	#data 0xa05f7824 0x0cff0000 0xa05f7828 0x00000020
	#data 0xa05f782c 0x00000000 0xa05f7830 0x00000005
	#data 0xa05f7834 0x00000000 0xa05f783c 0x00000000
	#data 0xa05f7840 0x009f0000 0xa05f7844 0x0cff0000
	#data 0xa05f7848 0x00000020 0xa05f784c 0x00000000
	#data 0xa05f7850 0x00000005 0xa05f7854 0x00000000
	#data 0xa05f785c 0x00000000 0xa05f7890 0x0000001b
	#data 0xa05f7894 0x00000271 0xa05f7898 0x00000000
	#data 0xa05f789c 0x00000001 0xa05f78a0 0x00000000
	#data 0xa05f78a4 0x00000000 0xa05f78a8 0x00000000
	#data 0xa05f78ac 0x00000000 0xa05f78b0 0x00000000
	#data 0xa05f78b4 0x00000000 0xa05f78b8 0x00000000
	#data 0xa05f78bc 0x46597f00 0xa05f7c00 0x04ff0000
	#data 0xa05f7c04 0x0cff0000 0xa05f7c08 0x00000020
	#data 0xa05f7c0c 0x00000000 0xa05f7c10 0x00000000
	#data 0xa05f7c14 0x00000000 0xa05f7c80 0x67027f00
	#data 0xa05f6808 0x00000000 0xa05f6820 0x00000000
	#data 0xa05f6c18 0x00000000 0xa05f7418 0x00000000
	#data 0xa05f7818 0x00000000 0xa05f7838 0x00000000
	#data 0xa05f7858 0x00000000 0xa05f7c18 0x00000000
	#data 0xa05f6900 0xffffffff 0xa05f6908 0xffffffff

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000 0x00000000
	#data 0x00000000 0x00000000
	#data 0x00000000 0x00000000
	#data 0x00000000 0x00000000
	#data 0x00000000 0x00000000
	#data 0x00000000 0x00000000
	#data 0x00000000 0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1c47b0:
	#data loc_8c1c47b4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c47b4:
	#data 0x0a
	#data "syTmr Ver 1.04 Build:Apr 26 1999 14:43:51"
	#data 0x0A
	#data 0x00
	#data 0x0a
	#data "pdLcd Ver 1.04 Build:Apr 26 1999 16:55:25"
	#data 0x0a
	#align4

loc_8c1c480c:
	#data 0x03020001
	#data 0x02030100
	#data 0x00010203
	#data 0x01000302

loc_8c1c481c:
	#data 0xFF0100FF
	#data 0x02FFFFFF
	#data 0xFFFFFF03
	#data 0xFF0504FF
	#data 0x06FFFFFF
	#data 0xFFFFFF07

loc_8c1c4834:
	#data 0x0000 0x0000
	#data 0x0000 0x0606
	#data 0x0606 0x0606
	#data 0x0c0c 0x0c0c
	#data 0x0c0c 0x1212
	#data 0x1212 0x1212
	#data 0x0A
	#data "bu Ver 1.47 Build:May 25 1999 17:27:29"
	#data 0x0a
	#data "VMS File System for Application(dynamic work alloc) "
	#data 0x00
	#align4

loc_8c1c48ac:
	#data 0x00000014
loc_8c1c48b0:
	#data loc_8c1c48b4

loc_8c1c48b4:
	#data 0x0a
	#data "syBtFnt Ver 1.02 Build:May 31 1999 09:01:19"
	#data 0x0A
	#align4

loc_8c1c48e4:
	#data 0x0a
	#data "syCfg Ver 1.15 Build:Apr 26 1999 14:38:59"
	#data 0x0A
	#align4

loc_8c1c4910:
	#data loc_8c1c4914

loc_8c1c4914:
	#data 0x0a
	#data "syBt Ver 1.06 Build:May 26 1999 13:59:55"
	#data 0x0A
	#align4

loc_8c1c4940:
	#data 0x00000001
	#data 0x00000000

loc_8c1c4948:
	#data "KAMUI2 Copyright (C) NEC Corporation 1999 "
	#data 0x0a
	#data "kamui2 Ver 16,3,2,0 Build:Jul 23 1999 11:06:54"
	#data 0x0a
	#data 0x0000

loc_8c1c49a4:
	#data "16,3,2,0"
	#data 0x00000000

loc_8c1c49b0:
	#data 0x20000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1c49d0:
	#data 0xFFFFFFFF
	#data 0x01000000
	#data 0x00800440
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF

loc_8c1c49f0:
	#data 0xF0000000
	#data 0xBFC00000
	#data 0xBF800000
	#data 0x3DCCCCCD
	#data 0xBF000000
	#data 0xBF800000
	#data 0x3DCCCCCD
	#data 0xBF000000
	#data 0xBF000000
	#data 0x3DCCCCCD
	#data 0xBFC00000
	#data 0xBF000000
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF

loc_8c1c4a30:
	#data 0x00000004
	#data 0x00000004
	#data 0x00000005

loc_8c1c4a3c:
	#data 0x000000FF
	#data 0x000000FF
	#data 0x00000006
	#data 0x00000002
	#data 0x00000007
	#data 0x00000003
	#data 0x00000005
	#data 0x00000003
	#data 0x00000004
	#data 0x00000002
	#data 0x00000001
	#data 0x00000000

loc_8c1c4a6c:
	#data 0x00000000
	#data 0x00000002
	#data 0x00000008
	#data 0x0000000A

loc_8c1c4a7c:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000001
	#data 0x00000002
	#data 0x00000000
	#data 0x00000000
	#data 0x00000003
	#data 0x00000003
	#data 0x000000FF
	#data 0x000000FF
	#data 0x00000004
	#data 0x00000004
	#data 0x00000003
	#data 0x00000003
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000006
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x00000005
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF
	#data 0x000000FF

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c4b7c:
	#data "E8101210: can't open '%s' (ADXSTM_OpenFname)"
	#data 0x00
	#align4

loc_8c1c4bac:
	#data "E8101211: can't GetFileSize (ADXSTM_OpenFname)"
	#data 0x00
	#align4

loc_8c1c4bdc:
	#data "E8101212: can't open fad=%d, nsct=%d (ADXSTM_OpenRange)"
	#data 0x00
	#align4

loc_8c1c4c14:
	#data "OpenRange"
	#data 0x00
	#align4

loc_8c1c4c20:
	#data "E8101213: can't open '%s'(ADXSTM_OpenFnameRange)"
	#data 0x00
	#align4

loc_8c1c4c54:
	#data "E8101214: GDFS error (adxstmf_stat_exec)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4c80:
	#data "E8101201: not enough data (adxt_trap_entry)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4cb0:
	#data "E9081001: can't play %d ch data (maxch=%d) [adxt_stat_decinfo]"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4cf0:
	#data loc_8c1c5330

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c4cf4:
	#data "E9040801:'ptid' is range outside.(adxf_ChkPrmPt)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4d28:
	#data "E9040802:'ptinfo' is NULL.(adxf_ChkPrmPt)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4d54:
	#data "E9040803:can't get FAD of '%s'.(ADXF_LoadPartition)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4d8c:
	#data "E9040804:can't open '%s'.(ADXF_LoadPartition)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4dbc:
	#data "E9040805:read error'%s'.(ADXF_LoadPartition)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4dec:
	#data "E9040806:'%s' is broken.(ADXF_LoadPartition)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4e1c:
	#data "E9040807:can't find '%s'.(ADXF_AddPartition)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4e4c:
	#data "E9040808:cannot open '%s'.(ADXF_AddPartition)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4e7c:
	#data "E9040809:read error'%s'.(ADXF_LoadPartition)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4eac:
	#data "E9040810:'%s' is broken.(ADXF_LoadPartition)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4edc:
	#data "E9040901:can't find '%s'.(ADXF_Open)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4f04:
	#data "E9040902:can't get file size(sct) '%s'.(ADXF_Open)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4f38:
	#data "E9040903:can't get file size(byte) '%s'.(ADXF_Open)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4f70:
	#data "E9040811:'adxf' is NULL.(adxf_read_sj32)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4f9c:
	#data "E9040812:'nsct'is negative.(adxf_read_sj32)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4fcc:
	#data "E9040813:'sj'is NULL.(adxf_read_sj32)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c4ff4:
	#data "E9040815:'adxf->stm' isn't NULL.(adxf_read_sj32)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5028:
	#data "E9040816:'adxf' is NULL.(ADXF_ReadNw32)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5054:
	#data "E9040817:'nsct' is negative.(ADXF_ReadNw32)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5084:
	#data "E9040818:'buf' is NULL.(ADXF_ReadNw32)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c50ac:
	#data "E9040819:alignment of 'buf' isn't 32byte.(ADXF_ReadNw32)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c50e8:
	#data "E9040821:'sj' is NULL.(ADXF_ReadNw32)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5110:
	#data "E9040822:'adxf' is NULL.(ADXF_Stop)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5138:
	#data "E9040823:'adxf->stm' is NULL.(ADXF_Stop)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5164:
	#data "E9040825:'adxf' is NULL.(ADXF_Seek)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c518c:
	#data "E9040826:'type' is illigal.(ADXF_Seek)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c51b4:
	#data "E9040827:'adxf' is NULL.(ADXF_Tell)"
	#data 0x0a
	#data 0x00
	#align4
	
loc_8c1c51dc:
	#data "E9040828:'adxf' is NULL.(ADXF_GetFsizeSct)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5208:
	#data "E9040829:'adxf' is NULL.(ADXF_GetFsizeByte)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5238:
	#data "E9040830:'adxf' is NULL.(ADXF_GetNumReqSct)"
	#data 0x0a
	#data 0x00
	#align4
	
loc_8c1c5268:
	#data "E9040831:'adxf' is NULL.(ADXF_GetNumReadSct)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5298:
	#data "E9040832:'adxf' is NULL.(ADXF_GetStat)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c52c0:
	#data "E9040828:'ptid' is range outside.(ADXF_GetFileRange)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c52f8:
	#data "E9040828:'flid' is range outside.(ADXF_GetFileRange)"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5330:
	#data 0x0a
	#data "ADXF Ver.5.53 Build:Jun 07 1999 11:44:16"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c535c:
	#data loc_8c1c5514

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5360:
	#data "E1201:mwRnaCreate Illigal parameter (MAXNCH)"
	#data 0x00
	#align4

loc_8c1c5390:
	#data "E1202:mwRnaCreate Illigal parameter (SJ)"
	#data 0x00
	#align4

loc_8c1c53bc:
	#data "E1203:mwRnaCreate Not enough instance (MWRNA)"
	#data 0x00
	#align4

loc_8c1c53ec:
	#data "E1204:mwRnaCreate Cannot open MWSND"
	#data 0x00
	#align4

loc_8c1c5410:
	#data "E1205:Illigal parameter (MWRNA=NULL)"
	#data 0x00
	#align4

loc_8c1c5438:
	#data "E1213:mwlRnaAddWrPos rna->sj=NULL"
	#data 0x00
	#align4

loc_8c1c545c:
	#data "E1209:mwRnaPause Time out of wait for DMA finish"
	#data 0x00
	#align4

loc_8c1c5490:
	#data "E1212:mwlRnaStartTrans rna->sj=NULL"
	#data 0x00
	#align4

loc_8c1c54b4:
	#data "E1211:mwRnaSetNumChan Illigal parameter(NCH>MAXNCH)"
	#data 0x00
	#align4

loc_8c1c54e8:
	#data "E1207:mwRnaSetFx Illigal parameter (FXCH)"
	#data 0x00
	#align4

loc_8c1c5514:
	#data 0x0a
	#data "mwRna Ver.1.26 Build:Aug 25 1999 21:55:36"
	#data 0x0a
	#data 0x00
	#align4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5540:
	#data 0xDD9EEE41
	#data 0x11D21679
	#data 0x60006C93
	#data 0xBC489408

loc_8c1c5550:
	#data 0x3B9A9E81
	#data 0x11D20DBB
	#data 0x4544BFA6
	#data 0x00005453

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5560:
	#data 0x0a
	#data "SJ Ver.5.50 Build:Jun 10 1999 18:21:01"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c558c:
	#data 0x2E534FA3
	#data 0x11D2AF97
	#data 0x600027A5
	#data 0xBC489408

loc_8c1c559c:
	#data 0x10210000
	#data 0x30632042
	#data 0x50A54084
	#data 0x70E760C6
	#data 0x91298108
	#data 0xB16BA14A
	#data 0xD1ADC18C
	#data 0xF1EFE1CE
	#data 0x02101231
	#data 0x22523273
	#data 0x429452B5
	#data 0x62D672F7
	#data 0x83189339
	#data 0xA35AB37B
	#data 0xC39CD3BD
	#data 0xE3DEF3FF
	#data 0x34432462
	#data 0x14010420
	#data 0x74C764E6
	#data 0x548544A4
	#data 0xB54BA56A
	#data 0x95098528
	#data 0xF5CFE5EE
	#data 0xD58DC5AC
	#data 0x26723653
	#data 0x06301611
	#data 0x66F676D7
	#data 0x46B45695
	#data 0xA77AB75B
	#data 0x87389719
	#data 0xE7FEF7DF
	#data 0xC7BCD79D
	#data 0x58E548C4
	#data 0x78A76886
	#data 0x18610840
	#data 0x38232802
	#data 0xD9EDC9CC
	#data 0xF9AFE98E
	#data 0x99698948
	#data 0xB92BA90A
	#data 0x4AD45AF5
	#data 0x6A967AB7
	#data 0x0A501A71
	#data 0x2A123A33
	#data 0xCBDCDBFD
	#data 0xEB9EFBBF
	#data 0x8B589B79
	#data 0xAB1ABB3B
	#data 0x7C876CA6
	#data 0x5CC54CE4
	#data 0x3C032C22
	#data 0x1C410C60
	#data 0xFD8FEDAE
	#data 0xDDCDCDEC
	#data 0xBD0BAD2A
	#data 0x9D498D68
	#data 0x6EB67E97
	#data 0x4EF45ED5
	#data 0x2E323E13
	#data 0x0E701E51
	#data 0xEFBEFF9F
	#data 0xCFFCDFDD
	#data 0xAF3ABF1B
	#data 0x8F789F59
	#data 0x81A99188
	#data 0xA1EBB1CA
	#data 0xC12DD10C
	#data 0xE16FF14E
	#data 0x00A11080
	#data 0x20E330C2
	#data 0x40255004
	#data 0x60677046
	#data 0x939883B9
	#data 0xB3DAA3FB
	#data 0xD31CC33D
	#data 0xF35EE37F
	#data 0x129002B1
	#data 0x32D222F3
	#data 0x52144235
	#data 0x72566277
	#data 0xA5CBB5EA
	#data 0x858995A8
	#data 0xE54FF56E
	#data 0xC50DD52C
	#data 0x24C334E2
	#data 0x048114A0
	#data 0x64477466
	#data 0x44055424
	#data 0xB7FAA7DB
	#data 0x97B88799
	#data 0xF77EE75F
	#data 0xD73CC71D
	#data 0x36F226D3
	#data 0x16B00691
	#data 0x76766657
	#data 0x56344615
	#data 0xC96DD94C
	#data 0xE92FF90E
	#data 0x89E999C8
	#data 0xA9ABB98A
	#data 0x48655844
	#data 0x68277806
	#data 0x08E118C0
	#data 0x28A33882
	#data 0xDB5CCB7D
	#data 0xFB1EEB3F
	#data 0x9BD88BF9
	#data 0xBB9AABBB
	#data 0x5A544A75
	#data 0x7A166A37
	#data 0x1AD00AF1
	#data 0x3A922AB3
	#data 0xED0FFD2E
	#data 0xCD4DDD6C
	#data 0xAD8BBDAA
	#data 0x8DC99DE8
	#data 0x6C077C26
	#data 0x4C455C64
	#data 0x2C833CA2
	#data 0x0CC11CE0
	#data 0xFF3EEF1F
	#data 0xDF7CCF5D
	#data 0xBFBAAF9B
	#data 0x9FF88FD9
	#data 0x7E366E17
	#data 0x5E744E55
	#data 0x3EB22E93
	#data 0x1EF00ED1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c579c:
	#data bank18.loc_8c1832e0
loc_8c1c57a0:
	#data bank18.loc_8c1832ee
loc_8c1c57a4:
	#data bank18.loc_8c18336e
loc_8c1c57a8:
	#data bank18.loc_8c18338a
loc_8c1c57ac:
	#data bank18.loc_8c1833e2
loc_8c1c57b0:
	#data bank18.loc_8c18349c
loc_8c1c57b4:
	#data bank18.loc_8c1834a2
loc_8c1c57b8:
	#data bank18.loc_8c1834c0
loc_8c1c57bc:
	#data bank18.loc_8c1834f4
loc_8c1c57c0:
	#data bank18.loc_8c183510
loc_8c1c57c4:
	#data bank18.loc_8c18351e
loc_8c1c57c8:
	#data bank18.loc_8c183540
loc_8c1c57cc:
	#data bank18.loc_8c183562
loc_8c1c57d0:
	#data bank18.loc_8c183572
loc_8c1c57d4:
	#data bank18.loc_8c183590
loc_8c1c57d8:
	#data bank18.loc_8c1835ac
loc_8c1c57dc:
	#data bank18.loc_8c1835ce
loc_8c1c57e0:
	#data bank18.loc_8c1835dc
loc_8c1c57e4:
	#data bank18.loc_8c1835e2
loc_8c1c57e8:
	#data bank18.loc_8c183602

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c57ec:
	#data 0x00005C2F
loc_8c1c57f0:
	#data loc_8c1c57f8
	#data 0x00020501

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c57f8:
	#data 0x0a
	#data "syCache Ver 1.52 Build:Jul 22 1999 18:55:18"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5828:
	#data loc_8c1c5830
	#data 0x00000501

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5830:
	#data 0x0a
	#data "syChain Ver 1.50 Build:May 31 1999 16:35:21"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5860:
	#data loc_8c1c5868
	#data 0x00000501

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5868:
	#data 0x0a
	#data "syInt Ver 1.50 Build:May 31 1999 16:38:10"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5894:
	#data loc_8c1c589c
	#data 0x00000501

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c589c:
	#data 0x0a
	#data "sySq Ver 1.50 Build:May 31 1999 16:26:00"
	#data 0x0a
	#data 0x00
	#align4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c58c8:
	#data 0x00000038
	#data 0x00000001
	#data 0x00000040
	#data 0x00000001

loc_8c1c58d8:
	#data 0x0000012C

loc_8c1c58dc:
	#data 0x120C0600

loc_8c1c58e0:
	#data "***FATAL ERROR:Cannot get semaphore!"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5908:
	#data 0x0a
	#data "kd Ver 1.48 Build:Jul 30 1999 14:59:52"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5934:
	#data loc_8c1c5938

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5938:
	#data 0x0a
	#data "syCbl Ver 1.10 Build:Apr 27 1999 13:54:09"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5964:
	#data 0x00000001
loc_8c1c5968:
	#data 0x00000000
loc_8c1c596c:
	#data 0x00000000

loc_8c1c5970:
	#data 0x02010006
	#data 0xFF050403

loc_8c1c5978:
	#data 0x04030201
	#data 0xFF000605

loc_8c1c5980:
	#data loc_8c1c5998

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5984:
	#data "KATANA_FLASH____"
	#data 0x00
	#align4

loc_8c1c5998:
	#data 0x0a
	#data "fmMng Ver 1.04 Build:Apr 26 1999 14:34:41"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c59c4:
	#data 0x0a
	#data "syBtCfg Ver 1.03 Build:Apr 26 1999 14:36:52"
	#data 0x0a
	#data 0x00
	#align4

;loc_8c1c59f4:
	#data 0x0a
	#data "pdVib Ver 1.02 Build:Apr 26 1999 16:55:32"
	#data 0x0a
	#data 0x00
	#align4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5a20:
	#data 0x00000000
	#data 0x06060000
	#data 0x06060606
	#data 0x0C0C0C0C
	#data 0x12120C0C
	#data 0x12121212

loc_8c1c5a38:
	#data 0x03020001
	#data 0x02030100
	#data 0x00010203
	#data 0x01000302

	#align4
loc_8c1c5a48:
	#data loc_8c1c5a4c

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5a4c:
	#data 0x0a
	#data "modem Ver 1.0306 Build:Feb 01 2000 17:00:26"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c5a7c:
	#data 0x00000000
	#data 0x00000008
	#data 0x00000010
	#data 0x00000020

loc_8c1c5a8c:
	#data 0x00000002
	#data 0x00000002
	#data 0x00000002
	#data 0x00000002
	#data 0x00000003
	#data 0x00000004

loc_8c1c5aa4:
	#data 0x00000002
	#data 0x00000002
	#data 0x00000002
	#data 0x00000002
	#data 0x00000003
	#data 0x00000004

loc_8c1c5abc:
	#data 0x00000014
	#data 0x00000015
	#data 0x00000016
	#data 0x00000017
	#data 0x00000018

loc_8c1c5ad0:
	#data 0x0000001E
	#data 0x0000001F
	#data 0x00000020
	#data 0x00000021
	#data 0x00000022

loc_8c1c5ae4:
	#data 0x000001F0
	#data 0x00000200
	#data 0x00000210
	#data 0x00000220
	#data 0x00000230

loc_8c1c5af8:
	#data 0x0000002A
	#data 0x00000026
	#data 0x00000022
	#data 0x0000001E
	#data 0x0000001A

loc_8c1c5b0c:
	#data 0x00000010
	#data 0x00000010
	#data 0x00000010
	#data 0x00000010
	#data 0x00000018
	#data 0x00000020

loc_8c1c5b24:
	#data 0x000003DE
	#data 0x000003BF
	#data 0x000003A2
	#data 0x00000387
	#data 0x0000036D

loc_8c1c5b38:
	#data 0x000007BD
	#data 0x00000780
	#data 0x00000745
	#data 0x0000070F
	#data 0x000006DB

loc_8c1c5b4c:
	#data 0x00000001
	#data 0x00000001
	#data 0x00000001
	#data 0x00000001
	#data 0x00000002
	#data 0x00000003

loc_8c1c5b64:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000080
	#data 0x00000080
	#data 0x00000100
	#data 0x00000400

loc_8c1c5b80:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000080
	#data 0x00000080
	#data 0x00000200
	#data 0x00000800

loc_8c1c5b9c:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x000000AC
	#data 0x000002AC
	#data 0x00000AAC
	#data 0x00002AAC
	#data 0x0000AAAC
	#data 0x0002AAAC
	#data 0x000AAAAC
	#data 0x002AAAAC

loc_8c1c5bc8:
	#data 0x00000000
	#data 0x00000001
	#data 0x00000004
	#data 0x00000010
	#data 0x00000040
	#data 0x00000100
	#data 0x00000400
	#data 0x00001000
	#data 0x00004000
	#data 0x00010000
	#data 0x00040000

loc_8c1c5bf4:
	#data 0x00000001
	#data 0x00000002
	#data 0x00000006
	#data 0x00000016
	#data 0x00000056
	#data 0x00000156
	#data 0x00000556
	#data 0x00001556
	#data 0x00005556
	#data 0x00015556
	#data 0x00055556
	#data 0x00050301

loc_8c1c5c24:
	#data 0x02020100
	#data 0x03030303
	#data 0x04040404
	#data 0x04040404
	#data 0x05050505
	#data 0x05050505
	#data 0x05050505
	#data 0x05050505
	#data 0x06060606
	#data 0x06060606
	#data 0x06060606
	#data 0x06060606
	#data 0x06060606
	#data 0x06060606
	#data 0x06060606
	#data 0x06060606
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x07070707
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808
	#data 0x08080808

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1c5d24:
	#data "E1221:Illigal parameter(NCH) in mwSndOpenPort"
	#data 0x00
	#align4

loc_8c1c5d54:
	#data "E1222:Not enough instance(MWSND) in mwSndOpenPort"
	#data 0x00
	#align4

loc_8c1c5d88:
	#data "E1226:Cannot open G2 DMA handle in mwSndOpenPort"
	#data 0x00
	#align4

loc_8c1c5dbc:
	#data "E1227:Cannot close G2 DMA handle in mwSndOpenPort"
	#data 0x00
	#align4

loc_8c1c5df0:
	#data "E1223:nlsndStreamOpen return illigal value in mwSndOpenPort"
	#data 0x00
	#align4

loc_8c1c5e2c:
	#data "E1224:Cannot create SHDHN in mwSndOpenPort"
	#data 0x00
	#align4

loc_8c1c5e58:
	#data "E1228:Cannot close G2 DMA handle in mwSndClosePort"
	#data 0x00
	#align4

loc_8c1c5e8c:
	#data "E1225:Cannot get header infomation in stream in mwSndSetHdInfo"
	#data 0x00
	#align4

loc_8c1c5ecc:
	#data "E1230:G2 DMA handle is NULL(nlsndG2DmaRequest)"
	#data 0x00
	#align4

loc_8c1c5efc:
	#data "E1231:src is not in alignment with 32bytes(nlsndG2DmaRequest)"
	#data 0x00
	#align4

loc_8c1c5f3c:
	#data "E1232:dst is not in alignment with 32bytes(nlsndG2DmaRequest)"
	#data 0x00
	#align4

loc_8c1c5f7c:
	#data "E1233:size is not in alignment with 32bytes(nlsndG2DmaRequest)"
	#data 0x00
	#align4

loc_8c1c5fbc:
	#data "E1229:nlsndG2DmaGetStatus return error in mwSndGetMblkStat"
	#data 0x00
	#align4

loc_8c1c5ff8:
	#data loc_8c1c6000
	#data 0x00000501

loc_8c1c6000:
	#data 0x0a
	#data "syMmu Ver 1.50 Build:May 31 1999 16:25:13"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c602c:
	#data 0x0a
	#data "syG2 Ver 1.01.10 Build:Aug 30 1999 17:03:50"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c605c:
	#data "***FATAL ERROR:Cannot get semaphore!"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c6084:
	#data 0x08040201

loc_8c1c6088:
	#data "***FATAL ERROR:Cannot get semaphore!"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1c60b0:
	#data 0x04020120
	#data 0x41601008
	#data 0x50484442
	#data 0x848281A0
	#data 0xC1E09088
	#data 0xD0C8C4C2

loc_8c1c60c8:
	#data 0x00000000
	#data 0x00000006
	#data 0x0000000C
	#data 0x00000012

loc_8c1c60d8:
	#data 0x00000001

loc_8c1c60dc:
	#data 0x00000003

loc_8c1c60e0:
	#data 0x00000001
	#data 0x00000002
	#data 0x00000007
	#data 0x00000008
	#data 0x0000000D
	#data 0x0000000E
	#data 0x00000013
	#data 0x00000014
	
loc_8c1c6100:
	#data 0x10210000
	#data 0x30632042
	#data 0x50A54084
	#data 0x70E760C6
	#data 0x91298108
	#data 0xB16BA14A
	#data 0xD1ADC18C
	#data 0xF1EFE1CE
	#data 0x02101231
	#data 0x22523273
	#data 0x429452B5
	#data 0x62D672F7
	#data 0x83189339
	#data 0xA35AB37B
	#data 0xC39CD3BD
	#data 0xE3DEF3FF
	#data 0x34432462
	#data 0x14010420
	#data 0x74C764E6
	#data 0x548544A4
	#data 0xB54BA56A
	#data 0x95098528
	#data 0xF5CFE5EE
	#data 0xD58DC5AC
	#data 0x26723653
	#data 0x06301611
	#data 0x66F676D7
	#data 0x46B45695
	#data 0xA77AB75B
	#data 0x87389719
	#data 0xE7FEF7DF
	#data 0xC7BCD79D
	#data 0x58E548C4
	#data 0x78A76886
	#data 0x18610840
	#data 0x38232802
	#data 0xD9EDC9CC
	#data 0xF9AFE98E
	#data 0x99698948
	#data 0xB92BA90A
	#data 0x4AD45AF5
	#data 0x6A967AB7
	#data 0x0A501A71
	#data 0x2A123A33
	#data 0xCBDCDBFD
	#data 0xEB9EFBBF
	#data 0x8B589B79
	#data 0xAB1ABB3B
	#data 0x7C876CA6
	#data 0x5CC54CE4
	#data 0x3C032C22
	#data 0x1C410C60
	#data 0xFD8FEDAE
	#data 0xDDCDCDEC
	#data 0xBD0BAD2A
	#data 0x9D498D68
	#data 0x6EB67E97
	#data 0x4EF45ED5
	#data 0x2E323E13
	#data 0x0E701E51
	#data 0xEFBEFF9F
	#data 0xCFFCDFDD
	#data 0xAF3ABF1B
	#data 0x8F789F59
	#data 0x81A99188
	#data 0xA1EBB1CA
	#data 0xC12DD10C
	#data 0xE16FF14E
	#data 0x00A11080
	#data 0x20E330C2
	#data 0x40255004
	#data 0x60677046
	#data 0x939883B9
	#data 0xB3DAA3FB
	#data 0xD31CC33D
	#data 0xF35EE37F
	#data 0x129002B1
	#data 0x32D222F3
	#data 0x52144235
	#data 0x72566277
	#data 0xA5CBB5EA
	#data 0x858995A8
	#data 0xE54FF56E
	#data 0xC50DD52C
	#data 0x24C334E2
	#data 0x048114A0
	#data 0x64477466
	#data 0x44055424
	#data 0xB7FAA7DB
	#data 0x97B88799
	#data 0xF77EE75F
	#data 0xD73CC71D
	#data 0x36F226D3
	#data 0x16B00691
	#data 0x76766657
	#data 0x56344615
	#data 0xC96DD94C
	#data 0xE92FF90E
	#data 0x89E999C8
	#data 0xA9ABB98A
	#data 0x48655844
	#data 0x68277806
	#data 0x08E118C0
	#data 0x28A33882
	#data 0xDB5CCB7D
	#data 0xFB1EEB3F
	#data 0x9BD88BF9
	#data 0xBB9AABBB
	#data 0x5A544A75
	#data 0x7A166A37
	#data 0x1AD00AF1
	#data 0x3A922AB3
	#data 0xED0FFD2E
	#data 0xCD4DDD6C
	#data 0xAD8BBDAA
	#data 0x8DC99DE8
	#data 0x6C077C26
	#data 0x4C455C64
	#data 0x2C833CA2
	#data 0x0CC11CE0
	#data 0xFF3EEF1F
	#data 0xDF7CCF5D
	#data 0xBFBAAF9B
	#data 0x9FF88FD9
	#data 0x7E366E17
	#data 0x5E744E55
	#data 0x3EB22E93
	#data 0x1EF00ED1

loc_8c1c6300:
	#data 0x06040006
	#data 0xFF0AFF08
	#data 0xFF0CFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0x0EFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFF02FFFF
	#data 0xFEFFFFFF
	#data 0xFFFEFEFF
	#data 0xFFFFFFFF

loc_8c1c633c:
	#data 0x0101FF00
	#data 0xFF00FF00
	#data 0xFF00FF01
	#data 0xFF01FF00
	#data 0xFF000601
	#data 0x0301FF00
	#data 0xFF010301
	#data 0x0001FF01
	#data 0xFF000201
	#data 0x00010001
	#data 0x0101FF00
	#data 0x07010301
	#data 0x03010101

loc_8c1c6370:
	#data 0x0101FF01
	#data 0x03010101
	#data 0xFF00FF01
	#data 0xFF000201
	#data 0xFF010201
	#data 0x01011401
	#data 0xFF010001
	#data 0xFF01FF01
	#data 0x0101FF00
	#data 0x0A010101
	#data 0xFF01FF01
	#data 0x02010301
	#data 0xFF000301

loc_8c1c63a4:
	#data 0x4001FF00
	#data 0xFF01FF01
	#data 0xFF00FF01
	#data 0xFF001F01
	#data 0xFF00FF00
	#data 0x09010F01
	#data 0xFF00FF00
	#data 0xFF01FF00
	#data 0xFF01FF01
	#data 0xFF01FF01
	#data 0x0401FF00
	#data 0xFF003F01
	#data 0xFF00FF01

loc_8c1c63d8:
	#data 0x09010301
	#data 0xFF000201
	#data 0xFF00FF00
	#data 0xFF00FF01
	#data 0xFF01FF00
	#data 0xFF000501
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF01
	#data 0xFF01FF00
	#data 0xFF00FF00
	#data 0x00010001

loc_8c1c640c:
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00

loc_8c1c6440:
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0xFF00FF00
	#data 0x00000000

loc_8c1c6478:
	#data "DELAYED "
	#data 0x00
	#align4

loc_8c1c6484:
	#data 0x0000003A
loc_8c1c6488:
	#data 0x00002020
loc_8c1c648c:
	#data 0x00000020

loc_8c1c6490:
	#data 0x18342C14
	#data 0x2C1C3830
	#data 0x0040

loc_8c1c649a:
	#data 0x1C00
	#data 0x25002000
	#data 0x20001C00
	#data 0x1C002500
	#data 0x25002000

loc_8c1c64ac:
	#data 0x20001C00
	#data 0x1C002500
	#data 0x25002000
	#data 0x20001C00
	#data 0x2500

loc_8c1c64be:
	#data 0x0100
	#data 0x05040302
	#data 0x09080706
	#data 0x0F0E0D0C
	#data 0x0B0A

loc_8c1c64ce:
	#data 0x390A
	#data 0x2D4E32D6
	#data 0x23FD2861
	#data 0x1C962013
	#data 0x16B5197A
	#data 0x1209143D
	#data 0x0E531013
	#data 0x0B610CC5
	#data 0x090A0A24
	#data 0x072E080E
	#data 0x05B40666
	#data 0x04870515
	#data 0x03990409

loc_8c1c6500:
	#data 0x21562156
	#data 0x1A7B1DB6
	#data 0x15081799
	#data 0x10B512BF
	#data 0x0D450EE4
	#data 0x0A8A0BD4
	#data 0x085F0965
	#data 0x06A60776
	#data 0x05ED

loc_8c1c6522:
	#data 0x2567
	#data 0x21562567
	#data 0x1A7B1DB6
	#data 0x15081799
	#data 0x10B512BF
	#data 0x0D450EE4
	#data 0x0A8A0BD4
	#data 0x085F0965
	#data 0x06A60776

loc_8c1c6544:
	#data 0x1F781F78
	#data 0x19001C0C
	#data 0x13DB1648
	#data 0x0FC611B2
	#data 0x0C870E0E
	#data 0x09F30B2A
	#data 0x07E708DE
	#data 0x0647070B
	#data 0x0598

loc_8c1c6566:
	#data 0x279F
	#data 0x2350279F
	#data 0x1C0C1F78
	#data 0x16481900
	#data 0x11B213DB
	#data 0x0E0E0FC6
	#data 0x0B2A0C87
	#data 0x08DE09F3
	#data 0x070B07E7

loc_8c1c6588:
	#data 0x1A7B1A7B
	#data 0x17991A7B
	#data 0x12BF1508
	#data 0x0EE410B5
	#data 0x0BD40D45
	#data 0x09650A8A
	#data 0x0776085F
	#data 0x05ED06A6
	#data 0x0548

loc_8c1c65aa:
	#data 0x2567
	#data 0x25672567
	#data 0x1DB62156
	#data 0x17991A7B
	#data 0x12BF1508
	#data 0x0EE410B5
	#data 0x0BD40D45
	#data 0x09650A8A
	#data 0x0776085F

loc_8c1c65cc:
	#data 0x0D910006
	#data 0x0DD10007
	#data 0x0FD10008
	#data 0x0FF1000B
	#data 0x0FF9000C

loc_8c1c65e0:
	#data 0x0FF90006
	#data 0x0BF90007
	#data 0x0BB90008
	#data 0x09B9000B
	#data 0x0999000C

loc_8c1c65f4:
	#data 0x00010005
	#data 0x00030006
	#data 0x00070007
	#data 0x000F0008
	#data 0x001F000B
	#data 0x003F000C
	#data 0x007F000D
	#data 0x00FF000E
	#data 0x01FF0015
	#data 0x03FF0016
	#data 0x07FF0017
	#data 0x0FFF0019
	#data 0x1FFF001D
	#data 0x1FFF001E
	#data 0x3FFF0020

;==============================================
loc_8c1C6630:
	#data 0x3fff0005
	#data 0x3ffe0006
	#data 0x3ffc0007
	#data 0x3ff80008
	#data 0x3ff0000b
	#data 0x3FE0000C
	#data 0x3FC0000D
	#data 0x3F80000E
	#data 0x3F000015
	#data 0x3E000016
	#data 0x3C000017
	#data 0x38000019
	#data 0x3000001D
	#data 0x2000001E
	#data 0x20000020

loc_8c1C666C:
	#data 0x02060105
	#data 0x04080307
	#data 0x060C050B
	#data 0x080E070D
	#data 0x0A160915
	#data 0x0C190B17
	#data 0x0D1E0D1D
	#data 0x011E0E20
	#data 0x02210120
	#data 0x04250323
	#data 0x062A0528
	#data 0x082E072C
	#data 0x0A320930
	#data 0x0C360B34
	#data 0x0D38

loc_8c1C66A6:
	#data 0x0118
	#data 0x031C021A
	#data 0x051F041E
	#data 0x07230622
	#data 0x09270824
	#data 0x0B290A28
	#data 0x0D2C0C2B
	#data 0x0F2F0E2D
	#data 0x11311030
	#data 0x13341233
	#data 0x15371435
	#data 0x00001638

loc_8c1C66D4:
	#data 0x00000960
	#data 0x000003E8
	#data 0x00000AF0
	#data 0x00000BB8
	#data 0x00000C80
	#data 0x00000D65
	#data 0x00000000
	#data 0x6E756F43
	#data 0x20797274
	#data 0x6C696146
	#data 0x206F5420
	#data 0x74696E49
	#data 0x00000000

loc_8c1C6708:
	#data 0x00000000

loc_8c1C670C:
	#data "Data Pump Error Code =   "
	#data 0x00
	#align4

loc_8c1C6728:
	#data 0x00000064
	#data 0x00000064
	#data 0x00000090
	#data 0x00000120
	#data 0x00000240
	#data 0x00000360
	#data 0x00000480
	#data 0x000005A0
	#data 0x000006C0
	#data 0x000007E0
	#data 0x00000780
	#data 0x00000A20
	#data 0x00000B40
	#data 0x00000C60
	#data 0x00000D20
	#data 0x00000D80
	#data 0x00000DC0
	#data 0x00000E60
	#data 0x00000E9C
	#data 0x00000F00
	#data 0x00000FA0
	#data 0x00000FC0
	#data 0x00000FF0
	#data 0x00001040
	#data 0x000010E0
	#data 0x00001180
	#data 0x000011D0
	#data 0x00001200
	#data 0x00001220
	#data 0x000012C0
	#data 0x00001360
	#data 0x000013B0
	#data 0x00001400
	#data 0x000014A0
	#data 0x00001540
	#data 0x00001590
	#data 0x000015E0
	#data 0x00001680
	#data 0x00001720
	#data 0x00001770
	#data 0x000017C0
	#data 0x00001860
	#data 0x00001900
	#data 0x00001950
	#data 0x000019A0
	#data 0x00001A40
	#data 0x00001B00
	#data 0x00001E00
	#data 0x000021C0
	#data 0x00002400
	#data 0x00002D00
	#data 0x00003600
	#data 0x00003C00
	#data 0x00006C00
	#data 0x0000D800
	#data 0x00014400
	#data 0x00014400
	#data 0x0001B000
	#data 0x0001B000
	#data 0x0001B000

loc_8c1C6818:
	#data 0x00000010
	#data 0x00000010
	#data 0x00000010
	#data 0x00000010
	#data 0x00000018
	#data 0x00000020

loc_8c1C6830:
	#data "KAMUI-Darkness Copyright (C) NEC Corporation 1999 "
	#data 0x0a
	#data "kmdk Ver 1,3,0,0 Build:Jul 23 1999 11:03:58"
	#data 0x0a
	#data 0x00
	#align4

loc_8c1C6890:
	#data "1,3,0,0"
	#data 0x00
	#align4

loc_8c1c6898:
	#data "FORM"
	#data 0x00
	#align4

loc_8c1c68a0:
	#data "AIFF"
	#data 0x00
	#align4

loc_8c1c68a8:
	#data ".snd"
	#data 0x00
	#align4

loc_8c1C68B0:
	#data ".sd"
	#data 0x00

loc_8c1c68b4:
	#data "SPSD"
	#data 0x00
	#align4

loc_8c1c68bc:
	#data "RIFF"
	#data 0x00
	#align4

loc_8c1c68c4:
	#data "fmt "
	#data 0x00
	#align4

loc_8c1c68cc:
	#data "WAVE"
	#data 0x00
	#align4

loc_8c1c68d4:
	#data "data"
	#data 0x00
	#align4

loc_8c1C68DC:
	#data 0xFF000010
	#data 0xFF00001C
	#data 0xFF000038
	#data 0xFF00003C
	#data 0xFFA00000
	#data 0xFFA00004
	#data 0xFFA00010
	#data 0xFFA00014
	#data 0xFFA0001C
	#data 0xFFA00020
	#data 0xFFA00028
	#data 0xFFA0002C
	#data 0xFFA00030
	#data 0xFFA00034
	#data 0xFFA0003C
	#data 0xFFA00040
	#data 0xA05F6800
	#data 0xA05F6804
	#data 0xA05F6810
	#data 0xA05F6814
	#data 0xA05F6C04
	#data 0xA05F6C10
	#data 0xA05F7404
	#data 0xA05F7408
	#data 0xA05F740C
	#data 0xA05F7800
	#data 0xA05F7804
	#data 0xA05F7808
	#data 0xA05F780C
	#data 0xA05F7810
	#data 0xA05F7820
	#data 0xA05F7824
	#data 0xA05F7828
	#data 0xA05F782C
	#data 0xA05F7830
	#data 0xA05F7840
	#data 0xA05F7844
	#data 0xA05F7848
	#data 0xA05F784C
	#data 0xA05F7850
	#data 0xA05F7860
	#data 0xA05F7864
	#data 0xA05F7868
	#data 0xA05F786C
	#data 0xA05F7870
	#data 0xA05F7C00
	#data 0xA05F7C04
	#data 0xA05F7C08
	#data 0xA05F7C0C
	#data 0xA05F7C10
	#data 0xA05F8020
	#data 0xA05F802C
	#data 0xA05F8044
	#data 0xA05F8048
	#data 0xA05F8050
	#data 0xA05F8054
	#data 0xA05F8058
	#data 0xA05F805C
	#data 0xA05F8060
	#data 0xA05F8064
	#data 0xA05F8124
	#data 0xA05F8128
	#data 0xA05F812C
	#data 0xA05F8130
	#data 0xA05F8134
	#data 0xA05F8138
	#data 0xA05F8148
	#data 0xA05F814C
	#data 0xA05F8150

loc_8c1C69F0:
	#data 0x0d
	#data 0x0a
	#data " --- ADDRESS CHECKER TRAP --- "
	#data 0x0D
	#data 0x0a
	#data 0x00
	#align4

loc_8c1C6A14:
	#data "FR0-7:    "
	#data 0x00
	#align4

loc_8c1C6A20:
	#data "FR8-15:   "
	#data 0x00
	#align4

loc_8c1C6A2C:
	#data "FR0-7(B): "
	#data 0x00
	#align4

loc_8c1C6A38:
	#data "FR8-15(B):"
	#data 0x00
	#align4

loc_8c1C6A44:
	#data "FPUL: "
	#data 0x00
	#align4

loc_8c1C6A4C:
	#data " FPSCR: "
	#data 0x00
	#align4

loc_8c1C6A58:
	#data 0x0d
	#data 0x0a
	#data "R0-7:     "
	#data 0x00
	#align4

loc_8c1C6A68:
	#data "R8-15:    "
	#data 0x00
	#align4

loc_8c1C6A74:
	#data 0x0d
	#data 0x0a
	#data "R0-7(B):  "
	#data 0x00
	#align4

loc_8c1C6A84:
	#data "MACL: "
	#data 0x00
	#align4

loc_8c1C6A8C:
	#data " MACH: "
	#data 0x00
	#align4

loc_8c1C6A94:
	#data 0x0d
	#data 0x0a
	#data "VBR: "
	#data 0x00
	#align4

loc_8c1C6A9C:
	#data " GBR: "
	#data 0x00
	#align4

loc_8c1C6AA4:
	#data " DBR: "
	#data 0x00
	#align4

loc_8c1C6AAC:
	#data 0x0d
	#data 0x0a
	#data "PR: "
	#data 0x00
	#align4

loc_8c1C6AB4:
	#data " PC: "
	#data 0x00
	#align4

loc_8c1C6ABC:
	#data " SR: "
	#data 0x00
	#align4

loc_8c1C6AC4:
	#data 0x00000A0D

loc_8c1C6AC8:
	#data 0x0000003A

loc_8c1C6ACC:
	#data 0x00000020

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C6AD0:
	#data "Please, cancel the interrupt from ADRESS CHECKER,"
	#data 0x0d
	#data 0x0a
	#data " then hit RETURN key."
	#data 0x00
	#align4

loc_8c1C6B1C:
	#data "Please, cancel the interrupt from ADRESS CHECKER."
	#data 0x00
	#align4

loc_8c1C6B50:
	#data 0x00000000
	#data 0x01020000
	#data 0x32010100
	#data 0x00000000
	#data 0x00000000
	#data 0x00000001
	#data 0x00000000
	#data 0x00000000
	#data 0x00000A00
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C6BA0:
	#data 0x7FFF00FF
	#data 0xFFFFFF7F
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFF2C
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0x320923FF
	#data 0xFFFFFFFF
	#data 0xFFFF0AFF
	#data 0x7F7FFFFF
	#data 0xFFFFFF7F
	#data 0xFFFFFFBF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF
	#data 0xFFFFFFFF

loc_8c1C6BF0:
	#data 0x0D2B0000
	#data 0x1E02080A
	#data 0x5F0E0102
	#data 0x008A0032
	#data 0x00000000
	#data 0x17763003
	#data 0x400105EC
	#data 0x000F00C3
	#data 0x0A001A00
	#data 0x8214FFAA
	#data 0x1EEB0000
	#data 0x110D0000
	#data 0x00000313
	#data 0x0007FF3F
	#data 0x00000000
	#data 0x000000FF
	#data 0xFA0F0000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C6C40:
	#data 0x0D2B0000
	#data 0x1E02080A
	#data 0x5F0E0102
	#data 0x008A0032
	#data 0x00000000
	#data 0x17763003
	#data 0x4001059C
	#data 0x000F00C3
	#data 0x0A001A00
	#data 0x8214FF66
	#data 0x1EEB0000
	#data 0x110D0000
	#data 0x00000313
	#data 0x0007FFBF
	#data 0x00000000
	#data 0x000000FF
	#data 0xFA0F0000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C6C90:
	#data 0x0D2B0000
	#data 0x1E02080A
	#data 0x5F0E0102
	#data 0x008A0032
	#data 0x00000000
	#data 0x17763003
	#data 0x4001059C
	#data 0x000F00C3
	#data 0x0A001A00
	#data 0x8214FF22
	#data 0x1EEB0000
	#data 0x110D0000
	#data 0x00000313
	#data 0x0007FFBF
	#data 0x00000000
	#data 0x000000FF
	#data 0xFA0F0000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	
loc_8c1C6CE0:
	#data 0x60504000
	#data 0x30201070

loc_8c1C6CE8:
	#data 0x07060500
	#data 0x04030201

loc_8c1C6CF0:
	#data 0x03010200
	
loc_8c1C6CF4:
	#data 0x02010200

loc_8c1C6CF8:
	#data 0x00010305

loc_8c1C6CFC:
	#data 0x00000108
	#data 0x03030202
	#data 0x05050404
	#data 0x07070606

loc_8c1C6D0C:
	#data 0x00000000
	#data 0x03020101

loc_8c1C6D14:
	#data 0x03020100
	#data 0x07060504
	#data 0x0B0A0908
	#data 0x1A19120C
	#data 0x28262524
	#data 0xFF2E2C29

loc_8c1C6D2C:
	#data 0x04020100
	#data 0x08070605
	#data 0x0C0B0A09
	#data 0x241A1912
	#data 0xFF282625

loc_8c1C6D40:
	#data 0x03022E01
	#data 0x1B0A0604
	#data 0x00363533
	#data 0x04030201
	#data 0x08070605
	#data 0x0C0B0A09
	#data 0x13120F0D
	#data 0x2D251B15
	#data 0x31302F2E
	#data 0x35343332
	#data 0x00000036

loc_8c1C6D6C:
	#data 0x00323339

loc_8c1C6D70:
	#data "Sega BuiltIn modem"
	#data 0x0a
	#data 0x0d
	#data "REV 1.0306"
	#data 0x00
	#align4

loc_8c1C6D90:
	#data 0x37393061
	#data 0x46303438
	#data 0x43343832
	#data 0x33303436
	#data 0x00000046

loc_8c1C6DA4:
	#data 0x30364662
	#data 0x30303334
	#data 0x00003030

loc_8c1C6DB0:
	#data 0x33303172
	#data 0x31313131
	#data 0x30313131
	#data 0x30303031
	#data 0x00000030

loc_8c1C6DC4:
	#data 0x30303372
	#data 0x31313130
	#data 0x30303130
	#data 0x30303030
	#data 0x00000030
	
loc_8c1C6DD8:
	#data 0x00000042
loc_8c1C6DDC:
	#data 0x00000045
loc_8c1C6DE0:
	#data 0x0000004C
loc_8c1C6DE4:
	#data 0x0000004D
loc_8c1C6DE8:
	#data 0x0000004E
loc_8c1C6DEC:
	#data 0x00000051
loc_8c1C6DF0:
	#data 0x00000056
loc_8c1C6DF4:
	#data 0x00000057
loc_8c1C6DF8:
	#data 0x00000058
loc_8c1C6DFC:
	#data 0x00000059
loc_8c1C6E00:
	#data 0x00004226
loc_8c1C6E04:
	#data 0x00004326
loc_8c1C6E08:
	#data 0x00004426
loc_8c1C6E0C:
	#data 0x00004526
loc_8c1C6E10:
	#data 0x00004726
loc_8c1C6E14:
	#data 0x00004926
loc_8c1C6E18:
	#data 0x00004A26
loc_8c1C6E1C:
	#data 0x00004B26
loc_8c1C6E20:
	#data 0x00004C26
loc_8c1C6E24:
	#data 0x00004E26
loc_8c1C6E28:
	#data 0x00004F26
loc_8c1C6E2C:
	#data 0x00005026
loc_8c1C6E30:
	#data 0x00005126
loc_8c1C6E34:
	#data 0x00005226
loc_8c1C6E38:
	#data 0x00005326
loc_8c1C6E3C:
	#data 0x00005526
loc_8c1C6E40:
	#data 0x00005826
loc_8c1C6E44:
	#data 0x00005926
loc_8c1C6E48:
	#data 0x00004325
loc_8c1C6E4C:
	#data 0x00004425
loc_8c1C6E50:
	#data 0x0000415C
loc_8c1C6E54:
	#data 0x0000435C
loc_8c1C6E58:
	#data 0x0000465C
loc_8c1C6E5C:
	#data 0x0000475C
loc_8c1C6E60:
	#data 0x00004A5C
loc_8c1C6E64:
	#data 0x00004B5C
loc_8c1C6E68:
	#data 0x00004E5C
loc_8c1C6E6C:
	#data 0x0000565C
loc_8c1C6E70:
	#data 0x00004340

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C6E74:
	#data "PHONE NUMBERS :"
	#data 0x00
	#align4

loc_8c1C6E84:
	#data 0x00005A26
loc_8c1C6E88:
	#data 0x0000003D
loc_8c1C6E8C:
	#data 0x00000020

loc_8c1C6E90:
	#data "Modulation type: "
	#data 0x00
	#align4

loc_8c1C6EA4:
	#data "Bell 103"
	#data 0x00
	#align4

loc_8c1C6EB0:
	#data "Bell 1200"
	#data 0x00
	#align4

loc_8c1C6EBC:
	#data "V21 300"
	#data 0x00
	#align4

loc_8c1C6EC4:
	#data "V23 75TX/1200RX"
	#data 0x00
	#align4

loc_8c1C6ED4:
	#data "V23 1200TX/75RX"
	#data 0x00
	#align4

loc_8c1C6EE4:
	#data "V22 1200"
	#data 0x00
	#align4

loc_8c1C6EF0:
	#data "V22 600"
	#data 0x00
	#align4
	
loc_8c1C6EF8:
	#data "V22bis 1200"
	#data 0x00
	#align4
	
loc_8c1C6F04:
	#data "V22bis 2400"
	#data 0x00
	#align4

loc_8c1C6F10:
	#data "V32 4800"
	#data 0x00
	#align4
	
loc_8c1C6F1C:
	#data "V32 9600 (treillis coded)"
	#data 0x00
	#align4

loc_8c1C6F38:
	#data "V32 9600 (uncoded)"
	#data 0x00
	#align4

loc_8c1c6f4c:
	#data "V32bis 4800"
	#data 0x00
	#align4

loc_8c1c6f58:
	#data "V32bis 7200"
	#data 0x00
	#align4

loc_8c1c6f64:
	#data "V32bis 9600"
	#data 0x00
	#align4

loc_8c1c6f70:
	#data "V32bis 12000"
	#data 0x00
	#align4

loc_8c1c6f80:
	#data "V32bis 14400"
	#data 0x00
	#align4

loc_8c1c6f90:
	#data "V32terbo 16800"
	#data 0x00
	#align4

loc_8c1c6fa0:
	#data "V32terbo 19200"
	#data 0x00
	#align4

loc_8c1c6fb0:
	#data "V34 "
	#data 0x00
	#align4

loc_8c1c6fb8:
	#data "K56 "
	#data 0x00
	#align4

loc_8c1c6fc0:
	#data "V90 "
	#data 0x00
	#align4

loc_8c1C6FC8:
	#data "message not listed"
	#data 0x00
	#align4

loc_8c1C6FDC:
	#data "%d"
	#data 0x00
	#align4

loc_8c1C6FE0:
	#data "Receive level: -"
	#data 0x00
	#align4

loc_8c1C6FF4:
	#data "DSP`s Receive mean square error: 0x"
	#data 0x00
	#align4

loc_8c1C7018:
	#data "Round trip delay: "
	#data 0x00
	#align4

loc_8c1C702C:
	#data " ms"
	#data 0x00
	#align4

loc_8c1C7030:
	#data "Near echo level: -"
	#data 0x00
	#align4

loc_8c1C7044:
	#data " dbm"
	#data 0x00
	#align4

loc_8c1C704C:
	#data "Far echo level: -"
	#data 0x00
	#align4

loc_8c1C7060:
	#data "Termination reason.......... "
	#data 0x00
	#align4

loc_8c1C7080:
	#data "LOCAL REQUEST"
	#data 0x00
	#align4

loc_8c1C7090:
	#data "LINK DISCONNECT"
	#data 0x00
	#align4

loc_8c1C70A0:
	#data "Last Tx data rate........... "
	#data 0x00
	#align4

loc_8c1C70C0:
	#data "Highest Tx data rate........ "
	#data 0x00
	#align4

loc_8c1C70E0:
	#data "Last Rx data rate........... "
	#data 0x00
	#align4

loc_8c1C7100:
	#data "Highest Rx data rate........ "
	#data 0x00
	#align4

loc_8c1C7120:
	#data "Error correction protocol... "
	#data 0x00
	#align4

loc_8c1C7140:
	#data "LAPM"
	#data 0x00
	#align4

loc_8c1C7148:
	#data "MNP"
	#data 0x00
	#align4

loc_8c1C714C:
	#data "NONE"
	#data 0x00
	#align4

loc_8c1C7154:
	#data "Data compression............ "
	#data 0x00
	#align4

loc_8c1C7174:
	#data "V42Bis"
	#data 0x00
	#align4

loc_8c1C717C:
	#data "Line quality................ "
	#data 0x00
	#align4

loc_8c1c719c:
	#data "Enter new key :"
	#data 0x00
	#align4

	#data "Retype for verification :"
	#data 0x00
	#align4

loc_8c1C71C8:
	#data "("
	#data 0x00
	#align4

loc_8c1C71CC:
	#data ","
	#data 0x00
	#align4

loc_8c1C71D0:
	#data ")"
	#data 0x00
	#align4

loc_8c1C71D4:
	#data "29"
	#data 0x00
	#align4

loc_8c1C71D8:
	#data "BLACKLISTED"
	#data 0x00 0x00
	#align4

;==============================================
loc_8c1C71E8:
	#data loc_8c1C74F0
loc_8c1C71EC:
	#data loc_8c1C74F4
loc_8c1C71F0:
	#data loc_8c1C74FC
loc_8c1C71F4:
	#data loc_8c1C7504
loc_8c1C71F8:
	#data loc_8c1C7510
loc_8c1C71FC:
	#data loc_8c1C7518
loc_8c1C7200:
	#data loc_8c1C7528
loc_8c1C7204:
	#data loc_8c1C7534
loc_8c1C7208:
	#data loc_8c1C753C
loc_8c1C720C:
	#data loc_8c1C7548
loc_8c1C7210:
	#data loc_8c1C7554
loc_8c1C7214:
	#data loc_8c1C7564
loc_8c1C7218:
	#data loc_8c1C7574
loc_8c1C721C:
	#data loc_8c1C7584
loc_8c1C7220:
	#data loc_8c1C7594
loc_8c1C7224:
	#data loc_8c1C75A4
loc_8c1C7228:
	#data loc_8c1C75B4
loc_8c1C722C:
	#data loc_8c1C75C4
loc_8c1C7230:
	#data loc_8c1C75D4
loc_8c1C7234:
	#data loc_8c1C75DC
loc_8c1C7238:
	#data loc_8c1C75EC
loc_8c1C723C:
	#data loc_8c1C75FC
loc_8c1C7240:
	#data loc_8c1C760C
loc_8c1C7244:
	#data loc_8c1C7618
loc_8c1C7248:
	#data loc_8c1C7628
loc_8c1C724C:
	#data loc_8c1C7638
loc_8c1C7250:
	#data loc_8c1C7648
loc_8c1C7254:
	#data loc_8c1C7658
loc_8c1C7258:
	#data loc_8c1C7668
loc_8c1C725C:
	#data loc_8c1C7678
loc_8c1C7260:
	#data loc_8c1C7688
loc_8c1C7264:
	#data loc_8c1C7698
loc_8c1C7268:
	#data loc_8c1C76A8
loc_8c1C726C:
	#data loc_8c1C76B8
loc_8c1C7270:
	#data loc_8c1C76C8
loc_8c1C7274:
	#data loc_8c1C76D8
loc_8c1C7278:
	#data loc_8c1C76E8
loc_8c1C727C:
	#data loc_8c1C76F8
loc_8c1C7280:
	#data loc_8c1C7708
loc_8c1C7284:
	#data loc_8c1C7718
loc_8c1C7288:
	#data loc_8c1C7728
loc_8c1C728C:
	#data loc_8c1C7734
loc_8c1C7290:
	#data loc_8c1C7740
loc_8c1C7294:
	#data loc_8c1C7750
loc_8c1C7298:
	#data loc_8c1C7760
loc_8c1C729C:
	#data loc_8c1C7770
loc_8c1C72A0:
	#data loc_8c1C7780
loc_8c1C72A4:
	#data loc_8c1C7790
loc_8c1C72A8:
	#data loc_8c1C77A0
loc_8c1C72AC:
	#data loc_8c1C77B0
loc_8c1C72B0:
	#data loc_8c1C77C0
loc_8c1C72B4:
	#data loc_8c1C77D0
loc_8c1C72B8:
	#data loc_8c1C77E0
loc_8c1C72BC:
	#data loc_8c1C77F0
loc_8c1C72C0:
	#data loc_8c1C7800
loc_8c1C72C4:
	#data loc_8c1C7810
loc_8c1C72C8:
	#data loc_8c1C7820
loc_8c1C72CC:
	#data loc_8c1C7830
loc_8c1C72D0:
	#data loc_8c1C7840
loc_8c1C72D4:
	#data loc_8c1C7850
loc_8c1C72D8:
	#data loc_8c1C7860
loc_8c1C72DC:
	#data loc_8c1C7870
loc_8c1C72E0:
	#data loc_8c1C7880
loc_8c1C72E4:
	#data loc_8c1C7894
loc_8c1C72E8:
	#data loc_8c1C78A8
loc_8c1C72EC:
	#data loc_8c1C78BC
loc_8c1C72F0:
	#data loc_8c1C78D0
loc_8c1C72F4:
	#data loc_8c1C78E0
loc_8c1C72F8:
	#data loc_8c1C78F0
loc_8c1C72FC:
	#data loc_8c1C7900
loc_8c1C7300:
	#data loc_8c1C7910
loc_8c1C7304:
	#data loc_8c1C7920
loc_8c1C7308:
	#data loc_8c1C7930
loc_8c1C730C:
	#data loc_8c1C7940
loc_8c1C7310:
	#data loc_8c1C7950
loc_8c1C7314:
	#data loc_8c1C7960
loc_8c1C7318:
	#data loc_8c1C7970
loc_8c1C731C:
	#data loc_8c1C7980
loc_8c1C7320:
	#data loc_8c1C7990
loc_8c1C7324:
	#data loc_8c1C79A0
loc_8c1C7328:
	#data loc_8c1C79B4
loc_8c1C732C:
	#data loc_8c1C79C4
loc_8c1C7330:
	#data loc_8c1C79D4
loc_8c1C7334:
	#data loc_8c1C79E4
loc_8c1C7338:
	#data loc_8c1C79F4
loc_8c1C733C:
	#data loc_8c1C7A04
loc_8c1C7340:
	#data loc_8c1C7A14
loc_8c1C7344:
	#data loc_8c1C7A24
loc_8c1C7348:
	#data loc_8c1C7A34
loc_8c1C734C:
	#data loc_8c1C7A44
loc_8c1C7350:
	#data loc_8c1C7A54
loc_8c1C7354:
	#data loc_8c1C7A68
loc_8c1C7358:
	#data loc_8c1C7A84
loc_8c1C735C:
	#data loc_8c1C7A94
loc_8c1C7360:
	#data loc_8c1C7AA4
loc_8c1C7364:
	#data loc_8c1C7AB4
loc_8c1C7368:
	#data loc_8c1C7AC4
loc_8c1C736C:
	#data loc_8c1C7AD4
loc_8c1C7370:
	#data loc_8c1C7AE0
loc_8c1C7374:
	#data loc_8c1C7AEC
loc_8c1C7378:
	#data loc_8c1C7AFC
loc_8c1C737C:
	#data loc_8c1C7B0C
loc_8c1C7380:
	#data loc_8c1C7B1C
loc_8c1C7384:
	#data loc_8c1C7B2C
loc_8c1C7388:
	#data loc_8c1C7B3C
loc_8c1C738C:
	#data loc_8c1C7B4C
loc_8c1C7390:
	#data loc_8c1C7B5C
loc_8c1C7394:
	#data loc_8c1C7B6C
loc_8c1C7398:
	#data loc_8c1C7B7C
loc_8c1C739C:
	#data loc_8c1C7B8C
loc_8c1C73A0:
	#data loc_8c1C7B9C
loc_8c1C73A4:
	#data loc_8c1C7BAC
loc_8c1C73A8:
	#data loc_8c1C7BBC
loc_8c1C73AC:
	#data loc_8c1C7BCC
loc_8c1C73B0:
	#data loc_8c1C7BDC
loc_8c1C73B4:
	#data loc_8c1C7BEC
loc_8c1C73B8:
	#data loc_8c1C7BFC
loc_8c1C73BC:
	#data loc_8c1C7C0C
loc_8c1C73C0:
	#data loc_8c1C7C1C
loc_8c1C73C4:
	#data loc_8c1C7C2C
loc_8c1C73C8:
	#data loc_8c1C7C3C
loc_8c1C73CC:
	#data loc_8c1C7C4C
loc_8c1C73D0:
	#data loc_8c1C7C5C
loc_8c1C73D4:
	#data loc_8c1C7C6C
loc_8c1C73D8:
	#data loc_8c1C7C7C
loc_8c1C73DC:
	#data loc_8c1C7C8C
loc_8c1C73E0:
	#data loc_8c1C7C9C
loc_8c1C73E4:
	#data loc_8c1C7CAC
loc_8c1C73E8:
	#data loc_8c1C7CBC
loc_8c1C73EC:
	#data loc_8c1C7CCC
loc_8c1C73F0:
	#data loc_8c1C7CDC
loc_8c1C73F4:
	#data loc_8c1C7CEC
loc_8c1C73F8:
	#data loc_8c1C7CFC
loc_8c1C73FC:
	#data loc_8c1C7D0C

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C7400:
	#data 0x0000004B
	#data 0x0000012C
	#data 0x000004B0
	#data 0x00000960
	#data 0x000012C0
	#data 0x00001C20
	#data 0x00002580
	#data 0x00002EE0
	#data 0x00003840
	#data 0x000041A0
	#data 0x00004B00
	#data 0x00005460
	#data 0x00005DC0
	#data 0x00006720
	#data 0x00006D60
	#data 0x00007080
	#data 0x00007295
	#data 0x000077CA
	#data 0x000079E0
	#data 0x00007D00
	#data 0x00008235
	#data 0x00008340
	#data 0x000084D0
	#data 0x0000876A
	#data 0x00008CA0
	#data 0x000091D5
	#data 0x00009470
	#data 0x00009600
	#data 0x0000970A
	#data 0x00009C40
	#data 0x0000A175
	#data 0x0000A410
	#data 0x0000A6AA
	#data 0x0000ABE0
	#data 0x0000B115
	#data 0x0000B3B0
	#data 0x0000B64A
	#data 0x0000BB80
	#data 0x0000C0B5
	#data 0x0000C350
	#data 0x0000C5EA
	#data 0x0000CB20
	#data 0x0000D055
	#data 0x0000D2F0
	#data 0x0000D58A
	#data 0x0000DAC0
	#data 0x0000E100
	#data 0x0000FA00
	#data 0x00011940
	#data 0x00012C00
	#data 0x00017700
	#data 0x0001C200
	#data 0x0001F400
	#data 0x00038400
	#data 0x00070800
	#data 0x00070800
	#data 0x000A8C00
	#data 0x000A8C00
	#data 0x000A8C00
	#data 0x000E1000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C74F0:
	#data "OK"
	#data 0x00
	#align4

loc_8c1C74F4:
	#data "CONNECT"
	#data 0x00
	#align4

loc_8c1C74FC:
	#data "RING"
	#data 0x00
	#align4

loc_8c1C7504:
	#data "NO CARRIER"
	#data 0x00
	#align4

loc_8c1C7510:
	#data "ERROR"
	#data 0x00
	#align4

loc_8c1C7518:
	#data "CONNECT 1200"
	#data 0x00
	#align4

loc_8c1C7528:
	#data "NO DIALTONE"
	#data 0x00
	#align4

loc_8c1C7534:
	#data "BUSY"
	#data 0x00
	#align4

loc_8c1C753C:
	#data "NO ANSWER"
	#data 0x00
	#align4

loc_8c1C7548:
	#data "CONNECT 600"
	#data 0x00
	#align4

loc_8c1C7554:
	#data "CONNECT 2400"
	#data 0x00
	#align4

loc_8c1C7564:
	#data "CONNECT 4800"
	#data 0x00
	#align4

loc_8c1C7574:
	#data "CONNECT 9600"
	#data 0x00
	#align4

loc_8c1c7584:
	#data "CONNECT 14400"
	#data 0x00
	#align4

loc_8c1c7594:
	#data "CONNECT 19200"
	#data 0x00
	#align4

loc_8c1c75a4:
	#data "CONNECT 38400"
	#data 0x00
	#align4

loc_8c1c75b4:
	#data "CONNECT 57600"
	#data 0x00
	#align4

loc_8c1c75c4:
	#data "CONNECT 115200"
	#data 0x00
	#align4

loc_8c1C75D4:
	#data "RINGING"
	#data 0x00
	#align4

loc_8c1C75DC:
	#data "CONNECT 230400"
	#data 0x00
	#align4

loc_8c1C75EC:
	#data "CONNECT 48000"
	#data 0x00
	#align4

loc_8c1C75FC:
	#data "CONNECT 64000"
	#data 0x00
	#align4

loc_8c1C760C:
	#data "CONNECT 300"
	#data 0x00
	#align4

loc_8c1c7618:
	#data "CARRIER 50000"
	#data 0x00
	#align4

loc_8c1c7628:
	#data "CONNECT 460800"
	#data 0x00
	#align4

loc_8c1c7638:
	#data "CONNECT 691200"
	#data 0x00
	#align4

loc_8c1c7648:
	#data "CONNECT 921600"
	#data 0x00
	#align4

loc_8c1c7658:
	#data "CONNECT 56000"
	#data 0x00
	#align4

loc_8c1c7668:
	#data "CARRIER 52000"
	#data 0x00
	#align4

loc_8c1c7678:
	#data "CARRIER 54000"
	#data 0x00
	#align4

loc_8c1c7688:
	#data "CARRIER 38400"
	#data 0x00
	#align4

loc_8c1c7698:
	#data "CARRIER 48000"
	#data 0x00
	#align4

loc_8c1c76a8:
	#data "CARRIER 56000"
	#data 0x00
	#align4

loc_8c1c76b8:
	#data "CARRIER 57600"
	#data 0x00
	#align4

loc_8c1c76c8:
	#data "CARRIER 64000"
	#data 0x00
	#align4

loc_8c1c76d8:
	#data "CARRIER 32000"
	#data 0x00
	#align4

loc_8c1c76e8:
	#data "CARRIER 34000"
	#data 0x00
	#align4

loc_8c1c76f8:
	#data "CARRIER 36000"
	#data 0x00
	#align4

loc_8c1c7708:
	#data "CARRIER 38000"
	#data 0x00
	#align4

loc_8c1c7718:
	#data "CARRIER 40000"
	#data 0x00
	#align4

loc_8c1C7728:
	#data "CARRIER 300"
	#data 0x00
	#align4

loc_8c1C7734:
	#data "CARRIER 600"
	#data 0x00
	#align4

loc_8c1c7740:
	#data "CARRIER 3600"
	#data 0x00
	#align4

loc_8c1c7750:
	#data "CARRIER 42000"
	#data 0x00
	#align4

loc_8c1c7760:
	#data "CARRIER 44000"
	#data 0x00
	#align4

loc_8c1c7770:
	#data "CARRIER 46000"
	#data 0x00
	#align4

loc_8c1c7780:
	#data "CARRIER 1200"
	#data 0x00
	#align4

loc_8c1c7790:
	#data "CARRIER 2400"
	#data 0x00
	#align4

loc_8c1c77a0:
	#data "CARRIER 4800"
	#data 0x00
	#align4

loc_8c1c77b0:
	#data "CARRIER 7200"
	#data 0x00
	#align4

loc_8c1c77c0:
	#data "CARRIER 9600"
	#data 0x00
	#align4

loc_8c1c77d0:
	#data "CARRIER 12000"
	#data 0x00
	#align4

loc_8c1c77e0:
	#data "CARRIER 14400"
	#data 0x00
	#align4

loc_8c1c77f0:
	#data "CARRIER 16800"
	#data 0x00
	#align4

loc_8c1c7800:
	#data "CARRIER 19200"
	#data 0x00
	#align4

loc_8c1c7810:
	#data "CARRIER 21600"
	#data 0x00
	#align4

loc_8c1c7820:
	#data "CARRIER 24000"
	#data 0x00
	#align4

loc_8c1c7830:
	#data "CARRIER 26400"
	#data 0x00
	#align4

loc_8c1c7840:
	#data "CARRIER 28800"
	#data 0x00
	#align4

loc_8c1c7850:
	#data "CONNECT 16800"
	#data 0x00
	#align4

loc_8c1c7860:
	#data "CONNECT 7200"
	#data 0x00
	#align4

loc_8c1c7870:
	#data "CONNECT 12000"
	#data 0x00
	#align4

loc_8c1c7880:
	#data "CONNECT 75TX/1200RX"
	#data 0x00
	#align4

loc_8c1c7894:
	#data "CONNECT 1200TX/75RX"
	#data 0x00
	#align4

loc_8c1c78a8:
	#data "CARRIER 75TX/1200RX"
	#data 0x00
	#align4

loc_8c1c78bc:
	#data "CARRIER 1200TX/75RX"
	#data 0x00
	#align4

loc_8c1c78d0:
	#data "CONNECT 21600"
	#data 0x00
	#align4

loc_8c1c78e0:
	#data "CONNECT 24000"
	#data 0x00
	#align4

loc_8c1c78f0:
	#data "CONNECT 26400"
	#data 0x00
	#align4

loc_8c1c7900:
	#data "CONNECT 28800"
	#data 0x00
	#align4

loc_8c1c7910:
	#data "PROTOCOL: NONE"
	#data 0x00
	#align4

loc_8c1c7920:
	#data "CONNECT 32000"
	#data 0x00
	#align4

loc_8c1c7930:
	#data "CONNECT 34000"
	#data 0x00
	#align4

loc_8c1c7940:
	#data "CONNECT 31200"
	#data 0x00
	#align4

loc_8c1c7950:
	#data "CONNECT 33600"
	#data 0x00
	#align4

loc_8c1c7960:
	#data "CONNECT 36000"
	#data 0x00
	#align4

loc_8c1c7970:
	#data "CONNECT 38000"
	#data 0x00
	#align4

loc_8c1c7980:
	#data "PROTOCOL: V42"
	#data 0x00
	#align4

loc_8c1c7990:
	#data "CONNECT 40000"
	#data 0x00
	#align4

loc_8c1c79a0:
	#data "PROTOCOL: MNP REL"
	#data 0x00
	#align4

loc_8c1c79b4:
	#data "CONNECT 42000"
	#data 0x00
	#align4

loc_8c1c79c4:
	#data "CONNECT 44000"
	#data 0x00
	#align4

loc_8c1c79d4:
	#data "PROTOCOL: X.25"
	#data 0x00
	#align4

loc_8c1c79e4:
	#data "PROTOCOL: V.120"
	#data 0x00
	#align4

loc_8c1c79f4:
	#data "PROTOCOL: V.110"
	#data 0x00
	#align4

loc_8c1c7a04:
	#data "CARRIER 31200"
	#data 0x00
	#align4

loc_8c1c7a14:
	#data "CARRIER 33600"
	#data 0x00
	#align4

loc_8c1c7a24:
	#data "PROTOCOL: PPP"
	#data 0x00
	#align4

loc_8c1c7a34:
	#data "PROTOCOL: MLPPP"
	#data 0x00
	#align4

loc_8c1c7a44:
	#data "CONNECT 46000"
	#data 0x00
	#align4

loc_8c1c7a54:
	#data "AUTOLOGON FAILED "
	#data 0x00
	#align4

loc_8c1c7a68:
	#data "PROTOCOL: V.120 COMPRESSION"
	#data 0x00
	#align4

loc_8c1c7a84:
	#data "PROTOCOL: X.75"
	#data 0x00
	#align4

loc_8c1c7a94:
	#data "CONNECT 50000"
	#data 0x00
	#align4

loc_8c1c7aa4:
	#data "CONNECT 52000"
	#data 0x00
	#align4

loc_8c1c7ab4:
	#data "CONNECT 54000"
	#data 0x00
	#align4

loc_8c1c7ac4:
	#data "CONNECT 128000"
	#data 0x00
	#align4

loc_8c1c7ad4:
	#data "TEST FAILED"
	#data 0x00
	#align4

loc_8c1c7ae0:
	#data "TEST PASSED"
	#data 0x00
	#align4

loc_8c1c7aec:
	#data "CIRCUIT BUSY"
	#data 0x00
	#align4

loc_8c1c7afc:
	#data "PROTOCOL: HDLC"
	#data 0x00
	#align4

loc_8c1c7b0c:
	#data "CARRIER 112000"
	#data 0x00
	#align4

loc_8c1c7b1c:
	#data "CARRIER 128000"
	#data 0x00
	#align4

loc_8c1c7b2c:
	#data "PROTOCOL: PIAFS"
	#data 0x00
	#align4

loc_8c1c7b3c:
	#data "CONNECT 28000"
	#data 0x00
	#align4

loc_8c1c7b4c:
	#data "CONNECT 29333"
	#data 0x00
	#align4

loc_8c1c7b5c:
	#data "CONNECT 30666"
	#data 0x00
	#align4

loc_8c1c7b6c:
	#data "CONNECT 33333"
	#data 0x00
	#align4

loc_8c1c7b7c:
	#data "CONNECT 34666"
	#data 0x00
	#align4

loc_8c1c7b8c:
	#data "CONNECT 37333"
	#data 0x00
	#align4

loc_8c1c7b9c:
	#data "CONNECT 38666"
	#data 0x00
	#align4

loc_8c1c7bac:
	#data "CONNECT 41333"
	#data 0x00
	#align4

loc_8c1c7bbc:
	#data "CONNECT 42666"
	#data 0x00
	#align4

loc_8c1c7bcc:
	#data "CONNECT 45333"
	#data 0x00
	#align4

loc_8c1c7bdc:
	#data "CONNECT 46666"
	#data 0x00
	#align4

loc_8c1c7bec:
	#data "CONNECT 49333"
	#data 0x00
	#align4

loc_8c1c7bfc:
	#data "CONNECT 50666"
	#data 0x00
	#align4

loc_8c1c7c0c:
	#data "CONNECT 53333"
	#data 0x00
	#align4

loc_8c1c7c1c:
	#data "CONNECT 54666"
	#data 0x00
	#align4

loc_8c1c7c2c:
	#data "CARRIER 28000"
	#data 0x00
	#align4

loc_8c1c7c3c:
	#data "CARRIER 29333"
	#data 0x00
	#align4

loc_8c1c7c4c:
	#data "CARRIER 30666"
	#data 0x00
	#align4

loc_8c1c7c5c:
	#data "CARRIER 33333"
	#data 0x00
	#align4

loc_8c1c7c6c:
	#data "CARRIER 34666"
	#data 0x00
	#align4

loc_8c1c7c7c:
	#data "CARRIER 37333"
	#data 0x00
	#align4

loc_8c1c7c8c:
	#data "CARRIER 38666"
	#data 0x00
	#align4

loc_8c1c7c9c:
	#data "CARRIER 41333"
	#data 0x00
	#align4

loc_8c1c7cac:
	#data "CARRIER 42666"
	#data 0x00
	#align4

loc_8c1c7cbc:
	#data "CARRIER 45333"
	#data 0x00
	#align4

loc_8c1c7ccc:
	#data "CARRIER 46666"
	#data 0x00
	#align4

loc_8c1c7cdc:
	#data "CARRIER 49333"
	#data 0x00
	#align4

loc_8c1c7cec:
	#data "CARRIER 50666"
	#data 0x00
	#align4

loc_8c1c7cfc:
	#data "CARRIER 53333"
	#data 0x00
	#align4

loc_8c1c7d0c:
	#data "CARRIER 54666"
	#data 0x00
	#align4


loc_8c1c7d1c:
	#data "%d"
	#data 0x00
	#align4


loc_8c1c7d20:
	#data " BPS"
	#data 0x00
	#align4

loc_8c1C7D28:
	#data 0x00 0x80 0x40 0xc0 0x20 0xa0 0x60 0xe0
	#data 0x10 0x90 0x50 0xd0 0x30 0xb0 0x70 0xf0
	#data 0x08 0x88 0x48 0xc8 0x28 0xa8 0x68 0xe8
	#data 0x18 0x98 0x58 0xd8 0x38 0xb8 0x78 0xf8
	#data 0x04 0x84 0x44 0xc4 0x24 0xa4 0x64 0xe4
	#data 0x14 0x94 0x54 0xd4 0x34 0xb4 0x74 0xf4
	#data 0x0c 0x8c 0x4c 0xcc 0x2c 0xac 0x6c 0xec
	#data 0x1c 0x9c 0x5c 0xdc 0x3c 0xbc 0x7c 0xfc
	#data 0x02 0x82 0x42 0xc2 0x22 0xa2 0x62 0xe2
	#data 0x12 0x92 0x52 0xd2 0x32 0xb2 0x72 0xf2
	#data 0x0a 0x8a 0x4a 0xca 0x2a 0xaa 0x6a 0xea
	#data 0x1a 0x9a 0x5a 0xda 0x3a 0xba 0x7a 0xfa
	#data 0x06 0x86 0x46 0xc6 0x26 0xa6 0x66 0xe6
	#data 0x16 0x96 0x56 0xd6 0x36 0xb6 0x76 0xf6
	#data 0x0e 0x8e 0x4e 0xce 0x2e 0xae 0x6e 0xee
	#data 0x1e 0x9e 0x5e 0xde 0x3e 0xbe 0x7e 0xfe
	#data 0x01 0x81 0x41 0xc1 0x21 0xa1 0x61 0xe1
	#data 0x11 0x91 0x51 0xd1 0x31 0xb1 0x71 0xf1
	#data 0x09 0x89 0x49 0xc9 0x29 0xa9 0x69 0xe9
	#data 0x19 0x99 0x59 0xd9 0x39 0xb9 0x79 0xf9
	#data 0x05 0x85 0x45 0xc5 0x25 0xa5 0x65 0xe5
	#data 0x15 0x95 0x55 0xd5 0x35 0xb5 0x75 0xf5
	#data 0x0d 0x8d 0x4d 0xcd 0x2d 0xad 0x6d 0xed
	#data 0x1d 0x9d 0x5d 0xdd 0x3d 0xbd 0x7d 0xfd
	#data 0x03 0x83 0x43 0xc3 0x23 0xa3 0x63 0xe3
	#data 0x13 0x93 0x53 0xd3 0x33 0xb3 0x73 0xf3
	#data 0x0b 0x8b 0x4b 0xcb 0x2b 0xab 0x6b 0xeb
	#data 0x1b 0x9b 0x5b 0xdb 0x3b 0xbb 0x7b 0xfb
	#data 0x07 0x87 0x47 0xc7 0x27 0xa7 0x67 0xe7
	#data 0x17 0x97 0x57 0xd7 0x37 0xb7 0x77 0xf7
	#data 0x0f 0x8f 0x4f 0xcf 0x2f 0xaf 0x6f 0xef
	#data 0x1f 0x9f 0x5f 0xdf 0x3f 0xbf 0x7f 0xff

	#data "(C)COPYRIGHT TRISIGNAL COMMUNICATIONS INC. 1994, ALL RIGHTS RESERVED"
	#data 0x00

loc_8c1c7e6d:
	#data 0x0C
	#data 0x0D10
	#data 0x28

loc_8c1c7e71:
	#data 0x00
	#data 0x7E6A
	#data 0x407E
	#data 0x6050
	#data 0x70

loc_8c1c7e79:
	#data 0x00
	#data 0x0001
	#data 0x0200
	#data 0x0303
	#data 0x0403
	#data 0x0707
	#data 0x0507
	#data 0x0606
	#data 0x0106
	#data 0x0908
	#data 0x0000
	#data 0x0000

	#data "(C)COPYRIGHT TRISIGNAL COMMUNICATIONS INC. 1994, ALL RIGHTS RESERVED"
	#data 0x00
	#align4

loc_8c1c7ed8:
	#data 0x0201
	#data 0x0403
	#data 0x0605
	#data 0x0807
	#data 0x0009

loc_8c1c7ee2:
	#data 0x0900
	#data 0x0708
	#data 0x0506
	#data 0x0304
	#data 0x0102
	#data 0x0000
	#data 0x0000

loc_8c1c7ef0:
	#data 0x0C20
	#data 0x0307
	#data 0x0102
	#data 0x3500
	#data 0x0105
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x1020
	#data 0x0407
	#data 0x0102
	#data 0xA000
	#data 0x1040
	#data 0x0103
	#data 0x0000
	#data 0x2000
	#data 0x0D16
	#data 0x0308
	#data 0x0102
	#data 0xA000
	#data 0x0350
	#data 0x0102
	#data 0x0000
	#data 0x1820
	#data 0x0A10
	#data 0x0508
	#data 0x0203
	#data 0x0001
	#data 0x0230
	#data 0x0102
	#data 0x2000
	#data 0x1018
	#data 0x080A
	#data 0x0305
	#data 0x0102
	#data 0x4A00
	#data 0x0315
	#data 0x0101
	#data 0x0000
	#data 0x0000
	#data 0x0000

loc_8c1c7f50:
	#data 0x2710
	#data 0x2BD4
	#data 0x312D
	#data 0x372D
	#data 0x3DE8
	#data 0x4576

loc_8c1c7f5c:
	#data 0x08C2
	#data 0xEE7C
	#data 0x08C2
	#data 0xC774
	#data 0x74FE
	#data 0x08C2
	#data 0x1184
	#data 0x08C2
	#data 0xCD4F
	#data 0x6495
	#data 0x0500
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c7f7a:
	#data 0x08C2
	#data 0xEE7C
	#data 0x08C2
	#data 0xC774
	#data 0x74FE
	#data 0x08C2
	#data 0x1184
	#data 0x08C2
	#data 0xCD4F
	#data 0x6495
	#data 0x0200
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c7f98:
	#data 0x14E2
	#data 0xCFE8
	#data 0x1C3D
	#data 0xD0AB
	#data 0x69F2
	#data 0x1BAD
	#data 0xE51C
	#data 0x1C3D
	#data 0xD0AB
	#data 0x6583
	#data 0x0D00
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c7fb6:
	#data 0x081C
	#data 0xEEFF
	#data 0x08FC
	#data 0xC505
	#data 0x742F
	#data 0x079B
	#data 0xF904
	#data 0x08FC
	#data 0xC63E
	#data 0x6E34
	#data 0x0200
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c7fd4:
	#data 0x0A52
	#data 0xEA5A
	#data 0x0B70
	#data 0xC467
	#data 0x74C9
	#data 0x0B35
	#data 0xFCF7
	#data 0x0B70
	#data 0xC5A2
	#data 0x6DDD
	#data 0x0800
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c7ff2:
	#data 0x08C2
	#data 0xEE7C
	#data 0x08C2
	#data 0xC774
	#data 0x74FE
	#data 0x08C2
	#data 0x1184
	#data 0x08C2
	#data 0xCD4F
	#data 0x6495
	#data 0x0400
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c8010:
	#data 0x0DA1
	#data 0xE9C9
	#data 0x0F6D
	#data 0xC5A2
	#data 0x70BA
	#data 0x0E37
	#data 0xE269
	#data 0x0F6D
	#data 0xC505
	#data 0x7643
	#data 0x0200
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c802e:
	#data 0x0937
	#data 0xEFB8
	#data 0x0997
	#data 0xC289
	#data 0x757E
	#data 0x0937
	#data 0xEDA6
	#data 0x0997
	#data 0xC289
	#data 0x7377
	#data 0x0200
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c804c:
	#data 0x095A
	#data 0xED34
	#data 0x09BD
	#data 0xC289
	#data 0x769A
	#data 0x07E3
	#data 0xF293
	#data 0x09BD
	#data 0xC289
	#data 0x7308
	#data 0x0700
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c806a:
	#data 0x1851
	#data 0xCB39
	#data 0x1EB2
	#data 0xCD4F
	#data 0x6BDF
	#data 0x1851
	#data 0xD625
	#data 0x1EB2
	#data 0xCD4F
	#data 0x6845
	#data 0x0900
	#data 0x7B30
	#data 0x04CF
	#data 0x0078
	#data 0x021C

loc_8c1c8088:
	#data 0x1153
	#data 0xDD2F
	#data 0x1209
	#data 0xC505
	#data 0x742F
	#data 0x109F
	#data 0xE9BD
	#data 0x1209
	#data 0xC6BA
	#data 0x6BE3
	#data 0x0600
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c80a6:
	#data 0x0A60
	#data 0xEAA7
	#data 0x0B42
	#data 0xC505
	#data 0x745B
	#data 0x0987
	#data 0xF73F
	#data 0x0B42
	#data 0xC63E
	#data 0x6BDB
	#data 0x0500
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c80c4:
	#data 0x08C2
	#data 0xEE7C
	#data 0x08C2
	#data 0xC774
	#data 0x74FE
	#data 0x08C2
	#data 0x1184
	#data 0x08C2
	#data 0xCD4F
	#data 0x6495
	#data 0x0500
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c80e2:
	#data 0x08C2
	#data 0xEE7C
	#data 0x08C2
	#data 0xC774
	#data 0x74FE
	#data 0x08C2
	#data 0x1184
	#data 0x08C2
	#data 0xCD4F
	#data 0x6495
	#data 0x0160
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c8100:
	#data 0x09AE
	#data 0xEBE5
	#data 0x0A81
	#data 0xC3C9
	#data 0x7669
	#data 0x0882
	#data 0xF3D9
	#data 0x0A81
	#data 0xC3C9
	#data 0x7086
	#data 0x0688
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c811e:
	#data 0x14AF
	#data 0xD336
	#data 0x186F
	#data 0xCB01
	#data 0x6F16
	#data 0x143C
	#data 0xDDEF
	#data 0x186F
	#data 0xCB01
	#data 0x6990
	#data 0x0625
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c813c:
	#data 0x08C2
	#data 0xEE7C
	#data 0x08C2
	#data 0xC774
	#data 0x74FE
	#data 0x08C2
	#data 0x1184
	#data 0x08C2
	#data 0xCD4F
	#data 0x6495
	#data 0x0900
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c815a:
	#data 0x08C2
	#data 0xEE7C
	#data 0x08C2
	#data 0xC774
	#data 0x74FE
	#data 0x08C2
	#data 0x1184
	#data 0x08C2
	#data 0xCD4F
	#data 0x6495
	#data 0x0600
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c8178:
	#data 0x1004
	#data 0xE100
	#data 0x10AE
	#data 0xC289
	#data 0x757E
	#data 0x1004
	#data 0xE223
	#data 0x10AE
	#data 0xC289
	#data 0x744D
	#data 0x0180
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c8196:
	#data 0x0A7A
	#data 0xEB42
	#data 0x0AE8
	#data 0xC63E
	#data 0x71E5
	#data 0x08D6
	#data 0xF7B4
	#data 0x0AE8
	#data 0xC9D5
	#data 0x6D2F
	#data 0x0170
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c81b4:
	#data 0x0807
	#data 0xEEFE
	#data 0x09E9
	#data 0xC147
	#data 0x7675
	#data 0x0807
	#data 0xF02E
	#data 0x09E9
	#data 0xC147
	#data 0x74A5
	#data 0x0600
	#data 0x7B30
	#data 0x04CF
	#data 0x0000
	#data 0x0000

loc_8c1c81d2:
	#data 0x0D49
	#data 0xE32E
	#data 0x1066
	#data 0xC3C9
	#data 0x74AB

loc_8c1c81dc:
	#data 0x0d49 0xe66f
	#data 0x1066 0xc3c9
	#data 0x71dc 0x0300
	#data 0x7b30 0x04cf
	#data 0x0000 0x0000

loc_8c1c81f0:
	#data 0x3dbe 0x87d4
	#data 0x4049 0xc289
	#data 0x769a 0x3dbe
	#data 0x903c 0x4049
	#data 0xc289 0x70be
	#data 0x0d00 0x7b30
	#data 0x04cf 0x0000
	#data 0x0000

loc_8c1c820e:
	#data 0x0b94 0xe6f0
	#data 0x0dfc 0xcb01
	#data 0x6e21 0x0b94
	#data 0xf53f 0x0dfc
	#data 0xc9d5 0x69d7
	#data 0x016c 0x7b30
	#data 0x04cf 0x0000
	#data 0x0000

loc_8c1c822c:
	#data 0x090b 0xec04
	#data 0x0b2a 0xcc29
	#data 0x6ddd 0x090b
	#data 0x037d 0x0b2a
	#data 0xcc29 0x662e
	#data 0x0380 0x7b30
	#data 0x04cf 0x0000
	#data 0x0000

loc_8c1c824a:
	#data 0x090b 0xec04
	#data 0x0b2a 0xcc29
	#data 0x6ddd 0x090b
	#data 0x037d 0x0b2a
	#data 0xcc29 0x662e
	#data 0x0400 0x7b30
	#data 0x04cf 0x0000
	#data 0x0000

loc_8c1c8268:
	#data 0x08c2 0xee7c
	#data 0x08c2 0xc774
	#data 0x74fe 0x08c2
	#data 0x1184 0x08c2
	#data 0xcd4f 0x6495
	#data 0x0500 0x7b30
	#data 0x04cf 0x0000
	#data 0x0000

loc_8c1c8286:
	#data 0x08c2
	#data 0xee7c 0x08c2
	#data 0xc774 0x74fe
	#data 0x08c2 0x1184
	#data 0x08c2 0xcd4f
	#data 0x6495 0x0200
	#data 0x7b30 0x04cf
	#data 0x0000 0x0000

loc_8c1C82A4:
	#data 0x04b5
	#data 0xfe99 0x04b5
	#data 0xc8b9 0x6b63
	#data 0x2ab9 0xaaaa
	#data 0x2ab9 0xc58e
	#data 0x7637 0x0600
	#data 0x7b30 0x04cf
	#data 0x0000 0x0000

loc_8c1C82C2:
	#data 0x026B
	#data 0x026B021C
	#data 0x67ABCBCB
	#data 0xB67E24C8
	#data 0xC6C224C8
	#data 0x020075DD
	#data 0x04CF7B30
	#data 0x00000000

loc_8c1C82E0:
	#data 0xEA760A45
	#data 0xC4670B61
	#data 0x930A74C9
	#data 0x0B61F693
	#data 0x6DDEC5A2
	#data 0x7B300800
	#data 0x000004CF
	#data 0x0000

loc_8c1C82FE:
	#data 0x08C2
	#data 0x08C2EE7C
	#data 0x74FEC774
	#data 0x118408C2
	#data 0xCD4F08C2
	#data 0x04006495
	#data 0x04CF7B30
	#data 0x00000000

loc_8c1C831C:
	#data 0xE7260C08
	#data 0xC5050D0E
	#data 0x0B897377
	#data 0x0D0EED33
	#data 0x6F4CC63E
	#data 0x7B300800
	#data 0x000004CF
	#data 0x0000

loc_8c1C833A:
	#data 0x06F1
	#data 0x07B1F182
	#data 0x7377C505
	#data 0xF9F406A7
	#data 0xC63E07B1
	#data 0x04006F15
	#data 0x04CF7B30
	#data 0x00000000

loc_8c1C8358:
	#data 0xED34095A
	#data 0xC28909BD
	#data 0x07E3769A
	#data 0x09BDF293
	#data 0x7308C289
	#data 0x7B300900
	#data 0x000004CF
	#data 0x0000

loc_8c1C8376:
	#data 0x0A7A
	#data 0x0AE8EB42
	#data 0x71E5C63E
	#data 0xF7B408D6
	#data 0xC9D50AE8
	#data 0x09006D2F
	#data 0x04CF7B30
	#data 0x00000000


loc_8c1C8394:
	#data 0x2dbe 0xa0b5
	#data 0x31a2 0xc505
	#data 0x7a69 0x2dbe
	#data 0xaf2f 0x31a2
	#data 0xc505 0x6c7e
	#data 0x0800 0x7b30
	#data 0x04cf 0x0000
	#data 0x0000

loc_8c1C83B2:
	#data 0x1811
	#data 0x1DB7CAB8
	#data 0x6E2ACC29
	#data 0xD7071811
	#data 0xCC291DB7
	#data 0x0600662E
	#data 0x04CF7B30
	#data 0x00000000

loc_8c1C83D0:
	#data 0xDF930FC9
	#data 0xC50510C7
	#data 0x0F2576B0
	#data 0x10C7E794
	#data 0x7057C63E
	#data 0x7B300800
	#data 0x000004CF
	#data 0x0000

loc_8c1C83EE:
	#data 0x0920
	#data 0x09B3ED42
	#data 0x76B0C505
	#data 0xF8600863
	#data 0xC63E09B3
	#data 0x03407057
	#data 0x04CF7B30
	#data 0x00000000

loc_8c1C840C:
	#data 0xEA760A45
	#data 0xC4670B61
	#data 0x930A74C9
	#data 0x0B61F693
	#data 0x6DDEC5A2
	#data 0x7B301000
	#data 0x000004CF
	#data 0x0000

loc_8c1C842A:
	#data 0x08C2
	#data 0x08C2EE7C
	#data 0x74FEC774
	#data 0x11840BC2
	#data 0xCD4F08C2
	#data 0x01306495
	#data 0x04CF7B30
	#data 0x00000000

loc_8c1C8448:
	#data 0x00100001
	#data 0x00830082
	#data 0x00860084
	#data 0x00850087
	#data 0x02000100
	#data 0x00000400
	#data 0x00000000
	#data 0x00000000

loc_8c1C8468:
	#data 0x00000086
	#data 0x00820082
	#data 0x00860084
	#data 0x00840086
	#data 0x02000100
	#data 0x00000400
	#data 0x00000000
	#data 0x00000000

loc_8c1C8488:
	#data "Problem accessing CardBus modem section."
	#data 0x00
	#align4
	#data 0x00
	#align4

loc_8c1C84B8:
	#data "GCI"
	#data 0x00
	#align4

loc_8c1C84BC:
	#data "MS"
	#data 0x00
	#align4

loc_8c1C84C0:
	#data "MA"
	#data 0x00
	#align4

loc_8c1C84C4:
	#data "FCLASS"
	#data 0x00
	#align4

loc_8c1C84CC:
	#data "+MA: "
	#data 0x00
	#align4

loc_8c1C84D4:
	#data "("
	#data 0x00
	#align4

loc_8c1C84D8:
	#data ","
	#data 0x00
	#align4

loc_8c1C84DC:
	#data ")"
	#data 0x00
	#align4

loc_8c1C84E0:
	#data "+MS: "
	#data 0x00
	#align4

loc_8c1C84E8:
	#data ",(0,1),"
	#data 0x00
	#align4

loc_8c1C84F0:
	#data "(0,300-%d),(0,300-%d),(0,300-%d),(0,300-%d)"
	#data 0x00
	#align4

loc_8c1C851C:
	#data "V21"
	#data 0x00
	#align4

loc_8c1c8520:
	#data ",V22"
	#data 0x00
	#align4

loc_8c1c8528:
	#data ",V22B"
	#data 0x00
	#align4

loc_8c1c8530:
	#data ",V23C"
	#data 0x00
	#align4

loc_8c1c8538:
	#data ",V32"
	#data 0x00
	#align4

loc_8c1c8540:
	#data ",V32B"
	#data 0x00
	#align4

loc_8c1c8548:
	#data ",V34"
	#data 0x00
	#align4

loc_8c1c8550:
	#data ",K56"
	#data 0x00
	#align4

loc_8c1c8558:
	#data ",V90"
	#data 0x00
	#align4

loc_8c1C8560:
	#data "Unknown modulation"
	#data 0x00
	#align4

loc_8c1c8574:
	#data "1,"
	#data 0x00
	#align4

loc_8c1c8578:
	#data "0,"
	#data 0x00
	#align4

loc_8c1c857c:
	#data "V90"
	#data 0x00
	#align4

loc_8c1c8580:
	#data "K56"
	#data 0x00
	#align4

loc_8c1c8584:
	#data "V34"
	#data 0x00
	#align4

loc_8c1C8588:
	#data "V32B"
	#data 0x00
	#align4

loc_8c1C8590:
	#data "V32"
	#data 0x00
	#align4

loc_8c1C8594:
	#data "V22B"
	#data 0x00
	#align4

loc_8c1C859C:
	#data "V22"
	#data 0x00
	#align4

loc_8c1C85A0:
	#data "V23C"
	#data 0x00
	#align4

loc_8c1C85A8:
	#data "BELL"
	#data 0x00
	#align4

loc_8c1C85B0:
	#data "0"
	#data 0x00
	#align4

loc_8c1C85B4:
	#data "%d"
	#data 0x00
	#align4

loc_8c1c85b8:
	#data "V21     "
	#data 0x00
	#align4

loc_8c1c85c4:
	#data "V22     "
	#data 0x00
	#align4

loc_8c1c85d0:
	#data "V22B    "
	#data 0x00
	#align4

loc_8c1c85dc:
	#data "V23C    "
	#data 0x00
	#align4

loc_8c1c85e8:
	#data "V32     "
	#data 0x00
	#align4

loc_8c1c85f4:
	#data "V32B    "
	#data 0x00
	#align4

loc_8c1c8600:
	#data "V34     "
	#data 0x00
	#align4

loc_8c1c860c:
	#data "K56     "
	#data 0x00
	#align4

loc_8c1c8618:
	#data "V90     "
	#data 0x00
	#align4

loc_8c1c8624:
	#data "+GCAP : +FCLASS, +MS, +ES, +DS"
	#data 0x00
	#align4

	#data "Sega"
	#data 0x00
	#align4

	#data "BuiltIn Modem"
	#data 0x00
	#align4

	#data "REV 1.000"
	#data 0x00
	#align4

loc_8c1C8668:
	#data "invalid type of number "
	#data 0x00
	#align4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C8680:
	#data 0x08070600
	#data 0x0C0B0A09
	#data 0x1615120E
	#data 0x1A191817
	#data 0x1E1D1C1B
	#data 0x2221201F
	#data 0x26252423
	#data 0x2F2E2827
	#data 0x34323130
	#data 0xFF373635
	
loc_8c1C86A8:
	#data 0x0C020200
	#data 0x00000000
	#data 0xFF000000

loc_8c1C86B4:
	#data "Dial number : "
	#data 0x00
	#align4

loc_8c1C86C4:
	#data "Autologon : "
	#data 0x00
	#align4
	#data 0x00
	#align4

loc_8c1C86D8:
	#data "Feb 01 2000"
	#data 0x00
	#align4

loc_8c1c86e4:
	#data "Jan"
	#data 0x00
	#align4

loc_8c1c86e8:
	#data "Feb"
	#data 0x00
	#align4

loc_8c1c86ec:
	#data "Mar"
	#data 0x00
	#align4

loc_8c1c86f0:
	#data "Apr"
	#data 0x00
	#align4

loc_8c1c86f4:
	#data "May"
	#data 0x00
	#align4

loc_8c1c86f8:
	#data "Jun"
	#data 0x00
	#align4

loc_8c1c86fc:
	#data "Jul"
	#data 0x00
	#align4

loc_8c1c8700:
	#data "Aug"
	#data 0x00
	#align4

loc_8c1c8704:
	#data "Sep"
	#data 0x00
	#align4

loc_8c1c8708:
	#data "Oct"
	#data 0x00
	#align4

loc_8c1c870c:
	#data "Nov"
	#data 0x00
	#align4

loc_8c1c8710:
	#data "Dec"
	#data 0x00
	#align4

loc_8c1C8714:
	#data "SD %s.%02d.%s.%c%c.%c%c.%c%c"
	#data 0x00
	#align4

loc_8c1C8734:
	#data "17:01:52"
	#data 0x00
	#align4
	#data 0x00
	#align4

loc_8c1c8744:
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000

loc_8c1C8780:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x47800000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48000000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48400000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC8000000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000
	#data 0xC7800000

loc_8c1C8B80:
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000
	#data 0x00000000
	#data 0x47800000
	#data 0x48000000
	#data 0x48400000
	#data 0x48800000
	#data 0x48A00000
	#data 0x48C00000
	#data 0x48E00000
	#data 0xC9000000
	#data 0xC8E00000
	#data 0xC8C00000
	#data 0xC8A00000
	#data 0xC8800000
	#data 0xC8400000
	#data 0xC8000000
	#data 0xC7800000

loc_8c1C8F80:
	#data 0x00000006
	#data 0x00000001
	#data 0x00000007
	#data 0x00000002
	#data 0x00000008
	#data 0x00000004
	#data 0x0000000B
	#data 0x00000008
	#data 0x0000000C
	#data 0x00000010
	#data 0x0000000D
	#data 0x00000020
	#data 0x0000000E
	#data 0x00000040

loc_8c1C8FB8:
	#data 0x00000005
	#data 0x00000001
	#data 0x00000006
	#data 0x00000002
	#data 0x00000007
	#data 0x00000004
	#data 0x00000008
	#data 0x00000008
	#data 0x0000000B
	#data 0x00000010
	#data 0x0000000C
	#data 0x00000020
	#data 0x0000000D
	#data 0x00000040
	#data 0x0000000E
	#data 0x00000080
	#data 0x00000015
	#data 0x00000100
	#data 0x00000016
	#data 0x00000200
	#data 0x00000017
	#data 0x00000400
	#data 0x00000019
	#data 0x00000800
	#data 0x0000001D
	#data 0x00001000
	#data 0x00000020
	#data 0x00002000

loc_8c1C9028:
	#data 0x00000018
	#data 0x00000001
	#data 0x0000001A
	#data 0x00000002
	#data 0x0000001C
	#data 0x00000004
	#data 0x0000001E
	#data 0x00000008
	#data 0x0000001F
	#data 0x00000010
	#data 0x00000022
	#data 0x00000020
	#data 0x00000023
	#data 0x00000040
	#data 0x00000024
	#data 0x00000080
	#data 0x00000027
	#data 0x00000100
	#data 0x00000028
	#data 0x00000200
	#data 0x00000029
	#data 0x00000400
	#data 0x0000002B
	#data 0x00000800
	#data 0x0000002C
	#data 0x00001000
	#data 0x0000002D
	#data 0x00002000
	#data 0x0000002F
	#data 0x00004000
	#data 0x00000030
	#data 0x00008000
	#data 0x00000031
	#data 0x00010000
	#data 0x00000033
	#data 0x00020000
	#data 0x00000034
	#data 0x00040000
	#data 0x00000035
	#data 0x00080000
	#data 0x00000037
	#data 0x00100000
	#data 0x00000038
	#data 0x00200000
	#data 0x00000000
	#data 0x00000000
	
loc_8c1C90E0:
	#data loc_8c1C4020
	#data 0x4B52414D
	#data 0x7864613A
	#data 0x626F5F74
	#data 0x0000006A

loc_8c1C90F4:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C9554:
	#data loc_8c1C410C
loc_8c1C9558:
	#data 0x00000000
loc_8c1C955C:
	#data 0x00000000
loc_8c1C9560:
	#data 0x00000000
loc_8c1C9564:
	#data 0x00000000
loc_8c1C9568:
	#data 0x00000000
loc_8c1C956C:
	#data 0x00000000
loc_8c1C9570:
	#data 0x00000000
loc_8c1C9574:
	#data 0x00000000
loc_8c1C9578:
	#data 0x00000000
loc_8c1C957C:
	#data 0x00000000
loc_8c1C9580:
	#data 0x0000000F
loc_8c1C9584:
	#data 0x00000000
loc_8c1C9588:
	#data 0x00010047
loc_8c1C958C:
	#data 0x00000000

loc_8c1C9590:
	#data 0x00000000
	#data 0x00000200
	#data 0x00000400
	#data 0x00000600

loc_8c1C95A0:
	#data 0x00000000
	#data 0x00001F80
	#data 0x000011C0
	#data 0x00000800

loc_8c1C95B0:
	#data 0x00000000

loc_8c1C95B4:
	#data loc_8c1C48E4

loc_8c1C95B8:
	#data 0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C95BC:
	#data bank17.loc_8c17D122
loc_8c1C95C0:
	#data bank17.loc_8c17D1C0
loc_8c1C95C4:
	#data bank17.loc_8c17D2E0
loc_8c1C95C8:
	#data bank17.loc_8c17D3A2
loc_8c1C95CC:
	#data bank17.loc_8c17D446
loc_8c1C95D0:
	#data bank17.loc_8c17D500
loc_8c1C95D4:
	#data bank17.loc_8c17D6E0
loc_8c1C95D8:
	#data bank17.loc_8c17D88E
loc_8c1C95DC:
	#data bank17.loc_8c17D9CE
loc_8c1C95E0:
	#data bank17.loc_8c17DB20
loc_8c1C95E4:
	#data bank17.loc_8c17DB98
loc_8c1C95E8:
	#data bank17.loc_8c17DC5A
loc_8c1C95EC:
	#data bank17.loc_8c17DCFE
loc_8c1C95F0:
	#data bank17.loc_8c17DDC0
loc_8c1C95F4:
	#data bank17.loc_8c17DF00
loc_8c1C95F8:
	#data bank17.loc_8c17E060
loc_8c1C95FC:
	#data bank17.loc_8c17E112
loc_8c1C9600:
	#data bank17.loc_8c17E1DA

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C9604:
	#data 0x00000000
loc_8c1C9608:
	#data 0x00000000
loc_8c1C960C:
	#data 0x00000000
loc_8c1C9610:
	#data 0x00000000
loc_8c1C9614:
	#data 0x00000000
loc_8c1C9618:
	#data 0x00000000
loc_8c1C961C:
	#data 0x00000000
	#data 0x00000000

loc_8c1C9624:
	#data 0x00000000
loc_8c1C9628:
	#data 0x00000000
loc_8c1C962C:
	#data 0x00000000
loc_8c1C9630:
	#data 0x00000000
loc_8c1C9634:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C9640:
	#data bank18.loc_8c1825E2
loc_8c1C9644:
	#data bank18.loc_8c182600
loc_8c1C9648:
	#data bank18.loc_8c18260A
loc_8c1C964C:
	#data bank18.loc_8c182660
loc_8c1C9650:
	#data bank18.loc_8c182712
loc_8c1C9654:
	#data bank18.loc_8c1826D2
loc_8c1C9658:
	#data bank18.loc_8c182614
loc_8c1C965C:
	#data bank18.loc_8c182792
loc_8c1C9660:
	#data bank18.loc_8c182604

loc_8c1C9664:
	#data 0x00000000
loc_8c1C9668:
	#data loc_8c1C5560

loc_8c1C966C:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C9678:
	#data bank18.loc_8c1828B6
loc_8c1C967C:
	#data bank18.loc_8c1828D4
loc_8c1C9680:
	#data bank18.loc_8c1828DE
loc_8c1C9684:
	#data bank18.loc_8c182940
loc_8c1C9688:
	#data bank18.loc_8c182ACC
loc_8c1C968C:
	#data bank18.loc_8c182A12
loc_8c1C9690:
	#data bank18.loc_8c1828EC
loc_8c1C9694:
	#data bank18.loc_8c182B88
loc_8c1C9698:
	#data bank18.loc_8c1828D8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C969C:
	#data 0x00000000

loc_8c1C96A0:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C96AC:
	#data bank18.loc_8c182CE2
loc_8c1C96B0:
	#data bank18.loc_8c182D00
loc_8c1C96B4:
	#data bank18.loc_8c182D0A
loc_8c1C96B8:
	#data bank18.loc_8c182DBE
loc_8c1C96BC:
	#data bank18.loc_8c182F52
loc_8c1C96C0:
	#data bank18.loc_8c182E8A
loc_8c1C96C4:
	#data bank18.loc_8c182D78
loc_8c1C96C8:
	#data bank18.loc_8c18302E
loc_8c1C96CC:
	#data bank18.loc_8c182D04

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1C96D0:
	#data 0x00000000
loc_8c1C96D4:
	#data loc_8c1C5908
loc_8c1C96D8:
	#data 0x00000000

loc_8c1C96DC:
	#data 0x00000001
	#data 0x00000002
	#data 0x00000004
	#data 0x00000008

loc_8c1C96EC:
	#data 0x0000000D
	#data 0x0000001E
	#data 0x0000003C
	#data 0x00000071

loc_8c1C96FC:
	#data 0x00000000

loc_8c1C9700:
	#data 0x00000011
	#data 0x00000000
	#data 0x0000011D

loc_8c1C970C:
	#data 0x00000002
	#data 0x00000000
	#data 0x00000000

loc_8c1C9718:
	#data 0x00000002

loc_8c1C971C:
	#data 0x00000002
	#data 0x00000000

loc_8c1C9724:
	#data 0x00000002
	#data 0x00000000

loc_8c1C972C:
	#data 0x00000002
	#data 0x00000002
	#data 0x00000000

loc_8c1C9738:
	#data 0x00000100

loc_8c1C973C:
	#data 0x00000100
loc_8c1C9740:
	#data 0x00000002
loc_8c1C9744:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x0000001E
	#data 0x00000000
	#data 0x0000023A
	#data 0x00000003
	#data 0x00000000
	#data 0x00000000
	#data 0x00000003
	#data 0x00000002
	#data 0x00000000
	#data 0x00000002
	#data 0x00000000
	#data 0x00000003
	#data 0x00000003
	#data 0x00000000
	#data 0x00000200
	#data 0x00000200
	#data 0x00000002
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000039
	#data 0x00000000
	#data 0x00000474
	#data 0x00000002
	#data 0x00000000
	#data 0x00000000
	#data 0x00000005
	#data 0x00000002
	#data 0x00000000
	#data 0x00000002
	#data 0x00000000
	#data 0x00000005
	#data 0x00000005
	#data 0x00000000
	#data 0x00000400
	#data 0x00000400
	#data 0x00000002
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x0000007C
	#data 0x00000000
	#data 0x000008F7
	#data 0x00000009
	#data 0x00000000
	#data 0x00000000
	#data 0x00000009
	#data 0x00000002
	#data 0x00000000
	#data 0x00000009
	#data 0x00000000
	#data 0x00000009
	#data 0x00000009
	#data 0x00000000
	#data 0x00000800
	#data 0x00000800
	#data 0x00000009
	#data 0x00000000
	#data 0x00000000

loc_8c1C983C:
	#data 0x00000000

loc_8c1C9840:
	#data loc_8c1C59C4
	#data 0x00000000

loc_8c1C9848:
	#data 0x00000000

loc_8c1C984C:
	#data 0x00000001

loc_8c1C9850:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000014
	#data 0x0000001D
	#data 0x00000000
	#data 0x0000001E
	#data 0x00000013
	#data 0x00000019
	#data 0x00000018
	#data 0x00000017
	#data 0x00000016
	#data 0x00000011
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000012
	#data 0x00000000
	#data 0x00000015
	
loc_8c1C98A8:
	#data 0x00000000
	#data 0x0000001A
	#data 0x0000001C
	#data 0x0000001B

loc_8c1C98B8:
	#data 0x00000000
loc_8c1C98BC:
	#data 0x00000000
loc_8c1C98C0:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C98CC:
	#data bank19.loc_8c195238
loc_8c1C98D0:
	#data bank19.loc_8c19525C
loc_8c1C98D4:
	#data bank19.loc_8c195316

loc_8c1C98D8:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C98E4:
	#data bank19.loc_8c1954E8
loc_8c1C98E8:
	#data bank19.loc_8c1955C8
loc_8c1C98EC:
	#data bank19.loc_8c19566A
loc_8c1C98F0:
	#data bank19.loc_8c19568C
loc_8c1C98F4:
	#data bank19.loc_8c1956BA
loc_8c1C98F8:
	#data bank19.loc_8c1956D4
loc_8c1C98FC:
	#data bank19.loc_8c195704
loc_8c1C9900:
	#data bank19.loc_8c195756
loc_8c1C9904:
	#data bank19.loc_8c19576C
loc_8c1C9908:
	#data bank19.loc_8c19578A
loc_8c1C990C:
	#data bank19.loc_8c1957A0
loc_8c1C9910:
	#data bank19.loc_8c195830
loc_8c1C9914:
	#data bank19.loc_8c1958A4
loc_8c1C9918:
	#data bank19.loc_8c1958F2
loc_8c1C991C:
	#data bank19.loc_8c195B9C
loc_8c1C9920:
	#data bank19.loc_8c195C18
loc_8c1C9924:
	#data bank19.loc_8c195D92
loc_8c1C9928:
	#data bank19.loc_8c195DFC
loc_8c1C992C:
	#data bank19.loc_8c195E42
loc_8c1C9930:
	#data bank19.loc_8c195E54
loc_8c1C9934:
	#data 0xA05F6900
loc_8c1C9938:
	#data 0x00000000
loc_8c1C993C:
	#data 0x00000000
loc_8c1C9940:
	#data loc_8c1C602C
loc_8c1C9944:
	#data 0x00000000

loc_8c1C9948:
	#data 0x00010000
	#data 0x00000002
	#data 0x00000003
	#data 0x00000000

loc_8c1C9958:
	#data 0x00000000
	#data 0x00000000


loc_8c1C9960:
	#data 0x070605FF
	#data 0x0D0C0B08
	#data 0x1716150E
	#data 0x19 0x1D
	#data 0x20

loc_8C1C996F:
	#data 0xFF
	#data 0x2523211E
	#data 0x2E2C2A28
	#data 0x36343230
	#data 0xFF38

loc_8c1C997E:
	#data 0x18FF
	#data 0x1F1E1C1A
	#data 0x27242322
	#data 0x2C2B2928
	#data 0x31302F2D
	#data 0x37353433
	#data 0x0000FF38

loc_8c1C9998:
	#data "Country Fail To Init"
	#data 0x00
	#align4
	#data 0x00000000
	#data 0x00000000


	#data 0x020900B5
	#data 0x00270000
	#data 0x02EE0021
	#data 0x00000384
	#data 0x00140037
	#data 0x00140037
	#data 0x00140037
	#data 0x00140037
	#data 0x006400FA
	#data 0x017C01C2
	#data 0x006400FA
	#data 0x017C01C2
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C99F8:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000050
	#data 0x0000012C
	#data 0x000A302B
	#data 0x000F0043
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x001901F4
	#data 0x0000012C
	#data 0x004B0004
	#data 0x0200188F
	#data 0x00000000

loc_8c1C9A50:
	#data 0xFF040406
	#data 0x3C0A1F07
	#data 0xFF5F5F0B
	#data 0x000000FF
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0xFF

loc_8C1C9A79:
	#data 0x00

loc_8c1C9A7A:
	#data 0x0000

loc_8c1C9A7C:
	#data 0x000005BE
	#data 0x00000C30
	#data 0x00000C44
	#data 0x00000C58
	#data 0x00000C6C
	#data 0x00000C80
	#data 0x00000C94
	#data 0x000013EC
	#data 0x00001400
	#data 0x00001414
	#data 0x00001428
	#data 0x000017D4
	#data 0x00001BBC
	#data 0x00001BD0
	#data 0x00001BE4
	#data 0x00001BF8
	#data 0x00000000

loc_8c1C9AC0:
	#data 0x00000000

loc_8c1C9AC4:
	#data 0x00000000

loc_8c1C9AC8:
	#data 0x00000000

loc_8c1C9ACC:
	#data 0x00

loc_8C1C9ACD:
	#data 0x00

loc_8c1C9ACE:
	#data 0x0000

loc_8c1C9AD0:
	#data 0x00000000

loc_8c1C9AD4:
	#data 0x00000000

loc_8c1C9AD8:
	#data "(c) Rockwell:23-Jul-1998:L8570A:CTL:4729 "
	#data 0x00

loc_8c1C9B02:
	#data 0x4729
	#data 0x0007
	#data 0x0006

loc_8c1C9B08:
	#data 0x00000000
	#data 0x00000000
	#data 0x00

loc_8C1C9B11:
	#data 0x00
	#data 0x0000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C9B20:
	#data 0x00000001
	#data 0x00800000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00400000

loc_8c1C9B38:
	#data 0x00400000
	#data 0x00400000
	#data 0x00000000

loc_8c1C9B44:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C9B54:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C9B64:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8c1C9B78:
	#data 0x86848284
	#data 0x8E848A84
	#data 0x96849284
	#data 0x9E849A84
	#data 0xA684A284
	#data 0xAE84AA84
	#data 0xB684B284
	#data 0xBE84BA84
	#data 0xC384C184
	#data 0xC784C584
	#data 0xCB84C984
	#data 0xCF84CD84
	#data 0xD384D184
	#data 0xD784D584
	#data 0xDB84D984
	#data 0xDF84DD84
	#data 0xE204E104
	#data 0xE404E304
	#data 0xE604E504
	#data 0xE804E704
	#data 0xEA04E904
	#data 0xEC04EB04
	#data 0xEE04ED04
	#data 0xF004EF04
	#data 0xF144F0C4
	#data 0xF244F1C4
	#data 0xF344F2C4
	#data 0xF444F3C4
	#data 0xF544F4C4
	#data 0xF644F5C4
	#data 0xF744F6C4
	#data 0xF844F7C4
	#data 0xF8E4F8A4
	#data 0xF964F924
	#data 0xF9E4F9A4
	#data 0xFA64FA24
	#data 0xFAE4FAA4
	#data 0xFB64FB24
	#data 0xFBE4FBA4
	#data 0xFC64FC24
	#data 0xFCB4FC94
	#data 0xFCF4FCD4
	#data 0xFD34FD14
	#data 0xFD74FD54
	#data 0xFDB4FD94
	#data 0xFDF4FDD4
	#data 0xFE34FE14
	#data 0xFE74FE54
	#data 0xFE9CFE8C
	#data 0xFEBCFEAC
	#data 0xFEDCFECC
	#data 0xFEFCFEEC
	#data 0xFF1CFF0C
	#data 0xFF3CFF2C
	#data 0xFF5CFF4C
	#data 0xFF7CFF6C
	#data 0xFF90FF88
	#data 0xFFA0FF98
	#data 0xFFB0FFA8
	#data 0xFFC0FFB8
	#data 0xFFD0FFC8
	#data 0xFFE0FFD8
	#data 0xFFF0FFE8
	#data 0x0000FFF8
	#data 0x797C7D7C
	#data 0x717C757C
	#data 0x697C6D7C
	#data 0x617C657C
	#data 0x597C5D7C
	#data 0x517C557C
	#data 0x497C4D7C
	#data 0x417C457C
	#data 0x3C7C3E7C
	#data 0x387C3A7C
	#data 0x347C367C
	#data 0x307C327C
	#data 0x2C7C2E7C
	#data 0x287C2A7C
	#data 0x247C267C
	#data 0x207C227C
	#data 0x1DFC1EFC
	#data 0x1BFC1CFC
	#data 0x19FC1AFC
	#data 0x17FC18FC
	#data 0x15FC16FC
	#data 0x13FC14FC
	#data 0x11FC12FC
	#data 0x0FFC10FC
	#data 0x0EBC0F3C
	#data 0x0DBC0E3C
	#data 0x0CBC0D3C
	#data 0x0BBC0C3C
	#data 0x0ABC0B3C
	#data 0x09BC0A3C
	#data 0x093C

loc_8c1C9CF2:
	#data 0x08BC
	#data 0x07BC083C
	#data 0x071C075C
	#data 0x069C06DC
	#data 0x061C065C
	#data 0x059C05DC
	#data 0x051C055C
	#data 0x049C04DC
	#data 0x041C045C
	#data 0x039C03DC
	#data 0x034C036C
	#data 0x030C032C
	#data 0x02CC02EC
	#data 0x028C02AC
	#data 0x024C026C
	#data 0x020C022C
	#data 0x01CC01EC
	#data 0x018C01AC
	#data 0x01640174
	#data 0x01440154
	#data 0x01240134
	#data 0x01040114
	#data 0x00E400F4
	#data 0x00C400D4
	#data 0x00A400B4
	#data 0x00840094
	#data 0x00700078
	#data 0x00600068
	#data 0x00500058
	#data 0x00400048
	#data 0x00300038
	#data 0x00200028
	#data 0x00100018
	#data 0x00000008

loc_8c1C9D78:
	#data loc_8c1C68C4
loc_8c1C9D7C:
	#data loc_8c1C68CC
loc_8c1C9D80:
	#data loc_8c1C68D4
loc_8c1C9D84:
	#data 0x00000000

loc_8c1C9D88:
	#data 0x8C34AFB3
	#data 0x00000000

loc_8c1C9D90:
	#data loc_8c1C8488
	#data 0x00000000

loc_8c1C9D98:
	#data 0x00

EndofFile:
