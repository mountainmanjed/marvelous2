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
#data 0x6043
	nop
#data 0x8802
#data 0x8B07
#data 0x84E4
#data 0x7001
#data 0x80E4
#data 0x4A0B
#data 0xE41F
#data 0xD315
#data 0x430B
#data 0xE444

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

;==============================================
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

loc_8C11420C:
#data 0xD3064F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D022008
#data 0xD3036403
#data 0x1434

loc_8C114222:
#data 0x4F26
#data 0x0009000b

;==============================================

#align4
loc_8C114228:
#data bank04.loc_8c044F12

loc_8C11422C:
#data loc_8c113ED4


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

#align4
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

#align4
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

#align4
loc_8C114370:
#data bank04.loc_8c046AE0


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

#align4
loc_8C1143DC:
#data 0x7FFC4F22
#data 0xE505D32d
#data 0xE6012F42
#data 0xE400430b
#data 0x8D1F2008
#data 0xD22A6403
#data 0x9045E301
#data 0x0434D129
#data 0xD2291424
#data 0x61436312
#data 0x71346020
#data 0x40086332
#data 0x303C923d
#data 0x033E9339
#data 0x04369038
#data 0x04267048
#data 0x632362F2
#data 0x323C4200
#data 0x4208D320
#data 0xD320323c
#data 0xE00C430b

#align4
loc_8C114430:
#data 0x4F267F04
#data 0x0009000b

;==============================================

#align4
loc_8C114438:
#data 0xE300D019
#data 0x6102D219
#data 0x3307854e
#data 0x6312303e
#data 0x022C4021
#data 0x4208901b
#data 0x022E323c
#data 0xE31A7084
#data 0x854E0426
#data 0x814E7001
#data 0x3032600f
#data 0xE6008F03
#data 0x00096063
#data 0x814e

loc_8C11446E:
#data 0x8444
#data 0x8800600c
#data 0xE51E8D1c
#data 0x89328801
#data 0x0009A048

loc_8C114480:
#data 0x0400

loc_8C114482:
#data 0x00Cc
#data 0x0100012c
#data 0x09810084

#align4
loc_8C11448C:
#data 0x8C26A8C8

#align4
loc_8C114490:
#data 0x3D088889

#align4
loc_8C114494:
#data bank04.loc_8c0450C0

loc_8C114498:
#data bank04.loc_8c044F12

loc_8C11449C:
#data loc_8c114438
#data 0x8C26A904

#align4
loc_8C1144A4:
#data bank16.loc_8c1687F8

loc_8C1144A8:
#data bank16.loc_8c1687C8

loc_8C1144AC:
#data bank12.loc_8c1294C8

loc_8C1144B0:
#data 0x7001854f
#data 0x600F814f
#data 0x8B293053
#data 0x70018444
#data 0x60638044
#data 0x814F0009
#data 0x93239025
#data 0xF49D024e
#data 0x0426223b
#data 0xF447E078
#data 0xF447E07c
#data 0xA0177004
#data 0xF447

loc_8C1144E2:
#data 0xC70d
#data 0xE078F408
#data 0xF341F346
#data 0xE07CF437
#data 0xF241F246
#data 0x7004F427
#data 0xF341F346
#data 0x854FF437
#data 0x814F7001
#data 0x3053600f
#data 0xD3048B02
#data 0x0009432b

#align4
loc_8C114510:
#data 0x0009000b

;==============================================
#data 0x00CC0400
#data 0x3D088889

#align4
loc_8C11451C:
#data bank04.loc_8c0450C0


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

loc_8C1145BC:
#data 0x012c
#data 0x0000

#align4
loc_8C1145C0:
#data 0x8C26A8C8

#align4
loc_8C1145C4:
#data 0x3B088889

#align4
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
#data 0x0000

#align4
loc_8C1146EC:
#data bank16.loc_8c168814
loc_8c1146f0:
#data 0x3E4CCCCd

#align4
loc_8C1146F4:
#data 0x8C26A904

#align4
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

#align4
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

loc_8C114720:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0xFFEBFFFb
#data 0x84E44F22
#data 0x8800600c
#data 0x85EE8B52
#data 0x81EE7001
#data 0x630385Ee
#data 0x330385Ef
#data 0xD3488B0a
#data 0x0009430b
#data 0x6103D247
#data 0xE01B420b
#data 0x81EF7018
#data 0x81EEE000

#align4
loc_8C11475C:
#data 0x85EED244
#data 0xD2446322
#data 0x420B6103
#data 0x6332E003
#data 0xDC424008
#data 0xDD42303c
#data 0x9073520c
#data 0xC7410E26
#data 0xFE0864C2
#data 0x5448C740
#data 0x4D0BFF08
#data 0xF30C4408
#data 0xF7FCF0Ec
#data 0xFF7BF73e
#data 0x544864C2
#data 0x44004D0b
#data 0xF0ECF30c
#data 0xF63EF6Fc
#data 0x64C2FF6b
#data 0x54484D0b
#data 0xF0ECF30c
#data 0xF53EF5Fc
#data 0xF6F99054
#data 0xD33304Ee
#data 0x430BF49d
#data 0xD232F7F9
#data 0x88016022
#data 0x4F268B08
#data 0x64E3D130
#data 0xFFF9FEF9
#data 0x6DF66CF6
#data 0x6EF6412b

#align4
loc_8C1147DC:
#data 0xFEF94F26
#data 0x6CF6FFF9
#data 0x000B6DF6
#data 0x6EF6

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

;==============================================
loc_8c114860:
#data 0x0084
loc_8c114862:
#data 0x012C
loc_8c114864:
#data 0x0901
loc_8c114866:
#data 0x00CC

#align4
loc_8C114868:
#data loc_8c11e730

loc_8C11486C:
#data bank12.loc_8c1292D4
loc_8c114870:
#data 0x8C26A904

#align4
loc_8C114874:
#data bank12.loc_8c129128
#data 0x8C26823c

#align4
loc_8C11487C:
#data loc_8c11E860
#data 0x3E800000
#data 0x3F400000

#align4
loc_8C114888:
#data bank10.loc_8c10837c
#data 0x8C26A8C8

#align4
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

#align4
loc_8C114918:
#data 0xD3144F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D162008
#data 0x90176403
#data 0xD111E301
#data 0x0434D20f
#data 0x63121424
#data 0x62329011
#data 0x6322F48d
#data 0x0436920e
#data 0x04267048
#data 0xF447E078
#data 0xF39DE07c
#data 0x7004F437
#data 0xF447

loc_8C114956:
#data 0x4F26
#data 0x0009000b

;==============================================
#data 0x0084012c
#data 0x00000C01

#align4
loc_8C114964:
#data 0x8C26A8C8

#align4
loc_8C114968:
#data bank16.loc_8c168830

loc_8C11496C:
#data bank04.loc_8c044F12

loc_8C114970:
#data loc_8c1148A4
#data 0x8C26A904

#align4
loc_8C114978:
#data 0xE301D142
#data 0x4F222FE6
#data 0x32336212
#data 0x6E438F03
#data 0x420BD23f
#data 0x64E3

loc_8C11498E:
#data 0x84E4
#data 0x8800600c
#data 0xE4008D04
#data 0x892D8801
#data 0x0009A039

#align4
loc_8C1149A0:
#data 0xE301906b
#data 0xD239E100
#data 0xE3200E34
#data 0x33EC85Ee
#data 0x31076330
#data 0x633C301e
#data 0x43084021
#data 0x6022330c
#data 0x6002734e
#data 0x013E4308
#data 0x9057E308
#data 0x85EE0E16
#data 0x81EE7001
#data 0x3033600f
#data 0x60438B1b
#data 0xD12C0009
#data 0x81EE410b
#data 0x6103D32b
#data 0xE01E430b
#data 0x81EF701e
#data 0x700184E4
#data 0x80E4A00d

#align4
loc_8C1149F8:
#data 0x0E44903f
#data 0x700185Ee
#data 0x81EE630f
#data 0x330385Ef
#data 0x60438B03
#data 0x81EE0009
#data 0x80E4

loc_8C114A12:
#data 0x4F26
#data 0x6EF6000b

;==============================================

#align4
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
#data 0x012c
#data 0x0084
loc_8c114a7e:
#data 0x0901
loc_8c114a80:
#data 0x000000Cc
#data 0x8C26A8C8

#align4
loc_8C114A88:
#data bank04.loc_8c0450C0
#data 0x8C26A904

#align4
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
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0x7FEC4F22
#data 0x6E43903b
#data 0xE301D224
#data 0x90380E34
#data 0x013C6322
#data 0x8F092118
#data 0xD321ED00
#data 0x21186130
#data 0xD1208B04
#data 0x0009410b
#data 0x8B018802

#align4
loc_8C114B48:
#data 0x0ED49027

#align4
loc_8C114B4C:
#data 0xF408C71d
#data 0x600C84E4
#data 0x8D088800
#data 0x8801FF9d
#data 0x88028915
#data 0x88038936
#data 0xA04A894b
	nop

loc_8C114B6A:
#data 0xE07c
#data 0xF340F3E6
#data 0xC715FE37
#data 0xE07CF408
#data 0xF435F3E6
#data 0x84E4893f
#data 0x80E47001
#data 0xA03AE07c
#data 0xFE47

loc_8C114B8A:
#data 0xD210
#data 0x88026022
#data 0x84E48B35
#data 0xA0327001
#data 0x80E4

loc_8C114B9A:
#data 0x012c

loc_8C114B9C:
#data 0x0C01
#data 0x0098

#align4
loc_8C114BA0:
#data bank04.loc_8c044F12

loc_8C114BA4:
#data loc_8c114B06

loc_8C114BA8:
#data 0x8C26A904

#align4
loc_8C114BAC:
#data bank13.loc_8c13ebFc

loc_8C114BB0:
#data bank12.loc_8c1294C8

loc_8C114BB4:
#data bank10.loc_8c108210
#data 0x8C26823c
#data 0x8C2895F6

#align4
loc_8C114BC0:
#data bank03.loc_8c0310F2
#data 0x3B3F258c
#data 0x3F333333
#data 0x8C26A8C8

#align4
loc_8C114BD0:
#data 0xE078D145
#data 0x415AF2E6
#data 0xF230F30d
#data 0xE07CFE27
#data 0xF241F2E6
#data 0xE078FE27
#data 0xFF15F1E6
#data 0x84E48907
#data 0x7001F28d
#data 0xE07880E4
#data 0xE07CFEF7
#data 0xFE27

loc_8C114BFE:
#data 0x85Ee
#data 0x7001936f
#data 0x600F81Ee
#data 0x8B023033
#data 0x000960D3
#data 0x81Ee

loc_8C114C12:
#data 0x9367
#data 0x303385Ef
#data 0x60D38B02
#data 0x81EF0009

#align4
loc_8C114C20:
#data 0xD33285Ef
#data 0xD132700a
#data 0x643281Ef
#data 0x6242905b
#data 0x703C05Ee
#data 0x042E410b
#data 0xDD33C734
#data 0xC734FC08
#data 0xC734FD08
#data 0xD82BD92c
#data 0xDC2EDA2c
#data 0xA036DB2c
#data 0xFE08

loc_8C114C52:
#data 0x64F3
#data 0x7408490b
#data 0xF38DE00c
#data 0xF235F2F6
#data 0x85EF8B19
#data 0x435A6303
#data 0xF008C72b
#data 0xF22DE008
#data 0xC72AF1F6
#data 0xF108F21e
#data 0xF2C3F212
#data 0xF3D0F32c
#data 0x045AF33d
#data 0x24D94B0b
#data 0xF30CE00c
#data 0xE00CF2F6
#data 0xF23EF0Fc
#data 0xFF27

loc_8C114C96:
#data 0x64F3
#data 0x74084A0b
#data 0x750465F3
#data 0x64F3480b
#data 0x65F385Ee
#data 0x7504F2F8
#data 0x435A6303
#data 0xD31BF0Ec
#data 0xF23EF32d
#data 0x430BFF2a
#data 0x64F3

loc_8C114CBE:
#data 0x4C0b
#data 0x20080009
#data 0x7F1489C5
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00C86EF6
#data 0x00840168
#data 0x3B888889
#data 0x8C26A904

#align4
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
#data 0x0000FFFf
#data 0x43B40000
#data 0x3F000000
#data 0x3BA3D70a
#data 0x41200000
#data 0x47800000

#align4
loc_8C114D20:
#data bank10.loc_8c1081E6

loc_8C114D24:
#data 0xD3414F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D0E2008
#data 0xD13E6403
#data 0x9072E300
#data 0x62120434
#data 0x63229070
#data 0x533FD23b
#data 0x70480436
#data 0x1424936b
#data 0x0436

loc_8C114D52:
#data 0x4F26
#data 0x0009000b

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

;==============================================

#align4
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
loc_8c114e22:
#data 0x012c
#data 0x0C010084
loc_8c114e28:
#data 0xD8F0
loc_8c114e2a:
#data 0x0080

#align4
loc_8C114E2C:
#data bank04.loc_8c044F12
#data 0x8C26A904

#align4
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

#align4
loc_8C114E48:
#data bank12.loc_8c1292D4

loc_8C114E4C:
#data 0xC3110000

#align4
loc_8C114E50:
#data 0xC2A80000

#align4
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

;==============================================
loc_8c114e88:
#data 0x0000012c
loc_8c114e8c:
#data 0x3CA3D70a


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

#align4
loc_8C114ED4:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F22FFFb
#data 0x6E437FF8
#data 0x933385Ee
#data 0x81EE7001
#data 0x303385Ee
#data 0xE0008B01
#data 0x81Ee

loc_8C114EF6:
#data 0xD318
#data 0x6432902b
#data 0x6242D119
#data 0xE05005Ee
#data 0x042E410b
#data 0xC71ADD19
#data 0xDB16DC17
#data 0xFF08A010

#align4
loc_8C114F14:
#data 0x65F364F3
#data 0x74044D0b
#data 0x64F385Ee
#data 0x65F3F2F8
#data 0x435A6303
#data 0xF32DF0Fc
#data 0xFF2AF23e
#data 0x74044B0b

#align4
loc_8C114F34:
#data 0x00094C0b
#data 0x89EB2008
#data 0x4F267F08
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================

loc_8C114F4C:
#data 0x012c

loc_8C114F4E:
#data 0x0800
#data 0x008403E8

#align4
loc_8C114F54:
#data bank04.loc_8c044F12

loc_8C114F58:
#data 0x8C26A904

#align4
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
#data 0x3A83126f


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

#align4
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
#data 0xE020
#data 0xD61E
#data 0x4F22
#data 0x054C
#data 0xD01E
#data 0x655C
#data 0x6153
#data 0x4108
#data 0xF316
#data 0x6353
#data 0x854E
#data 0x4300
#data 0x6253
#data 0x332C
#data 0x6203
#data 0x425A
#data 0xC719
#data 0x4308
#data 0xF22D
#data 0x336C
#data 0xF138
#data 0x9320
#data 0xF322
#data 0xF208
#data 0xE034
#data 0xF323
#data 0xF130
#data 0xF417
#data 0x854E
#data 0x7001
#data 0x814E
#data 0x600F
#data 0x3033
#data 0x8B0E
#data 0xE000
#data 0xD30E
#data 0x814E
#data 0xE020
#data 0x024C
#data 0x622C
#data 0x6123
#data 0x4200
#data 0x321C
#data 0x6143
#data 0x4208
#data 0x7134
#data 0x326C
#data 0x430B
#data 0xE00C

loc_8c115052:
#data 0x4F26
	rts
	nop

;==============================================

loc_8C115058:
#data 0x012C

loc_8C11505A:
#data 0x0094

loc_8C11505C:
#data 0x0801
#data 0x1770

#align4
loc_8c115060:
#data bank04.loc_8c044f12

loc_8c115064:
#data loc_8c114ff0

loc_8C115068:
#data 0x8C26A904

#align4
loc_8c11506c:
#data bank13.loc_8c13ec14

loc_8c115070:
#data bank12.loc_8c1294c8

loc_8c115074:
#data 0xEC2C
#data 0x8C13
#data 0x8000
#data 0x45BB

loc_8c11507c:
#data 0x4F22
#data 0x7FFC
#data 0xD327
#data 0xE505
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D21
#data 0x6403
#data 0x9041
#data 0xE301
#data 0xD124
#data 0xD222
#data 0x0434
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x903A
#data 0x7134
#data 0x6232
#data 0x5325
#data 0x9237
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD31E
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xD21D
#data 0x6143
#data 0xD31B
#data 0x7150
#data 0x430B
#data 0xE00C
#data 0x902A
#data 0xF39D
#data 0xF437
#data 0xE07C
#data 0xF437
#data 0xE078
#data 0xF437

loc_8c1150d4:
#data 0x7F04
#data 0x4F26
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

;==============================================
#data 0x0084012c
#data 0x00800C11

#align4
loc_8C115120:
#data bank04.loc_8c044F12

loc_8C115124:
#data loc_8c1150Dc
#data 0x8C26A904

#align4
loc_8C11512C:
#data bank12.loc_8c1294C8

loc_8C115130:
#data bank13.loc_8c13ec34

loc_8C115134:
#data 0x3D4CCCCd

#align4
loc_8C115138:
#data bank04.loc_8c0450C0

loc_8C11513C:
#data 0xD3174F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D212008
#data 0x90226403
#data 0xD213E301
#data 0x70A00434
#data 0x1424931e
#data 0x0436D211
#data 0x6022D311
#data 0x60026132
#data 0xD3114108
#data 0x9014011e
#data 0x0416D20e
#data 0x71346143
#data 0xE00C430b
#data 0xE050D50d
#data 0xF437F358
#data 0xF358E054
#data 0xE058F437
#data 0xF437F358

#align4
loc_8C115190:
#data 0x000B4F26
#data 0x012C0009
#data 0x00840811

#align4
loc_8C11519C:
#data bank04.loc_8c044F12

loc_8C1151A0:
#data loc_8c1151B8
#data 0x8C26A904

#align4
loc_8C1151A8:
#data bank16.loc_8c16884c

loc_8C1151AC:
#data bank16.loc_8c16889c

loc_8C1151B0:
#data bank12.loc_8c1294C8

loc_8C1151B4:
#data bank16.loc_8c168874

loc_8C1151B8:
#data 0x6E432FE6
#data 0xE3052FD6
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0x85EF4F22
#data 0x81EF7001
#data 0x3033600f
#data 0xE0008B7c
#data 0x81EFDD42
#data 0x85EEE20a
#data 0x81EE7001
#data 0x3022600f
#data 0x4D0B8B16
#data 0xD33E0009
#data 0x430B6103
#data 0x6303E006
#data 0xD23C4000
#data 0xD33C303c
#data 0x61E34008
#data 0x320C7134
#data 0xE00C430b
#data 0xE000D339
#data 0x81EE64E3
#data 0x7434430b

#align4
loc_8C115218:
#data 0x880585Ee
#data 0xC7368B3d
#data 0xFC0863E3
#data 0xFD08C735
#data 0xFE08C735
#data 0xFF08C735
#data 0x330CE034
#data 0x2F364D0b
#data 0xD3336103
#data 0x430B9050
#data 0x405A0009
#data 0xD431D232
#data 0xF3D2F32d
#data 0xF3F0F3E3
#data 0x035AF33d
#data 0x2439420b
#data 0x63E362F6
#data 0xE03CF30c
#data 0x330CF228
#data 0xF23EF0Cc
#data 0x4D0BF22a
#data 0x61032F36
#data 0x9035D325
#data 0x0009430b
#data 0xD226405a
#data 0xF32DD423
#data 0xF3E3F3D2
#data 0xF33DF3F0
#data 0x420B035a
#data 0x62F62439
#data 0xF228F30c
#data 0xF23EF0Cc
#data 0xF22a

loc_8C11529A:
#data 0x85Ee
#data 0xD31FD11e
#data 0x021E4008
#data 0x42086032
#data 0x6002D41d
#data 0x9018022e
#data 0x85EE0E26
#data 0xF3464008
#data 0xFE37E050
#data 0x400885Ee
#data 0xE054F346
#data 0x85EEFE37
#data 0xF3464008
#data 0xFE37E058

#align4
loc_8C1152D0:
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x6DF6FFF9
#data 0x6EF6000b

;==============================================
#data 0x00840168

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
#data 0x42480000
#data 0x47800000
#data 0x43B40000
#data 0x3F000000

#align4
loc_8C115308:
#data bank12.loc_8c1292D4
#data 0x0000FFFf

#align4
loc_8C115310:
#data loc_8c11E860

loc_8C115314:
#data loc_8c11E2E0

loc_8C115318:
#data bank16.loc_8c16884c
#data 0x8C26A904

#align4
loc_8C115320:
#data bank16.loc_8c168874


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

#align4
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
#data 0x2FE6
#data 0x2FD6
#data 0xFFFB
#data 0xFFCB
#data 0x4F22
#data 0x7FFC
#data 0xC737
#data 0x6E43
#data 0xFF08
#data 0xE020
#data 0x03EC
#data 0xD033
#data 0x633C
#data 0xDD35
#data 0x6233
#data 0x2F32
#data 0x4300
#data 0x332C
#data 0x4308
#data 0xFC36
#data 0x85EE
#data 0x6303
#data 0x60F2
#data 0x435A
#data 0x4008
#data 0x03DE
#data 0xC72F
#data 0xF32D
#data 0x435A
#data 0xF22D
#data 0xF3F2
#data 0xF323
#data 0xF208
#data 0xC72D
#data 0xF108
#data 0xF322
#data 0xF3F3
#data 0xF310
#data 0xF33D
#data 0xD22C
#data 0xD32A
#data 0x045A
#data 0x420B
#data 0x2439
#data 0xE320
#data 0xF30C
#data 0x33EC
#data 0xC729
#data 0xF008
#data 0xE034
#data 0xFC3E
#data 0xFEC7
#data 0x6530
#data 0xD027
#data 0x655C
#data 0x6353
#data 0x4300
#data 0x6253
#data 0x332C
#data 0xE21C
#data 0x6453
#data 0x32EC
#data 0x6221
#data 0x4408
#data 0xF346
#data 0x4308
#data 0x425A
#data 0xF22D
#data 0xF322
#data 0x6043
	nop
#data 0x02DE
#data 0x425A
#data 0xD21E
#data 0xF22D
#data 0x323C
#data 0xF128
#data 0xE338
#data 0x33EC
#data 0xF323
#data 0xF130
#data 0xF31A
#data 0xE320
#data 0x33EC
#data 0x85EE
#data 0x7001
#data 0x81EE
#data 0x6330
#data 0x85EE
#data 0x633C
#data 0x4308
#data 0x3D3C
#data 0x62D2
#data 0x3023
#data 0x8B01
#data 0xE000
#data 0x81EE

loc_8c11545e:
#data 0x7F04
#data 0x4F26
#data 0xFCF9
#data 0xFFF9
#data 0x6DF6
	rts
#data 0x6EF6

;==============================================

loc_8C11546C:
#data 0x012C

loc_8C11546E:
#data 0x0084

loc_8C115470:
#data 0x0801
#data 0x0000

#align4
loc_8c115474:
#data bank04.loc_8c044f12

loc_8c115478:
#data loc_8c11539c

loc_8C11547C:
#data 0x8C26A904

#align4
loc_8c115480:
#data bank13.loc_8c13ec48

loc_8c115484:
#data bank12.loc_8c1294c8
#data 0x0000
#data 0x43B4

loc_8c11548c:
#data 0xEC40
#data 0x8C13
#data 0x0000
#data 0x4780
#data 0x0000
#data 0x3F00
#data 0xFFFF
#data 0x0000

loc_8c11549c:
#data 0xE860
#data 0x8C11
#data 0x0000
#data 0x42C8

loc_8c1154a4:
#data 0xEC60
#data 0x8C13

loc_8c1154a8:
#data 0xEC4C
#data 0x8C13

loc_8C1154AC:
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
mov 0xFF,r6 ; r6 set to 0xFFFFFFFf
mov.l r11,@-r15
mov 0x01,r12 ; r12 set to 0x01
mov.l r10,@-r15
mov 0x07,r10 ; r10 set to 0x07
mov.l @(loc_8C1155B0,pc),r5 ; r5 set to bank16.loc_8c1698Fc
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

loc_8C1156D6:
#data 0xFF05

#align4
loc_8C1156D8:
#data 0xFFFF0000

#align4
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

#align4
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
mov.l @(loc_8C1157D4,pc),r4 ; r4 set to bank16.loc_8c169EFC, r4 set to bank16.loc_8c169EFc
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

loc_8C1157B6:
#data 0xFF05

#align4
loc_8C1157B8:
#data bank13.loc_8c13ec98

loc_8C1157BC:
#data bank17.loc_8c1795A8

loc_8C1157C0:
#data 0x8C2A3CC4

#align4
loc_8C1157C4:
#data bank17.loc_8c17929c

loc_8C1157C8:
#data bank13.loc_8c13ecA8

loc_8C1157CC:
#data bank17.loc_8c1791Ae

loc_8C1157D0:
#data 0x8C28977c

#align4
loc_8C1157D4:
#data bank16.loc_8c169EFc


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

loc_8C1158CE:
#data 0xFF05

#align4
loc_8C1158D0:
#data 0x8C28977c

#align4
loc_8C1158D4:
#data 0x8C289788

#align4
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

loc_8C1159CA:
#data 0xFF05
loc_8c1159cc:
#data 0x000000Ff

#align4
loc_8C1159D0:
#data bank17.loc_8c1791Ae

loc_8C1159D4:
#data 0x8C2A3CC4

#align4
loc_8C1159D8:
#data bank17.loc_8c17929c

loc_8C1159DC:
#data bank13.loc_8c13ecA8

loc_8C1159E0:
#data bank17.loc_8c1795A8
loc_8c1159e4:
#data 0x8C28978c

#align4
loc_8C1159E8:
#data loc_8c11553e

loc_8C1159EC:
#data bank17.loc_8c178FF8

loc_8C1159F0:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x430BD341
#data 0xD241E404
#data 0x0009420b
#data 0x9671D441
#data 0x4E0BDE3f
#data 0x9D6EE500
#data 0xD43FE500
#data 0x4E0B66D3
#data 0x64F22F42
#data 0x66D3E500
#data 0x34DC4E0b
#data 0x9663D43b
#data 0xE5004E0b
#data 0x9660D43a
#data 0xE5004E0b
#data 0xBD39D439
#data 0xD4360009
#data 0xE300E2Ff
#data 0x142BD537
#data 0x143E6233
#data 0x6423143f
#data 0x60432541
#data 0xE7760009
#data 0x81516603
#data 0x81538152
#data 0x8154

loc_8C115A5E:
#data 0x6353
#data 0x336C730a
#data 0x23419246
#data 0x325C9345
#data 0x335C326c
#data 0x336C2241
#data 0x23419240
#data 0x325C933f
#data 0x335C326c
#data 0x336C2241
#data 0x36727602
#data 0x23418FE9
#data 0xE67A9131
#data 0xEE02D721
#data 0x317CDD23
#data 0x6573

loc_8C115A9A:
#data 0xE034
#data 0x15D215E1
#data 0x15451563
#data 0x15471546
#data 0x15491548
#data 0x154B154a
#data 0x0545154c
#data 0x0544E036
#data 0x0544E037
#data 0x0544E038
#data 0x0544E039
#data 0x0544E03a
#data 0x0544E03b
#data 0x3512753c
#data 0x95138BE3
#data 0xD714E47a
#data 0x7F04E600
#data 0xD2134F26
#data 0x422B6DF6
#data 0xD3126EF6
#data 0x0009432b
#data 0x02000A00
#data 0x01E00090
#data 0x00F60080
#data 0x01E2016c
#data 0x000000Ff

#align4
loc_8C115B00:
#data bank17.loc_8c1789D8

loc_8C115B04:
#data bank17.loc_8c178908

loc_8C115B08:
#data bank12.loc_8c129728
#data 0x8C28DCC4
#data 0x8C2940C4
#data 0x8C289750
#data 0x8C2A3AE4

#align4
loc_8C115B1C:
#data bank16.loc_8c169EFc
#data 0x8C2A3CD4
#data 0xFFFF0000

#align4
loc_8C115B28:
#data loc_8c1159C2

loc_8C115B2C:
#data bank17.loc_8c178D70

loc_8C115B30:
#data bank17.loc_8c178E56


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

#align4
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

#align4
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

#align4
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

;==============================================
#data 0x0000

loc_8c115c90:
#data 0x1698
#data 0x8C01

loc_8c115c94:
#data 0x9750
#data 0x8C28

loc_8c115c98:
#data 0xA962
#data 0x8C26

loc_8c115c9c:
#data 0x46C4
#data 0x8C29

loc_8c115ca0:
#data 0x3AE4
#data 0x8C2A

loc_8c115ca4:
#data 0x0000
#data 0xFFFF

loc_8c115ca8:
#data bank17.loc_8c179092

loc_8c115cac:
#data bank17.loc_8c179980

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

#align4
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
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0xDA1C7FFc
#data 0xDD1CE500
#data 0x6453EE3c
#data 0xEB086753
#data 0xEC01

loc_8C115D4A:
#data 0x04E7
#data 0x35AC051a
#data 0x50512F52
#data 0x8D048812
#data 0x60636603
#data 0x88010009
#data 0x8B05

loc_8C115D62:
#data 0x5352
#data 0x890233D0
#data 0x414C61C3
#data 0x271b

loc_8C115D6E:
#data 0x7401
#data 0x8BEA34B3
#data 0x00096073
#data 0x6AF67F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6

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

loc_8C115DAA:
#data 0x01E0

#align4
loc_8C115DAC:
#data 0x8C2A3AE4

#align4
loc_8C115DB0:
#data 0xFFFF0000

#align4
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
#data 0xD520
#data 0x6453933c
#data 0x3452353c
#data 0x5041890b
#data 0x8B058812
#data 0xD21C5342
#data 0x8B013320
#data 0xE0FF000b

;==============================================
#data 0x3452743c
#data 0xE0008BF3
#data 0x0009000b

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

;==============================================

#align4
loc_8c115e74:
add 0x3C,r4
cmp/hs r5,r4
bf loc_8c115e62

loc_8C115E7A:
mov 0x00,r0 ; r0 set to 0x00
rts
nop

;==============================================

loc_8C115E80:
#data 0x01E0
#data 0x0000

#align4
loc_8C115E84:
#data 0x8C2A3AE4

#align4
loc_8C115E88:
#data 0xFFFF0000


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

#align4
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

;==============================================

loc_8C115F70:
#data 0x01E0
#data 0x0000

#align4
loc_8C115F74:
#data 0x8C2A3AE4

#align4
loc_8C115F78:
#data 0xFFFF0000


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

