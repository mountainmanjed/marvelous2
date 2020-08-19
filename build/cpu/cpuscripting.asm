
;==============================================
;Load CPU Script opcode
;==============================================
loc_8c05cd0c:
	mov.l r14,@-r15
	mov.w @(0x4,r5),r0
	mov.l @r5,r14
	extu.w r0,r0
	mov.l @(loc_8c05ce08,PC),r1 ; loc_8c05ce08 to loc_8c1515e4
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	mov.l @r15+,r14

;==============================================
loc_8c05cd22:
	add 0xFC,r15
	mov.l r4,@r15
	mov r4,r0
	nop
	mov.w @(loc_8c05cdf2,PC),r1;0x0440
	mov.l @(loc_8c05ce0c,PC),r2;loc_8c1517e4
	mov.b @(r0,r1),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r2),r0
	jmp @r0
	add 0x04,r15

;==============================================
;AI script Opcode 00
;==============================================
loc_8c05cd3a:
	sts.l pr,@-r15
	mov.l @(loc_8c05ce10,PC),r3; 8c05cb3e
	jsr @r3
	mov 0x00,r6
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05cd48:
	mov.w @(loc_8c05cdf4,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	rts
	mov 0x01,r0

;==============================================
;AI script Opcode 01
;==============================================
loc_8c05cd54:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ce14,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05cd6c
	bra loc_8c05cdea
	mov 0x00,r0

loc_8c05cd6c:
	mov.l @(loc_8c05ce10,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05ce10,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05cdf4,PC),r0
	mov.w @(loc_8c05cdfa,PC),r4
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r3
	mov.w @(loc_8c05cdf6,PC),r0
	fmov @(r0,r14),fr3
	add 0x98,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05cdf8,PC),r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05cdfc,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05cdfe,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r4,r3
	mov.l r3,@(r0,r14)
	add 0xC4,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov 0x00,r3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05ce00,PC),r0
	mov 0x01,r5
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05cdfe,PC),r0
	mov.l @(loc_8c05ce18,PC),r3
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05ce02,PC),r0
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05ce04,PC),r0
	mov.w r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov.w @(loc_8c05ce04,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ce1c
	mov.l @r15+,r14

loc_8c05cdea:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05cdf2:
	#data 0x0440
loc_8c05cdf4:
	#data 0x043d
loc_8c05cdf6:
	#data 0x04b4
loc_8c05cdf8:
	#data 0x0450
loc_8c05cdfa:
	#data 0x0800
loc_8c05cdfc:
	#data 0x01d2
loc_8c05cdfe:
	#data 0x0458
loc_8c05ce00:
	#data 0x01d3
loc_8c05ce02:
	#data 0x04dc
loc_8c05ce04:
	#data 0x034a
	#align4
loc_8c05ce08:
	#data bank15.loc_8c1515e4
loc_8c05ce0c:
	#data bank15.loc_8c1517e4
loc_8c05ce10:
	#data bank05.loc_8c05cb3e
loc_8c05ce14:
	#data bank05.loc_8c05cc14
loc_8c05ce18:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c05ce1c:
	mov.w @(loc_8c05cf12,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05cf14,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf.s loc_8c05ce94
	mov 0x00,r6
	mov.l @(loc_8c05cf2c,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c05ce94
	mov.w @(loc_8c05cf16,PC),r0
	mov.b @(r0,r4),r5
	tst r5,r5
	bt loc_8c05ce4c
	mov.w @(loc_8c05cf18,PC),r0
	mov 0x02,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	neg r2,r2
	shad r2,r3
	tst r5,r3
	bf loc_8c05ce94

loc_8c05ce4c:
	mov.w @(loc_8c05cf1a,PC),r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c05ce5e
	fneg fr4

loc_8c05ce5e:
	mov.w @(loc_8c05cf1c,PC),r0
	fldi0 fr2
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c05ce94
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c05cf1a,PC),r0
	fmov fr3,@(r0,r4)
	add 0x08,r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8c05cf1e,PC),r0
	mov.w r3,@(r0,r4)
	mov.w @(loc_8c05cf14,PC),r0
	mov.l @(r0,r4),r0
	cmp/eq 0x1A,r0
	bf loc_8c05ce8c
	mov.w @(loc_8c05cf20,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05cf22,PC),r0
	mov.w r2,@(r0,r4)

loc_8c05ce8c:
	mov.w @(loc_8c05cf24,PC),r0
	mov.b r6,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05ce94:
	mov.w @(loc_8c05cf26,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05cf1e,PC),r0
	mov.w r6,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05cea6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05cf30,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bt loc_8c05cf0e
	mov.l @(loc_8c05cf34,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05cf34,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05cf38,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05cf0e
	mov.w @(loc_8c05cf28,PC),r0
	mov 0x01,r3
	fmov @(r0,r14),fr3
	add 0x98,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05cf1a,PC),r0
	fmov fr3,@(r0,r14)
	add 0xCC,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05cf24,PC),r0
	mov.b r3,@(r0,r14)
	add 0x2A,r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c05cf3c
	mov.w @(loc_8c05cf18,PC),r0
	mov 0x01,r1
	exts.b r4,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bt loc_8c05cf3c

loc_8c05cf0e:
	bra loc_8c05cf86
	mov 0x00,r0

;##############################################
loc_8c05cf12:
	#data 0x01d0
loc_8c05cf14:
	#data 0x0454
loc_8c05cf16:
	#data 0x01fd
loc_8c05cf18:
	#data 0x01d2
loc_8c05cf1a:
	#data 0x0450
loc_8c05cf1c:
	#data 0x044c
loc_8c05cf1e:
	#data 0x04dc
loc_8c05cf20:
	#data 0x0458
loc_8c05cf22:
	#data 0x01fa
loc_8c05cf24:
	#data 0x01d3
loc_8c05cf26:
	#data 0x043d
loc_8c05cf28:
	#data 0x04b4
	#align4
loc_8c05cf2c:
	#data 0x8c28963c
loc_8c05cf30:
	#data bank05.loc_8c05cc14
loc_8c05cf34:
	#data bank05.loc_8c05cb3e
loc_8c05cf38:
	#data bank05.loc_8c05c41a

;----------------------------------------------
loc_8c05cf3c:
	mov.w @(loc_8c05d054,PC),r0
	mov 0x01,r3
	mov.w @(loc_8c05d056,PC),r4
	mov 0x01,r5
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x17,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05d058,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05d05a,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r4,r3
	mov.l r3,@(r0,r14)
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05d05c,PC),r0
	mov.l @(loc_8c05d06c,PC),r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05d05e,PC),r0
	mov.w r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov.w @(loc_8c05d05e,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05cf8e
	mov.l @r15+,r14

loc_8c05cf86:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05cf8e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05d070,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05cfba
	mov.w @(loc_8c05d054,PC),r0
	mov 0x00,r2
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05d05c,PC),r0
	mov.w r2,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05cfba:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c05da78
	mov.l @r15+,r14

