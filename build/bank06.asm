;==============================================
loc_8c060030:
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c060048
	mov.l @(0x64,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8c060048
	mov.w @(0x52,PC),r0
	mov.w @(0x4E,PC),r3
	mov.w r3,@(r0,r4)

loc_8c060048:
	rts
	mov 0x00,r0

;==============================================
loc_8c06004c:
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c060064
	mov.l @(0x48,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8c060064
	mov.w @(0x36,PC),r0
	mov.w @(0x36,PC),r3
	mov.w r3,@(r0,r4)

loc_8c060064:
	rts
	mov 0x00,r0

;==============================================
loc_8c060068:
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c060092
	mov.l @(0x2C,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8c060092
	mov.w @(0x1E,PC),r0
	mov.w @(0x1E,PC),r1
	mov.b @(r0,r4),r3
	mov.w @(0x14,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r1,r3
	mov.w r3,@(r0,r4)

loc_8c060092:
	rts
	mov 0x00,r0

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c060096:
	#data 0x1100
loc_8c060098:
	#data 0x04dc
loc_8c06009a:
	#data 0x2100
loc_8c06009c:
	#data 0x01d2
loc_8c06009e:
	#data 0x2500
	#align4
loc_8c0600a0:
	#data 0x8c26823c

;==============================================
loc_8c0600a4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x12C,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0600dc
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x11C,PC),r3
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xF8,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(0xF6,PC),r0
	mov.w r2,@(r0,r4)

loc_8c0600dc:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0600e8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c06040e
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0xEC,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c060102:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0xC4,PC),r3
	mov r4,r14
	add r14,r3
	mov.l r3,@(0x4,r15)
	mov.w @(0xBE,PC),r3
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @(0x18,r14),r13
	add r13,r3
	mov.l r3,@r15
	bsr loc_8c0602f0
	mov r14,r4
	mov.l @(0x4,r15),r3
	mov.w @(0xA6,PC),r0
	mov.w @r3,r2
	mov.w @(r0,r13),r3
	cmp/eq r3,r2
	bt loc_8c060136
	mov 0x02,r0
	bra loc_8c060196
	mov.b r0,@(0x4,r14)

loc_8c060136:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c060144
	mov.l @r15,r3
	mov 0x01,r0
	mov.b r0,@(0x2,r3)

loc_8c060144:
	mov.w @(0x8E,PC),r0
	mov r13,r5
	mov.l @(0x9C,PC),r2
	mov.b @(r0,r14),r6
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r6,r6
	extu.b r3,r3
	shll r3
	add r3,r6
	mov r6,r3
	shll2 r6
	add r3,r6
	shll r6
	add r2,r6
	bsr loc_8c060372
	mov r14,r4
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c060196
	mov.w @(0x66,PC),r0
	mov 0x57,r2
	mov 0x00,r4
	mov.l @(0x74,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
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

loc_8c060196:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0601a0:
	mov.l r14,@-r15
	mov 0x24,r0
	mov 0x0B,r3
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x5,r14),r0
	mov.l @(0x40,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0601ba:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c0601f8
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c060292
	mov.l @r15+,r14

;##############################################
loc_8c0601d0:
	#data 0x0158
loc_8c0601d2:
	#data 0x00cc
loc_8c0601d4:
	#data 0x02a4
loc_8c0601d6:
	#data 0x01a3
loc_8c0601d8:
	#data 0x0255
loc_8c0601da:
	#data 0x01a1
	#align4
loc_8c0601dc:
	#data bank04.loc_8c044f12
loc_8c0601e0:
	#data loc_8c0600e8
loc_8c0601e4:
	#data bank15.loc_8c151e08
loc_8c0601e8:
	#data bank13.loc_8c13acd0
loc_8c0601ec:
	#data 0x8c2896b0
loc_8c0601f0:
	#data bank15.loc_8c151e18
loc_8c0601f4:
	#data bank03.loc_8c03340c

;----------------------------------------------
loc_8c0601f8:
	mov.w @(0xDC,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c06020c
	mov.w @(0xD6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c060214
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c06020c:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06025c
	mov.l @r15+,r14

loc_8c060214:
	mov 0x5C,r1
	mov.l @(0xC8,PC),r3
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
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x8C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c06025c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x74,PC),r3
	mov.l @(0x18,r14),r4
	mov 0x15,r5
	mov 0x0D,r6
	add r4,r3
	mov.l r3,@r15
	mov.b @(0x5,r14),r0
	mov.l @(0x74,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c06028a
	mov.l @r15,r3
	mov 0x00,r0
	mov.b r0,@(0x2,r3)

loc_8c06028a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c060292:
	mov 0x02,r0
	mov.w @(0x44,PC),r3
	mov.b r0,@(0x4,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov.l @(0x18,r4),r5
	tst r2,r2
	bf.s loc_8c0602a8
	add r3,r5
	mov 0x00,r0
	mov.b r0,@(0x2,r5)

loc_8c0602a8:
	rts
	nop

;==============================================
loc_8c0602ac:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0602c6
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x18,PC),r0
	mov.b r3,@(r0,r14)

loc_8c0602c6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0602cc:
	mov.w @(0xE,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)

loc_8c0602d2:
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0602d8:
	#data 0x019e
loc_8c0602da:
	#data 0x019f
loc_8c0602dc:
	#data 0x02a4
loc_8c0602de:
	#data 0x012c
	#align4
loc_8c0602e0:
	#data bank03.loc_8c034dee
loc_8c0602e4:
	#data bank04.loc_8c045748
loc_8c0602e8:
	#data bank03.loc_8c034e8c
loc_8c0602ec:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c0602f0:
	mov.w @(0x11E,PC),r1
	mov.w @(0x11C,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r4),r2
	add r4,r1
	mov.l @(0x128,PC),r3
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x10E,PC),r0
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
	mov.w @(0xEA,PC),r0
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
	mov.l @(0xE4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x20,r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0x24,r3
	mov.w @(0xBE,PC),r0
	mov.b r2,@(r0,r4)
	add 0xFF,r0
	mov.b r2,@(r0,r4)
	add 0x03,r0
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov 0x0B,r2
	mov.b r3,@(r0,r4)
	mov r3,r0
	nop
	lds.l @r15+,pr
	rts
	mov.b r2,@(r0,r4)

;==============================================
loc_8c060372:
	mov 0x34,r0
	mov.l r14,@-r15
	fmov @(r0,r5),fr3
	mov r6,r14
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @r14,r3
	mov.w @(0x4,r14),r0
	lds r3,fpul
	mov r0,r3
	mov.w @(0x8C,PC),r0
	float fpul,fr4
	mov.w @(r0,r5),r2
	lds r3,fpul
	tst r2,r2
	bt.s loc_8c06039c
	float fpul,fr5
	fneg fr4
	fneg fr5

loc_8c06039c:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x38,r2
	add r4,r2
	fadd fr5,fr3
	mov 0x42,r5
	fmov fr3,@(r0,r4)
	mov.w @(0x6,r14),r0
	fmov @r2,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x5C,r0
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r2
	fmov fr4,@(r0,r4)
	mov.w @(0x2,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x60,r0
	float fpul,fr3
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x46,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	mov.b @(0x9,r14),r0
	mov.w @(0x3E,PC),r1
	mov 0x00,r5
	mov.l @(0x48,PC),r3
	add r4,r1
	mov.b r0,@r1
	mov.w @(0x36,PC),r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov 0x15,r5
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.b @(0x8,r14),r0
	mov.l @(0x28,PC),r2
	extu.b r0,r6
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c06040e:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c060412:
	#data 0x00dc
loc_8c060414:
	#data 0x012c
loc_8c060416:
	#data 0x01a3
loc_8c060418:
	#data 0x013d
loc_8c06041a:
	#data 0x0130
loc_8c06041c:
	#data 0x019c
loc_8c06041e:
	#data 0x01a1
loc_8c060420:
	#data 0x01ac
	#align4
loc_8c060424:
	#data bank12.loc_8c129560
loc_8c060428:
	#data bank12.loc_8c1294c8
loc_8c06042c:
	#data 0x8c2896b0
loc_8c060430:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c060434:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x04,r0
	mov.l @(0x140,PC),r3
	mov.b r5,@r15
	mov 0x01,r5
	mov r4,r14
	mov 0x00,r6
	fmov fr4,fr15
	fmov fr5,@(r0,r15)
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06048c
	mov r0,r4
	mov.l @(0x12C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.l r14,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0x104,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c060472
	fneg fr15

loc_8c060472:
	mov.w @(0xFC,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(0xFA,PC),r0
	mov.w r3,@(r0,r4)
	mov.w @(0xF8,PC),r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	add 0xF8,r0
	fmov fr15,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(0xEC,PC),r0
	fmov fr3,@(r0,r4)

loc_8c06048c:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

loc_8c06049a:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x0C,r11
	mov.l r10,@-r15
	mov r4,r10
	mov.l r9,@-r15
	mov 0x00,r4
	mov.l r8,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0xC8,PC),r8
	mov r4,r12
	mov.l @(0xCC,PC),r9

loc_8c0604ba:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r8
	mov r10,r4
	tst r0,r0
	bt.s loc_8c0604e6
	mov r0,r4
	mov 0x20,r0
	mov.l @(0xB8,PC),r2
	mov.l r2,@(0x10,r4)
	mov.b r14,@(r0,r4)
	mov 0x26,r0
	mov.l r10,@(0x18,r4)
	mov.w r14,@(r0,r4)
	add 0x68,r0
	mov.b r12,@(r0,r4)
	mov 0x10,r0
	mov.l @r9,r3
	add 0x01,r12
	mov.b @(r0,r3),r2
	mov.w @(0x90,PC),r0
	mov.b r2,@(r0,r4)

loc_8c0604e6:
	add 0x01,r13
	exts.b r13,r3
	cmp/ge r11,r3
	bf loc_8c0604ba
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
loc_8c060500:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	mov.l @(0x80,PC),r2
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.l @r2,r3
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	shll2 r0
	shll r0
	lds r0,fpul
	mova @(0x68,PC),r0
	fmov @r0,fr2
	mov.w @(0x52,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bf.s loc_8c060534
	fmul fr2,fr4
	fneg fr4

loc_8c060534:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c06053e:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.l @(0x40,PC),r5
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(0x44,PC),r4
	tst r3,r3
	bf loc_8c060598
	mov.w @(0x28,PC),r2
	mov.l @(0x18,r14),r3
	mov.l @(0x3C,PC),r1
	add r3,r2
	mov.w @(0x22,PC),r3
	mov.l r2,@r4
	mov r14,r4
	add r14,r3
	mov.l r3,@r5
	mov.b @(0x4,r14),r0
	lds.l @r15+,pr
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c060570:
	#data 0x01d2
loc_8c060572:
	#data 0x0158
loc_8c060574:
	#data 0x009a
loc_8c060576:
	#data 0x0098
loc_8c060578:
	#data 0x0094
loc_8c06057a:
	#data 0x0130
loc_8c06057c:
	#data 0x02a4
loc_8c06057e:
	#data 0x0088
	#align4
loc_8c060580:
	#data bank04.loc_8c044f12
loc_8c060584:
	#data loc_8c06053e
loc_8c060588:
	#data 0x8c28c5a4
loc_8c06058c:
	#data 0x3fd55555
loc_8c060590:
	#data 0x8c28c5ac
loc_8c060594:
	#data bank15.loc_8c151e20

;==============================================
loc_8c060598:
	mov.w @(0x116,PC),r3
	mov.l @(0x18,r14),r2
	add r2,r3
	mov.w @(0x112,PC),r2
	mov.l r3,@r4
	add r14,r2
	mov.l r2,@r5
	mov.w @(0x10A,PC),r2
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.l @(0x108,PC),r3
	mov.l r2,@r3
	bsr loc_8c060500
	mov r14,r4
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x100,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0605c6:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	mov.l @(0xF4,PC),r5
	mov 0x08,r1
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	mov.l @r5,r3
	fmov @(r0,r4),fr2
	add r3,r1
	fmov @r1,fr3
	mov 0x0C,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	mov.l @r5,r3
	fmov @(r0,r4),fr2
	add r3,r1
	fmov @r1,fr3
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c0605fa:
	mov.l @(0xC4,PC),r5
	mov 0x0C,r3
	mov.l @r5,r4
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c060622
	mov.b @(0x3,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x3,r4)
	extu.b r0,r0
	cmp/pl r0
	bt loc_8c060622
	mov.l @r5,r1
	mov 0x02,r0
	mov.b r0,@(0x3,r1)
	mov.l @r5,r2
	mov.b @(0x2,r2),r0
	add 0x01,r0
	mov.b r0,@(0x2,r2)

loc_8c060622:
	rts
	nop

loc_8c060626:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c060650
	mov 0x02,r0
	mov.w r0,@(0x1C,r4)
	mov.l @(0x88,PC),r4
	mov.l @r4,r3
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	mov.l @r4,r3
	mov.b @r3,r2
	mov 0x08,r3
	cmp/ge r3,r2
	bf loc_8c060650
	mov.l @r4,r1
	mov 0x05,r2
	mov.b r2,@r1

loc_8c060650:
	rts
	nop

;==============================================
loc_8c060654:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c06066e
	mov.l @(0x5C,PC),r2
	mov 0x02,r0
	mov.w r0,@(0x1C,r4)
	mov.l @r2,r3
	mov.b @r3,r1
	add 0xFF,r1
	mov.b r1,@r3

loc_8c06066e:
	rts
	nop

;==============================================
loc_8c060672:
	mov.l @(0x44,PC),r3
	mov.l @(0x48,PC),r5
	mov.l r14,@-r15
	mov.l @r3,r7
	mov.l @r5,r6
	mov.b @r7,r1
	mov.b @r6,r2
	cmp/eq r1,r2
	bt loc_8c0606ae
	mov.b @r7,r1
	mov.b r1,@r6
	mov.l @r5,r6
	mov.l @r5,r1
	mov.b @r6,r6
	mov.b @(0x6,r1),r0
	mov r6,r2
	shll r6
	tst r0,r0
	add r2,r6
	bt.s loc_8c0606a2
	mov 0x00,r14
	mov.l @r5,r14
	mov.b @(0x1,r14),r0
	mov r0,r14

loc_8c0606a2:
	mov.l @(0x20,PC),r3
	add r6,r14
	mov 0x19,r5
	extu.b r14,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c0606ae:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0606b2:
	#data 0x02a4
loc_8c0606b4:
	#data 0x0088
	#align4
loc_8c0606b8:
	#data 0x8c28c5a8
loc_8c0606bc:
	#data bank15.loc_8c151e30
loc_8c0606c0:
	#data 0x8c28c5a4
loc_8c0606c4:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0606c8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x154,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x158,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x146,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x13E,PC),r0
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
	mov.w @(0x11A,PC),r0
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
	mov 0x02,r12
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x1,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bt.s loc_8c060754
	mov 0x00,r13
	mov r12,r0
	nop
	mov.b r0,@(0x4,r14)
	mov.w @(0xD8,PC),r0
	bra loc_8c0607a0
	mov.b r13,@(r0,r14)

loc_8c060754:
	mov.w @(0xD2,PC),r0
	mov.b r13,@(r0,r14)
	bsr loc_8c0605c6
	mov r14,r4
	mov.l @(0xDC,PC),r4
	mov 0x24,r0
	mov.b r13,@(r0,r14)
	mov.l @r4,r3
	mov r3,r2
	mov r13,r0
	nop
	mov.b r0,@(0x7,r2)
	mov.b r0,@r3
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0
	mov 0x0C,r3
	mov.b r3,@(r0,r14)
	mov 0x42,r5
	mov.w @(0xAE,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov.l @r4,r3
	mov r13,r0
	nop
	mov.b r0,@(0x2,r3)
	mov.l @r4,r3
	mov r12,r0
	nop
	mov r14,r4
	mov.b r0,@(0x3,r3)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c06049a
	mov.l @r15+,r14

loc_8c0607a0:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0607aa:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0605c6
	mov r4,r14
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x88,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0607c4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bf.s loc_8c0607e4
	mov 0x00,r7
	mov.w @(0x54,PC),r1
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c0607f4

loc_8c0607e4:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x3C,PC),r0
	mov.b r7,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0607f4:
	mov.w @(0x3A,PC),r0
	mov.l @(0x18,r14),r5
	mov.l @(0x40,PC),r4
	mov.b @(r0,r5),r5
	extu.b r5,r5
	mov r5,r0
	nop
	cmp/eq 0x04,r0
	bt.s loc_8c060844
	mov 0x02,r6
	mov r5,r0
	nop
	cmp/eq 0x06,r0
	bt loc_8c060844
	mov.b @(0x5,r14),r0
	mov 0x04,r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.l @r4,r3
	mov.b r2,@r3
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c060828:
	#data 0x00dc
loc_8c06082a:
	#data 0x012c
loc_8c06082c:
	#data 0x01a3
loc_8c06082e:
	#data 0x019c
loc_8c060830:
	#data 0x0159
loc_8c060832:
	#data 0x0158
	#align4
loc_8c060834:
	#data bank12.loc_8c129560
loc_8c060838:
	#data bank12.loc_8c1294c8
loc_8c06083c:
	#data 0x8c28c5a4
loc_8c060840:
	#data bank15.loc_8c151e40

;==============================================
loc_8c060844:
	mov.l @(0x13C,PC),r5
	mov 0x3C,r0
	mov 0x01,r1
	mov.w @(r0,r5),r3
	mov 0x3B,r0
	mov.b @(r0,r5),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c060888
	mov.l @r4,r1
	mov r7,r0
	nop
	mov.b r0,@(0x7,r1)
	mov.l @(0x18,r14),r3
	mov.w @(0x1C,r3),r0
	cmp/pl r0
	bt loc_8c06087c
	mov.b @(0x5,r14),r0
	mov 0x04,r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.l @r4,r3
	mov.b r2,@r3
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c06087c:
	bsr loc_8c0605fa
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c060626
	mov.l @r15+,r14

loc_8c060888:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14


;==============================================
loc_8c06088e:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xE4,PC),r1
	sts.l pr,@-r15
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt.s loc_8c0608b2
	mov 0x00,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xD0,PC),r0
	mov.b r4,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0608b2:
	mov.l @(0xD4,PC),r2
	mov.l @r2,r3
	mov r4,r0
	nop
	mov.b r0,@(0x7,r3)
	bsr loc_8c060654
	mov r14,r4
	mov.l @(0xC4,PC),r3
	mov.l @r3,r2
	mov.b @r2,r1
	cmp/pz r1
	bt loc_8c0608d0
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c0608d0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0608d6:
	mov.l r14,@-r15
	mov 0x00,r3
	mov.w @(0x9E,PC),r0
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	bsr loc_8c0608f2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r2
	mov 0x2B,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0608f2:
	mov.l @(0x9C,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c0608f8:
	mov.w @(0x82,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x90,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x74,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x68,PC),r0
	mov 0x01,r6
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(0x46,PC),r0
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
	mov.l @(0x44,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov.b @(0x1,r4),r0
	mov.l @(0x18,r4),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bt.s loc_8c06099c
	mov 0x00,r5
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	lds.l @r15+,pr
	mov.w @(0x4,PC),r0
	rts
	mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06097a:
	#data 0x0159
loc_8c06097c:
	#data 0x012c
loc_8c06097e:
	#data 0x00dc
loc_8c060980:
	#data 0x01a3
	#align4
loc_8c060984:
	#data 0x8c2895f0
loc_8c060988:
	#data 0x8c28c5a4
loc_8c06098c:
	#data bank04.loc_8c042008
loc_8c060990:
	#data bank04.loc_8c0450c0
loc_8c060994:
	#data bank12.loc_8c129560
loc_8c060998:
	#data bank12.loc_8c1294c8

;==============================================
loc_8c06099c:
	mov.w @(0xC2,PC),r0
	mov 0x0C,r3
	mov 0x42,r7
	mov.b r5,@(r0,r4)
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov 0x0B,r3
	mov.w @(0xB6,PC),r0
	mov 0xFF,r2
	mov.b r7,@(r0,r4)
	add 0x01,r0
	mov.b r7,@(r0,r4)
	mov 0x24,r0
	mov.l @(0xB0,PC),r7
	mov.b r3,@(r0,r4)
	mov.l @r7,r3
	mov.b r2,@r3
	mov.l @r7,r3
	mov r5,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r7,r3
	mov r6,r0
	nop
	mov.b r0,@(0x1,r3)
	mov 0x56,r3
	mov.w @(0x92,PC),r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l @(0x8C,PC),r3
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bra loc_8c060672
	lds.l @r15+,pr
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0609fc:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.b @(0x4,r3),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8c060a26
	mov 0x00,r5
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x44,PC),r0
	mov.b r5,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0608f2
	mov.l @r15+,r14

loc_8c060a26:
	mov.l @(0x48,PC),r4
	mov 0x3C,r0
	mov 0x01,r6
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	mov r6,r1
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c060b12
	mov.l @(0x28,PC),r4
	mov.l @r4,r3
	mov r6,r0
	nop
	mov.l @(0x2C,PC),r13
	mov.b r0,@(0x1,r3)
	mov.w @(0x14,PC),r0
	mov.b r6,@(r0,r14)
	mov.l @r13,r7
	mov.l @r4,r3
	mov.b @(0x2,r7),r0
	mov r0,r2
	mov.b @(0x6,r3),r0
	cmp/hs r0,r2
	bt loc_8c060a78
	mov.w @(0x2,PC),r0
	bra loc_8c060b12
	mov.b r5,@(r0,r14)

;##############################################
loc_8c060a62:
	#data 0x012c
loc_8c060a64:
	#data 0x019c
loc_8c060a66:
	#data 0x01a1
	#align4
loc_8c060a68:
	#data 0x8c28c5a4
loc_8c060a6c:
	#data 0x8c2896b0
loc_8c060a70:
	#data 0x8c2895f0
loc_8c060a74:
	#data 0x8c28c5a8

;==============================================
loc_8c060a78:
	mov.b @(0x2,r7),r0
	mov.l @r4,r1
	mov r0,r3
	mov.b @(0x6,r1),r0
	cmp/eq r0,r3
	bf loc_8c060a92
	mov 0x02,r0
	mov.b r0,@(0x1,r1)
	mov 0xFF,r2
	mov.w @(0x9C,PC),r0
	mov.l @r4,r3
	mov.b r2,@r3
	mov.b r6,@(r0,r14)

loc_8c060a92:
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c060afa
	mov.l @r4,r3
	mov r6,r0
	nop
	mov.b r0,@(0x1,r3)
	mov 0xFF,r2
	mov.l @r4,r3
	mov.w @(0x84,PC),r0
	mov.b r2,@r3
	mov.l @r13,r3
	mov.b r0,@(0x7,r3)
	mov.w @(0x7E,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	tst r3,r3
	bf loc_8c060afa
	mov.l @r4,r3
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)
	mov 0x03,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8c060ad8
	mov 0x56,r6
	mov.l @r4,r1
	mov r5,r0
	nop
	mov 0x55,r6
	mov.b r0,@(0x5,r1)

loc_8c060ad8:
	mov.w @(0x56,PC),r0
	mov.l @(0x58,PC),r3
	mov.b r6,@(r0,r14)
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

loc_8c060afa:
	bsr loc_8c060672
	mov r14,r4
	mov.l @r13,r2
	mov.b @(0x7,r2),r0
	tst r0,r0
	bf loc_8c060b12
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c060b12:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c060b1a:
	mov.w @(0xC,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	bra loc_8c0608f2
	nop

;==============================================
loc_8c060b24:
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c060b2a:
	#data 0x012c
loc_8c060b2c:
	#data 0x019e
loc_8c060b2e:
	#data 0x00ff
loc_8c060b30:
	#data 0x01a0
loc_8c060b32:
	#data 0x01a1
	#align4
loc_8c060b34:
	#data 0x8c2896b0
loc_8c060b38:
	#data bank04.loc_8c045748
loc_8c060b3c:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c060b40:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x170,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c060b74
	mov r0,r4
	mov 0x00,r5
	mov.l @(0x160,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x146,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c060b74:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c060b7c:
	mov.w @(0x128,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.l @(0x130,PC),r1
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c060b9e:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x104,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x118,PC),r3
	add 0x01,r0
	mov.w @(0xF8,PC),r2
	mov.b r0,@(0x4,r14)
	mov.w @(0xF6,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xF2,PC),r0
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
	mov.w @(0xD6,PC),r0
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
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x42,r4
	mov 0x00,r6
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xA4,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0xB5,r0
	mov.w @(r0,r5),r0
	mov 0xFE,r3
	mov 0x17,r5
	mov.w r0,@(0x1E,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x92,PC),r0
	mov.l @(0xAC,PC),r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x82,PC),r0
	mov 0x00,r4
	mov.l @(0xA0,PC),r3
	mov.b @(r0,r14),r2
	add 0xFE,r0
	add 0x30,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0
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
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c060c5a:
	mov 0x34,r0
	mov.l r14,@-r15
	mov r4,r14
	mov 0xFE,r3
	sts.l pr,@-r15
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x3E,PC),r3
	mov.w @(0x1E,r14),r0
	add r5,r3
	mov.w @r3,r3
	extu.w r3,r3
	cmp/eq r3,r0
	bf loc_8c060c94
	mov.w @(0x32,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c060cd8
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c060cd8

loc_8c060c94:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xE,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c060ca6:
	#data 0x0100
loc_8c060ca8:
	#data 0x019f
loc_8c060caa:
	#data 0x00dc
loc_8c060cac:
	#data 0x00c0
loc_8c060cae:
	#data 0x012c
loc_8c060cb0:
	#data 0x01a3
loc_8c060cb2:
	#data 0x019c
loc_8c060cb4:
	#data 0x0158
loc_8c060cb6:
	#data 0x01a0
	#align4
loc_8c060cb8:
	#data bank04.loc_8c044f12
loc_8c060cbc:
	#data loc_8c060b7c
loc_8c060cc0:
	#data bank15.loc_8c151e48
loc_8c060cc4:
	#data bank12.loc_8c129560
loc_8c060cc8:
	#data bank12.loc_8c1294c8
loc_8c060ccc:
	#data bank03.loc_8c034e8c
loc_8c060cd0:
	#data 0x8c2896b0
loc_8c060cd4:
	#data bank03.loc_8c034dee

;---------------------------------------------
loc_8c060cd8:
	lds.l @r15+,pr
	mov.l @(0x24,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;??????????????????????????????????????????????
loc_8c060ce2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c060ce8:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c060cf6:
	mov.l @(0xC,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c060cfc:
	#data 0x012c
	#align4
loc_8c060d00:
	#data bank04.loc_8c045748
loc_8c060d04:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c060d08:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x160,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c060d3c
	mov r0,r4
	mov 0x00,r5
	mov.l @(0x150,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x136,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c060d3c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c060d44:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0x12C,PC),r1
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c060d58:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xFC,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xF4,PC),r2
	add 0x01,r0
	mov.l @(0x10C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xEE,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xEA,PC),r0
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
	mov.w @(0xCE,PC),r0
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
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r13,r5
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	bsr loc_8c060f30
	mov r14,r4
	mov.w @(0xA6,PC),r0
	mov 0x42,r4
	mov.l @(0xC0,PC),r1
	mov 0x14,r5
	mov.b @(r0,r13),r0
	mov 0x01,r6
	mov.l @(0xBC,PC),r3
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x92,PC),r0
	mov.w @(r0,r13),r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x8E,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x84,PC),r0
	mov 0x2B,r2
	mov 0x00,r4
	mov.l @(0xA0,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov r13,r5
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @r3,r2
	extu.b r0,r0
	add 0x7C,r2
	shll r0
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14
	mov.w @(0x50,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	add r5,r3
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @r3,r3
	mov.w @(0x1E,r14),r0
	extu.w r3,r3
	cmp/eq r3,r0
	bf loc_8c060e56
	mov.w @(0x40,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c060e56
	mov 0x31,r0
	mov 0xFE,r3
	mov.b r3,@(r0,r14)
	bsr loc_8c060f30
	mov r14,r4
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt.s loc_8c060e94
	mov 0x00,r13
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c060f0c
	mov.w @(0xE,PC),r0
	mov.b r13,@(r0,r14)

loc_8c060e56:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c060f0c
	mov.b r0,@(0x4,r14)

;##############################################
loc_8c060e5e:
	#data 0x0101
loc_8c060e60:
	#data 0x00dc
loc_8c060e62:
	#data 0x00c0
loc_8c060e64:
	#data 0x012c
loc_8c060e66:
	#data 0x01a3
loc_8c060e68:
	#data 0x0158
loc_8c060e6a:
	#data 0x019c
loc_8c060e6c:
	#data 0x01a1
loc_8c060e6e:
	#data 0x01d0
	#align4
loc_8c060e70:
	#data bank04.loc_8c044f12
loc_8c060e74:
	#data loc_8c060d44
loc_8c060e78:
	#data bank15.loc_8c151e58
loc_8c060e7c:
	#data bank12.loc_8c129560
loc_8c060e80:
	#data bank12.loc_8c1294c8
loc_8c060e84:
	#data bank15.loc_8c151e68
loc_8c060e88:
	#data bank03.loc_8c034e8c
loc_8c060e8c:
	#data 0x8c2896b0
loc_8c060e90:
	#data bank03.loc_8c034dee

;----------------------------------------------
loc_8c060e94:
	mov.w @(0xC0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c060ec2
	mov.b r13,@(r0,r14)
	add 0x60,r0
	mov 0x2B,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0xB4,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c060ec2:
	mov.w @(0x94,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c060ef6
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bt loc_8c060eea
	lds.l @r15+,pr
	mov.l @(0x88,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c060eea:
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x66,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c060f0c

loc_8c060ef6:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x74,PC),r3
	mov 0x02,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x14,r5
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c060f0c:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c060f14:
	mov.w @(0x44,PC),r3
	mov 0x01,r0
	mov 0x00,r2
	add r3,r5
	mov.b r0,@(0x3,r5)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x36,PC),r0
	rts
	mov.b r2,@(r0,r4)

;==============================================
loc_8c060f2a:
	mov.l @(0x48,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c060f30:
	mov.w @(0x2C,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c060f3e
	mova @(0x3C,PC),r0
	bra loc_8c060f42
	fmov @r0,fr3

loc_8c060f3e:
	mova @(0x3C,PC),r0
	fmov @r0,fr3

loc_8c060f42:
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x34,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c060f58:
	#data 0x0141
loc_8c060f5a:
	#data 0x019f
loc_8c060f5c:
	#data 0x02a4
loc_8c060f5e:
	#data 0x012c
loc_8c060f60:
	#data 0x0130
	#align4
loc_8c060f64:
	#data 0x8c2896b0
loc_8c060f68:
	#data bank03.loc_8c034dee
loc_8c060f6c:
	#data bank04.loc_8c045748
loc_8c060f70:
	#data bank03.loc_8c034e8c
loc_8c060f74:
	#data bank04.loc_8c0450c0
loc_8c060f78:
	#data 0x430c0000
loc_8c060f7c:
	#data 0xc30c0000
loc_8c060f80:
	#data 0x4331db6d

;==============================================
loc_8c060f84:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x108,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c060fa2
	mov r0,r4
	mov.l @(0xFC,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c060fa2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c060faa:
	mov r4,r3
	mov.l @(0xEC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c060fbc:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xC4,PC),r1
	mov.w @(0xC0,PC),r5
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.l @(0xD0,PC),r3
	mov.b r0,@(0x4,r14)
	add r4,r5
	mov.l @(0x18,r14),r2
	mov.w @(0xAE,PC),r0
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xA8,PC),r0
	mov 0x01,r4
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0
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
	mov.w @(0x84,PC),r0
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
	mov.l @(0x84,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x42,r6
	mov.b @(r0,r1),r3
	mov.l @(0x78,PC),r1
	mov.b r3,@(r0,r14)
	mov.w @(0x58,PC),r0
	lds r1,fpul
	mov.b r6,@(r0,r14)
	add 0x01,r0
	mov.b r6,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	fmov fr2,@(r0,r14)
	mova @(0x4C,PC),r0
	fmov @r0,fr4
	mov.w @(0x2C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c061070
	mov 0x34,r0
	fmov @(r0,r14),fr2
	bra loc_8c061076
	fadd fr4,fr2

loc_8c061070:
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fsub fr4,fr2

loc_8c061076:
	fmov fr2,@(r0,r14)
	mov.w @(0x10,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0610b4
	mova @(0x2C,PC),r0
	bra loc_8c0610b8
	fmov @r0,fr3

;##############################################
loc_8c061086:
	#data 0x02a4
loc_8c061088:
	#data 0x00dc
loc_8c06108a:
	#data 0x012c
loc_8c06108c:
	#data 0x01a3
loc_8c06108e:
	#data 0x019c
loc_8c061090:
	#data 0x0130
	#align4
loc_8c061094:
	#data bank04.loc_8c044f12
loc_8c061098:
	#data loc_8c060faa
loc_8c06109c:
	#data bank15.loc_8c151e6c
loc_8c0610a0:
	#data bank12.loc_8c129560
loc_8c0610a4:
	#data bank12.loc_8c1294c8
loc_8c0610a8:
	#data 0x43092492
loc_8c0610ac:
	#data 0x42d55555
loc_8c0610b0:
	#data 0xc0a00000

;----------------------------------------------
loc_8c0610b4:
	mova @(0x110,PC),r0
	fmov @r0,fr3

loc_8c0610b8:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xF8,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0610ce
	mov 0x00,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c0610ce:
	mov 0x24,r0
	mov.b r6,@(r0,r14)
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x30,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r6,@(r0,r14)
	add 0xF2,r0
	mov.b r6,@(r0,r14)
	add 0x26,r0
	mov.l @(0xE4,PC),r3
	mov.l r6,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov r4,r0
	nop
	mov.b r0,@(0x2,r5)
	mov 0x17,r5
	mov.w @(0xB4,PC),r0
	mov.l @(0xC8,PC),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c061128
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c061198
	mov.l @r15+,r14

loc_8c061128:
	mov.w @(0x90,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c061138
	mov.w @(0x8A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06115a

loc_8c061138:
	mov.b @(0x4,r14),r0
	mov 0x17,r3
	mov 0x02,r2
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x78,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

loc_8c06115a:
	mov 0x5C,r1
	mov.l @(0x78,PC),r3
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x68,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c061178:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c061190
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c061198
	lds.l @r15+,pr

loc_8c061190:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8c061198:
	mov.w @(0x26,PC),r6
	mov.l @(0x18,r4),r5
	add r5,r6
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x2,r6)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x14,PC),r0
	rts
	mov.b r5,@(r0,r4)

;==============================================
loc_8c0611b2:
	mov.l @(0x2C,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0611b8:
	#data 0x0130
loc_8c0611ba:
	#data 0x01a3
loc_8c0611bc:
	#data 0x019e
loc_8c0611be:
	#data 0x019f
loc_8c0611c0:
	#data 0x0159
loc_8c0611c2:
	#data 0x02a4
loc_8c0611c4:
	#data 0x012c
	#align4
loc_8c0611c8:
	#data 0xc1055555
loc_8c0611cc:
	#data 0x8c2896b0
loc_8c0611d0:
	#data bank03.loc_8c034e8c
loc_8c0611d4:
	#data bank03.loc_8c03340c
loc_8c0611d8:
	#data bank04.loc_8c045748
loc_8c0611dc:
	#data bank03.loc_8c034dee
loc_8c0611e0:
	#data bank04.loc_8c0450c0

;==============================================
;Unused?
loc_8c0611e4:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x170,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c061210
	mov r0,r4
	mov.l @(0x160,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.w @(0x144,PC),r3
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8c061210:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c061218:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x138,PC),r3
	mov r4,r14
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c061248
	mov r0,r4
	mov.l @(0x12C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.w @(0x10E,PC),r3
	mov.l r2,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8c061248:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c061254:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0x104,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c061268:
	mov r4,r3
	mov.l @(0xFC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06127a:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xCC,PC),r5
	mov.w @(0xCC,PC),r1
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	add r14,r1
	mov.l @(0xE0,PC),r3
	add r4,r5
	mov 0x01,r4
	mov.b r4,@r5
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @(0x18,r14),r2
	mov.w @(0xB4,PC),r0
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xAE,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0
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
	mov.w @(0x8C,PC),r0
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
	add 0x50,r2
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x42,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x3C,r3
	mov.w @(0x60,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.l @(0x70,PC),r3
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
	mov 0x10,r2
	mov.w @(0x34,PC),r0
	mov.w r2,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov 0x13,r2
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r1
	fmov @(r0,r1),fr3
	fmov fr3,@(r0,r14)
	mova @(0x3C,PC),r0
	fmov @r0,fr4
	mov.w @(0x1A,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c06137c
	mov 0x34,r0
	fmov @(r0,r14),fr3
	bra loc_8c061382
	fsub fr4,fr3

;##############################################
loc_8c06134c:
	#data 0x0201
loc_8c06134e:
	#data 0x02a4
loc_8c061350:
	#data 0x00dc
loc_8c061352:
	#data 0x012c
loc_8c061354:
	#data 0x01a3
loc_8c061356:
	#data 0x019c
loc_8c061358:
	#data 0x01ac
loc_8c06135a:
	#data 0x0130
	#align4
loc_8c06135c:
	#data bank04.loc_8c044f12
loc_8c061360:
	#data loc_8c061254
loc_8c061364:
	#data bank15.loc_8c151e80
loc_8c061368:
	#data bank15.loc_8c151e88
loc_8c06136c:
	#data bank12.loc_8c129560
loc_8c061370:
	#data bank12.loc_8c1294c8
loc_8c061374:
	#data 0x8c2896b0
loc_8c061378:
	#data 0x42f00000

;----------------------------------------------
loc_8c06137c:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3

loc_8c061382:
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	mov 0x17,r5
	mov.w @(0x11A,PC),r4
	mov 0x04,r6
	fmov @(r0,r3),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x0E,r3
	fmov fr3,@(r0,r14)
	mova @(0x114,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	add 0x2E,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xF8,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov 0x01,r5
	bra loc_8c061218
	mov.l @r15+,r14

;==============================================
loc_8c0613ca:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xDA,PC),r0
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	fldi1 fr15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c0613ee
	mov 0x00,r13
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0613f4

loc_8c0613ee:
	mov 0x03,r0
	bra loc_8c061556
	mov.b r0,@(0x4,r14)

loc_8c0613f4:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mova @(0xC0,PC),r0
	fmov @r0,fr4
	mov.w @(0xAA,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c061410
	mov 0x34,r0
	fmov @(r0,r14),fr3
	bra loc_8c061416
	fsub fr4,fr3

loc_8c061410:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3

loc_8c061416:
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr15
	bf loc_8c061448
	mova @(0x90,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr2
	bra loc_8c06144e
	fmov fr2,@(r0,r14)

loc_8c061448:
	fmov fr15,@(r0,r14)
	mov 0x54,r0
	fmov fr15,@(r0,r14)

loc_8c06144e:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/eq 0x06,r0
	bf loc_8c06152a
	mov 0x21,r0
	mov.l @(0x68,PC),r4
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c061498
	mov.w @(0x42,PC),r0
	mov 0x41,r1
	mov.b r1,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r4,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.b @(0x4,r14),r0
	add 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x02,r0
	bra loc_8c061524
	mov.w r0,@(0x1C,r14)

loc_8c061498:
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x03,r0
	bf loc_8c0614cc
	mov.w @(0xC,PC),r0
	mov 0x3B,r2
	bra loc_8c0614d2
	mov.b r2,@(r0,r14)

;##############################################
loc_8c0614a8:
	#data 0x00b0
loc_8c0614aa:
	#data 0x013e
loc_8c0614ac:
	#data 0x01d0
loc_8c0614ae:
	#data 0x0130
loc_8c0614b0:
	#data 0x01a1
	#align4
loc_8c0614b4:
	#data 0x3dcccccd
loc_8c0614b8:
	#data bank03.loc_8c034e8c
loc_8c0614bc:
	#data bank03.loc_8c03340c
loc_8c0614c0:
	#data 0x42f00000
loc_8c0614c4:
	#data 0x3d23d70a
loc_8c0614c8:
	#data 0x8c2896b0

;----------------------------------------------
loc_8c0614cc:
	mov.w @(0x114,PC),r0
	mov 0x50,r3
	mov.b r3,@(r0,r14)

loc_8c0614d2:
	mov.w @(0x110,PC),r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r4,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r14),fr3
	fmov @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bf loc_8c06150e
	mov.w @(0xEA,PC),r0
	mov.l @(0x18,r14),r2
	mov.l @(r0,r2),r3
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bf loc_8c06151e
	bra loc_8c061524
	nop

loc_8c06150e:
	mov.w @(0xD6,PC),r0
	mov.l @(0x18,r14),r2
	mov.l @(r0,r2),r3
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov @(r0,r3),fr2
	fcmp/gt fr2,fr3
	bt loc_8c061524

loc_8c06151e:
	mov.w @(0xC4,PC),r0
	mov 0x10,r2
	mov.w r2,@(r0,r14)

loc_8c061524:
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c06152a:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c061542
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xAA,PC),r0
	bra loc_8c061556
	fmov fr15,@(r0,r14)

loc_8c061542:
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c061556:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c061560:
	mov.w @(0x88,PC),r0
	mov.l @(0x18,r4),r6
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt.s loc_8c061576
	mov 0x03,r5
	mov r5,r0
	nop
	rts
	mov.b r0,@(0x4,r4)

loc_8c061576:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mova @(0x78,PC),r0
	fmov @r0,fr4
	mov.w @(0x68,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c061592
	mov 0x34,r0
	fmov @(r0,r4),fr3
	bra loc_8c061598
	fsub fr4,fr3

loc_8c061592:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3

loc_8c061598:
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	mov.l @(0x5C,PC),r1
	fmov @(r0,r3),fr3
	lds r1,fpul
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x36,PC),r0
	fsts fpul,fr3
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	fmov @(r0,r4),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8c0615c8
	mov r5,r0
	nop
	mov.b r0,@(0x4,r4)

loc_8c0615c8:
	mov.l @(0x28,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c0615ce:
	rts
	nop

;==============================================
loc_8c0615d2:
	mov r4,r3
	mov.l @(0x28,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0615e4:
	#data 0x01a1
loc_8c0615e6:
	#data 0x01ac
loc_8c0615e8:
	#data 0x020c
loc_8c0615ea:
	#data 0x0108
loc_8c0615ec:
	#data 0x01d0
loc_8c0615ee:
	#data 0x0130
	#align4
loc_8c0615f0:
	#data bank04.loc_8c045748
loc_8c0615f4:
	#data bank03.loc_8c034dee
loc_8c0615f8:
	#data 0x42f00000
loc_8c0615fc:
	#data 0x3d4ccccd
loc_8c061600:
	#data bank15.loc_8c151e9c

;==============================================
loc_8c061604:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x13C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x144,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x12E,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x126,PC),r0
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
	mov.w @(0x102,PC),r0
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
	mov.l @(0xF8,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.w @(0xDE,PC),r4
	mov 0x17,r5
	mov.b @(r0,r1),r3
	mov 0x05,r6
	mov.b r3,@(r0,r14)
	mova @(0xE8,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	mov 0x0A,r3
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xC8,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x14,r14),r2
	mov r14,r1
	mov.l @(0xC0,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0616aa:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xA0,PC),r0
	mov r4,r14
	fldi0 fr3
	mov.l @(0x18,r14),r4
	mov.w @(0x96,PC),r3
	add r4,r3
	mov.l r3,@r15
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt.s loc_8c0616cc
	mov r14,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c0616cc:
	mov.l @(0x98,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c0616e4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0616e4:
	mov.l @r15,r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c0616f2
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c0616f2:
	mov.l @(0x14,r14),r2
	mov r14,r1
	mov.l @(0x64,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x14,r14),r1
	mov 0x50,r0
	mov r14,r4
	fmov @(r0,r1),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x3E,PC),r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r3
	jmp @r3
	mov.l @r15+,r14
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06172c:
	mov.b @(0x4,r4),r0
	mov.w @(0x20,PC),r6
	mov.l @(0x18,r4),r5
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	add r5,r6
	mov.w @(0xE,PC),r0
	mov 0x00,r5
	mov.b r5,@r6
	rts
	mov.b r5,@(r0,r4)

;==============================================
loc_8c061742:
	mov.l @(0x2C,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c061748:
	#data 0x00dc
loc_8c06174a:
	#data 0x012c
loc_8c06174c:
	#data 0x01a3
loc_8c06174e:
	#data 0x00b0
loc_8c061750:
	#data 0x013e
loc_8c061752:
	#data 0x02a4
loc_8c061754:
	#data 0x0108
	#align4
loc_8c061758:
	#data bank12.loc_8c129560
loc_8c06175c:
	#data bank12.loc_8c1294c8
loc_8c061760:
	#data 0x3dcccccd
loc_8c061764:
	#data bank03.loc_8c034e8c
loc_8c061768:
	#data bank03.loc_8c03340c
loc_8c06176c:
	#data bank03.loc_8c034dee
loc_8c061770:
	#data bank04.loc_8c0450c0

;==============================================
;unused?
loc_8c061774:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x158,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c061792
	mov r0,r4
	mov.l @(0x14C,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c061792:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c06179a:
	mov r4,r3
	mov.l @(0x13C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0617ac:
	mov.w @(0x11A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x128,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x10C,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x104,PC),r0
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
	mov.w @(0xE0,PC),r0
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
	mov.l @(0xDC,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mova @(0xB8,PC),r0
	fmov @r0,fr4
	mov.w @(0x9C,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c061840
	mov 0x34,r0
	fmov @(r0,r4),fr3
	bra loc_8c061846
	fadd fr4,fr3

loc_8c061840:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3

loc_8c061846:
	fmov fr3,@(r0,r4)
	mova @(0xA0,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	mov 0x0B,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8c061864:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov.w @(0x42,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c06189a
	mov 0x34,r0
	fmov @(r0,r14),fr3
	bra loc_8c0618a0
	fadd fr4,fr3

loc_8c06189a:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3

loc_8c0618a0:
	mov.l @(0x4C,PC),r3
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x44,PC),r12
	mov 0x01,r13

loc_8c0618b0:
	mov.w @(0x1E,PC),r2
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.w @(0x18,PC),r3
	mov.b @(0x1,r2),r0
	add r14,r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bf loc_8c0618f8
	mov.w @(0x4,PC),r0
	bra loc_8c061906
	mov.b r13,@(r0,r14)

;==============================================
loc_8c0618ca:
	#data 0x00dc
loc_8c0618cc:
	#data 0x012c
loc_8c0618ce:
	#data 0x01a3
loc_8c0618d0:
	#data 0x0130
loc_8c0618d2:
	#data 0x0150
	#align4
loc_8c0618d4:
	#data bank04.loc_8c044f12
loc_8c0618d8:
	#data loc_8c06179a
loc_8c0618dc:
	#data bank15.loc_8c151eac
loc_8c0618e0:
	#data bank12.loc_8c129560
loc_8c0618e4:
	#data bank12.loc_8c1294c8
loc_8c0618e8:
	#data 0x42555555
loc_8c0618ec:
	#data 0x3cf5c28f
loc_8c0618f0:
	#data bank03.loc_8c034e8c
loc_8c0618f4:
	#data bank03.loc_8c034dee

;----------------------------------------------
loc_8c0618f8:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0618b0
	bsr loc_8c061910
	mov r14,r4

loc_8c061906:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c061910:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

loc_8c06191e:
	mov.l @(0x8,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c061924:
	#data 0x012c
	#align4

loc_8c061928:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c06192c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x12C,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06194a
	mov r0,r4
	mov.l @(0x120,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c06194a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c061952:
	mov r4,r3
	mov.l @(0x110,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c061964:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xEA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xF8,PC),r3
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
	mov.l @(0xAC,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x42,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x86,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x68,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c061a04
	fldi0 fr4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	bra loc_8c061a0a
	fadd fr4,fr3

loc_8c061a04:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3

loc_8c061a0a:
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov 0x0B,r3
	mov.b r3,@(r0,r14)
	mov 0x17,r5
	mov.l @(0x5C,PC),r3
	mov 0x06,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c061a22:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x50,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c061a3a
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c061a42
	lds.l @r15+,pr

loc_8c061a3a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c061a42:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xA,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c061a50:
	mov.l @(0x28,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c061a56:
	#data 0x00dc
loc_8c061a58:
	#data 0x012c
loc_8c061a5a:
	#data 0x01a3
loc_8c061a5c:
	#data 0x019c
loc_8c061a5e:
	#data 0x0130
	#align4
loc_8c061a60:
	#data bank04.loc_8c044f12
loc_8c061a64:
	#data loc_8c061952
loc_8c061a68:
	#data bank15.loc_8c151ebc
loc_8c061a6c:
	#data bank12.loc_8c129560
loc_8c061a70:
	#data bank12.loc_8c1294c8
loc_8c061a74:
	#data bank03.loc_8c034e8c
loc_8c061a78:
	#data bank03.loc_8c034dee
loc_8c061a7c:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c061a80:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x150,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c061a9e
	mov r0,r4
	mov.l @(0x144,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c061a9e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c061aa6:
	mov r4,r3
	mov.l @(0x134,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c061ab8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x108,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x11C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xFA,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xF2,PC),r0
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
	mov.w @(0xCE,PC),r0
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
	mov.l @(0xD0,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x42,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0xA4,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	mov.w r0,@(0x1C,r14)
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x7E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c061b66
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c061b66:
	mov.l @(0x8C,PC),r1
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	mov 0x40,r4
	lds r1,fpul
	mov 0x17,r5
	fmov @(r0,r3),fr3
	mov 0x05,r6
	fmov fr3,@(r0,r14)
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	mov 0x0A,r3
	fmov fr2,@(r0,r14)
	mov.w @(0x44,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c061ba2:
	mov.w @(0x2E,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c061bc0
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bf loc_8c061bc0
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c061c00

loc_8c061bc0:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c061c9c
	mov.l @r15+,r14

;##############################################
loc_8c061bc8:
	#data 0x00dc
loc_8c061bca:
	#data 0x012c
loc_8c061bcc:
	#data 0x01a3
loc_8c061bce:
	#data 0x019c
loc_8c061bd0:
	#data 0x0130
loc_8c061bd2:
	#data 0x013e
loc_8c061bd4:
	#data 0x019f
	#align4
loc_8c061bd8:
	#data bank04.loc_8c044f12
loc_8c061bdc:
	#data loc_8c061aa6
loc_8c061be0:
	#data bank15.loc_8c151ecc
loc_8c061be4:
	#data bank12.loc_8c129560
loc_8c061be8:
	#data bank12.loc_8c1294c8
loc_8c061bec:
	#data 0x41555555
loc_8c061bf0:
	#data 0xbe555555
loc_8c061bf4:
	#data 0x42f00000
loc_8c061bf8:
	#data bank03.loc_8c034e8c
loc_8c061bfc:
	#data bank03.loc_8c03340c

;----------------------------------------------
loc_8c061c00:
	mov 0x68,r1
	add r14,r1
	mov 0x5C,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x5C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x90,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c061c36
	fldi0 fr4
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c061c36
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8c061c36:
	mov.w @(0x76,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c061c4e
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c061c4e
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8c061c4e:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/eq 0x0C,r0
	bf loc_8c061c86
	mov.w @(0x54,PC),r0
	mov 0x3C,r2
	mov 0x00,r4
	mov.l @(0x54,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
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
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c061c86:
	mov.w @(0x1C,r14),r0
	mov.l @(0x30,PC),r3
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x28,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c061c9c:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c061caa:
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c061cb0:
	#data 0x0130
loc_8c061cb2:
	#data 0x01a1
loc_8c061cb4:
	#data 0x012c
	#align4
loc_8c061cb8:
	#data 0x8c2896b0
loc_8c061cbc:
	#data bank04.loc_8c045748
loc_8c061cc0:
	#data bank03.loc_8c034dee
loc_8c061cc4:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c061cc8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x158,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c061ce6
	mov r0,r4
	mov.l @(0x14C,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c061ce6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c061cee:
	mov r4,r3
	mov.l @(0x13C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c061d00:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x116,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x124,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x108,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x100,PC),r0
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
	mov.w @(0xDC,PC),r0
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
	mov.l @(0xD8,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x9C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c061d9c
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c061d9c:
	mov.l @(0xA4,PC),r1
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	mov 0x17,r5
	lds r1,fpul
	mov 0x07,r6
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	mov 0x0B,r3
	fmov fr2,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x84,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c061dce:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x68,r1
	mov.l @(0x74,PC),r3
	add r14,r1
	mov 0x5C,r0
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x5C,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c061e04
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c061e0a
	mov.l @r15+,r14

loc_8c061e04:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c061e0a:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xA,PC),r0
	rts
	mov.b r3,@(r0,r4)

loc_8c061e18:
	mov.l @(0x34,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c061e1e:
	#data 0x00dc
loc_8c061e20:
	#data 0x012c
loc_8c061e22:
	#data 0x01a3
loc_8c061e24:
	#data 0x0130
	#align4
loc_8c061e28:
	#data bank04.loc_8c044f12
loc_8c061e2c:
	#data loc_8c061cee
loc_8c061e30:
	#data bank15.loc_8c151edc
loc_8c061e34:
	#data bank12.loc_8c129560
loc_8c061e38:
	#data bank12.loc_8c1294c8
loc_8c061e3c:
	#data 0x41555555
loc_8c061e40:
	#data 0xbe555555
loc_8c061e44:
	#data 0x42f00000
loc_8c061e48:
	#data bank03.loc_8c034e8c
loc_8c061e4c:
	#data bank03.loc_8c034dee
loc_8c061e50:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c061e54:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x12C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c061e80
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0xFA,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c061e80:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c061e88:
	mov r4,r3
	mov.l @(0x104,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c061e9a:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xD6,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xEC,PC),r3
	add 0x01,r0
	mov.l @(0x18,r14),r4
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
	mov.l @(0x9C,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x42,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x70,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	add 0x6C,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr4
	mov.w @(0x4E,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c061f40
	mov 0x34,r0
	fmov @(r0,r14),fr3
	bra loc_8c061f46
	fadd fr4,fr3

loc_8c061f40:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3

loc_8c061f46:
	mov.l @(0x58,PC),r1
	mov 0x40,r5
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	mov.l @(0x50,PC),r6
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x24,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x24,r0
	mov 0x00,r5
	mov.b r5,@(r0,r14)
	mov.w @(0x18,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c061fa8
	bra loc_8c061fe8
	mov 0x3F,r2

;##############################################
loc_8c061f76:
	#data 0x0206
loc_8c061f78:
	#data 0x00dc
loc_8c061f7a:
	#data 0x012c
loc_8c061f7c:
	#data 0x01a3
loc_8c061f7e:
	#data 0x0130
loc_8c061f80:
	#data 0x01d2
loc_8c061f82:
	#data 0x013e
loc_8c061f84:
	#data 0x0255
	#align4
loc_8c061f88:
	#data bank04.loc_8c044f12
loc_8c061f8c:
	#data loc_8c061e88
loc_8c061f90:
	#data bank15.loc_8c151eec
loc_8c061f94:
	#data bank12.loc_8c129560
loc_8c061f98:
	#data bank12.loc_8c1294c8
loc_8c061f9c:
	#data 0x43200000
loc_8c061fa0:
	#data 0x43092492
loc_8c061fa4:
	#data 0x8c2896b0

;----------------------------------------------
loc_8c061fa8:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c061fe2
	mov.w @(0xF8,PC),r0
	mov 0x3A,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov 0x14,r5
	mov.b @(0x2,r14),r0
	mov.l @r6,r3
	mov 0x03,r6
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c062026
	nop

loc_8c061fe2:
	cmp/eq 0x02,r0
	bf loc_8c061fee
	mov 0x4E,r2

loc_8c061fe8:
	mov.w @(0xC2,PC),r0
	bra loc_8c062000
	mov.b r2,@(r0,r14)

loc_8c061fee:
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c061ffa
	bra loc_8c061ffc
	mov 0x39,r3

loc_8c061ffa:
	mov 0x38,r3

loc_8c061ffc:
	mov.w @(0xAE,PC),r0
	mov.b r3,@(r0,r14)

loc_8c062000:
	mov.w @(0xAE,PC),r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov 0x14,r5
	mov.b @(0x2,r14),r0
	mov.l @r6,r3
	mov 0x02,r6
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r14,r4

loc_8c062026:
	mov.w @(0x8A,PC),r0
	mov.l @(0x94,PC),r5
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c062042
	mov r5,r4
	mov.w @(0x7A,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	bra loc_8c062052
	fmov @r4,fr3

loc_8c062042:
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r4
	fmov @r4,fr3
	fneg fr3

loc_8c062052:
	mov 0x5C,r0
	fldi0 fr4
	fmov fr3,@(r0,r14)
	mov r14,r4
	mov.w @(0x52,PC),r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r5
	fmov @(r0,r5),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c06207a:
	mov.w @(0x38,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0620a6
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0620a6
	mov 0x24,r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1C,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0620c8

loc_8c0620a6:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c062110
	mov.l @r15+,r14

;##############################################
loc_8c0620ae:
	#data 0x01a1
loc_8c0620b0:
	#data 0x01a3
loc_8c0620b2:
	#data 0x01ac
loc_8c0620b4:
	#data 0x0130
loc_8c0620b6:
	#data 0x019f
loc_8c0620b8:
	#data 0x041c
	#align4
loc_8c0620bc:
	#data bank03.loc_8c034e8c
loc_8c0620c0:
	#data bank15.loc_8c151efc
loc_8c0620c4:
	#data bank03.loc_8c03340c

;----------------------------------------------
loc_8c0620c8:
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0x6C,PC),r3
	add r14,r1
	mov r14,r4
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
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c062110:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x24,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06212c
	mov.w @(0x14,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c06212c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c062132:
	mov.l @(0x10,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c062138:
	#data 0x012c
	#align4
loc_8c06213c:
	#data bank03.loc_8c034dee
loc_8c062140:
	#data bank04.loc_8c045748
loc_8c062144:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c062148:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x12C,PC),r3
	mov 0x01,r6
	mov.b r0,@(0x4,r15)
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c06218e
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x11C,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.w @(0x100,PC),r3
	mov.l r2,@(0x18,r4)
	mov 0x21,r2
	mov.l @r15,r0
	add r4,r2
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x8,r15),r0

loc_8c062184:
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c06218e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c062196:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x24,r0
	mov.l @(0xF0,PC),r1
	mov r14,r4
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0621b2:
	mov.l @(0xE0,PC),r3
	mov 0x37,r2
	mov.w @(0xC0,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov 0x42,r4
	mov.l @(0xD4,PC),r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x00,r4
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	mov.w @(0xA6,PC),r0
	mov.b r2,@(r0,r14)
	add 0x0B,r0
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
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x80,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(0x9C,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mova @(0x98,PC),r0
	fmov @r0,fr2
	mova @(0x98,PC),r0
	lds r2,fpul
	fmov @r0,fr1
	mov 0x5C,r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x62,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c062230
	mov 0x34,r0
	fmov @(r0,r14),fr0
	fmov @(r0,r5),fr3
	fadd fr3,fr0
	bra loc_8c062244
	fmov fr0,@(r0,r14)

loc_8c062230:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov @(r0,r5),fr0
	fneg fr3
	fadd fr0,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
 
loc_8c062244:
	mova @(0x64,PC),r0
	fldi0 fr4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x15,r3
	mov 0x0B,r2
	mov r14,r4
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x1C,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0x3C,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c062278:
	#data 0x0300
loc_8c06227a:
	#data 0x013c
loc_8c06227c:
	#data 0x0255
loc_8c06227e:
	#data 0x01a1
loc_8c062280:
	#data 0x01a3
loc_8c062282:
	#data 0x0130
loc_8c062284:
	#data 0x0159
	#align4
loc_8c062288:
	#data bank04.loc_8c044f12
loc_8c06228c:
	#data loc_8c062196
loc_8c062290:
	#data bank15.loc_8c151f0c
loc_8c062294:
	#data 0x20202424
loc_8c062298:
	#data 0x8c2896b0
loc_8c06229c:
	#data 0x42555555
loc_8c0622a0:
	#data bank15.loc_8c151f1c
loc_8c0622a4:
	#data 0x3fd55555
loc_8c0622a8:
	#data 0x47800000
loc_8c0622ac:
	#data 0x42cdb6db
loc_8c0622b0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0622b4:
	mov.l @(0x168,PC),r3
	mov.w @(0x158,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov 0x42,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov 0x38,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.l @(0x150,PC),r3
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
	mova @(0x138,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x138,PC),r0
	fmov @r0,fr4
	mov.w @(0x116,PC),r0
	mov.l @(0x12C,PC),r4
	mov.b @(r0,r14),r2
	mova @(0x130,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	extu.b r2,r2
	shll2 r2
	shll r2
	add r4,r2
	mov.l @r2,r1
	lds r1,fpul
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xF6,PC),r0
	mov.b @(r0,r14),r2
	mova @(0x118,PC),r0
	fmov @r0,fr1
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r4
	mov.l @(0x4,r4),r2
	lds r2,fpul
	float fpul,fr3
	fmul fr1,fr3
	fdiv fr4,fr3
	mov 0x60,r0
	fneg fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xD8,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c06234e
	mov 0x34,r0
	fmov @(r0,r14),fr0
	fmov @(r0,r5),fr3
	fadd fr3,fr0
	bra loc_8c062362
	fmov fr0,@(r0,r14)

loc_8c06234e:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov @(r0,r5),fr0
	fneg fr3
	fadd fr0,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c062362:
	mova @(0xD8,PC),r0
	mov r14,r4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x15,r3
	mov 0x0D,r2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr2,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0xB4,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c062392:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x80,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xA4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x72,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x6A,PC),r0
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
	mov.w @(0x3C,PC),r0
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
	mov.l @(0x58,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov r14,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(0x44,PC),r0
	extu.b r2,r2
	lds.l @r15+,pr
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c062412:
	#data 0x013c
loc_8c062414:
	#data 0x01a3
loc_8c062416:
	#data 0x0130
loc_8c062418:
	#data 0x0159
loc_8c06241a:
	#data 0x00dc
loc_8c06241c:
	#data 0x012c
	#align4
loc_8c062420:
	#data 0x20202424
loc_8c062424:
	#data 0x8c2896b0
loc_8c062428:
	#data 0x42555555
loc_8c06242c:
	#data bank15.loc_8c151f24
loc_8c062430:
	#data 0x47800000
loc_8c062434:
	#data 0x3fd55555
loc_8c062438:
	#data 0x40092492
loc_8c06243c:
	#data 0x43092492
loc_8c062440:
	#data bank03.loc_8c034e8c
loc_8c062444:
	#data bank12.loc_8c129560
loc_8c062448:
	#data bank12.loc_8c1294c8
loc_8c06244c:
	#data bank15.loc_8c151f34

;==============================================
loc_8c062450:
	mov.w @(0x104,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.w @(0xF8,PC),r4
	tst r3,r3
	bf.s loc_8c06246a
	add r5,r4
	mov.w @(0xF4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c062492

loc_8c06246a:
	mov 0x1A,r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov 0x15,r3
	mov.b @(0x5,r14),r0
	mov 0x0C,r2
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xDC,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	lds.l @r15+,pr
	mov.l @(0xD4,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

loc_8c062492:
	mov 0x5C,r1
	mov.l @(0xCC,PC),r3
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
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x94,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0624da:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0624f6
	mov.w @(0x70,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c0624f6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0624fc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x50,PC),r2
	mov r5,r3
	mov 0x31,r0
	mov r4,r14
	add r3,r2
	mov.l r5,@r15
	mov 0xFA,r3
	mov.l r2,@(0x4,r15)
	mov.b r3,@(r0,r14)
	mov.l @(0x54,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c062538
	mov.l @(0x4,r15),r3
	mov 0x1A,r0
	mov 0x00,r4
	mov.b r4,@(r0,r3)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x2E,PC),r0
	mov.b r4,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c062538:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x30,PC),r1
	extu.b r0,r0
	mov.l @r15,r5
	shll2 r0
	mov.l @(r0,r1),r3
	add 0x08,r15
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c06254e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c062556:
	#data 0x02a4
loc_8c062558:
	#data 0x019e
loc_8c06255a:
	#data 0x019f
loc_8c06255c:
	#data 0x0159
loc_8c06255e:
	#data 0x012c
	#align4
loc_8c062560:
	#data bank03.loc_8c034e8c
loc_8c062564:
	#data bank03.loc_8c034dee
loc_8c062568:
	#data bank04.loc_8c045748
loc_8c06256c:
	#data bank03.loc_8c03340c
loc_8c062570:
	#data bank15.loc_8c151f3c

;==============================================
loc_8c062574:
	mov.w @(0x138,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.w @(0x12C,PC),r4
	tst r3,r3
	bf.s loc_8c06259a
	add r5,r4
	mov.w @(0x128,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c06259a
	mov.w @(0x122,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0625c2

loc_8c06259a:
	mov 0x1A,r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)
	mov 0x15,r3
	mov.b @(0x5,r14),r0
	mov 0x0E,r2
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x106,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	lds.l @r15+,pr
	mov.l @(0x100,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

loc_8c0625c2:
	mov 0x5C,r1
	mov.l @(0xF8,PC),r3
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
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xC0,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c06260a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c062626
	mov.w @(0x9A,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c062626:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06262c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x78,PC),r2
	mov r5,r3
	mov 0x31,r0
	mov r4,r14
	add r3,r2
	mov.l r5,@r15
	mov 0xFA,r3
	mov.l r2,@(0x4,r15)
	mov.b r3,@(r0,r14)
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c062668
	mov.l @(0x4,r15),r3
	mov 0x1A,r0
	mov 0x00,r4
	mov.b r4,@(r0,r3)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x58,PC),r0
	mov.b r4,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c062668:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x5C,PC),r1
	extu.b r0,r0
	mov.l @r15,r5
	shll2 r0
	mov.l @(r0,r1),r3
	add 0x08,r15
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
;Unused
loc_8c06267e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c062686:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x40,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06269a:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x12,PC),r0
	rts
	mov.b r3,@(r0,r4)
;==============================================
loc_8c0626a8:
	mov.l @(0x28,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0626ae:
	#data 0x02a4
loc_8c0626b0:
	#data 0x019e
loc_8c0626b2:
	#data 0x019f
loc_8c0626b4:
	#data 0x041c
loc_8c0626b6:
	#data 0x0159
loc_8c0626b8:
	#data 0x012c
	#align4
loc_8c0626bc:
	#data bank03.loc_8c034e8c
loc_8c0626c0:
	#data bank03.loc_8c034dee
loc_8c0626c4:
	#data bank04.loc_8c045748
loc_8c0626c8:
	#data bank03.loc_8c03340c
loc_8c0626cc:
	#data bank15.loc_8c151f44
loc_8c0626d0:
	#data bank15.loc_8c151f4c
loc_8c0626d4:
	#data bank04.loc_8c0450c0
 
;=============================================
;Unused
loc_8c0626d8:
	mov.l r14,@-r15
	mov 0x02,r1
	mov.l @(0x13C,PC),r2
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @r2,r3
	cmp/ge r1,r3
	bt.s loc_8c0626f0
	mov r4,r13
	bra loc_8c06274c
	mov 0x00,r0

loc_8c0626f0:
	mov.l @(0x12C,PC),r2
	mov 0x00,r12
	mov 0x01,r5
	mov r12,r6
	jsr @r2
	mov r12,r4
	tst r0,r0
	bt.s loc_8c06271a
	mov r0,r14
	mov.w @(0x112,PC),r3
	mov.l @(0x11C,PC),r2
	mov.l r2,@(0x10,r14)
	mov.l r13,@(0x18,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x20,r0
	mov.b r12,@(r0,r14)
	mov 0x21,r0
	mov.b r12,@(r0,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)

loc_8c06271a:
	mov.l @(0x104,PC),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c06274c
	mov r0,r4
	tst r14,r14
	bt loc_8c06274c
	mov 0x01,r3
	mov.l @(0xF0,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov 0x26,r0
	mov.w @(0xCE,PC),r3
	mov.w r3,@(r0,r4)
	mov.l r4,@(0x14,r14)

loc_8c06274c:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c062756:
	mov.l @(0xC4,PC),r2
	mov 0x02,r1
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @r2,r3
	cmp/ge r1,r3
	bt.s loc_8c06276c
	mov r4,r13
	bra loc_8c0627d2
	mov 0x00,r0

loc_8c06276c:
	mov.l @(0xB0,PC),r2
	mov 0x01,r5
	mov 0x00,r6
	jsr @r2
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06279c
	mov r0,r14
	mov.l @(0xA4,PC),r2
	mov.l r2,@(0x10,r14)
	mov 0x00,r2
	mov.l @(0x18,r13),r3
	mov.l r3,@(0x18,r14)
	mov 0x03,r3
	mov.l r13,@(0x14,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x20,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.w @(0x80,PC),r3
	mov.b r2,@(r0,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)

loc_8c06279c:
	mov.l @(0x80,PC),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0627d2
	mov r0,r4
	tst r14,r14
	bt loc_8c0627d2
	mov.l @(0x70,PC),r2
	mov.l r2,@(0x10,r4)
	mov 0x00,r2
	mov.l @(0x18,r13),r3
	mov.l r3,@(0x18,r4)
	mov 0x04,r3
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(0x4C,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.l r4,@(0x14,r13)

loc_8c0627d2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0627da:
	mov.l r14,@-r15
	mov 0x02,r6
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r3
	mov r4,r14
	jsr @r3
	mov 0x01,r5
	tst r0,r0
	bt.s loc_8c06280e
	mov r0,r4
	mov.l @(0x34,PC),r3
	mov.l r3,@(0x10,r4)
	mov 0x02,r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(0xE,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c06280e:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c062818:
	#data 0x0301
	#align4
loc_8c06281c:
	#data 0x8c287ae8
loc_8c062820:
	#data bank04.loc_8c044f12
loc_8c062824:
	#data loc_8c062866

;==============================================
loc_8c062828:
	mov.l r14,@-r15
	mov 0x02,r6
	sts.l pr,@-r15
	mov.l @(0xFC,PC),r3
	mov r4,r14
	jsr @r3
	mov 0x01,r5
	tst r0,r0
	bt.s loc_8c06285c
	mov r0,r4
	mov.l @(0xF0,PC),r3
	mov.l r3,@(0x10,r4)
	mov 0x05,r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(0xC8,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c06285c:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c062866:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x24,r0
	mov.l @(0xC4,PC),r1
	mov r14,r4
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c062882:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x96,PC),r0
	mov r4,r14
	mov.l @(0xA8,PC),r3
	mov 0x42,r2
	mov 0x00,r13
	mov.w @(0x8A,PC),r4
	mov.l r5,@r15
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov 0x45,r3
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.l @(0x84,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x78,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x4C,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c0628e8
	add r14,r4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c0628e8:
	mov.w @(0x3C,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	add 0x01,r0
	mov 0x16,r3
	mov.w r2,@r4
	mov 0x1D,r2
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0x44,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,PC),r0
	mov 0xFC,r3
	mov r14,r4
	mov.b r13,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0634b4
	mov.l @r15+,r14

;##############################################
loc_8c062920:
	#data 0x0301
loc_8c062922:
	#data 0x0088
loc_8c062924:
	#data 0x013c
loc_8c062926:
	#data 0x0130
loc_8c062928:
	#data 0x0158
loc_8c06292a:
	#data 0x0140
	#align4
loc_8c06292c:
	#data bank04.loc_8c044f12
loc_8c062930:
	#data loc_8c062866
loc_8c062934:
	#data bank15.loc_8c151f54
loc_8c062938:
	#data 0x30305040
loc_8c06293c:
	#data 0x8c2896b0
loc_8c062940:
	#data 0x4312aaaa
loc_8c062944:
	#data 0x42c96db6
loc_8c062948:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c06294c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x14E,PC),r0
	mov 0x42,r2
	mov.l r5,@r15
	mov.l @(0x14,r14),r3
	mov 0x00,r4
	mov.w @(0x142,PC),r5
	mov.l r3,@(0x4,r15)
	mov.l @(0x14C,PC),r3
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x45,r3
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @(0x130,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x124,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x102,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c0629bc
	add r14,r5
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c0629bc:
	mov.w @(0xEA,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	add 0x01,r0
	mov 0x16,r3
	mov.w r2,@r5
	mov 0x1F,r2
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.w @(0xD8,PC),r0
	mov.l @(0x4,r15),r7
	mov.l @(0xE8,PC),r3
	mov.b @(r0,r7),r7
	add 0x17,r0
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov 0x31,r0
	mov r14,r4
	mov 0xFC,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c0634b4
	mov.l @r15+,r14

;==============================================
loc_8c0629f6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xC4,PC),r3
	mov r4,r14
	mov.w @(0xA0,PC),r0
	mov 0x42,r2
	mov 0x00,r4
	mov.l r5,@r15
	mov.l @(0x14,r14),r13
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0xAE,r0
	mov.b @(r0,r13),r3
	add 0x56,r0
	mov.w @(0x84,PC),r5
	add 0x45,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @(0x84,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x54,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c062a6a
	add r14,r5
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c062a6a:
	mov.w @(0x3C,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	add 0x01,r0
	mov 0x16,r3
	mov.w r2,@r5
	mov 0x1E,r2
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xE9,r0
	mov.b @(r0,r13),r7
	add 0x17,r0
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0x34,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov 0x31,r0
	mov r14,r4
	mov 0xFC,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0634b4
	mov.l @r15+,r14

;#############################################################
loc_8c062aa4:
	#data 0x0088
loc_8c062aa6:
	#data 0x013c
loc_8c062aa8:
	#data 0x0130
loc_8c062aaa:
	#data 0x0158
loc_8c062aac:
	#data 0x0141
	#align4
loc_8c062ab0:
	#data 0x20202020
loc_8c062ab4:
	#data 0x8c2896b0
loc_8c062ab8:
	#data 0x43055555
loc_8c062abc:
	#data 0x42a00000
loc_8c062ac0:
	#data bank03.loc_8c034f54
loc_8c062ac4:
	#data 0x20203030
loc_8c062ac8:
	#data 0x43200000
loc_8c062acc:
	#data 0x42d20000

;----------------------------------------------
loc_8c062ad0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x13C,PC),r0
	mov r4,r14
	mov.l @(0x144,PC),r3
	mov 0x42,r2
	mov 0x00,r13
	mov.w @(0x130,PC),r4
	mov.l r5,@r15
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov 0x47,r3
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.l @(0x124,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x114,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xF4,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c062b34
	add r14,r4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c062b34:
	mov.w @(0xE4,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	add 0x01,r0
	mov 0x16,r3
	mov.w r2,@r4
	mov 0x23,r2
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0xE0,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(0xC6,PC),r0
	mov 0xFA,r3
	mov r14,r4
	mov.b r13,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0634b4
	mov.l @r15+,r14

;==============================================
loc_8c062b6c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0xA0,PC),r0
	mov 0x42,r2
	mov.l r5,@r15
	mov.l @(0x14,r14),r3
	mov 0x00,r4
	mov.w @(0x94,PC),r5
	mov.l r3,@(0x4,r15)
	mov.l @(0xB0,PC),r3
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x47,r3
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @(0x84,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x54,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c062bdc
	add r14,r5
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c062bdc:
	mov.w @(0x3C,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	add 0x01,r0
	mov 0x16,r3
	mov.w r2,@r5
	mov 0x25,r2
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.w @(0x2C,PC),r0
	mov.l @(0x4,r15),r7
	mov.l @(0x48,PC),r3
	mov.b @(r0,r7),r7
	add 0x17,r0
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov 0x31,r0
	mov r14,r4
	mov 0xFA,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c0634b4
	mov.l @r15+,r14

;##############################################
loc_8c062c16:
	#data 0x0088
loc_8c062c18:
	#data 0x013c
loc_8c062c1a:
	#data 0x0130
loc_8c062c1c:
	#data 0x0158
loc_8c062c1e:
	#data 0x0140
loc_8c062c20:
	#data 0x0141
	#align4
loc_8c062c24:
	#data 0x30305040
loc_8c062c28:
	#data 0x8c2896b0
loc_8c062c2c:
	#data 0x42a6aaaa
loc_8c062c30:
	#data bank03.loc_8c034e8c
loc_8c062c34:
	#data 0x20202020
loc_8c062c38:
	#data 0x43055555
loc_8c062c3c:
	#data 0x42a00000
loc_8c062c40:
	#data bank03.loc_8c034f54

;----------------------------------------------
loc_8c062c44:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x144,PC),r0
	mov 0x42,r2
	mov.l r5,@r15
	mov.l @(0x14,r14),r3
	mov 0x00,r4
	mov.w @(0x138,PC),r5
	mov.l r3,@(0x4,r15)
	mov.l @(0x14C,PC),r3
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x47,r3
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @(0x130,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x124,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xF8,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c062cb4
	add r14,r5
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c062cb4:
	mov.w @(0xE0,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	add 0x01,r0
	mov 0x16,r3
	mov.w r2,@r5
	mov 0x24,r2
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.w @(0xCE,PC),r0
	mov.l @(0x4,r15),r7
	mov.l @(0xE8,PC),r3
	mov.b @(r0,r7),r7
	add 0x17,r0
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov 0x31,r0
	mov r14,r4
	mov 0xFA,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c0634b4
	mov.l @r15+,r14

;==============================================
loc_8c062cee:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xA6,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xC0,PC),r3
	add 0x01,r0
	mov.w @(0x9A,PC),r2
	mov.b r0,@(0x4,r14)
	mov.w @(0x98,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x94,PC),r0
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
	mov.w @(0x78,PC),r0
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
	mov.l @(0x80,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r14,r4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0x74,PC),r0
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c062d5c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x2E,PC),r4
	mov.w @(0x32,PC),r0
	add r14,r4
	sts.l pr,@-r15
	mov.w @r4,r2
	mov.w @(r0,r5),r3
	cmp/eq r2,r3
	bt loc_8c062dcc
	mov.b @(0x5,r14),r0
	mov 0x16,r3
	mov 0x20,r2
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x24,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c062d92:
	#data 0x0088
loc_8c062d94:
	#data 0x013c
loc_8c062d96:
	#data 0x0130
loc_8c062d98:
	#data 0x0158
loc_8c062d9a:
	#data 0x0141
loc_8c062d9c:
	#data 0x00dc
loc_8c062d9e:
	#data 0x00c0
loc_8c062da0:
	#data 0x012c
loc_8c062da2:
	#data 0x01a3
loc_8c062da4:
	#data 0x0159
	#align4
loc_8c062da8:
	#data 0x20203030
loc_8c062dac:
	#data 0x8c2896b0
loc_8c062db0:
	#data 0x43200000
loc_8c062db4:
	#data 0x42d20000
loc_8c062db8:
	#data bank03.loc_8c034f54
loc_8c062dbc:
	#data bank12.loc_8c129560
loc_8c062dc0:
	#data bank12.loc_8c1294c8
loc_8c062dc4:
	#data bank15.loc_8c151f64
loc_8c062dc8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c062dcc:
	mov 0x5C,r0
	mov.l @(0x138,PC),r4
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	mov 0x01,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c062e4a
	mov.l @(0x110,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xF6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c062e40
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x61,r0
	mov 0x46,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xF0,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bsr loc_8c0627da
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c062e40
	mov.l @(0x14,r14),r5
	mov.l r4,@(0x14,r5)
	mov.l r4,@(0x14,r14)

loc_8c062e40:
	lds.l @r15+,pr
	mov.l @(0xD0,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c062e4a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c062e50:
	mov.w @(0xA8,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c062e78
	mov r4,r14
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c062e78:
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c062e90
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6E,PC),r0
	mov.b r3,@(r0,r14)

loc_8c062e90:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c062e96:
	mov r4,r3
	mov.l @(0x7C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c062ea8:
	mov.w @(0x54,PC),r6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x50,PC),r0
	add r14,r6
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	mov.w @r6,r2
	mov.l @(0x14,r14),r13
	cmp/eq r2,r3
	bt.s loc_8c062ee4
	mov 0x16,r4
	mov.b @(0x5,r14),r0
	mov 0x22,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x36,PC),r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.b @(r0,r14),r5
	mov.l @r15+,r13
	mov.l @(0x3C,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c062ee4:
	mov.b @(0x4,r13),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c062f6e
	mov 0x20,r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c062f20
	bra loc_8c062f22
	mov 0x5C,r0

;##############################################
loc_8c062efa:
	#data 0x0140
loc_8c062efc:
	#data 0x01d0
loc_8c062efe:
	#data 0x012c
loc_8c062f00:
	#data 0x0088
loc_8c062f02:
	#data 0x0158
loc_8c062f04:
	#data 0x0159
	#align4
loc_8c062f08:
	#data 0x8c2895f0
loc_8c062f0c:
	#data bank03.loc_8c034dee
loc_8c062f10:
	#data 0x8c2896b0
loc_8c062f14:
	#data bank04.loc_8c045748
loc_8c062f18:
	#data bank15.loc_8c151f7c
loc_8c062f1c:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c062f20:
	mov 0x68,r0

loc_8c062f22:
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov 0x01,r1
	mov.l @(0x114,PC),r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r5),r3
	mov 0x3B,r0
	mov.b @(r0,r5),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c062f88
	mov.w @(0xEC,PC),r0
	mov 0x1F,r3
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xE9,r0
	mov.b @(r0,r13),r7
	add 0x17,r0
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0xE4,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.l @(0xE0,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c062f7c

loc_8c062f6e:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC0,PC),r0
	bra loc_8c062f88
	mov.b r3,@(r0,r14)

loc_8c062f7c:
	lds.l @r15+,pr
	mov.l @(0xCC,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c062f88:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c062f90:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c062fa4
	bra loc_8c062fa6
	mov 0x5C,r0

loc_8c062fa4:
	mov 0x68,r0

loc_8c062fa6:
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mov.l @(0xA0,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c062fce
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6C,PC),r0
	mov.b r3,@(r0,r14)

loc_8c062fce:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c062fd4:
	mov r4,r3
	mov.l @(0x7C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c062fe6:
	mov.w @(0x52,PC),r6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x4E,PC),r0
	add r14,r6
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	mov.w @r6,r2
	mov.l @(0x14,r14),r13
	cmp/eq r2,r3
	bt.s loc_8c063022
	mov 0x16,r4
	mov.b @(0x5,r14),r0
	mov 0x21,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x2C,PC),r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.b @(r0,r14),r5
	mov.l @r15+,r13
	mov.l @(0x38,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c063022:
	mov.b @(0x4,r13),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c0630aa
	mov 0x20,r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c06305c
	bra loc_8c06305e
	mov 0x5C,r0

;##############################################
loc_8c063038:
	#data 0x0159
loc_8c06303a:
	#data 0x012c
loc_8c06303c:
	#data 0x0088
loc_8c06303e:
	#data 0x0158
	#align4
loc_8c063040:
	#data 0x8c2895f0
loc_8c063044:
	#data bank03.loc_8c034f54
loc_8c063048:
	#data bank03.loc_8c03340c
loc_8c06304c:
	#data bank04.loc_8c045748
loc_8c063050:
	#data bank03.loc_8c034dee
loc_8c063054:
	#data bank15.loc_8c151f84
loc_8c063058:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c06305c:
	mov 0x68,r0

loc_8c06305e:
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov 0x01,r1
	mov.l @(0x100,PC),r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r5),r3
	mov 0x3B,r0
	mov.b @(r0,r5),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0630c4
	mov.w @(0xD6,PC),r0
	mov 0x1E,r3
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xE9,r0
	mov.b @(r0,r13),r7
	add 0x17,r0
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0xD0,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.l @(0xCC,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0630b8

loc_8c0630aa:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xAA,PC),r0
	bra loc_8c0630c4
	mov.b r3,@(r0,r14)

loc_8c0630b8:
	lds.l @r15+,pr
	mov.l @(0xB8,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0630c4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0630cc:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0630e0
	bra loc_8c0630e2
	mov 0x5C,r0

loc_8c0630e0:
	mov 0x68,r0

loc_8c0630e2:
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mov.l @(0x8C,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06310a
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x56,PC),r0
	mov.b r3,@(r0,r14)

loc_8c06310a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063110:
	mov r4,r3
	mov.l @(0x68,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c063122:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x38,PC),r4
	mov.w @(0x38,PC),r0
	add r14,r4
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @r4,r2
	mov.w @(r0,r5),r3
	cmp/eq r2,r3
	bt.s loc_8c063184
	mov.l @(0x14,r14),r13
	mov.b @(0x5,r14),r0
	mov 0x16,r3
	mov 0x26,r2
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x14,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0x28,PC),r3
	mov.l @r15+,r13
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06315e:
	#data 0x0159
loc_8c063160:
	#data 0x012c
loc_8c063162:
	#data 0x0088
loc_8c063164:
	#data 0x0158
	#align4
loc_8c063168:
	#data 0x8c2895f0
loc_8c06316c:
	#data bank03.loc_8c034f54
loc_8c063170:
	#data bank03.loc_8c03340c
loc_8c063174:
	#data bank04.loc_8c045748
loc_8c063178:
	#data bank03.loc_8c034dee
loc_8c06317c:
	#data bank15.loc_8c151f8c
loc_8c063180:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c063184:
	mov 0x5C,r0
	mov.l @(0x110,PC),r4
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov 0x01,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0631e0
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0631d4
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	bsr loc_8c062828
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c0631d4
	mov.l @(0x14,r13),r5
	mov.l r4,@(0x14,r5)
	mov.l r4,@(0x14,r13)

loc_8c0631d4:
	lds.l @r15+,pr
	mov.l @(0xC8,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0631e0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0631e8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r0
	mov.l @(0xAC,PC),r3
	sts.l pr,@-r15
	fmov @(r0,r14),fr3
	mov 0x34,r0
	mov.l @(0x14,r14),r4
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063220
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6E,PC),r0
	mov.b r3,@(r0,r14)

loc_8c063220:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063226:
	mov r4,r3
	mov.l @(0x78,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c063238:
	mov.w @(0x54,PC),r6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x50,PC),r0
	add r14,r6
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	mov.w @r6,r2
	mov.l @(0x14,r14),r13
	cmp/eq r2,r3
	bt.s loc_8c063274
	mov 0x16,r4
	mov.b @(0x5,r14),r0
	mov 0x28,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x36,PC),r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.b @(r0,r14),r5
	mov.l @r15+,r13
	mov.l @(0x38,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c063274:
	mov.b @(0x4,r13),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c0632fa
	mov 0x20,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0632ac
	bra loc_8c0632ae
	mov 0x5C,r0

;##############################################
loc_8c06328c:
	#data 0x0140
loc_8c06328e:
	#data 0x012c
loc_8c063290:
	#data 0x0088
loc_8c063292:
	#data 0x0158
loc_8c063294:
	#data 0x0159
	#align4
loc_8c063298:
	#data 0x8c2895f0
loc_8c06329c:
	#data bank03.loc_8c034dee
loc_8c0632a0:
	#data bank04.loc_8c045748
loc_8c0632a4:
	#data bank15.loc_8c151f94
loc_8c0632a8:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c0632ac:
	mov 0x68,r0

loc_8c0632ae:
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov 0x01,r1
	mov.l @(0x118,PC),r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r5),r3
	mov 0x3B,r0
	mov.b @(r0,r5),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c063314
	mov.w @(0xF0,PC),r0
	mov 0x25,r3
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xE9,r0
	mov.b @(r0,r13),r7
	add 0x17,r0
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0xE8,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.l @(0xE4,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c063308

loc_8c0632fa:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC4,PC),r0
	bra loc_8c063314
	mov.b r3,@(r0,r14)

loc_8c063308:
	lds.l @r15+,pr
	mov.l @(0xD0,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c063314:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06331c:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c063332
	bra loc_8c063334
	mov 0x5C,r0

loc_8c063332:
	mov 0x68,r0

loc_8c063334:
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mov.l @(0xA4,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06335c
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6E,PC),r0
	mov.b r3,@(r0,r14)

loc_8c06335c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063362:
	mov r4,r3
	mov.l @(0x7C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c063374:
	mov.w @(0x54,PC),r6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x50,PC),r0
	add r14,r6
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	mov.w @r6,r2
	mov.l @(0x14,r14),r13
	cmp/eq r2,r3
	bt.s loc_8c0633b0
	mov 0x16,r4
	mov.b @(0x5,r14),r0
	mov 0x27,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x2E,PC),r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.b @(r0,r14),r5
	mov.l @r15+,r13
	mov.l @(0x3C,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0633b0:
	mov.b @(0x4,r13),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c06343a
	mov 0x20,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0633ec
	bra loc_8c0633ee
	mov 0x5C,r0

;##############################################
loc_8c0633c8:
	#data 0x0159
loc_8c0633ca:
	#data 0x012c
loc_8c0633cc:
	#data 0x0088
loc_8c0633ce:
	#data 0x0158
	#align4
loc_8c0633d0:
	#data 0x8c2895f0
loc_8c0633d4:
	#data bank03.loc_8c034f54
loc_8c0633d8:
	#data bank03.loc_8c03340c
loc_8c0633dc:
	#data bank04.loc_8c045748
loc_8c0633e0:
	#data bank03.loc_8c034dee
loc_8c0633e4:
	#data bank15.loc_8c151f9c
loc_8c0633e8:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c0633ec:
	mov 0x68,r0

loc_8c0633ee:
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov 0x01,r1
	mov.l @(0xE8,PC),r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r5),r3
	mov 0x3B,r0
	mov.b @(r0,r5),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c063454
	mov.w @(0xC4,PC),r0
	mov 0x24,r3
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xE9,r0
	mov.b @(r0,r13),r7
	add 0x17,r0
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0xB8,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c063448

loc_8c06343a:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x98,PC),r0
	bra loc_8c063454
	mov.b r3,@(r0,r14)

loc_8c063448:
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c063454:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06345c:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c063472
	bra loc_8c063474
	mov 0x5C,r0

loc_8c063472:
	mov 0x68,r0

loc_8c063474:
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mov.l @(0x74,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06349c
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x42,PC),r0
	mov.b r3,@(r0,r14)

loc_8c06349c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0634a2:
	mov r4,r3
	mov.l @(0x4C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0634b4:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x38,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0634c8:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xA,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0634d6:
	mov.l @(0x24,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0634dc:
	#data 0x0159
loc_8c0634de:
	#data 0x012c
	#align4
loc_8c0634e0:
	#data 0x8c2895f0
loc_8c0634e4:
	#data bank03.loc_8c034f54
loc_8c0634e8:
	#data bank03.loc_8c03340c
loc_8c0634ec:
	#data bank04.loc_8c045748
loc_8c0634f0:
	#data bank03.loc_8c034dee
loc_8c0634f4:
	#data bank15.loc_8c151fa4
loc_8c0634f8:
	#data bank15.loc_8c151fac
loc_8c0634fc:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c063500:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0x170,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06353a
	mov r0,r4
	mov 0x00,r5
	mov.l @(0x160,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x144,PC),r3
	mov.l r14,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)

loc_8c06353a:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063544:
	mov.l r14,@-r15
	mov 0x02,r6
	sts.l pr,@-r15
	mov.l @(0x12C,PC),r3
	mov r4,r14
	jsr @r3
	mov 0x01,r5
	tst r0,r0
	bt.s loc_8c063582
	mov r0,r4
	mov.l @(0x120,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(0xEE,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)

loc_8c063582:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06358c:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0xEC,PC),r1
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0635a0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xBE,PC),r7
	mov 0x00,r4
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r7
	mov.l @(0x14,r14),r6
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.w @(0xAC,PC),r1
	mov.b r0,@(0x5,r14)
	mov.w @(0xAA,PC),r0
	add r14,r1
	mov.w @(0xA4,PC),r2
	mov.l @(0xC0,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xA0,PC),r0
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
	mov.w @(0x84,PC),r0
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
	mov.l @(0x88,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x84,PC),r3
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x1,r7)
	mov.w @(0x5E,PC),r0
	mov.b r4,@r7
	mov 0x42,r7
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov.b r7,@(r0,r14)
	add 0x01,r0
	mov.b r7,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.w @(0x4C,PC),r0
	add 0x48,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x5C,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x22,PC),r0
	mov.w @(r0,r6),r2
	tst r2,r2
	bt loc_8c063698
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	bra loc_8c0636a8
	fmov fr2,@(r0,r14)

;##############################################
loc_8c063664:
	#data 0x0302
loc_8c063666:
	#data 0x0088
loc_8c063668:
	#data 0x00dc
loc_8c06366a:
	#data 0x00c0
loc_8c06366c:
	#data 0x012c
loc_8c06366e:
	#data 0x01a3
loc_8c063670:
	#data 0x013c
loc_8c063672:
	#data 0x01a1
loc_8c063674:
	#data 0x0130
	#align4
loc_8c063678:
	#data bank04.loc_8c044f12
loc_8c06367c:
	#data loc_8c06358c
loc_8c063680:
	#data bank15.loc_8c151fc4
loc_8c063684:
	#data bank12.loc_8c129560
loc_8c063688:
	#data bank12.loc_8c1294c8
loc_8c06368c:
	#data 0x60003030
loc_8c063690:
	#data 0x8c2896b0
loc_8c063694:
	#data 0x42a00000

;----------------------------------------------
loc_8c063698:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	mov 0x34,r0
	fneg fr3
	fadd fr2,fr3
	fmov fr3,@(r0,r14)

loc_8c0636a8:
	mov.w @(0x144,PC),r0
	fldi0 fr4
	fmov @(r0,r5),fr3
	mov 0x38,r0
	mov.l @(0x144,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	mov.w @(r0,r4),r0
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r4,r0
	mov.w @(0x2,r0),r0
	mov.w r0,@(0x1E,r14)
	mova @(0x120,PC),r0
	fmov @r0,fr5
	mova @(0x120,PC),r0
	fmov @r0,fr4
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	mov.w @(0x4,r3),r0
	mov 0x2C,r2
	mov r0,r3
	lds r3,fpul
	mov 0x60,r0
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	mov.w @(0x6,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x6C,r0
	mov 0x16,r3
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xD0,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0xD8,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.l @(0xD4,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x01,r3
	mov.b r3,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063742:
	mov.w @(0xB0,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.w @(0xA4,PC),r4
	tst r3,r3
	bt.s loc_8c063758
	add r14,r4
	mov 0x01,r3
	mov.b r3,@r4

loc_8c063758:
	mov.l @(0xB0,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063780
	mov.b @(0x5,r14),r0
	mov 0x16,r5
	mov.l @(0xA4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x8C,PC),r2
	mov r14,r4
	mov 0x2D,r6
	mov 0x16,r5
	jmp @r2
	mov.l @r15+,r14

loc_8c063780:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063786:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x64,PC),r3
	mov r4,r14
	mov.l @(0x78,PC),r2
	add r14,r3
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov.l @r15,r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c0637b6
	mov.w @(0x50,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0637b6
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0637cc

loc_8c0637b6:
	mov.b @(0x5,r14),r0
	mov 0x16,r5
	mov r14,r4
	mov 0x2E,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0637cc:
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
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0637f0:
	#data 0x041c
loc_8c0637f2:
	#data 0x0159
loc_8c0637f4:
	#data 0x0088
loc_8c0637f6:
	#data 0x019f
loc_8c0637f8:
	#data bank15.loc_8c151fd4
loc_8c0637fc:
	#data 0x40092492
loc_8c063800:
	#data 0x43800000
loc_8c063804:
	#data bank03.loc_8c034e8c
loc_8c063808:
	#data bank10.loc_8c104434
loc_8c06380c:
	#data bank03.loc_8c034dee
loc_8c063810:
	#data bank04.loc_8c04223a

;==============================================
loc_8c063814:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c063832
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xB6,PC),r0
	mov.b r3,@(r0,r14)

loc_8c063832:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063838:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0xFE,r2
	mov r4,r14
	mov 0x31,r0
	mov r5,r13
	mov.w @(0x9E,PC),r3
	add r13,r3
	mov.l r3,@r15
	mov.b r2,@(r0,r14)
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c063860
	mov.w @(0x92,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c06386e

loc_8c063860:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x7C,PC),r0
	bra loc_8c0638bc
	mov.b r3,@(r0,r14)

loc_8c06386e:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x04,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c06389e
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c06389e
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c06389e
	bsr loc_8c063544
	mov r14,r4
	tst r0,r0
	bt loc_8c06389e
	mov.l @r15,r2
	mov 0x15,r0
	mov.b @(r0,r2),r3
	add 0x01,r3
	mov.b r3,@(r0,r2)

loc_8c06389e:
	mov.b @(0x5,r14),r0
	mov r13,r5
	mov.l @(0x50,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x40,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0638bc:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0638c6:
	mov.b @(0x4,r4),r0
	mov 0x00,r2
	mov.w @(0x1C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	add r3,r5
	mov.w @(0x12,PC),r0
	mov.b r2,@(r0,r4)
	mov 0x15,r0
	mov.b @(r0,r5),r2
	add 0xFF,r2
	rts
	mov.b r2,@(r0,r5)

;==============================================
loc_8c0638e0:
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0638e6:
	#data 0x0141
loc_8c0638e8:
	#data 0x012c
loc_8c0638ea:
	#data 0x02a4
loc_8c0638ec:
	#data 0x01d0
	#align4
loc_8c0638f0:
	#data bank03.loc_8c034dee
loc_8c0638f4:
	#data bank15.loc_8c151ffc
loc_8c0638f8:
	#data bank04.loc_8c045748
loc_8c0638fc:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c063900:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x110,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c063938
	mov r0,r4
	mov.l @(0x100,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0xEA,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c063938:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c063940:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov 0x01,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bt.s loc_8c06395e
	mov.l @(0x18,r14),r5
	mov.w @(0xC0,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c06395e
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8c06395e:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0xC0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06396e:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xA0,PC),r4
	mov.l r13,@-r15
	mov r5,r13
	mov.l @(0xAC,PC),r3
	add r13,r4
	mov.w @(0x98,PC),r0
	mov r13,r5
	mov.w @(0x96,PC),r1
	sts.l pr,@-r15
	mov.l r14,@(0x4,r4)
	mov 0x42,r4
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x93,r0
	mov.w @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.w r0,@r1
	bsr loc_8c063f08
	mov r14,r4
	mov.l @(0x88,PC),r2
	mov 0x16,r5
	mov 0x08,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x84,PC),r3
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov 0x01,r2
	mov.b r2,@r14
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c063ec2
	mov.l @r15+,r14

;==============================================
loc_8c0639c0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x4E,PC),r4
	mov.l r13,@-r15
	mov r5,r13
	mov.l @(0x5C,PC),r3
	add r13,r4
	mov.w @(0x46,PC),r0
	mov r13,r5
	mov.w @(0x44,PC),r1
	sts.l pr,@-r15
	mov.l r14,@(0x4,r4)
	mov 0x42,r4
	mov.l r3,@(r0,r14)
	add 0x60,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x93,r0
	mov.w @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.w r0,@r1
	bsr loc_8c063f08
	mov r14,r4
	mov.l @(0x38,PC),r2
	mov 0x16,r5
	mov 0x09,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov 0x01,r2
	mov.b r2,@r14
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c063ec2
	mov.l @r15+,r14

;##############################################
loc_8c063a12:
	#data 0x0303
loc_8c063a14:
	#data 0x01d0
loc_8c063a16:
	#data 0x02a4
loc_8c063a18:
	#data 0x013c
loc_8c063a1a:
	#data 0x0130
	#align4
loc_8c063a1c:
	#data bank04.loc_8c044f12
loc_8c063a20:
	#data loc_8c063940
loc_8c063a24:
	#data bank15.loc_8c152008
loc_8c063a28:
	#data 0x80403030
loc_8c063a2c:
	#data bank03.loc_8c034e8c
loc_8c063a30:
	#data bank10.loc_8c104434

;----------------------------------------------
loc_8c063a34:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x132,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x138,PC),r3
	add 0x01,r0
	mov.w @(0x126,PC),r2
	mov.b r0,@(0x4,r14)
	mov.w @(0x124,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x120,PC),r0
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
	mov.w @(0x104,PC),r0
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
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r14,r4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0xEC,PC),r0
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c063aa2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xCA,PC),r3
	mov r4,r14
	add r5,r3
	mov.l r3,@r15
	bsr loc_8c063f08
	mov r14,r4
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063ae6
	mov.b @(0x5,r14),r0
	mov 0x01,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.l @r15,r3
	mov r4,r0
	nop
	mov 0x16,r5
	mov r14,r4
	mov.b r0,@(0xD,r3)
	mov 0x10,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c063ae6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063aee:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c063b00
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8c063b00:
	bra loc_8c063f08
	nop

;==============================================
loc_8c063b04:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c063f08
	mov r4,r14
	mov.l @(0x78,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063b46
	mov.b @(0x5,r14),r0
	mov r14,r4
	fldi0 fr4
	mov 0x0D,r6
	add 0x01,r0
	mov.l @(0x68,PC),r3
	mov.b r0,@(0x5,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x16,r5
	fmov fr3,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c063b46:
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c063b68
	mov.b @(r0,r14),r0
	cmp/eq 0x3E,r0
	bf loc_8c063b62
	mov.l @(0x40,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x18,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c063b62:
	mov.w @(0x12,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c063b68:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c063b6e:
	#data 0x00dc
loc_8c063b70:
	#data 0x00c0
loc_8c063b72:
	#data 0x012c
loc_8c063b74:
	#data 0x01a3
loc_8c063b76:
	#data 0x02a4
loc_8c063b78:
	#data 0x0141
	#align4
loc_8c063b7c:
	#data bank12.loc_8c129560
loc_8c063b80:
	#data bank12.loc_8c1294c8
loc_8c063b84:
	#data bank15.loc_8c152018
loc_8c063b88:
	#data bank03.loc_8c034dee
loc_8c063b8c:
	#data bank03.loc_8c034e8c
loc_8c063b90:
	#data 0x42092492
loc_8c063b94:
	#data 0xbf092492
loc_8c063b98:
	#data bank0b.loc_8c0be50a

;==============================================
loc_8c063b9c:
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
	mova @(0x104,PC),r0
	fmov @r0,fr4
	mov.w @(0xF6,PC),r0
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_8c063bf6
	mov.w @(0xE8,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8c063bf6:
	mov.l @(0xE8,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c063bfc:
	mov.w @(0xD4,PC),r3
	add r3,r5
	mov.b @(0xE,r5),r0
	tst r0,r0
	bt loc_8c063c14
	mov.b @(0x5,r4),r0
	mov 0x11,r6
	mov.l @(0xD8,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	jmp @r2
	mov 0x16,r5

loc_8c063c14:
	mov.l @(0xC8,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c063c1a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0xAE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c063c54
	mov.b @(r0,r14),r0
	cmp/eq 0x3F,r0
	bf loc_8c063c4e
	mov.b @(0x5,r14),r0
	mov 0x03,r5
	mov.l @(0xB0,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r2
	mov r14,r4
	mov 0x12,r6
	mov 0x16,r5
	jmp @r2
	mov.l @r15+,r14

loc_8c063c4e:
	mov.w @(0x84,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c063c54:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063c5a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063cb0
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x42,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c063ca4
	mov 0x13,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c063ca4:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov 0x16,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c063cb0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063cb6:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c063cce
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r4)

loc_8c063cce:
	rts
	nop
	mov.b @(r0,r1),r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c063cd4:
	#data 0x02a4
loc_8c063cd6:
	#data 0x0141
loc_8c063cd8:
	#data 0x0130
loc_8c063cda:
	#data 0x012c
	#align4
loc_8c063cdc:
	#data 0x44092492
loc_8c063ce0:
	#data bank03.loc_8c034dee
loc_8c063ce4:
	#data bank03.loc_8c034e8c
loc_8c063ce8:
	#data bank0b.loc_8c0be50a
loc_8c063cec:
	#data 0x40555555
loc_8c063cf0:
	#data 0xc0892492
loc_8c063cf4:
	#data 0xbf892492

;==============================================
loc_8c063cf8:
	mov r4,r3
	mov.l @(0x114,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c063d0a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xF6,PC),r3
	mov r4,r14
	add r5,r3
	mov.l r3,@r15
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063d4a
	mov.b @(0x5,r14),r0
	mov 0x01,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.l @r15,r3
	mov r4,r0
	nop
	mov 0x16,r6
	mov r14,r4
	mov r6,r5
	mov.b r0,@(0xD,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xD0,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c063d4a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063d52:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c063d64
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8c063d64:
	bra loc_8c063f08
	nop

;==============================================
loc_8c063d68:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA4,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063d9a
	mov.b @(0x5,r14),r0
	mov 0x16,r5
	mov r14,r4
	mov 0x17,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x80,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c063d9a:
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c063dc8
	mov.b @(r0,r14),r0
	cmp/eq 0x42,r0
	bf loc_8c063db6
	mov.w @(0x60,PC),r0
	mov 0x00,r2
	mov.l @(0x6C,PC),r3
	mov 0x01,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c063db6:
	mov.w @(0x52,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c063f08
	mov.l @r15+,r14

loc_8c063dc8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063dd0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c063f08
	mov r4,r14
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063e04
	mov.w @(0x26,PC),r0
	mov r14,r4
	mov.w @(0x22,PC),r1
	mov 0x18,r6
	mov.w @(r0,r14),r0
	mov 0x16,r5
	add r14,r1
	mov.l @(0x24,PC),r3
	xor 0x01,r0
	mov.w r0,@r1
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c063e04:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c063e0a:
	#data 0x02a4
loc_8c063e0c:
	#data 0x0141
loc_8c063e0e:
	#data 0x0130
	#align4
loc_8c063e10:
	#data bank15.loc_8c152020
loc_8c063e14:
	#data bank03.loc_8c034dee
loc_8c063e18:
	#data bank03.loc_8c034e8c
loc_8c063e1c:
	#data bank0b.loc_8c0be50a

;==============================================
loc_8c063e20:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x108,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063e72
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xEC,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xCC,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c063e66
	mov 0x13,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c063e66:
	lds.l @r15+,pr
	mov.l @(0xD4,PC),r3
	mov 0x16,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c063e72:
	mov.w @(0xB0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c063e8a
	mov 0x00,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x03,r5
	lds.l @r15+,pr
	mov.l @(0xBC,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c063e8a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063e90:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x98,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c063ea8
	mov.l @r15,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)

loc_8c063ea8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c063eb0:
	mov r4,r3
	mov.l @(0x94,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c063ec2:
	mov.w @(0x62,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c063ed8
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8c063ed8:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(0x6C,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c063eea:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c063eee:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x30,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c063efc:
	mov.w @(0x2C,PC),r2
	mov 0x01,r0
	mov.l @(0x4C,PC),r3
	add r2,r5
	jmp @r3
	mov.b r0,@(0xD,r5)

;==============================================
loc_8c063f08:
	mov.w @(0x20,PC),r6
	mov 0x34,r0
	fmov @(r0,r5),fr3
	add r5,r6
	mov.l @r6,r6
	fmov @(r0,r6),fr4
	fmov fr4,fr2
	fsub fr3,fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	rts
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c063f24:
	#data 0x0130
loc_8c063f26:
	#data 0x0141
loc_8c063f28:
	#data 0x01a0
loc_8c063f2a:
	#data 0x012c
loc_8c063f2c:
	#data 0x02a4
	#align4
loc_8c063f30:
	#data bank03.loc_8c034dee
loc_8c063f34:
	#data 0x40555555
loc_8c063f38:
	#data 0xc0892492
loc_8c063f3c:
	#data 0xbf892492
loc_8c063f40:
	#data bank03.loc_8c034e8c
loc_8c063f44:
	#data bank0b.loc_8c0be50a
loc_8c063f48:
	#data bank15.loc_8c152040
loc_8c063f4c:
	#data bank15.loc_8c152058
loc_8c063f50:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c063f54:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x14C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c063f80
	mov r0,r4
	mov.l @(0x13C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x11A,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c063f80:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c063f88:
	mov r4,r3
	mov.l @(0x124,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c063f9a:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xF6,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x10C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xE8,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xE0,PC),r0
	mov 0x01,r4
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0
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
	mov.w @(0xBC,PC),r0
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
	mov.l @(0xC0,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	fldi0 fr4
	mov 0x0B,r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.l @(0xB0,PC),r3
	mov.w @(0x8A,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x38,r0
	fmov @r3,fr3
	mov 0x42,r4
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r2,@(r0,r14)
	mov.w @(0x66,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(0x84,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r1
	jsr @r1
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06413a
	mov.l @r15+,r14

;==============================================
loc_8c064054:
	mov.w @(0x48,PC),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf.s loc_8c06406a
	mov 0x00,r5
	mov.w @(0x3C,PC),r0
	mov 0x31,r2
	bra loc_8c064070
	mov.b r2,@(r0,r4)

loc_8c06406a:
	mov.w @(0x34,PC),r0
	mov 0x30,r3
	mov.b r3,@(r0,r4)

loc_8c064070:
	mov.w @(0x30,PC),r0
	mov 0x12,r6
	mov.l @(0x54,PC),r3
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0x48,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jmp @r3
	mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c064096:
	#data 0x0400
loc_8c064098:
	#data 0x00dc
loc_8c06409a:
	#data 0x012c
loc_8c06409c:
	#data 0x01a3
loc_8c06409e:
	#data 0x019c
loc_8c0640a0:
	#data 0x0255
loc_8c0640a2:
	#data 0x01a1
loc_8c0640a4:
	#data 0x01ac
	#align4
loc_8c0640a8:
	#data bank04.loc_8c044f12
loc_8c0640ac:
	#data loc_8c063f88
loc_8c0640b0:
	#data bank15.loc_8c152060
loc_8c0640b4:
	#data bank12.loc_8c129560
loc_8c0640b8:
	#data bank12.loc_8c1294c8
loc_8c0640bc:
	#data 0x8c26a5a8
loc_8c0640c0:
	#data 0xc1892492
loc_8c0640c4:
	#data 0xbf892492
loc_8c0640c8:
	#data bank15.loc_8c152070
loc_8c0640cc:
	#data 0x8c2896b0
loc_8c0640d0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0640d4:
	mov.w @(0x126,PC),r0
	mov 0x50,r3
	mov 0x00,r5
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l @(0x120,PC),r3
	mov 0x0A,r6
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x10C,PC),r2
	jmp @r2
	mov 0x16,r5

;==============================================
loc_8c064102:
	mov.w @(0xFA,PC),r0
	mov 0x01,r3
	mov 0x43,r1
	mov.w @(r0,r4),r2
	mov 0x00,r5
	mov 0x0E,r6
	xor r3,r2
	mov.w r2,@(r0,r4)
	add 0x71,r0
	mov.b r1,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l @(0xE4,PC),r2
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r2,r1
	extu.b r0,r0
	shll r0
	add 0x7C,r1
	mov.w @(r0,r1),r3
	add 0x01,r3
	mov.w r3,@(r0,r1)
	mov.l @(0xD4,PC),r1
	jmp @r1
	mov 0x16,r5

;==============================================
loc_8c06413a:
	mov r4,r3
	mov.l @(0xD0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06414c:
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
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.w @(0x72,PC),r0
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0641d2
	mov.b @(0x5,r14),r0
	mov.l @(0x78,PC),r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x5E,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x6C,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x5,r4)
	mov 0x01,r0
	mov.b r0,@(0x6,r4)
	jsr @r3
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt.s loc_8c0641c8
	mov r14,r4
	bra loc_8c0641ca
	mov 0x2F,r5

loc_8c0641c8:
	mov 0x31,r5

loc_8c0641ca:
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c0641d2:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0641f4
	mov.w @(0x24,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0641f4
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x2C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c0641f4:
	lds.l @r15+,pr
	mov.l @(0x28,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0641fe:
	#data 0x01a1
loc_8c064200:
	#data 0x0130
loc_8c064202:
	#data 0x041c
loc_8c064204:
	#data 0x019e
	#align4
loc_8c064208:
	#data 0x8c2896b0
loc_8c06420c:
	#data bank03.loc_8c034e8c
loc_8c064210:
	#data bank15.loc_8c15207c
loc_8c064214:
	#data 0x8c26a518
loc_8c064218:
	#data bank03.loc_8c034dee
loc_8c06421c:
	#data bank04.loc_8c04223a
loc_8c064220:
	#data bank04.loc_8c045748

;----------------------------------------------
loc_8c064224:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c064254
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)

loc_8c064254:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06425a:
	mov 0x5C,r1
	mov.l @(0x68,PC),r3
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
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fmov @r3,fr3
	fcmp/gt fr3,fr2
	bf loc_8c0642a4
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8c0642a4:
	rts
	nop

;==============================================
loc_8c0642a8:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0642b6:
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0642bc:
	#data 0x012c
	#align4
loc_8c0642c0:
	#data bank03.loc_8c034dee
loc_8c0642c4:
	#data 0x41892492
loc_8c0642c8:
	#data 0x8c26a5a8
loc_8c0642cc:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c0642d0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x130,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c064348
	mov r0,r4
	mov.l @(0x124,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x10A,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mova @(0x114,PC),r0
	mov.b @r15,r3
	fmov @r0,fr4
	tst r3,r3
	bf loc_8c064310
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mova @(0x10C,PC),r0
	bra loc_8c064318
	fmov @r0,fr3

loc_8c064310:
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mova @(0x104,PC),r0
	fmov @r0,fr3

loc_8c064318:
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xE0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c06432c
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c06432c:
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

loc_8c064348:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c064354:
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
loc_8c064366:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x94,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xB0,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x86,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x7E,PC),r0
	mov 0x01,r4
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0
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
	mov.w @(0x5A,PC),r0
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
	mov.l @(0x64,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x0B,r3
	mov.w @(0x2C,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x42,r4
	mov.w @(0x26,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0x40,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0645c0
	mov.l @r15+,r14

;##############################################
loc_8c0643fe:
	#data 0x0401
loc_8c064400:
	#data 0x0130
loc_8c064402:
	#data 0x00dc
loc_8c064404:
	#data 0x012c
loc_8c064406:
	#data 0x01a3
loc_8c064408:
	#data 0x019c
	#align4
loc_8c06440c:
	#data bank04.loc_8c044f12
loc_8c064410:
	#data loc_8c064354
loc_8c064414:
	#data 0x43200000
loc_8c064418:
	#data 0x431a4924
loc_8c06441c:
	#data 0x434db6db
loc_8c064420:
	#data bank15.loc_8c152088
loc_8c064424:
	#data bank12.loc_8c129560
loc_8c064428:
	#data bank12.loc_8c1294c8
loc_8c06442c:
	#data bank15.loc_8c152098

;----------------------------------------------
loc_8c064430:
	mov.l r14,@-r15
	mov 0x60,r0
	mov r4,r14
	mov.w r0,@(0x1C,r14)
	mova @(0x160,PC),r0
	fldi0 fr4
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0x15C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x150,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x14C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x130,PC),r0
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bf loc_8c06447c
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c06447c:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	mov r0,r1
	fmov @(r0,r14),fr2
	add r3,r1
	fmov @r1,fr3
	mov 0x00,r4
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	mov r0,r1
	fmov @(r0,r14),fr2
	add r3,r1
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xF6,PC),r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x32,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.l @(0xFC,PC),r3
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @r3,r2
	mov.b @(0x2,r14),r0
	add 0x7C,r2
	extu.b r0,r0
	mov r14,r4
	shll r0
	mov.w @(r0,r2),r1
	mov 0x15,r5
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xCA,PC),r0
	mov.l @(0xE0,PC),r2
	mov.b @(r0,r14),r6
	add 0x13,r6
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0644d6:
	mov.l r14,@-r15
	mov 0x60,r0
	mov r4,r14
	mov.w r0,@(0x1C,r14)
	mova @(0xBC,PC),r0
	fldi0 fr4
	fmov @r0,fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c064522
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)

loc_8c064522:
	mov.w @(0x70,PC),r0
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bf loc_8c06453c
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c06453c:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	mov r0,r1
	fmov @(r0,r14),fr2
	add r3,r1
	fmov @r1,fr3
	mov 0x00,r4
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	mov r0,r1
	fmov @(r0,r14),fr2
	add r3,r1
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.w @(0x34,PC),r0
	add 0x3F,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.l @(0x3C,PC),r3
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @r3,r2
	mov.b @(0x2,r14),r0
	add 0x7C,r2
	extu.b r0,r0
	mov r14,r4
	shll r0
	mov.w @(r0,r2),r1
	mov 0x16,r5
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov.l @(0x20,PC),r2
	add 0x0A,r6
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c064596:
	#data 0x0130
loc_8c064598:
	#data 0x01a3
loc_8c06459a:
	#data 0x01a1
	#align4
loc_8c06459c:
	#data 0x43200000
loc_8c0645a0:
	#data 0x431a4924
loc_8c0645a4:
	#data 0x40855555
loc_8c0645a8:
	#data 0xc02b6db6
loc_8c0645ac:
	#data 0x8c2896b0
loc_8c0645b0:
	#data bank03.loc_8c034e8c
loc_8c0645b4:
	#data 0x434db6db
loc_8c0645b8:
	#data 0x41055555
loc_8c0645bc:
	#data 0xc0892492

;==============================================
loc_8c0645c0:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0xD8,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0645d4:
	mov r4,r3
	mov.l @(0xD0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0645e6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xC0,PC),r3
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
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov.w @(0x6E,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr4
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr4
	fcmp/gt fr2,fr4
	bf loc_8c064642
	fmov fr4,@(r0,r14)
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)

loc_8c064642:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c064656
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c064666

loc_8c064656:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x15,r0
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c064666:
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c064670:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c064676:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c064688
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8c064688:
	rts
	nop

;==============================================
loc_8c06468c:
	mov r4,r3
	mov.l @(0x28,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06469e:
	#data 0x041c
loc_8c0646a0:
	#data 0x019e
	#align4
loc_8c0646a4:
	#data bank15.loc_8c1520a8
loc_8c0646a8:
	#data bank15.loc_8c1520b8
loc_8c0646ac:
	#data bank03.loc_8c034dee
loc_8c0646b0:
	#data 0x42892492
loc_8c0646b4:
	#data bank04.loc_8c045748
loc_8c0646b8:
	#data bank15.loc_8c1520c0

;==============================================
loc_8c0646bc:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov.l @(0x18,r14),r13
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
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov.w @(0x80,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr4
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr4
	fcmp/gt fr2,fr4
	bf loc_8c06471c
	fmov fr4,@(r0,r14)
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)

loc_8c06471c:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c064730
	mov.w @(0x60,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c064762

loc_8c064730:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x15,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06476e
	mov.w @(0x48,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c06476e
	mov.w @(0x3C,PC),r0
	mov.b @(r0,r14),r0
	tst 0x7F,r0
	bf loc_8c06476e
	mov.w @(0x34,PC),r0
	mov 0x80,r2
	mov.b r2,@(r0,r13)
	add 0x12,r0
	mov.l @(r0,r14),r3
	bra loc_8c06476e
	mov.l r3,@(0x14,r13)

loc_8c064762:
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c06476e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c064776:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xE,PC),r0
	rts
	mov.b r3,@(r0,r4)

loc_8c064784:
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06478a:
	#data 0x041c
loc_8c06478c:
	#data 0x019e
loc_8c06478e:
	#data 0x01b0
loc_8c064790:
	#data 0x012c
	#align4
loc_8c064794:
	#data bank03.loc_8c034dee
loc_8c064798:
	#data 0x42892492
loc_8c06479c:
	#data bank04.loc_8c045748
loc_8c0647a0:
	#data bank04.loc_8c0450c0

;==============================================
#symbol loc_8c0647a4 0x8c0647a4
#symbol loc_8c064f2c 0x8c064f2c

;==============================================
#symbol loc_8c06d28c 0x8c06d28c



;#symbol loc_8c06 0x8c06
;cleanVs