#align4
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
#data 0xD515
#data 0x64539327
#data 0x3452353c
#data 0x5041890b
#data 0x8B058812
#data 0xD2115342
#data 0x8B013320
#data 0xE0FF000b

;==============================================
#data 0x3452743c
#data 0xE0008BF3
#data 0x0009000b

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

#align4
loc_8C116054:
#data 0xFFFF0000


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

#align4
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

;==============================================

loc_8C116140:
#data 0x01E0
#data 0x0000

#align4
loc_8C116144:
#data 0x8C2A3AE4

#align4
loc_8C116148:
#data 0xFFFF0000


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

;==============================================

loc_8C116210:
mov 0x00,r0 ; r0 set to 0x00
rts
nop

;==============================================
#data 0x2FE6
#data 0x7FF84F22
#data 0x6EF3D31a
#data 0x64E3430b
#data 0xE506D616
#data 0x6363E000
#data 0x02EC7378
#data 0x3320033c
#data 0xE0018904
#data 0x4F267F08
#data 0x6EF6000b

;==============================================
#data 0x30537001
#data 0xE0008BF1
#data 0x4F267F08
#data 0x6EF6000b

;==============================================

#align4
loc_8C116250:
#data 0xE07ED40b
#data 0x2338034c
#data 0xE300890e
#data 0xE0100434
#data 0xE563D40a
#data 0x7301034c
#data 0x024C0434
#data 0x3257622c
#data 0x04548B00

#align4
loc_8C116274:
#data 0xE001000b

;==============================================

#align4
loc_8C116278:
#data 0x000BE000
#data 0x00000009

#align4
loc_8C116280:
#data 0x8C289750

#align4
loc_8C116284:
#data 0x8C2A3AE4

#align4
loc_8C116288:
#data bank17.loc_8c17A38e
#data 0x8C212C3c

#align4
loc_8C116290:
#data 0x4F222FE6
#data 0xBF89DE2d
#data 0x200854Ed
#data 0xE400890a

#align4
loc_8C1162A0:
#data 0x727062E3
#data 0x6320324c
#data 0x32EC924f
#data 0x6120324c
#data 0x89033310

#align4
loc_8C1162B4:
#data 0xE0014F26
#data 0x6EF6000b

;==============================================

#align4
loc_8C1162BC:
#data 0x7401E506
#data 0x8BED3453
#data 0x4F26E000
#data 0x6EF6000b

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

loc_8C11634A:
#data 0x0080

#align4
loc_8C11634C:
#data 0x8C289750

#align4
loc_8C116350:
#data loc_8c117754

loc_8C116354:
#data 0x8C213842

#align4
loc_8C116358:
#data 0x8C2143Ae

#align4
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
#data 0x0000

#align4
loc_8C11650C:
#data 0x8C28CBD0

#align4
loc_8c116510:
#data bank17.loc_8c1780b2

loc_8c116514:
#data bank12.loc_8c129620

loc_8C116518:
#data 0x8C212C3C

#align4
loc_8C11651C:
#data 0x8C26823C

#align4
loc_8C116520:
#data 0x8C212BFC


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
#data 0x0000

#align4
loc_8C1166C4:
#data 0x8C2A3CD4

#align4
loc_8C1166C8:
#data 0x8C212CEC

#align4
loc_8C1166CC:
#data 0x8C2897E0

#align4
loc_8C1166D0:
#data 0x8C2899D8


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
#data 0x0000

#align4
loc_8c116820:
#data loc_8c1187ba

loc_8c116824:
#data loc_8c1187a2

loc_8c116828:
#data 0xDE50
#data 0x64D3
#data 0xD54E
#data 0xEB12

loc_8c116830:
#data 0x9391
#data 0x33EC
#data 0x334C
#data 0x6043
	nop
#data 0x025C
#data 0x7401
#data 0x34B3
#data 0x2320
#data 0x8BF5
#data 0xD24A
#data 0x6CF3
#data 0x7C04
#data 0x420B
#data 0x64C3
#data 0x64D3
#data 0xE606

loc_8c116852:
#data 0x6543
#data 0x9380
#data 0x35CC
#data 0x33EC
#data 0x6250
#data 0x334C
#data 0x2320
#data 0x63A3
#data 0x7378
#data 0x6250
#data 0x334C
#data 0x7401
#data 0x2320
#data 0x3463
#data 0x8BF0
#data 0xD740
#data 0x64D3
#data 0xE508

loc_8c116876:
#data 0x6643
#data 0x926F
#data 0x367C
#data 0x6360
#data 0x32EC
#data 0x324C
#data 0x2230
#data 0x926A
#data 0x6360
#data 0x32AC
#data 0x324C
#data 0x2230
#data 0x62A3
#data 0x7270
#data 0x6360
#data 0x324C
#data 0x7401
#data 0x2230
#data 0x3453
#data 0x8BEB
#data 0x965D
#data 0x64D3
#data 0xD736
#data 0xDC34

loc_8c1168a6:
#data 0x63E3
#data 0x334C
#data 0x6043
	nop
#data 0x027C
#data 0x2320
#data 0x9353
#data 0x02CC
#data 0x33EC
#data 0x334C
#data 0x7401
#data 0x2320
#data 0x3463
#data 0x8BF1
#data 0xD72F
#data 0x64D3
#data 0xE60E

loc_8c1168c8:
#data 0x9349
#data 0x33EC
#data 0x334C
#data 0x6043
	nop
#data 0x027C
#data 0x7401
#data 0x3463
#data 0x2320
#data 0x8BF5
#data 0xD629
#data 0x67D3
#data 0xE832

loc_8c1168e2:
#data 0xEC1A
#data 0x64D3
#data 0x07C7
#data 0x0C1A

loc_8c1168ea:
#data 0x63C3
#data 0x336C
#data 0x6233
#data 0x9036
#data 0x7208
#data 0x324C
#data 0x6320
#data 0x30EC
#data 0x30CC
#data 0x0434
#data 0x7401
#data 0x34B3
#data 0x8BF2
#data 0x64D3

loc_8c116906:
#data 0x902B
#data 0x30EC
#data 0x30CC
#data 0x6303
#data 0x7312
#data 0x334C
#data 0x60C3
	nop
#data 0x306C
#data 0x024C
#data 0x7401
#data 0x3453
#data 0x2320
#data 0x8BF1
#data 0x7701
#data 0x3783
#data 0x8BDC
#data 0xD517
#data 0x64D3

loc_8c11692c:
#data 0x9319
#data 0x33EC
#data 0x334C
#data 0x6043
	nop
#data 0x025C
#data 0x7401
#data 0x3493
#data 0x2320
#data 0x8BF5
#data 0xD612
#data 0x64D3
#data 0xE50A

loc_8c116946:
#data 0x930D
#data 0x33EC
#data 0x334C
#data 0x6043
	nop
#data 0x026C
#data 0xA01D
	nop
#data 0x0720
#data 0x073A
#data 0x0732
#data 0x0080
#data 0x0740
#data 0x020C
#data 0x010A
#data 0x0100
#data 0x0000
#data 0x384A
#data 0x8C21
#data 0xD344
#data 0x8C28

loc_8c116970:
	#data bank17.loc_8c17A38E

#data 0x3842
#data 0x8C21
#data 0x38EA
#data 0x8C21
#data 0x386A
#data 0x8C21
#data 0x385C
#data 0x8C21
#data 0x43C6
#data 0x8C21
#data 0x3A74
#data 0x8C21
#data 0x3A6A
#data 0x8C21

loc_8c116990:
#data 0x7401
#data 0x2320
#data 0x3453
#data 0x8BD6
#data 0xD636
#data 0x64D3
#data 0xD734
#data 0xE540

loc_8c1169a0:
#data 0x9362
#data 0x33EC
#data 0x334C
#data 0x6043
	nop
#data 0x026C
#data 0x2320
#data 0x935C
#data 0x027C
#data 0x33EC
#data 0x334C
#data 0x7401
#data 0x2320
#data 0x3453
#data 0x8BF0
#data 0xD32E
#data 0x9054
#data 0x6232
#data 0x0E26
#data 0x7004
#data 0xD22C
#data 0x6122
#data 0x0E16
#data 0x7004
#data 0xD12B
#data 0x6312
#data 0x0E36
#data 0xE07E
#data 0x02AC
#data 0x9048
#data 0x0E24
#data 0x70FE
#data 0xD228
#data 0x6320
#data 0x0E34
#data 0x7001
#data 0xD327
#data 0x6130
#data 0x0E14

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
#data 0x2FE6
#data 0xDE217FFc
#data 0x67E3E13f
#data 0xA00E2F72
#data 0x6673

loc_8C116A12:
#data 0x6260
#data 0x622C635e
#data 0x32302219
#data 0x63708B05
#data 0x2730234b
#data 0x000B7F04
#data 0x6EF6

;==============================================

loc_8C116A2A:
#data 0x7601
#data 0x7701

loc_8C116A2E:
#data 0x62E3
#data 0x36227238
#data 0x7F048BEd
#data 0x6EF6000b

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
#data 0x018001C0
#data 0x07500200
#data 0x8C213A2a
#data 0x8C21396a
#data 0x8C213AF8
#data 0x8C213AFc
#data 0x8C213B00
#data 0x8C214294
#data 0x8C214292

#align4
loc_8C116A8C:
#data 0x8C2940C4

#align4
loc_8C116A90:
#data bank16.loc_8c16AC98

loc_8C116A94:
#data 0x24306354
#data 0x7401

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

loc_8C116B8E:
#data 0x0080

loc_8C116B90:
#data 0x823C
#data 0x8C26

#align4
loc_8C116B94:
#data 0x8C28977A


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
loc_8c116d00:
#data 0x8C212C3c

#align4
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
mov.l @(loc_8C116E40,pc),r0 ; r0 set to bank16.loc_8c16AC84, r0 set to bank16.loc_8c16AC84
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

#align4
loc_8C116E0C:
#data bank16.loc_8c16A148

loc_8C116E10:
#data bank16.loc_8c16A15a

loc_8C116E14:
#data bank16.loc_8c16A17c

loc_8C116E18:
#data 0x8C28D2F8

#align4
loc_8C116E1C:
#data bank16.loc_8c16A18c

loc_8C116E20:
#data bank16.loc_8c16A19e

loc_8C116E24:
#data bank16.loc_8c16A1C0

loc_8C116E28:
#data 0x8C28D344

#align4
loc_8C116E2C:
#data bank16.loc_8c16A0C0

loc_8C116E30:
#data bank16.loc_8c16A0D2

loc_8C116E34:
#data bank16.loc_8c16A0F4
loc_8c116e38:
#data 0x8C28CBD0

#align4
loc_8C116E3C:
#data bank16.loc_8c16A270

loc_8C116E40:
#data bank16.loc_8c16AC84

loc_8C116E44:
#data 0x8C28DCC4

#align4
loc_8C116E48:
#data bank17.loc_8c1799C4


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

;==============================================

loc_8C116F08:
#data 0xFF00
#data 0x0000

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

#align4
loc_8C116F24:
#data bank13.loc_8c13ec88

loc_8C116F28:
#data 0x800000Ff

#align4
loc_8C116F2C:
#data 0x8C28DCC4

#align4
loc_8C116F30:
#data bank17.loc_8c179784


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
mov.l @(loc_8C117200,pc),r4 ; r4 set to bank16.loc_8c169FBc
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

#align4
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

#align4
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
mov.l @(loc_8C117220,pc),r4 ; r4 set to bank16.loc_8c169EFC, r4 set to bank16.loc_8c169EFc
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

#align4
loc_8C1171F8:
#data 0x8C2A3AE4

#align4
loc_8C1171FC:
#data 0x8C289750

#align4
loc_8C117200:
#data bank16.loc_8c169FBc

loc_8C117204:
#data loc_8c1154Ac

loc_8C117208:
#data loc_8c1154F2

loc_8C11720C:
#data bank17.loc_8c179092

loc_8C117210:
#data 0x8C2946C4

#align4
loc_8C117214:
#data bank17.loc_8c179980

loc_8C117218:
#data bank13.loc_8c13ec68

loc_8C11721C:
#data bank17.loc_8c1795D6

loc_8C117220:
#data bank16.loc_8c169EFc


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

#align4
loc_8C117278:
#data 0x8C289750


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

#align4
loc_8C11743C:
#data 0x8C28CBD0

#align4
loc_8C117440:
#data 0x8C26823c

#align4
loc_8C117444:
#data 0x8C212BFc

#align4
loc_8C117448:
#data 0x8C2A3CD4

#align4
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

#align4
loc_8C1175F0:
#data 0x8C212CEC

#align4
loc_8C1175F4:
#data 0x8C2897E0


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
#data 0xD51B
#data 0x6473
#data 0xE608

loc_8c1176e8:
#data 0x9326
#data 0x62D3
#data 0x7270
#data 0x335C
#data 0x334C
#data 0x324C
#data 0x6130
#data 0x7401
#data 0x3463
#data 0x8FF5
#data 0x2210
#data 0x6473
#data 0xE606

loc_8c117702:
#data 0x931A
#data 0x62D3
#data 0x7278
#data 0x335C
#data 0x334C
#data 0x324C
#data 0x6130
#data 0x7401
#data 0x3463
#data 0x8FF5
#data 0x2210
#data 0x9010
#data 0x025C
#data 0xE07E
#data 0x0D24

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

;==============================================
loc_8c117732:
#data 0x01E0
loc_8c117734:
#data 0x0214
loc_8c117736:
#data 0x02B4
#data 0x073A0732
#data 0x00000750
loc_8c117740:
#data 0x8C212CBd
loc_8c117744:
#data 0x8C212CBe
loc_8c117748:
#data 0x8C212CBf
loc_8c11774c:
#data 0x8C212CC0
#data 0x8C28D344

#align4
loc_8C117754:
#data 0xE5002FE6
#data 0x66532FD6
#data 0xE7122FC6
#data 0xDE4CD44d
#data 0x2F962FA6

#align4
loc_8C117768:
#data 0x00096063
#data 0x334C9388
#data 0x7601336c
#data 0x36736330
#data 0x0E348FF6
#data 0x66539E81
#data 0xDC46DD47

#align4
loc_8C117784:
#data 0x00096063
#data 0x336C6343
#data 0x0D346330
#data 0x334C9377
#data 0x7601336c
#data 0x36E36330
#data 0x0C348FF2
#data 0x6653DD40
#data 0xEE76

loc_8C1177A6:
#data 0x6063
#data 0x936B0009
#data 0x336C334c
#data 0x63307601
#data 0x8FF636E3
#data 0xDD3B0D34
#data 0xEE0A6653

#align4
loc_8C1177C0:
#data 0x00096063
#data 0x334C935f
#data 0x7601336c
#data 0x36E36330
#data 0x0D348FF6
#data 0x6653DD36
#data 0xEE40DC34

#align4
loc_8C1177DC:
#data 0x00096063
#data 0x334C9352
#data 0x6330336c
#data 0x934E0C34
#data 0x336C334c
#data 0x63307601
#data 0x8FF136E3
#data 0xDD2E0D34
#data 0xEE0E6653

#align4
loc_8C117800:
#data 0x00096063
#data 0x334C9342
#data 0x7601336c
#data 0x36E36330
#data 0x0D348FF6
#data 0x6C53DD28
#data 0xE91AE108
#data 0xEA32

loc_8C11781E:
#data 0x0C97
#data 0x0E1A6653

#align4
loc_8C117824:
#data 0x000960E3
#data 0x630330Dc
#data 0x7308902f
#data 0x30EC304c
#data 0x336C026c
#data 0x36737601
#data 0x8BF12320
#data 0x6653

loc_8C117842:
#data 0x60E3
#data 0x93220009
#data 0x334C30Dc
#data 0x623333Ec
#data 0x326C7212
#data 0x06346320
#data 0x36137601
#data 0x7C018BF1
#data 0x8BDC3CA3
#data 0xD3159014
#data 0x7004024e
#data 0xD2142322
#data 0x7004014e
#data 0xD1132212
#data 0x2132034e
#data 0x0009A024
#data 0x00800720
#data 0x0100010a
#data 0x018001C0
#data 0x020C0740
#data 0x00000200
#data 0x8C21384a
#data 0x8C28D344
#data 0x8C2138Ea
#data 0x8C21386a
#data 0x8C213A74
#data 0x8C213A6a
#data 0x8C21396a
#data 0x8C213A2a
#data 0x8C21385c
#data 0x8C2143C6
#data 0x8C213AF8
#data 0x8C213AFc
#data 0x8C213B00

#align4
loc_8C1178C8:
#data 0xD331905d
#data 0x7001024c
#data 0x014C2320
#data 0x2210D22f
#data 0x6AF669F6
#data 0x6DF66CF6
#data 0x6EF6000b

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

#align4
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
#data 0x074e

loc_8C117988:
#data 0x6000

loc_8C11798A:
#data 0x0980
loc_8c11798c:
#data 0x0728

loc_8C11798E:
#data 0xFF41
#data 0x8C214294
#data 0x8C214292

#align4
loc_8C117998:
#data 0x8C28DCC4

#align4
loc_8C11799C:
#data bank17.loc_8c179C10

loc_8C1179A0:
#data bank12.loc_8c129728

loc_8C1179A4:
#data 0x8C2A3F50

#align4
loc_8C1179A8:
#data 0x8C28D2F8

#align4
loc_8C1179AC:
#data 0x8C28DF44


loc_8C1179B0:
mov.w @(loc_8C117A5A,pc),r6 ; r6 set to 0x980
mov 0x5C,r0 ; r0 set to 0x5c
mov.l @(loc_8C117A60,pc),r14 ; r14 set to 0x8C28D344
mov r4,r12
bra loc_8C1179C6
mov.l @(r0,r15),r13

#align4
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

;==============================================

loc_8C117A5A:
#data 0x0980
loc_8c117a5c:
#data 0x00000728

#align4
loc_8C117A60:
#data 0x8C28D344
loc_8c117a64:
#data 0x8C28CBD0

#align4
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

#align4
loc_8C117A84:
#data bank17.loc_8c17972c


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
mov.l @(loc_8C117B74,pc),r4 ; r4 set to bank16.loc_8c169FBc
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

#align4
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
#data 0x0000

#align4
loc_8C117B6C:
#data 0x8C289750

#align4
loc_8C117B70:
#data 0x8C2A3AE4

#align4
loc_8C117B74:
#data bank16.loc_8c169FBc

loc_8C117B78:
#data loc_8c1154Ac

loc_8C117B7C:
#data loc_8c1154F2

loc_8C117B80:
#data bank17.loc_8c179092
loc_8c117b84:
#data 0x8C2A3AE8

#align4
loc_8C117B88:
#data 0x8C2946C4

#align4
loc_8C117B8C:
#data bank17.loc_8c179980


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
mov.l @(loc_8C117C84,pc),r4 ; r4 set to bank16.loc_8c169EFC, r4 set to bank16.loc_8c169EFc
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
mov.l @(loc_8C117C84,pc),r4 ; r4 set to bank16.loc_8c169EFc
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
#data 0x0000

#align4
loc_8C117C80:
#data loc_8c116304

loc_8C117C84:
#data bank16.loc_8c169EFc

loc_8C117C88:
#data loc_8c1154Ac

loc_8C117C8C:
#data loc_8c1154F2

loc_8C117C90:
#data 0x8C2A3AEc

#align4
loc_8C117C94:
#data 0xD37E4F22
#data 0x430BD57c
#data 0x4F260009
#data 0x0009000b

;==============================================

#align4
loc_8C117CA4:
#data 0x7FE84F22
#data 0x2F42D37a
#data 0x430B64F3
#data 0x85F6740c
#data 0xD378E740
#data 0x84FE81F2
#data 0x80F6D578
#data 0xD67684Ff
#data 0xE01080F7
#data 0x80F800Fc
#data 0x00FCE011
#data 0xE01280F9
#data 0x80FA00Fc
#data 0x00FCE013
#data 0x2F3680Fb
#data 0x720862F3
#data 0xD26F2F26
#data 0x54F2420b
#data 0x4F267F20
#data 0x0009000b

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
mov.l @(loc_8C117EB0,pc),r4 ; r4 set to bank16.loc_8c169FBc
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

#align4
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

#align4
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

#align4
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
#data 0x53EF
#data 0x61D3
#data 0x41CC
#data 0x2138
#data 0x8B27
#data 0x60F2
#data 0x3900
#data 0x8B0B
#data 0x09B7
#data 0x041A
#data 0x34AC
#data 0xBF37
#data 0x6442
#data 0x8800
#data 0x8F1D
#data 0x6403
#data 0x52EF
#data 0x4DCC
#data 0x22DB
#data 0x1E2F

loc_8c117e44:
#data 0xE050
#data 0xE105
#data 0xA015
#data 0x0E14

loc_8C117E4C:
mov.l @(0x3C,r14),r2
shad r12, r13
tst r2,r13
bf loc_8C117E76
mov.l @(loc_8C117EB4,pc),r2 ; r2 set to 0x8C1154Ac
mov.l @(loc_8C117EC8,pc),r4 ; r4 set to bank16.loc_8c169EFc
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
#data 0x8C2944C4

#align4
loc_8C117E90:
#data bank17.loc_8c1796C6

loc_8C117E94:
#data bank17.loc_8c1780B2
#data 0x800000Ff
#data 0x0CE1E000

#align4
loc_8C117EA0:
#data bank13.loc_8c13ecA8

loc_8C117EA4:
#data bank17.loc_8c1797E2

loc_8C117EA8:
#data 0x8C2A3AE4

#align4
loc_8C117EAC:
#data 0x8C289750

#align4
loc_8C117EB0:
#data bank16.loc_8c169FBc

loc_8C117EB4:
#data loc_8c1154Ac

loc_8C117EB8:
#data loc_8c1154F2

loc_8C117EBC:
#data bank17.loc_8c179092
loc_8c117ec0:
#data 0x8C2946C4

#align4
loc_8C117EC4:
#data bank17.loc_8c179980

loc_8C117EC8:
#data bank16.loc_8c169EFc

loc_8C117ECC:
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F40009
#data 0x84F4E500
#data 0x600CD340
#data 0x6403D240
#data 0x44004418
#data 0x343C9679
#data 0x1F42420b
#data 0xD53DE301
#data 0xE7052F36
#data 0xD23C56F3
#data 0x54F1420b
#data 0x4F267F10
#data 0x0009000b

;==============================================

#align4
loc_8C117F08:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xDE367FFc
#data 0xDA34E050
#data 0x00ECED01
#data 0x68A3EB3c
#data 0x600C6C43
#data 0x8D0C8800
#data 0x880159Ec
#data 0x88028913
#data 0x88038934
#data 0x88048968
#data 0xA07D8B01
	nop

loc_8C117F46:
#data 0xA090
	nop

loc_8C117F4A:
#data 0xD32c
#data 0x1EDED42a
#data 0x1ECC430b
#data 0x420BD22a
#data 0xE05054Ec
#data 0x0ED4

loc_8C117F5E:
#data 0x52Eb
#data 0x323053Ec
#data 0x50EB8937
#data 0x891788Ff
#data 0x4DCC52Ef
#data 0x89012D28
#data 0x0009A079

#align4
loc_8C117F78:
#data 0xD32254Eb
#data 0x041A04B7
#data 0x430B34Ac
#data 0x64036442
#data 0x8B6E2448
#data 0xE21253Eb
#data 0xE3FF03B7
#data 0x3ABC0B1a
#data 0x1E3B1A21

#align4
loc_8C117F9C:
#data 0xE202E050
#data 0x0E24A063

#align4
loc_8C117FA4:
#data 0x61D353Ef
#data 0x213841Cc
#data 0x09B78B5d
#data 0xD515D316
#data 0x368C061a
#data 0x56632F62
#data 0x461864F2
#data 0x76204600
#data 0x6442430b
#data 0x24486403
#data 0x53EF8B4d
#data 0x23DB4DCc
#data 0x1E3f

loc_8C117FD6:
#data 0xE050
#data 0xA046E203
#data 0x02000E24
#data 0x8C2940C4

#align4
loc_8C117FE4:
#data bank12.loc_8c129728

loc_8C117FE8:
#data bank13.loc_8c13ecA8

loc_8C117FEC:
#data bank17.loc_8c179840
#data 0x8C2A3AE4
#data 0x8C289750

#align4
loc_8C117FF8:
#data bank16.loc_8c169FBc

loc_8C117FFC:
#data loc_8c1154Ac

loc_8C118000:
#data loc_8c1154F2

loc_8C118004:
#data bank17.loc_8c179092
#data 0x8C2946C4

#align4
loc_8C11800C:
#data bank17.loc_8c179980

loc_8C118010:
#data 0x61D353Ef
#data 0x213841Cc
#data 0x5AEB8B27
#data 0x8B0B3A90
#data 0x041A0AB7
#data 0xBF51348c
#data 0x88006442
#data 0x64038F1d
#data 0x4DCC52Ef
#data 0x1E2F22Db

#align4
loc_8C118038:
#data 0xE104E050
#data 0x0E14A015

#align4
loc_8C118040:
#data 0x4DCC52Ef
#data 0x8B102D28
#data 0xD471D272
#data 0x0009420b
#data 0x430BD371
#data 0xE05054Ec
#data 0x0E44E400
#data 0x50EC1E4e
#data 0x001A00B7
#data 0xA00130Ac
#data 0x5002

loc_8C11806A:
#data 0xE0Ff

#align4
loc_8C11806C:
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================

#align4
loc_8C118080:
#data 0x7FF84F22
#data 0x1F41D365
#data 0x430B2F50
#data 0xE20164F0
#data 0x2F26D363
#data 0x84F4E705
#data 0x6603D562
#data 0x4618666c
#data 0x4600D161
#data 0x410B363c
#data 0x7F0C54F2
#data 0x000B4F26
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

loc_8c118100:
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
#data 0x53EF
#data 0x61D3
#data 0x41CC
#data 0x2138
#data 0x8B47
#data 0x08B7
#data 0x53F1
#data 0xD533
#data 0x061A
#data 0x363C
#data 0xD332
#data 0x2F62
#data 0x5663
#data 0x64F2
#data 0x4618
#data 0x4600
#data 0x7620
#data 0x430B
#data 0x6442
#data 0x6403
#data 0x2448
#data 0x8B36
#data 0x53EF
#data 0x4DCC
#data 0x23DB
#data 0x1E3F


loc_8c118194:
mov 0x50,r0
mov 0x03,r2
bra loc_8c1181fa
mov.b r2,@(r0,r14)

loc_8c11819c:
#data 0x53EF
#data 0x61D3
#data 0x41CC
#data 0x2138
#data 0x8B29
#data 0x5AEB
#data 0x3A80
#data 0x8B0D
#data 0x0AB7
#data 0x53F1
#data 0x6593
#data 0x041A
#data 0x343C
#data 0xBF63
#data 0x6442
#data 0x8800
#data 0x8F1D
#data 0x6403
#data 0x52EF
#data 0x4DCC
#data 0x22DB
#data 0x1E2F

loc_8c1181c8:
#data 0xE050
#data 0xE104
#data 0xA015
#data 0x0E14

loc_8C1181D0:
mov.l @(0x3C,r14),r2
shad r12, r13
tst r2,r13
bf loc_8C1181Fa
mov.l @(loc_8C118214,pc),r2 ; r2 set to 0x8C1154Ac
mov.l @(loc_8C118210,pc),r4 ; r4 set to bank16.loc_8c169EFc
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

;==============================================

#align4
loc_8C118210:
#data bank16.loc_8c169EFc

loc_8C118214:
#data loc_8c1154Ac

loc_8C118218:
#data loc_8c1154F2

loc_8C11821C:
#data loc_8c116A3c

loc_8C118220:
#data 0x8C2940C4

#align4
loc_8C118224:
#data bank13.loc_8c13ecA8

loc_8C118228:
#data bank17.loc_8c179896

loc_8C11822C:
#data 0x8C2A3AE4

#align4
loc_8C118230:
#data 0x8C289750

#align4
loc_8C118234:
#data bank16.loc_8c169FBc

loc_8C118238:
#data bank17.loc_8c179092
#data 0x8C2946C4

#align4
loc_8C118240:
#data bank17.loc_8c179980

loc_8C118244:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FFC2F86
#data 0x6E4CD6Aa
#data 0xD3A8E200
#data 0x74046463
#data 0x4E181421
#data 0x64632422
#data 0x61234E00
#data 0x6713E840
#data 0x69833E3c
#data 0x6BE3740c
#data 0xED201421
#data 0x6CB32412
#data 0x2FB2E43f
#data 0x6AB3E501
#data 0x7940

loc_8C11828A:
#data 0x63E3
#data 0x6230337c
#data 0x2298622c
#data 0x61E38917
#data 0x6310317c
#data 0x2349633c
#data 0x8B0B33D3
#data 0x337C63E3
#data 0x63536230
#data 0x2249622c
#data 0x432C72E0
#data 0x223B5262
#data 0x1622A005

#align4
loc_8C1182BC:
#data 0x423C6253
#data 0x232B5361
#data 0x1631

loc_8C1182C6:
#data 0x62E3
#data 0x6320327c
#data 0x2388633c
#data 0x61C08916
#data 0x2149611c
#data 0x8B0931D3
#data 0x635362A0
#data 0x2249622c
#data 0x432C72E0
#data 0x223B5264
#data 0x1624A008

#align4
loc_8C1182F0:
#data 0x635361B0
#data 0x611C5263
#data 0x431C2149
#data 0x1623223b

#align4
loc_8C118300:
#data 0x7701E338
#data 0x7B013733
#data 0x8FBE7A01
#data 0xE0387C01
#data 0xE02A01Ec
#data 0x7F040614
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================

#align4
loc_8C118328:
#data 0x6E4C2FE6
#data 0xD3734F22
#data 0x4E004E18
#data 0x3E3CBF86
#data 0xE04CD472
#data 0x6342D570
#data 0x132C5251
#data 0x63425252
#data 0x5253132d
#data 0x132E6342
#data 0x63425254
#data 0x02EC132f
#data 0x6342E051
#data 0x0324D46a
#data 0x03ECE041
#data 0x0434E012
#data 0x02ECE042
#data 0x0424E013
#data 0x03ECE043
#data 0x0434E014
#data 0x000960E3
#data 0x60007044
#data 0x600CE264
#data 0xE0458141
#data 0x854103Ec
#data 0x232E633c
#data 0x303C031a
#data 0x60E38141
#data 0x70460009
#data 0x600C6000
#data 0xE0478142
#data 0x854203Ec
#data 0x232E633c
#data 0x303C031a
#data 0x60E38142
#data 0x70480009
#data 0x600C6000
#data 0xE0498143
#data 0x854303Ec
#data 0x232E633c
#data 0x303C031a
#data 0xE03B8143
#data 0xE01103Ec
#data 0x60E30434
#data 0x703C0009
#data 0x600C6000
#data 0xE03D8145
#data 0x854503Ec
#data 0x232E633c
#data 0x303C031a
#data 0x60E38145
#data 0x703E0009
#data 0x600065E3
#data 0x600C754a
#data 0xE03F8146
#data 0x854603Ec
#data 0x232E633c
#data 0x303C031a
#data 0xE0408146
#data 0xE01003Ec
#data 0xE0390434
#data 0xE03A01Ec
#data 0x00EC2410
#data 0x60508041
#data 0x8451630c
#data 0x202E600c
#data 0x303C001a
#data 0x4F268144
#data 0x6EF6000b

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