loc_8c05cfc6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05cfce:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05d074,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bt loc_8c05d050
	mov.l @(loc_8c05d078,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05d078,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05d060,PC),r0
	mov.l @(loc_8c05d080,PC),r2
	mov.l @(r0,r14),r4
	mov.w @(loc_8c05d062,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d064,PC),r0
	extu.b r3,r3
	lds r3,fpul
	mov 0x00,r3
	fmov @(r0,r14),fr2
	mova @(loc_8c05d07c,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05d066,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c05d068,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05d06a,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c05d050
	mov.w @(loc_8c05d066,PC),r0
	fmov @(r0,r14),fr4
	mov.w @(loc_8c05d058,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c05d038
	mov 0x34,r0
	fneg fr4

loc_8c05d038:
	fmov @(r0,r14),fr5
	fmov @(r0,r4),fr3
	mov.w @(loc_8c05d058,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c05d04c
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r14),fr4

loc_8c05d04c:
	fcmp/gt fr5,fr4
	bf loc_8c05d084

loc_8c05d050:
	bra loc_8c05d0ce
	mov 0x00,r0

;##############################################
loc_8c05d054:
	#data 0x043d
loc_8c05d056:
	#data 0x0400
loc_8c05d058:
	#data 0x01d2
loc_8c05d05a:
	#data 0x0458
loc_8c05d05c:
	#data 0x04dc
loc_8c05d05e:
	#data 0x034a
loc_8c05d060:
	#data 0x020c
loc_8c05d062:
	#data 0x013e
loc_8c05d064:
	#data 0x04b4
loc_8c05d066:
	#data 0x044c
loc_8c05d068:
	#data 0x01d3
loc_8c05d06a:
	#data 0x041c
	#align4
loc_8c05d06c:
	#data bank05.loc_8c0532a8
loc_8c05d070:
	#data bank05.loc_8c05c41a
loc_8c05d074:
	#data bank05.loc_8c05cc14
loc_8c05d078:
	#data bank05.loc_8c05cb3e
loc_8c05d07c:
	#data 0x3fd55555
loc_8c05d080:
	#data 0x8c28963c

;----------------------------------------------
loc_8c05d084:
	mov.w @(loc_8c05d182,PC),r0
	mov 0x01,r3
	mov.w @(loc_8c05d184,PC),r4
	mov 0x01,r5
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x17,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05d186,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05d188,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r4,r3
	mov.l r3,@(r0,r14)
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05d18a,PC),r0
	mov.l @(loc_8c05d19c,PC),r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05d18c,PC),r0
	mov.w r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov.w @(loc_8c05d18c,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05d0d6
	mov.l @r15+,r14

loc_8c05d0ce:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05d0d6:
	mov.w @(loc_8c05d18e,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d190,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf.s loc_8c05d154
	mov 0x00,r5
	mov.w @(loc_8c05d192,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d154
	mov.l @(loc_8c05d1a0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d154
	mov.w @(loc_8c05d194,PC),r0
	mov.b @(r0,r4),r6
	tst r6,r6
	bt loc_8c05d114
	mov.w @(loc_8c05d186,PC),r0
	mov 0x02,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	neg r2,r2
	shad r2,r3
	tst r6,r3
	bf loc_8c05d154

loc_8c05d114:
	mov.w @(loc_8c05d196,PC),r0
	mov.l @(r0,r4),r6
	mov.w @(loc_8c05d198,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d186,PC),r0
	mov.b @(r0,r6),r3
	tst r3,r3
	bf.s loc_8c05d128
	mov 0x34,r0
	fneg fr4

loc_8c05d128:
	fmov @(r0,r4),fr5
	fmov @(r0,r6),fr3
	mov.w @(loc_8c05d186,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d13c
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d13c:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c05d154
	mov.w @(loc_8c05d188,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05d18a,PC),r0
	mov.w r2,@(r0,r4)
	mov.w @(loc_8c05d19a,PC),r0
	mov.b r5,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05d154:
	mov.w @(loc_8c05d182,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d18a,PC),r0
	mov.w r5,@(r0,r4)
	mov 0x01,r0
	rts
	nop

loc_8c05d166:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05d1a4,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x06,r5
	tst r0,r0
	bf loc_8c05d1a8
	bra loc_8c05d246
	mov 0x00,r0

;##############################################
loc_8c05d182:
	#data 0x043d
loc_8c05d184:
	#data 0x0800
loc_8c05d186:
	#data 0x01d2
loc_8c05d188:
	#data 0x0458
loc_8c05d18a:
	#data 0x04dc
loc_8c05d18c:
	#data 0x034a
loc_8c05d18e:
	#data 0x01d0
loc_8c05d190:
	#data 0x0454
loc_8c05d192:
	#data 0x04a2
loc_8c05d194:
	#data 0x01fd
loc_8c05d196:
	#data 0x020c
loc_8c05d198:
	#data 0x044c
loc_8c05d19a:
	#data 0x01d3
	#align4
loc_8c05d19c:
	#data bank05.loc_8c0532a8
loc_8c05d1a0:
	#data 0x8c28963c
loc_8c05d1a4:
	#data bank05.loc_8c05cc14

;----------------------------------------------
loc_8c05d1a8:
	mov.l @(loc_8c05d2e8,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05d2ca,PC),r0
	mov r13,r5
	mov 0x03,r6
	mov.l @(r0,r14),r3
	mov.l r3,@r15
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05d2cc,PC),r0
	mov r13,r5
	mov.l @r15,r3
	mov 0x01,r6
	mov.b @(r0,r3),r3
	mov.w @(loc_8c05d2ce,PC),r0
	extu.b r3,r3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mova @(loc_8c05d2ec,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05d2d0,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05d2ce,PC),r0
	mov.w @(loc_8c05d2d4,PC),r2
	mov.l @(r0,r14),r3
	add 0xA0,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05d2d2,PC),r0
	mov.b @(r0,r14),r4
	mov.w @(loc_8c05d2d6,PC),r0
	extu.b r4,r4
	mov r4,r3
	shll r4
	add r3,r4
	mov.l @(r0,r14),r3
	shll8 r4
	cmp/pz r3
	shll2 r4
	bt.s loc_8c05d20a
	xor r2,r4
	mov.w @(loc_8c05d2d8,PC),r3
	or r3,r4

loc_8c05d20a:
	mov.l @(r0,r14),r2
	cmp/pl r2
	bf loc_8c05d214
	mov.w @(loc_8c05d2da,PC),r1
	or r1,r4

loc_8c05d214:
	mov.w @(loc_8c05d2dc,PC),r0
	mov r13,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	extu.w r4,r3
	mov.w @(loc_8c05d2de,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05d2e0,PC),r0
	extu.b r2,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	mov 0xB4,r3
	mov.w @(loc_8c05d2e2,PC),r0
	mov.w r4,@(r0,r14)
	add 0xC6,r0
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05d252
	mov.l @r15+,r14

loc_8c05d246:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05d252:
	mov.w @(loc_8c05d2de,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d2e0,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c05d2f4
	mov.w @(loc_8c05d2e4,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d2f4
	mov.l @(loc_8c05d2f0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d2f4
	mov.w @(loc_8c05d2e6,PC),r0
	mov.b @(r0,r4),r5
	tst r5,r5
	bt loc_8c05d28e
	mov.w @(loc_8c05d2d2,PC),r0
	mov 0x02,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	neg r2,r2
	shad r2,r3
	tst r5,r3
	bf loc_8c05d2f4

loc_8c05d28e:
	mov.w @(loc_8c05d2ca,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05d2d0,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d2d2,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c05d2a2
	mov 0x34,r0
	fneg fr4

loc_8c05d2a2:
	fmov @(r0,r4),fr5
	fmov @(r0,r5),fr3
	mov.w @(loc_8c05d2d2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d2b6
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d2b6:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c05d2f4
	mov.w @(loc_8c05d2d6,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05d2e2,PC),r0
	mov.w r2,@(r0,r4)
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05d2ca:
	#data 0x020c
loc_8c05d2cc:
	#data 0x013e
loc_8c05d2ce:
	#data 0x04b4
loc_8c05d2d0:
	#data 0x044c
loc_8c05d2d2:
	#data 0x01d2
loc_8c05d2d4:
	#data 0x0800
loc_8c05d2d6:
	#data 0x0454
loc_8c05d2d8:
	#data 0x1000
loc_8c05d2da:
	#data 0x2000
loc_8c05d2dc:
	#data 0x043d
loc_8c05d2de:
	#data 0x01d0
loc_8c05d2e0:
	#data 0x0450
loc_8c05d2e2:
	#data 0x04dc
loc_8c05d2e4:
	#data 0x04a2
loc_8c05d2e6:
	#data 0x01fd
	#align4
loc_8c05d2e8:
	#data bank05.loc_8c05cb3e
loc_8c05d2ec:
	#data 0x3fd55555
loc_8c05d2f0:
	#data 0x8c28963c

;==============================================
loc_8c05d2f4:
	mov.w @(loc_8c05d3e2,PC),r0
	mov 0x00,r2
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d3e4,PC),r0
	mov.w r2,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05d308:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05d400,PC),r3
	jsr @r3
	mov 0x06,r5
	tst r0,r0
	bf loc_8c05d324
	bra loc_8c05d3d6
	mov 0x00,r0

loc_8c05d324:
	mov.l @(loc_8c05d404,PC),r11
	mov r13,r5
	mov 0x00,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d3e6,PC),r0
	mov r13,r5
	mov 0x03,r6
	mov.l @(r0,r14),r12
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d3e8,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.b @(r0,r12),r3
	mov.w @(loc_8c05d3ea,PC),r0
	extu.b r3,r3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mova @(loc_8c05d408,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05d3ec,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d3ea,PC),r0
	mov.l @(r0,r14),r3
	add 0xA0,r0
	mov.l r3,@(r0,r14)
	add 0xF8,r0
	fmov @(r0,r14),fr4
	mov.w @(loc_8c05d3ee,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf.s loc_8c05d372
	mov 0x34,r0
	fneg fr4

loc_8c05d372:
	fmov @(r0,r12),fr3
	fadd fr3,fr4
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c05d386
	mov.w @(loc_8c05d3f2,PC),r4
	mov 0x00,r2
	mov.w @(loc_8c05d3f0,PC),r0
	bra loc_8c05d38e
	mov.l r2,@(r0,r14)

loc_8c05d386:
	mov.w @(loc_8c05d3f0,PC),r0
	mov 0x01,r2
	mov.w @(loc_8c05d3f4,PC),r4
	mov.l r2,@(r0,r14)

loc_8c05d38e:
	mov.w @(loc_8c05d3f6,PC),r0
	mov.l @(r0,r14),r3
	cmp/pz r3
	bt.s loc_8c05d39c
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05d3f8,PC),r1
	or r1,r4

loc_8c05d39c:
	cmp/pl r3
	bf loc_8c05d3a4
	mov.w @(loc_8c05d3fa,PC),r1
	or r1,r4

loc_8c05d3a4:
	mov.w @(loc_8c05d3e2,PC),r0
	mov r13,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	extu.w r4,r3
	mov.w @(loc_8c05d3fc,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05d3fe,PC),r0
	extu.b r2,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	mov 0xB4,r3
	mov.w @(loc_8c05d3e4,PC),r0
	mov.w r4,@(r0,r14)
	add 0xC6,r0
	mov.b r3,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05d40c
	mov.l @r15+,r14

loc_8c05d3d6:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05d3e2:
	#data 0x043d
loc_8c05d3e4:
	#data 0x04dc
loc_8c05d3e6:
	#data 0x020c
loc_8c05d3e8:
	#data 0x013e
loc_8c05d3ea:
	#data 0x04b4
loc_8c05d3ec:
	#data 0x044c
loc_8c05d3ee:
	#data 0x01d2
loc_8c05d3f0:
	#data 0x0458
loc_8c05d3f2:
	#data 0x0800
loc_8c05d3f4:
	#data 0x0400
loc_8c05d3f6:
	#data 0x0454
loc_8c05d3f8:
	#data 0x1000
loc_8c05d3fa:
	#data 0x2000
loc_8c05d3fc:
	#data 0x01d0
loc_8c05d3fe:
	#data 0x0450
	#align4
loc_8c05d400:
	#data bank05.loc_8c05cc14
loc_8c05d404:
	#data bank05.loc_8c05cb3e
loc_8c05d408:
	#data 0x3fd55555

;==============================================
loc_8c05d40c:
	mov.w @(loc_8c05d4c6,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d4c8,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c05d496
	mov.w @(loc_8c05d4ca,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d496
	mov.l @(loc_8c05d4e0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d496
	mov.w @(loc_8c05d4cc,PC),r0
	mov 0x02,r5
	mov.b @(r0,r4),r6
	add 0xD5,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	neg r3,r3
	shad r3,r5
	mov.w @(loc_8c05d4ce,PC),r3
	mov r3,r0
	nop
	add 0x54,r0
	mov.l @(r0,r4),r2
	tst r3,r2
	bt loc_8c05d452
	mov 0x03,r2
	xor r2,r5

loc_8c05d452:
	tst r6,r6
	bt loc_8c05d45a
	tst r6,r5
	bf loc_8c05d496

loc_8c05d45a:
	mov.w @(loc_8c05d4d0,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05d4d2,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d4d4,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c05d46e
	mov 0x34,r0
	fneg fr4

loc_8c05d46e:
	fmov @(r0,r4),fr5
	fmov @(r0,r5),fr3
	mov.w @(loc_8c05d4d6,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d482
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d482:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c05d496
	mov.w @(loc_8c05d4d8,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05d4da,PC),r0
	mov.w r2,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05d496:
	mov.w @(loc_8c05d4dc,PC),r0
	mov 0x00,r2
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d4da,PC),r0
	mov.w r2,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05d4aa:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05d4e4,PC),r3
	jsr @r3
	mov 0x06,r5
	tst r0,r0
	bf loc_8c05d4e8
	bra loc_8c05d582
	mov 0x00,r0

;##############################################
loc_8c05d4c6:
	#data 0x01d0
loc_8c05d4c8:
	#data 0x0450
loc_8c05d4ca:
	#data 0x04a2
loc_8c05d4cc:
	#data 0x01fd
loc_8c05d4ce:
	#data 0x0400
loc_8c05d4d0:
	#data 0x020c
loc_8c05d4d2:
	#data 0x044c
loc_8c05d4d4:
	#data 0x01d2
loc_8c05d4d6:
	#data 0x0458
loc_8c05d4d8:
	#data 0x0454
loc_8c05d4da:
	#data 0x04dc
loc_8c05d4dc:
	#data 0x043d
	#align4
loc_8c05d4e0:
	#data 0x8c28963c
loc_8c05d4e4:
	#data bank05.loc_8c05cc14

;----------------------------------------------
loc_8c05d4e8:
	mov.l @(loc_8c05d5a8,PC),r11
	mov r13,r5
	mov 0x00,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d58e,PC),r0
	mov r13,r5
	mov 0x03,r6
	mov.l @(r0,r14),r12
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d590,PC),r0
	mov r13,r5
	mov 0x04,r6
	mov.b @(r0,r12),r3
	mov.w @(loc_8c05d592,PC),r0
	extu.b r3,r3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mova @(loc_8c05d5ac,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05d594,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d592,PC),r0
	fmov @(r0,r14),fr3
	add 0x9C,r0
	fmov fr3,@(r0,r14)
	add 0xFC,r0
	fmov @(r0,r14),fr4
	mov.w @(loc_8c05d596,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf.s loc_8c05d536
	mov 0x34,r0
	fneg fr4

loc_8c05d536:
	fmov @(r0,r12),fr3
	fadd fr3,fr4
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c05d54a
	mov.w @(loc_8c05d59a,PC),r4
	mov 0x00,r2
	mov.w @(loc_8c05d598,PC),r0
	bra loc_8c05d552
	mov.l r2,@(r0,r14)

loc_8c05d54a:
	mov.w @(loc_8c05d598,PC),r0
	mov 0x01,r2
	mov.w @(loc_8c05d59c,PC),r4
	mov.l r2,@(r0,r14)

loc_8c05d552:
	mov.w @(loc_8c05d59e,PC),r0
	mov r13,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	extu.w r4,r3
	mov.w @(loc_8c05d5a0,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05d5a2,PC),r0
	mov.b r2,@(r0,r14)
	add 0xB1,r0
	mov.l r3,@(r0,r14)
	mov 0xB4,r3
	mov.w @(loc_8c05d5a4,PC),r0
	mov.w r4,@(r0,r14)
	add 0xC6,r0
	mov.b r3,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05d5b0
	mov.l @r15+,r14

loc_8c05d582:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05d58e:
	#data 0x020c
loc_8c05d590:
	#data 0x013e
loc_8c05d592:
	#data 0x04b4
loc_8c05d594:
	#data 0x044c
loc_8c05d596:
	#data 0x01d2
loc_8c05d598:
	#data 0x0458
loc_8c05d59a:
	#data 0x0800
loc_8c05d59c:
	#data 0x0400
loc_8c05d59e:
	#data 0x043d
loc_8c05d5a0:
	#data 0x01d0
loc_8c05d5a2:
	#data 0x04a3
loc_8c05d5a4:
	#data 0x04dc
	#align4
loc_8c05d5a8:
	#data bank05.loc_8c05cb3e
loc_8c05d5ac:
	#data 0x3fd55555

;==============================================
loc_8c05d5b0:
	mov.w @(loc_8c05d690,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d692,PC),r0
	extu.b r3,r3
	mov.b @(r0,r4),r2
	cmp/eq r2,r3
	bf.s loc_8c05d664
	mov 0x00,r7
	mov.w @(loc_8c05d694,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d664
	mov.l @(loc_8c05d6b0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d664
	mov.w @(loc_8c05d696,PC),r0
	mov 0x02,r5
	mov.b @(r0,r4),r6
	add 0xD5,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	neg r3,r3
	shad r3,r5
	mov.w @(loc_8c05d698,PC),r3
	mov r3,r0
	nop
	add 0x54,r0
	mov.l @(r0,r4),r2
	tst r3,r2
	bt loc_8c05d5f8
	mov 0x03,r2
	xor r2,r5

loc_8c05d5f8:
	tst r6,r6
	bt loc_8c05d600
	tst r6,r5
	bf loc_8c05d664

loc_8c05d600:
	mov.w @(loc_8c05d69a,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05d69c,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d69e,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c05d614
	mov 0x34,r0
	fneg fr4

loc_8c05d614:
	fmov @(r0,r4),fr5
	fmov @(r0,r5),fr3
	mov.w @(loc_8c05d6a0,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d628
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d628:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr5,fr3
	bt loc_8c05d664
	mov.w @(loc_8c05d6a2,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fsub fr3,fr2
	fmov @(r0,r4),fr3
	mova @(loc_8c05d6b4,PC),r0
	fmov fr2,fr4
	fsub fr3,fr4
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bf.s loc_8c05d64c
	mov r7,r6
	mov.w @(loc_8c05d6a4,PC),r6

loc_8c05d64c:
	mova @(loc_8c05d6b8,PC),r0
	fmov @r0,fr3
	fcmp/gt fr3,fr4
	bf loc_8c05d656
	mov.w @(loc_8c05d6a6,PC),r6

loc_8c05d656:
	mov.w @(loc_8c05d6a8,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05d6aa,PC),r0
	or r2,r6
	mov.w r6,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05d664:
	mov.w @(loc_8c05d6ac,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d6aa,PC),r0
	mov.w r7,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05d676:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05d6bc,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05d6c0
	bra loc_8c05d70a
	mov 0x00,r0

;##############################################
loc_8c05d690:
	#data 0x01d0
loc_8c05d692:
	#data 0x04a3
loc_8c05d694:
	#data 0x04a2
loc_8c05d696:
	#data 0x01fd
loc_8c05d698:
	#data 0x0400
loc_8c05d69a:
	#data 0x020c
loc_8c05d69c:
	#data 0x044c
loc_8c05d69e:
	#data 0x01d2
loc_8c05d6a0:
	#data 0x0458
loc_8c05d6a2:
	#data 0x0450
loc_8c05d6a4:
	#data 0x2000
loc_8c05d6a6:
	#data 0x1000
loc_8c05d6a8:
	#data 0x0454
loc_8c05d6aa:
	#data 0x04dc
loc_8c05d6ac:
	#data 0x043d
	#align4
loc_8c05d6b0:
	#data 0x8c28963c
loc_8c05d6b4:
	#data 0xc24db6db
loc_8c05d6b8:
	#data 0x424db6db
loc_8c05d6bc:
	#data bank05.loc_8c05cc14

;----------------------------------------------
loc_8c05d6c0:
	mov.l @(loc_8c05d804,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05d804,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05d7e6,PC),r0
	mov.l @(loc_8c05d808,PC),r3
	mov.l @(r0,r14),r12
	mov.l @(loc_8c05d80c,PC),r2
	shll2 r12
	shll2 r12
	shll r12
	shll r12
	jsr @r2
	add r3,r12
	and 0x1F,r0
	mov r13,r5
	shll r0
	mov r14,r4
	mov.w @(r0,r12),r3
	mova @(loc_8c05d810,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(loc_8c05d7e8,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05d84c
	mov.l @r15+,r14

loc_8c05d70a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05d714:
	mov.w @(loc_8c05d7ea,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d7ec,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c05d7ba
	mov.w @(loc_8c05d7ee,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d7ba
	mov.l @(loc_8c05d814,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d7ba
	mov.w @(loc_8c05d7f0,PC),r0
	mov 0x02,r5
	mov.b @(r0,r4),r6
	add 0xD5,r0
	mov.b @(r0,r4),r3
	add 0x01,r0
	mov.b @(r0,r4),r2
	extu.b r3,r3
	tst r2,r2
	neg r3,r3
	bt.s loc_8c05d754
	shad r3,r5
	mov 0x03,r2
	xor r2,r5

loc_8c05d754:
	tst r6,r6
	bt loc_8c05d75c
	tst r6,r5
	bf loc_8c05d7ba

loc_8c05d75c:
	mov.w @(loc_8c05d7f2,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05d7e8,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d7f4,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c05d770
	mov 0x34,r0
	fneg fr4

loc_8c05d770:
	fmov @(r0,r4),fr5
	fmov @(r0,r5),fr3
	mov.w @(loc_8c05d7f6,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d784
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d784:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c05d7ba
	mov.w @(loc_8c05d7f4,PC),r0
	mov.b @(r0,r4),r2
	mov.w @(loc_8c05d7f8,PC),r0
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(r0,r4),r1
	shll8 r2
	mov.w @(loc_8c05d7fa,PC),r3
	shll2 r2
	mov.w @(loc_8c05d7fc,PC),r0
	xor r1,r2
	mov 0xF6,r1
	and r3,r2
	shad r1,r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c05d7f8,PC),r0
	mov.w @(r0,r4),r1
	mov.w @(loc_8c05d7fe,PC),r0
	mov.w r1,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05d7ba:
	mov.w @(loc_8c05d800,PC),r0
	mov 0x00,r2
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d7fe,PC),r0
	mov.w r2,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05d7ce:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05d818,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05d81c
	bra loc_8c05d844
	mov 0x00,r0

;##############################################
loc_8c05d7e6:
	#data 0x04b4
loc_8c05d7e8:
	#data 0x044c
loc_8c05d7ea:
	#data 0x01d0
loc_8c05d7ec:
	#data 0x0454
loc_8c05d7ee:
	#data 0x04a2
loc_8c05d7f0:
	#data 0x01fd
loc_8c05d7f2:
	#data 0x020c
loc_8c05d7f4:
	#data 0x01d2
loc_8c05d7f6:
	#data 0x0458
loc_8c05d7f8:
	#data 0x0450
loc_8c05d7fa:
	#data 0x0400
loc_8c05d7fc:
	#data 0x01d3
loc_8c05d7fe:
	#data 0x04dc
loc_8c05d800:
	#data 0x043d
	#align4
loc_8c05d804:
	#data bank05.loc_8c05cb3e
loc_8c05d808:
	#data bank15.loc_8c151488
loc_8c05d80c:
	#data bank03.loc_8c03319e
loc_8c05d810:
	#data 0x3fd55555
loc_8c05d814:
	#data 0x8c28963c
loc_8c05d818:
	#data bank05.loc_8c05cc14

;----------------------------------------------
loc_8c05d81c:
	mov.l @(loc_8c05d958,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05d958,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05d93a,PC),r0
	mov r13,r5
	mov r14,r4
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05d93c,PC),r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05d84c
	mov.l @r15+,r14

loc_8c05d844:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05d84c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05d93e,PC),r0
	mov r4,r14
	mov.w @(loc_8c05d940,PC),r3
	mov.l @(loc_8c05d95c,PC),r1
	mov.l r5,@r15
	mov.l @(r0,r14),r4
	mov.w @(loc_8c05d93c,PC),r0
	add r4,r3
	mov.b @r3,r3
	fmov @(r0,r14),fr2
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr4
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c05d882
	mov 0x34,r0
	fneg fr4

loc_8c05d882:
	fmov @(r0,r4),fr3
	fadd fr3,fr4
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c05d8b4
	mov.w @(loc_8c05d944,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x26,r0
	bf loc_8c05d89e
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05d8c6

loc_8c05d89e:
	mov.w @(loc_8c05d948,PC),r0
	mov 0x00,r3
	mov.w @(loc_8c05d946,PC),r2
	mov.l r2,@(r0,r14)
	add 0x08,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r14),r2
	add 0x01,r0
	bra loc_8c05d8ec
	mov.b r2,@(r0,r14)

loc_8c05d8b4:
	mov.w @(loc_8c05d944,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x26,r0
	bf loc_8c05d8d0
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05d8d0

loc_8c05d8c6:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05d8d0:
	mov.w @(loc_8c05d94a,PC),r3
	mov r3,r0
	nop
	add 0x50,r0
	mov.w @(loc_8c05d94c,PC),r1
	mov.l r3,@(r0,r14)
	add 0x08,r0
	mov 0x01,r2
	mov.l r2,@(r0,r14)
	add r14,r1
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r14),r0
	xor 0x01,r0
	mov.b r0,@r1

loc_8c05d8ec:
	mov.w @(loc_8c05d94e,PC),r0
	mov 0x01,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xDF,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov 0x01,r3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05d950,PC),r0
	mov.l r3,@(r0,r14)
	add 0xFC,r0
	mov.w @(r0,r14),r2
	mov 0xB4,r3
	mov.w @(loc_8c05d952,PC),r0
	mov.w r2,@(r0,r14)
	add 0xC6,r0
	mov.b r3,@(r0,r14)
	add 0x3A,r0
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05d954,PC),r0
	mov.l @(loc_8c05d960,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05d954,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c05d714
	mov.l @r15+,r14

loc_8c05d932:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c05d93a:
	#data 0x04b4
loc_8c05d93c:
	#data 0x044c
loc_8c05d93e:
	#data 0x020c
loc_8c05d940:
	#data 0x013e
loc_8c05d942:
	#data 0x01d2
loc_8c05d944:
	#data 0x0440
loc_8c05d946:
	#data 0x0800
loc_8c05d948:
	#data 0x0450
loc_8c05d94a:
	#data 0x0400
loc_8c05d94c:
	#data 0x01d3
loc_8c05d94e:
	#data 0x043d
loc_8c05d950:
	#data 0x0454
loc_8c05d952:
	#data 0x04dc
loc_8c05d954:
	#data 0x034a
	#align4
loc_8c05d958:
	#data bank05.loc_8c05cb3e
loc_8c05d95c:
	#data 0x3fd55555
loc_8c05d960:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c05d964:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05da68,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05d97c
	bra loc_8c05d9c8
	mov 0x00,r0

loc_8c05d97c:
	mov.l @(loc_8c05da6c,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05da6c,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05da5c,PC),r0
	mov 0x00,r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x0A,r3
	mov.w @(loc_8c05da5e,PC),r0
	mov r3,r5
	fmov @(r0,r14),fr3
	add 0x98,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05da60,PC),r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l @(loc_8c05da70,PC),r3
	mov.l r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05ce1c
	mov.l @r15+,r14

loc_8c05d9c8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05d9d0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05da68,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bt loc_8c05da18
	mov.l @(loc_8c05da6c,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05da6c,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05da74,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05da18
	mov.w @(loc_8c05da62,PC),r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c05da1c
	mov.w @(loc_8c05da64,PC),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	shad r2,r3
	tst r4,r3
	bt loc_8c05da1c

loc_8c05da18:
	bra loc_8c05da54
	mov 0x00,r0

loc_8c05da1c:
	mov.w @(loc_8c05da5c,PC),r0
	mov 0x00,r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0x77,r0
	fmov @(r0,r14),fr3
	add 0x98,r0
	mov 0x0B,r3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov r3,r5
	mov.w @(loc_8c05da60,PC),r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l @(loc_8c05da70,PC),r3
	mov.l r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05da78
	mov.l @r15+,r14

loc_8c05da54:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05da5c:
	#data 0x043d
loc_8c05da5e:
	#data 0x04b4
loc_8c05da60:
	#data 0x0450
loc_8c05da62:
	#data 0x01fd
loc_8c05da64:
	#data 0x01d2
	#align4
loc_8c05da68:
	#data bank05.loc_8c05cc14
loc_8c05da6c:
	#data bank05.loc_8c05cb3e
loc_8c05da70:
	#data bank05.loc_8c0532a8
loc_8c05da74:
	#data bank05.loc_8c05c41a

;==============================================
loc_8c05da78:
	mov.w @(loc_8c05db8c,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05db8e,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c05dae0
	mov.w @(loc_8c05db90,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8c05daa6
	mov.w @(loc_8c05db92,PC),r0
	mov.b @(r0,r4),r5
	tst r5,r5
	bt loc_8c05daa6
	mov.w @(loc_8c05db94,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	shad r2,r3
	tst r5,r3
	bf loc_8c05dae0

loc_8c05daa6:
	mov.w @(loc_8c05db96,PC),r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c05dab8
	fneg fr4

loc_8c05dab8:
	mov.w @(loc_8c05db98,PC),r0
	fldi0 fr2
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c05dae0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r2
	mov.w @(loc_8c05db96,PC),r0
	fmov fr3,@(r0,r4)
	add 0x08,r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8c05db9a,PC),r0
	mov.w r3,@(r0,r4)
	mov.w @(loc_8c05db9c,PC),r0
	mov.b r2,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05dae0:
	mov.w @(loc_8c05db9e,PC),r0
	mov 0x00,r2
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05db9a,PC),r0
	mov.w r2,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05daf4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05dba8,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05db0c
	bra loc_8c05db6a
	mov 0x00,r0

loc_8c05db0c:
	mov.l @(loc_8c05dbac,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05dbac,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05dba0,PC),r0
	mov 0x00,r2
	mov 0x0A,r5
	mov.l @(r0,r14),r4
	mov.w @(loc_8c05db9e,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05dba2,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05dba4,PC),r0
	extu.b r3,r3
	lds r3,fpul
	mov 0x0A,r3
	fmov @(r0,r14),fr2
	mova @(loc_8c05dbb0,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05db98,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	add 0x08,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l r2,@(r0,r14)
	add 0x4A,r0
	mov 0xB4,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c05dbb4,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05d0d6
	mov.l @r15+,r14

loc_8c05db6a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05db72:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05dba8,PC),r3
	jsr @r3
	mov 0x07,r5
	tst r0,r0
	bf loc_8c05dbb8
	bra loc_8c05dc4c
	mov 0x00,r0

;##############################################
loc_8c05db8c:
	#data 0x01d0
loc_8c05db8e:
	#data 0x0454
loc_8c05db90:
	#data 0x0440
loc_8c05db92:
	#data 0x01fd
loc_8c05db94:
	#data 0x01d2
loc_8c05db96:
	#data 0x0450
loc_8c05db98:
	#data 0x044c
loc_8c05db9a:
	#data 0x04dc
loc_8c05db9c:
	#data 0x01d3
loc_8c05db9e:
	#data 0x043d
loc_8c05dba0:
	#data 0x020c
loc_8c05dba2:
	#data 0x013e
loc_8c05dba4:
	#data 0x04b4
	#align4
loc_8c05dba8:
	#data bank05.loc_8c05cc14
loc_8c05dbac:
	#data bank05.loc_8c05cb3e
loc_8c05dbb0:
	#data 0x3fd55555
loc_8c05dbb4:
	#data bank05.loc_8c0532a8

;----------------------------------------------
loc_8c05dbb8:
	mov.l @(loc_8c05dd34,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05dd22,PC),r0
	mov.l @(r0,r14),r3
	mov 0x22,r0
	shar r3
	shar r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05dd22,PC),r0
	mov.w @(loc_8c05dd24,PC),r3
	mov.l @(r0,r14),r2
	add 0xA4,r0
	shll8 r2
	mov.l r2,@(r0,r14)
	mov.l @(r0,r14),r1
	tst r3,r1
	bt.s loc_8c05dc02
	mov 0x03,r6
	mov.w @(loc_8c05dd26,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05dd28,PC),r0
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov.l @(r0,r14),r1
	shll8 r2
	shll2 r2
	xor r1,r2
	mov.l r2,@(r0,r14)

loc_8c05dc02:
	mov r13,r5
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05dd2a,PC),r0
	mov 0x1A,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0x77,r0
	fmov @(r0,r14),fr3
	add 0x98,r0
	mov 0x1A,r3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05dd2c,PC),r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05dd2e,PC),r0
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05dd28,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(loc_8c05dd30,PC),r0
	mov.w r3,@(r0,r14)
	mov.l @(loc_8c05dd38,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ce1c
	mov.l @r15+,r14

loc_8c05dc4c:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05dc56:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dc78:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dc9a:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dcbc:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dcde:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dd00:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05dd22:
	#data 0x04b4
loc_8c05dd24:
	#data 0x0c00
loc_8c05dd26:
	#data 0x01d2
loc_8c05dd28:
	#data 0x0458
loc_8c05dd2a:
	#data 0x043d
loc_8c05dd2c:
	#data 0x0450
loc_8c05dd2e:
	#data 0x04dc
loc_8c05dd30:
	#data 0x01fa
	#align4
loc_8c05dd34:
	#data bank05.loc_8c05cb3e
loc_8c05dd38:
	#data bank05.loc_8c0532a8

;==============================================
loc_8c05dd3c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05de44,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05dd5c
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05dd5c:
	mov.l @(loc_8c05de48,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05de34,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x06,r0
	bt.s loc_8c05dd88
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c05dd88
	mov.w @(loc_8c05de36,PC),r0
	mov 0x01,r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05de38,PC),r0
	mov.b r3,@(r0,r14)

loc_8c05dd88:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05dd92:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05de44,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05ddb2
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05ddb2:
	mov.l @(loc_8c05de48,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05de34,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c05dddc
	mov r4,r0
	nop
	cmp/eq 0x07,r0
	bt loc_8c05dddc
	mov.w @(loc_8c05de36,PC),r0
	mov 0x00,r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05de38,PC),r0
	mov.b r3,@(r0,r14)

loc_8c05dddc:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05dde6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05de4c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05de8a
	mov.l @(loc_8c05de48,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05de48,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05de3a,PC),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c05de28
	mov.w @(loc_8c05de3c,PC),r1
	cmp/eq r1,r0
	bt loc_8c05de2e
	cmp/eq 0x01,r0
	bt loc_8c05de50
	bra loc_8c05de52
	nop

loc_8c05de28:
	mov.w @(loc_8c05de3e,PC),r13
	bra loc_8c05de52
	nop

loc_8c05de2e:
	mov.w @(loc_8c05de40,PC),r13
	bra loc_8c05de52
	nop

;##############################################
loc_8c05de34:
	#data 0x01d0
loc_8c05de36:
	#data 0x041c
loc_8c05de38:
	#data 0x0446
loc_8c05de3a:
	#data 0x04b4
loc_8c05de3c:
	#data 0x00ff
loc_8c05de3e:
	#data 0x2800
loc_8c05de40:
	#data 0x2000
	#align4
loc_8c05de44:
	#data bank05.loc_8c05cc1a
loc_8c05de48:
	#data bank05.loc_8c05cb3e
loc_8c05de4c:
	#data bank05.loc_8c05cc14

;----------------------------------------------
loc_8c05de50:
	mov.w @(loc_8c05df2a,PC),r13

loc_8c05de52:
	mov.w @(loc_8c05df2c,PC),r0
	mov 0x02,r5
	mov.l @(loc_8c05df40,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05df2e,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05df30,PC),r0
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05df30,PC),r0
	mov 0x00,r2
	extu.w r13,r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05df32,PC),r2
	tst r2,r3
	bt loc_8c05de86
	mov.w @(loc_8c05df34,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05de86:
	mov.w @(loc_8c05df36,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05de8a:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05de96:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05df44,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05df1e
	mov.l @(loc_8c05df48,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05df48,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05df2c,PC),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c05ded8
	mov.w @(loc_8c05df38,PC),r1
	cmp/eq r1,r0
	bt loc_8c05dede
	cmp/eq 0x01,r0
	bt loc_8c05dee4
	bra loc_8c05dee6
	nop

loc_8c05ded8:
	mov.w @(loc_8c05df3a,PC),r13
	bra loc_8c05dee6
	nop

loc_8c05dede:
	mov.w @(loc_8c05df3c,PC),r13
	bra loc_8c05dee6
	nop
 
loc_8c05dee4:
	mov.w @(loc_8c05df2a,PC),r13

loc_8c05dee6:
	mov.w @(loc_8c05df2c,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c05df40,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05df2e,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05df30,PC),r0
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05df30,PC),r0
	mov 0x00,r2
	extu.w r13,r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05df32,PC),r2
	tst r2,r3
	bt loc_8c05df1a
	mov.w @(loc_8c05df34,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05df1a:
	mov.w @(loc_8c05df36,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05df1e:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05df2a:
	#data 0x2400
loc_8c05df2c:
	#data 0x04b4
loc_8c05df2e:
	#data 0x01d3
loc_8c05df30:
	#data 0x034a
loc_8c05df32:
	#data 0x0c00
loc_8c05df34:
	#data 0x01d2
loc_8c05df36:
	#data 0x04dc
loc_8c05df38:
	#data 0x00ff
loc_8c05df3a:
	#data 0x2800
loc_8c05df3c:
	#data 0x2000
	#align4
loc_8c05df40:
	#data bank05.loc_8c0532a8
loc_8c05df44:
	#data bank05.loc_8c05cc14
loc_8c05df48:
	#data bank05.loc_8c05cb3e

;==============================================
loc_8c05df4c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e058,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05dfd4
	mov.l @(loc_8c05e05c,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e05c,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e042,PC),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c05df8e
	mov.w @(loc_8c05e044,PC),r1
	cmp/eq r1,r0
	bt loc_8c05df94
	cmp/eq 0x01,r0
	bt loc_8c05df9a
	bra loc_8c05df9c
	nop

loc_8c05df8e:
	mov.w @(loc_8c05e046,PC),r13
	bra loc_8c05df9c
	nop

loc_8c05df94:
	mov.w @(loc_8c05e048,PC),r13
	bra loc_8c05df9c
	nop

loc_8c05df9a:
	mov.w @(loc_8c05e04a,PC),r13

loc_8c05df9c:
	mov.w @(loc_8c05e042,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c05e060,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05e04c,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05e04e,PC),r0
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e04e,PC),r0
	mov 0x00,r2
	extu.w r13,r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05e050,PC),r2
	tst r2,r3
	bt loc_8c05dfd0
	mov.w @(loc_8c05e052,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05dfd0:
	mov.w @(loc_8c05e054,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05dfd4:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05dfe0:
	mov.w @(loc_8c05e056,PC),r0
	mov 0x10,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r14),r2
	mov 0x00,r5
	mov.l @(loc_8c05e058,PC),r1
	or r3,r2
	mov.b r2,@(r0,r14)
	jsr @r1
	mov r14,r4
	tst r0,r0
	bt loc_8c05e0a2
	mov.l @(loc_8c05e064,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c05e0a2
	mov.l @(loc_8c05e05c,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e05c,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e042,PC),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c05e036
	mov.w @(loc_8c05e044,PC),r1
	cmp/eq r1,r0
	bt loc_8c05e03c
	cmp/eq 0x01,r0
	bt loc_8c05e068
	bra loc_8c05e06a
	nop

loc_8c05e036:
	mov.w @(loc_8c05e046,PC),r13
	bra loc_8c05e06a
	nop

loc_8c05e03c:
	mov.w @(loc_8c05e048,PC),r13
	bra loc_8c05e06a
	nop

;##############################################
loc_8c05e042:
	#data 0x04b4
loc_8c05e044:
	#data 0x00ff
loc_8c05e046:
	#data 0x2800
loc_8c05e048:
	#data 0x2000
loc_8c05e04a:
	#data 0x2400
loc_8c05e04c:
	#data 0x01d3
loc_8c05e04e:
	#data 0x034a
loc_8c05e050:
	#data 0x0c00
loc_8c05e052:
	#data 0x01d2
loc_8c05e054:
	#data 0x04dc
loc_8c05e056:
	#data 0x0495
	#align4
loc_8c05e058:
	#data bank05.loc_8c05cc1a
loc_8c05e05c:
	#data bank05.loc_8c05cb3e
loc_8c05e060:
	#data bank05.loc_8c0532a8
loc_8c05e064:
	#data bank05.loc_8c05ccb6

;----------------------------------------------
loc_8c05e068:
	mov.w @(loc_8c05e19a,PC),r13

loc_8c05e06a:
	mov.w @(loc_8c05e19c,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c05e1b0,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05e19e,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05e1a0,PC),r0
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e1a0,PC),r0
	mov 0x00,r2
	extu.w r13,r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05e1a2,PC),r2
	tst r2,r3
	bt loc_8c05e09e
	mov.w @(loc_8c05e1a4,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05e09e:
	mov.w @(loc_8c05e1a6,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05e0a2:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e0ac:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e1b4,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05e0e8
	mov.l @(loc_8c05e1b8,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e1b8,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e19c,PC),r0
	mov 0x02,r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05e19e,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05e1a8,PC),r0
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)

loc_8c05e0e8:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e0f2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e1bc,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e10a
	bra loc_8c05e13a
	mov 0x00,r0

loc_8c05e10a:
	mov.l @(loc_8c05e1b8,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e1b8,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e1aa,PC),r0
	mov r13,r5
	mov r14,r4
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05e19c,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05e1c4
	mov.l @r15+,r14

loc_8c05e13a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e142:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e1bc,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e15a
	bra loc_8c05e192
	mov 0x00,r0

loc_8c05e15a:
	mov.l @(loc_8c05e1b8,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e1b8,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e1aa,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05e19c,PC),r0
	mov.l @(loc_8c05e1c0,PC),r3
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e1ac,PC),r1
	mov r13,r5
	mov r14,r4
	add r14,r1
	mov.l r0,@r1
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05e1c4
	mov.l @r15+,r14

loc_8c05e192:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05e19a:
	#data 0x2400
loc_8c05e19c:
	#data 0x04b4
loc_8c05e19e:
	#data 0x01d3
loc_8c05e1a0:
	#data 0x034a
loc_8c05e1a2:
	#data 0x0c00
loc_8c05e1a4:
	#data 0x01d2
loc_8c05e1a6:
	#data 0x04dc
loc_8c05e1a8:
	#data 0x04a6
loc_8c05e1aa:
	#data 0x043d
loc_8c05e1ac:
	#data 0x044c
	#align4
loc_8c05e1b0:
	#data bank05.loc_8c0532a8
loc_8c05e1b4:
	#data bank05.loc_8c05cc14
loc_8c05e1b8:
	#data bank05.loc_8c05cb3e
loc_8c05e1bc:
	#data bank05.loc_8c05cc1a
loc_8c05e1c0:
	#data bank05.loc_8c05bfe4

;==============================================
loc_8c05e1c4:
	mov.w @(loc_8c05e2d2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05e1e6
	mov.w @(loc_8c05e2d4,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bf loc_8c05e1e0
	mov.w @(loc_8c05e2d6,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	rts
	mov 0x01,r0

loc_8c05e1e0:
	mov.l @(r0,r4),r2
	add 0xFF,r2
	mov.l r2,@(r0,r4)

loc_8c05e1e6:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c05e1ec:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e2e0,PC),r3
	jsr @r3
	mov 0x05,r5
	tst r0,r0
	bf loc_8c05e204
	bra loc_8c05e234
	mov 0x00,r0

loc_8c05e204:
	mov.l @(loc_8c05e2e4,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e2e4,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e2d6,PC),r0
	mov r13,r5
	mov r14,r4
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05e2d8,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05e1c4
	mov.l @r15+,r14

loc_8c05e234:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e23c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e2e4,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e2e4,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e2d8,PC),r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bf loc_8c05e26c
	mov.l @(loc_8c05e2e8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c05e2ec,PC),r1
	and 0x03,r0
	mov.b @(r0,r1),r4

loc_8c05e26c:
	mov.w @(loc_8c05e2da,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e27a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e2e4,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e2e4,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e2d8,PC),r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bf loc_8c05e2aa
	mov.l @(loc_8c05e2e8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c05e2f0,PC),r1
	and 0x03,r0
	mov.b @(r0,r1),r4

loc_8c05e2aa:
	mov.w @(loc_8c05e2dc,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e2b8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05e2e0,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e2f4
	bra loc_8c05e3ba
	mov 0x00,r0

;##############################################
loc_8c05e2d2:
	#data 0x01a0
loc_8c05e2d4:
	#data 0x044c
loc_8c05e2d6:
	#data 0x043d
loc_8c05e2d8:
	#data 0x04b4
loc_8c05e2da:
	#data 0x045e
loc_8c05e2dc:
	#data 0x04a4
	#align4
loc_8c05e2e0:
	#data bank05.loc_8c05cc1a
loc_8c05e2e4:
	#data bank05.loc_8c05cb3e
loc_8c05e2e8:
	#data bank03.loc_8c03319e
loc_8c05e2ec:
	#data bank15.loc_8c1515c8
loc_8c05e2f0:
	#data bank15.loc_8c1515cc

;----------------------------------------------
loc_8c05e2f4:
	mov.l @(loc_8c05e438,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x03,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	mov r13,r5
	mov 0x04,r6
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05e428,PC),r0
	fmov fr3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	mov r13,r5
	mov 0x03,r6
	fmov @(r0,r14),fr3
	add 0x9C,r0
	fmov fr3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	mov r13,r5
	mov 0x04,r6
	fmov @(r0,r14),fr3
	add 0xA0,r0
	fmov fr3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	fmov @(r0,r14),fr3
	add 0xA4,r0
	fmov fr3,@(r0,r14)
	add 0xF4,r0
	fmov @(r0,r14),fr2
	fldi0 fr3
	fcmp/eq fr3,fr2
	bt loc_8c05e36c
	mov.w @(loc_8c05e42a,PC),r0
	fmov @(r0,r14),fr5
	add 0xF8,r0
	fmov @(r0,r14),fr6
	fmov fr5,fr4
	fadd fr6,fr5
	fsub fr6,fr4
	fcmp/gt fr5,fr4
	bf loc_8c05e360
	fmov fr4,fr6
	fmov fr5,fr4
	fmov fr6,fr5

loc_8c05e360:
	mov.w @(loc_8c05e42c,PC),r0
	fmov @(r0,r14),fr6
	fcmp/gt fr6,fr4
	bt loc_8c05e39a
	fcmp/gt fr5,fr6
	bt loc_8c05e39a

loc_8c05e36c:
	mov.w @(loc_8c05e42e,PC),r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bt loc_8c05e3aa
	mov.w @(loc_8c05e430,PC),r0
	fmov @(r0,r14),fr5
	add 0xF8,r0
	fmov @(r0,r14),fr6
	fmov fr5,fr4
	fadd fr6,fr5
	fsub fr6,fr4
	fcmp/gt fr5,fr4
	bf loc_8c05e38e
	fmov fr4,fr6
	fmov fr5,fr4
	fmov fr6,fr5

loc_8c05e38e:
	mov.w @(loc_8c05e432,PC),r0
	fmov @(r0,r14),fr6
	fcmp/gt fr6,fr4
	bt loc_8c05e39a
	fcmp/gt fr5,fr6
	bf loc_8c05e3aa

loc_8c05e39a:
	lds.l @r15+,pr
	mov r13,r5
	mov 0x00,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e3aa:
	lds.l @r15+,pr
	mov r13,r5
	mov 0x01,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e3ba:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e3c4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e43c,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e3de
	bra loc_8c05e41c
	mov 0x00,r0

loc_8c05e3de:
	mov.l @(loc_8c05e438,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e438,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05e428,PC),r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05e434,PC),r0
	mov.l @(loc_8c05e440,PC),r3
	mov.l @(r0,r14),r2
	mov.w @(loc_8c05e428,PC),r0
	mov.l r2,@r15
	mov r2,r5
	mov.l @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov r13,r5
	mov r0,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e41c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c05e426:
	#data 0x04b4
loc_8c05e428:
	#data 0x044c
loc_8c05e42a:
	#data 0x0454
loc_8c05e42c:
	#data 0x0484
loc_8c05e42e:
	#data 0x0450
loc_8c05e430:
	#data 0x0458
loc_8c05e432:
	#data 0x048c
loc_8c05e434:
	#data 0x020c
	#align4
loc_8c05e438:
	#data bank05.loc_8c05cb3e
loc_8c05e43c:
	#data bank05.loc_8c05cc1a
loc_8c05e440:
	#data bank05.loc_8c05c6c8

;==============================================
loc_8c05e444:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05e54c,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e45e
	bra loc_8c05e49a
	mov 0x00,r0

loc_8c05e45e:
	mov.l @(loc_8c05e550,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e554,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf.s loc_8c05e478
	mov r0,r12
	bra loc_8c05e48c
	mov 0x00,r6

loc_8c05e478:
	mov.w @(loc_8c05e546,PC),r0
	mov 0x7F,r6
	mov.l @(loc_8c05e558,PC),r3
	mov r12,r5
	mov.b @(r0,r12),r0
	extu.b r0,r0
	and r0,r6
	jsr @r3
	mov r14,r4
	mov r0,r6

loc_8c05e48c:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e49a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e4a4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05e54c,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e4be
	bra loc_8c05e522
	mov 0x00,r0

loc_8c05e4be:
	mov.l @(loc_8c05e550,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x02,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e548,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05e54a,PC),r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e548,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	add 0x9C,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e548,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	add 0xA0,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e548,PC),r0
	mov.w @(loc_8c05e54a,PC),r5
	mov.l @(r0,r14),r3
	add 0xA4,r0
	add r14,r5
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c05e55c,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r0,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e522:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05e52c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05e560,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e564
	bra loc_8c05e5c8
	mov 0x00,r0

;##############################################
loc_8c05e546:
	#data 0x01a1
loc_8c05e548:
	#data 0x04b4
loc_8c05e54a:
	#data 0x044c
	#align4
loc_8c05e54c:
	#data bank05.loc_8c05cc1a
loc_8c05e550:
	#data bank05.loc_8c05cb3e
loc_8c05e554:
	#data bank05.loc_8c05c41a
loc_8c05e558:
	#data bank05.loc_8c05c6c8
loc_8c05e55c:
	#data bank05.loc_8c05c882
loc_8c05e560:
	#data bank05.loc_8c05cc14

;----------------------------------------------
loc_8c05e564:
	mov.l @(loc_8c05e6a0,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x02,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05e69a,PC),r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	add 0x9C,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	add 0xA0,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov.w @(loc_8c05e69a,PC),r5
	mov.l @(r0,r14),r3
	add 0xA4,r0
	add r14,r5
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c05e6a4,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r0,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e5c8:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e5d2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e6a8,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e5ee
	bra loc_8c05e666
	mov 0x00,r0

loc_8c05e5ee:
	mov.l @(loc_8c05e6a0,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov r13,r5
	mov 0x04,r6
	mov.b @(r0,r14),r3
	mov.b r3,@r15
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e69c,PC),r0
	mov.b @r15,r4
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov.w @(loc_8c05e698,PC),r0
	fsub fr3,fr2
	fmov @(r0,r14),fr3
	fcmp/gt fr2,fr3
	bf loc_8c05e634
	cmp/pz r4
	bt loc_8c05e642
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c05e654
	bra loc_8c05e642
	nop

loc_8c05e634:
	cmp/pz r4
	bf loc_8c05e642
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c05e654

loc_8c05e642:
	mov r14,r4
	mov r13,r5
	mov 0x00,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e654:
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e666:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e672:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c05e69e,PC),r3
	mov r4,r14
	mov.l @(loc_8c05e6ac,PC),r2
	add r14,r3
	mov.l r5,@r15
	mov 0x04,r5
	mov.l r3,@(0x4,r15)
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c05e6b0
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c05e698:
	#data 0x04b4
loc_8c05e69a:
	#data 0x044c
loc_8c05e69c:
	#data 0x041c
loc_8c05e69e:
	#data 0x02a4
	#align4
loc_8c05e6a0:
	#data bank05.loc_8c05cb3e
loc_8c05e6a4:
	#data bank05.loc_8c05c944
loc_8c05e6a8:
	#data bank05.loc_8c05cc14
loc_8c05e6ac:
	#data bank05.loc_8c05cc1a

;----------------------------------------------
loc_8c05e6b0:
	mov.l @(loc_8c05e7dc,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x4,r15),r6
	mov r14,r4
	mov.l @r15,r5
	mov.b @(0xE,r6),r0
	extu.b r0,r0
	tst r0,r0
	movt r6
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05e6d0:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e6d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e7e0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x02,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05e6f8
	bra loc_8c05e752
	mov 0x00,r0

loc_8c05e6f8:
	mov.l @(loc_8c05e7dc,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e7d4,PC),r0
	mov 0x00,r13
	mov 0x01,r12
	mov.w @(loc_8c05e7d6,PC),r3
	mov.b r13,@(r0,r14)
	add 0xA5,r0
	mov r12,r11
	mov.b r11,@(r0,r14)
	add 0x57,r0
	mov.w r3,@(r0,r14)
	mov.l @(loc_8c05e7e4,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05e732
	mov.w @(loc_8c05e7d4,PC),r0
	mov r13,r11
	mov.l @(loc_8c05e7e4,PC),r3
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05e732
	mov r12,r11

loc_8c05e732:
	mov.w @(loc_8c05e7d4,PC),r0
	mov r14,r4
	mov r11,r6
	mov.b r13,@(r0,r14)
	add 0xA5,r0
	mov.b r13,@(r0,r14)
	add 0x57,r0
	mov.w r13,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e752:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e760:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e7dc,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05e7dc,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e7d8,PC),r0
	mov r13,r5
	mov.l @(loc_8c05e7e8,PC),r2
	mov r14,r4
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)
	mov.l @(r0,r14),r3
	mov.w @r2,r6
	lds.l @r15+,pr
	cmp/gt r6,r3
	movt r6
	add 0xFF,r6
	mov.l @r15+,r13
	neg r6,r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05e79c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e7dc,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05e7dc,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05e7ec,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c05e7d8,PC),r2
	mov r13,r5
	lds.l @r15+,pr
	add r14,r2
	mov r14,r4
	mov.l @r2,r2
	and 0x1F,r0
	mov.l @r15+,r13
	cmp/hs r0,r2
	movt r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;##############################################
loc_8c05e7d4:
	#data 0x01fe
loc_8c05e7d6:
	#data 0x0800
loc_8c05e7d8:
	#data 0x04b4
	#align4
loc_8c05e7dc:
	#data bank05.loc_8c05cb3e
loc_8c05e7e0:
	#data bank05.loc_8c05cc14
loc_8c05e7e4:
	#data bank05.loc_8c05229c
loc_8c05e7e8:
	#data 0x8c289732
loc_8c05e7ec:
	#data bank03.loc_8c03319e

;----------------------------------------------
loc_8c05e7f0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e930,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bt loc_8c05e820
	mov.l @(loc_8c05e934,PC),r2
	mov r13,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05e934,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e938,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c05e824

loc_8c05e820:
	bra loc_8c05e87e
	mov 0x00,r0

loc_8c05e824:
	mov.w @(loc_8c05e914,PC),r0
	mov.w @(loc_8c05e916,PC),r4
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x77,r0
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov 0x01,r2
	mov.l r3,@(r0,r14)
	add 0x08,r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8c05e918,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05e91a,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r4,r3
	mov.l r3,@(r0,r14)
	add 0x4A,r0
	mov 0xB4,r2
	mov.b r2,@(r0,r14)
	add 0xB6,r0
	mov.w @(r0,r14),r3
	mov.w @(loc_8c05e91c,PC),r0
	mov.w r3,@(r0,r14)
	mov.w @(loc_8c05e91e,PC),r0
	mov.w r4,@(r0,r14)
	mov.l @(loc_8c05e93c,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov.w @(loc_8c05e91e,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05e886
	mov.l @r15+,r14

loc_8c05e87e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e886:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05e920,PC),r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05e922,PC),r0
	extu.b r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r2,r3
	bf loc_8c05e8cc
	mov.w @(loc_8c05e924,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05e8cc
	mov.l @(loc_8c05e938,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c05e8cc
	mov.w @(loc_8c05e926,PC),r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c05e8da
	mov.w @(loc_8c05e918,PC),r0
	mov 0x02,r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	neg r2,r2
	shad r2,r3
	tst r4,r3
	bt loc_8c05e8da

loc_8c05e8cc:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05e940,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c05e8da:
	mov.w @(loc_8c05e928,PC),r0
	mov.l @(loc_8c05e944,PC),r3
	mov.l @(r0,r14),r6
	mov.w @(loc_8c05e92a,PC),r0
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05e8fa
	mov.l @r15,r5
	mov r14,r4
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e8fa:
	mov.w @(loc_8c05e91a,PC),r0
	mov 0x00,r3
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05e91c,PC),r0
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05e92c,PC),r0
	mov.b r3,@(r0,r14)
	mov r3,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05e914:
	#data 0x043d
loc_8c05e916:
	#data 0x0800
loc_8c05e918:
	#data 0x01d2
loc_8c05e91a:
	#data 0x0458
loc_8c05e91c:
	#data 0x04dc
loc_8c05e91e:
	#data 0x034a
loc_8c05e920:
	#data 0x01d0
loc_8c05e922:
	#data 0x0454
loc_8c05e924:
	#data 0x04a2
loc_8c05e926:
	#data 0x01fd
loc_8c05e928:
	#data 0x044c
loc_8c05e92a:
	#data 0x020c
loc_8c05e92c:
	#data 0x01d3
	#align4
loc_8c05e930:
	#data bank05.loc_8c05cc14
loc_8c05e934:
	#data bank05.loc_8c05cb3e
loc_8c05e938:
	#data 0x8c28963c
loc_8c05e93c:
	#data bank05.loc_8c0532a8
loc_8c05e940:
	#data loc_8c05fe88
loc_8c05e944:
	#data bank05.loc_8c05c6c8

;==============================================
loc_8c05e948:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ea80,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05e960
	bra loc_8c05e9aa
	mov 0x00,r0

loc_8c05e960:
	mov.l @(loc_8c05ea84,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05ea84,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05ea78,PC),r0
	mov 0x0A,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x0A,r3
	mov.w @(loc_8c05ea7a,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	add 0x08,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov 0x00,r2
	mov.l r2,@(r0,r14)
	add 0x4A,r0
	mov 0xB4,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c05ea88,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05e886
	mov.l @r15+,r14

loc_8c05e9aa:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05e9b2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ea8c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x02,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05e9d2
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05e9d2:
	mov.l @(loc_8c05ea84,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ea7c,PC),r0
	mov 0x81,r2
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e9ec:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ea8c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x02,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05ea0c
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05ea0c:
	mov.l @(loc_8c05ea84,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ea7c,PC),r0
	mov 0x91,r2
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ea26:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ea8c,PC),r3
	jsr @r3
	mov 0x03,r5
	tst r0,r0
	bf loc_8c05ea3e
	bra loc_8c05ea70
	mov 0x00,r0

loc_8c05ea3e:
	mov.l @(loc_8c05ea84,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05ea84,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05ea7e,PC),r0
	mov r13,r5
	lds.l @r15+,pr
	mov.l @(r0,r14),r6
	mov r14,r4
	mov.w @(loc_8c05ea7a,PC),r0
	mov.b @r6,r6
	mov.l @(r0,r14),r3
	mov.l @r15+,r13
	cmp/gt r6,r3
	movt r6
	add 0xFF,r6
	neg r6,r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05ea70:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05ea78:
	#data 0x043d
loc_8c05ea7a:
	#data 0x04b4
loc_8c05ea7c:
	#data 0x0495
loc_8c05ea7e:
	#data 0x040c
	#align4
loc_8c05ea80:
	#data bank05.loc_8c05cc14
loc_8c05ea84:
	#data bank05.loc_8c05cb3e
loc_8c05ea88:
	#data bank05.loc_8c0532a8
loc_8c05ea8c:
	#data bank05.loc_8c05cc1a

;==============================================
loc_8c05ea90:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ebf4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05ebf4,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05ebea,PC),r0
	mov r13,r5
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x0B,r0
	mov.l @(r0,r14),r3
	mov r14,r4
	mov.l @r15+,r13
	cmp/ge r6,r3
	movt r6
	add 0xFF,r6
	neg r6,r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05eac6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ebf4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05ebf4,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05ebf8,PC),r3
	mov r13,r5
	mov.w @(loc_8c05ebec,PC),r0
	mov r14,r4
	mov.b @r3,r6
	mov.l @(r0,r14),r2
	neg r6,r6
	lds.l @r15+,pr
	add 0x63,r6
	cmp/gt r6,r2
	movt r6
	mov.l @r15+,r13
	add 0xFF,r6
	neg r6,r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05eb00:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebfc,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05eb20
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05eb20:
	mov.l @(loc_8c05ebf4,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ebee,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	mov r2,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05eb3c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebfc,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05eb5c
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05eb5c:
	mov.l @(loc_8c05ebf4,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ebee,PC),r0
	mov 0x80,r2
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05eb76:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebfc,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05eb96
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05eb96:
	mov.l @(loc_8c05ebf4,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ebf0,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	mov r2,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ebb2:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebf4,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05ebf2,PC),r0
	mov 0x00,r3
	mov.l @r15,r2
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c05ebce:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebf4,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05ebee,PC),r0
	mov 0x00,r3
	mov.l @r15,r2
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05ebea:
	#data 0x04a9
loc_8c05ebec:
	#data 0x04b4
loc_8c05ebee:
	#data 0x0496
loc_8c05ebf0:
	#data 0x0497
loc_8c05ebf2:
	#data 0x0495
	#align4
loc_8c05ebf4:
	#data bank05.loc_8c05cb3e
loc_8c05ebf8:
	#data 0x8c289676
loc_8c05ebfc:
	#data bank05.loc_8c05cc14

;==============================================
loc_8c05ec00:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c05ed74,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05ed5e,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c05ed60,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ec1e:
	tst r6,r6
	bt.s loc_8c05ec32
	mov 0x01,r7
	mov.w @(loc_8c05ed62,PC),r0
	mov 0x00,r3
	mov.b r7,@(r0,r4)
	add 0x21,r0
	mov.b r3,@(r0,r4)
	rts
	mov 0x01,r0

loc_8c05ec32:
	mov.w @(loc_8c05ed62,PC),r0
	mov.b r7,@(r0,r4)
	add 0x21,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05ec48
	mov.l @(loc_8c05ed78,PC),r3
	mov 0x00,r1
	mov.w @(loc_8c05ed64,PC),r0
	jmp @r3
	mov.b r1,@(r0,r4)

loc_8c05ec48:
	mov.w @(loc_8c05ed64,PC),r0
	mov.b @(r0,r4),r2
	add 0xFF,r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c05ed66,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c05ec60
	mov.w @(loc_8c05ed64,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)

loc_8c05ec60:
	mov.b @(0x7,r5),r0
	add 0xFF,r0
	mov.b r0,@(0x7,r5)
	mov.w @(loc_8c05ed68,PC),r0
	mov.b @(r0,r4),r3
	mov.l @(loc_8c05ed7c,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov.w @(0x4,r5),r0
	extu.b r2,r2
	sub r2,r0
	mov.w r0,@(0x4,r5)
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c05ec7e:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05ed74,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @r15,r4
	mov.l @(0x4,r15),r5
	add 0x08,r15
	mov.l @(loc_8c05ed78,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c05ec9a:
	sts.l pr,@-r15
	mov.l @(loc_8c05ed74,PC),r3
	jsr @r3
	mov 0x00,r6
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c05eca8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ed74,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05ed80,PC),r3
	mov 0x00,r6
	mov r6,r5
	jsr @r3
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05ecc6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ed74,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c05ecda
	lds.l @r15+,pr

loc_8c05ecda:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c05ed6a,PC),r0
	mov 0x00,r4
	mov 0x01,r3
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x55,r0
	mov.l @(loc_8c05ed84,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ed6e,PC),r0
	mov.w @(loc_8c05ed6c,PC),r2
	mov.b r2,@(r0,r14)
	mov 0x02,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ed0c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ed74,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05ed74,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ed70,PC),r0
	mov 0x01,r3
	mov 0x00,r4
	mov.b @(r0,r14),r2
	add 0xCA,r0
	mov.b r2,@(r0,r14)
	add 0x02,r0
	mov.b r3,@(r0,r14)
	add 0xBD,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r3,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ed50:
	sts.l pr,@-r15
	mov.l @(loc_8c05ed74,PC),r3
	jsr @r3
	mov 0x00,r6
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05ed5e:
	#data 0x0497
loc_8c05ed60:
	#data 0x0201
loc_8c05ed62:
	#data 0x043d
loc_8c05ed64:
	#data 0x045e
loc_8c05ed66:
	#data 0x01a0
loc_8c05ed68:
	#data 0x0440
loc_8c05ed6a:
	#data 0x043c
loc_8c05ed6c:
	#data 0x00ff
loc_8c05ed6e:
	#data 0x04a0
loc_8c05ed70:
	#data 0x04b4
	#align4
loc_8c05ed74:
	#data bank05.loc_8c05cb3e
loc_8c05ed78:
	#data loc_8c05fe88
loc_8c05ed7c:
	#data bank15.loc_8c151408
loc_8c05ed80:
	#data bank05.loc_8c05c02e
loc_8c05ed84:
	#data bank05.loc_8c05bef6

;==============================================
loc_8c05ed88:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05eee4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(0x4,r13),r0
	mov.l @r13,r12
	extu.w r0,r0
	mov.l @(loc_8c05eee8,PC),r3
	add r0,r12
	mov.w @(0x4,r13),r0
	add 0x04,r0
	jsr @r3
	mov.w r0,@(0x4,r13)
	mov 0x03,r4
	and r0,r4
	mov r4,r0
	nop
	mov.b @(r0,r12),r3
	mov 0x01,r1
	mov.w @(loc_8c05eeda,PC),r0
	mov 0x00,r4
	mov.w @(loc_8c05eed8,PC),r2
	add r14,r2
	mov.b r3,@r2
	mov.b r1,@(r0,r14)
	add 0xBD,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r1,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05edde:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05eee4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(0x4,r13),r0
	mov.l @r13,r4
	extu.w r0,r0
	add r0,r4
	mov.w @(0x4,r13),r0
	add 0x08,r0
	mov.w r0,@(0x4,r13)
	mov.w @(loc_8c05eedc,PC),r0
	mov.l @(r0,r14),r5
	add 0xFB,r0
	mov.b @(r0,r5),r0
	mov 0x07,r5
	extu.b r0,r0
	and r0,r5
	mov r5,r0
	nop
	mov.b @(r0,r4),r3
	mov 0x01,r1
	mov.w @(loc_8c05eeda,PC),r0
	mov 0x00,r4
	mov.w @(loc_8c05eed8,PC),r2
	add r14,r2
	mov.b r3,@r2
	mov.b r1,@(r0,r14)
	add 0xBD,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r1,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ee36:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05eee4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(0x4,r13),r0
	mov 0x00,r7
	mov.l @r13,r4
	mov 0x03,r6
	extu.w r0,r0
	mov r7,r5
	add r0,r4
	mov.w @(0x4,r13),r0
	add 0x07,r0
	mov.w r0,@(0x4,r13)
	mov.l @(loc_8c05eeec,PC),r13

loc_8c05ee5c:
	mov.b @(0x1,r4),r0
	extu.b r0,r3
	mov.w @(0x2,r13),r0
	cmp/gt r0,r3
	bt loc_8c05ee6e
	add 0x01,r5
	cmp/ge r6,r5
	bf.s loc_8c05ee5c
	add 0x02,r4

loc_8c05ee6e:
	mov.w @(loc_8c05eed8,PC),r0
	mov 0x01,r2
	mov.b @r4,r3
	mov.b r3,@(r0,r14)
	add 0x02,r0
	mov.b r2,@(r0,r14)
	add 0xBD,r0
	mov.b r7,@(r0,r14)
	add 0x01,r0
	mov.b r7,@(r0,r14)
	add 0x01,r0
	mov.b r7,@(r0,r14)
	mov r2,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ee92:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05eee4,PC),r11
	jsr @r11
	mov 0x00,r6
	mov 0x00,r9
	mov 0x03,r10
	mov r9,r12

loc_8c05eeb0:
	mov r13,r5
	mov 0x01,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05eede,PC),r0
	mov r13,r5
	mov 0x03,r6
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05eee0,PC),r0
	fmov @(r0,r14),fr3
	add 0x30,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c05eef0
	bra loc_8c05eef6
	add 0x01,r12

;##############################################
loc_8c05eed8:
	#data 0x047e
loc_8c05eeda:
	#data 0x0480
loc_8c05eedc:
	#data 0x020c
loc_8c05eede:
	#data 0x04b4
loc_8c05eee0:
	#data 0x0484
	#align4
loc_8c05eee4:
	#data bank05.loc_8c05cb3e
loc_8c05eee8:
	#data bank03.loc_8c03319e
loc_8c05eeec:
	#data 0x8c289730

;----------------------------------------------
loc_8c05eef0:
	add 0x01,r12
	cmp/ge r10,r12
	bf loc_8c05eeb0

loc_8c05eef6:
	mov r10,r2
	sub r12,r2
	mov r2,r3
	shll r2
	mov.w @(0x4,r13),r0
	add r3,r2
	add 0x01,r2
	add r2,r0
	mov.w r0,@(0x4,r13)
	mov 0x01,r2
	mov.w @(loc_8c05f024,PC),r0
	mov.b @(r0,r14),r3
	add 0x32,r0
	mov.b r3,@(r0,r14)
	add 0x02,r0
	mov.b r2,@(r0,r14)
	add 0xBD,r0
	mov.b r9,@(r0,r14)
	add 0x01,r0
	mov.b r9,@(r0,r14)
	add 0x01,r0
	mov.b r9,@(r0,r14)
	mov r2,r0
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
loc_8c05ef36:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c05f02c,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05f026,PC),r0
	mov 0x00,r4
	mov 0x01,r3
	mov.b r4,@(r0,r14)
	add 0xBD,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r3,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ef60:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c05f02c,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05f030,PC),r2
	mov 0x00,r6
	mov r6,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c05ef82
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c05efc8
	mov.l @r15+,r14

