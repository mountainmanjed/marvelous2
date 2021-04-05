;==============================================
loc_8C0B011C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l r5,@r15
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
	tst r0,r0
	bf loc_8c0b0170
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0B0170:
	mov.w @(0xF6,PC),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bf loc_8c0b01f4
	mov.w @(0x1E,r14),r0
	mov.w @(0xEE,PC),r3
	add r3,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b01f4
	mov.w @(0xE4,PC),r0
	mov r15,r1
	mov.l @r15,r2
	add 0x04,r1
	mov.l @(0xE4,PC),r3
	mov.l @(r0,r2),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0xDC,PC),r0
	mov r15,r5
	fmov @r0,fr3
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mov 0x08,r0
	mov.l @(0xD4,PC),r3
	mov r14,r4
	fadd fr3,fr2
	add 0x04,r5
	fmov fr2,@(r0,r15)
	jsr @r3
	add 0x34,r4
	extu.b r0,r4
	mov 0x22,r0
	mov.b @(r0,r14),r3
	shlr2 r4
	shlr r4
	extu.b r3,r3
	extu.b r4,r2
	cmp/eq r3,r2
	bt loc_8c0b01f4
	mov.b @(r0,r14),r2
	mov 0x10,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r0
	sub r4,r0
	mov 0x1F,r4
	and r0,r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8c0b01e2
	mov 0x22,r0
	mov.b @(r0,r14),r1
	add 0xFE,r1
	mov.b r1,@(r0,r14)

loc_8C0B01E2:
	mov 0x22,r0
	mov.w @(0x88,PC),r5
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	mov.l @(0x94,PC),r1
	and r3,r2
	mov.b r2,@(r0,r14)
	jsr @r1
	mov r14,r4

loc_8C0B01F4:
	mov.l @r15,r5
	bsr loc_8c0b02dc
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B0202:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x74,PC),r3
	mov 0x34,r0
	mov.l r5,@r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0b0258
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0b025e

loc_8C0B0258:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0B025E:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0b02dc
	mov.l @r15+,r14

;##############################################
loc_8c0b026a:
	#data 0x00d0
loc_8c0b026c:
	#data 0x4000
loc_8c0b026e:
	#data 0x020c
loc_8c0b0270:
	#data 0x02bc
	#align4

loc_8C0B0274:
	#data bank12.loc_8c1294C8
loc_8C0B0278:
	#data 0x43092492
loc_8C0B027C:
	#data bank03.loc_8c03362c
loc_8C0B0280:
	#data bank03.loc_8c033674
loc_8C0B0284:
	#data bank03.loc_8c03340c
loc_8C0B0288:
	#data bank03.loc_8c0334A8

;----------------------------------------------
loc_8C0B028C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x80,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b02b4
	mov 0x24,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x03,r5
	mov.l @(0x6C,PC),r3
	mov 0x01,r7
	mov 0x08,r6
	jsr @r3
	mov.l @r15,r4

loc_8C0B02B4:
	mov.w @(0x56,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b02d4
	mov 0x24,r0
	mov 0x0F,r3
	mov 0x03,r5
	mov.b r3,@(r0,r14)
	mov.l @r15,r4
	mov 0x05,r6
	mov 0x01,r7
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B02D4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B02DC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0b028c
	mov r4,r14
	mov.w @(0x28,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bf loc_8c0b02f6
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0B02F6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B02FC:
	mov r4,r3
	mov.l @(loc_8C0B0320,pc),r1 ; r1 set to 0x8C1591F0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b030e:
	#data 0x0141
loc_8c0b0310:
	#data 0x00d8
	#align4

loc_8C0B0314:
	#data bank03.loc_8c034dee
loc_8C0B0318:
	#data bank03.loc_8c03544c
loc_8C0B031C:
	#data bank04.loc_8c045748
loc_8C0B0320:
	#data bank15.loc_8c1591F0

;==============================================
loc_8C0B0324:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x10A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x102,PC),r2
	add 0x01,r0
	mov.l @(0x110,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xFC,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xF8,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(0xDC,PC),r0
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
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xD4,PC),r3
	mov.b @(r0,r13),r2
	mov 0x00,r4
	mov.b r2,@(r0,r14)
	mov.w @(0xB8,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r5
	mov.w @(0xAE,PC),r0
	extu.b r5,r5
	shll2 r5
	shll r5
	add r3,r5
	mov.w @r5+,r6
	exts.w r6,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.w @r5+,r7
	exts.w r7,r2
	mov.l r2,@(r0,r14)
	add 0x60,r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_8c0b03b4
	neg r6,r6

loc_8C0B03B4:
	mov.w @(0x8E,PC),r0
	mov r14,r1
	mov.l @(0x94,PC),r3
	add 0x50,r1
	mov.l @(r0,r14),r4
	mov r4,r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	exts.w r6,r6
	lds r6,fpul
	mov 0x50,r0
	fmov @(r0,r4),fr0
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mova @(0x84,PC),r0
	float fpul,fr3
	exts.w r7,r7
	lds r7,fpul
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x34,r0
	fmac fr0,fr3,fr2
	float fpul,fr3
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r4),fr0
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mova @(0x6C,PC),r0
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @r5+,r3
	tst r3,r3
	bt loc_8c0b040a
	mov.w @(0x44,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C0B040A:
	mov.b @r5,r1
	mov 0x24,r0
	mov.l @(0x50,PC),r3
	mov 0x1B,r5
	mov.b r1,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B0426:
	mov.w @(loc_8C0B0446,pc),r0 ; r0 set to 0xD8
	mov 0x01,r3 ; r3 set to 0x01
	sts.l pr,@-r15
	mov.l @(r0,r4),r6
	mov.b @(0x04,r6),r0
	extu.b r0,r0 ; r0 set to 0xD8
	cmp/gt r3,r0
	bf loc_8C0B0464
	bra loc_8C0B04D0
	lds.l @r15+,pr

;##############################################
loc_8c0b043a:
	#data 0x00dc
loc_8c0b043c:
	#data 0x00c0
loc_8c0b043e:
	#data 0x012c
loc_8c0b0440:
	#data 0x01a3
loc_8c0b0442:
	#data 0x019c
loc_8c0b0444:
	#data 0x00cc
loc_8c0b0446:
	#data 0x00d8
loc_8c0b0448:
	#data 0x0130
	#align4

loc_8C0B044C:
	#data bank12.loc_8c129560
loc_8C0B0450:
	#data bank12.loc_8c1294C8
loc_8C0B0454:
	#data bank15.loc_8c159200
loc_8C0B0458:
	#data 0x3FD55555
loc_8C0B045c:
	#data 0x40092492
loc_8C0B0460:
	#data bank03.loc_8c034C38

;==============================================
loc_8c0b0464:
	mov.w @(loc_8c0b04ea,pc),r0
	mov.b @(r0,r6),r3
	mov.b r3,@(r0,r4) 
	add 0xA0,r0
	mov.l @(r0,r4),r5
	add 0x64,r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8c0b047a
	mov r4,r1
	neg r5,r5

loc_8c0b047a:
	mov.l @(loc_8c0b04f0,pc),r3
	mov r6,r2
	add 0x50,r1
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	exts.w r5,r5
	lds r5,fpul 
	mov 0x50,r0
	fmov.s @(r0,r6),fr0
	mov 0x34,r0
	fmov.s @(r0,r6),fr2
	mova @(loc_8C0B04F4,pc),r0 
	float fpul,fr3
	fmul fr0,fr3
	fmov.s @r0,fr0
	mov 0x34,r0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4) 
	shll2 r0
	mov.l @(r0,r4),r3
	mov 0x54,r0
	fmov.s @(r0,r6),fr0
	mov 0x38,r0
	lds r3,fpul 
	fmov.s @(r0,r6),fr2
	mova @(loc_8C0B04F8,pc),r0 
	float fpul,fr3
	fmul fr0,fr3
	fmov.s @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov.w @(loc_8C0B04EC,pc),r0
	mov.b @(r0,r6),r3
	tst r3,r3
	bf loc_8c0b04ca
	mov.l @(loc_8c0b04fc,pc),r3
	jmp @r3
	lds.l @r15+,pr 

loc_8c0b04ca:
	lds.l @r15+,pr 
	rts 
	nop 

loc_8C0B04D0:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B04EA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0B04DE:
	mov.w @(loc_8C0B04EA,pc),r0 ; r0 set to 0x12c
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C0B0500,pc),r3 ; r3 set to 0x8C0450C0
	mov.b r5,@r4
	jmp @r3
	mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B04EA:
	#data 0x012c
loc_8c0b04ec:
	#data 0x01A0
	#align4

loc_8C0B04F0:
	#data bank12.loc_8c1294C8
loc_8c0b04f4:
	#data 0x3FD55555
loc_8c0b04f8:
	#data 0x40092492
loc_8C0B04FC:
	#data bank03.loc_8c034D8c
loc_8C0B0500:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0b0504:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(0x98,PC),r0
	mov.l r10,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov.w @(0x8C,PC),r4
	tst r3,r3
	bt.s loc_8c0b0522
	mov 0x00,r13
	mov.w @(0x88,PC),r4

loc_8c0b0522:
	exts.w r4,r4
	mov.l @(0x8C,PC),r10
	lds r4,fpul
	mova @(0x8C,PC),r0
	fmov @r0,fr2
	mov 0x02,r12
	mov.w @(0x7C,PC),r11
	float fpul,fr3
	fmov fr3,fr15
	fmul fr2,fr15

loc_8C0B0536:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r10
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b0578
	mov r0,r4
	mov.l @(0x74,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov.w @(0x50,PC),r0
	mov.b @(r0,r14),r3
	mov 0x21,r0
	xor r13,r3
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	fmov fr3,@(r0,r4)
	mov.w @(0x42,PC),r0
	sts fpul,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x3E,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_8C0B0578:
	add 0x01,r13
	extu.b r13,r3
	cmp/ge r12,r3
	bf loc_8c0b0536
	mov r4,r0
	nop 
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B0594:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0B05C0,pc),r1 ; r1 set to 0x8C159228
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;##############################################
loc_8c0b05a8:
	#data 0xff20
loc_8c0b05aa:
	#data 0x0130
loc_8c0b05ac:
	#data 0x00e0
loc_8c0b05ae:
	#data 0x3601
loc_8c0b05b0:
	#data 0x00cc
loc_8c0b05b2:
	#data 0x041c
	#align4

loc_8C0B05B4:
	#data bank04.loc_8c044F12
loc_8C0B05B8:
	#data 0x3FD55555
loc_8C0B05BC:
	#data loc_8c0b0594
loc_8C0B05C0:
	#data bank15.loc_8c159228

;==============================================
loc_8C0B05C4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x10A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x102,PC),r2
	add 0x01,r0
	mov.l @(0x110,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xFC,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xF8,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(0xDC,PC),r0
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
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x00,r4
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x42,r5
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.w @(0xB4,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)
	mov 0x22,r0
	mov.b r4,@(r0,r14)
	mov.w @(0xAC,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0b0648
	mov 0x39,r5
	mov 0x3A,r5

loc_8C0B0648:
	mov.w @(0x9A,PC),r0
	mov.l @(0xA8,PC),r3
	mov.b r5,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.w @(0x84,PC),r4
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x72,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0b0678
	mov 0x34,r0
	mov 0x80,r4

loc_8C0B0678:
	exts.w r4,r4
	mov.l @(0x7C,PC),r1
	lds r4,fpul
	mov 0x16,r5
	fmov @(r0,r14),fr2
	mov 0x00,r6
	mov.l @(0x74,PC),r3
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B069E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	extu.b r0,r4
	tst r4,r4
	bt loc_8c0b06ca
	mov r4,r0
	nop 
	cmp/eq 0x05,r0
	bt loc_8c0b06ca
	mov.w @(0x34,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0b06c2
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0b06ca

loc_8C0B06C2:
	mov 0x05,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)

loc_8C0B06CA:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x30,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b06da:
	#data 0x00dc
loc_8c0b06dc:
	#data 0x00c0
loc_8c0b06de:
	#data 0x012c
loc_8c0b06e0:
	#data 0x01a3
loc_8c0b06e2:
	#data 0x0130
loc_8c0b06e4:
	#data 0x019c
loc_8c0b06e6:
	#data 0x01a1
loc_8c0b06e8:
	#data 0x0080
loc_8c0b06ea:
	#data 0x01d0
	#align4

loc_8C0B06EC:
	#data bank12.loc_8c129560
loc_8C0B06F0:
	#data bank12.loc_8c1294C8
loc_8C0B06F4:
	#data 0x8C2896B0
loc_8C0B06F8:
	#data 0x3FD55555
loc_8C0B06FC:
	#data bank03.loc_8c034e8c
loc_8C0B0700:
	#data bank15.loc_8c159238

;==============================================
loc_8C0B0704:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r4,r14
	and 0x3E,r0
	mov.l @(0xC8,PC),r3
	add 0xE0,r0
	mov.w @(0xB2,PC),r5
	lds r0,fpul
	mova @(0xBC,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	fmov @(r0,r14),fr4
	mov 0x38,r0
	float fpul,fr3
	fmov @(r0,r14),fr5
	fmac fr0,fr3,fr4
	jsr @r3
	mov r14,r4
	mov.l @(0xB0,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b0764
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x14,r0
	mov.w r0,@(0x1C,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr5
	mova @(0xA0,PC),r0
	fmov @r0,fr4
	mov.w @(0x7E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b075a
	mova @(0x98,PC),r0
	fmov @r0,fr5
	mova @(0x98,PC),r0
	fmov @r0,fr4

loc_8C0B075A:
	mov 0x5C,r0
	fmov fr5,@(r0,r14)
	mov 0x68,r0
	bra loc_8c0b0774
	fmov fr4,@(r0,r14)

loc_8C0B0764:
	mov.w @(0x66,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b0774
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x5D,r0
	mov.b r4,@(r0,r14)

loc_8C0B0774:
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0B077E:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0b07c4
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x3C,PC),r0
	mov.w r0,@(0x1E,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0b07a0
	mov 0x3B,r5
	mov 0x3C,r5

loc_8C0B07A0:
	mov.w @(0x2E,PC),r0
	mov.l @(0x54,PC),r3
	mov.b r5,@(r0,r4)
	add 0x0B,r0
	mov 0x00,r5
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C0B07C4:
	mov.l @(0x2C,PC),r3
	jmp @r3
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b07ca:
	#data 0x0100
loc_8c0b07cc:
	#data 0x0130
loc_8c0b07ce:
	#data 0x0141
loc_8c0b07d0:
	#data 0xc000
loc_8c0b07d2:
	#data 0x01a1
	#align4

loc_8C0B07D4:
	#data bank03.loc_8c03319e
loc_8C0B07D8:
	#data 0x3FD55555
loc_8C0B07DC:
	#data bank0e.loc_8c0eA388
loc_8C0B07E0:
	#data bank03.loc_8c034dee
loc_8C0B07E4:
	#data 0xC0F00000
loc_8C0B07E8:
	#data 0xBE555555
loc_8C0B07EC:
	#data 0x40F00000
loc_8C0B07f0:
	#data 0x3E555555
loc_8C0B07F4:
	#data bank04.loc_8c045748
loc_8C0B07f8:
	#data 0x8C2896B0

;==============================================
loc_8C0B07FC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.w @(0x10C,PC),r3
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
	mov.w @(0x1E,r14),r0
	add r3,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b0852
	mov.w @(0xCA,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8C0B0852:
	mov.w @(0xC6,PC),r0
	mov.l @(r0,r14),r3
	mov 0x34,r0
	fmov @(r0,r14),fr4
	lds r3,fpul
	float fpul,fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0b0868
	fneg fr4

loc_8C0B0868:
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bf loc_8c0b0880
	mov.b @(0x5,r14),r0
	mov 0x16,r5
	mov.l @(0xB0,PC),r3
	mov 0x01,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C0B0880:
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0B088A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.w @(0x7E,PC),r3
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
	mov.w @(0x1E,r14),r0
	add r3,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b08e0
	mov.w @(0x3C,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8C0B08E0:
	mov.w @(0x38,PC),r0
	mov.l @(r0,r14),r3
	mov 0x34,r0
	fmov @(r0,r14),fr4
	lds r3,fpul
	float fpul,fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0b08f6
	fneg fr4

loc_8C0B08F6:
	mova @(0x38,PC),r0
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bf loc_8c0b090e
	mov.b @(0x5,r14),r0
	mov 0x16,r5
	mov.l @(0x24,PC),r3
	mov 0x02,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C0B090E:
	lds.l @r15+,pr
	mov.l @(0x18,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b0918:
	#data 0x2000
loc_8c0b091a:
	#data 0x019e
loc_8c0b091c:
	#data 0x00cc
	#align4

loc_8C0B0920:
	#data bank03.loc_8c034dee
loc_8C0B0924:
	#data 0x42A00000
loc_8C0B0928:
	#data bank03.loc_8c034e8c
loc_8C0B092C:
	#data bank04.loc_8c045748
loc_8C0B0930:
	#data 0x42200000

;==============================================
loc_8C0B0934:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.w @(0x9A,PC),r3
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
	mov.w @(0x1E,r14),r0
	add r3,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b098a
	mov.w @(0x58,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8C0B098A:
	mov.w @(0x54,PC),r0
	mov.l @(r0,r14),r3
	mov 0x34,r0
	fmov @(r0,r14),fr4
	lds r3,fpul
	float fpul,fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0b09a0
	fneg fr4

loc_8C0B09A0:
	mova @(0x48,PC),r0
	fmov @r0,fr5
	fcmp/gt fr4,fr5
	bf loc_8c0b09d4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x2E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b09be
	mova @(0x34,PC),r0
	fmov @r0,fr5

loc_8C0B09BE:
	mov.w @(0x20,PC),r0
	mov 0x31,r5
	mov.l @(r0,r14),r3
	mov 0x34,r0
	lds r3,fpul
	mov.l @(0x28,PC),r3
	float fpul,fr3
	fadd fr5,fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C0B09D4:
	lds.l @r15+,pr
	mov.l @(0x20,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b09de:
	#data 0x2000
loc_8c0b09e0:
	#data 0x019e
loc_8c0b09e2:
	#data 0x00cc
loc_8c0b09e4:
	#data 0x0130
	#align4

loc_8C0B09E8:
	#data bank03.loc_8c034dee
loc_8C0B09Ec:
	#data 0x41555555
loc_8C0B09f0:
	#data 0xC1555555
loc_8C0B09F4:
	#data bank04.loc_8c04223a
loc_8C0B09F8:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B09FC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1E,r14),r0
	mov.w @(0xBA,PC),r3
	add r3,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf.s loc_8c0b0a28
	mov 0x00,r11
	mov.w @(0xAE,PC),r0
	mov.b r11,@(r0,r14)

loc_8C0B0A28:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b0aa8
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0b0a4a
	mov.l @(0x9C,PC),r3
	mov 0x23,r5
	jsr @r3
	mov r14,r4

loc_8C0B0A4A:
	mova @(0xA0,PC),r0
	mov.l @(0x98,PC),r9
	fmov @r0,fr14
	mova @(0x9C,PC),r0
	fmov @r0,fr15
	mov r11,r13
	mov.l @(0x8C,PC),r12
	mov 0x08,r10

loc_8C0B0A5A:
	mov.w @r12+,r3
	mov 0x34,r0
	fmov @(r0,r14),fr4
	mov 0x38,r0
	lds r3,fpul
	mov 0x01,r5
	mov.w @r12+,r3
	fmov fr15,fr0
	float fpul,fr3
	lds r3,fpul
	fmov @(r0,r14),fr5
	fmac fr0,fr3,fr4
	fmov fr14,fr0
	float fpul,fr3
	fmac fr0,fr3,fr5
	jsr @r9
	mov r14,r4
	add 0x01,r13
	exts.w r13,r3
	cmp/ge r10,r3
	bf loc_8c0b0a5a
	mov.w @(0x50,PC),r0
	mov 0x3D,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r11,@(r0,r14)
	add 0xF2,r0
	mov.b r11,@(r0,r14)
	add 0x26,r0
	mov.l @(0x5C,PC),r3
	mov.l r11,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C0B0AA8:
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r3
	mov r14,r4
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B0AC0:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B0ADA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0B0ACE:
	mov.l @(loc_8C0B0AFC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b0ad4:
	#data 0x2000
loc_8c0b0ad6:
	#data 0x019e
loc_8c0b0ad8:
	#data 0x01a1
loc_8c0b0ada:
	#data 0x012c
	#align4

loc_8C0B0ADC:
	#data bank03.loc_8c034dee
loc_8C0B0AE0:
	#data bank04.loc_8c042008
loc_8C0B0AE4:
	#data bank15.loc_8c159250
loc_8C0B0AE8:
	#data bank0e.loc_8c0eA388
loc_8C0B0AEc:
	#data 0x40092492
loc_8C0B0Af0:
	#data 0x3FD55555
loc_8C0B0Af4:
	#data 0x8C2896B0
loc_8C0B0AF8:
	#data bank04.loc_8c045748
loc_8C0B0AFC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0B0B00:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0xC8,PC),r3
	mov r4,r13
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b0b3c
	mov r0,r4
	mov.l @(0xBC,PC),r3
	extu.w r14,r2
	shlr8 r2
	mov.l r3,@(0x10,r4)
	mov.w @(0xAC,PC),r3
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	mov 0x22,r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)

loc_8C0B0B3C:
	mov.l @(0x94,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b0b6e
	mov r0,r4
	mov.l @(0x88,PC),r3
	extu.w r14,r2
	shlr8 r2
	mov.l r3,@(0x10,r4)
	mov.w @(0x7A,PC),r3
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	mov 0x22,r0
	mov 0x04,r3
	mov.b r3,@(r0,r4)

loc_8C0B0B6E:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b0b7a:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c0b0bd4,pc),r3
	mov 0x00,r6
	mov.l r4,@(0x04,r15) 
	mov.w r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt/s loc_8c0b0bb6
	mov r0,r4
	mov.l @(loc_8c0b0bd8,pc),r3
	mov.l r3,@(0x10,r4) 
	mov.l @(0x04,r15),r2
	mov.w @(loc_8C0B0BD2,pc),r3
	mov.l r2,@(0x18,r4) 
	mov.l @(0x04,r15),r0
	mov.b @(0x01,r0),r0 
	mov.b r0,@(0x01,r4) 
	mov 0x26,r0
	mov.w r3,@(r0,r4) 
	mov 0x20,r0
	mov.w @r15,r2
	extu.w r2,r2
	shlr8 r2
	mov.b r2,@(r0,r4) 
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4) 

loc_8c0b0bb6:
	add 0x08,r15
	lds.l @r15+,pr 
	rts 
	mov r4,r0

loc_8C0B0BBE:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0B0BDC,pc),r1 ; r1 set to 0x8C159270
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b0bd2:
	#data 0x3602
	#align4

loc_8C0B0BD4:
	#data bank04.loc_8c044F12
loc_8C0B0BD8:
	#data loc_8c0b0BBe
loc_8C0B0BDC:
	#data bank15.loc_8c159270

;==============================================
loc_8C0B0BE0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0B0D30,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0B0D44,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0B0D30,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0B0D32,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0B0D34,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(loc_8C0B0D36,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B0D48,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x42,r4 ; r4 set to 0x42
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0B0D38,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r5),r3 ; r3 ??? bc r5 is ???	
	fmov.s @(r0,r3),fr3
	mov.w @(loc_8C0B0D3A,pc),r0 ; r0 set to 0xCc
	ftrc fr3,fpul
	sts fpul,r2
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C0B0D3C,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C0B0D4C,pc),r0 ; r0 set to 0x8C15928c
	extu.b r3,r3
	shll r3
	mov.b @(r0,r3),r2
	mov.w @(loc_8C0B0D3E,pc),r0 ; r0 set to 0x1A1
	mov.l @(loc_8C0B0D50,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.l @r3,r2
	mov.b @(0x02,r14),r0
	add 0x7C,r2
	mov r14,r4 ; r4 ??? bc r14 is ???	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0B0D54,pc),r0 ; r0 set to 0x8C159280
	extu.b r2,r2
	lds.l @r15+,pr
	shll2 r2
	mov.l @(r0,r2),r1
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8C0B0C96:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r13,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r8,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8C0B0D58,pc),r2 ; r2 set to 0x8C03319e
	mov r5,r13
	jsr @r2
	mov.b r3,@(r0,r14)
	extu.b r0,r0 ; r0 set to 0x24
	mov r0,r3 ; r3 set to 0x24
	shll r0 ; r0 set to 0x48
	add r3,r0 ; r0 set to 0x6c
	mov r0,r4 ; r4 set to 0x6c
	shlr2 r4
	add 0xA0,r4 ; r4 set to 0x0c
	exts.w r4,r4 ; r4 ??	
	lds r4,fpul
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???	
	mova @(loc_8C0B0D5C,pc),r0  ; r0 set to 0x8C0B0D5c
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x34,r0 ; r0 set to 0x34
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0B0D38,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r13),r3 ; r3 ??? bc r13 is ???	
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0B0D60,pc),r0  ; r0 set to 0x8C0B0D60
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fmov.s @(r0,r14),fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov.l @(loc_8C0B0D58,pc),r2 ; r2 set to 0x8C03319e
	fsub fr3,fr2 ; r2 ??? bc r3 is ???	
	fldi0 fr3
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mov 0x18,r0 ; r0 set to 0x18
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r3
	extu.b r3,r3
	add 0x3B,r3
	jsr @r2
	mov r3,r8
	mov.l @(loc_8C0B0D64,pc),r3 ; r3 set to 0x8C034E8c
	mov r8,r6
	and 0x03,r0
	mov 0x16,r5 ; r5 set to 0x16
	add r0,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.w @(loc_8C0B0D40,pc),r5 ; r5 set to 0x200
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r13
	bra loc_8C0B0B7a
	mov.l @r15+,r14

;##############################################
loc_8C0B0D30:
	#data 0x00Dc
loc_8C0B0D32:
	#data 0x00C0
loc_8C0B0D34:
	#data 0x012c
loc_8C0B0D36:
	#data 0x01A3
loc_8C0B0D38:
	#data 0x041c
loc_8C0B0D3A:
	#data 0x00Cc
loc_8C0B0D3C:
	#data 0x019c
loc_8C0B0D3E:
	#data 0x01A1
loc_8C0B0D40:
	#data 0x0200
	#align4

loc_8C0B0D44:
	#data bank12.loc_8c129560
loc_8C0B0D48:
	#data bank12.loc_8c1294C8
loc_8C0B0D4C:
	#data bank15.loc_8c15928c
loc_8C0B0D50:
	#data 0x8C2896B0
loc_8C0B0D54:
	#data bank15.loc_8c159280
loc_8C0B0D58:
	#data bank03.loc_8c03319e
loc_8C0B0D5C:
	#data 0x3FD55555
loc_8C0B0D60:
	#data 0x41C00000
loc_8C0B0D64:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0B0D68:
	mov.w @(loc_8C0B0ECC,pc),r0 ; r0 set to 0x12c
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r8,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r14)
	mov r13,r2 ; r2 ??? bc r13 is ???	
	mov.l @(loc_8C0B0ED0,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0B0ED4,pc),r2 ; r2 set to 0x8C03319e
	jsr @r2
	nop
	extu.b r0,r0 ; r0 set to 0x0c
	mov r0,r3 ; r3 set to 0x0c
	shll r0 ; r0 set to 0x18
	add r3,r0 ; r0 set to 0x24
	mov.l @(0x18,r13),r3 ; r3 ??? bc r13 is ???	
	mov r0,r4 ; r4 set to 0x24
	shlr2 r4
	add 0xA0,r4 ; r4 set to 0xFFFFFFC4
	exts.w r4,r4 ; r4 ??	
	mov 0x34,r0 ; r0 set to 0x34
	lds r4,fpul
	fmov.s @(r0,r13),fr6
	mova @(loc_8C0B0ED8,pc),r0  ; r0 set to 0x8C0B0ED8
	fmov.s @r0,fr0 ; r0 ??	
	float fpul,fr3
	mov.w @(loc_8C0B0ECE,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r3),fr4
	mova @(loc_8C0B0EDC,pc),r0  ; r0 set to 0x8C0B0EDc
	fmov.s @r0,fr5
	mov 0x34,r0 ; r0 set to 0x34
	fmac fr0,fr3,fr6
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	fsub fr3,fr6
	fdiv fr5,fr6
	fmov.s fr6,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr4
	fdiv fr5,fr4
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0B0ED4,pc),r2 ; r2 set to 0x8C03319e
	extu.b r3,r3
	add 0x3B,r3
	jsr @r2
	mov r3,r8
	lds.l @r15+,pr
	mov r8,r6
	and 0x03,r0
	mov.l @(loc_8C0B0EE0,pc),r3 ; r3 set to 0x8C034E8c
	add r0,r6
	mov.l @r15+,r8
	mov 0x16,r5 ; r5 set to 0x16
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0B0E02:
	mov 0x24,r0 ; r0 set to 0x24
	mov r5,r2
	mov 0x07,r3 ; r3 set to 0x07
	mov r4,r1
	sts.l pr,@-r15
	mov.b r3,@(r0,r4)
	add 0x34,r2
	mov.l @(loc_8C0B0ED0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0B0EE0,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x3A,r6 ; r6 set to 0x3a
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C0B0E22:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0B0EE4,pc),r0 ; r0 set to 0x8C159294
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0B0E36:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA8,PC),r3
	mov r4,r14
	mov.l r5,@r15
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
	tst r0,r0
	bf loc_8c0b0e90
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0B0E90:
	mov.l @r15,r3
	mov.b @(0x5,r3),r0
	tst r0,r0
	bf loc_8c0b0ea0
	mov.l @r15,r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c0b0ec0

loc_8C0B0EA0:
	mov 0x20,r0
	fldi0 fr3
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x30,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8C0B0EC0:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x28,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B0ECC:
	#data 0x012c
loc_8C0B0ECE:
	#data 0x041c
	#align4

loc_8C0B0ED0:
	#data bank12.loc_8c1294C8
loc_8C0B0ED4:
	#data bank03.loc_8c03319e
loc_8C0B0ED8:
	#data 0x3FD55555
loc_8C0B0EDC:
	#data 0x41400000
loc_8C0B0EE0:
	#data bank03.loc_8c034e8c
loc_8C0B0EE4:
	#data bank15.loc_8c159294
loc_8C0B0EE8:
	#data bank03.loc_8c034dee
loc_8C0B0EEC:
	#data 0xBF4DB6Db
loc_8C0B0EF0:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B0EF4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0B0FF4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
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
	add 0x6C,r0 ; r0 set to 0xCc
	mov.l @(r0,r14),r3
	lds r3,fpul
	float fpul,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8C0B0F9c
	mov.b @(0x07,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x07,r14)
	add 0xFF,r0 ; r0 set to 0x38
	extu.b r0,r0 ; r0 set to 0x38
	tst r0,r0
	bf loc_8C0B0F96
	mov.w @(loc_8C0B0FF0,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l @(r0,r14),r1
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(loc_8C0B0FF8,pc),r2 ; r2 set to 0x8C03319e
	lds r1,fpul
	float fpul,fr3
	jsr @r2
	fmov.s fr3,@(r0,r14)
	and 0x30,r0
	neg r0,r0 ; r0 ??	
	mov r0,r4
	add 0xF0,r4
	exts.w r4,r4
	mova @(loc_8C0B0FFC,pc),r0  ; r0 set to 0x8C0B0FFc
	lds r4,fpul
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	float fpul,fr3
	mova @(loc_8C0B1000,pc),r0  ; r0 set to 0x8C0B1000
	fmov.s @r0,fr2 ; r2 ??	
	mova @(loc_8C0B1004,pc),r0  ; r0 set to 0x8C0B1004
	fmov.s @r0,fr1
	mov 0x6C,r0 ; r0 set to 0x6c
	fmul fr2,fr3
	fdiv fr1,fr3
	bra loc_8C0B0F9c
	fmov.s fr3,@(r0,r14)

loc_8c0b0f96:
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 

loc_8C0B0F9C:
	mov.w @(loc_8C0B0FF0,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf loc_8C0B0FB6
	lds.l @r15+,pr
	mov.l @(loc_8C0B1008,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0B0FB6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B0FBC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x30,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b0fd4
	mov.l @r15,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)

loc_8C0B0FD4:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;----------------------------------------------
loc_8C0B0FDC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B0FF0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0B0FEA:
	mov.l @(loc_8C0B100C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B0FF0:
	#data 0x012c
	#align4

loc_8C0B0FF4:
	#data bank03.loc_8c034dee
loc_8C0B0FF8:
	#data bank03.loc_8c03319e
loc_8C0B0FFC:
	#data 0x404DB6Db
loc_8C0B1000:
	#data 0x40092492
loc_8C0B1004:
	#data 0x43800000
loc_8C0B1008:
	#data bank04.loc_8c045748
loc_8C0B100C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0b1010:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x178,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b103a
	mov r0,r4
	mov.l @(0x16C,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x14E,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0b103a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0


;----------------------------------------------
loc_8C0B1042:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0B1198,pc),r1 ; r1 set to 0x8C1592A0
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14


;----------------------------------------------
loc_8C0B1056:
	mov.w @(0x124,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x13C,PC),r3
	add 0x01,r0
	mov.w @(0x118,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0x116,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x112,PC),r0
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
	mov.w @(0xF6,PC),r0
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
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x08,r3
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r6
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r6,@(r0,r4)
	mov 0x42,r7
	mov.w @(0xCC,PC),r0
	mov 0x33,r3
	mov.b r7,@(r0,r4)
	add 0x01,r0
	mov.b r7,@(r0,r4)
	add 0x04,r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r6,@(r0,r4)
	add 0xF2,r0
	mov.b r6,@(r0,r4)
	add 0x26,r0
	mov.l @(0xD4,PC),r3
	mov.l r6,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xA2,PC),r0
	mov r0,r2
	mov.w @(r0,r4),r1
	add 0x54,r2
	mov 0x20,r3
	or r2,r1
	mov.w r1,@(r0,r4)
	mov 0x04,r0
	mov.w @(0x94,PC),r1
	add r5,r1
	mov.l r0,@r1
	mov.w @(0x90,PC),r0
	mov.l r6,@(r0,r4)
	add 0x73,r0
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	add 0xF2,r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0b1110
	mov 0xB8,r6
	mov 0x48,r6

loc_8C0B1110:
	exts.w r6,r6
	lds r6,fpul
	mov 0x34,r0
	fmov @(r0,r5),fr2
	mova @(0x8C,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x50,PC),r0
	mov.b @(r0,r4),r3
	mov.l @(0x78,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr4
	mov.w @(0x4E,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c0b1148
	mov 0x5C,r0
	fneg fr4

loc_8C0B1148:
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fldi0 fr3
	mov 0x17,r5
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	mov.l @(0x58,PC),r3
	mov 0x05,r6
	fmov fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr


;==============================================
loc_8C0B1162:
	mov.w @(loc_8C0B118A,pc),r0 ; r0 set to 0x2B8
	mov 0x04,r3 ; r3 set to 0x04
	mov.l r4,@-r15
	mov.l r3,@(r0,r5)
	mov.l @r15,r2
	mov.l @(loc_8C0B11B8,pc),r1 ; r1 set to 0x8C1592Bc
	mov.b @(0x05,r2),r0
	mov r2,r4
	extu.b r0,r0 ; r0 set to 0xB8
	shll2 r0 ; r0 set to 0x2E0
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b117c:
	#data 0x3603
loc_8c0b117e:
	#data 0x00dc
loc_8c0b1180:
	#data 0x00c0
loc_8c0b1182:
	#data 0x012c
loc_8c0b1184:
	#data 0x01a3
loc_8c0b1186:
	#data 0x019c
loc_8c0b1188:
	#data 0x01ac
loc_8c0b118a:
	#data 0x02b8
loc_8c0b118c:
	#data 0x00cc
loc_8c0b118e:
	#data 0x0130
	#align4

loc_8C0B1190:
	#data bank04.loc_8c044F12
loc_8C0B1194:
	#data loc_8c0b1042
loc_8C0B1198:
	#data bank15.loc_8c1592A0
loc_8C0B119C:
	#data bank12.loc_8c129560
loc_8C0B11A0:
	#data bank12.loc_8c1294C8
loc_8C0B11A4:
	#data 0x8C2896B0
loc_8C0B11A8:
	#data 0x3FD55555
loc_8C0B11Ac:
	#data 0x43092492
loc_8C0B11B0:
	#data bank15.loc_8c1592B0
loc_8C0B11B4:
	#data bank03.loc_8c034e8c
loc_8C0B11B8:
	#data bank15.loc_8c1592Bc

;==============================================
loc_8C0B11BC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x05,r13),r0
	tst r0,r0
	bf/s loc_8C0B1272
	mov r4,r14
	mov.w @(loc_8C0B1286,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0B1272
	mov.w @(loc_8C0B1288,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0B1208
	mov.l @(loc_8C0B128C,pc),r3 ; r3 set to 0x8C05264c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0B1272
	mov.b @(0x05,r14),r0
	mov 0x08,r3 ; r3 set to 0x08
	mov r13,r5
	add 0x01,r0 ; r0 set to 0x19f
	mov.b r0,@(0x05,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	bsr loc_8C0B142a
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0B1290,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x04,r6 ; r6 set to 0x04
	mov 0x17,r5 ; r5 set to 0x17
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0b1208:
	mov.l @(loc_8c0b1294,pc),r2
	jsr @r2
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
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
	mov 0x21,r0
	mov.b @(r0,r14),r3
	add 0x40,r3
	mov.b r3,@(r0,r14) 
	extu.b r3,r3
	tst r3,r3
	bf loc_8c0b125c
	mov.l @(loc_8c0b1298,pc),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4

loc_8c0b125c:
	mov.l @(loc_8c0b129c,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c0b127a
	lds.l @r15+,pr 
	mov.l @(loc_8c0b12a0,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B1272:
	mov.l @(loc_8C0B1298,pc),r2 ; r2 set to 0x8C0EABFc
	mov 0x01,r5 ; r5 set to 0x01
	jsr @r2
	mov r14,r4

loc_8C0B127A:
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0B1424
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B1286:
	#data 0x019f
loc_8C0B1288:
	#data 0x019e
	#align4

loc_8C0B128C:
	#data bank05.loc_8c05264c
loc_8C0B1290:
	#data bank03.loc_8c034e8c
loc_8C0B1294:
	#data bank03.loc_8c034dee
loc_8C0B1298:
	#data bank0e.loc_8c0eABFc
loc_8C0B129C:
	#data bank03.loc_8c03340c
loc_8C0B12A0:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B12A4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov.w @(0xA2,PC),r0
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov.l @(r0,r13),r14
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0b134c
	mov.b @(0x5,r13),r0
	mov 0x0E,r5
	mov.l @(0xA4,PC),r3
	mov 0x00,r6
	add 0x01,r0
	mov.b r0,@(0x5,r13)
	jsr @r3
	mov r14,r4
	mov.l @(0x9C,PC),r2
	mov r14,r5
	jsr @r2
	mov r13,r4
	mov.w @(0x7E,PC),r0
	mov.l @(r0,r12),r3
	mov.w @(0x7C,PC),r0
	mov.l r3,@(r0,r13)
	mov.w @(0x7A,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt.s loc_8c0b12ec
	mov 0x5A,r4
	mov 0x3C,r4

loc_8C0B12EC:
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r13)
	mov 0x01,r5
	mov.w @(0x62,PC),r0
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov.l @(r0,r12),r4
	mov.w @(0x60,PC),r0
	mov 0x06,r2
	mov.w @(0x5E,PC),r3
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r12)
	mov 0x01,r2
	mov.b r3,@(r0,r14)
	add 0xF3,r0
	mov.b r2,@(r0,r12)
	mov 0xFF,r3
	mov.w @(0x4E,PC),r0
	mov.b r3,@(r0,r12)
	mov.w @(0x4C,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0b134c
	mova @(0x54,PC),r0
	fmov @r0,fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr2
	fldi0 fr3
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0b1344
	fmov @(r0,r14),fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)

loc_8C0B1344:
	mova @(0x34,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8C0B134C:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b1356:
	#data 0x01b0
loc_8c0b1358:
	#data 0x01a0
loc_8c0b135a:
	#data 0x01c8
loc_8c0b135c:
	#data 0x00d0
loc_8c0b135e:
	#data 0x0411
loc_8c0b1360:
	#data 0x01f6
loc_8c0b1362:
	#data 0x00c2
loc_8c0b1364:
	#data 0x015a
loc_8c0b1366:
	#data 0x01f9
	#align4

loc_8C0B1368:
	#data bank03.loc_8c034dee
loc_8C0B136C:
	#data bank03.loc_8c034e8c
loc_8C0B1370:
	#data bank05.loc_8c05248e
loc_8C0B1374:
	#data bank05.loc_8c050552
loc_8C0B1378:
	#data 0x40800000
loc_8C0B137c:
	#data 0xBF4DB6Db

;==============================================
loc_8C0B1380:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xFA,PC),r0
	mov r4,r13
	mov.l r5,@r15
	mov.l @(r0,r13),r14
	bsr loc_8c0b142a
	mov r13,r4
	mov.w @(0xF0,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b13a4
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c0b13f6

loc_8C0B13A4:
	mov.w @(0xE2,PC),r0
	mov.l @(r0,r14),r3
	cmp/eq r3,r13
	bf loc_8c0b13f6
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0b13bc
	mov.w @(0x1C,r13),r0
	add 0xFD,r0
	mov.w r0,@(0x1C,r13)

loc_8C0B13BC:
	mov.w @(0x1C,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r13)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0b140c
	mov.w @(0xC0,PC),r0
	mov 0x00,r2
	mov 0x08,r3
	mov.b r2,@(r0,r14)
	add 0xF9,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xB6,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bf loc_8c0b13f6
	mov.w @(0xB0,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0b13f0
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c0b13f6
	nop 

loc_8C0B13F0:
	mov.l @(0xAC,PC),r2
	jsr @r2
	mov r14,r4

loc_8C0B13F6:
	mov.l @(0xAC,PC),r3
	mov 0x02,r5
	jsr @r3
	mov r13,r4
	mov.l @r15,r5
	mov r13,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0b1424          ; loc_8c0b121c+0x208
	mov.l @r15+,r14

loc_8C0B140C:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B1416:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B1492,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0B1424:
	mov.l @(loc_8C0B14A8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop


;----------------------------------------------
loc_8c0b142a:
	mov.w @(loc_8C0B1494,pc),r0
	mov.l @(loc_8c0b14ac,pc),r7
	mov.l @(r0,r4),r5
	add 0x80,r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt/s loc_8c0b143c
	mov.w @r7,r6
	neg r6,r6

loc_8c0b143c:
	exts.w r6,r6
	mov.w @(loc_8C0B1496,pc),r3
	lds r6,fpul 
	mov 0x34,r0
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0B14B0,pc),r0 
	fmov.s @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	add r4,r3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov.l @r3,r3
	mov.l @(loc_8c0b14b4,pc),r0
	shll r3
	mov.w @(r0,r3),r2
	mov.w @(0x02,r7),r0 
	add r2,r0
	lds r0,fpul 
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0B14B8,pc),r0 
	fmov.s @r0,fr0
	mov 0x38,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov.w @(loc_8C0B1496,pc),r0
	mov.l @(r0,r4),r3
	add 0x01,r3
	mov.l r3,@(r0,r4) 
	mov.l @(r0,r4),r0
	mov.w @(loc_8C0B1496,pc),r1
	and 0x03,r0 
	add r4,r1
	rts 
	mov.l r0,@r1

;----------------------------------------------
loc_8c0b1486:
	#data 0x00d0
loc_8c0b1488:
	#data 0x019f
loc_8c0b148a:
	#data 0x01cc
loc_8c0b148c:
	#data 0x01f6
loc_8c0b148e:
	#data 0x0420
loc_8c0b1490:
	#data 0x01f9
loc_8c0b1492:
	#data 0x012c
loc_8c0b1494:
	#data 0x01b0
loc_8c0b1496:
	#data 0x00cc
	#align4

loc_8c0b1498:
	#data bank05.loc_8c0505b8
loc_8c0b149c:
	#data bank05.loc_8c051648
loc_8c0b14a0:
	#data bank05.loc_8c0517be
loc_8c0b14a4:
	#data bank0e.loc_8c0eabfc
loc_8c0b14a8:
	#data bank04.loc_8c0450c0
loc_8c0b14ac:
	#data bank15.loc_8c1592c8
loc_8c0b14b0:
	#data 0x3fd55555
loc_8c0b14b4:
	#data bank15.loc_8c1592cc
loc_8c0b14b8:
	#data 0x40092492

;==============================================
;unused
loc_8c0b14bc:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0x54,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b14f0
	mov r0,r4
	mov.l @(0x48,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x34,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x2A,PC),r0
	mov.l r14,@(r0,r4)
	mov.w @(0x28,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(0x26,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)

loc_8c0b14f0:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0B14FA:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0B1520,pc),r1 ; r1 set to 0x8C1592D4
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b150e:
	#data 0x3604
loc_8c0b1510:
	#data 0x00d4
loc_8c0b1512:
	#data 0x0158
loc_8c0b1514:
	#data 0x00cc
	#align4

loc_8C0B1518:
	#data bank04.loc_8c044F12
loc_8C0B151C:
	#data loc_8c0b14Fa
loc_8C0B1520:
	#data bank15.loc_8c1592D4

;==============================================
loc_8C0B1524:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.w @(0x168,PC),r1
	add 0x01,r0
	mov.l @(0x180,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x160,PC),r0
	mov.w @(0x15C,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0x15A,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x13E,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0x140,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0xFF,r3
	mov 0x08,r13
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b r13,@(r0,r14)
	mov 0x21,r0
	mov 0x00,r12
	mov.b r12,@(r0,r14)
	mov 0x46,r3
	mov.w @(0x10A,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r12,@(r0,r14)
	add 0x04,r0
	mov 0x44,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0x10C,PC),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xE0,PC),r0
	mov.w @(r0,r14),r1
	mov r0,r2
	add 0x54,r2
	or r2,r1
	mov.w r1,@(r0,r14)
	mov 0x04,r0
	mov.w @(0xD4,PC),r1
	add r5,r1
	mov.l r0,@r1
	mov.w @(0xD0,PC),r0
	mov.w @(r0,r14),r0
	tst r0,r0
	bt.s loc_8c0b15e4
	mov 0x18,r4
	mov 0xE8,r4

loc_8C0B15E4:
	exts.w r4,r4
	mov.l @(0xD4,PC),r3
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r5),fr2
	mova @(0xD4,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	mov r15,r1
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr2,@(r0,r14)
	mov.w @(0x98,PC),r0
	mov.l @(r0,r5),r4
	mov r4,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x8E,PC),r0
	mov r15,r5
	mov.l @(0xAC,PC),r3
	mov.b @(r0,r4),r2
	mova @(0xA4,PC),r0
	fmov @r0,fr0
	mov 0x04,r0
	extu.b r2,r2
	fmov @(r0,r15),fr1
	shlr r2
	mov r14,r4
	lds r2,fpul
	mov 0x04,r0
	float fpul,fr2
	fmac fr0,fr2,fr1
	fmov fr1,@(r0,r15)
	jsr @r3
	add 0x34,r4
	extu.b r0,r0
	mov.w @(0x6A,PC),r5
	add 0x04,r0
	mov.l @(0x88,PC),r3
	shar r0
	mov 0x22,r1
	shar r0
	shar r0
	add r14,r1
	mov.b r0,@r1
	jsr @r3
	mov r14,r4
	mov.l @(0x7C,PC),r3
	mov 0x14,r0
	mov 0x16,r5
	mov.w r0,@(0x1E,r14)
	mov 0x18,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x40,PC),r0
	mov.w @(0x46,PC),r1
	mov.w r12,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r0
	add r14,r1
	extu.b r0,r0
	add 0x08,r0
	and 0x1F,r0
	shar r0
	mov.b r0,@r1
	bsr loc_8c0b1c78
	mov r14,r4
	mov 0x02,r12

loc_8C0B1684:
	exts.w r12,r5
	bsr loc_8c0b1ab8
	mov r14,r4
	add 0x01,r12
	exts.w r12,r3
	cmp/ge r13,r3
	bf loc_8c0b1684
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b169e:
	#data 0x00dc
loc_8c0b16a0:
	#data 0x00c0
loc_8c0b16a2:
	#data 0x012c
loc_8c0b16a4:
	#data 0x01a3
loc_8c0b16a6:
	#data 0x019c
loc_8c0b16a8:
	#data 0x01ac
loc_8c0b16aa:
	#data 0x02b8
loc_8c0b16ac:
	#data 0x0130
loc_8c0b16ae:
	#data 0x020c
loc_8c0b16b0:
	#data 0x013c
loc_8c0b16b2:
	#data 0x07d0
loc_8c0b16b4:
	#data 0x014d
	#align4

loc_8C0B16B8:
	#data bank12.loc_8c129560
loc_8C0B16BC:
	#data bank12.loc_8c1294C8
loc_8C0B16c0:
	#data 0x8C2896B0
loc_8C0B16c4:
	#data 0x3FD55555
loc_8C0B16c8:
	#data 0x43AB6DB6
loc_8C0B16cc:
	#data 0x40092492
loc_8C0B16D0:
	#data bank03.loc_8c03362c
loc_8C0B16D4:
	#data bank03.loc_8c033674
loc_8C0B16D8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0B16DC:
	mov.w @(loc_8C0B17D6,pc),r0 ; r0 set to 0x2B8
	mov 0x04,r3 ; r3 set to 0x04
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C0B17D8,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r14),r2
	mov.w @(loc_8C0B17DA,pc),r0 ; r0 set to 0xCc
	extu.w r2,r2
	mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	cmp/eq r2,r3
	bf loc_8C0B173a
	mov.w @(loc_8C0B17DC,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0B173a
	mov.w @(loc_8C0B17DE,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8C0B173a
	mov.l @(loc_8C0B17E4,pc),r3 ; r3 set to 0x8C26823c
	mov 0x01,r7 ; r7 set to 0x01
	mov.l @(loc_8C0B17E8,pc),r1 ; r1 set to 0x8C03544c
	mov r7,r5 ; r5 set to 0x01
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	and 0x02,r0
	shar r0
	mov r0,r6
	add 0x0B,r6
	jsr @r1
	mov r14,r4
	mov.b @(0x05,r13),r0
	mov r13,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0B17EC,pc),r1 ; r1 set to 0x8C1592E4
	extu.b r0,r0
	shll2 r0
	mov r14,r5 ; r5 ??? bc r14 is ???	
	mov.l @r15+,r13
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	mov.l @r15+,r14

loc_8C0B173A:
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8C0B1A74
	mov.l @r15+,r14

loc_8C0B1746:
	mov.w @(loc_8C0B17E0,pc),r0 ; r0 set to 0x19e
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0B1778
	mov.l @(loc_8C0B17F0,pc),r3 ; r3 set to 0x8C05264c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0B1784
	mov.b @(0x05,r14),r0
	mov 0x08,r3 ; r3 set to 0x08
	mov r14,r4
	mov 0x15,r6 ; r6 set to 0x15
	add 0x01,r0 ; r0 set to 0x19f
	mov.b r0,@(0x05,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	mov.l @(loc_8C0B17F4,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8C0B1778:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0B178e

loc_8C0B1784:
	mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03
	mov.b r0,@(0x05,r14)
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	bra loc_8C0B17D0
	mov.w r0,@(0x1E,r14)

loc_8C0B178E:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0B17F8,pc),r3 ; r3 set to 0x8C045748
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov r14,r4
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
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0B17D0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B17D6:
	#data 0x02B8
loc_8C0B17D8:
	#data 0x0158
loc_8C0B17DA:
	#data 0x00Cc
loc_8C0B17DC:
	#data 0x0411
loc_8C0B17DE:
	#data 0x01D0
loc_8C0B17E0:
	#data 0x019e
	#align4

loc_8C0B17E4:
	#data 0x8C26823c
loc_8C0B17E8:
	#data bank03.loc_8c03544c
loc_8C0B17EC:
	#data bank15.loc_8c1592E4
loc_8C0B17F0:
	#data bank05.loc_8c05264c
loc_8C0B17F4:
	#data bank03.loc_8c034e8c
loc_8C0B17F8:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B17FC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x15A,PC),r0
	mov 0x00,r2
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(r0,r14),r5
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x144,PC),r0
	mov.w @(0x144,PC),r3
	mov.b r2,@(r0,r13)
	add 0x5A,r0
	mov.b r3,@(r0,r13)
	mov.l @(0x14C,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x138,PC),r0
	mov r13,r5
	mov r14,r4
	mov.l @(r0,r13),r2
	mov.w @(0x132,PC),r0
	mov.l r2,@(r0,r14)
	mov 0x78,r0
	mov.w r0,@(0x1C,r14)
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B1842:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x114,PC),r0
	mov r4,r14
	mov 0x01,r3
	mov r5,r13
	mov.l @(r0,r14),r12
	mov 0x02,r2
	mov.w @(0x10A,PC),r0
	mov.b r3,@(r0,r13)
	add 0x03,r0
	mov.b r2,@(r0,r13)
	mov 0x24,r0
	mov.b @(r0,r12),r3
	mov.b r3,@(r0,r14)
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mov.w @(0xFA,PC),r0
	fmov fr3,@r15
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c0b187c
	fmov @r15,fr3
	fneg fr3
	fmov fr3,@r15

loc_8C0B187C:
	mov 0x34,r0
	fmov @r15,fr2
	fmov @(r0,r13),fr3
	mova @(0xF4,PC),r0
	mov r13,r2
	mov r15,r1
	fadd fr3,fr2
	fmov fr2,@r15
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mova @(0xE0,PC),r0
	fmov @r0,fr5
	mova @(0xE0,PC),r0
	fmov @r0,fr4
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fmov @r15,fr2
	fmov fr5,fr0
	fmac fr0,fr1,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fmac fr0,fr1,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov.l @(0xC4,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0xC0,PC),r0
	fmov @r0,fr2
	mov.w @(0x9E,PC),r0
	fmov fr2,@r15
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c0b18d8
	fmov @r15,fr2
	fneg fr2
	fmov fr2,@r15

loc_8C0B18D8:
	mov 0x34,r0
	fmov @r15,fr2
	fmov @(r0,r13),fr3
	mova @(0xAC,PC),r0
	mov.l @(0xAC,PC),r3
	mov r14,r4
	fadd fr3,fr2
	mov r15,r5
	fmov fr2,@r15
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	add 0x34,r4
	extu.b r0,r0
	add 0x04,r0
	shar r0
	mov 0x22,r1
	shar r0
	add r14,r1
	shar r0
	mov.b r0,@r1
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.w @(0x58,PC),r0
	extu.b r3,r3
	shlr2 r3
	shlr2 r3
	mov.w r3,@(r0,r14)
	mov.l @(0x78,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x78,PC),r2
	mov r12,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x40,PC),r0
	mov 0x00,r11
	mov.w @(0x3E,PC),r1
	mov.w r11,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r0
	add r14,r1
	mov.w @(0x36,PC),r3
	extu.b r0,r0
	add 0xF8,r0
	and 0x1F,r0
	shar r0
	mov.b r0,@r1
	mov.w @(0x1E,r14),r0
	add r3,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b19b4
	bsr loc_8c0b1dcc            ; loc_8c0b1db6+0x16
	mov r14,r4
	mov.l @(0x48,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r13,r4
	mov 0xFE,r5
	bra loc_8c0b19a0
	mov r12,r4

;==============================================
loc_8c0b195e:
	#data 0x01b0
loc_8c0b1960:
	#data 0x019d
loc_8c0b1962:
	#data 0x00c3
loc_8c0b1964:
	#data 0x01c8
loc_8c0b1966:
	#data 0x00d0
loc_8c0b1968:
	#data 0x01ea
loc_8c0b196a:
	#data 0x0130
loc_8c0b196c:
	#data 0x014d
loc_8c0b196e:
	#data 0x1000
	#align4

loc_8C0B1970:
	#data bank05.loc_8c05248e
loc_8C0B1974:
	#data 0xC3A00000
loc_8C0B1978:
	#data 0x43B40000
loc_8C0B197c:
	#data 0x40E00000
loc_8C0B1980:
	#data 0x41000000
loc_8C0B1984:
	#data bank12.loc_8c1294C8
loc_8C0B1988:
	#data 0x42200000
loc_8C0B198c:
	#data 0x43AB6DB6
loc_8C0B1990:
	#data bank03.loc_8c03362c
loc_8C0B1994:
	#data bank03.loc_8c034dee
loc_8C0B1998:
	#data bank04.loc_8c04CC1c
loc_8C0B199C:
	#data bank05.loc_8c0590F4

;==============================================
loc_8C0B19A0:
	mov.l @(0xF4,PC),r2
	jsr @r2
	nop 
	mov.w @(0xDE,PC),r0
	mov.w @(r0,r12),r3
	tst r3,r3
	bf loc_8c0b19b4
	mov r11,r0
	nop 
	mov.w r0,@(0x1C,r14)

loc_8C0B19B4:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0b1a12
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r11,r0
	nop 
	mov.w r0,@(0x1E,r14)
	mov 0x22,r3
	mov.w @(0xB8,PC),r0
	mov 0x02,r2
	mov.w @(0xB6,PC),r1
	mov 0x16,r5
	mov.b r11,@(r0,r13)
	add 0xCA,r0
	mov.l r13,@(r0,r12)
	add 0xED,r0
	mov.b r3,@(r0,r12)
	add 0x58,r0
	mov.b r2,@(r0,r12)
	add 0xD9,r0
	mov.b @(r0,r13),r0
	add r12,r1
	mov 0x01,r3
	xor 0x01,r0
	mov.b r0,@r1
	mov 0x18,r6
	mov.w @(0x98,PC),r0
	mov.b r3,@(r0,r12)
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x90,PC),r0
	mov.w @(0x90,PC),r1
	mov.w r11,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r0
	add r14,r1
	extu.b r0,r0
	add 0x08,r0
	and 0x1F,r0
	shar r0
	mov.b r0,@r1

loc_8C0B1A12:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B1A20:
	mova @(0x7C,PC),r0
	fmov @r0,fr4
	mov.w @(0x68,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0b1a30
	mova @(0x74,PC),r0
	fmov @r0,fr4

loc_8C0B1A30:
	mov 0x34,r0
	mov.w @(0x5E,PC),r3
	fmov @(r0,r5),fr3
	mova @(0x70,PC),r0
	fadd fr3,fr4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr5
	mova @(0x68,PC),r0
	fmov @r0,fr7
	mova @(0x68,PC),r0
	fmov @r0,fr6
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr5
	fmov fr7,fr0
	fmac fr0,fr2,fr4
	fmov fr4,fr2
	fdiv fr6,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fmac fr0,fr2,fr5
	fmov fr5,fr2
	fdiv fr6,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add r3,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0b1a74
	rts 
	nop 

;----------------------------------------------
loc_8C0B1A74:
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0B1A96,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0B1A80:
mov.l @(loc_8C0B1AB4,pc),r3 ; r3 set to 0x8C0450C0
mov 0x32,r0 ; r0 set to 0x32
jmp @r3
mov.w r0,@(0x1C,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b1a88:
	#data 0x0420
loc_8c0b1a8a:
	#data 0x01ea
loc_8c0b1a8c:
	#data 0x01d2
loc_8c0b1a8e:
	#data 0x01f6
loc_8c0b1a90:
	#data 0x0130
loc_8c0b1a92:
	#data 0x014d
loc_8c0b1a94:
	#data 0x0800
loc_8c0b1a96:
	#data 0x012c
	#align4
loc_8C0B1A98:
	#data bank05.loc_8c05929c
loc_8C0B1A9C:
	#data bank03.loc_8c034e8c
loc_8c0b1aa0:
	#data 0x42200000
loc_8c0b1aa4:
	#data 0xC2200000
loc_8c0b1aa8:
	#data 0x43AB6DB6
loc_8c0b1aac:
	#data 0x40400000
loc_8c0b1ab0:
	#data 0x40800000
loc_8C0B1AB4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0B1AB8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5
	mov.l @(0xD0,PC),r3
	mov r4,r14
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0b1b7e
	mov r0,r4
	mov.l @(0xC4,PC),r3
	mov.w @(0xAE,PC),r2
	mov.l r3,@(0x10,r4)
	mov.w @(0xAE,PC),r1
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	add r4,r1
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov.w @(0x98,PC),r0
	mov.l @(r0,r14),r3
	mov.l r3,@(r0,r4)
	mov.w @(0x94,PC),r3
	mov.l @(r0,r14),r2
	add r3,r2
	mov.l @(0xA0,PC),r3
	jsr @r3
	add 0xEC,r0
	mov.w @(0x8A,PC),r0
	mov 0x01,r5
	mov.b r5,@(r0,r4)
	add 0xA8,r0
	mov.l @(r0,r14),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r4)
	mov.w @(0x78,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.w @(0x70,PC),r0
	mov.l @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x66,PC),r0
	mov.l @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x5C,PC),r0
	mov.l @(r0,r14),r3
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.w @(0x52,PC),r0
	mov.l @(r0,r14),r3
	mov.w @(0x56,PC),r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.w @(0x48,PC),r0
	mov.l @(r0,r14),r3
	mov 0x30,r0
	mov r4,r1
	add 0x50,r1
	mov.b @(r0,r3),r2
	mov.l @(0x54,PC),r3
	mov.b r2,@(r0,r4)
	mov.w @(0x38,PC),r0
	mov.l @(r0,r14),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x2E,PC),r0
	mov 0x08,r2
	mov 0x0F,r6
	mov.l @(r0,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0x00,r3
	mov.w @(0x22,PC),r0
	mov.b r5,@(r0,r4)
	add 0x04,r0
	mov.w r3,@(r0,r4)
	mov 0x24,r0
	mov 0x1B,r5
	mov.b r2,@(r0,r4)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x28,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B1B7E:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b1b86:
	#data 0x3604
loc_8c0b1b88:
	#data 0x00d4
loc_8c0b1b8a:
	#data 0x00dc
loc_8c0b1b8c:
	#data 0x012c
loc_8c0b1b8e:
	#data 0x01a3
loc_8c0b1b90:
	#data 0x01a4
	#align4

loc_8C0B1B94:
	#data bank04.loc_8c044F12
loc_8C0B1B98:
	#data loc_8c0b1BA8
loc_8C0B1B9C:
	#data bank12.loc_8c129560
loc_8C0B1BA0:
	#data bank12.loc_8c1294C8
loc_8C0B1BA4:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0B1BA8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov r14,r1
	mov.w @(0x98,PC),r0
	add 0x34,r1
	mov r4,r2
	mov.l @(0xA0,PC),r3
	mov.l @(r0,r14),r5
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0x9C,PC),r0
	fmov @r0,fr4
	mov.w @(0x86,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0b1bd6
	mova @(0x94,PC),r0
	fmov @r0,fr4

loc_8C0B1BD6:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	mova @(0x90,PC),r0
	mov 0x20,r3
	fadd fr3,fr4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr5
	mova @(0x88,PC),r0
	fmov @r0,fr6
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr5
	mov 0x38,r0
	fsub fr2,fr4
	fmov @(r0,r14),fr2
	add r14,r3
	fsub fr2,fr5
	mov.b @r3,r3
	mov 0x34,r0
	fdiv fr6,fr4
	extu.b r3,r3
	lds r3,fpul
	mov 0x20,r3
	fdiv fr6,fr5
	fmov @(r0,r14),fr2
	add r14,r3
	float fpul,fr0
	fmac fr0,fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov.b @r3,r3
	extu.b r3,r3
	fmov @(r0,r14),fr2
	lds r3,fpul
	mov 0x01,r3
	mov.w @(0x34,PC),r1
	float fpul,fr0
	add r14,r1
	fmac fr0,fr5,fr2
	fmov fr2,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	and 0x1F,r0
	shar r0
	mov.b r0,@r1
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c0b1c4c
	mov.w @(0x18,PC),r0
	mov 0x00,r1
	mov.l @(0x30,PC),r2
	mov r14,r4
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_8C0B1C4C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b1c52:
	#data 0x00d4
loc_8c0b1c54:
	#data 0x0130
loc_8c0b1c56:
	#data 0x014d
loc_8c0b1c58:
	#data 0x012c
	#align4
loc_8C0B1C5C:
	#data bank03.loc_8c034D8c
loc_8C0B1C60:
	#data bank12.loc_8c1294C8
loc_8C0B1C64:
	#data 0x42200000
loc_8C0B1C68:
	#data 0xC2200000
loc_8C0B1C6c:
	#data 0x43AB6DB6
loc_8C0B1C70:
	#data 0x41000000
loc_8C0B1C74:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0B1C78:
	mov.l r14,@-r15
	mov 0x02,r6
	sts.l pr,@-r15
	mov.l @(0x128,PC),r3
	mov r4,r14
	jsr @r3
	mov 0x01,r5
	tst r0,r0
	bt.s loc_8c0b1d3a
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov.w @(0x10A,PC),r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x102,PC),r3
	add r4,r1
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xF6,PC),r0
	mov.w @(0xF6,PC),r3
	mov.l @(r0,r14),r2
	mov.l r2,@(r0,r4)
	mov.l @(r0,r14),r2
	add r3,r2
	mov.l @(0x100,PC),r3
	jsr @r3
	add 0xEC,r0
	mov.w @(0xE8,PC),r0
	mov 0x01,r5
	mov.b r5,@(r0,r4)
	add 0xA8,r0
	mov.l @(r0,r14),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r4)
	mov.w @(0xD6,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.w @(0xCE,PC),r0
	mov.l @(r0,r14),r3
	mov 0x50,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xC4,PC),r0
	mov.l @(r0,r14),r3
	mov 0x54,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xBA,PC),r0
	mov.l @(r0,r14),r3
	mov.w @(0xBC,PC),r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.w @(0xB0,PC),r0
	mov.l @(r0,r14),r3
	mov.w @(0xB4,PC),r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.w @(0xA6,PC),r0
	mov.l @(r0,r14),r3
	mov 0x30,r0
	mov r4,r1
	add 0x50,r1
	mov.b @(r0,r3),r2
	mov.l @(0xB4,PC),r3
	mov.b r2,@(r0,r4)
	mov.w @(0x96,PC),r0
	mov.l @(r0,r14),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x8C,PC),r0
	mov 0x14,r6
	mov.l @(r0,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0xFF,r3
	mov.w @(0x82,PC),r0
	mov.b r5,@(r0,r4)
	mov 0x31,r0
	mov.b r3,@(r0,r4)
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	mov.l @(0x98,PC),r3
	mov 0x16,r5
	fmov fr3,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0B1D3A:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B1D40:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x4C,PC),r0
	mov.l @(r0,r14),r4
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr4
	mov.w @(0x48,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0b1d64
	mov 0x34,r0
	fneg fr4

loc_8C0B1D64:
	fmov @(r0,r4),fr3
	mov 0x01,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.l @(0x18,r14),r4
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c0b1d92
	mov.w @(0x18,PC),r0
	mov 0x00,r1
	mov.l @(0x40,PC),r2
	mov r14,r4
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_8C0B1D92:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b1d98:
	#data 0x3604
loc_8c0b1d9a:
	#data 0x00d4
loc_8c0b1d9c:
	#data 0x00dc
loc_8c0b1d9e:
	#data 0x012c
loc_8c0b1da0:
	#data 0x01a3
loc_8c0b1da2:
	#data 0x01a4
loc_8c0b1da4:
	#data 0x0130
	#align4

loc_8C0B1DA8:
	#data bank04.loc_8c044F12
loc_8C0B1DAC:
	#data loc_8c0b1D40
loc_8C0B1DB0:
	#data bank12.loc_8c129560
loc_8C0B1DB4:
	#data bank12.loc_8c1294C8
loc_8C0B1DB8:
	#data 0x42200000
loc_8C0B1DBc:
	#data 0x43AB6DB6
loc_8C0B1DC0:
	#data bank03.loc_8c034e8c
loc_8C0B1DC4:
	#data bank03.loc_8c034dee
loc_8C0B1DC8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0B1DCC:
	mov.l r14,@-r15
	mov 0x01,r5
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0x14C,PC),r3
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b1ea0
	mov r0,r14
	mov.l @(0x140,PC),r3
	mov.w @(0x130,PC),r1
	mov.l r3,@(0x10,r14)
	mov.w @(0x128,PC),r3
	add r14,r1
	mov.l r13,@(0x18,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0x11C,PC),r0
	mov.w @(0x11C,PC),r3
	mov.l @(r0,r13),r2
	mov.l r2,@(r0,r14)
	mov.l @(r0,r13),r2
	add r3,r2
	mov.l @(0x124,PC),r3
	jsr @r3
	add 0xEC,r0
	mov.w @(0x10E,PC),r0
	mov 0x01,r4
	mov.b r4,@(r0,r14)
	add 0xA8,r0
	mov.l @(r0,r13),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.w @(0xFC,PC),r0
	mov.l @(r0,r13),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov.w @(0xF4,PC),r0
	mov.l @(r0,r13),r3
	mov 0x50,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xEA,PC),r0
	mov.l @(r0,r13),r3
	mov 0x54,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xE0,PC),r0
	mov.l @(r0,r13),r3
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.w @(0xD6,PC),r0
	mov.l @(r0,r13),r3
	mov.w @(0xDA,PC),r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.w @(0xCC,PC),r0
	mov.l @(r0,r13),r3
	mov 0x30,r0
	mov r14,r1
	add 0x50,r1
	mov.b @(r0,r3),r2
	mov.l @(0xD8,PC),r3
	mov.b r2,@(r0,r14)
	mov.w @(0xBC,PC),r0
	mov.l @(r0,r13),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xB2,PC),r0
	mov r13,r2
	add 0x34,r2
	mov.l @(r0,r13),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov r14,r1
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov 0x08,r3
	mov.w @(0xA2,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.w r0,@(0x1E,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xA8,PC),r2
	mov 0x16,r6
	mov r6,r5
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r3
	mov r14,r4
	mov 0x09,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B1EA0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B1EA8:
	mov.w @(0x6C,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r4
	mova @(0x88,PC),r0
	fmov @r0,fr4
	mov.w @(0x68,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0b1ec2
	mova @(0x80,PC),r0
	fmov @r0,fr4

loc_8C0B1EC2:
	mov 0x34,r0
	mov.l @(0x88,PC),r3
	fmov @(r0,r4),fr3
	mova @(0x78,PC),r0
	fadd fr3,fr4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr5
	mova @(0x74,PC),r0
	fmov @r0,fr7
	mova @(0x74,PC),r0
	fmov @r0,fr6
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr5
	fmov fr7,fr0
	fmac fr0,fr2,fr4
	fmov fr4,fr2
	fdiv fr6,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmac fr0,fr2,fr5
	fmov fr5,fr2
	fdiv fr6,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b1f10
	mov.w @(0x18,PC),r0
	mov 0x00,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B1F10:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b1f16:
	#data 0x3604
loc_8c0b1f18:
	#data 0x00d4
loc_8c0b1f1a:
	#data 0x00dc
loc_8c0b1f1c:
	#data 0x012c
loc_8c0b1f1e:
	#data 0x01a3
loc_8c0b1f20:
	#data 0x01a4
loc_8c0b1f22:
	#data 0x0130
	#align4

loc_8C0B1F24:
	#data bank04.loc_8c044F12
loc_8C0B1F28:
	#data loc_8c0b1EA8
loc_8C0B1F2C:
	#data bank12.loc_8c129560
loc_8C0B1F30:
	#data bank12.loc_8c1294C8
loc_8C0B1F34:
	#data bank03.loc_8c034e8c
loc_8C0B1F38:
	#data bank04.loc_8c04223a
loc_8C0B1F3c:
	#data 0x42200000
loc_8C0B1F40:
	#data 0xC2200000
loc_8C0B1F44:
	#data 0x43AB6DB6
loc_8C0B1F48:
	#data 0x40400000
loc_8C0B1F4c:
	#data 0x40800000
loc_8C0B1F50:
	#data bank03.loc_8c034dee
loc_8C0B1F54:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0b1f58:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0x78,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b1f9e
	mov r0,r4
	mov.w @(0x62,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x64,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov 0x21,r2
	mov.l @r15,r3
	add r4,r2
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2

loc_8c0b1f9e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0B1FA6:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0B1FE2,pc),r0 ; r0 set to 0x159
	mov.l @(0x18,r14),r5
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8C0B1FBc
	mov r14,r4
	bra loc_8C0B22Ee
	mov.l @r15+,r14

loc_8C0B1FBC:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0B1FEC,pc),r0 ; r0 set to 0x8C159370
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0B1FCE:
	mov r4,r3
	mov.l @(loc_8C0B1FF0,pc),r1 ; r1 set to 0x8C159374
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b1fe0:
	#data 0x3700
loc_8C0B1FE2:
	#data 0x0159
	#align4

loc_8C0B1FE4:
	#data bank04.loc_8c044F12
loc_8C0B1FE8:
	#data loc_8c0b1FA6
loc_8C0B1FEC:
	#data bank15.loc_8c159370
loc_8C0B1FF0:
	#data bank15.loc_8c159374

;==============================================
loc_8C0B1FF4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(loc_8C0B20DA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0B20D8,pc),r12 ; r12 set to 0xCc
	add 0x01,r0
	mov.w @(loc_8C0B20DA,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	add r14,r12 ; r12 ??? bc r14 is ???	
	mov.l @(loc_8C0B20E8,pc),r3 ; r3 set to 0x8C129560
	mov.w @(loc_8C0B20DC,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B20DE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
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
	mov.w @(loc_8C0B20E0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B20EC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0B20DE,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0B20E2,pc),r0 ; r0 set to 0x1A1
	add 0x3C,r2
	mov.l @(loc_8C0B20F0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov 0x42,r4 ; r4 set to 0x42
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C0B20E4,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.l @(loc_8C0B20F8,pc),r11 ; r11 set to 0x8C1592F4
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0B20F4,pc),r0  ; r0 set to 0x8C0B20F4
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C0B20E6,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0B20Fc
	mov r11,r4 ; r4 set to 0x8C1592F4
	mov 0x21,r2 ; r2 set to 0x21
	fmov fr4,fr0 ; r0 ??	
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.b @r2,r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r4 ; r4 ??? bc r2 is ???	
	mov.w @r4,r2
	lds r2,fpul
	float fpul,fr3
	bra loc_8C0B2118
	fmac fr0,fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B20D8:
	#data 0x00Cc
loc_8C0B20DA:
	#data 0x00Dc
loc_8C0B20DC:
	#data 0x00C0
loc_8C0B20DE:
	#data 0x012c
loc_8C0B20E0:
	#data 0x01A3
loc_8C0B20E2:
	#data 0x01A1
loc_8C0B20E4:
	#data 0x019c
loc_8C0B20E6:
	#data 0x0130
	#align4

loc_8C0B20E8:
	#data bank12.loc_8c129560
loc_8C0B20EC:
	#data bank12.loc_8c1294C8
loc_8C0B20F0:
	#data 0x8C2896B0
loc_8C0B20F4:
	#data 0x3FD55555
loc_8C0B20F8:
	#data bank15.loc_8c1592F4

;==============================================
loc_8c0b20fc:
	mov 0x21,r1
	add r14,r1
	mov.b @r1,r1
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	extu.b r1,r1
	shll2 r1
	shll r1
	add r1,r4
	mov.w @r4,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c0b2118:
	mov 0x21,r3
	fmov.s fr2,@(r0,r14) 
	add r14,r3
	mov r14,r2
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r11,r3
	mov.w @(0x02,r3),r0 
	mov r0,r3
	lds r3,fpul 
	mova @(loc_8C0B2244,pc),r0 
	mov.l @r15+,r3
	fmov.s @r0,fr0
	mov 0x21,r0
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r11,r2
	mov.w @(0x04,r2),r0 
	mov r0,r3
	mov 0x22,r0
	mov.b r3,@(r0,r14) 
	mov.w @(loc_8C0B223E,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b2172
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	neg r2,r2
	add 0x20,r2
	mov.b r2,@(r0,r14) 
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14) 

loc_8c0b2172:
	mov 0x21,r0
	mov.l @(loc_8c0b2248,pc),r4
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	mov.b @(r0,r4),r3
	mov 0x21,r0
	mov.b r3,@r12
	mov.b @(r0,r14),r0
	mov.l @(loc_8c0b2250,pc),r3
	extu.b r0,r0
	shll r0
	add r4,r0
	mov.b @(0x01,r0),r0 
	mov.b r0,@(0x01,r12) 
	mov.b @(0x01,r12),r0 
	mov r0,r5
	mov.l @(loc_8c0b224c,pc),r0
	shll r5
	mov.w @(r0,r5),r5
	jsr @r3
	mov r14,r4
	mov 0x21,r0
	mov.l @(loc_8c0b2254,pc),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	extu.b r6,r6
	shll2 r6
	shll r6
	add r11,r6
	mov.w @(0x06,r6),r0 
	mov r0,r6
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov 0x14,r0
	mov.w r0,@(0x1C,r14) 
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B21C8:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0B2258,pc),r1 ; r1 set to 0x8C159384
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B21E2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0B225C,pc),r3 ; r3 set to 0x8C034DEe
	mov.w @(loc_8C0B2240,pc),r13 ; r13 set to 0xCc
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???	
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??	
	tst r0,r0
	bf loc_8C0B2260
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C0B22Ac
	mov.b r0,@(0x04,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b223e:
	#data 0x0130
loc_8C0B2240:
	#data 0x00Cc
	#align4

loc_8c0b2244:
	#data 0x40092492
loc_8C0B2248:
	#data bank15.loc_8c159344
loc_8C0B224C:
	#data bank15.loc_8c159358
loc_8C0B2250:
	#data bank03.loc_8c033674
loc_8C0B2254:
	#data bank03.loc_8c034e8c
loc_8C0B2258:
	#data bank15.loc_8c159384
loc_8C0B225C:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0b2260:
	mov.b @r13,r3
	add 0xFF,r3
	mov.b r3,@r13
	exts.b r3,r3
	tst r3,r3
	bf loc_8c0b228c
	mov 0x02,r1
	mov.b r1,@r13
	mov.b @(0x01,r13),r0 
	tst r0,r0
	bt loc_8c0b227c
	mov.b @(0x01,r13),r0 
	add 0xFF,r0
	mov.b r0,@(0x01,r13) 

loc_8c0b227c:
	mov.b @(0x01,r13),r0 
	mov.l @(loc_8c0b2304,pc),r3
	mov r0,r5
	mov.l @(loc_8c0b2300,pc),r0
	shll r5
	mov.w @(r0,r5),r5
	jsr @r3
	mov r14,r4

loc_8c0b228c:
	mov.w @(loc_8C0B22F8,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0b22a2
	mov.l @(loc_8c0b2308,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0B22FA,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b22ac

loc_8c0b22a2:
	mov.b @(0x05,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov 0x10,r0
	mov.w r0,@(0x1C,r14) 

loc_8C0B22AC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B22B4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x3A,PC),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b22da
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)


loc_8C0B22DA:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B22E0:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B22FC,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0B22EE:
	mov.l @(loc_8C0B2310,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0B22FC,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b22f8:
	#data 0x019f
loc_8c0b22fa:
	#data 0x019E
loc_8C0B22FC:
	#data 0x012c
	#align4

loc_8C0B2300:
	#data bank15.loc_8c159358
loc_8C0B2304:
	#data bank03.loc_8c033674
loc_8C0B2308:
	#data bank04.loc_8c045748
loc_8C0B230C:
	#data bank03.loc_8c034dee
loc_8C0B2310:
	#data bank04.loc_8c0450C0

;==============================================
;unused?
loc_8c0b2314:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0x118,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b235a
	mov r0,r4
	mov.w @(0x100,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x104,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov 0x21,r2
	mov.l @r15,r3
	add r4,r2
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2

loc_8c0b235a:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
;unused?
loc_8c0b2362:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0xCC,PC),r3
	mov 0x01,r6
	mov.b r0,@(0x4,r15)
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0b23a8
	mov r0,r4
	mov.w @(0xB2,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0xB8,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov 0x21,r2
	mov.l @r15,r3
	add r4,r2
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2

loc_8c0b23a8:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8c0b23b0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(loc_8c0b2440,pc),r3
	mov.b r0,@(0x04,r15) 
	mov.b r6,@r15
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0b23f2
	mov r0,r4
	mov.w @(loc_8C0B243A,pc),r2
	mov 0x26,r0
	mov.l @(loc_8c0b2444,pc),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4) 
	mov.w r2,@(r0,r4) 
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4) 
	mov.l r14,@(0x14,r4) 
	mov.b @(0x01,r14),r0 
	mov.b r0,@(0x01,r4) 
	mov.b @(0x04,r15),r0 
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4) 

loc_8c0b23f2:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8C0B23FE:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0B243C,pc),r0 ; r0 set to 0x159
	mov.l @(0x18,r14),r5
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0B2416
	mov.l @(loc_8C0B2448,pc),r2 ; r2 set to 0x8C0B3954
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0B2416:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0B244C,pc),r0 ; r0 set to 0x8C15939c
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0B2428:
	mov r4,r3
	mov.l @(loc_8C0B2450,pc),r1 ; r1 set to 0x8C1593C4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b243a:
	#data 0x3701
loc_8C0B243C:
	#data 0x0159
	#align4

loc_8C0B2440:
	#data bank04.loc_8c044F12
loc_8C0B2444:
	#data loc_8c0b23Fe
loc_8C0B2448:
	#data loc_8c0b3954
loc_8C0B244C:
	#data bank15.loc_8c15939c
loc_8C0B2450:
	#data bank15.loc_8c1593C4

;==============================================
loc_8C0B2454:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0B2592,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.w @(loc_8C0B2590,pc),r4 ; r4 set to 0xCc
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0B2592,pc),r2 ; r2 set to 0xDc
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @(loc_8C0B25A4,pc),r3 ; r3 set to 0x8C129560
	mov.w @(loc_8C0B2594,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B2596,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(loc_8C0B2598,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B25A8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0B2596,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov r0,r3 ; r3 set to 0x00
	mov.b r0,@(0x04,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.w r3,@r4
	fmov.s fr4,@(r0,r13)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r13)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r13)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r13)
	mova @(loc_8C0B25AC,pc),r0  ; r0 set to 0x8C0B25Ac
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0B25B0,pc),r0  ; r0 set to 0x8C0B25B0
	fmov.s @r0,fr3
	mov.w @(loc_8C0B259A,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr2
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(loc_8C0B25B4,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s @(r0,r13),fr2
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x02,r6 ; r6 set to 0x02
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r5 ; r5 set to 0x01
	mov 0x00,r6 ; r6 set to 0x00
	bsr loc_8C0B23B0
	mov r14,r4
	mov 0x01,r6 ; r6 set to 0x01
	mov r6,r5 ; r5 set to 0x01
	bsr loc_8C0B23B0
	mov r14,r4
	mov 0x01,r5 ; r5 set to 0x01
	mov 0x02,r6 ; r6 set to 0x02
	bsr loc_8C0B23B0
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0B25C0
	mov.l @r15+,r14

loc_8C0B2524:
	mov.w @(loc_8C0B259C,pc),r0 ; r0 set to 0x130
	mov.w @(loc_8C0B2590,pc),r5 ; r5 set to 0xCc
	mov.w @(r0,r4),r3
	mov.l @(loc_8C0B25B8,pc),r6 ; r6 set to 0x8C26A518
	tst r3,r3
	bf/s loc_8C0B2538
	add r4,r5 ; r5 ??? bc r4 is ???	
	mov.w @(loc_8C0B259E,pc),r0 ; r0 set to 0x8c
	bra loc_8C0B253a
	nop

loc_8c0b2538:
	mov.w @(loc_8C0B25A0,pc),r0

loc_8c0b253a:
	fmov.s @(r0,r6),fr3
	ftrc fr3,fpul 
	sts fpul,r0
	mov.w r0,@(0x02,r5) 
	mova @(loc_8C0B25BC,pc),r0 
	mov.w @r5,r3
	fmov.s @r0,fr2
	lds r3,fpul 
	float fpul,fr3
	fcmp/gt fr2,fr3
	bf loc_8c0b2554
	mov.w @(loc_8C0B25A2,pc),r2
	mov.w r2,@r5

loc_8c0b2554:
	rts
	nop

;----------------------------------------------
loc_8c0b2558:
	mov.w @(0x34,PC),r5
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	add r4,r5
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr2
	fadd fr3,fr2
	ftrc fr2,fpul
	sts fpul,r3
	rts 
	mov.w r3,@r5

;----------------------------------------------
loc_8c0b2570:
	mov.w @(0x28,PC),r0
	mov.w @(0x1A,PC),r6
	mov.w @(r0,r4),r3
	add r4,r6
	tst r3,r3
	bf.s loc_8c0b2580
	mov.w @r6,r5
	neg r5,r5

loc_8c0b2580:
	mov.w @(0x2,r6),r0
	exts.w r5,r5
	add r0,r5
	lds r5,fpul
	mov 0x34,r0
	float fpul,fr3
	rts 
	fmov fr3,@(r0,r4)

;----------------------------------------------
loc_8c0b2590:
	#data 0x00CC
loc_8c0b2592:
	#data 0x00DC
loc_8c0b2594:
	#data 0x00C0
loc_8c0b2596:
	#data 0x012C
loc_8c0b2598:
	#data 0x01A3
loc_8c0b259a:
	#data 0x041C
loc_8c0b259c:
	#data 0x0130
loc_8c0b259e:
	#data 0x008C
loc_8C0B25A0:
	#data 0x0088
loc_8C0B25A2:
	#data 0x00D5
	#align4

loc_8c0b25a4:
	#data bank12.loc_8c129560
loc_8c0b25a8:
	#data bank12.loc_8c1294c8
loc_8c0b25ac:
	#data 0x40d55555
loc_8c0b25b0:
	#data 0x42892492
loc_8c0b25b4:
	#data bank03.loc_8c034e8c
loc_8c0b25b8:
	#data 0x8c26a518
loc_8C0B25BC:
	#data 0x43555555

;==============================================
loc_8c0b25c0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r5),r0
	mov.w @(0x120,PC),r4
	tst r0,r0
	bf.s loc_8c0b25d8
	add r5,r4
	mov.w @(0x11A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c0b25e2

loc_8c0b25d8:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b25e2:
	mov.b @(0xE,r4),r0
	tst r0,r0
	bt loc_8c0b25ee
	mov.w @(0x102,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c0b25ee:
	mov 0x24,r0
	mov.l @(0x100,PC),r1
	mov.b @(r0,r5),r2
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;????
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b2608:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0xD8,PC),r12
	bsr loc_8c0b2524
	add r14,r12
	mov r13,r5
	bsr loc_8c0b2558
	mov r14,r4
	mov r13,r5
	bsr loc_8c0b2570
	mov r14,r4
	mov.w @r12,r3
	mova @(0xCC,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	float fpul,fr3
	fcmp/gt fr3,fr2
	bt loc_8c0b2648
	mov.w @(0xBA,PC),r2
	mov r13,r5
	mov.w r2,@r12
	bsr loc_8c0b2570
	mov r14,r4
	mov 0x12,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c0b2648:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0B2652:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	bsr loc_8C0B2524
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8C0B2570
	mov r14,r4
	mov.l @(loc_8C0B26FC,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0B2696
	mov.b @(0x05,r14),r0
	mov 0x16,r5 ; r5 set to 0x16
	mov.l @(loc_8C0B2700,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x17,r6 ; r6 set to 0x17
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov 0x09,r5 ; r5 set to 0x09
	mov 0x00,r6 ; r6 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0B23B0
	mov.l @r15+,r14

loc_8C0B2696:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B269E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x46,PC),r3
	mov r4,r14
	mov r5,r13
	mov r13,r5
	add r14,r3
	mov.l r3,@r15
	bsr loc_8c0b2524
	mov r14,r4
	mov r13,r5
	bsr loc_8c0b2570
	mov r14,r4
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x28,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0b26e0
	mov.b @(0x5,r14),r0
	mov 0x16,r5
	mov.l @(0x30,PC),r3
	mov 0x02,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov 0x01,r0
	mov.b r0,@(0x4,r2)

loc_8C0B26E0:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b26ea:
	#data 0x02A4
loc_8c0b26ec:
	#data 0x0159
loc_8c0b26ee:
	#data 0x012C
loc_8c0b26f0:
	#data 0x00Cc
loc_8c0b26f2:
	#data 0x00D5
	#align4

loc_8C0B26F4:
	#data bank15.loc_8c1593D4
loc_8C0B26F8:
	#data 0x43480000
loc_8C0B26FC:
	#data bank03.loc_8c034dee
loc_8C0B2700:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0B2704:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0xC4,PC),r3
	mov r4,r14
	mov.w @(0xC2,PC),r2
	mov r5,r13
	add r14,r3
	mov r13,r5
	add r13,r2
	mov.l r3,@r15
	mov.l r2,@(0x4,r15)
	bsr loc_8c0b2524
	mov r14,r4
	mov r13,r5
	bsr loc_8c0b2570
	mov r14,r4
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x4,r15),r2
	mov.b @(0xC,r2),r0
	tst r0,r0
	bf loc_8c0b274c
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x96,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @r15,r2
	mov.b r0,@(0x4,r2)
	mov 0x18,r0
	mov.w r0,@(0x1C,r14)

loc_8C0B274C:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B2756:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	bsr loc_8c0b2524
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c0b2570
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b2788
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x0E,r0
	mov.w r0,@(0x1C,r14)

loc_8C0B2788:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B2790:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8c0b2524
	mov r5,r13
	mov r13,r5
	bsr loc_8c0b2558
	mov r14,r4
	mov r13,r5
	bsr loc_8c0b2570
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b27ba
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0B27BA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B27C2:
	mov r4,r3
	mov.l @(loc_8C0B27E4,pc),r1 ; r1 set to 0x8C1593Ec
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b27d4:
	#data 0x00Cc
loc_8c0b27d6:
	#data 0x02A4
loc_8c0b27d8:
	#data 0x012c
	#align4

loc_8C0B27DC:
	#data bank03.loc_8c034dee
loc_8C0B27E0:
	#data 0xC1555555
loc_8C0B27E4:
	#data bank15.loc_8c1593Ec

;==============================================
loc_8C0B27E8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x132,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x12A,PC),r2
	add 0x01,r0
	mov.l @(0x134,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x124,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x120,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(0x104,PC),r0
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
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xF8,PC),r4
	mov.b @(r0,r13),r2
	mov 0x00,r3
	mov.b r2,@(r0,r14)
	mov 0xFF,r2
	mov.w @(0xDA,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r4),r3
	mova @(0xD8,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xBC,PC),r0
	fmov @r0,fr1
	mov 0x60,r0
	float fpul,fr3
	fmul fr1,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x98,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0b28a4
	mov 0x03,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0B28A4:
	mov.l @(0xA0,PC),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	mov 0x21,r0
	mov.l @(0x9C,PC),r1
	mov.b @(r0,r14),r0
	mov r13,r5
	mov r14,r4
	extu.b r0,r0
	mov.b @(r0,r1),r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B28C2:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r5),r0
	mov.w @(0x64,PC),r4
	tst r0,r0
	bf.s loc_8c0b28e0
	add r5,r4
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0b28e0
	mov.b @(0xC,r4),r0
	tst r0,r0
	bf loc_8c0b28ea

loc_8C0B28E0:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B28EA:
	mov 0x24,r0
	mov.l @(0x60,PC),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;????
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B2904:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0B2922
	mov.b @(0x05,r4),r0
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0B292A,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	bra loc_8C0B2954
	nop

loc_8C0B2922:
	rts
	nop

;----------------------------------------------
loc_8C0B2926:
	#data 0x00Dc
loc_8C0B2928:
	#data 0x00C0
loc_8C0B292a:
	#data 0x012c
loc_8C0B292c:
	#data 0x01A3
loc_8C0B292e:
	#data 0x0130
loc_8C0B2930:
	#data 0x02A4
loc_8C0B2932:
	#data 0x0159
	#align4

loc_8C0B2934:
	#data bank12.loc_8c129560
loc_8C0B2938:
	#data bank12.loc_8c1294C8
loc_8C0B293C:
	#data bank15.loc_8c159390
loc_8C0B2940:
	#data 0x3FD55555
loc_8C0B2944:
	#data 0x40092492
loc_8C0B2948:
	#data bank03.loc_8c034e8c
loc_8C0B294C:
	#data bank15.loc_8c15938c
loc_8C0B2950:
	#data bank15.loc_8c1593Fc

;==============================================
loc_8c0b2954:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r0
	mov r4,r14
	mov.w @(loc_8C0B29AA,pc),r3
	add r5,r3
	mov.l r3,@r15
	fmov.s @(r0,r14),fr3
	mov 0x34,r0
	mov.l @(0x14,r14),r4
	mov.l @(loc_8c0b29b0,pc),r3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x60,r0
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov.b @(0x0D,r2),r0 
	tst r0,r0
	bt loc_8c0b2990
	mov.w @(loc_8C0B29AC,pc),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14) 

loc_8c0b2990:
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8C0B2998:
	mov r4,r3
	mov.l @(loc_8C0B29B4,pc),r1 ; r1 set to 0x8C159404
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b29aa:
	#data 0x02A4
loc_8c0b29ac:
	#data 0x012c
	#align4

loc_8C0B29B0:
	#data bank03.loc_8c034dee
loc_8C0B29B4:
	#data bank15.loc_8c159404

;==============================================
loc_8C0B29B8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(0x11A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x112,PC),r2
	add 0x01,r0
	mov.l @(0x11C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x10C,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x108,PC),r0
	mov 0x01,r12
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
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
	mov.w @(0xEC,PC),r0
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
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xC6,PC),r0
	mov.l @(0xD8,PC),r2
	mov.b r12,@(r0,r14)
	mov 0x31,r0
	jsr @r2
	mov.b r3,@(r0,r14)
	extu.b r0,r4
	mov.l @(0xD4,PC),r11
	exts.w r4,r3
	lds r3,fpul
	mova @(0xC8,PC),r0
	fmov @r0,fr2
	mov.w @(0xB2,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	ftrc fr3,fpul
	fmov @(r0,r11),fr3
	mova @(0xC4,PC),r0
	sts fpul,r4
	exts.w r4,r4
	lds r4,fpul
	float fpul,fr1
	fadd fr3,fr1
	fmov @r0,fr3
	mov 0x34,r0
	ftrc fr1,fpul
	sts fpul,r4
	exts.w r4,r4
	lds r4,fpul
	float fpul,fr1
	fadd fr3,fr1
	ftrc fr1,fpul
	sts fpul,r4
	exts.w r4,r4
	lds r4,fpul
	float fpul,fr1
	fmov fr1,@(r0,r14)
	mov.w @(0x82,PC),r0
	fmov @(r0,r13),fr1
	mov 0x38,r0
	mov.l @(0x88,PC),r3
	fmov fr1,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr1
	jsr @r3
	fmov fr1,@(r0,r14)
	tst 0x03,r0
	bf.s loc_8c0b2a86
	mov 0x04,r6
	mov r12,r0
	nop 
	mov.b r0,@(0x5,r11)
	mov.b r0,@(0x6,r11)

loc_8C0B2A86:
	mov.l @(0x80,PC),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B2A9C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf.s loc_8c0b2ac4
	mov r4,r14
	mov.w @(0x42,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0b2ac4
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b2aca

loc_8C0B2AC4:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
 
loc_8C0B2ACA:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14
 
;----------------------------------------------
loc_8C0B2AD0:
	mov r4,r3
	mov.l @(loc_8C0B2B10,pc),r1 ; r1 set to 0x8C159414
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b2ae2:
	#data 0x00Dc
loc_8c0b2ae4:
	#data 0x00C0
loc_8c0b2ae6:
	#data 0x012C
loc_8c0b2ae8:
	#data 0x01A3
loc_8c0b2aea:
	#data 0x0088
loc_8c0b2aec:
	#data 0x041c
loc_8c0b2aee:
	#data 0x0159
	#align4

loc_8C0B2AF0:
	#data bank12.loc_8c129560
loc_8C0B2AF4:
	#data bank12.loc_8c1294C8
loc_8C0B2AF8:
	#data bank03.loc_8c03319e
loc_8C0B2AFc:
#data 0x3FD55555
loc_8C0B2B00:
	#data 0x8C26A518
loc_8C0B2B04:
	#data 0x42D55555
loc_8C0B2B08:
	#data bank03.loc_8c034e8c
loc_8C0B2B0C:
	#data bank03.loc_8c034dee
loc_8C0B2B10:
	#data bank15.loc_8c159414

;==============================================
loc_8C0B2B14:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(loc_8C0B2C08,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0B2C06,pc),r12 ; r12 set to 0xCc
	add 0x01,r0
	mov.w @(loc_8C0B2C08,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	add r14,r12 ; r12 ??? bc r14 is ???	
	mov.w @(loc_8C0B2C0A,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0B2C1C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B2C0C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(loc_8C0B2C0E,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B2C20,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x00,r4 ; r4 set to 0x00
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov 0x03,r2 ; r2 set to 0x03
	mov.w @(loc_8C0B2C0C,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x42,r3 ; r3 set to 0x42
	mov.w @(loc_8C0B2C10,pc),r0 ; r0 set to 0x19c
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
	tst r2,r2
	bf loc_8C0B2BA0
	mov.w @(loc_8C0B2C12,pc),r0 ; r0 set to 0x1A1
	mov 0x36,r2 ; r2 set to 0x36
	bra loc_8C0B2BA6
	mov.b r2,@(r0,r14)

loc_8C0B2BA0:
	mov.w @(loc_8C0B2C12,pc),r0 ; r0 set to 0x1A1
	mov 0x4A,r3 ; r3 set to 0x4a
	mov.b r3,@(r0,r14)

loc_8C0B2BA6:
	mov.w @(loc_8C0B2C14,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.l @(loc_8C0B2C24,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	mov 0x40,r3 ; r3 set to 0x40, r3 set to 0x40
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C0B2C14,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w @(r0,r14),r2
	or r3,r2
	mov.w r2,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	mov.l @(loc_8C0B2C28,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	jsr @r2
	fmov.s fr3,@(r0,r14)
	extu.b r0,r5 ; r5 set to 0x3C, r5 set to 0x3c
	mov.w @(loc_8C0B2C16,pc),r0 ; r0 set to 0x94, r0 set to 0x94
	exts.w r5,r5 ; r5 ??, r5 ??	
	mov.l @(loc_8C0B2C2C,pc),r4 ; r4 set to 0x8C26A518, r4 set to 0x8C26A518
	add 0x40,r5
	lds r5,fpul
	fmov.s @(r0,r4),fr2 ; r2 ??, r2 ??	
	mova @(loc_8C0B2C30,pc),r0  ; r0 set to 0x8C0B2C30, r0 set to 0x8C0B2C30
	fmov.s @r0,fr0 ; r0 ??, r0 ??	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0B2C18,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0B2C34
	mov.w @(loc_8C0B2C1A,pc),r0 ; r0 set to 0x8C, r0 set to 0x8c
	fmov.s @(r0,r4),fr3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	bra loc_8C0B2C3e
	add 0x54,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B2C06:
	#data 0x00Cc
loc_8C0B2C08:
	#data 0x00Dc
loc_8C0B2C0A:
	#data 0x00C0
loc_8C0B2C0C:
	#data 0x012c
loc_8C0B2C0E:
	#data 0x01A3
loc_8C0B2C10:
	#data 0x019c
loc_8C0B2C12:
	#data 0x01A1
loc_8C0B2C14:
	#data 0x01Ac
loc_8C0B2C16:
	#data 0x0094
loc_8C0B2C18:
	#data 0x0130
loc_8C0B2C1A:
	#data 0x008c
	#align4

loc_8C0B2C1C:
	#data bank12.loc_8c129560
loc_8C0B2C20:
	#data bank12.loc_8c1294C8
loc_8C0B2C24:
	#data 0x8C2896B0
loc_8C0B2C28:
	#data bank03.loc_8c03319e
loc_8C0B2C2C:
	#data 0x8C26A518
loc_8C0B2C30:
	#data 0x40092492

;==============================================
loc_8c0b2c34:
	mov.w @(loc_8C0B2D6C,pc),r0
	fmov.s @(r0,r4),fr3
	mov 0x34,r0
	fmov.s fr3,@(r0,r14) 
	add 0x58,r0

loc_8c0b2c3e:
	fmov.s @(r0,r4),fr3
	mov 0x68,r0
	fldi0 fr4
	ftrc fr3,fpul 
	sts fpul,r3
	mov.w r3,@r12
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14) 
	mova @(loc_8C0B2D7C,pc),r0 
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C0B2D80,pc),r0 
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0B2D6E,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0b2c72
	mov 0x05,r6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c0b2c72:
	mov.l @(loc_8c0b2d84,pc),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0b2c86:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x05,r5),r0 
	mov.w @(loc_8C0B2D70,pc),r4
	tst r0,r0
	bf/s loc_8c0b2ca4
	add r5,r4
	mov.w @(loc_8C0B2D72,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0 
	bf loc_8c0b2ca4
	mov.b @(0x0C,r4),r0 
	tst r0,r0
	bf loc_8c0b2cae

loc_8c0b2ca4:
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b2cae:
	mov 0x24,r0
	mov.l @(loc_8c0b2d88,pc),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14) 
	mov.b @(0x05,r14),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;???
loc_8c0b2cc4:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b2cc8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	mov 0x34,r0
	mov.w @(0x94,PC),r3
	add r14,r1
	mov r5,r13
	add r13,r3
	mov.l r3,@r15
	fmov @r1,fr3
	mov 0x68,r1
	fmov @(r0,r14),fr2
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
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	mov.l @(0x78,PC),r3
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov.b @(0xD,r2),r0
	tst r0,r0
	bt.s loc_8c0b2d28
	mov 0x00,r12
	mov.w @(0x4C,PC),r0
	mov.b r12,@(r0,r14)

loc_8c0b2d28:
	mov r13,r5
	bsr loc_8c0b2dfe
	mov r14,r4
	tst r0,r0
	bt loc_8c0b2d3a
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c0b2dd2
	mov.b r0,@(0x4,r14)

loc_8c0b2d3a:
	mov.w @(0x38,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0b2d50
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b2d94

loc_8c0b2d50:
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	mov 0x16,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x06,r6
	mov.w @(0x14,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x20,PC),r3
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_8c0b2dbe
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B2D6C:
	#data 0x0088
loc_8C0B2D6E:
	#data 0x0130
loc_8C0B2D70:
	#data 0x02A4
loc_8C0B2D72:
	#data 0x0159
loc_8C0B2D74:
	#data 0x012C
loc_8C0B2D76:
	#data 0x019F
loc_8C0B2D78:
	#data 0x019E
	#align4

loc_8C0B2D7C:
	#data 0xC1D55555
loc_8C0B2D80:
	#data 0xC1092492
loc_8c0b2d84:
	#data bank03.loc_8c034e8c
loc_8c0b2d88:
	#data bank15.loc_8c159424
loc_8c0b2d8c:
	#data bank03.loc_8C034DEE
loc_8c0b2d90:
	#data bank04.loc_8C045748

;==============================================
loc_8c0b2d94:
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0xA2,PC),r0
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0b2dd2
	fmov @(r0,r13),fr3
	mov 0x38,r0
	mov 0x01,r3
	fmov fr3,@(r0,r14)
	mov 0x16,r5
	mov.b @(0x5,r14),r0
	mov 0x07,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x8A,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x8C,PC),r3
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c0b2dbe:
	mov r14,r4
	add 0x34,r4
	mov 0x01,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0b2dd2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b2dde:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x68,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b2df6
	mov.l @r15,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)

loc_8c0b2df6:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;----------------------------------------------
loc_8c0b2dfe:
	mov.w @(0x40,PC),r5
	mov 0x34,r0
	fmov @(r0,r4),fr2
	add r4,r5
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr3
	fsub fr3,fr2
	ftrc fr2,fpul
	sts fpul,r4
	exts.w r4,r3
	cmp/pz r3
	bt loc_8c0b2e1a
	neg r4,r4

loc_8c0b2e1a:
	exts.w r4,r4
	lds r4,fpul
	mova @(0x30,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fcmp/gt fr3,fr2
	movt r0
	rts 
	nop 

;==============================================
loc_8C0B2E2C:
	mov r4,r3
	mov.l @(loc_8C0B2E54,pc),r1 ; r1 set to 0x8C15942c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b2e3e:
	#data 0x041c
loc_8c0b2e40:
	#data 0x012c
loc_8c0b2e42:
	#data 0x00CC
	#align4

loc_8C0B2E44:
	#data bank03.loc_8c034e8c
loc_8C0B2E48:
	#data bank10.loc_8c102320
loc_8C0B2E4C:
	#data bank03.loc_8c034dee
loc_8C0B2E50:
	#data 0x41D55555
loc_8C0B2E54:
	#data bank15.loc_8c15942c

;==============================================
loc_8C0B2E58:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.w @(0x14A,PC),r1
	add 0x01,r0
	mov.w @(0x144,PC),r4
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x140,PC),r2
	add r14,r4
	mov.l @(0x154,PC),r3
	mov.w @(0x13C,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x138,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0x11C,PC),r0
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
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0xFC,r3
	mov 0x0E,r6
	mov.b r2,@(r0,r14)
	mov.w @(0xF2,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r5
	mov.w @(0xEC,PC),r0
	mov.l @(0x104,PC),r3
	mov.w r5,@(r0,r14)
	mov 0x3C,r0
	mov.w r5,@r4
	mov 0x16,r5
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B2F00:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r5),r0
	mov.w @(0xB2,PC),r4
	tst r0,r0
	bf.s loc_8c0b2f1e
	add r5,r4
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0b2f1e
	mov.b @(0xC,r4),r0
	tst r0,r0
	bf loc_8c0b2f28

loc_8C0B2F1E:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B2F28:
	mov 0x24,r0
	mov.l @(0xAC,PC),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B2F42:
	mova @(0x9C,PC),r0
	mov.l @(0x94,PC),r6
	fmov @r0,fr3
	mov.w @(0x74,PC),r0
	mov.w @(0x62,PC),r5
	fmov @(r0,r6),fr2
	mov 0x34,r0
	add r4,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr2
	mov.w @(0x64,PC),r0
	fmov @(r0,r6),fr1
	fadd fr2,fr1
	ftrc fr1,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r5)
	mov 0x60,r0
	mov.w @r5,r3
	fmov @(r0,r4),fr1
	lds r3,fpul
	float fpul,fr0
	fadd fr1,fr0
	ftrc fr0,fpul
	sts fpul,r3
	mov.w r3,@r5
	mov.w @(0x2,r5),r0
	mov.w @r5,r2
	add r0,r2
	lds r2,fpul
	float fpul,fr1
	mov 0x38,r0
	fmov fr1,@(r0,r4)
	mova @(0x60,PC),r0
	mov.w @r5,r3
	fmov @r0,fr0
	lds r3,fpul
	float fpul,fr1
	fcmp/gt fr1,fr0
	bt loc_8c0b2fac
	mov.w @(0x2C,PC),r2
	mov.w r2,@r5
	mov.w @r5,r3
	mov.w @(0x2,r5),r0
	add r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr3
	fmov fr3,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0B2FAC:
	rts 
	nop 

;----------------------------------------------
loc_8c0b2fb0:
	#data 0x00Cc
loc_8c0b2fb2:
	#data 0x00DC
loc_8c0b2fb4:
	#data 0x00C0
loc_8c0b2fb6:
	#data 0x012C
loc_8c0b2fb8:
	#data 0x01A3
loc_8c0b2fba:
	#data 0x0130
loc_8c0b2fbc:
	#data 0x02A4
loc_8c0b2fbe:
	#data 0x0159
loc_8c0b2fc0:
	#data 0x0088
loc_8c0b2fc2:
	#data 0x0094
loc_8c0b2fc4:
	#data 0x0101
	#align4

loc_8C0B2FC8:
	#data bank12.loc_8c129560
loc_8C0B2FCC:
	#data bank12.loc_8c1294C8
loc_8C0B2FD0:
	#data 0x41092492
loc_8C0B2FD4:
	#data bank03.loc_8c034e8c
loc_8C0B2FD8:
	#data bank15.loc_8c15943c
loc_8C0B2FDc:
	#data 0x8C26A518
loc_8C0B2Fe0:
	#data 0x43A00000
loc_8C0B2Fe4:
	#data 0xC3892492
loc_8C0B2Fe8:
	#data 0x43809249

;==============================================
loc_8C0B2FEC:
	mova @(loc_8C0B3134,pc),r0  ; r0 init to 0x8C0B3134
	mov.l @(loc_8C0B3130,pc),r6 ; r6 set to 0x8C26A518
	fmov.s @r0,fr3
	mov.w @(loc_8C0B311E,pc),r0 ; r0 set to 0x88
	mov.w @(loc_8C0B311C,pc),r5 ; r5 set to 0xCc
	fmov.s @(r0,r6),fr2
	mov 0x34,r0 ; r0 set to 0x34
	add r4,r5 ; r5 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0B3138,pc),r0  ; r0 set to 0x8C0B3138
	fmov.s @r0,fr2
	mov.w @(loc_8C0B3120,pc),r0 ; r0 set to 0x94
	fmov.s @(r0,r6),fr1
	fadd fr2,fr1
	ftrc fr1,fpul
	sts fpul,r0
	mov.w r0,@(0x02,r5)
	mov.w @(0x02,r5),r0
	mov.w @r5,r3
	add r0,r3
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr1
	rts
	fmov.s fr1,@(r0,r4)

;----------------------------------------------
loc_8C0B3020:
	mov r4,r3
	mov.l @(loc_8C0B313C,pc),r1 ; r1 set to 0x8C159444
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B3032:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.w @(0xE0,PC),r1
	add 0x01,r0
	mov.w @(0xD6,PC),r4
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0xD6,PC),r2
	add r14,r4
	mov.l @(0xF0,PC),r3
	mov.w @(0xD2,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xCE,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0xB2,PC),r0
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
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0xFC,r3
	mov 0x0F,r6
	mov.b r2,@(r0,r14)
	mov.w @(0x88,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r5
	mov.w @(0x82,PC),r0
	mov.l @(0xA4,PC),r3
	mov.w r5,@(r0,r14)
	mov 0x3C,r0
	mov.w r5,@r4
	mov 0x16,r5
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B30DA:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r5),r0
	mov.w @(0x48,PC),r4
	tst r0,r0
	bf.s loc_8c0b30f8
	add r5,r4
	mov.w @(0x42,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0b30f8
	mov.b @(0xC,r4),r0
	tst r0,r0
	bf loc_8c0b3102

loc_8C0B30F8:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts 
	mov.l @r15+,r14
loc_8C0B3102:
	mov 0x24,r0
	mov.l @(0x48,PC),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B311C:
	#data 0x00Cc
loc_8C0B311E:
	#data 0x0088
loc_8C0B3120:
	#data 0x0094
loc_8C0B3122:
	#data 0x00Dc
loc_8C0B3124:
	#data 0x00C0
loc_8C0B3126:
	#data 0x012C
loc_8C0B3128:
	#data 0x01A3
loc_8C0B312a:
	#data 0x0130
loc_8C0B312c:
	#data 0x02A4
loc_8C0B312e:
	#data 0x0159
	#align4

loc_8C0B3130:
	#data 0x8C26A518
loc_8C0B3134:
	#data 0x43A00000
loc_8C0B3138:
	#data 0xC3892492
loc_8C0B313C:
	#data bank15.loc_8c159444
loc_8C0B3140:
	#data bank12.loc_8c129560
loc_8C0B3144:
	#data bank12.loc_8c1294C8
loc_8C0B3148:
	#data 0x40092492
loc_8C0B314C:
	#data bank03.loc_8c034e8c
loc_8C0B3150:
	#data bank15.loc_8c159454

;==============================================
loc_8C0B3154:
	mova @(0x170,PC),r0
	mov.l @(0x16C,PC),r6
	fmov @r0,fr3
	mov.w @(0x156,PC),r0
	mov.w @(0x152,PC),r5
	fmov @(r0,r6),fr2
	mov 0x34,r0
	add r4,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x160,PC),r0
	fmov @r0,fr2
	mov.w @(0x146,PC),r0
	fmov @(r0,r6),fr1
	fadd fr2,fr1
	ftrc fr1,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r5)
	mov 0x60,r0
	mov.w @r5,r3
	fmov @(r0,r4),fr1
	lds r3,fpul
	float fpul,fr0
	fadd fr1,fr0
	ftrc fr0,fpul
	sts fpul,r3
	mov.w r3,@r5
	mov.w @r5,r2
	mov.w @(0x2,r5),r0
	neg r2,r2
	add r0,r2
	lds r2,fpul
	float fpul,fr1
	mov 0x38,r0
	fmov fr1,@(r0,r4)
	mova @(0x134,PC),r0
	mov.w @r5,r3
	fmov @r0,fr0
	lds r3,fpul
	float fpul,fr1
	fcmp/gt fr1,fr0
	bt loc_8c0b31c2
	mov 0x33,r2
	mov.w r2,@r5
	mov.w @r5,r3
	mov.w @(0x2,r5),r0
	neg r3,r3
	add r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr3
	fmov fr3,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0B31C2:
	rts
	nop

;----------------------------------------------
loc_8C0B31C6:
	mova @(loc_8C0B32C8,pc),r0  ; r0 init to 0x8C0B32C8
	mov.l @(loc_8C0B32C4,pc),r6 ; r6 set to 0x8C26A518
	fmov.s @r0,fr3
	mov.w @(loc_8C0B32B4,pc),r0 ; r0 set to 0x88
	mov.w @(loc_8C0B32B2,pc),r5 ; r5 set to 0xCc
	fmov.s @(r0,r6),fr2
	mov 0x34,r0 ; r0 set to 0x34
	add r4,r5 ; r5 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0B32CC,pc),r0  ; r0 set to 0x8C0B32Cc
	fmov.s @r0,fr2
	mov.w @(loc_8C0B32B6,pc),r0 ; r0 set to 0x90
	fmov.s @(r0,r6),fr1
	fadd fr2,fr1
	ftrc fr1,fpul
	sts fpul,r0
	mov.w r0,@(0x02,r5)
	mov.w @r5,r3
	mov.w @(0x02,r5),r0
	neg r3,r3
	add r0,r3
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr1
	rts
	fmov.s fr1,@(r0,r4)

;----------------------------------------------
loc_8C0B31FC:
	mov r4,r3
	mov.l @(loc_8C0B32D4,pc),r1 ; r1 set to 0x8C15945c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B320E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0B32B8,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.w @(loc_8C0B32B2,pc),r4 ; r4 set to 0xCc
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0B32B8,pc),r2 ; r2 set to 0xDc
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @(loc_8C0B32D8,pc),r3 ; r3 set to 0x8C129560
	mov.w @(loc_8C0B32BA,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B32BC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(loc_8C0B32BE,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B32DC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0xFB,r3 ; r3 set to 0xFFFFFFFb
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0B32BC,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C0B32C0,pc),r0 ; r0 set to 0x130
	mov.w r5,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.w r5,@r4
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0B32E0,pc),r0  ; r0 set to 0x8C0B32E0
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0B32E4
	mov.w @(loc_8C0B32C2,pc),r0 ; r0 set to 0x158
	mov 0x10,r3 ; r3 set to 0x10
	bra loc_8C0B32Ea
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B32B2:
	#data 0x00Cc
loc_8C0B32B4:
	#data 0x0088
loc_8C0B32B6:
	#data 0x0090
loc_8C0B32B8:
	#data 0x00Dc
loc_8C0B32BA:
	#data 0x00C0
loc_8C0B32BC:
	#data 0x012c
loc_8C0B32BE:
	#data 0x01A3
loc_8C0B32C0:
	#data 0x0130
loc_8C0B32C2:
	#data 0x0158
	#align4

loc_8C0B32C4:
	#data 0x8C26A518
loc_8C0B32C8:
	#data 0x43A00000
loc_8C0B32CC:
	#data 0x42892492
loc_8C0B32D0:
	#data 0x424DB6Db
loc_8C0B32D4:
	#data bank15.loc_8c15945c
loc_8C0B32D8:
	#data bank12.loc_8c129560
loc_8C0B32DC:
	#data bank12.loc_8c1294C8
loc_8C0B32E0:
	#data 0x40892492

;==============================================
loc_8c0b32e4:
	mov.w @(loc_8C0B341C,pc),r0
	mov 0x11,r1
	mov.b r1,@(r0,r14)

loc_8c0b32ea:
	mov.w @(loc_8C0B341C,pc),r0
	mov 0x16,r5
	mov.l @(loc_8c0b342c,pc),r3
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0b3300:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x05,r5),r0 
	mov.w @(loc_8C0B341E,pc),r4
	tst r0,r0
	bf/s loc_8c0b331e
	add r5,r4
	mov.w @(loc_8C0B3420,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0 
	bf loc_8c0b331e
	mov.b @(0x0C,r4),r0 
	tst r0,r0
	bf loc_8c0b3328

loc_8c0b331e:
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b3328:
	mov 0x24,r0
	mov.l @(loc_8c0b3430,pc),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14) 
	mov.b @(0x05,r14),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;????
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0B3342:
	mova @(loc_8C0B3438,pc),r0  ; r0 init to 0x8C0B3438
	mov.l @(loc_8C0B3434,pc),r6 ; r6 set to 0x8C26A518
	fmov.s @r0,fr3
	mov.w @(loc_8C0B3424,pc),r0 ; r0 set to 0x88
	mov.w @(loc_8C0B3422,pc),r5 ; r5 set to 0xCc
	fmov.s @(r0,r6),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0B343C,pc),r0  ; r0 set to 0x8C0B343c
	fmov.s @r0,fr4
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	tst r3,r3
	bf/s loc_8C0B336a
	add r4,r5 ; r5 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	bra loc_8C0B3370
	fadd fr4,fr2

loc_8c0b336a:
	mov 0x34,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2

loc_8c0b3370:
	fmov.s fr2,@(r0,r4) 
	mova @(loc_8c0b3440,pc),r0 
	fmov.s @r0,fr3
	mov.w @(loc_8c0b3426,pc),r0
	fmov.s @(r0,r6),fr2
	fadd fr3,fr2
	ftrc fr2,fpul 
	sts fpul,r0
	mov.w r0,@(0x02,r5) 
	mov 0x60,r0
	mov.w @r5,r3
	fmov.s @(r0,r4),fr2
	lds r3,fpul 
	float fpul,fr1
	fadd fr2,fr1
	ftrc fr1,fpul 
	sts fpul,r3
	mov.w r3,@r5
	mov.w @r5,r2
	mov.w @(0x02,r5),r0 
	add r0,r2
	lds r2,fpul 
	mov 0x38,r0
	float fpul,fr2
	fmov.s fr2,@(r0,r4) 
	mova @(loc_8C0B3444,pc),r0 
	mov.w @r5,r3
	fmov.s @r0,fr1
	lds r3,fpul 
	float fpul,fr2
	fcmp/gt fr2,fr1
	bt loc_8c0b33c8
	mov.w @(loc_8C0B3428,pc),r2
	mov.w r2,@r5
	mov.w @r5,r3
	mov.w @(0x02,r5),r0 
	add r0,r3
	lds r3,fpul 
	mov 0x38,r0
	float fpul,fr3
	fmov.s fr3,@(r0,r4) 
	mov.b @(0x05,r4),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r4) 

loc_8c0b33c8:
	rts
	nop

loc_8C0B33CC:
	mova @(loc_8C0B3438,pc),r0  ; r0 init to 0x8C0B3438
	mov.l @(loc_8C0B3434,pc),r6 ; r6 set to 0x8C26A518
	fmov.s @r0,fr3
	mov.w @(loc_8C0B3424,pc),r0 ; r0 set to 0x88
	mov.w @(loc_8C0B3422,pc),r5 ; r5 set to 0xCc
	fmov.s @(r0,r6),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0B343C,pc),r0  ; r0 set to 0x8C0B343c
	fmov.s @r0,fr4
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	tst r3,r3
	bf/s loc_8C0B33F4
	add r4,r5 ; r5 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	bra loc_8C0B33Fa
	fadd fr4,fr2

loc_8C0B33F4:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2

loc_8C0B33FA:
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0B3440,pc),r0  ; r0 set to 0x8C0B3440, r0 init to 0x8C0B3440
	fmov.s @r0,fr3
	mov.w @(loc_8C0B3426,pc),r0 ; r0 set to 0x94, r0 set to 0x94
	fmov.s @(r0,r6),fr2
	fadd fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.w r0,@(0x02,r5)
	mov.w @(0x02,r5),r0
	mov.w @r5,r3
	add r0,r3
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	float fpul,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8c0b341c:
	#data 0x0158
loc_8c0b341e:
	#data 0x02A4
loc_8c0b3420:
	#data 0x0159
loc_8C0B3422:
	#data 0x00Cc
loc_8C0B3424:
	#data 0x0088
loc_8C0B3426:
	#data 0x0094
loc_8c0b3428:
	#data 0x009a
	#align4

loc_8C0B342C:
	#data bank03.loc_8c034e8c
loc_8C0B3430:
	#data bank15.loc_8c15946c
loc_8C0B3434:
	#data 0x8C26A518
loc_8C0B3438:
	#data 0x43A00000
loc_8C0B343C:
	#data 0x43555555
loc_8C0B3440:
	#data 0xC31A4924
loc_8c0b3444:
	#data 0x43092492

;==============================================
loc_8C0B3448:
	mov r4,r3
	mov.l @(loc_8C0B35A0,pc),r1 ; r1 set to 0x8C159474
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0B345A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0B358C,pc),r0 ; r0 set to 0x20c
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0B358E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.l @(r0,r13),r4
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0B35A4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0 ; r0 set to 0x20d
	mov.w @(loc_8C0B358E,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0B3590,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B3592,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(loc_8C0B3594,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B35A8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x00,r5 ; r5 set to 0x00
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov 0x42,r6 ; r6 set to 0x42
	mov.w @(loc_8C0B3592,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0B3596,pc),r0 ; r0 set to 0x19c
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r6,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C0B34E2
	mov.w @(loc_8C0B3598,pc),r0 ; r0 set to 0x1A1
	mov 0x48,r3 ; r3 set to 0x48
	bra loc_8C0B34E8
	mov.b r3,@(r0,r14)

loc_8c0b34e2:
	mov.w @(loc_8c0b3598,pc),r0
	mov 0x49,r2
	mov.b r2,@(r0,r14)

loc_8c0b34e8:
	mov.w @(loc_8C0B359A,pc),r0
	mov 0x1C,r6
	mov.l @(loc_8C0B35AC,pc),r3
	mov.w r5,@(r0,r14) 
	add 0xF2,r0
	mov.b r5,@(r0,r14) 
	add 0x26,r0
	mov.l r5,@(r0,r14) 
	mov 0x16,r5
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	mov.l @(loc_8C0B35B0,pc),r1
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	lds r1,fpul 
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14) 
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x3C,r0
	fmov.s @(r0,r13),fr2
	fmov.s fr2,@(r0,r14) 
	mov.l @(loc_8c0b35b4,pc),r3
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov 0x04,r0
	mov.w r0,@(0x1C,r14) 
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0b353c:
	mov.l r14,@-r15
	mov.b @(0x05,r5),r0 
	tst r0,r0
	bf/s loc_8c0b3550
	mov r4,r14
	mov.w @(loc_8C0B359C,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0 
	bt loc_8c0b355a

loc_8c0b3550:
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b355a:
	mov 0x24,r0
	mov.l @(loc_8c0b35b8,pc),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14) 
	mov.b @(0x05,r14),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14
	
;???
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0B3574:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8C0B35Bc
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B358C:
	#data 0x020c
loc_8C0B358E:
	#data 0x00Dc
loc_8C0B3590:
	#data 0x00C0
loc_8C0B3592:
	#data 0x012c
loc_8C0B3594:
	#data 0x01A3
loc_8C0B3596:
	#data 0x019c
loc_8C0B3598:
	#data 0x01A1
loc_8c0b359a:
	#data 0x01Ac
loc_8c0b359c:
	#data 0x0159
	#align4

loc_8C0B35A0:
	#data bank15.loc_8c159474
loc_8C0B35A4:
	#data bank12.loc_8c129560
loc_8C0B35A8:
	#data bank12.loc_8c1294C8
loc_8c0b35ac:
	#data 0x8C2896B0
loc_8c0b35b0:
	#data 0x42892492
loc_8C0B35B4:
	#data bank03.loc_8c034e8c
loc_8C0B35B8:
	#data bank15.loc_8c159484

;==============================================
loc_8C0B35BC:
	mov.l @(loc_8C0B371C,pc),r3 ; r3 set to 0x8C045748
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0B3708,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0B35E8
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x00,r2 ; r2 set to 0x00
	mov r14,r4
	add 0x01,r0 ; r0 set to 0x19f
	mov.b r0,@(0x05,r14)
	mov 0x06,r6 ; r6 set to 0x06
	mov.w @(loc_8C0B370A,pc),r0 ; r0 set to 0x12c
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B3720,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0B35E8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B35EE:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b3606
	mov.l @r15,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)

loc_8C0B3606:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;----------------------------------------------
loc_8C0B360E:
	mov r4,r3
	mov.l @(loc_8C0B3728,pc),r1 ; r1 set to 0x8C15948c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B3620:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0B370C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0B370C,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0B372C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0B370E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B370A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
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
	mov.w @(loc_8C0B3710,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B3730,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.b r2,@(r0,r14)
	mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
	mov.w @(loc_8C0B370A,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0B3712,pc),r0 ; r0 set to 0x130
	mov.w r3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0B36Aa
	mov.w @(loc_8C0B3714,pc),r0 ; r0 set to 0x158
	mov 0x13,r3 ; r3 set to 0x13
	bra loc_8C0B36B0
	mov.b r3,@(r0,r14)

loc_8c0b36aa:
	mov.w @(loc_8c0b3714,pc),r0
	mov 0x14,r1
	mov.b r1,@(r0,r14) 

loc_8c0b36b0:
	mov.w @(loc_8c0b3714,pc),r0
	mov 0x16,r5
	mov.l @(loc_8c0b3720,pc),r3
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0b36c6:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x05,r5),r0 
	mov.w @(loc_8C0B3716,pc),r4
	tst r0,r0
	bf/s loc_8c0b36e4
	add r5,r4
	mov.w @(loc_8C0B3718,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0 
	bf loc_8c0b36e4
	mov.b @(0x0C,r4),r0 
	tst r0,r0
	bf loc_8c0b36ee

loc_8c0b36e4:
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b36ee:
	mov 0x24,r0
	mov.l @(loc_8c0b3734,pc),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14) 
	mov.b @(0x05,r14),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;????
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b3708:
	#data 0x019E
loc_8c0b370a:
	#data 0x012C
loc_8c0b370c:
	#data 0x00DC
loc_8c0b370e:
	#data 0x00C0
loc_8c0b3710:
	#data 0x01A3
loc_8c0b3712:
	#data 0x0130
loc_8c0b3714:
	#data 0x0158
loc_8C0B3716:
	#data 0x02A4
loc_8C0B3718:
	#data 0x0159
	#align4

loc_8c0b371c:
	#data bank04.loc_8C045748
loc_8c0b3720:
	#data bank03.loc_8c034e8c
loc_8c0b3724:
	#data bank03.loc_8c034dee
loc_8c0b3728:
	#data bank15.loc_8c15948c
loc_8c0b372c:
	#data bank12.loc_8c129560
loc_8c0b3730:
	#data bank12.loc_8c1294c8
loc_8c0b3734:
	#data bank15.loc_8c15949c

;==============================================
loc_8C0B3738:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0B3888,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov 0x21,r0 ; r0 set to 0x21
	mov.l @(loc_8C0B388C,pc),r4 ; r4 set to 0x8C26A518
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0B3752
	mov.w @(loc_8C0B3876,pc),r0 ; r0 set to 0x8c
	bra loc_8C0B3754
	nop

loc_8C0B3752:
	mov.w @(loc_8C0B3878,pc),r0 ; r0 set to 0x88

loc_8C0B3754:
	fmov.s @(r0,r4),fr3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0B3890,pc),r0  ; r0 set to 0x8C0B3890, r0 set to 0x8C0B3890
	fmov.s @r0,fr3
	mov.w @(loc_8C0B387A,pc),r0 ; r0 set to 0x90, r0 set to 0x90
	fmov.s @(r0,r4),fr2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B376E:
	mov r4,r3
	mov.l @(loc_8C0B3894,pc),r1 ; r1 set to 0x8C1594A0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0B3780:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xF0,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xE8,PC),r2
	add 0x01,r0
	mov.l @(0x100,PC),r3
	mov.l @(0x14,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0xE0,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xDC,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(0xC0,PC),r0
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
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x00,r3
	mov 0x16,r5
	mov.b r2,@(r0,r14)
	mov 0xFD,r2
	mov.w @(0x96,PC),r0
	mov 0x18,r6
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov.l @(0xA8,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov 0x18,r0
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B3816:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r5),r0
	mov.w @(0x64,PC),r4
	tst r0,r0
	bf.s loc_8c0b3834
	add r5,r4
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0b3834
	mov.b @(0xC,r4),r0
	tst r0,r0
	bf loc_8c0b383e

loc_8C0B3834:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B383E:
	mov 0x24,r0
	mov.l @(0x60,PC),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;???
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B3858:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b3872
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xE,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0B3872:
	rts 
	nop 

;----------------------------------------------
loc_8C0B3876:
	#data 0x008c
loc_8C0B3878:
	#data 0x0088
loc_8C0B387A:
	#data 0x0090
loc_8C0B387c:
	#data 0x00Dc
loc_8C0B387e:
	#data 0x00C0
loc_8C0B3880:
	#data 0x012c
loc_8C0B3882:
	#data 0x01A3
loc_8C0B3884:
	#data 0x02A4
loc_8C0B3886:
	#data 0x0159
	#align4

loc_8C0B3888:
	#data bank03.loc_8c034dee
loc_8C0B388C:
	#data 0x8C26A518
loc_8C0B3890:
	#data 0xC2CDB6Db
loc_8C0B3894:
	#data bank15.loc_8c1594A0
loc_8C0B3898:
	#data bank12.loc_8c129560
loc_8C0B389C:
	#data bank12.loc_8c1294C8
loc_8C0B38A0:
	#data bank03.loc_8c034e8c
loc_8C0B38A4:
	#data bank15.loc_8c1594B0

;==============================================
loc_8C0B38A8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C0B395E,pc),r3 ; r3 set to 0xCc
	mov.l @(0x14,r14),r13
	mov.l @(loc_8C0B3964,pc),r2 ; r2 set to 0x8C034DEe
	add r13,r3 ; r3 ??? bc r13 is ???	
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @r15,r3
	mov.b @(0x04,r3),r0
	tst r0,r0
	bt loc_8C0B38Ec
	mov.b @(0x05,r14),r0
	mov 0x16,r5 ; r5 set to 0x16
	mov r14,r4
	mov 0x1B,r6 ; r6 set to 0x1b
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0B3968,pc),r3 ; r3 set to 0x8C034E8c
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B38EC:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B38F6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x5A,PC),r3
	mov.l @(0x14,r14),r13
	mov.w @(0x58,PC),r2
	add r13,r3
	mov.l r3,@(0x4,r15)
	add r5,r2
	mov.l @(0x54,PC),r3
	mov.l r2,@r15
	jsr @r3
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.l @r15,r3
	mov.b @(0xD,r3),r0
	tst r0,r0
	bt loc_8c0b392e
	mov.w @(0x36,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8C0B392E:
	mov.l @(0x4,r15),r3
	mov.b @(0x4,r3),r0
	tst r0,r0
	bf loc_8c0b393c
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0B393C:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B3946:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B3962,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0B3954:
	mov.l @(loc_8C0B396C,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0B3962,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B395E:
	#data 0x00Cc
loc_8C0B3960:
	#data 0x02A4
loc_8C0B3962:
	#data 0x012c
	#align4

loc_8C0B3964:
	#data bank03.loc_8c034dee
loc_8C0B3968:
	#data bank03.loc_8c034e8c
loc_8C0B396C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0b3970:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0x164,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b39b6
	mov r0,r4
	mov.w @(0x13E,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x150,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov 0x21,r2
	mov.l @r15,r3
	add r4,r2
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2

loc_8c0b39b6:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0
 
;----------------------------------------------
loc_8C0B39BE:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0B3AF0,pc),r0 ; r0 set to 0x8C1594Ec
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0B39D4:
	mov r4,r3
	mov.l @(loc_8C0B3AF4,pc),r1 ; r1 set to 0x8C1594F0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B39E6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0B3AD8,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.w @(loc_8C0B3AD6,pc),r4 ; r4 set to 0xCc
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0B3AD8,pc),r2 ; r2 set to 0xDc
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @(loc_8C0B3AF8,pc),r3 ; r3 set to 0x8C129560
	mov.w @(loc_8C0B3ADA,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B3ADC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(loc_8C0B3ADE,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B3AFC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0B3ADC,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w r5,@r4
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x37,r3 ; r3 set to 0x37
	mov.w @(loc_8C0B3AE0,pc),r0 ; r0 set to 0x1A1
	mov 0x42,r4 ; r4 set to 0x42
	fldi0 fr4
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r5,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r5,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C0B3B00,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C0B3AE2,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r13)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r13)
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(loc_8C0B3B08,pc),r2 ; r2 set to 0x8C034E8c
	fmov.s fr4,@(r0,r13)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r13)
	mova @(loc_8C0B3B04,pc),r0  ; r0 set to 0x8C0B3B04
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	mov 0x16,r5 ; r5 set to 0x16
	fmov.s fr3,@(r0,r14)
	mov 0x0A,r6 ; r6 set to 0x0a
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0B3B68
	mov.l @r15+,r14

loc_8C0B3AC0:
	mov.w @(0x20,PC),r0
	mov.w @(0x10,PC),r5
	mov.w @(r0,r4),r3
	mov.l @(0x44,PC),r6
	tst r3,r3
	bf.s loc_8c0b3b10
	add r4,r5
	mov.w @(0x14,PC),r0
	bra loc_8c0b3b12              ; loc_8c0b3ac0+0x52
	nop 

;==============================================
loc_8c0b3ad4:
	#data 0x3702
loc_8C0B3AD6:
	#data 0x00Cc
loc_8C0B3AD8:
	#data 0x00Dc
loc_8C0B3ADA:
	#data 0x00C0
loc_8C0B3ADC:
	#data 0x012c
loc_8C0B3ADE:
	#data 0x01A3
loc_8C0B3AE0:
	#data 0x01A1
loc_8C0B3AE2:
	#data 0x019c
loc_8c0b3ae4:
	#data 0x0130
loc_8c0b3ae6:
	#data 0x008C
	#align4

loc_8C0B3AE8:
	#data bank04.loc_8c044F12
loc_8C0B3AEC:
	#data loc_8c0b39Be
loc_8C0B3AF0:
	#data bank15.loc_8c1594Ec
loc_8C0B3AF4:
	#data bank15.loc_8c1594F0
loc_8C0B3AF8:
	#data bank12.loc_8c129560
loc_8C0B3AFC:
	#data bank12.loc_8c1294C8
loc_8C0B3B00:
	#data 0x8C2896B0
loc_8C0B3B04:
	#data 0x41A00000
loc_8C0B3B08:
	#data bank03.loc_8c034e8c
loc_08c03b0c:
	#data 0x8C26A518

;==============================================
loc_8C0B3B10:
mov.w @(0x8C,PC),r0

loc_8C0B3B12:
	fmov @(r0,r6),fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r5)
	mova @(0x90,PC),r0
	mov.w @r5,r3
	fmov @r0,fr2
	lds r3,fpul
	float fpul,fr3
	fcmp/gt fr2,fr3
	bf loc_8c0b3b2c
	mov.w @(0x76,PC),r2
	mov.w r2,@r5

loc_8C0B3B2C:
	rts
	nop

;----------------------------------------------
loc_8C0B3B30:
	mov.w @(0x70,PC),r5
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	add r4,r5
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr2
	fadd fr3,fr2
	ftrc fr2,fpul
	sts fpul,r3
	rts 
	mov.w r3,@r5

;----------------------------------------------
loc_8C0B3B48:
	mov.w @(0x5A,PC),r0
	mov.w @(0x56,PC),r6
	mov.w @(r0,r4),r3
	add r4,r6
	tst r3,r3
	bf.s loc_8c0b3b58
	mov.w @r6,r5
	neg r5,r5

loc_8C0B3B58:
	mov.w @(0x2,r6),r0
	exts.w r5,r5
	add r0,r5
	lds r5,fpul
	mov 0x34,r0
	float fpul,fr3
	rts
	fmov fr3, @(r0,r4)

;----------------------------------------------
loc_8c0b3b68:
	mov.l r14,@-r15
	mov.b @(0x05,r5),r0 
	tst r0,r0
	bf/s loc_8c0b3b7c
	mov r4,r14
	mov.w @(loc_8C0B3BA8,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0 
	bt loc_8c0b3b86

loc_8c0b3b7c:
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b3b86:
	mov 0x24,r0
	mov.l @(loc_8c0b3bb0,pc),r1
	mov 0x0C,r3
	mov r14,r4
	mov.b r3,@(r0,r14) 
	mov.b @(0x05,r14),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;????
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b3ba0:
	#data 0x0088
loc_8c0b3ba2:
	#data 0x0258
loc_8c0b3ba4:
	#data 0x00cc
loc_8c0b3ba6:
	#data 0x0130
loc_8c0b3ba8:
	#data 0x0159
	#align4

loc_8c0b3bac:
	#data 0x44160000
loc_8c0b3bb0:
	#data bank15.loc_8c159500

;==============================================
loc_8c0b3bb4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(0x106,PC),r11
	bsr loc_8c0b3ac0
	add r14,r11
	mov.w @(0x102,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b3bd6
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c0b3bd6:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt.s loc_8c0b3be4
	mov 0x00,r12
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)

loc_8c0b3be4:
	mov.w @(0xE6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0b3c34
	mov r13,r5
	bsr loc_8c0b3b30
	mov r14,r4
	mov r13,r5
	bsr loc_8c0b3b48
	mov r14,r4
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c0b3c34
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xC8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b3c34
	mov 0x08,r0
	mov.w r0,@(0x1C,r14)
	mov 0x37,r3
	mov.w @(0xBC,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0xBC,PC),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c0b3c34:
	mov.w @r11,r3
	mova @(0xAC,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	float fpul,fr3
	fcmp/gt fr3,fr2
	bt loc_8c0b3cc0
	mov.w @(0x8E,PC),r2
	mov r13,r5
	mov.w r2,@r11
	bsr loc_8c0b3b48
	mov r14,r4
	mov.w @(0x86,PC),r0
	mov.b @(r0,r13),r4
	extu.b r4,r0
	cmp/eq 0x04,r0
	bt.s loc_8c0b3c60
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x05,r0
	bf loc_8c0b3c68

loc_8c0b3c60:
	mov.w @(0x6E,PC),r0
	mov 0x4B,r3
	bra loc_8c0b3c6e
	mov.b r3,@(r0,r14)

loc_8c0b3c68:
	mov.w @(0x66,PC),r0
	mov 0x38,r2
	mov.b r2,@(r0,r14)

loc_8c0b3c6e:
	mov.w @(0x66,PC),r0
	mov 0x0D,r5
	mov.l @(0x6C,PC),r3
	mov 0x00,r6
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0x60,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r3
	mov r13,r4
	mov.l @(0x54,PC),r4
	mov 0x03,r0
	mov.l @(0x54,PC),r3
	mov 0x1E,r5
	mov.b r0,@(0x5,r4)
	mov 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x30,r0
	mov.w r0,@(0x1C,r14)
	mov 0x18,r0
	mov.w r0,@(0x1E,r14)
	mov r14,r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0b3cc0:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
;----------------------------------------------
loc_8c0b3ccc:
	#data 0x00CC
loc_8c0b3cce:
	#data 0x01A0
loc_8c0b3cd0:
	#data 0x019E
loc_8c0b3cd2:
	#data 0x01A1
loc_8c0b3cd4:
	#data 0x0258
loc_8c0b3cd6:
	#data 0x0255
loc_8c0b3cd8:
	#data 0x01AC
	#align4

loc_8c0b3cdc:
	#data bank04.loc_8c045748
loc_8c0b3ce0:
	#data 0x8c2896b0
loc_8c0b3ce4:
	#data 0x44160000
loc_8c0b3ce8:
	#data bank02.loc_8c02fec4
loc_8c0b3cec:
	#data 0x8c26a518
loc_8c0b3cf0:
	#data bank04.loc_8c042008

;==============================================
loc_8c0b3cf4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	bsr loc_8c0b3ac0
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c0b3b48
	mov r14,r4
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c0b3d1a
	mov.w @(0x1E,r14),r0
	mov.l @(0x108,PC),r3
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4

loc_8c0b3d1a:
	mov.l @(0x104,PC),r1
	mov.w @(0x1E,r14),r0
	mov.b @(r0,r1),r4
	mov.w @(0xEE,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0b3d2c
	mov 0x34,r0
	neg r4,r4

loc_8c0b3d2c:
	exts.b r4,r4
	fmov @(r0,r14),fr2
	lds r4,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b3d50
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x5,r14)

loc_8c0b3d50:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0B3D58:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0C,r3 ; r3 set to 0x0c
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x06,r14),r0
	mov.l @(loc_8C0B3E24,pc),r1 ; r1 set to 0x8C159508
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0B3D72:
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mova @(loc_8C0B3E28,pc),r0  ; r0 set to 0x8C0B3E28
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	rts
	mov.w r0,@(0x1C,r4)

;----------------------------------------------
loc_8C0B3D86:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x82,PC),r3
	mov r5,r13
	mov r13,r5
	mov r4,r14
	add r13,r3
	mov.l r3,@r15
	bsr loc_8c0b3ac0
	mov r14,r4
	mov r13,r5
	bsr loc_8c0b3b48
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b3dc0
	mov.l @r15,r2
	mov 0x12,r0
	mov 0x01,r3
	mov.b r3,@(r0,r2)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_8C0B3DC0:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B3DCA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x40,PC),r3
	mov r4,r14
	mov r5,r13
	mov r13,r5
	add r14,r3
	mov.l r3,@r15
	bsr loc_8c0b3ac0
	mov r14,r4
	mov r13,r5
	bsr loc_8c0b3b30
	mov r14,r4
	mov r13,r5
	bsr loc_8c0b3b48
	mov r14,r4
	mov.l @r15,r3
	mov.w @r3,r2
	cmp/pz r2
	bt loc_8c0b3dfc
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0B3DFC:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B3E06:
	mov.w @(loc_8C0B3E18,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0B3E2C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b3e12:
	#data 0x0130
loc_8c0b3e14:
	#data 0x02A4
loc_8c0b3e16:
	#data 0x00CC
loc_8c0b3e18:
	#data 0x012c
	#align4

loc_8C0B3E1C:
	#data bank04.loc_8c045748
loc_8C0B3E20:
	#data bank15.loc_8c1594Bc
loc_8C0B3E24:
	#data bank15.loc_8c159508
loc_8C0B3E28:
	#data 0xC1D55555
loc_8C0B3E2C:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c0b3e30:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0x168,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b3e76
	mov r0,r4
	mov.w @(0x14A,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x154,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov 0x21,r2
	mov.l @r15,r3
	add r4,r2
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2

loc_8c0b3e76:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0B3E7E:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0B3FB4,pc),r0 ; r0 set to 0x8C1595A4
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0B3E94:
	mov r4,r3
	mov.l @(loc_8C0B3FB8,pc),r1 ; r1 set to 0x8C1595Ac
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B3EA6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0B3FA2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0B3FA2,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0B3FBC,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0B3FA4,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B3FA6,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
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
	mov.w @(loc_8C0B3FA8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B3FC0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0B3FC8,pc),r3 ; r3 set to 0x8C034F54
	mov.b @(r0,r13),r2
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x05,r6 ; r6 set to 0x05
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0B3FA6,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r7
	mov.l @(loc_8C0B3FC4,pc),r0 ; r0 set to 0x8C159514
	extu.b r7,r7
	mov.b @(r0,r7),r7
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	mov r14,r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r13),fr3
	mov.l @(loc_8C0B3FD4,pc),r1 ; r1 set to 0x8C159520
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	add r0,r3
	mov.l @(loc_8C0B3FCC,pc),r0 ; r0 set to 0x8C159518
	mov.l r3,@-r15
	mov 0x21,r3 ; r3 set to 0x21
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r2
	mova @(loc_8C0B3FD0,pc),r0  ; r0 set to 0x8C0B3FD0
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x21,r0 ; r0 set to 0x21
	lds r2,fpul
	mov.l @r15+,r2
	float fpul,fr3
	fmov.s @r2,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov.b @(r0,r1),r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B3F6E:
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0B3FAA,pc),r0 ; r0 set to 0x159, r0 set to 0x159
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0B3F8c
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B3F8C:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0B3FD8,pc),r1 ; r1 set to 0x8C1595Bc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;???
	rts
	mov.l @r15+,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b3fa0:
	#data 0x3703
loc_8C0B3FA2:
	#data 0x00Dc
loc_8C0B3FA4:
	#data 0x00C0
loc_8C0B3FA6:
	#data 0x012c
loc_8C0B3FA8:
	#data 0x01A3
loc_8C0B3FAA:
	#data 0x0159
	#align4

loc_8C0B3FAC:
	#data bank04.loc_8c044F12
loc_8C0B3FB0:
	#data loc_8c0b3E7e
loc_8C0B3FB4:
	#data bank15.loc_8c1595A4
loc_8C0B3FB8:
	#data bank15.loc_8c1595Ac
loc_8C0B3FBC:
	#data bank12.loc_8c129560
loc_8C0B3FC0:
	#data bank12.loc_8c1294C8
loc_8C0B3FC4:
	#data bank15.loc_8c159514
loc_8C0B3FC8:
	#data bank03.loc_8c034F54
loc_8C0B3FCC:
	#data bank15.loc_8c159518
loc_8C0B3FD0:
	#data 0x40092492
loc_8C0B3FD4:
	#data bank15.loc_8c159520
loc_8C0B3FD8:
	#data bank15.loc_8c1595Bc

;==============================================
loc_8C0B3FDC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x154,PC),r2
	mov r5,r3
	mov.l r5,@r15
	mov r4,r14
	add r3,r2
	mov.l @(0x158,PC),r3
	mov.l r2,@(0x4,r15)
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov r14,r2
	mov.l @(0x150,PC),r1
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	and 0x7F,r0
	mov.w r0,@(0x1C,r14)
	mov 0x34,r0
	mov.l @r15,r3
	add r0,r2
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.l r2,@-r15
	mov.w @(0x1C,r14),r0
	mov.b @(r0,r1),r3
	mova @(0x138,PC),r0
	fmov @r0,fr0
	mov 0x13,r0
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @(0x4,r15),r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c0b403e
	mov.l @(0x124,PC),r3
	mov 0x17,r5
	mov 0x06,r6
	jsr @r3
	mov r14,r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0B403E:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B4046:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b4062
	mov.w @(0xE2,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0B4062:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B4068:
	mov r4,r3
	mov.l @(loc_8C0B4158,pc),r1 ; r1 set to 0x8C1595C4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B407A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0B413E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0B413E,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0B415C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0B4140,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B413C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
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
	mov.w @(loc_8C0B4142,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B4160,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r14)
	mov 0x07,r6 ; r6 set to 0x07
	mov.w @(loc_8C0B413C,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B4154,pc),r3 ; r3 set to 0x8C034E8c
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	mov r13,r5 ; r5 ??? bc r13 is ???	
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B4108:
	mov.w @(loc_8C0B4144,pc),r0 ; r0 set to 0x159, r0 set to 0x159
	mov.l r14,@-r15
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt/s loc_8C0B4120
	mov r4,r14
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B4120:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0B4164,pc),r1 ; r1 set to 0x8C1595D4
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;????
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B413a:
	#data 0x02A4
loc_8C0B413C:
	#data 0x012c
loc_8C0B413E:
	#data 0x00Dc
loc_8C0B4140:
	#data 0x00C0
loc_8C0B4142:
	#data 0x01A3
loc_8C0B4144:
	#data 0x0159
	#align4

loc_8C0B4148:
	#data bank03.loc_8c034dee
loc_8C0B414C:
	#data bank15.loc_8c159524
loc_8C0B4150:
	#data 0x3FD55555
loc_8C0B4154:
	#data bank03.loc_8c034e8c
loc_8C0B4158:
	#data bank15.loc_8c1595C4
loc_8C0B415C:
	#data bank12.loc_8c129560
loc_8C0B4160:
	#data bank12.loc_8c1294C8
loc_8C0B4164:
	#data bank15.loc_8c1595D4

;==============================================
loc_8C0B4168:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x6E,PC),r3
	mov r5,r13
	mov.l @(0x70,PC),r2
	mov r4,r14
	add r13,r3
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0b41aa
	mov.w @(0x4C,PC),r0
	mov.l @(0x54,PC),r1
	mov.l @(r0,r13),r4
	mov 0x38,r0
	lds r1,fpul
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0B41AA:
	mov.l @r15,r3
	mov 0x13,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0b41c0
	mov.w @(0x2E,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0B41C0:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B41CA:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B41E6,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0B41D8:
	mov.l @(loc_8C0B41F0,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0B41E6,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B41E2:
	#data 0x02A4
loc_8C0B41E4:
	#data 0x020c
loc_8C0B41E6:
	#data 0x012c
	#align4

loc_8C0B41E8:
	#data bank03.loc_8c034dee
loc_8C0B41Ec:
	#data 0x41892492
loc_8C0B41F0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0B41f4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0xEC,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b4242
	mov r0,r4
	mov.l @(0xDC,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0xCA,PC),r2
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x26,r0
	extu.b r3,r3
	or r2,r3
	mov.w r3,@(r0,r4)
	mov.w @(0xAC,PC),r0
	mov.w @(r0,r14),r1
	mov.w @(0xAA,PC),r0
	mov.w r1,@(r0,r4)

loc_8c0b4242:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b424e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(loc_8c0b42f0,pc),r3
	mov 0x01,r5
	mov.b r0,@(0x04,r15) 
	mov.b r6,@r15
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8c0b429e
	mov r0,r4
	mov.l @(loc_8c0b42f4,pc),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4) 
	mov.b @(0x04,r15),r0 
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4) 
	mov 0x20,r0
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4) 
	mov.w @(loc_8C0B42E8,pc),r2
	mov.l r14,@(0x14,r4) 
	mov.b @(r0,r14),r3
	mov 0x26,r0
	extu.b r3,r3
	or r2,r3
	mov.w r3,@(r0,r4) 
	mov.b @(0x01,r14),r0 
	mov.b r0,@(0x01,r4) 
	mov.w @(loc_8c0b42ec,pc),r0
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r4) 

loc_8c0b429e:
	mov r14,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8C0B42AA:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0B42F8,pc),r0 ; r0 set to 0x8C159620
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0B42C0:
	mov.w @(loc_8C0B42EC,pc),r0 ; r0 set to 0xD4
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(r0,r14),r3
	mov.w @(loc_8C0B42EA,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bt loc_8C0B42D8
	mov.l @(loc_8C0B42FC,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0B42D8:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0B4300,pc),r1 ; r1 set to 0x8C15967c
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b42e8:
	#data 0x3800
loc_8C0B42EA:
	#data 0x0158
loc_8C0B42EC:
	#data 0x00D4
	#align4

loc_8C0B42F0:
	#data bank04.loc_8c044F12
loc_8C0B42F4:
	#data loc_8c0b42Aa
loc_8C0B42F8:
	#data bank15.loc_8c159620
loc_8C0B42FC:
	#data bank04.loc_8c0450C0
loc_8C0B4300:
	#data bank15.loc_8c15967c

;==============================================
loc_8C0B4304:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x13E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x136,PC),r2
	add 0x01,r0
	mov.l @(0x144,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x130,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x12C,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(0x110,PC),r0
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
	mov.l @(0x10C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x10C,PC),r3
	mov.b @(r0,r13),r2
	mov 0x02,r4
	mov.b r2,@(r0,r14)
	mov.w @(0xEC,PC),r0
	mov.b r4,@(r0,r14)
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r4
	mov.w @(0xE0,PC),r0
	extu.b r4,r4
	mov.b @(r0,r14),r2
	shlr r4
	mov.l @(0xEC,PC),r0
	extu.b r2,r2
	add r2,r4
	mov.b @(r0,r4),r4
	mov.w @(0xD4,PC),r0
	mov.b r4,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b43ca
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xA4,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b43c2
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0B43C2:
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	bra loc_8c0b43d2
	mov 0x60,r0

loc_8C0B43CA:
	mov 0x60,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0

loc_8C0B43D2:
	fmov fr3,@(r0,r14)
	mov 0x15,r5
	mov.w @(0x7A,PC),r0
	mov.l @(0x9C,PC),r3
	mov.b @(r0,r14),r6
	extu.b r6,r6
	shll r6
	add 0x03,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B43F0:
	mov.l r14,@-r15
	mov 0x5C,r0 ; r0 set to 0x5c
	mov r4,r14
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2 ; r2 ??? bc r5 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(loc_8C0B447C,pc),r3 ; r3 set to 0x8C034DEe
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0B4436
	lds.l @r15+,pr
	mov.l @(loc_8C0B4480,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0B4436:
	mov.w @(loc_8C0B445C,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0B4448
	lds.l @r15+,pr
	mov.l @(loc_8C0B4484,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0B4448:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b444e:
	#data 0x00Dc
loc_8c0b4450:
	#data 0x00C0
loc_8c0b4452:
	#data 0x012C
loc_8c0b4454:
	#data 0x01A3
loc_8c0b4456:
	#data 0x019C
loc_8c0b4458:
	#data 0x01A1
loc_8c0b445a:
	#data 0x0130
loc_8C0B445C:
	#data 0x019f
	#align4

loc_8C0B4460:
	#data bank12.loc_8c129560
loc_8C0B4464:
	#data bank12.loc_8c1294C8
loc_8C0B4468:
	#data bank15.loc_8c15968c
loc_8C0B446c:
	#data 0x8C2896B0
loc_8C0B4470:
	#data 0xC1D55555
loc_8C0B4474:
	#data 0x42892492
loc_8C0B4478:
	#data bank03.loc_8c034e8c
loc_8C0B447C:
	#data bank03.loc_8c034dee
loc_8C0B4480:
	#data bank04.loc_8c0450C0
loc_8C0B4484:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B4488:
	mov.w @(loc_8C0B45A6,pc),r0 ; r0 set to 0xD4
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(r0,r14),r3
	mov.w @(loc_8C0B45A8,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bt loc_8C0B44A0
	mov.l @(loc_8C0B45B8,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0B44A0:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0B45BC,pc),r1 ; r1 set to 0x8C159690
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B44B0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x21,r0
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0b44e4
	mov r5,r13
	mov 0x01,r5
	mov 0x04,r6
	bsr loc_8c0b424e
	mov r14,r4
	mov 0x01,r5
	mov 0x03,r6
	bsr loc_8c0b424e
	mov r14,r4
	mov 0x01,r5
	mov 0x02,r6
	bsr loc_8c0b424e
	mov r14,r4
	mov 0x01,r6
	mov r6,r5
	bsr loc_8c0b424e
	mov r14,r4

loc_8C0B44E4:
	mov.b @(0x4,r14),r0
	mov.w @(0xC0,PC),r1
	add 0x01,r0
	mov.l @(0xD4,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0xB8,PC),r0
	mov.w @(0xB4,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0xB2,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(0x96,PC),r0
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
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x76,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0b4546
	bra loc_8c0b454c
	mov 0x02,r4

loc_8C0B4546:
	mov.w @(0x66,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r4

loc_8C0B454C:
	mov.l @(0x78,PC),r0
	shll2 r4
	fmov @(r0,r4),fr3
	mov.w @(0x5E,PC),r0
	ftrc fr3,fpul
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0b4560
	sts fpul,r4
	neg r4,r4

loc_8C0B4560:
	exts.w r4,r4
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov 0x40,r6
	mov 0x03,r3
	float fpul,fr3
	mov 0x00,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x3E,PC),r0
	mov.b r6,@(r0,r14)
	add 0xFF,r0
	mov.b r6,@(r0,r14)
	add 0xFF,r0
	mov.b r6,@(r0,r14)
	add 0xFF,r0
	mov.b r6,@(r0,r14)
	add 0x60,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x4C,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0b459a
	bra loc_8c0b45ce
	mov r6,r4

loc_8C0B459A:
	mov.w @(0x12,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0b45cc
	bra loc_8c0b45ce
	mov 0x31,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B45A6:
	#data 0x00D4
loc_8C0B45A8:
	#data 0x0158
loc_8C0B45Aa:
	#data 0x00Dc
loc_8C0B45Ac:
	#data 0x00C0
loc_8C0B45Ae:
	#data 0x012C
loc_8C0B45B0:
	#data 0x01A3
loc_8C0B45B2:
	#data 0x01E9
loc_8C0B45B4:
	#data 0x0130
loc_8C0B45B6:
	#data 0x013F
	#align4

loc_8C0B45B8:
	#data bank04.loc_8c0450C0
loc_8C0B45BC:
	#data bank15.loc_8c159690
loc_8C0B45C0:
	#data bank12.loc_8c129560
loc_8C0B45C4:
	#data bank12.loc_8c1294C8
loc_8C0B45C8:
	#data bank15.loc_8c1595D8

;==============================================
loc_8C0B45CC:
	mov 0x4E,r4

loc_8C0B45CE:
	mov.w @(0x11C,PC),r0
	mov.l @(0x128,PC),r3
	mov.b r4,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0b4608
	mov.w @(0xF2,PC),r0
	mov.b @(r0,r14),r12
	extu.b r12,r12
	shll2 r12
	shll r12
	bra loc_8c0b461c
	add 0x0B,r12

loc_8C0B4608:
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r12
	mov 0x21,r0
	mov.b @(r0,r14),r2
	extu.b r12,r12
	shll2 r12
	extu.b r2,r2
	shll r12
	add r2,r12
	add 0x09,r12

loc_8C0B461C:
	mov.l @(0xE0,PC),r3
	mov 0x16,r5
	mov r12,r6
	jsr @r3
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0b4632
	bra loc_8c0b4634
	mov r13,r4

loc_8C0B4632:
	mov.l @(0x8,r14),r4

loc_8C0B4634:
	mov.b @(r0,r14),r2
	mov r13,r5
	mov.l @(0xC8,PC),r0
	extu.b r2,r2
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov r14,r4
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B4652:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r3
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r3),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B4708,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0B4682
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0B470C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	mov.l @r15+,r14

loc_8c0b4682:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0b46a6
	mov.w @(loc_8C0B46F2,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b46a6
	mov 0x00,r3
	mov 0x02,r5
	mov r3,r6
	mov.b r3,@(r0,r14) 
	bsr loc_8c0b424e
	mov r14,r4
	mov 0x02,r5
	mov 0x01,r6
	bsr loc_8c0b424e
	mov r14,r4

loc_8c0b46a6:
	mov.w @(loc_8C0B46F4,pc),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0b46b6
	mov.l @(loc_8c0b4710,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0b46b6:
	mov.l @(loc_8c0b4714,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0b46c8
	mov.w @(loc_8C0B46F6,pc),r0
	mov 0x00,r2
	bra loc_8c0b46ce
	mov.b r2,@(r0,r14) 

loc_8c0b46c8:
	mov.w @(loc_8C0B46F6,pc),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14) 

loc_8c0b46ce:
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8C0B46D6:
	mov.w @(loc_8C0B46F8,pc),r0 ; r0 set to 0xD4
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(r0,r14),r3
	mov.w @(loc_8C0B46FA,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bt loc_8C0B4718
	mov.l @(loc_8C0B470C,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b46ee:
	#data 0x01A1
loc_8c0b46f0:
	#data 0x01A3
loc_8c0b46f2:
	#data 0x0141
loc_8c0b46f4:
	#data 0x019e
loc_8c0b46f6:
	#data 0x012C
loc_8C0B46F8:
	#data 0x00D4
loc_8C0B46FA:
	#data 0x0158
	#align4

loc_8c0b46fc:
	#data 0x8C2896B0
loc_8C0B4700:
	#data bank03.loc_8c034e8c
loc_8C0B4704:
	#data bank15.loc_8c1596A0
loc_8C0B4708:
	#data bank03.loc_8c034dee
loc_8C0B470C:
	#data bank04.loc_8c0450C0
loc_8C0B4710:
	#data bank04.loc_8c045748
loc_8C0B4714:
	#data bank03.loc_8c0332E0

;==============================================
loc_8C0B4718:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0B4870,pc),r1 ; r1 set to 0x8C1596B4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B4728:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0B4860,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0B4860,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0B4874,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0B4862,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0B4864,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(loc_8C0B4866,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B4878,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x42,r4 ; r4 set to 0x42
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0B4868,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0x06,r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C0B479c
	bra loc_8C0B479e
	mov 0x48,r4

loc_8c0b479c:
	mov 0x50,r4

loc_8c0b479e:
	mov.w @(loc_8C0B486A,pc),r0
	mov.l @(loc_8C0B487C,pc),r3
	mov.b r4,@(r0,r14) 
	add 0x0B,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14) 
	add 0xF2,r0
	mov.b r4,@(r0,r14) 
	add 0x26,r0
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b47d4
	mov.w @(loc_8C0B486C,pc),r0
	mov 0x01,r2
	mov.w @(r0,r14),r1
	xor r2,r1
	mov.w r1,@(r0,r14) 

loc_8c0b47d4:
	mov.w @(loc_8C0B486E,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x06,r0 
	bf loc_8c0b47e2
	bra loc_8c0b47e8
	mov 0x02,r5

loc_8c0b47e2:
	mov.w @(loc_8c0b4866,pc),r0
	mov.b @(r0,r14),r5
	extu.b r5,r5

loc_8c0b47e8:
	mov.w @(loc_8C0B486C,pc),r0
	mov r5,r4
	mov.l @(loc_8c0b4880,pc),r3
	shll2 r4
	mov.w @(r0,r13),r2
	tst r2,r2
	bf/s loc_8c0b4802
	add r3,r4
	mov 0x34,r0
	fmov.s @r4,fr3
	fmov.s @(r0,r13),fr2
	bra loc_8c0b480a
	fadd fr3,fr2

loc_8c0b4802:
	mov 0x34,r0
	fmov.s @r4,fr3
	fmov.s @(r0,r13),fr2
	fsub fr3,fr2

loc_8c0b480a:
	fmov.s fr2,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r13),fr3
	mov 0x16,r5
	mov.l @(loc_8c0b4884,pc),r3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8c0b4866,pc),r0
	mov.b @(r0,r14),r6
	extu.b r6,r6
	shll r6
	add 0x15,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B482E:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov r4,r14
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(loc_8C0B4888,pc),r3 ; r3 set to 0x8C034DEe
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0B4856
	lds.l @r15+,pr
	mov.l @(loc_8C0B488C,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0B4856:
	lds.l @r15+,pr
	mov.l @(loc_8C0B4890,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B4860:
	#data 0x00Dc
loc_8C0B4862:
	#data 0x00C0
loc_8C0B4864:
	#data 0x012c
loc_8C0B4866:
	#data 0x01A3
loc_8C0B4868:
	#data 0x019c
loc_8c0b486a:
	#data 0x01A1
loc_8c0b486c:
	#data 0x0130
loc_8c0b486e:
	#data 0x01E9
	#align4

loc_8C0B4870:
	#data bank15.loc_8c1596B4
loc_8C0B4874:
	#data bank12.loc_8c129560
loc_8C0B4878:
	#data bank12.loc_8c1294C8
loc_8c0b487c:
	#data 0x8C2896B0
loc_8C0B4880:
	#data bank15.loc_8c1595D8
loc_8C0B4884:
	#data bank03.loc_8c034e8c
loc_8C0B4888:
	#data bank03.loc_8c034dee
loc_8C0B488C:
	#data bank04.loc_8c0450C0
loc_8C0B4890:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B4894:
	mov.w @(loc_8C0B4946,pc),r0 ; r0 set to 0xD4
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(r0,r14),r3
	mov.w @(loc_8C0B4948,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bt loc_8C0B48Ac
	mov.l @(loc_8C0B4958,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0B48AC:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0B495C,pc),r1 ; r1 set to 0x8C1596C4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B48BC:
	mov.w @(loc_8C0B494A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0B4960,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0B494A,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B494C,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0B494E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0B4950,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B4964,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0B494E,pc),r0 ; r0 set to 0x12c
	mov.w @(loc_8C0B4952,pc),r2 ; r2 set to 0xFf
	mov.b r3,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr

loc_8C0B4920:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0B4954,pc),r0 ; r0 set to 0x140, r0 set to 0x140
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	cmp/pz r3
	bt/s loc_8C0B4968
	mov r4,r14
	lds.l @r15+,pr
	mov.l @(loc_8C0B4958,pc),r2 ; r2 set to 0x8C0450C0, r2 set to 0x8C0450C0
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B4946:
	#data 0x00D4
loc_8C0B4948:
	#data 0x0158
loc_8C0B494A:
	#data 0x00Dc
loc_8C0B494C:
	#data 0x00C0
loc_8C0B494E:
	#data 0x012c
loc_8C0B4950:
	#data 0x01A3
loc_8C0B4952:
	#data 0x00Ff
loc_8C0B4954:
	#data 0x0140
	#align4

loc_8C0B4958:
	#data bank04.loc_8c0450C0
loc_8C0B495C:
	#data bank15.loc_8c1596C4
loc_8C0B4960:
	#data bank12.loc_8c129560
loc_8C0B4964:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0b4968:
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0b4a28
	mov.b @(r0,r13),r3
	mov 0x22,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r2,r3
	bt loc_8c0b49e4
	mov.w @(loc_8C0B4A52,pc),r0
	mov.l @(loc_8c0b4a5c,pc),r12
	mov.b @(r0,r13),r2
	mov 0x22,r0
	mov.b r2,@(r0,r14) 
	mov.b @(r0,r14),r4
	mov 0x04,r0
	extu.b r4,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r12,r4
	fmov.s @(r0,r4),fr3
	mov 0x60,r0
	fmov.s @r4,fr15
	fmov.s fr3,@(r0,r14) 
	mov 0x22,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r12,r3
	mov.w @(0x08,r3),r0 
	mov 0x01,r3
	mov r0,r1
	mov 0x31,r0
	mov.b r1,@(r0,r14) 
	mov.w @(loc_8C0B4A54,pc),r0
	mov.b r3,@(r0,r14) 
	mov 0x22,r0
	mov.b @(r0,r14),r6
	mov 0x19,r5
	extu.b r6,r6
	mov r6,r3
	shll r6
	add r3,r6
	mov.l @(loc_8c0b4a60,pc),r3
	shll2 r6
	add r12,r6
	mov.w @(0x0A,r6),r0 
	mov r0,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0B4A56,pc),r0
	mov.w @(r0,r13),r2
	tst r2,r2
	bt/s loc_8c0b49e2
	mov 0x5C,r0
	fneg fr15

loc_8c0b49e2:
	fmov.s fr15,@(r0,r14) 

loc_8c0b49e4:
	mov.w @(loc_8C0B4A56,pc),r0
	mov 0x5C,r1
	add r14,r1
	mov r14,r4
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14) 
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14) 
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r14,r1
	mov.l @(loc_8c0b4a64,pc),r3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	lds.l @r15+,pr 
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0b4a28:
	lds.l @r15+,pr 
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C0B4A34:
	mov.w @(loc_8C0B4A58,pc),r0 ; r0 set to 0x2Ab
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r4,@-r15
	mov.b r3,@(r0,r5)
	mov.w @(loc_8C0B4A5A,pc),r0 ; r0 set to 0x1F1
	mov.l @(loc_8C0B4A68,pc),r1 ; r1 set to 0x8C1596D4
	mov.b r3,@(r0,r5)
	mov.l @r15,r2
	mov.b @(0x04,r2),r0
	mov r2,r4
	extu.b r0,r0 ; r0 set to 0xF1
	shll2 r0 ; r0 set to 0x3C4
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b4a52:
	#data 0x0140
loc_8c0b4a54:
	#data 0x012c
loc_8c0b4a56:
	#data 0x0130
loc_8C0B4A58:
	#data 0x02Ab
loc_8C0B4A5A:
	#data 0x01F1
	#align4

loc_8C0B4A5C:
	#data bank15.loc_8c1595E4
loc_8C0B4A60:
	#data bank03.loc_8c034e8c
loc_8C0B4A64:
	#data bank03.loc_8c034dee
loc_8C0B4A68:
	#data bank15.loc_8c1596D4

;==============================================
loc_8C0B4A6C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0B4BBA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0B4BCC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0B4BBA,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0B4BBC,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0B4BBE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(loc_8C0B4BC0,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B4BD0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x44,r4 ; r4 set to 0x44
	mov 0x40,r3 ; r3 set to 0x40
	mov.b r2,@(r0,r14)
	mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
	mov.w @(loc_8C0B4BC2,pc),r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0xA3,r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13d
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x42,r3 ; r3 set to 0x42
	mov.w @(loc_8C0B4BC4,pc),r0 ; r0 set to 0x1A1
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.l @(loc_8C0B4BD4,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.l @r3,r2 ; r2 ??	
	mov.b @(0x02,r14),r0
	add 0x7C,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C0B4BC6,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x1E,r14)
	mova @(loc_8C0B4BD8,pc),r0  ; r0 set to 0x8C0B4BD8
	fmov.s @r0,fr3
	mov.w @(loc_8C0B4BC6,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr2
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0B4BC8,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r2
	tst r2,r2
	bt/s loc_8C0B4B42
	mov.w r2,@(r0,r14)
	mova @(loc_8C0B4BDC,pc),r0  ; r0 set to 0x8C0B4BDc
	fmov.s @r0,fr2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr1
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mova @(loc_8C0B4BE0,pc),r0  ; r0 set to 0x8C0B4BE0
	bra loc_8C0B4B52
	fmov.s @r0,fr1

loc_8C0B4B42:
	mova @(loc_8C0B4BE4,pc),r0  ; r0 init to 0x8C0B4BE4
	fmov.s @r0,fr2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr1
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mova @(loc_8C0B4BE8,pc),r0  ; r0 set to 0x8C0B4BE8
	fmov.s @r0,fr1

loc_8C0B4B52:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr3
	fmov.s fr1,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0B4BEC,pc),r0  ; r0 set to 0x8C0B4BEC, r0 set to 0x8C0B4BEc
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov.l @(loc_8C0B4BF0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	fmov.s fr3,@(r0,r14)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.w r0,@(0x1C,r14)
	mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0B4BF4,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
	jsr @r2
	mov r14,r4
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.b r3,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b4b82:
	mov 0x68,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r4) 
	mov 0x6C,r0
	fmov.s fr4,@(r0,r4) 
	mova @(loc_8c0b4be8,pc),r0 
	fmov.s @r0,fr4
	mov.w @(loc_8c0b4bc8,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0b4b9c
	mova @(loc_8c0b4be0,pc),r0 
	fmov.s @r0,fr4

loc_8c0b4b9c:
	mov 0x5C,r0
	fmov.s fr4,@(r0,r4) 
	mova @(loc_8C0B4BF8,pc),r0 
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r4) 
	mov.w @(loc_8C0B4BCA,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0b4bb6
	mov.l @(loc_8c0b4bfc,pc),r3
	jmp @r3
	nop 

loc_8c0b4bb6:
	rts 
	nop

;----------------------------------------------
loc_8c0b4bba:
	#data 0x00DC
loc_8c0b4bbc:
	#data 0x00C0
loc_8c0b4bbe:
	#data 0x012C
loc_8c0b4bc0:
	#data 0x01A3
loc_8c0b4bc2:
	#data 0x019D
loc_8c0b4bc4:
	#data 0x01A1
loc_8c0b4bc6:
	#data 0x041C
loc_8c0b4bc8:
	#data 0x0130
loc_8C0B4BCA:
	#data 0x019F

loc_8c0b4bcc:
	#data bank12.loc_8c129560
loc_8c0b4bd0:
	#data bank12.loc_8c1294c8
loc_8c0b4bd4:
	#data 0x8c2896b0
loc_8c0b4bd8:
	#data 0x434db6db
loc_8c0b4bdc:
	#data 0x41d55555
loc_8c0b4be0:
	#data 0x40d55555
loc_8c0b4be4:
	#data 0xc1d55555
loc_8c0b4be8:
	#data 0xc0d55555
loc_8c0b4bec:
	#data 0xbf4db6db
loc_8c0b4bf0:
	#data bank03.loc_8c034e8c
loc_8c0b4bf4:
	#data bank10.loc_8c104434
loc_8c0b4bf8:
	#data 0x41cdb6db
loc_8c0b4bfc:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B4C00:
	mov.l r14,@-r15
	mov 0x03,r0 ; r0 set to 0x03
	sts.l pr,@-r15
	mov.l @(loc_8C0B4D00,pc),r3 ; r3 set to 0x8C042008
	mov r4,r14
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov.l @(0x18,r14),r4
	mov.l @(loc_8C0B4D04,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x14,r5 ; r5 set to 0x14
	mov 0x03,r6 ; r6 set to 0x03
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C0B4D08,pc),r3 ; r3 set to 0x8C057B6e
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0B4B82
	mov.l @r15+,r14

loc_8C0B4C2A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0B4D0C,pc),r11 ; r11 set to 0x8C034DEe
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C0B4C5c
	mov 0x00,r12 ; r12 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C0B4CCe
	cmp/eq 0x02,r0
	bf loc_8C0B4C50
	bra loc_8C0B4DD8
	nop

loc_8C0B4C50:
	cmp/eq 0x03,r0
	bf loc_8C0B4C58
	bra loc_8C0B4E28
	nop

loc_8C0B4C58:
	bra loc_8C0B4E38
	nop

loc_8C0B4C5C:
	jsr @r11
	mov r14,r4
	mov.w @(loc_8C0B4CF8,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0B4C6c
	bra loc_8C0B4E38
	nop

loc_8C0B4C6C:
	mov r12,r0
	nop
	mov.b r0,@(0x06,r14)
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.w @(loc_8C0B4CF8,pc),r0 ; r0 set to 0x141
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b r12,@(r0,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
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
	mov 0x08,r5 ; r5 set to 0x08
	mov 0x00,r6 ; r6 set to 0x00
	fmov.s fr2,@(r0,r14)
	bsr loc_8C0B424e
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(loc_8C0B4D00,pc),r2 ; r2 set to 0x8C042008
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0B4CCE:
	mov.w @(loc_8C0B4CFA,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0B4CDa
	bra loc_8C0B4DE0
	nop

loc_8C0B4CDA:
	mov.w @(loc_8C0B4CFC,pc),r0 ; r0 set to 0x1A0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0B4D14
	mov.b @(r0,r14),r3
	mov r14,r4
	mov.l @(loc_8C0B4D10,pc),r2 ; r2 set to 0x8C0510D8
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B4CF8:
	#data 0x0141
loc_8C0B4CFA:
	#data 0x019f
loc_8C0B4CFC:
	#data 0x01A0
	#align4

loc_8C0B4D00:
	#data bank04.loc_8c042008
loc_8C0B4D04:
	#data bank03.loc_8c034e8c
loc_8C0B4D08:
	#data bank05.loc_8c057B6e
loc_8C0B4D0C:
	#data bank03.loc_8c034dee
loc_8C0B4D10:
	#data bank05.loc_8c0510D8

;==============================================
loc_8c0b4d14:
	mov.w @(loc_8C0B4E44,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b4d4c
	mov.w @(0x1C,r14),r0 
	tst r0,r0
	bt loc_8c0b4d4c
	mov.w @(0x1C,r14),r0 
	mov 0x42,r3
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	mov.w @(loc_8C0B4E46,pc),r0
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r12,@(r0,r14) 
	add 0xF2,r0
	mov.b r12,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C0B4E50,pc),r3
	mov.l r12,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 

loc_8c0b4d4c:
	jsr @r11
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
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
	mov.b @(0x06,r14),r0 
	tst r0,r0
	bf loc_8c0b4db8
	mova @(loc_8C0B4E54,pc),r0 
	fmov.s @r0,fr3
	mov.w @(loc_8C0B4E48,pc),r0
	fmov.s @(r0,r13),fr2
	mov 0x38,r0
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c0b4db8
	mov.b @(0x06,r14),r0 
	mov 0x15,r5
	mov.l @(loc_8c0b4e58,pc),r3
	mov 0x14,r6
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0b4e5c,pc),r2
	mov 0x1A,r5
	jsr @r2
	mov r13,r4

loc_8c0b4db8:
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0B4E48,pc),r0
	fmov.s @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0b4e18
	mov.b @(0x05,r14),r0 
	mov 0x15,r6
	mov.l @(loc_8c0b4e58,pc),r3
	mov r6,r5
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	jsr @r3
	mov r14,r4
	bra loc_8c0b4e18
	nop 

loc_8c0b4dd8:
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b4dee

loc_8C0B4DE0:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0B4C00
	mov.l @r15+,r14

loc_8C0B4DEE:
	jsr @r11
	mov r14,r4
	mov.w @(0x56,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b4e10
	mov.b r12,@(r0,r14)
	mov r14,r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0b4b82
	mov.l @r15+,r14

loc_8C0B4E10:
	mov.w @(0x36,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0b4e38

loc_8C0B4E18:
	lds.l @r15+,pr
	mov.l @(0x44,PC),r3
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B4E28:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0B4E64
	mov.l @r15+,r14

loc_8C0B4E38:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b4e44:
	#data 0x019e
loc_8c0b4e46:
	#data 0x01A1
loc_8c0b4e48:
	#data 0x041c
loc_8c0b4e4a:
	#data 0x019F
loc_8c0b4e4c:
	#data 0x0141
	#align4

loc_8c0b4e50:
	#data 0x8C2896B0
loc_8c0b4e54:
	#data 0x431A4924
loc_8C0B4E58:
	#data bank03.loc_8c034e8c
loc_8C0B4E5C:
	#data bank04.loc_8c04223a
loc_8C0B4E60:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B4E64:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0B4EFA,pc),r0 ; r0 set to 0x1A0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0B4E7c
	mov.b @(r0,r14),r3
	bra loc_8C0B4EC2
	add 0xFF,r3

loc_8C0B4E7C:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0B4F04,pc),r3 ; r3 set to 0x8C0332E0
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0B4EC6
	mov.w @(loc_8C0B4EFC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01

loc_8C0B4EC2:
	bra loc_8C0B4ED4
	mov.b r3,@(r0,r14)

loc_8C0B4EC6:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0B4F08,pc),r3 ; r3 set to 0x8C0B68C2
	jmp @r3
	mov.l @r15+,r14

loc_8C0B4ED4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B4EDC:
	mov.w @(loc_8C0B4EFE,pc),r0 ; r0 set to 0x2Ab
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r4,@-r15
	mov.b r3,@(r0,r5)
	mov.w @(loc_8C0B4F00,pc),r0 ; r0 set to 0x1F1
	mov.l @(loc_8C0B4F0C,pc),r1 ; r1 set to 0x8C1596E4
	mov.b r3,@(r0,r5)
	mov.l @r15,r2
	mov.b @(0x04,r2),r0
	mov r2,r4
	extu.b r0,r0 ; r0 set to 0xF1
	shll2 r0 ; r0 set to 0x3C4
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B4EFA:
	#data 0x01A0
loc_8C0B4EFC:
	#data 0x012c
loc_8C0B4EFE:
	#data 0x02Ab
loc_8C0B4F00:
	#data 0x01F1
	#align4

loc_8C0B4F04:
	#data bank03.loc_8c0332E0
loc_8C0B4F08:
	#data loc_8c0b68C2
loc_8C0B4F0C:
	#data bank15.loc_8c1596E4

;==============================================
loc_8C0B4F10:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0B5052,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0B5068,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0B5052,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0B5054,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0B5056,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(loc_8C0B5058,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B506C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.w @(loc_8C0B505C,pc),r3 ; r3 set to 0x80
	mov.b @(r0,r5),r2
	mov 0x44,r4 ; r4 set to 0x44
	mov.b r2,@(r0,r14)
	mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
	mov.w @(loc_8C0B505A,pc),r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0x13c
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	add 0x02,r0 ; r0 set to 0x13f
	mov 0x40,r3 ; r3 set to 0x40
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x43,r3 ; r3 set to 0x43
	mov.w @(loc_8C0B505E,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C0B5070,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	fldi0 fr4
	shll r0 ; r0 set to 0x188
	mov.l @(loc_8C0B5078,pc),r4 ; r4 set to 0x8C26A518
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0B5074,pc),r0  ; r0 set to 0x8C0B5074
	fmov.s @r0,fr3 ; r3 ??	
	mov.w @(loc_8C0B5060,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr2
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0B5062,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r2
	tst r2,r2
	bt loc_8C0B4FF2
	mova @(loc_8C0B507C,pc),r0  ; r0 set to 0x8C0B507c
	fmov.s @r0,fr2
	mov.w @(loc_8C0B5064,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr1
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mova @(loc_8C0B5080,pc),r0  ; r0 set to 0x8C0B5080
	bra loc_8C0B5004
	fmov.s @r0,fr1

loc_8C0B4FF2:
	mova @(loc_8C0B5084,pc),r0  ; r0 init to 0x8C0B5084
	fmov.s @r0,fr2
	mov.w @(loc_8C0B5066,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr1
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mova @(loc_8C0B5088,pc),r0  ; r0 set to 0x8C0B5088
	fmov.s @r0,fr1

loc_8C0B5004:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0B5094,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr1,@(r0,r14)
	mova @(loc_8C0B508C,pc),r0  ; r0 set to 0x8C0B508C, r0 set to 0x8C0B508c
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0B5090,pc),r0  ; r0 set to 0x8C0B5090, r0 set to 0x8C0B5090
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov 0x16,r6 ; r6 set to 0x16, r6 set to 0x16
	fmov.s fr3,@(r0,r14)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0B5098,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
	jsr @r2
	mov r14,r4
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.b r3,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B5036:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bt/s loc_8C0B509c
	mov r5,r13
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0B4E64
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B5052:
	#data 0x00Dc
loc_8C0B5054:
	#data 0x00C0
loc_8C0B5056:
	#data 0x012c
loc_8C0B5058:
	#data 0x01A3
loc_8C0B505A:
	#data 0x019d
loc_8C0B505C:
	#data 0x0080
loc_8C0B505E:
	#data 0x01A1
loc_8C0B5060:
	#data 0x041c
loc_8C0B5062:
	#data 0x0130
loc_8C0B5064:
	#data 0x0088
loc_8C0B5066:
	#data 0x008c
	#align4

loc_8C0B5068:
	#data bank12.loc_8c129560
loc_8C0B506C:
	#data bank12.loc_8c1294C8
loc_8C0B5070:
	#data 0x8C2896B0
loc_8C0B5074:
	#data 0x43892492
loc_8C0B5078:
	#data 0x8C26A518
loc_8C0B507C:
	#data 0xC2D55555
loc_8C0B5080:
	#data 0x41855555
loc_8C0B5084:
	#data 0x42D55555
loc_8C0B5088:
	#data 0xC1855555
loc_8C0B508C:
	#data 0xC1700000
loc_8C0B5090:
	#data 0x3F092492
loc_8C0B5094:
	#data bank03.loc_8c034e8c
loc_8C0B5098:
	#data bank10.loc_8c104434

;==============================================
loc_8C0B509C:
	mov.w @(loc_8C0B51B4,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0B50Cc
	mov.b @(0x05,r14),r0
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8C0B51C4,pc),r3 ; r3 set to 0x8C042008
	add 0x01,r0 ; r0 set to 0x1A0
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r13,r4
	mov.l @(loc_8C0B51C8,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x14,r5 ; r5 set to 0x14
	mov 0x09,r6 ; r6 set to 0x09
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C0B51CC,pc),r3 ; r3 set to 0x8C057B6e
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0B4B82
	mov.l @r15+,r14

loc_8C0B50CC:
	mov.w @(loc_8C0B51B6,pc),r0 ; r0 set to 0x1A0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0B50Dc
	mov.b @(r0,r14),r3
	add 0xFF,r3
	bra loc_8C0B51A8
	mov.b r3,@(r0,r14)

loc_8c0b50dc:
	mov.l @(loc_8c0b51d0,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
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
	mov.w @(0x1C,r14),r0 
	tst r0,r0
	bt/s loc_8c0b5162
	mov 0x00,r4
	mov.w @(loc_8C0B51B8,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b5162
	mov.w @(loc_8C0B51BA,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b5162
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	mov.w @(loc_8C0B51B8,pc),r0
	mov.b @(r0,r14),r3
	add 0x56,r0
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r4,@(r0,r14) 
	add 0xF2,r0
	mov.b r4,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C0B51D4,pc),r3
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(loc_8C0B51BC,pc),r0
	mov.b r4,@(r0,r14) 

loc_8c0b5162:
	mov.w @(loc_8C0B51BE,pc),r0
	mov.l @(loc_8C0B51D8,pc),r5
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b5182
	mova @(loc_8C0B51DC,pc),r0 
	fmov.s @r0,fr3
	mov.w @(loc_8C0B51C0,pc),r0
	fmov.s @(r0,r5),fr2
	mov 0x34,r0
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c0b5194
	bra loc_8c0b5196
	nop 

loc_8c0b5182:
	mova @(loc_8C0B51E0,pc),r0 
	fmov.s @r0,fr3
	mov.w @(loc_8C0B51C2,pc),r0
	fmov.s @(r0,r5),fr2
	mov 0x34,r0
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8c0b5196

loc_8c0b5194:
	mov 0x01,r4

loc_8c0b5196:
	tst r4,r4
	bt loc_8c0b51a8
	lds.l @r15+,pr 
	mov r13,r5
	mov.l @(loc_8c0b51e4,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B51A8:
	lds.l @r15+,pr
	mov.l @(loc_8C0B51E8,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B51B4:
	#data 0x019f
loc_8C0B51B6:
	#data 0x01A0
loc_8c0b51b8:
	#data 0x014b
loc_8c0b51ba:
	#data 0x019E
loc_8c0b51bc:
	#data 0x0140
loc_8c0b51be:
	#data 0x0130
loc_8c0b51c0:
	#data 0x008c
loc_8c0b51c2:
	#data 0x0088
	#align4

loc_8C0B51C4:
	#data bank04.loc_8c042008
loc_8C0B51C8:
	#data bank03.loc_8c034e8c
loc_8C0B51CC:
	#data bank05.loc_8c057B6e
loc_8C0B51D0:
	#data bank03.loc_8c034dee
loc_8c0b51d4:
	#data 0x8C2896B0
loc_8c0b51d8:
	#data 0x8C26A518
loc_8c0b51dc:
	#data 0x42D55555
loc_8c0b51e0:
	#data 0xC2D55555
loc_8C0B51E4:
	#data loc_8c0b68C2
loc_8C0B51E8:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B51EC:
	mov.w @(loc_8C0B5344,pc),r0 ; r0 set to 0x2Ab
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r4,@-r15
	mov.b r3,@(r0,r5)
	mov.w @(loc_8C0B5346,pc),r0 ; r0 set to 0x1F1
	mov.l @(loc_8C0B5364,pc),r1 ; r1 set to 0x8C1596F4
	mov.b r3,@(r0,r5)
	mov.l @r15,r2
	mov.b @(0x04,r2),r0
	mov r2,r4
	extu.b r0,r0 ; r0 set to 0xF1
	shll2 r0 ; r0 set to 0x3C4
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0B520A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0B5348,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0B5368,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0B5348,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0B534A,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0B534C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(loc_8C0B534E,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0B536C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.w @(loc_8C0B5352,pc),r3 ; r3 set to 0x80
	mov.b @(r0,r5),r2
	mov 0x44,r6 ; r6 set to 0x44
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
	mov.w @(loc_8C0B5350,pc),r0 ; r0 set to 0x19d
	mov.b r6,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0x13c
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x02,r0 ; r0 set to 0x13f
	mov 0x40,r3 ; r3 set to 0x40
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0B5354,pc),r0 ; r0 set to 0x1A1
	mov.l @(loc_8C0B5370,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r6,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.l @r3,r2 ; r2 ??	
	mov.b @(0x02,r14),r0
	add 0x7C,r2
	fldi0 fr4
	extu.b r0,r0 ; r0 set to 0xC4
	mov.l @(loc_8C0B5378,pc),r4 ; r4 set to 0x8C26A518
	shll r0 ; r0 set to 0x188
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0B5374,pc),r0  ; r0 set to 0x8C0B5374
	fmov.s @r0,fr3 ; r3 ??	
	mov.w @(loc_8C0B5356,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr2
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0B5358,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r2
	tst r2,r2
	bt/s loc_8C0B52Ea
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFc
	mova @(loc_8C0B537C,pc),r0  ; r0 set to 0x8C0B537c
	fmov.s @r0,fr2
	mov.w @(loc_8C0B535A,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr1
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @(loc_8C0B535C,pc),r4 ; r4 set to 0xA0
	fadd fr2,fr1
	bra loc_8C0B52Fa
	fmov.s fr1,@(r0,r14)

loc_8C0B52EA:
	mova @(loc_8C0B5380,pc),r0  ; r0 init to 0x8C0B5380
	fmov.s @r0,fr2
	mov.w @(loc_8C0B535E,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr1
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @(loc_8C0B5360,pc),r4 ; r4 set to 0xFF60
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)

loc_8C0B52FA:
	shad r3, r4 ; r4 ??? bc r3 is ???	
	mov.l @(loc_8C0B5388,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	lds r4,fpul
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	mov 0x18,r6 ; r6 set to 0x18, r6 set to 0x18
	float fpul,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0B5384,pc),r0  ; r0 set to 0x8C0B5384, r0 set to 0x8C0B5384
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0B538C,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
	jsr @r2
	mov r14,r4
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.b r3,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B5332:
	mov r4,r3
	mov.l @(loc_8C0B5390,pc),r1 ; r1 set to 0x8C159704
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B5344:
	#data 0x02Ab
loc_8C0B5346:
	#data 0x01F1
loc_8C0B5348:
	#data 0x00Dc
loc_8C0B534A:
	#data 0x00C0
loc_8C0B534C:
	#data 0x012c
loc_8C0B534E:
	#data 0x01A3
loc_8C0B5350:
	#data 0x019d
loc_8C0B5352:
	#data 0x0080
loc_8C0B5354:
	#data 0x01A1
loc_8C0B5356:
	#data 0x041c
loc_8C0B5358:
	#data 0x0130
loc_8C0B535A:
	#data 0x0088
loc_8C0B535C:
	#data 0x00A0
loc_8C0B535E:
	#data 0x008c
loc_8C0B5360:
	#data 0xFF60
	#align4

loc_8C0B5364:
	#data bank15.loc_8c1596F4
loc_8C0B5368:
	#data bank12.loc_8c129560
loc_8C0B536C:
	#data bank12.loc_8c1294C8
loc_8C0B5370:
	#data 0x8C2896B0
loc_8C0B5374:
	#data 0x44092492
loc_8C0B5378:
	#data 0x8C26A518
loc_8C0B537C:
	#data 0xC2555555
loc_8C0B5380:
	#data 0x42555555
loc_8C0B5384:
	#data 0xC2092492
loc_8C0B5388:
	#data bank03.loc_8c034e8c
loc_8C0B538C:
	#data bank10.loc_8c104434
loc_8C0B5390:
	#data bank15.loc_8c159704

;==============================================
loc_8C0B5394:
	mov.w @(loc_8C0B54A4,pc),r0 ; r0 set to 0x19f
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C0B53B2
	mov r5,r13
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0B5562
	mov.l @r15+,r14

loc_8c0b53b2:
	mov 0x5C,r1
	add r14,r1
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
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0B54A6,pc),r0
	fmov.s @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0b5412
	mov.b @(0x05,r14),r0 
	mov.l @(loc_8c0b54b0,pc),r3
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov.w @(loc_8C0B54A6,pc),r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0b54b4,pc),r2
	mov 0x34,r5
	jsr @r2
	mov r13,r4

loc_8c0b5412:
	lds.l @r15+,pr 
	mov.l @(loc_8c0b54b8,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B541E:
	mov.w @(loc_8C0B54A4,pc),r0 ; r0 set to 0x19f
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0B5434
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0B5562
	mov.l @r15+,r14

loc_8c0b5434:
	mov.l @(loc_8c0b54b0,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b5456
	mov.b @(0x05,r14),r0 
	mov 0x00,r3
	mov 0x15,r5
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov 0x19,r6
	mov.w @(loc_8C0B54A8,pc),r0
	mov.b r3,@(r0,r14) 
	mov.l @(loc_8c0b54bc,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0b5456:
	lds.l @r15+,pr 
	mov.l @(loc_8c0b54b8,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c0b5460:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x48,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0x36,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b549c
	mov.b @(0x5,r14),r0
	mov 0x4B,r5
	mov.l @(0x34,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x26,PC),r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov.l @r15,r4
	mov.l @(0x34,PC),r2
	mov 0x09,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0b549c
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c0b549c:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b54a4:
	#data 0x019F
loc_8c0b54a6:
	#data 0x041C
loc_8C0B54A8:
	#data 0x019D
loc_8C0B54Aa:
	#data 0x0141
loc_8C0B54Ac:
	#data 0x00B4
	#align4

loc_8c0b54b0:
	#data bank03.loc_8c034dee
loc_8c0b54b4:
	#data bank04.loc_8C04223A
loc_8c0b54b8:
	#data bank04.loc_8c045748
loc_8c0b54bc:
	#data bank03.loc_8c034e8c
loc_8c0b54c0:
	#data loc_8C0B424E

;==============================================
loc_8C0B54C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0B55EC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8C0B54F2
	mov.b @(0x05,r14),r0
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_8C0B55F0,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x1E,r6 ; r6 set to 0x1e
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0B4B82
	mov.l @r15+,r14

loc_8C0B54F2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B54F8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0B55F4,pc),r3 ; r3 set to 0x8C0332E0
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r5,@r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0B554c
	mov.w @(loc_8C0B55E6,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C0B555a
	mov.b r3,@(r0,r14)

loc_8C0B554C:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0B55F8,pc),r3 ; r3 set to 0x8C0B68C2
	jmp @r3
	mov.l @r15+,r14

loc_8C0B555A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B5562:
	mov.l r14,@-r15
	mov 0x04,r0 ; r0 set to 0x04
	sts.l pr,@-r15
	mov.l @(loc_8C0B55F0,pc),r3 ; r3 set to 0x8C034E8c
	mov r4,r14
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x05,r14)
	mov 0x1E,r6 ; r6 set to 0x1e
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0B4B82
	mov.l @r15+,r14

loc_8C0B557E:
	mov.l @(loc_8C0B55F0,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x08,r0 ; r0 set to 0x08
	mov 0x1C,r6 ; r6 set to 0x1c
	mov.b r0,@(0x05,r4)
	jmp @r3
	mov 0x15,r5

loc_8C0B558A:
	mov.l @(loc_8C0B55F0,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x08,r0 ; r0 set to 0x08
	mov 0x1D,r6 ; r6 set to 0x1d
	mov.b r0,@(0x05,r4)
	jmp @r3
	mov 0x15,r5

loc_8C0B5596:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0B55EC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C0B55E8,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0B55Bc
	mov.b @(0x05,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r4
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0B55E8,pc),r0 ; r0 set to 0x141
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	bra loc_8C0B4B82
	mov.l @r15+,r14

loc_8C0B55BC:
	mov.w @(loc_8C0B55EA,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0B55Ce
	lds.l @r15+,pr
	mov.l @(loc_8C0B55FC,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0B55CE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B55D4:
	mov r4,r3
	mov.l @(loc_8C0B5600,pc),r1 ; r1 set to 0x8C15972c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B55E6:
	#data 0x012c
loc_8C0B55E8:
	#data 0x0141
loc_8C0B55EA:
	#data 0x019f
	#align4

loc_8C0B55EC:
	#data bank03.loc_8c034dee
loc_8C0B55F0:
	#data bank03.loc_8c034e8c
loc_8C0B55F4:
	#data bank03.loc_8c0332E0
loc_8C0B55F8:
	#data loc_8c0b68C2
loc_8C0B55FC:
	#data bank04.loc_8c045748
loc_8C0B5600:
	#data bank15.loc_8c15972c

;==============================================
loc_8C0B5604:
	mov.w @(0x144,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x148,PC),r3
	add 0x01,r0
	mov.w @(0x138,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0x136,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x132,PC),r0
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
	mov.w @(0x116,PC),r0
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
	mov.l @(0x10C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mova @(0x104,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0x14,r4),r5
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0xF8,PC),r0
	fmov @r0,fr5
	mova @(0xF8,PC),r0
	fmov @r0,fr6
	mova @(0xF8,PC),r0
	fmov @r0,fr4
	mov.w @(0xDC,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0b5688
	mova @(0xF0,PC),r0
	fmov @r0,fr6
	mova @(0xF0,PC),r0
	fmov @r0,fr4
	mova @(0xF0,PC),r0
	fmov @r0,fr5

loc_8C0B5688:
	mov 0x34,r0
	mov.l @(0xF8,PC),r3
	fmov @(r0,r5),fr3
	mov 0x15,r5
	mov 0x13,r6
	fadd fr5,fr3
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov fr6,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mova @(0xDC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x28,r0
	mov.w r0,@(0x1C,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0B56B6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xC8,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fmov @(r0,r14),fr4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x68,r1
	add r14,r1
	ftrc fr4,fpul
	fadd fr4,fr3
	sts fpul,r4
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @r1,fr3
	mov 0x60,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
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
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	ftrc fr3,fpul
	sts fpul,r5
	xor r5,r4
	cmp/pz r4
	bt loc_8c0b5716
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8C0B5716:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0b5730
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x60,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B5730:
	mov.w @(0x1C,r14),r0
	mov 0x1E,r3
	cmp/ge r3,r0
	bt loc_8c0b5798
	mov.l @(0x54,PC),r2
	mov 0x01,r4
	mov.l @r2,r1
	mov.l @(0x1C,r1),r0
	tst r4,r0
	bt loc_8c0b5794
	mov.w @(0x8,PC),r0
	mov 0x00,r1
	bra loc_8c0b5798
	mov.b r1,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b574c:
	#data 0x00dc
loc_8c0b574e:
	#data 0x00c0
loc_8c0b5750:
	#data 0x012c
loc_8c0b5752:
	#data 0x01a3
loc_8c0b5754:
	#data 0x0130
	#align4

loc_8C0B5758:
	#data bank12.loc_8c129560
loc_8C0B575C:
	#data bank12.loc_8c1294C8
loc_8C0B5760:
	#data 0xC2564924
loc_8C0B5764:
	#data 0x42995555
loc_8C0B5768:
	#data 0x40D55555
loc_8C0B576c:
	#data 0xBED55555
loc_8C0B5770:
	#data 0xC0D55555
loc_8C0B5774:
	#data 0x3ED55555
loc_8C0B5778:
	#data 0xC2995555
loc_8C0B577c:
	#data 0x40892492
loc_8C0B5780:
	#data 0xBF092492
loc_8C0B5784:
	#data bank03.loc_8c034e8c
loc_8C0B5788:
	#data bank03.loc_8c034dee
loc_8C0B578C:
	#data loc_8c0b68Ca
loc_8C0B5790:
	#data 0x8C26823c

;==============================================
loc_8C0B5794:
	mov.w @(0x142,PC),r0
	mov.b r4,@(r0,r14)

loc_8C0B5798:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B57A0:
	mov r4,r3
	mov.l @(loc_8C0B58E8,pc),r1 ; r1 set to 0x8C15973c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B57B2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x11E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x116,PC),r2
	add 0x01,r0
	mov.l @(0x124,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x110,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x106,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(0xEE,PC),r0
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
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x44,r4
	mov 0x30,r5
	mov.b r2,@(r0,r14)
	mov 0x10,r3
	mov.w @(0xC8,PC),r0
	mov 0xF0,r2
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0xA0,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov 0x70,r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov.w @(0xAA,PC),r0
	mov.l @(0xB8,PC),r3
	mov.b r4,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	fldi0 fr4
	shll r0
	mov.l @(0xAC,PC),r5
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x60,r0
	mov.l @(0x14,r14),r4
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x5E,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c0b58a0
	mov.w r2,@(r0,r14)
	mov 0x5C,r0
	mov.l @(0x74,PC),r5
	fmov @(r0,r14),fr2
	fneg fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr2
	fneg fr2
	fmov fr2,@(r0,r14)

loc_8C0B58A0:
	lds r5,fpul
	mova @(0x68,PC),r0
	fmov @r0,fr2
	mova @(0x68,PC),r0
	fmov @r0,fr1
	mov 0x34,r0
	float fpul,fr3
	fmov @(r0,r4),fr0
	mov.l @(0x60,PC),r3
	mov 0x15,r5
	mov 0x1A,r6
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr3,fr0
	fmov fr0,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x54,PC),r2
	mov 0x0E,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(0x48,PC),r3
	mov 0x19,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b58da:
	#data 0x012c
loc_8c0b58dc:
	#data 0x00dc
loc_8c0b58de:
	#data 0x00c0
loc_8c0b58e0:
	#data 0x01a3
loc_8c0b58e2:
	#data 0x019d
loc_8c0b58e4:
	#data 0x01a1
loc_8c0b58e6:
	#data 0x0130
	#align4

loc_8C0B58E8:
	#data bank15.loc_8c15973c
loc_8C0B58EC:
	#data bank12.loc_8c129560
loc_8C0B58F0:
	#data bank12.loc_8c1294C8
loc_8C0B58F4:
	#data 0x8C2896B0
loc_8C0B58F8:
	#data 0xC0D55555
loc_8C0B58Fc:
	#data 0xBED55555
loc_8C0B5900:
	#data 0x43092492
loc_8C0B5904:
	#data 0xFFE80000
loc_8C0B5908:
	#data 0x00180000
loc_8C0B590c:
	#data 0x3FD55555
loc_8C0B5910:
	#data 0x47800000
loc_8C0B5914:
	#data bank03.loc_8c034e8c
loc_8C0B5918:
	#data loc_8c0b424e
loc_8C0B591C:
	#data bank04.loc_8c042008

;==============================================
loc_8C0B5920:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x05,r14),r0
	tst r0,r0
	bt/s loc_8C0B593a
	mov r5,r13
	bra loc_8C0B5AA8
	nop

loc_8c0b593a:
	mov.w @(loc_8C0B59E4,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8c0b594c
	fldi0 fr15
	mov.w @(loc_8C0B59E6,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b5a18

loc_8c0b594c:
	mov.b @(0x05,r14),r0 
	mov 0x15,r5
	mov.l @(loc_8c0b59ec,pc),r3
	mov 0x1B,r6
	add 0x01,r0
	mov.l @(0x14,r14),r12
	mov.b r0,@(0x05,r14) 
	mov 0x3E,r0
	mov.w r0,@(0x1C,r14) 
	jsr @r3
	mov r14,r4
	mova @(loc_8C0B59F0,pc),r0 
	mov.l @(loc_8C0B59F8,pc),r4
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C0B59F4,pc),r0 
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0B59E8,pc),r0
	mov.w @(r0,r12),r3
	tst r3,r3
	bt loc_8c0b597e
	mov.l @(loc_8C0B59FC,pc),r4

loc_8c0b597e:
	lds r4,fpul
	mova @(loc_8C0B5A00,pc),r0 
	fmov.s @r0,fr2
	mova @(loc_8C0B5A04,pc),r0 
	fmov.s @r0,fr1
	mov 0x34,r0
	float fpul,fr3
	fmov.s @(r0,r12),fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr3,fr0
	fmov.s @(r0,r14),fr3
	mova @(loc_8C0B5A08,pc),r0 
	fsub fr3,fr0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr0
	fmov.s fr0,@(r0,r14) 
	mov 0x68,r0
	fmov.s fr15,@(r0,r14) 
	mova @(loc_8C0B5A0C,pc),r0 
	fmov.s @r0,fr2
	mov.w @(loc_8C0B59E8,pc),r0
	fmov.s fr2,@r15
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b59ba
	fmov.s @r15,fr3
	fneg fr3
	fmov.s fr3,@r15

loc_8c0b59ba:
	mov 0x34,r0
	fmov.s @r15,fr2
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	mov.w @(loc_8C0B59EA,pc),r7
	mov r15,r5
	fadd fr3,fr2
	mov.l @(loc_8c0b5a10,pc),r3
	mov 0x01,r6
	fmov.s fr2,@r15
	fmov.s @(r0,r14),fr3
	mov 0x04,r0
	fmov.s fr3,@(r0,r15) 
	jsr @r3
	mov r13,r4
	mov.l @(loc_8c0b5a14,pc),r2
	mov 0x49,r5
	jsr @r2
	mov r13,r4
	bra loc_8c0b5aa8
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B59E4:
	#data 0x019E
loc_8C0B59E6:
	#data 0x019F
loc_8C0B59E8:
	#data 0x0130
loc_8C0B59EA:
	#data 0x00F9
	#align4

loc_8c0b59ec:
	#data bank03.loc_8C034E8C
loc_8C0B59F0:
	#data 0x41892492
loc_8C0B59F4:
	#data 0xBF092492
loc_8C0B59F8:
	#data 0xFFF80000
loc_8C0B59FC:
	#data 0x00080000
loc_8C0B5A00:
	#data 0x3FD55555
loc_8C0B5A04:
	#data 0x47800000
loc_8C0B5A08:
	#data 0x42800000
loc_8C0B5A0C:
	#data 0xC2555555
loc_8c0b5a10:
	#data bank10.loc_8c10235c
loc_8c0b5a14:
	#data bank04.loc_8c04223a

;==============================================
loc_8c0b5a18:
	mov.l @(loc_8c0b5b44,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
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
	mov 0x5C,r0
	fmov.s @(r0,r14),fr4
	mova @(loc_8C0B5B48,pc),r0 
	fmov.s @r0,fr6
	mov 0x68,r0
	fldi0 fr2
	fmov.s @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bt/s loc_8c0b5a84
	fmov fr6,fr5
	fmov.s @(r0,r14),fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bt loc_8c0b5a78
	mova @(loc_8C0B5B4C,pc),r0 
	fneg fr4
	fmov.s @r0,fr5

loc_8c0b5a78:
	fcmp/gt fr4,fr6
	bt loc_8c0b5a84
	mov 0x68,r0
	fmov.s fr15,@(r0,r14) 
	mov 0x5C,r0
	fmov.s fr5,@(r0,r14) 

loc_8c0b5a84:
	mov.l @(loc_8c0b5b50,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0b5a9e
	mov.l @(0x14,r14),r4
	mov.b @(0x05,r4),r0 
	extu.b r0,r0
	cmp/eq 0x03,r0 
	bf loc_8c0b5b2a
	mov 0x05,r0
	bra loc_8c0b5b2a
	mov.b r0,@(0x05,r4) 

loc_8c0b5a9e:
	mov.l @(loc_8c0b5b54,pc),r2
	jsr @r2
	mov r14,r4
	bra loc_8c0b5b30
	nop 

loc_8C0B5AA8:
	mov.l @(loc_8C0B5B44,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??	
	cmp/pl r0
	bt loc_8C0B5B30
	mov.w @(loc_8C0B5B3E,pc),r0 ; r0 set to 0x19f
	mov.l @(0x14,r14),r4
	mov.b @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0B5B26
	mov.l @(0x18,r14),r5
	mov.w @(loc_8C0B5B40,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0B5B26
	mov.w @(loc_8C0B5B42,pc),r0 ; r0 set to 0x1B0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8C0B5B26
	mov.l @(r0,r14),r3
	add 0x5C,r0 ; r0 set to 0x20c
	mov.l @(r0,r5),r2
	cmp/eq r3,r2
	bf loc_8C0B5B26
	mov.w @(loc_8C0B5B40,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	tst 0x01,r0
	bf loc_8C0B5B26
	mov 0x06,r0 ; r0 set to 0x06
	bra loc_8C0B5B2a
	mov.b r0,@(0x05,r4)

loc_8c0b5b26:
	mov 0x07,r0
	mov.b r0,@(0x05,r4) 

loc_8c0b5b2a:
	mov r13,r5
	bsr loc_8c0b68c2
	mov r14,r4

loc_8C0B5B30:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B5B3E:
	#data 0x019f
loc_8C0B5B40:
	#data 0x019e
loc_8C0B5B42:
	#data 0x01B0
	#align4

loc_8C0B5B44:
	#data bank03.loc_8c034dee
loc_8c0b5b48:
	#data 0x41555555
loc_8c0b5b4c:
	#data 0xC1555555
loc_8C0B5B50:
	#data bank03.loc_8c03340c
loc_8C0B5B54:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B5B58:
	mov r4,r3
	mov.l @(loc_8C0B5CC0,pc),r1 ; r1 set to 0x8C15974c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B5B6A:
	mov.w @(loc_8C0B5CB2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0B5CC4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0B5CB2,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B5CB4,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0B5CB6,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0B5CB8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B5CC8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r6 ; r6 set to 0x00
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0B5CB6,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov.w @(loc_8C0B5CBA,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0B5CCC,pc),r0  ; r0 set to 0x8C0B5CCc
	fmov.s @r0,fr4
	mova @(loc_8C0B5CD0,pc),r0  ; r0 set to 0x8C0B5CD0
	fmov.s @r0,fr5
	mov.w @(loc_8C0B5CBC,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8C0B5BEc
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	bra loc_8C0B5BFc
	fmov.s fr5,@(r0,r4)

loc_8C0B5BEC:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0B5CD4,pc),r0  ; r0 set to 0x8C0B5CD4
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r4)

loc_8C0B5BFC:
	mov r6,r0 ; r0 ??? bc r6 is ???	
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.w r0,@(0x1E,r4)
	mov 0x30,r3 ; r3 set to 0x30, r3 set to 0x30
	mov.w @(loc_8C0B5CBE,pc),r0 ; r0 set to 0x13D, r0 set to 0x13d
	mov.b r6,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13C, r0 set to 0x13c
	mov.b r6,@(r0,r4)
	add 0x03,r0 ; r0 set to 0x13F, r0 set to 0x13f
	mov.b r3,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13E, r0 set to 0x13e
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0B5C1A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	mov.l @(loc_8C0B5CD8,pc),r3 ; r3 set to 0x8C03340C, r3 set to 0x8C03340C, r3 set to 0x8C03340c
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	mov.l r5,@r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0B5C86
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5F, r0 set to 0x5F, r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??, r0 ??, r0 ??	
	cmp/pz r0
	bt loc_8C0B5C92
	mov.w @(0x1E,r14),r0
	mov r14,r4
	add 0x34,r4
	mov.w r0,@(0x1C,r14)
	mov 0xFF,r5 ; r5 set to 0xFFFFFFFF, r5 set to 0xFFFFFFFF, r5 set to 0xFFFFFFFf
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0B5CDC,pc),r3 ; r3 set to 0x8C100672, r3 set to 0x8C100672, r3 set to 0x8C100672
	jmp @r3
	mov.l @r15+,r14

loc_8C0B5C86:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0B68C2
	mov.l @r15+,r14

loc_8C0B5C92:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B5C9A:
	mov r4,r3
	mov.l @(loc_8C0B5CE0,pc),r1 ; r1 set to 0x8C15975c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B5CAC:
	mov.l @(loc_8C0B5CE4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B5CB2:
	#data 0x00Dc
loc_8C0B5CB4:
	#data 0x00C0
loc_8C0B5CB6:
	#data 0x012c
loc_8C0B5CB8:
	#data 0x01A3
loc_8C0B5CBA:
	#data 0x041c
loc_8C0B5CBC:
	#data 0x0130
loc_8C0B5CBE:
	#data 0x013d
	#align4

loc_8C0B5CC0:
	#data bank15.loc_8c15974c
loc_8C0B5CC4:
	#data bank12.loc_8c129560
loc_8C0B5CC8:
	#data bank12.loc_8c1294C8
loc_8C0B5CCC:
	#data 0xC33AAAAa
loc_8C0B5CD0:
	#data 0xC292AAAa
loc_8C0B5CD4:
	#data 0x4292AAAa
loc_8C0B5CD8:
	#data bank03.loc_8c03340c
loc_8C0B5CDC:
	#data bank10.loc_8c100672
loc_8C0B5CE0:
	#data bank15.loc_8c15975c
loc_8C0B5CE4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0B5CE8:
	mov r4,r3
	mov.l @(loc_8C0B5DFC,pc),r1 ; r1 set to 0x8C15976c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B5CFA:
	mov.l @(loc_8C0B5E00,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0B5D00:
	mov r4,r3
	mov.l @(loc_8C0B5E04,pc),r1 ; r1 set to 0x8C15977c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B5D12:
	mov.l @(loc_8C0B5E00,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0B5D18:
	mov r4,r3
	mov.l @(loc_8C0B5E08,pc),r1 ; r1 set to 0x8C15978c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B5D2A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xB8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xB0,PC),r2
	add 0x01,r0
	mov.l @(0xCC,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xAA,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xA6,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(0x8A,PC),r0
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
	mov.l @(0x90,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x8C,PC),r3
	mov.b @(r0,r13),r2
	mov 0x15,r5
	mov 0x1F,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B5D9C:
	mov.l @(0x14,r4),r6
	mov 0x02,r3
	mov.b @(0x4,r6),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c0b5dbc
	mov.w @(0x4A,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0b5dbc
	mov.w @(0x42,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bt loc_8c0b5dc0

loc_8C0B5DBC:
	bra loc_8c0b68c2
	nop 

loc_8C0B5DC0:
	mov 0x34,r0
	fmov @(r0,r6),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r6),fr3
	fmov fr3,@(r0,r4)
	mov 0x24,r0
	mov.b @(r0,r6),r3
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.l @(0x40,PC),r3
	mov.b @(r0,r6),r2
	jmp @r3
	mov.b r2,@(r0,r4)

loc_8C0B5DDC:
	mov r4,r3
	mov.l @(loc_8C0B5E1C,pc),r1 ; r1 set to 0x8C15979c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_08c0b5dee:
	#data 0x00dc
loc_08c0b5df0:
	#data 0x00c0
loc_08c0b5df2:
	#data 0x012c
loc_08c0b5df4:
	#data 0x01a3
loc_08c0b5df6:
	#data 0x0159
loc_08c0b5df8:
	#data 0x0158
	#align4

loc_8C0B5DFC:
	#data bank15.loc_8c15976c
loc_8C0B5E00:
	#data bank04.loc_8c0450C0
loc_8C0B5E04:
	#data bank15.loc_8c15977c
loc_8C0B5E08:
	#data bank15.loc_8c15978c
loc_8C0B5E0C:
	#data bank12.loc_8c129560
loc_8C0B5E10:
	#data bank12.loc_8c1294C8
loc_8C0B5E14:
	#data bank03.loc_8c034e8c
loc_8C0B5E18:
	#data bank03.loc_8c034dee
loc_8C0B5E1C:
	#data bank15.loc_8c15979c

;==============================================
loc_8C0B5E20:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xC0,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xB8,PC),r2
	add 0x01,r0
	mov.l @(0xC8,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xB2,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xAE,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(0x92,PC),r0
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
	mov.l @(0x90,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x8C,PC),r3
	mov.b @(r0,r13),r2
	mov 0x0F,r5
	mov 0x01,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B5E92:
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0b5eae
	mov.w @(0x56,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(0x54,PC),r0
	mov.w @(r0,r5),r3
	cmp/eq r3,r2
	bf loc_8c0b5eae
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x01,r0
	bt loc_8c0b5eb4

loc_8C0B5EAE:
	mov.l @(0x5C,PC),r2
	jmp @r2
	nop 

loc_8C0B5EB4:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x36,PC),r0
	mov.l @(r0,r5),r3
	mov 0x24,r0
	mov.b @(r0,r3),r2
	mov 0x08,r3
	mov.b r2,@(r0,r4)
	mov 0x31,r0
	rts 
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0B5ED2:
	mov.w @(loc_8C0B5EFC,pc),r0 ; r0 set to 0x2Ab
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r4,@-r15
	mov.b r3,@(r0,r5)
	mov.l @r15,r2
	mov.l @(loc_8C0B5F10,pc),r1 ; r1 set to 0x8C1597Ac
	mov.b @(0x04,r2),r0
	mov r2,r4
	extu.b r0,r0 ; r0 set to 0xAb
	shll2 r0 ; r0 set to 0x2Ac
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b5eec:
	#data 0x00dc
loc_8c0b5eee:
	#data 0x00c0
loc_8c0b5ef0:
	#data 0x012c
loc_8c0b5ef2:
	#data 0x01a3
loc_8c0b5ef4:
	#data 0x00d4
loc_8c0b5ef6:
	#data 0x0158
loc_8c0b5ef8:
	#data 0x0150
loc_8c0b5efa:
	#data 0x01c8
loc_8C0B5EFC:
	#data 0x02Ab
	#align4

loc_8C0B5F00:
	#data bank12.loc_8c129560
loc_8C0B5F04:
	#data bank12.loc_8c1294C8
loc_8C0B5F08:
	#data bank03.loc_8c034e8c
loc_8C0B5F0C:
	#data bank04.loc_8c0450C0
loc_8C0B5F10:
	#data bank15.loc_8c1597Ac

;==============================================
loc_8C0B5F14:
	mov.w @(0x154,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x15C,PC),r3
	add 0x01,r0
	mov.w @(0x148,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0x146,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x142,PC),r0
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
	mov.w @(0x126,PC),r0
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
	mov.l @(0x120,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x08,r3
	mov.b r2,@(r0,r4)
	mov 0x31,r0
	mov.b r3,@(r0,r4)
	add 0x78,r3
	mov.w @(0xFE,PC),r0
	mov.l @(r0,r5),r2
	mov.w @(0xFC,PC),r0
	mov.l r2,@(0x14,r4)
	mov 0x00,r2
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r2,@(r0,r4)
	add 0x02,r0
	mov 0x40,r3
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0xF0,PC),r0
	fmov @r0,fr4
	mova @(0xF0,PC),r0
	fmov @r0,fr5
	mov.w @(0xD8,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0b5fac
	mova @(0xE8,PC),r0
	fmov @r0,fr4
	mova @(0xE8,PC),r0
	fmov @r0,fr5

loc_8C0B5FAC:
	mov 0x34,r0
	mov.l @(0xEC,PC),r3
	fmov @(r0,r5),fr3
	mov 0x14,r5
	mov 0x09,r6
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov fr5,@(r0,r4)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0B5FD0:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0B60A0,pc),r1 ; r1 set to 0x8C1597Bc
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B5FEA:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l r14,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	mov r5,r14
	add r4,r1 ; r1 ??? bc r4 is ???	
	sts.l pr,@-r15
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r4),fr2
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	fmov.s @(r0,r4),fr2
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr3
	mov.w @(loc_8C0B607A,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8C0B6066
	mov.b @(0x05,r4),r0
	mov 0x0E,r6 ; r6 set to 0x0e
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x41d
	mov.l @(loc_8C0B609C,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r0,@(0x05,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	jsr @r3
	mov 0x14,r5 ; r5 set to 0x14
	lds.l @r15+,pr
	mov.l @(loc_8C0B60A4,pc),r2 ; r2 set to 0x8C042008
	mov 0x1A,r5 ; r5 set to 0x1a
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0B6066:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b606c:
	#data 0x00dc
loc_8c0b606e:
	#data 0x00c0
loc_8c0b6070:
	#data 0x012c
loc_8c0b6072:
	#data 0x01a3
loc_8c0b6074:
	#data 0x01c8
loc_8c0b6076:
	#data 0x013c
loc_8c0b6078:
	#data 0x0130
loc_8C0B607A:
	#data 0x041c
	#align4

loc_8C0B607C:
	#data bank12.loc_8c129560
loc_8C0B6080:
	#data bank12.loc_8c1294C8
loc_8C0B6084:
	#data 0x44809249
loc_8C0B6088:
	#data 0x43200000
loc_8C0B608c:
	#data 0xC0555555
loc_8C0B6090:
	#data 0xC3200000
loc_8C0B6094:
	#data 0x40555555
loc_8C0B6098:
	#data 0xC2700000
loc_8C0B609C:
	#data bank03.loc_8c034e8c
loc_8C0B60A0:
	#data bank15.loc_8c1597Bc
loc_8C0B60A4:
	#data bank04.loc_8c042008

;==============================================
loc_8C0B60A8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.l @(0x14,r14),r4
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt.s loc_8c0b60fc
	mov 0x02,r5
	mov r5,r0
	nop 
	mov.l @(0x128,PC),r3
	mov 0x14,r5
	mov.b r0,@(0x5,r14)
	mov 0x09,r6
	jsr @r3
	mov r14,r4
	mova @(0x120,PC),r0
	fmov @r0,fr4
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x100,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b60ec
	mova @(0x10C,PC),r0
	fmov @r0,fr4

loc_8C0B60EC:
	mov 0x5C,r0
	mov r14,r4
	fmov fr4,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0b6184
	mov.l @r15+,r14

loc_8C0B60FC:
	mov.w @(0xE6,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0b617c
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0b617c
	mov 0x03,r0
	mov.b r0,@(0x5,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x44,r3
	mov 0x00,r4
	fmov fr3,@(r0,r14)
	mov.w @(0xC6,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov 0x26,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xC8,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xAC,PC),r0
	fmov @r0,fr4
	mov.w @(0x84,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b6168
	mova @(0xA4,PC),r0
	fmov @r0,fr4

loc_8C0B6168:
	mov 0x5C,r0
	mov r14,r4
	mov 0x14,r5
	fmov fr4,@(r0,r14)
	mov 0x1A,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x74,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B617C:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B6184:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0B6210,pc),r3 ; r3 set to 0x8C0332E0
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r5,@r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0B61Dc
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0B68C2
	mov.l @r15+,r14

loc_8C0B61DC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b61e4:
	#data 0x0130
loc_8c0b61e6:
	#data 0x01f6
loc_8c0b61e8:
	#data 0x019c
	#align4

loc_8C0B61EC:
	#data bank03.loc_8c034e8c
loc_8C0B61f0:
	#data 0x40555555
loc_8C0B61f4:
	#data 0x42700000
loc_8C0B61f8:
	#data 0xC0555555
loc_8C0B61fc:
	#data 0x43892492
loc_8C0B6200:
	#data 0x8C2896B0
loc_8C0B6204:
	#data 0x41CDB6Db
loc_8C0B6208:
	#data 0xBD555555
loc_8C0B620c:
	#data 0x3D555555
loc_8C0B6210:
	#data bank03.loc_8c0332E0

;==============================================
loc_8C0B6214:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0B62F2,pc),r0 ; r0 set to 0x1A0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0B622e
	mov.b @(r0,r14),r3
	add 0xFF,r3
	bra loc_8C0B62Ca
	mov.b r3,@(r0,r14)

loc_8c0b622e:
	mov 0x5C,r1
	mov.l @(loc_8c0b62fc,pc),r3
	add r14,r1
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
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0 
	tst r0,r0
	bt loc_8c0b62a6
	mov.w @(loc_8C0B62F4,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b62a6
	mov.w @(0x1C,r14),r0 
	mov 0x26,r3
	mov 0x00,r4
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	mov.w @(loc_8C0B62F6,pc),r0
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r4,@(r0,r14) 
	add 0xF2,r0
	mov.b r4,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C0B6300,pc),r3
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 

loc_8c0b62a6:
	mov.l @(loc_8C0B6304,pc),r3
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	fmov.s @r3,fr2
	fcmp/gt fr3,fr2
	bf loc_8c0b62be
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c0b6308,pc),r1
	jmp @r1
	mov.l @r15+,r14

loc_8c0b62be:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	bra loc_8c0b68c2
	mov.l @r15+,r14

loc_8C0B62CA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B62D2:
	mov.w @(loc_8C0B62F8,pc),r0 ; r0 set to 0x2Ab
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r5)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r14,r4
	mov.l @(loc_8C0B630C,pc),r1 ; r1 set to 0x8C1597Cc
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B62F2:
	#data 0x01A0
loc_8c0b62f4:
	#data 0x019e
loc_8c0b62f6:
	#data 0x01A1
loc_8C0B62F8:
	#data 0x02Ab
	#align4

loc_8C0B62FC:
	#data bank03.loc_8c034dee
loc_8c0b6300:
	#data 0x8C2896B0
loc_8c0b6304:
	#data 0x8C26A5A8
loc_8C0B6308:
	#data bank04.loc_8c045748
loc_8C0B630C:
	#data bank15.loc_8c1597Cc

;==============================================
loc_8C0B6310:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x15C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x168,PC),r3
	add 0x01,r0
	mov.w @(0x150,PC),r2
	mov.b r0,@(0x4,r14)
	mov.w @(0x14E,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x14A,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x12E,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0x12C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x08,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x108,PC),r0
	mov.w @(0x108,PC),r3
	mov.l @(r0,r5),r2
	mov.w @(0x106,PC),r0
	mov.l r2,@(0x14,r14)
	mov 0x00,r2
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov 0x60,r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov 0x40,r2
	mov.b r2,@(r0,r14)
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr4
	mova @(0xFC,PC),r0
	fmov @r0,fr5
	mov.w @(0xE0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b63ae
	mova @(0xF4,PC),r0
	fmov @r0,fr4
	mova @(0xF4,PC),r0
	fmov @r0,fr5

loc_8C0B63AE:
	mov 0x34,r0
	mov.l @(0xF4,PC),r3
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr5,@(r0,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xDC,PC),r3
	mov 0x01,r2
	mov r14,r4
	mov.b r2,@r14
	lds.l @r15+,pr
	mov 0x0F,r6
	mov 0x14,r5
	jmp @r3
	mov.l @r15+,r14

loc_8C0B63E0:
	mov r4,r3
	mov.l @(loc_8C0B64B0,pc),r1 ; r1 set to 0x8C1597Dc
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B63F2:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l r14,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	mov r5,r14
	add r4,r1 ; r1 ??? bc r4 is ???	
	sts.l pr,@-r15
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r4),fr2
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	fmov.s @(r0,r4),fr2
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr3
	mov.w @(loc_8C0B6484,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8C0B646e
	mov.b @(0x05,r4),r0
	mov 0x11,r6 ; r6 set to 0x11
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x41d
	mov.l @(loc_8C0B64AC,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r0,@(0x05,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	jsr @r3
	mov 0x14,r5 ; r5 set to 0x14
	lds.l @r15+,pr
	mov.l @(loc_8C0B64B4,pc),r2 ; r2 set to 0x8C042008
	mov 0x19,r5 ; r5 set to 0x19
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0B646E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b6474:
	#data 0x00dc
loc_8c0b6476:
	#data 0x00c0
loc_8c0b6478:
	#data 0x012c
loc_8c0b647a:
	#data 0x01a3
loc_8c0b647c:
	#data 0x01c8
loc_8c0b647e:
	#data 0x0080
loc_8c0b6480:
	#data 0x013c
loc_8c0b6482:
	#data 0x0130
loc_8C0B6484:
	#data 0x041c
	#align4

loc_8C0B6488:
	#data bank12.loc_8c129560
loc_8C0B648C:
#data bank12.loc_8c1294C8
loc_8C0B6490:
	#data 0x44809249
loc_8C0B6494:
	#data 0x43200000
loc_8C0B6498:
	#data 0xC0555555
loc_8C0B649c:
	#data 0xC3200000
loc_8C0B64a0:
	#data 0x40555555
loc_8C0B64a4:
	#data 0xC2700000
loc_8C0B64A8:
	#data bank10.loc_8c104434
loc_8C0B64AC:
	#data bank03.loc_8c034e8c
loc_8C0B64B0:
	#data bank15.loc_8c1597Dc
loc_8C0B64B4:
	#data bank04.loc_8c042008

;==============================================
loc_8C0B64B8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.l @(0x14,r14),r4
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0b6508
	mov.l @(0xD4,PC),r3
	mov 0x02,r0
	mov 0x14,r5
	mov.b r0,@(0x5,r14)
	mov 0x0F,r6
	jsr @r3
	mov r14,r4
	mova @(0xCC,PC),r0
	fmov @r0,fr4
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xAC,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b64f8
	mova @(0xB8,PC),r0
	fmov @r0,fr4

loc_8C0B64F8:
	mov 0x5C,r0
	mov r14,r4
	fmov fr4,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0b6184
	mov.l @r15+,r14

loc_8C0B6508:
	mov.w @(0x92,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0b6530
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0b6530
	mov 0x14,r6
	mov r14,r4
	mov 0x03,r0
	mov r6,r5
	mov.b r0,@(0x5,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x78,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B6530:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B6538:
	mov.w @(loc_8C0B65A0,pc),r0 ; r0 set to 0x41c
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mova @(loc_8C0B65B8,pc),r0  ; r0 set to 0x8C0B65B8
	fsub fr3,fr2
	fmov.s @r0,fr3
	fcmp/gt fr2,fr3
	bf/s loc_8C0B6576
	mov r4,r13
	mov.b @(0x05,r13),r0
	mov 0x4B,r5 ; r5 set to 0x4b
	mov.l @(loc_8C0B65BC,pc),r3 ; r3 set to 0x8C04223a
	add 0x01,r0 ; r0 set to 0x8C0B65B9
	mov.b r0,@(0x05,r13)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.w r0,@(0x1C,r13)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(loc_8C0B65C0,pc),r2 ; r2 set to 0x8C0B424e
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @r15+,r13
	mov 0x00,r6 ; r6 set to 0x00
	jmp @r2
	mov.l @r15+,r14

loc_8C0B6576:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B657E:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8C0B6598
	mov.b @(0x05,r4),r0
	mov 0x15,r6 ; r6 set to 0x15
	mov.l @(loc_8C0B65A4,pc),r3 ; r3 set to 0x8C034E8c
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	jmp @r3
	mov 0x14,r5

loc_8C0B6598:
	rts
	nop

;----------------------------------------------
loc_8c0b659c:
	#data 0x0130
loc_8c0b659e:
	#data 0x01f6
loc_8c0b65a0:
	#data 0x041c
	#align4

loc_8C0B65A4:
	#data bank03.loc_8c034e8c
loc_8C0B65A8:
	#data 0x40555555
loc_8C0B65Ac:
	#data 0x42700000
loc_8C0B65b0:
	#data 0xC0555555
loc_8C0B65b4:
	#data 0x43CDB6Db
loc_8C0B65B8:
	#data 0x434DB6Db
loc_8C0B65BC:
	#data bank04.loc_8c04223a
loc_8C0B65C0:
	#data loc_8c0b424e

;==============================================
loc_8C0B65C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x140,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b6616
	mov.l @(0x134,PC),r3
	mov 0x02,r0
	mov 0x14,r5
	mov.b r0,@(0x5,r14)
	mov 0x0F,r6
	jsr @r3
	mov r14,r4
	mova @(0x128,PC),r0
	fmov @r0,fr4
	mova @(0x128,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xFA,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b6606
	mova @(0x118,PC),r0
	fmov @r0,fr4

loc_8C0B6606:
	mov 0x5C,r0
	mov r14,r4
	fmov fr4,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0b6184
	mov.l @r15+,r14

loc_8C0B6616:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B661E:
	mov.w @(loc_8C0B66FA,pc),r0 ; r0 set to 0x2Ab
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r5)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r14,r4
	mov.l @(loc_8C0B6720,pc),r1 ; r1 set to 0x8C1597F4
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	mov.l @r15+,r14

loc_8C0B663E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xB6,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xD8,PC),r3
	add 0x01,r0
	mov.w @(0xAA,PC),r2
	mov.b r0,@(0x4,r14)
	mov.w @(0xA8,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xA4,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x88,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x08,r3
	mov 0x50,r4
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r3
	mov.w @(0x5E,PC),r0
	mov.l @(r0,r5),r2
	mov.w @(0x5C,PC),r0
	mov.l r2,@(0x14,r14)
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov 0x30,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x4A,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov.w @(0x28,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b66d8
	mova @(0x58,PC),r0
	fmov @r0,fr4

loc_8C0B66D8:
	mov 0x34,r0
	mov.l @(0x58,PC),r3
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x28,PC),r3
	mov 0x01,r2
	mov r14,r4
	mov.b r2,@r14
	lds.l @r15+,pr
	mov 0x08,r6
	mov 0x14,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b66f8:
	#data 0x0130
loc_8c0b66fa:
	#data 0x02ab
loc_8c0b66fc:
	#data 0x00dc
loc_8c0b66fe:
	#data 0x00c0
loc_8c0b6700:
	#data 0x012c
loc_8c0b6702:
	#data 0x01a3
loc_8c0b6704:
	#data 0x01c8
loc_8c0b6706:
	#data 0x013c
loc_8c0b6708:
	#data 0x041c
	#align4

loc_8C0B670C:
	#data bank03.loc_8c034dee
loc_8C0B6710:
	#data bank03.loc_8c034e8c
loc_8C0B6714:
	#data 0x40555555
loc_8C0B6718:
	#data 0x42700000
loc_8C0B671c:
	#data 0xC0555555
loc_8C0B6720:
	#data bank15.loc_8c1597F4
loc_8C0B6724:
	#data bank12.loc_8c129560
loc_8C0B6728:
	#data bank12.loc_8c1294C8
loc_8C0B672c:
	#data 0xC3055555
loc_8C0B6730:
	#data 0x43055555
loc_8C0B6734:
	#data bank10.loc_8c104434

;==============================================
loc_8C0B6738:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0B6784
	mov.l @(loc_8C0B6858,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0B67D2
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x14,r5 ; r5 set to 0x14
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x03,r6 ; r6 set to 0x03
	mov.w @(loc_8C0B684C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	mova @(loc_8C0B685C,pc),r0  ; r0 set to 0x8C0B685c
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0B6860,pc),r0  ; r0 set to 0x8C0B6860
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0B6864,pc),r2 ; r2 set to 0x8C034E8c
	jmp @r2
	mov.l @r15+,r14

loc_8C0B6784:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0B6868,pc),r3 ; r3 set to 0x8C0332E0
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0B67D2
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0B68C2
	mov.l @r15+,r14

loc_8C0B67D2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B67DA:
	mov r4,r3
	mov.l @(loc_8C0B686C,pc),r1 ; r1 set to 0x8C159804
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B67EC:
	mov.w @(loc_8C0B684E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0B6870,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0B684E,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0B6850,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0B6852,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0B6854,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0B6874,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0B6864,pc),r3 ; r3 set to 0x8C034E8c
	mov.b @(r0,r5),r2
	mov 0x14,r5 ; r5 set to 0x14
	mov 0x19,r6 ; r6 set to 0x19
	mov.b r2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B684C:
	#data 0x0130
loc_8C0B684E:
	#data 0x00Dc
loc_8C0B6850:
	#data 0x00C0
loc_8C0B6852:
	#data 0x012c
loc_8C0B6854:
	#data 0x01A3
	#align4

loc_8C0B6858:
	#data bank03.loc_8c034dee
loc_8C0B685C:
	#data 0x40555555
loc_8C0B6860:
	#data 0x42700000
loc_8C0B6864:
	#data bank03.loc_8c034e8c
loc_8C0B6868:
	#data bank03.loc_8c0332E0
loc_8C0B686C:
	#data bank15.loc_8c159804
loc_8C0B6870:
	#data bank12.loc_8c129560
loc_8C0B6874:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0B6878:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x4C,PC),r0
	mov.w @(0x4C,PC),r2
	mov.l r5,@r15
	mov.l @(0x14,r14),r4
	mov.w @(r0,r4),r3
	extu.w r3,r3
	cmp/eq r2,r3
	bf loc_8c0b68ae
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x00,r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b68ba

loc_8C0B68AE:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0b68c2
	mov.l @r15+,r14

loc_8C0B68BA:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B68C2:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0B68CA:
	mov.l @(loc_8C0B68D8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8c0b68d0:
	#data 0x0158
loc_8c0b68d2:
	#data 0x1414
	#align4

loc_8C0B68D4:
	#data bank03.loc_8c034dee
loc_8C0B68D8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0b68dc:
	mov.l r14,@-r15
	mov 0x0D,r1
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r6,r12
	mov.l @(0x18C,PC),r2
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @r2,r3
	cmp/gt r1,r3
	bf.s loc_8c0b697c
	mov 0x00,r4
	mov.l @(0x180,PC),r14
	mov 0x02,r5
	mov 0x00,r6
	jsr @r14
	mov r6,r4
	mov r0,r4
	mov 0x00,r2
	mov 0x20,r0
	mov.w @(0x158,PC),r10
	mov.l @(0x174,PC),r11
	mov r2,r6
	mov 0x02,r5
	mov.l r11,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x26,r0
	extu.b r3,r3
	or r10,r3
	mov.w r3,@(r0,r4)
	jsr @r14
	mov r2,r4
	mov r0,r4
	mov 0x20,r0
	mov 0x01,r3
	mov.l r11,@(0x10,r4)
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov 0x00,r6
	mov 0x02,r5
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x26,r0
	extu.b r3,r3
	or r10,r3
	mov.w r3,@(r0,r4)
	jsr @r14
	mov r6,r4
	mov r0,r4
	mov 0x20,r0
	mov 0x02,r3
	mov.l r11,@(0x10,r4)
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov 0x00,r2
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x26,r0
	extu.b r3,r3
	or r10,r3
	mov.w r3,@(r0,r4)
	mov.w @(0xEA,PC),r0
	mov.b r2,@(r0,r13)

loc_8c0b697c:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B698E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0B6A68,pc),r0 ; r0 set to 0x2Ab
	mov 0x02,r3 ; r3 set to 0x02
	mov.l @(0x18,r14),r5
	mov r14,r4
	mov.l @(loc_8C0B6A84,pc),r1 ; r1 set to 0x8C1598Dc
	mov.b r3,@(r0,r5)
	mov.w @(loc_8C0B6A6A,pc),r0 ; r0 set to 0x1F1
	mov.b r3,@(r0,r5)
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0xF1
	shll2 r0 ; r0 set to 0x3C4
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	mov.l @r15+,r14

loc_8C0B69AE:
	mov.w @(0xBA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xD0,PC),r3
	add 0x01,r0
	mov.w @(0xAE,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0xAC,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xA8,PC),r0
	mov 0x01,r7
	mov r4,r1
	add 0x50,r1
	mov.b r7,@(r0,r4)
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
	mov.w @(0x8C,PC),r0
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
	mov.l @(0x90,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x8C,PC),r6
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r5
	extu.b r5,r5
	shll2 r5
	mov r5,r0
	nop 
	mov.w @(0x5E,PC),r2
	mov r0,r1
	mov.b @(r0,r6),r3
	add 0x01,r1
	add r4,r2
	mov.w @(0x56,PC),r0
	add r6,r1
	mov.b r3,@r2
	mov r5,r2
	mov.b @r1,r3
	add 0x02,r2
	add r6,r2
	mov.b r3,@(r0,r4)
	mov.b @r2,r3
	mov r5,r2
	add 0x03,r2
	add 0x01,r0
	add r2,r6
	mov.b r3,@(r0,r4)
	mov.b @r6,r3
	add 0x01,r0
	mov 0x00,r5
	mov.b r3,@(r0,r4)
	mov r5,r0
	nop 
	mov.b r0,@(0x5,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0b6a56
	mov r7,r0
	nop 
	mov.b r0,@(0x5,r4)

loc_8C0B6A56:
	mov r5,r0
	nop 
	mov.b r0,@(0x6,r4)
	lds.l @r15+,pr
	mov.w @(0xE,PC),r0
	rts 
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8c0b6a64:
	#data 0x3800
loc_8c0b6a66:
	#data 0x02a8
loc_8c0b6a68:
	#data 0x02ab
loc_8c0b6a6a:
	#data 0x01f1
loc_8c0b6a6c:
	#data 0x00dc
loc_8c0b6a6e:
	#data 0x00c0
loc_8c0b6a70:
	#data 0x012c
loc_8c0b6a72:
	#data 0x01a3
loc_8c0b6a74:
	#data 0x013c
loc_8c0b6a76:
	#data 0x013d
	#align4

loc_8c0b6a78:
	#data 0x8C287AE8
loc_8C0B6A7C:
	#data bank04.loc_8c044F12
loc_8C0B6A80:
	#data loc_8c0b698e
loc_8C0B6A84:
	#data bank15.loc_8c1598Dc
loc_8C0B6A88:
	#data bank12.loc_8c129560
loc_8C0B6A8C:
	#data bank12.loc_8c1294C8
loc_8C0B6A90:
	#data bank15.loc_8c1598Ec

;==============================================
loc_8C0B6A94:
	mov r4,r3
	mov.l @(loc_8C0B6BF8,pc),r1 ; r1 set to 0x8C1598F8
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0B6AA6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf.s loc_8c0b6b44
	mov r5,r13
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	mov.l @(0x13C,PC),r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x12A,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r5
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r5,r5
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r5
	shll r3
	add r2,r3
	add r3,r5
	mov r5,r0
	nop 
	shll r0
	mov.w @(r0,r6),r4
	mov r5,r0
	nop 
	add 0x01,r0
	shll r0
	mov.w @(r0,r6),r5
	mov.w @(0xFE,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b6afe
	neg r5,r5
	neg r4,r4

loc_8C0B6AFE:
	exts.w r4,r4
	exts.w r5,r5
	add r5,r4
	lds r4,fpul
	mova @(0xF8,PC),r0
	fmov @r0,fr15
	mov 0x34,r0
	mov.l r5,@r15
	mov r14,r4
	float fpul,fr3
	fmov @(r0,r13),fr2
	fmov fr15,fr0
	mov r13,r5
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xDC,PC),r0
	mov.l @r15,r3
	fmov @r0,fr5
	neg r3,r3
	lds r3,fpul
	float fpul,fr2
	fmov fr2,fr4
	fmul fr15,fr4
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	bra loc_8c0b6bba
	mov.l @r15+,r14

loc_8C0B6B44:
	mov.l @(0xC4,PC),r3
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
	mov.w @(0x6C,PC),r0
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0b6bae
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fldi0 fr4
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x00,r0
	mov.b r0,@(0x6,r14)

loc_8C0B6BAE:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B6BBA:
	mova @(0x54,PC),r0
	mov.l r14,@-r15
	fmov @r0,fr6
	mov 0x5C,r0
	mov r4,r14
	mov.l @(0x50,PC),r3
	fdiv fr6,fr4
	mov r14,r4
	fdiv fr6,fr5
	mov 0x14,r5
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr5,@(r0,r14)
	mov 0x68,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov.l @(0x2C,PC),r0
	extu.b r6,r6
	shll r6
	mov.w @(r0,r6),r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b6bf2:
	#data 0x012c
loc_8c0b6bf4:
	#data 0x0130
loc_8c0b6bf6:
	#data 0x041c
	#align4

loc_8C0B6BF8:
	#data bank15.loc_8c1598F8
loc_8C0B6BFC:
	#data bank15.loc_8c159814
loc_8C0B6C00:
	#data 0x3FD55555
loc_8C0B6C04:
	#data 0x44809249
loc_8C0B6C08:
	#data 0xC4809249
loc_8C0B6C0C:
	#data bank03.loc_8c034dee
loc_8C0B6C10:
	#data 0x42000000
loc_8C0B6C14:
	#data bank15.loc_8c159908
loc_8C0B6C18:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0B6C1C:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x06,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	cmp/eq 0x00,r0
	bt loc_8C0B6C42
	cmp/eq 0x01,r0
	bt loc_8C0B6CA4
	cmp/eq 0x02,r0
	bt loc_8C0B6CBe
	bra loc_8C0B6CD8
	nop

loc_8C0B6C42:
	mov.b @(0x06,r14),r0
	mov 0x14,r5 ; r5 set to 0x14
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r12
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	extu.b r12,r12
	mov r12,r3
	shll r12
	extu.b r2,r2
	add r3,r12
	mov r2,r3
	shll2 r2
	shll2 r2
	sub r3,r2
	mov.l @(loc_8C0B6D34,pc),r3 ; r3 set to 0x8C034E8c
	add r2,r12
	mov.l @(loc_8C0B6D30,pc),r2 ; r2 set to 0x8C159880
	shll r12
	add r2,r12
	mov.w @r12+,r6
	jsr @r3
	mov r14,r4
	mov.w @r12+,r3 ; r3 ??? bc r12 is ???	
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
	mov.b r2,@(r0,r14)
	mov.w @r12,r0 ; r0 ??? bc r12 is ???	
	mov.w r0,@(0x1E,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0B6CD8
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov 0x04,r2 ; r2 set to 0x04
	extu.b r3,r3
	bra loc_8C0B6CD8
	cmp/ge r2,r3

loc_8C0B6CA4:
	lds.l @r15+,pr
	mov 0x21,r0 ; r0 set to 0x21
	mov r13,r5
	mov.b @(r0,r14),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @(loc_8C0B6D38,pc),r0 ; r0 set to 0x8C159910
	extu.b r3,r3
	shll2 r3
	mov.l @r15+,r13
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0B6CBE:
	mov.l @(loc_8C0B6D3C,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0B6CD8
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0B6CE2
	mov.l @r15+,r14

loc_8C0B6CD8:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B6CE2:
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x05,r4)
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C0B6E54
	mov.b r0,@(0x06,r4)

loc_8C0B6CEC:
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0b6cfc
	mov.w @(0x36,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0b6d00

loc_8C0B6CFC:
	bra loc_8c0b6ce2
	nop 

loc_8C0B6D00:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r2
	mov 0x31,r0
	mov.b r2,@(r0,r4)
	mov.w @(0x10,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0b6d28
	mov.l @(0x18,PC),r3
	jmp @r3
	nop 

loc_8C0B6D28:
	rts 
	nop 

;----------------------------------------------
loc_8c0b6d2c:
	#data 0x01d0
loc_8c0b6d2e:
	#data 0x014b
	#align4

loc_8C0B6D30:
	#data bank15.loc_8c159880
loc_8C0B6D34:
	#data bank03.loc_8c034e8c
loc_8C0B6D38:
	#data bank15.loc_8c159910
loc_8C0B6D3C:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0B6D40:
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0b6d66
	mov.w @(0xF0,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0b6d66
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c0b6d86
	mov.b @(r0,r5),r3
	cmp/pz r3
	bf loc_8c0b6d66
	mov.w @(0xDC,PC),r0
	mov.l @(r0,r5),r2
	tst r2,r2
	bf loc_8c0b6d6a

loc_8C0B6D66:
	bra loc_8c0b6ce2
	nop 

loc_8C0B6D6A:
	mov.l @(r0,r5),r3
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0b6d86
	mov.w @(0xC6,PC),r0
	mov.l @(r0,r5),r2
	mov.w @(0xC6,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x03,r0
	mov.b r0,@(0x5,r4)
	mov 0x00,r0
	bra loc_8c0b6f4c
	mov.b r0,@(0x6,r4)

loc_8C0B6D86:
	rts 
	nop

;----------------------------------------------
loc_8C0B6D8A:
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0b6da4
	mov.w @(0xA6,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0b6da8
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c0b6da8

loc_8C0B6DA4:
	bra loc_8c0b6ce2
	nop 

loc_8C0B6DA8:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r2
	mov 0x31,r0
	rts 
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0B6DC4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c0b6e1e
	mov r4,r14
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0b6df8
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0b6e1e
	mov.b @(0x6,r14),r0
	mov 0x14,r5
	mov.l @(0x58,PC),r3
	mov 0x15,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_8C0B6DF8:
	mov 0x34,r0
	mov r14,r4
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov.l @(0x3C,PC),r3
	mov r0,r2
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B6E1E:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0b6e2e
	mov.l @(0x28,PC),r3
	mov 0x1B,r5
	jsr @r3
	mov r13,r4

loc_8C0B6E2E:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0b6ce2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b6e3a:
	#data 0x01d0
loc_8c0b6e3c:
	#data 0x02a8
loc_8c0b6e3e:
	#data 0x01b0
loc_8c0b6e40:
	#data 0x0411
loc_8c0b6e42:
	#data 0x00cc
loc_8c0b6e44:
	#data 0x0141
	#align4

loc_8C0B6E48:
	#data bank03.loc_8c034e8c
loc_8C0B6E4C:
	#data bank03.loc_8c034dee
loc_8C0B6E50:
	#data bank04.loc_8c042008

;==============================================
loc_8c0b6e54:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x06,r14),r0 
	tst r0,r0
	bf loc_8c0b6edc
	mov.b @(0x06,r14),r0 
	mov.l @(loc_8c0b6f60,pc),r6
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	mov 0x20,r0
	mov.b @(r0,r14),r5
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r5,r5
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r5
	shll r3
	add r2,r3
	add r3,r5
	mov r5,r0
	nop 
	shll r0
	mov.w @(r0,r6),r4
	mov r5,r0
	nop 
	add 0x01,r0
	shll r0
	mov.w @(r0,r6),r13
	mov.w @(loc_8C0B6F5E,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0b6ea8
	mov 0x32,r0
	neg r13,r13
	neg r4,r4

loc_8c0b6ea8:
	exts.w r4,r4
	mov.w r0,@(0x1E,r14) 
	lds r4,fpul 
	mova @(loc_8C0B6F64,pc),r0 
	fmov.s @r0,fr15
	exts.w r13,r13
	mov 0x34,r0
	mov r14,r4
	float fpul,fr3
	lds r13,fpul 
	fmov.s @(r0,r14),fr2
	fmov fr15,fr0
	fmac fr0,fr3,fr2
	float fpul,fr3
	fmov.s fr2,@(r0,r14) 
	mova @(loc_8C0B6F68,pc),r0 
	mov.l @r15,r5
	fmov fr3,fr4
	fmul fr15,fr4
	fmov.s @r0,fr5
	add 0x04,r15
	lds.l @r15+,pr 
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8c0b6bba
	mov.l @r15+,r14

loc_8c0b6edc:
	mov.l @(loc_8c0b6f6c,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0b6f30
	mov.l @(loc_8c0b6f70,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
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
	mov.w @(0x1E,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1E,r14) 
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0b6f40

loc_8c0b6f30:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8c0b7468
	mov.l @r15+,r14

loc_8c0b6f40:
	add 0x04,r15
	lds.l @r15+,pr 
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C0B6F4C:
	mov r4,r3
	mov.l @(loc_8C0B6F74,pc),r1 ; r1 set to 0x8C159924
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b6f5e:
	#data 0x0130
	#align4

loc_8C0B6F60:
	#data bank15.loc_8c159814
loc_8c0b6f64:
	#data 0x3FD55555
loc_8c0b6f68:
	#data 0x44809249
loc_8C0B6F6C:
	#data bank03.loc_8c03340c
loc_8C0B6F70:
	#data bank03.loc_8c034dee
loc_8C0B6F74:
	#data bank15.loc_8c159924

;======================
loc_8C0B6F78:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x44,r4
	mov.l @(0x164,PC),r13
	mov.w @(0x15A,PC),r1
	mov.l r5,@r15
	mov.b @(0x6,r14),r0
	add r14,r1
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x14A,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.w @(0x140,PC),r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r13,r3
	mov.b @r3,r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r13,r3
	mov.b @(0x1,r3),r0
	mov.b r0,@r1
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov.w @(0x120,PC),r1
	shll2 r3
	shll2 r3
	add r13,r3
	mov.b @(0x2,r3),r0
	add r14,r1
	mov.b r0,@r1
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.w @(0x110,PC),r1
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r13,r3
	mov.b @(0x3,r3),r0
	add r14,r1
	mov.b r0,@r1
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r13,r3
	mov.b @(0x4,r3),r0
	tst r0,r0
	bt loc_8c0b7000
	mov.w @(0xF0,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C0B7000:
	mov 0x20,r0
	mov.b @(r0,r14),r1
	mov 0x0C,r0
	extu.b r1,r1
	shll2 r1
	shll2 r1
	add r13,r1
	fmov @(r0,r1),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x08,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r13,r3
	fmov @(r0,r3),fr4
	mov.w @(0xC2,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0b7030
	mov 0x5C,r0
	fneg fr4

loc_8C0B7030:
	fmov fr4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov 0x14,r5
	mov.l @(0xB4,PC),r3
	extu.b r6,r6
	shll2 r6
	shll2 r6
	add r13,r6
	mov.w @(0x6,r6),r0
	mov r0,r6
	jsr @r3
	mov r14,r4
	mov 0x20,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B705A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0B70F4,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l r13,@-r15
	mov 0x01,r13 ; r13 set to 0x01
	mov r13,r1 ; r1 set to 0x01
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???	
	tst r1,r3
	bf loc_8C0B7100
	mov.l @(loc_8C0B70F8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0B7100
	mov.b @(0x06,r14),r0
	mov.l @(loc_8C0B70FC,pc),r1 ; r1 set to 0x8C159934
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r14)
	mov r13,r0 ; r0 set to 0x01
	nop
	bra loc_8C0B7116
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b70e0:
	#data 0x019c
loc_8c0b70e2:
	#data 0x013c
loc_8c0b70e4:
	#data 0x013d
loc_8c0b70e6:
	#data 0x013e
loc_8c0b70e8:
	#data 0x013f
loc_8c0b70ea:
	#data 0x0130
	#align4

loc_8C0B70EC:
	#data bank15.loc_8c159850
loc_8C0B70F0:
	#data bank03.loc_8c034e8c
loc_8C0B70F4:
	#data 0x8C2895F0
loc_8C0B70F8:
	#data bank03.loc_8c034dee
loc_8C0B70FC:
	#data bank15.loc_8c159934

;==============================================
loc_8C0B7100:
	mov.l @(loc_8C0B71A0,pc),r3 ; r3 set to 0x8C0332E0
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0B7110
	mov.w @(loc_8C0B7198,pc),r0 ; r0 set to 0x12c
	bra loc_8C0B7116
	mov.b r13,@(r0,r14)

loc_8C0B7110:
	mov.w @(loc_8C0B7198,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)

loc_8C0B7116:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B711E:
	mov.l @(loc_8C0B71A4,pc),r6 ; r6 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov 0x01,r1 ; r1 set to 0x01
	mov.w @(r0,r6),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r6),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???	
	tst r1,r3
	bf loc_8C0B7166
	mov.w @(loc_8C0B719A,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r6 ; r6 ??? bc r4 is ???	
	mov.b @(0x05,r6),r0
	extu.b r0,r0 ; r0 set to 0xCc
	cmp/eq 0x03,r0
	bf loc_8C0B7162
	mov.w @(loc_8C0B719C,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r6),r2
	tst r2,r2
	bf loc_8C0B7162
	mova @(loc_8C0B71A8,pc),r0  ; r0 set to 0x8C0B71A8
	fmov.s @r0,fr3
	mov.w @(loc_8C0B719E,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r6),fr2
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r6),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8C0B7166
	mov.b @(0x06,r4),r0
	add 0x01,r0 ; r0 set to 0x39
	bra loc_8C0B7166
	mov.b r0,@(0x06,r4)

loc_8C0B7162:
	bra loc_8C0B7468
	nop

loc_8C0B7166:
	rts
	nop

;----------------------------------------------
loc_8C0B716A:
	mov.w @(loc_8C0B719A,pc),r0 ; r0 set to 0xCc
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l @(r0,r14),r13
	mov.b @(0x05,r13),r0
	extu.b r0,r0 ; r0 set to 0xCc
	cmp/eq 0x03,r0
	bf loc_8C0B7190
	mov.b @(0x07,r14),r0
	mov r13,r5
	mov.l @(loc_8C0B71AC,pc),r1 ; r1 set to 0x8C15993c
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0xCc
	mov.l @r15+,r13
	shll2 r0 ; r0 set to 0x330
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B7190:
	mov.l @r15+,r13
	mov r14,r4
	bra loc_8C0B7468
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B7198:
	#data 0x012c
loc_8C0B719A:
	#data 0x00Cc
loc_8C0B719C:
	#data 0x0411
loc_8C0B719E:
	#data 0x041c
	#align4

loc_8C0B71A0:
	#data bank03.loc_8c0332E0
loc_8C0B71A4:
	#data 0x8C2895F0
loc_8C0B71A8:
	#data 0x434DB6Db
loc_8C0B71AC:
	#data bank15.loc_8c15993c

;==============================================
loc_8C0B71B0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x110,PC),r4
	mov 0x3C,r0
	mov 0x01,r1
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0b72ba
	mov.w @(0xF0,PC),r0
	mov.l @(0x18,r14),r1
	mov.b @(r0,r1),r3
	tst r3,r3
	bf loc_8c0b72b0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c0b72b0
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0b72ba
	mov.b @(0x7,r14),r0
	mov.l @(0xE0,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	jsr @r3
	fmov fr3,@(r0,r14)
	mov 0x20,r2
	mov.l @(0xCC,PC),r4
	add r14,r2
	mov.b @r2,r2
	and 0x03,r0
	shll r0
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r0
	shll2 r0
	add r0,r4
	mov.w @(0xA8,PC),r0
	fmov @r4+,fr4
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0b7224
	fmov @r4,fr5
	fneg fr4

loc_8C0B7224:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x00,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fldi0 fr3
	fadd fr5,fr2
	fmov fr2,@(r0,r14)
	mova @(0x98,PC),r0
	fmov @r0,fr6
	mova @(0x98,PC),r0
	fmul fr6,fr4
	fmul fr6,fr5
	fmov @r0,fr6
	mov.w @(0x7A,PC),r0
	fneg fr4
	fdiv fr6,fr4
	fneg fr5
	fdiv fr6,fr5
	mov.w r4,@(r0,r14)
	mov 0x5C,r0
	fcmp/gt fr4,fr3
	bt.s loc_8c0b725e
	fmov fr4,@(r0,r14)
	mov.w @(0x66,PC),r0
	mov 0x01,r2
	mov.w r2,@(r0,r14)

loc_8C0B725E:
	mov 0x60,r0
	fmov fr5,@(r0,r14)
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0b7276
	mov.w @(0x52,PC),r0
	mov 0x3E,r2
	bra loc_8c0b727c
	mov.b r2,@(r0,r14)

loc_8C0B7276:
	mov.w @(0x4A,PC),r0
	mov 0x3F,r3
	mov.b r3,@(r0,r14)

loc_8C0B727C:
	mov.w @(0x46,PC),r0
	mov.l @(0x5C,PC),r3
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0x50,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x20,r0
	mov.b @(r0,r14),r5
	mov.l @(0x3C,PC),r0
	extu.b r5,r5
	lds.l @r15+,pr
	shll2 r5
	mov.l @(r0,r5),r5
	jmp @r3
	mov.l @r15+,r14

loc_8C0B72B0:
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0B72BA:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0b72c0:
	#data 0x0411
loc_8c0b72c2:
	#data 0x0130
loc_8c0b72c4:
	#data 0x01a1
loc_8c0b72c6:
	#data 0x01ac

loc_8c0b72c8:
	#data 0x8C2895F0
loc_8C0B72CC:
	#data bank03.loc_8c03319e
loc_8C0B72D0:
	#data bank15.loc_8c15994c
loc_8C0B72D4:
	#data 0x41800000
loc_8C0B72D8:
	#data 0x43800000
loc_8C0B72Dc:
	#data 0x8C2896B0
loc_8C0B72E0:
	#data bank15.loc_8c1599Ac
loc_8C0B72E4:
	#data bank04.loc_8c042008
loc_8C0B72E8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0B72EC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0B7410,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l r13,@-r15
	mov 0x01,r13 ; r13 set to 0x01
	mov r13,r1 ; r1 set to 0x01
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???	
	tst r1,r3
	bf loc_8C0B73Fa
	mov.w @(loc_8C0B7402,pc),r0 ; r0 set to 0x1A0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8C0B731c
	mov.b @(r0,r14),r3
	add 0xFF,r3
	bra loc_8C0B73Fa
	mov.b r3,@(r0,r14)

loc_8C0B731C:
	mov.l @(0x18,r14),r3
	mov.b @(0x02,r3),r0
	mov r13,r3
	extu.b r0,r0
	shad r0, r3
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	tst r3,r0
	bf loc_8C0B73Fa
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0B73De
	mov.l @(loc_8C0B7414,pc),r3 ; r3 set to 0x8C0332E0
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0B73D2
	mov.w @(loc_8C0B7404,pc),r0 ; r0 set to 0xCc
	mov.l @(0x18,r14),r5
	mov.l @(r0,r14),r4
	mov.w @(loc_8C0B7406,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
	tst r3,r3
	bf loc_8C0B73C6
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0B73C6
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x410
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0B73B0
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0B7408,pc),r0 ; r0 set to 0x2A8
	mov.b @(r0,r5),r3
	add 0x01,r3
	bra loc_8C0B73Fa
	mov.b r3,@(r0,r5)

loc_8C0B73B0:
	mov 0x02,r0 ; r0 set to 0x02
	mov.w r0,@(0x1C,r14)
	mov 0x01,r3 ; r3 set to 0x01
	mov.b @(0x07,r14),r0
	add 0xFF,r0 ; r0 set to 0x01
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0B740A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	xor r3,r2
	bra loc_8C0B73Fa
	mov.w r2,@(r0,r14)

loc_8C0B73C6:
	lds.l @r15+,pr
	mov.l @(loc_8C0B7418,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B73D2:
	lds.l @r15+,pr
	mov.l @(loc_8C0B741C,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B73DE:
	mov.l @(loc_8C0B7414,pc),r3 ; r3 set to 0x8C0332E0
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0B73F4
	mov.l @(loc_8C0B741C,pc),r3 ; r3 set to 0x8C045748
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0B740C,pc),r0 ; r0 set to 0x12c
	bra loc_8C0B73Fa
	mov.b r13,@(r0,r14)

loc_8c0b73f4:
	mov.w @(loc_8c0b740c,pc),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14) 

loc_8C0B73FA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B7402:
	#data 0x01A0
loc_8C0B7404:
	#data 0x00Cc
loc_8C0B7406:
	#data 0x0411
loc_8C0B7408:
	#data 0x02A8
loc_8C0B740A:
	#data 0x0130
loc_8C0B740C:
	#data 0x012c
	#align4

loc_8C0B7410:
	#data 0x8C2895F0
loc_8C0B7414:
	#data bank03.loc_8c0332E0
loc_8C0B7418:
	#data bank04.loc_8c0450C0
loc_8C0B741C:
	#data bank04.loc_8c045748

;==============================================
loc_8C0B7420:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x58,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r0
	cmp/eq 0x03,r0
	bf loc_8c0b745c
	mov.b @(0x7,r14),r0
	mov 0x14,r5
	mov.l @(0x54,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0x44,PC),r0
	mov.l @(r0,r13),r4
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov.l @(0x34,PC),r0
	extu.b r6,r6
	shll r6
	mov.w @(r0,r6),r6
	jsr @r3
	mov r14,r4

loc_8C0B745C:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0b7468
	mov.l @r15+,r14

loc_8C0B7468:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0B7470:
	mov.l @(loc_8C0B7490,pc),r2 ; r2 set to 0x8C2895F6
	mov.b @r2,r3
	tst r3,r3
	bf loc_8C0B747e
	mov.l @(loc_8C0B7494,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0B747E:
	rts
	nop

;----------------------------------------------
loc_8c0b7482:
	#data 0x02A8
loc_8c0b7484:
	#data 0x020c
	#align4

loc_8C0B7488:
	#data bank15.loc_8c1599C4
loc_8C0B748C:
	#data bank03.loc_8c034e8c
loc_8C0B7490:
	#data 0x8C2895F6
loc_8C0B7494:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0b7498:
	mov.l r14,@-r15
	mov 0x07,r1
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x00,r10
	mov.l @(0xE8,PC),r2
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov r4,r8
	sts.l pr,@-r15
	mov.w @r2,r3
	cmp/gt r1,r3
	bf.s loc_8c0b7522
	mov r10,r14
	mov.l @(0xD8,PC),r3
	mov 0x02,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	mov r0,r14
	mov 0x21,r0
	mov 0x00,r3
	mov.w @(0xB6,PC),r9
	mov.l @(0xCC,PC),r2
	mov r14,r11
	mov 0x06,r13
	mov.l r2,@(0x10,r14)
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b r3,@(r0,r14)
	mov.l r8,@(0x18,r14)
	mov.b @(0x1,r8),r0
	mov.b r0,@(0x1,r14)
	mov 0x26,r0
	mov.w r9,@(r0,r14)

loc_8c0b74e2:
	mov.l @(0xB0,PC),r3
	mov 0x02,r6
	mov r14,r12
	mov r6,r5
	jsr @r3
	mov r14,r4
	mov r0,r14
	mov 0x01,r3
	mov 0x20,r0
	mov.l @(0xA0,PC),r2
	mov.l r2,@(0x10,r14)
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b r10,@(r0,r14)
	mov.l @(0x18,r12),r3
	mov.l r3,@(0x18,r14)
	mov.b @(0x1,r8),r0
	mov.w @(0x7E,PC),r3
	mov.b r0,@(0x1,r14)
	mov 0x26,r0
	mov.w r9,@(r0,r14)
	mov.w @(0x74,PC),r0
	mov.l r11,@(r0,r14)
	add 0x04,r0
	mov.b r13,@(r0,r14)
	mov 0x22,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r13
	mov.w @(0x6A,PC),r0
	cmp/pz r13
	bt.s loc_8c0b74e2
	mov.b r10,@(r0,r14)

loc_8c0b7522:
	mov r14,r0
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

;----------------------------------------------
loc_8C0B7538:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0B754a
	mov r14,r4
	bra loc_8C0B7554
	mov.l @r15+,r14

loc_8C0B754A:
	mov.l @(0x18,r14),r5
	mov r14,r4
	mov.l @(0x08,r14),r6
	bra loc_8C0B79Dc
	mov.l @r15+,r14

loc_8C0B7554:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0B758A,pc),r0 ; r0 set to 0x159
	mov.l @(0x18,r14),r5
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8C0B757c
	mov.w @(loc_8C0B758C,pc),r0 ; r0 set to 0x158
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8C0B757c
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0B759C,pc),r1 ; r1 set to 0x8C1599Cc
	extu.b r0,r0 ; r0 set to 0x58
	shll2 r0 ; r0 set to 0x160
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0B757C:
	mov r14,r4
	bra loc_8C0B7D3c
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b7582:
	#data 0x3803
loc_8c0b7584:
	#data 0x00d0
loc_8c0b7586:
	#data 0x00ff
loc_8c0b7588:
	#data 0x012c
loc_8C0B758A:
	#data 0x0159
loc_8C0B758C:
	#data 0x0158
	#align4

loc_8C0B7590:
	#data 0x8C287AE8
loc_8C0B7594:
	#data bank04.loc_8c044F12
loc_8C0B7598:
	#data loc_8c0b7538
loc_8C0B759C:
	#data bank15.loc_8c1599Cc

;==============================================
loc_8C0B75A0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.w @(0x162,PC),r1
	add 0x01,r0
	mov.w @(0x15E,PC),r2
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x15A,PC),r0
	mov.l @(0x168,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x154,PC),r0
	mov 0x01,r12
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
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
	mov.w @(0x138,PC),r0
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
	mov.l @(0x134,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x34,r3
	mov 0x00,r9
	mov.b r2,@(r0,r14)
	mov 0x43,r10
	mov.w @(0x112,PC),r0
	mov 0x42,r11
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r9,@(r0,r14)
	add 0xF2,r0
	mov.b r9,@(r0,r14)
	add 0x26,r0
	mov.l @(0x114,PC),r3
	mov.l r9,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xF0,PC),r0
	mov.w @(0xF0,PC),r2
	mov.b r10,@(r0,r14)
	add 0x01,r0
	mov.b r11,@(r0,r14)
	mov 0x22,r0
	mov.b r2,@(r0,r14)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r14)
	mova @(0xF4,PC),r0
	fmov @r0,fr5
	mov 0x60,r0
	fmov fr5,@(r0,r14)
	mova @(0xF0,PC),r0
	fmov @r0,fr4
	mov.w @(0xD6,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b765a
	mova @(0xE8,PC),r0
	fmov @r0,fr4

loc_8C0B765A:
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0xFF,r3
	mov 0x16,r5
	fadd fr4,fr3
	mov 0x02,r6
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fadd fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0xC4,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x06,r6
	mov r9,r5
	mov r14,r4
	mov 0x40,r7

loc_8C0B7690:
	mov.w @(0x86,PC),r1
	mov.l @(0xC,r4),r4
	mov.w @(0x84,PC),r0
	mov.w @(0x80,PC),r2
	add r4,r1
	mov.l @(0x90,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x7A,PC),r0
	mov r4,r1
	add 0x50,r1
	mov.b r12,@(r0,r4)
	mov.b @(0x2,r13),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x60,PC),r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	add 0x01,r5
	cmp/gt r6,r5
	mov.b r2,@(r0,r4)
	mov.w @(0x3E,PC),r0
	mov.b r10,@(r0,r4)
	add 0x01,r0
	mov.b r11,@(r0,r4)
	add 0xA2,r0
	mov.b r7,@(r0,r4)
	add 0xFF,r0
	mov.b r7,@(r0,r4)
	add 0xFF,r0
	mov.b r7,@(r0,r4)
	add 0xFF,r0
	bf.s loc_8c0b7690
	mov.b r7,@(r0,r4)
	mov.w @(0x2A,PC),r0
	mov 0x48,r5
	mov.l @(0x48,PC),r3
	mov.l r4,@(r0,r14)
	add 0x09,r0
	mov.b r9,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b771a:
	#data 0x00dc
loc_8c0b771c:
	#data 0x00c0
loc_8c0b771e:
	#data 0x012c
loc_8c0b7720:
	#data 0x01a3
loc_8c0b7722:
	#data 0x01a1
loc_8c0b7724:
	#data 0x019c
loc_8c0b7726:
	#data 0x00ff
loc_8c0b7728:
	#data 0x0130
loc_8c0b772a:
	#data 0x00cc
	#align4

loc_8C0B772C:
	#data bank12.loc_8c129560
loc_8C0B7730:
	#data bank12.loc_8c1294C8
loc_8C0B7734:
	#data 0x8C2896B0
loc_8C0B7738:
	#data 0x43AB6DB6
loc_8C0B773c:
	#data 0x41555555
loc_8C0B7740:
	#data 0xC1555555
loc_8C0B7744:
	#data bank03.loc_8c034e8c
loc_8C0B7748:
	#data bank04.loc_8c045748
loc_8C0B774C:
	#data bank04.loc_8c04223a

;==============================================
loc_8C0B7750:
	mov r4,r3
	mov.l @(loc_8C0B7884,pc),r1 ; r1 set to 0x8C1599Dc
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0B7762:
	mov.l r14,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov.l r12,@-r15
	sts.l pr,@-r15
	fmov.s @(r0,r13),fr3
	mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(loc_8C0B7888,pc),r3 ; r3 set to 0x8C034DEe
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bf loc_8C0B77B0
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	bra loc_8C0B7846
	fmov.s fr2,@(r0,r14)

loc_8c0b77b0:
	mov.b @(0x05,r14),r0 
	mov 0x01,r3
	mov 0x02,r2
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov 0x00,r12
	mov.w @(loc_8C0B787A,pc),r0
	mov.b r3,@(r0,r14) 
	add 0x6D,r0
	mov.b r2,@(r0,r13) 
	mov 0x22,r0
	mov.b r12,@(r0,r14) 
	mova @(loc_8C0B788C,pc),r0 
	fmov.s @r0,fr5
	mov 0x60,r0
	fmov.s fr5,@(r0,r14) 
	mova @(loc_8C0B7890,pc),r0 
	fmov.s @r0,fr4
	mov.w @(loc_8C0B787C,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b77e0
	mova @(loc_8C0B7894,pc),r0 
	fmov.s @r0,fr4

loc_8c0b77e0:
	mov 0x5C,r0
	mov.l @(loc_8c0b7898,pc),r3
	fmov.s fr4,@(r0,r14) 
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	mov 0x16,r5
	mov 0x03,r6
	fadd fr4,fr3
	mov 0x00,r7
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r13),fr3
	fadd fr5,fr3
	fmov.s fr3,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0B787E,pc),r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c0b7846
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x3C,r0 
	bf loc_8c0b7824
	mov.w @(loc_8C0B7880,pc),r0
	mov 0x03,r3
	mov.b @(r0,r13),r5
	extu.b r5,r5
	cmp/gt r3,r5
	bf loc_8c0b7824
	mov 0x06,r1
	cmp/ge r1,r5
	bt loc_8c0b7824
	mov 0x2F,r4

loc_8c0b7824:
	mov.w @(loc_8C0B7882,pc),r0
	mov.l @(loc_8C0B789C,pc),r3
	mov.b r4,@(r0,r14) 
	add 0x0B,r0
	mov.w r12,@(r0,r14) 
	add 0xF2,r0
	mov.b r12,@(r0,r14) 
	add 0x26,r0
	mov.l r12,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 

loc_8C0B7846:
	lds.l @r15+,pr
	mov.l @(loc_8C0B78A0,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0B7854:
	mov 0x22,r0
	mov.l @(0x4C,PC),r3
	mov.b @(r0,r4),r5
	mov.w @(0x1E,PC),r0
	extu.b r5,r5
	shll r5
	mov.w @(r0,r4),r2
	shll2 r5
	add r3,r5
	fmov @r5+,fr4
	tst r2,r2
	bt.s loc_8c0b7870
	fmov @r5,fr5
	fneg fr4

loc_8C0B7870:
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	rts 
	fmov fr5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b787a:
	#data 0x00D5
loc_8c0b787c:
	#data 0x0130
loc_8c0b787e:
	#data 0x014B
loc_8c0b7880:
	#data 0x0255
loc_8c0b7882:
	#data 0x01A1
	#align4

loc_8C0B7884:
	#data bank15.loc_8c1599Dc
loc_8C0B7888:
	#data bank03.loc_8c034dee
loc_8c0b788c:
	#data 0x43AB6DB6
loc_8c0b7890:
	#data 0x41555555
loc_8c0b7894:
	#data 0xC1555555
loc_8C0B7898:
	#data bank03.loc_8c034F54
loc_8c0b789c:
	#data 0x8C2896B0
loc_8C0B78A0:
	#data bank04.loc_8c045748
loc_8C0B78A4:
	#data bank15.loc_8c1599Fc

;==============================================
loc_8C0B78A8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x10A,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	cmp/pz r3
	bf.s loc_8c0b7958
	mov 0x00,r12
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.w @(0xF4,PC),r0
	extu.b r2,r2
	mov.b @(r0,r13),r3
	cmp/eq r3,r2
	bt loc_8c0b792a
	mov.b @(r0,r13),r2
	mov 0x22,r0
	mov.l @(0xF4,PC),r3
	mov 0x16,r5
	mov 0x03,r6
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r7
	extu.b r7,r7
	jsr @r3
	mov r14,r4
	mov.w @(0xD8,PC),r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c0b7924
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x3C,r0
	bf loc_8c0b7902
	mov.w @(0xCA,PC),r0
	mov 0x03,r6
	mov.b @(r0,r13),r5
	extu.b r5,r5
	cmp/gt r6,r5
	bf loc_8c0b7902
	cmp/ge r6,r5
	bt loc_8c0b7902
	mov 0x2F,r4

loc_8C0B7902:
	mov.w @(0xBA,PC),r0
	mov.l @(0xC4,PC),r3
	mov.b r4,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C0B7924:
	mov r13,r5
	bsr loc_8c0b7854
	mov r14,r4

loc_8C0B792A:
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0b797a
	lds.l @r15+,pr
	mov.l @(0x80,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B7958:
	mov.w @(0x68,PC),r0
	mov 0x16,r5
	mov.l @(0x74,PC),r3
	mov 0x05,r6
	mov.b r12,@(r0,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0b7984
	mov.l @r15+,r14

loc_8C0B797A:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B7984:
	mov.l r14,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov.l @(loc_8C0B79D8,pc),r3 ; r3 set to 0x8C034DEe
	sts.l pr,@-r15
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0B79B2
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0B7D3c
	mov.l @r15+,r14

loc_8C0B79B2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b79ba:
	#data 0x0141
loc_8c0b79bc:
	#data 0x014b
loc_8c0b79be:
	#data 0x0255
loc_8c0b79c0:
	#data 0x01a1
loc_8c0b79c2:
	#data 0x019e
loc_8c0b79c4:
	#data 0x00d5
	#align4

loc_8C0B79C8:
	#data bank03.loc_8c034F54
loc_8C0B79Cc:
	#data 0x8C2896B0
loc_8C0B79D0:
	#data bank04.loc_8c045748
loc_8C0B79D4:
	#data bank03.loc_8c034e8c
loc_8C0B79D8:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0b79dc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x04,r14),r0 
	tst r0,r0
	bf/s loc_8c0b79fc
	mov r6,r13
	mov.w @(loc_8C0B7AC0,pc),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bf/s loc_8c0b7a0c
	mov.l r2,@(0x04,r15) 

loc_8c0b79fc:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c0b7ad0,pc),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0b7a0c:
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.b @(r0,r13),r3
	cmp/eq r2,r3
	bt/s loc_8c0b7a76
	mov 0x00,r12
	mov.b @(r0,r13),r2
	mov 0x01,r3
	mov 0x16,r5
	mov.b r2,@(r0,r14) 
	mov 0x04,r6
	mov.w @(loc_8C0B7AC2,pc),r0
	mov.b r3,@(r0,r14) 
	mov 0x22,r0
	mov.b @(r0,r14),r7
	mov.l @(loc_8c0b7ad4,pc),r3
	extu.b r7,r7
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0B7AC4,pc),r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c0b7a76
	exts.b r4,r0
	cmp/eq 0x3C,r0 
	bf loc_8c0b7a54
	mov.w @(loc_8C0B7AC6,pc),r0
	mov 0x03,r6
	mov.l @r15,r5
	mov.b @(r0,r5),r5
	extu.b r5,r5
	cmp/gt r6,r5
	bf loc_8c0b7a54
	cmp/ge r6,r5
	bt loc_8c0b7a54
	mov 0x2F,r4

loc_8c0b7a54:
	mov.w @(loc_8C0B7AC8,pc),r0
	mov.l @(loc_8C0B7AD8,pc),r3
	mov.b r4,@(r0,r14) 
	add 0x0B,r0
	mov.w r12,@(r0,r14) 
	add 0xF2,r0
	mov.b r12,@(r0,r14) 
	add 0x26,r0
	mov.l r12,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 

loc_8c0b7a76:
	mov 0x22,r0
	mov.l @(loc_8c0b7adc,pc),r5
	mov.b @(r0,r14),r4
	mov 0x04,r0
	extu.b r4,r4
	shll r4
	shll2 r4
	add r4,r5
	fmov.s @(r0,r5),fr8
	fmov.s @r5,fr4
	mov.l @(loc_8c0b7ae0,pc),r5
	add r4,r5
	fmov.s @(r0,r5),fr7
	fmov.s @r5,fr6
	mov.l @(loc_8c0b7ae4,pc),r5
	mov r4,r0
	nop 
	fmov.s @(r0,r5),fr5
	mov.w @(loc_8C0B7ACA,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b7aa8
	fneg fr5
	fneg fr6
	fneg fr4

loc_8c0b7aa8:
	mov.w @(loc_8C0B7ACC,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x06,r0 
	bf loc_8c0b7ae8
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r13),fr3
	bra loc_8c0b7af6
	fadd fr8,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B7AC0:
	#data 0x00D0
loc_8C0B7AC2:
	#data 0x012C
loc_8C0B7AC4:
	#data 0x014B
loc_8C0B7AC6:
	#data 0x0255
loc_8C0B7AC8:
	#data 0x01A1
loc_8C0B7ACA:
	#data 0x0130
loc_8C0B7ACC:
	#data 0x00D4
	#align4

loc_8c0b7ad0:
	#data bank04.loc_8c0450c0
loc_8c0b7ad4:
	#data bank03.loc_8c034f54
loc_8C0B7AD8:
	#data 0x8C2896B0
loc_8c0b7adc:
	#data bank15.loc_8c159a8c
loc_8c0b7ae0:
	#data bank15.loc_8c159b1c
loc_8c0b7ae4:
	#data bank15.loc_8c159bac

;==============================================
loc_8c0b7ae8:
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fadd fr6,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r13),fr3
	fadd fr7,fr3

loc_8c0b7af6:
	fmov.s fr3,@(r0,r14) 
	mov 0x22,r3
	mov 0x34,r0
	add r14,r3
	fmov.s @(r0,r14),fr3
	mov 0x04,r1
	fadd fr5,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	mov.b @r3,r3
	fmov.s @(r0,r14),fr2
	extu.b r3,r3
	shll r3
	shll2 r3
	add r3,r5
	add r5,r1
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov.w @(loc_8C0B7B72,pc),r0
	mov.l @(0x04,r15),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0b7b48
	mov.w @(loc_8C0B7B74,pc),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c0b7b36
	mov.l @(loc_8c0b7b7c,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0b7b36:
	mov.l @(loc_8c0b7b80,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c0b7b48
	mov.w @(loc_8C0B7B76,pc),r0
	mov 0x01,r2
	bra loc_8c0b7b4c
	mov.b r2,@(r0,r14) 

loc_8c0b7b48:
	mov.w @(loc_8C0B7B76,pc),r0
	mov.b r12,@(r0,r14) 

loc_8c0b7b4c:
	mov.w @(loc_8C0B7B74,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0b7b66
	mov.w @(loc_8C0B7B78,pc),r0
	mov r14,r4
	mov.l @(r0,r14),r5
	add 0x08,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0b7b84
	mov.l @r15+,r14

loc_8c0b7b66:
	add 0x08,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B7B72:
	#data 0x00D5
loc_8C0B7B74:
	#data 0x019E
loc_8C0B7B76:
	#data 0x012C
loc_8C0B7B78:
	#data 0x01B0
	#align4

loc_8c0b7b7c:
	#data bank04.loc_8c045748
loc_8c0b7b80:
	#data bank03.loc_8c0332e0

;==============================================
loc_8c0b7b84:
	add 0xE8,r15
	tst r5,r5
	bf loc_8c0b7b8e
	bra loc_8c0b7d38
	nop 

loc_8c0b7b8e:
	mov.b @(0x03,r5),r0 
	tst r0,r0
	bt loc_8c0b7b98
	bra loc_8c0b7d38
	nop 

loc_8c0b7b98:
	mov.b @(0x05,r5),r0 
	extu.b r0,r0
	cmp/eq 0x03,r0 
	bt loc_8c0b7ba4
	bra loc_8c0b7d38
	nop 

loc_8c0b7ba4:
	mov 0x22,r0
	mov.b @(r0,r4),r2
	mov.l @(loc_8c0b7ce4,pc),r0
	extu.b r2,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c0b7bb6
	bra loc_8c0b7d38
	nop 

loc_8c0b7bb6:
	mov.w @(loc_8C0B7CDE,pc),r0
	mov r15,r6
	mov.w @(loc_8C0B7CDC,pc),r3
	add 0x10,r6
	mov.l @(r0,r5),r7
	mova @(loc_8C0B7CE8,pc),r0 
	fmov.s @r0,fr4
	add r3,r7
	mov.w @(loc_8C0B7CE0,pc),r0
	mov.w @r7,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fmov.s fr3,@r6
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c0b7be4
	mov r6,r2
	mov r2,r1
	mov.l r2,@r15
	fmov.s @r2,fr3
	fneg fr3
	fmov.s fr3,@r1

loc_8c0b7be4:
	mov 0x34,r0
	fmov.s @r6,fr2
	fmov.s @(r0,r5),fr3
	mov 0x04,r0
	fadd fr3,fr2
	fldi0 fr3
	fmov.s fr2,@r6
	fmov.s fr3,@(r0,r6) 
	mov.w @(loc_8C0B7CE0,pc),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0b7c0a
	mov r6,r3
	add 0x04,r3
	mov r3,r2
	mov.l r3,@r15
	fmov.s @r3,fr3
	fneg fr3
	fmov.s fr3,@r2

loc_8c0b7c0a:
	mov r6,r3
	mov 0x34,r0
	add 0x04,r3
	mov.l r3,@r15
	fmov.s @(r0,r4),fr3
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @r15,r3
	fmov.s @r6,fr2
	fmov.s @r3,fr3
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf/s loc_8c0b7c36
	fmov.s fr2,@r6
	mov r6,r2
	mov r2,r3
	mov.l r2,@r15
	fmov.s @r2,fr2
	fneg fr2
	fmov.s fr2,@r3

loc_8c0b7c36:
	fmov fr4,fr0
	mov r6,r2
	add 0x04,r2
	mov.l r2,@r15
	mov.w @(0x02,r7),r0 
	mov r0,r3
	lds r3,fpul 
	mova @(loc_8C0B7CEC,pc),r0 
	fmov.s @r0,fr2
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	mov.l @r15,r3
	fmov.s @r6,fr3
	fmov.s @r3,fr5
	fldi0 fr2
	fsub fr3,fr5
	fcmp/gt fr5,fr2
	bt loc_8c0b7d38
	mova @(loc_8C0B7CF0,pc),r0 
	mov r15,r6
	fmov.s @r0,fr4
	add 0x08,r6
	mov r6,r3
	mov.l r3,@r15
	mov.w @(0x04,r7),r0 
	fmov fr4,fr0
	mov r0,r2
	lds r2,fpul 
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	mov 0x38,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	add 0x04,r3
	mov.l r3,@(0x04,r15) 
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@r3
	mov.l @(0x04,r15),r2
	mov.l @r15,r3
	fmov.s @r2,fr3
	fmov.s @r3,fr2
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	fmov.s fr2,@r3
	bf loc_8c0b7ca2
	mov r6,r2
	mov r2,r3
	mov.l r2,@r15
	fmov.s @r2,fr2
	fneg fr2
	fmov.s fr2,@r3

loc_8c0b7ca2:
	fmov fr4,fr0
	mov r6,r2
	add 0x04,r2
	mov.l r2,@r15
	mov.w @(0x06,r7),r0 
	mov r0,r3
	lds r3,fpul 
	mova @(loc_8C0B7CF4,pc),r0 
	fmov.s @r0,fr2
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	mov.l @r15,r3
	fmov.s @r6,fr3
	fmov.s @r3,fr4
	fldi0 fr2
	fsub fr3,fr4
	fcmp/gt fr4,fr2
	bt loc_8c0b7d38
	mov 0x22,r0
	mov.l @(loc_8c0b7ce4,pc),r6
	mov.b @(r0,r4),r0
	extu.b r0,r0
	mov.b @(r0,r6),r0
	tst 0x01,r0 
	bt loc_8c0b7d08
	mov.w @(loc_8C0B7CE2,pc),r0
	bra loc_8c0b7cf8
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0B7CDC:
	#data 0x07E0
loc_8C0B7CDE:
	#data 0x0170
loc_8C0B7CE0:
	#data 0x01D2
loc_8C0B7CE2:
	#data 0x0130
	#align4

loc_8c0b7ce4:
	#data bank15.loc_8c1599e8
loc_8C0B7CE8:
	#data 0x3FD55555
loc_8C0B7CEC:
	#data 0x42D55555
loc_8C0B7CF0:
	#data 0x40092492
loc_8C0B7CF4:
	#data 0x43092492

;==============================================
loc_8c0b7cf8:
	mov.w @(r0,r4),r2
	tst r2,r2
	bt/s loc_8c0b7d02
	mov 0x34,r0
	fneg fr5

loc_8c0b7d02:
	fmov.s @(r0,r5),fr3
	fadd fr5,fr3
	fmov.s fr3,@(r0,r5) 

loc_8c0b7d08:
	mov 0x22,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	mov.b @(r0,r6),r0
	tst 0x02,r0 
	bt loc_8c0b7d38
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0b7d22
	mov 0x38,r0
	fneg fr4
	fmov.s @(r0,r4),fr2
	fmov.s fr2,@(r0,r5) 

loc_8c0b7d22:
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r5) 
	mov.w @(loc_8C0B7D6A,pc),r0
	fmov.s @(r0,r5),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0b7d38
	fmov.s @(r0,r5),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r5) 

loc_8c0b7d38:
	rts 
	add 0x18,r15

loc_8C0B7D3C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x0C,r14),r4
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x06,r6 ; r6 set to 0x06
	mov 0x01,r7 ; r7 set to 0x01

loc_8C0B7D4A:
	mov r7,r0 ; r0 set to 0x01
	nop
	add 0x01,r5 ; r5 set to 0x01
	mov.b r0,@(0x04,r4)
	cmp/gt r6,r5
	bf/s loc_8C0B7D4a
	mov.l @(0x0C,r4),r4
	mov.l @(loc_8C0B7D6C,pc),r2 ; r2 set to 0x8C04223A, r2 set to 0x8C04223a
	mov 0x3A,r5 ; r5 set to 0x3A, r5 set to 0x3a
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0B7D70,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b7d6a:
	#data 0x041c
	#align4

loc_8C0B7D6C:
	#data bank04.loc_8c04223a
loc_8C0B7D70:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_08c0b7d74:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x60,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x01,r5
	mov.l r6,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0b7db4
	mov r0,r4
	mov.l @(0x4C,PC),r3
	mov.w @(0x3E,PC),r2
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.w @(0x4,r15),r0
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov.w @(0x28,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(0x26,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)

loc_8c0b7db4:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0B7DC0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0B7DE4,pc),r1 ; r1 set to 0x8C159C3c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b7dd4:
	#data 0x3a00
loc_8c0b7dd6:
	#data 0x0158
loc_8c0b7dd8:
	#data 0x00cc
	#align4

loc_8C0B7DDC:
	#data bank04.loc_8c044F12
loc_8C0B7DE0:
	#data loc_8c0b7DC0
loc_8C0B7DE4:
	#data bank15.loc_8c159c3c

;==============================================
loc_8C0B7DE8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x140,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x138,PC),r2
	add 0x01,r0
	mov.l @(0x14C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x132,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x12E,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0x112,PC),r0
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
	mov.l @(0x114,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x110,PC),r1
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r5,@r14
	mov.b r3,@(r0,r14)
	mov 0x00,r3
	mov.w @(0x1C,r14),r0
	shll2 r0
	fmov @(r0,r1),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r4
	cmp/hi r3,r4
	bt loc_8c0b7e6a
	mov r5,r4

loc_8C0B7E6A:
	mov r4,r0
	nop 
	mov.w r0,@(0x1E,r14)
	mov 0x22,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov 0x42,r5
	mov.w @(0xC0,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x17,r5
	mov.w @(0xB4,PC),r0
	add 0x7E,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xC0,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov.l @(0xAC,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0B7EBE:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0B7F40,pc),r0 ; r0 set to 0x158
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov.w @(r0,r12),r3
	mov.w @(loc_8C0B7F42,pc),r0 ; r0 set to 0xCc
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8C0B7EDc
	bra loc_8C0B800e
	nop

loc_8C0B7EDC:
	mov.b @(0x05,r12),r0
	tst r0,r0
	bt/s loc_8C0B7EE8
	mov 0x00,r13 ; r13 set to 0x00
	bra loc_8C0B7FE6
	nop

loc_8C0B7EE8:
	mov.w @(loc_8C0B7F44,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0B7EF4
	bra loc_8C0B7FE6
	nop

loc_8c0b7ef4:
	mov.w @(loc_8C0B7F46,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0b7f0c
	mov.b @(r0,r14),r0
	tst 0x11,r0 
	bf loc_8c0b7fe6
	mov.w @(loc_8C0B7F48,pc),r0
	mov.l @(r0,r14),r3
	mov.b @(0x03,r3),r0 
	tst r0,r0
	bf loc_8c0b7fe6

loc_8c0b7f0c:
	mov.w @(loc_8C0B7F4A,pc),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_8c0b7fe6
	mov.l @(loc_8c0b7f60,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0b7f26
	mov.b @r14,r2
	tst r2,r2
	bt loc_8c0b800e

loc_8c0b7f26:
	mov 0x24,r0
	mov r14,r1
	mov.b @(r0,r12),r2
	add 0x34,r1
	mov.b r2,@(r0,r14) 
	bra loc_8c0b7f64
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b7f34:
	#data 0x00DC
loc_8c0b7f36:
	#data 0x00C0
loc_8c0b7f38:
	#data 0x012C
loc_8c0b7f3a:
	#data 0x01A3
loc_8c0b7f3c:
	#data 0x019C
loc_8c0b7f3e:
	#data 0x01A1
loc_8c0b7f40:
	#data 0x0158
loc_8c0b7f42:
	#data 0x00CC
loc_8c0b7f44:
	#data 0x019F
loc_8C0B7F46:
	#data 0x019E
loc_8C0B7F48:
	#data 0x01B0
loc_8C0B7F4A:
	#data 0x0141

loc_8c0b7f4c:
	#data bank12.loc_8c129560
loc_8c0b7f50:
	#data bank12.loc_8c1294c8
loc_8c0b7f54:
	#data bank15.loc_8c159c4c
loc_8c0b7f58:
	#data 0x8C2896B0
loc_8c0b7f5c:
	#data bank03.loc_8C034E8C
loc_8c0b7f60:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0b7f64:
	mov.l @(loc_8c0b8034,pc),r3
	mov r12,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(loc_8c0b8038,pc),r3
	mov.b @(r0,r14),r4
	mov 0x04,r0
	extu.b r4,r4
	shll r4
	shll2 r4
	add r3,r4
	fmov.s @(r0,r4),fr5
	mov.w @(loc_8C0B802C,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c0b7f8c
	fmov.s @r4,fr4
	fneg fr4

loc_8c0b7f8c:
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fadd fr5,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14) 
	extu.b r3,r0
	tst 0x80,r0 
	bt/s loc_8c0b7fda
	mov r14,r4
	mov 0x22,r0
	mov 0x08,r2
	mov.b r2,@(r0,r14) 
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0B802E,pc),r0
	add 0x7E,r3
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r13,@(r0,r14) 
	add 0xF2,r0
	mov.b r13,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C0B803C,pc),r3
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 

loc_8c0b7fda:
	lds.l @r15+,pr 
	mov.l @(loc_8c0b8040,pc),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B7FE6:
	mov.w @(loc_8C0B8030,pc),r0 ; r0 set to 0x141
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @(loc_8C0B8044,pc),r3 ; r3 set to 0x8C034E8c
	mov r14,r4
	mov.b r13,@(r0,r12)
	add 0x5E,r0 ; r0 set to 0x19f
	mov.b r13,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x19e
	mov.b r13,@(r0,r14)
	exts.b r13,r0 ; r0 ??? bc r13 is ???	
	mov.w r0,@(0x1C,r14)
	mov.b r0,@r14
	mov 0x20,r0 ; r0 set to 0x20
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @r15+,r12
	add 0x20,r6
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0B800E:
	lds.l @r15+,pr
	mov r12,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0B8020
	mov.l @r15+,r14

loc_8C0B801C:
	rts
	nop

;----------------------------------------------
loc_8C0B8020:
	mov.w @(loc_8C0B8032,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0B8048,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b802c:
	#data 0x0130
loc_8c0b802e:
	#data 0x01A1
loc_8C0B8030:
	#data 0x0141
loc_8C0B8032:
	#data 0x012c
	#align4

loc_8C0B8034:
	#data bank12.loc_8c1294C8
loc_8C0B8038:
	#data bank15.loc_8c159c64
loc_8c0b803c:
	#data 0x8C2896B0
loc_8C0B8040:
	#data bank04.loc_8c045748
loc_8C0B8044:
	#data bank03.loc_8c034e8c
loc_8C0B8048:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0b804c:
	mov.l r14,@-r15
	mova @(0x16C,PC),r0
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x08,r9
	mov.l r8,@-r15
	mov 0x00,r8
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	fmov @r0,fr12
	mova @(0x150,PC),r0
	fmov @r0,fr14
	mova @(0x150,PC),r0
	mov.l @(0x148,PC),r11
	fmov @r0,fr15
	mov.w @(0x12C,PC),r10
	fldi0 fr13

loc_8c0b807e:
	mov.l @(0x14C,PC),r3
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c0b8092
	mov r0,r14
	bra loc_8c0b81f6
	nop 

loc_8c0b8092:
	mov.l @(0x13C,PC),r3
	mov.l r3,@(0x10,r14)
	mov.l r13,@(0x18,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x26,r0
	jsr @r11
	mov.w r10,@(r0,r14)
	mov 0x03,r3
	mov 0x20,r1
	tst r8,r3
	and 0x07,r0
	add r14,r1
	bf.s loc_8c0b80b6
	mov.b r0,@r1
	mov r12,r0
	nop 
	mov.w r0,@(0x1C,r14)

loc_8c0b80b6:
	mov r8,r0
	nop 
	shll2 r0
	mov.w @(0xEC,PC),r1
	mov.w r0,@(0x1E,r14)
	mov.w @(0xEA,PC),r0
	add r14,r1
	mov.w @(0xE4,PC),r2
	mov.l @(0x10C,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0xE0,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
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
	mov.w @(0xC6,PC),r0
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
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r13,r5
	mov.b @(r0,r13),r2
	mov 0x02,r6
	mov.b r9,@(r0,r14)
	bsr loc_8c0b8538
	mov r14,r4
	jsr @r11
	nop 
	mov.w @(0x9A,PC),r2
	mov.w @(0x9A,PC),r3
	and r2,r0
	add r3,r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0b812e
	float fpul,fr3
	mov.l @(0xB4,PC),r1
	lds r1,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c0b812e:
	fmul fr12,fr3
	mov.w @(0x84,PC),r0
	mov.w @(r0,r14),r1
	fdiv fr14,fr3
	tst r1,r1
	ftrc fr3,fpul
	bf.s loc_8c0b8140
	sts fpul,r4
	neg r4,r4

loc_8c0b8140:
	lds r4,fpul
	mov 0x5C,r0
	float fpul,fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0x90,PC),r0
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mov 0x60,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fdiv fr14,fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0x7C,PC),r0
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mov 0x6C,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fdiv fr14,fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	mov.l @(0x64,PC),r0
	mov 0x18,r2
	fmov fr15,fr0
	mov.w @(r0,r3),r3
	mov.w @(0x2E,PC),r0
	lds r3,fpul
	fmov @(r0,r13),fr2
	mov 0x38,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c0b81f6
	mov.w @(0x16,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	bra loc_8c0b81ec
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b81aa:
	#data 0x3a01
loc_8c0b81ac:
	#data 0x00dc
loc_8c0b81ae:
	#data 0x00c0
loc_8c0b81b0:
	#data 0x012c
loc_8c0b81b2:
	#data 0x01a3
loc_8c0b81b4:
	#data 0x01ff
loc_8c0b81b6:
	#data 0x0700
loc_8c0b81b8:
	#data 0x0130
loc_8c0b81ba:
	#data 0x041c
	#align4

loc_8c0b81bc:
	#data 0x3FD55555
loc_8C0B81C0:
	#data bank03.loc_8c03319e
loc_8C0B81C4:
	#data 0x43800000
loc_8C0B81C8:
	#data 0x40092492
loc_8C0B81CC:
	#data bank04.loc_8c044F12
loc_8C0B81D0:
	#data loc_8c0b848a
loc_8C0B81D4:
	#data bank12.loc_8c129560
loc_8C0B81D8:
	#data bank12.loc_8c1294C8
loc_8C0B81dc:
	#data 0x4F800000
loc_8C0B81E0:
	#data bank15.loc_8c159c84
loc_8C0B81E4:
	#data bank15.loc_8c159c94
loc_8C0B81E8:
	#data bank15.loc_8c159c74

;==============================================
;unused
loc_8c0b81ec:
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr13,@(r0,r14)
	mov 0x60,r0
	fmov fr13,@(r0,r14)

loc_8c0b81f6:
	mov 0x14,r3
	add 0x01,r8
	cmp/ge r3,r8
	bt loc_8c0b8202
	bra loc_8c0b807e
	nop 

loc_8c0b8202:
	mov 0x00,r8

loc_8c0b8204:
	mov.l @(0x138,PC),r3
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0b82d2
	mov r0,r14
	mov.l @(0x12C,PC),r3
	mov.l r3,@(0x10,r14)
	mov.l r13,@(0x18,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x26,r0
	jsr @r11
	mov.w r10,@(r0,r14)
	mov 0x20,r1
	add r14,r1
	and 0x07,r0
	mov.b r0,@r1
	mov r8,r0
	nop 
	mov.w @(0x100,PC),r1
	mov.w r0,@(0x1E,r14)
	mov.w @(0xFE,PC),r0
	add r14,r1
	mov.w @(0xF8,PC),r2
	mov.l @(0x10C,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0xF4,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
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
	mov.w @(0xDA,PC),r0
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
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r13,r5
	mov.b @(r0,r13),r2
	mov 0x06,r6
	mov.b r9,@(r0,r14)
	bsr loc_8c0b8538
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(0xC4,PC),r0
	extu.b r2,r2
	shll r2
	mov.w @(r0,r2),r3
	mov 0x60,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fdiv fr14,fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0xB0,PC),r0
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mov 0x6C,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fdiv fr14,fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0x9C,PC),r0
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	lds r3,fpul
	float fpul,fr3
	mov.w @(0x72,PC),r0
	fmov fr15,fr0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c0b82d2:
	mov 0x50,r3
	add 0x04,r8
	cmp/ge r3,r8
	bf loc_8c0b8204
	mov r14,r0
	nop 
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
;unused
loc_08c0b82f8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x40,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0b832c
	mov r0,r4
	mov.l @(0x4C,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x28,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x27,r0
	mov.w r0,@(0x1E,r4)
	mov 0x00,r3
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r4)

loc_8c0b832c:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8c0b8334:
	#data 0x00dc
loc_8c0b8336:
	#data 0x00c0
loc_8c0b8338:
	#data 0x012c
loc_8c0b833a:
	#data 0x01a3
loc_8c0b833c:
	#data 0x041c
loc_8c0b833e:
	#data 0x3a01
	#align4

loc_8C0B8340:
	#data bank04.loc_8c044F12
loc_8C0B8344:
	#data loc_8c0b848a
loc_8C0B8348:
	#data bank12.loc_8c129560
loc_8C0B834C:
	#data bank12.loc_8c1294C8
loc_8C0B8350:
	#data bank15.loc_8c159cB4
loc_8C0B8354:
	#data bank15.loc_8c159cC4
loc_8C0B8358:
	#data bank15.loc_8c159cA4
loc_8C0B835C:
	#data loc_8c0b9ED0

;==============================================
loc_8C0B8360:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xD34FE601
#data 0x6D432F52
#data 0x430B6563
#data 0x2008E400
#data 0x6E038D37
#data 0x918FD34b
#data 0x938C1E34
#data 0x1ED631Ec
#data 0x80E184D1
#data 0x0E35E026
#data 0x62F2E020
#data 0x0E24D346
#data 0x92819083
#data 0x32DC430b
#data 0xE2019080
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9072FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD337
#data 0xE024E00c
#data 0xE30865D3
#data 0xE60102Dc
#data 0xB0A70E34
#data 0x64E3

loc_8C0B83EA:
#data 0x60E3
#data 0x7F040009
#data 0x6DF64F26
#data 0x6EF6000b

;----------------------------------------------
loc_8C0B83F8:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xD329E601
#data 0x6D432F52
#data 0x430B6563
#data 0x2008E400
#data 0x6E038D34
#data 0x9143D325
#data 0x93401E34
#data 0x923F31Ec
#data 0x84D11ED6
#data 0xE02680E1
#data 0x903A0E35
#data 0x430BD320
#data 0x903732Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9029
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3130E34
#data 0xE00C430b
#data 0x65D3E024
#data 0x02DCE308
#data 0x66F20E34
#data 0x64E3B05e

#align4
loc_8C0B847C:
#data 0x000960E3
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;----------------------------------------------

loc_8C0B848A:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0
mov.l @(loc_8C0B84B8,pc),r1 ; r1 set to 0x8C159CD4
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3A01
#data 0x00C000Dc
#data 0x01A3012c

#align4
loc_8C0B84A8:
#data bank04.loc_8c044F12

loc_8C0B84AC:
#data loc_8c0b848a

loc_8C0B84B0:
#data bank12.loc_8c129560

loc_8C0B84B4:
#data bank12.loc_8c1294C8

loc_8C0B84B8:
#data bank15.loc_8c159cD4


loc_8C0B84BC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x04,r14),r0
mov.l @(loc_8C0B8528,pc),r3 ; r3 set to 0x8C0B9E94
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.l @r15,r5
jsr @r3
mov r14,r4
mov.l @(loc_8C0B852C,pc),r3 ; r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r14

loc_8C0B84E8:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x01,r14),r0
mov r0,r3 ; r3 ??? bc r0 is ???	
mov.b @(0x01,r5),r0
cmp/eq r0,r3
bt loc_8C0B84Fc
mov r14,r4
bra loc_8C0B850c
mov.l @r15+,r14

loc_8C0B84FC:
mov.b @(0x05,r14),r0
mov r14,r4
mov.l @(loc_8C0B8530,pc),r1 ; r1 set to 0x8C159CE4
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0B850C:
mov.w @(loc_8C0B8524,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4)
mov 0x03,r0 ; r0 set to 0x03
rts
mov.b r0,@(0x04,r4)
;----------------------------------------------

loc_8C0B8518:
mov.w @(loc_8C0B8524,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4)
mov.l @(loc_8C0B8534,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0B8524:
#data 0x012c
#data 0x0000

#align4
loc_8C0B8528:
#data loc_8c0b9E94

loc_8C0B852C:
#data bank10.loc_8c104434

loc_8C0B8530:
#data bank15.loc_8c159cE4

loc_8C0B8534:
#data bank04.loc_8c0450C0


loc_8C0B8538:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
fmov.s fr13,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xEC,r15
mov.l @(loc_8C0B85C8,pc),r12 ; r12 set to 0x8C034E8c
mov 0x00,r11 ; r11 set to 0x00
mov.l r6,@(0x04,r15)
mov r4,r14
mov r5,r13
mov r11,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x07,r14)
mov 0x03,r6 ; r6 set to 0x03
mov.b r0,@(0x06,r14)
mova @(loc_8C0B85CC,pc),r0  ; r0 set to 0x8C0B85Cc
fmov.s @r0,fr12 ; r12 ??	
mova @(loc_8C0B85D0,pc),r0  ; r0 set to 0x8C0B85D0
fmov.s @r0,fr13
mova @(loc_8C0B85D4,pc),r0  ; r0 set to 0x8C0B85D4
fmov.s @r0,fr14
mova @(loc_8C0B85D8,pc),r0  ; r0 set to 0x8C0B85D8
fmov.s @r0,fr11 ; r11 ??	
mova @(loc_8C0B85DC,pc),r0  ; r0 set to 0x8C0B85Dc
fmov.s @r0,fr10
mova @(loc_8C0B85E0,pc),r0  ; r0 set to 0x8C0B85E0
fmov.s @r0,fr9
mova @(loc_8C0B85E4,pc),r0  ; r0 set to 0x8C0B85E4
fmov.s @r0,fr8
mova @(loc_8C0B85E8,pc),r0  ; r0 set to 0x8C0B85E8
fmov.s @r0,fr7
mova @(loc_8C0B85EC,pc),r0  ; r0 set to 0x8C0B85Ec
fmov.s @r0,fr5
mova @(loc_8C0B85F0,pc),r0  ; r0 set to 0x8C0B85F0
mov.l @(loc_8C0B85F4,pc),r9 ; r9 set to 0x8C03319e
mov 0x14,r5 ; r5 set to 0x14
mov.l @(loc_8C0B85FC,pc),r4 ; r4 set to 0x8C26A518
mov 0x1E,r7 ; r7 set to 0x1e
mov.l @(loc_8C0B85F8,pc),r10 ; r10 set to 0x8C2896B0
fmov.s @r0,fr4 ; r4 ??	
fldi0 fr15
mov r7,r0 ; r0 set to 0x1e
nop
add 0x6A,r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr3
fadd fr8,fr3
fmov.s fr3,@r15
mov r5,r0 ; r0 set to 0x14
nop
add 0x78,r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr6 ; r6 ??? bc r4 is ???	
mov.l @(0x04,r15),r0 ; r0 ??? bc r15 is ???	
fadd fr5,fr6
mov 0x17,r1 ; r1 set to 0x17
cmp/hs r1,r0
bf loc_8C0B85Bc
bra loc_8C0B8C92
nop

loc_8C0B85BC:
shll r0
mov r0,r1
mova @(loc_8C0B8600,pc),r0  ; r0 set to 0x8C0B8600
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
braf r0
nop

#align4
loc_8C0B85C8:
#data bank03.loc_8c034e8c

loc_8C0B85CC:
#data 0xC1092492

#align4
loc_8C0B85D0:
#data 0x41892492

#align4
loc_8C0B85D4:
#data 0x41555555

#align4
loc_8C0B85D8:
#data 0x413AAAAa

#align4
loc_8C0B85DC:
#data 0xC13AAAAa

#align4
loc_8C0B85E0:
#data 0xC1200000

#align4
loc_8C0B85E4:
#data 0xC1D55555

#align4
loc_8C0B85E8:
#data 0x41200000

#align4
loc_8C0B85EC:
#data 0x41D55555

#align4
loc_8C0B85F0:
#data 0xBF4DB6Db

#align4
loc_8C0B85F4:
#data bank03.loc_8c03319e

loc_8C0B85F8:
#data 0x8C2896B0

#align4
loc_8C0B85FC:
#data 0x8C26A518

#align4
loc_8C0B8600:
#data 0x00B20066
#data 0x01F20198
#data 0x029C0248
#data 0x034002Dc
#data 0x04040404
#data 0x04EC04C2
#data 0x0558050c
#data 0x0592058a
#data 0x05AC059e
#data 0x060C05C2
#data 0x065C0630
#data 0x9086068c
#data 0x03EDF4F8
#data 0x8F032338
#data 0xC744F5Ec
#data 0xF508F46c
#data 0xFE47E034
#data 0xF3D6907c
#data 0xFE37E038
#data 0xFE57E05c
#data 0xFEF7E068
#data 0x00096053
#data 0x81EE490b
#data 0x6103D33c
#data 0xE00E430b
#data 0x4000E121
#data 0x700131Ec
#data 0xE0212100
#data 0x633C03Ec
#data 0xA08C4301
#data 0xC7367330
#data 0x905EF408
#data 0x233803Ed
#data 0xF5EC8F04
#data 0xF408C733
#data 0xF508C72f
#data 0xF3D6E034
#data 0xFE37F340
#data 0xF3D69052
#data 0xFE37E038
#data 0xFE57E05c
#data 0xFEF7E068
#data 0x0EB4E023
#data 0x81EE9049
#data 0x03ECE020
#data 0x2368633c
#data 0xE80F8F02
#data 0x81EFE001
#data 0x0009490b
#data 0x6103D322
#data 0x6083430b
#data 0x96396403
#data 0xE0216543
#data 0x0E4436Dc
#data 0x356C7610
#data 0x43156350
#data 0x63508B03
#data 0xA00873Ff
#data 0x01EC2530
#data 0x611CD31b
#data 0x430B7101
#data 0xAFEA6083
#data 0x04EC6403
#data 0x03ECE020
#data 0x2338644c
#data 0x74408F01
#data 0x901CE44f
#data 0x700B0E44
#data 0x70F20EB5
#data 0x70260EB4
#data 0x84E20EB6
#data 0x600C63A2
#data 0x737C4000
#data 0x7201023d
#data 0xE3400325
#data 0x02ED900c
#data 0x0E25223b
#data 0x01ECE021
#data 0xA03A4100
#data 0x01300E14
#data 0x0258041c
#data 0x01A102A4
#data 0x000001Ac
#data 0xC1555555

#align4
loc_8C0B8750:
#data bank12.loc_8c12939c
#data 0xC4200000
#data 0x44200000

#align4
loc_8C0B875C:
#data bank12.loc_8c1292D4
#data 0xF4F89086
#data 0x233803Ed
#data 0xE0348F01
#data 0xFE47F46c
#data 0xF3D6907f
#data 0xFE37E038
#data 0x490BE068
#data 0xD33FFEF7
#data 0x430B6103
#data 0xE121E00d
#data 0x31EC4000
#data 0xE3557001
#data 0x906F2100
#data 0x700B0E34
#data 0x70F20EB5
#data 0x70260EB4
#data 0x84E20EB6
#data 0x600C63A2
#data 0x737C4000
#data 0x7201023d
#data 0xE0210325
#data 0xA20B06Ec
#data 0x60537602
#data 0x81EE0009
#data 0x00096063
#data 0xC72E81Ef
#data 0x9054F308
#data 0x904FF446
#data 0x03EDF430
#data 0x8F062338
#data 0xC72AF5Bc
#data 0xF208F5Ac
#data 0xF446904a
#data 0xE034F420
#data 0xC727FE47
#data 0x9040F308
#data 0xE038F2D6
#data 0xFE27F230
#data 0xFE57E05c
#data 0xFEF7E068
#data 0xFEC7E060
#data 0xF208C721
#data 0xFE27E06c
#data 0xE350A06a
#data 0x00096053
#data 0x606381Ee
#data 0x81EF0009
#data 0xF408C71c
#data 0x03ED9026
#data 0x89022338
#data 0xF58CC71a
#data 0xE034F408
#data 0xE353F3D6
#data 0xFE37F350
#data 0xF308C717
#data 0xF2D69019
#data 0xF230E038
#data 0xE05CFE27
#data 0xE068FE47
#data 0xC713FEF7
#data 0xE060F208
#data 0xC712FE27
#data 0xE06CF208
#data 0x9009FE27
#data 0x0E34A042
#data 0xFEF7E060
#data 0xFE47E06c
#data 0xE62DA1B0
#data 0x041C0130
#data 0x008801A1
#data 0x0000008c

#align4
loc_8C0B887C:
#data bank12.loc_8c12939c
#data 0xC2D55555
#data 0x42D55555
#data 0x43AB6DB6
#data 0x3E892492
#data 0xC0A00000
#data 0x40A00000
#data 0x43F00000
#data 0xC19A4924
#data 0x3F092492
#data 0x00096053
#data 0xC74181Ee
#data 0x9078F308
#data 0xC740F446
#data 0x9075F508
#data 0x233803Ed
#data 0xF4308F07
#data 0xF208C73d
#data 0xF446906f
#data 0xF508C73c
#data 0xE034F420
#data 0xE354FE47
#data 0xF3D69068
#data 0xFE37E038
#data 0xFE57E05c
#data 0xFEF7E068
#data 0x0E349061
#data 0x0EB59060
#data 0x0EB470F2
#data 0x0EB67026
#data 0x63A284E2
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0xE624A164
#data 0xE209E024
#data 0xC72C0E24
#data 0x9048F308
#data 0x9045F446
#data 0x03EDF430
#data 0x8D062338
#data 0xC728F5Ac
#data 0xF208F5Bc
#data 0xF446903b
#data 0xE034F420
#data 0xC725FE47
#data 0xE351F308
#data 0xF2D69036
#data 0xF230E038
#data 0xE05CFE27
#data 0xE06CFE57
#data 0xE060FEF7
#data 0xE068FEF7
#data 0x902AFEF7
#data 0x700B0E34
#data 0x70F20EB5
#data 0x70260EB4
#data 0x84E20EB6
#data 0x600C63A2
#data 0x737C4000
#data 0x7201023d
#data 0xE5170325
#data 0xE625901a
#data 0x630302Ed
#data 0x223B7354
#data 0x4C0B0E25
#data 0xE51464E3
#data 0x64D3BD36
#data 0x8F022008
#data 0xA17E6403
#data 0x900A0009
#data 0xE03404E6
#data 0xA178F3E6
#data 0x0088F437
#data 0x008C0130
#data 0x01A1041c
#data 0x00D401Ac
#data 0xC2D55555
#data 0x41700000
#data 0x42D55555
#data 0xC1700000
#data 0x42555555
#data 0xC2555555
#data 0x42892492
#data 0x600C84E5
#data 0x8D108801
#data 0x60436403
#data 0x88020009
#data 0x6043890b
#data 0x88060009
#data 0x60438907
#data 0x88120009
#data 0xD3458903
#data 0x430BE527
#data 0xE01064E3
#data 0xFFF765F3
#data 0xFFF7E008
#data 0xF3F6E00c
#data 0xD340E00c
#data 0xF3D07508
#data 0xFF37E600
#data 0x64E3430b
#data 0xFE08C73d
#data 0xF3D69071
#data 0xF2E6E038
#data 0x891EF235
#data 0xF3D6906b
#data 0xFE37E038
#data 0xF3E6E05c
#data 0xFE37F34d
#data 0x490BE068
#data 0xC907FEF7
#data 0x4011405a
#data 0xF32D8D04
#data 0x435AD332
#data 0xF320F20d
#data 0xF208C731
#data 0xF322E060
#data 0xE06CFE37
#data 0xFEE7490b
#data 0xA00FE607
#data 0xE05C2609
#data 0xC72CF3E6
#data 0xE05CF208
#data 0xE60BF34d
#data 0xFE37F323
#data 0xFEF7E068
#data 0xFEC7E060
#data 0xFEE7E06c
#data 0x4C0BE50d
#data 0xA10464E3
#data 0x90390009
#data 0x02EDE301
#data 0x0E25223a
#data 0x211801Ed
#data 0xF49C8D02
#data 0xF47CF58c
#data 0xF3E6E034
#data 0xFE37F350
#data 0xFE47E05c
#data 0xFEF7E068
#data 0xE62CA08e
#data 0xE3019024
#data 0x223A02Ed
#data 0x01ED0E25
#data 0x8D012118
#data 0xF47CF49c
#data 0xFE47E05c
#data 0xFEF7E068
#data 0xE62BA07e
#data 0xE3019014
#data 0x223A02Ed
#data 0x01ED0E25
#data 0x8D012118
#data 0xF47CF49c
#data 0xFE47E05c
#data 0xE517E068
#data 0xE62AFEF7
#data 0x64E34C0b
#data 0xA078D508
#data 0x041C0009
#data 0x00000130

#align4
loc_8C0B8B04:
#data bank04.loc_8c042008

loc_8C0B8B08:
#data bank0f.loc_8c0fDAB6
#data 0xBF092492
#data 0x4F800000
#data 0x40092492
#data 0x40800000
#data 0x00010000
#data 0xE05CF29d
#data 0xF3E6F220
#data 0xF323F34d
#data 0xE068FE37
#data 0xE06CFEF7
#data 0xC741FE47
#data 0x907BF408
#data 0xE038F3D6
#data 0xF135F1E6
#data 0xC73E8901
#data 0xE060F408
#data 0xA03FFE47
#data 0xE002E629
#data 0xA03B81Ee
#data 0x6073E628
#data 0xE6270009
#data 0xA03581Ee
#data 0x90650009
#data 0xF3D6E600
#data 0xFE37E038
#data 0xE511A05c
#data 0x80E7E00b
#data 0xFEF7E060
#data 0xFEF7E068
#data 0xE609E06c
#data 0xA051FE47
#data 0x85DFE501
#data 0x70FFE356
#data 0xE00A81Df
#data 0xE01080E7
#data 0xE06881Ef
#data 0xE05CFEF7
#data 0xC728FEF7
#data 0xE060F308
#data 0xE06CFE37
#data 0x9042FE47
#data 0x700B0E34
#data 0x70F20EB5
#data 0x70260EB4
#data 0x84E20EB6
#data 0x600C63A2
#data 0x737C4000
#data 0x7201023d
#data 0x0325E631
#data 0xE517A02c
#data 0x80E7E00c
#data 0xFEF7E060
#data 0xFEF7E068
#data 0xE517E06c
#data 0xE632FE47
#data 0x64E34C0b
#data 0xD316E500
#data 0x64E3430b
#data 0x0009A04d
#data 0xF3D6901c
#data 0xFE37E038
#data 0xF408C712
#data 0x03ED9018
#data 0x89012338
#data 0xF408C710
#data 0xFE47E05c
#data 0xFEF7E068
#data 0x00096073
#data 0x81EEE62f
#data 0xE517A004
#data 0xE517E078
#data 0xE63081Ee
#data 0x64E34C0b
#data 0x0009A02f
#data 0x01A1041c
#data 0x00000130
#data 0xC0892492
#data 0x41092492
#data 0xC14DB6Db

#align4
loc_8C0B8C48:
#data loc_8c0bA710
#data 0xC1055555
#data 0x41055555
#data 0xE3019094
#data 0x02EDE527
#data 0x0E25223a
#data 0xF3E6E05c
#data 0xF34DD249
#data 0x420BFE37
#data 0x62E364E3
#data 0x61F3D347
#data 0x71087234
#data 0xE00C430b
#data 0x65F3E00c
#data 0xE00CF3F6
#data 0x7508D343
#data 0xE600F3D0
#data 0x430BFF37
#data 0x64E3


loc_8C0B8C92:
mov.b @(0x04,r15),r0
mov.b r0,@(0x05,r14)
add 0x14,r15
lds.l @r15+,pr
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B8CB2:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x05,r13),r0
tst r0,r0
bt/s loc_8C0B8CDc
mov r4,r14
mov.w @(loc_8C0B8D82,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0B8CDc
lds.l @r15+,pr
mov r13,r5
mov 0x0F,r6 ; r6 set to 0x0f
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

loc_8C0B8CDC:
mov.l @(loc_8C0B8D98,pc),r2 ; r2 set to 0x8C03340c
jsr @r2
mov r14,r4
tst r0,r0
bf loc_8C0B8CF4
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B850c
mov.l @r15+,r14

loc_8C0B8CF4:
mov.w @(loc_8C0B8D84,pc),r0 ; r0 set to 0x2A4
mov 0x04,r3 ; r3 set to 0x04
mov.l r3,@(r0,r13)
mov.w @(loc_8C0B8D82,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
tst 0x11,r0
bt loc_8C0B8D06
bra loc_8C0B8D2c
mov 0x0D,r6

loc_8c0b8d06:
mov.w @(loc_8C0B8D86,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0b8d3a
mov.w @(loc_8C0B8D88,pc),r0
mov 0x2C,r2
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/gt r2,r3
bf/s loc_8c0b8d22
mov 0x2E,r12
mov.b @(r0,r14),r12
extu.b r12,r12
add 0x01,r12

loc_8c0b8d22:
mov.l @(loc_8c0b8d8c,pc),r3
mov r12,r5
jsr @r3
mov r14,r4
mov 0x08,r6

loc_8C0B8D2C:
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

loc_8C0B8D3A:
#data 0xE15c
#data 0x31ECD317
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B042008
#data 0xD308900e
#data 0x430B05Ec
#data 0x64E3

loc_8C0B8D72:
#data 0x4F26
#data 0x64E3D20a
#data 0x6DF66CF6
#data 0x6EF6422b
#data 0x0130

loc_8C0B8D82:
#data 0x019e

loc_8C0B8D84:
#data 0x02A4
loc_8c0b8d86:
#data 0x019f
loc_8c0b8d88:
#data 0x0000014b

#align4
loc_8C0B8D8C:
#data bank04.loc_8c042008

loc_8C0B8D90:
#data bank12.loc_8c1294C8

loc_8C0B8D94:
#data bank0f.loc_8c0fDAB6

loc_8C0B8D98:
#data bank03.loc_8c03340c

loc_8C0B8D9C:
#data bank03.loc_8c034dee

loc_8C0B8DA0:
#data bank04.loc_8c045748

loc_8C0B8DA4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F222FC6
#data 0x401585Ee
#data 0xEC018F08
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89014015
#data 0x0EC4E023

#align4
loc_8C0B8DC8:
#data 0x430BD33d
#data 0x200864E3
#data 0x906E8B0d
#data 0x0E34E300
#data 0x02ECE023
#data 0x89182228
#data 0x65D34F26
#data 0x6CF664E3
#data 0xAB8F6DF6
#data 0x6EF6

loc_8C0B8DEE:
#data 0x9060
#data 0x85EF0EC4
#data 0x890C2008
#data 0xE000D332
#data 0x81EF430b
#data 0x6103D231
#data 0xE006420b
#data 0x6503D330
#data 0x430B7516
#data 0x64E3

loc_8C0B8E12:
#data 0x904f
#data 0x0D26E204
#data 0x03EC904d
#data 0x890E2338
#data 0x00ECE021
#data 0x881C600c
#data 0x65D38F02
#data 0xE616A001

loc_8C0B8E30:
#data 0xE608

loc_8C0B8E32:
#data 0x4F26
#data 0x6CF664E3
#data 0xAB7D6DF6
#data 0x6EF6

loc_8C0B8E3E:
#data 0xE15c
#data 0x31ECD323
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0xF4D6E034
#data 0x9027F3E6
#data 0x233803Ed
#data 0xF4318F01
#data 0xF44d

loc_8C0B8E72:
#data 0xF38d
#data 0x8B15F345
#data 0x02EC901f
#data 0x89112228
#data 0x03ECE020
#data 0x8F012338
#data 0xE402E414

#align4
loc_8C0B8E8C:
#data 0x0EC4E023
#data 0x00096043
#data 0xE51781De
#data 0xD30E9010
#data 0x760106Ec
#data 0x64E3430b

#align4
loc_8C0B8EA4:
#data 0xD20C4F26
#data 0x6CF664E3
#data 0x422B6DF6
#data 0x012C6EF6
#data 0x019F02A4
#data 0x01410130
#data 0x00000158

#align4
loc_8C0B8EC0:
#data bank03.loc_8c03340c

loc_8C0B8EC4:
#data bank03.loc_8c03319e

loc_8C0B8EC8:
#data bank12.loc_8c12939c

loc_8C0B8ECC:
#data bank04.loc_8c042008

loc_8C0B8ED0:
#data bank03.loc_8c034dee

loc_8C0B8ED4:
#data bank03.loc_8c034e8c

loc_8C0B8ED8:
#data bank04.loc_8c045748


loc_8C0B8EDC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.w @(0x1E,r14),r0
tst r0,r0
bt/s loc_8C0B8F22
mov r5,r13
mov.w @(loc_8C0B8FFC,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14)
mov.w @(0x1E,r14),r0
add 0xFF,r0 ; r0 set to 0x12b
mov.w r0,@(0x1E,r14)
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0B8FC0
mov.w @(0x1C,r14),r0
tst r0,r0
bt loc_8C0B8FC0
mov.l @(loc_8C0B9004,pc),r3 ; r3 set to 0x8C03319e
jsr @r3
nop
mov.l @(loc_8C0B9008,pc),r2 ; r2 set to 0x8C12939c
mov r0,r1
jsr @r2
mov 0x06,r0 ; r0 set to 0x06
lds.l @r15+,pr
mov r0,r5 ; r5 set to 0x06
mov.l @(loc_8C0B900C,pc),r3 ; r3 set to 0x8C042008
add 0x16,r5 ; r5 set to 0x1c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B8F22:
mov.l @(loc_8C0B9010,pc),r2 ; r2 set to 0x8C03340c
jsr @r2
mov r14,r4
tst r0,r0
bf loc_8C0B8F3e
mov r13,r5
mov.w @(loc_8C0B8FFC,pc),r0 ; r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00
mov r14,r4
mov.b r2,@(r0,r14)
lds.l @r15+,pr
mov.l @r15+,r13
bra loc_8C0B850c
mov.l @r15+,r14

loc_8C0B8F3E:
mov.w @(loc_8C0B8FFC,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov 0x04,r3 ; r3 set to 0x04
mov.b r2,@(r0,r14)
mov.w @(loc_8C0B8FFE,pc),r0 ; r0 set to 0x2A4
mov.l r3,@(r0,r13)
mov.w @(loc_8C0B9000,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
tst r2,r2
bt loc_8C0B8F60
lds.l @r15+,pr
mov r13,r5
mov 0x09,r6 ; r6 set to 0x09
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

#align4
loc_8c0b8f60:
mov 0x5C,r1
add r14,r1
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
mov.w @(loc_8C0B9002,pc),r0
fmov.s @(r0,r13),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf/s loc_8c0b8fae
mov r14,r4
mov 0x60,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

loc_8c0b8fae:
mov.l @(loc_8c0b9014,pc),r3
jsr @r3
nop 
lds.l @r15+,pr 
mov.l @(loc_8c0b9018,pc),r2
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B8FC0:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B8FC8:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0
tst r0,r0
bt/s loc_8C0B8FDc
mov r4,r14
bra loc_8C0B9044
mov 0x05,r6

#align4
loc_8c0b8fdc:
mov.l @(loc_8c0b901c,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8c0b8ff0
mov.l @(loc_8c0b9010,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c0b9020

loc_8c0b8ff0:
lds.l @r15+,pr 
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8c0b850c
mov.l @r15+,r14

loc_8c0b8ffc:
#data 0x012C

loc_8c0b8ffe:
#data 0x02A4

loc_8c0b9000:
#data 0x019F
loc_8c0b9002:
#data 0x041C

loc_8c0b9004:
#data 0x319E
#data 0x8C03

loc_8c0b9008:
#data 0x939C
#data 0x8C12

loc_8c0b900c:
#data 0x2008
#data 0x8C04

#align4
loc_8c0b9010:
#data bank03.loc_8c03340c

loc_8c0b9014:
#data 0x4DEE
#data 0x8C03

loc_8c0b9018:
#data 0x5748
#data 0x8C04

#align4
loc_8c0b901c:
#data bank03.loc_8c0335b0


loc_8c0b9020:
mov.w @(loc_8C0B912E,pc),r0
mov 0x04,r2
mov.l r2,@(r0,r13) 
mov.w @(loc_8C0B9130,pc),r0
mov.b @(r0,r14),r0
tst 0x11,r0 
bt loc_8c0b9032
bra loc_8c0b9044
mov 0x0D,r6

loc_8c0b9032:
mov.w @(loc_8C0B9132,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0b9050
mov.l @(loc_8c0b913c,pc),r3
mov 0x34,r5
jsr @r3
mov r14,r4
mov 0x09,r6

loc_8C0B9044:
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

#align4
loc_8C0B9050:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B042008
#data 0xD337906a
#data 0x430B05Ec
#data 0x64E3

loc_8C0B9066:
#data 0x9066
#data 0x222802Ec
#data 0x03EC8903
#data 0xA03C73Ff
#data 0x0E34

loc_8C0B9076:
#data 0xE15c
#data 0x31ECD331
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x02EC903c
#data 0x89182228
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x8B124015
#data 0xE2509036
#data 0xD31DE400
#data 0x700B0E24
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x0215

loc_8C0B90EE:
#data 0x4F26
#data 0x64E3D315
#data 0x432B6DF6
#data 0x6EF6


loc_8C0B90FA:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0
tst r0,r0
bt/s loc_8C0B910e
mov r4,r14
bra loc_8C0B9178
mov 0x05,r6

loc_8c0b910e:
mov.l @(loc_8c0b914c,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8c0b9122
mov.l @(loc_8c0b9150,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c0b9154

loc_8c0b9122:
lds.l @r15+,pr 
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8c0b850c
mov.l @r15+,r14
loc_8c0b912e:
#data 0x02A4
loc_8c0b9130:
#data 0x019E
loc_8c0b9132:
#data 0x019F
#data 0x014B
#data 0x01A0
#data 0x01A1
#data 0x0000

loc_8c0b913c:
#data 0x2008
#data 0x8C04

loc_8c0b9140:
#data 0x4DEE
#data 0x8C03
#data 0x96B0
#data 0x8C28

loc_8c0b9148:
#data 0x5748
#data 0x8C04

#align4
loc_8c0b914c:
#data bank03.loc_8c0335b0

loc_8c0b9150:
#data bank03.loc_8c03340c


loc_8c0b9154:
mov.w @(loc_8C0B9240,pc),r0
mov 0x04,r2
mov.l r2,@(r0,r13) 
mov.w @(loc_8C0B9242,pc),r0
mov.b @(r0,r14),r0
tst 0x11,r0 
bt loc_8c0b9166
bra loc_8c0b9178
mov 0x0D,r6

loc_8c0b9166:
mov.w @(loc_8C0B9244,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0b9184
mov.l @(loc_8c0b924c,pc),r3
mov 0x34,r5
jsr @r3
mov r14,r4
mov 0x09,r6

loc_8C0B9178:
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

#align4
loc_8C0B9184:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B042008
#data 0xD32E9059
#data 0x430B05Ec
#data 0x64E3

loc_8C0B919A:
#data 0x9055
#data 0x222802Ec
#data 0x03EC8903
#data 0xA04573Ff
#data 0x0E34

loc_8C0B91AA:
#data 0xE15c
#data 0x31ECD328
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0xF38DE060
#data 0xF235F2E6
#data 0x65D38B03
#data 0xB99FE605
#data 0x64E3

loc_8C0B91FA:
#data 0x9022
#data 0x233803Ec
#data 0x85EF8918
#data 0x81EF70Ff
#data 0x4015600f
#data 0x901C8B12
#data 0xE400E250
#data 0x0E24D30f
#data 0x0E45700b
#data 0x0E4470F2
#data 0x0E467026
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0B9234:
#data 0xD3084F26
#data 0x6DF664E3
#data 0x6EF6432b
loc_8c0b9240:
#data 0x02A4
loc_8c0b9242:
#data 0x019E
loc_8c0b9244:
#data 0x014B019f
#data 0x01A101A0

#align4
loc_8C0B924C:
#data bank04.loc_8c042008

loc_8C0B9250:
#data bank03.loc_8c034dee
#data 0x8C2896B0

#align4
loc_8C0B9258:
#data bank04.loc_8c045748


loc_8C0B925C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
tst r0,r0
bf/s loc_8C0B92B8
mov r5,r13
mov 0x60,r1 ; r1 set to 0x60
mov.l @(loc_8C0B9354,pc),r3 ; r3 set to 0x8C034DEe
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
jsr @r3
mov r14,r4
mov.w @(loc_8C0B934A,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B92D2
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(loc_8C0B9358,pc),r3 ; r3 set to 0x8C034E8c
mov 0x2E,r6 ; r6 set to 0x2e
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x06,r14)
mov 0x17,r5 ; r5 set to 0x17
mov.w @(loc_8C0B934A,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B92B8:
mov.l @(loc_8C0B9354,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B92D2
lds.l @r15+,pr
mov r13,r5
mov 0x0B,r6 ; r6 set to 0x0b
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

loc_8C0B92D2:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B92DA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.w @(0x1E,r14),r0
tst r0,r0
bt/s loc_8C0B92F8
mov r5,r13
mov.w @(loc_8C0B934C,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14)
mov.w @(0x1E,r14),r0
add 0xFF,r0 ; r0 set to 0x12b
bra loc_8C0B93Ae
mov.w r0,@(0x1E,r14)

#align4
loc_8c0b92f8:
mov.l @(loc_8c0b935c,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8c0b930c
mov.l @(loc_8c0b9360,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c0b9318

loc_8c0b930c:
lds.l @r15+,pr 
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8c0b850c
mov.l @r15+,r14

loc_8c0b9318:
mov.w @(loc_8c0b934c,pc),r0
mov 0x01,r2
mov 0x04,r3
mov.b r2,@(r0,r14) 
mov.w @(loc_8C0B934E,pc),r0
mov.l r3,@(r0,r13) 
mov.w @(loc_8C0B9350,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8c0b933a
lds.l @r15+,pr 
mov r13,r5
mov 0x09,r6
mov r14,r4
mov.l @r15+,r13
bra loc_8c0b8538
mov.l @r15+,r14

loc_8c0b933a:
mov.w @(loc_8C0B9352,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8c0b9364
mov.b @(r0,r14),r3
add 0xFF,r3
bra loc_8c0b93a2
mov.b r3,@(r0,r14) 

loc_8c0b934a:
#data 0x041C

loc_8c0b934c:
#data 0x012C

loc_8C0B934E:
#data 0x02A4

loc_8C0B9350:
#data 0x019F

loc_8C0B9352:
#data 0x01A0

loc_8c0b9354:
#data 0x4DEE
#data 0x8C03

loc_8c0b9358:
#data 0x4E8C
#data 0x8C03

#align4
loc_8c0b935c:
#data bank03.loc_8c0335b0

loc_8c0b9360:
#data bank03.loc_8c03340c


loc_8c0b9364:
mov 0x5C,r1
mov.l @(loc_8c0b94ac,pc),r3
add r14,r1
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
jsr @r3
mov r14,r4

loc_8c0b93a2:
lds.l @r15+,pr 
mov.l @(loc_8c0b94b0,pc),r2
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B93AE:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B93B6:
mov r4,r3
mov.l @(loc_8C0B94B4,pc),r1 ; r1 set to 0x8C159D40
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B93C8:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0
tst r0,r0
bt/s loc_8C0B93E8
mov r4,r14
fldi1 fr3
fadd fr3,fr3
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fdiv fr3,fr2
fmov.s fr2,@(r0,r14)
bra loc_8C0B940e
mov 0x11,r6

loc_8C0B93E8:
mov.w @(loc_8C0B94A4,pc),r0 ; r0 set to 0x2A4
mov 0x04,r2 ; r2 set to 0x04
mov.l r2,@(r0,r13)
mov.w @(loc_8C0B94A6,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B93Fa
bra loc_8C0B940e
mov 0x09,r6

loc_8C0B93FA:
mov.w @(loc_8C0B94A8,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0B9444
mov.l @(loc_8C0B94B8,pc),r3 ; r3 set to 0x8C05264c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B941a
mov 0x0D,r6 ; r6 set to 0x0d

loc_8C0B940E:
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

loc_8C0B941A:
mov.b @(0x06,r14),r0
mov 0x08,r3 ; r3 set to 0x08
mov r13,r5
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
bsr loc_8C0B9668
mov r14,r4
mov.l @(loc_8C0B94BC,pc),r2 ; r2 set to 0x8C04223a
mov 0x23,r5 ; r5 set to 0x23
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_8C0B94C0,pc),r3 ; r3 set to 0x8C034E8c
mov 0x26,r6 ; r6 set to 0x26
mov 0x17,r5 ; r5 set to 0x17
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9444:
mov.l @(loc_8C0B94AC,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B94C4,pc),r3 ; r3 set to 0x8C03340c
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B9498
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B850c
mov.l @r15+,r14

loc_8C0B9498:
lds.l @r15+,pr
mov.l @(loc_8C0B94B0,pc),r2 ; r2 set to 0x8C045748
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B94A4:
#data 0x02A4

loc_8C0B94A6:
#data 0x019f

loc_8C0B94A8:
#data 0x019e
#data 0x0000

#align4
loc_8C0B94AC:
#data bank03.loc_8c034dee

loc_8C0B94B0:
#data bank04.loc_8c045748

loc_8C0B94B4:
#data bank15.loc_8c159d40

loc_8C0B94B8:
#data bank05.loc_8c05264c

loc_8C0B94BC:
#data bank04.loc_8c04223a

loc_8C0B94C0:
#data bank03.loc_8c034e8c

loc_8C0B94C4:
#data bank03.loc_8c03340c

loc_8C0B94C8:
#data 0x2FD62FE6
#data 0x2FC66D43
#data 0x4F226C53
#data 0xD33E9071
#data 0x0EDE430b
#data 0x02EC906e
#data 0x8B402228
#data 0xE50E84D6
#data 0xE600D33a
#data 0x80D67001
#data 0x64E3430b
#data 0x65E3D238
#data 0x64D3420b
#data 0xE501905f
#data 0x905D03Ce
#data 0xE0780D36
#data 0xE03C81De
#data 0x905681Df
#data 0x430BD332
#data 0x905404Ce
#data 0x9353E206
#data 0x70010E24
#data 0xE2010C34
#data 0x70F30E34
#data 0xE3FF0C24
#data 0x0C34904b
#data 0x00EC904a
#data 0x8802600c
#data 0xC7298B15
#data 0xE05CF408
#data 0xF343F3E6
#data 0xE068FE37
#data 0xF38DF2E6
#data 0xFE27F243
#data 0xF2E6E060
#data 0x8B02F235
#data 0xF243F2E6
#data 0xFE27

loc_8C0B955E:
#data 0xC721
#data 0xE06CF308
#data 0xFE37

loc_8C0B9566:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;----------------------------------------------

#align4
loc_8C0B9570:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0xFFFB6C53
#data 0x901F4F22
#data 0x430BD313
#data 0x65C30DEe
#data 0x64E3B06e
#data 0x03DE901d
#data 0x8F083E30
#data 0x9019FF8d
#data 0x222802Dc
#data 0x84D58926
#data 0x8803600c
#data 0x8B22

loc_8C0B95A6:
#data 0xD310
#data 0x65C3E05c
#data 0xE611FEF7
#data 0x64E3430b
#data 0xA051E00a
#data 0x01B080E7
#data 0x01C801A0
#data 0x01F600D0
#data 0x015A00C2
#data 0x01CC01F9
#data 0x0000019f

#align4
loc_8C0B95D0:
#data bank03.loc_8c034dee

loc_8C0B95D4:
#data bank03.loc_8c034e8c

loc_8C0B95D8:
#data bank05.loc_8c05248e

loc_8C0B95DC:
#data bank05.loc_8c050552
#data 0x40800000
#data 0xBF4DB6Db

#align4
loc_8C0B95E8:
#data loc_8c0b8538

loc_8C0B95EC:
#data 0xD34085Ef
#data 0x81EF70Ff
#data 0x64D3430b
#data 0x89022008
#data 0x70FD85Ee
#data 0x81Ee

loc_8C0B9602:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x4011600f
#data 0x90688926
#data 0xE308E200
#data 0x70F90D24
#data 0x90630D34
#data 0x421502Dd
#data 0x90608B0c
#data 0x600C00Dc
#data 0x89048802
#data 0x420BD231
#data 0xA00364D3
#data 0x0009

loc_8C0B9636:
#data 0xD230
#data 0x64D3420b

#align4
loc_8C0B963C:
#data 0xFEF7E05c
#data 0x85EFED0b
#data 0x8D024015
#data 0xE613E611
#data 0xED0c

loc_8C0B964E:
#data 0xD22b
#data 0x420B65C3
#data 0x60D364E3
#data 0x80E70009

#align4
loc_8C0B965C:
#data 0xFFF94F26
#data 0x6DF66CF6
#data 0x6EF6000b
;----------------------------------------------

#align4
loc_8c0b9668:
mov.w @(loc_8C0B96E8,pc),r0
mov.l @(r0,r4),r5
add 0x8E,r0
mov.b @(r0,r5),r3
mova @(loc_8C0B9700,pc),r0 
fmov.s @r0,fr2
extu.b r3,r3
mov.w @(loc_8C0B96EA,pc),r0
shlr2 r3
lds r3,fpul 
mov.w @(r0,r5),r3
float fpul,fr3
tst r3,r3
fmov fr3,fr4
bf/s loc_8c0b968a
fmul fr2,fr4
fneg fr4

loc_8c0b968a:
mov 0x34,r0
fmov.s @(r0,r5),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r4) 
mov.w @(loc_8C0B96EC,pc),r0
mov.b @(r0,r5),r3
mova @(loc_8C0B9704,pc),r0 
fmov.s @r0,fr2
extu.b r3,r3
lds r3,fpul 
float fpul,fr3
fcmp/gt fr3,fr2
bf loc_8c0b96be
mov.w @(loc_8C0B96EC,pc),r0
mov.b @(r0,r5),r2
mov 0x38,r0
fmov.s @(r0,r5),fr1
mova @(loc_8C0B9708,pc),r0 
extu.b r2,r2
fmov.s @r0,fr0
shlr2 r2
lds r2,fpul 
mov 0x38,r0
float fpul,fr3
fmac fr0,fr3,fr1
fmov.s fr1,@(r0,r4) 

loc_8c0b96be:
rts 
nop 

loc_8C0B96C2:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0B970C,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r5,r13
tst r0,r0
bf loc_8C0B9714
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0B9710,pc),r3 ; r3 set to 0x8C0B850c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14
#data 0x01F6
#data 0x01F90420
loc_8c0b96e8:
#data 0x01B0
loc_8c0b96ea:
#data 0x0130
loc_8c0b96ec:
#data 0x0000013c

#align4
loc_8C0B96F0:
#data bank05.loc_8c0505B8

loc_8C0B96F4:
#data bank05.loc_8c051648

loc_8C0B96F8:
#data bank05.loc_8c0517Be

loc_8C0B96FC:
#data loc_8c0b8538
loc_8c0b9700:
#data 0x3FD55555
loc_8c0b9704:
#data 0x43092492
loc_8c0b9708:
#data 0x40092492

#align4
loc_8C0B970C:
#data bank03.loc_8c03340c

loc_8C0B9710:
#data loc_8c0b850c

loc_8c0b9714:
mov 0x5C,r1
add r14,r1
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
mov.w @(loc_8c0b983e,pc),r0
fmov.s @(r0,r13),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8c0b9770
mov.w @(loc_8c0b983e,pc),r0
fmov.s @(r0,r13),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14) 
mov 0x60,r0
fmov.s @(r0,r14),fr3
mova @(loc_8C0B9840,pc),r0 
fmov.s @r0,fr2
mov 0x60,r0
fneg fr3
fdiv fr2,fr3
fmov.s fr3,@(r0,r14) 

loc_8c0b9770:
lds.l @r15+,pr 
mov.l @r15+,r13
rts 
mov.l @r15+,r14

loc_8C0B9778:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0B9844,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r5,r13
tst r0,r0
bf loc_8C0B9798
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0B9848,pc),r3 ; r3 set to 0x8C0B850c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9798:
mov 0x5C,r1 ; r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
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
mov.w @(loc_8C0B983E,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B97Ec
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0B984C,pc),r2 ; r2 set to 0x8C0B8538
mov 0x10,r6 ; r6 set to 0x10
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B97EC:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B97F4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0B9844,pc),r3 ; r3 set to 0x8C03340c
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B9816
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C0B9848,pc),r3 ; r3 set to 0x8C0B850c
jmp @r3
mov.l @r15+,r14

loc_8C0B9816:
mov 0x5C,r1 ; r1 set to 0x5c
mov r14,r4
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
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
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C0B9850,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
mov.l @r15+,r14

loc_8C0B983E:
#data 0x041c
loc_8c0b9840:
#data 0x40800000

#align4
loc_8C0B9844:
#data bank03.loc_8c03340c

loc_8C0B9848:
#data loc_8c0b850c

loc_8C0B984C:
#data loc_8c0b8538

loc_8C0B9850:
#data bank03.loc_8c034dee


loc_8C0B9854:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x06,r14),r0
tst r0,r0
bf loc_8C0B98C0
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B9984,pc),r3 ; r3 set to 0x8C034DEe
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
jsr @r3
mov r14,r4
mov.w @(loc_8C0B997C,pc),r0 ; r0 set to 0x41c
mov.l @r15,r2
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B98C0
mov.l @r15,r5
mov r14,r4
mov 0x10,r6 ; r6 set to 0x10
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C0B9988,pc),r3 ; r3 set to 0x8C0B8538
jmp @r3
mov.l @r15+,r14

loc_8C0B98C0:
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

#align4
loc_8C0B98C8:
#data 0x6E432FE6
#data 0x31ECE160
#data 0x4F22E038
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x9047FE27
#data 0xE038F356
#data 0xF325F2E6
#data 0x90418B10
#data 0xF356E300
#data 0xFE37E038
#data 0x0E34903d
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89034015
#data 0xE60AD21d
#data 0x64E3420b

#align4
loc_8C0B9918:
#data 0x03EC9031
#data 0x8B022338
#data 0x430BD318
#data 0x64E3

loc_8C0B9926:
#data 0x902b
#data 0x222802Ec
#data 0xE3008909
#data 0xC7160E34
#data 0xE060F308
#data 0xC715FE37
#data 0xE06CF308
#data 0xFE37

loc_8C0B9942:
#data 0x4F26
#data 0x6EF6000b
;----------------------------------------------

loc_8C0B9948:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0B9984,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt loc_8C0B9974
mov.l @r15,r5
mov r14,r4
mov 0x0B,r6 ; r6 set to 0x0b
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C0B9988,pc),r3 ; r3 set to 0x8C0B8538
jmp @r3
mov.l @r15+,r14

loc_8C0B9974:
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B997C:
#data 0x041c
#data 0x0140
#data 0x00000141

#align4
loc_8C0B9984:
#data bank03.loc_8c034dee

loc_8C0B9988:
#data loc_8c0b8538
#data 0x41092492
#data 0xBF4DB6Db


loc_8C0B9994:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0B9A60,pc),r3 ; r3 set to 0x8C034DEe
mov.l r4,@r15
mov.l r5,@(0x04,r15)
jsr @r3
mov.l @r15,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B99B6
mov.l @r15,r4
mov 0x0B,r6 ; r6 set to 0x0b
mov.l @(0x04,r15),r5
add 0x08,r15
mov.l @(loc_8C0B9A64,pc),r3 ; r3 set to 0x8C0B8538
jmp @r3
lds.l @r15+,pr

loc_8C0B99B6:
add 0x08,r15
lds.l @r15+,pr
rts
nop
;----------------------------------------------

loc_8C0B99BE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
tst r0,r0
bf/s loc_8C0B9A36
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B9A60,pc),r3 ; r3 set to 0x8C034DEe
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
jsr @r3
mov r14,r4
mov.w @(loc_8C0B9A5C,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B9A54
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(loc_8C0B9A68,pc),r3 ; r3 set to 0x8C034E8c
mov 0x03,r6 ; r6 set to 0x03
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x06,r14)
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0B9A5C,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9A36:
mov.l @(loc_8C0B9A60,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B9A54
lds.l @r15+,pr
mov r13,r5
mov.b @(0x07,r14),r0
mov.l @(loc_8C0B9A64,pc),r3 ; r3 set to 0x8C0B8538
mov r14,r4
mov.l @r15+,r13
extu.b r0,r6
jmp @r3
mov.l @r15+,r14

loc_8C0B9A54:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B9A5C:
#data 0x041c
#data 0x0000

#align4
loc_8C0B9A60:
#data bank03.loc_8c034dee

loc_8C0B9A64:
#data loc_8c0b8538

loc_8C0B9A68:
#data bank03.loc_8c034e8c


loc_8C0B9A6C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
tst r0,r0
bt/s loc_8C0B9A82
mov r5,r13
bra loc_8C0B9BD4
nop

loc_8c0b9a82:
mov 0x60,r1
mov.l @(loc_8c0b9b6c,pc),r3
add r14,r1
mov 0x38,r0
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
mov 0x6C,r1
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
mov.w @(0x1E,r14),r0 
mov.l @(loc_8C0B9B70,pc),r12
add 0xFF,r0
mov.w r0,@(0x1E,r14) 
exts.w r0,r0
tst r0,r0
bf loc_8c0b9b02
mov.b @(0x05,r13),r0 
tst r0,r0
bf loc_8c0b9b02
mov.l @(loc_8c0b9b74,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c0b9b02
mov.w @(0x1E,r13),r0 
cmp/pl r0
bf loc_8c0b9b02
mov.l @(loc_8c0b9b78,pc),r2
mov 0x12,r5
jsr @r2
mov r13,r4
tst r0,r0
bt/s loc_8c0b9b02
mov r0,r4
mov.w @(loc_8C0B9B62,pc),r0
mov.w @(r0,r14),r2
mov.w r2,@(r0,r4) 
mova @(loc_8C0B9B7C,pc),r0 
fmov.s @r0,fr4
mov.w @(loc_8C0B9B62,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8c0b9aec
mova @(loc_8C0B9B80,pc),r0 
fmov.s @r0,fr4

loc_8c0b9aec:
mov 0x34,r0
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r4) 
mova @(loc_8C0B9B84,pc),r0 
fmov.s @r0,fr3
mov.w @(loc_8C0B9B64,pc),r0
fmov.s @(r0,r12),fr2
mov 0x38,r0
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 

loc_8c0b9b02:
mov.w @(loc_8C0B9B66,pc),r0
fmov.s @(r0,r13),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8c0b9b42
mov.b @(0x06,r14),r0 
mov.l @(loc_8c0b9b74,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14) 
mov.w @(loc_8C0B9B66,pc),r0
fmov.s @(r0,r13),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14) 
jsr @r3
mov r14,r4
tst r0,r0
bt/s loc_8c0b9b32
mov 0x03,r6
mov 0x01,r4
mov r4,r0
nop 
mov.b r0,@(0x05,r12) 
mov.b r0,@(0x06,r12) 

loc_8c0b9b32:
mov.l @(loc_8c0b9b88,pc),r3
mov 0x01,r5
jsr @r3
mov r14,r4
mov.l @(loc_8c0b9b8c,pc),r2
mov 0x35,r5
jsr @r2
mov r14,r4

loc_8c0b9b42:
mov.w @(loc_8C0B9B68,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0b9b98
mova @(loc_8C0B9B90,pc),r0 
fmov.s @r0,fr4
mov.w @(loc_8C0B9B62,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8c0b9b5a
mova @(loc_8C0B9B94,pc),r0 
fmov.s @r0,fr4

loc_8c0b9b5a:
mov 0x5C,r0
fmov.s fr4,@(r0,r14) 
bra loc_8c0b9bb6
mov 0x09,r6

loc_8C0B9B62:
#data 0x0130

loc_8C0B9B64:
#data 0x0090

loc_8C0B9B66:
#data 0x041C

loc_8C0B9B68:
#data 0x019F
#data 0x0000

#align4
loc_8c0b9b6c:
#data bank03.loc_8c034dee

loc_8C0B9B70:
#data 0x8C26A518

#align4
loc_8c0b9b74:
#data bank03.loc_8c03340c

loc_8c0b9b78:
#data loc_8c0b83f8

loc_8C0B9B7C:
#data 0xC2820000

#align4
loc_8C0B9B80:
#data 0x42820000

#align4
loc_8C0B9B84:
#data 0x43092492

#align4
loc_8c0b9b88:
#data bank03.loc_8c034e8c

loc_8c0b9b8c:
#data bank04.loc_8c04223a

loc_8C0B9B90:
#data 0xC0D55555

#align4
loc_8C0B9B94:
#data 0x40D55555


loc_8c0b9b98:
mov.w @(loc_8C0B9CCC,pc),r0
mov.b @(r0,r14),r0
tst 0x11,r0 
bt loc_8c0b9bc6
mova @(loc_8C0B9CD4,pc),r0 
fmov.s @r0,fr4
mov.w @(loc_8C0B9CCE,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8c0b9bb0
mova @(loc_8C0B9CD8,pc),r0 
fmov.s @r0,fr4

loc_8c0b9bb0:
mov 0x5C,r0
mov 0x0D,r6
fmov.s fr4,@(r0,r14) 

loc_8c0b9bb6:
lds.l @r15+,pr 
mov r13,r5
mov.l @(loc_8c0b9cdc,pc),r3
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c0b9bc6:
lds.l @r15+,pr 
mov.l @(loc_8c0b9ce0,pc),r2
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B9BD4:
mov.l @(loc_8C0B9CE4,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B9BF4
lds.l @r15+,pr
mov r13,r5
mov.b @(0x07,r14),r0
mov.l @(loc_8C0B9CDC,pc),r3 ; r3 set to 0x8C0B8538
mov r14,r4
mov.l @r15+,r12
extu.b r0,r6
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9BF4:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B9BFE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
tst r0,r0
bf/s loc_8C0B9C7e
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B9CE4,pc),r3 ; r3 set to 0x8C034DEe
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
jsr @r3
mov r14,r4
mov.w @(loc_8C0B9CD0,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B9C9c
mov.b @(0x06,r14),r0
mov 0x17,r5 ; r5 set to 0x17
mov.l @(loc_8C0B9CE8,pc),r3 ; r3 set to 0x8C034E8c
mov 0x33,r6 ; r6 set to 0x33
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x06,r14)
mov.w @(loc_8C0B9CD0,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_8C0B9CEC,pc),r2 ; r2 set to 0x8C0BA710
mov r14,r4
mov 0x00,r5 ; r5 set to 0x00
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B9C7E:
mov.l @(loc_8C0B9CE4,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B9C9c
lds.l @r15+,pr
mov r13,r5
mov.b @(0x07,r14),r0
mov.l @(loc_8C0B9CDC,pc),r3 ; r3 set to 0x8C0B8538
mov r14,r4
mov.l @r15+,r13
extu.b r0,r6
jmp @r3
mov.l @r15+,r14

loc_8C0B9C9C:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B9CA4:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0
tst r0,r0
bf/s loc_8C0B9D46
mov r4,r14
mov.l @(loc_8C0B9CF0,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B9CF8
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0B9CF4,pc),r3 ; r3 set to 0x8C0B850c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14
loc_8c0b9ccc:
#data 0x019e
loc_8c0b9cce:
#data 0x0130

loc_8C0B9CD0:
#data 0x041c
#data 0x0000
loc_8c0b9cd4:
#data 0xC1555555
loc_8c0b9cd8:
#data 0x41555555

#align4
loc_8C0B9CDC:
#data loc_8c0b8538

loc_8C0B9CE0:
#data bank04.loc_8c045748

loc_8C0B9CE4:
#data bank03.loc_8c034dee

loc_8C0B9CE8:
#data bank03.loc_8c034e8c

loc_8C0B9CEC:
#data loc_8c0bA710

loc_8C0B9CF0:
#data bank03.loc_8c03340c

loc_8C0B9CF4:
#data loc_8c0b850c

loc_8c0b9cf8:
mov.w @(loc_8C0B9DD0,pc),r0
mov 0x04,r2
mov 0x5C,r1
mov.l @(loc_8c0b9dd8,pc),r3
mov.l r2,@(r0,r13) 
add r14,r1
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
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 
jsr @r3
mov r14,r4
mov.w @(0x1C,r14),r0 
add 0xFF,r0
mov.w r0,@(0x1C,r14) 
exts.w r0,r0
cmp/pz r0
bf loc_8c0b9d90
mov.w @(loc_8C0B9DD2,pc),r0
mov.l @(r0,r14),r4
tst r4,r4
bt loc_8c0b9da0
mov.b @(0x05,r4),r0 
extu.b r0,r0
cmp/eq 0x0D,r0 
bt/s loc_8c0b9d46
mov r0,r5
mov r5,r0
nop 
cmp/eq 0x09,r0 
bf loc_8c0b9d56

loc_8C0B9D46:
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0B9DDC,pc),r3 ; r3 set to 0x8C0B8538
mov 0x0F,r6 ; r6 set to 0x0f
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9D56:
#data 0x903d
#data 0x2228024c
#data 0x00EC8905
#data 0x8D16C811
#data 0xA014E60e
#data 0xE60f

loc_8C0B9D6A:
#data 0xC71d
#data 0x9032F408
#data 0x233803Ed
#data 0xC71B8901
#data 0xF408

loc_8C0B9D7A:
#data 0xE034
#data 0xF340F3E6
#data 0xC719F437
#data 0xE038F308
#data 0xF230F2E6
#data 0xF427A008

loc_8C0B9D90:
#data 0xE615

loc_8C0B9D92:
#data 0x4F26
#data 0xD21165D3
#data 0x6DF664E3
#data 0x6EF6422b

#align4
loc_8C0B9DA0:
#data 0x6DF64F26
#data 0x6EF6000b
;----------------------------------------------

loc_8C0B9DA8:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0
tst r0,r0
bf/s loc_8C0B9E32
mov r4,r14
mov.l @(loc_8C0B9DEC,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B9DF4
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0B9DF0,pc),r3 ; r3 set to 0x8C0B850c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14
loc_8c0b9dd0:
#data 0x02A4
loc_8c0b9dd2:
#data 0x00D4
#data 0x0130019e

#align4
loc_8C0B9DD8:
#data bank03.loc_8c034dee

loc_8C0B9DDC:
#data loc_8c0b8538
#data 0x40D55555
#data 0xC0D55555
#data 0x421A4924

#align4
loc_8C0B9DEC:
#data bank03.loc_8c03340c

loc_8C0B9DF0:
#data loc_8c0b850c


loc_8C0B9DF4:
mov.l @(loc_8C0B9EC0,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pz r0
bf loc_8C0B9E32
mov.w @(loc_8C0B9EBA,pc),r0 ; r0 set to 0xD4
mov.l @(r0,r14),r4
tst r4,r4
bt loc_8C0B9E32
mov.b @(0x05,r4),r0
extu.b r0,r0 ; r0 set to 0xD4
cmp/eq 0x09,r0
bt loc_8C0B9E32
mov.b @(0x05,r4),r0
extu.b r0,r0 ; r0 set to 0xD4
cmp/eq 0x0D,r0
bt loc_8C0B9E32
mov.w @(loc_8C0B9EBC,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0B9E42
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
tst 0x11,r0
bt/s loc_8C0B9E34
mov 0x0E,r6 ; r6 set to 0x0e
bra loc_8C0B9E34
mov 0x0F,r6

loc_8C0B9E32:
mov 0x0F,r6 ; r6 set to 0x0f

loc_8C0B9E34:
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0B9EC4,pc),r2 ; r2 set to 0x8C0B8538, r2 set to 0x8C0B8538
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B9E42:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0B9E4A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0B9EC8,pc),r3 ; r3 set to 0x8C03340c
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B9E6c
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C0B9ECC,pc),r3 ; r3 set to 0x8C0B850c
jmp @r3
mov.l @r15+,r14

loc_8C0B9E6C:
mov 0x5C,r1 ; r1 set to 0x5c
mov r14,r4
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
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
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C0B9EC0,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
mov.l @r15+,r14

loc_8C0B9E94:
mov.w @(loc_8C0B9EBE,pc),r0 ; r0 set to 0x19c
mov 0x44,r5 ; r5 set to 0x44
mov 0x20,r3 ; r3 set to 0x20
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x19d
mov.b r5,@(r0,r4)
add 0xA2,r0 ; r0 set to 0x13f
mov.b r3,@(r0,r4)
add 0xFF,r0 ; r0 set to 0x13e
mov.b r3,@(r0,r4)
add 0xFF,r0 ; r0 set to 0x13d
mov.b r3,@(r0,r4)
add 0xFF,r0 ; r0 set to 0x13c
mov.b r3,@(r0,r4)
add 0xF2,r0 ; r0 set to 0x12e
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
add 0x06,r3
rts
mov.w r3,@(r0,r4)
;----------------------------------------------

loc_8C0B9EBA:
#data 0x00D4

loc_8C0B9EBC:
#data 0x019e

loc_8C0B9EBE:
#data 0x019c

#align4
loc_8C0B9EC0:
#data bank03.loc_8c034dee

loc_8C0B9EC4:
#data loc_8c0b8538

loc_8C0B9EC8:
#data bank03.loc_8c03340c

loc_8C0B9ECC:
#data loc_8c0b850c

loc_8C0B9ED0:
#data 0x6E432FE6
#data 0x54E64F22
#data 0x20088445
#data 0x90288B21
#data 0x600C004c
#data 0x8B1C881d
#data 0x85EFD313
#data 0x6503430b
#data 0x8D1B2008
#data 0x54E56503
#data 0x890B2448
#data 0xF408C70f
#data 0x035D9018
#data 0x89012338
#data 0xF408C70d

#align4
loc_8C0B9F0C:
#data 0xF346E034
#data 0xF537F340

#align4
loc_8C0B9F14:
#data 0x85EF1E55
#data 0x81EF70Ff
#data 0x4011600f
#data 0x8904

loc_8C0B9F22:
#data 0x4F26
#data 0x64E3D207
#data 0x6EF6422b

#align4
loc_8C0B9F2C:
#data 0x000B4F26
#data 0x01D06EF6
#data 0x00000130

#align4
loc_8C0B9F38:
#data loc_8c0b8360
#data 0x42555555
#data 0xC2555555

#align4
loc_8C0B9F44:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xD315E501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D102008
#data 0xD3126403
#data 0x1434921d
#data 0x84E114E6
#data 0xE0208041
#data 0x043463F2
#data 0x0425E026
#data 0x03ED9014
#data 0x633D9013
#data 0x60430436
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0B9F8E:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0
mov.l @(loc_8C0B9FB0,pc),r1 ; r1 set to 0x8C159D4c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3A01
#data 0x00CC0158

#align4
loc_8C0B9FA8:
#data bank04.loc_8c044F12

loc_8C0B9FAC:
#data loc_8c0b9F8e

loc_8C0B9FB0:
#data bank15.loc_8c159d4c

loc_8C0B9FB4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F22919e
#data 0x31EC84E4
#data 0x7001929a
#data 0x80E4D350
#data 0x430B9097
#data 0x909532Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9087
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3420E34
#data 0xE00C430b
#data 0xE024E308
#data 0xE54402Dc
#data 0x90750E34
#data 0x70010E54
#data 0xE0200E54
#data 0xD03C03Ec
#data 0x4308633c
#data 0x906CF436
#data 0x222802Ed
#data 0xE0348D01
#data 0xF44d

loc_8C0BA036:
#data 0xF3D6
#data 0xF48DF340
#data 0xE038FE37
#data 0xF340F3D6
#data 0xE050FE37
#data 0xE01E81Ee
#data 0xE02081Ef
#data 0x633C03Ec
#data 0x8B053347
#data 0xF308C72f
#data 0xFE37E054
#data 0xFE37E050

#align4
loc_8C0BA064:
#data 0x03ECE020
#data 0x633CD02c
#data 0xF5364308
#data 0x02ED9049
#data 0x8D012228
#data 0xF54DE05c

#align4
loc_8C0BA07C:
#data 0xE068FE57
#data 0xE060FE47
#data 0xE06CFE47
#data 0xE022FE47
#data 0x0E44E400
#data 0x9039E320
#data 0x0E34E27b
#data 0x0E3470Ff
#data 0x0E3470Ff
#data 0x0E3470Ff
#data 0x0E247065
#data 0x0E45700b
#data 0xD31C70F2
#data 0x70260E44
#data 0x62320E46
#data 0x727C84E2
#data 0x4000600c
#data 0xE517012d
#data 0x7101E622
#data 0xD2160215
#data 0x64E3420b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6


loc_8C0BA0DA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.w @(0x1E,r14),r0
tst r0,r0
bf/s loc_8C0BA12c
mov r5,r13
mov.l @(loc_8C0BA128,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0BA0F8
bra loc_8C0BA2C6
nop

loc_8C0BA0F8:
bra loc_8C0BA132
nop
#data 0x00C000Dc
#data 0x01A3012c
#data 0x0130019c
#data 0x0000013f

#align4
loc_8C0BA10C:
#data bank12.loc_8c129560

loc_8C0BA110:
#data bank12.loc_8c1294C8

loc_8C0BA114:
#data bank15.loc_8c159d6c
#data 0x3F000000

#align4
loc_8C0BA11C:
#data bank15.loc_8c159d5c
#data 0x8C2896B0

#align4
loc_8C0BA124:
#data bank03.loc_8c034e8c

loc_8C0BA128:
#data bank03.loc_8c03340c


loc_8C0BA12C:
mov.w @(0x1E,r14),r0
add 0xFF,r0
mov.w r0,@(0x1E,r14)

loc_8C0BA132:
mov.w @(loc_8C0BA25E,pc),r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0BA13e
bra loc_8C0BA2C6
nop

loc_8c0ba13e:
mov.l @(loc_8c0ba270,pc),r2
jsr @r2
mov r14,r4
mov 0x5C,r1
mov.l @(loc_8C0BA274,pc),r3
add r14,r1
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
mov.l @r3,r0
mov.l @(0x1C,r0),r0
tst 0x04,r0 
bt loc_8c0ba194
mov 0x32,r5
bsr loc_8c0ba324
mov r14,r4
mov 0x22,r0
mov.b @(r0,r14),r3
add 0x01,r3
mov.b r3,@(r0,r14) 

loc_8c0ba194:
mov.l @(loc_8C0BA278,pc),r2
mov.b @r2,r0
extu.b r0,r0
cmp/eq 0x04,r0 
bt loc_8c0ba1a2
bra loc_8c0ba2d2
nop 

loc_8c0ba1a2:
mov.w @(loc_8C0BA260,pc),r0
mov.b @(r0,r13),r1
tst r1,r1
bf/s loc_8c0ba1c4
mov 0x00,r4
mov.w @(loc_8C0BA262,pc),r0
mov.l @(loc_8C0BA27C,pc),r1
mov.w @(r0,r13),r3
extu.w r3,r3
tst r1,r3
bf loc_8c0ba1c4
mov.w @(0x1C,r14),r0 
cmp/pl r0
bf loc_8c0ba1c4
mov r4,r0
nop 
mov.w r0,@(0x1C,r14) 

loc_8c0ba1c4:
mov.w @(0x1C,r14),r0 
add 0xFF,r0
mov.w r0,@(0x1C,r14) 
exts.w r0,r0
cmp/pz r0
bt loc_8c0ba228
mov.l @(loc_8C0BA274,pc),r3
mov 0xD8,r2
mov.w @(loc_8C0BA264,pc),r1
mov.l @r3,r0
fldi1 fr3
add r14,r1
mov.l @(0x1C,r0),r0
fadd fr3,fr3
and 0x04,r0 
shar r0
shar r0
mov.b r0,@r1
mov 0x5C,r0
fmov.s @(r0,r14),fr2
fdiv fr3,fr2
fmov.s fr2,@(r0,r14) 
mov.w @(0x1C,r14),r0 
cmp/ge r2,r0
bt loc_8c0ba228
mov 0x03,r0
mov.l @(loc_8C0BA280,pc),r1
mov.b r0,@(0x04,r14) 
mov r14,r5
mov.w @(loc_8C0BA264,pc),r0
add 0x34,r5
lds r1,fpul 
mov 0x08,r7
mov.b r4,@(r0,r14) 
mov 0x38,r0
fmov.s @(r0,r14),fr1
mov 0x01,r6
fsts fpul,fr2
fadd fr2,fr1
mov.l @(loc_8c0ba284,pc),r3
fmov.s fr1,@(r0,r14) 
jsr @r3
mov r14,r4
mov.w @(loc_8C0BA266,pc),r0
mov 0x17,r5
mov.l @(loc_8c0ba288,pc),r3
mov.b @(r0,r14),r6
add 0x01,r6
jsr @r3
mov r14,r4

loc_8c0ba228:
mova @(loc_8C0BA28C,pc),r0 
mov.w @(loc_8C0BA268,pc),r2
fmov.s @r0,fr4
mov.w @(loc_8C0BA262,pc),r0
mov.w @(r0,r13),r3
extu.w r3,r3
tst r2,r3
bt loc_8c0ba240
mov 0x38,r0
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 

loc_8c0ba240:
mov.w @(loc_8C0BA262,pc),r0
mov.w @(loc_8C0BA26A,pc),r2
mov.w @(r0,r13),r3
extu.w r3,r3
tst r2,r3
bt loc_8c0ba254
mov 0x38,r0
fmov.s @(r0,r14),fr3
fsub fr4,fr3
fmov.s fr3,@(r0,r14) 

loc_8c0ba254:
mov.w @(loc_8C0BA26C,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bra loc_8c0ba290
nop 

loc_8c0ba25e:
#data 0x019E

loc_8C0BA260:
#data 0x0525

loc_8C0BA262:
#data 0x034A

loc_8C0BA264:
#data 0x012C

loc_8C0BA266:
#data 0x0158

loc_8C0BA268:
#data 0x2000

loc_8C0BA26A:
#data 0x1000

loc_8C0BA26C:
#data 0x019F
#data 0x0000

#align4
loc_8c0ba270:
#data bank03.loc_8c034dee

loc_8C0BA274:
#data 0x8C26823C

#align4
loc_8C0BA278:
#data 0x8C2895F0

#align4
loc_8C0BA27C:
#data 0x00008000

#align4
loc_8C0BA280:
#data 0x41892492

#align4
loc_8c0ba284:
#data bank10.loc_8c10235c

loc_8c0ba288:
#data bank03.loc_8c034e8c

loc_8C0BA28C:
#data 0x3FCDB6DB


loc_8c0ba290:
bf loc_8c0ba2a4
mova @(loc_8C0BA388,pc),r0 
fmov.s @r0,fr3
mov.w @(loc_8C0BA380,pc),r0
fmov.s @(r0,r13),fr2
mov 0x38,r0
fmov.s @(r0,r14),fr1
fadd fr3,fr2
fcmp/gt fr1,fr2
bf loc_8c0ba2ba

loc_8c0ba2a4:
mov.b @(0x04,r14),r0 
add 0x01,r0
mov.b r0,@(0x04,r14) 
mova @(loc_8C0BA38C,pc),r0 
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r14) 
mova @(loc_8C0BA390,pc),r0 
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14) 

loc_8c0ba2ba:
lds.l @r15+,pr 
mov.l @(loc_8c0ba394,pc),r3
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BA2C6:
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BA31a
mov.l @r15+,r14

loc_8C0BA2D2:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;----------------------------------------------

loc_8C0BA2DA:
#data 0xE160
#data 0x314CF18d
#data 0xF318E038
#data 0xE16CF246
#data 0xF230314c
#data 0xE060F427
#data 0xF318F246
#data 0xF230D128
#data 0xF427415a
#data 0xF30D9041
#data 0xF231F246
#data 0x8F06F125
#data 0x8444F427
#data 0x7001E300
#data 0x90378044
#data 0x0434

loc_8C0BA316:
#data 0x000b
#data 0x0009
;----------------------------------------------

loc_8C0BA31A:
mov.l @(loc_8C0BA39C,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0BA384,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4)

#align4
loc_8C0BA324:
#data 0xFFFB2FE6
#data 0x4F22FFEb
#data 0x655F7FFc
#data 0x455A6E43
#data 0xFF08C71a
#data 0x00ECE022
#data 0xD319F32d
#data 0x600B600c
#data 0xC91F7028
#data 0x4018FE3c
#data 0x4008FEF2
#data 0x2F014000
#data 0x64F1430b
#data 0xC713FE02
#data 0xC713F008
#data 0xF008FE02
#data 0xFE03C712
#data 0xE038F008
#data 0xFEF3F3E6
#data 0xFE37F3Ee
#data 0x4F267F04
#data 0xFFF9FEF9
#data 0x6EF6000b
;----------------------------------------------
loc_8c0ba380:
#data 0x0108041c

loc_8C0BA384:
#data 0x012c
#data 0x0000
loc_8c0ba388:
#data 0xC1892492
loc_8c0ba38c:
#data 0x40892492
loc_8c0ba390:
#data 0xBF4DB6Db

#align4
loc_8C0BA394:
#data bank04.loc_8c045748
#data 0x3D4CCCCd

#align4
loc_8C0BA39C:
#data bank04.loc_8c0450C0
#data 0x43800000

#align4
loc_8C0BA3A4:
#data bank11.loc_8c11E860
#data 0x447A0000
#data 0x47F42400
#data 0x40092492
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xD315E501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D102008
#data 0xD3126403
#data 0x1434921d
#data 0x84E114E6
#data 0xE0208041
#data 0x043463F2
#data 0x0425E026
#data 0x03ED9014
#data 0x633D9013
#data 0x60430436
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0BA3FA:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0
mov.l @(loc_8C0BA41C,pc),r1 ; r1 set to 0x8C159D7c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3A03
#data 0x00CC0158

#align4
loc_8C0BA414:
#data bank04.loc_8c044F12

loc_8C0BA418:
#data loc_8c0bA3Fa

loc_8C0BA41C:
#data bank15.loc_8c159d7c

loc_8C0BA420:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x919FFFFb
#data 0x84E44F22
#data 0x929B31Ec
#data 0xD3507001
#data 0x909880E4
#data 0x32DC430b
#data 0xE2019096
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9088FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD341
#data 0xE024E00c
#data 0x02DC61E3
#data 0x0E247134
#data 0x03ECE020
#data 0x633CD03d
#data 0xE031023c
#data 0x0E24E308
#data 0x0E34E024
#data 0xD33862D3
#data 0x430B7234
#data 0xE020E00c
#data 0xE40502Ec
#data 0x3243622c
#data 0xC7358B12
#data 0x905FF408
#data 0x233803Ed
#data 0xC7338901
#data 0xF408

loc_8C0BA4BE:
#data 0xE034
#data 0xF3E6D132
#data 0xF340415a
#data 0xE038FE37
#data 0xF30DF2E6
#data 0xFE27F230

#align4
loc_8C0BA4D4:
#data 0x03ECE020
#data 0x3343633c
#data 0xD32D8B31
#data 0x430BC72b
#data 0xC93FFF08
#data 0x40084008
#data 0x4011405a
#data 0xF32D8D04
#data 0x425AD228
#data 0xF320F20d

#align4
loc_8C0BA4FC:
#data 0xF208C727
#data 0xF3229038
#data 0x233803Ed
#data 0x8F01F43c
#data 0xF44DF4F3

#align4
loc_8C0BA510:
#data 0xE05CD320
#data 0xFE47430b
#data 0x4008C93f
#data 0x405A4008
#data 0x8D044011
#data 0xD21CF32d
#data 0xF20D425a
#data 0xF320

loc_8C0BA52E:
#data 0xC71c
#data 0xE060F208
#data 0xF3F3F322
#data 0xC71AFE37
#data 0xE06CF308
#data 0xFE37

loc_8C0BA542:
#data 0xE020
#data 0x06ECD319
#data 0xD017E51b
#data 0x066C666c
#data 0x64E3430b
#data 0x65D34F26
#data 0xFFF964E3
#data 0x6EF66DF6


loc_8C0BA560:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
bra loc_8C0BA5B0
mov r4,r14
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00000130

#align4
loc_8C0BA578:
#data bank12.loc_8c129560

loc_8C0BA57C:
#data bank12.loc_8c1294C8

loc_8C0BA580:
#data bank15.loc_8c159d93
#data 0xC1555555
#data 0x41555555
#data 0x42092492
#data 0x43800000

#align4
loc_8C0BA594:
#data bank03.loc_8c03319e
#data 0x4F800000
#data 0x3FD55555
#data 0x40092492
#data 0xBF4DB6Db

#align4
loc_8C0BA5A8:
#data bank15.loc_8c159d8c

loc_8C0BA5AC:
#data bank03.loc_8c034C38


loc_8C0BA5B0:
mov.w @(loc_8C0BA652,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0
bf/s loc_8C0BA5C0
nop
bra loc_8C0BA6D6
nop

loc_8C0BA5C0:
mov.b @(0x05,r13),r0
tst r0,r0
bt loc_8C0BA5Ca
bra loc_8C0BA6D6
nop

loc_8C0BA5CA:
mov.w @(loc_8C0BA654,pc),r0 ; r0 set to 0x1A0
mov.b @(r0,r13),r3
tst r3,r3
bt loc_8C0BA5D6
bra loc_8C0BA6E2
nop

loc_8c0ba5d6:
mov 0x31,r0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0ba5e4
mov 0x24,r0
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 

loc_8c0ba5e4:
mov 0x20,r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x03,r0 
bt loc_8c0ba60a
cmp/eq 0x04,r0 
bt loc_8c0ba60a
cmp/eq 0x01,r0 
bt loc_8c0ba61e
cmp/eq 0x02,r0 
bt loc_8c0ba61e
cmp/eq 0x00,r0 
bt loc_8c0ba624
cmp/eq 0x05,r0 
bt loc_8c0ba668
cmp/eq 0x06,r0 
bt loc_8c0ba668
bra loc_8c0ba6e2
nop 

loc_8c0ba60a:
mov.w @(loc_8C0BA656,pc),r0
mov.w @(r0,r13),r3
mov.w @(loc_8C0BA658,pc),r0
extu.w r3,r3
mov.l @(r0,r14),r2
cmp/eq r3,r2
bf loc_8c0ba6d6
mov 0x34,r0
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 

loc_8c0ba61e:
mov.w @(loc_8C0BA65A,pc),r0
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 

loc_8c0ba624:
mov.l @(loc_8c0ba660,pc),r3
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bf loc_8c0ba6d6
mov.w @(loc_8C0BA65C,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0ba6e2
mov.l @(loc_8C0BA664,pc),r1
mov.w @(loc_8C0BA65E,pc),r0
lds r1,fpul 
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r14) 
fmov.s @(r0,r14),fr1
fldi0 fr2
fcmp/gt fr2,fr1
bt loc_8c0ba6e2
bra loc_8c0ba6e2
fmov.s fr2,@(r0,r14) 

loc_8c0ba652:
#data 0x01D0

loc_8c0ba654:
#data 0x01A0

loc_8C0BA656:
#data 0x0158

loc_8C0BA658:
#data 0x00CC

loc_8C0BA65A:
#data 0x0142

loc_8C0BA65C:
#data 0x0141

loc_8C0BA65E:
#data 0x0108

loc_8c0ba660:
#data 0x4D8C
#data 0x8C03

#align4
loc_8C0BA664:
#data 0x3E000000


loc_8c0ba668:
mov.l @(loc_8c0ba708,pc),r2
jsr @r2
mov r14,r4
mov 0x5C,r1
add r14,r1
mov 0x34,r0
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
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
mov.w @(loc_8C0BA702,pc),r0
fmov.s @(r0,r13),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8c0ba6d2
mov.w @(loc_8C0BA702,pc),r0
mov 0x01,r3
fmov.s @(r0,r13),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14) 
mov 0x60,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 
fldi1 fr3
fadd fr3,fr3
fmov.s @(r0,r14),fr2
fdiv fr3,fr2
fmov.s fr2,@(r0,r14) 
mov 0x01,r0
mov.w r0,@(0x1C,r14) 
mov 0x22,r0
mov.b @(r0,r14),r2
xor r3,r2
mov.b r2,@(r0,r14) 
extu.b r2,r2
tst r2,r2
bt loc_8c0ba6d6

loc_8c0ba6d2:
bra loc_8c0ba6e2
nop 

loc_8C0BA6D6:
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BA6F8
mov.l @r15+,r14

loc_8C0BA6E2:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BA6EA:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BA704,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0BA6F8:
mov.l @(loc_8C0BA70C,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0BA704,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4)
loc_8c0ba702:
#data 0x041c

loc_8C0BA704:
#data 0x012c
#data 0x0000

#align4
loc_8C0BA708:
#data bank03.loc_8c034D8c

loc_8C0BA70C:
#data bank04.loc_8c0450C0


loc_8C0BA710:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
cmp/pz r13
bt/s loc_8C0BA726
mov r4,r14
mov 0x01,r6 ; r6 set to 0x01
mov r6,r5 ; r5 set to 0x01
bra loc_8C0BA72c
mov 0x00,r4

loc_8c0ba726:
mov r14,r4
mov 0x01,r5
mov 0x02,r6

loc_8c0ba72c:
mov.l @(loc_8c0ba7ac,pc),r2
jsr @r2
nop 
mov r0,r4
tst r4,r4
bt loc_8c0ba76c
mov.l @(loc_8c0ba7b0,pc),r2
mov.w @(loc_8C0BA7A6,pc),r0
mov.l r2,@(0x10,r4) 
mov.l r14,@(0x18,r4) 
mov.l @(0x18,r14),r3
mov.l r3,@(0x14,r4) 
mov.w @(r0,r14),r2
mov.w @(loc_8C0BA7A8,pc),r0
extu.w r2,r2
mov.w @(loc_8C0BA7AA,pc),r3
mov.l r2,@(r0,r4) 
mov 0xF8,r2
mov.b @(0x01,r14),r0 
mov.b r0,@(0x01,r4) 
mov 0x26,r0
mov.w r3,@(r0,r4) 
mov 0x20,r0
mov r13,r3
mov.b r13,@(r0,r4) 
shad r2, r3
mov 0x21,r0
shlr16 r13
mov.b r3,@(r0,r4) 
mov 0x23,r0
exts.w r13,r13
mov.b r13,@(r0,r4) 

loc_8c0ba76c:
mov r4,r0
nop 
lds.l @r15+,pr 
mov.l @r15+,r13
rts 
mov.l @r15+,r14

loc_8C0BA778:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0BA78c
mov.l @(0x18,r14),r5
mov r14,r4
bra loc_8C0BA794
mov.l @r15+,r14

loc_8C0BA78C:
mov.l @(0x18,r14),r5
mov r14,r4
bra loc_8C0BA8Fe
mov.l @r15+,r14

loc_8C0BA794:
mov r4,r3
mov.l @(loc_8C0BA7B4,pc),r1 ; r1 set to 0x8C159D9c
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
loc_8c0ba7a6:
#data 0x0158
loc_8c0ba7a8:
#data 0x00Cc
loc_8c0ba7aa:
#data 0x3A04

#align4
loc_8C0BA7AC:
#data bank04.loc_8c044F12

loc_8C0BA7B0:
#data loc_8c0bA778

loc_8C0BA7B4:
#data bank15.loc_8c159d9c

loc_8C0BA7B8:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F2291A6
#data 0x31EC84E4
#data 0x7001D356
#data 0x909F80E4
#data 0x320C52D6
#data 0x70E4430b
#data 0xE101909b
#data 0x61E30E14
#data 0x715050D6
#data 0x80E28402
#data 0x840150D6
#data 0xE05080E1
#data 0xF33653D6
#data 0xE054FE37
#data 0xF33653D6
#data 0x9089FE37
#data 0x023C53D6
#data 0x70010E24
#data 0x023C53D6
#data 0xE0300E24
#data 0x023C53D6
#data 0x52D60E24
#data 0x7250D343
#data 0xE00C430b
#data 0xE02451D6
#data 0x031CE2Ff
#data 0x0E34E400
#data 0x0E24E031
#data 0x84E2E366
#data 0xCA01E206
#data 0x906C80E2
#data 0x70010E34
#data 0x70040E24
#data 0x0E34E330
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD3367026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0xE517012d
#data 0x7101E634
#data 0xD2310215
#data 0x64E3420b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0BA87A:
#data 0x2FE6
#data 0x2FD66E53
#data 0x4F22E301
#data 0x600C84E4
#data 0x8D073037
#data 0x90436D43
#data 0x904202Ed
#data 0x03DE622d
#data 0x89083230

#align4
loc_8C0BA89C:
#data 0x64D3903e
#data 0x65E3F38d
#data 0x4F26FD37
#data 0xA1DE6DF6
#data 0x6EF6

loc_8C0BA8AE:
#data 0xE024
#data 0x0D2402Ec
#data 0x03EC9033
#data 0xF208C71e
#data 0x902F435a
#data 0x03EDF32d
#data 0xF43C2338
#data 0xF4228D01
#data 0xF44d

loc_8C0BA8CE:
#data 0xE034
#data 0xF340F3E6
#data 0x9024FD37
#data 0xE03803Ec
#data 0xC716F2E6
#data 0xF008435a
#data 0xD315E038
#data 0xF23EF32d
#data 0x430BFD27
#data 0x4F2664D3
#data 0x65E364D3
#data 0xA1696DF6
#data 0x6EF6


loc_8C0BA8FE:
mov r4,r3
mov.l @(loc_8C0BA940,pc),r1 ; r1 set to 0x8C159DAc
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x012C00Dc
#data 0x019C01A3
#data 0x00CC0158
#data 0x01410108
#data 0x01400130

#align4
loc_8C0BA924:
#data bank12.loc_8c129560

loc_8C0BA928:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0BA930:
#data bank03.loc_8c034e8c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BA93C:
#data bank03.loc_8c034dee

loc_8C0BA940:
#data bank15.loc_8c159dAc

loc_8C0BA944:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0xFFFB2F86
#data 0x4F2291A2
#data 0x31EC84E4
#data 0x7001D352
#data 0x909B80E4
#data 0x320C52E5
#data 0x70E4430b
#data 0xE1019097
#data 0x61E30E14
#data 0x715050E5
#data 0x80E28402
#data 0x840150E5
#data 0xE05080E1
#data 0xF33653E5
#data 0xE054FE37
#data 0xF33653E5
#data 0x9085FE37
#data 0x023C53E5
#data 0x70010E24
#data 0x023C53E5
#data 0xE0300E24
#data 0x023C53E5
#data 0x52E50E24
#data 0x7250D33f
#data 0xE00C430b
#data 0x51E5E208
#data 0x031CE024
#data 0x0E2461E3
#data 0xD33AE023
#data 0x0EC4EC00
#data 0x52E57134
#data 0x430B7234
#data 0xDD37E00c
#data 0x00094D0b
#data 0xC91F9263
#data 0x81EE302c
#data 0x03ECE021
#data 0x633CD033
#data 0xF4364308
#data 0x01ED905a
#data 0x8D012118
#data 0xF44DE05c

#align4
loc_8C0BA9F4:
#data 0xE068FE47
#data 0xE85CF38d
#data 0xC72DFE37
#data 0xE060F308
#data 0xC72CFE37
#data 0xE06CF308
#data 0xC72BFE37
#data 0x4D0BFF08
#data 0x600C38Ec
#data 0x7080F188
#data 0x405A600f
#data 0xF208C727
#data 0xF322F32d
#data 0xF130F3F3
#data 0xE860F81a
#data 0x38EC4D0b
#data 0xF188600c
#data 0x600F7080
#data 0xC721405a
#data 0xE366F208
#data 0xE206902d
#data 0xF322F32d
#data 0xF130F3F3
#data 0x0E34F81a
#data 0x0E247001
#data 0x7004E330
#data 0x700B0E34
#data 0x70F20EC5
#data 0x70260EC4
#data 0x0EC6D317
#data 0x623284E2
#data 0x727C600c
#data 0x012D4000
#data 0x4D0B7101
#data 0x4F260215
#data 0xD312C903
#data 0x64E36603
#data 0xE517FFF9
#data 0x68F67634
#data 0x6DF66CF6
#data 0x6EF6432b
#data 0x012C00Dc
#data 0x00B401A3
#data 0x019C0130

#align4
loc_8C0BAAA4:
#data bank12.loc_8c129560

loc_8C0BAAA8:
#data bank12.loc_8c1294C8

loc_8C0BAAAC:
#data bank03.loc_8c03319e

loc_8C0BAAB0:
#data bank15.loc_8c159dBc
#data 0x40892492
#data 0xBE892492
#data 0x43800000
#data 0x3FD55555
#data 0x40092492
#data 0x8C2896B0

#align4
loc_8C0BAACC:
#data bank03.loc_8c034e8c


loc_8C0BAAD0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0BABC4,pc),r3 ; r3 set to 0x8C034DEe
mov.l r5,@r15
mov.l @(0x14,r14),r13
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
mov 0x01,r4 ; r4 set to 0x01
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
mov.w @(loc_8C0BABBE,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf/s loc_8C0BAB6e
fldi0 fr4
mov.b @(0x05,r14),r0
tst r0,r0
bf loc_8C0BAB56
mov.b @(0x05,r14),r0
mov.l @(loc_8C0BABC8,pc),r1 ; r1 set to 0x40800000
add 0x01,r0 ; r0 set to 0x39
fldi1 fr1
lds r1,fpul
fadd fr1,fr1 ; r1 ??	
mov.b r0,@(0x05,r14)
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fdiv fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fneg fr2
fdiv fr1,fr2
bra loc_8C0BAB62
fmov.s fr2,@(r0,r14)

loc_8c0bab56:
mov 0x5C,r0
fmov.s fr4,@(r0,r14) 
mov 0x60,r0
fmov.s fr4,@(r0,r14) 
mov 0x6C,r0
fmov.s fr4,@(r0,r14) 

loc_8c0bab62:
mov.w @(loc_8c0babbe,pc),r0
fmov.s @(r0,r13),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14) 
mov 0x23,r0
mov.b r4,@(r0,r14) 

loc_8c0bab6e:
mov.w @(0x1C,r14),r0 
mov 0x3C,r3
cmp/gt r3,r0
bt loc_8c0bab92
mov.w @(loc_8C0BABC0,pc),r0
mov 0x00,r1
mov.l @(loc_8C0BABCC,pc),r3
mov.b r1,@(r0,r14) 
mov 0x21,r0
mov.l @r3,r1
mov.b @(r0,r14),r2
mov.l @(0x1C,r1),r1
extu.b r2,r2
add r1,r2
tst r4,r2
bt loc_8c0bab92
mov.w @(loc_8C0BABC0,pc),r0
mov.b r4,@(r0,r14) 

loc_8c0bab92:
mov.w @(0x1C,r14),r0 
add 0xFF,r0
mov.w r0,@(0x1C,r14) 
exts.w r0,r0
cmp/pl r0
bt loc_8c0babb0
mov.w @(loc_8C0BABC2,pc),r0
mov r14,r4
fmov.s fr4,@(r0,r14) 
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr 
mov.l @r15+,r13
bra loc_8c0bac6a
mov.l @r15+,r14

loc_8c0babb0:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 
mov.l @r15+,r13
bra loc_8c0babd0
mov.l @r15+,r14

loc_8c0babbe:
#data 0x041C

loc_8C0BABC0:
#data 0x012C

loc_8C0BABC2:
#data 0x0108

loc_8c0babc4:
#data 0x4DEE
#data 0x8C03

loc_8c0babc8:
#data 0x0000
#data 0x4080

#align4
loc_8C0BABCC:
#data 0x8C26823C


loc_8c0babd0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x23,r0
mov r4,r14
mov.l r5,@r15
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0bac60
mov.w @(loc_8C0BACD8,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0bac52
mov.w @(loc_8C0BACDA,pc),r0
mov.l @(r0,r14),r13
mov.w @(loc_8C0BACDC,pc),r0
mov.b @(r0,r13),r3
tst r3,r3
bf loc_8c0bac4c
mov 0x02,r0
mov.b r0,@(0x04,r14) 
mov.w @(loc_8C0BACDE,pc),r0
mov.b @(r0,r13),r3
mov 0x60,r0
extu.b r3,r3
lds r3,fpul 
float fpul,fr3
fmov.s fr3,@(r0,r14) 
mova @(loc_8C0BACE8,pc),r0 
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14) 
mov.w @(loc_8C0BACE0,pc),r0
mov.w @(r0,r13),r3
add 0xFC,r0
mov.w @(r0,r13),r2
cmp/gt r2,r3
bf loc_8c0bac36
mova @(loc_8C0BACEC,pc),r0 
mov.l @(loc_8c0bacf0,pc),r3
fmov.s @r0,fr3
mov 0x6C,r0
mov 0x01,r5
fmov.s fr3,@(r0,r14) 
jsr @r3
mov r13,r4
mov.l @(loc_8c0bacf4,pc),r2
mov 0x04,r5
jsr @r2
mov r13,r4

loc_8c0bac36:
mov.l @(loc_8c0bacf8,pc),r3
mov 0x2A,r5
jsr @r3
mov r14,r4
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 
mov.l @r15+,r13
bra loc_8c0bac6a
mov.l @r15+,r14

loc_8c0bac4c:
mov.w @(loc_8C0BACD8,pc),r0
mov 0x00,r3
mov.b r3,@(r0,r14) 

loc_8c0bac52:
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 
mov.l @(loc_8c0bacfc,pc),r3
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c0bac60:
add 0x04,r15
lds.l @r15+,pr 
mov.l @r15+,r13
rts 
mov.l @r15+,r14
;----------------------------------------------

loc_8c0bac6a:
mov.w @(loc_8C0BACDA,pc),r0
mov.l @(r0,r4),r5
tst r5,r5
bt loc_8c0bac84
mov 0x34,r0
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 
mov 0x60,r0
fmov.s @(r0,r4),fr3
mov 0x38,r0
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 

loc_8c0bac84:
mov 0x6C,r1
add r4,r1
mov 0x60,r0
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov.l @(loc_8C0BAD00,pc),r1
fadd fr3,fr2
lds r1,fpul 
fmov.s fr2,@(r0,r4) 
mov 0x6C,r0
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 
fmov.s @(r0,r4),fr1
fldi0 fr2
fcmp/gt fr1,fr2
bf/s loc_8c0bacac
fldi0 fr4
fmov.s fr4,@(r0,r4) 

loc_8c0bacac:
mov.l @(loc_8C0BAD04,pc),r1
mov.w @(loc_8C0BACE2,pc),r0
lds r1,fpul 
fmov.s @(r0,r4),fr2
fldi0 fr1
fsts fpul,fr3
fsub fr3,fr2
fcmp/gt fr2,fr1
bf/s loc_8c0bacce
fmov.s fr2,@(r0,r4) 
mov 0x03,r0
mov.b r0,@(0x04,r4) 
mov 0x00,r3
mov.w @(loc_8C0BACE4,pc),r0
mov.b r3,@(r0,r4) 
add 0xDC,r0
fmov.s fr4,@(r0,r4) 

loc_8c0bacce:
rts 
nop 

loc_8C0BACD2:
mov.l @(loc_8C0BAD08,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop
loc_8c0bacd8:
#data 0x019e
loc_8c0bacda:
#data 0x01B0
loc_8c0bacdc:
#data 0x0411
loc_8c0bacde:
#data 0x013C
loc_8c0bace0:
#data 0x0424
loc_8c0bace2:
#data 0x0108
loc_8c0bace4:
#data 0x0000012c
loc_8c0bace8:
#data 0x412B6DB6
loc_8c0bacec:
#data 0x41700000

#align4
loc_8C0BACF0:
#data bank05.loc_8c059150

loc_8C0BACF4:
#data bank10.loc_8c104DF8

loc_8C0BACF8:
#data bank04.loc_8c04223a

loc_8C0BACFC:
#data bank04.loc_8c045748
loc_8c0bad00:
#data 0x40092492
loc_8c0bad04:
#data 0x3CA3D70a

#align4
loc_8C0BAD08:
#data bank04.loc_8c0450C0

loc_8C0BAD0C:
#data 0x7FFC4F22
#data 0xE504D353
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD3506403
#data 0x1434E026
#data 0x62F2E300
#data 0x04351426

#align4
loc_8C0BAD30:
#data 0x4F267F04
#data 0x6043000b
;----------------------------------------------

loc_8C0BAD38:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0BAE54,pc),r3 ; r3 set to 0x150
sts.l pr,@-r15
mov.l @(0x18,r14),r13
add r3,r13
mov.b @(0x01,r13),r0
mov r0,r13
tst r13,r13
bt loc_8C0BAD72
mov.w @(loc_8C0BAE56,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r14)
mov.w @(0x1C,r14),r0
cmp/eq r13,r0
bt loc_8C0BAD6c
mov.l @(loc_8C0BAE68,pc),r1 ; r1 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov r13,r6
jsr @r1
mov r14,r4
mov r13,r0 ; r0 ??? bc r13 is ???	
nop
bra loc_8C0BAD84
mov.w r0,@(0x1C,r14)

#align4
loc_8c0bad6c:
mov.l @(loc_8c0bae6c,pc),r3
jsr @r3
mov r14,r4

loc_8c0bad72:
mov.l @(0x18,r14),r2
mov.b @r2,r3
tst r3,r3
bt loc_8c0bad84
mov.w @(loc_8c0bae54,pc),r3
mov.l @(0x18,r14),r0
add r3,r0
mov.b @(0x01,r0),r0 
mov.w r0,@(0x1C,r14) 

loc_8C0BAD84:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BAD8C:
mov r4,r3
mov.l @(loc_8C0BAE70,pc),r1 ; r1 set to 0x8C159DDc
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BAD9E:
mov.w @(loc_8C0BAE58,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BAE74,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BAE58,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BAE56,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BAE5A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BAE78,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r5 ; r5 set to 0x00
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4)
mov.w @(loc_8C0BAE56,pc),r0 ; r0 set to 0x12c
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

loc_8C0BAE28:
mov.w @(loc_8C0BAE56,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.b r3,@(r0,r4)
mov.l @(0x18,r4),r2
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
tst r3,r3
bt loc_8C0BAE50
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0BAE5C,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
bra loc_8C0BAD38
mov.w r2,@(r0,r4)

loc_8C0BAE50:
rts
nop
;----------------------------------------------

loc_8C0BAE54:
#data 0x0150

loc_8C0BAE56:
#data 0x012c

loc_8C0BAE58:
#data 0x00Dc

loc_8C0BAE5A:
#data 0x01A3

loc_8C0BAE5C:
#data 0x0130
#data 0x0000

#align4
loc_8C0BAE60:
#data bank04.loc_8c044F12

loc_8C0BAE64:
#data loc_8c0bAD8c

loc_8C0BAE68:
#data bank03.loc_8c034e8c

loc_8C0BAE6C:
#data bank03.loc_8c034dee

loc_8C0BAE70:
#data bank15.loc_8c159dDc

loc_8C0BAE74:
#data bank12.loc_8c129560

loc_8C0BAE78:
#data bank12.loc_8c1294C8


loc_8C0BAE7C:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BAE8E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4)

loc_8C0BAE88:
mov.l @(loc_8C0BAE90,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BAE8E:
#data 0x012c

#align4
loc_8C0BAE90:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x2F427FF8
#data 0x00096053
#data 0xE503D351
#data 0x80F4E600
#data 0x430BEE01
#data 0x20086463
#data 0x64038D0d
#data 0xD34DE026
#data 0x314CE120
#data 0x62F21434
#data 0x1426E300
#data 0x84F404E5
#data 0xE0212100
#data 0xD3460434
#data 0xE600E503
#data 0x6463430b
#data 0x8D0C2008
#data 0xE0266403
#data 0xE120D342
#data 0x1434314c
#data 0x142662F2
#data 0x84F404E5
#data 0xE0212100
#data 0x604304E4
#data 0x7F080009
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0BAF02:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BAFDE,pc),r3 ; r3 set to 0xCc
mov r14,r4
mov.l @(loc_8C0BAFF0,pc),r2 ; r2 set to 0x8C28C690
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0BAFF4,pc),r1 ; r1 set to 0x8C159DEc
mov.l r3,@r2 ; r2 ??? bc r3 is ???	
mov.b @(0x04,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BAF1E:
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0BAFF0,pc),r6 ; r6 set to 0x8C28C690
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0BAFE0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0BAF44
mov.l @r6,r5
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r5,fr3
fmov.s @(r0,r4),fr2
bra loc_8C0BAF4c
fadd fr3,fr2

loc_8C0BAF44:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r5,fr3
fmov.s @(r0,r4),fr2
fsub fr3,fr2

loc_8C0BAF4C:
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

loc_8C0BAF60:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BAFE2,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BAFF8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BAFE2,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BAFE4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BAFE6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BAFFC,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14)
mov.w @(loc_8C0BAFE4,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0BB000
mov 0x24,r0 ; r0 set to 0x24
bra loc_8C0BB002
mov 0x00,r3

loc_8C0BAFDE:
#data 0x00Cc

loc_8C0BAFE0:
#data 0x0130

loc_8C0BAFE2:
#data 0x00Dc

loc_8C0BAFE4:
#data 0x012c

loc_8C0BAFE6:
#data 0x01A3

#align4
loc_8C0BAFE8:
#data bank04.loc_8c044F12

loc_8C0BAFEC:
#data loc_8c0bAF02

loc_8C0BAFF0:
#data 0x8C28C690

#align4
loc_8C0BAFF4:
#data bank15.loc_8c159dEc

loc_8C0BAFF8:
#data bank12.loc_8c129560

loc_8C0BAFFC:
#data bank12.loc_8c1294C8


loc_8C0BB000:
mov 0x0B,r3 ; r3 set to 0x0b

loc_8C0BB002:
mov.b r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(0x18,r14),r2
mov.l @(loc_8C0BB0A4,pc),r4 ; r4 set to 0x8C28C690, r4 set to 0x8C28C690
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
mov.w r0,@(0x1C,r14)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0BB02a
mov.l @r4,r3
mova @(loc_8C0BB0A8,pc),r0  ; r0 set to 0x8C0BB0A8, r0 set to 0x8C0BB0A8
bra loc_8C0BB02c
fmov.s @r0,fr3

loc_8C0BB02A:
fldi0 fr3

loc_8C0BB02C:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
fmov.s fr3,@r3
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0BB03e
mov.l @r4,r3
mova @(loc_8C0BB0AC,pc),r0  ; r0 set to 0x8C0BB0AC, r0 set to 0x8C0BB0Ac
bra loc_8C0BB040
fmov.s @r0,fr3

loc_8C0BB03E:
fldi0 fr3

loc_8C0BB040:
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s fr3,@(r0,r3)
bsr loc_8C0BAF1e
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.l @(loc_8C0BB0B0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.b @(r0,r14),r6
mov r14,r4
lds.l @r15+,pr
extu.b r6,r6
shll r6
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
mov.l @r15+,r14

loc_8C0BB05C:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0BAF1e
mov r4,r14
mov.w @(loc_8C0BB09E,pc),r0 ; r0 set to 0x150
mov.l @(0x18,r14),r4
add r4,r0 ; r0 ??? bc r4 is ???	
mov.b @(0x01,r0),r0
cmp/eq 0x05,r0
bt loc_8C0BB082
mov.w @(loc_8C0BB09E,pc),r0 ; r0 set to 0x150
add r4,r0 ; r0 ??? bc r4 is ???	
mov.b @(0x01,r0),r0
cmp/eq 0x08,r0
bt loc_8C0BB082
lds.l @r15+,pr
mov r14,r4
bra loc_8C0BB08c
mov.l @r15+,r14

loc_8C0BB082:
lds.l @r15+,pr
mov.l @(loc_8C0BB0B4,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0BB08C:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BB0A0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4)

loc_8C0BB098:
mov.l @(loc_8C0BB0B8,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BB09E:
#data 0x0150

loc_8C0BB0A0:
#data 0x012c
#data 0x0000

#align4
loc_8C0BB0A4:
#data 0x8C28C690

#align4
loc_8C0BB0A8:
#data 0xC1F00000

#align4
loc_8C0BB0AC:
#data 0x42092492

#align4
loc_8C0BB0B0:
#data bank03.loc_8c034e8c

loc_8C0BB0B4:
#data bank03.loc_8c034dee

loc_8C0BB0B8:
#data bank04.loc_8c0450C0
#data 0xE6002FE6
#data 0xE5032FD6
#data 0x6D432FC6
#data 0xEE022FB6
#data 0xDB364F22
#data 0x64634B0b
#data 0x8D0A2008
#data 0xE0266403
#data 0xE500D233
#data 0x14D61424
#data 0xE02004E5
#data 0xE0210454
#data 0xE5030454
#data 0xEC01E600
#data 0x64634B0b
#data 0x8D092008
#data 0xE0266403
#data 0x1424D22a
#data 0x04E514D6
#data 0x04C4E020
#data 0x04C4E021
#data 0xE600E503
#data 0x64634B0b
#data 0x8D092008
#data 0xE0266403
#data 0x1424D222
#data 0x04E514D6
#data 0x04E4E020
#data 0x04C4E021
#data 0x00096043
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BB140:
mov r4,r3
mov.l @(loc_8C0BB1B0,pc),r1 ; r1 set to 0x8C159DFc
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BB152:
mov.l @(0x18,r4),r5
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0BB1A4,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r4)
mova @(loc_8C0BB1B4,pc),r0  ; r0 set to 0x8C0BB1B4
fmov.s @r0,fr5
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x00,r0
bt loc_8C0BB17c
cmp/eq 0x01,r0
bt loc_8C0BB180
cmp/eq 0x02,r0
bt loc_8C0BB184
bra loc_8C0BB190
nop

loc_8C0BB17C:
bra loc_8C0BB190
fldi0 fr4

loc_8C0BB180:
bra loc_8C0BB190
fmov fr5,fr4

#align4
loc_8c0bb184:
mov.w @(loc_8C0BB1A6,pc),r0
mov 0x01,r3
fmov fr5,fr4
mov.w @(r0,r4),r2
xor r3,r2
mov.w r2,@(r0,r4) 

loc_8c0bb190:
mov.w @(loc_8C0BB1A6,pc),r0
mov.w @(r0,r4),r0
tst r0,r0
bt loc_8c0bb19a
fneg fr4

loc_8c0bb19a:
mov 0x34,r0
fmov.s @(r0,r4),fr3
fadd fr4,fr3
rts 
fmov.s fr3,@(r0,r4) 
;----------------------------------------------

loc_8c0bb1a4:
#data 0x041C

loc_8C0BB1A6:
#data 0x0130

loc_8c0bb1a8:
#data 0x4F12
#data 0x8C04

loc_8c0bb1ac:
#data 0xB140
#data 0x8C0B

loc_8c0bb1b0:
#data 0x9DFC
#data 0x8C15

loc_8c0bb1b4:
#data 0x0000
#data 0x42A0

loc_8C0BB1B8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BB29E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BB2A8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BB29E,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BB2A0,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BB2A2,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BB2AC,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14)
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BB2A0,pc),r0 ; r0 set to 0x12c
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
fmov.s fr3,@(r0,r14)
bsr loc_8C0BB152
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0BB250
mov 0x17,r5 ; r5 set to 0x17
bra loc_8C0BB252
mov 0x0C,r6

loc_8C0BB250:
mov 0x0D,r6 ; r6 set to 0x0d

loc_8C0BB252:
lds.l @r15+,pr
mov.l @(loc_8C0BB2B0,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
mov r14,r4
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0BB25C:
#data 0x4F222FE6
#data 0x6E43BF77
#data 0x54E6901e
#data 0x600C004c
#data 0x8B048816
#data 0x004C9019
#data 0x8801600c
#data 0x8903

loc_8C0BB27A:
#data 0x4F26
#data 0xA00564E3
#data 0x6EF6

loc_8C0BB282:
#data 0x4F26
#data 0x64E3D30b
#data 0x6EF6432b


loc_8C0BB28C:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BB2A0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4)

loc_8C0BB298:
mov.l @(loc_8C0BB2B8,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BB29E:
#data 0x00Dc

loc_8C0BB2A0:
#data 0x012c

loc_8C0BB2A2:
#data 0x01A3
#data 0x01580159

#align4
loc_8C0BB2A8:
#data bank12.loc_8c129560

loc_8C0BB2AC:
#data bank12.loc_8c1294C8

loc_8C0BB2B0:
#data bank03.loc_8c034e8c

loc_8C0BB2B4:
#data bank03.loc_8c034dee

loc_8C0BB2B8:
#data bank04.loc_8c0450C0
#data 0x2FD62FE6
#data 0x2FC6ED00
#data 0x2FB66ED3
#data 0x2FA66C43
#data 0x2F96EA0f
#data 0x9B634F22
#data 0xE504D932
#data 0x490BE601
#data 0x2008E400
#data 0x64038D0b
#data 0x1424D22f
#data 0x84C114C6
#data 0xE0208041
#data 0xE02104D4
#data 0xE02604E4
#data 0x7E0104B5
#data 0x8BEA3EA3
#data 0x00096043
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;----------------------------------------------
#data 0xEE002FE6
#data 0x6D432FD6
#data 0x2FB62FC6
#data 0x2FA6EB01
#data 0x2F96EA02
#data 0x9C374F22
#data 0xE504D91c
#data 0x490BE601
#data 0x2008E400
#data 0x64038D0b
#data 0x1424D219
#data 0x84D114D6
#data 0xE0208041
#data 0xE02104B4
#data 0xE02604E4
#data 0x7E0104C5
#data 0x8BEA3EA3
#data 0x00096043
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BB36C:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0BB3A8,pc),r0 ; r0 set to 0x8C159E0c
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BB38A:
mov r4,r3
mov.l @(loc_8C0BB3AC,pc),r1 ; r1 set to 0x8C159E14
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00000300

#align4
loc_8C0BB3A0:
#data bank04.loc_8c044F12

loc_8C0BB3A4:
#data loc_8c0bB36c

loc_8C0BB3A8:
#data bank15.loc_8c159e0c

loc_8C0BB3AC:
#data bank15.loc_8c159e14

loc_8C0BB3B0:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x91BC2FC6
#data 0x84E44F22
#data 0x9CB731Ec
#data 0x92B67001
#data 0x3CEC80E4
#data 0xD35D90B4
#data 0x32DC430b
#data 0xE20190B1
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x90A3FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD34f
#data 0xE024E00c
#data 0xE30302Dc
#data 0x0E24E51b
#data 0x9090E209
#data 0x81C800Dd
#data 0x0C34E01c
#data 0x81EEE004
#data 0x81EFE008
#data 0xE3FEE031
#data 0x90840E34
#data 0x0E24D345
#data 0x430B06Ec
#data 0xE02164E3
#data 0x222802Ec
#data 0xE0258B0a
#data 0x06DCD342
#data 0xD040E701
#data 0x666CE502
#data 0x066E4608
#data 0x64D3430b

#align4
loc_8C0BB45C:
#data 0xF48DE034
#data 0xD43DF3D6
#data 0xE038FE37
#data 0xF3D6FC4a
#data 0xE004FE37
#data 0xE068FC47
#data 0xE06CFE47
#data 0xC738FE47
#data 0xC738F508
#data 0xE021F408
#data 0xE00803Ec
#data 0x4308633c
#data 0x6331334c
#data 0xF32D435a
#data 0xF343F352
#data 0xC732FC37
#data 0xE021F608
#data 0x633C03Ec
#data 0x343C4308
#data 0xD42F8541
#data 0x435A6303
#data 0xF32DE00c
#data 0xF343F362
#data 0xE021FC37
#data 0xE05C03Ec
#data 0x6233633c
#data 0x43004208
#data 0x334C332c
#data 0x435A6331
#data 0xF352F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x334C332c
#data 0x63038531
#data 0xE060435a
#data 0xF362F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x343C332c
#data 0x1C058542
#data 0x03ED9018
#data 0x8B072338
#data 0xF3C6E008
#data 0xFC37F34d
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0BB524:
#data 0xF2C8E05c
#data 0xE060F3E6
#data 0xFC2AF230
#data 0x0009A01c
#data 0x00DC0088
#data 0x012C00C0
#data 0x015801A3
#data 0x00000130

#align4
loc_8C0BB544:
#data bank12.loc_8c129560

loc_8C0BB548:
#data bank12.loc_8c1294C8

loc_8C0BB54C:
#data bank03.loc_8c034C38

loc_8C0BB550:
#data bank15.loc_8c159eBc

loc_8C0BB554:
#data bank03.loc_8c03544c

loc_8C0BB558:
#data bank15.loc_8c159e24
#data 0x3FD55555
#data 0x43800000
#data 0x40092492

#align4
loc_8C0BB568:
#data bank15.loc_8c159e60

loc_8C0BB56C:
#data 0xE004F3E6
#data 0xF230F2C6
#data 0xE034FC27
#data 0xF3D6F2C8
#data 0xFE27F230
#data 0xF3D6E038
#data 0xF2C6E004
#data 0xF230E038
#data 0x4F26FE27
#data 0x6DF66CF6
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BB598:
mov.l r14,@-r15
mov 0x08,r0 ; r0 set to 0x08
mov.w @(loc_8C0BB6C2,pc),r14 ; r14 set to 0x88
mov.l r13,@-r15
add r4,r14 ; r14 ??? bc r4 is ???	
fmov.s fr15,@-r15
sts.l pr,@-r15
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
mov.l @(loc_8C0BB6C8,pc),r3 ; r3 set to 0x8C11E210
fadd fr3,fr2
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
mov 0x0C,r0 ; r0 set to 0x0c
fmov fr2,fr15
fsub fr3,fr15
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s @(r0,r4),fr3
fmov fr2,fr4
fsub fr3,fr4
jsr @r3
fmov fr15,fr5
mov.l @(loc_8C0BB6CC,pc),r2 ; r2 set to 0x8C129658
mov r0,r4 ; r4 set to 0x38
mov.w @(loc_8C0BB6C4,pc),r13 ; r13 set to 0x400
mov.l r0,@(0x18,r14)
mov.l @(0x14,r14),r3
jsr @r2
sub r3,r4 ; r4 ??? bc r3 is ???	
cmp/ge r13,r0
bf loc_8C0BB5F4
mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???	
mov.l @(0x14,r14),r3
sub r3,r2
cmp/pl r2
bf loc_8C0BB5Ee
mov.l @(0x14,r14),r2
sub r13,r2
bra loc_8C0BB5F4
mov.l r2,@(0x14,r14)

loc_8c0bb5ee:
mov.l @(0x14,r14),r1
add r13,r1
mov.l r1,@(0x14,r14) 

loc_8C0BB5F4:
lds.l @r15+,pr
fmov.s @r15+,fr15
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BB5FE:
mov.l r14,@-r15
mov.l r13,@-r15
fmov.s fr15,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xFC,r15
fldi1 fr15
fadd fr15,fr15
mov.w @(loc_8C0BB6C2,pc),r14 ; r14 set to 0x88
mov r4,r13
mov.l @(loc_8C0BB6D0,pc),r3 ; r3 set to 0x8C11E2E0
mov.l r5,@r15
add r13,r14 ; r14 ??? bc r13 is ???	
jsr @r3
mov.l @(0x14,r14),r4
mov 0x1C,r0 ; r0 set to 0x1c
fmov fr0,fr12
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
lds r3,fpul
mov.l @(loc_8C0BB6D4,pc),r3 ; r3 set to 0x8C11E680
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov.l @(loc_8C0BB6D8,pc),r3 ; r3 set to 0x8C11E860
mov 0x5C,r0 ; r0 set to 0x5c
fdiv fr15,fr12
fmov.s fr12,@(r0,r13)
jsr @r3
mov.l @(0x14,r14),r4
mov 0x1C,r0 ; r0 set to 0x1c
fmov fr0,fr12
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
lds r3,fpul
mov.l @(loc_8C0BB6D4,pc),r3 ; r3 set to 0x8C11E680
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov 0x60,r0 ; r0 set to 0x60
fdiv fr15,fr12
fmov.s fr12,@(r0,r13)
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @r14,fr2
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x60,r0 ; r0 set to 0x60
fadd fr3,fr2
fmov.s fr2,@r14
fmov.s @(r0,r13),fr3
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @r14,fr2
fmov.s @(r0,r3),fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r13)
mov 0x38,r0 ; r0 set to 0x38
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r14),fr2
mov 0x38,r0 ; r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r13)
add 0x04,r15
lds.l @r15+,pr
fmov.s @r15+,fr12
fmov.s @r15+,fr15
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BB692:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BB6C2,pc),r4 ; r4 set to 0x88
mov.w @(loc_8C0BB6C6,pc),r3 ; r3 set to 0x158
mov.l r13,@-r15
mov r5,r13
add r13,r3 ; r3 ??? bc r13 is ???	
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
mov.w @r3,r3
mov.w @(0x10,r4),r0
cmp/eq r3,r0
bt loc_8C0BB6Dc
mov.b @(0x05,r14),r0
mov 0x00,r3 ; r3 set to 0x00
mov r13,r5
add 0x01,r0
mov.b r0,@(0x05,r14)
mov 0x1C,r0 ; r0 set to 0x1c
mov.b r3,@(r0,r4)
bsr loc_8C0BB598
mov r14,r4
bra loc_8C0BB71c
nop

loc_8C0BB6C2:
#data 0x0088

loc_8C0BB6C4:
#data 0x0400

loc_8C0BB6C6:
#data 0x0158

#align4
loc_8C0BB6C8:
#data bank11.loc_8c11E210

loc_8C0BB6CC:
#data bank12.loc_8c129658

loc_8C0BB6D0:
#data bank11.loc_8c11E2E0

loc_8C0BB6D4:
#data bank11.loc_8c11E680

loc_8C0BB6D8:
#data bank11.loc_8c11E860


loc_8C0BB6DC:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
tst r0,r0
bf loc_8C0BB71c
mov.w @(0x1E,r14),r0
add 0xFF,r0
mov.w r0,@(0x1E,r14)
exts.w r0,r0
tst r0,r0
bf loc_8C0BB712
mov 0x1C,r0 ; r0 set to 0x1c
mov.l @(loc_8C0BB7DC,pc),r1 ; r1 set to 0x8C159ED4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
shll r0
mov.w @(r0,r1),r0
mov.w r0,@(0x1E,r14)
mov 0x1C,r0 ; r0 set to 0x1c
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0BB712
mov.b @(r0,r4),r3
add 0xFF,r3
mov.b r3,@(r0,r4)
bra loc_8C0BB714
mov 0x04,r0

loc_8c0bb712:
mov 0x01,r0

loc_8c0bb714:
mov r13,r5
mov.w r0,@(0x1C,r14) 
bsr loc_8c0bb598
mov r14,r4

loc_8C0BB71C:
mov r13,r5
bsr loc_8C0BB5Fe
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_8C0BB7E0,pc),r3 ; r3 set to 0x8C034D8c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BB72E:
mov.w @(loc_8C0BB7D4,pc),r0 ; r0 set to 0x14b
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt/s loc_8C0BB74e
mov r4,r13
mov.b @(0x04,r13),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x14c
mov.b r0,@(0x04,r13)
mov.w @(loc_8C0BB7D6,pc),r0 ; r0 set to 0x12c
bra loc_8C0BB782
mov.b r3,@(r0,r13)

loc_8C0BB74E:
mov 0x25,r0 ; r0 set to 0x25
mov.b @(r0,r14),r6
mov 0x02,r5 ; r5 set to 0x02
mov.w @(loc_8C0BB7D8,pc),r0 ; r0 set to 0x140
mov 0x01,r7 ; r7 set to 0x01
extu.b r6,r6
mov.b @(r0,r14),r3
shll2 r6
mov.l @(loc_8C0BB7E4,pc),r0 ; r0 set to 0x8C159EDc
mov.l @(r0,r6),r6
add r3,r6
mov.l @(loc_8C0BB7E8,pc),r3 ; r3 set to 0x8C03544c
jsr @r3
mov r14,r4
mov r14,r5 ; r5 ??? bc r14 is ???	
bsr loc_8C0BB598
mov r13,r4
mov r14,r5
bsr loc_8C0BB5Fe
mov r13,r4
lds.l @r15+,pr
mov r13,r4
mov.l @(loc_8C0BB7E0,pc),r2 ; r2 set to 0x8C034D8c
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0BB782:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BB78A:
#data 0x2FE6
#data 0x20088455
#data 0x6E438F05
#data 0x005C9021
#data 0x881D600c
#data 0x8907

loc_8C0BB79E:
#data 0x84E4
#data 0x7001E300
#data 0x901680E4
#data 0x000B0E34
#data 0x6EF6
;----------------------------------------------

loc_8C0BB7AE:
#data 0x84E5
#data 0xD10E64E3
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x6EF6
;----------------------------------------------

loc_8C0BB7C2:
mov r4,r3
mov.l @(loc_8C0BB7F0,pc),r1 ; r1 set to 0x8C159EFc
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BB7D4:
#data 0x014b

loc_8C0BB7D6:
#data 0x012c

loc_8C0BB7D8:
#data 0x0140
#data 0x01D0

#align4
loc_8C0BB7DC:
#data bank15.loc_8c159eD4

loc_8C0BB7E0:
#data bank03.loc_8c034D8c

loc_8C0BB7E4:
#data bank15.loc_8c159eDc

loc_8C0BB7E8:
#data bank03.loc_8c03544c

loc_8C0BB7EC:
#data bank15.loc_8c159eF4

loc_8C0BB7F0:
#data bank15.loc_8c159eFc


loc_8C0BB7F4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
fmov.s fr15,@-r15
fmov.s fr12,@-r15
mov.w @(loc_8C0BB93E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BB93C,pc),r12 ; r12 set to 0x88
add 0x01,r0
mov.w @(loc_8C0BB93E,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14)
add r14,r12 ; r12 ??? bc r14 is ???	
mov.w @(loc_8C0BB940,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0BB954,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0BB942,pc),r0 ; r0 set to 0x12c
mov 0x01,r4 ; r4 set to 0x01
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
mov.w @(loc_8C0BB944,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BB958,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x08,r3 ; r3 set to 0x08
mov.b r2,@(r0,r14)
mov.w @(loc_8C0BB946,pc),r0 ; r0 set to 0x158
mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???	
mov.w r0,@(0x10,r12)
mov 0x1C,r0 ; r0 set to 0x1c
mov.b r3,@(r0,r12)
mov.w @(loc_8C0BB948,pc),r0 ; r0 set to 0xB4
mov.w r0,@(0x1C,r14)
mov r4,r0 ; r0 set to 0x01
nop
mov.w r0,@(0x1E,r14)
mov 0x31,r0 ; r0 set to 0x31
mov 0xFC,r3 ; r3 set to 0xFFFFFFFc
mov.b r3,@(r0,r14)
mov 0x0A,r2 ; r2 set to 0x0a
mov.w @(loc_8C0BB946,pc),r0 ; r0 set to 0x158
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0BB95C,pc),r3 ; r3 set to 0x8C034C38
mov.b r2,@(r0,r14)
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
tst r2,r2
bf loc_8C0BB896
mov.w @(loc_8C0BB94A,pc),r3 ; r3 set to 0x4000
bra loc_8C0BB89a
mov.l r3,@(0x14,r12)

loc_8C0BB896:
mov.l @(loc_8C0BB960,pc),r1 ; r1 set to 0xC000
mov.l r1,@(0x14,r12)

loc_8C0BB89A:
mov.w @(loc_8C0BB94C,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0BB8Aa
fldi1 fr15
mov.w @(loc_8C0BB94E,pc),r3 ; r3 set to 0xFC00, r3 set to 0xFC00
bra loc_8C0BB8Ae
mov.l r3,@(0x18,r12)

loc_8C0BB8AA:
mov.w @(loc_8C0BB950,pc),r1 ; r1 set to 0x400
mov.l r1,@(0x18,r12)

loc_8C0BB8AE:
fadd fr15,fr15
mov.l @(loc_8C0BB964,pc),r3 ; r3 set to 0x8C11E2E0, r3 set to 0x8C11E2E0
jsr @r3
mov.l @(0x14,r12),r4
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
fmov fr0,fr12
mov.b @(r0,r12),r3 ; r3 ??? bc r12 is ???, r3 ??? bc r12 is ???	
lds r3,fpul
mov.l @(loc_8C0BB968,pc),r3 ; r3 set to 0x8C11E680, r3 set to 0x8C11E680
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov.l @(loc_8C0BB96C,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fdiv fr15,fr12
fmov.s fr12,@(r0,r14)
jsr @r3
mov.l @(0x14,r12),r4
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
fmov fr0,fr12
mov.b @(r0,r12),r3 ; r3 ??? bc r12 is ???, r3 ??? bc r12 is ???	
lds r3,fpul
mov.l @(loc_8C0BB968,pc),r3 ; r3 set to 0x8C11E680, r3 set to 0x8C11E680
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fdiv fr15,fr12
fmov.s fr12,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
mova @(loc_8C0BB970,pc),r0  ; r0 set to 0x8C0BB970, r0 set to 0x8C0BB970
fadd fr3,fr2
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
lds.l @r15+,pr
fmov.s @r15+,fr12
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BB91A:
mov.w @(loc_8C0BB946,pc),r3 ; r3 set to 0x158
mov.w @(loc_8C0BB93C,pc),r6 ; r6 set to 0x88
add r5,r3 ; r3 ??? bc r5 is ???	
add r4,r6 ; r6 ??? bc r4 is ???	
mov.w @r3,r3
mov.w @(0x10,r6),r0
cmp/eq r3,r0
bt loc_8C0BB974
mov.w @(loc_8C0BB946,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r0 ; r0 ??? bc r5 is ???	
mov.w r0,@(0x10,r6)
mov.b @(0x05,r4),r0
add 0x01,r0
mov.b r0,@(0x05,r4)
mov 0x01,r0 ; r0 set to 0x01
rts
mov.w r0,@(0x1C,r4)
;----------------------------------------------

loc_8C0BB93C:
#data 0x0088

loc_8C0BB93E:
#data 0x00Dc

loc_8C0BB940:
#data 0x00C0

loc_8C0BB942:
#data 0x012c

loc_8C0BB944:
#data 0x01A3

loc_8C0BB946:
#data 0x0158

loc_8C0BB948:
#data 0x00B4

loc_8C0BB94A:
#data 0x4000

loc_8C0BB94C:
#data 0x0130

loc_8C0BB94E:
#data 0xFC00

loc_8C0BB950:
#data 0x0400
#data 0x0000

#align4
loc_8C0BB954:
#data bank12.loc_8c129560

loc_8C0BB958:
#data bank12.loc_8c1294C8

loc_8C0BB95C:
#data bank03.loc_8c034C38

loc_8C0BB960:
#data 0x0000C000

#align4
loc_8C0BB964:
#data bank11.loc_8c11E2E0

loc_8C0BB968:
#data bank11.loc_8c11E680

loc_8C0BB96C:
#data bank11.loc_8c11E860

loc_8C0BB970:
#data 0x43092492


loc_8C0BB974:
mov.b @(0x06,r5),r0
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/gt r3,r0
bt loc_8C0BB98c
mov.w @(loc_8C0BBA9C,pc),r0 ; r0 set to 0x140
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
cmp/eq 0x02,r0
bf loc_8C0BB98c
mov.l @(loc_8C0BBAA8,pc),r2 ; r2 set to 0x8C034D8c
jmp @r2
nop

loc_8C0BB98C:
rts
nop
;----------------------------------------------

loc_8C0BB990:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
fmov.s fr15,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0BBAA0,pc),r3 ; r3 set to 0x2A4
mov r5,r12
mov.w @(loc_8C0BBA9E,pc),r13 ; r13 set to 0x88
mov r4,r14
add r12,r3 ; r3 ??? bc r12 is ???	
mov.l r3,@r15
add r14,r13 ; r13 ??? bc r14 is ???	
mov.w @(loc_8C0BBAA2,pc),r3 ; r3 set to 0x158
mov.w @(0x10,r13),r0
add r12,r3 ; r3 ??? bc r12 is ???	
mov.w @r3,r3
cmp/eq r3,r0
bt loc_8C0BB9C4
mov.b @(0x05,r14),r0
add 0x01,r0
mov.b r0,@(0x05,r14)
mov 0x08,r0 ; r0 set to 0x08
bra loc_8C0BBA8c
mov.w r0,@(0x1C,r14)

#align4
loc_8c0bb9c4:
mov.w @(loc_8C0BBAA4,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0bb9d6
mov 0x00,r3
mov.b r3,@(r0,r14) 
mov.l @(loc_8c0bbaac,pc),r3
jsr @r3
mov r14,r4

loc_8c0bb9d6:
mov.l @(loc_8C0BBAB0,pc),r4
mov 0x3C,r0
mov 0x01,r1
mov.w @(r0,r4),r2
mov 0x3B,r0
mov.b @(r0,r4),r3
extu.w r2,r2
extu.b r3,r3
shad r3, r1
tst r1,r2
bf loc_8c0bba8c
mov.b @(0x06,r4),r0 
tst r0,r0
bf loc_8c0bba2c
mov.l @(loc_8c0bbaa8,pc),r3
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 
tst r0,r0
bt loc_8c0bba06
mov.w @(0x1E,r14),r0 
add 0xFF,r0
bra loc_8c0bba8c
mov.w r0,@(0x1E,r14) 

loc_8c0bba06:
mov.w @(loc_8c0bba9c,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8c0bba2c
mov 0x01,r0
mov.w r0,@(0x1E,r14) 
mov 0x13,r0
mov.l @(0x18,r13),r3
mov.l @(0x14,r13),r2
add r3,r2
mov.l r2,@(0x14,r13) 
mov.l @r15,r1
mov.b @(r0,r1),r3
tst r3,r3
bt loc_8c0bba2c
mov.l @(0x14,r13),r2
mov.l @(0x18,r13),r3
add r3,r2
mov.l r2,@(0x14,r13) 

loc_8c0bba2c:
fldi1 fr15
fadd fr15,fr15
mov.l @(loc_8c0bbab4,pc),r3
jsr @r3
mov.l @(0x14,r13),r4
mov 0x1C,r0
fmov fr0,fr12
mov.b @(r0,r13),r3
lds r3,fpul 
mov.l @(loc_8c0bbab8,pc),r3
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov.l @(loc_8c0bbabc,pc),r3
mov 0x5C,r0
fdiv fr15,fr12
fmov.s fr12,@(r0,r14) 
jsr @r3
mov.l @(0x14,r13),r4
mov 0x1C,r0
fmov fr0,fr12
mov.b @(r0,r13),r3
lds r3,fpul 
mov.l @(loc_8c0bbab8,pc),r3
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov 0x60,r0
fdiv fr15,fr12
fmov.s fr12,@(r0,r14) 
mov 0x5C,r0
fmov.s @(r0,r14),fr3
mov 0x34,r0
fmov.s @(r0,r12),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 
mov 0x60,r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r12),fr2
mova @(loc_8C0BBAC0,pc),r0 
fadd fr3,fr2
fmov.s @r0,fr3
mov 0x38,r0
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 

loc_8C0BBA8C:
add 0x04,r15
lds.l @r15+,pr
fmov.s @r15+,fr12
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BBA9C:
#data 0x0140

loc_8C0BBA9E:
#data 0x0088

loc_8C0BBAA0:
#data 0x02A4

loc_8C0BBAA2:
#data 0x0158
loc_8c0bbaa4:
#data 0x00000141

#align4
loc_8C0BBAA8:
#data bank03.loc_8c034D8c

loc_8C0BBAAC:
#data bank06.loc_8c062756
loc_8c0bbab0:
#data 0x8C2895F0

#align4
loc_8C0BBAB4:
#data bank11.loc_8c11E2E0

loc_8C0BBAB8:
#data bank11.loc_8c11E680

loc_8C0BBABC:
#data bank11.loc_8c11E860
loc_8c0bbac0:
#data 0x43092492

#align4
loc_8C0BBAC4:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0x84448B05
#data 0x7001E300
#data 0x902C8044
#data 0x0434

loc_8C0BBADE:
#data 0x000b
#data 0x0009
;----------------------------------------------

loc_8C0BBAE2:
#data 0x2FE6
#data 0x20088455
#data 0x6E438F09
#data 0x005C9024
#data 0x881D600c
#data 0xD311890b
#data 0x22286230
#data 0x8B07

loc_8C0BBAFE:
#data 0x84E4
#data 0x7001E300
#data 0x901680E4
#data 0x000B0E34
#data 0x6EF6
;----------------------------------------------

loc_8C0BBB0E:
#data 0x84E5
#data 0xD10B64E3
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x6EF6
;----------------------------------------------

loc_8C0BBB22:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BBB36,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0BBB30:
mov.l @(loc_8C0BBB44,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BBB36:
#data 0x012c
#data 0x000001D0
#data 0x8C2895F6

#align4
loc_8C0BBB40:
#data bank15.loc_8c159f0c

loc_8C0BBB44:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D353
#data 0xE6012F42
#data 0xE400430b
#data 0x8D0F2008
#data 0xE5006403
#data 0x1434D34f
#data 0x62F29394
#data 0x60F21426
#data 0x80418401
#data 0x0454E020
#data 0x0454E021
#data 0x0435E026
#data 0x4F267F04
#data 0x6043000b
;----------------------------------------------

#align4
loc_8c0bbb84:
mov.l r14,@-r15
mov 0x03,r6
sts.l pr,@-r15
mov.l @(loc_8c0bbc9c,pc),r3
mov r4,r14
jsr @r3
mov r6,r5
tst r0,r0
bt/s loc_8c0bbbba
mov r0,r4
mov.l @(loc_8c0bbca0,pc),r3
mov.l r3,@(0x10,r4) 
mov 0x01,r3
mov.l @(0x18,r14),r2
mov.l r2,@(0x18,r4) 
mov.l r14,@(0x14,r4) 
mov.b @(0x01,r14),r0 
mov.b r0,@(0x01,r4) 
mov 0x20,r0
mov.b r3,@(r0,r4) 
mov 0x21,r0
mov.b @(r0,r14),r2
mov.w @(loc_8C0BBC90,pc),r3
add 0x01,r2
mov.b r2,@(r0,r4) 
mov 0x26,r0
mov.w r3,@(r0,r4) 

loc_8c0bbbba:
mov r4,r0
nop 
lds.l @r15+,pr 
rts 
mov.l @r15+,r14

loc_8C0BBBC4:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0BBCA4,pc),r0 ; r0 set to 0x8C159F18
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BBBE2:
mov r4,r3
mov.l @(loc_8C0BBCA8,pc),r1 ; r1 set to 0x8C159F20
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BBBF4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0BBC92,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BBC92,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BBCAC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BBC94,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0BBC96,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14)
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
mov.w @(loc_8C0BBC98,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0BBCB0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x04,r3 ; r3 set to 0x04
mov 0x0F,r5 ; r5 set to 0x0f
mov.b r2,@(r0,r14)
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14)
mov 0x06,r6 ; r6 set to 0x06
mov.l @(loc_8C0BBCB4,pc),r3 ; r3 set to 0x8C034E8c
jsr @r3
mov r14,r4
mov.w @(loc_8C0BBC9A,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bt loc_8C0BBC70
mova @(loc_8C0BBCB8,pc),r0  ; r0 set to 0x8C0BBCB8
bra loc_8C0BBC74
fmov.s @r0,fr3

loc_8C0BBC70:
mova @(loc_8C0BBCBC,pc),r0  ; r0 init to 0x8C0BBCBc
fmov.s @r0,fr3

loc_8C0BBC74:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mova @(loc_8C0BBCC0,pc),r0  ; r0 set to 0x8C0BBCC0, r0 set to 0x8C0BBCC0
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------
loc_8c0bbc90:
#data 0x0301

loc_8C0BBC92:
#data 0x00Dc

loc_8C0BBC94:
#data 0x00C0

loc_8C0BBC96:
#data 0x012c

loc_8C0BBC98:
#data 0x01A3

loc_8C0BBC9A:
#data 0x0130

#align4
loc_8C0BBC9C:
#data bank04.loc_8c044F12

loc_8C0BBCA0:
#data loc_8c0bBBC4

loc_8C0BBCA4:
#data bank15.loc_8c159f18

loc_8C0BBCA8:
#data bank15.loc_8c159f20

loc_8C0BBCAC:
#data bank12.loc_8c129560

loc_8C0BBCB0:
#data bank12.loc_8c1294C8

loc_8C0BBCB4:
#data bank03.loc_8c034e8c

loc_8C0BBCB8:
#data 0x432D5555

#align4
loc_8C0BBCBC:
#data 0xC32D5555

#align4
loc_8C0BBCC0:
#data 0x430F9249


loc_8C0BBCC4:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0BBD90,pc),r0 ; r0 set to 0x1C8
mov r5,r13
mov.l r5,@r15
mov.l @(r0,r13),r13
add 0x35,r0 ; r0 set to 0x1Fd
mov.b @(r0,r13),r3
tst r3,r3
bf/s loc_8C0BBCFc
mov r4,r14
mov.b @(0x05,r14),r0
add 0x01,r0 ; r0 set to 0x1Fe
mov.b r0,@(0x05,r14)
bsr loc_8C0BBB84
mov r14,r4
tst r0,r0
bt loc_8C0BBCFc
mov r14,r4
mov r13,r5
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C0BBD98,pc),r3 ; r3 set to 0x8C04CC1c
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BBCFC:
mov 0x21,r0 ; r0 set to 0x21
mov r14,r4
mov.b @(r0,r14),r2
mov r0,r3 ; r3 set to 0x21
add 0x5F,r3 ; r3 set to 0x80
or r3,r2
mov.b r2,@(r0,r14)
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x05,r14)
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
bra loc_8C0BC0Be
mov.l @r15+,r14

loc_8C0BBD1A:
#data 0x9039
#data 0x0E5E2FE6
#data 0x93367035
#data 0x222802Ec
#data 0x353C8F06
#data 0x9131E021
#data 0x622C024c
#data 0x8B043213

#align4
loc_8C0BBD38:
#data 0x70018445
#data 0x000B8045
#data 0x6EF6
;----------------------------------------------

loc_8C0BBD42:
#data 0xE01b
#data 0x2338035c
#data 0xD3138B03
#data 0x432B65E3
#data 0x6EF6

loc_8C0BBD52:
#data 0x000b
#data 0x6EF6
;----------------------------------------------

loc_8C0BBD56:
#data 0xE021
#data 0x2338034c
#data 0x84448904
#data 0x80447001
#data 0x8056E002

#align4
loc_8C0BBD68:
#data 0x0009000b
;----------------------------------------------

loc_8C0BBD6C:
mov r4,r3
mov.l @(loc_8C0BBD9C,pc),r1 ; r1 set to 0x8C159F30
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BBD7E:
mov r4,r3
mov.l @(loc_8C0BBDA0,pc),r1 ; r1 set to 0x8C159F3c
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BBD90:
#data 0x01C8
#data 0x02A4
#data 0x00000080

#align4
loc_8C0BBD98:
#data bank04.loc_8c04CC1c

loc_8C0BBD9C:
#data bank15.loc_8c159f30

loc_8C0BBDA0:
#data bank15.loc_8c159f3c


loc_8C0BBDA4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0BBEBA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BBEBA,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BBEC4,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BBEBC,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0BBEBE,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14)
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
mov.w @(loc_8C0BBEC0,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0BBEC8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x02,r3 ; r3 set to 0x02
mov 0x14,r5 ; r5 set to 0x14
mov.b r2,@(r0,r14)
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14)
mov 0x03,r6 ; r6 set to 0x03
mov.l @(loc_8C0BBECC,pc),r3 ; r3 set to 0x8C034E8c
jsr @r3
mov r14,r4
mova @(loc_8C0BBED0,pc),r0  ; r0 set to 0x8C0BBED0
fmov.s @r0,fr3 ; r3 ??	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr3,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fldi0 fr3
fmov.s fr3,@(r0,r14)
mova @(loc_8C0BBED4,pc),r0  ; r0 set to 0x8C0BBED4
fmov.s @r0,fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0BBEC2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0BBE3a
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fmov.s @(r0,r14),fr3
bra loc_8C0BBE4a
fadd fr3,fr2

loc_8C0BBE3A:
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fmov.s @(r0,r14),fr3
fsub fr3,fr2

loc_8C0BBE4A:
fmov.s fr2,@(r0,r14)
mova @(loc_8C0BBED8,pc),r0  ; r0 set to 0x8C0BBED8, r0 init to 0x8C0BBED8
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BBE60:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l r14,@-r15
mov 0x34,r0 ; r0 set to 0x34
mov.l r13,@-r15
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l r12,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov.l @(0x14,r4),r12
fadd fr3,fr2
fldi0 fr3
fmov.s fr2,@(r0,r4)
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr2
fcmp/gt fr3,fr2
bf loc_8C0BBE92
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x68,r0 ; r0 set to 0x68
fmov.s @r1,fr2
fmov.s @(r0,r4),fr1
bra loc_8C0BBE9e
fadd fr2,fr1

loc_8C0BBE92:
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x68,r0 ; r0 set to 0x68
fmov.s @r1,fr2
fmov.s @(r0,r4),fr1
fsub fr2,fr1

loc_8C0BBE9E:
fmov.s fr1,@(r0,r4)
mova @(loc_8C0BBEE8,pc),r0  ; r0 set to 0x8C0BBEE8, r0 init to 0x8C0BBEE8
fmov.s @r0,fr6
mova @(loc_8C0BBEEC,pc),r0  ; r0 set to 0x8C0BBEEC, r0 set to 0x8C0BBEEc
fmov.s @r0,fr5
mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00
mov.l @(loc_8C0BBEE4,pc),r1 ; r1 set to 0x200000, r1 set to 0x200000
mova @(loc_8C0BBED0,pc),r0  ; r0 set to 0x8C0BBED0, r0 set to 0x8C0BBED0
mov.l @(loc_8C0BBEDC,pc),r9 ; r9 set to 0x880000, r9 set to 0x880000
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
mov.l @(loc_8C0BBEE0,pc),r10 ; r10 set to 0xFF780000, r10 set to 0xFF780000
mov r13,r14 ; r14 set to 0x00, r14 set to 0x00
bra loc_8C0BBF4e
fmov.s @r0,fr4

loc_8C0BBEBA:
#data 0x00Dc

loc_8C0BBEBC:
#data 0x00C0

loc_8C0BBEBE:
#data 0x012c

loc_8C0BBEC0:
#data 0x01A3

loc_8C0BBEC2:
#data 0x0130

#align4
loc_8C0BBEC4:
#data bank12.loc_8c129560

loc_8C0BBEC8:
#data bank12.loc_8c1294C8

loc_8C0BBECC:
#data bank03.loc_8c034e8c

loc_8C0BBED0:
#data 0x42555555

#align4
loc_8C0BBED4:
#data 0x432D5555

#align4
loc_8C0BBED8:
#data 0x430F9249

#align4
loc_8C0BBEDC:
#data 0x00880000

#align4
loc_8C0BBEE0:
#data 0xFF780000

#align4
loc_8C0BBEE4:
#data 0x00200000

#align4
loc_8C0BBEE8:
#data 0x3FD55555

#align4
loc_8C0BBEEC:
#data 0x47800000

#align4
loc_8c0bbef0:
mov 0x21,r0
mov.b @(r0,r12),r2
tst r2,r2
bt/s loc_8c0bbefc
mov r13,r6
mov r1,r6

loc_8c0bbefc:
mov.w @(loc_8C0BBFFA,pc),r0
mov.w @(r0,r4),r3
tst r3,r3
bf loc_8c0bbf06
neg r6,r6

loc_8c0bbf06:
lds r6,fpul 
mov 0x34,r0
fmov.s @(r0,r4),fr2
float fpul,fr3
fmul fr6,fr3
fdiv fr5,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r12) 
mov 0x68,r0
fmov.s @(r0,r4),fr3
fcmp/gt fr3,fr4
bf loc_8c0bbf22
bra loc_8c0bbf4e
mov r7,r14

loc_8c0bbf22:
fcmp/eq fr4,fr3
bf loc_8c0bbf30
mov.b @(0x05,r4),r0 
mov r7,r14
add 0x01,r0
bra loc_8c0bbf4e
mov.b r0,@(0x05,r4) 

loc_8c0bbf30:
fmov.s fr4,@(r0,r4) 
mov.w @(loc_8C0BBFFA,pc),r0
mov.w @(r0,r4),r3
tst r3,r3
bf/s loc_8c0bbf3e
mov r9,r6
mov r10,r6

loc_8c0bbf3e:
lds r6,fpul 
mov 0x34,r0
fmov.s @(r0,r5),fr2
float fpul,fr3
fmul fr6,fr3
fdiv fr5,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 

loc_8C0BBF4E:
tst r14,r14
bt loc_8C0BBEF0
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BBF5E:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43904a
#data 0x2F526453
#data 0x7004044e
#data 0x7031054e
#data 0x2338034c
#data 0x84558B0a
#data 0x8802600c
#data 0x84E58906
#data 0x80E57001
#data 0x64E3BDFc
#data 0x8B0D2008

#align4
loc_8C0BBF90:
#data 0x64E3E021
#data 0x630302Ec
#data 0x223B735f
#data 0xE0030E24
#data 0x65F280E5
#data 0x4F267F04
#data 0x6EF6A089

#align4
loc_8C0BBFAC:
#data 0x4F267F04
#data 0x6EF6000b
;----------------------------------------------

#align4
loc_8C0BBFB4:
#data 0x9222E021
#data 0x633C034c
#data 0x8F033323
#data 0x84455645
#data 0x80457001

#align4
loc_8C0BBFC8:
#data 0x036CE021
#data 0x8D012338
#data 0x9515E500

#align4
loc_8C0BBFD4:
#data 0x036D9011
#data 0x8B002338
#data 0x655b

loc_8C0BBFDE:
#data 0x655f
#data 0xC708455a
#data 0xC708F208
#data 0xE034F108
#data 0xF046F32d
#data 0xF313F322
#data 0x000BF030
#data 0xF607
loc_8c0bbffa:
#data 0x0130
#data 0x008001C8
#data 0x00002000
#data 0x3FD55555
#data 0x43800000


loc_8C0BC00C:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(0x14,r4),r5
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fsub fr3,fr2
fldi0 fr3
fmov.s fr2,@(r0,r4)
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr2
fcmp/gt fr3,fr2
bf loc_8C0BC034
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x68,r0 ; r0 set to 0x68
fmov.s @r1,fr2
fmov.s @(r0,r4),fr1
bra loc_8C0BC040
fsub fr2,fr1

loc_8C0BC034:
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x68,r0 ; r0 set to 0x68
fmov.s @r1,fr2
fmov.s @(r0,r4),fr1
fadd fr2,fr1

loc_8C0BC040:
fmov.s fr1,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s @(r0,r4),fr2
fldi0 fr3
fcmp/gt fr2,fr3
bf/s loc_8C0BC066
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
mov.b @(0x04,r4),r0
add 0x01,r0 ; r0 set to 0x69, r0 set to 0x69
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BC120,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r6,@(r0,r4)
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r5),r2
mov r0,r3 ; r3 set to 0x21, r3 set to 0x21
add 0x5F,r3 ; r3 set to 0x80, r3 set to 0x80
or r3,r2
rts
mov.b r2,@(r0,r5)
;----------------------------------------------

loc_8c0bc066:
mov 0x21,r0
mov.b @(r0,r5),r1
tst r1,r1
bt loc_8c0bc070
mov.w @(loc_8C0BC122,pc),r6

loc_8c0bc070:
mov.w @(loc_8C0BC124,pc),r0
mov.w @(r0,r5),r3
tst r3,r3
bf loc_8c0bc07a
neg r6,r6

loc_8c0bc07a:
exts.w r6,r6
lds r6,fpul 
mova @(loc_8C0BC130,pc),r0 
fmov.s @r0,fr2
mova @(loc_8C0BC134,pc),r0 
fmov.s @r0,fr1
mov 0x34,r0
float fpul,fr3
fmov.s @(r0,r4),fr0
fmul fr2,fr3
fdiv fr1,fr3
fadd fr3,fr0
fmov.s fr0,@(r0,r5) 
rts 
nop 

loc_8C0BC098:
mov r4,r3
mov.l @(loc_8C0BC138,pc),r1 ; r1 set to 0x8C159F4c
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BC0AA:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BC120,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0BC0B8:
mov.l @(loc_8C0BC13C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BC0BE:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov.w @(loc_8C0BC126,pc),r0 ; r0 set to 0x1C8
mov r5,r13
mov.l r4,@r15
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.w @(loc_8C0BC128,pc),r4 ; r4 set to 0x2A4
mov 0x49,r5 ; r5 set to 0x49
mov.l @(r0,r13),r14
mov 0x1B,r0 ; r0 set to 0x1b
add r13,r4 ; r4 ??? bc r13 is ???	
mov.b r3,@(r0,r4)
mov.l @(loc_8C0BC140,pc),r3 ; r3 set to 0x8C04223a
jsr @r3
mov.l @r15,r4
mov.w @(loc_8C0BC12A,pc),r0 ; r0 set to 0x1B4
mov 0x01,r3 ; r3 set to 0x01
mov 0x02,r2 ; r2 set to 0x02
mov r15,r5 ; r5 ??? bc r15 is ???	
mov.l r13,@(r0,r14)
add 0x42,r0 ; r0 set to 0x1F6
mov.b r3,@(r0,r14)
add 0x03,r0 ; r0 set to 0x1F9
mov.b r2,@(r0,r14)
add 0xA8,r0 ; r0 set to 0x1A1
mov 0x23,r3 ; r3 set to 0x23
mov.w @(loc_8C0BC12C,pc),r7 ; r7 set to 0x89
mov.b r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
mov 0x04,r0 ; r0 set to 0x04
add 0x04,r5
fmov.s fr3,@(r0,r15)
mov 0x38,r0 ; r0 set to 0x38
mov.l @r15,r3
mov 0x01,r6 ; r6 set to 0x01
fmov.s @(r0,r3),fr3
mov 0x08,r0 ; r0 set to 0x08
mov.l @(loc_8C0BC144,pc),r3 ; r3 set to 0x8C10235c
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4
add 0x10,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BC120:
#data 0x012c
loc_8c0bc122:
#data 0x2000
loc_8c0bc124:
#data 0x0130

loc_8C0BC126:
#data 0x01C8

loc_8C0BC128:
#data 0x02A4

loc_8C0BC12A:
#data 0x01B4

loc_8C0BC12C:
#data 0x0089
#data 0x0000
loc_8c0bc130:
#data 0x3FD55555
loc_8c0bc134:
#data 0x43800000

#align4
loc_8C0BC138:
#data bank15.loc_8c159f4c

loc_8C0BC13C:
#data bank04.loc_8c0450C0

loc_8C0BC140:
#data bank04.loc_8c04223a

loc_8C0BC144:
#data bank10.loc_8c10235c

loc_8C0BC148:
#data 0xEE002FE6
#data 0x6D432FD6
#data 0x2FB62FC6
#data 0x2FA6EB08
#data 0x2F96EA04
#data 0x9C8E4F22
#data 0xD94a

loc_8C0BC162:
#data 0xE504
#data 0x490BE600
#data 0x20086463
#data 0x64038D0c
#data 0xD2479586
#data 0x1424354c
#data 0x84D114D6
#data 0xE0218041
#data 0xE02604E4
#data 0x25A004C5

#align4
loc_8C0BC188:
#data 0x3EB37E01
#data 0x60438BE9
#data 0x4F260009
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;----------------------------------------------

loc_8C0BC1A2:
mov.w @(loc_8C0BC282,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov r14,r4
mov.b r3,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.l @(loc_8C0BC294,pc),r1 ; r1 set to 0x8C15ACB4
mov.b r2,@(r0,r14)
mov.b @(0x04,r14),r0
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0BC1C4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0BC284,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BC284,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BC298,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BC286,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0BC282,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14)
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
mov.w @(loc_8C0BC288,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0BC29C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0BC2A0,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r13),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x08,r6 ; r6 set to 0x08
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0BC236:
mov.w @(loc_8C0BC282,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.l r14,@-r15
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.w @(loc_8C0BC280,pc),r14 ; r14 set to 0x88, r14 set to 0x88
tst r3,r3
add r4,r14 ; r14 ??? bc r4 is ???, r14 ??? bc r4 is ???	
bf/s loc_8C0BC24c
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
mov.b r6,@(r0,r4)
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BC24C:
mov.b @(0x01,r14),r0
mov.b @r14,r3
cmp/eq r0,r3
bt loc_8C0BC266
mov r6,r0
nop
mov.b r0,@(0x07,r4)
mov.b r0,@(0x06,r4)
mov.b r0,@(0x05,r4)
mov.b @r14,r0
mov.b r0,@(0x01,r14)
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BC266:
mov.b @r14,r0
mov.l @(loc_8C0BC2A4,pc),r1 ; r1 set to 0x8C15ACC4
and 0x0F,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BC278:
mov.l @(loc_8C0BC2A8,pc),r3 ; r3 set to 0x8C0BDD6e
jmp @r3
nop
#data 0x0302

loc_8C0BC280:
#data 0x0088

loc_8C0BC282:
#data 0x012c

loc_8C0BC284:
#data 0x00Dc

loc_8C0BC286:
#data 0x00C0

loc_8C0BC288:
#data 0x01A3
#data 0x0000

#align4
loc_8C0BC28C:
#data bank04.loc_8c044F12

loc_8C0BC290:
#data loc_8c0bC1A2

loc_8C0BC294:
#data bank15.loc_8c15acB4

loc_8C0BC298:
#data bank12.loc_8c129560

loc_8C0BC29C:
#data bank12.loc_8c1294C8

loc_8C0BC2A0:
#data bank03.loc_8c034C38

loc_8C0BC2A4:
#data bank15.loc_8c15acC4

loc_8C0BC2A8:
#data loc_8c0bDD6e


loc_8C0BC2AC:
mov.w @(loc_8C0BC3CA,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov r13,r5
mov.l @(loc_8C0BC3CC,pc),r3 ; r3 set to 0x8C0BDDD0
jsr @r3
mov r14,r4
mov.l @(loc_8C0BC3D0,pc),r2 ; r2 set to 0x8C0BDDD8
mov r13,r5
jsr @r2
mov r14,r4
mov.l @(loc_8C0BC3D4,pc),r3 ; r3 set to 0x8C0BDE0c
mov r13,r5
jsr @r3
mov r14,r4
mov.l @(loc_8C0BC3D8,pc),r2 ; r2 set to 0x8C0BDE90
mov r13,r5
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0BC3DC,pc),r3 ; r3 set to 0x8C0BDED4
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BC2EA:
mov.w @(loc_8C0BC3CA,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov r13,r5
mov.l @(loc_8C0BC3CC,pc),r3 ; r3 set to 0x8C0BDDD0
jsr @r3
mov r14,r4
mov.l @(loc_8C0BC3D0,pc),r2 ; r2 set to 0x8C0BDDD8
mov r13,r5
jsr @r2
mov r14,r4
mov.l @(loc_8C0BC3D4,pc),r3 ; r3 set to 0x8C0BDE0c
mov r13,r5
jsr @r3
mov r14,r4
mov.l @(loc_8C0BC3E0,pc),r2 ; r2 set to 0x8C0BDEB2
mov r13,r5
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0BC3DC,pc),r3 ; r3 set to 0x8C0BDED4
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BC328:
mov.b @(0x05,r4),r0
mov 0x04,r2 ; r2 set to 0x04
add 0x01,r0
mov.b r0,@(0x05,r4)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
extu.b r3,r3
cmp/ge r2,r3
bf loc_8C0BC2Ac
rts
nop
;----------------------------------------------

loc_8C0BC33E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BC3E4,pc),r3 ; r3 set to 0x8C0BDD6e
jsr @r3
mov r5,r13
exts.b r0,r0
tst r0,r0
bf loc_8C0BC3B0
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov 0x04,r2 ; r2 set to 0x04
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BC3B0
mov.w @(0x1C,r14),r0
tst r0,r0
bf loc_8C0BC3Aa
mov.w @(0x1E,r14),r0
add 0xFF,r0 ; r0 set to 0x20
mov.w r0,@(0x1E,r14)
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0BC37c
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BC2Ac
mov.l @r15+,r14

loc_8C0BC37C:
mov.l @(loc_8C0BC3E8,pc),r2 ; r2 set to 0x8C034D8c
jsr @r2
mov r14,r4
mov 0x5C,r0 ; r0 set to 0x5c
mov r13,r5
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???	
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BC3EC,pc),r3 ; r3 set to 0x8C0BDDA6
fadd fr3,fr2
mov r14,r4
fmov.s fr2,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c0bc3aa:
mov.w @(0x1C,r14),r0 
add 0xFF,r0
mov.w r0,@(0x1C,r14) 

loc_8C0BC3B0:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BC3B8:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C0BC3F0,pc),r1 ; r1 set to 0x8C15ACFc
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BC3CA:
#data 0x012c

#align4
loc_8C0BC3CC:
#data loc_8c0bDDD0

loc_8C0BC3D0:
#data loc_8c0bDDD8

loc_8C0BC3D4:
#data loc_8c0bDE0c

loc_8C0BC3D8:
#data loc_8c0bDE90

loc_8C0BC3DC:
#data loc_8c0bDED4

loc_8C0BC3E0:
#data loc_8c0bDEB2

loc_8C0BC3E4:
#data loc_8c0bDD6e

loc_8C0BC3E8:
#data bank03.loc_8c034D8c

loc_8C0BC3EC:
#data loc_8c0bDDA6

loc_8C0BC3F0:
#data bank15.loc_8c15acFc

loc_8C0BC3F4:
#data 0x6E432FE6
#data 0xE2042FD6
#data 0x6C532FC6
#data 0x84E54F22
#data 0x70019D9d
#data 0xE02180E5
#data 0x633C03Ec
#data 0x8D6E3323
#data 0xD24C3DEc
#data 0x420B65C3
#data 0x909164E3
#data 0x03CDD44b
#data 0xE0340E35
#data 0xFE37F3C6
#data 0xF3C6E038
#data 0xC746FE37
#data 0xE021F408
#data 0xC74603Ec
#data 0xE018F208
#data 0x4308633c
#data 0x334C4308
#data 0x42186231
#data 0xF32D425a
#data 0xF343F322
#data 0xE021FD37
#data 0x633C03Ec
#data 0x43084308
#data 0x8531334c
#data 0x405A4018
#data 0xF108C73b
#data 0xF32DE01c
#data 0xF343F312
#data 0xE021FD37
#data 0x600C00Ec
#data 0x40084008
#data 0x8502304c
#data 0xE02181D2
#data 0x633C03Ec
#data 0x43084308
#data 0x5232334c
#data 0x00EC1D22
#data 0x4008600c
#data 0x304C4008
#data 0x81D68506
#data 0x00ECE021
#data 0x4008600c
#data 0x304C4008
#data 0x81D78507
#data 0x03ED9046
#data 0x8B032338
#data 0xF3D6E018
#data 0xFD37F34d

#align4
loc_8C0BC4C4:
#data 0xD325E118
#data 0x64E331Dc
#data 0xF318E034
#data 0xE11CF2E6
#data 0xF23031Dc
#data 0xE51BE608
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x6CF64F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0BC4F2:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BC4FC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
sts.l pr,@-r15
mov.w @(loc_8C0BC542,pc),r13 ; r13 set to 0x88
mov.l @(loc_8C0BC560,pc),r3 ; r3 set to 0x8C0BDD6e
jsr @r3
add r14,r13 ; r13 ??? bc r14 is ???	
exts.b r0,r0
tst r0,r0
bt loc_8C0BC564
mov.b @(0x05,r12),r0
tst r0,r0
bt loc_8C0BC520
bra loc_8C0BC650
nop

loc_8C0BC520:
mov.w @(loc_8C0BC546,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r12),r2
tst r2,r2
bt loc_8C0BC52c
bra loc_8C0BC650
nop

loc_8C0BC52C:
mov r12,r5
mov 0x03,r1 ; r1 set to 0x03
mov.b r1,@r13
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x05,r14)
mov r14,r4
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0BC7Be
mov.l @r15+,r14

loc_8C0BC542:
#data 0x0088
#data 0x0130

loc_8C0BC546:
#data 0x01D0

#align4
loc_8C0BC548:
#data loc_8c0bDDD0
#data 0x43800000

#align4
loc_8C0BC550:
#data bank15.loc_8c15ad04
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BC55C:
#data bank03.loc_8c034C38

loc_8C0BC560:
#data loc_8c0bDD6e

loc_8c0bc564:
mov 0x21,r0
mov.b @(r0,r14),r2
mov 0x04,r3
extu.b r2,r2
cmp/ge r3,r2
bt loc_8c0bc650
mov.w @(0x04,r13),r0 
mov.l @(0x08,r13),r4
shll2 r0
shll r0
add r0,r4
mov.w @(0x02,r4),r0 
mov r0,r5
exts.w r5,r3
tst r3,r3
bf/s loc_8c0bc5b2
mov.w @r4,r6
mova @(loc_8C0BC670,pc),r0 
fmov.s @r0,fr3
mov.w @(loc_8C0BC66C,pc),r0
fmov.s @(r0,r12),fr2
mov 0x38,r0
fmov.s @(r0,r14),fr1
fadd fr3,fr2
fcmp/gt fr2,fr1
bf loc_8c0bc59c
mov 0xFF,r0
mov.b r0,@(0x03,r13) 

loc_8c0bc59c:
mova @(loc_8C0BC674,pc),r0 
fmov.s @r0,fr3
mov.w @(loc_8C0BC66C,pc),r0
fmov.s @(r0,r12),fr2
mov 0x38,r0
fmov.s @(r0,r14),fr1
fadd fr3,fr2
fcmp/gt fr1,fr2
bf loc_8c0bc5b2
mov 0x00,r0
mov.b r0,@(0x03,r13) 

loc_8c0bc5b2:
mov.b @(0x03,r13),r0 
tst r0,r0
bt loc_8c0bc5ba
neg r5,r5

loc_8c0bc5ba:
mov.w @(loc_8C0BC66E,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8c0bc5c4
neg r6,r6

loc_8c0bc5c4:
exts.w r6,r6
shll8 r6
lds r6,fpul 
mova @(loc_8C0BC678,pc),r0 
fmov.s @r0,fr5
mova @(loc_8C0BC67C,pc),r0 
fmov.s @r0,fr2
mov 0x34,r0
float fpul,fr3
fmov.s @(r0,r12),fr1
mov 0x18,r0
exts.w r5,r5
shll8 r5
lds r5,fpul 
mov 0x02,r2
fmul fr2,fr3
fdiv fr5,fr3
fadd fr3,fr1
fmov.s @(r0,r13),fr3
mov 0x34,r0
fadd fr3,fr1
float fpul,fr3
fmov.s fr1,@(r0,r14) 
mova @(loc_8C0BC680,pc),r0 
fmov.s @r0,fr1
mov 0x21,r0
mov.b @(r0,r14),r3
fmul fr1,fr3
extu.b r3,r3
cmp/ge r2,r3
fmov fr3,fr4
bt/s loc_8c0bc616
fdiv fr5,fr4
mov 0x38,r0
fmov.s @(r0,r12),fr3
mov 0x1C,r0
fmov.s @(r0,r13),fr0
fadd fr4,fr3
fadd fr0,fr3
bra loc_8c0bc61c
mov 0x38,r0

loc_8c0bc616:
mov 0x38,r0
fmov.s @(r0,r14),fr3
fadd fr4,fr3

loc_8c0bc61c:
fmov.s fr3,@(r0,r14) 
mov.w @(0x04,r4),r0 
mov r0,r3
mov 0x31,r0
mov.b r3,@(r0,r14) 
mov.w @(0x0C,r13),r0 
mov r0,r3
mov.w @(0x04,r13),r0 
add r3,r0
mov.w r0,@(0x04,r13) 
mov.w @(0x0E,r13),r0 
mov r0,r3
mov.w @(0x04,r13),r0 
and r3,r0
mov.l @(loc_8c0bc684,pc),r3
mov.w r0,@(0x04,r13) 
jsr @r3
mov r14,r4
lds.l @r15+,pr 
mov r12,r5
mov.l @(loc_8c0bc688,pc),r2
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0BC650:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BC65A:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C0BC68C,pc),r1 ; r1 set to 0x8C15AD44
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
loc_8c0bc66c:
#data 0x041c
loc_8c0bc66e:
#data 0x0130
loc_8c0bc670:
#data 0x42F00000
loc_8c0bc674:
#data 0x424DB6Db
loc_8c0bc678:
#data 0x43800000
loc_8c0bc67c:
#data 0x3FD55555
loc_8c0bc680:
#data 0x40092492

#align4
loc_8C0BC684:
#data bank03.loc_8c034D8c

loc_8C0BC688:
#data loc_8c0bDDA6

loc_8C0BC68C:
#data bank15.loc_8c15ad44

loc_8c0bc690:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0 
mov.w @(loc_8C0BC7D0,pc),r4
tst r0,r0
bf/s loc_8c0bc6b6
add r14,r4
mov.w @(loc_8C0BC7D2,pc),r0
mov.b @(r0,r13),r2
tst r2,r2
bf loc_8c0bc6b6
mov.w @(loc_8C0BC7D4,pc),r1
add r13,r1
mov.b @(0x01,r1),r0 
tst r0,r0
bf loc_8c0bc6c6

loc_8c0bc6b6:
mov r13,r5
mov 0x01,r3
mov.b r3,@r4
mov r14,r4
lds.l @r15+,pr 
mov.l @r15+,r13
bra loc_8c0bc2ac
mov.l @r15+,r14

loc_8c0bc6c6:
mov 0x21,r0
mov.b @(r0,r14),r3
mov 0x04,r2
extu.b r3,r3
cmp/ge r2,r3
bt loc_8c0bc6e6
mov.l @(loc_8c0bc7d8,pc),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr 
mov r13,r5
mov.l @(loc_8c0bc7dc,pc),r3
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c0bc6e6:
lds.l @r15+,pr 
mov.l @r15+,r13
rts 
mov.l @r15+,r14

loc_8C0BC6EE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x04,r2 ; r2 set to 0x04
sts.l pr,@-r15
mov.b @(0x05,r14),r0
add 0x01,r0
mov.b r0,@(0x05,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt/s loc_8C0BC7B6
mov r5,r13
mov.l @(loc_8C0BC7E0,pc),r2 ; r2 set to 0x8C0BDDD0
mov r13,r5
jsr @r2
mov r14,r4
mov.w @(loc_8C0BC7D6,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0BC7E8,pc),r5 ; r5 set to 0x8C15AD4c
mov.w @(r0,r13),r3
mov.w r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
mov 0x02,r3 ; r3 set to 0x02
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14)
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14)
mova @(loc_8C0BC7E4,pc),r0  ; r0 set to 0x8C0BC7E4
fmov.s @r0,fr5 ; r5 ??	
mova @(loc_8C0BC7EC,pc),r0  ; r0 set to 0x8C0BC7Ec
fmov.s @r0,fr4
mov.w @(loc_8C0BC7D6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0BC75c
mov r5,r4
mov 0x21,r3 ; r3 set to 0x21
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
extu.b r3,r3
shll2 r3
add r3,r4
mov.w @r4,r3
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
bra loc_8C0BC778
fsub fr3,fr2

loc_8C0BC75C:
mov 0x21,r2 ; r2 set to 0x21
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @r2,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r2,r2
shll2 r2
add r2,r4
mov.w @r4,r3
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fadd fr3,fr2

loc_8C0BC778:
mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
fmov.s fr2,@(r0,r14)
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x38,r2 ; r2 set to 0x38, r2 set to 0x38
add r14,r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
extu.b r3,r3
fmov.s @r2,fr1
shll2 r3
add r3,r5
mov.w @(0x02,r5),r0
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x08,r6 ; r6 set to 0x08, r6 set to 0x08
mov r0,r3 ; r3 set to 0x34
lds r3,fpul
mova @(loc_8C0BC7F0,pc),r0  ; r0 set to 0x8C0BC7F0, r0 init to 0x8C0BC7F0
mov.l @(loc_8C0BC7F4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s @r0,fr2
float fpul,fr3
fmul fr2,fr3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
fdiv fr4,fr3
fadd fr3,fr1
fmov.s fr1,@r2
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BC690
mov.l @r15+,r14

loc_8C0BC7B6:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BC7BE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C0BC7F8,pc),r1 ; r1 set to 0x8C15AD5c
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
loc_8c0bc7d0:
#data 0x0088
loc_8c0bc7d2:
#data 0x01D0
loc_8c0bc7d4:
#data 0x0150

loc_8C0BC7D6:
#data 0x0130

#align4
loc_8C0BC7D8:
#data bank03.loc_8c034D8c

loc_8C0BC7DC:
#data loc_8c0bDDA6

loc_8C0BC7E0:
#data loc_8c0bDDD0

loc_8C0BC7E4:
#data 0x3FD55555

#align4
loc_8C0BC7E8:
#data bank15.loc_8c15ad4c

loc_8C0BC7EC:
#data 0x43800000

#align4
loc_8C0BC7F0:
#data 0x40092492

#align4
loc_8C0BC7F4:
#data bank03.loc_8c034C38

loc_8C0BC7F8:
#data bank15.loc_8c15ad5c


loc_8C0BC7FC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r14),r0
mov r13,r5
mov.l @(loc_8C0BC95C,pc),r3 ; r3 set to 0x8C0BDDD0
add 0x01,r0
mov.b r0,@(0x05,r14)
jsr @r3
mov r14,r4
mov.w @(loc_8C0BC954,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0BC968,pc),r4 ; r4 set to 0x8C15AD64
mov.w @(r0,r13),r2
mov.w r2,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14)
mova @(loc_8C0BC960,pc),r0  ; r0 set to 0x8C0BC960
fmov.s @r0,fr5
mova @(loc_8C0BC964,pc),r0  ; r0 set to 0x8C0BC964
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0BC954,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0BC85e
mov r4,r5
mov 0x21,r3 ; r3 set to 0x21
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r3,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r3,r5
mov.w @r5,r3
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
bra loc_8C0BC880
fadd fr3,fr2

loc_8C0BC85E:
mov 0x21,r2 ; r2 set to 0x21
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @r2,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r2,r2
mov r2,r3
shll2 r3
shll r2
add r3,r2
add r2,r5
mov.w @r5,r3
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fsub fr3,fr2

loc_8C0BC880:
mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
fmov.s fr2,@(r0,r14)
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x38,r1 ; r1 set to 0x38, r1 set to 0x38
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
extu.b r3,r3
fmov.s @r1,fr1
mov r3,r2
shll r3
shll2 r2
add r2,r3
add r4,r3
mov.w @(0x02,r3),r0
mov r0,r3 ; r3 set to 0x34
lds r3,fpul
mova @(loc_8C0BC96C,pc),r0  ; r0 set to 0x8C0BC96C, r0 init to 0x8C0BC96c
fmov.s @r0,fr2
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
float fpul,fr3
fmul fr2,fr3 ; r3 ??? bc r2 is ???	
fdiv fr4,fr3
fadd fr3,fr1
fmov.s fr1,@r1
mov.b @(r0,r14),r3
mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
extu.b r3,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r3,r4
mov.l @(loc_8C0BC970,pc),r3 ; r3 set to 0x8C11E730, r3 set to 0x8C11E730
jsr @r3
mov.b r4,@(r0,r14)
lds.l @r15+,pr
mov 0x03,r7 ; r7 set to 0x03, r7 set to 0x03
mov.l @(loc_8C0BC974,pc),r2 ; r2 set to 0x8C034CD6, r2 set to 0x8C034CD6
mov r14,r4
and r0,r7 ; r7 ??, r7 ??	
mov.l @r15+,r13
mov 0x08,r6 ; r6 set to 0x08, r6 set to 0x08
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
jmp @r2
mov.l @r15+,r14

loc_8C0BC8DA:
mov.w @(loc_8C0BC956,pc),r5 ; r5 set to 0x88
mov 0x10,r1 ; r1 set to 0x10
mov 0x68,r0 ; r0 set to 0x68
add r4,r5 ; r5 ??? bc r4 is ???	
fmov.s @(r0,r4),fr2
add r5,r1 ; r1 ??? bc r5 is ???	
fmov.s @r1,fr3
mov 0x68,r1 ; r1 set to 0x68
add r4,r1 ; r1 ??? bc r4 is ???	
fsub fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr2
mov 0x14,r1 ; r1 set to 0x14
add r5,r1 ; r1 ??? bc r5 is ???	
fadd fr3,fr2
fmov.s @(r0,r4),fr3
fadd fr2,fr3
fmov.s fr3,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r4,r1 ; r1 ??? bc r4 is ???	
fsub fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr2
fadd fr3,fr2
fmov.s @(r0,r4),fr3
fadd fr2,fr3
rts
fmov.s fr3,@(r0,r4)
;----------------------------------------------

loc_8C0BC928:
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8C0BC958,pc),r0 ; r0 set to 0x141
mov r5,r3
mov.l r4,@r15
mov.l r5,@(0x04,r15)
mov.b @(r0,r3),r2
tst r2,r2
bt loc_8C0BC94c
mov.l @(loc_8C0BC978,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l @r15,r4
mov.l @r15,r4
mov.l @(0x04,r15),r5
add 0x08,r15
mov.l @(loc_8C0BC97C,pc),r3 ; r3 set to 0x8C0BDDA6
jmp @r3
lds.l @r15+,pr

loc_8C0BC94C:
add 0x08,r15
lds.l @r15+,pr
rts
nop
;----------------------------------------------

loc_8C0BC954:
#data 0x0130

loc_8C0BC956:
#data 0x0088

loc_8C0BC958:
#data 0x0141
#data 0x0000

#align4
loc_8C0BC95C:
#data loc_8c0bDDD0

loc_8C0BC960:
#data 0x3FD55555

#align4
loc_8C0BC964:
#data 0x43800000

#align4
loc_8C0BC968:
#data bank15.loc_8c15ad64

loc_8C0BC96C:
#data 0x40092492

#align4
loc_8C0BC970:
#data bank11.loc_8c11e730

loc_8C0BC974:
#data bank03.loc_8c034CD6

loc_8C0BC978:
#data bank03.loc_8c034D8c

loc_8C0BC97C:
#data loc_8c0bDDA6

loc_8C0BC980:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x85EE2F52
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B022008
#data 0x700184E6
#data 0x80E6

loc_8C0BC99E:
#data 0x65F2
#data 0x64E3BF9b
#data 0x420BD24e
#data 0x65F264E3
#data 0x7F0464E3
#data 0xD34C4F26
#data 0x6EF6432b


loc_8C0BC9B8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BCAD8,pc),r0 ; r0 set to 0x141
mov.l r13,@-r15
mov r5,r13
mov.l r11,@-r15
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov.w @(loc_8C0BCAD6,pc),r6 ; r6 set to 0x88
tst r3,r3
bf/s loc_8C0BC9E6
add r14,r6 ; r6 ??? bc r14 is ???	
mov.l @(loc_8C0BCAE0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov r13,r5
mov.l @(loc_8C0BCAE4,pc),r2 ; r2 set to 0x8C0BDDA6
mov r14,r4
mov.l @r15+,r11
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c0bc9e6:
mov.b @(0x06,r14),r0 
mov.l @(loc_8c0bcae8,pc),r11
add 0x01,r0
mov.b r0,@(0x06,r14) 
mov 0x34,r0
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 
mov 0x38,r0
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 
mov 0x21,r0
mov.b @(r0,r14),r5
mova @(loc_8C0BCAEC,pc),r0 
fmov.s @r0,fr5
mova @(loc_8C0BCAF0,pc),r0 
extu.b r5,r5
fmov.s @r0,fr4
mov r5,r3
shll r5
add r3,r5
shll2 r5
shll r5
add r11,r5
mov.l @(0x04,r5),r3
mov 0x60,r0
mov.l @r5,r4
lds r3,fpul 
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14) 
mov 0x21,r0
mov.b @(r0,r14),r1
mov 0x6C,r0
extu.b r1,r1
mov r1,r3
shll r1
add r3,r1
shll2 r1
shll r1
add r11,r1
mov.l @(0x10,r1),r2
mov.l @(0x08,r1),r7
lds r2,fpul 
mov.l @(0x0C,r1),r5
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14) 
mov 0x21,r0
mov.b @(r0,r14),r3
mov 0x14,r0
extu.b r3,r3
mov r3,r2
shll r3
add r2,r3
shll2 r3
shll r3
add r3,r11
mov.l @(0x14,r11),r3
lds r3,fpul 
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r6) 
mov.w @(loc_8C0BCADA,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8c0bca76
neg r5,r5
neg r7,r7
neg r4,r4

loc_8c0bca76:
lds r4,fpul 
mova @(loc_8C0BCAF4,pc),r0 
fmov.s @r0,fr5
mov 0x5C,r0
mov r14,r4
float fpul,fr3
lds r7,fpul 
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14) 
float fpul,fr3
lds r5,fpul 
mov 0x68,r0
mov r13,r5
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14) 
float fpul,fr3
mov 0x10,r0
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r6) 
mov 0x1E,r0
mov.w r0,@(0x1C,r14) 
lds.l @r15+,pr 
mov.l @r15+,r11
mov.l @r15+,r13
bra loc_8c0bc980
mov.l @r15+,r14

loc_8C0BCAB0:
mov.w @(loc_8C0BCADC,pc),r0 ; r0 set to 0x159
mov.l r14,@-r15
mov r4,r14
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
mov.w @(loc_8C0BCAD6,pc),r4 ; r4 set to 0x88
extu.b r0,r0
cmp/eq 0x12,r0
bt/s loc_8C0BCAFc
add r14,r4 ; r4 ??? bc r14 is ???	
mov 0x01,r3 ; r3 set to 0x01
mov.l @(loc_8C0BCAF8,pc),r2 ; r2 set to 0x8C0BDDD8
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x07,r14)
mov.b r0,@(0x06,r14)
mov.b r0,@(0x05,r14)
mov.b r3,@r4
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0BCAD6:
#data 0x0088

loc_8C0BCAD8:
#data 0x0141
loc_8c0bcada:
#data 0x0130

loc_8C0BCADC:
#data 0x0159
#data 0x0000

#align4
loc_8C0BCAE0:
#data bank03.loc_8c034D8c

loc_8C0BCAE4:
#data loc_8c0bDDA6

loc_8C0BCAE8:
#data bank15.loc_8c15a85c
loc_8c0bcaec:
#data 0x40092492
loc_8c0bcaf0:
#data 0x47800000
loc_8c0bcaf4:
#data 0x3FD55555

#align4
loc_8C0BCAF8:
#data loc_8c0bDDD8


loc_8C0BCAFC:
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(loc_8C0BCC04,pc),r1 ; r1 set to 0x8C15AD94
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BCB0C:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C0BCC08,pc),r1 ; r1 set to 0x8C15ADA0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BCB1E:
mov.b @(0x05,r4),r0
mov 0x04,r2 ; r2 set to 0x04
add 0x01,r0
mov.b r0,@(0x05,r4)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BCB34
bra loc_8C0BC2Ea
nop

loc_8C0BCB34:
rts
nop
;----------------------------------------------

loc_8C0BCB38:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BCC0C,pc),r3 ; r3 set to 0x8C0BDD6e
jsr @r3
mov r5,r13
exts.b r0,r0
tst r0,r0
bf loc_8C0BCBAc
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov 0x04,r2 ; r2 set to 0x04
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BCBAc
mov.w @(0x1C,r14),r0
tst r0,r0
bt loc_8C0BCB66
mov.w @(0x1C,r14),r0
add 0xFF,r0 ; r0 set to 0x20
bra loc_8C0BCBAc
mov.w r0,@(0x1C,r14)

loc_8C0BCB66:
mov.w @(0x1E,r14),r0
add 0xFF,r0
mov.w r0,@(0x1E,r14)
exts.w r0,r0
tst r0,r0
bf loc_8C0BCB7e
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BC2Ea
mov.l @r15+,r14

loc_8C0BCB7E:
mov.l @(loc_8C0BCC10,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
mov 0x5C,r0 ; r0 set to 0x5c
mov r13,r5
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BCC14,pc),r3 ; r3 set to 0x8C0BDDA6
fadd fr3,fr2
mov r14,r4
fmov.s fr2,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BCBAC:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BCBB4:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C0BCC18,pc),r1 ; r1 set to 0x8C15ADA8
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BCBC6:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0
mov 0x04,r2 ; r2 set to 0x04
add 0x01,r0
mov.b r0,@(0x05,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BCBFc
mov.l @(loc_8C0BCC1C,pc),r2 ; r2 set to 0x8C0BDDD0
jsr @r2
mov r14,r4
mov.l @(loc_8C0BCC20,pc),r3 ; r3 set to 0x8C11E730
jsr @r3
nop
lds.l @r15+,pr
mov.l @(loc_8C0BCC24,pc),r2 ; r2 set to 0x8C034CD6
mov 0x03,r7 ; r7 set to 0x03
mov r14,r4
and r0,r7 ; r7 ??	
mov 0x08,r6 ; r6 set to 0x08
mov 0x1B,r5 ; r5 set to 0x1b
jmp @r2
mov.l @r15+,r14

loc_8C0BCBFC:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------
#data 0x0000

#align4
loc_8C0BCC04:
#data bank15.loc_8c15ad94

loc_8C0BCC08:
#data bank15.loc_8c15adA0

loc_8C0BCC0C:
#data loc_8c0bDD6e

loc_8C0BCC10:
#data bank03.loc_8c034D8c

loc_8C0BCC14:
#data loc_8c0bDDA6

loc_8C0BCC18:
#data bank15.loc_8c15adA8

loc_8C0BCC1C:
#data loc_8c0bDDD0

loc_8C0BCC20:
#data bank11.loc_8c11e730

loc_8C0BCC24:
#data bank03.loc_8c034CD6


loc_8C0BCC28:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BCD6C,pc),r3 ; r3 set to 0x8C0BDD6e
jsr @r3
mov r5,r13
exts.b r0,r0
tst r0,r0
bt loc_8C0BCC40
bra loc_8C0BCD4c
nop

loc_8C0BCC40:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
mov 0x04,r2 ; r2 set to 0x04
extu.b r3,r3
cmp/ge r2,r3
bf loc_8C0BCC50
bra loc_8C0BCD4c
nop

#align4
loc_8c0bcc50:
mov.w @(loc_8C0BCD66,pc),r0
mov.w @(loc_8C0BCD68,pc),r3
mov.b @(r0,r13),r1
cmp/eq r3,r1
bt loc_8c0bcd4c
mov 0x34,r0
mov.l @(loc_8c0bcd74,pc),r4
fmov.s @(r0,r13),fr5
mov 0x38,r0
fmov.s @(r0,r13),fr7
mova @(loc_8C0BCD70,pc),r0 
fmov.s @r0,fr6
mov.w @(loc_8C0BCD66,pc),r0
mov.b @(r0,r13),r3
mov 0x21,r0
mov.b @(r0,r14),r1
mova @(loc_8C0BCD78,pc),r0 
mov r3,r2
shll r3
extu.b r1,r1
fmov.s @r0,fr2
add r2,r3
mov r1,r2
shll2 r3
mov.w @(loc_8C0BCD6A,pc),r0
shll2 r2
shll r3
shll r1
add r2,r1
add r4,r3
add r1,r3
mov.w @r3,r1
shll8 r1
lds r1,fpul 
float fpul,fr3
fmul fr2,fr3
fmov fr3,fr4
mov.w @(r0,r13),r3
tst r3,r3
bf/s loc_8c0bcca4
fdiv fr6,fr4
fneg fr4

loc_8c0bcca4:
fadd fr4,fr5
mov 0x34,r0
fmov.s fr5,@(r0,r14) 
mov.w @(loc_8C0BCD66,pc),r0
mov.b @(r0,r13),r3
mov 0x21,r0
mov.b @(r0,r14),r1
mov r3,r2
shll r3
extu.b r1,r1
add r2,r3
mov r1,r2
shll2 r3
shll2 r2
shll r3
shll r1
add r2,r1
add r4,r3
add r1,r3
mov.w @(0x02,r3),r0 
shll8 r0
lds r0,fpul 
mova @(loc_8C0BCD7C,pc),r0 
fmov.s @r0,fr2
mov 0x38,r0
float fpul,fr3
fmul fr2,fr3
fdiv fr6,fr3
fadd fr3,fr7
fmov.s fr7,@(r0,r14) 
mov.w @(loc_8C0BCD66,pc),r0
mov.b @(r0,r13),r3
mov 0x21,r0
mov r3,r2
mov.b @(r0,r14),r1
shll r3
add r2,r3
extu.b r1,r1
mov r1,r2
shll2 r3
shll2 r2
shll r3
shll r1
add r2,r1
add r4,r3
add r1,r3
mov.w @(loc_8C0BCD6A,pc),r1
mov.b @(0x04,r3),r0 
mov.w @(loc_8C0BCD6A,pc),r3
add r14,r1
add r13,r3
mov.w @r3,r3
xor r3,r0
mov.w r0,@r1
mov.w @(loc_8C0BCD66,pc),r0
mov.b @(r0,r13),r3
mov 0x21,r0
mov r3,r2
shll r3
add r2,r3
shll2 r3
shll r3
add r3,r4
mov.b @(r0,r14),r3
extu.b r3,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r3,r4
mov.l @(loc_8c0bcd80,pc),r3
mov 0x31,r1
mov.b @(0x05,r4),r0 
add r14,r1
mov.b r0,@r1
jsr @r3
mov r14,r4
lds.l @r15+,pr 
mov r13,r5
mov.l @(loc_8c0bcd84,pc),r2
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0BCD4C:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BCD54:
mov r4,r3
mov.l @(loc_8C0BCD88,pc),r1 ; r1 set to 0x8C15ADB0
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
loc_8c0bcd66:
#data 0x0141
loc_8c0bcd68:
#data 0x0080
loc_8c0bcd6a:
#data 0x0130

#align4
loc_8C0BCD6C:
#data loc_8c0bDD6e
loc_8c0bcd70:
#data 0x43800000

#align4
loc_8C0BCD74:
#data bank15.loc_8c15a91c
loc_8c0bcd78:
#data 0x3FD55555
loc_8c0bcd7c:
#data 0x40092492

#align4
loc_8C0BCD80:
#data bank03.loc_8c034D8c

loc_8C0BCD84:
#data loc_8c0bDDA6

loc_8C0BCD88:
#data bank15.loc_8c15adB0

loc_8C0BCD8C:
#data 0x6E432FE6
#data 0xE2042FD6
#data 0x84E54F22
#data 0x80E57001
#data 0x03ECE021
#data 0x3323633c
#data 0x6D538D55
#data 0x65D3D24c
#data 0x64E3420b
#data 0xD44C908f
#data 0x0E3503Dd
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0xF408C746
#data 0x03ECE021
#data 0xF208C746
#data 0x633CE05c
#data 0x42086233
#data 0x332C4300
#data 0x6131334c
#data 0x415A4118
#data 0xF322F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x334C332c
#data 0xE1318531
#data 0x401831Ec
#data 0xC739405a
#data 0xE060F108
#data 0xF312F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x343C332c
#data 0x21008444
#data 0x03ED9053
#data 0x8B032338
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0BCE38:
#data 0x430BD32d
#data 0x4F260009
#data 0xD22CE703
#data 0x270964E3
#data 0xE6086DF6
#data 0x422BE51b
#data 0x6EF6

loc_8C0BCE52:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;----------------------------------------------

loc_8C0BCE5A:
#data 0x2FE6
#data 0x2FD66E43
#data 0x95376D53
#data 0x84D54F22
#data 0x943435Dc
#data 0x8F042008
#data 0x845C34Ec
#data 0x32006240
#data 0x8905

loc_8C0BCE7A:
#data 0xE500
#data 0x60532450
#data 0xA0220009
#data 0x80E5

loc_8C0BCE86:
#data 0xE021
#data 0xE20403Ec
#data 0x3323633c
#data 0x9021891b
#data 0x211801Dc
#data 0x901A8917
#data 0x0E3503Dd
#data 0xF3E6E05c
#data 0xF2D6E034
#data 0xF230D313
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F2D6
#data 0x430BFE27
#data 0x4F2664E3
#data 0x64E365D3
#data 0xA76E6DF6
#data 0x6EF6

loc_8C0BCECA:
#data 0x4F26
#data 0x000B6DF6
#data 0x01306EF6
#data 0x008802A4
#data 0x0000014b

#align4
loc_8C0BCEDC:
#data loc_8c0bDDD0
#data 0x43800000

#align4
loc_8C0BCEE4:
#data bank15.loc_8c15aaB4
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BCEF0:
#data bank11.loc_8c11e730

loc_8C0BCEF4:
#data bank03.loc_8c034CD6

loc_8C0BCEF8:
#data bank03.loc_8c034D8c


loc_8C0BCEFC:
mov r4,r3
mov.l @(loc_8C0BD038,pc),r1 ; r1 set to 0x8C15ADB8
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BCF0E:
#data 0x2FE6
#data 0x2FD66E43
#data 0x6C532FC6
#data 0x65C39D8b
#data 0x84E54F22
#data 0x70013DEc
#data 0xB75380E5
#data 0x908364E3
#data 0x02CDD444
#data 0xE0340E25
#data 0xFE37F3C6
#data 0xF308C740
#data 0xF2C6E038
#data 0xFE27F230
#data 0x05ECE021
#data 0xF808C73e
#data 0x655CC73e
#data 0x6353F408
#data 0x353C4500
#data 0x45004508
#data 0x6252354c
#data 0x425A5351
#data 0x435AF22d
#data 0xF22DF52c
#data 0xF282E060
#data 0xFE27F243
#data 0x05ECE021
#data 0x655CE06c
#data 0x45006353
#data 0x4508353c
#data 0x354C4500
#data 0x53535252
#data 0xF22D425a
#data 0x5354435a
#data 0xF22DF62c
#data 0xF72C435a
#data 0xF282F22d
#data 0xFE27F243
#data 0x03ECE021
#data 0x6233633c
#data 0x332C4300
#data 0x43004308
#data 0x5345343c
#data 0x435AE014
#data 0xF282F22d
#data 0xFD27F243
#data 0x03ED9036
#data 0x8B022338
#data 0xF64DF74d
#data 0xF54d

loc_8C0BCFD2:
#data 0xC71e
#data 0xF808D31e
#data 0xF582E05c
#data 0xF782F682
#data 0xF643F543
#data 0xFE57F743
#data 0xFE67E068
#data 0xFD77E010
#data 0x430BE03c
#data 0x4F2681Ee
#data 0xD216E703
#data 0x64E3E608
#data 0x27096CF6
#data 0x6DF6E51b
#data 0x6EF6422b


loc_8C0BD00C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.w @(0x1C,r14),r0
mov.w @(loc_8C0BD032,pc),r4 ; r4 set to 0x88
add 0xFF,r0
mov.w r0,@(0x1C,r14)
add 0x01,r0
exts.w r0,r0
tst r0,r0
bt/s loc_8C0BD058
add r14,r4 ; r4 ??? bc r14 is ???	
mov r13,r5
bsr loc_8C0BC8Da
mov r14,r4
bra loc_8C0BD0Da
nop

loc_8C0BD032:
#data 0x0088
#data 0x00000130

#align4
loc_8C0BD038:
#data bank15.loc_8c15adB8
#data 0x42F00000

#align4
loc_8C0BD040:
#data bank15.loc_8c15a9F4
#data 0x40092492
#data 0x47800000
#data 0x3FD55555

#align4
loc_8C0BD050:
#data bank11.loc_8c11e730

loc_8C0BD054:
#data bank03.loc_8c034CD6

loc_8c0bd058:
mov.b @(0x05,r14),r0 
add 0x01,r0
mov.b r0,@(0x05,r14) 
mov 0x34,r0
fmov.s @(r0,r14),fr2
fmov.s @(r0,r13),fr3
mov 0x18,r0
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 
mov 0x38,r0
fmov.s @(r0,r14),fr2
fmov.s @(r0,r13),fr3
mov 0x1C,r0
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 
mov 0x34,r0
fmov.s @(r0,r14),fr3
mov 0x10,r0
fmov.s fr3,@(r0,r4) 
mov 0x38,r0
fmov.s @(r0,r14),fr3
mov 0x14,r0
fmov.s fr3,@(r0,r4) 
mova @(loc_8C0BD140,pc),r0 
fmov.s @r0,fr3
mov 0x5C,r0
fmov.s fr3,@(r0,r14) 
mova @(loc_8C0BD144,pc),r0 
fmov.s @r0,fr3
mov 0x68,r0
fmov.s fr3,@(r0,r14) 
mova @(loc_8C0BD148,pc),r0 
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r14) 
mova @(loc_8C0BD14C,pc),r0 
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14) 
mov 0x21,r0
mov.b @(r0,r14),r0
extu.b r0,r0
tst 0x02,r0 
bt loc_8c0bd0c0
mov 0x5C,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 
mov 0x68,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

loc_8c0bd0c0:
mov 0x21,r0
mov.b @(r0,r14),r0
extu.b r0,r0
tst 0x01,r0 
bt loc_8c0bd0da
mov 0x60,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 
mov 0x6C,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

loc_8C0BD0DA:
mov.l @(loc_8C0BD150,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BDDA6
mov.l @r15+,r14

loc_8C0BD0EC:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BD13C,pc),r4 ; r4 set to 0x88
mov 0x18,r0 ; r0 set to 0x18
mov.l r13,@-r15
mov r5,r13
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
fmov.s @(r0,r4),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
mov 0x10,r0 ; r0 set to 0x10
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x1C,r0 ; r0 set to 0x1c
fmov.s @(r0,r4),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr2
mov 0x14,r0 ; r0 set to 0x14
fadd fr3,fr2
fldi0 fr3
fmov.s fr2,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bf loc_8C0BD154
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
mov 0x14,r0 ; r0 set to 0x14
fmov.s @(r0,r4),fr1
fsub fr2,fr1
fcmp/gt fr1,fr3
bf loc_8C0BD174
mov 0x6C,r0 ; r0 set to 0x6c
fldi0 fr3
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0BD16c
bra loc_8C0BD174
nop

loc_8C0BD13C:
#data 0x0088
#data 0x0000
loc_8c0bd140:
#data 0x3FD55555
loc_8c0bd144:
#data 0xBDD55555
loc_8c0bd148:
#data 0xBFCDB6Db
loc_8c0bd14c:
#data 0x3D892492

#align4
loc_8C0BD150:
#data bank03.loc_8c034D8c

loc_8c0bd154:
mov 0x38,r0
fmov.s @(r0,r14),fr2
mov 0x14,r0
fmov.s @(r0,r4),fr1
fsub fr2,fr1
fcmp/gt fr3,fr1
bf loc_8c0bd174
mov 0x6C,r0
fldi0 fr3
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8c0bd174

loc_8c0bd16c:
mov 0x6C,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

loc_8c0bd174:
mov 0x5C,r0
fldi0 fr3
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8c0bd1b8
mov 0x34,r0
fmov.s @(r0,r14),fr2
mov 0x10,r0
fmov.s @(r0,r4),fr1
fsub fr2,fr1
fcmp/gt fr3,fr1
bf loc_8c0bd19c
mov 0x68,r0
fldi0 fr3
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8c0bd19c
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

loc_8c0bd19c:
mov 0x34,r0
fmov.s @(r0,r14),fr3
mov 0x10,r0
fmov.s @(r0,r4),fr2
fsub fr3,fr2
fldi0 fr3
fcmp/gt fr2,fr3
bf loc_8c0bd1d8
mov 0x68,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8c0bd1d0
bra loc_8c0bd1d8
nop 

loc_8c0bd1b8:
mov 0x34,r0
fmov.s @(r0,r14),fr2
mov 0x10,r0
fmov.s @(r0,r4),fr1
fsub fr2,fr1
fcmp/gt fr1,fr3
bf loc_8c0bd1d8
mov 0x68,r0
fldi0 fr3
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bf loc_8c0bd1d8

loc_8c0bd1d0:
mov 0x68,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

loc_8c0bd1d8:
mov 0x5C,r1
mov.l @(loc_8c0bd258,pc),r3
add r14,r1
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
jsr @r3
mov r14,r4
lds.l @r15+,pr 
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8c0bdda6
mov.l @r15+,r14

loc_8c0bd222:
#data 0x9018
#data 0x2FE6
#data 0x6E43
#data 0x005C
#data 0x9612
#data 0x600C
#data 0x9411
#data 0x8816
#data 0x36EC
#data 0x8D05
#data 0x345C
#data 0xE700
#data 0x6073
#data 0x0009
#data 0x804C
#data 0x2600

loc_8c0bd242:
#data 0x84E5
#data 0x64E3
#data 0xD105
#data 0x600C
#data 0x4008
#data 0x031E
#data 0x432B
#data 0x6EF6
#data 0x0088
#data 0x02A4
#data 0x01D0

#align4
loc_8c0bd258:
#data bank03.loc_8c034d8c

loc_8c0bd25c:
#data 0xADC0
#data 0x8C15

loc_8c0bd260:
#data 0x2FE6
#data 0x6E43
#data 0x2FD6
#data 0xE202
#data 0x4F22
#data 0x84E5
#data 0x7001
#data 0x80E5
#data 0xE021
#data 0x03EC
#data 0x633C
#data 0x3323
#data 0x8D6E
#data 0x6D53
#data 0x65D3
#data 0xB5A7
#data 0x64E3
#data 0x90A1
#data 0xD453
#data 0x03DD
#data 0x0E35
#data 0xE034
#data 0xF3D6
#data 0xFE37
#data 0xE038
#data 0xF3D6
#data 0xFE37
#data 0xC74D
#data 0xF608
#data 0xC74D
#data 0xF508
#data 0xE021
#data 0x03EC
#data 0xC74D
#data 0xF708
#data 0x633C
#data 0x4308
#data 0x4308
#data 0x334C
#data 0x6231
#data 0xE320
#data 0x4218
#data 0x425A
#data 0xE238
#data 0x32EC
#data 0xF32D
#data 0xF352
#data 0xF43C
#data 0xF463
#data 0x33EC
#data 0xF228
#data 0x6330
#data 0x633C
#data 0x4308
#data 0x4308
#data 0x334C
#data 0x8531
#data 0x4018
#data 0x405A
#data 0xC741
#data 0xF32D
#data 0xF372
#data 0xF363
#data 0xF230
#data 0xF22A
#data 0xF608
#data 0xE021
#data 0x05EC
#data 0x655C
#data 0x4508
#data 0x4508
#data 0x354C
#data 0x5351
#data 0x435A
#data 0x5352
#data 0xF32D
#data 0x435A
#data 0xF352
#data 0xF53C
#data 0xF32D
#data 0xF372
#data 0xF363
#data 0xE060
#data 0xE131
#data 0x31EC
#data 0xFE37
#data 0xE021
#data 0x03EC
#data 0x633C
#data 0x4308
#data 0x4308
#data 0x343C
#data 0x844C
#data 0x2100
#data 0x9054
#data 0x03ED
#data 0x2338
#data 0x8F02
#data 0xF563
#data 0xF54D
#data 0xF44D

loc_8c0bd32a:
#data 0xE06C
#data 0xF38D
#data 0xFE37
#data 0xE068
#data 0xFE37
#data 0xE034
#data 0xF3E6
#data 0xD329
#data 0xF340
#data 0xFE37
#data 0xE05C
#data 0x430B
#data 0xFE57
#data 0x4F26
#data 0xE703
#data 0xD226
#data 0x64E3
#data 0x2709
#data 0x6DF6
#data 0xE608
#data 0xE51B
#data 0x422B
#data 0x6EF6

loc_8c0bd358:
#data 0x4F26
#data 0x6DF6
#data 0x000B
#data 0x6EF6

loc_8C0BD360:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x21,r0 ; r0 set to 0x21
mov r4,r14
mov 0x02,r2 ; r2 set to 0x02
mov.l r5,@r15
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BD3C0
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0BD3E8,pc),r3 ; r3 set to 0x8C034D8c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
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
jsr @r3
mov r14,r4
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr
bra loc_8C0BDDA6
mov.l @r15+,r14

loc_8C0BD3C0:
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------
#data 0x00000130
#data 0x43800000
#data 0x3FD55555

#align4
loc_8C0BD3D4:
#data bank15.loc_8c15aaE4
#data 0x40092492
#data 0x47800000

#align4
loc_8C0BD3E0:
#data bank11.loc_8c11e730

loc_8C0BD3E4:
#data bank03.loc_8c034CD6

loc_8C0BD3E8:
#data bank03.loc_8c034D8c

loc_8C0BD3EC:
#data 0x2FE69052
#data 0x005C6E43
#data 0x600C964c
#data 0x8816944b
#data 0x8D0536Ec
#data 0xE700345c
#data 0x00096073
#data 0x2600804c

#align4
loc_8C0BD40C:
#data 0x64E384E5
#data 0x600CD121
#data 0x031E4008
#data 0x6EF6432b


loc_8C0BD41C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0
mov 0x04,r2 ; r2 set to 0x04
mov.w @(loc_8C0BD490,pc),r4 ; r4 set to 0x88
add 0x01,r0
mov.b r0,@(0x05,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt/s loc_8C0BD456
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C0BD496,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r1
mov 0x20,r0 ; r0 set to 0x20
mov.w r1,@(r0,r4)
bsr loc_8C0BDDD4
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21
mov.l @(loc_8C0BD49C,pc),r3 ; r3 set to 0x8C034C38
lds.l @r15+,pr
mov.b @(r0,r14),r6
mov r14,r4
mov 0x1B,r5 ; r5 set to 0x1b
add 0x0B,r6
jmp @r3
mov.l @r15+,r14

loc_8C0BD456:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

#align4
loc_8C0BD45C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x95142FC6
#data 0x84D54F22
#data 0x940F35Dc
#data 0x34EC2008
#data 0xEC008F06
#data 0x024DE020
#data 0x03DD900b
#data 0x890D3230

#align4
loc_8C0BD484:
#data 0x60C324C0
#data 0x805C0009
#data 0x80E5A089

loc_8C0BD490:
#data 0x0088
#data 0x02A4
#data 0x01D0

loc_8C0BD496:
#data 0x0158

#align4
loc_8C0BD498:
#data bank15.loc_8c15adCc

loc_8C0BD49C:
#data bank03.loc_8c034C38

loc_8C0BD4A0:
#data 0x03ECE021
#data 0x633CE204
#data 0x897A3323
#data 0xE51B97A2
#data 0x37DCD352
#data 0x67038471
#data 0x06ECE021
#data 0x430B760b
#data 0xE03464E3
#data 0xF3D69196
#data 0x31DCE236
#data 0xFE37D44d
#data 0xF3D6E038
#data 0x908EFE37
#data 0xC7490EC5
#data 0xE021F408
#data 0x841103Ec
#data 0x232E633c
#data 0x41086103
#data 0x301C4000
#data 0x334C031a
#data 0x4018003d
#data 0xC743405a
#data 0xF32DF208
#data 0xF343F322
#data 0x9175E05c
#data 0xFE3731Dc
#data 0x03ECE021
#data 0x633C8411
#data 0x6103232e
#data 0x40004108
#data 0x031A301c
#data 0x330C334c
#data 0x40188531
#data 0xC738405a
#data 0xE060F108
#data 0xF312F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x232E633c
#data 0x343C031a
#data 0x33DC9356
#data 0x63038431
#data 0x40004308
#data 0x340C303c
#data 0x61038542
#data 0x0E14E031
#data 0x03DD904b
#data 0x89092338
#data 0x9146E05c
#data 0x31ECF3E6
#data 0xFE37F34d
#data 0x00ED9041
#data 0x2101CA01

#align4
loc_8C0BD578:
#data 0x65D3E15c
#data 0x64E331Ec
#data 0xF318E034
#data 0xE160F2E6
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F231
#data 0x6CF64F26
#data 0xA4026DF6
#data 0x6EF6

loc_8C0BD5A2:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;----------------------------------------------

#align4
loc_8C0BD5AC:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x6E439320
#data 0x6D53921f
#data 0x65D333Ec
#data 0x2F3232Dc
#data 0xB4941F21
#data 0x200864E3
#data 0x53F18906
#data 0x6043E400
#data 0x803C0009
#data 0x234063F2

#align4
loc_8C0BD5DC:
#data 0x64E384E5
#data 0x65D3D10b
#data 0x4008600c
#data 0x7F08031e
#data 0x6DF64F26
#data 0x6EF6432b
#data 0x01300150
#data 0x02A40088

#align4
loc_8C0BD5FC:
#data bank03.loc_8c034CD6
#data 0x43800000

#align4
loc_8C0BD604:
#data bank15.loc_8c15ab04
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BD610:
#data bank15.loc_8c15adD4


loc_8C0BD614:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0
mov 0x04,r2 ; r2 set to 0x04
mov.w @(loc_8C0BD688,pc),r4 ; r4 set to 0x88
add 0x01,r0
mov.b r0,@(0x05,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt/s loc_8C0BD64e
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C0BD68A,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r1
mov 0x20,r0 ; r0 set to 0x20
mov.w r1,@(r0,r4)
bsr loc_8C0BDDD4
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21
mov.l @(loc_8C0BD690,pc),r3 ; r3 set to 0x8C034C38
lds.l @r15+,pr
mov.b @(r0,r14),r6
mov r14,r4
mov 0x1B,r5 ; r5 set to 0x1b
add 0x0F,r6
jmp @r3
mov.l @r15+,r14

loc_8C0BD64E:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

#align4
loc_8C0BD654:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x95152FC6
#data 0x84D54F22
#data 0x940F35Dc
#data 0x34EC2008
#data 0xEC008F06
#data 0x024DE020
#data 0x03DD9009
#data 0x890B3230

#align4
loc_8C0BD67C:
#data 0x60C324C0
#data 0x805C0009
#data 0x80E5A087

loc_8C0BD688:
#data 0x0088

loc_8C0BD68A:
#data 0x0158
#data 0x000002A4

#align4
loc_8C0BD690:
#data bank03.loc_8c034C38

loc_8C0BD694:
#data 0x03ECE021
#data 0x633CE204
#data 0x897A3323
#data 0xE51B97A2
#data 0x37DCD352
#data 0x67038471
#data 0x06ECE021
#data 0x430B760f
#data 0xE03464E3
#data 0xF3D69196
#data 0x31DCE21e
#data 0xFE37D44d
#data 0xF3D6E038
#data 0x908EFE37
#data 0xC7490EC5
#data 0xE021F408
#data 0x841103Ec
#data 0x232E633c
#data 0x41086103
#data 0x301C4000
#data 0x334C031a
#data 0x4018003d
#data 0xC743405a
#data 0xF32DF208
#data 0xF343F322
#data 0x9175E05c
#data 0xFE3731Dc
#data 0x03ECE021
#data 0x633C8411
#data 0x6103232e
#data 0x40004108
#data 0x031A301c
#data 0x330C334c
#data 0x40188531
#data 0xC738405a
#data 0xE060F108
#data 0xF312F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x232E633c
#data 0x343C031a
#data 0x33DC9356
#data 0x63038431
#data 0x40004308
#data 0x340C303c
#data 0x61038542
#data 0x0E14E031
#data 0x03DD904b
#data 0x89092338
#data 0x9146E05c
#data 0x31ECF3E6
#data 0xFE37F34d
#data 0x00ED9041
#data 0x2101CA01

#align4
loc_8C0BD76C:
#data 0x65D3E15c
#data 0x64E331Ec
#data 0xF318E034
#data 0xE160F2E6
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F231
#data 0x6CF64F26
#data 0xA3086DF6
#data 0x6EF6

loc_8C0BD796:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;----------------------------------------------

#align4
loc_8C0BD7A0:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x6E439320
#data 0x6D53921f
#data 0x65D333Ec
#data 0x2F3232Dc
#data 0xB39A1F21
#data 0x200864E3
#data 0x53F18906
#data 0x6043E400
#data 0x803C0009
#data 0x234063F2

#align4
loc_8C0BD7D0:
#data 0x64E384E5
#data 0x65D3D10b
#data 0x4008600c
#data 0x7F08031e
#data 0x6DF64F26
#data 0x6EF6432b
#data 0x01300150
#data 0x02A40088

#align4
loc_8C0BD7F0:
#data bank03.loc_8c034CD6
#data 0x43800000

#align4
loc_8C0BD7F8:
#data bank15.loc_8c15abDc
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BD804:
#data bank15.loc_8c15adDc


loc_8C0BD808:
mov.l r14,@-r15
mov r4,r14
mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
mov.l r13,@-r15
mov r5,r13
mov 0x01,r7 ; r7 set to 0x01
sts.l pr,@-r15
mov.b @(0x05,r14),r0
mov 0x02,r5 ; r5 set to 0x02
add 0x01,r0
mov.b r0,@(0x05,r14)
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14)
mov 0x25,r0 ; r0 set to 0x25
mov.b @(r0,r13),r6
mov.l @(loc_8C0BD8D4,pc),r0 ; r0 set to 0x8C15ADE4
extu.b r6,r6
mov.l @(loc_8C0BD8D8,pc),r3 ; r3 set to 0x8C03544c
shll2 r6
mov.l @(r0,r6),r6
jsr @r3
mov r13,r4
mov r13,r5 ; r5 ??? bc r13 is ???	
bsr loc_8C0BDDD0
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_8C0BD8DC,pc),r3 ; r3 set to 0x8C034C38
mov 0x13,r6 ; r6 set to 0x13
mov 0x1B,r5 ; r5 set to 0x1b
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BD84A:
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
mov r4,r13
mov.w @(loc_8C0BD8C8,pc),r6 ; r6 set to 0x88
sts.l pr,@-r15
mov.b @(0x05,r14),r0
add r13,r6 ; r6 ??? bc r13 is ???	
mov.w @(loc_8C0BD8CA,pc),r5 ; r5 set to 0x2A4
tst r0,r0
bf/s loc_8C0BD8A4
add r14,r5 ; r5 ??? bc r14 is ???	
mov.w @(loc_8C0BD8CC,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0
bf loc_8C0BD8A4
mov.w @(loc_8C0BD8CE,pc),r0 ; r0 set to 0x1E9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x09,r0
bf loc_8C0BD8A4
mov.w @(loc_8C0BD8D0,pc),r2 ; r2 set to 0x150
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @(0x01,r2),r0
tst r0,r0
bt loc_8C0BD8Ae
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r13)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r13)
mov.w @(loc_8C0BD8D2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
mov.w r3,@(r0,r13)
mov.l @(loc_8C0BD8E0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r13,r4
lds.l @r15+,pr
mov r13,r4
mov r14,r5
mov.l @r15+,r13
bra loc_8C0BDDA6
mov.l @r15+,r14

loc_8C0BD8A4:
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x0C,r5)
mov.b r0,@r6

loc_8C0BD8AE:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BD8B6:
mov r4,r3
mov.l @(loc_8C0BD8E4,pc),r1 ; r1 set to 0x8C15ADFc
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BD8C8:
#data 0x0088

loc_8C0BD8CA:
#data 0x02A4

loc_8C0BD8CC:
#data 0x01D0

loc_8C0BD8CE:
#data 0x01E9

loc_8C0BD8D0:
#data 0x0150

loc_8C0BD8D2:
#data 0x0130

#align4
loc_8C0BD8D4:
#data bank15.loc_8c15adE4

loc_8C0BD8D8:
#data bank03.loc_8c03544c

loc_8C0BD8DC:
#data bank03.loc_8c034C38

loc_8C0BD8E0:
#data bank03.loc_8c034D8c

loc_8C0BD8E4:
#data bank15.loc_8c15adFc


loc_8C0BD8E8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
mov.w @(loc_8C0BDA54,pc),r13 ; r13 set to 0x88
mov r12,r5
sts.l pr,@-r15
mov.b @(0x05,r14),r0
add r14,r13 ; r13 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x05,r14)
bsr loc_8C0BDDD0
mov r14,r4
mov.w @(loc_8C0BDA56,pc),r0 ; r0 set to 0x130
mov.w @(r0,r12),r2
mov.w r2,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r12),fr3
mov 0x04,r2 ; r2 set to 0x04
fmov.s fr3,@(r0,r14)
mova @(loc_8C0BDA58,pc),r0  ; r0 set to 0x8C0BDA58
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r12),fr2 ; r2 ??? bc r12 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/gt r2,r3
bf loc_8C0BD92c
bra loc_8C0BDA4a
nop

#align4
loc_8c0bd92c:
mova @(loc_8C0BDA5C,pc),r0 
mov.l @(loc_8c0bda64,pc),r4
fmov.s @r0,fr5
mova @(loc_8C0BDA60,pc),r0 
fmov.s @r0,fr4
mov 0x21,r0
mov.b @(r0,r14),r3
mov 0x5C,r0
extu.b r3,r3
add 0xFF,r3
mov r3,r2
shll r3
add r2,r3
shll2 r3
shll r3
add r4,r3
mov.l @r3,r1
lds r1,fpul 
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14) 
mova @(loc_8C0BDA68,pc),r0 
fmov.s @r0,fr6
mov 0x21,r0
mov.b @(r0,r14),r3
extu.b r3,r3
add 0xFF,r3
mov r3,r2
shll r3
add r2,r3
shll2 r3
shll r3
add r4,r3
mov.l @(0x04,r3),r1
mov 0x60,r0
lds r1,fpul 
float fpul,fr3
fmul fr6,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14) 
mov 0x21,r0
mov.b @(r0,r14),r3
mov 0x68,r0
extu.b r3,r3
add 0xFF,r3
mov r3,r2
shll r3
add r2,r3
shll2 r3
shll r3
add r4,r3
mov.l @(0x08,r3),r1
lds r1,fpul 
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14) 
mov 0x21,r0
mov.b @(r0,r14),r3
extu.b r3,r3
add 0xFF,r3
mov r3,r2
shll r3
add r2,r3
shll2 r3
shll r3
add r4,r3
mov.l @(0x0C,r3),r1
mov 0x10,r0
lds r1,fpul 
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r13) 
mov 0x21,r0
mov.b @(r0,r14),r3
mov 0x6C,r0
extu.b r3,r3
add 0xFF,r3
mov r3,r2
shll r3
add r2,r3
shll2 r3
shll r3
add r4,r3
mov.l @(0x10,r3),r1
lds r1,fpul 
float fpul,fr3
fmul fr6,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14) 
mov 0x21,r0
mov.b @(r0,r14),r3
extu.b r3,r3
add 0xFF,r3
mov r3,r2
shll r3
add r2,r3
shll2 r3
shll r3
add r3,r4
mov.l @(0x14,r4),r3
mov 0x14,r0
lds r3,fpul 
float fpul,fr3
fmul fr6,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r13) 
mov.w @(loc_8c0bda56,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8c0bda26
mov 0x5C,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 
mov 0x68,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 
mov 0x10,r0
fmov.s @(r0,r13),fr3
fneg fr3
fmov.s fr3,@(r0,r13) 

loc_8c0bda26:
mov 0x31,r0
mov 0xFE,r3
mov.b r3,@(r0,r14) 
mov 0x3C,r0
mov.l @(loc_8c0bda6c,pc),r3
jsr @r3
mov.w r0,@(0x1C,r14) 
lds.l @r15+,pr 
mov 0x03,r7
mov.l @(loc_8c0bda70,pc),r2
mov 0x08,r6
mov r14,r4
mov.l @r15+,r12
and r0,r7
mov 0x1B,r5
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0BDA4A:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BDA54:
#data 0x0088

loc_8C0BDA56:
#data 0x0130

#align4
loc_8C0BDA58:
#data 0x42F00000
loc_8c0bda5c:
#data 0x3FD55555
loc_8c0bda60:
#data 0x47800000

#align4
loc_8C0BDA64:
#data bank15.loc_8c15ac54
loc_8c0bda68:
#data 0x40092492

#align4
loc_8C0BDA6C:
#data bank11.loc_8c11e730

loc_8C0BDA70:
#data bank03.loc_8c034CD6


loc_8C0BDA74:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.w @(0x1C,r14),r0
mov.w @(loc_8C0BDB9E,pc),r4 ; r4 set to 0x88
add 0xFF,r0
mov.w r0,@(0x1C,r14)
add 0x01,r0
exts.w r0,r0
tst r0,r0
bt/s loc_8C0BDA9c
add r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C0BDBA0,pc),r2 ; r2 set to 0x8C0BC8Da
mov r13,r5
jsr @r2
mov r14,r4
bra loc_8C0BDB1e
nop

#align4
loc_8c0bda9c:
mov.b @(0x06,r14),r0 
add 0x01,r0
mov.b r0,@(0x06,r14) 
mov 0x34,r0
fmov.s @(r0,r14),fr2
fmov.s @(r0,r13),fr3
mov 0x18,r0
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 
mov 0x38,r0
fmov.s @(r0,r14),fr2
fmov.s @(r0,r13),fr3
mov 0x1C,r0
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 
mov 0x34,r0
fmov.s @(r0,r14),fr3
mov 0x10,r0
fmov.s fr3,@(r0,r4) 
mov 0x38,r0
fmov.s @(r0,r14),fr3
mov 0x14,r0
fmov.s fr3,@(r0,r4) 
mova @(loc_8C0BDBA4,pc),r0 
fmov.s @r0,fr3
mov 0x5C,r0
fmov.s fr3,@(r0,r14) 
mova @(loc_8C0BDBA8,pc),r0 
fmov.s @r0,fr3
mov 0x68,r0
fmov.s fr3,@(r0,r14) 
mova @(loc_8C0BDBAC,pc),r0 
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r14) 
mova @(loc_8C0BDBB0,pc),r0 
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14) 
mov 0x21,r0
mov.b @(r0,r14),r0
extu.b r0,r0
tst 0x02,r0 
bt loc_8c0bdb04
mov 0x5C,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 
mov 0x68,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

loc_8c0bdb04:
mov 0x21,r0
mov.b @(r0,r14),r0
extu.b r0,r0
tst 0x01,r0 
bt loc_8c0bdb1e
mov 0x60,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 
mov 0x6C,r0
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

loc_8C0BDB1E:
mov.l @(loc_8C0BDBB4,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BDDA6
mov.l @r15+,r14

#align4
loc_8C0BDB30:
#data 0x6E432FE6
#data 0xE0342FD6
#data 0x6D539431
#data 0xF3D64F22
#data 0x34ECE018
#data 0xE010F246
#data 0xF427F230
#data 0xF3D6E038
#data 0xF246E01c
#data 0xF230E014
#data 0xF427F38d
#data 0xF2E6E060
#data 0x8B29F235
#data 0xF2E6E038
#data 0xF146E014
#data 0xF135F121
#data 0xE06C8B07
#data 0xF2E6F38d
#data 0x8B02F325
#data 0xF34DF3E6
#data 0xFE37

loc_8C0BDB82:
#data 0xE038
#data 0xE014F3E6
#data 0xF231F246
#data 0xF325F38d
#data 0xE06C8B22
#data 0xF235F2E6
#data 0xA01D891a
#data 0x0009

loc_8C0BDB9E:
#data 0x0088

#align4
loc_8C0BDBA0:
#data loc_8c0bC8Da
loc_8c0bdba4:
#data 0x3FD55555
loc_8c0bdba8:
#data 0xBDD55555
loc_8c0bdbac:
#data 0xBFCDB6Db
loc_8c0bdbb0:
#data 0x3D892492

#align4
loc_8C0BDBB4:
#data bank03.loc_8c034D8c

loc_8C0BDBB8:
#data 0xF2E6E038
#data 0xF146E014
#data 0xF315F121
#data 0xE06C8B08
#data 0xF2E6F38d
#data 0x8B03F235

#align4
loc_8C0BDBD0:
#data 0xF3E6E06c
#data 0xFE37F34d

#align4
loc_8C0BDBD8:
#data 0xF38DE05c
#data 0xF325F2E6
#data 0xE0348B1c
#data 0xE010F2E6
#data 0xF121F146
#data 0x8B07F135
#data 0xF38DE068
#data 0xF325F2E6
#data 0xF3E68B02
#data 0xFE37F34d

#align4
loc_8C0BDC00:
#data 0xF3E6E034
#data 0xF246E010
#data 0xF38DF231
#data 0x8B15F325
#data 0xF2E6E068
#data 0x890DF235
#data 0x0009A010

#align4
loc_8C0BDC1C:
#data 0xF2E6E034
#data 0xF146E010
#data 0xF315F121
#data 0xE0688B08
#data 0xF2E6F38d
#data 0x8B03F235

#align4
loc_8C0BDC34:
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0BDC3C:
#data 0xD32AE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x4F2664E3
#data 0x64E365D3
#data 0xA0906DF6
#data 0x6EF6

loc_8C0BDC86:
#data 0x2FE6
#data 0x84556E43
#data 0x20089429
#data 0x34EC8F0a
#data 0x005C9026
#data 0x881D600c
#data 0x90228B04
#data 0x600C005c
#data 0x89038809

#align4
loc_8C0BDCA8:
#data 0x2420E200
#data 0x6EF6000b
;----------------------------------------------

#align4
loc_8C0BDCB0:
#data 0x03ECE021
#data 0x633CE204
#data 0x89073327
#data 0x64E384E6
#data 0x600CD10a
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0BDCCC:
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BDCD0:
mov r4,r3
mov.l @(loc_8C0BDCF0,pc),r1 ; r1 set to 0x8C15AE0c
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0088
#data 0x01E901D0

#align4
loc_8C0BDCE8:
#data bank03.loc_8c034D8c

loc_8C0BDCEC:
#data bank15.loc_8c15ae04

loc_8C0BDCF0:
#data bank15.loc_8c15ae0c


loc_8C0BDCF4:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8C0BDDF2,pc),r3 ; r3 set to 0x88
mov r4,r14
mov.w @(loc_8C0BDDF4,pc),r2 ; r2 set to 0x2A4
mov r5,r13
add r14,r3 ; r3 ??? bc r14 is ???	
mov r13,r5
add r13,r2 ; r2 ??? bc r13 is ???	
mov.l r3,@r15
mov.l r2,@(0x04,r15)
bsr loc_8C0BDF1c
mov r14,r4
tst r0,r0
bt loc_8C0BDD26
mov.l @(0x04,r15),r3
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x0C,r3)
mov.l @r15,r3
bra loc_8C0BDD4c
mov.b r4,@r3

loc_8C0BDD26:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/pl r3
bf loc_8C0BDD3e
mov r14,r4
mov r13,r5
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
bra loc_8C0BDCD0
mov.l @r15+,r14

loc_8C0BDD3E:
mov r14,r4
mov r13,r5
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
bra loc_8C0BD8B6
mov.l @r15+,r14

loc_8C0BDD4C:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BDD56:
bra loc_8C0BDD6e
nop

loc_8C0BDD5A:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BDDF6,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0BDD68:
mov.l @(loc_8C0BDDFC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BDD6E:
mov.b @(0x05,r5),r0
mov.w @(loc_8C0BDDF4,pc),r6 ; r6 set to 0x2A4
mov.w @(loc_8C0BDDF2,pc),r3 ; r3 set to 0x88
tst r0,r0
add r5,r6 ; r6 ??? bc r5 is ???	
bt/s loc_8C0BDD84
add r3,r4
mov 0x00,r1 ; r1 set to 0x00
mov.b r1,@r4
rts
mov 0xFF,r0
;----------------------------------------------

#align4
loc_8c0bdd84:
mov.w @(loc_8C0BDDF8,pc),r0
mov.b @(r0,r5),r3
mov.l @(loc_8c0bde00,pc),r0
extu.b r3,r3
mov.b @(r0,r3),r5
exts.b r5,r2
cmp/pz r2
bt loc_8c0bdd98
mov.b @(0x0C,r6),r0 
mov r0,r5

loc_8c0bdd98:
mov.b r5,@r4
mov.b @(0x01,r4),r0 
mov r0,r3
mov.b @r4,r0
sub r3,r0
rts 
nop 

loc_8C0BDDA6:
mov.b @r5,r3
mov.w @(loc_8C0BDDF4,pc),r6 ; r6 set to 0x2A4
mov.w @(loc_8C0BDDF2,pc),r7 ; r7 set to 0x88
tst r3,r3
add r5,r6 ; r6 ??? bc r5 is ???	
bt/s loc_8C0BDDC2
add r4,r7 ; r7 ??? bc r4 is ???	
mov.w @(loc_8C0BDDF6,pc),r0 ; r0 set to 0x12c
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C0BDDC2
mov 0x01,r3 ; r3 set to 0x01
bra loc_8C0BDDCc
mov.b r3,@(r0,r4)

loc_8C0BDDC2:
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x0C,r6)
mov.b r0,@r7

loc_8C0BDDCC:
rts
nop
;----------------------------------------------

loc_8C0BDDD0:
rts
nop
;----------------------------------------------

loc_8C0BDDD4:
rts
nop
;----------------------------------------------

loc_8C0BDDD8:
sts.l pr,@-r15
mov.l @(loc_8C0BDE04,pc),r3 ; r3 set to 0x8C11E730
jsr @r3
mov.l r4,@-r15
and 0x03,r0
mov.l @r15,r4
mov r0,r6
mov 0x1B,r5 ; r5 set to 0x1b
add 0x04,r6
add 0x04,r15
mov.l @(loc_8C0BDE08,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr

loc_8C0BDDF2:
#data 0x0088

loc_8C0BDDF4:
#data 0x02A4

loc_8C0BDDF6:
#data 0x012c
loc_8c0bddf8:
#data 0x000001D0

#align4
loc_8C0BDDFC:
#data bank04.loc_8c0450C0

loc_8C0BDE00:
#data bank15.loc_8c15ae14

loc_8C0BDE04:
#data bank11.loc_8c11e730

loc_8C0BDE08:
#data bank03.loc_8c034C38


loc_8C0BDE0C:
mov.l r14,@-r15
mov.l r13,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xFC,r15
fldi0 fr3
mov 0x6C,r0 ; r0 set to 0x6c
mov r4,r14
mov.l @(loc_8C0BDF50,pc),r13 ; r13 set to 0x8C11E730
mov.l r5,@r15
fmov.s fr3,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
jsr @r13
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0BDF46,pc),r3 ; r3 set to 0x3F00
mov.w @(loc_8C0BDF48,pc),r4 ; r4 set to 0xE000
and r3,r0 ; r0 ??	
add r0,r4 ; r4 ??? bc r0 is ???	
exts.w r4,r4
lds r4,fpul
mova @(loc_8C0BDF54,pc),r0  ; r0 set to 0x8C0BDF54
fmov.s @r0,fr15
mova @(loc_8C0BDF58,pc),r0  ; r0 set to 0x8C0BDF58
fmov.s @r0,fr2
mov 0x5C,r0 ; r0 set to 0x5c
float fpul,fr3
fmul fr2,fr3 ; r3 ??? bc r2 is ???	
fdiv fr15,fr3
fmov.s fr3,@(r0,r14)
mova @(loc_8C0BDF5C,pc),r0  ; r0 set to 0x8C0BDF5c
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
mov.l @r15,r2
fmov.s @(r0,r2),fr1
fadd fr3,fr1
jsr @r13
fmov.s fr1,@(r0,r14)
tst 0x01,r0
bt loc_8C0BDE62
mov 0x31,r0 ; r0 set to 0x31
mov 0x02,r2 ; r2 set to 0x02
bra loc_8C0BDE68
mov.b r2,@(r0,r14)

loc_8C0BDE62:
mov 0x31,r0 ; r0 set to 0x31
mov 0xFE,r1 ; r1 set to 0xFFFFFFFe
mov.b r1,@(r0,r14)

loc_8C0BDE68:
jsr @r13
nop
mov.l @(loc_8C0BDF60,pc),r1 ; r1 set to 0x8C15AE38, r1 set to 0x8C15AE38
and 0x03,r0
shll r0 ; r0 set to 0x62
mov.w @(r0,r1),r3
mova @(loc_8C0BDF64,pc),r0  ; r0 set to 0x8C0BDF64, r0 set to 0x8C0BDF64
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
lds r3,fpul
float fpul,fr3
fmul fr2,fr3
fdiv fr15,fr3
fmov.s fr3,@(r0,r14)
add 0x04,r15
lds.l @r15+,pr
fmov.s @r15+,fr15
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BDE90:
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BDF50,pc),r2 ; r2 set to 0x8C11E730
mov r4,r8
mov.l r4,@r15
jsr @r2
add 0x1E,r8
mov.l @(loc_8C0BDF68,pc),r1 ; r1 set to 0x8C15AE40
and 0x0F,r0
shll r0
mov.w @(r0,r1),r0
mov.w r0,@r8
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r8
;----------------------------------------------

loc_8C0BDEB2:
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BDF50,pc),r2 ; r2 set to 0x8C11E730
mov r4,r8
mov.l r4,@r15
jsr @r2
add 0x1E,r8
mov.l @(loc_8C0BDF6C,pc),r1 ; r1 set to 0x8C15AE60
and 0x0F,r0
shll r0
mov.w @(r0,r1),r0
mov.w r0,@r8
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r8
;----------------------------------------------

loc_8C0BDED4:
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BDF50,pc),r2 ; r2 set to 0x8C11E730
mov r4,r8
mov.l r4,@r15
jsr @r2
add 0x1C,r8
and 0x07,r0
add 0x07,r0
mov.w r0,@r8
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r8
;----------------------------------------------

loc_8C0BDEF2:
#data 0x902c
#data 0x005C9629
#data 0x365C9328
#data 0x8815600c
#data 0x343C8F09
#data 0x2008846c
#data 0x62408905
#data 0x3020846c
#data 0x000B8901
#data 0xE001
;----------------------------------------------

loc_8C0BDF16:
#data 0xE000
#data 0x0009000b
;----------------------------------------------

loc_8C0BDF1C:
mov.w @(loc_8C0BDF4E,pc),r0 ; r0 set to 0x1D0
mov.w @(loc_8C0BDF4A,pc),r6 ; r6 set to 0x2A4
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
mov.w @(loc_8C0BDF4C,pc),r3 ; r3 set to 0x88
add r5,r6 ; r6 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0
bf/s loc_8C0BDF40
add r3,r4
mov.b @(0x0C,r6),r0
tst r0,r0
bt loc_8C0BDF40
mov.b @r4,r2
mov.b @(0x0C,r6),r0
cmp/eq r2,r0
bt loc_8C0BDF40
rts
mov 0x01,r0
;----------------------------------------------

loc_8C0BDF40:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;----------------------------------------------

loc_8C0BDF46:
#data 0x3F00

loc_8C0BDF48:
#data 0xE000

loc_8C0BDF4A:
#data 0x02A4

loc_8C0BDF4C:
#data 0x0088

loc_8C0BDF4E:
#data 0x01D0

#align4
loc_8C0BDF50:
#data bank11.loc_8c11e730

loc_8C0BDF54:
#data 0x43800000

#align4
loc_8C0BDF58:
#data 0x3FD55555

#align4
loc_8C0BDF5C:
#data 0xC2892492

#align4
loc_8C0BDF60:
#data bank15.loc_8c15ae38

loc_8C0BDF64:
#data 0x40092492

#align4
loc_8C0BDF68:
#data bank15.loc_8c15ae40

loc_8C0BDF6C:
#data bank15.loc_8c15ae60
#data 0x7FF84F22
#data 0x60532F42
#data 0xD34D0009
#data 0x80F4E503
#data 0x430BE601
#data 0x2008E400
#data 0x64038D0e
#data 0xE120D349
#data 0x1434314c
#data 0x62F29385
#data 0x60F21426
#data 0x80418401
#data 0x210084F4
#data 0x0435E026
#data 0x4F267F08
#data 0x6043000b
;----------------------------------------------

loc_8C0BDFB0:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0BE0B8,pc),r1 ; r1 set to 0x8C15AE80
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14)
mov.b @(0x04,r14),r0
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BDFCC:
mov.l r14,@-r15
mov r4,r14
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BE0A6,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BE0A6,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r5,r2 ; r2 ??? bc r5 is ???	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BE0A4,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14)
mov.l @(loc_8C0BE0BC,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BE0A4,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14)
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
mov.w @(loc_8C0BE0A8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0BE0C0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0BE0C4,pc),r0 ; r0 set to 0x8C15AE90
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
mov r14,r4
mov.l @(loc_8C0BE0C8,pc),r3 ; r3 set to 0x8C104434
jsr @r3
mov r14,r4
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@r14
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BE04C:
mov.w @(loc_8C0BE0A4,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4)
mov.b @(0x02,r4),r0
tst r0,r0
bt loc_8C0BE05e
mova @(loc_8C0BE0CC,pc),r0  ; r0 set to 0x8C0BE0Cc
bra loc_8C0BE062
fmov.s @r0,fr3

loc_8C0BE05E:
mova @(loc_8C0BE0D0,pc),r0  ; r0 init to 0x8C0BE0D0
fmov.s @r0,fr3

loc_8C0BE062:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0BE0D8,pc),r3 ; r3 set to 0x20202424, r3 set to 0x20202424
fmov.s @(r0,r5),fr2
mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mova @(loc_8C0BE0D4,pc),r0  ; r0 set to 0x8C0BE0D4, r0 set to 0x8C0BE0D4
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov.w @(loc_8C0BE0AA,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov.l r3,@(r0,r4)
mova @(loc_8C0BE0DC,pc),r0  ; r0 set to 0x8C0BE0DC, r0 set to 0x8C0BE0Dc
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l @(loc_8C0BE0E4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr2,@(r0,r4)
mova @(loc_8C0BE0E0,pc),r0  ; r0 set to 0x8C0BE0E0, r0 set to 0x8C0BE0E0
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r4)
jmp @r3
mov 0x12,r5

loc_8C0BE094:
mov.w @(loc_8C0BE0AC,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
tst r3,r3
bt loc_8C0BE0Ec
mova @(loc_8C0BE0E8,pc),r0  ; r0 set to 0x8C0BE0E8
bra loc_8C0BE0F0
fmov.s @r0,fr3
#data 0x0303

loc_8C0BE0A4:
#data 0x012c

loc_8C0BE0A6:
#data 0x00Dc

loc_8C0BE0A8:
#data 0x01A3

loc_8C0BE0AA:
#data 0x013c

loc_8C0BE0AC:
#data 0x0130
#data 0x0000

#align4
loc_8C0BE0B0:
#data bank04.loc_8c044F12

loc_8C0BE0B4:
#data loc_8c0bDFB0

loc_8C0BE0B8:
#data bank15.loc_8c15ae80

loc_8C0BE0BC:
#data bank12.loc_8c129560

loc_8C0BE0C0:
#data bank12.loc_8c1294C8

loc_8C0BE0C4:
#data bank15.loc_8c15ae90

loc_8C0BE0C8:
#data bank10.loc_8c104434

loc_8C0BE0CC:
#data 0xC2D55555

#align4
loc_8C0BE0D0:
#data 0x42D55555

#align4
loc_8C0BE0D4:
#data 0x44092492

#align4
loc_8C0BE0D8:
#data 0x20202424

#align4
loc_8C0BE0DC:
#data 0xC14DB6Db

#align4
loc_8C0BE0E0:
#data 0x3E092492

#align4
loc_8C0BE0E4:
#data bank03.loc_8c034e8c

loc_8C0BE0E8:
#data 0xC2BAAAAa


loc_8C0BE0EC:
mova @(loc_8C0BE220,pc),r0  ; r0 init to 0x8C0BE220
fmov.s @r0,fr3

loc_8C0BE0F0:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r5),fr2
mov 0x06,r6 ; r6 set to 0x06, r6 set to 0x06
mov.l @(loc_8C0BE22C,pc),r3 ; r3 set to 0x60003030, r3 set to 0x60003030
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov.w @(loc_8C0BE21A,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r4)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4)
mova @(loc_8C0BE224,pc),r0  ; r0 set to 0x8C0BE224, r0 set to 0x8C0BE224
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r4)
mova @(loc_8C0BE228,pc),r0  ; r0 set to 0x8C0BE228, r0 set to 0x8C0BE228
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0BE21C,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov.l r3,@(r0,r4)
mov.l @(loc_8C0BE230,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
jmp @r3
mov 0x14,r5

loc_8C0BE128:
mov.w @(loc_8C0BE21E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0BE136
mova @(loc_8C0BE234,pc),r0  ; r0 set to 0x8C0BE234
bra loc_8C0BE13a
fmov.s @r0,fr3

loc_8C0BE136:
mova @(loc_8C0BE238,pc),r0  ; r0 init to 0x8C0BE238
fmov.s @r0,fr3

loc_8C0BE13A:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0BE240,pc),r3 ; r3 set to 0x20202424, r3 set to 0x20202424
fmov.s @(r0,r5),fr2
mov 0x06,r6 ; r6 set to 0x06, r6 set to 0x06
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mova @(loc_8C0BE23C,pc),r0  ; r0 set to 0x8C0BE23C, r0 set to 0x8C0BE23c
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov.w @(loc_8C0BE21C,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov.l r3,@(r0,r4)
mova @(loc_8C0BE244,pc),r0  ; r0 set to 0x8C0BE244, r0 set to 0x8C0BE244
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l @(loc_8C0BE230,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr2,@(r0,r4)
mova @(loc_8C0BE248,pc),r0  ; r0 set to 0x8C0BE248, r0 set to 0x8C0BE248
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r4)
jmp @r3
mov 0x13,r5

loc_8C0BE16C:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0BE24C,pc),r0 ; r0 set to 0x8C15AE9c
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0BE180:
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
mov.w @(loc_8C0BE21A,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr2
fcmp/gt fr3,fr2
bf loc_8C0BE1Ae
mov.l @(loc_8C0BE250,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop

loc_8C0BE1AE:
mov.w @(loc_8C0BE21A,pc),r0 ; r0 set to 0x41c
mov 0x04,r6 ; r6 set to 0x04
mov.l @(loc_8C0BE230,pc),r3 ; r3 set to 0x8C034E8c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r4)
mov.b @(0x05,r4),r0
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r4)
jmp @r3
mov 0x12,r5

loc_8C0BE1C4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BE250,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0BE1F8
mov.b @(0x05,r14),r0
add 0x01,r0
mov.b r0,@(0x05,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.w r0,@(0x1C,r14)
mov.b @(0x02,r14),r0
tst r0,r0
bt loc_8C0BE1Ea
mova @(loc_8C0BE254,pc),r0  ; r0 set to 0x8C0BE254
bra loc_8C0BE1Ee
fmov.s @r0,fr3

loc_8c0be1ea:
mova @(loc_8C0BE258,pc),r0 
fmov.s @r0,fr3

loc_8c0be1ee:
mov 0x5C,r0
fmov.s fr3,@(r0,r14) 
mov 0x68,r0
fldi0 fr3
fmov.s fr3,@(r0,r14) 

loc_8C0BE1F8:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BE1FE:
mov.b @(0x06,r5),r0
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/ge r3,r0
bf loc_8C0BE216
mov.b @(0x05,r4),r0
mov 0x05,r6 ; r6 set to 0x05
mov.l @(loc_8C0BE230,pc),r3 ; r3 set to 0x8C034E8c
add 0x01,r0
mov.b r0,@(0x05,r4)
jmp @r3
mov 0x12,r5

loc_8C0BE216:
rts
nop
;----------------------------------------------

loc_8C0BE21A:
#data 0x041c

loc_8C0BE21C:
#data 0x013c

loc_8C0BE21E:
#data 0x0130

#align4
loc_8C0BE220:
#data 0x42BAAAAa

#align4
loc_8C0BE224:
#data 0x40892492

#align4
loc_8C0BE228:
#data 0xBF092492

#align4
loc_8C0BE22C:
#data 0x60003030

#align4
loc_8C0BE230:
#data bank03.loc_8c034e8c

loc_8C0BE234:
#data 0x42D55555

#align4
loc_8C0BE238:
#data 0xC2D55555

#align4
loc_8C0BE23C:
#data 0x43CDB6Db

#align4
loc_8C0BE240:
#data 0x20202424

#align4
loc_8C0BE244:
#data 0xC14DB6Db

#align4
loc_8C0BE248:
#data 0x3E092492

#align4
loc_8C0BE24C:
#data bank15.loc_8c15ae9c

loc_8C0BE250:
#data bank03.loc_8c034dee

loc_8C0BE254:
#data 0x40555555
loc_8c0be258:
#data 0xC0555555

#align4
loc_8C0BE25C:
#data 0x4F222FE6
#data 0xD3537FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0x02EC909b
#data 0x89282228
#data 0x0E34E300
#data 0x66F2E025
#data 0x6573E701
#data 0x9091066c
#data 0x03EC666c
#data 0xD04A4608
#data 0x066E633c
#data 0xD349363c
#data 0x64F2430b
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B022008
#data 0x700184E4
#data 0x80E4

loc_8C0BE2AA:
#data 0xE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xF230F318
#data 0xFE27

loc_8C0BE2C6:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0BE2CE:
mov.l r14,@-r15
mov 0x31,r0 ; r0 set to 0x31
mov 0x04,r3 ; r3 set to 0x04
mov r4,r14
mov.b r3,@(r0,r14)
mov r14,r4
mov.b @(0x05,r14),r0
mov.l @(loc_8C0BE3BC,pc),r1 ; r1 set to 0x8C15AEC0
extu.b r0,r0 ; r0 set to 0x31
shll2 r0 ; r0 set to 0xC4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0BE2E8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BE3B0,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(loc_8C0BE3A6,pc),r0 ; r0 set to 0x140
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0BE34a
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
mov.w @(loc_8C0BE3AA,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0BE34a
mov.w @(loc_8C0BE3AA,pc),r0 ; r0 set to 0x41c
mov 0x14,r5 ; r5 set to 0x14
mov.l @r15,r2
mov r14,r4
mov 0x07,r6 ; r6 set to 0x07
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
mov.b @(0x05,r14),r0
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r14)
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C0BE3C0,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

loc_8C0BE34A:
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BE352:
#data 0x2FE6
#data 0xD3164F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E5891e
#data 0x7001F48d
#data 0xC71680E5
#data 0xE05CF308
#data 0xE068FE37
#data 0xC714FE47
#data 0xE060F308
#data 0xE06CFE37
#data 0x9013FE47
#data 0x233803Ed
#data 0xE6088F04
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0BE394:
#data 0xD30A4F26
#data 0x64E3E514
#data 0x6EF6432b

#align4
loc_8C0BE3A0:
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0BE3A6:
#data 0x0140
#data 0x014b

loc_8C0BE3AA:
#data 0x041c
#data 0x00000130

#align4
loc_8C0BE3B0:
#data bank03.loc_8c034dee

loc_8C0BE3B4:
#data bank15.loc_8c15aeA8

loc_8C0BE3B8:
#data bank03.loc_8c03544c

loc_8C0BE3BC:
#data bank15.loc_8c15aeC0

loc_8C0BE3C0:
#data bank03.loc_8c034e8c
#data 0xC1555555
#data 0x41092492

#align4
loc_8C0BE3CC:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0xD335E034
#data 0xF2E64F22
#data 0xE168F318
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x420BD227
#data 0x200864E3
#data 0x90448B05
#data 0x0E24E200
#data 0x700184E4
#data 0x80E4

loc_8C0BE426:
#data 0x4F26
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BE42C:
mov.l r14,@-r15
mov 0x31,r0 ; r0 set to 0x31
mov 0xFC,r3 ; r3 set to 0xFFFFFFFc
mov r4,r14
mov.b r3,@(r0,r14)
mov r14,r4
mov.b @(0x05,r14),r0
mov.l @(loc_8C0BE4B4,pc),r1 ; r1 set to 0x8C15AED0
extu.b r0,r0 ; r0 set to 0x31
shll2 r0 ; r0 set to 0xC4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0BE446:
#data 0x2FE6
#data 0xD3184F22
#data 0x6E43430b
#data 0x02EC902a
#data 0x8B022228
#data 0x700184E5
#data 0x80E5

loc_8C0BE45E:
#data 0xD116
#data 0xF2E6E038
#data 0xF30D415a
#data 0xFE27F231
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0BE472:
mov.l @(loc_8C0BE4AC,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop

loc_8C0BE478:
mov.l r14,@-r15
mov 0x31,r0 ; r0 set to 0x31
mov 0x04,r3 ; r3 set to 0x04
mov r4,r14
mov.b r3,@(r0,r14)
mov r14,r4
mov.b @(0x05,r14),r0
mov.l @(loc_8C0BE4BC,pc),r1 ; r1 set to 0x8C15AEDc
extu.b r0,r0 ; r0 set to 0x31
shll2 r0 ; r0 set to 0xC4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0BE492:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BE4A6,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0BE4A0:
mov.l @(loc_8C0BE4C0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BE4A6:
#data 0x012c
#data 0x00000141

#align4
loc_8C0BE4AC:
#data bank03.loc_8c034dee

loc_8C0BE4B0:
#data bank03.loc_8c0332E0

loc_8C0BE4B4:
#data bank15.loc_8c15aeD0
#data 0x412B6DB6

#align4
loc_8C0BE4BC:
#data bank15.loc_8c15aeDc

loc_8C0BE4C0:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD34C0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D11
#data 0xD348E120
#data 0x1434314c
#data 0x62F2E300
#data 0x60F21426
#data 0x84019280
#data 0x84F48041
#data 0xE0212100
#data 0xE0260434
#data 0x7F080425
#data 0x000B4F26
#data 0x6043
;----------------------------------------------

loc_8C0BE50A:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xE5032F50
#data 0x6E43D33a
#data 0x430BE600
#data 0x20086463
#data 0x64038D10
#data 0x1434D337
#data 0x142652E6
#data 0x14E5E200
#data 0x804184E1
#data 0x63F0E020
#data 0xE0210434
#data 0x0424935a
#data 0x0435E026

#align4
loc_8C0BE544:
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BE550:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0BE608,pc),r1 ; r1 set to 0x8C15AEE4
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14)
mov.b @(0x04,r14),r0
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BE56C:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0BE60C,pc),r0 ; r0 set to 0x8C15AEF4
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0BE588:
mov.w @(loc_8C0BE5F6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0BE5F8,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0BE5F6,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0BE610,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BE5FA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BE5FC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BE614,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x02,r6 ; r6 set to 0x02
mov.b r2,@(r0,r4)
mov.w @(loc_8C0BE5FE,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.w r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
mov.l @(loc_8C0BE618,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
fmov.s fr3,@(r0,r4)
jmp @r3
lds.l @r15+,pr
#data 0x0304

loc_8C0BE5F6:
#data 0x00Dc

loc_8C0BE5F8:
#data 0x00C0

loc_8C0BE5FA:
#data 0x012c

loc_8C0BE5FC:
#data 0x01A3

loc_8C0BE5FE:
#data 0x0130

#align4
loc_8C0BE600:
#data bank04.loc_8c044F12

loc_8C0BE604:
#data loc_8c0bE550

loc_8C0BE608:
#data bank15.loc_8c15aeE4

loc_8C0BE60C:
#data bank15.loc_8c15aeF4

loc_8C0BE610:
#data bank12.loc_8c129560

loc_8C0BE614:
#data bank12.loc_8c1294C8

loc_8C0BE618:
#data bank03.loc_8c034C38


loc_8C0BE61C:
mov.w @(loc_8C0BE784,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0BE784,pc),r2 ; r2 set to 0xDc
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0BE786,pc),r0 ; r0 set to 0xC0
mov.l @(0x14,r4),r6
mov.l @(loc_8C0BE790,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BE788,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BE78A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BE794,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4)
mov.w @(loc_8C0BE78C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r6),r3 ; r3 ??? bc r6 is ???	
mov.w r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r6),fr3
mov.l @(loc_8C0BE798,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r6),fr3 ; r3 ??? bc r6 is ???	
mov 0x02,r6 ; r6 set to 0x02
fmov.s fr3,@(r0,r4)
jmp @r3
lds.l @r15+,pr

loc_8C0BE68A:
mov.w @(loc_8C0BE784,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0BE786,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0BE784,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0BE790,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BE788,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BE78A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BE794,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x03,r6 ; r6 set to 0x03
mov.b r2,@(r0,r4)
mov.w @(loc_8C0BE78C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.w r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
mov.l @(loc_8C0BE798,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
fmov.s fr3,@(r0,r4)
jmp @r3
lds.l @r15+,pr

loc_8C0BE6F6:
mov.w @(loc_8C0BE784,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0BE784,pc),r2 ; r2 set to 0xDc
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0BE786,pc),r0 ; r0 set to 0xC0
mov.l @(0x14,r4),r6
mov.l @(loc_8C0BE790,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BE788,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BE78A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BE794,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4)
mov.w @(loc_8C0BE78C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r6),r3 ; r3 ??? bc r6 is ???	
mov.w r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r6),fr3
mov.l @(loc_8C0BE798,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r6),fr3 ; r3 ??? bc r6 is ???	
mov 0x03,r6 ; r6 set to 0x03
fmov.s fr3,@(r0,r4)
jmp @r3
lds.l @r15+,pr

loc_8C0BE764:
rts
nop
;----------------------------------------------

loc_8C0BE768:
rts
nop
;----------------------------------------------

loc_8C0BE76C:
rts
nop
;----------------------------------------------

loc_8C0BE770:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0BE79C,pc),r0 ; r0 set to 0x8C15AF10
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0BE784:
#data 0x00Dc

loc_8C0BE786:
#data 0x00C0

loc_8C0BE788:
#data 0x012c

loc_8C0BE78A:
#data 0x01A3

loc_8C0BE78C:
#data 0x0130
#data 0x0000

#align4
loc_8C0BE790:
#data bank12.loc_8c129560

loc_8C0BE794:
#data bank12.loc_8c1294C8

loc_8C0BE798:
#data bank03.loc_8c034C38

loc_8C0BE79C:
#data bank15.loc_8c15af10

loc_8C0BE7A0:
#data 0xE3FC2FE6
#data 0x6E43E031
#data 0x0E344F22
#data 0x430BD30f
#data 0x600E64E3
#data 0x89054011
#data 0xE3009017
#data 0x84E40E34
#data 0x80E47001

#align4
loc_8C0BE7C4:
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0BE7CA:
rts
nop
;----------------------------------------------

loc_8C0BE7CE:
rts
nop
;----------------------------------------------

loc_8C0BE7D2:
rts
nop
;----------------------------------------------

loc_8C0BE7D6:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BE7EA,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0BE7E4:
mov.l @(loc_8C0BE7F0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BE7EA:
#data 0x012c

#align4
loc_8C0BE7EC:
#data bank03.loc_8c034D8c

loc_8C0BE7F0:
#data bank04.loc_8c0450C0

loc_8C0BE7F4:
#data 0x7FF44F22
#data 0x60531F42
#data 0xD3590009
#data 0x80F4E503
#data 0xE6002F60
#data 0x6463430b
#data 0x8D0E2008
#data 0xD3556403
#data 0x314CE120
#data 0x52F21434
#data 0x84F41426
#data 0x2100929b
#data 0x63F0E022
#data 0xE0260434
#data 0x0425

loc_8C0BE82E:
#data 0x7F0c
#data 0x000B4F26
#data 0x4F226043
#data 0x2F427FF4
#data 0x00096053
#data 0x606380F8
#data 0xD3470009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D12
#data 0xE120D343
#data 0x1434314c
#data 0x532662F2
#data 0x62F21436
#data 0x14259377
#data 0x84F8E222
#data 0x2100324c
#data 0x220084F4
#data 0x0435E026
#data 0x4F267F0c
#data 0x6043000b
;----------------------------------------------

loc_8C0BE884:
mov r4,r3
mov.l @(loc_8C0BE96C,pc),r1 ; r1 set to 0x8C15B12c
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BE896:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BE95E,pc),r1 ; r1 set to 0xDc
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0BE95E,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BE970,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BE95C,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14)
mov.l @(0x18,r14),r4
add r4,r2 ; r2 ??? bc r4 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BE95C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BE960,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BE974,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0BE978,pc),r0 ; r0 set to 0x8C15B13c
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov r14,r4
bra loc_8C0BE9Fc
mov.l @r15+,r14

loc_8C0BE90E:
#data 0xC71b
#data 0xF3085546
#data 0xF437E034
#data 0xF308C719
#data 0xF437E038
#data 0x035D901f
#data 0x8B032338
#data 0xF346E034
#data 0xF437F34d

#align4
loc_8C0BE930:
#data 0x6103E034
#data 0xF246315c
#data 0xF318E30a
#data 0xF230E200
#data 0xE038F427
#data 0x315C6103
#data 0xF318F246
#data 0xF427F230
#data 0x0434E024
#data 0x000B9002
#data 0x04000424

loc_8C0BE95C:
#data 0x012c

loc_8C0BE95E:
#data 0x00Dc

loc_8C0BE960:
#data 0x01A3
#data 0x0130

#align4
loc_8C0BE964:
#data bank04.loc_8c044F12

loc_8C0BE968:
#data loc_8c0bE884

loc_8C0BE96C:
#data bank15.loc_8c15b12c

loc_8C0BE970:
#data bank12.loc_8c129560

loc_8C0BE974:
#data bank12.loc_8c1294C8

loc_8C0BE978:
#data bank15.loc_8c15b13c
#data 0x42D55555
#data 0x434DB6Db


loc_8C0BE984:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov r14,r1
mov.l @(loc_8C0BEAAC,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
mov r4,r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x64,r1 ; r1 set to 0x64
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0BE9C0
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x24,r0 ; r0 set to 0x24
mov 0x0A,r3 ; r3 set to 0x0a
mov.b r3,@(r0,r14)
mov.w @(loc_8C0BEAA8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r6
bra loc_8C0BE9Cc
add 0x06,r6

loc_8C0BE9C0:
mov 0x24,r0 ; r0 set to 0x24
mov 0x0C,r3 ; r3 set to 0x0c
mov.b r3,@(r0,r14)
mov.w @(loc_8C0BEAA8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r6
add 0x09,r6

loc_8C0BE9CC:
lds.l @r15+,pr
mov.l @(loc_8C0BEAB0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0BE9D6:
rts
nop
;----------------------------------------------

loc_8C0BE9DA:
mov 0x24,r0 ; r0 set to 0x24
mov 0x0D,r3 ; r3 set to 0x0d
mov 0x00,r5 ; r5 set to 0x00
mov.b r3,@(r0,r4)
mov r5,r0 ; r0 set to 0x00
nop
mov.w r0,@(0x1C,r4)
mov.w @(loc_8C0BEAAA,pc),r0 ; r0 set to 0x12c
rts
mov.b r5,@(r0,r4)
;----------------------------------------------

loc_8C0BE9EE:
mov.w @(loc_8C0BEAAA,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov 0x0B,r2 ; r2 set to 0x0b
mov.b r3,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
rts
mov.b r2,@(r0,r4)
;----------------------------------------------

loc_8C0BE9FC:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0BEAB4,pc),r0 ; r0 set to 0x8C15B150
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0BEA10:
mov r4,r3
mov.l @(loc_8C0BEAB8,pc),r1 ; r1 set to 0x8C15B164
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BEA22:
#data 0x5545
#data 0x600C8454
#data 0x89028802
#data 0x20088455
#data 0x8903

loc_8C0BEA32:
#data 0xE003
#data 0xA0248045
#data 0xE604

loc_8C0BEA3A:
#data 0x854e
#data 0x814E70Ff
#data 0x2008600f
#data 0x84458B20
#data 0xF48DE301
#data 0x7001E603
#data 0x902A8045
#data 0xE0060434
#data 0xE068814e
#data 0xE06CF447
#data 0xC716F447
#data 0xE034F408
#data 0xF346F256
#data 0xF231E05c
#data 0xF427F243
#data 0xF256E038
#data 0xE060F346
#data 0xF243F231
#data 0xF427

loc_8C0BEA82:
#data 0xD30b
#data 0xE51B432b

#align4
loc_8C0BEA88:
#data 0x0009000b
;----------------------------------------------

#align4
loc_8C0BEA8C:
#data 0x84545545
#data 0x8802600c
#data 0x84558902
#data 0x89112008

#align4
loc_8C0BEA9C:
#data 0xE003D304
#data 0x8045E604
#data 0xE51B432b

loc_8C0BEAA8:
#data 0x01A3

loc_8C0BEAAA:
#data 0x012c

#align4
loc_8C0BEAAC:
#data bank12.loc_8c1294C8

loc_8C0BEAB0:
#data bank03.loc_8c034C38

loc_8C0BEAB4:
#data bank15.loc_8c15b150

loc_8C0BEAB8:
#data bank15.loc_8c15b164
#data 0x41000000

#align4
loc_8C0BEAC0:
#data 0x70FF854e
#data 0x600F814e
#data 0x891D2008
#data 0xD354E15c
#data 0xE034314c
#data 0xF246F318
#data 0x314CE168
#data 0xF427F230
#data 0xF246E05c
#data 0xE160F318
#data 0xF230314c
#data 0xE038F427
#data 0xF318F246
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E060
#data 0xF230F318
#data 0xF427432b

#align4
loc_8C0BEB08:
#data 0xE3608445
#data 0x80457001
#data 0x000BE022
#data 0x0434
;----------------------------------------------

loc_8C0BEB16:
#data 0x2FE6
#data 0x2FD66E43
#data 0x844454E5
#data 0x8802600c
#data 0x84458902
#data 0x89082008

#align4
loc_8C0BEB2C:
#data 0xE003D33d
#data 0x80E564E3
#data 0xE6046DF6
#data 0x432BE51b
#data 0x6EF6

loc_8C0BEB3E:
#data 0xE022
#data 0x00ECDD39
#data 0x31ECE122
#data 0xC97C7004
#data 0xE0222100
#data 0x600C00Ec
#data 0x03DD4000
#data 0xF208C734
#data 0x435AE034
#data 0xF322F32d
#data 0xE022FE37
#data 0x633C03Ec
#data 0x33DC4300
#data 0x63038531
#data 0xC72E435a
#data 0xF32DF108
#data 0xE038F312
#data 0xE022FE37
#data 0x633C03Ec
#data 0x33DC4300
#data 0x62038532
#data 0x0E24E024
#data 0x034D9041
#data 0x89032338
#data 0xF3E6E034
#data 0xFE37F34d

#align4
loc_8C0BEBA4:
#data 0xD323E034
#data 0x314C6103
#data 0xE605F2E6
#data 0xE51BF318
#data 0xFE27F230
#data 0x6103E038
#data 0xF2E6314c
#data 0xF31864E3
#data 0xFE27F230
#data 0x07ECE022
#data 0x4700677c
#data 0x6DF637Dc
#data 0x67038573
#data 0x6EF6432b

#align4
loc_8C0BEBDC:
#data 0x7FFC4F22
#data 0x430BD30f
#data 0x600E2F42
#data 0x89024011
#data 0xE00263F2
#data 0x8034

loc_8C0BEBF2:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;----------------------------------------------

loc_8C0BEBFA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0BEC1C,pc),r0 ; r0 set to 0x150
sts.l pr,@-r15
mov.l @(0x18,r14),r13
add r13,r0 ; r0 ??? bc r13 is ???	
mov.b @(0x01,r0),r0
cmp/eq 0x24,r0
bt loc_8C0BEC38
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14)
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BEC1E,pc),r0 ; r0 set to 0x12c
bra loc_8C0BEC6e
mov.b r3,@(r0,r14)
#data 0x0130

loc_8C0BEC1C:
#data 0x0150

loc_8C0BEC1E:
#data 0x012c

#align4
loc_8C0BEC20:
#data bank03.loc_8c034D8c

loc_8C0BEC24:
#data bank03.loc_8c034C38

loc_8C0BEC28:
#data bank15.loc_8c15af2c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BEC34:
#data bank03.loc_8c034CD6


loc_8C0BEC38:
mov.l @(loc_8C0BED88,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
mov r13,r2
mov.l @(loc_8C0BED8C,pc),r3 ; r3 set to 0x8C1294C8
mov r14,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x64,r1 ; r1 set to 0x64
mov r14,r4
add r13,r1 ; r1 ??? bc r13 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov.l @(loc_8C0BED90,pc),r1 ; r1 set to 0x8C15B174
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov.b @(0x05,r14),r0
lds.l @r15+,pr
extu.b r0,r0 ; r0 set to 0x34
shll2 r0 ; r0 set to 0xD0
mov.l @r15+,r13
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BEC6E:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BEC76:
mov.l @(0x18,r4),r5
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8C0BEC9e
mov.b @(0x05,r4),r0
add 0x01,r0
mov.b r0,@(0x05,r4)
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r3
tst r3,r3
bf/s loc_8C0BEC96
mov 0x1B,r5 ; r5 set to 0x1b
bra loc_8C0BEC98
mov 0x08,r6

loc_8C0BEC96:
mov 0x0B,r6 ; r6 set to 0x0b

loc_8C0BEC98:
mov.l @(loc_8C0BED94,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
nop

loc_8C0BEC9E:
rts
nop
;----------------------------------------------

loc_8C0BECA2:
rts
nop
;----------------------------------------------

loc_8C0BECA6:
rts
nop
;----------------------------------------------

loc_8C0BECAA:
rts
nop
;----------------------------------------------

loc_8C0BECAE:
mov r4,r3
mov.l @(loc_8C0BED98,pc),r1 ; r1 set to 0x8C15B184
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0BECC0:
#data 0x6E432FE6
#data 0x54E52FD6
#data 0x600C8444
#data 0x89028802
#data 0x20088445
#data 0x8908

loc_8C0BECD6:
#data 0xD32f
#data 0x64E3E001
#data 0x6DF680E5
#data 0xE51BE604
#data 0x6EF6432b

#align4
loc_8C0BECE8:
#data 0xDD2CE022
#data 0xE12200Ec
#data 0x700431Ec
#data 0x2100C97c
#data 0x00ECE022
#data 0x4000600c
#data 0xC72703Dd
#data 0xE034F208
#data 0xF32D435a
#data 0xFE37F322
#data 0x03ECE022
#data 0x4300633c
#data 0x853133Dc
#data 0x435A6303
#data 0xF108C720
#data 0xF312F32d
#data 0xFE37E038
#data 0x03ECE022
#data 0x4300633c
#data 0x853233Dc
#data 0xE0246203
#data 0x90220E24
#data 0x2338034d
#data 0xE0348903
#data 0xF34DF3E6
#data 0xFE37

loc_8C0BED4E:
#data 0xE034
#data 0x6103D315
#data 0xF2E6314c
#data 0xF318E605
#data 0xF230E51b
#data 0xE038FE27
#data 0x314C6103
#data 0x64E3F2E6
#data 0xF230F318
#data 0xE022FE27
#data 0x677C07Ec
#data 0x37DC4700
#data 0x85736DF6
#data 0x432B6703
#data 0x01306EF6

#align4
loc_8C0BED88:
#data bank03.loc_8c034D8c

loc_8C0BED8C:
#data bank12.loc_8c1294C8

loc_8C0BED90:
#data bank15.loc_8c15b174

loc_8C0BED94:
#data bank03.loc_8c034C38

loc_8C0BED98:
#data bank15.loc_8c15b184

loc_8C0BED9C:
#data bank15.loc_8c15b02c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BEDA8:
#data bank03.loc_8c034CD6

loc_8C0BEDAC:
#data 0x7FFC4F22
#data 0x430BD346
#data 0x600E2F42
#data 0x89024011
#data 0xE00263F2
#data 0x8034

loc_8C0BEDC2:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;----------------------------------------------

loc_8C0BEDCA:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F229D77
#data 0x3D4C54E6
#data 0x6D0384D1
#data 0x233863De
#data 0x906F892c
#data 0xD33AE201
#data 0x0E2461E3
#data 0x72346243
#data 0x430B7134
#data 0x9066E00c
#data 0x431163De
#data 0x0E25024d
#data 0xF34670D8
#data 0xE050FE37
#data 0xFE37F346
#data 0xF346E054
#data 0xFE378D06
#data 0xE37F9058
#data 0xF3462D39
#data 0xFE37E038

#align4
loc_8C0BEE20:
#data 0x67DE85Ee
#data 0x890F3700
#data 0xD32AE022
#data 0xE51B06Ec
#data 0x430B7601
#data 0x60DE64E3
#data 0x81EEA006

#align4
loc_8C0BEE3C:
#data 0xE4009042
#data 0x60430E44
#data 0x81EE0009

#align4
loc_8C0BEE48:
#data 0x6DF64F26
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BEE50:
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0BEEC2,pc),r0 ; r0 set to 0x150
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r3
tst r3,r3
bf loc_8C0BEE6a
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r4)
add 0x04,r15
lds.l @r15+,pr
rts
nop
;----------------------------------------------

loc_8C0BEE6A:
mov.w @(loc_8C0BEEC4,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov r5,r2
mov r4,r1
mov.b r3,@(r0,r4)
add 0x34,r2
mov.l @(loc_8C0BEED0,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0BEECA,pc),r0 ; r0 set to 0x141
mov 0xFA,r3 ; r3 set to 0xFFFFFFFa
mov.b @(r0,r5),r2
shad r3, r2
mov.b r2,@r15
extu.b r2,r2
tst r2,r2
bt loc_8C0BEEA6
mov.w @(loc_8C0BEEC4,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r1,@(r0,r4)
mov.b @r15,r0 ; r0 ??? bc r15 is ???	
and 0x03,r0
mov r0,r6
add 0x0B,r6
add 0x04,r15
mov.l @(loc_8C0BEED8,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr

loc_8C0BEEA6:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;----------------------------------------------

loc_8C0BEEAE:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BEEC4,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0BEEBC:
mov.l @(loc_8C0BEEDC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BEEC2:
#data 0x0150

loc_8C0BEEC4:
#data 0x012c
#data 0x0130
#data 0x041c

loc_8C0BEECA:
#data 0x0141

#align4
loc_8C0BEECC:
#data bank03.loc_8c034D8c

loc_8C0BEED0:
#data bank12.loc_8c1294C8

loc_8C0BEED4:
#data bank03.loc_8c034CD6

loc_8C0BEED8:
#data bank03.loc_8c034C38

loc_8C0BEEDC:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0xEE007FFc
#data 0xE503D352
#data 0x66E32F42
#data 0x64E3430b
#data 0x8D0B2008
#data 0xE0206403
#data 0x1434D34e
#data 0x62F29392
#data 0x04E41426
#data 0x04E4E021
#data 0x0435E026
#data 0xE503D348
#data 0x430BE600
#data 0x20086463
#data 0x64038D0c
#data 0xE020D345
#data 0xE3011434
#data 0x142662F2
#data 0xE02104E4
#data 0x0434927a
#data 0x0425E026
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BEF44:
mov r4,r3
mov.l @(loc_8C0BF03C,pc),r1 ; r1 set to 0x8C15B18c
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BEF56:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BF02C,pc),r1 ; r1 set to 0xDc
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0BF02C,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BF040,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BF02A,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14)
mov.l @(0x18,r14),r4
add r4,r2 ; r2 ??? bc r4 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF02A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BF02E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BF044,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0BEFC6
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
bra loc_8C0BEFCc
mov.b r3,@(r0,r14)

loc_8C0BEFC6:
mov 0x24,r0 ; r0 set to 0x24
mov 0x0C,r1 ; r1 set to 0x0c
mov.b r1,@(r0,r14)

loc_8C0BEFCC:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0BF048,pc),r0 ; r0 set to 0x8C15B19C, r0 set to 0x8C15B19c
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov r14,r4
bra loc_8C0BF058
mov.l @r15+,r14

#align4
loc_8C0BEFE4:
#data 0x6E432FE6
#data 0x54E69022
#data 0xC717054e
#data 0x901EF408
#data 0x2338034d
#data 0xC7158901
#data 0xF408

loc_8C0BEFFE:
#data 0xE034
#data 0xF340F356
#data 0xE038FE37
#data 0xE51BF356
#data 0x9010FE37
#data 0x64E3034d
#data 0xE0210E35
#data 0xD30E06Ec
#data 0x76104600
#data 0x6EF6432b


loc_8C0BF024:
rts
nop
;----------------------------------------------
#data 0x0401

loc_8C0BF02A:
#data 0x012c

loc_8C0BF02C:
#data 0x00Dc

loc_8C0BF02E:
#data 0x01A3
#data 0x0130020c

#align4
loc_8C0BF034:
#data bank04.loc_8c044F12

loc_8C0BF038:
#data loc_8c0bEF44

loc_8C0BF03C:
#data bank15.loc_8c15b18c

loc_8C0BF040:
#data bank12.loc_8c129560

loc_8C0BF044:
#data bank12.loc_8c1294C8

loc_8C0BF048:
#data bank15.loc_8c15b19c
#data 0x43555555
#data 0xC3555555

#align4
loc_8C0BF054:
#data bank03.loc_8c034C38


loc_8C0BF058:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0
tst r0,r0
bf loc_8C0BF086
mov.l @(loc_8C0BF0C0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
mov.w @(loc_8C0BF0B8,pc),r0 ; r0 set to 0x140
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0BF09e
mov.w @(loc_8C0BF0BA,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0BF09e
mov.b @(0x05,r14),r0
add 0x01,r0
bra loc_8C0BF09e
mov.b r0,@(0x05,r14)

loc_8c0bf086:
mov.l @(loc_8c0bf0c0,pc),r2
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8c0bf09e
mov.b @(0x04,r14),r0 
mov 0x00,r3
add 0x01,r0
mov.b r0,@(0x04,r14) 
mov.w @(loc_8c0bf0bc,pc),r0
mov.b r3,@(r0,r14) 

loc_8C0BF09E:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BF0A4:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BF0BC,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0BF0B2:
mov.l @(loc_8C0BF0C4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BF0B8:
#data 0x0140

loc_8C0BF0BA:
#data 0x01D0

loc_8C0BF0BC:
#data 0x012c
#data 0x0000

#align4
loc_8C0BF0C0:
#data bank03.loc_8c034D8c

loc_8C0BF0C4:
#data bank04.loc_8c0450C0
#data 0xFFFB2FE6
#data 0x7FFC4F22
#data 0xE600D348
#data 0x6E43E503
#data 0xFF5AFF4c
#data 0x6463430b
#data 0x8D1A2008
#data 0xD3446403
#data 0xE020E200
#data 0x937B1434
#data 0x042414E6
#data 0x0435E026
#data 0x02EC9077
#data 0x8D032228
#data 0xF3FCE034
#data 0xF34DA001
#data 0xF2E6F3Fc
#data 0xF427F230
#data 0xF2E6E038
#data 0xF230F3F8
#data 0x6043F427
#data 0x7F040009
#data 0xFFF94F26
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BF128:
mov r4,r3
mov.l @(loc_8C0BF1FC,pc),r1 ; r1 set to 0x8C15B1A4
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BF13A:
mov.w @(loc_8C0BF1EE,pc),r3 ; r3 set to 0xDc
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0BF1EE,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BF1EC,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4)
mov.l @(0x18,r4),r2
add r3,r2
mov.l @(loc_8C0BF200,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF1EC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BF1F0,pc),r0 ; r0 set to 0x1A3
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
add 0x50,r2
mov.l @(loc_8C0BF204,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x17,r5 ; r5 set to 0x17
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x18,r6 ; r6 set to 0x18
mov.b r3,@(r0,r4)
mov.w @(loc_8C0BF1F2,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r2
mov.w @(r0,r2),r3
mov 0x00,r2 ; r2 set to 0x00
mov.w r3,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0BF208,pc),r3 ; r3 set to 0x8C034E8c
mov.b r2,@(r0,r4)
jmp @r3
lds.l @r15+,pr

loc_8C0BF1BE:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BF20C,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0BF1D6
mov.l @r15,r4
add 0x04,r15
bra loc_8C0BF1De
lds.l @r15+,pr

loc_8C0BF1D6:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;----------------------------------------------

loc_8C0BF1DE:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4)

loc_8C0BF1E2:
mov.l @(loc_8C0BF210,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop
#data 0x01D20500

loc_8C0BF1EC:
#data 0x012c

loc_8C0BF1EE:
#data 0x00Dc

loc_8C0BF1F0:
#data 0x01A3

loc_8C0BF1F2:
#data 0x0130

#align4
loc_8C0BF1F4:
#data bank04.loc_8c044F12

loc_8C0BF1F8:
#data loc_8c0bF128

loc_8C0BF1FC:
#data bank15.loc_8c15b1A4

loc_8C0BF200:
#data bank12.loc_8c129560

loc_8C0BF204:
#data bank12.loc_8c1294C8

loc_8C0BF208:
#data bank03.loc_8c034e8c

loc_8C0BF20C:
#data bank03.loc_8c034dee

loc_8C0BF210:
#data bank04.loc_8c0450C0

loc_8C0BF214:
#data 0x7FFC4F22
#data 0xE503D357
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3546403
#data 0x1434E020
#data 0x62F2E300
#data 0x929D1426
#data 0xE0260434
#data 0x0425

loc_8C0BF23E:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;----------------------------------------------

loc_8c0bf246:
mov.l r14,@-r15
mov 0x03,r5
mov.l r13,@-r15
mov r4,r14
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov 0x00,r10
mov.l r9,@-r15
mov r10,r6
mov.l r8,@-r15
mov 0x01,r9
sts.l pr,@-r15
mov.l @(loc_8c0bf378,pc),r12
mov.w @(loc_8C0BF374,pc),r13
jsr @r12
mov r10,r4
tst r0,r0
bt/s loc_8c0bf288
mov r0,r4
mov 0x20,r0
mov.l @(loc_8c0bf37c,pc),r2
mov.l r2,@(0x10,r4) 
mov.l @(0x18,r14),r3
mov.l r3,@(0x18,r4) 
mov.l r14,@(0x14,r4) 
mov.b r9,@(r0,r4) 
mov 0x21,r0
mov.b r10,@(r0,r4) 
mov 0x22,r0
mov.b r10,@(r0,r4) 
mov 0x26,r0
mov.w r13,@(r0,r4) 

loc_8c0bf288:
mov 0x03,r5
mov 0x00,r6
jsr @r12
mov r6,r4
tst r0,r0
bt/s loc_8c0bf2b0
mov r0,r4
mov 0x20,r0
mov.l @(loc_8c0bf37c,pc),r2
mov.l r2,@(0x10,r4) 
mov.l @(0x18,r14),r3
mov.l r3,@(0x18,r4) 
mov.l r14,@(0x14,r4) 
mov.b r9,@(r0,r4) 
mov 0x21,r0
mov.b r9,@(r0,r4) 
mov 0x22,r0
mov.b r9,@(r0,r4) 
mov 0x26,r0
mov.w r13,@(r0,r4) 

loc_8c0bf2b0:
mov 0x03,r5
mov 0x00,r6
jsr @r12
mov r6,r4
tst r0,r0
bt/s loc_8c0bf2da
mov r0,r4
mov.l @(loc_8c0bf37c,pc),r2
mov 0x20,r0
mov.l r2,@(0x10,r4) 
mov 0x02,r2
mov.l @(0x18,r14),r3
mov.l r3,@(0x18,r4) 
mov.l r14,@(0x14,r4) 
mov.b r2,@(r0,r4) 
mov 0x21,r0
mov.b r10,@(r0,r4) 
mov 0x22,r0
mov.b r10,@(r0,r4) 
mov 0x26,r0
mov.w r13,@(r0,r4) 

loc_8c0bf2da:
mov 0x03,r5
mov 0x00,r6
jsr @r12
mov r6,r4
tst r0,r0
bt/s loc_8c0bf304
mov r0,r4
mov.l @(loc_8c0bf37c,pc),r2
mov 0x20,r0
mov.l r2,@(0x10,r4) 
mov 0x02,r2
mov.l @(0x18,r14),r3
mov.l r3,@(0x18,r4) 
mov.l r14,@(0x14,r4) 
mov.b r2,@(r0,r4) 
mov 0x21,r0
mov.b r10,@(r0,r4) 
mov 0x22,r0
mov.b r9,@(r0,r4) 
mov 0x26,r0
mov.w r13,@(r0,r4) 

loc_8c0bf304:
mov 0x03,r11
mov r10,r8

loc_8c0bf308:
mov 0x03,r5
mov 0x00,r6
jsr @r12
mov r6,r4
tst r0,r0
bt/s loc_8c0bf330
mov r0,r4
mov 0x20,r0
mov.l @(loc_8c0bf37c,pc),r2
mov.l r2,@(0x10,r4) 
mov.l @(0x18,r14),r3
mov.l r3,@(0x18,r4) 
mov.l r14,@(0x14,r4) 
mov.b r11,@(r0,r4) 
mov 0x21,r0
mov.b r8,@(r0,r4) 
mov 0x22,r0
mov.b r10,@(r0,r4) 
mov 0x26,r0
mov.w r13,@(r0,r4) 

loc_8c0bf330:
mov 0x03,r5
mov 0x00,r6
jsr @r12
mov r6,r4
tst r0,r0
bt/s loc_8c0bf358
mov r0,r4
mov 0x20,r0
mov.l @(loc_8c0bf37c,pc),r2
mov.l r2,@(0x10,r4) 
mov.l @(0x18,r14),r3
mov.l r3,@(0x18,r4) 
mov.l r14,@(0x14,r4) 
mov.b r11,@(r0,r4) 
mov 0x21,r0
mov.b r8,@(r0,r4) 
mov 0x22,r0
mov.b r9,@(r0,r4) 
mov 0x26,r0
mov.w r13,@(r0,r4) 

loc_8c0bf358:
add 0x01,r8
cmp/ge r11,r8
bf loc_8c0bf308
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
;----------------------------------------------

loc_8C0BF374:
#data 0x0501
#data 0x0000

#align4
loc_8c0bf378:
#data bank04.loc_8c044f12

loc_8c0bf37c:
#data loc_8c0bf380

loc_8C0BF380:
mov r4,r3
mov.l @(loc_8C0BF4EC,pc),r1 ; r1 set to 0x8C15B1B4
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BF392:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0BF4F0,pc),r0 ; r0 set to 0x8C15B1C4
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0BF3AE:
mov.w @(loc_8C0BF4E2,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BF4E2,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x18,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF4F4,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF4E4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BF4E6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BF4F8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov 0x0C,r6 ; r6 set to 0x0c
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0BF4FC,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r4)
jmp @r3
lds.l @r15+,pr

loc_8C0BF42C:
mov.w @(loc_8C0BF4E2,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BF4E2,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x14,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF4F4,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF4E4,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4)
mov r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(0x14,r4),r0 ; r0 ??? bc r4 is ???	
add 0x50,r1
mov.b @(0x02,r0),r0
mov.b r0,@(0x02,r4)
mov.l @(0x14,r4),r0
mov.b @(0x01,r0),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x14,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0BF4E6,pc),r0 ; r0 set to 0x1A3
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4)
mov.l @(0x14,r4),r2
mov.l @(loc_8C0BF4F8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x14,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4)
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r2
mov 0x0C,r3 ; r3 set to 0x0c
mov.w @(loc_8C0BF4E8,pc),r0 ; r0 set to 0x130
extu.b r2,r2
mov.w r2,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4)
mov.w @(loc_8C0BF4E8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt/s loc_8C0BF4Ae
mov.l @(0x14,r4),r2
mova @(loc_8C0BF500,pc),r0  ; r0 set to 0x8C0BF500
bra loc_8C0BF4B2
fmov.s @r0,fr3

loc_8C0BF4AE:
mova @(loc_8C0BF504,pc),r0  ; r0 init to 0x8C0BF504
fmov.s @r0,fr3

loc_8C0BF4B2:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r2),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4)
mov.w @(loc_8C0BF4E8,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0BF50c
mova @(loc_8C0BF508,pc),r0  ; r0 set to 0x8C0BF508, r0 set to 0x8C0BF508
bra loc_8C0BF510
fmov.s @r0,fr3

loc_8C0BF4E2:
#data 0x00Dc

loc_8C0BF4E4:
#data 0x012c

loc_8C0BF4E6:
#data 0x01A3

loc_8C0BF4E8:
#data 0x0130
#data 0x0000

#align4
loc_8C0BF4EC:
#data bank15.loc_8c15b1B4

loc_8C0BF4F0:
#data bank15.loc_8c15b1C4

loc_8C0BF4F4:
#data bank12.loc_8c129560

loc_8C0BF4F8:
#data bank12.loc_8c1294C8

loc_8C0BF4FC:
#data bank03.loc_8c034e8c

loc_8C0BF500:
#data 0xC3055555

#align4
loc_8C0BF504:
#data 0x43055555

#align4
loc_8C0BF508:
#data 0xC1700000


loc_8C0BF50C:
mova @(loc_8C0BF648,pc),r0  ; r0 init to 0x8C0BF648
fmov.s @r0,fr3

loc_8C0BF510:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0BF64C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r4)
mov 0x10,r5 ; r5 set to 0x10, r5 set to 0x10
mov.w @(loc_8C0BF63E,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov 0x0D,r6 ; r6 set to 0x0D, r6 set to 0x0d
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13D, r0 set to 0x13d
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13E, r0 set to 0x13e
mov 0x30,r5 ; r5 set to 0x30, r5 set to 0x30
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13F, r0 set to 0x13f
mov.b r5,@(r0,r4)
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
lds.l @r15+,pr

loc_8C0BF532:
mov.w @(loc_8C0BF640,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BF640,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x14,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF650,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF642,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4)
mov r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(0x14,r4),r0 ; r0 ??? bc r4 is ???	
add 0x50,r1
mov.b @(0x02,r0),r0
mov.b r0,@(0x02,r4)
mov.l @(0x14,r4),r0
mov.b @(0x01,r0),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x14,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0BF644,pc),r0 ; r0 set to 0x1A3
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4)
mov.l @(0x14,r4),r2
mov.l @(loc_8C0BF654,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x14,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4)
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r2
mov 0x0C,r3 ; r3 set to 0x0c
mov.w @(loc_8C0BF646,pc),r0 ; r0 set to 0x130
extu.b r2,r2
mov.w r2,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4)
mov.w @(loc_8C0BF646,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt/s loc_8C0BF5C0
mov.l @(0x14,r4),r2
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0BF658,pc),r0 ; r0 set to 0x8C15B1D4
extu.b r3,r3
shll2 r3
shll r3
fmov.s @(r0,r3),fr3
bra loc_8C0BF5D0
nop

loc_8C0BF5C0:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r1
mov.l @(loc_8C0BF658,pc),r0 ; r0 set to 0x8C15B1D4
extu.b r1,r1
shll2 r1
shll r1
fmov.s @(r0,r1),fr3
fneg fr3

loc_8C0BF5D0:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r2),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4)
mov.w @(loc_8C0BF646,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0BF60c
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0BF65C,pc),r0 ; r0 set to 0x8C15B1D8, r0 set to 0x8C15B1D8
extu.b r3,r3
shll2 r3
shll r3
fmov.s @(r0,r3),fr3
bra loc_8C0BF61c
nop

loc_8C0BF60C:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r2
mov.l @(loc_8C0BF65C,pc),r0 ; r0 set to 0x8C15B1D8
extu.b r2,r2
shll2 r2
shll r2
fmov.s @(r0,r2),fr3
fneg fr3

loc_8C0BF61C:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0BF64C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r4)
mov 0x10,r5 ; r5 set to 0x10, r5 set to 0x10
mov.w @(loc_8C0BF63E,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13D, r0 set to 0x13d
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13E, r0 set to 0x13e
mov 0x30,r5 ; r5 set to 0x30, r5 set to 0x30
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13F, r0 set to 0x13f
mov.b r5,@(r0,r4)
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
lds.l @r15+,pr

loc_8C0BF63E:
#data 0x013c

loc_8C0BF640:
#data 0x00Dc

loc_8C0BF642:
#data 0x012c

loc_8C0BF644:
#data 0x01A3

loc_8C0BF646:
#data 0x0130

#align4
loc_8C0BF648:
#data 0x41700000

#align4
loc_8C0BF64C:
#data bank03.loc_8c034e8c

loc_8C0BF650:
#data bank12.loc_8c129560

loc_8C0BF654:
#data bank12.loc_8c1294C8

loc_8C0BF658:
#data bank15.loc_8c15b1D4

loc_8C0BF65C:
#data bank15.loc_8c15b1D8


loc_8C0BF660:
mov.w @(loc_8C0BF7C2,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BF7C2,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x14,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF7CC,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF7C4,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4)
mov r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(0x14,r4),r0 ; r0 ??? bc r4 is ???	
add 0x50,r1
mov.b @(0x02,r0),r0
mov.b r0,@(0x02,r4)
mov.l @(0x14,r4),r0
mov.b @(0x01,r0),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x14,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0BF7C6,pc),r0 ; r0 set to 0x1A3
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4)
mov.l @(0x14,r4),r2
mov.l @(loc_8C0BF7D0,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x14,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4)
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r2
mov 0x0C,r3 ; r3 set to 0x0c
mov.w @(loc_8C0BF7C8,pc),r0 ; r0 set to 0x130
extu.b r2,r2
mov.w r2,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4)
mov.w @(loc_8C0BF7C8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt/s loc_8C0BF6F2
mov.l @(0x14,r4),r2
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0BF7D4,pc),r0 ; r0 set to 0x8C15B1E4
extu.b r3,r3
mov r3,r1
shll r3
add r1,r3
shll2 r3
fmov.s @(r0,r3),fr3
bra loc_8C0BF704
fneg fr3

loc_8C0BF6F2:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0BF7D4,pc),r0 ; r0 set to 0x8C15B1E4
extu.b r3,r3
mov r3,r1
shll r3
add r1,r3
shll2 r3
fmov.s @(r0,r3),fr3

loc_8C0BF704:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0BF7D4,pc),r5 ; r5 set to 0x8C15B1E4, r5 set to 0x8C15B1E4
fmov.s @(r0,r2),fr2
fldi0 fr4
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r4),r2
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
mov.l @(0x14,r4),r3
extu.b r2,r2
mov r2,r1
shll r2
add r1,r2
shll2 r2
add r5,r2
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r3),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4)
mov.w @(loc_8C0BF7C8,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0BF75e
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r4),r3
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
extu.b r3,r3
mov r3,r2
shll r3
add r2,r3
shll2 r3
add r5,r3
fmov.s @(r0,r3),fr3
bra loc_8C0BF774
nop

loc_8C0BF75E:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r2
mov 0x08,r0 ; r0 set to 0x08
extu.b r2,r2
mov r2,r3
shll r2
add r3,r2
shll2 r2
add r5,r2
fmov.s @(r0,r2),fr3
fneg fr3

loc_8C0BF774:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0BF7D8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r4)
mov 0x10,r5 ; r5 set to 0x10, r5 set to 0x10
mov.w @(loc_8C0BF7CA,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov 0x0F,r6 ; r6 set to 0x0F, r6 set to 0x0f
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13D, r0 set to 0x13d
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13E, r0 set to 0x13e
mov 0x30,r5 ; r5 set to 0x30, r5 set to 0x30
mov.b r5,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13F, r0 set to 0x13f
mov.b r5,@(r0,r4)
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
lds.l @r15+,pr

loc_8C0BF796:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0BF7DC,pc),r0 ; r0 set to 0x8C15B214
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0BF7AA:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BF7E0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0BF7E4
lds.l @r15+,pr
mov r14,r4
bra loc_8C0BF846
mov.l @r15+,r14

loc_8C0BF7C2:
#data 0x00Dc

loc_8C0BF7C4:
#data 0x012c

loc_8C0BF7C6:
#data 0x01A3

loc_8C0BF7C8:
#data 0x0130

loc_8C0BF7CA:
#data 0x013c

#align4
loc_8C0BF7CC:
#data bank12.loc_8c129560

loc_8C0BF7D0:
#data bank12.loc_8c1294C8

loc_8C0BF7D4:
#data bank15.loc_8c15b1E4

loc_8C0BF7D8:
#data bank03.loc_8c034e8c

loc_8C0BF7DC:
#data bank15.loc_8c15b214

loc_8C0BF7E0:
#data bank03.loc_8c034dee


loc_8C0BF7E4:
mov.w @(loc_8C0BF856,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0BF800
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14)
bsr loc_8C0BF246
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_8C0BF85C,pc),r2 ; r2 set to 0x8C042008
mov 0x20,r5 ; r5 set to 0x20
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0BF800:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BF806:
mov.l r14,@-r15
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0BF860,pc),r3 ; r3 set to 0x8C034DEe
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
sts.l pr,@-r15
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68
fmov.s @(r0,r14),fr2
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_8C0BF864,pc),r2 ; r2 set to 0x8C03340c
jsr @r2
mov r14,r4
tst r0,r0
bf loc_8C0BF840
lds.l @r15+,pr
mov r14,r4
bra loc_8C0BF846
mov.l @r15+,r14

loc_8C0BF840:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0BF846:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4)
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BF858,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4)

loc_8C0BF850:
mov.l @(loc_8C0BF868,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0BF856:
#data 0x0141

loc_8C0BF858:
#data 0x012c
#data 0x0000

#align4
loc_8C0BF85C:
#data bank04.loc_8c042008

loc_8C0BF860:
#data bank03.loc_8c034dee

loc_8C0BF864:
#data bank03.loc_8c03340c

loc_8C0BF868:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60531F42
#data 0xD34B0009
#data 0x80F4E503
#data 0xE6002F61
#data 0x6463430b
#data 0x8D0D2008
#data 0xE1216403
#data 0x314CD346
#data 0x93801434
#data 0x142652F2
#data 0x210084F4
#data 0x814E60F1
#data 0x0435E026
#data 0x4F267F0c
#data 0x6043000b
;----------------------------------------------

loc_8C0BF8AC:
mov r4,r3
mov.l @(loc_8C0BF9AC,pc),r1 ; r1 set to 0x8C15B224
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BF8BE:
mov.w @(loc_8C0BF998,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF9B0,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.l @(0x18,r4),r5
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BF998,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF99A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BF99C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BF9B4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x07,r2 ; r2 set to 0x07
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
lds.l @r15+,pr

loc_8C0BF938:
mov.l @(0x18,r4),r5
mov.b @(0x03,r5),r0
tst r0,r0
bf/s loc_8C0BF958
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov.w @(loc_8C0BF99E,pc),r0 ; r0 set to 0x19F, r0 set to 0x19f
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
tst r2,r2
bf loc_8C0BF964
mov.w @(loc_8C0BF9A0,pc),r0 ; r0 set to 0x1A0, r0 set to 0x1A0
mov.b @(r0,r5),r2
tst r2,r2
bt loc_8C0BF958
mov.w @(loc_8C0BF99A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
rts
mov.b r6,@(r0,r4)
;----------------------------------------------

loc_8C0BF958:
mov.w @(0x1C,r4),r0
add 0xFF,r0
mov.w r0,@(0x1C,r4)
exts.w r0,r0
tst r0,r0
bf loc_8C0BF968

loc_8C0BF964:
bra loc_8C0BF986
nop

#align4
loc_8c0bf968:
mov.w @(loc_8c0bf99a,pc),r0
mov.b r6,@(r0,r4) 
mov 0x21,r0
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8c0bf982
mov.l @(loc_8C0BF9B8,pc),r3
mov.w @(loc_8c0bf99a,pc),r1
mov.l @r3,r0
add r4,r1
mov.l @(0x1C,r0),r0
and 0x01,r0 
mov.b r0,@r1

loc_8c0bf982:
rts 
nop 

loc_8C0BF986:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4)
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BF99A,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4)

loc_8C0BF990:
mov.l @(loc_8C0BF9BC,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop
#data 0x0502

loc_8C0BF998:
#data 0x00Dc

loc_8C0BF99A:
#data 0x012c

loc_8C0BF99C:
#data 0x01A3

loc_8C0BF99E:
#data 0x019f

loc_8C0BF9A0:
#data 0x01A0
#data 0x0000

#align4
loc_8C0BF9A4:
#data bank04.loc_8c044F12

loc_8C0BF9A8:
#data loc_8c0bF8Ac

loc_8C0BF9AC:
#data bank15.loc_8c15b224

loc_8C0BF9B0:
#data bank12.loc_8c129560

loc_8C0BF9B4:
#data bank12.loc_8c1294C8
loc_8c0bf9b8:
#data 0x8C26823c

#align4
loc_8C0BF9BC:
#data bank04.loc_8c0450C0

loc_8C0BF9C0:
#data 0x7FF84F22
#data 0xE600D342
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D33e
#data 0x52F11434
#data 0x63F01426
#data 0x0434926d
#data 0x0425E026

#align4
loc_8C0BF9EC:
#data 0x4F267F08
#data 0x6043000b
;----------------------------------------------

#align4
loc_8C0BF9F4:
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD334E503
#data 0xE6026E43
#data 0x64E3430b
#data 0x8D122008
#data 0xD3316403
#data 0x71346143
#data 0x52E61434
#data 0x1426D32f
#data 0x723462E3
#data 0x430B14E5
#data 0x62F0E00c
#data 0x934AE020
#data 0xE0260424
#data 0x0435

loc_8C0BFA32:
#data 0x6043
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0BFA3E:
mov r4,r3
mov.l @(loc_8C0BFADC,pc),r1 ; r1 set to 0x8C15B2A8
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BFA50:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BFAC4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BFAC4,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BFAE0,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BFAC6,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0BFAC8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0BFACA,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0BFAD8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x00,r4 ; r4 set to 0x00
mov.b r2,@(r0,r14)
mov r4,r0 ; r0 set to 0x00
nop
mov.w r0,@(0x1C,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0BFAE4
mov.w @(loc_8C0BFACC,pc),r0 ; r0 set to 0x158
bra loc_8C0BFAE8
mov.b r4,@(r0,r14)
#data 0x0600

loc_8C0BFAC4:
#data 0x00Dc

loc_8C0BFAC6:
#data 0x00C0

loc_8C0BFAC8:
#data 0x012c

loc_8C0BFACA:
#data 0x01A3

loc_8C0BFACC:
#data 0x0158
#data 0x0000

#align4
loc_8C0BFAD0:
#data bank04.loc_8c044F12

loc_8C0BFAD4:
#data loc_8c0bFA3e

loc_8C0BFAD8:
#data bank12.loc_8c1294C8

loc_8C0BFADC:
#data bank15.loc_8c15b2A8

loc_8C0BFAE0:
#data bank12.loc_8c129560

loc_8c0bfae4:
mov.w @(loc_8C0BFBF8,pc),r0
mov.b r5,@(r0,r14) 

loc_8c0bfae8:
mov 0x31,r0
mov 0xFF,r3
mov.b r3,@(r0,r14) 
mov 0x1B,r5
mov.w @(loc_8C0BFBF8,pc),r0
mov.l @(loc_8c0bfc00,pc),r3
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
lds.l @r15+,pr 
mov r14,r4
mov.l @r15+,r14

loc_8c0bfb00:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8c0bfbfa,pc),r0
mov 0x00,r5
mov r4,r14
mov.l @(0x18,r14),r4
mov.b r5,@(r0,r14) 
mov 0x24,r0
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14) 
mov 0x20,r0
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8c0bfbba
mov r4,r2
mov.l @(loc_8c0bfc04,pc),r3
mov r14,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0
mov.w @(loc_8c0bfbfa,pc),r0
mov.b r5,@(r0,r14) 
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8c0bfbdc
mov.w @(loc_8C0BFBFC,pc),r3
add r4,r3
mov.b @(0x01,r3),r0 
tst r0,r0
bt loc_8c0bfbdc
mov.w @(loc_8C0BFBFC,pc),r3
mov r15,r5
mov.l @(loc_8c0bfc08,pc),r7
add r4,r3
mov.b @(0x01,r3),r0 
shll2 r0
mov.w @(r0,r7),r3
mova @(loc_8C0BFC0C,pc),r0 
fmov.s @r0,fr2
lds r3,fpul 
mov.w @(loc_8C0BFBFE,pc),r0
float fpul,fr3
fmul fr2,fr3
fmov.s fr3,@r5
mov.w @(r0,r4),r3
tst r3,r3
bf/s loc_8c0bfb6c
mov 0x34,r0
mov r5,r6
fmov.s @r6,fr3
fneg fr3
fmov.s fr3,@r6

loc_8c0bfb6c:
fmov.s @(r0,r14),fr2
mov r14,r2
fmov.s @r5,fr3
mov.w @(loc_8C0BFBFC,pc),r3
fadd fr3,fr2
add r4,r3
fmov.s fr2,@(r0,r14) 
mov 0x38,r0
add r0,r2
mov.l r2,@-r15
mov.b @(0x01,r3),r0 
shll2 r0
add r0,r7
mov.w @(0x02,r7),r0 
mov r0,r3
lds r3,fpul 
mov.l @r15+,r3
mova @(loc_8C0BFC10,pc),r0 
fmov.s @r0,fr0
float fpul,fr3
fmov.s @r3,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r3
mov.w @(0x1C,r14),r0 
add 0xFF,r0
mov.w r0,@(0x1C,r14) 
exts.w r0,r0
cmp/pz r0
bt loc_8c0bfbb0
mov 0x03,r0
mov 0x01,r5
mov.w r0,@(0x1C,r14) 
bsr loc_8c0bf9f4
mov r14,r4

loc_8c0bfbb0:
mov.l @(loc_8c0bfc14,pc),r2
jsr @r2
mov r14,r4
bra loc_8c0bfbce
nop 

loc_8c0bfbba:
mov.l @(loc_8c0bfc14,pc),r3
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8c0bfbce
mov.b @(0x04,r14),r0 
add 0x01,r0
bra loc_8c0bfbdc
mov.b r0,@(0x04,r14) 

loc_8c0bfbce:
mov.l @(loc_8C0BFC18,pc),r3
mov.w @(loc_8c0bfbfa,pc),r1
mov.l @r3,r0
add r14,r1
mov.l @(0x1C,r0),r0
and 0x01,r0 
mov.b r0,@r1

loc_8c0bfbdc:
add 0x08,r15
lds.l @r15+,pr 
rts 
mov.l @r15+,r14

loc_8C0BFBE4:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0BFBFA,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0BFBF2:
mov.l @(loc_8C0BFC1C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop
loc_8c0bfbf8:
#data 0x0158

loc_8C0BFBFA:
#data 0x012c
loc_8c0bfbfc:
#data 0x0150
loc_8c0bfbfe:
#data 0x0130

#align4
loc_8C0BFC00:
#data bank03.loc_8c034C38

loc_8C0BFC04:
#data bank12.loc_8c1294C8

loc_8C0BFC08:
#data bank15.loc_8c15b234
loc_8c0bfc0c:
#data 0x3FD55555
loc_8c0bfc10:
#data 0x40092492

#align4
loc_8C0BFC14:
#data bank03.loc_8c034D8c
loc_8c0bfc18:
#data 0x8C26823c

#align4
loc_8C0BFC1C:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD3580009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D10
#data 0xE120D354
#data 0x1434314c
#data 0x62F2939b
#data 0x84F41426
#data 0xE0262100
#data 0x90950435
#data 0x032D62F2
#data 0x04359093
#data 0x4F267F08
#data 0x6043000b
;----------------------------------------------

#align4
loc_8C0BFC64:
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD347E503
#data 0xE6026E43
#data 0x64E3430b
#data 0x8D122008
#data 0xD3446403
#data 0x71346143
#data 0x52E61434
#data 0x1426D342
#data 0x723462E3
#data 0x430B14E5
#data 0x62F0E00c
#data 0x9370E020
#data 0xE0260424
#data 0x0435

loc_8C0BFCA2:
#data 0x6043
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0BFCAE:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xE5032F50
#data 0x6E43D334
#data 0x430BE601
#data 0x2008E400
#data 0x64038D12
#data 0x6143D331
#data 0x14347134
#data 0xD33052E6
#data 0x62E31426
#data 0x14E57234
#data 0xE00C430b
#data 0xE02062F0
#data 0x0424934b
#data 0x0435E026

#align4
loc_8C0BFCEC:
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;----------------------------------------------

loc_8C0BFCF8:
mov r4,r3
mov.l @(loc_8C0BFD98,pc),r1 ; r1 set to 0x8C15B2B8
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BFD0A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BFD84,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BFD84,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BFD9C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0BFD86,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BFD88,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14)
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
mov.w @(loc_8C0BFD8A,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0BFD94,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0BFDA0,pc),r0 ; r0 set to 0x8C15B2C8
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov r14,r4
bra loc_8C0BFF86
mov.l @r15+,r14
#data 0x0601
#data 0x00CC0158

loc_8C0BFD84:
#data 0x00Dc

loc_8C0BFD86:
#data 0x00C0

loc_8C0BFD88:
#data 0x012c

loc_8C0BFD8A:
#data 0x01A3

#align4
loc_8C0BFD8C:
#data bank04.loc_8c044F12

loc_8C0BFD90:
#data loc_8c0bFCF8

loc_8C0BFD94:
#data bank12.loc_8c1294C8

loc_8C0BFD98:
#data bank15.loc_8c15b2B8

loc_8C0BFD9C:
#data bank12.loc_8c129560

loc_8C0BFDA0:
#data bank15.loc_8c15b2C8


loc_8C0BFDA4:
mov.w @(loc_8C0BFED8,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b r3,@(r0,r4)
mov r5,r2
mov.l @(loc_8C0BFEDC,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mova @(loc_8C0BFEE0,pc),r0  ; r0 set to 0x8C0BFEE0
fmov.s @r0,fr4
mov.w @(loc_8C0BFEDA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
tst r3,r3
bt loc_8C0BFDCe
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
bra loc_8C0BFDD4
fadd fr4,fr3

loc_8C0BFDCE:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
fsub fr4,fr3

loc_8C0BFDD4:
fmov.s fr3,@(r0,r4)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bf loc_8C0BFDE8
mov.l @(loc_8C0BFEE4,pc),r1 ; r1 set to 0x433EB6DB, r1 set to 0x433EB6Db
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
lds r1,fpul
bra loc_8C0BFDF0
fsts fpul,fr3

loc_8C0BFDE8:
mov.l @(loc_8C0BFEE8,pc),r1 ; r1 set to 0x43070000
mov 0x38,r0 ; r0 set to 0x38
lds r1,fpul
fsts fpul,fr3

loc_8C0BFDF0:
fmov.s @(r0,r4),fr2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFF, r3 set to 0xFFFFFFFf
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
fmov.s fr2,@(r0,r4)
mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
mov.b r3,@(r0,r4)
mov.l @(loc_8C0BFEEC,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr

loc_8C0BFE06:
mov 0x31,r0 ; r0 set to 0x31
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r3,@(r0,r4)
mov 0x03,r6 ; r6 set to 0x03
mov.l @(loc_8C0BFEEC,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

loc_8C0BFE14:
mov 0x31,r0 ; r0 set to 0x31
mov r5,r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov r4,r1
sts.l pr,@-r15
mov.b r3,@(r0,r4)
add 0x34,r2
mov.l @(loc_8C0BFEDC,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mova @(loc_8C0BFEF0,pc),r0  ; r0 set to 0x8C0BFEF0
fmov.s @r0,fr4
mov.w @(loc_8C0BFEDA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt loc_8C0BFE3e
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
bra loc_8C0BFE44
fadd fr4,fr3

loc_8C0BFE3E:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
fsub fr4,fr3

loc_8C0BFE44:
mov.l @(loc_8C0BFEF4,pc),r1 ; r1 set to 0x43542492, r1 set to 0x43542492
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
lds r1,fpul
mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
fmov.s @(r0,r4),fr2
mov.l @(loc_8C0BFEEC,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
jmp @r3
lds.l @r15+,pr

loc_8C0BFE5E:
#data 0xE031
#data 0xE3FF6253
#data 0x4F226143
#data 0x72340434
#data 0x7134D31b
#data 0xE00C430b
#data 0xD123C720
#data 0xE060F308
#data 0xF437415a
#data 0xF308C71e
#data 0xF437E06c
#data 0xF308C71d
#data 0xF437E05c
#data 0xF38DE068
#data 0xE038F437
#data 0xF30DF246
#data 0xF427F230
#data 0xF408C719
#data 0x034D9019
#data 0x89052338
#data 0xF246E05c
#data 0xF427F24d
#data 0xF408C715

#align4
loc_8C0BFEB8:
#data 0xD30CE034
#data 0xE51BF346
#data 0xF340E605
#data 0x432BF437
#data 0x4F26


loc_8C0BFECA:
mov 0x31,r0 ; r0 set to 0x31
mov 0xF0,r3 ; r3 set to 0xFFFFFFF0
mov.b r3,@(r0,r4)
mov 0x06,r6 ; r6 set to 0x06
mov.l @(loc_8C0BFEEC,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

loc_8C0BFED8:
#data 0x012c

loc_8C0BFEDA:
#data 0x0130

#align4
loc_8C0BFEDC:
#data bank12.loc_8c1294C8

loc_8C0BFEE0:
#data 0x42820000

#align4
loc_8C0BFEE4:
#data 0x433EB6Db

#align4
loc_8C0BFEE8:
#data 0x43070000

#align4
loc_8C0BFEEC:
#data bank03.loc_8c034C38

loc_8C0BFEF0:
#data 0x41F00000

#align4
loc_8C0BFEF4:
#data 0x43542492
#data 0x414DB6Db
#data 0xBF092492
#data 0x40555555
#data 0x433C9249
#data 0x42A00000
#data 0xC2A00000


loc_8C0BFF10:
mov 0x31,r0 ; r0 set to 0x31
mov 0x88,r3 ; r3 set to 0xFFFFFF88
mov.b r3,@(r0,r4)
mov 0x01,r3 ; r3 set to 0x01
mov.w @(loc_8C0C002C,pc),r0 ; r0 set to 0x130
mov 0x07,r6 ; r6 set to 0x07
mov.w @(r0,r4),r2
xor r3,r2
mov.w r2,@(r0,r4)
mov 0x22,r0 ; r0 set to 0x22
mov.l @(0x14,r4),r1
mov.b @(r0,r1),r2
mov.l @(loc_8C0C0030,pc),r0 ; r0 set to 0x8C15B2Ec
extu.b r2,r2
mov.b @(r0,r2),r1
mov.l @(loc_8C0C0034,pc),r0 ; r0 set to 0x8C15B2Fc
extu.b r1,r1
shll r1
mov.w @(r0,r1),r2
mov 0x48,r0 ; r0 set to 0x48
extu.w r2,r2
mov.l r2,@(r0,r4)
mov.l @(loc_8C0C0038,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov 0x1B,r5

loc_8C0BFF42:
mov 0x31,r0 ; r0 set to 0x31
mov r5,r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov r4,r1
sts.l pr,@-r15
mov.b r3,@(r0,r4)
add 0x34,r2
mov.l @(loc_8C0C003C,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mova @(loc_8C0C0040,pc),r0  ; r0 set to 0x8C0C0040
mov.l @(loc_8C0C0038,pc),r3 ; r3 set to 0x8C034C38
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
mov 0x60,r1 ; r1 set to 0x60
fmov.s fr3,@(r0,r4)
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x04,r6 ; r6 set to 0x04
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
jmp @r3
lds.l @r15+,pr

loc_8C0BFF78:
mov 0x31,r0 ; r0 set to 0x31
mov 0xF0,r3 ; r3 set to 0xFFFFFFF0
mov.b r3,@(r0,r4)
mov 0x08,r6 ; r6 set to 0x08
mov.l @(loc_8C0C0038,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

loc_8C0BFF86:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0C0044,pc),r0 ; r0 set to 0x8C15B308
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0BFFA4:
#data 0x4F222FE6
#data 0x430BD327
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349037

#align4
loc_8C0BFFC0:
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0BFFC6:
mov r4,r3
mov.l @(loc_8C0C004C,pc),r1 ; r1 set to 0x8C15B32c
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BFFD8:
mov.w @(loc_8C0C002E,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b r3,@(r0,r4)
add 0x15,r0 ; r0 set to 0x141
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
cmp/eq 0x00,r0
bt/s loc_8C0BFFF2
fldi0 fr4
cmp/eq 0x03,r0
bt loc_8C0BFFFa
bra bank0c.loc_8C0C005c
nop

loc_8C0BFFF2:
mov.w @(loc_8C0C002E,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
bra bank0c.loc_8C0C00A0
mov.b r3,@(r0,r4)

loc_8C0BFFFA:
#data 0x8445
#data 0x80457001
#data 0xF447E068
#data 0xF308C712
#data 0xF437E05c
#data 0x034D900e
#data 0x8B032338
#data 0xF346E05c
#data 0xF437F34d

#align4
loc_8C0C001C:
#data 0xF308C70d
#data 0xF437E060
#data 0xF308C70c
#data 0xE06CA039

loc_8C0C002C:
#data 0x0130

loc_8C0C002E:
#data 0x012c

#align4
loc_8C0C0030:
#data bank15.loc_8c15b2Ec

loc_8C0C0034:
#data bank15.loc_8c15b2Fc

loc_8C0C0038:
#data bank03.loc_8c034C38

loc_8C0C003C:
#data bank12.loc_8c1294C8

loc_8C0C0040:
#data 0x434FDB6d

#align4
loc_8C0C0044:
#data bank15.loc_8c15b308

loc_8C0C0048:
#data bank03.loc_8c034D8c

loc_8C0C004C:
#data bank15.loc_8c15b32c
#data 0x3FD55555
#data 0x414DB6Db
#data 0xBF092492
