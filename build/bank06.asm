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


;==============================================
#symbol loc_8c0647a4 0x8c0647a4
#symbol loc_8c064f2c 0x8c064f2c

;==============================================
#symbol loc_8c06d28c 0x8c06d28c



;#symbol loc_8c06 0x8c06
;cleanVs