loc_8c05ef82:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c05ecda
	mov.l @r15+,r14

loc_8c05ef8a:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c05f02c,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05f030,PC),r2
	mov 0x01,r6
	mov r6,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c05efac
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c05efc8
	mov.l @r15+,r14

loc_8c05efac:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c05ecda
	mov.l @r15+,r14

loc_8c05efb4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f02c,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c05efc8
	lds.l @r15+,pr

loc_8c05efc8:
	mov.w @(loc_8c05f028,PC),r0
	mov 0x01,r6
	mov 0x00,r5
	mov.l @(loc_8c05f034,PC),r3
	sts.l pr,@-r15
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x55,r0
	jsr @r3
	mov.b r6,@(r0,r4)
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c05efec:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f02c,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05f02a,PC),r0
	mov 0x01,r3
	mov.l @r15,r2
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r3,r0

;==============================================
loc_8c05f008:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f02c,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05f02a,PC),r0
	mov 0x00,r3
	mov.l @r15,r2
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f024:
	#data 0x044c
loc_8c05f026:
	#data 0x0480
loc_8c05f028:
	#data 0x043c
loc_8c05f02a:
	#data 0x0482
	#align4
loc_8c05f02c:
	#data bank05.loc_8c05cb3e
loc_8c05f030:
	#data bank05.loc_8c05bf3a