loc_8c1184fc:
#data 0x40C4
#data 0x8C29

loc_8c118500:
#data 0x9750
#data 0x8C28
#data 0x823C
#data 0x8C26
#data 0x2C3C
#data 0x8C21

loc_8c11850c:
#data 0x5BF0
#data 0x8C11

#align4
loc_8C118510:
#data 0x8C28D2F4

#align4
loc_8C118514:
#data 0x8C28D2F6

#align4
loc_8c118518:
#data loc_8c115e8c


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

loc_8c11853a:
#data 0xD23C
#data 0x420B
#data 0x64C3
#data 0x6403
#data 0x2448
#data 0x89BC
#data 0x6043
	nop
#data 0x88FF
#data 0x89B8
#data 0xE500
#data 0xBCDA
#data 0x64C3
#data 0x88FF
#data 0x8D5E
#data 0x6403
#data 0x2448
#data 0x8BB0
#data 0xB111
#data 0xE400
#data 0x62F2
#data 0x640C
#data 0xE050
#data 0x032C
#data 0x633C
#data 0x3430
#data 0x8BA7
#data 0xBEDA
#data 0xE400


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
#data 0x65C3
#data 0xBA71
#data 0xE404
#data 0x88FF
#data 0x8D35
#data 0x6403
#data 0x2448
#data 0x8B87
#data 0x60AC
#data 0x8802
#data 0x891E
#data 0xD21F
#data 0x420B
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
#data 0x65C3
#data 0xBA54
#data 0xE403
#data 0x88FF
#data 0x8D18
#data 0x6403
#data 0x2448
#data 0x8B0D
#data 0xB107
	nop
#data 0x6403
#data 0x2448
#data 0x8B01


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
#data 0x64E3
#data 0x60D37422
#data 0x80410009
#data 0x2400


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

;==============================================
loc_8c118628:
#data 0x8C26823c

#align4
loc_8C11862C:
#data loc_8c115BF0

loc_8C118630:
#data loc_8c115E2c

loc_8C118634:
#data loc_8c1162Cc

loc_8C118638:
#data loc_8c115E56


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
#data 0xD30D
#data 0xE052
#data 0x65D3
#data 0x0EC4
#data 0x430B
#data 0xE401
#data 0x88FF
#data 0x8D44
#data 0x6403
#data 0x2448
#data 0x8B3C
#data 0xD20B
#data 0x420B
	nop
#data 0x4CDC
#data 0x6403
#data 0x2C48
#data 0x891B


loc_8c118700:
mov r14,r2
add 0x22,r2
mov.b @r2,r3
add 0x01,r3
mov.b r3,@r2
bra loc_8c118776
nop

loc_8c11870e:
#data 0xFF01

loc_8c118710:
#data 0x9750
#data 0x8C28

loc_8c118714:
#data 0x6F34
#data 0x8C11

#align4
loc_8c118718:
#data loc_8c115bf0

loc_8c11871c:
#data loc_8c115c40

loc_8c118720:
#data 0x5E8C
#data 0x8C11

loc_8c118724:
#data 0xE052
#data 0xE500
#data 0x0EC4
#data 0xBCC2
#data 0x64D3
#data 0x88FF
#data 0x8D21
#data 0x6403
#data 0x2448
#data 0x8B19

loc_8c118738:
#data 0x60F0
#data 0x600C
#data 0x8801
#data 0x8B10
#data 0x62E3
#data 0xE303
#data 0x7222
#data 0x2230
#data 0xA015
	nop

loc_8c11874c:
#data 0xD327
#data 0xE052
#data 0x65D3
#data 0x0EC4
#data 0x430B
#data 0xE404
#data 0x88FF
#data 0x8D0C
#data 0x6403
#data 0x2448
#data 0x8B04

loc_8c118762:
#data 0xE052
#data 0xE200
#data 0x0E24
#data 0xA006
#data 0xE001

loc_8c11876c:
#data 0xE052
#data 0xE200
#data 0x0E24


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

#align4
loc_8C1187D0:
#data 0xE500D709
#data 0xE64BE400

#align4
loc_8C1187D8:
#data 0x63747401
#data 0x8FFB3462
#data 0x000B353c
#data 0x605c

;==============================================

loc_8C1187E6:
#data 0x0724

loc_8C1187E8:
#data 0x0392
#data 0x0000

#align4
loc_8C1187EC:
#data loc_8c116F34

loc_8C1187F0:
#data 0x8C2940C4

#align4
loc_8C1187F4:
#data 0x8C28CBD0
#data 0x8C28D2F8

#align4
loc_8C1187FC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FE04F22
#data 0x0009BFE0
#data 0x90756403
#data 0xD63DDA3c
#data 0xE04B0A44
#data 0x703E036c
#data 0x0A34644c
#data 0x026CE04b
#data 0x3240622c
#data 0x67F38B65
#data 0x77106EF3
#data 0xE2007E18
#data 0x1E216323
#data 0x6D332E22
#data 0x62E31721
#data 0x61232732
#data 0x1F226373
#data 0x72046233
#data 0x1F337104
#data 0x1F11E938
#data 0xA0382F22
#data 0xE401

loc_8C11885E:
#data 0x6563
#data 0x9C4E35Dc
#data 0x6550EB40
#data 0xE320E03f
#data 0x20592B59
#data 0x650C2C59
#data 0x89133533
#data 0x2CC86CCc
#data 0x6BBC8D06
#data 0x614352F2
#data 0x6022415c
#data 0x2202201b

#align4
loc_8C11888C:
#data 0x891D2BB8
#data 0x624353F3
#data 0x6132425c
#data 0x2312212b
#data 0x0009A016

#align4
loc_8C1188A0:
#data 0x2CC86CCc
#data 0x6BBC8D09
#data 0x52F16153
#data 0x604371E0
#data 0x401C0009
#data 0x210B6122
#data 0x2212

loc_8C1188BA:
#data 0x2BB8
#data 0x63F28906
#data 0x75E06243
#data 0x425C6132
#data 0x2312212b

loc_8C1188CC:
#data 0x7D01

loc_8C1188CE:
#data 0x3D93
#data 0x6DE38BC5
#data 0x526E63D2
#data 0x8B0E3320
#data 0x536F52E1
#data 0x8B0A3230
#data 0x73406363
#data 0x62326172
#data 0x8B043120
#data 0x5271E044
#data 0x3230036e
#data 0x890a

loc_8C1188FA:
#data 0x9003
#data 0x0009A027
#data 0x00800088
#data 0x0000FF10
#data 0x8C289750
#data 0x8C28D2F8

#align4
loc_8C118910:
#data 0xE048D431
#data 0x634262D2
#data 0xE02A056c
#data 0x212B513c
#data 0x6342131c
#data 0x513D52E1
#data 0x131D212b
#data 0x62726342
#data 0x212B513e
#data 0x6342131e
#data 0x513F5271
#data 0x131F212b
#data 0x03AC625c
#data 0x3323633c
#data 0x0A548900

loc_8C11894C:
#data 0xE000

loc_8C11894E:
#data 0x7F20
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

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

#align4
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

;==============================================

loc_8C1189D6:
#data 0x270f

#align4
loc_8C1189D8:
#data 0x8C26823c

#align4
loc_8C1189DC:
#data 0x8C2A3CD4


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

#align4
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

#align4
loc_8C118AA4:
#data 0x8C26823c
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xD41FD320
#data 0x430BDC1d
#data 0x64030009
#data 0x8B012448
#data 0xE000A02b
#data 0xE5009630
#data 0x367CD71b
#data 0x24506473
#data 0x34627401
#data 0x9A288BFb
#data 0xDD1AD418
#data 0x3A4CDB18
#data 0x62E66E43
#data 0x2FD62F26
#data 0x64C34B0b
#data 0x3EA27F08
#data 0x3C0C8FF7
#data 0x64C3B02a
#data 0x6403B0D6
#data 0x6C03D412
#data 0x7A206A43
#data 0x62E66E43
#data 0x2FD62F26
#data 0x64C34B0b
#data 0x3EA27F08
#data 0x3C0C8FF7
#data 0x4F26E001
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x015C6000
#data 0x8C2A3F90
#data 0x8C2A9F52

#align4
loc_8C118B38:
#data bank17.loc_8c17A38e
#data 0x8C2A3F50

#align4
loc_8C118B40:
#data bank16.loc_8c16B914

loc_8C118B44:
#data bank12.loc_8c129740

loc_8C118B48:
#data bank13.loc_8c13ecC8

loc_8C118B4C:
#data bank16.loc_8c16BB78
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x6EF37FF0
#data 0x2F42D286
#data 0xDD83E000
#data 0xDC837E08
#data 0x80E66303
#data 0x2F0680E7
#data 0x4C0B2F26
#data 0x84D164E3
#data 0x660365E3
#data 0x54F2B2F8
#data 0xE300D27e
#data 0x2F361F02
#data 0x4C0B2F26
#data 0x84D264E3
#data 0x660365E3
#data 0x54F4B2Ec
#data 0xE300D279
#data 0x2F361F04
#data 0x4C0B2F26
#data 0x84D364E3
#data 0x660365E3
#data 0x54F6B2E0
#data 0xE300D274
#data 0x2F361F06
#data 0x4C0B2F26
#data 0x84D464E3
#data 0x660365E3
#data 0x54F8B286
#data 0xE300D26f
#data 0x2F361F08
#data 0x4C0B2F26
#data 0x84D564E3
#data 0x660365E3
#data 0x54FAB27a
#data 0xE300D26a
#data 0x2F361F0a
#data 0x4C0B2F26
#data 0x84D664E3
#data 0x660365E3
#data 0x54FCB26e
#data 0xE300D265
#data 0x2F361F0c
#data 0x4C0B2F26
#data 0x66D364E3
#data 0x760C65E3
#data 0x54FEB2Db
#data 0xE300D260
#data 0x2F361F0e
#data 0x4C0B2F26
#data 0x66D364E3
#data 0x65E3E040
#data 0xB30B7610
#data 0xE30004Fe
#data 0x61F3D25a
#data 0x21027140
#data 0x2F262F36
#data 0x64E34C0b
#data 0x65E384D8
#data 0xE048660c
#data 0x04FEB294
#data 0xD254E300
#data 0x714861F3
#data 0x2F362102
#data 0x4C0B2F26
#data 0x84D764E3
#data 0x660365E3
#data 0xB237E050
#data 0x61F304Fe
#data 0x21027154
#data 0x84D9E33c
#data 0x203FE164
#data 0x001AE300
#data 0x84DA6203
#data 0x84DB320c
#data 0x021A0217
#data 0xE050320c
#data 0xD2450F26
#data 0x2F262F36
#data 0x64E34C0b
#data 0x65E3E058
#data 0xE05C06Fe
#data 0x04FEB268
#data 0x4F267F68
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xD3397FEc
#data 0xDA2CE012
#data 0x1F31ED01
#data 0x023C6EF3
#data 0x51F1E33c
#data 0x622CE013
#data 0x223ED535
#data 0xE014011c
#data 0xEB00D832
#data 0x021A611c
#data 0x321CEC3b
#data 0x023751F1
#data 0x611C011c
#data 0x321C021a
#data 0x2F226623
#data 0x7E0CB23a
#data 0x6403D52c
#data 0xB2356681
#data 0x6403666d
#data 0x8581D52a
#data 0x660DB230
#data 0xD5296403
#data 0xB22B8582
#data 0x6403660d
#data 0x8583D527
#data 0x660DB226
#data 0xD5266403
#data 0xB2218584
#data 0x62E3660d
#data 0x1F227207
#data 0x22B06903
#data 0x2FB2A015
#data 0xD32162F2
#data 0x2F362F26
#data 0x64E34A0b
#data 0x66F27F08
#data 0x730A6383
#data 0x460065E3
#data 0x6661363c
#data 0xB209666d
#data 0x63F26493
#data 0x73016903
#data 0x62F22F32
#data 0x8BE732C3
#data 0x2FB2A041
#data 0x8C212CEc

#align4
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
#data 0x8C212C3c
#data 0x8C2A3CD4

#align4
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
#data 0xD34362F2
#data 0x2F362F26
#data 0x64E34A0b
#data 0x937B7F08
#data 0x66F265E3
#data 0x4600338c
#data 0x6661363c
#data 0xB1C3666d
#data 0x63F26493
#data 0x73016903
#data 0x62F22F32
#data 0x8BE732C3
#data 0x2FB2A015
#data 0xD33762F2
#data 0x2F362F26
#data 0x64E34A0b
#data 0x93627F08
#data 0x66F265E3
#data 0x4600338c
#data 0x6661363c
#data 0xB1A9666d
#data 0x63F26493
#data 0x73016903
#data 0x62F22F32
#data 0x8BE732C3
#data 0x2FB2A015
#data 0xD32B62F2
#data 0x2F362F26
#data 0x64E34A0b
#data 0x93497F08
#data 0x66F265E3
#data 0x4600338c
#data 0x6661363c
#data 0xB18F666d
#data 0x63F26493
#data 0x73016903
#data 0x62F22F32
#data 0x8BE732C3
#data 0x2FB2A015
#data 0xD31F62F2
#data 0x2F362F26
#data 0x64E34A0b
#data 0x93307F08
#data 0x66F265E3
#data 0x4600338c
#data 0x6661363c
#data 0xB175666d
#data 0x63F26493
#data 0x73016903
#data 0x62F22F32
#data 0x8BE732C3
#data 0xD51456F1
#data 0x660D8564
#data 0x6493B168
#data 0x680352F2
#data 0xA03822B0
#data 0xD21069B3
#data 0x2F262F96
#data 0x64E34A0b
#data 0x3933E320
#data 0x7F088D1c
#data 0x6122D20c
#data 0x000960D3
#data 0x409C511c
#data 0x8B1D2018
#data 0x65B3A01f
#data 0x00F60080
#data 0x01E2016c

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
#data 0x8C26823c
#data 0x6122D28b
#data 0x00096093
#data 0x63D3511d
#data 0x430C70E0
#data 0x89012318
#data 0x65D3A001
#data 0x665365B3
#data 0xB12D65E3
#data 0x79016483
#data 0x39C36803
#data 0xA0268BC5
#data 0xD38169B3
#data 0x2F362F96
#data 0x64E34A0b
#data 0x3923E220
#data 0x7F088D0a
#data 0x6132D37b
#data 0x000960D3
#data 0x409C511e
#data 0x8B0B2018
#data 0x65B3A00d
#data 0x6312D176
#data 0x00096093
#data 0x62D3533f
#data 0x420C70E0
#data 0x89012238
#data 0x65D3A001
#data 0x665365B3
#data 0xB10365E3
#data 0x79016483
#data 0x39C36803
#data 0xD26E8BD7
#data 0x6620D56e
#data 0xB0F9666c
#data 0xD26D6483
#data 0xD36D6903
#data 0x2F362F26
#data 0x64934A0b
#data 0x390CD26b
#data 0x4A0B2F26
#data 0xD56A6493
#data 0xE608390c
#data 0xB03E6552
#data 0xD5686493
#data 0x6403E608
#data 0x6552B039
#data 0x6903D366
#data 0x79FCD261
#data 0x2F262F36
#data 0x64934A0b
#data 0x6093390c
#data 0x7F280009
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0xD75E6EF6
#data 0xD55C4F22
#data 0x8F013476
#data 0x6473E600
#data 0x6143E70a
#data 0x00096053
#data 0x420BD259
#data 0x61430009
#data 0x6053360c
#data 0xD3570009
#data 0x0009430b
#data 0x64034608
#data 0x60734608
#data 0xD2520009
#data 0x6153420b
#data 0x8FE88801
#data 0x4F266503
#data 0x000B364c
#data 0x2FD66063
#data 0x4F222FC6
#data 0x6CF37FF4
#data 0xE30061C3
#data 0x7108D04b
#data 0x21306D43
#data 0x64C3A008
#data 0x6653E3E4
#data 0x036C463d
#data 0x45084508
#data 0x74012430
#data 0x8BF53412
#data 0xD244D33a
#data 0x2F362FC6
#data 0x64D3420b
#data 0x60D33D0c
#data 0x7F140009
#data 0x6CF64F26
#data 0x6DF6000b

;==============================================
#data 0x4F222FE6
#data 0x25587FF4
#data 0xE6086E43
#data 0x64F38F07
#data 0xD339D23a
#data 0x430B2F26
#data 0xA02064E3
#data 0xD7387F04
#data 0x22786253
#data 0x45088B03
#data 0xAFF976Ff
#data 0xD0314508
#data 0x0009A008
#data 0x6753E3E4
#data 0x037C473d
#data 0x45084508
#data 0x74012430
#data 0x8FF52668
#data 0x63F376Ff
#data 0xE100D220
#data 0x2F362410
#data 0x2F26D328
#data 0x64E3430b
#data 0x3E0C7F08
#data 0x000960E3
#data 0x4F267F0c
#data 0x6EF6000b

;==============================================
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x6E43D315
#data 0x1F51D215
#data 0x2F362F62
#data 0x2F26DD1d
#data 0x64E34D0b
#data 0x3E0C53F3
#data 0x2F36D21d
#data 0x4D0B2F26
#data 0x55F464E3
#data 0xBFB13E0c
#data 0xD21064E3
#data 0xD30B6E03
#data 0x2F362F26
#data 0x64E34D0b
#data 0x60E33E0c
#data 0x7F200009
#data 0x6DF64F26
#data 0x6EF6000b

;==============================================
#data 0x8C26823c

#align4
loc_8C119128:
#data bank13.loc_8c13edB8
#data 0x8C28977a

#align4
loc_8C119130:
#data bank13.loc_8c13edC4

loc_8C119134:
#data bank16.loc_8c16AD98

loc_8C119138:
#data bank13.loc_8c13ecC8

loc_8C11913C:
#data bank13.loc_8c13edCc
#data 0x8C2A9F54
#data 0x8C2A9F50

#align4
loc_8C119148:
#data bank16.loc_8c16ADB4
#data 0x00989680
#data 0x05F5E0Ff

#align4
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
#data 0xF0000000

#align4
loc_8C11916C:
#data bank13.loc_8c13edE8
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x6E431F51
#data 0xBF2A2F62
#data 0xD34C6463
#data 0xD24C2F02
#data 0xDD492F36
#data 0x4D0B2F26
#data 0x53F364E3
#data 0xD2493E0c
#data 0x2F262F36
#data 0x64E34D0b
#data 0x3E0C55F4
#data 0x64E3BF60
#data 0x6E03D245
#data 0x2F26D342
#data 0x4D0B2F36
#data 0x3E0C64E3
#data 0x000960E3
#data 0x4F267F20
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0x2FC62FD6
#data 0x4F222FB6
#data 0x6BF37FF8
#data 0x6DB37B04
#data 0xE3002F52
#data 0x7D03D539
#data 0x2D306E43
#data 0x64B3A007
#data 0x600C6064
#data 0x035E4008
#data 0x24206230
#data 0x34D27401
#data 0xD22E8BF6
#data 0x2F26DC2e
#data 0x2FC6DD2b
#data 0x64E34D0b
#data 0x3E0C53F2
#data 0x2F36D22b
#data 0x4D0B2F26
#data 0x2FB664E3
#data 0x2FC63E0c
#data 0x64E34D0b
#data 0x3E0CD327
#data 0x2FC62F36
#data 0x64E34D0b
#data 0x60E33E0c
#data 0x7F280009
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0x61F37FD4
#data 0x6E437118
#data 0x2F526A13
#data 0x64F3E014
#data 0x7A109526
#data 0xED0067F3
#data 0x74122AD0
#data 0xA00A0FD4
#data 0x60607704
#data 0xC90FE2Fc
#data 0x63648041
#data 0x2359633c
#data 0x2430432c
#data 0x347274Fe
#data 0xD61089F3
#data 0x671364F3
#data 0x65A37413
#data 0x7701A004
#data 0x74FF6040
#data 0x2534036c
#data 0x89F93572
#data 0x67136413
#data 0x6CD36BD3
#data 0x6513A01f
#data 0x000000F0

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
#data 0x8B062CC8
#data 0x88306040
#data 0x62508906
#data 0xA002EC01
#data 0x61702620
#data 0x7B012610
#data 0x75017401
#data 0x66F37701
#data 0x760434A2
#data 0x36BC8FEc
#data 0xDB7FD281
#data 0x26D0DC7f
#data 0x2FB62F26
#data 0x64E34C0b
#data 0x3E0C53F2
#data 0x2F36D27d
#data 0x4C0B2F26
#data 0x63F364E3
#data 0x2F367314
#data 0x2FB63E0c
#data 0x64E34C0b
#data 0x3E0CD278
#data 0x2FB62F26
#data 0x64E34C0b
#data 0x60E33E0c
#data 0x7F4C0009
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6

;==============================================

loc_8C119342:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x7FFC4F22
#data 0xE024DE6c
#data 0x2F41E904
#data 0xEC0100Ec
#data 0x8805600c
#data 0xED008F13
#data 0x88FF50E6
#data 0x64038D0a
#data 0xE10153Ed
#data 0xE20150E7
#data 0x423C413c
#data 0x22492109
#data 0x89043210

#align4
loc_8C119384:
#data 0xE202E024
#data 0xE0250E24
#data 0x0ED4

loc_8C11938E:
#data 0xE024
#data 0xEA0300Ec
#data 0x600CEB05
#data 0x8D1A8800
#data 0x880158Ed
#data 0x88028942
#data 0x88038948
#data 0xA0828B01
	nop

loc_8C1193AE:
#data 0x8804
#data 0xA0CE8B01
	nop

loc_8C1193B6:
#data 0x8805
#data 0xA0F48B01
	nop

loc_8C1193BE:
#data 0x8806
#data 0xA1718B01
	nop

loc_8C1193C6:
#data 0x8807
#data 0xA17D8B01
	nop

loc_8C1193CE:
#data 0xA182
	nop

loc_8C1193D2:
#data 0xD34e
#data 0x0009430b
#data 0x89012008
#data 0x0009A17b

#align4
loc_8C1193E0:
#data 0xE2FFE024
#data 0x1E261E27
#data 0x03EC62E3
#data 0x73017226
#data 0xD3470E34
#data 0x22D1430b
#data 0xD44662E3
#data 0x7259E07e
#data 0x2230E307
#data 0x60D30ED4
#data 0x81450009
#data 0xE0108146
#data 0x04D4D641
#data 0x64636563
#data 0x750EA002

#align4
loc_8C11941C:
#data 0x740124D0

#align4
loc_8C119420:
#data 0x8BFB3452
#data 0x0009A157

#align4
loc_8C119428:
#data 0xD33CE024
#data 0x720102Ec
#data 0x0E24430b
#data 0x0009A14f

#align4
loc_8C119438:
#data 0x88FF50E6
#data 0xA14A8B01
	nop

loc_8C119442:
#data 0xE025
#data 0xE02B0ED4
#data 0x880100Ec
#data 0xD2348B23
#data 0x54ED420b
#data 0x891E2008
#data 0x430BD332
#data 0x200854Ed
#data 0xD3318904
#data 0x54ED430b
#data 0x8B022008

#align4
loc_8C11946C:
#data 0xA069E024
#data 0x0EB4

loc_8C119472:
#data 0xD22e
#data 0x0009420b
#data 0x62C353Ed
#data 0x423C6403
#data 0x8B132428
#data 0x420BD22a
#data 0x53ED0009
#data 0x640362C3
#data 0x2428423c
#data 0x8B2b

loc_8C119496:
#data 0xE024
#data 0x0EB463E3
#data 0x62E37326
#data 0x7259E025
#data 0x23C10EC4
#data 0x22A0A073

#align4
loc_8C1194AC:
#data 0xA112E024
#data 0x0EA4

loc_8C1194B2:
#data 0xE025
#data 0x600C00Ec
#data 0x89038800
#data 0x89118801
#data 0x0009A109

#align4
loc_8C1194C4:
#data 0x6583D31b
#data 0xE404430b
#data 0x8F0288Ff
#data 0xA1006403
	nop

loc_8C1194D6:
#data 0x2448
#data 0xE0258B50
#data 0x720102Ec
#data 0x0E24A0F9

#align4
loc_8C1194E4:
#data 0x430BD314
#data 0x20080009
#data 0x8B26

loc_8C1194EE:
#data 0xE024
#data 0x0E94A0F1

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
#data 0x8C289750

#align4
loc_8C11950C:
#data bank03.loc_8c03563a

loc_8C119510:
#data bank04.loc_8c044D8c
#data 0x8C212C3c
#data 0x8C21385c

#align4
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

loc_8C11953C:
#data 0x0EB4E024
#data 0x0ED4E025

#align4
loc_8C119544:
#data 0x62E363E3
#data 0x72597326
#data 0xA02023C1
#data 0x2290

loc_8C119552:
#data 0xD23d
#data 0x420BE501
#data 0x88026483
#data 0x64038F02
#data 0x0009A0B9

#align4
loc_8C119564:
#data 0x00096043
#data 0x8B078801
#data 0xE306E024
#data 0xD3360E34
#data 0x54ED430b
#data 0x0009A0Ad

#align4
loc_8C11957C:
#data 0x732663E3
#data 0x62E3E024
#data 0x72590EB4
#data 0x0EC4E025
#data 0xE30223C1
#data 0x2230

loc_8C119592:
#data 0xD22f
#data 0x0009420b
#data 0xE600D32f
#data 0x430BD42d
#data 0xA098E501
	nop

loc_8C1195A6:
#data 0xE025
#data 0x00EC68E3
#data 0x8800600c
#data 0x785A8D0c
#data 0x89188801
#data 0x89298802
#data 0x895E8803
#data 0x89658804
#data 0x89688805
#data 0x0009A085

#align4
loc_8C1195CC:
#data 0x430BD323
#data 0x20080009
#data 0xA07E8B01
	nop

loc_8C1195DA:
#data 0xE025
#data 0x03EC62E3
#data 0x73017259
#data 0xA00E0E34
#data 0x22A0

loc_8C1195EA:
#data 0xD31c
#data 0x0009430b
#data 0x89702008
#data 0x62E3E025
#data 0x725903Ec
#data 0x0E347301
#data 0x22B0E05a
#data 0x0EC4

loc_8C119606:
#data 0xD312
#data 0x0009430b
#data 0x0009A063

#align4
loc_8C119610:
#data 0xE6016580
#data 0xD31264F1
#data 0x430B655c
#data 0xD211644d
#data 0x2800420b
#data 0x891F2008
#data 0x02ECE05a
#data 0x8B022228
#data 0xA002E025
#data 0x0E94

loc_8C119636:
#data 0xE025
#data 0x0EA4

loc_8C11963A:
#data 0xE05a
#data 0xE15A00Ec
#data 0xCB8031Ec
#data 0x2100A047

#align4
loc_8C119648:
#data loc_8c118686

loc_8C11964C:
#data loc_8c116166

loc_8C119650:
#data bank02.loc_8c020378
#data 0xFF000000

#align4
loc_8C119658:
#data bank03.loc_8c0355B2

loc_8C11965C:
#data bank01.loc_8c011D0c

loc_8C119660:
#data bank01.loc_8c0134D6

loc_8C119664:
#data bank01.loc_8c011A9a

loc_8C119668:
#data 0x420BD221
#data 0x20080009
#data 0xE0258931
#data 0x0EA4933a
#data 0xA02CE05a
#data 0x0E34

loc_8C11967E:
#data 0x6180
#data 0x8B282118
#data 0xE202E024
#data 0xE0250E24
#data 0x0ED4A023

#align4
loc_8C119690:
#data 0x22286280
#data 0xA00D8B1f
#data 0xE025

loc_8C11969A:
#data 0xD216
#data 0x0009420b
#data 0x8B182008
#data 0xE000A018

#align4
loc_8C1196A8:
#data 0x732663E3
#data 0x22286231
#data 0xE024890f

#align4
loc_8C1196B4:
#data 0xE60103Ec
#data 0x7301D40f
#data 0xD30F0E34
#data 0xE50A430b
#data 0x0009A007

#align4
loc_8C1196C8:
#data 0x430BD30a
#data 0x20080009
#data 0x8B01

loc_8C1196D2:
#data 0xA001
#data 0xE001

loc_8C1196D6:
#data 0xE002

#align4
loc_8C1196D8:
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x000000Ff

#align4
loc_8C1196F0:
#data bank01.loc_8c011BBc

loc_8C1196F4:
#data bank03.loc_8c03563a
#data 0xFF000000

#align4
loc_8C1196FC:
#data bank03.loc_8c0355B2

loc_8C119700:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xDE7C7FF8
#data 0xE904ED01
#data 0x00096043
#data 0xE02481F2
#data 0x600C00Ec
#data 0x8F138805
#data 0x50E6EB00
#data 0x8D0A88Ff
#data 0x53ED6403
#data 0x50E7E101
#data 0x413CE201
#data 0x2109423c
#data 0x32102249
#data 0x8904

loc_8C119746:
#data 0xE024
#data 0x0E24E202
#data 0x0EB4E025

#align4
loc_8C119750:
#data 0xEA0350Ed
#data 0x2F02D86c
#data 0x00ECE024
#data 0x8800600c
#data 0xEC058D18
#data 0x892D8801
#data 0x89338802
#data 0x89658803
#data 0x8B018804
#data 0x0009A09c

#align4
loc_8C119778:
#data 0x8B018805
#data 0x0009A0E2

#align4
loc_8C119780:
#data 0x8B018806
#data 0x0009A166

#align4
loc_8C119788:
#data 0x8B018807
#data 0x0009A172

#align4
loc_8C119790:
#data 0x0009A176

#align4
loc_8C119794:
#data 0x0009480b
#data 0x89012008
#data 0x0009A170

#align4
loc_8C1197A0:
#data 0xE3FFE024
#data 0x1E361E37
#data 0x02EC63E3
#data 0x72017326
#data 0xD2560E24
#data 0x23B1420b
#data 0xE20763E3
#data 0x23207359
#data 0x0009A15e

#align4
loc_8C1197C4:
#data 0xD352E024
#data 0x710101Ec
#data 0x0E14430b
#data 0x0009A156

