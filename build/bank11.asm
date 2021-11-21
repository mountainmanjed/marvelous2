loc_8c1101b0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1102bc,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1101fe
	mov r0,r4
	mov.w @(loc_8C1102AC,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C1102C4,pc),r1
	mov.l @(loc_8c1102c0,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C1102AE,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x04,r0
	mov.l @(loc_8c1102c8,pc),r2
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c1102cc,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C1102B2,pc),r0
	mov.w @(loc_8C1102B0,pc),r1
	mov.l r1,@(r0,r4)
	mov.w @(loc_8C1102B4,pc),r1
	mov.l @r15,r3
	mov.w @(loc_8C1102B6,pc),r0
	add r3,r1
	mov.l r1,@(r0,r4)
	mov.l @r15,r3
	mov.l r3,@(0x14,r4)

loc_8c1101fe:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C110206:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C11022c
	cmp/eq 0x01,r0
	bt loc_8C110238
	cmp/eq 0x02,r0
	bt loc_8C11029a
	bra loc_8C11029a
	nop

loc_8C11022C:
	mov.l @(0x14,r14),r3
	mov.b @(0x05,r3),r0
	tst r0,r0
	bf loc_8C11024a
	bra loc_8C11029a
	nop

loc_8c110238:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C1102B8,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c110252
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C11024A:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C11029a
	mov.b r0,@(0x04,r14)

loc_8C110252:
	mov.l @(0x70,PC),r3
	mov.w @(0x62,PC),r0
	mov.l @r3,r4
	mov.l @(0x74,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(r0,r2),r4
	mova @(0x7C,PC),r0
	mov.l @(0x74,PC),r13
	fmov @r0,fr14
	mova @(0x78,PC),r0
	mov.l @(0x68,PC),r11
	mov.l @(0x68,PC),r12
	bra loc_8c110292
	fmov @r0,fr15

loc_8C110272:
	jsr @r13
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	float fpul,fr3
	fdiv fr15,fr3
	fmul fr3,fr2
	fmov @r15,fr3
	fmul fr14,fr2
	fsub fr2,fr3
	fmov fr3,@r15
	jsr @r11
	mov r15,r4

loc_8C110292:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c110272

loc_8C11029A:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1102ac:
	#data 0x012c
loc_8c1102ae:
	#data 0x0080
loc_8c1102b0:
	#data 0x0801
loc_8c1102b2:
	#data 0x00CC
loc_8c1102b4:
	#data 0x0088
loc_8c1102b6:
	#data 0x00C8
loc_8c1102b8:
	#data 0x0190
loc_8c1102ba:
	#data 0x0084
	#align4

loc_8C1102BC:
	#data bank04.loc_8c044F12
loc_8C1102C0:
	#data loc_8c110206
loc_8c1102c4:
	#data 0x8C26A904
loc_8C1102C8:
	#data bank16.loc_8c1668E8
loc_8C1102CC:
	#data bank12.loc_8c1294C8
loc_8C1102D0:
	#data bank10.loc_8c108060
loc_8C1102D4:
	#data bank10.loc_8c1081B4
loc_8C1102D8:
	#data bank10.loc_8c108086
loc_8C1102DC:
	#data bank10.loc_8c108168
loc_8C1102e0:
	#data 0x3E4CCCCd
loc_8C1102e4:
	#data 0x43C80000

;==============================================
loc_8C1102E8:
	mov.l @(0x58,PC),r2
	mov.l @(0x5C,PC),r1
	mov.w @(0x1C,r4),r0
	mov.l @r2,r3
	mov.b @(r0,r1),r1
	mov.l @r3,r3
	shll2 r1
	add r3,r1
	mov.l @(0x14,r1),r0
	mov 0x0F,r3
	mov.w @(0x3E,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/hs r3,r0
	bf loc_8c110312
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C110312:
	rts
	nop

;==============================================
loc_8C110316:
	sts.l pr,@-r15
	mov.l @(0x30,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c110338
	mov r0,r4
	mov.w @(0x14,PC),r0
	mov 0x01,r3
	mov.l @(0x20,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xC,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)

loc_8C110338:
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11033e:
	#data 0x0084
loc_8c110340:
	#data 0x012c
loc_8c110342:
	#data 0x0800
	#align4
loc_8C110344:
	#data 0x8C26A904
loc_8C110348:
	#data bank16.loc_8c1668F8
loc_8C11034C:
	#data bank04.loc_8c044F12
loc_8C110350:
	#data loc_8c1102E8

;==============================================
loc_8C110354:
	sts.l pr,@-r15
	mov.l @(0x12C,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c110370
	mov r0,r4
	mov.l @(0x120,PC),r2
	mov 0x00,r3
	mov.w @(0x10A,PC),r0
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)

loc_8C110370:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C110376:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt loc_8c110394
	mov 0x00,r14
	mov 0x03,r13

loc_8C11038A:
	bsr loc_8c11039c
	mov r14,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c11038a

loc_8C110394:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C11039C:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov r4,r13
	mov.l r8,@-r15
	mov 0x01,r6
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c11041a
	mov r0,r14
	mov.l @(0xD8,PC),r2
	mov 0x01,r3
	mov.w @(0xBA,PC),r0
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov r13,r2
	mov.l @(0xD0,PC),r0
	shll2 r2
	mov.l @(0xD0,PC),r3
	mov.l @(r0,r2),r1
	mov.l @r3,r0
	shll2 r1
	mov.l @(0xD0,PC),r3
	mov.l @r0,r2
	add r2,r1
	mov r13,r2
	mov.l @r1,r0
	shll r2
	mov.w @(0x9C,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov r13,r1
	add r1,r2
	mov.l @(0xB4,PC),r0
	shll2 r2
	mov r14,r1
	shll r2
	add r0,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xAC,PC),r3
	mov 0x34,r8
	jsr @r3
	add r14,r8
	mov r0,r1
	mov.l @(0xA8,PC),r2
	mov.w @(0x78,PC),r0
	jsr @r2
	nop 
	lds r0,fpul
	fmov @r8,fr2
	mov.w @(0x70,PC),r3
	float fpul,fr3
	mov.w @(0x6E,PC),r0
	fadd fr3,fr2
	fmov fr2,@r8
	mov.l r3,@(r0,r14)
	mov 0x20,r0
	mov.b r13,@(r0,r14)

loc_8C11041A:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C110424:
	mov.l r14,@-r15
	mov 0x60,r1 ; r1 set to 0x60
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	mov 0x20,r3 ; r3 set to 0x20
	add r14,r3 ; r3 ??? bc r14 is ???
	mov 0x60,r2 ; r2 set to 0x60
	add r14,r2 ; r2 ??? bc r14 is ???
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @r3,r3
	mov.l @(loc_8C1104AC,pc),r0 ; r0 set to bank16.loc_8c166950
	extu.b r3,r3
	fmov.s @r2,fr2
	shll2 r3
	fmov.s @(r0,r3),fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0x50
	cmp/eq 0x00,r0
	bt loc_8C110460
	cmp/eq 0x01,r0
	bt loc_8C1104B4
	bra loc_8C1104Da
	nop

loc_8C110460:
	mova @(loc_8C1104B0,pc),r0  ; r0 init to 0x8C1104B0
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C1104Da
	bsr loc_8C1104E0
	mov r14,r4
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	bra loc_8C1104Da
	mov.b r0,@(0x04,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c110478:
	#data 0x012c
loc_8c11047a:
	#data 0x0084
loc_8c11047c:
	#data 0x014a
loc_8c11047e:
	#data 0x0801
loc_8c110480:
	#data 0x00Cc
	#align4

loc_8C110484:
	#data bank04.loc_8c044F12
loc_8C110488:
	#data loc_8c110376
loc_8C11048C:
	#data bank04.loc_8c046AE0
loc_8C110490:
	#data loc_8c110424
loc_8C110494:
	#data bank16.loc_8c16695c
loc_8C110498:
	#data 0x8C26A904
loc_8C11049C:
	#data bank16.loc_8c166908
loc_8C1104A0:
	#data bank12.loc_8c1294C8
loc_8C1104A4:
	#data loc_8c11e730
loc_8C1104A8:
	#data bank12.loc_8c1292D4
loc_8C1104AC:
	#data bank16.loc_8c166950
loc_8C1104B0:
	#data 0xC2AA0000

;==============================================
loc_8C1104B4:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C110578,pc),r0 ; r0 set to bank16.loc_8c166918
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	shll r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C1104Da
	lds.l @r15+,pr
	mov.l @(loc_8C11057C,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C1104DA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1104e0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c110580,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c11051c
	mov r0,r4
	mov.l @(loc_8c110584,pc),r2
	mov 0x01,r3
	mov.w @(loc_8C110570,pc),r0
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(loc_8c110588,pc),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C110574,pc),r0
	mov.w @(loc_8C110572,pc),r1
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)

loc_8c11051c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C110524:
	mov 0x20,r2 ; r2 set to 0x20
	mov.l @(loc_8C11058C,pc),r0 ; r0 set to bank16.loc_8c166A70
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.l @(loc_8C110590,pc),r3 ; r3 set to 0x8C26A904
	mov.b @r2,r2
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r0 ; r0 ??? bc r2 is ???
	mov r0,r2
	mov.w @(0x1C,r4),r0
	shll2 r0
	mov.l @(r0,r2),r1
	mov.l @r3,r0
	shll2 r1
	mov.l @r0,r2
	add r2,r1
	mov.l @r1,r0
	mov 0x20,r2 ; r2 set to 0x20
	mov.w @(loc_8C110576,pc),r1 ; r1 set to 0x84
	add r4,r2 ; r2 ??? bc r4 is ???
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r0,@r1
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r3 ; r3 ??? bc r0 is ???
	mov.b @r2,r2
	mov.l @(loc_8C110594,pc),r0 ; r0 set to bank16.loc_8c166A7c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r1
	cmp/ge r1,r3
	bf loc_8C11056c
	mov.l @(loc_8C11057C,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C11056C:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c110570:
	#data 0x012c
loc_8c110572:
	#data 0x0801
loc_8c110574:
	#data 0x00Cc
loc_8C110576:
	#data 0x0084
	#align4

loc_8C110578:
	#data bank16.loc_8c166918
loc_8C11057C:
	#data bank04.loc_8c0450C0
loc_8C110580:
	#data bank04.loc_8c044F12
loc_8C110584:
	#data loc_8c110524
loc_8C110588:
	#data bank12.loc_8c1294C8
loc_8C11058C:
	#data bank16.loc_8c166A70
loc_8C110590:
	#data 0x8C26A904
loc_8C110594:
	#data bank16.loc_8c166A7c

;==============================================
loc_8C110598:
	sts.l pr,@-r15
	mov.l @(loc_8C1106E4,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C1105D0
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C1106EC,pc),r1 ; r1 set to 0x8C26A904
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8C1106E8,pc),r3 ; r3 set to 0x8C1105D6
	mov.w @(loc_8C1106DE,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(loc_8C1106E0,pc),r0 ; r0 set to 0x84
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.w @(loc_8C1106E2,pc),r2 ; r2 set to 0x80f
	mov.l @(0x20,r3),r3
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov r5,r0 ; r0 set to 0x01
	nop
	mov.w r0,@(0x1E,r4)
	bra loc_8C1106F8
	lds.l @r15+,pr

loc_8C1105D0:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C1105D6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C1105F0
	cmp/eq 0x01,r0
	bt loc_8C1106D4
	bra loc_8C1106D4
	nop

loc_8c1105f0:
	mov.w @(0x1C,r14),r0
	mov 0x1C,r4
	mov.l @(loc_8c1106f0,pc),r13
	mov r15,r5
	mov r0,r3
	mov.w @(0x1E,r14),r0
	lds r3,fpul
	mov r15,r6
	muls.w r4,r0
	mov 0x1C,r0
	mov.l @(loc_8c1106f4,pc),r3
	float fpul,fr3
	add 0x04,r5
	add 0x08,r6
	sts macl,r4
	add r13,r4
	fmov fr3,fr4
	fmov.s @(r0,r4),fr1
	fmov.s @r4,fr2
	fsub fr2,fr1
	fdiv fr1,fr4
	jsr @r3
	mov r15,r4
	mov.w @(0x1E,r14),r0
	mov 0x1C,r3
	mov r0,r7
	add 0xFF,r7
	mul.l r3,r7
	mov r0,r6
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	sts macl,r7
	mul.l r3,r6
	add r13,r7
	sts macl,r4
	add r13,r4
	fmov.s @(r0,r4),fr3
	mov 0x04,r0
	fmov.s @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	mov r4,r5
	add 0x1C,r5
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmov.s @(r0,r5),fr2
	mov 0x34,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	mov 0x08,r0
	fmov.s @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r5),fr2
	mov 0x38,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x0C,r0
	fmov.s @(r0,r4),fr3
	mov 0x0C,r0
	fmov.s @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x0C,r0
	fmov.s @(r0,r5),fr2
	mov 0x3C,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r2
	mov.w @(0x1E,r14),r0
	lds r2,fpul
	muls.w r3,r0
	float fpul,fr3
	sts macl,r4
	add r13,r4
	fmov.s @r4,fr2
	mov r3,r0
	nop
	fmov.s @(r0,r4),fr1
	fsub fr2,fr1
	fcmp/gt fr3,fr1
	bt loc_8c1106d4
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x04,r2
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	cmp/hs r2,r0
	bf loc_8c1106d4
	mov 0x01,r0
	mov.w r0,@(0x1E,r14)

loc_8C1106D4:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1106DE:
	#data 0x012c
loc_8C1106E0:
	#data 0x0084
loc_8C1106E2:
	#data 0x080f
	#align4

loc_8C1106E4:
	#data bank04.loc_8c044F12
loc_8C1106E8:
	#data loc_8c1105D6
loc_8C1106EC:
	#data 0x8C26A904
loc_8C1106F0:
	#data bank16.loc_8c166A88
loc_8C1106F4:
	#data bank10.loc_8c109458

;==============================================
loc_8C1106F8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C1107DC,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r4,@r15
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C11074a
	mov r0,r14
	mov.w @(loc_8C1107D2,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C1107E4,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C1107E0,pc),r2 ; r2 set to 0x8C110752
	mov.b r3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(r0,r2),r3
	add 0x0C,r0 ; r0 set to 0x84
	mov.w @(loc_8C1107D4,pc),r2 ; r2 set to 0x800
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov.l @r15,r3
	mov.w @(loc_8C1107D8,pc),r0 ; r0 set to 0xC8
	mov.l r3,@(0x14,r14)
	mov.w @(loc_8C1107D6,pc),r3 ; r3 set to 0x88
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	add r2,r3 ; r3 ??? bc r2 is ???
	mov.l r3,@(r0,r14)
	add 0xBC,r0 ; r0 set to 0x84
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C1107E8,pc),r3 ; r3 set to 0x8C108210
	jmp @r3
	mov.l @r15+,r14

loc_8C11074A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C110752:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c1107c2
	mov.w @(0x1C,r14),r0
	mov 0x64,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c11077c
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C11077C:
	mov.l @(0x64,PC),r3
	mov.w @(0x58,PC),r0
	mov.l @r3,r4
	mov.l @(0x68,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	mov 0x7C,r0
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(0x68,PC),r13
	mova @(0x68,PC),r0
	mov.l @(0x60,PC),r12
	mov.l @(0x58,PC),r11
	bra loc_8c1107ba
	fmov @r0,fr15

loc_8C11079A:
	mov r15,r4
	mov r15,r5
	jsr @r13
	add 0x04,r4
	mov.w @(0x1c,r14),r0
	mov r15,r4
	fmov @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0, fr3,fr2
	fmov fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8C1107BA:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c11079a
 
loc_8C1107C2:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C1107D2:
	#data 0x012c
loc_8C1107D4:
	#data 0x0800
loc_8C1107D6:
	#data 0x0088
loc_8C1107D8:
	#data 0x00C8
loc_8C1107Da:
	#data 0x0084
	#align4

loc_8C1107DC:
	#data bank04.loc_8c044F12
loc_8C1107E0:
	#data loc_8c110752
loc_8C1107E4:
	#data 0x8C26A904
loc_8C1107E8:
	#data bank10.loc_8c108210
loc_8C1107EC:
	#data bank10.loc_8c108060
loc_8C1107F0:
	#data bank10.loc_8c1081E6
loc_8C1107F4:
	#data bank10.loc_8c108086
loc_8C1107F8:
	#data bank10.loc_8c108192
loc_8C1107Fc:
	#data 0x3C23D70a

;==============================================
loc_8C110800:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.l @(loc_8C1108D0,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C11083e
	mov r0,r14
	mov.w @(loc_8C1108C4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C1108D8,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C1108D4,pc),r2 ; r2 set to 0x8C110844
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov.w @(loc_8C1108C6,pc),r0 ; r0 set to 0x88
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(r0,r2),r3
	add 0xFC,r0 ; r0 set to 0x84
	mov.w @(loc_8C1108C8,pc),r2 ; r2 set to 0x800
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	add 0xB8,r0 ; r0 set to 0x84
	lds.l @r15+,pr
	mov.l @(loc_8C1108DC,pc),r3 ; r3 set to 0x8C108210
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C11083E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C110844:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c1108b4
	mov.w @(0x1C,r14),r0
	mov.w @(0x68,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c11086e
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C11086E:
	mov.l @(0x68,PC),r3
	mov.w @(0x58,PC),r0
	mov.l @r3,r4
	mov.l @(0x68,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	add 0x08,r0
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(0x68,PC),r13
	mova @(0x6C,PC),r0
	mov.l @(0x60,PC),r12
	mov.l @(0x5C,PC),r11
	bra loc_8c1108ac
	fmov @r0,fr15

loc_8C11088C:
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
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8C1108AC:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c11088c

loc_8C1108B4:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1108C4:
	#data 0x012c
loc_8C1108C6:
	#data 0x0088
loc_8C1108C8:
	#data 0x0800
loc_8C1108Ca:
	#data 0x03E8
loc_8C1108Cc:
	#data 0x0084
	#align4

loc_8C1108D0:
	#data bank04.loc_8c044F12
loc_8C1108D4:
	#data loc_8c110844
loc_8C1108D8:
	#data 0x8C26A904
loc_8C1108DC:
	#data bank10.loc_8c108210
loc_8C1108E0:
	#data bank10.loc_8c108060
loc_8C1108E4:
	#data bank10.loc_8c1081E6
loc_8C1108E8:
	#data bank10.loc_8c108086
loc_8C1108EC:
	#data bank10.loc_8c108192
loc_8C1108f0:
	#data 0x3A83126f

;==============================================
loc_8C1108F4:
	sts.l pr,@-r15
	mov.l @(0x148,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c11092a
	mov r0,r4
	mov.l @(0x140,PC),r1
	mov 0x01,r5
	mov.l @(0x138,PC),r3
	mov.w @(0x128,PC),r0
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(0x122,PC),r0
	mov.l @r2,r3
	mov.w @(0x120,PC),r2
	mov.l @(r0,r3),r3
	add 0xF4,r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov r5,r0
	nop 
	mov.w r0,@(0x1E,r4)

loc_8C11092A:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C110930:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C11094a
	cmp/eq 0x01,r0
	bt loc_8C110A2e
	bra loc_8C110A2e
	nop

loc_8c11094a:
	mov.w @(0x1C,r14),r0
	mov 0x1C,r4
	mov.l @(loc_8c110a4c,pc),r13
	mov r15,r5
	mov r0,r3
	mov.w @(0x1E,r14),r0
	lds r3,fpul
	mov r15,r6
	muls.w r4,r0
	mov 0x1C,r0
	mov.l @(loc_8c110a50,pc),r3
	float fpul,fr3
	add 0x04,r5
	add 0x08,r6
	sts macl,r4
	add r13,r4
	fmov fr3,fr4
	fmov.s @(r0,r4),fr1
	fmov.s @r4,fr2
	fsub fr2,fr1
	fdiv fr1,fr4
	jsr @r3
	mov r15,r4
	mov.w @(0x1E,r14),r0
	mov 0x1C,r3
	mov r0,r7
	add 0xFF,r7
	mul.l r3,r7
	mov r0,r6
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	sts macl,r7
	mul.l r3,r6
	add r13,r7
	sts macl,r4
	add r13,r4
	fmov.s @(r0,r4),fr3
	mov 0x04,r0
	fmov.s @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	mov r4,r5
	add 0x1C,r5
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmov.s @(r0,r5),fr2
	mov 0x34,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	mov 0x08,r0
	fmov.s @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r5),fr2
	mov 0x38,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x0C,r0
	fmov.s @(r0,r4),fr3
	mov 0x0C,r0
	fmov.s @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x0C,r0
	fmov.s @(r0,r5),fr2
	mov 0x3C,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r2
	mov.w @(0x1E,r14),r0
	lds r2,fpul
	muls.w r3,r0
	float fpul,fr3
	sts macl,r4
	add r13,r4
	fmov.s @r4,fr2
	mov r3,r0
	nop
	fmov.s @(r0,r4),fr1
	fsub fr2,fr1
	fcmp/gt fr3,fr1
	bt loc_8c110a2e
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x03,r2
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	cmp/hs r2,r0
	bf loc_8c110a2e
	mov 0x01,r0
	mov.w r0,@(0x1E,r14)

loc_8C110A2E:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c110a38:
	#data 0x012c
loc_8c110a3a:
	#data 0x0090
loc_8c110a3c:
	#data 0x080f
	#align4

loc_8C110A40:
	#data bank04.loc_8c044F12
loc_8C110A44:
	#data loc_8c110930
loc_8C110A48:
	#data 0x8C26A904
loc_8C110A4C:
	#data bank16.loc_8c166AF8
loc_8C110A50:
	#data bank10.loc_8c109458

;==============================================
loc_8C110A54:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.l @(loc_8C110B20,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C110A90
	mov r0,r14
	mov.w @(loc_8C110B16,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C110B28,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C110B24,pc),r2 ; r2 set to 0x8C110A96
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov.w @(loc_8C110B18,pc),r0 ; r0 set to 0x84
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x04,r2),r3
	mov.w @(loc_8C110B1A,pc),r2 ; r2 set to 0x801
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	add 0xB8,r0 ; r0 set to 0x84
	lds.l @r15+,pr
	mov.l @(loc_8C110B2C,pc),r3 ; r3 set to 0x8C108210
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C110A90:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C110A96:
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
	mov r4,r14
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C110ABe
	bra loc_8C110BBe
	nop

loc_8c110abe:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C110B1C,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf/s loc_8c110ad4
	mov 0x00,r4
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c110ad4:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8C110B1E,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf/s loc_8c110aea
	mov r4,r13
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c110aea:
	mov.l @(loc_8c110b28,pc),r3
	mov.w @(loc_8c110b18,pc),r0
	mov.l @r3,r4
	mov.l @(loc_8c110b30,pc),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x08,r2),r4
	mova @(loc_8C110B44,pc),r0
	mov.l @(loc_8C110B54,pc),r12
	fmov.s @r0,fr12
	mova @(loc_8C110B48,pc),r0
	fmov.s @r0,fr13
	mova @(loc_8C110B4C,pc),r0
	fmov.s @r0,fr14
	mova @(loc_8C110B50,pc),r0
	mov.l @(loc_8c110b40,pc),r11
	mov.l @(loc_8c110b38,pc),r9
	mov.l @(loc_8c110b34,pc),r8
	mov.l @(loc_8c110b3c,pc),r10
	bra loc_8c110bb6
	fmov.s @r0,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c110b16:
	#data 0x012C
loc_8c110b18:
	#data 0x0084
loc_8c110b1a:
	#data 0x0801
loc_8C110B1C:
	#data 0x0168
loc_8C110B1E:
	#data 0x07D0
	#align4

loc_8c110b20:
	#data bank04.loc_8C044F12
loc_8c110b24:
	#data loc_8C110A96
loc_8c110b28:
	#data 0x8C26A904

loc_8c110b2c:
	#data bank10.loc_8C108210
loc_8c110b30:
	#data bank10.loc_8c108060
loc_8c110b34:
	#data bank10.loc_8c108086
loc_8c110b38:
	#data bank10.loc_8c1081e6
loc_8c110b3c:
	#data bank10.loc_8c108192
loc_8c110b40:
	#data bank10.loc_8c108168
loc_8C110B44:
	#data 0x47800000
loc_8C110B48:
	#data 0x43B40000
loc_8C110B4C:
	#data 0x3F000000
loc_8C110B50:
	#data 0x41200000
loc_8C110B54:
	#data 0x0000FFFF

;==============================================
loc_8c110b58:
	mov r15,r4
	jsr @r11
	add 0x08,r4
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c110bdc,pc),r3
	mov r0,r4
	add r13,r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmul fr12,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r3
	and r12,r4
	mova @(loc_8C110BE0,pc),r0
	fmov fr0,fr3
	fmov.s @r0,fr2
	mov 0x0C,r0
	fmov fr15,fr0
	mov r15,r4
	fmac fr0,fr3,fr2
	mov.l @(loc_8c110be4,pc),r3
	fmov.s fr2,@(r0,r15)
	jsr @r3
	add 0x08,r4
	mov r15,r4
	mov r15,r5
	add 0x1E,r13
	jsr @r10
	add 0x04,r4
	mov.w @(0x1E,r14),r0
	mov r15,r4
	fmov.s @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C110BE8,pc),r0
	fmov.s @r0,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@r15
	jsr @r9
	add 0x04,r4

loc_8c110bb6:
	jsr @r8
	nop
	tst r0,r0
	bt loc_8c110b58

loc_8C110BBE:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C110BDC:
	#data loc_8c11E860
loc_8c110be0:
	#data 0xC2566666
loc_8C110BE4:
	#data bank10.loc_8c1081B4
loc_8c110be8:
	#data 0x3A03126f

;==============================================
loc_8C110BEC:
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c110c1a
	mov r0,r4
	mov.w @(0xEE,PC),r0
	mov 0x01,r3
	mov.l @(0x100,PC),r1
	mov.l @(0xF8,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0xE2,PC),r0
	mov.l @r3,r2
	mov.l @(0xC,r2),r3
	mov.w @(0xDE,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)

loc_8C110C1A:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C110C20:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C110C3a
	cmp/eq 0x01,r0
	bt loc_8C110D24
	bra loc_8C110D5c
	nop

loc_8C110C3A:
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C110D04,pc),r3 ; r3 set to 0x8C26A904
	add 0x01,r0
	mov.l @(loc_8C110D08,pc),r13 ; r13 set to 0x8C11E730
	mov.b r0,@(0x04,r14)
	mov.l @r3,r0
	jsr @r13
	mov.l @r0,r8
	cmp/pz r0
	bf loc_8C110C52
	bra loc_8C110C5c
	and 0x01,r0

loc_8C110C52:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C110C5C:
	add 0x03,r0
	mov r14,r1
	shll2 r0
	mov.l @(loc_8C110D0C,pc),r2 ; r2 set to bank16.loc_8c166B70, r2 set to bank16.loc_8c166B70
	mov.l @(r0,r8),r3
	add 0x34,r1
	mov.w @(loc_8C110CF2,pc),r0 ; r0 set to 0x84, r0 set to 0x84
	mov.l r3,@(r0,r14)
	mov.l @(loc_8C110D10,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
	jsr @r13
	add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???
	mov r0,r1 ; r1 set to 0x0C, r1 set to 0x0c
	mov.l @(loc_8C110D14,pc),r2 ; r2 set to 0x8C1292D4, r2 set to 0x8C1292D4
	mov.w @(loc_8C110CF6,pc),r0 ; r0 set to 0x7D0, r0 set to 0x7D0
	jsr @r2
	nop
	mov.w @(loc_8C110CF8,pc),r3 ; r3 set to 0xFC18, r3 set to 0xFC18
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???, r2 ??? bc r8 is ???
	add r3,r0 ; r0 set to 0x103E8, r0 set to 0x103E8
	lds r0,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r8
	mov 0x38,r8 ; r8 set to 0x38, r8 set to 0x38
	jsr @r13
	add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???
	mov r0,r1 ; r1 set to 0x103E8, r1 set to 0x103E8
	mov.l @(loc_8C110D14,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	mov.w @(loc_8C110CFA,pc),r0 ; r0 set to 0xC8, r0 set to 0xC8
	jsr @r3
	nop
	lds r0,fpul
	fmov.s @r8,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r8
	mov 0x3C,r8 ; r8 set to 0x3C, r8 set to 0x3c
	jsr @r13
	add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???
	mov r0,r1 ; r1 set to 0xC8, r1 set to 0xC8
	mov.l @(loc_8C110D14,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	mov.w @(loc_8C110CF6,pc),r0 ; r0 set to 0x7D0, r0 set to 0x7D0
	jsr @r3
	nop
	mov.w @(loc_8C110CF8,pc),r2 ; r2 set to 0xFC18, r2 set to 0xFC18
	mov r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???, r2 ??? bc r8 is ???
	add 0x5C,r1
	add r2,r0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
	mov.l @(loc_8C110D18,pc),r2 ; r2 set to bank16.loc_8c166B4C, r2 set to bank16.loc_8c166B4c
	lds r0,fpul
	mov.l @(loc_8C110D10,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	float fpul,fr3
	fadd fr3,fr2 ; r2 ??, r2 ??
	fmov.s fr2,@r8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov.l @(loc_8C110D1C,pc),r2 ; r2 set to bank16.loc_8c166B58, r2 set to bank16.loc_8c166B58
	mov r14,r1
	mov.l @(loc_8C110D10,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	add 0x68,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov.l @(loc_8C110D20,pc),r2 ; r2 set to bank16.loc_8c166B64, r2 set to bank16.loc_8c166B64
	mov r14,r1
	mov.l @(loc_8C110D10,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	bra loc_8C110D5c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C110CF0:
	#data 0x012c
loc_8C110CF2:
	#data 0x0084
loc_8C110CF4:
	#data 0x0801
loc_8C110CF6:
	#data 0x07D0
loc_8C110CF8:
	#data 0xFC18
loc_8C110CFA:
	#data 0x00C8
	#align4

loc_8C110CFC:
	#data bank04.loc_8c044F12
loc_8C110D00:
	#data loc_8c110C20
loc_8C110D04:
	#data 0x8C26A904
loc_8C110D08:
	#data loc_8c11e730
loc_8C110D0C:
	#data bank16.loc_8c166B70
loc_8C110D10:
	#data bank12.loc_8c1294C8
loc_8C110D14:
	#data bank12.loc_8c1292D4
loc_8C110D18:
	#data bank16.loc_8c166B4c
loc_8C110D1C:
	#data bank16.loc_8c166B58
loc_8C110D20:
	#data bank16.loc_8c166B64

;==============================================
loc_8c110d24:
	mova @(loc_8C110D68,pc),r0
	fmov.s @r0,fr4
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bt loc_8c110d40
	mov 0x00,r0
	mov.l @(loc_8c110d6c,pc),r3
	mov.b r0,@(0x04,r14)
	mov 0x38,r0
	mov r14,r4
	fmov.s fr4,@(r0,r14)
	jsr @r3
	add 0x34,r4

loc_8c110d40:
	mov.l @(loc_8C110D70,pc),r1
	mov 0x54,r0
	fmov.s @(r0,r14),fr2
	mov r14,r4
	lds r1,fpul
	mov.l @(loc_8c110d74,pc),r3
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C110D5C:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c110d68:
	#data 0xC27E6666
loc_8C110D6C:
	#data loc_8c110D78
loc_8c110d70:
	#data 0x3D4CCCCd
loc_8C110D74:
	#data bank10.loc_8c1087Ce

;==============================================
loc_8C110D78:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x98,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c110dc2
	mov r0,r4
	mov.w @(0x80,PC),r0
	mov 0x01,r3
	mov.l @(0x8C,PC),r1
	mov.l @(0x84,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x72,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x14,r2),r3
	mov.w @(0x6C,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x74,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x70,PC),r2
	mov r4,r1
	mov.l @(0x68,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8C110DC2:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop

;==============================================
loc_8C110DCA:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C110DDa
	cmp/eq 0x01,r0
	bt loc_8C110DE6
	bra loc_8C110E0e
	nop

loc_8C110DDA:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x78,r0 ; r0 set to 0x78
	bra loc_8C110E0e
	mov.w r0,@(0x1E,r4)

loc_8C110DE6:
	mova @(loc_8C110E2C,pc),r0  ; r0 init to 0x8C110E2c
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x59
	exts.w r0,r3
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	cmp/ge r0,r3
	bf loc_8C110E0e
	mov.l @(loc_8C110E30,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C110E0E:
	rts
	nop

;==============================================
loc_8c110e12:
	#data 0x012c
loc_8c110e14:
	#data 0x0084
loc_8c110e16:
	#data 0x0811
	#align4

loc_8C110E18:
	#data bank04.loc_8c044F12
loc_8C110E1C:
	#data loc_8c110DCa
loc_8C110E20:
	#data 0x8C26A904
loc_8C110E24:
	#data bank12.loc_8c1294C8
loc_8C110E28:
	#data bank13.loc_8c13ebF0
loc_8C110E2C:
	#data 0x3DCCCCCd
loc_8C110E30:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C110E34:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x04,r13 ; r13 set to 0x04
	sts.l pr,@-r15

loc_8C110E3E:
	bsr loc_8C110E50
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C110E3e
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8C110E50:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8C110F24,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C110EC2
	mov r0,r14
	mov.w @(loc_8C110F16,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C110F28,pc),r2 ; r2 set to 0x8C110ECa
	mov.l @(loc_8C110F2C,pc),r1 ; r1 set to 0x8C26A904
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov r13,r2 ; r2 ??? bc r13 is ???
	mov.l @r1,r3 ; r3 ??
	shll r2
	shll2 r2
	mov.w @(loc_8C110F18,pc),r0 ; r0 set to 0x84
	mov.l @r3,r3
	mov.w @(loc_8C110F1C,pc),r1 ; r1 set to 0x168
	add r3,r2
	fldi0 fr4
	mov.l @(0x24,r2),r3
	mov.w @(loc_8C110F1A,pc),r2 ; r2 set to 0xC01
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mul.l r1,r13
	mov.b r13,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	sts macl,r1
	mov.l @(loc_8C110F30,pc),r3 ; r3 set to 0x8C129128
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov 0x06,r0 ; r0 set to 0x06
	mov.w @(loc_8C110F1E,pc),r2 ; r2 set to 0xB4
	sub r0,r2 ; r2 set to 0xAe
	mov r2,r0 ; r0 set to 0xAe
	nop
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.w @(loc_8C110F18,pc),r0 ; r0 set to 0x84
	mov.l @(loc_8C110F34,pc),r3 ; r3 set to 0x8C108210
	mov.l @r15+,r13
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C110EC2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C110ECA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov.w @(0x40,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c110eec
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C110EEC:
	mov.w @(0x28,PC),r0
	mov.l @(0x3C,PC),r3
	mov.l @(r0,r14),r5
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	shll r2
	mov.l @r4,r4
	add 0x09,r2
	shll2 r2
	add r2,r4
	mov.l @(0x30,PC),r2
	jsr @r2
	mov.l @(0x4,r4),r4
	mov.l @(0x38,PC),r13
	mova @(0x38,PC),r0
	mov.l @(0x30,PC),r12
	mov.l @(0x28,PC),r11
	bra loc_8c110f6c
	fmov @r0,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C110F16:
	#data 0x012c
loc_8C110F18:
	#data 0x0084
loc_8C110F1A:
	#data 0x0C01
loc_8C110F1C:
	#data 0x0168
loc_8C110F1E:
	#data 0x00B4
loc_8C110F20:
	#data 0x03E8
	#align4

loc_8C110F24:
	#data bank04.loc_8c044F12
loc_8C110F28:
	#data loc_8c110ECa
loc_8C110F2C:
	#data 0x8C26A904
loc_8C110F30:
	#data bank12.loc_8c129128
loc_8C110F34:
	#data bank10.loc_8c108210
loc_8C110F38:
	#data bank10.loc_8c108060
loc_8C110F3C:
	#data bank10.loc_8c108086
loc_8C110F40:
	#data bank10.loc_8c1081E6
loc_8C110F44:
	#data bank10.loc_8c108192
loc_8C110F48:
	#data 0x3A83126f

;==============================================
loc_8C110F4C:
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
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r15
	jsr @r12
	add 0x04,r4

loc_8C110F6C:
	jsr @r11
	nop 
	tst r0,r0
	bt loc_8c110f4c
	mova @(0x5C,PC),r0
	mov.l @(0x78,PC),r2
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x54,PC),r0
	mov.l @(0x68,PC),r3
	fmov @r0,fr2
	mova @(0x54,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x50,PC),r0
	fmov @r0,fr0
	mova @(0x50,PC),r0
	fmul fr2,fr3
	fmov @r0,fr2
	mova @(0x50,PC),r0
	fdiv fr1,fr3
	fmov @r0,fr1
	fmul fr0,fr3
	fdiv fr2,fr3
	fadd fr1,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmov fr0,fr3
	mov 0x78,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x78,r0
	fmov @(r0,r14),fr3
	add 0x08,r0
	fmov fr3,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c110fd4:
	#data 0x3E800000
loc_8c110fd8:
	#data 0x45610000
loc_8c110fdc:
	#data 0x447A0000
loc_8c110fe0:
	#data 0x47800000
loc_8c110fe4:
	#data 0x43B40000
loc_8c110fe8:
	#data 0x3F000000
loc_8c110fec:
	#data 0x0000FFFf
loc_8C110FF0:
	#data loc_8c11E860

;==============================================
loc_8C110FF4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C111014
	cmp/eq 0x01,r0
	bt loc_8C111024
	bra loc_8C1110B6
	nop

loc_8C111014:
	mov.l @(loc_8C111104,pc),r3 ; r3 set to 0x8C046AE0
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt loc_8C1110B6
	mov.b @(0x04,r14),r0
	bra loc_8C1110B0
	add 0x01,r0

loc_8c111024:
	mova @(loc_8C111110,pc),r0
	mov.l @(loc_8C111108,pc),r12
	fmov.s @r0,fr13
	mova @(loc_8C111114,pc),r0
	fmov.s @r0,fr14
	mova @(loc_8C111118,pc),r0
	fmov.s @r0,fr15
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c11110c,pc),r13
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r13
	and r12,r4
	fmov fr0,fr3
	mov 0x78,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r13
	and r12,r4
	fmov fr0,fr3
	mov 0x7C,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r13
	and r12,r4
	fmov fr0,fr3
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.w @(loc_8C1110FC,pc),r0
	mov.w @(loc_8C1110FE,pc),r3
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x02,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c1110b6
	mov 0x00,r0

loc_8c1110b0:
	mov.b r0,@(0x04,r14)
	mov 0xA6,r0
	mov.w r0,@(0x1C,r14)

loc_8C1110B6:
	lds.l @r15+,pr
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1110C6:
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1110f6
	mov r0,r4
	mov.w @(0x24,PC),r0
	mov 0x01,r3
	mov.l @(0x44,PC),r1
	mov.l @(0x40,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x44,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x40,r0
	mov.w @(0x10,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)

loc_8C1110F6:
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1110fc:
	#data 0x0080
loc_8c1110fe:
	#data 0x010E
loc_8c111100:
	#data 0x012c
loc_8c111102:
	#data 0x0C01
	#align4

loc_8C111104:
	#data bank04.loc_8c046AE0
loc_8c111108:
	#data 0x0000FFFf
loc_8C11110C:
	#data loc_8c11E860
loc_8c111110:
	#data 0x47800000
loc_8c111114:
	#data 0x43B40000
loc_8c111118:
	#data 0x3F000000
loc_8C11111C:
	#data bank04.loc_8c044F12
loc_8C111120:
	#data loc_8c110FF4
loc_8C111124:
	#data 0x8C26A904

;==============================================
loc_8C111128:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r4
	mov.l @(0x14C,PC),r0
	extu.b r4,r4
	mov.l @(0x150,PC),r2
	shll2 r4
	mov.l @(r0,r4),r3
	mov.l @(0x144,PC),r0
	mov.l r3,@(0xC,r15)
	mov.l @(r0,r4),r13
	mov.l @(0x148,PC),r0
	mov.l @r2,r3
	mov.l @r0,r1
	mov.w @(0x12C,PC),r0
	mov.l @(0x144,PC),r2
	mov.b @(r0,r1),r1
	jsr @r2
	mov 0x12,r0
	mov.l @(0x140,PC),r1
	shll2 r0
	mov.l @r3,r3
	mov r15,r6
	mov.l @(r0,r1),r1
	mov r15,r5
	mov.w @(0x118,PC),r0
	add 0x08,r6
	shll2 r1
	mov r15,r4
	add r3,r1
	add 0x48,r1
	mov.l @r1,r2
	add 0x04,r5
	mov.l r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x120,PC),r0
	mov.l @(0x120,PC),r3
	fmov @r0,fr2
	float fpul,fr3
	fmov fr3,fr4
	jsr @r3
	fdiv fr2,fr4
	mov.w @(0x1E,r14),r0
	mov r0,r7
	add 0xFF,r7
	mov r7,r3
	shll r7
	mov r0,r4
	add r3,r7
	mov r0,r3
	shll r4
	add r3,r4
	mov r0,r6
	shll2 r4
	add r13,r4
	mov 0x04,r0
	fmov @r4,fr3
	fmov @(r0,r15),fr0
	shll2 r7
	add r13,r7
	mov r4,r5
	fmul fr0,fr3
	fmov @r7,fr2
	fmov @r15,fr0
	mov 0x08,r0
	add 0x0C,r5
	fmac fr0,fr2,fr3
	fmov @r5,fr2
	fmov @(r0,r15),fr0
	mov 0x34,r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr0
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov @r15,fr0
	fmac fr0,fr2,fr3
	fmov @(r0,r15),fr0
	mov 0x04,r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr0
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov @r15,fr0
	fmac fr0,fr2,fr3
	fmov @(r0,r15),fr0
	mov 0x08,r0
	fmov @(r0,r5),fr2
	mov 0x3C,r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov 0x32,r3
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c11122a
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	mov.l @(0xC,r15),r2
	add 0x01,r0
	cmp/ge r2,r0
	bf loc_8c11122a
	mov 0x01,r0
	mov.w r0,@(0x1E,r14)

loc_8C11122A:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c111234:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1112a4,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c111274
	mov r0,r4
	mov.l @(loc_8C11128C,pc),r1
	mov 0x01,r5
	mov.l @(loc_8c1112a8,pc),r3
	mov.w @(loc_8C111280,pc),r0
	mov.b r5,@(r0,r4)
	mov 0x48,r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.l @r2,r3
	mov.w @(loc_8C111282,pc),r2
	mov.l @(r0,r3),r3
	add 0x3C,r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r4)

loc_8c111274:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11127c:
	#data 0x0080
loc_8C11127e:
	#data 0x0084
loc_8C111280:
	#data 0x012C
loc_8C111282:
	#data 0x0801
	#align4

loc_8c111284:
	#data bank16.loc_8c167188
loc_8c111288:
	#data bank16.loc_8c167158
loc_8C11128C:
	#data 0x8C26A904
loc_8C111290:
	#data 0x8C26823C
loc_8c111294:
	#data bank12.loc_8C12939C
loc_8c111298:
	#data bank16.loc_8c166B94
loc_8c11129C:
	#data 0x42480000
loc_8c1112a0:
	#data bank10.loc_8C109458
loc_8c1112a4:
	#data bank04.loc_8c044f12
loc_8c1112a8:
	#data loc_8c111128

;==============================================
loc_8C1112AC:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x02,r13 ; r13 set to 0x02
	sts.l pr,@-r15

loc_8C1112B6:
	bsr loc_8C111234
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C1112B6
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1112C8:
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1112ea
	mov r0,r4
	mov.w @(0x6C,PC),r0
	mov 0x01,r3
	mov.l @(0x74,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x64,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)

loc_8C1112EA:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C1112F0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x60,PC),r2
	mov.l @(0x64,PC),r1
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov.l @r2,r3
	shll2 r0
	mov.l @(r0,r1),r1
	mov.l @r3,r3
	shll2 r1
	add r3,r1
	mov.w @(0x42,PC),r3
	add 0x54,r1
	mov.l @r1,r0
	add r14,r3
	mov.l r0,@r3
	mov 0x08,r3
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/hs r3,r0
	bf loc_8c111344
	mov.l @(0x3C,PC),r1
	jsr @r1
	nop 
	mov 0x07,r2
	mov r14,r1
	and r0,r2
	mov.l @(0x34,PC),r0
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x30,PC),r3
	shll2 r2
	add 0x34,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C111344:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11134a:
	#data 0x012C
loc_8c11134c:
	#data 0x0801
loc_8c11134e:
	#data 0x0084
	#align4

loc_8C111350:
	#data bank04.loc_8c044F12
loc_8C111354:
	#data loc_8c1112F0
loc_8C111358:
	#data 0x8C26A904
loc_8C11135C:
	#data bank16.loc_8c16732c
loc_8C111360:
	#data loc_8c11e730
loc_8C111364:
	#data bank16.loc_8c16734c
loc_8C111368:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C11136C:
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c1113ea
	mov.w @(0x1C,r4),r0
	mov.w @(0xD8,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8c111386
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C111386:
	mova @(0xD8,PC),r0
	mov.l @(0xD0,PC),r5
	fmov @r0,fr6
	mova @(0xD4,PC),r0
	fmov @r0,fr5
	mova @(0xD4,PC),r0
	fmov @r0,fr4
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1113a6
	cmp/eq 0x01,r0
	bt loc_8c1113ca
	bra loc_8c1113ea
	nop 

loc_8C1113A6:
	mov.w @(0x1C,r4),r0
	mov r4,r3
	fldi1 fr2
	fadd fr2,fr2
	mov r0,r2
	lds r2,fpul
	add 0x40,r3
	float fpul,fr3
	fdiv fr2,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	bra loc_8c1113ea
	nop 

loc_8C1113CA:
	mov.w @(0x1C,r4),r0
	mov r4,r1
	add 0x40,r1
	mov r0,r3
	lds r3,fpul
	mova @(0x94,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fdiv fr2,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@r1

loc_8C1113EA:
	rts
	nop

;==============================================
loc_8C1113EE:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(0x78,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c11144c
	mov r0,r4
	mov.w @(0x4C,PC),r0
	mov 0x01,r3
	mov.l @(0x6C,PC),r1
	mov r14,r5
	mov.b r3,@(r0,r4)
	shll2 r5
	mov.l @(0x60,PC),r2
	mov.w @(0x40,PC),r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r3
	add r5,r3
	mov.l @(0x4,r3),r2
	mov.w @(0x32,PC),r3
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov r14,r2
	mov.l r3,@(r0,r4)
	shll r2
	mov r14,r3
	add r3,r2
	mov.l @(0x48,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x44,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x44,PC),r0
	mov 0x44,r2
	add r4,r2
	mov.l @(r0,r5),r3
	mov 0x20,r0
	mov.l r3,@r2
	mov.b r14,@(r0,r4)

loc_8C11144C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c111452:
	#data 0x05A0
loc_8c111454:
	#data 0x012c
loc_8c111456:
	#data 0x0084
loc_8c111458:
	#data 0x0807
	#align4

loc_8C11145c:
	#data 0x0000FFFf
loc_8C111460:
	#data 0x47800000
loc_8C111464:
	#data 0x43B40000
loc_8C111468:
	#data 0x3F000000
loc_8C11146c:
	#data 0x40800000
loc_8C111470:
	#data bank04.loc_8c044F12
loc_8C111474:
	#data loc_8c11136c
loc_8C111478:
	#data 0x8C26A904
loc_8C11147C:
	#data bank16.loc_8c1673Ac
loc_8C111480:
	#data bank12.loc_8c1294C8
loc_8C111484:
	#data bank16.loc_8c1673C4

;==============================================
loc_8C111488:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c1114ee
	mov.w @(0x1C,r14),r0
	mov.w @(0xC2,PC),r3
	add 0x02,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c1114ae
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)


loc_8C1114AE:
	mova @(0xBC,PC),r0
	mov r14,r3
	fmov @r0,fr14
	mova @(0xB8,PC),r0
	fmov @r0,fr15
	add 0x40,r3
	mov.w @(0x1C,r14),r0
	mov r3,r8
	mov.l @(0xBC,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(0xAC,PC),r0
	mov.l @(0xB0,PC),r3
	fmov @r0,fr2
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0xA4,PC),r0
	mov.l @(0x98,PC),r2
	fmov @r0,fr3
	fmul fr3,fr0
	fdiv fr14,fr0
	fadd fr15,fr0
	ftrc fr0,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@r8

loc_8C1114EE:
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C1114FA:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c11155e
	mov r0,r4
	mov.w @(0x52,PC),r0
	mov 0x01,r3
	mov.l @(0x74,PC),r1
	mov.l @(0x70,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x44,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0xC,r2),r3
	mov.w @(0x3E,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov r14,r2
	shll r2
	mov r14,r3
	add r3,r2
	mov.l @(0x54,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x50,PC),r0
	mov r14,r1
	shll2 r1
	mov.l @(r0,r1),r3
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	add 0x70,r0
	muls.w r0,r14
	sts macl,r0
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr
	bra loc_8c11160e
	mov.l @r15+,r14

loc_8C11155E:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c111564:
	#data 0x0168
loc_8c111566:
	#data 0x012C
loc_8c111568:
	#data 0x0084
loc_8c11156a:
	#data 0x0807
	#align4

loc_8c11156c:
	#data 0x43B40000
loc_8C111570:
	#data 0x3F000000
loc_8C111574:
	#data 0x47800000
loc_8C111578:
	#data 0x0000FFFf
loc_8C11157C:
	#data loc_8c11E860
loc_8C111580:
	#data 0x4A340000
loc_8C111584:
	#data bank04.loc_8c044F12
loc_8C111588:
	#data loc_8c111488
loc_8C11158c:
	#data 0x8C26A904
loc_8C111590:
	#data bank16.loc_8c1673Cc
loc_8C111594:
	#data bank12.loc_8c1294C8
loc_8C111598:
	#data bank16.loc_8c1673E4

;==============================================
loc_8C11159C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c111602
	mov.w @(0x1C,r14),r0
	mov.w @(0x11C,PC),r3
	add 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c1115c2
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C1115C2:
	mova @(0x11C,PC),r0
	mov r14,r3
	fmov @r0,fr14
	mova @(0x118,PC),r0
	fmov @r0,fr15
	add 0x40,r3
	mov.w @(0x1C,r14),r0
	mov r3,r8
	mov.l @(0x11C,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(0x10C,PC),r0
	mov.l @(0x110,PC),r3
	fmov @r0,fr2
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0x104,PC),r0
	mov.l @(0xF8,PC),r2
	fmov @r0,fr3
	fmul fr3,fr0
	fdiv fr14,fr0
	fadd fr15,fr0
	ftrc fr0,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@r8


loc_8C111602:
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C11160E:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xE4,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c11164a
	mov r0,r4
	mov.w @(0xAC,PC),r0
	mov 0x01,r3
	mov.l @(0xD4,PC),r1
	mov.l @(0xD0,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0xA0,PC),r0
	mov.l @r3,r2
	mov.l @(0x1C,r2),r3
	mov.w @(0x9C,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(0x96,PC),r2
	mov.l @r15,r3
	mov.w @(0x94,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)


loc_8C11164A:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C111652:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c1116c4
	mov.w @(0x1C,r14),r0
	mov.w @(0x64,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c11167a
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C11167A:
	mova @(0x6C,PC),r0
	mov r14,r3
	fmov @r0,fr13
	mova @(0x5C,PC),r0
	fmov @r0,fr14
	mova @(0x5C,PC),r0
	fmov @r0,fr15
	add 0x40,r3
	mov.w @(0x1C,r14),r0
	mov r3,r8
	mov.l @(0x60,PC),r2
	mov r0,r3
	lds r3,fpul
	mov.l @(0x54,PC),r3
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0x58,PC),r0
	fmov fr0,fr3
	fmov @r0,fr2
	mova @(0x58,PC),r0
	fmov @r0,fr0
	mov.l @(0x38,PC),r2
	fmac fr0,fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@r8

loc_8C1116C4:
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1116d2:
	#data 0x0168
loc_8c1116d4:
	#data 0x012c
loc_8c1116d6:
	#data 0x0084
loc_8c1116d8:
	#data 0x0803
loc_8c1116da:
	#data 0x0088
loc_8c1116dc:
	#data 0x00C8
	#align4

loc_8c1116e0:
	#data 0x43B40000
loc_8c1116e4:
	#data 0x3F000000
loc_8c1116e8:
	#data 0x47800000
loc_8c1116ec:
	#data 0x0000FFFf
loc_8C1116F0:
	#data loc_8c11E860
loc_8C1116F4:
	#data 0x49A00000
loc_8C1116F8:
	#data bank04.loc_8c044F12
loc_8C1116FC:
	#data loc_8c11159c
loc_8C111700:
	#data 0x8C26A904
loc_8C111704:
	#data 0xC2B40000
loc_8C111708:
	#data 0x42340000

;==============================================
loc_8C11170C:
	sts.l pr,@-r15
	mov.l @(0xB8,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c111792
	mov r0,r4
	mov.w @(0x9E,PC),r0
	mov 0x01,r3
	mov.l @(0xAC,PC),r1
	mov.l @(0xA4,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x90,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x18,r2),r3
	mov.w @(0x8A,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x94,PC),r2
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x98,PC),r5
	mova @(0x98,PC),r0
	fmov @r0,fr6
	mova @(0x98,PC),r0
	fmov @r5,fr3
	mov r4,r3
	fmov @r0,fr5
	mova @(0x94,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0x7C,PC),r6
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r6,r1
	mov.l r1,@r3
	fmov @(r0,r5),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)

loc_8C111792:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C111798:
	mov.l r14,@-r15
	mov 0x02,r14
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15

loc_8C1117A2:
	bsr loc_8c1113ee
	mov r13,r4
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c1117a2
	mov 0x00,r13

loc_8C1117AE:
	bsr loc_8c1114fa
	mov r13,r4
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c1117ae
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c11170c
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1117c0:
	#data 0x012c
loc_8c1117c2:
	#data 0x0084
loc_8c1117c4:
	#data 0x080f
	#align4

loc_8C1117C8:
	#data bank04.loc_8c044F12
loc_8C1117CC:
	#data loc_8c111652
loc_8C1117d0:
	#data 0x8C26A904
loc_8C1117D4:
	#data bank16.loc_8c1673Ec
loc_8C1117D8:
	#data bank12.loc_8c1294C8
loc_8C1117DC:
	#data 0x0000FFFf
loc_8C1117E0:
	#data bank16.loc_8c1673F8
loc_8C1117E4:
	#data 0x47800000
loc_8C1117E8:
	#data 0x43B40000
loc_8C1117EC:
	#data 0x3F000000

;==============================================
loc_8C1117F0:
	sts.l pr,@-r15
	mov.l @(loc_8C111944,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C11187a
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C111936,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C11194C,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C111948,pc),r2 ; r2 set to 0x8C111880
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C111938,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x14,r2),r3
	mov.w @(loc_8C11193A,pc),r2 ; r2 set to 0x805
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @(loc_8C111950,pc),r2 ; r2 set to bank16.loc_8c167404
	mov.l @(loc_8C111954,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C11195C,pc),r5 ; r5 set to bank16.loc_8c167410
	mova @(loc_8C111960,pc),r0  ; r0 set to 0x8C111960
	fmov.s @r0,fr6 ; r6 ??
	mova @(loc_8C111964,pc),r0  ; r0 set to 0x8C111964
	fmov.s @r5,fr3 ; r3 ??
	mov r4,r3
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C111968,pc),r0  ; r0 set to 0x8C111968
	fmul fr6,fr3
	fmov.s @r0,fr4
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C111958,pc),r6 ; r6 set to 0xFFFf
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r6,r1
	mov.l r1,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	bra loc_8C1118Dc
	lds.l @r15+,pr

loc_8C11187A:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C111880:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C11193C,pc),r3 ; r3 set to 0x1770
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8C11189c
	lds.l @r15+,pr
	mov.l @(loc_8C11196C,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C11189C:
	mov.w @(0x1C,r14),r0
	mov r14,r5
	mov.l @(loc_8C111974,pc),r4 ; r4 set to bank16.loc_8c16741c
	mov.l @(loc_8C111970,pc),r13 ; r13 set to 0x8C0FD914
	mov r0,r6
	jsr @r13
	add 0x04,r5
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C111978,pc),r4 ; r4 set to bank16.loc_8c16742c
	fmov.s fr0,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x34
	jsr @r13
	add 0x05,r5
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(loc_8C11197C,pc),r4 ; r4 set to bank16.loc_8c16743c
	fmov.s fr0,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x38
	jsr @r13
	add 0x06,r5
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s fr0,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x3d
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1118dc:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c111944,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c111918
	mov r0,r4
	mov.w @(loc_8c111936,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c11194c,pc),r1
	mov.l @(loc_8c111980,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8c111938,pc),r0
	mov.l @r3,r2
	mov.l @(0x2C,r2),r3
	mov.w @(loc_8C11193E,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(loc_8C111940,pc),r2
	mov.l @r15,r3
	mov.w @(loc_8C111942,pc),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c111918:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C111920:
	mov.w @(loc_8C11193C,pc),r3 ; r3 set to 0x1770
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8C11192e
	mov.l @(loc_8C11196C,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C11192E:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C111936:
	#data 0x012c
loc_8C111938:
	#data 0x0084
loc_8C11193A:
	#data 0x0805
loc_8C11193C:
	#data 0x1770
loc_8c11193e:
	#data 0x2800
loc_8c111940:
	#data 0x0088
loc_8c111942:
	#data 0x00C8
	#align4

loc_8C111944:
	#data bank04.loc_8c044F12
loc_8C111948:
	#data loc_8c111880
loc_8C11194C:
	#data 0x8C26A904
loc_8C111950:
	#data bank16.loc_8c167404
loc_8C111954:
	#data bank12.loc_8c1294C8
loc_8C111958:
	#data 0x0000FFFf
loc_8C11195C:
	#data bank16.loc_8c167410
loc_8C111960:
	#data 0x47800000
loc_8C111964:
	#data 0x43B40000
loc_8C111968:
	#data 0x3F000000
loc_8C11196C:
	#data bank04.loc_8c0450C0
loc_8C111970:
	#data bank0f.loc_8c0fD914
loc_8C111974:
	#data bank16.loc_8c16741c
loc_8C111978:
	#data bank16.loc_8c16742c
loc_8C11197C:
	#data bank16.loc_8c16743c
loc_8C111980:
	#data loc_8c111920

;==============================================
loc_8C111984:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8C111AB8,pc),r3 ; r3 set to 0x8C1780B2
	mov r4,r14
	jsr @r3
	mov r15,r4
	mova @(loc_8C111AC0,pc),r0  ; r0 init to 0x8C111AC0
	mov.l @(loc_8C111ABC,pc),r5 ; r5 set to 0xFFFf
	fmov.s @r0,fr6
	mova @(loc_8C111AC4,pc),r0  ; r0 set to 0x8C111AC4
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C111AC8,pc),r0  ; r0 set to 0x8C111AC8
	fmov.s @r0,fr4
	mov.b @(0x05,r15),r0
	mov r0,r4 ; r4 set to 0x8C111AC8
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C1119Ba
	extu.b r4,r4 ; r4 set to 0xC8
	cmp/eq 0x01,r0
	bt loc_8C1119Dc
	bra loc_8C111A0e
	nop

loc_8C1119BA:
	mov r4,r2
	shll r4
	shll2 r2
	mov r14,r3
	add r2,r4
	lds r4,fpul
	add 0x40,r3
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	bra loc_8C111A0e
	nop

loc_8c1119dc:
	mov r14,r1
	mov.b @(0x04,r15),r0
	add 0x40,r1
	mov.l @(loc_8c111acc,pc),r3
	mov r1,r8
	extu.b r0,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x3C,r2
	mul.l r2,r0
	mov 0x00,r3
	sts macl,r0
	add r0,r4
	cmp/gt r4,r3
	addc r3,r4
	shar r4
	lds r4,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@r8

loc_8C111A0E:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c111a18:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c111ad0,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c111a8e
	mov r0,r4
	mov.w @(loc_8C111AB0,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C111AD8,pc),r1
	mov r14,r5
	mov.l @(loc_8c111ad4,pc),r2
	shll r5
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov.w @(loc_8C111AB2,pc),r0
	mov r4,r1
	mov.l @r3,r3
	add 0x34,r1
	add r3,r2
	mov.l @(0x24,r2),r3
	mov.w @(loc_8C111AB4,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov r14,r3
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c111adc,pc),r2
	add r3,r5
	mov.l @(loc_8c111ae0,pc),r3
	shll2 r5
	add r5,r2
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8c111ac0,pc),r0
	mov.l @(loc_8c111abc,pc),r2
	fmov.s @r0,fr3
	mov.l @(loc_8c111ae4,pc),r0
	fmov.s @(r0,r5),fr2
	mova @(loc_8c111ac4,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8c111ac8,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)

loc_8c111a8e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C111A94:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x02,r13 ; r13 set to 0x02
	sts.l pr,@-r15

loc_8C111A9E:
	bsr loc_8C111A18
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C111A9e
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c111ab0:
	#data 0x012c
loc_8c111ab2:
	#data 0x0084
loc_8c111ab4:
	#data 0x0807
	#align4

loc_8C111AB8:
	#data bank17.loc_8c1780B2
loc_8C111ABC:
	#data 0x0000FFFf
loc_8C111AC0:
	#data 0x47800000
loc_8C111AC4:
	#data 0x43B40000
loc_8C111AC8:
	#data 0x3F000000
loc_8C111ACC:
	#data bank12.loc_8c1292D4
loc_8C111AD0:
	#data bank04.loc_8c044F12
loc_8C111AD4:
	#data loc_8c111984
loc_8c111ad8:
	#data 0x8C26A904
loc_8C111ADC:
	#data bank16.loc_8c16744c
loc_8C111AE0:
	#data bank12.loc_8c1294C8
loc_8C111AE4:
	#data bank16.loc_8c167468

;==============================================
loc_8C111AE8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x134,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c111b32
	mov r0,r4
	mov.w @(0x118,PC),r0
	mov 0x01,r3
	mov.l @(0x128,PC),r1
	mov.l @(0x120,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x54,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x30,r0
	mov.l @(0x114,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @(0x114,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x114,PC),r1
	mov 0x44,r0
	mov.w @(0xF2,PC),r3
	mov.l r1,@(r0,r4)
	mov.w @(0xF0,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.l r1,@(0x18,r4)

loc_8C111B32:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C111B3A:
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
	add 0xF4,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	cmp/pl r0
	bf/s loc_8C111B68
	mov 0x00,r12 ; r12 set to 0x00
	mov.w @(loc_8C111C1A,pc),r0 ; r0 set to 0x12c
	bra loc_8C111BFe
	mov.b r12,@(r0,r14)

loc_8c111b68:
	mov.w @(loc_8c111c1a,pc),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C111C20,pc),r3
	add 0x04,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c111b82
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c111b82:
	mov.l @(loc_8C111C2C,pc),r3
	mov.w @(loc_8C111C22,pc),r0
	mov.l @r3,r4
	mov.l @(loc_8c111c3c,pc),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	mov 0x58,r0
	jsr @r1
	mov.l @(r0,r2),r4
	mova @(loc_8C111C50,pc),r0
	mov r12,r13
	fmov.s @r0,fr12
	mova @(loc_8C111C54,pc),r0
	mov.l @(loc_8c111c40,pc),r8
	fmov.s @r0,fr13
	mova @(loc_8C111C58,pc),r0
	mov.l @(loc_8C111C5C,pc),r12
	mov.l @(loc_8c111c4c,pc),r11
	mov.l @(loc_8c111c48,pc),r10
	mov.l @(loc_8c111c44,pc),r9
	bra loc_8c111bf6
	fmov.s @r0,fr14

loc_8c111bae:
	jsr @r11
	mov r15,r4
	mov 0x04,r0
	fmov.s @(r0,r15),fr15
	fcmp/gt fr15,fr14
	bf loc_8c111bf0
	mov 0x04,r0
	fabs fr15
	fmov.s @(r0,r15),fr3
	mov.w @(0x1C,r14),r0
	fabs fr3
	fmul fr3,fr15
	mov r0,r4
	add r13,r4
	lds r4,fpul
	mova @(loc_8C111C60,pc),r0
	fmov.s @r0,fr2
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr12,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r8
	and r12,r4
	mova @(loc_8C111C64,pc),r0
	fmul fr0,fr15
	fmov.s @r0,fr0
	mov 0x08,r0
	fmov.s @(r0,r15),fr3
	mov 0x08,r0
	fmac fr0,fr15,fr3
	fmov.s fr3,@(r0,r15)

loc_8c111bf0:
	add 0x1E,r13
	jsr @r10
	mov r15,r4

loc_8c111bf6:
	jsr @r9
	nop
	tst r0,r0
	bt loc_8c111bae

loc_8C111BFE:
	add 0x0C,r15
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C111C1A:
	#data 0x012c
loc_8C111C1c:
	#data 0x0805
loc_8C111C1e:
	#data 0x00CC
loc_8c111c20:
	#data 0x0168
loc_8c111c22:
	#data 0x0084
	#align4

loc_8C111C24:
	#data bank04.loc_8c044F12
loc_8C111C28:
	#data loc_8c111B3a
loc_8c111c2c:
	#data 0x8C26A904
loc_8C111C30:
	#data bank16.loc_8c16747c
loc_8C111C34:
	#data bank12.loc_8c1294C8
loc_8C111C38:
	#data 0x0000E001
loc_8C111C3C:
	#data bank10.loc_8c108060
loc_8C111C40:
	#data loc_8c11E860
loc_8C111C44:
	#data bank10.loc_8c108086
loc_8C111C48:
	#data bank10.loc_8c1081B4
loc_8C111C4C:
	#data bank10.loc_8c108168
loc_8c111c50:
	#data 0x43B40000
loc_8c111c54:
	#data 0x3F000000
loc_8c111c58:
	#data 0xC1200000
loc_8c111c5c:
	#data 0x0000FFFf
loc_8c111c60:
	#data 0x47800000
loc_8c111c64:
	#data 0x3951B717

;==============================================
loc_8C111C68:
	mov r4,r3
	mov.l @(loc_8C111E40,pc),r1 ; r1 set to bank16.loc_8c1675Cc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C111C7A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x32,r0 ; r0 set to 0x32
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8C111CA8
	mov.l @(loc_8C111E44,pc),r2 ; r2 set to 0x8C04223a
	mov 0x30,r5 ; r5 set to 0x30
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C111E44,pc),r3 ; r3 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C111CA8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C111CAE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8C111CCe
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	bra loc_8C111F86
	mov.w r0,@(0x1E,r14)

loc_8C111CCE:
	mova @(loc_8C111E4C,pc),r0  ; r0 init to 0x8C111E4c
	mov.l @(loc_8C111E54,pc),r13 ; r13 set to 0xFFFf
	fmov.s @r0,fr13 ; r13 ??
	mova @(loc_8C111E50,pc),r0  ; r0 set to 0x8C111E50
	fmov.s @r0,fr14
	mova @(loc_8C111E58,pc),r0  ; r0 set to 0x8C111E58
	fmov.s @r0,fr15
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C111E48,pc),r12 ; r12 set to bank16.loc_8c167560
	tst r0,r0
	bf loc_8C111CE8
	bra loc_8C111E6c
	nop

loc_8C111CE8:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C111E5C,pc),r3 ; r3 set to 0x8C1087Ce
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mova @(loc_8C111E60,pc),r0  ; r0 set to 0x8C111E60
	fmov.s @r0,fr4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov 0x04,r2 ; r2 set to 0x04
	extu.b r3,r3
	cmp/ge r2,r3
	bf/s loc_8C111D88
	mov r12,r5
	mov.b @(r0,r14),r3
	mov r14,r1
	add 0x40,r1
	extu.b r3,r3
	mov r3,r2 ; r2 ??? bc r3 is ???
	shll r3
	add r2,r3
	mov.l @r1,r2
	shll2 r3
	add r3,r5
	fmov.s @r5,fr3
	fdiv fr4,fr3
	fmul fr14,fr3
	fdiv fr15,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	add r3,r2
	mov.l r2,@r1
	mov.b @(r0,r14),r3
	mova @(loc_8C111E64,pc),r0  ; r0 set to 0x8C111E64
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r12,r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fdiv fr4,fr2
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r14),r2
	fmul fr14,fr2
	fdiv fr15,fr2
	fadd fr13,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r13,r3
	add r3,r2
	mov.l r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov 0x08,r0 ; r0 set to 0x08
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r12
	fmov.s @(r0,r12),fr2
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r14),r2
	fdiv fr4,fr2
	fmul fr14,fr2
	fdiv fr15,fr2
	fadd fr13,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r13,r3
	add r3,r2
	bra loc_8C111E1a
	nop

loc_8C111D88:
	mov.b @(r0,r14),r6
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C111E68,pc),r4 ; r4 set to bank16.loc_8c1674C4
	mov r14,r1
	extu.b r6,r6
	mov r6,r3
	shll r6
	add r3,r6
	shll2 r6
	add r6,r4 ; r4 ??? bc r6 is ???
	add r5,r6
	fmov.s @r4,fr3
	fmov.s @(r0,r6),fr2
	add 0x40,r1
	mov.l @r1,r0 ; r0 ??? bc r1 is ???
	fsub fr3,fr2
	fdiv fr4,fr2
	fmul fr14,fr2
	fdiv fr15,fr2
	fadd fr13,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r13,r3
	add r3,r0
	mov r14,r3
	mov.l r0,@r1
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r1
	add 0x40,r3
	add r3,r2
	extu.b r1,r1
	mov r1,r3
	shll r1
	add r3,r1
	shll2 r1
	mov 0x04,r0 ; r0 set to 0x04
	add r12,r1
	fmov.s @(r0,r4),fr3
	fmov.s @(r0,r1),fr2
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @r2,r1
	fsub fr3,fr2
	fdiv fr4,fr2
	fmul fr14,fr2
	fdiv fr15,fr2
	fadd fr13,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r13,r3
	add r3,r1
	mov.l r1,@r2
	mov.b @(r0,r14),r3
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r4),fr3
	mov 0x04,r0 ; r0 set to 0x04
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r12
	fmov.s @(r0,r12),fr2
	fsub fr3,fr2
	fdiv fr4,fr2
	fmul fr14,fr2
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r14),r2
	fdiv fr15,fr2
	fadd fr13,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r13,r3
	add r3,r2

loc_8C111E1A:
	mov.l r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8C111E2a
	bra loc_8C111F86
	nop

loc_8C111E2A:
	mov.w @(0x1C,r14),r0
	cmp/eq 0x14,r0
	bt loc_8C111E34
	bra loc_8C111F86
	nop

loc_8C111E34:
	mov.l @(loc_8C111E44,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	jsr @r2
	mov r14,r4
	bra loc_8C111F86
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C111E40:
	#data bank16.loc_8c1675Cc
loc_8C111E44:
	#data bank04.loc_8c04223a
loc_8C111E48:
	#data bank16.loc_8c167560
loc_8C111E4C:
	#data 0x3F000000
loc_8C111E50:
	#data 0x47800000
loc_8C111E54:
	#data 0x0000FFFf
loc_8C111E58:
	#data 0x43B40000
loc_8C111E5C:
	#data bank10.loc_8c1087Ce
loc_8C111E60:
	#data 0x42480000
loc_8C111E64:
	#data 0x42340000
loc_8C111E68:
	#data bank16.loc_8c1674C4

;==============================================
loc_8c111e6c:
	mov.b @(0x04,r14),r0
	mov r14,r1
	add 0x34,r1
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c112080,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c112084,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov r14,r1
	mov.b @(r0,r14),r3
	add 0x40,r1
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r12,r3
	fmov.s @r3,fr3
	fmul fr14,fr3
	fdiv fr15,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	mov.l r3,@r1
	mov.b @(r0,r14),r2
	mov 0x04,r0
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	add r12,r2
	fmov.s @(r0,r2),fr3
	fmul fr14,fr3
	fdiv fr15,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov 0x44,r0
	and r13,r3
	mov.l r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x08,r0
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	add r2,r12
	fmov.s @(r0,r12),fr3
	mov 0x48,r0
	mov 0x06,r2
	fmul fr14,fr3
	fdiv fr15,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	mov.l r3,@(r0,r14)
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c111f86
	mov.b @(r0,r14),r0
	mov.l @(loc_8C112088,pc),r13
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf/s loc_8c111f1a
	mov 0x01,r12
	mov r12,r0
	nop
	mov.b r0,@(0x05,r13)
	mov.b r0,@(0x06,r13)

loc_8c111f1a:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c111f4c
	mova @(loc_8C11208C,pc),r0
	fmov.s @r0,fr3
	mova @(loc_8C112090,pc),r0
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0
	fmov.s fr3,@(r0,r15)
	mova @(loc_8C112094,pc),r0
	fmov.s @r0,fr3
	mov 0x08,r0
	fmov.s fr3,@(r0,r15)
	mov 0x02,r0
	mov.b r0,@(0x05,r13)
	mov r12,r0
	nop
	mov.l @(loc_8c112098,pc),r3
	mov 0x01,r5
	mov.b r0,@(0x06,r13)
	jsr @r3
	mov r15,r4

loc_8c111f4c:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c111f86
	mova @(loc_8C11209C,pc),r0
	fmov.s @r0,fr3
	mova @(loc_8C1120A0,pc),r0
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0
	fmov.s fr3,@(r0,r15)
	mova @(loc_8C1120A4,pc),r0
	fmov.s @r0,fr3
	mov 0x08,r0
	fmov.s fr3,@(r0,r15)
	mov 0x03,r0
	mov.b r0,@(0x05,r13)
	mov r12,r0
	nop
	mov.l @(loc_8c112098,pc),r3
	mov 0x01,r5
	mov.b r0,@(0x06,r13)
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c1120a8,pc),r2
	mov 0x31,r5
	jsr @r2
	mov r14,r4

loc_8C111F86:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C111F98:
	mov.l r8,@-r15
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8C112010
	mov.w @(0x1C,r4),r0
	mov 0x03,r2 ; r2 set to 0x03
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/gt r2,r3
	bt loc_8C111FB6
	bra loc_8C11201e
	mov.l @r15+,r8

loc_8C111FB6:
	mov.w @(0x1C,r4),r0
	mov 0x34,r2 ; r2 set to 0x34
	cmp/pz r0
	bf/s loc_8C111FC4
	add r4,r2 ; r2 ??? bc r4 is ???
	bra loc_8C111FCe
	and 0x01,r0

loc_8C111FC4:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C111FCE:
	tst r0,r0
	bt loc_8C111FD6
	bra loc_8C111FD8
	mov 0x02,r1

loc_8C111FD6:
	mov 0xFE,r1 ; r1 set to 0xFFFFFFFe

loc_8C111FD8:
	lds r1,fpul
	mov 0x38,r8 ; r8 set to 0x38, r8 set to 0x38
	fmov.s @r2,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bf/s loc_8C111FF0
	add r4,r8 ; r8 ??? bc r4 is ???, r8 ??? bc r4 is ???
	bra loc_8C111FFa
	and 0x01,r0

loc_8C111FF0:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C111FFA:
	tst r0,r0
	bt loc_8C112002
	bra loc_8C112004
	mov 0x04,r3

loc_8C112002:
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFc

loc_8C112004:
	lds r3,fpul
	fmov.s @r8,fr2
	float fpul,fr3
	fadd fr3,fr2
	bra loc_8C11201a
	fmov.s fr2,@r8

loc_8C112010:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x1E,r0 ; r0 set to 0x1e
	mov.w r0,@(0x1C,r4)

loc_8C11201A:
	rts
	mov.l @r15+,r8

;==============================================
loc_8c11201e:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r13
	mov.l @(loc_8c112080,pc),r2
	extu.b r13,r13
	mov r13,r3
	shll r13
	add r3,r13
	mov.l @(loc_8c1120ac,pc),r3
	shll2 r13
	jsr @r3
	add r2,r13
	mov 0x04,r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c112072
	mov 0x04,r0
	mov.l @(loc_8C1120B0,pc),r1
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	lds r1,fpul
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fmul fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C1120B4,pc),r0
	fmov.s @r0,fr4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmul fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x64,r0
	fmov.s @(r0,r14),fr1
	fmul fr4,fr1
	fmov.s fr1,@(r0,r14)

loc_8c112072:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C11207A:
	rts
	nop

;==============================================
	#align4

loc_8C112080:
	#data bank16.loc_8c1674F4
loc_8C112084:
	#data bank12.loc_8c1294C8
loc_8c112088:
	#data 0x8C26A518
loc_8c11208c:
	#data 0x4494E000
loc_8c112090:
	#data 0x41D00000
loc_8c112094:
	#data 0xC3A90000
loc_8C112098:
	#data bank0f.loc_8c0fD54a
loc_8c11209c:
	#data 0x44438000
loc_8c1120a0:
	#data 0x42100000
loc_8c1120a4:
	#data 0xC4228000
loc_8C1120A8:
	#data bank04.loc_8c04223a
loc_8C1120AC:
	#data bank10.loc_8c1087Ce
loc_8c1120b0:
	#data 0xBDF5C28f
loc_8c1120b4:
	#data 0x3F4CCCCd

;==============================================
loc_8C1120B8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C1121F6,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C1120C6:
	mov.l @(loc_8C1121FC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C1120CC:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x128,PC),r3
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1121dc
	mov r0,r4
	mov.w @(0x10E,PC),r0
	mov 0x01,r3
	mov.l @(0x11C,PC),r1
	mov r14,r13
	mov.l @(0x114,PC),r2
	shll r13
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov.w @(0xFA,PC),r0
	mov.l @r3,r3
	fldi1 fr9
	fadd fr9,fr9
	add r3,r2
	fldi0 fr8
	mov.l @(0x30,r2),r3
	mov 0x04,r2
	cmp/ge r2,r14
	mov.l r3,@(r0,r4)
	mova @(0xFC,PC),r0
	fmov @r0,fr10
	mova @(0xFC,PC),r0
	mov r14,r3
	fmov @r0,fr4
	add r3,r13
	bf.s loc_8c112134
	shll2 r13
	mov.l @(0xF4,PC),r5
	mov r4,r1
	mov.l @(0xF4,PC),r3
	add 0x34,r1
	mov r5,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xEC,PC),r2
	mov 0x44,r0
	bra loc_8c112192
	mov.l r2,@(r0,r4)

loc_8C112134:
	mov.l @(0xE8,PC),r5
	mov r4,r1
	mov.l @(0xE8,PC),r6
	add 0x34,r1
	mov.l @(0xD8,PC),r3
	add r13,r5
	mov r5,r2
	add r13,r6
	jsr @r3
	mov 0x0C,r0
	mova @(0xE0,PC),r0
	fmov @r6,fr3
	fmov @r0,fr7
	mova @(0xE0,PC),r0
	fmov @r0,fr6
	mova @(0xE0,PC),r0
	fmov @r0,fr5
	mov 0x04,r0
	fmul fr6,fr3
	mov.l @(0xCC,PC),r7
	mov r4,r3
	add 0x40,r3
	fdiv fr7,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r7,r2
	mov.l r2,@r3
	fmov @(r0,r6),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr7,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r7,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	fmul fr6,fr3
	fdiv fr7,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	mov 0x48,r0
	sts fpul,r3
	and r7,r3
	mov.l r3,@(r0,r4)

loc_8C112192:
	mov.l @(0xA4,PC),r6
	mov 0x5C,r0
	fmov @r5,fr3
	add r13,r6
	mov.w @(0x5C,PC),r3
	fmov @r6,fr2
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov fr8,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr2
	fmov @(r0,r5),fr3
	mov 0x64,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr2
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	fsub fr3,fr2
	fmul fr9,fr2
	fdiv fr10,fr2
	fmov fr2,@(r0,r4)
	add 0x60,r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov r14,r0
	nop 
	mov r14,r3
	shll2 r3
	shll r0
	add r3,r0
	mov.w r0,@(0x1E,r4)

loc_8C1121DC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C1121E4:
	mov r4,r3
	mov.l @(loc_8C11223C,pc),r1 ; r1 set to bank16.loc_8c1675E4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1121F6:
	#data 0x012c
loc_8C1121F8:
	#data 0x0084
loc_8C1121Fa:
	#data 0x080F
	#align4

loc_8C1121FC:
	#data bank04.loc_8c0450C0
loc_8C112200:
	#data bank04.loc_8c044F12
loc_8C112204:
	#data loc_8c111C68
loc_8C112208:
	#data 0x8C26A904
loc_8C11220c:
	#data 0x451C4000
loc_8C112210:
	#data 0x42480000
loc_8C112214:
	#data bank16.loc_8c167488
loc_8C112218:
	#data bank12.loc_8c1294C8
loc_8C11221c:
	#data 0x0000E001
loc_8C112220:
	#data bank16.loc_8c167494
loc_8C112224:
	#data bank16.loc_8c1674C4
loc_8C112228:
	#data 0x0000FFFf
loc_8C11222c:
	#data 0x43B40000
loc_8C112230:
	#data 0x47800000
loc_8C112234:
	#data 0x3F000000
loc_8C112238:
	#data bank16.loc_8c1674F4
loc_8C11223C:
	#data bank16.loc_8c1675E4

;==============================================
loc_8C112240:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xCC,PC),r5
	mov r4,r13
	mov r5,r4
	add 0x18,r4
	mov.l @(0xC,r4),r3
	mov.l @r4,r12
	mov r5,r4
	add 0x36,r4
	mov.l r3,@r15
	mov.b @r4,r0
	cmp/eq 0x03,r0
	bt loc_8c112268
	mov.b @(0x1,r4),r0
	cmp/eq 0x03,r0
	bf loc_8c112304

loc_8C112268:
	mov.l @(0xB0,PC),r2
	jsr @r2
	mov 0x01,r4
	tst r0,r0
	bt loc_8c112304
	mova @(0xB0,PC),r0
	mov.l @(0xB0,PC),r3
	fmov @r0,fr5
	mov 0x00,r4
	mov.w @(0x96,PC),r0
	mov 0x64,r6
	mov.l @(0xA0,PC),r5
	mov 0x09,r14
	mov.b @(r0,r12),r2
	tst r2,r2
	bt.s loc_8c1122c8
	fmov @r3,fr0
	fmov fr0,fr3
	fadd fr5,fr3
	mov 0x34,r0
	fmov @(r0,r12),fr4
	fcmp/gt fr3,fr4
	bt loc_8c112304
	mova @(0x94,PC),r0
	fmov fr0,fr2
	fmov @r0,fr3
	fadd fr3,fr2
	fcmp/gt fr4,fr2
	bt loc_8c112304
	mov.b @(0x4,r13),r0
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov r6,r0
	nop 
	mov.w r0,@(0x1C,r13)
	mov.l @r5,r3
	mov.w @(0x62,PC),r0
	mov.l @r3,r2
	mov.l @(0x20,r2),r1
	mov.l r1,@(r0,r13)
	mov r4,r13

loc_8C1122BA:
	bsr loc_8c1120cc
	mov r13,r4
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c1122ba
	bra loc_8c112304
	nop 

loc_8C1122C8:
	fmov fr0,fr3
	fadd fr5,fr3
	mov.l @r15,r2
	mov 0x34,r0
	fmov @(r0,r2),fr4
	fcmp/gt fr3,fr4
	bt loc_8c112304
	mova @(0x54,PC),r0
	fmov fr0,fr2
	fmov @r0,fr3
	fadd fr3,fr2
	fcmp/gt fr4,fr2
	bt loc_8c112304
	mov.b @(0x4,r13),r0
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov r6,r0
	nop 
	mov.w r0,@(0x1C,r13)
	mov.l @r5,r3
	mov.w @(0x22,PC),r0
	mov.l @r3,r2
	mov.l @(0x20,r2),r1
	mov.l r1,@(r0,r13)
	mov r4,r13

loc_8C1122FA:
	bsr loc_8c1120cc
	mov r13,r4
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c1122fa

loc_8C112304:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C112310:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c112314:
	#data 0x0235
loc_8c112316:
	#data 0x0084
	#align4

loc_8C112318:
	#data 0x8C2895F0
loc_8C11231C:
	#data bank04.loc_8c046AE0
loc_8C112320:
	#data 0x8C26A904
loc_8C112324:
	#data 0x42480000
loc_8C112328:
	#data 0x8C26A5B4
loc_8C11232c:
	#data 0xC2480000

;==============================================
loc_8C112330:
	sts.l pr,@-r15
	mov.l @(loc_8C112384,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C112376
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C11237C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C11238C,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C112388,pc),r2 ; r2 set to 0x8C1121E4
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C11237E,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x10,r2),r3
	mov.l @(loc_8C112390,pc),r2 ; r2 set to bank16.loc_8c167488
	mov.l r3,@(r0,r4)
	mov.l @(loc_8C112394,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C112398,pc),r1 ; r1 set to 0xCAAc
	mov 0x44,r0 ; r0 set to 0x44
	mov.w @(loc_8C112380,pc),r3 ; r3 set to 0x805
	mov.l r1,@(r0,r4)
	mov.w @(loc_8C112382,pc),r0 ; r0 set to 0xCc
	mov.l r3,@(r0,r4)
	mov.l @(loc_8C11239C,pc),r3 ; r3 set to 0x8C111AE8
	jmp @r3
	lds.l @r15+,pr

loc_8C112376:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11237C:
	#data 0x012c
loc_8C11237E:
	#data 0x0084
loc_8C112380:
	#data 0x0805
loc_8C112382:
	#data 0x00Cc
	#align4

loc_8C112384:
	#data bank04.loc_8c044F12
loc_8C112388:
	#data loc_8c1121E4
loc_8C11238C:
	#data 0x8C26A904
loc_8C112390:
	#data bank16.loc_8c167488
loc_8C112394:
	#data bank12.loc_8c1294C8
loc_8C112398:
	#data 0x0000CAAc
loc_8C11239C:
	#data loc_8c111AE8

;==============================================
loc_8C1123A0:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r13,@-r15
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C1123F8,pc),r3 ; r3 set to 0x8C044F12
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C1123Ea
	mov r0,r14
	mov.w @(loc_8C1123F4,pc),r0 ; r0 set to 0x12c
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C1123F6,pc),r2 ; r2 set to 0x80f
	mov 0x08,r12 ; r12 set to 0x08
	mov.b r4,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l @(loc_8C1123FC,pc),r3 ; r3 set to 0x8C112404
	mov r4,r13 ; r13 set to 0x00
	mov.l r3,@(0x10,r14)
	mov.l r2,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	mov.w r0,@(0x1E,r14)

loc_8C1123D0:
	mov r13,r5 ; r5 set to 0x00
	bsr loc_8C112638
	mov r14,r4 ; r4 ??? bc r14 is ???
	add 0x01,r13 ; r13 set to 0x01
	cmp/ge r12,r13
	bf loc_8C1123D0
	lds.l @r15+,pr
	mov.l @(loc_8C112400,pc),r3 ; r3 set to 0x8C1126A8, r3 set to 0x8C1126A8
	mov r14,r4
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C1123EA:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1123F4:
	#data 0x012c
loc_8C1123F6:
	#data 0x080f
	#align4

loc_8C1123F8:
	#data bank04.loc_8c044F12
loc_8C1123FC:
	#data loc_8c112404
loc_8C112400:
	#data loc_8c1126A8

;==============================================
loc_8C112404:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov 0x1C,r4 ; r4 set to 0x1c
	mov.l @(loc_8C112600,pc),r13 ; r13 set to bank16.loc_8c1675Ec
	mov r0,r3
	mov.w @(0x1E,r14),r0
	lds r3,fpul
	mov r15,r5
	muls.w r4,r0
	mov 0x1C,r0 ; r0 set to 0x1c
	mov.l @(loc_8C112604,pc),r3 ; r3 set to 0x8C109458
	float fpul,fr3
	mov r15,r6
	add 0x04,r5
	sts macl,r4
	add 0x08,r6
	add r13,r4 ; r4 set to bank16.loc_8c167608
	fmov fr3,fr4 ; r4 ??
	fmov.s @(r0,r4),fr1
	fmov.s @r4,fr2
	fsub fr2,fr1
	fdiv fr1,fr4
	jsr @r3
	mov r15,r4
	mov.w @(0x1E,r14),r0
	mov 0x1C,r2 ; r2 set to 0x1c
	mov r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C112610,pc),r12 ; r12 set to 0xFFFf
	mov r0,r7 ; r7 set to 0x1c
	mov r7,r5 ; r5 set to 0x1c
	add 0xFF,r5 ; r5 set to 0x1b
	mul.l r2,r5 ; r5 ??
	mova @(loc_8C112608,pc),r0  ; r0 set to 0x8C112608
	fmov.s @r0,fr6
	mova @(loc_8C11260C,pc),r0  ; r0 set to 0x8C11260c
	fmov.s @r0,fr5
	mova @(loc_8C112614,pc),r0  ; r0 set to 0x8C112614
	sts macl,r5
	mul.l r2,r7 ; r7 ??
	fmov.s @r0,fr4
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???
	mov 0x10,r0 ; r0 set to 0x10
	add r13,r5
	sts macl,r4
	add 0x40,r3
	add r13,r4
	fmov.s @(r0,r4),fr3
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s @(r0,r5),fr2 ; r2 ??? bc r5 is ???
	mov r4,r6
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???
	mov 0x08,r0 ; r0 set to 0x08
	add 0x1C,r6
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s @(r0,r6),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmac fr0,fr2,fr3
	fmul fr4,fr3
	fdiv fr6,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r12,r1
	neg r1,r1
	mov.l r1,@r3
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s @(r0,r4),fr3
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s @(r0,r5),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s @(r0,r6),fr2
	fmac fr0,fr2,fr3
	fmul fr4,fr3
	fdiv fr6,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r12,r3
	mov 0x44,r0 ; r0 set to 0x44
	neg r3,r3
	mov.l r3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???
	mov 0x18,r0 ; r0 set to 0x18
	fmov.s @(r0,r4),fr3
	mov 0x18,r0 ; r0 set to 0x18
	fmov.s @(r0,r5),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x18,r0 ; r0 set to 0x18
	fmov.s @(r0,r6),fr2
	mov 0x48,r0 ; r0 set to 0x48
	fmac fr0,fr2,fr3
	fmul fr4,fr3
	fdiv fr6,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r12,r3
	neg r3,r3
	mov.l r3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r4),fr3
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r5),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r6),fr2
	mov 0x18,r0 ; r0 set to 0x18
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r15)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r4),fr3
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr2
	mov 0x1C,r0 ; r0 set to 0x1c
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r15)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r4),fr3
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C112618,pc),r3 ; r3 set to 0x8C120950
	fmov.s @(r0,r5),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fmac fr0,fr2,fr3 ; r3 ??? bc r2 is ???
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r6),fr2
	mov 0x20,r0 ; r0 set to 0x20
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C11261C,pc),r2 ; r2 set to 0x8C121100
	jsr @r2
	nop
	mov.l @(loc_8C112620,pc),r3 ; r3 set to 0x8C120D90
	mov 0x48,r0 ; r0 set to 0x48
	jsr @r3
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_8C112624,pc),r3 ; r3 set to 0x8C120CD0
	mov 0x44,r0 ; r0 set to 0x44
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8C112628,pc),r3 ; r3 set to 0x8C120B20
	mov r14,r4
	add 0x40,r4
	jsr @r3
	mov.l @r4,r4
	mov.l @(loc_8C11262C,pc),r2 ; r2 set to 0x8C11F910
	mov r15,r5
	mov r15,r4
	add 0x0C,r5
	jsr @r2
	add 0x18,r4
	mov.l @(loc_8C112630,pc),r3 ; r3 set to 0x8C120900
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C112634,pc),r3 ; r3 set to 0x8C26A95c
	fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s @(r0,r15),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s @(r0,r15),fr3
	mov 0x3C,r0 ; r0 set to 0x3c
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov.b @r3,r0 ; r0 ??? bc r3 is ???
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8C1125B8
	mov.w @(0x1C,r14),r0
	bra loc_8C1125Bc
	add 0x01,r0

loc_8c1125b8:
	mov.w @(0x1C,r14),r0
	add 0x02,r0

loc_8c1125bc:
	mov.w r0,@(0x1C,r14)
	mov 0x1C,r4
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	lds r3,fpul
	muls.w r4,r0
	mov 0x1C,r0
	float fpul,fr3
	sts macl,r4
	add r13,r4
	fmov.s @(r0,r4),fr1
	fmov.s @r4,fr2
	fsub fr2,fr1
	fcmp/gt fr3,fr1
	bt loc_8c1125f4
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x59,r3
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	add 0x02,r0
	cmp/hs r3,r0
	bf loc_8c1125f4
	mov 0x01,r0
	mov.w r0,@(0x1E,r14)

loc_8c1125f4:
	add 0x24,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c112600:
	#data bank16.loc_8c1675EC
loc_8c112604:
	#data bank10.loc_8C109458
loc_8c112608:
	#data 0x43B40000
loc_8c11260c:
	#data 0x3F000000
loc_8c112610:
	#data 0x0000FFFF
loc_8c112614:
	#data 0x47800000
loc_8c112618:
	#data bank12.loc_8C120950
loc_8c11261c:
	#data bank12.loc_8C121100
loc_8c112620:
	#data bank12.loc_8C120D90
loc_8c112624:
	#data bank12.loc_8C120CD0
loc_8c112628:
	#data bank12.loc_8C120B20
loc_8c11262c:
	#data loc_8C11F910
loc_8c112630:
	#data bank12.loc_8C120900
loc_8c112634:
	#data 0x8C26A95C

;==============================================
loc_8c112638:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x5C,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c112688
	mov r0,r4
	mov.w @(0x3C,PC),r0
	mov 0x01,r3
	mov.l @(0x48,PC),r2
	mov.l @(0x4C,PC),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @(0x4,r15),r2
	mov.l @r3,r3
	shll2 r2
	add r3,r2
	mov.w @(0x2A,PC),r3
	mov.l @(0x4,r2),r0
	mov.w @(0x24,PC),r2
	add r4,r2
	mov.l r0,@r2
	mov.w @(0x22,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	mov.w @(0x20,PC),r0
	mov.l r2,@(0x14,r4)
	mov.w @(0x1A,PC),r2
	mov.l @r15,r3
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.b r3,@(r0,r4)

loc_8c112688:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c112690:
	#data 0x012C
loc_8c112692:
	#data 0x0084
loc_8c112694:
	#data 0x0800
loc_8c112696:
	#data 0x00CC
loc_8c112698:
	#data 0x0088
loc_8c11269a:
	#data 0x00C8
	#align4

loc_8c11269c:
	#data bank04.loc_8C044F12
loc_8c1126a0:
	#data loc_8C112404
loc_8c1126a4:
	#data 0x8C26A904

;==============================================
loc_8C1126A8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r4,@r15
	mov 0x03,r13 ; r13 set to 0x03

loc_8C1126B6:
	mov r14,r5 ; r5 set to 0x00
	bsr loc_8C1126Cc
	mov.l @r15,r4
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C1126B6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1126cc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	mov.l @(loc_8c1127e8,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1127c0
	mov r0,r4
	mov.w @(loc_8C1127DC,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c1127ec,pc),r2
	mov r14,r7
	mov.l @(loc_8C1127F0,pc),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll r2
	shll2 r2
	mov.w @(loc_8C1127DE,pc),r0
	mov.l @r3,r3
	shll r7
	mov r4,r1
	add 0x34,r1
	add r3,r2
	mov.l @(0x24,r2),r3
	mov.l @(loc_8c1127f4,pc),r2
	mov.l r3,@(r0,r4)
	mov r14,r3
	add r3,r7
	mov.l @(loc_8c1127f8,pc),r3
	shll2 r7
	add r7,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c11280c,pc),r5
	mova @(loc_8C1127FC,pc),r0
	fmov.s @r0,fr6
	mova @(loc_8C112800,pc),r0
	add r7,r5
	fmov.s @r0,fr5
	fmov.s @r5,fr3
	mova @(loc_8C112808,pc),r0
	fmov.s @r0,fr4
	mov 0x04,r0
	fmul fr5,fr3
	mov.l @(loc_8C112804,pc),r6
	mov r4,r3
	add 0x40,r3
	fdiv fr4,fr3
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r6,r2
	mov.l r2,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr5,fr3
	fdiv fr4,fr3
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	mov 0x48,r0
	mov.l @(loc_8c112810,pc),r2
	mov r4,r1
	add 0x50,r1
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c1127f8,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x3C,r5
	mov.w @(loc_8C1127E0,pc),r1
	muls.w r5,r14
	mov.w @(loc_8C1127E2,pc),r0
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	sts macl,r5
	mov.b r14,@(r0,r4)
	mov r5,r0
	nop
	mov r14,r3
	shll8 r3
	mov.w r0,@(0x1C,r4)
	shll2 r3
	mov.w r0,@(0x1E,r4)
	shll2 r3
	mov.w @(loc_8C1127E4,pc),r0
	mov r14,r1
	shll r1
	mov.l r3,@(r0,r4)
	mov r14,r3
	add r3,r1
	mov r14,r3
	shll2 r14
	shll8 r1
	add r3,r14
	shll2 r1
	shll8 r14
	shll2 r1
	add 0x04,r0
	shll2 r14
	mov.l r1,@(r0,r4)
	add 0x04,r0
	shll2 r14
	mov.l r14,@(r0,r4)
	mov.l @r15,r3
	mov.l r3,@(0x14,r4)

loc_8c1127c0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C1127C8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C112814
	mov r4,r14
	bsr loc_8C11284c
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C112A6c
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1127dc:
	#data 0x012c
loc_8c1127de:
	#data 0x0084
loc_8c1127e0:
	#data 0x081f
loc_8c1127e2:
	#data 0x00CC
loc_8c1127e4:
	#data 0x00D0
	#align4

loc_8C1127E8:
	#data bank04.loc_8c044F12
loc_8C1127EC:
	#data loc_8c1127C8
loc_8c1127f0:
	#data 0x8C26A904
loc_8C1127F4:
	#data bank16.loc_8c167FA8
loc_8C1127F8:
	#data bank12.loc_8c1294C8
loc_8c1127fc:
	#data 0x3F000000
loc_8c112800:
	#data 0x47800000
loc_8c112804:
	#data 0x0000FFFf
loc_8c112808:
	#data 0x43B40000
loc_8C11280C:
	#data bank16.loc_8c167FCc
loc_8C112810:
	#data bank16.loc_8c167FFc

;==============================================
loc_8C112814:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(loc_8C11292C,pc),r0 ; r0 set to bank16.loc_8c167FA8
	extu.b r3,r3
	mov.l @(0x14,r14),r4
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	fmov.s @(r0,r3),fr12
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(loc_8C112930,pc),r3 ; r3 set to 0x8C11E860
	jsr @r3
	mov.l @(r0,r4),r4
	mova @(loc_8C112934,pc),r0  ; r0 set to 0x8C112934
	fmov.s @r0,fr3 ; r3 ??
	mov 0x34,r0 ; r0 set to 0x34
	fmul fr3,fr0 ; r0 ??? bc r3 is ???
	fsub fr0,fr12
	fmov.s fr12,@(r0,r14)
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	rts
	mov.l @r15+,r14

;==============================================
loc_8c11284c:
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
	add 0xD8,r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.w @(0x1C,r14),r0
	extu.b r3,r3
	mov.w @(loc_8C11291C,pc),r4
	add 0x01,r3
	add r3,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r4,r0
	bf loc_8c11288e
	mov r4,r0
	nop
	mov.l @(loc_8c112938,pc),r2
	mov 0x1C,r1
	add r14,r1
	jsr @r2
	mov.w @r1,r1
	mov.w r0,@(0x1C,r14)

loc_8c11288e:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8C11291E,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c1128a0
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c1128a0:
	mov.w @(loc_8C112920,pc),r3
	mov r3,r0
	nop
	add 0xD0,r0
	mov.l @(loc_8C11293C,pc),r11
	mov.l @(r0,r14),r2
	mov.w @(loc_8C112924,pc),r4
	add r3,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l @(r0,r14),r1
	add r14,r4
	mov.w @(loc_8C112922,pc),r2
	add r2,r1
	mov.l r1,@(r0,r14)
	add 0x04,r0
	mov.l @(r0,r14),r3
	add 0x40,r3
	mov.l r3,@(r0,r14)
	add 0xF8,r0
	mov.l @(r0,r14),r3
	and r11,r3
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l @(r0,r14),r1
	and r11,r1
	mov.l r1,@(r0,r14)
	add 0x04,r0
	mov.l @(r0,r14),r3
	and r11,r3
	mov.l r3,@(r0,r14)
	mov.l @(0x08,r4),r3
	mov.l @(0x04,r4),r8
	mov.l r3,@r15
	mov.l @(0x0C,r4),r9
	mov.w @(loc_8C112926,pc),r0
	mov.l @(loc_8C112940,pc),r3
	mov.l @(r0,r14),r5
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	shll r2
	mov.l @r4,r4
	add 0x09,r2
	shll2 r2
	add r2,r4
	mov.l @(loc_8c112944,pc),r2
	jsr @r2
	mov.l @(0x04,r4),r4
	mova @(loc_8C112948,pc),r0
	mov.w @(loc_8C112928,pc),r12
	fmov.s @r0,fr12
	mova @(loc_8C11294C,pc),r0
	fmov.s @r0,fr13
	mova @(loc_8C112950,pc),r0
	mov.l @(loc_8c112930,pc),r13
	mov 0x00,r10
	fmov.s @r0,fr14
	mova @(loc_8C112954,pc),r0
	bra loc_8c112a46
	fmov.s @r0,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11291C:
	#data 0x05A0
loc_8C11291E:
	#data 0x0168
loc_8C112920:
	#data 0x0100
loc_8C112922:
	#data 0x0080
loc_8C112924:
	#data 0x00CC
loc_8C112926:
	#data 0x0084
loc_8C112928:
	#data 0x0800
	#align4

loc_8c11292c:
	#data bank16.loc_8c167FA8
loc_8c112930:
	#data loc_8c11e860
loc_8c112934:
	#data 0x467A0000
loc_8c112938:
	#data bank12.loc_8c1292d4
loc_8C11293C:
	#data 0x0000FFFF
loc_8C112940:
	#data 0x8C26A904
loc_8c112944:
	#data bank10.loc_8c108060
loc_8C112948:
	#data 0x43B40000
loc_8C11294C:
	#data 0x3F000000
loc_8C112950:
	#data 0x42800000
loc_8C112954:
	#data 0x42C00000

;==============================================
loc_8c112958:
	mov.l @(loc_8c112a70,pc),r2
	mov r15,r4
	jsr @r2
	add 0x1C,r4
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c112a74,pc),r0
	extu.b r3,r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@-r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C112A78,pc),r0
	fmov.s @r0,fr2
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr12,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r13
	and r11,r4
	fmov fr0,fr3
	fmov fr13,fr0
	fldi1 fr2
	fmac fr0,fr3,fr2
	fmov.s @r15+,fr3
	fmul fr2,fr3
	fmov.s fr3,@-r15
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bt loc_8c11299e
	add 0x03,r0

loc_8c11299e:
	shar r0
	shar r0
	mov r0,r4
	add r10,r4
	lds r4,fpul
	mova @(loc_8C112A78,pc),r0
	fmov.s @r0,fr1
	float fpul,fr2
	fmul fr1,fr2
	fdiv fr12,fr2
	fadd fr13,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r13
	and r11,r4
	fmov.s @r15+,fr3
	mova @(loc_8C112A7C,pc),r0
	mov.l @(loc_8c112a80,pc),r3
	add 0x1E,r10
	fmul fr0,fr3
	fmov.s @r0,fr0
	mov 0x1C,r0
	mov r15,r4
	fmov.s @(r0,r15),fr2
	mov 0x1C,r0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r15)
	jsr @r3
	add 0x1C,r4
	mov.l @r15,r2
	mov r15,r4
	mov.l @(loc_8c112a84,pc),r3
	add r12,r9
	add r12,r2
	add r12,r8
	mov.l r2,@r15
	jsr @r3
	add 0x10,r4
	mov r15,r2
	add 0x14,r2
	mov.l r2,@(0x0C,r15)
	jsr @r13
	extu.w r8,r4
	fmov fr0,fr3
	fmov fr14,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.b r0,@(0x08,r15)
	mov.l @r15,r4
	jsr @r13
	extu.w r4,r4
	fmov fr0,fr3
	fmov fr14,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.b r0,@(0x04,r15)
	jsr @r13
	extu.w r9,r4
	fmov fr0,fr3
	fmov fr14,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.b @(0x08,r15),r0
	mov.l @(0x0C,r15),r3
	extu.b r0,r0
	ftrc fr2,fpul
	shll16 r0
	mov r0,r2
	mov.b @(0x04,r15),r0
	extu.b r0,r0
	sts fpul,r4
	shll8 r0
	or r0,r2
	extu.b r4,r4
	or r4,r2
	mov r15,r4
	mov.l r2,@r3
	mov.l @(loc_8c112a88,pc),r3
	jsr @r3
	add 0x10,r4

loc_8c112a46:
	mov.l @(loc_8c112a8c,pc),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c112958
	add 0x28,r15
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

loc_8C112A6C:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C112A70:
	#data bank10.loc_8c108168
loc_8C112A74:
	#data bank16.loc_8c167FF0
loc_8c112a78:
	#data 0x47800000
loc_8c112a7c:
	#data 0x44FA0000
loc_8C112A80:
	#data bank10.loc_8c1081B4
loc_8C112A84:
	#data bank10.loc_8c10817c
loc_8C112A88:
	#data bank10.loc_8c1081D0
loc_8C112A8C:
	#data bank10.loc_8c108086

;==============================================
loc_8C112A90:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x03,r13 ; r13 set to 0x03
	sts.l pr,@-r15

loc_8C112A9A:
	bsr loc_8C112AAc
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C112A9a
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c112aac:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c112b8c,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c112b08
	mov r0,r4
	mov.w @(loc_8C112B80,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C112B94,pc),r1
	mov.l @(loc_8c112b90,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov.w @(loc_8C112B82,pc),r0
	mov r4,r1
	mov.l @r3,r3
	add 0x34,r1
	add r3,r2
	mov.l @(0x3C,r2),r3
	mov r14,r2
	shll r2
	mov.l r3,@(r0,r4)
	mov r14,r3
	add r3,r2
	mov.l @(loc_8c112b98,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c112b9c,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C112B86,pc),r0
	mov.w @(loc_8C112B84,pc),r1
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov 0x78,r0
	muls.w r0,r14
	sts macl,r0
	mov.w r0,@(0x1C,r4)

loc_8c112b08:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c112b0e:
	mov.l r14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0x80,PC),r0
	extu.b r3,r3
	mov r3,r2
	mov.l r3,@r15
	shll r3
	mov.l @r15,r1
	add r2,r3
	mov.l @(0x88,PC),r2
	shll2 r3
	fmov @(r0,r3),fr13
	shll2 r1
	mov.l @(0x6C,PC),r0
	fmov @(r0,r1),fr12
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x68,PC),r0
	mov.l @(0x70,PC),r3
	fmov @r0,fr1
	mova @(0x64,PC),r0
	float fpul,fr2
	fmov @r0,fr0
	mova @(0x64,PC),r0
	fmul fr1,fr2
	fmov @r0,fr1
	fdiv fr0,fr2
	fadd fr1,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmac fr0,fr12,fr13
	mov 0x38,r0
	mov.w @(0x24,PC),r3
	fmov fr13,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c112b74
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c112b74:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C112B80:
	#data 0x012C
loc_8C112B82:
	#data 0x0084
loc_8C112B84:
	#data 0x0801
loc_8C112B86:
	#data 0x00CC
loc_8C112B88:
	#data 0x0168
	#align4

loc_8c112b8c:
	#data bank04.loc_8c044f12
loc_8c112b90:
	#data loc_8c112b0e
loc_8C112B94:
	#data 0x8C26A904
loc_8c112b98:
	#data bank16.loc_8c168008
loc_8c112b9c:
	#data bank12.loc_8c1294c8
loc_8c112ba0:
	#data bank16.loc_8c16800C
loc_8c112ba4:
	#data bank16.loc_8c16802C
loc_8c112ba8:
	#data 0x47800000
loc_8c112bac:
	#data 0x43B40000
loc_8c112bb0:
	#data 0x3F000000
loc_8c112bb4:
	#data 0x0000FFFF
loc_8c112bb8:
	#data loc_8C11E860

;==============================================
loc_8c112bbc:
	sts.l pr,@-r15
	bsr loc_8c112bc6
	mov 0x00,r4
	lds.l @r15+,pr
	mov 0x01,r4

loc_8c112bc6:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0xD0,PC),r3
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c112c58
	mov r0,r14
	mov.l @(0xC8,PC),r2
	mov 0x01,r3
	mov.w @(0xB6,PC),r0
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.l r2,@(0x10,r14)
	mov.l @(0xC0,PC),r2
	mov.w @(0xAE,PC),r3
	jsr @r2
	mov.l r3,@(r0,r14)
	cmp/pz r0
	bf loc_8c112bfa
	bra loc_8c112c04
	and 0x03,r0

loc_8c112bfa:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c112c04:
	mov.l @(0xA8,PC),r3
	mov r0,r4
	mov.l @(0xA8,PC),r2
	mov.l @r3,r0
	mov r13,r3
	mov.l @r2,r1
	mov r13,r2
	mov.l @r0,r0
	shll r2
	shll2 r1
	mov.l @(r0,r1),r1
	add r3,r2
	mov.w @(0x80,PC),r0
	mov r4,r3
	shll2 r2
	mov.l r1,@(r0,r14)
	mov r4,r1
	shll r1
	add r3,r1
	mov.l @(0x8C,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x88,PC),r3
	shll2 r1
	add r1,r2
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov r13,r0
	nop 
	mov.l @(0x7C,PC),r3
	shll2 r0
	shll2 r0
	add r0,r3
	shll2 r4
	add r3,r4
	mov.l @r4,r2
	mov 0x44,r0
	mov.l r2,@(r0,r14)
	mov 0x20,r0
	mov.b r13,@(r0,r14)

loc_8c112c58:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C112C60:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8C112D28
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x08,r2 ; r2 set to 0x08
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x01
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/hs r2,r0
	bf loc_8C112D12
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_8C112CAC,pc),r1 ; r1 set to 0x8C11E730
	jsr @r1
	mov.w r0,@(0x1C,r14)
	cmp/pz r0
	bf loc_8C112CC4
	bra loc_8C112CCe
	and 0x03,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c112c9c:
	#data 0x012c
loc_8c112c9e:
	#data 0x0805
loc_8c112ca0:
	#data 0x0084
	#align4

loc_8C112CA4:
	#data bank04.loc_8c044F12
loc_8C112CA8:
	#data loc_8c112C60
loc_8C112CAC:
	#data loc_8c11e730
loc_8C112Cb0:
	#data 0x8C26A904
loc_8C112CB4:
	#data bank16.loc_8c168044
loc_8C112CB8:
	#data bank16.loc_8c168064
loc_8C112CBC:
	#data bank12.loc_8c1294C8
loc_8C112CC0:
	#data bank16.loc_8c1680C4

;==============================================
loc_8c112cc4:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c112cce:
	mov r0,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov r4,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov r4,r3
	shll r1
	add r3,r1
	mov.l @(loc_8c112d30,pc),r3
	shll2 r2
	shll2 r2
	add r3,r2
	mov.l @(loc_8c112d34,pc),r3
	shll2 r1
	add r1,r2
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(loc_8c112d38,pc),r3
	mov.b @(r0,r14),r0
	shll2 r4
	extu.b r0,r0
	shll2 r0
	shll2 r0
	add r0,r3
	add r3,r4
	mov.l @r4,r2
	mov 0x44,r0
	mov.l r2,@(r0,r14)

loc_8c112d12:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c112d3c,pc),r1
	mov.l @(loc_8C112D40,pc),r3
	shll2 r0
	mov.l @(r0,r1),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(loc_8C112D2E,pc),r0
	mov.l r2,@(r0,r14)

loc_8C112D28:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c112d2e:
	#data 0x0084
	#align4

loc_8C112D30:
	#data bank16.loc_8c168064
loc_8C112D34:
	#data bank12.loc_8c1294C8
loc_8C112D38:
	#data bank16.loc_8c1680C4
loc_8C112D3C:
	#data bank16.loc_8c168044
loc_8c112d40:
	#data 0x8C26A904

;==============================================
loc_8C112D44:
	mov.l r14,@-r15
	mova @(loc_8C112EEC,pc),r0  ; r0 init to 0x8C112EEc
	mov.l r13,@-r15
	mov r4,r14
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr13
	mova @(loc_8C112EF0,pc),r0  ; r0 set to 0x8C112EF0
	fmov.s @r0,fr14
	mova @(loc_8C112EF4,pc),r0  ; r0 set to 0x8C112EF4
	fmov.s @r0,fr15
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C112EF8,pc),r13 ; r13 set to 0xFFFf
	extu.b r0,r0 ; r0 set to 0xF4
	cmp/eq 0x00,r0
	bt/s loc_8C112D80
	fldi0 fr12
	cmp/eq 0x01,r0
	bt loc_8C112DF4
	cmp/eq 0x02,r0
	bt loc_8C112E12
	cmp/eq 0x03,r0
	bf loc_8C112D7c
	bra loc_8C112EB8
	nop

loc_8C112D7C:
	bra loc_8C112EDa
	nop

loc_8C112D80:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r4
	mov.l @(loc_8C112EFC,pc),r0 ; r0 set to bank16.loc_8c16869c
	extu.b r4,r4
	shll2 r4
	mov.l @(r0,r4),r3
	lds r3,fpul
	mov.l @(loc_8C112F00,pc),r3 ; r3 set to 0x8C11E860
	float fpul,fr3
	fmul fr15,fr3 ; r3 ??? bc r15 is ???
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r13,r4
	mov.l @(loc_8C112F04,pc),r3 ; r3 set to bank16.loc_8c1686D8
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @r3,fr3 ; r3 ??
	fmul fr0,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr12,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	fmov.s @r3,fr3
	fmov.s fr3,@-r15
	mov.b @(r0,r14),r4
	mov.l @(loc_8C112EFC,pc),r0 ; r0 set to bank16.loc_8c16869c
	extu.b r4,r4
	shll2 r4
	mov.l @(r0,r4),r2
	lds r2,fpul
	mov.l @(loc_8C112F08,pc),r2 ; r2 set to 0x8C11E2E0
	float fpul,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2 ; r2 ??? bc r3 is ???
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r13,r4
	fmov.s @r15+,fr2
	mov r14,r1
	mov.l @(loc_8C112F0C,pc),r2 ; r2 set to bank16.loc_8c1686E8
	mov 0x64,r0 ; r0 set to 0x64
	fmul fr0,fr2 ; r2 ??
	mov.l @(loc_8C112F10,pc),r3 ; r3 set to 0x8C1294C8
	add 0x68,r1
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C112EDa
	nop

loc_8C112DF4:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C112F14,pc),r3 ; r3 set to 0x8C0FD6B0
	add 0x34,r4
	add 0x01,r0
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C112E12:
	mov.l @(loc_8C112F18,pc),r3 ; r3 set to 0x8C1087Ce
	jsr @r3
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C112F1C,pc),r4 ; r4 set to bank16.loc_8c1686B0
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov r14,r2
	add 0x40,r2
	extu.b r3,r3
	mov.l @r2,r1
	shll2 r3
	shll r3
	add r4,r3
	fmov.s @r3,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	add r3,r1
	mov.l r1,@r2
	mov.b @(r0,r14),r3
	mov 0x04,r0 ; r0 set to 0x04
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4 ; r4 ??? bc r3 is ???
	fmov.s @(r0,r4),fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r14),r2
	add r3,r2
	mov.l r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr4
	mova @(loc_8C112F20,pc),r0  ; r0 set to 0x8C112F20
	fmov.s @r0,fr3
	fcmp/gt fr3,fr4
	bf loc_8C112E84
	mova @(loc_8C112F24,pc),r0  ; r0 set to 0x8C112F24
	fmov.s @r0,fr2
	fcmp/gt fr4,fr2
	bf loc_8C112E84
	mova @(loc_8C112F28,pc),r0  ; r0 set to 0x8C112F28
	fmov.s @r0,fr4
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bt loc_8C112EDa
	bra loc_8C112E90
	fmov.s fr4,@(r0,r14)

loc_8C112E84:
	mov 0x38,r0 ; r0 set to 0x38
	fldi0 fr3
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C112EDa
	fmov.s fr12,@(r0,r14)

loc_8C112E90:
	mov.l @(loc_8C112F2C,pc),r1 ; r1 set to 0xBE99999A, r1 set to 0xBE99999a
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr2
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	lds r1,fpul
	fsts fpul,fr3
	fmul fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x61, r0 set to 0x61
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??, r0 ??
	cmp/gt r3,r0
	bf loc_8C112EDa
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	bra loc_8C112EDa
	mov.w r0,@(0x1C,r14)

loc_8C112EB8:
	mov.w @(0x1C,r14),r0
	mov 0x0F,r3 ; r3 set to 0x0f
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8C112EDa
	lds.l @r15+,pr
	mov.l @(loc_8C112F30,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C112EDA:
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align4

loc_8C112EEC:
	#data 0x43B40000
loc_8C112EF0:
	#data 0x3F000000
loc_8C112EF4:
	#data 0x47800000
loc_8C112EF8:
	#data 0x0000FFFf
loc_8C112EFC:
	#data bank16.loc_8c16869c
loc_8C112F00:
	#data loc_8c11E860
loc_8C112F04:
	#data bank16.loc_8c1686D8
loc_8C112F08:
	#data loc_8c11E2E0
loc_8C112F0C:
	#data bank16.loc_8c1686E8
loc_8C112F10:
	#data bank12.loc_8c1294C8
loc_8C112F14:
	#data bank0f.loc_8c0fD6B0
loc_8C112F18:
	#data bank10.loc_8c1087Ce
loc_8C112F1C:
	#data bank16.loc_8c1686B0
loc_8C112F20:
	#data 0xC37A0000
loc_8C112F24:
	#data 0x437A0000
loc_8C112F28:
	#data 0x43960000
loc_8C112F2C:
	#data 0xBE99999a
loc_8C112F30:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c112f34:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c113060,pc),r3
	mov 0x01,r6
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c112f82
	mov r0,r4
	mov.w @(loc_8C113058,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c113064,pc),r2
	mov.l @(loc_8C113068,pc),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	mov.l @r3,r3
	shll2 r2
	add r3,r2
	mov.w @(loc_8C11305C,pc),r3
	mov.l @(0x04,r2),r0
	mov.w @(loc_8C11305A,pc),r2
	add r4,r2
	mov.l r0,@r2
	mov.w @(loc_8C11305E,pc),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.l @(loc_8c11306c,pc),r3
	mov.b r2,@(r0,r4)
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0

loc_8c112f82:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C112F8A:
	mov.l r14,@-r15
	mova @(loc_8C113070,pc),r0  ; r0 init to 0x8C113070
	mov.l r13,@-r15
	mov r4,r14
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr13
	mova @(loc_8C113074,pc),r0  ; r0 set to 0x8C113074
	fmov.s @r0,fr14
	mova @(loc_8C113078,pc),r0  ; r0 set to 0x8C113078
	fmov.s @r0,fr15
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C11307C,pc),r13 ; r13 set to 0xFFFf
	extu.b r0,r0 ; r0 set to 0x78
	cmp/eq 0x00,r0
	bt/s loc_8C112FC6
	fldi0 fr12
	cmp/eq 0x01,r0
	bt loc_8C11303a
	cmp/eq 0x02,r0
	bt loc_8C113098
	cmp/eq 0x03,r0
	bf loc_8C112FC2
	bra loc_8C11313e
	nop

loc_8C112FC2:
	bra loc_8C113160
	nop

loc_8C112FC6:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r4
	mov.l @(loc_8C113080,pc),r0 ; r0 set to bank16.loc_8c16869c
	extu.b r4,r4
	shll2 r4
	mov.l @(r0,r4),r3
	lds r3,fpul
	mov.l @(loc_8C113084,pc),r3 ; r3 set to 0x8C11E860
	float fpul,fr3
	fmul fr15,fr3 ; r3 ??? bc r15 is ???
	fdiv fr13,fr3
	fmov fr3,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r13,r4
	mov.l @(loc_8C113088,pc),r3 ; r3 set to bank16.loc_8c1686D8
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @r3,fr3 ; r3 ??
	fmul fr0,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr12,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	fmov.s @r3,fr3
	fmov.s fr3,@-r15
	mov.b @(r0,r14),r4
	mov.l @(loc_8C113080,pc),r0 ; r0 set to bank16.loc_8c16869c
	extu.b r4,r4
	shll2 r4
	mov.l @(r0,r4),r2
	lds r2,fpul
	mov.l @(loc_8C11308C,pc),r2 ; r2 set to 0x8C11E2E0
	float fpul,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fmov fr3,fr2 ; r2 ??? bc r3 is ???
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r13,r4
	fmov.s @r15+,fr2
	mov r14,r1
	mov.l @(loc_8C113090,pc),r2 ; r2 set to bank16.loc_8c1686E8
	mov 0x64,r0 ; r0 set to 0x64
	fmul fr0,fr2 ; r2 ??
	mov.l @(loc_8C11306C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x68,r1
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C113160
	nop

loc_8C11303A:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C113094,pc),r3 ; r3 set to 0x8C0FD6B0
	add 0x34,r4
	add 0x01,r0
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c113058:
	#data 0x012c
loc_8c11305a:
	#data 0x0084
loc_8c11305c:
	#data 0x080b
loc_8c11305e:
	#data 0x00CC
	#align4

loc_8C113060:
	#data bank04.loc_8c044F12
loc_8C113064:
	#data loc_8c112D44
loc_8c113068:
	#data 0x8C26A904
loc_8C11306C:
	#data bank12.loc_8c1294C8
loc_8C113070:
	#data 0x43B40000
loc_8C113074:
	#data 0x3F000000
loc_8C113078:
	#data 0x47800000
loc_8C11307C:
	#data 0x0000FFFf
loc_8C113080:
	#data bank16.loc_8c16869c
loc_8C113084:
	#data loc_8c11E860
loc_8C113088:
	#data bank16.loc_8c1686D8
loc_8C11308C:
	#data loc_8c11E2E0
loc_8C113090:
	#data bank16.loc_8c1686E8
loc_8C113094:
	#data bank0f.loc_8c0fD6B0

;==============================================
loc_8C113098:
	mov.l @(loc_8C1131CC,pc),r3 ; r3 set to 0x8C1087Ce
	jsr @r3
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C1131D0,pc),r4 ; r4 set to bank16.loc_8c1686B0
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov r14,r2
	add 0x40,r2
	extu.b r3,r3
	mov.l @r2,r1
	shll2 r3
	shll r3
	add r4,r3
	fmov.s @r3,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	add r3,r1
	mov.l r1,@r2
	mov.b @(r0,r14),r3
	mov 0x04,r0 ; r0 set to 0x04
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4 ; r4 ??? bc r3 is ???
	fmov.s @(r0,r4),fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r14),r2
	add r3,r2
	mov.l r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr4
	mova @(loc_8C1131D4,pc),r0  ; r0 set to 0x8C1131D4
	fmov.s @r0,fr3
	fcmp/gt fr3,fr4
	bf loc_8C11310a
	mova @(loc_8C1131D8,pc),r0  ; r0 set to 0x8C1131D8
	fmov.s @r0,fr2
	fcmp/gt fr4,fr2
	bf loc_8C11310a
	mova @(loc_8C1131DC,pc),r0  ; r0 set to 0x8C1131Dc
	fmov.s @r0,fr4
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bt loc_8C113160
	bra loc_8C113116
	fmov.s fr4,@(r0,r14)

loc_8C11310A:
	mov 0x38,r0 ; r0 set to 0x38
	fldi0 fr3
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C113160
	fmov.s fr12,@(r0,r14)

loc_8C113116:
	mov.l @(loc_8C1131E0,pc),r1 ; r1 set to 0xBE99999A, r1 set to 0xBE99999a
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr2
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	lds r1,fpul
	fsts fpul,fr3
	fmul fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x61, r0 set to 0x61
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??, r0 ??
	cmp/gt r3,r0
	bf loc_8C113160
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	bra loc_8C113160
	mov.w r0,@(0x1C,r14)

loc_8C11313E:
	mov.w @(0x1C,r14),r0
	mov 0x0F,r3 ; r3 set to 0x0f
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8C113160
	lds.l @r15+,pr
	mov.l @(loc_8C1131E4,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C113160:
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C113170:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x70,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1131be
	mov r0,r4
	mov.w @(0x3A,PC),r0
	mov 0x01,r3
	mov.l @(0x5C,PC),r2
	mov.l @(0x60,PC),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	mov.l @r3,r3
	mov.w @(0x26,PC),r0
	shll2 r2
	add r3,r2
	mov.w @(0x22,PC),r3
	mov.l @(r0,r2),r2
	add 0xDC,r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.l @(0x3C,PC),r3
	mov.b r2,@(r0,r4)
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0

loc_8C1131BE:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1131c6:
	#data 0x012C
loc_8c1131c8:
	#data 0x00A8
loc_8c1131ca:
	#data 0x080B
	#align4

loc_8C1131CC:
	#data bank10.loc_8c1087Ce
loc_8C1131D0:
	#data bank16.loc_8c1686B0
loc_8C1131D4:
	#data 0xC37A0000
loc_8C1131D8:
	#data 0x437A0000
loc_8C1131DC:
	#data 0x43960000
loc_8C1131E0:
	#data 0xBE99999a
loc_8C1131E4:
	#data bank04.loc_8c0450C0
loc_8C1131E8:
	#data bank04.loc_8c044F12
loc_8C1131EC:
	#data loc_8c112F8a
loc_8C1131f0:
	#data 0x8C26A904
loc_8C1131F4:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C1131F8:
	mova @(loc_8C1132A0,pc),r0  ; r0 init to 0x8C1132A0
	fldi1 fr9
	fadd fr9,fr9
	mov.l @(loc_8C1132A8,pc),r3 ; r3 set to 0x8C26A8C8
	sts.l pr,@-r15
	fmov.s @r0,fr7
	mova @(loc_8C1132A4,pc),r0  ; r0 set to 0x8C1132A4
	fmov.s @r0,fr5
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(0x04,r4),r0
	mov.w @(loc_8C113298,pc),r6 ; r6 set to 0xF0
	extu.b r0,r0 ; r0 set to 0xA4
	fldi1 fr4
	cmp/eq 0x00,r0
	bt/s loc_8C11323c
	mov.l @r3,r7
	cmp/eq 0x01,r0
	bt loc_8C113254
	cmp/eq 0x02,r0
	bt loc_8C1132Ac
	cmp/eq 0x03,r0
	bf loc_8C113228
	bra loc_8C1133B8
	nop

loc_8C113228:
	cmp/eq 0x04,r0
	bf loc_8C113230
	bra loc_8C1133D8
	nop

loc_8C113230:
	cmp/eq 0x05,r0
	bf loc_8C113238
	bra loc_8C11345c
	nop

loc_8C113238:
	bra loc_8C11345c
	nop

loc_8C11323C:
	mov r7,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8C113248
	bra loc_8C11345c
	nop

loc_8C113248:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x78,r0 ; r0 set to 0x78
	bra loc_8C11345c
	mov.w r0,@(0x1E,r4)

loc_8C113254:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/gt r6,r0
	bt loc_8C113264
	bra loc_8C11345c
	nop

loc_8C113264:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov r6,r0
	nop
	mov.w r0,@(0x1E,r4)
	mov.w @(loc_8C11329C,pc),r0 ; r0 set to 0xCc
	mov.w @(loc_8C11329A,pc),r2 ; r2 set to 0x400
	mov.l @(r0,r4),r1
	or r2,r1
	mov.l r1,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr4,@(r0,r4)
	bsr loc_8C113E4c
	mov 0x00,r4 ; r4 set to 0x00
	bsr loc_8C113E4c
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8C1133D0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C113298:
	#data 0x00F0
loc_8C11329A:
	#data 0x0400
loc_8C11329C:
	#data 0x00Cc
	#align4

loc_8C1132A0:
	#data 0x40A00000
loc_8C1132A4:
	#data 0x3F000000
loc_8C1132A8:
	#data 0x8C26A8C8

;==============================================
loc_8C1132AC:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C113468,pc),r6 ; r6 set to bank16.loc_8c168108
	mov r0,r2
	lds r2,fpul
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8C113464,pc),r7 ; r7 set to bank16.loc_8c1680Fc
	mov r0,r2
	float fpul,fr3
	lds r2,fpul
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r7,fr8
	float fpul,fr2
	fmov fr3,fr6 ; r6 ??? bc r3 is ???
	fmov.s @r6,fr3
	fsub fr8,fr3
	fdiv fr2,fr6
	fmov fr8,fr2
	fmov fr6,fr0 ; r0 ??? bc r6 is ???
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r6),fr3
	fmov.s @(r0,r7),fr8
	mov 0x38,r0 ; r0 set to 0x38
	fsub fr8,fr3
	fmov fr8,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr3
	fmov.s @(r0,r7),fr8
	fsub fr8,fr3
	mov.l @(loc_8C113478,pc),r7 ; r7 set to bank16.loc_8c168114
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(loc_8C11347C,pc),r3 ; r3 set to bank16.loc_8c168120
	mov r4,r2
	fmov fr8,fr2
	fmac fr0,fr3,fr2
	mov.l @(loc_8C113474,pc),r6 ; r6 set to 0xFFFf
	add 0x40,r2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C11346C,pc),r0  ; r0 set to 0x8C11346c
	fmov.s @r7,fr11
	fmov.s @r3,fr3 ; r3 ??
	fmov fr11,fr2
	fsub fr11,fr3
	fmov.s @r0,fr10
	mova @(loc_8C113470,pc),r0  ; r0 set to 0x8C113470
	fmov.s @r0,fr8
	mov 0x04,r0 ; r0 set to 0x04
	fmac fr0,fr3,fr2
	fmul fr8,fr2
	fdiv fr10,fr2
	fadd fr5,fr2
	ftrc fr2,fpul
	sts fpul,r1
	and r6,r1
	mov.l r1,@r2
	fmov.s @(r0,r7),fr11
	fmov.s @(r0,r3),fr3
	fmov fr11,fr2
	fsub fr11,fr3
	fmac fr0,fr3,fr2
	fmul fr8,fr2
	fdiv fr10,fr2
	mov 0x44,r0 ; r0 set to 0x44
	fdiv fr9,fr6 ; r6 ??? bc r9 is ???
	fadd fr5,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r6,r2
	mov.l r2,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r3),fr3
	fmov.s @(r0,r7),fr11
	mov 0x48,r0 ; r0 set to 0x48
	fsub fr11,fr3
	fmov fr11,fr2
	fmac fr0,fr3,fr2
	fmul fr8,fr2
	fmov fr4,fr8
	fsub fr6,fr8
	fdiv fr10,fr2
	fadd fr5,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r6,r2
	mov.l r2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr8,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr8,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bf loc_8C113372
	bra loc_8C11337c
	and 0x01,r0

loc_8C113372:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C11337C:
	tst r0,r0
	bt loc_8C113388
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r4),fr3
	bra loc_8C11338e
	fadd fr7,fr3

loc_8C113388:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	fsub fr7,fr3

loc_8C11338E:
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x35
	exts.w r0,r3
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	cmp/ge r0,r3
	bf loc_8C11345c
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x36
	mov.b r0,@(0x04,r4)
	mov r5,r0 ; r0 ??? bc r5 is ???
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	fmov.s fr5,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7C, r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80, r0 set to 0x80
	bra loc_8C11345c
	fmov.s fr5,@(r0,r4)

loc_8c1133b8:
	mov 0x02,r2
	cmp/ge r2,r7
	bf loc_8c11345c
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov r6,r0
	nop
	mov.w r0,@(0x1E,r4)

loc_8C1133D0:
	mov.l @(loc_8C113480,pc),r3 ; r3 set to 0x8C042228
	mov 0x1F,r4 ; r4 set to 0x1f
	jmp @r3
	lds.l @r15+,pr

loc_8C1133D8:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C113484,pc),r1 ; r1 set to 0xC0000000
	mov r0,r2
	lds r2,fpul
	mov.w @(0x1E,r4),r0
	mov r0,r2
	float fpul,fr3
	lds r2,fpul
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr2
	lds r1,fpul
	fmov fr3,fr6
	fsts fpul,fr3
	fdiv fr2,fr6
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov fr6,fr8
	fdiv fr9,fr8
	fmov fr8,fr2
	fadd fr5,fr2
	fsub fr8,fr5
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov fr4,fr2
	fsub fr6,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr5,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bf loc_8C11341e
	bra loc_8C113428
	and 0x01,r0

loc_8C11341E:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C113428:
	tst r0,r0
	bt loc_8C113434
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r4),fr2
	bra loc_8C11343a
	fadd fr7,fr2

loc_8c113434:
	mov 0x34,r0
	fmov.s @(r0,r4),fr2
	fsub fr7,fr2

loc_8c11343a:
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/gt r6,r0
	bf loc_8c11345c
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8C11345C:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C113464:
	#data bank16.loc_8c1680Fc
loc_8C113468:
	#data bank16.loc_8c168108
loc_8C11346C:
	#data 0x43B40000
loc_8C113470:
	#data 0x47800000
loc_8C113474:
	#data 0x0000FFFf
loc_8C113478:
	#data bank16.loc_8c168114
loc_8C11347C:
	#data bank16.loc_8c168120
loc_8C113480:
	#data bank04.loc_8c042228
loc_8C113484:
	#data 0xC0000000

;==============================================
loc_8c113488:
	sts.l pr,@-r15
	mov.l @(loc_8c11359c,pc),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1134c2
	mov r0,r4
	mov.w @(loc_8C113590,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C1135A4,pc),r1
	mov.l @(loc_8c1135a0,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C113592,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x14,r2),r3
	mov.w @(loc_8C113594,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c1135ac,pc),r3
	mov.l @(loc_8c1135a8,pc),r2
	jsr @r3
	mov 0x0C,r0

loc_8c1134c2:
	lds.l @r15+,pr
	rts
	nop

loc_8C1134C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C1134E6
	cmp/eq 0x01,r0
	bt loc_8C11350c
	cmp/eq 0x02,r0
	bt loc_8C113530
	bra loc_8C11353e
	nop

loc_8C1134E6:
	mov.b @(0x04,r14),r0
	mov r14,r1
	add 0x34,r1
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C1135B0,pc),r3 ; r3 set to bank16.loc_8c16812c
	shll2 r2
	add r3,r2
	mov.l @(loc_8C1135AC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C11353e
	nop

loc_8C11350C:
	mov.l @(loc_8C1135B4,pc),r3 ; r3 set to 0x8C26A8C8
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bf loc_8C11353e
	mov.b @(0x04,r14),r0
	mov 0x00,r13 ; r13 set to 0x00
	mov 0x04,r12 ; r12 set to 0x04
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8C11351E:
	mov r14,r4
	mov r13,r5 ; r5 set to 0x00
	bsr loc_8C112F34
	add 0x34,r4
	add 0x01,r13 ; r13 set to 0x01
	cmp/ge r12,r13
	bf loc_8C11351e
	bra loc_8C11353e
	nop

loc_8C113530:
	lds.l @r15+,pr
	mov.l @(loc_8C1135B8,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C11353E:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c113548:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c11359c,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c113588
	mov r0,r4
	mov.w @(loc_8C113590,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c1135bc,pc),r2
	mov.l @(loc_8C1135A4,pc),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r15,r2
	mov.l @r3,r3
	mov.w @(loc_8C113596,pc),r0
	shll2 r2
	add r3,r2
	mov.w @(loc_8C113598,pc),r3
	mov.l @(r0,r2),r2
	add 0xFC,r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.b r2,@(r0,r4)

loc_8c113588:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C113590:
	#data 0x012C
loc_8c113592:
	#data 0x0084
loc_8c113594:
	#data 0x080B
loc_8C113596:
	#data 0x0088
loc_8C113598:
	#data 0x0801
	#align4

loc_8c11359c:
	#data bank04.loc_8c044f12
loc_8c1135a0:
	#data loc_8C1131F8
loc_8C1135A4:
	#data 0x8C26A904
loc_8c1135a8:
	#data bank16.loc_8c1680FC
loc_8c1135ac:
	#data bank12.loc_8C1294C8
loc_8c1135b0:
	#data bank16.loc_8c16812C
loc_8c1135b4:
	#data 0x8C26A8C8
loc_8c1135b8:
	#data bank04.loc_8C0450C0
loc_8c1135bc:
	#data loc_8c1134c8

;==============================================
loc_8C1135C0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mova @(loc_8C113774,pc),r0  ; r0 init to 0x8C113774
	mov r4,r14
	fmov.s @r0,fr13
	mova @(loc_8C113778,pc),r0  ; r0 set to 0x8C113778
	fmov.s @r0,fr14
	mova @(loc_8C113780,pc),r0  ; r0 set to 0x8C113780
	fmov.s @r0,fr15
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C11377C,pc),r13 ; r13 set to 0xFFFf
	extu.b r0,r0 ; r0 set to 0x80
	cmp/eq 0x00,r0
	bt loc_8C1135Fc
	cmp/eq 0x01,r0
	bt loc_8C113622
	cmp/eq 0x02,r0
	bt loc_8C1136Aa
	cmp/eq 0x03,r0
	bf loc_8C1135F8
	bra loc_8C11373c
	nop

loc_8C1135F8:
	bra loc_8C113760
	nop

loc_8C1135FC:
	mov.b @(0x04,r14),r0
	mov r14,r1
	add 0x34,r1
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C113784,pc),r3 ; r3 set to bank16.loc_8c168174
	shll2 r2
	add r3,r2
	mov.l @(loc_8C113788,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C113760
	nop

loc_8C113622:
	mov.l @(loc_8C11378C,pc),r3 ; r3 set to 0x8C26A8C8
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bt loc_8C11362e
	bra loc_8C113760
	nop

loc_8C11362E:
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C113798,pc),r1 ; r1 set to 0x8C11E860
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C113790,pc),r0 ; r0 set to bank16.loc_8c168274
	extu.b r2,r2
	shll2 r2
	mov.l r2,@r15
	fmov.s @(r0,r2),fr12
	mov.l @(loc_8C113794,pc),r0 ; r0 set to bank16.loc_8c168214
	mov.l @(r0,r2),r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmul fr15,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r1
	and r13,r4
	fmul fr0,fr12
	mov 0x5C,r0 ; r0 set to 0x5c
	fldi0 fr3
	mov.l @(loc_8C11379C,pc),r2 ; r2 set to 0x8C11E2E0
	fmov.s fr12,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C113790,pc),r0 ; r0 set to bank16.loc_8c168274
	extu.b r3,r3
	shll2 r3
	mov.l r3,@r15
	fmov.s @(r0,r3),fr12
	mov.l @(loc_8C113794,pc),r0 ; r0 set to bank16.loc_8c168214
	mov.l @(r0,r3),r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr2 ; r2 ??? bc r3 is ???
	fmul fr15,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r13,r4
	fmul fr0,fr12
	mov.l @(loc_8C1137A0,pc),r2 ; r2 set to bank16.loc_8c1686F4
	mov.l @(loc_8C113788,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov 0x64,r0 ; r0 set to 0x64
	add 0x68,r1
	fmov.s fr12,@(r0,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C113760
	nop

loc_8C1136AA:
	mov.l @(loc_8C1137A4,pc),r3 ; r3 set to 0x8C1087Ce
	jsr @r3
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C1137A8,pc),r4 ; r4 set to bank16.loc_8c168234
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov r14,r2
	add 0x40,r2
	extu.b r3,r3
	mov.l @r2,r1
	shll2 r3
	shll r3
	add r4,r3
	fmov.s @r3,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	add r3,r1
	mov.l r1,@r2
	mov.b @(r0,r14),r3
	mov 0x04,r0 ; r0 set to 0x04
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4 ; r4 ??? bc r3 is ???
	fmov.s @(r0,r4),fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r14),r2
	add r3,r2
	mov.l @(loc_8C1137AC,pc),r3 ; r3 set to bank16.loc_8c1681D4
	mov.l r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	shll2 r0
	shll r0
	add r0,r3 ; r3 ??? bc r0 is ???
	mov.w @(0x1C,r14),r0
	shll2 r0
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C113760
	mov.l @(loc_8C1137B0,pc),r1 ; r1 set to 0xBE99999a
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	mov 0x02,r3 ; r3 set to 0x02
	lds r1,fpul
	fsts fpul,fr3
	fmul fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x61
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C113760
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C113760
	mov.w r0,@(0x1C,r14)

loc_8C11373C:
	mov.w @(0x1C,r14),r0
	mov 0x0F,r3 ; r3 set to 0x0f
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8C113760
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C1137B4,pc),r1 ; r1 set to 0x8C0450C0
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C113760:
	add 0x04,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align4

loc_8C113774:
	#data 0x43B40000
loc_8C113778:
	#data 0x3F000000
loc_8C11377C:
	#data 0x0000FFFf
loc_8C113780:
	#data 0x47800000
loc_8C113784:
	#data bank16.loc_8c168174
loc_8C113788:
	#data bank12.loc_8c1294C8
loc_8C11378C:
	#data 0x8C26A8C8
loc_8C113790:
	#data bank16.loc_8c168274
loc_8C113794:
	#data bank16.loc_8c168214
loc_8C113798:
	#data loc_8c11E860
loc_8C11379C:
	#data loc_8c11E2E0
loc_8C1137A0:
	#data bank16.loc_8c1686F4
loc_8C1137A4:
	#data bank10.loc_8c1087Ce
loc_8C1137A8:
	#data bank16.loc_8c168234
loc_8C1137AC:
	#data bank16.loc_8c1681D4
loc_8C1137B0:
	#data 0xBE99999a
loc_8C1137B4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c1137b8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1138c4,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1137f8
	mov r0,r4
	mov.w @(loc_8C1138BC,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c1138c8,pc),r2
	mov.l @(loc_8C1138CC,pc),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r15,r2
	mov.l @r3,r3
	mov.w @(loc_8C1138BE,pc),r0
	shll2 r2
	add r3,r2
	mov.w @(loc_8C1138C0,pc),r3
	mov.l @(r0,r2),r2
	add 0xBC,r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.b r2,@(r0,r4)

loc_8c1137f8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C113800:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C11382a
	cmp/eq 0x01,r0
	bt loc_8C113832
	cmp/eq 0x02,r0
	bt loc_8C113842
	cmp/eq 0x03,r0
	bt loc_8C11390a
	bra loc_8C113920
	nop

loc_8C11382A:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C113920
	mov.b r0,@(0x04,r14)

loc_8C113832:
	mov.l @(loc_8C1138D0,pc),r2 ; r2 set to 0x8C26A8C8
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8C113920
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C113920
	mov.b r0,@(0x04,r14)

loc_8C113842:
	mov 0x20,r3 ; r3 set to 0x20
	mov.w @(0x1C,r14),r0
	add r14,r3 ; r3 ??? bc r14 is ???
	mov 0x1E,r2 ; r2 set to 0x1e
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	mov.b @r3,r3
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	cmp/gt r3,r0
	bf loc_8C113920
	mov.b @(0x04,r14),r0
	mov 0x00,r10 ; r10 set to 0x00
	mov.l @(loc_8C1138D4,pc),r11 ; r11 set to bank16.loc_8c1682Dc
	mov 0x04,r8 ; r8 set to 0x04
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	bra loc_8C113900
	mov r10,r9

loc_8C11386C:
	mov 0x20,r0 ; r0 set to 0x20
	mov r9,r13
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	shll2 r13
	shll2 r13
	extu.b r0,r0
	mov r0,r3
	shll2 r0
	add r3,r0
	shll2 r0
	shll2 r0
	shll r0
	add r11,r0
	mov.l @(r0,r13),r0
	cmp/eq 0x00,r0
	bt loc_8C113894
	cmp/eq 0x01,r0
	bt loc_8C1138D8
	bra loc_8C1138Fe
	nop

loc_8C113894:
	mov r10,r12

loc_8C113896:
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov r12,r5
	mov.b @(r0,r14),r4
	extu.b r4,r4
	mov r4,r3
	shll2 r4
	add r3,r4
	shll2 r4
	shll2 r4
	shll r4
	add r11,r4
	add r13,r4
	bsr loc_8C112F34
	add 0x04,r4
	add 0x01,r12
	cmp/ge r8,r12
	bf loc_8C113896
	bra loc_8C1138Fe
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1138bc:
	#data 0x012c
loc_8c1138be:
	#data 0x00C8
loc_8c1138c0:
	#data 0x0801
	#align4

loc_8C1138C4:
	#data bank04.loc_8c044F12
loc_8C1138C8:
	#data loc_8c1135C0
loc_8c1138cc:
	#data 0x8C26A904
loc_8C1138D0:
	#data 0x8C26A8C8
loc_8C1138D4:
	#data bank16.loc_8c1682Dc

;==============================================
loc_8c1138d8:
	mov r10,r12

loc_8c1138da:
	mov 0x20,r0
	mov r12,r5
	mov.b @(r0,r14),r4
	extu.b r4,r4
	mov r4,r3
	shll2 r4
	add r3,r4
	shll2 r4
	shll2 r4
	shll r4
	add r11,r4
	add r13,r4
	bsr loc_8c113170
	add 0x04,r4
	mov 0x05,r3
	add 0x01,r12
	cmp/ge r3,r12
	bf loc_8c1138da

loc_8C1138FE:
	add 0x01,r9

loc_8C113900:
	mov 0x0A,r3 ; r3 set to 0x0A, r3 set to 0x0a
	cmp/ge r3,r9
	bf loc_8C11386c
	bra loc_8C113920
	nop

loc_8C11390A:
	lds.l @r15+,pr
	mov.l @(loc_8C1139C4,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14
	
loc_8C113920:
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
loc_8c113932:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1139c8,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c113972
	mov r0,r4
	mov.w @(loc_8C1139BE,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c1139cc,pc),r2
	mov.l @(loc_8C1139D0,pc),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r15,r2
	mov.l @r3,r3
	mov.w @(loc_8C1139C0,pc),r0
	shll2 r2
	add r3,r2
	mov.w @(loc_8C1139C2,pc),r3
	mov.l @(r0,r2),r2
	add 0x9C,r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.b r2,@(r0,r4)

loc_8c113972:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C11397A:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C11398a
	cmp/eq 0x01,r0
	bt loc_8C1139B4
	bra loc_8C1139Ba
	nop

loc_8C11398A:
	mov 0x60,r1 ; r1 set to 0x60
	fldi0 fr1
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fldi1 fr3
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fcmp/gt fr1,fr2
	bt loc_8C1139Ba
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x39
	bra loc_8C1139Ba
	mov.b r0,@(0x04,r4)

loc_8C1139B4:
	mov.l @(loc_8C1139C4,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C1139BA:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1139be:
	#data 0x012c
loc_8c1139c0:
	#data 0x00E8
loc_8c1139c2:
	#data 0x0801
	#align4

loc_8C1139C4:
	#data bank04.loc_8c0450C0
loc_8C1139C8:
	#data bank04.loc_8c044F12
loc_8C1139CC:
	#data loc_8c113800
loc_8c1139d0:
	#data 0x8C26A904

;==============================================
loc_8C1139D4:
	mov.l r14,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x108,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c113a38
	mov r0,r14
	mov.l @(0xF8,PC),r2
	mov 0x01,r3
	mov.w @(0xE8,PC),r0
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @(0x4,r15),r2
	mov.l @(0xF0,PC),r3
	mov r2,r1
	shll r2
	add r1,r2
	mov.l @r3,r0
	mov r2,r8
	mov.l @(0xE8,PC),r2
	jsr @r2
	mov.l @r0,r9
	mov.l @(0xE4,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x03,r0
	add r0,r8
	mov.w @(0xC6,PC),r0
	add 0x1C,r8
	mov.w @(0xC4,PC),r2
	shll2 r8
	mov r14,r1
	add r8,r9
	mov.l @r9,r3
	add 0x34,r1
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	mov.l @(0xC8,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0

loc_8C113A38:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C113A44:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C113A64
	cmp/eq 0x01,r0
	bt loc_8C113ACc
	bra loc_8C113AD2
	nop

loc_8c113a64:
	mov.w @(0x1C,r14),r0
	mov 0x64,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c113a76
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c113a76:
	mov.w @(loc_8C113AE4,pc),r0
	mov.l @(loc_8C113AF0,pc),r3
	mov.l @(r0,r14),r5
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	shll r2
	mov.l @r4,r4
	add 0x48,r2
	shll2 r2
	add r2,r4
	mov.l @(loc_8c113b00,pc),r2
	jsr @r2
	mov.l @(0x04,r4),r4
	mov.l @(loc_8c113b0c,pc),r13
	mova @(loc_8C113B10,pc),r0
	mov.l @(loc_8c113b08,pc),r12
	mov.l @(loc_8c113b04,pc),r11
	bra loc_8c113ac0
	fmov.s @r0,fr15

loc_8c113aa0:
mov r15,r4
	mov r15,r5
	jsr @r13
	add 0x04,r4
	mov.w @(0x1C,r14),r0
	mov r15,r4
	fmov.s @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8c113ac0:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c113aa0
	bra loc_8c113ad2
	nop

loc_8c113acc:
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r14,r4

loc_8C113AD2:
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c113ae2:
	#data 0x012c
loc_8c113ae4:
	#data 0x0084
loc_8c113ae6:
	#data 0x0807
	#align4

loc_8C113AE8:
	#data bank04.loc_8c044F12
loc_8C113AEC:
	#data loc_8c11397a
loc_8c113af0:
	#data 0x8C26A904
loc_8C113AF4:
	#data loc_8c11e730
loc_8C113AF8:
	#data bank12.loc_8c1292D4
loc_8C113AFC:
	#data bank12.loc_8c1294C8
loc_8C113B00:
	#data bank10.loc_8c108060
loc_8C113B04:
	#data bank10.loc_8c1081E6
loc_8C113B08:
	#data bank10.loc_8c108086
loc_8C113B0C:
	#data bank10.loc_8c108192
loc_8c113b10:
	#data 0x3C23D70a
loc_8C113B14:
	#data bank04.loc_8c0450C0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C113B18:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8C113C10,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C113B80
	mov r0,r14
	mov.w @(loc_8C113C06,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C113C14,pc),r2 ; r2 set to 0x8C113A44
	mov.l @(loc_8C113C18,pc),r1 ; r1 set to 0x8C26A904
	mov.b r3,@(r0,r14)
	add 0xF4,r0 ; r0 set to 0x120
	mov.l r2,@(0x10,r14)
	mov r13,r2 ; r2 ??? bc r13 is ???
	mov.l @r1,r3 ; r3 ??
	shll r2
	shll2 r2
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @r3,r3
	add 0x34,r1
	add r3,r2
	mov.w @(loc_8C113C0A,pc),r3 ; r3 set to 0x801
	mov.l @(r0,r2),r2
	mov.w @(loc_8C113C08,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov r13,r2
	mov.l r3,@(r0,r14)
	shll r2
	mov r13,r3 ; r3 ??? bc r13 is ???
	add r3,r2
	mov.l @(loc_8C113C1C,pc),r3 ; r3 set to bank16.loc_8c168700
	shll2 r2
	add r3,r2
	mov.l @(loc_8C113C20,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C113C24,pc),r3 ; r3 set to 0x8C108210
	mov.b r13,@(r0,r14)
	add 0x64,r0 ; r0 set to 0x84
	lds.l @r15+,pr
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C113B80:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c113b88:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c113c10,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c113be0
	mov r0,r4
	mov.l @(loc_8c113c28,pc),r2
	mov 0x01,r3
	mov.w @(loc_8c113c06,pc),r0
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8c113c18,pc),r2
	mov.l @(loc_8c113c2c,pc),r0
	mov.l @r2,r3
	mov r14,r2
	mov.b @(r0,r14),r1
	shll r2
	mov.l @r3,r0
	shll2 r1
	mov.l @(r0,r1),r3
	mov.w @(loc_8c113c08,pc),r1
	mov.w @(loc_8c113c0a,pc),r0
	add r4,r1
	mov.l r3,@r1
	mov r14,r3
	mov.w @(loc_8C113C0C,pc),r1
	add r3,r2
	mov.l @(loc_8c113c20,pc),r3
	shll2 r2
	add r4,r1
	mov.l r0,@r1
	mov r4,r1
	mov.l @(loc_8c113c30,pc),r0
	add 0x34,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b r14,@(r0,r4)

loc_8c113be0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C113BE6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C113C34
	cmp/eq 0x01,r0
	bt loc_8C113C80
	cmp/eq 0x02,r0
	bt loc_8C113C96
	bra loc_8C113CCe
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C113C06:
	#data 0x012c
loc_8C113C08:
	#data 0x0084
loc_8C113C0A:
	#data 0x0801
loc_8c113c0c:
	#data 0x00Cc
	#align4

loc_8C113C10:
	#data bank04.loc_8c044F12
loc_8C113C14:
	#data loc_8c113A44
loc_8C113C18:
	#data 0x8C26A904
loc_8C113C1C:
	#data bank16.loc_8c168700
loc_8C113C20:
	#data bank12.loc_8c1294C8
loc_8C113C24:
	#data bank10.loc_8c108210
loc_8C113C28:
	#data loc_8c113BE6
loc_8C113C2C:
	#data bank16.loc_8c168764
loc_8C113C30:
	#data bank16.loc_8c168724

;==============================================
loc_8C113C34:
	mov.l @(loc_8C113D38,pc),r3 ; r3 set to 0x8C26A8C8
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bt loc_8C113C8e
	mov.w @(loc_8C113D30,pc),r13 ; r13 set to 0xB48
	mov.l @(loc_8C113D3C,pc),r6 ; r6 set to 0x8C268340
	add r6,r13 ; r13 set to 0x8C268E88
	mov r6,r4 ; r4 set to 0x8C268340
	cmp/hs r13,r4
	bt/s loc_8C113CCe
	mov r6,r5 ; r5 set to 0x8C268340
	mov.w @(loc_8C113D32,pc),r6 ; r6 set to 0x5A4
	mov 0x02,r7 ; r7 set to 0x02
	mov 0x01,r12 ; r12 set to 0x01

loc_8C113C50:
	mov.b @(0x01,r4),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bf loc_8C113C74
	mov.w @(loc_8C113D34,pc),r0 ; r0 set to 0x2A5, r0 set to 0x2A5
	mov r12,r1 ; r1 set to 0x01
	mov.b @(r0,r5),r2
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	extu.b r2,r2
	extu.b r3,r3
	shad r3, r1 ; r1 ??? bc r3 is ???
	tst r1,r2
	bt loc_8C113C74
	mov r7,r0 ; r0 ??? bc r7 is ???, r0 set to 0x02
	nop
	bra loc_8C113CCe
	mov.b r0,@(0x04,r14)

loc_8C113C74:
	add r6,r4
	cmp/hs r13,r4
	bf/s loc_8C113C50
	add r6,r5
	bra loc_8C113CCe
	nop

loc_8c113c80:
	mov.w @(0x1C,r14),r0
	mov 0x28,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c113cce

loc_8C113C8E:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C113CCe
	mov.b r0,@(0x04,r14)

loc_8c113c96:
	mov 0x20,r0
	mov r15,r1
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c113d40,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c113d44,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(loc_8c113d4c,pc),r3
	mov.b @(r0,r14),r1
	mov 0x00,r5
	mov.l @(loc_8c113d48,pc),r0
	extu.b r1,r1
	shll2 r1
	fmov.s @(r0,r1),fr3
	mov 0x04,r0
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c113d50,pc),r2
	jsr @r2
	mov r14,r4

loc_8C113CCE:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C113CDA:
	mov r6,r1
	shll r1
	mov r6,r3
	mov.l @(loc_8C113D40,pc),r2 ; r2 set to bank16.loc_8c168724
	mov.l @(loc_8C113D54,pc),r7 ; r7 set to 0x8C26A524
	add r3,r1
	shll2 r1
	fmov.s @r7,fr4
	add r2,r1
	fmov.s @r1,fr3
	mov 0x08,r0 ; r0 set to 0x08
	fmov fr4,fr2 ; r2 ??? bc r4 is ???
	shll2 r6
	fsub fr3,fr2
	fmov.s @(r0,r7),fr5
	fmov.s @(r0,r1),fr3
	fmov fr5,fr1
	fsub fr3,fr1
	fmov fr4,fr3
	fmul fr5,fr2
	mov.l @(loc_8C113D48,pc),r0 ; r0 set to bank16.loc_8c168754
	fdiv fr1,fr2
	fsub fr2,fr3
	fmov.s fr3,@r4
	fmov.s @(r0,r6),fr2
	rts
	fmov.s fr2,@r5

;==============================================
loc_8C113D10:
	mova @(loc_8C113D58,pc),r0  ; r0 init to 0x8C113D58
	sts.l pr,@-r15
	fmov.s @r0,fr4
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0x58
	cmp/eq 0x00,r0
	bt/s loc_8C113D5c
	mov 0x64,r6 ; r6 set to 0x64
	cmp/eq 0x01,r0
	bt loc_8C113E1c
	cmp/eq 0x02,r0
	bf loc_8C113D2c
	bra loc_8C113E2c
	nop

loc_8C113D2C:
	bra loc_8C113E46
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C113D30:
	#data 0x0B48
loc_8C113D32:
	#data 0x05A4
loc_8C113D34:
	#data 0x02A5
	#align4

loc_8C113D38:
	#data 0x8C26A8C8
loc_8C113D3C:
	#data 0x8C268340
loc_8C113D40:
	#data bank16.loc_8c168724
loc_8C113D44:
	#data bank12.loc_8c1294C8
loc_8C113D48:
	#data bank16.loc_8c168754
loc_8C113D4C:
	#data bank0f.loc_8c0fD6B0
loc_8C113D50:
	#data bank04.loc_8c0450C0
loc_8C113D54:
	#data 0x8C26A524
loc_8C113D58:
	#data 0x3C23D70a

;==============================================
loc_8C113D5C:
	mov 0x20,r7 ; r7 set to 0x20
	mov.l @(loc_8C113EB8,pc),r5 ; r5 set to bank16.loc_8c168768
	add r4,r7 ; r7 ??? bc r4 is ???
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r4),fr3
	mov 0x18,r1 ; r1 set to 0x18
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C113EB4,pc),r0  ; r0 set to 0x8C113EB4
	mov.b @r7,r7
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	extu.b r7,r7
	mov r7,r3
	shll r7
	add r3,r7
	shll2 r7
	add r5,r7
	add r7,r1 ; r1 ??? bc r7 is ???
	fmov.s @r7,fr3
	fmov.s @r1,fr2
	mov 0x20,r7 ; r7 set to 0x20
	add r4,r7 ; r7 ??? bc r4 is ???
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.b @r7,r7
	extu.b r7,r7
	mov r7,r3
	shll r7
	add r3,r7
	shll2 r7
	mov 0x04,r1 ; r1 set to 0x04
	add r5,r7
	add r7,r1 ; r1 ??? bc r7 is ???
	fmov.s @r1,fr3
	mov 0x1C,r1 ; r1 set to 0x1c
	add r7,r1 ; r1 ??? bc r7 is ???
	fmov.s @r1,fr2
	mov 0x20,r7 ; r7 set to 0x20
	add r4,r7 ; r7 ??? bc r4 is ???
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	mov 0x08,r1 ; r1 set to 0x08
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.b @r7,r7
	extu.b r7,r7
	mov r7,r3
	shll r7
	add r3,r7
	shll2 r7
	add r5,r7
	add r7,r1 ; r1 ??? bc r7 is ???
	fmov.s @r1,fr3
	mov 0x20,r1 ; r1 set to 0x20
	add r7,r1 ; r1 ??? bc r7 is ???
	fmov.s @r1,fr2
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s @(r0,r4),fr3
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x3d
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r6,r0
	bf loc_8C113E46
	mov.b @(0x04,r4),r0
	mov r4,r1
	fldi1 fr3
	add 0x34,r1
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C113EBC,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r2
	add r5,r2
	add 0x18,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C113E46
	nop

loc_8C113E1C:
	mov.l @(loc_8C113EC0,pc),r3 ; r3 set to 0x8C26A8C8
	mov.l @r3,r0
	cmp/eq 0x02,r0
	bf loc_8C113E46
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C113E46
	mov.b r0,@(0x04,r4)

loc_8C113E2C:
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x75
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r6,r0
	bf loc_8C113E46
	mov.l @(loc_8C113EC4,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	lds.l @r15+,pr

loc_8C113E46:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c113e4c:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c113ec8,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c113ea8
	mov r0,r4
	mov.w @(loc_8C113EAE,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C113ED0,pc),r1
	mov.l @(loc_8c113ecc,pc),r2
	mov.b r3,@(r0,r4)
	add 0x2C,r0
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r3
	add r3,r2
	mov.w @(loc_8C113EB2,pc),r3
	mov.l @(r0,r2),r2
	mov.w @(loc_8C113EB0,pc),r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov r14,r2
	mov.l r3,@(r0,r4)
	shll r2
	mov r14,r3
	add r3,r2
	mov.l @(loc_8c113eb8,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c113ebc,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	fldi0 fr3
	mov.b r14,@(r0,r4)
	mov 0x74,r0
	fmov.s fr3,@(r0,r4)

loc_8c113ea8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C113EAE:
	#data 0x012C
loc_8C113EB0:
	#data 0x0084
loc_8C113EB2:
	#data 0x0821
	#align4

loc_8c113eb4:
	#data 0x42C80000
loc_8c113eb8:
	#data bank16.loc_8c168768
loc_8c113ebc:
	#data bank12.loc_8c1294c8
loc_8c113ec0:
	#data 0x8C26A8C8
loc_8c113ec4:
	#data bank04.loc_8C0450C0
loc_8c113ec8:
	#data bank04.loc_8c044f12
loc_8c113ecc:
	#data loc_8c113d10
loc_8C113ED0:
	#data 0x8C26A904

;==============================================
;Abyss Stage Code
loc_8C113ED4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C113FB8,pc),r13 ; r13 set to 0x8C11E730
	mov 0x0C,r5 ; r5 set to 0x0c
	mov.l @(loc_8C113FBC,pc),r3 ; r3 set to 0x8C26A8C8
	extu.b r0,r0
	mov.l @(loc_8C113FB0,pc),r10 ; r10 set to 0x8C042228
	cmp/eq 0x00,r0
	mov.l @(loc_8C113FB4,pc),r11 ; r11 set to 0x8C04223a
	mov 0x00,r12 ; r12 set to 0x00
	bt/s loc_8C113F18
	mov.l @r3,r4
	cmp/eq 0x01,r0
	bt loc_8C113F62
	cmp/eq 0x02,r0
	bt loc_8C113F90
	cmp/eq 0x03,r0
	bf loc_8C113F0c
	bra loc_8C114098
	nop

loc_8C113F0C:
	cmp/eq 0x04,r0
	bf loc_8C113F14
	bra loc_8C11419e
	nop

loc_8C113F14:
	bra loc_8C1141B6
	nop

loc_8C113F18:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bsr loc_8C113488
	mov.b r0,@(0x04,r14)
	mov r12,r13
	bra loc_8C113F2c
	mov 0x06,r14

loc_8C113F26:
	bsr loc_8C113548
	mov r13,r4
	add 0x01,r13

loc_8C113F2C:
	cmp/ge r14,r13
	bf loc_8C113F26
	mov r12,r13
	bra loc_8C113F3c
	mov 0x08,r11

loc_8C113F36:
	bsr loc_8C1137B8
	mov r13,r4
	add 0x01,r13

loc_8C113F3C:
	cmp/ge r11,r13
	bf loc_8C113F36
	mov r12,r13
	bra loc_8C113F4c
	mov 0x04,r11

loc_8C113F46:
	bsr loc_8C113B88
	mov r13,r4
	add 0x01,r13

loc_8C113F4C:
	cmp/ge r11,r13
	bf loc_8C113F46
	bra loc_8C113F5a
	mov r12,r13

loc_8C113F54:
	bsr loc_8C113932
	mov r13,r4
	add 0x01,r13

loc_8C113F5A:
	cmp/ge r14,r13
	bf loc_8C113F54
	bra loc_8C1141B6
	nop

loc_8C113F62:
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8C113F6e
	bra loc_8C1141B6
	nop

loc_8C113F6E:
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C113FC0,pc),r2 ; r2 set to 0x8C114AA8
	add 0x01,r0
	jsr @r2
	mov.b r0,@(0x04,r14)
	mov r12,r14
	bra loc_8C113F84
	mov 0x03,r13

loc_8C113F7E:
	bsr loc_8C113B18
	mov r14,r4
	add 0x01,r14

loc_8C113F84:
	cmp/ge r13,r14
	bf loc_8C113F7e
	jsr @r10
	mov 0x1F,r4 ; r4 set to 0x1F, r4 set to 0x1f
	bra loc_8C1141B6
	nop

loc_8C113F90:
	mov.w @(0x1C,r14),r0
	mov r0,r1
	mov r5,r0
	nop
	mov.l @(loc_8C113FC4,pc),r2 ; r2 set to 0x8C1292D4
	jsr @r2
	nop
	tst r0,r0
	bf loc_8C114032
	jsr @r13
	nop
	cmp/pz r0
	bf loc_8C113FC8
	bra loc_8C113FD2
	and 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C113FB0:
	#data bank04.loc_8c042228
loc_8C113FB4:
	#data bank04.loc_8c04223a
loc_8C113FB8:
	#data loc_8c11e730
loc_8C113FBC:
	#data 0x8C26A8C8
loc_8C113FC0:
	#data loc_8c114AA8
loc_8C113FC4:
	#data bank12.loc_8c1292D4

;==============================================
loc_8c113fc8:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c113fd2:
	mov r0,r9
	shll r9
	mov r0,r3
	add r3,r9
	mov.l @(loc_8c1140c0,pc),r2
	shll2 r9
	mov r15,r1
	mov.l @(loc_8c1140c4,pc),r3
	add r2,r9
	mov r0,r12
	mov r9,r2
	add 0x08,r1
	jsr @r3
	mov 0x0C,r0
	jsr @r13
	nop
	mov r0,r1
	mov.l @(loc_8c1140c8,pc),r2
	mov.w @(loc_8C1140B6,pc),r0
	jsr @r2
	nop
	mov.w @(loc_8C1140B8,pc),r3
	fmov.s @r9,fr2
	add r3,r0
	lds r0,fpul
	mov 0x08,r0
	float fpul,fr3
	fadd fr3,fr2
	jsr @r13
	fmov.s fr2,@(r0,r15)
	mov r0,r1
	mov.l @(loc_8c1140c8,pc),r3
	mov.w @(loc_8C1140BA,pc),r0
	jsr @r3
	nop
	mov.w @(loc_8C1140BC,pc),r2
	mov r15,r4
	mov r12,r5
	add r2,r0
	lds r0,fpul
	mov 0x08,r0
	fmov.s @(r0,r9),fr2
	mov 0x10,r0
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r15)
	bsr loc_8c1139d4
	add 0x08,r4

loc_8c114032:
	mov.w @(0x1C,r14),r0
	add 0x03,r0
	tst r0,r0
	bf loc_8c11403e
	jsr @r10
	mov 0x1E,r4

loc_8c11403e:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c1140c8,pc),r3
	mov r0,r1
	add 0x07,r1
	jsr @r3
	mov 0x0A,r0
	tst r0,r0
	bf loc_8c11406e
	jsr @r13
	nop
	cmp/pz r0
	bf loc_8c11405a
	bra loc_8c114064
	and 0x01,r0

loc_8c11405a:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c114064:
	tst r0,r0
	bt loc_8c11406e
	mov 0x30,r5
	jsr @r11
	mov r14,r4

loc_8c11406e:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c1140c8,pc),r3
	mov r0,r1
	jsr @r3
	mov 0x64,r0
	tst r0,r0
	bf loc_8c114082
	mov 0x31,r5
	jsr @r11
	mov r14,r4

loc_8c114082:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C1140BE,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c114094
	bra loc_8c114196
	nop

loc_8c114094:
	bra loc_8c1141b6
	nop

loc_8C114098:
	mov.w @(0x1C,r14),r0
	mov r0,r1
	mov r5,r0
	nop
	mov.l @(loc_8C1140C8,pc),r2 ; r2 set to 0x8C1292D4
	jsr @r2
	nop
	tst r0,r0
	bf loc_8C114136
	jsr @r13
	nop
	cmp/pz r0
	bf loc_8C1140Cc
	bra loc_8C1140D6
	and 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1140b6:
	#data 0x07D0
loc_8c1140b8:
	#data 0xFC18
loc_8c1140ba:
	#data 0x01F4
loc_8c1140bc:
	#data 0xFF06
loc_8c1140be:
	#data 0x00B4
	#align4

loc_8C1140C0:
	#data bank16.loc_8c1680E4
loc_8C1140C4:
	#data bank12.loc_8c1294C8
loc_8C1140C8:
	#data bank12.loc_8c1292D4

;==============================================
loc_8c1140cc:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c1140d6:
	mov r0,r12
	shll r12
	mov r0,r3
	add r3,r12
	mov.l @(loc_8c1141fc,pc),r2
	shll2 r12
	mov r15,r1
	mov.l @(loc_8c114200,pc),r3
	add r2,r12
	mov r0,r9
	mov r12,r2
	add 0x08,r1
	jsr @r3
	mov 0x0C,r0
	jsr @r13
	nop
	mov r0,r1
	mov.l @(loc_8c114204,pc),r2
	mov.w @(loc_8C1141F0,pc),r0
	jsr @r2
	nop
	mov.w @(loc_8C1141F2,pc),r3
	fmov.s @r12,fr2
	add r3,r0
	lds r0,fpul
	mov 0x08,r0
	float fpul,fr3
	fadd fr3,fr2
	jsr @r13
	fmov.s fr2,@(r0,r15)
	mov r0,r1
	mov.l @(loc_8c114204,pc),r3
	mov.w @(loc_8C1141F4,pc),r0
	jsr @r3
	nop
	mov.w @(loc_8C1141F6,pc),r2
	mov r15,r4
	mov r9,r5
	add r2,r0
	lds r0,fpul
	mov 0x08,r0
	fmov.s @(r0,r12),fr2
	mov 0x10,r0
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r15)
	bsr loc_8c1139d4
	add 0x08,r4

loc_8c114136:
	mov.w @(0x1C,r14),r0
	add 0x03,r0
	tst r0,r0
	bf loc_8c114142
	jsr @r10
	mov 0x1E,r4

loc_8c114142:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c114204,pc),r3
	mov r0,r1
	add 0x07,r1
	jsr @r3
	mov 0x14,r0
	tst r0,r0
	bf loc_8c114172
	jsr @r13
	nop
	cmp/pz r0
	bf loc_8c11415e
	bra loc_8c114168
	and 0x01,r0

loc_8c11415e:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c114168:
	tst r0,r0
	bt loc_8c114172
	mov 0x30,r5
	jsr @r11
	mov r14,r4

loc_8c114172:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c114204,pc),r3
	mov r0,r1
	mov.w @(loc_8C1141F8,pc),r0
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c114188
	mov 0x31,r5
	jsr @r11
	mov r14,r4

loc_8c114188:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C1141FA,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c1141b6

loc_8c114196:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8c1141b6
	mov.b r0,@(0x04,r14)

loc_8c11419e:
	mov r4,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c1141b6
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	jsr @r10
	mov 0x1F,r4
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x44,r4

loc_8C1141B6:
	mov r15,r5
	add 0x04,r5
	mov 0x00,r6 ; r6 set to 0x00
	bsr loc_8C113CDa
	mov r15,r4
	mov r15,r5
	add 0x04,r5
	mov 0x01,r6 ; r6 set to 0x01
	bsr loc_8C113CDa
	mov r15,r4
	mov r15,r5
	add 0x04,r5
	mov 0x02,r6 ; r6 set to 0x02
	bsr loc_8C113CDa
	mov r15,r4
	mov r15,r5
	add 0x04,r5
	mov 0x03,r6 ; r6 set to 0x03
	bsr loc_8C113CDa
	mov r15,r4
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1141f0:
	#data 0x07D0
loc_8c1141f2:
	#data 0xFC18
loc_8c1141f4:
	#data 0x01F4
loc_8c1141f6:
	#data 0xFF06
loc_8c1141f8:
	#data 0x00C8
loc_8c1141fa:
	#data 0x0168
	#align4

loc_8C1141FC:
	#data bank16.loc_8c1680E4
loc_8C114200:
	#data bank12.loc_8c1294C8
loc_8C114204:
	#data bank12.loc_8c1292D4
loc_8C114208:
	#data bank04.loc_8c04257c

;==============================================
loc_8C11420C:
	sts.l pr,@-r15
	mov.l @(0x18,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c114222
	mov r0,r4
	mov.l @(0xC,PC),r3
	mov.l r3,@(0x10,r4)

loc_8C114222:
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C114228:
	#data bank04.loc_8c044F12
loc_8C11422C:
	#data loc_8c113ED4


;==============================================
loc_8C114230:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x04,r13 ; r13 set to 0x04
	sts.l pr,@-r15

loc_8C11423A:
	bsr loc_8C11424c
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C11423a
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c11424c:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c114344,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1142a0
	mov r0,r4
	mov.w @(loc_8C11433E,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c11434c,pc),r1
	mov.l @(loc_8c114348,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov.w @(loc_8C114340,pc),r0
	mov r4,r1
	mov.l @r3,r3
	add 0x34,r1
	add r3,r2
	mov.l @(0x18,r2),r3
	mov.w @(loc_8C114342,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov r14,r2
	shll r2
	mov r14,r3
	add r3,r2
	mov.l @(loc_8c114350,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c114354,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b r14,@(r0,r4)

loc_8c1142a0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C1142A6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8C11432e
	mov.w @(0x1C,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8C11431c
	mov.l @(loc_8C11434C,pc),r2 ; r2 set to 0x8C26A904
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1C,r14)
	mov.l @(loc_8C114358,pc),r1 ; r1 set to 0x8C11E730
	mov.l @r2,r0 ; r0 ??
	jsr @r1
	mov.l @r0,r8
	cmp/pz r0
	bf loc_8C1142Da
	bra loc_8C1142E4
	and 0x03,r0

loc_8c1142da:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c1142e4:
	add 0x06,r0
	mov.l @(loc_8c114358,pc),r2
	shll2 r0
	mov.l @(r0,r8),r3
	mov.w @(loc_8C114340,pc),r0
	jsr @r2
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c11435c,pc),r3
	mov r0,r1
	jsr @r3
	mov 0x5A,r0
	lds r0,fpul
	mova @(loc_8C114360,pc),r0
	fmov.s @r0,fr2
	mova @(loc_8C114364,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C114368,pc),r0
	float fpul,fr3
	fmov.s @r0,fr0
	mov.l @(loc_8C11436C,pc),r2
	mov 0x48,r0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)

loc_8c11431c:
	mov.l @(loc_8c114370,pc),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt loc_8c11432e
	mov 0x20,r0
	mov.b @(r0,r14),r4
	bsr loc_8c1143dc
	extu.b r4,r4

loc_8C11432E:
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C114374
	cmp/eq 0x01,r0
	bt loc_8C11439e
	bra loc_8C1143D4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11433e:
	#data 0x012c
loc_8c114340:
	#data 0x0084
loc_8c114342:
	#data 0x0989
	#align4

loc_8C114344:
	#data bank04.loc_8c044F12
loc_8C114348:
	#data loc_8c1142A6
loc_8C11434C:
	#data 0x8C26A904
loc_8C114350:
	#data bank16.loc_8c168798
loc_8C114354:
	#data bank12.loc_8c1294C8
loc_8C114358:
	#data loc_8c11e730
loc_8C11435C:
	#data bank12.loc_8c1292D4
loc_8c114360:
	#data 0x47800000
loc_8c114364:
	#data 0x43B40000
loc_8c114368:
	#data 0x3F000000
loc_8c11436c:
	#data 0x0000FFFf
loc_8C114370:
	#data bank04.loc_8c046AE0

;==============================================
;Abyss Stage Code
loc_8C114374:
	mov.l @(loc_8C11448C,pc),r1 ; r1 set to 0x8C26A8C8
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @r1,r2
	cmp/ge r3,r2
	bf loc_8C1143D4
	mov.b @(0x05,r14),r0
	mov.w @(loc_8C114480,pc),r2 ; r2 set to 0x400
	add 0x01,r0
	fldi1 fr4
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C114482,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r14),r1 ; r1 ??? bc r14 is ???
	or r2,r1
	mov.l r1,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	bra loc_8C1143D4
	fmov.s fr4,@(r0,r14)

loc_8C11439E:
	mova @(loc_8C114490,pc),r0  ; r0 init to 0x8C114490
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r14),fr3
	mov 0x1E,r3 ; r3 set to 0x1e
	fsub fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r14),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0 ; r0 set to 0x81
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C1143D4
	lds.l @r15+,pr
	mov.l @(loc_8C114494,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r8
	jmp @r1
	mov.l @r15+,r14

loc_8C1143D4:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1143DC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xB4,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c114430
	mov r0,r4
	mov.l @(0xA8,PC),r2
	mov 0x01,r3
	mov.w @(0x8A,PC),r0
	mov.l @(0xA4,PC),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0xA4,PC),r2
	mov.l @r1,r3
	mov r4,r1
	mov.b @r2,r0
	add 0x34,r1
	mov.l @r3,r3
	shll2 r0
	mov.w @(0x7A,PC),r2
	add r3,r0
	mov.w @(0x72,PC),r3
	mov.l @(r0,r3),r3
	mov.w @(0x70,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @r15,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x80,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x80,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8C114430:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C114438:
	mov.l @(0x64,PC),r0
	mov 0x00,r3
	mov.l @(0x64,PC),r2
	mov.l @r0,r1
	mov.w @(0x1C,r4),r0
	cmp/gt r0,r3
	addc r3,r0
	mov.l @r1,r3
	shar r0
	mov.b @(r0,r2),r2
	mov.w @(0x36,PC),r0
	shll2 r2
	add r3,r2
	mov.l @(r0,r2),r2
	add 0x84,r0
	mov 0x1A,r3
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/hs r3,r0
	bf.s loc_8c11446e
	mov 0x00,r6
	mov r6,r0
	nop 
	mov.w r0,@(0x1C,r4)

loc_8C11446E:
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c1144b0
	mov 0x1E,r5
	cmp/eq 0x01,r0
	bt loc_8c1144e2
	bra loc_8c114510
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C114480:
	#data 0x0400
loc_8C114482:
	#data 0x00Cc
loc_8C114484:
	#data 0x012c
loc_8C114486:
	#data 0x0100
loc_8C114488:
	#data 0x0084
loc_8C11448a:
	#data 0x0981
	#align4

loc_8C11448C:
	#data 0x8C26A8C8
loc_8C114490:
	#data 0x3D088889
loc_8C114494:
	#data bank04.loc_8c0450C0
loc_8C114498:
	#data bank04.loc_8c044F12
loc_8C11449C:
	#data loc_8c114438
loc_8C1144a0:
	#data 0x8C26A904
loc_8C1144A4:
	#data bank16.loc_8c1687F8
loc_8C1144A8:
	#data bank16.loc_8c1687C8
loc_8C1144AC:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C1144B0:
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c114510
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov r6,r0
	nop 
	mov.w r0,@(0x1E,r4)
	mov.w @(0x4A,PC),r0
	mov.w @(0x46,PC),r3
	mov.l @(r0,r4),r2
	fldi1 fr4
	or r3,r2
	mov.l r2,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	bra loc_8c114510
	fmov fr4,@(r0,r4)

loc_8C1144E2:
	mova @(0x34,PC),r0
	fmov @r0,fr4
	mov 0x78,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/ge r5,r0
	bf loc_8c114510
	mov.l @(0x10,PC),r3
	jmp @r3
	nop 

loc_8C114510:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c114514:
	#data 0x0400
loc_8c114516:
	#data 0x00CC
	#align4

loc_8C114518:
	#data 0x3D088889
loc_8C11451C:
	#data bank04.loc_8c0450C0

;==============================================
;Abyss Code 3
loc_8C114520:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C1145C0,pc),r3 ; r3 set to 0x8C26A8C8
	extu.b r0,r0
	fldi0 fr5
	cmp/eq 0x00,r0
	bt/s loc_8C114546
	mov.l @r3,r4
	cmp/eq 0x01,r0
	bt loc_8C11456c
	bra loc_8C114682
	nop

loc_8C114546:
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8C114552
	bra loc_8C114682
	nop

loc_8C114552:
	mov.b @(0x04,r14),r0
	mov 0x01,r2 ; r2 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C1145BC,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr5,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr5,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	bra loc_8C114682
	fmov.s fr5,@(r0,r14)

loc_8C11456C:
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C114586
	fldi1 fr4
	cmp/eq 0x01,r0
	bt loc_8C1145Ac
	cmp/eq 0x02,r0
	bt loc_8C1145C8
	cmp/eq 0x03,r0
	bt loc_8C114624
	bra loc_8C114624
	nop

loc_8C114586:
	mov.l @(loc_8C1145C4,pc),r1 ; r1 set to 0x3B088889
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr4
	bt/s loc_8C114624
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x7d
	mov.b r0,@(0x05,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr5,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	bra loc_8C114624
	fmov.s fr5,@(r0,r14)

loc_8C1145AC:
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8C114624
	mov.b @(0x05,r14),r0
	add 0x01,r0
	bra loc_8C114624
	mov.b r0,@(0x05,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1145BC:
	#data 0x012c
	#align4

loc_8C1145C0:
	#data 0x8C26A8C8
loc_8C1145C4:
	#data 0x3B088889

;==============================================
loc_8c1145c8:
	mov.l @(loc_8c1146ec,pc),r4
	mov 0x78,r0
	fmov fr4,fr2
	mov.l @r4,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @(r0,r14),fr3
	fadd fr2,fr3
	fmov fr4,fr2
	fmov.s fr3,@(r0,r14)
	mov 0x7C,r0
	mov.l @r4,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @(r0,r14),fr3
	fsub fr2,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C1146F0,pc),r0
	mov.l @r4,r2
	fmov.s @r0,fr5
	lds r2,fpul
	fmov fr5,fr2
	mov.w @(loc_8C1146E0,pc),r0
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @(r0,r14),fr3
	fadd fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	mov.l @r4,r2
	cmp/ge r2,r0
	bf loc_8c114624
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x78,r0
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0
	fmov.s fr5,@(r0,r14)
	add 0x04,r0
	fmov.s fr5,@(r0,r14)

loc_8c114624:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C1146E2,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c114636
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c114636:
	mov.l @(loc_8c1146f4,pc),r3
	mov.w @(loc_8c1146e4,pc),r0
	mov.l @r3,r4
	mov.l @(loc_8c1146f8,pc),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x2C,r2),r4
	mov.l @(loc_8c114704,pc),r13
	mova @(loc_8C114708,pc),r0
	mov.l @(loc_8c114700,pc),r12
	mov.l @(loc_8c1146fc,pc),r11
	bra loc_8c114672
	fmov.s @r0,fr15

loc_8c114652:
	mov r15,r4
	mov r15,r5
	jsr @r11
	add 0x04,r4
	mov.w @(0x1C,r14),r0
	mov r15,r4
	fmov.s @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@r15
	jsr @r13
	add 0x04,r4

loc_8c114672:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c114652
	mov 0x48,r0
	mov.l @(r0,r14),r2
	add 0x37,r2
	mov.l r2,@(r0,r14)

loc_8C114682:
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C114692:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.l @(loc_8C11470C,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C1146Da
	mov r0,r14
	mov.w @(loc_8C1146E6,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8C1146F4,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C114710,pc),r2 ; r2 set to 0x8C114520
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C1146E4,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x28,r2),r3
	mov.w @(loc_8C1146E8,pc),r2 ; r2 set to 0xD09
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov.l @(loc_8C114714,pc),r2 ; r2 set to bank16.loc_8c168808
	mov.l @(loc_8C114718,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C1146E4,pc),r0 ; r0 set to 0x84
	lds.l @r15+,pr
	mov.l @(loc_8C11471C,pc),r3 ; r3 set to 0x8C108210
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C1146DA:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================
loc_8c1146e0:
	#data 0x0080
loc_8c1146e2:
	#data 0x03E8
loc_8C1146E4:
	#data 0x0084
loc_8C1146E6:
	#data 0x012c
loc_8C1146E8:
	#data 0x0D09
	#align4

loc_8C1146EC:
	#data bank16.loc_8c168814
loc_8c1146f0:
	#data 0x3E4CCCCd
loc_8C1146F4:
	#data 0x8C26A904
loc_8C1146F8:
	#data bank10.loc_8c108060
loc_8C1146FC:
	#data bank10.loc_8c108192
loc_8C114700:
	#data bank10.loc_8c108086
loc_8C114704:
	#data bank10.loc_8c1081E6
loc_8c114708:
	#data 0x3A83126f
loc_8C11470C:
	#data bank04.loc_8c044F12
loc_8C114710:
	#data loc_8c114520
loc_8C114714:
	#data bank16.loc_8c168808
loc_8C114718:
	#data bank12.loc_8c1294C8
loc_8C11471C:
	#data bank10.loc_8c108210

;==============================================
;Abyss Stage Code 4
loc_8C114720:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c1147dc
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	cmp/ge r0,r3
	bf loc_8c11475c
	mov.l @(0x120,PC),r3
	jsr @r3
	nop 
	mov.l @(0x11C,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x1B,r0
	add 0x18,r0
	mov.w r0,@(0x1E,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C11475C:
	mov.l @(0x110,PC),r2
	mov.w @(0x1C,r14),r0
	mov.l @r2,r3
	mov.l @(0x110,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x03,r0
	mov.l @r3,r3
	shll2 r0
	mov.l @(0x108,PC),r12
	add r3,r0
	mov.l @(0x108,PC),r13
	mov.l @(0x30,r0),r2
	mov.w @(0xE6,PC),r0
	mov.l r2,@(r0,r14)
	mova @(0x104,PC),r0
	mov.l @r12,r4
	fmov @r0,fr14
	mova @(0x100,PC),r0
	mov.l @(0x20,r4),r4
	fmov @r0,fr15
	jsr @r13
	shll2 r4
	fmov fr0,fr3
	fmov fr14,fr0
	fmov fr15,fr7
	fmac fr0,fr3,fr7
	fmov fr7,@-r15
	mov.l @r12,r4
	mov.l @(0x20,r4),r4
	jsr @r13
	shll r4
	fmov fr0,fr3
	fmov fr14,fr0
	fmov fr15,fr6
	fmac fr0,fr3,fr6
	fmov fr6,@-r15
	mov.l @r12,r4
	jsr @r13
	mov.l @(0x20,r4),r4
	fmov fr0,fr3
	fmov fr14,fr0
	fmov fr15,fr5
	fmac fr0,fr3,fr5
	mov.w @(0xA8,PC),r0
	fmov @r15+,fr6
	mov.l @(r0,r14),r4
	mov.l @(0xCC,PC),r3
	fldi1 fr4
	jsr @r3
	fmov @r15+,fr7
	mov.l @(0xC8,PC),r2
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c1147dc
	lds.l @r15+,pr
	mov.l @(0xC0,PC),r1
	mov r14,r4
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C1147DC:
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1147ea:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c114894,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c11483c
	mov r0,r4
	mov.w @(loc_8C114862,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c114898,pc),r2
	mov.l @(loc_8C114870,pc),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	mov.l @r3,r3
	shll2 r2
	add r3,r2
	mov.w @(loc_8C114864,pc),r3
	mov.l @(0x30,r2),r0
	mov.w @(loc_8C114860,pc),r2
	add r4,r2
	mov.l r0,@r2
	mov.w @(loc_8C114866,pc),r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c11489c,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c1148a0,pc),r3
	jsr @r3
	mov 0x0C,r0

loc_8c11483c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C114844:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x02,r13 ; r13 set to 0x02
	sts.l pr,@-r15

loc_8C11484E:
	bsr loc_8C1147Ea
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C11484e
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c114860:
	#data 0x0084
loc_8c114862:
	#data 0x012C
loc_8c114864:
	#data 0x0901
loc_8c114866:
	#data 0x00CC
loc_8C114868:
	#data loc_8c11e730
loc_8C11486C:
	#data bank12.loc_8c1292D4
loc_8c114870:
	#data 0x8C26A904
loc_8C114874:
	#data bank12.loc_8c129128
loc_8C114878:
	#data 0x8C26823c
loc_8C11487C:
	#data loc_8c11E860
loc_8C114880:
	#data 0x3E800000
loc_8C114884:
	#data 0x3F400000
loc_8C114888:
	#data bank10.loc_8c10837c
loc_8C11488c:
	#data 0x8C26A8C8
loc_8C114890:
	#data bank04.loc_8c0450C0
loc_8C114894:
	#data bank04.loc_8c044F12
loc_8C114898:
	#data loc_8c114720
loc_8C11489C:
	#data bank16.loc_8c168818
loc_8C1148A0:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C1148A4:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C1148Ba
	mov 0x02,r6 ; r6 set to 0x02
	cmp/eq 0x01,r0
	bt loc_8C1148Ca
	cmp/eq 0x02,r0
	bt loc_8C114914
	bra loc_8C114914
	nop

;Abyss Stage Code 5
loc_8C1148BA:
	mov.l @(loc_8C114964,pc),r2 ; r2 set to 0x8C26A8C8
	mov.l @r2,r3
	cmp/ge r6,r3
	bf loc_8C114914
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C114914
	mov.b r0,@(0x04,r4)

loc_8c1148ca:
	mov.l @(loc_8c114968,pc),r5
	mov 0x78,r0
	fldi1 fr4
	mov.l @r5,r2
	fmov fr4,fr2
	lds r2,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @(r0,r4),fr3
	fadd fr2,fr3
	fmov fr4,fr2
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	mov.l @r5,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @(r0,r4),fr3
	fsub fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	mov.l @r5,r3
	cmp/ge r3,r0
	bf loc_8c114914
	mov r6,r0
	nop
	mov.b r0,@(0x04,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r4)

loc_8C114914:
	rts
	nop

;==============================================
loc_8C114918:
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c114956
	mov r0,r4
	mov.w @(0x2E,PC),r0
	mov 0x01,r3
	mov.l @(0x44,PC),r1
	mov.l @(0x3C,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0x22,PC),r0
	mov.l @r3,r2
	fldi0 fr4
	mov.l @r2,r3
	mov.w @(0x1C,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8C114956:
	lds.l @r15+,pr
	rts 
	nop 


;==============================================
loc_8c11495c:
	#data 0x012c
loc_8c11495e:
	#data 0x0084
loc_8c114960:
	#data 0x0C01
	#align4

loc_8C114964:
	#data 0x8C26A8C8
loc_8C114968:
	#data bank16.loc_8c168830
loc_8C11496C:
	#data bank04.loc_8c044F12
loc_8C114970:
	#data loc_8c1148A4
loc_8C114974:
	#data 0x8C26A904

;==============================================
;Abyss Stage Code 6
loc_8C114978:
	mov.l @(0x108,PC),r1
	mov 0x01,r3
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r1,r2
	cmp/ge r3,r2
	bf.s loc_8c11498e
	mov r4,r14
	mov.l @(0xFC,PC),r2
	jsr @r2
	mov r14,r4

loc_8C11498E:
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c1149a0
	mov 0x00,r4
	cmp/eq 0x01,r0
	bt loc_8c1149f8
	bra loc_8c114a12
	nop 

loc_8C1149A0:
	mov.w @(0xD6,PC),r0
	mov 0x01,r3
	mov 0x00,r1
	mov.l @(0xE4,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x20,r3
	mov.w @(0x1C,r14),r0
	add r14,r3
	mov.b @r3,r3
	cmp/gt r0,r1
	addc r1,r0
	extu.b r3,r3
	shar r0
	shll2 r3
	add r0,r3
	mov.l @r2,r0
	add 0x4E,r3
	mov.l @r0,r0
	shll2 r3
	mov.l @(r0,r3),r1
	mov 0x08,r3
	mov.w @(0xAE,PC),r0
	mov.l r1,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c114a12
	mov r4,r0
	nop 
	mov.l @(0xB0,PC),r1
	jsr @r1
	mov.w r0,@(0x1C,r14)
	mov.l @(0xAC,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x1E,r0
	add 0x1E,r0
	mov.w r0,@(0x1E,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c114a12
	mov.b r0,@(0x4,r14)

loc_8C1149F8:
	mov.w @(0x7E,PC),r0
	mov.b r4,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	exts.w r0,r3
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r0,r3
	bf loc_8c114a12
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov.b r0,@(0x4,r14)

loc_8C114A12:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c114a18:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c114a98,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c114a56
	mov r0,r4
	mov.w @(loc_8C114A7E,pc),r2
	mov r4,r1
	mov.w @(loc_8C114A80,pc),r0
	add 0x34,r1
	mov.l @(loc_8c114a9c,pc),r3
	mov.l r3,@(0x10,r4)
	mov.l r2,@(r0,r4)
	mov.l @r15,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c114aa0,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c114aa4,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov 0x20,r0
	mov.b r1,@(r0,r4)

loc_8c114a56:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C114A5E:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x02,r13 ; r13 set to 0x02
	sts.l pr,@-r15

loc_8C114A68:
	bsr loc_8C114A18
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C114A68
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c114a7a:
	#data 0x012c
loc_8c114a7c:
	#data 0x0084
loc_8c114a7e:
	#data 0x0901
loc_8c114a80:
	#data 0x00Cc
	#align4

loc_8c114a84:
	#data 0x8C26A8C8
loc_8C114A88:
	#data bank04.loc_8c0450C0
loc_8C114A8c:
	#data 0x8C26A904
loc_8C114A90:
	#data loc_8c11e730
loc_8C114A94:
	#data bank12.loc_8c1292D4
loc_8C114A98:
	#data bank04.loc_8c044F12
loc_8C114A9C:
	#data loc_8c114978
loc_8C114AA0:
	#data bank16.loc_8c168834
loc_8C114AA4:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C114AA8:
mov.l r14,@-r15
	mov 0x08,r5 ; r5 set to 0x08
	sts.l pr,@-r15
	mov.l @(loc_8C114BA0,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C114B00
	mov r0,r14
	mov.w @(loc_8C114B9A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C114BA8,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C114BA4,pc),r2 ; r2 set to 0x8C114B06
	mov.b r3,@(r0,r14)
	add 0x90,r0 ; r0 set to 0xBc
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov r14,r1 ; r1 ??? bc r14 is ???
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(r0,r2),r3
	add 0xC8,r0 ; r0 set to 0x84
	mov.w @(loc_8C114B9C,pc),r2 ; r2 set to 0xC01
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov.l @(loc_8C114BAC,pc),r2 ; r2 set to 0x8C13EBFc
	mov.l @(loc_8C114BB0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x78,r0 ; r0 set to 0x78
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x84
	lds.l @r15+,pr
	mov.l @(loc_8C114BB4,pc),r3 ; r3 set to 0x8C108210
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C114B00:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C114B06:
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
	add 0xEC,r15
	mov.w @(0x76,PC),r0
	mov r4,r14
	mov.l @(0x90,PC),r2
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x70,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf.s loc_8c114b48
	mov 0x00,r13
	mov.l @(0x84,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bf loc_8c114b48
	mov.l @(0x80,PC),r1
	jsr @r1
	nop 
	cmp/eq 0x02,r0
	bf loc_8c114b4c

loc_8C114B48:
	mov.w @(0x4E,PC),r0
	mov.b r13,@(r0,r14)

loc_8C114B4C:
	mova @(0x74,PC),r0
	fmov @r0,fr4
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c114b6a
	fldi1 fr15
	cmp/eq 0x01,r0
	bt loc_8c114b8a
	cmp/eq 0x02,r0
	bt loc_8c114bd0
	cmp/eq 0x03,r0
	bt loc_8c114bfe
	bra loc_8c114bfe
	nop 

loc_8C114B6A:
	mov 0x7C,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x54,PC),r0
	fmov @r0,fr4
	mov 0x7C,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt loc_8c114bfe
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x7C,r0
	bra loc_8c114bfe
	fmov fr4,@(r0,r14)

loc_8C114B8A:
	mov.l @(0x40,PC),r2
	mov.l @r2,r0
	cmp/eq 0x02,r0
	bf loc_8c114bfe
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c114bfe
	mov.b r0,@(0x4,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C114B9A:
	#data 0x012c
loc_8C114B9C:
	#data 0x0C01
loc_8C114B9e:
	#data 0x0098
	#align4

loc_8C114BA0:
	#data bank04.loc_8c044F12
loc_8C114BA4:
	#data loc_8c114B06
loc_8C114BA8:
	#data 0x8C26A904
loc_8C114BAC:
	#data bank13.loc_8c13ebFc
loc_8C114BB0:
	#data bank12.loc_8c1294C8
loc_8C114BB4:
	#data bank10.loc_8c108210
loc_8C114BB8:
	#data 0x8C26823c
loc_8C114BBc:
	#data 0x8C2895F6
loc_8C114BC0:
	#data bank03.loc_8c0310F2
loc_8C114BC4:
	#data 0x3B3F258c
loc_8C114BC8:
	#data 0x3F333333
loc_8C114BCc:
	#data 0x8C26A8C8

;==============================================
loc_8C114BD0:
	mov.l @(0x114,PC),r1
	mov 0x78,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov @(r0,r14),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x78,r0
	fmov @(r0,r14),fr1
	fcmp/gt fr1,fr15
	bt loc_8c114bfe
	mov.b @(0x4,r14),r0
	fldi0 fr2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x78,r0
	fmov fr15,@(r0,r14)
	mov 0x7C,r0
	fmov fr2,@(r0,r14)

loc_8C114BFE:
	mov.w @(0x1C,r14),r0
	mov.w @(0xDE,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c114c12
	mov r13,r0
	nop 
	mov.w r0,@(0x1C,r14)

loc_8C114C12:
	mov.w @(0xCE,PC),r3
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c114c20
	mov r13,r0
	nop 
	mov.w r0,@(0x1E,r14)

loc_8C114C20:
	mov.w @(0x1E,r14),r0
	mov.l @(0xC8,PC),r3
	add 0x0A,r0
	mov.l @(0xC8,PC),r1
	mov.w r0,@(0x1E,r14)
	mov.l @r3,r4
	mov.w @(0xB6,PC),r0
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	add 0x3C,r0
	jsr @r1
	mov.l @(r0,r2),r4
	mova @(0xD0,PC),r0
	mov.l @(0xCC,PC),r13
	fmov @r0,fr12
	mova @(0xD0,PC),r0
	fmov @r0,fr13
	mova @(0xD0,PC),r0
	mov.l @(0xB0,PC),r9
	mov.l @(0xAC,PC),r8
	mov.l @(0xB0,PC),r10
	mov.l @(0xB8,PC),r12
	mov.l @(0xB0,PC),r11
	bra loc_8c114cbe
	fmov @r0,fr14

loc_8C114C52:
	mov r15,r4
	jsr @r9
	add 0x08,r4
	mov 0x0C,r0
	fldi0 fr3
	fmov @(r0,r15),fr2
	fcmp/gt fr3,fr2
	bf loc_8c114c96
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xAC,PC),r0
	fmov @r0,fr0
	mov 0x08,r0
	float fpul,fr2
	fmov @(r0,r15),fr1
	mova @(0xA8,PC),r0
	fmac fr0,fr1,fr2
	fmov @r0,fr1
	fmul fr1,fr2
	fdiv fr12,fr2
	fmov fr2,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r11
	and r13,r4
	mov 0x0C,r0
	fmov fr0,fr3
	fmov @(r0,r15),fr2
	mov 0x0C,r0
	fmov fr15,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)

loc_8C114C96:
	mov r15,r4
	jsr @r10
	add 0x08,r4
	mov r15,r5
	add 0x04,r5
	jsr @r8
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	fmov fr14,fr0
	mov.l @(0x6C,PC),r3
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r15
	jsr @r3
	mov r15,r4

loc_8C114CBE:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c114c52
	add 0x14,r15
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
loc_8c114ce2:
	#data 0x00C8
loc_8c114ce4:
	#data 0x0168
loc_8c114ce6:
	#data 0x0084
	#align4

loc_8c114ce8:
	#data 0x3B888889
loc_8c114cec:
	#data 0x8C26A904
loc_8C114CF0:
	#data bank10.loc_8c108060
loc_8C114CF4:
	#data bank10.loc_8c108192
loc_8C114CF8:
	#data bank10.loc_8c108168
loc_8C114CFC:
	#data bank10.loc_8c1081B4
loc_8C114D00:
	#data loc_8c11E860
loc_8C114D04:
	#data bank10.loc_8c108086
loc_8C114D08:
	#data 0x0000FFFf
loc_8C114D0c:
	#data 0x43B40000
loc_8C114D10:
	#data 0x3F000000
loc_8C114D14:
	#data 0x3BA3D70a
loc_8C114D18:
	#data 0x41200000
loc_8C114D1c:
	#data 0x47800000
loc_8C114D20:
	#data bank10.loc_8c1081E6

;==============================================
loc_8C114D24:
	sts.l pr,@-r15
	mov.l @(0x104,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c114d52
	mov r0,r4
	mov.l @(0xF8,PC),r1
	mov 0x00,r3
	mov.w @(0xE4,PC),r0
	mov.b r3,@(r0,r4)
	mov.l @r1,r2
	mov.w @(0xE0,PC),r0
	mov.l @r2,r3
	mov.l @(0xEC,PC),r2
	mov.l @(0x3C,r3),r3
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.w @(0xD6,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)

loc_8C114D52:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C114D58:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C114D68
	cmp/eq 0x01,r0
	bt loc_8C114D6c
	bra loc_8C114D70
	nop

loc_8C114D68:
	bra loc_8C114D74
	nop

loc_8C114D6C:
	bra loc_8C114DD8
	nop

loc_8C114D70:
	rts
	nop

loc_8c114d74:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov 0x3C,r3
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c114dd0
	mov.b @(0x04,r14),r0
	mov 0x01,r2
	mov.l @(loc_8c114e3c,pc),r3
	mov r14,r1
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	add 0x34,r1
	mov.w @(loc_8C114E22,pc),r0
	mov.b r2,@(r0,r14)
	mov.l @(loc_8c114e38,pc),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c114e40,pc),r1
	mov 0x34,r8
	jsr @r1
	add r14,r8
	mov r0,r1
	mov.l @(loc_8c114e48,pc),r3
	mov.l @(loc_8C114E44,pc),r0
	jsr @r3
	nop
	mov.w @(loc_8C114E28,pc),r2
	fmov.s @r8,fr2
	add r2,r0
	lds r0,fpul
	mov.w @(loc_8C114E2A,pc),r0
	float fpul,fr3
	fadd fr3,fr2
	fldi1 fr3
	fmov.s fr2,@r8
	fmov.s fr3,@(r0,r14)
	mov 0x7C,r0
	fmov.s fr3,@(r0,r14)
	mov 0x78,r0
	fmov.s fr3,@(r0,r14)

loc_8c114dd0:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

loc_8C114DD8:
	mov.l @(loc_8C114E4C,pc),r1 ; r1 set to 0xC3110000
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	mov.l @(loc_8C114E50,pc),r1 ; r1 set to 0xC2A80000
	fsts fpul,fr3
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	fsts fpul,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x38
	cmp/eq 0x00,r0
	bt/s loc_8C114E06
	mov 0x00,r5 ; r5 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C114E54
	bra loc_8C114E84
	nop

loc_8C114E06:
	mov.w @(0x1C,r4),r0
	mov 0x32,r3 ; r3 set to 0x32
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8C114E84
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov r5,r0
	nop
	bra loc_8C114E84
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c114e22:
	#data 0x012c
loc_8c114e24:
	#data 0x0084
loc_8c114e26:
	#data 0x0C01
loc_8c114e28:
	#data 0xD8F0
loc_8c114e2a:
	#data 0x0080
	#align4

loc_8C114E2C:
	#data bank04.loc_8c044F12
loc_8C114E30:
	#data 0x8C26A904
loc_8C114E34:
	#data loc_8c114D58
loc_8C114E38:
	#data bank13.loc_8c13ec08
loc_8C114E3C:
	#data bank12.loc_8c1294C8
loc_8C114E40:
	#data loc_8c11e730
loc_8c114e44:
	#data 0x0000C350
loc_8C114E48:
	#data bank12.loc_8c1292D4
loc_8C114E4C:
	#data 0xC3110000
loc_8C114E50:
	#data 0xC2A80000

;==============================================
loc_8c114e54:
	mova @(loc_8C114E8C,pc),r0
	fmov.s @r0,fr4
	mov 0x78,r0
	fmov.s @(r0,r4),fr1
	fsub fr4,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x7C,r0
	fmov.s @(r0,r4),fr0
	fsub fr4,fr0
	fmov.s fr0,@(r0,r4)
	add 0x04,r0
	fmov.s @(r0,r4),fr1
	fldi0 fr0
	fsub fr4,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x78,r0
	fmov.s @(r0,r4),fr1
	fcmp/gt fr0,fr1
	bt loc_8c114e84
	mov r5,r0
	nop
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C114E88,pc),r0
	mov.b r5,@(r0,r4)

loc_8C114E84:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c114e88:
	#data 0x012c
	#align4

loc_8c114e8c:
	#data 0x3CA3D70a

;==============================================
loc_8C114E90:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.l @(loc_8C114F54,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C114ECe
	mov r0,r14
	mov.l @(loc_8C114F58,pc),r1 ; r1 set to 0x8C26A904
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C114F4C,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x4C,r0 ; r0 set to 0x4c
	mov.l @r1,r2
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C114F5C,pc),r2 ; r2 set to 0x8C114ED4
	mov.l @(r0,r3),r3
	add 0x38,r0 ; r0 set to 0x84
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.w @(loc_8C114F4E,pc),r3 ; r3 set to 0x800
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	add 0xB8,r0 ; r0 set to 0x84
	lds.l @r15+,pr
	mov.l @(loc_8C114F60,pc),r3 ; r3 set to 0x8C108210
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C114ECE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C114ED4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov.w @(0x66,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c114ef6
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C114EF6:
	mov.l @(0x60,PC),r3
	mov.w @(0x56,PC),r0
	mov.l @r3,r4
	mov.l @(0x64,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	mov 0x50,r0
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(0x64,PC),r13
	mova @(0x68,PC),r0
	mov.l @(0x5C,PC),r12
	mov.l @(0x58,PC),r11
	bra loc_8c114f34
	fmov @r0,fr15

loc_8C114F14:
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
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8C114F34:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c114f14
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C114F4C:
	#data 0x012c
loc_8C114F4E:
	#data 0x0800
loc_8C114F50:
	#data 0x03E8
loc_8C114F52:
	#data 0x0084
	#align4

loc_8C114F54:
	#data bank04.loc_8c044F12
loc_8C114F58:
	#data 0x8C26A904
loc_8C114F5C:
	#data loc_8c114ED4
loc_8C114F60:
	#data bank10.loc_8c108210
loc_8C114F64:
	#data bank10.loc_8c108060
loc_8C114F68:
	#data bank10.loc_8c1081E6
loc_8C114F6C:
	#data bank10.loc_8c108086
loc_8C114F70:
	#data bank10.loc_8c108192
loc_8C114F74:
	#data 0x3A83126f

;==============================================
loc_8C114F78:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x02,r13 ; r13 set to 0x02
	sts.l pr,@-r15

loc_8C114F82:
	bsr loc_8C114F94
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C114F82
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c114f94:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c115060,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c114fea
	mov r0,r4
	mov.w @(loc_8C115058,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C115068,pc),r1
	mov.l @(loc_8c115064,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov.w @(loc_8C11505A,pc),r0
	mov r4,r1
	mov.l @r3,r3
	add 0x34,r1
	add r3,r2
	mov.w @(loc_8C11505C,pc),r3
	mov.l @(r0,r2),r2
	add 0xF0,r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov r14,r2
	mov.l r3,@(r0,r4)
	shll r2
	mov r14,r3
	add r3,r2
	mov.l @(loc_8c11506c,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c115070,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b r14,@(r0,r4)

loc_8c114fea:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c114ff0:
	mov 0x20,r0
	mov.l @(0x78,PC),r6
	sts.l pr,@-r15
	mov.b @(r0,r4),r5
	mov.l @(0x78,PC),r0
	extu.b r5,r5
	mov r5,r1
	shll2 r1
	fmov @(r0,r1),fr3
	mov r5,r3
	mov.w @(0x1C,r4),r0
	shll r3
	mov r5,r2
	add r2,r3
	mov r0,r2
	lds r2,fpul
	mova @(0x64,PC),r0
	shll2 r3
	float fpul,fr2
	add r6,r3
	fmov @r3,fr1
	mov.w @(0x40,PC),r3
	fmul fr2,fr3
	fmov @r0,fr2
	mov 0x34,r0
	fdiv fr2,fr3
	fadd fr3,fr1
	fmov fr1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c115052
	mov 0x00,r0
	mov.l @(0x38,PC),r3
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov r4,r1
	shll2 r2
	add 0x34,r1
	add r6,r2
	jsr @r3
	mov 0x0C,r0

loc_8c115052:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C115058:
	#data 0x012C
loc_8C11505A:
	#data 0x0094
loc_8C11505C:
	#data 0x0801
loc_8C11505e:
	#data 0x1770
	#align4

loc_8c115060:
	#data bank04.loc_8c044f12
loc_8c115064:
	#data loc_8c114ff0
loc_8C115068:
	#data 0x8C26A904
loc_8c11506c:
	#data bank13.loc_8c13ec14
loc_8c115070:
	#data bank12.loc_8c1294c8
loc_8c115074:
	#data bank13.loc_8C13EC2C
loc_8c115078:
	#data 0x45BB8000

;==============================================
loc_8c11507c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x9C,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1150d4
	mov r0,r4
	mov.w @(0x82,PC),r0
	mov 0x01,r3
	mov.l @(0x90,PC),r1
	mov.l @(0x88,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x74,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x14,r2),r3
	mov.w @(0x6E,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x78,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x74,PC),r2
	mov r4,r1
	mov.l @(0x6C,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x54,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)

loc_8c1150d4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C1150DC:
	mov 0x50,r0 ; r0 set to 0x50
	fldi1 fr4
	fmov.s @(r0,r4),fr3
	mov.l @(loc_8C115134,pc),r1 ; r1 set to 0x3D4CCCCd
	fadd fr4,fr3
	lds r1,fpul
	fmov.s fr3,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr2
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	add 0x08,r0 ; r0 set to 0x80
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8C115114
	mov.l @(loc_8C115138,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C115114:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c115118:
	#data 0x012c
loc_8c11511a:
	#data 0x0084
loc_8c11511c:
	#data 0x0C11
loc_8c11511e:
	#data 0x0080
	#align4

loc_8C115120:
	#data bank04.loc_8c044F12
loc_8C115124:
	#data loc_8c1150Dc
loc_8c115128:
	#data 0x8C26A904
loc_8C11512C:
	#data bank12.loc_8c1294C8
loc_8C115130:
	#data bank13.loc_8c13ec34
loc_8C115134:
	#data 0x3D4CCCCd
loc_8C115138:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C11513C:
	sts.l pr,@-r15
	mov.l @(0x5C,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c115190
	mov r0,r4
	mov.w @(0x44,PC),r0
	mov 0x01,r3
	mov.l @(0x4C,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x3C,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l @(0x44,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @(0x44,PC),r3
	mov.l @r2,r0
	mov.l @r3,r1
	mov.l @r0,r0
	shll2 r1
	mov.l @(0x44,PC),r3
	mov.l @(r0,r1),r1
	mov.w @(0x28,PC),r0
	mov.l @(0x38,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x34,PC),r5
	mov 0x50,r0
	fmov @r5,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @r5,fr3
	fmov fr3,@(r0,r4)
	mov 0x58,r0
	fmov @r5,fr3
	fmov fr3,@(r0,r4)

loc_8C115190:
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c115196:
	#data 0x012C
loc_8c115198:
	#data 0x0811
loc_8c11519a:
	#data 0x0084
	#align4

loc_8C11519C:
	#data bank04.loc_8c044F12
loc_8C1151A0:
	#data loc_8c1151B8
loc_8C1151A4:
	#data 0x8C26A904
loc_8C1151A8:
	#data bank16.loc_8c16884c
loc_8C1151AC:
	#data bank16.loc_8c16889c
loc_8C1151B0:
	#data bank12.loc_8c1294C8
loc_8C1151B4:
	#data bank16.loc_8c168874

;==============================================
loc_8C1151B8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x05,r3
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c1152d0
	mov 0x00,r0
	mov.l @(0x108,PC),r13
	mov.w r0,@(0x1E,r14)
	mov 0x0A,r2
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/hs r2,r0
	bf loc_8c115218
	jsr @r13
	nop 
	mov.l @(0xF8,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x06,r0
	mov r0,r3
	shll r0
	mov.l @(0xF0,PC),r2
	add r3,r0
	mov.l @(0xF0,PC),r3
	shll2 r0
	mov r14,r1
	add 0x34,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xE4,PC),r3
	mov 0x00,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	jsr @r3
	add 0x34,r4

loc_8C115218:
	mov.w @(0x1C,r14),r0
	cmp/eq 0x05,r0
	bf loc_8c11529a
	mova @(0xD8,PC),r0
	mov r14,r3
	fmov @r0,fr12
	mova @(0xD4,PC),r0
	fmov @r0,fr13
	mova @(0xD4,PC),r0
	fmov @r0,fr14
	mova @(0xD4,PC),r0
	fmov @r0,fr15
	mov 0x34,r0
	add r0,r3
	jsr @r13
	mov.l r3,@-r15
	mov r0,r1
	mov.l @(0xCC,PC),r3
	mov.w @(0xA0,PC),r0
	jsr @r3
	nop 
	lds r0,fpul
	mov.l @(0xC8,PC),r2
	mov.l @(0xC4,PC),r4
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	jsr @r2
	and r3,r4
	mov.l @r15+,r2
	mov r14,r3
	fmov fr0,fr3
	mov 0x3C,r0
	fmov @r2,fr2
	add r0,r3
	fmov fr12,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2
	jsr @r13
	mov.l r3,@-r15
	mov r0,r1
	mov.l @(0x94,PC),r3
	mov.w @(0x6A,PC),r0
	jsr @r3
	nop 
	lds r0,fpul
	mov.l @(0x98,PC),r2
	mov.l @(0x8C,PC),r4
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	jsr @r2
	and r3,r4
	mov.l @r15+,r2
	fmov fr0,fr3
	fmov @r2,fr2
	fmov fr12,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2

loc_8C11529A:
	mov.w @(0x1C,r14),r0
	mov.l @(0x78,PC),r1
	mov.l @(0x7C,PC),r3
	shll2 r0
	mov.l @(r0,r1),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @(0x74,PC),r4
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(0x30,PC),r0
	mov.l r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov 0x58,r0
	fmov fr3,@(r0,r14)

loc_8C1152D0:
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1152e0:
	#data 0x0168
loc_8c1152e2:
	#data 0x0084
	#align4

loc_8C1152E4:
	#data loc_8c11e730
loc_8C1152E8:
	#data bank12.loc_8c12939c
loc_8C1152EC:
	#data bank16.loc_8c16889c
loc_8C1152F0:
	#data bank12.loc_8c1294C8
loc_8C1152F4:
	#data loc_8c11507c
loc_8C1152f8:
	#data 0x42480000
loc_8C1152fc:
	#data 0x47800000
loc_8C115300:
	#data 0x43B40000
loc_8C115304:
	#data 0x3F000000
loc_8C115308:
	#data bank12.loc_8c1292D4
loc_8C11530c:
	#data 0x0000FFFf
loc_8C115310:
	#data loc_8c11E860
loc_8C115314:
	#data loc_8c11E2E0
loc_8C115318:
	#data bank16.loc_8c16884c
loc_8C11531c:
	#data 0x8C26A904
loc_8C115320:
	#data bank16.loc_8c168874

;==============================================
loc_8C115324:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x02,r13 ; r13 set to 0x02
	sts.l pr,@-r15

loc_8C11532E:
	bsr loc_8C115340
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C11532e
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c115340:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c115474,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c115396
	mov r0,r4
	mov.w @(loc_8C11546C,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C11547C,pc),r1
	mov.l @(loc_8c115478,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov.w @(loc_8C11546E,pc),r0
	mov r4,r1
	mov.l @r3,r3
	add 0x34,r1
	add r3,r2
	add 0x5C,r2
	mov.l @r2,r3
	mov.w @(loc_8C115470,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov r14,r2
	shll r2
	mov r14,r3
	add r3,r2
	mov.l @(loc_8c115480,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c115484,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b r14,@(r0,r4)

loc_8c115396:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c11539c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mova @(0xDC,PC),r0
	mov r4,r14
	fmov @r0,fr15
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0xCC,PC),r0
	extu.b r3,r3
	mov.l @(0xD4,PC),r13
	mov r3,r2
	mov.l r3,@r15
	shll r3
	add r2,r3
	shll2 r3
	fmov @(r0,r3),fr12
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.l @r15,r0
	lds r3,fpul
	shll2 r0
	mov.l @(r0,r13),r3
	mova @(0xBC,PC),r0
	float fpul,fr3
	lds r3,fpul
	float fpul,fr2
	fmul fr15,fr3
	fdiv fr2,fr3
	fmov @r0,fr2
	mova @(0xB4,PC),r0
	fmov @r0,fr1
	fmul fr2,fr3
	fdiv fr15,fr3
	fadd fr1,fr3
	ftrc fr3,fpul
	mov.l @(0xB0,PC),r2
	mov.l @(0xA8,PC),r3
	sts fpul,r4
	jsr @r2
	and r3,r4
	mov 0x20,r3
	fmov fr0,fr3
	add r14,r3
	mova @(0xA4,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	fmac fr0,fr3,fr12
	fmov fr12,@(r0,r14)
	mov.b @r3,r5
	mov.l @(0x9C,PC),r0
	extu.b r5,r5
	mov r5,r3
	shll r3
	mov r5,r2
	add r2,r3
	mov 0x1C,r2
	mov r5,r4
	add r14,r2
	mov.w @r2,r2
	shll2 r4
	fmov @(r0,r4),fr3
	shll2 r3
	lds r2,fpul
	float fpul,fr2
	fmul fr2,fr3
	mov r4,r0
	nop 
	mov.l @(r0,r13),r2
	lds r2,fpul
	mov.l @(0x78,PC),r2
	float fpul,fr2
	add r3,r2
	fmov @r2,fr1
	mov 0x38,r3
	add r14,r3
	fdiv fr2,fr3
	fadd fr3,fr1
	fmov fr1,@r3
	mov 0x20,r3
	add r14,r3
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.b @r3,r3
	mov.w @(0x1C,r14),r0
	extu.b r3,r3
	shll2 r3
	add r3,r13
	mov.l @r13,r2
	cmp/ge r2,r0
	bf loc_8c11545e
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c11545e:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11546C:
	#data 0x012C
loc_8C11546E:
	#data 0x0084
loc_8C115470:
	#data 0x0801
	#align4

loc_8c115474:
	#data bank04.loc_8c044f12
loc_8c115478:
	#data loc_8c11539c
loc_8C11547C:
	#data 0x8C26A904
loc_8c115480:
	#data bank13.loc_8c13ec48
loc_8c115484:
	#data bank12.loc_8c1294c8
loc_8c115488:
	#data 0x43B40000
loc_8c11548c:
	#data bank13.loc_8C13EC40
loc_8c115490:
	#data 0x47800000
loc_8c115494:
	#data 0x3F000000
loc_8c115498:
	#data 0x0000FFFF
loc_8c11549c:
	#data loc_8C11E860
loc_8c1154a0:
	#data 0x42C80000
loc_8c1154a4:
	#data bank13.loc_8C13EC60
loc_8c1154a8:
	#data bank13.loc_8C13EC4C

;==============================================
;Set up VMU Graphic
;R4 = Pointer to Graphic
;R7 = 0x1e0 Pointer to VMU a-1?
;==============================================
loc_8C1154AC:
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	mov 0xFF,r6 ; r6 set to 0xFFFFFFFf
	mov.l r11,@-r15
	mov 0x01,r12 ; r12 set to 0x01
	mov.l r10,@-r15
	mov 0x07,r10 ; r10 set to 0x07
	mov.l @(loc_8C1155B0,pc),r5 ; r5 set to loc_8c1698Fc
	mov 0x08,r11 ; r11 set to 0x08
	mov.w @(loc_8C1155AC,pc),r0 ; r0 set to 0xC0
	mov.l r9,@-r15
	mov r4,r9

loc_8C1154C6:
	mov.b @r9+,r7
	mov r10,r4 ; r4 set to 0x07

loc_8C1154CA:
	neg r4,r2
	extu.b r7,r3
	shld r2, r3
	tst r12,r3
	bt loc_8C1154D8
	bra loc_8C1154Da
	mov.b r11,@r5

loc_8C1154D8:
	mov.b r13,@r5

loc_8C1154DA:
	add 0xFF,r4
	cmp/gt r6,r4
	bt/s loc_8C1154Ca
	add 0x01,r5
	dt r0
	bf loc_8C1154C6
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r13

;==============================================
loc_8C1154F2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C1155B4,pc),r13 ; r13 set to bank16.loc_8c1698Dc
	mov r4,r0
	nop
	mov.l @(loc_8C1155B8,pc),r3 ; r3 set to 0x8C178C30
	shll2 r0
	jsr @r3
	mov.l @(r0,r13),r4
	tst r0,r0
	bt loc_8C115536
	mov r14,r0
	nop
	mov.l @(loc_8C1155BC,pc),r3 ; r3 set to 0x8C178B14
	shll2 r0
	jsr @r3
	mov.l @(r0,r13),r4
	cmp/eq 0x01,r0
	bf loc_8C115520
	bra loc_8C115522
	mov 0x03,r6

loc_8C115520:
	mov 0x00,r6 ; r6 set to 0x00

loc_8C115522:
	mov.l @(loc_8C1155B0,pc),r5 ; r5 set to bank16.loc_8c1698FC, r5 set to bank16.loc_8c1698Fc
	mov r14,r0
	nop
	lds.l @r15+,pr
	shll2 r0
	mov.l @(loc_8C1155C0,pc),r3 ; r3 set to 0x8C178B80, r3 set to 0x8C178B80
	mov.l @(r0,r13),r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C115536:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C11553E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov 0x3C,r10 ; r10 set to 0x3c
	mov r4,r14
	mul.l r10,r14
	mov.l @(loc_8C1155C4,pc),r11 ; r11 set to 0x8C2A3AE4
	mov 0x02,r8 ; r8 set to 0x02
	mov.w @(loc_8C1155AE,pc),r4 ; r4 set to 0xFF01
	mov 0x01,r9 ; r9 set to 0x01
	mov 0x00,r13 ; r13 set to 0x00
	sts macl,r12
	mov r5,r0
	nop
	cmp/eq 0x12,r0
	bt/s loc_8C1155C8
	add r11,r12
	cmp/eq 0x01,r0
	bt loc_8C1155E6
	cmp/eq 0x02,r0
	bf loc_8C115578
	bra loc_8C1157D8
	nop

loc_8C115578:
	cmp/eq 0x0B,r0
	bf loc_8C115580
	bra loc_8C115820
	nop

loc_8C115580:
	cmp/eq 0x0C,r0
	bf loc_8C115588
	bra loc_8C115824
	nop

loc_8C115588:
	cmp/eq 0x09,r0
	bf loc_8C115590
	bra loc_8C1158F0
	nop

loc_8C115590:
	cmp/eq 0x0D,r0
	bf loc_8C115598
	bra loc_8C11591e
	nop

loc_8C115598:
	cmp/eq 0x0E,r0
	bf loc_8C1155A0
	bra loc_8C115998
	nop

loc_8C1155A0:
	cmp/eq 0x14,r0
	bf loc_8C1155A8
	bra loc_8C11599c
	nop

loc_8C1155A8:
	bra loc_8C1159Ac
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1155AC:
	#data 0x00C0
loc_8C1155AE:
	#data 0xFF01
	#align4

loc_8C1155B0:
	#data bank16.loc_8c1698Fc
loc_8C1155B4:
	#data bank16.loc_8c1698Dc
loc_8C1155B8:
	#data bank17.loc_8c178C30
loc_8C1155BC:
	#data bank17.loc_8c178B14
loc_8C1155C0:
	#data bank17.loc_8c178B80
loc_8C1155C4:
	#data 0x8C2A3AE4

;==============================================
loc_8C1155C8:
	mov.l @(loc_8C1156D8,pc),r3 ; r3 set to 0xFFFF0000
	mov.l r14,@r12
	mov.l r5,@(0x04,r12)
	mov.l r3,@(0x08,r12)
	mov.l r6,@(0x0C,r12)
	mov.l r7,@(0x10,r12)
	mov.l r13,@(0x14,r12)
	mov.l r13,@(0x18,r12)
	mov.l r13,@(0x1C,r12)
	mov.l r13,@(0x20,r12)
	mov.l r13,@(0x24,r12)
	mov.l r13,@(0x28,r12)
	mov.l r13,@(0x2C,r12)
	bra loc_8C1159Ac
	mov.l r13,@(0x30,r12)

loc_8C1155E6:
	tst r6,r6
	mov.l r5,@(0x04,r12)
	bt/s loc_8C1155F2
	mov.l r6,@(0x08,r12)
	bra loc_8C1157A4
	nop

loc_8C1155F2:
	mov.l @(loc_8C1156E0,pc),r2 ; r2 set to 0x8C1795A8
	mov.l @(loc_8C1156DC,pc),r5 ; r5 set to 0x8C13EC68
	jsr @r2
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C115608
	mov.w @(loc_8C1156D6,pc),r1 ; r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C11566a
	bra loc_8C11568e
	nop

loc_8C115608:
	mul.l r10,r14
	mov r15,r6
	mov.l @(loc_8C1156DC,pc),r5 ; r5 set to 0x8C13EC68
	mov.l @(loc_8C1156E4,pc),r2 ; r2 set to 0x8C1795D6
	add 0x04,r6
	sts macl,r3
	add r11,r3
	mov.l r8,@(0x14,r3)
	jsr @r2
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bf loc_8C115662
	mul.l r10,r14
	mov 0x34,r1 ; r1 set to 0x34
	mov.w @(0x0E,r15),r0
	sts macl,r4
	add r11,r4
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w r0,@r1
	mov 0x10,r0 ; r0 set to 0x10
	mov.b @(r0,r15),r3
	mov 0x36,r0 ; r0 set to 0x36
	mov.b r3,@(r0,r4)
	mov 0x11,r0 ; r0 set to 0x11
	mov.b @(r0,r15),r2 ; r2 ??? bc r15 is ???
	mov 0x37,r0 ; r0 set to 0x37
	mov.b r2,@(r0,r4)
	mov 0x12,r0 ; r0 set to 0x12
	mov.b @(r0,r15),r3
	mov 0x38,r0 ; r0 set to 0x38
	mov.b r3,@(r0,r4)
	mov 0x13,r0 ; r0 set to 0x13
	mov.b @(r0,r15),r2
	mov 0x39,r0 ; r0 set to 0x39
	mov.b r2,@(r0,r4)
	mov 0x14,r0 ; r0 set to 0x14
	mov.b @(r0,r15),r3
	mov 0x3A,r0 ; r0 set to 0x3a
	mov.b r3,@(r0,r4)
	mov 0x15,r0 ; r0 set to 0x15
	mov.b @(r0,r15),r2
	mov 0x3B,r0 ; r0 set to 0x3b
	bra loc_8C11568e
	mov.b r2,@(r0,r4)

loc_8C115662:
	mul.l r10,r14
	sts macl,r4
	bra loc_8C115672
	add r11,r4

loc_8c11566a:
	mul.l r10,r14
	sts macl,r4
	add r11,r4
	mov.l r9,@(0x14,r4)

loc_8C115672:
	mov 0x34,r0 ; r0 set to 0x34
	mov.w r13,@(r0,r4)
	mov 0x36,r0 ; r0 set to 0x36
	mov.b r13,@(r0,r4)
	mov 0x37,r0 ; r0 set to 0x37
	mov.b r13,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.b r13,@(r0,r4)
	mov 0x39,r0 ; r0 set to 0x39
	mov.b r13,@(r0,r4)
	mov 0x3A,r0 ; r0 set to 0x3a
	mov.b r13,@(r0,r4)
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b r13,@(r0,r4)

loc_8C11568E:
	mov.l @(loc_8C1156E0,pc),r3 ; r3 set to 0x8C1795A8, r3 set to 0x8C1795A8
	mov.l @(loc_8C1156E8,pc),r5 ; r5 set to 0x8C13EC78, r5 set to 0x8C13EC78
	jsr @r3
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C1156A4
	mov.w @(loc_8C1156D6,pc),r1 ; r1 set to 0xFF05, r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C1156Ae
	bra loc_8C1156B6
	nop

loc_8C1156A4:
	mul.l r10,r14
	sts macl,r2
	add r11,r2
	bra loc_8C1156B6
	mov.l r8,@(0x18,r2)

loc_8c1156ae:
	mul.l r10,r14
	sts macl,r2
	add r11,r2
	mov.l r9,@(0x18,r2)

loc_8C1156B6:
	mov.l @(loc_8C1156E0,pc),r3 ; r3 set to 0x8C1795A8
	mov.l @(loc_8C1156EC,pc),r5 ; r5 set to 0x8C13EC88
	jsr @r3
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C1156Cc
	mov.w @(loc_8C1156D6,pc),r1 ; r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C1156F0
	bra loc_8C1156F8
	nop

loc_8C1156CC:
	mul.l r10,r14
	sts macl,r2
	add r11,r2
	bra loc_8C1156F8
	mov.l r8,@(0x1C,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1156D6:
	#data 0xFF05
	#align4

loc_8C1156D8:
	#data 0xFFFF0000
loc_8C1156DC:
	#data bank13.loc_8c13ec68
loc_8C1156E0:
	#data bank17.loc_8c1795A8
loc_8C1156E4:
	#data bank17.loc_8c1795D6
loc_8C1156E8:
	#data bank13.loc_8c13ec78
loc_8C1156EC:
	#data bank13.loc_8c13ec88

;==============================================
loc_8c1156f0:
	mul.l r10,r14
	sts macl,r2
	add r11,r2
	mov.l r9,@(0x1C,r2)

loc_8C1156F8:
	mov.l @(loc_8C1157BC,pc),r3 ; r3 set to 0x8C1795A8
	mov.l @(loc_8C1157B8,pc),r5 ; r5 set to 0x8C13EC98
	jsr @r3
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C11570e
	mov.w @(loc_8C1157B6,pc),r1 ; r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C115718
	bra loc_8C115720
	nop

loc_8C11570E:
	mul.l r10,r14
	sts macl,r2
	add r11,r2
	bra loc_8C115720
	mov.l r8,@(0x20,r2)

loc_8c115718:
	mul.l r10,r14
	sts macl,r2
	add r11,r2
	mov.l r9,@(0x20,r2)

loc_8C115720:
	mov.l @(loc_8C1157C4,pc),r3 ; r3 set to 0x8C17929c
	mov.l @(loc_8C1157C0,pc),r5 ; r5 set to 0x8C2A3CC4
	jsr @r3
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C115736
	mov.w @(loc_8C1157B6,pc),r1 ; r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C115762
	bra loc_8C11576c
	nop

loc_8C115736:
	mov.l @(loc_8C1157BC,pc),r2 ; r2 set to 0x8C1795A8
	mov.l @(loc_8C1157C8,pc),r5 ; r5 set to 0x8C13ECA8
	jsr @r2
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C11574c
	mov.w @(loc_8C1157B6,pc),r1 ; r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C115756
	bra loc_8C11576c
	nop

loc_8C11574C:
	mul.l r10,r14
	sts macl,r4
	add r11,r4
	bra loc_8C11576a
	mov.l r8,@(0x24,r4)

loc_8C115756:
	mul.l r10,r14
	sts macl,r4
	add r11,r4
	mov.l r9,@(0x24,r4)
	bra loc_8C11576c
	mov.l r8,@(0x28,r4)

loc_8c115762:
	mul.l r10,r14
	sts macl,r4
	add r11,r4
	mov.l r9,@(0x24,r4)

loc_8C11576A:
	mov.l r9,@(0x28,r4)

loc_8C11576C:
	mul.l r10,r14
	mov.l @(loc_8C1157CC,pc),r3 ; r3 set to 0x8C1791AE, r3 set to 0x8C1791Ae
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	sts macl,r10
	add r11,r10
	mov.l r10,@r15
	jsr @r3
	mov r14,r4
	mov 0x30,r1 ; r1 set to 0x30, r1 set to 0x30
	mov.l @(loc_8C1157CC,pc),r3 ; r3 set to 0x8C1791AE, r3 set to 0x8C1791Ae
	mov.l r0,@(0x2C,r10)
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	mov.l @r15,r2
	add r2,r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
	mov.l r1,@-r15
	jsr @r3
	mov r14,r4
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	mov.l @(loc_8C1157D0,pc),r2 ; r2 set to 0x8C28977C, r2 set to 0x8C28977c
	mov.l @(loc_8C1157D4,pc),r4 ; r4 set to VMUGraphic, r4 set to VMUGraphic
	mov.l r0,@r3
	bsr loc_8C1154Ac
	mov.l r14,@r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(loc_8C1157D0,pc),r2 ; r2 set to 0x8C28977C, r2 set to 0x8C28977c
	bsr loc_8C1154F2
	mov.l @r2,r4 ; r4 ??, r4 ??
	bra loc_8C11599e
	nop

loc_8C1157A4:
	cmp/eq r4,r6
	bt loc_8C1157Ac
	bra loc_8C11599e
	nop

loc_8C1157AC:
	mul.l r10,r14
	sts macl,r10
	add r11,r10
	bra loc_8C11599e
	mov.l r8,@(0x04,r10)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1157B6:
	#data 0xFF05
	#align4

loc_8C1157B8:
	#data bank13.loc_8c13ec98
loc_8C1157BC:
	#data bank17.loc_8c1795A8
loc_8C1157C0:
	#data 0x8C2A3CC4
loc_8C1157C4:
	#data bank17.loc_8c17929c
loc_8C1157C8:
	#data bank13.loc_8c13ecA8
loc_8C1157CC:
	#data bank17.loc_8c1791Ae
loc_8C1157D0:
	#data 0x8C28977c
loc_8C1157D4:
	#data bank16.VMU_GRAPHIC

;==============================================
loc_8C1157D8:
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C1158D0,pc),r2 ; r2 set to 0x8C28977c
	mov.l r5,@(0x04,r12)
	mov.l r4,@(0x08,r12)
	mov.l r13,@(0x14,r12)
	mov.l r13,@(0x18,r12)
	mov.l r13,@(0x1C,r12)
	mov.l r13,@(0x20,r12)
	mov.l r13,@(0x24,r12)
	mov.l r13,@(0x28,r12)
	mov.l r13,@(0x2C,r12)
	mov.l r13,@(0x30,r12)
	mov.w r13,@(r0,r12)
	mov 0x36,r0 ; r0 set to 0x36
	mov.b r13,@(r0,r12)
	mov 0x37,r0 ; r0 set to 0x37
	mov.b r13,@(r0,r12)
	mov 0x38,r0 ; r0 set to 0x38
	mov.b r13,@(r0,r12)
	mov 0x39,r0 ; r0 set to 0x39
	mov.b r13,@(r0,r12)
	mov 0x3A,r0 ; r0 set to 0x3a
	mov.b r13,@(r0,r12)
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b r13,@(r0,r12)
	mov.l @r2,r3
	cmp/eq r14,r3
	bt loc_8C115814
	bra loc_8C11599e
	nop

loc_8C115814:
	mov.l @(loc_8C1158D0,pc),r1 ; r1 set to 0x8C28977c
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.l @(loc_8C1158D4,pc),r0 ; r0 set to 0x8C289788
	mov.l r3,@r1 ; r1 ??
	bra loc_8C11599e
	mov.l r13,@r0

loc_8C115820:
	bra loc_8C11599e
	mov.l r6,@(0x08,r12)

loc_8C115824:
	tst r6,r6
	bt/s loc_8C11582e
	mov.l r6,@(0x08,r12)
	bra loc_8C11599e
	nop

loc_8C11582E:
	mov.l @(loc_8C1158DC,pc),r3 ; r3 set to 0x8C1795A8
	mov.l @(loc_8C1158D8,pc),r5 ; r5 set to 0x8C13EC68
	jsr @r3
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C115844
	mov.w @(loc_8C1158CE,pc),r1 ; r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C11584c
	bra loc_8C11584c
	nop

loc_8C115844:
	mul.l r10,r14
	sts macl,r2
	add r11,r2
	mov.l r8,@(0x14,r2)

loc_8C11584C:
	mov.l @(loc_8C1158DC,pc),r2 ; r2 set to 0x8C1795A8, r2 set to 0x8C1795A8
	mov.l @(loc_8C1158E0,pc),r5 ; r5 set to 0x8C13EC78, r5 set to 0x8C13EC78
	jsr @r2
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C115862
	mov.w @(loc_8C1158CE,pc),r1 ; r1 set to 0xFF05, r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C11586a
	bra loc_8C11586a
	nop

loc_8C115862:
	mul.l r10,r14
	sts macl,r3
	add r11,r3
	mov.l r8,@(0x18,r3)

loc_8C11586A:
	mov.l @(loc_8C1158DC,pc),r3 ; r3 set to 0x8C1795A8, r3 set to 0x8C1795A8
	mov.l @(loc_8C1158E4,pc),r5 ; r5 set to 0x8C13EC88, r5 set to 0x8C13EC88
	jsr @r3
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C115880
	mov.w @(loc_8C1158CE,pc),r1 ; r1 set to 0xFF05, r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C115888
	bra loc_8C115888
	nop

loc_8C115880:
	mul.l r10,r14
	sts macl,r2
	add r11,r2
	mov.l r8,@(0x1C,r2)

loc_8C115888:
	mov.l @(loc_8C1158DC,pc),r2 ; r2 set to 0x8C1795A8, r2 set to 0x8C1795A8
	mov.l @(loc_8C1158E8,pc),r5 ; r5 set to 0x8C13EC98, r5 set to 0x8C13EC98
	jsr @r2
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C11589e
	mov.w @(loc_8C1158CE,pc),r1 ; r1 set to 0xFF05, r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C1158A6
	bra loc_8C1158A6
	nop

loc_8C11589E:
	mul.l r10,r14
	sts macl,r3
	add r11,r3
	mov.l r8,@(0x20,r3)

loc_8C1158A6:
	mul.l r10,r14
	mov.l @(loc_8C1158EC,pc),r3 ; r3 set to 0x8C1791AE, r3 set to 0x8C1791Ae
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	sts macl,r10
	add r11,r10
	mov.l r10,@r15
	jsr @r3
	mov r14,r4
	mov 0x30,r1 ; r1 set to 0x30, r1 set to 0x30
	mov.l @(loc_8C1158EC,pc),r3 ; r3 set to 0x8C1791AE, r3 set to 0x8C1791Ae
	mov.l r0,@(0x2C,r10)
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	mov.l @r15,r2
	add r2,r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
	mov.l r1,@-r15
	jsr @r3
	mov r14,r4
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	bra loc_8C11599e
	mov.l r0,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1158CE:
	#data 0xFF05
	#align4

loc_8C1158D0:
	#data 0x8C28977c
loc_8C1158D4:
	#data 0x8C289788
loc_8C1158D8:
	#data bank13.loc_8c13ec68
loc_8C1158DC:
	#data bank17.loc_8c1795A8
loc_8C1158E0:
	#data bank13.loc_8c13ec78
loc_8C1158E4:
	#data bank13.loc_8c13ec88
loc_8C1158E8:
	#data bank13.loc_8c13ec98
loc_8C1158EC:
	#data bank17.loc_8c1791Ae

;==============================================
loc_8C1158F0:
	tst r6,r6
	bf/s loc_8C11599e
	mov.l r6,@(0x08,r12)
	mul.l r10,r14
	mov.l @(loc_8C1159D0,pc),r3 ; r3 set to 0x8C1791Ae
	mov 0x00,r5 ; r5 set to 0x00
	sts macl,r10
	add r11,r10
	mov.l r10,@r15
	jsr @r3
	mov r14,r4
	mov 0x30,r1 ; r1 set to 0x30
	mov.l @(loc_8C1159D0,pc),r3 ; r3 set to 0x8C1791Ae
	mov.l r0,@(0x2C,r10)
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @r15,r2
	add r2,r1 ; r1 ??? bc r2 is ???
	mov.l r1,@-r15
	jsr @r3
	mov r14,r4
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???
	bra loc_8C11599e
	mov.l r0,@r3

loc_8C11591E:
	tst r6,r6
	bf/s loc_8C11599e
	mov.l r6,@(0x08,r12)
	mov.l @(loc_8C1159D8,pc),r3 ; r3 set to 0x8C17929c
	mov.l @(loc_8C1159D4,pc),r5 ; r5 set to 0x8C2A3CC4
	jsr @r3
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C11593a
	mov.w @(loc_8C1159CA,pc),r1 ; r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C115966
	bra loc_8C115970
	nop

loc_8C11593A:
	mov.l @(loc_8C1159E0,pc),r2 ; r2 set to 0x8C1795A8
	mov.l @(loc_8C1159DC,pc),r5 ; r5 set to 0x8C13ECA8
	jsr @r2
	mov r14,r4
	cmp/eq 0x00,r0
	bt loc_8C115950
	mov.w @(loc_8C1159CA,pc),r1 ; r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C11595a
	bra loc_8C115970
	nop

loc_8C115950:
	mul.l r10,r14
	sts macl,r4
	add r11,r4
	bra loc_8C11596e
	mov.l r8,@(0x24,r4)

loc_8C11595A:
	mul.l r10,r14
	sts macl,r4
	add r11,r4
	mov.l r9,@(0x24,r4)
	bra loc_8C115970
	mov.l r8,@(0x28,r4)

loc_8c115966:
	mul.l r10,r14
	sts macl,r4
	add r11,r4
	mov.l r9,@(0x24,r4)

loc_8C11596E:
	mov.l r9,@(0x28,r4)

loc_8C115970:
	mul.l r10,r14
	mov.l @(loc_8C1159D0,pc),r3 ; r3 set to 0x8C1791AE, r3 set to 0x8C1791Ae
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	sts macl,r10
	add r11,r10
	mov.l r10,@r15
	jsr @r3
	mov r14,r4
	mov 0x30,r1 ; r1 set to 0x30, r1 set to 0x30
	mov.l @(loc_8C1159D0,pc),r3 ; r3 set to 0x8C1791AE, r3 set to 0x8C1791Ae
	mov.l r0,@(0x2C,r10)
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	mov.l @r15,r2
	add r2,r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
	mov.l r1,@-r15
	jsr @r3
	mov r14,r4
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	bra loc_8C11599e
	mov.l r0,@r3

loc_8C115998:
	bra loc_8C11599e
	mov.l r6,@(0x08,r12)

loc_8c11599c:
	mov.l r6,@(0x08,r12)

loc_8c11599e:
	mov.l @(loc_8C1159E4,pc),r2
	shad r14, r9
	mov.w @(loc_8C1159CC,pc),r3
	mov.l @r2,r1
	xor r3,r9
	and r9,r1
	mov.l r1,@r2

loc_8C1159AC:
	mov 0x00,r0 ; r0 set to 0x00
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
loc_8C1159C2:
	mov.l @(loc_8C1159EC,pc),r3 ; r3 set to 0x8C178FF8
	mov.l @(loc_8C1159E8,pc),r4 ; r4 set to 0x8C11553e
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1159CA:
	#data 0xFF05
loc_8c1159cc:
	#data 0x00Ff
	#align4

loc_8C1159D0:
	#data bank17.loc_8c1791Ae
loc_8C1159D4:
	#data 0x8C2A3CC4
loc_8C1159D8:
	#data bank17.loc_8c17929c
loc_8C1159DC:
	#data bank13.loc_8c13ecA8
loc_8C1159E0:
	#data bank17.loc_8c1795A8
loc_8c1159e4:
	#data 0x8C28978c
loc_8C1159E8:
	#data loc_8c11553e
loc_8C1159EC:
	#data bank17.loc_8c178FF8

;==============================================
loc_8C1159F0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x104,PC),r3
	jsr @r3
	mov 0x04,r4
	mov.l @(0x104,PC),r2
	jsr @r2
	nop 
	mov.l @(0x104,PC),r4
	mov.w @(0xE2,PC),r6
	mov.l @(0xFC,PC),r14
	jsr @r14
	mov 0x00,r5
	mov.w @(0xDC,PC),r13
	mov 0x00,r5
	mov.l @(0xFC,PC),r4
	mov r13,r6
	jsr @r14
	mov.l r4,@r15
	mov.l @r15,r4
	mov 0x00,r5
	mov r13,r6
	jsr @r14
	add r13,r4
	mov.l @(0xEC,PC),r4
	mov.w @(0xC6,PC),r6
	jsr @r14
	mov 0x00,r5
	mov.l @(0xE8,PC),r4
	mov.w @(0xC0,PC),r6
	jsr @r14
	mov 0x00,r5
	mov.l @(0xE4,PC),r4
	bsr loc_8c1154ac
	nop 
	mov.l @(0xD8,PC),r4
	mov 0xFF,r2
	mov 0x00,r3
	mov.l @(0xDC,PC),r5
	mov.l r2,@(0x2C,r4)
	mov r3,r2
	mov.l r3,@(0x38,r4)
	mov.l r3,@(0x3C,r4)
	mov r2,r4
	mov.w r4,@r5
	mov r4,r0
	nop 
	mov 0x76,r7
	mov r0,r6
	mov.w r0,@(0x2,r5)
	mov.w r0,@(0x4,r5)
	mov.w r0,@(0x6,r5)
	mov.w r0,@(0x8,r5)

loc_8C115A5E:
	mov r5,r3
	add 0x0A,r3
	add r6,r3
	mov.w @(0x8C,PC),r2
	mov.w r4,@r3
	mov.w @(0x8A,PC),r3
	add r5,r2
	add r6,r2
	add r5,r3
	mov.w r4,@r2
	add r6,r3
	mov.w @(0x80,PC),r2
	mov.w r4,@r3
	mov.w @(0x7E,PC),r3
	add r5,r2
	add r6,r2
	add r5,r3
	mov.w r4,@r2
	add r6,r3
	add 0x02,r6
	cmp/hs r7,r6
	bf.s loc_8c115a5e
	mov.w r4,@r3
	mov.w @(0x62,PC),r1
	mov 0x7A,r6
	mov.l @(0x84,PC),r7
	mov 0x02,r14
	mov.l @(0x8C,PC),r13
	add r7,r1
	mov r7,r5

loc_8C115A9A:
	mov 0x34,r0
	mov.l r14,@(0x4,r5)
	mov.l r13,@(0x8,r5)
	mov.l r6,@(0xC,r5)
	mov.l r4,@(0x14,r5)
	mov.l r4,@(0x18,r5)
	mov.l r4,@(0x1C,r5)
	mov.l r4,@(0x20,r5)
	mov.l r4,@(0x24,r5)
	mov.l r4,@(0x28,r5)
	mov.l r4,@(0x2C,r5)
	mov.l r4,@(0x30,r5)
	mov.w r4,@(r0,r5)
	mov 0x36,r0
	mov.b r4,@(r0,r5)
	mov 0x37,r0
	mov.b r4,@(r0,r5)
	mov 0x38,r0
	mov.b r4,@(r0,r5)
	mov 0x39,r0
	mov.b r4,@(r0,r5)
	mov 0x3A,r0
	mov.b r4,@(r0,r5)
	mov 0x3B,r0
	mov.b r4,@(r0,r5)
	add 0x3C,r5
	cmp/hs r1,r5
	bf loc_8c115a9a
	mov.w @(0x26,PC),r5
	mov 0x7A,r4
	mov.l @(0x50,PC),r7
	mov 0x00,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14
	mov.l @(0x48,PC),r3
	jmp @r3
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c115aec:
	#data 0x0A00
loc_8c115aee:
	#data 0x0200
loc_8c115af0:
	#data 0x0090
loc_8c115af2:
	#data 0x01E0
loc_8c115af4:
	#data 0x0080
loc_8c115af6:
	#data 0x00F6
loc_8c115af8:
	#data 0x016c
loc_8c115afa:
	#data 0x01E2
loc_8c115afc:
	#data 0x00Ff
	#align4

loc_8C115B00:
	#data bank17.loc_8c1789D8
loc_8C115B04:
	#data bank17.loc_8c178908
loc_8C115B08:
	#data bank12.loc_8c129728
loc_8C115B0c:
	#data 0x8C28DCC4
loc_8C115B10:
	#data 0x8C2940C4
loc_8C115B14:
	#data 0x8C289750
loc_8C115B18:
	#data 0x8C2A3AE4
loc_8C115B1C:
	#data bank16.VMU_GRAPHIC
loc_8C115B20:
	#data 0x8C2A3CD4
loc_8C115B24:
	#data 0xFFFF0000
loc_8C115B28:
	#data loc_8c1159C2
loc_8C115B2C:
	#data bank17.loc_8c178D70
loc_8C115B30:
	#data bank17.loc_8c178E56

;==============================================
loc_8C115B34:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C115C90,pc),r3 ; r3 set to 0x8C011698
	jsr @r3
	nop
	mov.l @(loc_8C115C94,pc),r13 ; r13 set to 0x8C289750
	mov.l @(0x38,r13),r2
	tst r2,r2
	bf loc_8C115BDc
	mov.l @(0x3C,r13),r3 ; r3 ??
	tst r3,r3
	bf loc_8C115BDc
	mov.l @(loc_8C115C98,pc),r2 ; r2 set to 0x8C26A962
	mov.b @r2,r3
	tst r3,r3
	bf loc_8C115BDc
	mov.l @(loc_8C115C9C,pc),r3 ; r3 set to 0x8C2946C4
	mov 0xFF,r9 ; r9 set to 0xFFFFFFFf
	mov.l @(loc_8C115CA0,pc),r12 ; r12 set to 0x8C2A3AE4
	mov 0x3C,r14 ; r14 set to 0x3c
	mov 0x00,r11 ; r11 set to 0x00
	mov.l r3,@r15
	mov 0x12,r8 ; r8 set to 0x12

loc_8C115B70:
	mul.l r14,r11 ; r11 ??
	sts macl,r4
	add r12,r4
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C115BD4
	mov.l @(0x08,r4),r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8C115CA4,pc),r2 ; r2 set to 0xFFFF0000
	cmp/eq r2,r3
	bf loc_8C115BD4
	mov.l @(0x2C,r13),r0
	cmp/eq 0xFF,r0
	bt/s loc_8C115BAc
	mov r0,r10
	mul.l r14,r10
	mov.l @(loc_8C115CA8,pc),r3 ; r3 set to 0x8C179092
	sts macl,r4
	add r12,r4
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bf loc_8C115BD4
	mov.l @(0x2C,r13),r3 ; r3 ??
	mul.l r14,r3
	sts macl,r3
	add r12,r3
	mov.l r8,@(0x04,r3)
	bra loc_8C115BDc
	mov.l r9,@(0x2C,r13)

loc_8C115BAC:
	mul.l r14,r11
	mov.l @r15,r5
	mov.l @(loc_8C115CAC,pc),r3 ; r3 set to 0x8C179980
	sts macl,r10
	add r12,r10
	mov.l @(0x0C,r10),r6
	shll8 r6
	shll r6
	add 0x20,r6
	jsr @r3
	mov.l @r10,r4
	mov r0,r4
	tst r4,r4
	bf loc_8C115BD4
	mov.l @(0x3C,r13),r2
	mov 0x01,r3 ; r3 set to 0x01
	shad r11, r3 ; r3 ??? bc r11 is ???
	or r3,r2
	bra loc_8C115BDc
	mov.l r2,@(0x3C,r13)

loc_8c115bd4:
	mov 0x08,r3
	add 0x01,r11
	cmp/ge r3,r11
	bf loc_8c115b70

loc_8C115BDC:
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
loc_8C115BF0:
	mov.l r14,@-r15
	add 0xFC,r15
	mov 0x3C,r14 ; r14 set to 0x3c
	mov.l @(loc_8C115CA0,pc),r3 ; r3 set to 0x8C2A3AE4
	mul.l r14,r4
	sts macl,r14
	add r3,r14 ; r14 set to 0x8C2A3B20
	mov.l @(0x04,r14),r0
	cmp/eq 0x12,r0
	bf loc_8C115C14
	mov.l @(0x08,r14),r2
	mov.l @(loc_8C115CA4,pc),r1 ; r1 set to 0xFFFF0000
	cmp/eq r1,r2
	bf loc_8C115C14
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	add 0x04,r15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c115c14:
	mov 0x00,r5
	mov.l r14,@r15
	mov.l @(0x04,r14),r0
	cmp/eq 0x12,r0
	bt/s loc_8c115c28
	mov r0,r6
	mov r6,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c115c36

loc_8c115c28:
	mov.l @(0x08,r14),r2
	mov.l @(loc_8c115ca4,pc),r3
	cmp/eq r3,r2
	bt loc_8c115c36
	mov 0x01,r0
	shad r4, r0
	or r0,r5

loc_8c115c36:
	mov r5,r0
	nop
	add 0x04,r15
	rts
	mov.l @r15+,r14

;==============================================
loc_8C115C40:
	mov.l r14,@-r15
	add 0xFC,r15
	mov 0x3C,r14 ; r14 set to 0x3c
	mov.l @(loc_8C115CA0,pc),r3 ; r3 set to 0x8C2A3AE4
	mul.l r14,r4
	sts macl,r14
	add r3,r14 ; r14 set to 0x8C2A3B20
	mov.l @(0x04,r14),r0
	cmp/eq 0x12,r0
	bf loc_8C115C64
	mov.l @(0x08,r14),r2
	mov.l @(loc_8C115CA4,pc),r1 ; r1 set to 0xFFFF0000
	cmp/eq r1,r2
	bf loc_8C115C64
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	add 0x04,r15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c115c64:
	mov 0x00,r5
	mov.l r14,@r15
	mov.l @(0x04,r14),r0
	cmp/eq 0x12,r0
	bt/s loc_8c115c78
	mov r0,r6
	mov r6,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c115c84

loc_8c115c78:
	mov.l @(0x14,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c115c84
	mov 0x01,r2
	shad r4, r2
	or r2,r5

loc_8c115c84:
	mov r5,r0
	nop
	add 0x04,r15
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c115c90:
	#data bank01.loc_8C011698
loc_8c115c94:
	#data 0x8C289750
loc_8c115c98:
	#data 0x8C26A962
loc_8c115c9c:
	#data 0x8C2946C4
loc_8c115ca0:
	#data 0x8C2A3AE4
loc_8c115ca4:
	#data 0xFFFF0000
loc_8c115ca8:
	#data bank17.loc_8c179092
loc_8c115cac:
	#data bank17.loc_8c179980

;==============================================
loc_8C115CB0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	add 0xFC,r15
	mov.w @(loc_8C115DAA,pc),r5 ; r5 set to 0x1E0
	mov.l @(loc_8C115DAC,pc),r6 ; r6 set to 0x8C2A3AE4
	add r6,r5 ; r5 set to 0x8C2A3CC4
	mov r6,r4 ; r4 set to 0x8C2A3AE4
	cmp/hs r5,r4
	bt loc_8C115CDe

loc_8C115CC6:
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C115CD8
	mov.l @(0x08,r4),r2
	mov.l @(loc_8C115DB0,pc),r3 ; r3 set to 0xFFFF0000
	cmp/eq r3,r2
	bf loc_8C115CD8
	bra loc_8C115D22
	mov 0xFF,r0

loc_8c115cd8:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c115cc6

loc_8c115cde:
	mov.l @(loc_8c115db0,pc),r12
	mov 0x00,r7
	mov 0x3C,r5
	mov r7,r4
	mov 0x08,r13
	mov r7,r14
	mov 0x01,r11

loc_8c115cec:
	mul.l r5,r4
	sts macl,r7
	add r6,r7
	mov.l r7,@r15
	mov.l @(0x04,r7),r7
	mov r7,r0
	nop
	cmp/eq 0x12,r0
	bt loc_8c115d06
	mov r7,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c115d18

loc_8c115d06:
	mul.l r5,r4
	sts macl,r3
	add r6,r3
	mov.l @(0x08,r3),r2
	cmp/eq r12,r2
	bt loc_8c115d18
	mov r11,r1
	shad r4, r1
	or r1,r14

loc_8c115d18:
	add 0x01,r4
	cmp/ge r13,r4
	bf loc_8c115cec
	mov r14,r0
	nop

loc_8C115D22:
	add 0x04,r15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C115D2E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	add 0xFC,r15
	mov.l @(0x70,PC),r10
	mov 0x00,r5
	mov.l @(0x70,PC),r13
	mov 0x3C,r14
	mov r5,r4
	mov r5,r7
	mov 0x08,r11
	mov 0x01,r12

loc_8C115D4A:
	mul.l r14,r4
	sts macl,r5
	add r10,r5
	mov.l r5,@r15
	mov.l @(0x4,r5),r0
	cmp/eq 0x12,r0
	bt.s loc_8c115d62
	mov r0,r6
	mov r6,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c115d6e

loc_8C115D62:
	mov.l @(0x8,r5),r3
	cmp/eq r13,r3
	bt loc_8c115d6e
	mov r12,r1
	shad r4,r1
	or r1,r7

loc_8C115D6E:
	add 0x01,r4
	cmp/ge r11,r4
	bf loc_8c115d4a
	mov r7,r0
	nop 
	add 0x04,r15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C115D86:
	mov.l r14,@-r15
	mov.l r13,@-r15
	add 0xFC,r15
	mov.w @(loc_8C115DAA,pc),r5 ; r5 set to 0x1E0
	mov.l @(loc_8C115DAC,pc),r6 ; r6 set to 0x8C2A3AE4
	add r6,r5 ; r5 set to 0x8C2A3CC4
	mov r6,r4 ; r4 set to 0x8C2A3AE4
	cmp/hs r5,r4
	bt loc_8C115DBa

loc_8C115D98:
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C115DB4
	mov.l @(0x08,r4),r2
	mov.l @(loc_8C115DB0,pc),r3 ; r3 set to 0xFFFF0000
	cmp/eq r3,r2
	bf loc_8C115DB4
	bra loc_8C115DFa
	mov 0xFF,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C115DAA:
	#data 0x01E0
	#align4

loc_8C115DAC:
	#data 0x8C2A3AE4
loc_8C115DB0:
	#data 0xFFFF0000

;==============================================
loc_8c115db4:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c115d98

loc_8c115dba:
	mov 0x3C,r5
	mov 0x00,r4
	mov 0x01,r7
	mov 0x00,r14
	mov 0x08,r13

loc_8c115dc4:
	mul.l r5,r4
	sts macl,r1
	add r6,r1
	mov.l r1,@r15
	mov.l @(0x04,r1),r1
	mov r1,r0
	nop
	cmp/eq 0x12,r0
	bt loc_8c115dde
	mov r1,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c115df0

loc_8c115dde:
	mul.l r5,r4
	sts macl,r0
	add r6,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x02,r0
	bf loc_8c115df0
	mov r7,r2
	shad r4, r2
	or r2,r14

loc_8c115df0:
	add 0x01,r4
	cmp/ge r13,r4
	bf loc_8c115dc4
	mov r14,r0
	nop

loc_8C115DFA:
	add 0x04,r15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c0115e02:
	mov.l @(0x80,PC),r5
	mov.w @(0x78,PC),r3
	mov r5,r4
	add r3,r5
	cmp/hs r5,r4
	bt loc_8c115e26

loc_8c115e0e:
	mov.l @(0x4,r4),r0
	cmp/eq 0x12,r0
	bf loc_8c115e20
	mov.l @(0x8,r4),r3
	mov.l @(0x70,PC),r2
	cmp/eq r2,r3
	bf loc_8c115e20
	rts
	mov 0xFF,r0

loc_8c115e20:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c115e0e

loc_8c115e26:
	mov 0x00,r0
	rts 
	nop 

;==============================================
loc_8C115E2C:
	mov.l @(loc_8C115E84,pc),r5 ; r5 set to 0x8C2A3AE4
	mov.w @(loc_8C115E80,pc),r3 ; r3 set to 0x1E0
	mov r5,r4 ; r4 set to 0x8C2A3AE4
	add r3,r5 ; r5 set to 0x8C2A3CC4
	cmp/hs r5,r4
	bt loc_8C115E50

loc_8C115E38:
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C115E4a
	mov.l @(0x08,r4),r3 ; r3 ??
	mov.l @(loc_8C115E88,pc),r2 ; r2 set to 0xFFFF0000
	cmp/eq r2,r3
	bf loc_8C115E4a
	rts
	mov 0xFF,r0

;==============================================
loc_8c115e4a:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c115e38

loc_8C115E50:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8C115E56:
	mov.l @(loc_8C115E84,pc),r5 ; r5 set to 0x8C2A3AE4
	mov.w @(loc_8C115E80,pc),r3 ; r3 set to 0x1E0
	mov r5,r4 ; r4 set to 0x8C2A3AE4
	add r3,r5 ; r5 set to 0x8C2A3CC4
	cmp/hs r5,r4
	bt loc_8C115E7a

loc_8C115E62:
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C115E74
	mov.l @(0x08,r4),r3 ; r3 ??
	mov.l @(loc_8C115E88,pc),r2 ; r2 set to 0xFFFF0000
	cmp/eq r2,r3
	bf loc_8C115E74
	rts
	mov 0xFF,r0

loc_8c115e74:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c115e62

loc_8C115E7A:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C115E80:
	#data 0x01E0
	#align4

loc_8C115E84:
	#data 0x8C2A3AE4
loc_8C115E88:
	#data 0xFFFF0000

;==============================================
loc_8C115E8C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	add 0xFC,r15
	mov.w @(loc_8C115F70,pc),r5 ; r5 set to 0x1E0
	mov.l @(loc_8C115F74,pc),r6 ; r6 set to 0x8C2A3AE4
	add r6,r5 ; r5 set to 0x8C2A3CC4
	mov r6,r4 ; r4 set to 0x8C2A3AE4
	cmp/hs r5,r4
	bt loc_8C115EB6

loc_8C115E9E:
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C115EB0
	mov.l @(0x08,r4),r2
	mov.l @(loc_8C115F78,pc),r3 ; r3 set to 0xFFFF0000
	cmp/eq r3,r2
	bf loc_8C115EB0
	bra loc_8C115EF6
	mov 0xFF,r0

loc_8c115eb0:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c115e9e

loc_8c115eb6:
	mov 0x3C,r5
	mov 0x00,r4
	mov 0x01,r7
	mov 0x00,r14
	mov 0x08,r13

loc_8c115ec0:
	mul.l r5,r4
	sts macl,r1
	add r6,r1
	mov.l r1,@r15
	mov.l @(0x04,r1),r1
	mov r1,r0
	nop
	cmp/eq 0x12,r0
	bt loc_8c115eda
	mov r1,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c115eec

loc_8c115eda:
	mul.l r5,r4
	sts macl,r0
	add r6,r0
	mov.l @(0x24,r0),r0
	cmp/eq 0x02,r0
	bf loc_8c115eec
	mov r7,r2
	shad r4, r2
	or r2,r14

loc_8c115eec:
	add 0x01,r4
	cmp/ge r13,r4
	bf loc_8c115ec0
	mov r14,r0
	nop

loc_8C115EF6:
	add 0x04,r15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C115EFE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	add 0xFC,r15
	mov.w @(loc_8C115F70,pc),r5 ; r5 set to 0x1E0
	mov.l @(loc_8C115F74,pc),r6 ; r6 set to 0x8C2A3AE4
	add r6,r5 ; r5 set to 0x8C2A3CC4
	mov r6,r4 ; r4 set to 0x8C2A3AE4
	cmp/hs r5,r4
	bt loc_8C115F28

loc_8C115F10:
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C115F22
	mov.l @(0x08,r4),r2
	mov.l @(loc_8C115F78,pc),r3 ; r3 set to 0xFFFF0000
	cmp/eq r3,r2
	bf loc_8C115F22
	bra loc_8C115F68
	mov 0xFF,r0

loc_8c115f22:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c115f10

loc_8c115f28:
	mov 0x3C,r5
	mov 0x00,r4
	mov 0x01,r7
	mov 0x00,r14
	mov 0x08,r13

loc_8c115f32:
	mul.l r5,r4
	sts macl,r1
	add r6,r1
	mov.l r1,@r15
	mov.l @(0x04,r1),r1
	mov r1,r0
	nop
	cmp/eq 0x12,r0
	bt loc_8c115f4c
	mov r1,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c115f5e

loc_8c115f4c:
	mul.l r5,r4
	sts macl,r0
	add r6,r0
	mov.l @(0x28,r0),r0
	cmp/eq 0x02,r0
	bf loc_8c115f5e
	mov r7,r2
	shad r4, r2
	or r2,r14

loc_8c115f5e:
	add 0x01,r4
	cmp/ge r13,r4
	bf loc_8c115f32
	mov r14,r0
	nop

loc_8C115F68:
	add 0x04,r15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C115F70:
	#data 0x01E0
	#align4

loc_8C115F74:
	#data 0x8C2A3AE4
loc_8C115F78:
	#data 0xFFFF0000

;==============================================
loc_8C115F7C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	add 0xFC,r15
	mov.w @(loc_8C11604E,pc),r5 ; r5 set to 0x1E0
	mov.l @(loc_8C116050,pc),r6 ; r6 set to 0x8C2A3AE4
	add r6,r5 ; r5 set to 0x8C2A3CC4
	mov r6,r4 ; r4 set to 0x8C2A3AE4
	cmp/hs r5,r4
	bt loc_8C115FAa

loc_8C115F92:
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C115FA4
	mov.l @(0x08,r4),r2
	mov.l @(loc_8C116054,pc),r3 ; r3 set to 0xFFFF0000
	cmp/eq r3,r2
	bf loc_8C115FA4
	bra loc_8C115FEe
	mov 0xFF,r0

loc_8c115fa4:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c115f92

loc_8c115faa:
	mov 0x00,r7
	mov 0x08,r13
	mov r7,r4
	mov 0x3C,r5
	mov r7,r14
	mov 0x05,r11
	mov 0x01,r12

loc_8c115fb8:
	mul.l r5,r4
	sts macl,r7
	add r6,r7
	mov.l r7,@r15
	mov.l @(0x04,r7),r7
	mov r7,r0
	nop
	cmp/eq 0x12,r0
	bt loc_8c115fd2
	mov r7,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c115fe4

loc_8c115fd2:
	mul.l r5,r4
	sts macl,r3
	add r6,r3
	mov.l @(0x2C,r3),r2
	cmp/ge r11,r2
	bf loc_8c115fe4
	mov r12,r1
	shad r4, r1
	or r1,r14

loc_8c115fe4:
	add 0x01,r4
	cmp/ge r13,r4
	bf loc_8c115fb8
	mov r14,r0
	nop

loc_8C115FEE:
	add 0x04,r15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;==============================================
;unused?
loc_8c115ffa:
	mov.l @(0x54,PC),r5
	mov.w @(0x4E,PC),r3
	mov r5,r4
	add r3,r5
	cmp/hs r5,r4
	bt loc_8c11601e

loc_8c116006:
	mov.l @(0x4,r4),r0
	cmp/eq 0x12,r0
	bf loc_8c116018
	mov.l @(0x8,r4),r3
	mov.l @(0x44,PC),r2
	cmp/eq r2,r3
	bf loc_8c116018
	rts 
	mov 0xFF,r0

loc_8c116018:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c116006

loc_8c11601e:
	mov 0x00,r0
	rts 
	nop 

;==============================================
loc_8C116024:
	mov.l @(loc_8C116050,pc),r5 ; r5 set to 0x8C2A3AE4
	mov.w @(loc_8C11604E,pc),r3 ; r3 set to 0x1E0
	mov r5,r4 ; r4 set to 0x8C2A3AE4
	add r3,r5 ; r5 set to 0x8C2A3CC4
	cmp/hs r5,r4
	bt loc_8C116048

loc_8C116030:
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C116042
	mov.l @(0x08,r4),r3 ; r3 ??
	mov.l @(loc_8C116054,pc),r2 ; r2 set to 0xFFFF0000
	cmp/eq r2,r3
	bf loc_8C116042
	rts
	mov 0xFF,r0

;==============================================
loc_8c116042:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c116030

loc_8C116048:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8C11604E:
	#data 0x01E0
	#align4

loc_8C116050:
	#data 0x8C2A3AE4
loc_8C116054:
	#data 0xFFFF0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C116058:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.w @(loc_8C116140,pc),r5 ; r5 set to 0x1E0
	mov.l @(loc_8C116144,pc),r6 ; r6 set to 0x8C2A3AE4
	add r6,r5 ; r5 set to 0x8C2A3CC4
	mov r6,r4 ; r4 set to 0x8C2A3AE4
	cmp/hs r5,r4
	bt loc_8C116084

loc_8C116068:
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bf loc_8C11607e
	mov.l @(0x08,r4),r2
	mov.l @(loc_8C116148,pc),r3 ; r3 set to 0xFFFF0000
	cmp/eq r3,r2
	bf loc_8C11607e
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	add 0x04,r15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c11607e:
	add 0x3C,r4
	cmp/hs r5,r4
	bf loc_8c116068

loc_8C116084:
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r7 ; r7 set to 0x00
	bra loc_8C1160E8
	mov r4,r5

loc_8c11608c:
	mov 0x3C,r14
	mul.l r14,r5
	sts macl,r4
	add r6,r4
	mov.l r4,@r15
	mov.l @(0x04,r4),r0
	cmp/eq 0x12,r0
	bt/s loc_8c1160a6
	mov r0,r1
	mov r1,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1160e6

loc_8c1160a6:
	mov.l @(0x28,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c1160e6
	mov.l @(0x14,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c1160c4
	mov.l @(0x24,r4),r0
	cmp/eq 0x02,r0
	bt loc_8c1160de
	mov.l @(0x2C,r4),r2
	mov 0x40,r14
	cmp/ge r14,r2
	bf loc_8c1160e6
	bra loc_8c1160de
	nop

loc_8c1160c4:
	mov.l @(0x24,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c1160d6
	mov.l @(0x2C,r4),r2
	mov 0x05,r14
	cmp/ge r14,r2
	bf loc_8c1160e6
	bra loc_8c1160de
	nop

loc_8c1160d6:
	mov.l @(0x2C,r4),r2
	mov 0x45,r14
	cmp/ge r14,r2
	bf loc_8c1160e6

loc_8c1160de:
	mov 0x01,r4
	mov r4,r2
	shad r5, r2
	or r2,r7

loc_8c1160e6:
	add 0x01,r5

loc_8C1160E8:
	mov 0x08,r4 ; r4 set to 0x08
	cmp/ge r4,r5
	bf loc_8C11608c
	mov r7,r0
	nop
	add 0x04,r15
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1160F8:
	cmp/pz r4
	bf loc_8C11614c
	mov 0x07,r2 ; r2 set to 0x07
	cmp/gt r2,r4
	bt loc_8C11614c
	mov 0x3C,r6 ; r6 set to 0x3c
	mov.l @(loc_8C116144,pc),r3 ; r3 set to 0x8C2A3AE4
	mul.l r6,r4
	mov 0x34,r0 ; r0 set to 0x34
	sts macl,r6
	add r3,r6 ; r6 set to 0x8C2A3B20
	mov.w @(r0,r6),r2 ; r2 ??
	mov 0x36,r0 ; r0 set to 0x36
	mov.w r2,@r5
	mov.b @(r0,r6),r0 ; r0 ??
	mov.b r0,@(0x02,r5)
	mov 0x37,r0 ; r0 set to 0x37
	mov.b @(r0,r6),r0 ; r0 ??
	mov.b r0,@(0x03,r5)
	mov 0x38,r0 ; r0 set to 0x38
	mov.b @(r0,r6),r0 ; r0 ??
	mov.b r0,@(0x04,r5)
	mov 0x39,r0 ; r0 set to 0x39
	mov.b @(r0,r6),r0 ; r0 ??
	mov.b r0,@(0x05,r5)
	mov 0x3A,r0 ; r0 set to 0x3a
	mov.b @(r0,r6),r0 ; r0 ??
	mov.b r0,@(0x06,r5)
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r6),r0 ; r0 ??
	mov.b r0,@(0x07,r5)
	mov.w @r5,r2
	tst r2,r2
	bt loc_8C116160
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C116140:
	#data 0x01E0
	#align4

loc_8C116144:
	#data 0x8C2A3AE4
loc_8C116148:
	#data 0xFFFF0000

;==============================================
loc_8C11614C:
	mov 0x00,r4 ; r4 set to 0x00
	mov.w r4,@r5
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x02,r5)
	mov.b r0,@(0x03,r5)
	mov.b r0,@(0x04,r5)
	mov.b r0,@(0x05,r5)
	mov.b r0,@(0x06,r5)
	mov.b r0,@(0x07,r5)

loc_8C116160:
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	rts
	nop

;==============================================
loc_8C116166:
	mov 0x3C,r6 ; r6 set to 0x3c
	mov.l @(loc_8C116284,pc),r3 ; r3 set to 0x8C2A3AE4
	mul.l r6,r4
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C116280,pc),r5 ; r5 set to 0x8C289750
	sts macl,r6
	add r3,r6 ; r6 set to 0x8C2A3B20
	mov.w @(r0,r6),r2
	mov 0x68,r0 ; r0 set to 0x68
	mov.w r2,@(r0,r5)  ; r5 ??? bc r2 is ???
	mov 0x36,r0 ; r0 set to 0x36
	mov.b @(r0,r6),r1
	mov 0x6A,r0 ; r0 set to 0x6a
	mov.b r1,@(r0,r5)
	mov 0x37,r0 ; r0 set to 0x37
	mov.b @(r0,r6),r2
	mov 0x6B,r0 ; r0 set to 0x6b
	mov.b r2,@(r0,r5)
	mov 0x38,r0 ; r0 set to 0x38
	mov.b @(r0,r6),r1
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.b r1,@(r0,r5)
	mov 0x39,r0 ; r0 set to 0x39
	mov.b @(r0,r6),r2
	mov 0x6D,r0 ; r0 set to 0x6d
	mov.b r2,@(r0,r5)
	mov 0x3A,r0 ; r0 set to 0x3a
	mov.b @(r0,r6),r1
	mov 0x6E,r0 ; r0 set to 0x6e
	mov.b r1,@(r0,r5)
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r6),r2
	mov 0x6F,r0 ; r0 set to 0x6f
	rts
	mov.b r2,@(r0,r5)

;==============================================
loc_8C1161AC:
	mov 0x3C,r5 ; r5 set to 0x3c
	mov.l @(loc_8C116280,pc),r6 ; r6 set to 0x8C289750
	mul.l r5,r4
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(loc_8C116284,pc),r3 ; r3 set to 0x8C2A3AE4
	mov.w @(r0,r6),r2
	mov 0x34,r0 ; r0 set to 0x34
	sts macl,r5
	add r3,r5 ; r5 set to 0x8C2A3B20
	mov.w @(r0,r5),r1
	cmp/eq r1,r2
	bf loc_8C116210
	mov 0x6A,r0 ; r0 set to 0x6a
	mov.b @(r0,r6),r1
	mov 0x36,r0 ; r0 set to 0x36
	mov.b @(r0,r5),r2
	cmp/eq r2,r1
	bf loc_8C116210
	mov 0x6B,r0 ; r0 set to 0x6b
	mov.b @(r0,r6),r1
	mov 0x37,r0 ; r0 set to 0x37
	mov.b @(r0,r5),r2
	cmp/eq r2,r1
	bf loc_8C116210
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.b @(r0,r6),r1
	mov 0x38,r0 ; r0 set to 0x38
	mov.b @(r0,r5),r2
	cmp/eq r2,r1
	bf loc_8C116210
	mov 0x6D,r0 ; r0 set to 0x6d
	mov.b @(r0,r6),r1
	mov 0x39,r0 ; r0 set to 0x39
	mov.b @(r0,r5),r2
	cmp/eq r2,r1
	bf loc_8C116210
	mov 0x6E,r0 ; r0 set to 0x6e
	mov.b @(r0,r6),r1
	mov 0x3A,r0 ; r0 set to 0x3a
	mov.b @(r0,r5),r2
	cmp/eq r2,r1
	bf loc_8C116210
	mov 0x6F,r0 ; r0 set to 0x6f
	mov.b @(r0,r6),r1
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r5),r2
	cmp/eq r2,r1
	bf loc_8C116210
	rts
	mov 0x01,r0

loc_8C116210:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8c116216:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x68,PC),r3
	mov r15,r14
	jsr @r3
	mov r14,r4
	mov.l @(0x58,PC),r6
	mov 0x06,r5
	mov 0x00,r0

loc_8c11622a:
	mov r6,r3
	add 0x78,r3
	mov.b @(r0,r14),r2
	mov.b @(r0,r3),r3
	cmp/eq r2,r3
	bt loc_8c116240
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c116240:
	add 0x01,r0
	cmp/ge r5,r0
	bf loc_8c11622a
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C116250:
	mov.l @(0x2C,PC),r4
	mov 0x7E,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c116278
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov 0x10,r0
	mov.l @(0x28,PC),r4
	mov 0x63,r5
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/gt r5,r2
	bf loc_8c116274
	mov.b r5,@(r0,r4)

loc_8C116274:
	rts 
	mov 0x01,r0

;==============================================
loc_8C116278:
	mov 0x00,r0
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C116280:
	#data 0x8C289750
loc_8C116284:
	#data 0x8C2A3AE4
loc_8C116288:
	#data bank17.loc_8c17A38e
loc_8C11628C:
	#data 0x8C212C3c

;==============================================
loc_8C116290:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xB4,PC),r14
	bsr loc_8c1161ac
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c1162b4
	mov 0x00,r4

loc_8C1162A0:
	mov r14,r2
	add 0x70,r2
	add r4,r2
	mov.b @r2,r3
	mov.w @(0x9E,PC),r2
	add r14,r2
	add r4,r2
	mov.b @r2,r1
	cmp/eq r1,r3
	bt loc_8c1162bc

loc_8C1162B4:
	lds.l @r15+,pr
	mov 0x01,r0
	rts 
	mov.l @r15+,r14

loc_8C1162BC:
	mov 0x06,r5
	add 0x01,r4
	cmp/ge r5,r4
	bf loc_8c1162a0
	mov 0x00,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C1162CC:
	sts.l pr,@-r15
	mov.l @(loc_8C116350,pc),r3 ; r3 set to 0x8C117754
	jsr @r3
	nop
	mov.l @(loc_8C11634C,pc),r5 ; r5 set to 0x8C289750
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(loc_8C116354,pc),r7 ; r7 set to 0x8C213842
	mov 0x06,r6 ; r6 set to 0x06

loc_8C1162DC:
	mov r5,r3 ; r3 set to 0x8C289750
	add 0x70,r3 ; r3 set to 0x8C2897C0
	mov.b @(r0,r3),r3 ; r3 ??
	mov.w @(loc_8C11634A,pc),r2 ; r2 set to 0x80, r2 set to 0x80
	mov.b r3,@(r0,r7)  ; r7 ??? bc r3 is ???
	mov r5,r3 ; r3 set to 0x8C289750
	add 0x70,r3 ; r3 set to 0x8C2897C0
	add r5,r2 ; r2 set to 0x8C2897D0, r2 ??? bc r5 is ???
	mov.b @(r0,r3),r1
	add r0,r2 ; r2 set to 0x8C2897D0
	add 0x01,r0 ; r0 set to 0x01
	cmp/ge r6,r0
	bf/s loc_8C1162Dc
	mov.b r1,@r2 ; r2 ??? bc r1 is ???
	lds.l @r15+,pr
	mov 0x7E,r0 ; r0 set to 0x7E, r0 set to 0x7e
	mov.l @(loc_8C116358,pc),r3 ; r3 set to 0x8C2143AE, r3 set to 0x8C2143Ae
	mov.b @(r0,r5),r2
	rts
	mov.b r2,@r3

;==============================================
loc_8C116304:
	rts
	nop

;==============================================
loc_8C116308:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	extu.b r4,r0
	mov.l @(loc_8C11634C,pc),r10 ; r10 set to 0x8C289750
	cmp/eq 0x00,r0
	mov 0x76,r9 ; r9 set to 0x76
	bf/s loc_8C11632a
	mov 0x00,r13 ; r13 set to 0x00
	bra loc_8C1169Ee
	nop

loc_8C11632A:
	cmp/eq 0x01,r0
	bt loc_8C11635c
	cmp/eq 0x02,r0
	bf loc_8C116336
	bra loc_8C1169Ee
	nop

loc_8C116336:
	cmp/eq 0x03,r0
	bf loc_8C11633e
	bra loc_8C1169Ee
	nop

loc_8C11633E:
	cmp/eq 0x04,r0
	bf loc_8C116346
	bra loc_8C116828
	nop

loc_8C116346:
	bra loc_8C1169Ee
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11634A:
	#data 0x0080
	#align4

loc_8C11634C:
	#data 0x8C289750
loc_8C116350:
	#data loc_8c117754
loc_8C116354:
	#data 0x8C213842
loc_8C116358:
	#data 0x8C2143Ae

;==============================================
loc_8c11635c:
	mov.l @(loc_8C11650C,pc),r14
	mov.w @r14,r2
	tst r2,r2
	bf loc_8c116378
	mov.l @(loc_8c116510,pc),r3
	mov r15,r4
	jsr @r3
	add 0x0C,r4
	mov.l @(loc_8c116514,pc),r3
	mov r15,r2
	mov r14,r1
	add 0x0C,r2
	jsr @r3
	mov 0x0A,r0

loc_8c116378:
	mov.l @(loc_8C116518,pc),r4
	mov.l @(loc_8C11651C,pc),r5
	mov.b @r4,r0
	mov.b r0,@(0x0C,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x0D,r14)
	mov.w @(0x02,r4),r0
	mov.w r0,@(0x0E,r14)
	mov.w @(0x04,r4),r0
	mov.w r0,@(0x10,r14)
	mov.w @(0x06,r4),r0
	mov.w r0,@(0x12,r14)
	mov 0x2A,r0
	mov.l @r5,r3
	mov.l @(0x30,r3),r2
	mov.l r2,@(0x14,r14)
	mov.l @r5,r3
	mov.l @(0x34,r3),r2
	mov.l r2,@(0x18,r14)
	mov.l @r5,r3
	mov.l @(0x38,r3),r2
	mov.l r2,@(0x1C,r14)
	mov.l @r5,r3
	mov.l @(0x3C,r3),r2
	mov.l r2,@(0x20,r14)
	mov.b @(r0,r10),r3
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x12,r0
	mov.b @(r0,r4),r2
	mov 0x25,r0
	mov.b r2,@(r0,r14)
	mov 0x13,r0
	mov.b @(r0,r4),r3
	mov 0x26,r0
	mov 0x28,r1
	mov.b r3,@(r0,r14)
	mov 0x14,r0
	mov.b @(r0,r4),r2
	mov 0x27,r0
	add r14,r1
	mov.b r2,@(r0,r14)
	mov 0x11,r0
	mov.b @(r0,r4),r3
	mov 0x2C,r0
	mov 0x2A,r2
	mov.b r3,@(r0,r14)
	add r14,r2
	mov.w @(0x0A,r4),r0
	mov.w r0,@r1
	mov 0x2E,r1
	mov.w @(0x0C,r4),r0
	add r14,r1
	mov.w r0,@r2
	mov 0x10,r0
	mov.b @(r0,r4),r3
	mov 0x2D,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x08,r4),r0
	mov.w r0,@r1
	mov 0x51,r0
	mov.l @r5,r3
	mov.b @(r0,r3),r2
	mov 0x32,r0
	mov.b r2,@(r0,r14)
	mov 0x30,r1
	mov.w @(0x0E,r4),r0
	add r14,r1
	mov.l @(loc_8C116520,pc),r4
	mov.w r0,@r1
	mov.w @(loc_8C1164D6,pc),r0
	mov.b @r4,r3
	mov.w @(loc_8C1164D8,pc),r1
	mov.b r3,@(r0,r14)
	mov.b @(0x01,r4),r0
	add r14,r1
	mov.w @(loc_8C1164DA,pc),r2
	mov.b r0,@r1
	mov.b @(0x02,r4),r0
	add r14,r2
	mov.w @(loc_8C1164DC,pc),r1
	mov.b r0,@r2
	mov.b @(0x03,r4),r0
	add r14,r1
	mov.w @(loc_8C1164DE,pc),r2
	mov.b r0,@r1
	mov.b @(0x05,r4),r0
	add r14,r2
	mov.w @(loc_8C1164E0,pc),r1
	mov.b r0,@r2
	mov.b @(0x06,r4),r0
	add r14,r1
	mov.w @(loc_8C1164E2,pc),r2
	mov.b r0,@r1
	mov.b @(0x07,r4),r0
	add r14,r2
	mov.w @(loc_8C1164E4,pc),r1
	mov.b r0,@r2
	mov.b @(0x08,r4),r0
	add r14,r1
	mov.w @(loc_8C1164E6,pc),r2
	mov.b r0,@r1
	mov.b @(0x09,r4),r0
	add r14,r2
	mov.w @(loc_8C1164E8,pc),r1
	mov.b r0,@r2
	mov.w @(0x0A,r4),r0
	add r14,r1
	mov.w @(loc_8C1164EA,pc),r2
	mov.w r0,@r1
	mov.b @(0x0C,r4),r0
	add r14,r2
	mov.w @(loc_8C1164EC,pc),r1
	mov.b r0,@r2
	mov.b @(0x0D,r4),r0
	add r14,r1
	mov.w @(loc_8C1164EE,pc),r2
	mov.b r0,@r1
	mov.b @(0x0E,r4),r0
	add r14,r2
	mov.w @(loc_8C1164F0,pc),r1
	mov.b r0,@r2
	mov.b @(0x0F,r4),r0
	add r14,r1
	mov.b r0,@r1
	mov 0x10,r0
	fmov.s @(r0,r4),fr3
	mov.w @(loc_8C1164F2,pc),r0
	fmov.s fr3,@(r0,r14)
	mov 0x14,r0
	fmov.s @(r0,r4),fr3
	mov.w @(loc_8C1164F4,pc),r0
	fmov.s fr3,@(r0,r14)
	mov 0x1C,r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8C1164F6,pc),r0
	mov.b r3,@(r0,r14)
	mov 0x1D,r0
	mov.b @(r0,r4),r2
	mov.w @(loc_8C1164F8,pc),r0
	mov.b r2,@(r0,r14)
	mov 0x1E,r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8C1164FA,pc),r0
	mov.b r3,@(r0,r14)
	mov 0x1F,r0
	mov.b @(r0,r4),r2
	mov.w @(loc_8C1164FC,pc),r0
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8C1164FE,pc),r0
	mov.w r3,@(r0,r14)
	mov 0x22,r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8C116500,pc),r0
	mov.w r2,@(r0,r14)
	mov 0x24,r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8C116502,pc),r0
	mov.w r3,@(r0,r14)
	mov 0x26,r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8C116504,pc),r0
	mov.w r2,@(r0,r14)
	mov 0x28,r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8C116506,pc),r0
	mov.w r3,@(r0,r14)
	mov 0x2A,r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8C116508,pc),r0
	mov.w r2,@(r0,r14)
	bra loc_8c116524
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1164D6:
	#data 0x06F0
loc_8C1164D8:
	#data 0x06F1
loc_8C1164DA:
	#data 0x06F2
loc_8C1164DC:
	#data 0x06F3
loc_8C1164DE:
	#data 0x06F5
loc_8C1164E0:
	#data 0x06F6
loc_8C1164E2:
	#data 0x06F7
loc_8C1164E4:
	#data 0x06F8
loc_8C1164E6:
	#data 0x06F9
loc_8C1164E8:
	#data 0x06FA
loc_8C1164EA:
	#data 0x06FC
loc_8C1164EC:
	#data 0x06FD
loc_8C1164EE:
	#data 0x06FE
loc_8C1164F0:
	#data 0x06FF
loc_8C1164F2:
	#data 0x0700
loc_8C1164F4:
	#data 0x0704
loc_8C1164F6:
	#data 0x0708
loc_8C1164F8:
	#data 0x0709
loc_8C1164FA:
	#data 0x070A
loc_8C1164FC:
	#data 0x070B
loc_8C1164FE:
	#data 0x070C
loc_8C116500:
	#data 0x070E
loc_8C116502:
	#data 0x0710
loc_8C116504:
	#data 0x0712
loc_8C116506:
	#data 0x0714
loc_8C116508:
	#data 0x0716
	#align4

loc_8C11650C:
	#data 0x8C28CBD0
loc_8c116510:
	#data bank17.loc_8c1780b2
loc_8c116514:
	#data bank12.loc_8c129620
loc_8C116518:
	#data 0x8C212C3C
loc_8C11651C:
	#data 0x8C26823C
loc_8C116520:
	#data 0x8C212BFC

;==============================================
loc_8c116524:
	mov 0x2C,r0
	mov.l @(loc_8C1166C4,pc),r5
	mov.w @(r0,r4),r3
	mov.w @(loc_8C116694,pc),r0
	mov.w @(loc_8C1166A2,pc),r1
	mov.w r3,@(r0,r14)
	mov 0x2E,r0
	mov.w @(r0,r4),r2
	add r14,r1
	mov.w @(loc_8C116696,pc),r0
	mov.w r2,@(r0,r14)
	mov 0x30,r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8C116698,pc),r0
	mov.w r3,@(r0,r14)
	mov 0x32,r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8C11669A,pc),r0
	mov.w r2,@(r0,r14)
	mov 0x34,r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8C11669C,pc),r0
	mov.w r3,@(r0,r14)
	mov 0x36,r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8C11669E,pc),r0
	mov.w r2,@(r0,r14)
	mov.w @(loc_8C1166A0,pc),r0
	mov.w @r5,r3
	mov.w r3,@(r0,r14)
	mov.w @(0x02,r5),r0
	mov.w r0,@r1
	mov.w @(loc_8C1166A4,pc),r2
	mov r13,r4
	mov.w @(0x04,r5),r0
	add r14,r2
	mov.w @(loc_8C1166A6,pc),r1
	mov.w r0,@r2
	mov.w @(0x06,r5),r0
	add r14,r1
	mov.w @(loc_8C1166A8,pc),r2
	mov.w r0,@r1
	mov.w @(0x08,r5),r0
	add r14,r2
	mov.w r0,@r2

loc_8c11657e:
	mov r5,r2
	mov.w @(loc_8C1166AA,pc),r3
	add 0x0A,r2
	add r4,r2
	mov.w @r2,r1
	add r14,r3
	mov.w @(loc_8C1166AE,pc),r2
	add r4,r3
	mov.w r1,@r3
	mov.w @(loc_8C1166AC,pc),r3
	add r5,r2
	add r4,r2
	mov.w @r2,r1
	add r14,r3
	mov.w @(loc_8C1166B2,pc),r2
	add r4,r3
	mov.w r1,@r3
	mov.w @(loc_8C1166B0,pc),r3
	add r5,r2
	add r4,r2
	mov.w @r2,r1
	add r14,r3
	mov.w @(loc_8C1166B6,pc),r2
	add r4,r3
	mov.w r1,@r3
	mov.w @(loc_8C1166B4,pc),r3
	add r5,r2
	add r4,r2
	mov.w @r2,r1
	add r14,r3
	add r4,r3
	mov.w r1,@r3
	mov.w @(loc_8C1166BA,pc),r2
	mov.w @(loc_8C1166B8,pc),r3
	add r5,r2
	add r4,r2
	add r14,r3
	mov.w @r2,r1
	add r4,r3
	add 0x02,r4
	mov.w r1,@r3
	cmp/hs r9,r4
	bf loc_8c11657e
	mov 0x2E,r0
	mov.l @(loc_8C1166CC,pc),r6
	mov.w @(r0,r14),r2
	mov r13,r10
	mov.w @(loc_8C1166BC,pc),r0
	mov 0x04,r8
	mov.l @(loc_8C1166D0,pc),r5
	mov 0x14,r11
	mov.l @(loc_8C1166C8,pc),r7
	mov.w r2,@(r0,r14)

loc_8c1165e8:
	mov r10,r12
	shll r12
	mov r10,r3
	mov r10,r9
	add r3,r12
	mov r13,r4
	shll2 r9
	shll2 r12
	shll r12
	shll r9

loc_8c1165fc:
	mov r14,r0
	nop
	mov r12,r3
	add r6,r3
	mov r3,r2
	add 0x0C,r2
	add r4,r2
	mov.b @r2,r3
	add 0x34,r0
	add r12,r0
	mov.b r3,@(r0,r4)
	mov r12,r3
	add r5,r3
	mov.w @(loc_8C1166BE,pc),r0
	mov r3,r2
	add 0x0C,r2
	add r4,r2
	mov.b @r2,r3
	add r14,r0
	add r9,r0
	mov.b r3,@(r0,r4)
	mov r12,r3
	add r7,r3
	mov.w @(loc_8C1166C0,pc),r0
	mov r3,r2
	add 0x0C,r2
	add r4,r2
	mov.b @r2,r3
	add r14,r0
	add r12,r0
	mov.b r3,@(r0,r4)
	add 0x01,r4
	cmp/ge r8,r4
	bf loc_8c1165fc
	add 0x01,r10
	cmp/ge r11,r10
	bf loc_8c1165e8
	mov r13,r10

loc_8c116648:
	mov r10,r12
	shll r12
	mov r10,r2
	mov r10,r3
	shll2 r2
	mov r13,r4
	add r3,r12
	shll2 r12
	shll r12
	shll r2
	mov.l r2,@r15

loc_8c11665e:
	mov r14,r0
	nop
	mov r12,r9
	add r6,r9
	mov r9,r2
	add 0x34,r0
	add r12,r0
	add 0x01,r2
	mov r0,r3
	add r4,r2
	mov.w @(loc_8C1166BE,pc),r0
	mov.b @r2,r1
	add 0x04,r3
	add r4,r3
	mov.b r1,@r3
	add r14,r0
	mov.l @r15,r3
	add r3,r0
	mov r0,r2
	add 0x04,r2
	add r4,r2
	mov r12,r0
	nop
	add r5,r0
	mov r0,r3
	bra loc_8c1166d4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C116694:
	#data 0x0718
loc_8C116696:
	#data 0x071A
loc_8C116698:
	#data 0x071C
loc_8C11669A:
	#data 0x071E
loc_8C11669C:
	#data 0x0720
loc_8C11669E:
	#data 0x0722
loc_8C1166A0:
	#data 0x0494
loc_8C1166A2:
	#data 0x0496
loc_8C1166A4:
	#data 0x0498
loc_8C1166A6:
	#data 0x049A
loc_8C1166A8:
	#data 0x049C
loc_8C1166AA:
	#data 0x049E
loc_8C1166AC:
	#data 0x0514
loc_8C1166AE:
	#data 0x0080
loc_8C1166B0:
	#data 0x058A
loc_8C1166B2:
	#data 0x00F6
loc_8C1166B4:
	#data 0x0600
loc_8C1166B6:
	#data 0x016C
loc_8C1166B8:
	#data 0x0676
loc_8C1166BA:
	#data 0x01E2
loc_8C1166BC:
	#data 0x06EC
loc_8C1166BE:
	#data 0x0214
loc_8C1166C0:
	#data 0x02B4
	#align4

loc_8C1166C4:
	#data 0x8C2A3CD4
loc_8C1166C8:
	#data 0x8C212CEC
loc_8C1166CC:
	#data 0x8C2897E0
loc_8C1166D0:
	#data 0x8C2899D8

;==============================================
loc_8c1166d4:
	add 0x01,r3
	mov r12,r8
	add r4,r3
	mov.w @(loc_8C116814,pc),r0
	mov.b @r3,r1
	add r7,r8
	add r14,r0
	mov.b r1,@r2
	mov r8,r2
	add 0x01,r2
	add r12,r0
	mov r0,r3
	add r4,r2
	mov.b @r2,r1
	add 0x04,r3
	add r4,r3
	mov.b r1,@r3
	mov r14,r0
	nop
	add 0x34,r0
	mov r9,r2
	add r12,r0
	add 0x04,r2
	mov r0,r3
	add r4,r2
	mov.w @(loc_8C116814,pc),r0
	mov.b @r2,r1
	add 0x07,r3
	mov r8,r2
	add r14,r0
	add r4,r3
	add 0x04,r2
	mov.b r1,@r3
	add r12,r0
	add r4,r2
	mov r0,r3
	mov.b @r2,r1
	add 0x07,r3
	add r4,r3
	mov.b r1,@r3
	mov 0x03,r3
	add 0x01,r4
	cmp/ge r3,r4
	bf loc_8c11665e
	add 0x01,r10
	cmp/ge r11,r10
	bf loc_8c116648
	mov.w @(loc_8C116816,pc),r11
	mov r13,r4
	mov r13,r12

loc_8c116738:
	mov r4,r13
	mov r14,r2
	add r6,r13
	mov r14,r3
	mov.b @(0x08,r13),r0
	add 0x34,r2
	add r4,r2
	mov.b r0,@(0x0A,r2)
	add 0x34,r3
	mov.b @(0x07,r13),r0
	add r4,r3
	mov 0x14,r1
	mov.b r0,@(0x0B,r3)
	mov r14,r3
	mov.l @(0x10,r13),r2
	add 0x34,r3
	add r4,r3
	mov.l r2,@(0x0C,r3)
	mov r14,r3
	mov.l @(0x14,r13),r2
	add 0x34,r3
	add r4,r3
	mov.l r2,@(0x10,r3)
	mov r14,r3
	add 0x34,r3
	mov.b @(0x09,r13),r0
	add r4,r3
	add r3,r1
	mov r14,r3
	add 0x34,r3
	mov.b r0,@r1
	add r4,r3
	mov 0x15,r1
	mov.b @(0x0A,r13),r0
	add r3,r1
	mov r14,r3
	add 0x34,r3
	mov.b r0,@r1
	mov 0x16,r1
	mov.b @(0x0B,r13),r0
	add r4,r3
	add r3,r1
	mov.w @(loc_8C116818,pc),r3
	mov.b r0,@r1
	add r14,r3
	add r12,r3
	mov r4,r0
	nop
	add r5,r0
	mov r4,r13
	mov.b @(0x08,r0),r0
	add r7,r13
	mov 0x14,r1
	mov.b r0,@(0x07,r3)
	mov.w @(loc_8C116814,pc),r3
	mov.b @(0x08,r13),r0
	add r14,r3
	add r4,r3
	mov.b r0,@(0x0A,r3)
	mov.w @(loc_8C116814,pc),r3
	mov.b @(0x07,r13),r0
	add r14,r3
	add r4,r3
	mov.b r0,@(0x0B,r3)
	mov.w @(loc_8C116814,pc),r3
	mov.l @(0x10,r13),r2
	add r14,r3
	add r4,r3
	mov.l r2,@(0x0C,r3)
	mov.w @(loc_8C116814,pc),r3
	mov.l @(0x14,r13),r2
	add r14,r3
	add r4,r3
	mov.l r2,@(0x10,r3)
	mov.w @(loc_8C116814,pc),r3
	mov.b @(0x09,r13),r0
	add r14,r3
	add r4,r3
	add r3,r1
	mov.b r0,@r1
	mov.w @(loc_8C116814,pc),r3
	mov 0x15,r1
	mov.b @(0x0A,r13),r0
	add r14,r3
	add r4,r3
	add r3,r1
	mov.w @(loc_8C116814,pc),r3
	mov.b r0,@r1
	mov 0x16,r1
	add r14,r3
	mov.b @(0x0B,r13),r0
	add r4,r3
	add 0x18,r4
	add r3,r1
	cmp/hs r11,r4
	mov.b r0,@r1
	bf/s loc_8c116738
	add 0x08,r12
	mov.l @(loc_8c116820,pc),r2
	jsr @r2
	nop
	mov.w @(loc_8C11681A,pc),r1
	mov.l @(loc_8c116824,pc),r3
	add r14,r1
	jsr @r3
	mov.w r0,@r1
	mov.w @(loc_8C11681C,pc),r2
	add r14,r2
	bra loc_8c1169ee
	mov.w r0,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C116814:
	#data 0x02B4
loc_8C116816:
	#data 0x01E0
loc_8C116818:
	#data 0x0214
loc_8C11681A:
	#data 0x0724
loc_8C11681C:
	#data 0x0726
	#align4

loc_8c116820:
	#data loc_8c1187ba
loc_8c116824:
	#data loc_8c1187a2

;==============================================
loc_8c116828:
	mov.l @(0x140,PC),r14
	mov r13,r4
	mov.l @(0x138,PC),r5
	mov 0x12,r11

loc_8c116830:
	mov.w @(0x122,PC),r3
	add r14,r3
	add r4,r3
	mov r4,r0
	nop 
	mov.b @(r0,r5),r2
	add 0x01,r4
	cmp/ge r11,r4
	mov.b r2,@r3
	bf loc_8c116830
	mov.l @(0x128,PC),r2
	mov r15,r12
	add 0x04,r12
	jsr @r2
	mov r12,r4
	mov r13,r4
	mov 0x06,r6

loc_8c116852:
	mov r4,r5
	mov.w @(0x100,PC),r3
	add r12,r5
	add r14,r3
	mov.b @r5,r2
	add r4,r3
	mov.b r2,@r3
	mov r10,r3
	add 0x78,r3
	mov.b @r5,r2
	add r4,r3
	add 0x01,r4
	mov.b r2,@r3
	cmp/ge r6,r4
	bf loc_8c116852
	mov.l @(0x100,PC),r7
	mov r13,r4
	mov 0x08,r5

loc_8c116876:
	mov r4,r6
	mov.w @(0xDE,PC),r2
	add r7,r6
	mov.b @r6,r3
	add r14,r2
	add r4,r2
	mov.b r3,@r2
	mov.w @(0xD4,PC),r2
	mov.b @r6,r3
	add r10,r2
	add r4,r2
	mov.b r3,@r2
	mov r10,r2
	add 0x70,r2
	mov.b @r6,r3
	add r4,r2
	add 0x01,r4
	mov.b r3,@r2
	cmp/ge r5,r4
	bf loc_8c116876
	mov.w @(0xBA,PC),r6
	mov r13,r4
	mov.l @(0xD8,PC),r7
	mov.l @(0xD0,PC),r12

loc_8c1168a6:
	mov r14,r3
	add r4,r3
	mov r4,r0
	nop 
	mov.b @(r0,r7),r2
	mov.b r2,@r3
	mov.w @(0xA6,PC),r3
	mov.b @(r0,r12),r2
	add r14,r3
	add r4,r3
	add 0x01,r4
	mov.b r2,@r3
	cmp/ge r6,r4
	bf loc_8c1168a6
	mov.l @(0xBC,PC),r7
	mov r13,r4
	mov 0x0E,r6

loc_8c1168c8:
	mov.w @(0x92,PC),r3
	add r14,r3
	add r4,r3
	mov r4,r0
	nop 
	mov.b @(r0,r7),r2
	add 0x01,r4
	cmp/ge r6,r4
	mov.b r2,@r3
	bf loc_8c1168c8
	mov.l @(0xA4,PC),r6
	mov r13,r7
	mov 0x32,r8

loc_8c1168e2:
	mov 0x1A,r12
	mov r13,r4
	mul.l r12,r7
	sts macl,r12

loc_8c1168ea:
	mov r12,r3
	add r6,r3
	mov r3,r2
	mov.w @(0x6C,PC),r0
	add 0x08,r2
	add r4,r2
	mov.b @r2,r3
	add r14,r0
	add r12,r0
	mov.b r3,@(r0,r4)
	add 0x01,r4
	cmp/ge r11,r4
	bf loc_8c1168ea
	mov r13,r4

loc_8c116906:
	mov.w @(0x56,PC),r0
	add r14,r0
	add r12,r0
	mov r0,r3
	add 0x12,r3
	add r4,r3
	mov r12,r0
	nop 
	add r6,r0
	mov.b @(r0,r4),r2
	add 0x01,r4
	cmp/ge r5,r4
	mov.b r2,@r3
	bf loc_8c116906
	add 0x01,r7
	cmp/ge r8,r7
	bf loc_8c1168e2
	mov.l @(0x5C,PC),r5
	mov r13,r4

loc_8c11692c:
	mov.w @(0x32,PC),r3
	add r14,r3
	add r4,r3
	mov r4,r0
	nop 
	mov.b @(r0,r5),r2
	add 0x01,r4
	cmp/ge r9,r4
	mov.b r2,@r3
	bf loc_8c11692c
	mov.l @(0x48,PC),r6
	mov r13,r4
	mov 0x0A,r5

loc_8c116946:
	mov.w @(0x1A,PC),r3
	add r14,r3
	add r4,r3
	mov r4,r0
	nop 
	mov.b @(r0,r6),r2
	bra loc_8c116990
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c116956:
	#data 0x0720
loc_8c116958:
	#data 0x073A
loc_8c11695a:
	#data 0x0732
loc_8c11695c:
	#data 0x0080
loc_8c11695e:
	#data 0x0740
loc_8c116960:
	#data 0x020C
loc_8c116962:
	#data 0x010A
loc_8c116964:
	#data 0x0100
	#align4

loc_8c116968:
	#data 0x8C21384A
loc_8c11696c:
	#data 0x8C28D344
loc_8c116970:
	#data bank17.loc_8c17A38E
loc_8c116974:
	#data 0x8c213842
loc_8c116978:
	#data 0x8c2138ea
loc_8c11697c:
	#data 0x8c21386a
loc_8c116980:
	#data 0x8c21385c
loc_8c116984:
	#data 0x8c2143c6
loc_8c116988:
	#data 0x8c213a74
loc_8c11698c:
	#data 0x8c213a6a

;==============================================
loc_8c116990:
	add 0x01,r4
	mov.b r2,@r3
	cmp/ge r5,r4
	bf loc_8c116946
	mov.l @(0xD8,PC),r6
	mov r13,r4
	mov.l @(0xD0,PC),r7
	mov 0x40,r5

loc_8c1169a0:
	mov.w @(0xC4,PC),r3
	add r14,r3
	add r4,r3
	mov r4,r0
	nop 
	mov.b @(r0,r6),r2
	mov.b r2,@r3
	mov.w @(0xB8,PC),r3
	mov.b @(r0,r7),r2
	add r14,r3
	add r4,r3
	add 0x01,r4
	mov.b r2,@r3
	cmp/ge r5,r4
	bf loc_8c1169a0
	mov.l @(0xB8,PC),r3
	mov.w @(0xA8,PC),r0
	mov.l @r3,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l @(0xB0,PC),r2
	mov.l @r2,r1
	mov.l r1,@(r0,r14)
	add 0x04,r0
	mov.l @(0xAC,PC),r1
	mov.l @r1,r3
	mov.l r3,@(r0,r14)
	mov 0x7E,r0
	mov.b @(r0,r10),r2
	mov.w @(0x90,PC),r0
	mov.b r2,@(r0,r14)
	add 0xFE,r0
	mov.l @(0xA0,PC),r2
	mov.b @r2,r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.l @(0x9C,PC),r3
	mov.b @r3,r1
	mov.b r1,@(r0,r14)

loc_8C1169EE:
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
loc_8C116A02:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.l @(0x84,PC),r14
	mov 0x3F,r1
	mov r14,r7
	mov.l r7,@r15
	bra loc_8c116a2e
	mov r7,r6

loc_8C116A12:
	mov.b @r6,r2
	exts.b r5,r3
	extu.b r2,r2
	and r1,r2
	cmp/eq r3,r2
	bf loc_8c116a2a
	mov.b @r7,r3
	or r4,r3
	mov.b r3,@r7
	add 0x04,r15
	rts 
	mov.l @r15+,r14

loc_8C116A2A:
	add 0x01,r6
	add 0x01,r7

loc_8C116A2E:
	mov r14,r2
	add 0x38,r2
	cmp/hs r2,r6
	bf loc_8c116a12
	add 0x04,r15
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C116A3C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xBC,r15
	mov r4,r0
	nop
	mov.b r0,@(0x04,r15)
	mov.b @(0x04,r15),r0
	mov.l @(loc_8C116A8C,pc),r3 ; r3 set to 0x8C2940C4
	extu.b r0,r0
	mov.l @(loc_8C116A90,pc),r5 ; r5 set to bank16.loc_8c16AC98
	mov r0,r14
	shll8 r14
	shll r14
	add r3,r14
	bra loc_8C116A9a
	mov r14,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c116a68:
	#data 0x01C0
loc_8c116a6a:
	#data 0x0180
loc_8c116a6c:
	#data 0x0200
loc_8c116a6e:
	#data 0x0750
	#align4

loc_8c116a70:
	#data 0x8C213A2a
loc_8c116a74:
	#data 0x8C21396a
loc_8c116a78:
	#data 0x8C213AF8
loc_8c116a7c:
	#data 0x8C213AFc
loc_8c116a80:
	#data 0x8C213B00
loc_8c116a84:
	#data 0x8C214294
loc_8c116a88:
	#data 0x8C214292
loc_8C116A8C:
	#data 0x8C2940C4
loc_8C116A90:
	#data bank16.loc_8c16AC98

;==============================================
loc_8C116A94:
	mov.b @r5+,r3
	mov.b r3,@r4
	add 0x01,r4

loc_8c116a9a:
	mov r14,r2
	add 0x38,r2
	cmp/hs r2,r4
	bf loc_8c116a94
	mov.l @(loc_8C116B90,pc),r12
	mov r15,r11
	mov 0x00,r9
	add 0x0C,r11
	mov r9,r10
	mov 0x20,r13
	mov r9,r4
	mov 0x01,r5

loc_8c116ab2:
	mov.l @r12,r2
	mov.l @(0x30,r2),r3
	tst r5,r3
	bt loc_8c116ada
	mov r4,r0
	nop
	cmp/eq 0x18,r0
	bt loc_8c116ada
	mov r4,r0
	nop
	cmp/eq 0x19,r0
	bt loc_8c116ada
	mov r4,r0
	nop
	cmp/eq 0x1A,r0
	bt loc_8c116ada
	mov r10,r0
	nop
	add 0x01,r10
	mov.b r4,@(r0,r11)

loc_8c116ada:
	add 0x01,r4
	shll r5
	cmp/ge r13,r4
	bf loc_8c116ab2
	mov 0x01,r5
	mov r9,r4

loc_8c116ae6:
	mov.l @r12,r3
	mov.l @(0x34,r3),r2
	tst r5,r2
	bt loc_8c116afa
	mov r10,r0
	nop
	mov r4,r3
	add 0x20,r3
	add 0x01,r10
	mov.b r3,@(r0,r11)

loc_8c116afa:
	add 0x01,r4
	shll r5
	cmp/ge r13,r4
	bf loc_8c116ae6
	cmp/pl r10
	mov r11,r8
	mov.l r9,@r15
	bf/s loc_8c116b1c
	mov.l r8,@(0x08,r15)

loc_8c116b0c:
	mov.w @(loc_8C116B8E,pc),r4
	bsr loc_8c116a02
	mov.b @r8+,r5
	mov.l @r15,r3
	add 0x01,r3
	cmp/ge r10,r3
	bf/s loc_8c116b0c
	mov.l r3,@r15

loc_8c116b1c:
	mov 0x01,r5
	mov r9,r4
	mov r9,r10

loc_8c116b22:
	mov.l @r12,r3
	mov.l @(0x38,r3),r2
	tst r5,r2
	bt loc_8c116b4a
	mov r4,r0
	nop
	cmp/eq 0x18,r0
	bt loc_8c116b4a
	mov r4,r0
	nop
	cmp/eq 0x19,r0
	bt loc_8c116b4a
	mov r4,r0
	nop
	cmp/eq 0x1A,r0
	bt loc_8c116b4a
	mov r10,r0
	nop
	add 0x01,r10
	mov.b r4,@(r0,r11)

loc_8c116b4a:
	add 0x01,r4
	shll r5
	cmp/ge r13,r4
	bf loc_8c116b22
	mov 0x01,r5
	mov r9,r4

loc_8c116b56:
	mov.l @r12,r2
	mov.l @(0x3C,r2),r3
	tst r5,r3
	bt loc_8c116b6a
	mov r10,r0
	nop
	mov r4,r3
	add 0x20,r3
	add 0x01,r10
	mov.b r3,@(r0,r11)

loc_8c116b6a:
	add 0x01,r4
	shll r5
	cmp/ge r13,r4
	bf loc_8c116b56
	cmp/pl r10
	mov r9,r11
	bf/s loc_8c116b86
	mov.l @(0x08,r15),r13

loc_8c116b7a:
	mov.b @r13+,r5
	bsr loc_8c116a02
	mov 0x40,r4
	add 0x01,r11
	cmp/ge r10,r11
	bf loc_8c116b7a

loc_8c116b86:
	mov.l @(loc_8C116B94,pc),r3
	mov.b @r3,r2
	bra loc_8c116b98
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C116B8E:
	#data 0x0080
	#align4

loc_8C116B90:
	#data 0x8C26823C
loc_8C116B94:
	#data 0x8C28977A

;==============================================
loc_8c116b98:
	mov.l @(loc_8C116D00,pc),r4
	mov 0x38,r0
	mov.b r2,@(r0,r14)
	mov 0x39,r0
	mov.b @r4,r2
	mov 0x3A,r1
	add r14,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@r1
	mov 0x29,r0
	mov.l @r12,r2
	mov.b @(r0,r2),r1
	mov 0x4D,r0
	mov.b r1,@(r0,r14)
	mov 0x51,r0
	mov.l @r12,r2
	mov.b @(r0,r2),r1
	mov 0x4C,r0
	mov.b r1,@(r0,r14)
	mov 0x12,r0
	mov.b @(r0,r4),r2
	mov 0x41,r0
	mov.b r2,@(r0,r14)
	mov 0x13,r0
	mov.b @(r0,r4),r1
	mov 0x42,r0
	mov.b r1,@(r0,r14)
	mov 0x14,r0
	mov.b @(r0,r4),r2
	mov 0x43,r0
	mov.b r2,@(r0,r14)
	mov.w @(0x02,r4),r0
	mov r14,r2
	mov.l @(loc_8c116d04,pc),r3
	mov 0x64,r5
	extu.w r0,r1
	add 0x44,r2
	jsr @r3
	mov r5,r0
	mov.b r0,@r2
	mov.w @(0x02,r4),r0
	mov.l @(loc_8c116d08,pc),r3
	extu.w r0,r1
	jsr @r3
	mov r5,r0
	mov 0x45,r1
	mov.l @(loc_8c116d04,pc),r2
	add r14,r1
	mov r14,r3
	mov.b r0,@r1
	add 0x46,r3
	mov.w @(0x04,r4),r0
	extu.w r0,r1
	jsr @r2
	mov r5,r0
	mov.b r0,@r3
	mov.w @(0x04,r4),r0
	mov.l @(loc_8c116d08,pc),r3
	extu.w r0,r1
	jsr @r3
	mov r5,r0
	mov 0x47,r1
	mov.l @(loc_8c116d04,pc),r2
	add r14,r1
	mov r14,r3
	mov.b r0,@r1
	add 0x48,r3
	mov.w @(0x06,r4),r0
	extu.w r0,r1
	jsr @r2
	mov r5,r0
	mov.b r0,@r3
	mov.w @(0x06,r4),r0
	mov.l @(loc_8c116d08,pc),r3
	extu.w r0,r1
	jsr @r3
	mov r5,r0
	mov 0x49,r1
	mov r14,r2
	add r14,r1
	mov.b r0,@r1
	mov 0x11,r0
	mov.b @(r0,r4),r3
	mov 0x3B,r0
	add 0x3C,r2
	mov.b r3,@(r0,r14)
	mov.w @(0x0A,r4),r0
	mov.l @(loc_8c116d04,pc),r3
	extu.w r0,r1
	jsr @r3
	mov r5,r0
	mov.b r0,@r2
	mov.w @(0x0A,r4),r0
	mov.l @(loc_8c116d08,pc),r3
	extu.w r0,r1
	jsr @r3
	mov r5,r0
	mov 0x3D,r1
	mov.l @(loc_8c116d04,pc),r2
	add r14,r1
	mov r14,r3
	mov.b r0,@r1
	add 0x3E,r3
	mov.w @(0x0C,r4),r0
	extu.w r0,r1
	jsr @r2
	mov r5,r0
	mov.b r0,@r3
	mov.w @(0x0C,r4),r0
	mov.l @(loc_8c116d08,pc),r3
	extu.w r0,r1
	jsr @r3
	mov r5,r0
	mov 0x3F,r1
	mov r14,r2
	add r14,r1
	mov.b r0,@r1
	mov 0x10,r0
	mov.b @(r0,r4),r3
	mov 0x40,r0
	add 0x4A,r2
	mov.b r3,@(r0,r14)
	mov.w @(0x08,r4),r0
	mov.l @(loc_8c116d04,pc),r3
	extu.w r0,r1
	jsr @r3
	mov r5,r0
	mov.b r0,@r2
	mov.w @(0x08,r4),r0
	mov.l @(loc_8c116d08,pc),r3
	extu.w r0,r1
	jsr @r3
	mov r5,r0
	mov 0x4B,r1
	mov.l @(loc_8c116d0c,pc),r3
	add r14,r1
	mov.b r0,@r1
	mov.b @(0x04,r15),r0
	jsr @r3
	mov r0,r4
	mov 0x50,r1
	add r14,r1
	mov.b r0,@r1
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

loc_8C116CCC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0x9C,r15
	mov.l @(loc_8C116D10,pc),r3 ; r3 set to 0x8C129728
	mov 0x60,r6 ; r6 set to 0x60
	mov.b r4,@r15
	mov r15,r4
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	add 0x04,r4
	mov.b @r15,r0
	mov.l @(loc_8C116D18,pc),r14 ; r14 set to 0x8C1297B0
	mov.l @(loc_8C116D14,pc),r13 ; r13 set to 0x8C129668
	cmp/eq 0x00,r0
	bt loc_8C116D1c
	cmp/eq 0x01,r0
	bt loc_8C116D8e
	cmp/eq 0x02,r0
	bt loc_8C116DB4
	cmp/eq 0x03,r0
	bt loc_8C116D42
	cmp/eq 0x04,r0
	bt loc_8C116D66
	bra loc_8C116D8e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c116d00:
	#data 0x8C212C3c
loc_8C116D04:
	#data bank12.loc_8c1292D4
loc_8C116D08:
	#data bank12.loc_8c129128
loc_8C116D0C:
	#data loc_8c118784
loc_8C116D10:
	#data bank12.loc_8c129728
loc_8C116D14:
	#data bank12.loc_8c129668
loc_8C116D18:
	#data bank12.loc_8c1297B0

;==============================================
loc_8C116D1C:
	mov.l @(loc_8C116DFC,pc),r5 ; r5 set to bank16.loc_8c16A07c
	mov r15,r4
	jsr @r14
	add 0x04,r4
	mov.l @(loc_8C116E00,pc),r5 ; r5 set to bank16.loc_8c16A08e
	mov r15,r4
	jsr @r14
	add 0x16,r4
	mov.l @(loc_8C116E04,pc),r5 ; r5 set to bank16.loc_8c16A0B0
	mov r15,r4
	mov 0x10,r6 ; r6 set to 0x10
	jsr @r13
	add 0x38,r4
	mov.l @(loc_8C116E08,pc),r3 ; r3 set to 0x8C2A3F50
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.w @(loc_8C116DF6,pc),r2 ; r2 set to 0x6000
	mov.l r3,@(r0,r15)
	bra loc_8C116DB0
	nop

loc_8C116D42:
	mov.l @(loc_8C116E0C,pc),r5 ; r5 set to bank16.loc_8c16A148
	mov r15,r4
	jsr @r14
	add 0x04,r4
	mov.l @(loc_8C116E10,pc),r5 ; r5 set to bank16.loc_8c16A15a
	mov r15,r4
	jsr @r14
	add 0x16,r4
	mov.l @(loc_8C116E14,pc),r5 ; r5 set to bank16.loc_8c16A17c
	mov r15,r4
	mov 0x10,r6 ; r6 set to 0x10
	jsr @r13
	add 0x38,r4
	mov.l @(loc_8C116E18,pc),r3 ; r3 set to 0x8C28D2F8
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l r3,@(r0,r15)
	bra loc_8C116DB0
	mov 0x4C,r2

loc_8C116D66:
	mov.l @(loc_8C116E1C,pc),r5 ; r5 set to bank16.loc_8c16A18c
	mov r15,r4
	jsr @r14
	add 0x04,r4
	mov.l @(loc_8C116E20,pc),r5 ; r5 set to bank16.loc_8c16A19e
	mov r15,r4
	jsr @r14
	add 0x16,r4
	mov.l @(loc_8C116E24,pc),r5 ; r5 set to bank16.loc_8c16A1C0
	mov r15,r4
	mov 0x10,r6 ; r6 set to 0x10
	jsr @r13
	add 0x38,r4
	mov.l @(loc_8C116E28,pc),r2 ; r2 set to 0x8C28D344
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.w @(loc_8C116DF8,pc),r3 ; r3 set to 0x980
	mov.l r2,@(r0,r15)
	mov 0x60,r0 ; r0 set to 0x60
	bra loc_8C116DB4
	mov.l r3,@(r0,r15)

loc_8c116d8e:
	mov.l @(loc_8c116e2c,pc),r5
	mov r15,r4
	jsr @r14
	add 0x04,r4
	mov.l @(loc_8c116e30,pc),r5
	mov r15,r4
	jsr @r14
	add 0x16,r4
	mov.l @(loc_8c116e34,pc),r5
	mov r15,r4
	mov 0x10,r6
	jsr @r13
	add 0x38,r4
	mov.l @(loc_8C116E38,pc),r3
	mov 0x5C,r0
	mov.w @(loc_8C116DFA,pc),r2
	mov.l r3,@(r0,r15)

loc_8C116DB0:
	mov 0x60,r0 ; r0 set to 0x60
	mov.l r2,@(r0,r15)

loc_8C116DB4:
	mov.b @r15,r4
	mov r15,r2
	mov.l @(loc_8C116E3C,pc),r0 ; r0 set to bank16.loc_8c16A270, r0 set to bank16.loc_8c16A270
	add 0x48,r2
	shll2 r4
	mov r15,r5
	mov.l @(r0,r4),r3
	mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
	mov.l @(loc_8C116E40,pc),r0 ; r0 set to loc_8c16AC84, r0 set to loc_8c16AC84
	mov.l r3,@r2
	mov r15,r2
	mov.l @(r0,r4),r3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	add 0x4C,r2
	mov.l r3,@r2
	mov 0x05,r3 ; r3 set to 0x05, r3 set to 0x05
	mov.w r1,@(r0,r15)
	mov 0x52,r0 ; r0 set to 0x52, r0 set to 0x52
	mov.w r3,@(r0,r15)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	mov.l @(loc_8C116E48,pc),r3 ; r3 set to 0x8C1799C4, r3 set to 0x8C1799C4
	mov.l r4,@(r0,r15)
	mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
	mov.w r4,@(r0,r15)
	mov.l @(loc_8C116E44,pc),r4 ; r4 set to 0x8C28DCC4, r4 set to 0x8C28DCC4
	jsr @r3
	add 0x04,r5
	add 0x64,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C116DF6:
	#data 0x6000
loc_8C116DF8:
	#data 0x0980
loc_8c116dfa:
	#data 0x0728
	#align4

loc_8C116DFC:
	#data bank16.loc_8c16A07c
loc_8C116E00:
	#data bank16.loc_8c16A08e
loc_8C116E04:
	#data bank16.loc_8c16A0B0
loc_8C116E08:
	#data 0x8C2A3F50
loc_8C116E0C:
	#data bank16.loc_8c16A148
loc_8C116E10:
	#data bank16.loc_8c16A15a
loc_8C116E14:
	#data bank16.loc_8c16A17c
loc_8C116E18:
	#data 0x8C28D2F8
loc_8C116E1C:
	#data bank16.loc_8c16A18c
loc_8C116E20:
	#data bank16.loc_8c16A19e
loc_8C116E24:
	#data bank16.loc_8c16A1C0
loc_8C116E28:
	#data 0x8C28D344
loc_8C116E2C:
	#data bank16.loc_8c16A0C0
loc_8C116E30:
	#data bank16.loc_8c16A0D2
loc_8C116E34:
	#data bank16.loc_8c16A0F4
loc_8c116e38:
	#data 0x8C28CBD0
loc_8C116E3C:
	#data bank16.loc_8c16A270
loc_8C116E40:
	#data bank16.loc_8c16AC84
loc_8C116E44:
	#data 0x8C28DCC4
loc_8C116E48:
	#data bank17.loc_8c1799C4

;==============================================
loc_8C116E4C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov.b r4,@r15
	mov.l r5,@(0x04,r15)
	bsr loc_8C116CCc
	mov.b @r15,r4
	mov.l @(loc_8C116F0C,pc),r2 ; r2 set to 0x8C1780B2
	mov r15,r4
	mov r0,r14
	jsr @r2
	add 0x10,r4
	mov.w @(0x10,r15),r0
	mov.w r0,@(0x08,r15)
	mov 0x12,r0 ; r0 set to 0x12
	mov.b @(r0,r15),r0 ; r0 ??? bc r15 is ???
	mov.b r0,@(0x0A,r15)
	mov 0x13,r0 ; r0 set to 0x13
	mov.b @(r0,r15),r0 ; r0 ??? bc r15 is ???
	mov.b r0,@(0x0B,r15)
	mov 0x14,r0 ; r0 set to 0x14
	mov.b @(r0,r15),r0 ; r0 ??? bc r15 is ???
	mov.b r0,@(0x0C,r15)
	mov 0x15,r0 ; r0 set to 0x15
	mov.b @(r0,r15),r0 ; r0 ??? bc r15 is ???
	mov.b r0,@(0x0D,r15)
	mov 0x16,r0 ; r0 set to 0x16
	mov.b @(r0,r15),r0 ; r0 ??? bc r15 is ???
	mov.b r0,@(0x0E,r15)
	mov 0x17,r0 ; r0 set to 0x17
	mov.b @(r0,r15),r0 ; r0 ??? bc r15 is ???
	mov.b r0,@(0x0F,r15)
	mov.b @r15,r0
	cmp/eq 0x00,r0
	bt loc_8C116EA6
	cmp/eq 0x01,r0
	bt loc_8C116EAc
	cmp/eq 0x02,r0
	bt loc_8C116EB2
	cmp/eq 0x03,r0
	bt loc_8C116EB8
	cmp/eq 0x04,r0
	bt loc_8C116EC0
	bra loc_8C116EC8
	nop

loc_8C116EA6:
	mov.l @(loc_8C116F10,pc),r5 ; r5 set to 0x8C13EC78
	bra loc_8C116EBa
	nop

loc_8C116EAC:
	mov.l @(loc_8C116F14,pc),r5 ; r5 set to 0x8C13EC68
	bra loc_8C116EBa
	nop

loc_8C116EB2:
	mov.l @(loc_8C116F18,pc),r5 ; r5 set to 0x8C13ECA8
	bra loc_8C116EC2
	nop

loc_8c116eb8:
	mov.l @(loc_8c116f1c,pc),r5

loc_8C116EBA:
	mov.l @(loc_8C116F20,pc),r4 ; r4 set to 0x80000000
	bra loc_8C116ED2
	nop

loc_8c116ec0:
	mov.l @(loc_8c116f24,pc),r5

loc_8C116EC2:
	mov.l @(loc_8C116F28,pc),r4 ; r4 set to 0x800000Ff
	bra loc_8C116ED2
	nop

loc_8C116EC8:
	mov.w @(loc_8C116F08,pc),r0 ; r0 set to 0xFF00
	add 0x1C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C116ED2:
	mov.w @(loc_8C116F08,pc),r2 ; r2 set to 0xFF00
	cmp/eq r2,r14
	bt loc_8C116EF0
	mov.l r4,@-r15
	mov r14,r7
	mov r15,r1
	mov.l @(loc_8C116F2C,pc),r6 ; r6 set to 0x8C28DCC4
	mov.l @(loc_8C116F30,pc),r3 ; r3 set to 0x8C179784
	add 0x0C,r1
	mov.l r1,@-r15
	jsr @r3
	mov.l @(0x0C,r15),r4
	add 0x08,r15
	bra loc_8C116EFc
	mov r0,r6

loc_8C116EF0:
	mov r14,r0
	nop
	add 0x1C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C116EFC:
	mov r6,r0
	nop
	add 0x1C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C116F08:
	#data 0xFF00
	#align4

loc_8C116F0C:
	#data bank17.loc_8c1780B2
loc_8C116F10:
	#data bank13.loc_8c13ec78
loc_8C116F14:
	#data bank13.loc_8c13ec68
loc_8C116F18:
	#data bank13.loc_8c13ecA8
loc_8C116F1C:
	#data bank13.loc_8c13ec98
loc_8C116F20:
	#data 0x80000000
loc_8C116F24:
	#data bank13.loc_8c13ec88
loc_8C116F28:
	#data 0x800000Ff
loc_8C116F2C:
	#data 0x8C28DCC4
loc_8C116F30:
	#data bank17.loc_8c179784

;==============================================
loc_8C116F34:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov r4,r0
	nop
	mov.l @(loc_8C1171FC,pc),r14 ; r14 set to 0x8C289750
	mov r5,r10
	mov.b r0,@(0x04,r15)
	mov 0x3C,r13 ; r13 set to 0x3c
	mov.l @(0x2C,r14),r0
	mov 0x01,r11 ; r11 set to 0x01
	mov.l @(loc_8C1171F8,pc),r12 ; r12 set to 0x8C2A3AE4
	mov.l @(0x30,r14),r8
	mov.l r0,@r15
	mov 0x50,r0 ; r0 set to 0x50
	mov.b @(r0,r14),r0 ; r0 ??
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C116F80
	mov r12,r9 ; r9 set to 0x8C2A3AE4
	cmp/eq 0x01,r0
	bt loc_8C116F94
	cmp/eq 0x02,r0
	bt loc_8C116FDe
	cmp/eq 0x03,r0
	bt loc_8C117020
	cmp/eq 0x04,r0
	bt loc_8C117034
	cmp/eq 0x05,r0
	bt loc_8C117078
	bra loc_8C117224
	nop

loc_8C116F80:
	mov.l @(loc_8C117204,pc),r3 ; r3 set to 0x8C1154Ac
	mov.l @(loc_8C117200,pc),r4 ; r4 set to VMUGAccess
	mov.l r11,@(0x38,r14)
	jsr @r3
	mov.l r10,@(0x30,r14)
	mov.l @(loc_8C117208,pc),r2 ; r2 set to 0x8C1154F2
	jsr @r2
	mov.l @(0x30,r14),r4 ; r4 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50
	mov.b r11,@(r0,r14)

loc_8C116F94:
	mov.l @(0x2C,r14),r2 ; r2 ??? bc r14 is ???
	mov.l @(0x30,r14),r3 ; r3 ??? bc r14 is ???
	cmp/eq r3,r2
	bt loc_8C117018
	mov.l @(0x2C,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0xFF,r0
	bt loc_8C116FD6
	mov.l @(0x3C,r14),r2
	shad r10, r11
	tst r2,r11
	bt loc_8C116FAe
	bra loc_8C117224
	nop

loc_8C116FAE:
	mov.l @(0x2C,r14),r4
	mov.l @(loc_8C11720C,pc),r3 ; r3 set to 0x8C179092
	mul.l r13,r4
	sts macl,r4
	add r12,r4
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bt loc_8C116FC6
	bra loc_8C117224
	nop

loc_8c116fc6:
	mov.l @(0x2C,r14),r3
	mov 0x12,r2
	mul.l r13,r3
	mov 0xFF,r3
	sts macl,r13
	add r13,r12
	mov.l r2,@(0x04,r12)
	mov.l r3,@(0x2C,r14)

loc_8C116FD6:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_8C117224
	mov.b r2,@(r0,r14)

loc_8C116FDE:
	mov.l @(0x3C,r14),r3
	mov r11,r1
	shad r10, r1
	tst r3,r1
	bt loc_8C116FEc
	bra loc_8C117224
	nop

loc_8C116FEC:
	mul.l r13,r8
	mov.l @(loc_8C117214,pc),r3 ; r3 set to 0x8C179980
	mov.l @(loc_8C117210,pc),r5 ; r5 set to 0x8C2946C4
	sts macl,r6
	add r9,r6
	mov.l r6,@r15
	mov.l @(0x0C,r6),r6
	mov.l @r15,r4
	shll8 r6
	shll r6
	add 0x20,r6
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bt loc_8C117010
	bra loc_8C117224
	nop

loc_8c117010:
	mov.l @(0x3C,r14),r3
	shad r10, r11
	or r11,r3
	mov.l r3,@(0x3C,r14)

loc_8C117018:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x03,r2 ; r2 set to 0x03
	bra loc_8C117224
	mov.b r2,@(r0,r14)

loc_8C117020:
	mov.l @(0x3C,r14),r2
	shad r10, r11
	tst r2,r11
	bt loc_8C11702c
	bra loc_8C117224
	nop

loc_8C11702C:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x04,r1 ; r1 set to 0x04
	bra loc_8C117224
	mov.b r1,@(r0,r14)

loc_8C117034:
	mov.l @(0x3C,r14),r2
	mov r11,r3
	shad r10, r3
	tst r2,r3
	bt loc_8C117042
	bra loc_8C117224
	nop

loc_8C117042:
	mov.l @r15,r0
	cmp/eq r8,r0
	bf loc_8C117070
	mov.b @(0x04,r15),r0
	bsr loc_8C116308
	mov r0,r4
	mov.l @(0x2C,r14),r5
	mov.b @(0x04,r15),r0
	mul.l r13,r5
	sts macl,r5
	add r12,r5
	mov.l @r5,r5
	bsr loc_8C116E4c
	mov r0,r4
	cmp/eq 0x00,r0
	bt/s loc_8C117068
	mov r0,r4
	bra loc_8C117224
	nop

loc_8c117068:
	mov.l @(0x3C,r14),r2
	shad r10, r11
	or r11,r2
	mov.l r2,@(0x3C,r14)

loc_8C117070:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x05,r1 ; r1 set to 0x05
	bra loc_8C117224
	mov.b r1,@(r0,r14)

loc_8C117078:
	mov.l @(0x3C,r14),r2
	shad r10, r11
	tst r2,r11
	bt loc_8C117084
	bra loc_8C117224
	nop

loc_8C117084:
	mov.l @r15,r4
	mov r15,r6
	mov.l @(loc_8C11721C,pc),r3 ; r3 set to 0x8C1795D6
	add 0x08,r6
	mul.l r13,r4
	mov.l @(loc_8C117218,pc),r5 ; r5 set to 0x8C13EC68
	sts macl,r4
	add r9,r4
	jsr @r3
	mov.l @r4,r4
	mov r0,r6
	tst r6,r6
	mov r12,r4
	mov 0x00,r11 ; r11 set to 0x00
	bf/s loc_8C11714e
	mov.l @(0x2C,r14),r5 ; r5 ??? bc r14 is ???
	mul.l r13,r5
	mov 0x34,r1 ; r1 set to 0x34
	mov.w @(0x12,r15),r0
	sts macl,r5
	add r4,r5
	mov.l @r5,r3 ; r3 ??? bc r5 is ???
	mul.l r13,r3
	sts macl,r3
	add r4,r3
	add r3,r1 ; r1 ??? bc r3 is ???
	mov.w r0,@r1
	mov 0x14,r0 ; r0 set to 0x14
	mov.l @(0x2C,r14),r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.l @r3,r2
	mov.b @(r0,r15),r3
	mov 0x36,r0 ; r0 set to 0x36
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.b r3,@(r0,r2)
	mov 0x15,r0 ; r0 set to 0x15
	mov.l @(0x2C,r14),r2
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.l @r2,r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.b @(r0,r15),r2
	mov 0x37,r0 ; r0 set to 0x37
	mov.b r2,@(r0,r3)
	mov 0x16,r0 ; r0 set to 0x16
	mov.l @(0x2C,r14),r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.l @r3,r2
	mov.b @(r0,r15),r3
	mov 0x38,r0 ; r0 set to 0x38
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.b r3,@(r0,r2)
	mov 0x17,r0 ; r0 set to 0x17
	mov.l @(0x2C,r14),r2
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.l @r2,r3
	mov.b @(r0,r15),r2
	mov 0x39,r0 ; r0 set to 0x39
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.b r2,@(r0,r3)
	mov.l @(0x2C,r14),r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.l @r3,r2
	mul.l r13,r2
	mov 0x18,r0 ; r0 set to 0x18
	mov.b @(r0,r15),r3
	mov 0x3A,r0 ; r0 set to 0x3a
	sts macl,r2
	add r12,r2
	mov.b r3,@(r0,r2)
	mov 0x19,r0 ; r0 set to 0x19
	mov.l @(0x2C,r14),r2
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.l @r2,r3
	mov.b @(r0,r15),r2
	mov 0x3B,r0 ; r0 set to 0x3b
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.b r2,@(r0,r3)
	bra loc_8C1171D8
	nop

loc_8C11714E:
	mul.l r13,r5
	mov 0x34,r0 ; r0 set to 0x34
	sts macl,r5
	add r4,r5
	mov.l @r5,r2
	mul.l r13,r2
	sts macl,r2
	add r4,r2
	mov.w r11,@(r0,r2)
	mov 0x36,r0 ; r0 set to 0x36
	mov.l @(0x2C,r14),r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.l @r3,r2
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.b r11,@(r0,r2)
	mov 0x37,r0 ; r0 set to 0x37
	mov.l @(0x2C,r14),r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.l @r3,r2
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.b r11,@(r0,r2)
	mov.l @(0x2C,r14),r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.l @r3,r2
	mov 0x38,r0 ; r0 set to 0x38
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.b r11,@(r0,r2)
	mov 0x39,r0 ; r0 set to 0x39
	mov.l @(0x2C,r14),r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.l @r3,r2
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.b r11,@(r0,r2)
	mov 0x3A,r0 ; r0 set to 0x3a
	mov.l @(0x2C,r14),r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.l @r3,r2
	mul.l r13,r2
	sts macl,r2
	add r12,r2
	mov.b r11,@(r0,r2)
	mov.l @(0x2C,r14),r3
	mul.l r13,r3
	sts macl,r3
	add r12,r3
	mov.l @r3,r2
	mul.l r13,r2
	mov 0x3B,r0 ; r0 set to 0x3b
	sts macl,r2
	add r12,r2
	mov.b r11,@(r0,r2)

loc_8C1171D8:
	mov.l @(loc_8C117204,pc),r3 ; r3 set to 0x8C1154AC, r3 set to 0x8C1154Ac
	mov.l @(loc_8C117220,pc),r4 ; r4 set to VMUGraphic
	jsr @r3
	nop
	mov.l @(loc_8C117208,pc),r2 ; r2 set to 0x8C1154F2, r2 set to 0x8C1154F2
	jsr @r2
	mov.l @(0x30,r14),r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	mov.b r11,@(r0,r14)
	mov.l r11,@(0x38,r14)
	mov.l @(0x30,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	mul.l r13,r0
	sts macl,r0
	add r12,r0
	bra loc_8C117226
	mov.l @(0x08,r0),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C1171F8:
	#data 0x8C2A3AE4
loc_8C1171FC:
	#data 0x8C289750
loc_8C117200:
	#data bank16.VMU_ACCESS_G
loc_8C117204:
	#data loc_8c1154Ac
loc_8C117208:
	#data loc_8c1154F2
loc_8C11720C:
	#data bank17.loc_8c179092
loc_8C117210:
	#data 0x8C2946C4
loc_8C117214:
	#data bank17.loc_8c179980
loc_8C117218:
	#data bank13.loc_8c13ec68
loc_8C11721C:
	#data bank17.loc_8c1795D6
loc_8C117220:
	#data bank16.VMU_GRAPHIC

;==============================================
loc_8C117224:
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf

loc_8C117226:
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
loc_8C11723A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xF4,r15
	extu.b r4,r0
	mov.l @(loc_8C117278,pc),r13 ; r13 set to 0x8C289750
	cmp/eq 0x00,r0
	bf/s loc_8C117258
	mov 0x00,r7 ; r7 set to 0x00
	bra loc_8C117720
	nop

loc_8C117258:
	cmp/eq 0x01,r0
	bt loc_8C11727c
	cmp/eq 0x02,r0
	bf loc_8C117264
	bra loc_8C117720
	nop

loc_8C117264:
	cmp/eq 0x03,r0
	bf loc_8C11726c
	bra loc_8C117720
	nop

loc_8C11726C:
	cmp/eq 0x04,r0
	bf loc_8C117274
	bra loc_8C1176E2
	nop

loc_8C117274:
	bra loc_8C117720
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C117278:
	#data 0x8C289750

;==============================================
loc_8C11727C:
	mov.l @(loc_8C11743C,pc),r4 ; r4 set to 0x8C28CBD0
	mov.l @(loc_8C117438,pc),r5 ; r5 set to 0x8C212C3c
	mov.b @(0x0C,r4),r0
	mov.b r0,@r5 ; r5 ??? bc r0 is ???
	mov.b @(0x0D,r4),r0
	mov.b r0,@(0x01,r5)
	mov.w @(0x0E,r4),r0
	mov.w r0,@(0x02,r5)
	mov.w @(0x10,r4),r0
	mov.w r0,@(0x04,r5)
	mov.w @(0x12,r4),r0
	mov.w r0,@(0x06,r5)
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(0x14,r4),r3
	mov.l r3,@(0x04,r13)
	mov.l @(0x18,r4),r2
	mov.l r2,@(0x08,r13)
	mov.l @(0x1C,r4),r3
	mov.l r3,@(0x0C,r13)
	mov.l @(0x20,r4),r2
	mov.l r2,@(0x10,r13)
	mov.b @(r0,r4),r3
	mov 0x2A,r0 ; r0 set to 0x2a
	mov.b r3,@(r0,r13)
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r4),r2
	mov 0x12,r0 ; r0 set to 0x12
	mov.b r2,@(r0,r5)
	mov 0x26,r0 ; r0 set to 0x26
	mov.b @(r0,r4),r3
	mov 0x13,r0 ; r0 set to 0x13
	mov.b r3,@(r0,r5)
	mov 0x27,r0 ; r0 set to 0x27
	mov.b @(r0,r4),r2
	mov 0x14,r0 ; r0 set to 0x14
	mov.b r2,@(r0,r5)
	mov 0x2C,r0 ; r0 set to 0x2c
	mov.b @(r0,r4),r3
	mov 0x11,r0 ; r0 set to 0x11
	mov.l @(loc_8C117440,pc),r2 ; r2 set to 0x8C26823c
	mov.b r3,@(r0,r5)
	mov 0x28,r0 ; r0 set to 0x28
	mov.w @(r0,r4),r0 ; r0 ??
	mov.w r0,@(0x0A,r5)
	mov 0x2A,r0 ; r0 set to 0x2a
	mov.w @(r0,r4),r0 ; r0 ??
	mov.w r0,@(0x0C,r5)
	mov 0x2D,r0 ; r0 set to 0x2d
	mov.b @(r0,r4),r3
	mov 0x10,r0 ; r0 set to 0x10
	mov.b r3,@(r0,r5)
	mov 0x2E,r0 ; r0 set to 0x2e
	mov.w @(r0,r4),r0 ; r0 ??
	mov.w r0,@(0x08,r5)
	mov 0x32,r0 ; r0 set to 0x32
	mov.b @(r0,r4),r1
	mov 0x51,r0 ; r0 set to 0x51
	mov.l @r2,r3
	mov.b r1,@(r0,r3)
	mov 0x30,r0 ; r0 set to 0x30
	mov.w @(r0,r4),r0 ; r0 ??
	mov.w r0,@(0x0E,r5)
	mov.w @(loc_8C1173F6,pc),r0 ; r0 set to 0x6F0
	mov.l @(loc_8C117444,pc),r5 ; r5 set to 0x8C212BFc
	mov.b @(r0,r4),r3
	add 0x01,r0 ; r0 set to 0x6F1
	mov.b r3,@r5 ; r5 ??? bc r3 is ???
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x01,r5)
	mov.w @(loc_8C1173F8,pc),r0 ; r0 set to 0x6F2
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x02,r5)
	mov.w @(loc_8C1173FA,pc),r0 ; r0 set to 0x6F3
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x03,r5)
	mov.w @(loc_8C1173FC,pc),r0 ; r0 set to 0x6F5
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x05,r5)
	mov.w @(loc_8C1173FE,pc),r0 ; r0 set to 0x6F6
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x06,r5)
	mov.w @(loc_8C117400,pc),r0 ; r0 set to 0x6F7
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x07,r5)
	mov.w @(loc_8C117402,pc),r0 ; r0 set to 0x6F8
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x08,r5)
	mov.w @(loc_8C117404,pc),r0 ; r0 set to 0x6F9
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x09,r5)
	mov.w @(loc_8C117406,pc),r0 ; r0 set to 0x6Fa
	mov.w @(r0,r4),r0 ; r0 ??
	mov.w r0,@(0x0A,r5)
	mov.w @(loc_8C117408,pc),r0 ; r0 set to 0x6Fc
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x0C,r5)
	mov.w @(loc_8C11740A,pc),r0 ; r0 set to 0x6Fd
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x0D,r5)
	mov.w @(loc_8C11740C,pc),r0 ; r0 set to 0x6Fe
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x0E,r5)
	mov.w @(loc_8C11740E,pc),r0 ; r0 set to 0x6Ff
	mov.b @(r0,r4),r0 ; r0 ??
	mov.b r0,@(0x0F,r5)
	mov.w @(loc_8C117410,pc),r0 ; r0 set to 0x700
	fmov.s @(r0,r4),fr3
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s fr3,@(r0,r5)
	mov.w @(loc_8C117412,pc),r0 ; r0 set to 0x704
	fmov.s @(r0,r4),fr3
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s fr3,@(r0,r5)
	mov.w @(loc_8C117414,pc),r0 ; r0 set to 0x708
	mov.b @(r0,r4),r3
	mov 0x1C,r0 ; r0 set to 0x1c
	mov.b r3,@(r0,r5)
	mov.w @(loc_8C117416,pc),r0 ; r0 set to 0x709
	mov.b @(r0,r4),r1
	mov 0x1D,r0 ; r0 set to 0x1d
	mov.b r1,@(r0,r5)
	mov.w @(loc_8C117418,pc),r0 ; r0 set to 0x70a
	mov.b @(r0,r4),r3
	mov 0x1E,r0 ; r0 set to 0x1e
	mov.b r3,@(r0,r5)
	mov.w @(loc_8C11741A,pc),r0 ; r0 set to 0x70b
	mov.b @(r0,r4),r1
	mov 0x1F,r0 ; r0 set to 0x1f
	mov.b r1,@(r0,r5)
	mov.w @(loc_8C11741C,pc),r0 ; r0 set to 0x70c
	mov.w @(r0,r4),r3
	mov 0x20,r0 ; r0 set to 0x20
	mov.w r3,@(r0,r5)
	mov.w @(loc_8C11741E,pc),r0 ; r0 set to 0x70e
	mov.w @(r0,r4),r1
	mov 0x22,r0 ; r0 set to 0x22
	mov.w r1,@(r0,r5)
	mov.w @(loc_8C117420,pc),r0 ; r0 set to 0x710
	mov.w @(r0,r4),r3
	mov 0x24,r0 ; r0 set to 0x24
	mov.w r3,@(r0,r5)
	mov.w @(loc_8C117422,pc),r0 ; r0 set to 0x712
	mov.w @(r0,r4),r1
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r1,@(r0,r5)
	mov.w @(loc_8C117424,pc),r0 ; r0 set to 0x714
	mov.w @(r0,r4),r3
	mov 0x28,r0 ; r0 set to 0x28
	mov.w r3,@(r0,r5)
	mov.w @(loc_8C117426,pc),r0 ; r0 set to 0x716
	mov.w @(r0,r4),r1
	mov 0x2A,r0 ; r0 set to 0x2a
	mov.w r1,@(r0,r5)
	mov.w @(loc_8C117428,pc),r0 ; r0 set to 0x718
	mov.w @(r0,r4),r3
	mov 0x2C,r0 ; r0 set to 0x2c
	mov.w r3,@(r0,r5)
	mov.w @(loc_8C11742A,pc),r0 ; r0 set to 0x71a
	mov.w @(r0,r4),r1
	mov 0x2E,r0 ; r0 set to 0x2e
	mov.w r1,@(r0,r5)
	mov.w @(loc_8C11742C,pc),r0 ; r0 set to 0x71c
	mov.l @(loc_8C117448,pc),r14 ; r14 set to 0x8C2A3CD4
	mov.w @(r0,r4),r3
	mov 0x30,r0 ; r0 set to 0x30
	mov.w r3,@(r0,r5)
	mov.w @(loc_8C11742E,pc),r0 ; r0 set to 0x71e
	mov.w @(r0,r4),r1
	mov 0x32,r0 ; r0 set to 0x32
	mov.w r1,@(r0,r5)
	mov.w @(loc_8C117430,pc),r0 ; r0 set to 0x720
	mov.w @(r0,r4),r3
	mov 0x34,r0 ; r0 set to 0x34
	mov.w r3,@(r0,r5)
	mov.w @(loc_8C117432,pc),r0 ; r0 set to 0x722
	mov.w @(r0,r4),r1
	mov 0x36,r0 ; r0 set to 0x36
	mov.w r1,@(r0,r5)
	mov.w @(loc_8C117434,pc),r0 ; r0 set to 0x494
	mov.w @(r0,r4),r3
	add 0x02,r0 ; r0 set to 0x496
	mov.w r3,@r14 ; r14 ??? bc r3 is ???
	mov.w @(r0,r4),r0 ; r0 ??
	mov.w r0,@(0x02,r14)
	mov.w @(loc_8C117436,pc),r0 ; r0 set to 0x498
	mov.w @(r0,r4),r0 ; r0 ??
	mov.w r0,@(0x04,r14)
	bra loc_8C11744c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1173F6:
	#data 0x06F0
loc_8C1173F8:
	#data 0x06F2
loc_8C1173FA:
	#data 0x06F3
loc_8C1173FC:
	#data 0x06F5
loc_8C1173FE:
	#data 0x06F6
loc_8C117400:
	#data 0x06F7
loc_8C117402:
	#data 0x06F8
loc_8C117404:
	#data 0x06F9
loc_8C117406:
	#data 0x06Fa
loc_8C117408:
	#data 0x06Fc
loc_8C11740A:
	#data 0x06Fd
loc_8C11740C:
	#data 0x06Fe
loc_8C11740E:
	#data 0x06Ff
loc_8C117410:
	#data 0x0700
loc_8C117412:
	#data 0x0704
loc_8C117414:
	#data 0x0708
loc_8C117416:
	#data 0x0709
loc_8C117418:
	#data 0x070a
loc_8C11741A:
	#data 0x070b
loc_8C11741C:
	#data 0x070c
loc_8C11741E:
	#data 0x070e
loc_8C117420:
	#data 0x0710
loc_8C117422:
	#data 0x0712
loc_8C117424:
	#data 0x0714
loc_8C117426:
	#data 0x0716
loc_8C117428:
	#data 0x0718
loc_8C11742A:
	#data 0x071a
loc_8C11742C:
	#data 0x071c
loc_8C11742E:
	#data 0x071e
loc_8C117430:
	#data 0x0720
loc_8C117432:
	#data 0x0722
loc_8C117434:
	#data 0x0494
loc_8C117436:
	#data 0x0498
	#align4

loc_8C117438:
	#data 0x8C212C3c
loc_8C11743C:
	#data 0x8C28CBD0
loc_8C117440:
	#data 0x8C26823c
loc_8C117444:
	#data 0x8C212BFc
loc_8C117448:
	#data 0x8C2A3CD4

;==============================================
loc_8c11744c:
	mov.w @(loc_8C1175D2,pc),r0
	mov r7,r6
	mov 0x76,r12
	mov.w @(r0,r4),r0
	mov.w r0,@(0x06,r14)
	mov.w @(loc_8C1175D4,pc),r0
	mov.w @(r0,r4),r0
	mov.w r0,@(0x08,r14)

loc_8c11745c:
	mov.w @(loc_8C1175D6,pc),r2
	mov r14,r3
	add 0x0A,r3
	add r4,r2
	add r6,r2
	mov.w @r2,r1
	add r6,r3
	mov.w @(loc_8C1175DA,pc),r2
	mov.w r1,@r3
	mov.w @(loc_8C1175D8,pc),r3
	add r4,r2
	add r6,r2
	mov.w @r2,r1
	add r14,r3
	mov.w @(loc_8C1175DE,pc),r2
	add r6,r3
	mov.w r1,@r3
	mov.w @(loc_8C1175DC,pc),r3
	add r4,r2
	add r6,r2
	mov.w @r2,r1
	add r14,r3
	mov.w @(loc_8C1175E2,pc),r2
	add r6,r3
	mov.w r1,@r3
	mov.w @(loc_8C1175E0,pc),r3
	add r4,r2
	add r6,r2
	mov.w @r2,r1
	add r14,r3
	add r6,r3
	mov.w r1,@r3
	mov.w @(loc_8C1175E6,pc),r2
	mov.w @(loc_8C1175E4,pc),r3
	add r4,r2
	add r6,r2
	add r14,r3
	mov.w @r2,r1
	add r6,r3
	add 0x02,r6
	mov.w r1,@r3
	cmp/hs r12,r6
	bf loc_8c11745c
	mov.l @(loc_8C1175F0,pc),r11
	mov r7,r8
	mov.l @(loc_8C1175F4,pc),r12
	mov 0x14,r9
	mov.l @(loc_8C1175EC,pc),r10

loc_8c1174bc:
	mov r8,r14
	shll r14
	mov r8,r2
	mov r8,r3
	shll2 r2
	mov r7,r6
	add r3,r14
	shll2 r14
	shll r14
	shll r2
	mov.l r2,@r15

loc_8c1174d2:
	mov r14,r0
	nop
	add r12,r0
	mov r0,r3
	add 0x0C,r3
	add r6,r3
	mov r4,r0
	nop
	add 0x34,r0
	add r14,r0
	mov.b @(r0,r6),r2
	mov.b r2,@r3
	mov r14,r0
	nop
	add r10,r0
	mov.l @r15,r2
	mov r0,r3
	mov.w @(loc_8C1175E8,pc),r0
	add 0x0C,r3
	add r4,r0
	add r2,r0
	mov.b @(r0,r6),r1
	add r6,r3
	mov.b r1,@r3
	mov r14,r0
	nop
	add r11,r0
	mov r0,r3
	mov.w @(loc_8C1175EA,pc),r0
	add 0x0C,r3
	add r4,r0
	add r14,r0
	mov.b @(r0,r6),r2
	add r6,r3
	add 0x01,r6
	mov.b r2,@r3
	mov 0x04,r3
	cmp/ge r3,r6
	bf loc_8c1174d2
	add 0x01,r8
	cmp/ge r9,r8
	bf loc_8c1174bc
	mov r7,r8

loc_8c117528:
	mov r8,r14
	shll r14
	mov r8,r2
	mov r8,r3
	shll2 r2
	mov r7,r6
	add r3,r14
	shll2 r14
	shll r14
	shll r2
	mov.l r2,@(0x04,r15)

loc_8c11753e:
	mov r14,r0
	nop
	add r12,r0
	mov r0,r3
	add 0x01,r3
	add r6,r3
	mov.l r0,@r15
	mov r4,r0
	nop
	add 0x34,r0
	add r14,r0
	mov r0,r2
	add 0x04,r2
	add r6,r2
	mov.b @r2,r1
	mov.b r1,@r3
	mov r14,r0
	nop
	add r10,r0
	mov.l @(0x04,r15),r2
	mov r0,r3
	mov.w @(loc_8C1175E8,pc),r0
	add 0x01,r3
	add r4,r0
	add r2,r0
	mov r0,r1
	add 0x04,r1
	add r6,r1
	mov.b @r1,r2
	add r6,r3
	mov.b r2,@r3
	mov r14,r0
	nop
	add r11,r0
	mov r0,r3
	mov.l r0,@(0x08,r15)
	mov.w @(loc_8C1175EA,pc),r0
	add 0x01,r3
	add r6,r3
	add r4,r0
	add r14,r0
	mov r0,r2
	add 0x04,r2
	add r6,r2
	mov.b @r2,r1
	mov.b r1,@r3
	mov.l @r15,r3
	add 0x04,r3
	add r6,r3
	mov r4,r0
	nop
	add 0x34,r0
	add r14,r0
	mov r0,r2
	mov.w @(loc_8C1175EA,pc),r0
	add 0x07,r2
	add r6,r2
	add r4,r0
	mov.b @r2,r1
	add r14,r0
	mov.b r1,@r3
	mov r0,r2
	add 0x07,r2
	mov.l @(0x08,r15),r3
	add r6,r2
	mov.b @r2,r1
	add 0x04,r3
	add r6,r3
	mov.b r1,@r3
	mov 0x03,r3
	add 0x01,r6
	cmp/ge r3,r6
	bra loc_8c1175f8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1175D2:
	#data 0x049A
loc_8C1175D4:
	#data 0x049C
loc_8C1175D6:
	#data 0x049E
loc_8C1175D8:
	#data 0x0080
loc_8C1175DA:
	#data 0x0514
loc_8C1175DC:
	#data 0x00F6
loc_8C1175DE:
	#data 0x058A
loc_8C1175E0:
	#data 0x016C
loc_8C1175E2:
	#data 0x0600
loc_8C1175E4:
	#data 0x01E2
loc_8C1175E6:
	#data 0x0676
loc_8C1175E8:
	#data 0x0214
loc_8C1175EA:
	#data 0x02B4
	#align4

loc_8C1175EC:
	#data 0x8C2899D8
loc_8C1175F0:
	#data 0x8C212CEC
loc_8C1175F4:
	#data 0x8C2897E0

;==============================================
loc_8c1175f8:
	bf loc_8c11753e
	add 0x01,r8
	cmp/ge r9,r8
	bf loc_8c117528
	mov.w @(loc_8C117732,pc),r9
	mov r7,r6
	mov r7,r14

loc_8c117606:
	mov r6,r7
	add r12,r7
	mov r4,r0
	nop
	add 0x34,r0
	add r6,r0
	mov.b @(0x0A,r0),r0
	mov.b r0,@(0x08,r7)
	mov r4,r0
	nop
	mov r4,r3
	add 0x34,r3
	add r6,r3
	add 0x34,r0
	add r6,r0
	mov.b @(0x0B,r0),r0
	mov.b r0,@(0x07,r7)
	mov.l @(0x0C,r3),r2
	mov r4,r3
	add 0x34,r3
	add r6,r3
	mov.l r2,@(0x10,r7)
	mov.l @(0x10,r3),r2
	mov.l r2,@(0x14,r7)
	mov r4,r0
	nop
	add 0x34,r0
	mov 0x14,r1
	add r6,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x09,r7)
	mov r4,r0
	nop
	add 0x34,r0
	mov 0x15,r2
	add r6,r0
	mov.b @(r0,r2),r0
	mov.b r0,@(0x0A,r7)
	mov r4,r0
	nop
	add 0x34,r0
	mov r6,r1
	mov 0x16,r3
	add r6,r0
	mov.b @(r0,r3),r0
	add r10,r1
	mov.b r0,@(0x0B,r7)
	mov r6,r7
	mov.w @(loc_8C117734,pc),r0
	add r11,r7
	add r4,r0
	add r14,r0
	mov.b @(0x07,r0),r0
	mov.b r0,@(0x08,r1)
	mov.w @(loc_8C117736,pc),r0
	mov.w @(loc_8C117736,pc),r1
	add r4,r0
	add r6,r0
	mov.b @(0x0A,r0),r0
	add r4,r1
	add r6,r1
	mov.b r0,@(0x08,r7)
	mov.w @(loc_8C117736,pc),r0
	add r4,r0
	add r6,r0
	mov.b @(0x0B,r0),r0
	mov.b r0,@(0x07,r7)
	mov.l @(0x0C,r1),r0
	mov.w @(loc_8C117736,pc),r1
	mov.l r0,@(0x10,r7)
	add r4,r1
	add r6,r1
	mov.l @(0x10,r1),r0
	mov 0x14,r1
	mov.l r0,@(0x14,r7)
	mov.w @(loc_8C117736,pc),r0
	add r4,r0
	add r6,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x09,r7)
	mov.w @(loc_8C117736,pc),r0
	add r4,r0
	add r6,r0
	mov.b @(r0,r2),r0
	mov.b r0,@(0x0A,r7)
	mov.w @(loc_8C117736,pc),r0
	add r4,r0
	add r6,r0
	mov.b @(r0,r3),r0
	add 0x18,r6
	cmp/hs r9,r6
	mov.b r0,@(0x0B,r7)
	bf/s loc_8c117606
	add 0x08,r14
	mov.l @(loc_8C117744,pc),r1
	mov.b @r5,r3
	mov.l @(loc_8C117740,pc),r2
	mov.b r3,@r2
	mov.b @(0x01,r5),r0
	mov.l @(loc_8C117748,pc),r3
	mov.b r0,@r1
	mov 0x01,r1
	mov.b @(0x02,r5),r0
	mov.l @(loc_8C11774C,pc),r2
	mov.b r0,@r3
	mov.b @(0x03,r5),r0
	mov.b r0,@r2
	mov 0x5B,r0
	bra loc_8c117720
	mov.b r1,@(r0,r13)

loc_8c1176e2:
	mov.l @(0x6C,PC),r5
	mov r7,r4
	mov 0x08,r6

loc_8c1176e8:
	mov.w @(0x4C,PC),r3
	mov r13,r2
	add 0x70,r2
	add r5,r3
	add r4,r3
	add r4,r2
	mov.b @r3,r1
	add 0x01,r4
	cmp/ge r6,r4
	bf.s loc_8c1176e8
	mov.b r1,@r2
	mov r7,r4
	mov 0x06,r6

loc_8c117702:
	mov.w @(0x34,PC),r3
	mov r13,r2
	add 0x78,r2
	add r5,r3
	add r4,r3
	add r4,r2
	mov.b @r3,r1
	add 0x01,r4
	cmp/ge r6,r4
	bf.s loc_8c117702
	mov.b r1,@r2
	mov.w @(0x20,PC),r0
	mov.b @(r0,r5),r2
	mov 0x7E,r0
	mov.b r2,@(r0,r13)

loc_8C117720:
	add 0x0C,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c117732:
	#data 0x01E0
loc_8c117734:
	#data 0x0214
loc_8c117736:
	#data 0x02B4
loc_8c117738:
	#data 0x0732
loc_8c11773a:
	#data 0x073A
loc_8c11773c:
	#data 0x0750
	#align4

loc_8c117740:
	#data 0x8C212CBd
loc_8c117744:
	#data 0x8C212CBe
loc_8c117748:
	#data 0x8C212CBf
loc_8c11774c:
	#data 0x8C212CC0
loc_8c117750:
	#data 0x8C28D344

;==============================================
loc_8C117754:
	mov.l r14,@-r15
	mov 0x00,r5
	mov.l r13,@-r15
	mov r5,r6
	mov.l r12,@-r15
	mov 0x12,r7
	mov.l @(0x134,PC),r4
	mov.l @(0x130,PC),r14
	mov.l r10,@-r15
	mov.l r9,@-r15

loc_8C117768:
	mov r6,r0
	nop 
	mov.w @(0x110,PC),r3
	add r4,r3
	add r6,r3
	add 0x01,r6
	mov.b @r3,r3
	cmp/ge r7,r6
	bf.s loc_8c117768
	mov.b r3,@(r0,r14)
	mov.w @(0x102,PC),r14
	mov r5,r6
	mov.l @(0x11C,PC),r13
	mov.l @(0x118,PC),r12

loc_8C117784:
	mov r6,r0
	nop 
	mov r4,r3
	add r6,r3
	mov.b @r3,r3
	mov.b r3,@(r0,r13)
	mov.w @(0xEE,PC),r3
	add r4,r3
	add r6,r3
	add 0x01,r6
	mov.b @r3,r3
	cmp/ge r14,r6
	bf.s loc_8c117784
	mov.b r3,@(r0,r12)
	mov.l @(0x100,PC),r13
	mov r5,r6
	mov 0x76,r14

loc_8C1177A6:
	mov r6,r0
	nop 
	mov.w @(0xD6,PC),r3
	add r4,r3
	add r6,r3
	add 0x01,r6
	mov.b @r3,r3
	cmp/ge r14,r6
	bf.s loc_8c1177a6
	mov.b r3,@(r0,r13)
	mov.l @(0xEC,PC),r13
	mov r5,r6
	mov 0x0A,r14

loc_8C1177C0:
	mov r6,r0
	nop 
	mov.w @(0xBE,PC),r3
	add r4,r3
	add r6,r3
	add 0x01,r6
	mov.b @r3,r3
	cmp/ge r14,r6
	bf.s loc_8c1177c0
	mov.b r3,@(r0,r13)
	mov.l @(0xD8,PC),r13
	mov r5,r6
	mov.l @(0xD0,PC),r12
	mov 0x40,r14

loc_8C1177DC:
	mov r6,r0
	nop 
	mov.w @(0xA4,PC),r3
	add r4,r3
	add r6,r3
	mov.b @r3,r3
	mov.b r3,@(r0,r12)
	mov.w @(0x9C,PC),r3
	add r4,r3
	add r6,r3
	add 0x01,r6
	mov.b @r3,r3
	cmp/ge r14,r6
	bf.s loc_8c1177dc
	mov.b r3,@(r0,r13)
	mov.l @(0xB8,PC),r13
	mov r5,r6
	mov 0x0E,r14

loc_8C117800:
	mov r6,r0
	nop 
	mov.w @(0x84,PC),r3
	add r4,r3
	add r6,r3
	add 0x01,r6
	mov.b @r3,r3
	cmp/ge r14,r6
	bf.s loc_8c117800
	mov.b r3,@(r0,r13)
	mov.l @(0xA0,PC),r13
	mov r5,r12
	mov 0x08,r1
	mov 0x1A,r9
	mov 0x32,r10

loc_8C11781E:
	mul.l r9,r12
	mov r5,r6
	sts macl,r14

loc_8C117824:
	mov r14,r0
	nop 
	add r13,r0
	mov r0,r3
	mov.w @(0x5E,PC),r0
	add 0x08,r3
	add r4,r0
	add r14,r0
	mov.b @(r0,r6),r2
	add r6,r3
	add 0x01,r6
	cmp/ge r7,r6
	mov.b r2,@r3
	bf loc_8c117824
	mov r5,r6

loc_8C117842:
	mov r14,r0
	nop 
	mov.w @(0x44,PC),r3
	add r13,r0
	add r4,r3
	add r14,r3
	mov r3,r2
	add 0x12,r2
	add r6,r2
	mov.b @r2,r3
	mov.b r3,@(r0,r6)
	add 0x01,r6
	cmp/ge r1,r6
	bf loc_8c117842
	add 0x01,r12
	cmp/ge r10,r12
	bf loc_8c11781e
	mov.w @(0x28,PC),r0
	mov.l @(0x54,PC),r3
	mov.l @(r0,r4),r2
	add 0x04,r0
	mov.l r2,@r3
	mov.l @(0x50,PC),r2
	mov.l @(r0,r4),r1
	add 0x04,r0
	mov.l r1,@r2
	mov.l @(0x4C,PC),r1
	mov.l @(r0,r4),r3
	mov.l r3,@r1
	bra loc_8c1178c8
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c117880:
	#data 0x0720
loc_8c117882:
	#data 0x0080
loc_8c117884:
	#data 0x010a
loc_8c117886:
	#data 0x0100
loc_8c117888:
	#data 0x01C0
loc_8c11788a:
	#data 0x0180
loc_8c11788c:
	#data 0x0740
loc_8c11788e:
	#data 0x020C
loc_8c117890:
	#data 0x0200
	#align4

loc_8c117894:
	#data 0x8c21384a
loc_8c117898:
	#data 0x8c28d344
loc_8c11789c:
	#data 0x8c2138ea
loc_8c1178a0:
	#data 0x8c21386a
loc_8c1178a4:
	#data 0x8c213a74
loc_8c1178a8:
	#data 0x8c213a6a
loc_8c1178ac:
	#data 0x8c21396a
loc_8c1178b0:
	#data 0x8c213a2a
loc_8c1178b4:
	#data 0x8c21385c
loc_8c1178b8:
	#data 0x8c2143c6
loc_8c1178bc:
	#data 0x8c213af8
loc_8c1178c0:
	#data 0x8c213afc
loc_8c1178c4:
	#data 0x8c213b00

;==============================================
loc_8C1178C8:
	mov.w @(0xBA,PC),r0
	mov.l @(0xC4,PC),r3
	mov.b @(r0,r4),r2
	add 0x01,r0
	mov.b r2,@r3
	mov.b @(r0,r4),r1
	mov.l @(0xBC,PC),r2
	mov.b r1,@r2
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C1178E4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xA0,r15
	mov r4,r14
	extu.b r14,r0
	mov.l @(loc_8C117998,pc),r4 ; r4 set to 0x8C28DCC4
	cmp/eq 0x00,r0
	bt loc_8C117910
	cmp/eq 0x01,r0
	bt loc_8C11792c
	cmp/eq 0x02,r0
	bt loc_8C117936
	cmp/eq 0x03,r0
	bt loc_8C11793c
	cmp/eq 0x04,r0
	bt loc_8C11791e
	bra loc_8C11792c
	nop

loc_8C117910:
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C117988,pc),r3 ; r3 set to 0x6000
	mov.l @(r0,r4),r2
	cmp/eq r3,r2
	bf loc_8C117936
	bra loc_8C11793c
	nop

loc_8C11791E:
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C11798A,pc),r3 ; r3 set to 0x980
	mov.l @(r0,r4),r2
	cmp/eq r3,r2
	bt loc_8C11793c
	bra loc_8C117936
	nop
	
loc_8c11792c:
	mov 0x48,r0
	mov.w @(loc_8C11798C,pc),r3
	mov.l @(r0,r4),r2
	cmp/eq r3,r2
	bt loc_8c11793c

loc_8C117936:
	mov.w @(loc_8C11798E,pc),r0 ; r0 set to 0xFF41
	bra loc_8C1179E2
	nop

loc_8C11793C:
	extu.b r14,r0
	cmp/eq 0x03,r0
	bt loc_8C11794e
	mov.l @(loc_8C11799C,pc),r2 ; r2 set to 0x8C179C10
	mov.l @(loc_8C117998,pc),r5 ; r5 set to 0x8C28DCC4
	jsr @r2
	mov r15,r4
	bra loc_8C117950
	mov r0,r11

loc_8C11794E:
	mov 0x00,r11 ; r11 set to 0x00

loc_8C117950:
	tst r11,r11
	bf loc_8C1179De
	mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
	mov.l @(loc_8C1179A0,pc),r10 ; r10 set to 0x8C129728, r10 set to 0x8C129728
	mov.l @(r0,r15),r4
	extu.b r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	cmp/eq 0x00,r0
	bt loc_8C117970
	cmp/eq 0x01,r0
	bt loc_8C1179Bc
	cmp/eq 0x03,r0
	bt loc_8C11797c
	cmp/eq 0x04,r0
	bt loc_8C1179B0
	bra loc_8C1179Bc
	nop

loc_8C117970:
	mov.w @(loc_8C117988,pc),r6 ; r6 set to 0x6000
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l @(loc_8C1179A4,pc),r14 ; r14 set to 0x8C2A3F50
	mov r4,r12
	bra loc_8C1179C6
	mov.l @(r0,r15),r13

loc_8C11797C:
	mov.l @(loc_8C1179AC,pc),r12 ; r12 set to 0x8C28DF44
	mov 0x4C,r13 ; r13 set to 0x4c
	mov.l @(loc_8C1179A8,pc),r14 ; r14 set to 0x8C28D2F8
	bra loc_8C1179C6
	mov r13,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C117986:
	#data 0x074e
loc_8C117988:
	#data 0x6000
loc_8C11798A:
	#data 0x0980
loc_8c11798c:
	#data 0x0728
loc_8C11798E:
	#data 0xFF41
	#align4

loc_8C117990:
	#data 0x8C214294
loc_8C117994:
	#data 0x8C214292
loc_8C117998:
	#data 0x8C28DCC4
loc_8C11799C:
	#data bank17.loc_8c179C10
loc_8C1179A0:
	#data bank12.loc_8c129728
loc_8C1179A4:
	#data 0x8C2A3F50
loc_8C1179A8:
	#data 0x8C28D2F8
loc_8C1179AC:
	#data 0x8C28DF44

;==============================================
loc_8C1179B0:
	mov.w @(loc_8C117A5A,pc),r6 ; r6 set to 0x980
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l @(loc_8C117A60,pc),r14 ; r14 set to 0x8C28D344
	mov r4,r12
	bra loc_8C1179C6
	mov.l @(r0,r15),r13

loc_8c1179bc:
	mov 0x5C,r0
	mov.w @(loc_8C117A5C,pc),r6
	mov.l @(r0,r15),r13
	mov r4,r12
	mov.l @(loc_8C117A64,pc),r14

loc_8c1179c6:
	mov 0x00,r5
	jsr @r10
	mov r14,r4
	cmp/pl r13
	bf/s loc_8c1179de
	mov 0x00,r4

loc_8c1179d2:
	mov.b @r12+,r2
	add 0x01,r4
	cmp/ge r13,r4
	mov.b r2,@r14
	bf/s loc_8c1179d2
	add 0x01,r14

loc_8c1179de:
	mov r11,r0
	nop

loc_8C1179E2:
	add 0x60,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1179F2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	exts.b r4,r0
	mov.l @(loc_8C117A68,pc),r5 ; r5 set to 0x8C13EC68
	cmp/eq 0x00,r0
	bt loc_8C117A18
	cmp/eq 0x01,r0
	bt loc_8C117A30
	cmp/eq 0x02,r0
	bt loc_8C117A1e
	cmp/eq 0x03,r0
	bt loc_8C117A24
	cmp/eq 0x04,r0
	bt loc_8C117A2a
	bra loc_8C117A30
	nop

loc_8C117A18:
	mov.l @(loc_8C117A6C,pc),r14 ; r14 set to 0x8C13EC78
	bra loc_8C117A32
	nop

loc_8C117A1E:
	mov.l @(loc_8C117A70,pc),r14 ; r14 set to 0x8C13ECA8
	bra loc_8C117A32
	nop

loc_8C117A24:
	mov.l @(loc_8C117A74,pc),r14 ; r14 set to 0x8C13EC98
	bra loc_8C117A32
	nop

loc_8C117A2A:
	mov.l @(loc_8C117A78,pc),r14 ; r14 set to 0x8C13EC88
	bra loc_8C117A32
	nop

loc_8c117a30:
	mov r5,r14

loc_8C117A32:
	mov.l @(loc_8C117A7C,pc),r3 ; r3 set to 0x8C179698
	mov r14,r5
	jsr @r3
	mov.l @r15,r4
	mov r0,r13
	cmp/pz r13
	bt loc_8C117A44
	bra loc_8C117A50
	mov r13,r0

loc_8C117A44:
	mov.l @(loc_8C117A84,pc),r3 ; r3 set to 0x8C17972c
	mov r13,r7
	mov.l @(loc_8C117A80,pc),r6 ; r6 set to 0x8C28DCC4
	mov r14,r5
	jsr @r3
	mov.l @r15,r4

loc_8C117A50:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C117A5A:
	#data 0x0980
loc_8c117a5c:
	#data 0x0728
	#align4

loc_8C117A60:
	#data 0x8C28D344
loc_8c117a64:
	#data 0x8C28CBD0
loc_8C117A68:
	#data bank13.loc_8c13ec68
loc_8C117A6C:
	#data bank13.loc_8c13ec78
loc_8C117A70:
	#data bank13.loc_8c13ecA8
loc_8C117A74:
	#data bank13.loc_8c13ec98
loc_8C117A78:
	#data bank13.loc_8c13ec88
loc_8C117A7C:
	#data bank17.loc_8c179698
loc_8C117A80:
	#data 0x8C28DCC4
loc_8C117A84:
	#data bank17.loc_8c17972c

;==============================================
loc_8C117A88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C117B6C,pc),r14 ; r14 set to 0x8C289750
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(loc_8C117B70,pc),r8 ; r8 set to 0x8C2A3AE4
	mov r5,r12
	mov.b @(r0,r14),r0 ; r0 ??
	mov 0x3C,r11 ; r11 set to 0x3c
	mov r4,r10
	mov 0x01,r13 ; r13 set to 0x01
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C117ACa
	mov.l @(0x30,r14),r9
	cmp/eq 0x01,r0
	bt loc_8C117ADe
	cmp/eq 0x02,r0
	bt loc_8C117B28
	cmp/eq 0x03,r0
	bt loc_8C117B90
	cmp/eq 0x04,r0
	bf loc_8C117AC6
	bra loc_8C117BF4
	nop

loc_8C117AC6:
	bra loc_8C117C62
	nop

loc_8C117ACA:
	mov.l @(loc_8C117B78,pc),r3 ; r3 set to 0x8C1154Ac
	mov.l @(loc_8C117B74,pc),r4 ; r4 set to VMUGAccess
	mov.l r13,@(0x38,r14)
	jsr @r3
	mov.l r12,@(0x30,r14)
	mov.l @(loc_8C117B7C,pc),r2 ; r2 set to 0x8C1154F2
	jsr @r2
	mov.l @(0x30,r14),r4 ; r4 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50
	mov.b r13,@(r0,r14)

loc_8C117ADE:
	mov.l @(0x2C,r14),r2 ; r2 ??? bc r14 is ???
	mov.l @(0x30,r14),r3 ; r3 ??? bc r14 is ???
	cmp/eq r3,r2
	bt loc_8C117B62
	mov.l @(0x2C,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0xFF,r0
	bt loc_8C117B20
	mov.l @(0x3C,r14),r2
	shad r12, r13
	tst r2,r13
	bt loc_8C117AF8
	bra loc_8C117C62
	nop

loc_8C117AF8:
	mov.l @(0x2C,r14),r4
	mov.l @(loc_8C117B80,pc),r3 ; r3 set to 0x8C179092
	mul.l r11,r4
	mov.l @(loc_8C117B70,pc),r0 ; r0 set to 0x8C2A3AE4
	sts macl,r4
	jsr @r3
	mov.l @(r0,r4),r4
	mov r0,r4 ; r4 set to 0x8C2A3AE4
	tst r4,r4
	bt loc_8C117B10
	bra loc_8C117C62
	nop

loc_8c117b10:
	mov.l @(0x2C,r14),r3
	mov 0x12,r2
	mov.l @(loc_8C117B84,pc),r0
	mul.l r11,r3
	mov 0xFF,r3
	sts macl,r11
	mov.l r2,@(r0,r11)
	mov.l r3,@(0x2C,r14)

loc_8C117B20:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_8C117C62
	mov.b r2,@(r0,r14)

loc_8C117B28:
	mov.l @(0x3C,r14),r3
	mov r13,r1
	shad r12, r1
	tst r3,r1
	bt loc_8C117B36
	bra loc_8C117C62
	nop

loc_8C117B36:
	mul.l r11,r9
	mov.l @(loc_8C117B8C,pc),r3 ; r3 set to 0x8C179980
	mov.l @(loc_8C117B88,pc),r5 ; r5 set to 0x8C2946C4
	sts macl,r6
	add r8,r6
	mov.l r6,@r15
	mov.l @(0x0C,r6),r6
	mov.l @r15,r4
	shll8 r6
	shll r6
	add 0x20,r6
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bt loc_8C117B5a
	bra loc_8C117C62
	nop

loc_8c117b5a:
	mov.l @(0x3C,r14),r3
	shad r12, r13
	or r13,r3
	mov.l r3,@(0x3C,r14)

loc_8C117B62:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x03,r2 ; r2 set to 0x03
	bra loc_8C117C62
	mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C117B6C:
	#data 0x8C289750
loc_8C117B70:
	#data 0x8C2A3AE4
loc_8C117B74:
	#data bank16.VMU_ACCESS_G
loc_8C117B78:
	#data loc_8c1154Ac
loc_8C117B7C:
	#data loc_8c1154F2
loc_8C117B80:
	#data bank17.loc_8c179092
loc_8c117b84:
	#data 0x8C2A3AE8
loc_8C117B88:
	#data 0x8C2946C4
loc_8C117B8C:
	#data bank17.loc_8c179980

;==============================================
loc_8C117B90:
	mov.l @(0x3C,r14),r3
	mov r13,r1
	shad r12, r1
	tst r3,r1
	bf loc_8C117C62
	mov.l @(0x2C,r14),r0
	mov r0,r3
	cmp/eq r9,r3
	mov.l r0,@r15
	bf loc_8C117BEc
	mov.l @r15,r5
	mul.l r11,r5
	sts macl,r5
	add r8,r5
	mov.l @r5,r5
	bsr loc_8C1179F2
	mov r10,r4
	cmp/eq 0x00,r0
	bt/s loc_8C117BD2
	mov r0,r4
	mov.w @(loc_8C117C78,pc),r1 ; r1 set to 0xFF05
	cmp/eq r1,r0
	bt loc_8C117BEc
	mov.w @(loc_8C117C7A,pc),r1 ; r1 set to 0xFF03
	cmp/eq r1,r0
	bt loc_8C117BE4
	mov.w @(loc_8C117C7C,pc),r1 ; r1 set to 0xFF01
	cmp/eq r1,r0
	bt loc_8C117BDc
	cmp/eq 0xFF,r0
	bt loc_8C117BE4
	bra loc_8C117C62
	nop

loc_8C117BD2:
	mov.l @(0x3C,r14),r2
	shad r12, r13
	or r13,r2
	bra loc_8C117BEc
	mov.l r2,@(0x3C,r14)

loc_8C117BDC:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x04,r2 ; r2 set to 0x04
	bra loc_8C117C62
	mov.b r2,@(r0,r14)

loc_8C117BE4:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x04,r1 ; r1 set to 0x04
	bra loc_8C117C62
	mov.b r1,@(r0,r14)

loc_8C117BEC:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x04,r3 ; r3 set to 0x04
	bra loc_8C117C62
	mov.b r3,@(r0,r14)

loc_8C117BF4:
	mov.l @(0x3C,r14),r3
	shad r12, r13
	tst r3,r13
	bf loc_8C117C62
	mul.l r11,r9
	sts macl,r9
	add r9,r8
	mov.l @(0x08,r8),r3
	tst r3,r3
	bf/s loc_8C117C3a
	mov 0x00,r13 ; r13 set to 0x00
	bsr loc_8C1178E4
	mov r10,r4
	mov r0,r12
	tst r12,r12
	bf loc_8C117C1c
	bsr loc_8C11723a
	mov r10,r4
	bra loc_8C117C22
	nop

loc_8C117C1C:
	mov.l @(loc_8C117C80,pc),r2 ; r2 set to 0x8C116304
	jsr @r2
	mov r10,r4

loc_8C117C22:
	mov.l @(loc_8C117C88,pc),r3 ; r3 set to 0x8C1154AC, r3 set to 0x8C1154Ac
	mov.l @(loc_8C117C84,pc),r4 ; r4 set to VMUGraphic
	jsr @r3
	nop
	mov.l @(loc_8C117C8C,pc),r2 ; r2 set to 0x8C1154F2, r2 set to 0x8C1154F2
	jsr @r2
	mov.l @(0x30,r14),r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	mov.b r13,@(r0,r14)
	mov.l r13,@(0x38,r14)
	bra loc_8C117C64
	mov r12,r0

loc_8C117C3A:
	mov.l @(loc_8C117C80,pc),r2 ; r2 set to 0x8C116304
	jsr @r2
	mov r10,r4
	mov.l @(loc_8C117C88,pc),r3 ; r3 set to 0x8C1154Ac
	mov.l @(loc_8C117C84,pc),r4 ; r4 set to VMUGraphic
	jsr @r3
	nop
	mov.l @(loc_8C117C8C,pc),r2 ; r2 set to 0x8C1154F2
	jsr @r2
	mov.l @(0x30,r14),r4 ; r4 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(loc_8C117C90,pc),r1 ; r1 set to 0x8C2A3AEc
	mov.b r13,@(r0,r14)
	mov.l r13,@(0x38,r14)
	mov.l @(0x30,r14),r0 ; r0 ??? bc r14 is ???
	mul.l r11,r0
	sts macl,r0
	mov.l @(r0,r1),r0
	bra loc_8C117C64
	nop

loc_8C117C62:
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf

loc_8C117C64:
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
loc_8C117C78:
	#data 0xFF05
loc_8C117C7A:
	#data 0xFF03
loc_8C117C7C:
	#data 0xFF01
	#align4

loc_8C117C80:
	#data loc_8c116304
loc_8C117C84:
	#data bank16.VMU_GRAPHIC
loc_8C117C88:
	#data loc_8c1154Ac
loc_8C117C8C:
	#data loc_8c1154F2
loc_8C117C90:
	#data 0x8C2A3AEc
loc_8C117C94:
	#data 0xD37E4F22
loc_8C117C98:
	#data 0x430BD57c
loc_8C117C9c:
	#data 0x4F260009

;==============================================
loc_8C117Ca0:
	rts
	nop

;==============================================
loc_8C117CA4:
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l @(0x1E8,PC),r3
	mov.l r4,@r15
	mov r15,r4
	jsr @r3
	add 0x0C,r4
	mov.w @(0xC,r15),r0
	mov 0x40,r7
	mov.l @(0x1E0,PC),r3
	mov.w r0,@(0x4,r15)
	mov.b @(0xE,r15),r0
	mov.l @(0x1E0,PC),r5
	mov.b r0,@(0x6,r15)
	mov.b @(0xF,r15),r0
	mov.l @(0x1D8,PC),r6
	mov.b r0,@(0x7,r15)
	mov 0x10,r0
	mov.b @(r0,r15),r0
	mov.b r0,@(0x8,r15)
	mov 0x11,r0
	mov.b @(r0,r15),r0
	mov.b r0,@(0x9,r15)
	mov 0x12,r0
	mov.b @(r0,r15),r0
	mov.b r0,@(0xA,r15)
	mov 0x13,r0
	mov.b @(r0,r15),r0
	mov.b r0,@(0xB,r15)
	mov.l r3,@-r15
	mov r15,r2
	add 0x08,r2
	mov.l r2,@-r15
	mov.l @(0x1BC,PC),r2
	jsr @r2
	mov.l @(0x8,r15),r4
	add 0x20,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C117CF4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C117EAC,pc),r14 ; r14 set to 0x8C289750
	mov 0x3C,r11 ; r11 set to 0x3c
	mov.l @(loc_8C117EA8,pc),r8 ; r8 set to 0x8C2A3AE4
	mov r4,r12
	mov.l @(0x30,r14),r0
	mov 0x01,r13 ; r13 set to 0x01
	mov r8,r10 ; r10 set to 0x8C2A3AE4
	mov.l r0,@r15
	mov 0x50,r0 ; r0 set to 0x50
	mov.b @(r0,r14),r0 ; r0 ??
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C117D3e
	mov.l @(0x2C,r14),r9
	cmp/eq 0x01,r0
	bt loc_8C117D52
	cmp/eq 0x02,r0
	bt loc_8C117D9c
	cmp/eq 0x03,r0
	bt loc_8C117DD8
	cmp/eq 0x04,r0
	bt loc_8C117E1c
	cmp/eq 0x05,r0
	bf loc_8C117D3a
	bra loc_8C117E4c
	nop

loc_8C117D3A:
	bra loc_8C117E76
	nop

loc_8C117D3E:
	mov.l @(loc_8C117EB4,pc),r3 ; r3 set to 0x8C1154Ac
	mov.l @(loc_8C117EB0,pc),r4 ; r4 set to VMUGAccess
	mov.l r13,@(0x38,r14)
	jsr @r3
	mov.l r12,@(0x30,r14)
	mov.l @(loc_8C117EB8,pc),r2 ; r2 set to 0x8C1154F2
	jsr @r2
	mov.l @(0x30,r14),r4 ; r4 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50
	mov.b r13,@(r0,r14)

loc_8C117D52:
	mov.l @(0x2C,r14),r2 ; r2 ??? bc r14 is ???
	mov.l @(0x30,r14),r3 ; r3 ??? bc r14 is ???
	cmp/eq r3,r2
	bt loc_8C117DD0
	mov.l @(0x2C,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0xFF,r0
	bt loc_8C117D94
	mov.l @(0x3C,r14),r2
	shad r12, r13
	tst r2,r13
	bt loc_8C117D6c
	bra loc_8C117E76
	nop

loc_8C117D6C:
	mov.l @(0x2C,r14),r4
	mov.l @(loc_8C117EBC,pc),r3 ; r3 set to 0x8C179092
	mul.l r11,r4
	sts macl,r4
	add r8,r4
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bt loc_8C117D84
	bra loc_8C117E76
	nop

loc_8c117d84:
	mov.l @(0x2C,r14),r3
	mov 0x12,r2
	mul.l r11,r3
	mov 0xFF,r3
	sts macl,r11
	add r11,r8
	mov.l r2,@(0x04,r8)
	mov.l r3,@(0x2C,r14)

loc_8C117D94:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_8C117E76
	mov.b r2,@(r0,r14)

loc_8c117d9c:
	mov.l @(0x3C,r14),r3
	mov r13,r1
	shad r12, r1
	tst r3,r1
	bf loc_8c117e76
	mov.l @r15,r6
	mov.l @(loc_8C117EC0,pc),r5
	mul.l r11,r6
	mov.l @(loc_8c117ec4,pc),r3
	sts macl,r6
	add r10,r6
	mov.l r6,@(0x04,r15)
	mov.l @(0x0C,r6),r6
	mov.l @(0x04,r15),r4
	shll8 r6
	shll r6
	add 0x20,r6
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c117e76
	mov.l @(0x3C,r14),r3
	shad r12, r13
	or r13,r3
	mov.l r3,@(0x3C,r14)

loc_8C117DD0:
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x03,r2 ; r2 set to 0x03
	bra loc_8C117E76
	mov.b r2,@(r0,r14)

loc_8c117dd8:
	mov.l @(0x3C,r14),r3
	mov r13,r1
	shad r12, r1
	tst r3,r1
	bf loc_8c117e76
	mov.l @r15,r0
	cmp/eq r0,r9
	bf loc_8c117e14
	mul.l r11,r9
	mov 0x40,r5
	sts macl,r4
	add r10,r4
	mov.l @(0x2C,r4),r3
	cmp/ge r5,r3
	bf loc_8c117e14
	mov.l @(0x30,r4),r1
	cmp/ge r5,r1
	bt loc_8c117e14
	mul.l r11,r9
	sts macl,r4
	add r10,r4
	bsr loc_8c117c94
	mov.l @r4,r4
	cmp/eq 0x00,r0
	bf/s loc_8c117e76
	mov r0,r4
	mov.l @(0x3C,r14),r2
	shad r12, r13
	or r13,r2
	mov.l r2,@(0x3C,r14)

loc_8c117e14:
	mov 0x50,r0
	mov 0x04,r3
	bra loc_8c117e76
	mov.b r3,@(r0,r14)

loc_8c117e1c:
	mov.l @(0x3C,r14),r3
	mov r13,r1
	shad r12,r1
	tst r3,r1
	bf loc_8c117e76               ; loc_8c117d6c+0x10a
	mov.l @r15,r0
	cmp/eq r0,r9
	bf loc_8c117e44
	mul.l r11,r9
	sts macl,r4
	add r10,r4
	bsr loc_8c117ca4
	mov.l @r4,r4
	cmp/eq 0x00,r0
	bf.s loc_8c117e76             ; loc_8c117d6c+0x10a
	mov r0,r4
	mov.l @(0x3C,r14),r2
	shad r12,r13
	or r13,r2
	mov.l r2,@(0x3C,r14)

loc_8c117e44:
	mov 0x50,r0
	mov 0x05,r1
	bra loc_8c117e76              ; loc_8c117d6c+0x10a
	mov.b r1,@(r0,r14)

loc_8C117E4C:
	mov.l @(0x3C,r14),r2
	shad r12, r13
	tst r2,r13
	bf loc_8C117E76
	mov.l @(loc_8C117EB4,pc),r2 ; r2 set to 0x8C1154Ac
	mov.l @(loc_8C117EC8,pc),r4 ; r4 set to VMUGraphic
	jsr @r2
	nop
	mov.l @(loc_8C117EB8,pc),r3 ; r3 set to 0x8C1154F2
	jsr @r3
	mov.l @(0x30,r14),r4 ; r4 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	mov.l r4,@(0x38,r14)
	mov.l @(0x30,r14),r0 ; r0 ??? bc r14 is ???
	mul.l r11,r0
	sts macl,r0
	add r8,r0
	bra loc_8C117E78
	mov.l @(0x08,r0),r0

loc_8C117E76:
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf

loc_8C117E78:
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
	#align4
loc_8C117E8c:
	#data 0x8C2944C4
loc_8C117E90:
	#data bank17.loc_8c1796C6
loc_8C117E94:
	#data bank17.loc_8c1780B2
loc_8C117E98:
	#data 0x800000Ff
loc_8C117E9c:
	#data 0x0CE1E000
loc_8C117EA0:
	#data bank13.loc_8c13ecA8
loc_8C117EA4:
	#data bank17.loc_8c1797E2
loc_8C117EA8:
	#data 0x8C2A3AE4
loc_8C117EAC:
	#data 0x8C289750
loc_8C117EB0:
	#data bank16.VMU_ACCESS_G
loc_8C117EB4:
	#data loc_8c1154Ac
loc_8C117EB8:
	#data loc_8c1154F2
loc_8C117EBC:
	#data bank17.loc_8c179092
loc_8c117ec0:
	#data 0x8C2946C4
loc_8C117EC4:
	#data bank17.loc_8c179980
loc_8C117EC8:
	#data bank16.VMU_GRAPHIC

;==============================================
loc_8C117ECC:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x4,r15)
	mov 0x00,r5
	mov.b @(0x4,r15),r0
	mov.l @(0x100,PC),r3
	extu.b r0,r0
	mov.l @(0x100,PC),r2
	mov r0,r4
	shll8 r4
	shll r4
	mov.w @(0xF2,PC),r6
	add r3,r4
	jsr @r2
	mov.l r4,@(0x8,r15)
	mov 0x01,r3
	mov.l @(0xF4,PC),r5
	mov.l r3,@-r15
	mov 0x05,r7
	mov.l @(0xC,r15),r6
	mov.l @(0xF0,PC),r2
	jsr @r2
	mov.l @(0x4,r15),r4
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C117F08:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD8,PC),r14
	mov 0x50,r0
	mov.l @(0xD0,PC),r10
	mov 0x01,r13
	mov.b @(r0,r14),r0
	mov 0x3C,r11
	mov r10,r8
	mov r4,r12
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c117f4a
	mov.l @(0x30,r14),r9
	cmp/eq 0x01,r0
	bt loc_8c117f5e               ; loc_8c117f08+0x56
	cmp/eq 0x02,r0
	bt loc_8c117fa4
	cmp/eq 0x03,r0
	bt loc_8c118010
	cmp/eq 0x04,r0
	bf loc_8c117f46
	bra loc_8c118040
	nop 

loc_8C117F46:
	bra loc_8c11806a
	nop

loc_8C117F4A:
	mov.l @(0xB0,PC),r3
	mov.l @(0xA8,PC),r4
	mov.l r13,@(0x38,r14)
	jsr @r3
	mov.l r12,@(0x30,r14)
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov.l @(0x30,r14),r4
	mov 0x50,r0
	mov.b r13,@(r0,r14)

loc_8C117F5E:
	mov.l @(0x2C,r14),r2
	mov.l @(0x30,r14),r3
	cmp/eq r3,r2
	bt loc_8c117fd6
	mov.l @(0x2C,r14),r0
	cmp/eq 0xFF,r0
	bt loc_8c117f9c
	mov.l @(0x3C,r14),r2
	shad r12,r13
	tst r2,r13
	bt loc_8c117f78
	bra loc_8c11806a
	nop 

loc_8C117F78:
	mov.l @(0x2C,r14),r4
	mov.l @(0x88,PC),r3
	mul.l r11,r4
	sts macl,r4
	add r10,r4
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c11806a
	mov.l @(0x2C,r14),r3
	mov 0x12,r2
	mul.l r11,r3
	mov 0xFF,r3
	sts macl,r11
	add r11,r10
	mov.l r2,@(0x4,r10)
	mov.l r3,@(0x2C,r14)

loc_8C117F9C:
	mov 0x50,r0
	mov 0x02,r2
	bra loc_8c11806a
	mov.b r2,@(r0,r14)

loc_8C117FA4:
	mov.l @(0x3C,r14),r3
	mov r13,r1
	shad r12,r1
	tst r3,r1
	bf loc_8c11806a               ; loc_8c117f08+0x162
	mul.l r11,r9
	mov.l @(0x58,PC),r3
	mov.l @(0x54,PC),r5
	sts macl,r6
	add r8,r6
	mov.l r6,@r15
	mov.l @(0xC,r6),r6
	mov.l @r15,r4
	shll8 r6
	shll r6
	add 0x20,r6
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c11806a               ; loc_8c117f08+0x162
	mov.l @(0x3C,r14),r3
	shad r12,r13
	or r13,r3
	mov.l r3,@(0x3C,r14)

loc_8C117FD6:
	mov 0x50,r0
	mov 0x03,r2
	bra loc_8c11806a
	mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c117fde:
	#data 0x0200

	#align4
loc_8C117FE0:
	#data 0x8C2940C4
loc_8C117FE4:
	#data bank12.loc_8c129728
loc_8C117FE8:
	#data bank13.loc_8c13ecA8
loc_8C117FEC:
	#data bank17.loc_8c179840
loc_8c117ff0:
	#data 0x8C2A3AE4
loc_8c117ff4:
	#data 0x8C289750
loc_8C117FF8:
	#data bank16.VMU_ACCESS_G
loc_8C117FFC:
	#data loc_8c1154Ac
loc_8C118000:
	#data loc_8c1154F2
loc_8C118004:
	#data bank17.loc_8c179092
loc_8C118008:
	#data 0x8C2946C4
loc_8C11800C:
	#data bank17.loc_8c179980

;==============================================
loc_8C118010:
	mov.l @(0x3C,r14),r3
	mov r13,r1
	shad r12,r1
	tst r3,r1
	bf loc_8c11806a               ; loc_8c117f08+0x162
	mov.l @(0x2C,r14),r10
	cmp/eq r9,r10
	bf loc_8c118038
	mul.l r11,r10
	sts macl,r4
	add r8,r4
	bsr loc_8c117ecc
	mov.l @r4,r4
	cmp/eq 0x00,r0
	bf.s loc_8c11806a             ; loc_8c117f08+0x162
	mov r0,r4
	mov.l @(0x3C,r14),r2
	shad r12,r13
	or r13,r2
	mov.l r2,@(0x3C,r14)

loc_8C118038:
	mov 0x50,r0
	mov 0x04,r1
	bra loc_8c11806a              ; loc_8c117f08+0x162
	mov.b r1,@(r0,r14)

loc_8C118040:
	mov.l @(0x3C,r14),r2
	shad r12,r13
	tst r2,r13
	bf loc_8c11806a               ; loc_8c117f08+0x162
	mov.l @(0x1C8,PC),r2
	mov.l @(0x1C4,PC),r4
	jsr @r2
	nop 
	mov.l @(0x1C4,PC),r3
	jsr @r3
	mov.l @(0x30,r14),r4
	mov 0x50,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov.l r4,@(0x38,r14)
	mov.l @(0x30,r14),r0
	mul.l r11,r0
	sts macl,r0
	add r10,r0
	bra loc_8c11806c              ; loc_8c117f08+0x164
	mov.l @(0x8,r0),r0

loc_8C11806A:
	mov 0xFF,r0

loc_8C11806C:
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
loc_8C118080:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x194,PC),r3
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	jsr @r3
	mov.b @r15,r4
	mov 0x01,r2
	mov.l @(0x18C,PC),r3
	mov.l r2,@-r15
	mov 0x05,r7
	mov.b @(0x4,r15),r0
	mov.l @(0x188,PC),r5
	mov r0,r6
	extu.b r6,r6
	shll8 r6
	mov.l @(0x184,PC),r1
	shll r6
	add r3,r6
	jsr @r1
	mov.l @(0x8,r15),r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C1180B2:
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
	mov.l @(loc_8C118230,pc),r14 ; r14 set to 0x8C289750
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(loc_8C118220,pc),r2 ; r2 set to 0x8C2940C4
	extu.b r9,r3
	mov.l @(loc_8C11822C,pc),r10 ; r10 set to 0x8C2A3AE4
	shll8 r3
	mov r4,r12
	shll r3
	add r3,r2 ; r2 ??? bc r3 is ???
	mov 0x3C,r11 ; r11 set to 0x3c
	mov.l r2,@r15
	mov.l r10,@(0x04,r15)
	mov 0x01,r13 ; r13 set to 0x01
	mov.b @(r0,r14),r0 ; r0 ??
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C1180Fe
	mov.l @(0x30,r14),r8
	cmp/eq 0x01,r0
	bt loc_8C11811e
	cmp/eq 0x02,r0
	bt loc_8C118160
	cmp/eq 0x03,r0
	bt loc_8C11819c
	cmp/eq 0x04,r0
	bt loc_8C1181D0
	bra loc_8C1181Fa
	nop

loc_8c1180fe:
	mov.l @(loc_8c118214,pc),r3
	mov.l @(loc_8c118234,pc),r4
	mov.l r13,@(0x38,r14)
	jsr @r3
	mov.l r12,@(0x30,r14)
	mov.l @(loc_8c118218,pc),r2
	jsr @r2
	mov.l @(0x30,r14),r4
	mov 0x50,r0
	mov.b r13,@(r0,r14)
	bsr loc_8c118784
	mov r9,r4
	mov.l @r15,r2
	mov r0,r4
	mov 0x50,r0
	mov.b r4,@(r0,r2)

loc_8c11811e:
	mov.l @(0x2C,r14),r2
	mov.l @(0x30,r14),r3
	cmp/eq r3,r2
	bt loc_8c118194
	mov.l @(0x2C,r14),r0
	cmp/eq 0xFF,r0
	bt loc_8c118158
	mov.l @(0x3C,r14),r2
	shad r12, r13
	tst r2,r13
	bf loc_8c1181fa
	mov.l @(0x2C,r14),r4
	mov.l @(loc_8c118238,pc),r3
	mul.l r11,r4
	sts macl,r4
	add r10,r4
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c1181fa
	mov.l @(0x2C,r14),r3
	mov 0x12,r2
	mul.l r11,r3
	mov 0xFF,r3
	sts macl,r11
	add r11,r10
	mov.l r2,@(0x04,r10)
	mov.l r3,@(0x2C,r14)

loc_8c118158:
	mov 0x50,r0
	mov 0x02,r2
	bra loc_8c1181fa
	mov.b r2,@(r0,r14)

loc_8c118160:
	mov.l @(0x3C,r14),r3
	mov r13,r1
	shad r12,r1
	tst r3,r1
	bf loc_8c1181fa               ; loc_8c1180b2+0x148
	mul.l r11,r8
	mov.l @(0x4,r15),r3
	mov.l @(0xCC,PC),r5
	sts macl,r6
	add r3,r6
	mov.l @(0xC8,PC),r3
	mov.l r6,@r15
	mov.l @(0xC,r6),r6
	mov.l @r15,r4
	shll8 r6
	shll r6
	add 0x20,r6
	jsr @r3
	mov.l @r4,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c1181fa               ; loc_8c1180b2+0x148
	mov.l @(0x3C,r14),r3
	shad r12,r13
	or r13,r3
	mov.l r3,@(0x3C,r14)

loc_8c118194:
	mov 0x50,r0
	mov 0x03,r2
	bra loc_8c1181fa
	mov.b r2,@(r0,r14)

loc_8c11819c:
	mov.l @(0x3C,r14),r3
	mov r13,r1
	shad r12,r1
	tst r3,r1
	bf loc_8c1181fa               ; loc_8c1180b2+0x148
	mov.l @(0x2C,r14),r10
	cmp/eq r8,r10
	bf loc_8c1181c8
	mul.l r11,r10
	mov.l @(0x4,r15),r3
	mov r9,r5
	sts macl,r4
	add r3,r4
	bsr loc_8c118080
	mov.l @r4,r4
	cmp/eq 0x00,r0
	bf.s loc_8c1181fa             ; loc_8c1180b2+0x148
	mov r0,r4
	mov.l @(0x3C,r14),r2
	shad r12,r13
	or r13,r2
	mov.l r2,@(0x3C,r14)

loc_8c1181c8:
	mov 0x50,r0
	mov 0x04,r1
	bra loc_8c1181fa              ; loc_8c1180b2+0x148
	mov.b r1,@(r0,r14)

loc_8C1181D0:
	mov.l @(0x3C,r14),r2
	shad r12, r13
	tst r2,r13
	bf loc_8C1181Fa
	mov.l @(loc_8C118214,pc),r2 ; r2 set to 0x8C1154Ac
	mov.l @(loc_8C118210,pc),r4 ; r4 set to VMUGraphic
	jsr @r2
	nop
	mov.l @(loc_8C118218,pc),r3 ; r3 set to 0x8C1154F2
	jsr @r3
	mov.l @(0x30,r14),r4 ; r4 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	mov.l r4,@(0x38,r14)
	mov.l @(0x30,r14),r0 ; r0 ??? bc r14 is ???
	mul.l r11,r0
	sts macl,r0
	add r10,r0
	bra loc_8C1181Fc
	mov.l @(0x08,r0),r0

loc_8C1181FA:
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf

loc_8C1181FC:
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
	#align4
loc_8C118210:
	#data bank16.VMU_GRAPHIC
loc_8C118214:
	#data loc_8c1154Ac
loc_8C118218:
	#data loc_8c1154F2
loc_8C11821C:
	#data loc_8c116A3c
loc_8C118220:
	#data 0x8C2940C4
loc_8C118224:
	#data bank13.loc_8c13ecA8
loc_8C118228:
	#data bank17.loc_8c179896
loc_8C11822C:
	#data 0x8C2A3AE4
loc_8C118230:
	#data 0x8C289750
loc_8C118234:
	#data bank16.VMU_ACCESS_G
loc_8C118238:
	#data bank17.loc_8c179092
loc_8C11823c:
	#data 0x8C2946C4
loc_8C118240:
	#data bank17.loc_8c179980

;==============================================
loc_8C118244:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xFC,r15
	mov.l @(0x2A8,PC),r6
	extu.b r4,r14
	mov 0x00,r2
	mov.l @(0x2A0,PC),r3
	mov r6,r4
	add 0x04,r4
	mov.l r2,@(0x4,r4)
	shll8 r14
	mov.l r2,@r4
	mov r6,r4
	shll r14
	mov r2,r1
	mov 0x40,r8
	mov r1,r7
	add r3,r14
	mov r8,r9
	add 0x0C,r4
	mov r14,r11
	mov.l r2,@(0x4,r4)
	mov 0x20,r13
	mov.l r1,@r4
	mov r11,r12
	mov 0x3F,r4
	mov.l r11,@r15
	mov 0x01,r5
	mov r11,r10
	add 0x40,r9

loc_8C11828A:
	mov r14,r3
	add r7,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r9,r2
	bt loc_8c1182c6
	mov r14,r1
	add r7,r1
	mov.b @r1,r3
	extu.b r3,r3
	and r4,r3
	cmp/ge r13,r3
	bf loc_8c1182bc
	mov r14,r3
	add r7,r3
	mov.b @r3,r2
	mov r5,r3
	extu.b r2,r2
	and r4,r2
	add 0xE0,r2
	shad r2,r3
	mov.l @(0x8,r6),r2
	or r3,r2
	bra loc_8c1182c6
	mov.l r2,@(0x8,r6)

loc_8C1182BC:
	mov r5,r2
	shad r3,r2
	mov.l @(0x4,r6),r3
	or r2,r3
	mov.l r3,@(0x4,r6)

loc_8C1182C6:
	mov r14,r2
	add r7,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r8,r3
	bt loc_8c118300
	mov.b @r12,r1
	extu.b r1,r1
	and r4,r1
	cmp/ge r13,r1
	bf loc_8c1182f0
	mov.b @r10,r2
	mov r5,r3
	extu.b r2,r2
	and r4,r2
	add 0xE0,r2
	shad r2,r3
	mov.l @(0x10,r6),r2
	or r3,r2
	bra loc_8c118300
	mov.l r2,@(0x10,r6)

loc_8C1182F0:
	mov.b @r11,r1
	mov r5,r3
	mov.l @(0xC,r6),r2
	extu.b r1,r1
	and r4,r1
	shad r1,r3
	or r3,r2
	mov.l r2,@(0xC,r6)

loc_8C118300:
	mov 0x38,r3
	add 0x01,r7
	cmp/ge r3,r7
	add 0x01,r11
	add 0x01,r10
	bf.s loc_8c11828a
	add 0x01,r12
	mov 0x38,r0
	mov.b @(r0,r14),r1
	mov 0x2A,r0
	mov.b r1,@(r0,r6)
	add 0x04,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C118328:
	mov.l r14,@-r15
	extu.b r4,r14
	sts.l pr,@-r15
	mov.l @(0x1CC,PC),r3
	shll8 r14
	shll r14
	bsr loc_8c118244            ; loc_8c118240+0x4
	add r3,r14
	mov.l @(0x1C8,PC),r4
	mov 0x4C,r0
	mov.l @(0x1C0,PC),r5
	mov.l @r4,r3
	mov.l @(0x4,r5),r2
	mov.l r2,@(0x30,r3)
	mov.l @(0x8,r5),r2
	mov.l @r4,r3
	mov.l r2,@(0x34,r3)
	mov.l @(0xC,r5),r2
	mov.l @r4,r3
	mov.l r2,@(0x38,r3)
	mov.l @(0x10,r5),r2
	mov.l @r4,r3
	mov.l r2,@(0x3C,r3)
	mov.b @(r0,r14),r2
	mov 0x51,r0
	mov.l @r4,r3
	mov.l @(0x1A8,PC),r4
	mov.b r2,@(r0,r3)
	mov 0x41,r0
	mov.b @(r0,r14),r3
	mov 0x12,r0
	mov.b r3,@(r0,r4)
	mov 0x42,r0
	mov.b @(r0,r14),r2
	mov 0x13,r0
	mov.b r2,@(r0,r4)
	mov 0x43,r0
	mov.b @(r0,r14),r3
	mov 0x14,r0
	mov.b r3,@(r0,r4)
	mov r14,r0
	nop 
	add 0x44,r0
	mov.b @r0,r0
	mov 0x64,r2
	extu.b r0,r0
	mov.w r0,@(0x2,r4)
	mov 0x45,r0
	mov.b @(r0,r14),r3
	mov.w @(0x2,r4),r0
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	add r3,r0
	mov.w r0,@(0x2,r4)
	mov r14,r0
	nop 
	add 0x46,r0
	mov.b @r0,r0
	extu.b r0,r0
	mov.w r0,@(0x4,r4)
	mov 0x47,r0
	mov.b @(r0,r14),r3
	mov.w @(0x4,r4),r0
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	add r3,r0
	mov.w r0,@(0x4,r4)
	mov r14,r0
	nop 
	add 0x48,r0
	mov.b @r0,r0
	extu.b r0,r0
	mov.w r0,@(0x6,r4)
	mov 0x49,r0
	mov.b @(r0,r14),r3
	mov.w @(0x6,r4),r0
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	add r3,r0
	mov.w r0,@(0x6,r4)
	mov 0x3B,r0
	mov.b @(r0,r14),r3
	mov 0x11,r0
	mov.b r3,@(r0,r4)
	mov r14,r0
	nop 
	add 0x3C,r0
	mov.b @r0,r0
	extu.b r0,r0
	mov.w r0,@(0xA,r4)
	mov 0x3D,r0
	mov.b @(r0,r14),r3
	mov.w @(0xA,r4),r0
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	add r3,r0
	mov.w r0,@(0xA,r4)
	mov r14,r0
	nop 
	add 0x3E,r0
	mov r14,r5
	mov.b @r0,r0
	add 0x4A,r5
	extu.b r0,r0
	mov.w r0,@(0xC,r4)
	mov 0x3F,r0
	mov.b @(r0,r14),r3
	mov.w @(0xC,r4),r0
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	add r3,r0
	mov.w r0,@(0xC,r4)
	mov 0x40,r0
	mov.b @(r0,r14),r3
	mov 0x10,r0
	mov.b r3,@(r0,r4)
	mov 0x39,r0
	mov.b @(r0,r14),r1
	mov 0x3A,r0
	mov.b r1,@r4
	mov.b @(r0,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @r5,r0
	extu.b r0,r3
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	mulu.w r2,r0
	sts macl,r0
	add r3,r0
	mov.w r0,@(0x8,r4)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C11843C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C1184FC,pc),r3 ; r3 set to 0x8C2940C4
	mov r5,r10
	mov.l @(loc_8C118500,pc),r14 ; r14 set to 0x8C289750
	mov 0x01,r11 ; r11 set to 0x01
	mov.l r3,@r15
	mov r4,r12
	mov r14,r0 ; r0 set to 0x8C289750
	nop
	add 0x22,r0 ; r0 set to 0x8C289772
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C11847e
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C11853a
	cmp/eq 0x02,r0
	bf loc_8C118472
	bra loc_8C1185A0
	nop

loc_8C118472:
	cmp/eq 0x03,r0
	bf loc_8C11847a
	bra loc_8C1185Da
	nop

loc_8C11847A:
	bra loc_8C118616
	nop

loc_8C11847E:
	mov.l @(loc_8C11850C,pc),r3 ; r3 set to 0x8C115BF0
	jsr @r3
	mov r12,r4
	mov r0,r4
	tst r4,r4
	bf loc_8C11848e
	bra loc_8C1185F8
	nop

loc_8C11848E:
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8C11849a
	bra loc_8C1185F8
	nop

loc_8C11849A:
	mov r12,r5
	bsr loc_8C117A88
	mov 0x01,r4 ; r4 set to 0x01
	cmp/eq 0xFF,r0
	bf/s loc_8C1184Aa
	mov r0,r4 ; r4 ??? bc r0 is ???
	bra loc_8C118616
	nop

loc_8c1184aa:
	tst r4,r4
	bf loc_8c1184c0
	bsr loc_8c1187ba
	nop
	mov.l @(loc_8C118510,pc),r3
	mov r0,r4
	extu.w r4,r4
	mov.w @r3,r2
	extu.w r2,r2
	cmp/eq r4,r2
	bt loc_8c1184ce

loc_8c1184c0:
	mov r14,r4
	add 0x22,r4
	mov r13,r0
	nop
	mov.b r0,@(0x01,r4)
	bra loc_8c118612
	mov.b r0,@r4

loc_8c1184ce:
	bsr loc_8c1187a2
	nop
	mov.l @(loc_8C118514,pc),r2
	mov r0,r4
	extu.w r4,r4
	mov.w @r2,r3
	extu.w r3,r3
	cmp/eq r4,r3
	bf loc_8c1184c0
	mov.l @(loc_8c118518,pc),r2
	jsr @r2
	nop
	mov r11,r3
	mov.l @(0x18,r14),r2
	mov r0,r4
	shad r12, r3
	and r3,r4
	tst r2,r4
	bt loc_8c11851c
	mov r14,r1
	add 0x22,r1
	bra loc_8c118616
	mov.b r11,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1184fc:
	#data 0x8c2940c4
loc_8c118500:
	#data 0x8c289750
loc_8c118504:
	#data 0x8c26823c
loc_8c118508:
	#data 0x8c212c3c
loc_8c11850c:
	#data loc_8c115bf0
loc_8c118510:
	#data 0x8c28d2f4
loc_8c118514:
	#data 0x8c28d2f6
loc_8c118518:
	#data loc_8c115e8c

;================================================
loc_8c11851c:
	mov.l @(loc_8C118628,pc),r4
	mov.l @(0x04,r14),r3
	mov.l @r4,r2
	mov.l r3,@(0x30,r2)
	mov.l @(0x08,r14),r3
	mov.l @r4,r2
	mov.l r3,@(0x34,r2)
	mov.l @(0x0C,r14),r3
	mov.l @r4,r2
	mov.l r3,@(0x38,r2)
	mov.l @(0x10,r14),r3
	mov.l @r4,r2
	mov.l r3,@(0x3C,r2)
	bra loc_8c118574
	nop

;================================================
loc_8c11853a:
	mov.l @(0xF0,PC),r2
	jsr @r2
	mov r12,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c1184c0
	mov r4,r0
	nop 
	cmp/eq 0xFF,r0
	bt loc_8c1184c0
	mov 0x00,r5
	bsr loc_8c117f08
	mov r12,r4
	cmp/eq 0xFF,r0
	bt.s loc_8c118616
	mov r0,r4
	tst r4,r4
	bf loc_8c1184c0
	bsr loc_8c118784
	mov 0x00,r4
	mov.l @r15,r2
	extu.b r0,r4
	mov 0x50,r0
	mov.b @(r0,r2),r3
	extu.b r3,r3
	cmp/eq r3,r4
	bf loc_8c1184c0
	bsr loc_8c118328
	mov 0x00,r4

loc_8c118574:
	extu.b r10,r0
	cmp/eq 0x01,r0
	bt loc_8c1185f4
	mov.l @(loc_8c118630,pc),r3
	jsr @r3
	nop
	mov r11,r2
	mov.l @(0x18,r14),r3
	mov r0,r4
	shad r12, r2
	and r2,r4
	tst r3,r4
	bt loc_8c118596
	mov r14,r1
	add 0x22,r1
	bra loc_8c1185d6
	mov 0x02,r3

loc_8c118596:
	extu.b r10,r0
	cmp/eq 0x02,r0
	bf loc_8c1185bc
	bra loc_8c1185f4
	nop

loc_8c1185a0:
	mov r12,r5
	bsr loc_8c117a88
	mov 0x04,r4
	cmp/eq 0xFF,r0
	bt.s loc_8c118616
	mov r0,r4
	tst r4,r4
	bf loc_8c1184c0
	extu.b r10,r0
	cmp/eq 0x02,r0
	bt loc_8c1185f4
	mov.l @(0x7C,PC),r2
	jsr @r2
	nop 

loc_8c1185bc:
	mov.l @(loc_8c118638,pc),r3
	jsr @r3
	nop
	mov r11,r2
	mov.l @(0x18,r14),r3
	mov r0,r4
	shad r12, r2
	and r2,r4
	tst r3,r4
	bt loc_8c1185f4
	mov r14,r1
	mov 0x03,r3
	add 0x22,r1

loc_8c1185d6:
	bra loc_8c118616
	mov.b r3,@r1

loc_8c1185da:
	mov r12,r5
	bsr loc_8c117a88
	mov 0x03,r4
	cmp/eq 0xFF,r0
	bt.s loc_8c118616
	mov r0,r4
	tst r4,r4
	bf loc_8c118606
	bsr loc_8c1187fc
	nop 
	mov r0,r4
	tst r4,r4
	bf loc_8c1185f8

loc_8c1185f4:
	bra loc_8c118618
	mov 0x01,r0

loc_8C1185F8:
	mov r14,r4
	add 0x22,r4
	mov r13,r0
	nop
	mov.b r0,@(0x01,r4)
	bra loc_8C118612
	mov.b r0,@r4

loc_8C118606:
	mov r14,r4
	add 0x22,r4
	mov r13,r0
	nop 
	mov.b r0,@(0x1,r4)
	mov.b r0,@r4

loc_8C118612:
	bra loc_8C118618
	mov 0x00,r0

loc_8c118616:
	mov 0x02,r0

loc_8C118618:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c118628:
	#data 0x8C26823c
loc_8C11862C:
	#data loc_8c115BF0
loc_8C118630:
	#data loc_8c115E2c
loc_8C118634:
	#data loc_8c1162Cc
loc_8C118638:
	#data loc_8c115E56

;==============================================
loc_8C11863C:
	mov.l r14,@-r15
	mov 0x52,r0 ; r0 set to 0x52
	mov.l @(loc_8C118710,pc),r14 ; r14 set to 0x8C289750
	mov 0x01,r3 ; r3 set to 0x01
	mov r3,r4 ; r4 set to 0x01
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)  ; r14 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l @(loc_8C118714,pc),r3 ; r3 set to 0x8C116F34
	jsr @r3
	mov.l @(r0,r14),r5
	cmp/eq 0xFF,r0
	mov r0,r4 ; r4 set to 0x5c
	bt/s loc_8C11866c
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C11870E,pc),r3 ; r3 set to 0xFF01
	cmp/eq r3,r4
	bt loc_8C11866c
	mov 0x52,r0 ; r0 set to 0x52
	mov.b r5,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C11866C:
	mov.w @(loc_8C11870E,pc),r2 ; r2 set to 0xFF01
	cmp/eq r2,r4
	bf loc_8C11867e
	mov 0x52,r0 ; r0 set to 0x52
	mov.b r5,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C11867E:
	mov 0x02,r0 ; r0 set to 0x02
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C118686:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C118710,pc),r14 ; r14 set to 0x8C289750
	mov r4,r13
	mov.b r5,@r15
	mov r14,r0 ; r0 set to 0x8C289750
	nop
	add 0x22,r0 ; r0 set to 0x8C289772
	mov.b @r0,r0 ; r0 ??
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C1186B6
	mov 0x01,r12 ; r12 set to 0x01
	cmp/eq 0x01,r0
	bt loc_8C1186Dc
	cmp/eq 0x02,r0
	bt loc_8C118724
	cmp/eq 0x03,r0
	bt loc_8C11874c
	bra loc_8C118776
	nop

loc_8c1186b6:
	mov.l @(loc_8c118718,pc),r3
	jsr @r3
	mov r13,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c1186ca
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c1186ce

loc_8c1186ca:
	bra loc_8c118778
	mov 0x03,r0

loc_8c1186ce:
	mov.l @(loc_8c11871c,pc),r2
	jsr @r2
	mov r13,r4
	tst r0,r0
	bf loc_8c118700
	bra loc_8c118772
	nop

loc_8c1186dc:
	mov.l @(0x34,PC),r3
	mov 0x52,r0
	mov r13,r5
	mov.b r12,@(r0,r14)
	jsr @r3
	mov 0x01,r4
	cmp/eq 0xFF,r0
	bt.s loc_8c118776
	mov r0,r4
	tst r4,r4
	bf loc_8c11876c
	mov.l @(0x2C,PC),r2
	jsr @r2
	nop 
	shad r13,r12
	mov r0,r4
	tst r4,r12
	bt loc_8c118738

loc_8c118700:
	mov r14,r2
	add 0x22,r2
	mov.b @r2,r3
	add 0x01,r3
	mov.b r3,@r2
	bra loc_8c118776
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11870e:
	#data 0xFF01
	#align4

loc_8c118710:
	#data 0x8C289750
loc_8c118714:
	#data loc_8C116F34
loc_8c118718:
	#data loc_8c115bf0
loc_8c11871c:
	#data loc_8c115c40
loc_8c118720:
	#data loc_8C115E8C

;==============================================
loc_8c118724:
	mov 0x52,r0
	mov 0x00,r5
	mov.b r12,@(r0,r14)
	bsr loc_8c1180b2
	mov r13,r4
	cmp/eq 0xFF,r0
	bt.s loc_8c118776
	mov r0,r4
	tst r4,r4
	bf loc_8c11876c

loc_8c118738:
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c118762
	mov r14,r2
	mov 0x03,r3
	add 0x22,r2
	mov.b r3,@r2
	bra loc_8c118776
	nop 

loc_8c11874c:
	mov.l @(0x9C,PC),r3
	mov 0x52,r0
	mov r13,r5
	mov.b r12,@(r0,r14)
	jsr @r3
	mov 0x04,r4
	cmp/eq 0xFF,r0
	bt.s loc_8c118776
	mov r0,r4
	tst r4,r4
	bf loc_8c11876c

loc_8c118762:
	mov 0x52,r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	bra loc_8c118778
	mov 0x01,r0

loc_8c11876c:
	mov 0x52,r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c118772:
	bra loc_8c118778
	mov 0x00,r0

loc_8c118776:
	mov 0x02,r0

loc_8c118778:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C118784:
	extu.b r4,r7
	mov.l @(loc_8C1187F0,pc),r3 ; r3 set to 0x8C2940C4
	shll8 r7
	shll r7
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x00,r6 ; r6 set to 0x00
	add r3,r7
	mov 0x50,r5 ; r5 set to 0x50

loc_8C118794:
	add 0x01,r4 ; r4 set to 0x01
	mov.b @r7+,r3 ; r3 ??? bc r7 is ???
	cmp/hs r5,r4
	bf/s loc_8C118794
	add r3,r6 ; r6 ??? bc r3 is ???
	rts
	extu.b r6,r0

;==============================================
loc_8C1187A2:
	mov.w @(loc_8C1187E6,pc),r6 ; r6 set to 0x724
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C1187F4,pc),r7 ; r7 set to 0x8C28CBD0
	mov 0x00,r4 ; r4 set to 0x00

loc_8C1187AA:
	mov.b @r7+,r3
	add 0x01,r4 ; r4 set to 0x01
	cmp/hs r6,r4
	extu.b r3,r3
	bf/s loc_8C1187Aa
	add r3,r5 ; r5 ??? bc r3 is ???
	rts
	extu.w r5,r0

;==============================================
loc_8C1187BA:
	mov.w @(loc_8C1187E8,pc),r6 ; r6 set to 0x392
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C1187F4,pc),r7 ; r7 set to 0x8C28CBD0
	mov 0x00,r4 ; r4 set to 0x00

loc_8C1187C2:
	add 0x01,r4 ; r4 set to 0x01
	mov.w @r7+,r3
	cmp/hs r6,r4
	bf/s loc_8C1187C2
	add r3,r5 ; r5 ??? bc r3 is ???
	rts
	extu.w r5,r0

;==============================================
loc_8C1187D0:
	mov.l @(0x24,PC),r7
	mov 0x00,r5
	mov 0x00,r4
	mov 0x4B,r6

loc_8C1187D8:
	add 0x01,r4
	mov.b @r7+,r3
	cmp/hs r6,r4
	bf.s loc_8c1187d8
	add r3,r5
	rts 
	extu.b r5,r0

;==============================================
loc_8C1187E6:
	#data 0x0724
loc_8C1187E8:
	#data 0x0392
	#align4

loc_8C1187EC:
	#data loc_8c116F34
loc_8C1187F0:
	#data 0x8C2940C4
loc_8C1187F4:
	#data 0x8C28CBD0
loc_8C1187F8:
	#data 0x8C28D2F8

;==============================================
loc_8C1187FC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xE0,r15
	bsr loc_8c1187d0
	nop 
	mov r0,r4
	mov.w @(0xEA,PC),r0
	mov.l @(0xF0,PC),r10
	mov.l @(0xF4,PC),r6
	mov.b r4,@(r0,r10)
	mov 0x4B,r0
	mov.b @(r0,r6),r3
	add 0x3E,r0
	extu.b r4,r4
	mov.b r3,@(r0,r10)
	mov 0x4B,r0
	mov.b @(r0,r6),r2
	extu.b r2,r2
	cmp/eq r4,r2
	bf loc_8c1188fa
	mov r15,r7
	mov r15,r14
	add 0x10,r7
	add 0x18,r14
	mov 0x00,r2
	mov r2,r3
	mov.l r2,@(0x4,r14)
	mov.l r2,@r14
	mov r3,r13
	mov.l r2,@(0x4,r7)
	mov r14,r2
	mov.l r3,@r7
	mov r2,r1
	mov r7,r3
	mov.l r2,@(0x8,r15)
	mov r3,r2
	add 0x04,r2
	add 0x04,r1
	mov.l r3,@(0xC,r15)
	mov 0x38,r9
	mov.l r1,@(0x4,r15)
	mov.l r2,@r15
	bra loc_8c1188ce
	mov 0x01,r4

loc_8C11885E:
	mov r6,r5
	add r13,r5
	mov.w @(0x9C,PC),r12
	mov 0x40,r11
	mov.b @r5,r5
	mov 0x3F,r0
	mov 0x20,r3
	and r5,r11
	and r5,r0
	and r5,r12
	extu.b r0,r5
	cmp/ge r3,r5
	bt loc_8c1188a0
	extu.b r12,r12
	tst r12,r12
	bt.s loc_8c11888c
	extu.b r11,r11
	mov.l @(0x8,r15),r2
	mov r4,r1
	shad r5,r1
	mov.l @r2,r0
	or r1,r0
	mov.l r0,@r2

loc_8C11888C:
	tst r11,r11
	bt loc_8c1188cc
	mov.l @(0xC,r15),r3
	mov r4,r2
	shad r5,r2
	mov.l @r3,r1
	or r2,r1
	mov.l r1,@r3
	bra loc_8c1188cc
	nop 

loc_8C1188A0:
	extu.b r12,r12
	tst r12,r12
	bt.s loc_8c1188ba
	extu.b r11,r11
	mov r5,r1
	mov.l @(0x4,r15),r2
	add 0xE0,r1
	mov r4,r0
	nop 
	shad r1,r0
	mov.l @r2,r1
	or r0,r1
	mov.l r1,@r2

loc_8C1188BA:
	tst r11,r11
	bt loc_8c1188cc
	mov.l @r15,r3
	mov r4,r2
	add 0xE0,r5
	mov.l @r3,r1
	shad r5,r2
	or r2,r1
	mov.l r1,@r3

loc_8C1188CC:
	add 0x01,r13

loc_8C1188CE:
	cmp/ge r9,r13
	bf loc_8c11885e
	mov r14,r13
	mov.l @r13,r3
	mov.l @(0x38,r6),r2
	cmp/eq r2,r3
	bf loc_8c1188fa
	mov.l @(0x4,r14),r2
	mov.l @(0x3C,r6),r3
	cmp/eq r3,r2
	bf loc_8c1188fa
	mov r6,r3
	add 0x40,r3
	mov.l @r7,r1
	mov.l @r3,r2
	cmp/eq r2,r1
	bf loc_8c1188fa
	mov 0x44,r0
	mov.l @(0x4,r7),r2
	mov.l @(r0,r6),r3
	cmp/eq r3,r2
	bt loc_8c118910

loc_8C1188FA:
	mov.w @(0x6,PC),r0
	bra loc_8c11894e
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c118900:
	#data 0x0088
loc_8c118902:
	#data 0x0080
loc_8c118904:
	#data 0xFF10
	#align4

loc_8c118908:
	#data 0x8C289750
loc_8c11890c:
	#data 0x8C28D2F8

;==============================================
loc_8C118910:
	mov.l @(0xC4,PC),r4
	mov 0x48,r0
	mov.l @r13,r2
	mov.l @r4,r3
	mov.b @(r0,r6),r5
	mov 0x2A,r0
	mov.l @(0x30,r3),r1
	or r2,r1
	mov.l r1,@(0x30,r3)
	mov.l @r4,r3
	mov.l @(0x4,r14),r2
	mov.l @(0x34,r3),r1
	or r2,r1
	mov.l r1,@(0x34,r3)
	mov.l @r4,r3
	mov.l @r7,r2
	mov.l @(0x38,r3),r1
	or r2,r1
	mov.l r1,@(0x38,r3)
	mov.l @r4,r3
	mov.l @(0x4,r7),r2
	mov.l @(0x3C,r3),r1
	or r2,r1
	mov.l r1,@(0x3C,r3)
	extu.b r5,r2
	mov.b @(r0,r10),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c11894c
	mov.b r5,@(r0,r10)

loc_8C11894C:
	mov 0x00,r0

loc_8C11894E:
	add 0x20,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C118960:
	mov.l @(loc_8C1189D8,pc),r3 ; r3 set to 0x8C26823c
	mov 0x4C,r1 ; r1 set to 0x4c
	mov.l @(loc_8C1189DC,pc),r4 ; r4 set to 0x8C2A3CD4
	mov.l @r3,r0
	mov.w @(loc_8C1189D6,pc),r5 ; r5 set to 0x270f
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8C118984
	cmp/eq 0x01,r0
	bt loc_8C118994
	cmp/eq 0x02,r0
	bt loc_8C1189A4
	cmp/eq 0x05,r0
	bt loc_8C1189B4
	cmp/eq 0x07,r0
	bt loc_8C1189C4
	bra loc_8C1189D2
	nop

loc_8C118984:
	mov.w @r4,r2
	extu.w r2,r2
	cmp/ge r5,r2
	bt loc_8C1189D2
	mov.w @r4,r2
	add 0x01,r2
	bra loc_8C1189D2
	mov.w r2,@r4

loc_8C118994:
	mov.w @(0x02,r4),r0
	extu.w r0,r0
	cmp/ge r5,r0
	bt loc_8C1189D2
	mov.w @(0x02,r4),r0
	add 0x01,r0
	bra loc_8C1189D2
	mov.w r0,@(0x02,r4)

loc_8C1189A4:
	mov.w @(0x06,r4),r0
	extu.w r0,r0
	cmp/ge r5,r0
	bt loc_8C1189D2
	mov.w @(0x06,r4),r0
	add 0x01,r0
	bra loc_8C1189D2
	mov.w r0,@(0x06,r4)

loc_8C1189B4:
	mov.w @(0x08,r4),r0
	extu.w r0,r0
	cmp/ge r5,r0
	bt loc_8C1189D2
	mov.w @(0x08,r4),r0
	add 0x01,r0
	bra loc_8C1189D2
	mov.w r0,@(0x08,r4)

loc_8c1189c4:
	mov.w @(0x04,r4),r0
	extu.w r0,r0
	cmp/ge r5,r0
	bt loc_8c1189d2
	mov.w @(0x04,r4),r0
	add 0x01,r0
	mov.w r0,@(0x04,r4)

loc_8C1189D2:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1189D6:
	#data 0x270f
	#align4

loc_8C1189D8:
	#data 0x8C26823c
loc_8C1189DC:
	#data 0x8C2A3CD4

;==============================================
loc_8C1189E0:
	mov.l @(loc_8C118AA4,pc),r3 ; r3 set to 0x8C26823c
	mov 0x4C,r1 ; r1 set to 0x4c
	mov.w @(loc_8C118A96,pc),r7 ; r7 set to 0x270f
	extu.b r4,r5
	mov.l @r3,r0
	shll r5
	mov.l @(loc_8C118AA0,pc),r6 ; r6 set to 0x8C2A3CD4
	mov.b @(r0,r1),r0
	cmp/eq 0x00,r0
	bt loc_8C118A08
	cmp/eq 0x01,r0
	bt loc_8C118A24
	cmp/eq 0x02,r0
	bt loc_8C118A40
	cmp/eq 0x05,r0
	bt loc_8C118A5c
	cmp/eq 0x07,r0
	bt loc_8C118A78
	bra loc_8C118A92
	nop

loc_8C118A08:
	mov r6,r2
	add 0x0A,r2
	add r5,r2
	mov.w @r2,r1
	extu.w r1,r1
	cmp/ge r7,r1
	bt loc_8C118A92
	mov r6,r1
	add 0x0A,r1
	add r1,r5
	mov.w @r5,r2
	add 0x01,r2
	bra loc_8C118A92
	mov.w r2,@r5

loc_8C118A24:
	mov.w @(loc_8C118A98,pc),r1 ; r1 set to 0x80
	add r6,r1 ; r1 ??? bc r6 is ???
	add r5,r1
	mov.w @r1,r2
	extu.w r2,r2
	cmp/ge r7,r2
	bt loc_8C118A92
	mov.w @(loc_8C118A98,pc),r2 ; r2 set to 0x80
	add r6,r2 ; r2 ??? bc r6 is ???
	add r2,r5
	mov.w @r5,r1
	add 0x01,r1
	bra loc_8C118A92
	mov.w r1,@r5

loc_8C118A40:
	mov.w @(loc_8C118A9A,pc),r2 ; r2 set to 0x16c
	add r6,r2 ; r2 ??? bc r6 is ???
	add r5,r2
	mov.w @r2,r1
	extu.w r1,r1
	cmp/ge r7,r1
	bt loc_8C118A92
	mov.w @(loc_8C118A9A,pc),r1 ; r1 set to 0x16c
	add r6,r1 ; r1 ??? bc r6 is ???
	add r1,r5
	mov.w @r5,r2
	add 0x01,r2
	bra loc_8C118A92
	mov.w r2,@r5

loc_8C118A5C:
	mov.w @(loc_8C118A9C,pc),r1 ; r1 set to 0x1E2
	add r6,r1 ; r1 ??? bc r6 is ???
	add r5,r1
	mov.w @r1,r2
	extu.w r2,r2
	cmp/ge r7,r2
	bt loc_8C118A92
	mov.w @(loc_8C118A9C,pc),r2 ; r2 set to 0x1E2
	add r6,r2 ; r2 ??? bc r6 is ???
	add r2,r5
	mov.w @r5,r1
	add 0x01,r1
	bra loc_8C118A92
	mov.w r1,@r5

loc_8c118a78:
	mov.w @(loc_8C118A9E,pc),r2
	add r6,r2
	add r5,r2
	mov.w @r2,r1
	extu.w r1,r1
	cmp/ge r7,r1
	bt loc_8c118a92
	mov.w @(loc_8C118A9E,pc),r1
	add r6,r1
	add r1,r5
	mov.w @r5,r2
	add 0x01,r2
	mov.w r2,@r5

loc_8C118A92:
	rts
	nop

;==============================================
loc_8C118A96:
	#data 0x270f
loc_8C118A98:
	#data 0x0080
loc_8C118A9A:
	#data 0x016c
loc_8C118A9C:
	#data 0x01E2
loc_8c118a9e:
	#data 0x00F6
	#align4

loc_8C118AA0:
	#data 0x8C2A3CD4
loc_8C118AA4:
	#data 0x8C26823c

;==============================================
;unused?
loc_8c118aa8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	mov.l @(0x7C,PC),r4
	mov.l @(0x74,PC),r12
	jsr @r3
	nop 
	mov r0,r4
	tst r4,r4
	bf loc_8c118ac8
	bra loc_8c118b1e
	mov 0x00,r0

loc_8c118ac8:
	mov.w @(0x60,PC),r6
	mov 0x00,r5
	mov.l @(0x6C,PC),r7
	add r7,r6
	mov r7,r4

loc_8c118ad2:
	mov.b r5,@r4
	add 0x01,r4
	cmp/hs r6,r4
	bf loc_8c118ad2
	mov.w @(0x50,PC),r10
	mov.l @(0x60,PC),r4
	mov.l @(0x68,PC),r13
	mov.l @(0x60,PC),r11
	add r4,r10
	mov r4,r14

loc_8c118ae6:
	mov.l @r14+,r2
	mov.l r2,@-r15
	mov.l r13,@-r15
	jsr @r11
	mov r12,r4
	add 0x08,r15
	cmp/hs r10,r14
	bf.s loc_8c118ae6
	add r0,r12
	bsr loc_8c118b50
	mov r12,r4
	bsr loc_8c118cac
	mov r0,r4
	mov.l @(0x48,PC),r4
	mov r0,r12
	mov r4,r10
	add 0x20,r10
	mov r4,r14

loc_8c118b0a:
	mov.l @r14+,r2
	mov.l r2,@-r15
	mov.l r13,@-r15
	jsr @r11
	mov r12,r4
	add 0x08,r15
	cmp/hs r10,r14
	bf.s loc_8c118b0a
	add r0,r12
	mov 0x01,r0

loc_8c118b1e:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c118b2c:
	#data 0x6000
loc_8c118b2e:
	#data 0x015C
	#align4

loc_8c118b30:
	#data 0x8C2A3F90
loc_8c118b34:
	#data 0x8C2A9F52
loc_8C118B38:
	#data bank17.loc_8c17A38e
loc_8c118b3c:
	#data 0x8C2A3F50
loc_8C118B40:
	#data bank16.loc_8c16B914
loc_8C118B44:
	#data bank12.loc_8c129740
loc_8C118B48:
	#data bank13.loc_8c13ecC8
loc_8C118B4C:
	#data bank16.loc_8c16BB78

;==============================================
loc_8C118B50:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r14
	mov.l @(0x218,PC),r2
	mov.l r4,@r15
	mov 0x00,r0
	mov.l @(0x20C,PC),r13
	add 0x08,r14
	mov.l @(0x20C,PC),r12
	mov r0,r3
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	mov.l r0,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov.b @(0x1,r13),r0
	mov r14,r5
	mov r0,r6
	bsr loc_8c119170
	mov.l @(0x8,r15),r4
	mov.l @(0x1F8,PC),r2
	mov 0x00,r3
	mov.l r0,@(0x8,r15)
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov.b @(0x2,r13),r0
	mov r14,r5
	mov r0,r6
	bsr loc_8c119170
	mov.l @(0x10,r15),r4
	mov.l @(0x1E4,PC),r2
	mov 0x00,r3
	mov.l r0,@(0x10,r15)
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov.b @(0x3,r13),r0
	mov r14,r5
	mov r0,r6
	bsr loc_8c119170
	mov.l @(0x18,r15),r4
	mov.l @(0x1D0,PC),r2
	mov 0x00,r3
	mov.l r0,@(0x18,r15)
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov.b @(0x4,r13),r0
	mov r14,r5
	mov r0,r6
	bsr loc_8c1190d4
	mov.l @(0x20,r15),r4
	mov.l @(0x1BC,PC),r2
	mov 0x00,r3
	mov.l r0,@(0x20,r15)
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov.b @(0x5,r13),r0
	mov r14,r5
	mov r0,r6
	bsr loc_8c1190d4
	mov.l @(0x28,r15),r4
	mov.l @(0x1A8,PC),r2
	mov 0x00,r3
	mov.l r0,@(0x28,r15)
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov.b @(0x6,r13),r0
	mov r14,r5
	mov r0,r6
	bsr loc_8c1190d4
	mov.l @(0x30,r15),r4
	mov.l @(0x194,PC),r2
	mov 0x00,r3
	mov.l r0,@(0x30,r15)
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov r13,r6
	mov r14,r5
	add 0x0C,r6
	bsr loc_8c1191c6
	mov.l @(0x38,r15),r4
	mov.l @(0x180,PC),r2
	mov 0x00,r3
	mov.l r0,@(0x38,r15)
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov r13,r6
	mov 0x40,r0
	mov r14,r5
	add 0x10,r6
	bsr loc_8c119240
	mov.l @(r0,r15),r4
	mov 0x00,r3
	mov.l @(0x168,PC),r2
	mov r15,r1
	add 0x40,r1
	mov.l r0,@r1
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov.b @(0x8,r13),r0
	mov r14,r5
	extu.b r0,r6
	mov 0x48,r0
	bsr loc_8c119170
	mov.l @(r0,r15),r4
	mov 0x00,r3
	mov.l @(0x150,PC),r2
	mov r15,r1
	add 0x48,r1
	mov.l r0,@r1
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov.b @(0x7,r13),r0
	mov r14,r5
	mov r0,r6
	mov 0x50,r0
	bsr loc_8c1190d4
	mov.l @(r0,r15),r4
	mov r15,r1
	add 0x54,r1
	mov.l r0,@r1
	mov 0x3C,r3
	mov.b @(0x9,r13),r0
	mov 0x64,r1
	muls.w r3,r0
	mov 0x00,r3
	sts macl,r0
	mov r0,r2
	mov.b @(0xA,r13),r0
	add r0,r2
	mov.b @(0xB,r13),r0
	mul.l r1,r2
	sts macl,r2
	add r0,r2
	mov 0x50,r0
	mov.l r2,@(r0,r15)
	mov.l @(0x114,PC),r2
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov 0x58,r0
	mov r14,r5
	mov.l @(r0,r15),r6
	mov 0x5C,r0
	bsr loc_8c119170
	mov.l @(r0,r15),r4
	add 0x68,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c118cac:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.l @(0xE4,PC),r3
	mov 0x12,r0
	mov.l @(0xB0,PC),r10
	mov 0x01,r13
	mov.l r3,@(0x4,r15)
	mov r15,r14
	mov.b @(r0,r3),r2
	mov 0x3C,r3
	mov.l @(0x4,r15),r1
	mov 0x13,r0
	extu.b r2,r2
	mov.l @(0xD4,PC),r5
	mulu.w r3,r2
	mov.b @(r0,r1),r1
	mov 0x14,r0
	mov.l @(0xC8,PC),r8
	mov 0x00,r11
	extu.b r1,r1
	sts macl,r2
	mov 0x3B,r12
	add r1,r2
	mov.l @(0x4,r15),r1
	mul.l r3,r2
	mov.b @(r0,r1),r1
	extu.b r1,r1
	sts macl,r2
	add r1,r2
	mov r2,r6
	mov.l r2,@r15
	bsr loc_8c119170
	add 0x0C,r14
	mov.l @(0xB0,PC),r5
	mov r0,r4
	mov.w @r8,r6
	bsr loc_8c119170
	extu.w r6,r6
	mov r0,r4
	mov.l @(0xA8,PC),r5
	mov.w @(0x2,r8),r0
	bsr loc_8c119170
	extu.w r0,r6
	mov r0,r4
	mov.l @(0xA4,PC),r5
	mov.w @(0x4,r8),r0
	bsr loc_8c119170
	extu.w r0,r6
	mov r0,r4
	mov.l @(0x9C,PC),r5
	mov.w @(0x6,r8),r0
	bsr loc_8c119170
	extu.w r0,r6
	mov r0,r4
	mov.l @(0x98,PC),r5
	mov.w @(0x8,r8),r0
	bsr loc_8c119170
	extu.w r0,r6
	mov r14,r2
	add 0x07,r2
	mov.l r2,@(0x8,r15)
	mov r0,r9
	mov.b r11,@r2
	bra loc_8c118d66
	mov.l r11,@r15

loc_8c118d3c:
	mov.l @r15,r2
	mov.l @(0x84,PC),r3
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r10
	mov r14,r4
	add 0x08,r15
	mov.l @r15,r6
	mov r8,r3
	add 0x0A,r3
	mov r14,r5
	shll r6
	add r3,r6
	mov.w @r6,r6
	extu.w r6,r6
	bsr loc_8c119170
	mov r9,r4
	mov.l @r15,r3
	mov r0,r9
	add 0x01,r3
	mov.l r3,@r15

loc_8c118d66:
	mov.l @r15,r2
	cmp/ge r12,r2
	bf loc_8c118d3c
	bra loc_8c118df2
	mov.l r11,@r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C118D70:
	#data 0x8C212CEc
loc_8C118D74:
	#data bank12.loc_8c129740
loc_8C118D78:
	#data bank13.loc_8c13ecCc
loc_8C118D7C:
	#data bank13.loc_8c13ecD4
loc_8C118D80:
	#data bank13.loc_8c13ecDc
loc_8C118D84:
	#data bank13.loc_8c13ecE4
loc_8C118D88:
	#data bank13.loc_8c13ecEc
loc_8C118D8C:
	#data bank13.loc_8c13ecF4
loc_8C118D90:
	#data bank13.loc_8c13ecFc
loc_8C118D94:
	#data bank13.loc_8c13ed04
loc_8C118D98:
	#data bank13.loc_8c13ed0c
loc_8C118D9C:
	#data bank13.loc_8c13ed14
loc_8C118DA0:
	#data bank13.loc_8c13ed1c
loc_8C118DA4:
	#data 0x8C212C3c
loc_8C118DA8:
	#data 0x8C2A3CD4
loc_8C118DAC:
	#data bank13.loc_8c13ed24
loc_8C118DB0:
	#data bank13.loc_8c13ed2c
loc_8C118DB4:
	#data bank13.loc_8c13ed38
loc_8C118DB8:
	#data bank13.loc_8c13ed44
loc_8C118DBC:
	#data bank13.loc_8c13ed50
loc_8C118DC0:
	#data bank13.loc_8c13ed5c
loc_8C118DC4:
	#data bank13.loc_8c13ed68

;==============================================
loc_8C118DC8:
	mov.l @r15,r2
	mov.l @(0x10C,PC),r3
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r10
	mov r14,r4
	add 0x08,r15
	mov.w @(0xF6,PC),r3
	mov r14,r5
	mov.l @r15,r6
	add r8,r3
	shll r6
	add r3,r6
	mov.w @r6,r6
	extu.w r6,r6
	bsr loc_8c119170
	mov r9,r4
	mov.l @r15,r3
	mov r0,r9
	add 0x01,r3
	mov.l r3,@r15

loc_8c118df2:
	mov.l @r15,r2
	cmp/ge r12,r2
	bf loc_8c118dc8
	bra loc_8c118e26
	mov.l r11,@r15

loc_8c118dfc:
	mov.l @r15,r2
	mov.l @(0xDC,PC),r3
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r10
	mov r14,r4
	add 0x08,r15
	mov.w @(0xC4,PC),r3
	mov r14,r5
	mov.l @r15,r6
	add r8,r3
	shll r6
	add r3,r6
	mov.w @r6,r6
	extu.w r6,r6
	bsr loc_8c119170
	mov r9,r4
	mov.l @r15,r3
	mov r0,r9
	add 0x01,r3
	mov.l r3,@r15

loc_8c118e26:
	mov.l @r15,r2
	cmp/ge r12,r2
	bf loc_8c118dfc
	bra loc_8c118e5a
	mov.l r11,@r15

loc_8c118e30:
	mov.l @r15,r2
	mov.l @(0xAC,PC),r3
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r10
	mov r14,r4
	add 0x08,r15
	mov.w @(0x92,PC),r3
	mov r14,r5
	mov.l @r15,r6
	add r8,r3
	shll r6
	add r3,r6
	mov.w @r6,r6
	extu.w r6,r6
	bsr loc_8c119170
	mov r9,r4
	mov.l @r15,r3
	mov r0,r9
	add 0x01,r3
	mov.l r3,@r15

loc_8c118e5a:
	mov.l @r15,r2
	cmp/ge r12,r2
	bf loc_8c118e30
	bra loc_8c118e8e
	mov.l r11,@r15

loc_8c118e64:
	mov.l @r15,r2
	mov.l @(0x7C,PC),r3
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r10
	mov r14,r4
	add 0x08,r15
	mov.w @(0x60,PC),r3
	mov r14,r5
	mov.l @r15,r6
	add r8,r3
	shll r6
	add r3,r6
	mov.w @r6,r6
	extu.w r6,r6
	bsr loc_8c119170
	mov r9,r4
	mov.l @r15,r3
	mov r0,r9
	add 0x01,r3
	mov.l r3,@r15

loc_8c118e8e:
	mov.l @r15,r2
	cmp/ge r12,r2
	bf loc_8c118e64
	mov.l @(0x4,r15),r6
	mov.l @(0x50,PC),r5
	mov.w @(0x8,r6),r0
	extu.w r0,r6
	bsr loc_8c119170
	mov r9,r4
	mov.l @(0x8,r15),r2
	mov r0,r8
	mov.b r11,@r2
	bra loc_8c118f1a
	mov r11,r9

loc_8c118eaa:
	mov.l @(0x40,PC),r2
	mov.l r9,@-r15
	mov.l r2,@-r15
	jsr @r10
	mov r14,r4
	mov 0x20,r3
	cmp/ge r3,r9
	bt.s loc_8c118ef4
	add 0x08,r15
	mov.l @(0x30,PC),r2
	mov.l @r2,r1
	mov r13,r0
	nop 
	mov.l @(0x30,r1),r1
	shad r9,r0
	tst r1,r0
	bf loc_8c118f08               ; loc_8c118cac+0x25c
	bra loc_8c118f0e              ; loc_8c118cac+0x262
	mov r11,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c118ed0:
	#data 0x0080
loc_8c118ed2:
	#data 0x00F6
loc_8c118ed4:
	#data 0x016c
loc_8c118ed6:
	#data 0x01E2
	#align4

loc_8C118ED8:
	#data bank13.loc_8c13ed74
loc_8C118EDC:
	#data bank13.loc_8c13ed80
loc_8C118EE0:
	#data bank13.loc_8c13ed8c
loc_8C118EE4:
	#data bank13.loc_8c13ed98
loc_8C118EE8:
	#data bank13.loc_8c13edA4
loc_8C118EEC:
	#data bank13.loc_8c13edAc
loc_8C118Ef0:
	#data 0x8C26823c

;==============================================
;unused?
loc_8c118ef4:
	mov.l @(0x22C,PC),r2
	mov.l @r2,r1
	mov r9,r0
	nop 
	mov.l @(0x34,r1),r1
	mov r13,r3
	add 0xE0,r0
	shad r0,r3
	tst r1,r3
	bt loc_8c118f0c

loc_8c118f08:
	bra loc_8c118f0e
	mov r13,r5

loc_8c118f0c:
	mov r11,r5

loc_8c118f0e:
	mov r5,r6
	mov r14,r5
	bsr loc_8c119170
	mov r8,r4
	add 0x01,r9
	mov r0,r8

loc_8c118f1a:
	cmp/ge r12,r9
	bf loc_8c118eaa
	bra loc_8c118f6e
	mov r11,r9

loc_8c118f22:
	mov.l @(0x204,PC),r3
	mov.l r9,@-r15
	mov.l r3,@-r15
	jsr @r10
	mov r14,r4
	mov 0x20,r2
	cmp/ge r2,r9
	bt.s loc_8c118f48
	add 0x08,r15
	mov.l @(0x1EC,PC),r3
	mov.l @r3,r1
	mov r13,r0
	nop 
	mov.l @(0x38,r1),r1
	shad r9,r0
	tst r1,r0
	bf loc_8c118f5c               ; loc_8c118cac+0x2b0
	bra loc_8c118f62              ; loc_8c118cac+0x2b6
	mov r11,r5

loc_8c118f48:
	mov.l @(0x1D8,PC),r1
	mov.l @r1,r3
	mov r9,r0
	nop 
	mov.l @(0x3C,r3),r3
	mov r13,r2
	add 0xE0,r0
	shad r0,r2
	tst r3,r2
	bt loc_8c118f60

loc_8c118f5c:
	bra loc_8c118f62
	mov r13,r5

loc_8c118f60:
	mov r11,r5

loc_8c118f62:
	mov r5,r6
	mov r14,r5
	bsr loc_8c119170
	mov r8,r4
	add 0x01,r9
	mov r0,r8
	
loc_8c118f6e:
	cmp/ge r12,r9
	bf loc_8c118f22
	mov.l @(0x1B8,PC),r2
	mov.l @(0x1B8,PC),r5
	mov.b @r2,r6
	extu.b r6,r6
	bsr loc_8c119170
	mov r8,r4
	mov.l @(0x1B4,PC),r2
	mov r0,r9
	mov.l @(0x1B4,PC),r3
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r10
	mov r9,r4
	mov.l @(0x1AC,PC),r2
	add r0,r9
	mov.l r2,@-r15
	jsr @r10
	mov r9,r4
	mov.l @(0x1A8,PC),r5
	add r0,r9
	mov 0x08,r6
	mov.l @r5,r5
	bsr loc_8c11901e
	mov r9,r4
	mov.l @(0x1A0,PC),r5
	mov 0x08,r6
	mov r0,r4
	bsr loc_8c11901e
	mov.l @r5,r5
	mov.l @(0x198,PC),r3
	mov r0,r9
	mov.l @(0x184,PC),r2
	add 0xFC,r9
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r10
	mov r9,r4
	add r0,r9
	mov r9,r0
	nop 
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

;==============================================
loc_8c118fd6:
	mov.l @(0x178,PC),r7
	sts.l pr,@-r15
	mov.l @(0x170,PC),r5
	cmp/hi r7,r4
	bf.s loc_8c118fe4
	mov 0x00,r6
	mov r7,r4

loc_8c118fe4:
	mov 0x0A,r7

loc_8c118fe6:
	mov r4,r1
	mov r5,r0
	nop 
	mov.l @(0x164,PC),r2
	jsr @r2
	nop 
	mov r4,r1
	add r0,r6
	mov r5,r0
	nop 
	mov.l @(0x15C,PC),r3
	jsr @r3
	nop 
	shll2 r6
	mov r0,r4
	shll2 r6
	mov r7,r0
	nop 
	mov.l @(0x148,PC),r2
	jsr @r2
	mov r5,r1
	cmp/eq 0x01,r0
	bf.s loc_8c118fe6
	mov r0,r5
	lds.l @r15+,pr
	add r4,r6
	rts 
	mov r6,r0

;==============================================
loc_8c11901e:
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r15,r12
	mov r12,r1
	mov 0x00,r3
	mov.l @(0x12C,PC),r0
	add 0x08,r1
	mov r4,r13
	mov.b r3,@r1
	bra loc_8c119048
	mov r12,r4

loc_8c119038:
	mov 0xE4,r3
	mov r5,r6
	shld r3,r6
	mov.b @(r0,r6),r3
	shll2 r5
	shll2 r5
	mov.b r3,@r4
	add 0x01,r4

loc_8c119048:
	cmp/hs r1,r4
	bf loc_8c119038
	mov.l @(0xE8,PC),r3
	mov.l @(0x110,PC),r2
	mov.l r12,@-r15
	mov.l r3,@-r15
	jsr @r2
	mov r13,r4
	add r0,r13
	mov r13,r0
	nop 
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r13

;==============================================
loc_8c119068:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	tst r5,r5
	mov r4,r14
	mov 0x08,r6
	bf.s loc_8c119086
	mov r15,r4
	mov.l @(0xE8,PC),r2
	mov.l @(0xE4,PC),r3
	mov.l r2,@-r15
	jsr @r3
	mov r14,r4
	bra loc_8c1190c6
	add 0x04,r15

loc_8c119086:
	mov.l @(0xE0,PC),r7

loc_8c119088:
	mov r5,r2
	tst r7,r2
	bf loc_8c119096
	shll2 r5
	add 0xFF,r6
	bra loc_8c119088
	shll2 r5

loc_8c119096:
	mov.l @(0xC4,PC),r0
	bra loc_8c1190ac
	nop 

loc_8c11909c:
	mov 0xE4,r3
	mov r5,r7
	shld r3,r7
	mov.b @(r0,r7),r3
	shll2 r5
	shll2 r5
	mov.b r3,@r4
	add 0x01,r4

loc_8c1190ac:
	tst r6,r6
	bf.s loc_8c11909c
	add 0xFF,r6
	mov r15,r3
	mov.l @(0x80,PC),r2
	mov 0x00,r1
	mov.b r1,@r4
	mov.l r3,@-r15
	mov.l @(0xA0,PC),r3
	mov.l r2,@-r15
	jsr @r3
	mov r14,r4
	add 0x08,r15

loc_8c1190c6:
	add r0,r14
	mov r14,r0
	nop 
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1190d4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x54,PC),r3
	mov r4,r14
	mov.l @(0x54,PC),r2
	mov.l r5,@(0x4,r15)
	mov.l r6,@r15
	mov.l r3,@-r15
	mov.l @(0x74,PC),r13
	mov.l r2,@-r15
	jsr @r13
	mov r14,r4
	mov.l @(0xC,r15),r3
	add r0,r14
	mov.l @(0x74,PC),r2
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r13
	mov r14,r4
	mov.l @(0x10,r15),r5
	add r0,r14
	bsr loc_8c119068
	mov r14,r4
	mov.l @(0x40,PC),r2
	mov r0,r14
	mov.l @(0x2C,PC),r3
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r13
	mov r14,r4
	add r0,r14
	mov r14,r0
	nop 
	add 0x20,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C119124:
	#data 0x8C26823c
loc_8C119128:
	#data bank13.loc_8c13edB8
loc_8C11912c:
	#data 0x8C28977a
loc_8C119130:
	#data bank13.loc_8c13edC4
loc_8C119134:
	#data bank16.loc_8c16AD98
loc_8C119138:
	#data bank13.loc_8c13ecC8
loc_8C11913C:
	#data bank13.loc_8c13edCc
loc_8C119140:
	#data 0x8C2A9F54
loc_8C119144:
	#data 0x8C2A9F50
loc_8C119148:
	#data bank16.loc_8c16ADB4
loc_8C11914c:
	#data 0x00989680
loc_8C119150:
	#data 0x05F5E0Ff
loc_8C119154:
	#data bank12.loc_8c1291Dc
loc_8C119158:
	#data bank12.loc_8c12939c
loc_8C11915C:
	#data bank16.loc_8c16ACD0
loc_8C119160:
	#data bank12.loc_8c129740
loc_8C119164:
	#data bank13.loc_8c13ee64
loc_8C119168:
	#data 0xF0000000
loc_8C11916C:
	#data bank13.loc_8c13edE8

;==============================================
loc_8c119170:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r5,@(0x4,r15)
	mov r4,r14
	mov.l r6,@r15
	bsr loc_8c118fd6
	mov r6,r4
	mov.l @(0x130,PC),r3
	mov.l r0,@r15
	mov.l @(0x130,PC),r2
	mov.l r3,@-r15
	mov.l @(0x124,PC),r13
	mov.l r2,@-r15
	jsr @r13
	mov r14,r4
	mov.l @(0xC,r15),r3
	add r0,r14
	mov.l @(0x124,PC),r2
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r13
	mov r14,r4
	mov.l @(0x10,r15),r5
	add r0,r14
	bsr loc_8c119068
	mov r14,r4
	mov.l @(0x114,PC),r2
	mov r0,r14
	mov.l @(0x108,PC),r3
	mov.l r2,@-r15
	mov.l r3,@-r15
	jsr @r13
	mov r14,r4
	add r0,r14
	mov r14,r0
	nop 
	add 0x20,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1191c6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r11
	add 0x04,r11
	mov r11,r13
	mov.l r5,@r15
	mov 0x00,r3
	mov.l @(0xE4,PC),r5
	add 0x03,r13
	mov r4,r14
	mov.b r3,@r13
	bra loc_8c1191f6
	mov r11,r4

loc_8c1191e8:
	mov.b @r6+,r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r5),r3
	mov.b @r3,r2
	mov.b r2,@r4
	add 0x01,r4

loc_8c1191f6:
	cmp/hs r13,r4
	bf loc_8c1191e8
	mov.l @(0xB8,PC),r2
	mov.l @(0xB8,PC),r12
	mov.l r2,@-r15
	mov.l @(0xAC,PC),r13
	mov.l r12,@-r15
	jsr @r13
	mov r14,r4
	mov.l @(0x8,r15),r3
	add r0,r14
	mov.l @(0xAC,PC),r2
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r13
	mov r14,r4
	mov.l r11,@-r15
	add r0,r14
	mov.l r12,@-r15
	jsr @r13
	mov r14,r4
	mov.l @(0x9C,PC),r3
	add r0,r14
	mov.l r3,@-r15
	mov.l r12,@-r15
	jsr @r13
	mov r14,r4
	add r0,r14
	mov r14,r0
	nop 
	add 0x28,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14


;==============================================
loc_8c119240:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xD4,r15
	mov r15,r1
	add 0x18,r1
	mov r4,r14
	mov r1,r10
	mov.l r5,@r15
	mov 0x14,r0
	mov r15,r4
	mov.w @(0x4C,PC),r5
	add 0x10,r10
	mov r15,r7
	mov 0x00,r13
	mov.b r13,@r10
	add 0x12,r4
	mov.b r13,@(r0,r15)
	bra loc_8c119282
	add 0x04,r7

loc_8c11926e:
	mov.b @r6,r0
	mov 0xFC,r2
	and 0x0F,r0
	mov.b r0,@(0x1,r4)
	mov.b @r6+,r3
	extu.b r3,r3
	and r5,r3
	shad r2,r3
	mov.b r3,@r4
	add 0xFE,r4

loc_8c119282:
	cmp/hs r7,r4
	bt loc_8c11926e
	mov.l @(0x40,pc),r6
	mov r15,r4
	mov r1,r7
	add 0x13,r4
	mov r10,r5
	bra loc_8c11929c
	add 0x01,r7

loc_8c119294:
	mov.b @r4,r0
	add 0xFF,r4
	mov.b @(r0,r6),r3
	mov.b r3,@-r5

loc_8c11929c:
	cmp/hs r7,r5
	bt loc_8c119294
	mov r1,r4
	mov r1,r7
	mov r13,r11
	mov r13,r12
	bra loc_8c1192ea
	mov r1,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1192ac:
	#data 0x00f0
	#align4

loc_8C1192B0:
	#data bank12.loc_8c129740
loc_8C1192B4:
	#data bank16.loc_8c16AD98
loc_8C1192B8:
	#data bank13.loc_8c13ecC8
loc_8C1192BC:
	#data bank13.loc_8c13edE8
loc_8C1192C0:
	#data bank16.loc_8c16ADB4
loc_8C1192C4:
	#data bank16.loc_8c16ACE0
loc_8C1192C8:
	#data bank16.loc_8c16ACD0

;===========================================
loc_8c1192cc:
	tst r12,r12
	bf loc_8c1192de
	mov.b @r4,r0
	cmp/eq 0x30,r0
	bt loc_8c1192e4
	mov.b @r5,r2
	mov 0x01,r12
	bra loc_8c1192e2
	mov.b r2,@r6

loc_8c1192de:
	mov.b @r7,r1
	mov.b r1,@r6

loc_8c1192e2:
	add 0x01,r11

loc_8c1192e4:
	add 0x01,r4
	add 0x01,r5
	add 0x01,r7

loc_8c1192ea:
	mov r15,r6
	cmp/hs r10,r4
	add 0x04,r6
	bf.s loc_8c1192cc
	add r11,r6
	mov.l @(0x204,PC),r2
	mov.l @(0x1FC,PC),r11
	mov.l @(0x1FC,PC),r12
	mov.b r13,@r6
	mov.l r2,@-r15
	mov.l r11,@-r15
	jsr @r12
	mov r14,r4
	mov.l @(0x8,r15),r3
	add r0,r14
	mov.l @(0x1F4,PC),r2
	mov.l r3,@-r15
	mov.l r2,@-r15
	jsr @r12
	mov r14,r4
	mov r15,r3
	add 0x14,r3
	mov.l r3,@-r15
	add r0,r14
	mov.l r11,@-r15
	jsr @r12
	mov r14,r4
	mov.l @(0x1E0,PC),r2
	add r0,r14
	mov.l r2,@-r15
	mov.l r11,@-r15
	jsr @r12
	mov r14,r4
	add r0,r14
	mov r14,r0
	nop 
	add 0x4C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C119342:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x1B0,PC),r14
	mov 0x24,r0
	mov 0x04,r9
	mov.w r4,@r15
	mov.b @(r0,r14),r0
	mov 0x01,r12
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf.s loc_8c11938e
	mov 0x00,r13
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bt.s loc_8c119384
	mov r0,r4
	mov.l @(0x34,r14),r3
	mov 0x01,r1
	mov.l @(0x1C,r14),r0
	mov 0x01,r2
	shad r3,r1
	shad r3,r2
	and r0,r1
	and r4,r2
	cmp/eq r1,r2
	bt loc_8c11938e

loc_8C119384:
	mov 0x24,r0
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	mov 0x25,r0
	mov.b r13,@(r0,r14)

loc_8C11938E:
	mov 0x24,r0
	mov.b @(r0,r14),r0
	mov 0x03,r10
	mov 0x05,r11
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c1193d2
	mov.l @(0x34,r14),r8
	cmp/eq 0x01,r0
	bt loc_8c119428
	cmp/eq 0x02,r0
	bt loc_8c119438
	cmp/eq 0x03,r0
	bf loc_8c1193ae
	bra loc_8c1194b2
	nop 

loc_8C1193AE:
	cmp/eq 0x04,r0
	bf loc_8c1193b6
	bra loc_8c119552
	nop 

loc_8C1193B6:
	cmp/eq 0x05,r0
	bf loc_8c1193be
	bra loc_8c1195a6
	nop 

loc_8C1193BE:
	cmp/eq 0x06,r0
	bf loc_8c1193c6
	bra loc_8c1196a8
	nop 

loc_8C1193C6:
	cmp/eq 0x07,r0
	bf loc_8c1193ce
	bra loc_8c1196c8
	nop 

loc_8C1193CE:
	bra loc_8c1196d6
	nop 

loc_8C1193D2:
	mov.l @(0x138,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bt loc_8c1193e0
	bra loc_8c1196d6
	nop 

loc_8C1193E0:
	mov 0x24,r0
	mov 0xFF,r2
	mov.l r2,@(0x1C,r14)
	mov.l r2,@(0x18,r14)
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x26,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov.w r13,@r2
	mov r14,r2
	mov.l @(0x118,PC),r4
	mov 0x7E,r0
	add 0x59,r2
	mov 0x07,r3
	mov.b r3,@r2
	mov.b r13,@(r0,r14)
	mov r13,r0
	nop 
	mov.w r0,@(0xA,r4)
	mov.w r0,@(0xC,r4)
	mov 0x10,r0
	mov.l @(0x104,PC),r6
	mov.b r13,@(r0,r4)
	mov r6,r5
	mov r6,r4
	bra loc_8c119420
	add 0x0E,r5

loc_8C11941C:
	mov.b r13,@r4
	add 0x01,r4

loc_8C119420:
	cmp/hs r5,r4
	bf loc_8c11941c
	bra loc_8c1196d6
	nop 

loc_8C119428:
	mov 0x24,r0
	mov.l @(0xF0,PC),r3
	mov.b @(r0,r14),r2
	add 0x01,r2
	jsr @r3
	mov.b r2,@(r0,r14)
	bra loc_8c1196d6
	nop 

loc_8C119438:
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c119442
	bra loc_8c1196d6
	nop 

loc_8C119442:
	mov 0x25,r0
	mov.b r13,@(r0,r14)
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c119496
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c119496
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c11946c
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov.l @(0x34,r14),r4
	tst r0,r0
	bf loc_8c119472

loc_8C11946C:
	mov 0x24,r0
	bra loc_8c119544
	mov.b r11,@(r0,r14)

loc_8C119472:
	mov.l @(0xB8,PC),r2
	jsr @r2
	nop 
	mov.l @(0x34,r14),r3
	mov r12,r2
	mov r0,r4
	shad r3,r2
	tst r2,r4
	bf loc_8c1194ac
	mov.l @(0xA8,PC),r2
	jsr @r2
	nop 
	mov.l @(0x34,r14),r3
	mov r12,r2
	mov r0,r4
	shad r3,r2
	tst r2,r4
	bf loc_8c1194ee

loc_8C119496:
	mov 0x24,r0
	mov r14,r3
	mov.b r11,@(r0,r14)
	add 0x26,r3
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r12,@(r0,r14)
	mov.w r12,@r3
	bra loc_8c119592
	mov.b r10,@r2

loc_8C1194AC:
	mov 0x24,r0
	bra loc_8c1196d6
	mov.b r10,@(r0,r14)

loc_8C1194B2:
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1194c4
	cmp/eq 0x01,r0
	bt loc_8c1194e4
	bra loc_8c1196d6
	nop 

loc_8C1194C4:
	mov.l @(0x6C,PC),r3
	mov r8,r5
	jsr @r3
	mov 0x04,r4
	cmp/eq 0xFF,r0
	bf.s loc_8c1194d6
	mov r0,r4
	bra loc_8c1196d6
	nop 

loc_8C1194D6:
	tst r4,r4
	bf loc_8c11957c
	mov 0x25,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	bra loc_8c1196d6
	mov.b r2,@(r0,r14)

loc_8C1194E4:
	mov.l @(0x50,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11953c


loc_8C1194EE:
	mov 0x24,r0
	bra loc_8c1196d6
	mov.b r9,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1194F4:
	#data bank13.loc_8c13ecC8
loc_8C1194F8:
	#data bank12.loc_8c129740
loc_8C1194FC:
	#data bank16.loc_8c16AD98
loc_8C119500:
	#data bank13.loc_8c13edE8
loc_8C119504:
	#data bank16.loc_8c16ADB4
loc_8C119508:
	#data 0x8C289750
loc_8C11950C:
	#data bank03.loc_8c03563a
loc_8C119510:
	#data bank04.loc_8c044D8c
loc_8C119514:
	#data 0x8C212C3c
loc_8C119518:
	#data 0x8C21385c
loc_8C11951C:
	#data bank02.loc_8c020064
loc_8C119520:
	#data loc_8c115BF0
loc_8C119524:
	#data loc_8c115C40
loc_8C119528:
	#data loc_8c1161Ac
loc_8C11952C:
	#data loc_8c115E2c
loc_8C119530:
	#data loc_8c116024
loc_8C119534:
	#data loc_8c117A88
loc_8C119538:
	#data loc_8c116290

;==============================================
loc_8C11953C:
	mov 0x24,r0
	mov.b r11,@(r0,r14)
	mov 0x25,r0
	mov.b r13,@(r0,r14)

loc_8C119544:
	mov r14,r3
	mov r14,r2
	add 0x26,r3
	add 0x59,r2
	mov.w r12,@r3
	bra loc_8c119592
	mov.b r9,@r2

loc_8C119552:
	mov.l @(0xF4,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r8,r4
	cmp/eq 0x02,r0
	bf.s loc_8c119564
	mov r0,r4
	bra loc_8c1196d6
	nop 

loc_8C119564:
	mov r4,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c11957c
	mov 0x24,r0
	mov 0x06,r3
	mov.b r3,@(r0,r14)
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov.l @(0x34,r14),r4
	bra loc_8c1196d6
	nop 

loc_8C11957C:
	mov r14,r3
	add 0x26,r3
	mov 0x24,r0
	mov r14,r2
	mov.b r11,@(r0,r14)
	add 0x59,r2
	mov 0x25,r0
	mov.b r12,@(r0,r14)
	mov.w r12,@r3
	mov 0x02,r3
	mov.b r3,@r2

loc_8C119592:
	mov.l @(0xBC,PC),r2
	jsr @r2
	nop 
	mov.l @(0xBC,PC),r3
	mov 0x00,r6
	mov.l @(0xB4,PC),r4
	jsr @r3
	mov 0x01,r5
	bra loc_8c1196d6
	nop 

loc_8C1195A6:
	mov 0x25,r0
	mov r14,r8
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c1195cc
	add 0x5A,r8
	cmp/eq 0x01,r0
	bt loc_8c1195ea
	cmp/eq 0x02,r0
	bt loc_8c119610
	cmp/eq 0x03,r0
	bt loc_8c11967e
	cmp/eq 0x04,r0
	bt loc_8c119690
	cmp/eq 0x05,r0
	bt loc_8c11969a
	bra loc_8c1196d6
	nop 

loc_8C1195CC:
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c1195da
	bra loc_8c1196d6
	nop 

loc_8C1195DA:
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	bra loc_8c119606
	mov.b r10,@r2

loc_8C1195EA:
	mov.l @(0x70,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bt loc_8c1196d6
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x5A,r0
	mov.b r11,@r2
	mov.b r12,@(r0,r14)

loc_8C119606:
	mov.l @(0x48,PC),r3
	jsr @r3
	nop 
	bra loc_8c1196d6
	nop 

loc_8C119610:
	mov.b @r8,r5
	mov 0x01,r6
	mov.w @r15,r4
	mov.l @(0x48,PC),r3
	extu.b r5,r5
	jsr @r3
	extu.w r4,r4
	mov.l @(0x44,PC),r2
	jsr @r2
	mov.b r0,@r8
	tst r0,r0
	bt loc_8c119668
	mov 0x5A,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c119636
	mov 0x25,r0
	bra loc_8c11963a
	mov.b r9,@(r0,r14)

loc_8C119636:
	mov 0x25,r0
	mov.b r10,@(r0,r14)

loc_8C11963A:
	mov 0x5A,r0
	mov.b @(r0,r14),r0
	mov 0x5A,r1
	add r14,r1
	or 0x80,r0
	bra loc_8c1196d6
	mov.b r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C119648:
	#data loc_8c118686
loc_8C11964C:
	#data loc_8c116166
loc_8C119650:
	#data bank02.loc_8c020378
loc_8C119654:
	#data 0xFF000000
loc_8C119658:
	#data bank03.loc_8c0355B2
loc_8C11965C:
	#data bank01.loc_8c011D0c
loc_8C119660:
	#data bank01.loc_8c0134D6
loc_8C119664:
	#data bank01.loc_8c011A9a

;==============================================
loc_8C119668:
	mov.l @(0x84,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bt loc_8c1196d6
	mov 0x25,r0
	mov.w @(0x74,PC),r3
	mov.b r10,@(r0,r14)
	mov 0x5A,r0
	bra loc_8c1196d6
	mov.b r3,@(r0,r14)

loc_8C11967E:
	mov.b @r8,r1
	tst r1,r1
	bf loc_8c1196d6
	mov 0x24,r0
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	mov 0x25,r0
	bra loc_8c1196d6
	mov.b r13,@(r0,r14)

loc_8C119690:
	mov.b @r8,r2
	tst r2,r2
	bf loc_8c1196d6
	bra loc_8c1196b4
	mov 0x25,r0

loc_8C11969A:
	mov.l @(0x58,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c1196d6
	bra loc_8c1196d8
	mov 0x00,r0

loc_8C1196A8:
	mov r14,r3
	add 0x26,r3
	mov.w @r3,r2
	tst r2,r2
	bt loc_8c1196d2
	mov 0x24,r0

loc_8C1196B4:
	mov.b @(r0,r14),r3
	mov 0x01,r6
	mov.l @(0x3C,PC),r4
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov 0x0A,r5
	bra loc_8c1196d6
	nop 

loc_8C1196C8:
	mov.l @(0x28,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c1196d6

loc_8C1196D2:
	bra loc_8c1196d8
	mov 0x01,r0

loc_8C1196D6:
	mov 0x02,r0

loc_8C1196D8:
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
loc_8c1196ec:
	#data 0x00Ff
	#align4

loc_8C1196F0:
	#data bank01.loc_8c011BBc
loc_8C1196F4:
	#data bank03.loc_8c03563a
loc_8c1196f8:
	#data 0xFF000000
loc_8C1196FC:
	#data bank03.loc_8c0355B2

;==============================================
loc_8C119700:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x1F0,PC),r14
	mov 0x01,r13
	mov 0x04,r9
	mov r4,r0
	nop 
	mov.w r0,@(0x4,r15)
	mov 0x24,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf.s loc_8c119750
	mov 0x00,r11
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bt.s loc_8c119746
	mov r0,r4
	mov.l @(0x34,r14),r3
	mov 0x01,r1
	mov.l @(0x1C,r14),r0
	mov 0x01,r2
	shad r3,r1
	shad r3,r2
	and r0,r1
	and r4,r2
	cmp/eq r1,r2
	bt loc_8c119750

loc_8C119746:
	mov 0x24,r0
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	mov 0x25,r0
	mov.b r11,@(r0,r14)

loc_8C119750:
	mov.l @(0x34,r14),r0
	mov 0x03,r10
	mov.l @(0x1B0,PC),r8
	mov.l r0,@r15
	mov 0x24,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c119794
	mov 0x05,r12
	cmp/eq 0x01,r0
	bt loc_8c1197c4
	cmp/eq 0x02,r0
	bt loc_8c1197d4
	cmp/eq 0x03,r0
	bt loc_8c11983c
	cmp/eq 0x04,r0
	bf loc_8c119778
	bra loc_8c1198b0
	nop 

loc_8C119778:
	cmp/eq 0x05,r0
	bf loc_8c119780
	bra loc_8c119944
	nop 

loc_8C119780:
	cmp/eq 0x06,r0
	bf loc_8c119788
	bra loc_8c119a54
	nop 

loc_8C119788:
	cmp/eq 0x07,r0
	bf loc_8c119790
	bra loc_8c119a74
	nop 

loc_8C119790:
	bra loc_8c119a80
	nop 

loc_8C119794:
	jsr @r8
	nop 
	tst r0,r0
	bt loc_8c1197a0
	bra loc_8c119a80
	nop 

loc_8C1197A0:
	mov 0x24,r0
	mov 0xFF,r3
	mov.l r3,@(0x1C,r14)
	mov.l r3,@(0x18,r14)
	mov r14,r3
	mov.b @(r0,r14),r2
	add 0x26,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.l @(0x158,PC),r2
	jsr @r2
	mov.w r11,@r3
	mov r14,r3
	mov 0x07,r2
	add 0x59,r3
	mov.b r2,@r3
	bra loc_8c119a80
	nop 

loc_8C1197C4:
	mov 0x24,r0
	mov.l @(0x148,PC),r3
	mov.b @(r0,r14),r1
	add 0x01,r1
	jsr @r3
	mov.b r1,@(r0,r14)
	bra loc_8c119a80
	nop 

loc_8C1197D4:
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c1197de
	bra loc_8c119a80
	nop 

loc_8C1197DE:
	mov 0x25,r0
	mov.b r11,@(r0,r14)
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c1197f4
	mov.l @(0x128,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bf loc_8c11980a

loc_8C1197F4:
	mov 0x24,r0
	mov r14,r3
	mov.b r12,@(r0,r14)
	add 0x26,r3
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	bra loc_8c1198f0
	mov.b r10,@r2

loc_8C11980A:
	mov.l @(0x10C,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c119830
	mov.l @(0x104,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c119830
	mov.l @(0x100,PC),r3
	jsr @r3
	nop 
	mov.l @(0x34,r14),r3
	mov r13,r2
	mov r0,r4
	shad r3,r2
	tst r2,r4
	bf loc_8c119836

loc_8C119830:
	mov 0x24,r0
	bra loc_8c1198a2
	mov.b r12,@(r0,r14)

loc_8C119836:
	mov 0x24,r0
	bra loc_8c119a80
	mov.b r10,@(r0,r14)

loc_8C11983C:
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c11984e
	cmp/eq 0x01,r0
	bt loc_8c119884
	bra loc_8c119a80
	nop 

loc_8C11984E:
	mov.l @(0xD4,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov 0x04,r4
	cmp/eq 0xFF,r0
	bf.s loc_8c119860
	mov r0,r4
	bra loc_8c119a80
	nop 

loc_8C119860:
	tst r4,r4
	bf loc_8c11986e
	mov 0x25,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	bra loc_8c119a80
	mov.b r2,@(r0,r14)

loc_8C11986E:
	mov 0x24,r0
	mov r14,r3
	mov.b r12,@(r0,r14)
	add 0x26,r3
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	bra loc_8c1198f0
	mov.b r13,@r2

loc_8C119884:
	mov.l @(0xA0,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c11989a
	mov.l @(0x9C,PC),r3
	mov 0x24,r0
	jsr @r3
	mov.b r9,@(r0,r14)
	bra loc_8c119a80
	nop 

loc_8C11989A:
	mov 0x24,r0
	mov.b r12,@(r0,r14)
	mov 0x25,r0
	mov.b r11,@(r0,r14)

loc_8C1198A2:
	mov r14,r3
	mov r14,r2
	add 0x26,r3
	add 0x59,r2
	mov.w r13,@r3
	bra loc_8c1198f0
	mov.b r9,@r2

loc_8C1198B0:
	mov.l @(0x7C,PC),r3
	mov 0x01,r5
	jsr @r3
	mov.l @r15,r4
	cmp/eq 0x02,r0
	bf.s loc_8c1198c2
	mov r0,r4
	bra loc_8c119a80
	nop 

loc_8C1198C2:
	mov r4,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c1198da
	mov.l @(0x68,PC),r3
	mov 0x24,r0
	mov 0x06,r2
	mov.b r2,@(r0,r14)
	jsr @r3
	mov.l @(0x34,r14),r4
	bra loc_8c119a80
	nop 

loc_8C1198DA:
	mov r14,r3
	add 0x26,r3
	mov 0x24,r0
	mov r14,r2
	mov.b r12,@(r0,r14)
	add 0x59,r2
	mov 0x25,r0
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	mov 0x02,r3
	mov.b r3,@r2

loc_8C1198F0:
	mov.l @(0x44,PC),r2
	jsr @r2
	nop 
	mov.l @(0x48,PC),r3
	mov 0x00,r6
	mov.l @(0x40,PC),r4
	jsr @r3
	mov 0x01,r5
	bra loc_8c119a80
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C119904:
	#data 0x8C289750
loc_8C119908:
	#data bank03.loc_8c03563a
loc_8C11990C:
	#data bank04.loc_8c044D8c
loc_8C119910:
	#data bank02.loc_8c020064
loc_8C119914:
	#data loc_8c115BF0
loc_8C119918:
	#data loc_8c115C40
loc_8C11991C:
	#data loc_8c1161Ac
loc_8C119920:
	#data loc_8c115E2c
loc_8C119924:
	#data loc_8c117A88
loc_8C119928:
	#data loc_8c116290
loc_8C11992C:
	#data loc_8c116250
loc_8C119930:
	#data loc_8c118686
loc_8C119934:
	#data loc_8c116166
loc_8C119938:
	#data bank02.loc_8c020378
loc_8C11993c:
	#data 0xFF000000
loc_8C119940:
	#data bank03.loc_8c0355B2

;==============================================
loc_8C119944:
	mov r14,r0
	nop 
	add 0x5A,r0
	mov.l r0,@r15
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c11996e
	cmp/eq 0x01,r0
	bt loc_8c11998c
	cmp/eq 0x02,r0
	bt loc_8c1199b2
	cmp/eq 0x03,r0
	bt loc_8c119a0a
	cmp/eq 0x04,r0
	bt loc_8c119a1e
	cmp/eq 0x05,r0
	bt loc_8c119a48
	bra loc_8c119a80
	nop 

loc_8C11996E:
	mov.l @(0xC4,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11997c
	bra loc_8c119a80
	nop 

loc_8C11997C:
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	bra loc_8c1199a8
	mov.b r10,@r2

loc_8C11998C:
	mov.l @(0xA4,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bt loc_8c119a80
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x5A,r0
	mov.b r12,@r2
	mov.b r13,@(r0,r14)

loc_8C1199A8:
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop 
	bra loc_8c119a80
	nop 

loc_8C1199B2:
	mov.l @r15,r3
	mov 0x01,r6
	mov.l r3,@-r15
	mov.l @(0x4,r15),r5
	mov.w @(0x8,r15),r0
	mov.b @r5,r5
	mov.l @(0x7C,PC),r3
	mov r0,r4
	extu.b r5,r5
	jsr @r3
	extu.w r4,r4
	mov.l @(0x74,PC),r3
	mov.l @r15+,r2
	jsr @r3
	mov.b r0,@r2
	tst r0,r0
	bt loc_8c1199f4
	mov 0x5A,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c1199e2
	mov 0x25,r0
	bra loc_8c1199e6
	mov.b r9,@(r0,r14)

loc_8C1199E2:
	mov 0x25,r0
	mov.b r10,@(r0,r14)

loc_8C1199E6:
	mov 0x5A,r0
	mov.b @(r0,r14),r0
	mov 0x5A,r1
	add r14,r1
	or 0x80,r0
	bra loc_8c119a80
	mov.b r0,@r1

loc_8C1199F4:
	mov.l @(0x4C,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bt loc_8c119a80
	mov 0x25,r0
	mov.w @(0x2C,PC),r3
	mov.b r10,@(r0,r14)
	mov 0x5A,r0
	bra loc_8c119a80
	mov.b r3,@(r0,r14)

loc_8C119A0A:
	mov.l @r15,r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c119a80
	mov 0x24,r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x25,r0
	bra loc_8c119a80
	mov.b r11,@(r0,r14)

loc_8C119A1E:
	mov.l @r15,r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c119a80
	mov 0x25,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	bra loc_8c119a66
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C119A30:
	#data 0x00Ff
	#align4

loc_8C119A34:
	#data bank01.loc_8c011D0c
loc_8C119A38:
	#data bank02.loc_8c020378
loc_8C119A3C:
	#data bank01.loc_8c0134D6
loc_8C119A40:
	#data bank01.loc_8c011A9a
loc_8C119A44:
	#data bank01.loc_8c011BBc

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C119A48:
	jsr @r8
	nop 
	tst r0,r0
	bf loc_8c119a80
	bra loc_8c119a82
	mov 0x00,r0

loc_8C119A54:
	mov r14,r2
	add 0x26,r2
	mov.w @r2,r3
	tst r3,r3
	bt loc_8c119a7c
	mov 0x24,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_8C119A66:
	mov.l @(0x208,PC),r3
	mov 0x01,r6
	mov.l @(0x200,PC),r4
	jsr @r3
	mov 0x0A,r5
	bra loc_8c119a80
	nop 

loc_8C119A74:
	jsr @r8
	nop 
	tst r0,r0
	bf loc_8c119a80

loc_8C119A7C:
	bra loc_8c119a82
	mov 0x01,r0

loc_8C119A80:
	mov 0x02,r0

loc_8C119A82:
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
loc_8c119a96:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C119C74,pc),r14
	mov 0x01,r13
	mov 0x04,r9
	mov r4,r0
	nop
	mov.w r0,@(0x04,r15)
	mov 0x24,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf/s loc_8c119ae6
	mov 0x00,r11
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bt/s loc_8c119adc
	mov r0,r4
	mov.l @(0x34,r14),r3
	mov 0x01,r1
	mov.l @(0x1C,r14),r0
	mov 0x01,r2
	shad r3, r1
	shad r3, r2
	and r0,r1
	and r4,r2
	cmp/eq r1,r2
	bt loc_8c119ae6

loc_8c119adc:
	mov 0x24,r0
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	mov 0x25,r0
	mov.b r11,@(r0,r14)

loc_8c119ae6:
	mov.l @(0x34,r14),r0
	mov 0x03,r10
	mov.l @(loc_8c119c78,pc),r8
	mov.l r0,@r15
	mov 0x24,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8c119b2a
	mov 0x05,r12
	cmp/eq 0x01,r0
	bt loc_8c119b5a
	cmp/eq 0x02,r0
	bt loc_8c119b6a
	cmp/eq 0x03,r0
	bt loc_8c119bd2
	cmp/eq 0x04,r0
	bf loc_8c119b0e
	bra loc_8c119c40
	nop

loc_8c119b0e:
	cmp/eq 0x05,r0
	bf loc_8c119b16
	bra loc_8c119cce
	nop

loc_8c119b16:
	cmp/eq 0x06,r0
	bf loc_8c119b1e
	bra loc_8c119de6
	nop

loc_8c119b1e:
	cmp/eq 0x07,r0
	bf loc_8c119b26
	bra loc_8c119e06
	nop
	
loc_8c119b26:
	bra loc_8c119e12
	nop

loc_8c119b2a:
	jsr @r8
	nop
	tst r0,r0
	bt loc_8c119b36
	bra loc_8c119e12
	nop

loc_8c119b36:
	mov 0x24,r0
	mov 0xFF,r3
	mov.l r3,@(0x1C,r14)
	mov.l r3,@(0x18,r14)
	mov r14,r3
	mov.b @(r0,r14),r2
	add 0x26,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.l @(loc_8c119c7c,pc),r2
	jsr @r2
	mov.w r11,@r3
	mov r14,r3
	mov 0x07,r2
	add 0x59,r3
	mov.b r2,@r3
	bra loc_8c119e12
	nop

loc_8c119b5a:
	mov 0x24,r0
	mov.l @(loc_8c119c80,pc),r3
	mov.b @(r0,r14),r1
	add 0x01,r1
	jsr @r3
	mov.b r1,@(r0,r14)
	bra loc_8c119e12
	nop

loc_8c119b6a:
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c119b74
	bra loc_8c119e12
	nop

loc_8c119b74:
	mov 0x25,r0
	mov.b r11,@(r0,r14)
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c119b8a
	mov.l @(loc_8c119c84,pc),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bf loc_8c119ba0

loc_8c119b8a:
	mov 0x24,r0
	mov r14,r3
	mov.b r12,@(r0,r14)
	add 0x26,r3
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	bra loc_8c119cba
	mov.b r10,@r2

loc_8c119ba0:
	mov.l @(loc_8c119c88,pc),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c119bc6
	mov.l @(loc_8c119c8c,pc),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c119bc6
	mov.l @(loc_8c119c90,pc),r3
	jsr @r3
	nop
	mov.l @(0x34,r14),r3
	mov r13,r2
	mov r0,r4
	shad r3, r2
	tst r2,r4
	bf loc_8c119bcc

loc_8c119bc6:
	mov 0x24,r0
	bra loc_8c119c32
	mov.b r12,@(r0,r14)

loc_8c119bcc:
	mov 0x24,r0
	bra loc_8c119e12
	mov.b r10,@(r0,r14)

loc_8c119bd2:
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c119be4
	cmp/eq 0x01,r0
	bt loc_8c119c1a
	bra loc_8c119e12
	nop

loc_8c119be4:
	mov.l @(loc_8c119c94,pc),r3
	mov.l @r15,r5
	jsr @r3
	mov 0x04,r4
	cmp/eq 0xFF,r0
	bf/s loc_8c119bf6
	mov r0,r4
	bra loc_8c119e12
	nop

loc_8c119bf6:
	tst r4,r4
	bf loc_8c119c04
	mov 0x25,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	bra loc_8c119e12
	mov.b r2,@(r0,r14)

loc_8c119c04:
	mov 0x24,r0
	mov r14,r3
	mov.b r12,@(r0,r14)
	add 0x26,r3
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	bra loc_8c119cba
	mov.b r13,@r2

loc_8c119c1a:
	mov.l @(loc_8c119c98,pc),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c119c2a
	mov 0x24,r0
	bra loc_8c119e12
	mov.b r9,@(r0,r14)

loc_8c119c2a:
	mov 0x24,r0
	mov.b r12,@(r0,r14)
	mov 0x25,r0
	mov.b r11,@(r0,r14)

loc_8c119c32:
	mov r14,r3
	mov r14,r2
	add 0x26,r3
	add 0x59,r2
	mov.w r13,@r3
	bra loc_8c119cba
	mov.b r9,@r2

loc_8c119c40:
	mov.l @(loc_8c119c9c,pc),r3
	mov 0x01,r5
	jsr @r3
	mov.l @r15,r4
	cmp/eq 0x02,r0
	bf/s loc_8c119c52
	mov r0,r4
	bra loc_8c119e12
	nop

loc_8c119c52:
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c119ca4
	mov.l @(loc_8c119ca0,pc),r3
	mov 0x24,r0
	mov 0x06,r2
	mov.b r2,@(r0,r14)
	jsr @r3
	mov.l @(0x34,r14),r4
	bra loc_8c119e12
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c119c6c:
	#data 0xFF000000
loc_8c119c70:
	#data bank03.loc_8C0355B2
loc_8C119C74:
	#data 0x8C289750
loc_8c119c78:
	#data bank03.loc_8c03563a
loc_8c119c7c:
	#data bank04.loc_8c044d8c
loc_8c119c80:
	#data bank02.loc_8c020064
loc_8c119c84:
	#data loc_8c115bf0
loc_8c119c88:
	#data loc_8c115c40
loc_8c119c8c:
	#data loc_8c1161ac
loc_8c119c90:
	#data loc_8c115e2c
loc_8c119c94:
	#data loc_8c117a88
loc_8c119c98:
	#data loc_8c116290
loc_8c119c9c:
	#data loc_8c118686
loc_8c119ca0:
	#data loc_8c116166

;==============================================
loc_8c119ca4:
	mov r14,r3
	add 0x26,r3
	mov 0x24,r0
	mov r14,r2
	mov.b r12,@(r0,r14)
	add 0x59,r2
	mov 0x25,r0
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	mov 0x02,r3
	mov.b r3,@r2

loc_8c119cba:
	mov.l @(loc_8c119d98,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8c119da0,pc),r3
	mov 0x00,r6
	mov.l @(loc_8C119D9C,pc),r4
	jsr @r3
	mov 0x01,r5
	bra loc_8c119e12
	nop

loc_8c119cce:
	mov r14,r0
	nop
	add 0x5A,r0
	mov.l r0,@r15
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c119cf8
	cmp/eq 0x01,r0
	bt loc_8c119d16
	cmp/eq 0x02,r0
	bt loc_8c119d3c
	cmp/eq 0x03,r0
	bt loc_8c119db4
	cmp/eq 0x04,r0
	bt loc_8c119dc8
	cmp/eq 0x05,r0
	bt loc_8c119dda
	bra loc_8c119e12
	nop

loc_8c119cf8:
	mov.l @(loc_8c119da4,pc),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c119d06
	bra loc_8c119e12
	nop

loc_8c119d06:
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	bra loc_8c119d32
	mov.b r10,@r2

loc_8c119d16:
	mov.l @(loc_8c119da4,pc),r3
	jsr @r3
	nop
	tst r0,r0
	bt loc_8c119e12
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x5A,r0
	mov.b r12,@r2
	mov.b r13,@(r0,r14)

loc_8c119d32:
	mov.l @(loc_8c119d98,pc),r3
	jsr @r3
	nop
	bra loc_8c119e12
	nop

loc_8c119d3c:
	mov.l @r15,r3
	mov 0x01,r6
	mov.l r3,@-r15
	mov.l @(0x04,r15),r5
	mov.w @(0x08,r15),r0
	mov.b @r5,r5
	mov.l @(loc_8c119da8,pc),r3
	mov r0,r4
	extu.b r5,r5
	jsr @r3
	extu.w r4,r4
	mov.l @(loc_8c119dac,pc),r3
	mov.l @r15+,r2
	jsr @r3
	mov.b r0,@r2
	tst r0,r0
	bt loc_8c119d7e
	mov 0x5A,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c119d6c
	mov 0x25,r0
	bra loc_8c119d70
	mov.b r9,@(r0,r14)

loc_8c119d6c:
	mov 0x25,r0
	mov.b r10,@(r0,r14)

loc_8c119d70:
	mov 0x5A,r0
	mov.b @(r0,r14),r0
	mov 0x5A,r1
	add r14,r1
	or 0x80,r0
	bra loc_8c119e12
	mov.b r0,@r1

loc_8c119d7e:
	mov.l @(loc_8c119db0,pc),r2
	jsr @r2
	nop
	tst r0,r0
	bt loc_8c119e12
	mov 0x25,r0
	mov.w @(loc_8C119D94,pc),r3
	mov.b r10,@(r0,r14)
	mov 0x5A,r0
	bra loc_8c119e12
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C119D94:
	#data 0x00FF
	#align4

loc_8c119d98:
	#data bank02.loc_8c020378
loc_8C119D9C:
	#data 0xFF000000
loc_8c119da0:
	#data bank03.loc_8c0355b2
loc_8c119da4:
	#data bank01.loc_8c011d0c
loc_8c119da8:
	#data bank01.loc_8c0134d6
loc_8c119dac:
	#data bank01.loc_8c011a9a
loc_8c119db0:
	#data bank01.loc_8c011bbc

;==============================================
loc_8c119db4:
	mov.l @r15,r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c119e12
	mov 0x24,r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x25,r0
	bra loc_8c119e12
	mov.b r11,@(r0,r14)

loc_8c119dc8:
	mov.l @r15,r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c119e12
	mov 0x25,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	bra loc_8c119df8
	mov.b r3,@(r0,r14)

loc_8c119dda:
	jsr @r8
	nop
	tst r0,r0
	bf loc_8c119e12
	bra loc_8c119e14
	mov 0x00,r0

loc_8c119de6:
	mov r14,r2
	add 0x26,r2
	mov.w @r2,r3
	tst r3,r3
	bt loc_8c119e0e
	mov 0x24,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c119df8:
	mov.l @(loc_8c119fd0,pc),r3
	mov 0x01,r6
	mov.l @(loc_8C119FCC,pc),r4
	jsr @r3
	mov 0x0A,r5
	bra loc_8c119e12
	nop

loc_8c119e06:
	jsr @r8
	nop
	tst r0,r0
	bf loc_8c119e12

loc_8c119e0e:
	bra loc_8c119e14
	mov 0x01,r0

loc_8c119e12:
	mov 0x02,r0

loc_8c119e14:
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
loc_8c119e28:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x198,PC),r14
	mov 0x01,r13
	mov 0x04,r9
	mov r4,r0
	nop 
	mov.w r0,@(0x4,r15)
	mov 0x24,r0
	mov.b @(r0,r14),r0
	mov 0x02,r8
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf.s loc_8c119e78
	mov 0x00,r11
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bt.s loc_8c119e70
	mov r0,r4
	mov.l @(0x34,r14),r3
	mov 0x01,r1
	mov.l @(0x1C,r14),r0
	mov 0x01,r2
	shad r3,r1
	shad r3,r2
	and r0,r1
	and r4,r2
	cmp/eq r1,r2
	bt loc_8c119e78               ; loc_8c119e28+0x50

loc_8c119e70:
	mov 0x24,r0
	mov.b r8,@(r0,r14)
	mov 0x25,r0
	mov.b r11,@(r0,r14)

loc_8c119e78:
	mov.l @(0x34,r14),r0
	mov 0x03,r10
	mov.l r0,@r15
	mov 0x24,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c119eba
	mov 0x05,r12
	cmp/eq 0x01,r0
	bt loc_8c119f0c
	cmp/eq 0x02,r0
	bt loc_8c119f1c
	cmp/eq 0x03,r0
	bt loc_8c119f84
	cmp/eq 0x04,r0
	bf loc_8c119e9e
	bra loc_8c11a02a
	nop 

loc_8c119e9e:
	cmp/eq 0x05,r0
	bf loc_8c119ea6
	bra loc_8c11a07c
	nop 

loc_8c119ea6:
	cmp/eq 0x06,r0
	bf loc_8c119eae
	bra loc_8c11a1a0
	nop 

loc_8c119eae:
	cmp/eq 0x07,r0
	bf loc_8c119eb6
	bra loc_8c11a1c0
	nop 

loc_8c119eb6:
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c119eba:
	mov.l @(0x11C,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bt loc_8c119ec8
	bra loc_8c11a1ce
	nop 

loc_8c119ec8:
	mov 0x24,r0
	mov 0xFF,r2
	mov.l r2,@(0x1C,r14)
	mov.l r2,@(0x18,r14)
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x26,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(0x100,PC),r3
	jsr @r3
	mov.w r11,@r2
	mov r14,r2
	mov 0x07,r3
	add 0x59,r2
	mov 0x48,r0
	mov.b r3,@r2
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c119ef6
	mov.l @(0xEC,PC),r2
	jsr @r2
	nop 

loc_8c119ef6:
	mov 0x4C,r0
	mov.l @(r0,r14),r1
	tst r1,r1
	bf loc_8c119f02
	bra loc_8c11a1ce
	nop 

loc_8c119f02:
	mov.l @(0xE0,PC),r2
	jsr @r2
	nop 
	bra loc_8c11a1ce
	nop 

loc_8c119f0c:
	mov 0x24,r0
	mov.l @(0xD8,PC),r3
	mov.b @(r0,r14),r2
	add 0x01,r2
	jsr @r3
	mov.b r2,@(r0,r14)
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c119f1c:
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c119f26
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c119f26:
	mov 0x25,r0
	mov.b r11,@(r0,r14)
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c119f3c
	mov.l @(0xB8,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bf loc_8c119f52

loc_8c119f3c:
	mov 0x24,r0
	mov r14,r3
	mov.b r12,@(r0,r14)
	add 0x26,r3
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	bra loc_8c11a068
	mov.b r10,@r2

loc_8c119f52:
	mov.l @(0x9C,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c119f78
	mov.l @(0x94,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c119f78
	mov.l @(0x90,PC),r3
	jsr @r3
	nop 
	mov.l @(0x34,r14),r3
	mov r13,r2
	mov r0,r4
	shad r3,r2
	tst r2,r4
	bf loc_8c119f7e

loc_8c119f78:
	mov 0x24,r0
	bra loc_8c11a01c
	mov.b r12,@(r0,r14)

loc_8c119f7e:
	mov 0x24,r0
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	mov.b r10,@(r0,r14)

loc_8c119f84:
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c119f96
	cmp/eq 0x01,r0
	bt loc_8c11a000
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c119f96:
	mov.l @(0x64,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov 0x04,r4
	cmp/eq 0xFF,r0
	bf.s loc_8c119fa8
	mov r0,r4
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c119fa8:
	tst r4,r4
	bf loc_8c119fb6
	mov 0x25,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	mov.b r2,@(r0,r14)

loc_8c119fb6:
	mov 0x24,r0
	mov r14,r3
	mov.b r12,@(r0,r14)
	add 0x26,r3
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	bra loc_8c11a068
	mov.b r13,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C119FCC:
	#data 0xFF000000
loc_8c119fd0:
	#data bank03.loc_8c0355b2
loc_8c119fd4:
	#data 0x8C289750
loc_8c119fd8:
	#data bank03.loc_8C03563A
loc_8c119fdc:
	#data bank04.loc_8c044d8c
loc_8c119fe0:
	#data bank01.loc_8c0117a2
loc_8c119fe4:
	#data bank01.loc_8c011828
loc_8c119fe8:
	#data bank02.loc_8c020064
loc_8c119fec:
	#data loc_8c115bf0
loc_8c119ff0:
	#data loc_8c115c40
loc_8c119ff4:
	#data loc_8c1161ac
loc_8c119ff8:
	#data loc_8c115e2c
loc_8c119ffc:
	#data loc_8c117a88

;==============================================
loc_8c11a000:
	mov.l @(0x130,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c11a014
	mov 0x24,r0
	mov.b r9,@(r0,r14)
	mov 0x7E,r0
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	mov.b r11,@(r0,r14)

loc_8c11a014:
	mov 0x24,r0
	mov.b r12,@(r0,r14)
	mov 0x25,r0
	mov.b r11,@(r0,r14)

loc_8c11a01c:
	mov r14,r3
	mov r14,r2
	add 0x26,r3
	add 0x59,r2
	mov.w r13,@r3
	bra loc_8c11a068
	mov.b r9,@r2

loc_8c11a02a:
	mov.l @(0x10C,PC),r3
	mov 0x01,r5
	jsr @r3
	mov.l @r15,r4
	cmp/eq 0x02,r0
	bf.s loc_8c11a03c
	mov r0,r4
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c11a03c:
	mov r4,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c11a054
	mov.l @(0xF4,PC),r3
	mov 0x24,r0
	mov 0x06,r2
	mov.b r2,@(r0,r14)
	jsr @r3
	mov.l @(0x34,r14),r4
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c11a054:
	mov 0x24,r0
	mov r14,r3
	mov r14,r2
	mov.b r12,@(r0,r14)
	add 0x59,r2
	add 0x26,r3
	mov 0x25,r0
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	mov.b r8,@r2

loc_8c11a068:
	mov.l @(0xD4,PC),r3
	jsr @r3
	nop 
	mov.l @(0xD8,PC),r2
	mov 0x00,r6
	mov.l @(0xD0,PC),r4
	jsr @r2
	mov 0x01,r5
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c11a07c:
	mov r14,r0
	nop 
	add 0x5A,r0
	mov.l r0,@r15
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c11a0aa
	cmp/eq 0x01,r0
	bt loc_8c11a0c8
	cmp/eq 0x02,r0
	bt loc_8c11a0f2
	cmp/eq 0x03,r0
	bt loc_8c11a16e
	cmp/eq 0x04,r0
	bt loc_8c11a180
	cmp/eq 0x05,r0
	bf loc_8c11a0a6
	bra loc_8c11a192
	nop 

loc_8c11a0a6:
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c11a0aa:
	mov.l @(0xA0,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11a0b8
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c11a0b8:
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	bra loc_8c11a0e8
	mov.b r10,@r2

loc_8c11a0c8:
	mov.l @(0x80,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11a0d6
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c11a0d6:
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x5A,r0
	mov.b r12,@r2
	mov.b r13,@(r0,r14)

loc_8c11a0e8:
	mov.l @(0x54,PC),r3
	jsr @r3
	nop 
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c11a0f2:
	mov.l @r15,r3
	mov 0x01,r6
	mov.l r3,@-r15
	mov.l @(0x4,r15),r5
	mov.w @(0x8,r15),r0
	mov.b @r5,r5
	mov.l @(0x50,PC),r3
	mov r0,r4
	extu.b r5,r5
	jsr @r3
	extu.w r4,r4
	mov.l @(0x48,PC),r3
	mov.l @r15+,r2
	jsr @r3
	mov.b r0,@r2
	tst r0,r0
	bt loc_8c11a158
	mov 0x5A,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c11a122
	mov 0x25,r0
	bra loc_8c11a126
	mov.b r9,@(r0,r14)

loc_8c11a122:
	mov 0x25,r0
	mov.b r10,@(r0,r14)

loc_8c11a126:
	mov 0x5A,r0
	mov.b @(r0,r14),r0
	mov 0x5A,r1
	add r14,r1
	or 0x80,r0
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	mov.b r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c11a134:
	#data loc_8c116290
loc_8c11a138:
	#data loc_8c118686
loc_8c11a13c:
	#data loc_8c116166
loc_8c11a140:
	#data bank02.loc_8c020378
loc_8c11a144:
	#data 0xFF000000
loc_8c11a148:
	#data bank03.loc_8c0355b2
loc_8c11a14c:
	#data bank01.loc_8c011d0c
loc_8c11a150:
	#data bank01.loc_8c0134d6
loc_8c11a154:
	#data bank01.loc_8c011a9a

;==============================================
loc_8c11a158:
	mov.l @(0x8C,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bt loc_8c11a1ce               ; loc_8c119e28+0x3a6
	mov 0x25,r0
	mov.w @(0x7C,PC),r3
	mov.b r10,@(r0,r14)
	mov 0x5A,r0
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	mov.b r3,@(r0,r14)

loc_8c11a16e:
	mov.l @r15,r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c11a1ce               ; loc_8c119e28+0x3a6
	mov 0x24,r0
	mov.b r8,@(r0,r14)
	mov 0x25,r0
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	mov.b r11,@(r0,r14)

loc_8c11a180:
	mov.l @r15,r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c11a1ce               ; loc_8c119e28+0x3a6
	mov 0x25,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	bra loc_8c11a1b2
	mov.b r3,@(r0,r14)

loc_8c11a192:
	mov.l @(0x58,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c11a1ce               ; loc_8c119e28+0x3a6
	bra loc_8c11a1d0              ; loc_8c119e28+0x3a8
	mov 0x00,r0

loc_8c11a1a0:
	mov r14,r2
	add 0x26,r2
	mov.w @r2,r3
	tst r3,r3
	bt loc_8c11a1ca
	mov 0x24,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c11a1b2:
	mov.l @(0x40,PC),r3
	mov 0x01,r6
	mov.l @(0x38,PC),r4
	jsr @r3
	mov 0x0A,r5
	bra loc_8c11a1ce              ; loc_8c119e28+0x3a6
	nop 

loc_8c11a1c0:
	mov.l @(0x28,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11a1ce               ; loc_8c119e28+0x3a6

loc_8c11a1ca:
	bra loc_8c11a1d0              ; loc_8c119e28+0x3a8
	mov 0x01,r0

loc_8c11a1ce:
	mov 0x02,r0

loc_8c11a1d0:
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
loc_8c11a1e4:
	#data 0x00FF
	#align4

loc_8c11a1e8:
	#data bank01.loc_8C011BBC
loc_8c11a1ec:
	#data bank03.loc_8C03563A
loc_8c11a1f0:
	#data 0xFF000000
loc_8c11a1f4:
	#data bank03.loc_8C0355B2

;==============================================
loc_8c11a1f8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x208,PC),r14
	mov 0x04,r8
	mov r4,r0
	nop 
	mov.w r0,@(0x4,r15)
	mov 0x24,r0
	mov.b @(r0,r14),r0
	mov 0x02,r9
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf.s loc_8c11a246
	mov 0x00,r11
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bt.s loc_8c11a23e
	mov r0,r4
	mov.l @(0x34,r14),r3
	mov 0x01,r1
	mov.l @(0x1C,r14),r0
	mov 0x01,r2
	shad r3,r1
	shad r3,r2
	and r0,r1
	and r4,r2
	cmp/eq r1,r2
	bt loc_8c11a246               ; loc_8c11a1f8+0x4e

loc_8c11a23e:
	mov 0x24,r0
	mov.b r9,@(r0,r14)
	mov 0x25,r0
	mov.b r11,@(r0,r14)

loc_8c11a246:
	mov.l @(0x34,r14),r0
	mov 0x05,r12
	mov 0x03,r10
	mov.l r0,@r15
	mov 0x24,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c11a28a
	mov 0x01,r13
	cmp/eq 0x01,r0
	bt loc_8c11a2bc
	cmp/eq 0x02,r0
	bt loc_8c11a2cc
	cmp/eq 0x03,r0
	bt loc_8c11a34a
	cmp/eq 0x04,r0
	bf loc_8c11a26e
	bra loc_8c11a3bc
	nop 

loc_8c11a26e:
	cmp/eq 0x05,r0
	bf loc_8c11a276
	bra loc_8c11a450
	nop 

loc_8c11a276:
	cmp/eq 0x06,r0
	bf loc_8c11a27e
	bra loc_8c11a55e
	nop 

loc_8c11a27e:
	cmp/eq 0x07,r0
	bf loc_8c11a286
	bra loc_8c11a57e
	nop 

loc_8c11a286:
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a28a:
	mov.l @(0x18C,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bt loc_8c11a298
	bra loc_8c11a58c
	nop 

loc_8c11a298:
	mov 0x24,r0
	mov 0xFF,r2
	mov.l r2,@(0x1C,r14)
	mov.l r2,@(0x18,r14)
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x26,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(0x170,PC),r3
	jsr @r3
	mov.w r11,@r2
	mov r14,r2
	mov 0x07,r3
	add 0x59,r2
	mov.b r3,@r2
	bra loc_8c11a58c
	nop 

loc_8c11a2bc:
	mov 0x24,r0
	mov.l @(0x160,PC),r3
	mov.b @(r0,r14),r1
	add 0x01,r1
	jsr @r3
	mov.b r1,@(r0,r14)
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a2cc:
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c11a2d6
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a2d6:
	mov 0x25,r0
	mov.b r11,@(r0,r14)
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c11a2ec
	mov.l @(0x140,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bf loc_8c11a302

loc_8c11a2ec:
	mov 0x24,r0
	mov r14,r3
	mov.b r12,@(r0,r14)
	add 0x26,r3
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	bra loc_8c11a3fe
	mov.b r10,@r2

loc_8c11a302:
	mov.l @(0x124,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bf loc_8c11a312
	mov 0x24,r0
	bra loc_8c11a3ae
	mov.b r12,@(r0,r14)

loc_8c11a312:
	mov.l @(0x118,PC),r3
	jsr @r3
	mov.l @(0x34,r14),r4
	tst r0,r0
	bf loc_8c11a328
	mov r14,r3
	mov 0x24,r0
	add 0x26,r3
	mov.b r12,@(r0,r14)
	bra loc_8c11a3b4
	mov.w r9,@r3

loc_8c11a328:
	mov.l @(0x104,PC),r3
	jsr @r3
	nop 
	mov.l @(0x34,r14),r3
	mov r0,r4
	shad r3,r13
	tst r13,r4
	bf loc_8c11a344
	mov r14,r3
	mov 0x24,r0
	add 0x26,r3
	mov.b r12,@(r0,r14)
	bra loc_8c11a3b4
	mov.w r10,@r3

loc_8c11a344:
	mov 0x24,r0
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	mov.b r10,@(r0,r14)

loc_8c11a34a:
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c11a35c
	cmp/eq 0x01,r0
	bt loc_8c11a392
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a35c:
	mov.l @(0xD4,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov 0x04,r4
	cmp/eq 0xFF,r0
	bf.s loc_8c11a36e
	mov r0,r4
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a36e:
	tst r4,r4
	bf loc_8c11a37c
	mov 0x25,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	mov.b r2,@(r0,r14)

loc_8c11a37c:
	mov 0x24,r0
	mov r14,r3
	mov.b r12,@(r0,r14)
	add 0x26,r3
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	bra loc_8c11a3fe
	mov.b r13,@r2

loc_8c11a392:
	mov.l @(0xA4,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c11a3a6
	mov 0x24,r0
	mov.b r8,@(r0,r14)
	mov 0x7E,r0
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	mov.b r13,@(r0,r14)

loc_8c11a3a6:
	mov 0x24,r0
	mov.b r12,@(r0,r14)
	mov 0x25,r0
	mov.b r11,@(r0,r14)

loc_8c11a3ae:
	mov r14,r3
	add 0x26,r3
	mov.w r13,@r3

loc_8c11a3b4:
	mov r14,r2
	add 0x59,r2
	bra loc_8c11a3fe
	mov.b r8,@r2

loc_8c11a3bc:
	mov.l @(0x7C,PC),r3
	mov 0x01,r5
	jsr @r3
	mov.l @r15,r4
	cmp/eq 0x02,r0
	bf.s loc_8c11a3ce
	mov r0,r4
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a3ce:
	mov r4,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c11a3e6
	mov.l @(0x68,PC),r3
	mov 0x24,r0
	mov 0x06,r2
	mov.b r2,@(r0,r14)
	jsr @r3
	mov.l @(0x34,r14),r4
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a3e6:
	mov 0x7E,r0
	mov r14,r3
	mov.b r11,@(r0,r14)
	mov 0x24,r0
	mov r14,r2
	mov.b r12,@(r0,r14)
	add 0x59,r2
	add 0x26,r3
	mov 0x25,r0
	mov.b r13,@(r0,r14)
	mov.w r13,@r3
	mov.b r9,@r2


loc_8c11a3fe:
	mov.l @(0x44,PC),r3
	jsr @r3
	nop 
	mov.l @(0x44,PC),r2
	mov 0x00,r6
	mov.l @(0x3C,PC),r4
	jsr @r2
	mov 0x01,r5
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11a414:
	#data 0x8C289750
loc_8c11a418:
	#data bank03.loc_8C03563A
loc_8c11a41c:
	#data bank04.loc_8C044D8C
loc_8c11a420:
	#data bank02.loc_8C020064
loc_8c11a424:
	#data loc_8C115BF0

loc_8c11a428:
	#data loc_8C115C40
loc_8c11a42c:
	#data loc_8C1161AC
loc_8c11a430:
	#data loc_8C115E2C
loc_8c11a434:
	#data loc_8C117A88
loc_8c11a438:
	#data loc_8C116290
loc_8c11a43c:
	#data loc_8C118686
loc_8c11a440:
	#data loc_8C116166
loc_8c11a444:
	#data bank02.loc_8C020378
loc_8c11a448:
	#data 0xFF000000
loc_8c11a44c:
	#data bank03.loc_8C0355B2

loc_8c11a450:
	mov r14,r0
	nop 
	add 0x5A,r0
	mov.l r0,@r15
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c11a47a
	cmp/eq 0x01,r0
	bt loc_8c11a498
	cmp/eq 0x02,r0
	bt loc_8c11a4be
	cmp/eq 0x03,r0
	bt loc_8c11a516
	cmp/eq 0x04,r0
	bt loc_8c11a528
	cmp/eq 0x05,r0
	bt loc_8c11a550
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a47a:
	mov.l @(0xC0,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11a488
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a488:
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	bra loc_8c11a4b4
	mov.b r10,@r2
 
loc_8c11a498:
	mov.l @(0xA0,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bt loc_8c11a58c               ; loc_8c11a1f8+0x394
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x5A,r0
	mov.b r12,@r2
	mov.b r13,@(r0,r14)

loc_8c11a4b4:
	mov.l @(0x88,PC),r3
	jsr @r3
	nop 
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a4be:
	mov.l @r15,r3
	mov 0x01,r6
	mov.l r3,@-r15
	mov.l @(0x4,r15),r5
	mov.w @(0x8,r15),r0
	mov.b @r5,r5
	mov.l @(0x78,PC),r3
	mov r0,r4
	extu.b r5,r5
	jsr @r3
	extu.w r4,r4
	mov.l @(0x70,PC),r3
	mov.l @r15+,r2
	jsr @r3
	mov.b r0,@r2
	tst r0,r0
	bt loc_8c11a500
	mov 0x5A,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c11a4ee
	mov 0x25,r0
	bra loc_8c11a4f2
	mov.b r8,@(r0,r14)

loc_8c11a4ee:
	mov 0x25,r0
	mov.b r10,@(r0,r14)

loc_8c11a4f2:
	mov 0x5A,r0
	mov.b @(r0,r14),r0
	mov 0x5A,r1
	add r14,r1
	or 0x80,r0
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	mov.b r0,@r1

loc_8c11a500:
	mov.l @(0x48,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bt loc_8c11a58c               ; loc_8c11a1f8+0x394
	mov 0x25,r0
	mov.w @(0x2A,PC),r3
	mov.b r10,@(r0,r14)
	mov 0x5A,r0
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	mov.b r3,@(r0,r14)

loc_8c11a516:
	mov.l @r15,r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c11a58c               ; loc_8c11a1f8+0x394
	mov 0x24,r0
	mov.b r9,@(r0,r14)
	mov 0x25,r0
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	mov.b r11,@(r0,r14)

loc_8c11a528:
	mov.l @r15,r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c11a58c               ; loc_8c11a1f8+0x394
	mov 0x25,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	bra loc_8c11a570
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11a53a:
	#data 0x00FF
	#align4

loc_8c11a53c:
	#data bank01.loc_8c011d0c
loc_8c11a540:
	#data bank02.loc_8c020378
loc_8c11a544:
	#data bank01.loc_8c0134d6
loc_8c11a548:
	#data bank01.loc_8c011a9a
loc_8c11a54c:
	#data bank01.loc_8c011bbc

;==============================================
loc_8c11a550:
	mov.l @(0x210,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c11a58c               ; loc_8c11a1f8+0x394
	bra loc_8c11a58e              ; loc_8c11a1f8+0x396
	mov 0x00,r0

loc_8c11a55e:
	mov r14,r2
	add 0x26,r2
	mov.w @r2,r3
	tst r3,r3
	bt loc_8c11a588
	mov 0x24,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c11a570:
	mov.l @(0x1F8,PC),r3
	mov 0x01,r6
	mov.l @(0x1F0,PC),r4
	jsr @r3
	mov 0x0A,r5
	bra loc_8c11a58c              ; loc_8c11a1f8+0x394
	nop 

loc_8c11a57e:
	mov.l @(0x1E4,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11a58c               ; loc_8c11a1f8+0x394

loc_8c11a588:
	bra loc_8c11a58e              ; loc_8c11a1f8+0x396
	mov 0x01,r0

loc_8c11a58c:
	mov 0x02,r0

loc_8c11a58e:
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
loc_8c11a5a2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x1B8,PC),r14
	mov 0x24,r0
	mov.l @(0x1AC,PC),r8
	mov.l @(0x1B0,PC),r9
	mov.w r4,@r15
	mov 0x02,r4
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf.s loc_8c11a5ee
	mov 0x00,r10
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bt.s loc_8c11a5e6
	mov r0,r5
	mov.l @(0x34,r14),r3
	mov 0x01,r1
	mov.l @(0x1C,r14),r0
	mov 0x01,r2
	shad r3,r1
	shad r3,r2
	and r0,r1
	and r5,r2
	cmp/eq r1,r2
	bt loc_8c11a5ee               ; loc_8c11a5a2+0x4c

loc_8c11a5e6:
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov 0x25,r0
	mov.b r10,@(r0,r14)

loc_8c11a5ee:
	mov 0x24,r0
	mov.b @(r0,r14),r0
	mov 0x01,r12
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c11a61c
	mov 0x03,r13
	cmp/eq 0x01,r0
	bt loc_8c11a646
	cmp/eq 0x02,r0
	bt loc_8c11a656
	cmp/eq 0x03,r0
	bt loc_8c11a6f0
	cmp/eq 0x04,r0
	bf loc_8c11a610
	bra loc_8c11a816
	nop 

loc_8c11a610:
	cmp/eq 0x05,r0
	bf loc_8c11a618
	bra loc_8c11a834
	nop 

loc_8c11a618:
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	nop 

loc_8c11a61c:
	mov.l @(0x144,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bt loc_8c11a62a
	bra loc_8c11a842
	nop 

loc_8c11a62a:
	mov 0x24,r0
	mov 0xFF,r2
	mov.l r2,@(0x1C,r14)
	mov.l r2,@(0x18,r14)
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x26,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(0x134,PC),r3
	jsr @r3
	mov.w r10,@r2
	bra loc_8c11a842
	nop 

loc_8c11a646:
	mov 0x24,r0
	mov.l @(0x12C,PC),r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	jsr @r2
	mov.b r3,@(r0,r14)
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	nop 

loc_8c11a656:
	mov.l @(0x18,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c11a660
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	nop 

loc_8c11a660:
	mov 0x25,r0
	mov.b r10,@(r0,r14)
	mov 0x2B,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c11a676
	mov.l @(0x10C,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bf loc_8c11a69a

loc_8c11a676:
	mov r14,r3
	mov 0x24,r0
	add 0x26,r3
	mov.b r13,@(r0,r14)
	mov r14,r2
	mov 0x25,r0
	add 0x59,r2
	mov.b r12,@(r0,r14)
	mov.w r12,@r3
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov.b r13,@r2
	mov 0x01,r5
	mov 0x00,r6
	jsr @r9
	mov r8,r4
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	nop 

loc_8c11a69a:
	mov.l @(0xE8,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c11a6d2
	mov.l @(0xE0,PC),r2
	jsr @r2
	mov.l @(0x34,r14),r4
	tst r0,r0
	bt loc_8c11a6d2
	mov.l @(0xDC,PC),r3
	jsr @r3
	nop 
	mov.l @(0x34,r14),r3
	mov r12,r2
	mov r0,r4
	shad r3,r2
	tst r2,r4
	bt loc_8c11a6d2
	mov.l @(0xCC,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11a6d2
	mov 0x24,r0
	mov 0x04,r3
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	mov.b r3,@(r0,r14)

loc_8c11a6d2:
	mov r14,r3
	add 0x26,r3
	mov r14,r2
	add 0x59,r2
	mov 0x24,r0
	mov.b r13,@(r0,r14)
	mov.w r12,@r3
	mov 0x04,r3
	mov.b r3,@r2
	mov.l @(0x98,PC),r2
	jsr @r2
	nop 
	mov 0x00,r6
	bra loc_8c11a82c
	mov 0x01,r5

loc_8c11a6f0:
	mov 0x25,r0
	mov r14,r11
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c11a71a
	add 0x5A,r11
	cmp/eq 0x01,r0
	bt loc_8c11a738
	cmp/eq 0x02,r0
	bt loc_8c11a798
	cmp/eq 0x03,r0
	bt loc_8c11a7e8
	cmp/eq 0x04,r0
	bt loc_8c11a7f8
	cmp/eq 0x05,r0
	bf loc_8c11a716
	bra loc_8c11a808
	nop 

loc_8c11a716:
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	nop 

loc_8c11a71a:
	mov.l @(0x78,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11a728
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	nop 

loc_8c11a728:
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	bra loc_8c11a75a
	mov.b r13,@r2

loc_8c11a738:
	mov.l @(0x58,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c11a746
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	nop 

loc_8c11a746:
	mov 0x25,r0
	mov r14,r2
	mov.b @(r0,r14),r3
	add 0x59,r2
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x5A,r0
	mov 0x05,r3
	mov.b r3,@r2
	mov.b r12,@(r0,r14)

loc_8c11a75a:
	mov.l @(0x24,PC),r3
	jsr @r3
	nop 
	bra loc_8c11a842
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c11a764:
	#data bank03.loc_8c03563a
loc_8c11a768:
	#data 0xFF000000
loc_8c11a76c:
	#data bank03.loc_8c0355b2
loc_8c11a770:
	#data 0x8C289750
loc_8c11a774:
	#data bank04.loc_8c044d8c
loc_8c11a778:
	#data bank02.loc_8c020064
loc_8c11a77c:
	#data loc_8c115bf0
loc_8c11a780:
	#data bank02.loc_8c020378
loc_8c11a784:
	#data loc_8c115c40
loc_8c11a788:
	#data loc_8c1161ac
loc_8c11a78c:
	#data loc_8c115e2c
loc_8c11a790:
	#data loc_8c116290
loc_8c11a794:
	#data bank01.loc_8c011d0c

;==============================================
loc_8c11a798:
	mov.b @r11,r5
	mov 0x01,r6
	mov.w @r15,r4
	mov.l @(0xE0,PC),r3
	extu.b r5,r5
	jsr @r3
	extu.w r4,r4
	mov.l @(0xDC,PC),r2
	jsr @r2
	mov.b r0,@r11
	tst r0,r0
	bt loc_8c11a7d2
	mov 0x5A,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c11a7c0
	mov 0x25,r0
	mov 0x04,r3
	bra loc_8c11a7c4
	mov.b r3,@(r0,r14)

loc_8c11a7c0:
	mov 0x25,r0
	mov.b r13,@(r0,r14)

loc_8c11a7c4:
	mov 0x5A,r0
	mov.b @(r0,r14),r0
	mov 0x5A,r1
	add r14,r1
	or 0x80,r0
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	mov.b r0,@r1

loc_8c11a7d2:
	mov.l @(0xB4,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bt loc_8c11a842               ; loc_8c11a5a2+0x2a0
	mov 0x25,r0
	mov.w @(0x9A,PC),r3
	mov.b r13,@(r0,r14)
	mov 0x5A,r0
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	mov.b r3,@(r0,r14)

loc_8c11a7e8:
	mov.b @r11,r1
	tst r1,r1
	bf loc_8c11a842               ; loc_8c11a5a2+0x2a0
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov 0x25,r0
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	mov.b r10,@(r0,r14)

loc_8c11a7f8:
	mov.b @r11,r2
	tst r2,r2
	bf loc_8c11a842               ; loc_8c11a5a2+0x2a0
	mov 0x25,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	bra loc_8c11a828
	mov.b r3,@(r0,r14)

loc_8c11a808:
	mov.l @(0x80,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c11a842               ; loc_8c11a5a2+0x2a0
	bra loc_8c11a844              ; loc_8c11a5a2+0x2a2
	mov 0x00,r0

loc_8c11a816:
	mov r14,r2
	add 0x26,r2
	mov.w @r2,r3
	tst r3,r3
	bt loc_8c11a83e
	mov 0x24,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c11a828:
	mov 0x0A,r5
	mov 0x01,r6

loc_8c11a82c:
	jsr @r9
	mov r8,r4
	bra loc_8c11a842              ; loc_8c11a5a2+0x2a0
	nop 

loc_8c11a834:
	mov.l @(0x54,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bf loc_8c11a842               ; loc_8c11a5a2+0x2a0


loc_8c11a83e:
	bra loc_8c11a844              ; loc_8c11a5a2+0x2a2
	mov 0x01,r0

loc_8c11a842:
	mov 0x02,r0

loc_8c11a844:
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

loc_8C11A858:
	mov.l @(loc_8C11A890,pc),r4 ; r4 set to 0x8C289750
	mov 0x00,r0 ; r0 set to 0x00
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov r4,r6 ; r6 set to 0x8C289750
	add 0x22,r6 ; r6 set to 0x8C289772
	mov.b r0,@(0x01,r6)
	mov.b r0,@r6 ; r6 ??
	mov r4,r6 ; r6 set to 0x8C289750
	add 0x24,r6 ; r6 set to 0x8C289774
	mov.b r0,@(0x01,r6)
	mov.b r0,@r6 ; r6 ??
	mov r4,r6 ; r6 set to 0x8C289750
	add 0x59,r6 ; r6 set to 0x8C2897A9
	mov.b r0,@(0x01,r6)
	mov.b r0,@r6 ; r6 ??
	mov.l r3,@(0x1C,r4)  ; r4 ??
	rts
	mov.l r3,@(0x18,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11a87c:
	#data 0x00Ff
	#align4

loc_8C11A880:
	#data bank01.loc_8c0134D6
loc_8C11A884:
	#data bank01.loc_8c011A9a
loc_8C11A888:
	#data bank01.loc_8c011BBc
loc_8C11A88C:
	#data bank03.loc_8c03563a
loc_8C11A890:
	#data 0x8C289750

;==============================================
loc_8C11A894:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C11A920,pc),r3 ; r3 set to 0x8C01357a
	mov.b r4,@r15
	jsr @r3
	mov 0x03,r4 ; r4 set to 0x03
	mov.l @(loc_8C11A924,pc),r13 ; r13 set to 0x8C289750
	mov r0,r14
	mov.l @(loc_8C11A928,pc),r3 ; r3 set to 0x8C115CB0
	mov.l @(0x18,r13),r2
	jsr @r3
	mov.l r2,@(0x1C,r13)  ; r13 ??? bc r2 is ???
	mov.l r0,@(0x18,r13)
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C11A8Da
	cmp/eq 0x01,r0
	bt loc_8C11A8E4
	cmp/eq 0x02,r0
	bt loc_8C11A8E4
	cmp/eq 0x03,r0
	bt loc_8C11A8Ee
	cmp/eq 0x04,r0
	bt loc_8C11A8Ee
	cmp/eq 0x05,r0
	bt loc_8C11A8F6
	cmp/eq 0x06,r0
	bt loc_8C11A8Fe
	cmp/eq 0x0A,r0
	bt loc_8C11A906
	bra loc_8C11A90e
	nop

loc_8C11A8DA:
	mov.l @(loc_8C11A92C,pc),r3 ; r3 set to 0x8C119342
	jsr @r3
	mov r14,r4
	bra loc_8C11A90a
	nop

loc_8C11A8E4:
	mov.l @(loc_8C11A930,pc),r3 ; r3 set to 0x8C119700
	jsr @r3
	mov r14,r4
	bra loc_8C11A90a
	nop

loc_8C11A8EE:
	bsr loc_8C119A96
	mov r14,r4
	bra loc_8C11A90a
	nop

loc_8C11A8F6:
	bsr loc_8C11A1F8
	mov r14,r4
	bra loc_8C11A90a
	nop

loc_8C11A8FE:
	bsr loc_8C119E28
	mov r14,r4
	bra loc_8C11A90a
	nop

loc_8c11a906:
	bsr loc_8c11a5a2
	mov r14,r4

loc_8C11A90A:
	bra loc_8C11A910
	mov r0,r4

loc_8c11a90e:
	mov 0x00,r4

loc_8C11A910:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11A920:
	#data bank01.loc_8c01357a
loc_8C11A924:
	#data 0x8C289750
loc_8C11A928:
	#data loc_8c115CB0
loc_8C11A92C:
	#data loc_8c119342
loc_8C11A930:
	#data loc_8c119700
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

;==============================================
;unused?
loc_8c11a940:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov.l @(0x27C,PC),r3
	mov r5,r14
	mov.l r4,@r15
	jsr @r3
	mov 0x02,r4
	mov.l @(0x27C,PC),r3
	mov.l @(0x278,PC),r4
	mov.l @(0x270,PC),r2
	jsr @r3
	mov.l @r2,r5
	mov.l @(0x278,PC),r2
	mov.l @(0x26C,PC),r4
	jsr @r2
	nop 
	mov.l @r15,r11
	mov.l @(0x274,PC),r12
	mov.l @(0x270,PC),r10
	add 0xFF,r11
	cmp/pl r11
	bf.s loc_8c11a9a8
	mov 0x00,r13

loc_8c11a978:
	mov 0x08,r0
	mov.l @(0x258,PC),r4
	mov 0x00,r6
	mov r15,r5
	mov 0x20,r7
	mov.l r10,@(0x4,r15)
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov.l @(0xC,r14),r3
	mov.l r3,@(0x1C,r15)
	jsr @r12
	add 0x04,r5
	add 0x01,r13
	cmp/ge r11,r13
	bf.s loc_8c11a978
	add 0x10,r14

loc_8c11a9a8:
	mov 0x08,r0
	mov.l @(0x23C,PC),r2
	mov.l @(0x224,PC),r4
	mov 0x00,r6
	mov r15,r5
	mov 0x20,r7
	mov.l r2,@(0x4,r15)
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov.l @(0xC,r14),r3
	mov.l r3,@(0x1C,r15)
	jsr @r12
	add 0x04,r5
	add 0x24,r15
	lds.l @r15+,pr
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

;==============================================
loc_8c11a9f0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov.l @(0x1CC,PC),r3
	mov r5,r14
	mov.l r4,@r15
	jsr @r3
	mov 0x07,r4
	mov.l @(0x1CC,PC),r3
	mov.l @(0x1C8,PC),r4
	mov.l @(0x1C0,PC),r2
	jsr @r3
	mov.l @r2,r5
	mov.l @(0x1C8,PC),r2
	mov.l @(0x1BC,PC),r4
	jsr @r2
	nop 
	mov.l @r15,r11
	mov.l @(0x1C4,PC),r12
	mov.l @(0x1C0,PC),r10
	add 0xFF,r11
	cmp/pl r11
	bf.s loc_8c11aa58
	mov 0x00,r13

loc_8c11aa28:
	mov 0x08,r0
	mov.l @(0x1A8,PC),r4
	mov 0x01,r6
	mov r15,r5
	mov 0x20,r7
	mov.l r10,@(0x4,r15)
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov.l @(0xC,r14),r3
	mov.l r3,@(0x1C,r15)
	jsr @r12
	add 0x04,r5
	add 0x01,r13
	cmp/ge r11,r13
	bf.s loc_8c11aa28
	add 0x10,r14

loc_8c11aa58:
	mov 0x08,r0
	mov.l @(0x18C,PC),r2
	mov.l @(0x174,PC),r4
	mov 0x01,r6
	mov r15,r5
	mov 0x20,r7
	mov.l r2,@(0x4,r15)
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov.l @(0xC,r14),r3
	mov.l r3,@(0x1C,r15)
	jsr @r12
	add 0x04,r5
	add 0x24,r15
	lds.l @r15+,pr
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

;==============================================
loc_8c11aaa0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xDC,r15
	mov 0x3C,r1
	mov.l @(0x11C,PC),r2
	mul.l r1,r6
	mov r5,r14
	mov.l r4,@r15
	mov.l @r2,r3
	mov.l @(0x130,PC),r2
	sts macl,r6
	mov.l @r2,r0
	add r0,r6
	mov 0x6C,r0
	mov.l r6,@(r0,r3)
	mov.l @(0x104,PC),r3
	jsr @r3
	mov 0x12,r4
	mov.l @(0x108,PC),r3
	mov.l @(0x104,PC),r4
	mov.l @(0xFC,PC),r2
	jsr @r3
	mov.l @r2,r5
	mov.l @(0x104,PC),r2
	mov.l @(0xF8,PC),r4
	jsr @r2
	nop 
	mov.l @(0x100,PC),r11
	mov 0x00,r3
	mov.l @(0x100,PC),r12
	mov.l r3,@(0x20,r15)
	bra loc_8c11ab2a
	mov.l @r15,r13

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11aaf0:
	mov 0x08,r0
	mov.l @(0xE0,PC),r4
	mov 0x03,r6
	mov r15,r5
	mov.l r11,@(0x4,r15)
	mov 0x20,r7
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	jsr @r12
	add 0x04,r5
	add 0x1C,r14

loc_8c11ab2a:
	dt r13
	bf loc_8c11aaf0
	mov 0x08,r0
	mov.l @(0xB4,PC),r2
	mov.l @(0xA0,PC),r4
	mov 0x03,r6
	mov r15,r5
	mov.l r2,@(0x4,r15)
	fmov @r14,fr3
	mov 0x20,r7
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	jsr @r12
	add 0x04,r5
	add 0x24,r15
	lds.l @r15+,macl
	lds.l @r15+,pr
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

;==============================================
loc_8c11ab80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xDC,r15
	mov 0x3C,r1
	mov.l @(0x3C,PC),r2
	mul.l r1,r6
	mov r5,r14
	mov.l r4,@r15
	mov.l @r2,r3
	mov.l @(0x50,PC),r2
	sts macl,r6
	mov.l @r2,r0
	add r0,r6
	mov 0x6C,r0
	mov.l r6,@(r0,r3)
	mov.l @(0x24,PC),r3
	jsr @r3
	mov 0x17,r4
	mov.l @(0x28,PC),r3
	mov.l @(0x24,PC),r4
	mov.l @(0x1C,PC),r2
	jsr @r3
	mov.l @r2,r5
	mov.l @(0x24,PC),r2
	mov.l @(0x18,PC),r4
	jsr @r2
	nop 
	mov.l @(0x20,PC),r11
	mov 0x00,r3
	mov.l @(0x20,PC),r12
	mov.l r3,@(0x20,r15)
	bra loc_8c11ac2a
	mov.l @r15,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11ABCC:
	#data loc_8c11C170
loc_8C11ABd0:
	#data 0x8C2DEC98
loc_8C11ABd4:
	#data 0x8C2DB048
loc_8C11ABD8:
	#data bank17.loc_8c17C6C0
loc_8C11ABDC:
	#data bank17.loc_8c17BF00
loc_8C11ABe0:
	#data 0xE0000000
loc_8C11ABE4:
	#data bank17.loc_8c17BE80
loc_8C11ABE8:
	#data 0xF0000000
loc_8C11ABEc:
	#data 0x8C2DE690

;==============================================
loc_8C11ABf0:
	mov 0x08,r0
	mov.l @(0x2E8,PC),r4
	mov 0x03,r6
	mov r15,r5
	mov.l r11,@(0x4,r15)
	mov 0x20,r7
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	jsr @r12
	add 0x04,r5
	add 0x1C,r14

loc_8c11ac2a:
	dt r13
	bf loc_8c11abf0
	mov 0x08,r0
	mov.l @(0x2AC,PC),r2
	mov.l @(0x2A8,PC),r4
	mov 0x03,r6
	mov r15,r5
	mov.l r2,@(0x4,r15)
	fmov @r14,fr3
	mov 0x20,r7
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	jsr @r12
	add 0x04,r5

loc_8c11ac68:
	add 0x24,r15
	lds.l @r15+,macl
	lds.l @r15+,pr
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

;==============================================
loc_8c11ac80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xDC,r15
	mov 0x3C,r1
	mov.l @(0x250,PC),r2
	mul.l r1,r6
	mov r5,r14
	mov.l r4,@r15
	mov.l @r2,r3
	mov.l @(0x24C,PC),r2
	sts macl,r6
	mov.l @r2,r0
	add r0,r6
	mov 0x6C,r0
	mov.l r6,@(r0,r3)
	mov.l @(0x244,PC),r3
	jsr @r3
	mov 0x12,r4
	mov.l @(0x240,PC),r3
	mov.l @(0x22C,PC),r4
	mov.l @(0x230,PC),r2
	jsr @r3
	mov.l @r2,r5
	mov.l @(0x23C,PC),r2
	mov.l @(0x220,PC),r4
	jsr @r2
	nop 
	mov.l @(0x238,PC),r11
	mov 0x00,r3
	mov.l @(0x238,PC),r12
	mov.l r3,@(0x20,r15)
	bra loc_8c11ad0e              ; loc_8c11acf8+0x16
	mov.l @r15,r13

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11acd0:
	mov 0x08,r0
	mov.l @(0x208,PC),r4
	mov 0x20,r7
	mov r15,r5
	mov 0x03,r6
	mov.l r11,@(0x4,r15)
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x20,r15)
	jsr @r12
	add 0x04,r5
	add 0x1C,r14

loc_8c11ad0e:
	dt r13
	bf loc_8c11acd0
	mov 0x08,r0
	mov.l @(0x1C8,PC),r2
	mov.l @(0x1C4,PC),r4
	mov 0x03,r6
	mov.l r2,@(0x4,r15)
	mov r15,r5
	fmov @r14,fr3
	mov 0x20,r7
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x20,r15)
	jsr @r12
	add 0x04,r5
	add 0x24,r15
	lds.l @r15+,macl
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c11ad60:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xDC,r15
	mov 0x3C,r1
	mov.l @(0x170,PC),r2
	mul.l r1,r6
	mov r5,r14
	mov.l r4,@r15
	mov.l @r2,r3
	mov.l @(0x16C,PC),r2
	sts macl,r6
	mov.l @r2,r0
	add r0,r6
	mov 0x6C,r0
	mov.l r6,@(r0,r3)
	mov.l @(0x164,PC),r3
	jsr @r3
	mov 0x1F,r4
	mov.l @(0x160,PC),r3
	mov.l @(0x14C,PC),r4
	mov.l @(0x150,PC),r2
	jsr @r3
	mov.l @r2,r5
	mov.l @(0x15C,PC),r2
	mov.l @(0x140,PC),r4
	jsr @r2
	nop 
	mov.l @(0x158,PC),r11
	mov 0x00,r3
	mov.l @(0x158,PC),r12
	mov.l r3,@(0x20,r15)
	bra loc_8c11adee
	mov.l @r15,r13

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11adb0:
	mov 0x08,r0
	mov.l @(0x128,PC),r4
	mov 0x20,r7
	mov r15,r5
	mov 0x03,r6
	mov.l r11,@(0x4,r15)
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x20,r15)
	jsr @r12
	add 0x04,r5
	add 0x1C,r14

loc_8c11adee:
	dt r13
	bf loc_8c11adb0
	mov 0x08,r0
	mov.l @(0xE8,PC),r2
	mov.l @(0xE4,PC),r4
	mov 0x03,r6
	mov.l r2,@(0x4,r15)
	mov r15,r5
	fmov @r14,fr3
	mov 0x20,r7
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x20,r15)
	jsr @r12
	add 0x04,r5
	add 0x24,r15
	lds.l @r15+,macl
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c11ae40:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0xB8,PC),r3
	mov 0x00,r4
	mov 0x40,r0
	sts.l pr,@-r15
	mov.l r3,@r14
	mov 0x08,r3
	mov 0x06,r2
	mov.l r4,@(0x4,r14)
	mov 0x01,r6
	mov.l r4,@(0x8,r14)
	mov 0x04,r5
	mov.l r4,@(0xC,r14)
	mov.l r4,@(r0,r14)
	mov.l r4,@(0x10,r14)
	mov.l r5,@(0x14,r14)
	mov.l r4,@(0x18,r14)
	mov.l r6,@(0x20,r14)
	mov.l r6,@(0x24,r14)
	mov.l r4,@(0x28,r14)
	mov.l r3,@(0x2C,r14)
	mov 0x02,r3
	mov.l r2,@(0x30,r14)
	mov.l r4,@(0x34,r14)
	mov.l r4,@(0x38,r14)
	mov.l r3,@(0x3C,r14)
	mov.l r4,@(r0,r14)
	mov 0x44,r0
	mov.l r4,@(r0,r14)
	mov 0x4C,r0
	mov.l r4,@(r0,r14)
	mov 0x54,r0
	fldi1 fr4
	mov.l r4,@(r0,r14)
	mov 0x58,r0
	mov.l r4,@(r0,r14)
	mov 0x5C,r0
	mov.l r5,@(r0,r14)
	mov 0x60,r0
	mov 0x03,r3
	mov.l r3,@(r0,r14)
	mov 0x6C,r0
	mov.l r4,@(r0,r14)
	mov 0x64,r0
	mov.l r4,@(r0,r14)
	mov 0x68,r0
	mov.l r4,@(r0,r14)
	mov 0x70,r0
	fmov fr4,@(r0,r14)
	mov 0x74,r0
	fmov fr4,@(r0,r14)
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x28,PC),r2
	mov.l @(0x10,PC),r4
	jsr @r2
	mov r14,r5
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov r14,r5
	mov.l @(0x4,PC),r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11aedc:
	#data 0x8C2DB048
loc_8C11AEE0:
	#data 0xF0000000
loc_8C11AEE4:
	#data 0x8C2DEC98
loc_8C11AEE8:
	#data 0x8C2DE690
loc_8C11AEEC:
	#data loc_8c11C170
loc_8C11AEF0:
	#data bank17.loc_8c17C6C0
loc_8C11AEF4:
	#data bank17.loc_8c17BF00
loc_8C11AEf8:
	#data 0xE0000000
loc_8C11AEFC:
	#data bank17.loc_8c17BE80
loc_8C11Af00:
	#data 0x03F3FFFf
loc_8C11AF04:
	#data bank17.loc_8c17BF80
loc_8C11AF08:
	#data bank17.loc_8c17C640

;==============================================
	nop
	nop

;==============================================
loc_8c11af10:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x1D0,PC),r3
	mov 0x00,r4
	mov 0x40,r0
	sts.l pr,@-r15
	mov.l r3,@r14
	mov 0x08,r3
	mov 0x06,r2
	mov 0x04,r6
	mov 0x01,r5
	mov.l r5,@(0x4,r14)
	mov.l r5,@(0x8,r14)
	mov.l r4,@(0xC,r14)
	mov.l r4,@(r0,r14)
	mov.l r4,@(0x10,r14)
	mov.l r6,@(0x14,r14)
	mov.l r4,@(0x18,r14)
	mov.l r5,@(0x20,r14)
	mov.l r5,@(0x24,r14)
	mov.l r4,@(0x28,r14)
	mov.l r3,@(0x2C,r14)
	mov 0x02,r3
	mov.l r2,@(0x30,r14)
	mov.l r4,@(0x34,r14)
	mov.l r4,@(0x38,r14)
	mov.l r3,@(0x3C,r14)
	mov.l r4,@(r0,r14)
	mov 0x44,r0
	mov.l r4,@(r0,r14)
	mov 0x4C,r0
	mov.l r4,@(r0,r14)
	mov 0x54,r0
	fldi1 fr4
	mov.l r4,@(r0,r14)
	mov 0x58,r0
	mov.l r4,@(r0,r14)
	mov 0x5C,r0
	mov.l r6,@(r0,r14)
	mov 0x60,r0
	mov 0x03,r3
	mov.l r3,@(r0,r14)
	mov 0x6C,r0
	mov.l r4,@(r0,r14)
	mov 0x64,r0
	mov.l r4,@(r0,r14)
	mov 0x68,r0
	mov.l r4,@(r0,r14)
	mov 0x70,r0
	fmov fr4,@(r0,r14)
	mov 0x74,r0
	fmov fr4,@(r0,r14)
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	mov.l @(0x158,PC),r3
	add 0x14,r0
	mov.l r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x154,PC),r2
	mov r14,r5
	mov.l @(0x14C,PC),r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11afb0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x130,PC),r3
	mov 0x00,r4
	mov 0x40,r0
	sts.l pr,@-r15
	mov.l r3,@r14
	mov 0x08,r3
	mov 0x06,r2
	mov 0x04,r6
	mov 0x01,r5
	mov.l r5,@(0x4,r14)
	mov.l r5,@(0x8,r14)
	mov.l r4,@(0xC,r14)
	mov.l r4,@(r0,r14)
	mov.l r4,@(0x10,r14)
	mov.l r6,@(0x14,r14)
	mov.l r4,@(0x18,r14)
	mov.l r5,@(0x20,r14)
	mov.l r5,@(0x24,r14)
	mov.l r4,@(0x28,r14)
	mov.l r3,@(0x2C,r14)
	mov 0x02,r3
	mov.l r2,@(0x30,r14)
	mov.l r4,@(0x34,r14)
	mov.l r4,@(0x38,r14)
	mov.l r3,@(0x3C,r14)
	mov.l r4,@(r0,r14)
	mov 0x44,r0
	mov.l r4,@(r0,r14)
	mov 0x4C,r0
	mov.l r4,@(r0,r14)
	mov 0x54,r0
	fldi1 fr4
	mov.l r4,@(r0,r14)
	mov 0x58,r0
	mov.l r4,@(r0,r14)
	mov 0x5C,r0
	mov.l r6,@(r0,r14)
	mov 0x60,r0
	mov 0x03,r3
	mov.l r3,@(r0,r14)
	mov 0x6C,r0
	mov.l r4,@(r0,r14)
	mov 0x64,r0
	mov.l r4,@(r0,r14)
	mov 0x68,r0
	mov.l r4,@(r0,r14)
	mov 0x70,r0
	fmov fr4,@(r0,r14)
	mov 0x74,r0
	fmov fr4,@(r0,r14)
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	mov.l @(0xC4,PC),r3
	add 0x14,r0
	mov.l r3,@(r0,r14)
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xB4,PC),r2
	mov r14,r5
	mov.l @(0xAC,PC),r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11b050:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x90,PC),r3
	mov 0x00,r4
	mov 0x40,r0
	sts.l pr,@-r15
	mov.l r3,@r14
	mov 0x08,r3
	mov 0x06,r2
	mov 0x04,r6
	mov 0x01,r5
	mov.l r5,@(0x4,r14)
	mov.l r5,@(0x8,r14)
	mov.l r4,@(0xC,r14)
	mov.l r4,@(r0,r14)
	mov.l r4,@(0x10,r14)
	mov.l r6,@(0x14,r14)
	mov.l r4,@(0x18,r14)
	mov.l r5,@(0x20,r14)
	mov.l r5,@(0x24,r14)
	mov.l r4,@(0x28,r14)
	mov.l r3,@(0x2C,r14)
	mov 0x02,r3
	mov.l r2,@(0x30,r14)
	mov.l r4,@(0x34,r14)
	mov.l r4,@(0x38,r14)
	mov.l r3,@(0x3C,r14)
	mov.l r4,@(r0,r14)
	mov 0x44,r0
	mov.l r4,@(r0,r14)
	mov 0x4C,r0
	mov.l r4,@(r0,r14)
	mov 0x54,r0
	fldi1 fr4
	mov.l r4,@(r0,r14)
	mov 0x58,r0
	mov.l r4,@(r0,r14)
	mov 0x5C,r0
	mov.l r6,@(r0,r14)
	mov 0x60,r0
	mov 0x03,r3
	mov.l r3,@(r0,r14)
	mov 0x6C,r0
	mov.l r4,@(r0,r14)
	mov 0x64,r0
	mov.l r4,@(r0,r14)
	mov 0x68,r0
	mov.l r4,@(r0,r14)
	mov 0x70,r0
	fmov fr4,@(r0,r14)
	mov 0x74,r0
	fmov fr4,@(r0,r14)
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	mov.l @(0x18,PC),r3
	add 0x14,r0
	mov.l r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x14,PC),r2
	mov r14,r5
	mov.l @(0xC,PC),r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11b0e8:
	#data 0x03F3FFFf
loc_8C11B0EC:
	#data bank17.loc_8c17BF80
loc_8C11B0f0:
	#data 0x8C2DB048
loc_8C11B0F4:
	#data bank17.loc_8c17C6C0
loc_8C11B0F8:
	#data 0x20000000

;==============================================
	nop
	nop

;==============================================
loc_8c11b100:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0xE4,PC),r3
	mov 0x03,r2
	sts.l pr,@-r15
	mov.l @(0xE4,PC),r1
	mov 0x6C,r0
	mov 0x01,r4
	sts.l macl,@-r15
	mov.l r3,@r14
	mov 0x3C,r3
	mul.l r3,r5
	mov 0x00,r3
	mov.l r4,@(0x4,r14)
	mov.l r4,@(0x8,r14)
	mov.l r2,@(0x20,r14)
	sts macl,r5
	mov.l @r1,r2
	add r2,r5
	mov.l r5,@(r0,r14)
	mov.w @(0xBA,PC),r0
	mov.l r3,@(r0,r14)
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,macl
	mov.l @(0xC4,PC),r2
	mov r14,r5
	mov.l @(0xBC,PC),r4
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c11b140:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0xA4,PC),r3
	mov 0x03,r2
	sts.l pr,@-r15
	mov.l @(0xA4,PC),r1
	mov 0x6C,r0
	mov 0x01,r4
	sts.l macl,@-r15
	mov.l r3,@r14
	mov 0x3C,r3
	mul.l r3,r5
	mov.l @(0xA4,PC),r3
	mov.l r4,@(0x4,r14)
	mov.l r4,@(0x8,r14)
	sts macl,r5
	mov.l r2,@(0x20,r14)
	mov.l @r1,r2
	add r2,r5
	mov.l r5,@(r0,r14)
	mov.w @(0x7A,PC),r0
	mov.l r3,@(r0,r14)
	mov.l @(0x84,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,macl
	mov.l @(0x84,PC),r2
	mov r14,r5
	mov.l @(0x7C,PC),r4
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_8c11b180:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x64,PC),r3
	mov 0x03,r2
	sts.l pr,@-r15
	mov.l @(0x64,PC),r1
	mov 0x6C,r0
	mov 0x01,r4
	sts.l macl,@-r15
	mov.l r3,@r14
	mov 0x3C,r3
	mul.l r3,r5
	mov 0x00,r3
	mov.l r4,@(0x4,r14)
	mov.l r4,@(0x8,r14)
	mov.l r2,@(0x20,r14)
	sts macl,r5
	mov.l @r1,r2
	add r2,r5
	mov.l r5,@(r0,r14)
	mov.w @(0x3A,PC),r0
	mov.l r3,@(r0,r14)
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,macl
	mov.l @(0x44,PC),r2
	mov r14,r5
	mov.l @(0x3C,PC),r4
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r4
	bsr loc_8c11ae40
	nop 
	mov.l @(0x3C,PC),r14
	mov 0x00,r5
	bsr loc_8c11b100            ; loc_8c11b0f8+0x8
	mov r14,r4
	mov.w @(0x12,PC),r4
	mov 0x00,r5
	bsr loc_8c11b140
	add r14,r4
	lds.l @r15+,pr
	mov.w @(0xA,PC),r4
	mov 0x00,r5
	add r14,r4
	bra loc_8c11b180
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11b1e6:
	#data 0x00a0
loc_8c11b1e8:
	#data 0x00c0
loc_8c11b1ea:
	#data 0x0180
loc_8c11b1ec:
	#data 0x0008
loc_8c11b1ee:
	#data 0x0030
	#align4

loc_8c11b1f0:
	#data 0x8C2DE690
loc_8C11B1F4:
	#data bank17.loc_8c17BF80
loc_8C11B1F8:
	#data 0x8C2DB048
loc_8C11B1FC:
	#data bank17.loc_8c17C6C0
loc_8C11B200:
	#data 0x20000000
loc_8C11B204:
	#data 0x8C2A9F6c
loc_8C11B208:
	#data 0x8C2AA02c

;==============================================
	nop
	nop

;==============================================
loc_8c11b210:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xC0,r15
	mov r5,r13
	mov r4,r14
	mov.l @(0x258,PC),r4
	mov.l @(0x250,PC),r5
	mov.l @(0x24C,PC),r9
	jsr @r9
	nop 
	mov.l @(0x24C,PC),r4
	mov.l @(0x250,PC),r8
	jsr @r8
	nop 
	mov 0x04,r0
	mov.l @(0x24C,PC),r12
	mov.l r12,@r15
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	fmov @(r0,r14),fr3
	mov 0x1C,r0
	fmov fr3,@(r0,r15)
	mov 0x1C,r0
	fmov @(r0,r14),fr3
	mov 0x20,r0
	fmov fr3,@(r0,r15)
	mov 0x20,r0
	fmov @(r0,r14),fr3
	mov 0x24,r0
	mov.l @(0x208,PC),r10
	mov 0x11,r6
	mov.l @(0x1F8,PC),r4
	mov 0x40,r7
	fmov fr3,@(r0,r15)
	jsr @r10
	mov r15,r5
	mov.l @(0x1F0,PC),r4
	add 0x24,r14
	mov.l @(0x1FC,PC),r5
	jsr @r9
	add 0xFF,r13
	mov.l @(0x1E4,PC),r4
	jsr @r8
	nop 
	mov 0x01,r11
	cmp/gt r11,r13
	bf loc_8c11b2fe

loc_8c11b2a4:
	mov 0x04,r0
	mov.l r12,@r15
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	fmov @(r0,r14),fr3
	mov 0x1C,r0
	fmov fr3,@(r0,r15)
	mov 0x1C,r0
	fmov @(r0,r14),fr3
	mov 0x20,r0
	fmov fr3,@(r0,r15)

loc_8c11b2e4:
	mov 0x20,r0
	mov.l @(0x198,PC),r4
	fmov @(r0,r14),fr3
	mov 0x24,r0
	mov 0x11,r6
	fmov fr3,@(r0,r15)
	mov 0x40,r7
	jsr @r10
	mov r15,r5
	add 0xFF,r13
	cmp/gt r11,r13
	bt.s loc_8c11b2a4
	add 0x24,r14

loc_8c11b2fe:
	mov.l @(0x180,PC),r4
	mov.l @(0x190,PC),r5
	jsr @r9
	nop 
	mov.l @(0x178,PC),r4
	jsr @r8
	nop 
	mov 0x04,r0
	mov.l r12,@r15
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	fmov @(r0,r14),fr3
	mov 0x1C,r0
	fmov fr3,@(r0,r15)
	mov 0x1C,r0
	fmov @(r0,r14),fr3
	mov 0x20,r0
	fmov fr3,@(r0,r15)
	mov 0x20,r0
	mov.l @(0x130,PC),r4
	fmov @(r0,r14),fr3
	mov 0x24,r0
	mov 0x11,r6
	fmov fr3,@(r0,r15)
	mov 0x40,r7
	jsr @r10
	mov r15,r5
	add 0x40,r15
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

;==============================================
loc_8c11b380:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov r5,r14
	mov.l r4,@r15
	mov.l @(0xE4,PC),r3
	mov.l @(0xE8,PC),r4
	mov.l @(0x100,PC),r5
	jsr @r3
	nop 
	mov.l @(0xFC,PC),r2
	mov.l @(0xE0,PC),r4
	mov.l @(0xF4,PC),r5
	jsr @r2
	nop 
	mov.l @(0xDC,PC),r3
	mov.l @(0xD4,PC),r4
	jsr @r3
	nop 
	mov.l @r15,r11
	mov.l @(0xD8,PC),r12
	mov.l @(0xD4,PC),r10
	add 0xFF,r11
	cmp/pl r11
	bf.s loc_8c11b3f0
	mov 0x00,r13

loc_8c11b3bc:
	mov 0x08,r0
	mov.l @(0xC0,PC),r4
	mov 0x20,r7
	mov r15,r5
	mov 0x09,r6
	mov.l r10,@(0x4,r15)
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov.l @(0xC,r14),r3
	mov.l r3,@(0x14,r15)
	mov.l @(0x10,r14),r2
	mov.l r2,@(0x18,r15)
	jsr @r12
	add 0x04,r5
	add 0x01,r13
	cmp/ge r11,r13
	bf.s loc_8c11b3bc
	add 0x14,r14

loc_8c11b3f0:
	mov 0x08,r0
	mov.l @(0xAC,PC),r2
	mov.l @(0x88,PC),r4
	mov 0x09,r6
	mov.l r2,@(0x4,r15)
	mov r15,r5
	fmov @r14,fr3
	mov 0x20,r7
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov.l @(0xC,r14),r3
	mov.l r3,@(0x14,r15)
	mov.l @(0x10,r14),r2
	mov.l r2,@(0x18,r15)
	jsr @r12
	add 0x04,r5
	add 0x24,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
	nop 
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xBC,r15
	mov 0x3C,r1
	mov.l @(0x60,PC),r2
	mul.l r1,r6
	mov r5,r14
	mov.l r4,@r15
	mov.l @r2,r3
	mov.l @(0x5C,PC),r2
	sts macl,r6
	mov.l @r2,r0
	add r0,r6
	mov 0x6C,r0
	mov.l r6,@(r0,r3)
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x12,r4
	mov.l @(0x18,PC),r3
	mov.l @(0x20,PC),r4
	mov.l @(0x40,PC),r2
	jsr @r3
	mov.l @r2,r5
	mov.l @(0x1C,PC),r2
	mov.l @(0x14,PC),r4
	jsr @r2
	nop 
	mov.l @(0x1C,PC),r12
	mov.l @(0x14,PC),r11
	bra loc_8c11b506
	mov.l @r15,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11B478:
	#data bank17.loc_8c17C6C0
loc_8C11B47c:
	#data 0x8C2AA02c
loc_8C11B480:
	#data 0x8C2DB048
loc_8C11B484:
	#data bank17.loc_8c17BF00
loc_8C11B488:
	#data 0xE0000000
loc_8C11B48C:
	#data bank17.loc_8c17BE80
loc_8c11b490:
	#data 0x8C2AA1Ac
loc_8c11b494:
	#data 0x8C2AA0Ec
loc_8c11b498:
	#data 0x8C2A9F6c
loc_8C11B49C:
	#data bank17.loc_8c17C640
loc_8C11B4A0:
	#data 0xF0000000
loc_8C11B4A4:
	#data 0x8C2DEC98
loc_8C11B4A8:
	#data 0x8C2DE690
loc_8C11B4AC:
	#data loc_8c11C170

;==============================================
loc_8c11b4b0:
	mov 0x08,r0
	mov.l r11,@(0x4,r15)
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x20,r15)
	fmov @(r0,r14),fr3
	mov 0x24,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x28,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x24,r14),r3
	mov 0x0B,r6
	mov.l @(0x130,PC),r4
	mov r15,r5
	mov.l r3,@(0x2C,r15)
	mov 0x40,r7
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x30,r15)
	jsr @r12
	add 0x04,r5
	add 0x2C,r14

loc_8c11b506:
	dt r13
	bf loc_8c11b4b0
	mov 0x08,r0
	mov.l @(0x11C,PC),r2
	mov.l r2,@(0x4,r15)
	fmov @r14,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x1C,r15)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x20,r15)
	fmov @(r0,r14),fr3
	mov 0x24,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x28,r0
	mov.l @(0xDC,PC),r4
	mov 0x0B,r6
	mov r15,r5
	mov 0x40,r7
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x2C,r15)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x30,r15)
	jsr @r12
	add 0x04,r5
	add 0x44,r15
	lds.l @r15+,macl
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C11B570:
	mov r4,r6
	mov.l @(loc_8C11B630,pc),r4 ; r4 set to 0x8C32B420
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(loc_8C11B638,pc),r2 ; r2 set to 0x8C2DED60
	add 0x1F,r5
	mov.l @(loc_8C11B634,pc),r3 ; r3 set to 0x8C2DECA0
	add 0x1F,r6
	mov 0xE0,r7 ; r7 set to 0xFFFFFFE0
	and r7,r5
	and r7,r6
	mov.l r6,@(0x34,r4)  ; r4 ??? bc r6 is ???
	mov.w r0,@(0x06,r4)
	mov 0x40,r0 ; r0 set to 0x40
	mov.l r6,@r3 ; r3 ??? bc r6 is ???
	mov.l r6,@(0x2C,r4)
	mov.l r6,@(0x30,r4)
	mov.l r5,@(r0,r4)
	mov.l r5,@r2 ; r2 ??? bc r5 is ???
	mov.l r5,@(0x38,r4)
	rts
	mov.l r5,@(0x3C,r4)

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11b5a0:
	mov.l @(0x8C,PC),r4
	mov.l @(0x30,r4),r3
	mov.l r3,@(0x2C,r4)
	mov.l @(0x3C,r4),r2
	rts 
	mov.l r2,@(0x38,r4)

;==============================================
	nop
	nop

;==============================================
loc_8c11b5b0:
	mov.l @(0x80,PC),r5
	mov 0x00,r0
	mov.l @(0x78,PC),r4
	mov.w r0,@(0x6,r4)
	mov.l @r5,r5
	mov.l r5,@(0x2C,r4)
	mov.l r5,@(0x30,r4)
	mov.l @(0x78,PC),r5
	mov.l @r5,r5
	mov.l r5,@(0x38,r4)
	rts 
	mov.l r5,@(0x3C,r4)

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11b5d0:
	mov.l @(0x5C,PC),r4
	mov 0x30,r3
	mov.w @(0x6,r4),r0
	mov r0,r5
	cmp/ge r3,r5
	bt.s loc_8c11b5f6
	mov 0xFF,r6
	add 0x01,r5
	mov r5,r0
	mov.w r0,@(0x6,r4)
	mov.l @(0x4C,PC),r0
	shll2 r5
	mov.l @(0x2C,r4),r2
	mov r5,r6
	mov.l r2,@(r0,r5)
	mov.l @(0x38,r4),r2
	mov.l @(0x44,PC),r0
	mov.l r2,@(r0,r6)
	mov 0x00,r6

loc_8c11b5f6:
	rts 
	mov r6,r0

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11b600:
	mov.l @(0x2C,PC),r4
	mov.w @(0x6,r4),r0
	mov r0,r1
	cmp/pl r1
	bf.s loc_8c11b624
	mov 0xFF,r5
	mov.l @(0x28,PC),r0
	mov r1,r5
	shll2 r5
	mov.l @(r0,r5),r3
	mov.l @(0x1C,PC),r0
	mov.l r3,@(0x38,r4)
	mov.l @(r0,r5),r3
	mov r1,r0
	add 0xFF,r0
	mov 0x00,r5
	mov.l r3,@(0x2C,r4)
	mov.w r0,@(0x6,r4)

loc_8c11b624:
	rts 
	mov r5,r0

;==============================================
	#align4
loc_8c11b628:
	#data 0x8C2DB048
loc_8c11b62c:
	#data 0xF0000000
loc_8C11B630:
	#data 0x8C32B420
loc_8C11B634:
	#data 0x8C2DECA0
loc_8C11B638:
	#data 0x8C2DED60
	#data 0x00000000

;==============================================
;Deals with Font Texture
;==============================================
loc_8C11B640:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r6,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x3C,r11
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x21C,PC),r4
	mov.l @(0x214,PC),r12
	sts.l macl,@-r15
	mul.l r11,r5
	mov.l @r4,r3
	mov.l @r12,r10
	add 0x01,r3
	sts macl,r11
	mov.l r3,@r4
	mov.w @(0x2,r14),r0
	mov.l @(0x20C,PC),r3
	add r11,r10
	mov.w @r14,r5
	mov r0,r6
	mov.l @(0x4,r14),r7
	jsr @r3
	mov r10,r4
	mov r0,r4
	tst r4,r4
	bf.s loc_8c11b6e0
	mov.l r0,@(0x28,r10)
	mov.l @(0x1F8,PC),r3
	mov.l @r3,r10
	tst r10,r10
	bt loc_8c11b690
	jsr @r10
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c11b690
	mov r4,r13

loc_8C11B690:
	mov.l @(0x1E8,PC),r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c11b6a0
	mov.l @(0x1E4,PC),r2
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c11b6d0

loc_8C11B6A0:
	mov.l @(0x1E0,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(0x1E0,PC),r3
	mov r13,r5
	mov.l @r12,r4
	jsr @r3
	add r11,r4
	mov.l @(0x1D0,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0x1D4,PC),r14

loc_8C11B6B8:
	jsr @r14
	nop 
	tst r0,r0
	bf loc_8c11b6b8
	bra loc_8c11b6da
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11B6D0:
	mov.l @(0x1B4,PC),r3
	mov r13,r5
	mov.l @r12,r4
	jsr @r3
	add r11,r4

loc_8C11B6DA:
	bra loc_8c11b6e2
	mov 0x00,r0

;==============================================
	nop 

;==============================================
loc_8C11B6E0:
	mov 0x01,r0

loc_8C11B6E2:
	lds.l @r15+,macl
	lds.l @r15+,pr
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

;==============================================
loc_8C11B700:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xFC,r15
	mov r6,r14
	mov r5,r13
	add 0x01,r14
	mov.l r4,@r15
	add 0x01,r13
	bsr loc_8c11bba0
	mov r13,r5
	mov 0x3C,r4
	mov.l @r15,r3
	mul.l r4,r13
	mov r14,r2
	mov.l @(0x16C,PC),r6
	mov.l @(0x170,PC),r13
	add 0x1F,r2
	mov.l @(0x170,PC),r1
	sts macl,r4
	add r3,r4
	mov r14,r3
	shll2 r3
	shll r3
	cmp/pz r2
	add 0x08,r4
	add r4,r3
	mov.l r4,@r6
	mov.l r3,@r13
	bt loc_8c11b740
	add 0x1F,r2

loc_8C11B740:
	mov.l @(0x158,PC),r0
	add 0xFF,r14
	mov 0xFB,r3
	shad r3,r2
	mov 0x00,r4
	mov.l r2,@r1
	mov.l r14,@r0
	mov 0xFF,r14
	mov r14,r7
	bra loc_8c11b770
	mov 0xF8,r5

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11B760:
	mov.l @r6,r3
	add 0x01,r7
	add r5,r3
	mov.l r4,@r3
	mov.l @r6,r2
	add r5,r2
	add 0x08,r5
	mov.l r14,@(0x4,r2)

loc_8c11b770:
	mov.l @r0,r3
	cmp/ge r3,r7
	bf loc_8c11b760
	mov r4,r6
	bra loc_8c11b788
	mov r4,r5

;==============================================
	nop
	nop

;==============================================
loc_8C11B780:
	mov.l @r13,r0
	add 0x01,r6
	mov.l r4,@(r0,r5)
	add 0x04,r5

loc_8c11b788:
	mov.l @r1,r2
	cmp/ge r2,r6
	bf loc_8c11b780
	mov.l @(0x110,PC),r1
	mov.l r4,@r1
	add 0x04,r15
	lds.l @r15+,macl
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	nop

;==============================================
loc_8C11B7A0:
	sts.l pr,@-r15
	bsr loc_8C11BC70
	nop
	mov.l @(loc_8C11B89C,pc),r0 ; r0 set to bank16.loc_8c16BBE0
	mov.l @r0,r2
	tst r2,r2
	bt loc_8C11B7Ee
	mov.l @(loc_8C11B890,pc),r6 ; r6 set to 0x8C2AA26c
	mov 0xFF,r1 ; r1 set to 0xFFFFFFFf
	mov 0x00,r4 ; r4 set to 0x00
	mov r1,r7 ; r7 set to 0xFFFFFFFf
	bra loc_8C11B7D0
	mov 0xF8,r5

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11B7C0:
	mov.l @r6,r2
	add 0x01,r7
	add r5,r2
	mov.l r4,@r2
	mov.l @r6,r3
	add r5,r3
	add 0x08,r5
	mov.l r1,@(0x04,r3)

loc_8C11B7D0:
	mov.l @r0,r2
	cmp/ge r2,r7
	bf loc_8C11B7C0
	mov.l @(loc_8C11B898,pc),r7 ; r7 set to bank16.loc_8c16BBE4, r7 set to bank16.loc_8c16BBE4
	mov r4,r6
	mov.l @(loc_8C11B894,pc),r1 ; r1 set to 0x8C2AA270, r1 set to 0x8C2AA270
	bra loc_8C11B7E8
	mov r4,r5

loc_8C11B7E0:
	mov.l @r1,r0
	add 0x01,r6
	mov.l r4,@(r0,r5)
	add 0x04,r5

loc_8c11b7e8:
	mov.l @r7,r3
	cmp/ge r3,r6
	bf loc_8c11b7e0

loc_8C11B7EE:
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


;==============================================
loc_8C11B800:
	mov.l @(loc_8C11B8A0,pc),r2 ; r2 set to 0x8C2DEE54
	rts
	mov.l r4,@r2

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11B810:
	mov.l r14,@-r15
	cmp/pz r4
	sts.l pr,@-r15
	sts.l macl,@-r15
	bf loc_8c11b820
	mov.l @(0x84,PC),r3
	mov.l @r3,r2
	add r2,r4

loc_8C11B820:
	mov.l @(0x6C,PC),r2
	mov r4,r6
	shll2 r6
	mov.l @r2,r3
	shll r6
	add r3,r6
	mov.l @r6,r1
	tst r1,r1
	bt loc_8c11b852
	mov.l @(0x4,r6),r4
	mov 0x3C,r14
	mov.l @(0x34,PC),r2
	mul.l r14,r4
	mov.l @r2,r3
	sts macl,r14
	add r3,r14
	mov.l @(0x28,r14),r1
	tst r1,r1
	bf loc_8c11b852
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c11b860

loc_8C11B852:
	bra loc_8c11b862
	mov 0x00,r0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11B860:
	mov 0x01,r0

loc_8C11B862:
	lds.l @r15+,macl
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11b86c:
	#data 0x8C2DE690
loc_8c11b870:
	#data 0x8C2DEE4c
loc_8C11B874:
	#data bank17.loc_8c17C8A0
loc_8C11B878:
	#data bank16.loc_8c16BBE8
loc_8c11b87c:
	#data 0x8C2AA50c
loc_8c11b880:
	#data 0x8C2AA510
loc_8C11B884:
	#data bank17.loc_8c17AA40
loc_8C11B888:
	#data bank12.loc_8c129830
loc_8C11B88C:
	#data bank17.loc_8c17ADB0
loc_8C11B890:
	#data 0x8C2AA26c
loc_8C11B894:
	#data 0x8C2AA270
loc_8C11B898:
	#data bank16.loc_8c16BBE4
loc_8C11B89C:
	#data bank16.loc_8c16BBE0
loc_8C11B8A0:
	#data 0x8C2DEE54

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11b8b0:
	add 0xF8,r15
	mov.l r5,@r15
	mov r6,r5
	shll2 r5
	mov.l r6,@(0x4,r15)
	mov.l @r15,r3
	shll2 r5
	add r3,r5
	mov.l @(0x8,r5),r5
	bra loc_8c11b810
	add 0x08,r15

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11b8d0:
	sts.l macl,@-r15
	cmp/pz r4
	bf loc_8c11b8dc
	mov.l @(0x214,PC),r3
	mov.l @r3,r2
	add r2,r4

loc_8c11b8dc:
	mov.l @(0x210,PC),r2
	mov r4,r6
	shll2 r6
	mov.l @r2,r3
	shll r6
	add r3,r6
	mov.l @r6,r1
	tst r1,r1
	bt loc_8c11b902
	mov.l @(0x4,r6),r4
	mov 0x3C,r0
	mov.l @(0x200,PC),r2
	mul.l r0,r4
	mov.l @r2,r3
	sts macl,r0
	add r3,r0
	mov.l @(0x28,r0),r1
	tst r1,r1
	bt loc_8c11b910

loc_8c11b902:
	mov 0x00,r0
	rts 
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11b910:
	mov.l @(0xC,r0),r2
	mov r5,r6
	mov.l @(0x10,r0),r1
	mov.l @(0x1C,r0),r7
	mul.l r2,r1
	mov.l @(0x1DC,PC),r3
	add r3,r7
	sts macl,r5
	cmp/pl r5
	bf.s loc_8c11b932
	mov 0x00,r4

loc_8c11b926:
	mov.l @r7+,r2
	add 0x02,r4
	cmp/ge r5,r4
	mov.l r2,@r6
	bf.s loc_8c11b926
	add 0x04,r6

loc_8c11b932:
	mov 0x01,r0
	rts 
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11B940:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C11BAFC,pc),r3 ; r3 set to 0x8C17CA00
	mov r15,r5
	add 0x04,r5
	jsr @r3
	mov r15,r4
	mov.l @r15,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11b960:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x194,PC),r3
	mov r15,r4
	mov r15,r5
	jsr @r3
	add 0x04,r4
	mov.l @r15,r0

loc_8c11b970:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11B980:
	mov.l r14,@-r15
	mov 0x00,r7 ; r7 set to 0x00
	mov.l r13,@-r15
	mov r7,r5 ; r5 set to 0x00
	mov.l r11,@-r15
	mov r7,r14 ; r14 set to 0x00
	mov.l r10,@-r15
	mov r7,r10 ; r10 set to 0x00
	mov.l r9,@-r15
	mov 0x01,r9 ; r9 set to 0x01
	mov.l r8,@-r15
	mov.l @(loc_8C11BB00,pc),r8 ; r8 set to bank16.loc_8c16BBE4
	mov.l @(loc_8C11BB04,pc),r13 ; r13 set to 0x8C2AA270
	bra loc_8C11B9E8
	mov r7,r11

;==============================================
	nop

;==============================================
loc_8C11B9A0:
	mov.l @r13,r0
	mov.l @(r0,r11),r0
	cmp/eq 0xFF,r0
	bt.s loc_8c11b9e0
	mov r0,r1
	mov r9,r4
	mov r7,r6

loc_8c11b9ae:
	mov r1,r2
	tst r4,r2
	bf loc_8c11b9d0
	mov.l @r13,r0
	mov.l @(r0,r14),r2
	or r4,r2
	mov.l r2,@(r0,r14)
	mov r5,r0
	bra loc_8c11b9f0              ; loc_8c11b988+0x68
	add r6,r0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11B9D0:
	shll r4
	bra loc_8c11b9ae
	add 0x01,r6

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11B9E0:
	add 0x04,r14
	add 0x04,r11
	add 0x01,r10
	add 0x20,r5

loc_8c11b9e8:
	mov.l @r8,r3
	cmp/ge r3,r10
	bf loc_8c11b9a0
	mov 0xFF,r0

loc_8c11b9f0:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	nop

;==============================================
loc_8c11ba00:
	cmp/pz r4
	bf loc_8c11ba20
	mov 0x1F,r2
	mov 0x01,r5
	and r4,r2
	shad r2,r5
	mov.l @(0xF4,PC),r2
	mov 0xFB,r3
	shad r3,r4
	mov.l @r2,r0
	mov r4,r3
	shll2 r3
	mov.l @(r0,r3),r1
	not r5,r5
	and r5,r1
	mov.l r1,@(r0,r3)

loc_8c11ba20:
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ba30:
	mov.l @(0xBC,PC),r2
	mov r5,r7
	shll2 r7
	mov.l @(0xBC,PC),r0
	shll r7
	mov 0x3C,r1
	sts.l macl,@-r15
	mov.l @r2,r3
	mov 0x00,r6
	mov.l @(0x8,r4),r5
	add r3,r7
	mov.l @r0,r2
	mov.l @(0x4,r7),r7
	mov 0xC0,r3
	and r3,r5
	mul.l r1,r7
	sts macl,r7
	add r2,r7
	mov.l @(0x30,r7),r3
	mov.l @(0x34,r7),r2
	or r3,r5
	or r2,r6
	mov.l r5,@(0x8,r4)
	mov.l r6,@(0xC,r4)
	rts 
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ba70:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x74,PC),r2
	mov.l @(0x88,PC),r12
	mov.l @r2,r14
	bra loc_8c11ba9e
	mov 0x00,r13

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ba90:
	mov.l @(0x28,r14),r2
	tst r2,r2
	bf loc_8c11ba9a
	bsr loc_8c11bbd0
	mov r14,r4

loc_8c11ba9a:
	add 0x3C,r14
	add 0x01,r13

loc_8c11ba9e:
	mov.l @r12,r2
	cmp/ge r2,r13
	bf loc_8c11ba90
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
	nop 
	mov.l @(0x5C,PC),r3
	rts 
	mov.l r4,@r3

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BAC0:
	mov r4,r0
	cmp/eq 0x08,r0
	bf loc_8C11BAD0
	bra loc_8C11BB68
	mov 0x00,r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11BAD0:
	cmp/eq 0x10,r0
	bf loc_8C11BAE0
	bra loc_8C11BB68
	mov 0x01,r4

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BAE0:
	mov r4,r0
	cmp/eq 0x20,r0
	bf loc_8C11BB20
	bra loc_8C11BB68
	mov 0x02,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11BAec:
	#data 0x8C2DEE54
loc_8C11BAf0:
	#data 0x8C2AA26c
loc_8C11BAf4:
	#data 0x8C2DE690
loc_8C11BAf8:
	#data 0xA4000000
loc_8C11BAFC:
	#data bank17.loc_8c17CA00
loc_8C11BB00:
	#data bank16.loc_8c16BBE4
loc_8C11BB04:
	#data 0x8C2AA270
loc_8C11BB08:
	#data bank17.loc_8c17C9C0
loc_8C11BB0c:
	#data 0x8C2DE694
loc_8C11BB10:
	#data bank16.loc_8c16BBE8

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BB20:
	cmp/eq 0x40,r0
	bf loc_8C11BB30
	bra loc_8C11BB68
	mov 0x03,r4

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BB30:
	mov.w @(loc_8C11BC18,pc),r3 ; r3 set to 0x80
	cmp/eq r3,r4
	bf loc_8C11BB40
	bra loc_8C11BB68
	mov 0x04,r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11BB40:
	mov.w @(loc_8C11BC1A,pc),r2 ; r2 set to 0x100
	cmp/eq r2,r4
	bf loc_8C11BB50
	bra loc_8C11BB68
	mov 0x05,r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11BB50:
	mov.w @(loc_8C11BC1C,pc),r1 ; r1 set to 0x200
	cmp/eq r1,r4
	bf loc_8C11BB60
	bra loc_8C11BB68
	mov 0x06,r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11bb60:
	mov.w @(loc_8C11BC1E,pc),r3
	cmp/eq r3,r4
	bf loc_8c11bb68
	mov 0x07,r4

loc_8C11BB68:
	rts
	mov r4,r0

;==============================================
	nop
	nop

;==============================================
loc_8C11BB70:
	mov 0x3C,r2 ; r2 set to 0x3c
	mov.l @(loc_8C11BC20,pc),r0 ; r0 set to 0x8C2DE690
	sts.l macl,@-r15
	mul.l r2,r5
	mov.l @r0,r1
	mov 0xC0,r3 ; r3 set to 0xFFFFFFC0
	mov.l @(0x08,r4),r6
	mov 0x00,r7 ; r7 set to 0x00
	sts macl,r5
	and r3,r6
	add r1,r5
	mov.l @(0x34,r5),r2 ; r2 ??? bc r5 is ???
	mov.l @(0x30,r5),r3 ; r3 ??? bc r5 is ???
	or r2,r7 ; r7 ??? bc r2 is ???
	or r3,r6
	mov.l r6,@(0x08,r4)
	mov.l r7,@(0x0C,r4)
	rts
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BBA0:
	mov.l @(0x7C,PC),r3
	mov 0x00,r7
	mov.l @(0x80,PC),r1
	mov r7,r0
	mov.l r4,@r3
	cmp/pl r5
	mov.l @(0x7C,PC),r3
	mov.l @(0x74,PC),r2
	mov.l r5,@r2
	mov.l r7,@r1
	mov.l r7,@r3
	bf.s loc_8c11bbc8
	mov 0xFF,r6

loc_8c11bbba:
	add 0x01,r0
	mov.l r6,@(0x28,r4)
	cmp/ge r5,r0
	mov.l r7,@(0x2C,r4)
	mov.l r6,@(0x38,r4)
	bf.s loc_8c11bbba
	add 0x3C,r4

loc_8c11bbc8:
	rts 
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8C11BBD0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov r4,r13
	bsr loc_8C11BAC0
	mov.l @(0x0C,r14),r4
	shll2 r0
	shll r0
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov.l r0,@r15
	and r3,r0
	mov r0,r8
	bsr loc_8C11BAC0
	mov.l @(0x10,r14),r4
	mov r8,r4
	or r0,r4
	mov.l r4,@(0x30,r13)
	mov.l @(0x18,r14),r4
	mov.l @(0x08,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C11BC30,pc),r2 ; r2 set to 0xFF800000
	or r3,r4
	mov.l @(0x1C,r14),r3
	and r2,r4
	shlr2 r3
	shlr r3
	or r3,r4
	mov.l r4,@(0x34,r13)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11BC18:
	#data 0x0080
loc_8C11BC1A:
	#data 0x0100
loc_8C11BC1C:
	#data 0x0200
loc_8c11bc1e:
	#data 0x0400
	#align4

loc_8C11BC20:
	#data 0x8C2DE690
loc_8C11BC24:
	#data 0x8C2DE694
loc_8C11BC28:
	#data 0x8C2DEE4c
loc_8C11BC2C:
	#data 0x8C2DEE54
loc_8C11BC30:
	#data 0xFF800000

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


;==============================================
loc_8C11BC40:
	mov 0x3C,r3 ; r3 set to 0x3c
	mov.l @(loc_8C11BD3C,pc),r1 ; r1 set to 0x8C2DE690
	sts.l macl,@-r15
	mul.l r3,r4
	mov.l @r1,r2
	sts macl,r4
	add r2,r4
	mov.l @(0x28,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bf loc_8C11BC60
	bra loc_8C11BBD0
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BC60:
	mov.l @(loc_8C11BD40,pc),r5 ; r5 set to 0x8C2AA274
	mov.l @(0x30,r5),r3
	mov.l r3,@(0x30,r4)
	mov.l @(0x34,r5),r2
	mov.l r2,@(0x34,r4)
	rts
	lds.l @r15+,macl

;==============================================
	nop

;==============================================
loc_8C11BC70:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(loc_8C11BD3C,pc),r3 ; r3 set to 0x8C2DE690
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C11BD48,pc),r11 ; r11 set to 0x8C2DE694
	mov.l @(loc_8C11BD44,pc),r10 ; r10 set to 0x8C17C960
	mov.l @r3,r14
	bra loc_8C11BCA4
	mov r13,r12

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11bc90:
	mov.l @(0x2C,r14),r3
	tst r3,r3
	bt loc_8c11bca0
	mov.l @(0x28,r14),r3
	tst r3,r3
	bf loc_8c11bca0
	jsr @r10
	mov r14,r4

loc_8c11bca0:
	add 0x01,r12
	add 0x3C,r14

loc_8C11BCA4:
	mov.l @r11,r3
	cmp/ge r3,r12
	bf loc_8C11BC90
	mov.l @(loc_8C11BD3C,pc),r1 ; r1 set to 0x8C2DE690
	mov 0xFF,r5 ; r5 set to 0xFFFFFFFf
	mov.l @r1,r4
	bra loc_8C11BCCa
	mov r13,r6

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BCC0:
	mov.l r5,@(0x28,r4)
	add 0x01,r6
	mov.l r13,@(0x2C,r4)
	mov.l r5,@(0x38,r4)
	add 0x3C,r4

loc_8C11BCCA:
	mov.l @r11,r2
	cmp/ge r2,r6
	bf loc_8C11BCC0
	mov.l @(loc_8C11BD4C,pc),r1 ; r1 set to 0x8C2DEE54, r1 set to 0x8C2DEE54
	mov.l @(loc_8C11BD50,pc),r3 ; r3 set to 0x8C2DEE4C, r3 set to 0x8C2DEE4c
	mov.l r13,@r1 ; r1 ??? bc r13 is ???, r1 ??? bc r13 is ???
	mov.l r13,@r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	lds.l @r15+,pr
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

;==============================================
loc_8C11BCF0:
	mov.l r14,@-r15
	mov.l @(loc_8C11BD54,pc),r14 ; r14 set to 0x8C13EF3c
	sts.l pr,@-r15
	mov.w @(0x02,r14),r0
	mov.l @(loc_8C11BD40,pc),r4 ; r4 set to 0x8C2AA274
	mov.l @(loc_8C11BD58,pc),r3 ; r3 set to 0x8C17C8A0
	mov r0,r6
	mov.l @(0x04,r14),r7
	jsr @r3
	mov.w @r14,r5
	mov.l @(loc_8C11BD5C,pc),r2 ; r2 set to 0x8C17CA40
	mov.l @(loc_8C11BD40,pc),r4 ; r4 set to 0x8C2AA274
	jsr @r2
	mov.l @(0x08,r14),r5
	lds.l @r15+,pr
	mov.l @(loc_8C11BD40,pc),r4 ; r4 set to 0x8C2AA274
	bra loc_8C11BBD0
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BD20:
	mov.l @(loc_8C11BD40,pc),r7 ; r7 set to 0x8C2AA274
	mov 0xC0,r3 ; r3 set to 0xFFFFFFC0
	mov.l @(0x08,r4),r5
	mov.l @(loc_8C11BD60,pc),r2 ; r2 set to 0xF8000000
	mov.l @(0x30,r7),r1
	and r3,r5
	mov.l @(0x0C,r4),r6
	mov.l @(0x34,r7),r0
	or r1,r5
	and r2,r6
	mov.l r5,@(0x08,r4)
	or r0,r6
	rts
	mov.l r6,@(0x0C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11BD3C:
	#data 0x8C2DE690
loc_8C11BD40:
	#data 0x8C2AA274
loc_8C11BD44:
	#data bank17.loc_8c17C960
loc_8C11BD48:
	#data 0x8C2DE694
loc_8C11BD4C:
	#data 0x8C2DEE54
loc_8C11BD50:
	#data 0x8C2DEE4c
loc_8C11BD54:
	#data bank13.loc_8c13ef3c
loc_8C11BD58:
	#data bank17.loc_8c17C8A0
loc_8C11BD5C:
	#data bank17.loc_8c17CA40
loc_8C11BD60:
	#data 0xF8000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

;==============================================
loc_8C11BD70:
	mov.l @(loc_8C11BF80,pc),r6 ; r6 set to 0x8C32B420
	mov r5,r0
	mov 0xFF,r7 ; r7 set to 0xFFFFFFFf
	mov.l r4,@(0x18,r6)  ; r6 ??? bc r4 is ???
	mov.w r0,@(0x04,r6)
	mov 0x00,r6 ; r6 set to 0x00
	bra loc_8C11BD90
	mov r0,r1
	
loc_8C11BD80:
	mov r7,r0
	mov.w r0,@(0x6,r4)
	mov.w r0,@r4
	mov.b r0,@(0x2,r4)
	mov r6,r0
	mov.w r0,@(0x4,r4)
	mov.b r0,@(0x3,r4)
	add 0x08,r4

loc_8c11bd90:
	tst r1,r1
	bf/s loc_8c11bd80
	add 0xFF,r1
	mov.l @(loc_8c11bf84,pc),r7
	mov r7,r5
	add 0x08,r5
	mov r7,r4

loc_8c11bd9e:
	mov.w r6,@r4
	add 0x02,r4
	cmp/hs r5,r4
	bf loc_8c11bd9e
	rts
	nop

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11BDB0:
	mov.l @(loc_8C11BF88,pc),r3 ; r3 set to 0x8C32B424
	mov.l @(loc_8C11BF8C,pc),r2 ; r2 set to 0x8C32B438
	mov.w @r3,r5
	bra loc_8C11BD70
	mov.l @r2,r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11BDC0:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.l @(loc_8C11BF8C,pc),r3 ; r3 set to 0x8C32B438
	shll2 r4
	shll r4
	mov.l @r3,r5
	mov 0x01,r6 ; r6 set to 0x01
	add r4,r5
	mov.w @(0x04,r5),r0
	cmp/gt r6,r0
	bf loc_8C11BDE0
	mov.w @(0x04,r5),r0
	add 0xFF,r0
	bra loc_8C11BE28
	mov.w r0,@(0x04,r5)

;==============================================
	nop

;==============================================
loc_8C11BDE0:
	mov.b @(0x03,r5),r0
	mov 0x0F,r2 ; r2 set to 0x0f
	mov.w @r5,r4
	extu.b r0,r14
	mov.l @(loc_8C11BF90,pc),r7 ; r7 set to 0x10000
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	mov.w r0,@(0x06,r5)
	and r4,r2 ; r2 ??? bc r4 is ???
	mov.w r0,@r5
	mov.b r0,@(0x02,r5)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x04,r5)
	mov r6,r5
	shad r2, r5
	mov 0xFC,r2 ; r2 set to 0xFFFFFFFc
	shad r2, r4
	mov.l @(loc_8C11BF84,pc),r2 ; r2 set to 0x8C2AA2B0
	mov.l r4,@r15
	shll r4
	bra loc_8C11BE22
	add r2,r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11BE10:
	mov.w @r4,r2
	not r5,r3
	add r5,r5
	cmp/eq r7,r5
	and r3,r2
	bf/s loc_8C11BE22
	mov.w r2,@r4
	add 0x02,r4
	mov r6,r5

loc_8C11BE22:
	cmp/pl r14
	bt/s loc_8C11BE10
	add 0xFF,r14

loc_8C11BE28:
	add 0x04,r15
	rts
	mov.l @r15+,r14

;==============================================
	nop

;==============================================
	mov.l @(0x158,PC),r2
	mov r4,r0
	shll2 r0
	mov.l @r2,r3
	shll r0
	rts 
	mov.w @(r0,r3),r0

;==============================================
	nop

;==============================================
loc_8c11be40:
	add 0xF8,r15
	mov.l @(0x148,PC),r3
	shll2 r4
	shll r4
	mov.l @r3,r6
	add r4,r6
	mov.w @(0x4,r6),r0
	tst r0,r0
	bt loc_8c11be70
	mov.w @r6,r2
	mov.l r2,@r15
	mov.b @(0x3,r6),r0
	mov.l @(0x138,PC),r2
	extu.b r0,r0
	mov r0,r6
	shll2 r6
	shll2 r6
	mov.l r0,@(0x4,r15)
	mov.l @r15,r4
	shll2 r4
	shll2 r4
	jmp @r2
	add 0x08,r15

;==============================================
	nop

;==============================================
loc_8c11be70:
	rts 
	add 0x08,r15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11BE80:
	bra loc_8c11be40
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BE90:
	mov.l r14,@-r15
	mov r4,r0
	mov.l r13,@-r15
	mov 0xFC,r3
	mov.l r12,@-r15
	add 0x0F,r5
	mov.l r11,@-r15
	cmp/eq 0x10,r0
	mov.l r10,@-r15
	shad r3,r5
	mov.l r9,@-r15
	mov 0x01,r10
	mov.l @(0xD8,PC),r9
	bf.s loc_8c11bf00
	mov 0x00,r6
	mov r6,r12
	mov 0xFF,r13
	mov r6,r4

loc_8C11BEB4:
	mov r12,r7
	mov r12,r0
	shll r0
	mov r10,r14
	shll2 r7
	mov r6,r11
	add r9,r0
	shll2 r7

loc_8C11BEC4:
	mov.w @r0,r3
	tst r14,r3
	bf loc_8c11bee0
	tst r4,r4
	bf.s loc_8c11bed2
	add 0x01,r4
	mov r7,r13

loc_8C11BED2:
	cmp/ge r5,r4
	bt loc_8c11beee
	bra loc_8c11bee2
	nop 

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11BEE0:
	mov r6,r4

loc_8C11BEE2:
	mov 0x10,r2
	add 0x01,r11
	cmp/ge r2,r11
	add r14,r14
	bf.s loc_8c11bec4
	add 0x01,r7

loc_8C11BEEE:
	mov 0x04,r2
	add 0x01,r12
	cmp/ge r2,r12
	bf loc_8c11beb4
	bra loc_8c11bf38

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BF00:
	mov r6,r7
	mov r9,r14
	mov r6,r4
	mov r9,r6
	add 0x08,r14
	shad r5,r10
	cmp/hs r14,r6
	mov 0xFF,r13
	mov r10,r12
	bt.s loc_8c11bf38             ; loc_8c11beac+0x8c
	add 0xFF,r12

loc_8c11bf16:
	mov.w @r6,r2
	tst r12,r2
	bf loc_8c11bf30
	mov r7,r13
	bra loc_8c11bf38              ; loc_8c11beac+0x8c
	mov r5,r4

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BF30:
	add 0x02,r6
	cmp/hs r14,r6
	bf.s loc_8c11bf16
	add 0x10,r7

loc_8C11BF38:
	cmp/ge r5,r4
	bt loc_8c11bf3e
	mov 0xFF,r13

loc_8C11BF3E:
	mov.l @r15+,r9
	mov r13,r0
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	nop

;==============================================
loc_8C11BF50:
	mov.l r14,@-r15
	add 0xF8,r15
	mov 0xFC,r2 ; r2 set to 0xFFFFFFFc
	mov r4,r3
	shad r2, r3
	mov.l r5,@r15
	mov 0x01,r7 ; r7 set to 0x01
	mov r3,r6
	mov 0x0F,r2 ; r2 set to 0x0f
	mov r7,r1 ; r1 set to 0x01
	and r2,r4
	mov.l @(loc_8C11BF90,pc),r14 ; r14 set to 0x10000
	shad r4, r1 ; r1 ??? bc r4 is ???
	mov.l r3,@(0x04,r15)
	mov.l @r15,r5
	mov r1,r4
	mov 0xFC,r1 ; r1 set to 0xFFFFFFFc
	add r2,r5
	shad r1, r5
	mov.l @(loc_8C11BF84,pc),r1 ; r1 set to 0x8C2AA2B0
	shll r6
	bra loc_8C11BFB0
	add r1,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11BF80:
	#data 0x8C32B420
loc_8C11BF84:
	#data 0x8C2AA2B0
loc_8C11BF88:
	#data 0x8C32B424
loc_8C11BF8C:
	#data 0x8C32B438
loc_8C11BF90:
	#data 0x00010000
loc_8C11BF94:
	#data loc_8c11F7F0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BFA0:
	mov.w @r6,r3
	or r4,r3
	add r4,r4
	cmp/ge r14,r4
	bf/s loc_8C11BFB0
	mov.w r3,@r6
	mov r7,r4
	add 0x02,r6

loc_8C11BFB0:
	cmp/pl r5
	bt/s loc_8C11BFA0
	add 0xFF,r5
	add 0x08,r15
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop

;==============================================
loc_8C11BFC0:
	mov.l @(loc_8C11C018,pc),r4 ; r4 set to 0x8C32B420
	mov.b @r4,r3
	tst r3,r3
	bt loc_8C11BFE0
	mov 0x00,r1 ; r1 set to 0x00
	mov.l @(loc_8C11C020,pc),r3 ; r3 set to 0x8C17A7C8
	mov.b r1,@r4 ; r4 ??
	mov.l @(loc_8C11C01C,pc),r4 ; r4 set to 0x8C32B4A0
	jmp @r3
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BFE0:
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11BFF0:
	mov r4,r3
	mov.l r4,@-r15
	mov.l @(loc_8C11C024,pc),r2 ; r2 set to 0x8C32B421
	mov.l @(loc_8C11C028,pc),r0 ; r0 set to 0x8C13EF4c
	mov.b r3,@r2 ; r2 ??? bc r3 is ???
	mov.l @r15,r4
	mov.l @(loc_8C11C02C,pc),r3 ; r3 set to 0x8C17A7A0
	shll2 r4
	mov.l @(r0,r4),r4
	jmp @r3
	add 0x04,r15

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C010:
	mov.l @(loc_8C11C030,pc),r3 ; r3 set to bank16.loc_8c16BBEc
	rts
	mov.l r4,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11C018:
	#data 0x8C32B420
loc_8C11C01C:
	#data 0x8C32B4A0
loc_8C11C020:
	#data bank17.loc_8c17A7C8
loc_8C11C024:
	#data 0x8C32B421
loc_8C11C028:
	#data bank13.loc_8c13ef4c
loc_8C11C02C:
	#data bank17.loc_8c17A7A0
loc_8C11C030:
	#data bank16.loc_8c16BBEc
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

;==============================================
loc_8c11c040:
	mov.l @(0xE0,PC),r0
	rts 
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11c050:
	mov.l @(0xD4,PC),r3
	rts 
	mov.l r4,@r3
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C060:
	mov.l @(loc_8C11C128,pc),r1 ; r1 set to bank16.loc_8c16BBF0
	mov.l @r1,r2
	rts
	mov.l r2,@(0x04,r4)

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C070:
	add 0xF8,r15
	mov.l @(0xB8,PC),r3
	mov 0x00,r6
	mov.l r6,@r3
	mov.l @(0xB4,PC),r1
	mov.w @(0xA4,PC),r2
	mov.l r2,@r1
	mov.l @(0xBC,PC),r7
	mov.l @(0xB4,PC),r4
	mov.l @(0xB0,PC),r5
	bra loc_8c11c0ae
	mov.l r4,@r5

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C090:
	bra loc_8c11c0a6
	mov.l r6,@r15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C0A0:
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15

loc_8C11C0A6:
	mov.l @r15,r3
	cmp/ge r7,r3
	bf loc_8c11c0a0
	mov.l r4,@r5

loc_8C11C0AE:
	mov.l @r5,r3
	cmp/eq r4,r3
	mov.l r3,@(0x4,r15)
	bf loc_8c11c090
	rts 
	add 0x08,r15

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11C0C0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r3
	mov.l @(0x78,PC),r4
	jsr @r3
	nop 
	mov.l @(0x78,PC),r2
	jsr @r2
	nop 
	mov.l @(0x78,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x74,PC),r2
	mov.l @r2,r14
	tst r14,r14
	bt loc_8c11c0e4
	jsr @r14
	nop 

loc_8C11C0E4:
	mov.l @(0x70,PC),r2
	mov.l @(0x6C,PC),r4
	jsr @r2
	nop 
	mov.l @(0x6C,PC),r3
	mov.l @r3,r14
	tst r14,r14
	bt loc_8c11c0f8
	jsr @r14
	nop 

loc_8C11C0F8:
	mov.l @(0x64,PC),r3
	mov.l @(0x58,PC),r4
	jsr @r3
	nop 
	mov.l @(0x60,PC),r2
	mov.l @(0x3C,PC),r4
	jsr @r2
	nop 
	mov.l @(0x60,PC),r0
	mov.l @(0x34,PC),r2
	mov.l @(0x58,PC),r1
	mov.l @r2,r3
	mov.l r3,@r1
	mov.l @r0,r14
	tst r14,r14
	bt loc_8c11c11c
	jsr @r14
	nop 

loc_8C11C11C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11c122:
	#data 0x1201
	#align4

loc_8C11C124:
	#data bank13.loc_8c13f761
loc_8C11C128:
	#data bank16.loc_8c16BBF0
loc_8C11C12C:
	#data 0xFFA00020
loc_8C11C130:
	#data 0xFFA0002c
loc_8C11C134:
	#data 0xFFA00040
loc_8C11C138:
	#data 0x00008201
loc_8C11C13c:
	#data 0x00010000
loc_8C11C140:
	#data 0x8C2DB048
loc_8C11C144:
	#data bank17.loc_8c17B880
loc_8C11C148:
	#data bank12.loc_8c122280
loc_8C11C14C:
	#data bank17.loc_8c17B420
loc_8C11C150:
	#data bank16.loc_8c16BC04
loc_8C11C154:
	#data 0x8C2AA2B8
loc_8C11C158:
	#data bank17.loc_8c17BA20
loc_8C11C15C:
	#data bank16.loc_8c16BC08
loc_8C11C160:
	#data bank17.loc_8c17B660
loc_8C11C164:
	#data bank17.loc_8c17B4C0
loc_8C11C168:
	#data 0x8C2AA508
loc_8C11C16C:
	#data bank16.loc_8c16BC0c

;==============================================
loc_8C11C170:
	mov.l r14,@-r15
	mov.l r13,@-r15
	add 0xFC,r15
	mov.l @(loc_8C11C2B0,pc),r14 ; r14 set to 0x8C2DEC98
	mov r4,r13
	mov.l @(loc_8C11C2B4,pc),r2 ; r2 set to 0x600608
	shll2 r13
	mov.l @r14,r3
	mov.l @(loc_8C11C2B8,pc),r1 ; r1 set to 0x8C13F0C4
	mov.l r2,@r3
	mov r4,r2 ; r2 ??? bc r4 is ???
	add r2,r13
	mov.l @r14,r3
	shll2 r13
	add r1,r13
	mov.l @r13,r2
	mov r13,r5
	add 0x04,r5
	mov r13,r6
	mov.l r2,@(0x08,r3)
	add 0x0C,r6
	mov.l @r5,r2
	mov.l @r14,r3
	mov.l r2,@(0x0C,r3)
	mov r13,r2
	add 0x08,r2
	mov.l @r14,r3
	mov.l r2,@r15
	mov.l @r2,r0
	mov.l r0,@(0x20,r3)
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @r6,r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.l @r14,r3
	mov r13,r7
	add 0x10,r7
	mov.l @r7,r2
	mov 0x40,r0 ; r0 set to 0x40
	mov.l @(loc_8C11C2BC,pc),r4 ; r4 set to 0x8C2AA524
	mov.l r2,@(r0,r3)
	mov.l @r13,r3
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	mov.l @r5,r2
	mov.l r2,@(0x04,r4)
	mov.l @r15,r3
	mov.l @r3,r2
	mov.l r2,@(0x08,r4)
	mov.l @r6,r3
	mov.l r3,@(0x0C,r4)
	mov.l @r7,r2
	mov.l r2,@(0x10,r4)
	mov.l @r14,r4
	add 0x04,r15
	mov.l @(loc_8C11C2C0,pc),r3 ; r3 set to 0x8C17BF80
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c1f0:
	mov.l @(0xBC,PC),r5
	mov r4,r2
	mov.w @(0xB2,PC),r0
	shll2 r4
	mov.l @r5,r6
	add r2,r4
	shll2 r4
	mov.l @r5,r3
	mov.l @(r0,r6),r6
	mov.l @(0xC0,PC),r0
	mov.l @(r0,r4),r1
	mov.l @(0xC0,PC),r4
	mov.l r1,@(0x20,r3)
	mov.l @r5,r3
	and r6,r4
	mov.w @(0x98,PC),r0
	mov.l @(0x20,r3),r2
	shll16 r2
	shll8 r2
	or r2,r4
	rts 
	mov.l r4,@(r0,r3)


;==============================================
	nop
	nop

;==============================================
;unused?
loc_8c11c220:
	mov.l @(0x8C,PC),r5
	mov 0x15,r2
	mov.w @(0x84,PC),r0
	mov.l @r5,r6
	mov.l @r5,r3
	mov.l @(r0,r6),r6
	mov 0x54,r0
	mov.l r4,@(r0,r3)
	mov 0x40,r0
	mov.l @r5,r3
	mov.l @(0x94,PC),r4
	mov.l @(r0,r3),r3
	add 0x58,r0
	and r6,r4
	shld r2,r3
	or r3,r4
	mov.l @r5,r3
	rts 
	mov.l r4,@(r0,r3)

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c250:
	mov.l @(0x5C,PC),r5
	mov.w @(0x56,PC),r0
	mov.l @r5,r6
	mov.l @r5,r3
	mov.l @(r0,r6),r6
	mov 0x54,r0
	mov.l r4,@(r0,r3)
	mov 0x44,r0
	mov.l @r5,r3
	mov.l @(0x6C,PC),r4
	mov.l @(r0,r3),r2
	add 0x54,r0
	and r6,r4
	shll16 r2
	shll2 r2
	shll2 r2
	or r2,r4
	rts 
	mov.l r4,@(r0,r3)

;==============================================
	nop
	nop
	nop
	nop
	nop
;==============================================
;unused?
loc_8c11c280:
	mov.l @(0x2C,PC),r5
	shll2 r4
	mov.w @(0x24,PC),r0
	mov.l @r5,r6
	mov.l @r5,r3
	mov.l @(r0,r6),r6
	mov.l @(0x44,PC),r0
	mov.l @(r0,r4),r2
	mov 0x54,r0
	mov.w @(0x18,PC),r4
	mov.l r2,@(r0,r3)
	mov 0x0D,r2
            ; CODE XREF from loc_8c11b810 (+0x6c)
	mov.l @r5,r3
	and r6,r4
	mov.l @(r0,r3),r3
	add 0x44,r0
	shld r2,r3
	or r3,r4
            ; CODE XREF from loc_8c11b810 (+0x70)
	mov.l @r5,r3
	rts 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11c2a8:
	#data 0x0346
loc_8c11c2aa:
	#data 0x0094
loc_8c11c2ac:
	#data 0x0098
loc_8c11c2ae:
	#data 0x9FFF
	#align4

loc_8C11C2B0:
	#data 0x8C2DEC98
loc_8C11C2B4:
	#data 0x00600608
loc_8C11C2B8:
	#data bank13.loc_8c13f0C4
loc_8C11C2BC:
	#data 0x8C2AA524
loc_8C11C2C0:
	#data bank17.loc_8c17BF80
loc_8C11C2C4:
	#data bank13.loc_8c13f0Cc
loc_8C11C2C8:
	#data 0xFCFFFFFf
loc_8C11C2Cc:
	#data 0xFFDFFFFf
loc_8C11C2d0:
	#data 0xFFEFFFFf
loc_8C11C2D4:
	#data bank13.loc_8c13f494

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C2E0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C11C434,pc),r3 ; r3 set to 0x3F3FFFf
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x40,r0 ; r0 set to 0x40
	sts.l pr,@-r15
	mov.l r3,@r14
	mov 0x08,r3 ; r3 set to 0x08
	mov 0x06,r2 ; r2 set to 0x06
	mov.l r4,@(0x04,r14)
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r4,@(0x08,r14)
	mov 0x04,r5 ; r5 set to 0x04
	mov.l r6,@(0x0C,r14)
	mov.l r4,@(r0,r14)
	mov.l r4,@(0x10,r14)
	mov.l r5,@(0x14,r14)
	mov.l r4,@(0x18,r14)
	mov.l r6,@(0x20,r14)
	mov.l r4,@(0x24,r14)
	mov.l r4,@(0x28,r14)
	mov.l r3,@(0x2C,r14)
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r2,@(0x30,r14)
	mov.l r4,@(0x34,r14)
	mov.l r4,@(0x38,r14)
	mov.l r3,@(0x3C,r14)
	mov.l r4,@(r0,r14)
	mov 0x44,r0 ; r0 set to 0x44
	mov.l r4,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r4,@(r0,r14)
	mov 0x4C,r0 ; r0 set to 0x4c
	fldi1 fr4
	mov.l r4,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l r4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l r4,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	mov.l r4,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l r5,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r3,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.l r4,@(r0,r14)
	mov 0x64,r0 ; r0 set to 0x64
	mov.l r4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	mov.l r4,@(r0,r14)
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s fr4,@(r0,r14)
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr4,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x84
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x88
	mov.l @(loc_8C11C438,pc),r3 ; r3 set to 0x8C17BF80
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x8c
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_8C11C440,pc),r2 ; r2 set to 0x8C17C6C0
	mov r14,r5 ; r5 ??? bc r14 is ???
	mov.l @(loc_8C11C43C,pc),r4 ; r4 set to 0x8C2DB048
	jmp @r2
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11C380:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C11C434,pc),r3 ; r3 set to 0x3F3FFFf
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x40,r0 ; r0 set to 0x40
	sts.l pr,@-r15
	mov.l r3,@r14
	mov 0x0A,r3 ; r3 set to 0x0a
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.l r4,@(0x04,r14)
	mov 0x01,r5 ; r5 set to 0x01
	mov.l r4,@(0x08,r14)
	mov 0x04,r6 ; r6 set to 0x04
	mov.l r4,@(0x0C,r14)
	mov.l r4,@(r0,r14)
	mov.l r4,@(0x10,r14)
	mov.l r6,@(0x14,r14)
	mov.l r4,@(0x18,r14)
	mov.l r5,@(0x20,r14)
	mov.l r4,@(0x24,r14)
	mov.l r4,@(0x28,r14)
	mov.l r3,@(0x2C,r14)
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r2,@(0x30,r14)
	mov.l r4,@(0x34,r14)
	mov.l r4,@(0x38,r14)
	mov.l r3,@(0x3C,r14)
	mov.l r4,@(r0,r14)
	mov 0x44,r0 ; r0 set to 0x44
	mov.l r4,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r5,@(r0,r14)
	mov 0x4C,r0 ; r0 set to 0x4c
	fldi1 fr4
	mov.l r4,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l r4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l r4,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	mov.l r4,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l r6,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	mov.l r5,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.l r4,@(r0,r14)
	mov 0x64,r0 ; r0 set to 0x64
	mov.l r4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	mov.l r4,@(r0,r14)
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s fr4,@(r0,r14)
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr4,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x84
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x88
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x8c
	mov.l @(loc_8C11C438,pc),r3 ; r3 set to 0x8C17BF80
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_8C11C444,pc),r2 ; r2 set to 0x8C17CF80
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C420:
	mov.l @(loc_8C11C44C,pc),r3 ; r3 set to 0x8C11D630
	mova @(loc_8C11C448,pc),r0  ; r0 init to 0x8C11C448
	jmp @r3
	fmov.s @r0,fr4

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C430:
	rts 
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11C434:
	#data 0x03F3FFFf
loc_8C11C438:
	#data bank17.loc_8c17BF80
loc_8C11C43C:
	#data 0x8C2DB048
loc_8C11C440:
	#data bank17.loc_8c17C6C0
loc_8C11C444:
	#data bank17.loc_8c17CF80
loc_8C11C448:
	#data 0x47C35000
loc_8C11C44C:
	#data loc_8c11D630

;==============================================
loc_8c11c450:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	mov.l @(loc_8C11C504,pc),r4
	mov 0x00,r14
	mov r5,r9
	tst r13,r13
	mov.l r6,@(0x04,r15)
	mov.l r7,@r15
	mov.l r14,@r4
	bt/s loc_8c11c486
	mov 0x01,r11
	mov r13,r0
	cmp/eq 0x15,r0
	bt loc_8c11c486
	mov r13,r0
	cmp/eq 0x15,r0
	bt loc_8c11c486
	mov r13,r0
	cmp/eq 0x15,r0
	bf loc_8c11c488

loc_8c11c486:
	mov.l r11,@r4

loc_8c11c488:
mov r13,r0
	mov.l @(loc_8C11C508,pc),r10
	cmp/eq 0x19,r0
	bt/s loc_8c11c4a4
	mov.l r14,@r10
	mov r13,r0
	cmp/eq 0x18,r0
	bt loc_8c11c4a4
	mov r13,r0
	cmp/eq 0x1A,r0
	bt loc_8c11c4a4
	mov r13,r0
	cmp/eq 0x1B,r0
	bf loc_8c11c4a6

loc_8c11c4a4:
	mov.l r11,@r10

loc_8c11c4a6:
	stc sr, r0
	mov.w @(loc_8C11C4FE,pc),r3
	and r3,r0
	or 0xE0,r0
	ldc r0, sr
	mov.l @(loc_8C11C510,pc),r1
	mov 0x08,r2
	mov.l @(loc_8C11C50C,pc),r4
	mov.l @r1,r3
	cmp/ge r2,r3
	bf loc_8c11c4c0
	bra loc_8c11c4c2
	mov.l r11,@r4

loc_8c11c4c0:
	mov.l r14,@r4

loc_8c11c4c2:
	mov.l @(loc_8C11C514,pc),r2
	bsr loc_8c11c070
	ldc r2, gbr
	mov.w @(loc_8C11C500,pc),r3
	mov r14,r0
	mov.l @(loc_8C11C518,pc),r12
	tst r9,r3
	mov.w r0,@(0x08,r12)
	bt/s loc_8c11c4da
	mov.w r0,@(0x0A,r12)
	mov r11,r0
	mov.w r0,@(0x08,r12)

loc_8c11c4da:
	mov.l @(loc_8C11C51C,pc),r3
	tst r9,r3
	bt/s loc_8c11c4e6
	mov 0x0F,r3
	mov r11,r0
	mov.w r0,@(0x0A,r12)

loc_8c11c4e6:
	mov.l @(loc_8c11c520,pc),r0
	and r3,r9
	shll2 r9
	mov.l @(loc_8C11C524,pc),r1
	mov.l @(r0,r9),r2
	mov.l r2,@r1
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c11c530
	mov.l @(loc_8C11C528,pc),r4
	bra loc_8c11c532
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11C4FE:
	#data 0xFF0F
loc_8C11C500:
	#data 0x0080
	#align4

loc_8C11C504:
	#data 0x8C2AA518
loc_8C11C508:
	#data 0x8C2AA51C
loc_8C11C50C:
	#data 0x8C2AA4C0
loc_8C11C510:
	#data 0xA05F689C
loc_8C11C514:
	#data 0x8C32B420
loc_8C11C518:
	#data 0x8C2DEE5C
loc_8C11C51C:
	#data 0x00008000
loc_8c11c520:
	#data bank13.loc_8c13f0ac
loc_8C11C524:
	#data 0x8C2AA538
loc_8C11C528:
	#data 0x00010000

;==============================================
	nop
	nop

;==============================================
loc_8c11c530:
	mov 0x00,r4

loc_8c11c532:
	mov.l @(loc_8c11c648,pc),r1
	jsr @r1
	nop
	mov.l @r10,r0
	cmp/eq 0x01,r0
	bf loc_8c11c546
	mov.l @(loc_8c11c650,pc),r2
	mov.l @(loc_8c11c64c,pc),r4
	jsr @r2
	mov 0x00,r5

loc_8c11c546:
	mov.w @(0x0A,r12),r0
	mov r13,r11
	mov r13,r2
	shll r11
	mov r0,r7
	mov.l @(loc_8C11C654,pc),r3
	add r2,r11
	mov.l @(loc_8c11c658,pc),r1
	mov.w @(0x08,r12),r0
	shll2 r11
	mov.l @r3,r5
	add r1,r11
	mov.l @(loc_8c11c65c,pc),r2
	mov r0,r6
	jsr @r2
	mov.l @(0x04,r11),r4
	mov.w @(0x08,r11),r0
	mov 0xFF,r3
	mov.l @(loc_8C11C670,pc),r4
	mov.w r0,@(0x04,r12)
	mov.w @(0x0A,r11),r0
	fldi0 fr4
	mov.w r0,@(0x06,r12)
	mov 0x04,r0
	mov.l @(loc_8C11C660,pc),r2
	fldi1 fr3
	mov.l r3,@r2
	mov.l @(loc_8C11C66C,pc),r2
	mov.l @(loc_8C11C668,pc),r3
	mov.l @(loc_8C11C664,pc),r1
	mov.l r14,@r1
	mov.l r14,@r3
	mov.l r14,@r2
	fmov.s fr4,@r4
	fmov.s fr4,@(r0,r4)
	mov 0x08,r0
	fmov.s fr4,@(r0,r4)
	mov 0x0C,r0
	fmov.s fr4,@(r0,r4)
	mov 0x28,r0
	mov.l @(loc_8C11C674,pc),r4
	mov.l r14,@r4
	mov.l r14,@(0x04,r4)
	mov.l r14,@(0x08,r4)
	mov.l r14,@(0x0C,r4)
	mov.l @(loc_8C11C678,pc),r4
	fmov.s fr3,@(r0,r4)
	mov 0x44,r0
	mov.l @(loc_8C11C67C,pc),r1
	mov 0x0C,r3
	mov r3,r2
	mov.l r14,@(r0,r4)
	mov.l r3,@r1
	mov.l @(loc_8C11C680,pc),r3
	mov.l @(loc_8C11C688,pc),r4
	mov.l r2,@r3
	mov.l @(loc_8C11C684,pc),r2
	mov.l @(0x04,r15),r0
	bsr loc_8c11c980
	mov.l r0,@r2
	mov.l @(loc_8c11c68c,pc),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8C11C694,pc),r1
	mov 0x68,r3
	mov.l @(loc_8C11C690,pc),r2
	mov.l @(loc_8C11C698,pc),r0
	mov.l r14,@r2
	mov.l r3,@r1
	mov.l @(loc_8c11c6a0,pc),r2
	mov.l @(loc_8C11C69C,pc),r3
	mov.l r14,@r0
	stc sr, r0
	mov.l r14,@r3
	mov.l r14,@r2
	mov.w @(loc_8C11C646,pc),r2
	mov.l @(loc_8c11c6a8,pc),r3
	mov.l @(loc_8c11c6a4,pc),r1
	and r2,r0
	mov.l r14,@r1
	mov.l r14,@r3
	ldc r0, sr
	add 0x08,r15
	lds.l @r15+,pr
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

;==============================================
;unused?
	bra loc_8c11c450
	mov 0x01,r7

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C610:
	bra loc_8C11C450
	mov 0x00,r7

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8C11C620:
	mov.l @(0x88,PC),r2
	mov.l @(0x60,PC),r3
	jmp @r2
	mov.l r4,@r3

;==============================================
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c630:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x78,PC),r2
	mov r4,r3
	mov.l r4,@r15
	jsr @r2
	mov.l r4,@-r15
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11c646:
	#data 0xFF0F
	#align4

loc_8C11C648:
	#data bank17.loc_8c17B0C0
loc_8C11C64C:
	#data loc_8c11C060
loc_8C11C650:
	#data bank17.loc_8c17AF00
loc_8c11c654:
	#data 0x8C2AA538
loc_8C11C658:
	#data bank13.loc_8c13ef5c
loc_8C11C65C:
	#data bank17.loc_8c17B220
loc_8c11c660:
	#data 0x8C2DEE50
loc_8c11c664:
	#data 0x8C2DEE58
loc_8c11c668:
	#data 0x8C2DEE68
loc_8c11c66c:
	#data 0x8C2DEE4c
loc_8c11c670:
	#data 0x8C2DEE7c
loc_8c11c674:
	#data 0x8C2DEE6c
loc_8c11c678:
	#data 0x8C32B420
loc_8c11c67c:
	#data 0xFF000038
loc_8c11c680:
	#data 0xFF00003c
loc_8c11c684:
	#data 0x8C2AA520
loc_8c11c688:
	#data 0x00200000
loc_8C11C68C:
	#data loc_8c11D5A0
loc_8c11c690:
	#data 0x8C2AA540
loc_8c11c694:
	#data 0x8C2AA4C4
loc_8c11c698:
	#data 0x8C2AA50c
loc_8c11c69c:
	#data 0x8C2AA510
loc_8C11C6A0:
	#data bank16.loc_8c16BC04
loc_8C11C6A4:
	#data bank16.loc_8c16BC08
loc_8C11C6A8:
	#data bank16.loc_8c16BC0c
loc_8C11C6AC:
	#data bank17.loc_8c17CBA0
loc_8C11C6B0:
	#data bank17.loc_8c17A5E0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c6c0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x114,PC),r2
	mov r4,r3
	mov.l r4,@r15
	jsr @r2
	mov.l r4,@-r15
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

;==============================================
loc_8c11c6e0:
	mov.l @(0xFC,PC),r3
	jmp @r3
	nop 
;==============================================

	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c6f0:
	mov.l @(0xF0,PC),r5
	shll2 r4
	mov.w @(0xE0,PC),r0
	mov.l @r5,r6
	mov.l @(0xF0,PC),r1
	mov.l @(r0,r6),r6
	mov.l @(0xE8,PC),r0
	and r1,r6
	mov.l @r5,r3
	mov.l @(r0,r4),r2
	mov.w @(0xD0,PC),r0
	or r6,r2
	rts 
	mov.l r2,@(r0,r3)

;==============================================
	nop
	nop

;==============================================
;unused?
loc_8c11c6710:
	mov.l @(0xDC,PC),r3
	jmp @r3

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C720:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C11C7F4,pc),r3 ; r3 set to 0xFF000000
	mov.l @(loc_8C11C7F8,pc),r1 ; r1 set to 0x8C17E200
	or r3,r4
	mov r4,r2
	mov.l r4,@r15
	jsr @r1
	mov.l r4,@-r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c740:
	mov.l @(0xB8,PC),r3
	mov 0x05,r4
	mov.l @(0xB8,PC),r5
	mov.l @r3,r6

loc_8c11c748:
	mov.l @r6+,r3
	add 0xFF,r4
	tst r4,r4
	mov.l r3,@r5
	bf.s loc_8c11c748
	add 0x04,r5
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c760:
	mov.l @(0x98,PC),r3
	mov 0x05,r5
	mov.l @(0x98,PC),r6
	mov.l @r3,r7

loc_8c11c768:
	mov.l @r7+,r1
	dt r5
	mov.l @r6+,r3
	sub r3,r1
	mov.l r1,@r4
	bf.s loc_8c11c768
	add 0x04,r4
	rts 
	nop 

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11c780:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0x70,PC),r3
	mov 0x03,r13
	mov.l @(0x70,PC),r9
	mov 0x01,r10
	mov.l @r3,r0
	mov 0x00,r12
	mov.l @(0x2C,r15),r14
	mov 0x05,r11
	mov.l @r0,r0
	mov.l r4,@r15
	shlr16 r0
	mov.l r5,@(0x4,r15)
	and r0,r13
	mov.l r6,@(0x8,r15)
	mov.l r7,@(0xC,r15)

loc_8c11c7ae:
	mov r14,r3
	tst r10,r3
	bt loc_8c11c7be
	mov.l @(0x54,PC),r4
	mov r12,r6
	mov r15,r7
	jsr @r9
	mov r13,r5

loc_8c11c7be:
	add 0x01,r12
	shar r14
	cmp/ge r11,r12
	bf loc_8c11c7ae
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13

loc_8c11c7d4:
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c11c7d8:
	#data 0x0094
	#align4

loc_8C11C7DC:
	#data bank17.loc_8c17A6A0
loc_8C11C7E0:
	#data bank17.loc_8c17A620
loc_8C11C7E4:
	#data 0x8C2DEC98
loc_8C11C7E8:
#data bank13.loc_8c13f4A4
loc_8C11C7Ec:
	#data 0xE7FFFFFf
loc_8C11C7F0:
	#data bank17.loc_8c17E360
loc_8C11C7F4:
	#data 0xFF000000
loc_8C11C7F8:
	#data bank17.loc_8c17E200
loc_8C11C7Fc:
	#data 0x8C2AA508
loc_8C11C800:
	#data 0x8C2AA544
loc_8C11C804:
	#data 0x8C2DB04c
loc_8C11C808:
	#data bank17.loc_8c17BCA0
loc_8C11C80c:
	#data 0x8C2DB048

;==============================================
;unused?
loc_8c11c810:
	mov 0x03,r3
	and r3,r4
	mov r4,r0
	cmp/eq 0x01,r0
	bf loc_8c11c81c
	mov 0x00,r4

loc_8c11c81c:
	mov.l @(0x108,PC),r3
	rts 
	mov.l r4,@r3

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11c830:
	mov.l @(0xF8,PC),r1
	shll16 r5
	mov.l @(0xF8,PC),r3
	mov.l @r1,r2
	or r3,r5
	rts 
	mov.l r5,@r2

;==============================================
	nop

;==============================================
loc_8c11c840:
	mov 0x01,r5
	mov.l r14,@-r15
	mov r5,r3
	add 0x7F,r3
	sts.l pr,@-r15
	mov 0x00,r6
	mov.l @(0xE4,PC),r14
	tst r4,r3
	mov r6,r0
	bt.s loc_8c11c85a
	mov.w r0,@(0x8,r14)
	mov r5,r0
	mov.w r0,@(0x8,r14)

loc_8c11c85a:
	mov.l @(0xDC,PC),r3
	mov r6,r0
	tst r3,r4
	bt.s loc_8c11c868
	mov.w r0,@(0xA,r14)
	mov r5,r0
	mov.w r0,@(0xA,r14)

loc_8c11c868:
	mov.w @(0xA,r14),r0
	mov.l @(0xD0,PC),r3
	mov r0,r5
	mov.w @(0x8,r14),r0
	jsr @r3
	mov r0,r4
	mov.l @(0xC8,PC),r14
	mov.l @(0x4,r14),r5
	mov.l @(0x8,r14),r6
	bsr loc_8c11c420
	mov.l @r14,r4
	mov.l @(0xC4,PC),r3
	mov.l @(0xC4,PC),r2
	fmov @r3,fr7
	mov.l @(0xC8,PC),r3
	mov.l @(0xC4,PC),r1
	lds.l @r15+,pr
	fmov @r2,fr6
	mov.l @(0xC4,PC),r2
	fmov @r1,fr5
	fmov @r3,fr4
	jmp @r2
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11c8a0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov r15,r4
	mov.l @r15,r0
	add 0x04,r15
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

;==============================================
;unused?
loc_8c11c8c0:
	mov.l @(0x98,PC),r3
	jmp @r3
	mov 0x00,r5
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c8d0:
	mov.l @(0x8C,PC),r3
	jmp @r3
	mov 0x00,r5

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c8e0:
	mov.l @(0x80,PC),r3
	jmp @r3
	mov 0x00,r5

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c8f0:
	mov.l @(0x74,PC),r3
	jmp @r3
	mov 0x00,r5

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c900:
	mov.l @(0x68,PC),r3
	jmp @r3
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c910:
	mov.l @(0x5C,PC),r3
	jmp @r3
	mov 0x00,r5

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11c920:
	mov.l @(0x50,PC),r3
	jmp @r3
	mov 0x00,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11C928:
	#data bank16.loc_8c16BBF4
loc_8C11C92c:
	#data 0x8C2DB04c
loc_8C11C930:
	#data 0x00800000
loc_8C11C934:
	#data 0x8C2DEE5c
loc_8C11C938:
	#data 0x00008000
loc_8C11C93C:
	#data bank17.loc_8c17B040
loc_8C11C940:
	#data bank16.loc_8c16BBF8
loc_8C11C944:
	#data 0x8C2D6BA4
loc_8C11C948:
	#data 0x8C2D6BA0
loc_8C11C94c:
	#data 0x8C2D6BAc
loc_8C11C950:
	#data 0x8C2D6BA8
loc_8C11C954:
	#data bank12.loc_8c122160
loc_8C11C958:
	#data bank17.loc_8c17AC80
loc_8C11C95C:
	#data bank17.loc_8c17AE00
loc_8C11C960:
	#data bank17.loc_8c17AE40
loc_8C11C964:
	#data bank17.loc_8c17AFC0
loc_8C11C968:
	#data bank17.loc_8c17AEC0
loc_8C11C96C:
	#data bank17.loc_8c17AB8c
loc_8C11C970:
	#data bank17.loc_8c17AF80
loc_8C11C974:
	#data bank17.loc_8c17AF40

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11C980:
	mov.w @(0x100,PC),r3
	mov 0x00,r6
	mov.l @(0x104,PC),r5
	shll2 r4
	mov.l @(0x108,PC),r2
	mov.l r3,@r5
	mov.l @(0x108,PC),r3
	mov.l @(0x100,PC),r7
	mov.w @(0xF4,PC),r1
	mov.l r6,@(0x4,r5)
	mov.l r2,@r7
	mov.l r3,@(0x4,r7)
	mov.w @(0xEA,PC),r3
	mov.l r7,@(0x8,r5)
	mov 0x02,r7
	mov.l r7,@(0xC,r5)
	mov.l @(0x4,r5),r2
	or r3,r2
	mov.l r2,@(0x4,r5)
	mov.w @(0xE0,PC),r2
	mov.l r4,@(0x14,r5)
	mov.l r1,@(0x18,r5)
	mov.l r2,@(0x1C,r5)
	mov.l @(0xEC,PC),r1
	mov.l @(0xEC,PC),r2
	mov.l r1,@(0x20,r5)
	mov.l r2,@(0x24,r5)
	mov.l @(0xEC,PC),r1
	mov.l @(0xEC,PC),r2
	mov.l r7,@(0x28,r5)
	mov.l r1,@(0x2C,r5)
	mov.l r2,@(0x30,r5)
	mova @(0xE8,PC),r0
	mov r5,r2
	add 0x48,r2
	fldi0 fr4
	mov 0x01,r1
	mov.l @(0xF0,PC),r3
	mov.l r1,@(0x34,r5)
	mov.l @(0xE8,PC),r1
	mov.l r6,@(0x38,r5)
	fmov @r0,fr3
	mova @(0xD8,PC),r0
	fmov fr3,@r2
	mov 0x03,r2
	fmov @r0,fr3
	mov 0x4C,r0
	fmov fr3,@(r0,r5)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r5)
	mov 0x54,r0
	fmov fr4,@(r0,r5)
	mov 0x58,r0
	fmov fr4,@(r0,r5)
	mov 0x44,r0
	mov.l r6,@(r0,r5)
	mov.l r2,@r1
	rts 
	mov.l r6,@r3

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11CA00:
	mov.l @(loc_8C11CAC0,pc),r3 ; r3 set to 0x8C2AA2Cc
	shll2 r4
	rts
	mov.l r4,@r3

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CA10:
	mov.l @(loc_8C11CAC4,pc),r2 ; r2 set to 0x8C2AA4C0
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8C11CA30
	mov.l @(loc_8C11CA8C,pc),r4 ; r4 set to 0x8C2AA2B8
	mov 0x44,r0 ; r0 set to 0x44
	mov 0x00,r1 ; r1 set to 0x00
	mov.l r1,@(r0,r4)  ; r4 ??
	mov 0x02,r3 ; r3 set to 0x02
	mov.l @(0x04,r4),r0 ; r0 ??? bc r4 is ???
	mov.l @(loc_8C11CAB8,pc),r1 ; r1 set to 0x8C2AA4B8
	or 0x10,r0
	mov.l r0,@(0x04,r4)
	bra loc_8C11CA40
	mov.l r3,@r1

;==============================================
	nop

;==============================================
loc_8C11CA30:
	mov.l @(loc_8C11CAC8,pc),r3 ; r3 set to 0x8C17ADA8
	mov 0x00,r5 ; r5 set to 0x00
	jmp @r3
	mov 0x01,r4

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CA40:
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11ca50:
	mov.l @(0x70,PC),r3
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bf loc_8c11ca70
	mov.l @(0x30,PC),r4
	mov 0x44,r0
	mov 0x00,r1
	mov.l r1,@(r0,r4)
	mov 0xEF,r2
	mov.l @(0x4,r4),r1
	mov 0x03,r3
	and r2,r1
	mov.l r1,@(0x4,r4)
	mov.l @(0x4C,PC),r1
	bra loc_8c11ca80
	mov.l r3,@r1

loc_8c11ca70:
	mov.l @(0x54,PC),r2
	mov 0x00,r5
	jmp @r2
	mov r5,r4

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ca80:
	rts
	nop

;==============================================
loc_8c11ca84:
	#data 0x01F8
loc_8c11ca86:
	#data 0x0100
loc_8c11ca88:
	#data 0x1000
loc_8c11ca8a:
	#data 0x0400
	#align4

loc_8C11CA8C:
	#data 0x8C2AA2B8
loc_8C11CA90:
	#data 0x8C2AA4B0
loc_8C11CA94:
	#data 0x8C2AA4C8
loc_8C11CA98:
	#data 0x8C2AA4E8
loc_8C11CA9c:
	#data 0x8C2AA558
loc_8C11CAa0:
	#data 0x8C2DB048
loc_8C11CAa4:
	#data 0xACC00000
loc_8C11CAa8:
	#data 0x00400000
loc_8C11CAac:
	#data 0x428C0000
loc_8C11CAb0:
	#data 0x40A00000
loc_8C11CAb4:
	#data 0x41C80000
loc_8C11CAB8:
	#data 0x8C2AA4B8
loc_8C11CABc:
	#data 0x8C2AA4Bc
loc_8C11CAC0:
	#data 0x8C2AA2Cc
loc_8C11CAC4:
	#data 0x8C2AA4C0
loc_8C11CAC8:
	#data bank17.loc_8c17ADA8

;==============================================
	nop
	nop

;==============================================
loc_8C11CAD0:
	mov r4,r0
	cmp/eq 0x00,r0
	mov.l r14,@-r15
	mov 0x00,r5 ; r5 set to 0x00
	bt/s loc_8C11CAF0
	mov r5,r14 ; r14 set to 0x00
	cmp/eq 0x02,r0
	bt loc_8C11CB00
	cmp/eq 0x04,r0
	bt loc_8C11CB10
	bra loc_8C11CB12
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CAF0:
	bra loc_8C11CB12
	mov r5,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CB00:
	bra loc_8C11CB12
	mov 0x02,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11cb10:
	mov 0x04,r14

loc_8C11CB12:
	mov.l @(loc_8C11CD10,pc),r2 ; r2 set to 0x8C2AA4C0
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8C11CB20
	mov.l @(loc_8C11CD14,pc),r1 ; r1 set to 0x8C2AA2F0
	bra loc_8C11CB30
	mov.l r14,@(0x0C,r1)

loc_8C11CB20:
	mov.l @(loc_8C11CD18,pc),r1 ; r1 set to 0x8C17ADA8
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r5
	jmp @r1
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11CB30:
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11cb40:
	mov.l @(0x1D8,PC),r3
	mov.l @r3,r0
	or 0x02,r0
	rts 
	mov.l r0,@r3

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11cb50:
	mov.l @(0x1C8,PC),r3
	mov 0xFD,r2
	mov.l @r3,r1
	and r2,r1
	rts 
	mov.l r1,@r3

;==============================================
	nop
	nop

;==============================================
loc_8c11cb60:
	mov.l @(0x1BC,PC),r0
	mov 0x00,r3
	rts 
	mov.l r3,@r0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11cb70:
	mov 0x0A,r5
	bra loc_8c11d8d0
	mov r5,r4

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CB80:
	mov.l @(loc_8C11CD24,pc),r3 ; r3 set to 0x8C2AA4Bc
	rts
	mov.l r4,@r3

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CB90:
	mov.l @(0x17C,PC),r2
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c11cba0
	mov.l @(0x18C,PC),r1
	mov.l @(0x190,PC),r3
	or r1,r4
	mov.l r4,@r3

loc_8C11CBA0:
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CBB0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xEC,r15
	mov.l @(loc_8C11CD24,pc),r3 ; r3 set to 0x8C2AA4Bc
	mov r5,r2
	mov.l @(loc_8C11CD34,pc),r9 ; r9 set to 0x8C2AA4B8
	add r6,r2
	mov.l @r3,r10
	add r7,r2
	mov.l @(loc_8C11CD30,pc),r14 ; r14 set to 0x8C2AA2B8
	mov r4,r8
	add r10,r2
	mov.l r2,@(0x08,r15)
	mov.l @r9,r0
	cmp/eq 0x03,r0
	bf/s loc_8C11CC00
	add r5,r8
	mov r8,r13
	add r6,r13
	add r7,r13
	add r10,r13
	bra loc_8C11CC2e
	add r13,r13

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CC00:
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r14),r2
	tst r2,r2
	bf loc_8C11CC10
	bra loc_8C11CC2e
	mov.l @(0x08,r15),r13

;==============================================
	nop
	nop

;==============================================
loc_8C11CC10:
	mov.l @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_8C11CC20
	mov r8,r13
	add r7,r13
	bra loc_8C11CC2e
	add r10,r13


;==============================================
	nop

;==============================================
loc_8c11cc20:
	mov 0x44,r0
	mov.l @(r0,r14),r0
	cmp/eq 0x04,r0
	bf loc_8c11cc2e
	mov r8,r13
	add r6,r13
	add r7,r13

loc_8C11CC2E:
	lds r4,fpul
	mova @(loc_8C11CD38,pc),r0  ; r0 init to 0x8C11CD38
	mov r13,r3
	shll2 r3
	mov.l r3,@(0x30,r14)
	float fpul,fr3
	lds r5,fpul
	fmov.s @r0,fr5
	mov 0x04,r0 ; r0 set to 0x04
	fldi0 fr4
	float fpul,fr2
	lds r6,fpul
	fmul fr5,fr3
	float fpul,fr1
	lds r7,fpul
	fmov fr2,fr13
	fmul fr5,fr13
	float fpul,fr2
	lds r10,fpul
	fmov.s fr3,@r15
	fmov fr1,fr12
	fmul fr5,fr12
	float fpul,fr1
	lds r13,fpul
	fmov fr2,fr14
	fmul fr5,fr14
	float fpul,fr2
	fmul fr5,fr1
	fmov.s fr1,@(r0,r15)
	mov.l @r9,r0 ; r0 ??? bc r9 is ???
	cmp/eq 0x03,r0
	bf/s loc_8C11CCB0
	fmov fr2,fr0
	mov 0x00,r3 ; r3 set to 0x00
	fmov.s @r15,fr2
	cmp/gt r13,r3
	mov 0x4C,r0 ; r0 set to 0x4c
	addc r3,r13
	mov r14,r2
	shar r13
	lds r13,fpul
	add 0x48,r2
	float fpul,fr3
	fmov fr3,fr5
	fdiv fr3,fr2
	fmov fr13,fr3 ; r3 ??? bc r13 is ???
	fdiv fr5,fr3
	fmov.s fr2,@r2
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr12,fr3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov fr14,fr3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r15),fr3
	bra loc_8C11CD0a
	fdiv fr5,fr3

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CCB0:
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r14),r2
	tst r2,r2
	bf loc_8C11CCE0
	fmov fr13,fr3
	fdiv fr0,fr3
	mov 0x4C,r0 ; r0 set to 0x4c
	mov r14,r3
	add 0x48,r3
	fmov.s fr4,@r3
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr12,fr3
	fdiv fr0,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov fr14,fr3
	fdiv fr0,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r15),fr3
	fdiv fr0,fr3
	bra loc_8C11CD0a
	nop

loc_8C11CCE0:
	mov.l @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_8C11CD40
	fmov.s @r15,fr3
	mov r14,r2
	add 0x48,r2
	fdiv fr0,fr3
	mov 0x4C,r0 ; r0 set to 0x4c
	fmov.s fr3,@r2
	fmov fr13,fr3
	fdiv fr0,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr14,fr3
	fdiv fr0,fr3
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r15),fr3
	fdiv fr0,fr3

loc_8C11CD0A:
	mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
	bra loc_8C11CD6e
	fmov.s fr3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11CD10:
	#data 0x8C2AA4C0
loc_8C11CD14:
	#data 0x8C2AA2F0
loc_8C11CD18:
	#data bank17.loc_8c17ADA8
loc_8C11CD1c:
	#data 0x8C2AA2Bc
loc_8C11CD20:
	#data 0x8C2AA520
loc_8C11CD24:
	#data 0x8C2AA4Bc
loc_8C11CD28:
	#data 0xA0000000
loc_8C11CD2c:
	#data 0x8C2AA2E4
loc_8C11CD30:
	#data 0x8C2AA2B8
loc_8C11CD34:
	#data 0x8C2AA4B8
loc_8C11CD38:
	#data 0x42C80000

;==============================================
	nop
	nop

;==============================================
loc_8c11cd40:
	mov 0x44,r0
	mov.l @(r0,r14),r0
	cmp/eq 0x04,r0
	bf loc_8c11cd6e
	fmov.s @r15,fr3
	mov r14,r2
	add 0x48,r2
	fdiv fr0,fr3
	mov 0x4C,r0
	fmov.s fr3,@r2
	fmov fr13,fr3
	fdiv fr0,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr12,fr3
	fdiv fr0,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr14,fr3
	fdiv fr0,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x58,r0
	fmov.s fr4,@(r0,r14)

loc_8C11CD6E:
	mov.l @(loc_8C11CED4,pc),r2 ; r2 set to 0x8C2AA50c
	mov.l @r2,r3
	tst r3,r3
	bf/s loc_8C11CD7c
	mov 0x01,r11 ; r11 set to 0x01
	bra loc_8C11CF6a
	nop

loc_8C11CD7C:
	mov.l @r9,r0
	mov.l @(loc_8C11CED8,pc),r4 ; r4 set to 0x8C2AA2B8
	cmp/eq 0x03,r0
	bf/s loc_8C11CDF0
	mov 0x38,r12 ; r12 set to 0x38
	bra loc_8C11CDDa
	mov r11,r6

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11CD90:
	mul.l r12,r6
	mov r4,r7
	mov 0x10,r0 ; r0 set to 0x10
	add 0x38,r7
	fmov.s @(r0,r7),fr3
	mov r7,r3
	sts macl,r5
	mov r4,r7
	add 0x38,r7
	add r5,r3
	fmov.s fr3,@(r0,r3)
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s @(r0,r7),fr3
	mov r7,r3
	add r5,r3
	mov r4,r7
	fmov.s fr3,@(r0,r3)
	mov 0x18,r0 ; r0 set to 0x18
	add 0x38,r7
	fmov.s @(r0,r7),fr3
	mov r7,r3
	add r5,r3
	mov r4,r7
	fmov.s fr3,@(r0,r3)
	mov 0x1C,r0 ; r0 set to 0x1c
	add 0x38,r7
	fmov.s @(r0,r7),fr3
	mov r7,r3
	mov r4,r7
	add r5,r3
	add 0x38,r7
	fmov.s fr3,@(r0,r3)
	mov 0x20,r0 ; r0 set to 0x20
	fmov.s @(r0,r7),fr3
	add r7,r5
	add 0x01,r6
	fmov.s fr3,@(r0,r5)

loc_8C11CDDA:
	mov.l @(0x34,r4),r3
	cmp/hs r3,r6
	bf loc_8C11CD90
	bra loc_8C11CF6a
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CDF0:
	mov r8,r3
	add r7,r3
	mov r8,r1
	add r6,r1
	add r10,r3
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r3,@(0x0C,r15)
	add r7,r1
	mov r5,r9 ; r9 set to 0x00
	bra loc_8C11CF34
	mov.l r1,@(0x10,r15)

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11CE10:
	mul.l r12,r9
	mov r4,r3
	add 0x38,r3
	sts macl,r14
	add r14,r3
	mov.l @(0x0C,r3),r2
	tst r2,r2
	bf loc_8C11CE70
	mov.l @(0x08,r15),r13
	mov r4,r3
	fmov fr13,fr2
	add 0x38,r3
	lds r13,fpul
	mov 0x10,r0 ; r0 set to 0x10
	add r14,r3
	fmov.s fr4,@(r0,r3)
	mov r4,r3
	float fpul,fr3
	add 0x38,r3
	add r14,r3
	mov 0x14,r0 ; r0 set to 0x14
	fdiv fr3,fr2
	fmov fr3,fr5
	fmov fr12,fr3
	fdiv fr5,fr3
	fmov.s fr2,@(r0,r3)
	mov r4,r3
	add 0x38,r3
	mov 0x18,r0 ; r0 set to 0x18
	add r14,r3
	fmov.s fr3,@(r0,r3)
	mov r4,r3
	fmov fr14,fr3
	fdiv fr5,fr3
	add 0x38,r3
	mov 0x1C,r0 ; r0 set to 0x1c
	add r14,r3
	fmov.s fr3,@(r0,r3)
	mov r4,r3
	add 0x38,r3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r15),fr3
	mov 0x20,r0 ; r0 set to 0x20
	add r14,r3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r3)
	bra loc_8C11CF32
	or r11,r5

loc_8C11CE70:
	mov r4,r0
	add 0x38,r0
	add r14,r0
	mov.l @(0x0C,r0),r0
	cmp/eq 0x02,r0
	bf loc_8C11CEE0
	mov.l @(0x0C,r15),r13
	mov r4,r3
	fmov.s @r15,fr2
	mov 0x10,r2 ; r2 set to 0x10
	lds r13,fpul
	add 0x38,r3
	mov r2,r0 ; r0 set to 0x10
	add r14,r3
	or r2,r5
	float fpul,fr3
	fdiv fr3,fr2 ; r2 ??? bc r3 is ???
	fmov fr3,fr5
	fmov fr13,fr3
	fdiv fr5,fr3
	fmov.s fr2,@(r0,r3)
	mov r4,r3
	add 0x38,r3
	mov 0x14,r0 ; r0 set to 0x14
	add r14,r3
	fmov.s fr3,@(r0,r3)
	mov r4,r3
	fmov fr14,fr3
	fdiv fr5,fr3
	add 0x38,r3
	mov 0x18,r0 ; r0 set to 0x18
	add r14,r3
	fmov.s fr4,@(r0,r3)
	mov r4,r3
	add 0x38,r3
	mov 0x1C,r0 ; r0 set to 0x1c
	add r14,r3
	fmov.s fr3,@(r0,r3)
	mov 0x04,r0 ; r0 set to 0x04
	mov r4,r3
	fmov.s @(r0,r15),fr3
	add 0x38,r3
	add r14,r3
	fdiv fr5,fr3
	mov r3,r1
	add 0x10,r1
	add r1,r2
	bra loc_8C11CF32
	fmov.s fr3,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11CED4:
	#data 0x8C2AA50c
loc_8C11CED8:
	#data 0x8C2AA2B8

;==============================================
	nop
	nop

;==============================================
loc_8c11cee0:
	cmp/eq 0x04,r0
	bf loc_8c11cf32
	mov.l @(0x10,r15),r13
	mov r4,r3
	fmov.s @r15,fr2
	add 0x38,r3
	lds r13,fpul
	mov 0x10,r0
	add r14,r3
	mov.w @(loc_8C11CFDA,pc),r2
	float fpul,fr3
	or r2,r5
	fdiv fr3,fr2
	fmov fr3,fr5
	fmov fr13,fr3
	fdiv fr5,fr3
	fmov.s fr2,@(r0,r3)
	mov r4,r3
	add 0x38,r3
	mov 0x14,r0
	add r14,r3
	fmov.s fr3,@(r0,r3)
	mov r4,r3
	fmov fr12,fr3
	fdiv fr5,fr3
	add 0x38,r3
	mov 0x18,r0
	add r14,r3
	fmov.s fr3,@(r0,r3)
	mov r4,r3
	fmov fr14,fr3
	fdiv fr5,fr3
	add 0x38,r3
	add r14,r3
	mov 0x1C,r0
	fmov.s fr3,@(r0,r3)
	mov r4,r3
	add 0x38,r3
	mov 0x20,r0
	add r14,r3
	fmov.s fr4,@(r0,r3)

loc_8C11CF32:
	add 0x01,r9

loc_8C11CF34:
	mov.l @(0x34,r4),r3
	cmp/hs r3,r9
	bt loc_8C11CF3e
	bra loc_8C11CE10
	nop

loc_8c11cf3e:
	mov r5,r0
	cmp/eq 0x01,r0
	bt loc_8c11cf50
	mov r5,r0
	cmp/eq 0x10,r0
	bt loc_8c11cf50
	mov.w @(loc_8C11CFDA,pc),r3
	cmp/eq r3,r5
	bf loc_8c11cf60

loc_8c11cf50:
	shll2 r13
	bra loc_8c11cf6a
	mov.l r13,@(0x30,r4)

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11cf60:
	add r8,r6
	add r7,r6
	add r10,r6
	shll2 r6
	mov.l r6,@(0x30,r4)

loc_8c11cf6a:
	mov.l @(loc_8c11cfe0,pc),r2
	mov.l @(loc_8C11CFDC,pc),r4
	jsr @r2
	nop
	mov r0,r14
	tst r14,r14
	bt loc_8c11cf7a
	trapa 0x41

loc_8c11cf7a:
	mov.l @(loc_8C11CFE4,pc),r3
	mov.l @(loc_8C11CFE8,pc),r1
	mov.l @r3,r2
	mov.l @(loc_8C11CFEC,pc),r0
	mov.l r1,@r2
	mov.l @r0,r2
	tst r2,r2
	bf loc_8c11cf94
	mov.l @(loc_8c11cff0,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8C11CFEC,pc),r3
	mov.l r11,@r3

loc_8c11cf94:
	mov r14,r0
	add 0x14,r15
	lds.l @r15+,macl
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
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

;==============================================
loc_8C11CFC0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C11CFF4,pc),r3 ; r3 set to 0x8C2AA4C0
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bf loc_8C11D000
	bsr loc_8C11CBB0
	nop
	bra loc_8C11D004
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11cfda:
	#data 0x0100
	#align4

loc_8c11cfdc:
	#data 0x8C2AA2B8
loc_8C11CFE0:
	#data bank17.loc_8c17BA80
loc_8c11cfe4:
	#data 0x8C2DB04c
loc_8c11cfe8:
	#data 0x00800000
loc_8c11cfec:
	#data 0x8C2AA540
loc_8C11CFF0:
	#data loc_8c11BCF0
loc_8C11CFF4:
	#data 0x8C2AA4C0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d000:
	bsr loc_8c11c430
	nop

loc_8c11d004:
	mov.l @(loc_8C11D0E0,pc),r4
	bsr loc_8c11c380
	mov r0,r13
	mov.l @(loc_8C11D0E4,pc),r4
	bsr loc_8c11c2e0
	mov.l r4,@r15
	mov.l @(loc_8C11D0F0,pc),r4
	mov 0x00,r5
	mov.l @r15,r2
	tst r5,r5
	mov.l @(loc_8C11D0E8,pc),r3
	fldi0 fr15
	mov.l r2,@r3
	mov.l @(loc_8C11D0EC,pc),r2
	mov.l r5,@r2
	mov.w @(0x06,r4),r0
	mov r0,r14
	mov.w @(0x04,r4),r0
	mov r0,r1
	lds r1,fpul
	bt/s loc_8c11d060
	float fpul,fr6
	mov.w @(0x0A,r4),r0
	cmp/eq 0x01,r0
	bf/s loc_8c11d042
	exts.w r14,r14
	mov.w @(loc_8C11D0DC,pc),r4
	add r14,r14
	cmp/gt r4,r14
	bf loc_8c11d042
	mov r4,r14

loc_8c11d042:
	lds r14,fpul
	mov.l @(loc_8c11d0f4,pc),r3
	fmov fr15,fr5
	float fpul,fr3
	fmov fr3,fr7
	jsr @r3
	fmov fr15,fr4
	bra loc_8c11d06e
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d060:
	exts.w r14,r1
	fmov fr15,fr5
	lds r1,fpul
	mov.l @(loc_8c11d0f4,pc),r1
	float fpul,fr7
	jsr @r1
	fmov fr15,fr4

loc_8c11d06e:
	mov.l @(loc_8c11d0fc,pc),r3
	mova @(loc_8C11D0F8,pc),r0
	jsr @r3
	fmov.s @r0,fr4
	mov.l @(loc_8C11D100,pc),r2
	mov 0x0C,r4
	mov.l @(loc_8C11D104,pc),r3
	mov.l r4,@r2
	mov.l @(loc_8C11D108,pc),r1
	mov.l @(loc_8c11d10c,pc),r2
	mov.l r4,@r3
	jsr @r2
	mov.l @r1,r4
	mov.l @(loc_8C11D110,pc),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c11d0a8
	mov.l @(loc_8c11d118,pc),r3
	mov.l @(loc_8C11D114,pc),r4
	jsr @r3
	nop
	mov.l @(loc_8c11d120,pc),r2
	mov.l @(loc_8C11D11C,pc),r4
	jsr @r2
	nop
	mov.l @(loc_8C11D11C,pc),r2
	mov.l @(loc_8C11D124,pc),r1
	mov.l @r2,r3
	mov.l r3,@r1

loc_8c11d0a8:
	mov r13,r0
	add 0x04,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11d0c0:
	mov.l @(0x64,PC),r3
	mov.l @(0x68,PC),r2
	mov.l @r3,r1
	and r2,r1
	rts 
	mov.l r1,@r3

;==============================================
	nop
	nop

;==============================================
;unused?
loc_8c11d0d0:
	mov.l @(0x54,PC),r3
	mov.l @(0x5C,PC),r2
	mov.l @r3,r0
	or r2,r0
	rts 
	mov.l r0,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11D0DC:
	#data 0x01E0
	#align4

loc_8C11D0E0:
	#data 0x8C2DB068
loc_8C11D0E4:
	#data 0x8C2DE698
loc_8C11D0E8:
	#data 0x8C2DEC98
loc_8C11D0EC:
	#data 0x8C2DEC9C
loc_8C11D0F0:
	#data 0x8C2DEE5C
loc_8c11d0f4:
	#data bank12.loc_8c122160
loc_8C11D0F8:
	#data 0x3CA3D70A
loc_8c11d0fc:
	#data bank17.loc_8c17e360
loc_8C11D100:
	#data 0xFF000038
loc_8C11D104:
	#data 0xFF00003C
loc_8C11D108:
	#data 0x8C2AA520
loc_8c11d10c:
	#data bank17.loc_8c17cba0
loc_8C11D110:
	#data 0x8C2AA50C
loc_8C11D114:
	#data 0x8C2AA2B8
loc_8c11d118:
	#data bank17.loc_8c17b660
loc_8C11D11C:
	#data 0x8C2DB048
loc_8c11d120:
	#data bank17.loc_8c17b4c0
loc_8C11D124:
	#data 0x8C2AA508
loc_8c11d128:
	#data 0x8c2aa2bc
loc_8c11d12c:
	#data 0xffefffff
loc_8c11d130:
	#data 0x00100000

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D140:
	stc sr, r0
	mov.w @(loc_8C11D236,pc),r3 ; r3 set to 0xFF0f
	and r3,r0
	or 0xE0,r0
	ldc r0, sr
	mov.l @(loc_8C11D238,pc),r5 ; r5 set to 0xFFD80004
	mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
	mov.l @(loc_8C11D23C,pc),r1 ; r1 set to 0xFFD80000
	mov 0x01,r3 ; r3 set to 0x01
	mov.b @r5,r4
	mov 0xFF,r6 ; r6 set to 0xFFFFFFFf
	mov.l @(loc_8C11D240,pc),r0 ; r0 set to 0xFFD80010
	and r4,r2 ; r2 ??? bc r4 is ???
	mov.b r2,@r5 ; r5 ??? bc r2 is ???
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r3,@r1 ; r1 ??
	mov 0x01,r1 ; r1 set to 0x01
	mov.w r2,@r0 ; r0 ??
	mova @(loc_8C11D24C,pc),r0  ; r0 set to 0x8C11D24c
	mov.l @(loc_8C11D248,pc),r2 ; r2 set to 0xFFD8000c
	or r1,r4
	mov.l @(loc_8C11D244,pc),r3 ; r3 set to 0xFFD80008
	mov.l r6,@r3 ; r3 ??
	mov.l r6,@r2 ; r2 ??
	mov.w @(loc_8C11D236,pc),r2 ; r2 set to 0xFF0f
	mov.l @(loc_8C11D250,pc),r3 ; r3 set to 0x8C2AA53c
	mov.b r4,@r5
	fmov.s @r0,fr3 ; r3 ??
	stc sr, r0
	fmov.s fr3,@r3
	and r2,r0 ; r0 ??
	ldc r0, sr
	mov.l @(loc_8C11D254,pc),r2 ; r2 set to 0x8C2D5558
	mov 0x1E,r0 ; r0 set to 0x1e
	rts
	mov.l r0,@r2

;==============================================
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11d190:
	stc sr,r0
	mov.w @(0xA0,PC),r3
	and r3,r0
	or 0xE0,r0
	ldc r0,sr
	cmp/pz r4
	bf loc_8c11d1a4
	mov 0x04,r3
	cmp/gt r3,r4
	bf loc_8c11d1a6

loc_8c11d1a4:
	mov 0x02,r4

loc_8c11d1a6:
	mov.l @(0x90,PC),r6
	mov 0xFE,r3
	mov.l @(0x90,PC),r1
	mov 0x01,r2
	mov.b @r6,r5
	mov 0xFF,r7
	mov.l @(0xA4,PC),r0
	and r5,r3
	mov.b r3,@r6
	mov.l @(0x84,PC),r3
	mov.b r2,@r1
	add 0x0C,r1
	mov.w r4,@r3
	shll2 r4
	mov.l @(0x80,PC),r2
	mov 0x01,r3
	or r3,r5
	mov.w @(0x6A,PC),r3
	mov.l r7,@r2
	mov.l @(0x80,PC),r2
	mov.l r7,@r1
	mov.b r5,@r6
	fmov @(r0,r4),fr3
	stc sr,r0
	fmov fr3,@r2
	and r3,r0
	ldc r0,sr
	mov.l @(0x74,PC),r0
	mov 0x0E,r1
	rts 
	mov.l r1,@r0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d1f0:
	mov.l @(0x68,PC),r3
	mov.l @(0x60,PC),r4
	jmp @r3
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d200:
	mov.l @(0x5C,PC),r0
	rts 
	mov.l @r0,r0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d210:
	mov.l @(0x50,PC),r0
	rts 
	mov.l @r0,r0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d220:
	mov.l @(0x44,PC),r3
	rts 
	mov.l @r3,r0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d230:
	mov.l @(0x38,PC),r2
	rts 
	mov.l @r2,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11D236:
	#data 0xFF0f
	#align4

loc_8C11D238:
	#data 0xFFD80004
loc_8C11D23C:
	#data 0xFFD80000
loc_8C11D240:
	#data 0xFFD80010
loc_8C11D244:
	#data 0xFFD80008
loc_8C11D248:
	#data 0xFFD8000c
loc_8C11D24C:
	#data 0x3FA3D70a
loc_8C11D250:
	#data 0x8C2AA53c
loc_8C11D254:
	#data 0x8C2D5558
loc_8C11D258:
	#data bank16.loc_8c16BC10
loc_8C11D25C:
	#data bank17.loc_8c17CBE0
loc_8C11D260:
	#data 0x8C2D557c
loc_8C11D264:
	#data 0x8C2D555c
loc_8C11D268:
	#data 0x8C2D55B0
loc_8C11D26c:
	#data 0x8C2D55Bc

;==============================================
loc_8C11D270:
	mov.l r14,@-r15
	mov r4,r7
	mov.l @(0x110,PC),r5
	mov.l r13,@-r15
	mov.l @(0x108,PC),r13
	sts.l pr,@-r15
	mov.l @r5,r3
	mov.w @(0x4,r13),r0
	cmp/pz r3
	bf.s loc_8c11d30a             ; loc_8c11c800+0xb0a
	mov r0,r4
	mov.l @(0x104,PC),r3
	mov.l @r5,r14
	mov.l @r3,r0
	mov 0x03,r3
	shll2 r14
	mov.l @(0x100,PC),r1
	mov.l @(r0,r14),r14

loc_8c11d294:
	mov.l @r1,r5
	mov.l @(0xF8,PC),r2
	mov.l @(0x1C,r14),r14
	cmp/gt r3,r5
	add r2,r14
	bt.s loc_8c11d2b0
	mov 0x04,r6
	bra loc_8c11d2e0              ; loc_8c11c800+0xae0
	add r4,r4

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d2b0:
	cmp/gt r6,r5
	bt loc_8c11d2c0
	mov r4,r2
	shll r4
	bra loc_8c11d2e0
	add r2,r4

;==============================================
	nop
	nop

;==============================================
loc_8c11d2c0:
	mov 0x05,r2
	cmp/gt r2,r5
	bt loc_8c11d2d0
	bra loc_8c11d2e0
	shll2 r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11d2d0:
	bra loc_8c11d2d0
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d2e0:
	mov.l @(0xB4,PC),r3
	mov r6,r0
	jsr @r3
	mov r4,r1
	mov 0x00,r1
	mov r0,r4
	bra loc_8c11d304
	mov r1,r6

loc_8c11d2f0:
	cmp/pl r4
	bf.s loc_8c11d302
	mov r1,r5

loc_8c11d2f6:
	mov.l @r14+,r3
	add 0x01,r5
	cmp/ge r4,r5
	mov.l r3,@r7
	bf.s loc_8c11d2f6
	add 0x04,r7

loc_8c11d302:
	add 0x01,r6

loc_8c11d304:
	mov.w @(0x6,r13),r0
	cmp/ge r0,r6
	bf loc_8c11d2f0

loc_8c11d30a:
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

;==============================================
loc_8c11d320:
	mov.l r13,@-r15
	mov r4,r7
	mov.l r12,@-r15
	mov.l @(0x60,PC),r5
	mov.l r11,@-r15
	mov.l @(0x58,PC),r11
	mov.l @r5,r3
	mov.w @(0x4,r11),r0
	cmp/pz r3
	bf.s loc_8c11d3de
	mov r0,r4
	mov.l @(0x54,PC),r3
	mov.l @r5,r1
	mov.l @r3,r0
	mov 0x03,r3
	shll2 r1
	mov.l @(r0,r1),r2
	mov.l @(0x4C,PC),r1
	mov.l @(0x1C,r2),r5
	mov.l @(0x4C,PC),r2
	add r1,r5
	mov.l @r2,r6
	cmp/gt r3,r6
	bt loc_8c11d360
	bra loc_8c11d3a0
	add r4,r4

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d360:
	mov 0x04,r1
	cmp/gt r1,r6
	bt loc_8c11d370
	mov r4,r3
	shll r4
	bra loc_8c11d3a0
	add r3,r4

;==============================================
	nop

;==============================================
loc_8c11d370:
	mov 0x05,r3
	cmp/gt r3,r6
	bt loc_8c11d380
	bra loc_8c11d3a0
	shll2 r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11d380:
	bra loc_8c11d380
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11d384:
	#data 0x8C2DEE5c
loc_8c11d388:
	#data 0x8C2D5700
loc_8c11d38c:
	#data 0x8C2AA2C0
loc_8c11d390:
	#data 0xA5000000
loc_8c11d394:
	#data 0x8C2AA538
loc_8C11D398:
	#data bank12.loc_8c129128

;==============================================
	nop
	nop

;==============================================
loc_8c11d3a0:
	mov 0x00,r3
	mov.w @(0x104,PC),r2
	cmp/gt r4,r3
	mov.w @(0x102,PC),r12
	addc r3,r4
	mov r3,r1
	mov r3,r13
	shar r4
	bra loc_8c11d3d8
	add r2,r7

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d3c0:
	cmp/pl r4
	bf.s loc_8c11d3d4
	mov r13,r6

loc_8c11d3c6:
	mov.w @r5,r2
	add 0x05,r6
	cmp/ge r4,r6
	add 0x0A,r5
	mov.w r2,@r7
	bf.s loc_8c11d3c6
	add 0x02,r7

loc_8c11d3d4:
	add 0x05,r1
	add r12,r5

loc_8c11d3d8:
	mov.w @(0x6,r11),r0
	cmp/ge r0,r1
	bf loc_8c11d3c0

loc_8c11d3de:
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r13

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D3F0:
	mov.l @(loc_8C11D4B0,pc),r3 ; r3 set to 0xFFD8000c
	rts
	mov.l @r3,r0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D400:
	lds r4,fpul
	mov.l @(loc_8C11D4B4,pc),r3 ; r3 set to 0x8C2AA53c
	float fpul,fr3
	fmov.s @r3,fr2
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	ftrc fr3,fpul
	rts
	sts fpul,r0

;==============================================
loc_8C11D410:
	mov r4,r0
	rts
	sub r5,r0
	
;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D420:
	sts.l pr,@-r15
	bsr loc_8C11D3F0
	nop
	lds.l @r15+,pr
	mov.l @(loc_8C11D4B8,pc),r2 ; r2 set to 0x8C2D5748
	rts
	mov.l r0,@r2

;==============================================
	nop

;==============================================
loc_8C11D430:
	sts.l pr,@-r15
	bsr loc_8C11D3F0
	nop
	mov.l @(loc_8C11D4B8,pc),r2 ; r2 set to 0x8C2D5748
	mov r0,r5
	bsr loc_8C11D410
	mov.l @r2,r4
	mov r0,r4
	bra loc_8C11D400
	lds.l @r15+,pr

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
loc_8c11d450:
	sts.l pr,@-r15
	bsr loc_8c11d3f0
	nop 
	mov.l @(0x60,PC),r2
	mov r0,r5
	bsr loc_8c11d410
	mov.l @r2,r4
	mov r0,r4
	bra loc_8c11d400
	lds.l @r15+,pr

;==============================================	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
;unused?
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@(0x4,r15)
	mov r5,r3
	mov.l r5,@r15
	mov.l r5,@-r15
	mov.l @(0x8,r15),r2
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov.l r2,@-r15
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	nop
	nop

;==============================================
;unused?
loc_8c11d490:
	not r4,r4
	mov.l @(0x2C,PC),r3
	mov 0x07,r6
	and r6,r4
	not r5,r5
	shll2 r4
	and r6,r5
	shll2 r4
	shll2 r5
	shll r4
	add r5,r4
	rts 
	mov.l r4,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11D4aa:
	#data 0x1000
loc_8C11D4ac:
	#data 0x1400
	#align4

loc_8C11D4B0:
	#data 0xFFD8000c
loc_8C11D4B4:
	#data 0x8C2AA53c
loc_8C11D4B8:
	#data 0x8C2D5748
loc_8C11D4BC:
	#data bank17.loc_8c17E2C0
loc_8C11D4C0:
	#data 0x8C2AA4C4

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D4D0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r0
	cmp/eq 0x01,r0
	mov r4,r13
	bt/s loc_8C11D500
	mov r15,r14
	cmp/eq 0x02,r0
	bt loc_8C11D510
	cmp/eq 0x03,r0
	bt loc_8C11D520
	cmp/eq 0x04,r0
	bt loc_8C11D530
	bra loc_8C11D534
	nop


;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D500:
	mov.l @(loc_8C11D6D8,pc),r3 ; r3 set to 0xFF0000Ff
	bra loc_8C11D534
	mov.l r3,@r14

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D510:
	mov.l @(loc_8C11D6DC,pc),r1 ; r1 set to 0xFFFF0000
	bra loc_8C11D532
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D520:
mov.l @(loc_8C11D6E0,pc),r2 ; r2 set to 0xFF00FF00
bra loc_8C11D534
mov.l r2,@r14

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d530:
mov.l @(loc_8C11D6E4,pc),r1

loc_8c11d532:
mov.l r1,@r14

loc_8C11D534:
mov r13,r0
cmp/eq 0x03,r0
bt loc_8C11D578
mov.l @(loc_8C11D6E8,pc),r2 ; r2 set to 0x8C17E200
mov.l @r14,r3
jsr @r2
mov.l r3,@-r15
add 0x04,r15
stc sr, r1
mov.l @(loc_8C11D6EC,pc),r3 ; r3 set to 0xEFFFFF0f
and r3,r1
ldc r1, sr
mov r13,r0
cmp/eq 0x01,r0
bt loc_8C11D570
cmp/eq 0x02,r0
bt loc_8C11D572
cmp/eq 0x03,r0
bt loc_8C11D574
cmp/eq 0x04,r0
bt loc_8C11D576
bra loc_8C11D578
nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d570:
	trapa 0x30

loc_8c11d572:
	trapa 0x31

loc_8c11d574:
	trapa 0x32

loc_8c11d576:
	trapa 0x33

loc_8C11D578:
	add 0x04,r15
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

;==============================================
loc_8C11D590:
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D5A0:
	tst r4,r4
	bf loc_8C11D5B0
	mov.l @(loc_8C11D6F0,pc),r4 ; r4 set to 0x8C11D4D0
	bra loc_8C11D5B4
	mov 0x00,r5

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11D5B0:
	mov.l @(loc_8C11D6F4,pc),r4 ; r4 set to 0x8C11D590
	mov 0x00,r5 ; r5 set to 0x00

loc_8C11D5B4:
	mov.l @(loc_8C11D6F8,pc),r2 ; r2 set to 0x8C17AE80, r2 set to 0x8C17AE80
	jmp @r2
	nop

;==============================================
	nop
	nop
	nop


;==============================================
loc_8c11d5c0:
	mov.l @(0x138,PC),r3
	mov.l @r3,r0
	or 0xA0,r0
	rts 
	mov.l r0,@r3

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11d5d0:
	mov.l @(0x12C,PC),r3
	rts 
	mov.l r4,@r3

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d5e0:
	mov.l @(0x120,PC),r2
	mov.l @r2,r0
	shll2 r0
	rts 
	shlr2 r0

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11d5f0:
	mov.l @(0x114,PC),r2
	rts 
	mov.l @r2,r0

;==============================================
	nop
	nop
	nop
	nop
	nop

;=============================================
loc_8c11d600:
	mov.l @(0x108,PC),r3
	rts 
	mov.l @r3,r0

;=============================================
	nop
	nop
	nop
	nop
	nop

;=============================================
loc_8c11d610:
	bra loc_8c11d8d0
	nop 

;=============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D620:
	mov.l @(loc_8C11D714,pc),r3 ; r3 set to 0x8C17ADA0
	mov.l @(loc_8C11D710,pc),r4 ; r4 set to 0x8C2DB048
	jmp @r3
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D630:
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0x94,r15
	fmov fr4,fr3
	mov r15,r12
	fldi1 fr4
	fdiv fr3,fr4
	mov.l @(loc_8C11D718,pc),r7 ; r7 set to bank16.loc_8c16BBF8
	add 0x0C,r12
	mov r12,r2
	mov 0x04,r0 ; r0 set to 0x04
	fldi0 fr5
	mov r2,r1
	mov.l r4,@r7 ; r7 ??? bc r4 is ???
	add 0x20,r1
	mov.l r5,@(0x04,r7)
	mov.l r6,@(0x08,r7)
	mov.l @(loc_8C11D71C,pc),r7 ; r7 set to 0xE0000000
	mov.l r7,@r2
	fmov.s fr5,@(r0,r2)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr5,@(r0,r2)
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s fr4,@(r0,r2)
	mov.l r4,@(0x10,r2)
	mov.l r4,@(0x18,r2)
	mov.l r7,@r1
	mov.l @(loc_8C11D720,pc),r7 ; r7 set to 0x8C2DEE5c
	mov.w @(0x04,r7),r0
	mov r0,r4 ; r4 set to 0x0c
	mov.w @(0x0A,r7),r0
	tst r0,r0
	bt loc_8C11D680
	exts.w r4,r4 ; r4 ??
	bra loc_8C11D682
	shll r4

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11D680:
	exts.w r4,r4

loc_8C11D682:
	lds r4,fpul
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov r12,r4
	add 0x40,r4
	mov.l @(loc_8C11D724,pc),r3 ; r3 set to 0xF0000000, r3 set to 0xF0000000
	mov r15,r12
	float fpul,fr3
	fmov.s fr3,@(r0,r1)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s fr5,@(r0,r1)
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s fr4,@(r0,r1)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov.l r5,@(0x10,r1)
	mov.l r5,@(0x18,r1)
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.l r3,@r4
	fmov.s fr5,@(r0,r4)
	mov.w @(0x06,r7),r0
	mov r0,r3 ; r3 set to 0x04, r3 set to 0x04
	lds r3,fpul
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	float fpul,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s fr4,@(r0,r4)
	mov.l r6,@(0x10,r4)
	mov.l r6,@(0x18,r4)
	mov 0x20,r6 ; r6 set to 0x20, r6 set to 0x20
	mov.l r2,@r12
	mov.l r1,@(0x04,r12)
	mov.l r4,@(0x08,r12)
	mov.l @(loc_8C11D728,pc),r3 ; r3 set to 0x8C17D0C0, r3 set to 0x8C17D0C0
	jsr @r3
	mov r12,r4
	add 0x6C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r12

;==============================================
loc_8C11D6D0:
	mov r4,r0
	rts
	cmp/eq 0x01,r0

;==============================================
	#align4
loc_8C11D6D8:
	#data 0xFF0000Ff
loc_8C11D6DC:
	#data 0xFFFF0000
loc_8C11D6E0:
	#data 0xFF00FF00
loc_8c11d6e4:
	#data 0xFFFF00Ff
loc_8C11D6E8:
	#data bank17.loc_8c17E200
loc_8C11D6EC:
	#data 0xEFFFFF0f
loc_8C11D6F0:
	#data loc_8c11D4D0
loc_8C11D6F4:
	#data loc_8c11D590
loc_8C11D6F8:
	#data bank17.loc_8c17AE80
loc_8C11D6Fc:
	#data 0x8C2AA2F0
loc_8C11D700:
	#data 0xA05F811c
loc_8C11D704:
	#data 0x8C2AA2E8
loc_8C11D708:
	#data 0x8C2D55A4
loc_8C11D70c:
	#data 0x8C2D55A0
loc_8C11D710:
	#data 0x8C2DB048
loc_8C11D714:
	#data bank17.loc_8c17ADA0
loc_8C11D718:
	#data bank16.loc_8c16BBF8
loc_8C11D71C:
	#data 0xE0000000
loc_8C11D720:
	#data 0x8C2DEE5c
loc_8C11D724:
	#data 0xF0000000
loc_8C11D728:
	#data bank17.loc_8c17D0C0

;==============================================
	nop
	nop

;==============================================
;unused?
loc_8c11d730:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	mov.l @(0xE4,PC),r4
	mov 0x00,r12
	mov r5,r9
	tst r13,r13
	mov.l r12,@r4
	bt.s loc_8c11d764
	mov 0x01,r11
	mov r13,r0
	cmp/eq 0x15,r0
	bt loc_8c11d764
	mov r13,r0
	cmp/eq 0x15,r0
	bt loc_8c11d764
	mov r13,r0
	cmp/eq 0x15,r0
	bf loc_8c11d766

loc_8c11d764:
	mov.l r11,@r4

loc_8c11d766:
	mov r13,r0
	mov.l @(0xC4,PC),r10
	cmp/eq 0x19,r0
	bt.s loc_8c11d782
	mov.l r12,@r10
	mov r13,r0
	cmp/eq 0x18,r0
	bt loc_8c11d782
	mov r13,r0
	cmp/eq 0x1A,r0
	bt loc_8c11d782
	mov r13,r0
	cmp/eq 0x1B,r0
	bf loc_8c11d784

loc_8c11d782:
	mov.l r11,@r10

loc_8c11d784:
	mov.l @(0xAC,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c11d798
	bsr loc_8c11dda0
	nop 
	bsr loc_8c11ddb0
	mov 0x00,r4
	bsr loc_8c11dd70
	nop 

loc_8c11d798:
	mov.w @(0x8E,PC),r3
	mov r12,r0
	mov.l @(0x98,PC),r14
	tst r9,r3
	mov.w r0,@(0x8,r14)
	bt.s loc_8c11d7aa
	mov.w r0,@(0xA,r14)
	mov r11,r0
	mov.w r0,@(0x8,r14)

loc_8c11d7aa:
	mov.l @(0x90,PC),r3
	tst r9,r3
	bt.s loc_8c11d7b6
	mov 0x0F,r3
	mov r11,r0
	mov.w r0,@(0xA,r14)

loc_8c11d7b6:
	mov.l @(0x88,PC),r0
	and r3,r9
	shll2 r9
	mov.l @(r0,r9),r2
	mov.l r2,@r15
	mov.l @r10,r0
	cmp/eq 0x01,r0
	bf loc_8c11d7ce
	mov.l @(0x80,PC),r1
	mov.l @(0x78,PC),r4
	jsr @r1
	mov 0x00,r5

loc_8c11d7ce:
	mov.w @(0xA,r14),r0
	mov r13,r10
	mov r13,r3
	shll r10
	mov r0,r7
	add r3,r10
	mov.l @(0x70,PC),r2
	shll2 r10
	mov.w @(0x8,r14),r0
	mov.l @r15,r5
	add r2,r10
	mov.l @(0x68,PC),r3
	mov r0,r6
	jsr @r3
	mov.l @(0x4,r10),r4
	mov.w @(0x8,r10),r0
	mov.l @(0x68,PC),r3
	mov.w r0,@(0x4,r14)
	mov.l @(0x60,PC),r4
	mov.w @(0xA,r10),r0
	jsr @r3
	mov.w r0,@(0x6,r14)
	mov.l @(0x60,PC),r3
	jsr @r3
	mov.l r0,@r15
	mov.l @(0x60,PC),r13
	mov.l @(0x5C,PC),r2
	mov.l @(0x60,PC),r3
	mov.l r11,@r2
	mov.l @(0x4,r13),r5
	mov.l @(0x8,r13),r6
	jsr @r3
	mov.l @r13,r4
	mov.w @(0x6,r14),r0
	tst r12,r12
	fldi0 fr15
	mov r0,r13
	mov.w @(0x4,r14),r0
	mov r0,r3
	lds r3,fpul
	bt.s loc_8c11d890
	float fpul,fr6
	mov.w @(0xA,r14),r0
	cmp/eq 0x01,r0
	bra loc_8c11d870
	exts.w r13,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11d82a:
	#data 0x0080
	#align4

loc_8c11d82c:
	#data 0x8C2AA518
loc_8c11d830:
	#data 0x8C2AA51c
loc_8c11d834:
	#data 0x8C2AA50c
loc_8c11d838:
	#data 0x8C2DEE5c
loc_8c11d83c:
	#data 0x00008000
loc_8C11D840:
	#data bank13.loc_8c13f0Ac
loc_8C11D844:
	#data loc_8c11C060
loc_8C11D848:
	#data bank17.loc_8c17AF00
loc_8C11D84C:
	#data bank13.loc_8c13ef5c
loc_8C11D850:
	#data bank17.loc_8c17B220
loc_8C11D854:
	#data 0x8C2AA2B8
loc_8C11D858:
	#data bank17.loc_8c17BA80
loc_8C11D85C:
	#data loc_8c11BCF0
loc_8C11D860:
	#data 0x8C2AA540
loc_8C11D864:
	#data bank16.loc_8c16BBF8
loc_8C11D868:
	#data loc_8c11C420

;==============================================
	nop
	nop

;==============================================
loc_8C11D870:
	bf.s loc_8c11d87e
	nop 
	mov.w @(0xDC,PC),r4
	add r13,r13
	cmp/gt r4,r13
	bf loc_8c11d87e
	mov r4,r13

loc_8c11d87e:
	lds r13,fpul
	mov.l @(0xD4,PC),r3
	fmov fr15,fr5
	float fpul,fr3
	fmov fr3,fr7
	jsr @r3
	fmov fr15,fr4
	bra loc_8c11d89e
	nop 

loc_8c11d890:
	exts.w r13,r3
	mov.l @(0xC4,PC),r2
	lds r3,fpul
	fmov fr15,fr5
	float fpul,fr7
	jsr @r2
	fmov fr15,fr4

loc_8c11d89e:
	mov.l @(0xBC,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c11d8ae
	bsr loc_8c11dd50
	nop 
	bsr loc_8c11dd80
	nop 

loc_8c11d8ae:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
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

;==============================================
loc_8c11d8d0:
	mov.l @(0x8C,PC),r3
	rts 
	mov.l r5,@r3

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d8e0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l macl,@-r15
	add 0xF8,r15

loc_8c11d8f0:
	mov 0x38,r13
	mov.l @(0x74,PC),r3
	mul.l r13,r4
	mov.l @r3,r0
	mov r5,r9
	mov.l @(0x28,r15),r10
	add r6,r9
	mov.l @(0x24,r15),r11
	cmp/eq 0x03,r0
	mov.l @(0x60,PC),r14
	bf.s loc_8c11d920
	sts macl,r13
	mov r9,r12
	add r7,r12
	add r11,r12
	add r10,r12

loc_8c11d910:
	bra loc_8c11d97a              ; loc_8c11d8e0+0x9a
	add r12,r12

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d920:
	mov r14,r1
	add 0x38,r1
	add r13,r1
	mov.l @(0xC,r1),r2
	tst r2,r2
	bf loc_8c11d940

loc_8c11d92c:
	mov r6,r12
	bra loc_8c11d94e
	add r7,r12

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11d940:
	mov r14,r0
	add 0x38,r0
	add r13,r0
	mov.l @(0xC,r0),r0
	cmp/eq 0x02,r0
	bf loc_8c11d970
	mov r9,r12

loc_8c11d94e:
	add r11,r12

loc_8c11d950:
	bra loc_8c11d97a
	add r10,r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11D9584:
	#data 0x01E0
	#align4

loc_8C11D958:
	#data bank12.loc_8c122160
loc_8C11D95c:
	#data 0x8C2AA50c
loc_8C11D960:
	#data 0x8C32DAA4
loc_8c11d964:
	#data 0x8C2AA2B8
loc_8C11D968:
	#data 0x8C2AA4B8

;==============================================
	nop
	nop

;==============================================
loc_8c11d970:
	cmp/eq 0x04,r0
	bf loc_8c11d97a
	mov r9,r12
	add r7,r12
	add r11,r12

loc_8c11d97a:
	mov r14,r3
	mov r12,r2
	add 0x38,r3
	shll2 r2
	add r13,r3
	tst r4,r4
	mov.l r2,@(0x8,r3)
	bf.s loc_8c11d9a0
	mov r12,r9
	mov r14,r1
	mov.l @(0x2C,r14),r3
	add 0x38,r1
	add r13,r1
	bra loc_8c11d9c0              ; loc_8c11d8e0+0xe0
	mov.l r3,@(0x4,r1)

;==============================================
	nop
	nop
	nop
	nop
;==============================================
loc_8c11d9a0:
	mov 0x38,r3
	mov r14,r1
	add 0xFF,r4
	mul.l r3,r4
	add 0x38,r1
	mov.l r1,@(0x4,r15)
	add r13,r1
	mov.l @(0x4,r15),r2
	sts macl,r4
	add r2,r4
	mov r4,r2
	mov.l r4,@r15
	mov.l @(0x8,r2),r2
	mov.l @(0x4,r4),r0
	add r2,r0
	mov.l r0,@(0x4,r1)

loc_8c11d9c0:
	lds r5,fpul
	mova @(0x224,PC),r0
	fmov @r0,fr6
	mov.l @(0x224,PC),r3
	float fpul,fr3
	lds r6,fpul
	mov.l @r3,r0
	float fpul,fr2
	lds r7,fpul
	cmp/eq 0x03,r0
	fmov fr3,fr7
	fmul fr6,fr7
	float fpul,fr3
	lds r11,fpul
	fmov fr2,fr5
	fmul fr6,fr5
	float fpul,fr2
	lds r10,fpul
	fmov fr3,fr8
	fmul fr6,fr8
	float fpul,fr3
	fmov fr2,fr4
	fmul fr6,fr4
	fmov fr3,fr9
	bf.s loc_8c11da50
	fmul fr6,fr9
	mov 0x00,r2
	mov r14,r1
	cmp/gt r12,r2
	add 0x38,r1
	addc r2,r12
	mov r14,r2
	shar r12
	lds r12,fpul
	mov 0x10,r0
	add r13,r1
	add 0x38,r2
	float fpul,fr3
	add r13,r2
	fdiv fr3,fr7
	fmov fr3,fr6
	fdiv fr6,fr5
	fdiv fr6,fr8
	fdiv fr6,fr4
	fmov fr7,@(r0,r1)
	mov 0x14,r0
	fmov fr5,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x18,r0
	add r13,r2
	fmov fr8,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x1C,r0
	add r13,r2
	fmov fr4,@(r0,r2)
	mov r14,r2
	fdiv fr6,fr9
	add 0x38,r2
	mov 0x20,r0
	add r13,r2
	fmov fr9,@(r0,r2)
	bra loc_8c11db3e            ; loc_8c11d92c+0x212
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11da50:
	lds r12,fpul
	mov r14,r2
	add 0x38,r2
	fldi0 fr6
	add r13,r2
	float fpul,fr3
	mov.l @(0xC,r2),r1
	tst r1,r1
	bf.s loc_8c11dab0
	fmov fr3,fr0
	fdiv fr0,fr5
	mov r14,r1
	fdiv fr0,fr8
	add 0x38,r1
	fdiv fr0,fr4
	add r13,r1
	mov 0x10,r0
	mov r14,r2
	fmov fr6,@(r0,r1)
	add 0x38,r2

loc_8c11da78:
	fdiv fr0,fr9
	mov 0x14,r0
	add r13,r2
	fmov fr5,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x18,r0
	add r13,r2
	fmov fr8,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x1C,r0
	add r13,r2
	fmov fr4,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x20,r0
	add r13,r2
	fmov fr9,@(r0,r2)
	bra loc_8c11db3e
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11dab0:
	mov r14,r0
	add 0x38,r0
	add r13,r0
	mov.l @(0xC,r0),r0
	cmp/eq 0x02,r0
	bf loc_8c11db00
	fdiv fr0,fr7
	mov r14,r1
	fdiv fr0,fr5
	add 0x38,r1
	fdiv fr0,fr4
	mov r14,r2
	add r13,r1
	fdiv fr0,fr9
	mov 0x10,r0
	add 0x38,r2
	add r13,r2
	fmov fr7,@(r0,r1)
	mov 0x14,r0
	fmov fr5,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x18,r0
	add r13,r2
	fmov fr6,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x1C,r0
	add r13,r2
	fmov fr4,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x20,r0
	add r13,r2
	fmov fr9,@(r0,r2)
	bra loc_8c11db3e            ; loc_8c11d92c+0x212
	nop 

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11db00:
	cmp/eq 0x04,r0
	bf loc_8c11db3e
	fdiv fr0,fr7
	mov r14,r1
	fdiv fr0,fr5
	add 0x38,r1
	fdiv fr0,fr8
	mov r14,r2
	fdiv fr0,fr4
	add r13,r1
	mov 0x10,r0
	add 0x38,r2
	add r13,r2
	fmov fr7,@(r0,r1)
	mov 0x14,r0
	fmov fr5,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x18,r0
	add r13,r2
	fmov fr8,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x1C,r0
	add r13,r2
	fmov fr4,@(r0,r2)
	mov r14,r2
	add 0x38,r2
	mov 0x20,r0
	add r13,r2
	fmov fr6,@(r0,r2)

loc_8c11db3e:
	mov r9,r0
	add 0x08,r15
	lds.l @r15+,macl
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

;==============================================
loc_8c11db60:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x8C,PC),r3
	mov.l @(0x84,PC),r14
	jsr @r3
	mov r4,r13
	mov.l @(0x88,PC),r3
	mov 0x00,r4
	mov 0x01,r2
	mov r4,r6
	cmp/pl r13
	mov.l r2,@r3
	mov.l r13,@(0x34,r14)
	bf.s loc_8c11db98
	mov r4,r5

loc_8c11db80:
	mov r14,r2
	mov r14,r3
	add 0x38,r2
	add 0x38,r3
	add r5,r2
	add 0x01,r6
	add r5,r3
	cmp/ge r13,r6
	mov.l r4,@(0xC,r3)
	mov.l r4,@r2
	bf.s loc_8c11db80
	add 0x38,r5

loc_8c11db98:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c11dba0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	shll2 r14
	mov r4,r3
	add r3,r14
	mov.l @(0x40,PC),r12
	shll2 r14
	mov.l @(0x30,PC),r10
	add r12,r14
	mov.l r5,@r14
	mov.l r6,@(0x4,r14)
	mov.l r7,@(0x8,r14)
	mov.l @(0x20,r15),r2
	mov.l r2,@(0xC,r14)
	mov.l @(0x24,r15),r3
	mov.l r3,@(0x10,r14)
	mov.l @(0x34,r10),r3
	add 0xFF,r3
	cmp/hs r3,r4
	bt loc_8c11dbda
	bra loc_8c11dce0
	nop 

loc_8c11dbda:
	mov.l @(0x14,PC),r4
	mov 0x00,r11
	mov.l @(0x4,r4),r0
	or 0x40,r0
	mov.l r0,@(0x4,r4)
	bra loc_8c11dc22
	mov r11,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C11DBe8:
	#data 0x42C80000
loc_8C11DBec:
	#data 0x8C2AA4B8
loc_8C11DBF0:
	#data 0x8C2AA2B8
loc_8C11DBF4:
	#data loc_8c11CA10
loc_8C11DBF8:
	#data 0x8C2AA50c
loc_8C11DBFc:
	#data 0x8C2D574c

;==============================================
loc_8c11dc00:
	mov r13,r14
	shll2 r14
	mov r13,r3
	add r3,r14
	shll2 r14
	add r12,r14
	mov.l @(0x10,r14),r2
	mov.l r2,@-r15
	mov.l @(0xC,r14),r3
	mov.l r3,@-r15
	mov.l @(0x8,r14),r7
	mov.l @(0x4,r14),r6
	mov.l @r14,r5
	bsr loc_8c11d8e0
	mov r13,r4
	add 0x08,r15
	add 0x01,r13

loc_8c11dc22:
	mov.l @(0x34,r10),r3
	cmp/hs r3,r13
	bf loc_8c11dc00
	mov.l @(0xD0,PC),r3
	mov.l @(0xCC,PC),r4
	jsr @r3
	nop 
	mov r0,r13
	tst r13,r13
	bt loc_8c11dc38
	trapa 0x41

loc_8c11dc38:
	mov.l @(0xC4,PC),r2
	mov.l @(0xC8,PC),r1
	mov.l @r2,r3
	mov.l @(0xC8,PC),r0
	mov.l r1,@r3
	mov.l @r0,r3
	tst r3,r3
	bf loc_8c11dc54
	mov.l @(0xC0,PC),r3
	jsr @r3
	nop 
	mov.l @(0xB8,PC),r3
	mov 0x01,r2
	mov.l r2,@r3

loc_8c11dc54:
	mov.l @(0xBC,PC),r2
	mov.l @(0xB8,PC),r4
	jsr @r2
	nop 
	mov.l @(0xBC,PC),r3
	mov.l @(0xB8,PC),r4
	jsr @r3
	mov.l r4,@r15
	mov.l @(0xC0,PC),r4
	tst r11,r11
	mov.l @r15,r2
	mov.l @(0xB4,PC),r3
	mov.l @(0xB4,PC),r1
	mov.l r2,@r3
	mov.l r11,@r1
	mov.w @(0x6,r4),r0
	fldi0 fr15
	mov r0,r14
	mov.w @(0x4,r4),r0
	mov r0,r2
	lds r2,fpul
	bt.s loc_8c11dcb0
	float fpul,fr6
	mov.w @(0xA,r4),r0
	cmp/eq 0x01,r0
	bf.s loc_8c11dc94
	exts.w r14,r14
	mov.w @(0x66,PC),r4
	add r14,r14
	cmp/gt r4,r14
	bf loc_8c11dc94
	mov r4,r14

loc_8c11dc94:
	lds r14,fpul
	mov.l @(0x94,PC),r3
	fmov fr15,fr5
	float fpul,fr3
	fmov fr3,fr7
	jsr @r3
	fmov fr15,fr4
	bra loc_8c11dcbe
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11dcb0:
	exts.w r14,r2
	fmov fr15,fr5
	lds r2,fpul
	mov.l @(0x74,PC),r2
	float fpul,fr7
	jsr @r2
	fmov fr15,fr4

loc_8c11dcbe:
	mov.l @(0x74,PC),r3
	mova @(0x6C,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(0x70,PC),r2
	mov 0x0C,r4
	mov.l @(0x70,PC),r3
	mov.l r4,@r2
	mov.l @(0x70,PC),r1
	mov.l @(0x70,PC),r2
	mov.l r4,@r3
	jsr @r2
	mov.l @r1,r4
	bra loc_8c11dce2
	mov r13,r0

;==============================================
	nop
	nop

;==============================================
loc_8c11dce0:
	mov 0x00,r0

loc_8c11dce2:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11dcf4:
	#data 0x01E0
	#align4

loc_8c11dcf8:
	#data 0x8C2AA2B8
loc_8C11DCFC:
	#data bank17.loc_8c17BA80
loc_8C11Dd00:
	#data 0x8C2DB04c
loc_8C11Dd04:
	#data 0x00800000
loc_8C11Dd08:
	#data 0x8C2AA540
loc_8C11DD0C:
	#data loc_8c11BCF0
loc_8C11DD10:
	#data 0x8C2DB068
loc_8C11DD14:
	#data loc_8c11C380
loc_8C11DD18:
	#data 0x8C2DE698
loc_8C11DD1C:
	#data loc_8c11C2E0
loc_8c11dd20:
	#data 0x8C2DEC98
loc_8c11dd24:
	#data 0x8C2DEC9c
loc_8c11dd28:
	#data 0x8C2DEE5c
loc_8C11DD2C:
	#data bank12.loc_8c122160
loc_8C11DD30:
	#data 0x3CA3D70a
loc_8C11DD34:
	#data bank17.loc_8c17E360
loc_8C11DD38:
	#data 0xFF000038
loc_8C11DD3c:
	#data 0xFF00003c
loc_8C11DD40:
	#data 0x8C2AA520
loc_8C11DD44:
	#data bank17.loc_8c17CBA0
	
;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11dd50:
	mov.l @(0xF0,PC),r2
	mov 0x01,r3
	sts.l pr,@-r15
	mov.l r3,@r2
	mov.l @(0xF0,PC),r3
	mov.l @(0xEC,PC),r4
	jsr @r3
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

;==============================================
loc_8c11dd70:
	sts.l pr,@-r15
	mov.l @(0xDC,PC),r3
	mov.l @(0xD0,PC),r4
	jsr @r3
	nop 
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

;==============================================
loc_8c11dd80:
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	mov.l @(0xCC,PC),r4
	jsr @r3
	nop 
	mov.l @(0xC8,PC),r3
	mov.l @(0xCC,PC),r1
	mov.l @r3,r2
	mov.l r2,@r1
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11dda0:
	sts.l pr,@-r15
	mov.l @(0xBC,PC),r3
	mov.l @(0xAC,PC),r4
	jsr @r3
	nop 
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

;==============================================
loc_8c11ddb0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA4,PC),r10
	mov.l @(0xA0,PC),r9
	mov.l r4,@r15
	mov.l @r10,r3
	tst r3,r3
	bf.s loc_8c11ddda
	mov 0x00,r13
	mov.l @(0x9C,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c11ddda
	bra loc_8c11dee0
	nop 

loc_8c11ddda:
	mov.l @(0xA4,PC),r14
	mov.l @(0x90,PC),r3
	mov.w @(0x4,r14),r0
	mov.l @(0x90,PC),r2
	mov r0,r12
	mov.w @(0x6,r14),r0
	mov.l @(0x90,PC),r1
	mov r0,r11
	mov.l @r3,r4
	mov.w @(0xA,r14),r0
	mov.l @r2,r6
	mov.l @r1,r5
	tst r0,r0
	mov.l @(0x84,PC),r3
	bt.s loc_8c11de20
	mov.l @r3,r7
	mov r12,r14
	mov 0xFC,r2
	add 0x0F,r14
	mov r11,r0
	shad r2,r14
	mov.w @(0x3A,PC),r2
	shll r0
	cmp/gt r2,r0
	bt.s loc_8c11de2a
	add 0xFF,r14
	mov r11,r12
	mov 0xFC,r1
	add 0x0F,r12
	bra loc_8c11de32
	shad r1,r12

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11de20:
	mov r12,r14
	mov 0xFB,r2
	add 0x1F,r14
	shad r2,r14
	add 0xFF,r14

loc_8c11de2a:
	mov r11,r12
	mov 0xFB,r3
	add 0x1F,r12
	shad r3,r12

loc_8c11de32:
	mov.l @r10,r2
	add 0xFF,r12
	tst r2,r2
	bt loc_8c11de90
	mov.l @(0x30,PC),r2
	mov 0x01,r3
	bra loc_8c11de94
	mov.l r3,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11de42:
	#data 0x01E0
	#align4

loc_8c11de44:
	#data 0x8C2AA510
loc_8c11de48:
	#data 0x8C2AA2B8
loc_8C11DE4C:
	#data bank17.loc_8c17B660
loc_8C11DE50:
	#data bank17.loc_8c17BA20
loc_8C11DE54:
	#data 0x8C2DB048
loc_8C11DE58:
	#data bank17.loc_8c17B4C0
loc_8C11DE5c:
	#data 0x8C2AA508
loc_8C11DE60:
	#data bank17.loc_8c17B880
loc_8C11DE64:
	#data bank16.loc_8c16BC24
loc_8C11DE68:
	#data bank16.loc_8c16BD7c
loc_8C11DE6C:
	#data bank16.loc_8c16BC28
loc_8C11DE70:
	#data bank16.loc_8c16BD5c
loc_8C11DE74:
	#data bank16.loc_8c16BD60
loc_8C11DE78:
	#data bank16.loc_8c16BD64
loc_8C11DE7C:
	#data bank16.loc_8c16BD68
loc_8C11DE80:
	#data 0x8C2DEE5c

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11de90:
	mov.l @(0xF8,PC),r0
	mov.l r13,@r0

loc_8c11de94:
	mov.l @(0xF8,PC),r3
	cmp/gt r14,r6
	mov.l @(0xFC,PC),r1
	mov.l @(0xF8,PC),r2
	mov.l r4,@r3
	mov.l @(0xFC,PC),r3
	mov.l r6,@r2
	mov.l r5,@r1
	bf.s loc_8c11deaa
	mov.l r7,@r3
	mov r14,r6

loc_8c11deaa:
	cmp/ge r12,r7
	bf loc_8c11deb0
	mov r12,r7

loc_8c11deb0:
	mov.l @(0xEC,PC),r2
	jsr @r2
	nop 
	mov.l @(0xEC,PC),r3
	jsr @r3
	nop 
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c11ded0
	bra loc_8c11ded2
	mov 0x00,r4

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ded0:
	mov 0x01,r4

loc_8c11ded2:
	mov.l @(0xD4,PC),r2
	jsr @r2
	nop 
	mov.l r0,@r9
	bra loc_8c11defc
	mov.l r13,@r10
	nop 

loc_8c11dee0:
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c11def0               ; loc_8c11dee8+0x8
	bra loc_8c11def2              ; loc_8c11dee8+0xa
	mov 0x00,r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11def0:
	mov 0x01,r4

loc_8c11def2:
	mov.l @(0xB8,PC),r2
	jsr @r2
	nop 
	mov 0xFF,r3
	mov.l r3,@r9

loc_8c11defc:
	mov.l @(0xB0,PC),r2
	mov r13,r0
	mov.l r13,@r2
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
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11df20:
	mov.l @(0x90,PC),r3
	mov 0xDF,r2
	mov.l @r3,r1
	and r2,r1
	rts 
	mov.l r1,@r3

;==============================================
	nop
	nop

;==============================================
loc_8c11df30:
	mov.l @(0x80,PC),r3
	mov.l @r3,r0
	or 0x20,r0
	rts 
	mov.l r0,@r3

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11df40:
	mov r5,r0
	rts 
	cmp/eq 0x01,r0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11df50:
	mov 0x38,r3
	mov.l @(0x64,PC),r0
	sts.l macl,@-r15
	mul.l r3,r4
	mov.w @(0x2A,PC),r2
	sts macl,r3
	mov.l @(r0,r3),r1
	or r2,r1
	mov.l r1,@(r0,r3)
	rts 
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11df70:
	mov 0x38,r3
	mov.l @(0x44,PC),r0
	sts.l macl,@-r15
	mul.l r3,r4
	mov.w @(0xC,PC),r2
	sts macl,r3
	mov.l @(r0,r3),r1
	and r2,r1
	mov.l r1,@(r0,r3)
	rts 
	lds.l @r15+,macl

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11DF86:
	#data 0x00A0
loc_8C11DF88:
	#data 0xFF5f
	#align4

loc_8C11DF8C:
	#data bank16.loc_8c16BC28
loc_8C11DF90:
	#data bank16.loc_8c16BD6c
loc_8C11DF94:
	#data bank16.loc_8c16BD70
loc_8C11DF98:
	#data bank16.loc_8c16BD74
loc_8C11DF9C:
	#data bank16.loc_8c16BD78
loc_8C11DFA0:
	#data bank17.loc_8c17E400
loc_8C11DFA4:
	#data bank12.loc_8c122280
loc_8C11DFA8:
	#data bank17.loc_8c17B380
loc_8C11DFAC:
	#data bank17.loc_8c17B420
loc_8C11DFb0:
	#data 0x8C2AA510
loc_8C11DFb4:
	#data 0x8C2AA2Bc
loc_8C11DFb8:
	#data 0x8C2AA2F0

;==============================================
	nop
	nop
;==============================================

loc_8C11DFc0:
	sts.l macl,@-r15
	mov r5,r0
	cmp/eq 0x00,r0
	mov 0x00,r7
	bt.s loc_8c11dfe0
	mov r7,r6
	cmp/eq 0x02,r0
	bt loc_8c11dff0
	cmp/eq 0x04,r0
	bt loc_8c11e000
	bra loc_8c11e002
	nop 

;==============================================
	nop
	nop
	nop
	nop
;==============================================
loc_8c11dfe0:
	bra loc_8c11e002
	mov r7,r6

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11dff0:
	bra loc_8c11e002
	mov 0x02,r6

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e000:
	mov 0x04,r6

loc_8c11e002:
	mov 0x38,r2
	mov.l @(0x8,PC),r0
	mul.l r2,r4
	sts macl,r4
	mov.l r6,@(r0,r4)
	rts 
	lds.l @r15+,macl

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11e010:
	#data 0x8C2AA2Fc
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000


;==============================================
loc_8c11e020:
	fmov fr4,fr3
	fldi1 fr2
	fabs fr3
	fcmp/gt fr2,fr3
	sts.l pr,@-r15
	bf loc_8c11e040
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

;==============================================
loc_8c11e040:
	bsr loc_8c11e0f0
	nop 
	mov.w @(0xBC,PC),r3
	neg r0,r0
	mov.l @(0xBC,PC),r2
	add r3,r0
	and r2,r0
	lds.l @r15+,pr
	rts 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e060:
	fmov fr15,@-r15
	fldi0 fr3
	fmov fr4,fr15
	fcmp/eq fr3,fr15
	bf loc_8c11e070
	mov 0x00,r0
	rts 
	fmov @r15+,fr15

;==============================================
loc_8c11e070:
	fldi1 fr4
	fdiv fr15,fr4
	bra loc_8c11e0f0
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e080:
	rts 
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e090:
	fmov fr15,@-r15
	fldi0 fr3
	fmov fr4,fr15
	fcmp/eq fr3,fr15
	bf loc_8c11e0a0
	mov 0x00,r0
	rts 
	fmov @r15+,fr15

;==============================================
loc_8c11e0a0:
	fldi1 fr4
	fdiv fr15,fr4
	bra loc_8c11e170          ; loc_8c11e0f0+0x80
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e0b0:
	rts
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e0c0:
	fmov fr15,@-r15
	fldi0 fr3
	fmov fr4,fr15
	fcmp/eq fr3,fr15
	bf loc_8c11e0d0
	mov 0x00,r0
	rts 
	fmov @r15+,fr15

;==============================================
loc_8c11e0d0:
	fldi1 fr4
	fdiv fr15,fr4
	bra loc_8c11e020
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e0e0:
	rts 
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e0f0:
	fmov fr4,fr3
	fabs fr3
	fldi1 fr2
	fcmp/gt fr2,fr3
	fmov fr15,@-r15
	fmov fr14,@-r15
	bf.s loc_8c11e110
	fmov fr4,fr15
	bra loc_8c11e142
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11e0f4:
	#data 0x4000
	#align4
loc_8c11e0f8:
	#data 0x0000FFFf

;==============================================
	nop
	nop


;==============================================
loc_8c11e110:
	fmov fr15,fr3
	fmul fr15,fr3
	fldi1 fr2
	fsub fr3,fr2
	fldi0 fr3
	fsqrt fr2
	fmov fr2,fr14
	fcmp/eq fr3,fr14
	bt loc_8c11e130
	fmov fr15,fr4
	fdiv fr14,fr4
	fmov @r15+,fr14
	bra loc_8c11e170
	fmov @r15+,fr15

;==============================================
	nop
	nop

;==============================================
loc_8c11e130:
	fcmp/gt fr3,fr15
	bf loc_8c11e140
	mov.w @(0xBE,PC),r0
	bra loc_8c11e142
	nop 

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11e140:
	mov.l @(0xB4,PC),r0

loc_8c11e142:
	fmov @r15+,fr14
	rts 
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e150:
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c11e160
	fneg fr4
	fsqrt fr4
	fmov fr4,fr0
	rts 
	fneg fr0

;==============================================
loc_8c11e160:
	fsqrt fr4
	fmov fr4,fr0
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E170:
	fmov fr4,fr3
	fabs fr3
	fldi1 fr6
	fcmp/gt fr6,fr3
	bt/s loc_8C11E180
	fldi0 fr7
	bra loc_8C11E184
	fmov fr4,fr5

loc_8C11E180:
	fmov fr6,fr5
	fdiv fr4,fr5

loc_8C11E184:
	mov 0x0D,r4 ; r4 set to 0x0d
	mov 0x01,r5 ; r5 set to 0x01

loc_8C11E188:
	lds r4,fpul
	mov r4,r3 ; r3 set to 0x0d
	shll r3 ; r3 set to 0x1a
	add 0xFF,r4 ; r4 set to 0x0c
	float fpul,fr3
	lds r3,fpul
	cmp/ge r5,r4
	float fpul,fr2
	fmov fr3,fr8
	fmul fr8,fr3 ; r3 ??? bc r8 is ???
	fadd fr7,fr2
	fmul fr5,fr3
	fadd fr6,fr2
	fmul fr5,fr3
	fmov fr3,fr7
	bt/s loc_8C11E188
	fdiv fr2,fr7
	fadd fr6,fr7
	mova @(loc_8C11E1FC,pc),r0  ; r0 init to 0x8C11E1FC, r0 init to 0x8C11E1Fc
	fcmp/gt fr6,fr4 ; r4 ??? bc r6 is ???
	mov.l @(loc_8C11E208,pc),r3 ; r3 set to 0xFFFF, r3 set to 0xFFFf
	fdiv fr7,fr5 ; r5 ??? bc r7 is ???
	fmov.s @r0,fr7
	mova @(loc_8C11E200,pc),r0  ; r0 set to 0x8C11E200, r0 set to 0x8C11E200
	fmov.s @r0,fr2
	mova @(loc_8C11E204,pc),r0  ; r0 set to 0x8C11E204, r0 set to 0x8C11E204
	fmov.s @r0,fr1
	fmov fr5,fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	fadd fr7,fr3
	fmul fr2,fr3
	fdiv fr7,fr3
	fadd fr1,fr3
	ftrc fr3,fpul
	sts fpul,r4
	bf/s loc_8C11E1E0
	and r3,r4
	mov.w @(loc_8C11E1F6,pc),r0 ; r0 set to 0x4000, r0 set to 0x4000
	bra loc_8C11E1Ea
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E1E0:
	fldi1 fr3
	fneg fr3
	fcmp/gt fr4,fr3
	bf loc_8C11E1F0
	mov.l @(loc_8C11E1F8,pc),r0 ; r0 set to 0xC000

loc_8C11E1EA:
	sub r4,r0 ; r0 ??? bc r4 is ???
	rts
	extu.w r0,r0

;==============================================
loc_8C11E1F0:
	mov r4,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11E1F6:
	#data 0x4000
	#align4

loc_8C11E1F8:
	#data 0x0000C000
loc_8C11E1FC:
	#data 0x40C90FDb
loc_8C11E200:
	#data 0x47800000
loc_8C11E204:
	#data 0x3F000000
loc_8C11E208:
	#data 0x0000FFFf

;==============================================
	nop
	nop

;==============================================
loc_8C11E210:
	mov.l r14,@-r15
	fcmp/gt fr5,fr4
	fmov.s fr15,@-r15
	fmov fr4,fr15
	fdiv fr5,fr15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C11E2D4,pc),r14 ; r14 set to 0xFFFf
	fmov fr4,fr6
	fneg fr6
	fmov fr5,fr14 ; r14 ??? bc r5 is ???
	bt/s loc_8C11E270
	fdiv fr4,fr14
	fcmp/gt fr5,fr6
	bt loc_8C11E250
	fldi0 fr3
	fcmp/eq fr3,fr5
	bf loc_8C11E240
	bra loc_8C11E2Aa
	mov 0x00,r0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E240:
	lds.l @r15+,pr
	fmov fr15,fr4
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	bra loc_8C11E170
	mov.l @r15+,r14

;==============================================
	nop
	nop

;==============================================
loc_8C11E250:
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8C11E260
	mov.l @(loc_8C11E2D8,pc),r0 ; r0 set to 0xC000
	bra loc_8C11E2Aa
	nop

;==============================================
	nop
	nop

;==============================================
loc_8C11E260:
	bsr loc_8C11E170
	fmov fr14,fr4
	mov.l @(loc_8C11E2D8,pc),r3 ; r3 set to 0xC000
	bra loc_8C11E2A6
	neg r0,r0

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11E270:
	fcmp/gt fr5,fr6
	bt loc_8C11E290
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8C11E280
	mov.w @(loc_8C11E2D2,pc),r0 ; r0 set to 0x4000
	bra loc_8C11E2Aa
	nop

;==============================================
loc_8C11E280:
	bsr loc_8C11E170
	fmov fr14,fr4
	mov.w @(loc_8C11E2D2,pc),r3 ; r3 set to 0x4000
	bra loc_8C11E2A6
	neg r0,r0

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11E290:
	fldi0 fr3
	fcmp/eq fr3,fr5
	bf loc_8C11E2A0
	mov.l @(loc_8C11E2DC,pc),r0 ; r0 set to 0x8000
	bra loc_8C11E2Aa
	nop

;==============================================
	nop
	nop

;==============================================
loc_8C11E2A0:
	bsr loc_8C11E170
	fmov fr15,fr4
	mov.l @(loc_8C11E2DC,pc),r3 ; r3 set to 0x8000

loc_8C11E2A6:
	add r3,r0
	and r14,r0

loc_8C11E2AA:
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e2c0:
	sts.l pr,@-r15
	add 0xFC,r15
	fmov fr4,@r15
	bsr loc_8c11e460
	fneg fr4
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	fneg fr0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11E2D2:
	#data 0x4000
	#align4

loc_8C11E2D4:
	#data 0x0000FFFf
loc_8C11E2D8:
	#data 0x0000C000
loc_8C11E2DC:
	#data 0x00008000

;==============================================
loc_8C11E2E0:
	mov.l @(0xE0,PC),r3
	mov.l r14,@-r15
	extu.w r4,r14
	cmp/gt r3,r14
	bf loc_8c11e2f0
	mov.l @(0xDC,PC),r1
	sub r14,r1
	mov r1,r14

loc_8c11e2f0:
	mov.w @(0xCC,PC),r4
	sub r14,r4
	bra loc_8c11e860
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e300:
	sts.l pr,@-r15
	extu.w r4,r4
	tst r4,r4
	bt loc_8c11e30e
	mov.l @(0xB8,PC),r3
	cmp/eq r3,r4
	bf loc_8c11e320

loc_8c11e30e:
	lds.l @r15+,pr
	mova @(0xB8,PC),r0
	rts 
	fmov @r0,fr0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e320:
	bsr loc_8c11e860
	nop 
	fmov fr0,fr3
	fldi1 fr0
	fdiv fr3,fr0
	lds.l @r15+,pr
	rts 
	nop 


;==============================================
loc_8C11E330:
	add 0xFC,r15
	fmov fr4,fr3
	mova @(loc_8C11E3D0,pc),r0  ; r0 init to 0x8C11E3D0
	fabs fr3
	fmov.s fr4,@r15
	fmov.s @r0,fr2
	fneg fr3
	fmov fr3,fr4
	fadd fr2,fr4
	bra loc_8C11E960
	add 0x04,r15

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e350:
	extu.w r4,r4
	lds r4,fpul
	mova @(0x7C,PC),r0
	sts.l pr,@-r15
	fmov @r0,fr2
	mova @(0x7C,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	fmul fr2,fr3
	fmov fr3,fr4
	bsr loc_8c11e3e0
	fdiv fr1,fr4
	fmov fr0,fr4
	fldi1 fr0
	fdiv fr4,fr0
	fldi1 fr3
	fadd fr3,fr3
	lds.l @r15+,pr
	fadd fr4,fr0
	rts 
	fdiv fr3,fr0

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11e380:
	sts.l pr,@-r15
	extu.w r4,r4
	tst r4,r4
	bt loc_8c11e394
	mov.w @(0x34,PC),r3
	cmp/eq r3,r4
	bt loc_8c11e3a6
	mov.l @(0x34,PC),r3
	cmp/eq r3,r4
	bf loc_8c11e3a0

loc_8c11e394:
	lds.l @r15+,pr
	mova @(0x34,PC),r0
	rts 
	fmov @r0,fr0

;==============================================
	nop
	nop

;==============================================
loc_8c11e3a0:
	mov.l @(0x38,PC),r3
	cmp/eq r3,r4
	bf loc_8c11e3b0

loc_8c11e3a6:
	lds.l @r15+,pr
	rts 
	fldi0 fr0


;==============================================
	nop
	nop

;==============================================
loc_8c11e3b0:
	bsr loc_8c11eb20
	nop 
	fmov fr0,fr3
	fldi1 fr0
	fdiv fr3,fr0
	lds.l @r15+,pr

loc_8c11e3bc:
	rts
	nop

;==============================================
loc_8c11e3c0:
	#data 0x4000
	#align4

loc_8c11e3c4:
	#data 0x00008000
loc_8c11e3c8:
	#data 0x00010000
loc_8c11e3cc:
	#data 0x7F7FFFFf
loc_8C11E3D0:
	#data 0x3FC90FDb
loc_8C11E3D4:
	#data 0x40C90FDb
loc_8C11E3D8:
	#data 0x47800000
loc_8C11E3Dc:
	#data 0x0000C000

;==============================================
loc_8C11E3E0:
	fmov fr15,@-r15
	mova @(0x190,PC),r0
	fmov fr4,fr15
	fldi0 fr2
	fcmp/gt fr15,fr2
	fmov fr14,@-r15
	fmov fr13,@-r15
	bt.s loc_8c11e400
	fmov @r0,fr4
	mova @(0x184,PC),r0
	bra loc_8c11e404              ; loc_8c11e3e0+0x24
	fmov @r0,fr3

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E400:
	mova @(0x178,PC),r0
	fmov @r0,fr3

loc_8C11E404:
	fmov fr15,fr2
	fdiv fr4,fr2
	mova @(0x174,PC),r0
	mov 0x0A,r5
	mov 0x06,r6
	fadd fr2,fr3
	ftrc fr3,fpul
	fmov @r0,fr3
	sts fpul,r4
	lds r4,fpul
	float fpul,fr2
	fmul fr4,fr2
	fsub fr2,fr15
	fmov fr15,fr4
	fmul fr15,fr4
	fmov fr4,fr14
	fdiv fr3,fr14

loc_8c11e426:
	lds r5,fpul
	add 0xFC,r5
	cmp/ge r6,r5
	float fpul,fr3
	fadd fr14,fr3
	fmov fr4,fr14
	bt.s loc_8c11e426
	fdiv fr3,fr14
	fmov fr15,fr3
	fadd fr14,fr3
	fldi1 fr13
	fadd fr13,fr13
	fmov fr14,fr2
	fsub fr15,fr2
	fadd fr13,fr3
	fadd fr13,fr2
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov fr3,fr4
	fdiv fr2,fr4
	bra loc_8c11e530
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E460:
	mova @(loc_8C11E584,pc),r0  ; r0 init to 0x8C11E584
	fmov fr4,fr5
	fmov.s @r0,fr3
	fabs fr5
	fcmp/gt fr5,fr3
	bf loc_8C11E490
	ftrc fr5,fpul
	fldi0 fr2
	fcmp/gt fr4,fr2
	sts fpul,r4
	lds r4,fpul
	float fpul,fr3
	bf/s loc_8C11E4A0
	fmov fr3,fr6
	fsub fr6,fr5
	fcmp/eq fr2,fr5
	bt loc_8C11E490
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	sub r4,r3 ; r3 ??? bc r4 is ???
	lds r3,fpul
	float fpul,fr3
	rts
	fmov fr3,fr0

;==============================================
	nop

;==============================================
loc_8C11E490:
	rts
	fmov fr4,fr0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E4A0:
	fmov fr6,fr0
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e4b0:
	mova @(0xD0,PC),r0
	fmov fr4,fr5
	fmov @r0,fr3
	fabs fr5
	fcmp/gt fr5,fr3
	bt loc_8c11e4c0
	rts 
	fldi0 fr0

;==============================================
loc_8c11e4c0:
	ftrc fr5,fpul
	fldi0 fr1
	fcmp/gt fr4,fr1
	sts fpul,r4
	lds r4,fpul
	float fpul,fr2
	bf.s loc_8c11e4e0
	fsub fr2,fr5
	fmov fr5,fr0
	rts 
	fneg fr0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e4e0:
	fmov fr5,fr0
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e4f0:
	fldi0 fr3
	fcmp/eq fr3,fr4
	sts.l pr,@-r15
	bf loc_8c11e500
	lds.l @r15+,pr
	mova @(0x8C,PC),r0
	rts 
	fmov @r0,fr0

;==============================================
loc_8c11e500:
	bsr loc_8c11e150
	nop 
	fmov fr0,fr3
	fldi1 fr0
	fdiv fr3,fr0
	lds.l @r15+,pr
	rts 
	nop

;==============================================
loc_8C11E510:
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8C11E520
	mova @(loc_8C11E588,pc),r0  ; r0 init to 0x8C11E588
	rts
	fmov.s @r0,fr0

;==============================================
	nop
	nop

;==============================================
loc_8C11E520:
	fsqrt fr4
	fldi1 fr0
	fdiv fr4,fr0
	rts
	nop

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11E530:
	add 0xFC,r15
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8c11e540
	fldi0 fr0
	rts 
	add 0x04,r15

;==============================================
	nop 

;==============================================
loc_8C11E540:
	mov r15,r5
	mov 0xE9,r2
	mov 0x01,r7
	mov.l @(0x44,PC),r6
	fmov fr4,@r15
	mov.l @r5,r3
	shad r2,r3
	extu.b r3,r3
	add r3,r4
	cmp/ge r7,r4
	bt loc_8c11e5a0
	mov.l @r5,r2
	sub r4,r7
	mov.l @(0x34,PC),r3
	neg r7,r7
	mov.l @(0x34,PC),r1

loc_8c11e560:
	and r3,r2
	mov.l @r5,r0
	or r1,r2
	shad r7,r2
	and r6,r0
	mov r2,r4
	mov r0,r2
	or r4,r2
	bra loc_8c11e5d2
	mov.l r2,@r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11e574:
	#data 0x3F317218
loc_8c11e578:
	#data 0x3F000000
loc_8c11e57c:
	#data 0xBF000000
loc_8c11e580:
	#data 0x41600000
loc_8C11E584:
	#data 0x4B000000
loc_8C11E588:
	#data 0x7F7FFFFf
loc_8C11E58c:
	#data 0x80000000
loc_8C11E590:
	#data 0x007FFFFf
loc_8C11E594:
	#data 0x00800000

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E5A0:
	mov.w @(0xF8,PC),r3
	cmp/gt r3,r4
	bf loc_8c11e5c0
	mov.l @r5,r1
	mov.l @(0xF4,PC),r2
	and r6,r1
	mov r1,r0
	or r2,r0
	bra loc_8c11e5d2
	mov.l r0,@r5

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E5C0:
	mov.l @r5,r2
	mov.l @(0xE0,PC),r3
	and r3,r2
	mov.l r2,@r5
	mov 0x17,r2
	mov.l @r5,r1
	shad r2,r4
	or r4,r1
	mov.l r1,@r5


loc_8C11E5D2:
	fmov @r15,fr0
	rts 
	add 0x04,r15

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e5e0:
	fldi0 fr3
	fcmp/gt fr4,fr3
	mov 0x01,r4
	bt.s loc_8c11e5f0
	fldi0 fr6
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8c11e600

loc_8c11e5f0:
	rts 
	fldi0 fr0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E600:
	fldi1 fr5
	fadd fr5,fr5
	mova @(0xA0,PC),r0
	fcmp/gt fr4,fr5
	bt.s loc_8c11e614
	fmov @r0,fr7

loc_8C11E60C:
	fdiv fr5,fr4
	fcmp/gt fr4,fr5
	bf.s loc_8c11e60c
	fadd fr7,fr6

loc_8C11E614:
	fldi1 fr8
	fcmp/gt fr4,fr8
	bf loc_8c11e622

loc_8C11E61A:
	fmul fr5,fr4
	fcmp/gt fr4,fr8
	bt.s loc_8c11e61a
	fsub fr7,fr6

loc_8C11E622:
	fldi1 fr3
	fmov fr4,fr2
	fneg fr3
	fadd fr3,fr2
	fmov fr4,fr1
	fadd fr8,fr1
	fmov fr2,fr4
	fdiv fr1,fr4
	fmov fr5,fr2
	fmov fr4,fr5
	fmul fr2,fr5
	fmov fr4,fr2
	fmul fr2,fr4

loc_8C11E63C:
	lds r4,fpul
	fmov fr5,fr2
	fmul fr4,fr5
	fmov fr6,fr7
	float fpul,fr3
	fdiv fr3,fr2
	fadd fr2,fr6
	fcmp/eq fr7,fr6
	bf.s loc_8c11e63c
	add 0x02,r4
	fmov fr6,fr0
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e660:
	sts.l pr,@-r15
	bsr loc_8c11e5e0
	nop 
	lds.l @r15+,pr
	mova @(0x40,PC),r0
	fmov @r0,fr3
	rts 
	fdiv fr3,fr0

;==============================================
loc_8c11e670:
	sts.l pr,@-r15
	bsr loc_8c11e5e0
	nop 
	lds.l @r15+,pr
	mova @(0x2C,PC),r0
	fmov @r0,fr3
	rts 
	fdiv fr3,fr0

;==============================================
loc_8C11E680:
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov fr5,fr14
	ftrc fr14,fpul
	fldi0 fr3
	fmov fr4,fr15
	fcmp/eq fr3,fr15
	sts.l pr,@-r15
	bf/s loc_8C11E6B0
	sts fpul,r4
	fcmp/gt fr3,fr14
	bt loc_8C11E706
	bra loc_8C11E720
	fldi1 fr0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11e69c:
	#data 0x00Fe
	#align4

loc_8c11e6a0:
	#data 0x7F800000
loc_8c11e6a4:
	#data 0x807FFFFf
loc_8c11e6a8:
	#data 0x3F317218
loc_8c11e6ac:
	#data 0x40135D8e

loc_8c11e6b0:
	lds r4,fpul
	float fpul,fr3
	fcmp/eq fr3,fr14
	bf loc_8c11e700
	cmp/pz r4
	bt/s loc_8c11e6c6
	fldi1 fr5
	fmov fr15,fr3
	neg r4,r4
	fmov fr5,fr15
	fdiv fr3,fr15

loc_8c11e6c6:
	mov 0x01,r5
	fmov fr5,fr4

loc_8c11e6ca:
	mov r4,r2
	tst r5,r2
	bt loc_8c11e6d2
	fmul fr15,fr4

loc_8c11e6d2:
	mov 0x00,r3
	cmp/gt r4,r3
	addc r3,r4
	shar r4
	tst r4,r4
	bt loc_8c11e6f0
	bra loc_8c11e6ca
	fmul fr15,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e6f0:
	bra loc_8c11e720
	fmov fr4,fr0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e700:
	fldi0 fr3
	fcmp/gt fr15,fr3
	bf loc_8c11e710

loc_8C11E706:
	bra loc_8C11E720
	fldi0 fr0

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11E710:
	bsr loc_8c11e5e0
	fmov fr15,fr4
	lds.l @r15+,pr
	fmov fr14,fr4
	fmul fr0,fr4
	fmov @r15+,fr14
	bra loc_8c11e3e0
	fmov @r15+,fr15

loc_8C11E720:
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	rts
	fmov.s @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop

;==============================================
;Rng_function
loc_8c11e730:
	mov.l @(loc_8C11E7AC,pc),r4 ; r4 set to bank16.loc_8c16BC2c
	mov.l @(loc_8C11E7B0,pc),r3 ; r3 set to 0x41C64E6d
	sts.l macl,@-r15
	mov.l @r4,r2
	mov.w @(loc_8C11E7A6,pc),r1 ; r1 set to 0x3039
	mul.l r3,r2
	mov.w @(loc_8C11E7A8,pc),r2 ; r2 set to 0x7FFf
	sts macl,r3
	add r1,r3 ; r3 set to 0x41C67EA6
	mov r3,r0 ; r0 set to 0x41C67EA6
	shlr16 r0
	and r2,r0 ; r0 ??
	mov.l r3,@r4 ; r4 ??
	rts
	lds.l @r15+,macl

;==============================================
	nop

;==============================================
loc_8C11E750:
	sts.l pr,@-r15
	bsr loc_8c11e730
	nop
	lds r0,fpul
	mova @(loc_8C11E7B4,pc),r0  ; r0 init to 0x8C11E7B4
	lds.l @r15+,pr
	fmov.s @r0,fr2
	float fpul,fr3
	fmov fr3,fr0 ; r0 ??? bc r3 is ???
	rts
	fmul fr2,fr0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E770:
	mov.l @(loc_8C11E7AC,pc),r3 ; r3 set to bank16.loc_8c16BC2c
	rts
	mov.l r4,@r3

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e780:
	mova @(0x34,PC),r0
	fmov fr4,fr5
	fmov @r0,fr3
	fabs fr5
	fcmp/gt fr5,fr3
	bf loc_8c11e7d0
	ftrc fr5,fpul
	fldi0 fr2
	sts fpul,r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr6
	fsub fr6,fr5
	fcmp/eq fr2,fr5
	bt loc_8c11e7d0
	fcmp/gt fr2,fr4
	bf loc_8c11e7c0
	rts 
	fmov fr6,fr0

;==============================================
loc_8C11E7A6:
	#data 0x3039
loc_8C11E7A8:
	#data 0x7FFf
	#align4

loc_8C11E7AC:
	#data bank16.loc_8c16BC2c
loc_8C11E7B0:
	#data 0x41C64E6d
loc_8C11E7B4:
	#data 0x38000000
loc_8C11E7B8:
	#data 0x4B000000

;==============================================
	nop
	nop

;==============================================
loc_8c11e7c0:
	neg r4,r4
	lds r4,fpul
	float fpul,fr3
	rts 
	fmov fr3,fr0

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11e7d0:
	fmov fr4,fr0
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e7e0:
	mova @(0xEC,PC),r0
	fmov fr4,fr5
	fmov @r0,fr3
	fabs fr5
	fcmp/gt fr5,fr3
	bf loc_8c11e820
	ftrc fr5,fpul
	fldi0 fr2
	sts fpul,r4
	lds r4,fpul
	float fpul,fr3
	fsub fr3,fr5
	fcmp/eq fr2,fr5
	bt loc_8c11e820
	fcmp/gt fr2,fr4
	bf loc_8c11e810
	add 0x01,r4
	bra loc_8c11e816
	lds r4,fpul

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e810:
	mov 0xFF,r2
	sub r4,r2
	lds r2,fpul

loc_8c11e816:
	float fpul,fr3
	rts 
	fmov fr3,fr0


;==============================================
	nop
	nop

;==============================================
loc_8c11e820:
	fmov fr4,fr0
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e830:
	mov.w @(0x98,PC),r3
	extu.w r4,r4
	sts.l pr,@-r15
	cmp/eq r3,r4
	bt loc_8c11e840
	mov.l @(0x98,PC),r3
	cmp/eq r3,r4
	bf loc_8c11e850

loc_8c11e840:
	lds.l @r15+,pr
	mova @(0x94,PC),r0
	rts 
	fmov @r0,fr0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e850:
	bsr loc_8c11e2e0
	nop 
	fmov fr0,fr3
	fldi1 fr0
	fdiv fr3,fr0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C11E860:
	extu.w r4,r4
	fldi1 fr7
	lds r4,fpul
	mova @(loc_8C11E8DC,pc),r0  ; r0 init to 0x8C11E8Dc
	fmov.s @r0,fr2
	mova @(loc_8C11E8E0,pc),r0  ; r0 set to 0x8C11E8E0
	fmov.s @r0,fr1
	fadd fr7,fr7
	float fpul,fr3
	mova @(loc_8C11E8E4,pc),r0  ; r0 set to 0x8C11E8E4
	fmov.s @r0,fr5
	mova @(loc_8C11E8E8,pc),r0  ; r0 set to 0x8C11E8E8
	fmov.s @r0,fr0 ; r0 ??
	mov 0x0B,r4 ; r4 set to 0x0b
	mov 0x03,r5 ; r5 set to 0x03
	fmul fr2,fr3
	fdiv fr1,fr3
	fmov fr3,fr4 ; r4 ??? bc r3 is ???
	fdiv fr7,fr4
	fmov fr4,fr3
	fdiv fr5,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r6
	lds r6,fpul
	float fpul,fr3
	fmul fr5,fr3
	fldi0 fr5
	fsub fr3,fr4
	fmov fr4,fr6
	fmul fr4,fr6

loc_8C11E89E:
	lds r4,fpul
	add 0xFE,r4
	cmp/ge r5,r4
	float fpul,fr2
	fsub fr5,fr2
	fmov fr6,fr5 ; r5 ??? bc r6 is ???
	bt/s loc_8C11E89e
	fdiv fr2,fr5
	fldi1 fr6
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	fmov fr6,fr3 ; r3 ??? bc r6 is ???, r3 ??? bc r6 is ???
	fsub fr5,fr3
	tst r3,r6
	fdiv fr3,fr4
	fmov fr4,fr2
	fmul fr7,fr2
	fmov fr4,fr0
	fmac fr0,fr4,fr6
	fmov fr2,fr4
	bf/s loc_8C11E8F0
	fdiv fr6,fr4
	rts
	fmov fr4,fr0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11e8cc:
	#data 0x4000
	#align4

loc_8c11e8d0:
	#data 0x4B000000
loc_8c11e8d4:
	#data 0x0000C000
loc_8c11e8d8:
	#data 0x7F7FFFFf
loc_8C11E8DC:
	#data 0x40C90FDb
loc_8C11E8E0:
	#data 0x47800000
loc_8C11E8E4:
	#data 0x3FC90FDb
loc_8C11E8E8:
	#data 0x3F000000

;==============================================
	nop
	nop

;==============================================
loc_8C11E8F0:
	fmov fr4,fr0
	fneg fr0
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11e900:
	extu.w r4,r4
	fmov fr15,@-r15
	lds r4,fpul
	mova @(0x1E4,PC),r0
	sts.l pr,@-r15
	fmov @r0,fr2
	mova @(0x1E0,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x1E0,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fmov fr3,fr4
	fdiv fr1,fr4
	fmov fr4,fr3
	fabs fr3
	fcmp/gt fr0,fr3
	bf.s loc_8c11e940
	fldi1 fr15
	bsr loc_8c11e3e0
	nop 
	fmov fr0,fr4
	fdiv fr4,fr15
	fldi1 fr3
	fadd fr3,fr3
	lds.l @r15+,pr
	fsub fr15,fr0
	fdiv fr3,fr0
	rts 
	fmov @r15+,fr15

;==============================================
	nop
	nop

;==============================================
loc_8c11e940:
	fmov fr4,fr0
	fmul fr4,fr0
	mova @(0x1B0,PC),r0
	fmov @r0,fr3
	fdiv fr3,fr0
	fadd fr15,fr0
	fmul fr4,fr0
	lds.l @r15+,pr
	rts 
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E960:
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	fldi1 fr15
	fadd fr15,fr15
	mov 0x04,r0 ; r0 set to 0x04
	mov r15,r4
	fmov.s fr4,@(r0,r15)
	bsr loc_8C11E9C0
	fdiv fr15,fr4
	fmov fr0,fr3
	fmul fr15,fr3
	fldi1 fr2
	fmov fr0,fr4
	fmac fr0,fr4,fr2
	mov.l @r15,r0 ; r0 ??? bc r15 is ???
	fmov fr3,fr4
	cmp/pz r0
	bf/s loc_8C11E990
	fdiv fr2,fr4
	bra loc_8C11E99a
	and 0x01,r0

;==============================================
	nop
	nop

;==============================================
loc_8C11E990:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C11E99A:
	tst r0,r0
	bf loc_8C11E9B0
	fmov fr4,fr0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	fmov.s @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11E9B0:
	fmov fr4,fr0
	fneg fr0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	fmov.s @r15+,fr15

;==============================================
	nop
	nop

;==============================================
loc_8C11E9C0:
	fldi0 fr2
	fcmp/gt fr4,fr2
	bt loc_8C11E9D0
	mova @(loc_8C11EAFC,pc),r0  ; r0 init to 0x8C11EAFc
	bra loc_8C11E9D4
	fmov.s @r0,fr3

;==============================================
	nop
	nop

;==============================================
loc_8C11E9D0:
	mova @(loc_8C11EB00,pc),r0  ; r0 init to 0x8C11EB00
	fmov.s @r0,fr3

loc_8C11E9D4:
	mova @(loc_8C11EB04,pc),r0  ; r0 set to 0x8C11EB04
	fmov fr4,fr1
	fmov.s @r0,fr2
	mova @(loc_8C11EB08,pc),r0  ; r0 set to 0x8C11EB08
	fdiv fr2,fr1
	fadd fr1,fr3
	ftrc fr3,fpul
	sts fpul,r5
	lds r5,fpul
	mov.l r5,@r4
	mov 0x0B,r4 ; r4 set to 0x0b
	fmov.s @r0,fr3
	mova @(loc_8C11EB0C,pc),r0  ; r0 set to 0x8C11EB0c
	float fpul,fr1
	fmov.s @r0,fr0 ; r0 ??
	mov 0x03,r5 ; r5 set to 0x03
	fmov fr1,fr5 ; r5 ??? bc r1 is ???
	fmul fr3,fr1
	fsub fr1,fr4 ; r4 ??? bc r1 is ???
	fmac fr0,fr5,fr4
	fldi0 fr5
	fmov fr4,fr6
	fmul fr4,fr6

loc_8C11EA02:
	lds r4,fpul
	add 0xFE,r4
	cmp/ge r5,r4
	float fpul,fr3
	fsub fr5,fr3
	fmov fr6,fr5
	bt/s loc_8C11EA02
	fdiv fr3,fr5
	fldi1 fr3
	fsub fr5,fr3
	fmov fr4,fr0
	rts
	fdiv fr3,fr0

;==============================================
	nop
	nop

;==============================================
loc_8c11ea20:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c11ea90
	mov r15,r4
	mov.l @r15,r0
	cmp/pz r0
	bf.s loc_8c11ea40
	fmov fr0,fr4
	bra loc_8c11ea4a
	and 0x01,r0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


;==============================================
loc_8c11ea40:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c11ea4a:
	tst r0,r0
	bf loc_8c11ea60
	add 0x04,r15
	lds.l @r15+,pr
	rts
	fmov fr4, fr0

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ea60:
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8c11ea80
	fldi1 fr0
	fneg fr0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	fdiv fr4,fr0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ea80:
	mova @(0x8C,PC),r0
	fmov @r0,fr0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8c11ea90:
	fldi0 fr2
	fcmp/gt fr4,fr2
	bt loc_8c11eaa0
	mova @(0x64,PC),r0
	bra loc_8c11eaa4
	fmov @r0,fr3

;==============================================
	nop
	nop

;==============================================
loc_8c11eaa0:
	mova @(0x5C,PC),r0
	fmov @r0,fr3

loc_8c11eaa4:
	mova @(0x5C,PC),r0
	fmov fr4,fr1
	fmov @r0,fr2
	mova @(0x5C,PC),r0
	fdiv fr2,fr1
	fadd fr1,fr3
	ftrc fr3,fpul
	sts fpul,r5
	lds r5,fpul
	mov.l r5,@r4
	mov 0x0B,r4
	fmov @r0,fr3
	mova @(0x4C,PC),r0
	float fpul,fr1
	fmov @r0,fr0
	mov 0x03,r5
	fmov fr1,fr5
	fmul fr3,fr1
	fsub fr1,fr4
	fmac fr0,fr5,fr4
	fldi0 fr5
	fmov fr4,fr6
	fmul fr4,fr6

loc_8c11ead2:
	lds r4,fpul
	add 0xFE,r4
	cmp/ge r5,r4
	float fpul,fr3
	fsub fr5,fr3
	fmov fr6,fr5
	bt.s loc_8c11ead2
	fdiv fr3,fr5
	fldi1 fr3
	fsub fr5,fr3
	fmov fr4,fr0
	rts 
	fdiv fr3,fr0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11eaec:
	#data 0x40C90FDb
loc_8c11eaf0:
	#data 0x47800000
loc_8c11eaf4:
	#data 0x3C23D70a
loc_8c11eaf8:
	#data 0x40C00000
loc_8C11EAFC:
	#data 0x3F000000
loc_8C11EB00:
	#data 0xBF000000
loc_8C11EB04:
	#data 0x3FC90FDb
loc_8C11EB08:
	#data 0x3FC91000
loc_8C11EB0C:
	#data 0x3695777a
loc_8C11EB10:
	#data 0x7F7FFFFf

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11EB20:
	mov.w @(loc_8C11EC14,pc),r3 ; r3 set to 0x7FFf
	extu.w r4,r4
	mov.w @(loc_8C11EC16,pc),r2 ; r2 set to 0x4000
	and r4,r3 ; r3 ??? bc r4 is ???
	cmp/eq r2,r3
	bt loc_8C11EBA0
	extu.w r4,r4
	lds r4,fpul
	mova @(loc_8C11EC18,pc),r0  ; r0 init to 0x8C11EC18
	fmov.s @r0,fr2 ; r2 ??
	mova @(loc_8C11EC1C,pc),r0  ; r0 set to 0x8C11EC1c
	fmov.s @r0,fr1
	mova @(loc_8C11EC20,pc),r0  ; r0 set to 0x8C11EC20
	float fpul,fr3
	fmov.s @r0,fr5
	mova @(loc_8C11EC24,pc),r0  ; r0 set to 0x8C11EC24
	fmov.s @r0,fr0 ; r0 ??
	mov 0x0D,r4 ; r4 set to 0x0d
	fmul fr2,fr3
	fmov fr3,fr4 ; r4 ??? bc r3 is ???
	fdiv fr1,fr4
	fmov fr4,fr3
	fdiv fr5,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r6
	lds r6,fpul
	float fpul,fr3
	fmul fr5,fr3
	fldi0 fr5
	fsub fr3,fr4
	fmov fr4,fr6
	fmul fr4,fr6
	bra loc_8C11EB7c
	mov 0x03,r5

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11EB70:
	lds r4,fpul
	add 0xFE,r4
	float fpul,fr3
	fsub fr5,fr3
	fmov fr6,fr5
	fdiv fr3,fr5

loc_8C11EB7C:
	cmp/ge r5,r4
	bt loc_8C11EB70
	fldi1 fr3
	fsub fr5,fr3
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	tst r3,r6
	bf/s loc_8C11EB90
	fdiv fr3,fr4
	rts
	fmov fr4,fr0

;==============================================
loc_8C11EB90:
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8C11EBA0
	fldi1 fr0
	fneg fr0
	rts
	fdiv fr4,fr0

;==============================================
	nop

;==============================================
loc_8C11EBA0:
	mova @(loc_8C11EC28,pc),r0  ; r0 init to 0x8C11EC28
	fmov.s @r0,fr0 ; r0 ??
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11EBb0:
	extu.w r4,r4
	fmov fr15,@-r15
	lds r4,fpul
	mova @(0x60,PC),r0
	fmov fr14,@-r15
	fmov fr13,@-r15
	float fpul,fr3
	fldi1 fr13
	fadd fr13,fr13
	fldi1 fr15
	sts.l pr,@-r15
	fmov @r0,fr2
	mova @(0x50,PC),r0
	fmov @r0,fr1
	mova @(0x5C,PC),r0
	fmul fr2,fr3
	fmov @r0,fr5
	fmov fr3,fr4
	fdiv fr1,fr4
	fcmp/gt fr5,fr4
	fmov fr4,fr14
	bf.s loc_8c11ec00
	fmul fr13,fr14
	fmov fr14,fr4
	bsr loc_8c11e3e0
	fneg fr4
	fadd fr15,fr0
	fldi1 fr3
	fneg fr3
	fdiv fr0,fr13
	fmov fr13,fr0
	bra loc_8c11ec40
	fadd fr3,fr0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ec00:
	fcmp/gt fr4,fr5
	bf loc_8c11ec30
	bsr loc_8c11e3e0
	fmov fr14,fr4
	fadd fr15,fr0
	fdiv fr0,fr13
	fneg fr13
	fmov fr13,fr0
	bra loc_8c11ec40
	fadd fr15,fr0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11EC14:
	#data 0x7FFf
loc_8C11EC16:
	#data 0x4000
	#align4

loc_8C11EC18:
	#data 0x40C90FDb
loc_8C11EC1C:
	#data 0x47800000
loc_8C11EC20:
	#data 0x3FC90FDb
loc_8C11EC24:
	#data 0x3F000000
loc_8C11EC28:
	#data 0x7F7FFFFf
loc_8C11EC2C:
	#data 0x3A83126f

;==============================================
loc_8c11ec30:
	fmov fr4,fr3
	fmul fr4,fr3
	mova @(0x14,PC),r0
	fmov @r0,fr2
	fdiv fr2,fr3
	fsub fr3,fr15
	fmov fr15,fr0
	fmul fr4,fr0

loc_8c11ec40:
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	rts 
	fmov @r15+,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11ec4c:
	#data 0x40400000

;==============================================
loc_8c11ec50:
	mov.l @(0x104,PC),r3
	rts 
	mov.l r4,@r3

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ec60:
	fldi1 fr3
	fdiv fr4,fr3
	mov.l @(0xF4,PC),r3
	rts 
	fmov fr3,@r3

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11ec70:
	mov.l @(0xEC,PC),r5
	shll16 r4
	mov.l @(0xEC,PC),r3
	mov.l @r5,r2
	and r3,r2
	mov r2,r1
	or r4,r1
	rts 
	mov.l r1,@r5

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop


;==============================================
loc_8C11EC90:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C11ED6C,pc),r2 ; r2 set to 0x8C2D5A04
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C11ED70,pc),r1 ; r1 set to 0x8C2D5A10
	mov 0x08,r4 ; r4 set to 0x08
	mov.l @(loc_8C11ED68,pc),r3 ; r3 set to 0x8C2D5A00
	mov.l @(loc_8C11ED74,pc),r0 ; r0 set to 0x8C2D5A48
	mov.l r5,@r3 ; r3 ??
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.l r5,@r2 ; r2 ??
	mov.l @(loc_8C11ED7C,pc),r2 ; r2 set to 0x8C2D5A08
	mov.l r5,@r1 ; r1 ??
	mov.l @(loc_8C11ED80,pc),r1 ; r1 set to 0x8C2D5A0c
	mov.l r3,@r0 ; r0 ??
	mova @(loc_8C11ED94,pc),r0  ; r0 set to 0x8C11ED94
	fldi0 fr3
	mov.l @(loc_8C11ED78,pc),r3 ; r3 set to 0x8C2D5A44
	mov.l @(loc_8C11ED90,pc),r7 ; r7 set to 0x8C2D5A54
	mov.w r4,@r3 ; r3 ??
	mov.l r4,@r2 ; r2 ??
	mov.l @(loc_8C11ED88,pc),r2 ; r2 set to 0x8C2D5A4c
	mov.l r4,@r1 ; r1 ??
	mov r5,r4 ; r4 set to 0x00
	mov.l @(loc_8C11ED8C,pc),r1 ; r1 set to 0x8C2D5A50
	mov.l @(loc_8C11ED84,pc),r3 ; r3 set to 0x8C2D59Fc
	mov.w @(loc_8C11ED50,pc),r6 ; r6 set to 0x101
	mov.l r5,@r3 ; r3 ??
	fmov.s fr3,@r2 ; r2 ??? bc r3 is ???
	fldi1 fr3
	fmov.s fr3,@r1 ; r1 ??? bc r3 is ???
	fmov.s @r0,fr3
	mov.l @(loc_8C11ED98,pc),r1 ; r1 set to 0x8C2D5A90
	fmov.s fr3,@r7 ; r7 ??? bc r3 is ???

loc_8C11ECD4:
	lds r4,fpul
	mov r4,r0 ; r0 set to 0x00
	fmov.s @r7,fr2
	shll r0 ; r0 set to 0x00
	mov r15,r3
	mov r0,r2 ; r2 set to 0x00
	float fpul,fr3
	add 0x01,r4 ; r4 set to 0x01
	cmp/ge r6,r4
	add r1,r2 ; r2 set to 0x8C2D5A90
	fmul fr2,fr3
	fmov.s fr3,@r15
	mov.w @(0x02,r3),r0
	bf/s loc_8C11ECD4
	mov.w r0,@r2 ; r2 ??
	mov.l @(loc_8C11ED9C,pc),r4 ; r4 set to 0x8C2D5A70, r4 set to 0x8C2D5A70
	mov.l @(loc_8C11EDA0,pc),r2 ; r2 set to 0x8C17C8A0, r2 set to 0x8C17C8A0
	mov.w @(loc_8C11ED52,pc),r7 ; r7 set to 0x902, r7 set to 0x902
	mov.w @(loc_8C11ED54,pc),r6 ; r6 set to 0x400, r6 set to 0x400
	jsr @r2
	mov 0x08,r5 ; r5 set to 0x08, r5 set to 0x08
	mov.l @(loc_8C11EDA4,pc),r2 ; r2 set to 0x8C17CA40, r2 set to 0x8C17CA40
	mov.l @(loc_8C11ED9C,pc),r4 ; r4 set to 0x8C2D5A70, r4 set to 0x8C2D5A70
	mov.l @(loc_8C11ED58,pc),r3 ; r3 set to bank16.loc_8c16BC38, r3 set to bank16.loc_8c16BC38
	jsr @r2
	mov.l @r3,r5 ; r5 ??, r5 ??
	bsr loc_8C11EE00
	nop
	add 0x04,r15
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

;==============================================
loc_8c11ed20:
	mov.l @(0x84,PC),r3
	rts 
	mov.l r4,@r3

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ed30:
	mov.l @(0x2C,PC),r5
	tst r4,r4
	mov.l @(0x74,PC),r3
	mov.l r4,@(0x14,r5)
	mov.l @r5,r2
	and r3,r2
	mov.l r2,@r5
	mov.l @(0x8,r5),r1
	mov.l @(0x6C,PC),r2
	and r2,r1
	bt.s loc_8c11edc0
	mov.l r1,@(0x8,r5)
	mov.l @(0x8,r5),r0
	mov.l @(0x68,PC),r1
	bra loc_8c11edce
	or r1,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11ED50:
	#data 0x0101
loc_8C11ED52:
	#data 0x0902
loc_8C11ED54:
	#data 0x0400
	#align4

loc_8C11ED58:
	#data bank16.loc_8c16BC38
loc_8C11ED5C:
	#data bank16.loc_8c16BC34
loc_8C11ED60:
	#data 0x8C2D5A58
loc_8C11ED64:
	#data 0xFFFCFFFf
loc_8C11ED68:
	#data 0x8C2D5A00
loc_8C11ED6C:
	#data 0x8C2D5A04
loc_8C11ED70:
	#data 0x8C2D5A10
loc_8C11ED74:
	#data 0x8C2D5A48
loc_8C11ED78:
	#data 0x8C2D5A44
loc_8C11ED7C:
	#data 0x8C2D5A08
loc_8C11ED80:
	#data 0x8C2D5A0c
loc_8C11ED84:
	#data 0x8C2D59Fc
loc_8C11ED88:
	#data 0x8C2D5A4c
loc_8C11ED8C:
	#data 0x8C2D5A50
loc_8C11ED90:
	#data 0x8C2D5A54
loc_8C11ED94:
	#data 0x3C000000
loc_8C11ED98:
	#data 0x8C2D5A90
loc_8C11ED9C:
	#data 0x8C2D5A70
loc_8C11EDA0:
	#data bank17.loc_8c17C8A0
loc_8C11EDA4:
	#data bank17.loc_8c17CA40
loc_8C11EDA8:
	#data bank16.loc_8c16BC30
loc_8C11EDAC:
	#data 0xF8FFFFFf
loc_8C11EDb0:
	#data 0x03FFFFFf
loc_8C11EDb4:
	#data 0x20000000

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11edc0:
	mov.l @r5,r0
	mov.l @(0x2A0,PC),r1
	mov.l @(0x2A0,PC),r3
	or r1,r0
	mov.l r0,@r5
	mov.l @(0x8,r5),r0
	or r3,r0

loc_8c11edce:
	rts 
	mov.l r0,@(0x8,r5)

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11EDE0:
	mov.l @(loc_8C11F070,pc),r4 ; r4 set to 0x8C2D5A70
	mov.l @(loc_8C11F074,pc),r1 ; r1 set to 0xFF800000
	mov.l @(0x18,r4),r2
	mov.l @(0x08,r4),r3
	mov.l @(loc_8C11F06C,pc),r5 ; r5 set to 0x8C2D5A58
	or r3,r2
	mov.l @(0x1C,r4),r3
	and r1,r2
	shlr2 r3
	shlr r3
	or r3,r2
	rts
	mov.l r2,@(0x0C,r5)

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11EE00:
	mov.l r14,@-r15
	mov.l @(loc_8C11F078,pc),r3 ; r3 set to 0xA2000009
	mov.l @(loc_8C11F06C,pc),r14 ; r14 set to 0x8C2D5A58
	mov.l @(loc_8C11F07C,pc),r2 ; r2 set to 0x80000000
	sts.l pr,@-r15
	mov.l r3,@r14 ; r14 ??
	mov.l @(loc_8C11F080,pc),r3 ; r3 set to 0x949004C7
	mov.l r2,@(0x04,r14)
	bsr loc_8C11EDE0
	mov.l r3,@(0x08,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov 0xFF,r1 ; r1 set to 0xFFFFFFFf
	mov.l r1,@(0x10,r14)
	mov.l r3,@(0x14,r14)
	lds.l @r15+,pr
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

;==============================================
loc_8C11EE30:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xEC,r15
	mov.l @(0x248,PC),r1
	mov r7,r13
	mov.l @(0x23C,PC),r2
	mov r7,r11
	mov.l @r1,r3
	mov r7,r12
	fmov @r2,fr4
	exts.b r6,r2
	lds r3,fpul
	shll r2
	mov.l @(0x238,PC),r3
	mov r7,r9
	mov.l @(0x238,PC),r0
	add 0x18,r13
	mov.l @r3,r8
	float fpul,fr3
	mov r7,r3
	add r0,r2
	add 0x10,r3
	mov.l r2,@r15
	mov.l r3,@(0x10,r15)
	mov r7,r3
	mov r7,r2
	add 0x1C,r3
	add 0x14,r2
	mov.l @(0x214,PC),r10
	fmov fr3,fr6
	add 0x08,r11
	add 0x0C,r9
	mov.l r2,@(0x8,r15)
	mov.l r3,@(0xC,r15)
	add 0x04,r12
	mov.l @(0x214,PC),r0
	mov.l @r0,r2
	tst r2,r2
	bf.s loc_8c11ef00
	exts.b r6,r14
	lds r4,fpul
	mov.l @r15,r3
	mov.l @r15,r4
	float fpul,fr3
	lds r5,fpul
	mov.w @(0x2,r3),r0
	mov.l @(0x204,PC),r2
	float fpul,fr2
	lds r8,fpul
	mov.w @r4,r4
	mov r0,r5
	fmov fr3,fr5
	fadd fr6,fr5
	fmov fr3,fr8
	float fpul,fr3
	mov.l r2,@r7
	fmov fr2,fr7
	fmov fr2,fr6
	fmov fr8,@r12
	fadd fr3,fr6
	fmov fr7,@r11
	fmov fr4,@r9
	mov.l @(0x10,r15),r3
	fmov fr5,@r3
	mov.l @(0x8,r15),r3
	fmov fr7,@r3
	fmov fr4,@r13
	mov.l @(0xC,r15),r3
	fmov fr5,@r3
	pref @r7
	mov 0x04,r0
	mov r14,r3
	add 0x20,r7
	mov r14,r2
	shll16 r3
	fmov fr6,@r7
	fmov fr4,@(r0,r7)
	mov 0x08,r0
	fmov fr8,@(r0,r7)
	mov 0x0C,r0
	fmov fr6,@(r0,r7)
	shll16 r2
	mov r14,r0
	shll8 r3
	shll8 r0
	or r2,r3
	or r0,r3
	or r14,r3
	or r10,r5
	mov.l r3,@(0x10,r7)
	mov.l r4,@(0x14,r7)
	or r10,r4
	mov.l r4,@(0x18,r7)
	bra loc_8c11ef7a              ; loc_8c11ee30+0x14a
	mov.l r5,@(0x1C,r7)

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11EF00:
	mov.l @(0x19C,PC),r2
	mov.l r4,@(0x4,r15)
	neg r5,r4
	mov.w @r2,r3
	sub r8,r4
	mov.l @(0x190,PC),r1
	add r3,r4
	mov.l @(0x4,r15),r3
	lds r4,fpul
	mov.l @r15,r4
	float fpul,fr3
	lds r8,fpul
	mov.w @r4,r4
	float fpul,fr2
	lds r3,fpul
	mov.l @r15,r3
	fmov fr3,fr8
	fmov fr3,fr7
	float fpul,fr3
	mov.w @(0x2,r3),r0
	fadd fr2,fr7
	fmov fr6,fr2
	mov r0,r5
	mov.l r1,@r7
	fmov fr8,@r12
	fmov fr3,fr6
	fadd fr2,fr6
	fmov fr3,fr5
	fmov fr5,@r11
	fmov fr4,@r9
	mov.l @(0x10,r15),r3
	fmov fr7,@r3
	mov.l @(0x8,r15),r3
	fmov fr5,@r3
	fmov fr4,@r13
	mov.l @(0xC,r15),r3
	fmov fr7,@r3
	pref @r7
	mov 0x04,r0
	mov r14,r3
	add 0x20,r7
	mov r14,r1
	shll16 r3
	fmov fr6,@r7
	fmov fr4,@(r0,r7)
	mov 0x08,r0
	fmov fr8,@(r0,r7)
	mov 0x0C,r0
	fmov fr6,@(r0,r7)
	shll16 r1
	mov r14,r0
	shll8 r3
	shll8 r0
	or r1,r3
	or r0,r3
	or r14,r3
	mov.l r3,@(0x10,r7)
	mov.l r5,@(0x14,r7)
	mov.l r4,@(0x18,r7)
	or r10,r4
	mov.l r4,@(0x1C,r7)

loc_8C11EF7A:
	pref @r7
	add 0x20,r7
	mov r7,r0
	add 0x14,r15
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


;==============================================
loc_8C11EFA0:
	mov.l @(loc_8C11F0A4,pc),r4 ; r4 set to 0x8C2D59Fc
	mov.l @r4,r0
	or 0x01,r0
	rts
	mov.l r0,@r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11EFb0:
	mov.l @(0xF0,PC),r4
	mov 0xFE,r3
	mov.l @r4,r2
	and r3,r2
	rts 
	mov.l r2,@r4

;==============================================
	nop
	nop

;==============================================
loc_8C11EFC0:
	mov.l @(loc_8C11F08C,pc),r1 ; r1 set to 0x8C2D5A08
	mov.l @(loc_8C11F090,pc),r3 ; r3 set to 0x8C2D5A0c
	mov.l r4,@r1 ; r1 ??? bc r4 is ???
	rts
	mov.l r5,@r3

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11EFD0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r12
	mov.l @(loc_8C11F06C,pc),r4 ; r4 set to 0x8C2D5A58
	mov.l @(0x14,r4),r3
	tst r3,r3
	bt loc_8C11EFF0
	bra loc_8C11EFF2
	mov 0x00,r5

;==============================================
	nop
	nop

;==============================================
loc_8C11EFF0:
	mov 0x02,r5 ; r5 set to 0x02

loc_8C11EFF2:
	mov.l @(loc_8C11F0A8,pc),r3 ; r3 set to 0x8C2AA508, r3 set to 0x8C2AA508
	shll2 r5 ; r5 set to 0x08
	mov.l @(loc_8C11F0A4,pc),r1 ; r1 set to 0x8C2D59FC, r1 set to 0x8C2D59Fc
	mov.l r5,@r15
	mov.l @r3,r0
	mov.l @(loc_8C11F0AC,pc),r2 ; r2 set to 0x8C2D5A00, r2 set to 0x8C2D5A00
	mov.l @(r0,r5),r5 ; r5 ??
	mov.l @r1,r0
	mov.l @(loc_8C11F0B0,pc),r3 ; r3 set to 0x8C2D5A04, r3 set to 0x8C2D5A04
	and 0x01,r0
	mov.l @r2,r14
	mov r5,r2 ; r2 ??? bc r5 is ???, r2 ??? bc r5 is ???
	mov r0,r10
	mov.l @r3,r11
	shlr16 r2
	mov.l @(loc_8C11F0B4,pc),r0 ; r0 set to 0xFF000038, r0 set to 0xFF000038
	shlr8 r2
	mov.l @(loc_8C11F0B8,pc),r3 ; r3 set to 0xFF00003C, r3 set to 0xFF00003c
	mov.l @(loc_8C11F0BC,pc),r13 ; r13 set to 0x3FFFFFF, r13 set to 0x3FFFFFf
	mov.l r2,@r0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
	mov.l r2,@r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	and r5,r13 ; r13 ??? bc r5 is ???, r13 ??? bc r5 is ???
	mov.l @(loc_8C11F0C0,pc),r2 ; r2 set to 0xE0000000, r2 set to 0xE0000000
	mov.l @r4,r3
	or r2,r13
	mov.l r3,@r13
	mov.l @(0x04,r4),r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov.l r1,@(0x04,r13)
	mov.l @(0x08,r4),r3
	mov.l r3,@(0x08,r13)
	mov.l @(0x0C,r4),r1
	mov.l r1,@(0x0C,r13)
	mov.l @(0x10,r4),r3
	mov.l r3,@(0x10,r13)
	pref @r13
	bra loc_8C11F0F4
	add 0x20,r13

;==============================================
	nop
	nop

;==============================================
loc_8c11f040:
	mov.b @r12,r0
	cmp/eq 0x20,r0
	bt loc_8c11f0ec
	mov.b @r12,r0
	mov 0x00,r4
	mov.l @(loc_8C11F0C4,pc),r6
	cmp/eq 0x0A,r0
	bf/s loc_8c11f0d0
	mov.l @r6,r5
	tst r10,r10
	bt/s loc_8c11f05a
	mov r4,r14
	mov r5,r14

loc_8c11f05a:
	mov.l @(loc_8c11f090,pc),r4
	mov.l @r4,r3
	bra loc_8c11f0f2
	add r3,r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c11f064:
	#data 0x02000000
loc_8c11f068:
	#data 0x94000000
loc_8c11f06c:
	#data 0x8C2D5A58
loc_8c11f070:
	#data 0x8C2D5A70
loc_8c11f074:
	#data 0xFF800000
loc_8c11f078:
	#data 0xA2000009
loc_8c11f07c:
	#data 0x80000000
loc_8c11f080:
	#data 0x949004c7
loc_8c11f084:
	#data bank16.loc_8c16bc34
loc_8c11f088:
	#data 0x3f800000
loc_8c11f08c:
	#data 0x8c2d5a08
loc_8c11f090:
	#data 0x8c2d5a0c
loc_8c11f094:
	#data 0x8c2d5a90
loc_8c11f098:
	#data bank16.loc_8c16bc30
loc_8c11f09c:
	#data 0xf0000000
loc_8c11f0a0:
	#data 0x8c2dee60
loc_8c11f0a4:
	#data 0x8c2d59fc
loc_8c11f0a8:
	#data 0x8c2aa508
loc_8c11f0ac:
	#data 0x8c2d5a00
loc_8c11f0b0:
	#data 0x8c2d5a04
loc_8c11f0b4:
	#data 0xff000038
loc_8c11f0b8:
	#data 0xff00003c
loc_8c11f0bc:
	#data 0x03ffffff
loc_8c11f0c0:
	#data 0xe0000000
loc_8c11f0c4:
	#data 0x8c2d5a10

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f0d0:
	cmp/eq 0x0D,r0
	bf loc_8c11f0e0
	tst r10,r10
	bt/s loc_8c11f0f2
	mov r4,r14
	bra loc_8c11f0f2
	mov r5,r14

;==============================================
	nop

;==============================================
loc_8c11f0e0:
	mov.b @r12,r6
	mov r11,r5
	mov r13,r7
	bsr loc_8c11ee30
	mov r14,r4
	mov r0,r13

loc_8c11f0ec:
	mov.l @(loc_8c11f20c,pc),r4
	mov.l @r4,r2
	add r2,r14

loc_8c11f0f2:
	add 0x01,r12

loc_8C11F0F4:
	mov.b @r12,r3
	tst r3,r3
	bf loc_8C11F040
	mov.l @(loc_8C11F218,pc),r0 ; r0 set to 0x8C2AA508
	mov.l @(loc_8C11F210,pc),r3 ; r3 set to 0x8C2D5A00
	mov.l @(loc_8C11F214,pc),r2 ; r2 set to 0x8C2D5A04
	mov.l r14,@r3 ; r3 ??? bc r14 is ???
	mov.l r11,@r2 ; r2 ??? bc r11 is ???
	mov.l @r15,r4
	mov.l @r0,r1
	mov.l @(loc_8C11F220,pc),r2 ; r2 set to 0x3FFFFFf
	add r1,r4
	mov.l @(loc_8C11F21C,pc),r3 ; r3 set to 0xFC000000
	mov.l @r4,r0 ; r0 ??? bc r4 is ???
	and r2,r13
	and r3,r0
	or r13,r0
	mov.l r0,@r4
	add 0x04,r15
	lds.l @r15+,pr
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

;==============================================
loc_8C11F130:
	mov.l @(loc_8C11F20C,pc),r2 ; r2 set to 0x8C2D5A08
	sts.l macl,@-r15
	mov.l @r2,r3
	mov.l @(loc_8C11F22C,pc),r0 ; r0 set to bank16.loc_8c16BC30
	mul.l r4,r3
	mov.l @r0,r1
	mov.l @(loc_8C11F224,pc),r7 ; r7 set to 0x8C2D5A10
	mov.l @(loc_8C11F228,pc),r6 ; r6 set to bank16.loc_8c16BD94
	tst r1,r1
	sts macl,r4
	lds r4,fpul
	float fpul,fr3
	bf/s loc_8C11F180
	fmov fr3,fr4
	mov.l @(loc_8C11F230,pc),r3 ; r3 set to bank16.loc_8c16BD90
	mov.l @(loc_8C11F234,pc),r0 ; r0 set to 0x8C2D5A0c
	fmov.s @r3,fr3 ; r3 ??
	mov.l @(loc_8C11F210,pc),r1 ; r1 set to 0x8C2D5A00
	fadd fr3,fr4
	ftrc fr4,fpul
	sts fpul,r2
	mov.l r2,@r1 ; r1 ??
	mov.l r2,@r7 ; r7 ??
	mov.l @r0,r3
	fmov.s @r6,fr2 ; r2 ??
	mul.l r5,r3
	mov.l @(loc_8C11F214,pc),r1 ; r1 set to 0x8C2D5A04
	sts macl,r5
	lds r5,fpul
	float fpul,fr3
	fadd fr2,fr3
	ftrc fr3,fpul
	sts fpul,r2
	bra loc_8C11F1B4
	mov.l r2,@r1

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11F180:
	fmov.s @r6,fr3
	mov.l @(loc_8C11F234,pc),r0 ; r0 set to 0x8C2D5A0c
	fadd fr3,fr4
	mov.l @(loc_8C11F210,pc),r1 ; r1 set to 0x8C2D5A00
	ftrc fr4,fpul
	sts fpul,r3
	mov.l r3,@r1 ; r1 ??? bc r3 is ???
	mov.l @(loc_8C11F238,pc),r1 ; r1 set to 0x8C2DEE60
	mov.l r3,@r7
	mov.l @r0,r2
	mov.w @r1,r3
	mul.l r5,r2
	mov.l @(loc_8C11F23C,pc),r2 ; r2 set to bank16.loc_8c16BD88
	mov.l @(loc_8C11F214,pc),r1 ; r1 set to 0x8C2D5A04
	fmov.s @r2,fr1 ; r1 ??
	sts macl,r5
	add r3,r5
	mov.l @(loc_8C11F230,pc),r3 ; r3 set to bank16.loc_8c16BD90
	lds r5,fpul
	fmov.s @r3,fr2 ; r2 ??
	float fpul,fr3
	fsub fr2,fr3 ; r3 ??? bc r2 is ???
	fsub fr1,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov.l r3,@r1

loc_8C11F1B4:
	rts
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop


;==============================================
loc_8C11F1C0:
	mov.l @(loc_8C11F240,pc),r2 ; r2 set to 0x8C2D5A68
	rts
	mov.l r4,@r2

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11F1D0:
	sts.l pr,@-r15
	mov 0x03,r5 ; r5 set to 0x03
	mov r15,r0
	add 0x04,r0
	add 0x04,r0
	tst r0,r5
	bt loc_8C11F1F0
	mov r15,r5 ; r5 ??? bc r15 is ???
	add 0x04,r5
	bra loc_8C11F1F6
	add 0x08,r5

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11F1F0:
	mov r15,r5
	add 0x04,r5
	add 0x04,r5

loc_8C11F1F6:
	mov.l @(loc_8C11F248,pc),r3 ; r3 set to 0x8C129804, r3 set to 0x8C129804
	mov r5,r6
	mov.l @(loc_8C11F244,pc),r4 ; r4 set to 0x8C2D57FC, r4 set to 0x8C2D57Fc
	jsr @r3
	mov.l @(0x04,r15),r5
	mov.l @(loc_8C11F244,pc),r4 ; r4 set to 0x8C2D57FC, r4 set to 0x8C2D57Fc
	bsr loc_8C11EFD0
	nop
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
	#align4
loc_8C11F20C:
	#data 0x8C2D5A08
loc_8C11F210:
	#data 0x8C2D5A00
loc_8C11F214:
	#data 0x8C2D5A04
loc_8C11F218:
	#data 0x8C2AA508
loc_8C11F21C:
	#data 0xFC000000
loc_8C11F220:
	#data 0x03FFFFFf
loc_8C11F224:
	#data 0x8C2D5A10
loc_8C11F228:
	#data bank16.loc_8c16BD94
loc_8C11F22C:
	#data bank16.loc_8c16BC30
loc_8C11F230:
	#data bank16.loc_8c16BD90
loc_8C11F234:
	#data 0x8C2D5A0c
loc_8C11F238:
	#data 0x8C2DEE60
loc_8C11F23C:
	#data bank16.loc_8c16BD88
loc_8C11F240:
	#data 0x8C2D5A68
loc_8C11F244:
	#data 0x8C2D57Fc
loc_8C11F248:
	#data bank12.loc_8c129804
	#data 0x00000000

;==============================================
loc_8C11F250:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8C11F322,pc),r0 ; r0 set to 0xFE00
	add r0,r15
	mov.w @(loc_8C11F324,pc),r5 ; r5 set to 0x200
	mov r15,r14
	mov r14,r4
	fldi0 fr4
	add r14,r5 ; r5 ??? bc r14 is ???

loc_8C11F262:
	fmov.s fr4,@r4
	add 0x04,r4
	cmp/hs r5,r4
	bf loc_8C11F262
	bsr loc_8C11F2D0
	mov r14,r4
	mov.w @(loc_8C11F324,pc),r1 ; r1 set to 0x200, r1 set to 0x200
	add r1,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11F280:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r7
	shlr16 r7
	shlr8 r7
	mov r4,r5
	exts.b r7,r7
	mov r15,r14
	mov r7,r0
	shlr16 r5
	mov.b r0,@(0x03,r14)
	exts.w r5,r5
	mov r5,r0
	mov r4,r6
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov.b r0,@(0x02,r14)
	shad r3, r6
	mov.l @(loc_8C11F328,pc),r2 ; r2 set to 0x8C17A5E0
	mov r6,r0
	mov.b r0,@(0x01,r14)
	mov.b r4,@r14
	mov.l @r14,r3 ; r3 ??? bc r14 is ???
	jsr @r2
	mov.l r3,@-r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11F2C0:
	mov.l @(loc_8C11F32C,pc),r3 ; r3 set to 0x8C17A5A0
	mov.l r4,@-r15
	jmp @r3
	add 0x04,r15

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11F2D0:
	mov.l @(loc_8C11F330,pc),r3 ; r3 set to 0x8C17A620
	jmp @r3
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11F2E0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r15,r5
	mov 0xE9,r3
	fmov fr4,@r15
	mov.l @r5,r5
	mov r5,r4
	shad r3,r4
	shlr16 r5
	mov.w @(0x2E,PC),r3
	exts.w r5,r5
	add 0x81,r4
	cmp/pz r4
	or r3,r5
	bt.s loc_8c11f30a
	extu.b r5,r5
	neg r4,r4
	neg r4,r4
	shad r4,r5
	mov 0x00,r4

loc_8c11f30a:
	shll8 r5
	mov.l @(0x1C,PC),r3
	mov r5,r14
	extu.b r4,r4
	or r4,r14
	jsr @r3
	mov r14,r4
	mov r14,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14


;==============================================
loc_8C11F322:
	#data 0xFE00
loc_8C11F324:
	#data 0x0200
loc_8C11F326:
	#data 0x0080
	#align4

loc_8C11F328:
	#data bank17.loc_8c17A5E0
loc_8C11F32C:
	#data bank17.loc_8c17A5A0
loc_8C11F330:
	#data bank17.loc_8c17A620
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

;==============================================
loc_8C11F340:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C11F464,pc),r4 ; r4 set to 0x8C2D5C94
	mov.w @(loc_8C11F45C,pc),r3 ; r3 set to 0xB00
	mov r4,r6 ; r6 set to 0x8C2D5C94
	mov.w @(loc_8C11F45A,pc),r5 ; r5 set to 0xB0
	mov.l @(loc_8C11F468,pc),r7 ; r7 set to bank16.loc_8c16BC44
	add r3,r6 ; r6 set to 0x8C2D6794
	mov.l r4,@r15

loc_8C11F352:
	mov.l @(loc_8C11F46C,pc),r3 ; r3 set to 0x8C129560, r3 set to 0x8C129560
	mov r4,r1 ; r1 set to 0x8C2D5C94
	mov.w @(loc_8C11F45A,pc),r0 ; r0 set to 0xB0, r0 set to 0xB0
	jsr @r3
	mov r7,r2 ; r2 set to bank16.loc_8c16BC44
	add r5,r4 ; r4 set to 0x8C2D5D44
	cmp/hs r6,r4
	bf loc_8C11F352
	mov.l @(loc_8C11F470,pc),r2 ; r2 set to bank16.loc_8c16BC3C, r2 set to bank16.loc_8c16BC3c
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.l r3,@r2 ; r2 ??, r2 ??
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c11f370:
	mov.l @(0x100,PC),r1
	rts 
	mov.l r4,@r1

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f380:
	mov.l r14,@-r15
	mov 0x44,r0
	mov.w @(0xD2,PC),r14
	sts.l macl,@-r15
	mul.l r14,r4
	mov.l @(0xD8,PC),r3
	sts macl,r14
	add r3,r14
	mov r14,r2
	add 0x40,r2
	fmov fr4,@r2
	mov r14,r4
	fmov fr5,@(r0,r14)
	mov 0x48,r0
	mov.l @(0xD8,PC),r2
	add 0x40,r4
	fmov fr6,@(r0,r14)
	lds.l @r15+,macl
	jmp @r2
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f3b0:
	mov.w @(0xA6,PC),r3
	mov 0x34,r0
	sts.l macl,@-r15
	mul.l r3,r4
	mov.l @(0xA8,PC),r2
	sts macl,r4
	add r2,r4
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr5,@(r0,r4)
	mov 0x3C,r0
	fmov fr6,@(r0,r4)
	rts 
	lds.l @r15+,macl

;==============================================
	nop
	nop

;==============================================
	mov.w @(0x86,PC),r3
	mov 0x4C,r0
	sts.l macl,@-r15
	mul.l r3,r4
	mov.l @(0x88,PC),r2
	sts macl,r4
	add r2,r4
	fmov fr4,@(r0,r4)
	mov 0x50,r0
	fmov fr5,@(r0,r4)
	mov 0x54,r0
	fmov fr6,@(r0,r4)
	rts 
	lds.l @r15+,macl

;==============================================
	nop
	nop

;==============================================
loc_8c11f3f0:
	mov.w @(0x66,PC),r3
	sts.l macl,@-r15
	mul.l r3,r4
	fmov fr4,fr3
	fmul fr4,fr3
	mov.l @(0x68,PC),r2
	mov.w @(0x5E,PC),r0
	sts macl,r4
	add r2,r4
	fmov fr4,@(r0,r4)
	add 0xF8,r0
	fmov fr3,@(r0,r4)
	add 0xF8,r0
	fldi1 fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	rts 
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f420:
	fmov fr15,@-r15
	fmov fr4,fr3
	fmov fr4,fr15
	fmul fr15,fr3
	fldi1 fr2
	fmov @r15+,fr15
	fmov fr4,fr5
	fsub fr3,fr2
	fsqrt fr2
	fmov fr2,fr4

loc_8c11f434:
	mov.w @(0x22,PC),r3
	sts.l macl,@-r15
	mul.l r3,r4
	mov.l @(0x28,PC),r2
	mov.w @(0x20,PC),r0
	sts macl,r4
	add r2,r4
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fldi1 fr4
	fmov fr4,fr3
	fsub fr5,fr3
	fmov fr4,fr2
	fmov fr5,@(r0,r4)
	add 0x44,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c11f454:
	rts 
	lds.l @r15+,macl

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11F45A:
	#data 0x00B0
loc_8C11F45C:
	#data 0x0B00
loc_8C11F45e:
	#data 0x00A0
loc_8C11F460:
	#data 0x00A4
	#align4

loc_8C11F464:
	#data 0x8C2D5C94
loc_8C11F468:
	#data bank16.loc_8c16BC44
loc_8C11F46C:
	#data bank12.loc_8c129560
loc_8C11F470:
	#data bank16.loc_8c16BC3c
loc_8C11F474:
	#data bank16.loc_8c16BC40
loc_8C11F478:
	#data bank12.loc_8c121490

;==============================================
	nop
	nop

;==============================================
loc_8c11f480:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xF4,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	jsr @r3
	mov r5,r4
	mov.l @(0xF0,PC),r3
	fmov fr0,@-r15
	jsr @r3
	mov.l @(0x4,r15),r4
	mov.l @(0x8,r15),r4
	fmov @r15+,fr5
	fmov fr0,fr4
	add 0x08,r15
	bra loc_8c11f434
	lds.l @r15+,pr

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f4b0:
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
	mov.l r4,@-r15
	jsr @r3
	fmov fr4,fr15
	mov.l @(0xC8,PC),r2
	fmov fr0,@-r15
	jsr @r2
	fmov fr15,fr4
	mov.l @(0x4,r15),r4
	fmov @r15+,fr5
	fmov fr0,fr4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c11f434
	fmov @r15+,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
;==============================================
loc_8c11f4e0:
	mov.w @(0x94,PC),r3
	mov r5,r0
	sts.l macl,@-r15
	mul.l r3,r4
	mov.l @(0xA0,PC),r2
	sts macl,r4
	add r2,r4
	mov.w r0,@(0x2,r4)
	rts 
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
;==============================================
loc_8c11f500:
	add 0xF8,r15
	mov.l @(0x8C,PC),r5
	mova @(0x8C,PC),r0
	fmov @r4+,fr3
	mov r5,r6
	mov r6,r3
	fmov fr3,@r6
	add 0x04,r3
	mov r6,r7
	add 0x08,r7
	add 0x0C,r5
	mov.l r3,@r15
	fmov @r4+,fr3
	fmov fr3,@r3
	fmov @r4+,fr3
	fmov fr3,@r7
	mov.l r5,@(0x4,r15)
	fmov @r4,fr3
	fmov fr3,@r5
	fmov @r0,fr0
	mova @(0x6C,PC),r0
	fmov @r7,fr3
	mov.l @r15,r2
	fmul fr0,fr3
	fmov @r0,fr0
	fmov @r2,fr2
	mova @(0x64,PC),r0
	mov.l @(0x4,r15),r3
	fmac fr0,fr2,fr3
	fmov @r3,fr2
	fmov @r0,fr0
	fmac fr0,fr2,fr3
	fmov fr3,@r6
	rts 
	add 0x08,r15

;==============================================
	nop
	nop
	nop
	nop
	nop
;==============================================
loc_8c11f550:
	mov.w @(0x24,PC),r3
	mov 0x14,r0
	sts.l macl,@-r15
	mul.l r3,r4
	mov.l @(0x30,PC),r2
	fmov @r5+,fr3
	sts macl,r4
	add r2,r4
	fmov fr3,@(r0,r4)
	mov 0x18,r0
	fmov @r5+,fr3
	fmov fr3,@(r0,r4)
	mov 0x1C,r0
	fmov @r5+,fr3
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	fmov @r5,fr3
	fmov fr3,@(r0,r4)
	rts 
	lds.l @r15+,macl

;==============================================
loc_8c11f578:
	#data 0x00B0
	#align4

loc_8C11F57C:
	#data loc_8c11E2E0
loc_8C11F580:
	#data loc_8c11E860
loc_8C11F584:
	#data loc_8c11E330
loc_8C11F588:
	#data loc_8c11E960
loc_8C11F58c:
	#data 0x8C2D5C94
loc_8C11F590:
	#data 0x8C2D6794
loc_8C11F594:
	#data 0x3F170A3d
loc_8C11F598:
	#data 0x3E99999a
loc_8C11F59c:
	#data 0x3DE147Ae

;==============================================
loc_8c11f5a0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0xAC,PC),r2
	jsr @r2
	nop 
	mov.l @(0xAC,PC),r10
	mov 0x10,r12
	mov.l @(0xAC,PC),r11
	mov 0x00,r13
	mov.l @(0xA0,PC),r14

loc_8c11f5c2:
	mov.w @r14,r3
	tst r3,r3
	bt loc_8c11f5dc
	mov.w @(0x8C,PC),r5
	mov r14,r4
	add r14,r5
	jsr @r11
	add 0x68,r4
	mov r14,r5
	mov r14,r4
	add 0x74,r5
	jsr @r10
	add 0x5C,r4

loc_8c11f5dc:
	add 0x01,r13
	mov.w @(0x78,PC),r3
	cmp/ge r12,r13
	bf.s loc_8c11f5c2
	add r3,r14
	lds.l @r15+,pr
	mov.l @(0x84,PC),r3
	mov 0x01,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f600:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x6C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x58,PC),r5
	mov.w @(0x48,PC),r3
	mov.l @(0x5C,PC),r2
	mov.l r5,@r15
	add r3,r5
	mov.l @r15,r4
	jsr @r2
	add 0x68,r4
	mov.l @(0x50,PC),r3
	mov.l @(0x5C,PC),r4
	mov.l @(0x58,PC),r5
	jsr @r3
	nop 
	add 0x04,r15
	mov.l @(0x4C,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
	nop
	nop

;==============================================
loc_8c11f630:
	mov.w @(0x26,PC),r3
	tst r5,r5
	sts.l macl,@-r15
	mul.l r3,r4
	mov.l @(0x28,PC),r0
	mov.l @(0x44,PC),r6
	sts macl,r3
	mov.w r5,@(r0,r3)
	mov 0x01,r3
	mov.l @r6,r2
	shad r4,r3
	mov r3,r4
	or r4,r2
	bf.s loc_8c11f654
	mov.l r2,@r6
	mov.l @r6,r1
	xor r4,r1
	mov.l r1,@r6

loc_8c11f654:
	rts 
	lds.l @r15+,macl


;==============================================
loc_8C11F658:
	#data 0x0080
loc_8C11F65a:
	#data 0x00B0
	#align4

loc_8C11F65C:
	#data bank12.loc_8c120950
loc_8C11F660:
	#data loc_8c11FA20
loc_8C11F664:
	#data 0x8C2D5C94
loc_8C11F668:
	#data loc_8c11F8B0
loc_8C11F66C:
	#data loc_8c11F910
loc_8C11F670:
	#data bank12.loc_8c120900
loc_8C11F674:
	#data bank12.loc_8c121080
loc_8C11F678:
	#data bank13.loc_8c132780
loc_8C11F67C:
	#data bank16.loc_8c16BCF4
loc_8C11F680:
	#data bank16.loc_8c16BC3c

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
;==============================================
loc_8c11f690:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov r12,r14
	mov.l r10,@-r15
	mov 0x10,r11
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x120,PC),r10
	mov.l @(0x120,PC),r8
	sts.l macl,@-r15
	mov.l @(0x120,PC),r9

loc_8c11f6ae:
	mul.l r10,r14
	mov.l @(0x120,PC),r3
	mov r14,r0
	shll2 r0
	mov r14,r4
	shll2 r4
	mov r8,r5
	sts macl,r13
	shll2 r4
	add r3,r13
	mov.w @r13,r2
	mov.l r2,@(r0,r9)
	mov 0x14,r0
	mov.l @(0x10C,PC),r2
	fmov @(r0,r13),fr3
	mov 0x18,r0
	add r2,r4
	fmov fr3,@r4
	fmov @(r0,r13),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	mov 0x1C,r0
	fmov @(r0,r13),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	fmov @(r0,r13),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	bsr loc_8c11f550
	mov r14,r4
	add 0x01,r14
	cmp/ge r11,r14
	bf.s loc_8c11f6ae
	mov.w r12,@r13
	mov.l @(0xE4,PC),r2
	mov.l r12,@r2
	lds.l @r15+,macl
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

;==============================================
loc_8c11f710:
	mov.l r14,@-r15
	mov 0x00,r4
	mov.l r12,@-r15
	mov r4,r5
	mov.l r11,@-r15
	mov 0x10,r12
	mov.l r10,@-r15
	mov 0x01,r14
	mov.l r9,@-r15
	mov.l @(0xB8,PC),r7
	sts.l macl,@-r15
	mov.l @(0xA8,PC),r10
	mov.l @(0xA8,PC),r11
	mov.w @(0x9C,PC),r1
	mov.l @(0xA8,PC),r9
	mov.l r4,@r7

loc_8c11f730:
	mul.l r1,r5
	mov r5,r6
	shll2 r6
	shll2 r6
	add r9,r6
	sts macl,r4
	fmov @r6,fr3
	mov 0x14,r0
	add r11,r4
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov 0x1C,r0
	fmov fr3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r6),fr3
	mov 0x20,r0
	fmov fr3,@(r0,r4)
	mov r5,r0
	shll2 r0
	mov.l @(r0,r10),r3
	mov.w r3,@r4
	mov.w @r4,r0
	cmp/eq 0x01,r0
	bf.s loc_8c11f772
	add 0x01,r5
	mov.l @r7,r2
	or r14,r2
	mov.l r2,@r7

loc_8c11f772:
	shll r14
	cmp/ge r12,r5
	bf loc_8c11f730
	lds.l @r15+,macl
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f790:
	mov.l @(0x4C,PC),r5
	mov 0x04,r0
	fmov @r5,fr3
	fmov fr3,@r4
	add 0x04,r4
	fmov @(r0,r5),fr3
	mov 0x08,r0
	fmov fr3,@r4
	add 0x04,r4
	fmov @(r0,r5),fr3
	mov 0x0C,r0
	fmov fr3,@r4
	add 0x04,r4
	fmov @(r0,r5),fr3
	rts 
	fmov fr3,@r4

;==============================================
loc_8c11f7b0:
	fmov @r4+,fr3
	mov 0x04,r0
	mov.l @(0x28,PC),r5
	fmov fr3,@r5
	fmov @r4+,fr3
	fmov fr3,@(r0,r5)
	mov 0x08,r0
	fmov @r4+,fr3
	fmov fr3,@(r0,r5)
	mov 0x0C,r0
	fmov @r4,fr3
	rts 
	fmov fr3,@(r0,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C11F7Ca:
	#data 0x00B0
	#align4

loc_8C11F7CC:
	#data bank16.loc_8c16BD00
loc_8C11F7D0:
	#data 0x8C2D67A4
loc_8C11F7D4:
	#data 0x8C2D5C94
loc_8C11F7D8:
	#data 0x8C2D67E4
loc_8C11F7DC:
	#data bank16.loc_8c16BC3c
loc_8C11F7e0:
	#data 0x8C2D6794
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

;==============================================
loc_8C11F7F0:
	mov.b @(0x01,gbr),r0
	mov.l @(loc_8C11F81C,pc),r2 ; r2 set to 0x8C32B4A0
	cmp/eq 0x03,r0
	shll2 r4
	mov r2,r0 ; r0 set to 0x8C32B4A0
	bt loc_8C11F80c

loc_8C11F7FC:
	mov.w @r5+,r1
	dt r6
	mov.w r1,@(r0,r4)
	bf/s loc_8C11F7Fc
	add 0x04,r4
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	rts
	mov.b r0,@(0x00,gbr)

;==============================================
loc_8C11F80C:
	mov.l @r5+,r1
	dt r6
	mov.l r1,@(r0,r4)
	bf/s loc_8C11F80c
	add 0x04,r4
	mov 0x01,r0 ; r0 set to 0x01
	rts
	mov.b r0,@(0x00,gbr)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11F81C:
	#data 0x8C32B4A0

;==============================================
loc_8c11f820:
	frchg 
	flds fr15,fpul
	fmov @r4+,fr15
	fadd fr15,fr0
	fmov @r4+,fr15
	fadd fr15,fr1
	fmov @r4+,fr15
	fadd fr15,fr2
	fmov @r4+,fr15
	fadd fr15,fr3
	fmov @r4+,fr15
	fadd fr15,fr4
	fmov @r4+,fr15
	fadd fr15,fr5
	fmov @r4+,fr15
	fadd fr15,fr6
	fmov @r4+,fr15
	fadd fr15,fr7
	fmov @r4+,fr15
	fadd fr15,fr8
	fmov @r4+,fr15
	fadd fr15,fr9
	fmov @r4+,fr15
	fadd fr15,fr10
	fmov @r4+,fr15
	fadd fr15,fr11
	fmov @r4+,fr15
	fadd fr15,fr12
	fmov @r4+,fr15
	fadd fr15,fr13
	fmov @r4+,fr15
	fadd fr15,fr14
	fsts fpul,fr15
	flds fr0,fpul
	fmov @r4+,fr0
	fadd fr0,fr15
	fsts fpul,fr0
	frchg 
	rts 
	nop 

;==============================================
loc_8C11F870:
	fmov.s @r4+,fr4
	fmov.s @r4+,fr5
	fmov.s @r4+,fr6
	fldi1 fr7
	ftrv xmtrx,fv4
	add 0x10,r5
	fmov.s fr7,@-r5
	fmov.s fr6,@-r5
	fmov.s fr5,@-r5
	fmov.s fr4,@-r5
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f890:
	fmov @r4+,fr4
	fmov @r4+,fr5
	fmov @r4+,fr6
	fmov @r4+,fr7
	ftrv xmtrx,fv4
	add 0x10,r5
	fmov fr7,@-r5
	fmov fr6,@-r5
	fmov fr5,@-r5
	fmov fr4,@-r5
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11F8B0:
	fmov.s @r4+,fr4
	fmov.s @r4+,fr5
	fmov.s @r4+,fr6
	fldi1 fr7
	ftrv xmtrx,fv4
	add 0x0C,r5
	fmov.s fr6,@-r5
	fmov.s fr5,@-r5
	fmov.s fr4,@-r5
	nop
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f8d0:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	bra loc_8c11f8f4
	mov.l r6,@(0x8,r15)

;==============================================
	nop
	nop

;==============================================
loc_8c11f8e0:
	mov.l @(0x4,r15),r5
	mov.l @(0x24,PC),r3
	add 0x0C,r5
	mov.l r5,@(0x4,r15)
	add 0xF4,r5
	mov.l @r15,r4
	add 0x0C,r4
	mov.l r4,@r15
	jsr @r3
	add 0xF4,r4

loc_8c11f8f4:
	mov.l @(0x8,r15),r2
	add 0xFF,r2
	cmp/pz r2
	bt.s loc_8c11f8e0
	mov.l r2,@(0x8,r15)
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11F908:
	#data loc_8c11F8B0

;==============================================
	nop
	nop

;==============================================
loc_8C11F910:
	fmov.s @r4+,fr4
	fmov.s @r4+,fr5
	fmov.s @r4+,fr6
	fldi0 fr7
	ftrv xmtrx,fv4
	add 0x0C,r5
	fmov.s fr6,@-r5
	fmov.s fr5,@-r5
	fmov.s fr4,@-r5
	nop
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f930:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	bra loc_8c11f954
	mov.l r6,@(0x8,r15)

;==============================================
	nop
	nop
;==============================================
loc_8c11f940:
	mov.l @(0x4,r15),r5
	mov.l @(0xC0,PC),r3
	add 0x0C,r5
	mov.l r5,@(0x4,r15)
	add 0xF4,r5
	mov.l @r15,r4
	add 0x0C,r4
	mov.l r4,@r15
	jsr @r3
	add 0xF4,r4

loc_8c11f954:
	mov.l @(0x8,r15),r2
	add 0xFF,r2
	cmp/pz r2
	bt.s loc_8c11f940
	mov.l r2,@(0x8,r15)
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop


;==============================================
loc_8c11f970:
	sts.l pr,@-r15
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x90,PC),r4
	mov 0x00,r3
	mov.l @(0x4,r4),r2
	mov.l r2,@(0x8,r4)
	mov.l @(0x8C,PC),r2
	mov.w r3,@r4
	mov r3,r4
	jmp @r2
	lds.l @r15+,pr

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11F990:
	tst r4,r4
	mov.l r14,@-r15
	bf/s loc_8C11F9B0
	mov r5,r14
	tst r14,r14
	bt loc_8C11F9D0
	mov.l @(loc_8C11FA10,pc),r3 ; r3 set to 0x8C1201E0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11F9B0:
	tst r14,r14
	bf loc_8C11F9C0
	mov.l @(loc_8C11FA08,pc),r3 ; r3 set to 0x8C11FA80
	jmp @r3
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11F9C0:
	mov r4,r5
	mov 0x10,r4 ; r4 set to 0x10
	mov r14,r6

loc_8C11F9C6:
	fmov.s @r6+,fr3
	dt r4
	fmov.s fr3,@r5
	bf/s loc_8C11F9C6
	add 0x04,r5

loc_8C11F9D0:
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11f9e0:
	sts.l pr,@-r15
	add 0xB8,r15
	mov r4,r5
	mov.l r4,@r15
	mov r15,r4
	bsr loc_8c11f990
	add 0x04,r4
	mov.l @(0x24,PC),r2
	mov r15,r5
	mov r15,r4
	add 0x44,r5
	jsr @r2
	add 0x04,r4
	add 0x48,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11FA04:
	#data loc_8c11F910
loc_8C11FA08:
	#data loc_8c11FA80
loc_8C11FA0c:
	#data 0x8C2D68E8
loc_8C11FA10:
	#data loc_8c1201e0
loc_8C11FA14:
	#data bank12.loc_8c120280

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11FA20:
	frchg
	fipr fv12,fv0;11fa22
	fipr fv12,fv4;11fa24
	fipr fv12,fv8;11fa26
	fmov fr3,fr12;11fa28
	fsub fr3,fr3;11fa2a
	fmov fr7,fr13;11fa2c
	fsub fr7,fr7
	fmov fr11,fr14
	fsub fr11,fr11
	fipr fv0,fv0
	fneg fr12
	fipr fv4,fv4
	fneg fr13
	fipr fv8,fv8
	fneg fr14
	fsrra fr3
	fsrra fr7
	fsrra fr11
	fmul fr3,fr1
	fmul fr7,fr4
	fmul fr3,fr2
	flds fr1,fpul
	fmul fr11,fr8
	fmov fr4,fr1
	fmul fr7,fr6
	fsts fpul,fr4
	fmul fr11,fr9
	flds fr2,fpul
	fmul fr3,fr0
	fmov fr8,fr2
	fmul fr7,fr5
	fsts fpul,fr8
	fmul fr11,fr10
	flds fr6,fpul
	fmul fr3,fr12
	fmov fr9,fr6
	fmul fr7,fr13
	fsts fpul,fr9
	fmul fr11,fr14
	fldi0 fr3
	fsub fr7,fr7
	fldi0 fr11
	frchg
	rts
	nop

;==============================================
	nop
	nop

;==============================================
loc_8C11FA80:
	tst r4,r4
	bf loc_8c11fa88
	mov.l @(0x40,PC),r4
	mov.l @(0x8,r4),r4

loc_8C11FA88:
	add 0x40,r4
	frchg 
	fmov fr15,@-r4
	fmov fr14,@-r4
	fmov fr13,@-r4
	fmov fr12,@-r4
	fmov fr11,@-r4
	fmov fr10,@-r4
	fmov fr9,@-r4
	fmov fr8,@-r4
	fmov fr7,@-r4
	fmov fr6,@-r4
	fmov fr5,@-r4
	fmov fr4,@-r4
	fmov fr3,@-r4
	fmov fr2,@-r4
	fmov fr1,@-r4
	fmov fr0,@-r4
	frchg 
	mov r4,r0
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fac0:
	tst r4,r4
	bf loc_8c11fad0
	rts 
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c11fac8:
	#data 0x8C2D68E8

;==============================================
	nop
	nop

;==============================================
loc_8c11fad0:
	add 0x24,r4
	frchg 
	fmov fr10,@-r4
	fmov fr9,@-r4
	fmov fr8,@-r4
	fmov fr6,@-r4
	fmov fr5,@-r4
	fmov fr4,@-r4
	fmov fr2,@-r4
	fmov fr1,@-r4
	fmov fr0,@-r4
	frchg 
	mov r4,r0
	nop 
	rts 
	nop 

;==============================================
loc_8c11faf0:
	tst r4,r4
	bf loc_8c11fb00
	rts 
	mov 0x00,r0


;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fb00:
	add 0x2C,r4
	frchg 
	fmov fr10,@-r4
	fmov fr9,@-r4
	fmov fr8,@-r4
	add 0xFC,r4
	fmov fr6,@-r4
	fmov fr5,@-r4
	fmov fr4,@-r4
	add 0xFC,r4
	fmov fr2,@-r4
	fmov fr1,@-r4
	fmov fr0,@-r4
	frchg 
	mov r4,r0
	nop 
	rts 
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fb30:
	tst r4,r4
	bf loc_8c11fb40
	rts 
	mov 0x00,r0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fb40:
	add 0x30,r4
	frchg 
	fmov fr14,@-r4
	fmov fr13,@-r4
	fmov fr12,@-r4
	fmov fr10,@-r4
	fmov fr9,@-r4
	fmov fr8,@-r4
	fmov fr6,@-r4
	fmov fr5,@-r4
	fmov fr4,@-r4
	fmov fr2,@-r4
	fmov fr1,@-r4
	fmov fr0,@-r4
	frchg 
	mov r4,r0
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C11FB70:
	tst r4,r4
	bf loc_8c11fb78
	mov.l @(0x4,PC),r4
	mov.l @(0x8,r4),r4

loc_8C11FB78:
	bra loc_8c11fb80
	nop 

	#align4
loc_8C11FB7c:
	#data 0x8C2D68E8


;==============================================
loc_8C11FB80:
	add 0x40,r4
	fschg 
	fmov fr15,@-r4
	fmov fr13,@-r4
	fmov fr11,@-r4
	fmov fr9,@-r4
	fmov fr7,@-r4
	fmov fr5,@-r4
	fmov fr3,@-r4
	fmov fr1,@-r4
	fschg 
	mov r4,r0
	rts 
	nop 


;==============================================
	nop
	nop

;==============================================
loc_8c11fba0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xB8,r15
	mov r4,r14
	tst r14,r14
	bf.s loc_8c11fbd0
	mov.l r14,@(0x4,r15)
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0xB0,PC),r3
	mov r15,r4
	mov r0,r14
	jsr @r3
	add 0x08,r4
	bra loc_8c11fbda
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fbd0:
	mov.l @(0x98,PC),r3
	mov r15,r4
	mov r14,r5
	jsr @r3
	add 0x08,r4

loc_8c11fbda:
	mov r14,r5
	mov.l r5,@r15
	mov.l @r15,r4
	mov r15,r6
	mov.l @(0x8C,PC),r13
	add 0x20,r5
	add 0x08,r6
	jsr @r13
	add 0x10,r4
	mov r14,r5
	mov r15,r6
	mov r5,r4
	mov.l r5,@r15
	add 0x18,r6
	jsr @r13
	add 0x20,r4
	mov r14,r5
	mov.l r5,@r15
	mov r15,r6
	add 0x10,r5
	add 0x28,r6
	jsr @r13
	mov.l @r15,r4
	mov.l @(0x4,r15),r2
	tst r2,r2
	bf loc_8c11fc20
	mov.l @(0x64,PC),r3
	mov r15,r4
	jsr @r3
	add 0x08,r4
	bra loc_8c11fc2a
	nop 

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c11fc20:
	mov.l @(0x48,PC),r3
	mov r15,r5
	add 0x08,r5
	jsr @r3
	mov r14,r4

loc_8c11fc2a:
	add 0x48,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fc40:
	mov.l r14,@-r15
	tst r4,r4
	mov.l @(0x30,PC),r14
	mov.l @(0x8,r14),r14
	bf.s loc_8c11fc60
	add 0xC0,r14
	mov.l @(0x2C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fc60:
	mov.l @(0x8,PC),r2
	mov r14,r5
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11FC68:
	#data loc_8c11FA80
loc_8C11FC6C:
	#data loc_8c11F990
loc_8C11FC70:
	#data bank12.loc_8c121200
loc_8C11FC74:
	#data loc_8c1201e0
loc_8C11FC78:
	#data 0x8C2D68E8
loc_8C11FC7C:
#data bank12.loc_8c120250

;==============================================
loc_8c11fc80:
	add 0x0C,r4
	frchg 
	fmov fr14,@-r4
	fmov fr13,@-r4
	fmov fr12,@-r4
	frchg 
	rts 
	nop 

;==============================================
loc_8c11fc90:
	mov.l r14,@-r15
	mov r4,r14
	mov r5,r4
	mov 0xE0,r3
	add 0x1F,r4
	sts.l pr,@-r15
	and r3,r4
	cmp/eq r4,r5
	bt loc_8c11fca4
	add 0xFF,r6

loc_8c11fca4:
	mov.w @(loc_8C11FD1A,pc),r5
	cmp/gt r5,r6
	bf loc_8c11fcac
	mov r5,r6

loc_8c11fcac:
	mov 0x00,r3
	mov.l @(loc_8c11fd1c,pc),r2
	mov r6,r0
	mov.w r0,@(0x02,r14)
	mov.w r3,@r14
	mov.l r4,@(0x08,r14)
	jsr @r2
	mov.l r4,@(0x04,r14)
	mov.l @(loc_8c11fd20,pc),r3
	jsr @r3
	mov.l @(0x08,r14),r4
	lds.l @r15+,pr
	mov.l @(0x04,r14),r0
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C11FCD0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8C11FD24,pc),r14 ; r14 set to 0x8C2D68E8
	mov 0x03,r6 ; r6 set to 0x03
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov r14,r4 ; r4 set to 0x8C2D68E8
	mov.l @(loc_8C11FD28,pc),r5 ; r5 set to 0x8C2D6918
	bsr loc_8C11FC90
	add 0x18,r4 ; r4 set to 0x8C2D6900
	mov.l @(loc_8C11FD2C,pc),r5 ; r5 set to 0x8C2D69D8
	mov r14,r4 ; r4 set to 0x8C2D68E8
	mov 0x03,r6 ; r6 set to 0x03
	bsr loc_8C11FC90
	add 0x24,r4 ; r4 set to 0x8C2D690c
	mov.l @(0x04,r15),r6 ; r6 ??? bc r15 is ???
	mov r14,r4 ; r4 set to 0x8C2D68E8
	mov.l @r15,r5 ; r5 ??? bc r15 is ???
	add 0x0C,r4 ; r4 set to 0x8C2D68F4
	add 0x01,r6
	bsr loc_8C11FC90
	mov.l r4,@(0x08,r15)
	mov.l @(loc_8C11FD30,pc),r3 ; r3 set to 0x8C2D68E4
	mov 0x01,r2 ; r2 set to 0x01
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov r14,r1 ; r1 set to 0x8C2D68E8
	mov.b r2,@r3 ; r3 ??
	mov.l @(loc_8C11FD34,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @(0x08,r15),r2 ; r2 ??? bc r15 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov r4,r0 ; r0 ??? bc r4 is ???
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c11fd1a:
	#data 0x7FFf
	#align4

loc_8C11FD1C:
	#data bank12.loc_8c121100
loc_8C11FD20:
	#data loc_8c11FA80
loc_8C11FD24:
	#data 0x8C2D68E8
loc_8C11FD28:
	#data 0x8C2D6918
loc_8C11FD2C:
	#data 0x8C2D69D8
loc_8C11FD30:
	#data 0x8C2D68E4
loc_8C11FD34:
	#data bank12.loc_8c1294C8

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fd40:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xB0,r15
	mov r4,r13
	tst r13,r13
	bf.s loc_8c11fd64
	mov.l r13,@(0x8,r15)
	mov.l @(0x150,PC),r2
	jsr @r2
	mov 0x00,r4
	mov r0,r13

loc_8c11fd64:
	mov.l @(0x14C,PC),r3
	mov r15,r5
	add 0x4C,r5
	jsr @r3
	mov r13,r4
	fldi0 fr3
	fmov fr0,fr15
	fcmp/eq fr3,fr15
	bf loc_8c11fd7a
	bra loc_8c11fe7c
	nop 

loc_8c11fd7a:
	mov 0x00,r12
	mov.b r12,@r15
	mov 0x04,r4

loc_8c11fd80:
	mov.b @r15,r14
	mov r12,r5
	shll2 r14

loc_8c11fd86:
	mov r15,r3
	add 0x4C,r3
	exts.b r5,r7
	mov.b @r15,r1
	add r3,r7
	mov r12,r11
	mov.b @r7,r7
	exts.b r7,r2
	cmp/eq r1,r2
	exts.b r7,r7
	movt r0
	mov r13,r2
	lds r0,fpul
	shll2 r7
	exts.b r5,r1
	shll2 r7
	cmp/pl r1
	float fpul,fr3
	add r2,r7
	fmov fr3,fr4
	bf.s loc_8c11fdcc
	mov r12,r6

loc_8c11fdb2:
	mov r15,r0
	add 0x0C,r0
	add r6,r0
	fmov @r7+,fr2
	fmov @(r0,r14),fr3
	add 0x01,r11
	exts.b r5,r2
	fmul fr3,fr2
	exts.b r11,r3
	cmp/ge r2,r3
	fsub fr2,fr4
	bf.s loc_8c11fdb2
	add 0x10,r6

loc_8c11fdcc:
	exts.b r5,r0
	mov r15,r3
	add 0x01,r5
	shll2 r0
	exts.b r5,r2
	shll2 r0
	cmp/ge r4,r2
	add 0x0C,r3
	add r3,r0
	bf.s loc_8c11fd86
	fmov fr4,@(r0,r14)
	mov 0x30,r8
	mov r4,r10
	mov 0x03,r11
	mov 0x0C,r9

loc_8c11fdea:
	exts.b r11,r0
	mov r15,r3
	shll2 r0
	mov r13,r2
	add 0x0C,r3
	mov r10,r5
	shll2 r0
	add r3,r0
	mov r15,r3
	add 0x4C,r3
	fmov @(r0,r14),fr4
	exts.b r11,r6
	add r3,r6
	mov.b @r6,r6
	exts.b r5,r1
	shll2 r1
	shll2 r6
	shll2 r6
	mov.l r6,@(0x4,r15)
	add r2,r6
	exts.b r5,r2
	exts.b r5,r7
	cmp/ge r4,r2
	shll2 r7
	add r1,r6
	bt.s loc_8c11fe38
	shll2 r7

loc_8c11fe20:
	mov r15,r0
	add 0x0C,r0
	add r7,r0
	fmov @r6+,fr2
	fmov @(r0,r14),fr3
	add 0x01,r5
	exts.b r5,r3
	fmul fr3,fr2
	cmp/ge r4,r3
	fsub fr2,fr4
	bf.s loc_8c11fe20
	add 0x10,r7

loc_8c11fe38:
	mov.l @(0x4,r15),r3
	mov r13,r2
	mov r15,r0
	add 0xFF,r11
	add r3,r2
	add r9,r2
	fmov @r2,fr3
	add 0x0C,r0
	exts.b r11,r3
	fdiv fr3,fr4
	add r8,r0
	cmp/pz r3
	add 0xF0,r8
	add 0xFC,r9
	fmov fr4,@(r0,r14)
	bt.s loc_8c11fdea
	add 0xFF,r10
	mov.b @r15,r3
	add 0x01,r3
	mov.b r3,@r15
	exts.b r3,r3
	cmp/ge r4,r3
	bf loc_8c11fd80
	mov.l @(0x50,PC),r2
	mov r15,r5
	add 0x0C,r5
	jsr @r2
	mov r13,r4

loc_8c11fe70:
	mov.l @(0x8,r15),r3
	tst r3,r3
	bf loc_8c11fe7c
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r13,r4

loc_8c11fe7c:
	fmov fr15,fr0
	add 0x50,r15
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
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fea0:
	tst r4,r4
	bf loc_8c11feaa
	mov.l @(0x18,PC),r3
	jmp @r3
	nop 

loc_8c11feaa:
	bra loc_8c11fed0
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11FEB0:
	#data loc_8c11FA80
loc_8C11FEB4:
	#data bank12.loc_8c120280
loc_8C11FEB8:
	#data loc_8c11F990
loc_8C11FEBC:
	#data loc_8c1201e0
loc_8C11FEC0:
	#data loc_8c11FEEc

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11fed0:
	frchg 
	fmov @r4+,fr0
	fmov @r4+,fr1
	fmov @r4+,fr2
	fmov @r4+,fr4
	fmov @r4+,fr5
	fmov @r4+,fr6
	fmov @r4+,fr8
	fmov @r4+,fr9
	fmov @r4+,fr10
	fldi0 fr3
	fldi0 fr7
	fldi0 fr11
	frchg 

loc_8C11FEEC:
	rts
	nop

;==============================================
loc_8c11fef0:
	tst r4,r4
	bf loc_8c11fefa
	mov.l @(0x8,PC),r3
	jmp @r3
	nop 

loc_8c11fefa:
	bra loc_8c11ff10
	nop 

	#align4
loc_8C11FF00:
	#data loc_8c11FF30

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ff10:
	frchg 
	fmov @r4+,fr0
	fmov @r4+,fr1
	fmov @r4,fr2
	add 0x08,r4
	fmov @r4+,fr4
	fmov @r4+,fr5
	fmov @r4,fr6
	add 0x08,r4
	fmov @r4+,fr8
	fmov @r4+,fr9
	fmov @r4,fr10
	fldi0 fr3
	fldi0 fr7
	fldi0 fr11
	frchg 

loc_8C11FF30:
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ff40:
	tst r4,r4
	bf loc_8c11ff4a
	mov.l @(0x8,PC),r3
	jmp @r3
	nop 

loc_8c11ff4a:
	bra loc_8c11ff60
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C11FF50:
	#data loc_8c11FF84

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c11ff60:
	frchg 
	fmov @r4+,fr0
	fmov @r4+,fr1
	fmov @r4+,fr2
	fmov @r4+,fr4
	fmov @r4+,fr5
	fmov @r4+,fr6
	fmov @r4+,fr8
	fmov @r4+,fr9
	fmov @r4+,fr10

loc_8c11ff74:
	fmov @r4+,fr12
	fmov @r4+,fr13
	fmov @r4+,fr14
	fldi0 fr3
	fldi0 fr7
	fldi0 fr11
	fldi1 fr15
	frchg 

loc_8c11ff84:
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C11FF90:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	extu.w r6,r14
	mov r4,r13
	tst r14,r14
	bt.s loc_8c11ffb0
	mov r5,r12
	mov.l @(0x240,PC),r2
	jsr @r2
	mov r14,r4

loc_8C11FFB0:
	fmov @r12,fr2
	mov r15,r14
	fmov @r13,fr3
	mov 0x04,r0
	mov.l @(0x234,PC),r3
	fsub fr3,fr2
	fmov fr2,@r14
	fmov @(r0,r12),fr2
	fmov @(r0,r13),fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r12),fr2
	fmov @(r0,r13),fr3
	fsub fr3,fr2
	fmov fr2,fr4
	fmov fr2,fr3
	fmul fr4,fr3
	fmov fr2,@(r0,r14)
	fmov @r14,fr5
	fmov fr5,fr0
	fmac fr0,fr5,fr3
	fmov fr3,fr14
	jsr @r3
	fmov fr3,fr4
	mov 0x04,r0
	fmov fr0,fr15
	fmov @(r0,r14),fr13
	mov.l @(0x204,PC),r3
	fmov fr13,fr0
	fmac fr0,fr13,fr14
	jsr @r3
	fmov fr14,fr4
	fmov fr0,fr5
	fdiv fr15,fr5
	mov 0x04,r0
	fmov fr0,fr14
	fmov @(r0,r14),fr3
	mov.l @(0x1F4,PC),r3
	fmul fr14,fr3
	fmov fr3,fr4
	jsr @r3
	fneg fr4
	mov 0x08,r0
	fmov @r14,fr4
	fmov @(r0,r14),fr3
	mov.l @(0x1E8,PC),r3
	fmul fr15,fr3
	fmov fr3,fr5
	fneg fr5
	jsr @r3
	fmul fr15,fr4
	mov.l @(0x1E0,PC),r2
	jsr @r2
	mov r13,r4
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c120030:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0x94,r15
	mov.l @(0x1C8,PC),r3
	mov.l r4,@r15
	mov r15,r4
	mov.l r6,@(0x4,r15)
	mov.l @r15,r6
	jsr @r3
	add 0x08,r4
	mov r15,r5
	mov.l @(0x1BC,PC),r3
	mov r15,r6
	add 0x08,r5
	add 0x20,r6
	jsr @r3
	mov.l @(0x4,r15),r4
	mov r15,r5
	mov.l @(0x1AC,PC),r2
	mov r15,r6
	mov r15,r4
	add 0x14,r6
	add 0x20,r5
	jsr @r2
	add 0x08,r4
	mov.l @(0x1A4,PC),r14
	mov r15,r4
	jsr @r14
	add 0x20,r4
	mov r15,r4
	jsr @r14
	add 0x14,r4
	mov r15,r4
	jsr @r14
	add 0x08,r4
	mov 0x20,r0
	fldi0 fr4
	fmov @(r0,r15),fr3
	mov 0x2C,r0
	fmov fr3,@(r0,r15)
	mov 0x24,r0
	fmov @(r0,r15),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r15)
	mov 0x28,r0
	fmov @(r0,r15),fr3
	mov 0x4C,r0
	fmov fr3,@(r0,r15)
	mov 0x5C,r0
	fmov fr4,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r15),fr3
	mov 0x30,r0
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	fmov @(r0,r15),fr3
	mov 0x40,r0
	fmov fr3,@(r0,r15)
	mov 0x1C,r0
	fmov @(r0,r15),fr3
	mov 0x50,r0
	fmov fr3,@(r0,r15)
	mov 0x60,r0
	fmov fr4,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r15),fr3
	mov 0x44,r0
	mov.l @(0x14C,PC),r3
	mov r15,r4
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r15),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r15)
	mov 0x64,r0
	fmov fr4,@(r0,r15)
	mov 0x38,r0
	fmov fr4,@(r0,r15)
	mov 0x48,r0
	fmov fr4,@(r0,r15)
	mov 0x58,r0
	fmov fr4,@(r0,r15)
	mov 0x68,r0
	fldi1 fr3
	fmov fr3,@(r0,r15)
	jsr @r3
	add 0x2C,r4
	mov.l @(0x114,PC),r3
	jsr @r3
	mov.l @r15,r4
	add 0x6C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c120100:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0x98,r15
	mov r4,r14
	mov 0x04,r0
	mov.l r6,@r15
	mov r15,r6
	fmov @r14,fr2
	add 0x1C,r6
	fmov @r5,fr3
	mov.l @(0xEC,PC),r3
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r5),fr3
	mov 0x08,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r5),fr3
	mov r15,r5
	mov 0x0C,r0
	fsub fr3,fr2
	add 0x04,r5
	fmov fr2,@(r0,r15)
	jsr @r3
	mov.l @r15,r4
	mov r15,r5
	mov.l @(0xC4,PC),r2
	mov r15,r6
	mov r15,r4
	add 0x10,r6
	add 0x1C,r5
	jsr @r2
	add 0x04,r4
	mov.l @(0xB8,PC),r13
	mov r15,r4
	jsr @r13
	add 0x1C,r4
	mov r15,r4
	jsr @r13
	add 0x10,r4
	mov r15,r4
	jsr @r13
	add 0x04,r4
	mov 0x1C,r0
	fldi0 fr4
	fmov @(r0,r15),fr3
	mov 0x28,r0
	fmov fr3,@(r0,r15)
	mov 0x20,r0
	fmov @(r0,r15),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r15)
	mov 0x24,r0
	fmov @(r0,r15),fr3
	mov 0x48,r0
	fmov fr3,@(r0,r15)
	mov 0x58,r0
	fmov fr4,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r15),fr3
	mov 0x2C,r0
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r15),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	fmov @(r0,r15),fr3
	mov 0x4C,r0
	fmov fr3,@(r0,r15)
	mov 0x5C,r0
	fmov fr4,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x30,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov 0x40,r0
	mov.l @(0x60,PC),r3
	mov r15,r4
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r15),fr3
	mov 0x50,r0
	fmov fr3,@(r0,r15)
	mov 0x60,r0
	fmov fr4,@(r0,r15)
	mov 0x34,r0
	fmov fr4,@(r0,r15)
	mov 0x44,r0
	fmov fr4,@(r0,r15)
	mov 0x54,r0
	fmov fr4,@(r0,r15)
	mov 0x64,r0
	fldi1 fr3
	fmov fr3,@(r0,r15)
	jsr @r3
	add 0x28,r4
	mov.l @(0x28,PC),r2
	jsr @r2
	mov r14,r4
	add 0x68,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C1201E0:
	tst r4,r4
	bf loc_8c1201e8
	mov.l @(0x28,PC),r4
	mov.l @(0x8,r4),r4

loc_8C1201E8:
	bra bank12.loc_8c120220
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1201EC:
	#data bank12.loc_8c120D90
loc_8C1201F0:
	#data loc_8c11E510
loc_8C1201F4:
	#data bank12.loc_8c120B50
loc_8C1201F8:
	#data bank12.loc_8c120D00
loc_8C1201FC:
	#data bank12.loc_8c1210C0
loc_8C120200:
	#data bank12.loc_8c121330
loc_8C120204:
	#data bank12.loc_8c121200
loc_8C120208:
	#data bank12.loc_8c121490
loc_8C12020C:
	#data bank12.loc_8c120540
loc_8C120210:
	#data 0x8C2D68E8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;nop padding
#repeat 6
	nop