loc_8c05f034:
	#data bank05.loc_8c05bef6

;==============================================
loc_8c05f038:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05f100,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f092
	mov.l @(loc_8c05f104,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f092
	mov.l @(loc_8c05f108,PC),r2
	mov r13,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05f108,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f0f6,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c05f07a
	mov.w @(loc_8c05f0f8,PC),r4
	bra loc_8c05f07c
	nop

loc_8c05f07a:
	mov.w @(loc_8c05f0fa,PC),r4

loc_8c05f07c:
	mov.w @(loc_8c05f0fc,PC),r0
	extu.w r4,r3
	mov.w @(r0,r14),r2
	tst r3,r2
	bt loc_8c05f08e
	mov.w @(r0,r14),r3
	xor r4,r3
	bra loc_8c05f092
	mov.w r3,@(r0,r14)

loc_8c05f08e:
	mov.w @(loc_8c05f0fe,PC),r0
	mov.w r4,@(r0,r14)

loc_8c05f092:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f09c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05f100,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f0ec
	mov.l @(loc_8c05f104,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f0ec
	mov.l @(loc_8c05f108,PC),r2
	mov r13,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05f108,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f0f6,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c05f0dc
	bra loc_8c05f0de
	mov 0x20,r4

loc_8c05f0dc:
	mov 0x40,r4

loc_8c05f0de:
	mov.w @(loc_8c05f0fc,PC),r0
	extu.w r4,r3
	mov.w @(r0,r14),r2
	tst r3,r2
	bf loc_8c05f0ea
	mov.w @(loc_8c05f0fe,PC),r0

loc_8c05f0ea:
	mov.w r4,@(r0,r14)

loc_8c05f0ec:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f0f6:
	#data 0x04b4
loc_8c05f0f8:
	#data 0x0100
loc_8c05f0fa:
	#data 0x0200
loc_8c05f0fc:
	#data 0x04ae
loc_8c05f0fe:
	#data 0x04dc
	#align4
loc_8c05f100:
	#data bank05.loc_8c05cc1a
loc_8c05f104:
	#data bank05.loc_8c05ccb6
loc_8c05f108:
	#data bank05.loc_8c05cb3e

;==============================================
loc_8c05f10c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f200,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f174
	mov.l @(loc_8c05f204,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f174
	mov.l @(loc_8c05f208,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f1f4,PC),r0
	mov.w @(loc_8c05f1f6,PC),r3
	mov.l @(r0,r14),r4
	mov.w @(loc_8c05f1f8,PC),r2
	shll8 r4
	mov.w @(loc_8c05f1fa,PC),r1
	and r3,r4
	or r2,r4
	extu.w r4,r3
	tst r1,r3
	bt loc_8c05f170
	mov.w @(loc_8c05f1fc,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r3,r4

loc_8c05f170:
	mov.w @(loc_8c05f1fe,PC),r0
	mov.w r4,@(r0,r14)

loc_8c05f174:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f180:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f200,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f1e8
	mov.l @(loc_8c05f204,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f1e8
	mov.l @(loc_8c05f208,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f1f4,PC),r0
	mov 0x20,r4
	mov.w @(loc_8c05f1f6,PC),r3
	mov.l @(r0,r14),r0
	mov.w @(loc_8c05f1fa,PC),r1
	shll8 r0
	and r3,r0
	or r0,r4
	extu.w r4,r2
	tst r1,r2
	bt loc_8c05f1e4
	mov.w @(loc_8c05f1fc,PC),r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll8 r2
	shll2 r2
	xor r2,r4

loc_8c05f1e4:
	mov.w @(loc_8c05f1fe,PC),r0
	mov.w r4,@(r0,r14)

loc_8c05f1e8:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f1f4:
	#data 0x04b4
loc_8c05f1f6:
	#data 0x3c00
loc_8c05f1f8:
	#data 0x0100
loc_8c05f1fa:
	#data 0x0c00
loc_8c05f1fc:
	#data 0x01d2
loc_8c05f1fe:
	#data 0x04dc
	#align4
loc_8c05f200:
	#data bank05.loc_8c05cc1a
loc_8c05f204:
	#data bank05.loc_8c05ccb6
loc_8c05f208:
	#data bank05.loc_8c05cb3e

;==============================================
loc_8c05f20c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f324,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f284
	mov.l @(loc_8c05f328,PC),r3
	mov r12,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f284
	mov.l @(loc_8c05f32c,PC),r11
	mov r12,r5
	mov 0x00,r6
	jsr @r11
	mov r14,r4
	mov r12,r5
	mov 0x01,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05f316,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c05f252
	mov 0x01,r6
	mov.w @(loc_8c05f318,PC),r13
	bra loc_8c05f254
	nop

loc_8c05f252:
	mov.w @(loc_8c05f31a,PC),r13

loc_8c05f254:
	mov r12,r5
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05f316,PC),r0
	mov.w @(loc_8c05f31c,PC),r3
	mov.l @(r0,r14),r2
	mov.w @(loc_8c05f31e,PC),r1
	shll8 r2
	and r3,r2
	or r2,r13
	extu.w r13,r2
	tst r1,r2
	bt loc_8c05f280
	mov.w @(loc_8c05f320,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05f280:
	mov.w @(loc_8c05f322,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05f284:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f292:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f324,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f308
	mov.l @(loc_8c05f328,PC),r3
	mov r12,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f308
	mov.l @(loc_8c05f32c,PC),r11
	mov r12,r5
	mov 0x00,r6
	jsr @r11
	mov r14,r4
	mov r12,r5
	mov 0x01,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05f316,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c05f2d6
	mov 0x01,r6
	bra loc_8c05f2d8
	mov 0x20,r13

loc_8c05f2d6:
	mov 0x40,r13

loc_8c05f2d8:
	mov r12,r5
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05f316,PC),r0
	mov.w @(loc_8c05f31c,PC),r3
	mov.l @(r0,r14),r2
	mov.w @(loc_8c05f31e,PC),r1
	shll8 r2
	and r3,r2
	or r2,r13
	extu.w r13,r2
	tst r1,r2
	bt loc_8c05f304
	mov.w @(loc_8c05f320,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05f304:
	mov.w @(loc_8c05f322,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05f308:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f316:
	#data 0x04b4
loc_8c05f318:
	#data 0x0100
loc_8c05f31a:
	#data 0x0200
loc_8c05f31c:
	#data 0x3c00
loc_8c05f31e:
	#data 0x0c00
loc_8c05f320:
	#data 0x01d2
loc_8c05f322:
	#data 0x04dc
	#align4
loc_8c05f324:
	#data bank05.loc_8c05cc1a
loc_8c05f328:
	#data bank05.loc_8c05ccb6
loc_8c05f32c:
	#data bank05.loc_8c05cb3e

;==============================================
loc_8c05f330:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f45c,PC),r3
	jsr @r3
	mov 0x03,r5
	tst r0,r0
	bt loc_8c05f40e
	mov.l @(loc_8c05f460,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f40e
	mov.l @(loc_8c05f464,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44c,PC),r0
	mov 0x00,r4
	mov 0x01,r3
	mov r13,r5
	mov.b @(r0,r14),r2
	mov r3,r6
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x1E,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.b @(r0,r14),r3
	add 0x94,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.b @(r0,r14),r3
	add 0xF7,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.b @(r0,r14),r3
	add 0xF6,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov.w @(loc_8c05f450,PC),r2
	mov.l @(r0,r14),r4
	shll8 r4
	extu.w r4,r3
	tst r2,r3
	bt loc_8c05f3dc
	mov.w @(loc_8c05f452,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r4

loc_8c05f3dc:
	mov.w @(loc_8c05f44e,PC),r0
	extu.w r4,r2
	mov.l @(r0,r14),r3
	add 0xF8,r0
	shll8 r3
	mov.w r3,@(r0,r14)
	add 0xA4,r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8c05f454,PC),r0
	mov.w r4,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x30,r0
	bf loc_8c05f408
	mov.w @(loc_8c05f456,PC),r0
	mov.l @(r0,r14),r3
	mov.l @(loc_8c05f468,PC),r0
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8c05f458,PC),r0
	bra loc_8c05f40e
	mov.l r2,@(r0,r14)

loc_8c05f408:
	mov.w @(loc_8c05f458,PC),r0
	mov.l @(loc_8c05f46c,PC),r1
	mov.l r1,@(r0,r14)

loc_8c05f40e:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f41a:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c05f438
	mov.w @(loc_8c05f45a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c05f470
	mov.w @(loc_8c05f45a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c05f470

loc_8c05f438:
	mov.w @(loc_8c05f44c,PC),r0
	mov 0x00,r3
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	add 0x05,r0
	mov.w r3,@(r0,r14)
	mov 0x01,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f44c:
	#data 0x043d
loc_8c05f44e:
	#data 0x04b4
loc_8c05f450:
	#data 0x0c00
loc_8c05f452:
	#data 0x01d2
loc_8c05f454:
	#data 0x04dc
loc_8c05f456:
	#data 0x044c
loc_8c05f458:
	#data 0x0498
loc_8c05f45a:
	#data 0x01d0
	#align4
loc_8c05f45c:
	#data bank05.loc_8c05cc1a
loc_8c05f460:
	#data bank05.loc_8c05ccb6
loc_8c05f464:
	#data bank05.loc_8c05cb3e
loc_8c05f468:
	#data bank15.loc_8c1515d0
loc_8c05f46c:
	#data bank05.loc_8c05ffdc

;==============================================
loc_8c05f470:
	mov.w @(loc_8c05f556,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c05f4d2
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	tst r3,r3
	bf loc_8c05f4d2
	mov.w @(loc_8c05f558,PC),r0
	mov.l @r5,r4
	mov.w @(r0,r14),r3
	add 0x19,r0
	extu.w r3,r3
	add r3,r4
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xEB,r0
	mov.b @r4+,r3
	mov.b r3,@(r0,r14)
	add 0x04,r0
	mov.b @r4+,r3
	extu.b r3,r3
	mov.l r3,@(r0,r14)
	add 0x5F,r0
	mov.b @r4+,r3
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b @r4+,r3
	mov.b r3,@(r0,r14)
	mov.b @r4,r2
	extu.b r2,r4
	mov.w @(loc_8c05f55a,PC),r2
	shll8 r4
	extu.w r4,r3
	tst r2,r3
	bt loc_8c05f4d2
	mov.w @(loc_8c05f55c,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05f55e,PC),r0
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r4
	mov.w r4,@(r0,r14)

loc_8c05f4d2:
	mov.w @(loc_8c05f560,PC),r0
	mov r14,r4
	mov.w @(r0,r14),r3
	mov.w @(loc_8c05f562,PC),r0
	mov.w r3,@(r0,r14)
	add 0xBC,r0
	mov.l @(r0,r14),r0
	jmp @r0
	mov.l @r15+,r14
 
 loc_8c05f4e4:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f4e8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f568,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f568,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f564,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	add 0x68,r0
	mov.b @(r0,r14),r3
	add 0xAB,r0
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f520:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f568,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f568,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f564,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	mov.b @(r0,r14),r3
	add 0x5B,r0
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f556:
	#data 0x0442
loc_8c05f558:
	#data 0x0444
loc_8c05f55a:
	#data 0x0c00
loc_8c05f55c:
	#data 0x01d2
loc_8c05f55e:
	#data 0x04ac
loc_8c05f560:
	#data 0x0450
loc_8c05f562:
	#data 0x04dc
loc_8c05f564:
	#data 0x04b4
	#align4
loc_8c05f568:
	#data bank05.loc_8c05cb3e

;==============================================
loc_8c05f56c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05f69c,PC),r3
	mov r4,r14
	mov.l r5,@(0x4,r15)
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f63c
	mov.l @(loc_8c05f6a0,PC),r3
	mov 0x00,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f6a0,PC),r3
	mov 0x01,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f67c,PC),r0
	mov.l @(r0,r14),r2
	mov.w @(loc_8c05f67e,PC),r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8c05f680,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05f5cc
	mov.w @(loc_8c05f682,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05f5cc
	mov.l @(loc_8c05f6a4,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c05f5cc
	mov.l @(loc_8c05f6a8,PC),r3
	jsr @r3
	mov r14,r4
	mov.w r0,@r15
	extu.w r0,r0
	tst r0,r0
	bf loc_8c05f5d0

loc_8c05f5cc:
	bra loc_8c05f63e
	mov 0x01,r0

loc_8c05f5d0:
	mov.w @(loc_8c05f684,PC),r0
	mov.w @(loc_8c05f686,PC),r13
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05f688,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05f5e8
	bra loc_8c05f60c
	mov 0x13,r12

loc_8c05f5e8:
	mov.w @(loc_8c05f68a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x3C,r0
	bt loc_8c05f5fa
	mov.w @r15,r0
	extu.w r0,r0
	tst 0x04,r0
	bt loc_8c05f600

loc_8c05f5fa:
	mov.w @(loc_8c05f68c,PC),r13
	bra loc_8c05f602
	mov 0x05,r12

loc_8c05f600:
	mov 0x07,r12

loc_8c05f602:
	mov.l @(loc_8c05f6ac,PC),r3
	extu.w r12,r5
	jsr @r3
	mov r14,r4
	mov 0x12,r12

loc_8c05f60c:
	mov.w @(loc_8c05f68e,PC),r0
	extu.w r13,r2
	extu.w r12,r5
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05f690,PC),r0
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r2
	mov.l r2,@(r0,r14)
	mov.w @(r0,r14),r3
	mov.w @(loc_8c05f692,PC),r0
	mov.w r3,@(r0,r14)
	mov.w @(loc_8c05f694,PC),r0
	mov.l @(loc_8c05f6ac,PC),r3
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f694,PC),r0
	mov 0x00,r2
	mov.w r2,@(r0,r14)

loc_8c05f63c:
	mov 0x00,r0

loc_8c05f63e:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f64a:
	mov.w @(loc_8c05f696,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05f66c
	mov.w @(loc_8c05f698,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x12,r0
	bt loc_8c05f6b0
	mov.w @(loc_8c05f698,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8c05f6b0

loc_8c05f66c:
	mov.w @(loc_8c05f684,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c05f67c:
	#data 0x04b4
loc_8c05f67e:
	#data 0x044c
loc_8c05f680:
	#data 0x0202
loc_8c05f682:
	#data 0x01f0
loc_8c05f684:
	#data 0x043d
loc_8c05f686:
	#data 0x0400
loc_8c05f688:
	#data 0x01f9
loc_8c05f68a:
	#data 0x0440
loc_8c05f68c:
	#data 0x1400
loc_8c05f68e:
	#data 0x01d2
loc_8c05f690:
	#data 0x0450
loc_8c05f692:
	#data 0x04dc
loc_8c05f694:
	#data 0x034a
loc_8c05f696:
	#data 0x0411
loc_8c05f698:
	#data 0x01d0
	#align4
loc_8c05f69c:
	#data bank05.loc_8c05cc14
loc_8c05f6a0:
	#data bank05.loc_8c05cb3e
loc_8c05f6a4:
	#data bank05.loc_8c0528da
loc_8c05f6a8:
	#data bank05.loc_8c05c34a
loc_8c05f6ac:
	#data bank05.loc_8c0532a8

;----------------------------------------------
loc_8c05f6b0:
	mov.w @(loc_8c05f7a4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c05f6d6
	mov 0x00,r4
	mov.w @(loc_8c05f7a6,PC),r0
	mov 0x01,r2
	mov 0x7D,r3
	mov.b r2,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0x02,r0
	bra loc_8c05f73e
	mov.w r4,@(r0,r14)

loc_8c05f6d6:
	mov.w @(loc_8c05f7a8,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c05f73e
	mov.w @(loc_8c05f7aa,PC),r6
	mov 0x00,r1
	mov.l @(loc_8c05f7c0,PC),r3
	add r14,r6
	mov.l @r6,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bt.s loc_8c05f714
	mov r4,r5
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bf loc_8c05f704
	mov.w @(loc_8c05f7ac,PC),r6
	add r14,r6
	add r1,r6
	mov.b @(0x1,r6),r0
	extu.b r0,r5

loc_8c05f704:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c05f714
	mov.w @(loc_8c05f7ac,PC),r6
	add r14,r6
	mov.b @(0x1,r6),r0
	extu.b r0,r5

loc_8c05f714:
	tst r5,r5
	bf loc_8c05f73e
	mov.w @(loc_8c05f7ae,PC),r0
	mov 0xFF,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05f7a8,PC),r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c05f7b0,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.w r4,@(r0,r14)

loc_8c05f73e:
	mov.w @(loc_8c05f7b2,PC),r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	tst r3,r3
	bt.s loc_8c05f79c
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c05f7c4,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c05f794
	mov r0,r4
	mov.w @(loc_8c05f7b4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05f766
	mov 0x02,r2
	tst r4,r2
	bt loc_8c05f770

loc_8c05f766:
	mov.w @(loc_8c05f7b6,PC),r0
	mov.w @(loc_8c05f7b8,PC),r3
	mov.l @(r0,r14),r2
	and r3,r2
	mov.l r2,@(r0,r14)

loc_8c05f770:
	mov.w @(loc_8c05f7b4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c05f78a
	mov 0x04,r2
	tst r2,r4
	bf loc_8c05f78a
	mov.w @(loc_8c05f7ba,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x3C,r0
	bf loc_8c05f794

loc_8c05f78a:
	mov.w @(loc_8c05f7b6,PC),r0
	mov.w @(loc_8c05f7bc,PC),r3
	mov.l @(r0,r14),r2
	or r3,r2
	mov.l r2,@(r0,r14)

loc_8c05f794:
	mov.w @(loc_8c05f7b6,PC),r0
	mov.w @(r0,r14),r1
	mov.w @(loc_8c05f7be,PC),r0
	mov.w r1,@(r0,r14)

loc_8c05f79c:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f7a4:
	#data 0x045f
loc_8c05f7a6:
	#data 0x045d
loc_8c05f7a8:
	#data 0x04a7
loc_8c05f7aa:
	#data 0x0414
loc_8c05f7ac:
	#data 0x02a4
loc_8c05f7ae:
	#data 0x01dd
loc_8c05f7b0:
	#data 0x0354
loc_8c05f7b2:
	#data 0x044c
loc_8c05f7b4:
	#data 0x01f9
loc_8c05f7b6:
	#data 0x0450
loc_8c05f7b8:
	#data 0xefff
loc_8c05f7ba:
	#data 0x0440
loc_8c05f7bc:
	#data 0x1000
loc_8c05f7be:
	#data 0x04dc
	#align4
loc_8c05f7c0:
	#data 0x30000000
loc_8c05f7c4:
	#data bank05.loc_8c05c34a

;==============================================
loc_8c05f7c8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05f8dc,PC),r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05f7fe
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f8de,PC),r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05f8e0,PC),r0
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)

loc_8c05f7fe:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f808:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f8de,PC),r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x77,r0
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)
	add 0x68,r0
	mov.b @(r0,r14),r2
	mov 0x00,r3
	mov.w @(loc_8c05f8e2,PC),r0
	mov.b r2,@(r0,r14)
	add 0xB0,r0
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f84c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f8f0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f886
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f8e4,PC),r0
	mov 0x01,r2
	mov 0x7B,r3
	mov.b r2,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0x02,r0
	mov.w r4,@(r0,r14)

loc_8c05f886:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f890:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f8f0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f936
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f8e8,PC),r0
	mov 0x01,r11
	mov r11,r4
	mov.w @(loc_8c05f8ea,PC),r3
	mov.l @(r0,r14),r12
	mov 0x00,r13
	mov.b @(0x2,r14),r0
	mov r13,r5
	mov.l @(loc_8c05f8f4,PC),r2
	extu.b r0,r0
	mov.w @(loc_8c05f8e6,PC),r6
	and r11,r0
	neg r0,r0
	shad r0,r4
	mul.l r3,r4
	sts macl,r4
	add r2,r4
	bra loc_8c05f91a
	mov 0x03,r7

;##############################################
loc_8c05f8dc:
	#data 0x0411
loc_8c05f8de:
	#data 0x043d
loc_8c05f8e0:
	#data 0x04b4
loc_8c05f8e2:
	#data 0x01ed
loc_8c05f8e4:
	#data 0x045d
loc_8c05f8e6:
	#data 0x0091
loc_8c05f8e8:
	#data 0x020c
loc_8c05f8ea:
	#data 0x05a4
	#align4
loc_8c05f8ec:
	#data bank05.loc_8c05cb3e
loc_8c05f8f0:
	#data bank05.loc_8c05cc1a
loc_8c05f8f4:
	#data 0x8c268340

;----------------------------------------------
loc_8c05f8f8:
	mov.b @(0x1,r4),r0
	mov r0,r3
	mov.b @(0x1,r12),r0
	cmp/eq r0,r3
	bt loc_8c05f914
	mov.w @(loc_8c05fa0e,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c05f914
	mov.w @(r0,r4),r2
	cmp/gt r6,r2
	bt loc_8c05f914
	mov.w @(r0,r4),r6
	add 0x01,r13

loc_8c05f914:
	mov.w @(loc_8c05fa10,PC),r3
	add 0x01,r5
	add r3,r4

loc_8c05f91a:
	cmp/ge r7,r5
	bf loc_8c05f8f8
	mov.w @(loc_8c05fa12,PC),r0
	mov 0x7C,r3
	mov 0x00,r4
	mov.b r11,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	add 0x02,r0
	mov.w r4,@(r0,r14)

loc_8c05f936:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05f946:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fa1c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f980
	mov.l @(loc_8c05fa20,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05fa12,PC),r0
	mov 0x01,r2
	mov 0x7A,r3
	mov.b r2,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0x02,r0
	mov.w r4,@(r0,r14)

loc_8c05f980:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f98a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fa1c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f9c4
	mov.l @(loc_8c05fa20,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05fa12,PC),r0
	mov 0x01,r2
	mov 0x7E,r3
	mov.b r2,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0x02,r0
	mov.w r4,@(r0,r14)

loc_8c05f9c4:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f9ce:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fa20,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fa20,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05fa14,PC),r0
	mov r14,r4
	mov r13,r5
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05fa16,PC),r0
	mov r3,r6
	mov.l r3,@r15
	mov.b @(r0,r6),r6
	mov.w @(loc_8c05fa18,PC),r0
	extu.b r6,r6
	mov.l @(r0,r14),r3
	cmp/eq r3,r6
	movt r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;##############################################
loc_8c05fa0e:
	#data 0x0420
loc_8c05fa10:
	#data 0x05a4
loc_8c05fa12:
	#data 0x045d
loc_8c05fa14:
	#data 0x020c
loc_8c05fa16:
	#data 0x01f9
loc_8c05fa18:
	#data 0x04b4
	#align4
loc_8c05fa1c:
	#data bank05.loc_8c05cc1a
loc_8c05fa20:
	#data bank05.loc_8c05cb3e

;----------------------------------------------
loc_8c05fa24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov.l @(loc_8c05fb2c,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fb2c,PC),r2
	mov r12,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x2F,r0
	bt.s loc_8c05fa5a
	mov 0x00,r13
	cmp/eq 0x31,r0
	bt loc_8c05fa60
	cmp/eq 0x22,r0
	bt loc_8c05fa68
	cmp/eq 0x2D,r0
	bt loc_8c05fa6e
	bra loc_8c05fa72
	nop

loc_8c05fa5a:
	mov.w @(loc_8c05fb1a,PC),r0
	bra loc_8c05fa6a
	nop

loc_8c05fa60:
	mov.w @(loc_8c05fb1c,PC),r0
	mov.b @(r0,r14),r13
	bra loc_8c05fa72
	extu.b r13,r13

loc_8c05fa68:
	mov.w @(loc_8c05fb1e,PC),r0

loc_8c05fa6a:
	bra loc_8c05fa72
	mov.l @(r0,r14),r13

loc_8c05fa6e:
	mov.w @(loc_8c05fb20,PC),r0
	mov.b @(r0,r14),r13

loc_8c05fa72:
	lds.l @r15+,pr
	mov.w @(loc_8c05fb22,PC),r0
	mov r12,r5
	mov r14,r4
	mov.l @(r0,r14),r2
	mov.l @r15+,r12
	cmp/eq r2,r13
	mov.l @r15+,r13
	movt r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05fa88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05fb24,PC),r3
	mov r4,r14
	mov.l @(loc_8c05fb2c,PC),r2
	mov r5,r13
	add r14,r3
	mov r13,r5
	mov.l r3,@r15
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05fb2c,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.l @r15,r6
	mov r14,r4
	mov.w @(loc_8c05fb22,PC),r0
	mov r13,r5
	mov.b @r6,r6
	mov.l @(r0,r14),r3
	extu.b r6,r6
	cmp/eq r3,r6
	movt r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05faca:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fb2c,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fb2c,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05fb22,PC),r0
	mov.l @(loc_8c05fb30,PC),r2
	mov.l @(r0,r14),r1
	mov.w @(loc_8c05fb26,PC),r0
	mov r1,r3
	shll2 r1
	shll r1
	add r3,r1
	shll2 r1
	jsr @r2
	shll2 r1
	mov.w r0,@r15
	mov r14,r4
	mov.w @(loc_8c05fb28,PC),r0
	mov r13,r5
	mov.w @r15,r3
	mov.w @(r0,r14),r6
	cmp/gt r3,r6
	movt r6
	add 0xFF,r6
	neg r6,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;##############################################
loc_8c05fb1a:
	#data 0x02c0
loc_8c05fb1c:
	#data 0x02ba
loc_8c05fb1e:
	#data 0x00cc
loc_8c05fb20:
	#data 0x02ad
loc_8c05fb22:
	#data 0x04b4
loc_8c05fb24:
	#data 0x02a4
loc_8c05fb26:
	#data 0x00c8
loc_8c05fb28:
	#data 0x0420
	#align4
loc_8c05fb2c:
	#data bank05.loc_8c05cb3e
loc_8c05fb30:
	#data bank12.loc_8c129128

;----------------------------------------------
loc_8c05fb34:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05fc74,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fc74,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05fc66,PC),r0
	mov.l @(loc_8c05fc78,PC),r2
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05fc68,PC),r0
	mov.l r3,@(0x4,r15)
	mov.l @(r0,r14),r1
	mov.w @(loc_8c05fc6a,PC),r0
	mov r1,r3
	shll2 r1
	shll r1
	add r3,r1
	shll2 r1
	jsr @r2
	shll2 r1
	mov.w r0,@r15
	mov r14,r4
	mov.w @(loc_8c05fc6c,PC),r0
	mov r13,r5
	mov.l @(0x4,r15),r6
	mov.w @r15,r3
	mov.w @(r0,r6),r6
	cmp/gt r3,r6
	movt r6
	add 0xFF,r6
	neg r6,r6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05fb8c:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05fc74,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fc74,PC),r2
	mov r14,r5
	mov 0x02,r6
	jsr @r2
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov 0x00,r6
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05fbb4:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05fc74,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fc74,PC),r2
	mov r14,r5
	mov 0x02,r6
	jsr @r2
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov 0x00,r6
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05fbdc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05fc74,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fc74,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov 0x03,r7
	mov.w @(loc_8c05fc6e,PC),r4
	mov 0x00,r5
	extu.b r0,r0
	mov.l @(loc_8c05fc7c,PC),r3
	mulu.w r4,r0
	mov.w @(loc_8c05fc70,PC),r1
	mov 0x00,r6
	sts macl,r4
	add r3,r4