#align4
loc_8C1197D4:
#data 0x88FF50E6
#data 0xA1518B01
	nop

loc_8C1197DE:
#data 0xE025
#data 0xE02B0EB4
#data 0x880100Ec
#data 0xD24A8B04
#data 0x54ED420b
#data 0x8B0A2008

#align4
loc_8C1197F4:
#data 0x63E3E024
#data 0x73260EC4
#data 0xE02562E3
#data 0x0ED47259
#data 0xA07323D1
#data 0x22A0

loc_8C11980A:
#data 0xD243
#data 0x54ED420b
#data 0x890D2008
#data 0x420BD241
#data 0x200854Ed
#data 0xD3408908
#data 0x0009430b
#data 0x62D353Ed
#data 0x423C6403
#data 0x8B022428

#align4
loc_8C119830:
#data 0xA036E024
#data 0x0EC4

loc_8C119836:
#data 0xE024
#data 0x0EA4A122

#align4
loc_8C11983C:
#data 0x00ECE025
#data 0x8800600c
#data 0x88018903
#data 0xA119891c
	nop

loc_8C11984E:
#data 0xD335
#data 0x430B65F2
#data 0x88FFE404
#data 0x64038F02
#data 0x0009A110

#align4
loc_8C119860:
#data 0x8B042448
#data 0x02ECE025
#data 0xA1097201
#data 0x0E24

loc_8C11986E:
#data 0xE024
#data 0x0EC463E3
#data 0x62E37326
#data 0x7259E025
#data 0x23D10ED4
#data 0x22D0A036

#align4
loc_8C119884:
#data 0x420BD228
#data 0x20080009
#data 0xD3278B05
#data 0x430BE024
#data 0xA0F30E94
	nop

loc_8C11989A:
#data 0xE024
#data 0xE0250EC4
#data 0x0EB4

loc_8C1198A2:
#data 0x63E3
#data 0x732662E3
#data 0x23D17259
#data 0x2290A020

#align4
loc_8C1198B0:
#data 0xE501D31f
#data 0x64F2430b
#data 0x8F028802
#data 0xA0DF6403
	nop

loc_8C1198C2:
#data 0x6043
#data 0x88010009
#data 0xD31A8B07
#data 0xE206E024
#data 0x430B0E24
#data 0xA0D354Ed
	nop

loc_8C1198DA:
#data 0x63E3
#data 0xE0247326
#data 0x0EC462E3
#data 0xE0257259
#data 0x23D10ED4
#data 0x2230E302

#align4
loc_8C1198F0:
#data 0x420BD211
#data 0xD3120009
#data 0xD410E600
#data 0xE501430b
#data 0x0009A0Be
#data 0x8C289750

#align4
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
#data 0xFF000000

#align4
loc_8C119940:
#data bank03.loc_8c0355B2

loc_8C119944:
#data 0x000960E3
#data 0x2F02705a
#data 0x00ECE025
#data 0x8800600c
#data 0x8801890b
#data 0x88028918
#data 0x88038929
#data 0x88048953
#data 0x8805895b
#data 0xA089896e
	nop

loc_8C11996E:
#data 0xD331
#data 0x0009430b
#data 0x8B012008
#data 0x0009A082

#align4
loc_8C11997C:
#data 0x62E3E025
#data 0x725903Ec
#data 0x0E347301
#data 0x22A0A00e

#align4
loc_8C11998C:
#data 0x430BD329
#data 0x20080009
#data 0xE0258974
#data 0x03EC62E3
#data 0x73017259
#data 0xE05A0E34
#data 0x0ED422C0

#align4
loc_8C1199A8:
#data 0x430BD323
#data 0xA0670009
	nop

loc_8C1199B2:
#data 0x63F2
#data 0x2F36E601
#data 0x85F455F1
#data 0xD31F6550
#data 0x655C6403
#data 0x644D430b
#data 0x62F6D31d
#data 0x2200430b
#data 0x890F2008
#data 0x03ECE05a
#data 0x8B022338
#data 0xA002E025
#data 0x0E94

loc_8C1199E2:
#data 0xE025
#data 0x0EA4

loc_8C1199E6:
#data 0xE05a
#data 0xE15A00Ec
#data 0xCB8031Ec
#data 0x2100A046

#align4
loc_8C1199F4:
#data 0x420BD213
#data 0x20080009
#data 0xE0258940
#data 0x0EA49316
#data 0xA03BE05a
#data 0x0E34

loc_8C119A0A:
#data 0x61F2
#data 0x23386310
#data 0xE0248B36
#data 0x0E34E302
#data 0xA031E025
#data 0x0EB4

loc_8C119A1E:
#data 0x62F2
#data 0x23386320
#data 0xE0258B2c
#data 0x730103Ec
#data 0x0E34A01b
#data 0x000000Ff

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

loc_8C119A48:
#data 0x0009480b
#data 0x8B172008
#data 0xE000A017

#align4
loc_8C119A54:
#data 0x722662E3
#data 0x23386321
#data 0xE024890e
#data 0x720102Ec
#data 0x0E24

loc_8C119A66:
#data 0xD382
#data 0xD480E601
#data 0xE50A430b
#data 0x0009A006

#align4
loc_8C119A74:
#data 0x0009480b
#data 0x8B012008

#align4
loc_8C119A7C:
#data 0xE001A001

loc_8C119A80:
#data 0xE002

loc_8C119A82:
#data 0x7F08
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6

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
#data 0x0000
#data 0x0000
#data 0xFF00

loc_8c119c70:
#data 0x55B2
#data 0x8C03

#align4
loc_8C119C74:
#data 0x8C289750

#align4
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

loc_8C119D94:
#data 0x00FF
#data 0x0000

#align4
loc_8c119d98:
#data bank02.loc_8c020378

loc_8C119D9C:
#data 0xFF000000

#align4
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
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x4F22
#data 0x7FF8
#data 0xDE66
#data 0xED01
#data 0xE904
#data 0x6043
	nop
#data 0x81F2
#data 0xE024
#data 0x00EC
#data 0xE802
#data 0x600C
#data 0x8805
#data 0x8F12
#data 0xEB00
#data 0x50E6
#data 0x88FF
#data 0x8D0A
#data 0x6403
#data 0x53ED
#data 0xE101
#data 0x50E7
#data 0xE201
#data 0x413C
#data 0x423C
#data 0x2109
#data 0x2249
#data 0x3210
#data 0x8903

loc_8c119e70:
#data 0xE024
#data 0x0E84
#data 0xE025
#data 0x0EB4

loc_8c119e78:
#data 0x50ED
#data 0xEA03
#data 0x2F02
#data 0xE024
#data 0x00EC
#data 0x600C
#data 0x8800
#data 0x8D18
#data 0xEC05
#data 0x8801
#data 0x893E
#data 0x8802
#data 0x8944
#data 0x8803
#data 0x8976
#data 0x8804
#data 0x8B01
#data 0xA0C6
	nop

loc_8c119e9e:
#data 0x8805
#data 0x8B01
#data 0xA0EB
	nop

loc_8c119ea6:
#data 0x8806
#data 0x8B01
#data 0xA179
	nop

loc_8c119eae:
#data 0x8807
#data 0x8B01
#data 0xA185
	nop

loc_8c119eb6:
#data 0xA18A
	nop

loc_8c119eba:
#data 0xD347
#data 0x430B
	nop
#data 0x2008
#data 0x8901
#data 0xA183
	nop

loc_8c119ec8:
#data 0xE024
#data 0xE2FF
#data 0x1E27
#data 0x1E26
#data 0x62E3
#data 0x03EC
#data 0x7226
#data 0x7301
#data 0x0E34
#data 0xD340
#data 0x430B
#data 0x22B1
#data 0x62E3
#data 0xE307
#data 0x7259
#data 0xE048
#data 0x2230
#data 0x02EE
#data 0x2228
#data 0x8902
#data 0xD23B
#data 0x420B
	nop

loc_8c119ef6:
#data 0xE04C
#data 0x01EE
#data 0x2118
#data 0x8B01
#data 0xA166
	nop

loc_8c119f02:
#data 0xD238
#data 0x420B
	nop
#data 0xA161
	nop

loc_8c119f0c:
#data 0xE024
#data 0xD336
#data 0x02EC
#data 0x7201
#data 0x430B
#data 0x0E24
#data 0xA159
	nop

loc_8c119f1c:
#data 0x50E6
#data 0x88FF
#data 0x8B01
#data 0xA154
	nop

loc_8c119f26:
#data 0xE025
#data 0x0EB4
#data 0xE02B
#data 0x00EC
#data 0x8801
#data 0x8B04
#data 0xD22E
#data 0x420B
#data 0x54ED
#data 0x2008
#data 0x8B0A

loc_8c119f3c:
#data 0xE024
#data 0x63E3
#data 0x0EC4
#data 0x7326
#data 0x62E3
#data 0xE025
#data 0x7259
#data 0x0ED4
#data 0x23D1
#data 0xA08B
#data 0x22A0

loc_8c119f52:
#data 0xD227
#data 0x420B
#data 0x54ED
#data 0x2008
#data 0x890D
#data 0xD225
#data 0x420B
#data 0x54ED
#data 0x2008
#data 0x8908
#data 0xD324
#data 0x430B
	nop
#data 0x53ED
#data 0x62D3
#data 0x6403
#data 0x423C
#data 0x2428
#data 0x8B02

loc_8c119f78:
#data 0xE024
#data 0xA04F
#data 0x0EC4

loc_8c119f7e:
#data 0xE024
#data 0xA125
#data 0x0EA4

loc_8c119f84:
#data 0xE025
#data 0x00EC
#data 0x600C
#data 0x8800
#data 0x8903
#data 0x8801
#data 0x8936
#data 0xA11C
	nop

loc_8c119f96:
#data 0xD319
#data 0x65F2
#data 0x430B
#data 0xE404
#data 0x88FF
#data 0x8F02
#data 0x6403
#data 0xA113
	nop

loc_8c119fa8:
#data 0x2448
#data 0x8B04
#data 0xE025
#data 0x02EC
#data 0x7201
#data 0xA10C
#data 0x0E24

loc_8c119fb6:
#data 0xE024
#data 0x63E3
#data 0x0EC4
#data 0x7326
#data 0x62E3
#data 0xE025
#data 0x7259
#data 0x0ED4
#data 0x23D1
#data 0xA04E
#data 0x22D0

#align4
loc_8C119FCC:
#data 0xFF000000

#align4
loc_8c119fd0:
#data bank03.loc_8c0355b2
#data 0x9750
#data 0x8C28

loc_8c119fd8:
#data 0x563A
#data 0x8C03

loc_8c119fdc:
#data 0x4D8C
#data 0x8C04

loc_8c119fe0:
#data 0x17A2
#data 0x8C01

loc_8c119fe4:
#data 0x1828
#data 0x8C01

loc_8c119fe8:
#data 0x0064
#data 0x8C02

loc_8c119fec:
#data 0x5BF0
#data 0x8C11

loc_8c119ff0:
#data 0x5C40
#data 0x8C11

loc_8c119ff4:
#data 0x61AC
#data 0x8C11

loc_8c119ff8:
#data 0x5E2C
#data 0x8C11

loc_8c119ffc:
#data 0x7A88
#data 0x8C11

loc_8c11a000:
#data 0xD24C
#data 0x420B
	nop
#data 0x2008
#data 0x8B04
#data 0xE024
#data 0x0E94
#data 0xE07E
#data 0xA0DD
#data 0x0EB4

loc_8c11a014:
#data 0xE024
#data 0x0EC4
#data 0xE025
#data 0x0EB4

loc_8c11a01c:
#data 0x63E3
#data 0x62E3
#data 0x7326
#data 0x7259
#data 0x23D1
#data 0xA01F
#data 0x2290

loc_8c11a02a:
#data 0xD343
#data 0xE501
#data 0x430B
#data 0x64F2
#data 0x8802
#data 0x8F02
#data 0x6403
#data 0xA0C9
	nop

loc_8c11a03c:
#data 0x6043
	nop
#data 0x8801
#data 0x8B07
#data 0xD33D
#data 0xE024
#data 0xE206
#data 0x0E24
#data 0x430B
#data 0x54ED
#data 0xA0BD
	nop

loc_8c11a054:
#data 0xE024
#data 0x63E3
#data 0x62E3
#data 0x0EC4
#data 0x7259
#data 0x7326
#data 0xE025
#data 0x0ED4
#data 0x23D1
#data 0x2280

loc_8c11a068:
#data 0xD335
#data 0x430B
	nop
#data 0xD236
#data 0xE600
#data 0xD434
#data 0x420B
#data 0xE501
#data 0xA0A9
	nop

loc_8c11a07c:
#data 0x60E3
	nop
#data 0x705A
#data 0x2F02
#data 0xE025
#data 0x00EC
#data 0x600C
#data 0x8800
#data 0x890D
#data 0x8801
#data 0x891A
#data 0x8802
#data 0x892D
#data 0x8803
#data 0x8969
#data 0x8804
#data 0x8970
#data 0x8805
#data 0x8B01
#data 0xA076
	nop

loc_8c11a0a6:
#data 0xA092
	nop

loc_8c11a0aa:
#data 0xD328
#data 0x430B
	nop
#data 0x2008
#data 0x8B01
#data 0xA08B
	nop

loc_8c11a0b8:
#data 0xE025
#data 0x62E3
#data 0x03EC
#data 0x7259
#data 0x7301
#data 0x0E34
#data 0xA010
#data 0x22A0

loc_8c11a0c8:
#data 0xD320
#data 0x430B
	nop
#data 0x2008
#data 0x8B01
#data 0xA07C
	nop

loc_8c11a0d6:
#data 0xE025
#data 0x62E3
#data 0x03EC
#data 0x7259
#data 0x7301
#data 0x0E34
#data 0xE05A
#data 0x22C0
#data 0x0ED4

loc_8c11a0e8:
#data 0xD315
#data 0x430B
	nop
#data 0xA06E
	nop

loc_8c11a0f2:
#data 0x63F2
#data 0xE601
#data 0x2F36
#data 0x55F1
#data 0x85F4
#data 0x6550
#data 0xD314
#data 0x6403
#data 0x655C
#data 0x430B
#data 0x644D
#data 0xD312
#data 0x62F6
#data 0x430B
#data 0x2200
#data 0x2008
#data 0x8921
#data 0xE05A
#data 0x03EC
#data 0x2338
#data 0x8B02
#data 0xE025
#data 0xA002
#data 0x0E94

loc_8c11a122:
#data 0xE025
#data 0x0EA4

loc_8c11a126:
#data 0xE05A
#data 0x00EC
#data 0xE15A
#data 0x31EC
#data 0xCB80
#data 0xA04D
#data 0x2100

loc_8c11a134:
#data 0x6290
#data 0x8C11

loc_8c11a138:
#data 0x8686
#data 0x8C11

loc_8c11a13c:
#data 0x6166
#data 0x8C11

loc_8c11a140:
#data 0x0378
#data 0x8C02
#data 0x0000
#data 0xFF00

loc_8c11a148:
#data 0x55B2
#data 0x8C03

loc_8c11a14c:
#data 0x1D0C
#data 0x8C01

loc_8c11a150:
#data 0x34D6
#data 0x8C01

loc_8c11a154:
#data 0x1A9A
#data 0x8C01

loc_8c11a158:
#data 0xD223
#data 0x420B
	nop
#data 0x2008
#data 0x8935
#data 0xE025
#data 0x933E
#data 0x0EA4
#data 0xE05A
#data 0xA030
#data 0x0E34

loc_8c11a16e:
#data 0x61F2
#data 0x6310
#data 0x2338
#data 0x8B2B
#data 0xE024
#data 0x0E84
#data 0xE025
#data 0xA027
#data 0x0EB4

loc_8c11a180:
#data 0x62F2
#data 0x6320
#data 0x2338
#data 0x8B22
#data 0xE025
#data 0x03EC
#data 0x7301
#data 0xA010
#data 0x0E34

loc_8c11a192:
#data 0xD216
#data 0x420B
	nop
#data 0x2008
#data 0x8B18
#data 0xA018
#data 0xE000

loc_8c11a1a0:
#data 0x62E3
#data 0x7226
#data 0x6321
#data 0x2338
#data 0x890F
#data 0xE024
#data 0x02EC
#data 0x7201
#data 0x0E24

loc_8c11a1b2:
#data 0xD310
#data 0xE601
#data 0xD40E
#data 0x430B
#data 0xE50A
#data 0xA007
	nop

loc_8c11a1c0:
#data 0xD30A
#data 0x430B
	nop
#data 0x2008
#data 0x8B01

loc_8c11a1ca:
#data 0xA001
#data 0xE001

loc_8c11a1ce:
#data 0xE002

loc_8c11a1d0:
#data 0x7F08
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
	rts
#data 0x6EF6

;==============================================
#data 0x00FF
#data 0x0000

loc_8c11a1e8:
#data 0x1BBC
#data 0x8C01

loc_8c11a1ec:
#data 0x563A
#data 0x8C03
#data 0x0000
#data 0xFF00

loc_8c11a1f4:
#data 0x55B2
#data 0x8C03

loc_8c11a1f8:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x4F22
#data 0x7FF8
#data 0xDE82
#data 0xE804
#data 0x6043
	nop
#data 0x81F2
#data 0xE024
#data 0x00EC
#data 0xE902
#data 0x600C
#data 0x8805
#data 0x8F12
#data 0xEB00
#data 0x50E6
#data 0x88FF
#data 0x8D0A
#data 0x6403
#data 0x53ED
#data 0xE101
#data 0x50E7
#data 0xE201
#data 0x413C
#data 0x423C
#data 0x2109
#data 0x2249
#data 0x3210
#data 0x8903

loc_8c11a23e:
#data 0xE024
#data 0x0E94
#data 0xE025
#data 0x0EB4

loc_8c11a246:
#data 0x50ED
#data 0xEC05
#data 0xEA03
#data 0x2F02
#data 0xE024
#data 0x00EC
#data 0x600C
#data 0x8800
#data 0x8D18
#data 0xED01
#data 0x8801
#data 0x892E
#data 0x8802
#data 0x8934
#data 0x8803
#data 0x8971
#data 0x8804
#data 0x8B01
#data 0xA0A7
	nop

loc_8c11a26e:
#data 0x8805
#data 0x8B01
#data 0xA0ED
	nop

loc_8c11a276:
#data 0x8806
#data 0x8B01
#data 0xA170
	nop

loc_8c11a27e:
#data 0x8807
#data 0x8B01
#data 0xA17C
	nop

loc_8c11a286:
#data 0xA181
	nop

loc_8c11a28a:
#data 0xD363
#data 0x430B
	nop
#data 0x2008
#data 0x8901
#data 0xA17A
	nop

loc_8c11a298:
#data 0xE024
#data 0xE2FF
#data 0x1E27
#data 0x1E26
#data 0x62E3
#data 0x03EC
#data 0x7226
#data 0x7301
#data 0x0E34
#data 0xD35C
#data 0x430B
#data 0x22B1
#data 0x62E3
#data 0xE307
#data 0x7259
#data 0x2230
#data 0xA168
	nop

loc_8c11a2bc:
#data 0xE024
#data 0xD358
#data 0x01EC
#data 0x7101
#data 0x430B
#data 0x0E14
#data 0xA160
	nop

loc_8c11a2cc:
#data 0x50E6
#data 0x88FF
#data 0x8B01
#data 0xA15B
	nop

loc_8c11a2d6:
#data 0xE025
#data 0x0EB4
#data 0xE02B
#data 0x00EC
#data 0x8801
#data 0x8B04
#data 0xD250
#data 0x420B
#data 0x54ED
#data 0x2008
#data 0x8B0A

loc_8c11a2ec:
#data 0xE024
#data 0x63E3
#data 0x0EC4
#data 0x7326
#data 0x62E3
#data 0xE025
#data 0x7259
#data 0x0ED4
#data 0x23D1
#data 0xA07E
#data 0x22A0

loc_8c11a302:
#data 0xD249
#data 0x420B
#data 0x54ED
#data 0x2008
#data 0x8B02
#data 0xE024
#data 0xA04E
#data 0x0EC4

loc_8c11a312:
#data 0xD346
#data 0x430B
#data 0x54ED
#data 0x2008
#data 0x8B05
#data 0x63E3
#data 0xE024
#data 0x7326
#data 0x0EC4
#data 0xA046
#data 0x2391

loc_8c11a328:
#data 0xD341
#data 0x430B
	nop
#data 0x53ED
#data 0x6403
#data 0x4D3C
#data 0x24D8
#data 0x8B05
#data 0x63E3
#data 0xE024
#data 0x7326
#data 0x0EC4
#data 0xA038
#data 0x23A1

loc_8c11a344:
#data 0xE024
#data 0xA121
#data 0x0EA4

loc_8c11a34a:
#data 0xE025
#data 0x00EC
#data 0x600C
#data 0x8800
#data 0x8903
#data 0x8801
#data 0x891C
#data 0xA118
	nop

loc_8c11a35c:
#data 0xD335
#data 0x65F2
#data 0x430B
#data 0xE404
#data 0x88FF
#data 0x8F02
#data 0x6403
#data 0xA10F
	nop

loc_8c11a36e:
#data 0x2448
#data 0x8B04
#data 0xE025
#data 0x02EC
#data 0x7201
#data 0xA108
#data 0x0E24

loc_8c11a37c:
#data 0xE024
#data 0x63E3
#data 0x0EC4
#data 0x7326
#data 0x62E3
#data 0xE025
#data 0x7259
#data 0x0ED4
#data 0x23D1
#data 0xA036
#data 0x22D0

loc_8c11a392:
#data 0xD229
#data 0x420B
	nop
#data 0x2008
#data 0x8B04
#data 0xE024
#data 0x0E84
#data 0xE07E
#data 0xA0F3
#data 0x0ED4

loc_8c11a3a6:
#data 0xE024
#data 0x0EC4
#data 0xE025
#data 0x0EB4

loc_8c11a3ae:
#data 0x63E3
#data 0x7326
#data 0x23D1

loc_8c11a3b4:
#data 0x62E3
#data 0x7259
#data 0xA021
#data 0x2280

loc_8c11a3bc:
#data 0xD31F
#data 0xE501
#data 0x430B
#data 0x64F2
#data 0x8802
#data 0x8F02
#data 0x6403
#data 0xA0DF
	nop

loc_8c11a3ce:
#data 0x6043
	nop
#data 0x8801
#data 0x8B07
#data 0xD31A
#data 0xE024
#data 0xE206
#data 0x0E24
#data 0x430B
#data 0x54ED
#data 0xA0D3
	nop

loc_8c11a3e6:
#data 0xE07E
#data 0x63E3
#data 0x0EB4
#data 0xE024
#data 0x62E3
#data 0x0EC4
#data 0x7259
#data 0x7326
#data 0xE025
#data 0x0ED4
#data 0x23D1
#data 0x2290

loc_8c11a3fe:
#data 0xD311
#data 0x430B
	nop
#data 0xD211
#data 0xE600
#data 0xD40F
#data 0x420B
#data 0xE501
#data 0xA0BD
	nop
#data 0x0000
#data 0x9750
#data 0x8C28

loc_8c11a418:
#data 0x563A
#data 0x8C03

loc_8c11a41c:
#data 0x4D8C
#data 0x8C04

loc_8c11a420:
#data 0x0064
#data 0x8C02

loc_8c11a424:
#data 0x5BF0
#data 0x8C11

loc_8c11a428:
#data 0x5C40
#data 0x8C11

loc_8c11a42c:
#data 0x61AC
#data 0x8C11

loc_8c11a430:
#data 0x5E2C
#data 0x8C11

loc_8c11a434:
#data 0x7A88
#data 0x8C11

loc_8c11a438:
#data 0x6290
#data 0x8C11

loc_8c11a43c:
#data 0x8686
#data 0x8C11

loc_8c11a440:
#data 0x6166
#data 0x8C11

loc_8c11a444:
#data 0x0378
#data 0x8C02
#data 0x0000
#data 0xFF00

loc_8c11a44c:
#data 0x55B2
#data 0x8C03

loc_8c11a450:
#data 0x60E3
	nop
#data 0x705A
#data 0x2F02
#data 0xE025
#data 0x00EC
#data 0x600C
#data 0x8800
#data 0x890B
#data 0x8801
#data 0x8918
#data 0x8802
#data 0x8929
#data 0x8803
#data 0x8953
#data 0x8804
#data 0x895A
#data 0x8805
#data 0x896C
#data 0xA089
	nop

loc_8c11a47a:
#data 0xD330
#data 0x430B
	nop
#data 0x2008
#data 0x8B01
#data 0xA082
	nop

loc_8c11a488:
#data 0xE025
#data 0x62E3
#data 0x03EC
#data 0x7259
#data 0x7301
#data 0x0E34
#data 0xA00E
#data 0x22A0

loc_8c11a498:
#data 0xD328
#data 0x430B
	nop
#data 0x2008
#data 0x8974
#data 0xE025
#data 0x62E3
#data 0x03EC
#data 0x7259
#data 0x7301
#data 0x0E34
#data 0xE05A
#data 0x22C0
#data 0x0ED4

loc_8c11a4b4:
#data 0xD322
#data 0x430B
	nop
#data 0xA067
	nop

loc_8c11a4be:
#data 0x63F2
#data 0xE601
#data 0x2F36
#data 0x55F1
#data 0x85F4
#data 0x6550
#data 0xD31E
#data 0x6403
#data 0x655C
#data 0x430B
#data 0x644D
#data 0xD31C
#data 0x62F6
#data 0x430B
#data 0x2200
#data 0x2008
#data 0x890F
#data 0xE05A
#data 0x03EC
#data 0x2338
#data 0x8B02
#data 0xE025
#data 0xA002
#data 0x0E84

loc_8c11a4ee:
#data 0xE025
#data 0x0EA4

loc_8c11a4f2:
#data 0xE05A
#data 0x00EC
#data 0xE15A
#data 0x31EC
#data 0xCB80
#data 0xA046
#data 0x2100

loc_8c11a500:
#data 0xD212
#data 0x420B
	nop
#data 0x2008
#data 0x8940
#data 0xE025
#data 0x9315
#data 0x0EA4
#data 0xE05A
#data 0xA03B
#data 0x0E34

loc_8c11a516:
#data 0x61F2
#data 0x6310
#data 0x2338
#data 0x8B36
#data 0xE024
#data 0x0E94
#data 0xE025
#data 0xA032
#data 0x0EB4

loc_8c11a528:
#data 0x62F2
#data 0x6320
#data 0x2338
#data 0x8B2D
#data 0xE025
#data 0x03EC
#data 0x7301
#data 0xA01B
#data 0x0E34
#data 0x00FF

loc_8c11a53c:
#data 0x1D0C
#data 0x8C01

loc_8c11a540:
#data 0x0378
#data 0x8C02

loc_8c11a544:
#data 0x34D6
#data 0x8C01

loc_8c11a548:
#data 0x1A9A
#data 0x8C01

loc_8c11a54c:
#data 0x1BBC
#data 0x8C01

loc_8c11a550:
#data 0xD284
#data 0x420B
	nop
#data 0x2008
#data 0x8B18
#data 0xA018
#data 0xE000

loc_8c11a55e:
#data 0x62E3
#data 0x7226
#data 0x6321
#data 0x2338
#data 0x890F
#data 0xE024
#data 0x02EC
#data 0x7201
#data 0x0E24

loc_8c11a570:
#data 0xD37E
#data 0xE601
#data 0xD47C
#data 0x430B
#data 0xE50A
#data 0xA007
	nop

loc_8c11a57e:
#data 0xD379
#data 0x430B
	nop
#data 0x2008
#data 0x8B01

loc_8c11a588:
#data 0xA001
#data 0xE001

loc_8c11a58c:
#data 0xE002

loc_8c11a58e:
#data 0x7F08
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
	rts
#data 0x6EF6

;==============================================

loc_8c11a5a2:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x4F22
#data 0x7FFC
#data 0xDE6E
#data 0xE024
#data 0xD86B
#data 0xD96C
#data 0x2F41
#data 0xE402
#data 0x00EC
#data 0x600C
#data 0x8803
#data 0x8F12
#data 0xEA00
#data 0x50E6
#data 0x88FF
#data 0x8D0A
#data 0x6503
#data 0x53ED
#data 0xE101
#data 0x50E7
#data 0xE201
#data 0x413C
#data 0x423C
#data 0x2109
#data 0x2259
#data 0x3210
#data 0x8903

loc_8c11a5e6:
#data 0xE024
#data 0x0E44
#data 0xE025
#data 0x0EA4

loc_8c11a5ee:
#data 0xE024
#data 0x00EC
#data 0xEC01
#data 0x600C
#data 0x8800
#data 0x8D10
#data 0xED03
#data 0x8801
#data 0x8922
#data 0x8802
#data 0x8928
#data 0x8803
#data 0x8973
#data 0x8804
#data 0x8B01
#data 0xA103
	nop

loc_8c11a610:
#data 0x8805
#data 0x8B01
#data 0xA10E
	nop

loc_8c11a618:
#data 0xA113
	nop

loc_8c11a61c:
#data 0xD351
#data 0x430B
	nop
#data 0x2008
#data 0x8901
#data 0xA10C
	nop

loc_8c11a62a:
#data 0xE024
#data 0xE2FF
#data 0x1E27
#data 0x1E26
#data 0x62E3
#data 0x03EC
#data 0x7226
#data 0x7301
#data 0x0E34
#data 0xD34D
#data 0x430B
#data 0x22A1
#data 0xA0FE
	nop

loc_8c11a646:
#data 0xE024
#data 0xD24B
#data 0x03EC
#data 0x7301
#data 0x420B
#data 0x0E34
#data 0xA0F6
	nop

loc_8c11a656:
#data 0x50E6
#data 0x88FF
#data 0x8B01
#data 0xA0F1
	nop

loc_8c11a660:
#data 0xE025
#data 0x0EA4
#data 0xE02B
#data 0x00EC
#data 0x8801
#data 0x8B04
#data 0xD243
#data 0x420B
#data 0x54ED
#data 0x2008
#data 0x8B11

loc_8c11a676:
#data 0x63E3
#data 0xE024
#data 0x7326
#data 0x0ED4
#data 0x62E3
#data 0xE025
#data 0x7259
#data 0x0EC4
#data 0x23C1
#data 0xD33D
#data 0x430B
#data 0x22D0
#data 0xE501
#data 0xE600
#data 0x490B
#data 0x6483
#data 0xA0D4
	nop

loc_8c11a69a:
#data 0xD23A
#data 0x420B
#data 0x54ED
#data 0x2008
#data 0x8916
#data 0xD238
#data 0x420B
#data 0x54ED
#data 0x2008
#data 0x8911
#data 0xD337
#data 0x430B
	nop
