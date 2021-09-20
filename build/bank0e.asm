loc_8C0E00F0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e012c
	mov.w @(0x1E,r14),r0
	mov 0x03,r5
	mov r0,r6
	bsr bank0d.loc_8c0dfbe2
	mov r14,r4
	mov.w @(0x1E,r14),r0
	mov.l @(0x128,PC),r4
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	shll r0
	mov.w @(r0,r4),r0
	cmp/pz r0
	bt.s loc_8c0e012c
	mov.w r0,@(0x1C,r14)
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	shll r0
	mov.w @(r0,r4),r0
	mov.w r0,@(0x1C,r14)

loc_8C0E012C:
	mov.l @(0x10C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e014c
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x100,PC),r3
	mov 0x09,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x1B,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0E014C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E0152:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0E023C,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0E016a
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C0E043a
	lds.l @r15+,pr

loc_8C0E016A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0E0172:
	mov r4,r3
	mov.l @(loc_8C0E0244,pc),r1 ; r1 set to 0x8C15E968
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E0184:
	mov.w @(loc_8C0E0232,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E0248,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E0232,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E0234,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E0236,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E024C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0A,r2 ; r2 set to 0x0a
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0E0250,pc),r5 ; r5 set to 0x8C15E8F0
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
	mov.b r2,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r2 ; r2 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x14,r4),r3 ; r3 ??? bc r4 is ???
	extu.b r2,r2
	shll2 r2
	fmov.s @(r0,r3),fr2
	shll r2
	add r5,r2
	fmov.s @r2,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r2
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(0x14,r4),r3
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r5 ; r5 ??? bc r2 is ???
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	mov.l @(loc_8C0E0240,pc),r3 ; r3 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x07,r6 ; r6 set to 0x07
	fmov.s fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E0232:
	#data 0x00Dc
loc_8C0E0234:
	#data 0x012c
loc_8C0E0236:
	#data 0x01A3
	#align4

loc_8C0E0238:
	#data bank15.loc_8c15E8E4
loc_8C0E023C:
	#data bank03.loc_8c034D8c
loc_8C0E0240:
	#data bank03.loc_8c034C38
loc_8C0E0244:
	#data bank15.loc_8c15E968
loc_8C0E0248:
	#data bank12.loc_8c129560
loc_8C0E024C:
	#data bank12.loc_8c1294C8
loc_8C0E0250:
	#data bank15.loc_8c15E8F0

;==============================================
loc_8C0E0254:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0E0368,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0E026c
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C0E043a
	lds.l @r15+,pr

loc_8C0E026C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0E0274:
	mov r4,r3
	mov.l @(loc_8C0E036C,pc),r1 ; r1 set to 0x8C15E978
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0E0286:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E035E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0E0370,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E035E,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E0360,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E0362,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E0374,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E0364,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt.s loc_8C0E0304
	mov.l @(0x18,r14),r3
	mova @(loc_8C0E0378,pc),r0  ; r0 set to 0x8C0E0378
	bra loc_8C0E0308
	fmov.s @r0,fr3

loc_8C0E0304:
	mova @(loc_8C0E037C,pc),r0  ; r0 init to 0x8C0E037c
	fmov.s @r0,fr3

loc_8C0E0308:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fldi0 fr4
	fmov.s @(r0,r3),fr2
	mov.l @(loc_8C0E0380,pc),r3 ; r3 set to 0x8C26A524, r3 set to 0x8C26A524
	fadd fr3,fr2
	mov.l @(loc_8C0E0390,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0E0384,pc),r0  ; r0 set to 0x8C0E0384, r0 set to 0x8C0E0384
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r3),fr2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0E0388,pc),r0  ; r0 set to 0x8C0E0388, r0 set to 0x8C0E0388
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0E038C,pc),r0  ; r0 set to 0x8C0E038C, r0 set to 0x8C0E038c
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov r14,r4
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.b r3,@r14
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @(loc_8C0E0394,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	add 0x3E,r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E035E:
	#data 0x00Dc
loc_8C0E0360:
	#data 0x012c
loc_8C0E0362:
	#data 0x01A3
loc_8C0E0364:
	#data 0x0130
	#align4

loc_8C0E0368:
	#data bank03.loc_8c034D8c
loc_8C0E036C:
	#data bank15.loc_8c15E978
loc_8C0E0370:
	#data bank12.loc_8c129560
loc_8C0E0374:
	#data bank12.loc_8c1294C8
loc_8C0E0378:
	#data 0x42A00000
loc_8C0E037C:
	#data 0xC2A00000
loc_8C0E0380:
	#data 0x8C26A524
loc_8C0E0384:
	#data 0x44092492
loc_8C0E0388:
	#data 0xC0892492
loc_8C0E038C:
	#data 0xBF4DB6Db
loc_8C0E0390:
	#data bank10.loc_8c104434
loc_8C0E0394:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0E0398:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E041a
	mov.l @(loc_8C0E0450,pc),r3 ; r3 set to 0x8C034DEe
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
	mov.w @(loc_8C0E044A,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0E0434
	mov.b @(0x05,r14),r0
	mov 0x34,r5 ; r5 set to 0x34
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E044A,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(loc_8C0E0454,pc),r3 ; r3 set to 0x8C04223a
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x21,r0 ; r0 set to 0x21
	mov.l @(loc_8C0E0458,pc),r3 ; r3 set to 0x8C034E8c
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x17,r5 ; r5 set to 0x17
	add 0x42,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0E041A:
	mov.l @(loc_8C0E0450,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0E044C,pc),r1 ; r1 set to 0x1D0
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0E0434
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E043a
	mov.l @r15+,r14

loc_8C0E0434:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E043A:
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0E044E,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0E0444:
	mov.l @(loc_8C0E045C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E044A:
	#data 0x041c
loc_8C0E044C:
	#data 0x01D0
loc_8C0E044E:
	#data 0x012c
	#align4

loc_8C0E0450:
	#data bank03.loc_8c034dee
loc_8C0E0454:
	#data bank04.loc_8c04223a
loc_8C0E0458:
	#data bank03.loc_8c034e8c
loc_8C0E045C:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c0e0460:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt.s loc_8c0e0486
	mov r4,r14
	mov.l @(0x140,PC),r2
	mov 0x03,r5
	mov 0x00,r6
	jsr @r2
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e0496
	mov r0,r4
	bra loc_8c0e04a0
	nop 

loc_8c0e0486:
	mov.l @(0x12C,PC),r2
	mov 0x04,r5
	mov 0x00,r6
	jsr @r2
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0e04a0
	mov r0,r4

loc_8c0e0496:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c0e04a0:
	mov.l @(0x114,PC),r2
	mov 0x20,r0
	mov.l r2,@(0x10,r4)
	mov 0x00,r2
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r2,@(r0,r4)
	mov.w @(0xFA,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xF0,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(0xEE,PC),r0
	extu.w r2,r2
	mov.l r2,@(r0,r4)
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E04D2:
	mov.l r14,@-r15
	mov 0x03,r5
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e050c
	mov r0,r4
	mov.l @(0xCC,PC),r3
	mov 0x20,r0
	mov 0x01,r2
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0xB2,PC),r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xA8,PC),r0
	mov.l @(r0,r14),r2
	mov.l r2,@(r0,r4)

loc_8C0E050C:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
;unused
loc_8c0e0516:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x03,r5
	mov.l @(0x90,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e054c
	mov r0,r4
	mov.w @(0x7A,PC),r2
	mov 0x26,r0
	mov.l @(0x80,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov 0x00,r2
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r2,@(r0,r4)

loc_8c0e054c:
	mov.l @(0x64,PC),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e0578
	mov r0,r4
	mov.w @(0x4E,PC),r2
	mov 0x26,r0
	mov.l @(0x54,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov 0x01,r2
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r2,@(r0,r4)

loc_8c0e0578:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E0584:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8C0E059c
	mov.l @(0x18,r14),r5
	mov.l @(loc_8C0E05BC,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0E059C:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0E05C0,pc),r0 ; r0 set to 0x8C15E9B8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r1
	jmp @r1
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e05ae:
	#data 0x2200
loc_8c0e05b0:
	#data 0x0158
loc_8c0e05b2:
	#data 0x00cc
	#align4

loc_8C0E05B4:
	#data bank04.loc_8c044F12
loc_8C0E05B8:
	#data loc_8c0e0584
loc_8C0E05BC:
	#data bank04.loc_8c0450C0
loc_8C0E05C0:
	#data bank15.loc_8c15E9B8

;==============================================
loc_8C0E05C4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c0e0640
	mov.b @(0x4,r14),r0
	mov.w @(0xF4,PC),r1
	add 0x01,r0
	mov.l @(0x104,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0xEC,PC),r0
	mov.w @(0xE8,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0xE6,PC),r0
	mov 0x01,r6
	mov r14,r1
	add 0x50,r1
	mov.b r6,@(r0,r14)
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
	mov.w @(0xCA,PC),r0
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
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r4
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x9C,PC),r0
	mov.l r4,@(r0,r14)
	mov r6,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov.w @(0x8E,PC),r0
	mov.b r4,@(r0,r14)

loc_8C0E0640:
	mov.w @(0x90,PC),r0
	mov.w @(r0,r5),r3
	mov.w @(0x8E,PC),r0
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8c0e0658
	lds.l @r15+,pr
	mov.l @(0x90,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0E0658:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0e06b0
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c0e04d2
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0e06b0
	mov r0,r4
	mov.w @(0x5C,PC),r0
	mov.w @(0x5A,PC),r1
	mov.l @(r0,r14),r3
	add r14,r1
	add 0x01,r3
	mov.l r3,@(r0,r14)
	mov.l @(r0,r14),r0
	mov.l @(0x64,PC),r3
	and 0x03,r0
	mov.l r0,@r1
	mov.w @(0x48,PC),r0
	mov.l @(r0,r14),r5
	mov 0x04,r0
	shll r5
	shll2 r5
	add r3,r5
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r5,fr4
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x36,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0e06aa
	mov 0x34,r0
	fneg fr4

loc_8C0E06AA:
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)

loc_8C0E06B0:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E06B6:
	add 0xFC,r15
	mov.l @(0x30,PC),r0
	mov.l @(0x34,PC),r3
	mov.b r5,@r15
	mov 0x17,r5
	mov.b @r15,r6
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e06ca:
	#data 0x00dc
loc_8c0e06cc:
	#data 0x00c0
loc_8c0e06ce:
	#data 0x012c
loc_8c0e06d0:
	#data 0x01a3
loc_8c0e06d2:
	#data 0x00d0
loc_8c0e06d4:
	#data 0x0158
loc_8c0e06d6:
	#data 0x00cc
loc_8c0e06d8:
	#data 0x0130
	#align4

loc_8C0E06DC:
	#data bank12.loc_8c129560
loc_8C0E06E0:
	#data bank12.loc_8c1294C8
loc_8C0E06E4:
	#data bank04.loc_8c0450C0
loc_8C0E06E8:
	#data bank15.loc_8c15E998
loc_8C0E06EC:
	#data bank15.loc_8c15E9E4
loc_8C0E06F0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0E06F4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c0e078e
	mov.b @(0x4,r14),r0
	mov.w @(0x10C,PC),r1
	add 0x01,r0
	mov.l @(0x118,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x104,PC),r0
	mov.w @(0x100,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0xFE,PC),r0
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
	mov.w @(0xE2,PC),r0
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
	fldi0 fr3
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xA8,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0e0780
	mov 0x11,r5
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0E0780:
	bsr loc_8c0e06b6
	mov r14,r4
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov 0x0B,r0
	bra loc_8c0e080c
	mov.w r0,@(0x1E,r14)

loc_8C0E078E:
	mov.w @(0x8A,PC),r0
	mov.w @(r0,r5),r2
	mov.w @(0x88,PC),r0
	extu.w r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8c0e07b8
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0e07ca
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0e07c2

loc_8C0E07B8:
	lds.l @r15+,pr
	mov.l @(0x74,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0E07C2:
	mov.w @(0x1E,r14),r0
	mov r0,r5
	bsr loc_8c0e06b6
	mov r14,r4

loc_8C0E07CA:
	mov 0x5C,r1
	mov.l @(0x64,PC),r3
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

loc_8C0E080C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e0812:
	#data 0x00dc
loc_8c0e0814:
	#data 0x00c0
loc_8c0e0816:
	#data 0x012c
loc_8c0e0818:
	#data 0x01a3
loc_8c0e081a:
	#data 0x0130
loc_8c0e081c:
	#data 0x0158
loc_8c0e081e:
	#data 0x00cc
	#align4

loc_8C0E0820:
	#data bank12.loc_8c129560
loc_8C0E0824:
	#data bank12.loc_8c1294C8
loc_8C0E0828:
	#data 0x3E555555
loc_8C0E082c:
	#data 0xBF892492
loc_8C0E0830:
	#data bank04.loc_8c0450C0
loc_8C0E0834:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0E0838:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c0e08f8
	mov.b @(0x4,r14),r0
	mov.w @(0x116,PC),r1
	add 0x01,r0
	mov.l @(0x120,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x10E,PC),r0
	mov.w @(0x10A,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0x108,PC),r0
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
	mov.w @(0xEC,PC),r0
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
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x0C,r3
	fldi0 fr4
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr4
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xAC,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e08cc
	mova @(0xB8,PC),r0
	fmov @r0,fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0E08CC:
	mov 0x34,r0
	mov.l @(0xB4,PC),r3
	fmov @(r0,r5),fr3
	mov 0x04,r6
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x12,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x9C,PC),r3
	mov 0x01,r2
	mov.b r2,@r14
	mov r14,r4
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0E08F8:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0e091c
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x62,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e0956
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x1C,r0
	bra loc_8c0e0956
	mov.w r0,@(0x1C,r14)

loc_8C0E091C:
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
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0e094c
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c0e0956
	mov.b r0,@(0x4,r14)

loc_8C0E094C:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0E0956:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E095C:
	rts
	nop

;----------------------------------------------
loc_8c0e0960:
	#data 0x00dc
loc_8c0e0962:
	#data 0x00c0
loc_8c0e0964:
	#data 0x012c
loc_8c0e0966:
	#data 0x01a3
loc_8c0e0968:
	#data 0x0130
loc_8c0e096a:
	#data 0x0141
	#align4

loc_8C0E096C:
	#data bank12.loc_8c129560
loc_8C0E0970:
	#data bank12.loc_8c1294C8
loc_8C0E0974:
	#data 0x42A00000
loc_8C0E0978:
	#data 0x413AAAAa
loc_8C0E097c:
	#data 0xC2A00000
loc_8C0E0980:
	#data 0xC14DB6Db
loc_8C0E0984:
	#data bank03.loc_8c034e8c
loc_8C0E0988:
	#data bank10.loc_8c104434
loc_8C0E098C:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0E0990:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e0a56
	mov 0x01,r12
	mov.b @(0x4,r14),r0
	mov.w @(0x126,PC),r1
	add 0x01,r0
	mov.l @(0x130,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x11E,PC),r0
	mov.w @(0x11A,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0x118,PC),r0
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
	mov.w @(0xFE,PC),r0
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
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0x08,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0xD4,PC),r0
	fmov @r0,fr4
	mova @(0xD4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xBA,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e0a2e
	mova @(0xC8,PC),r0
	fmov @r0,fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0E0A2E:
	mov 0x34,r0
	mov.l @(0xBC,PC),r3
	fmov @(r0,r13),fr3
	mov 0x13,r5
	mov 0x08,r6
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b r12,@r14
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0E0A56:
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0e0ab8
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
	mov 0x34,r0
	fmov @(r0,r13),fr4
	fmov @(r0,r14),fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0e0a94
	fneg fr4

loc_8C0E0A94:
	mova @(0x64,PC),r0
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bf loc_8c0e0ac6
	mov.b @(0x5,r14),r0
	mov 0x09,r6
	mov.l @(0x4C,PC),r3
	mov 0x13,r5
	add 0x01,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	mov.w @(0x2C,PC),r0
	mov.w r12,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E0AB8:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E0AC6:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e0ad0:
	#data 0x00dc
loc_8c0e0ad2:
	#data 0x00c0
loc_8c0e0ad4:
	#data 0x012c
loc_8c0e0ad6:
	#data 0x01a3
loc_8c0e0ad8:
	#data 0x0130
loc_8c0e0ada:
	#data 0x02ae
	#align4

loc_8C0E0ADC:
	#data bank12.loc_8c129560
loc_8C0E0AE0:
	#data bank12.loc_8c1294C8
loc_8C0E0AE4:
	#data 0x44200000
loc_8C0E0AE8:
	#data 0x413AAAAa
loc_8C0E0AEc:
	#data 0xC4200000
loc_8C0E0AF0:
	#data bank03.loc_8c034e8c
loc_8C0E0AF4:
	#data bank10.loc_8c104434
loc_8C0E0AF8:
	#data bank03.loc_8c034dee
loc_8C0E0AFc:
	#data 0x43200000

;==============================================
loc_8C0E0B00:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e0bf0
	mov 0x01,r12
	mov.b @(0x4,r14),r0
	mov.w @(0xAE,PC),r1
	add 0x01,r0
	mov.l @(0xB8,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0xA6,PC),r0
	mov.w @(0xA2,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0xA0,PC),r0
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
	mov.w @(0x86,PC),r0
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
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b @(r0,r14),r3
	add 0xF8,r3
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr4
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x40,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e0ba0
	mova @(0x4C,PC),r0
	fmov @r0,fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0E0BA0:
	mov 0x34,r0
	mov.l @(0x44,PC),r3
	fmov @(r0,r13),fr3
	mov 0x13,r5
	mov 0x0A,r6
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b r12,@r14
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e0bc8:
	#data 0x00dc
loc_8c0e0bca:
	#data 0x00c0
loc_8c0e0bcc:
	#data 0x012c
loc_8c0e0bce:
	#data 0x01a3
loc_8c0e0bd0:
	#data 0x0130
	#align4

loc_8C0E0BD4:
	#data bank12.loc_8c129560
loc_8C0E0BD8:
	#data bank12.loc_8c1294C8
loc_8C0E0BDC:
	#data 0x44200000
loc_8C0E0BE0:
	#data 0xC13AAAAa
loc_8C0E0BE4:
	#data 0xC4200000
loc_8C0E0BE8:
	#data bank03.loc_8c034e8c
loc_8C0E0BEC:
	#data bank10.loc_8c104434

;==============================================
loc_8C0E0BF0:
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0e0c82
	mov 0x5C,r1
	mov.l @(0xD0,PC),r3
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
	mov 0x34,r0
	fmov @(r0,r13),fr4
	fmov @(r0,r14),fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0e0c2e
	fneg fr4

loc_8C0E0C2E:
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bf loc_8c0e0cc2
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x8C,PC),r0
	mov.w r12,@(r0,r13)
	mova @(0x94,PC),r0
	fmov @r0,fr4
	mova @(0x94,PC),r0
	fmov @r0,fr2
	mov 0x68,r0
	fmov fr2,@(r0,r14)
	mov.w @(0x7E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e0c60
	mova @(0x88,PC),r0
	fmov @r0,fr4
	mov 0x68,r0
	fmov @(r0,r14),fr2
	fneg fr2
	fmov fr2,@(r0,r14)

loc_8C0E0C60:
	mov 0x34,r0
	mov.l @(0x80,PC),r3
	fmov @(r0,r14),fr3
	mov 0x13,r5
	mov 0x0B,r6
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(0x70,PC),r2
	mov 0x29,r5
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0E0C82:
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0e0cb4
	mov 0x5C,r0
	fmov @(r0,r14),fr0
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x68,r1
	add r14,r1
	fadd fr0,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,fr3
	fmul fr0,fr3
	fmov fr2,@(r0,r14)
	fldi0 fr2
	fcmp/gt fr3,fr2
	bf loc_8c0e0cb4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0E0CB4:
	lds.l @r15+,pr
	mov.l @(0x18,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E0CC2:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e0ccc:
	#data 0x02B0
loc_8c0e0cce:
	#data 0x0130
	#align4

loc_8C0E0CD0:
	#data bank03.loc_8c034dee
loc_8C0E0CD4:
	#data 0x43D55555
loc_8C0E0CD8:
	#data 0x42555555
loc_8C0E0CDc:
	#data 0x3ED55555
loc_8C0E0CE0:
	#data 0xC2555555
loc_8C0E0CE4:
	#data bank03.loc_8c034e8c
loc_8C0E0CE8:
	#data bank04.loc_8c04223a

;==============================================
loc_8C0E0CEC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf loc_8C0E0D74
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0E0DEA,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E0DFC,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E0DEC,pc),r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E0DEA,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E0DEE,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E0DF0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E0E00,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r5),r2
	mov 0x19,r6 ; r6 set to 0x19
	mov.b r2,@(r0,r14)
	mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	mov.l @(loc_8C0E0E04,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E0D74:
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov.w @(loc_8C0E0DF2,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???
	shad r3, r0
	mov.w @(loc_8C0E0DF4,pc),r3 ; r3 set to 0x159
	and 0x1F,r0
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bt loc_8C0E0D96
	mov 0x03,r0 ; r0 set to 0x03
	bra loc_8C0E0E94
	mov.b r0,@(0x04,r14)

loc_8c0e0d96:
	mov.b @(0x05,r14),r0
	mov.l @(loc_8c0e0e08,pc),r13
	tst r0,r0
	bf loc_8c0e0e10
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E0DF6,pc),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x02,r0
	bt loc_8c0e0e94
	mov.w @(loc_8C0E0DF6,pc),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x01,r0
	bf loc_8c0e0de2
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mova @(loc_8C0E0E0C,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E0DF8,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e0dde
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c0e0dde:
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)

loc_8c0e0de2:
	jsr @r13
	mov r14,r4
	bra loc_8c0e0ea0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e0dea:
	#data 0x00DC
loc_8c0e0dec:
	#data 0x00C0
loc_8c0e0dee:
	#data 0x012C
loc_8c0e0df0:
	#data 0x01A3
loc_8c0e0df2:
	#data 0x00CC
loc_8c0e0df4:
	#data 0x0159
loc_8C0E0DF6:
	#data 0x02B2
loc_8C0E0DF8:
	#data 0x0130
	#align4

loc_8c0e0dfc:
	#data bank12.loc_8c129560
loc_8c0e0e00:
	#data bank12.loc_8c1294c8
loc_8c0e0e04:
	#data bank03.loc_8c034e8c
loc_8c0e0e08:
	#data bank03.loc_8c034dee
loc_8C0E0E0C:
	#data 0xC1200000

;==============================================
loc_8c0e0e10:
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0e0e6e
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
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r13
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0e0ea0
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8c0e0f48,pc),r3
	mov 0x1A,r6
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mova @(loc_8C0E0F44,pc),r0
	fmov.s @r0,fr4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	mov 0x17,r5
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0e0e6e:
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
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e0ea0

loc_8C0E0E94:
	lds.l @r15+,pr
	mov.l @(loc_8C0E0F4C,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0E0EA0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E0EA8:
	rts
	nop

;----------------------------------------------
loc_8C0E0EAC:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c0e0f24
	mov.b @(0x4,r4),r0
	mov.w @(0x82,PC),r1
	add 0x01,r0
	mov.l @(0x94,PC),r3
	mov.b r0,@(0x4,r4)
	add r4,r1
	mov.w @(0x7A,PC),r0
	mov.w @(0x76,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0x74,PC),r0
	mov 0x01,r6
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(0x58,PC),r0
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
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r4,r1
	mov.b @(r0,r5),r2
	mov 0x07,r3
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.w @(0x2C,PC),r0
	add 0x34,r2
	mov.b r6,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x08,r0
	mov.l @(0x34,PC),r3
	mov.w r0,@(0x1C,r4)
	jsr @r3
	mov 0x0C,r0

loc_8C0E0F24:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0e0f36
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0E0F36:
	lds.l @r15+,pr
	rts 
	nop 

;----------------------------------------------
loc_8c0e0f3c:
	#data 0x00dc
loc_8c0e0f3e:
	#data 0x00c0
loc_8c0e0f40:
	#data 0x012c
loc_8c0e0f42:
	#data 0x01a3
	#align4

loc_8c0e0f44:
	#data 0x40800000
loc_8C0E0F48:
	#data bank03.loc_8c034e8c
loc_8C0E0F4C:
	#data bank04.loc_8c0450C0
loc_8C0E0F50:
	#data bank12.loc_8c129560
loc_8C0E0F54:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0E0F58:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf.s loc_8C0E0FF2
	mov r5,r13
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0E1030,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E103C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E1032,pc),r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E1030,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E1034,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E1036,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E1040,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E1034,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8C0E0FCe
	mov 0x31,r0 ; r0 set to 0x31
	bra loc_8C0E0FD0
	mov 0xFC,r3

loc_8c0e0fce:
	mov 0xEE,r3

loc_8c0e0fd0:
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	mov 0x17,r5
	mov.l @(loc_8c0e1044,pc),r3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	extu.b r6,r6
	shll r6
	jsr @r3
	mov r14,r4

loc_8c0e0ff2:
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E1038,pc),r0
	add r13,r0
	mov.b @(0x01,r0),r0
	cmp/eq 0x05,r0
	bt loc_8c0e1018
	mov.w @(loc_8C0E1038,pc),r0
	add r13,r0
	mov.b @(0x01,r0),r0
	cmp/eq 0x08,r0
	bf loc_8c0e1024

loc_8c0e1018:
	lds.l @r15+,pr
	mov.l @(loc_8c0e1048,pc),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0e1024:
	lds.l @r15+,pr
	mov.l @(loc_8c0e104c,pc),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e1030:
	#data 0x00DC
loc_8c0e1032:
	#data 0x00C0
loc_8c0e1034:
	#data 0x012C
loc_8c0e1036:
	#data 0x01A3
loc_8C0E1038:
	#data 0x0150
	#align4

loc_8c0e103c:
	#data bank12.loc_8c129560
loc_8c0e1040:
	#data bank12.loc_8c1294c8
loc_8c0e1044:
	#data bank03.loc_8c034e8c
loc_8c0e1048:
	#data bank03.loc_8c034dee
loc_8c0e104c:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c0e1050:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf.s loc_8c0e10c6
	mov 0x01,r6
	mov.b @(0x4,r4),r0
	mov.w @(0xCA,PC),r1
	add 0x01,r0
	mov.l @(0xD8,PC),r3
	mov.b r0,@(0x4,r4)
	add r4,r1
	mov.w @(0xC2,PC),r0
	mov.w @(0xBE,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0xBC,PC),r0
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(0xA2,PC),r0
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
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov 0xFF,r2
	mov.w @(0x7A,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)

loc_8c0e10c6:
	mov.w @(0x6A,PC),r0
	mov.w @(r0,r5),r3
	mov.w @(0x68,PC),r0
	extu.w r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bt loc_8c0e10dc
	lds.l @r15+,pr
	mov.l @(0x6C,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c0e10dc:
	mov 0x24,r0
	mov.w @(0x56,PC),r14
	mov.b @(r0,r5),r2
	add r5,r14
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov r0,r14
	extu.b r14,r3
	tst r3,r3
	bt loc_8c0e1118
	mov.w @(0x30,PC),r0
	extu.b r14,r3
	mov.b r6,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/eq r0,r3
	bt loc_8c0e111e
	mov.l @(0x3C,PC),r3
	extu.b r14,r0
	mov 0x17,r5
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr
	mov r14,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c0e1118:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c0e1126

loc_8c0e111e:
	lds.l @r15+,pr
	mov.l @(0x28,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0e1126:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14
;----------------------------------------------
loc_8c0e112c:
	#data 0x00DC
loc_8c0e112e:
	#data 0x00C0
loc_8c0e1130:
	#data 0x012C
loc_8c0e1132:
	#data 0x01A3
loc_8c0e1134:
	#data 0x0158
loc_8c0e1136:
	#data 0x00CC
loc_8c0e1138:
	#data 0x0150
	#align4

loc_8c0e113c:
	#data bank12.loc_8c129560
loc_8c0e1140:
	#data bank12.loc_8c1294c8
loc_8c0e1144:
	#data bank04.loc_8c0450c0
loc_8c0e1148:
	#data bank03.loc_8c034e8c
loc_8c0e114c:
	#data bank03.loc_8c034dee

;==============================================
;unused
loc_8c0e1150:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0x144,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e1198
	mov r0,r4
	mov.l @(0x134,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x11C,PC),r2
	mov.l r3,@(0x10,r4)
	mov.w @(0x11A,PC),r5
	mov.l r14,@(0x18,r4)
	mov.b @(0x4,r15),r0
	add r4,r5
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.w @(0x104,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0e1198:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0E11A4:
	mov r4,r3
	mov.l @(loc_8C0E12AC,pc),r1 ; r1 set to 0x8C15E9F8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E11B6:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8C0E11BC:
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0E12B0,pc),r0 ; r0 set to 0x8C15EA08, r0 set to 0x8C15EA08
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0E11D0:
	mov r4,r3
	mov.l @(loc_8C0E12B4,pc),r1 ; r1 set to 0x8C15EA14
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E11E2:
	mov.w @(loc_8C0E129C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E12B8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0E129C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E129E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E12A0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E12BC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov r2,r6 ; r6 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0E12C0,pc),r0  ; r0 set to 0x8C0E12C0
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C0E12C4,pc),r3 ; r3 set to 0x8C034E8c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E126C:
	mov.w @(0x28,PC),r5
	mov.l @(0x18,r4),r2
	mov.w @(0x26,PC),r0
	add r4,r5
	mov.w @r5,r3
	mov.w @(r0,r2),r1
	cmp/eq r1,r3
	bt loc_8c0e1280
	mov 0x02,r0
	mov.b r0,@(0x4,r4)

loc_8C0E1280:
	rts 
	nop 


;----------------------------------------------
loc_8C0E1284:
	mov r4,r3
	mov.l @(loc_8C0E12C8,pc),r1 ; r1 set to 0x8C15EA1c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e1296:
	#data 0x2300
loc_8c0e1298:
	#data 0x00cc
loc_8c0e129a:
	#data 0x0158
loc_8c0e129c:
	#data 0x00dc
loc_8c0e129e:
	#data 0x012c
loc_8c0e12a0:
	#data 0x01a3
	#align4

loc_8C0E12A4:
	#data bank04.loc_8c044F12
loc_8C0E12A8:
	#data loc_8c0e11A4
loc_8C0E12AC:
	#data bank15.loc_8c15E9F8
loc_8C0E12B0:
	#data bank15.loc_8c15EA08
loc_8C0E12B4:
	#data bank15.loc_8c15EA14
loc_8C0E12B8:
	#data bank12.loc_8c129560
loc_8C0E12BC:
	#data bank12.loc_8c1294C8
loc_8C0E12C0:
	#data 0xC0CDB6Db
loc_8C0E12C4:
	#data bank03.loc_8c034e8c
loc_8C0E12C8:
	#data bank15.loc_8c15EA1c

;==============================================
loc_8C0E12CC:
	mov.w @(loc_8C0E142C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E1438,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0E142C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E142E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E1430,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E143C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0E142E,pc),r0 ; r0 set to 0x12c
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
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8C0E136a
	fldi0 fr4
	mova @(loc_8C0E1440,pc),r0  ; r0 set to 0x8C0E1440
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0E1444,pc),r0  ; r0 set to 0x8C0E1444
	bra loc_8C0E137a
	fmov.s @r0,fr3

loc_8c0e136a:
	mova @(loc_8C0E1448,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0E144C,pc),r0
	fmov.s @r0,fr3

loc_8c0e137a:
	mov 0x60,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0E1450,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0E1432,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0e13a0
	mov 0x01,r6
	mov 0x5C,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)

loc_8c0e13a0:
	mov.l @(loc_8c0e1454,pc),r3
	mov 0x17,r5
	jmp @r3
	lds.l @r15+,pr

loc_8C0E13A8:
	mov r4,r3
	mov.l @(loc_8C0E1458,pc),r1 ; r1 set to 0x8C15EA24
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0E13BA:
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
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mov.w @(0x3A,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0e1426
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(0x2A,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	fldi1 fr3
	fadd fr3,fr3
	fmov @(r0,r4),fr2
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C0E1426:
	mov.l @(0x34,PC),r3
	jmp @r3
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E142C:
	#data 0x00Dc
loc_8C0E142E:
	#data 0x012c
loc_8C0E1430:
	#data 0x01A3
loc_8c0e1432:
	#data 0x0130
loc_8c0e1434:
	#data 0x041c
	#align4

loc_8C0E1438:
	#data bank12.loc_8c129560
loc_8C0E143C:
	#data bank12.loc_8c1294C8
loc_8C0E1440:
	#data 0xBFD55555
loc_8C0E1444:
	#data 0x414DB6Db
loc_8c0e1448:
	#data 0xBF555555
loc_8c0e144c:
	#data 0x41CDB6Db
loc_8c0e1450:
	#data 0xBF092492
loc_8C0E1454:
	#data bank03.loc_8c034e8c
loc_8C0E1458:
	#data bank15.loc_8c15EA24
loc_8C0E145C:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0E1460:
	mov.w @(0x1C,r4),r0
	mov 0x1E,r3 ; r3 set to 0x1e
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt.s loc_8C0E1488
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bt loc_8C0E147c
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0E148c
	mov.b r0,@(0x04,r4)

loc_8C0E147C:
	tst r5,r0
	bt loc_8C0E1488
	mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r1 ; r1 set to 0x00
	bra loc_8C0E148c
	mov.b r1,@(r0,r4)

loc_8C0E1488:
	mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)

loc_8C0E148C:
	rts
	nop

;----------------------------------------------
loc_8C0E1490:
	mov r4,r3
	mov.l @(loc_8C0E1574,pc),r1 ; r1 set to 0x8C15EA34
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E14A2:
	mov.w @(loc_8C0E156C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E1578,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0E156C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E156E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E157C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0E1570,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C0E152c
	mov.l @(loc_8C0E1580,pc),r1 ; r1 set to 0x41BAAAAa
	mov 0x34,r0 ; r0 set to 0x34
	lds r1,fpul
	bra loc_8C0E1534
	fsts fpul,fr3

loc_8C0E152C:
	mov.l @(loc_8C0E1584,pc),r1 ; r1 set to 0xC1BAAAAa
	mov 0x34,r0 ; r0 set to 0x34
	lds r1,fpul
	fsts fpul,fr3

loc_8C0E1534:
	fmov.s @(r0,r4),fr2
	mov.l @(loc_8C0E1588,pc),r1 ; r1 set to 0x43294924, r1 set to 0x43294924
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	lds.l @r15+,pr
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0E154C:
	mov 0x02,r0 ; r0 set to 0x02
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0E1552:
	mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov 0x03,r0 ; r0 set to 0x03
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0E155E:
	mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E158C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E156A:
	#data 0x012c
loc_8C0E156C:
	#data 0x00Dc
loc_8C0E156E:
	#data 0x01A3
loc_8C0E1570:
	#data 0x0130
	#align4

loc_8C0E1574:
	#data bank15.loc_8c15EA34
loc_8C0E1578:
	#data bank12.loc_8c129560
loc_8C0E157C:
	#data bank12.loc_8c1294C8
loc_8C0E1580:
	#data 0x41BAAAAa
loc_8C0E1584:
	#data 0xC1BAAAAa
loc_8C0E1588:
	#data 0x43294924
loc_8C0E158C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e1590:
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
	bt.s loc_8c0e15bc
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0xFC,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0e15bc:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E15C4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E16B6,pc),r2 ; r2 set to 0x2A4
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(0x18,r14),r3
	mov r14,r4
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C0E16CC,pc),r3 ; r3 set to 0x8C28C6D8
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov.b @(r0,r14),r1
	mov.l @(loc_8C0E16D0,pc),r0 ; r0 set to 0x8C15EA3c
	extu.b r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E15E4:
	mov r4,r3
	mov.l @(loc_8C0E16D4,pc),r1 ; r1 set to 0x8C15EA44
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E15F6:
	mov.w @(loc_8C0E16B8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E16D8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E16B8,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E16BA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E16BC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E16DC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0E16BE,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov 0x00,r2 ; r2 set to 0x00
	mov r2,r6 ; r6 set to 0x00
	mov.w r3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0E16E0,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0E1686:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E1706
	mov.w @(loc_8C0E16C0,pc),r0 ; r0 set to 0x141
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C0E1760
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0E16BE,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C0E16E8
	mova @(loc_8C0E16E4,pc),r0  ; r0 set to 0x8C0E16E4
	bra loc_8C0E16Ec
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E16B4:
	#data 0x2400
loc_8C0E16B6:
	#data 0x02A4
loc_8C0E16B8:
	#data 0x00Dc
loc_8C0E16BA:
	#data 0x012c
loc_8C0E16BC:
	#data 0x01A3
loc_8C0E16BE:
	#data 0x0130
loc_8C0E16C0:
	#data 0x0141
	#align4

loc_8C0E16C4:
	#data bank04.loc_8c044F12
loc_8C0E16C8:
	#data loc_8c0e15C4
loc_8C0E16CC:
	#data 0x8C28C6D8
loc_8C0E16D0:
	#data bank15.loc_8c15EA3c
loc_8C0E16D4:
	#data bank15.loc_8c15EA44
loc_8C0E16D8:
	#data bank12.loc_8c129560
loc_8C0E16DC:
	#data bank12.loc_8c1294C8
loc_8C0E16E0:
	#data bank03.loc_8c034C38
loc_8C0E16E4:
	#data 0xC0555555

;==============================================
loc_8c0e16e8:
	mova @(loc_8C0E1834,pc),r0
	fmov.s @r0,fr3

loc_8c0e16ec:
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0E1838,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0E183C,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r14)

loc_8C0E1706:
	mov.l @(loc_8C0E1840,pc),r3 ; r3 set to 0x8C034D8c
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
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0E1758
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E1928
	mov.l @r15+,r14

loc_8C0E1758:
	mov.w @(0x1E,r14),r0
	mov 0x28,r3 ; r3 set to 0x28
	cmp/gt r3,r0
	bf loc_8C0E176c

loc_8C0E1760:
	mov.w @(loc_8C0E182A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E176C:
	mov.l @(loc_8C0E1844,pc),r3 ; r3 set to 0x8C26823c
	mov.w @(loc_8C0E182A,pc),r1 ; r1 set to 0x12c
	mov.l @r3,r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	mov r0,r2
	mov.b @(0x02,r14),r0
	xor r2,r0
	mov.b r0,@r1
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E1786:
	mov r4,r3
	mov.l @(loc_8C0E1848,pc),r1 ; r1 set to 0x8C15EA54
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E1798:
	mov.l r8,@-r15
	mov.w @(loc_8C0E182C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E184C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E182C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E182A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E182E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E1850,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.w @(loc_8C0E1830,pc),r1 ; r1 set to 0x130
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0E1830,pc),r0 ; r0 set to 0x130
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
	xor 0x01,r0
	mov.w r0,@r1
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov r0,r8 ; r8 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0E1830,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8C0E1858
	add r4,r8 ; r8 ??? bc r4 is ???
	mov.l @(loc_8C0E1854,pc),r1 ; r1 set to 0xC3555555
	lds r1,fpul
	bra loc_8C0E185e
	fsts fpul,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E182A:
	#data 0x012c
loc_8C0E182C:
	#data 0x00Dc
loc_8C0E182E:
	#data 0x01A3
loc_8C0E1830:
	#data 0x0130
	#align4

loc_8c0e1834:
	#data 0x40555555
loc_8c0e1838:
	#data 0x414DB6Db
loc_8c0e183c:
	#data 0xBF092492
loc_8C0E1840:
	#data bank03.loc_8c034D8c
loc_8C0E1844:
	#data 0x8C26823c
loc_8C0E1848:
	#data bank15.loc_8c15EA54
loc_8C0E184C:
	#data bank12.loc_8c129560
loc_8C0E1850:
	#data bank12.loc_8c1294C8
loc_8C0E1854:
	#data 0xC3555555

;==============================================
loc_8C0E1858:
	mov.l @(loc_8C0E1940,pc),r2 ; r2 set to 0x43555555
	lds r2,fpul
	fsts fpul,fr3

loc_8C0E185E:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	mov.w @(loc_8C0E1938,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fadd fr3,fr2
	mov.l @(loc_8C0E1944,pc),r1 ; r1 set to 0x42092492, r1 set to 0x42092492
	lds r1,fpul
	fmov.s fr2,@r8
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	fmov.s fr3,@(r0,r4)
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0E193A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr
	mov.l @(loc_8C0E1948,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	jmp @r3
	mov.l @r15+,r8

loc_8C0E188C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E193A,pc),r0 ; r0 set to 0x12c
	mov.l r13,@-r15
	mov 0x01,r13 ; r13 set to 0x01
	sts.l pr,@-r15
	mov.b r13,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E18D4
	mov.l @(loc_8C0E194C,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0E18C8
	mov.l @(loc_8C0E1950,pc),r2 ; r2 set to 0x8C28C6D8
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.l @r2,r3 ; r3 ??
	mov r13,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x0F,r3)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w r0,@(0x1E,r14)
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0 ; r0 set to 0x22
	bra loc_8C0E1920
	mov.b r3,@(r0,r14)

loc_8C0E18C8:
	mov.w @(loc_8C0E193C,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0E1920
	bra loc_8C0E1920
	nop

loc_8c0e18d4:
	mov.l @(loc_8c0e194c,pc),r3
	jsr @r3
	mov r14,r4
	mov r14,r3
	mov 0x38,r0
	add r0,r3
	mov 0x22,r0
	mov.l r3,@-r15
	mov.b @(r0,r14),r0
	mov 0x1F,r4
	mov.l @(loc_8c0e1954,pc),r3
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and r0,r4
	shll8 r4
	shll2 r4
	jsr @r3
	shll r4
	mov.l @r15+,r2
	mova @(loc_8C0E1958,pc),r0
	fmov fr0,fr3
	fmov.s @r2,fr2
	fmov.s @r0,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e1920
	mov 0x22,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov.w r0,@(0x1C,r14)

loc_8C0E1920:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E1928:
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0E193A,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0E1932:
	mov.l @(loc_8C0E195C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E1938:
	#data 0x041c
loc_8C0E193A:
	#data 0x012c
loc_8C0E193C:
	#data 0x0141
	#align4

loc_8C0E1940:
	#data 0x43555555
loc_8C0E1944:
	#data 0x42092492
loc_8C0E1948:
	#data bank03.loc_8c034C38
loc_8C0E194C:
	#data bank03.loc_8c034D8c
loc_8C0E1950:
	#data 0x8C28C6D8
loc_8C0E1954:
	#data bank11.loc_8c11E860
loc_8c0e1958:
	#data 0x40892492
loc_8C0E195C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e1960:
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
	bt.s loc_8c0e198c
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

loc_8c0e198c:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;---------------------------------------------
;unused
loc_8c0e1994:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x114,PC),r10
	mov 0x0E,r13
	mov.w @(0x102,PC),r12
	mov 0x00,r14
	mov.l r4,@r15
	mov 0x04,r11

loc_8c0e19ae:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r10
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e19d8
	mov r0,r4
	mov 0x20,r0
	mov.l @(0xFC,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.b r13,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	add 0x01,r14
	extu.b r14,r3
	mov 0x26,r0
	cmp/ge r11,r3
	mov.w r12,@(r0,r4)
	bf loc_8c0e19ae

loc_8c0e19d8:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
;unused
loc_8c0e19ec:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xC4,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e1a18
	mov r0,r4
	mov.l @(0xB4,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x98,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0e1a18:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E1A20:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E1AAE,pc),r3 ; r3 set to 0xCc
	mov r14,r4
	mov.l @(loc_8C0E1AC0,pc),r2 ; r2 set to 0x8C28C6Dc
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0E1AC4,pc),r1 ; r1 set to 0x8C15EA64
	mov.l r3,@r2 ; r2 ??? bc r3 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0E1A3C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E1AB0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0E1AB0,pc),r2 ; r2 set to 0xDc
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E1AB2,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	mov.l @(loc_8C0E1AC8,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0E1AB4,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E1AB6,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E1ACC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0E1AD0,pc),r0 ; r0 set to 0x8C15EA74
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E1AAc:
	#data 0x2600
loc_8C0E1AAE:
	#data 0x00Cc
loc_8C0E1AB0:
	#data 0x00Dc
loc_8C0E1AB2:
	#data 0x00C0
loc_8C0E1AB4:
	#data 0x012c
loc_8C0E1AB6:
	#data 0x01A3
	#align4

loc_8C0E1AB8:
	#data bank04.loc_8c044F12
loc_8C0E1ABC:
	#data loc_8c0e1A20
loc_8C0E1AC0:
	#data 0x8C28C6Dc
loc_8C0E1AC4:
	#data bank15.loc_8c15EA64
loc_8C0E1AC8:
	#data bank12.loc_8c129560
loc_8C0E1ACC:
	#data bank12.loc_8c1294C8
loc_8C0E1AD0:
	#data bank15.loc_8c15EA74

;==============================================
loc_8C0E1AD4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E1AF6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
	mov 0x01,r6 ; r6 set to 0x01
	mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E1B18:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
	mov 0x02,r6 ; r6 set to 0x02
	mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E1B3A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
	mov 0x03,r6 ; r6 set to 0x03
	mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E1B5C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
	mov 0x04,r6 ; r6 set to 0x04
	mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E1B7E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
	mov 0x05,r6 ; r6 set to 0x05
	mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E1BA0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
	mov 0x06,r6 ; r6 set to 0x06
	mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E1BC2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
	mov 0x07,r6 ; r6 set to 0x07
	mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E1BE4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
	mov 0x08,r6 ; r6 set to 0x08
	mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E1C06:
	#data 0x0158
	#align4

loc_8C0E1C08:
	#data 0x8C28C6Dc
loc_8C0E1C0C:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0E1C10:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0E1D54,pc),r1 ; r1 set to 0x8C28C6Dc
	mov 0x07,r2 ; r2 set to 0x07
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x0B,r6 ; r6 set to 0x0b
	mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(loc_8C0E1D4C,pc),r0 ; r0 set to 0x158
	mov.l @r1,r3
	mov.w @(r0,r2),r2
	mov.w r2,@r3
	lds.l @r15+,pr
	mov.l @(loc_8C0E1D58,pc),r3 ; r3 set to 0x8C034C38
	jmp @r3
	mov.l @r15+,r14

loc_8C0E1C38:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(0x18,r14),r1
	mov r14,r4
	mov.w @(loc_8C0E1D4C,pc),r0 ; r0 set to 0x158
	mov 0x0C,r6 ; r6 set to 0x0c
	mov.l @(loc_8C0E1D54,pc),r3 ; r3 set to 0x8C28C6Dc
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.l @r3,r2
	mov.w r0,@r2
	lds.l @r15+,pr
	mov.l @(loc_8C0E1D58,pc),r2 ; r2 set to 0x8C034C38
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E1C5A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0E1D54,pc),r1 ; r1 set to 0x8C28C6Dc
	mov 0x07,r2 ; r2 set to 0x07
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x0E,r6 ; r6 set to 0x0e
	mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w @(loc_8C0E1D4C,pc),r0 ; r0 set to 0x158
	mov.l @r1,r3
	mov.w @(r0,r2),r2
	mov.w r2,@r3
	lds.l @r15+,pr
	mov.l @(loc_8C0E1D58,pc),r3 ; r3 set to 0x8C034C38
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E1C82:
	mov.l @(0x18,r4),r3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0E1D54,pc),r1 ; r1 set to 0x8C28C6Dc
	mov 0x10,r6 ; r6 set to 0x10
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0E1D4E,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov 0x00,r3 ; r3 set to 0x00
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	mov.w @(loc_8C0E1D4C,pc),r0 ; r0 set to 0x158
	mov.l @r1,r2
	mov.w @(r0,r3),r3
	mov.w r3,@r2
	mov.l @(loc_8C0E1D58,pc),r3 ; r3 set to 0x8C034C38
	jmp @r3
	mov 0x1B,r5

;==============================================
loc_8C0E1CAE:
	mov.l @(0x18,r4),r1
	mov 0x00,r5
	mov.w @(0x96,PC),r0
	mov.l @(0x9C,PC),r2
	mov.w @(r0,r1),r0
	mov.l @r2,r3
	mov.w r0,@r3
	mov r5,r0
	nop 
	mov.b r0,@(0x6,r4)
	mov.b r0,@(0x5,r4)
	mov.w @(0x88,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r1
	mov.b r1,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x18,r4),r1
	mov.b @(r0,r4),r3
	mov.b @(0x7,r1),r0
	cmp/eq r0,r3
	bf loc_8c0e1ce0
	mov 0x03,r0
	mov.b r0,@(0x4,r4)

loc_8C0E1CE0:
	mov 0x21,r0
	mov.b @(r0,r4),r0
	mov 0x00,r3
	extu.b r0,r0
	tst 0x01,r0
	mov 0x24,r0
	rts 
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E1CF0:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0E1D5C,pc),r0 ; r0 set to 0x8C15EAB0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0E1D04:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0e20ae
	mov r4,r14
	mov.l @(0x44,PC),r1
	mov 0x01,r2
	mov.w @(0x3C,PC),r0
	mov.b r2,@(r0,r14)
	add 0x2C,r0
	mov.l @r1,r3
	mov.w @r3,r2
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r3
	cmp/eq r3,r2
	bf loc_8c0e1d64
	mov.w @(0x2C,PC),r3
	mov.l @(0x18,r14),r2
	add r2,r3
	mov.b @(0x1,r3),r0
	tst r0,r0
	bt loc_8c0e1d44
	mov.w @(0x20,PC),r3
	mov 0x00,r0
	mov.l @(0x18,r14),r2
	add r2,r3
	mov.b r0,@(0x1,r3)
	mov.l @(0x24,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0e1d64

loc_8C0E1D44:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0e20e8
	mov.l @r15+,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E1D4C:
	#data 0x0158
loc_8C0E1D4E:
	#data 0x041c
loc_8c0e1d50:
	#data 0x012c
loc_8c0e1d52:
	#data 0x0150
	#align4

loc_8C0E1D54:
	#data 0x8C28C6Dc
loc_8C0E1D58:
	#data bank03.loc_8c034C38
loc_8C0E1D5C:
	#data bank15.loc_8c15EAB0
loc_8C0E1D60:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0E1D64:
	mov.l @(0xF0,PC),r3
	mov 0x00,r5
	jsr @r3
	mov.l @(0x18,r14),r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0e2084
	mov.l @r15+,r14

;==============================================
loc_8C0E1D74:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(loc_8C0E1E5C,pc),r1 ; r1 set to 0x8C28C6Dc
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_8C0E1E50,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	add 0x2C,r0 ; r0 set to 0x158
	mov.l @r1,r3
	mov.w @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r3
	cmp/eq r3,r2
	bf loc_8C0E1DA6
	mov.l @(loc_8C0E1E60,pc),r2 ; r2 set to 0x8C034D8c
	jsr @r2
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bf loc_8C0E1DA6
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E20E8
	mov.l @r15+,r14

loc_8C0E1DA6:
	mov.l @(loc_8C0E1E58,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov.l @(0x18,r14),r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E2084
	mov.l @r15+,r14

loc_8C0E1DB6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.l @(loc_8C0E1E5C,pc),r1 ; r1 set to 0x8C28C6Dc
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_8C0E1E50,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	add 0x2C,r0 ; r0 set to 0x158
	mov.l @r1,r3
	mov.w @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r3
	cmp/eq r3,r2
	bt loc_8C0E1DE4
	mov.l @(loc_8C0E1E58,pc),r2 ; r2 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r2
	mov.l @(0x18,r14),r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E2084
	mov.l @r15+,r14

loc_8c0e1de4:
	mov.w @(loc_8C0E1E52,pc),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c0e1df4
	mov.l @(loc_8c0e1e60,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0e1df4:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0e20e8
	mov.l @r15+,r14

loc_8C0E1DFC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E20Ae
	mov r4,r14
	mov.w @(loc_8C0E1E50,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8C0E1E5C,pc),r1 ; r1 set to 0x8C28C6Dc
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r2,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.l @r1,r2 ; r2 ??
	mov.w @(loc_8C0E1E54,pc),r0 ; r0 set to 0x158
	mov.w @r2,r3 ; r3 ??? bc r2 is ???
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r2
	cmp/eq r2,r3
	bt loc_8C0E1E28
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E2084
	mov.l @r15+,r14

loc_8c0e1e28:
	mov.w @(loc_8C0E1E56,pc),r2
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.b @(0x01,r2),r0
	tst r0,r0
	bt loc_8c0e1e44
	mov.w @(loc_8C0E1E56,pc),r2
	mov 0x00,r0
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.l @(loc_8c0e1e60,pc),r3
	mov.b r0,@(0x01,r2)
	jsr @r3
	mov r14,r4

loc_8c0e1e44:
	bsr loc_8c0e2130
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0e20e8
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e1e50:
	#data 0x012C
loc_8c0e1e52:
	#data 0x01A0
loc_8c0e1e54:
	#data 0x0158
loc_8C0E1E56:
	#data 0x0150
	#align4

loc_8c0e1e58:
	#data bank03.loc_8C035162
loc_8c0e1e5c:
	#data 0x8C28C6DC
loc_8c0e1e60:
	#data bank03.loc_8c034d8c

;==============================================
loc_8C0E1E64:
	mov.w @(loc_8C0E1F7E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C0E1F88,pc),r2 ; r2 set to 0x8C28C6Dc
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @r2,r3
	mov.w @(loc_8C0E1F80,pc),r0 ; r0 set to 0x158
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???
	cmp/eq r0,r1
	bf loc_8C0E1EB4
	mov.w @(loc_8C0E1F82,pc),r3 ; r3 set to 0x150
	mov.l @(0x18,r14),r1
	add r1,r3 ; r3 ??? bc r1 is ???
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt loc_8C0E1EB4
	mov.w @(loc_8C0E1F82,pc),r3 ; r3 set to 0x150
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(0x18,r14),r6
	mov r14,r4
	mov.l @(loc_8C0E1F8C,pc),r1 ; r1 set to 0x8C15EAEc
	add r3,r6
	mov.l @(loc_8C0E1F90,pc),r2 ; r2 set to 0x8C034C38
	mov.b @(0x01,r6),r0
	lds.l @r15+,pr
	mov.b @(r0,r1),r6
	jmp @r2
	mov.l @r15+,r14

loc_8C0E1EB4:
	bsr loc_8C0E2118
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E2084
	mov.l @r15+,r14

loc_8C0E1EC0:
	mov.w @(loc_8C0E1F7E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C0E1F88,pc),r2 ; r2 set to 0x8C28C6Dc
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @r2,r3
	mov.w @(loc_8C0E1F80,pc),r0 ; r0 set to 0x158
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???
	cmp/eq r0,r1
	bf loc_8C0E1F14
	mov.w @(loc_8C0E1F82,pc),r3 ; r3 set to 0x150
	mov.l @(0x18,r14),r1
	add r1,r3 ; r3 ??? bc r1 is ???
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt loc_8C0E1F14
	bsr loc_8C0E20E8
	mov r14,r4
	mov.w @(loc_8C0E1F82,pc),r3 ; r3 set to 0x150
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(0x18,r14),r6
	mov r14,r4
	mov.l @(loc_8C0E1F94,pc),r1 ; r1 set to 0x8C15EAF0
	add r3,r6
	mov.l @(loc_8C0E1F90,pc),r2 ; r2 set to 0x8C034C38
	mov.b @(0x01,r6),r0
	lds.l @r15+,pr
	mov.b @(r0,r1),r6
	jmp @r2
	mov.l @r15+,r14

loc_8C0E1F14:
	bsr loc_8C0E2118
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E2084
	mov.l @r15+,r14

loc_8C0E1F20:
	mov.l r14,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_8C0E1F7E,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0E1F98,pc),r3 ; r3 set to 0x8C034D8c
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0E1F46
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E2084
	mov.l @r15+,r14

loc_8C0E1F46:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E1F4C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0e1f74
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c0e1f74
	mov.w @(0x20,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0e1f74
	mov.w @(0x18,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0e1f9c

loc_8C0E1F74:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E1F7E:
	#data 0x012c
loc_8C0E1F80:
	#data 0x0158
loc_8C0E1F82:
	#data 0x0150
loc_8c0e1f84:
	#data 0x01d0
loc_8c0e1f86:
	#data 0x01e9
	#align4

loc_8C0E1F88:
	#data 0x8C28C6Dc
loc_8C0E1F8C:
	#data bank15.loc_8c15EAEc
loc_8C0E1F90:
	#data bank03.loc_8c034C38
loc_8C0E1F94:
	#data bank15.loc_8c15EAF0
loc_8C0E1F98:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0E1F9C:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x12C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E1FB0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E20C6,pc),r0 ; r0 set to 0x12c
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C0E2026
	mov.b @(0x05,r14),r0
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8C0E20D4,pc),r5 ; r5 set to 0x8C26A518
	add 0x01,r0 ; r0 set to 0x12d
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E20C6,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r5),fr2
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	fsub fr3,fr2
	extu.b r3,r3
	tst r4,r3
	fabs fr2
	bt.s loc_8C0E1FEc
	fmov fr2,fr4 ; r4 ??? bc r2 is ???
	bra loc_8C0E1FF0
	fmov fr4,fr3

loc_8C0E1FEC:
	fmov fr4,fr3
	fneg fr3

loc_8C0E1FF0:
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s @(r0,r5),fr2
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0E20C8,pc),r0 ; r0 set to 0x20C, r0 set to 0x20c
	mov.l @(0x18,r14),r3
	mov.l @(r0,r3),r2
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r1
	mov.l @(loc_8C0E20D8,pc),r0 ; r0 set to 0x8C15EB00, r0 set to 0x8C15EB00
	extu.b r1,r1
	shll2 r1
	fmov.s @(r0,r1),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r2),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	bsr loc_8C0E2096
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0E20DC,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	mov r14,r4
	mov 0x2B,r6 ; r6 set to 0x2B, r6 set to 0x2b
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	jmp @r2
	mov.l @r15+,r14

loc_8C0E2026:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E202C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0E20E0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0E2050
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E20DC,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x2A,r6 ; r6 set to 0x2a
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x15,r5 ; r5 set to 0x15
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0E2050:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E2056:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0E20E0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0E2072
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e2072:
	mov.w @(loc_8C0E20CA,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e207e
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c0e207e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E2084:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E20C6,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0E2090:
	mov.l @(loc_8C0E20E4,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0E2096:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r2
	mov 0x01,r5 ; r5 set to 0x01
	extu.b r2,r2
	tst r5,r2
	bt loc_8C0E20A6
	bra loc_8C0E20A8
	mov 0x00,r3

loc_8C0E20A6:
	mov r5,r3

loc_8C0E20A8:
	mov.w @(loc_8C0E20CC,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	rts
	mov.w r3,@(r0,r4)

;----------------------------------------------
loc_8C0E20AE:
	mov.l @(0x18,r4),r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x00,r3 ; r3 set to 0x00
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E20C6:
	#data 0x012c
loc_8C0E20C8:
	#data 0x020c
loc_8c0e20ca:
	#data 0x0141
loc_8C0E20CC:
	#data 0x0130
	#align4

loc_8C0E20D0:
	#data bank15.loc_8c15EAF4
loc_8C0E20D4:
	#data 0x8C26A518
loc_8C0E20D8:
	#data bank15.loc_8c15EB00
loc_8C0E20DC:
	#data bank03.loc_8c034e8c
loc_8C0E20E0:
	#data bank03.loc_8c034dee
loc_8C0E20E4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E20E8:
	mov.l @(loc_8C0E2160,pc),r3 ; r3 set to 0x8C26823c
	mov.l r14,@-r15
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt.s loc_8C0E2102
	mov.l @(0x18,r4),r14
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	extu.b r6,r6
	bra loc_8C0E210e
	shll r6

loc_8C0E2102:
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	extu.b r6,r6
	shll r6
	add 0x01,r6

loc_8C0E210E:
	mov.l @(loc_8C0E2164,pc),r2 ; r2 set to 0x8C03544C, r2 set to 0x8C03544c
	mov r14,r4
	mov r7,r5 ; r5 set to 0x01
	jmp @r2
	mov.l @r15+,r14

loc_8C0E2118:
	mov.l r14,@-r15
	mov 0x25,r0 ; r0 set to 0x25
	mov.l @(0x18,r4),r14
	mov 0x01,r7 ; r7 set to 0x01
	mov.l @(loc_8C0E2164,pc),r3 ; r3 set to 0x8C03544c
	mov r7,r5 ; r5 set to 0x01
	mov.b @(r0,r14),r6
	mov r14,r4
	extu.b r6,r6
	shll r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E2130:
	mov.l @(0x2C,PC),r3
	mov.l r14,@-r15
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt.s loc_8c0e214a
	mov.l @(0x18,r4),r14
	mov 0x25,r0
	mov.b @(r0,r14),r6
	mov 0x01,r7
	extu.b r6,r6
	bra loc_8c0e2156              ; loc_8c0e2130+0x26
	shll r6

loc_8C0E214A:
	mov 0x25,r0
	mov.b @(r0,r14),r6
	mov 0x01,r7
	extu.b r6,r6
	shll r6
	add 0x01,r6

loc_8C0E2156:
	mov.l @(0xC,PC),r2
	mov r14,r4
	mov 0x00,r5
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0E2160:
	#data 0x8C26823c
loc_8C0E2164:
	#data bank03.loc_8c03544c

;==============================================
loc_8C0E2168:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x14C,PC),r3
	mov 0x04,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e218c
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x128,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8C0E218C:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E2194:
mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0E22B2,pc),r3 ; r3 set to 0x150
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	add r3,r13
	mov.b @(0x01,r13),r0
	mov r0,r13
	tst r13,r13
	bt loc_8C0E21Ce
	mov.w @(loc_8C0E22B4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/eq r13,r0
	bt loc_8C0E21C8
	mov.l @(loc_8C0E22C4,pc),r1 ; r1 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov r13,r6
	jsr @r1
	mov r14,r4
	mov r13,r0 ; r0 ??? bc r13 is ???
	nop
	bra loc_8C0E21E0
	mov.w r0,@(0x1C,r14)

loc_8c0e21c8:
	mov.l @(loc_8c0e22c8,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0e21ce:
	mov.l @(0x18,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c0e21e0
	mov.w @(loc_8c0e22b2,pc),r3
	mov.l @(0x18,r14),r0
	add r3,r0
	mov.b @(0x01,r0),r0
	mov.w r0,@(0x1C,r14)

loc_8C0E21E0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E21E8:
	mov r4,r3
	mov.l @(loc_8C0E22CC,pc),r1 ; r1 set to 0x8C15EB10
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E21FA:
	mov.w @(loc_8C0E22B6,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E22D0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E22B6,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E22B4,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E22B8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E22D4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0E22B4,pc),r0 ; r0 set to 0x12c
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

loc_8C0E2284:
	mov.w @(loc_8C0E22B4,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	tst r3,r3
	bt loc_8C0E22Ac
	mov.l @(0x18,r4),r3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0E22BA,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	bra loc_8C0E2194
	mov.w r2,@(r0,r4)

loc_8C0E22AC:
	rts
	nop
;----------------------------------------------
loc_8C0E22B0:
	#data 0x2700
loc_8C0E22B2:
	#data 0x0150
loc_8C0E22B4:
	#data 0x012c
loc_8C0E22B6:
	#data 0x00Dc
loc_8C0E22B8:
	#data 0x01A3
loc_8C0E22BA:
	#data 0x0130
	#align4

loc_8C0E22BC:
	#data bank04.loc_8c044F12
loc_8C0E22C0:
	#data loc_8c0e21E8
loc_8C0E22C4:
	#data bank03.loc_8c034e8c
loc_8C0E22C8:
	#data bank03.loc_8c034dee
loc_8C0E22CC:
	#data bank15.loc_8c15EB10
loc_8C0E22D0:
	#data bank12.loc_8c129560
loc_8C0E22D4:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0E22D8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E22EA,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0E22E4:
	mov.l @(loc_8C0E22EC,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E22EA:
	#data 0x012c
	#align4

loc_8C0E22EC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0e22f0:
	mov.l r14,@-r15
	mov 0x03,r5
	mov.l r13,@-r15
	mov 0x00,r6
	mov.l r12,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0xB2,PC),r13
	mov.l @(0xB4,PC),r12
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e231c
	mov r0,r4
	mov 0x26,r0
	mov.l @(0xAC,PC),r2
	mov 0x00,r3
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)

loc_8c0e231c:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e233a
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x8C,PC),r2
	mov 0x01,r3
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)

loc_8c0e233a:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e2358
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x70,PC),r2
	mov 0x02,r3
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)

loc_8c0e2358:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e2376
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x50,PC),r2
	mov 0x03,r3
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)

loc_8c0e2376:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e2394
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x34,PC),r2
	mov 0x04,r3
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r13,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)

loc_8c0e2394:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E23A2:
	mov r4,r3
	mov.l @(loc_8C0E23C0,pc),r1 ; r1 set to 0x8C15EB20
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E23B4:
	#data 0x2701
	#align4

loc_8C0E23B8:
	#data bank04.loc_8c044F12
loc_8C0E23BC:
	#data loc_8c0e23A2
loc_8C0E23C0:
	#data bank15.loc_8c15EB20

;==============================================
loc_8C0E23C4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0E250E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0E2518,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E250E,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E2510,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E2512,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E251C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov 0x0F,r3 ; r3 set to 0x0f
	mov.w @(loc_8C0E2510,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r3,@(r0,r14)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0E2520,pc),r0 ; r0 set to 0x8C15EB30
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mov.w @(loc_8C0E2514,pc),r0 ; r0 set to 0x41c
	lds r3,fpul
	fmov.s @(r0,r4),fr2
	mova @(loc_8C0E2524,pc),r0  ; r0 set to 0x8C0E2524
	fmov.s @r0,fr0 ; r0 ??
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0E2476
	bra loc_8C0E2478
	mov 0x17,r13

loc_8C0E2476:
	mov r5,r13

loc_8C0E2478:
	mov.l @(loc_8C0E2528,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	exts.b r13,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E248A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	mov.w @(loc_8C0E2516,pc),r1 ; r1 set to 0x1D0, r1 set to 0x1D0, r1 set to 0x1D0
	mov r3,r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???
	mov.l r3,@r15
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @r15,r0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8C0E24Be
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0E24Fc
	mov.l @r15+,r14

loc_8C0E24BE:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E24Ee
	mov.l @(0x18,r14),r3
	mov 0x60,r0 ; r0 set to 0x60
	fldi0 fr3
	fmov.s @(r0,r3),fr2
	fcmp/gt fr2,fr3
	bf loc_8C0E24Ee
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0E24E2
	bra loc_8C0E24E4
	mov 0x19,r13

loc_8c0e24e2:
	mov 0x18,r13

loc_8c0e24e4:
	mov.l @(loc_8c0e2528,pc),r2
	mov 0x17,r5
	exts.b r13,r6
	jsr @r2
	mov r14,r4

loc_8C0E24EE:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0E252C,pc),r3 ; r3 set to 0x8C034DEe
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E24FC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E2510,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0E2508:
	mov.l @(loc_8C0E2530,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E250E:
	#data 0x00Dc
loc_8C0E2510:
	#data 0x012c
loc_8C0E2512:
	#data 0x01A3
loc_8C0E2514:
	#data 0x041c
loc_8C0E2516:
	#data 0x01D0
	#align4

loc_8C0E2518:
	#data bank12.loc_8c129560
loc_8C0E251C:
	#data bank12.loc_8c1294C8
loc_8C0E2520:
	#data bank15.loc_8c15EB30
loc_8C0E2524:
	#data 0x40092492
loc_8C0E2528:
	#data bank03.loc_8c034e8c
loc_8C0E252C:
	#data bank03.loc_8c034dee
loc_8C0E2530:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e2534:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0xE8,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e256a
	mov r0,r4
	mov.l @(0xD8,PC),r3
	mov 0x26,r0
	mov 0x20,r1
	mov.l r3,@(0x10,r4)
	add r4,r1
	mov.w @(0xC4,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8c0e256a:
	mov.l @(0xBC,PC),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e2594
	mov r0,r4
	mov.l @(0xB0,PC),r3
	mov 0x26,r0
	mov 0x20,r1
	mov.l r3,@(0x10,r4)
	add r4,r1
	mov.w @(0x9A,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x01,r0
	mov.w r0,@(0x1C,r4)

loc_8c0e2594:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8c0e259c:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	mov.l @(loc_8c0e2630,pc),r5
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r5),r3
	mova @(loc_8C0E2634,pc),r0
	fmov.s @r0,fr2
	lds r3,fpul
	mov.w @(loc_8C0E2624,pc),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c0e25d0
	fmul fr2,fr4
	fneg fr4

loc_8c0e25d0:
	mov 0x20,r3
	mov 0x34,r0
	add r4,r3
	fmov.s @(r0,r4),fr3
	mov 0x38,r2
	fadd fr4,fr3
	add r4,r2
	fmov.s fr3,@(r0,r4)
	mov.b @r3,r3
	fmov.s @r2,fr2
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r5
	mov.w @(0x02,r5),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c0e260c
	mov.l @(loc_8C0E2638,pc),r1
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)

loc_8c0e260c:
	rts
	nop

loc_8C0E2610:
	mov r4,r3
	mov.l @(loc_8C0E263C,pc),r1 ; r1 set to 0x8C15EB4c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e2622:
	#data 0x2702
loc_8c0e2624:
	#data 0x0130
	#align4

loc_8C0E2628:
	#data bank04.loc_8c044F12
loc_8C0E262C:
	#data loc_8c0e2610
loc_8C0E2630:
	#data bank15.loc_8c15EB3c
loc_8c0e2634:
	#data 0x3FD55555
loc_8c0e2638:
	#data 0x42092492
loc_8C0E263C:
	#data bank15.loc_8c15EB4c

;==============================================
loc_8C0E2640:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E2716,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0E2720,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E2716,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E2718,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E271A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E2724,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0E2718,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0E2728,pc),r0 ; r0 set to 0x8C15EB5c
	extu.b r2,r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???
	mov.w @(loc_8C0E271C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	xor r2,r3
	mov.w r3,@(r0,r14)
	bsr loc_8C0E259c
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_8C0E272C,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x24,r6 ; r6 set to 0x24
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0E26DC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0E259c
	mov r4,r14
	mov.l @(loc_8C0E2730,pc),r2 ; r2 set to 0x8C034DEE, r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0E26Fe
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	bra loc_8C0E2704
	mov.l @r15+,r14

loc_8C0E26FE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E2704:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E2718,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0E2710:
	mov.l @(loc_8C0E2734,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E2716:
	#data 0x00Dc
loc_8C0E2718:
	#data 0x012c
loc_8C0E271A:
	#data 0x01A3
loc_8C0E271C:
	#data 0x0130
	#align4

loc_8C0E2720:
	#data bank12.loc_8c129560
loc_8C0E2724:
	#data bank12.loc_8c1294C8
loc_8C0E2728:
	#data bank15.loc_8c15EB5c
loc_8C0E272C:
	#data bank03.loc_8c034e8c
loc_8C0E2730:
	#data bank03.loc_8c034dee
loc_8C0E2734:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E2738:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xDE,PC),r0
	mov r4,r14
	mov 0x07,r2
	mov.b r5,@r15
	mov.b @(r0,r14),r3
	cmp/ge r2,r3
	bt loc_8c0e2776
	mov.l @(0xE0,PC),r1
	mov 0x03,r5
	mov 0x00,r6
	jsr @r1
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e2776
	mov r0,r4
	mov.l @(0xD4,PC),r2
	mov 0x20,r0
	mov.l r2,@(0x10,r4)
	mov.w @(0xBC,PC),r2
	mov.l r14,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov.w @(0xAE,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_8C0E2776:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E277E:
	mov r4,r3
	mov.l @(loc_8C0E2838,pc),r1 ; r1 set to 0x8C15EB60
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0E2790:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E2824,pc),r0 ; r0 set to 0x1B8
	mov.l @(0x18,r14),r4
	mov.l @(r0,r4),r4
	mov.b @(0x01,r4),r0
	extu.b r0,r0 ; r0 set to 0xB8
	cmp/eq 0x28,r0
	bt loc_8C0E27B2
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E2986
	mov.l @r15+,r14

loc_8C0E27B2:
	mov.w @(loc_8C0E2826,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0E2828,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0E283C,pc),r3 ; r3 set to 0x8C129560
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E2826,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0E282A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E282C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E2840,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x07,r6 ; r6 set to 0x07
	mov.b r2,@(r0,r14)
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.w @(loc_8C0E282E,pc),r0 ; r0 set to 0x130
	mov.l r4,@(0x14,r14)
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov.w r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(loc_8C0E2844,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E2848
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E2820:
	#data 0x0229
loc_8C0E2822:
	#data 0x2800
loc_8C0E2824:
	#data 0x01B8
loc_8C0E2826:
	#data 0x00Dc
loc_8C0E2828:
	#data 0x00C0
loc_8C0E282A:
	#data 0x012c
loc_8C0E282C:
	#data 0x01A3
loc_8C0E282E:
	#data 0x0130
	#align4

loc_8C0E2830:
	#data bank04.loc_8c044F12
loc_8C0E2834:
	#data loc_8c0e277e
loc_8C0E2838:
	#data bank15.loc_8c15EB60
loc_8C0E283C:
	#data bank12.loc_8c129560
loc_8C0E2840:
	#data bank12.loc_8c1294C8
loc_8C0E2844:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0e2848:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x24,r0
	mov.l r8,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c0e2994,pc),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x05,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0e2874
	mov.w @(loc_8C0E298C,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x0F,r0
	bt loc_8c0e28c2

loc_8c0e2874:
	mov.b @(0x04,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8c0e298e,pc),r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0E2990,pc),r0
	mov.b @(r0,r13),r3
	add 0xFF,r3
	mov.b r3,@(r0,r13)
	exts.b r3,r3
	cmp/pz r3
	bt loc_8c0e2896
	mov.b r4,@(r0,r13)

loc_8c0e2896:
	mov.b @(r0,r13),r3
	mov 0x03,r2
	cmp/ge r2,r3
	bt loc_8c0e296c
	mov.b @(r0,r13),r1
	mov r14,r5
	mov.l @(loc_8c0e2998,pc),r3
	add 0x34,r5
	tst r1,r1
	mov 0x08,r7
	mov 0x01,r6
	jsr @r3
	mov r13,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0e299c,pc),r2
	mov 0x49,r5
	mov r14,r4
	fmov.s @r15+,fr12
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0e28c2:
	mov r13,r2
	mov.l @(loc_8c0e29a0,pc),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8c0e2950
	mov.b @(0x05,r14),r0
	fldi1 fr4
	fadd fr4,fr4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E2992,pc),r0
	mov.b @(r0,r13),r3
	mova @(loc_8C0E29A4,pc),r0
	fmov.s @r0,fr2
	mov 0x60,r0
	extu.b r3,r3
	lds r3,fpul
	mov.l @(loc_8c0e29a8,pc),r3
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	fdiv fr4,fr3
	mov 0x6C,r0
	jsr @r3
	fmov.s fr3,@(r0,r14)
	mov.l @(loc_8c0e29ac,pc),r2
	mov r0,r13
	shll8 r13
	jsr @r2
	mov r13,r4
	mov.l @(loc_8c0e29b0,pc),r3
	fmov fr0,fr12
	jsr @r3
	mov r13,r4
	mov 0x6C,r0
	mov.l @(loc_8c0e29b0,pc),r3
	fmov.s @(r0,r14),fr3
	mova @(loc_8C0E29B4,pc),r0
	mov 0x60,r8
	fmul fr0,fr3
	fmov.s @r0,fr0
	mov 0x6C,r0
	fmov.s @(r0,r14),fr2
	mov 0x5C,r0
	add r14,r8
	fdiv fr0,fr3
	fmov fr12,fr0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r13,r4
	mov 0x6C,r0
	mov.l @(loc_8c0e29ac,pc),r3
	fmov.s @(r0,r14),fr3
	fmul fr0,fr3
	fneg fr3
	fmov fr3,fr12
	jsr @r3
	mov r13,r4
	mov 0x6C,r0
	fmov.s @(r0,r14),fr3
	fmac fr0,fr3,fr12
	fmov.s @r8,fr3
	fadd fr12,fr3
	fmov.s fr3,@r8

loc_8c0e2950:
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
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8c0e296c:
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0E2978:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E298E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E2986:
	mov.l @(loc_8C0E29B8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e298c:
	#data 0x0233
loc_8C0E298E:
	#data 0x012c
loc_8c0e2990:
	#data 0x0229
loc_8c0e2992:
	#data 0x013C
	#align4

loc_8C0E2994:
	#data bank03.loc_8c034dee
loc_8C0E2998:
	#data bank10.loc_8c10235c
loc_8C0E299C:
	#data bank04.loc_8c04223a
loc_8C0E29A0:
	#data bank12.loc_8c1294C8
loc_8c0e29a4:
	#data 0x40092492
loc_8C0E29A8:
	#data bank03.loc_8c03319e
loc_8C0E29AC:
	#data bank11.loc_8c11E2E0
loc_8C0E29B0:
	#data bank11.loc_8c11E860
loc_8c0e29b4:
	#data 0x41000000
loc_8C0E29B8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0E29bc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x03,r5
	mov.l @(0x138,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0e2a08
	mov r0,r4
	mov.l @(0x12C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0x104,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xEE,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(0xEC,PC),r0
	extu.w r2,r2
	mov.l r2,@(r0,r4)

loc_8c0e2a08:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E2A14:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8C0E2A2c
	mov.l @(0x18,r14),r5
	mov.l @(loc_8C0E2B08,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E2A2C:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0E2B0C,pc),r0 ; r0 set to 0x8C15EB70
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r1
	jmp @r1
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E2A3E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e2aac
	mov r5,r13
	mov.b @(0x4,r14),r0
	mov.w @(0xA0,PC),r1
	add 0x01,r0
	mov.l @(0xB8,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x98,PC),r0
	mov.w @(0x94,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0x92,PC),r0
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
	mov.w @(0x76,PC),r0
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
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x78,PC),r3
	mov.b @(r0,r13),r2
	mov 0x17,r5
	mov 0x01,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C0E2AAC:
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x40,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0e2ae2
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0e2ae2
	mov 0x34,r0
	mov.l @(0x4C,PC),r3
	fmov @(r0,r13),fr3
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E2AE2:
	lds.l @r15+,pr
	mov.l @(0x20,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e2aee:
	#data 0x2900
loc_8c0e2af0:
	#data 0x0158
loc_8c0e2af2:
	#data 0x00cc
loc_8c0e2af4:
	#data 0x00dc
loc_8c0e2af6:
	#data 0x00c0
loc_8c0e2af8:
	#data 0x012c
loc_8c0e2afa:
	#data 0x01a3
loc_8c0e2afc:
	#data 0x0159
	#align4

loc_8C0E2B00:
	#data bank04.loc_8c044F12
loc_8C0E2B04:
	#data loc_8c0e2A14
loc_8C0E2B08:
	#data bank04.loc_8c0450C0
loc_8C0E2B0C:
	#data bank15.loc_8c15EB70
loc_8C0E2B10:
	#data bank12.loc_8c129560
loc_8C0E2B14:
	#data bank12.loc_8c1294C8
loc_8C0E2B18:
	#data bank03.loc_8c034e8c
loc_8C0E2B1C:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0E2B20:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e2b90
	mov 0x00,r4
	mov.b @(0x4,r14),r0
	mov.w @(0xB0,PC),r1
	add 0x01,r0
	mov.l @(0xBC,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0xA8,PC),r0
	mov.w @(0xA4,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0xA2,PC),r0
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
	mov.w @(0x86,PC),r0
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
	mov.l @(0x80,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0x60,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)

loc_8C0E2B90:
	mov.w @(0x5C,PC),r0
	mov.w @(r0,r13),r2
	mov.w @(0x5A,PC),r0
	extu.w r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r3,r2
	bf loc_8c0e2bd4
	mov.w @(0x52,PC),r0
	mov.b @(r0,r13),r1
	tst r1,r1
	bt loc_8c0e2bce
	mov.b @(r0,r13),r7
	mov 0x17,r5
	mov.l @(0x54,PC),r3
	mov 0x02,r6
	add 0xFF,r7
	jsr @r3
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x01,r2
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x20,PC),r0
	bra loc_8c0e2be0
	mov.b r2,@(r0,r14)

loc_8C0E2BCE:
	mov.w @(0x1A,PC),r0
	bra loc_8c0e2be0
	mov.b r4,@(r0,r14)

loc_8C0E2BD4:
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0E2BE0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e2be8:
	#data 0x00dc
loc_8c0e2bea:
	#data 0x00c0
loc_8c0e2bec:
	#data 0x012c
loc_8c0e2bee:
	#data 0x01a3
loc_8c0e2bf0:
	#data 0x0158
loc_8c0e2bf2:
	#data 0x00cc
loc_8c0e2bf4:
	#data 0x0141
	#align4

loc_8C0E2BF8:
	#data bank12.loc_8c129560
loc_8C0E2BFC:
	#data bank12.loc_8c1294C8
loc_8C0E2C00:
	#data bank03.loc_8c034F54
loc_8C0E2C04:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E2C08:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov 0x00,r12
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e2c84
	mov 0x01,r5
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x116,PC),r0
	mov.b r12,@(r0,r14)
	mov r12,r0
	nop 
	mov.w @(0x110,PC),r1
	mov.b r0,@(0x5,r14)
	mov.w @(0x10E,PC),r0
	add r14,r1
	mov.w @(0x108,PC),r2
	mov.l @(0x118,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x104,PC),r0
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
	mov.w @(0xEA,PC),r0
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
	mov.w @(0xC4,PC),r0
	mov.b r12,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)

loc_8C0E2C84:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0e2d1a
	mov.w @(0xBA,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0e2d26
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x94,PC),r0
	mov.b @(r0,r13),r4
	exts.b r4,r0
	tst 0x80,r0
	bt loc_8c0e2d34
	mov 0x7F,r2
	and r2,r4
	exts.b r4,r3
	tst r3,r3
	bt loc_8c0e2d14
	mov.w @(0x80,PC),r0
	exts.b r4,r7
	mov.b @(r0,r14),r1
	cmp/eq r7,r1
	bt loc_8c0e2d34
	mov.w @(0x7C,PC),r0
	mov 0x03,r6
	mov.l @(0x8C,PC),r3
	mov.b r5,@(r0,r14)
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x74,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e2d34
	mov.l @(0x80,PC),r3
	mov 0x03,r5
	mov.b r12,@(r0,r14)
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0e2d34
	mov r0,r4
	mov 0x03,r2
	mov.l @(0x70,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov.w @(0x4E,PC),r3
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r4)
	mov 0x26,r0
	bra loc_8c0e2d34
	mov.w r3,@(r0,r4)

loc_8C0E2D14:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0E2D1A:
	mov.l @(0x48,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e2d34

loc_8C0E2D26:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0E2D34:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e2d3e:
	#data 0x0141
loc_8c0e2d40:
	#data 0x00dc
loc_8c0e2d42:
	#data 0x00c0
loc_8c0e2d44:
	#data 0x012c
loc_8c0e2d46:
	#data 0x01a3
loc_8c0e2d48:
	#data 0x0159
loc_8c0e2d4a:
	#data 0x0140
loc_8c0e2d4c:
	#data 0x2900
	#align4

loc_8C0E2D50:
	#data bank12.loc_8c129560
loc_8C0E2D54:
	#data bank12.loc_8c1294C8
loc_8C0E2D58:
	#data bank03.loc_8c034F54
loc_8C0E2D5C:
	#data bank04.loc_8c044F12
loc_8C0E2D60:
	#data loc_8c0e2A14
loc_8C0E2D64:
	#data bank03.loc_8c034dee
loc_8C0E2D68:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E2D6C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e2dee
	mov r5,r13
	mov.b @(0x4,r14),r0
	mov.w @(0x12E,PC),r1
	add 0x01,r0
	mov.w @(0x12C,PC),r2
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov 0x00,r0
	mov.l @(0x134,PC),r3
	mov.b r0,@r1
	mov.w @(0x120,PC),r1
	mov.b r0,@(0x6,r14)
	mov.w @(0x11E,PC),r0
	add r14,r1
	jsr @r3
	add r13,r2
	mov.w @(0x118,PC),r0
	mov 0x01,r4
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
	mov.w @(0xFC,PC),r0
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
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov 0x17,r5
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x04,r6
	mov.w @(0xCE,PC),r0
	mov.l @(0xE0,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C0E2DEE:
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(0xC2,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0e2e16
	mov 0x34,r0
	mov.l @(0xC8,PC),r3
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e2e22

loc_8C0E2E16:
	lds.l @r15+,pr
	mov.l @(0xB4,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E2E22:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E2E2A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e2ea2
	mov r5,r13
	mov.b @(0x4,r14),r0
	mov.w @(0x72,PC),r1
	add 0x01,r0
	mov.l @(0x7C,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x6A,PC),r0
	mov.w @(0x66,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0x64,PC),r0
	mov 0x01,r4
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
	mov.w @(0x48,PC),r0
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
	mov.l @(0x40,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov 0x17,r5
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x08,r6
	mov.w @(0x1A,PC),r0
	mov.l @(0x2C,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C0E2EA2:
	mov.w @(0x16,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c0e2ed8
	mova @(0x28,PC),r0
	bra loc_8c0e2edc
	fmov @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e2eb0:
	#data 0x0141
loc_8c0e2eb2:
	#data 0x00dc
loc_8c0e2eb4:
	#data 0x00c0
loc_8c0e2eb6:
	#data 0x012c
loc_8c0e2eb8:
	#data 0x01a3
loc_8c0e2eba:
	#data 0x0159
loc_8c0e2ebc:
	#data 0x0130
	#align4

loc_8C0E2EC0:
	#data bank12.loc_8c129560
loc_8C0E2EC4:
	#data bank12.loc_8c1294C8
loc_8C0E2EC8:
	#data bank03.loc_8c034e8c
loc_8C0E2ECC:
	#data bank03.loc_8c034dee
loc_8C0E2ED0:
	#data bank04.loc_8c0450C0
loc_8C0E2ED4:
	#data 0xC1BAAAAa

;==============================================
loc_8C0E2ED8:
	mova @(0x3C,PC),r0
	fmov @r0,fr3

loc_8C0E2EDC:
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x34,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x28,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e2f0e
	lds.l @r15+,pr
	mov.l @(0x1C,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E2F0E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
#align4
loc_8c0e2f18:
	#data 0x41baaaaa
loc_8c0e2f1c:
	#data 0x438d6db7
loc_8C0E2F20:
	#data bank03.loc_8c034dee
loc_8C0E2F24:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e2f28:
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
	bt.s loc_8c0e2f54
	mov r0,r4
	mov.l @(0x138,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x116,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0e2f54:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E2F5C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E3080,pc),r1 ; r1 set to 0x8C15EB94
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E2F70:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xEC,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xE4,PC),r2
	add 0x01,r0
	mov.l @(0xFC,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xDE,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xDA,PC),r0
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
	mov.w @(0xBE,PC),r0
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
	mov 0xFF,r3
	mov 0x1B,r5
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.l @(0xB0,PC),r3
	mov.w @(r0,r13),r2
	mov.w @(0x92,PC),r0
	extu.w r2,r2
	mov.l r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	add 0x2D,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E2FF6:
	mov.l r14,@-r15
	mov 0x34,r0
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x64,PC),r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x54,PC),r0
	mov.w @(r0,r13),r3
	mov.w @(0x52,PC),r0
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bf loc_8c0e303c
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e3048
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0e3048

loc_8C0E303C:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0e3054
	mov.l @r15+,r14

loc_8C0E3048:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3050:
	rts
	nop

;----------------------------------------------
loc_8C0E3054:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E306C,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E3094,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e3066:
	#data 0x2a00
loc_8c0e3068:
	#data 0x00dc
loc_8c0e306a:
	#data 0x00c0
loc_8c0e306c:
	#data 0x012c
loc_8c0e306e:
	#data 0x01a3
loc_8c0e3070:
	#data 0x0158
loc_8c0e3072:
	#data 0x00cc
loc_8c0e3074:
	#data 0x0130
	#align4

loc_8C0E3078:
	#data bank04.loc_8c044F12
loc_8C0E307C:
	#data loc_8c0e2F5c
loc_8C0E3080:
	#data bank15.loc_8c15EB94
loc_8C0E3084:
	#data bank12.loc_8c129560
loc_8C0E3088:
	#data bank12.loc_8c1294C8
loc_8C0E308C:
	#data bank03.loc_8c034C38
loc_8C0E3090:
	#data bank03.loc_8c034D8c
loc_8C0E3094:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e3098:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop 
	mov.l @(0x150,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e30d2
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0x11A,PC),r2
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0e30d2:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E30DA:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E31FC,pc),r1 ; r1 set to 0x8C15EBA4
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E30EE:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(loc_8C0E31E4,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E31E4,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E3200,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E31E6,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E31E8,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E31EA,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E3204,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0E31EC,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r13),r2
	mov.w @(loc_8C0E31EE,pc),r0 ; r0 set to 0xCc
	extu.w r2,r2
	mov.l r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_8C0E3174
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8C0E3188
	mov 0x30,r12 ; r12 set to 0x30
	bra loc_8C0E3188
	mov 0x31,r12

loc_8c0e3174:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e3186
	mov.w @(loc_8c0e31f0,pc),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8c0e3186:
	mov 0x32,r12

loc_8C0E3188:
	mov.l @(loc_8C0E3208,pc),r3 ; r3 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov r12,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E319E:
mov.w @(loc_8C0E31EC,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov.l r14,@-r15
mov r4,r14
	sts.l pr,@-r15
	mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???
	mov.w @(loc_8C0E31EE,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bf loc_8C0E3226
	mov.b @(0x01,r14),r0
	mov r0,r3 ; r3 set to 0xCC, r3 set to 0xCc
	mov.b @(0x01,r5),r0
	cmp/eq r0,r3
	bf loc_8C0E3226
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8C0E320c
	mov r14,r4
	mov.w @(loc_8C0E31F2,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E31F0,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r5),r3
	bra loc_8C0E3212
	mov.w r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E31E2:
	#data 0x2A01
loc_8C0E31E4:
	#data 0x00Dc
loc_8C0E31E6:
	#data 0x00C0
loc_8C0E31E8:
	#data 0x012c
loc_8C0E31EA:
	#data 0x01A3
loc_8C0E31EC:
	#data 0x0158
loc_8C0E31EE:
	#data 0x00Cc
loc_8C0E31F0:
	#data 0x0130
loc_8C0E31F2:
	#data 0x041c
	#align4

loc_8C0E31F4:
	#data bank04.loc_8c044F12
loc_8C0E31F8:
	#data loc_8c0e30Da
loc_8C0E31FC:
	#data bank15.loc_8c15EBA4
loc_8C0E3200:
	#data bank12.loc_8c129560
loc_8C0E3204:
	#data bank12.loc_8c1294C8
loc_8C0E3208:
	#data bank03.loc_8c034C38

;==============================================
loc_8c0e320c:
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)

loc_8c0e3212:
	mov.l @(loc_8c0e3250,pc),r3
	jsr @r3
	nop
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e3232
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0e3232

loc_8C0E3226:
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E324C,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)

loc_8C0E3232:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3238:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E324C,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E3246:
	mov.l @(loc_8C0E3254,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E324C:
	#data 0x012c
	#align4

loc_8C0E3250:
	#data bank03.loc_8c034D8c
loc_8C0E3254:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E3258:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x124,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e3282
	mov r0,r4
	mov.l @(0x118,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0xF8,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0E3282:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
loc_8C0E328A:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E338C,pc),r1 ; r1 set to 0x8C15EBD0
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E329E:
	mov.w @(loc_8C0E3370,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E3390,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0E3370,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E3372,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E3374,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E3376,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E3394,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov 0xFF,r6 ; r6 set to 0xFFFFFFFf
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.w @(loc_8C0E3374,pc),r0 ; r0 set to 0x12c
	add 0x34,r2
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(loc_8C0E3394,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r6,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0E3378,pc),r0 ; r0 set to 0xCc
	mov.l r6,@(r0,r4)
	mov.w @(loc_8C0E337A,pc),r0 ; r0 set to 0x2A4
	mov.l r6,@(r0,r5)
	lds.l @r15+,pr

loc_8C0E3318:
	mov.l r14,@-r15
	mov r5,r14
	mov.w @(loc_8C0E3374,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt.s loc_8C0E3412
	mov r4,r13
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.w @(loc_8C0E337E,pc),r4 ; r4 set to 0x150, r4 set to 0x150
	fmov.s @(r0,r14),fr3
	mov 0x10,r5 ; r5 set to 0x10, r5 set to 0x10
	add r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	fmov.s fr3,@(r0,r13)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r13)
	mov.w @(loc_8C0E337C,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r13)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r13)
	mov.b @(0x01,r4),r0
	mov r0,r4 ; r4 set to 0x24, r4 set to 0x24
	mov.w @(loc_8C0E3374,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b @(r0,r13),r3
	tst r3,r3
	bt.s loc_8C0E3398
	extu.b r4,r12 ; r12 set to 0x24, r12 set to 0x24
	mov.w @(loc_8C0E3380,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.w @(r0,r14),r3
	mov.w @(loc_8C0E3378,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	extu.w r3,r3
	mov.l @(r0,r13),r2
	cmp/eq r3,r2
	bf loc_8C0E3398
	cmp/ge r5,r12
	bf loc_8C0E33Dc
	bra loc_8C0E339c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e336e:
	#data 0x2A02
loc_8C0E3370:
	#data 0x00Dc
loc_8C0E3372:
	#data 0x00C0
loc_8C0E3374:
	#data 0x012c
loc_8C0E3376:
	#data 0x01A3
loc_8C0E3378:
	#data 0x00Cc
loc_8C0E337A:
	#data 0x02A4
loc_8C0E337C:
	#data 0x0130
loc_8C0E337E:
	#data 0x0150
loc_8C0E3380:
	#data 0x0158
	#align4

loc_8C0E3384:
	#data bank04.loc_8c044F12
loc_8C0E3388:
	#data loc_8c0e328a
loc_8C0E338C:
	#data bank15.loc_8c15EBD0
loc_8C0E3390:
	#data bank12.loc_8c129560
loc_8C0E3394:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0e3398:
	cmp/ge r5,r12
	bf loc_8c0e3402

loc_8c0e339c:
	mov.w @(loc_8c0e342c,pc),r0
	mov 0x01,r3
	mov.b r3,@(r0,r13)
	mov.w @(loc_8C0E342E,pc),r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r12,r2
	bf loc_8c0e33ba
	mov.w @(loc_8C0E3430,pc),r0
	mov.w @(r0,r14),r2
	mov.w @(loc_8C0E3432,pc),r0
	extu.w r2,r2
	mov.l @(r0,r13),r3
	cmp/eq r2,r3
	bt loc_8c0e33dc

loc_8c0e33ba:
	mov.w @(loc_8C0E3430,pc),r0
	mov r12,r6
	add 0xF0,r6
	mov r13,r4
	mov.w @(r0,r14),r1
	mov 0x1B,r5
	mov.w @(loc_8C0E3432,pc),r0
	extu.w r1,r1
	mov.l @(loc_8c0e3440,pc),r3
	mov.l r1,@(r0,r13)
	lds.l @r15+,pr
	mov.l @(loc_8c0e343c,pc),r0
	mov.l @r15+,r12
	mov.b @(r0,r6),r6
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0e33dc:
	mov.w @(loc_8C0E3434,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e33ec
	mov.w @(loc_8C0E3436,pc),r0
	mov.b @(r0,r14),r0
	tst 0x80,r0
	bt loc_8c0e3412

loc_8c0e33ec:
	mov.l @(loc_8c0e3444,pc),r2
	jsr @r2
	mov r13,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e3412
	mov.w @(loc_8C0E3438,pc),r0
	add r14,r0
	mov.b @(0x01,r0),r0
	cmp/eq 0x27,r0
	bt loc_8c0e3412

loc_8c0e3402:
	mov.w @(loc_8C0E3432,pc),r0
	mov 0xFF,r4
	mov 0x00,r3
	mov.l r4,@(r0,r13)
	add 0x60,r0
	mov.b r3,@(r0,r13)
	mov.w @(loc_8C0E342E,pc),r0
	mov.l r4,@(r0,r14)

loc_8C0E3412:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E341C:
	rts
	nop

;----------------------------------------------
loc_8C0E3420:
	mov.w @(loc_8C0E342C,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E3448,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E342C:
	#data 0x012c
loc_8c0e342e:
	#data 0x02A4
loc_8c0e3430:
	#data 0x0158
loc_8c0e3432:
	#data 0x00CC
loc_8c0e3434:
	#data 0x01A0
loc_8c0e3436:
	#data 0x0140
loc_8c0e3438:
	#data 0x0150
	#align4

loc_8C0E343C:
	#data bank15.loc_8c15EBB4
loc_8C0E3440:
	#data bank03.loc_8c034C38
loc_8C0E3444:
	#data bank03.loc_8c034D8c
loc_8C0E3448:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E344C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x114,PC),r3
	mov 0x04,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e3476
	mov r0,r4
	mov.l @(0x108,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w @(0xE8,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8C0E3476:
	mov.l @(0xF0,PC),r3
	mov 0x04,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e349a
	mov r0,r4
	mov.l @(0xE4,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w @(0xC4,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8C0E349A:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E34A2:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E3570,pc),r1 ; r1 set to 0x8C15EBFc
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E34B6:
	mov.w @(0xA2,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xB4,PC),r3
	add 0x01,r0
	mov.w @(0x96,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0x94,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x90,PC),r0
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
	mov.w @(0x74,PC),r0
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
	mov.l @(0x74,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x6C,PC),r3
	mov.b @(r0,r5),r2
	mov r4,r1
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov 0xFF,r0
	mov.l @(0x5C,PC),r6
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0e352e
	mov 0x02,r7
	mov.l @(0x54,PC),r6
	mov 0x01,r7

loc_8C0E352E:
	mov.w @(0x32,PC),r0
	mov.l r6,@(r0,r4)
	mov 0x31,r0
	mov.b r7,@(r0,r4)
	lds.l @r15+,pr

loc_8C0E3538:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x01,r14),r0
	mov r0,r3
	mov.b @(0x01,r5),r0
	cmp/eq r0,r3
	bt.s loc_8C0E3584
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E3560,pc),r0 ; r0 set to 0x12c
	bra loc_8C0E3656
	mov.b r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e355a:
	#data 0x2A03
loc_8c0e355c:
	#data 0x00Dc
loc_8c0e355e:
	#data 0x00C0
loc_8C0E3560:
	#data 0x012c
loc_8c0e3562:
	#data 0x01A3
loc_8c0e3564:
	#data 0x00Cc
	#align4

loc_8C0E3568:
	#data bank04.loc_8c044F12
loc_8C0E356C:
	#data loc_8c0e34A2
loc_8C0E3570:
	#data bank15.loc_8c15EBFc
loc_8C0E3574:
	#data bank12.loc_8c129560
loc_8C0E3578:
	#data bank12.loc_8c1294C8
loc_8C0E357C:
	#data bank15.loc_8c15EBE0
loc_8C0E3580:
	#data bank15.loc_8c15EBEe

;==============================================
loc_8c0e3584:
	mov.w @(loc_8c0e3674,pc),r0
	mov.b r4,@(r0,r14)
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0e3656
	mov r5,r2
	mov.l @(loc_8c0e367c,pc),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C0E3676,pc),r0
	mov.w @(loc_8C0E3678,pc),r4
	mov.w @(r0,r5),r2
	add r5,r4
	mov.w r2,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov 0x0D,r2
	mov.b r3,@(r0,r14)
	mov.b @(0x01,r4),r0
	mov r0,r4
	exts.w r4,r3
	cmp/gt r2,r3
	bt loc_8c0e35dc
	mov.w @(0x1C,r14),r0
	exts.w r4,r13
	cmp/eq r13,r0
	bt loc_8c0e35f0
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	exts.w r4,r4
	mov.w @(loc_8C0E367A,pc),r0
	mov.l @(r0,r14),r5
	mov r4,r0
	nop
	mov.b @(r0,r5),r3
	extu.b r3,r3
	mov.w r3,@r15
	exts.w r3,r3
	tst r3,r3
	bf loc_8c0e35e2

loc_8c0e35dc:
	mov 0xFF,r0
	bra loc_8c0e3656
	mov.w r0,@(0x1C,r14)

loc_8c0e35e2:
	mov.l @(loc_8c0e3680,pc),r3
	mov 0x1B,r5
	mov.w @r15,r6
	jsr @r3
	mov r14,r4
	bra loc_8c0e3612
	nop

loc_8c0e35f0:
	mov.l @(loc_8C0E3684,pc),r4
	mov 0x44,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0e3612
	mov.b @(0x02,r14),r0
	mov 0x01,r3
	extu.b r0,r0
	xor 0x01,r0
	shad r0, r3
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	tst r3,r0
	bf loc_8c0e3612
	mov.l @(loc_8c0e3688,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0e3612:
	mov.w @(loc_8c0e3674,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0e3656
	mov r13,r0
	nop
	cmp/eq 0x0D,r0
	bf loc_8c0e3656
	mov.w @(loc_8C0E3676,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0e3634
	mov 0x0A,r4
	mov 0xF6,r4

loc_8c0e3634:
	exts.w r4,r4
	mov.l @(loc_8C0E368C,pc),r1
	lds r4,fpul
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	float fpul,fr3
	lds r1,fpul
	mov.l @(loc_8C0E3690,pc),r1
	fsts fpul,fr0
	lds r1,fpul
	fmac fr0,fr3,fr2
	fsts fpul,fr3
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8C0E3656:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3660:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E3674,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E366E:
	mov.l @(loc_8C0E3694,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E3674:
	#data 0x012c
loc_8c0e3676:
	#data 0x0130
loc_8c0e3678:
	#data 0x0150
loc_8c0e367a:
	#data 0x00CC
	#align4

loc_8C0E367C:
	#data bank12.loc_8c1294C8
loc_8C0E3680:
	#data bank03.loc_8c034C38
loc_8c0e3684:
	#data 0x8C2895F0
loc_8C0E3688:
	#data bank03.loc_8c034D8c
loc_8c0e368c:
	#data 0x3FD55555
loc_8c0e3690:
	#data 0x414DB6Db
loc_8C0E3694:
	#data bank04.loc_8c0450C0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;unused
loc_8c0e3698:
	mov.l r14,@-r15
	mov 0x03,r5
	sts.l pr,@-r15
	mov.l @(0x148,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e36d4
	mov r0,r4
	mov.w @(0x124,PC),r2
	mov 0x26,r0
	mov.l @(0x138,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x114,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(0x112,PC),r0
	extu.b r2,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x10E,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(0x10C,PC),r0
	extu.b r3,r3
	mov.l r3,@(r0,r4)

loc_8c0e36d4:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E36DE:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E37F0,pc),r1 ; r1 set to 0x8C15EC0c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0E36F2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E37E0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0E37F4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0E37E0,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E37E2,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E37E4,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E37E6,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E37F8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r4 ; r4 set to 0x00
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E37E4,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	bsr loc_8C0E3808
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_8C0E37FC,pc),r2 ; r2 set to 0x8C034E8c
	mov r14,r4
	mov 0x08,r6 ; r6 set to 0x08
	mov 0x0B,r5 ; r5 set to 0x0b
	jmp @r2
	mov.l @r15+,r14

loc_8C0E3770:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	mov r0,r3
	mov.b @(0x01,r5),r0
	cmp/eq r0,r3
	bf loc_8C0E37Bc
	mov.w @(loc_8C0E37D8,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r5),r2
	mov.w @(loc_8C0E37DA,pc),r0 ; r0 set to 0xCc
	extu.b r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8C0E37Bc
	mov.w @(loc_8C0E37DC,pc),r0 ; r0 set to 0x158
	mov.b @(r0,r5),r2
	mov.w @(loc_8C0E37DE,pc),r0 ; r0 set to 0xD0
	extu.b r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8C0E37Bc
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	bsr loc_8C0E3808
	mov r14,r4
	mov.l @(loc_8C0E3800,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0E37E4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	xor r3,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E37BC:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E37Ca
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E37CA:
	mov.w @(loc_8C0E37E4,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E3804,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0E37D6:
	#data 0x2A04
loc_8C0E37D8:
	#data 0x0159
loc_8C0E37DA:
	#data 0x00Cc
loc_8C0E37DC:
	#data 0x0158
loc_8C0E37DE:
	#data 0x00D0
loc_8C0E37E0:
	#data 0x00Dc
loc_8C0E37E2:
	#data 0x00C0
loc_8C0E37E4:
	#data 0x012c
loc_8C0E37E6:
	#data 0x01A3
	#align4

loc_8C0E37E8:
	#data bank04.loc_8c044F12
loc_8C0E37EC:
	#data loc_8c0e36De
loc_8C0E37F0:
	#data bank15.loc_8c15EC0c
loc_8C0E37F4:
	#data bank12.loc_8c129560
loc_8C0E37F8:
	#data bank12.loc_8c1294C8
loc_8C0E37FC:
	#data bank03.loc_8c034e8c
loc_8C0E3800:
	#data bank03.loc_8c034dee
loc_8C0E3804:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0e3808:
	mov.w @(loc_8C0E384C,pc),r0
	mov.l @(loc_8c0e3850,pc),r3
	mov.b @(r0,r5),r7
	shll2 r7
	add r3,r7
	mov.w @(0x02,r7),r0
	mov.w @r7,r6
	mov r0,r7
	mov.w @(loc_8C0E384E,pc),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bt loc_8c0e3822
	neg r6,r6

loc_8c0e3822:
exts.w r6,r6
	lds r6,fpul
	mov 0x34,r0
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0E3854,pc),r0
	fmov.s @r0,fr0
	exts.w r7,r7
	float fpul,fr3
	lds r7,fpul
	mov 0x34,r0
	fmac fr0,fr3,fr2
	float fpul,fr3
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0E3858,pc),r0
	fmov.s @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E384C:
	#data 0x0140
loc_8C0E384E:
	#data 0x0130
	#align4

loc_8c0e3850:
	#data bank15.loc_8c15ec1c
loc_8C0E3854:
	#data 0x3FD55555
loc_8C0E3858:
	#data 0x40092492

;==============================================
loc_8c0e385c:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x16C,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x03,r5
	mov.l r6,@(0x8,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0e388e
	mov r0,r4
	mov.w @(0x14A,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x154,PC),r3
	mov.l @(0x8,r15),r2
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x14,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c0e388e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

loc_8C0E3896:
	mov r4,r3
	mov.l @(loc_8C0E39D8,pc),r1 ; r1 set to 0x8C15EC58
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E38A8:
	mov.w @(0x11A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.w @(0x112,PC),r2
	add 0x01,r0
	mov.l @(0x14,r4),r5
	mov.b r0,@(0x4,r4)
	mov.w @(0x10C,PC),r0
	mov.l @(0x120,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0x106,PC),r0
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
	mov.w @(0xEA,PC),r0
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
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x00,r3
	mov r4,r1
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x10,r6
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.w @(0xC2,PC),r0
	mov.l @(0xD4,PC),r3
	mov.w @(r0,r5),r2
	mov.w r2,@(r0,r4)
	add 0x0C,r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	mov r5,r2
	add 0x01,r0
	add 0x34,r2
	mov.b r6,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(0xB8,PC),r3
	mov.b @(r0,r4),r6
	extu.b r6,r6
	shll r6
	mov r6,r5
	shll r5
	add r3,r5
	mov.w @(0x2,r5),r0
	mov.w @r5,r6
	mov.l @(0xA8,PC),r5
	mov r0,r7
	mova @(0xA8,PC),r0
	mov.l @r5+,r2
	fmov @r0,fr6
	mova @(0xA8,PC),r0
	lds r2,fpul
	fmov @r0,fr4
	mov 0x5C,r0
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	mov.l @r5+,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr5
	mov.l @r5+,r2
	mov 0x60,r0
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	mov.l @r5,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x46,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c0e399e
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	neg r6,r6
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0E399E:
	lds r6,fpul
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mov 0x17,r5
	fmov fr6,fr0
	mov 0x0A,r6
	float fpul,fr3
	lds r7,fpul
	mov.l @(0x48,PC),r3
	fmac fr0,fr3,fr2
	fmov fr5,fr0
	float fpul,fr3
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e39c4:
	#data 0x2b00
loc_8c0e39c6:
	#data 0x00dc
loc_8c0e39c8:
	#data 0x00c0
loc_8c0e39ca:
	#data 0x012c
loc_8c0e39cc:
	#data 0x01a3
loc_8c0e39ce:
	#data 0x0130
	#align4

loc_8C0E39D0:
	#data bank04.loc_8c044F12
loc_8C0E39D4:
	#data loc_8c0e3896
loc_8C0E39D8:
	#data bank15.loc_8c15EC58
loc_8C0E39DC:
	#data bank12.loc_8c129560
loc_8C0E39E0:
	#data bank12.loc_8c1294C8
loc_8C0E39E4:
	#data bank15.loc_8c15EC3c
loc_8C0E39E8:
	#data bank15.loc_8c15EC48
loc_8C0E39Ec:
	#data 0x3FD55555
loc_8C0E39f0:
	#data 0x47800000
loc_8C0E39f4:
	#data 0x40092492
loc_8C0E39F8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0E39FC:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x5C,PC),r3
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
	mov.l @(0x24,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0e3a56
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E3A56:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3A5C:
	mov.l @(loc_8C0E3A6C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E3A62:
	#data 0x012c
	#align4

loc_8C0E3A64:
	#data bank03.loc_8c034dee
loc_8C0E3A68:
	#data bank03.loc_8c0332E0
loc_8C0E3A6C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e3a70:
	mov.l r14,@-r15
	mov 0x03,r5
	sts.l pr,@-r15
	mov.l @(0x12C,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0e3aa2
	mov r0,r4
	mov.w @(0x108,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x104,PC),r0
	mov.b @(r0,r14),r2
	mov 0x22,r0
	mov.b r2,@(r0,r4)
	mov.w @(0xFE,PC),r0
	mov.l @(0x110,PC),r2
	mov.b @(r0,r14),r3
	mov 0x23,r0
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)

loc_8c0e3aa2:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3AAC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8C0E3ACa
	mov.l @(0x18,r14),r13
	cmp/eq 0x01,r0
	bt loc_8C0E3B36
	cmp/eq 0x02,r0
	bt loc_8C0E3B7e
	bra loc_8C0E3B8a
	nop

loc_8c0e3aca:
	mov.b @(0x04,r14),r0
	mov r13,r2
	mov.l @(loc_8c0e3bac,pc),r3
	mov r14,r1
	add 0x01,r0
	add 0x34,r2
	mov.b r0,@(0x04,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C0E3B98,pc),r1
	mov.w @(loc_8C0E3B9A,pc),r0
	mov.l @(loc_8c0e3bb0,pc),r3
	add r14,r1
	mov.w @(loc_8C0E3B98,pc),r2
	jsr @r3
	add r13,r2
	mov.w @(loc_8C0E3B9C,pc),r0
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
	mov.w @(loc_8C0E3B9E,pc),r0
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
	mov.l @(loc_8c0e3bac,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(loc_8c0e3bb4,pc),r3
	mov.b @(r0,r13),r2
	mov 0x17,r5
	mov 0x0B,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c0e3b36:
	mov.w @(loc_8C0E3B94,pc),r0
	mov.b @(r0,r13),r2
	mov 0x22,r0
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bf loc_8c0e3b70
	mov.w @(loc_8C0E3B96,pc),r0
	mov.b @(r0,r13),r2
	mov 0x23,r0
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bf loc_8c0e3b70
	mov r13,r2
	mov.l @(loc_8c0e3bac,pc),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C0E3BA0,pc),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0e3b8a
	mov.l @(loc_8c0e3bb8,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e3b8a

loc_8c0e3b70:
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E3B9C,pc),r0
	bra loc_8c0e3b8a
	mov.b r3,@(r0,r14)

loc_8C0E3B7E:
	lds.l @r15+,pr
	mov.l @(loc_8C0E3BBC,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E3B8A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e3b92:
	#data 0x2B01
loc_8c0e3b94:
	#data 0x01D0
loc_8c0e3b96:
	#data 0x01E9
loc_8c0e3b98:
	#data 0x00Dc
loc_8c0e3b9a:
	#data 0x00C0
loc_8c0e3b9c:
	#data 0x012c
loc_8c0e3b9e:
	#data 0x01A3
loc_8c0e3ba0:
	#data 0x01A0
	#align4

loc_8C0E3BA4:
	#data bank04.loc_8c044F12
loc_8C0E3BA8:
	#data loc_8c0e3AAc
loc_8C0E3BAC:
	#data bank12.loc_8c1294C8
loc_8C0E3BB0:
	#data bank12.loc_8c129560
loc_8C0E3BB4:
	#data bank03.loc_8c034e8c
loc_8C0E3BB8:
	#data bank03.loc_8c034dee
loc_8C0E3BBC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0e3bc0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xF4,PC),r3
	mov r4,r14
	mov.l r5,@(0x4,r15)
	mov 0x03,r5
	mov.l r6,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0e3c04
	mov r0,r4
	mov.w @(0xCC,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0xBC,PC),r0
	mov.l @(0xCC,PC),r3
	mov.b @(r0,r14),r2
	mov 0x22,r0
	mov.b r2,@(r0,r4)
	mov.w @(0xB4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov.w r0,@(0x1C,r4)
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)

loc_8c0e3c04:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3C10:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E3CC4,pc),r1 ; r1 set to 0x8C15EC64
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3C24:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b @(0x04,r4),r0
	mov.w @(loc_8C0E3CB2,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E3CC8,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r4)
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0E3CB4,pc),r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E3CB2,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E3CB6,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E3CB8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E3CCC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r4)
	mov 0x07,r2 ; r2 set to 0x07
	mov.w @(loc_8C0E3CB6,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r1
	extu.b r3,r3
	mov r3,r2 ; r2 ??? bc r3 is ???
	shll r3
	extu.b r1,r1
	add r2,r3
	add r1,r3
	mov r3,r6
	add 0x0C,r6
	mov.l r3,@r15
	add 0x04,r15
	mov.l @(loc_8C0E3CD0,pc),r2 ; r2 set to 0x8C034E8c
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E3Cac:
	#data 0x2B00
loc_8C0E3Cae:
	#data 0x01D0
loc_8C0E3CB0:
	#data 0x01E9
loc_8C0E3CB2:
	#data 0x00Dc
loc_8C0E3CB4:
	#data 0x00C0
loc_8C0E3CB6:
	#data 0x012c
loc_8C0E3CB8:
	#data 0x01A3
	#align4

loc_8C0E3CBC:
	#data bank04.loc_8c044F12
loc_8C0E3CC0:
	#data loc_8c0e3C10
loc_8C0E3CC4:
	#data bank15.loc_8c15EC64
loc_8C0E3CC8:
	#data bank12.loc_8c129560
loc_8C0E3CCC:
	#data bank12.loc_8c1294C8
loc_8C0E3CD0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0E3CD4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xC2,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov 0x22,r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bf loc_8c0e3d84
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c0e3d84
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r13),r3
	mov.w @(0x1C,r14),r0
	extu.b r3,r3
	cmp/eq r0,r3
	bf loc_8c0e3d84
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r13),r4
	tst r4,r4
	bt loc_8c0e3d2e
	exts.b r4,r0
	tst 0x01,r0
	bf loc_8c0e3d2e
	mov 0x23,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0e3d2e
	mov.w @(0x8E,PC),r0
	mov 0x01,r4
	mov.l @(0x94,PC),r3
	mov r14,r1
	mov.b r4,@(r0,r14)
	mov 0x23,r0
	mov.b r4,@(r0,r14)
	add 0x34,r1
	mov.w @(0x80,PC),r0
	mov.l @(r0,r13),r4
	mov r4,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0

loc_8C0E3D2E:
	mov.w @(0x72,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e3d90
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0e3d78
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e3d90
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0e3d90
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0e3d84
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	lds.l @r15+,pr
	mov r6,r3
	shll r6
	add r3,r6
	mov.l @(0x44,PC),r3
	mov.l @r15+,r13
	add 0x0E,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0E3D78:
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e3d90

loc_8C0E3D84:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x14,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E3D90:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3D98:
	mov.l @(loc_8C0E3DB8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e3d9e:
	#data 0x01d0
loc_8c0e3da0:
	#data 0x01e9
loc_8c0e3da2:
	#data 0x019e
loc_8c0e3da4:
	#data 0x012c
loc_8c0e3da6:
	#data 0x01b0
loc_8c0e3da8:
	#data 0x01a0
	#align4

loc_8C0E3DAC:
	#data bank12.loc_8c1294C8
loc_8C0E3DB0:
	#data bank03.loc_8c034dee
loc_8C0E3DB4:
	#data bank03.loc_8c034e8c
loc_8C0E3DB8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E3DBC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0E3F24,pc),r2 ; r2 set to 0x8C287AE8
	mov 0x0D,r1 ; r1 set to 0x0d
	mov.l r4,@r15
	mov.w @r2,r3
	cmp/gt r1,r3
	bt.s loc_8C0E3DE0
	mov r5,r8
	bra loc_8C0E3E56
	mov 0x00,r0

loc_8c0e3de0:
	mov.l @(loc_8c0e3f28,pc),r10
	mov 0x03,r5
	mov 0x01,r6
	jsr @r10
	mov 0x00,r4
	mov.w @(loc_8C0E3F14,pc),r13
	mov r0,r14
	mov 0x26,r0
	mov.l @(loc_8c0e3f2c,pc),r2
	mov.w r13,@(r0,r14)
	mov 0x00,r9
	mov 0x21,r0
	mov r9,r11
	mov 0x06,r12
	mov.b r8,@(r0,r14)
	mov.l @r15,r3
	mov.l r3,@(0x18,r14)
	mov.l r2,@(0x10,r14)

loc_8c0e3e04:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r10
	mov 0x00,r4
	mov r0,r4
	mov 0x26,r0
	mov.w r13,@(r0,r4)
	mov 0x23,r0
	mov.b r11,@(r0,r4)
	mov 0x20,r0
	mov.b r9,@(r0,r4)
	add 0x01,r11
	mov.l @(loc_8c0e3f30,pc),r3
	mov 0x21,r0
	cmp/ge r12,r11
	mov.b r8,@(r0,r4)
	mov.l r14,@(0x14,r4)
	bf.s loc_8c0e3e04
	mov.l r3,@(0x10,r4)
	mov r9,r11

loc_8c0e3e2c:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r10
	mov 0x00,r4
	mov r0,r4
	mov 0x26,r0
	mov.w r13,@(r0,r4)
	mov 0x23,r0
	mov.b r11,@(r0,r4)
	mov 0x20,r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	add 0x01,r11
	mov.l @(loc_8c0e3f30,pc),r3
	mov 0x21,r0
	cmp/ge r12,r11
	mov.b r8,@(r0,r4)
	mov.l r14,@(0x14,r4)
	bf.s loc_8c0e3e2c
	mov.l r3,@(0x10,r4)
	mov 0x01,r0

loc_8C0E3E56:
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
loc_8C0E3E6A:
	mov r4,r3
	mov.l @(loc_8C0E3F34,pc),r1 ; r1 set to 0x8C15EC70
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E3E7C:
	mov.l r14,@-r15
	mov 0x0D,r7 ; r7 set to 0x0d
	sts.l pr,@-r15
	mov.l @(0x18,r4),r6
	mov 0x01,r14 ; r14 set to 0x01
	mov r4,r5

loc_8C0E3E88:
	mov.w @(loc_8C0E3F16,pc),r1 ; r1 set to 0xDC, r1 set to 0xDc
	mov.w @(loc_8C0E3F18,pc),r0 ; r0 set to 0xC0, r0 set to 0xC0
	mov.l @(loc_8C0E3F38,pc),r3 ; r3 set to 0x8C129560, r3 set to 0x8C129560
	add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???
	mov.w @(loc_8C0E3F16,pc),r2 ; r2 set to 0xDC, r2 set to 0xDc
	jsr @r3
	add r6,r2 ; r2 ??? bc r6 is ???, r2 ??? bc r6 is ???
	mov.w @(loc_8C0E3F1A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov r5,r1
	add 0x50,r1
	mov.b r14,@(r0,r5)
	mov.b @(0x02,r6),r0
	mov.b r0,@(0x02,r5)
	mov.b @(0x01,r6),r0
	mov.b r0,@(0x01,r5)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r6),fr3 ; r3 ??? bc r6 is ???, r3 ??? bc r6 is ???
	fmov.s fr3,@(r0,r5)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r5)
	mov.w @(loc_8C0E3F1C,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r6),r3
	mov.b r3,@(r0,r5)
	add 0x01,r0 ; r0 set to 0x1A4, r0 set to 0x1A4
	mov.b @(r0,r6),r2
	mov.b r2,@(r0,r5)
	mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30
	mov.b @(r0,r6),r3
	mov r6,r2
	add 0x50,r2
	mov.b r3,@(r0,r5)
	mov.l @(loc_8C0E3F3C,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r6),r2
	dt r7
	mov.b r2,@(r0,r5)
	bf.s loc_8C0E3E88
	mov.l @(0x0C,r5),r5
	mov.b @(0x04,r4),r0
	mov 0x14,r6 ; r6 set to 0x14, r6 set to 0x14
	mov.l @(loc_8C0E3F40,pc),r5 ; r5 set to 0x8C26A518, r5 set to 0x8C26A518
	add 0x01,r0 ; r0 set to 0x25, r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	mov.w @(loc_8C0E3F1E,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	extu.b r3,r3
	mov.w r3,@(r0,r4)
	mova @(loc_8C0E3F44,pc),r0  ; r0 set to 0x8C0E3F44, r0 set to 0x8C0E3F44
	fmov.s @r0,fr3
	mov.w @(loc_8C0E3F20,pc),r0 ; r0 set to 0x88, r0 set to 0x88
	mov.l @(loc_8C0E3F4C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @(r0,r5),fr2
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0E3F48,pc),r0  ; r0 set to 0x8C0E3F48, r0 set to 0x8C0E3F48
	fmov.s @r0,fr2
	mov.w @(loc_8C0E3F22,pc),r0 ; r0 set to 0x94, r0 set to 0x94
	fmov.s @(r0,r5),fr1
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e3f14:
	#data 0x2B03
loc_8C0E3F16:
	#data 0x00Dc
loc_8C0E3F18:
	#data 0x00C0
loc_8C0E3F1A:
	#data 0x012c
loc_8C0E3F1C:
	#data 0x01A3
loc_8C0E3F1E:
	#data 0x0130
loc_8C0E3F20:
	#data 0x0088
loc_8C0E3F22:
	#data 0x0094
	#align4

loc_8C0E3F24:
	#data 0x8C287AE8
loc_8C0E3F28:
	#data bank04.loc_8c044F12
loc_8C0E3F2C:
	#data loc_8c0e3E6a
loc_8C0E3F30:
	#data loc_8c0e3FA0
loc_8C0E3F34:
	#data bank15.loc_8c15EC70
loc_8C0E3F38:
	#data bank12.loc_8c129560
loc_8C0E3F3C:
	#data bank12.loc_8c1294C8
loc_8C0E3F40:
	#data 0x8C26A518
loc_8C0E3F44:
	#data 0x43A00000
loc_8C0E3F48:
	#data 0x43700000
loc_8C0E3F4C:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0E3F50:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e3f6c
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x9E,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E3F6C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3F72:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C0E4014,pc),r12 ; r12 set to 0x8C0450C0
	mov 0x0C,r13 ; r13 set to 0x0c
	mov.l r4,@r15
	mov.l @(0x0C,r14),r14

loc_8C0E3F86:
	jsr @r12
	mov r14,r4
	dt r13
	bf.s loc_8C0E3F86
	mov.l @(0x0C,r14),r14
	jsr @r12
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E3FA0:
	mov 0x23,r0 ; r0 set to 0x23
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8C0E3FB0
	mov 0x21,r0 ; r0 set to 0x21
	bra loc_8C0E3FB2
	mov.l @(0x14,r4),r5

loc_8c0e3fb0:
	mov.l @(0x08,r4),r5

loc_8c0e3fb2:
	mov.b @(r0,r4),r2
	mov r4,r1
	mov.w @(loc_8C0E400C,pc),r0
	add 0x34,r1
	extu.b r2,r2
	mov.w r2,@(r0,r4)
	add 0xFC,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x18,r0
	mov.l @(r0,r5),r2
	mov.l @(loc_8c0e4018,pc),r3
	mov.l r2,@(r0,r4)
	mov r5,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8C0E401C,pc),r0
	fmov.s @r0,fr4
	mova @(loc_8C0E4020,pc),r0
	fmov.s @r0,fr5
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0e3fec
	mova @(loc_8C0E4024,pc),r0
	fmov.s @r0,fr4
	mova @(loc_8C0E4028,pc),r0
	fmov.s @r0,fr5

loc_8c0e3fec:
	mov.w @(loc_8C0E400C,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0e3ff8
	mov 0x34,r0
	fneg fr4

loc_8c0e3ff8:
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	lds.l @r15+,pr
	fadd fr5,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0E400a:
	#data 0x012C
loc_8C0E400C:
	#data 0x0130
	#align4

loc_8c0e4010:
	#data bank03.loc_8c034dee
loc_8c0e4014:
	#data bank04.loc_8c0450c0
loc_8c0e4018:
	#data bank12.loc_8c1294c8
loc_8C0E401C:
	#data 0x424EAAAA
loc_8C0E4020:
	#data 0xC2092492
loc_8C0E4024:
	#data 0xC24EAAAA
loc_8C0E4028:
	#data 0x42092492

;==============================================
;unused
loc_8c0e402c:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xE4,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x8,r15)
	mov 0x03,r5
	mov.l r6,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0e4060
	mov r0,r4
	mov.w @(0xC0,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x8,r15),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x4,r15),r3
	mov.l @(0xC4,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c0e4060:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
loc_8C0E4068:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E4120,pc),r1 ; r1 set to 0x8C15EC7c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E407C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E410C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0E4124,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0E410C,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E410E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E4110,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E4112,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E4128,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E4110,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.w @(loc_8C0E4114,pc),r0 ; r0 set to 0x130
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r1
	tst r1,r1
	bt.s loc_8C0E40F4
	mov 0x24,r0 ; r0 set to 0x24
	bra loc_8C0E40F6
	mov 0x0C,r3

loc_8C0E40F4:
	mov 0x0B,r3 ; r3 set to 0x0b

loc_8C0E40F6:
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov.l @(loc_8C0E412C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	add 0x15,r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E410a:
	#data 0x2B00
loc_8C0E410C:
	#data 0x00Dc
loc_8C0E410E:
	#data 0x00C0
loc_8C0E4110:
	#data 0x012c
loc_8C0E4112:
	#data 0x01A3
loc_8C0E4114:
	#data 0x0130
	#align4

loc_8C0E4118:
	#data bank04.loc_8c044F12
loc_8C0E411C:
	#data loc_8c0e4068
loc_8C0E4120:
	#data bank15.loc_8c15EC7c
loc_8C0E4124:
	#data bank12.loc_8c129560
loc_8C0E4128:
	#data bank12.loc_8c1294C8
loc_8C0E412C:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0E4130:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf.s loc_8c0e41e4
	mov r4,r14
	mov.w @(0xBA,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0e41e4
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0e41e4
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r13),r4
	tst r4,r4
	bt loc_8c0e4198
	exts.b r4,r0
	tst 0x01,r0
	bf loc_8c0e4198
	mov 0x23,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0e4198
	mov.w @(0x96,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x92,PC),r0
	mov.l @(r0,r13),r4
	mova @(0x94,PC),r0
	fmov @r0,fr4
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e4184
	mova @(0x8C,PC),r0
	fmov @r0,fr4

loc_8C0E4184:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0E4198:
	mov.w @(0x68,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e41f0
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0e41d8
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e41f0
	mov.w @(0x52,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0e41f0
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0e41e4
	mov.b @(0x5,r14),r0
	mov 0x17,r6
	mov.l @(0x54,PC),r3
	mov r6,r5
	add 0x01,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E41D8:
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e41f0

loc_8C0E41E4:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x14,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E41F0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E41F8:
	mov.l @(loc_8C0E4220,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e41fe:
	#data 0x01d0
loc_8c0e4200:
	#data 0x01e9
loc_8c0e4202:
	#data 0x019e
loc_8c0e4204:
	#data 0x012c
loc_8c0e4206:
	#data 0x01b0
loc_8c0e4208:
	#data 0x01a0
	#align4

loc_8c0e420c:
	#data 0x41D55555
loc_8c0e4210:
	#data 0xC1D55555
loc_8c0e4214:
	#data 0x42892492
loc_8C0E4218:
	#data bank03.loc_8c034dee
loc_8C0E421C:
	#data bank03.loc_8c034e8c
loc_8C0E4220:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e4224:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x13C,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x03,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0e4250
	mov r0,r4
	mov.w @(0x118,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r2
	mov.l @(0x124,PC),r3
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0e4250:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E4258:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E4370,pc),r1 ; r1 set to 0x8C15EC88
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E426C:
	mov.w @(0xEA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xFC,PC),r3
	add 0x01,r0
	mov.w @(0xDE,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0xDC,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xD8,PC),r0
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
	mov.w @(0xBC,PC),r0
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
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov.w @(0x96,PC),r0
	mov.b r3,@(r0,r4)
	add 0x04,r0
	mov.w @(r0,r5),r2
	mov 0x0C,r3
	mov.w r2,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0E42D6:
	mov.w @(0x84,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov r13,r2
	mov.l @(0x8C,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x6A,PC),r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt.s loc_8c0e430a
	mov 0x02,r4
	mov r4,r0
	nop 
	mov.b r0,@(0x4,r14)

loc_8C0E430A:
	mov.w @(0x56,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x0F,r0
	bt loc_8c0e431a
	mov r4,r0
	nop 
	mov.b r0,@(0x4,r14)

loc_8C0E431A:
	mov.w @(0x48,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0e434a
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0e434a
	mov.w @(0x30,PC),r0
	mov 0x01,r2
	mov.l @(0x4C,PC),r3
	mov 0x17,r5
	mov.b r2,@(r0,r14)
	add 0x15,r0
	lds.l @r15+,pr
	mov.b @(r0,r13),r7
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov r14,r4
	mov.l @r15+,r13
	add 0xFF,r7
	add 0x18,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0E434A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E4352:
	mov.l @(loc_8C0E4380,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e4358:
	#data 0x2b05
loc_8c0e435a:
	#data 0x00dc
loc_8c0e435c:
	#data 0x00c0
loc_8c0e435e:
	#data 0x012c
loc_8c0e4360:
	#data 0x01a3
loc_8c0e4362:
	#data 0x0130
loc_8c0e4364:
	#data 0x0159
loc_8c0e4366:
	#data 0x0141
	#align4

loc_8C0E4368:
	#data bank04.loc_8c044F12
loc_8C0E436C:
	#data loc_8c0e4258
loc_8C0E4370:
	#data bank15.loc_8c15EC88
loc_8C0E4374:
	#data bank12.loc_8c129560
loc_8C0E4378:
	#data bank12.loc_8c1294C8
loc_8C0E437C:
	#data bank03.loc_8c034F54
loc_8C0E4380:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e4384:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x12C,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x03,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0e43b4
	mov r0,r4
	mov.w @(0x106,PC),r2
	mov 0x01,r3
	mov 0x26,r0
	mov.b r3,@r4
	mov.w r2,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.l @(0x110,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c0e43b4:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E43BC:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0E44C0,pc),r0 ; r0 set to 0x8C15EC94
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

;----------------------------------------------
loc_8C0E43D2:
mov r4,r3
mov.l @(loc_8C0E44C4,pc),r1 ; r1 set to 0x8C15ECA0
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

;----------------------------------------------
loc_8C0E43E4:
	mov.w @(0xC0,PC),r1
	sts.l pr,@-r15
	mov.w @(0xBE,PC),r0
	add r4,r1
	mov.w @(0xB8,PC),r2
	mov.l @(0xD8,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xB4,PC),r0
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
	mov.w @(0x98,PC),r0
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
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x9C,PC),r6
	mov.b @(r0,r5),r2
	mov 0x0C,r3
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov.w @(0x6A,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.w r0,@(0x1C,r4)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov.w @(0x5C,PC),r0
	fmov @(r0,r6),fr4
	mova @(0x80,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov fr2,@(r0,r4)
	mov.w @(0x52,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0e447a
	fadd fr3,fr4
	mova @(0x70,PC),r0
	fmov @r0,fr2
	mov.w @(0x46,PC),r0
	fmov @(r0,r6),fr4
	mov 0x5C,r0
	fmov @(r0,r4),fr1
	fadd fr2,fr4
	fneg fr1
	fmov fr1,@(r0,r4)

loc_8C0E447A:
	mov.l @(0x64,PC),r3
	mov 0x34,r0
	mov 0x17,r5
	fmov fr4,@(r0,r4)
	mov 0x1A,r6
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0E4488:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0E44E4
	cmp/eq 0x01,r0
	bt loc_8C0E4552
	cmp/eq 0x02,r0
	bf loc_8C0E44A2
	bra loc_8C0E45Ac
	nop

loc_8C0E44A2:
	bra loc_8C0E45Be
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e44a6:
	#data 0x2b06
loc_8c0e44a8:
	#data 0x00dc
loc_8c0e44aa:
	#data 0x00c0
loc_8c0e44ac:
	#data 0x012c
loc_8c0e44ae:
	#data 0x01a3
loc_8c0e44b0:
	#data 0x041c
loc_8c0e44b2:
	#data 0x008c
loc_8c0e44b4:
	#data 0x01d2
loc_8c0e44b6:
	#data 0x0088
	#align4

loc_8C0E44B8:
	#data bank04.loc_8c044F12
loc_8C0E44BC:
	#data loc_8c0e43Bc
loc_8C0E44C0:
	#data bank15.loc_8c15EC94
loc_8C0E44C4:
	#data bank15.loc_8c15ECA0
loc_8C0E44C8:
	#data bank12.loc_8c129560
loc_8C0E44CC:
	#data bank12.loc_8c1294C8
loc_8C0E44D0:
	#data 0x8C26A518
loc_8C0E44D4:
	#data 0x43F00000
loc_8C0E44D8:
	#data 0xC1855555
loc_8C0E44Dc:
	#data 0xC4055555
loc_8C0E44E0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0E44E4:
	mov.l @(loc_8C0E45D8,pc),r3 ; r3 set to 0x8C034DEe
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
	bf loc_8C0E45Be
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E45E0,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x1B,r6 ; r6 set to 0x1b
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mova @(loc_8C0E45DC,pc),r0  ; r0 set to 0x8C0E45Dc
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	mov 0x68,r0 ; r0 set to 0x68
	mov 0x17,r5 ; r5 set to 0x17
	fdiv fr3,fr2
	fneg fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0E4552:
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
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bt loc_8C0E45Be
	mov.b @(0x05,r14),r0
	fmov fr3,fr4
	add 0x01,r0 ; r0 set to 0x5d
	mov.b r0,@(0x05,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	bra loc_8C0E45Be
	fmov.s fr4,@(r0,r14)

loc_8c0e45ac:
	mov.l @(loc_8c0e45d8,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e45be
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8C0E45BE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E45C4:
	mov r4,r3
	mov.l @(loc_8C0E45E4,pc),r1 ; r1 set to 0x8C15ECAc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0E45D8:
	#data bank03.loc_8c034dee
loc_8C0E45DC:
	#data 0x40800000
loc_8C0E45E0:
	#data bank03.loc_8c034e8c
loc_8C0E45E4:
	#data bank15.loc_8c15ECAc

;==============================================
loc_8C0E45E8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xC8,PC),r1
	sts.l pr,@-r15
	mov.w @(0xC4,PC),r2
	add r14,r1
	mov.w @(0xC2,PC),r0
	mov.l @(0xD0,PC),r3
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
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x94,PC),r4
	mov.b @(r0,r5),r2
	mov 0x0B,r3
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x72,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov.w @(0x68,PC),r0
	fmov @(r0,r4),fr4
	mova @(0x7C,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov fr2,@(r0,r14)
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0e467e
	fadd fr3,fr4
	mova @(0x6C,PC),r0
	fmov @r0,fr2
	mov.w @(0x52,PC),r0
	fmov @(r0,r4),fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr1
	fadd fr2,fr4
	fneg fr1
	fmov fr1,@(r0,r14)

loc_8C0E467E:
	mov.l @(0x60,PC),r3
	mov 0x34,r0
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x58,PC),r2
	mov r14,r4
	mov 0x1C,r6
	mov 0x17,r5
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E4696:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0E46E8,pc),r12 ; r12 set to 0x8C034DEe
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8C0E46Ec
	mov r5,r13
	cmp/eq 0x01,r0
	bt loc_8C0E4764
	cmp/eq 0x02,r0
	bt loc_8C0E4792
	bra loc_8C0E4796
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e46b8:
	#data 0x00dc
loc_8c0e46ba:
	#data 0x00c0
loc_8c0e46bc:
	#data 0x012c
loc_8c0e46be:
	#data 0x01a3
loc_8c0e46c0:
	#data 0x041c
loc_8c0e46c2:
	#data 0x008c
loc_8c0e46c4:
	#data 0x01d2
loc_8c0e46c6:
	#data 0x0088
	#align4

loc_8C0E46C8:
	#data bank12.loc_8c129560
loc_8C0E46CC:
	#data bank12.loc_8c1294C8
loc_8C0E46d0:
	#data 0x8C26A518
loc_8C0E46d4:
	#data 0x42D55555
loc_8C0E46d8:
	#data 0xC1200000
loc_8C0E46dc:
	#data 0xC2D55555
loc_8C0E46E0:
	#data bank10.loc_8c104434
loc_8C0E46E4:
	#data bank03.loc_8c034e8c
loc_8C0E46E8:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0e46ec:
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
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov 0x34,r0
	fmov.s @(r0,r14),fr4
	fmov.s @(r0,r13),fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0e471c
	fneg fr4

loc_8c0e471c:
	mova @(loc_8C0E47B8,pc),r0
	fmov.s @r0,fr5
	fcmp/gt fr4,fr5
	bf loc_8c0e4796
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E47B2,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0e4738
	fmov fr5,fr4
	mova @(loc_8C0E47BC,pc),r0
	fmov.s @r0,fr4

loc_8c0e4738:
	mov 0x34,r0
	mov.l @(loc_8c0e47c0,pc),r3
	fmov.s @(r0,r13),fr3
	mov 0x1D,r6
	mov r14,r4
	mov 0x17,r5
	fadd fr4,fr3
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E4764:
	mov.w @(loc_8C0E47B4,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8C0E4796
	jsr @r12
	mov r14,r4
	mov.w @(loc_8C0E47B4,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0E4796
	mov.b @(0x05,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E47B4,pc),r0 ; r0 set to 0x141
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r13),r2
	mov r0,r3 ; r3 set to 0x21
	add 0x5F,r3 ; r3 set to 0x80
	or r3,r2
	bra loc_8C0E4796
	mov.b r2,@(r0,r13)

loc_8c0e4792:
	jsr @r12
	mov r14,r4

loc_8C0E4796:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E47A0:
	mov r4,r3
	mov.l @(loc_8C0E47C4,pc),r1 ; r1 set to 0x8C15ECB4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e47b2:
	#data 0x01D2
loc_8C0E47B4:
	#data 0x0141
	#align4

loc_8c0e47b8:
	#data 0x42D55555
loc_8c0e47bc:
	#data 0xC2D55555
loc_8C0E47C0:
	#data bank03.loc_8c034e8c
loc_8C0E47C4:
	#data bank15.loc_8c15ECB4

;==============================================
loc_8C0E47C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xC8,PC),r1
	sts.l pr,@-r15
	mov.w @(0xC4,PC),r2
	add r14,r1
	mov.w @(0xC2,PC),r0
	mov.l @(0xD0,PC),r3
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
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x0C,r3
	mov 0x30,r4
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x72,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mova @(0x7C,PC),r0
	fmov @r0,fr4
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x60,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0e4852
	mova @(0x70,PC),r0
	fmov @r0,fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0E4852:
	mov 0x34,r0
	mov.l @(0x64,PC),r3
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x44,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x54,PC),r2
	mov r14,r4
	mov 0x1E,r6
	mov 0x17,r5
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E4876:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8C0E48C4
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C0E48Dc
	cmp/eq 0x02,r0
	bt loc_8C0E48Ec
	bra loc_8C0E494a
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e4898:
	#data 0x00dc
loc_8c0e489a:
	#data 0x00c0
loc_8c0e489c:
	#data 0x012c
loc_8c0e489e:
	#data 0x01a3
loc_8c0e48a0:
	#data 0x013e
loc_8c0e48a2:
	#data 0x01d2
loc_8c0e48a4:
	#data 0x041c
	#align4

loc_8C0E48A8:
	#data bank12.loc_8c129560
loc_8C0E48AC:
	#data bank12.loc_8c1294C8
loc_8C0E48B0:
	#data 0xC2700000
loc_8C0E48B4:
	#data 0x41200000
loc_8C0E48B8:
	#data 0x42700000
loc_8C0E48BC:
	#data bank10.loc_8c104434
loc_8C0E48C0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0e48c4:
	mov.l @(loc_8c0e4970,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0E496C,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e494a
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E496C,pc),r0
	mov.b r13,@(r0,r14)

loc_8c0e48dc:
	mov.w @(loc_8C0E496C,pc),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0e494a
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c0e48ec:
	mov.l @(loc_8c0e4970,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0E496C,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e494a
	mov 0x5C,r1
	mov.l @(loc_8c0e4974,pc),r3
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
	tst r0,r0
	bf loc_8c0e494a
	mov 0x02,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E496E,pc),r0
	mov.b r13,@(r0,r14)

loc_8C0E494A:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E4954:
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf loc_8C0E4962
	mov.b @(0x05,r4),r0
	add 0x01,r0
	bra loc_8C0E4968
	mov.b r0,@(0x05,r4)

loc_8C0E4962:
	mov.l @(loc_8C0E4978,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0E4968:
	rts
	nop


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e496c:
	#data 0x0141
loc_8c0e496e:
	#data 0x012C
	#align4

loc_8C0E4970:
	#data bank03.loc_8c034dee
loc_8C0E4974:
	#data bank03.loc_8c03340c
loc_8C0E4978:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E497C:
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
	bt.s loc_8c0e49a2
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8C0E49A2:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E49AA:
	mov r4,r3
	mov.l @(loc_8C0E4AC4,pc),r1 ; r1 set to 0x8C15ECBc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0E49BC:
	mov.w @(loc_8C0E4AB0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E4AC8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0E4AB0,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E4AB2,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r4),r5
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E4AB6,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E4ACC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr

loc_8C0E4A1A:
	mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r4),r5
	mov.b r3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov.b @(0x01,r4),r0
	mov r0,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.b @(0x01,r5),r0
	cmp/eq r0,r3
	bt loc_8C0E4A40
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x04,r4)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E4A40:
	mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12c
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8C0E4A96
	mov r5,r2
	mov.l @(loc_8C0E4ACC,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0E4AB8,pc),r0 ; r0 set to 0x130
	mov.w @(loc_8C0E4ABA,pc),r6 ; r6 set to 0x150
	mov.w @(r0,r5),r2
	add r5,r6 ; r6 ??? bc r5 is ???
	mov.w r2,@(r0,r4)
	mov.b @(0x01,r6),r0
	mov r0,r6 ; r6 set to 0x130
	extu.b r6,r3 ; r3 set to 0x30
	tst r3,r3
	bt loc_8C0E4A92
	mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	extu.b r6,r14 ; r14 set to 0x30
	mov.b r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/eq r14,r0
	bt loc_8C0E4A8a
	extu.b r6,r0 ; r0 set to 0x30
	mov r14,r6 ; r6 set to 0x30
	mov.l @(loc_8C0E4AD0,pc),r3 ; r3 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w r0,@(0x1C,r4)
	add 0xFF,r6 ; r6 set to 0x2f
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0E4A8A:
	lds.l @r15+,pr
	mov.l @(loc_8C0E4AD4,pc),r3 ; r3 set to 0x8C034D8c
	jmp @r3
	mov.l @r15+,r14

loc_8c0e4a92:
	mov 0xFF,r0
	mov.w r0,@(0x1C,r4)

loc_8C0E4A96:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E4A9C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E4AAA:
	mov.l @(loc_8C0E4AD8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E4AB0:
	#data 0x00Dc
loc_8C0E4AB2:
	#data 0x00C0
loc_8C0E4AB4:
	#data 0x012c
loc_8C0E4AB6:
	#data 0x01A3
loc_8C0E4AB8:
	#data 0x0130
loc_8C0E4ABA:
	#data 0x0150
	#align4

loc_8C0E4ABC:
	#data bank04.loc_8c044F12
loc_8C0E4AC0:
	#data loc_8c0e49Aa
loc_8C0E4AC4:
	#data bank15.loc_8c15ECBc
loc_8C0E4AC8:
	#data bank12.loc_8c129560
loc_8C0E4ACC:
	#data bank12.loc_8c1294C8
loc_8C0E4AD0:
	#data bank03.loc_8c034C38
loc_8C0E4AD4:
	#data bank03.loc_8c034D8c
loc_8C0E4AD8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E4ADC:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0xB4,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e4b1a
	mov r0,r4
	mov 0x20,r1
	mov.l @(0xA4,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0x8C,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0E4B1A:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
;unused
loc_8C0E4b22:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0x68,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e4b68
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x58,PC),r3
	add r4,r1
	mov 0x21,r2
	mov.l r3,@(0x10,r4)
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.w @(0x38,PC),r3
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0e4b68:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E4B70:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8C0E4B88
	mov.l @(0x18,r14),r5
	mov.l @(loc_8C0E4BA4,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0E4B88:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0E4BA8,pc),r0 ; r0 set to 0x8C15EEE8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r1
	jmp @r1
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e4b9a:
	#data 0x2C01
	#align4

loc_8C0E4B9C:
	#data bank04.loc_8c044F12
loc_8C0E4BA0:
	#data loc_8c0e4B70
loc_8C0E4BA4:
	#data bank04.loc_8c0450C0
loc_8C0E4BA8:
	#data bank15.loc_8c15EEE8

;==============================================
loc_8C0E4BAC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c0e4c30
	mov.w @(0x12C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0e4c3c
	mov.b @(0x4,r14),r0
	mov.w @(0x122,PC),r1
	add 0x01,r0
	mov.l @(0x128,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x11A,PC),r0
	mov.w @(0x116,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0x114,PC),r0
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
	mov.w @(0xF8,PC),r0
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
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xE8,PC),r3
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	mov 0x1B,r5
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	add 0x02,r6
	jsr @r3
	mov r14,r4

loc_8C0E4C30:
	mov.l @(0xCC,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e4c46

loc_8C0E4C3C:
	lds.l @r15+,pr
	mov.l @(0xC4,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0E4C46:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E4C4C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e4cba
	mov r5,r13
	mov.b @(0x4,r14),r0
	mov.w @(0x88,PC),r1
	add 0x01,r0
	mov.l @(0x90,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x80,PC),r0
	mov.w @(0x7C,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0x7A,PC),r0
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
	mov.w @(0x5E,PC),r0
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
	mov.l @(0x50,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x4C,PC),r3
	mov.b @(r0,r13),r2
	mov 0x1B,r5
	mov 0x04,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C0E4CBA:
	mov 0x34,r0
	mov.l @(0x40,PC),r3
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x2C,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e4ce0
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E4CE0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e4ce8:
	#data 0x01f9
loc_8c0e4cea:
	#data 0x00dc
loc_8c0e4cec:
	#data 0x00c0
loc_8c0e4cee:
	#data 0x012c
loc_8c0e4cf0:
	#data 0x01a3
loc_8c0e4cf2:
	#data 0x041c
	#align4

loc_8C0E4CF4:
	#data bank12.loc_8c129560
loc_8C0E4CF8:
	#data bank12.loc_8c1294C8
loc_8C0E4CFC:
	#data bank03.loc_8c034C38
loc_8C0E4D00:
	#data bank03.loc_8c034D8c
loc_8C0E4D04:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E4D08:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e4d8c
	mov 0x01,r12
	mov.b @(0x4,r14),r0
	mov.w @(0xE4,PC),r1
	add 0x01,r0
	mov.l @(0xF0,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0xDC,PC),r0
	mov.w @(0xD8,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0xD6,PC),r0
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
	mov.w @(0xBC,PC),r0
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
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFC,r3
	mov 0x1B,r5
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x05,r6
	fmov fr3,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x98,PC),r2
	mov 0x21,r5
	jsr @r2
	mov r14,r4

loc_8C0E4D8C:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0e4da2
	mov.w @(0x70,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0e4db0

loc_8C0E4DA2:
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E4DB0:
	mov.w @(0x5C,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c0e4dbc
	bra loc_8c0e4dbe
	mov 0x48,r4

loc_8C0E4DBC:
	mov 0xB8,r4

loc_8C0E4DBE:
	exts.w r4,r4
	mov.l @(0x6C,PC),r3
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mova @(0x5C,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x4C,PC),r3
	mov.l @r3,r2
	mov.l @(0x1C,r2),r1
	tst r12,r1
	bt loc_8c0e4df8
	mov.w @(0x18,PC),r2
	mov 0x00,r0
	add r14,r2
	bra loc_8c0e4dfc
	mov.b r0,@r2

loc_8C0E4DF8:
	mov.w @(0xE,PC),r0
	mov.b r12,@(r0,r14)

loc_8C0E4DFC:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e4e06:
	#data 0x00dc
loc_8c0e4e08:
	#data 0x00c0
loc_8c0e4e0a:
	#data 0x012c
loc_8c0e4e0c:
	#data 0x01a3
loc_8c0e4e0e:
	#data 0x0140
loc_8c0e4e10:
	#data 0x0130
	#align4

loc_8C0E4E14:
	#data bank12.loc_8c129560
loc_8C0E4E18:
	#data bank12.loc_8c1294C8
loc_8C0E4E1C:
	#data bank03.loc_8c034C38
loc_8C0E4E20:
	#data bank04.loc_8c042008
loc_8C0E4E24:
	#data bank04.loc_8c0450C0
loc_8C0E4E28:
	#data 0x3FD55555
loc_8C0E4E2c:
	#data 0x43789249
loc_8C0E4E30:
	#data bank03.loc_8c034D8c
loc_8C0E4E34:
	#data 0x8C26823c

;==============================================
loc_8C0E4E38:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf.s loc_8C0E4EAc
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0E4F74,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E4F88,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E4F76,pc),r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E4F74,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E4F78,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E4F7A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E4F8C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E4F78,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	bra loc_8C0E4F6a
	mov.w r0,@(0x1E,r14)

loc_8c0e4eac:
	mov 0x24,r0
	mov.w @(loc_8C0E4F7E,pc),r3
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E4F7C,pc),r0
	mov.w @(r0,r13),r5
	extu.w r5,r5
	cmp/eq r3,r5
	bt loc_8c0e4ec4
	mov.w @(loc_8C0E4F80,pc),r1
	cmp/eq r1,r5
	bf loc_8c0e4f52

loc_8c0e4ec4:
	mov.w @(loc_8C0E4F82,pc),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0e4f48
	mov.w @(loc_8C0E4F82,pc),r3
	mov.w @(0x1E,r14),r0
	add r13,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8c0e4f6a
	mov.w @(loc_8C0E4F82,pc),r0
	mov.w @(loc_8C0E4F84,pc),r3
	mov.b @(r0,r13),r0
	mov.l @(loc_8c0e4f90,pc),r1
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r12
	mov.w @(0x1E,r14),r0
	extu.b r12,r12
	mulu.w r3,r12
	add 0xFF,r0
	mov r0,r2
	shll2 r0
	add r2,r0
	sts macl,r12
	shll2 r0
	add r1,r12
	add r0,r12
	mov.w @(loc_8c0e4f78,pc),r0
	mov.b @r12,r2
	tst r2,r2
	bt.s loc_8c0e4f6a
	mov.b r2,@(r0,r14)
	mov.w @(0x02,r12),r0
	mov 0x1B,r5
	mov.l @(loc_8c0e4f94,pc),r3
	mov 0x12,r6
	extu.w r0,r7
	jsr @r3
	mov r14,r4
	mov 0x04,r0
	fmov.s @(r0,r12),fr3
	mov 0x50,r0
	fmov.s fr3,@(r0,r14)
	mov 0x08,r0
	fmov.s @(r0,r12),fr3
	mov 0x54,r0
	fmov.s fr3,@(r0,r14)
	mov 0x0C,r0
	fmov.s @(r0,r12),fr4
	mov 0x10,r0
	fmov.s @(r0,r12),fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0E4F86,pc),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c0e4f40
	mov 0x34,r0
	fneg fr4

loc_8c0e4f40:
	fmov.s @(r0,r13),fr3
	fadd fr4,fr3
	bra loc_8c0e4f6a
	fmov.s fr3,@(r0,r14)

loc_8c0e4f48:
	mov.w @(loc_8c0e4f78,pc),r0
	mov.b r4,@(r0,r14)
	exts.b r4,r0
	bra loc_8c0e4f6a
	mov.w r0,@(0x1E,r14)

loc_8c0e4f52:
	fldi1 fr3
	mov 0x54,r0
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0
	mov.l @(loc_8c0e4f98,pc),r3
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E4F6A:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E4F74:
	#data 0x00Dc
loc_8C0E4F76:
	#data 0x00C0
loc_8C0E4F78:
	#data 0x012c
loc_8C0E4F7A:
	#data 0x01A3
loc_8c0e4f7c:
	#data 0x0158
loc_8c0e4f7e:
	#data 0x1500
loc_8c0e4f80:
	#data 0x1510
loc_8c0e4f82:
	#data 0x0141
loc_8c0e4f84:
	#data 0x00B4
loc_8c0e4f86:
	#data 0x0130
	#align4

loc_8C0E4F88:
	#data bank12.loc_8c129560
loc_8C0E4F8C:
	#data bank12.loc_8c1294C8
loc_8C0E4F90:
	#data bank15.loc_8c15ECCc
loc_8C0E4F94:
	#data bank03.loc_8c034CD6
loc_8C0E4F98:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e4f9c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e4fd4
	mov r0,r4
	mov 0x00,r5
	mov.l @(0x120,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov.w @(0x106,PC),r0
	mov.l @r15,r3
	mov.l @(r0,r3),r2
	mov.w @(0x102,PC),r3
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0e4fd4:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E4FDC:
	mov.l r14,@-r15
	mov.w @(0xE8,PC),r0
	mov.l @(0x18,r4),r14
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x2C,r0
	bf loc_8c0e4ff6
	mov.b @(0x4,r4),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0e4ffc

loc_8C0E4FF6:
	mov.l @(0xE4,PC),r3
	jmp @r3
	mov.l @r15+,r14


loc_8C0E4FFC:
	mov 0x20,r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c0e500a
	mov r14,r5
	bra loc_8c0e501e
	mov.l @r15+,r14

loc_8C0E500A:
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c0e5018
	mov r14,r5
	bra loc_8c0e53f4
	mov.l @r15+,r14

loc_8C0E5018:
	mov r14,r5
	bra loc_8c0e51a0
	mov.l @r15+,r14

loc_8C0E501E:
	mov.w @(0xAC,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e50e8
	mov r5,r13
	mov.b @(0x4,r14),r0
	mov.w @(0x94,PC),r3
	add 0x01,r0
	mov.w @(0x90,PC),r1
	mov.b r0,@(0x4,r14)
	mov.w @(0x86,PC),r0
	mov.l @(r0,r13),r2
	mov.w @(0x8A,PC),r0
	add r3,r2
	mov.l @(0x94,PC),r3
	jsr @r3
	add r14,r1
	mov.w @(0x7C,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)
	mov.w @(0x72,PC),r0
	mov.l @(r0,r13),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.w @(0x6A,PC),r0
	mov.l @(r0,r13),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov.w @(0x62,PC),r0
	mov.l @(r0,r13),r3
	mov 0x50,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x58,PC),r0
	mov.l @(r0,r13),r3
	mov 0x54,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x4E,PC),r0
	mov.l @(r0,r13),r3
	add 0xDB,r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x25,r0
	mov.l @(r0,r13),r3
	add 0xDC,r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x24,r0
	mov.l @(r0,r13),r3
	mov 0x30,r0
	mov r14,r1
	add 0x50,r1
	mov.b @(r0,r3),r2
	mov.l @(0x48,PC),r3
	mov.b r2,@(r0,r14)
	mov.w @(0x2A,PC),r0
	mov.l @(r0,r13),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x20,PC),r0
	mov.l @(r0,r13),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x16,PC),r0
	mov.l @(r0,r13),r2
	mov 0x34,r0
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xC,PC),r0
	mov.l @(r0,r13),r3
	mov 0x38,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x0A,r0
	bra loc_8c0e5178              ; loc_8c0e5004+0x174
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e50ca:
	#data 0x01c8
loc_8c0e50cc:
	#data 0x2c02
loc_8c0e50ce:
	#data 0x012c
loc_8c0e50d0:
	#data 0x00dc
loc_8c0e50d2:
	#data 0x00c0
	#align4

loc_8C0E50D4:
	#data bank04.loc_8c044F12
loc_8C0E50D8:
	#data loc_8c0e4FDc
loc_8C0E50DC:
	#data bank04.loc_8c0450C0
loc_8C0E50E0:
	#data bank12.loc_8c129560
loc_8C0E50E4:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0E50E8:
	mov.w @(0x96,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0e516a
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt.s loc_8c0e5102
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c0e516a

loc_8C0E5102:
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c0e5178
	mov.l @(0x80,PC),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e5162
	mov r0,r12
	mov.l @(0x78,PC),r2
	mov 0x20,r1
	mov.l @(0x70,PC),r3
	add r12,r1
	mov.l r3,@(0x10,r12)
	mov 0x00,r3
	mov.l @r2,r0
	mov.l @(0x1C,r0),r0
	and 0x03,r0
	add 0x01,r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b r3,@(r0,r12)
	mov.w @(0x4E,PC),r0
	mov.l @(0x18,r14),r1
	mov.w @(0x4C,PC),r3
	mov.l r1,@(0x18,r12)
	mov.l @(r0,r13),r0
	mov.l @(0x58,PC),r1
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r12)
	mov 0x26,r0
	jsr @r1
	mov.w r3,@(r0,r12)
	mov.w @(0x3C,PC),r1
	and 0x3F,r0
	mov.l @(0x48,PC),r3
	add 0xE0,r0
	add r12,r1
	jsr @r3
	mov.l r0,@r1
	mov.w @(0x30,PC),r1
	and 0x3F,r0
	neg r0,r0
	add r12,r1
	add 0x40,r0
	mov.l r0,@r1

loc_8C0E5162:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	bra loc_8c0e5178
	mov.w r0,@(0x1E,r14)

loc_8C0E516A:
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0E5178:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e5182:
	#data 0x022a
loc_8c0e5184:
	#data 0x01c8
loc_8c0e5186:
	#data 0x2c02
loc_8c0e5188:
	#data 0x00cc
loc_8c0e518a:
	#data 0x00d0
	#align4

loc_8C0E518C:
	#data bank04.loc_8c044F12
loc_8C0E5190:
	#data loc_8c0e4FDc
loc_8C0E5194:
	#data 0x8C26823c
loc_8C0E5198:
	#data bank03.loc_8c03319e
loc_8C0E519C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E51A0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov 0x01,r5
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e526e
	mov 0x00,r10
	mov.b @(0x4,r14),r0
	mov.w @(0x116,PC),r3
	add 0x01,r0
	mov.w @(0x112,PC),r1
	mov.b r0,@(0x4,r14)
	mov.w @(0x10C,PC),r0
	mov.l @(r0,r12),r2
	mov.w @(0x10C,PC),r0
	add r3,r2
	mov.l @(0x110,PC),r3
	jsr @r3
	add r14,r1
	mov.w @(0x104,PC),r0
	mov.b r5,@(r0,r14)
	mov.w @(0xFA,PC),r0
	mov.l @(r0,r12),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.w @(0xF2,PC),r0
	mov.l @(r0,r12),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov.w @(0xEA,PC),r0
	mov.l @(r0,r12),r3
	mov 0x50,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xE0,PC),r0
	mov.l @(r0,r12),r3
	mov 0x54,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xD6,PC),r0
	mov.l @(r0,r12),r3
	add 0xDB,r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x25,r0
	mov.l @(r0,r12),r3
	add 0xDC,r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x24,r0
	mov.l @(r0,r12),r3
	mov 0x30,r0
	mov r14,r1
	mov.b @(r0,r3),r2
	add 0x50,r1
	mov.l @(0xC8,PC),r3
	mov.b r2,@(r0,r14)
	mov.w @(0xB2,PC),r0
	mov.l @(r0,r12),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xA8,PC),r0
	mov 0x1B,r5
	mov.l @(r0,r12),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov.l @(0xAC,PC),r3
	add 0x05,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x96,PC),r0
	mov.w r0,@(0x1C,r14)
	mov.b r10,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r12),r3
	tst r3,r3
	bt.s loc_8c0e5266
	mov.w r3,@(r0,r14)
	mov.w @(0x88,PC),r4
	add r14,r4
	mov.l @r4,r3
	neg r3,r3
	mov.l r3,@r4

loc_8C0E5266:
	mov 0x31,r0
	mov 0xFF,r2
	bra loc_8c0e53bc
	mov.b r2,@(r0,r14)

loc_8C0E526E:
	mov 0x24,r0
	mov.b @(r0,r12),r1
	mov.b r1,@(r0,r14)
	mov.w @(0x72,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c0e5280
	bra loc_8c0e539e
	nop 

loc_8C0E5280:
	mova @(0x74,PC),r0
	fmov @r0,fr13
	mova @(0x74,PC),r0
	fmov @r0,fr14
	mov.b @(0x5,r12),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt.s loc_8c0e529a
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c0e5304
 
loc_8C0E529A:
	mov.w @(0x48,PC),r0
	mov r14,r4
	fmov fr13,fr0
	mov.b r5,@(r0,r14)
	add 0xA0,r0
	mov.l @(r0,r14),r3
	mov 0x34,r0
	fmov @(r0,r12),fr2
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr14,fr0
	fmov fr2,@(r0,r14)
	shll2 r0
	mov.l @(r0,r14),r3
	mov 0x38,r0
	fmov @(r0,r12),fr2
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
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
	mov.l @(0x24,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e52e0:
	#data 0x01c8
loc_8c0e52e2:
	#data 0x00dc
loc_8c0e52e4:
	#data 0x00c0
loc_8c0e52e6:
	#data 0x012c
loc_8c0e52e8:
	#data 0x00cc
loc_8c0e52ea:
	#data 0x022a
	#align4

loc_8C0E52EC:
	#data bank12.loc_8c129560
loc_8C0E52F0:
	#data bank12.loc_8c1294C8
loc_8C0E52F4:
	#data bank03.loc_8c034C38
loc_8C0E52F8:
	#data 0x3FD55555
loc_8C0E52Fc:
	#data 0x40092492
loc_8C0E5300:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0E5304:
	mova @(0xD4,PC),r0
	mov.l @(0xD8,PC),r11
	fmov @r0,fr15
	mov r10,r9
	fldi0 fr12
	mov 0x2F,r8

loc_8C0E5310:
	mov.l @(0xD0,PC),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e539e
	mov r0,r13
	mov.l @(0xC4,PC),r3
	jsr @r11
	mov.l r3,@(0x10,r13)
	mov.w @(0xAC,PC),r2
	mov 0x20,r1
	and 0x07,r0
	add r13,r1
	add r2,r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b r10,@(r0,r13)
	mov.w @(0x9E,PC),r0
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r13)
	mov.l @(r0,r12),r0
	mov.w @(0x98,PC),r3
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r13)
	mov 0x26,r0
	mov.w r3,@(r0,r13)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r13)
	mov 0x68,r0
	fmov fr12,@(r0,r13)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	jsr @r11
	fmov fr3,@(r0,r13)
	and 0x7F,r0
	add 0xC0,r0
	mov r0,r4
	shll8 r4
	shll2 r4
	shll2 r4
	lds r4,fpul
	mov 0x5C,r0
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	jsr @r11
	fmov fr3,@(r0,r13)
	and r8,r0
	add 0xE0,r0
	mov r0,r4
	shll8 r4
	shll2 r4
	shll2 r4
	neg r4,r4
	lds r4,fpul
	add 0x01,r9
	mov 0x02,r3
	mov 0x60,r0
	cmp/ge r3,r9
	float fpul,fr3
	fmul fr14,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r13)
	bf loc_8c0e5310

loc_8C0E539E:
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r3
	mov r14,r4
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
	jmp @r3
	mov.l @r15+,r14

loc_8C0E53BC:
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
loc_8c0e53d6:
	#data 0x0080
loc_8c0e53d8:
	#data 0x01c8
loc_8c0e53da:
	#data 0x2c02
	#align4

loc_8C0E53dc:
	#data 0x47800000
loc_8C0E53E0:
	#data bank03.loc_8c03319e
loc_8C0E53E4:
	#data bank04.loc_8c044F12
loc_8C0E53E8:
	#data loc_8c0e4FDc
loc_8C0E53EC:
	#data 0xBE092492
loc_8C0E53F0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E53F4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0e54a8
	mov 0x01,r4
	mov.b @(0x4,r14),r0
	mov.w @(0x10E,PC),r3
	add 0x01,r0
	mov.w @(0x10A,PC),r1
	mov.b r0,@(0x4,r14)
	mov.w @(0x104,PC),r0
	mov.l @(r0,r13),r2
	mov.w @(0x104,PC),r0
	add r3,r2
	mov.l @(0x108,PC),r3
	jsr @r3
	add r14,r1
	mov.w @(0xFC,PC),r0
	mov.b r4,@(r0,r14)
	mov.w @(0xF2,PC),r0
	mov.l @(r0,r13),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.w @(0xEA,PC),r0
	mov.l @(r0,r13),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov.w @(0xE2,PC),r0
	mov.l @(r0,r13),r3
	mov 0x50,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xD8,PC),r0
	mov.l @(r0,r13),r3
	mov 0x54,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xCE,PC),r0
	mov.l @(r0,r13),r3
	add 0xDB,r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x25,r0
	mov.l @(r0,r13),r3
	add 0xDC,r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x24,r0
	mov.l @(r0,r13),r3
	mov 0x30,r0
	mov r14,r1
	mov.b @(r0,r3),r2
	add 0x50,r1
	mov.l @(0xC0,PC),r3
	mov.b r2,@(r0,r14)
	mov.w @(0xAA,PC),r0
	mov.l @(r0,r13),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xA0,PC),r0
	mov 0x1B,r5
	mov.l @(r0,r13),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	mov.l @(0xA4,PC),r3
	and 0x07,r0
	mov r0,r6
	add 0x0A,r6
	jsr @r3
	mov r14,r4
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mov 0x00,r3
	mov.w @(0x84,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	bra loc_8c0e5510
	mov.b r3,@(r0,r14)

loc_8C0E54A8:
	mov 0x24,r0
	mov.b @(r0,r13),r1
	mov.b r1,@(r0,r14)
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0e54c2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0e54ce

loc_8C0E54C2:
	lds.l @r15+,pr
	mov.l @(0x68,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0E54CE:
	mov.w @(0x4C,PC),r0
	mov.l @(0x60,PC),r3
	mov.b r4,@(r0,r14)
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

loc_8C0E5510:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e5518:
	#data 0x01c8
loc_8c0e551a:
	#data 0x00dc
loc_8c0e551c:
	#data 0x00c0
loc_8c0e551e:
	#data 0x012c
loc_8c0e5520:
	#data 0x022a
	#align4

loc_8C0E5524:
	#data bank12.loc_8c129560
loc_8C0E5528:
	#data bank12.loc_8c1294C8
loc_8C0E552C:
	#data bank03.loc_8c034C38
loc_8C0E5530:
	#data bank04.loc_8c0450C0
loc_8C0E5534:
	#data bank03.loc_8c034D8c

;==============================================
;unused
loc_8c0e5538:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x140,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x03,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0e5572
	mov r0,r4
	mov.w @(0x11A,PC),r3
	mov 0x26,r0
	mov r4,r1
	add 0x34,r1
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r2
	mov.l @(0x124,PC),r3
	mov.b r2,@(r0,r4)
	mov.l @r15,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x11C,PC),r1
	mov.l r1,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c0e5572:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E557A:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0E568C,pc),r0 ; r0 set to 0x8C15F054
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0E5590:
	mov r4,r3
	mov.l @(loc_8C0E5690,pc),r1 ; r1 set to 0x8C15F074
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E55A2:
	mov.w @(loc_8C0E5670,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0E5672,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0E5670,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0E5694,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E5674,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E5676,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E5684,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov r3,r6 ; r6 set to 0x00
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E5698,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	lds.l @r15+,pr

loc_8C0E5608:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E5678,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.l r3,@r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf.s loc_8C0E5644
	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(loc_8C0E567A,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x0B,r0
	bf loc_8C0E5664
	mov.l @(loc_8C0E569C,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0E567C,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0E56B6
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E567C,pc),r0 ; r0 set to 0x141
	bra loc_8C0E56B6
	mov.b r13,@(r0,r14)

loc_8C0E5644:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0E5684,pc),r3 ; r3 set to 0x8C1294C8
	mov 0x07,r2 ; r2 set to 0x07
	mov r14,r1
	mov.b r2,@(r0,r14)
	mov r5,r2 ; r2 ??? bc r5 is ???
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0E569C,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0E56A0

loc_8C0E5664:
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E5674,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	bra loc_8C0E56B6
	mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E566e:
	#data 0x2D00
loc_8C0E5670:
	#data 0x00Dc
loc_8C0E5672:
	#data 0x00C0
loc_8C0E5674:
	#data 0x012c
loc_8C0E5676:
	#data 0x01A3
loc_8C0E5678:
	#data 0x02A4
loc_8C0E567A:
	#data 0x01D0
loc_8C0E567C:
	#data 0x0141
	#align4

loc_8C0E5680:
	#data bank04.loc_8c044F12
loc_8C0E5684:
	#data bank12.loc_8c1294C8
loc_8C0E5688:
	#data loc_8c0e557a
loc_8C0E568C:
	#data bank15.loc_8c15F054
loc_8C0E5690:
	#data bank15.loc_8c15F074
loc_8C0E5694:
	#data bank12.loc_8c129560
loc_8C0E5698:
	#data bank03.loc_8c034e8c
loc_8C0E569C:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0e56a0:
	mov.w @(loc_8C0E57FC,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e56b6
	mov 0x02,r0
	mov.b r0,@(0x04,r14)
	mov 0x01,r2
	mov.w @(loc_8c0e57fe,pc),r0
	mov.b r13,@(r0,r14)
	mov.l @r15,r3
	mov.b r2,@r3

loc_8C0E56B6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E56C0:
	mov r4,r3
	mov.l @(loc_8C0E5808,pc),r1 ; r1 set to 0x8C15F080
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E56D2:
	mov.w @(loc_8C0E5800,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0E5802,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0E5800,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0E580C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E57FE,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E5804,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E5810,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r5),r2
	mov 0x07,r3 ; r3 set to 0x07
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.b @(0x04,r4),r0
	add 0x34,r2
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E5810,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0E5814,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x01,r6 ; r6 set to 0x01
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C0E5746:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e5760
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x9E,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E5760:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E5766:
	mov r4,r3
	mov.l @(loc_8C0E581C,pc),r1 ; r1 set to 0x8C15F08c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E5778:
mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E5800,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0E5800,pc),r2 ; r2 set to 0xDc
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E5802,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0E580C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E57FE,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E5804,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E5810,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0E57FE,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r5),r2 ; r2 ??? bc r5 is ???
	mov.w r2,@(r0,r14)
	bsr loc_8C0E58B2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0E5814,pc),r2 ; r2 set to 0x8C034E8c
	mov r14,r4
	mov 0x02,r6 ; r6 set to 0x02
	mov 0x17,r5 ; r5 set to 0x17
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e57fc:
	#data 0x0141
loc_8C0E57FE:
	#data 0x012c
loc_8C0E5800:
	#data 0x00Dc
loc_8C0E5802:
	#data 0x00C0
loc_8C0E5804:
	#data 0x01A3
	#align4

loc_8C0E5808:
	#data bank15.loc_8c15F080
loc_8C0E580C:
	#data bank12.loc_8c129560
loc_8C0E5810:
	#data bank12.loc_8c1294C8
loc_8C0E5814:
	#data bank03.loc_8c034e8c
loc_8C0E5818:
	#data bank03.loc_8c034dee
loc_8C0E581C:
	#data bank15.loc_8c15F08c

;==============================================
loc_8C0E5820:
	mov.l r14,@-r15
	mov 0x24,r0
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov 0xFE,r2
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov.w @(0xF4,PC),r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov.l @(0x100,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0e5868
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0e585e
	mov r13,r5
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xD4,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E585E:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0e58b2
	mov.l @r15+,r14

loc_8C0E5868:
	mov r13,r5
	bsr loc_8c0e58b2
	mov r14,r4
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0e588a
	mov.w @(0xBA,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x0F,r0
	bf loc_8c0e588a
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0e58aa
 
loc_8C0E588A:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x9E,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x01,r3
	mov.w @(0x9E,PC),r0
	mov.l @(r0,r13),r4
	mov.w @(0x90,PC),r0
	mov.w @(r0,r4),r2
	xor r3,r2
	mov.w r2,@(r0,r4)
	mov.w @(0x94,PC),r0
	mov.b @(r0,r4),r1
	xor r3,r1
	mov.b r1,@(r0,r4)

loc_8C0E58AA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e58b2:
	mov.w @(loc_8C0E5938,pc),r0
	mov.l @(loc_8c0e5944,pc),r3
	mov.l @(r0,r5),r6
	mov.b @(0x01,r6),r0
	extu.b r0,r0
	shll r0
	mov r0,r7
	shll r7
	add r3,r7
	mov.w @r7+,r2
	mova @(loc_8C0E5948,pc),r0
	fmov.s @r0,fr2
	mova @(loc_8C0E594C,pc),r0
	lds r2,fpul
	mov.w @r7,r2
	fmov.s @r0,fr1
	float fpul,fr3
	lds r2,fpul
	mov.w @(loc_8C0E593A,pc),r0
	mov.b @(r0,r5),r2
	fmov fr3,fr4
	float fpul,fr3
	fmul fr2,fr4
	tst r2,r2
	fmov fr3,fr5
	bf.s loc_8c0e58ea
	fmul fr1,fr5
	fneg fr4

loc_8c0e58ea:
	mov 0x34,r0
	fmov.s @(r0,r6),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r6),fr3
	fadd fr5,fr3
	rts
	fmov.s fr3,@(r0,r4)

;----------------------------------------------
loc_8c0e58fc:
	mov.w @(0x34,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r5),r0
	mov.w @(0x34,PC),r4
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf.s loc_8c0e5914
	add r5,r4
	mov.b @(0x7,r4),r0
	cmp/pz r0
	bt loc_8c0e591e

loc_8c0e5914:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x14,PC),r0
	mov.b r3,@(r0,r14)

loc_8c0e591e:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x2C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e592e:
	#data 0x0130
loc_8c0e5930:
	#data 0x0141
loc_8c0e5932:
	#data 0x012C
loc_8c0e5934:
	#data 0x0159
loc_8c0e5936:
	#data 0x0158
loc_8C0E5938:
	#data 0x01C8
loc_8C0E593A:
	#data 0x01D2
loc_8C0E593c:
	#data 0x02A4
loc_8C0E593e:
	#data 0x0000
loc_8c0e5940:
	#data bank03.loc_8c034dee
loc_8c0e5944:
	#data bank15.loc_8c15ef00
loc_8C0E5948:
	#data 0x3FD55555
loc_8C0E594C:
	#data 0x40092492
loc_8c0e5950:
	#data bank15.loc_8c15F098

;==============================================
loc_8C0E5954:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E5A74,pc),r3 ; r3 set to 0x2A4
	mov r5,r13
	mov.w @(loc_8C0E5A76,pc),r1 ; r1 set to 0xDc
	mov r4,r14
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.w @(loc_8C0E5A78,pc),r0 ; r0 set to 0xC0
	mov.l r3,@r15
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0E5A80,pc),r3 ; r3 set to 0x8C129560
	mov.w @(loc_8C0E5A76,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E5A7A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E5A7C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E5A84,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r1
	mov.b @(r0,r13),r2
	mov 0x07,r3 ; r3 set to 0x07
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov r13,r2
	mov.b @(0x04,r14),r0
	add 0x34,r2
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0E5A84,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0E5A7E,pc),r10 ; r10 set to 0x2D00
	mov 0x31,r0 ; r0 set to 0x31
	mov 0x7F,r2 ; r2 set to 0x7f
	mov r4,r12 ; r12 set to 0x01
	mov 0x00,r9 ; r9 set to 0x00
	mov.b r2,@(r0,r14)
	tst r4,r4
	mov 0x02,r8 ; r8 set to 0x02
	bt.s loc_8C0E5A44
	mov 0x11,r11 ; r11 set to 0x11

loc_8C0E59EC:
	mov.l @(loc_8C0E5A88,pc),r2 ; r2 set to 0x8C044F12
	mov 0x03,r5 ; r5 set to 0x03
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	tst r0,r0
	bt.s loc_8C0E5A2c
	mov r0,r4 ; r4 set to 0x31
	mov 0x26,r0 ; r0 set to 0x26
	mov r14,r2 ; r2 ??? bc r14 is ???
	mov.w r10,@(r0,r4)  ; r4 ??
	mov 0x20,r0 ; r0 set to 0x20
	mov 0x04,r3 ; r3 set to 0x04
	mov r4,r1
	mov.b r3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.l @(loc_8C0E5A84,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	add 0x34,r1
	mov.b r12,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x31,r0 ; r0 set to 0x31
	mov r12,r2 ; r2 set to 0x01
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	sub r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C0E5A8C,pc),r3 ; r3 set to 0x8C0E557a
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	bra loc_8C0E5A3e
	mov.l r14,@(0x14,r4)

loc_8C0E5A2C:
	mov r8,r0
	nop
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E5A7A,pc),r0 ; r0 set to 0x12c
	mov.b r9,@(r0,r14)
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	mov.l @r15,r3
	bra loc_8C0E5A60
	mov.b r0,@(0x07,r3)

loc_8c0e5a3e:
	add 0x01,r12
	cmp/ge r11,r12
	bf loc_8c0e59ec

loc_8C0E5A44:
	mov r14,r4
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x06,r6 ; r6 set to 0x06
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0E5A90,pc),r2 ; r2 set to 0x8C034E8c
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0E5A60:
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
loc_8C0E5A74:
	#data 0x02A4
loc_8C0E5A76:
	#data 0x00Dc
loc_8C0E5A78:
	#data 0x00C0
loc_8C0E5A7A:
	#data 0x012c
loc_8C0E5A7C:
	#data 0x01A3
loc_8C0E5A7E:
	#data 0x2D00
	#align4

loc_8C0E5A80:
	#data bank12.loc_8c129560
loc_8C0E5A84:
	#data bank12.loc_8c1294C8
loc_8C0E5A88:
	#data bank04.loc_8c044F12
loc_8C0E5A8C:
	#data loc_8c0e557a
loc_8C0E5A90:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0E5A94:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0x120,PC),r12
	mov.l @(0x12C,PC),r3
	jsr @r3
	add r13,r12
	mov 0x38,r0
	fmov @(r0,r13),fr4
	fmov @(r0,r14),fr3
	mov.b @(0x7,r12),r0
	tst r0,r0
	bf.s loc_8c0e5ac2
	fsub fr3,fr4
	mova @(0x11C,PC),r0
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bt loc_8c0e5aca
	mov 0x01,r0
	mov.b r0,@(0x7,r12)

loc_8C0E5AC2:
	mova @(0x114,PC),r0
	fmov @r0,fr5
	fcmp/gt fr4,fr5
	bf loc_8c0e5ad6

loc_8C0E5ACA:
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fdiv fr3,fr4
	bra loc_8c0e5ade
	fmov fr4,@(r0,r14)

loc_8C0E5AD6:
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fadd fr5,fr3
	fmov fr3,@(r0,r13)

loc_8C0E5ADE:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
 
;----------------------------------------------
loc_8C0E5AE8:
	mov.w @(0xDA,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r5),r0
	mov.w @(0xD0,PC),r4
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf.s loc_8c0e5b00
	add r5,r4
	mov.b @(0x7,r4),r0
	cmp/pz r0
	bt loc_8c0e5b0a

loc_8C0E5B00:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xBE,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E5B0A:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0xD0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E5B1A:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E5BCA,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0E5BCC,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0E5BE4,pc),r3 ; r3 set to 0x8C129560
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0E5BCA,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E5BC8,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E5BCE,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E5BE8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x07,r3 ; r3 set to 0x07
	mov 0x07,r6 ; r6 set to 0x07
	mov.b r2,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s fr3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	mov.l @(loc_8C0E5BEC,pc),r0 ; r0 set to 0x8C15EFF0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	extu.b r2,r2
	mov.l r2,@r15
	mov r2,r7
	add 0x04,r15
	mov.l @(loc_8C0E5BF0,pc),r3 ; r3 set to 0x8C034F54
	jmp @r3
	lds.l @r15+,pr

loc_8C0E5B9A:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.l @(0x14,r4),r5
	mov.l @(0x08,r4),r6
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r6),fr2
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0E5BB2:
	mov r4,r3
	mov.l @(loc_8C0E5BF4,pc),r1 ; r1 set to 0x8C15F0B0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E5BC4:
	#data 0x02A4
loc_8C0E5BC6:
	#data 0x0159
loc_8C0E5BC8:
	#data 0x012c
loc_8C0E5BCA:
	#data 0x00Dc
loc_8C0E5BCC:
	#data 0x00C0
loc_8C0E5BCE:
	#data 0x01A3
	#align4

loc_8C0E5BD0:
	#data bank03.loc_8c034dee
loc_8C0E5BD4:
	#data 0x439A4924
loc_8C0E5BD8:
	#data 0x43BC9249
loc_8C0E5BDc:
	#data 0x41800000
loc_8C0E5BE0:
	#data bank15.loc_8c15F0A4
loc_8C0E5BE4:
	#data bank12.loc_8c129560
loc_8C0E5BE8:
	#data bank12.loc_8c1294C8
loc_8C0E5BEC:
	#data bank15.loc_8c15EFF0
loc_8C0E5BF0:
	#data bank03.loc_8c034F54
loc_8C0E5BF4:
	#data bank15.loc_8c15F0B0

;==============================================
loc_8C0E5BF8:
	mov.w @(loc_8C0E5D30,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0E5D32,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0E5D30,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0E5D3C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E5D34,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E5D36,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E5D40,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r5),r2
	mov 0x07,r3 ; r3 set to 0x07
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.b @(0x04,r4),r0
	add 0x34,r2
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E5D40,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0E5D44,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x08,r0 ; r0 set to 0x08
	mov 0x17,r5 ; r5 set to 0x17
	mov.w r0,@(0x1C,r4)
	mov r0,r6 ; r6 set to 0x08
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0E5C70:
	mov.l r14,@-r15
	mov r5,r14
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0e5c90
	mov.w @(0xBA,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0e5c90
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e5c9c

loc_8C0E5C90:
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0x9A,PC),r0
	bra loc_8c0e5ca4
	mov.b r3,@(r0,r4)

loc_8C0E5C9C:
	mov.l @(0xA8,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0E5CA4:
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E5CA8:
	mov r4,r3
	mov.l @(loc_8C0E5D4C,pc),r1 ; r1 set to 0x8C15F0Bc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0E5CBA:
	mov.w @(loc_8C0E5D30,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0E5D32,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0E5D30,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0E5D3C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E5D34,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E5D36,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E5D40,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r5),r2
	mov 0x0C,r3 ; r3 set to 0x0c
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov r3,r0 ; r0 set to 0x0c
	nop
	mov.l @(loc_8C0E5D40,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	add 0x34,r2
	mov.l @(loc_8C0E5D44,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x09,r6 ; r6 set to 0x09
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E5D30:
	#data 0x00Dc
loc_8C0E5D32:
	#data 0x00C0
loc_8C0E5D34:
	#data 0x012c
loc_8C0E5D36:
	#data 0x01A3
loc_8C0E5D38:
	#data 0x01D0
	#align4

loc_8C0E5D3C:
	#data bank12.loc_8c129560
loc_8C0E5D40:
	#data bank12.loc_8c1294C8
loc_8C0E5D44:
	#data bank03.loc_8c034e8c
loc_8C0E5D48:
	#data bank03.loc_8c034dee
loc_8C0E5D4C:
	#data bank15.loc_8c15F0Bc

;==============================================
loc_8C0E5D50:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf.s loc_8c0e5d76
	mov r4,r14
	mov.w @(0x112,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0e5d76
	mov.l @(0x118,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e5d82

loc_8C0E5D76:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xF8,PC),r0
	bra loc_8c0e5db0
	mov.b r3,@(r0,r14)

loc_8C0E5D82:
	mov r13,r2
	mov.l @(0x100,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xE6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e5db0
	mova @(0xF0,PC),r0
	fmov @r0,fr4
	mov.w @(0xDC,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e5da8
	mova @(0xE8,PC),r0
	fmov @r0,fr4

loc_8C0E5DA8:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)

loc_8C0E5DB0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E5DB8:
	mov r4,r3
	mov.l @(loc_8C0E5E94,pc),r1 ; r1 set to 0x8C15F0C8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E5DCA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E5E7E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0E5E7E,pc),r2 ; r2 set to 0xDc
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E5E80,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0E5E98,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E5E78,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E5E82,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E5E88,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0E5E9C,pc),r0 ; r0 set to 0x8C15F004
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0E5EA0,pc),r0  ; r0 set to 0x8C0E5EA0
	lds r3,fpul
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s @r0,fr0 ; r0 ??
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(loc_8C0E5EA8,pc),r3 ; r3 set to 0x8C034E8c
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r6
	mov.l @(loc_8C0E5EA4,pc),r0 ; r0 set to 0x8C15F024
	extu.b r6,r6
	mov.b @(r0,r6),r6
	add 0x0A,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0E5E7A,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0E5EAC,pc),r0 ; r0 set to 0x8C15F034
	shar r2
	shll2 r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	mov 0x24,r0 ; r0 set to 0x24
	ftrc fr3,fpul
	sts fpul,r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E5E76:
	#data 0x01D0
loc_8C0E5E78:
	#data 0x012c
loc_8C0E5E7A:
	#data 0x0141
loc_8C0E5E7c:
	#data 0x0130
loc_8C0E5E7E:
	#data 0x00Dc
loc_8C0E5E80:
	#data 0x00C0
loc_8C0E5E82:
	#data 0x01A3
	#align4

loc_8C0E5E84:
	#data bank03.loc_8c034dee
loc_8C0E5E88:
	#data bank12.loc_8c1294C8
loc_8C0E5E8c:
	#data 0xC1555555
loc_8C0E5E90:
	#data 0x41555555
loc_8C0E5E94:
	#data bank15.loc_8c15F0C8
loc_8C0E5E98:
	#data bank12.loc_8c129560
loc_8C0E5E9C:
	#data bank15.loc_8c15F004
loc_8C0E5EA0:
	#data 0x40092492
loc_8C0E5EA4:
	#data bank15.loc_8c15F024
loc_8C0E5EA8:
#data bank03.loc_8c034e8c
loc_8C0E5EAC:
	#data bank15.loc_8c15F034

;==============================================
loc_8C0E5EB0:
	mov.l r14,@-r15
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf.s loc_8c0e5ec4
	mov r4,r14
	mov.w @(0xFC,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0e5ed2

loc_8C0E5EC4:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xEE,PC),r0
	mov.b r3,@(r0,r14)
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E5ED2:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0xF0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E5EE6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E5FBE,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov.l @(loc_8C0E5FCC,pc),r2 ; r2 set to 0x8C034DEe
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0E5FC0,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0E5FD0,pc),r0 ; r0 set to 0x8C15F034
	shar r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	mov 0x24,r0 ; r0 set to 0x24
	ftrc fr3,fpul
	sts fpul,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r3
	mov.b @(0x08,r3),r0
	tst r0,r0
	bt loc_8C0E5F22
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x05,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	bra loc_8C0E5F2e
	mov.w r0,@(0x1C,r14)

loc_8C0E5F22:
	mov.w @(loc_8C0E5FC2,pc),r0 ; r0 set to 0x14b
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0E5FBC,pc),r0 ; r0 set to 0x12c
	tst r3,r3
	movt r2
	mov.b r2,@(r0,r14)

loc_8C0E5F2E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E5F36:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r14),r2
	mov.l @(0x88,PC),r0
	shar r2
	shll2 r2
	fmov @(r0,r2),fr3
	mov 0x24,r0
	ftrc fr3,fpul
	sts fpul,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e5f66
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0E5F66:
	mov.w @(0x58,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(0x4E,PC),r0
	tst r2,r2
	movt r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E5F78:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0E5FCC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C0E5FC4,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0E5F90
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0E5F9a
	mov.b r0,@(0x04,r14)

loc_8C0E5F90:
	mov.l @(loc_8C0E5FD4,pc),r3 ; r3 set to 0x8C26823c
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8C0E5FA2

loc_8C0E5F9A:
	mov.w @(loc_8C0E5FBC,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	bra loc_8C0E5FAe
	mov.b r3,@(r0,r14)

loc_8C0E5FA2:
	mov.w @(loc_8C0E5FC2,pc),r0 ; r0 set to 0x14b
	mov.b @(r0,r14),r2
	mov.w @(loc_8C0E5FBC,pc),r0 ; r0 set to 0x12c
	tst r2,r2
	movt r1
	mov.b r1,@(r0,r14)

loc_8C0E5FAE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E5FB4:
	mov.l @(loc_8C0E5FD8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E5FBa:
	#data 0x01D0
loc_8C0E5FBC:
	#data 0x012c
loc_8C0E5FBE:
	#data 0x02A4
loc_8C0E5FC0:
	#data 0x0141
loc_8C0E5FC2:
	#data 0x014b
loc_8C0E5FC4:
	#data 0x0140
	#align4

loc_8C0E5FC8:
	#data bank15.loc_8c15F0D4
loc_8C0E5FCC:
	#data bank03.loc_8c034dee
loc_8C0E5FD0:
	#data bank15.loc_8c15F034
loc_8C0E5FD4:
	#data 0x8C26823c
loc_8C0E5FD8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E5FDC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0x13C,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e6024
	mov r0,r4
	mov.w @(0x11A,PC),r2
	mov 0x26,r0
	mov.l @(0x128,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x112,PC),r5
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	add r4,r5
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0xFC,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8C0E6024:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E6030:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0E6130,pc),r0 ; r0 set to 0x8C15F0E0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0E6046:
mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E6120,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E6120,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E6134,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E6122,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E6124,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E6126,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E6138,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0x12,r5 ; r5 set to 0x12
	mov.l @(loc_8C0E613C,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x04,r6 ; r6 set to 0x04
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E6124,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0E62B4
	mov.l @r15+,r14

loc_8C0E60EA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0E6140,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0E6114
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E613C,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x05,r6 ; r6 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x12,r5 ; r5 set to 0x12
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0E6114:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e611a:
	#data 0x2e00
loc_8c0e611c:
	#data 0x00cc
loc_8c0e611e:
	#data 0x0158
loc_8c0e6120:
	#data 0x00dc
loc_8c0e6122:
	#data 0x00c0
loc_8c0e6124:
	#data 0x012c
loc_8c0e6126:
	#data 0x01a3
	#align4

loc_8C0E6128:
	#data bank04.loc_8c044F12
loc_8C0E612C:
	#data loc_8c0e6030
loc_8C0E6130:
	#data bank15.loc_8c15F0E0
loc_8C0E6134:
	#data bank12.loc_8c129560
loc_8C0E6138:
	#data bank12.loc_8c1294C8
loc_8C0E613C:
	#data bank03.loc_8c034e8c
loc_8C0E6140:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0E6144:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0E62A0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0E6174
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E62A8,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x06,r6 ; r6 set to 0x06
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x10,r0 ; r0 set to 0x10
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C0E62A4,pc),r0  ; r0 set to 0x8C0E62A4
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov 0x12,r5 ; r5 set to 0x12
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0E6174:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E617A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x60,r1 ; r1 set to 0x60
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0E62A0,pc),r3 ; r3 set to 0x8C034DEe
	mov 0x38,r0 ; r0 set to 0x38
	mov.l r5,@r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8C0E61D6
	mov.b @(0x05,r14),r0
	mov 0x12,r5 ; r5 set to 0x12
	mov r14,r4
	mov 0x07,r6 ; r6 set to 0x07
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E629A,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x10,r0 ; r0 set to 0x10
	mov.w r0,@(0x1C,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0E62A8,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8C0E61D6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E61DE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x60,r1
	mov r4,r14
	add r14,r1
	mov.w @(0xAE,PC),r2
	mov 0x38,r0
	mov r5,r3
	add r3,r2
	mov.l @(0xAC,PC),r3
	mov.l r5,@r15
	mov.l r2,@(0x4,r15)
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
	bf loc_8c0e6252
	mov.b @(0x5,r14),r0
	mov 0x12,r5
	mov 0x08,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x6E,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x74,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x4,r15),r2
	mov 0x01,r0
	mov.b r0,@(0x1,r2)

loc_8C0E6252:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E625A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	mov.l @(0x3C,PC),r3
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e6294
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
 
loc_8C0E6294:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E629A:
	#data 0x041c
loc_8C0E629C:
	#data 0x02A4
	#align4

loc_8C0E62A0:
	#data bank03.loc_8c034dee
loc_8C0E62A4:
	#data 0x40092492
loc_8C0E62A8:
	#data bank03.loc_8c034e8c
loc_8C0E62AC:
	#data 0x40892492
loc_8C0E62b0:
	#data 0x3F092492

;==============================================
loc_8C0E62B4:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0E63F0,pc),r1 ; r1 set to 0x8C15F100
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0E62CE:
	mov r4,r3
	mov.l @(loc_8C0E63F4,pc),r1 ; r1 set to 0x8C15F114
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E62E0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E63E2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E63E2,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E63F8,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E63E4,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E63E6,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E63E8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E63FC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E63E6,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0E6400,pc),r0  ; r0 set to 0x8C0E6400
	fmov.s @r0,fr4 ; r4 ??
	mov.w @(loc_8C0E63EA,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0E6380
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0E6386
	fadd fr4,fr3

loc_8c0e6380:
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_8c0e6386:
	mov.l @(loc_8c0e6404,pc),r3
	mov 0x12,r5
	fmov.s fr3,@(r0,r14)
	mov 0x0A,r6
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0e63a0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E63EC,pc),r3
	mov 0x24,r0
	mov r4,r14
	add r5,r3
	mov.l r3,@r15
	mov.b @(r0,r5),r2
	mov.l @(loc_8c0e6408,pc),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov.b @(0x01,r2),r0
	tst r0,r0
	bt loc_8c0e63c8
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c0e63c8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0E63D0:
	mov r4,r3
	mov.l @(loc_8C0E640C,pc),r1 ; r1 set to 0x8C15F124
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E63E2:
	#data 0x00Dc
loc_8C0E63E4:
	#data 0x00C0
loc_8C0E63E6:
	#data 0x012c
loc_8C0E63E8:
	#data 0x01A3
loc_8C0E63EA:
	#data 0x0130
loc_8c0e63ec:
	#data 0x02A4
	#align4

loc_8C0E63F0:
	#data bank15.loc_8c15F100
loc_8C0E63F4:
	#data bank15.loc_8c15F114
loc_8C0E63F8:
	#data bank12.loc_8c129560
loc_8C0E63FC:
	#data bank12.loc_8c1294C8
loc_8C0E6400:
	#data 0x42055555
loc_8C0E6404:
	#data bank03.loc_8c034e8c
loc_8C0E6408:
	#data bank03.loc_8c034dee
loc_8C0E640C:
	#data bank15.loc_8c15F124

;==============================================
loc_8C0E6410:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E657E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E657E,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E6590,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E6580,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E6582,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E6584,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E6594,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r14)
	mov 0x07,r6 ; r6 set to 0x07
	mov.w @(loc_8C0E6582,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.l @(loc_8C0E6598,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E649E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E6586,pc),r3 ; r3 set to 0x2A4, r3 set to 0x2A4
	mov r5,r13
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov r4,r14
	add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov.w @(loc_8C0E6588,pc),r4 ; r4 set to 0xCC, r4 set to 0xCc
	mov.l r3,@r15
	mov.b @(r0,r13),r3
	add r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0E658A,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.w @r4,r3
	mov.w @(r0,r13),r2
	cmp/eq r3,r2
	bt loc_8C0E64D8
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov r13,r5
	add 0x01,r0 ; r0 set to 0x159, r0 set to 0x159
	mov.b r0,@(0x04,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0E6BEa
	mov.l @r15+,r14

loc_8C0E64D8:
	mov.l @(loc_8C0E659C,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0E65A0,pc),r5 ; r5 set to 0x8C15F134
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0E65A4,pc),r0  ; r0 set to 0x8C0E65A4
	fmov.s @r0,fr4
	mov.w @(loc_8C0E658C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8C0E651e
	mov r5,r4 ; r4 set to 0x8C15F134
	mov 0x21,r3 ; r3 set to 0x21
	fmov fr4,fr0 ; r0 ??
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4 ; r4 ??? bc r3 is ???
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8C0E653a
	fmac fr0,fr3,fr2

loc_8c0e651e:
	mov 0x21,r2
	add r14,r2
	mov.b @r2,r2
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	extu.b r2,r2
	shll r2
	shll r2
	add r2,r4
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c0e653a:
	mov 0x21,r3
	fmov.s fr2,@(r0,r14)
	add r14,r3
	mov r14,r2
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r5
	mov.w @(0x02,r5),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(loc_8C0E65A8,pc),r0
	fmov.s @r0,fr0
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l @r15,r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c0e6574
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c0e6574:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e657e:
	#data 0x00DC
loc_8c0e6580:
	#data 0x00C0
loc_8c0e6582:
	#data 0x012C
loc_8c0e6584:
	#data 0x01A3
loc_8c0e6586:
	#data 0x02A4
loc_8c0e6588:
	#data 0x00CC
loc_8c0e658a:
	#data 0x0158
loc_8c0e658c:
	#data 0x0130
	#align4

loc_8c0e6590:
	#data bank12.loc_8c129560
loc_8c0e6594:
	#data bank12.loc_8c1294c8
loc_8c0e6598:
	#data bank03.loc_8c034e8c
loc_8c0e659c:
	#data bank03.loc_8c034dee
loc_8c0e65a0:
	#data bank15.loc_8c15f134
loc_8c0e65a4:
	#data 0x3FD55555
loc_8C0E65A8:
	#data 0x40092492

;==============================================
loc_8C0E65AC:
	mov r4,r3
	mov.l @(loc_8C0E6700,pc),r1 ; r1 set to 0x8C15F140
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E65BE:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	add 0x5C,r4
	mov.w @(loc_8C0E66EE,pc),r1 ; r1 set to 0xDc
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E66EE,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E6704,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E66F0,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E66F2,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E66F4,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E6708,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x04,r3 ; r3 set to 0x04
	mov 0x0F,r6 ; r6 set to 0x0f
	mov.b r2,@(r0,r14)
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0E66F2,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x17,r5 ; r5 set to 0x17
	mov.w @(loc_8C0E66F6,pc),r0 ; r0 set to 0x158
	mov.l @(loc_8C0E670C,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r2,@r4
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	mov.b r0,@(0x01,r4)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E6646:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E66F8,pc),r3 ; r3 set to 0xCC, r3 set to 0xCc
	mov r4,r14
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov r5,r13
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov r4,r12
	mov.l r3,@r15
	add 0x5C,r12
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???
	mov.l @(loc_8C0E6710,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E66FA,pc),r0 ; r0 set to 0x201, r0 set to 0x201
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8C0E669a
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov r13,r5
	add 0x01,r0 ; r0 set to 0x202, r0 set to 0x202
	mov.b r0,@(0x04,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0E6BEa
	mov.l @r15+,r14

loc_8C0E669A:
	mov.w @(loc_8C0E66F6,pc),r0 ; r0 set to 0x158
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x11,r0
	bf.s loc_8C0E66Ae
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_8C0E66F2,pc),r0 ; r0 set to 0x12c
	bra loc_8C0E66B2
	mov.b r5,@(r0,r14)

loc_8C0E66AE:
	mov.w @(loc_8C0E66F2,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)

loc_8C0E66B2:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E66Dc
	mov.w @(loc_8C0E66FC,pc),r0 ; r0 set to 0x159, r0 set to 0x159
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bt loc_8C0E6718
	mov.l @(loc_8C0E6714,pc),r0 ; r0 set to 0x8C15F150, r0 set to 0x8C15F150
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l @(loc_8C0E670C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b r4,@r12
	mov.b @r12,r6
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x8C15F151, r0 set to 0x8C15F151
	bra loc_8C0E6750
	mov.b r0,@(0x05,r14)

loc_8C0E66DC:
	mov.w @(loc_8C0E66FC,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8C0E6750
	mov r5,r0
	nop
	bra loc_8C0E6750
	mov.b r0,@(0x05,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E66EE:
	#data 0x00Dc
loc_8C0E66F0:
	#data 0x00C0
loc_8C0E66F2:
	#data 0x012c
loc_8C0E66F4:
	#data 0x01A3
loc_8C0E66F6:
	#data 0x0158
loc_8C0E66F8:
	#data 0x00Cc
loc_8C0E66FA:
	#data 0x0201
loc_8C0E66FC:
	#data 0x0159
	#align4

loc_8C0E6700:
	#data bank15.loc_8c15F140
loc_8C0E6704:
	#data bank12.loc_8c129560
loc_8C0E6708:
	#data bank12.loc_8c1294C8
loc_8C0E670C:
	#data bank03.loc_8c034e8c
loc_8C0E6710:
	#data bank03.loc_8c034dee
loc_8C0E6714:
	#data bank15.loc_8c15F150

;==============================================
loc_8c0e6718:
	mov.w @(loc_8c0e6856,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0e6750
	mov.b @r12,r2
	mov.b @(r0,r13),r3
	extu.b r2,r2
	cmp/eq r2,r3
	bt loc_8c0e673e
	mov.b @(r0,r13),r2
	mov 0x17,r5
	mov.l @(loc_8c0e6868,pc),r0
	mov.l @(loc_8c0e686c,pc),r3
	mov.b r2,@r12
	mov.b @r12,r6
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4

loc_8c0e673e:
	mov.l @r15,r3
	mov.w @(loc_8C0E6858,pc),r0
	mov.w @r3,r1
	mov.w @(r0,r13),r2
	cmp/eq r1,r2
	bt loc_8c0e6750
	mov.w @(loc_8C0E685A,pc),r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)

loc_8C0E6750:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E675C:
	mov r4,r3
	mov.l @(loc_8C0E6870,pc),r1 ; r1 set to 0x8C15F158
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E676E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E685C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E685C,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E6874,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E685E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E6860,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E6862,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E6878,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E6860,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0E6864,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0E6856,pc),r0 ; r0 set to 0x141
	mov.l @(loc_8C0E686C,pc),r3 ; r3 set to 0x8C034E8c
	mov.b @(r0,r13),r6
	mov.l @(loc_8C0E6868,pc),r0 ; r0 set to 0x8C15F150
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E67F6:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0E687C,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E6864,pc),r0 ; r0 set to 0x159, r0 set to 0x159
	mov.b @(r0,r13),r3
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bt loc_8C0E683c
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0E6BEa
	mov.l @r15+,r14

loc_8C0E683C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E6844:
	mov r4,r3
	mov.l @(loc_8C0E6880,pc),r1 ; r1 set to 0x8C15F168
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E6856:
	#data 0x0141
loc_8c0e6858:
	#data 0x0158
loc_8c0e685a:
	#data 0x0130
loc_8C0E685C:
	#data 0x00Dc
loc_8C0E685E:
	#data 0x00C0
loc_8C0E6860:
	#data 0x012c
loc_8C0E6862:
	#data 0x01A3
loc_8C0E6864:
	#data 0x0159
	#align4

loc_8C0E6868:
	#data bank15.loc_8c15F150
loc_8C0E686C:
	#data bank03.loc_8c034e8c
loc_8C0E6870:
	#data bank15.loc_8c15F158
loc_8C0E6874:
	#data bank12.loc_8c129560
loc_8C0E6878:
	#data bank12.loc_8c1294C8
loc_8C0E687C:
	#data bank03.loc_8c034dee
loc_8C0E6880:
	#data bank15.loc_8c15F168

;==============================================
loc_8C0E6884:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E69B8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E69B8,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E69C4,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E69BA,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E69BC,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E69BE,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E69C8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r2,@(r0,r14)
	mov 0x44,r2 ; r2 set to 0x44
	mov.w @(loc_8C0E69BC,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov r14,r3 ; r3 ??? bc r14 is ???
	mov.w @(loc_8C0E69C0,pc),r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	add r0,r3
	mov.l @(loc_8C0E69CC,pc),r0 ; r0 set to 0x8C15F178
	mov.l r3,@-r15
	mov 0x21,r3 ; r3 set to 0x21
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r2 ; r2 ??? bc r3 is ???
	mova @(loc_8C0E69D0,pc),r0  ; r0 set to 0x8C0E69D0
	fmov.s @r0,fr0 ; r0 ??
	mov 0x21,r0 ; r0 set to 0x21
	lds r2,fpul
	mov.l @r15+,r2
	float fpul,fr3
	fmov.s @r2,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8C0E693c
	mov 0x17,r5 ; r5 set to 0x17
	bra loc_8C0E693e
	mov 0x24,r6

loc_8C0E693C:
	mov 0x25,r6 ; r6 set to 0x25

loc_8C0E693E:
	mov.l @(loc_8C0E69D4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E694E:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mov.l @(loc_8C0E69D8,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0E69DC,pc),r2 ; r2 set to 0x8C0334A8, r2 set to 0x8C0334A8, r2 set to 0x8C0334A8
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8C0E697c
	mov.w @(loc_8C0E69BC,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00, r2 set to 0x00
	bra loc_8C0E6982
	mov.b r2,@(r0,r14)

loc_8C0E697C:
	mov.w @(loc_8C0E69BC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)

loc_8C0E6982:
	mov.w @(loc_8C0E69C2,pc),r0 ; r0 set to 0x159, r0 set to 0x159
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0E699e
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0E6BEa
	mov.l @r15+,r14

loc_8C0E699E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E69A6:
	mov r4,r3
	mov.l @(loc_8C0E69E0,pc),r1 ; r1 set to 0x8C15F18c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E69B8:
	#data 0x00Dc
loc_8C0E69BA:
	#data 0x00C0
loc_8C0E69BC:
	#data 0x012c
loc_8C0E69BE:
	#data 0x01A3
loc_8C0E69C0:
	#data 0x013d
loc_8C0E69C2:
	#data 0x0159
	#align4

loc_8C0E69C4:
	#data bank12.loc_8c129560
loc_8C0E69C8:
	#data bank12.loc_8c1294C8
loc_8C0E69CC:
	#data bank15.loc_8c15F178
loc_8C0E69D0:
	#data 0x40092492
loc_8C0E69D4:
	#data bank03.loc_8c034e8c
loc_8C0E69D8:
	#data bank03.loc_8c034dee
loc_8C0E69DC:
	#data bank03.loc_8c0334A8
loc_8C0E69E0:
	#data bank15.loc_8c15F18c

;==============================================
loc_8C0E69E4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E6AF0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E6AF0,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E6B00,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E6AF2,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E6AF4,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E6AF6,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E6B04,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E6AF4,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0E6A5e
	mova @(loc_8C0E6B08,pc),r0  ; r0 set to 0x8C0E6B08
	bra loc_8C0E6A62
	fmov.s @r0,fr3

loc_8c0e6a5e:
	mova @(loc_8C0E6B0C,pc),r0
	fmov.s @r0,fr3

loc_8c0e6a62:
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E6AF8,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0e6a78
	mov 0x31,r6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c0e6a78:
	mov.l @(loc_8c0e6b10,pc),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0e6a8a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E6AFA,pc),r3
	mov r4,r14
	mov 0x24,r0
	mov r5,r13
	add r14,r3
	mov.l r3,@r15
	mov.b @(r0,r13),r2
	mov.l @(loc_8c0e6b14,pc),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	mov 0x5C,r1
	add r14,r1
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.l @r15,r2
	mov.w @(loc_8C0E6AFC,pc),r0
	mov.w @r2,r1
	mov.w @(r0,r13),r3
	cmp/eq r1,r3
	bt loc_8c0e6ad4
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c0e6ad4:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0E6ADE:
	mov r4,r3
	mov.l @(loc_8C0E6B18,pc),r1 ; r1 set to 0x8C15F19c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E6AF0:
	#data 0x00Dc
loc_8C0E6AF2:
	#data 0x00C0
loc_8C0E6AF4:
	#data 0x012c
loc_8C0E6AF6:
	#data 0x01A3
loc_8c0e6af8:
	#data 0x0130
loc_8c0e6afa:
	#data 0x00CC
loc_8c0e6afc:
	#data 0x0158
	#align4

loc_8C0E6B00:
	#data bank12.loc_8c129560
loc_8C0E6B04:
	#data bank12.loc_8c1294C8
loc_8C0E6B08:
	#data 0xC29CAAAa
loc_8c0e6b0c:
	#data 0x4276AAAa
loc_8C0E6B10:
	#data bank03.loc_8c034e8c
loc_8C0E6B14:
	#data bank03.loc_8c034dee
loc_8C0E6B18:
	#data bank15.loc_8c15F19c

;==============================================
loc_8C0E6B1C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xDA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xD2,PC),r2
	add 0x01,r0
	mov.l @(0xDC,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xCC,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xC8,PC),r0
	mov 0x01,r4
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
	mov.w @(0xAC,PC),r0
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
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov 0x12,r5
	mov.b r2,@(r0,r14)
	mov 0x0A,r6
	mov.w @(0x82,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x7E,PC),r0
	mov.l @(0x8C,PC),r3
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E6BA6:
	mov.l r14,@-r15
	mov 0x24,r0
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x64,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x46,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0e6bd0
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0E6BD0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E6BD8:
	mov r4,r3
	mov.l @(loc_8C0E6C20,pc),r1 ; r1 set to 0x8C15F1Ac
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E6BEA:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E6C06,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
	loc_8C0E6BF8:
	mov.l @(loc_8C0E6C24,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0E6C06,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e6c02:
	#data 0x00Dc
loc_8c0e6c04:
	#data 0x00C0
loc_8c0e6c06:
	#data 0x012c
loc_8c0e6c08:
	#data 0x01A3
loc_8c0e6c0a:
	#data 0x041C
loc_8c0e6c0c:
	#data 0x0201
	#align4

loc_8C0E6C10:
	#data bank12.loc_8c129560
loc_8C0E6C14:
	#data bank12.loc_8c1294C8
loc_8C0E6C18:
	#data bank03.loc_8c034e8c
loc_8C0E6C1C:
	#data bank03.loc_8c034dee
loc_8C0E6C20:
	#data bank15.loc_8c15F1Ac
loc_8C0E6C24:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e6c28:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0x138,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e6c66
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x10E,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x102,PC),r0
	mov.l @r15,r2
	mov.w @(r0,r2),r3
	mov.w @(0xFE,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)

loc_8c0e6c66:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E6C6E:
	mov r4,r3
	mov.l @(loc_8C0E6D74,pc),r1 ; r1 set to 0x8C15F1Bc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E6C80:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E6D66,pc),r1 ; r1 set to 0xDc
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_8C0E6D66,pc),r2 ; r2 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0E6D78,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E6D64,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r5
	add r5,r2 ; r2 ??? bc r5 is ???
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E6D64,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E6D68,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E6D7C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0E6D80,pc),r0 ; r0 set to 0x8C15F1Cc
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3 ; r3 ??? bc r2 is ???
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E6D20
	mov.l @r15+,r14

loc_8C0E6CFE:
	sts.l pr,@-r15
	mov r5,r2
	mov.l @(loc_8C0E6D7C,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0E6D84,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x01,r6 ; r6 set to 0x01
	jmp @r2
	lds.l @r15+,pr

loc_8C0E6D18:
	mov.l @(loc_8C0E6D84,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x06,r6 ; r6 set to 0x06
	jmp @r3
	mov 0x15,r5

loc_8C0E6D20:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0E6D88,pc),r0 ; r0 set to 0x8C15F1D4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0E6D3E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e6d58
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E6D58:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e6d5e:
	#data 0x2f00
loc_8c0e6d60:
	#data 0x0158
loc_8c0e6d62:
	#data 0x00cc
loc_8c0e6d64:
	#data 0x012c
loc_8c0e6d66:
	#data 0x00dc
loc_8c0e6d68:
	#data 0x01a3
	#align4

loc_8C0E6D6C:
	#data bank04.loc_8c044F12
loc_8C0E6D70:
	#data loc_8c0e6C6e
loc_8C0E6D74:
	#data bank15.loc_8c15F1Bc
loc_8C0E6D78:
	#data bank12.loc_8c129560
loc_8C0E6D7C:
	#data bank12.loc_8c1294C8
loc_8C0E6D80:
	#data bank15.loc_8c15F1Cc
loc_8C0E6D84:
	#data bank03.loc_8c034e8c
loc_8C0E6D88:
	#data bank15.loc_8c15F1D4
loc_8C0E6D8C:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0E6D90:
	sts.l pr,@-r15
	mov r5,r2
	mov.l @(0x40,PC),r3
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x2E,PC),r0
	mov.w @(r0,r5),r2
	mov.w @(0x2C,PC),r0
	extu.w r2,r2
	mov.l @(r0,r4),r3
	cmp/eq r2,r3
	bt loc_8c0e6db8
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0x1E,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0E6DB8:
	mov.l @(0x20,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0E6DBE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E6DD6,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E6DCC:
	mov.l @(loc_8C0E6DE0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e6dd2:
	#data 0x0158
loc_8c0e6dd4:
	#data 0x00Cc
loc_8C0E6DD6:
	#data 0x012c
	#align4

loc_8C0E6DD8:
	#data bank12.loc_8c1294C8
loc_8C0E6DDC:
	#data bank03.loc_8c034dee
loc_8C0E6DE0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e6de4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x140,PC),r3
	mov 0x04,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e6e08
	mov r0,r4
	mov.l @(0x134,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x11A,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0e6e08:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E6E10:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E6F34,pc),r1 ; r1 set to 0x8C15F1E4
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E6E24:
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
	mov.l @(0xFC,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xE2,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xDE,PC),r0
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
	mov.w @(0xC2,PC),r0
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
	mov 0x00,r3
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r3,@(r0,r14)
	mov.w @(0xA0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0e6e90
	mov 0x0E,r4
	mov 0xF2,r4

loc_8C0E6E90:
	exts.w r4,r4
	mov.l @(0xB4,PC),r3
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mova @(0xA4,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	mov 0x1B,r5
	mov 0x04,r6
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x90,PC),r2
	mov 0x4B,r5
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E6ECC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x54,PC),r0
	mov r5,r3
	mov.l r5,@r15
	mov.b @(r0,r3),r2
	tst r2,r2
	bf.s loc_8c0e6eec
	mov r4,r14
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e6ef8

loc_8C0E6EEC:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0e6f12
	mov.l @r15+,r14

loc_8C0E6EF8:
	mov.l @(0x58,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E6F0E:
	rts
	nop

;----------------------------------------------
loc_8C0E6F12:
	mov.w @(loc_8C0E6F24,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E6F58,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e6f1e:
	#data 0x2f01
loc_8c0e6f20:
	#data 0x00dc
loc_8c0e6f22:
	#data 0x00c0
loc_8c0e6f24:
	#data 0x012c
loc_8c0e6f26:
	#data 0x01a3
loc_8c0e6f28:
	#data 0x0130
loc_8c0e6f2a:
	#data 0x019f
	#align4

loc_8C0E6F2C:
	#data bank04.loc_8c044F12
loc_8C0E6F30:
	#data loc_8c0e6E10
loc_8C0E6F34:
	#data bank15.loc_8c15F1E4
loc_8C0E6F38:
	#data bank12.loc_8c129560
loc_8C0E6F3C:
	#data bank12.loc_8c1294C8
loc_8C0E6F40:
	#data 0x3FD55555
loc_8C0E6F44:
	#data 0x43A50000
loc_8C0E6F48:
	#data bank03.loc_8c034C38
loc_8C0E6F4C:
	#data bank04.loc_8c04223a
loc_8C0E6F50:
	#data bank03.loc_8c034D8c
loc_8C0E6F54:
	#data 0x3F892492
loc_8C0E6F58:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e6f5c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x10C,PC),r3
	mov 0x04,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e6f86
	mov r0,r4
	mov.l @(0x100,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xE8,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)

loc_8c0e6f86:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8c0e6f8e:
	mov.l r14,@-r15
	mov 0x02,r6
	sts.l pr,@-r15
	mov.l @(loc_8c0e7070,pc),r3
	mov r4,r14
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bt.s loc_8c0e6fc0
	mov r0,r4
	mov.w @(loc_8C0E7064,pc),r2
	mov 0x26,r0
	mov.l @(loc_8c0e7074,pc),r3
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.l r14,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0E7066,pc),r0
	mov.l @(r0,r14),r3
	mov.l r3,@(r0,r4)

loc_8c0e6fc0:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0E6FCA:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E7078,pc),r1 ; r1 set to 0x8C15F1F4
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0E6FDE:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E7068,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E7068,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E707C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E706A,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E706C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E706E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E7080,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8C0E7084
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0E706C,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0xD0
	mov.l r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0xD4
	bra loc_8C0E710a
	mov.l r4,@(r0,r14)

;==============================================
loc_8c0e7064:
	#data 0x2F02
loc_8c0e7066:
	#data 0x00D0
loc_8C0E7068:
	#data 0x00Dc
loc_8C0E706A:
	#data 0x00C0
loc_8C0E706C:
	#data 0x012c
loc_8C0E706E:
	#data 0x01A3
	#align4

loc_8C0E7070:
	#data bank04.loc_8c044F12
loc_8C0E7074:
	#data loc_8c0e6FCa
loc_8C0E7078:
	#data bank15.loc_8c15F1F4
loc_8C0E707C:
	#data bank12.loc_8c129560
loc_8C0E7080:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0e7084:
	mov.w @(loc_8C0E71A2,pc),r0
	mov.b r5,@(r0,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c0e71a4,pc),r0
	mov.l @(loc_8c0e71b0,pc),r5
	mov.l @(r0,r14),r4
	add 0x60,r0
	mov r4,r3
	shll2 r3
	shll r4
	add r3,r4
	mov.w @(r0,r14),r3
	add r5,r4
	tst r3,r3
	bt.s loc_8c0e70a8
	mov.w @r4,r4
	neg r4,r4

loc_8c0e70a8:
	exts.w r4,r4
	mov.l @(loc_8C0E71B4,pc),r1
	lds r4,fpul
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	mov r14,r2
	mov.w @(loc_8c0e71a4,pc),r3
	float fpul,fr3
	lds r1,fpul
	add r14,r3
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.l @r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r5,r3
	mov.w @(0x02,r3),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(loc_8C0E71B8,pc),r0
	fmov.s @r0,fr0
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.w @(loc_8c0e71a4,pc),r0
	mov.l @(r0,r14),r2
	mov r2,r3
	shll2 r3
	shll r2
	add r3,r2
	add r2,r5
	mov.w @(0x04,r5),r0
	mov 0x1B,r5
	mov r0,r3
	mov 0x21,r0
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r6
	mov.l @(loc_8c0e71bc,pc),r3
	add 0x06,r6
	jsr @r3
	mov r14,r4

loc_8C0E710A:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E7114:
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0E7120
	bra loc_8C0E71C4
	nop

loc_8C0E7120:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E7188
	mov.w @(loc_8C0E71A8,pc),r0 ; r0 set to 0x19f
	mov.w @(loc_8C0E71A6,pc),r4 ; r4 set to 0xFf
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8C0E713c
	mov.w @(loc_8C0E71AA,pc),r0 ; r0 set to 0xD4
	bra loc_8C0E7194
	mov.l r4,@(r0,r14)

loc_8C0E713C:
	mov.w @(loc_8C0E71AC,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r14),r2
	add 0xFF,r2
	cmp/pz r2
	bt.s loc_8C0E719c
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C0E71A4,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x08,r0
	bf loc_8C0E7162
	mov.b @(0x05,r14),r0
	mov 0x03,r3 ; r3 set to 0x03
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E71AC,pc),r0 ; r0 set to 0xCc
	mov.l r3,@(r0,r14)
	add 0x08,r0 ; r0 set to 0xD4
	bra loc_8C0E719c
	mov.l r4,@(r0,r14)

loc_8C0E7162:
	bsr loc_8C0E6F8e
	mov r14,r4
	mov.w @(loc_8C0E71AC,pc),r0 ; r0 set to 0xCc
	mov 0x03,r3 ; r3 set to 0x03
	mov.w @(loc_8C0E71A4,pc),r1 ; r1 set to 0xD0
	mov.l r3,@(r0,r14)
	add 0x04,r0 ; r0 set to 0xD0
	mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	tst 0x01,r0
	bt.s loc_8C0E719c
	mov.l r0,@r1
	lds.l @r15+,pr
	mov.l @(loc_8C0E71C0,pc),r2 ; r2 set to 0x8C04223a
	mov 0x50,r5 ; r5 set to 0x50
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0E7188:
	mov.w @(loc_8C0E71AC,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r14),r2
	add 0xFF,r2
	cmp/pz r2
	bt.s loc_8C0E719c
	mov.l r2,@(r0,r14)

loc_8C0E7194:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E7228
	mov.l @r15+,r14

loc_8C0E719C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14
	
;----------------------------------------------
loc_8c0e71a2:
	#data 0x012c
loc_8C0E71A4:
	#data 0x00D0
loc_8C0E71A6:
	#data 0x00Ff
loc_8C0E71A8:
	#data 0x019f
loc_8C0E71AA:
	#data 0x00D4
loc_8C0E71AC:
	#data 0x00Cc
	#align4

loc_8C0E71B0:
	#data bank15.loc_8c15F204
loc_8c0e71b4:
	#data 0x3FD55555
loc_8c0e71b8:
	#data 0x40092492
loc_8C0E71BC:
	#data bank03.loc_8c034C38
loc_8C0E71C0:
	#data bank04.loc_8c04223a

;==============================================
loc_8C0E71C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E71F6
	mov.w @(loc_8C0E723C,pc),r0 ; r0 set to 0xD4
	mov.l @r15,r3
	mov.l @(r0,r3),r2
	tst r2,r2
	bt loc_8C0E721c
	mov.b @(0x05,r14),r0
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0E7240,pc),r3 ; r3 set to 0x8C034C38
	add 0x01,r0 ; r0 set to 0xD5
	mov.b r0,@(0x05,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r6
	add 0x0A,r6
	jsr @r3
	mov r14,r4
	bra loc_8C0E721c
	nop

loc_8C0E71F6:
	mov.l @(loc_8C0E7244,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0E720e
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0E7230
	mov.l @r15+,r14

loc_8C0E720E:
	mov.l @(loc_8C0E7248,pc),r1 ; r1 set to 0x40092492
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8C0E721C:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0E7244,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	jmp @r3
	mov.l @r15+,r14

loc_8C0E7228:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0E7230:
	mov.w @(loc_8C0E723E,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E724C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E723C:
	#data 0x00D4
loc_8C0E723E:
	#data 0x012c
	#align4

loc_8C0E7240:
	#data bank03.loc_8c034C38
loc_8C0E7244:
	#data bank03.loc_8c034D8c
loc_8C0E7248:
	#data 0x40092492
loc_8C0E724C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e7250:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x158,PC),r3
	mov 0x04,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e7274
	mov r0,r4
	mov.l @(0x14C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x132,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0e7274:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E727C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E73B8,pc),r1 ; r1 set to 0x8C15F234
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E7290:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x108,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x100,PC),r2
	add 0x01,r0
	mov.l @(0x114,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xFA,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xF6,PC),r0
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
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x00,r4
	mov.b r2,@(r0,r14)
	mov.w @(0xB4,PC),r0
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov.w @(0xAA,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0e730a
	mov 0x0F,r4
	mov 0xF1,r4

loc_8C0E730A:
	exts.w r4,r4
	mov.l @(0xBC,PC),r3
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mova @(0xAC,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	mov 0x1B,r5
	mov 0x00,r6
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E733E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x66,PC),r0
	mov r5,r3
	mov.l r5,@r15
	mov.b @(r0,r3),r2
	tst r2,r2
	bf.s loc_8c0e7376
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0e736a
	mov.l @(0x70,PC),r3
	mov 0x08,r0
	mov 0x4F,r5
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8C0E736A:
	mov.l @(0x68,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e7382

loc_8C0E7376:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0e7398
	mov.l @r15+,r14

loc_8C0E7382:
	mov.w @(0x22,PC),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E7394:
	rts
	nop

;----------------------------------------------
loc_8C0E7398:
	mov.l @(loc_8C0E73D8,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r1 ; r1 set to 0x00
	mov.w @(loc_8C0E73A8,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r1,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e73a2:
	#data 0x2f03
loc_8c0e73a4:
	#data 0x00dc
loc_8c0e73a6:
	#data 0x00c0
loc_8c0e73a8:
	#data 0x012c
loc_8c0e73aa:
	#data 0x01a3
loc_8c0e73ac:
	#data 0x0130
loc_8c0e73ae:
	#data 0x019f
	#align4

loc_8C0E73B0:
	#data bank04.loc_8c044F12
loc_8C0E73B4:
	#data loc_8c0e727c
loc_8C0E73B8:
	#data bank15.loc_8c15F234
loc_8C0E73BC:
	#data bank12.loc_8c129560
loc_8C0E73C0:
	#data bank12.loc_8c1294C8
loc_8C0E73C4:
	#data 0x3FD55555
loc_8C0E73C8:
	#data 0x43AD9249
loc_8C0E73CC:
	#data bank03.loc_8c034C38
loc_8C0E73D0:
	#data bank04.loc_8c04223a
loc_8C0E73D4:
	#data bank03.loc_8c034D8c
loc_8C0E73D8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e73dc:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e740e
	mov r0,r4
	mov.l @(0x124,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x108,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.w @(0xFE,PC),r3
	mov.b r2,@(r0,r4)
	mov.l @r15,r2
	add r4,r3
	mov.l r2,@r3

loc_8c0e740e:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E7416:
	mov.l r14,@-r15
	mov 0x02,r6
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0xF0,PC),r3
	mov r5,r14
	jsr @r3
	mov 0x03,r5
	tst r0,r0
	bt.s loc_8c0e74c2
	mov r0,r4
	mov.w @(0xD2,PC),r2
	mov 0x26,r0
	mov 0x01,r6
	mov.l @(0xE0,PC),r3
	mov 0x00,r5
	mov.l r3,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov 0x20,r0
	mov.b r6,@(r0,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r13),r3
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0xE0,r0
	bt.s loc_8c0e745c
	mov 0x23,r0
	mov r6,r5

loc_8C0E745C:
	mov.b r5,@(r0,r4)
	mov.w @(0xAA,PC),r0
	mov.w @(0xA2,PC),r3
	add r4,r3
	mov.l r14,@r3
	mov.l @(r0,r14),r6
	add 0xD4,r0
	mov.w @(r0,r14),r3
	add 0x84,r0
	mov.l @(r0,r13),r1
	mov r3,r2
	shll r3
	shll2 r2
	mov.w @(0x94,PC),r0
	add r2,r3
	add r1,r3
	mov.l @(r0,r14),r0
	shll r3
	shll r3
	cmp/eq 0x03,r0
	add r3,r6
	mov.w @r6+,r5
	bf.s loc_8c0e7490
	mov.w @r6,r6
	add 0x08,r6
	add 0x08,r5

loc_8C0E7490:
	mov.w @(0x7C,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e749a
	neg r5,r5

loc_8C0E749A:
	exts.w r5,r5
	lds r5,fpul
	mova @(0x7C,PC),r0
	fmov @r0,fr2
	mov 0x34,r0
	fmov @(r0,r14),fr1
	exts.w r6,r6
	float fpul,fr3
	lds r6,fpul
	fmul fr2,fr3
	fsub fr3,fr1
	float fpul,fr3
	fmov fr1,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr1
	mova @(0x64,PC),r0
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr1
	fmov fr1,@(r0,r4)

loc_8C0E74C2:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x50,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e74e8
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(0x44,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c0e74e8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0E74F0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E752C,pc),r1 ; r1 set to 0x8C15F244
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e7504:
	#data 0x2f04
loc_8c0e7506:
	#data 0x0088
loc_8c0e7508:
	#data 0x00d4
loc_8c0e750a:
	#data 0x014a
loc_8c0e750c:
	#data 0x017c
loc_8c0e750e:
	#data 0x02c0
loc_8c0e7510:
	#data 0x0130
	#align4

loc_8C0E7514:
	#data bank04.loc_8c044F12
loc_8C0E7518:
	#data loc_8c0e74F0
loc_8C0E751c:
	#data 0x3FD55555
loc_8C0E7520:
	#data 0x40092492
loc_8C0E7524:
	#data bank03.loc_8c034dee
loc_8C0E7528:
	#data bank04.loc_8c0450C0
loc_8C0E752C:
	#data bank15.loc_8c15F244

;==============================================
loc_8C0E7530:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E7616,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E7616,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E7628,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E7618,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E761A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E761C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E762C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x00,r4 ; r4 set to 0x00
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E761A,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0E75B8
	mov.w @(loc_8C0E761E,pc),r0 ; r0 set to 0x2C0
	mov.l @(r0,r13),r2
	mov.w @(loc_8C0E7620,pc),r0 ; r0 set to 0xD8
	mov.l r2,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x05,r3 ; r3 set to 0x05
	mov.w @(loc_8C0E7622,pc),r0 ; r0 set to 0xD4
	bra loc_8C0E75De
	mov.l r3,@(r0,r14)

loc_8C0E75B8:
	mov 0x08,r3 ; r3 set to 0x08
	mov.w @(loc_8C0E7624,pc),r1 ; r1 set to 0x88
	mov 0x24,r0 ; r0 set to 0x24
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r4,@(0x04,r1)
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r3,@(r0,r14)
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C0E7626,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	add 0xA8,r0 ; r0 set to 0xD8
	mov.l @(r0,r13),r1
	mov.l @(loc_8C0E7630,pc),r0 ; r0 set to 0x8C15F254
	mov.l @(loc_8C0E7634,pc),r2 ; r2 set to 0x8C034C38
	mov.b @(r0,r1),r6
	jsr @r2
	mov r14,r4

loc_8C0E75DE:
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E75E8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8C0E7638,pc),r2 ; r2 set to 0x8C13B468, r2 set to 0x8C13B468, r2 set to 0x8C13B468
	mov r15,r1
	mov.l @(loc_8C0E763C,pc),r3 ; r3 set to 0x8C129620, r3 set to 0x8C129620, r3 set to 0x8C129620
	mov r4,r14
	mov r5,r13
	mov r15,r6
	jsr @r3
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10, r0 set to 0x10
	mov.w @(loc_8C0E7624,pc),r12 ; r12 set to 0x88, r12 set to 0x88, r12 set to 0x88
	mov.w @(loc_8C0E761A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
	add r14,r12 ; r12 ??? bc r14 is ???, r12 ??? bc r14 is ???, r12 ??? bc r14 is ???
	mov.l @r12,r12
	mov.b @(r0,r12),r3 ; r3 ??? bc r12 is ???, r3 ??? bc r12 is ???, r3 ??? bc r12 is ???
	tst r3,r3
	bf.s loc_8C0E7640
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00, r4 set to 0x00
	bra loc_8C0E7766
	mov.b r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E7616:
	#data 0x00Dc
loc_8C0E7618:
	#data 0x00C0
loc_8C0E761A:
	#data 0x012c
loc_8C0E761C:
	#data 0x01A3
loc_8C0E761E:
	#data 0x02C0
loc_8C0E7620:
	#data 0x00D8
loc_8C0E7622:
	#data 0x00D4
loc_8C0E7624:
	#data 0x0088
loc_8C0E7626:
	#data 0x0130
	#align4

loc_8C0E7628:
	#data bank12.loc_8c129560
loc_8C0E762C:
	#data bank12.loc_8c1294C8
loc_8C0E7630:
	#data bank15.loc_8c15F254
loc_8C0E7634:
	#data bank03.loc_8c034C38
loc_8C0E7638:
	#data bank13.loc_8c13B468
loc_8C0E763C:
	#data bank12.loc_8c129620

;==============================================
loc_8C0E7640:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0E76Fe
	mov.w @(loc_8C0E76EC,pc),r0 ; r0 set to 0x2B8
	mov.l @(r0,r13),r3
	tst r3,r3
	bf loc_8C0E7654
	bra loc_8C0E7760
	nop

loc_8C0E7654:
	mov.w @(loc_8C0E76EE,pc),r0 ; r0 set to 0x2Bc
	mov.l @(r0,r13),r2
	tst r2,r2
	bf loc_8C0E7660
	bra loc_8C0E7760
	nop

loc_8C0E7660:
	mov.w @(loc_8C0E76F0,pc),r0 ; r0 set to 0x2C0
	mov.l @(r0,r13),r2
	mov.w @(loc_8C0E76F2,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bt loc_8C0E7670
	bra loc_8C0E7760
	nop

loc_8c0e7670:
	mov.w @(loc_8C0E76F4,pc),r0
	mov.w @(r0,r13),r1
	cmp/pl r1
	bf loc_8c0e7766
	mov.w @(loc_8C0E76F6,pc),r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0e7766
	mov.w @(loc_8C0E76F8,pc),r0
	mov 0x06,r5
	mov.l @(r0,r14),r2
	add 0x01,r2
	cmp/ge r5,r2
	bf.s loc_8c0e769a
	mov.l r2,@(r0,r14)
	mov.l r4,@(r0,r14)

loc_8c0e769a:
	mov.w @(loc_8C0E76FA,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c0e76a6
	mov.b @(r0,r13),r0
	mov 0x02,r4

loc_8c0e76a6:
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0e76ae
	mov 0x04,r4

loc_8c0e76ae:
	mov.w @(loc_8C0E76FA,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0e76ba
	mov r5,r4

loc_8c0e76ba:
	mov.w @(loc_8C0E76F8,pc),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x05,r0
	bf loc_8c0e76c4
	add 0x01,r4

loc_8c0e76c4:
	extu.b r4,r0
	mov.w @(loc_8C0E76FC,pc),r4
	shll r0
	mov.w @(r0,r6),r0
	add r14,r4
	mov.w r0,@(0x1C,r14)
	mov.l @(0x0C,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c0e76e2
	mov.l @(0x08,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c0e76e2
	mov.l @(0x08,r4),r0
	cmp/eq 0x05,r0
	bf loc_8c0e7766

loc_8c0e76e2:
	mov r13,r5
	bsr loc_8c0e7416
	mov r14,r4
	bra loc_8c0e7766
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e76ec:
	#data 0x02B8
loc_8c0e76ee:
	#data 0x02BC
loc_8c0e76f0:
	#data 0x02C0
loc_8c0e76f2:
	#data 0x00D8
loc_8C0E76F4:
	#data 0x0150
loc_8C0E76F6:
	#data 0x0130
loc_8C0E76F8:
	#data 0x00D4
loc_8C0E76FA:
	#data 0x01D0
loc_8C0E76FC:
	#data 0x00CC

;==============================================
loc_8c0e76fe:
	mov.l @(0x8C,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0e7760
	mov.l @(0x84,PC),r3
	mov 0x22,r2
	add r14,r2
	mov.w @(0x6E,PC),r1
	mov.l @r3,r0
	mov.b @r2,r2
	add r14,r1
	mov.l @(0x1C,r0),r0
	add r2,r0
	and 0x01,r0
	mov.b r0,@r1
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e7766
	mov 0x24,r0
	mov 0x08,r2
	mov.b r2,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c0e773c
	mov 0x24,r0
	mov.b @(r0,r12),r1
	mov.b r1,@(r0,r14)

loc_8c0e773c:
	mov.w @(0x44,PC),r0
	mov.l @(r0,r13),r0
	cmp/eq 0x01,r0
	bf loc_8c0e7766
	mov.l @(0x4C,PC),r2
	jsr @r2
	nop 
	mov.w @(0x38,PC),r1
	and 0x01,r0
	mov.w @(0x36,PC),r3
	add r14,r1
	mov.w r0,@r1
	add r14,r3
	mov.w @(0x30,PC),r0
	mov.b @(r0,r12),r2
	extu.b r2,r2
	bra loc_8c0e7766
	mov.l r2,@(0x4,r3)

;==============================================
loc_8C0E7760:
	mov r13,r5
	bsr loc_8C0E7776
	mov r14,r4

loc_8C0E7766:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E7772:
	rts
	nop

;----------------------------------------------
loc_8C0E7776:
	mov.w @(loc_8C0E7782,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E7798,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e7782:
	#data 0x012c
loc_8c0e7784:
	#data 0x00d8
loc_8c0e7786:
	#data 0x0130
loc_8c0e7788:
	#data 0x0088
loc_8c0e778a:
	#data 0x014a
	#align4

loc_8C0E778C:
	#data bank03.loc_8c034D8c
loc_8C0E7790:
	#data 0x8C26823c
loc_8C0E7794:
	#data bank03.loc_8c03319e
loc_8C0E7798:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0e779c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c0e78cc,pc),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e77f0
	mov r0,r4
	mov.l @(loc_8c0e78d0,pc),r5
	tst r13,r13
	bt loc_8c0e77be
	mov.l @(loc_8c0e78d4,pc),r5

loc_8c0e77be:
	mov.w @(loc_8C0E78B2,pc),r2
	mov 0x26,r0
	mov.l r5,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov.w @(loc_8c0e78b4,pc),r0
	mov.w @(r0,r14),r3
	mov.w @(loc_8c0e78b6,pc),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C0E78B8,pc),r0
	mov.w @(loc_8C0E78BC,pc),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8C0E78BA,pc),r0
	extu.b r2,r2
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	add r3,r13
	mov 0x21,r0
	mov.b r13,@(r0,r4)
	mov.w @(loc_8C0E78BE,pc),r0
	mov.l @(r0,r14),r2
	mov.w @(loc_8C0E78C0,pc),r0
	mov.l r2,@(r0,r4)

loc_8c0e77f0:
	mov r4,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0E77FC:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E78D8,pc),r1 ; r1 set to 0x8C15F258
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0E7810:
	mov.w @(loc_8C0E78C2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E78DC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0E78C2,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E78C4,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E78C6,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E78C8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E78E0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r4)
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.w @(loc_8C0E78C6,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr

loc_8C0E7874:
	mov r4,r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8C0E78E4,pc),r1 ; r1 set to 0x8C15F268, r1 set to 0x8C15F268
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0 ; r0 set to 0x31
	shll2 r0 ; r0 set to 0xC4
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E7886:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0E78B4,pc),r0 ; r0 set to 0x158
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r12),r3
	mov.w @(loc_8C0E78B6,pc),r0 ; r0 set to 0xCc
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8C0E78E8
	lds.l @r15+,pr
	mov r12,r5
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0E7D14
	mov.l @r15+,r14

loc_8c0e78b2:
	#data 0x2F05
loc_8C0E78B4:
	#data 0x0158
loc_8C0E78B6:
	#data 0x00Cc
loc_8c0e78b8:
	#data 0x01A1
loc_8c0e78ba:
	#data 0x00D0
loc_8c0e78bc:
	#data 0x00Ff
loc_8c0e78be:
	#data 0x01B0
loc_8c0e78c0:
	#data 0x00D4
loc_8C0E78C2:
	#data 0x00Dc
loc_8C0E78C4:
	#data 0x00C0
loc_8C0E78C6:
	#data 0x012c
loc_8C0E78C8:
	#data 0x01A3
	#align4

loc_8C0E78CC:
	#data bank04.loc_8c044F12
loc_8C0E78D0:
	#data loc_8c0e77Fc
loc_8C0E78D4:
	#data loc_8c0e7A8e
loc_8C0E78D8:
	#data bank15.loc_8c15F258
loc_8C0E78DC:
	#data bank12.loc_8c129560
loc_8C0E78E0:
	#data bank12.loc_8c1294C8
loc_8C0E78E4:
	#data bank15.loc_8c15F268

;==============================================
loc_8C0E78E8:
	mov.w @(loc_8C0E7996,pc),r0 ; r0 set to 0x1B0
	mov.l @(r0,r12),r13
	add 0xEE,r0 ; r0 set to 0x19e
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8C0E798a
	mov.b @(0x05,r13),r0
	extu.b r0,r0 ; r0 set to 0x9e
	cmp/eq 0x03,r0
	bf loc_8C0E798a
	mov.w @(loc_8C0E7998,pc),r0 ; r0 set to 0x1B4
	mov.l @(r0,r13),r2
	cmp/eq r2,r12
	bf loc_8C0E798a
	mov.w @(loc_8C0E799A,pc),r0 ; r0 set to 0x1A2
	mov.b @(r0,r13),r1
	mov.w @(loc_8C0E799C,pc),r0 ; r0 set to 0xD0
	extu.b r1,r1
	mov.l @(r0,r14),r3
	cmp/eq r3,r1
	bf loc_8C0E798a
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0E79A4,pc),r11 ; r11 set to 0x8C03319e
	add 0x01,r0 ; r0 set to 0xD1
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E799E,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	jsr @r11
	mov.b r2,@(r0,r14)
	and 0x3F,r0
	add 0x78,r0 ; r0 set to 0x9c
	jsr @r11
	mov.w r0,@(0x1C,r14)
	and 0x3F,r0
	add 0xE0,r0 ; r0 set to 0x7c
	lds r0,fpul
	mova @(loc_8C0E79A8,pc),r0  ; r0 set to 0x8C0E79A8
	fmov.s @r0,fr2
	mov 0x68,r0 ; r0 set to 0x68
	float fpul,fr3
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	jsr @r11
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E79A0,pc),r3 ; r3 set to 0x13c
	mov r0,r1 ; r1 set to 0x68
	mov.l @(loc_8C0E79AC,pc),r2 ; r2 set to 0x8C1292D4
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.b @r3,r3
	extu.b r3,r3
	jsr @r2
	mov r3,r0 ; r0 ??? bc r3 is ???
	lds r0,fpul
	mova @(loc_8C0E79B0,pc),r0  ; r0 set to 0x8C0E79B0
	fmov.s @r0,fr2 ; r2 ??
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.l @(loc_8C0E79B4,pc),r3 ; r3 set to 0x8C26823c
	mov 0x03,r6 ; r6 set to 0x03
	float fpul,fr3
	mov.l @(loc_8C0E79B8,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	fmul fr2,fr3 ; r3 ??
	fmov.s fr3,@(r0,r14)
	add 0x68,r0 ; r0 set to 0xD4
	mov.l r13,@(r0,r14)
	mov.l @r3,r0 ; r0 ??? bc r3 is ???
	mov.l @(0x1C,r0),r0
	and r0,r6 ; r6 ??? bc r0 is ???
	add 0x06,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r12,r5 ; r5 ??? bc r12 is ???
	mov r14,r4
	mov.l @r15+,r11 ; r11 ??? bc r15 is ???
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0E79Bc
	mov.l @r15+,r14

loc_8C0E798A:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E7996:
	#data 0x01B0
loc_8C0E7998:
	#data 0x01B4
loc_8C0E799A:
	#data 0x01A2
loc_8C0E799C:
	#data 0x00D0
loc_8C0E799E:
	#data 0x012c
loc_8C0E79A0:
	#data 0x013c
	#align4

loc_8C0E79A4:
	#data bank03.loc_8c03319e
loc_8C0E79A8:
	#data 0x3FD55555
loc_8C0E79AC:
	#data bank12.loc_8c1292D4
loc_8C0E79B0:
	#data 0x40092492
loc_8C0E79B4:
	#data 0x8C26823c
loc_8C0E79B8:
	#data bank03.loc_8c034C38

;==============================================
loc_8c0e79bc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0e7ab0,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C0E7AA2,pc),r0
	mov.l @(r0,r14),r4
	mov 0x68,r0
	fmov.s @(r0,r14),fr4
	mov.w @(loc_8C0E7AA4,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0e79da
	mov 0x34,r0
	fneg fr4

loc_8c0e79da:
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0
	fmov.s @(r0,r14),fr4
	mov.w @(loc_8C0E7AA6,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0e79f4
	fldi1 fr3
	fadd fr3,fr3
	fdiv fr3,fr4

loc_8c0e79f4:
	mov.w @(loc_8C0E7AA6,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0e7a04
	mova @(loc_8C0E7AB4,pc),r0
	fmov.s @r0,fr3
	fdiv fr3,fr4

loc_8c0e7a04:
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0E7AA8,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c0e7a42
	mov.w @(loc_8C0E7AAA,pc),r0
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x01,r0
	bt loc_8c0e7a2c
	extu.b r5,r2
	tst r2,r2
	bf loc_8c0e7a42

loc_8c0e7a2c:
	mov.w @(loc_8C0E7AA8,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c0e7a42
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0e7a5a

loc_8c0e7a42:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8c0e7ab8,pc),r3
	mov 0x1B,r5
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E7AAC,pc),r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x04,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c0e7a5a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e7a60:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0e7a7c
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e7a88

loc_8c0e7a7c:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x26,PC),r0
	mov.b r3,@(r0,r14)

loc_8c0e7a88:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0E7A8E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E7ABC,pc),r1 ; r1 set to 0x8C15F274
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14
	
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e7aa2:
	#data 0x00D4
loc_8c0e7aa4:
	#data 0x0130
loc_8c0e7aa6:
	#data 0x01F9
loc_8c0e7aa8:
	#data 0x0233
loc_8c0e7aaa:
	#data 0x022A
loc_8c0e7aac:
	#data 0x0158
loc_8c0e7aae:
	#data 0x012C
	#align4

loc_8C0E7AB0:
	#data bank03.loc_8c034D8c
loc_8c0e7ab4:
	#data 0x40800000
loc_8C0E7AB8:
	#data bank03.loc_8c034C38
loc_8C0E7ABC:
	#data bank15.loc_8c15F274

;==============================================
loc_8C0E7AC0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E7B60,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E7B60,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E7B68,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E7B62,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E7B64,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E7B66,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E7B6C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_8C0E7B38
	mov.w @(loc_8C0E7B64,pc),r0 ; r0 set to 0x12c
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x11,r0 ; r0 set to 0x11
	bra loc_8C0E7B54
	mov.w r0,@(0x1E,r14)

loc_8C0E7B38:
	mov.w @(loc_8C0E7B64,pc),r0 ; r0 set to 0x12c
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.l @(loc_8C0E7B70,pc),r2 ; r2 set to 0x8C03319e
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	jsr @r2
	mov.b r3,@(r0,r14)
	and 0x03,r0
	mov.l @(loc_8C0E7B74,pc),r3 ; r3 set to 0x8C034C38
	mov r0,r6 ; r6 set to 0x31
	mov 0x1B,r5 ; r5 set to 0x1b
	add 0x06,r6 ; r6 set to 0x37
	jsr @r3
	mov r14,r4

loc_8C0E7B54:
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0E7874
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E7B60:
	#data 0x00Dc
loc_8C0E7B62:
	#data 0x00C0
loc_8C0E7B64:
	#data 0x012c
loc_8C0E7B66:
	#data 0x01A3
	#align4

loc_8C0E7B68:
	#data bank12.loc_8c129560
loc_8C0E7B6C:
	#data bank12.loc_8c1294C8
loc_8C0E7B70:
	#data bank03.loc_8c03319e
loc_8C0E7B74:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0E7B78:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E7C36,pc),r0 ; r0 set to 0xD4
	mov r4,r14
	mov.l r5,@r15
	mov.l @(r0,r14),r13
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0E7C54
	mov.b @(0x05,r13),r0
	extu.b r0,r0 ; r0 set to 0x21
	cmp/eq 0x03,r0
	bt loc_8C0E7BA0
	bra loc_8C0E7CE6
	nop

loc_8C0E7BA0:
	mov.w @(loc_8C0E7C38,pc),r0 ; r0 set to 0x233
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x09,r0
	bt loc_8C0E7BAe
	bra loc_8C0E7CE6
	nop

loc_8C0E7BAE:
	mov.w @(0x1E,r14),r0
	cmp/pz r0
	bt loc_8C0E7BB8
	bra loc_8C0E7CE6
	nop

loc_8C0E7BB8:
	mov 0x02,r5 ; r5 set to 0x02
	bsr loc_8C0E779c
	mov.l @r15,r4
	tst r0,r0
	bf.s loc_8C0E7BC8
	mov r0,r12
	bra loc_8C0E7CF8
	nop

loc_8C0E7BC8:
	mov.w @(loc_8C0E7C3A,pc),r0 ; r0 set to 0x13e
	mov.l @(loc_8C0E7C40,pc),r1 ; r1 set to 0x8C15F284
	mov.b @(r0,r13),r3
	add 0x01,r0 ; r0 set to 0x13f
	mov.b @(r0,r13),r2
	extu.b r3,r3
	mov.w @(0x1E,r14),r0
	extu.b r2,r2
	add r2,r3
	mov 0xFC,r2 ; r2 set to 0xFFFFFFFc
	shad r2, r3
	mov.b @(r0,r1),r2 ; r2 ??
	mul.l r2,r3
	mov.l @(loc_8C0E7C44,pc),r2 ; r2 set to 0x8C03319e
	sts macl,r3
	jsr @r2
	mov r3,r8
	and 0x02,r0
	mov.l @(loc_8C0E7C4C,pc),r1 ; r1 set to 0x8C15F296
	add r0,r8
	add 0xFF,r8
	lds r8,fpul
	mova @(loc_8C0E7C48,pc),r0  ; r0 set to 0x8C0E7C48
	fmov.s @r0,fr2 ; r2 ??
	mov 0x68,r0 ; r0 set to 0x68
	float fpul,fr3
	fmul fr2,fr3
	fmov.s fr3,@(r0,r12)
	mov.w @(loc_8C0E7C3C,pc),r0 ; r0 set to 0x13c
	mov.b @(r0,r13),r3
	mov.w @(0x1E,r14),r0
	extu.b r3,r3
	shlr2 r3
	mov.b @(r0,r1),r2
	shlr2 r3
	shlr r3
	mul.l r2,r3
	mov.l @(loc_8C0E7C44,pc),r2 ; r2 set to 0x8C03319e
	sts macl,r3
	jsr @r2
	mov r3,r8
	and 0x02,r0
	add r0,r8
	add 0xFF,r8
	lds r8,fpul
	mova @(loc_8C0E7C50,pc),r0  ; r0 set to 0x8C0E7C50
	fmov.s @r0,fr2 ; r2 ??
	mov 0x6C,r0 ; r0 set to 0x6c
	float fpul,fr3
	fmul fr2,fr3
	fmov.s fr3,@(r0,r12)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x6b
	bra loc_8C0E7CF8
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E7C36:
	#data 0x00D4
loc_8C0E7C38:
	#data 0x0233
loc_8C0E7C3A:
	#data 0x013e
loc_8C0E7C3C:
	#data 0x013c
	#align4

loc_8C0E7C40:
	#data bank15.loc_8c15F284
loc_8C0E7C44:
	#data bank03.loc_8c03319e
loc_8C0E7C48:
	#data 0x3FD55555
loc_8C0E7C4C:
	#data bank15.loc_8c15F296
loc_8C0E7C50:
	#data 0x40092492

;==============================================
loc_8c0e7c54:
	mov.b @(0x05,r14),r0
	mov.l @(loc_8c0e7d24,pc),r12
	tst r0,r0
	bf loc_8c0e7cd2
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0E7D1A,pc),r0
	ftrc fr3,fpul
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0e7c6e
	sts fpul,r4
	neg r4,r4

loc_8c0e7c6e:
	lds r4,fpul
	mov 0x34,r0
	fmov.s @(r0,r13),fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x6C,r0
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.b @(0x05,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0e7cb2
	mov.w @(loc_8C0E7D1C,pc),r0
	mov.b @(r0,r13),r4
	extu.b r4,r0
	cmp/eq 0x01,r0
	bt loc_8c0e7ca8
	extu.b r4,r2
	tst r2,r2
	bf loc_8c0e7cb2

loc_8c0e7ca8:
	mov.w @(loc_8C0E7D1E,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bt loc_8c0e7cf8

loc_8c0e7cb2:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov 0x1B,r5
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E7D20,pc),r0
	mov.b @(r0,r14),r6
	add 0x04,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0e7d28,pc),r3
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0e7cd2:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0e7ce6
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e7cf8

loc_8C0E7CE6:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0E7D14
	mov.l @r15+,r14

loc_8C0E7CF8:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E7D06:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E7D22,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E7D14:
	mov.l @(loc_8C0E7D2C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e7d1a:
	#data 0x0130
loc_8c0e7d1c:
	#data 0x022a
loc_8c0e7d1e:
	#data 0x0233
loc_8c0e7d20:
	#data 0x0158
loc_8C0E7D22:
	#data 0x012c
	#align4

loc_8C0E7D24:
	#data bank03.loc_8c034D8c
loc_8C0E7D28:
	#data bank03.loc_8c034C38
loc_8C0E7D2C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0E7D30:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x110,PC),r3
	mov.l r4,@(0x8,r15)
	mov.l r5,@(0x4,r15)
	mov 0x03,r5
	mov.b r6,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0e7d62
	mov r0,r4
	mov.l @(0x100,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x14,r4)
	mov.b @r15,r2
	mov.w @(0xDE,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0E7D62:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E7D6A:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0E7E50,pc),r0 ; r0 set to 0x8C15F338
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0E7D7E:
	mov r4,r3
	mov.l @(loc_8C0E7E54,pc),r1 ; r1 set to 0x8C15F344
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E7D90:
	mov.w @(0xAA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xBC,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x9C,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x94,PC),r0
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
	mov.w @(0x70,PC),r0
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
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x31,r0
	mov 0xFF,r3
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0E7E04:
	mov.w @(0x38,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b r3,@(r0,r14)
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0e7e30
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bt loc_8c0e7e60
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c0e7e60

loc_8C0E7E30:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0e800c
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e7e3c:
	#data 0x3000
loc_8c0e7e3e:
	#data 0x00dc
loc_8c0e7e40:
	#data 0x012c
loc_8c0e7e42:
	#data 0x01a3
loc_8c0e7e44:
	#data 0x01d0
	#align4

loc_8C0E7E48:
	#data bank04.loc_8c044F12
loc_8C0E7E4C:
	#data loc_8c0e7D6a
loc_8C0E7E50:
	#data bank15.loc_8c15F338
loc_8C0E7E54:
	#data bank15.loc_8c15F344
loc_8C0E7E58:
	#data bank12.loc_8c129560
loc_8C0E7E5C:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0E7E60:
	mov 0x24,r0
	mov r13,r2
	mov.b @(r0,r13),r3
	mov r14,r1
	add 0x34,r2
	mov.b r3,@(r0,r14)
	add 0x34,r1
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(0xCC,PC),r2
	mov.b @(r0,r14),r12
	mov.w @(0x1C,r14),r0
	extu.b r12,r12
	mov r12,r3
	shll2 r12
	shll r12
	mov r0,r4
	add r3,r12
	exts.w r4,r3
	shll2 r12
	shll2 r3
	shll r12
	add r2,r12
	shll r3
	add r3,r12
	mov.l @(0xB0,PC),r3
	exts.w r4,r1
	add 0x01,r1
	jsr @r3
	mov 0x09,r0
	mov.w r0,@(0x1C,r14)
	mov.w @r12,r1
	cmp/pl r1
	bf loc_8c0e7f2e               ; loc_8c0e7f0c+0x22
	mov.l @(0xA0,PC),r1
	mov 0x1B,r5
	mov.w @r12,r7
	mov 0x0A,r6
	jsr @r1
	mov r14,r4
	mov.w @(0x2,r12),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x94,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	mov.w @(0x74,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c0e7ece
	fmul fr2,fr4
	fneg fr4

loc_8C0E7ECE:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x4,r12),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x74,PC),r0
	fmov @r0,fr2
	mov 0x38,r0
	float fpul,fr3
	fmov fr3,fr4
	fmul fr2,fr4
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x48,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c0e7f08
	mov 0x01,r5
	mov.l @(0x5C,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr1
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr1
	fmov fr1,@(r0,r14)

loc_8C0E7F08:
	mov r12,r4
	add 0x06,r4
	mov.w @r4,r3
	tst r5,r3
	bt loc_8c0e7f1c
	mov.w @(0x22,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C0E7F1C:
	mov.w @r4,r0
	tst 0x02,r0
	bt loc_8c0e7f2a
	mov 0x54,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0E7F2A:
	mov.w @(0xE,PC),r0
	mov.b r5,@(r0,r14)
 
loc_8C0E7F2E:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e7f38:
	#data 0x0130
loc_8c0e7f3a:
	#data 0x01f9
loc_8c0e7f3c:
	#data 0x012c
	#align4

loc_8C0E7F40:
	#data bank12.loc_8c1294C8
loc_8C0E7F44:
	#data bank15.loc_8c15F2A8
loc_8C0E7F48:
	#data bank12.loc_8c1292D4
loc_8C0E7F4C:
	#data bank03.loc_8c034CD6
loc_8C0E7F50:
	#data 0x3FD55555
loc_8C0E7F54:
	#data 0x40092492
loc_8C0E7F58:
	#data 0x42092492

;==============================================
loc_8C0E7F5C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf loc_8C0E7FF2
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0E8020,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E8028,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E8020,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0E8022,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E8024,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E802C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x0B,r6 ; r6 set to 0x0b
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0E8030,pc),r3 ; r3 set to 0x8C034C38
	jsr @r3
	mov r14,r4
	mov.l @(0x14,r14),r2
	mov r14,r1
	mov.l @(loc_8C0E802C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0E8026,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r14),r1
	fmov.s @(r0,r1),fr3 ; r3 ??? bc r1 is ???
	mov 0x38,r0 ; r0 set to 0x38
	bra loc_8C0E8006
	fmov.s fr3,@(r0,r14)

loc_8C0E7FF2:
	mov.l @(loc_8C0E8034,pc),r2 ; r2 set to 0x8C034D8c
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0E8006
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E801a
	mov.l @r15+,r14

loc_8C0E8006:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E800C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E8022,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E801A:
	mov.l @(loc_8C0E8038,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E8020:
	#data 0x00Dc
loc_8C0E8022:
	#data 0x012c
loc_8C0E8024:
	#data 0x01A3
loc_8C0E8026:
	#data 0x041c
	#align4

loc_8C0E8028:
	#data bank12.loc_8c129560
loc_8C0E802C:
	#data bank12.loc_8c1294C8
loc_8C0E8030:
	#data bank03.loc_8c034C38
loc_8C0E8034:
	#data bank03.loc_8c034D8c
loc_8C0E8038:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e803c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0x12C,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e8084
	mov r0,r4
	mov.w @(0x108,PC),r2
	mov 0x26,r0
	mov.l @(0x118,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x100,PC),r5
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	add r4,r5
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0xEA,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0e8084:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14


;----------------------------------------------
;unused
loc_8c0e8090:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0xD8,PC),r3
	mov 0x04,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e80d8
	mov r0,r4
	mov.w @(0xB4,PC),r2
	mov 0x26,r0
	mov.l @(0xC4,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0xAC,PC),r5
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	add r4,r5
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x96,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0e80d8:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E80E4:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0E8180,pc),r0 ; r0 set to 0x8C15F354
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E80FA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E816E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E816E,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E8184,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E8170,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E8172,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E8174,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E8188,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_8C0E818c
	mov 0x31,r0 ; r0 set to 0x31
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	bra loc_8C0E8190
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e8168:
	#data 0x3100
loc_8c0e816a:
	#data 0x00cc
loc_8c0e816c:
	#data 0x0158
loc_8C0E816E:
	#data 0x00Dc
loc_8C0E8170:
	#data 0x00C0
loc_8C0E8172:
	#data 0x012c
loc_8C0E8174:
	#data 0x01A3
	#align4

loc_8C0E8178:
	#data bank04.loc_8c044F12
loc_8C0E817C:
	#data loc_8c0e80E4
loc_8C0E8180:
	#data bank15.loc_8c15F354
loc_8C0E8184:
	#data bank12.loc_8c129560
loc_8C0E8188:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0e818c:
	mov 0x31,r0
	mov.b r4,@(r0,r14)

loc_8c0e8190:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e819e
	mov.w @(loc_8c0e829e,pc),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c0e819e:
	mov 0x34,r0
	mov.l @(loc_8c0e82a4,pc),r3
	fmov.s @(r0,r13),fr3
	mov 0x17,r5
	mov 0x07,r6
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E82A0,pc),r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0e8272
	mov.l @r15+,r14

loc_8C0E81C8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0E82A8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0E820a
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E829E,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0E81F4
	mov.w @(loc_8C0E82A2,pc),r0 ; r0 set to 0x158
	mov 0x08,r2 ; r2 set to 0x08
	bra loc_8C0E81Fa
	mov.b r2,@(r0,r14)

loc_8c0e81f4:
	mov.w @(loc_8c0e82a2,pc),r0
	mov 0x09,r1
	mov.b r1,@(r0,r14)

loc_8c0e81fa:
	mov.w @(loc_8c0e82a2,pc),r0
	mov 0x17,r5
	mov.l @(loc_8c0e82a4,pc),r3
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov 0x5A,r0
	mov.w r0,@(0x1C,r14)

loc_8C0E820A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8210:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e824a
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0e823e
	mov 0x0A,r6
	mov.w @(0x62,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8C0E823E:
	lds.l @r15+,pr
	mov.l @(0x60,PC),r3
	mov 0x17,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0E824A:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8250:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e826c
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x32,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E826C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8272:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0E82AC,pc),r1 ; r1 set to 0x8C15F360
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E828C:
	mov r4,r3
	mov.l @(loc_8C0E82B0,pc),r1 ; r1 set to 0x8C15F36c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E829E:
	#data 0x012c
loc_8c0e82a0:
	#data 0x041c
loc_8C0E82A2:
	#data 0x0158
	#align4

loc_8C0E82A4:
	#data bank03.loc_8c034e8c
loc_8C0E82A8:
	#data bank03.loc_8c034dee
loc_8C0E82AC:
	#data bank15.loc_8c15F360
loc_8C0E82B0:
	#data bank15.loc_8c15F36c

;==============================================
loc_8C0E82B4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x10C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x104,PC),r2
	add 0x01,r0
	mov.l @(0x110,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xFE,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xFA,PC),r0
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
	mov.w @(0xDE,PC),r0
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
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr2
	fmov fr2,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov fr2,@(r0,r14)
	mov.w @(0x98,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e8348
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fneg fr2
	fmov fr2,@(r0,r14)

loc_8C0E8348:
	mov 0x5C,r1
	mov.l @(0xA0,PC),r3
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x17,r5
	mov 0x06,r6
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14
 
loc_8C0E836A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x64,PC),r4
	mov.w @(0x64,PC),r0
	add r14,r4
	sts.l pr,@-r15
	mov.w @r4,r2
	mov.w @(r0,r5),r3
	cmp/eq r2,r3
	bf loc_8c0e83a8
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
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e83b4

loc_8C0E83A8:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1C,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E83B4:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E83BA:
	mov r4,r3
	mov.l @(loc_8C0E83F4,pc),r1 ; r1 set to 0x8C15F37c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e83cc:
	#data 0x00dc
loc_8c0e83ce:
	#data 0x00c0
loc_8c0e83d0:
	#data 0x012c
loc_8c0e83d2:
	#data 0x01a3
loc_8c0e83d4:
	#data 0x0130
loc_8c0e83d6:
	#data 0x00cc
loc_8c0e83d8:
	#data 0x0158
	#align4

loc_8C0E83DC:
	#data bank12.loc_8c129560
loc_8C0E83E0:
	#data bank12.loc_8c1294C8
loc_8C0E83E4:
	#data 0x43384924
loc_8C0E83E8:
	#data 0xC13AAAAa
loc_8C0E83EC:
	#data bank03.loc_8c034e8c
loc_8C0E83F0:
	#data bank03.loc_8c034dee
loc_8C0E83F4:
	#data bank15.loc_8c15F37c

;==============================================
loc_8C0E83F8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xEA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xE2,PC),r2
	add 0x01,r0
	mov.l @(0xEC,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xDC,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xD8,PC),r0
	mov 0x01,r4
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
	mov.w @(0xBC,PC),r0
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
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xB0,PC),r3
	mov.b @(r0,r13),r2
	mov 0x17,r5
	mov 0x05,r6
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E8478:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x76,PC),r4
	mov.w @(0x76,PC),r0
	add r14,r4
	sts.l pr,@-r15
	mov.w @r4,r2
	mov.w @(r0,r5),r3
	cmp/eq r2,r3
	bf loc_8c0e84b2
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	mov.l @(0x70,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e84be

loc_8C0E84B2:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x34,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E84BE:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E84C4:
	mov r4,r3
	mov.l @(loc_8C0E850C,pc),r1 ; r1 set to 0x8C15F38c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0E84D6:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E84F2,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E84E4:
	mov.l @(loc_8C0E8510,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0E84F2,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e84ee:
	#data 0x00dc
loc_8c0e84f0:
	#data 0x00c0
loc_8c0e84f2:
	#data 0x012c
loc_8c0e84f4:
	#data 0x01a3
loc_8c0e84f6:
	#data 0x00cc
loc_8c0e84f8:
	#data 0x0158
	#align4

loc_8C0E84FC:
	#data bank12.loc_8c129560
loc_8C0E8500:
	#data bank12.loc_8c1294C8
loc_8C0E8504:
	#data bank03.loc_8c034e8c
loc_8C0E8508:
	#data bank03.loc_8c034dee
loc_8C0E850C:
	#data bank15.loc_8c15F38c
loc_8C0E8510:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e8514:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
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
	bt.s loc_8c0e855c
	mov r0,r4
	mov.w @(0x142,PC),r2
	mov 0x26,r0
	mov.l @(0x154,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x13A,PC),r5
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	add r4,r5
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x124,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0e855c:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8568:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0E8694,pc),r0 ; r0 set to 0x8C15F3C4
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0E857E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.w @(0xF2,PC),r1
	mov r5,r13
	add 0x01,r0
	mov.l @(0x104,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0xE8,PC),r0
	mov.w @(0xE4,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0xE2,PC),r0
	mov 0x01,r4
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
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xA0,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov.l @(0xB0,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	jsr @r3
	fmov fr3,@(r0,r14)
	mov 0x03,r4
	mov.l @(0xA0,PC),r6
	and r0,r4
	extu.b r4,r4
	shll r4
	shll r4
	mov r4,r5
	mov r4,r0
	nop 
	mov.w @(r0,r6),r3
	mov.w @(0x72,PC),r0
	lds r3,fpul
	mov.l @(0x90,PC),r3
	mov.w @(r0,r14),r2
	float fpul,fr3
	lds r3,fpul
	tst r2,r2
	fsts fpul,fr2
	fmul fr2,fr3
	ftrc fr3,fpul
	bt.s loc_8c0e862c
	sts fpul,r4
	neg r4,r4

loc_8C0E862C:
	exts.w r4,r4
	mov r14,r2
	lds r4,fpul
	mov 0x5C,r0
	add r6,r5
	float fpul,fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	add r0,r2
	mov.l r2,@-r15
	mov.w @(0x2,r5),r0
	mov.l @(0x5C,PC),r2
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(0x60,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	jsr @r2
	fmov fr2,@r3
	and 0x07,r0
	mov.l @(0x58,PC),r3
	extu.b r0,r6
	mov.b r0,@r15
	mov.l @(0x4C,PC),r0
	shll r6
	mov 0x1B,r5
	mov.w @(r0,r6),r6
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov r13,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0e8704
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e867a:
	#data 0x3200
loc_8c0e867c:
	#data 0x00cc
loc_8c0e867e:
	#data 0x0158
loc_8c0e8680:
	#data 0x00dc
loc_8c0e8682:
	#data 0x00c0
loc_8c0e8684:
	#data 0x012c
loc_8c0e8686:
	#data 0x01a3
loc_8c0e8688:
	#data 0x0130
	#align4

loc_8C0E868C:
	#data bank04.loc_8c044F12
loc_8C0E8690:
	#data loc_8c0e8568
loc_8C0E8694:
	#data bank15.loc_8c15F3C4
loc_8C0E8698:
	#data bank12.loc_8c129560
loc_8C0E869C:
	#data bank12.loc_8c1294C8
loc_8C0E86A0:
	#data bank03.loc_8c03319e
loc_8C0E86A4:
	#data bank15.loc_8c15F39c
loc_8C0E86A8:
	#data 0x3FD55555
loc_8C0E86AC:
	#data 0x40092492
loc_8C0E86B0:
	#data bank15.loc_8c15F3Ac
loc_8C0E86B4:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0E86B8:
	mov 0x34,r0
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov.l @(0x140,PC),r3
	sts.l pr,@-r15
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e86fe
	mov.w @(0x100,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0E86FE:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8704:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0E87F8,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8C0E8720
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x15a
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8720:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E8808,pc),r1 ; r1 set to 0x8C15F3Dc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8734:
	mov r4,r3
	mov.l @(loc_8C0E880C,pc),r1 ; r1 set to 0x8C15F3E0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0E8746:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xA8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xA0,PC),r2
	add 0x01,r0
	mov.l @(0xB4,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x9A,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x8E,PC),r0
	mov 0x01,r4
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
	mov.w @(0x78,PC),r0
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
	mov.l @(0x78,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0x4C,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x34,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e87d8
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0E87D8:
	mova @(0x40,PC),r0
	mov.l @(0x44,PC),r3
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x1B,r5
	fmov fr3,@(r0,r14)
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0e8870
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e87f6:
	#data 0x012c
loc_8C0E87F8:
	#data 0x0159
loc_8c0e87fa:
	#data 0x00dc
loc_8c0e87fc:
	#data 0x00c0
loc_8c0e87fe:
	#data 0x01a3
loc_8c0e8800:
	#data 0x0130
	#align4

loc_8C0E8804:
	#data bank03.loc_8c034D8c
loc_8C0E8808:
	#data bank15.loc_8c15F3Dc
loc_8C0E880C:
	#data bank15.loc_8c15F3E0
loc_8C0E8810:
	#data bank12.loc_8c129560
loc_8C0E8814:
	#data bank12.loc_8c1294C8
loc_8C0E8818:
	#data 0xC3805555
loc_8C0E881c:
	#data 0x431A4924
loc_8C0E8820:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0E8824:
	mov 0x34,r0
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov.l @(0x130,PC),r3
	sts.l pr,@-r15
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e886a
	mov.w @(0xF0,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0E886A:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8870:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.w @(loc_8C0E8954,pc),r4 ; r4 set to 0xCc
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0E8956,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.w @r4,r3
	mov.w @(r0,r5),r2
	cmp/eq r3,r2
	bt loc_8C0E8892
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8892:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E8964,pc),r1 ; r1 set to 0x8C15F3F0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E88A6:
	mov r4,r3
	mov.l @(loc_8C0E8968,pc),r1 ; r1 set to 0x8C15F3F4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E88B8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(loc_8C0E8958,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E8954,pc),r12 ; r12 set to 0xCc
	add 0x01,r0
	mov.w @(loc_8C0E8958,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	add r14,r12 ; r12 ??? bc r14 is ???
	mov.w @(loc_8C0E895A,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0E896C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E8952,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E895C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E8970,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E8952,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mova @(loc_8C0E8974,pc),r0  ; r0 set to 0x8C0E8974
	fmov.s @r0,fr3 ; r3 ??
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0E8978,pc),r0  ; r0 set to 0x8C0E8978
	fmov.s @r0,fr3
	mov.w @(loc_8C0E895E,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0E897c
	mov.w @(loc_8C0E8956,pc),r0 ; r0 set to 0x158
	mov 0x07,r3 ; r3 set to 0x07
	bra loc_8C0E8982
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E8952:
	#data 0x012c
loc_8C0E8954:
	#data 0x00Cc
loc_8C0E8956:
	#data 0x0158
loc_8C0E8958:
	#data 0x00Dc
loc_8C0E895A:
	#data 0x00C0
loc_8C0E895C:
	#data 0x01A3
loc_8C0E895E:
	#data 0x0108
	#align4

loc_8C0E8960:
	#data bank03.loc_8c034D8c
loc_8C0E8964:
	#data bank15.loc_8c15F3F0
loc_8C0E8968:
	#data bank15.loc_8c15F3F4
loc_8C0E896C:
	#data bank12.loc_8c129560
loc_8C0E8970:
	#data bank12.loc_8c1294C8
loc_8C0E8974:
	#data 0x3FC00000
loc_8C0E8978:
	#data 0x3F000000

;==============================================
loc_8c0e897c:
	mov.w @(loc_8C0E8A8C,pc),r0
	mov 0x08,r1
	mov.b r1,@(r0,r14)

loc_8c0e8982:
	mov.w @(loc_8C0E8A8C,pc),r0
	mov 0x1B,r5
	mov.l @(loc_8c0e8a9c,pc),r3
	mov.b @(r0,r14),r6
	extu.b r6,r6
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E8A8E,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e89a6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c0e89a6:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0e89ba
	mova @(loc_8C0E8AA0,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	bra loc_8c0e89c8
	fmov.s fr3,@(r0,r14)

loc_8c0e89ba:
	mova @(loc_8C0E8AA4,pc),r0
	mov.w @(loc_8C0E8A90,pc),r3
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r14)
	mov 0x48,r0
	mov.l r3,@(r0,r14)

loc_8c0e89c8:
	mov 0x00,r0
	mov r13,r5
	mov.b r0,@(0x02,r12)
	mov 0x03,r0
	mov.b r0,@(0x03,r12)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0e8a1e
	mov.l @r15+,r14

loc_8C0E89DE:
	mov.w @(loc_8C0E8A92,pc),r0 ; r0 set to 0x1A0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8C0E89Ee
	mov.w @(loc_8C0E8A94,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	bra loc_8C0E89F4
	mov.b r3,@(r0,r4)
	
loc_8C0E89EE:
	mov.w @(loc_8C0E8A94,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)

loc_8C0E89F4:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r5),fr3
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0E8A1E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x70,PC),r13
	mov.l r12,@-r15
	mov r5,r12
	add r14,r13
	mov.w @(0x66,PC),r4
	sts.l pr,@-r15
	mov.b @(0x3,r13),r0
	add 0xFF,r0
	mov.b r0,@(0x3,r13)
	add 0x01,r0
	exts.b r0,r0
	tst r0,r0
	bf.s loc_8c0e8a7c
	add r12,r4
	mov.b @(0x2,r13),r0
	mov 0x05,r3
	add 0x01,r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x2,r13),r0
	cmp/gt r3,r0
	bf loc_8c0e8a52
	mov 0x00,r0
	mov.b r0,@(0x2,r13)

loc_8C0E8A52:
	mov.l @(0x54,PC),r1
	mov.b @(0xD,r4),r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x3,r13)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0e8a66
	bra loc_8c0e8a68
	mov 0x07,r3

loc_8C0E8A66:
	mov 0x08,r3

loc_8C0E8A68:
	mov.w @(0x20,PC),r0
	mov 0x1B,r5
	mov.b r3,@(r0,r14)
	mov.b @(0x2,r13),r0
	mov.l @(0x38,PC),r3
	mov r0,r7
	mov.w @(0x14,PC),r0
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4

loc_8C0E8A7C:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0e8ab0
	mov 0x24,r0
	mov 0x00,r3
	bra loc_8c0e8ab6
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e8a8c:
	#data 0x0158
loc_8c0e8a8e:
	#data 0x0130
loc_8c0e8a90:
	#data 0x0A00
loc_8C0E8A92:
	#data 0x01A0
loc_8C0E8A94:
	#data 0x012c
loc_8C0E8A96:
	#data 0x02A4
loc_8C0E8A98:
	#data 0x00Cc
	#align4

loc_8C0E8A9C:
	#data bank03.loc_8c034C38
loc_8c0e8aa0:
	#data 0x433C9249
loc_8c0e8aa4:
	#data 0x43654924
loc_8C0E8AA8:
	#data bank15.loc_8c15F3Bc
loc_8C0E8AAC:
	#data bank03.loc_8c034CD6

;==============================================
loc_8C0E8AB0:
	mov 0x24,r0
	mov 0x07,r1
	mov.b r1,@(r0,r14)

loc_8C0E8AB6:
	mov.w @(0x154,PC),r0
	mov.w @r13,r2
	mov.w @(r0,r12),r3
	cmp/eq r2,r3
	bt loc_8c0e8ac8
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c0e8ae0
	mov.b r0,@(0x4,r14)

loc_8C0E8AC8:
	lds.l @r15+,pr
	mov.b @(0x5,r14),r0
	mov r12,r5
	mov.l @(0x14C,PC),r1
	mov r14,r4
	mov.l @r15+,r12
	extu.b r0,r0
	shll2 r0
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0E8AE0:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8AEA:
	mov r4,r3
	mov.l @(loc_8C0E8C20,pc),r1 ; r1 set to 0x8C15F408
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E8AFC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E8C10,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E8C10,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E8C24,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E8C12,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E8C14,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E8C16,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E8C28,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x0F,r5 ; r5 set to 0x0f
	mov.b r2,@(r0,r14)
	mov 0x05,r6 ; r6 set to 0x05
	mov.w @(loc_8C0E8C14,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov.l @(loc_8C0E8C2C,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0E8BC6
	mov.l @r15+,r14

loc_8C0E8B8C:
	mov.l r14,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	mov r5,r14
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0E8C18,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0E8BAc
	mov.w @(loc_8C0E8C14,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	bra loc_8C0E8BC2
	mov.b r3,@(r0,r4)

loc_8C0E8BAC:
	mov.w @(loc_8C0E8C14,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.l @(loc_8C0E8C30,pc),r3 ; r3 set to 0x8C034F54
	mov 0x0F,r5 ; r5 set to 0x0f
	mov.b r1,@(r0,r4)
	add 0x14,r0 ; r0 set to 0x140
	mov.b @(r0,r14),r7
	mov 0x05,r6 ; r6 set to 0x05
	add 0xF0,r7
	jmp @r3
	mov.l @r15+,r14

loc_8C0E8BC2:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8BC6:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.w @(loc_8C0E8C1A,pc),r4 ; r4 set to 0xCc
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0E8C0E,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.w @r4,r3
	mov.w @(r0,r5),r2
	cmp/eq r3,r2
	bt loc_8C0E8BE8
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8BE8:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E8C34,pc),r1 ; r1 set to 0x8C15F418
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8BFC:
	mov r4,r3
	mov.l @(loc_8C0E8C38,pc),r1 ; r1 set to 0x8C15F41c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E8C0E:
	#data 0x0158
loc_8C0E8C10:
	#data 0x00Dc
loc_8C0E8C12:
	#data 0x00C0
loc_8C0E8C14:
	#data 0x012c
loc_8C0E8C16:
	#data 0x01A3
loc_8C0E8C18:
	#data 0x0140
loc_8C0E8C1A:
	#data 0x00Cc
	#align4

loc_8C0E8C1C:
	#data bank15.loc_8c15F404
loc_8C0E8C20:
	#data bank15.loc_8c15F408
loc_8C0E8C24:
	#data bank12.loc_8c129560
loc_8C0E8C28:
	#data bank12.loc_8c1294C8
loc_8C0E8C2C:
	#data bank03.loc_8c034e8c
loc_8C0E8C30:
	#data bank03.loc_8c034F54
loc_8C0E8C34:
	#data bank15.loc_8c15F418
loc_8C0E8C38:
	#data bank15.loc_8c15F41c

;==============================================
loc_8C0E8C3C:
	mov.w @(loc_8C0E8CD4,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0E8CD6,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0E8CD4,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0E8CDC,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0E8CD8,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E8CDA,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E8CE0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8C0E8CE4,pc),r5 ; r5 set to 0x8C26A518
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0E8CD8,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x05,r5)
	mov r6,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x06,r5)
	mov 0x02,r0 ; r0 set to 0x02
	lds.l @r15+,pr
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0E8CA6:
	rts
	nop

;----------------------------------------------
loc_8C0E8CAA:
	mov r4,r3
	mov.l @(loc_8C0E8CE8,pc),r1 ; r1 set to 0x8C15F42c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E8CBC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E8CD8,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E8CCA:
	mov.l @(loc_8C0E8CEC,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0E8CD8,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E8CD4:
	#data 0x00Dc
loc_8C0E8CD6:
	#data 0x00C0
loc_8C0E8CD8:
	#data 0x012c
loc_8C0E8CDA:
	#data 0x01A3
	#align4

loc_8C0E8CDC:
	#data bank12.loc_8c129560
loc_8C0E8CE0:
	#data bank12.loc_8c1294C8
loc_8C0E8CE4:
	#data 0x8C26A518
loc_8C0E8CE8:
	#data bank15.loc_8c15F42c
loc_8C0E8CEC:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e8cf0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0x13C,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e8d38
	mov r0,r4
	mov.w @(0x11A,PC),r2
	mov 0x26,r0
	mov.l @(0x128,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x112,PC),r5
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	add r4,r5
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0xFC,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0e8d38:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8D44:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0E8E44,pc),r0 ; r0 set to 0x8C15F43c
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0E8D5A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E8E34,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E8E34,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E8E48,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E8E36,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E8E38,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E8E3A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E8E4C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0x12,r5 ; r5 set to 0x12
	mov.l @(loc_8C0E8E50,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x04,r6 ; r6 set to 0x04
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E8E38,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0E8FC8
	mov.l @r15+,r14

loc_8C0E8DFE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0E8E54,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0E8E28
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E8E50,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x05,r6 ; r6 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x12,r5 ; r5 set to 0x12
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0E8E28:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14


;----------------------------------------------
loc_8c0e8e2e:
	#data 0x3300
loc_8c0e8e30:
	#data 0x00Cc
loc_8c0e8e32:
	#data 0x0158
loc_8C0E8E34:
	#data 0x00Dc
loc_8C0E8E36:
	#data 0x00C0
loc_8C0E8E38:
	#data 0x012c
loc_8C0E8E3A:
	#data 0x01A3
	#align4

loc_8C0E8E3C:
	#data bank04.loc_8c044F12
loc_8C0E8E40:
	#data loc_8c0e8D44
loc_8C0E8E44:
	#data bank15.loc_8c15F43c
loc_8C0E8E48:
	#data bank12.loc_8c129560
loc_8C0E8E4C:
	#data bank12.loc_8c1294C8
loc_8C0E8E50:
	#data bank03.loc_8c034e8c
loc_8C0E8E54:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0E8E58:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0E8FB4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0E8E88
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E8FBC,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x06,r6 ; r6 set to 0x06
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x10,r0 ; r0 set to 0x10
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C0E8FB8,pc),r0  ; r0 set to 0x8C0E8FB8
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov 0x12,r5 ; r5 set to 0x12
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0E8E88:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8E8E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x60,r1 ; r1 set to 0x60
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0E8FB4,pc),r3 ; r3 set to 0x8C034DEe
	mov 0x38,r0 ; r0 set to 0x38
	mov.l r5,@r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8C0E8EEa
	mov.b @(0x05,r14),r0
	mov 0x12,r5 ; r5 set to 0x12
	mov r14,r4
	mov 0x07,r6 ; r6 set to 0x07
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0E8FAE,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x10,r0 ; r0 set to 0x10
	mov.w r0,@(0x1C,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0E8FBC,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8C0E8EEA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8EF2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x60,r1
	mov r4,r14
	add r14,r1
	mov.w @(0xAE,PC),r2
	mov 0x38,r0
	mov r5,r3
	add r3,r2
	mov.l @(0xAC,PC),r3
	mov.l r5,@r15
	mov.l r2,@(0x4,r15)
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
	bf loc_8c0e8f66
	mov.b @(0x5,r14),r0
	mov 0x12,r5
	mov 0x08,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x6E,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x74,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x4,r15),r2
	mov 0x01,r0
	mov.b r0,@(0x1,r2)

loc_8C0E8F66:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E8F6E:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	mov.l @(0x3C,PC),r3
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e8fa8
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0E8FA8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E8FAE:
	#data 0x041c
loc_8c0e8fb0:
	#data 0x02A4
	#align4

loc_8C0E8FB4:
	#data bank03.loc_8c034dee
loc_8C0E8FB8:
	#data 0x40092492
loc_8C0E8FBC:
	#data bank03.loc_8c034e8c
loc_8c0e8fc0:
	#data 0x40892492
loc_8c0e8fc4:
	#data 0x3F092492

;==============================================
loc_8C0E8FC8:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0E9104,pc),r1 ; r1 set to 0x8C15F448
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0E8FE2:
	mov r4,r3
	mov.l @(loc_8C0E9108,pc),r1 ; r1 set to 0x8C15F45c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E8FF4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E90F6,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E90F6,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E910C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E90F8,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E90FA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E90FC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E9110,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E90FA,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0E9114,pc),r0  ; r0 set to 0x8C0E9114
	fmov.s @r0,fr4 ; r4 ??
	mov.w @(loc_8C0E90FE,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0E9092
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0E9098
	fadd fr4,fr3

loc_8c0e9092:
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_8c0e9098:
	mov.l @(loc_8c0e9118,pc),r3
	mov 0x12,r5
	fmov.s fr3,@(r0,r14)
	mov 0x0A,r6
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0e90b2:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8C0E9100,pc),r3
	mov.l @(loc_8c0e911c,pc),r2
	add r5,r3
	mov.l r4,@r15
	mov.l r3,@(0x04,r15)
	jsr @r2
	mov.l @r15,r4
	mov.l @(0x04,r15),r3
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt loc_8c0e90d4
	mov.l @r15,r2
	mov.b @(0x04,r2),r0
	add 0x01,r0
	mov.b r0,@(0x04,r2)

loc_8c0e90d4:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C0E90DC:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0E9120,pc),r1 ; r1 set to 0x8C15F46c
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E90F6:
	#data 0x00Dc
loc_8C0E90F8:
	#data 0x00C0
loc_8C0E90FA:
	#data 0x012c
loc_8C0E90FC:
	#data 0x01A3
loc_8C0E90FE:
	#data 0x0130
loc_8c0e9100:
	#data 0x02A4
	#align4

loc_8C0E9104:
	#data bank15.loc_8c15F448
loc_8C0E9108:
	#data bank15.loc_8c15F45c
loc_8C0E910C:
	#data bank12.loc_8c129560
loc_8C0E9110:
	#data bank12.loc_8c1294C8
loc_8C0E9114:
	#data 0x42055555
loc_8C0E9118:
	#data bank03.loc_8c034e8c
loc_8C0E911C:
	#data bank03.loc_8c034dee
loc_8C0E9120:
	#data bank15.loc_8c15F46c

;==============================================
loc_8C0E9124:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E9292,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E9292,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E92A4,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E9294,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E9296,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E9298,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E92A8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r14)
	mov 0x07,r6 ; r6 set to 0x07
	mov.w @(loc_8C0E9296,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0E92AC,pc),r3 ; r3 set to 0x8C034E8c
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E91B2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0E929A,pc),r3 ; r3 set to 0x2A4, r3 set to 0x2A4
	mov r5,r13
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov r4,r14
	add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov.w @(loc_8C0E929C,pc),r4 ; r4 set to 0xCC, r4 set to 0xCc
	mov.l r3,@r15
	mov.b @(r0,r13),r3
	add r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0E929E,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.w @r4,r3
	mov.w @(r0,r13),r2
	cmp/eq r3,r2
	bt loc_8C0E91Ec
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov r13,r5
	add 0x01,r0 ; r0 set to 0x159, r0 set to 0x159
	mov.b r0,@(0x04,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0E92D2
	mov.l @r15+,r14

loc_8C0E91EC:
	mov.l @(loc_8C0E92B0,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0E92B4,pc),r5 ; r5 set to 0x8C15F47c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0E92B8,pc),r0  ; r0 set to 0x8C0E92B8
	fmov.s @r0,fr4
	mov.w @(loc_8C0E92A0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8C0E9232
	mov r5,r4 ; r4 set to 0x8C15F47c
	mov 0x21,r3 ; r3 set to 0x21
	fmov fr4,fr0 ; r0 ??
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4 ; r4 ??? bc r3 is ???
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8C0E924e
	fmac fr0,fr3,fr2

loc_8c0e9232:
	mov 0x21,r2
	add r14,r2
	mov.b @r2,r2
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	extu.b r2,r2
	shll r2
	shll r2
	add r2,r4
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c0e924e:
	mov 0x21,r3
	fmov.s fr2,@(r0,r14)
	add r14,r3
	mov r14,r2
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r5
	mov.w @(0x02,r5),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(loc_8C0E92BC,pc),r0
	fmov.s @r0,fr0
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l @r15,r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c0e9288
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c0e9288:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0e9292:
	#data 0x00DC
loc_8c0e9294:
	#data 0x00C0
loc_8c0e9296:
	#data 0x012C
loc_8c0e9298:
	#data 0x01A3
loc_8c0e929a:
	#data 0x02A4
loc_8c0e929c:
	#data 0x00CC
loc_8c0e929e:
	#data 0x0158
loc_8c0e92a0:
	#data 0x0130
	#align4

loc_8c0e92a4:
	#data bank12.loc_8c129560
loc_8c0e92a8:
	#data bank12.loc_8c1294c8
loc_8c0e92ac:
	#data bank03.loc_8c034e8c
loc_8c0e92b0:
	#data bank03.loc_8c034dee
loc_8c0e92b4:
	#data bank15.loc_8c15f47c
loc_8c0e92b8:
	#data 0x3FD55555
loc_8C0E92BC:
	#data 0x40092492

;==============================================
loc_8C0E92C0:
	mov r4,r3
	mov.l @(loc_8C0E92EC,pc),r1 ; r1 set to 0x8C15F484
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0E92D2:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E92EA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E92E0:
	mov.l @(loc_8C0E92F0,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0E92EA,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E92EA:
	#data 0x012c
	#align4

loc_8C0E92EC:
	#data bank15.loc_8c15F484
loc_8C0E92F0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e92f4:
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
	bt.s loc_8c0e9326
	mov r0,r4
	mov.l @(0x118,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x22,r0
	mov.w @(0xF6,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0e9326:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xF0,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e9360
	mov r0,r4
	mov.l @(0xE0,PC),r3
	mov 0x22,r0
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.w @(0xBC,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0e9360:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E9368:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E942C,pc),r1 ; r1 set to 0x8C15F494
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E937C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0E941A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E941A,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E9430,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E941C,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0E941E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E9420,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E9434,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0E93Fc
	cmp/eq 0x01,r0
	bt loc_8C0E9404
	cmp/eq 0x02,r0
	bt loc_8C0E9408
	cmp/eq 0x03,r0
	bt loc_8C0E940c
	cmp/eq 0x04,r0
	bt loc_8C0E9410
	cmp/eq 0x05,r0
	bt loc_8C0E9438
	bra loc_8C0E943e
	nop

loc_8C0E93FC:
	mov 0x21,r0 ; r0 set to 0x21
	mov 0x06,r3 ; r3 set to 0x06
	bra loc_8C0E943e
	mov.b r3,@(r0,r14)

loc_8C0E9404:
	bra loc_8C0E943a
	mov 0x02,r1

loc_8C0E9408:
	bra loc_8C0E9412
	mov 0x0A,r2

loc_8C0E940C:
	bra loc_8C0E943a
	mov 0x12,r1

loc_8c0e9410:
	mov 0x10,r2

loc_8C0E9412:
	mov 0x21,r0 ; r0 set to 0x21
	bra loc_8C0E943e
	mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e9418:
	#data 0x3400
loc_8C0E941A:
	#data 0x00Dc
loc_8C0E941C:
	#data 0x00C0
loc_8C0E941E:
	#data 0x012c
loc_8C0E9420:
	#data 0x01A3
	#align4

loc_8C0E9424:
	#data bank04.loc_8c044F12
loc_8C0E9428:
	#data loc_8c0e9368
loc_8C0E942C:
	#data bank15.loc_8c15F494
loc_8C0E9430:
	#data bank12.loc_8c129560
loc_8C0E9434:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0e9438:
	mov 0x14,r1

loc_8c0e943a:
	mov 0x21,r0
	mov.b r1,@(r0,r14)

loc_8C0E943E:
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0E9534,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov 0x15,r5 ; r5 set to 0x15
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0E95Bc
	mov.l @r15+,r14

loc_8C0E9466:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xC0,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.b @(r0,r13),r2
	mov.w @(0xB0,PC),r12
	cmp/eq r2,r3
	bt.s loc_8c0e948e
	add r13,r12
	mov.b @(r0,r13),r7
	mov 0x21,r0
	mov.l @(0xB0,PC),r3
	mov 0x15,r5
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4

loc_8C0E948E:
	mov 0x22,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0e94d6
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e94d6
	mov.b @(0x4,r12),r0
	tst r0,r0
	bf loc_8c0e94d6
	mov.w @(0x8A,PC),r0
	mov.l @(r0,r13),r5
	add 0x35,r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0e94c0
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	bra loc_8c0e94cc
	fmov fr3,@(r0,r13)

loc_8C0E94C0:
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)

loc_8C0E94CC:
	mov.l @(0x6C,PC),r3
	jsr @r3
	nop 
	bra loc_8c0e94e2
	nop 

loc_8C0E94D6:
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)

loc_8C0E94E2:
	mov.b @(0x4,r12),r0
	tst r0,r0
	bt loc_8c0e955a
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c0e9510
	cmp/eq 0x01,r0
	bt loc_8c0e9518
	cmp/eq 0x02,r0
	bt loc_8c0e951c
	cmp/eq 0x03,r0
	bt loc_8c0e9520
	cmp/eq 0x04,r0
	bt loc_8c0e9524
	cmp/eq 0x05,r0
	bt loc_8c0e9540
	bra loc_8c0e9546
	nop 

loc_8C0E9510:
	mov 0x21,r0
	mov 0x07,r3
	bra loc_8c0e9546
	mov.b r3,@(r0,r14)

loc_8C0E9518:
	bra loc_8c0e9542
	mov 0x03,r1

loc_8C0E951C:
	bra loc_8c0e9526
	mov 0x0B,r2

loc_8C0E9520:
	bra loc_8c0e9542
	mov 0x13,r1

loc_8C0E9524:
	mov 0x11,r2

loc_8C0E9526:
	mov 0x21,r0
	bra loc_8c0e9546
	mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e952c:
	#data 0x02a4
loc_8c0e952e:
	#data 0x0141
loc_8c0e9530:
	#data 0x014b
loc_8c0e9532:
	#data 0x01c8
	#align4

loc_8C0E9534:
	#data bank03.loc_8c034e8c
loc_8C0E9538:
	#data bank03.loc_8c034F54
loc_8C0E953C:
	#data bank04.loc_8c04CC1c

;==============================================
loc_8C0E9540:
	mov 0x15,r1

loc_8C0E9542:
	mov 0x21,r0
	mov.b r1,@(r0,r14)

loc_8C0E9546:
	lds.l @r15+,pr
	mov 0x21,r0
	mov.l @(0xF4,PC),r3
	mov.b @(r0,r14),r6
	mov 0x15,r5
	mov.l @r15+,r12
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0E955A:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E9564:
	mov.l r14,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	mov r5,r13
	fmov.s @(r0,r13),fr3
	mov r4,r14
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E9634,pc),r0 ; r0 set to 0x14b
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8C0E958e
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x14c
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E9636,pc),r0 ; r0 set to 0x12c
	bra loc_8C0E95B6
	mov.b r3,@(r0,r14)

loc_8C0E958E:
	mov.w @(loc_8C0E9638,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r13),r3
	mov.b @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8C0E95B6
	mov.b @(r0,r13),r2
	mov 0x0B,r3 ; r3 set to 0x0b
	cmp/ge r3,r2
	bf loc_8C0E95A4
	bra loc_8C0E95A6
	mov 0x00,r7

loc_8C0E95A4:
	mov.b @(r0,r13),r7

loc_8C0E95A6:
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.l @r15+,r13
	mov.l @(loc_8C0E9644,pc),r2 ; r2 set to 0x8C034F54, r2 set to 0x8C034F54
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	mov.b @(r0,r14),r6
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0E95B6:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E95BC:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0E95Ea
	mov.b @(0x05,r5),r0
	tst r0,r0
	bf loc_8C0E95Fc
	mov.w @(loc_8C0E963A,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8C0E95Fc
	mov.w @(loc_8C0E963C,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8C0E960c
	bra loc_8C0E95Fc
	nop

loc_8c0e95ea:
	mov.b @(0x05,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0e95fc
	mov.w @(loc_8c0e963a,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1E,r0
	bt loc_8c0e960c

loc_8C0E95FC:
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E9636,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E960C:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0E9648,pc),r1 ; r1 set to 0x8C15F4A4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E9620:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E9636,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E962E:
	mov.l @(loc_8C0E964C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E9634:
	#data 0x014b
loc_8C0E9636:
	#data 0x012c
loc_8C0E9638:
	#data 0x0141
loc_8C0E963A:
	#data 0x01D0
loc_8C0E963C:
	#data 0x01E9
	#align4

loc_8C0E9640:
	#data bank03.loc_8c034e8c
loc_8C0E9644:
	#data bank03.loc_8c034F54
loc_8C0E9648:
	#data bank15.loc_8c15F4A4
loc_8C0E964C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e9650:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x14C,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e9674
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x126,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0e9674:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0E967C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E97AC,pc),r1 ; r1 set to 0x8C15F4Ac
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E9690:
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
	mov.l @(0x108,PC),r3
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
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0xFE,r3
	mov.b r2,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x9A,PC),r0
	mov.w @(r0,r13),r0
	mov.w r0,@(0x1C,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x82,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0e972e
	mov 0x03,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0E972E:
	mov.l @(0x90,PC),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0E9740:
	mov.w @(loc_8C0E97A0,pc),r3 ; r3 set to 0x158
	mov.w @(0x1C,r4),r0
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.w @r3,r3
	extu.w r3,r3
	cmp/eq r3,r0
	bt loc_8C0E975c
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E979C,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E975C:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0E97C4,pc),r3 ; r3 set to 0x8C034DEe
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	jmp @r3
	fmov.s fr2,@(r0,r4)

;unused
	rts
	nop

;----------------------------------------------
loc_8C0E9782:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E979C,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0E9790:
	mov.l @(loc_8C0E97C8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e9796:
	#data 0x3401
loc_8c0e9798:
	#data 0x00dc
loc_8c0e979a:
	#data 0x00c0
loc_8c0e979c:
	#data 0x012c
loc_8c0e979e:
	#data 0x01a3
loc_8c0e97a0:
	#data 0x0158
loc_8c0e97a2:
	#data 0x0130
	#align4

loc_8C0E97A4:
	#data bank04.loc_8c044F12
loc_8C0E97A8:
	#data loc_8c0e967c
loc_8C0E97AC:
	#data bank15.loc_8c15F4Ac
loc_8C0E97B0:
	#data bank12.loc_8c129560
loc_8C0E97B4:
	#data bank12.loc_8c1294C8
loc_8C0E97B8:
	#data 0x42200000
loc_8C0E97BC:
	#data 0x43700000
loc_8C0E97C0:
	#data bank03.loc_8c034e8c
loc_8C0E97C4:
	#data bank03.loc_8c034dee
loc_8C0E97C8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e97cc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x03,r5
	mov.l @(0x15C,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e980e
	mov r0,r4
	mov.l @(0x150,PC),r3
	mov.w @(0x13A,PC),r2
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x11C,PC),r0
	mov.w @(r0,r14),r0
	mov.w r0,@(0x1C,r4)

loc_8c0e980e:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E981A:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E993C,pc),r1 ; r1 set to 0x8C15F4Bc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E982C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E992A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E992A,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E992C,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0E9940,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0E992E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E9930,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E9944,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0E9948,pc),r0 ; r0 set to 0x8C15F4Cc
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0E989C:
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.b r3,@(r0,r4)
	mov 0x03,r6 ; r6 set to 0x03
	mov.l @(loc_8C0E994C,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov 0x17,r5

loc_8C0E98AA:
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.b r3,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.l @(loc_8C0E994C,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x07,r6 ; r6 set to 0x07
	mov.b r2,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8C0E98BE:
	mov 0x24,r0
	mov 0x0B,r3
	mov.b r3,@(r0,r4)
	mova @(0x88,PC),r0
	fmov @r0,fr4
	mov.w @(0x66,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0e98d4
	mova @(0x80,PC),r0
	fmov @r0,fr4

loc_8C0E98D4:
	mov 0x34,r0
	mov.l @(0x80,PC),r1
	fmov @(r0,r4),fr3
	mov 0x08,r6
	lds r1,fpul
	fadd fr4,fr3
	mov.l @(0x68,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8C0E98F2:
	mov 0x24,r0
	mov 0x0B,r3
	mov.b r3,@(r0,r4)
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov.w @(0x32,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0e9908
	mova @(0x58,PC),r0
	fmov @r0,fr4

loc_8C0E9908:
	mov 0x34,r0
	mov.l @(0x58,PC),r1
	fmov @(r0,r4),fr3
	mov 0x08,r6
	lds r1,fpul
	fadd fr4,fr3
	mov.l @(0x34,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e9926:
	#data 0x3500
loc_8c0e9928:
	#data 0x0158
loc_8c0e992a:
	#data 0x00dc
loc_8c0e992c:
	#data 0x00c0
loc_8c0e992e:
	#data 0x012c
loc_8c0e9930:
	#data 0x01a3
loc_8c0e9932:
	#data 0x0130
	#align4

loc_8C0E9934:
	#data bank04.loc_8c044F12
loc_8C0E9938:
	#data loc_8c0e981a
loc_8C0E993C:
	#data bank15.loc_8c15F4Bc
loc_8C0E9940:
	#data bank12.loc_8c129560
loc_8C0E9944:
	#data bank12.loc_8c1294C8
loc_8C0E9948:
	#data bank15.loc_8c15F4Cc
loc_8C0E994C:
	#data bank03.loc_8c034e8c
loc_8C0E9950:
	#data 0x436CAAAa
loc_8C0E9954:
	#data 0xC36CAAAa
loc_8C0E9958:
	#data 0x4320B6Db
loc_8C0E995c:
	#data 0x4321AAAa
loc_8C0E9960:
	#data 0xC321AAAa
loc_8C0E9964:
	#data 0x43520000

;==============================================
loc_8C0E9968:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0E9A68,pc),r0 ; r0 set to 0x8C15F4Dc
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0E997C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l r3,@r15
	mov.l @(loc_8C0E9A6C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0E9A5E,pc),r0 ; r0 set to 0x158
	mov.l @r15,r2
	mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???
	mov.w @(0x1C,r14),r0
	cmp/eq r0,r3
	bt loc_8C0E99A4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0E9A3a
	mov.l @r15+,r14

loc_8C0E99A4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E99AC:
	mov.l @(0x18,r4),r5
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0E9A60,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8C0E9A3a
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r3
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0E9A60,pc),r0 ; r0 set to 0x141
	extu.b r3,r3
	mov.b @(r0,r5),r2
	cmp/eq r2,r3
	movt r0
	tst r6,r0
	bt loc_8C0E99Ea
	mov.w @(loc_8C0E9A60,pc),r0 ; r0 set to 0x141
	mov 0x22,r1 ; r1 set to 0x22
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0E9A6C,pc),r3 ; r3 set to 0x8C034DEe
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	and 0x01,r0
	mov.b r0,@r1
	mov.w @(loc_8C0E9A62,pc),r0 ; r0 set to 0x142
	jmp @r3
	mov.b r6,@(r0,r4)

loc_8C0E99EA:
	rts
	nop

;----------------------------------------------
loc_8C0E99EE:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c0e9a20
	mov.l @(0x18,r14),r4
	mov.w @(0x5E,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(0x1C,r14),r0
	cmp/eq r0,r3
	bt loc_8c0e9a16
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0x64,PC),r3
	mov 0x09,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C0E9A16:
	lds.l @r15+,pr
	mov.l @(0x50,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0E9A20:
	mov.l @(0x48,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0e9a34
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0e9a3a
	mov.l @r15+,r14

loc_8C0E9A34:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E9A3A:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E9A64,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E9A74,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0E9A4C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E9A64,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E9A74,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E9A5E:
	#data 0x0158
loc_8C0E9A60:
	#data 0x0141
loc_8C0E9A62:
	#data 0x0142
loc_8C0E9A64:
	#data 0x012c
	#align4

loc_8C0E9A68:
	#data bank15.loc_8c15F4Dc
loc_8C0E9A6C:
	#data bank03.loc_8c034dee
loc_8C0E9A70:
	#data bank03.loc_8c034e8c
loc_8C0E9A74:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e9a78:
	mov.l r14,@-r15
	mov 0x03,r5
	sts.l pr,@-r15
	mov.l @(0x124,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e9ab4
	mov r0,r4
	mov 0x00,r5
	mov.l @(0x114,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x108,PC),r3
	mov.l r14,@(0x18,r4)
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
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8C0E9aB4:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
;unused
loc_8c0e9abe:
	mov.l r14,@-r15
	mov 0x03,r5
	mov.l r13,@-r15
	mov 0x00,r6
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	mov r4,r14
	mov 0x01,r13
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e9afe
	mov r0,r4
	mov.l @(0xCC,PC),r3
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(0xB2,PC),r3
	mov.b r13,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8c0e9afe:
	mov.l @(0xA4,PC),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e9b32
	mov r0,r4
	mov.l @(0x98,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0x8A,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov 0x21,r0
	mov.b r13,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8c0e9b32:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E9B3E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x03,r5
	mov.l @(0x58,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e9b82
	mov r0,r4
	mov.l @(0x4C,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.w @(0x2E,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_8C0E9B82:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E9B8E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E9BAC,pc),r1 ; r1 set to 0x8C15F4Ec
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e9ba0:
	#data 0x3501
	#align4

loc_8C0E9BA4:
	#data bank04.loc_8c044F12
loc_8C0E9BA8:
	#data loc_8c0e9B8e
loc_8C0E9BAC:
	#data bank15.loc_8c15F4Ec

;==============================================
loc_8C0E9BB0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E9CE4,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E9CE4,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E9CF4,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E9CE6,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0E9CE8,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E9CEA,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E9CF8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0E9CE8,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov.w @(loc_8C0E9CEC,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0E9CFC,pc),r0  ; r0 set to 0x8C0E9CFc
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0E9C38
	mov 0x10,r0 ; r0 set to 0x10
	mov.w r0,@(0x1C,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0D,r3 ; r3 set to 0x0d
	bra loc_8C0E9C54
	mov.b r3,@(r0,r14)
	
loc_8C0E9C38:
	mov 0x04,r0 ; r0 set to 0x04
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C0E9C4e
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0B,r2 ; r2 set to 0x0b
	bra loc_8C0E9C54
	mov.b r2,@(r0,r14)

loc_8C0E9C4E:
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x09,r1 ; r1 set to 0x09
	mov.b r1,@(r0,r14)

loc_8C0E9C54:
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.l @(loc_8C0E9D00,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
	add 0x0C,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E9C66:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x7C,PC),r3
	mov.l @(0x18,r14),r4
	mov.l @(0x90,PC),r2
	add r4,r3
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0e9c9c
	mov.w @(0x68,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0e9c9c
	mov 0x00,r3
	mov 0x01,r5
	mov.b r3,@(r0,r14)
	bsr loc_8c0e9b3e
	mov r14,r4
	mov 0x02,r5
	bsr loc_8c0e9b3e
	mov r14,r4

loc_8C0E9C9C:
	mov.l @r15,r3
	mov.b @(0x7,r3),r0
	tst r0,r0
	bt loc_8c0e9cb4
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0e9cbc
	mov.l @r15+,r14

loc_8C0E9CB4:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E9CBC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0e9cde
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xA,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0E9CDE:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0e9ce4:
	#data 0x00dc
loc_8c0e9ce6:
	#data 0x00c0
loc_8c0e9ce8:
	#data 0x012c
loc_8c0e9cea:
	#data 0x01a3
loc_8c0e9cec:
	#data 0x041c
loc_8c0e9cee:
	#data 0x02a4
loc_8c0e9cf0:
	#data 0x0141
	#align4

loc_8C0E9CF4:
	#data bank12.loc_8c129560
loc_8C0E9CF8:
	#data bank12.loc_8c1294C8
loc_8C0E9CFC:
	#data 0x3F99999a
loc_8C0E9D00:
	#data bank03.loc_8c034e8c
loc_8C0E9D04:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0E9D08:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0E9D1A,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0E9D1C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E9D1A:
	#data 0x012c
	#align4

loc_8C0E9D1C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0e9d20:
	mov.l r14,@-r15
	mov 0x03,r5
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0x154,PC),r3
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0e9d68
	mov r0,r14
	mov.l @(0x148,PC),r3
	mov.l r3,@(0x10,r14)
	mov.w @(0x132,PC),r3
	mov.l r13,@(0x18,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov.l @(0x138,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	jsr @r3
	fmov fr3,@(r0,r14)
	mov 0x20,r1
	and 0x03,r0
	add r14,r1
	add 0x04,r0
	mov.b r0,@r1
	mov 0x21,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c0e9d68:
	mov r14,r0
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E9D74:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0E9E8C,pc),r1 ; r1 set to 0x8C15F520
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0E9D86:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0E9E74,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0E9E74,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0E9E90,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0E9E76,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C0E9E78,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0E9E7A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0E9E94,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0E9E98,pc),r0 ; r0 set to 0x8C15F530
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x06,r14)
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0E9DFE:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov 0x0A,r3 ; r3 set to 0x0a
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E9E7C,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	bsr loc_8C0EA13e
	mov r14,r4
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0E9E7E,pc),r0 ; r0 set to 0x141
	mov.b r4,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	bra loc_8C0EA0E0
	mov.l @r15+,r14

loc_8C0E9E36:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov 0x0C,r3 ; r3 set to 0x0c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E9E7C,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	bsr loc_8C0EA13e
	mov r14,r4
	bsr loc_8C0EA190
	mov r14,r4
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0E9E7E,pc),r0 ; r0 set to 0x141
	mov.b r4,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	bra loc_8C0EA0E0
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E9E72:
	#data 0x3502
loc_8C0E9E74:
	#data 0x00Dc
loc_8C0E9E76:
	#data 0x00C0
loc_8C0E9E78:
	#data 0x012c
loc_8C0E9E7A:
	#data 0x01A3
loc_8C0E9E7C:
	#data 0x041c
loc_8C0E9E7E:
	#data 0x0141
	#align4

loc_8C0E9E80:
	#data bank04.loc_8c044F12
loc_8C0E9E84:
	#data loc_8c0e9D74
loc_8C0E9E88:
	#data bank03.loc_8c03319e
loc_8C0E9E8C:
	#data bank15.loc_8c15F520
loc_8C0E9E90:
	#data bank12.loc_8c129560
loc_8C0E9E94:
	#data bank12.loc_8c1294C8
loc_8C0E9E98:
	#data bank15.loc_8c15F530

;==============================================
loc_8C0E9E9C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov 0x00,r13 ; r13 set to 0x00
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0E9FD4,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r13,@(r0,r14)
	bsr loc_8C0EA13e
	mov r14,r4
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	mov.w @(loc_8C0E9FD6,pc),r0 ; r0 set to 0x141
	mov.b r13,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	bra loc_8C0EA0E0
	mov.l @r15+,r14

loc_8C0E9ED6:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0E9FD8,pc),r0 ; r0 set to 0x8C15F550
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0E9EEA:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E9F02
	bsr loc_8C0EA1C6
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0E9FFe
	mov.l @r15+,r14

loc_8c0e9f02:
	mov.l @(loc_8c0e9fdc,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf.s loc_8c0e9f14
	mov r14,r4
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c0e9f14:
	bsr loc_8c0ea1c6
	nop
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0ea098
	mov.l @r15+,r14

loc_8C0E9F20:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E9F6c
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
	bra loc_8C0EA04c
	mov.l @r15+,r14
	
loc_8c0e9f6c:
	mov.l @(loc_8c0e9fdc,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0e9f7c
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c0e9f7c:
	mov 0x5C,r1
	mov r14,r4
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
	lds.l @r15+,pr
	bra loc_8c0ea098
	mov.l @r15+,r14

loc_8C0E9FBC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0E9FE0
	bsr loc_8C0EA1C6
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0EA04c
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0E9FD4:
	#data 0x041c
loc_8C0E9FD6:
	#data 0x0141
	#align4

loc_8C0E9FD8:
	#data bank15.loc_8c15F550
loc_8C0E9FDC:
	#data bank03.loc_8c0332E0

;==============================================
loc_8c0e9fe0:
	mov.l @(loc_8c0ea0cc,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf.s loc_8c0e9ff2
	mov r14,r4
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c0e9ff2:
	bsr loc_8c0ea1c6
	nop
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0ea098
	mov.l @r15+,r14

loc_8c0e9ffe:
	mov 0x20,r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r4),r3
	mov.l @(0xC8,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov.w @(0xB4,PC),r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov @(r0,r4),fr3
	mova @(0xBC,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	fmov fr2,fr4
	fadd fr3,fr4
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf loc_8c0ea028
	fneg fr4

loc_8c0ea028:
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	fdiv fr3,fr4
	ftrc fr4,fpul
	sts fpul,r5
	cmp/pz r5
	bt loc_8c0ea038
	add 0x07,r5

loc_8c0ea038:
	shar r5
	mov.w @(0x1C,r4),r0
	shar r5
	shar r5
	cmp/gt r5,r0
	bt loc_8c0ea098
	mov r5,r0
	nop 
	bra loc_8c0ea0e0
	mov.w r0,@(0x1C,r4)

loc_8c0ea04c:
	mov 0x20,r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r4),r3
	mov.l @(0x7C,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov.w @(0x66,PC),r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov @(r0,r4),fr3
	mova @(0x6C,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	fmov fr2,fr4
	fadd fr3,fr4
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf loc_8c0ea076
	fneg fr4

loc_8c0ea076:
	mova @(0x60,PC),r0
	fmov @r0,fr3
	fdiv fr3,fr4
	ftrc fr4,fpul
	sts fpul,r5
	cmp/pz r5
	bt loc_8c0ea086
	add 0x0F,r5

loc_8c0ea086:
	mov.w @(0x1C,r4),r0
	mov 0xFC,r3
	shad r3,r5
	cmp/gt r5,r0
	bt loc_8c0ea098
	mov r5,r0
	nop 
	bra loc_8c0ea0e0
	mov.w r0,@(0x1C,r4)

loc_8c0ea098:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0ea0dc,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C0EA0C6,pc),r0
	mov.b @(r0,r14),r0
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0EA0C8,pc),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c0ea0b8
	mov.w @(loc_8C0EA0CA,pc),r0
	mov 0x00,r2
	bra loc_8c0ea0be
	mov.b r2,@(r0,r14)

loc_8c0ea0b8:
	mov.w @(loc_8C0EA0CA,pc),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)

loc_8c0ea0be:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EA0C4:
	#data 0x041C
loc_8C0EA0C6:
	#data 0x0142
loc_8C0EA0C8:
	#data 0x0141
loc_8C0EA0CA:
	#data 0x012C
	#align4

loc_8c0ea0cc:
	#data bank03.loc_8c0332e0

loc_8c0ea0d0:
	#data bank15.loc_8c15f4fc
loc_8c0ea0d4:
	#data 0x41892492
loc_8c0ea0d8:
	#data 0x40092492
loc_8c0ea0dc:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0ea0e0:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r3
	mov.l @(0x148,PC),r4
	add r14,r3
	sts.l pr,@-r15
	mov.b @r3,r3
	mov.w @(0x1C,r14),r0
	extu.b r3,r3
	shll r3
	add r4,r3
	mov.w @r3,r2
	cmp/ge r2,r0
	bf loc_8c0ea10e
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r4),r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c0ea10e:
	mov.w @(0x118,PC),r0
	mov 0x7F,r7
	mov.l @(0x120,PC),r3
	mov 0x12,r5
	mov.b @(r0,r14),r0
	mov.l @(0x11C,PC),r2
	and r0,r7
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r0,r3
	mov.w @(0x1C,r14),r0
	mov.b @(r0,r3),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x1E,r14),r0
	mov r0,r3
	mov.w @(0xF4,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ea13e:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	mov.l @(0xF0,PC),r8
	extu.b r0,r0
	mov.l @(0xF0,PC),r3
	shll2 r0
	shll2 r0
	jsr @r3
	add r0,r8
	and 0x03,r0
	shll2 r0
	fmov @(r0,r8),fr4
	mov.w @(0xCC,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0ea16a
	mov 0x34,r0
	fneg fr4

loc_8c0ea16a:
	fmov @(r0,r14),fr3
	mov 0x20,r3
	add r14,r3
	fadd fr4,fr3
	mov 0x38,r2
	add r14,r2
	fmov fr3,@(r0,r14)
	mov.b @r3,r3
	mov.l @(0xC8,PC),r0
	extu.b r3,r3
	fmov @r2,fr2
	shll2 r3
	fmov @(r0,r3),fr3
	fsub fr3,fr2
	fmov fr2,@r2
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts 
	mov.l @r15+,r14

loc_8C0EA190:
	mov.l r14,@-r15
	mov 0x68,r0 ; r0 set to 0x68
	fldi0 fr3
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8C0EA240,pc),r3 ; r3 set to 0x8C03319e
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	jsr @r3
	fmov.s fr3,@(r0,r14)
	mov 0x03,r4 ; r4 set to 0x03
	mov.l @(loc_8C0EA248,pc),r3 ; r3 set to 0x8C15F680
	and r0,r4 ; r4 ??
	extu.b r4,r5
	shll2 r5
	shll r5
	add r3,r5
	fmov.s @r5,fr3 ; r3 ??? bc r5 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r5),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EA1C6:
	mov r4,r3
	mov.l @(loc_8C0EA24C,pc),r1 ; r1 set to 0x8C15F6A0
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EA1D8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_8C0EA240,pc),r3 ; r3 set to 0x8C03319e
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x06,r14)
	mov 0x07,r4 ; r4 set to 0x07
	mov.l @(loc_8C0EA250,pc),r3 ; r3 set to 0x8C15F6B0
	and r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C0EA240,pc),r2 ; r2 set to 0x8C03319e
	extu.b r4,r5
	shll2 r5
	shll r5
	add r3,r5
	fmov.s @r5,fr3 ; r3 ??? bc r5 is ???
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r5),fr3
	mov 0x68,r0 ; r0 set to 0x68
	jsr @r2
	fmov.s fr3,@(r0,r14)
	mov 0x07,r4 ; r4 set to 0x07
	mov.l @(loc_8C0EA254,pc),r3 ; r3 set to 0x8C15F6F0
	and r0,r4 ; r4 ??
	extu.b r4,r5
	shll2 r5
	shll r5
	add r3,r5
	fmov.s @r5,fr3 ; r3 ??? bc r5 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r5),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ea22a:
	#data 0x0141
loc_8c0ea22c:
	#data 0x0142
loc_8c0ea22e:
	#data 0x0130
	#align4

loc_8C0EA230:
	#data bank15.loc_8c15F570
loc_8C0EA234:
	#data bank15.loc_8c15F582
loc_8C0EA238:
	#data bank03.loc_8c034F54
loc_8C0EA23C:
	#data bank15.loc_8c15F5Cc
loc_8C0EA240:
	#data bank03.loc_8c03319e
loc_8C0EA244:
	#data bank15.loc_8c15F65c
loc_8C0EA248:
	#data bank15.loc_8c15F680
loc_8C0EA24C:
	#data bank15.loc_8c15F6A0
loc_8C0EA250:
	#data bank15.loc_8c15F6B0
loc_8C0EA254:
	#data bank15.loc_8c15F6F0

;==============================================
loc_8C0EA258:
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
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c0ea2ae
	fmov fr2,@(r0,r14)
	mov.b @(0x6,r14),r0
	mov.l @(0xD4,PC),r3
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x6,r14)
	mov.l @(0xD0,PC),r1
	and 0x03,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x7,r14)

loc_8C0EA2AE:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EA2B4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x7,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x7,r14)
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0ea30c
	mov.b @(0x6,r14),r0
	mov.l @(0xA8,PC),r3
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x6,r14)
	mov 0x07,r4
	mov.l @(0xA8,PC),r3
	and r0,r4
	mov.l @(0x9C,PC),r2
	extu.b r4,r5
	shll2 r5
	shll r5
	add r3,r5
	fmov @r5,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov 0x68,r0
	jsr @r2
	fmov fr3,@(r0,r14)
	mov 0x07,r4
	mov.l @(0x8C,PC),r3
	and r0,r4
	extu.b r4,r5
	shll2 r5
	shll r5
	add r3,r5
	fmov @r5,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8C0EA30C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EA312:
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
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0EA34C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0EA370,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0EA384,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0EA35E:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0EA370,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0EA384,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EA370:
	#data 0x012c
	#align4

loc_8C0EA374:
	#data bank03.loc_8c03319e
loc_8C0EA378:
	#data bank15.loc_8c15F730
loc_8C0EA37C:
	#data bank15.loc_8c15F734
loc_8C0EA380:
	#data bank15.loc_8c15F774
loc_8C0EA384:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0EA388:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x08,r0
	mov.l @(0x164,PC),r3
	fmov fr4,@(r0,r15)
	mov 0x04,r0
	mov 0x00,r6
	mov r4,r14
	fmov fr5,@(r0,r15)
	mov.w r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ea3ee
	mov r0,r4
	mov.l @(0x150,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.w @(0x12C,PC),r0
	mov.l r14,@(r0,r4)
	mov 0x20,r0
	mov.w @r15,r3
	extu.w r3,r3
	shlr8 r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @r15,r2
	mov.w @(0x11C,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov 0x01,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8C0EA3EE:
	mov r4,r0
	nop 
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EA3FA:
	mov 0x21,r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0ea40c
	mov.l @(0x18,r4),r14
	mov.w @(0xE0,PC),r0
	mov 0x04,r3
	mov.l r3,@(r0,r14)

loc_8C0EA40C:
	mov 0x20,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0ea41a
	mov r14,r5
	bra loc_8c0ea420
	mov.l @r15+,r14

loc_8C0EA41A:
	mov r14,r5
	bra loc_8c0ea5bc
	mov.l @r15+,r14

loc_8C0EA420:
	mov r4,r3
	mov.l @(0xDC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0EA432:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0EA4EC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0EA504,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0EA4EC,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0EA4EE,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0EA4F0,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EA4F2,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EA508,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x08,r3 ; r3 set to 0x08
	fldi0 fr4
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b r2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(loc_8C0EA50C,pc),r3 ; r3 set to 0x8C03319e
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	jsr @r3
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_8C0EA4F4,pc),r2 ; r2 set to 0x80
	extu.b r0,r4 ; r4 set to 0x6c
	mova @(loc_8C0EA510,pc),r0  ; r0 set to 0x8C0EA510
	mov.l @(loc_8C0EA50C,pc),r3 ; r3 set to 0x8C03319e
	sub r2,r4 ; r4 set to 0xFFFFFFEc
	fmov.s @r0,fr2 ; r2 ??
	shll8 r4 ; r4 set to 0xFFFFEC00
	shll r4 ; r4 set to 0xFFFFD800
	lds r4,fpul
	mova @(loc_8C0EA514,pc),r0  ; r0 set to 0x8C0EA514
	fmov.s @r0,fr1
	mov 0x5C,r0 ; r0 set to 0x5c
	float fpul,fr3
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fdiv fr1,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0EA518,pc),r0  ; r0 set to 0x8C0EA518
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	jsr @r3
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	and 0x03,r0
	mov.l @(loc_8C0EA51C,pc),r2 ; r2 set to 0x8C034C38
	mov r0,r6 ; r6 set to 0x6c
	mov r14,r4 ; r4 ??? bc r14 is ???
	add 0x05,r6 ; r6 set to 0x71
	mov 0x1B,r5 ; r5 set to 0x1b
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ea4e6:
	#data 0x00cc
loc_8c0ea4e8:
	#data 0x3600
loc_8c0ea4ea:
	#data 0x02c0
loc_8C0EA4EC:
	#data 0x00Dc
loc_8C0EA4EE:
	#data 0x00C0
loc_8C0EA4F0:
	#data 0x012c
loc_8C0EA4F2:
	#data 0x01A3
loc_8C0EA4F4:
	#data 0x0080
	#align4

loc_8C0EA4F8:
	#data bank04.loc_8c044F12
loc_8C0EA4FC:
	#data loc_8c0eA3Fa
loc_8C0EA500:
	#data bank15.loc_8c15F7B4
loc_8C0EA504:
	#data bank12.loc_8c129560
loc_8C0EA508:
	#data bank12.loc_8c1294C8
loc_8C0EA50C:
	#data bank03.loc_8c03319e
loc_8C0EA510:
	#data 0x3FD55555
loc_8C0EA514:
	#data 0x47800000
loc_8C0EA518:
	#data 0xBECDB6Db
loc_8C0EA51C:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0EA520:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA4,PC),r3
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
	mov.w @(0x5A,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0ea5ac
	mov.b @(0x4,r14),r0
	mov 0x00,r13
	mov.w @(0x4A,PC),r12
	mov 0x03,r11
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mova @(0x4C,PC),r0
	fmov @r0,fr15

loc_8C0EA58E:
	mov 0x21,r0
	mov.b @(r0,r14),r5
	mov 0x38,r0
	fmov @(r0,r14),fr5
	mov 0x34,r0
	fmov @(r0,r14),fr4
	extu.b r5,r5
	fadd fr15,fr5
	add r12,r5
	bsr loc_8c0ea388
	mov r14,r4
	add 0x01,r13
	extu.w r13,r2
	cmp/ge r11,r2
	bf loc_8c0ea58e

loc_8C0EA5AC:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EA5BC:
	mov r4,r3
	mov.l @(0x1C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ea5ce:
	#data 0x041C
loc_8c0ea5d0:
	#data 0x0100
	#align4

loc_8C0EA5D4:
	#data bank03.loc_8c034D8c
loc_8C0EA5D8:
	#data 0x41092492
loc_8C0EA5DC:
	#data bank15.loc_8c15F7C4

;==============================================
loc_8C0EA5E0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	fmov fr15,@-r15
	mov.w @(0x154,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x14C,PC),r2
	add 0x01,r0
	mov.l @(0x154,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x146,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x142,PC),r0
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
	mov.w @(0x126,PC),r0
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
	mov 0x08,r3
	fldi0 fr4
	mov 0x24,r0
	mov.l @(0x114,PC),r12
	mov.b @(r0,r13),r2
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	jsr @r12
	fmov fr4,@(r0,r14)
	mov.w @(0xEE,PC),r3
	extu.b r0,r4
	mov 0x07,r2
	sub r3,r4
	shad r2,r4
	lds r4,fpul
	mova @(0xF4,PC),r0
	fmov @r0,fr15
	mova @(0xF4,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr15,fr3
	jsr @r12
	fmov fr3,@(r0,r14)
	extu.b r0,r4
	add 0x60,r4
	shll8 r4
	shll2 r4
	lds r4,fpul
	mova @(0xDC,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r14)
	mova @(0xD4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	jsr @r12
	fmov fr3,@(r0,r14)
	and 0x03,r0
	mov.l @(0xCC,PC),r3
	mov r0,r6
	mov 0x1B,r5
	add 0x09,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EA6B8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xB0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0xA8,PC),r3
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	mov 0x22,r2
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
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	add r14,r2
	mov.w @(0x3A,PC),r1
	mov.b @r2,r2
	add r14,r1
	add r2,r0
	and 0x01,r0
	mov.b r0,@r1
	mov.w @(0x34,PC),r0
	mov.l @r15,r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0ea72a
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0EA72A:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EA732:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0EA748,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0EA778,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ea744:
	#data 0x00dc
loc_8c0ea746:
	#data 0x00c0
loc_8c0ea748:
	#data 0x012c
loc_8c0ea74a:
	#data 0x01a3
loc_8c0ea74c:
	#data 0x0080
loc_8c0ea74e:
	#data 0x041c
	#align4

loc_8C0EA750:
	#data bank12.loc_8c129560
loc_8C0EA754:
	#data bank12.loc_8c1294C8
loc_8C0EA758:
	#data bank03.loc_8c03319e
loc_8C0EA75C:
	#data 0x47800000
loc_8C0EA760:
	#data 0x3FD55555
loc_8C0EA764:
	#data 0x40092492
loc_8C0EA768:
	#data 0xBECDB6Db
loc_8C0EA76C:
	#data bank03.loc_8c034C38
loc_8C0EA770:
	#data bank03.loc_8c034D8c
loc_8C0EA774:
	#data 0x8C26823c
loc_8C0EA778:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0EA77c:
	mov.l r14,@-r15
	mov 0x03,r5
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov r12,r6
	mov.l r10,@-r15
	mov 0x01,r11
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0xCA,PC),r10
	mov.l @(0xD0,PC),r9
	jsr @r9
	mov r12,r4
	tst r0,r0
	bt.s loc_8c0ea7c4
	mov r0,r14
	mov.l @(0xC8,PC),r2
	mov.b r11,@r14
	mov.l r2,@(0x10,r14)
	mov.l r13,@(0x18,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x20,r0
	mov.b r12,@(r0,r14)
	mov 0x21,r0
	mov.b r12,@(r0,r14)
	mov 0x26,r0
	mov.w r10,@(r0,r14)
	mov.w @(0xA6,PC),r0
	mov.l r13,@(r0,r14)
	mov r12,r0
	nop 
	mov.w r0,@(0x1C,r14)

loc_8c0ea7c4:
	mov 0x03,r5
	mov 0x02,r6
	jsr @r9
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0ea7f4
	mov r0,r4
	mov.l @(0x98,PC),r2
	mov.b r11,@r4
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r12,@(r0,r4)
	mov 0x21,r0
	mov.b r11,@(r0,r4)
	mov 0x26,r0
	mov.w r10,@(r0,r4)
	mov.w @(0x76,PC),r0
	mov.l r13,@(r0,r4)
	mov r12,r0
	nop 
	mov.w r0,@(0x1C,r4)

loc_8c0ea7f4:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r9
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ea822
	mov r0,r4
	mov.l @(0x68,PC),r2
	mov.b r11,@r4
	mov.l r2,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r11,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov 0x26,r0
	mov.w r10,@(r0,r4)
	mov.w @(0x46,PC),r0
	mov.l r13,@(r0,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)

loc_8c0ea822:
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
loc_8C0EA836:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0EA870,pc),r1 ; r1 set to 0x8C15F7D4
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0EA84A:
	mov.w @(loc_8C0EA866,pc),r0 ; r0 set to 0x12c
	mov 0x00,r6 ; r6 set to 0x00
	sts.l pr,@-r15
	mov.b r6,@(r0,r4)
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8C0EA874
	lds.l @r15+,pr
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x12b
	rts
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EA862:
	#data 0x3601
loc_8C0EA864:
	#data 0x00Cc
loc_8C0EA866:
	#data 0x012c
	#align4

loc_8C0EA868:
	#data bank04.loc_8c044F12
loc_8C0EA86C:
	#data loc_8c0eA836
loc_8C0EA870:
	#data bank15.loc_8c15F7D4

;==============================================
loc_8C0EA874:
	mov.b @(0x04,r4),r0
	mov.w @(loc_8C0EA9B6,pc),r3 ; r3 set to 0xDc
	add 0x01,r0
	mov.w @(loc_8C0EA9B6,pc),r1 ; r1 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l @(loc_8C0EA9C8,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add 0xF4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0EA9B8,pc),r0 ; r0 set to 0x12c
	mov 0x01,r7 ; r7 set to 0x01
	mov.b r7,@(r0,r4)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	add 0x7C,r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r3
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	add 0x78,r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r3
	mov.w @(loc_8C0EA9BA,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r3
	mov.w @(loc_8C0EA9BC,pc),r0 ; r0 set to 0x1A4
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r3
	mov 0x30,r0 ; r0 set to 0x30
	mov r4,r1
	add 0x50,r1
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0EA9CC,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0EA9B8,pc),r0 ; r0 set to 0x12c
	mov.b r7,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b r6,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0EA902
	bra loc_8C0EA90c
	lds.l @r15+,pr

loc_8C0EA902:
	bra loc_8C0EA962
	lds.l @r15+,pr

;unused
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8c0ea90c:
	mov.w @(loc_8c0ea9b4,pc),r0
	mov 0x07,r3
	mov.l r14,@-r15
	mov.l @(r0,r4),r5
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0EA9BE,pc),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0ea924
	mov 0xC0,r6
	mov 0x40,r6

loc_8c0ea924:
	exts.w r6,r6
	lds r6,fpul
	mov 0x34,r0
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0EA9D0,pc),r0
	fmov.s @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0EA9D4,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	add 0x54,r0
	mov.w r0,@(0x1C,r4)
	mov 0x00,r0
	mov.w r0,@(0x1E,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0ea958
	mov 0x09,r14
	mov 0x08,r14

loc_8c0ea958:
	mov.l @(loc_8c0ea9d8,pc),r3
	mov 0x16,r5
	mov r14,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0ea962:
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov 0x07,r6
	tst r3,r3
	bt.s loc_8c0ea970
	mov 0x00,r7
	mov r7,r6

loc_8c0ea970:
	mov 0x24,r0
	mov.b r6,@(r0,r4)
	mov.w @(0x3C,PC),r0
	mov.l @(r0,r4),r6
	mov.w @(0x44,PC),r0
	mov.l @(r0,r6),r6
	mov 0x34,r0
	fmov @(r0,r6),fr3
	fmov fr3,@(r0,r4)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov.w @(0x38,PC),r0
	fmov @(r0,r6),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x4A,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x2C,PC),r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c0ea9aa
	mov 0x47,r6
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0ea9ae

loc_8c0ea9aa:
	mov.w @(0xA,PC),r0
	mov.b r7,@(r0,r4)

loc_8c0ea9ae:
	mov.l @(0x28,PC),r3
	jmp @r3
	mov 0x16,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ea9b4:
	#data 0x00CC
loc_8c0ea9b6:
	#data 0x00DC
loc_8c0ea9b8:
	#data 0x012C
loc_8c0ea9ba:
	#data 0x01A3
loc_8c0ea9bc:
	#data 0x01A4
loc_8C0EA9BE:
	#data 0x0130
loc_8c0ea9c0:
	#data 0x020C
loc_8c0ea9c2:
	#data 0x041C
loc_8c0ea9c4:
	#data 0x0102
loc_8c0ea9c6:
	#data 0x01D0
	#align4

loc_8c0ea9c8:
	#data bank12.loc_8c129560
loc_8c0ea9cc:
	#data bank12.loc_8c1294c8
loc_8C0EA9D0:
	#data 0x3FD55555
loc_8C0EA9D4:
	#data 0x439A4924
loc_8c0ea9d8:
	#data bank03.loc_8c034e8c
loc_8c0ea9dC:
	#data 0x43BC9249

;==============================================
loc_8C0EA9E0:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0EA9Ec
	bra loc_8C0EAB1c
	nop

loc_8c0ea9ec:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x21,r0
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(loc_8c0eaaec,pc),r12
	tst r3,r3
	bf.s loc_8c0eaac8
	mov r5,r13
	mova @(loc_8C0EAAF0,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0EAAE2,pc),r0
	fmov.s @(r0,r13),fr2
	mov 0x38,r0
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c0eaa20
	mov.l @(loc_8C0EAAF4,pc),r1
	fmov.s @(r0,r14),fr1
	lds r1,fpul
	fsts fpul,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)

loc_8c0eaa20:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8c0eaab0
	mov.w @(loc_8C0EAAE4,pc),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x1C,r14),r0
	cmp/eq 0x1E,r0
	bf loc_8c0eaa44
	mov.l @(loc_8c0eaaf8,pc),r2
	mov 0x16,r5
	mov 0x13,r6
	jsr @r2
	mov r14,r4

loc_8c0eaa44:
	mov.w @(0x1C,r14),r0
	mov 0x50,r3
	cmp/gt r3,r0
	bf loc_8c0eaa72
	mov.w @(loc_8C0EAAE6,pc),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c0eaa72
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0x20,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r0
	tst 0x80,r0
	bt loc_8c0eaa72
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8c0eaafc,pc),r3
	xor 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	mov r0,r5
	jsr @r3
	mov r14,r4

loc_8c0eaa72:
	mov.w @(loc_8C0EAAE8,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0eaa8e
	mov.b @(0x05,r13),r0
	tst r0,r0
	bf loc_8c0eaa8e
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0eab12

loc_8c0eaa8e:
	mov.b @(0x05,r14),r0
	mov 0x02,r3
	mov.l @(loc_8c0eaaf8,pc),r1
	mov 0x12,r6
	add 0x01,r0
	mov r14,r4
	mov.b r0,@(0x05,r14)
	mov 0x16,r5
	mov.w @(loc_8C0EAAE4,pc),r0
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8c0eaab0:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0eab12
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0EAAE4,pc),r0
	bra loc_8c0eab12
	mov.b r3,@(r0,r14)

loc_8c0eaac8:
	mov.b @(0x05,r13),r0
	tst r0,r0
	bf loc_8c0eaad4
	mov.b @r13,r2
	tst r2,r2
	bf loc_8c0eab00

loc_8c0eaad4:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eabce
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EAAE2:
	#data 0x041C
loc_8C0EAAE4:
	#data 0x012C
loc_8C0EAAE6:
	#data 0x0141
loc_8C0EAAE8:
	#data 0x01D0
	#align4

loc_8c0eaaec:
	#data bank03.loc_8c034dee
loc_8C0EAAF0:
	#data 0x43BC9249
loc_8C0EAAF4:
	#data 0x40892492
loc_8c0eaaf8:
	#data bank03.loc_8c034e8c
loc_8c0eaafc:
	#data bank0b.loc_8c0b0b00

;==============================================
loc_8c0eab00:
	mov r13,r2
	mov.l @(loc_8c0eabe8,pc),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	jsr @r12
	mov r14,r4

loc_8c0eab12:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0eab1c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt.s loc_8c0eaba0
	mov r5,r13
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0eab3e
	mov 0x07,r4
	mov 0x00,r4

loc_8c0eab3e:
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0eab8c
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c0eab8c
	mov.w @(0x1C,r14),r0
	mov 0x3C,r3
	mov r0,r4
	cmp/gt r3,r4
	bf loc_8c0eab80
	mov 0x78,r1
	cmp/ge r1,r4
	bt loc_8c0eab80
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0x20,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r0
	tst 0x80,r0
	bt loc_8c0eab80
	mov.w @(0x1E,r14),r0
	mov.l @(0x7C,PC),r3
	xor 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	mov r0,r5
	jsr @r3
	mov r14,r4

loc_8c0eab80:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0eabb8

loc_8c0eab8c:
	mov 0x00,r0
	mov.l @(0x64,PC),r3
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov 0x48,r6
	mov 0x16,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0eaba0:
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0eabb8
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0eabc0
	mov.l @r15+,r14

loc_8c0eabb8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0EABC0:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0EABE4,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0EABCE:
	mov.b @(0x04,r4),r0
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C0EABF8,pc),r3 ; r3 set to 0x8C0450C0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0EABE4,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	jmp @r3
	mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EABE0:
	#data 0x0141
loc_8C0EABE2:
	#data 0x01D0
loc_8C0EABE4:
	#data 0x012c
	#align4

loc_8C0EABE8:
	#data bank12.loc_8c1294C8
loc_8C0EABEC:
	#data bank03.loc_8c034dee
loc_8C0EABF0:
	#data bank0b.loc_8c0b0B00
loc_8C0EABF4:
	#data bank03.loc_8c034e8c
loc_8C0EABF8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0EABFC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r5,r11
	mov.l r10,@-r15
	extu.w r11,r3
	mov.l r9,@-r15
	tst r3,r3
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.l @(0x138,PC),r13
	bf.s loc_8c0eac22
	mov 0x08,r4
	mov.l @(0x138,PC),r13
	mov 0x01,r4

loc_8C0EAC22:
	extu.w r11,r0
	cmp/eq 0x02,r0
	bf.s loc_8c0eac2e
	mov 0x00,r12
	mov.l @(0x130,PC),r13
	mov 0x09,r4

loc_8C0EAC2E:
	mova @(0x134,PC),r0
	mov.w @(0x112,PC),r9
	extu.b r4,r10
	mov.l @(0x128,PC),r8
	fmov @r0,fr14
	cmp/pl r10
	mova @(0x12C,PC),r0
	bf.s loc_8c0eac94
	fmov @r0,fr15

loc_8C0EAC40:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r8
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0eac8c
	mov r0,r4
	mov.l @(0x11C,PC),r3
	fmov fr15,fr0
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r11,@(r0,r4)
	mov 0x26,r0
	mov.w r9,@(r0,r4)
	mov.w @(0xE2,PC),r0
	mov.l @(0x18,r14),r3
	mov.l r3,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	mov.w @r13+,r3
	fmov @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr14,fr0
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	mov.w @r13+,r3
	fmov @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C0EAC8C:
	add 0x01,r12
	extu.b r12,r3
	cmp/ge r10,r3
	bf loc_8c0eac40

loc_8C0EAC94:
	mov r4,r0
	nop 
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

;----------------------------------------------
loc_8C0EACAE:
	mov.w @(loc_8C0EAD48,pc),r0 ; r0 set to 0xCc
	mov 0x04,r3 ; r3 set to 0x04
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(r0,r14),r5
	mov r14,r4
	mov.w @(loc_8C0EAD4A,pc),r0 ; r0 set to 0x2B8
	mov.l @(loc_8C0EAD70,pc),r1 ; r1 set to 0x8C15F82c
	mov.l r3,@(r0,r5)
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0xB8
	shll2 r0 ; r0 set to 0x2E0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_8C0EACCC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0EAD4C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0EAD74,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0EAD4C,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0EAD4E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0EAD50,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EAD52,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EAD78,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x08,r3 ; r3 set to 0x08
	fldi0 fr4
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r5),r2
	mov.b r3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0EAD7C,pc),r0 ; r0 set to 0x8C15F83c
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EAD46:
	#data 0x3602
loc_8C0EAD48:
	#data 0x00Cc
loc_8C0EAD4A:
	#data 0x02B8
loc_8C0EAD4C:
	#data 0x00Dc
loc_8C0EAD4E:
	#data 0x00C0
loc_8C0EAD50:
	#data 0x012c
loc_8C0EAD52:
	#data 0x01A3
	#align4

loc_8C0EAD54:
	#data bank15.loc_8c15F7E8
loc_8C0EAD58:
	#data bank15.loc_8c15F7E4
loc_8C0EAD5C:
	#data bank15.loc_8c15F808
loc_8C0EAD60:
	#data bank04.loc_8c044F12
loc_8C0EAD64:
	#data 0x40092492
loc_8C0EAD68:
	#data 0x3FD55555
loc_8C0EAD6C:
	#data loc_8c0eACAe
loc_8C0EAD70:
	#data bank15.loc_8c15F82c
loc_8C0EAD74:
	#data bank12.loc_8c129560
loc_8C0EAD78:
	#data bank12.loc_8c1294C8
loc_8C0EAD7C:
	#data bank15.loc_8c15F83c

;==============================================
loc_8C0EAD80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r13
	jsr @r13
	mov r4,r14
	mov.w @(0xE0,PC),r4
	fldi0 fr3
	and r0,r4
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0ead9e
	neg r4,r4

loc_8C0EAD9E:
	exts.w r4,r4
	lds r4,fpul
	mova @(0xD4,PC),r0
	fmov @r0,fr15
	mova @(0xD4,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr15,fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	extu.b r0,r0
	add 0x80,r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0eadca
	float fpul,fr3
	mov.l @(0xBC,PC),r3
	lds r3,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C0EADCA:
	mova @(0xB8,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmul fr2,fr3
	fdiv fr15,fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	and 0x1F,r0
	mov.l @(0xAC,PC),r3
	add 0x10,r0
	mov r14,r4
	mov 0x07,r6
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov 0x17,r5
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0EADF0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x78,PC),r13
	jsr @r13
	mov r4,r14
	mov 0x3F,r4
	fldi0 fr3
	and r0,r4
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0eae10
	neg r4,r4

loc_8C0EAE10:
	exts.w r4,r4
	lds r4,fpul
	mova @(0x60,PC),r0
	fmov @r0,fr15
	mova @(0x60,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr15,fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	and 0x3F,r0
	add 0xE0,r0
	shll2 r0
	shll2 r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0eae40
	float fpul,fr3
	mov.l @(0x44,PC),r3
	lds r3,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C0EAE40:
	mova @(0x40,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmul fr2,fr3
	fdiv fr15,fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	and 0x1F,r0
	add 0x08,r0
	mov.w r0,@(0x1C,r14)
	jsr @r13
	mov 0x06,r12
	tst 0x03,r0
	bf loc_8c0eae5e
	mov 0x07,r12

loc_8C0EAE5E:
	lds.l @r15+,pr
	mov r12,r6
	mov.l @(0x24,PC),r2
	mov r14,r4
	mov 0x17,r5
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eae72:
	#data 0x00f0
	#align4

loc_8C0EAE74:
	#data bank03.loc_8c03319e
loc_8C0EAE78:
	#data 0x43800000
loc_8C0EAE7c:
	#data 0x3FD55555
loc_8C0EAE80:
	#data 0x4F800000
loc_8C0EAE84:
	#data 0x40092492
loc_8C0EAE88:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0EAE8C:
	mov.l r14,@-r15
	mova @(0x100,PC),r0
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r13
	jsr @r13
	fmov @r0,fr15
	and 0x3F,r0
	add 0xE0,r0
	shll2 r0
	shll2 r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0eaeb8
	float fpul,fr3
	mov.l @(0xE4,PC),r3
	lds r3,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C0EAEB8:
	mova @(0xE0,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmul fr2,fr3
	fdiv fr15,fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	and 0x3F,r0
	add 0xE0,r0
	shll2 r0
	shll2 r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0eaede
	float fpul,fr3
	mov.l @(0xC0,PC),r3
	lds r3,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C0EAEDE:
	mova @(0xC0,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmul fr2,fr3
	fdiv fr15,fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	and 0x1F,r0
	add 0x08,r0
	mov.w r0,@(0x1C,r14)
	jsr @r13
	mov 0x06,r12
	tst 0x03,r0
	bf loc_8c0eaefc
	mov 0x07,r12

loc_8C0EAEFC:
	lds.l @r15+,pr
	mov r12,r6
	mov.l @(0xA0,PC),r2
	mov r14,r4
	mov 0x17,r5
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0EAF10:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0EAFA8,pc),r3 ; r3 set to 0x8C034DEe
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
	bf loc_8C0EAF70
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0EAF7c
	mov.l @r15+,r14

loc_8C0EAF70:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EAF78:
	rts
	nop

;----------------------------------------------
loc_8C0EAF7C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0EAF8E,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0EAFAC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EAF8E:
	#data 0x012c
	#align4
loc_8c0eaf90:
	#data 0x43800000
loc_8C0EAF94:
	#data bank03.loc_8c03319e
loc_8c0eaf98:
	#data 0x4F800000
loc_8c0eaf9c:
	#data 0x3FD55555
loc_8c0eafa0:
	#data 0x40092492
loc_8C0EAFA4:
	#data bank03.loc_8c034e8c
loc_8C0EAFA8:
	#data bank03.loc_8c034dee
loc_8C0EAFAC:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0eafb0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x03,r4
	mov.w r5,@r15
	mov.w @r15,r3
	extu.w r3,r3
	cmp/ge r4,r3
	bf.s loc_8c0eafc8
	mov r4,r5
	mov 0x04,r5

loc_8C0EafC8:
	mov.l @(0x138,PC),r2
	mov 0x00,r6
	jsr @r2
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0eaffc
	mov r0,r4
	mov.l @(0x130,PC),r2
	mov.l r2,@(0x10,r4)
	mov.w @(0x118,PC),r2
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov 0x00,r2
	mov.w @(0x106,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(0x104,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)
	mov 0x22,r0
	mov.b r2,@(r0,r4)

loc_8C0Eaffc:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EB008:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0EB10C,pc),r1 ; r1 set to 0x8C15F848
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14
	
loc_8C0EB01C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0EB0FC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0EB0FE,pc),r0 ; r0 set to 0xC0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EB0FC,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0EB110,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0EB100,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EB102,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EB114,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r1
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov 0x08,r2 ; r2 set to 0x08
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r14)
	mov r13,r2 ; r2 ??? bc r13 is ???
	mov.l @(loc_8C0EB114,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0EB11C,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0EB118,pc),r0 ; r0 set to 0x8C15F858
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EB0B0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.l r12,@-r15
	mov 0x03,r2 ; r2 set to 0x03, r2 set to 0x03
	mov.l r11,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	extu.b r3,r3
	cmp/ge r2,r3
	bf.s loc_8C0EB0D0
	mov 0x00,r12 ; r12 set to 0x00, r12 set to 0x00
	bra loc_8C0EB1D4
	nop

loc_8C0EB0D0:
	mov.b @(r0,r14),r0
	mov.l @(loc_8C0EB120,pc),r11 ; r11 set to 0x8C034D8c
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8C0EB17a
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8C0EB124
	jsr @r11
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0EB0F2
	bra loc_8C0EB248
	nop

loc_8C0EB0F2:
	bra loc_8C0EB258
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EB0F6:
	#data 0x3603
loc_8C0EB0F8:
	#data 0x0158
loc_8C0EB0FA:
	#data 0x00CC
loc_8C0EB0FC:
	#data 0x00Dc
loc_8C0EB0FE:
	#data 0x00C0
loc_8C0EB100:
	#data 0x012c
loc_8C0EB102:
	#data 0x01A3
	#align4

loc_8C0EB104:
	#data bank04.loc_8c044F12
loc_8C0EB108:
	#data loc_8c0eB008
loc_8C0EB10C:
	#data bank15.loc_8c15F848
loc_8C0EB110:
	#data bank12.loc_8c129560
loc_8C0EB114:
	#data bank12.loc_8c1294C8
loc_8C0EB118:
	#data bank15.loc_8c15F858
loc_8C0EB11C:
	#data bank03.loc_8c034C38
loc_8C0EB120:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0EB124:
	mov.w @(loc_8C0EB1BC,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r13),r3
	mov.w @(loc_8C0EB1BE,pc),r0 ; r0 set to 0xCc
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8C0EB136
	bra loc_8C0EB248
	nop

loc_8C0EB136:
	jsr @r11
	mov r14,r4
	mov.w @(loc_8C0EB1C0,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0EB146
	bra loc_8C0EB258
	nop

loc_8C0EB146:
	mov.b @(r0,r14),r0
	mov.l @(loc_8C0EB1C4,pc),r11 ; r11 set to 0x8C15F862
	shll r0
	mov.w @(r0,r11),r3
	cmp/pz r3
	bt loc_8C0EB162
	mov.l @(loc_8C0EB1C8,pc),r3 ; r3 set to 0x8C0353Ee
	mov 0x01,r7 ; r7 set to 0x01
	mov r7,r5 ; r5 set to 0x01
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r3
	mov r13,r4
	bra loc_8C0EB174
	nop

loc_8C0EB162:
	mov.w @(loc_8C0EB1C0,pc),r0 ; r0 set to 0x140
	mov 0x01,r7 ; r7 set to 0x01
	mov.l @(loc_8C0EB1CC,pc),r3 ; r3 set to 0x8C03544c
	mov r7,r5 ; r5 set to 0x01
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	shll r0
	mov.w @(r0,r11),r6
	jsr @r3
	mov r13,r4

loc_8C0EB174:
	mov.w @(loc_8C0EB1C0,pc),r0 ; r0 set to 0x140, r0 set to 0x140
	bra loc_8C0EB258
	mov.b r12,@(r0,r14)

loc_8C0EB17A:
	mov.w @(loc_8C0EB1BC,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r13),r3
	mov.w @(loc_8C0EB1BE,pc),r0 ; r0 set to 0xCc
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bf loc_8C0EB248
	mov.w @(loc_8C0EB1C2,pc),r0 ; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	add 0x1F,r0 ; r0 set to 0x14b
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8C0EB258
	mov.w @(loc_8C0EB1C2,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov r14,r1
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.l @(loc_8C0EB1D0,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r14)
	mov r13,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	jsr @r11
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bf loc_8C0EB248
	bra loc_8C0EB258
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EB1BC:
	#data 0x0158
loc_8C0EB1BE:
	#data 0x00Cc
loc_8C0EB1C0:
	#data 0x0140
loc_8C0EB1C2:
	#data 0x012c
	#align4

loc_8C0EB1C4:
	#data bank15.loc_8c15F862
loc_8C0EB1C8:
	#data bank03.loc_8c0353Ee
loc_8C0EB1CC:
	#data bank03.loc_8c03544c
loc_8C0EB1D0:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0eb1d4:
	mov.w @(loc_8C0EB274,pc),r0
	mov.w @(r0,r13),r2
	mov.w @(loc_8C0EB276,pc),r0
	extu.w r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8c0eb248
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8c0eb1f8
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mov r12,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0eb1f8:
	mov.w @(0x1E,r14),r0
	add 0x78,r0
	mov.w r0,@(0x1E,r14)
	mova @(loc_8C0EB27C,pc),r0
	fmov.s @r0,fr4
	mov.w @(loc_8C0EB278,pc),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c0eb20e
	mova @(loc_8C0EB280,pc),r0
	fmov.s @r0,fr4

loc_8c0eb20e:
	mov 0x34,r0
	mov.l @(loc_8c0eb288,pc),r3
	fmov.s @(r0,r13),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0EB284,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	add 0x09,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0eb258

loc_8C0EB248:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0EB268
	mov.l @r15+,r14

loc_8C0EB258:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EB264:
	rts
	nop

;----------------------------------------------
loc_8C0EB268:
	mov.w @(loc_8C0EB27A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0EB28C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eb274:
	#data 0x0158
loc_8c0eb276:
	#data 0x00CC
loc_8c0eb278:
	#data 0x0130
loc_8C0EB27A:
	#data 0x012c
	#align4

loc_8c0eb27c:
	#data 0x42200000
loc_8c0eb280:
	#data 0xC2200000
loc_8c0eb284:
	#data 0x43AB6DB6
loc_8C0EB288:
	#data bank03.loc_8c033718
loc_8C0EB28C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0eb290:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0xB4,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0eb2d8             ; loc_8c0eb2d2+0x6
	mov r0,r4
	mov.w @(0x9A,PC),r2
	mov 0x26,r0
	mov.l @(0xA0,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x92,PC),r5
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	add r4,r5
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x7C,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0eb2d8:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
;unused
loc_8c0eb2e4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0x60,PC),r3
	mov 0x04,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0eb32c
	mov r0,r4
	mov.w @(0x46,PC),r2
	mov 0x26,r0
	mov.l @(0x4C,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x3E,PC),r5
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	add r4,r5
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x28,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0eb32c:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EB338:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0EB35C,pc),r0 ; r0 set to 0x8C15F8D4
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eb34e:
	#data 0x3700
loc_8c0eb350:
	#data 0x00Cc
loc_8c0eb352:
	#data 0x0158
	#align4

loc_8C0EB354:
	#data bank04.loc_8c044F12
loc_8C0EB358:
	#data loc_8c0eB338
loc_8C0EB35C:
	#data bank15.loc_8c15F8D4

;==============================================
loc_8C0EB360:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x160,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x158,PC),r2
	add 0x01,r0
	mov.l @(0x160,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x152,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x14E,PC),r0
	mov 0x01,r4
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
	mov.w @(0x132,PC),r0
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
	mov.l @(0x128,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0x00,r3
	mov.b r2,@(r0,r14)
	mov.w @(0x10A,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xDC,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0eb406
	mov 0x02,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0EB406:
	mov.l @(0xE0,PC),r3
	mov 0x12,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0eb4a0
	mov.l @r15+,r14

loc_8C0EB41A:
	mov 0x34,r0
	mov.w @(0xB6,PC),r6
	fmov @(r0,r5),fr3
	add r5,r6
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.b @(0x7,r6),r0
	tst r0,r0
	bt loc_8c0eb440
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x94,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x38,r0
	mov.w r0,@(0x1C,r4)

loc_8C0EB440:
	rts 
	nop 

;----------------------------------------------
loc_8C0EB444:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x9C,PC),r3
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0eb49a
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0EB49A:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EB4A0:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0EB4F0,pc),r1 ; r1 set to 0x8C15F918
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0EB4BA:
	mov r4,r3
	mov.l @(loc_8C0EB4F4,pc),r1 ; r1 set to 0x8C15F920
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eb4cc:
	#data 0x00Dc
loc_8c0eb4ce:
	#data 0x00C0
loc_8c0eb4d0:
	#data 0x012c
loc_8c0eb4d2:
	#data 0x01A3
loc_8c0eb4d4:
	#data 0x0130
loc_8c0eb4d6:
	#data 0x02A4
	#align4

loc_8C0EB4D8:
	#data bank12.loc_8c129560
loc_8C0EB4DC:
	#data bank12.loc_8c1294C8
loc_8C0EB4E0:
	#data 0x408F5555
loc_8C0EB4E4:
	#data 0x40AB6DB6
loc_8C0EB4E8:
	#data bank03.loc_8c034e8c
loc_8C0EB4EC:
	#data bank03.loc_8c034dee
loc_8C0EB4F0:
	#data bank15.loc_8c15F918
loc_8C0EB4F4:
	#data bank15.loc_8c15F920

;==============================================
loc_8C0EB4F8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0EB5EA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EB5EA,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0EB5F4,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0EB5EC,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0EB5EE,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EB5F0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EB5F8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r14)
	mov 0x00,r6 ; r6 set to 0x00
	mov.w @(loc_8C0EB5EE,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov.l @(loc_8C0EB5FC,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EB586:
	mov.w @(loc_8C0EB5F2,pc),r0 ; r0 set to 0x159, r0 set to 0x159
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt.s loc_8C0EB5A2
	mov r4,r14
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0eb5a2:
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	mov.l @(loc_8c0eb600,pc),r3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0eb5d2
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0eb5ee,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0eb5d2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0EB5D8:
	mov r4,r3
	mov.l @(loc_8C0EB604,pc),r1 ; r1 set to 0x8C15F930
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EB5EA:
	#data 0x00Dc
loc_8C0EB5EC:
	#data 0x00C0
loc_8C0EB5EE:
	#data 0x012c
loc_8C0EB5F0:
	#data 0x01A3
loc_8C0EB5F2:
	#data 0x0159
	#align4

loc_8C0EB5F4:
	#data bank12.loc_8c129560
loc_8C0EB5F8:
	#data bank12.loc_8c1294C8
loc_8C0EB5FC:
	#data bank03.loc_8c034e8c
loc_8C0EB600:
	#data bank03.loc_8c034dee
loc_8C0EB604:
	#data bank15.loc_8c15F930

;==============================================
loc_8C0EB608:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0EB6FA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EB6FA,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0EB704,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0EB6FC,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0EB6FE,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EB700,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EB708,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r6 ; r6 set to 0x01
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0EB6FE,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov.l @(loc_8C0EB70C,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EB696:
	mov.w @(loc_8C0EB702,pc),r0 ; r0 set to 0x159, r0 set to 0x159
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt.s loc_8C0EB6B2
	mov r4,r14
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0eb6b2:
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	mov.l @(loc_8c0eb710,pc),r3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0eb6e2
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0eb6fe,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0eb6e2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0EB6E8:
	mov r4,r3
	mov.l @(loc_8C0EB714,pc),r1 ; r1 set to 0x8C15F940
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EB6FA:
	#data 0x00Dc
loc_8C0EB6FC:
	#data 0x00C0
loc_8C0EB6FE:
	#data 0x012c
loc_8C0EB700:
	#data 0x01A3
loc_8C0EB702:
	#data 0x0159
	#align4

loc_8C0EB704:
	#data bank12.loc_8c129560
loc_8C0EB708:
	#data bank12.loc_8c1294C8
loc_8C0EB70C:
	#data bank03.loc_8c034e8c
loc_8C0EB710:
	#data bank03.loc_8c034dee
loc_8C0EB714:
	#data bank15.loc_8c15F940

;==============================================
loc_8C0EB718:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0EB80C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EB80C,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0EB818,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0EB80E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0EB810,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EB812,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EB81C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0EB820,pc),r3 ; r3 set to 0x8C034E8c
	mov.b @(r0,r13),r2
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x02,r6 ; r6 set to 0x02
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0EB810,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
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
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EB7A4:
	mov.w @(loc_8C0EB814,pc),r0 ; r0 set to 0x159, r0 set to 0x159
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt.s loc_8C0EB7C0
	mov r4,r14
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0eb7c0:
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	mov.l @(loc_8c0eb824,pc),r3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0eb7f0
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0eb810,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0eb7f0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0EB7F6:
	mov r4,r3
	mov.l @(loc_8C0EB828,pc),r1 ; r1 set to 0x8C15F950
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0EB808:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EB80C:
	#data 0x00Dc
loc_8C0EB80E:
	#data 0x00C0
loc_8C0EB810:
	#data 0x012c
loc_8C0EB812:
	#data 0x01A3
loc_8C0EB814:
	#data 0x0159
	#align4

loc_8C0EB818:
	#data bank12.loc_8c129560
loc_8C0EB81C:
	#data bank12.loc_8c1294C8
loc_8C0EB820:
	#data bank03.loc_8c034e8c
loc_8C0EB824:
	#data bank03.loc_8c034dee
loc_8C0EB828:
	#data bank15.loc_8c15F950

;==============================================
loc_8C0EB82C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x15A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x152,PC),r2
	add 0x01,r0
	mov.l @(0x15C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x14C,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x148,PC),r0
	mov 0x01,r4
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
	mov.w @(0x12C,PC),r0
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
	mov.l @(0x124,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x120,PC),r3
	mov.b @(r0,r13),r2
	mov 0x17,r5
	mov 0x08,r6
	mov.b r2,@(r0,r14)
	mov.w @(0x102,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EB8AC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x24,r0
	mov r5,r13
	mov r4,r14
	mov.w @(0xDC,PC),r3
	add r14,r3
	mov.l r3,@r15
	mov.b @(r0,r13),r2
	mov.l @(0xE8,PC),r3
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r3
	mov.w @(0xC0,PC),r0
	mov.w @r3,r1
	mov.w @(r0,r13),r2
	cmp/eq r1,r2
	bt loc_8c0eb8e8
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0EB8E8:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EB8F2:
	mov r4,r3
	mov.l @(loc_8C0EB9B0,pc),r1 ; r1 set to 0x8C15F960
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EB904:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0EB992,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EB992,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0EB9A0,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0EB994,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0EB996,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EB998,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EB9A4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0EB996,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0EB9B4,pc),r0  ; r0 set to 0x8C0EB9B4
	fmov.s @r0,fr4 ; r4 ??
	mov.w @(loc_8C0EB99E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0EB9B8
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0EB9Be
	fsub fr4,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EB992:
	#data 0x00Dc
loc_8C0EB994:
	#data 0x00C0
loc_8C0EB996:
	#data 0x012c
loc_8C0EB998:
	#data 0x01A3
loc_8C0EB99a:
	#data 0x00Cc
loc_8C0EB99c:
	#data 0x0158
loc_8C0EB99E:
	#data 0x0130
	#align4

loc_8C0EB9A0:
	#data bank12.loc_8c129560
loc_8C0EB9A4:
	#data bank12.loc_8c1294C8
loc_8C0EB9A8:
	#data bank03.loc_8c034e8c
loc_8C0EB9AC:
	#data bank03.loc_8c034dee
loc_8C0EB9B0:
	#data bank15.loc_8c15F960
loc_8C0EB9B4:
	#data 0x41855555

;==============================================
loc_8C0EB9B8:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3

loc_8C0EB9BE:
	mov.l @(loc_8C0EBB18,pc),r1 ; r1 set to 0x429A4924, r1 set to 0x429A4924
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	lds r1,fpul
	mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
	fmov.s @(r0,r14),fr2
	mov.l @(loc_8C0EBB1C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EB9E2:
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0EBB0A,pc),r0 ; r0 set to 0x159, r0 set to 0x159, r0 set to 0x159
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8C0EBA04
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0eba04:
	mov.l @(loc_8c0ebb20,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0eba1c
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0ebb0c,pc),r0
	mov.b r3,@(r0,r14)

loc_8c0eba1c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0EBA22:
	mov r4,r3
	mov.l @(loc_8C0EBB24,pc),r1 ; r1 set to 0x8C15F970
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0EBA34:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0EBB0E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EBB0E,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0EBB28,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0EBB10,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0EBB0C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EBB12,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EBB2C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r14)
	mov 0x07,r6 ; r6 set to 0x07
	mov.w @(loc_8C0EBB0C,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov.l @(loc_8C0EBB1C,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EBAC2:
	mov.w @(loc_8C0EBB14,pc),r6 ; r6 set to 0xCC, r6 set to 0xCc
	mov.w @(loc_8C0EBB16,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	add r4,r6 ; r6 ??? bc r4 is ???, r6 ??? bc r4 is ???
	mov.w @r6,r2
	mov.w @(r0,r5),r3
	cmp/eq r2,r3
	bt loc_8C0EBAD8
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x159, r0 set to 0x159
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0EBAD8:
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	mov.l @(loc_8C0EBB20,pc),r3 ; r3 set to 0x8C034DEe
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r5),fr3
	jmp @r3
	fmov.s fr3,@(r0,r4)

;unused
	rts
	nop

;----------------------------------------------
loc_8C0EBAF8:
	mov r4,r3
	mov.l @(loc_8C0EBB30,pc),r1 ; r1 set to 0x8C15F980
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EBB0A:
	#data 0x0159
loc_8C0EBB0C:
	#data 0x012c
loc_8C0EBB0E:
	#data 0x00Dc
loc_8C0EBB10:
	#data 0x00C0
loc_8C0EBB12:
	#data 0x01A3
loc_8C0EBB14:
	#data 0x00Cc
loc_8C0EBB16:
	#data 0x0158
	#align4

loc_8C0EBB18:
	#data 0x429A4924
loc_8C0EBB1C:
	#data bank03.loc_8c034e8c
loc_8C0EBB20:
	#data bank03.loc_8c034dee
loc_8C0EBB24:
	#data bank15.loc_8c15F970
loc_8C0EBB28:
	#data bank12.loc_8c129560
loc_8C0EBB2C:
	#data bank12.loc_8c1294C8
loc_8C0EBB30:
	#data bank15.loc_8c15F980

;==============================================
loc_8C0EBB34:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0EBC5C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EBC5C,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0EBC6C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0EBC5E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0EBC60,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EBC62,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EBC70,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0EBC60,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov.l @(loc_8C0EBC74,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r6
	add 0x16,r6
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EBBBA:
	mov.w @(loc_8C0EBC64,pc),r6 ; r6 set to 0xCC, r6 set to 0xCc
	mov.w @(loc_8C0EBC66,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	add r4,r6 ; r6 ??? bc r4 is ???, r6 ??? bc r4 is ???
	mov.w @r6,r2
	mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???
	cmp/eq r2,r3
	bt loc_8C0EBBD0
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x159, r0 set to 0x159
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8c0ebbd0:
	mov 0x24,r0
	mov.l @(loc_8c0ebc78,pc),r7
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r7),r6
	mova @(loc_8C0EBC7C,pc),r0
	fmov.s @r0,fr2
	lds r6,fpul
	mov.w @(loc_8C0EBC68,pc),r0
	float fpul,fr3
	mov.w @(r0,r5),r3
	tst r3,r3
	fmul fr2,fr3
	ftrc fr3,fpul
	bt.s loc_8c0ebc08
	sts fpul,r6
	neg r6,r6

loc_8c0ebc08:
	exts.w r6,r6
	mov r4,r2
	lds r6,fpul
	mov 0x34,r0
	fmov.s @(r0,r4),fr2
	mov 0x21,r3
	add r4,r3
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r7
	mov.w @(0x02,r7),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(loc_8C0EBC80,pc),r0
	fmov.s @r0,fr0
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8c0ebc84,pc),r3
	jmp @r3
	nop

;unused
	rts
	nop

;==============================================
loc_8C0EBC4A:
	mov r4,r3
	mov.l @(loc_8C0EBC88,pc),r1 ; r1 set to 0x8C15F990
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EBC5C:
	#data 0x00Dc
loc_8C0EBC5E:
	#data 0x00C0
loc_8C0EBC60:
	#data 0x012c
loc_8C0EBC62:
	#data 0x01A3
loc_8C0EBC64:
	#data 0x00Cc
loc_8C0EBC66:
	#data 0x0158
loc_8c0ebc68:
	#data 0x0130
	#align4

loc_8C0EBC6C:
	#data bank12.loc_8c129560
loc_8C0EBC70:
	#data bank12.loc_8c1294C8
loc_8C0EBC74:
	#data bank03.loc_8c034e8c
loc_8C0EBC78:
	#data bank15.loc_8c15F890
loc_8c0ebc7c:
	#data 0x3FD55555
loc_8c0ebc80:
	#data 0x40092492
loc_8C0EBC84:
	#data bank03.loc_8c034dee
loc_8C0EBC88:
	#data bank15.loc_8c15F990

;==============================================
loc_8C0EBC8C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x138,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x130,PC),r2
	add 0x01,r0
	mov.l @(0x13C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x12A,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x126,PC),r0
	mov 0x01,r4
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
	mov.w @(0x10A,PC),r0
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
	mov.l @(0x104,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xE4,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov.l @(0xEC,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r4),r3
	mova @(0xD4,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov 0x21,r3
	mov r14,r2
	add r14,r3
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(0xAC,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	fmov @r3,fr1
	mov.w @(0x8C,PC),r0
	fmac fr0,fr3,fr1
	fmov fr1,@r3
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0ebd5c
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0EBD5C:
	mov 0x5C,r1
	mov.l @(0x98,PC),r3
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x17,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0x80,PC),r0
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EBD86:
	mov 0x24,r0
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x4A,PC),r4
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	add r14,r4
	mov.b r3,@(r0,r14)
	mov.w @(0x42,PC),r0
	mov.w @r4,r3
	mov.w @(r0,r5),r2
	cmp/eq r3,r2
	bf loc_8c0ebdb2
	mov.l @(0x58,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ebdb8
	mov.w @(0x24,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
 
loc_8C0EBDB2:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0EBDB8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EBDBE:
	mov r4,r3
	mov.l @(loc_8C0EBE00,pc),r1 ; r1 set to 0x8C15F9A0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ebdd0:
	#data 0x00dc
loc_8c0ebdd2:
	#data 0x00c0
loc_8c0ebdd4:
	#data 0x012c
loc_8c0ebdd6:
	#data 0x01a3
loc_8c0ebdd8:
	#data 0x0130
loc_8c0ebdda:
	#data 0x00cc
loc_8c0ebddc:
	#data 0x0158
	#align4

loc_8C0EBDE0:
	#data bank12.loc_8c129560
loc_8C0EBDE4:
	#data bank12.loc_8c1294C8
loc_8C0EBDE8:
	#data bank15.loc_8c15F8A0
loc_8C0EBDEC:
	#data 0x3FD55555
loc_8C0EBDf0:
	#data 0x40092492
loc_8C0EBDF4:
	#data bank15.loc_8c15F8C8
loc_8C0EBDF8:
	#data bank03.loc_8c034e8c
loc_8C0EBDFC:
	#data bank03.loc_8c034dee
loc_8C0EBE00:
	#data bank15.loc_8c15F9A0

;==============================================
loc_8C0EBE04:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x104,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xFC,PC),r2
	add 0x01,r0
	mov.l @(0x108,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xF6,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xF2,PC),r0
	mov 0x01,r4
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
	mov.w @(0xD6,PC),r0
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
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xB0,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x8A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0ebea0
	mov 0x1D,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0EBEA0:
	mov.l @(0x90,PC),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EBEB2:
	mov 0x24,r0
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x62,PC),r4
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	add r14,r4
	mov.b r3,@(r0,r14)
	mov.w @(0x5A,PC),r0
	mov.w @r4,r3
	mov.w @(r0,r5),r2
	cmp/eq r3,r2
	bf loc_8c0ebef6
	mov 0x5C,r0
	mov.l @(0x68,PC),r3
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
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ebefc
	mov.w @(0x24,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8C0EBEF6:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0EBEFC:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EBF02:
	mov r4,r3
	mov.l @(loc_8C0EBF3C,pc),r1 ; r1 set to 0x8C15F9B0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ebf14:
	#data 0x00Dc
loc_8c0ebf16:
	#data 0x00C0
loc_8c0ebf18:
	#data 0x012c
loc_8c0ebf1a:
	#data 0x01A3
loc_8c0ebf1c:
	#data 0x0130
loc_8c0ebf1e:
	#data 0x00CC
loc_8c0ebf20:
	#data 0x0158
	#align4

loc_8C0EBF24:
	#data bank12.loc_8c129560
loc_8C0EBF28:
#data bank12.loc_8c1294C8
loc_8C0EBF2C:
	#data 0xC2820000
loc_8C0EBF30:
	#data 0x43586DB6
loc_8C0EBF34:
	#data bank03.loc_8c034e8c
loc_8C0EBF38:
	#data bank03.loc_8c034dee
loc_8C0EBF3C:
	#data bank15.loc_8c15F9B0

;==============================================
loc_8C0EBF40:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0EC08C,pc),r5 ; r5 set to 0xCc
	mov.w @(loc_8C0EC08E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r5 ; r5 ??? bc r14 is ???
	mov.w @(loc_8C0EC08E,pc),r2 ; r2 set to 0xDc
	add 0x08,r5
	add 0x01,r0
	mov.l @(loc_8C0EC0A0,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EC090,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0EC092,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EC094,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EC0A4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r3 ; r3 set to 0x01
	mov.b @(r0,r13),r2
	mov 0x00,r1 ; r1 set to 0x00
	fldi0 fr4
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0EC092,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0EC096,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.w r1,@r5
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0EC0A8,pc),r0  ; r0 set to 0x8C0EC0A8
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l @(loc_8C0EC0AC,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x16,r5 ; r5 set to 0x16
	fmov.s fr3,@(r0,r14)
	mov 0x0A,r6 ; r6 set to 0x0a
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0EC23c
	mov.l @r15+,r14

;==============================================
loc_8C0EBFF6:
	mov.w @(0x9C,PC),r0
	mov.w @(0x90,PC),r5
	mov.w @(r0,r4),r3
	mov.l @(0xB0,PC),r6
	add r4,r5
	tst r3,r3
	bf.s loc_8c0ec00c
	add 0x08,r5
	mov.w @(0x8E,PC),r0
	bra loc_8c0ec00e              ; loc_8c0ebff6+0x18
	nop 

loc_8C0EC00C:
	mov.w @(0x8A,PC),r0

loc_8C0EC00E:
	fmov @(r0,r6),fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r5)
	mova @(0x9C,PC),r0
	mov.w @r5,r3
	fmov @r0,fr2
	lds r3,fpul
	float fpul,fr3
	fcmp/gt fr2,fr3
	bf loc_8c0ec028
	mov.w @(0x74,PC),r2
	mov.w r2,@r5

loc_8C0EC028:
	rts
	nop

;----------------------------------------------
loc_8C0EC02C:
	mov.w @(0x5C,PC),r5
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	add r4,r5
	add 0x08,r5
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr2
	fadd fr3,fr2
	ftrc fr2,fpul
	sts fpul,r3
	rts 
	mov.w r3,@r5

;----------------------------------------------
loc_8C0EC046:
	mov.w @(0x4C,PC),r0
	mov.w @(0x40,PC),r6
	mov.w @(r0,r4),r3
	add r4,r6
	tst r3,r3
	add 0x08,r6
	bf.s loc_8c0ec058
	mov.w @r6,r5
	neg r5,r5

loc_8C0EC058:
	mov.w @(0x2,r6),r0
	exts.w r5,r5
	add r0,r5
	lds r5,fpul
	mov 0x34,r0
	float fpul,fr3
	rts 
	fmov fr3,@(r0,r4)

;----------------------------------------------
loc_8C0EC068:
	mov.w @(0x1C,r4),r0
	mov 0x1F,r5
	and r0,r5
	mov.l @(0x48,PC),r0
	mov.b @(r0,r5),r5
	mov.w @(0x20,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0ec07e
	mov 0x34,r0
	neg r5,r5

loc_8C0EC07E:
	exts.b r5,r5
	fmov @(r0,r4),fr2
	lds r5,fpul
	float fpul,fr3
	fadd fr3,fr2
	rts 
	fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EC08C:
	#data 0x00Cc
loc_8C0EC08E:
	#data 0x00Dc
loc_8C0EC090:
	#data 0x00C0
loc_8C0EC092:
	#data 0x012c
loc_8C0EC094:
	#data 0x01A3
loc_8C0EC096:
	#data 0x0130
loc_8c0ec098:
	#data 0x008c
loc_8c0ec09a:
	#data 0x0088
loc_8c0ec09c:
	#data 0x024a
	#align4

loc_8C0EC0A0:
	#data bank12.loc_8c129560
loc_8C0EC0A4:
	#data bank12.loc_8c1294C8
loc_8C0EC0A8:
	#data 0x41555555
loc_8C0EC0AC:
	#data bank03.loc_8c034e8c
loc_8C0EC0B0:
	#data 0x8C26A518
loc_8C0EC0B4:
	#data 0x4412AAAa
loc_8C0EC0B8:
	#data bank15.loc_8c15F870

;==============================================
loc_8C0EC0BC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0x10C,PC),r3
	mov r5,r13
	mov r13,r5
	mov r4,r14
	add r13,r3
	mov.l r3,@r15
	bsr loc_8c0ebff6
	mov r14,r4
	mov r13,r5
	bsr loc_8c0ec02c
	mov r14,r4
	mov r13,r5
	bsr loc_8c0ec046
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r13),fr3
	fsub fr3,fr2
	ftrc fr2,fpul
	sts fpul,r4
	exts.w r4,r3
	cmp/pz r3
	bt loc_8c0ec0f4
	neg r4,r4

loc_8C0EC0F4:
	mov 0x10,r3
	exts.w r4,r4
	cmp/ge r3,r4
	bt loc_8c0ec156
	mov.l @r15,r1
	mov 0x14,r0
	mov 0x01,r2
	mov.b r2,@(r0,r1)
	mova @(0xD0,PC),r0
	fmov @r0,fr4
	mov.w @(0xCA,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c0ec11c
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fadd fr4,fr3
	bra loc_8c0ec12a
	fmov fr3,@(r0,r15)

loc_8C0EC11C:
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)

loc_8C0EC12A:
	mov 0x38,r0
	mov.l @(0xB0,PC),r3
	fmov @(r0,r14),fr3
	mov 0x08,r0
	mov r15,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov @(r0,r14),fr2
	mov 0x0C,r0
	fldi0 fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(0x8E,PC),r0
	mov.w @(r0,r14),r5
	jsr @r3
	add 0x04,r4
	mov 0x08,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0EC156:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EC160:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	bsr loc_8c0ebff6
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c0ec046
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ec18c
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0EC18C:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EC194:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8c0ebff6
	mov r5,r13
	mov r13,r5
	bsr loc_8c0ec046
	mov r14,r4
	mov r13,r5
	bsr loc_8c0ec068
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ec1cc
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0EC1CC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ec1d4:
	#data 0x02a4
loc_8c0ec1d6:
	#data 0x0130
	#align4

loc_8c0ec1d8:
	#data 0x42CDB6Db
loc_8c0ec1dc:
	#data 0xC2CDB6Db
loc_8C0EC1E0:
	#data bank10.loc_8c108012

;==============================================
loc_8C0EC1E4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x98,PC),r4
	mov.l r13,@-r15
	mov r5,r13
	add r14,r4
	add 0x08,r4
	sts.l pr,@-r15
	mov.w @r4,r3
	cmp/pl r3
	bt.s loc_8c0ec202
	mov 0x00,r5
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r14)

loc_8C0EC202:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ec21c
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6C,PC),r0
	bra loc_8c0ec234
	mov.b r5,@(r0,r14)

loc_8C0EC21C:
	mov r13,r5
	bsr loc_8c0ebff6
	mov r14,r4
	mov r13,r5
	bsr loc_8c0ec02c
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ec046
	mov.l @r15+,r14

loc_8C0EC234:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EC23C:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.w @(loc_8C0EC284,pc),r4 ; r4 set to 0xCc
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0EC288,pc),r0 ; r0 set to 0x159
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.b @(r0,r5),r2
	mov.b @(0x01,r4),r0
	cmp/eq r0,r2
	bt loc_8C0EC25e
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x15a
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EC25E:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0EC28C,pc),r1 ; r1 set to 0x8C15F9C0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EC272:
	mov r4,r3
	mov.l @(loc_8C0EC290,pc),r1 ; r1 set to 0x8C15F9D0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EC284:
	#data 0x00Cc
loc_8C0EC286:
	#data 0x012c
loc_8C0EC288:
	#data 0x0159
	#align4

loc_8C0EC28C:
	#data bank15.loc_8c15F9C0
loc_8C0EC290:
	#data bank15.loc_8c15F9D0

;==============================================
loc_8C0EC294:
	mov.w @(0x136,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x13C,PC),r3
	add 0x01,r0
	mov.w @(0x12A,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0x128,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x124,PC),r0
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
	mov.w @(0x108,PC),r0
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
	mov.l @(0x100,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov.w @(0xE2,PC),r0
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0EC2F2:
	mov.l r14,@-r15
	mov 0x02,r3
	mov.w @(0xDE,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	mov.w r3,@(r0,r13)
	add 0x3C,r0
	mov.w @(r0,r13),r2
	mov.w @(0xD0,PC),r14
	tst r2,r2
	bt.s loc_8c0ec330
	add r13,r14
	mov.w @(0xCC,PC),r0
	mov.l @(0xD4,PC),r5
	mov.l @(r0,r13),r7
	mov.b @(0x1,r7),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bt.s loc_8c0ec322
	mov r0,r6
	mov r6,r0
	nop 
	cmp/eq 0x19,r0
	bf loc_8c0ec338

loc_8C0EC322:
	mov.b @(0x3,r5),r0
	tst r0,r0
	bf loc_8c0ec330
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0ec338

loc_8C0EC330:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	bra loc_8c0ec3a0
	mov.b r0,@(0x4,r4)

loc_8C0EC338:
	mov.b @(0x2,r4),r0
	mov 0x01,r6
	mov r6,r3
	extu.b r0,r0
	xor r6,r0
	shad r0,r3
	mov.b @(0x6,r5),r0
	extu.b r0,r0
	tst r3,r0
	bf loc_8c0ec3a0
	mov.b @(0x8,r14),r0
	tst r0,r0
	bt loc_8c0ec3a0
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	add 0x01,r3
	exts.b r3,r3
	tst r3,r3
	bf loc_8c0ec3a0
	mov 0x04,r1
	mov.b r1,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pz r3
	bt.s loc_8c0ec37a
	mov 0x01,r7
	mov 0x09,r3
	mov.b r3,@(r0,r14)

loc_8C0EC37A:
	mov 0x25,r0
	mov r13,r4
	mov.b @(r0,r13),r6
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov 0x00,r5
	extu.b r6,r6
	mov.l @(0x5C,PC),r0
	mov r6,r3
	shll r6
	shll2 r3
	mov.l @r15+,r13
	add r3,r6
	mov.b @(r0,r2),r3
	extu.b r3,r3
	add r3,r6
	mov.l @(0x50,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0EC3A0:
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EC3A6:
	mov.w @(loc_8C0EC3D6,pc),r3 ; r3 set to 0x2A4
	mov 0x00,r6 ; r6 set to 0x00
	mov.l r5,@-r15
	mov.b @(0x04,r4),r0
	add r3,r5
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0EC3D2,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov r6,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x08,r5)
	mov 0x23,r0 ; r0 set to 0x23
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r5)
	mov r6,r5 ; r5 set to 0x00
	mov.l @(loc_8C0EC3F0,pc),r2 ; r2 set to 0x8C035162
	mov.l @r15,r4
	jmp @r2
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ec3ce:
	#data 0x00dc
loc_8c0ec3d0:
	#data 0x00c0
loc_8c0ec3d2:
	#data 0x012c
loc_8c0ec3d4:
	#data 0x01a3
loc_8c0ec3d6:
	#data 0x02a4
loc_8c0ec3d8:
	#data 0x03e4
loc_8c0ec3da:
	#data 0x020c
	#align4

loc_8C0EC3DC:
	#data bank12.loc_8c129560
loc_8C0EC3E0:
	#data bank12.loc_8c1294C8
loc_8C0EC3E4:
	#data 0x8C2895F0
loc_8C0EC3E8:
	#data bank15.loc_8c15F9E0
loc_8C0EC3EC:
	#data bank03.loc_8c03544c
loc_8C0EC3F0:
	#data bank03.loc_8c035162

;==============================================
loc_8C0EC3F4:
	mov r4,r3
	mov.l @(loc_8C0EC420,pc),r1 ; r1 set to 0x8C15F9Ec
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EC406:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0EC41E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0EC414:
	mov.l @(loc_8C0EC424,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0EC41E,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EC41E:
	#data 0x012c
	#align4

loc_8C0EC420:
	#data bank15.loc_8c15F9Ec
loc_8C0EC424:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0ec428:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x140,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ec45c
	mov r0,r4
	mov 0x00,r2
	mov.l @(0x130,PC),r3
	mov 0x21,r0
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.w @(0x110,PC),r3
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0ec45c:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8c0ec464:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w r5,@r15
	mov 0x03,r5
	mov.l @(loc_8c0ec570,pc),r3
	mov r4,r14
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0ec4a2
	mov r0,r4
	mov.l @(loc_8c0ec574,pc),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.w @r15,r2
	extu.w r2,r2
	shlr8 r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0EC566,pc),r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x01,r14),r0
	mov.b r0,@(0x01,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0ec4a2:
	mov r14,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0EC4AE:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0
	cmp/ge r3,r0
	bt.s loc_8C0EC4D0
	mov.l @(0x18,r14),r5
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r1
	mov.l @(loc_8C0EC578,pc),r0 ; r0 set to 0x8C15FA44
	extu.b r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0EC4D0:
	cmp/eq 0x02,r0
	bf loc_8C0EC4Da
	mov 0x03,r0 ; r0 set to 0x03
	bra loc_8C0EC4E2
	mov.b r0,@(0x04,r14)

loc_8C0EC4DA:
	mov.l @(loc_8C0EC57C,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0EC4E2:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EC4E6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf loc_8C0EC592
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0EC568,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0EC580,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EC56A,pc),r0 ; r0 set to 0xC0
	mov.w @(loc_8C0EC568,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0EC56C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EC56E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EC584,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0EC588,pc),r4 ; r4 set to 0x8C15F9Fc
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0EC56C,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov.w @r4+,r0 ; r0 ??
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0EC58c
	lds.l @r15+,pr
	mov.l @(loc_8C0EC57C,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ec566:
	#data 0x3800
loc_8C0EC568:
	#data 0x00Dc
loc_8C0EC56A:
	#data 0x00C0
loc_8C0EC56C:
	#data 0x012c
loc_8C0EC56E:
	#data 0x01A3
	#align4

loc_8C0EC570:
	#data bank04.loc_8c044F12
loc_8C0EC574:
	#data loc_8c0eC4Ae
loc_8C0EC578:
	#data bank15.loc_8c15FA44
loc_8C0EC57C:
	#data bank04.loc_8c0450C0
loc_8C0EC580:
	#data bank12.loc_8c129560
loc_8C0EC584:
	#data bank12.loc_8c1294C8
loc_8C0EC588:
	#data bank15.loc_8c15F9Fc

;==============================================
loc_8c0ec58c:
	mov.w @r4+,r0
	mov.w r0,@(0x1C,r14)
	mov.l r4,@(0x14,r14)

loc_8C0EC592:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0EC5C6
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8C0EC5Ca
	mov.l @(0x14,r14),r13
	mov.w @r13+,r5
	bsr loc_8C0EC464
	mov r14,r4
	mov.w @r13+,r0
	mov.w r0,@(0x1C,r14)
	mov.l r13,@(0x14,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C0EC5Ca
	mov.b @(0x05,r14),r0
	add 0x01,r0
	bra loc_8C0EC5Ca
	mov.b r0,@(0x05,r14)

loc_8C0EC5C6:
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)

loc_8C0EC5CA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EC5D2:
	mov.l r14,@-r15
	mov 0x21,r0 ; r0 set to 0x21
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	mov r5,r13
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r12
	mov.b @(0x04,r14),r0
	extu.b r12,r12
	mov.l @(loc_8C0EC6B4,pc),r2 ; r2 set to 0x8C15FA14
	mov r12,r3
	shll r12
	add r3,r12
	tst r0,r0
	shll2 r12
	bf.s loc_8C0EC6E0
	add r2,r12
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0EC6A6,pc),r1 ; r1 set to 0xDc
	add 0x01,r0 ; r0 set to 0x22
	mov.l @(loc_8C0EC6B8,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0EC6A8,pc),r0 ; r0 set to 0xC0
	mov.w @(loc_8C0EC6A6,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0EC6AA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0EC6AC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0EC6BC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov 0x12,r5 ; r5 set to 0x12
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0EC6C0,pc),r0  ; r0 set to 0x8C0EC6C0
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov.l @(loc_8C0EC6C8,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0EC6C4,pc),r0  ; r0 set to 0x8C0EC6C4
	fmov.s @r0,fr3 ; r3 ??
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	mov.w @(0x0A,r12),r0
	mov r0,r6 ; r6 set to 0x6c
	jsr @r3
	mov r14,r4
	mov 0x21,r0 ; r0 set to 0x21
	mov.w @(loc_8C0EC6AE,pc),r3 ; r3 set to 0x200
	mov.b @(r0,r14),r5 ; r5 ??? bc r14 is ???
	extu.b r5,r5
	or r3,r5
	bsr loc_8C0EC464
	mov r14,r4
	mov.b @(0x08,r12),r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x09,r12),r0
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0EC6B0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt.s loc_8C0EC6Cc
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r12,fr4
	bra loc_8C0EC6Ce
	fneg fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EC6A6:
	#data 0x00Dc
loc_8C0EC6A8:
	#data 0x00C0
loc_8C0EC6AA:
	#data 0x012c
loc_8C0EC6AC:
	#data 0x01A3
loc_8C0EC6AE:
	#data 0x0200
loc_8C0EC6B0:
	#data 0x0130
	#align4

loc_8C0EC6B4:
	#data bank15.loc_8c15FA14
loc_8C0EC6B8:
	#data bank12.loc_8c129560
loc_8C0EC6BC:
	#data bank12.loc_8c1294C8
loc_8C0EC6C0:
	#data 0xC2092492
loc_8C0EC6C4:
	#data 0xBF892492
loc_8C0EC6C8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0ec6cc:
	fmov.s @r12,fr4

loc_8c0ec6ce:
	fmov.s @(r0,r13),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0EC7B4,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8c0ec6e0:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8c0ec78a
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0ec70a
	mov.l @(loc_8c0ec7b8,pc),r3
	mov.w @(0x1E,r14),r0
	jsr @r3
	mov.w r0,@(0x1C,r14)
	tst 0x01,r0
	bt loc_8c0ec70a
	mov.w @(loc_8C0EC7B2,pc),r5
	bsr loc_8c0ec464
	mov r14,r4

loc_8c0ec70a:
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
	mov 0x04,r0
	fmov.s @(r0,r12),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0ec7a6
	fmov.s @(r0,r12),fr3
	mov 0x38,r0
	mov.l @(loc_8c0ec7bc,pc),r3
	fmov.s fr3,@(r0,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r5
	extu.b r5,r5
	shll r5
	shll r5
	add r3,r5
	mov.w @r5,r4
	mov.w @(0x02,r5),r0
	extu.w r4,r11
	cmp/pl r11
	mov r0,r13
	bf.s loc_8c0ec7a6
	mov 0x00,r12

loc_8c0ec776:
	mov r13,r5
	bsr loc_8c0ec464
	mov r14,r4
	add 0x01,r12
	extu.w r12,r2
	cmp/ge r11,r2
	bf.s loc_8c0ec776
	add 0x01,r13
	bra loc_8c0ec7a6
	nop

loc_8c0ec78a:
	mov.l @(loc_8c0ec7c0,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ec7a6
	lds.l @r15+,pr
	mov.l @(loc_8c0ec7c4,pc),r3
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0ec7a6:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EC7B2:
	#data 0x0500
	#align4

loc_8C0EC7B4:
	#data 0x441A4924
loc_8c0ec7b8:
	#data bank03.loc_8c03319e
loc_8c0ec7bc:
	#data bank15.loc_8c15fa5c
loc_8c0ec7c0:
	#data bank03.loc_8c034dee
loc_8c0ec7c4:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c0ec7c8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c0ec832
	mov.b @(0x4,r14),r0
	mov.w @(0x142,PC),r1
	add 0x01,r0
	mov.l @(0x14C,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x13A,PC),r0
	mov.w @(0x136,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0x134,PC),r0
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
	mov.w @(0x118,PC),r0
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
	mov.l @(0x10C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x108,PC),r3
	mov.b @(r0,r5),r2
	mov 0x12,r5
	mov 0x04,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c0ec832:
	mov.l @(0x14,r14),r4
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	mov.w @(0xDA,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0ec85c
	mov 0x00,r2
	mov.l @(0xE0,PC),r3
	mov.b r2,@(r0,r4)
	mov r14,r4
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c0ec85c:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ec862:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0ec8f4
	mov r5,r13
	mov.b @(0x4,r14),r0
	mov.w @(0xA4,PC),r1
	add 0x01,r0
	mov.l @(0xAC,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x9C,PC),r0
	mov.w @(0x98,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0x96,PC),r0
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
	mov.w @(0x7A,PC),r0
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
	mov.l @(0x70,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xF8,r3
	mov 0x12,r5
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x4C,PC),r0
	mov.w @(r0,r13),r0
	mov.w r0,@(0x1C,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0x48,PC),r3
	add 0x07,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x48,PC),r2
	mov 0x1F,r5
	jsr @r2
	mov r13,r4

loc_8c0ec8f4:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x28,PC),r3
	mov.w @(0x1C,r14),r0
	add r13,r3
	mov.w @r3,r3
	extu.w r3,r3
	cmp/eq r3,r0
	bt loc_8c0ec914
	lds.l @r15+,pr
	mov.l @(0x28,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0ec914:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ec91c:
	#data 0x00DC
loc_8c0ec91e:
	#data 0x00C0
loc_8c0ec920:
	#data 0x012C
loc_8c0ec922:
	#data 0x01A3
loc_8c0ec924:
	#data 0x0141
loc_8c0ec926:
	#data 0x0158
	#align4

loc_8c0ec928:
	#data bank12.loc_8c129560
loc_8c0ec92c:
	#data bank12.loc_8c1294c8
loc_8c0ec930:
	#data bank03.loc_8c034e8c
loc_8c0ec934:
	#data bank04.loc_8c0450c0
loc_8c0ec938:
	#data bank04.loc_8c042008

;==============================================
loc_8c0ec93c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0ec9bc
	mov r5,r13
	mov.b @(0x4,r14),r0
	mov.w @(0xA0,PC),r1
	add 0x01,r0
	mov.l @(0xA8,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x98,PC),r0
	mov.w @(0x94,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0x92,PC),r0
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
	mov.w @(0x76,PC),r0
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
	mov.l @(0x68,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xF8,r3
	mov 0x12,r5
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x0C,r6
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r14,r4

loc_8c0ec9bc:
	mov 0x24,r0
	mov.l @(0x48,PC),r3
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ec9da
	lds.l @r15+,pr
	mov.l @(0x38,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0ec9da:
	mov.w @(0x1C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ec9ea
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x6,r13)

loc_8c0ec9ea:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ec9f2:
	#data 0x00DC
loc_8c0ec9f4:
	#data 0x00C0
loc_8c0ec9f6:
	#data 0x012C
loc_8c0ec9f8:
	#data 0x01A3
loc_8c0ec9fa:
	#data 0x0141
	#align4

loc_8c0ec9fc:
	#data bank12.loc_8c129560
loc_8c0eca00:
	#data bank12.loc_8c1294c8
loc_8c0eca04:
	#data bank03.loc_8c034e8c
loc_8c0eca08:
	#data bank03.loc_8c034dee
loc_8c0eca0c:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c0eca10:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c0ecaa6
	mov.b @(0x4,r14),r0
	mov.w @(0xDA,PC),r1
	add 0x01,r0
	mov.l @(0xE0,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0xD2,PC),r0
	mov.w @(0xCE,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0xCC,PC),r0
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
	mov.w @(0xB0,PC),r0
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
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x9C,PC),r3
	mov.b @(r0,r5),r2
	mov 0x12,r5
	mov 0x06,r6
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r4
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0x78,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8c0ecaa6:
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0ecabe
	mov 0x02,r0
	bra loc_8c0ecaf6
	mov.b r0,@(0x4,r14)

loc_8c0ecabe:
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

loc_8c0ecaf6:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ecafc:
	#data 0x00DC
loc_8c0ecafe:
	#data 0x00C0
loc_8c0ecb00:
	#data 0x012C
loc_8c0ecb02:
	#data 0x01A3

loc_8c0ecb04:
	#data bank12.loc_8c129560
loc_8c0ecb08:
	#data bank12.loc_8c1294c8
loc_8c0ecb0c:
	#data bank03.loc_8c034e8c
loc_8c0ecb10:
	#data 0xC0092492
loc_8c0ecb14:
	#data 0xBF092492
loc_8c0ecb18:
	#data bank03.loc_8c034dee

;==================================
loc_8c0ecb1c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x104,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ecb50
	mov r0,r4
	mov 0x00,r2
	mov.l @(0xF4,PC),r3
	mov 0x21,r0
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.w @(0xD0,PC),r3
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0ecb50:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8c0ecb58:
	mov.l r14,@-r15
	mov 0x04,r5
	sts.l pr,@-r15
	mov.l @(0xC8,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ecb92
	mov r0,r4
	mov 0x00,r2
	mov.l @(0xBC,PC),r3
	mov 0x21,r0
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov.w @(0x9A,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x90,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(0x8E,PC),r0
	extu.w r2,r2
	mov.l r2,@(r0,r4)

loc_8c0ecb92:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ecb9c:
	mov.l r14,@-r15
	mov 0x02,r3
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt.s loc_8c0ecc12
	mov.l @(0x18,r4),r5
	mov.b @(0x4,r4),r0
	mov 0x00,r7
	tst r0,r0
	bf.s loc_8c0ecc5e
	mov 0x01,r6
	mov.b @(0x4,r4),r0
	mov.w @(0x64,PC),r1
	add 0x01,r0
	mov.l @(0x74,PC),r3
	mov.b r0,@(0x4,r4)
	add r4,r1
	mov.w @(0x5C,PC),r0
	mov.w @(0x58,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0x56,PC),r0
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(0x3C,PC),r0
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
	mov.l @(0x38,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x34,PC),r3
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov.l @r3,r0
	mov.b @(0x3,r0),r0
	cmp/eq 0x04,r0
	bf loc_8c0ecc44

loc_8c0ecc12:
	lds.l @r15+,pr
	mov.l @(0x28,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ecc1a:
	#data 0x3801
loc_8c0ecc1c:
	#data 0x0158
loc_8c0ecc1e:
	#data 0x00CC
loc_8c0ecc20:
	#data 0x00DC
loc_8c0ecc22:
	#data 0x00C0
loc_8c0ecc24:
	#data 0x012C
loc_8c0ecc26:
	#data 0x01A3
	#align4

loc_8c0ecc28:
	#data bank04.loc_8c044f12
loc_8c0ecc2c:
	#data bank0e.loc_8c0ecb9c
loc_8c0ecc30:
	#data bank0e.loc_8c0eccce
loc_8c0ecc34:
	#data bank12.loc_8c129560
loc_8c0ecc38:
	#data bank12.loc_8c1294c8
loc_8c0ecc3c:
	#data 0x8c26823c
loc_8c0ecc40:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c0ecc44:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov r7,r0
	nop 
	mov.w r0,@(0x1C,r4)
	mov 0x31,r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)

loc_8c0ecc5e:
	mov.w @(0x9E,PC),r0
	mov.b r7,@(r0,r4)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x94,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c0eccc6
	mov 0x34,r0
	mov.w @(0x8E,PC),r14
	fmov @(r0,r5),fr3
	add r5,r14
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x7E,PC),r0
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov r0,r14
	extu.w r14,r3
	tst r3,r3
	bt loc_8c0eccbe
	mov.w @(0x6C,PC),r0
	extu.w r14,r3
	mov.b r6,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/eq r3,r0
	bt loc_8c0eccae
	mov r14,r0
	nop 
	mov.l @(0x68,PC),r3
	mov 0x17,r5
	mov.w r0,@(0x1C,r4)
	mov r0,r6
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c0eccae:
	mov.l @(0x60,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c0eccc8
	lds.l @r15+,pr
	mov.l @(0x58,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0eccbe:
	mov r14,r0
	nop 
	bra loc_8c0eccc8
	mov.w r0,@(0x1C,r4)

loc_8c0eccc6:
	mov.b r7,@(r0,r4)

loc_8c0eccc8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0eccce:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r3
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt.s loc_8c0eccf2
	mov.l @(0x18,r14),r13
	mov.w @(0x1E,PC),r0
	mov.w @(r0,r13),r1
	mov.w @(0x1C,PC),r0
	extu.w r1,r1
	mov.l @(r0,r14),r2
	cmp/eq r1,r2
	bt loc_8c0ecd1c

loc_8c0eccf2:
	lds.l @r15+,pr
	mov.l @(0x20,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ecd00:
	#data 0x012C
loc_8c0ecd02:
	#data 0x0130
loc_8c0ecd04:
	#data 0x0150
loc_8c0ecd06:
	#data 0x0158
loc_8c0ecd08:
	#data 0x00CC
	#align4

loc_8c0ecd0c:
	#data bank03.loc_8c034e8c
loc_8c0ecd10:
	#data 0x8c289634
loc_8c0ecd14:
	#data bank03.loc_8c034dee
loc_8c0ecd18:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c0ecd1c:
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c0ecdc6
	mov 0xF8,r4
	mov.b @(0x4,r14),r0
	mov.w @(0x13C,PC),r1
	add 0x01,r0
	mov.l @(0x148,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x134,PC),r0
	mov.w @(0x130,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0x12E,PC),r0
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
	mov.l @(0x108,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xE2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ecd98
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c0ecd98:
	mov 0x5C,r0
	mov.l @(0xE8,PC),r3
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov 0x00,r6
	mov 0x1B,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0ecdc6:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c0ece1a
	mov 0x00,r12
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
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.l @(0x98,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ecea4
	mov.b @(0x5,r14),r0
	mov 0x01,r6
	mov.l @(0x88,PC),r3
	mov 0x00,r7
	add 0x01,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	mov 0x22,r0
	mov.b r12,@(r0,r14)
	mov 0x1B,r5
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0ece1a:
	mov.w @(0x52,PC),r0
	mov.b @(r0,r13),r3
	cmp/pz r3
	bf loc_8c0ece94
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.w @(0x46,PC),r0
	extu.b r2,r2
	mov.b @(r0,r13),r3
	cmp/eq r3,r2
	bt loc_8c0ece4c
	mov.b @(r0,r13),r2
	mov 0x22,r0
	mov.l @(0x54,PC),r3
	mov 0x1B,r5
	mov 0x01,r6
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r7
	extu.b r7,r7
	jsr @r3
	mov r14,r4
	mov.l @(0x48,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4

loc_8c0ece4c:
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
	bra loc_8c0ecea4
	fmov fr2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ece66:
	#data 0x00DC
loc_8c0ece68:
	#data 0x00C0
loc_8c0ece6a:
	#data 0x012C
loc_8c0ece6c:
	#data 0x01A3
loc_8c0ece6e:
	#data 0x0130
loc_8c0ece70:
	#data 0x0141
	#align4

loc_8c0ece74:
	#data bank12.loc_8c129560
loc_8c0ece78:
	#data bank12.loc_8c1294c8
loc_8c0ece7c:
	#data 0x43AB6DB6
loc_8c0ece80:
	#data 0x41555555
loc_8c0ece84:
	#data bank03.loc_8c034c38
loc_8c0ece88:
	#data bank03.loc_8c034d8c
loc_8c0ece8c:
	#data bank03.loc_8c034cd6
loc_8c0ece90:
	#data bank0b.loc_8c0b7854

;==============================================
loc_8c0ece94:
	mov.w @(loc_8c0eceae,PC),r0
	mov.b r12,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r12,r0
	nop 
	mov.b r0,@(0x5,r14)

loc_8c0ecea4:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eceae:
	#data 0x012C

;==============================================
loc_8c0eceb0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0x12C,PC),r3
	mov 0x03,r5
	mov.w r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ecef2
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov.w @(0x104,PC),r1
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.w @(0x4,r15),r0
	mov r0,r2
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0xF4,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.l @(r0,r1),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0ecef2:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
loc_8C0ECEFA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r3 ; r3 set to 0x02
	mov.w @(loc_8C0ECFD6,pc),r0 ; r0 set to 0x1B4
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.l @(r0,r13),r12
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0xB4
	cmp/ge r3,r0
	bf loc_8C0ECF22
	lds.l @r15+,pr
	mov.l @(loc_8C0ECFF0,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8c0ecf22:
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf loc_8c0ecf96
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0ECFDA,pc),r1
	add 0x01,r0
	mov.l @(loc_8c0ecff4,pc),r3
	mov.b r0,@(0x04,r14)
	mov 0x00,r0
	mov.b r0,@(0x05,r14)
	add r14,r1
	mov.w @(loc_8C0ECFDC,pc),r0
	mov.w @(loc_8C0ECFDA,pc),r2
	jsr @r3
	add r12,r2
	mov.w @(loc_8C0ECFDE,pc),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r12),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r12),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0
	fmov.s @(r0,r12),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0
	fmov.s @(r0,r12),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0ECFE0,pc),r0
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
	mov.l @(loc_8c0ecff8,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(loc_8c0ecffc,pc),r3
	mov.b @(r0,r12),r2
	mov 0x19,r5
	mov 0x04,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x24,r0
	mov.b @(r0,r12),r2
	mov 0xF8,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)

loc_8c0ecf96:
	mov 0x24,r0
	mov.l @(loc_8c0ed000,pc),r3
	mov.b @(r0,r12),r2
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0ECFE2,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0ecfb2
	mov.l @(loc_8c0ed004,pc),r3
	mov 0x04,r5
	jsr @r3
	mov r12,r4

loc_8c0ecfb2:
	mov.b @(0x05,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0ecfce
	mov.w @(loc_8C0ECFE4,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bf loc_8c0ecfce
	mov.b @(0x06,r13),r0
	mov 0x01,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c0ed008

loc_8c0ecfce:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8c0ed048
	mov.b r0,@(0x04,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ecfd6:
	#data 0x01B4
loc_8c0ecfd8:
	#data 0x3802
loc_8C0ECFDA:
	#data 0x00DC
loc_8C0ECFDC:
	#data 0x00C0
loc_8C0ECFDE:
	#data 0x012C
loc_8C0ECFE0:
	#data 0x01A3
loc_8C0ECFE2:
	#data 0x0141
loc_8C0ECFE4:
	#data 0x01F6
	#align4

loc_8c0ecfe8:
	#data bank04.loc_8c044f12
loc_8c0ecfec:
	#data bank0e.loc_8c0ecefa
loc_8c0ecff0:
	#data bank04.loc_8c0450c0
loc_8c0ecff4:
	#data bank12.loc_8c129560
loc_8c0ecff8:
	#data bank12.loc_8c1294c8
loc_8c0ecffc:
	#data bank03.loc_8c034e8c
loc_8c0ed000:
	#data bank03.loc_8c034dee
loc_8c0ed004:
	#data bank04.loc_8c0424a6

;==============================================
loc_8c0ed008:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8c0ed048
	mov.l @(loc_8c0ed054,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8c0ed058,pc),r1
	and 0x07,r0
	shll2 r0
	fmov.s @(r0,r1),fr4
	mov.w @(loc_8C0ED052,pc),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0ed028
	mov 0x34,r0
	fneg fr4

loc_8c0ed028:
	fmov.s @(r0,r13),fr3
	mov.l @(loc_8c0ed054,pc),r3
	fadd fr4,fr3
	jsr @r3
	fmov.s fr3,@(r0,r14)
	mov.l @(loc_8c0ed05c,pc),r1
	and 0x07,r0
	shll2 r0
	fmov.s @(r0,r1),fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c0ed048:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0ED052:
	#data 0x0130
	#align4

loc_8c0ed054:
	#data bank03.loc_8c03319e
loc_8c0ed058:
	#data bank15.loc_8c15fa6c
loc_8c0ed05c:
	#data bank15.loc_8c15fa8c

;==============================================
;unused
loc_8c0ed060:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x14C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ed08c
	mov r0,r4
	mov.l @(0x13C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.w @(0x11E,PC),r3
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.b r2,@(r0,r4)

loc_8c0ed08c:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
loc_8C0ED094:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0ED1BC,pc),r1 ; r1 set to 0x8C15FAAc
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0ED0A8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0xF2,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x108,PC),r3
	add 0x01,r0
	mov.w @(0xE6,PC),r2
	mov.b r0,@(0x4,r14)
	mov.w @(0xE4,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xE0,PC),r0
	mov 0x01,r13
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
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
	mov.w @(0xC4,PC),r0
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
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r14,r1
	mov.b @(r0,r5),r2
	mov 0x08,r3
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov r5,r2
	add 0x34,r2
	mov.b r13,@r14
	mov.b r3,@(r0,r14)
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(0xAC,PC),r3
	mov.b @(r0,r14),r6
	mov 0x04,r0
	extu.b r6,r6
	shll r6
	shll2 r6
	add r3,r6
	fmov @r6,fr3
	ftrc fr3,fpul
	fmov @(r0,r6),fr3
	mov.w @(0x7A,PC),r0
	mov.w @(r0,r14),r2
	sts fpul,r4
	ftrc fr3,fpul
	tst r2,r2
	bt.s loc_8c0ed140
	sts fpul,r6
	neg r6,r6
	neg r4,r4

loc_8C0ED140:
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov 0x20,r3
	float fpul,fr3
	lds r6,fpul
	fadd fr3,fr2
	float fpul,fr3
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x54,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0x1D,r0
	mov.b @(r0,r5),r2
	mov.w @(0x42,PC),r0
	extu.b r2,r2
	mov.l r2,@(r0,r14)
	mov r3,r0
	nop 
	mov.l @(0x54,PC),r3
	mov 0x1B,r5
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0ed19a
	mov.w @(0x28,PC),r0
	mov 0x1A,r3
	mov.b r13,@r14
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0ED19A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ed1a2:
	#data 0x3a00
loc_8c0ed1a4:
	#data 0x00dc
loc_8c0ed1a6:
	#data 0x00c0
loc_8c0ed1a8:
	#data 0x012c
loc_8c0ed1aa:
	#data 0x01a3
loc_8c0ed1ac:
	#data 0x0130
loc_8c0ed1ae:
	#data 0x013f
loc_8c0ed1b0:
	#data 0x00cc
loc_8c0ed1b2:
	#data 0x0149
	#align4

loc_8C0ED1B4:
	#data bank04.loc_8c044F12
loc_8C0ED1B8:
	#data loc_8c0eD094
loc_8C0ED1BC:
	#data bank15.loc_8c15FAAc
loc_8C0ED1C0:
	#data bank12.loc_8c129560
loc_8C0ED1C4:
	#data bank12.loc_8c1294C8
loc_8C0ED1C8:
	#data bank15.loc_8c15FABc
loc_8C0ED1CC:
	#data bank03.loc_8c034C38
loc_8C0ED1D0:
	#data bank10.loc_8c104434

;==============================================
loc_8C0ED1D4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x7C,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0x68,PC),r0
	mov 0x1A,r2
	mov.b r2,@(r0,r14)
	add 0xF8,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0ed20e
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
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0ED20E:
	mov.w @(0x40,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	mov.w @(0x3C,PC),r0
	extu.b r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8c0ed228
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0ed234

loc_8C0ED228:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0ed23c
	mov.l @r15+,r14

loc_8C0ED234:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ED23C:
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C0ED256,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C0ED24A:
	mov.l @(loc_8C0ED260,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ed250:
	#data 0x0149
loc_8c0ed252:
	#data 0x0159
loc_8c0ed254:
	#data 0x00cc
loc_8c0ed256:
	#data 0x012c
	#align4

loc_8C0ED258:
	#data bank03.loc_8c034D8c
loc_8C0ED25C:
	#data bank03.loc_8c03340c
loc_8C0ED260:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0ED264:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x154,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ed290
	mov r0,r4
	mov.l @(0x144,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.w @(0x126,PC),r3
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.b r2,@(r0,r4)

loc_8c0ed290:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0ED298:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0ED3C8,pc),r1 ; r1 set to 0x8C15FACc
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0ED2AC:
	mov.w @(loc_8C0ED3B0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0ED3CC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0ED3B0,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0ED3B2,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0ED3B4,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0ED3B6,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0ED3D0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr

loc_8C0ED304:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r5,r14
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf.s loc_8C0ED364
	mov r4,r13
	mov.w @(loc_8C0ED3B8,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8C0ED38c
	mov.w @(loc_8C0ED3BA,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8C0ED38c
	mov.w @(loc_8C0ED3B4,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.b r3,@(r0,r13)
	add 0x18,r0 ; r0 set to 0x144, r0 set to 0x144
	mov.l @(r0,r14),r2
	mov.l r2,@(r0,r13)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	fmov.s fr3,@(r0,r13)
	mov.w @(loc_8C0ED3BC,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r13)
	mov.w @(loc_8C0ED3BE,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r13)
	add 0x1B,r0 ; r0 set to 0x14B, r0 set to 0x14b
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0ED3BC,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	extu.b r3,r3
	lds r3,fpul
	fmov.s @(r0,r14),fr2
	mova @(loc_8C0ED3D4,pc),r0  ; r0 set to 0x8C0ED3D4, r0 set to 0x8C0ED3D4
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	float fpul,fr3
	fmac fr0,fr3,fr2
	bra loc_8C0ED392
	fmov.s fr2,@(r0,r14)

loc_8C0ED364:
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0ED3DC,pc),r3 ; r3 set to 0x8C10235c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mova @(loc_8C0ED3D8,pc),r0  ; r0 set to 0x8C0ED3D8
	mov r15,r5
	mov 0x01,r6 ; r6 set to 0x01
	fmov.s fr3,@r15
	mov 0x08,r7 ; r7 set to 0x08
	fmov.s @r0,fr3
	mov.w @(loc_8C0ED3BC,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r14),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fadd fr3,fr2
	fmov.s fr2,@(r0,r15)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr2,@(r0,r15)
	jsr @r3
	mov r13,r4

loc_8C0ED38C:
	mov r14,r5
	bsr loc_8C0ED39c
	mov r13,r4

loc_8C0ED392:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ED39C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0ED3B4,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0ED3E0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0ED3ae:
	#data 0x3A00
loc_8C0ED3B0:
	#data 0x00Dc
loc_8C0ED3B2:
	#data 0x00C0
loc_8C0ED3B4:
	#data 0x012c
loc_8C0ED3B6:
	#data 0x01A3
loc_8C0ED3B8:
	#data 0x01D0
loc_8C0ED3BA:
	#data 0x01E9
loc_8C0ED3BC:
	#data 0x041c
loc_8C0ED3BE:
	#data 0x0130
	#align4

loc_8C0ED3C0:
	#data bank04.loc_8c044F12
loc_8C0ED3C4:
	#data loc_8c0eD298
loc_8C0ED3C8:
	#data bank15.loc_8c15FACc
loc_8C0ED3CC:
	#data bank12.loc_8c129560
loc_8C0ED3D0:
	#data bank12.loc_8c1294C8
loc_8C0ED3D4:
	#data 0x40092492
loc_8C0ED3D8:
	#data 0x42CDB6Db
loc_8C0ED3DC:
	#data bank10.loc_8c10235c
loc_8C0ED3E0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0ED3E4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x03,r5
	mov.l @(0x114,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ed426
	mov r0,r4
	mov.w @(0xEE,PC),r0
	mov.l @(0x104,PC),r3
	mov.l r3,@(0x10,r4)
	mov.w @(0xEC,PC),r3
	mov.l r14,@(0x18,r4)
	mov.w @(r0,r14),r2
	mov.w @(0xE4,PC),r0
	extu.w r2,r2
	mov.l r2,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @r15,r3
	shlr8 r3
	mov.b r3,@(r0,r4)

loc_8C0ED426:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ED432:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0ED50C,pc),r0 ; r0 set to 0x8C15FADc
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0ED448:
	mov r4,r3
	mov.l @(loc_8C0ED510,pc),r1 ; r1 set to 0x8C15FAF0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0ED45A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0ED4F6,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0ED514,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0ED4F6,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0ED4F8,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0ED4FA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0ED4FC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0ED518,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x08,r3 ; r3 set to 0x08
	mov r14,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r3,@(r0,r14)
	add 0x34,r1
	mov.l @(loc_8C0ED518,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0ED4FE,pc),r0 ; r0 set to 0xB4
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.w r0,@(0x1C,r14)
	add 0xCE,r0 ; r0 set to 0x82
	mov.w r0,@(0x1E,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b r3,@(r0,r14)
	mov 0x0D,r6 ; r6 set to 0x0d
	mov.l @(loc_8C0ED51C,pc),r3 ; r3 set to 0x8C034C38
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0ED500,pc),r0 ; r0 set to 0x149
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r4
	mov.b r2,@r14
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8C0ED520,pc),r3 ; r3 set to 0x8C104434
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ed4f0:
	#data 0x0158
loc_8c0ed4f2:
	#data 0x00cc
loc_8c0ed4f4:
	#data 0x3a02
loc_8c0ed4f6:
	#data 0x00dc
loc_8c0ed4f8:
	#data 0x00c0
loc_8c0ed4fa:
	#data 0x012c
loc_8c0ed4fc:
	#data 0x01a3
loc_8c0ed4fe:
	#data 0x00b4
loc_8c0ed500:
	#data 0x0149
	#align4

loc_8C0ED504:
	#data bank04.loc_8c044F12
loc_8C0ED508:
	#data loc_8c0eD432
loc_8C0ED50C:
	#data bank15.loc_8c15FADc
loc_8C0ED510:
	#data bank15.loc_8c15FAF0
loc_8C0ED514:
	#data bank12.loc_8c129560
loc_8C0ED518:
	#data bank12.loc_8c1294C8
loc_8C0ED51C:
	#data bank03.loc_8c034C38
loc_8C0ED520:
	#data bank10.loc_8c104434

;==============================================
loc_8C0ED524:
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
	mova @(0x108,PC),r0
	mov r4,r14
	mov.l r5,@r15
	fmov @r0,fr15
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt.s loc_8c0ed5a0
	mov 0x00,r8
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0ed5a0
	mov r8,r0
	nop 
	mov r14,r2
	mov r15,r1
	mov.l @(0xE8,PC),r3
	add 0x34,r2
	mov.w r0,@(0x1E,r14)
	add 0x04,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x08,r0
	mov r15,r5
	fmov @(r0,r15),fr3
	mov 0x08,r0
	mov.l @(0xD8,PC),r3
	add 0x04,r5
	fadd fr15,fr3
	mov 0x08,r7
	mov 0x01,r6
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(0xBA,PC),r11
	mov r8,r13
	mov.l @(0xCC,PC),r12
	mov.l @(0xC8,PC),r9
	mov.w @(0xB0,PC),r10

loc_8C0ED58A:
	mov r13,r5
	or r12,r5
	jsr @r9
	mov r14,r4
	add r10,r13
	cmp/hs r11,r13
	bf loc_8c0ed58a
	mov.l @(0xBC,PC),r3
	mov 0x49,r5
	jsr @r3
	mov r14,r4

loc_8C0ED5A0:
	mov.w @(0x1C,r14),r0
	mov 0x3C,r3
	cmp/ge r3,r0
	bt loc_8c0ed5ba
	mov.w @(0x94,PC),r0
	mov 0x01,r4
	mov.b r4,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst r4,r0
	bt loc_8c0ed5fe
	mov.w @(0x88,PC),r0
	bra loc_8c0ed5fe
	mov.b r8,@(r0,r14)

loc_8C0ED5BA:
	mov 0x23,r0
	mov.b @(r0,r14),r2
	add 0x20,r2
	mov.b r2,@(r0,r14)
	extu.b r2,r2
	tst r2,r2
	bf loc_8c0ed5fe
	mov 0x02,r5
	bsr loc_8c0ed3e4
	mov.l @r15,r4
	tst r0,r0
	bt.s loc_8c0ed5fe
	mov r0,r4
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov.w @(0x62,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ed5ee
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x04,r0
	fneg fr3
	fmov fr3,@(r0,r15)

loc_8C0ED5EE:
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov fr15,@(r0,r4)

loc_8C0ED5FE:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0ed610
	mov.l @r15,r5
	bsr loc_8c0ed9a6
	mov r14,r4

loc_8C0ED610:
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

;----------------------------------------------
loc_8C0ED626:
	rts
	nop

;----------------------------------------------
loc_8C0ED62A:
	mov r4,r3
	mov.l @(loc_8C0ED660,pc),r1 ; r1 set to 0x8C15FB00
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ed63c:
	#data 0x0100
loc_8c0ed63e:
	#data 0x0800
loc_8c0ed640:
	#data 0x012c
loc_8c0ed642:
	#data 0x0130
	#align4

loc_8C0ED644:
	#data 0x41892492
loc_8C0ED648:
	#data bank12.loc_8c1294C8
loc_8C0ED64C:
	#data bank10.loc_8c10235c
loc_8C0ED650:
	#data bank0b.loc_8c0bA710
loc_8C0ED654:
	#data 0x80000001
loc_8C0ED658:
	#data bank04.loc_8c04223a
loc_8C0ED65c:
	#data 0x42055555
loc_8C0ED660:
	#data bank15.loc_8c15FB00

;==============================================
loc_8C0ED664:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0ED776,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0ED780,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0ED776,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0ED778,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0ED77A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0ED77C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0ED784,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x0F,r3 ; r3 set to 0x0f
	mov.l @(loc_8C0ED788,pc),r2 ; r2 set to 0x8C03319e
	jsr @r2
	mov.b r3,@(r0,r14)
	extu.b r0,r4 ; r4 set to 0x24
	mov.l @(loc_8C0ED79C,pc),r3 ; r3 set to 0x8C034C38
	add 0x80,r4 ; r4 set to 0xFFFFFFA4
	exts.w r4,r4 ; r4 ??
	lds r4,fpul
	mova @(loc_8C0ED78C,pc),r0  ; r0 set to 0x8C0ED78c
	fmov.s @r0,fr2 ; r2 ??
	mova @(loc_8C0ED790,pc),r0  ; r0 set to 0x8C0ED790
	fmov.s @r0,fr1
	mov 0x5C,r0 ; r0 set to 0x5c
	float fpul,fr3
	mov r14,r4
	mov 0x0E,r6 ; r6 set to 0x0e
	mov 0x1B,r5 ; r5 set to 0x1b
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fdiv fr1,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0ED794,pc),r0  ; r0 set to 0x8C0ED794
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0ED798,pc),r0  ; r0 set to 0x8C0ED798
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0ED702:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0ED7A0,pc),r3 ; r3 set to 0x8C034D8c
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
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0ED75c
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0ED9A6
	mov.l @r15+,r14

loc_8C0ED75C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ED764:
	mov r4,r3
	mov.l @(loc_8C0ED7A4,pc),r1 ; r1 set to 0x8C15FB10
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0ED776:
	#data 0x00Dc
loc_8C0ED778:
	#data 0x00C0
loc_8C0ED77A:
	#data 0x012c
loc_8C0ED77C:
	#data 0x01A3
	#align4

loc_8C0ED780:
	#data bank12.loc_8c129560
loc_8C0ED784:
	#data bank12.loc_8c1294C8
loc_8C0ED788:
	#data bank03.loc_8c03319e
loc_8C0ED78C:
	#data 0x3FD55555
loc_8C0ED790:
	#data 0x43800000
loc_8C0ED794:
	#data 0x40092492
loc_8C0ED798:
	#data 0xBD892492
loc_8C0ED79C:
	#data bank03.loc_8c034C38
loc_8C0ED7A0:
	#data bank03.loc_8c034D8c
loc_8C0ED7A4:
	#data bank15.loc_8c15FB10

;==============================================
loc_8C0ED7A8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x11A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x112,PC),r2
	add 0x01,r0
	mov.l @(0x124,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x10C,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x108,PC),r0
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
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov 0x1B,r5
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x09,r6
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0ED820:
	mov.l r14,@-r15
	mov 0x24,r0
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r13)
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r14),r3
	mova @(0xB8,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(0x9A,PC),r0
	float fpul,fr3
	mov.w @(r0,r14),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c0ed84a
	fmul fr2,fr4
	fneg fr4

loc_8C0ED84A:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r13)
	mov.w @(0x84,PC),r0
	mov.b @(r0,r14),r3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mova @(0x98,PC),r0
	lds r3,fpul
	fmov @r0,fr0
	mov 0x38,r0
	mov.l @(0x94,PC),r3
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r13)
	jsr @r3
	mov r13,r4
	mov.w @(0x6A,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(0x68,PC),r0
	extu.w r2,r2
	mov.l @(r0,r13),r3
	cmp/eq r3,r2
	bt loc_8c0ed888
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8c0ed9a6
	mov.l @r15+,r14

loc_8C0ED888:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ED890:
	mov r4,r3
	mov.l @(loc_8C0ED8FC,pc),r1 ; r1 set to 0x8C15FB20
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0ED8A2:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0ED8D2,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0ED8AE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_8C0ED8E0,pc),r0 ; r0 set to 0x420, r0 set to 0x420
	mov r5,r14
	mov 0x20,r2 ; r2 set to 0x20, r2 set to 0x20
	mov.l r4,@r15
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	cmp/ge r2,r3
	bf loc_8C0ED900
	mov.w @(loc_8C0ED8E2,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov 0x00,r1 ; r1 set to 0x00, r1 set to 0x00
	bra loc_8C0ED994
	mov.l r1,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ed8ce:
	#data 0x00dc
loc_8c0ed8d0:
	#data 0x00c0
loc_8c0ed8d2:
	#data 0x012c
loc_8c0ed8d4:
	#data 0x01a3
loc_8c0ed8d6:
	#data 0x0141
loc_8c0ed8d8:
	#data 0x0130
loc_8c0ed8da:
	#data 0x0140
loc_8c0ed8dc:
	#data 0x0158
loc_8c0ed8de:
	#data 0x00cc
loc_8c0ed8e0:
	#data 0x0420
loc_8c0ed8e2:
	#data 0x00d0
	#align4

loc_8C0ED8E4:
	#data bank12.loc_8c129560
loc_8C0ED8E8:
	#data bank12.loc_8c1294C8
loc_8C0ED8EC:
	#data bank03.loc_8c034C38
loc_8C0ED8F0:
	#data 0x3FD55555
loc_8C0ED8F4:
	#data 0x40092492
loc_8C0ED8F8:
	#data bank03.loc_8c034D8c
loc_8C0ED8FC:
	#data bank15.loc_8c15FB20

;==============================================
loc_8c0ed900:
	mov.w @(loc_8C0ED9BA,pc),r2
	mov 0x7F,r4
	mov.l @(loc_8C0ED9C8,pc),r3
	add r14,r2
	mov.l @r3,r0
	mov.b @r2,r2
	mov.l @(0x1C,r0),r0
	extu.b r2,r2
	add r2,r0
	mov 0x0F,r2
	and r0,r4
	tst r4,r2
	bf loc_8c0ed98c
	mov 0xFC,r2
	mov.l @(loc_8c0ed9cc,pc),r0
	shad r2, r4
	mov.w @(loc_8C0ED9BC,pc),r2
	mov.b @(r0,r4),r1
	add r14,r2
	mov.w @r2,r2
	extu.b r1,r1
	cmp/ge r1,r2
	bt loc_8c0ed98c
	mov.w @(loc_8C0ED9BE,pc),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c0ed98c
	mov 0x02,r5
	bsr loc_8c0ed3e4
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0ed98c
	mov r0,r12
	mov.l @(loc_8c0ed9d0,pc),r2
	mov r15,r13
	jsr @r2
	add 0x04,r13
	and 0x0F,r0
	add 0xF8,r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0ed95e
	float fpul,fr3
	mov.l @(loc_8C0ED9D4,pc),r3
	lds r3,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c0ed95e:
	mova @(loc_8C0ED9D8,pc),r0
	fmov.s @r0,fr2
	mov.w @(loc_8C0ED9C0,pc),r0
	fmul fr2,fr3
	fmov.s fr3,@r13
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c0ed976
	fmov.s @r13,fr3
	fneg fr3
	fmov.s fr3,@r13

loc_8c0ed976:
	mov 0x34,r0
	fmov.s @r13,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r12)
	mova @(loc_8C0ED9DC,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r12)

loc_8c0ed98c:
	mov.w @(loc_8C0ED9C2,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ed99a

loc_8c0ed994:
	mov r14,r5
	bsr loc_8c0ed9a6
	mov.l @r15,r4

loc_8c0ed99a:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0ED9A6:
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C0ED9C4,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C0ED9B4:
	mov.l @(loc_8C0ED9E0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ed9ba:
	#data 0x01A4
loc_8c0ed9bc:
	#data 0x0420
loc_8c0ed9be:
	#data 0x01D0
loc_8c0ed9c0:
	#data 0x0130
loc_8c0ed9c2:
	#data 0x01DC
loc_8C0ED9C4:
	#data 0x012c
	#align4

loc_8c0ed9c8:
	#data 0x8C26823c
loc_8C0ED9CC:
	#data bank15.loc_8c15FB30
loc_8C0ED9D0:
	#data bank03.loc_8c03319e
loc_8c0ed9d4:
	#data 0x4F800000
loc_8c0ed9d8:
	#data 0x3FD55555
loc_8c0ed9dc:
	#data 0x42892492
loc_8C0ED9E0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0ed9e4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov r13,r14
	mov.l r11,@-r15
	mov r4,r12
	mov.l r10,@-r15
	mov 0x0A,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0xC4,PC),r11
	mov.l @(0xC4,PC),r9

loc_8c0ed9fe:
	mov 0x04,r5
	mov 0x00,r6
	jsr @r9
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0eda22
	mov r0,r4
	mov.l @(0xB8,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r12,@(0x18,r4)
	mov.b @(0x1,r12),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)

loc_8c0eda22:
	add 0x01,r14
	cmp/hs r10,r14
	bf loc_8c0ed9fe
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
;unused
loc_8c0eda3c:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x0A,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0x6C,PC),r11
	mov.l @(0x6C,PC),r9

loc_8c0eda56:
	mov 0x04,r5
	mov 0x00,r6
	jsr @r9
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0eda7a
	mov r0,r4
	mov.l @(0x60,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x20,r0
	mov.b r12,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)

loc_8c0eda7a:
	add 0x01,r14
	cmp/hs r10,r14
	bf loc_8c0eda56
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
loc_8C0EDA94:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0EDAA8
	mov.l @(0x18,r14),r5
	mov r14,r4
	bra loc_8C0EDAB0
	mov.l @r15+,r14

loc_8C0EDAA8:
	mov.l @(0x18,r14),r5
	mov r14,r4
	bra loc_8C0EDE70
	mov.l @r15+,r14

loc_8C0EDAB0:
	mov r4,r3
	mov.l @(loc_8C0EDACC,pc),r1 ; r1 set to 0x8C15FB38
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EDac2:
	#data 0x3A03
	#align4

loc_8C0EDAC4:
	#data bank04.loc_8c044F12
loc_8C0EDAC8:
	#data loc_8c0eDA94
loc_8C0EDACC:
	#data bank15.loc_8c15FB38

;==============================================
loc_8C0EDAD0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xD8,r15
	mov.l @(0x160,PC),r2
	mov r15,r1
	mov.l @(0x160,PC),r3
	mov r4,r14
	mov r5,r13
	mov r15,r12
	jsr @r3
	mov 0x28,r0
	mov.b @(0x4,r14),r0
	mov.w @(0x136,PC),r1
	add 0x01,r0
	mov.l @(0x150,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x12E,PC),r0
	mov.w @(0x12A,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0x128,PC),r0
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
	mov.w @(0x10C,PC),r0
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
	mov.l @(0x110,PC),r4
	mov.b @(r0,r13),r2
	mov 0x00,r11
	mov 0x0F,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xE2,PC),r0
	mov.b r11,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xDE,PC),r0
	mov.w @(r0,r14),r3
	add 0x06,r3
	mov.w r3,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov.w @(0xD4,PC),r0
	fmov @(r0,r4),fr5
	mova @(0xF4,PC),r0
	fmov @r0,fr15
	mov 0x21,r0
	mov.b @(r0,r14),r0
	fadd fr3,fr5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r12),r3
	mov.w @(0xC2,PC),r0
	lds r3,fpul
	mov.w @(r0,r13),r3
	float fpul,fr2
	tst r3,r3
	fmov fr2,fr4
	bt.s loc_8c0edb8c
	fmul fr15,fr4
	mova @(0xD8,PC),r0
	fneg fr4
	fmov @r0,fr2
	mov.w @(0xAE,PC),r0
	fmov @(r0,r4),fr5
	fadd fr2,fr5

loc_8C0EDB8C:
	fadd fr4,fr5
	mov 0x34,r0
	mov.l @(0xCC,PC),r3
	fmov fr5,@(r0,r14)
	mov.w @(0xA2,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	jsr @r3
	mov.w r0,@(0x1C,r14)
	and 0x0F,r0
	mov.w r0,@(0x1E,r14)
	mov 0x23,r0
	mov.b r11,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	add r3,r12
	mov.w @(0x14,r12),r0
	mov r0,r3
	lds r3,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov 0x10,r3
	float fpul,fr3
	fmov fr3,fr4
	fmul fr15,fr4
	fmov @(r0,r13),fr3
	mova @(0x98,PC),r0
	fadd fr4,fr3
	fsub fr2,fr3
	fmov @r0,fr2
	mov 0x5C,r0
	fdiv fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x64,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x58,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov 0x1B,r5
	mov.l @(0x74,PC),r3
	mov 0x0F,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x40,PC),r0
	mov 0x01,r2
	mov.l @(0x6C,PC),r3
	mov.b r2,@r14
	mov.b r11,@(r0,r14)
	jsr @r3
	mov r14,r4
	add 0x28,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EDC18:
	mov r4,r3
	mov.l @(loc_8C0EDC70,pc),r1 ; r1 set to 0x8C15FB48
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0edc2a:
	#data 0x00dc
loc_8c0edc2c:
	#data 0x00c0
loc_8c0edc2e:
	#data 0x012c
loc_8c0edc30:
	#data 0x01a3
loc_8c0edc32:
	#data 0x012e
loc_8c0edc34:
	#data 0x008c
loc_8c0edc36:
	#data 0x0130
loc_8c0edc38:
	#data 0x0088
loc_8c0edc3a:
	#data 0x041c
loc_8c0edc3c:
	#data 0x013f
loc_8c0edc3e:
	#data 0x0149
	#align4

loc_8C0EDC40:
	#data bank13.loc_8c13B478
loc_8C0EDC44:
	#data bank12.loc_8c129620
loc_8C0EDC48:
	#data bank12.loc_8c129560
loc_8C0EDC4C:
	#data bank12.loc_8c1294C8
loc_8c0edc50:
	#data 0x8C26A518
loc_8c0edc54:
	#data 0x42555555
loc_8c0edc58:
	#data 0x3FD55555
loc_8c0edc5c:
	#data 0xC2555555
loc_8C0EDC60:
	#data bank03.loc_8c03319e
loc_8c0edc64:
	#data 0x41A00000
loc_8C0EDC68:
	#data bank03.loc_8c034C38
loc_8C0EDC6C:
	#data bank10.loc_8c104434
loc_8C0EDC70:
	#data bank15.loc_8c15FB48

;==============================================
loc_8C0EDC74:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bf.s loc_8C0EDC94
	mov 0x00,r12 ; r12 set to 0x00
	mov.w @(loc_8C0EDD9C,pc),r0 ; r0 set to 0x12c
	bra loc_8C0EDD32
	mov.b r12,@(r0,r14)

loc_8c0edc94:
	mov.w @(loc_8c0edd9c,pc),r0
	mov 0x01,r3
	mov r13,r5
	mov.b r3,@(r0,r14)
	bsr loc_8c0eddfe
	mov r14,r4
	tst r0,r0
	bf loc_8c0edd32
	mov.l @(loc_8c0edda4,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0EDD9E,pc),r0
	mov 0x5C,r1
	add r14,r1
	mov.b r12,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bf loc_8c0edcfc
	mov 0x64,r0
	fmov.s @(r0,r14),fr4
	mov.w @(loc_8C0EDDA0,pc),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0edce0
	mov 0x34,r0
	fneg fr4

loc_8c0edce0:
	fmov.s @(r0,r13),fr3
	fadd fr3,fr4
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0
	fsub fr3,fr4
	fmov.s @(r0,r14),fr3
	fmul fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0edcfc
	mov r12,r0
	nop
	bra loc_8c0edd08
	mov.w r0,@(0x1C,r14)

loc_8c0edcfc:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0edd32

loc_8c0edd08:
	mov.b @(0x05,r14),r0
	mov 0x10,r6
	fldi0 fr4
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x1B,r5
	mov.w @(loc_8C0EDDA2,pc),r0
	mov.w @(r0,r14),r3
	add 0xFA,r3
	mov.w r3,@(r0,r14)
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	mov.l @(loc_8c0edda8,pc),r3
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0EDD32:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EDD3C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8c0eddfe
	mov r5,r13
	tst r0,r0
	bf loc_8c0edd94
	mov 0x64,r0
	fmov @(r0,r14),fr5
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mova @(0x58,PC),r0
	fmov fr5,fr4
	fmul fr3,fr5
	fmov @r0,fr2
	mov 0x64,r0
	fdiv fr2,fr5
	fmov fr5,@(r0,r14)
	mov.w @(0x3A,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0edd6e
	mov 0x34,r0
	fneg fr4

loc_8C0EDD6E:
	fmov @(r0,r13),fr3
	mov.l @(0x30,PC),r3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x20,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	add 0xF7,r0
	mov.b @(r0,r13),r3
	cmp/pz r3
	bt loc_8c0edd94
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ee0f8
	mov.l @r15+,r14

loc_8C0EDD94:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EDD9C:
	#data 0x012c
loc_8c0edd9e:
	#data 0x0149
loc_8c0edda0:
	#data 0x0130
loc_8c0edda2:
	#data 0x012E
	#align4

loc_8C0EDDA4:
	#data bank03.loc_8c034D8c
loc_8C0EDDA8:
	#data bank03.loc_8c034C38
loc_8C0EDDAC:
	#data 0x41700000
loc_8C0EDDb0:
	#data 0x41800000

;==============================================
loc_8C0EDDB4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0EDE88,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0EDE8C,pc),r3 ; r3 set to 0x8C03340c
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
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0EDDF6
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0EE0F8
	mov.l @r15+,r14

loc_8C0EDDF6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EDDFE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf.s loc_8c0ede1c
	mov r4,r14
	mov.w @(0x74,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0ede1c
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_8C0EDE1C:
	mov 0x02,r0
	mov.l @(0x70,PC),r1
	mov.b r0,@(0x5,r14)
	mov 0x01,r3
	mov.w @(0x5C,PC),r0
	mov.w @(r0,r14),r2
	xor r3,r2
	jsr @r1
	mov.w r2,@(r0,r14)
	and 0x07,r0
	add 0x04,r0
	lds r0,fpul
	cmp/pz r0
	bt.s loc_8c0ede42
	float fpul,fr3
	mov.l @(0x58,PC),r3
	lds r3,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C0EDE42:
	mova @(0x54,PC),r0
	fmov fr3,fr4
	fmov @r0,fr2
	mov.w @(0x38,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0ede54
	fmul fr2,fr4
	fneg fr4

loc_8C0EDE54:
	mov 0x5C,r0
	mov.l @(0x44,PC),r3
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mov 0x2B,r6
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EDE70:
	mov r4,r3
	mov.l @(loc_8C0EDEA0,pc),r1 ; r1 set to 0x8C15FB54
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ede82:
	#data 0x01d0
loc_8c0ede84:
	#data 0x0130
	#align4

loc_8C0EDE88:
	#data bank03.loc_8c034dee
loc_8C0EDE8C:
	#data bank03.loc_8c03340c
loc_8C0EDE90:
	#data bank03.loc_8c03319e
loc_8C0EDE94:
	#data 0x4F800000
loc_8C0EDE98:
	#data 0x3FD55555
loc_8C0EDE9C:
	#data bank03.loc_8c034e8c
loc_8C0EDEA0:
	#data bank15.loc_8c15FB54

;==============================================
loc_8C0EDEA4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0x98,r15
	mov r15,r1
	mov.l @(0x180,PC),r2
	mov.l @(0x180,PC),r3
	mov r15,r7
	mov r4,r14
	add 0x40,r7
	add 0x40,r1
	jsr @r3
	mov 0x28,r0
	mov.l @(0x178,PC),r2
	mov r15,r1
	mov.l @(0x170,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0A,r0
	mov.l @(0x170,PC),r2
	mov r15,r1
	mov.l @(0x164,PC),r3
	mov r15,r6
	add 0x0C,r6
	add 0x0C,r1
	jsr @r3
	mov 0x28,r0
	mov.l @(0x164,PC),r2
	mov r15,r4
	mov.l @(0x154,PC),r3
	mov r15,r1
	jsr @r3
	mov 0x0A,r0
	mov.b @(0x4,r14),r0
	mov.w @(0x132,PC),r1
	add 0x01,r0
	mov.l @(0x154,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x12A,PC),r0
	mov.w @(0x126,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0x124,PC),r0
	mov 0x01,r13
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
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
	mov.w @(0x108,PC),r0
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
	mov.l @(0x118,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x0F,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xE2,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xDE,PC),r0
	mov.w @(r0,r14),r3
	add 0x06,r3
	mov.w r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r13,r2
	bf loc_8c0edf60
	mov.w @(0xCE,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C0EDF60:
	mov 0x21,r0
	mov.b @(r0,r14),r1
	mov.w @(0xC0,PC),r0
	extu.b r1,r1
	shll2 r1
	mov.w @(r0,r5),r2
	add r7,r1
	mov.w @r1,r3
	tst r2,r2
	lds r3,fpul
	bt.s loc_8c0edf7a
	float fpul,fr4
	fneg fr4

loc_8C0EDF7A:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	add r3,r7
	mov.w @(0x2,r7),r0
	mov r0,r3
	lds r3,fpul
	mov.w @(0x94,PC),r0
	float fpul,fr3
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xAC,PC),r0
	fmov @r0,fr5
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mova @(0xA8,PC),r0
	fmov @r0,fr2
	extu.b r3,r3
	shll2 r3
	add r6,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr4
	mov.w @(0x6A,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0edfc6
	fdiv fr5,fr4
	fneg fr4

loc_8C0EDFC6:
	mov 0x5C,r0
	mov r14,r5
	fmov fr4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	add 0x40,r5
	extu.b r3,r3
	shll2 r3
	add r3,r6
	mov.w @(0x2,r6),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x74,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	float fpul,fr3
	mov 0x00,r3
	fmul fr2,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.l r3,@(0x4,r5)
	mov.l r3,@r5
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shlr r0
	shll r0
	mov.w @(r0,r4),r2
	mov 0x48,r0
	mov 0x40,r3
	mov.l r2,@(r0,r14)
	mov 0x20,r2
	mov.w @(0x18,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0x03,r0
	bra loc_8c0ee058
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ee01e:
	#data 0x00dc
loc_8c0ee020:
	#data 0x00c0
loc_8c0ee022:
	#data 0x012c
loc_8c0ee024:
	#data 0x01a3
loc_8c0ee026:
	#data 0x012e
loc_8c0ee028:
	#data 0x0130
loc_8c0ee02a:
	#data 0x041c
loc_8c0ee02c:
	#data 0x013d
	#align4

loc_8C0EE030:
	#data bank13.loc_8c13B4A0
loc_8C0EE034:
	#data bank12.loc_8c129620
loc_8C0EE038:
	#data bank13.loc_8c13B4C8
loc_8C0EE03C:
	#data bank13.loc_8c13B4D2
loc_8C0EE040:
	#data bank13.loc_8c13B4Fa
loc_8C0EE044:
	#data bank12.loc_8c129560
loc_8C0EE048:
	#data bank12.loc_8c1294C8
loc_8C0EE04C:
	#data 0x43800000
loc_8C0EE050:
	#data 0x3FD55555
loc_8C0EE054:
	#data 0x40092492

;==============================================
;unused?
loc_8C0EE058:
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov r15,r3
	add 0x34,r3
	mov.l @(0xA8,PC),r2
	extu.b r6,r6
	add r3,r6
	mov.b @r6,r6
	mov 0x1B,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x94,PC),r0
	mov 0x00,r3
	mov.b r13,@r14
	mov.b r3,@(r0,r14)
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r14,r4
	add 0x68,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EE08C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0EE118,pc),r3 ; r3 set to 0x8C034D8c
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0EE10C,pc),r0 ; r0 set to 0x149
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0EE11C,pc),r3 ; r3 set to 0x8C0332E0
	mov.b r2,@(r0,r14)
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
	tst r0,r0
	bf loc_8C0EE0F0
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0EE0F8
	mov.l @r15+,r14

loc_8C0EE0F0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EE0F8:
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C0EE10E,pc),r0 ; r0 set to 0x12c
	mov.b r5,@r4
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C0EE106:
	mov.l @(loc_8C0EE120,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EE10C:
	#data 0x0149
loc_8C0EE10E:
	#data 0x012c
	#align4

loc_8C0EE110:
	#data bank03.loc_8c034C38
loc_8C0EE114:
	#data bank10.loc_8c104434
loc_8C0EE118:
	#data bank03.loc_8c034D8c
loc_8C0EE11C:
	#data bank03.loc_8c0332E0
loc_8C0EE120:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0ee124:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x98,PC),r3
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ee154
	mov r0,r4
	mov.l @(0x8C,PC),r3
	mov.l r3,@(0x10,r4)
	mov 0x00,r3

loc_8c0ee140:
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.w @(0x6E,PC),r2
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0ee154:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0EE15C:
	mov.w @(0x5A,PC),r2
	mov.l @(0x18,r4),r3
	mov.l @(0x68,PC),r5
	add r3,r2
	mov.l r2,@r5
	mov.b @(0x1,r4),r0
	mov.l @(0x18,r4),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bf loc_8c0ee192
	mov.w @(0x46,PC),r1
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0ee192
	mov.w @(0x3C,PC),r1
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0ee192
	mov.l @r5,r3
	mov.b @(0xA,r3),r0
	tst r0,r0
	bf loc_8c0ee198

loc_8C0EE192:
	mov.l @(0x3C,PC),r3
	jmp @r3
	nop 

loc_8C0EE198:
	mov.w @(0x24,PC),r0
	mov.l @(0x18,r4),r5
	mov.l @(0x34,PC),r2
	mov.b @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0ee1ac
	fmov @r2,fr4
	mova @(0x30,PC),r0
	bra loc_8c0ee1b0
	fmov @r0,fr3

loc_8C0EE1AC:
	mova @(0x2C,PC),r0
	fmov @r0,fr3

loc_8C0EE1B0:
	fadd fr3,fr4
	mov 0x34,r0
	rts 
	fmov fr4,@(r0,r5)

;----------------------------------------------
loc_8c0ee1b8:
	#data 0x0500
loc_8c0ee1ba:
	#data 0x02a4
loc_8c0ee1bc:
	#data 0x01d0
loc_8c0ee1be:
	#data 0x0159
loc_8c0ee1c0:
	#data 0x01d2
	#align4

loc_8C0EE1C4:
	#data bank04.loc_8c044F12
loc_8C0EE1C8:
	#data loc_8c0eE15c
loc_8C0EE1CC:
	#data 0x8C28C6E4
loc_8C0EE1D0:
	#data bank04.loc_8c0450C0
loc_8C0EE1D4:
	#data 0x8C26A524
loc_8C0EE1D8:
	#data 0xC38E8000
loc_8C0EE1DC:
	#data 0x438E8000

;==============================================
;unused
loc_8c0ee1e0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x8C,PC),r3
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ee204
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x7C,PC),r2
	mov 0x01,r3
	mov.w r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c0ee204:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0EE20C:
	mov.w @(0x54,PC),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0ee25a
	mov.w @(0x4A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0ee25a
	mov.w @(0x42,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0ee25a
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0ee260
	mova @(0x48,PC),r0
	mov.l @(0x40,PC),r4
	fmov @r0,fr3
	mov.w @(0x2C,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0ee254
	fadd fr3,fr4
	mova @(0x38,PC),r0
	fmov @r0,fr2
	mov.w @(0x1E,PC),r0
	fmov @(r0,r4),fr4
	fadd fr2,fr4

loc_8C0EE254:
	mov 0x34,r0
	rts 
	fmov fr4,@(r0,r5)

;----------------------------------------------
loc_8C0EE25A:
	mov.l @(0x2C,PC),r3
	jmp @r3
	nop 

loc_8C0EE260:
	rts
	nop

;----------------------------------------------
loc_8c0ee264:
	#data 0x01e9
loc_8c0ee266:
	#data 0x01d0
loc_8c0ee268:
	#data 0x0159
loc_8c0ee26a:
	#data 0x0158
loc_8c0ee26c:
	#data 0x0088
loc_8c0ee26e:
	#data 0x01d2
loc_8c0ee270:
	#data 0x008c
	#align4

loc_8C0EE274:
	#data bank04.loc_8c044F12
loc_8C0EE278:
	#data loc_8c0eE20c
loc_8C0EE27C:
	#data 0x8C26A518
loc_8C0EE280:
	#data 0x42200000
loc_8C0EE284:
	#data 0xC2200000
loc_8C0EE288:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0EE28C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x120,PC),r3
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ee2ba
	mov r0,r4
	mov.l @(0x114,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xFE,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0xF8,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	add 0x01,r3
	mov.b r3,@(r0,r2)

loc_8C0EE2BA:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0EE2C2:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0EE3BC,pc),r1 ; r1 set to 0x8C15FB64
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0EE2D6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x50,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xA8,PC),r0
	mov.l @(0xB8,PC),r3
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EE31C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @r5,r3
	tst r3,r3
	bt.s loc_8c0ee38c
	mov r4,r14
	mov.w @(0x84,PC),r0
	mov.b @(r0,r5),r4
	extu.b r4,r0
	cmp/eq 0x01,r0
	bt loc_8c0ee338
	extu.b r4,r2
	tst r2,r2
	bf loc_8c0ee38c

loc_8C0EE338:
	mov.b @(0x1,r14),r0
	mov r0,r3
	mov.b @(0x1,r5),r0
	cmp/eq r0,r3
	bf loc_8c0ee38c
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c0ee38c
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt.s loc_8c0ee360
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c0ee38c

loc_8C0EE360:
	bsr loc_8c0ee39a
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0ee394
	mov.l @(0x54,PC),r2
	jsr @r2
	nop 
	mov.l @(0x54,PC),r2
	and 0x03,r0
	mov 0x20,r1
	add 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov.w @r2,r3
	cmp/gt r1,r3
	bf loc_8c0ee394
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14
;----------------------------------------------
loc_8C0EE38C:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0ee3d4
	mov.l @r15+,r14

loc_8C0EE394:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EE39A:
	mov.l r5,@-r15
	mov 0x07,r5
	mov.l @r15,r4
	mov.l @(0x2C,PC),r3
	jmp @r3
	add 0x04,r15

loc_8C0EE3A6:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ee3aa:
	#data 0x0200
loc_8c0ee3ac:
	#data 0x0229
loc_8c0ee3ae:
	#data 0x0096
loc_8c0ee3b0:
	#data 0x022a
	#align4

loc_8C0EE3B4:
	#data bank04.loc_8c044F12
loc_8C0EE3B8:
	#data loc_8c0eE2C2
loc_8C0EE3BC:
	#data bank15.loc_8c15FB64
loc_8C0EE3C0:
	#data bank04.loc_8c04223a
loc_8C0EE3C4:
	#data bank10.loc_8c10441e
loc_8C0EE3C8:
	#data bank03.loc_8c03319e
loc_8C0EE3CC:
	#data 0x8C287AE8
loc_8C0EE3D0:
	#data bank03.loc_8c035162

;==============================================
loc_8C0EE3D4:
	mov.w @(0x34,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	sts.l pr,@-r15
	mov.l r4,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0ee3f8
	mov.w @(0x24,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c0ee3f8
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8C0EE3F8:
	mov.l @(0x14,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xC,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ee40c:
	#data 0x022a
loc_8c0ee40e:
	#data 0x0229
	#align4

loc_8C0EE410:
	#data bank03.loc_8c035162
loc_8C0EE414:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0EE418:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF4,PC),r3
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ee446
	mov r0,r4
	mov.l @(0xE8,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xD2,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0xCC,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	add 0x01,r3
	mov.b r3,@(r0,r2)

loc_8C0EE446:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0EE44E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0EE51C,pc),r1 ; r1 set to 0x8C15FB74
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0EE462:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x4B,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @r13,r2
	tst r2,r2
	bt loc_8c0ee49c
	mov r13,r5
	bsr loc_8c0ee4f0
	mov r14,r4

loc_8C0EE49C:
	mov r13,r5
	mov.w @(0x6C,PC),r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EE4AA:
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c0ee4ec
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r5),r6
	extu.b r6,r0
	cmp/eq 0x02,r0
	bt loc_8c0ee4c0
	extu.b r6,r2
	tst r2,r2
	bf loc_8c0ee4ec
  
loc_8C0EE4C0:
	mov.b @(0x1,r4),r0
	mov r0,r3
	mov.b @(0x1,r5),r0
	cmp/eq r0,r3
	bf loc_8c0ee4ec
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0ee4ec
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt.s loc_8c0ee4e8
	mov r0,r6
	mov r6,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c0ee4ec

loc_8C0EE4E8:
	bra loc_8c0ee4fa
	nop 

loc_8C0EE4EC:
	bra loc_8c0ee52c
	nop 

;==============================================
loc_8C0EE4F0:
	mov.l @(0x30,PC),r3
	mov r5,r4
	mov.l r5,@-r15
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EE4FA:
	mov.l r5,@-r15
	mov 0x03,r5
	mov.l @r15,r4
	mov.l @(0x24,PC),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EE506:
	rts
	nop

;----------------------------------------------
loc_8c0ee50a:
	#data 0x0300
loc_8c0ee50c:
	#data 0x0229
loc_8c0ee50e:
	#data 0x0096
loc_8c0ee510:
	#data 0x022a
	#align4

loc_8C0EE514:
	#data bank04.loc_8c044F12
loc_8C0EE518:
	#data loc_8c0eE44e
loc_8C0EE51C:
	#data bank15.loc_8c15FB74
loc_8C0EE520:
	#data bank04.loc_8c04223a
loc_8C0EE524:
	#data bank10.loc_8c10491c
loc_8C0EE528:
	#data bank03.loc_8c035162

;==============================================
loc_8C0EE52C:
	mov.w @(0x34,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	sts.l pr,@-r15
	mov.l r4,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0ee550
	mov.w @(0x24,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c0ee550
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8C0EE550:
            ; CODE XREFS from loc_8c0ee534 (0x8c0ee53c, 0x8c0ee54a)
	mov.l @(0x14,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xC,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ee564:
	#data 0x022a
loc_8c0ee566:
	#data 0x0229
	#align4

loc_8C0EE568:
	#data bank03.loc_8c035162
loc_8C0EE56C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0EE570:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF4,PC),r3
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ee59e
	mov r0,r4
	mov.l @(0xE8,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xD2,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0xCC,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	add 0x01,r3
	mov.b r3,@(r0,r2)

loc_8C0EE59E:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0EE5A6:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0EE674,pc),r1 ; r1 set to 0x8C15FB84
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0EE5BA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x09,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @r13,r2
	tst r2,r2
	bt loc_8c0ee5f4
	mov r13,r5
	bsr loc_8c0ee648
	mov r14,r4

loc_8C0EE5F4:
	mov r13,r5
	mov.w @(0x6C,PC),r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14
 
loc_8C0EE602:
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c0ee644
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r5),r6
	extu.b r6,r0
	cmp/eq 0x03,r0
	bt loc_8c0ee618
	extu.b r6,r2
	tst r2,r2
	bf loc_8c0ee644

loc_8C0EE618:
	mov.b @(0x1,r4),r0
	mov r0,r3
	mov.b @(0x1,r5),r0
	cmp/eq r0,r3
	bf loc_8c0ee644
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0ee644
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt.s loc_8c0ee640
	mov r0,r6
	mov r6,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c0ee644

loc_8C0EE640:
	bra loc_8c0ee652
	nop 

loc_8C0EE644:
	bra loc_8c0ee684
	nop 

;==============================================
loc_8C0EE648:
	mov.l @(0x30,PC),r3
	mov r5,r4
	mov.l r5,@-r15
	jmp @r3
	add 0x04,r15

loc_8C0EE652:
	mov.l r5,@-r15
	mov 0x04,r5
	mov.l @r15,r4
	mov.l @(0x24,PC),r3
	jmp @r3
	add 0x04,r15

loc_8C0EE65E:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ee662:
	#data 0x0400
loc_8c0ee664:
	#data 0x0229
loc_8c0ee666:
	#data 0x0096
loc_8c0ee668:
	#data 0x022a
	#align4

loc_8C0EE66C:
	#data bank04.loc_8c044F12
loc_8C0EE670:
	#data loc_8c0eE5A6
loc_8C0EE674:
	#data bank15.loc_8c15FB84
loc_8C0EE678:
	#data bank04.loc_8c04223a
loc_8C0EE67C:
	#data bank10.loc_8c107366
loc_8C0EE680:
	#data bank03.loc_8c035162

;==============================================
loc_8C0EE684:
	mov.w @(0x34,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	sts.l pr,@-r15
	mov.l r4,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0ee6a8
	mov.w @(0x24,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c0ee6a8
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8C0EE6A8:
	mov.l @(0x14,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xC,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ee6bc:
	#data 0x022a
loc_8c0ee6be:
	#data 0x0229
	#align4

loc_8C0EE6C0:
	#data bank03.loc_8c035162
loc_8C0EE6C4:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0ee6c8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD8,PC),r3
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ee6ec
	mov r0,r4
	mov 0x26,r0
	mov.l @(0xC8,PC),r2
	mov 0x05,r3
	mov.w r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c0ee6ec:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0EE6F4:
	mov.l @(0x18,r4),r5
	mov.b @(0x05,r5),r0
	tst r0,r0
	bf loc_8C0EE78c
	mov.w @(loc_8C0EE796,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8C0EE78c
	mov.w @(loc_8C0EE798,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8C0EE78c
	mov.w @(loc_8C0EE79A,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8C0EE78c
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0EE7B0,pc),r4 ; r4 set to 0x8C26A518
	fmov.s @(r0,r5),fr5
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr4 ; r4 ??? bc r5 is ???
	mov.w @(loc_8C0EE79C,pc),r0 ; r0 set to 0x158
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8C0EE74e
	cmp/eq 0x05,r0
	bt loc_8C0EE74e
	cmp/eq 0x06,r0
	bt loc_8C0EE762
	cmp/eq 0x07,r0
	bt loc_8C0EE762
	cmp/eq 0x08,r0
	bt loc_8C0EE76e
	cmp/eq 0x09,r0
	bt loc_8C0EE76e
	cmp/eq 0x0A,r0
	bt loc_8C0EE778
	cmp/eq 0x0B,r0
	bt loc_8C0EE778
	bra loc_8C0EE782
	nop

loc_8C0EE74E:
	mov.w @(loc_8C0EE79E,pc),r0 ; r0 set to 0x94
	fmov.s @(r0,r4),fr6
	mov.w @(loc_8C0EE7A0,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	fcmp/gt fr3,fr6
	bf loc_8C0EE75e
	bra loc_8C0EE782
	fmov fr6,fr4

loc_8C0EE75E:
	bra loc_8C0EE782
	fmov.s @(r0,r5),fr4

loc_8C0EE762:
	mova @(loc_8C0EE7B4,pc),r0  ; r0 init to 0x8C0EE7B4
	fmov.s @r0,fr3
	mov.w @(loc_8C0EE7A2,pc),r0 ; r0 set to 0x90
	fmov.s @(r0,r4),fr4
	bra loc_8C0EE782
	fadd fr3,fr4

loc_8C0EE76E:
	mova @(loc_8C0EE7B8,pc),r0  ; r0 init to 0x8C0EE7B8
	fmov.s @r0,fr3
	mov.w @(loc_8C0EE7A4,pc),r0 ; r0 set to 0x88
	bra loc_8C0EE77e
	nop

loc_8c0ee778:
	mova @(loc_8C0EE7BC,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0EE7A6,pc),r0

loc_8c0ee77e:
	fmov.s @(r0,r4),fr5
	fadd fr3,fr5

loc_8C0EE782:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s fr5,@(r0,r5)
	mov 0x38,r0 ; r0 set to 0x38
	rts
	fmov.s fr4,@(r0,r5)

;==============================================
loc_8C0EE78C:
	mov.l @(loc_8C0EE7C0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;unused
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EE796:
	#data 0x01E9
loc_8C0EE798:
	#data 0x01D0
loc_8C0EE79A:
	#data 0x0159
loc_8C0EE79C:
	#data 0x0158
loc_8C0EE79E:
	#data 0x0094
loc_8C0EE7A0:
	#data 0x041c
loc_8C0EE7A2:
	#data 0x0090
loc_8C0EE7A4:
	#data 0x0088
loc_8c0ee7a6:
	#data 0x008c
	#align4

loc_8C0EE7A8:
	#data bank04.loc_8c044F12
loc_8C0EE7AC:
	#data loc_8c0eE6F4
loc_8C0EE7B0:
	#data 0x8C26A518
loc_8C0EE7B4:
	#data 0xC3809249
loc_8C0EE7B8:
	#data 0x42200000
loc_8c0ee7bc:
	#data 0xC2200000
loc_8C0EE7C0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0EE7C4:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x114,PC),r3
	mov.l r4,@(0x8,r15)
	mov.l r5,@(0x4,r15)
	mov 0x0A,r5
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ee7f6
	mov r0,r4
	mov.l @(0x104,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x14,r4)
	mov.b @r15,r2
	mov.w @(0xE0,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0EE7F6:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;----------------------------------------------
loc_8C0EE7FE:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8C0EE80a
	bra loc_8C0EE910
	nop

loc_8C0EE80A:
	mov r4,r3
	mov.l @(loc_8C0EE8E8,pc),r1 ; r1 set to 0x8C15FB94
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EE81C:
	mov.b @(0x4,r4),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x22,r0
	mov.b r5,@(r0,r4)

loc_8C0EE830:
	mov.l r14,@-r15
	mov.l @(0x18,r4),r5
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0ee854
	mov.w @(0x96,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0ee854
	mov.b @(0x6,r5),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bt loc_8c0ee858
	mov.b @(0x6,r5),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c0ee858

loc_8C0EE854:
	bra loc_8c0ee8f8
	mov.l @r15+,r14

loc_8C0EE858:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst 0x01,r0
	bt loc_8c0ee8b4
	mova @(0x84,PC),r0
	fmov @r0,fr4
	mov.w @(0x6A,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0ee874
	mova @(0x7C,PC),r0
	fmov @r0,fr4

loc_8C0EE874:
	mov.w @(0x60,PC),r0
	mov 0x00,r1
	mov.w @(0x60,PC),r3
	mov.l @(r0,r5),r14
	mov.w @(0x5A,PC),r5
	add r14,r5
	mov.l @r5,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bt loc_8c0ee8a0
	mov.w @(0x50,PC),r5
	add r14,r5
	add r1,r5
	mov.b @(0xE,r5),r0
	tst r0,r0
	bf loc_8c0ee8a0
	mov.l @r5,r5
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r5)

loc_8C0EE8A0:
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r14)
	mov.l @(0x14,r4),r5
	tst r5,r5
	bt loc_8c0ee8b4
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r5)

loc_8C0EE8B4:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0ee8ce
	mov 0x04,r0
	mov.l @(0x30,PC),r3
	mov.w r0,@(0x1E,r4)
	mov r14,r4
	mov 0x05,r5
	jmp @r3
	mov.l @r15+,r14

loc_8C0EE8CE:
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ee8d2:
	#data 0x0600
loc_8c0ee8d4:
	#data 0x01d0
loc_8c0ee8d6:
	#data 0x0130
loc_8c0ee8d8:
	#data 0x01c8
loc_8c0ee8da:
	#data 0x0414
loc_8c0ee8dc:
	#data 0x0800
loc_8c0ee8de:
	#data 0x02a4
	#align4

loc_8C0EE8E0:
	#data bank04.loc_8c044F12
loc_8C0EE8E4:
	#data loc_8c0eE7Fe
loc_8C0EE8E8:
	#data bank15.loc_8c15FB94
loc_8C0EE8EC:
	#data 0x40555555
loc_8C0EE8F0:
	#data 0xC0555555
loc_8C0EE8F4:
	#data bank03.loc_8c035162

;==============================================
loc_8C0EE8F8:
	mov r4,r3
	mov.l r4,@-r15
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r3)
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @r15,r4
	mov.w @(loc_8C0EE936,pc),r0 ; r0 set to 0x1C8
	mov.l @(0x18,r4),r4
	mov.l @(loc_8C0EE938,pc),r3 ; r3 set to 0x8C035162
	mov.l @(r0,r4),r4
	jmp @r3
	add 0x04,r15

loc_8C0EE910:
	mov r4,r3
	mov.l @(loc_8C0EE93C,pc),r1 ; r1 set to 0x8C15FBA4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0EE922:
	rts
	nop

;----------------------------------------------
loc_8C0EE926:
	rts
	nop

;----------------------------------------------
loc_8C0EE92A:
	mov 0x03,r0 ; r0 set to 0x03
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0EE930:
	mov.l @(loc_8C0EE940,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EE936:
	#data 0x01C8
	#align4

loc_8C0EE938:
	#data bank03.loc_8c035162
loc_8C0EE93C:
	#data bank15.loc_8c15FBA4
loc_8C0EE940:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0EE944:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF4,PC),r3
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ee972
	mov r0,r4
	mov.l @(0xE8,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xD2,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0xCC,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	add 0x01,r3
	mov.b r3,@(r0,r2)

loc_8C0EE972:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0EE97A:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0EEA48,pc),r1 ; r1 set to 0x8C15FBB4
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0EE98E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x4B,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @r13,r2
	tst r2,r2
	bt loc_8c0ee9c8
	mov r13,r5
	bsr loc_8c0eea1c
	mov r14,r4

loc_8C0EE9C8:
	mov r13,r5
	mov.w @(0x6C,PC),r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0EE9D6:
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c0eea18
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r5),r6
	extu.b r6,r0
	cmp/eq 0x04,r0
	bt loc_8C0EE9EC
	extu.b r6,r2
	tst r2,r2
	bf loc_8c0eea18

loc_8C0EE9EC:
	mov.b @(0x1,r4),r0
	mov r0,r3
	mov.b @(0x1,r5),r0
	cmp/eq r0,r3
	bf loc_8c0eea18
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0eea18
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt.s loc_8c0eea14
	mov r0,r6
	mov r6,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c0eea18               ; loc_8c0ee9cc+0x4c

loc_8C0EEA14:
	bra loc_8c0eea26
	nop 

loc_8C0EEA18:
	bra loc_8c0eea58
	nop 

;==============================================
loc_8C0EEA1C:
	mov.l @(0x30,PC),r3
	mov r5,r4
	mov.l r5,@-r15
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EEA26:
	mov.l r5,@-r15
	mov 0x05,r5
	mov.l @r15,r4
	mov.l @(0x24,PC),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EEA32:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eea36:
	#data 0x0700
loc_8c0eea38:
	#data 0x0229
loc_8c0eea3a:
	#data 0x0096
loc_8c0eea3c:
	#data 0x022a
	#align4

loc_8C0EEA40:
	#data bank04.loc_8c044F12
loc_8C0EEA44:
	#data loc_8c0eE97a
loc_8C0EEA48:
	#data bank15.loc_8c15FBB4
loc_8C0EEA4C:
	#data bank04.loc_8c04223a
loc_8C0EEA50:
	#data bank10.loc_8c10584e
loc_8C0EEA54:
	#data bank03.loc_8c035162

;==============================================
loc_8C0EEA58:
	mov.w @(0x34,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	sts.l pr,@-r15
	mov.l r4,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0eea7c
	mov.w @(0x24,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c0eea7c
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8C0EEA7C:
	mov.l @(0x14,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xC,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eea90:
	#data 0x022a
loc_8c0eea92:
	#data 0x0229
	#align4

loc_8C0EEA94:
	#data bank03.loc_8c035162
loc_8C0EEA98:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0eea9c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop 
	mov.l @(0xCC,PC),r3
	mov 0x01,r6
	mov.b r0,@(0x4,r15)
	mov.b r5,@r15
	mov 0x0A,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0eead0
	mov r0,r4
	mov.l @(0xBC,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0xAE,PC),r2
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0eead0:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;----------------------------------------------
loc_8C0EEAD8:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0EEB7C,pc),r0 ; r0 set to 0x8C15FBC4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EEAEC:
	mov r4,r3
	mov.l @(loc_8C0EEB80,pc),r1 ; r1 set to 0x8C15FBC8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0EEAFE:
	mov.l @(loc_8C0EEB84,pc),r2 ; r2 set to 0x8C26A8Ec
	mov.l @r2,r3
	tst r3,r3
	bf loc_8C0EEB22
	mov.l @(loc_8C0EEB88,pc),r2 ; r2 set to 0x8C2896B0
	mov 0x3E,r0 ; r0 set to 0x3e
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	cmp/pz r1
	bt loc_8C0EEB18
	mov 0x02,r0 ; r0 set to 0x02
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8c0eeb18:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)

loc_8C0EEB22:
	rts
	nop

;----------------------------------------------
loc_8C0EEB26:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8C0EEB56
	mov.l @(loc_8C0EEB8C,pc),r2 ; r2 set to 0x8C13B504
	mov.l @(loc_8C0EEB90,pc),r3 ; r3 set to 0x8C129740
	mov.l r2,@-r15
	mov r15,r4
	jsr @r3
	add 0x04,r4
	mov r15,r2 ; r2 ??? bc r15 is ???
	mov.l @(loc_8C0EEB94,pc),r3 ; r3 set to 0x8C0395C6
	add 0x04,r2
	mov 0x19,r5 ; r5 set to 0x19
	mov.l r2,@-r15
	mov 0x07,r6 ; r6 set to 0x07
	jsr @r3
	mov 0x23,r4 ; r4 set to 0x23
	bra loc_8C0EEB5c
	add 0x08,r15

loc_8C0EEB56:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8C0EEB5C:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0EEB64:
	mov 0x03,r0 ; r0 set to 0x03
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0EEB6A:
	mov.l @(loc_8C0EEB98,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eeb70:
	#data 0x0800
	#align4
loc_8C0EEB74:
	#data bank04.loc_8c044F26
loc_8C0EEB78:
	#data loc_8c0eEAD8
loc_8C0EEB7C:
	#data bank15.loc_8c15FBC4
loc_8C0EEB80:
	#data bank15.loc_8c15FBC8
loc_8C0EEB84:
	#data 0x8C26A8Ec
loc_8C0EEB88:
	#data 0x8C2896B0
loc_8C0EEB8C:
	#data bank13.loc_8c13B504
loc_8C0EEB90:
	#data bank12.loc_8c129740
loc_8C0EEB94:
	#data bank03.loc_8c0395C6
loc_8C0EEB98:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0eeb9c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r3
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0eebc0
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x4C,PC),r2
	mov 0x09,r3
	mov.w r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c0eebc0:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C0EEBC8:
	mov.l @(0x18,r4),r5
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0eebee
	mov.w @(0x24,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0eebee
	mov.w @(0x1C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0eebee
	mov.w @(0x14,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c0eebf4

loc_8C0EEBEE:
	mov.l @(0x18,PC),r2
	jmp @r2
	nop 

loc_8C0EEBF4:
	rts 
	nop 

;----------------------------------------------
loc_8c0eebf8:
	#data 0x01e9
loc_8c0eebfa:
	#data 0x01d0
loc_8c0eebfc:
	#data 0x0159
	#align4

loc_8C0EEC00:
	#data bank04.loc_8c044F12
loc_8C0EEC04:
	#data loc_8c0eEBC8
loc_8C0EEC08:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0eec0c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x74,PC),r3
	mov 0x0A,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0eec36
	mov r0,r4
	mov.l @(0x68,PC),r3
	mov.l r3,@(0x10,r4)
	mov 0x0A,r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0eec36:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;----------------------------------------------
loc_8C0EEC3E:
	mov.l r14,@-r15
	mov.w @(loc_8C0EEC82,pc),r0 ; r0 set to 0x2B8
	sts.l pr,@-r15
	mov.l @(0x18,r4),r14
	mov.l @(r0,r14),r3
	cmp/pl r3
	bf loc_8C0EEC7a
	mov.w @(loc_8C0EEC84,pc),r0 ; r0 set to 0x2Bc
	mov.l @(loc_8C0EEC90,pc),r3 ; r3 set to 0x8C1292D4
	mov.l @(r0,r14),r1
	add 0x01,r1
	mov.l r1,@(r0,r14)
	mov 0x06,r0 ; r0 set to 0x06
	mov.w @(loc_8C0EEC84,pc),r1 ; r1 set to 0x2Bc
	add r14,r1 ; r1 ??? bc r14 is ???
	jsr @r3
	mov.l @r1,r1
	mov.w @(loc_8C0EEC84,pc),r2 ; r2 set to 0x2Bc
	mov 0x01,r7 ; r7 set to 0x01
	mov.l @(loc_8C0EEC94,pc),r3 ; r3 set to 0x8C03544c
	mov r14,r4
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.l r0,@r2
	mov 0x04,r5 ; r5 set to 0x04
	mov.w @(loc_8C0EEC84,pc),r0 ; r0 set to 0x2Bc
	lds.l @r15+,pr
	mov.l @(r0,r14),r6
	add 0x10,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0EEC7A:
	lds.l @r15+,pr
	mov.l @(loc_8C0EEC98,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EEC82:
	#data 0x02B8
loc_8C0EEC84:
	#data 0x02Bc
	#align4

loc_8C0EEC88:
	#data bank04.loc_8c044F12
loc_8C0EEC8C:
	#data loc_8c0eEC3e
loc_8C0EEC90:
	#data bank12.loc_8c1292D4
loc_8C0EEC94:
	#data bank03.loc_8c03544c
loc_8C0EEC98:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0eec9c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x100,PC),r3
	mov.w @(0xEA,PC),r4
	jsr @r3
	nop 
	mov.l @(0x100,PC),r2
	mov.l @(0xFC,PC),r14
            ; CODE XREF from loc_8c0ee20c (+0x70)
	mov.l @(0x100,PC),r12
	mov.l r2,@r14
	bra loc_8c0eecca
	mov 0x00,r13

;----------------------------------------------
loc_8c0eecb8:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c0eecca:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c0eecb8
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0eecdc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xBC,PC),r3
	mov r5,r13
	jsr @r3
	mov.l r6,@r15
	mov.l @r15,r2
	mov.l @(0xC0,PC),r11
	mov.l r2,@r13
	bra loc_8c0eed0a
	mov 0x00,r14

;==============================================
loc_8c0eecfa:
	mov.l @r13,r12
	mov r14,r4
	shll2 r4
	mov.l @r12,r0
	mov.l @(0x8,r12),r5
	jsr @r11
	mov.l @(r0,r4),r4
	add 0x01,r14

loc_8c0eed0a:
	mov.l @r13,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r14
	bf loc_8c0eecfa
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c0eed20:
	sts.l pr,@-r15
	mov.l @(0x98,PC),r3
	mov.w @(0x6E,PC),r4
	mov.l @(0x90,PC),r5
	jsr @r3
	mov 0x00,r6
	mov.w @(0x68,PC),r4
	mov 0x00,r6
	mov.l @(0x88,PC),r2
	mov.l @(0x8C,PC),r5
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c0eed38:
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	mov.w @(0x5A,PC),r4
	mov.l @(0x78,PC),r5
	jsr @r3
	mov 0x00,r6
	mov.w @(0x54,PC),r4
	mov 0x00,r6
	mov.l @(0x70,PC),r2
	mov.l @(0x74,PC),r5
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c0eed50:
	sts.l pr,@-r15
	mov.l @(0x68,PC),r3
	mov.w @(0x46,PC),r4
	mov.l @(0x60,PC),r5
	jsr @r3
	mov 0x00,r6
	mov.w @(0x40,PC),r4
	mov 0x00,r6
	mov.l @(0x58,PC),r2
	mov.l @(0x5C,PC),r5
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c0eed68:
	mov.l @(0x58,PC),r3
	mov.w @(0x34,PC),r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8c0eed84
	cmp/eq 0x01,r0
	bt loc_8c0eed8c
	cmp/eq 0x02,r0
	bt loc_8c0eedc8
	bra loc_8c0eedce
	nop 

loc_8c0eed84:
	mov.w @(0x1C,PC),r4
	mov r4,r14
	bra loc_8c0eedce
	add 0x01,r14

loc_8c0eed8c:
	mov.w @(0x16,PC),r4
	mov r4,r14
	bra loc_8c0eedce
	add 0x01,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eed94:
	#data 0x0c10
loc_8c0eed96:
	#data 0x0294
loc_8c0eed98:
	#data 0x0295
loc_8c0eed9a:
	#data 0x0296
loc_8c0eed9c:
	#data 0x0297
loc_8c0eed9e:
	#data 0x029a
loc_8c0eeda0:
	#data 0x029b
loc_8c0eeda2:
	#data 0x00ad
loc_8c0eeda4:
	#data 0x029c
loc_8c0eeda6:
	#data 0x02b9
	#align4

loc_8C0EEDA8:
	#data bank11.loc_8c11B800
loc_8C0EEDAC:
	#data 0x8C26A904
loc_8C0EEDb0:
	#data 0x0CEA0000
loc_8C0EEDB4:
	#data bank12.loc_8c122FD0
loc_8C0EEDb8:
	#data 0x0CE80000
loc_8C0EEDBC:
	#data bank02.loc_8c027366
loc_8C0EEDC0:
	#data 0x0CC00000
loc_8C0EEDC4:
	#data 0x8C26823c

;==============================================
loc_8C0EEDC8:
	mov.w @(0xFA,PC),r4
	mov r4,r14
	add 0x01,r14

loc_8C0EEDCE:
	mov.l @(0x108,PC),r3
	mov.l @(0x100,PC),r5
	jsr @r3
	mov 0x00,r6
	lds.l @r15+,pr
	mov.l @(0x100,PC),r5
	mov 0x00,r6
	mov.l @(0xF8,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0eede4:
	mov.l @(0xFC,PC),r2
	mov 0x29,r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0xEC,PC),r13
	mov.b @(r0,r3),r1
	mov.l @(0xE0,PC),r14
	tst r1,r1
	bf loc_8c0eee0a
	mov.w @(0xCA,PC),r4
	mov.l @(0xD4,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.w @(0xC4,PC),r4
	mov 0x00,r6
	bra loc_8c0eee18
	mov r13,r5

loc_8c0eee0a:
	mov.w @(0xBE,PC),r4
	mov.l @(0xC4,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.w @(0xB8,PC),r4
	mov r13,r5
	mov 0x00,r6

loc_8c0eee18:
	jsr @r14
	nop 
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(0xC4,PC),r2
	mov.l @(0xB8,PC),r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0eee2a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0x9A,PC),r4
	mov.l @(0xB8,PC),r2
	mov.l @(0xB4,PC),r14
	mov.l @(0x98,PC),r3
	jsr @r2
	mov.l r3,@r14
	mov.l @(0xB4,PC),r12
	bra loc_8c0eee56
	mov 0x00,r13

loc_8c0eee44:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c0eee56:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c0eee44
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c0eee68:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0x5E,PC),r4
	mov.l @(0x7C,PC),r2
	mov.l @(0x80,PC),r14
	mov.l @(0x5C,PC),r3
	jsr @r2
	mov.l r3,@r14
	mov.l @(0x74,PC),r12
	bra loc_8c0eee94
	mov 0x00,r13

loc_8c0eee82:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c0eee94:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c0eee82
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c0eeea6:
	mov.l r14,@-r15
	mov.l @(0x28,PC),r4
	mov.l @(0x50,PC),r14
	mov.l @(0x50,PC),r3
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l r4,@r14
	mov.l r4,@r3
	mov.l @(0x34,PC),r2
	mov.w @(0x14,PC),r4
	jsr @r2
	nop 
	mov.l @(0x30,PC),r12
	bra loc_8c0eef16
	mov 0x00,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eeec6:
	#data 0x02bb
loc_8c0eeec8:
	#data 0x02a4
loc_8c0eeeca:
	#data 0x02a5
loc_8c0eeecc:
	#data 0x02a8
loc_8c0eeece:
	#data 0x02a9
loc_8c0eeed0:
	#data 0x0c90
loc_8c0eeed2:
	#data 0x0810
	#align4

loc_8c0eeed4:
	#data 0x0CE80000
loc_8C0EEED8:
	#data bank02.loc_8c027366
loc_8c0eeedC:
	#data 0x0CC00000
loc_8c0eeee0:
	#data 0x0CD00000
loc_8c0eeee4:
	#data 0x8C26823c
loc_8C0EEEE8:
	#data bank03.loc_8c03552a
loc_8c0eeeec:
	#data 0x8C26A90c
loc_8C0EEEF0:
	#data bank11.loc_8c11B800
loc_8C0EEEF4:
	#data bank12.loc_8c122FD0
loc_8c0eeef8:
	#data 0x8C26A910
loc_8c0eeefc:
	#data 0x8C26A920
loc_8c0eef00:
	#data 0x8C26A928

;==============================================
loc_8c0eef04:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c0eef16:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c0eef04
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0eef28:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0x7A,PC),r4
	mov.l @(0x88,PC),r2
	mov.l @(0x7C,PC),r14
	mov.l @(0x80,PC),r3
	jsr @r2
	mov.l r3,@r14
	mov.l @(0x80,PC),r12
	bra loc_8c0eef54
	mov 0x00,r13

loc_8c0eef42:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c0eef54:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c0eef42
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c0eef66:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0x3C,PC),r4
	mov.l @(0x48,PC),r2
	mov.l @(0x50,PC),r14
	mov.l @(0x40,PC),r3
	jsr @r2
	mov.l r3,@r14
	mov.l @(0x44,PC),r12
	bra loc_8c0eef92
	mov 0x00,r13

loc_8c0eef80:
	mov.l @r14,r0
	mov r13,r4
	mov.l @r14,r5
	shll2 r4
	mov.l @r0,r0
	mov.l @(0x8,r5),r5
	jsr @r12
	mov.l @(r0,r4),r4
	add 0x01,r13

loc_8c0eef92:
	mov.l @r14,r3
	mov.l @(0x4,r3),r2
	cmp/ge r2,r13
	bf loc_8c0eef80
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c0eefa4:
	mov.w @(0x8,PC),r4
	mov.l @(0x20,PC),r5
	mov.l @(0xC,PC),r6
	bra loc_8c0eecdc
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0eefae:
	#data 0x0810
loc_8c0eefb0:
	#data 0x0d10
	#align4

loc_8c0eefb4:
	#data 0x8C26A914
loc_8c0eefb8:
	#data 0x0CE80000
loc_8C0EEFBC:
	#data bank11.loc_8c11B800
loc_8C0EEFC0:
	#data bank12.loc_8c122FD0
loc_8C0EEFC4:
	#data 0x8C26A924
loc_8C0EEFC8:
	#data 0x8C26A934

;==============================================
loc_8C0EEFCC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0ef00c,PC),r12
	mov.l @(loc_8c0ef010,PC),r13
	mov.l @(loc_8C0EF014,PC),r14
	mov.w @(loc_8c0ef002,PC),r9
	mov.l @(loc_8c0ef008,PC),r10
	mov.w @(loc_8c0ef004,PC),r11
	mov r4,r0
	nop 
	add 0xFF,r0
	mov 0x15,r1
	cmp/hs r1,r0
	bf loc_8c0eeff6
	bra loc_8c0ef268
	nop 

loc_8C0EEFF6:
	shll r0
	mov r0,r1
	mova @(loc_8c0ef018,PC),r0
	mov.w @(r0,r1),r0

braf_8c0eeffe:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ef002:
	#data 0x0810
loc_8c0ef004:
	#data 0x0850
	#align4

loc_8c0ef008:
	#data 0x0CED0000
loc_8c0ef00c:
	#data 0x0CC00000
loc_8c0ef010:
	#data 0x0CE80000
loc_8C0EF014:
	#data bank02.loc_8c027366

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ef018:
	#data16 {loc_8c0ef042-braf_8c0eeffe-4};0x0040
	#data16 {loc_8c0ef076-braf_8c0eeffe-4};0x0074
	#data16 {loc_8c0ef268-braf_8c0eeffe-4};0x0266
	#data16 {loc_8c0ef08e-braf_8c0eeffe-4};0x008C
	#data16 {loc_8c0ef0ae-braf_8c0eeffe-4};0x00Ac
	#data16 {loc_8c0ef0c2-braf_8c0eeffe-4};0x00C0
	#data16 {loc_8c0ef268-braf_8c0eeffe-4};0x0266
	#data16 {loc_8c0ef0d6-braf_8c0eeffe-4};0x00D4
	#data16 {loc_8c0ef0e0-braf_8c0eeffe-4};0x00De
	#data16 {loc_8c0ef0f4-braf_8c0eeffe-4};0x00F2
	#data16 {loc_8c0ef108-braf_8c0eeffe-4};0x0106
	#data16 {loc_8c0ef120-braf_8c0eeffe-4};0x011E
	#data16 {loc_8c0ef138-braf_8c0eeffe-4};0x0136
	#data16 {loc_8c0ef1a0-braf_8c0eeffe-4};0x019E
	#data16 {loc_8c0ef1b4-braf_8c0eeffe-4};0x01B2
	#data16 {loc_8c0ef1ca-braf_8c0eeffe-4};0x01C8
	#data16 {loc_8c0ef1e2-braf_8c0eeffe-4};0x01E0
	#data16 {loc_8c0ef1fa-braf_8c0eeffe-4};0x01F8
	#data16 {loc_8c0ef212-braf_8c0eeffe-4};0x0210
	#data16 {loc_8c0ef22a-braf_8c0eeffe-4};0x0228
	#data16 {loc_8c0ef242-braf_8c0eeffe-4};0x0240

;================================================
loc_8c0ef042:
	mov.l @(loc_8c0ef17C,PC),r3;STG_ID
	mov 0x00,r6
	mov.l @(loc_8C0EF180,PC),r0
	mov.b @r3,r4;Load Stage ID?
	mov.l @(loc_8c0ef178,PC),r5
	extu.b r4,r4
	shll2 r4
	jsr @r14
	mov.l @(r0,r4),r4
	mov.l @(loc_8c0ef17C,PC),r3;STG_ID
	mov r12,r5
	mov.l @(loc_8C0EF184,PC),r0
	mov 0x00,r6
	mov.b @r3,r4;Load Stage ID?
	extu.b r4,r4
	shll2 r4
	jsr @r14
	mov.l @(r0,r4),r4
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eec9c
	mov.l @r15+,r14

;================================================
loc_8c0ef076:
	mov.w @(loc_8c0ef15e,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r10,r5
	mov.w @(loc_8c0ef160,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.w @(loc_8c0ef162,PC),r4
	mov.l @(loc_8C0EF188,PC),r5
	bra loc_8c0ef14e
	mov r10,r6

;================================================
loc_8c0ef08e:
	mov.w @(loc_8c0ef164,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(loc_8C0EF166,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eee2a
	mov.l @r15+,r14

;================================================
loc_8c0ef0ae:
	bsr loc_8c0eed20
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eee68
	mov.l @r15+,r14

;================================================
loc_8c0ef0c2:
	bsr loc_8c0eed38
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eef28
	mov.l @r15+,r14

;================================================
loc_8c0ef0d6:
	mov.w @(loc_8c0ef168,PC),r4
	mov.l @(loc_8c0ef190,PC),r5
	mov.l @(loc_8c0ef18c,PC),r6
	bra loc_8c0ef14e
	nop 

;================================================
loc_8c0ef0e0:
	bsr loc_8c0eed50
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eeea6
	mov.l @r15+,r14

;================================================
loc_8c0ef0f4:
	bsr loc_8c0eed68
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eef66
	mov.l @r15+,r14

;================================================
loc_8c0ef108:
	mov.w @(loc_8c0ef16a,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(loc_8c0ef16c,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.l @(loc_8C0EF194,PC),r5
	mov r13,r6
	bra loc_8c0ef14e
	mov r9,r4

;================================================
loc_8c0ef120:
	mov.w @(loc_8c0ef16e,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(loc_8c0ef170,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.l @(loc_8c0ef198,PC),r5
	mov r13,r6
	bra loc_8c0ef14e
	mov r9,r4

;================================================
loc_8c0ef138:
	mov.w @(loc_8c0ef172,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(loc_8c0ef174,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.l @(loc_8c0ef19c,PC),r5
	mov r9,r4
	mov r13,r6

loc_8c0ef14e:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eecdc
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ef15e:
	#data 0x026e
loc_8c0ef160:
	#data 0x026f
loc_8c0ef162:
	#data 0x0c50
loc_8c0ef164:
	#data 0x0292
loc_8c0ef166:
	#data 0x0293
loc_8c0ef168:
	#data 0x0d10
loc_8c0ef16a:
	#data 0x029e
loc_8c0ef16c:
	#data 0x029f
loc_8c0ef16e:
	#data 0x02a0
loc_8c0ef170:
	#data 0x02a1
loc_8c0ef172:
	#data 0x02a2
loc_8c0ef174:
	#data 0x02a3
	#align4

loc_8c0ef178:
	#data 0x0CEA0000
loc_8c0ef17C:
	#data 0x8C26A95c
loc_8C0EF180:
	#data bank15.loc_8c15FE24
loc_8C0EF184:
	#data bank15.loc_8c15FDE0
loc_8C0EF188:
	#data 0x8C26A908
loc_8C0EF18C:
	#data 0x0CE08000
loc_8C0EF190:
	#data 0x8C26A91c
loc_8C0EF194:
	#data 0x8C26A928
loc_8C0EF198:
	#data 0x8C26A92c
loc_8C0EF19c:
	#data 0x8C26A930

;==============================================
loc_8c0ef1a0:
	bsr loc_8c0eede4
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eefa4
	mov.l @r15+,r14

;==============================================
loc_8c0ef1b4:
	mov.w @(0xE8,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r10,r5
	mov.w @(0xE2,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.l @(0xFC,PC),r5
	bra loc_8c0ef20e
	mov r10,r6

;==============================================
loc_8c0ef1ca:
	mov.w @(0xD6,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(0xD0,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.l @(0xEC,PC),r5
	mov r13,r6
	bra loc_8c0ef20e
	nop 

;==============================================
loc_8c0ef1e2:
	mov.w @(0xC2,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(0xBC,PC),r4
	mov.l @(0xDC,PC),r5
	jsr @r14
	mov 0x00,r6
	mov.w @(0xB6,PC),r4
	mov.l @(0xD8,PC),r5
	bra loc_8c0ef258
	mov r13,r6

;==============================================
loc_8c0ef1fa:
	mov.w @(0xB0,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(0xAA,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.l @(0xC8,PC),r5
	mov r13,r6

loc_8c0ef20e:
	bra loc_8c0ef258
	mov r11,r4

;==============================================
loc_8c0ef212:
	mov.w @(0x9C,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(0x96,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.l @(0xB4,PC),r5
	mov r13,r6
	bra loc_8c0ef258
	mov r11,r4

;==============================================
loc_8c0ef22a:
	mov.w @(0x88,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(0x82,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.l @(0xA0,PC),r5
	mov r13,r6
	bra loc_8c0ef258
	mov r11,r4

;==============================================
loc_8c0ef242:
	mov.w @(0x74,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r13,r5
	mov.w @(0x6E,PC),r4
	mov 0x00,r6
	jsr @r14
	mov r12,r5
	mov.l @(0x8C,PC),r5
	mov r11,r4
	mov r13,r6

loc_8c0ef258:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0eecdc
	mov.l @r15+,r14

;==============================================
loc_8c0ef268:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EF278:
	mov.w @(0x42,PC),r3
	extu.w r4,r7
	mov.w @(0x3E,PC),r2
	and r7,r3
	cmp/eq r2,r3
	bf loc_8c0ef28c
	add 0xFF,r5
	cmp/pz r5
	bt loc_8c0ef28c
	mov r6,r5

loc_8C0EF28C:
	mov.w @(0x30,PC),r4
	and r4,r7
	cmp/eq r4,r7
	bf loc_8c0ef29c
	add 0x01,r5
	cmp/gt r6,r5
	bf loc_8c0ef29c
	mov 0x00,r5

loc_8C0EF29C:
	rts 
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ef2a0:
	#data 0x02a6
loc_8c0ef2a2:
	#data 0x02a7
loc_8c0ef2a4:
	#data 0x02ad
loc_8c0ef2a6:
	#data 0x02ae
loc_8c0ef2a8:
	#data 0x02af
loc_8c0ef2aa:
	#data 0x02b0
loc_8c0ef2ac:
	#data 0x0860
loc_8c0ef2ae:
	#data 0x02b1
loc_8c0ef2b0:
	#data 0x02b2
loc_8c0ef2b2:
	#data 0x02b3
loc_8c0ef2b4:
	#data 0x02b4
loc_8c0ef2b6:
	#data 0x02b5
loc_8c0ef2b8:
	#data 0x02b6
loc_8c0ef2ba:
	#data 0x02b7
loc_8c0ef2bc:
	#data 0x02b8
loc_8c0ef2be:
	#data 0x0800
loc_8c0ef2c0:
	#data 0x0400
	#align4

loc_8c0ef2c4:
	#data 0x8C26A938
loc_8c0ef2c8:
	#data 0x8C26A93c
loc_8c0ef2cc:
	#data 0x0C420000
loc_8c0ef2d0:
	#data 0x8C26A940
loc_8c0ef2d4:
	#data 0x8C26A944
loc_8c0ef2d8:
	#data 0x8C26A948
loc_8c0ef2dc:
	#data 0x8C26A94c
loc_8c0ef2e0:
	#data 0x8C26A950

;==============================================
loc_8C0EF2E4:
	mov.w @(0xCE,PC),r3
	extu.w r4,r7
	mov.w @(0xCA,PC),r2
	and r7,r3
	cmp/eq r2,r3
	bf loc_8c0ef2f8
	add 0xFF,r5
	cmp/pz r5
	bt loc_8c0ef2f8
	mov r6,r5

loc_8C0EF2F8:
	mov.w @(0xBC,PC),r4
	and r4,r7
	cmp/eq r4,r7
	bf loc_8c0ef308
	add 0x01,r5
	cmp/gt r6,r5
	bf loc_8c0ef308
	mov 0x00,r5

loc_8C0EF308:
	rts 
	mov r5,r0

;----------------------------------------------
loc_8C0EF30C:
	mov 0x01,r3
	mov.l @(0xB0,PC),r6
	extu.b r4,r7
	tst r7,r3
	bt.s loc_8c0ef328
	mov 0x00,r5
	mov r6,r4
	mov.w @(0x10,r4),r0
	mov.w @(0x9A,PC),r3
	and r3,r0
	mov r0,r2
	mov.w @(0x4,r4),r0
	or r2,r0
	or r0,r5

loc_8C0EF328:
	mov 0x02,r3
	tst r3,r7
	bt loc_8c0ef340
	mov r6,r4
	add 0x14,r4
	mov.w @(0x10,r4),r0
	mov.w @(0x82,PC),r2
	and r2,r0
	mov r0,r1
	mov.w @(0x4,r4),r0
	or r1,r0
	or r0,r5

loc_8C0EF340:
	rts 
	mov r5,r0

;----------------------------------------------
;unused
loc_8c0ef344:
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x78,PC),r2
	jsr @r2
	nop 
	bsr loc_8c0ef3e8
	nop 
	mov.l @(0x74,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8c0ef35c:
	mov.l @(0x70,PC),r3
	jmp @r3
	nop 

;==============================================
loc_8c0ef362:
	mov.l @(0x70,PC),r4
	mov.b @r4,r5
	tst r5,r5
	bt loc_8c0ef372
	mov r5,r0
	nop 
	cmp/eq 0x04,r0
	bf loc_8c0ef3b2

loc_8c0ef372:
	mov.l @(0x4C,PC),r5
	mov.w @(0x44,PC),r3
	mov.w @r5,r6
	extu.w r6,r6
	tst r6,r3
	bt loc_8c0ef3b2
	mov 0x10,r1
	tst r6,r1
	bt loc_8c0ef3b2
	mov.w @(0x4,r5),r0
	mov.w @(0x34,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c0ef3b2
	mov.b @r4,r0
	xor 0x04,r0
	mov.b r0,@r4
	mov.b @r4,r0
	tst 0x04,r0
	bt loc_8c0ef3ae
	mov.l @(0x3C,PC),r2
	mov 0x00,r4
	mov.l @(0x40,PC),r1
	mov.l @(0x38,PC),r3
	mov.b r4,@r2
	mov.l @(0x3C,PC),r2
	mov.b r4,@r3
	mov.b r4,@r1
	bra loc_8c0ef3b2
	mov.b r4,@r2

loc_8c0ef3ae:
	bra loc_8c0ef35c
	nop 

loc_8c0ef3b2:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ef3b6:
	#data 0x2000
loc_8c0ef3b8:
	#data 0x1000
loc_8c0ef3ba:
	#data 0x3C00
loc_8c0ef3bc:
	#data 0x0080
loc_8c0ef3be:
	#data 0x0100
	#align4

loc_8c0ef3c0:
	#data 0x8C2681Dc
loc_8C0EF3C4:
	#data bank03.loc_8c0395A0
loc_8C0EF3C8:
	#data bank03.loc_8c030F54
loc_8C0EF3CC:
	#data bank02.loc_8c02DC4c
loc_8C0EF3D0:
	#data bank03.loc_8c03565c
loc_8C0EF3D4:
	#data 0x8C26A95d
loc_8C0EF3D8:
	#data 0x8C28C6E8
loc_8C0EF3Dc:
	#data 0x8C28C6E9
loc_8c0ef3e0:
	#data 0x8C28C6Ea
loc_8c0ef3e4:
	#data 0x8C28C6Eb

;==============================================
;unused
;Start of Model Viewer Code
;==============================================
loc_8c0ef3e8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x6C,PC),r1
	mov.l @(0x70,PC),r0 ; load table
	mov.b @r1,r3
	shll2 r3
	mov.l @(r0,r3),r3
	jsr @r3
	nop 
	mov.l @(0x68,PC),r2
	mov.l @(0x68,PC),r3
	mov.b @r2,r5
	shll2 r5
	shll r5
	add r3,r5
	mov.l r5,@r15
	mov.l @r15,r1
	mov.l @r5,r5
	mov.l @(0x4,r1),r4
	add 0x04,r15
	mov.l @(0x58,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0EF416:
	mov.l @(loc_8C0EF45C,pc),r2 ; r2 set to 0x8C28C6E8
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C0EF464,pc),r0 ; r0 set to 0x8C28C6Ea
	sts.l pr,@-r15
	mov.b r3,@r2 ; r2 ??
	mov 0x07,r1 ; r1 set to 0x07
	mov.l @(loc_8C0EF470,pc),r3 ; r3 set to 0x8C28C6E9
	mov.l @(loc_8C0EF474,pc),r2 ; r2 set to 0x8C28C6Eb
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8C0EF47C,pc),r3 ; r3 set to 0x8C031F10
	mov.b r1,@r0 ; r0 ??
	mov.b r4,@r2 ; r2 ??
	mov.l @(loc_8C0EF478,pc),r4 ; r4 set to 0x8C15FBE4
	jsr @r3
	nop
	mov.l @(loc_8C0EF480,pc),r2 ; r2 set to 0x8C031F24
	jsr @r2
	fldi1 fr4
	mov.l @(loc_8C0EF484,pc),r3 ; r3 set to 0x8C030E30
	jsr @r3
	nop
	mov.l @(loc_8C0EF488,pc),r2 ; r2 set to 0x8C030F24
	jsr @r2
	nop
	mov.l @(loc_8C0EF48C,pc),r3 ; r3 set to 0x8C041ECc
	jsr @r3
	nop
	mov.l @(loc_8C0EF490,pc),r2 ; r2 set to 0x8C04182e
	jsr @r2
	nop
	mov.l @(loc_8C0EF494,pc),r3 ; r3 set to 0x8C04185e
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0EF45C:
	#data 0x8C28C6E8
loc_8C0EF460:
	#data bank15.loc_8c15FE68
loc_8C0EF464:
	#data 0x8C28C6Ea
loc_8C0EF468:
	#data bank15.loc_8c15FDA0
loc_8C0EF46C:
	#data bank02.loc_8c02DC32
loc_8C0EF470:
	#data 0x8C28C6E9
loc_8C0EF474:
	#data 0x8C28C6Eb
loc_8C0EF478:
	#data bank15.loc_8c15FBE4
loc_8C0EF47C:
	#data bank03.loc_8c031F10
loc_8C0EF480:
	#data bank03.loc_8c031F24
loc_8C0EF484:
	#data bank03.loc_8c030E30
loc_8C0EF488:
	#data bank03.loc_8c030F24
loc_8C0EF48C:
	#data bank04.loc_8c041ECc
loc_8C0EF490:
	#data bank04.loc_8c04182e
loc_8C0EF494:
	#data bank04.loc_8c04185e

;==============================================
;Model Viewer
;==============================================
loc_8C0EF498:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x114,PC),r13
	mov 0x12,r14
	mov.l @r13,r1
	mov r14,r0
	nop 
	mov.l @(0x110,PC),r3
	jsr @r3
	nop 
	mov.l r0,@(0x4,r15)
	mov.l @r13,r1
	mov r14,r0
	nop 
	mov.l @(0x104,PC),r3
	jsr @r3
	nop 
	mov.l r0,@r15
	bsr loc_8c0ef30c
	mov 0x01,r4
	mov.l @(0x4,r15),r5
	mov 0x01,r6
	mov r0,r12
	bsr loc_8c0ef278
	mov r12,r4
	mov.l @r15,r5
	mov 0x11,r6
	mov r0,r11
	bsr loc_8c0ef2e4
	mov r12,r4
	mov r11,r2
	shll2 r2
	mov.l @(0xE4,PC),r1
	shll r2
	mov r0,r10
	mov r11,r3
	add r3,r2
	mov.w @(0xCA,PC),r3
	shll r2
	add r10,r2
	mov.l r2,@r13
	mov.w @(0x4,r1),r0
	extu.w r0,r0
	tst r3,r0
	bt loc_8c0ef50a
	mov.l @(0xD0,PC),r0
	mov 0x02,r2
	mov 0x00,r3
	mov.b r2,@r0
	mov.l @(0xCC,PC),r2
	mov.b r3,@r2

loc_8C0EF50A:
	mov.l @(0xD0,PC),r3;ModelViewer Text
	mov 0x05,r5
	mov.l @(0xC8,PC),r12
	mov 0x04,r6
	mov.l r3,@-r15
	jsr @r12
	mov 0x02,r4
	mov.l @(0xC4,PC),r2
	mov 0x07,r5
	mov 0x04,r6
	mov.l r2,@-r15
	jsr @r12
	mov 0x02,r4
	mov.l @(0xBC,PC),r3
	mov 0x08,r5
	mov 0x04,r6
	mov.l r3,@-r15
	jsr @r12
	mov 0x02,r4
	mov r11,r4
	mov.l @(0xB4,PC),r2
	shll2 r4
	mov r10,r5
	mov.l r2,@-r15
	shll r4
	add 0x05,r5
	mov 0x02,r6
	jsr @r12
	add 0x11,r4
	add 0x10,r15
	mov.l @(0xA8,PC),r10
	mov 0x00,r13
	mov.l @(0xA0,PC),r9
	mov 0x24,r11

loc_8C0EF54E:
	mov r13,r0
	nop 
	shll2 r0
	mov r13,r1
	mov.l @(r0,r9),r3
	mov 0x00,r6
	mov.l r3,@-r15
	mov.l r10,@-r15
	mov r14,r0
	nop 
	mov.l @(0x64,PC),r2
	jsr @r2
	nop 
	mov r0,r5
	mov r13,r1
	add 0x05,r5
	mov r14,r0
	nop 
	mov.l @(0x50,PC),r3
	jsr @r3
	nop 
	mov r0,r4
	shll2 r4
	shll r4
	jsr @r12
	add 0x12,r4
	add 0x01,r13
	cmp/hs r11,r13
	bf.s loc_8c0ef54e
	add 0x08,r15
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+, r14

;----------------------------------------------
loc_8C0EF59C:
	mov.l @(0x20,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r4
	mov.l @(0x50,PC),r5
	tst r4,r4
	bf loc_8c0ef5b0
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	bra loc_8c0ef606
	fmov fr3,@r5

loc_8C0EF5B0:
	mov 0x1E,r1
	cmp/ge r1,r4
	bf loc_8c0ef600
	mova @(0x44,PC),r0
	bra loc_8c0ef604
	fmov @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ef5bc:
	#data 0x0360
	#align4

loc_8c0ef5c0:
	#data 0x8C28C6F0
loc_8C0EF5C4:
	#data bank12.loc_8c129128
loc_8C0EF5C8:
	#data bank12.loc_8c1292D4
loc_8C0EF5CC:
	#data 0x8C2681Dc
loc_8C0EF5D0:
	#data 0x8C28C6E8
loc_8C0EF5d4:
	#data 0x8C28C6E9
loc_8C0EF5D8:
	#data bank03.loc_8c0395C6
loc_8C0EF5DC:
	#data bank13.loc_8c13B508
loc_8C0EF5E0:
	#data bank13.loc_8c13B518
loc_8C0EF5E4:
	#data bank13.loc_8c13B52c
loc_8C0EF5E8:
	#data bank13.loc_8c13B53c
loc_8C0EF5EC:
	#data bank15.loc_8c15FBF0
loc_8C0EF5F0:
	#data bank13.loc_8c13B540
loc_8C0EF5f4:
	#data 0x8C28C6F8
loc_8C0EF5f8:
	#data 0x42480000
loc_8C0EF5fc:
	#data 0x42C80000

;==============================================
loc_8C0EF600:
	mova @(0x98,PC),r0
	fmov @r0,fr3

loc_8C0EF604:
	fmov fr3,@r5

loc_8C0EF606:
	mov.l @(0x9C,PC),r2
	mov.l @(0x94,PC),r3
	fldi0 fr4
	fmov fr4,@r3
	fmov fr4,@r2
	mov.l @(0x9C,PC),r3
	mov.l @(0x98,PC),r2
	mov.l @(0x90,PC),r1
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	rts 
	nop 

;----------------------------------------------
loc_8C0EF620:
	mov.l @(loc_8C0EF6B4,pc),r1 ; r1 set to 0x8C28C6E9
	mov.l @(loc_8C0EF6B8,pc),r0 ; r0 set to 0x8C15FE74
	mov.b @r1,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	nop

;==============================================
loc_8C0EF62E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x88,PC),r1
	jsr @r1
	nop 
	mov.l @(0x84,PC),r14
	mov.l @(0x88,PC),r1
	mov.l @r14,r0
	shll2 r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c0ef650
	mov.w @(0x50,PC),r3
	mov.l @r14,r2
	mov.l @(0x7C,PC),r0
	add r3,r2
	mov.b r2,@r0

loc_8C0EF650:
	mov.l @r14,r4
	mov.l @(0x70,PC),r0
	shll2 r4
	bsr loc_8c0eefcc
	mov.l @(r0,r4),r4
	mov.l @r14,r2
	mov 0x00,r4
	mov.l @(0x6C,PC),r0
	shll2 r2
	mov.l @(r0,r2),r3
	mov.l @(0x6C,PC),r2
	mov.l @r3,r1
	mov.l @(0x64,PC),r3
	mov.l r1,@r3
	mov.l @(0x68,PC),r3
	mov.l r4,@r2
	bsr loc_8c0ef59c
	mov.b r4,@r3
	mov.l @(0x68,PC),r3
	mov.l @(0x64,PC),r4
	jsr @r3
	nop 
	mov.l @(0x64,PC),r2
	jsr @r2
	fldi1 fr4
	mov.l @(0x64,PC),r3
	jsr @r3
	nop 
	mov.l @(0x60,PC),r2
	jsr @r2
	nop 
	mov.l @(0x24,PC),r2
	mov 0x01,r3
	mov.b r3,@r2
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ef69a:
	#data 0x00ff
	#align4

loc_8c0ef69c:
	#data 0x447A0000
loc_8c0ef6a0:
	#data 0x8C28C6Fc
loc_8c0ef6a4:
	#data 0x8C28C700
loc_8c0ef6a8:
	#data 0x8C28C710
loc_8C0EF6AC:
	#data bank15.loc_8c15FBD8
loc_8C0EF6B0:
	#data bank12.loc_8c1294C8
loc_8C0EF6B4:
	#data 0x8C28C6E9
loc_8C0EF6B8:
	#data bank15.loc_8c15FE74
loc_8C0EF6BC:
	#data bank03.loc_8c03580c
loc_8C0EF6C0:
	#data 0x8C28C6F0
loc_8C0EF6C4:
	#data bank15.loc_8c15FC80
loc_8C0EF6c8:
	#data 0x8C26A95c
loc_8C0EF6CC:
	#data bank15.loc_8c15FD10
loc_8C0EF6d0:
	#data 0x8C28C6Ec
loc_8C0EF6d4:
	#data 0x8C28C6F4
loc_8C0EF6d8:
	#data 0x8C28C71c
loc_8C0EF6DC:
	#data bank15.loc_8c15FBE4
loc_8C0EF6E0:
	#data bank03.loc_8c031F10
loc_8C0EF6E4:
	#data bank03.loc_8c031F24
loc_8C0EF6E8:
	#data bank03.loc_8c030E30
loc_8C0EF6EC:
	#data bank03.loc_8c030F24

;==============================================
loc_8C0EF6F0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	bsr loc_8c0ef30c
	mov 0x01,r4
	mov.l @(0xB4,PC),r5
	mov r0,r4
	mov.l @(0xB4,PC),r12
	mov.w @(0x10,r5),r0
	mov.w @r5,r6
	mov.w r0,@(0x8,r15)
	mov.w @(0x4,r5),r0
	mov.w r0,@(0xC,r15)
	extu.w r4,r0
	tst 0x80,r0
	bt loc_8c0ef72e
	mov.b @r12,r2
	mov 0x03,r3
	add 0x01,r2
	mov.b r2,@r12
	exts.b r2,r2
	cmp/ge r3,r2
	bf loc_8c0ef72e
	mov 0x00,r1
	mov.b r1,@r12

loc_8C0EF72E:
	mov.w @(0x86,PC),r3
	extu.w r6,r14
	mov.w @(0x80,PC),r11
	mov.l @(0x90,PC),r13
	tst r14,r3
	mov.w @(0x76,PC),r5
	mov.w @(0x72,PC),r7
	mov.w @(0x74,PC),r10
	mov.l @(0x84,PC),r9
	bt loc_8c0ef7ec
	mov.l @(0x88,PC),r4
	tst r14,r7
	bt loc_8c0ef75c
	fmov @r4,fr3
	fldi1 fr2
	fsub fr2,fr3
	fldi0 fr1
	fcmp/gt fr3,fr1
	bf.s loc_8c0ef75c
	fmov fr3,@r4
	mova @(0x78,PC),r0
	fmov @r0,fr3
	fmov fr3,@r4

loc_8C0EF75C:
	tst r14,r5
	bt loc_8c0ef774
	fmov @r4,fr3
	mova @(0x70,PC),r0
	fldi1 fr2
	fadd fr2,fr3
	fmov fr3,@r4
	fmov @r0,fr1
	fcmp/gt fr3,fr1
	bt loc_8c0ef774
	fldi0 fr3
	fmov fr3,@r4

loc_8C0EF774:
	mov.l @(0x60,PC),r4
	tst r14,r11
	bt loc_8c0ef790
	fmov @r4,fr3
	mova @(0x5C,PC),r0
	fldi1 fr2
	fadd fr2,fr3
	fmov fr3,@r4
	fmov @r0,fr1
	fcmp/gt fr3,fr1
	bt loc_8c0ef790
	mova @(0x54,PC),r0
	fmov @r0,fr3
	fmov fr3,@r4

loc_8C0EF790:
	tst r10,r14
	bf loc_8c0ef798
	bra loc_8c0ef88c
	nop 

loc_8C0EF798:
	fmov @r4,fr3
	mova @(0x48,PC),r0
	fldi1 fr2
	fsub fr2,fr3
	fmov fr3,@r4
	fmov @r0,fr1
	fcmp/gt fr1,fr3
	bt loc_8c0ef88c
	mova @(0x3C,PC),r0
	fmov @r0,fr3
	bra loc_8c0ef88c
	fmov fr3,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ef7b0:
	#data 0x0400
loc_8c0ef7b2:
	#data 0x0800
loc_8c0ef7b4:
	#data 0x1000
loc_8c0ef7b6:
	#data 0x2000
loc_8c0ef7b8:
	#data 0x0200
	#align4

loc_8c0ef7bc:
	#data 0x8C2681Dc
loc_8c0ef7c0:
	#data 0x8C28C71c
loc_8c0ef7c4:
	#data 0x8C28C6Ec
loc_8c0ef7c8:
	#data 0x8C28C6F4
loc_8c0ef7cc:
	#data 0x8C28C700
loc_8c0ef7d0:
	#data 0x43B38000
loc_8c0ef7d4:
	#data 0x43B40000
loc_8c0ef7d8:
	#data 0x8C28C6Fc
loc_8c0ef7dc:
	#data 0x42B40000
loc_8c0ef7e0:
	#data 0x42B20000
loc_8c0ef7e4:
	#data 0xC2B40000
loc_8c0ef7e8:
	#data 0xC2B20000

;==============================================
loc_8C0EF7EC:
	mov 0x40,r3
	tst r14,r3
	mova @(0x78,PC),r0
	bt.s loc_8c0ef826
	fmov @r0,fr15
	mov.l @(0x78,PC),r4
	tst r14,r7
	bt loc_8c0ef802
	fmov @r4,fr3
	fsub fr15,fr3
	fmov fr3,@r4

loc_8C0EF802:
	tst r14,r5
	bt loc_8c0ef80c
	fmov @r4,fr3
	fadd fr15,fr3
	fmov fr3,@r4

loc_8C0EF80C:
	tst r14,r11
	bt loc_8c0ef818
	mov 0x04,r0
	fmov @(r0,r4),fr3
	fsub fr15,fr3
	fmov fr3,@(r0,r4)

loc_8C0EF818:
	tst r10,r14
	bt loc_8c0ef88c
	mov 0x04,r0
	fmov @(r0,r4),fr3
	fadd fr15,fr3
	bra loc_8c0ef88c
	fmov fr3,@(r0,r4)

loc_8C0EF826:
	mov.l @r9,r6
	mov.l @(0x4,r6),r6
	add 0xFF,r6
	bsr loc_8c0ef278
	mov.l @r13,r5
	mov.l r0,@r13
	mova @(0x40,PC),r0
	fmov @r0,fr4
	mov r14,r3
	mov.w @(0x8,r15),r0
	tst r11,r3
	mov.l @(0x38,PC),r4
	mov r0,r5
	bt.s loc_8c0ef85e
	extu.w r5,r5
	tst r5,r11
	bt loc_8c0ef84e
	fmov @r4,fr3
	bra loc_8c0ef852
	fsub fr15,fr3

loc_8C0EF84E:
	fmov @r4,fr3
	fsub fr4,fr3

loc_8C0EF852:
	fldi1 fr5
	fadd fr5,fr5
	fcmp/gt fr5,fr3
	bt.s loc_8c0ef85e
	fmov fr3,@r4
	fmov fr5,@r4

loc_8C0EF85E:
	tst r10,r14
	bt loc_8c0ef88c
	tst r10,r5
	bt loc_8c0ef87c
	fmov @r4,fr3
	bra loc_8c0ef880
	fadd fr15,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0ef86c:
	#data 0x3F000000
loc_8c0ef870:
	#data 0x8C28C710
loc_8c0ef874:
	#data 0x40A00000
loc_8c0ef878:
	#data 0x8C28C6F8

;==============================================
loc_8C0EF87C:
	fmov @r4,fr3
	fadd fr4,fr3

loc_8C0EF880:
	mova @(0xE8,PC),r0
	fmov fr3,@r4
	fmov @r0,fr4
	fcmp/gt fr3,fr4
	bt loc_8c0ef88c
	fmov fr4,@r4

loc_8C0EF88C:
	mov.w @(0xC,r15),r0
	mov.w @(0xD6,PC),r3
	mov r0,r4
	extu.w r4,r4
	tst r4,r3
	bt loc_8c0ef8ac
	mov.l @(0xD4,PC),r5
	mov 0x08,r2
	mov.b @r5,r3
	add 0x01,r3
	mov.b r3,@r5
	exts.b r3,r3
	cmp/ge r2,r3
	bf loc_8c0ef8ac
	mov 0x00,r1
	mov.b r1,@r5

loc_8C0EF8AC:
	mov 0x20,r3
	tst r4,r3
	bt loc_8c0ef8b8
	mov.l @(0xC0,PC),r2
	mov 0x01,r1
	mov.b r1,@r2

loc_8C0EF8B8:
	mov.l @(0xBC,PC),r3
	tst r3,r4
	bt loc_8c0ef8c2
	bsr loc_8c0ef59c
	nop 

loc_8C0EF8C2:
	mov.l @(0xBC,PC),r3
	mov.l @(0xB4,PC),r4
	jsr @r3
	nop 
	mov.b @r12,r4
	tst r4,r4
	bt loc_8c0ef8d8
	mov r4,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c0ef954

loc_8C0EF8D8:
	mov.l @(0xAC,PC),r3
	mov 0x05,r5
	mov.l @(0xAC,PC),r0
	mov 0x04,r6
	mov.l @r3,r2
	mov.l @(0xAC,PC),r1
	shll2 r2
	mov.l @(0x9C,PC),r14
	mov.l @(r0,r2),r2
	mov.l r2,@-r15
	mov.l r1,@-r15
	jsr @r14
	mov r6,r4
	mov.l @r13,r3
	mov 0x06,r5
	mov.l @(0x9C,PC),r2
	mov 0x04,r6
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r14
	mov r6,r4
	mov.l @r9,r0
	mov r15,r5
	mov.l @r13,r4
	add 0x14,r5
	mov.l @r0,r0
	mov.l @(0x88,PC),r3
	shll2 r4
	jsr @r3
	mov.l @(r0,r4),r4
	mov.l @r9,r0
	mov r15,r5
	mov.l @r13,r4
	add 0x10,r5
	mov.l @r0,r0
	mov.l @(0x7C,PC),r3
	shll2 r4
	jsr @r3
	mov.l @(r0,r4),r4
	mov.l @(0x14,r15),r2
	mov 0x07,r5
	mov.l @(0x74,PC),r3
	mov 0x04,r6
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r14
	mov r6,r4
	mov.l @(0x18,r15),r2
	mov 0x08,r5
	mov.l @(0x68,PC),r3
	mov 0x04,r6
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r14
	mov r6,r4
	mov.l @(0x60,PC),r2
	mov 0x1B,r5
	mov 0x04,r6
	mov.l r2,@-r15
	jsr @r14
	mov 0x16,r4
	add 0x24,r15

loc_8C0EF954:
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ef968:
	#data 0x0100
	#align4

loc_8c0ef96c:
	#data 0x461C4000
loc_8c0ef970:
	#data 0x8C28C6Ea
loc_8c0ef974:
	#data 0x8C28C6E8
loc_8c0ef978:
	#data 0x00008000
loc_8C0EF97C:
	#data loc_8c0eF9Ac
loc_8C0EF980:
	#data bank03.loc_8c0395Ac
loc_8C0EF984:
	#data bank03.loc_8c0395C6
loc_8C0EF988:
	#data 0x8C28C6F0
loc_8C0EF98C:
	#data bank15.loc_8c15FBF0
loc_8C0EF990:
	#data bank13.loc_8c13B544
loc_8C0EF994:
	#data bank13.loc_8c13B550
loc_8C0EF998:
	#data bank10.loc_8c1082E0
loc_8C0EF99C:
	#data bank10.loc_8c10823e
loc_8C0EF9A0:
	#data bank13.loc_8c13B55c
loc_8C0EF9A4:
	#data bank13.loc_8c13B570
loc_8C0EF9A8:
	#data bank13.loc_8c13B584

;==============================================
loc_8C0EF9AC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0EFA88,pc),r13 ; r13 set to 0x8C1204F0
	jsr @r13
	mov 0x03,r4 ; r4 set to 0x03
	mov.l @(loc_8C0EFA8C,pc),r12 ; r12 set to 0x8C121100
	jsr @r12
	nop
	mov.l @(loc_8C0EFA90,pc),r3 ; r3 set to 0x8C121710
	fldi0 fr15
	fmov fr15,fr5
	jsr @r3
	fmov fr15,fr4 ; r4 ??? bc r15 is ???
	mova @(loc_8C0EFA94,pc),r0  ; r0 init to 0x8C0EFA94
	fmov.s @r0,fr13 ; r13 ??
	mova @(loc_8C0EFA98,pc),r0  ; r0 set to 0x8C0EFA98
	fmov.s @r0,fr14
	mova @(loc_8C0EFA9C,pc),r0  ; r0 set to 0x8C0EFA9c
	fmov.s @r0,fr15
	mov.l @(loc_8C0EFAA0,pc),r0 ; r0 set to 0x8C2681Dc
	mov.w @r0,r0 ; r0 ??
	extu.w r0,r0
	tst 0x10,r0
	bf loc_8C0EF9F0
	mov.w @(loc_8C0EFA84,pc),r4 ; r4 set to 0x1E94
	fmov fr14,fr5
	fmov fr15,fr6
	bra loc_8C0EF9F8
	fmov fr13,fr4

loc_8C0EF9F0:
	mov.w @(loc_8C0EFA86,pc),r4 ; r4 set to 0x4000
	fmov fr13,fr4 ; r4 ??? bc r13 is ???
	fmov fr15,fr6
	fmov fr14,fr5

loc_8C0EF9F8:
	mov.l @(loc_8C0EFAA4,pc),r2 ; r2 set to 0x8C1219B0, r2 set to 0x8C1219B0
	jsr @r2
	nop
	mov.l @(loc_8C0EFAAC,pc),r3 ; r3 set to 0x8C28C700, r3 set to 0x8C28C700
	mov.l @(loc_8C0EFAB0,pc),r2 ; r2 set to 0x8C28C6FC, r2 set to 0x8C28C6Fc
	mov.l @(loc_8C0EFAB4,pc),r1 ; r1 set to 0x8C28C6F8, r1 set to 0x8C28C6F8
	fmov.s @r3,fr6
	fmov.s @r1,fr4
	mov.l @(loc_8C0EFAB8,pc),r3 ; r3 set to 0x8C02DAC4, r3 set to 0x8C02DAC4
	fmov.s @r2,fr5
	mov.l @(loc_8C0EFAA8,pc),r14 ; r14 set to 0x8C28C704, r14 set to 0x8C28C704
	jsr @r3
	mov.l r14,@-r15
	add 0x04,r15
	mov.l @(loc_8C0EFABC,pc),r4 ; r4 set to 0x8C28C710, r4 set to 0x8C28C710
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @r14,fr2 ; r2 ??, r2 ??
	mov r0,r1 ; r1 set to 0x04, r1 set to 0x04
	fmov.s @r4,fr3 ; r3 ??, r3 ??
	add r4,r1 ; r1 set to 0x8C28C714, r1 set to 0x8C28C714
	fadd fr3,fr2
	fmov.s fr2,@r14 ; r14 ??? bc r2 is ???, r14 ??? bc r2 is ???
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	mov r0,r1 ; r1 set to 0x08, r1 set to 0x08
	add r4,r1 ; r1 set to 0x8C28C718, r1 set to 0x8C28C718
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r13
	mov 0x02,r4 ; r4 set to 0x02, r4 set to 0x02
	jsr @r12
	nop
	mov.l @(loc_8C0EFAC0,pc),r3 ; r3 set to 0x8C11FF90, r3 set to 0x8C11FF90
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	mov.l @(loc_8C0EFABC,pc),r5 ; r5 set to 0x8C28C710, r5 set to 0x8C28C710
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	jsr @r13
	mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
	jsr @r12
	nop
	mov.l @(loc_8C0EFAC4,pc),r2 ; r2 set to 0x8C123780, r2 set to 0x8C123780
	fldi1 fr15
	fmov fr15,fr5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???
	fmov fr15,fr6 ; r6 ??? bc r15 is ???, r6 ??? bc r15 is ???
	jsr @r2
	fmov fr15,fr4 ; r4 ??? bc r15 is ???, r4 ??? bc r15 is ???
	mov.l @(loc_8C0EFAA0,pc),r0 ; r0 set to 0x8C2681DC, r0 set to 0x8C2681Dc
	mov.l @(loc_8C0EFACC,pc),r2 ; r2 set to 0x8C28C6F4, r2 set to 0x8C28C6F4
	mov.w @r0,r0 ; r0 ??, r0 ??
	mov.l @(loc_8C0EFAC8,pc),r3 ; r3 set to 0x8C28C6EC, r3 set to 0x8C28C6Ec
	extu.w r0,r0
	mov.l @r2,r13
	mov.l @r3,r14
	tst 0x10,r0
	bf.s loc_8C0EFAD4
	shll2 r13
	mov.l @(loc_8C0EFAD0,pc),r1 ; r1 set to 0x8C1235E0, r1 set to 0x8C1235E0
	mov.l @r14,r0
	jsr @r1
	mov.l @(r0,r13),r4
	bsr loc_8C0EFB70
	nop
	bra loc_8C0EFADc
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EFA84:
	#data 0x1E94
loc_8C0EFA86:
	#data 0x4000
	#align4

loc_8C0EFA88:
	#data bank12.loc_8c1204F0
loc_8C0EFA8C:
	#data bank12.loc_8c121100
loc_8C0EFA90:
	#data bank12.loc_8c121710
loc_8C0EFA94:
	#data 0x3FAAAAAb
loc_8C0EFA98:
	#data 0x3DCCCCCd
loc_8C0EFA9C:
	#data 0x463B8000
loc_8C0EFAA0:
	#data 0x8C2681Dc
loc_8C0EFAA4:
	#data bank12.loc_8c1219B0
loc_8C0EFAA8:
	#data 0x8C28C704
loc_8C0EFAAC:
	#data 0x8C28C700
loc_8C0EFAB0:
	#data 0x8C28C6Fc
loc_8C0EFAB4:
	#data 0x8C28C6F8
loc_8C0EFAB8:
	#data bank02.loc_8c02DAC4
loc_8C0EFABC:
	#data 0x8C28C710
loc_8C0EFAC0:
	#data bank11.loc_8c11FF90
loc_8C0EFAC4:
	#data bank12.loc_8c123780
loc_8C0EFAC8:
	#data 0x8C28C6Ec
loc_8C0EFACC:
	#data 0x8C28C6F4
loc_8C0EFAD0:
	#data bank12.loc_8c1235E0

;==============================================
loc_8c0efad4:
	mov.l @(loc_8c0efc78,pc),r3
	mov.l @r14,r0
	jsr @r3
	mov.l @(r0,r13),r4

loc_8c0efadc:
	mov.l @(loc_8C0EFC7C,pc),r3
	mov.b @r3,r0
	cmp/eq 0x01,r0
	bf loc_8c0efb60
	mov.l @(loc_8c0efc84,pc),r1
	mov 0x05,r5
	mov.l @(loc_8c0efc80,pc),r14
	mov 0x04,r6
	mov.l r1,@-r15
	jsr @r14
	mov 0x14,r4
	mov.l @(loc_8c0efc88,pc),r3
	mov 0x06,r5
	mov 0x04,r6
	mov.l r3,@-r15
	jsr @r14
	mov 0x14,r4
	mov.l @(loc_8c0efc8c,pc),r2
	mov 0x07,r5
	mov 0x04,r6
	mov.l r2,@-r15
	jsr @r14
	mov 0x14,r4
	mov.l @(loc_8c0efc90,pc),r3
	mov 0x08,r5
	mov 0x04,r6
	mov.l r3,@-r15
	jsr @r14
	mov 0x14,r4
	mov.l @(loc_8c0efc94,pc),r2
	mov 0x09,r5
	mov 0x04,r6
	mov.l r2,@-r15
	jsr @r14
	mov 0x14,r4
	mov.l @(loc_8c0efc98,pc),r3
	mov 0x0A,r5
	mov 0x04,r6
	mov.l r3,@-r15
	jsr @r14
	mov 0x14,r4
	mov.l @(loc_8c0efc9c,pc),r2
	mov 0x0B,r5
	mov 0x04,r6
	mov.l r2,@-r15
	jsr @r14
	mov 0x14,r4
	mov.l @(loc_8c0efca0,pc),r3
	mov 0x0C,r5
	mov 0x04,r6
	mov.l r3,@-r15
	jsr @r14
	mov 0x14,r4
	mov.l @(loc_8c0efca4,pc),r2
	mov 0x0D,r5
	mov 0x04,r6
	mov.l r2,@-r15
	jsr @r14
	mov 0x14,r4
	mov.l @(loc_8c0efca8,pc),r3
	mov 0x0E,r5
	mov 0x04,r6
	mov.l r3,@-r15
	jsr @r14
	mov 0x14,r4
	add 0x28,r15

loc_8c0efb60:
	lds.l @r15+,pr
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0EFB70:
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
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l @(loc_8C0EFCAC,pc),r3 ; r3 set to 0x8C126B90
	jsr @r3
	fldi1 fr4
	mov.l @(loc_8C0EFCB0,pc),r2 ; r2 set to 0x8C121100
	jsr @r2
	nop
	mov.l @(loc_8C0EFCBC,pc),r14 ; r14 set to 0x8C126B10
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(loc_8C0EFCC0,pc),r10 ; r10 set to 0x8C15FEC4
	mov 0x03,r8 ; r8 set to 0x03
	mov.l @(loc_8C0EFCB8,pc),r12 ; r12 set to 0x8C15FF0c
	mov.l @(loc_8C0EFCB4,pc),r11 ; r11 set to 0x8C15FE7c

loc_8C0EFBA0:
	mov.l @(loc_8C0EFCC4,pc),r2 ; r2 set to 0x8C28C6F0, r2 set to 0x8C28C6F0
	mov.l @r2,r3 ; r3 ??
	tst r3,r3
	bf loc_8C0EFBBa
	mov.l @(loc_8C0EFCB8,pc),r0 ; r0 set to 0x8C15FF0C, r0 set to 0x8C15FF0c
	mov r13,r6 ; r6 set to 0x00
	shll2 r6 ; r6 set to 0x00
	mov r10,r5 ; r5 set to 0x8C15FEC4
	mov.l @(r0,r6),r6 ; r6 ??
	add 0x0C,r5 ; r5 set to 0x8C15FED0
	mov r10,r9 ; r9 set to 0x8C15FEC4
	bra loc_8C0EFBC4
	mov r10,r4

loc_8C0EFBBA:
	mov r11,r5
	mov.l @r12,r6
	mov r11,r4
	add 0x0C,r5
	mov r11,r9

loc_8C0EFBC4:
	jsr @r14
	nop
	add 0x01,r13
	cmp/ge r8,r13
	add 0x04,r12
	add 0x18,r11
	bf.s loc_8C0EFBA0
	add 0x18,r10
	mova @(loc_8C0EFCC8,pc),r0  ; r0 init to 0x8C0EFCC8, r0 init to 0x8C0EFCC8
	mov.l @(loc_8C0EFCD0,pc),r12 ; r12 set to 0xFF00FFFF, r12 set to 0xFF00FFFf
	fmov.s @r0,fr13
	mova @(loc_8C0EFCCC,pc),r0  ; r0 set to 0x8C0EFCCC, r0 set to 0x8C0EFCCc
	fmov.s @r0,fr14
	mov 0x05,r11 ; r11 set to 0x05, r11 set to 0x05
	fldi0 fr15
	bra loc_8C0EFC1c
	mov 0xFB,r13

loc_8c0efbe6:
	tst r13,r13
	bt loc_8c0efc1a
	mov r13,r2
	shll2 r2
	mov r13,r3
	add r3,r2
	shll r2
	mov r15,r5
	lds r2,fpul
	mov 0x0C,r0
	mov r15,r4
	mov r12,r6
	float fpul,fr3
	fmov.s fr3,@(r0,r15)
	mov 0x10,r0
	fmov fr3,fr4
	fmov.s fr4,@r15
	fmov.s fr15,@(r0,r15)
	mov 0x04,r0
	fmov.s fr15,@(r0,r15)
	mov 0x14,r0
	fmov.s fr13,@(r0,r15)
	mov 0x08,r0
	fmov.s fr14,@(r0,r15)
	jsr @r14
	add 0x0C,r4

loc_8c0efc1a:
	add 0x01,r13

loc_8C0EFC1C:
	cmp/gt r11,r13
	bf loc_8C0EFBE6
	bra loc_8C0EFC5a
	mov 0xFB,r13

loc_8c0efc24:
	tst r13,r13
	bt loc_8c0efc58
	mov r13,r3
	mov r13,r2
	shll2 r3
	mov r15,r5
	add r2,r3
	mov r15,r4
	shll r3
	mov r12,r6
	lds r3,fpul
	mov 0x0C,r0
	fmov.s fr13,@(r0,r15)
	mov 0x10,r0
	fmov.s fr14,@r15
	float fpul,fr3
	fmov.s fr15,@(r0,r15)
	mov 0x04,r0
	fmov.s fr15,@(r0,r15)
	mov 0x14,r0
	fmov.s fr3,@(r0,r15)
	mov 0x08,r0
	fmov fr3,fr4
	fmov.s fr4,@(r0,r15)
	jsr @r14
	add 0x0C,r4

loc_8c0efc58:
	add 0x01,r13

loc_8C0EFC5A:
	cmp/gt r11,r13
	bf loc_8C0EFC24
	add 0x18,r15
	lds.l @r15+,pr
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
	#align4
loc_8C0EFC78:
	#data bank12.loc_8c1235B0
loc_8c0efc7c:
	#data 0x8C28C71c
loc_8C0EFC80:
	#data bank03.loc_8c0395C6
loc_8C0EFC84:
	#data bank13.loc_8c13B59c
loc_8C0EFC88:
	#data bank13.loc_8c13B5B0
loc_8C0EFC8C:
	#data bank13.loc_8c13B5C8
loc_8C0EFC90:
	#data bank13.loc_8c13B5Dc
loc_8C0EFC94:
	#data bank13.loc_8c13B5F0
loc_8C0EFC98:
	#data bank13.loc_8c13B604
loc_8C0EFC9C:
	#data bank13.loc_8c13B61c
loc_8C0EFCA0:
	#data bank13.loc_8c13B634
loc_8C0EFCA4:
	#data bank13.loc_8c13B64c
loc_8C0EFCA8:
	#data bank13.loc_8c13B660
loc_8C0EFCAC:
	#data bank12.loc_8c126B90
loc_8C0EFCB0:
	#data bank12.loc_8c121100
loc_8C0EFCB4:
	#data bank15.loc_8c15FE7c
loc_8C0EFCB8:
	#data bank15.loc_8c15FF0c
loc_8C0EFCBC:
	#data bank12.loc_8c126B10
loc_8C0EFCC0:
	#data bank15.loc_8c15FEC4
loc_8C0EFCC4:
	#data 0x8C28C6F0
loc_8C0EFCC8:
	#data 0xC2480000
loc_8C0EFCCC:
	#data 0x42480000
loc_8C0EFCD0:
	#data 0xFF00FFFf

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0efcd4:
	#data 0x01B9
	#data 0x01AA
	#data 0x01C3
	#data 0x03AF
	#data 0x04Ae
	#data 0x0339
	#data 0x0362
	#data 0x0232
	#data 0x0398
	#data 0x03AD
	#data 0x029f
	#data 0x03B8
	#data 0x0464
	#data 0x01FF
	#data 0x03Ab
	#data 0x0302
	#data 0x0453
	#data 0x0319
	#data 0x02E5
	#data 0x02A9
	#data 0x03D3
	#data 0x0222
	#data 0x031f
	#data 0x02A9
	#data 0x01Ea
	#data 0x0179
	#data 0x0182
	#data 0x01D3
	#data 0x03Fe
	#data 0x0402
	#data 0x020d
	#data 0x0570
	#data 0x03A3
	#data 0x013E
	#data 0x0398
	#data 0x010B
	#data 0x01E2
	#data 0x021D
	#data 0x0161
	#data 0x0197
	#data 0x0259
	#data 0x0150
	#data 0x0496
	#data 0x0240
	#data 0x044d
	#data 0x0295
	#data 0x0459
	#data 0x0297
	#data 0x04Da
	#data 0x02E2
	#data 0x0245
	#data 0x0439
	#data 0x0188
	#data 0x038D
	#data 0x02C6
	#data 0x0374
	#data 0x02Da
	#data 0x023B
	#data 0x03C9

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0EFD4A:
	#data 0x003d
	#data 0x0011
	#data 0x0026
	#data 0x0047
	#data 0x002B
	#data 0x0042
	#data 0x0061
	#data 0x0015
	#data 0x002D
	#data 0x007f
	#data 0x000F
	#data 0x0015
	#data 0x009F
	#data 0x0034
	#data 0x0046
	#data 0x0068
	#data 0x0105
	#data 0x0035
	#data 0x0018
	#data 0x001f
	#data 0x002D
	#data 0x0033
	#data 0x001B
	#data 0x0028
	#data 0x0026
	#data 0x0025
	#data 0x0010
	#data 0x0008
	#data 0x004D
	#data 0x001f
	#data 0x0045
	#data 0x0054
	#data 0x002A
	#data 0x0022
	#data 0x0032
	#data 0x0000
	#data 0x0009
	#data 0x0017
	#data 0x0019
	#data 0x0027
	#data 0x0030
	#data 0x0015
	#data 0x0042
	#data 0x0034
	#data 0x006A
	#data 0x0020
	#data 0x005B
	#data 0x0066
	#data 0x00A1
	#data 0x0024
	#data 0x000D
	#data 0x004b
	#data 0x0027
	#data 0x004a
	#data 0x0076
	#data 0x0024
	#data 0x0051
	#data 0x0015
	#data 0x00FE

;==============================================
loc_8C0EFDC0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x04,r5
	mov.l @(0x134,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0efe3a
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x20,r0
	mov.w @(0x112,PC),r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x124,PC),r3
	add r4,r1
	mov.l r14,@(0x18,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov.w @(0x104,PC),r2
	mov.w @(0x104,PC),r0
	jsr @r3
	add r14,r2
	mov.w @(0x100,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
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
	mov.w @(0xE4,PC),r0
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
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r14),r2
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov.w @(0xBE,PC),r0
	mov.b r3,@(r0,r4)


loc_8C0EFE3A:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EFE46:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0EFF10,pc),r0 ; r0 set to 0x8C15FF18
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0EFE5A:
	mov r4,r3
	mov.l @(loc_8C0EFF14,pc),r1 ; r1 set to 0x8C15FF38
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0EFE6C:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x2C,r0 ; r0 set to 0x2c
	rts
	mov.w r0,@(0x1C,r4)

;----------------------------------------------
loc_8C0EFE78:
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8C0EFF18,pc),r12 ; r12 set to 0x8C2895F0
	mov.b @(0x06,r12),r0
	tst r0,r0
	bf.s loc_8C0EFE8e
	mov r4,r14
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C0EFF4a
	mov.b r0,@(0x04,r14)

;----------------------------------------------
loc_8C0EFE8E:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8C0EFF4a
	mov.b @(0x04,r14),r0
	mov 0x01,r1 ; r1 set to 0x01
	mov 0x0A,r7 ; r7 set to 0x0a
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r4 ; r4 set to 0x00
	bra loc_8C0EFED4
	mov 0x0C,r6

;----------------------------------------------
loc_8c0efeaa:
	mov.b @(0x02,r14),r0
	mov r12,r2
	add 0x18,r2
	extu.b r0,r0
	xor r1,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r4),r5
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c0efed2
	mov.b @(0x05,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0efed2
	mov.w @(loc_8C0EFEFC,pc),r0
	mov.b r7,@(r0,r5)

loc_8c0efed2:
	add 0x04,r4

loc_8C0EFED4:
	cmp/hs r6,r4
	bf loc_8C0EFEAa
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8C0EFF1c
	mov.w @(loc_8C0EFEFE,pc),r0 ; r0 set to 0x1Eb
	mov 0x1E,r4 ; r4 set to 0x1e
	mov.l @(0x18,r14),r2
	mov.b r4,@(r0,r2)
	add 0x02,r0 ; r0 set to 0x1Ed
	mov.l @(0x18,r14),r3
	mov.b r4,@(r0,r3)
	bra loc_8C0EFF38
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0efef4:
	#data 0x00Dc
loc_8c0efef6:
	#data 0x00C0
loc_8c0efef8:
	#data 0x012c
loc_8c0efefa:
	#data 0x01A3
loc_8c0efefc:
	#data 0x01A0
loc_8C0EFEFE:
	#data 0x01Eb
	#align4

loc_8C0EFF00:
	#data bank04.loc_8c044F26
loc_8C0EFF04:
	#data loc_8c0eFE46
loc_8C0EFF08:
	#data bank12.loc_8c129560
loc_8C0EFF0C:
	#data bank12.loc_8c1294C8
loc_8C0EFF10:
	#data bank15.loc_8c15FF18
loc_8C0EFF14:
	#data bank15.loc_8c15FF38
loc_8C0EFF18:
	#data 0x8C2895F0

;==============================================
loc_8c0eff1c:
	mov 0x20,r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x05,r0
	bt loc_8c0eff2c
	extu.b r4,r2
	tst r2,r2
	bf loc_8c0eff40

loc_8c0eff2c:
	mov.w @(loc_8C0F003C,pc),r0
	mov.l @(0x18,r14),r3
	mov.b r6,@(r0,r3)
	add 0x02,r0
	mov.l @(0x18,r14),r3
	mov.b r6,@(r0,r3)

loc_8c0eff38:
	mov.w @(loc_8C0F003E,pc),r0
	mov 0x00,r2
	mov.l @(0x18,r14),r3
	mov.b r2,@(r0,r3)

loc_8c0eff40:
	mov.l @(loc_8c0f0044,pc),r2
	mov.l @r15+,r12
	mov.l @(0x18,r14),r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0EFF4A:
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0EFF50:
	mov r4,r3
	mov.l @(loc_8C0F0048,pc),r1 ; r1 set to 0x8C15FF48
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0EFF62:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x14,r0 ; r0 set to 0x14
	rts
	mov.w r0,@(0x1C,r4)

;----------------------------------------------
loc_8C0EFF6E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8C0F004C,pc),r13 ; r13 set to 0x8C2895F0
	mov.l r11,@-r15
	mov.b @(0x06,r13),r0
	tst r0,r0
	bf.s loc_8C0EFF86
	mov r4,r14
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C0F0034
	mov.b r0,@(0x04,r14)

loc_8C0EFF86:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0EFF9e
	mov.w @(loc_8C0F0040,pc),r0 ; r0 set to 0x3F0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8C0F0034
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x3F1
	bra loc_8C0F0034
	mov.b r0,@(0x05,r14)

loc_8c0eff9e:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0f0034
	mov.b @(0x04,r14),r0
	mov 0x00,r11
	mov 0x0C,r4
	mov r11,r5
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x01,r7

loc_8c0effb8:
	mov.b @(0x02,r14),r0
	mov r13,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r5),r6
	mov.b @r6,r3
	tst r3,r3
	bt loc_8c0effde
	mov.b @(0x05,r6),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0effde
	mov.w @(loc_8C0F0042,pc),r0
	mov.b r7,@(r0,r6)

loc_8c0effde:
	add 0x04,r5
	cmp/hs r4,r5
	bf loc_8c0effb8
	mov r11,r5
	mov 0x0A,r1

loc_8c0effe8:
	mov.b @(0x02,r14),r0
	mov r13,r2
	add 0x18,r2
	extu.b r0,r0
	xor r7,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r5),r6
	mov.b @r6,r3
	tst r3,r3
	bt loc_8c0f0010
	mov.b @(0x05,r6),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0f0010
	mov.w @(loc_8C0F0042,pc),r0
	mov.b r1,@(r0,r6)

loc_8c0f0010:
	add 0x04,r5
	cmp/hs r4,r5
	bf loc_8c0effe8
	mov.w @(loc_8C0F003C,pc),r0
	mov.l @(0x18,r14),r2
	mov.b r4,@(r0,r2)
	add 0x02,r0
	mov.l @(0x18,r14),r3
	mov.b r4,@(r0,r3)
	add 0xB0,r0
	mov.l @(0x18,r14),r3
	mov.b r11,@(r0,r3)
	mov.l @r15+,r11
	mov.l @(loc_8c0f0044,pc),r3
	mov.l @r15+,r13
	mov.l @(0x18,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0F0034:
	mov.l @r15+,r11
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f003c:
	#data 0x01Eb
loc_8c0f003e:
	#data 0x019D
loc_8C0F0040:
	#data 0x03F0
loc_8c0f0042:
	#data 0x01A0
	#align4

loc_8C0F0044:
	#data bank05.loc_8c050FE0
loc_8C0F0048:
	#data bank15.loc_8c15FF48
loc_8C0F004C:
	#data 0x8C2895F0