loc_8c05fc0e:
	mov.w @(loc_8c05fc6c,PC),r0
	add 0x01,r5
	cmp/ge r7,r5
	mov.w @(r0,r4),r2
	add r2,r6
	bf.s loc_8c05fc0e
	add r1,r4
	mov r6,r1
	shll2 r1
	shll r1
	mov r6,r3
	add r3,r1
	mov.l @(loc_8c05fc78,PC),r2
	shll2 r1
	mov.w @(loc_8c05fc6a,PC),r4
	shll2 r1
	jsr @r2
	mov r4,r0
	mov.l r0,@(0x4,r15)
	mov.w @(loc_8c05fc68,PC),r0
	mov.l @(loc_8c05fc78,PC),r2
	mov.l @(r0,r14),r1
	mov r1,r3
	shll2 r1
	shll r1
	add r3,r1
	shll2 r1
	shll2 r1
	jsr @r2
	mov r4,r0
	mov r13,r5
	mov r14,r4
	mov.l r0,@r15
	mov.l @(0x4,r15),r3
	cmp/gt r0,r3
	movt r6
	add 0xFF,r6
	neg r6,r6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05fc80,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05fc66:
	#data 0x020c
loc_8c05fc68:
	#data 0x04b4
loc_8c05fc6a:
	#data 0x00c8