#data 0x53ED
#data 0x62C3
#data 0x6403
#data 0x423C
#data 0x2428
#data 0x8908
#data 0xD333
#data 0x430B
	nop
#data 0x2008
#data 0x8B03
#data 0xE024
#data 0xE304
#data 0xA0B8
#data 0x0E34

loc_8c11a6d2:
#data 0x63E3
#data 0x7326
#data 0x62E3
#data 0x7259
#data 0xE024
#data 0x0ED4
#data 0x23C1
#data 0xE304
#data 0x2230
#data 0xD226
#data 0x420B
	nop
#data 0xE600
#data 0xA09E
#data 0xE501

loc_8c11a6f0:
#data 0xE025
#data 0x6BE3
#data 0x00EC
#data 0x600C
#data 0x8800
#data 0x8D0E
#data 0x7B5A
#data 0x8801
#data 0x891A
#data 0x8802
#data 0x8948
#data 0x8803
#data 0x896E
#data 0x8804
#data 0x8974
#data 0x8805
#data 0x8B01
#data 0xA079
	nop

loc_8c11a716:
#data 0xA094
	nop

loc_8c11a71a:
#data 0xD31E
#data 0x430B
	nop
#data 0x2008
#data 0x8B01
#data 0xA08D
	nop

loc_8c11a728:
#data 0xE025
#data 0x62E3
#data 0x03EC
#data 0x7259
#data 0x7301
#data 0x0E34
#data 0xA011
#data 0x22D0

loc_8c11a738:
#data 0xD316
#data 0x430B
	nop
#data 0x2008
#data 0x8B01
#data 0xA07E
	nop

loc_8c11a746:
#data 0xE025
#data 0x62E3
#data 0x03EC
#data 0x7259
#data 0x7301
#data 0x0E34
#data 0xE05A
#data 0xE305
#data 0x2230
#data 0x0EC4

loc_8c11a75a:
#data 0xD309
#data 0x430B
	nop
#data 0xA06F
	nop

loc_8c11a764:
#data 0x563A
#data 0x8C03
#data 0x0000
#data 0xFF00

loc_8c11a76c:
#data 0x55B2
#data 0x8C03
#data 0x9750
#data 0x8C28

loc_8c11a774:
#data 0x4D8C
#data 0x8C04

loc_8c11a778:
#data 0x0064
#data 0x8C02

loc_8c11a77c:
#data 0x5BF0
#data 0x8C11

loc_8c11a780:
#data 0x0378
#data 0x8C02

loc_8c11a784:
#data 0x5C40
#data 0x8C11

loc_8c11a788:
#data 0x61AC
#data 0x8C11

loc_8c11a78c:
#data 0x5E2C
#data 0x8C11

loc_8c11a790:
#data 0x6290
#data 0x8C11

loc_8c11a794:
#data 0x1D0C
#data 0x8C01

loc_8c11a798:
#data 0x65B0
#data 0xE601
#data 0x64F1
#data 0xD338
#data 0x655C
#data 0x430B
#data 0x644D
#data 0xD237
#data 0x420B
#data 0x2B00
#data 0x2008
#data 0x8910
#data 0xE05A
#data 0x02EC
#data 0x2228
#data 0x8B03
#data 0xE025
#data 0xE304
#data 0xA002
#data 0x0E34

loc_8c11a7c0:
#data 0xE025
#data 0x0ED4

loc_8c11a7c4:
#data 0xE05A
#data 0x00EC
#data 0xE15A
#data 0x31EC
#data 0xCB80
#data 0xA038
#data 0x2100

loc_8c11a7d2:
#data 0xD22D
#data 0x420B
	nop
#data 0x2008
#data 0x8932
#data 0xE025
#data 0x934D
#data 0x0ED4
#data 0xE05A
#data 0xA02D
#data 0x0E34

loc_8c11a7e8:
#data 0x61B0
#data 0x2118
#data 0x8B29
#data 0xE024
#data 0x0E44
#data 0xE025
#data 0xA025
#data 0x0EA4

loc_8c11a7f8:
#data 0x62B0
#data 0x2228
#data 0x8B21
#data 0xE025
#data 0x03EC
#data 0x7301
#data 0xA010
#data 0x0E34

loc_8c11a808:
#data 0xD220
#data 0x420B
	nop
#data 0x2008
#data 0x8B17
#data 0xA017
#data 0xE000

loc_8c11a816:
#data 0x62E3
#data 0x7226
#data 0x6321
#data 0x2338
#data 0x890E
#data 0xE024
#data 0x02EC
#data 0x7201
#data 0x0E24

loc_8c11a828:
#data 0xE50A
#data 0xE601

loc_8c11a82c:
#data 0x490B
#data 0x6483
#data 0xA007
	nop

loc_8c11a834:
#data 0xD215
#data 0x420B
	nop
#data 0x2008
#data 0x8B01

loc_8c11a83e:
#data 0xA001
#data 0xE001

loc_8c11a842:
#data 0xE002

loc_8c11a844:
#data 0x7F04
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
	rts
#data 0x6EF6

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

;==============================================
#data 0x000000Ff

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

;==============================================
#data 0x0000

#align4
loc_8C11A920:
#data bank01.loc_8c01357a

loc_8C11A924:
#data 0x8C289750

#align4
loc_8C11A928:
#data loc_8c115CB0

loc_8C11A92C:
#data loc_8c119342

loc_8C11A930:
#data loc_8c119700
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xD39F7FDc
#data 0x2F426E53
#data 0xE402430b
#data 0xD49ED39f
#data 0x430BD29c
#data 0xD29E6522
#data 0x420BD49b
#data 0x6BF20009
#data 0xDA9CDC9d
#data 0x4B157BFf
#data 0xED008F18
#data 0xD496E008
#data 0x65F3E600
#data 0x1FA1E720
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0x1F3753E3
#data 0x75044C0b
#data 0x3DB37D01
#data 0x7E108FE8
#data 0xD28FE008
#data 0xE600D489
#data 0xE72065F3
#data 0xF3E81F21
#data 0xE004FF37
#data 0xE00CF3E6
#data 0xE008FF37
#data 0xE010F3E6
#data 0x53E3FF37
#data 0x4C0B1F37
#data 0x7F247504
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xD3737FDc
#data 0x2F426E53
#data 0xE407430b
#data 0xD472D373
#data 0x430BD270
#data 0xD2726522
#data 0x420BD46f
#data 0x6BF20009
#data 0xDA70DC71
#data 0x4B157BFf
#data 0xED008F18
#data 0xD46AE008
#data 0x65F3E601
#data 0x1FA1E720
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0x1F3753E3
#data 0x75044C0b
#data 0x3DB37D01
#data 0x7E108FE8
#data 0xD263E008
#data 0xE601D45d
#data 0xE72065F3
#data 0xF3E81F21
#data 0xE004FF37
#data 0xE00CF3E6
#data 0xE008FF37
#data 0xE010F3E6
#data 0x53E3FF37
#data 0x4C0B1F37
#data 0x7F247504
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F124F22
#data 0xE13C7FDc
#data 0x0617D247
#data 0x2F426E53
#data 0xD24C6322
#data 0x6022061a
#data 0xE06C360c
#data 0xD3410366
#data 0xE412430b
#data 0xD441D342
#data 0x430BD23f
#data 0xD2416522
#data 0x420BD43e
#data 0xDB400009
#data 0xDC40E300
#data 0xA0201F38
#data 0x00096DF2
	nop
	nop
#data 0xD438E008
#data 0x65F3E603
#data 0xE7201FB1
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x1F3753E5
#data 0x75044C0b
#data 0x4D107E1c
#data 0xE0088BE0
#data 0xD428D22d
#data 0x65F3E603
#data 0xF3E81F21
#data 0xFF37E720
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x1F3753E5
#data 0x75044C0b
#data 0x4F167F24
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F124F22
#data 0xE13C7FDc
#data 0x0617D20f
#data 0x2F426E53
#data 0xD2146322
#data 0x6022061a
#data 0xE06C360c
#data 0xD3090366
#data 0xE417430b
#data 0xD409D30a
#data 0x430BD207
#data 0xD2096522
#data 0x420BD406
#data 0xDB080009
#data 0xDC08E300
#data 0xA0301F38
#data 0x00006DF2

#align4
loc_8C11ABCC:
#data loc_8c11C170
#data 0x8C2DEC98
#data 0x8C2DB048

#align4
loc_8C11ABD8:
#data bank17.loc_8c17C6C0

loc_8C11ABDC:
#data bank17.loc_8c17BF00
#data 0xE0000000

#align4
loc_8C11ABE4:
#data bank17.loc_8c17BE80
#data 0xF0000000
#data 0x8C2DE690
#data 0xD4BAE008
#data 0x65F3E603
#data 0xE7201FB1
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x1F3753E5
#data 0x75044C0b
#data 0x4D107E1c
#data 0xE0088BE0
#data 0xD4AAD2Ab
#data 0x65F3E603
#data 0xF3E81F21
#data 0xFF37E720
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x1F3753E5
#data 0x75044C0b
#data 0x4F167F24
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F124F22
#data 0xE13C7FDc
#data 0x0617D294
#data 0x2F426E53
#data 0xD2936322
#data 0x6022061a
#data 0xE06C360c
#data 0xD3910366
#data 0xE412430b
#data 0xD48BD390
#data 0x430BD28c
#data 0xD28F6522
#data 0x420BD488
#data 0xDB8E0009
#data 0xDC8EE300
#data 0xA0221F38
#data 0x00096DF2
	nop
	nop
#data 0xD482E008
#data 0x65F3E720
#data 0x1FB1E603
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x1F3753E5
#data 0x1F2852E6
#data 0x75044C0b
#data 0x4D107E1c
#data 0xE0088BDe
#data 0xD471D272
#data 0x1F21E603
#data 0xF3E865F3
#data 0xFF37E720
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x1F3753E5
#data 0x1F2852E6
#data 0x75044C0b
#data 0x4F167F24
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F124F22
#data 0xE13C7FDc
#data 0x0617D25c
#data 0x2F426E53
#data 0xD25B6322
#data 0x6022061a
#data 0xE06C360c
#data 0xD3590366
#data 0xE41F430b
#data 0xD453D358
#data 0x430BD254
#data 0xD2576522
#data 0x420BD450
#data 0xDB560009
#data 0xDC56E300
#data 0xA0221F38
#data 0x00096DF2
	nop
	nop
#data 0xD44AE008
#data 0x65F3E720
#data 0x1FB1E603
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x1F3753E5
#data 0x1F2852E6
#data 0x75044C0b
#data 0x4D107E1c
#data 0xE0088BDe
#data 0xD439D23a
#data 0x1F21E603
#data 0xF3E865F3
#data 0xFF37E720
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x1F3753E5
#data 0x1F2852E6
#data 0x75044C0b
#data 0x4F167F24
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x6E432FE6
#data 0xE400D32e
#data 0x4F22E040
#data 0xE3082E32
#data 0x1E41E206
#data 0x1E42E601
#data 0x1E43E504
#data 0x1E440E46
#data 0x1E461E55
#data 0x1E691E68
#data 0x1E3B1E4a
#data 0x1E2CE302
#data 0x1E4E1E4d
#data 0x0E461E3f
#data 0x0E46E044
#data 0x0E46E04c
#data 0xF49DE054
#data 0xE0580E46
#data 0xE05C0E46
#data 0xE0600E56
#data 0x0E36E303
#data 0x0E46E06c
#data 0x0E46E064
#data 0x0E46E068
#data 0xFE47E070
#data 0xFE47E074
#data 0xFE47E078
#data 0xFE47E07c
#data 0xFE477004
#data 0xFE477004
#data 0xFE477004
#data 0xFE477004
#data 0x430BD310
#data 0xD20A64E3
#data 0x420BD404
#data 0x4F2665E3
#data 0x65E3D30d
#data 0x432BD401
#data 0x00006EF6
#data 0x8C2DB048
#data 0xF0000000
#data 0x8C2DEC98
#data 0x8C2DE690

#align4
loc_8C11AEEC:
#data loc_8c11C170

loc_8C11AEF0:
#data bank17.loc_8c17C6C0

loc_8C11AEF4:
#data bank17.loc_8c17BF00
#data 0xE0000000

#align4
loc_8C11AEFC:
#data bank17.loc_8c17BE80
#data 0x03F3FFFf

#align4
loc_8C11AF04:
#data bank17.loc_8c17BF80

loc_8C11AF08:
#data bank17.loc_8c17C640
	nop
	nop
#data 0x6E432FE6
#data 0xE400D374
#data 0x4F22E040
#data 0xE3082E32
#data 0xE604E206
#data 0x1E51E501
#data 0x1E431E52
#data 0x1E440E46
#data 0x1E461E65
#data 0x1E591E58
#data 0x1E3B1E4a
#data 0x1E2CE302
#data 0x1E4E1E4d
#data 0x0E461E3f
#data 0x0E46E044
#data 0x0E46E04c
#data 0xF49DE054
#data 0xE0580E46
#data 0xE05C0E46
#data 0xE0600E66
#data 0x0E36E303
#data 0x0E46E06c
#data 0x0E46E064
#data 0x0E46E068
#data 0xFE47E070
#data 0xFE47E074
#data 0xFE47E078
#data 0xFE47E07c
#data 0xFE477004
#data 0xFE477004
#data 0xFE477004
#data 0xFE477004
#data 0x7014D356
#data 0x430B0E46
#data 0x4F2664E3
#data 0x65E3D255
#data 0x422BD453
#data 0x00096EF6
	nop
	nop
	nop
	nop
#data 0x6E432FE6
#data 0xE400D34c
#data 0x4F22E040
#data 0xE3082E32
#data 0xE604E206
#data 0x1E51E501
#data 0x1E431E52
#data 0x1E440E46
#data 0x1E461E65
#data 0x1E591E58
#data 0x1E3B1E4a
#data 0x1E2CE302
#data 0x1E4E1E4d
#data 0x0E461E3f
#data 0x0E46E044
#data 0x0E46E04c
#data 0xF49DE054
#data 0xE0580E46
#data 0xE05C0E46
#data 0xE0600E66
#data 0x0E36E303
#data 0x0E46E06c
#data 0x0E46E064
#data 0x0E46E068
#data 0xFE47E070
#data 0xFE47E074
#data 0xFE47E078
#data 0xFE47E07c
#data 0xFE477004
#data 0xFE477004
#data 0xFE477004
#data 0xFE477004
#data 0x7014D331
#data 0xD32D0E36
#data 0x64E3430b
#data 0xD22D4F26
#data 0xD42B65E3
#data 0x6EF6422b
	nop
	nop
	nop
	nop
#data 0x6E432FE6
#data 0xE400D324
#data 0x4F22E040
#data 0xE3082E32
#data 0xE604E206
#data 0x1E51E501
#data 0x1E431E52
#data 0x1E440E46
#data 0x1E461E65
#data 0x1E591E58
#data 0x1E3B1E4a
#data 0x1E2CE302
#data 0x1E4E1E4d
#data 0x0E461E3f
#data 0x0E46E044
#data 0x0E46E04c
#data 0xF49DE054
#data 0xE0580E46
#data 0xE05C0E46
#data 0xE0600E66
#data 0x0E36E303
#data 0x0E46E06c
#data 0x0E46E064
#data 0x0E46E068
#data 0xFE47E070
#data 0xFE47E074
#data 0xFE47E078
#data 0xFE47E07c
#data 0xFE477004
#data 0xFE477004
#data 0xFE477004
#data 0xFE477004
#data 0x7014D306
#data 0x430B0E46
#data 0x4F2664E3
#data 0x65E3D205
#data 0x422BD403
#data 0x00006EF6
#data 0x03F3FFFf

#align4
loc_8C11B0EC:
#data bank17.loc_8c17BF80
#data 0x8C2DB048

#align4
loc_8C11B0F4:
#data bank17.loc_8c17C6C0
#data 0x20000000
	nop
	nop
#data 0x6E432FE6
#data 0xE203D339
#data 0xD1394F22
#data 0xE401E06c
#data 0x2E324F12
#data 0x0537E33c
#data 0x1E41E300
#data 0x1E281E42
#data 0x6212051a
#data 0x0E56352c
#data 0x0E36905d
#data 0x430BD331
#data 0x4F1664E3
#data 0x65E3D231
#data 0x4F26D42f
#data 0x6EF6422b
#data 0x6E432FE6
#data 0xE203D329
#data 0xD1294F22
#data 0xE401E06c
#data 0x2E324F12
#data 0x0537E33c
#data 0x1E41D329
#data 0x051A1E42
#data 0x62121E28
#data 0x0E56352c
#data 0x0E36903d
#data 0x430BD321
#data 0x4F1664E3
#data 0x65E3D221
#data 0x4F26D41f
#data 0x6EF6422b
#data 0x6E432FE6
#data 0xE203D319
#data 0xD1194F22
#data 0xE401E06c
#data 0x2E324F12
#data 0x0537E33c
#data 0x1E41E300
#data 0x1E281E42
#data 0x6212051a
#data 0x0E56352c
#data 0x0E36901d
#data 0x430BD311
#data 0x4F1664E3
#data 0x65E3D211
#data 0x4F26D40f
#data 0x6EF6422b
#data 0x4F222FE6
#data 0xBE3BD40f
#data 0xDE0F0009
#data 0xBF97E500
#data 0x940964E3
#data 0xBFB3E500
#data 0x4F2634Ec
#data 0xE5009405
#data 0xAFCD34Ec
#data 0x00A06EF6
#data 0x018000C0
#data 0x00300008
#data 0x8C2DE690

#align4
loc_8C11B1F4:
#data bank17.loc_8c17BF80
#data 0x8C2DB048

#align4
loc_8C11B1FC:
#data bank17.loc_8c17C6C0
#data 0x20000000
#data 0x8C2A9F6c
#data 0x8C2AA02c
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x6D537FC0
#data 0xD4966E43
#data 0xD993D594
#data 0x0009490b
#data 0xD894D493
#data 0x0009480b
#data 0xDC93E004
#data 0xF3E82FC2
#data 0xE004FF37
#data 0xE008F3E6
#data 0xE008FF37
#data 0xE00CF3E6
#data 0xE00CFF37
#data 0xE010F3E6
#data 0xE010FF37
#data 0xE014F3E6
#data 0xE014FF37
#data 0xE018F3E6
#data 0xE018FF37
#data 0xE01CF3E6
#data 0xE01CFF37
#data 0xE020F3E6
#data 0xE020FF37
#data 0xE024F3E6
#data 0xE611DA82
#data 0xE740D47e
#data 0x4A0BFF37
#data 0xD47C65F3
#data 0xD57F7E24
#data 0x7DFF490b
#data 0x480BD479
#data 0xEB010009
#data 0x8B2C3DB7
#data 0x2FC2E004
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E008
#data 0xF3E6E008
#data 0xFF37E00c
#data 0xF3E6E00c
#data 0xFF37E010
#data 0xF3E6E010
#data 0xFF37E014
#data 0xF3E6E014
#data 0xFF37E018
#data 0xF3E6E018
#data 0xFF37E01c
#data 0xF3E6E01c
#data 0xFF37E020
#data 0xD466E020
#data 0xE024F3E6
#data 0xFF37E611
#data 0x4A0BE740
#data 0x7DFF65F3
#data 0x8DD33DB7
#data 0xD4607E24
#data 0x490BD564
#data 0xD45E0009
#data 0x0009480b
#data 0x2FC2E004
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E008
#data 0xF3E6E008
#data 0xFF37E00c
#data 0xF3E6E00c
#data 0xFF37E010
#data 0xF3E6E010
#data 0xFF37E014
#data 0xF3E6E014
#data 0xFF37E018
#data 0xF3E6E018
#data 0xFF37E01c
#data 0xF3E6E01c
#data 0xFF37E020
#data 0xD44CE020
#data 0xE024F3E6
#data 0xFF37E611
#data 0x4A0BE740
#data 0x7F4065F3
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0x6E537FDc
#data 0xD3392F42
#data 0xD540D43a
#data 0x0009430b
#data 0xD438D23f
#data 0x420BD53d
#data 0xD3370009
#data 0x430BD435
#data 0x6BF20009
#data 0xDA35DC36
#data 0x4B157BFf
#data 0xED008F1a
#data 0xD430E008
#data 0x65F3E720
#data 0x1FA1E609
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0x1F3553E3
#data 0x1F2652E4
#data 0x75044C0b
#data 0x3DB37D01
#data 0x7E148FE6
#data 0xD22BE008
#data 0xE609D422
#data 0x65F31F21
#data 0xE720F3E8
#data 0xE004FF37
#data 0xE00CF3E6
#data 0xE008FF37
#data 0xE010F3E6
#data 0x53E3FF37
#data 0x52E41F35
#data 0x4C0B1F26
#data 0x7F247504
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F124F22
#data 0xE13C7FBc
#data 0x0617D218
#data 0x2F426E53
#data 0xD2176322
#data 0x6022061a
#data 0xE06C360c
#data 0xD3150366
#data 0xE412430b
#data 0xD408D306
#data 0x430BD210
#data 0xD2076522
#data 0x420BD405
#data 0xDC070009
#data 0xA048DB05
#data 0x00006DF2

#align4
loc_8C11B478:
#data bank17.loc_8c17C6C0
#data 0x8C2AA02c
#data 0x8C2DB048

#align4
loc_8C11B484:
#data bank17.loc_8c17BF00
#data 0xE0000000

#align4
loc_8C11B48C:
#data bank17.loc_8c17BE80
#data 0x8C2AA1Ac
#data 0x8C2AA0Ec
#data 0x8C2A9F6c

#align4
loc_8C11B49C:
#data bank17.loc_8c17C640
#data 0xF0000000
#data 0x8C2DEC98
#data 0x8C2DE690

#align4
loc_8C11B4AC:
#data loc_8c11C170
#data 0x1FB1E008
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x53E5E00c
#data 0x52E61F37
#data 0xF3E61F28
#data 0xFF37E024
#data 0xF3E6E010
#data 0xFF37E028
#data 0xE60B53E9
#data 0x65F3D44c
#data 0xE7401F3b
#data 0x1F2C52E6
#data 0x75044C0b
#data 0x4D107E2c
#data 0xE0088BD2
#data 0x1F21D247
#data 0xFF37F3E8
#data 0xF3E6E004
#data 0xFF37E00c
#data 0xF3E6E008
#data 0xFF37E010
#data 0xF3E6E00c
#data 0xFF37E014
#data 0xF3E6E010
#data 0xFF37E018
#data 0x53E5E00c
#data 0x52E61F37
#data 0xF3E61F28
#data 0xFF37E024
#data 0xF3E6E010
#data 0xD437E028
#data 0x65F3E60b
#data 0xFF37E740
#data 0x1F3B53E5
#data 0x1F2C52E6
#data 0x75044C0b
#data 0x4F167F44
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b

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
#data 0x534CD423
#data 0x524F143b
#data 0x142E000b

;==============================================
	nop
	nop
#data 0xE000D520
#data 0x8143D41e
#data 0x145B6552
#data 0xD51E145c
#data 0x145E6552
#data 0x145F000b

;==============================================
	nop
	nop
	nop
	nop
#data 0xE330D417
#data 0x65038543
#data 0x8D0C3533
#data 0x7501E6Ff
#data 0x81436053
#data 0x4508D013
#data 0x6653524b
#data 0x524E0526
#data 0x0626D011
#data 0x000BE600
#data 0x6063
	nop
	nop
	nop
#data 0x8543D40b
#data 0x41156103
#data 0xE5FF8F0c
#data 0x6513D00a
#data 0x035E4508
#data 0x143ED007
#data 0x6013035e
#data 0xE50070Ff
#data 0x8143143b
#data 0x6053000b

;==============================================
#data 0x8C2DB048
#data 0xF0000000

#align4
loc_8C11B630:
#data 0x8C32B420

#align4
loc_8C11B634:
#data 0x8C2DECA0

#align4
loc_8C11B638:
#data 0x8C2DED60
#data 0x00000000

#align4
loc_8C11B640:
#data 0x6E432FE6
#data 0x6D632FD6
#data 0x2FB62FC6
#data 0x2FA6EB3c
#data 0xD4874F22
#data 0x4F12DC85
#data 0x634205B7
#data 0x73016AC2
#data 0x24320B1a
#data 0xD38385E1
#data 0x65E13ABc
#data 0x57E16603
#data 0x64A3430b
#data 0x24486403
#data 0x1A0A8F32
#data 0x6A32D37e
#data 0x89052AA8
#data 0x64E34A0b
#data 0x24486403
#data 0x6D438900

#align4
loc_8C11B690:
#data 0x6232D37a
#data 0x89032228
#data 0x6022D279
#data 0x8B178801

#align4
loc_8C11B6A0:
#data 0x430BD378
#data 0xD378E401
#data 0x64C265D3
#data 0x34BC430b
#data 0x420BD274
#data 0xDE75E400

#align4
loc_8C11B6B8:
#data 0x00094E0b
#data 0x8BFB2008
#data 0x0009A00b
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11B6D0:
#data 0x65D3D36d
#data 0x430B64C2
#data 0x34Bc

loc_8C11B6DA:
#data 0xA002
#data 0x0009E000

loc_8C11B6E0:
#data 0xE001

loc_8C11B6E2:
	lds.l @r15+,macl
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11B700:
#data 0x2FD62FE6
#data 0x4F124F22
#data 0x6E637FFc
#data 0x7E016D53
#data 0x7D012F42
#data 0x65D3B244
#data 0x63F2E43c
#data 0x62E30D47
#data 0xDD5CD65b
#data 0xD15C721f
#data 0x343C041a
#data 0x430863E3
#data 0x42114300
#data 0x334C7408
#data 0x2D322642
#data 0x721F8900

#align4
loc_8C11B740:
#data 0x7EFFD056
#data 0x423CE3Fb
#data 0x2122E400
#data 0xEEFF20E2
#data 0xA00D67E3
#data 0x0009E5F8
	nop
	nop
	nop
	nop

#align4
loc_8C11B760:
#data 0x77016362
#data 0x2342335c
#data 0x325C6262
#data 0x12E17508

#align4
loc_8C11B770:
#data 0x37336302
#data 0x66438BF4
#data 0x6543A006
	nop
	nop

#align4
loc_8C11B780:
#data 0x760160D2
#data 0x75040546

#align4
loc_8C11B788:
#data 0x36236212
#data 0xD1448BF8
#data 0x7F042142
#data 0x4F264F16
#data 0x000B6DF6
#data 0x00096EF6


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
	nop
	nop
	nop


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

#align4
loc_8C11B7E0:
#data 0x76016012
#data 0x75040546

#align4
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

#align4
loc_8C11B810:
#data 0x44112FE6
#data 0x4F124F22
#data 0xD3218B02
#data 0x342C6232

#align4
loc_8C11B820:
#data 0x6643D21b
#data 0x63224608
#data 0x363C4600
#data 0x21186162
#data 0x5461890f
#data 0xD20DEE3c
#data 0x632204E7
#data 0x3E3C0E1a
#data 0x211851Ea
#data 0xD3108B05
#data 0x64E3430b
#data 0x24486403
#data 0x8906

loc_8C11B852:
#data 0xA006
#data 0x0009E000
	nop
	nop
	nop
	nop

loc_8C11B860:
#data 0xE001

loc_8C11B862:
	lds.l @r15+,macl
#data 0x000B4F26
#data 0x00006EF6
#data 0x8C2DE690
#data 0x8C2DEE4c

#align4
loc_8C11B874:
#data bank17.loc_8c17C8A0

loc_8C11B878:
#data bank16.loc_8c16BBE8
#data 0x8C2AA50c
#data 0x8C2AA510

#align4
loc_8C11B884:
#data bank17.loc_8c17AA40

loc_8C11B888:
#data bank12.loc_8c129830

loc_8C11B88C:
#data bank17.loc_8c17ADB0

loc_8C11B890:
#data 0x8C2AA26c

#align4
loc_8C11B894:
#data 0x8C2AA270

#align4
loc_8C11B898:
#data bank16.loc_8c16BBE4

loc_8C11B89C:
#data bank16.loc_8c16BBE0

loc_8C11B8A0:
#data 0x8C2DEE54
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2F527FF8
#data 0x45086563
#data 0x63F21F61
#data 0x353C4508
#data 0xAFA55552
#data 0x00097F08
	nop
	nop
	nop
	nop
#data 0x44114F12
#data 0xD3858B02
#data 0x342C6232
#data 0x6643D284
#data 0x63224608
#data 0x363C4600
#data 0x21186162
#data 0x54618909
#data 0xD280E03c
#data 0x63220407
#data 0x303C001a
#data 0x2118510a
#data 0xE0008906
#data 0x4F16000b

;==============================================
	nop
	nop
	nop
	nop
#data 0x66535203
#data 0x57075104
#data 0xD3770127
#data 0x051A373c
#data 0x8F064515
#data 0x6276E400
#data 0x34537402
#data 0x8FFA2622
#data 0xE0017604
#data 0x4F16000b

;==============================================
	nop
	nop
	nop
	nop


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
#data 0x7FF84F22
#data 0x64F3D365
#data 0x430B65F3
#data 0x60F27404
#data 0x4F267F08
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop


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
	nop

#align4
loc_8C11B9A0:
#data 0x00BE60D2
#data 0x8D1B88Ff
#data 0x64936103
#data 0x6673

loc_8C11B9AE:
#data 0x6213
#data 0x8B0D2248
#data 0x02EE60D2
#data 0x0E26224b
#data 0xA0176053
#data 0x0009306c
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11B9D0:
#data 0xAFEC4400
#data 0x00097601
	nop
	nop
	nop
	nop

#align4
loc_8C11B9E0:
#data 0x7B047E04
#data 0x75207A01

#align4
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

loc_8c11ba00:
#data 0x4411
#data 0x8B0D
#data 0xE21F
#data 0xE501
#data 0x2249
#data 0x452C
#data 0xD23D
#data 0xE3FB
#data 0x443C
#data 0x6022
#data 0x6343
#data 0x4308
#data 0x013E
#data 0x6557
#data 0x2159
#data 0x0316

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
#data 0xD22F
#data 0x6753
#data 0x4708
#data 0xD02F
#data 0x4700
#data 0xE13C
#data 0x4F12
#data 0x6322
#data 0xE600
#data 0x5542
#data 0x373C
#data 0x6202
#data 0x5771
#data 0xE3C0
#data 0x2539
#data 0x0717
#data 0x071A
#data 0x372C
#data 0x537C
#data 0x527D
#data 0x253B
#data 0x262B
#data 0x1452
#data 0x1463
	rts
	lds.l @r15+,macl

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x4F22
#data 0xD323
#data 0x430B
	nop
#data 0xD21D
#data 0xDC22
#data 0x6E22
#data 0xA00B
#data 0xED00
	nop
	nop
	nop
	nop
