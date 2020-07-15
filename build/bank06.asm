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
loc_8c0647a4:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x40,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0647d0
	mov r0,r4
	mov.l @(0x30,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x1E,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0647d0:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c0647d8:
	mov r4,r3
	mov.l @(0x18,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0647ea:
	#data 0x0402
	#align4
loc_8c0647ec:
	#data bank04.loc_8c044f12
loc_8c0647f0:
	#data loc_8c0647d8
loc_8c0647f4:
	#data bank15.loc_8c1520c8

;==============================================
loc_8c0647f8:
	mov.w @(0x10E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x11C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x100,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xF8,PC),r0
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
	mov.w @(0xD4,PC),r0
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
	mov.l @(0xD0,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x00,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov.w @(0xA6,PC),r0
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov.w @(0xA2,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov 0x47,r3
	fmov fr3,@(r0,r4)
	mov 0x24,r0
	mov.b r5,@(r0,r4)
	mov.w @(0x94,PC),r0
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	lds.l @r15+,pr

loc_8c064884:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x84,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0648a2
	mov.l @(0x18,r14),r13
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	add 0x01,r3
	mov.b r3,@(r0,r13)

loc_8c0648a2:
	mov.w @(0x66,PC),r0
	mov 0x00,r5
	mov.b r5,@(r0,r14)
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c064994
	mov.w @(0x62,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c064994
	mov.w @(0x52,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fcmp/eq fr3,fr2
	bt loc_8c064994
	mov.w @(0x50,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt.s loc_8c064994
	mov.b r2,@r15
	mov.w @(0x46,PC),r0
	add r13,r0
	mov.b @(0x1,r0),r0
	cmp/eq 0x24,r0
	bt loc_8c064994
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c064994
	mov.w @(0x36,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c064994
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c064902
	cmp/eq 0x01,r0
	bt loc_8c064906
	cmp/eq 0x02,r0
	bt loc_8c064928
	bra loc_8c064994
	nop

loc_8c064902:
	bra loc_8c06492a
	mov 0x0F,r4

loc_8c064906:
	bra loc_8c06492a
	mov 0x10,r4

;##############################################
loc_8c06490a:
	#data 0x00dc
loc_8c06490c:
	#data 0x012c
loc_8c06490e:
	#data 0x01a3
loc_8c064910:
	#data 0x041c
loc_8c064912:
	#data 0x019c
loc_8c064914:
	#data 0x01a0
loc_8c064916:
	#data 0x01f9
loc_8c064918:
	#data 0x01fc
loc_8c06491a:
	#data 0x0150
loc_8c06491c:
	#data 0x01ff
loc_8c06491e:
	#data 0x01e8
	#align4
loc_8c064920:
	#data bank12.loc_8c129560
loc_8c064924:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c064928:
	mov 0x11,r4

loc_8c06492a:
	mov.w @(0x84,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x74,PC),r0
	mov.b @(r0,r13),r3
	mov 0x21,r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bt loc_8c064972
	mov.w @(0x68,PC),r0
	mov.l @(0x6C,PC),r3
	mov.b @(r0,r13),r2
	mov 0x21,r0
	mov.b r2,@(r0,r14)
	mov.w @(0x60,PC),r0
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

loc_8c064972:
	mov.l @(0x48,PC),r3
	mov 0x14,r5
	mov.b @r15,r7
	mov 0x06,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x32,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c064994
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14


loc_8c064994:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06499e:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0649ac:
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0649b2:
	#data 0x012c
loc_8c0649b4:
	#data 0x014f
loc_8c0649b6:
	#data 0x01a1
	#align4
loc_8c0649b8:
	#data 0x8c2896b0
loc_8c0649bc:
	#data bank03.loc_8c034f54
loc_8c0649c0:
	#data bank04.loc_8c045748
loc_8c0649c4:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c0649c8:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(0x138,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c064a02
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0x10C,PC),r2
	mov.b r0,@r1
	mov 0x22,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c064a02:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c064a0a:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xF0,PC),r3
	mov 0x01,r6
	mov.b r0,@(0x4,r15)
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c064a50
	mov r0,r4
	mov.l @(0xE0,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.w @(0xC4,PC),r3
	mov.l r2,@(0x14,r4)
	mov 0x22,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c064a50:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c064a58:
	mov r4,r3
	mov.l @(0xB8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c064a6a:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x94,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xA0,PC),r3
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
	mov.l @(0x54,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x4B,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x2C,PC),r0
	mov.l @(0x44,PC),r3
	mov.b r4,@(r0,r14)
	add 0x70,r0
	mov 0x42,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(0x30,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c064c68
	mov.l @r15+,r14

;##############################################
loc_8c064b04:
	#data 0x0403
loc_8c064b06:
	#data 0x00dc
loc_8c064b08:
	#data 0x012c
loc_8c064b0a:
	#data 0x01a3
	#align4
loc_8c064b0c:
	#data bank04.loc_8c044f12
loc_8c064b10:
	#data loc_8c064a58
loc_8c064b14:
	#data bank15.loc_8c1520d8
loc_8c064b18:
	#data bank12.loc_8c129560
loc_8c064b1c:
	#data bank12.loc_8c1294c8
loc_8c064b20:
	#data bank04.loc_8c04223a
loc_8c064b24:
	#data bank15.loc_8c1520e8

;----------------------------------------------
;could be a start
loc_8c064b28:
	mova @(0x11C,PC),r0
	mov.l @(0x18,r4),r5
	fmov @r0,fr4
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r3
	mov.l @(0x114,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r3
	mov.l @(0x108,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r3
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov 0x64,r0
	fmov fr4,@(r0,r4)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xDA,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c064b7e
	mov.w r3,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x64,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c064b7e:
	mov 0x38,r0
	mov.l @(0xD8,PC),r3
	mov r0,r1
	add r5,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x64,r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	mov 0x00,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	mov.b r5,@(r0,r4)
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x03,r0
	bt loc_8c064bb8
	mov.w @(0x90,PC),r0
	mov 0x45,r1
	bra loc_8c064bbe
	mov.b r1,@(r0,r4)

loc_8c064bb8:
	mov.w @(0x88,PC),r0
	mov 0x44,r2
	mov.b r2,@(r0,r4)

loc_8c064bbe:
	mov.w @(0x84,PC),r0
	mov 0x11,r6
	mov.l @(0x9C,PC),r3
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0x8C,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jmp @r3
	mov 0x16,r5

;==============================================
loc_8c064be4:
	mov.l @(0x14,r4),r5
	mov 0x24,r0
	mov.l @(0x70,PC),r2
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.l @r2,r0
	mov.l @(0x1C,r0),r0
	tst 0x03,r0
	bt.s loc_8c064c00
	mov 0x00,r6
	mov.w @(0x48,PC),r0
	mov 0x45,r1
	bra loc_8c064c06
	mov.b r1,@(r0,r4)

loc_8c064c00:
	mov.w @(0x40,PC),r0
	mov 0x44,r3
	mov.b r3,@(r0,r4)

loc_8c064c06:
	mov.w @(0x3C,PC),r0
	mov.l @(0x54,PC),r3
	mov.w r6,@(r0,r4)
	add 0xF2,r0
	mov.b r6,@(r0,r4)
	add 0x26,r0
	mov.l r6,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x30,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x12,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c064c3e
	mov.w r3,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c064c3e:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c064c42:
	#data 0x0130
loc_8c064c44:
	#data 0x01a1
loc_8c064c46:
	#data 0x01ac
	#align4
loc_8c064c48:
	#data 0xc2a00000
loc_8c064c4c:
	#data bank13.loc_8c13acf8
loc_8c064c50:
	#data bank13.loc_8c13ad10
loc_8c064c54:
	#data 0xc1d55555
loc_8c064c58:
	#data 0x42a00000
loc_8c064c5c:
	#data 0x8c26823c
loc_8c064c60:
	#data 0x8c2896b0
loc_8c064c64:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c064c68:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x122,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c064c82
	mov.w @(0x118,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c064c90

loc_8c064c82:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x10A,PC),r0
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8c064c90:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(0x108,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

;Unused return
loc_8c064ca2:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c064ca6:
	mov r4,r3
	mov.l @(0xF8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c064cb8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.w @(0xD2,PC),r0
	mov.l r3,@r15
	mov.w @(r0,r14),r3
	mov.l @(0xDC,PC),r5
	tst r3,r3
	bt.s loc_8c064ce6
	mov 0x00,r4
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov.w @(0xC2,PC),r0
	fmov @(r0,r5),fr2
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8c064cf8
	bra loc_8c064cfa
	nop

loc_8c064ce6:
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov.w @(0xAE,PC),r0
	fmov @(r0,r5),fr2
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c064cfa

loc_8c064cf8:
	mov 0x01,r4

loc_8c064cfa:
	tst r4,r4
	bt loc_8c064d12
	mov.b @(0x6,r14),r0
	mov 0x16,r5
	mov.l @(0xB0,PC),r3
	mov 0x12,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x08,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c064d12:
	mov 0x5C,r1
	add r14,r1
	mov 0x64,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x5C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x64,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	mov.l @r15,r3
	fmov @(r0,r3),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fabs fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x78,PC),r0
	fmov @r0,fr4
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c064d60
	fmov @(r0,r14),fr3
	mov 0x01,r5
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r6
	bsr loc_8c064a0a
	mov r14,r4

loc_8c064d60:
	mov.l @(0x58,PC),r2
	jsr @r2
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x50,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c064d72:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov.l @(0x18,r14),r4
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c064dc4
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c064d92:
	#data 0x01d0
loc_8c064d94:
	#data 0x01e9
loc_8c064d96:
	#data 0x012c
loc_8c064d98:
	#data 0x0130
loc_8c064d9a:
	#data 0x008c
loc_8c064d9c:
	#data 0x0088
	#align4
loc_8c064da0:
	#data bank15.loc_8c1520f0
loc_8c064da4:
	#data bank15.loc_8c1520f8
loc_8c064da8:
	#data 0x8c26a518
loc_8c064dac:
	#data 0xc2d55555
loc_8c064db0:
	#data 0x42d55555
loc_8c064db4:
	#data bank03.loc_8c034e8c
loc_8c064db8:
	#data 0x42a00000
loc_8c064dbc:
	#data bank03.loc_8c034dee
loc_8c064dc0:
	#data bank04.loc_8c045748

;==============================================
loc_8c064dc4:
	mov 0x64,r0
	mov.l @(0x140,PC),r3
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x130,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;unused return?
loc_8c064de0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c064de6:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l r13,@-r15
	mov 0x64,r0
	mov.l @(0x114,PC),r3
	add r14,r1
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov.l @(0x18,r14),r13
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov fr2,fr3
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fmov @(r0,r14),fr3
	mova @(0xF8,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	fabs fr2

loc_8c064e1c:
	fcmp/gt fr2,fr3
	bf loc_8c064e72
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xD8,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c064e3c
	mov.w @(0x1E,r13),r0
	mov.l @(0xDC,PC),r3
	and r3,r0
	mov.w r0,@(0x1E,r13)

loc_8c064e3c:
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c064e4e
	mov.w @(0x1E,r13),r0
	mov.l @(0xCC,PC),r3
	and r3,r0
	mov.w r0,@(0x1E,r13)

loc_8c064e4e:
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c064e60
	mov.w @(0x1E,r13),r0
	mov.l @(0xC0,PC),r3
	and r3,r0
	mov.w r0,@(0x1E,r13)

loc_8c064e60:
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c064e72
	mov.w @(0x1E,r13),r0
	mov.l @(0xB0,PC),r3
	and r3,r0
	mov.w r0,@(0x1E,r13)

loc_8c064e72:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c064e7a:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x14,r14),r13
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c064eae
	mov.l @(0x18,r14),r4
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r14),fr3
	mova @(0x78,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	fabs fr2
	fcmp/gt fr2,fr3
	bf loc_8c064eae
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x58,PC),r0
	bra loc_8c064ee8
	mov.b r3,@(r0,r14)

loc_8c064eae:
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x5C,r0
	extu.b r3,r3
	fmov @(r0,r14),fr2
	lds r3,fpul
	mov 0x34,r0
	mov.l @(0x60,PC),r3
	mov 0x16,r5
	mov 0x13,r6
	float fpul,fr0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x30,PC),r0
	mov.b @(r0,r13),r7
	add 0xFF,r7
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c064ee8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c064ef0:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

loc_8c064efe:
	mov.l @(0x28,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c064f04:
	#data 0x012c
loc_8c064f06:
	#data 0x0141
	#align4
loc_8c064f08:
	#data bank03.loc_8c034dee
loc_8c064f0c:
	#data bank04.loc_8c045748
loc_8c064f10:
	#data 0x41d55555
loc_8c064f14:
	#data 0x0000fffe
loc_8c064f18:
	#data 0x0000fffd
loc_8c064f1c:
	#data 0x0000fffb
loc_8c064f20:
	#data 0x0000fff7
loc_8c064f24:
	#data bank03.loc_8c034f54
loc_8c064f28:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c064f2c:
	mov.l r14,@-r15
	mov 0x01,r5
	mov.l r13,@-r15
	mov r4,r14
	fmov fr15,@-r15
	mov 0x00,r6
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c064faa
	mov r0,r4
	mov.l @(0x88,PC),r3
	mov.w @(0x7A,PC),r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x78,PC),r3
	mov.l r14,@(0x18,r4)
	mov.l @(r0,r14),r2
	mov 0x26,r0
	mov.l r2,@(0x14,r4)
	mov 0x01,r2
	mov.w r3,@(r0,r4)
	mov.w @(0x68,PC),r0
	mov.b r2,@r4
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c064f80
	mov.w @(0x5A,PC),r0
	mov 0x2D,r6
	mov.l @(0x64,PC),r3
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(0x4E,PC),r0
	mov 0x30,r6
	mov.l @(0x58,PC),r3
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4

loc_8c064f80:
	fldi1 fr15
	fadd fr15,fr15
	mov 0x00,r6
	mov.l @(0x50,PC),r13
	mov r6,r5
	fmov fr15,fr5
	fmov fr15,fr4
	jsr @r13
	mov r14,r4
	mov 0x00,r6
	fmov fr15,fr5
	mov 0x10,r5
	fmov fr15,fr4
	jsr @r13
	mov r14,r4
	mov.w @(0x28,PC),r5
	mov 0x00,r6
	fmov fr15,fr5
	fmov fr15,fr4
	jsr @r13
	mov r14,r4

loc_8c064faa:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c064fb4:
	mov r4,r3
	mov.l @(0x24,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c064fc6:
	#data 0x01b4
loc_8c064fc8:
	#data 0x0404
loc_8c064fca:
	#data 0x00f0
	#align4
loc_8c064fcc:
	#data bank04.loc_8c044f12
loc_8c064fd0:
	#data loc_8c064fb4
loc_8c064fd4:
	#data bank04.loc_8c0420b8
loc_8c064fd8:
	#data bank0f.loc_8c0fd75c
loc_8c064fdc:
	#data bank15.loc_8c152104

;==============================================
loc_8c064fe0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xEC,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xF4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xDE,PC),r0
	mov.l @(0x14,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xD6,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)
	mov r14,r1
	mov.l @(0x14,r14),r0
	add 0x50,r1
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.l @(0x14,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xB2,PC),r0
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x14,r14),r2
	mov.l @(0xA8,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x14,r14),r1
	mov 0x24,r0
	mov 0x17,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r4
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r14)
	mov.w @(0x82,PC),r0
	mov.b @(r0,r4),r3
	mov 0x00,r4
	mov r4,r6
	mov.b r3,@(r0,r14)
	add 0xF8,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.l @(0x84,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x80,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x66,PC),r0
	mov r14,r4
	mov.b r0,@(0x6,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c06507c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r13),r14
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf.s loc_8c06509c
	mov 0x00,r4
	mov.w @(0x48,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bt loc_8c0650f8

loc_8c06509c:
	mov.b @(0x4,r13),r0
	mov 0x00,r6
	fldi1 fr15
	fadd fr15,fr15
	add 0x01,r0
	mov r6,r5
	mov.b r0,@(0x4,r13)
	mov.w @(0x28,PC),r0
	fmov fr15,fr5
	mov.b r4,@(r0,r13)
	mov.l @(0x40,PC),r13
	fmov fr15,fr4
	jsr @r13
	mov r14,r4
	mov 0x00,r6
	fmov fr15,fr5
	mov 0x10,r5
	fmov fr15,fr4
	jsr @r13
	mov r14,r4
	mov.w @(0x18,PC),r5
	mov 0x00,r6
	fmov fr15,fr5
	fmov fr15,fr4
	jsr @r13
	mov r14,r4
	bra loc_8c0651a0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0650d4:
	#data 0x00dc
loc_8c0650d6:
	#data 0x012c
loc_8c0650d8:
	#data 0x01a3
loc_8c0650da:
	#data 0x01a4
loc_8c0650dc:
	#data 0x00ff
loc_8c0650de:
	#data 0x0233
loc_8c0650e0:
	#data 0x00f0
	#align4
loc_8c0650e4:
	#data bank12.loc_8c129560
loc_8c0650e8:
	#data bank12.loc_8c1294c8
loc_8c0650ec:
	#data bank03.loc_8c034e8c
loc_8c0650f0:
	#data bank10.loc_8c104434
loc_8c0650f4:
	#data bank0f.loc_8c0fd75c

;----------------------------------------------
loc_8c0650f8:
	mov.w @(0xC2,PC),r0
	mov r14,r2
	mov r13,r1
	mov.l @(0xCC,PC),r3
	add 0x34,r2
	mov.b r4,@(r0,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xB2,PC),r0
	mov.w @(r0,r14),r2
	mov.w r2,@(r0,r13)
	mov.b @(0x6,r14),r0
	mov r0,r3
	mov.b @(0x6,r13),r0
	cmp/eq r0,r3
	bt loc_8c06515c
	mov.b @(0x6,r14),r0
	mov.l @(0xB0,PC),r1
	mov.b r0,@(0x6,r13)
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	mov.b @(r0,r1),r3
	mov.w @(0x98,PC),r0
	mov.b r3,@(r0,r13)
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c06514c
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c065144
	mov 0x2F,r6
	mov.w @(0x80,PC),r0
	mov 0x06,r2
	mov.b r2,@(r0,r13)

loc_8c065144:
	mov.l @(0x8C,PC),r3
	mov.l @(0x14,r13),r5
	jsr @r3
	mov.l @(0x18,r13),r4

loc_8c06514c:
	mov.w @(0x72,PC),r0
	mov 0x17,r5
	mov.l @(0x84,PC),r3
	mov.b @(r0,r13),r6
	jsr @r3
	mov r13,r4
	bra loc_8c065162
	nop

loc_8c06515c:
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r13,r4

loc_8c065162:
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0651a0
	mov.w @(0x58,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0651a0
	mov.w @(0x52,PC),r0
	mov.b @(r0,r14),r3
	cmp/pl r3
	bf loc_8c065180
	mova @(0x64,PC),r0
	bra loc_8c065184
	fmov @r0,fr4

loc_8c065180:
	mova @(0x60,PC),r0
	fmov @r0,fr4

loc_8c065184:
	mov.w @(0x42,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c065190
	mov 0x5C,r0
	fneg fr4

loc_8c065190:
	mov 0x5C,r1
	fmov fr4,@(r0,r14)
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c0651a0:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0651aa:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0651b8:
	mov.l @(0x2C,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0651be:
	#data 0x012c
loc_8c0651c0:
	#data 0x0130
loc_8c0651c2:
	#data 0x0158
loc_8c0651c4:
	#data 0x01f9
loc_8c0651c6:
	#data 0x0141
loc_8c0651c8:
	#data 0x01d3
loc_8c0651ca:
	#data 0x01d2
	#align4
loc_8c0651cc:
	#data bank12.loc_8c1294c8
loc_8c0651d0:
	#data bank15.loc_8c152114
loc_8c0651d4:
	#data bank04.loc_8c0420b8
loc_8c0651d8:
	#data bank03.loc_8c034e8c
loc_8c0651dc:
	#data bank03.loc_8c034dee
loc_8c0651e0:
	#data 0xc0200000
loc_8c0651e4:
	#data 0x403aaaaa
loc_8c0651e8:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c0651ec:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xF8,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c065218
	mov r0,r4
	mov.l @(0xE8,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0xCE,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
loc_8c065218:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c065220:
	mov r4,r3
	mov.l @(0xD0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c065232:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xAA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xB8,PC),r3
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0x9A,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x92,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0x6E,PC),r0
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
	mov.l @(0x68,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x42,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x00,r5
	mov r5,r0
	nop
	mov r4,r2
	mov r14,r1
	mov.l @(0x4C,PC),r3
	add 0x34,r2
	mov.w r0,@(0x1E,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov 0x0C,r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x42,r4
	mov.w @(0x20,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)
	add 0x6C,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c065304
	mova @(0x20,PC),r0
	bra loc_8c065308
	fmov @r0,fr3

;##############################################
loc_8c0652e2:
	#data 0x0405
loc_8c0652e4:
	#data 0x00dc
loc_8c0652e6:
	#data 0x012c
loc_8c0652e8:
	#data 0x01a3
loc_8c0652ea:
	#data 0x0130
	#align4
loc_8c0652ec:
	#data bank04.loc_8c044f12
loc_8c0652f0:
	#data loc_8c065220
loc_8c0652f4:
	#data bank15.loc_8c15220c
loc_8c0652f8:
	#data bank12.loc_8c129560
loc_8c0652fc:
	#data bank12.loc_8c1294c8
loc_8c065300:
	#data 0x43555555

;----------------------------------------------
loc_8c065304:
	mova @(0xDC,PC),r0
	fmov @r0,fr3

loc_8c065308:
	mov 0x64,r0
	mov.l @(0xE0,PC),r3
	fmov fr3,@(r0,r14)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x70,r0
	mov 0x64,r1
	fmov fr3,@(r0,r14)
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x70,r1
	add r14,r1
	fadd fr3,fr2
	mov 0x19,r6
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x48,r0
	mov.l r5,@(r0,r14)
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c065344:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt.s loc_8c065356
	mov.l @(0x18,r14),r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)

loc_8c065356:
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c065372
	mov.w @(0x74,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c065372
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c06537c

loc_8c065372:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x60,PC),r0
	bra loc_8c065388
	mov 0x00,r3

loc_8c06537c:
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c06538e
	mov.b @(r0,r14),r3
	add 0xFF,r3

loc_8c065388:
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8c06538e:
	mov.w @(0x4C,PC),r0
	mov.w @(0x4C,PC),r3
	fmov @(r0,r4),fr3
	mov.l @(0x58,PC),r1
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r4),fr3
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused return
loc_8c0653b6:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0653ba:
	mov 0x64,r0
	mov.l @(0x18,r4),r5
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x70,r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0653d6:
	#data 0x01d0
loc_8c0653d8:
	#data 0x01e9
loc_8c0653da:
	#data 0x012c
loc_8c0653dc:
	#data 0x01a0
loc_8c0653de:
	#data 0x0108
loc_8c0653e0:
	#data 0x00ff
	#align4
loc_8c0653e4:
	#data  0xc3555555
loc_8c0653e8:
	#data  0x432b6db6
loc_8c0653ec:
	#data  bank03.loc_8c034e8c
loc_8c0653f0:
	#data  bank15.loc_8c15221c

;==============================================
loc_8c0653f4:
	mov.l @(0x18,r4),r5
	mov 0x22,r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0654a6
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bf loc_8c0654a6
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c06542e
	mov 0x03,r6
	mov 0x22,r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c06542e
	mov r6,r0
	nop
	mov.b r0,@(0x5,r4)
	mov 0x21,r0
	mov.b @(r0,r5),r3
	mov.l @(0x84,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x22,r0
	mov.b r2,@(r0,r4)

loc_8c06542e:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c065454
	mov 0x22,r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c065454
	mov r6,r0
	nop
	mov.b r0,@(0x5,r4)
	mov 0x21,r0
	mov.b @(r0,r5),r3
	mov.l @(0x64,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x22,r0
	mov.b r2,@(r0,r4)

loc_8c065454:
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c06547c
	mov 0x22,r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c06547c
	mov r6,r0
	nop
	mov.b r0,@(0x5,r4)
	mov 0x21,r0
	mov.b @(r0,r5),r3
	mov.l @(0x40,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x22,r0
	mov.b r2,@(r0,r4)

loc_8c06547c:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0654a2
	mov 0x22,r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0654a2
	mov r6,r0
	nop
	mov.b r0,@(0x5,r4)
	mov 0x21,r0
	mov.b @(r0,r5),r3
	mov.l @(0x1C,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x22,r0
	mov.b r2,@(r0,r4)

loc_8c0654a2:
	bra loc_8c0654bc
	nop

loc_8c0654a6:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0654ac:
	#data bank15.loc_8c152230
loc_8c0654b0:
	#data bank15.loc_8c152240
loc_8c0654b4:
	#data bank15.loc_8c152250
loc_8c0654b8:
	#data bank15.loc_8c152260

;==============================================
loc_8c0654bc:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x22,r0
	mov.l r13,@-r15
	mov.l @(0x144,PC),r3
	mov.w @(0x138,PC),r5
	sts.l pr,@-r15
	mov.b @(r0,r14),r13
	mov 0x20,r0
	mov.b @(r0,r14),r2
	add r14,r5
	extu.b r13,r13
	mov.l @(0x18,r14),r4
	shll2 r13
	shll2 r13
	tst r2,r2
	add r3,r13
	bt.s loc_8c0654e4
	fmov @r13,fr4
	fneg fr4

loc_8c0654e4:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr3,fr4
	fmov @(r0,r14),fr3
	mov.b @(0xF,r13),r0
	extu.b r0,r3
	lds r3,fpul
	fsub fr3,fr4
	mov 0x5C,r0
	float fpul,fr3
	fdiv fr3,fr4
	fmov fr4,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r13),fr4
	mov 0x38,r0
	fadd fr3,fr4
	fmov @(r0,r14),fr3
	mov.b @(0xF,r13),r0
	extu.b r0,r3
	lds r3,fpul
	fsub fr3,fr4
	mov 0x60,r0
	float fpul,fr3
	fdiv fr3,fr4
	fmov fr4,@(r0,r14)
	mov 0x48,r0
	mov.l @(0x8,r13),r1
	mov.l @(r0,r14),r3
	mov.b @(0xF,r13),r0
	sub r3,r1
	mov.l @(0xE8,PC),r3
	jsr @r3
	extu.b r0,r0
	mov.l r0,@r5
	mov 0x16,r5
	mov.b @(0xF,r13),r0
	mov.l @(0xE0,PC),r3
	extu.b r0,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0xC,r13),r0
	mov r0,r6
	jsr @r3
	mov r14,r4
	mov.w @(0xC2,PC),r1
	mov.b @(0xD,r13),r0
	add r14,r1
	mov.b r0,@r1
	extu.b r0,r0
	tst r0,r0
	bt loc_8c065572
	mov.w @(0xB6,PC),r0
	mov 0x00,r4
	mov.l @(0xC4,PC),r3
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
	mov.w @(0x94,PC),r0
	mov.w r2,@(r0,r14)

loc_8c065572:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06557a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l r3,@r15
	bsr loc_8c0653ba
	mov r14,r4
	mov.l @r15,r2
	mov 0x22,r0
	mov.b @(r0,r2),r3
	mov.w @(0x74,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c0655ae
	mov.b @(0x5,r14),r0
	mov 0x00,r3
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x22,r0
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0654bc
	mov.l @r15+,r14

loc_8c0655ae:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0655b6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x40,PC),r3
	mov r4,r14
	mov.l @(0x18,r14),r13
	add r14,r3
	mov.l r3,@r15
	bsr loc_8c0653f4
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c06561c
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x48,r0
	mov.l @r15,r3
	mov.l @(r0,r14),r2
	mov.l @r3,r3
	add r3,r2
	bra loc_8c065640
	mov.l r2,@(r0,r14)

;##############################################
loc_8c065602:
	#data 0x00cc
loc_8c065604:
	#data 0x01a1
loc_8c065606:
	#data 0x01ac
loc_8c065608:
	#data 0x00ff
	#align4
loc_8c06560c:
	#data bank15.loc_8c15211c
loc_8c065610:
	#data bank12.loc_8c129128
loc_8c065614:
	#data bank03.loc_8c034e8c
loc_8c065618:
	#data 0x8c2896b0

;----------------------------------------------
loc_8c06561c:
	mov.b @(0x5,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x64,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x70,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x48,r0
	mov.l r3,@(r0,r14)

loc_8c065640:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06564a:
	sts.l pr,@-r15
	bsr loc_8c0653ba
	mov.l r4,@-r15
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c0653f4
	lds.l @r15+,pr

;==============================================
loc_8c065658:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov.l @(0x18,r14),r4
	add 0xFF,r0
	mov.w @(0x116,PC),r5
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt.s loc_8c065698
	add r14,r5
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x48,r0
	mov.l @(r0,r14),r2
	mov.l @r5,r3
	add r3,r2
	bra loc_8c0656e8
	mov.l r2,@(r0,r14)

loc_8c065698:
	mov.b @(0x5,r14),r0
	mov.l @(0xE8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r5
	add 0x01,r5
	mov.b r5,@(r0,r14)
	add 0xFF,r5
	mov 0x20,r0
	extu.b r5,r5
	mov.b @(r0,r14),r2
	shll2 r5
	shll2 r5
	tst r2,r2
	add r3,r5
	bt.s loc_8c0656be
	fmov @r5,fr4
	fneg fr4

loc_8c0656be:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x48,r0
	mov.l @(0x8,r5),r3
	mov.l r3,@(r0,r14)
	bsr loc_8c0654bc
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r2
	mov 0x17,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c0656e8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0656ee:
	mov.w @(0x1C,r4),r0
	mov.w @(0x8A,PC),r6
	add 0xFF,r0
	mov.l @(0x18,r4),r5
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bt.s loc_8c06572a
	add r4,r6
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x48,r0
	mov.l @(r0,r4),r2
	mov.l @r6,r3
	add r3,r2
	mov.l @(0x64,PC),r3
	jmp @r3
	mov.l r2,@(r0,r4)

;==============================================
loc_8c06572a:
	mov 0x01,r0
	mov.l @(0x54,PC),r3
	mov.b r0,@(0x5,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r6
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r6,r6
	shll2 r6
	shll2 r6
	tst r2,r2
	add r3,r6
	bt.s loc_8c065748
	fmov @r6,fr4
	fneg fr4

loc_8c065748:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	mov 0x00,r2
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x48,r0
	mov.l @(0x8,r6),r3
	mov.l r3,@(r0,r4)
	mov 0x22,r0
	bra loc_8c0654bc
	mov.b r2,@(r0,r4)

;==============================================
loc_8c06576a:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xA,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c065778:
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06577e:
	#data 0x00cc
loc_8c065780:
	#data 0x012c
	#align4
loc_8c065784:
	#data bank15.loc_8c15211c
loc_8c065788:
	#data bank04.loc_8c04223a
loc_8c06578c:
	#data bank04.loc_8c045748
loc_8c065790:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c065794:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x10C,PC),r3
	mov r4,r14
	mov.l @(0x118,PC),r2
	mov 0x01,r5
	add r14,r3
	mov.l r3,@r15
	mov 0x00,r6
	jsr @r2
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0657c4
	mov r0,r4
	mov.l @(0x108,PC),r2
	mov 0x00,r3
	mov 0x20,r0
	mov.l r2,@(0x10,r4)
	mov.w @(0xEE,PC),r2
	mov.l r14,@(0x18,r4)
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0657c4:
	mov.l @(0xF0,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0657e6
	mov r0,r4
	mov.l @(0xE4,PC),r3
	mov 0x01,r2
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xCC,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0657e6:
	mov.l @r15,r2
	mov 0x01,r3
	mov.b r3,@r2
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0657f8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xAA,PC),r2
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.w @(0xA8,PC),r1
	add r3,r2
	mov.l @(0xB8,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0xB4,PC),r2
	mov.l r1,@r2
	mov.b @(0x4,r14),r0
	mov.l @(0xB4,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06581e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x86,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x9C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x78,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x70,PC),r0
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
	mov.w @(0x4C,PC),r0
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
	mov.l @(0x50,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x00,r12
	mov.b @(r0,r1),r3
	mov 0x42,r4
	mov.b r3,@(r0,r14)
	mov.w @(0x20,PC),r0
	mov.w r12,@(r0,r14)
	add 0x6C,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0658d4
	bra loc_8c0658d6
	mov 0x57,r3

;##############################################
loc_8c0658aa:
	#data 0x02a4
loc_8c0658ac:
	#data 0x0500
loc_8c0658ae:
	#data 0x00cc
loc_8c0658b0:
	#data 0x00dc
loc_8c0658b2:
	#data 0x012c
loc_8c0658b4:
	#data 0x01a3
loc_8c0658b6:
	#data 0x0130
	#align4
loc_8c0658b8:
	#data bank04.loc_8c044f12
loc_8c0658bc:
	#data loc_8c0657f8
loc_8c0658c0:
	#data 0x8c28c5b8
loc_8c0658c4:
	#data 0x8c28c5b4
loc_8c0658c8:
	#data bank15.loc_8c152270
loc_8c0658cc:
	#data bank12.loc_8c129560
loc_8c0658d0:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c0658d4:
	mov 0x35,r3

loc_8c0658d6:
	mov.w @(0xFC,PC),r0
	mov.l @(0x108,PC),r13
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0xF8,PC),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x18,r14),r0
	mov.w @(0xD8,PC),r1
	mov.l @r13,r2
	mov.b @(r0,r1),r0
	mov.b r0,@(0x8,r2)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xC2,PC),r0
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c06592c
	mov.l @(0xC4,PC),r3
	mov r14,r5
	mov 0x06,r6
	add 0x1C,r5
	jsr @r3
	mov.l @(0x18,r14),r4

loc_8c06592c:
	mov.l @r13,r2
	mov r12,r0
	nop
	mov.b r0,@(0x9,r2)
	mov 0x40,r3
	mov.w @(0xA2,PC),r0
	mov 0x20,r2
	mov 0x24,r4
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r2,r0
	nop
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c06595c
	mov.l @r13,r3
	mova @(0x94,PC),r0
	bra loc_8c065960
	fmov @r0,fr3

loc_8c06595c:
	mova @(0x90,PC),r0
	fmov @r0,fr3

loc_8c065960:
	mova @(0x90,PC),r0
	fmov fr3,@r3
	fmov @r0,fr3
	mov 0x04,r0
	mov.l @r13,r3
	fmov fr3,@(r0,r3)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c06597a
	mov 0x22,r0
	bra loc_8c06597c
	mov 0x10,r3

loc_8c06597a:
	mov 0x00,r3

loc_8c06597c:
	mov.b r3,@(r0,r14)
	mov 0x02,r0
	mov.w r0,@(0x1E,r14)
	mov 0x5C,r0
	fldi0 fr4
	mov r14,r4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x10,r0
	mov.l @r13,r3
	mov.b r0,@(0xA,r3)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c065c9c
	mov.l @r15+,r14

;==============================================
loc_8c0659a6:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x30,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0659c6
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0659c2
	mov r14,r4
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c0659c2:
	bra loc_8c065c5c
	mov.l @r15+,r14

loc_8c0659c6:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x2C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0659d6:
	#data 0x01a1
loc_8c0659d8:
	#data 0x01d2
loc_8c0659da:
	#data 0x00f0
loc_8c0659dc:
	#data 0x013c
loc_8c0659de:
	#data 0x012c
	#align4
loc_8c0659e0:
	#data 0x8c2896b0
loc_8c0659e4:
	#data 0x8c28c5b4
loc_8c0659e8:
	#data bank0f.loc_8c0f047c
loc_8c0659ec:
	#data 0x42d55555
loc_8c0659f0:
	#data 0xc2d55555
loc_8c0659f4:
	#data 0x42cdb6db
loc_8c0659f8:
	#data bank15.loc_8c152280

;==============================================
loc_8c0659fc:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xFC,PC),r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.l @(0x108,PC),r13
	mov.w @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c065a20
	mov 0x00,r12
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c065a5c

loc_8c065a20:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c065a36
	fldi0 fr4
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c065a36:
	mov 0x5C,r0
	mov.l @(0xE4,PC),r3
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0xD4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x03,r6
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_8c065aa6
	nop

loc_8c065a5c:
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c065a66
	mov.b r12,@(r0,r14)

loc_8c065a66:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf.s loc_8c065a86
	mov r14,r4
	mov 0x02,r0
	mov.w r0,@(0x1E,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r0
	mov 0x22,r1
	add r14,r1
	add 0x01,r0
	and 0x1F,r0
	mov.b r0,@r1

loc_8c065a86:
	bsr loc_8c065cca
	nop
	bsr loc_8c065c9c
	mov r14,r4
	mov.w @(0x72,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c065aa6
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	tst r3,r3
	bf loc_8c065aa6
	mov.w @(0x60,PC),r0
	mov.b r12,@(r0,r14)

loc_8c065aa6:
	mov.l @r13,r3
	mov.b @(0x9,r3),r0
	tst r0,r0
	bf loc_8c065adc
	mov.l @(0x18,r14),r2
	mov.b @(0x5,r2),r0
	tst r0,r0
	bf loc_8c065ae4
	mov.w @(0x4E,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w @(0x4A,PC),r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c065ae4
	mov.w @(0x44,PC),r3
	add r3,r15
	mov.l @(0x58,PC),r1
	mov r14,r4
	mov 0x00,r5
	jsr @r1
	mov.l r15,@-r15
	mov.w @(0x38,PC),r1
	add r1,r15
	mov.l @r13,r3
	mov 0x16,r0
	mov.b r0,@(0x9,r3)

loc_8c065adc:
	mov.l @r13,r3
	mov.b @(0x9,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x9,r3)

loc_8c065ae4:
	mov.l @r13,r3
	mov.b @(0xA,r3),r0
	tst r0,r0
	bf.s loc_8c065b2c
	mov 0x01,r4
	mov.w @(0x1E,PC),r0
	mov.l @(0x34,PC),r3
	mov.b r4,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;##############################################
loc_8c065b00:
	#data 0x0420
loc_8c065b02:
	#data 0x019f
loc_8c065b04:
	#data 0x01a0
loc_8c065b06:
	#data 0x019e
loc_8c065b08:
	#data 0x0348
loc_8c065b0a:
	#data 0x0300
loc_8c065b0c:
	#data 0xfe30
loc_8c065b0e:
	#data 0x01d4
loc_8c065b10:
	#data 0x012c
	#align4
loc_8c065b14:
	#data 0x8c28c5b4
loc_8c065b18:
	#data 0xc0892492
loc_8c065b1c:
	#data 0xbecdb6db
loc_8c065b20:
	#data bank03.loc_8c034e8c
loc_8c065b24:
	#data loc_8c065d8c
loc_8c065b28:
	#data bank04.loc_8c045748

;----------------------------------------------
loc_8c065b2c:
	mov.l @r13,r3
	mov.b @(0xA,r3),r0
	add 0xFF,r0
	mov.b r0,@(0xA,r3)
	mov.l @(0x144,PC),r3
	mov.l @r3,r2

loc_8c065b38:
	mov.l @(0x1C,r2),r1
	tst r4,r1

loc_8c065b3c:
	bt loc_8c065b42
	bra loc_8c065b44
	mov r4,r3

loc_8c065b42:
	mov 0x00,r3

loc_8c065b44:
	mov.w @(0x12E,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c065b52:
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
	mov.w @(0xEA,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c065ba8
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xD6,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_8c065ba8:
	rts
	nop

;==============================================
loc_8c065bac:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c065bfc
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xB2,PC),r0
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xA2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c065be2
	mova @(0xA4,PC),r0
	bra loc_8c065be6
	fmov @r0,fr3

loc_8c065be2:
	mova @(0xA4,PC),r0
	fmov @r0,fr3

loc_8c065be6:
	mov 0x5C,r0
	mov.l @(0xA0,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	mov r14,r4
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	mov 0x04,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c065bfc:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c065c02:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x78,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x80,PC),r3
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
	tst r0,r0
	bf loc_8c065c56
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c065c5c
	mov.l @r15+,r14

loc_8c065c56:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c065c5c:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c065c6c
	mov 0x00,r5
	mov.l @(0x2C,PC),r2
	mov.l @r2,r3
	mov.b r5,@r3

loc_8c065c6c:
	mov.w @(0x6,PC),r0
	mov.b r5,@(r0,r4)

loc_8c065c70:
	mov.l @(0x24,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c065c76:
	#data 0x012c
loc_8c065c78:
	#data 0x041c
loc_8c065c7a:
	#data 0x0130
	#align4
loc_8c065c7c:
	#data 0x8c26823c
loc_8c065c80:
	#data bank03.loc_8c034dee
loc_8c065c84:
	#data 0xc0d55555
loc_8c065c88:
	#data 0x40d55555
loc_8c065c8c:
	#data bank03.loc_8c034e8c
loc_8c065c90:
	#data bank03.loc_8c03340c
loc_8c065c94:
	#data 0x8c28c5b8
loc_8c065c98:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c065c9c:
	mov.l @(0xD0,PC),r2
	mov 0x22,r0
	mov.l r14,@-r15
	mov.l @r2,r3
	mov.b @(r0,r4),r14
	mov.b @(0x8,r3),r0
	tst r0,r0
	bt.s loc_8c065cb8
	extu.b r14,r14
	mov 0x1F,r5
	xor r5,r14
	and r5,r14
	add 0x01,r14
	and r5,r14

loc_8c065cb8:
	mov.l @(0xB8,PC),r0
	mov r14,r7
	shll2 r7
	mov.l @(0xB8,PC),r3
	mov.l @(r0,r7),r7
	mov 0x17,r5
	mov 0x06,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c065cca:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x22,r0
	mov.l r13,@-r15
	mov 0x1F,r4
	mov.l @(0xA4,PC),r3
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and r0,r4
	shll8 r4
	shll2 r4
	jsr @r3
	shll r4
	mova @(0x94,PC),r0
	fmov fr0,fr4
	fmov @r0,fr3
	mov 0x68,r0
	fmov @(r0,r14),fr2
	mov 0x5C,r0
	fmul fr3,fr4
	mov.l @(0x74,PC),r13
	mov 0x1F,r4
	fadd fr2,fr4
	fmov fr4,@(r0,r14)
	mov 0x22,r0
	mov.l @r13,r3
	fmov @r3,fr2
	fadd fr4,fr2
	fmov fr2,@r3
	mov.b @(r0,r14),r0
	mov.l @(0x74,PC),r3
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and r0,r4
	shll8 r4
	shll2 r4
	jsr @r3
	shll r4
	mov.l @r13,r3
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov.b @(0x8,r3),r0
	fmov fr0,fr4
	tst r0,r0
	bt.s loc_8c065d34
	fmul fr3,fr4
	fldi1 fr2
	fneg fr2
	fmul fr2,fr4

loc_8c065d34:
	mov 0x6C,r0
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fadd fr3,fr4
	fmov fr4,@(r0,r14)
	mov 0x04,r0
	mov.l @r13,r3
	fmov @(r0,r3),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r3)
	mov 0x34,r0
	mov.l @r13,r2
	mov.l @(0x18,r14),r3
	fmov @r2,fr3
	fmov @(r0,r3),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x04,r0
	mov.l @r13,r2
	mov.l @(0x18,r14),r3
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r3),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c065d70:
	#data 0x8c28c5b4
loc_8c065d74:
	#data bank15.loc_8c152290
loc_8c065d78:
	#data bank03.loc_8c034f54
loc_8c065d7c:
	#data bank11.loc_8c11e2e0
loc_8c065d80:
	#data 0x41200000
loc_8c065d84:
	#data bank11.loc_8c11e860
loc_8c065d88:
	#data 0x414db6db

;==============================================
loc_8c065d8c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x120,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c065dc4
	mov r0,r4
	mov.l @(0x110,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.w @(0xEE,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c065dc4:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c065dcc:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xD6,PC),r2
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.w @(0xD2,PC),r1
	add r3,r2
	mov.l @(0xE4,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0xE0,PC),r2
	mov.l r1,@r2
	mov.b @(0x4,r14),r0
	mov.l @(0xE0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c065df2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xB4,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xCC,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xA6,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x9E,PC),r0
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
	mov.w @(0x7A,PC),r0
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
	mov.l @(0x80,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov r14,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x50,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(0x64,PC),r0
	extu.b r2,r2
	lds.l @r15+,pr
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c065e7a:
	mov.l r14,@-r15
	mov 0x24,r0
	mov 0x00,r3
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov 0x01,r5
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	bsr loc_8c065d8c
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x38,PC),r2
	mov r14,r4
	mov 0x07,r6
	mov 0x17,r5
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c065ea8:
	#data 0x0501
loc_8c065eaa:
	#data 0x02a4
loc_8c065eac:
	#data 0x00cc
loc_8c065eae:
	#data 0x00dc
loc_8c065eb0:
	#data 0x012c
loc_8c065eb2:
	#data 0x01a3
loc_8c065eb4:
	#data 0x0130
	#align4
loc_8c065eb8:
	#data bank04.loc_8c044f12
loc_8c065ebc:
	#data loc_8c065dcc
loc_8c065ec0:
	#data 0x8c28c5c0
loc_8c065ec4:
	#data 0x8c28c5bc
loc_8c065ec8:
	#data bank15.loc_8c152310
loc_8c065ecc:
	#data bank12.loc_8c129560
loc_8c065ed0:
	#data bank12.loc_8c1294c8
loc_8c065ed4:
	#data bank15.loc_8c152320
loc_8c065ed8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c065edc:
	mov.w @(0x144,PC),r0
	mov 0x42,r6
	mov 0x46,r3
	mov.l @(0x14,r4),r5
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	add 0x04,r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov 0x00,r6
	mov.l @(0x138,PC),r3
	mov.w r6,@(r0,r4)
	add 0xF2,r0
	mov.b r6,@(r0,r4)
	add 0x26,r0
	mov.l r6,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x24,r0
	mov.b r6,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fldi0 fr4
	mov 0x10,r5
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x40,r2
	mov.w @(0xEE,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r2,@(r0,r4)
	add 0xF1,r0
	mov.w @(r0,r4),r1
	tst r1,r1
	bt loc_8c065f52
	mova @(0xE0,PC),r0
	bra loc_8c065f56
	fmov @r0,fr3

loc_8c065f52:
	mova @(0xE0,PC),r0
	fmov @r0,fr3

loc_8c065f56:
	mov.l @(0xE0,PC),r3
	mov 0x5C,r0
	mov 0x08,r6
	fmov fr3,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c065f62:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0xD0,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c065f76:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x24,r0
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov.l @(0xB4,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c065fa4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066010
	mov.l @r15+,r14

loc_8c065fa4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c065faa:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x88,PC),r3
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
	mov.w @(0x36,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c066000
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c066006

loc_8c066000:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c066006:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c066010:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xE,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c06601e:
	mov.l @(0x2C,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c066024:
	#data 0x019c
loc_8c066026:
	#data 0x013c
loc_8c066028:
	#data 0x019e
loc_8c06602a:
	#data 0x012c
	#align4
loc_8c06602c:
	#data 0x8c2896b0
loc_8c066030:
	#data 0x412d5555
loc_8c066034:
	#data 0xc12d5555
loc_8c066038:
	#data bank03.loc_8c034e8c
loc_8c06603c:
	#data bank15.loc_8c152328
loc_8c066040:
	#data bank03.loc_8c034dee
loc_8c066044:
	#data bank03.loc_8c03340c
loc_8c066048:
	#data bank04.loc_8c045748
loc_8c06604c:
	#data bank04.loc_8c0450c0

;==============================================
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x168,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06607c
	mov r0,r4
	mov.l @(0x158,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x138,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c06607c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x08,r13
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov r4,r10
	mov.l r9,@-r15
	mov 0x02,r9
	sts.l pr,@-r15
	mov.l @(0x124,PC),r11
	mov.w @(0x110,PC),r14

loc_8c06609e:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0660c4
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x114,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l r10,@(0x18,r4)
	mov.b r9,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	add 0x01,r12
	cmp/ge r13,r12
	mov 0x26,r0
	bf.s loc_8c06609e
	mov.w r14,@(r0,r4)

loc_8c0660c4:
	mov 0x01,r9
	mov 0x00,r12

loc_8c0660c8:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0660ee
	mov r0,r4
	mov 0x20,r0
	mov.l @(0xE8,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r10,@(0x18,r4)
	mov.b r9,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	add 0x01,r12
	cmp/ge r13,r12
	mov 0x26,r0
	bf.s loc_8c0660c8
	mov.w r14,@(r0,r4)

loc_8c0660ee:
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

;==============================================
loc_8c066102:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xA8,PC),r2
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.w @(0xA4,PC),r1
	add r3,r2
	mov.l @(0xB4,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0xB4,PC),r2
	mov.l r1,@r2
	mov.b @(0x4,r14),r0
	mov.l @(0xB0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c066128:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x86,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x9C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x78,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x70,PC),r0
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
	mov.w @(0x4C,PC),r0
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
	mov.l @(0x50,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov r14,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x22,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(0x38,PC),r0
	extu.b r2,r2
	lds.l @r15+,pr
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0661b0:
	#data 0x0502
loc_8c0661b2:
	#data 0x02a4
loc_8c0661b4:
	#data 0x00cc
loc_8c0661b6:
	#data 0x00dc
loc_8c0661b8:
	#data 0x012c
loc_8c0661ba:
	#data 0x01a3
loc_8c0661bc:
	#data 0x0130
	#align4
loc_8c0661c0:
	#data bank04.loc_8c044f12
loc_8c0661c4:
	#data loc_8c066102
loc_8c0661c8:
	#data 0x8c28c5c8
loc_8c0661cc:
	#data 0x8c28c5c4
loc_8c0661d0:
	#data bank15.loc_8c152330
loc_8c0661d4:
	#data bank12.loc_8c129560
loc_8c0661d8:
	#data bank12.loc_8c1294c8
loc_8c0661dc:
	#data bank15.loc_8c152340

;==============================================
loc_8c0661e0:
	mov.w @(0xF8,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x0B,r2
	mov 0x44,r5
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b r2,@(r0,r14)
	mov.w @(0xE4,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xDE,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov.w @(0xD8,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf.s loc_8c06621a
	mov 0x00,r4
	mov.w @(0xCE,PC),r0
	mov 0x5C,r2
	bra loc_8c06621e
	mov.b r2,@(r0,r14)

loc_8c06621a:
	mov.w @(0xC6,PC),r0
	mov.b r5,@(r0,r14)

loc_8c06621e:
	mov.w @(0xC4,PC),r0
	mov.l @(0xC8,PC),r3
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
	bsr loc_8c066480
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x92,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c066260
	mova @(0x94,PC),r0
	bra loc_8c066264
	fmov @r0,fr3

loc_8c066260:
	mova @(0x90,PC),r0
	fmov @r0,fr3

loc_8c066264:
	mov 0x5C,r0
	mov.l @(0x90,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x88,PC),r3
	mov 0x01,r2
	mov 0x1F,r5
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r2
	mov r14,r4
	mov 0x10,r6
	mov 0x17,r5
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c06628c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x48,PC),r0
	mov 0x00,r4
	mov 0x44,r5
	mov 0x45,r3
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov.w @(0x3C,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x34,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bsr loc_8c066480
	mov r14,r4
	mov.w @(0x16,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c066308
	mova @(0x2C,PC),r0
	bra loc_8c06630c
	fmov @r0,fr3

;##############################################
loc_8c0662dc:
	#data 0x012c
loc_8c0662de:
	#data 0x041c
loc_8c0662e0:
	#data 0x019c
loc_8c0662e2:
	#data 0x0255
loc_8c0662e4:
	#data 0x01a1
loc_8c0662e6:
	#data 0x01ac
loc_8c0662e8:
	#data 0x0130
	#align4
loc_8c0662ec:
	#data 0x8c2896b0
loc_8c0662f0:
	#data 0x41555555
loc_8c0662f4:
	#data 0xc1555555
loc_8c0662f8:
	#data bank10.loc_8c104434
loc_8c0662fc:
	#data bank04.loc_8c042008
loc_8c066300:
	#data bank03.loc_8c034e8c
loc_8c066304:
	#data 0x40d55555

;----------------------------------------------
loc_8c066308:
	mova @(0x13C,PC),r0
	fmov @r0,fr3

loc_8c06630c:
	mov 0x5C,r0
	mov.l @(0x144,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x130,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x128,PC),r3
	mov 0x01,r2
	jsr @r3
	mov.b r2,@r14
	mov.w @(0x106,PC),r1
	mov 0x21,r3
	add r14,r3
	and r1,r0
	lds r0,fpul
	mova @(0x11C,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	mov 0x38,r2
	float fpul,fr3
	add r14,r2
	mov 0x11,r6
	fmov fr3,fr4
	fmul fr2,fr4
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mov.b @r3,r3
	mov.l @(0x104,PC),r0
	extu.b r3,r3
	fmov @r2,fr1
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x21,r0
	fadd fr3,fr1
	fmov fr1,@r2
	mov.b @(r0,r14),r0
	mov.l @(0xF8,PC),r2
	extu.b r0,r0
	shll r0
	mov.w @(r0,r2),r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @(0xF0,PC),r3
	mov 0x17,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c066380:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xB8,PC),r0
	mov 0x00,r4
	mov 0x44,r5
	mov 0x56,r3
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov.w @(0xAA,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x04,r0
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
	bsr loc_8c066480
	mov r14,r4
	mov.w @(0x7E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0663d0
	mova @(0xA4,PC),r0
	bra loc_8c0663d4
	fmov @r0,fr3

loc_8c0663d0:
	mova @(0xA0,PC),r0
	fmov @r0,fr3

loc_8c0663d4:
	mov 0x5C,r0
	mov.l @(0x80,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	jsr @r3
	fmov fr3,@(r0,r14)
	mov.w @(0x48,PC),r2
	mov 0x21,r3
	add r14,r3
	and r2,r0
	lds r0,fpul
	mova @(0x5C,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	mov 0x38,r1
	float fpul,fr3
	add r14,r1
	mov 0x23,r6
	fmov fr3,fr4
	fmul fr2,fr4
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mov.b @r3,r3
	mov.l @(0x60,PC),r0
	extu.b r3,r3
	fmov @r1,fr1
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x21,r0
	fadd fr3,fr1
	fmov fr1,@r1
	mov.b @(r0,r14),r0
	mov.l @(0x50,PC),r1
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov 0x17,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06643e:
	#data 0x3000
loc_8c066440:
	#data 0x012c
loc_8c066442:
	#data 0x019c
loc_8c066444:
	#data 0x0130
	#align4
loc_8c066448:
	#data 0xc0d55555
loc_8c06644c:
	#data 0x40cdb6db
loc_8c066450:
	#data 0xbf2b6db6
loc_8c066454:
	#data bank10.loc_8c104434
loc_8c066458:
	#data bank11.loc_8c11e730
loc_8c06645c:
	#data 0x38092492
loc_8c066460:
	#data bank15.loc_8c15235c
loc_8c066464:
	#data bank15.loc_8c15237c
loc_8c066468:
	#data bank03.loc_8c034e8c
loc_8c06646c:
	#data 0x8c2896b0
loc_8c066470:
	#data 0x41700000
loc_8c066474:
	#data 0xc1700000
loc_8c066478:
	#data bank15.loc_8c15238c
loc_8c06647c:
	#data bank15.loc_8c1523ac

;==============================================
loc_8c066480:
	mov.l @(0x148,PC),r3
	mov 0x34,r0
	mov r0,r6
	fmov @r3,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x134,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c06649c
	add r4,r6
	mov.l @(0x138,PC),r1
	lds r1,fpul
	bra loc_8c0664a2
	fsts fpul,fr3

loc_8c06649c:
	mov.l @(0x134,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c0664a2:
	mov.w @(0x11E,PC),r0
	mov 0x40,r3
	fmov @r6,fr2
	mov 0x10,r2
	mov 0x60,r5
	fadd fr3,fr2
	fmov fr2,@r6
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	rts
	mov.b r5,@(r0,r4)

;==============================================
loc_8c0664c0:
	mov.l r14,@-r15
	mov 0x24,r0
	sts.l pr,@-r15
	mov 0x00,r3
	mov r4,r14
	mov.b r3,@(r0,r14)
	bsr loc_8c06650c
	mov r14,r4
	mov.w @(0xF2,PC),r0
	mov 0x42,r4
	mov 0x20,r2
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x00,r0
	mov.l @(0xF8,PC),r4
	mov 0x1B,r6
	mov 0x17,r5
	mov.l @r4,r3
	mov.b r0,@(0x2,r3)
	mov 0xFF,r0
	mov.l @r4,r3
	mov 0x38,r4
	mov.b r0,@(0x1,r3)
	mov 0x50,r3
	mov.w @(0xCE,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.l @(0xD8,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06650c:
	mov.w @(0xB8,PC),r0
	mov 0x34,r5
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.w @(0xAA,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x94,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c06653c
	add r4,r5
	mov.l @(0xA8,PC),r1
	lds r1,fpul
	bra loc_8c066542
	fsts fpul,fr3

loc_8c06653c:
	mov.l @(0xA4,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c066542:
	fmov @r5,fr2
	mov 0x38,r0
	mov.l @(0xA0,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@r5
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c066558:
	mov.w @(0x6E,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c066480
	mov r14,r4
	mov.l @(0x18,r14),r2
	mov 0x34,r0
	fldi0 fr4
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x30,r0
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x2A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0665a2
	mova @(0x4C,PC),r0
	bra loc_8c0665a6
	fmov @r0,fr3

loc_8c0665a2:
	mova @(0x4C,PC),r0
	fmov @r0,fr3

loc_8c0665a6:
	mov.l @(0x4C,PC),r3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x28,PC),r3
	mov 0x01,r2
	mov r14,r4
	mov.b r2,@r14
	lds.l @r15+,pr
	mov 0x10,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0665c2:
	#data 0x0130
loc_8c0665c4:
	#data 0x013c
loc_8c0665c6:
	#data 0x019c
loc_8c0665c8:
	#data 0x01d2
loc_8c0665ca:
	#data 0x012c
	#align4
loc_8c0665cc:
	#data 0x8c26a524
loc_8c0665d0:
	#data 0xc3d55555
loc_8c0665d4:
	#data 0x43d55555
loc_8c0665d8:
	#data 0x8c28c5c8
loc_8c0665dc:
	#data bank03.loc_8c034e8c
loc_8c0665e0:
	#data 0xc262aaaa
loc_8c0665e4:
	#data 0x4262aaaa
loc_8c0665e8:
	#data 0x42d64924
loc_8c0665ec:
	#data 0x41200000
loc_8c0665f0:
	#data 0xc1200000
loc_8c0665f4:
	#data bank10.loc_8c104434

;==============================================
loc_8c0665f8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x00,r4
	mov 0x24,r0
	mov.l @(0x18,r14),r3
	mov 0x44,r5
	mov.l r3,@r15
	mov 0x5D,r3
	mov.b r4,@(r0,r14)
	mov.w @(0xF4,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xE8,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bsr loc_8c066480
	mov r14,r4
	mova @(0xD4,PC),r0
	mov.l @r15,r3
	fmov @r0,fr3
	mov.w @(0xC2,PC),r0
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xBA,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c06665a
	mova @(0xC0,PC),r0
	bra loc_8c06665e
	fmov @r0,fr2

loc_8c06665a:
	mova @(0xC0,PC),r0
	fmov @r0,fr2

loc_8c06665e:
	mov 0x5C,r0
	fldi0 fr3
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x17,r5
	mov r14,r4
	fmov fr3,@(r0,r14)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x23,r6
	fmov fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c066688:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x98,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06669c:
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
loc_8c0666ae:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x7C,PC),r3
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
	mov.w @(0x32,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c066738
	mov.w @(0x2C,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c0666f0
	mov.b @(0x5,r14),r0
	add 0x01,r0
	bra loc_8c06677e
	mov.b r0,@(0x5,r14)

loc_8c0666f0:
	mov 0x02,r0
	mov.l @(0x34,PC),r3
	mov.b r0,@(0x5,r14)
	mov 0x18,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov 0x11,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c066706:
	#data 0x019c
loc_8c066708:
	#data 0x041c
loc_8c06670a:
	#data 0x0130
loc_8c06670c:
	#data 0x019e
loc_8c06670e:
	#data 0x01b0
	#align4
loc_8c066710:
	#data 0x8c2896b0
loc_8c066714:
	#data 0x43bc9249
loc_8c066718:
	#data 0x4162aaaa
loc_8c06671c:
	#data 0xc162aaaa
loc_8c066720:
	#data 0xc122db6d
loc_8c066724:
	#data 0x3eab6db6
loc_8c066728:
	#data bank03.loc_8c034e8c
loc_8c06672c:
	#data bank15.loc_8c1523bc
loc_8c066730:
	#data bank15.loc_8c1523d8
loc_8c066734:
	#data bank03.loc_8c034dee

;==============================================
loc_8c066738:
	mov.w @(0x118,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c06677e
	mov.l @(0x118,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0x114,PC),r3
	mov 0x15,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov 0x68,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xF2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c06676e
	mova @(0xF8,PC),r0
	bra loc_8c066772
	fmov @r0,fr3

loc_8c06676e:
	mova @(0xF8,PC),r0
	fmov @r0,fr3

loc_8c066772:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)

loc_8c06677e:
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c066790
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06711c
	mov.l @r15+,r14

loc_8c066790:
	lds.l @r15+,pr
	mov.l @(0xE0,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c06679a:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xD0,PC),r3
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
	mov.l @(0x90,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0667f0
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06711c
	mov.l @r15+,r14

loc_8c0667f0:
	lds.l @r15+,pr
	mov.l @(0x80,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0667fa:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c06680a
	bra loc_8c06711c
	nop

loc_8c06680a:
	mov.l @(0x70,PC),r3
	mov.w @(0x48,PC),r1
	mov.l @r3,r0
	add r4,r1
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	rts
	mov.b r0,@r1

;==============================================
loc_8c06681a:
	mov r4,r3
	mov.l @(0x60,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06682c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8c066884
	mov.l @(0x18,r14),r2
	mov.b @(0x5,r2),r0
	tst r0,r0
	bt loc_8c066848
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06711c
	mov.l @r15+,r14

loc_8c066848:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c066854:
	#data 0x019f
loc_8c066856:
	#data 0x0130
loc_8c066858:
	#data 0x012c
	#align4
loc_8c06685c:
	#data bank05.loc_8c057b6e
loc_8c066860:
	#data bank03.loc_8c034e8c
loc_8c066864:
	#data 0xc1700000
loc_8c066868:
	#data 0x41700000
loc_8c06686c:
	#data 0x40892492
loc_8c066870:
	#data bank03.loc_8c03340c
loc_8c066874:
	#data bank04.loc_8c045748
loc_8c066878:
	#data bank03.loc_8c034dee
loc_8c06687c:
	#data 0x8c26823c
loc_8c066880:
	#data bank15.loc_8c1523e4

;----------------------------------------------
loc_8c066884:
	mov.w @(0xF2,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(0xF8,PC),r3
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
	mov.w @(0xB0,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0668f0
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov 0x12,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x98,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x9C,PC),r3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c0668f0:
	mov.w @(0x8A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c066900
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066c44
	mov.l @r15+,r14

loc_8c066900:
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c06690c
	bsr loc_8c066c88
	mov r14,r4

loc_8c06690c:
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;Unused Return
loc_8c066916:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06691c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0669e8
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x4C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c06694c
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0x50,PC),r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov @(r0,r3),fr3
	bra loc_8c06695c
	nop

loc_8c06694c:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.l @(0x3C,PC),r0
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov @(r0,r2),fr3
	fneg fr3

loc_8c06695c:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x1E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c066998
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0x24,PC),r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov @(r0,r3),fr3
	bra loc_8c0669a8
	nop

;##############################################
loc_8c06697a:
	#data 0x012c
loc_8c06697c:
	#data 0x041c
loc_8c06697e:
	#data 0x019f
loc_8c066980:
	#data 0x019e
loc_8c066982:
	#data 0x0130
	#align4
loc_8c066984:
	#data  bank03.loc_8c034dee
loc_8c066988:
	#data  bank03.loc_8c034e8c
loc_8c06698c:
	#data  bank04.loc_8c045748
loc_8c066990:
	#data  bank15.loc_8c152400
loc_8c066994:
	#data  bank15.loc_8c152404

;----------------------------------------------
loc_8c066998:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.l @(0x120,PC),r0
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov @(r0,r2),fr3
	fneg fr3

loc_8c0669a8:
	mov 0x68,r0
	mov.l @(0x118,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x08,r0
	mov 0x1F,r5
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x0C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r4
	mov.l @(0xF4,PC),r3
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xEC,PC),r2
	mov 0x17,r5
	mov 0x13,r6
	jsr @r2
	mov r14,r4

loc_8c0669e8:
	mov.w @(0xCC,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0669f8
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066c44
	mov.l @r15+,r14

loc_8c0669f8:
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c066a08
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066c88
	mov.l @r15+,r14

loc_8c066a08:
	lds.l @r15+,pr
	mov.l @(0xC4,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c066a12:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xB8,PC),r3
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
	tst r0,r0
	bf loc_8c066a66
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06711c
	mov.l @r15+,r14

loc_8c066a66:
	mov.w @(0x52,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c066a8e
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov 0x12,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x3A,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x44,PC),r3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c066a8e:
	mov.w @(0x26,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c066a9e
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066c44
	mov.l @r15+,r14

loc_8c066a9e:
	mov.w @(0x18,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c066aae
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066c88
	mov.l @r15+,r14

loc_8c066aae:
	lds.l @r15+,pr
	mov.l @(0x1C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
locc_8c066ab8:
	#data 0x019f
locc_8c066aba:
	#data 0x019e
locc_8c066abc:
	#data 0x041c
	#align4
loc_8c066ac0:
	#data bank15.loc_8c152404
loc_8c066ac4:
	#data bank15.loc_8c152400
loc_8c066ac8:
	#data bank04.loc_8c042008
loc_8c066acc:
	#data bank03.loc_8c034e8c
loc_8c066ad0:
	#data bank04.loc_8c045748
loc_8c066ad4:
	#data bank03.loc_8c034dee
loc_8c066ad8:
	#data bank03.loc_8c03340c

;==============================================
loc_8c066adc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c066b18
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xCE,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c066b00
	mova @(0xD4,PC),r0
	bra loc_8c066b04
	fmov @r0,fr3

loc_8c066b00:
	mova @(0xD0,PC),r0
	fmov @r0,fr3

loc_8c066b04:
	mov 0x5C,r0
	mov.l @(0xD0,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mov 0x10,r6
	jsr @r3
	mov r14,r4

loc_8c066b18:
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c066b28
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066c44
	mov.l @r15+,r14

loc_8c066b28:
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c066b38
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066c88
	mov.l @r15+,r14

loc_8c066b38:
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c066b42:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x90,PC),r3
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
	bf loc_8c066b7a
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06711c
	mov.l @r15+,r14

loc_8c066b7a:
	mov.w @(0x48,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c066b8a
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066c44
	mov.l @r15+,r14

loc_8c066b8a:
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c066b9a
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066c88
	mov.l @r15+,r14

loc_8c066b9a:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c066ba4:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c066bb4
	bra loc_8c06711c
	nop

loc_8c066bb4:
	mov.l @(0x2C,PC),r3
	mov.w @(0x10,PC),r1
	mov.l @r3,r0
	add r4,r1
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	rts
	mov.b r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c066bc4:
	#data 0x0130
loc_8c066bc6:
	#data 0x019f
loc_8c066bc8:
	#data 0x019e
loc_8c066bca:
	#data 0x012c
	#align4
loc_8c066bcc:
	#data bank03.loc_8c034dee
loc_8c066bd0:
	#data 0x41555555
loc_8c066bd4:
	#data 0xc1555555
loc_8c066bd8:
	#data bank03.loc_8c034e8c
loc_8c066bdc:
	#data bank04.loc_8c045748
loc_8c066be0:
	#data bank03.loc_8c03340c
loc_8c066be4:
	#data 0x8c26823c

;==============================================
loc_8c066be8:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x11C,PC),r3
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
	mov.l @(0xE4,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c066c3e
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06711c
	mov.l @r15+,r14

loc_8c066c3e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c066c44:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x06,r0
	fldi0 fr4
	mov.b r0,@(0x5,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xA8,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c066c6a
	mova @(0xB4,PC),r0
	bra loc_8c066c6e
	fmov @r0,fr3

loc_8c066c6a:
	mova @(0xB4,PC),r0
	fmov @r0,fr3

loc_8c066c6e:
	mov 0x5C,r0
	mov.l @(0xB4,PC),r3
	fmov fr3,@(r0,r14)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov r14,r4
	mov 0x15,r6
	fmov fr3,@(r0,r14)
	mov 0x17,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c066c88:
	mov.w @(0x7E,PC),r0
	mov.l @(r0,r4),r5
	mov.b @(0x3,r5),r0
	tst r0,r0
	bt loc_8c066ca2
	mov 0x05,r0
	mov.l @(0x90,PC),r3
	mov.b r0,@(0x5,r4)
	mov 0x18,r0
	mov 0x11,r6
	mov.w r0,@(0x1C,r4)
	jmp @r3
	mov 0x17,r5

loc_8c066ca2:
	rts
	nop

;==============================================
loc_8c066ca6:
	mov r4,r3
	mov.l @(0x80,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c066cb8:
	mov.l @(0x18,r4),r3
	mov.b @(0x5,r3),r0
	tst r0,r0
	bt loc_8c066cc4
	bra loc_8c06711c
	nop

loc_8c066cc4:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c066d04
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	mov.l @(0x58,PC),r5
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x2E,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov 0x60,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r5,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r5
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)

loc_8c066d04:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c066d08:
	#data 0x0130
loc_8c066d0a:
	#data 0x01b0
loc_8c066d0c:
	#data 0x012c
	#align4
loc_8c066d10:
	#data bank03.loc_8c034dee
loc_8c066d14:
	#data bank03.loc_8c03340c
loc_8c066d18:
	#data bank05.loc_8c057b6e
loc_8c066d1c:
	#data 0xc1700000
loc_8c066d20:
	#data 0x41700000
loc_8c066d24:
	#data 0x40892492
loc_8c066d28:
	#data bank03.loc_8c034e8c
loc_8c066d2c:
	#data bank15.loc_8c152480
loc_8c066d30:
	#data bank15.loc_8c152488

;==============================================
loc_8c066d34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x11C,PC),r3
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
	mov.l @(0xE8,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c066d90
	bsr loc_8c06711c
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c066d90:
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c066dc2
	mov.l @(0xCC,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0xC4,PC),r0
	mov.w @(0xB0,PC),r7
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	mov.l @(0xBC,PC),r3
	mov r15,r5
	fadd fr3,fr2
	mov 0x01,r6
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4
	bsr loc_8c06711c
	mov r14,r4

loc_8c066dc2:
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c066dd0:
	mov r4,r3
	mov.l @(0xA4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c066de2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c06650c
	mov r4,r14
	mov.l @(0x74,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0x88,PC),r5
	mov.l @r5,r4
	mov.b @(0x2,r4),r0
	tst r0,r0
	bt loc_8c066e94
	mov.b @(0x5,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r0
	mov.l @r5,r3
	mov.b r0,@(0x2,r3)
	mov 0x48,r3
	mov.w @(0x4E,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x64,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x2E,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c066e3a
	mova @(0x4C,PC),r0
	bra loc_8c066e3e
	fmov @r0,fr3

loc_8c066e3a:
	mova @(0x4C,PC),r0
	fmov @r0,fr3

loc_8c066e3e:
	mov 0x17,r6
	mov.l @(0x48,PC),r3
	mov 0x5C,r0
	mov r6,r5
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x40,PC),r2
	mov 0x21,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c066e58:
	#data 0x019f
loc_8c066e5a:
	#data 0x00c9
loc_8c066e5c:
	#data 0x01a1
loc_8c066e5e:
	#data 0x0130
	#align4
loc_8c066e60:
	#data bank03.loc_8c034dee
loc_8c066e64:
	#data bank03.loc_8c03340c
loc_8c066e68:
	#data bank12.loc_8c1294c8
loc_8c066e6c:
	#data 0x41892492
loc_8c066e70:
	#data bank10.loc_8c10235c
loc_8c066e74:
	#data bank04.loc_8c045748
loc_8c066e78:
	#data bank15.loc_8c1524c8
loc_8c066e7c:
	#data 0x8c28c5c8
loc_8c066e80:
	#data 0x8c2896b0
loc_8c066e84:
	#data 0x41735555
loc_8c066e88:
	#data 0xc1735555
loc_8c066e8c:
	#data bank03.loc_8c034e8c
loc_8c066e90:
	#data bank04.loc_8c042008

;==============================================
loc_8c066e94:
	mov.w @(0xF0,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c066eae
	mov.w @(0xE8,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt loc_8c066eae
	mov.b @(0x1,r4),r0
	tst r0,r0
	bf loc_8c066eb6

loc_8c066eae:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c066f50
	mov.l @r15+,r14

loc_8c066eb6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c066ebc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov r4,r14
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
	tst r0,r0
	bf loc_8c066f16
	bsr loc_8c066f50
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c066f16:
	mov.w @(0x72,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c066f26
	mov.w @(0x6C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c066f42

loc_8c066f26:
	mov.l @(0x74,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x6C,PC),r2
	mov r15,r5
	mov.w @(0x56,PC),r7
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	bsr loc_8c066f50
	mov r14,r4

loc_8c066f42:
	mov.l @(0x60,PC),r2
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c066f50:
	mov.l @(0x54,PC),r2
	mov 0x00,r0
	mov.l @r2,r3
	mov.b r0,@(0x1,r3)
	bra loc_8c06711c
	nop

;==============================================
loc_8c066f5c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x48,PC),r1
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x34,PC),r2
	mov.l @r2,r3
	mov.b @(0x4,r3),r0
	tst r0,r0
	bt loc_8c066f82
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06702c
	mov.l @r15+,r14

loc_8c066f82:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c066f88:
	#data 0x012c
loc_8c066f8a:
	#data 0x0420
loc_8c066f8c:
	#data 0x019e
loc_8c066f8e:
	#data 0x019f
loc_8c066f90:
	#data 0x00c9
	#align4
loc_8c066f94:
	#data bank03.loc_8c034dee
loc_8c066f98:
	#data bank03.loc_8c03340c
loc_8c066f9c:
	#data bank12.loc_8c1294c8
loc_8c066fa0:
	#data bank10.loc_8c10235c
loc_8c066fa4:
	#data bank04.loc_8c045748
loc_8c066fa8:
	#data 0x8c28c5c8
loc_8c066fac:
	#data bank15.loc_8c1524d0

;==============================================
loc_8c066fb0:
	mov.w @(0x108,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c066fc8
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8c066fc8:
	mov 0x5C,r1
	mov.l @(0xF8,PC),r3
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
	fadd fr3,fr2
	jmp @r3
	fmov fr2,@(r0,r4)

;==============================================
loc_8c066fe8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xD4,PC),r3
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
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0

loc_8c067018:
	bf loc_8c067022
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06711c
	mov.l @r15+,r14

loc_8c067022:
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c06702c:
	mov.w @(0x8E,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c06703c
	mov.l @(0x18,r4),r3
	mova @(0x98,PC),r0
	bra loc_8c067040
	fmov @r0,fr3

loc_8c06703c:
	mova @(0x94,PC),r0
	fmov @r0,fr3

loc_8c067040:
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r3)
	mov.w @(0x74,PC),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r4),r2
	mov.l @(0x88,PC),r0
	shar r2
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r3)

;==============================================
loc_8c067060:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x54,PC),r3
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
	mov.l @(0x20,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0670dc
	bsr loc_8c06711c
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0670bc:
	#data 0x012c
loc_8c0670be:
	#data 0x0130
loc_8c0670c0:
	#data 0x0141
	#align4
loc_8c0670c4:
	#data bank03.loc_8c034dee
loc_8c0670c8:
	#data bank03.loc_8c03340c
loc_8c0670cc:
	#data bank04.loc_8c045748
loc_8c0670d0:
	#data 0x41d55555
loc_8c0670d4:
	#data 0xc1d55555
loc_8c0670d8:
	#data bank15.loc_8c1524d8

;==============================================
loc_8c0670dc:
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06710e
	mov.l @(0x4C,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0x44,PC),r0
	mov.w @(0x3A,PC),r7
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	mov.l @(0x3C,PC),r3
	mov r15,r5
	fadd fr3,fr2
	mov 0x01,r6
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4
	bsr loc_8c06711c
	mov r14,r4

loc_8c06710e:
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06711c:
	mov 0x03,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0xC,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c067128:
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06712e:
	#data 0x019f
loc_8c067130:
	#data 0x00c9
loc_8c067132:
	#data 0x012c
	#align4
loc_8c067134:
	#data bank12.loc_8c1294c8
loc_8c067138:
	#data 0x41892492
loc_8c06713c:
	#data bank10.loc_8c10235c
loc_8c067140:
	#data bank04.loc_8c045748
loc_8c067144:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c067148:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x144,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c067174
	mov r0,r4
	mov.l @(0x134,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x116,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c067174:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c06717c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x110,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0671ac
	mov r0,r4
	mov.l @(0x104,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov 0x02,r3
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	mov.w @(0xDE,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0671ac:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c0671b4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xCC,PC),r2
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.w @(0xC8,PC),r1
	add r3,r2
	mov.l @(0xD8,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0xD4,PC),r2
	mov.l r1,@r2
	mov.b @(0x4,r14),r0
	mov.l @(0xD4,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0671da:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0xBC,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0671f6:
	mov.w @(0x94,PC),r3
	mov 0x01,r5
	mov.w @(0x90,PC),r1
	sts.l pr,@-r15
	mov.w @(0x8A,PC),r0
	add r4,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r2
	add r3,r2
	mov.l @(0xA0,PC),r3
	jsr @r3
	add 0x94,r0
	mov.w @(0x7A,PC),r0
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
	mov.w @(0x5A,PC),r0
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
	mov.l @(0x60,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.l @(0x40,PC),r1
	mov.b r3,@(r0,r4)
	mov.w @(0x30,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	mov.l @r1,r2
	mov r5,r0
	nop
	mov.b r0,@(0x3,r2)
	mov 0x24,r0
	mov 0x0B,r3
	mov.l @(0x40,PC),r2
	mov.b r3,@(r0,r4)
	mov.w @(0x18,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0672bc
	fmov @r2,fr2
	mova @(0x34,PC),r0
	bra loc_8c0672c0
	fmov @r0,fr3

;##############################################
loc_8c067286:
	#data 0x0503
loc_8c067288:
	#data 0x02a4
loc_8c06728a:
	#data 0x00cc
loc_8c06728c:
	#data 0x012c
loc_8c06728e:
	#data 0x00dc
loc_8c067290:
	#data 0x01a3
loc_8c067292:
	#data 0x0130
	#align4
loc_8c067294:
	#data bank04.loc_8c044f12
loc_8c067298:
	#data loc_8c0671b4
loc_8c06729c:
	#data 0x8c28c5d0
loc_8c0672a0:
	#data 0x8c28c5cc
loc_8c0672a4:
	#data bank15.loc_8c1524f0
loc_8c0672a8:
	#data bank15.loc_8c152500
loc_8c0672ac:
	#data bank12.loc_8c129560
loc_8c0672b0:
	#data bank12.loc_8c1294c8
loc_8c0672b4:
	#data 0x8c26a524
loc_8c0672b8:
	#data 0xc3d55555

;----------------------------------------------
loc_8c0672bc:
	mova @(0x134,PC),r0
	fmov @r0,fr3

loc_8c0672c0:
	fadd fr3,fr2
	mov 0x34,r0
	fldi0 fr4
	fmov fr2,@(r0,r4)
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mov.w @(0x118,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0x106,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0672ee
	mova @(0x110,PC),r0
	bra loc_8c0672f2
	fmov @r0,fr2

loc_8c0672ee:
	mova @(0x110,PC),r0
	fmov @r0,fr2

loc_8c0672f2:
	mov 0x5C,r0
	fmov fr2,@(r0,r4)
	mova @(0x10C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x40,r3
	fmov fr3,@(r0,r4)
	mov 0x10,r2
	mov.w @(0xE6,PC),r0
	mov 0x60,r5
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x64,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c067320
	bra loc_8c067322
	mov 0x40,r0

loc_8c067320:
	mov 0x20,r0

loc_8c067322:
	mov.l @(0xE4,PC),r2
	mov 0x17,r5
	mov.w r0,@(0x1C,r4)
	mov 0x00,r6
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c06732e:
	mov.w @(0xBE,PC),r3
	mov 0x01,r5
	mov.w @(0xBA,PC),r1
	sts.l pr,@-r15
	mov.w @(0xB4,PC),r0
	add r4,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r2
	add r3,r2
	mov.l @(0xC8,PC),r3
	jsr @r3
	add 0x94,r0
	mov.w @(0xA4,PC),r0
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
	mov.w @(0x84,PC),r0
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
	mov.l @(0x88,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x52,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov 0x00,r2
	mov.w r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x34,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0673c0
	mova @(0x40,PC),r0
	bra loc_8c0673c4
	fmov @r0,fr3

loc_8c0673c0:
	mova @(0x3C,PC),r0
	fmov @r0,fr3

loc_8c0673c4:
	mov 0x5C,r0
	mov.l @(0x40,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	mov 0x12,r5
	fmov fr3,@(r0,r4)
	mova @(0x40,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x02,r6
	fmov fr3,@(r0,r4)
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0673e8:
	#data 0x041c
loc_8c0673ea:
	#data 0x0130
loc_8c0673ec:
	#data 0x013c
loc_8c0673ee:
	#data 0x012c
loc_8c0673f0:
	#data 0x00dc
loc_8c0673f2:
	#data 0x01a3
	#align4
loc_8c0673f4:
	#data 0x43d55555
loc_8c0673f8:
	#data 0x43cdb6db
loc_8c0673fc:
	#data 0x41200000
loc_8c067400:
	#data 0xc1200000
loc_8c067404:
	#data 0xbf892492
loc_8c067408:
	#data bank03.loc_8c034e8c
loc_8c06740c:
	#data bank12.loc_8c129560
loc_8c067410:
	#data bank12.loc_8c1294c8
loc_8c067414:
	#data 0xc0092492
loc_8c067418:
	#data 0x3e092492

;==============================================
loc_8c06741c:
	mov.w @(0x17C,PC),r3
	mov 0x01,r5
	mov.w @(0x178,PC),r1
	sts.l pr,@-r15
	mov.w @(0x172,PC),r0
	add r4,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r2
	add r3,r2
	mov.l @(0x174,PC),r3
	jsr @r3
	add 0x94,r0
	mov.w @(0x162,PC),r0
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
	mov.w @(0x142,PC),r0
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
	mov.l @(0x130,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x44,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x118,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov 0x0B,r2
	mov.w r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov.w @(0x10A,PC),r0
	mov.l @(0x14,r4),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	mov 0x52,r3
	fmov fr3,@(r0,r4)
	mov.w @(0xF2,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x04,r0
	mov 0x00,r5
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.l @(0xEC,PC),r3
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov 0x17,r5
	mov.b @(0x2,r4),r0
	mov 0x1A,r6
	mov.l @r3,r2
	extu.b r0,r0
	fldi0 fr4
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov.l @(0xC8,PC),r2
	fmov fr3,@(r0,r4)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c0674fc:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x98,PC),r3
	mov 0x00,r4
	mov.l r8,@-r15
	mov.w @(0x92,PC),r1
	sts.l pr,@-r15
	mov.w @(0x8C,PC),r0
	add r14,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r2
	add r3,r2
	mov.l @(0x8C,PC),r3
	jsr @r3
	add 0x94,r0
	mov.w @(0x7C,PC),r0
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
	mov.l @(0x4C,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x34,r8
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x30,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x14,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0675c0
	add r14,r8
	mov.l @(0x28,PC),r1
	lds r1,fpul
	bra loc_8c0675c6
	fsts fpul,fr3

;##############################################
loc_8c06759a:
	#data 0x012c
loc_8c06759c:
	#data 0x00dc
loc_8c06759e:
	#data 0x01a3
loc_8c0675a0:
	#data 0x0130
loc_8c0675a2:
	#data 0x019c
	#align4
loc_8c0675a4:
	#data bank12.loc_8c129560
loc_8c0675a8:
	#data bank12.loc_8c1294c8
loc_8c0675ac:
	#data 0x8c2896b0
loc_8c0675b0:
	#data 0xc0cdb6db
loc_8c0675b4:
	#data 0xbe092492
loc_8c0675b8:
	#data bank03.loc_8c034e8c
loc_8c0675bc:
	#data 0x42d55555

;----------------------------------------------
loc_8c0675c0:
	mov.l @(0x168,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c0675c6:
	mov.w @(0x156,PC),r0
	mov 0x40,r4
	fmov @r8,fr2
	mov 0x17,r5
	mov.l @(0x160,PC),r3
	mov 0x16,r6
	fadd fr3,fr2
	fmov fr2,@r8
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	bra loc_8c0678d6
	mov.l @r15+,r14

;==============================================
loc_8c0675f2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x12A,PC),r3
	mov 0x01,r4
	mov.w @(0x126,PC),r1
	sts.l pr,@-r15
	mov.w @(0x120,PC),r0
	add r14,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r2
	add r3,r2
	mov.l @(0x128,PC),r3
	jsr @r3
	add 0x94,r0
	mov.w @(0x110,PC),r0
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
	mov.w @(0xF0,PC),r0
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
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x49,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0xC6,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov 0x0B,r2
	mov.w r3,@(r0,r14)
	mov 0x24,r0
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	mov.l @(0xC0,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xA4,PC),r2
	mov 0x17,r5
	mov 0x18,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0678d6
	mov.l @r15+,r14

;==============================================
loc_8c06769a:
	mov.w @(0x86,PC),r3
	mov 0x01,r5
	mov.w @(0x82,PC),r1
	sts.l pr,@-r15
	mov.w @(0x7C,PC),r0
	add r4,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r2
	add r3,r2
	mov.l @(0x84,PC),r3
	jsr @r3
	add 0x94,r0
	mov.w @(0x6C,PC),r0
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
	mov.w @(0x4C,PC),r0
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
	mov.l @(0x44,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x24,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov 0x00,r2
	mov.w r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov.w @(0x16,PC),r0
	mov.l @(0x30,PC),r3
	mov.w @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c06774c
	fmov @r3,fr2
	mova @(0x2C,PC),r0
	bra loc_8c067750
	fmov @r0,fr3

;##############################################
loc_8c067720:
	#data 0x013c
loc_8c067722:
	#data 0x012c
loc_8c067724:
	#data 0x00dc
loc_8c067726:
	#data 0x01a3
loc_8c067728:
	#data 0x0130
	#align4
loc_8c06772c:
	#data 0xc2d55555
loc_8c067730:
	#data bank03.loc_8c034e8c
loc_8c067734:
	#data bank12.loc_8c129560
loc_8c067738:
	#data bank12.loc_8c1294c8
loc_8c06773c:
	#data 0x41892492
loc_8c067740:
	#data bank04.loc_8c04223a
loc_8c067744:
	#data 0x8c26a524
loc_8c067748:
	#data 0xc3d55555

;----------------------------------------------
loc_8c06774c:
	mova @(0x124,PC),r0
	fmov @r0,fr3

loc_8c067750:
	fadd fr3,fr2
	mov 0x34,r0
	fldi0 fr4
	fmov fr2,@(r0,r4)
	mova @(0x11C,PC),r0
	fmov @r0,fr3
	mov.w @(0x106,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0xF4,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c06777e
	mova @(0x100,PC),r0
	bra loc_8c067782
	fmov @r0,fr2

loc_8c06777e:
	mova @(0x100,PC),r0
	fmov @r0,fr2

loc_8c067782:
	mov 0x5C,r0
	fmov fr2,@(r0,r4)
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x40,r3
	fmov fr3,@(r0,r4)
	mov 0x30,r0
	mov.w r0,@(0x1C,r4)
	mov 0x10,r2
	mov.w @(0xD0,PC),r0
	mov 0x60,r5
	mov 0x23,r6
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.l @(0xDC,PC),r3
	mov.b r5,@(r0,r4)
	mov 0x17,r5
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c0677b2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xB4,PC),r3
	mov.l r13,@-r15
	mov 0x01,r13
	mov.w @(0xAE,PC),r1
	sts.l pr,@-r15
	mov.w @(0xA8,PC),r0
	add r14,r1
	mov.b r13,@(r0,r14)
	mov.l @(0x18,r14),r2
	add r3,r2
	mov.l @(0xC0,PC),r3
	jsr @r3
	add 0x94,r0
	mov.w @(0x98,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
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
	mov.w @(0x78,PC),r0
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
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x46,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov 0x00,r2
	mov.w r3,@(r0,r14)
	mov 0x24,r0
	mov.b r2,@(r0,r14)
	mov.w @(0x38,PC),r0
	mov.l @(0x64,PC),r3
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c06783e
	fmov @r3,fr2
	mova @(0x5C,PC),r0
	bra loc_8c067842
	fmov @r0,fr3

loc_8c06783e:
	mova @(0x34,PC),r0
	fmov @r0,fr3

loc_8c067842:
	fadd fr3,fr2
	mov 0x34,r0
	fmov fr2,@(r0,r14)
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov.w @(0x16,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xC,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0678a0
	mova @(0x18,PC),r0
	bra loc_8c0678a4
	fmov @r0,fr2

;##############################################
loc_8c067866:
	#data 0x041c
loc_8c067868:
	#data 0x0130
loc_8c06786a:
	#data 0x013c
loc_8c06786c:
	#data 0x012c
loc_8c06786e:
	#data 0x00dc
loc_8c067870:
	#data 0x01a3
	#align4
loc_8c067874:
	#data 0x43d55555
loc_8c067878:
	#data 0x4422db6d
loc_8c06787c:
	#data 0x41200000
loc_8c067880:
	#data 0xc1200000
loc_8c067884:
	#data 0xbf892492
loc_8c067888:
	#data bank03.loc_8c034e8c
loc_8c06788c:
	#data bank12.loc_8c129560
loc_8c067890:
	#data bank12.loc_8c1294c8
loc_8c067894:
	#data 0x8c26a524
loc_8c067898:
	#data 0xc3d55555
loc_8c06789c:
	#data 0x43700000

;----------------------------------------------
loc_8c0678a0:
	mova @(0x1B8,PC),r0
	fmov @r0,fr2

loc_8c0678a4:
	mov 0x5C,r0
	fldi0 fr3
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0x1B0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov.l @(0x1B0,PC),r3
	fmov fr3,@(r0,r14)
	mova @(0x1A8,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b r13,@r14
	mov 0x24,r6
	lds.l @r15+,pr
	mov.l @(0x1A0,PC),r2
	mov 0x17,r5
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0678d6:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x190,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0678ea:
	mov r4,r3
	mov.l @(0x184,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0678fc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x16C,PC),r3
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c067984
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0x124,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c06717c
	mov r14,r4
	tst r0,r0
	bf.s loc_8c067976
	mov 0x01,r6
	mov.l @(0x114,PC),r2
	mov 0x00,r0
	mov.l @r2,r3
	mov.b r0,@(0x3,r3)

loc_8c067976:
	mov r14,r4
	mov 0x17,r5
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @(0xEC,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c067984:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06798c:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xF0,PC),r3
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
	mov.l @(0xB8,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0679e2
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c067f4a
	mov.l @r15+,r14

;==============================================
loc_8c0679e2:
	lds.l @r15+,pr
	mov.l @(0x90,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0679ec:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x90,PC),r3
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
	mov.l @(0x58,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c067a42
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c067f4a
	mov.l @r15+,r14

loc_8c067a42:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c067a48:
	mov r4,r3
	mov.l @(0x44,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c067a5c:
	#data 0xc1200000
loc_8c067a60:
	#data 0x40cdb6db
loc_8c067a64:
	#data 0xbf4db6db
loc_8c067a68:
	#data bank10.loc_8c104434
loc_8c067a6c:
	#data bank03.loc_8c034e8c
loc_8c067a70:
	#data bank15.loc_8c15251c
loc_8c067a74:
	#data bank15.loc_8c152538
loc_8c067a78:
	#data bank04.loc_8c045748
loc_8c067a7c:
	#data 0x404db6db
loc_8c067a80:
	#data 0x3e092492
loc_8c067a84:
	#data 0x8c28c5d0
loc_8c067a88:
	#data bank03.loc_8c034dee
loc_8c067a8c:
	#data bank03.loc_8c03340c
loc_8c067a90:
	#data bank15.loc_8c152540

;==============================================
loc_8c067a94:
	mov.l r14,@-r15
	mov 0x60,r1
	mov r4,r14
	add r14,r1
	mov 0x38,r0
	sts.l pr,@-r15
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
	mov.w @(0x106,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c067ae6
	mov.w @(0x100,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c067ace
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c067b8c
	mov.l @r15+,r14

loc_8c067ace:
	mov.w @(0xF2,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c067aee
	mov.w @(0xE4,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c067ae6:
	bsr loc_8c067b18
	mov r14,r4
	bra loc_8c067b0e
	nop

loc_8c067aee:
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xCE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c067b0e
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)

loc_8c067b0e:
	lds.l @r15+,pr
	mov.l @(0xC4,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c067b18:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	mov 0x55,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x00,r4
	mov.w @(0x9A,PC),r0
	mov 0x17,r5
	mov 0x26,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x9C,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x8C,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0x8C,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0x84,PC),r0
	mov.w @(0x62,PC),r7
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	mov.l @(0x7C,PC),r3
	mov r15,r5
	fadd fr3,fr2
	mov 0x01,r6
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x70,PC),r2
	mov 0x4A,r5
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c067b8c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r2
	mov.l @(0x4C,PC),r3
	mov r4,r14
	add 0x34,r2
	mov r15,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x48,PC),r2
	mov r15,r5
	mov.w @(0x24,PC),r7
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x44,PC),r2
	mov 0x00,r0
	mov.l @r2,r3
	mov.b r0,@(0x3,r3)
	bsr loc_8c067f4a
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c067bc0:
	#data 0x019e
loc_8c067bc2:
	#data 0x019f
loc_8c067bc4:
	#data 0x041c
loc_8c067bc6:
	#data 0x0141
loc_8c067bc8:
	#data 0x01a1
loc_8c067bca:
	#data 0x0179
loc_8c067bcc:
	#data 0x00c9
	#align4
loc_8c067bd0:
	#data bank03.loc_8c034dee
loc_8c067bd4:
	#data 0xc0892492
loc_8c067bd8:
	#data bank04.loc_8c045748
loc_8c067bdc:
	#data 0x8c2896b0
loc_8c067be0:
	#data bank03.loc_8c034e8c
loc_8c067be4:
	#data bank12.loc_8c1294c8
loc_8c067be8:
	#data 0x424db6db
loc_8c067bec:
	#data bank10.loc_8c10235c
loc_8c067bf0:
	#data bank04.loc_8c04223a
loc_8c067bf4:
	#data 0x8c28c5d0

;==============================================
loc_8c067bf8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x108,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c067c18
	mov.l @(0x100,PC),r2
	mov 0x00,r0
	mov r14,r4
	mov.l @r2,r3
	mov.b r0,@(0x3,r3)
	lds.l @r15+,pr
	bra loc_8c067f4a
	mov.l @r15+,r14

loc_8c067c18:
	lds.l @r15+,pr
	mov.l @(0xF4,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c067c22:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c067c3a
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c067f4a
	lds.l @r15+,pr

loc_8c067c3a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c067c42:
	mov r4,r3
	mov.l @(0xCC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c067c54:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0xA2,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c067c9a
	mov.b @(0x5,r14),r0
	mov r14,r2
	mov.l @(0xAC,PC),r3
	add 0x34,r2
	add 0x01,r0
	mov r15,r1
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(0xA0,PC),r0
	mov.w @(0x86,PC),r7
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	mov.l @(0x98,PC),r3
	mov r15,r5
	fadd fr3,fr2
	mov 0x01,r6
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x90,PC),r2
	mov 0x49,r5
	jsr @r2
	mov r14,r4

loc_8c067c9a:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c067ca2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c067ce6
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x4A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c067cc6
	mova @(0x64,PC),r0
	bra loc_8c067cca
	fmov @r0,fr3

loc_8c067cc6:
	mova @(0x64,PC),r0
	fmov @r0,fr3

loc_8c067cca:
	mov 0x5C,r0
	mov.l @(0x60,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov 0x2C,r0
	mov.w r0,@(0x1C,r14)
	mov 0x04,r6
	lds.l @r15+,pr
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c067ce6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c067cec:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c067cfe
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8c067cfe:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c067d02:
	#data 0x0141
loc_8c067d04:
	#data 0x00c9
loc_8c067d06:
	#data 0x0130
	#align4
loc_8c067d08:
	#data bank03.loc_8c034dee
loc_8c067d0c:
	#data 0x8c28c5d0
loc_8c067d10:
	#data bank04.loc_8c045748
loc_8c067d14:
	#data bank15.loc_8c15254c
loc_8c067d18:
	#data bank12.loc_8c1294c8
loc_8c067d1c:
	#data 0x41cdb6db
loc_8c067d20:
	#data bank10.loc_8c10235c
loc_8c067d24:
	#data bank04.loc_8c04223a
loc_8c067d28:
	#data 0xc0a00000
loc_8c067d2c:
	#data 0x40a00000
loc_8c067d30:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c067d34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x158,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x154,PC),r3
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
	tst r0,r0
	bf loc_8c067d88
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c067f4a
	mov.l @r15+,r14

loc_8c067d88:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c067d8e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x100,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c067da6
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c067f4a
	lds.l @r15+,pr

loc_8c067da6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c067dae:
	mov r4,r3
	mov.l @(0xE8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c067dc0:
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
	bf loc_8c067e22
	mov.b @(0x5,r4),r0
	mov 0x01,r6
	mov.l @(0x9C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8c067e22:
	rts
	nop

;==============================================
loc_8c067e26:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x60,PC),r3
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
	mov.l @(0x2C,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c067e7c
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c067f4a
	mov.l @r15+,r14

loc_8c067e7c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c067e82:
	mov r4,r3
	mov.l @(0x24,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c067e94:
	#data bank03.loc_8c034dee
loc_8c067e98:
	#data bank03.loc_8c03340c
loc_8c067e9c:
	#data bank15.loc_8c15255c
loc_8c067ea0:
	#data 0x404db6db
loc_8c067ea4:
	#data 0x3e092492
loc_8c067ea8:
	#data bank03.loc_8c034e8c
loc_8c067eac:
	#data bank15.loc_8c152564

;==============================================
loc_8c067eb0:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xA4,PC),r3
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
	mov.w @(0x62,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c067f20
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov 0x25,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x17,r5
	mov.w @(0x48,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x4C,PC),r3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c067f20:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c067f26:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x28,PC),r1
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c067f44
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c067f4a
	mov.l @r15+,r14

loc_8c067f44:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c067f4a:
	mov 0x03,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0xA,PC),r0
	mov.b r3,@(r0,r4)

loc_8c067f54:
	mov.l @(0x10,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c067f5a:
	#data 0x041c
loc_8c067f5c:
	#data 0x01d0
loc_8c067f5e:
	#data 0x012c
	#align4
loc_8c067f60:
	#data bank03.loc_8c034dee
loc_8c067f64:
	#data bank03.loc_8c034e8c
loc_8c067f68:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c067f6c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x156,PC),r13
	mov 0x00,r14
	mov.l @(0x164,PC),r11
	mov 0x04,r12
	mov.l r4,@r15

loc_8c067f82:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c067fa0
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x154,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.b r14,@(r0,r4)
	mov 0x26,r0
	mov.w r13,@(r0,r4)

loc_8c067fa0:
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c067f82
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;==============================================
loc_8c067fb8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x114,PC),r2
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.w @(0x110,PC),r1
	add r3,r2
	mov.l @(0x124,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0x120,PC),r2
	mov.l r1,@r2
	mov.b @(0x4,r14),r0
	mov.l @(0x120,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c067fde:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xF2,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x10C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xE4,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xDC,PC),r0
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
	mov.w @(0xB8,PC),r0
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
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x8C,PC),r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov 0x42,r4
	mov.w @(0x80,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	mov r0,r4
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x68,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov 0x50,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	fldi0 fr4
	mov.b r4,@(r0,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov 0x03,r0
	mov.w r0,@(0x1E,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x5C,r0
	mov.l @(0x60,PC),r4
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov.l @(0x38,PC),r3
	mov 0x15,r5
	add 0x1D,r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0680d2:
	#data 0x0504
loc_8c0680d4:
	#data 0x02a4
loc_8c0680d6:
	#data 0x00cc
loc_8c0680d8:
	#data 0x00dc
loc_8c0680da:
	#data 0x012c
loc_8c0680dc:
	#data 0x01a3
loc_8c0680de:
	#data 0x019c
loc_8c0680e0:
	#data 0x013c
	#align4
loc_8c0680e4:
	#data bank04.loc_8c044f12
loc_8c0680e8:
	#data loc_8c067fb8
loc_8c0680ec:
	#data 0x8c28c5d8
loc_8c0680f0:
	#data 0x8c28c5d4
loc_8c0680f4:
	#data bank15.loc_8c15256c
loc_8c0680f8:
	#data bank12.loc_8c129560
loc_8c0680fc:
	#data bank12.loc_8c1294c8
loc_8c068100:
	#data bank15.loc_8c15257c
loc_8c068104:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c068108:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x162,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c06811c
	mov r14,r4
	bra loc_8c068678
	mov.l @r15+,r14

loc_8c06811c:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x154,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06812c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x148,PC),r3
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c068192
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x100,PC),r3
	mov 0x15,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x21,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c068192:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c068198:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xD8,PC),r3
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
	bt loc_8c0681f0
	mov.b @(0x5,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	bra loc_8c068508
	mov.l @r15+,r14

loc_8c0681f0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0681f6:
	mov.w @(0x7A,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x34,r0
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf.s loc_8c068252
	mov r14,r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)

loc_8c068252:
	mov.l @(0x30,PC),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c068268
	mov.w @(0x14,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c068268:
	lds.l @r15+,pr
	mov.l @(0x1C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c068272:
	#data 0x0411
loc_8c068274:
	#data 0x012c
	#align4
loc_8c068278:
	#data bank15.loc_8c15259c
loc_8c06827c:
	#data bank03.loc_8c034dee
loc_8c068280:
	#data bank03.loc_8c034e8c
loc_8c068284:
	#data bank03.loc_8c0332e0
loc_8c068288:
	#data bank04.loc_8c045748

;??????????????????????????????????????????????
;no ref
loc_8c06828c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c068292:
	mov.w @(0x10E,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0682fc
	mov.l @(0xFC,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c0682c2
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c0682c2:
	mov 0x68,r1
	mov.l @(0xE4,PC),r3
	add r14,r1
	mov 0x5C,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
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
	mov.l @(0xB8,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c0682fc:
	mov.b @(0x5,r14),r0
	mov 0x00,r3
	mov.l @(0xB0,PC),r2
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x16,r5
	mov.w @(0x96,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @r2,r6
	lds.l @r15+,pr
	mov.b @r6,r6
	mov.l @(0xA0,PC),r3
	add 0x12,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06831c:
	mov.w @(0x84,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06839e
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c06839e
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c068358
	mov 0x02,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	bra loc_8c068508
	mov.l @r15+,r14

loc_8c068358:
	mov.b @(0x5,r14),r0
	mov 0x4A,r3
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x3C,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x44,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bsr loc_8c068480
	mov r14,r4
	mov 0x20,r0
	mov.l @(0x28,PC),r3
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x15,r5
	add 0x25,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c06839e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0683a4:
	#data 0x012c
loc_8c0683a6:
	#data 0x01a1
	#align4
loc_8c0683a8:
	#data bank03.loc_8c0332e0
loc_8c0683ac:
	#data bank03.loc_8c034dee
loc_8c0683b0:
	#data bank04.loc_8c045748
loc_8c0683b4:
	#data 0x8c28c5d4
loc_8c0683b8:
	#data bank03.loc_8c034e8c
loc_8c0683bc:
	#data 0x8c2896b0

;==============================================
loc_8c0683c0:
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c06841e
	mov.b @(0x5,r14),r0
	mov 0x15,r5
	mov.l @(0x120,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	add 0x29,r6
	jsr @r3
	mov r14,r4

loc_8c06841e:
	lds.l @r15+,pr
	mov.l @(0x110,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c068428:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x104,PC),r3
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
	bt loc_8c06847a
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c068678
	mov.l @r15+,r14

loc_8c06847a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c068480:
	mov.w @(0xA6,PC),r0
	mov 0x34,r6
	mov.l @(0x18,r4),r5
	mov.l @(r0,r5),r5
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x94,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0684b2
	add r4,r6
	mov 0x20,r3
	mov.l @(0x98,PC),r1
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r1
	bra loc_8c0684c6
	fmov @r1,fr3

loc_8c0684b2:
	mov 0x20,r2
	mov.l @(0x84,PC),r1
	add r4,r2
	mov.b @r2,r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r1
	fmov @r1,fr3
	fneg fr3

loc_8c0684c6:
	mov 0x20,r3
	fmov @r6,fr2
	add r4,r3
	mov.l @(0x70,PC),r1
	fadd fr3,fr2
	mov 0x38,r0
	fmov fr2,@r6
	mov.b @r3,r3
	fmov @(r0,r4),fr2
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r1
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c068508:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x14,PC),r0
	mov.l @(0x18,r14),r13
	mov.l @(r0,r13),r13
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c068548
	bra loc_8c06854a
	mov 0x53,r3

;##############################################
loc_8c06852a:
	#data 0x01c8
loc_8c06852c:
	#data 0x0130
	#align4
loc_8c068530:
	#data bank03.loc_8c034e8c
loc_8c068534:
	#data bank04.loc_8c045748
loc_8c068538:
	#data bank03.loc_8c034dee
loc_8c06853c:
	#data bank15.loc_8c1525b8
loc_8c068540:
	#data bank15.loc_8c1525bc
loc_8c068544:
	#data 0x41800000

;----------------------------------------------
loc_8c068548:
	mov 0x49,r3

loc_8c06854a:
	mov.w @(0x136,PC),r0
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x134,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bsr loc_8c0685ee
	mov r14,r4
	mova @(0x120,PC),r0
	mov.l @(0x124,PC),r3
	fmov @r0,fr4
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov r14,r4
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	mov r15,r5
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mova @(0x10C,PC),r0
	fmov @r0,fr5
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fmov @(r0,r14),fr3
	mov 0x60,r0
	fsub fr3,fr2
	fadd fr5,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@r15
	fmov @(r0,r13),fr3
	mov 0x04,r0
	fadd fr5,fr3
	fmov fr3,@(r0,r15)
	jsr @r3
	add 0x34,r4
	extu.b r0,r4
	shlr2 r4
	mov 0x22,r0
	shlr2 r4
	mov.b r4,@(r0,r14)
	mov.w @(0xC6,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0685cc
	mov 0x0F,r3
	xor r3,r4
	add 0x01,r4
	and r3,r4

loc_8c0685cc:
	mov.l @(0xD0,PC),r0
	extu.b r4,r4
	mov.l @(0xD0,PC),r3
	mov 0x16,r5
	mov.w @(0xB0,PC),r1
	mov.b @(r0,r4),r6
	mov.l @r3,r2
	add r6,r1
	mov.b r1,@r2
	mov.l @(0xC8,PC),r2
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0685ee:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x94,PC),r0
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.l @(0xB0,PC),r3
	mov.l @(r0,r4),r4
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	jsr @r3
	fmov fr3,@(r0,r14)
	mov 0x0F,r4
	and r0,r4
	mov 0x20,r0
	mov.b @(r0,r14),r0
	mov 0x34,r8
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c06862c
	add r14,r8
	extu.b r4,r2
	mov.l @(0x8C,PC),r1
	shll2 r2
	shll r2
	add r2,r1
	bra loc_8c06863a
	fmov @r1,fr3

loc_8c06862c:
	extu.b r4,r3
	mov.l @(0x80,PC),r1
	shll2 r3
	shll r3
	add r3,r1
	fmov @r1,fr3
	fneg fr3

loc_8c06863a:
	fmov @r8,fr2
	mov 0x20,r0
	fadd fr3,fr2
	fmov fr2,@r8
	mov 0x38,r8
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt.s loc_8c06865c
	add r14,r8
	extu.b r4,r2
	mov.l @(0x60,PC),r1
	shll2 r2
	shll r2
	add r2,r1
	bra loc_8c06866a
	fmov @r1,fr3

loc_8c06865c:
	extu.b r4,r3
	mov.l @(0x54,PC),r1
	shll2 r3
	shll r3
	add r3,r1
	fmov @r1,fr3
	fneg fr3

loc_8c06866a:
	fmov @r8,fr2
	fadd fr3,fr2
	fmov fr2,@r8
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c068678:
	mov.w @(0x10,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x38,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c068684:
	#data 0x01a1
loc_8c068686:
	#data 0x0130
loc_8c068688:
	#data 0x00fa
loc_8c06868a:
	#data 0x01c8
loc_8c06868c:
	#data 0x012c
	#align4
loc_8c068690:
	#data 0x8c2896b0
loc_8c068694:
	#data 0x41800000
loc_8c068698:
	#data 0x42f00000
loc_8c06869c:
	#data bank03.loc_8c03362c
loc_8c0686a0:
	#data bank15.loc_8c1525d8
loc_8c0686a4:
	#data 0x8c28c5d4
loc_8c0686a8:
	#data bank03.loc_8c034e8c
loc_8c0686ac:
	#data bank11.loc_8c11e730
loc_8c0686b0:
	#data bank15.loc_8c1525e8
loc_8c0686b4:
	#data bank15.loc_8c1525ec
loc_8c0686b8:
	#data bank04.loc_8c0450c0
 
;==============================================
;Unused
loc_8c0686bc:
	mov.l r14,@-r15
	mov 0x00,r6
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov 0x01,r5
	mov.l r11,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x146,PC),r11
	mov.l @(0x150,PC),r12
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0686fc
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x148,PC),r2
	mov 0x00,r3
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b r13,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8c0686fc:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06872a
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x118,PC),r2
	mov 0x01,r3
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b r13,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8c06872a:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c068758
	mov r0,r4
	mov 0x20,r0
	mov.l @(0xEC,PC),r2
	mov 0x03,r3
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b r13,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8c068758:
	mov r4,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c068768:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xAA,PC),r2
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.w @(0xA6,PC),r1
	add r3,r2
	mov.l @(0xB4,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0xB0,PC),r2
	mov.l r1,@r2
	mov.b @(0x4,r14),r0
	mov.l @(0xB0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06878e:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x88,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x9C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x7A,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x72,PC),r0
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
	mov.w @(0x4E,PC),r0
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
	mov.l @(0x50,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	fldi0 fr4
	mov r14,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0x34,PC),r0
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c068818:
	#data 0x0505
loc_8c06881a:
	#data 0x02a4
loc_8c06881c:
	#data 0x00cc
loc_8c06881e:
	#data 0x00dc
loc_8c068820:
	#data 0x012c
loc_8c068822:
	#data 0x01a3
	#align4
loc_8c068824:
	#data bank04.loc_8c044f12
loc_8c068828:
	#data loc_8c068768
loc_8c06882c:
	#data 0x8c28c5e0
loc_8c068830:
	#data 0x8c28c5dc
loc_8c068834:
	#data bank15.loc_8c1526c8
loc_8c068838:
	#data bank12.loc_8c129560
loc_8c06883c:
	#data bank12.loc_8c1294c8
loc_8c068840:
	#data bank15.loc_8c1526d8

;==============================================
loc_8c068844:
	mov.w @(0x108,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov 0x0B,r2
	mov.b r2,@(r0,r14)
	mov 0x08,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xF6,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c068872
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0xEC,PC),r0
	extu.b r3,r3
	shll2 r3
	shll r3
	fmov @(r0,r3),fr3
	bra loc_8c068882
	nop

loc_8c068872:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.l @(0xDC,PC),r0
	extu.b r2,r2
	shll2 r2
	shll r2
	fmov @(r0,r2),fr3
	fneg fr3

loc_8c068882:
	mov 0x5C,r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x15,r5
	mov.l @(0xC8,PC),r0
	extu.b r3,r3
	shll2 r3
	shll r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	mov.l @(0xC0,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	add 0x1D,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0688a8:
	mov.l r14,@-r15
	mov 0x0B,r3
	mov 0x24,r0
	mov r4,r14
	mov.l r8,@-r15
	mov 0x34,r8
	mov.b r3,@(r0,r14)
	mov.w @(0x98,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0688d4
	add r14,r8
	mov 0x21,r3
	mov.l @(0x9C,PC),r1
	add r14,r3
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r1
	bra loc_8c0688e8
	fmov @r1,fr3

loc_8c0688d4:
	mov 0x21,r2
	mov.l @(0x88,PC),r1
	add r14,r2
	mov.b @r2,r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r1
	fmov @r1,fr3
	fneg fr3

loc_8c0688e8:
	mov 0x21,r3
	fmov @r8,fr2
	add r14,r3
	mov.l @(0x74,PC),r1
	fadd fr3,fr2
	mov 0x38,r0
	mov r14,r4
	mov 0x15,r5
	fmov fr2,@r8
	mov.b @r3,r3
	fmov @(r0,r14),fr2
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r1
	mov.l @(0x54,PC),r3
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @r15+,r8
	add 0x2D,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06891a:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.b @(0x5,r3),r0
	tst r0,r0
	bt loc_8c06892c
	mov r14,r4
	bra loc_8c068b24
	mov.l @r15+,r14

loc_8c06892c:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(0x34,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c06893e:
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
loc_8c068950:
	#data 0x012c
loc_8c068952:
	#data 0x0130
	#align4
loc_8c068954:
	#data bank15.loc_8c152668
loc_8c068958:
	#data bank15.loc_8c15266c
loc_8c06895c:
	#data bank03.loc_8c034e8c
loc_8c068960:
	#data bank15.loc_8c1526a8
loc_8c068964:
	#data bank15.loc_8c1526ac
loc_8c068968:
	#data bank15.loc_8c1526e0
loc_8c06896c:
	#data bank15.loc_8c1526e8

;==============================================
loc_8c068970:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x140,PC),r3
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

loc_8c0689a2:
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
	bf loc_8c0689d6
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0xF8,PC),r3
	mov 0x15,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x21,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x21,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c0689d6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0689dc:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xD0,PC),r3
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
	bt loc_8c068a2e
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c068b24
	mov.l @r15+,r14
loc_8c068a2e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c068a34:
	mov r4,r3
	mov.l @(0x88,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c068a46:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c068aae
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x54,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c068a76
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0x58,PC),r0
	extu.b r3,r3
	shll2 r3
	shll r3
	fmov @(r0,r3),fr3
	bra loc_8c068a86
	nop

loc_8c068a76:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.l @(0x48,PC),r0
	extu.b r2,r2
	shll2 r2
	shll r2
	fmov @(r0,r2),fr3
	fneg fr3

loc_8c068a86:
	mov 0x5C,r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x15,r5
	mov.l @(0x34,PC),r0
	extu.b r3,r3
	shll2 r3
	shll r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	mov.l @(0x1C,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x29,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c068aae:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c068ab4:
	#data 0x0130
	#align4
loc_8c068ab8:
	#data bank03.loc_8c034dee
loc_8c068abc:
	#data bank03.loc_8c034e8c
loc_8c068ac0:
	#data bank15.loc_8c1526f0
loc_8c068ac4:
	#data bank15.loc_8c152688
loc_8c068ac8:
	#data bank15.loc_8c15268c

;==============================================
loc_8c068acc:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x60,PC),r3
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
	bt loc_8c068b1e
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c068b24
	mov.l @r15+,r14

loc_8c068b1e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c068b24:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x6,PC),r0
	mov.b r3,@(r0,r4)

loc_8c068b30:
	mov.l @(0x8,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c068b36:
	#data 0x012c
	#align4
loc_8c068b38:
	#data bank03.loc_8c034dee
loc_8c068b3c:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c068b40:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x148,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c068b6c
	mov r0,r4
	mov.l @(0x138,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x11C,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c068b6c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

loc_8c068b74:
	mov r4,r3
	mov.l @(0x120,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c068b86:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xF8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x108,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xEA,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xE2,PC),r0
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
	mov.w @(0xBE,PC),r0
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
	mov.l @(0xBC,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.w r0,@(0x1E,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0xA8,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c068e08
	mov.l @r15+,r14

;==============================================
loc_8c068c0e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x70,PC),r0
	mov 0x01,r3
	mov r4,r1
	mov 0x00,r14
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(0x18,r4),r2
	mov.l @(0x7C,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0x7C,PC),r0
	mov r15,r5
	fmov @r0,fr3
	mov r5,r2
	mova @(0x78,PC),r0
	mov r2,r1
	fmov fr3,@r2
	add 0x04,r1
	fmov @r0,fr3
	mov.w @(0x4E,PC),r0
	fmov fr3,@r1
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c068c52
	fmov @r2,fr3
	fneg fr3
	fmov fr3,@r2
	fmov @r1,fr2
	fneg fr2
	fmov fr2,@r1

loc_8c068c52:
	fmov @r2,fr3
	mov 0x5C,r0
	fldi0 fr4
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c068cb4
	mov.l @(0x34,PC),r1
	mov 0x38,r0
	lds r1,fpul
	bra loc_8c068cbc
	fsts fpul,fr3

;##############################################
loc_8c068c84:
	#data 0x0600
loc_8c068c86:
	#data 0x00dc
loc_8c068c88:
	#data 0x012c
loc_8c068c8a:
	#data 0x01a3
loc_8c068c8c:
	#data 0x0101
loc_8c068c8e:
	#data 0x0130
	#align4
loc_8c068c90:
	#data bank04.loc_8c044f12
loc_8c068c94:
	#data loc_8c068b74
loc_8c068c98:
	#data bank15.loc_8c1526f8
loc_8c068c9c:
	#data bank12.loc_8c129560
loc_8c068ca0:
	#data bank12.loc_8c1294c8
loc_8c068ca4:
	#data bank15.loc_8c152708
loc_8c068ca8:
	#data 0xc1555555
loc_8c068cac:
	#data 0x41d55555
loc_8c068cb0:
	#data 0x43092492

;----------------------------------------------
loc_8c068cb4:
	mov.l @(0x134,PC),r1
	mov 0x38,r0
	lds r1,fpul
	fsts fpul,fr3

loc_8c068cbc:
	fmov @(r0,r4),fr2
	mov 0x42,r5
	mov 0x30,r3
	fadd fr3,fr2
	mov 0x10,r2
	fmov fr2,@(r0,r4)
	mov 0x24,r0
	mov.b r14,@(r0,r4)
	mov.w @(0x110,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x106,PC),r0
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r3,@(r0,r4)
	add 0xFE,r0
	mov.b r2,@(r0,r4)
	add 0xFF,r0
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c068cf8
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c068cfc

loc_8c068cf8:
	bra loc_8c068d0c
	mov 0x02,r5

loc_8c068cfc:
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c068d0a
	bra loc_8c068d0c
	mov 0x3E,r5

loc_8c068d0a:
	mov 0x43,r5

loc_8c068d0c:
	mov.w @(0xD4,PC),r0
	mov 0x00,r6
	mov.l @(0xDC,PC),r3
	mov.b r5,@(r0,r4)
	add 0x0B,r0
	mov.w r14,@(r0,r4)
	add 0xF2,r0
	mov.b r14,@(r0,r4)
	add 0x26,r0
	mov.l r14,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0xC0,PC),r2
	jsr @r2
	mov 0x14,r5
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c068d3e:
	mov.w @(0xA4,PC),r0
	mov 0x01,r3
	sts.l pr,@-r15
	mov.b r3,@(r0,r4)
	mov r4,r1
	mov.l @(0x18,r4),r2
	add 0x34,r1
	mov.l @(0xA8,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xA4,PC),r1
	mov 0x48,r0
	fldi0 fr4
	mov 0x00,r5
	mov.l r1,@(r0,r4)
	mova @(0xA0,PC),r0
	mov.l @(0xA0,PC),r1
	mov 0x42,r6
	fmov @r0,fr3
	mov 0x60,r0
	lds r1,fpul
	mov 0x10,r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)

loc_8c068d80:
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x24,r0
	mov.b r5,@(r0,r4)
	mov.w @(0x54,PC),r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	mov 0x78,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x4A,PC),r0
	mov 0x30,r2
	mov.w @(0x4C,PC),r1
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r3,@(r0,r4)
	add 0xFE,r0
	mov.b r2,@(r0,r4)
	add 0xFF,r0
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c068db4
	mov 0x49,r6

loc_8c068db4:
	mov.w @(0x2C,PC),r0
	mov.l @(0x38,PC),r3
	mov.b r6,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov 0x14,r5
	mov.b @(0x2,r4),r0
	mov 0x01,r6
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x18,PC),r2
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c068de0:
	#data 0x019c
loc_8c068de2:
	#data 0x013e
loc_8c068de4:
	#data 0x01a1
loc_8c068de6:
	#data 0x012c
loc_8c068de8:
	#data 0x0255
	#align4
loc_8c068dec:
	#data 0x433c9249
loc_8c068df0:
	#data 0x8c2896b0
loc_8c068df4:
	#data bank03.loc_8c034e8c
loc_8c068df8:
	#data bank12.loc_8c1294c8
loc_8c068dfc:
	#data 0x00008000
loc_8c068e00:
	#data 0x41892492
loc_8c068e04:
	#data 0x432b6db6

;==============================================
loc_8c068e08:
	mov.l r14,@-r15
	mov r4,r6
	sts.l pr,@-r15
	mov.l @(0xB8,PC),r3
	mov r4,r14
	mov r4,r5
	add 0x1F,r6
	jsr @r3
	add 0x1E,r5
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c068e4a
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c068e4a
	mov.w @(0x90,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c068e4a
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c068e4a
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c068e64

loc_8c068e4a:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x70,PC),r0
	mov 0x02,r6
	mov 0x01,r7
	mov r6,r5
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(0x18,r14),r4
	mov.l @(0x74,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c068e64:
	mov.l @(0x70,PC),r2
	jsr @r2
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
loc_8c068eac:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c068eba:
	mov.l @(0x24,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c068ec0:
	#data 0x019e
loc_8c068ec2:
	#data 0x019f
loc_8c068ec4:
	#data 0x012c
	#align4
loc_8c068ec8:
	#data loc_8c069966
loc_8c068ecc:
	#data bank03.loc_8c03340c
loc_8c068ed0:
	#data bank03.loc_8c0335b0
loc_8c068ed4:
	#data bank03.loc_8c0353ee
loc_8c068ed8:
	#data bank03.loc_8c034dee
loc_8c068edc:
	#data bank04.loc_8c045748
loc_8c068ee0:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c068ee4:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@(0xC,r15)
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x140,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.b r7,@r15
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c068f32
	mov r0,r4
	mov.l @(0x130,PC),r3
	mov 0x21,r0
	mov.w @(0x116,PC),r5
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.l @(0xC,r15),r2
	add r4,r5
	mov.l r2,@(0x18,r4)
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.w @(0x104,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@(0xB,r5)
	mov.b @(0x4,r15),r0
	mov.b r0,@(0x8,r5)
	mov 0x29,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r5)

loc_8c068f32:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c068f3a:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0xFC,PC),r1
	extu.b r0,r0
	mov.w @(0xDE,PC),r5
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c068f50:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.w @(0xC6,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xBE,PC),r2
	add 0x01,r0
	mov.l @(0xD8,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xB8,PC),r0
	mov.l @(0x18,r14),r12
	jsr @r3
	add r12,r2
	mov.w @(0xB2,PC),r0
	mov 0x01,r10
	mov r14,r1
	add 0x50,r1
	mov.b r10,@(r0,r14)
	mov.b @(0x2,r12),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r12),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r12),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r12),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.b @(r0,r12),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r12),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r12),r3
	mov r12,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r12),r2
	mov 0x40,r3
	mov.b r2,@(r0,r14)
	mov.w @(0x74,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c069098
	mov 0x00,r11
	mov 0x31,r0
	mov 0xFF,r3
	mov.b r3,@(r0,r14)
	mov 0x04,r0
	mov.b r11,@r13
	mov.b r0,@(0x1,r13)
	mov r11,r0
	nop
	mov.b r0,@(0x4,r13)
	mov 0x02,r0
	mov.b r0,@(0x5,r13)
	mov r11,r0
	nop
	mov.b r0,@(0x3,r13)
	mov.b r0,@(0x6,r13)
	mov.b r0,@(0x2,r13)
	mov 0x2C,r0
	mov.b r10,@(r0,r13)
	mov 0x2B,r0
	mov.b r10,@(r0,r13)
	mov.w @(0x34,PC),r0
	mov.b @(r0,r12),r3
	mov 0x22,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r12),r0
	mov.b r0,@(0xA,r13)
	mov.b @(0xB,r13),r0
	tst r0,r0
	bf loc_8c069050
	mov 0x2A,r0
	mov.b r11,@(r0,r13)
	mov r11,r0
	nop
	mov.l @(0x34,PC),r3
	mov 0x05,r5
	mov.b r0,@(0x8,r13)
	jsr @r3
	mov r14,r4
	bra loc_8c069066
	nop

;##############################################
loc_8c069024:
	#data 0x0601
loc_8c069026:
	#data 0x0088
loc_8c069028:
	#data 0x00dc
loc_8c06902a:
	#data 0x00c0
loc_8c06902c:
	#data 0x012c
loc_8c06902e:
	#data 0x01a3
loc_8c069030:
	#data 0x013f
loc_8c069032:
	#data 0x02a4
loc_8c069034:
	#data 0x02a6
	#align4
loc_8c069038:
	#data bank04.loc_8c044f12
loc_8c06903c:
	#data loc_8c068f3a
loc_8c069040:
	#data bank15.loc_8c152a94
loc_8c069044:
	#data bank12.loc_8c129560
loc_8c069048:
	#data bank12.loc_8c1294c8
loc_8c06904c:
	#data bank0b.loc_8c0bfcae

;----------------------------------------------
loc_8c069050:
	mov.w @(0x100,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x0F,r0
	bf loc_8c069066
	mov.l @(0x108,PC),r3
	mov 0x2A,r0
	mov 0x06,r5
	mov.b r11,@(r0,r13)
	jsr @r3
	mov r14,r4

loc_8c069066:
	mov.l @(0x100,PC),r2
	mov 0x01,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt.s loc_8c069098
	mov r0,r4
	mov.l @(0x10,r14),r2
	mov 0x20,r0
	mov.w @(0xDC,PC),r5
	mov.l r2,@(0x10,r4)
	mov.w @(0xD4,PC),r2
	mov.b r10,@(r0,r4)
	mov 0x26,r0
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.w @(0xCC,PC),r3
	mov.w r2,@(r0,r4)
	add r3,r4
	mov.l r14,@(0xC,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x4,r4)
	mov.b r0,@(0x3,r4)

loc_8c069098:
	mov 0x22,r0
	mov.b @(r0,r12),r3
	mov 0x42,r4
	mov.b r3,@(r0,r14)
	mov.w @(0xB8,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r11,r0
	nop
	mov r13,r5
	mov.b r0,@(0x7,r13)
	mov 0xFF,r3
	mov r14,r4
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0690c4:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0690d0
	bra loc_8c0692e2
	nop

loc_8c0690d0:
	mov.l r14,@-r15
	mov 0x24,r0
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r5,r14
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.w @(0x7A,PC),r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r13),r12
	mov.b @(r0,r12),r3
	add r12,r10
	mov.b r3,@(r0,r13)
	mov.b @(0x4,r10),r0
	tst r0,r0
	bf.s loc_8c069100
	mov 0x00,r11
	mov 0x02,r0
	mov.b r0,@(0x4,r13)
	mov.w @(0x62,PC),r0
	bra loc_8c0692d2
	mov.b r11,@(r0,r13)

loc_8c069100:
	mov.l @(0x68,PC),r4
	mov 0x3C,r0
	mov 0x01,r9
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	mov r9,r1
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bt loc_8c06911c
	bra loc_8c0692d2
	nop

loc_8c06911c:
	mov.b @(0xB,r14),r0
	tst r0,r0
	bt loc_8c069126
	mov.b @(0x1,r10),r0
	mov.b r0,@r14

loc_8c069126:
	mov.b @r14,r3
	mov.b @(0x1,r10),r0
	extu.b r3,r3
	cmp/eq r0,r3
	bt loc_8c069176
	mov.b @(0x1,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r14)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c069176
	mov r9,r0
	nop
	mov.b r0,@(0x1,r14)
	mov.b @r14,r3
	mov.b @(0x1,r10),r0
	extu.b r3,r3
	cmp/ge r0,r3
	bt loc_8c069170
	mov.b @r14,r2
	add 0x10,r2
	bra loc_8c069176
	mov.b r2,@r14

;##############################################
loc_8c069154:
	#data 0x0159
loc_8c069156:
	#data 0x0601
loc_8c069158:
	#data 0x0088
loc_8c06915a:
	#data 0x00ff
loc_8c06915c:
	#data 0x019c
loc_8c06915e:
	#data 0x02a4
loc_8c069160:
	#data 0x012c
	#align4
loc_8c069164:
	#data bank0b.loc_8c0bfcae
loc_8c069168:
	#data bank04.loc_8c044f12
loc_8c06916c:
	#data 0x8c2895f0

;----------------------------------------------
loc_8c069170:
	mov.b @r14,r1
	add 0xF0,r1
	mov.b r1,@r14

loc_8c069176:
	mov.b @(0x6,r14),r0
	tst r0,r0
	bt loc_8c069182
	mov.b @(0x6,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x6,r14)

loc_8c069182:
	mov 0x2A,r0
	mov r14,r6
	mov.b r11,@(r0,r14)
	mov r14,r5
	mov.b @(0x2,r14),r0
	add 0x2B,r5
	add 0x2C,r6
	xor 0x02,r0
	mov.b r0,@(0x2,r14)
	bsr loc_8c069966
	mov r13,r4
	mov.w @(0xFA,PC),r0
	mov.w @(r0,r12),r2
	mov.w r2,@(r0,r13)
	mov 0x22,r0
	mov.b @r10,r3
	mov.b r3,@(r0,r13)
	mov 0x08,r3
	mov.b @(r0,r13),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c0691b8
	mov.w @(0xE4,PC),r0
	mov 0x01,r2
	mov.w @(r0,r13),r1
	xor r2,r1
	mov.w r1,@(r0,r13)

loc_8c0691b8:
	mov.b @(0x7,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x7,r14)
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c06924a
	mov.b @(0x7,r14),r0
	cmp/pz r0
	bt loc_8c0691ce
	mov.b @(0x8,r14),r0
	mov.b r0,@(0x7,r14)

loc_8c0691ce:
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c06924a
	mov.b @(0xB,r14),r0
	tst r0,r0
	bt loc_8c0691e0
	mov.b @(0xA,r14),r0
	tst r0,r0
	bt loc_8c06924a

loc_8c0691e0:
	mov.b @(0xA,r14),r0
	tst r0,r0
	bt.s loc_8c0691ee
	mov 0x02,r6
	mov.b @(0xA,r14),r0
	add 0xFF,r0
	mov.b r0,@(0xA,r14)

loc_8c0691ee:
	mov.l @(0xB4,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r13,r4
	tst r0,r0
	bt.s loc_8c06924a
	mov r0,r4
	mov.l @(0x10,r13),r3
	mov 0x20,r0
	mov.w @(0x94,PC),r2
	mov.l r3,@(0x10,r4)
	mov.b r9,@(r0,r4)
	mov 0x26,r0
	mov.l @(0x18,r13),r3
	mov.l r3,@(0x18,r4)
	mov.w @(0x8A,PC),r3
	mov.w r2,@(r0,r4)
	add r3,r4
	mov.l r13,@(0xC,r4)
	mov r11,r0
	nop
	mov.b r0,@(0x3,r4)
	mov 0x29,r0
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov r11,r0
	nop
	mov.b r0,@(0x4,r4)
	mov.b @(0x5,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r14)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06924a
	mov 0x02,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x62,PC),r0
	mov.b r0,@(0x4,r4)
	mov.b @(0xB,r14),r0
	tst r0,r0
	bt loc_8c06924a
	mov.w @(0x5A,PC),r0
	mov 0x42,r4
	mov.b r4,@(r0,r13)
	add 0x01,r0
	mov.b r4,@(r0,r13)

loc_8c06924a:
	mov.w @(0x1C,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r13)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0692c0
	mov 0x0A,r0
	mov.w r0,@(0x1C,r13)
	mov.b @(0xB,r14),r0
	tst r0,r0
	bf loc_8c0692c0
	mov.w @(0x3C,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x0F,r0
	bt loc_8c0692c0
	mov.w @(0x34,PC),r0
	mov.b @(r0,r12),r4
	mov 0x29,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c069282
	mov.b @(0x9,r14),r0
	add 0x01,r0
	and 0x01,r0
	mov.b r0,@(0x9,r14)
	mov.b @(0x9,r14),r0
	add r0,r4

loc_8c069282:
	mov.w @(0x1C,PC),r0
	mov.b r4,@(r0,r13)
	add 0x0B,r0
	mov.w r11,@(r0,r13)
	add 0xF2,r0
	mov.b r11,@(r0,r13)
	add 0x26,r0
	mov.l r11,@(r0,r13)
	bra loc_8c0692a8
	nop

;##############################################
loc_8c069296:
	#data 0x0130
loc_8c069298:
	#data 0x0601
loc_8c06929a:
	#data 0x0088
loc_8c06929c:
	#data 0x00ff
loc_8c06929e:
	#data 0x019c
loc_8c0692a0:
	#data 0x0159
loc_8c0692a2:
	#data 0x01a1
	#align4
loc_8c0692a4:
	#data bank04.loc_8c044f12

;----------------------------------------------
loc_8c0692a8:
	mov.l @(0x78,PC),r3
	mov.b @(0x2,r13),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x6C,PC),r2
	jsr @r2
	mov r13,r4

loc_8c0692c0:
	mov r14,r5
	mov r12,r6
	bsr loc_8c0695c4
	mov r13,r4
	mov r14,r5
	bsr loc_8c0697ec
	mov r13,r4
	mov.w @(0x4E,PC),r0
	mov.b r9,@(r0,r13)

loc_8c0692d2:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c0692e2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.w @(0x2C,PC),r13
	sts.l pr,@-r15
	mov.l @(0xC,r12),r4
	mov.l @(0x18,r14),r9
	mov.b @(0x4,r4),r0
	add r4,r13
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c0693ee
	mov 0x00,r11
	mov.w @(0x18,PC),r4
	mov.l @(0x8,r14),r10
	add r10,r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bt loc_8c06932c
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6,PC),r0
	mov.b r11,@(r0,r14)
	add 0xD3,r0
	bra loc_8c0694a0
	mov.b r0,@(0x3,r12)

;##############################################
loc_8c069320:
	#data 0x012c
loc_8c069322:
	#data 0x0088
	#align4
loc_8c069324:
	#data 0x8c2896b0
loc_8c069328:
	#data bank04.loc_8c045748

;----------------------------------------------
loc_8c06932c:
	mov.b @(0xB,r13),r0
	tst r0,r0
	bt loc_8c069338
	mov.b @(0x7,r13),r0
	tst r0,r0
	bf loc_8c069340

loc_8c069338:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_8c069340:
	mov.b @(0x2,r13),r0
	mov r10,r6
	mov r12,r5
	mov r13,r7
	mov.b r0,@(0x2,r12)
	mov.w @(0xD4,PC),r0
	mov.w @(r0,r9),r3
	mov.w r3,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r10),r2
	mov.b r2,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r10),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b @(r0,r10),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c069704
	mov r14,r4
	mov r12,r5
	bsr loc_8c0697ec
	mov r14,r4
	mov.w @(0xB2,PC),r0
	fmov @(r0,r9),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0693cc
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.l @(0xB0,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x22,r0
	mov.w @(0x9C,PC),r3
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r13)
	mov.w @(0x8E,PC),r0
	fmov @(r0,r9),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r13)
	mov 0x2A,r0
	mov.b r3,@(r0,r13)
	mov.b @(0x6,r13),r0
	tst r0,r0
	bf loc_8c0693a8
	mov 0x1E,r0
	mov.b r0,@(0x6,r13)

loc_8c0693a8:
	mov.b @(0xB,r13),r0
	tst r0,r0
	bf loc_8c0693ee
	mov r12,r5
	mov r10,r6
	mov r13,r7
	bsr loc_8c069704
	mov r14,r4
	mov.l @(0x78,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov r12,r5
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c0697ec
	mov r14,r4

loc_8c0693cc:
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x08,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bt.s loc_8c0693e4
	mov r14,r4
	mov.w @(0x44,PC),r0
	mov 0x01,r2
	mov.w @(r0,r14),r1
	xor r2,r1
	mov.w r1,@(r0,r14)

loc_8c0693e4:
	bsr loc_8c0698f2
	nop
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0693f8

loc_8c0693ee:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x32,PC),r0
	bra loc_8c0694a0
	mov.b r11,@(r0,r14)

loc_8c0693f8:
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06940c
	mov r12,r5
	mov r13,r6
	bsr loc_8c069950
	mov r14,r4
	bra loc_8c06949a
	nop

loc_8c06940c:
	mov.w @(0x1C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c069438
	mov r12,r5
	mov r13,r6
	mov.b r11,@(r0,r14)
	bsr loc_8c069942
	mov r14,r4
	bra loc_8c06949a
	nop

;##############################################
loc_8c069422:
	#data 0x0130
loc_8c069424:
	#data 0x041c
loc_8c069426:
	#data 0x00ff
loc_8c069428:
	#data 0x012c
loc_8c06942a:
	#data 0x019e
loc_8c06942c:
	#data 0x019f
	#align4
loc_8c069430:
	#data bank15.loc_8c152aa4
loc_8c069434:
	#data 0x42092492

;----------------------------------------------
loc_8c069438:
	mov.b @(0xB,r13),r0
	tst r0,r0
	bf loc_8c06949a
	mov.b @(0x4,r12),r0
	tst r0,r0
	bf loc_8c06945a
	mov.w @(0xF4,PC),r0
	mov.b r11,@(r0,r14)
	mov.b @(0x3,r12),r0
	tst r0,r0
	bt loc_8c06945a
	mov.b @(0x7,r13),r0
	tst r0,r0
	bf loc_8c06949a
	mov.w @(0xE4,PC),r0
	mov 0x42,r2
	mov.b r2,@(r0,r14)

loc_8c06945a:
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r9),r4
	mov 0x29,r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c069472
	mov.b @(0x9,r12),r0
	add 0x01,r0
	and 0x01,r0
	mov.b r0,@(0x9,r12)
	mov.b @(0x9,r12),r0
	add r0,r4

loc_8c069472:
	mov.w @(0xC8,PC),r0
	mov.l @(0xD0,PC),r3
	mov.b r4,@(r0,r14)
	add 0x0B,r0
	mov.w r11,@(r0,r14)
	add 0xF2,r0
	mov.b r11,@(r0,r14)
	add 0x26,r0
	mov.l r11,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r14,r4

loc_8c06949a:
	mov.w @(0xA2,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_8c0694a0:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0694b0:
	mov.w @(0x8C,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c0694be:
	mov.l @(0x90,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c0694c4:
	add 0xF8,r15
	mov.w @(0x78,PC),r0
	mov r15,r6
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c0694e0
	mov r6,r7
	cmp/eq 0x01,r0
	bt loc_8c0694ec
	cmp/eq 0x02,r0
	bt loc_8c0694f8
	bra loc_8c069504
	nop

loc_8c0694e0:
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mova @(0x70,PC),r0
	fmov fr3,@r7
	bra loc_8c06950e
	fmov @r0,fr3

loc_8c0694ec:
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mova @(0x6C,PC),r0
	fmov fr3,@r7
	bra loc_8c06950e
	fmov @r0,fr3

loc_8c0694f8:
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mova @(0x68,PC),r0
	fmov fr3,@r7
	bra loc_8c06950e
	fmov @r0,fr3

loc_8c069504:
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mova @(0x64,PC),r0
	fmov fr3,@r7
	fmov @r0,fr3

loc_8c06950e:
	mov 0x04,r0
	fmov fr3,@(r0,r6)
	mov.w @(0x2E,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bf loc_8c069522
	mov r6,r7
	fmov @r7,fr3
	fneg fr3
	fmov fr3,@r7

loc_8c069522:
	mov 0x34,r0
	fmov @r6,fr3
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	rts
	add 0x08,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06953c:
	#data 0x019c
loc_8c06953e:
	#data 0x01a1
loc_8c069540:
	#data 0x012c
loc_8c069542:
	#data 0x0158
loc_8c069544:
	#data 0x0130
	#align4
loc_8c069548:
	#data 0x8c2896b0
loc_8c06954c:
	#data bank04.loc_8c045748
loc_8c069550:
	#data bank04.loc_8c0450c0
loc_8c069554:
	#data 0x42c15555
loc_8c069558:
	#data 0x4304db6d
loc_8c06955c:
	#data 0x42f6aaaa
loc_8c069560:
	#data 0x43586db6
loc_8c069564:
	#data 0x42a00000
loc_8c069568:
	#data 0x43892492
loc_8c06956c:
	#data 0x42fd5555
loc_8c069570:
	#data 0x43676db6

;==============================================
loc_8c069574:
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0xC0,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c06958e
	mova @(0xC8,PC),r0
	bra loc_8c069592
	fmov @r0,fr2

loc_8c06958e:
	mova @(0xC8,PC),r0
	fmov @r0,fr2

loc_8c069592:
	mov 0x34,r0
	fmov @(r0,r5),fr1
	fadd fr2,fr1
	rts
	fmov fr1,@(r0,r4)


;==============================================
loc_8c06959c:
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x98,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0695b6
	mova @(0xAC,PC),r0
	bra loc_8c0695ba
	fmov @r0,fr2

loc_8c0695b6:
	mova @(0xAC,PC),r0
	fmov @r0,fr2

loc_8c0695ba:
	mov 0x34,r0
	fmov @(r0,r5),fr1
	fadd fr2,fr1
	rts
	fmov fr1,@(r0,r4)

;==============================================
loc_8c0695c4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x78,PC),r0
	mov r6,r14
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0695fe
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0695ea
	bsr loc_8c0694c4
	mov r14,r5
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0695ea:
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c0695fe
	bsr loc_8c069574
	mov r14,r5
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0695fe:
	mov.w @(0x48,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bf loc_8c06961a
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	bra loc_8c0696fa
	fadd fr3,fr2

loc_8c06961a:
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0F,r0
	bf loc_8c06966c
	mov.w @(0x24,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8c069638
	mov.w @(0x1A,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c06966c

loc_8c069638:
	bsr loc_8c06959c
	mov r14,r5
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c069644:
	#data 0x0130
loc_8c069646:
	#data 0x01d0
loc_8c069648:
	#data 0x01e9
loc_8c06964a:
	#data 0x0159
loc_8c06964c:
	#data 0x0158
	#align4
loc_8c069650:
	#data 0x41bc9249
loc_8c069654:
	#data 0x43610000
loc_8c069658:
	#data 0xc3610000
loc_8c06965c:
	#data 0x43474924
loc_8c069660:
	#data 0x42e95555
loc_8c069664:
	#data 0xc2e95555
loc_8c069668:
	#data 0x4391b6db

;==============================================
loc_8c06966c:
	mova @(0xF4,PC),r0
	mov r15,r5
	fmov @r0,fr5
	mova @(0xF4,PC),r0
	fmov @r0,fr4
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt.s loc_8c0696aa
	mov r5,r6
	mov 0x22,r0
	mov.l @(0xE4,PC),r7
	mov.b @(r0,r4),r2
	extu.b r2,r2
	shll2 r2
	add r7,r2
	mov.w @r2,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@r6
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll2 r3
	add r3,r7
	mov.w @(0x2,r7),r0
	mov r0,r3
	lds r3,fpul
	bra loc_8c0696ce
	nop

loc_8c0696aa:
	mov 0x22,r0
	mov.l @(0xC0,PC),r7
	mov.b @(r0,r4),r2
	extu.b r2,r2
	shll2 r2
	add r7,r2
	mov.w @r2,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@r6
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll2 r3
	add r3,r7
	mov.w @(0x2,r7),r0
	mov r0,r3
	lds r3,fpul

loc_8c0696ce:
	float fpul,fr3
	mov 0x04,r0
	fmul fr5,fr3
	fmov fr3,@(r0,r5)
	mov.w @(0x86,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0696e6
	mov r5,r6
	fmov @r6,fr3
	fneg fr3
	fmov fr3,@r6

loc_8c0696e6:
	mov 0x34,r0
	fmov @r5,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsub fr3,fr2

loc_8c0696fa:
	fmov fr2,@(r0,r4)
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c069704:
	mov.l r14,@-r15
	add 0xF8,r15
	mova @(0x5C,PC),r0
	mov r15,r14
	fmov @r0,fr5
	mova @(0x54,PC),r0
	fmov @r0,fr4
	mov.b @(0x3,r5),r0
	tst r0,r0
	bt.s loc_8c069748
	mov r14,r1
	mov 0x22,r0
	mov.l @(0x54,PC),r5
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll2 r3
	add r5,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fmov fr3,@r1
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll2 r3
	add r3,r5
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	float fpul,fr3
	fmul fr4,fr3
	bra loc_8c0697c0
	fmov fr3,@(r0,r14)

loc_8c069748:
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c06977c
	mov 0x22,r0
	mov.b @(r0,r4),r5
	mov.l @(0x20,PC),r0
	extu.b r5,r5
	bra loc_8c069786
	shll2 r5

;##############################################
loc_8c06975e:
	#data 0x01f9
loc_8c069760:
	#data 0x0130
	#align4
loc_8c069764:
	#data 0x40092492
loc_8c069768:
	#data 0x3fd55555
loc_8c06976c:
	#data bank15.loc_8c152a14
loc_8c069770:
	#data bank15.loc_8c152a54
loc_8c069774:
	#data bank15.loc_8c152904
loc_8c069778:
	#data bank15.loc_8c152884

;----------------------------------------------
loc_8c06977c:
	mov 0x22,r0
	mov.b @(r0,r4),r5
	mov.l @(0xCC,PC),r0
	extu.b r5,r5
	shll2 r5

loc_8c069786:
	mov.b @r7,r3
	mov 0x08,r2
	mov.l @(r0,r5),r5
	extu.b r3,r3
	shlr2 r3
	shlr r3
	shll r3
	add r3,r5
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fmov fr3,@r1
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c0697c0
	mov r14,r5
	fmov @r5,fr3
	fneg fr3
	fmov fr3,@r5

loc_8c0697c0:
	mov.w @(0x88,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0697d0
	mov r14,r5
	fmov @r5,fr3
	fneg fr3
	fmov fr3,@r5

loc_8c0697d0:
	mov 0x34,r0
	fmov @r14,fr3
	fmov @(r0,r6),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r6),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x08,r15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0697ec:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0x54,PC),r11
	tst r3,r3
	bt loc_8c06981e
	mov.b @(0x3,r5),r0
	mov.w @(0x44,PC),r13
	mov.l @(0xC,r5),r4
	tst r0,r0
	bt.s loc_8c069818
	add r4,r13
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x40,r0
	bt loc_8c069860

loc_8c069818:
	mov.l @(0x3C,PC),r12
	bra loc_8c069822
	mov.b @r13,r4

loc_8c06981e:
	mov.b @r5,r4
	mov.l @(0x38,PC),r12

loc_8c069822:
	extu.b r4,r0
	cmp/eq 0x40,r0
	extu.b r4,r2
	bt.s loc_8c069834
	add r2,r12
	mov 0x22,r0
	mov.b @(r0,r14),r0
	bra loc_8c06983c
	extu.b r0,r0

loc_8c069834:
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0

loc_8c06983c:
	mov.b @(r0,r12),r7
	mov 0x15,r5
	mov 0x08,r6
	extu.b r7,r7
	jsr @r11
	mov r14,r4
	bra loc_8c0698e4
	nop

;############################################
loc_8c06984c:
	#data 0x0130
loc_8c06984e:
	#data 0x0088
	#align4
loc_8c069850:
	#data bank15.loc_8c1528c4
loc_8c069854:
	#data bank03.loc_8c034f54
loc_8c069858:
	#data bank15.loc_8c1529a4
loc_8c06985c:
	#data bank15.loc_8c152944

;----------------------------------------------
loc_8c069860:
	mov 0x22,r0
	mov.b @(r0,r14),r7
	mov 0x15,r5
	mov.l @(0x150,PC),r0
	mov 0x08,r6
	extu.b r7,r7
	mov.b @(r0,r7),r7
	extu.b r7,r7
	jsr @r11
	mov r14,r4
	mov.b @(0xB,r13),r0
	tst r0,r0
	bt loc_8c0698e4
	mov 0x22,r0
	mov.l @(0x13C,PC),r5
	mov.b @(r0,r14),r3
	mov 0x28,r0
	mov r15,r4
	mov.b r3,@(r0,r13)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mova @(0x134,PC),r0
	fmov @r0,fr2
	mov 0x22,r0
	extu.b r3,r3
	shll2 r3
	add r5,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@r4
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	add r3,r5
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x114,PC),r0
	fmov @r0,fr1
	mov 0x04,r0
	float fpul,fr3
	fmul fr1,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xF2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0698ca
	mov r4,r5
	fmov @r5,fr3
	fneg fr3
	fmov fr3,@r5

loc_8c0698ca:
	mov 0x34,r0
	fmov @r4,fr3
	fmov @(r0,r14),fr2
	mov 0x1C,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r13)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x20,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r13)

loc_8c0698e4:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0698f2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_8c06992e
	mov.l @(0xC8,PC),r2
	mov r14,r4
	mov r15,r5
	jsr @r2
	add 0x34,r4
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r14),r3
	mova @(0xB0,PC),r0
	fmov @r0,fr2
	mov 0x04,r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr4
	fmul fr2,fr4
	fmov @(r0,r15),fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	exts.w r3,r3
	cmp/pl r3
	bt loc_8c069938

loc_8c06992e:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c069938:
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c069942:
	mov.w @(0x6E,PC),r0
	mov.b r0,@(0x3,r5)
	mov 0x00,r0
	mov.b r0,@(0x4,r5)
	mov 0x06,r0
	rts
	mov.b r0,@(0x7,r6)

;==============================================
loc_8c069950:
	mov.w @(0x62,PC),r0
	mov 0x00,r7
	mov.b r7,@(r0,r4)
	mov.w @(0x5A,PC),r0
	mov.b r0,@(0x3,r5)
	mov r7,r0
	nop
	mov.b r0,@(0x4,r5)
	mov 0x06,r0
	rts
	mov.b r0,@(0x7,r6)

;==============================================
loc_8c069966:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r4,@r15
	mov.b @r5,r3
	add 0xFF,r3
	mov.b r3,@r5
	exts.b r3,r3
	cmp/pl r3
	bt.s loc_8c0699a8
	mov r6,r14
	mov.b @r14,r3
	mov 0x01,r7
	mov.l @(0x4C,PC),r0
	shll r3
	mov.b @(r0,r3),r2
	mov.l @(0x4C,PC),r3
	mov.b r2,@r5
	mov 0x02,r5
	mov.b @r14,r6
	mov.l @r15,r4
	shll r6
	add r0,r6
	mov.b @(0x1,r6),r0
	extu.b r0,r6
	jsr @r3
	mov.l @(0x18,r4),r4
	mov.b @r14,r1
	mov.l @(0x38,PC),r3
	add 0x01,r1
	jsr @r3
	mov 0x05,r0
	mov.b r0,@r14

loc_8c0699a8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0699b0:
	#data 0x0130
loc_8c0699b2:
	#data 0x013d
loc_8c0699b4:
	#data 0x00ff
loc_8c0699b6:
	#data 0x019e
	#align4
loc_8c0699b8:
	#data bank15.loc_8c152a04
loc_8c0699bc:
	#data bank15.loc_8c152904
loc_8c0699c0:
	#data 0x3fd55555
loc_8c0699c4:
	#data 0x40092492
loc_8c0699c8:
	#data bank03.loc_8c03340c
loc_8c0699cc:
	#data bank03.loc_8c0331d8
loc_8c0699d0:
	#data bank15.loc_8c152ab4
loc_8c0699d4:
	#data bank03.loc_8c03544c
loc_8c0699d8:
	#data bank12.loc_8c1292d4
 
;==============================================
;Unused
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x168,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c069a0e
	mov r0,r4
	mov.l @(0x158,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(0x130,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
loc_8c069a0e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c069a16:
	mov r4,r3
	mov.l @(0x138,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c069a28:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x01,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.w @(0xFE,PC),r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r13
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c069ad8
	mov 0x00,r11
	mov r11,r0
	nop
	mov 0x02,r9
	mov.b r0,@(0x2,r13)
	mov.b r0,@(0x1,r13)
	mov.w r0,@(0x8,r13)
	mov.b r0,@(0xE,r13)
	mov r9,r0
	nop
	mov.b r0,@(0x3,r13)
	mov 0x11,r0
	mov.b r10,@(r0,r13)
	mov 0x01,r6
	mov.l @(0xE0,PC),r8
	mov 0x10,r0
	mov r6,r5
	mov.b r10,@(r0,r13)
	jsr @r8
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c069a8e
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x10,r14),r2
	mov.l r2,@(0x10,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b r10,@(r0,r4)
	mov 0x21,r0
	mov.b r9,@(r0,r4)

loc_8c069a8e:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r8
	mov r14,r4
	tst r0,r0
	bt.s loc_8c069ad8
	mov r0,r12
	mov 0x20,r0
	mov.w @(0x9A,PC),r4
	mov.l @(0x10,r14),r2
	mov 0x01,r6
	add r12,r4
	mov r6,r5
	mov.l r2,@(0x10,r12)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r12)
	mov.b r10,@(r0,r12)
	mov 0x21,r0
	mov.b r10,@(r0,r12)
	mov.w @(0x86,PC),r0
	mov.b r0,@(0x2,r4)
	mov.b r0,@(0x1,r4)
	mov.l r14,@(0x4,r4)
	jsr @r8
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c069ad8
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x10,r14),r2
	mov.l r2,@(0x10,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.l r12,@(0x14,r4)
	mov.b r10,@(r0,r4)
	mov 0x21,r0
	mov.b r9,@(r0,r4)

loc_8c069ad8:
	mov.w @(0x64,PC),r1
	mov.w @(0x62,PC),r2
	mov.w @(0x62,PC),r0
	add r14,r1
	mov.l @(0x18,r14),r4
	mov.l @(0x74,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0x58,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b r10,@(r0,r14)
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
	mov.w @(0x3E,PC),r0
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
	mov.l @(0x40,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0xF8,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x18,PC),r0
	mov.w @(r0,r4),r1
	tst r1,r1
	bt.s loc_8c069b60
	mov 0x22,r0
	bra loc_8c069b62
	mov 0x04,r2

;##############################################
loc_8c069b3a:
	#data 0x0602
loc_8c069b3c:
	#data 0x0088
loc_8c069b3e:
	#data 0x00ff
loc_8c069b40:
	#data 0x00dc
loc_8c069b42:
	#data 0x00c0
loc_8c069b44:
	#data 0x012c
loc_8c069b46:
	#data 0x01a3
loc_8c069b48:
	#data 0x0130
	#align4
loc_8c069b4c:
	#data bank04.loc_8c044f12
loc_8c069b50:
	#data loc_8c069a16
loc_8c069b54:
	#data bank15.loc_8c152b20
loc_8c069b58:
	#data bank12.loc_8c129560
loc_8c069b5c:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c069b60:
	mov 0x0C,r2

loc_8c069b62:
	mov.b r2,@(r0,r14)
	mov 0x42,r4
	mov.w @(0x80,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r11,r0
	nop
	mov.w r0,@(0xA,r13)
	mov r14,r4
	mov.w r0,@(0xC,r13)
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c069b88:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x24,r0
	mov r14,r4
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0x60,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c069ba6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x3C,PC),r0
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.w @(0x36,PC),r3
	mov.w @(0x30,PC),r11
	sts.l pr,@-r15
	mov.l @(0x18,r14),r12
	add r14,r11
	mov.w @(r0,r12),r4
	extu.w r4,r4
	cmp/eq r3,r4
	bt.s loc_8c069bd6
	mov 0x00,r13
	mov.w @(0x24,PC),r1
	cmp/eq r1,r4
	bt loc_8c069bd6
	mov.w @(0x20,PC),r2
	cmp/eq r2,r4
	bf loc_8c069be0

loc_8c069bd6:
	mov.w @(0x1C,PC),r0
	mov.b @(r0,r12),r3
	cmp/pz r3
	mov.b r3,@r11
	bt loc_8c069c00

loc_8c069be0:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x10,PC),r0
	bra loc_8c069d7e
	mov.b r13,@(r0,r14)

;##############################################
loc_8c069bea:
	#data 0x019c
loc_8c069bec:
	#data 0x0088
loc_8c069bee:
	#data 0x0158
loc_8c069bf0:
	#data 0x1600
loc_8c069bf2:
	#data 0x1608
loc_8c069bf4:
	#data 0x1609
loc_8c069bf6:
	#data 0x02a5
loc_8c069bf8:
	#data 0x012c
	#align4
loc_8c069bfc:
	#data bank15.loc_8c152b30

;----------------------------------------------
loc_8c069c00:
	mov.l @(0x148,PC),r4
	mov 0x3C,r0
	mov 0x01,r9
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	mov r9,r1
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bt loc_8c069c1c
	bra loc_8c069d7e
	nop

loc_8c069c1c:
	mov.b @(0xE,r11),r0
	tst r0,r0
	bt loc_8c069c38
	mov.b @(0xE,r11),r0
	add 0xFF,r0
	mov.b r0,@(0xE,r11)
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c069c38
	mov r13,r0
	nop
	mov.w r0,@(0x8,r11)
	mov.w r0,@(0xA,r11)
	mov.w r0,@(0xC,r11)

loc_8c069c38:
	mov.l @(0x114,PC),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c069ca2
	mov r0,r10
	mov 0x20,r0
	mov.l @(0x10,r14),r3
	mov.w @(0xF0,PC),r4
	mov.l r3,@(0x10,r10)
	mov.l @(0x18,r14),r2
	add r10,r4
	mov.l r2,@(0x18,r10)
	mov.b r9,@(r0,r10)
	mov 0x21,r0
	mov.b r9,@(r0,r10)
	mov r13,r0
	nop
	mov.b r0,@(0x2,r4)
	mov.b r0,@(0x1,r4)
	mov.w r0,@(0xA,r4)
	mov.w r0,@(0xC,r4)
	mov.l r14,@(0x4,r4)
	mov.b @(0x3,r11),r0
	add 0xFF,r0
	mov.b r0,@(0x3,r11)
	exts.b r0,r0
	cmp/pz r0
	bt.s loc_8c069c80
	mov 0x01,r6
	mov 0x05,r0
	mov.b r0,@(0x3,r11)
	mov.w @(0xC2,PC),r0
	mov.b r0,@(0x2,r4)

loc_8c069c80:
	mov.l @(0xCC,PC),r3
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c069ca2
	mov r0,r4
	mov.l @(0x10,r14),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x02,r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.l r10,@(0x14,r4)
	mov.b r9,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)

loc_8c069ca2:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c069cdc
	mov 0x04,r0
	mov.w r0,@(0x1C,r14)
	mov 0x42,r3
	mov.w @(0x8C,PC),r0
	mov.b r3,@(r0,r14)
	add 0x05,r0
	mov.b @(r0,r12),r2
	mov.l @(0x94,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c069cdc:
	mov r12,r2
	mov.l @(0x78,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x70,PC),r0
	fmov @r0,fr4
	mov.w @(0x54,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c069cfc
	mova @(0x64,PC),r0
	fmov @r0,fr4

loc_8c069cfc:
	mov.w @(0x48,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c069d08
	mov 0x34,r0
	fneg fr4

loc_8c069d08:
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x54,PC),r0
	fmov @r0,fr4
	mov.w @(0x30,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c069d20
	mova @(0x48,PC),r0
	fmov @r0,fr4

loc_8c069d20:
	mov 0x38,r0
	mov.l @(0x48,PC),r2
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r12),r3
	mov.b r3,@(r0,r14)
	mov 0x13,r3
	mov.l @r2,r7
	mov.l @(0x1C,r7),r7
	and r9,r7
	mul.l r3,r7
	sts macl,r7
	bra loc_8c069d70
	nop

;##############################################
loc_8c069d40:
	#data 0x0088
loc_8c069d42:
	#data 0x00ff
loc_8c069d44:
	#data 0x019c
loc_8c069d46:
	#data 0x01f9
loc_8c069d48:
	#data 0x0130
	#align4
loc_8c069d4c:
	#data 0x8c2895f0
loc_8c069d50:
	#data bank04.loc_8c044f12
loc_8c069d54:
	#data 0x8c2896b0
loc_8c069d58:
	#data bank12.loc_8c1294c8
loc_8c069d5c:
	#data 0xc2baaaaa
loc_8c069d60:
	#data 0xc2820000
loc_8c069d64:
	#data 0x4340db6d
loc_8c069d68:
	#data 0x43654924
loc_8c069d6c:
	#data 0x8c26823c

;----------------------------------------------
loc_8c069d70:
	mov.l @(0x118,PC),r1
	mov 0x16,r5
	mov 0x02,r6
	jsr @r1
	mov r14,r4
	mov.w @(0x102,PC),r0
	mov.b r9,@(r0,r14)

loc_8c069d7e:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c069d8e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0xEA,PC),r13
	mov.l r12,@-r15
	mov.w @(0xE4,PC),r0
	add r14,r13
	mov.l r11,@-r15
	mov 0x00,r11
	sts.l pr,@-r15
	mov.b r11,@(r0,r14)
	mov.l @(0x4,r13),r4
	mov.w @(0xD8,PC),r12
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c069e28
	add r4,r12
	mov.l @(0x8,r14),r2
	mov 0x03,r3
	mov.b @(0x4,r2),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c069e28
	mov 0x20,r3
	mov.b @r12,r2
	add r14,r3
	mov.b r2,@r13
	mov.w @(0x8,r12),r0
	mov.b @r3,r3
	extu.w r0,r0
	extu.b r3,r3
	cmp/ge r3,r0
	bf loc_8c069ddc
	mov r11,r0
	nop
	mov.w r0,@(0xC,r13)
	bra loc_8c069de4
	mov.w r0,@(0xA,r13)

loc_8c069ddc:
	mov.w @(0xA,r12),r0
	mov.w r0,@(0xA,r13)
	mov.w @(0xC,r12),r0
	mov.w r0,@(0xC,r13)

loc_8c069de4:
	mov.l @(0x8,r14),r5
	bsr loc_8c069fa0
	mov r14,r4
	mov r13,r5
	bsr loc_8c069ffc
	mov r14,r4
	mov.l @(0x8,r14),r3
	mov 0x20,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c069e16
	mov.l @(0x94,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt.s loc_8c069e08
	mov 0x68,r4
	mov 0x69,r4

loc_8c069e08:
	mov.w @(0x78,PC),r0
	shll2 r4
	shll2 r4
	mov.l @(r0,r14),r3
	add 0x54,r0
	add r3,r4
	mov.l r4,@(r0,r14)

loc_8c069e16:
	mov 0x20,r0
	mov.l @(0x78,PC),r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c069e2e

loc_8c069e28:
	mov 0x02,r0
	bra loc_8c069efa
	mov.b r0,@(0x4,r14)

loc_8c069e2e:
	mov.w @(0x54,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c069e40
	mov.b r11,@(r0,r14)
	mov r11,r0
	nop
	bra loc_8c069efa
	mov.b r0,@(0x2,r13)

loc_8c069e40:
	mov.w @(0x44,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c069eae
	mov.b r11,@(r0,r14)
	mov r11,r0
	nop
	mov r13,r5
	mov.b r0,@(0x2,r13)
	bsr loc_8c06a074
	mov r14,r4
	bsr loc_8c06a2a0
	mov r14,r4
	mov 0x20,r3
	mov.w @(0x8,r12),r0
	add r14,r3
	mov.b @r3,r3
	extu.w r0,r0
	extu.b r3,r3
	cmp/gt r3,r0
	bt loc_8c069efa
	mov 0x20,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	exts.b r3,r3
	cmp/pl r3
	bf loc_8c069e9c
	mov.b @(r0,r14),r0
	mov.l @(0x1C,PC),r3
	extu.b r0,r0
	bra loc_8c069e9e
	add r3,r0

;##############################################
loc_8c069e80:
	#data 0x012c
loc_8c069e82:
	#data 0x0088
loc_8c069e84:
	#data 0x016c
loc_8c069e86:
	#data 0x019f
loc_8c069e88:
	#data 0x019e
	#align4
loc_8c069e8c:
	#data bank03.loc_8c034f54
loc_8c069e90:
	#data 0x8c26823c
loc_8c069e94:
	#data bank03.loc_8c03340c
loc_8c069e98:
	#data 0x0000ffff

;----------------------------------------------
loc_8c069e9c:
	mov 0x01,r0

loc_8c069e9e:
	mov.w r0,@(0x8,r12)
	mov.w @(0xA,r13),r0
	mov.w r0,@(0xA,r12)
	mov.w @(0xC,r13),r0
	mov.w r0,@(0xC,r12)
	mov 0x08,r0
	bra loc_8c069efa
	mov.b r0,@(0xE,r12)

loc_8c069eae:
	mov.w @(0x122,PC),r0
	mov 0x42,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x1,r13),r0
	tst r0,r0
	bf loc_8c069ec4
	mov.b @(0x2,r13),r0
	tst r0,r0
	bf loc_8c069ec4
	mov.w @(0x110,PC),r0
	mov.b r11,@(r0,r14)

loc_8c069ec4:
	mov.w @(0x10E,PC),r0
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.l @(0x110,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r11,@(r0,r14)
	add 0xF2,r0
	mov.b r11,@(r0,r14)
	add 0x26,r0
	mov.l r11,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(0xF4,PC),r2
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c069efa:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c069f06:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xCC,PC),r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.w @(0xC2,PC),r5
	mov.b @(r0,r4),r3
	mov.w @(0xBE,PC),r6
	add r14,r5
	mov.b r3,@(r0,r14)
	mov 0x02,r3
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8c069f30
	add r4,r6
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c069f98
	mov.b r0,@(0x4,r14)

loc_8c069f30:
	mov r4,r2
	mov.l @(0xB4,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c069f60
	mov.b @r6,r2
	mov r14,r4
	mov.b r2,@r5
	mov.b @(0x1,r6),r0
	mov.b r0,@(0x1,r5)
	mov.w @(0xA,r6),r0
	mov.w r0,@(0xA,r5)
	mov.w @(0xC,r6),r0
	mov.w r0,@(0xC,r5)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c069ffc
	mov.l @r15+,r14

loc_8c069f60:
	mov.l @(0x88,PC),r4
	mov 0x3C,r0
	mov 0x01,r13
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	mov r13,r1
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c069f94
	mov.l @(0x74,PC),r2
	mov 0x13,r3
	mov.l @(0x74,PC),r1
	mov 0x16,r5
	mov.l @r2,r7
	mov 0x02,r6
	mov.l @(0x1C,r7),r7
	and r13,r7
	neg r7,r7
	add 0x01,r7
	mul.l r3,r7
	sts macl,r7
	jsr @r1
	mov r14,r4

loc_8c069f94:
	mov.w @(0x42,PC),r0
	mov.b r13,@(r0,r14)

loc_8c069f98:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c069fa0:
	mov 0x20,r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c069fac
	bra loc_8c069fae
	mov 0xC8,r6

loc_8c069fac:
	mov 0xE0,r6

loc_8c069fae:
	mov.w @(0x2A,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c069fb8
	neg r6,r6

loc_8c069fb8:
	exts.w r6,r6
	lds r6,fpul
	mov 0x34,r0
	fmov @(r0,r5),fr2
	mova @(0x34,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	rts
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c069fd4:
	#data 0x019c
loc_8c069fd6:
	#data 0x01a1
loc_8c069fd8:
	#data 0x0088
loc_8c069fda:
	#data 0x012c
loc_8c069fdc:
	#data 0x0130
	#align4
loc_8c069fe0:
	#data 0x8c2896b0
loc_8c069fe4:
	#data bank04.loc_8c045748
loc_8c069fe8:
	#data bank12.loc_8c1294c8
loc_8c069fec:
	#data 0x8c2895f0
loc_8c069ff0:
	#data 0x8c26823c
loc_8c069ff4:
	#data bank03.loc_8c034f54
loc_8c069ff8:
	#data 0x3fd55555

;==============================================
loc_8c069ffc:
	mov.w @(0x62,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov.b r3,@(r0,r4)
	mov.b @r5,r3
	tst r3,r3
	bf.s loc_8c06a04c
	mov 0x01,r7
	mov.l @(0x54,PC),r2
	mov.w @(0xA,r5),r0
	mov.l @r2,r3
	extu.w r0,r6
	mov 0x21,r0
	mov.l @(0x1C,r3),r1
	mov.b @(r0,r4),r3
	and r7,r1
	extu.b r3,r3
	shlr r3
	xor r3,r1
	tst r1,r1
	bt loc_8c06a02e
	mov.w @(0xC,r5),r0
	extu.w r0,r0
	mov r0,r6
	add 0x14,r6

loc_8c06a02e:
	mov.b @(0x1,r5),r0
	tst r0,r0
	bt loc_8c06a040
	mov.l @(0x30,PC),r0
	mov.b @(r0,r6),r14
	cmp/pz r14
	bf loc_8c06a05e
	bra loc_8c06a04e
	nop

loc_8c06a040:
	mov.l @(0x28,PC),r0
	mov.b @(r0,r6),r14
	cmp/pz r14
	bf loc_8c06a05e
	bra loc_8c06a04e
	nop

loc_8c06a04c:
	mov.b @r5,r14

loc_8c06a04e:
	mov.w @(0x10,PC),r0
	mov 0x16,r5
	mov.l @(0x1C,PC),r3
	mov 0x02,r6
	mov.b r7,@(r0,r4)
	mov r14,r7
	jmp @r3
	mov.l @r15+,r14

loc_8c06a05e:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06a062:
	#data 0x012c
	#align4
loc_8c06a064:
	#data 0x8c26823c
loc_8c06a068:
	#data bank15.loc_8c152ae8
loc_8c06a06c:
	#data bank15.loc_8c152ac0
loc_8c06a070:
	#data bank03.loc_8c034f54

;==============================================
loc_8c06a074:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0xE0,PC),r0
	mov r4,r9
	mov.l r5,@(0x8,r15)
	mov.l @(r0,r9),r14
	mov.b @(0x3,r14),r0
	tst r0,r0
	bt loc_8c06a09a
	bra loc_8c06a206
	nop

loc_8c06a09a:
	mov.w @(0xD0,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bf loc_8c06a0a6
	bra loc_8c06a206
	nop

loc_8c06a0a6:
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov.w @(0xB8,PC),r0
	fmov fr3,@r15
	mov.l @(r0,r14),r3
	mov.w @(0x4,r3),r0
	tst r0,r0
	bt loc_8c06a0d0
	mov.w @(0xAC,PC),r0
	mov r15,r6
	add 0x04,r6
	mov r15,r7
	mov.l @(r0,r14),r5
	mov.w @(0x4,r5),r0
	mov r0,r5
	bsr loc_8c06a22e
	mov r14,r4

loc_8c06a0d0:
	mov.w @(0x9A,PC),r0
	mov.l @(r0,r14),r2
	mov.w @(0x6,r2),r0
	tst r0,r0
	bt loc_8c06a0ec
	mov.w @(0x90,PC),r0
	mov r15,r6
	add 0x04,r6
	mov r15,r7
	mov.l @(r0,r14),r5
	mov.w @(0x6,r5),r0
	mov r0,r5
	bsr loc_8c06a22e
	mov r14,r4

loc_8c06a0ec:
	mov.w @(0x7E,PC),r0
	mov.l @(r0,r14),r2
	mov.w @(0x8,r2),r0
	tst r0,r0
	bt loc_8c06a108
	mov.w @(0x74,PC),r0
	mov r15,r6
	add 0x04,r6
	mov r15,r7
	mov.l @(r0,r14),r5
	mov.w @(0x8,r5),r0
	mov r0,r5
	bsr loc_8c06a22e
	mov r14,r4

loc_8c06a108:
	mov.w @(0x62,PC),r0
	mov.w @(0x62,PC),r3
	mov.l @(r0,r14),r2
	mov.w @(0xA,r2),r0
	extu.w r0,r0
	tst r3,r0
	bt loc_8c06a12a
	mov.w @(0x54,PC),r0
	mov r15,r6
	add 0x04,r6
	mov r15,r7
	mov.l @(r0,r14),r5
	mov.w @(0xA,r5),r0
	mov r0,r5
	and r3,r5
	bsr loc_8c06a22e
	mov r14,r4

loc_8c06a12a:
	mova @(0x50,PC),r0
	fmov @r15,fr6
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r9),fr14
	mova @(0x48,PC),r0
	fmov @r0,fr15
	mov 0x04,r0
	fadd fr3,fr14
	fmov @(r0,r15),fr5
	mov 0x00,r12
	mov 0x0A,r10
	mov r12,r13
	mov 0x04,r14
	bsr loc_8c06a21c
	fmov fr14,fr4
	tst r0,r0
	bt loc_8c06a184
	mov r12,r11

loc_8c06a150:
	fsub fr15,fr14
	mov 0x04,r0
	fmov @(r0,r15),fr5
	add 0x01,r13
	fmov @r15,fr6
	bsr loc_8c06a21c
	fmov fr14,fr4
	tst r0,r0
	bt loc_8c06a1a2
	add 0x01,r11
	cmp/ge r14,r11
	bf loc_8c06a150
	bra loc_8c06a1a2
	mov r10,r13

;##############################################
loc_8c06a16c:
	#data 0x01b0
loc_8c06a16e:
	#data 0x01c0
loc_8c06a170:
	#data 0x1fff
	#align4
loc_8c06a174:
	#data 0xc3fa0000
loc_8c06a178:
	#data 0x43fa0000
loc_8c06a17c:
	#data 0x431a4924
loc_8c06a180:
	#data 0x42092492

;----------------------------------------------
loc_8c06a184:
	mov r12,r11
	mov r10,r13

loc_8c06a188:
	fsub fr15,fr14
	mov 0x04,r0
	fmov @(r0,r15),fr5
	add 0x01,r13
	fmov @r15,fr6
	bsr loc_8c06a21c
	fmov fr14,fr4
	tst r0,r0
	bf loc_8c06a1a2
	add 0x01,r11
	cmp/ge r14,r11
	bf loc_8c06a188
	mov r12,r13

loc_8c06a1a2:
	mov.l @(0x8,r15),r3
	mov r13,r0
	nop
	mov.w r0,@(0xA,r3)
	mova @(0xEC,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r9),fr14
	mov 0x04,r0
	fmov @(r0,r15),fr5
	mov r12,r13
	fadd fr3,fr14
	fmov @r15,fr6
	bsr loc_8c06a21c
	fmov fr14,fr4
	tst r0,r0
	bt loc_8c06a1e0

loc_8c06a1c4:
	fsub fr15,fr14
	mov 0x04,r0
	fmov @(r0,r15),fr5
	add 0x01,r13
	fmov @r15,fr6
	bsr loc_8c06a21c
	fmov fr14,fr4
	tst r0,r0
	bt loc_8c06a1fe
	add 0x01,r12
	cmp/ge r14,r12
	bf loc_8c06a1c4
	bra loc_8c06a1fe
	mov r10,r13

loc_8c06a1e0:
	mov r12,r11
	mov r10,r13

loc_8c06a1e4:
	fsub fr15,fr14
	mov 0x04,r0
	fmov @(r0,r15),fr5
	add 0x01,r13
	fmov @r15,fr6
	bsr loc_8c06a21c
	fmov fr14,fr4
	tst r0,r0
	bf loc_8c06a1fe
	add 0x01,r11
	cmp/ge r14,r11
	bf loc_8c06a1e4
	mov r12,r13

loc_8c06a1fe:
	mov.l @(0x8,r15),r3
	mov r13,r0
	nop
	mov.w r0,@(0xC,r3)

loc_8c06a206:
	add 0x0C,r15
	lds.l @r15+,pr
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
loc_8c06a21c:
	fcmp/gt fr4,fr5
	bf loc_8c06a228
	fcmp/gt fr6,fr4
	bf loc_8c06a228
	rts
	mov 0x01,r0

loc_8c06a228:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c06a22e:
	add 0xF8,r15
	mov.w @(0x60,PC),r0
	extu.w r5,r5
	shll2 r5
	mov r15,r2
	mov.l @(r0,r4),r3
	mova @(0x60,PC),r0
	shll r5
	fmov @r0,fr4
	add r3,r5
	mov r15,r1
	mov.w @(0x4,r5),r0
	add 0x04,r2
	fmov fr4,fr0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2
	fmov fr2,@r2
	fmov fr2,@r1
	mov.w @(0x6,r5),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r1
	mov.w @(0x6,r5),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fmov @r2,fr2
	fsub fr3,fr2
	fmov fr2,@r2
	fmov @r6,fr2
	fmov @r1,fr3
	fcmp/gt fr2,fr3
	bf loc_8c06a284
	fmov @r1,fr3
	fmov fr3,@r6

loc_8c06a284:
	fmov @r7,fr3
	fmov @r2,fr2
	fcmp/gt fr2,fr3
	bf loc_8c06a290
	fmov @r2,fr3
	fmov fr3,@r7

loc_8c06a290:
	rts
	add 0x08,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06a294:
	#data 0x0170
	#align4
loc_8c06a298:
	#data 0x41892492
loc_8c06a29c:
	#data 0x40092492

;==============================================
loc_8c06a2a0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x38,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x08,r5
	tst r0,r0
	bt.s loc_8c06a2c0
	mov r0,r4
	mov.l @r15,r2
	mov r4,r1
	mov.l @(0x2C,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0

loc_8c06a2c0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c06a2c8:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c06a2d6:
	mov.l @(0x10,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06a2dc:
	#data 0x012c
	#align4
loc_8c06a2e0:
	#data bank0b.loc_8c0bfcae
loc_8c06a2e4:
	#data bank12.loc_8c1294c8
loc_8c06a2e8:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c06a2ec:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE0,PC),r2
	mov 0x02,r13
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov.w @r2,r3
	cmp/gt r13,r3
	bt loc_8c06a30a
	bra loc_8c06a338
	mov 0x00,r0

loc_8c06a30a:
	mov.w @(0xC0,PC),r12
	mov 0x00,r14
	mov.l @(0xD0,PC),r11

loc_8c06a310:
	mov 0x01,r6
	mov r6,r5
	jsr @r11
	mov 0x00,r4
	mov r0,r4
	mov 0x26,r0
	mov.w r12,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.l @(0xBC,PC),r3
	mov.b r14,@(r0,r4)
	add 0x01,r14
	cmp/ge r13,r14
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	bf.s loc_8c06a310
	mov.l r2,@(0x18,r4)
	mov 0x01,r0

loc_8c06a338:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;===========================================
loc_8c06a346:
	mov r4,r3
	mov.l @(0x9C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06a358:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.w @(0x6A,PC),r1
	add 0x01,r0
	mov.l @(0x84,PC),r3
	mov.w @(0x64,PC),r2
	add r14,r1
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0x5E,PC),r0
	jsr @r3
	add r4,r2
	mov.w @(0x5A,PC),r0
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
	mov.w @(0x3E,PC),r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2

loc_8c06a3a8:
	mov.b r3,@(r0,r14)
	mov.l @(0x44,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0x40,r5
	mov.b r2,@(r0,r14)
	mov.w @(0x1C,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c06a3f4
	mov 0x24,r0
	bra loc_8c06a3f6
	mov 0x0C,r3

;##############################################
loc_8c06a3ce:
	#data 0x0700
loc_8c06a3d0:
	#data 0x00dc
loc_8c06a3d2:
	#data 0x00c0
loc_8c06a3d4:
	#data 0x012c
loc_8c06a3d6:
	#data 0x01a3
loc_8c06a3d8:
	#data 0x019c
	#align4
loc_8c06a3dc:
	#data 0x8c287ae8
loc_8c06a3e0:
	#data bank04.loc_8c044f12
loc_8c06a3e4:
	#data loc_8c06a346
loc_8c06a3e8:
	#data bank15.loc_8c152b3c
loc_8c06a3ec:
	#data bank12.loc_8c129560
loc_8c06a3f0:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c06a3f4:
	mov 0x0B,r3

loc_8c06a3f6:
	mov.b r3,@(r0,r14)
	mov r4,r2
	mov.l @(0x104,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c06a474
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r6
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r6,r6
	extu.b r3,r3
	shll r6
	add r3,r6
	mov.b @(r0,r4),r3
	cmp/pl r3
	bf.s loc_8c06a428
	add 0x3B,r6
	mov 0x61,r6

loc_8c06a428:
	mov.w @(0xCC,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c06a43a
	mov 0x20,r0
	mov.b @(r0,r14),r6
	extu.b r6,r6
	add 0x41,r6

loc_8c06a43a:
	mov.w @(0xBC,PC),r0
	mov.l @(0xC4,PC),r3
	mov.b r6,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r6
	mov.w r6,@(r0,r14)
	add 0xF2,r0
	mov.b r6,@(r0,r14)
	add 0x26,r0
	mov.l r6,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x96,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf.s loc_8c06a46e
	mov r14,r4
	mov.w @(0x8E,PC),r0
	mov.w r5,@(r0,r14)

loc_8c06a46e:
	mov.l @(0x98,PC),r3
	jsr @r3
	nop

loc_8c06a474:
	mov.w @(0x7E,PC),r0
	mov 0x17,r5
	mov r14,r4
	mov.b @(r0,r14),r2
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x21,r0
	extu.b r2,r2
	extu.b r3,r3
	shll r3
	shll2 r2
	add r3,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	add r3,r2
	mov r2,r6
	mov.l r2,@r15
	add 0x02,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x6C,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06a4a2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x68,PC),r4
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
	bf loc_8c06a4ea
	mov.l @(0x54,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06a4d8
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x28,PC),r0
	bra loc_8c06a4ea
	mov.b r3,@(r0,r14)

loc_8c06a4d8:
	mov 0x20,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c06a4ea
	lds.l @r15+,pr
	mov.l @(0x24,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c06a4ea:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06a4f0:
	mov.l @(0x24,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06a4f6:
	#data 0x01a3
loc_8c06a4f8:
	#data 0x01e9
loc_8c06a4fa:
	#data 0x01a1
loc_8c06a4fc:
	#data 0x01ac
loc_8c06a4fe:
	#data 0x012c
	#align4
loc_8c06a500:
	#data bank12.loc_8c1294c8
loc_8c06a504:
	#data 0x8c2896b0
loc_8c06a508:
	#data bank04.loc_8c045748
loc_8c06a50c:
	#data bank03.loc_8c034e8c
loc_8c06a510:
	#data 0x8c2895f0
loc_8c06a514:
	#data bank03.loc_8c034dee
loc_8c06a518:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c06a51c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x158,PC),r2
	mov 0x02,r13
	mov.l r4,@r15
	mov.w @r2,r3
	cmp/gt r13,r3
	bt loc_8c06a538
	bra loc_8c06a560
	mov 0x00,r0

loc_8c06a538:
	mov.w @(0x136,PC),r12
	mov 0x00,r14
	mov.l @(0x148,PC),r11

loc_8c06a53e:
	mov 0x01,r6
	mov r6,r5
	jsr @r11
	mov 0x00,r4
	mov r0,r4
	mov 0x26,r0
	mov.w r12,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x13C,PC),r3
	mov.b r14,@(r0,r4)
	add 0x01,r14
	cmp/ge r13,r14
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	bf.s loc_8c06a53e
	mov.l r2,@(0x18,r4)
	mov 0x01,r0

loc_8c06a560:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06a56e:
	mov r4,r3
	mov.l @(0x11C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c06a580:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xEE,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x18,r14),r4
	add 0x01,r0
	mov.w @(0xE0,PC),r5
	mov.b r0,@(0x4,r14)
	mov.w @(0xDE,PC),r2
	add r4,r5
	mov.w @(0xDC,PC),r0
	mov.l @(0xF8,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0xD6,PC),r0
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
	mov.w @(0xBA,PC),r0
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
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0x40,r6
	mov.b r2,@(r0,r14)
	mov.w @(0x98,PC),r0
	mov.b r6,@(r0,r14)
	add 0x01,r0
	mov.b r6,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c06a5f8
	mov 0x24,r0
	bra loc_8c06a5fa
	mov 0x0C,r3

loc_8c06a5f8:
	mov 0x0B,r3

loc_8c06a5fa:
	mov.b r3,@(r0,r14)
	mov r4,r2
	mov.l @(0x98,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x72,PC),r2
	mov 0x00,r3
	mov.l @(0x4,r5),r4
	mov 0x38,r0
	mov.l @(0x88,PC),r1
	add r4,r2
	fmov @(r0,r14),fr2
	mov.b @r2,r2
	extu.b r2,r2
	cmp/gt r2,r3
	addc r3,r2
	shar r2
	lds r2,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c06a662
	mov.w @(0x48,PC),r0
	mov 0x3A,r3
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x54,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x44,PC),r2
	jsr @r2
	mov r14,r4

loc_8c06a662:
	lds.l @r15+,pr
	mov 0x20,r0
	mov.l @(0x40,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06a672:
	#data 0x0701
loc_8c06a674:
	#data 0x02a4
loc_8c06a676:
	#data 0x00dc
loc_8c06a678:
	#data 0x00c0
loc_8c06a67a:
	#data 0x012c
loc_8c06a67c:
	#data 0x01a3
loc_8c06a67e:
	#data 0x019c
loc_8c06a680:
	#data 0x013c
loc_8c06a682:
	#data 0x01a1
	#align4
loc_8c06a684:
	#data 0x8c287ae8
loc_8c06a688:
	#data bank04.loc_8c044f12
loc_8c06a68c:
	#data loc_8c06a56e
loc_8c06a690:
	#data bank15.loc_8c152b48
loc_8c06a694:
	#data bank12.loc_8c129560
loc_8c06a698:
	#data bank12.loc_8c1294c8
loc_8c06a69c:
	#data 0x40092492
loc_8c06a6a0:
	#data 0x8c2896b0
loc_8c06a6a4:
	#data bank04.loc_8c045748
loc_8c06a6a8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c06a6ac:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x50,PC),r4
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
	bf loc_8c06a6f4
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06a6e2
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x20,PC),r0
	bra loc_8c06a6f4
	mov.b r3,@(r0,r14)

loc_8c06a6e2:
	mov 0x20,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c06a6f4
	lds.l @r15+,pr
	mov.l @(0x1C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c06a6f4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06a6fa:
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06a700:
	#data 0x012c
	#align4
lco_8c06a704:
	#data 0x8c2895f0
lco_8c06a708:
	#data bank03.loc_8c034dee
lco_8c06a70c:
	#data bank04.loc_8c045748
lco_8c06a710:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c06a714:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x158,PC),r2
	mov 0x02,r13
	mov.l r4,@r15
	mov.w @r2,r3
	cmp/gt r13,r3
	bt loc_8c06a732
	bra loc_8c06a760
	mov 0x00,r0

loc_8c06a732:
	mov 0x00,r12
	mov.w @(0x134,PC),r11
	mov.l @(0x148,PC),r10
	mov r12,r14

loc_8c06a73a:
	mov 0x01,r6
	mov r6,r5
	jsr @r10
	mov 0x00,r4
	mov r0,r4
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x20,r0
	mov.b r12,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x134,PC),r3
	mov.b r14,@(r0,r4)
	add 0x01,r14
	cmp/ge r13,r14
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	bf.s loc_8c06a73a
	mov.l r2,@(0x18,r4)
	mov 0x01,r0

loc_8c06a760:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06a770:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x10C,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06a784:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0x100,PC),r1
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06a798:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xCE,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xE8,PC),r3
	add 0x01,r0
	mov.w @(0xC2,PC),r2
	mov.b r0,@(0x4,r14)
	mov.w @(0xC0,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xBC,PC),r0
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
	mov.w @(0xA0,PC),r0
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
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x42,r4
	mov.b r2,@(r0,r14)
	mov 0x04,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x7A,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c06a80e
	mov 0x24,r0
	bra loc_8c06a810
	mov 0x0C,r3

loc_8c06a80e:
	mov 0x0B,r3

loc_8c06a810:
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r1
	mov 0x44,r3
	mov.w @(0x5C,PC),r0
	mov 0x00,r4
	tst r1,r1
	movt r2
	mov.w r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x42,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)

loc_8c06a83c:
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x58,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bsr loc_8c06a966
	mov r14,r4
	mov 0x20,r0
	mov.l @(0x40,PC),r3
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x17,r5
	add 0x0E,r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06a86c:
	#data 0x0702
loc_8c06a86e:
	#data 0x00dc
loc_8c06a870:
	#data 0x00c0
loc_8c06a872:
	#data 0x012c
loc_8c06a874:
	#data 0x01a3
loc_8c06a876:
	#data 0x019c
loc_8c06a878:
	#data 0x0130
loc_8c06a87a:
	#data 0x01a1
	#align4
loc_8c06a87c:
	#data 0x8c287ae8
loc_8c06a880:
	#data bank04.loc_8c044f12
loc_8c06a884:
	#data loc_8c06a770
loc_8c06a888:
	#data bank15.loc_8c152b54
loc_8c06a88c:
	#data bank15.loc_8c152b5c
loc_8c06a890:
	#data bank12.loc_8c129560
loc_8c06a894:
	#data bank12.loc_8c1294c8
loc_8c06a898:
	#data 0x42ab6db6
loc_8c06a89c:
	#data 0x8c2896b0
loc_8c06a8a0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c06a8a4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x13C,PC),r4
	mov 0x3C,r0
	mov.l r13,@-r15
	mov 0x01,r1
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf.s loc_8c06a942
	mov r5,r12
	mov.b @(0x5,r12),r0
	tst r0,r0
	bf.s loc_8c06a926
	mov 0x00,r13
	mov.w @(0x10A,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c06a926
	mov.w @(0x102,PC),r0
	mov.l @(0x110,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c06a91a
	mov.w @(0xF4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06a934
	mov.b @(r0,r14),r3
	add 0x56,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0xEC,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xC8,PC),r0
	bra loc_8c06a934
	mov.b r13,@(r0,r14)

loc_8c06a91a:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c06a934

loc_8c06a926:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xB4,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x01,r0
	bra loc_8c06a942
	mov.w r0,@(0x1E,r12)

loc_8c06a934:
	lds.l @r15+,pr
	mov.l @(0xBC,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c06a942:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06a94c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xA4,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x00,r5
	jsr @r3
	mov.l @(0x4,r15),r4
	mov.l @r15,r4
	add 0x08,r15
	mov.l @(0x98,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c06a966:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x88,PC),r9
	mov 0x01,r11
	mov.w @(0x66,PC),r10
	mov 0x04,r12
	mov r4,r13
	mov 0x00,r14
	mov.l r5,@r15

loc_8c06a984:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r9
	mov r13,r4
	tst r0,r0
	bt.s loc_8c06a9b6
	mov r0,r4
	mov 0x26,r0
	mov.w r10,@(r0,r4)
	mov 0x20,r0
	mov.b r11,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r4)
	mov r14,r0
	nop
	mov.l @(0x5C,PC),r3
	add 0x01,r14
	cmp/ge r12,r14
	mov.w r0,@(0x1C,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l r13,@(0x14,r4)
	bf loc_8c06a984

loc_8c06a9b6:
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
loc_8c06a9c8:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0x38,PC),r1
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06a9dc:
	#data 0x01d0
loc_8c06a9de:
	#data 0x0141
loc_8c06a9e0:
	#data 0x014b
loc_8c06a9e2:
	#data 0x012c
loc_8c06a9e4:
	#data 0x0702
	#align4
loc_8c06a9e8:
	#data 0x8c2895f0
loc_8c06a9ec:
	#data bank03.loc_8c034dee
loc_8c06a9f0:
	#data 0x8c2896b0
loc_8c06a9f4:
	#data bank04.loc_8c045748
loc_8c06a9f8:
	#data bank03.loc_8c035162
loc_8c06a9fc:
	#data bank04.loc_8c0450c0
loc_8c06aa00:
	#data bank04.loc_8c044f12
loc_8c06aa04:
	#data loc_8c06a770
loc_8c06aa08:
	#data bank15.loc_8c152b68

;==============================================
loc_8c06aa0c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x104,PC),r1
	sts.l pr,@-r15
	mov.w @(0x100,PC),r2
	add r14,r1
	mov.w @(0xFE,PC),r0
	mov.l @(0x10C,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xF8,PC),r0
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
	mov.w @(0xDC,PC),r0
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
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov 0x42,r4
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xAE,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r1
	mov.w @(0xAA,PC),r0

loc_8c06aa74:
	tst r1,r1
	mov r14,r1
	movt r2
	mov.l @(0xB0,PC),r3
	mov.w r2,@(r0,r14)
	add 0x6C,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x34,r1
	mov.l @(0x14,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0

loc_8c06aa90:
	mov.w @(0x1C,r14),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x98,PC),r3
	mov r0,r6
	add 0x10,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06aaa2:
	mov.l @(0x90,PC),r7
	mov 0x3C,r0
	mov 0x01,r1
	mov.w @(r0,r7),r3
	mov 0x3B,r0
	mov.b @(r0,r7),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf.s loc_8c06ab0e
	mov.l @(0x14,r4),r6
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf.s loc_8c06ab06
	mov 0x00,r7
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c06ab06
	mov.w @(0x1E,r5),r0
	tst r0,r0
	bf loc_8c06ab06
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r6),r3
	tst r3,r3
	bt loc_8c06ab0e
	mov.w @(0x48,PC),r0
	mov.b @(r0,r4),r3
	add 0x56,r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r7,@(r0,r4)
	add 0xF2,r0
	mov.b r7,@(r0,r4)
	add 0x26,r0
	mov.l @(0x48,PC),r3
	mov.l r7,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x38,PC),r2
	jmp @r2
	nop

loc_8c06ab06:
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xE,PC),r0
	mov.b r7,@(r0,r4)

loc_8c06ab0e:
	rts
	nop

;==============================================
loc_8c06ab12:
	mov.l @(0x2C,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06ab18:
	#data 0x00dc
loc_8c06ab1a:
	#data 0x00c0
loc_8c06ab1c:
	#data 0x012c
loc_8c06ab1e:
	#data 0x01a3
loc_8c06ab20:
	#data 0x0130
loc_8c06ab22:
	#data 0x01d0
loc_8c06ab24:
	#data 0x0141
loc_8c06ab26:
	#data 0x014b
	#align4
loc_8c06ab28:
	#data bank12.loc_8c129560
loc_8c06ab2c:
	#data bank12.loc_8c1294c8
loc_8c06ab30:
	#data bank03.loc_8c034e8c
loc_8c06ab34:
	#data 0x8c2895f0
loc_8c06ab38:
	#data 0x8c2896b0
loc_8c06ab3c:
	#data bank04.loc_8c045748
loc_8c06ab40:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c06ab44:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x140,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06ab80
	mov r0,r4
	mov.l @(0x130,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x110,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x01,r0
	mov.w @(0x102,PC),r3
	mov.l @r15,r5
	add r3,r5
	mov.b r0,@(0xA,r5)

loc_8c06ab80:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;===========================================
loc_8c06ab88:
	mov r4,r3
	mov.l @(0x10C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06ab9a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.w @(0xD2,PC),r3
	mov 0x01,r12
	mov.w @(0xD0,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r13
	mov.l @(0x18,r14),r4
	add r3,r4
	mov r2,r0
	nop
	add 0x7D,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0x02,r0
	mov 0x40,r1
	mov.b r1,@(r0,r14)
	add 0x01,r0
	mov.b r1,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov r12,r0
	nop
	mov.b r0,@(0xA,r4)
	mov.w @(0xA4,PC),r0
	mov.w @(0xA2,PC),r1
	mov.l @(0x18,r14),r2
	mov.l @(0xB8,PC),r3
	add r14,r1
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x96,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
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
	mov.w @(0x74,PC),r0
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
	mov.l @(0x74,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.w @(0x4E,PC),r1
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c06aca8
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c06ac56
	mov.w @(0x38,PC),r0
	mov 0x3D,r2
	bra loc_8c06ac5c
	mov.b r2,@(r0,r14)

loc_8c06ac56:
	mov.w @(0x30,PC),r0
	mov 0x3F,r3
	mov.b r3,@(r0,r14)

loc_8c06ac5c:
	mov.w @(0x2C,PC),r0
	mov.l @(0x44,PC),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	bra loc_8c06acb4
	mov.w r1,@(r0,r2)

;##############################################
loc_8c06ac7c:
	#data 0x0800
loc_8c06ac7e:
	#data 0x02a4
loc_8c06ac80:
	#data 0x00c0
loc_8c06ac82:
	#data 0x00dc
loc_8c06ac84:
	#data 0x012c
loc_8c06ac86:
	#data 0x01a3
loc_8c06ac88:
	#data 0x01f9
loc_8c06ac8a:
	#data 0x01a1
loc_8c06ac8c:
	#data 0x01ac
	#align4
loc_8c06ac90:
	#data bank04.loc_8c044f12
loc_8c06ac94:
	#data loc_8c06ab88
loc_8c06ac98:
	#data bank15.loc_8c152b74
loc_8c06ac9c:
	#data bank12.loc_8c129560
loc_8c06aca0:
	#data bank12.loc_8c1294c8
loc_8c06aca4:
	#data 0x8c2896b0

;----------------------------------------------
loc_8c06aca8:
	mov.w @(0x146,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	add 0xFE,r0
	add 0x3B,r3
	mov.b r3,@(r0,r14)

loc_8c06acb4:
	mov.w @(0x13C,PC),r0
	mov 0x42,r4
	mov.l @(0x148,PC),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x24,r0
	mov.b r13,@(r0,r14)
	mov.w @(0x11A,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x8F,r0
	mov.b r12,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov 0x3C,r0
	fldi1 fr3
	mov r15,r4
	fmov @(r0,r2),fr2
	fneg fr3
	fadd fr3,fr2
	fldi0 fr4
	mov.l @(0x100,PC),r5
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mova @(0xF4,PC),r0
	extu.b r2,r2
	shll2 r2
	shll r2
	add r5,r2
	fmov @r2,fr2
	fmov fr2,@r4
	fmov @r0,fr1
	mov 0x04,r0
	fmov fr1,@(r0,r4)
	mov.w @(0xCC,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c06ad40
	mov r4,r6
	fmov @r6,fr2
	fneg fr2
	fmov fr2,@r6
	add 0x04,r6
	fmov @r6,fr1
	fneg fr1
	fmov fr1,@r6

loc_8c06ad40:
	fmov @r4,fr3
	mov 0x5C,r0
	mov 0x04,r1
	fmov fr3,@(r0,r14)
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov.l @(0xBC,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r5
	fmov @(r0,r5),fr2
	mov 0x60,r0
	mov 0x15,r3
	fmov fr2,@(r0,r14)
	mov.w @(0x7E,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.w @(0x78,PC),r0
	add 0x02,r2
	mov.l @(0x8C,PC),r3
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.l @(0x84,PC),r2
	jsr @r2
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	and 0x07,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c06adb6
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06adb6:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x5C,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06adca:
	mov.w @(0x30,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c06adec
	mov.l @(0x18,r14),r4
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mov.w @(0x1E,PC),r0
	fmov @(r0,r4),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c06ae24

loc_8c06adec:
	mov.b @(0x4,r14),r0
	bra loc_8c06ae36
	add 0x01,r0

;##############################################
loc_8c06adf2:
	#data 0x01a3
loc_8c06adf4:
	#data 0x01ac
loc_8c06adf6:
	#data 0x019c
loc_8c06adf8:
	#data 0x0130
loc_8c06adfa:
	#data 0x0159
loc_8c06adfc:
	#data 0x0158
loc_8c06adfe:
	#data 0x019e
loc_8c06ae00:
	#data 0x041c
	#align4
loc_8c06ae04:
	#data 0x8c2896b0
loc_8c06ae08:
	#data bank13.loc_8c13ad18
loc_8c06ae0c:
	#data 0xc22d5555
loc_8c06ae10:
	#data 0x432b6db6
loc_8c06ae14:
	#data bank03.loc_8c034e8c
loc_8c06ae18:
	#data bank11.loc_8c11e730
loc_8c06ae1c:
	#data bank15.loc_8c152b84
loc_8c06ae20:
	#data 0x424db6db

;----------------------------------------------
loc_8c06ae24:
	mov.l @(0x144,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c06ae3e
	mov.w @(0x136,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x03,r0

loc_8c06ae36:
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c06ae3e:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c06ae66
	mov.l @(0x124,PC),r2
	jsr @r2
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x00,r5
	mov.w @(0x1C,r14),r0
	mov.l @(0x11C,PC),r3
	and 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c06ae66:
	mov 0x5C,r1
	mov.l @(0x10C,PC),r3
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
	mov.l @(0xD4,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;Unused Return
loc_8c06aeae:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06aeb4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c06aecc
	mov.b @(0x4,r14),r0
	bra loc_8c06aede
	add 0x01,r0

loc_8c06aecc:
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c06aee6
	mov.w @(0x8E,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x03,r0

loc_8c06aede:
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c06aee6:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c06af0e
	mov.l @(0x7C,PC),r2
	jsr @r2
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x00,r5
	mov.w @(0x1C,r14),r0
	mov.l @(0x74,PC),r3
	and 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8c06af0e:
	mov 0x5C,r1
	mov.l @(0x68,PC),r3
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
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06af56:
	mov r4,r3
	mov.l @(0x24,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06af68:
	#data 0x012c
loc_8c06af6a:
	#data 0x019e
	#align4
loc_8c06af6c:
	#data bank03.loc_8c03340c
loc_8c06af70:
	#data bank11.loc_8c11e730
loc_8c06af74:
	#data bank0c.loc_8c0c0a5c
loc_8c06af78:
	#data bank03.loc_8c034dee
loc_8c06af7c:
	#data bank04.loc_8c045748
loc_8c06af80:
	#data bank15.loc_8c152b9c

;==============================================
loc_8c06af84:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	mov 0x15,r2
	mov.w @(0x62,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x00,r0
	mov.l @(0x18,r14),r4
	add r3,r4
	mov.b r0,@(0xA,r4)
	mov r14,r4
	mov.w @(0x54,PC),r0
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r1
	mov.l @(0x54,PC),r0
	extu.b r1,r1
	mov.b @(r0,r1),r2
	mov.w @(0x48,PC),r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	add 0x01,r0
	mov.l @(0x4C,PC),r2
	mov.b @(r0,r14),r5
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c06afba:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06afd6
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x22,PC),r0
	mov.b r3,@(r0,r14)
loc_8c06afd6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06afdc:
	mov.w @(0x12,PC),r3
	mov 0x00,r6
	mov.l @(0x18,r4),r5
	add r3,r5
	mov r6,r0
	nop
	mov.b r0,@(0xA,r5)
	mov.l @(0x1C,PC),r2
	mov.w @(0x8,PC),r0
	jmp @r2
	mov.b r6,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06aff2:
	#data 0x02a4
loc_8c06aff4:
	#data 0x0159
loc_8c06aff6:
	#data 0x0158
loc_8c06aff8:
	#data 0x012c
	#align4
loc_8c06affc:
	#data bank13.loc_8c13ad48
loc_8c06b000:
	#data bank03.loc_8c034e8c
loc_8c06b004:
	#data bank03.loc_8c034dee
loc_8c06b008:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c06b00c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x160,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06b046
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x150,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.w @(0x126,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	mov.w @(0x122,PC),r3
	mov.w r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c06b046:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c06b04e:
	mov r4,r3
	mov.l @(0x12C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06b060:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.w @(0xFA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x110,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xEC,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xE4,PC),r0
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
	mov.w @(0xC0,PC),r0
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
	mov.l @(0xC4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x42,r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x40,r3
	mov.w @(0x94,PC),r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r4,r2
	bt loc_8c06b0ee
	mov.w @(0x84,PC),r0
	mov 0x58,r1
	bra loc_8c06b0f4
	mov.b r1,@(r0,r14)

loc_8c06b0ee:
	mov.w @(0x7C,PC),r0
	mov 0x30,r3
	mov.b r3,@(r0,r14)

loc_8c06b0f4:
	mov.w @(0x78,PC),r0
	mov.l @(0x94,PC),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	shll2 r0
	ftrc fr3,fpul
	sts fpul,r2
	mov.l r2,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x20,r3
	mov.w @(0x46,PC),r0
	ftrc fr3,fpul
	sts fpul,r2
	mov.l r2,@(r0,r14)
	add 0x6A,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.w @(0x3A,PC),r1
	mov.b r3,@(r0,r14)
	add 0xFE,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add r14,r1
	mov.w @(0x1E,r14),r0
	mov.l r0,@r1
	bsr loc_8c06b312
	mov r14,r4
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x16,r3
	mov.w @(0x1E,PC),r0
	mov r14,r4
	mov.l r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c06b2ac
	mov.l @r15+,r14

;##############################################
loc_8c06b162:
	#data 0x0130
loc_8c06b164:
	#data 0x0801
loc_8c06b166:
	#data 0x00dc
loc_8c06b168:
	#data 0x012c
loc_8c06b16a:
	#data 0x01a3
loc_8c06b16c:
	#data 0x019c
loc_8c06b16e:
	#data 0x01a1
loc_8c06b170:
	#data 0x01ac
loc_8c06b172:
	#data 0x00d4
loc_8c06b174:
	#data 0x00d8
loc_8c06b176:
	#data 0x00cc
	#align4
loc_8c06b178:
	#data bank04.loc_8c044f12
loc_8c06b17c:
	#data loc_8c06b04e
loc_8c06b180:
	#data bank15.loc_8c152ba4
loc_8c06b184:
	#data bank12.loc_8c129560
loc_8c06b188:
	#data bank12.loc_8c1294c8
loc_8c06b18c:
	#data 0x8c2896b0

;##############################################
loc_8c06b190:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x24,r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bt loc_8c06b23a
	mov 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xDE,PC),r0
	mov.w @(r0,r14),r0
	tst 0x01,r0
	bt loc_8c06b1be
	mov 0x22,r0
	mov.b @(r0,r14),r2
	bra loc_8c06b1c4
	add 0x02,r2

loc_8c06b1be:
	mov 0x22,r0
	mov.b @(r0,r14),r2
	add 0xFE,r2

loc_8c06b1c4:
	mov.b r2,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0xBE,PC),r0
	mov.l @(0x18,r14),r1
	mov.w @(r0,r1),r2
	mov.w @(0xBA,PC),r1
	extu.w r2,r2
	cmp/eq r1,r2
	bt.s loc_8c06b1ec
	mov r14,r4
	mov.w @(0xB2,PC),r2
	mov.l @(0x18,r14),r0
	mov.b @(r0,r2),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c06b1f8

loc_8c06b1ec:
	mov.w @(0xA8,PC),r0
	mov 0x11,r3
	mov.l r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c06b1f8:
	bsr loc_8c06b2ac
	nop
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x03,r0
	bf loc_8c06b23a
	mov.w @(0x8E,PC),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x11,r0
	bt loc_8c06b216
	mov.w @(0x86,PC),r0
	mov.l @(r0,r14),r2
	add 0xFF,r2
	mov.l r2,@(r0,r14)

loc_8c06b216:
	mov.w @(0x1E,r14),r0
	mov 0x08,r4
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/gt r4,r0
	bf loc_8c06b22a
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c06b22a:
	mov.w @(0x6C,PC),r1
	mov.w @(0x1E,r14),r0
	add r14,r1
	mov.l r0,@r1
	bsr loc_8c06b312
	mov r14,r4
	bra loc_8c06b23e
	nop

loc_8c06b23a:
	bsr loc_8c06b2d8
	mov r14,r4

loc_8c06b23e:
	lds.l @r15+,pr
	mov.l @(0x5C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c06b248:
	mov.w @(0x50,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c06b260
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c06b270

loc_8c06b260:
	mov 0x03,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x34,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c06b270:
	bsr loc_8c06b2d8
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x28,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;unused return
loc_8c06b27e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06b284:
	mov.w @(0x16,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x1C,PC),r3
	jmp @r3
	nop

;##############################################
loc_8c06b290:
	#data 0x0130
loc_8c06b292:
	#data 0x0158
loc_8c06b294:
	#data 0x1510
loc_8c06b296:
	#data 0x01d0
loc_8c06b298:
	#data 0x00cc
loc_8c06b29a:
	#data 0x00d8
loc_8c06b29c:
	#data 0x019e
loc_8c06b29e:
	#data 0x012c
	#align4
loc_8c06b2a0:
	#data bank04.loc_8c045748
loc_8c06b2a4:
	#data bank03.loc_8c0332e0
loc_8c06b2a8:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c06b2ac:
	mov.l r14,@-r15
	mov 0x22,r0
	mov r4,r14
	mov.b @(r0,r14),r7
	mov.w @(0x98,PC),r0
	mov.w @(r0,r14),r0
	tst 0x01,r0
	bt.s loc_8c06b2c2
	extu.b r7,r7
	mov 0x10,r2
	xor r2,r7

loc_8c06b2c2:
	mov 0x00,r3
	mov.w @(0x8A,PC),r0
	cmp/gt r7,r3
	mov r14,r4
	addc r3,r7
	mov.l @(0x88,PC),r3
	mov.l @(r0,r14),r6
	shar r7
	mov 0x15,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06b2d8:
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
	bra loc_8c06b34c
	fmov fr2,@(r0,r4)

;==============================================
loc_8c06b312:
	mov.w @(0x3E,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r5
	mov.l @(0x3C,PC),r0
	mov.l @(0x40,PC),r3
	shll r5
	jsr @r3
	mov.w @(r0,r5),r5
	mov 0x5C,r0
	mov r14,r4
	fmov @(r0,r14),fr3
	add 0x74,r0
	mov.l @(r0,r14),r2
	ftrc fr3,fpul
	sts fpul,r3
	add r3,r2
	mov.l r2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	add 0x74,r0
	mov.l @(r0,r14),r2
	ftrc fr3,fpul
	sts fpul,r3
	add r3,r2
	mov.l r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c06b34c:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06b350:
	#data 0x0130
loc_8c06b352:
	#data 0x00cc
loc_8c06b354:
	#data 0x00d8
	#align4
loc_8c06b358:
	#data bank03.loc_8c034f54
loc_8c06b35c:
	#data bank13.loc_8c13ad50
loc_8c06b360:
	#data bank03.loc_8c033674

;==============================================
;Unused
loc_8c06b364:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x128,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06b39a
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x118,PC),r3
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	mov.w @(0x102,PC),r3
	mov.b r2,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xF6,PC),r0
	mov.w @(r0,r14),r0
	mov.w r0,@(0x1C,r4)

loc_8c06b39a:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06b3a6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c06b752
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
loc_8c06b3c0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.w @(0xBE,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xB6,PC),r2
	add 0x01,r0
	mov.l @(0xD0,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xB0,PC),r0
	mov.l @(0xC4,PC),r11
	mov.l @(0xC0,PC),r10
	mov.l @(0x18,r14),r13
	jsr @r3
	add r13,r2
	mov.w @(0xA6,PC),r0
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
	mov.w @(0x82,PC),r0
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
	fldi0 fr4
	mov 0xFF,r7
	mov.b @(r0,r1),r3
	mov 0x05,r6
	mov.b r3,@(r0,r14)
	mov.w @(0x50,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c06b480
	mov 0x44,r4
	cmp/eq 0x02,r0
	bt loc_8c06b4b4
	cmp/eq 0x04,r0
	bt loc_8c06b4da
	cmp/eq 0x06,r0
	bt loc_8c06b4ea
	bra loc_8c06b568
	nop

loc_8c06b480:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	bra loc_8c06b56c
	mov.b r7,@(r0,r14)

;##############################################
loc_8c06b48c:
	#data 0x0900
loc_8c06b48e:
	#data 0x0158
loc_8c06b490:
	#data 0x00dc
loc_8c06b492:
	#data 0x00c0
loc_8c06b494:
	#data 0x012c
loc_8c06b496:
	#data 0x01a3
	#align4
loc_8c06b498:
	#data bank04.loc_8c044f12
loc_8c06b49c:
	#data loc_8c06b3a6
loc_8c06b4a0:
	#data bank15.loc_8c152bc4
loc_8c06b4a4:
	#data 0x8c2896b0
loc_8c06b4a8:
	#data bank15.loc_8c152bbb
loc_8c06b4ac:
	#data bank12.loc_8c129560
loc_8c06b4b0:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c06b4b4:
	mov.w @(0x12C,PC),r5
	mov.w @(0x12C,PC),r0
	add r13,r5
	mov.b r6,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c06b4ce
	mov.w @(0x11C,PC),r0
	mov.b r12,@(r0,r14)
	add 0x01,r0
	mov.b r12,@(r0,r14)

loc_8c06b4ce:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	bra loc_8c06b574
	mov.b r7,@(r0,r14)

loc_8c06b4da:
	mov 0x24,r0
	mov 0x07,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x102,PC),r0
	mov.b r12,@(r0,r14)
	add 0x01,r0
	bra loc_8c06b5c4
	mov.b r12,@(r0,r14)

loc_8c06b4ea:
	mov 0x24,r0
	mov 0x0B,r2
	mov.b r2,@(r0,r14)
	mov.w @(0xF2,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov.b @(r0,r11),r3
	mov.w @(0xE4,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r10,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov.b @(r0,r11),r3
	mov.w @(0xBC,PC),r0
	mov.b r3,@(r0,r13)
	add 0x0B,r0
	mov.w r12,@(r0,r13)
	add 0xF2,r0
	mov.b r12,@(r0,r13)
	add 0x26,r0
	mov.l r12,@(r0,r13)
	mov.b @(0x2,r13),r0
	mov.l @r10,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.w @(0x9E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c06b556
	mova @(0x98,PC),r0
	bra loc_8c06b55a
	fmov @r0,fr3

loc_8c06b556:
	mova @(0x98,PC),r0
	fmov @r0,fr3

loc_8c06b55a:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	bra loc_8c06b5c4
	fmov fr3,@(r0,r14)

loc_8c06b568:
	mov 0x24,r0
	mov.b r12,@(r0,r14)

loc_8c06b56c:
	mov.w @(0x76,PC),r0
	mov.b r6,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)

loc_8c06b574:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov.b @(r0,r11),r3
	mov.w @(0x68,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r10,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov.b @(r0,r11),r3
	mov.w @(0x40,PC),r0
	mov.b r3,@(r0,r13)
	add 0x0B,r0
	mov.w r12,@(r0,r13)
	add 0xF2,r0
	mov.b r12,@(r0,r13)
	add 0x26,r0
	mov.l r12,@(r0,r13)
	mov.b @(0x2,r13),r0
	mov.l @r10,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)

loc_8c06b5c4:
	lds.l @r15+,pr
	mov 0x20,r0
	mov.l @(0x30,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov.l @r15+,r10
	mov r14,r4
	mov.l @(0x24,PC),r0
	extu.b r6,r6
	mov.l @r15+,r11
	mov.b @(r0,r6),r6
	mov.l @r15+,r12
	extu.b r6,r6
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06b5e4:
	#data 0x02a4
loc_8c06b5e6:
	#data 0x019c
loc_8c06b5e8:
	#data 0x01a1
loc_8c06b5ea:
	#data 0x0130
	#align4
loc_8c06b5ec:
	#data 0x40a00000
loc_8c06b5f0:
	#data 0xc0a00000
loc_8c06b5f4:
	#data 0xc1700000
loc_8c06b5f8:
	#data bank15.loc_8c152bb4
loc_8c06b5fc:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c06b600:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	mov.l @(0x100,PC),r12
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf.s loc_8c06b6ca
	mov.l @(0x18,r14),r13
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c06b64a
	jsr @r12
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xCC,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c06b63e
	bra loc_8c06b73c
	nop

loc_8c06b63e:
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	bra loc_8c06b73c
	mov.b r0,@(0x5,r14)

loc_8c06b64a:
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c06b6bc
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
	mov.w @(0x78,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c06b698
	mov.w @(0x72,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06b6a0

loc_8c06b698:
	mov.b @(0x6,r14),r0
	add 0x01,r0
	bra loc_8c06b73c
	mov.b r0,@(0x6,r14)

loc_8c06b6a0:
	mov.w @(0x64,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c06b72e
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x52,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	bra loc_8c06b73c
	fmov fr3,@(r0,r14)

loc_8c06b6bc:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c06b6f0
	bra loc_8c06b73c
	nop

loc_8c06b6ca:
	mov.w @(0x3C,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c06b714
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c06b6f0
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c06b714
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06b714

loc_8c06b6f0:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c06b746
	mov.l @r15+,r14

;##############################################
loc_8c06b702:
	#data 0x0141
loc_8c06b704:
	#data 0x019e
loc_8c06b706:
	#data 0x019f
loc_8c06b708:
	#data 0x041c
loc_8c06b70a:
	#data 0x01a0
loc_8c06b70c:
	#data 0x0200
	#align4
loc_8c06b710:
	#data bank03.loc_8c034dee

;----------------------------------------------
loc_8c06b714:
	mov.l @(0x18,r14),r2
	mov 0x34,r0
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c06b73c

loc_8c06b72e:
	lds.l @r15+,pr
	mov.l @(0x5C,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c06b73c:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06b746:
	mov.w @(0x40,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)

loc_8c06b74c:
	mov.l @(0x44,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c06b752:
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c06b762
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c06b786

loc_8c06b762:
	mov.w @(0x26,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	mov.w @(0x1C,r4),r0
	extu.w r2,r2
	cmp/eq r0,r2
	bt loc_8c06b786
	mov.b @(0x4,r4),r0
	mov 0x02,r5
	extu.b r0,r0
	cmp/ge r5,r0
	bt loc_8c06b780
	mov r5,r0
	nop
	mov.b r0,@(0x4,r4)

loc_8c06b780:
	mov.w @(0x6,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)

loc_8c06b786:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06b78a:
	#data 0x012c
loc_8c06b78c:
	#data 0x0158
	#align4
loc_8c06b790:
	#data bank04.loc_8c045748
loc_8c06b794:
	#data bank04.loc_8c0450c0

;##############################################
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0xE4,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06b7ca
	mov r0,r4
	mov 0x00,r2
	mov.l @(0xD4,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov.w @(0xC0,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xB6,PC),r0
	mov.w @(r0,r14),r0
	mov.w r0,@(0x1C,r4)

loc_8c06b7ca:
	mov.l @(0xB8,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06b7f6
	mov r0,r4
	mov 0x00,r2
	mov.l @(0xA8,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov.w @(0x94,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x8A,PC),r0
	mov.w @(r0,r14),r0
	mov.w r0,@(0x1C,r4)

loc_8c06b7f6:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06b800:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06b830
	mov r0,r4
	mov.l @(0x70,PC),r3
	mov 0x20,r0
	mov 0x01,r2
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.w @(0x54,PC),r3
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c06b830:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06b836:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c06bba2
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x48,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06b850:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x00,r11
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c06b890
	mov 0x03,r12
	mov.w @(0xC,PC),r0
	mov.b r11,@(r0,r14)
	mov r12,r0
	nop
	bra loc_8c06ba28
	mov.w r0,@(0x1E,r14)

;##############################################
loc_8c06b87c:
	#data 0x0901
loc_8c06b87e:
	#data 0x0158
loc_8c06b880:
	#data 0x012c
	#align4
loc_8c06b884:
	#data bank04.loc_8c044f12
loc_8c06b888:
	#data loc_8c06b836
loc_8c06b88c:
	#data bank15.loc_8c152c2c

;----------------------------------------------
loc_8c06b890:
	mov.w @(0x94,PC),r0
	mov.w @(0x92,PC),r1
	mov.l @(0x18,r14),r2
	mov.l @(0x98,PC),r3
	add r14,r1
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x86,PC),r0
	mov 0x01,r10
	mov r14,r1
	add 0x50,r1
	mov.b r10,@(r0,r14)
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
	mov.w @(0x62,PC),r0
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
	mov.l @(0x50,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0

loc_8c06b8e8:
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.l @(0x48,PC),r13
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x0B,r3
	mov.w @(0x32,PC),r0
	mov.b r10,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x23,r0
	jsr @r13
	mov.w r0,@(0x1E,r14)
	tst r0,r0
	movt r0
	tst r12,r0
	bt loc_8c06b93c
	mov.w @(0x10,PC),r0
	mov.b r11,@(r0,r14)
	add 0x01,r0
	mov.b r11,@(r0,r14)
	mov 0x21,r0
	bra loc_8c06b976
	mov.b r10,@(r0,r14)

;##############################################
loc_8c06b928:
	#data 0x00dc
loc_8c06b92a:
	#data 0x012c
loc_8c06b92c:
	#data 0x01a3
loc_8c06b92e:
	#data 0x019c
	#align4
loc_8c06b930:
	#data bank12.loc_8c129560
loc_8c06b934:
	#data bank12.loc_8c1294c8
loc_8c06b938:
	#data bank03.loc_8c03319e

;----------------------------------------------
loc_8c06b93c:
	jsr @r13
	mov 0x39,r10
	tst r12,r0
	bf loc_8c06b946
	mov 0x38,r10

loc_8c06b946:
	mov.w @(0x130,PC),r0
	mov 0x44,r4
	mov.l @(0x138,PC),r3
	mov.b r10,@(r0,r14)
	add 0x0B,r0
	mov.w r11,@(r0,r14)
	add 0xF2,r0
	mov.b r11,@(r0,r14)
	add 0x26,r0
	mov.l r11,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x21,r0
	mov.b r11,@(r0,r14)
	mov.w @(0x10A,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)

loc_8c06b976:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	mov 0x03,r6
	mov.l @(0xFC,PC),r5
	and r0,r6
	extu.b r6,r6
	shll r6
	shll r6
	mov r6,r4
	mov r6,r0
	nop
	mov.w @(r0,r5),r3
	mov.w @(0xDE,PC),r0
	lds r3,fpul
	mov.l @(0xE8,PC),r3
	mov.l @(0xEC,PC),r2
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r14),r3
	fsts fpul,fr2
	tst r3,r3
	fmul fr2,fr3
	fmov fr3,fr4
	bf.s loc_8c06b9ba
	fmov @r2,fr5
	fneg fr5
	fneg fr4

loc_8c06b9ba:
	mov 0x34,r0
	mov r14,r2
	fmov @(r0,r14),fr3
	add r5,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(0xBC,PC),r0
	fmov @r0,fr0
	mov 0x5C,r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	jsr @r13
	fmov fr5,@(r0,r14)
	mov.l @(0xB0,PC),r1
	and 0x07,r0
	shll2 r0
	fldi0 fr4
	fmov @(r0,r1),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	jsr @r13
	fmov fr4,@(r0,r14)
	mov 0x21,r1
	add r14,r1
	and 0x07,r0
	jsr @r13
	mov.b r0,@r1
	mov.l @(0x90,PC),r3
	mov r0,r1
	jsr @r3
	mov r12,r0
	lds.l @r15+,pr
	mov.l @(0x8C,PC),r2
	mov r14,r4
	mov 0x16,r5
	mov r0,r7
	mov.l @r15+,r10
	mov 0x04,r6
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c06ba28:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06ba36:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c06baa4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c06ba58
	mov 0x03,r0
	mov.w r0,@(0x1E,r14)
	bsr loc_8c06b800
	mov r14,r4

loc_8c06ba58:
	mov.l @(0x18,r14),r2
	mov 0x04,r3
	mov.b @(0x6,r2),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c06ba72
	mov.w @(0x18,PC),r0
	mov.l @(0x18,r14),r1
	mov.w @(r0,r1),r3
	mov.w @(0x1C,r14),r0
	extu.w r3,r3
	cmp/eq r0,r3
	bt loc_8c06bb30

loc_8c06ba72:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c06bad0
	mov.b r0,@(0x4,r14)

;##############################################
loc_8c06ba7a:
	#data 0x01a1
loc_8c06ba7c:
	#data 0x019c
loc_8c06ba7e:
	#data 0x0130
loc_8c06ba80:
	#data 0x0158
	#align4
loc_8c06ba84:
	#data 0x8c2896b0
loc_8c06ba88:
	#data bank15.loc_8c152bdc
loc_8c06ba8c:
	#data 0x3fd55555
loc_8c06ba90:
	#data bank15.loc_8c152bec
loc_8c06ba94:
	#data 0x40092492
loc_8c06ba98:
	#data bank15.loc_8c152c0c
loc_8c06ba9c:
	#data bank12.loc_8c1292d4
loc_8c06baa0:
	#data bank03.loc_8c034f54

;----------------------------------------------
loc_8c06baa4:
	mov.w @(0xFE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c06bac0
	mov.w @(0xF8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c06bac0
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c06bad8

loc_8c06bac0:
	mov.b @(0x4,r14),r0
	mov 0x16,r5
	mov.l @(0xE4,PC),r3
	mov 0x05,r6
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	jsr @r3
	mov r14,r4

loc_8c06bad0:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06bb36
	mov.l @r15+,r14

loc_8c06bad8:
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
	mov 0x21,r0
	mov.b @(r0,r14),r0
	add 0x01,r0
	and 0x07,r0
	mov 0x21,r1
	add r14,r1
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c06bb30
	lds.l @r15+,pr
	mov.l @(0x84,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c06bb30:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06bb36:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06bb50
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06bb5e

loc_8c06bb50:
	mov.w @(0x56,PC),r0
	mov 0x00,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	bra loc_8c06bb9c
	mov.l @r15+,r14

loc_8c06bb5e:
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
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06bb9c:
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c06bba2:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06bba6:
	#data 0x019e
loc_8c06bba8:
	#data 0x019f
loc_8c06bbaa:
	#data 0x012c
	#align4
loc_8c06bbac:
	#data bank03.loc_8c034e8c
loc_8c06bbb0:
	#data bank04.loc_8c045748
loc_8c06bbb4:
	#data bank03.loc_8c034dee
loc_8c06bbb8:
	#data bank04.loc_8c0450c0

;==============================================
;???
loc_8c06bbbc:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x124,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06bbfa
	mov r0,r4
	mov 0x00,r2

loc_8c06bbda:
	mov.l @(0x114,PC),r3
	mov 0x20,r0
	mov 0x21,r1
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	add r4,r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.w @(0xF4,PC),r3
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c06bbfa:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c06bc02:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x01,r11
	mov.l r10,@-r15
	mov 0x10,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0xCE,PC),r12
	mov.l @(0xD0,PC),r9

loc_8c06bc1c:
	mov 0x01,r6
	mov r6,r5
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c06bc44
	mov r0,r4
	mov 0x20,r0
	mov.l @(0xC0,PC),r2
	mov.l r2,@(0x10,r4)
	mov.b r11,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	mov.l @(0x18,r13),r3
	mov.l r3,@(0x18,r4)
	mov.l r13,@(0x14,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r12,@(r0,r4)

loc_8c06bc44:
	add 0x01,r14
	exts.b r14,r3
	cmp/gt r10,r3
	bf loc_8c06bc1c
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06bc5c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x02,r11
	mov.l r10,@-r15
	mov 0x07,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0x74,PC),r12
	mov.l @(0x74,PC),r9

loc_8c06bc76:
	mov 0x01,r6
	mov r6,r5
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c06bca2
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x68,PC),r2
	mov.l r2,@(0x10,r4)
	mov.b r11,@(r0,r4)
	mov 0x21,r0
	mov.b r13,@(r0,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r12,@(r0,r4)
	mov.b @(0x7,r14),r0
	mov.b r0,@(0x7,r4)

loc_8c06bca2:
	add 0x01,r13
	exts.b r13,r3
	cmp/gt r10,r3
	bf loc_8c06bc76
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06bcba:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c06c412
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x2C,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06bcd4:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x18,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06bce8:
	#data 0x0902
loc_8c06bcea:
	#data 0x0901
	#align4
loc_8c06bcec:
	#data bank04.loc_8c044f12
loc_8c06bcf0:
	#data loc_8c06bcba
loc_8c06bcf4:
	#data bank15.loc_8c152d1c
loc_8c06bcf8:
	#data bank15.loc_8c152d2c
 
;==============================================
loc_8c06bcfc:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov.w @(0x126,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x130,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x118,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x110,PC),r0
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
	mov.w @(0xEC,PC),r0
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
	mov.l @(0xE4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x44,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x0B,r3
	mov.w @(0xBC,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xB8,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	mov 0x00,r5
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.w @(0x9C,PC),r0
	add 0x30,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l @(0x9C,PC),r3
	mov.l r5,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x7A,PC),r0
	mov.w r0,@(0x1C,r14)
	mov 0x14,r0
	mov.w r0,@(0x1E,r14)
	mov r5,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0x34,r8
	mov.w @(0x6C,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c06bdda
	add r14,r8
	mov.l @(0x74,PC),r1
	lds r1,fpul
	bra loc_8c06bde0
	fsts fpul,fr3

loc_8c06bdda:
	mov.l @(0x70,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c06bde0:
	fmov @r8,fr2
	mov 0x38,r0
	mov.l @(0x68,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@r8
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r4,r3
	bt loc_8c06be64
	mov.w @(0x36,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c06be0c
	mova @(0x4C,PC),r0
	bra loc_8c06be10
	fmov @r0,fr2

loc_8c06be0c:
	mova @(0x48,PC),r0
	fmov @r0,fr2

loc_8c06be10:
	mov 0x5C,r0
	fmov fr2,@(r0,r14)
	mov.w @(0x20,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c06be22
	mova @(0x3C,PC),r0
	bra loc_8c06be26
	fmov @r0,fr3

loc_8c06be22:
	mova @(0x3C,PC),r0
	fmov @r0,fr3

loc_8c06be26:
	mov 0x68,r0
	bra loc_8c06be6e
	fmov fr3,@(r0,r14)

;##############################################
loc_8c06be2c:
	#data 0x00dc
loc_8c06be2e:
	#data 0x012c
loc_8c06be30:
	#data 0x01a3
loc_8c06be32:
	#data 0x019c
loc_8c06be34:
	#data 0x01a1
loc_8c06be36:
	#data 0x00b4
loc_8c06be38:
	#data 0x0130
	#align4
loc_8c06be3c:
	#data bank12.loc_8c129560
loc_8c06be40:
	#data bank12.loc_8c1294c8
loc_8c06be44:
	#data 0x8c2896b0
loc_8c06be48:
	#data 0x4392aaaa
loc_8c06be4c:
	#data 0xc392aaaa
loc_8c06be50:
	#data 0x43cdb6db
loc_8c06be54:
	#data 0x40d55555
loc_8c06be58:
	#data 0xc0d55555
loc_8c06be5c:
	#data 0xbdd55555
loc_8c06be60:
	#data 0x3dd55555

;----------------------------------------------
loc_8c06be64:
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8c06be6e:
	mova @(0x154,PC),r0
	mov.l @(0x158,PC),r3
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x15,r5
	fmov fr3,@(r0,r14)
	mova @(0x14C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x01,r6
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	bra loc_8c06bc02
	mov.l @r15+,r14

;==============================================
loc_8c06be92:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x120,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x130,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x112,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x10A,PC),r0
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
	mov.w @(0xE6,PC),r0
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
	mov.l @(0xE4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x0A,r3
	mov.w @(0xB8,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r4
	mov.w @(0xB2,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	mov.l @(0xB4,PC),r3
	jsr @r3
	fmov fr3,@(r0,r14)
	mov.l @(0xB4,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x03,r0
	mov.l @(0x9C,PC),r3
	mov r0,r6
	mov 0x15,r5
	add 0x02,r6
	jsr @r3
	mov r14,r4
	mov 0x21,r0
	mov.l @(0xA0,PC),r4
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r4),r3
	mova @(0x98,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(0x70,PC),r0
	float fpul,fr3
	mov.w @(r0,r14),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c06bf5e
	fmul fr2,fr4
	fneg fr4

loc_8c06bf5e:
	mov 0x34,r0
	fmov @(r0,r14),fr5
	fmov fr5,fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x7C,PC),r0
	fmov @r0,fr4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fsub fr3,fr5
	fdiv fr4,fr5
	fmov fr5,@(r0,r14)
	mov 0x68,r0
	fldi0 fr5
	fmov fr5,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x58,PC),r0
	fmov @r0,fr2
	mov 0x38,r0
	float fpul,fr3
	fmov @(r0,r14),fr7
	fmov fr3,fr6
	fmul fr2,fr6
	fmov fr7,fr3
	fadd fr6,fr3
	fsub fr3,fr7
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fdiv fr4,fr7
	fmov fr7,@(r0,r14)
	mov 0x6C,r0
	fmov fr5,@(r0,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06bfba:
	#data 0x00dc
loc_8c06bfbc:
	#data 0x012c
loc_8c06bfbe:
	#data 0x01a3
loc_8c06bfc0:
	#data 0x019c
loc_8c06bfc2:
	#data 0x0130
	#align4
loc_8c06bfc4:
	#data 0xc12b6db6
loc_8c06bfc8:
	#data 0xbe892492
loc_8c06bfcc:
	#data bank03.loc_8c034e8c
loc_8c06bfd0:
	#data bank12.loc_8c129560
loc_8c06bfd4:
	#data bank12.loc_8c1294c8
loc_8c06bfd8:
	#data bank03.loc_8c03319e
loc_8c06bfdc:
	#data bank12.loc_8c1292d4
loc_8c06bfe0:
	#data bank15.loc_8c152c3c
loc_8c06bfe4:
	#data 0x3fd55555
loc_8c06bfe8:
	#data 0x42000000
loc_8c06bfec:
	#data 0x40092492

;==============================================
loc_8c06bff0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.w @(0x168,PC),r1
	mov.l r3,@r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x16C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x15A,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x152,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0x12E,PC),r0
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
	mov.l @(0x120,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x102,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r5,r3
	bt.s loc_8c06c076
	mov 0x00,r4
	mov.w @(0xF2,PC),r0
	mov.b r4,@(r0,r14)

loc_8c06c076:
	mov 0x24,r0
	mov 0x0A,r3
	mov.b r3,@(r0,r14)
	mov.w @(0xEC,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	mov.l @(0xE4,PC),r3
	jsr @r3
	fmov fr3,@(r0,r14)
	mov.l @(0xE0,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x03,r0
	mov.l @(0xDC,PC),r3
	mov r0,r6
	mov 0x15,r5
	add 0x02,r6
	jsr @r3
	mov r14,r4
	mov 0x1E,r0
	mov.l @(0xD4,PC),r4
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r4),r3
	mova @(0xC8,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(0xA6,PC),r0
	float fpul,fr3
	mov.w @(r0,r14),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c06c0d4
	fmul fr2,fr4
	fneg fr4

loc_8c06c0d4:
	mov 0x34,r0
	mov r14,r2
	fmov @(r0,r14),fr3
	mov 0x21,r3
	add r14,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4
	mov.w @(0x2,r4),r0
	mov.l @(0x98,PC),r4
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(0x8C,PC),r0
	fmov @r0,fr0
	mov 0x21,r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.b @(r0,r14),r5
	extu.b r5,r5
	shll2 r5
	shll2 r5
	add r4,r5
	mov 0x04,r0
	fmov @(r0,r5),fr5
	mov.w @(0x52,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c06c126
	fmov @r5,fr4
	fneg fr5
	fneg fr4

loc_8c06c126:
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr5,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x08,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x0C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r4
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c06c1ac
	mova @(0x34,PC),r0
	mov.l @r15,r3
	fmov @r0,fr4
	bra loc_8c06c198
	nop

;##############################################
loc_8c06c166:
	#data 0x00dc
loc_8c06c168:
	#data 0x012c
loc_8c06c16a:
	#data 0x01a3
loc_8c06c16c:
	#data 0x019c
loc_8c06c16e:
	#data 0x0130
	#align4
loc_8c06c170:
	#data bank12.loc_8c129560
loc_8c06c174:
	#data bank12.loc_8c1294c8
loc_8c06c178:
	#data bank03.loc_8c03319e
loc_8c06c17c:
	#data bank12.loc_8c1292d4
loc_8c06c180:
	#data bank03.loc_8c034e8c
loc_8c06c184:
	#data bank15.loc_8c152c7c
loc_8c06c188:
	#data 0x3fd55555
loc_8c06c18c:
	#data 0x40092492
loc_8c06c190:
	#data bank15.loc_8c152c9c
loc_8c06c194:
	#data 0x40d55555

;----------------------------------------------
loc_8c06c198:
	mov.w @(0x116,PC),r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c06c1a4
	mova @(0x114,PC),r0
	fmov @r0,fr4

loc_8c06c1a4:
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)

loc_8c06c1ac:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06c1b4:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0xFC,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06c1c8:
	mov r4,r3
	mov.l @(0xF4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06c1da:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c06c1fc
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	mov.l @(0xD0,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.b r3,@r14
	jsr @r2
	mov r14,r4

loc_8c06c1fc:
	lds.l @r15+,pr
	mov.l @(0xC8,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06c206:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	mov 0x1F,r5
	mov.l @(0xB8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	bsr loc_8c06bc5c
	mov r14,r4
	mov 0x0A,r0
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06c228:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x82,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	cmp/pl r3
	bf.s loc_8c06c248
	mov.l @(0x18,r14),r4
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c06c248:
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06c25c
	bsr loc_8c06c206
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c06c25c:
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
	cmp/pl r0
	bt loc_8c06c2d0
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bsr loc_8c06c400
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06c2b2:
	#data 0x01d2
loc_8c06c2b4:
	#data 0x01a0
loc_8c06c2b6:
	#data 0x019f
	#align4
loc_8c06c2b8:
	#data 0xc0d55555
loc_8c06c2bc:
	#data bank15.loc_8c152d38
loc_8c06c2c0:
	#data bank15.loc_8c152d44
loc_8c06c2c4:
	#data bank10.loc_8c104434
loc_8c06c2c8:
	#data bank03.loc_8c034dee
loc_8c06c2cc:
	#data bank04.loc_8c042008

;==============================================
loc_8c06c2d0:
	mov.w @(0x142,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c06c31a
	mov.w @(0x136,PC),r0
	mov 0xFF,r5
	mov.l @(0x138,PC),r3
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0x11C,PC),r4
	mov 0x02,r0
	mov 0x01,r5
	mov.b r0,@(0x5,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x6,r4)
	mov.b r0,@(0x7,r14)
	bsr loc_8c06c206
	mov r14,r4
	mov 0x00,r2
	mov.b r2,@r14

loc_8c06c31a:
	mov.l @(0x108,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x104,PC),r2
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06c32e:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c06c346
	mov.w @(0xDA,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	xor r3,r2
	rts
	mov.b r2,@(r0,r4)

loc_8c06c346:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	bra loc_8c06c400
	mov.b r0,@(0x4,r4)
	rts
	nop

;==============================================
loc_8c06c352:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8c06c400
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
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c06c398:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c06c3b2
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06c400
	mov.l @r15+,r14

loc_8c06c3b2:
	mov 0x5C,r1
	mov.l @(0x6C,PC),r3
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
	mov.w @(0x24,PC),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06c400:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r4)

loc_8c06c40c:
	mov.l @(0x1C,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c06c412:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06c416:
	#data 0x041c
loc_8c06c418:
	#data 0x012c
	#align4
loc_8c06c41c:
	#data bank10.loc_8c100672
loc_8c06c420:
	#data 0x8c26a518
loc_8c06c424:
	#data bank03.loc_8c034dee
loc_8c06c428:
	#data bank04.loc_8c045748
loc_8c06c42c:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c06c430:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x130,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06c46e
	mov r0,r4
	mov 0x00,r2
	mov.l @(0x120,PC),r3
	mov 0x20,r0
	mov 0x21,r1
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	add r4,r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.w @(0xFE,PC),r3
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c06c46e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c06c476:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x0B,r11
	mov.l r10,@-r15
	mov 0x01,r10
	mov.l r9,@-r15
	mov r11,r12
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r8
	mov.w @(0xD0,PC),r9

loc_8c06c494:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r8
	mov r14,r4
	tst r0,r0
	bt.s loc_8c06c4c6
	mov r0,r4
	mov 0x20,r0
	mov.l @(0xC8,PC),r2
	mov.l r2,@(0x10,r4)
	mov.b r10,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov r12,r0
	nop
	mov.b r0,@(0x6,r4)
	add 0xFF,r12
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r9,@(r0,r4)

loc_8c06c4c6:
	add 0x01,r13
	exts.b r13,r3
	cmp/ge r11,r3
	bf loc_8c06c494
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
loc_8c06c4e0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x80,PC),r3
	mov r4,r14
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c06c51a
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x70,PC),r3
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x58,PC),r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c06c51a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06c522:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c06c562
	mov 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov 0x03,r2
	mov.w @(0x2C,PC),r0
	mov.l @(r0,r14),r3
	add 0x01,r3
	cmp/gt r2,r3
	mov.l r3,@(r0,r14)
	bf.s loc_8c06c54a
	mov 0x01,r7
	mov 0x00,r1
	mov.l r1,@(r0,r14)

loc_8c06c54a:
	mov 0x25,r0
	mov r14,r4
	mov.b @(r0,r14),r6
	mov 0x02,r5
	mov.w @(0x12,PC),r0
	extu.b r6,r6
	mov.l @(r0,r14),r3
	shll2 r6
	add r3,r6
	mov.l @(0x14,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c06c562:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06c566:
	#data 0x0903
loc_8c06c568:
	#data 0x00cc
	#align4
loc_8c06c56c:
	#data bank04.loc_8c044f12
loc_8c06c570:
	#data loc_8c06c74e
loc_8c06c574:
	#data bank03.loc_8c03544c

;----------------------------------------------
loc_8c06c578:
	mov 0x21,r0
	mov.l @(0x128,PC),r5
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r5),r3
	mova @(0x120,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(0x10E,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c06c59c
	fmul fr2,fr4
	fneg fr4

loc_8c06c59c:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov.l @(0x18,r4),r2
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r5
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r2),fr2
	mova @(0xEC,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c06c5cc:
	mov 0x21,r0
	mov.l @(0xE0,PC),r5
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r5),r3
	mova @(0xCC,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(0xBA,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bf.s loc_8c06c5f0
	fmul fr2,fr4
	fneg fr4

loc_8c06c5f0:
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r5
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xA8,PC),r0
	fmov @r0,fr2
	mov.b @(0x6,r4),r0
	float fpul,fr3
	extu.b r0,r3
	lds r3,fpul
	mov 0x34,r0
	mov.l @(0x14,r4),r3
	fmov fr3,fr5
	fmul fr2,fr5
	float fpul,fr6
	fmov fr5,fr3
	fmov fr6,fr5
	fmul fr6,fr4
	fmul fr3,fr5
	fmov @(r0,r3),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fadd fr5,fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c06c632:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x66,PC),r0
	mov 0x01,r3
	mov 0x00,r5
	mov.l r13,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x14,r14),r2
	mov.b @(0x7,r2),r0
	tst r0,r0
	bt.s loc_8c06c66a
	mov r5,r4
	mov.l @(0x14,r14),r3
	mov.b @(0x7,r3),r0
	mov r0,r3
	mov.b @(0x6,r14),r0
	cmp/hs r0,r3
	bt loc_8c06c65a
	mov.w @(0x46,PC),r0
	mov.b r5,@(r0,r14)

loc_8c06c65a:
	mov.l @(0x14,r14),r3
	mov.b @(0x7,r3),r0
	mov r0,r3
	mov.b @(0x6,r14),r0
	cmp/eq r0,r3
	bt loc_8c06c686
	bra loc_8c06c688
	nop

loc_8c06c66a:
	mov.l @(0x14,r14),r3
	mov.b @(0x6,r3),r0
	mov r0,r3
	mov.b @(0x6,r14),r0
	cmp/hs r0,r3
	bt loc_8c06c67a
	mov.w @(0x26,PC),r0
	mov.b r5,@(r0,r14)

loc_8c06c67a:
	mov.l @(0x14,r14),r3
	mov.b @(0x6,r3),r0
	mov r0,r3
	mov.b @(0x6,r14),r0
	cmp/eq r0,r3
	bf loc_8c06c688

loc_8c06c686:
	mov 0x04,r4

loc_8c06c688:
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c06c6b8
	extu.b r4,r13
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0x1C,PC),r0
	extu.b r6,r6
	bra loc_8c06c6c2
	add r13,r6

;##############################################
loc_8c06c69e:
	#data 0x0130
loc_8c06c6a0:
	#data 0x012c
	#align4
loc_8c06c6a4:
	#data bank15.loc_8c152d50
loc_8c06c6a8:
	#data 0x3fd55555
loc_8c06c6ac:
	#data 0x40092492
loc_8c06c6b0:
	#data bank15.loc_8c152d64
loc_8c06c6b4:
	#data bank15.loc_8c152d7c

;----------------------------------------------
loc_8c06c6b8:
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0xB8,PC),r0
	extu.b r6,r6
	add r13,r6

loc_8c06c6c2:
	mov.b @(r0,r6),r6
	mov r14,r4
	mov.l @r15+,r13
	mov 0x15,r5
	mov.l @(0xB0,PC),r3
	extu.b r6,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06c6d2:
	mov.l @(0x14,r4),r3
	mov.b @(0x7,r3),r0
	tst r0,r0
	bt loc_8c06c6e0
	mov.l @(0x14,r4),r5
	bra loc_8c06c6e4
	mov.b @(0x7,r5),r0

loc_8c06c6e0:
	mov.l @(0x14,r4),r5
	mov.b @(0x6,r5),r0

loc_8c06c6e4:
	mov r0,r5
	mov 0x21,r0
	mov.b @(r0,r4),r0
	mov.l @(0x94,PC),r6
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r6),r3
	mova @(0x8C,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(0x76,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bf.s loc_8c06c70a
	fmul fr2,fr4
	fneg fr4

loc_8c06c70a:
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r6
	mov.w @(0x2,r6),r0
	mov r0,r3
	lds r3,fpul
	extu.b r5,r3
	mova @(0x68,PC),r0
	float fpul,fr3
	lds r3,fpul
	fmov @r0,fr2
	mov 0x34,r0
	mov.l @(0x14,r4),r3
	float fpul,fr6
	fmov fr3,fr5
	fmul fr2,fr5
	fmov fr4,fr3
	fmov fr6,fr4
	fmul fr3,fr4
	fmov fr5,fr3
	fmov fr6,fr5
	fmul fr3,fr5
	fmov @(r0,r3),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fadd fr5,fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8c06c74e:
	mov r4,r3
	mov.l @(0x38,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c06c760:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x24,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06c774:
	#data 0x0130
	#align4
loc_8c06c778:
	#data bank15.loc_8c152d74
loc_8c06c77c:
	#data bank03.loc_8c034e8c
loc_8c06c780:
	#data bank15.loc_8c152d64
loc_8c06c784:
	#data 0x3fd55555
loc_8c06c788:
	#data 0x40092492
loc_8c06c78c:
	#data bank15.loc_8c152d8c
loc_8c06c790:
	#data bank15.loc_8c152d9c

;==============================================
loc_8c06c794:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0xD0,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xD4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC2,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xBA,PC),r0
	mov 0x01,r13
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
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
	mov.w @(0x96,PC),r0
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
	mov.l @(0x88,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x06,r3
	mov.w @(0x68,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x23,r0
	mov.b r3,@(r0,r14)
	bsr loc_8c06c578
	mov r14,r4
	mov 0x24,r0
	mov 0x0B,r2
	mov.b r2,@(r0,r14)
	mov 0x00,r4
	mov.w @(0x58,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.b r0,@(0x6,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x15,r5
	mov.w @(0x3C,PC),r0
	mov.l @(0x48,PC),r3
	mov.l r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0x3C,PC),r0
	extu.b r6,r6
	mov.b @(r0,r6),r6
	extu.b r6,r6
	jsr @r3
	mov r14,r4
	mov 0x02,r5
	bsr loc_8c06c4e0
	mov r14,r4
	mov 0x03,r5
	bsr loc_8c06c4e0
	mov r14,r4
	bsr loc_8c06c476
	mov r14,r4
	bsr loc_8c06c522
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x24,PC),r2
	mov r14,r4
	mov 0x1E,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06c86e:
	#data 0x00dc
loc_8c06c870:
	#data 0x012c
loc_8c06c872:
	#data 0x01a3
loc_8c06c874:
	#data 0x019c
loc_8c06c876:
	#data 0x00cc
	#align4
loc_8c06c878:
	#data bank12.loc_8c129560
loc_8c06c87c:
	#data bank12.loc_8c1294c8
loc_8c06c880:
	#data bank15.loc_8c152d60
loc_8c06c884:
	#data bank03.loc_8c034e8c
loc_8c06c888:
	#data bank04.loc_8c042008

;==============================================
loc_8c06c88c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x164,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x168,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x156,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x14E,PC),r0
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
	mov.w @(0x12A,PC),r0
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
	mov.l @(0x11C,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x0B,r2
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b r2,@(r0,r14)
	mov 0x42,r4
	mov.w @(0x100,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x00,r4
	mov.w @(0xF4,PC),r0
	add 0x34,r3
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
	bsr loc_8c06c5cc
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06c632
	mov.l @r15+,r14

;==============================================
loc_8c06c938:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xB8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xBC,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xAA,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xA2,PC),r0
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
	mov.w @(0x7E,PC),r0
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
	mov.l @(0x70,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x0A,r2
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov 0x00,r4
	mov.b r2,@(r0,r14)
	mov.w @(0x52,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c06c9c8
	bsr loc_8c06c578
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0x4C,PC),r0
	bra loc_8c06c9d4
	extu.b r6,r6

loc_8c06c9c8:
	bsr loc_8c06c6d2
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0x40,PC),r0
	extu.b r6,r6

loc_8c06c9d4:
	lds.l @r15+,pr
	mov.b @(r0,r6),r6
	mov r14,r4
	mov.l @(0x3C,PC),r3
	mov 0x15,r5
	extu.b r6,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06c9e4:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x2C,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06c9f8:
	#data 0x00dc
loc_8c06c9fa:
	#data 0x012c
loc_8c06c9fc:
	#data 0x01a3
loc_8c06c9fe:
	#data 0x019c
loc_8c06ca00:
	#data 0x01a1
	#align4
loc_8c06ca04:
	#data bank12.loc_8c129560
loc_8c06ca08:
	#data bank12.loc_8c1294c8
loc_8c06ca0c:
	#data 0x8c2896b0
loc_8c06ca10:
	#data bank15.loc_8c152d84
loc_8c06ca14:
	#data bank15.loc_8c152d88
loc_8c06ca18:
	#data bank03.loc_8c034e8c
loc_8c06ca1c:
	#data bank15.loc_8c152dac

;==============================================
loc_8c06ca20:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c06c522
	mov r4,r14
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c06caaa
	mov.w @(0xD6,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c06ca50
	mov.w @(0xCC,PC),r0
	mov 0x06,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c06ca50
	mov.b @(r0,r4),r1
	mov 0x0D,r2
	extu.b r1,r1
	cmp/gt r2,r1
	bf loc_8c06ca58

loc_8c06ca50:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c06caba
	mov.b r0,@(0x4,r14)

loc_8c06ca58:
	mov.w @(0xAC,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c06ca80
	mov.w @(0xA2,PC),r0
	mov 0x0A,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c06ca80
	mov.b @(r0,r4),r1
	mov 0x0D,r2
	extu.b r1,r1
	cmp/gt r2,r1
	bt loc_8c06ca80
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c06ca80:
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	bsr loc_8c06c578
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c06cac2
	mov.b @(0x6,r14),r0
	mov 0x0B,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c06cac2
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	bra loc_8c06cac2
	mov.b r0,@(0x6,r14)

loc_8c06caaa:
	bsr loc_8c06c578
	mov r14,r4
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06cac2

loc_8c06caba:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c06cc96
	mov.l @r15+,r14

loc_8c06cac2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06cac8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x4,r15)
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c06cade
	bra loc_8c06cc02
	nop

loc_8c06cade:
	mov.w @(0x26,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c06cb00
	mov.w @(0x1C,PC),r0
	mov 0x06,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c06cb00
	mov.b @(r0,r4),r1
	mov 0x0D,r2
	extu.b r1,r1
	cmp/gt r2,r1
	bf loc_8c06cb10

loc_8c06cb00:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c06cc12
	mov.b r0,@(0x4,r14)

;##############################################
loc_8c06cb08:
	#data 0x0159
loc_8c06cb0a:
	#data 0x0158
	#align4
loc_8c06cb0c:
	#data bank03.loc_8c034dee

;----------------------------------------------
loc_8c06cb10:
	mov.w @(0x110,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c06cb40
	mov.w @(0x106,PC),r0
	mov 0x0A,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c06cb40
	mov.b @(r0,r4),r1
	mov 0x0D,r2
	extu.b r1,r1
	cmp/gt r2,r1
	bt loc_8c06cb40
	mov.b @(0x5,r14),r0
	mov 0x2B,r5
	mov.l @(0xF8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8c06cb40:
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c06cb96
	mov.l @(0x14,r14),r3
	mov.b @(0x7,r3),r0
	tst r0,r0
	bf loc_8c06cb96
	mov.b @(0x6,r14),r0
	mov.l @(0x14,r14),r2
	mov.b r0,@(0x7,r2)
	mov 0x23,r0
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov 0x01,r3
	extu.b r2,r2
	cmp/gt r3,r2
	bf loc_8c06cb96
	mov.l @(0x14,r14),r1
	mov 0x00,r4
	mov.b @(r0,r1),r2
	add 0xFF,r2
	mov.b r2,@(r0,r1)
	mov 0x21,r0
	mov.b @(r0,r14),r1
	mov.w @(0xB4,PC),r0
	add 0x34,r1
	mov.l @(0xBC,PC),r2
	mov.b r1,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r2,r1
	extu.b r0,r0
	shll r0
	add 0x7C,r1
	mov.w @(r0,r1),r3
	add 0x01,r3
	mov.w r3,@(r0,r1)

loc_8c06cb96:
	mov.w @(0x92,PC),r0
	mov.l @(0x4,r15),r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c06cbbe
	mov.l @(0x14,r14),r2
	mov.b @(0x7,r2),r0
	tst r0,r0
	bf loc_8c06cbbe
	mov.l @(0x14,r14),r2
	mov.b @(0x6,r2),r0
	mov r0,r3
	mov.b @(0x6,r14),r0
	cmp/hs r0,r3
	bf loc_8c06cbbe
	mov.b @(0x6,r14),r0
	mov.l @(0x14,r14),r3
	mov.b r0,@(0x7,r3)

loc_8c06cbbe:
	bsr loc_8c06c5cc
	mov r14,r4
	bsr loc_8c06c632
	mov r14,r4
	mov.l @(0x14,r14),r4
	mov.l r4,@r15
	mov.b @(0x7,r4),r0
	mov r0,r4
	extu.b r4,r3
	tst r3,r3
	bt loc_8c06cbde
	mov.b @(0x6,r14),r0
	extu.b r4,r2
	extu.b r0,r0
	cmp/eq r0,r2
	bf loc_8c06cc1c

loc_8c06cbde:
	mov.l @(0x14,r14),r2
	mov.b @(0x6,r2),r0
	mov r0,r3
	mov.b @(0x6,r14),r0
	cmp/hs r0,r3
	bf loc_8c06cc1c
	mov.l @(0x14,r14),r3
	mov 0x23,r0
	mov.b @(r0,r3),r2
	extu.b r2,r2
	cmp/pl r2
	bf loc_8c06cc1c
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x38,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c06cc02:
	bsr loc_8c06c5cc
	mov r14,r4
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06cc1c

loc_8c06cc12:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c06cc96
	mov.l @r15+,r14

loc_8c06cc1c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06cc24:
	#data 0x0159
loc_8c06cc26:
	#data 0x0158
loc_8c06cc28:
	#data 0x019e
loc_8c06cc2a:
	#data 0x01a1
loc_8c06cc2c:
	#data 0x041c
	#align4
loc_8c06cc30:
	#data bank04.loc_8c042008
loc_8c06cc34:
	#data 0x8c2896b0
loc_8c06cc38:
	#data bank04.loc_8c045748
loc_8c06cc3c:
	#data bank03.loc_8c034dee

;==============================================
loc_8c06cc40:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x62,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c06cc68
	mov.w @(0x56,PC),r0
	mov 0x06,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c06cc68
	mov.b @(r0,r4),r1
	mov 0x09,r2
	extu.b r1,r1
	cmp/gt r2,r1
	bf loc_8c06cc76

loc_8c06cc68:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	bra loc_8c06cc96
	mov.l @r15+,r14

loc_8c06cc76:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c06cc88
	bsr loc_8c06c578
	mov r14,r4
	bra loc_8c06cc8c
	nop

loc_8c06cc88:
	bsr loc_8c06c6d2
	mov r14,r4

loc_8c06cc8c:
	lds.l @r15+,pr
	mov.l @(0x20,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c06cc96:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c06cca4:
	mov.l @(0xC,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06ccaa:
	#data 0x0159
loc_8c06ccac:
	#data 0x0158
loc_8c06ccae:
	#data 0x012c
	#align4
loc_8c06ccb0:
	#data bank03.loc_8c034dee
loc_8c06ccb4:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c06ccb8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x40,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	mov.l @(0x38,PC),r2
	mov r0,r4
	mov 0x26,r0
	mov.w @(0x2A,PC),r1
	mov.l r2,@(0x10,r4)
	mov.w @(0x24,PC),r2
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov.l @r15,r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r4)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c06cce8:
	mov r4,r3
	mov.l @(0x1C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06ccfa:
	#data 0x0904
loc_8c06ccfc:
	#data 0x0158
	#align4
loc_8c06cd00:
	#data bank04.loc_8c044f12
loc_8c06cd04:
	#data loc_8c06cce8
loc_8c06cd08:
	#data bank15.loc_8c153050

;==============================================
loc_8c06cd0c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x162,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x16C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x154,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x14C,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0x128,PC),r0
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
	mov.l @(0x120,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x00,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x45,r3
	mov.w @(0xF8,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov.w @(0xF4,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x6,r14)
	mov r5,r0
	nop
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov.w r0,@(0x1E,r14)
	mov.l @(0xF4,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x12,r0
	mov.l @(0xF0,PC),r3
	mov 0x14,r5
	mov r0,r7
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c06cdb6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	mov.w @(0xB8,PC),r12
	mov.l @(0x18,r14),r13
	tst r0,r0
	bt.s loc_8c06cdd0
	add r13,r12
	bra loc_8c06cf0c
	nop

loc_8c06cdd0:
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06ce06
	mov.b @(0x6,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x9C,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @(0x1,r12),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r12)
	extu.b r0,r0
	cmp/pl r0
	bt loc_8c06ce06
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	mov 0x14,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x04,r6
	mov.w @(0x78,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r14,r4

loc_8c06ce06:
	mov.b @r12,r2
	tst r2,r2
	bf loc_8c06ce10
	bra loc_8c06cf18
	nop

loc_8c06ce10:
	mov.w @(0x6E,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c06cebe
	mov.w @(0x5A,PC),r0
	mov 0x01,r2
	mov.l @(0x80,PC),r5
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x4C,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r5),r3
	mova @(0x60,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(0x3A,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c06ce56
	fmul fr2,fr4

loc_8c06ce54:
	fneg fr4

loc_8c06ce56:
	mov.w @(0x28,PC),r2
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x38,r1
	add r14,r1
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.b @r2,r2
	extu.b r2,r2
	shll r2
	shll r2
	add r2,r5
	bra loc_8c06cea8
	nop

;##############################################
loc_8c06ce76:
	#data 0x00dc
loc_8c06ce78:
	#data 0x012c
loc_8c06ce7a:
	#data 0x01a3
loc_8c06ce7c:
	#data 0x019c
loc_8c06ce7e:
	#data 0x02a4
loc_8c06ce80:
	#data 0x019e
loc_8c06ce82:
	#data 0x014b
loc_8c06ce84:
	#data 0x0130
	#align4
loc_8c06ce88:
	#data bank12.loc_8c129560
loc_8c06ce8c:
	#data bank12.loc_8c1294c8
loc_8c06ce90:
	#data bank03.loc_8c03319e
loc_8c06ce94:
	#data bank12.loc_8c1292d4
loc_8c06ce98:
	#data bank03.loc_8c034f54
loc_8c06ce9c:
	#data bank03.loc_8c034e8c
loc_8c06cea0:
	#data bank15.loc_8c152dbc
loc_8c06cea4:
	#data 0x3fd55555

;----------------------------------------------
loc_8c06cea8:
	mov.w @(0x2,r5),r0
	fmov @r1,fr1
	mov r0,r3
	lds r3,fpul
	mova @(0xD4,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fmul fr2,fr3
	fsub fr3,fr1
	bra loc_8c06cec4
	fmov fr1,@r1

loc_8c06cebe:
	mov.w @(0xBE,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c06cec4:
	mov.w @(0xBA,PC),r0
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	mov.w @(0x1C,r14),r0
	extu.w r2,r2
	cmp/eq r0,r2
	bf loc_8c06cf18
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c06cf2a
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c06cf2a
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c06cf04
	mov.w @(0x9A,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c06cf2a
	mov r13,r5
	bsr loc_8c06cf46
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x90,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c06cf04:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	bra loc_8c06cf2a
	mov.w r0,@(0x1E,r14)

loc_8c06cf0c:
	mov.l @(0x80,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c06cf2a

loc_8c06cf18:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c06cf34
	mov.l @r15+,r14

loc_8c06cf2a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c06cf34:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x40,PC),r0
	mov.b r3,@(r0,r4)

loc_8c06cf40:
	mov.l @(0x50,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c06cf46:
	mov.w @(0x3C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c06cf74
	cmp/eq 0x06,r0
	bt loc_8c06cf74
	cmp/eq 0x01,r0
	bt loc_8c06cf7c
	cmp/eq 0x07,r0
	bt loc_8c06cf7c
	cmp/eq 0x02,r0
	bt loc_8c06cf98
	cmp/eq 0x08,r0
	bt loc_8c06cf98
	cmp/eq 0x3F,r0
	bt loc_8c06cf9c
	cmp/eq 0x0D,r0
	bt loc_8c06cfa0
	cmp/eq 0x0E,r0
	bt loc_8c06cfa8
	bra loc_8c06cfae
	nop

loc_8c06cf74:
	mov.w @(0xE,PC),r0
	mov 0x43,r3
	bra loc_8c06cfae
	mov.b r3,@(r0,r4)

loc_8c06cf7c:
	bra loc_8c06cfaa
	mov 0x44,r1

;##############################################
loc_8c06cf80:
	#data 0x012c
loc_8c06cf82:
	#data 0x0158
loc_8c06cf84:
	#data 0x014f
loc_8c06cf86:
	#data 0x01a1
	#align4
loc_8c06cf88:
	#data 0x40092492
loc_8c06cf8c:
	#data bank04.loc_8c045748
loc_8c06cf90:
	#data bank03.loc_8c034dee
loc_8c06cf94:
	#data bank04.loc_8c0450c0

;----------------------------------------------
loc_8c06cf98:
	bra loc_8c06cfa2
	mov 0x45,r2

loc_8c06cf9c:
	bra loc_8c06cfaa
	mov 0x46,r1

loc_8c06cfa0:
	mov 0x47,r2

loc_8c06cfa2:
	mov.w @(0x4C,PC),r0
	bra loc_8c06cfae
	mov.b r2,@(r0,r4)

loc_8c06cfa8:
	mov 0x48,r1

loc_8c06cfaa:
	mov.w @(0x44,PC),r0
	mov.b r1,@(r0,r4)

loc_8c06cfae:
	mov.w @(0x42,PC),r0
	mov 0x00,r6
	mov.l @(0x44,PC),r7
	mov.w r6,@(r0,r4)
	add 0xF2,r0
	mov.b r6,@(r0,r4)
	add 0x26,r0
	mov.l r6,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r7,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.w @(0x20,PC),r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r5)
	add 0x0B,r0
	mov.w r6,@(r0,r5)
	add 0xF2,r0
	mov.b r6,@(r0,r5)
	add 0x26,r0
	mov.l r6,@(r0,r5)
	mov.b @(0x2,r5),r0
	mov.l @r7,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	rts
	mov.w r2,@(r0,r3)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06cff2:
	#data 0x01a1
loc_8c06cff4:
	#data 0x01ac
	#align4
loc_8c06cff8:
	#data 0x8c2896b0

;==============================================
loc_8c06cffc:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x04,r0
	mov.l @(0x84,PC),r3
	mov 0x00,r6
	mov r4,r14
	fmov fr4,fr15
	fmov fr5,@(r0,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c06d066
	mov r0,r4
	mov.l @(0x70,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x60,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x56,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(0x54,PC),r0
	mov.w r2,@(r0,r4)
	add 0x64,r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c06d042
	mov 0x34,r0
	fneg fr15

loc_8c06d042:
	fmov @(r0,r14),fr3
	mova @(0x4C,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	fmac fr0,fr15,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mova @(0x44,PC),r0
	fmov @r0,fr0
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x38,r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r4)
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c06d066:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06d074:
	mov r4,r3
	mov.l @(0x24,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06d086:
	#data 0x0a00
loc_8c06d088:
	#data 0x0158
loc_8c06d08a:
	#data 0x00cc
	#align4
loc_8c06d08c:
	#data bank04.loc_8c044f12
loc_8c06d090:
	#data loc_8c06d074
loc_8c06d094:
	#data 0x3fd55555
loc_8c06d098:
	#data 0x40092492
loc_8c06d09c:
	#data bank15.loc_8c153060

;==============================================
loc_8c06d0a0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(0x108,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x110,PC),r3
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
	mov.l @(0xC4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x00,r13
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r13,@(r0,r14)
	mov.w @(0xA4,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c06d120
	mov r13,r4
	mov 0x18,r4

loc_8c06d120:
	mov 0x20,r0
	mov.b r4,@(r0,r14)
	mov 0x23,r0
	mov 0x04,r3
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r12
	mov.l @(0x9C,PC),r3
	extu.b r12,r12
	shll r12
	add r3,r12
	mov.b @r12,r2
	tst r2,r2
	bt.s loc_8c06d14e
	mov 0x64,r11
	mov.l @(0x90,PC),r2
	mov.w @(0x7A,PC),r11
	jsr @r2
	nop
	mov 0x20,r1
	add r14,r1
	and 0x1F,r0
	mov.b r0,@r1

loc_8c06d14e:
	mov r11,r0
	nop
	mov.w r0,@(0x1E,r14)
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x21,r1
	mov.w @(0x62,PC),r0
	add r14,r1
	fmov fr3,@(r0,r14)
	add 0x04,r0
	fldi1 fr3
	fadd fr3,fr3
	fmov fr3,@(r0,r14)
	mov.b @(0x1,r12),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c06d1a4
	mov 0x00,r6
	mov.w @(0x48,PC),r0
	mov 0x42,r4
	mov 0x6B,r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x44,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c06d1a4:
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov 0x17,r5
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06d1b6:
	#data 0x00dc
loc_8c06d1b8:
	#data 0x012c
loc_8c06d1ba:
	#data 0x01a3
loc_8c06d1bc:
	#data 0x0130
loc_8c06d1be:
	#data 0x00c8
loc_8c06d1c0:
	#data 0x0088
loc_8c06d1c2:
	#data 0x019c
	#align4
loc_8c06d1c4:
	#data bank12.loc_8c129560
loc_8c06d1c8:
	#data bank12.loc_8c1294c8
loc_8c06d1cc:
	#data bank15.loc_8c153070
loc_8c06d1d0:
	#data bank03.loc_8c03319e
loc_8c06d1d4:
	#data 0x42000000
loc_8c06d1d8:
	#data 0x8c2896b0
loc_8c06d1dc:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c06d1e0:
	mov.w @(0x90,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	fldi1 fr2
	sts.l pr,@-r15
	fmov @(r0,r14),fr3
	fsub fr2,fr3
	fldi0 fr2
	fcmp/gt fr3,fr2
	bf.s loc_8c06d218
	fmov fr3,@(r0,r14)
	fldi1 fr3
	fadd fr3,fr3
	fmov fr3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x07,r3
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	mov 0x20,r0
	mov.b @(r0,r14),r1
	mov 0x22,r0
	add r2,r1
	mov.b r1,@(r0,r14)

loc_8c06d218:
	mov.w @(0x5A,PC),r0
	fldi1 fr2
	fmov @(r0,r14),fr3
	fsub fr2,fr3
	fldi0 fr2
	fcmp/eq fr2,fr3
	bf.s loc_8c06d23a
	fmov fr3,@(r0,r14)
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x44,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c06d23a:
	mov.w @(0x1E,r14),r0
	mov.l @(0x3C,PC),r3
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c06d25c
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c06d25c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c06d262:
	mov.w @(0x12,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)

loc_8c06d268:
	mov.w @(0xC,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06d274:
	#data 0x008c
loc_8c06d276:
	#data 0x0088
loc_8c06d278:
	#data 0x012c
	#align4
loc_8c06d27c:
	#data bank03.loc_8c033674
loc_8c06d280:
	#data bank03.loc_8c034dee
loc_8c06d284:
	#data bank04.loc_8c045748
loc_8c06d288:
	#data bank04.loc_8c0450c0

;==============================================
#symbol loc_8c06d28c 0x8c06d28c



;#symbol loc_8c06 0x8c06
;cleanVs