loc_8c05fc6c:
	#data 0x0420
loc_8c05fc6e:
	#data 0x05a4
loc_8c05fc70:
	#data 0x0b48
	#align4
loc_8c05fc74:
	#data bank05.loc_8c05cb3e
loc_8c05fc78:
	#data bank12.loc_8c129128
loc_8c05fc7c:
	#data 0x8c268340
loc_8c05fc80:
	#data loc_8c05ec1e

;==============================================
loc_8c05fc84:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05fdcc,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fdcc,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov 0x01,r4
	mov.w @(loc_8c05fdb2,PC),r3
	mov 0x03,r7
	extu.b r0,r0
	mov.l @(loc_8c05fdd0,PC),r2
	xor r0,r4
	mov.w @(loc_8c05fdb4,PC),r1
	mul.l r3,r4
	mov 0x00,r5
	mov 0x00,r6
	sts macl,r4
	add r2,r4

loc_8c05fcba:
	mov.w @(loc_8c05fdb6,PC),r0
	add 0x01,r5
	cmp/ge r7,r5
	mov.w @(r0,r4),r3
	add r3,r6
	bf.s loc_8c05fcba
	add r1,r4
	mov r6,r1
	shll2 r1
	shll r1
	mov r6,r3
	add r3,r1
	mov.l @(loc_8c05fdd4,PC),r2
	shll2 r1
	mov.w @(loc_8c05fdb8,PC),r4
	shll2 r1
	jsr @r2
	mov r4,r0
	mov.l r0,@(0x4,r15)
	mov.w @(loc_8c05fdba,PC),r0
	mov.l @(loc_8c05fdd4,PC),r2
	mov.l @(r0,r14),r1
	mov r1,r3
	shll2 r1
	shll r1
	add r3,r1
	shll2 r1
	shll2 r1
	jsr @r2
	mov r4,r0
	mov r13,r5
	mov r14,r4
	mov.l r0,@r15
	mov.l @(0x4,r15),r3
	cmp/gt r0,r3
	movt r6
	add 0xFF,r6
	neg r6,r6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05fdd8,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c05fd12:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fdcc,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05fdcc,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05fdbc,PC),r0
	mov 0x00,r4
	mov.w @(loc_8c05fdc0,PC),r13
	mov.w r4,@(r0,r14)
	mov.w @(loc_8c05fdbe,PC),r0
	mov.w r4,@(r0,r14)
	add 0x08,r0
	mov.l @(r0,r14),r3
	add 0x8C,r0
	mov.b @(r0,r14),r0
	neg r3,r3
	extu.b r0,r0
	cmp/eq 0x4A,r0
	shad r3,r13
	bf loc_8c05fd58
	mov.w @(loc_8c05fdc2,PC),r2
	mov.w @(loc_8c05fdc4,PC),r0
	and r2,r13
	bra loc_8c05fd62
	mov.b r4,@(r0,r14)