#data 0x52EA
#data 0x2228
#data 0x8B01
#data 0xB09B
#data 0x64E3
#data 0x7E3C
#data 0x7D01
#data 0x62C2
#data 0x3D23
#data 0x8BF5
#data 0x4F26
#data 0x6CF6
#data 0x6DF6
	rts
#data 0x6EF6

;==============================================
	nop
#data 0xD317
	rts
#data 0x2342

;==============================================
	nop
	nop
	nop
	nop
	nop

loc_8C11BAC0:
mov r4,r0
cmp/eq 0x08,r0
bf loc_8C11BAD0
bra loc_8C11BB68
mov 0x00,r4
	nop
	nop
	nop


loc_8C11BAD0:
cmp/eq 0x10,r0
bf loc_8C11BAE0
bra loc_8C11BB68
mov 0x01,r4
	nop
	nop
	nop
	nop


loc_8C11BAE0:
mov r4,r0
cmp/eq 0x20,r0
bf loc_8C11BB20
bra loc_8C11BB68
mov 0x02,r4
#data 0x0000
#data 0x8C2DEE54
#data 0x8C2AA26c
#data 0x8C2DE690
#data 0xA4000000

#align4
loc_8C11BAFC:
#data bank17.loc_8c17CA00

loc_8C11BB00:
#data bank16.loc_8c16BBE4

loc_8C11BB04:
#data 0x8C2AA270

#align4
loc_8C11BB08:
#data bank17.loc_8c17C9C0
#data 0x8C2DE694

#align4
loc_8C11BB10:
#data bank16.loc_8c16BBE8
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C11BB20:
cmp/eq 0x40,r0
bf loc_8C11BB30
bra loc_8C11BB68
mov 0x03,r4
	nop
	nop
	nop
	nop


loc_8C11BB30:
mov.w @(loc_8C11BC18,pc),r3 ; r3 set to 0x80
cmp/eq r3,r4
bf loc_8C11BB40
bra loc_8C11BB68
mov 0x04,r4
	nop
	nop
	nop


loc_8C11BB40:
mov.w @(loc_8C11BC1A,pc),r2 ; r2 set to 0x100
cmp/eq r2,r4
bf loc_8C11BB50
bra loc_8C11BB68
mov 0x05,r4
	nop
	nop
	nop


loc_8C11BB50:
mov.w @(loc_8C11BC1C,pc),r1 ; r1 set to 0x200
cmp/eq r1,r4
bf loc_8C11BB60
bra loc_8C11BB68
mov 0x06,r4
	nop
	nop
	nop

#align4
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

#align4
loc_8C11BBA0:
#data 0xE700D31f
#data 0x6073D120
#data 0x45152342
#data 0xD21DD31f
#data 0x21722252
#data 0x8F072372
#data 0xE6Ff

loc_8C11BBBA:
#data 0x7001
#data 0x3053146a
#data 0x146E147b
#data 0x743C8FF9

#align4
loc_8C11BBC8:
#data 0x0009000b

;==============================================
	nop
	nop


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

;==============================================

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
#data 0x8C2DE694
#data 0x8C2DEE4c
#data 0x8C2DEE54

#align4
loc_8C11BC30:
#data 0xFF800000
	nop
	nop
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop

#align4
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
	nop
	nop
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop
	nop


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

;==============================================

#align4
loc_8C11BD3C:
#data 0x8C2DE690

#align4
loc_8C11BD40:
#data 0x8C2AA274

#align4
loc_8C11BD44:
#data bank17.loc_8c17C960

loc_8C11BD48:
#data 0x8C2DE694

#align4
loc_8C11BD4C:
#data 0x8C2DEE54

#align4
loc_8C11BD50:
#data 0x8C2DEE4c

#align4
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


loc_8C11BD70:
mov.l @(loc_8C11BF80,pc),r6 ; r6 set to 0x8C32B420
mov r5,r0
mov 0xFF,r7 ; r7 set to 0xFFFFFFFf
mov.l r4,@(0x18,r6)  ; r6 ??? bc r4 is ???
mov.w r0,@(0x04,r6)
mov 0x00,r6 ; r6 set to 0x00
bra loc_8C11BD90
mov r0,r1

#align4
loc_8C11BD80:
#data 0x81436073
#data 0x80422401
#data 0x81426063
#data 0x74088043

#align4
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

loc_8C11BDB0:
mov.l @(loc_8C11BF88,pc),r3 ; r3 set to 0x8C32B424
mov.l @(loc_8C11BF8C,pc),r2 ; r2 set to 0x8C32B438
mov.w @r3,r5
bra loc_8C11BD70
mov.l @r2,r4
	nop
	nop
	nop


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
	nop


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
	nop
	nop
	nop


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
#data 0x6043D256
#data 0x63224008
#data 0x000B4000
#data 0x0009003d
#data 0xD3527FF8
#data 0x44004408
#data 0x364C6632
#data 0x20088562
#data 0x6261890e
#data 0x84632F22
#data 0x600CD24e
#data 0x46086603
#data 0x1F014608
#data 0x440864F2
#data 0x422B4408
#data 0x00097F08
#data 0x7F08000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x0009AFDe
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11BE90:
#data 0x60432FE6
#data 0xE3FC2FD6
#data 0x750F2FC6
#data 0x88102FB6
#data 0x453C2FA6
#data 0xEA012F96
#data 0x8F29D936
#data 0x6C63E600
#data 0x6463EDFf

#align4
loc_8C11BEB4:
#data 0x60C367C3
#data 0x6EA34000
#data 0x6B634708
#data 0x4708309c

#align4
loc_8C11BEC4:
#data 0x23E86301
#data 0x24488B0a
#data 0x74018F01
#data 0x6D73

loc_8C11BED2:
#data 0x3453
#data 0xA004890b
	nop
	nop
	nop
	nop

loc_8C11BEE0:
#data 0x6463

loc_8C11BEE2:
#data 0xE210
#data 0x3B237B01
#data 0x8FEB3EEc
#data 0x7701

loc_8C11BEEE:
#data 0xE204
#data 0x3C237C01
#data 0xA01F8BDe
	nop
	nop
	nop
	nop

#align4
loc_8C11BF00:
#data 0x6E936763
#data 0x66936463
#data 0x4A5C7E08
#data 0xEDFF36E2
#data 0x8D116CA3
#data 0x7CFf

loc_8C11BF16:
#data 0x6261
#data 0x8B0922C8
#data 0xA00B6D73
#data 0x00096453
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11BF30:
#data 0x36E27602
#data 0x77108FEf

#align4
loc_8C11BF38:
#data 0x89003453
#data 0xEDFf

loc_8C11BF3E:
#data 0x69F6
#data 0x6AF660D3
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6


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
#data 0x0000

#align4
loc_8C11BF80:
#data 0x8C32B420

#align4
loc_8C11BF84:
#data 0x8C2AA2B0

#align4
loc_8C11BF88:
#data 0x8C32B424

#align4
loc_8C11BF8C:
#data 0x8C32B438

#align4
loc_8C11BF90:
#data 0x00010000

#align4
loc_8C11BF94:
#data loc_8c11F7F0
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop


loc_8C11C010:
mov.l @(loc_8C11C030,pc),r3 ; r3 set to bank16.loc_8c16BBEc
rts
mov.l r4,@r3

;==============================================
#data 0x0000

#align4
loc_8C11C018:
#data 0x8C32B420

#align4
loc_8C11C01C:
#data 0x8C32B4A0

#align4
loc_8C11C020:
#data bank17.loc_8c17A7C8

loc_8C11C024:
#data 0x8C32B421

#align4
loc_8C11C028:
#data bank13.loc_8c13ef4c

loc_8C11C02C:
#data bank17.loc_8c17A7A0

loc_8C11C030:
#data bank16.loc_8c16BBEc
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x000BD038
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x000BD335
#data 0x00092342
	nop
	nop
	nop
	nop


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

#align4
loc_8C11C070:
#data 0xD32E7FF8
#data 0x2362E600
#data 0x9252D12d
#data 0xD72F2122
#data 0xD52CD42d
#data 0x2542A013
	nop
	nop
	nop
	nop

#align4
loc_8C11C090:
#data 0x2F62A009
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11C0A0:
#data 0x720162F2
#data 0x2F22

loc_8C11C0A6:
#data 0x63F2
#data 0x8BF93373
#data 0x2542

loc_8C11C0AE:
#data 0x6352
#data 0x1F313340
#data 0x000B8BEc
#data 0x00097F08
	nop
	nop

#align4
loc_8C11C0C0:
#data 0x4F222FE6
#data 0xD41ED31f
#data 0x0009430b
#data 0x420BD21e
#data 0xD31E0009
#data 0xE400430b
#data 0x6E22D21d
#data 0x89012EE8
#data 0x00094E0b

#align4
loc_8C11C0E4:
#data 0xD41BD21c
#data 0x0009420b
#data 0x6E32D31b
#data 0x89012EE8
#data 0x00094E0b

#align4
loc_8C11C0F8:
#data 0xD416D319
#data 0x0009430b
#data 0xD40FD218
#data 0x0009420b
#data 0xD20DD018
#data 0x6322D116
#data 0x6E022132
#data 0x89012EE8
#data 0x00094E0b

#align4
loc_8C11C11C:
#data 0x000B4F26
#data 0x12016EF6

#align4
loc_8C11C124:
#data bank13.loc_8c13f761

loc_8C11C128:
#data bank16.loc_8c16BBF0
#data 0xFFA00020
#data 0xFFA0002c
#data 0xFFA00040
#data 0x00008201
#data 0x00010000
#data 0x8C2DB048

#align4
loc_8C11C144:
#data bank17.loc_8c17B880

loc_8C11C148:
#data bank12.loc_8c122280

loc_8C11C14C:
#data bank17.loc_8c17B420

loc_8C11C150:
#data bank16.loc_8c16BC04
#data 0x8C2AA2B8

#align4
loc_8C11C158:
#data bank17.loc_8c17BA20

loc_8C11C15C:
#data bank16.loc_8c16BC08

loc_8C11C160:
#data bank17.loc_8c17B660

loc_8C11C164:
#data bank17.loc_8c17B4C0
#data 0x8C2AA508

#align4
loc_8C11C16C:
#data bank16.loc_8c16BC0c


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
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x6243D52f
#data 0x44089059
#data 0x342C6652
#data 0x63524408
#data 0xD030066e
#data 0xD430014e
#data 0x63521318
#data 0x904C2469
#data 0x42285238
#data 0x242B4218
#data 0x0346000b

;==============================================
	nop
	nop
#data 0xE215D523
#data 0x66529042
#data 0x066E6352
#data 0x0346E054
#data 0x6352E040
#data 0x033ED425
#data 0x24697058
#data 0x243B432d
#data 0x000B6352
#data 0x00090346
	nop
	nop
	nop
	nop
#data 0x902BD517
#data 0x63526652
#data 0xE054066e
#data 0xE0440346
#data 0xD41B6352
#data 0x7054023e
#data 0x42282469
#data 0x42084208
#data 0x000B242b
#data 0x00090346
	nop
	nop
	nop
	nop
#data 0x4408D50b
#data 0x66529012
#data 0x066E6352
#data 0x024ED011
#data 0x940CE054
#data 0xE20D0326
#data 0x24696352
#data 0x7044033e
#data 0x243B432d
#data 0x000B6352
#data 0x00940346
#data 0x9FFF0098

#align4
loc_8C11C2B0:
#data 0x8C2DEC98

#align4
loc_8C11C2B4:
#data 0x00600608

#align4
loc_8C11C2B8:
#data bank13.loc_8c13f0C4

loc_8C11C2BC:
#data 0x8C2AA524

#align4
loc_8C11C2C0:
#data bank17.loc_8c17BF80

loc_8C11C2C4:
#data bank13.loc_8c13f0Cc
#data 0xFCFFFFFf
#data 0xFFDFFFFf
#data 0xFFEFFFFf

#align4
loc_8C11C2D4:
#data bank13.loc_8c13f494
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop


loc_8C11C420:
mov.l @(loc_8C11C44C,pc),r3 ; r3 set to 0x8C11D630
mova @(loc_8C11C448,pc),r0  ; r0 init to 0x8C11C448
jmp @r3
fmov.s @r0,fr4
	nop
	nop
	nop
	nop

#align4
loc_8C11C430:
#data 0xE001000b

;==============================================

#align4
loc_8C11C434:
#data 0x03F3FFFf

#align4
loc_8C11C438:
#data bank17.loc_8c17BF80

loc_8C11C43C:
#data 0x8C2DB048

#align4
loc_8C11C440:
#data bank17.loc_8c17C6C0

loc_8C11C444:
#data bank17.loc_8c17CF80

loc_8C11C448:
#data 0x47C35000

#align4
loc_8C11C44C:
#data loc_8c11D630

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

loc_8C11C4FE:
#data 0xFF0F

loc_8C11C500:
#data 0x0080
#data 0x0000

#align4
loc_8C11C504:
#data 0x8C2AA518

#align4
loc_8C11C508:
#data 0x8C2AA51C

#align4
loc_8C11C50C:
#data 0x8C2AA4C0

#align4
loc_8C11C510:
#data 0xA05F689C

#align4
loc_8C11C514:
#data 0x8C32B420

#align4
loc_8C11C518:
#data 0x8C2DEE5C

#align4
loc_8C11C51C:
#data 0x00008000

#align4
loc_8c11c520:
#data bank13.loc_8c13f0ac

loc_8C11C524:
#data 0x8C2AA538

#align4
loc_8C11C528:
#data 0x00010000
	nop
	nop


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
#data 0xAF26
#data 0xE701
	nop
	nop
	nop
	nop
	nop
	nop

loc_8C11C610:
bra loc_8C11C450
mov 0x00,r7
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD318D222
#data 0x2342422b
	nop
	nop
	nop
	nop
#data 0x7FFC4F22
#data 0x6343D21e
#data 0x420B2F42
#data 0x7F082F46
#data 0x000B4F26
	nop
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

#align4
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

#align4
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

#align4
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
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x7FFC4F22
#data 0x6343D245
#data 0x420B2F42
#data 0x7F082F46
#data 0x000B4F26
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x432BD33f
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4408D53c
#data 0x66529070
#data 0x066ED13c
#data 0x2619D03a
#data 0x024E6352
#data 0x226B9068
#data 0x0326000b

;==============================================
	nop
	nop
#data 0x432BD337
	nop
	nop
	nop
	nop
	nop
	nop


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
#data 0xE405D32e
#data 0x6632D52e
#data 0x74FF6366
#data 0x25322448
#data 0x75048FFa
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop
#data 0xE505D326
#data 0x6732D626
#data 0x45106176
#data 0x31386366
#data 0x8FF92412
#data 0x000B7404
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FF04F22
#data 0xED03D31c
#data 0xEA01D91c
#data 0xEC006032
#data 0xEB055EFb
#data 0x2F426002
#data 0x1F514029
#data 0x1F622D09
#data 0x63E31F73
#data 0x890423A8
#data 0x66C3D415
#data 0x490B67F3
#data 0x7C0165D3
#data 0x3CB34E21
#data 0x7F108BF3
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x00000094

#align4
loc_8C11C7DC:
#data bank17.loc_8c17A6A0

loc_8C11C7E0:
#data bank17.loc_8c17A620
#data 0x8C2DEC98

#align4
loc_8C11C7E8:
#data bank13.loc_8c13f4A4
#data 0xE7FFFFFf

#align4
loc_8C11C7F0:
#data bank17.loc_8c17E360

loc_8C11C7F4:
#data 0xFF000000

#align4
loc_8C11C7F8:
#data bank17.loc_8c17E200
#data 0x8C2AA508
#data 0x8C2AA544
#data 0x8C2DB04c

#align4
loc_8C11C808:
#data bank17.loc_8c17BCA0
#data 0x8C2DB048
#data 0x2439E303
#data 0x88016043
#data 0xE4008B00
#data 0x000BD342
#data 0x00092342
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4528D13e
#data 0x6212D33e
#data 0x000B253b
#data 0x00092252
#data 0x2FE6E501
#data 0x737F6353
#data 0xE6004F22
#data 0x2348DE39
#data 0x8D026063
#data 0x605381E4
#data 0xD33781E4
#data 0x24386063
#data 0x81E58D02
#data 0x81E56053
#data 0xD33485E5
#data 0x85E46503
#data 0x6403430b
#data 0x55E1DE32
#data 0xBDD156E2
#data 0xD33164E2
#data 0xF738D231
#data 0xD131D332
#data 0xF6284F26
#data 0xF518D231
#data 0x422BF438
#data 0x00096EF6
	nop
	nop
	nop
	nop
#data 0x7FFC4F22
#data 0x430BD32c
#data 0x60F264F3
#data 0x4F267F04
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x432BD326
#data 0x0009E500
	nop
	nop
	nop
	nop
#data 0x432BD323
#data 0x0009E500
	nop
	nop
	nop
	nop
#data 0x432BD320
#data 0x0009E500
	nop
	nop
	nop
	nop
#data 0x432BD31d
#data 0x0009E500
	nop
	nop
	nop
	nop
#data 0x432BD31a
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x432BD317
#data 0x0009E500
	nop
	nop
	nop
	nop
#data 0x432BD314
#data 0x0000E500

#align4
loc_8C11C928:
#data bank16.loc_8c16BBF4
#data 0x8C2DB04c
#data 0x00800000
#data 0x8C2DEE5c
#data 0x00008000

#align4
loc_8C11C93C:
#data bank17.loc_8c17B040

loc_8C11C940:
#data bank16.loc_8c16BBF8
#data 0x8C2D6BA4
#data 0x8C2D6BA0
#data 0x8C2D6BAc
#data 0x8C2D6BA8

#align4
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
	nop
	nop
	nop
	nop

#align4
loc_8C11C980:
#data 0xE6009380
#data 0x4408D541
#data 0x2532D242
#data 0xD740D342
#data 0x1561917a
#data 0x17312722
#data 0x15729375
#data 0x1573E702
#data 0x223B5251
#data 0x92701521
#data 0x15161545
#data 0xD13B1527
#data 0x1518D23b
#data 0xD13B1529
#data 0x157AD23b
#data 0x152C151b
#data 0x6253C73a
#data 0xF48D7248
#data 0xD33CE101
#data 0xD13A151d
#data 0xF308156e
#data 0xF23AC736
#data 0xF308E203
#data 0xF537E04c
#data 0xF308C734
#data 0xF537E050
#data 0xF547E054
#data 0xF547E058
#data 0x0566E044
#data 0x000B2122
#data 0x00092362
	nop
	nop


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
	nop


loc_8C11CA30:
mov.l @(loc_8C11CAC8,pc),r3 ; r3 set to 0x8C17ADA8
mov 0x00,r5 ; r5 set to 0x00
jmp @r3
mov 0x01,r4
	nop
	nop
	nop
	nop


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
#data 0x6032D31c
#data 0x8B0B8801
#data 0xE044D40c
#data 0x0416E100
#data 0x5141E2Ef
#data 0x2129E303
#data 0xD1131411
#data 0x2132A008
#data 0xE500D215
#data 0x6453422b
	nop
	nop
	nop
	nop
#data 0x0009000b

;==============================================
#data 0x010001F8
#data 0x04001000

#align4
loc_8C11CA8C:
#data 0x8C2AA2B8
#data 0x8C2AA4B0
#data 0x8C2AA4C8
#data 0x8C2AA4E8
#data 0x8C2AA558
#data 0x8C2DB048
#data 0xACC00000
#data 0x00400000
#data 0x428C0000
#data 0x40A00000
#data 0x41C80000

#align4
loc_8C11CAB8:
#data 0x8C2AA4B8
#data 0x8C2AA4Bc

#align4
loc_8C11CAC0:
#data 0x8C2AA2Cc

#align4
loc_8C11CAC4:
#data 0x8C2AA4C0

#align4
loc_8C11CAC8:
#data bank17.loc_8c17ADA8
	nop
	nop


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
	nop
	nop
	nop
	nop


loc_8C11CAF0:
bra loc_8C11CB12
mov r5,r14
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C11CB00:
bra loc_8C11CB12
mov 0x02,r14
	nop
	nop
	nop
	nop
	nop
	nop

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
	nop
	nop
	nop


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
#data 0x6032D376
#data 0x000BCB02
#data 0x00092302
	nop
	nop
#data 0xE2FDD372
#data 0x21296132
#data 0x2312000b

;==============================================
	nop
	nop
#data 0xE300D06f
#data 0x2032000b

;==============================================
	nop
	nop
	nop
	nop
#data 0xA6ADE50a
#data 0x00096453
	nop
	nop
	nop
	nop


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

#align4
loc_8C11CB90:
#data 0x6022D25f
#data 0x8B038801
#data 0xD364D163
#data 0x2342241b

#align4
loc_8C11CBA0:
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C11CC00:
mov 0x44,r0 ; r0 set to 0x44
mov.l @(r0,r14),r2
tst r2,r2
bf loc_8C11CC10
bra loc_8C11CC2e
mov.l @(0x08,r15),r13
	nop
	nop


loc_8C11CC10:
mov.l @(r0,r14),r0
cmp/eq 0x02,r0
bf loc_8C11CC20
mov r8,r13
add r7,r13
bra loc_8C11CC2e
add r10,r13
	nop

#align4
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
	nop
	nop
	nop
	nop


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

#align4
loc_8C11CD10:
#data 0x8C2AA4C0

#align4
loc_8C11CD14:
#data 0x8C2AA2F0

#align4
loc_8C11CD18:
#data bank17.loc_8c17ADA8
#data 0x8C2AA2Bc
#data 0x8C2AA520

#align4
loc_8C11CD24:
#data 0x8C2AA4Bc
#data 0xA0000000
#data 0x8C2AA2E4

#align4
loc_8C11CD30:
#data 0x8C2AA2B8

#align4
loc_8C11CD34:
#data 0x8C2AA4B8

#align4
loc_8C11CD38:
#data 0x42C80000
	nop
	nop

#align4
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
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop


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
#data 0x0000

#align4
loc_8C11CED4:
#data 0x8C2AA50c

#align4
loc_8C11CED8:
#data 0x8C2AA2B8
	nop
	nop

#align4
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
	nop
	nop
	nop
	nop
	nop


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
loc_8c11cfda:
#data 0x0100
loc_8c11cfdc:
#data 0x8C2AA2B8

#align4
loc_8C11CFE0:
#data bank17.loc_8c17BA80
loc_8c11cfe4:
#data 0x8C2DB04c
loc_8c11cfe8:
#data 0x00800000
loc_8c11cfec:
#data 0x8C2AA540

#align4
loc_8C11CFF0:
#data loc_8c11BCF0

loc_8C11CFF4:
#data 0x8C2AA4C0
	nop
	nop
	nop
	nop

#align4
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
	nop
	nop
	nop
	nop
	nop
	nop


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
#data 0xD319
#data 0xD21A
#data 0x6132
#data 0x2129
	rts
#data 0x2312

;==============================================
	nop
	nop
#data 0xD315
#data 0xD217
#data 0x6032
#data 0x202B
	rts
#data 0x2302

;==============================================

loc_8C11D0DC:
#data 0x01E0
#data 0x0000

#align4
loc_8C11D0E0:
#data 0x8C2DB068

#align4
loc_8C11D0E4:
#data 0x8C2DE698

#align4
loc_8C11D0E8:
#data 0x8C2DEC98

#align4
loc_8C11D0EC:
#data 0x8C2DEC9C

#align4
loc_8C11D0F0:
#data 0x8C2DEE5C

#align4
loc_8c11d0f4:
#data bank12.loc_8c122160

loc_8C11D0F8:
#data 0x3CA3D70A

#align4
loc_8c11d0fc:
#data bank17.loc_8c17e360

loc_8C11D100:
#data 0xFF000038

#align4
loc_8C11D104:
#data 0xFF00003C

#align4
loc_8C11D108:
#data 0x8C2AA520

#align4
loc_8c11d10c:
#data bank17.loc_8c17cba0

loc_8C11D110:
#data 0x8C2AA50C

#align4
loc_8C11D114:
#data 0x8C2AA2B8

#align4
loc_8c11d118:
#data bank17.loc_8c17b660

loc_8C11D11C:
#data 0x8C2DB048

#align4
loc_8c11d120:
#data bank17.loc_8c17b4c0

loc_8C11D124:
#data 0x8C2AA508
#data 0xA2BC
#data 0x8C2A
#data 0xFFFF
#data 0xFFEF
#data 0x0000
#data 0x0010
	nop
	nop
	nop
	nop
	nop
	nop

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
#data 0x93500002
#data 0xCBE02039
#data 0x4411400e
#data 0xE3048B02
#data 0x8B003437
#data 0xD624E402
#data 0xD124E3Fe
#data 0x6560E201
#data 0xD029E7Ff
#data 0x26302359
#data 0x2120D321
#data 0x2341710c
#data 0xD2204408
#data 0x253BE301
#data 0x22729335
#data 0x2172D220
#data 0xF3462650
#data 0xF23A0002
#data 0x400E2039
#data 0xE10ED01d
#data 0x2012000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD418D31a
#data 0x0009432b
	nop
	nop
	nop
	nop
#data 0x000BD017
#data 0x00096002
	nop
	nop
	nop
	nop
#data 0x000BD014
#data 0x00096002
	nop
	nop
	nop
	nop
#data 0x000BD311
#data 0x00096032
	nop
	nop
	nop
	nop
#data 0x000BD20e
#data 0x6022

;==============================================

loc_8C11D236:
#data 0xFF0f

#align4
loc_8C11D238:
#data 0xFFD80004

#align4
loc_8C11D23C:
#data 0xFFD80000

#align4
loc_8C11D240:
#data 0xFFD80010

#align4
loc_8C11D244:
#data 0xFFD80008

#align4
loc_8C11D248:
#data 0xFFD8000c

#align4
loc_8C11D24C:
#data 0x3FA3D70a

#align4
loc_8C11D250:
#data 0x8C2AA53c

#align4
loc_8C11D254:
#data 0x8C2D5558

#align4
loc_8C11D258:
#data bank16.loc_8c16BC10

loc_8C11D25C:
#data bank17.loc_8c17CBE0
#data 0x8C2D557c
#data 0x8C2D555c
#data 0x8C2D55B0
#data 0x8C2D55Bc
#data 0x67432FE6
#data 0x2FD6D544
#data 0x4F22DD42
#data 0x85D26352
#data 0x8F424311
#data 0xD3416403
#data 0x60326E52
#data 0x4E08E303
#data 0x0EEED140
#data 0xD23E6512
#data 0x35375EE7
#data 0x8D073E2c
#data 0xA01DE604
#data 0x0009344c
	nop
	nop
	nop
	nop
#data 0x89053567
#data 0x44006243
#data 0x342CA012
	nop
	nop
#data 0x3527E205
#data 0xA00B8904
#data 0x00094408
	nop
	nop
#data 0x0009AFFe
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x6063D32d
#data 0x6143430b
#data 0x6403E100
#data 0x6613A00a
#data 0x8F064415
#data 0x63E66513
#data 0x35437501
#data 0x8FFA2732
#data 0x76017704
#data 0x360385D3
#data 0x4F268BF2
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x67432FD6
#data 0xD5182FC6
#data 0xDB162FB6
#data 0x85B26352
#data 0x8F544311
#data 0xD3156403
#data 0x60326152
#data 0x4108E303
#data 0xD113021e
#data 0xD2135527
#data 0x6622351c
#data 0x89073637
#data 0x344CA026
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x3617E104
#data 0x63438904
#data 0xA0194400
#data 0x0009343c
#data 0x3637E305
#data 0xA0138904
#data 0x00094408
	nop
	nop
#data 0x0009AFFe
#data 0x8C2DEE5c
#data 0x8C2D5700
#data 0x8C2AA2C0
#data 0xA5000000
#data 0x8C2AA538

#align4
loc_8C11D398:
#data bank12.loc_8c129128
	nop
	nop
#data 0x9282E300
#data 0x9C813347
#data 0x6133343e
#data 0x44216D33
#data 0x372CA012
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x8F074415
#data 0x625166D3
#data 0x36437605
#data 0x2721750a
#data 0x77028FF9
#data 0x35CC7105
#data 0x310385B3
#data 0x6BF68BF0
#data 0x000B6CF6
#data 0x00096DF6
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xBFCD4F22
#data 0xD2180009
#data 0xBFD96503
#data 0x64036422
#data 0x4F26AFCe
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x7FF84F22
#data 0x63531F41
#data 0x2F562F52
#data 0xD30F52F2
#data 0x2F26430b
#data 0x4F267F10
#data 0x0009000b

;==============================================
	nop
	nop
#data 0xD30B6447
#data 0x2469E607
#data 0x44086557
#data 0x44082569
#data 0x44004508
#data 0x000B345c
#data 0x10002342
#data 0x00001400

#align4
loc_8C11D4B0:
#data 0xFFD8000c

#align4
loc_8C11D4B4:
#data 0x8C2AA53c

#align4
loc_8C11D4B8:
#data 0x8C2D5748

#align4
loc_8C11D4BC:
#data bank17.loc_8c17E2C0
#data 0x8C2AA4C4
	nop
	nop
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C11D500:
mov.l @(loc_8C11D6D8,pc),r3 ; r3 set to 0xFF0000Ff
bra loc_8C11D534
mov.l r3,@r14
	nop
	nop
	nop
	nop
	nop


loc_8C11D510:
mov.l @(loc_8C11D6DC,pc),r1 ; r1 set to 0xFFFF0000
bra loc_8C11D532
nop
	nop
	nop
	nop
	nop
	nop


loc_8C11D520:
mov.l @(loc_8C11D6E0,pc),r2 ; r2 set to 0xFF00FF00
bra loc_8C11D534
mov.l r2,@r14
	nop
	nop
	nop
	nop
	nop

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
	nop
	nop
	nop
	nop
	nop
	nop
	nop

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


loc_8C11D5A0:
tst r4,r4
bf loc_8C11D5B0
mov.l @(loc_8C11D6F0,pc),r4 ; r4 set to 0x8C11D4D0
bra loc_8C11D5B4
mov 0x00,r5
	nop
	nop
	nop


loc_8C11D5B0:
mov.l @(loc_8C11D6F4,pc),r4 ; r4 set to 0x8C11D590
mov 0x00,r5 ; r5 set to 0x00

loc_8C11D5B4:
mov.l @(loc_8C11D6F8,pc),r2 ; r2 set to 0x8C17AE80, r2 set to 0x8C17AE80
jmp @r2
nop
	nop
	nop
	nop
#data 0x6032D34e
#data 0x000BCBA0
#data 0x00092302
	nop
	nop
#data 0x000BD34b
#data 0x00092342
	nop
	nop
	nop
	nop
#data 0x6022D248
#data 0x000B4008
#data 0x00094009
	nop
	nop
#data 0x000BD245
#data 0x00096022
	nop
	nop
	nop
	nop
#data 0x000BD342
#data 0x00096032
	nop
	nop
	nop
	nop
#data 0x0009A15e
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C11D620:
mov.l @(loc_8C11D714,pc),r3 ; r3 set to 0x8C17ADA0
mov.l @(loc_8C11D710,pc),r4 ; r4 set to 0x8C2DB048
jmp @r3
nop
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop


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
#data 0x0000

#align4
loc_8C11D6D8:
#data 0xFF0000Ff

#align4
loc_8C11D6DC:
#data 0xFFFF0000

#align4
loc_8C11D6E0:
#data 0xFF00FF00
loc_8c11d6e4:
#data 0xFFFF00Ff

#align4
loc_8C11D6E8:
#data bank17.loc_8c17E200

loc_8C11D6EC:
#data 0xEFFFFF0f

#align4
loc_8C11D6F0:
#data loc_8c11D4D0

loc_8C11D6F4:
#data loc_8c11D590

loc_8C11D6F8:
#data bank17.loc_8c17AE80
#data 0x8C2AA2F0
#data 0xA05F811c
#data 0x8C2AA2E8
#data 0x8C2D55A4
#data 0x8C2D55A0

#align4
loc_8C11D710:
#data 0x8C2DB048

#align4
loc_8C11D714:
#data bank17.loc_8c17ADA0

loc_8C11D718:
#data bank16.loc_8c16BBF8

loc_8C11D71C:
#data 0xE0000000

#align4
loc_8C11D720:
#data 0x8C2DEE5c

#align4
loc_8C11D724:
#data 0xF0000000

#align4
loc_8C11D728:
#data bank17.loc_8c17D0C0
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F22FFFb
#data 0x6D437FFc
#data 0xEC00D439
#data 0x2DD86953
#data 0x8D0924C2
#data 0x60D3EB01
#data 0x89058815
#data 0x881560D3
#data 0x60D38902
#data 0x8B008815
#data 0x60D324B2
#data 0x8819DA31
#data 0x2AC28D09
#data 0x881860D3
#data 0x60D38905
#data 0x8902881a
#data 0x881B60D3
#data 0x2AB28B00
#data 0x6322D22b
#data 0x8B052338
#data 0x0009B308
#data 0xE400B30e
#data 0x0009B2Ec
#data 0x60C39347
#data 0x2398DE26
#data 0x8D0281E4
#data 0x60B381E5
#data 0xD32481E4
#data 0x8D022398
#data 0x60B3E30f
#data 0xD02281E5
#data 0x49082939
#data 0x2F22029e
#data 0x880160A2
#data 0xD1208B03
#data 0x410BD41e
#data 0x85E5E500
#data 0x63D36AD3
#data 0x67034A00
#data 0xD21C3A3c
#data 0x85E44A08
#data 0x3A2C65F2
#data 0x6603D31a
#data 0x54A1430b
#data 0xD31A85A4
#data 0xD41881E2
#data 0x430B85A5
#data 0xD31881E3
#data 0x2F02430b
#data 0xD217DD18
#data 0x22B2D318
#data 0x56D255D1
#data 0x64D2430b
#data 0x2CC885E3
#data 0x6D03FF8d
#data 0x630385E2
#data 0x8D37435a
#data 0x85E5F62d
#data 0xA0238801
#data 0x00806DDf
#data 0x8C2AA518
#data 0x8C2AA51c
#data 0x8C2AA50c
#data 0x8C2DEE5c
#data 0x00008000

#align4
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
#data 0x8C2AA2B8

#align4
loc_8C11D858:
#data bank17.loc_8c17BA80

loc_8C11D85C:
#data loc_8c11BCF0
#data 0x8C2AA540

#align4
loc_8C11D864:
#data bank16.loc_8c16BBF8

loc_8C11D868:
#data loc_8c11C420
	nop
	nop
#data 0x00098F05
#data 0x3DDC946e
#data 0x8B003D47
#data 0x4D5A6D43
#data 0xF5FCD335
#data 0xF73CF32d
#data 0xF4FC430b
#data 0x0009A007
#data 0xD23163Df
#data 0xF5FC435a
#data 0x420BF72d
#data 0xD22FF4Fc
#data 0x23386322
#data 0xB2538B03
#data 0xB2690009
#data 0x60F20009
#data 0x4F267F04
#data 0x69F6FFF9
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x000BD323
#data 0x00092352
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FF84F12
#data 0xD31DED38
#data 0x603204D7
#data 0x5AFA6953
#data 0x5BF9396c
#data 0xDE188803
#data 0x0D1A8F0c
#data 0x3C7C6C93
#data 0x3CAC3CBc
#data 0x3CCCA033
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x713861E3
#data 0x521331Dc
#data 0x8B092228
#data 0xA00E6C63
#data 0x00093C7c
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x703860E3
#data 0x500330Dc
#data 0x8B118802
#data 0x3CBC6C93
#data 0x3CACA013
#data 0x000001E0

#align4
loc_8C11D958:
#data bank12.loc_8c122160
#data 0x8C2AA50c
#data 0x8C32DAA4
#data 0x8C2AA2B8
#data 0x8C2AA4B8
	nop
	nop
#data 0x8B028804
#data 0x3C7C6C93
#data 0x63E33CBc
#data 0x733862C3
#data 0x33DC4208
#data 0x13222448
#data 0x69C38F0a
#data 0x53EB61E3
#data 0x31DC7138
#data 0x1131A014
	nop
	nop
	nop
	nop
#data 0x61E3E338
#data 0x043774Ff
#data 0x1F117138
#data 0x52F131Dc
#data 0x342C041a
#data 0x2F426243
#data 0x50415222
#data 0x1101302c
#data 0xC789455a
#data 0xD389F608
#data 0x465AF32d
#data 0xF22D6032
#data 0x8803475a
#data 0xF762F73c
#data 0x4B5AF32d
#data 0xF562F52c
#data 0x4A5AF22d
#data 0xF862F83c
#data 0xF42CF32d
#data 0xF93CF462
#data 0xF9628F2e
#data 0x61E3E200
#data 0x713832C7
#data 0x62E33C2e
#data 0x4C5A4C21
#data 0x31DCE010
#data 0xF32D7238
#data 0xF73332Dc
#data 0xF563F63c
#data 0xF463F863
#data 0xE014F177
#data 0x62E3F257
#data 0xE0187238
#data 0xF28732Dc
#data 0x723862E3
#data 0x32DCE01c
#data 0x62E3F247
#data 0x7238F963
#data 0x32DCE020
#data 0xA07EF297
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x62E34C5a
#data 0xF68D7238
#data 0xF32D32Dc
#data 0x21185123
#data 0xF03C8F26
#data 0x61E3F503
#data 0x7138F803
#data 0x31DCF403
#data 0x62E3E010
#data 0x7238F167
#data 0xE014F903
#data 0xF25732Dc
#data 0x723862E3
#data 0x32DCE018
#data 0x62E3F287
#data 0xE01C7238
#data 0xF24732Dc
#data 0x723862E3
#data 0x32DCE020
#data 0xA04EF297
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x703860E3
#data 0x500330Dc
#data 0x8B218802
#data 0x61E3F703
#data 0x7138F503
#data 0x62E3F403
#data 0xF90331Dc
#data 0x7238E010
#data 0xF17732Dc
#data 0xF257E014
#data 0x723862E3
#data 0x32DCE018
#data 0x62E3F267
#data 0xE01C7238
#data 0xF24732Dc
#data 0x723862E3
#data 0x32DCE020
#data 0xA022F297
	nop
	nop
	nop
	nop
#data 0x8B1C8804
#data 0x61E3F703
#data 0x7138F503
#data 0x62E3F803
#data 0x31DCF403
#data 0x7238E010
#data 0xF17732Dc
#data 0xF257E014
#data 0x723862E3
#data 0x32DCE018
#data 0x62E3F287
#data 0xE01C7238
#data 0xF24732Dc
#data 0x723862E3
#data 0x32DCE020
#data 0x6093F267
#data 0x4F167F08
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0xD3234F22
#data 0x430BDE21
#data 0xD3226D43
#data 0xE201E400
#data 0x4D156643
#data 0x1EDD2322
#data 0x65438F0c
#data 0x63E362E3
#data 0x73387238
#data 0x7601325c
#data 0x36D3335c
#data 0x22421343
#data 0x75388FF4
#data 0x6DF64F26
#data 0x6EF6000b

;==============================================
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0xFFFB2FA6
#data 0x7FFC4F22
#data 0x4E086E43
#data 0x3E3C6343
#data 0x4E08DC10
#data 0x3ECCDA0c
#data 0x1E612E52
#data 0x52F81E72
#data 0x53F91E23
#data 0x53AD1E34
#data 0x343273Ff
#data 0xA0838901
#data 0xD4050009
#data 0x5041EB00
#data 0x1401CB40
#data 0x6DB3A01d
#data 0x42C80000
#data 0x8C2AA4B8
#data 0x8C2AA2B8

#align4
loc_8C11DBF4:
#data loc_8c11CA10
#data 0x8C2AA50c
#data 0x8C2D574c
#data 0x4E086ED3
#data 0x3E3C63D3
#data 0x3ECC4E08
#data 0x2F2652E4
#data 0x2F3653E3
#data 0x56E157E2
#data 0xBE6165E2
#data 0x7F0864D3
#data 0x53AD7D01
#data 0x8BEB3D32
#data 0xD433D334
#data 0x0009430b
#data 0x2DD86D03
#data 0xC3418900
#data 0xD132D231
#data 0xD0326322
#data 0x63022312
#data 0x8B052338
#data 0x430BD330
#data 0xD32E0009
#data 0x2322E201
#data 0xD42ED22f
#data 0x0009420b
#data 0xD42ED32f
#data 0x2F42430b
#data 0x2BB8D430
#data 0xD32D62F2
#data 0x2322D12d
#data 0x854321B2
#data 0x6E03FF8d
#data 0x62038542
#data 0x8D17425a
#data 0x8545F62d
#data 0x8F058801
#data 0x94336EEf
#data 0x3E473EEc
#data 0x6E438B00
#data 0xD3254E5a
#data 0xF32DF5Fc
#data 0x430BF73c
#data 0xA00CF4Fc
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF5FC62Ef
#data 0xD21D425a
#data 0x420BF72d
#data 0xD31DF4Fc
#data 0x430BC71b
#data 0xD21CF408
#data 0xD31CE40c
#data 0xD11C2242
#data 0x2342D21c
#data 0x6412420b
#data 0x60D3A003
	nop
	nop
#data 0x7F04E000
#data 0xFFF94F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x000001E0
#data 0x8C2AA2B8

#align4
loc_8C11DCFC:
#data bank17.loc_8c17BA80
#data 0x8C2DB04c
#data 0x00800000
#data 0x8C2AA540

#align4
loc_8C11DD0C:
#data loc_8c11BCF0
#data 0x8C2DB068

#align4
loc_8C11DD14:
#data loc_8c11C380
#data 0x8C2DE698

#align4
loc_8C11DD1C:
#data loc_8c11C2E0
#data 0x8C2DEC98
#data 0x8C2DEC9c
#data 0x8C2DEE5c

#align4
loc_8C11DD2C:
#data bank12.loc_8c122160
#data 0x3CA3D70a

#align4
loc_8C11DD34:
#data bank17.loc_8c17E360
#data 0xFF000038
#data 0xFF00003c
#data 0x8C2AA520

#align4
loc_8C11DD44:
#data bank17.loc_8c17CBA0
	nop
	nop
	nop
	nop
#data 0xE301D23c
#data 0x22324F22
#data 0xD43BD33c
#data 0x0009430b
#data 0x000B4F26
#data 0x0009E000
	nop
	nop
	nop
	nop
#data 0xD3374F22
#data 0x430BD434
#data 0x4F260009
#data 0xE000000b

;==============================================
#data 0xD3354F22
#data 0x430BD433
#data 0xD3320009
#data 0x6232D133
#data 0x4F262122
#data 0xE000000b

;==============================================
	nop
	nop
	nop
	nop
#data 0xD32F4F22
#data 0x430BD42b
#data 0x4F260009
#data 0xE000000b

;==============================================
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FFC4F22
#data 0xD928DA29
#data 0x63A22F42
#data 0x8F062338
#data 0xD227ED00
#data 0x23386322
#data 0xA0838B01
#data 0xDE290009
#data 0x85E2D324
#data 0x6C03D224
#data 0xD12485E3
#data 0x64326B03
#data 0x662285E5
#data 0x20086512
#data 0x8D13D321
#data 0x6EC36732
#data 0x7E0FE2Fc
#data 0x4E2C60B3
#data 0x4000921d
#data 0x8D0E3027
#data 0x6CB37EFf
#data 0x7C0FE1Fc
#data 0x4C1CA00d
	nop
	nop
	nop
	nop
#data 0xE2FB6EC3
#data 0x4E2C7E1f
#data 0x6CB37EFf
#data 0x7C1FE3Fb
#data 0x62A24C3c
#data 0x22287CFf
#data 0xD20C892a
#data 0xA029E301
#data 0x01E02232
#data 0x8C2AA510
#data 0x8C2AA2B8

#align4
loc_8C11DE4C:
#data bank17.loc_8c17B660

loc_8C11DE50:
#data bank17.loc_8c17BA20
#data 0x8C2DB048

#align4
loc_8C11DE58:
#data bank17.loc_8c17B4C0
#data 0x8C2AA508

#align4
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
#data 0x8C2DEE5c
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x20D2D03e
#data 0x36E7D33e
#data 0xD23ED13f
#data 0xD33F2342
#data 0x21522262
#data 0x23728F01
#data 0x37C366E3
#data 0x67C38B00
#data 0x420BD23b
#data 0xD33B0009
#data 0x0009430b
#data 0x880160F2
#data 0xA0068B06
#data 0x0009E400
	nop
	nop
	nop
	nop
#data 0xD235E401
#data 0x0009420b
#data 0xA00F2902
#data 0x00092AD2
#data 0x880160F2
#data 0xA0048B04
#data 0x0009E400
	nop
	nop
#data 0xD22EE401
#data 0x0009420b
#data 0x2932E3Ff
#data 0x60D3D22c
#data 0x7F0422D2
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE2DFD324
#data 0x21296132
#data 0x2312000b

;==============================================
	nop
	nop
#data 0x6032D320
#data 0x000BCB20
#data 0x00092302
	nop
	nop
#data 0x000B6053
#data 0x00098801
	nop
	nop
	nop
	nop
#data 0xD019E338
#data 0x04374F12
#data 0x031A9215
#data 0x212B013e
#data 0x000B0316
#data 0x00094F16
	nop
	nop
	nop
	nop
#data 0xD011E338
#data 0x04374F12
#data 0x031A9206
#data 0x2129013e
#data 0x000B0316
#data 0x00A04F16
#data 0x0000FF5f

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
#data 0x8C2AA510
#data 0x8C2AA2Bc
#data 0x8C2AA2F0
	nop
	nop
#data 0x60534F12
#data 0xE7008800
#data 0x66738D0a
#data 0x890F8802
#data 0x89158804
#data 0x0009A015
	nop
	nop
	nop
	nop
#data 0x6673A00f
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE602A007
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE238E604
#data 0x0427D002
#data 0x0466041a
#data 0x4F16000b

;==============================================
#data 0x8C2AA2Fc
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0xF29DF34c
#data 0xF325F35d
#data 0x8B094F22
#data 0x000B4F26
#data 0x0009E000
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x0009B056
#data 0x600B935e
#data 0x303CD22f
#data 0x4F262029
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF38DFFFb
#data 0xFF34FF4c
#data 0xE0008B02
#data 0xFFF9000b

;==============================================
#data 0xF4F3F49d
#data 0xFFF9A03c
	nop
	nop
	nop
	nop
#data 0xFFF9000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF38DFFFb
#data 0xFF34FF4c
#data 0xE0008B02
#data 0xFFF9000b

;==============================================
#data 0xF4F3F49d
#data 0xFFF9A064
	nop
	nop
	nop
	nop
#data 0xFFF9000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF38DFFFb
#data 0xFF34FF4c
#data 0xE0008B02
#data 0xFFF9000b

;==============================================
#data 0xF4F3F49d
#data 0xFFF9AFA4
	nop
	nop
	nop
	nop
#data 0xFFF9000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF35DF34c
#data 0xF325F29d
#data 0xFFEBFFFb
#data 0xFF4C8F08
#data 0xE000A01f
#data 0x00004000
#data 0x0000FFFf
	nop
	nop
#data 0xF3F2F3Fc
#data 0xF231F29d
#data 0xF26DF38d
#data 0xFE34FE2c
#data 0xF4FC8906
#data 0xFEF9F4E3
#data 0xFFF9A022
	nop
	nop
#data 0x8B05FF35
#data 0xA004905f
	nop
	nop
	nop
	nop
#data 0xFEF9D02d
#data 0xFFF9000b

;==============================================
	nop
	nop
	nop
	nop
#data 0xF345F38d
#data 0xF44D8B04
#data 0xF04CF46d
#data 0xF04D000b

;==============================================
#data 0xF04CF46d
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop


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

;==============================================

loc_8C11E1F6:
#data 0x4000

#align4
loc_8C11E1F8:
#data 0x0000C000

#align4
loc_8C11E1FC:
#data 0x40C90FDb

#align4
loc_8C11E200:
#data 0x47800000

#align4
loc_8C11E204:
#data 0x3F000000

#align4
loc_8C11E208:
#data 0x0000FFFf
	nop
	nop


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
	nop
	nop
	nop
	nop


loc_8C11E240:
lds.l @r15+,pr
fmov fr15,fr4
fmov.s @r15+,fr14
fmov.s @r15+,fr15
bra loc_8C11E170
mov.l @r15+,r14
	nop
	nop


loc_8C11E250:
fldi0 fr3
fcmp/eq fr3,fr4
bf loc_8C11E260
mov.l @(loc_8C11E2D8,pc),r0 ; r0 set to 0xC000
bra loc_8C11E2Aa
nop
	nop
	nop


loc_8C11E260:
bsr loc_8C11E170
fmov fr14,fr4
mov.l @(loc_8C11E2D8,pc),r3 ; r3 set to 0xC000
bra loc_8C11E2A6
neg r0,r0
	nop
	nop
	nop


loc_8C11E270:
fcmp/gt fr5,fr6
bt loc_8C11E290
fldi0 fr3
fcmp/eq fr3,fr4
bf loc_8C11E280
mov.w @(loc_8C11E2D2,pc),r0 ; r0 set to 0x4000
bra loc_8C11E2Aa
nop

loc_8C11E280:
bsr loc_8C11E170
fmov fr14,fr4
mov.w @(loc_8C11E2D2,pc),r3 ; r3 set to 0x4000
bra loc_8C11E2A6
neg r0,r0
	nop
	nop
	nop


loc_8C11E290:
fldi0 fr3
fcmp/eq fr3,fr5
bf loc_8C11E2A0
mov.l @(loc_8C11E2DC,pc),r0 ; r0 set to 0x8000
bra loc_8C11E2Aa
nop
	nop
	nop


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
#data 0x7FFC4F22
#data 0xB0CBFF4a
#data 0x7F04F44d
#data 0x000B4F26
#data 0xF04d

;==============================================

loc_8C11E2D2:
#data 0x4000

#align4
loc_8C11E2D4:
#data 0x0000FFFf

#align4
loc_8C11E2D8:
#data 0x0000C000

#align4
loc_8C11E2DC:
#data 0x00008000

#align4
loc_8C11E2E0:
#data 0x2FE6D338
#data 0x3E376E4d
#data 0xD1378B02
#data 0x6E1331E8

#align4
loc_8C11E2F0:
#data 0x34E89466
#data 0x6EF6A2B4
	nop
	nop
	nop
	nop
#data 0x644D4F22
#data 0x89022448
#data 0x3430D32e
#data 0x4F268B08
#data 0x000BC72e
#data 0x0009F008
	nop
	nop
	nop
	nop
#data 0x0009B29e
#data 0xF09DF30c
#data 0x4F26F033
#data 0x0009000b

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
	nop
	nop
	nop
	nop
	nop
#data 0x445A644d
#data 0x4F22C71f
#data 0xC71FF208
#data 0xF108F32d
#data 0xF43CF322
#data 0xF413B03c
#data 0xF09DF40c
#data 0xF39DF043
#data 0x4F26F330
#data 0x000BF040
#data 0x0009F033
	nop
	nop
#data 0x644D4F22
#data 0x89052448
#data 0x3430931a
#data 0xD30D890b
#data 0x8B053430
#data 0xC70D4F26
#data 0xF008000b

;==============================================
	nop
	nop
#data 0x3430D30e
#data 0x4F268B04
#data 0xF08D000b

;==============================================
	nop
	nop
#data 0x0009B3B6
#data 0xF09DF30c
#data 0x4F26F033
#data 0x0009000b

;==============================================
#data 0x00004000
#data 0x00008000
#data 0x00010000
#data 0x7F7FFFFf

#align4
loc_8C11E3D0:
#data 0x3FC90FDb
#data 0x40C90FDb
#data 0x47800000
#data 0x0000C000

#align4
loc_8C11E3E0:
#data 0xC764FFFb
#data 0xF28DFF4c
#data 0xFFEBF2F5
#data 0x8D07FFDb
#data 0xC761F408
#data 0xF308A006
	nop
	nop
	nop
	nop

#align4
loc_8C11E400:
#data 0xF308C75e

#align4
loc_8C11E404:
#data 0xF243F2Fc
#data 0xE50AC75d
#data 0xF320E606
#data 0xF308F33d
#data 0x445A045a
#data 0xF242F22d
#data 0xF4FCFF21
#data 0xFE4CF4F2
#data 0xFE33

loc_8C11E426:
#data 0x455a
#data 0x356375Fc
#data 0xF3E0F32d
#data 0x8DF8FE4c
#data 0xF3FCFE33
#data 0xFD9DF3E0
#data 0xF2ECFDD0
#data 0xF3D0F2F1
#data 0xFDF9F2D0
#data 0xF43CFEF9
#data 0xA06FF423
#data 0x0009FFF9
	nop
	nop
	nop
	nop
	nop
	nop


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
#data 0xF54CC734
#data 0xF55DF308
#data 0x8901F355
#data 0xF08D000b

;==============================================
#data 0xF18DF53d
#data 0x045AF145
#data 0xF22D445a
#data 0xF5218F08
#data 0x000BF05c
#data 0x0009F04d
	nop
	nop
	nop
	nop
#data 0x000BF05c
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF434F38d
#data 0x8B034F22
#data 0xC7234F26
#data 0xF008000b

;==============================================
#data 0x0009BE26
#data 0xF09DF30c
#data 0x4F26F033
#data 0x0009000b

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

#align4
loc_8C11E530:
#data 0xF38D7FFc
#data 0x8B03F434
#data 0x000BF08d
#data 0x00097F04

#align4
loc_8C11E540:
#data 0xE2E965F3
#data 0xD611E701
#data 0x6352FF4a
#data 0x633C432c
#data 0x3473343c
#data 0x62528924
#data 0xD30D3748
#data 0xD10D677b
#data 0x60522239
#data 0x427C221b
#data 0x64232069
#data 0x224B6203
#data 0x2522A02f
#data 0x3F317218
#data 0x3F000000
#data 0xBF000000
#data 0x41600000

#align4
loc_8C11E584:
#data 0x4B000000

#align4
loc_8C11E588:
#data 0x7F7FFFFf
#data 0x80000000
#data 0x007FFFFf
#data 0x00800000
	nop
	nop
	nop
	nop

#align4
loc_8C11E5A0:
#data 0x3437937c
#data 0x61528B0c
#data 0x2169D23d
#data 0x202B6013
#data 0x2502A00f
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11E5C0:
#data 0xD3386252
#data 0x25222239
#data 0x6152E217
#data 0x214B442c
#data 0x2512

loc_8C11E5D2:
#data 0xF0F8
#data 0x7F04000b

;==============================================
	nop
	nop
	nop
	nop

#align4
loc_8C11E5E0:
#data 0xF345F38d
#data 0x8D03E401
#data 0xF38DF68d
#data 0x8B07F434

#align4
loc_8C11E5F0:
#data 0xF08D000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11E600:
#data 0xF550F59d
#data 0xF545C728
#data 0xF7088D04

#align4
loc_8C11E60C:
#data 0xF545F453
#data 0xF6708FFc

#align4
loc_8C11E614:
#data 0xF845F89d
#data 0x8B03

loc_8C11E61A:
#data 0xF452
#data 0x8DFCF845
#data 0xF671

loc_8C11E622:
#data 0xF39d
#data 0xF34DF24c
#data 0xF14CF230
#data 0xF42CF180
#data 0xF25CF413
#data 0xF522F54c
#data 0xF422F24c

#align4
loc_8C11E63C:
#data 0xF25C445a
#data 0xF76CF542
#data 0xF233F32d
#data 0xF674F620
#data 0x74028FF6
#data 0x000BF06c
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xBFBD4F22
#data 0x4F260009
#data 0xF308C710
#data 0xF033000b

;==============================================
#data 0xBFB54F22
#data 0x4F260009
#data 0xF308C70b
#data 0xF033000b

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
#data 0x000000Fe
#data 0x7F800000
#data 0x807FFFFf
#data 0x3F317218
#data 0x40135D8e

#align4
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c11e6f0:
bra loc_8c11e720
fmov fr4,fr0
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c11e700:
fldi0 fr3
fcmp/gt fr15,fr3
bf loc_8c11e710

loc_8C11E706:
bra loc_8C11E720
fldi0 fr0
	nop
	nop
	nop

#align4
loc_8C11E710:
#data 0xF4FCBF66
#data 0xF4EC4F26
#data 0xFEF9F402
#data 0xFFF9AE60


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
#data 0xF54CC70d
#data 0xF55DF308
#data 0x8B21F355
#data 0xF28DF53d
#data 0x445A045a
#data 0xF63CF32d
#data 0xF524F561
#data 0xF4258918
#data 0x000B8B0e
#data 0xF06c

;==============================================

loc_8C11E7A6:
#data 0x3039

loc_8C11E7A8:
#data 0x7FFf
#data 0x0000

#align4
loc_8C11E7AC:
#data bank16.loc_8c16BC2c

loc_8C11E7B0:
#data 0x41C64E6d

#align4
loc_8C11E7B4:
#data 0x38000000
#data 0x4B000000
	nop
	nop
#data 0x445A644b
#data 0x000BF32d
#data 0x0009F03c
	nop
	nop
#data 0x000BF04c
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF54CC73b
#data 0xF55DF308
#data 0x8B19F355
#data 0xF28DF53d
#data 0x445A045a
#data 0xF531F32d
#data 0x8911F524
#data 0x8B07F425
#data 0xA0087401
#data 0x0009445a
	nop
	nop
	nop
	nop
#data 0x3248E2Ff
#data 0xF32D425a
#data 0xF03C000b

;==============================================
	nop
	nop
#data 0x000BF04c
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x644D934c
#data 0x34304F22
#data 0xD3268902
#data 0x8B073430
#data 0xC7254F26
#data 0xF008000b

;==============================================
	nop
	nop
	nop
	nop
#data 0x0009BD46
#data 0xF09DF30c
#data 0x4F26F033
#data 0x0009000b

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

;==============================================
#data 0x00004000
#data 0x4B000000
#data 0x0000C000
#data 0x7F7FFFFf

#align4
loc_8C11E8DC:
#data 0x40C90FDb

#align4
loc_8C11E8E0:
#data 0x47800000

#align4
loc_8C11E8E4:
#data 0x3FC90FDb

#align4
loc_8C11E8E8:
#data 0x3F000000
	nop
	nop


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
#data 0xFFFB644d
#data 0xC779445a
#data 0xF2084F22
#data 0xF32DC778
#data 0xC778F108
#data 0xF322F008
#data 0xF413F43c
#data 0xF35DF34c
#data 0x8F0DF305
#data 0xBD5BFF9d
#data 0xF40C0009
#data 0xF39DFF43
#data 0x4F26F330
#data 0xF033F0F1
#data 0xFFF9000b

;==============================================
	nop
	nop
#data 0xF042F04c
#data 0xF308C76c
#data 0xF0F0F033
#data 0x4F26F042
#data 0xFFF9000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


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
	nop
	nop


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


loc_8C11E9C0:
fldi0 fr2
fcmp/gt fr4,fr2
bt loc_8C11E9D0
mova @(loc_8C11EAFC,pc),r0  ; r0 init to 0x8C11EAFc
bra loc_8C11E9D4
fmov.s @r0,fr3
	nop
	nop


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
#data 0x7FFC4F22
#data 0x64F3B034
#data 0x401160F2
#data 0xF40C8F08
#data 0xC901A00b
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x70016007
#data 0x6007C901
#data 0x20087001
#data 0x7F048B08
#data 0x000B4F26
#data 0x0009F04c
	nop
	nop
	nop
	nop
#data 0xF434F38d
#data 0xF09D890c
#data 0x7F04F04d
#data 0x000B4F26
#data 0x0009F043
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF008C723
#data 0x4F267F04
#data 0x0009000b

;==============================================
	nop
	nop
#data 0xF245F28d
#data 0xC7198904
#data 0xF308A004
	nop
	nop
#data 0xF308C717
#data 0xF14CC717
#data 0xC717F208
#data 0xF310F123
#data 0x055AF33d
#data 0x2452455a
#data 0xF308E40b
#data 0xF12DC713
#data 0xE503F008
#data 0xF132F51c
#data 0xF45EF411
#data 0xF64CF58d
#data 0x445AF642
#data 0x345374Fe
#data 0xF351F32d
#data 0x8DF8F56c
#data 0xF39DF533
#data 0xF04CF351
#data 0xF033000b

;==============================================
#data 0x40C90FDb
#data 0x47800000
#data 0x3C23D70a
#data 0x40C00000

#align4
loc_8C11EAFC:
#data 0x3F000000

#align4
loc_8C11EB00:
#data 0xBF000000

#align4
loc_8C11EB04:
#data 0x3FC90FDb

#align4
loc_8C11EB08:
#data 0x3FC91000

#align4
loc_8C11EB0C:
#data 0x3695777a
#data 0x7F7FFFFf
	nop
	nop
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop


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
#data 0xFFFB644d
#data 0xC718445a
#data 0xFFDBFFEb
#data 0xFD9DF32d
#data 0xFF9DFDD0
#data 0xF2084F22
#data 0xF108C714
#data 0xF322C717
#data 0xF43CF508
#data 0xF455F413
#data 0x8F11FE4c
#data 0xF4ECFED2
#data 0xF44DBBFe
#data 0xF39DF0F0
#data 0xFD03F34d
#data 0xA027F0Dc
#data 0x0009F030
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x8B15F545
#data 0xF4ECBBEc
#data 0xFD03F0F0
#data 0xF0DCFD4d
#data 0xF0F0A016