loc_8c05fd58:
	mov.w @(loc_8c05fdc4,PC),r0
	mov 0x01,r3
	mov 0x70,r2
	mov.b r3,@(r0,r14)
	and r2,r13

loc_8c05fd62:
	mov.w @(loc_8c05fdc6,PC),r0
	extu.w r13,r3
	mov.w @(r0,r14),r2
	tst r3,r2
	bf loc_8c05fd98
	mov.w @(r0,r14),r3
	mov 0x02,r5
	mov.l @(loc_8c05fddc,PC),r2
	or r13,r3
	mov.w r3,@(r0,r14)
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c05fd98
	mov.w @(loc_8c05fdc8,PC),r0
	mov.w @(r0,r14),r3
	or r13,r3
	mov.w r3,@(r0,r14)
	add 0xCF,r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05fdca,PC),r3
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0x09,r0
	mov.b @(r0,r14),r1
	add 0xF6,r0
	mov.b r1,@(r0,r14)

loc_8c05fd98:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05fda4:
	sts.l pr,@-r15
	mov.l @(loc_8c05fdcc,PC),r3
	jsr @r3
	mov 0x00,r6
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05fdb2:
	#data 0x05a4
loc_8c05fdb4:
	#data 0x0b48
loc_8c05fdb6:
	#data 0x0420