loc_8C11EC14:
#data 0x7FFf

loc_8C11EC16:
#data 0x4000

#align4
loc_8C11EC18:
#data 0x40C90FDb

#align4
loc_8C11EC1C:
#data 0x47800000

#align4
loc_8C11EC20:
#data 0x3FC90FDb

#align4
loc_8C11EC24:
#data 0x3F000000

#align4
loc_8C11EC28:
#data 0x7F7FFFFf
#data 0x3A83126f
#data 0xF342F34c
#data 0xF208C705
#data 0xFF31F323
#data 0xF042F0Fc
#data 0xFDF94F26
#data 0x000BFEF9
#data 0x0000FFF9
#data 0x40400000
#data 0x000BD341
#data 0x00092342
	nop
	nop
	nop
	nop
#data 0xF343F39d
#data 0x000BD33d
#data 0x0009F33a
	nop
	nop
#data 0x4428D53b
#data 0x6252D33b
#data 0x61232239
#data 0x000B214b
#data 0x00092512
	nop
	nop
	nop
	nop
	nop
	nop


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
#data 0x000BD321
#data 0x00092342
	nop
	nop
	nop
	nop
#data 0x2448D50b
#data 0x1545D31d
#data 0x22396252
#data 0x51522522
#data 0x2129D21b
#data 0x15128D3c
#data 0xD11A5052
#data 0x201BA03f

loc_8C11ED50:
#data 0x0101

loc_8C11ED52:
#data 0x0902

loc_8C11ED54:
#data 0x0400
#data 0x0000

#align4
loc_8C11ED58:
#data bank16.loc_8c16BC38

loc_8C11ED5C:
#data bank16.loc_8c16BC34
#data 0x8C2D5A58
#data 0xFFFCFFFf

#align4
loc_8C11ED68:
#data 0x8C2D5A00

#align4
loc_8C11ED6C:
#data 0x8C2D5A04

#align4
loc_8C11ED70:
#data 0x8C2D5A10

#align4
loc_8C11ED74:
#data 0x8C2D5A48

#align4
loc_8C11ED78:
#data 0x8C2D5A44

#align4
loc_8C11ED7C:
#data 0x8C2D5A08

#align4
loc_8C11ED80:
#data 0x8C2D5A0c

#align4
loc_8C11ED84:
#data 0x8C2D59Fc

#align4
loc_8C11ED88:
#data 0x8C2D5A4c

#align4
loc_8C11ED8C:
#data 0x8C2D5A50

#align4
loc_8C11ED90:
#data 0x8C2D5A54

#align4
loc_8C11ED94:
#data 0x3C000000

#align4
loc_8C11ED98:
#data 0x8C2D5A90

#align4
loc_8C11ED9C:
#data 0x8C2D5A70

#align4
loc_8C11EDA0:
#data bank17.loc_8c17C8A0

loc_8C11EDA4:
#data bank17.loc_8c17CA40

loc_8C11EDA8:
#data bank16.loc_8c16BC30
#data 0xF8FFFFFf
#data 0x03FFFFFf
#data 0x20000000
	nop
	nop
	nop
	nop
#data 0xD1A86052
#data 0x201BD3A8
#data 0x50522502
#data 0x000B203b
#data 0x00091502
	nop
	nop
	nop
	nop
	nop
	nop


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

#align4
loc_8C11EE30:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FEC2F86
#data 0x6D73D192
#data 0x6B73D28f
#data 0x6C736312
#data 0x626EF428
#data 0x4200435a
#data 0x6973D38e
#data 0x7D18D08e
#data 0xF32D6832
#data 0x320C6373
#data 0x2F227310
#data 0x63731F34
#data 0x731C6273
#data 0xDA857214
#data 0x7B08F63c
#data 0x1F22790c
#data 0x7C041F33
#data 0x6202D085
#data 0x8F3B2228
#data 0x445A6E6e
#data 0x64F263F2
#data 0x455AF32d
#data 0xD2818531
#data 0x485AF22d
#data 0x65036441
#data 0xF560F53c
#data 0xF32DF83c
#data 0xF72C2722
#data 0xFC8AF62c
#data 0xFB7AF630
#data 0x53F4F94a
#data 0x53F2F35a
#data 0xFD4AF37a
#data 0xF35A53F3
#data 0xE0040783
#data 0x772063E3
#data 0x432862E3
#data 0xF747F76a
#data 0xF787E008
#data 0xF767E00c
#data 0x60E34228
#data 0x40184318
#data 0x230B232b
#data 0x25AB23Eb
#data 0x17451734
#data 0x174624Ab
#data 0x1757A041
	nop
	nop
	nop
	nop

#align4
loc_8C11EF00:
#data 0x1F41D267
#data 0x6321645b
#data 0xD1643488
#data 0x53F1343c
#data 0x64F2445a
#data 0x485AF32d
#data 0xF22D6441
#data 0x63F2435a
#data 0xF73CF83c
#data 0x8531F32d
#data 0xF26CF720
#data 0x27126503
#data 0xF63CFC8a
#data 0xF53CF620
#data 0xF94AFB5a
#data 0xF37A53F4
#data 0xF35A53F2
#data 0x53F3FD4a
#data 0x0783F37a
#data 0x63E3E004
#data 0x61E37720
#data 0xF76A4328
#data 0xE008F747
#data 0xE00CF787
#data 0x4128F767
#data 0x431860E3
#data 0x231B4018
#data 0x23EB230b
#data 0x17551734
#data 0x24AB1746
#data 0x1747

loc_8C11EF7A:
#data 0x0783
#data 0x60737720
#data 0x68F67F14
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop


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
#data 0xE3FED43c
#data 0x22396242
#data 0x2422000b

;==============================================
	nop
	nop


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
	nop
	nop


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

	nop
	nop

#align4
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
#data 0x0000
#data 0x0000
#data 0x0200
#data 0x0000
#data 0x9400

loc_8c11f06c:
#data 0x5A58
#data 0x8C2D

loc_8c11f070:
#data 0x5A70
#data 0x8C2D

loc_8c11f074:
#data 0x0000
#data 0xFF80

loc_8c11f078:
	nop
#data 0xA200

loc_8c11f07c:
#data 0x0000
#data 0x8000

loc_8c11f080:
#data 0x04C7
#data 0x9490

loc_8c11f084:
#data bank16.loc_8c16BC34
#data 0x0000
#data 0x3F80

loc_8c11f08c:
#data 0x5A08
#data 0x8C2D

#align4
loc_8c11f090:
#data 0x8C2D5A0C
#data 0x5A90
#data 0x8C2D

loc_8c11f098:
#data bank16.loc_8c16BC30
#data 0x0000
#data 0xF000
#data 0xEE60
#data 0x8C2D

loc_8c11f0a4:
#data 0x59FC
#data 0x8C2D

loc_8c11f0a8:
#data 0xA508
#data 0x8C2A

loc_8c11f0ac:
#data 0x5A00
#data 0x8C2D

loc_8c11f0b0:
#data 0x5A04
#data 0x8C2D

loc_8c11f0b4:
#data 0x0038
#data 0xFF00

loc_8c11f0b8:
#data 0x003C
#data 0xFF00

loc_8c11f0bc:
#data 0xFFFF
#data 0x03FF

loc_8c11f0c0:
#data 0x0000
#data 0xE000

#align4
loc_8C11F0C4:
#data 0x8C2D5A10
	nop
	nop
	nop
	nop


loc_8c11f0d0:
cmp/eq 0x0D,r0
bf loc_8c11f0e0
tst r10,r10
bt/s loc_8c11f0f2
mov r4,r14
bra loc_8c11f0f2
mov r5,r14
	nop


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
	nop
	nop
	nop
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop


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

#align4
loc_8C11F210:
#data 0x8C2D5A00

#align4
loc_8C11F214:
#data 0x8C2D5A04

#align4
loc_8C11F218:
#data 0x8C2AA508

#align4
loc_8C11F21C:
#data 0xFC000000

#align4
loc_8C11F220:
#data 0x03FFFFFf

#align4
loc_8C11F224:
#data 0x8C2D5A10

#align4
loc_8C11F228:
#data bank16.loc_8c16BD94

loc_8C11F22C:
#data bank16.loc_8c16BC30

loc_8C11F230:
#data bank16.loc_8c16BD90

loc_8C11F234:
#data 0x8C2D5A0c

#align4
loc_8C11F238:
#data 0x8C2DEE60

#align4
loc_8C11F23C:
#data bank16.loc_8c16BD88

loc_8C11F240:
#data 0x8C2D5A68

#align4
loc_8C11F244:
#data 0x8C2D57Fc

#align4
loc_8C11F248:
#data bank12.loc_8c129804
#data 0x00000000


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


loc_8C11F2C0:
mov.l @(loc_8C11F32C,pc),r3 ; r3 set to 0x8C17A5A0
mov.l r4,@-r15
jmp @r3
add 0x04,r15
	nop
	nop
	nop
	nop


loc_8C11F2D0:
mov.l @(loc_8C11F330,pc),r3 ; r3 set to 0x8C17A620
jmp @r3
nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11F2E0:
#data 0x4F222FE6
#data 0x65F37FFc
#data 0xFF4AE3E9
#data 0x64536552
#data 0x4529443c
#data 0x655F9317
#data 0x44117481
#data 0x8D04253b
#data 0x644B655c
#data 0x454C644b
#data 0xE400

loc_8C11F30A:
#data 0x4518
#data 0x6E53D307
#data 0x2E4B644c
#data 0x64E3430b
#data 0x7F0460E3
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_8C11F322:
#data 0xFE00

loc_8C11F324:
#data 0x0200
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
#data 0x000BD140
#data 0x00092142
	nop
	nop
	nop
	nop
#data 0xE0442FE6
#data 0x4F129E69
#data 0xD33604E7
#data 0x3E3C0E1a
#data 0x724062E3
#data 0x64E3F24a
#data 0xE048FE57
#data 0x7440D236
#data 0x4F16FE67
#data 0x6EF6422b
	nop
	nop
	nop
	nop
#data 0xE0349353
#data 0x04374F12
#data 0x041AD22a
#data 0xF447342c
#data 0xF457E038
#data 0xF467E03c
#data 0x4F16000b

;==============================================
	nop
	nop
#data 0xE04C9343
#data 0x04374F12
#data 0x041AD222
#data 0xF447342c
#data 0xF457E050
#data 0xF467E054
#data 0x4F16000b

;==============================================
	nop
	nop
#data 0x4F129333
#data 0xF34C0437
#data 0xD21AF342
#data 0x041A902f
#data 0xF447342c
#data 0xF43770F8
#data 0xF39D70F8
#data 0xF437F343
#data 0x4F16000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF34CFFFb
#data 0xF3F2FF4c
#data 0xFFF9F29d
#data 0xF231F54c
#data 0xF42CF26d
#data 0x4F129311
#data 0xD20A0437
#data 0x041A9010
#data 0xF447342c
#data 0xF49DE058
#data 0xF351F34c
#data 0xF457F24c
#data 0xF2337044
#data 0x000BF427
	lds.l @r15+,macl

;==============================================

loc_8C11F45A:
#data 0x00B0

loc_8C11F45C:
#data 0x0B00
#data 0x00A0
#data 0x000000A4

#align4
loc_8C11F464:
#data 0x8C2D5C94

#align4
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
	nop
	nop
#data 0x7FF84F22
#data 0x1F41D33d
#data 0x430B2F52
#data 0xD33C6453
#data 0x430BFF0b
#data 0x54F254F1
#data 0xF40CF5F9
#data 0xAFC97F08
#data 0x00094F26
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4F22FFFb
#data 0x2F46D333
#data 0xFF4C430b
#data 0xFF0BD232
#data 0xF4FC420b
#data 0xF5F954F1
#data 0x7F04F40c
#data 0xAFB14F26
#data 0x0009FFF9
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x6053934a
#data 0x04374F12
#data 0x041AD228
#data 0x8141342c
#data 0x4F16000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD5237FF8
#data 0xF349C723
#data 0x63636653
#data 0x7304F63a
#data 0x77086763
#data 0x2F32750c
#data 0xF33AF349
#data 0xF73AF349
#data 0xF3481F51
#data 0xF008F53a
#data 0xF378C71b
#data 0xF30262F2
#data 0xF228F008
#data 0x53F1C719
#data 0xF238F32e
#data 0xF32EF008
#data 0x000BF63a
#data 0x00097F08
	nop
	nop
	nop
	nop
#data 0xE0149312
#data 0x04374F12
#data 0xF359D20c
#data 0x342C041a
#data 0xE018F437
#data 0xF437F359
#data 0xF359E01c
#data 0xE020F437
#data 0xF437F358
#data 0x4F16000b

;==============================================
#data 0x000000B0

#align4
loc_8C11F57C:
#data loc_8c11E2E0

loc_8C11F580:
#data loc_8c11E860

loc_8C11F584:
#data loc_8c11E330

loc_8C11F588:
#data loc_8c11E960
#data 0x8C2D5C94
#data 0x8C2D6794
#data 0x3F170A3d
#data 0x3E99999a
#data 0x3DE147Ae
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0x430BD32b
#data 0xD22BE400
#data 0x0009420b
#data 0xEC10DA2b
#data 0xED00DB2b
#data 0x63E1DE28
#data 0x89092338
#data 0x64E39546
#data 0x4B0B35Ec
#data 0x65E37468
#data 0x757464E3
#data 0x745C4A0b
#data 0x933C7D01
#data 0x8FEE3DC3
#data 0x4F263E3c
#data 0xE401D321
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432b
	nop
	nop
	nop
	nop
#data 0x7FFC4F22
#data 0x430BD31b
#data 0xD5160009
#data 0xD2179324
#data 0x353C2F52
#data 0x420B64F2
#data 0xD3147468
#data 0xD516D417
#data 0x0009430b
#data 0xD2137F04
#data 0x4F26422b
	nop
	nop
#data 0x25589313
#data 0x04374F12
#data 0xD611D00a
#data 0x0355031a
#data 0x6262E301
#data 0x6433434c
#data 0x8F03224b
#data 0x61622622
#data 0x2612214a
#data 0x4F16000b

;==============================================
#data 0x00B00080

#align4
loc_8C11F65C:
#data bank12.loc_8c120950

loc_8C11F660:
#data loc_8c11FA20
#data 0x8C2D5C94

#align4
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
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0xEC002FC6
#data 0x6EC32FB6
#data 0xEB102FA6
#data 0x2F862F96
#data 0x9A904F22
#data 0x4F12D848
#data 0x0EA7D948
#data 0x60E3D348
#data 0x64E34008
#data 0x65834408
#data 0x44080D1a
#data 0x62D13D3c
#data 0xE0140926
#data 0xF3D6D243
#data 0x342CE018
#data 0xF3D6F43a
#data 0xF437E004
#data 0xF3D6E01c
#data 0xF437E008
#data 0xF3D6E020
#data 0xF437E00c
#data 0x64E3BF32
#data 0x3EB37E01
#data 0x2DC18FDd
#data 0x22C2D239
#data 0x4F264F16
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
	nop
	nop
#data 0xE4002FE6
#data 0x65432FC6
#data 0xEC102FB6
#data 0xEE012FA6
#data 0xD72E2F96
#data 0xDA2A4F12
#data 0x914EDB2a
#data 0x2742D92a
#data 0x66530517
#data 0x46084608
#data 0x041A369c
#data 0xE014F368
#data 0xF43734Bc
#data 0xF366E004
#data 0xF437E018
#data 0xF366E008
#data 0xF437E01c
#data 0xF366E00c
#data 0xF437E020
#data 0x40086053
#data 0x243103Ae
#data 0x88016041
#data 0x75018F03
#data 0x22EB6272
#data 0x4E002722
#data 0x8BDB35C3
#data 0x69F64F16
#data 0x6BF66AF6
#data 0x000B6CF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
#data 0xE004D513
#data 0xF43AF358
#data 0xF3567404
#data 0xF43AE008
#data 0xF3567404
#data 0xF43AE00c
#data 0xF3567404
#data 0xF43A000b

;==============================================
#data 0xE004F349
#data 0xF53AD50a
#data 0xF537F349
#data 0xF349E008
#data 0xE00CF537
#data 0x000BF348
#data 0x00B0F537

#align4
loc_8C11F7CC:
#data bank16.loc_8c16BD00
#data 0x8C2D67A4
#data 0x8C2D5C94
#data 0x8C2D67E4

#align4
loc_8C11F7DC:
#data bank16.loc_8c16BC3c
#data 0x8C2D6794
#data 0x00000000
#data 0x00000000
#data 0x00000000


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

;==============================================

#align4
loc_8C11F81C:
#data 0x8C32B4A0
#data 0xFF1DFBFd
#data 0xF0F0FF49
#data 0xF1F0FF49
#data 0xF2F0FF49
#data 0xF3F0FF49
#data 0xF4F0FF49
#data 0xF5F0FF49
#data 0xF6F0FF49
#data 0xF7F0FF49
#data 0xF8F0FF49
#data 0xF9F0FF49
#data 0xFAF0FF49
#data 0xFBF0FF49
#data 0xFCF0FF49
#data 0xFDF0FF49
#data 0xFEF0FF49
#data 0xF01DFF0d
#data 0xFF00F049
#data 0xFBFDF00d
#data 0x0009000b

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
#data 0xF549F449
#data 0xF749F649
#data 0x7510F5Fd
#data 0xF56BF57b
#data 0xF54BF55b
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop


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
#data 0x7FF44F22
#data 0x1F512F42
#data 0x1F62A00c
	nop
	nop
#data 0xD30955F1
#data 0x1F51750c
#data 0x64F275F4
#data 0x2F42740c
#data 0x74F4430b
#data 0x72FF52F2
#data 0x8DF14211
#data 0x7F0C1F22
#data 0x000B4F26
#data 0x00000009

#align4
loc_8C11F908:
#data loc_8c11F8B0
	nop
	nop


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
#data 0x7FF44F22
#data 0x1F512F42
#data 0x1F62A00c
	nop
	nop
#data 0xD33055F1
#data 0x1F51750c
#data 0x64F275F4
#data 0x2F42740c
#data 0x74F4430b
#data 0x72FF52F2
#data 0x8DF14211
#data 0x7F0C1F22
#data 0x000B4F26
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD3254F22
#data 0xE400430b
#data 0xE300D424
#data 0x14225241
#data 0x2431D223
#data 0x422B6433
#data 0x00094F26
	nop
	nop


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
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C11F9B0:
tst r14,r14
bf loc_8C11F9C0
mov.l @(loc_8C11FA08,pc),r3 ; r3 set to 0x8C11FA80
jmp @r3
mov.l @r15+,r14
	nop
	nop
	nop


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
#data 0x7FB84F22
#data 0x2F426543
#data 0xBFD164F3
#data 0xD2097404
#data 0x64F365F3
#data 0x420B7544
#data 0x7F487404
#data 0x000B4F26
#data 0x00000009

#align4
loc_8C11FA04:
#data loc_8c11F910

loc_8C11FA08:
#data loc_8c11FA80
#data 0x8C2D68E8

#align4
loc_8C11FA10:
#data loc_8c1201e0

loc_8C11FA14:
#data bank12.loc_8c120280
	nop
	nop
	nop
	nop

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
nop
nop


;==============================================

#align4
loc_8C11FA80:
#data 0x8B012448
#data 0x5442D410

#align4
loc_8C11FA88:
#data 0xFBFD7440
#data 0xF4EBF4Fb
#data 0xF4CBF4Db
#data 0xF4ABF4Bb
#data 0xF48BF49b
#data 0xF46BF47b
#data 0xF44BF45b
#data 0xF42BF43b
#data 0xF40BF41b
#data 0x6043FBFd
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x8B052448
#data 0xE000000b

;==============================================
#data 0x8C2D68E8
	nop
	nop
#data 0xFBFD7424
#data 0xF49BF4Ab
#data 0xF46BF48b
#data 0xF44BF45b
#data 0xF41BF42b
#data 0xFBFDF40b
#data 0x00096043
#data 0x0009000b

;==============================================
#data 0x8B052448
#data 0xE000000b

;==============================================
	nop
	nop
	nop
	nop
#data 0xFBFD742c
#data 0xF49BF4Ab
#data 0x74FCF48b
#data 0xF45BF46b
#data 0x74FCF44b
#data 0xF41BF42b
#data 0xFBFDF40b
#data 0x00096043
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x8B052448
#data 0xE000000b

;==============================================
	nop
	nop
	nop
	nop
#data 0xFBFD7430
#data 0xF4DBF4Eb
#data 0xF4ABF4Cb
#data 0xF48BF49b
#data 0xF45BF46b
#data 0xF42BF44b
#data 0xF40BF41b
#data 0x6043FBFd
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C11FB70:
#data 0x8B012448
#data 0x5442D401

#align4
loc_8C11FB78:
#data 0x0009A002
#data 0x8C2D68E8

#align4
loc_8C11FB80:
#data 0xF3FD7440
#data 0xF4DBF4Fb
#data 0xF49BF4Bb
#data 0xF45BF47b
#data 0xF41BF43b
#data 0x6043F3Fd
#data 0x0009000b

;==============================================
	nop
	nop
#data 0x2FD62FE6
#data 0x7FB84F22
#data 0x2EE86E43
#data 0x1FE18F10
#data 0x420BD22d
#data 0xD32CE400
#data 0x6E0364F3
#data 0x7408430b
#data 0x0009A00b
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x64F3D326
#data 0x430B65E3
#data 0x65E37408
#data 0x64F22F52
#data 0xDD2366F3
#data 0x76087520
#data 0x74104D0b
#data 0x66F365E3
#data 0x2F526453
#data 0x4D0B7618
#data 0x65E37420
#data 0x66F32F52
#data 0x76287510
#data 0x64F24D0b
#data 0x222852F1
#data 0xD3198B08
#data 0x430B64F3
#data 0xA0087408
	nop
	nop
	nop
	nop
#data 0x65F3D312
#data 0x430B7508
#data 0x7F4864E3
#data 0x6DF64F26
#data 0x6EF6000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x24482FE6
#data 0x5EE2DE0c
#data 0x7EC08F0a
#data 0x64E3D20b
#data 0x6EF6422b
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x65E3D202
#data 0x6EF6422b

#align4
loc_8C11FC68:
#data loc_8c11FA80

loc_8C11FC6C:
#data loc_8c11F990

loc_8C11FC70:
#data bank12.loc_8c121200

loc_8C11FC74:
#data loc_8c1201e0
#data 0x8C2D68E8

#align4
loc_8C11FC7C:
#data bank12.loc_8c120250
#data 0xFBFD740c
#data 0xF4DBF4Eb
#data 0xFBFDF4Cb
#data 0x0009000b

;==============================================

#align4
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

#align4
loc_8C11FD28:
#data 0x8C2D6918

#align4
loc_8C11FD2C:
#data 0x8C2D69D8

#align4
loc_8C11FD30:
#data 0x8C2D68E4

#align4
loc_8C11FD34:
#data bank12.loc_8c1294C8
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0x7FB04F22
#data 0x2DD86D43
#data 0x1FD28F04
#data 0x420BD254
#data 0x6D03E400
#data 0x65F3D353
#data 0x430B754c
#data 0xF38D64D3
#data 0xFF34FF0c
#data 0xA0818B01
#data 0xEC000009
#data 0xE4042FC0
#data 0x65C36EF0
#data 0x63F34E08
#data 0x675E734c
#data 0x373C61F0
#data 0x67706BC3
#data 0x3210627e
#data 0x0029677e
#data 0x405A62D3
#data 0x615E4708
#data 0x41154708
#data 0x372CF32d
#data 0x8F0DF43c
#data 0x60F366C3
#data 0x306C700c
#data 0xF3E6F279
#data 0x625E7B01
#data 0x63BEF232
#data 0xF4213323
#data 0x76108FF3
#data 0x63F3605e
#data 0x40087501
#data 0x4008625e
#data 0x730C3243
#data 0x8FD2303c
#data 0xE830FE47
#data 0xEB036A43
#data 0x60BEE90c
#data 0x400863F3
#data 0x730C62D3
#data 0x400865A3
#data 0x63F3303c
#data 0xF4E6734c
#data 0x363C66Be
#data 0x615E6660
#data 0x46084108
#data 0x1F614608
#data 0x625E362c
#data 0x3243675e
#data 0x361C4708
#data 0x47088D0c
#data 0x700C60F3
#data 0xF269307c
#data 0x7501F3E6
#data 0xF232635e
#data 0xF4213343
#data 0x77108FF4
#data 0x62D353F1
#data 0x7BFF60F3
#data 0x329C323c
#data 0x700CF328
#data 0xF43363Be
#data 0x4311308c
#data 0x79FC78F0
#data 0x8DC8FE47
#data 0x63F07AFf
#data 0x2F307301
#data 0x3343633e
#data 0xD2148B8c
#data 0x750C65F3
#data 0x64D3420b
#data 0x233853F2
#data 0xD3118B02
#data 0x64D3430b
#data 0x7F50F0Fc
#data 0xFFF94F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x8B022448
#data 0x432BD306
#data 0xA0110009
#data 0x00000009

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
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF049FBFd
#data 0xF249F149
#data 0xF549F449
#data 0xF849F649
#data 0xFA49F949
#data 0xF78DF38d
#data 0xFBFDFB8d


loc_8C11FEEC:
rts
nop

;==============================================
#data 0x8B022448
#data 0x432BD302
#data 0xA0090009
#data 0x00000009

#align4
loc_8C11FF00:
#data loc_8c11FF30
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF049FBFd
#data 0xF248F149
#data 0xF4497408
#data 0xF648F549
#data 0xF8497408
#data 0xFA48F949
#data 0xF78DF38d
#data 0xFBFDFB8d


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
#data 0x8B022448
#data 0x432BD302
#data 0xA0090009
#data 0x00000009

#align4
loc_8C11FF50:
#data loc_8c11FF84
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF049FBFd
#data 0xF249F149
#data 0xF549F449
#data 0xF849F649
#data 0xFA49F949
#data 0xFD49FC49
#data 0xF38DFE49
#data 0xFB8DF78d
#data 0xFBFDFF9d


loc_8C11FF84:
rts
nop

;==============================================
	nop
	nop
	nop
	nop

#align4
loc_8C11FF90:
#data 0x2FD62FE6
#data 0xFFFB2FC6
#data 0xFFDBFFEb
#data 0x7FF44F22
#data 0x6D436E6d
#data 0x8D032EE8
#data 0xD2906C53
#data 0x64E3420b

#align4
loc_8C11FFB0:
#data 0x6EF3F2C8
#data 0xE004F3D8
#data 0xF231D38d
#data 0xF2C6FE2a
#data 0xF231F3D6
#data 0xE008FE27
#data 0xF3D6F2C6
#data 0xF42CF231
#data 0xF342F32c
#data 0xF5E8FE27
#data 0xF35EF05c
#data 0x430BFE3c
#data 0xE004F43c
#data 0xFDE6FF0c
#data 0xF0DCD381
#data 0x430BFEDe
#data 0xF50CF4Ec
#data 0xE004F5F3
#data 0xF3E6FE0c
#data 0xF3E2D37d
#data 0x430BF43c
#data 0xE008F44d
#data 0xF3E6F4E8
#data 0xF3F2D37a
#data 0xF54DF53c
#data 0xF4F2430b
#data 0x420BD278
#data 0x7F0C64D3
#data 0xFDF94F26
#data 0xFFF9FEF9
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x4F222FE6
#data 0xD3727F94
#data 0x64F32F42
#data 0x66F21F61
#data 0x7408430b
#data 0xD36F65F3
#data 0x750866F3
#data 0x430B7620
#data 0x65F354F1
#data 0x66F3D26b
#data 0x761464F3
#data 0x420B7520
#data 0xDE697408
#data 0x4E0B64F3
#data 0x64F37420
#data 0x74144E0b
#data 0x4E0B64F3
#data 0xE0207408
#data 0xF3F6F48d
#data 0xFF37E02c
#data 0xF3F6E024
#data 0xFF37E03c
#data 0xF3F6E028
#data 0xFF37E04c
#data 0xFF47E05c
#data 0xF3F6E014
#data 0xFF37E030
#data 0xF3F6E018
#data 0xFF37E040
#data 0xF3F6E01c
#data 0xFF37E050
#data 0xFF47E060
#data 0xF3F6E008
#data 0xFF37E034
#data 0xF3F6E00c
#data 0xD353E044
#data 0xFF3764F3
#data 0xF3F6E010
#data 0xFF37E054
#data 0xFF47E064
#data 0xFF47E038
#data 0xFF47E048
#data 0xFF47E058
#data 0xF39DE068
#data 0x430BFF37
#data 0xD345742c
#data 0x64F2430b
#data 0x4F267F6c
#data 0x6EF6000b

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x7F984F22
#data 0xE0046E43
#data 0x66F32F62
#data 0x761CF2E8
#data 0xD33BF358
#data 0xFF27F231
#data 0xF2E6E004
#data 0xE008F356
#data 0xFF27F231
#data 0xF2E6E008
#data 0x65F3F356
#data 0xF231E00c
#data 0xFF277504
#data 0x64F2430b
#data 0xD23165F3
#data 0x64F366F3
#data 0x751C7610
#data 0x7404420b
#data 0x64F3DD2e
#data 0x741C4D0b
#data 0x4D0B64F3
#data 0x64F37410
#data 0x74044D0b
#data 0xF48DE01c
#data 0xE028F3F6
#data 0xE020FF37
#data 0xE038F3F6
#data 0xE024FF37
#data 0xE048F3F6
#data 0xE058FF37
#data 0xE010FF47
#data 0xE02CF3F6
#data 0xE014FF37
#data 0xE03CF3F6
#data 0xE018FF37
#data 0xE04CF3F6
#data 0xE05CFF37
#data 0xE004FF47
#data 0xE030F3F6
#data 0xE008FF37
#data 0xE040F3F6
#data 0x64F3D318
#data 0xE00CFF37
#data 0xE050F3F6
#data 0xE060FF37
#data 0xE034FF47
#data 0xE044FF47
#data 0xE054FF47
#data 0xE064FF47
#data 0xFF37F39d
#data 0x7428430b
#data 0x420BD20a
#data 0x7F6864E3
#data 0x6DF64F26
#data 0x6EF6000b

;==============================================

#align4
loc_8C1201E0:
#data 0x8B012448
#data 0x5442D40a

#align4
loc_8C1201E8:
#data 0x0009A01a

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
#data 0x8C2D68E8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;nop padding
#repeat 6
	nop