loc_8c05fdb8:
	#data 0x00c8
loc_8c05fdba:
	#data 0x04b4
loc_8c05fdbc:
	#data 0x01fa
loc_8c05fdbe:
	#data 0x04ac
loc_8c05fdc0:
	#data 0x0240
loc_8c05fdc2:
	#data 0x0380
loc_8c05fdc4:
	#data 0x04ab
loc_8c05fdc6:
	#data 0x04ae
loc_8c05fdc8:
	#data 0x04dc
loc_8c05fdca:
	#data 0x0080
	#align4
loc_8c05fdcc:
	#data bank05.loc_8c05cb3e
loc_8c05fdd0:
	#data 0x8c268340
loc_8c05fdd4:
	#data bank12.loc_8c129128
loc_8c05fdd8:
	#data loc_8c05ec1e
loc_8c05fddc:
	#data bank05.loc_8c05cc14

;==============================================
loc_8c05fde0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ff08,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05ff08,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05fefa,PC),r0
	mov r14,r4
	mov r13,r5
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05fefc,PC),r0
	mov r3,r6
	mov.l r3,@r15
	mov.b @(r0,r6),r6
	mov.w @(loc_8c05fefe,PC),r0
	mov.b @(r0,r14),r3
	cmp/eq r3,r6
	movt r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05ff0c,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c05fe20:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05ff08,PC),r12
	jsr @r12
	mov 0x00,r6
	mov.w @(loc_8c05ff00,PC),r1
	mov r13,r5
	mov.w @(0x4,r13),r0
	mov 0x01,r6
	add r14,r1
	mov.w r0,@r1
	mov.w @(0x4,r13),r0
	add 0x05,r0
	mov.w r0,@(0x4,r13)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05ff02,PC),r0
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05fefe,PC),r0
	mov.b @r3,r2
	mov.l @(r0,r14),r3
	cmp/ge r3,r2
	bt loc_8c05fe62
	mov.w @(0x4,r13),r0
	add 0x02,r0
	mov.w r0,@(0x4,r13)
	mov.w @(loc_8c05ff04,PC),r0
	bra loc_8c05fe7a
	mov 0x00,r3

loc_8c05fe62:
	mov r13,r5
	mov 0x02,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05fefe,PC),r0
	mov.l @(r0,r14),r3
	cmp/pz r3
	bt loc_8c05fe76
	mov 0x00,r1
	mov.l r1,@(r0,r14)

loc_8c05fe76:
	mov.w @(r0,r14),r3
	add 0x8E,r0

loc_8c05fe7a:
	mov.w r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05fe88:
	mov.w @(loc_8c05ff06,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov 0x00,r6
	mov.l r13,@-r15
	mov 0x60,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.b r3,@(r0,r4)
	mov.w @(0x4,r5),r0
	mov.l @r5,r11
	mov.l @(loc_8c05ff10,PC),r12
	extu.w r0,r14

loc_8c05fea2:
	mov.b @(0x7,r5),r0
	add 0x01,r0
	mov.b r0,@(0x7,r5)
	mov r14,r0
	nop
	mov.b @(r0,r11),r7
	extu.b r7,r7
	mov r7,r0
	nop
	mov.b @(r0,r12),r3
	cmp/ge r13,r7
	extu.b r3,r3
	bf.s loc_8c05fec2
	add r3,r14
	bra loc_8c05ff36
	add 0x01,r6

loc_8c05fec2:
	cmp/eq 0x03,r0
	bt loc_8c05fee2
	cmp/eq 0x08,r0
	bt loc_8c05feee
	cmp/eq 0x16,r0
	bt loc_8c05ff1c
	cmp/eq 0x43,r0
	bt loc_8c05ff26
	cmp/eq 0x17,r0
	bt loc_8c05ff30
	cmp/eq 0x18,r0
	bt loc_8c05ff34
	cmp/eq 0x49,r0
	bt loc_8c05ff34
	bra loc_8c05ff36
	nop

loc_8c05fee2:
	mov.l @r15+,r11
	mov.l @(loc_8c05ff14,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c05feee:
	mov.l @r15+,r11
	mov.l @(loc_8c05ff18,PC),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;##############################################
loc_8c05fefa:
	#data 0x020c
loc_8c05fefc:
	#data 0x01d3
loc_8c05fefe:
	#data 0x04b4
loc_8c05ff00:
	#data 0x0444
loc_8c05ff02:
	#data 0x040c
loc_8c05ff04:
	#data 0x0442
loc_8c05ff06:
	#data 0x043d
	#align4
loc_8c05ff08:
	#data bank05.loc_8c05cb3e
loc_8c05ff0c:
	#data loc_8c05ec1e
loc_8c05ff10:
	#data bank15.loc_8c151408
loc_8c05ff14:
	#data loc_8c05eca8
loc_8c05ff18:
	#data loc_8c05ecc6

;----------------------------------------------
loc_8c05ff1c:
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ef36
	mov.l @r15+,r14

loc_8c05ff26:
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ef8a
	mov.l @r15+,r14

loc_8c05ff30:
	tst r6,r6
	bf loc_8c05ff36

loc_8c05ff34:
	add 0xFF,r6

loc_8c05ff36:
	cmp/pz r6
	bt loc_8c05fea2
	mov r14,r0
	nop
	mov.w r0,@(0x4,r5)
	mov 0x00,r3
	mov.w @(bank05.loc_8c06000e,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x01,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
