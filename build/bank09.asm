loc_8C09025C:
	mov 0x02,r0
	mov.w @(0xFE,PC),r6
	mov.b r0,@(0x4,r4)
	mov.b @(0x1,r4),r0
	mov.l @(0x18,r4),r5
	mov r0,r3
	mov.b @(0x1,r5),r0
	cmp/eq r0,r3
	bf.s loc_8c090274
	add r5,r6
	mov 0x00,r0
	mov.b r0,@(0x2,r6)

loc_8C090274:
	rts
	nop

;----------------------------------------------
loc_8C090278:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xE8,PC),r3
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
	bt loc_8c0902cc
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x96,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0902CC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0902D2:
	mov.w @(loc_8C090362,pc),r0; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r4)

loc_8C0902D8:
	mov.l @(loc_8C090370,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0902DE:
	mov.w @(loc_8C090364,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C090364,pc),r0; r0 set to 0xDc
	sts.l pr,@-r15
	mov.l @(0x18,r4),r2
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C090374,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C090362,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C090366,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C090378,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x20,r2 ; r2 set to 0x20
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov 0x24,r3 ; r3 set to 0x24
	mov.w @(loc_8C090368,pc),r0; r0 set to 0x13d
	mov.b r2,@(r0,r4)
	add 0xFF,r0; r0 set to 0x13c
	mov.b r2,@(r0,r4)
	add 0x03,r0; r0 set to 0x13f
	mov.b r3,@(r0,r4)
	add 0xFF,r0; r0 set to 0x13e
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.b r3,@(r0,r4)
	mov r3,r0; r0 set to 0x24
	nop
	lds.l @r15+,pr
	rts
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C090360:
	#data 0x02A4
loc_8C090362:
	#data 0x012c
loc_8C090364:
	#data 0x00Dc
loc_8C090366:
	#data 0x01A3
loc_8C090368:
	#data 0x013d
	#align4

loc_8C09036C:
	#data bank03.loc_8c034dee
loc_8C090370:
	#data bank04.loc_8c0450C0
loc_8C090374:
	#data bank12.loc_8c129560
loc_8C090378:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c09037c:
	mov 0x34,r0
	mov.l r14,@-r15
	fmov.s @(r0,r5),fr3
	mov r6,r14
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @r14,r3
	mov.w @(0x04,r14),r0
	lds r3,fpul 
	mov r0,r3
	mov.w @(loc_8C09041C,pc),r0
	float fpul,fr4
	mov.w @(r0,r5),r2
	lds r3,fpul 
	tst r2,r2
	bt/s loc_8c0903a6
	float fpul,fr5
	fneg fr4
	fneg fr5

loc_8c0903a6:
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r2
	add r4,r2
	fadd fr5,fr3
	mov 0x42,r5
	fmov.s fr3,@(r0,r4)
	mov.w @(0x06,r14),r0
	fmov.s @r2,fr2
	mov r0,r3
	lds r3,fpul 
	mov 0x5C,r0
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	fmov.s fr4,@(r0,r4)
	mov.w @(0x02,r14),r0
	mov r0,r3
	lds r3,fpul 
	mov 0x60,r0
	float fpul,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09041E,pc),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	mov.b @(0x09,r14),r0
	mov.w @(loc_8C090420,pc),r1
	mov 0x00,r5
	mov.l @(loc_8C090424,pc),r3
	add r4,r1
	mov.b r0,@r1
	mov.w @(loc_8C090422,pc),r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov 0x15,r5
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.b @(0x08,r14),r0
	mov.l @(loc_8c090428,pc),r2
	extu.b r0,r6
	jmp @r2
	mov.l @r15+,r14

loc_8C090418:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09041c:
	#data 0x0130
loc_8c09041e:
	#data 0x019C
loc_8c090420:
	#data 0x01A1
loc_8c090422:
	#data 0x01AC
	#align4

loc_8c090424:
	#data 0x8C2896B0
loc_8C090428:
	#data bank03.loc_8c034e8c

;==============================================
;Unused
loc_8C09042c:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x04,r0
	mov.l @(0x144,PC),r3
	mov.b r5,@r15
	mov 0x01,r5
	mov r4,r14
	mov 0x00,r6
	fmov fr4,fr15
	fmov fr5,@(r0,r15)
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c090484
	mov r0,r4
	mov.l @(0x130,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	mov.w @(0x10E,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.l r14,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0x106,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c09046a
	fneg fr15

loc_8c09046a:
	mov.w @(0xFE,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(0xFC,PC),r0
	mov.w r3,@(r0,r4)
	mov.w @(0xFA,PC),r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	add 0xF8,r0
	fmov fr15,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(0xEE,PC),r0
	fmov fr3,@(r0,r4)

loc_8c090484:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c090492:
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
	mov.l @(loc_8c09057c,pc),r8
	mov r4,r12
	mov.l @(loc_8c090584,pc),r9

loc_8c0904b2:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r8
	mov r10,r4
	tst r0,r0
	bt/s loc_8c0904de
	mov r0,r4
	mov 0x20,r0
	mov.l @(loc_8c090580,pc),r2
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
	mov.w @(loc_8C090570,pc),r0
	mov.b r2,@(r0,r4)

loc_8c0904de:
	add 0x01,r13
	exts.b r13,r3
	cmp/ge r11,r3
	bf loc_8c0904b2
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
loc_8c0904f8:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	mov.l @(0x84,PC),r2
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
	mova @(0x6C,PC),r0
	fmov @r0,fr2
	mov.w @(0x54,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bf.s loc_8c09052c
	fmul fr2,fr4
	fneg fr4

loc_8c09052c:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8C090536:
	mov.l r14,@-r15
	mov 0x20,r0; r0 set to 0x20
	mov r4,r14
	mov.l @(loc_8C090584,pc),r5 ; r5 set to 0x8C28C628
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(loc_8C09058C,pc),r4 ; r4 set to 0x8C28C630
	tst r3,r3
	bf loc_8C090594
	mov.w @(loc_8C090576,pc),r2 ; r2 set to 0x2A4
	mov.l @(0x18,r14),r3
	mov.l @(loc_8C090590,pc),r1 ; r1 set to 0x8C15513c
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.w @(loc_8C090578,pc),r3 ; r3 set to 0x88
	mov.l r2,@r4 ; r4 ??? bc r2 is ???
	mov r14,r4
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r5 ; r5 ??? bc r3 is ???
	mov.b @(0x04,r14),r0
	lds.l @r15+,pr
	extu.b r0,r0; r0 set to 0x20
	shll2 r0; r0 set to 0x80
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c090568:
	#data 0x1E01
loc_8c09056a:
	#data 0x01D2
loc_8c09056c:
	#data 0x0158
loc_8c09056e:
	#data 0x009A
loc_8c090570:
	#data 0x0098
loc_8c090572:
	#data 0x0094
loc_8c090574:
	#data 0x0130
loc_8C090576:
	#data 0x02A4
loc_8C090578:
	#data 0x0088
	#align4

loc_8C09057C:
	#data bank04.loc_8c044F12
loc_8C090580:
	#data loc_8c090536
loc_8C090584:
	#data 0x8C28C628
loc_8C090588:
	#data 0x3FD55555
loc_8C09058C:
	#data 0x8C28C630
loc_8C090590:
	#data bank15.loc_8c15513c

;==============================================
loc_8C090594:
	mov.w @(loc_8C0906AE,pc),r3 ; r3 set to 0x2A4
	mov.l @(0x18,r14),r2
	add r2,r3 ; r3 ??? bc r2 is ???
	mov.w @(loc_8C0906B0,pc),r2 ; r2 set to 0x88
	mov.l r3,@r4
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.l r2,@r5
	mov.w @(loc_8C0906B0,pc),r2 ; r2 set to 0x88
	mov.l @(0x18,r14),r3
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C0906B4,pc),r3 ; r3 set to 0x8C28C62c
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	bsr loc_8C0904F8
	mov r14,r4
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0906B8,pc),r1 ; r1 set to 0x8C15514c
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0905C2:
	mov.l @(0x18,r4),r3
	mov 0x34,r0; r0 set to 0x34
	mov.l @(loc_8C0906BC,pc),r5 ; r5 set to 0x8C28C628
	mov 0x08,r1 ; r1 set to 0x08
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	mov.l @r5,r3
	fmov.s @(r0,r4),fr2
	add r3,r1 ; r1 ??? bc r3 is ???
	fmov.s @r1,fr3
	mov 0x0C,r1 ; r1 set to 0x0c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @r5,r3
	fmov.s @(r0,r4),fr2
	add r3,r1 ; r1 ??? bc r3 is ???
	fmov.s @r1,fr3
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0905F6:
	mov.l @(0xC4,PC),r5
	mov 0x0C,r3
	mov.l @r5,r4
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c09061e
	mov.b @(0x3,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x3,r4)
	extu.b r0,r0
	cmp/pl r0
	bt loc_8c09061e
	mov.l @r5,r1
	mov 0x02,r0
	mov.b r0,@(0x3,r1)
	mov.l @r5,r2
	mov.b @(0x2,r2),r0
	add 0x01,r0
	mov.b r0,@(0x2,r2)

loc_8C09061E:
	rts
	nop

;----------------------------------------------
loc_8C090622:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c09064c
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
	bf loc_8c09064c
	mov.l @r4,r1
	mov 0x05,r2
	mov.b r2,@r1

loc_8C09064C:
	rts
	nop

;----------------------------------------------
loc_8C090650:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c09066a
	mov.l @(0x5C,PC),r2
	mov 0x02,r0
	mov.w r0,@(0x1C,r4)
	mov.l @r2,r3
	mov.b @r3,r1
	add 0xFF,r1
	mov.b r1,@r3

loc_8C09066A:
	rts
	nop

;----------------------------------------------
loc_8c09066e:
	mov.l @(loc_8c0906b4,pc),r3
	mov.l @(loc_8c0906bc,pc),r5
	mov.l r14,@-r15
	mov.l @r3,r7
	mov.l @r5,r6
	mov.b @r7,r1
	mov.b @r6,r2
	cmp/eq r1,r2
	bt loc_8c0906aa
	mov.b @r7,r1
	mov.b r1,@r6
	mov.l @r5,r6
	mov.l @r5,r1
	mov.b @r6,r6
	mov.b @(0x06,r1),r0
	mov r6,r2
	shll r6
	tst r0,r0
	add r2,r6
	bt/s loc_8c09069e
	mov 0x00,r14
	mov.l @r5,r14
	mov.b @(0x01,r14),r0
	mov r0,r14

loc_8c09069e:
	mov.l @(loc_8c0906c0,pc),r3
	add r6,r14
	mov 0x19,r5
	extu.b r14,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c0906aa:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0906ae:
	#data 0x02A4

loc_8c0906b0:
	#data 0x0088
	#align4

loc_8c0906b4:
	#data 0x8C28C62C
loc_8c0906b8:
	#data bank15.loc_8C15514C
loc_8c0906bc:
	#data 0x8C28C628
loc_8c0906c0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0906C4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(loc_8C090818,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C090824,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C090818,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C09081A,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09081C,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C090828,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x02,r12 ; r12 set to 0x02
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2 ; r2 set to 0x24
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt/s loc_8C090750
	mov 0x00,r13 ; r13 set to 0x00
	mov r12,r0; r0 set to 0x02
	nop
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C09081A,pc),r0; r0 set to 0x12c
	bra loc_8C09079c
	mov.b r13,@(r0,r14)

loc_8C090750:
	mov.w @(loc_8C09081A,pc),r0; r0 set to 0x12c
	mov.b r13,@(r0,r14)
	bsr loc_8C0905C2
	mov r14,r4
	mov.l @(loc_8C09082C,pc),r4 ; r4 set to 0x8C28C628
	mov 0x24,r0; r0 set to 0x24
	mov.b r13,@(r0,r14)
	mov.l @r4,r3
	mov r3,r2
	mov r13,r0; r0??? bc r13 is ???
	nop
	mov.b r0,@(0x07,r2)
	mov.b r0,@r3
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0; r0 set to 0x22
	mov 0x0C,r3 ; r3 set to 0x0c
	mov.b r3,@(r0,r14)
	mov 0x42,r5 ; r5 set to 0x42
	mov.w @(loc_8C09081E,pc),r0; r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r14)
	mov.l @r4,r3 ; r3 ??
	mov r13,r0; r0??? bc r13 is ???
	nop
	mov.b r0,@(0x02,r3)
	mov.l @r4,r3
	mov r12,r0
	nop
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.b r0,@(0x03,r3)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C090492
	mov.l @r15+,r14

loc_8C09079C:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0907A6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0905C2
	mov r4,r14
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C090830,pc),r1 ; r1 set to 0x8C15515c
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0907C0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bf.s loc_8c0907e0
	mov 0x00,r5
	mov.w @(0x48,PC),r1
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c0907f0

loc_8C0907E0:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x30,PC),r0
	mov.b r5,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0907F0:
	mov.w @(0x2E,PC),r1
	mov.l @(0x18,r14),r0
	mov.l @(0x34,PC),r4
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt.s loc_8c090834
	mov 0x02,r6
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

;----------------------------------------------
loc_8C090818:
	#data 0x00Dc
loc_8C09081A:
	#data 0x012c
loc_8C09081C:
	#data 0x01A3
loc_8C09081E:
	#data 0x019c
loc_8C090820:
	#data 0x0159
loc_8C090822:
	#data 0x0158
	#align4

loc_8C090824:
	#data bank12.loc_8c129560
loc_8C090828:
	#data bank12.loc_8c1294C8
loc_8C09082C:
	#data 0x8C28C628
loc_8C090830:
	#data bank15.loc_8c15515c

;==============================================
loc_8C090834:
	mov.l @(0x124,PC),r7
	mov 0x3C,r0
	mov 0x01,r1
	mov.w @(r0,r7),r3
	mov 0x3B,r0
	mov.b @(r0,r7),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c090878
	mov.l @r4,r1
	mov r5,r0
	nop
	mov.b r0,@(0x7,r1)
	mov.l @(0x18,r14),r3
	mov.w @(0x1C,r3),r0
	cmp/pl r0
	bt loc_8c09086c
	mov.b @(0x5,r14),r0
	mov 0x04,r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.l @r4,r3
	mov.b r2,@r3
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8C09086C:
	bsr loc_8c0905f6
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c090622
	mov.l @r15+,r14

loc_8C090878:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C09087E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C090954,pc),r1 ; r1 set to 0x159
	sts.l pr,@-r15
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt/s loc_8C0908A2
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C090956,pc),r0; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0908a2:
	mov.l @(loc_8C090960,pc),r2
	mov.l @r2,r3
	mov r4,r0
	nop
	mov.b r0,@(0x07,r3)
	bsr loc_8c090650
	mov r14,r4
	mov.l @(loc_8C090960,pc),r3
	mov.l @r3,r2
	mov.b @r2,r1
	cmp/pz r1
	bt loc_8c0908c0
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c0908c0:
	lds.l @r15+,pr 
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0908C6:
	mov.w @(loc_8C090956,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)

loc_8C0908CC:
	mov.l @(loc_8C090964,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0908D2:
	mov.w @(loc_8C090958,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C090968,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C090958,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C090956,pc),r0; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09095A,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C09096C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.b @(0x01,r4),r0
	mov.l @(0x18,r4),r3
	mov r0,r2 ; r2 set to 0x24
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt/s loc_8C090970
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x02,r0; r0 set to 0x02
	mov.b r0,@(0x04,r4)
	lds.l @r15+,pr
	mov.w @(loc_8C090956,pc),r0; r0 set to 0x12c
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C090954:
	#data 0x0159
loc_8C090956:
	#data 0x012c
loc_8C090958:
	#data 0x00Dc
loc_8C09095A:
	#data 0x01A3
	#align4

loc_8C09095c:
	#data 0x8C2895F0
loc_8c090960:
	#data 0x8C28C628
loc_8C090964:
	#data bank04.loc_8c0450C0
loc_8C090968:
	#data bank12.loc_8c129560
loc_8C09096C:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C090970:
	mov.w @(loc_8C090A36,pc),r0; r0 set to 0x12c
	mov 0x0C,r3 ; r3 set to 0x0c
	mov 0x42,r7 ; r7 set to 0x42
	mov.b r5,@(r0,r4)
	mov 0x22,r0; r0 set to 0x22
	mov.b r3,@(r0,r4)
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.w @(loc_8C090A38,pc),r0; r0 set to 0x19c
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b r7,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r7,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24
	mov.l @(loc_8C090A3C,pc),r7 ; r7 set to 0x8C28C628
	mov.b r3,@(r0,r4)
	mov.l @r7,r3 ; r3 ??
	mov.b r2,@r3
	mov.l @r7,r3
	mov r5,r0; r0??? bc r5 is ???
	nop
	mov.b r0,@(0x05,r3)
	mov.l @r7,r3
	mov r6,r0
	nop
	mov.b r0,@(0x01,r3)
	mov 0x55,r3 ; r3 set to 0x55
	mov.w @(loc_8C090A3A,pc),r0; r0 set to 0x1A1
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4
	mov.l @(loc_8C090A40,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bra loc_8C09066e
	lds.l @r15+,pr

;unused
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0909D0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.b @(0x04,r3),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8C0909Fa
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C090A36,pc),r0; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0908Cc
	mov.l @r15+,r14

loc_8C0909FA:
	mov.l @(loc_8C090A44,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0; r0 set to 0x3c
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(r0,r4),r3
	mov 0x3B,r0; r0 set to 0x3b
	mov.b @(r0,r4),r2
	mov r6,r1 ; r1 set to 0x01
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???
	tst r1,r3
	bf loc_8C090AE6
	mov.l @(loc_8C090A3C,pc),r4 ; r4 set to 0x8C28C628
	mov.l @r4,r3
	mov r6,r0; r0 set to 0x01
	nop
	mov.l @(loc_8C090A48,pc),r13 ; r13 set to 0x8C28C62c
	mov.b r0,@(0x01,r3)
	mov.w @(loc_8C090A36,pc),r0; r0 set to 0x12c
	mov.b r6,@(r0,r14)
	mov.l @r13,r7
	mov.l @r4,r3
	mov.b @(0x02,r7),r0
	mov r0,r2 ; r2 set to 0x12c
	mov.b @(0x06,r3),r0
	cmp/hs r0,r2
	bt loc_8C090A4c
	mov.w @(loc_8C090A36,pc),r0; r0 set to 0x12c
	bra loc_8C090AE6
	mov.b r5,@(r0,r14)

;##############################################
loc_8C090A36:
	#data 0x012c
loc_8C090A38:
	#data 0x019c
loc_8C090A3A:
	#data 0x01A1
	#align4

loc_8C090A3C:
	#data 0x8C28C628
loc_8C090A40:
	#data 0x8C2896B0
loc_8C090A44:
	#data 0x8C2895F0
loc_8C090A48:
	#data 0x8C28C62c

;----------------------------------------------
loc_8c090a4c:
	mov.b @(0x02,r7),r0
	mov.l @r4,r1
	mov r0,r3
	mov.b @(0x06,r1),r0
	cmp/eq r0,r3
	bf loc_8c090a66
	mov 0x02,r0
	mov.b r0,@(0x01,r1)
	mov 0xFF,r2
	mov.w @(loc_8c090afe,pc),r0
	mov.l @r4,r3
	mov.b r2,@r3
	mov.b r6,@(r0,r14)

loc_8c090a66:
	mov.w @(loc_8C090B00,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c090ace
	mov.l @r4,r3
	mov r6,r0
	nop
	mov.b r0,@(0x01,r3)
	mov 0xFF,r2
	mov.l @r4,r3
	mov.w @(loc_8C090B02,pc),r0
	mov.b r2,@r3
	mov.l @r13,r3
	mov.b r0,@(0x07,r3)
	mov.w @(loc_8C090B04,pc),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	tst r3,r3
	bf loc_8c090ace
	mov.l @r4,r3
	mov.b @(0x05,r3),r0
	add 0x01,r0
	mov.b r0,@(0x05,r3)
	mov 0x03,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8c090aac
	mov 0x56,r6
	mov.l @r4,r1
	mov r5,r0
	nop
	mov 0x55,r6
	mov.b r0,@(0x05,r1)

loc_8c090aac:
	mov.w @(loc_8C090B06,pc),r0
	mov.l @(loc_8C090B08,pc),r3
	mov.b r6,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c090ace:
	bsr loc_8c09066e
	mov r14,r4
	mov.l @r13,r2
	mov.b @(0x07,r2),r0
	tst r0,r0
	bf loc_8c090ae6
	lds.l @r15+,pr 
	mov.l @(loc_8c090b0c,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C090AE6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C090AEE:
	mov.w @(loc_8C090AFE,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	bra loc_8C0908Cc
	nop

loc_8C090AF8:
	mov.l @(loc_8C090B10,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C090AFE:
	#data 0x012c
loc_8c090b00:
	#data 0x019e
loc_8c090b02:
	#data 0x00FF
loc_8c090b04:
	#data 0x01A0
loc_8c090b06:
	#data 0x01A1
	#align4

loc_8c090b08:
	#data 0x8C2896B0
loc_8C090B0C:
	#data bank04.loc_8c045748
loc_8C090B10:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c090b14:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0x8C,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c090b48
	mov r0,r4
	mov 0x00,r2
	mov.l @(0x7C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov.w @(0x6A,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x60,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(0x5E,PC),r0
	mov.w r2,@(r0,r4)

loc_8c090b48:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C090B52:
	mov.l r14,@-r15
	mov 0x01,r6
	sts.l pr,@-r15
	mov.l @(0x4C,PC),r3
	mov r6,r5
	mov r4,r14
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c090b82
	mov r0,r4
	mov.l @(0x40,PC),r3
	mov 0x20,r0
	mov 0x01,r2
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.w @(0x26,PC),r3
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.l r14,@(0x14,r4)

loc_8C090B82:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C090B88:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C090F1a
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C090BB0,pc),r1 ; r1 set to 0x8C155164
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c090ba2:
	#data 0x1e02
loc_8c090ba4:
	#data 0x0158
loc_8c090ba6:
	#data 0x00cc
	#align4

loc_8C090BA8:
	#data bank04.loc_8c044F12
loc_8C090BAC:
	#data loc_8c090B88
loc_8C090BB0:
	#data bank15.loc_8c155164

;==============================================
loc_8C090BB4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	mov.w @(0x130,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x128,PC),r2
	add 0x01,r0
	mov.l @(0x134,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x122,PC),r0
	mov.l @(0x18,r14),r9
	jsr @r3
	add r9,r2
	mov.w @(0x11C,PC),r0
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
	mov.w @(0xF8,PC),r0
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
	mov.l @(0xEC,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.l @(0xE4,PC),r11
	mov.b @(r0,r1),r3
	mov.l @(0xE4,PC),r12
	mov.b r3,@(r0,r14)
	mov.w @(0xC8,PC),r0
	mov.b r10,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c090cda
	mov 0x00,r13
	mov 0x34,r0
	fmov @(r0,r9),fr3
	fmov fr3,@(r0,r14)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r9),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xC8,PC),r0
	fmov @r0,fr4
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r9),r3
	tst r3,r3
	bt loc_8c090c62
	mova @(0xC0,PC),r0
	fmov @r0,fr4

loc_8C090C62:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	jsr @r12
	fmov fr3,@(r0,r14)
	and 0x3F,r0
	lds r0,fpul
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	float fpul,fr2
	fmov fr2,fr15
	jsr @r12
	fmul fr3,fr15
	and 0x1F,r0
	lds r0,fpul
	mova @(0xA4,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fmov fr3,fr14
	jsr @r12
	fmul fr2,fr14
	tst r10,r0
	bt loc_8c090c92
	fneg fr15

loc_8C090C92:
	jsr @r12
	nop
	tst r10,r0
	bt.s loc_8c090c9e
	mov 0x34,r0
	fneg fr14

loc_8C090C9E:
	fmov @(r0,r14),fr3
	fadd fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr14,fr2
	jsr @r12
	fmov fr2,@(r0,r14)
	tst r10,r0
	bt loc_8c090cc6
	mov 0x17,r5
	mov 0x08,r6
	jsr @r11
	mov r14,r4
	mov 0x24,r0
	mov 0x0B,r2
	mov.b r2,@(r0,r14)
	mov 0x21,r0
	bra loc_8c090daa
	mov.b r13,@(r0,r14)

loc_8C090CC6:
	mov 0x17,r5
	mov 0x09,r6
	jsr @r11
	mov r14,r4
	mov 0x24,r0
	mov 0x0D,r2
	mov.b r2,@(r0,r14)
	mov 0x21,r0
	bra loc_8c090daa
	mov.b r10,@(r0,r14)

loc_8C090CDA:
	mov.w @(0x26,PC),r0
	mov 0x30,r4
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0x03,r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c090d2c
	mov 0x24,r0
	bra loc_8c090d2e
	mov 0x0C,r3

;##############################################
loc_8c090cfa:
	#data 0x00dc
loc_8c090cfc:
	#data 0x00c0
loc_8c090cfe:
	#data 0x012c
loc_8c090d00:
	#data 0x01a3
loc_8c090d02:
	#data 0x01d2
loc_8c090d04:
	#data 0x013d
	#align4

loc_8C090D08:
	#data bank12.loc_8c129560
loc_8C090D0C:
	#data bank12.loc_8c1294C8
loc_8C090D10:
	#data bank03.loc_8c034e8c
loc_8C090D14:
	#data bank03.loc_8c03319e
loc_8C090D18:
	#data 0x42C52492
loc_8C090D1c:
	#data 0xC2C4AAAa
loc_8C090D20:
	#data 0x42C4AAAa
loc_8C090D24:
	#data 0x3FD55555
loc_8C090D28:
	#data 0x40092492

;----------------------------------------------
loc_8C090D2C:
	mov 0x0A,r3

loc_8C090D2E:
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	jsr @r12
	fmov fr3,@(r0,r14)
	and 0x01,r0
	mov.l @(0x10C,PC),r3
	mov r0,r4
	mov.w @(0xFA,PC),r0
	add 0x57,r4
	mov.b r4,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov 0x42,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xD8,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(0xCC,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c090d88
	mova @(0xD4,PC),r0
	bra loc_8c090d8c
	fmov @r0,fr3

loc_8C090D88:
	mova @(0xD0,PC),r0
	fmov @r0,fr3

loc_8C090D8C:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x15,r5
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	mov 0x10,r6
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	jsr @r11
	mov r14,r4

loc_8C090DAA:
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
loc_8C090DBE:
	mov 0x20,r0; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C090E64,pc),r0; r0 set to 0x8C155174
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C090DD2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c090dec
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bsr loc_8c090f0e
	mov r14,r4

loc_8C090DEC:
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c090e00
	mov 0x00,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	bra loc_8c090b52
	mov.l @r15+,r14

loc_8C090E00:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C090E06:
	mov.b @(0x5,r4),r0
	mov 0x12,r6
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x3C,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	mov.l @(0x54,PC),r3
	mov.w r2,@(r0,r4)
	jmp @r3
	mov 0x15,r5

;==============================================
loc_8C090E1C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c090eea
	mov.l @(0x18,r14),r13
	mov.w @(0x20,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c090e3c
	mov.w @(0x1A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c090e70

loc_8C090E3C:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c090e06
	mov.l @r15+,r14

;----------------------------------------------
loc_8c090e46:
	#data 0x01a1
loc_8c090e48:
	#data 0x019c
loc_8c090e4a:
	#data 0x0130
loc_8c090e4c:
	#data 0x0141
loc_8c090e4e:
	#data 0x012e
loc_8c090e50:
	#data 0x019e
loc_8c090e52:
	#data 0x019f
	#align4

loc_8c090e54:
	#data 0x8C2896B0
loc_8c090e58:
	#data 0x41555555
loc_8c090e5c:
	#data 0xC1555555
loc_8c090e60:
	#data 0xC12B6DB6
loc_8C090E64:
	#data bank15.loc_8c155174
loc_8C090E68:
	#data bank03.loc_8c034dee
loc_8C090E6C:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C090E70:
	mov.l @(0xB0,PC),r2
	jsr @r2
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
	xor 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.l @(0x18,r14),r3
	mov.w @(0x64,PC),r1
	mov.w @(0x62,PC),r2
	add r3,r1
	mov.w @(0x1C,r14),r0
	mov.w @r1,r3
	add r14,r2
	add r3,r0
	mov.w r0,@r2
	mov.w @(0x56,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c090ede
	mov.w @(0x4A,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c090e06
	mov r14,r4

loc_8C090EDE:
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C090EEA:
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c090f06
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c090f0e
	mov.l @r15+,r14

loc_8C090F06:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C090F0E:
	mov.w @(loc_8C090F22,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)

loc_8C090F14:
	mov.l @(loc_8C090F2C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C090F1A:
	rts
	nop

;----------------------------------------------
loc_8C090F1e:
	#data 0x012e
loc_8C090F20:
	#data 0x041c
loc_8C090F22:
	#data 0x012c
	#align4

loc_8C090F24:
	#data bank03.loc_8c034dee
loc_8C090F28:
	#data bank04.loc_8c045748
loc_8C090F2C:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c090f30:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x160,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c090f5c
	mov r0,r4
	mov.l @(0x150,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x12C,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c090f5c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
;Unused
loc_8c090f64:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x124,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c090fac
	mov r0,r4
	mov.l @(0x118,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0xF6,PC),r2
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x22,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov.w @(0xE4,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(0xE2,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)

loc_8c090fac:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C090FB8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00
	mov.l r11,@-r15
	mov 0x01,r11 ; r11 set to 0x01
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0910A4,pc),r10; r10set to 0x8C2896B0
	tst r0,r0
	bt/s loc_8C090FD8
	mov.l @(0x18,r14),r13
	bra loc_8C091100
	nop

loc_8C090FD8:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C09108A,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0910A8,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C09108C,pc),r0; r0 set to 0xC0
	mov.w @(loc_8C09108A,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C09108E,pc),r0; r0 set to 0x12c
	mov r14,r1
	add 0x50,r1
	mov.b r11,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C091090,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0910AC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x42,r4 ; r4 set to 0x42
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C09108E,pc),r0; r0 set to 0x12c
	mov.b r11,@(r0,r14)
	add 0x70,r0; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C091092,pc),r0; r0 set to 0x255
	mov.b @(r0,r13),r0; r0??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8C091070
	mov.w @(loc_8C091094,pc),r0; r0 set to 0x1A1
	mov 0x4B,r2 ; r2 set to 0x4b
	mov 0x0F,r4 ; r4 set to 0x0f
	mov.b r2,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r12,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r12,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r10,r3 ; r3 ??? bc r10is ???
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r2 ; r2 ??? bc r3 is ???
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov r4,r0; r0 set to 0x0f
	nop
	mov.w r0,@(0x1E,r14)
	bra loc_8C0910Ea
	mov.w r0,@(0x1C,r14)

loc_8C091070:
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0910B0
	mov.w @(loc_8C091090,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0; r0 set to 0x1A1
	add 0x32,r3
	bra loc_8C0910Ba
	mov.b r3,@(r0,r14)

;##############################################
loc_8C091084:
	#data 0x1F00
loc_8C091086:
	#data 0x0158
loc_8C091088:
	#data 0x00Cc
loc_8C09108A:
	#data 0x00Dc
loc_8C09108C:
	#data 0x00C0
loc_8C09108E:
	#data 0x012c
loc_8C091090:
	#data 0x01A3
loc_8C091092:
	#data 0x0255
loc_8C091094:
	#data 0x01A1
	#align4

loc_8C091098:
	#data bank04.loc_8c044F12
loc_8C09109C:
	#data loc_8c091270
loc_8C0910A0:
	#data loc_8c090FB8
loc_8C0910A4:
	#data 0x8C2896B0
loc_8C0910A8:
	#data bank12.loc_8c129560
loc_8C0910AC:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0910B0:
	mov.w @(loc_8C0911A4,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	add 0xFE,r0; r0 set to 0x1A1
	add 0x48,r2
	mov.b r2,@(r0,r14)

loc_8C0910BA:
	mov.w @(loc_8C0911A6,pc),r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r12,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r12,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r10,r3
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov 0x04,r0; r0 set to 0x04, r0 set to 0x04
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0911A4,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0910E6
	bra loc_8C0910E8
	mov 0x19,r0

loc_8c0910e6:
	mov 0x1E,r0

loc_8c0910e8:
	mov.w r0,@(0x1C,r14)

loc_8c0910ea:
	mov 0x20,r0
	mov.l @(loc_8c0911b4,pc),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	add 0x12,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0911b8,pc),r2
	mov 0x4B,r5
	jsr @r2
	mov r13,r4

loc_8c091100:
	mov 0x20,r0
	mov.l @(loc_8c0911bc,pc),r4
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll2 r0
	fmov.s @(r0,r4),fr3
	mov 0x34,r0
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	shll r3
	shll2 r3
	add r3,r4
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0911A8,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c091136
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c091136:
	mov 0x34,r0
	mov r0,r1
	add r13,r1
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	mov r0,r1
	add r13,r1
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0911AA,pc),r0
	mov.w @(r0,r13),r3
	mov.w @(loc_8C0911AC,pc),r0
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bf loc_8c091250
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c091230
	mov.w @(loc_8C0911AE,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0911fe
	mov.w @(loc_8C0911B0,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c091180
	mov.b @(r0,r14),r3
	add 0xFF,r3
	bra loc_8c091262
	mov.b r3,@(r0,r14)

loc_8c091180:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0911e6
	mov 0x04,r0
	mov.w r0,@(0x1E,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0911c0
	mov.w @(loc_8c0911a4,pc),r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x32,r3
	bra loc_8c0911ca
	mov.b r3,@(r0,r14)

;##############################################
loc_8c0911a4:
	#data 0x01A3
loc_8c0911a6:
	#data 0x01AC
loc_8C0911A8:
	#data 0x0130
loc_8C0911AA:
	#data 0x0158
loc_8C0911AC:
	#data 0x00CC
loc_8C0911AE:
	#data 0x019F
loc_8C0911B0:
	#data 0x01A0
	#align4

loc_8c0911b4:
	#data bank03.loc_8c034e8c
loc_8c0911b8:
	#data bank04.loc_8c04223a
loc_8c0911bc:
	#data bank15.loc_8c15517c

;----------------------------------------------
loc_8c0911c0:
	mov.w @(loc_8C091282,pc),r0
	mov.b @(r0,r14),r2
	add 0xFE,r0
	add 0x48,r2
	mov.b r2,@(r0,r14)

loc_8c0911ca:
	mov.w @(loc_8C091284,pc),r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r10,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)

loc_8c0911e6:
	mov.l @(loc_8c09128c,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c09121e
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c0911fe:
	mov.b @(0x04,r14),r0
	mov 0x17,r5
	mov.l @(loc_8c091290,pc),r3
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x20,r0
	lds.l @r15+,pr 
	mov.b @(r0,r14),r6
	mov.l @r15+,r10
	add 0x14,r6
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09121e:
	lds.l @r15+,pr 
	mov.l @(loc_8c091294,pc),r3
	mov r14,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c091230:
	cmp/eq 0x02,r0
	bf loc_8c091250
	mov.l @(loc_8c09128c,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c091262
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C091286,pc),r0
	mov.b r12,@(r0,r14)
	mov.w @(loc_8C091288,pc),r0
	bra loc_8c091262
	mov.l r11,@(r0,r13)

loc_8c091250:
	lds.l @r15+,pr 
	mov.l @(loc_8c091298,pc),r2
	mov r14,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c091262:
	lds.l @r15+,pr 
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C091270:
	mov r4,r3
	mov.l @(loc_8C09129C,pc),r1 ; r1 set to 0x8C15518c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c091282:
	#data 0x01A3
loc_8c091284:
	#data 0x01Ac
loc_8c091286:
	#data 0x012C
loc_8c091288:
	#data 0x02F4
	#align4

loc_8C09128C:
	#data bank03.loc_8c034dee
loc_8C091290:
	#data bank03.loc_8c034e8c
loc_8C091294:
	#data bank04.loc_8c045748
loc_8C091298:
	#data bank04.loc_8c0450C0
loc_8C09129C:
	#data bank15.loc_8c15518c

;==============================================
loc_8C0912A0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x18A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x190,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x17C,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x174,PC),r0
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
	mov.w @(0x150,PC),r0
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
	mov.l @(0x144,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x42,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0xF8,r3
	mov.w @(0x120,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x22,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov.w @(0x116,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	mov.l @(0x11C,PC),r5
	extu.b r0,r0
	shll r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	shll2 r3
	add r3,r5
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	mov.l @(0x100,PC),r5
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r5,r3
	fmov @(r0,r3),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x08,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r5,r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x0C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r5
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x9C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0913ba
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0913BA:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	mov r0,r1
	fmov @(r0,r14),fr2
	add r3,r1
	fmov @r1,fr3
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
	mov.l @(0x70,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov.w @(0x54,PC),r0
	mov.l @(0x6C,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @r3,r2
	add 0x7C,r2
	mov.b @(0x2,r14),r0
	mov 0x17,r5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov.l @(0x48,PC),r2
	add 0x01,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C09141A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x24,r0; r0 set to 0x24
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0914D0
	bra loc_8C09145c
	nop

;##############################################
loc_8c091432:
	#data 0x00dc
loc_8c091434:
	#data 0x012c
loc_8c091436:
	#data 0x01a3
loc_8c091438:
	#data 0x019c
loc_8c09143a:
	#data 0x0130
loc_8c09143c:
	#data 0x01a1
	#align4

loc_8C091440:
	#data bank12.loc_8c129560
loc_8C091444:
	#data bank12.loc_8c1294C8
loc_8C091448:
	#data bank13.loc_8c13AF24
loc_8C09144C:
	#data bank13.loc_8c13AF3c
loc_8C091450:
	#data bank15.loc_8c15519c
loc_8c091454:
	#data 0x8C2896B0
loc_8C091458:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8C09145C:
	mov.w @(loc_8C09154A,pc),r0; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C091478
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C091554,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x0A,r6 ; r6 set to 0x0a
	add 0x01,r0; r0 set to 0x19f
	mov.b r0,@(0x05,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C091478:
	mov.w @(loc_8C09154C,pc),r0; r0 set to 0x19f
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C091492
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0; r0 set to 0x1A0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C09154E,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C091492:
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C091558,pc),r0; r0 set to 0x8C1551A0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	mov 0x22,r0; r0 set to 0x22
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0914C6
	mov.w @(loc_8C09154E,pc),r1 ; r1 set to 0x12c
	mov.b @(r0,r14),r0; r0??? bc r14 is ???
	add r14,r1 ; r1 ??? bc r14 is ???
	and 0x01,r0
	mov.b r0,@r1
	mov 0x22,r0; r0 set to 0x22
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bt loc_8C0914Dc
	bra loc_8C0914E2
	nop

loc_8C0914C6:
	lds.l @r15+,pr
	mov.l @(loc_8C09155C,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c0914d0:
	mov.l @(loc_8c091560,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0914e2

loc_8c0914dc:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8C0914E2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0914E8:
	mov r4,r3
	mov.l @(loc_8C091564,pc),r1 ; r1 set to 0x8C1551Ac
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0914FA:
	mov.w @(0x52,PC),r1
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bt loc_8c09150c
	mov 0x22,r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)

loc_8C09150C:
	mov 0x60,r1
	add r4,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x26,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c091546
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(0x12,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_8C091546:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09154a:
	#data 0x019e
loc_8c09154c:
	#data 0x019f
loc_8c09154e:
	#data 0x012c
loc_8c091550:
	#data 0x01d0
loc_8c091552:
	#data 0x041c
	#align4

loc_8C091554:
	#data bank03.loc_8c034e8c
loc_8C091558:
	#data bank15.loc_8c1551A0
loc_8C09155C:
	#data bank04.loc_8c045748
loc_8C091560:
	#data bank03.loc_8c034dee
loc_8C091564:
	#data bank15.loc_8c1551Ac

;==============================================
loc_8C091568:
	mov.w @(0x14C,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0915b4
	mov.b @(0x6,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(0x13C,PC),r0
	mov.b r3,@(r0,r4)
	mova @(0x140,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(0x13C,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mova @(0x138,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x134,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x11A,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0915b4
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0915B4:
	mov.l @(0x118,PC),r3
	jmp @r3
	nop

loc_8C0915BA:
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
	mov.w @(0xC6,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c091620
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(0xB2,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)

loc_8C091620:
	mov.l @(0xAC,PC),r3
	jmp @r3
	nop

;==============================================
loc_8C091626:
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
	mov.w @(0x5A,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c09167c
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(0x46,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_8C09167C:
	mov.l @(0x50,PC),r3
	jmp @r3
	nop

;==============================================
loc_8C091682:
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
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x16,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0916b2
	mov.b @(0x6,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(0x6,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0916B2:
	mov.l @(0x1C,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0916b8:
	#data 0x0141
loc_8c0916ba:
	#data 0x0130
loc_8c0916bc:
	#data 0x041c
	#align4

loc_8c0916c0:
	#data 0xC0A00000
loc_8c0916c4:
	#data 0x3D555555
loc_8c0916c8:
	#data 0x404DB6Db
loc_8c0916cc:
	#data 0xBF092492
loc_8C0916D0:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0916D4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0917DC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0916F8
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0917E0,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x0A,r6 ; r6 set to 0x0a
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0916F8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0916FE:
	mov r4,r3
	mov.l @(loc_8C0917E4,pc),r1 ; r1 set to 0x8C1551C4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C091710:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c091734
	mov.w @(0xB2,PC),r1
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bt loc_8c091734
	mov 0x22,r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8C091734:
	mov.w @(0x9E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c091742
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_8C091742:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C091748:
	mov.w @(0x8A,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09175c
	mov.l @(0x84,PC),r3
	jsr @r3
	mov r14,r4

loc_8C09175C:
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
	mov.w @(0x42,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0917be
	mov.b @(0x6,r14),r0
	mov 0x20,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x2C,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x34,PC),r3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(0x18,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0917BE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0917C4:
	mov r4,r3
	mov.l @(loc_8C0917EC,pc),r1 ; r1 set to 0x8C1551D0
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0917d6:
	#data 0x0141
loc_8c0917d8:
	#data 0x01D0
loc_8c0917da:
	#data 0x041C
	#align4

loc_8C0917DC:
	#data bank03.loc_8c034dee
loc_8C0917E0:
	#data bank03.loc_8c034e8c
loc_8C0917E4:
	#data bank15.loc_8c1551C4
loc_8C0917E8:
	#data bank04.loc_8c042008
loc_8C0917EC:
	#data bank15.loc_8c1551D0

;==============================================
loc_8C0917F0:
	mov.w @(0xE2,PC),r1
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bt loc_8c091802
	mov 0x22,r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)

loc_8C091802:
	mov.w @(0xD2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c091824
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mova @(0xC8,PC),r0
	fmov @r0,fr4
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	fmov @(r0,r4),fr2
	fmul fr4,fr2
	fmov fr2,@(r0,r4)

loc_8C091824:
	mov 0x68,r1
	add r4,r1
	mov 0x5C,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr2
	mov.l @(0x84,PC),r3
	fadd fr3,fr2
	jmp @r3
	fmov fr2,@(r0,r4)

loc_8C091860:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0918E0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C091884
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0918E4,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x0A,r6 ; r6 set to 0x0a
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C091884:
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr3
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0918C2:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0918DA,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0918D0:
	mov.l @(loc_8C0918E8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0918d6:
	#data 0x01D0
loc_8c0918d8:
	#data 0x0141
loc_8C0918DA:
	#data 0x012c
	#align4

loc_8c0918dc:
	#data 0x40800000
loc_8C0918E0:
	#data bank03.loc_8c034dee
loc_8C0918E4:
	#data bank03.loc_8c034e8c
loc_8C0918E8:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c0918ec:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x58,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c091928
	mov r0,r4
	mov.l @(0x4C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x36,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x01,r3
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(0x28,PC),r0
	extu.b r2,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x24,PC),r0
	mov.l r3,@(r0,r14)

loc_8c091928:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C091934:
	mov r4,r3
	mov.l @(loc_8C091958,pc),r1 ; r1 set to 0x8C1551D8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c091946:
	#data 0x1f01
loc_8c091948:
	#data 0x0159
loc_8c09194a:
	#data 0x00cc
loc_8c09194c:
	#data 0x02f8
	#align4

loc_8C091950:
	#data bank04.loc_8c044F12
loc_8C091954:
	#data loc_8c091934
loc_8C091958:
	#data bank15.loc_8c1551D8

;==============================================
loc_8C09195C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x174,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x178,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x166,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x15E,PC),r0
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
	mov.w @(0x13A,PC),r0
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
	mov.l @(0x12C,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x06,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0xF8,r3
	mov.w @(0x10A,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x60,r0
	mov.w r0,@(0x1C,r14)
	mov 0x42,r4
	mov.w @(0x100,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	mov.l @(0x104,PC),r4
	extu.b r0,r0
	and r5,r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	and r5,r3
	shll2 r3
	add r3,r4
	mov 0x04,r0
	fldi0 fr4
	fmov @(r0,r4),fr3
	mov 0x38,r0
	mov.l @(0xE4,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	shll r3
	shll2 r3
	add r3,r4
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xA4,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c091a58
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C091A58:
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
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x30,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.l @(0x68,PC),r3
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @r3,r2
	mov.b @(0x2,r14),r0
	add 0x7C,r2
	extu.b r0,r0
	shll r0
	mov.w @(r0,r2),r1
	mov 0x17,r5
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov.l @(0x4C,PC),r2
	add 0x04,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x48,PC),r3
	mov 0x02,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c091b00
	mov.l @r15+,r14


loc_8C091AC2:
	mov.w @(0x1C,PC),r0
	mov 0x00,r3
	mov.l @(0x18,r4),r5
	mov 0x0A,r6
	mov.l r3,@(r0,r5)
	mov.b @(0x5,r4),r0
	mov.l @(0x28,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	jmp @r3
	mov 0x17,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c091ad8:
	#data 0x00dc
loc_8c091ada:
	#data 0x012c
loc_8c091adc:
	#data 0x01a3
loc_8c091ade:
	#data 0x019c
loc_8c091ae0:
	#data 0x0130
loc_8c091ae2:
	#data 0x02f8
	#align4

loc_8C091AE4:
	#data bank12.loc_8c129560
loc_8C091AE8:
	#data bank12.loc_8c1294C8
loc_8C091AEC:
	#data bank13.loc_8c13AF6c
loc_8C091AF0:
	#data bank13.loc_8c13AF84
loc_8C091AF4:
	#data 0x8C2896B0
loc_8C091AF8:
	#data bank03.loc_8c034e8c
loc_8C091AFC:
	#data bank0d.loc_8c0dE0B6

;==============================================
loc_8C091B00:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x24,r0; r0 set to 0x24
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C091BDa
	mov.l @(loc_8C091C18,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C091B2c
	mov 0x02,r0; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C091C08,pc),r0; r0 set to 0x2F8
	bra loc_8C091BEc
	mov.l r3,@(r0,r13)

loc_8c091b2c:
	mov.w @(loc_8C091C0A,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c091b6a
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c091b6a
	mov.w @(loc_8C091C0C,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c091b6a
	mov.w @(loc_8C091C0E,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8c091b6a
	mov.w @(loc_8C091C10,pc),r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c091b74
	mov.w @(loc_8C091C10,pc),r0
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)

loc_8c091b6a:
	lds.l @r15+,pr 
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c091ac2
	mov.l @r15+,r14

loc_8c091b74:
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
	mov.w @(loc_8C091C12,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c091bc8
	mov 0x00,r3
	mov.l @(loc_8c091c1c,pc),r2
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov 0x03,r5
	extu.b r6,r6
	shlr r6
	jsr @r2
	mov r14,r4

loc_8c091bc8:
	mov.l @(loc_8c091c20,pc),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(loc_8c091c24,pc),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c091bda:
	mov.l @(0x44,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c091bec
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C091BEC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C091BF4:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C091C14,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C091C02:
	mov.l @(loc_8C091C28,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C091C08:
	#data 0x02F8
loc_8c091c0a:
	#data 0x019e
loc_8c091c0c:
	#data 0x019f
loc_8c091c0e:
	#data 0x0159
loc_8c091c10:
	#data 0x041c
loc_8c091c12:
	#data 0x0141
loc_8C091C14:
	#data 0x012c
	#align4

loc_8C091C18:
	#data bank03.loc_8c03340c
loc_8C091C1C:
	#data bank0d.loc_8c0dE0B6
loc_8C091C20:
	#data bank03.loc_8c034dee
loc_8C091C24:
	#data bank04.loc_8c045748
loc_8C091C28:
	#data bank04.loc_8c0450C0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Unused
loc_8c091c2c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x114,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c091c58
	mov r0,r4
	mov.l @(0x104,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0xEA,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c091c58:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C091C60:
	mov r4,r3
	mov.l @(loc_8C091D50,pc),r1 ; r1 set to 0x8C1551E8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C091C72:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C091D40,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C091D54,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C091D40,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C091D42,pc),r0; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C091D44,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C091D58,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov.w @(loc_8C091D42,pc),r0; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x42,r4 ; r4 set to 0x42
	mov.w @(loc_8C091D46,pc),r0; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C091D5C,pc),r0 ; r0 set to loc_8c091D5c
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C091D26
	mova @(loc_8C091D60,pc),r0 ; r0 set to loc_8c091D60
	fmov.s @r0,fr3
	mov 0x34,r0; r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C091D64,pc),r0 ; r0 set to loc_8c091D64
	fmov.s @r0,fr3
	mov 0x38,r0; r0 set to 0x38
	bra loc_8C091D88
	fmov.s fr3,@(r0,r14)

loc_8C091D26:
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C091D70
	mova @(loc_8C091D68,pc),r0 ; r0 set to loc_8c091D68
	fmov.s @r0,fr3
	mov 0x34,r0; r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C091D6C,pc),r0 ; r0 set to loc_8c091D6c
	fmov.s @r0,fr3
	bra loc_8C091D86
	mov 0x38,r0

;##############################################
loc_8C091D3e:
	#data 0x1F02
loc_8C091D40:
	#data 0x00Dc
loc_8C091D42:
	#data 0x012c
loc_8C091D44:
	#data 0x01A3
loc_8C091D46:
	#data 0x019c
	#align4

loc_8C091D48:
	#data bank04.loc_8c044F12
loc_8C091D4C:
	#data loc_8c091C60
loc_8C091D50:
	#data bank15.loc_8c1551E8
loc_8C091D54:
	#data bank12.loc_8c129560
loc_8C091D58:
	#data bank12.loc_8c1294C8
loc_8C091D5C:
	#data 0x41D55555
loc_8C091D60:
	#data 0x43555555
loc_8C091D64:
	#data 0x437CDB6d
loc_8C091D68:
	#data 0x43805555
loc_8C091D6C:
	#data 0x43722492

;==============================================
loc_8c091d70:
	mova @(loc_8C091EB4,pc),r0
	fmov.s @r0,fr3
	mov 0x34,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C091EB8,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C091EBC,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0

loc_8c091d86:
	fmov.s fr3,@(r0,r14)

loc_8c091d88:
	mov.w @(loc_8C091EAC,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c091da0
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c091da0:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	mov r0,r1
	fmov.s @(r0,r14),fr2
	add r3,r1
	fmov.s @r1,fr3
	mov 0x00,r4
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	mov r0,r1
	fmov.s @(r0,r14),fr2
	add r3,r1
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c091ec0,pc),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov.w @(loc_8C091EAE,pc),r0
	mov.l @(loc_8C091EC4,pc),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @r3,r2
	mov.b @(0x02,r14),r0
	add 0x7C,r2
	extu.b r0,r0
	shll r0
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x02,r1
	extu.b r2,r2
	cmp/ge r1,r2
	bf loc_8c091e08
	mov.l @(loc_8c091ec8,pc),r2
	mov 0x17,r5
	mov 0x10,r6
	jsr @r2
	mov r14,r4
	bra loc_8c091e14
	nop

loc_8c091e08:
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov.l @(loc_8c091ec8,pc),r3
	add 0x0B,r6
	jsr @r3
	mov r14,r4

loc_8c091e14:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C091E1A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C091ECC,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0; r0 set to 0x3c
	mov 0x01,r1 ; r1 set to 0x01
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0; r0 set to 0x3b
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???
	tst r1,r3
	bf loc_8C091E92
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C091E92
	mov.l @(loc_8C091ED0,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	tst r0,r0
	bf loc_8C091E52
	bra loc_8C091E5e
	mov 0x02,r0

loc_8C091E52:
	mov.w @(loc_8C091EB0,pc),r0; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C091E66
	mov.b @(0x04,r14),r0
	add 0x01,r0; r0 set to 0x19f

loc_8C091E5E:
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C091E66:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C091ED4,pc),r3 ; r3 set to 0x8C034DEe
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C091ED8,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C091E92:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C091E98:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C091EB2,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C091EA6:
	mov.l @(loc_8C091EDC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c091eac:
	#data 0x0130
loc_8c091eae:
	#data 0x01A1
loc_8C091EB0:
	#data 0x019e
loc_8C091EB2:
	#data 0x012c
	#align4

loc_8c091eb4:
	#data 0x42BAAAAa
loc_8c091eb8:
	#data 0x4304DB6d
loc_8c091ebc:
	#data 0x42555555
loc_8C091EC0:
	#data bank15.loc_8c1551F8
loc_8c091ec4:
	#data 0x8C2896B0
loc_8C091EC8:
	#data bank03.loc_8c034e8c
loc_8C091ECC:
	#data 0x8C2895F0
loc_8C091ED0:
	#data bank03.loc_8c03340c
loc_8C091ED4:
	#data bank03.loc_8c034dee
loc_8C091ED8:
	#data bank04.loc_8c045748
loc_8C091EDC:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c091ee0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xD4,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c091f12
	mov r0,r4
	mov.l @(0xC4,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(0xAA,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c091f12:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
;unused
loc_8c091f1a:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(0x94,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c091f54
	mov r0,r4
	mov.l @(0x84,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0x6E,PC),r2
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c091f54:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C091F5C:
	sts.l pr,@-r15
	add 0xF0,r15
	mov 0x34,r0; r0 set to 0x34
	mov.l r5,@r15
	fmov.s @(r0,r4),fr3
	mov 0x04,r0; r0 set to 0x04
	mov r15,r5
	mov.l @(loc_8C091FC4,pc),r3 ; r3 set to 0x8C10235c
	fmov.s fr3,@(r0,r15)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x08,r0; r0 set to 0x08
	mov.w @(loc_8C091FBA,pc),r7 ; r7 set to 0xF9
	add 0x04,r5
	mov 0x01,r6 ; r6 set to 0x01
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8C091FC8,pc),r3 ; r3 set to 0x8C04223a
	mov 0x07,r5 ; r5 set to 0x07
	jsr @r3
	mov.l @r15,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C091F90:
	mov 0x20,r0; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C091FCC,pc),r0; r0 set to 0x8C1551Fc
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C091FA4:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C091FD0,pc),r1 ; r1 set to 0x8C15520c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C091FB8:
	#data 0x1F03
loc_8C091FBA:
	#data 0x00F9
loc_8C091FBC:
	#data bank04.loc_8c044F12
loc_8C091FC0:
	#data loc_8c091F90
loc_8C091FC4:
	#data bank10.loc_8c10235c
loc_8C091FC8:
	#data bank04.loc_8c04223a
loc_8C091FCC:
	#data bank15.loc_8c1551Fc
loc_8C091FD0:
	#data bank15.loc_8c15520c

;==============================================
loc_8C091FD4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xE8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xE0,PC),r2
	add 0x01,r0
	mov.l @(0xEC,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xDA,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xD6,PC),r0
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
	mov.w @(0xBA,PC),r0
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
	mov.b r2,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.b r4,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.l @(r0,r13),r3
	mov 0x24,r0
	mov.b @(r0,r3),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0x88,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr4
	mov.w @(0x70,PC),r0
	mov.w @(r0,r13),r2
	tst r2,r2
	bt loc_8c092068
	fneg fr4

loc_8C092068:
	mov.w @(0x64,PC),r0
	fmov fr4,fr3
	mov.l @(r0,r13),r4
	mov 0x34,r0
	fmov @(r0,r4),fr4
	mova @(0x70,PC),r0
	fsub fr3,fr4
	fmov @r0,fr3
	mov.w @(0x58,PC),r0
	fmov @(r0,r4),fr6
	mova @(0x68,PC),r0
	fmov @r0,fr5
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov 0x5C,r0
	fadd fr3,fr6
	fsub fr2,fr4
	fldi0 fr2
	fdiv fr5,fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mova @(0x50,PC),r0
	fsub fr2,fr6
	fmov @r0,fr2
	mov 0x60,r0
	fdiv fr5,fr6
	fadd fr2,fr6
	fmov fr6,@(r0,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr1
	mov 0x6C,r0
	mov.l @(0x44,PC),r3
	mov 0x17,r5
	fmov fr1,@(r0,r14)
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)
	mov 0x11,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0921b0
	mov.l @r15+,r14

;##############################################
loc_8c0920c8:
	#data 0x00dc
loc_8c0920ca:
	#data 0x00c0
loc_8c0920cc:
	#data 0x012c
loc_8c0920ce:
	#data 0x01a3
loc_8c0920d0:
	#data 0x01c8
loc_8c0920d2:
	#data 0x0130
loc_8c0920d4:
	#data 0x041c
	#align4

loc_8C0920D8:
	#data bank12.loc_8c129560
loc_8C0920DC:
	#data bank12.loc_8c1294C8
loc_8C0920E0:
	#data bank15.loc_8c15521c
loc_8C0920E4:
	#data 0x424DB6Db
loc_8C0920E8:
	#data 0x42000000
loc_8C0920Ec:
	#data 0x414DB6Db
loc_8C0920F0:
	#data 0xBF4DB6Db
loc_8C0920F4:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8C0920F8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0xE8,PC),r3
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c092172
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.w @(0x8E,PC),r0
	extu.b r2,r2
	mov.l @r15,r3
	add 0x01,r2
	mov.l r2,@(r0,r3)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c092172
	mov.w @(0x7A,PC),r0
	mov 0xFF,r3
	mov.l @r15,r2
	mov.l r3,@(r0,r2)

loc_8C092172:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09217A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0921F0,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.b @(0x05,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0921EA,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8C091F5c
	mov r14,r4
	mov 0x00,r0; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x05,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C092580
	mov.l @r15+,r14

loc_8C0921AC:
	rts
	nop

;----------------------------------------------
loc_8C0921B0:
	mov.w @(loc_8C0921EC,pc),r0; r0 set to 0x411
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	tst r3,r3
	bt/s loc_8C0921D6
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0; r0 set to 0x11
	cmp/ge r3,r0
	bt loc_8C0921D6
	bsr loc_8C091F5c
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0921F4,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0921D6:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0921F8,pc),r1 ; r1 set to 0x8C155230
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0921E8:
	#data 0x02E4
loc_8C0921EA:
	#data 0x012c
loc_8C0921EC:
	#data 0x0411
	#align4

loc_8C0921F0:
	#data bank03.loc_8c034dee
loc_8C0921F4:
	#data bank04.loc_8c0450C0
loc_8C0921F8:
	#data bank15.loc_8c155230

;==============================================
loc_8C0921FC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r12,r0; r0 set to 0x00
	nop
	mov.w @(loc_8C092326,pc),r1 ; r1 set to 0xDc
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C092328,pc),r0; r0 set to 0xC0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C092326,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C092334,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C09232A,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09232C,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C092338,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C09232A,pc),r0; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	mov 0x31,r0; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov r12,r0; r0 set to 0x00
	nop
	mov.l @(loc_8C09233C,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	mov.w r0,@(0x1C,r14)
	and 0x03,r0
	mov.l @(loc_8C092340,pc),r3 ; r3 set to 0x8C034E8c
	mov.w r0,@(0x1E,r14)
	mov 0x17,r5 ; r5 set to 0x17
	mov.w @(loc_8C09232E,pc),r0; r0 set to 0xCc
	mov 0x11,r6 ; r6 set to 0x11
	mov.l r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13
	bra loc_8C09250c
	mov.l @r15+,r14

loc_8C092298:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt/s loc_8C0922Ae
	mov r5,r13
	bra loc_8C0923Ca
	nop

loc_8C0922AE:
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C09232A,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov.l @(loc_8C09233C,pc),r3 ; r3 set to 0x8C03319e
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C092344,pc),r0 ; r0 set to loc_8c092344
	fmov.s @r0,fr15
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fadd fr15,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fldi0 fr3
	jsr @r3
	fmov.s fr3,@(r0,r14)
	and 0x07,r0
	mov r0,r4 ; r4 set to 0x68
	add 0x04,r4 ; r4 set to 0x6c
	shll16 r4 ; r4 set to 0x6C0000
	lds r4,fpul
	mova @(loc_8C092348,pc),r0 ; r0 set to loc_8c092348
	fmov.s @r0,fr2
	mova @(loc_8C09234C,pc),r0 ; r0 set to loc_8c09234c
	fmov.s @r0,fr1
	mov 0x60,r0; r0 set to 0x60
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C092350,pc),r0 ; r0 set to loc_8c092350
	fmov.s @r0,fr3
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C092354,pc),r0 ; r0 set to loc_8c092354
	fmov.s @r0,fr4 ; r4 ??
	mova @(loc_8C092358,pc),r0 ; r0 set to loc_8c092358
	fmov.s @r0,fr5
	mov.w @(loc_8C092330,pc),r0; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8C092368
	mova @(loc_8C09235C,pc),r0 ; r0 set to loc_8c09235c
	fmov.s @r0,fr4
	mova @(loc_8C092360,pc),r0 ; r0 set to loc_8c092360
	fmov.s @r0,fr5
	mov.w @(loc_8C092330,pc),r0; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8C092368
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mova @(loc_8C092364,pc),r0 ; r0 set to loc_8c092364
	fadd fr4,fr3
	bra loc_8C092372
	fmov.s @r0,fr2

;##############################################
loc_8C092326:
	#data 0x00Dc
loc_8C092328:
	#data 0x00C0
loc_8C09232A:
	#data 0x012c
loc_8C09232C:
	#data 0x01A3
loc_8C09232E:
	#data 0x00Cc
loc_8C092330:
	#data 0x0130
	#align4

loc_8C092334:
	#data bank12.loc_8c129560
loc_8C092338:
	#data bank12.loc_8c1294C8
loc_8C09233C:
	#data bank03.loc_8c03319e
loc_8C092340:
	#data bank03.loc_8c034e8c
loc_8C092344:
	#data 0x424DB6Db
loc_8C092348:
	#data 0x40092492
loc_8C09234C:
	#data 0x47800000
loc_8C092350:
	#data 0xBFCDB6Db
loc_8C092354:
	#data 0x40A00000
loc_8C092358:
	#data 0xC2BAAAAa
loc_8C09235C:
	#data 0xC0A00000
loc_8C092360:
	#data 0x42BAAAAa
loc_8C092364:
	#data 0x43855555

;----------------------------------------------
loc_8C092368:
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mova @(loc_8C0924AC,pc),r0 ; r0 set to loc_8c0924Ac
	fmov.s @r0,fr2
	fadd fr4,fr3

loc_8C092372:
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	fmov fr3,fr6
	fmov.s @(r0,r13),fr3
	fadd fr2,fr6
	mov 0x42,r4 ; r4 set to 0x42, r4 set to 0x42
	fadd fr5,fr3
	mov 0x40,r3 ; r3 set to 0x40, r3 set to 0x40
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	fadd fr15,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr3
	mova @(loc_8C0924B0,pc),r0 ; r0 set to loc_8c0924B0, r0 set to loc_8c0924B0
	fsub fr3,fr6
	fmov.s @r0,fr3
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fdiv fr3,fr6
	fmov.s fr6,@(r0,r14)
	mov.w @(loc_8C0924A2,pc),r0; r0 set to 0x19C, r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19D, r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0x04,r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C0924B4,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bra loc_8C0923D0
	nop

loc_8c0923ca:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)

loc_8C0923D0:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0923DA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0924B8,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0924A4,pc),r0; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C092432
	mov.w @(loc_8C0924A6,pc),r0; r0 set to 0xCc
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C09244c
	mov.l r3,@(r0,r14)

loc_8C092432:
	mova @(loc_8C0924BC,pc),r0 ; r0init to loc_8c0924Bc
	mov.l @r15,r1
	fmov.s @r0,fr3
	mov.w @(loc_8C0924A8,pc),r0; r0 set to 0x41c
	fmov.s @(r0,r1),fr2
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8C09249a
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8C092470

loc_8C09244C:
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0924C0,pc),r3 ; r3 set to 0x8C03319E, r3 set to 0x8C03319e
	add 0x01,r0; r0 set to 0x39
	jsr @r3
	mov.b r0,@(0x05,r14)
	and 0x07,r0
	fldi0 fr4
	add 0x10,r0; r0 set to 0x49
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	bra loc_8C09249a
	fmov.s fr4,@(r0,r14)

loc_8C092470:
	mov.w @(0x1C,r14),r0
	fldi0 fr2
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr4
	fcmp/gt fr4,fr2
	bf loc_8C092486
	fmov fr4,fr2
	bra loc_8C092488
	fneg fr2

loc_8c092486:
	fmov fr4,fr2

loc_8c092488:
	fldi1 fr4
	fadd fr4,fr4
	fmov fr2,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)

loc_8C09249A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0924A2:
	#data 0x019c
loc_8C0924A4:
	#data 0x019e
loc_8C0924A6:
	#data 0x00Cc
loc_8C0924A8:
	#data 0x041c
	#align4

loc_8C0924AC:
	#data 0xC3855555
loc_8C0924B0:
	#data 0x41800000
loc_8C0924B4:
	#data 0x8C2896B0
loc_8C0924B8:
	#data bank03.loc_8c034dee
loc_8C0924BC:
	#data 0x424DB6Db
loc_8C0924C0:
	#data bank03.loc_8c03319e

;==============================================
loc_8C0924C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xC6,PC),r0
	mov r4,r14
	mov.l r5,@r15
	mov.l @(r0,r14),r3
	tst r3,r3
	bf loc_8c0924e8
	mov.l @(0xC4,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c092504

loc_8C0924E8:
	mov.l @r15,r5
	bsr loc_8c091f5c
	mov r14,r4
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c092580
	mov.l @r15+,r14

loc_8C092504:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09250C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0925A0,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0; r0 set to 0x3c
	mov 0x01,r1 ; r1 set to 0x01
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0; r0 set to 0x3b
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???
	tst r1,r3
	bf loc_8C092566
	mov.w @(loc_8C092596,pc),r0; r0 set to 0x411
	mov.b @(r0,r5),r1
	tst r1,r1
	bt loc_8C092548
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0; r0 set to 0x11
	cmp/ge r3,r0
	bt loc_8C092548
	bsr loc_8C091F5c
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_8C0925A4,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C092548:
	mov 0x24,r0; r0 set to 0x24
	mov.l @(loc_8C0925A8,pc),r1 ; r1 set to 0x8C15523c
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0; r0 set to 0x24
	shll2 r0; r0 set to 0x90
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0925AC,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C092566:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09256C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0925B0,pc),r1 ; r1 set to 0x8C155248
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C092580:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C092598,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C09258E:
	mov.l @(loc_8C0925A4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C092594:
	#data 0x00Cc
loc_8C092596:
	#data 0x0411
loc_8C092598:
	#data 0x012c
	#align4

loc_8C09259C:
	#data bank03.loc_8c034dee
loc_8C0925A0:
	#data 0x8C2895F0
loc_8C0925A4:
	#data bank04.loc_8c0450C0
loc_8C0925A8:
	#data bank15.loc_8c15523c
loc_8C0925AC:
	#data bank04.loc_8c045748
loc_8C0925B0:
	#data bank15.loc_8c155248


;==============================================
;Unused
loc_8c0925b4:
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
	bt.s loc_8c0925e0
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

loc_8c0925e0:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0925E8:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x114,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x03,r6
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt.s loc_8c09261c
	mov r0,r4
	mov.l @(0x104,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0xDE,PC),r3
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C09261C:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8C092624:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0926F8,pc),r2 ; r2 set to 0x2A4
	mov 0x20,r0; r0 set to 0x20
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(loc_8C0926FA,pc),r1 ; r1 set to 0xCc
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C092710,pc),r3 ; r3 set to 0x8C28C634
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C092714,pc),r2 ; r2 set to 0x8C28C638
	mov.l r1,@r2 ; r2 ??? bc r1 is ???
	mov.b @(r0,r14),r3
	mov.l @(loc_8C092718,pc),r0; r0 set to 0x8C155258
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

loc_8C09264C:
	mov r4,r3
	mov.l @(loc_8C09271C,pc),r1 ; r1 set to 0x8C155278
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09265E:
	mov.w @(loc_8C0926FC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C092720,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0926FC,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C0926FE,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C092700,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C092724,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov 0x44,r3 ; r3 set to 0x44
	mov.w @(loc_8C092702,pc),r0; r0 set to 0x19f
	mov.b r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	xor 0x01,r0
	mov.b r0,@(0x02,r4)
	mov.w @(loc_8C092704,pc),r0; r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r3,@(r0,r4)
	add 0xA1,r0; r0 set to 0x13e
	mov 0x28,r5 ; r5 set to 0x28
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x13f
	mov.b r5,@(r0,r4)
	add 0xF1,r0; r0 set to 0x130
	mov.w @(r0,r4),r2
	tst r2,r2
	bt/s loc_8C09272c
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	mova @(loc_8C092728,pc),r0 ; r0 set to loc_8c092728
	bra loc_8C092730
	fmov.s @r0,fr3

;##############################################
loc_8C0926F6:
	#data 0x2000
loc_8C0926F8:
	#data 0x02A4
loc_8C0926FA:
	#data 0x00Cc
loc_8C0926FC:
	#data 0x00Dc
loc_8C0926FE:
	#data 0x012c
loc_8C092700:
	#data 0x01A3
loc_8C092702:
	#data 0x019f
loc_8C092704:
	#data 0x019c
	#align4

loc_8C092708:
	#data bank04.loc_8c044F12
loc_8C09270C:
	#data loc_8c092624
loc_8C092710:
	#data 0x8C28C634
loc_8C092714:
	#data 0x8C28C638
loc_8C092718:
	#data bank15.loc_8c155258
loc_8C09271C:
	#data bank15.loc_8c155278
loc_8C092720:
	#data bank12.loc_8c129560
loc_8C092724:
	#data bank12.loc_8c1294C8
loc_8C092728:
	#data 0x41555555

;----------------------------------------------
loc_8C09272C:
	mova @(loc_8C092870,pc),r0 ; r0init to loc_8c092870
	fmov.s @r0,fr3

loc_8C092730:
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C092874,pc),r0 ; r0 set to loc_8c092874, r0 set to loc_8c092874
	fmov.s @r0,fr3
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C092868,pc),r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C092760
	mov.w @(loc_8C09286A,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.l @(loc_8C092878,pc),r0; r0 set to 0x8C155288, r0 set to 0x8C155288
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov.s @(r0,r3),fr2
	bra loc_8C092770
	nop

loc_8C092760:
	mov.w @(loc_8C09286A,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r2
	mov.l @(loc_8C092878,pc),r0; r0 set to 0x8C155288
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov.s @(r0,r2),fr2
	fneg fr2

loc_8C092770:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C092868,pc),r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C09278e
	mov.w @(loc_8C09286A,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.l @(loc_8C09287C,pc),r0; r0 set to 0x8C15528C, r0 set to 0x8C15528c
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	bra loc_8C09279e
	nop

loc_8C09278E:
	mov.w @(loc_8C09286A,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r2
	mov.l @(loc_8C09287C,pc),r0; r0 set to 0x8C15528c
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_8C09279E:
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	mov.l @(loc_8C092878,pc),r5 ; r5 set to 0x8C155288, r5 set to 0x8C155288
	fmov.s fr3,@(r0,r4)
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	mov.w @(loc_8C09286A,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.l @(loc_8C092880,pc),r2 ; r2 set to 0x8C28C638, r2 set to 0x8C28C638
	mov.b @(r0,r4),r3
	mov 0x08,r0; r0 set to 0x08, r0 set to 0x08
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r5,r3
	fmov.s @(r0,r3),fr3
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09286A,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov 0x0C,r0; r0 set to 0x0C, r0 set to 0x0c
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r5 ; r5 ??? bc r3 is ???, r5 ??? bc r3 is ???
	fmov.s @(r0,r5),fr3
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	fmov.s fr3,@(r0,r4)
	mov.l @(0x18,r4),r1
	mov.w @(loc_8C09286C,pc),r0; r0 set to 0x158, r0 set to 0x158
	mov.l @r2,r3
	mov.w @(r0,r1),r0; r0??? bc r1 is ???, r0??? bc r1 is ???
	mov.w r0,@r3
	mov.l @(loc_8C092884,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	jmp @r3
	lds.l @r15+,pr

loc_8C0927E2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C092888,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8C0927F8
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0931E8
	mov.l @r15+,r14

loc_8C0927F8:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C09288C,pc),r1 ; r1 set to 0x8C1552C8
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C09280A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C092890,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C092880,pc),r2 ; r2 set to 0x8C28C638
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(loc_8C09286C,pc),r0; r0 set to 0x158
	mov.w @(r0,r3),r0; r0??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C092894
	mov.b @(0x05,r14),r0
	add 0x02,r0
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C092868:
	#data 0x0130
loc_8C09286A:
	#data 0x01A3
loc_8C09286C:
	#data 0x0158
	#align4

loc_8C092870:
	#data 0xC1555555
loc_8C092874:
	#data 0x42892492
loc_8C092878:
	#data bank15.loc_8c155288
loc_8C09287C:
	#data bank15.loc_8c15528c
loc_8C092880:
	#data 0x8C28C638
loc_8C092884:
	#data bank03.loc_8c034e8c
loc_8C092888:
	#data bank03.loc_8c03340c
loc_8C09288C:
	#data bank15.loc_8c1552C8
loc_8C092890:
	#data bank03.loc_8c034dee

;==============================================
loc_8C092894:
	mov.w @(loc_8C0929BA,pc),r0; r0 set to 0x19f
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0928A6
	mov.b @(0x05,r14),r0
	add 0x01,r0; r0 set to 0x1A0
	mov.b r0,@(0x05,r14)
	bra loc_8C0928Cc
	mov 0x02,r6

loc_8C0928A6:
	mov.w @(loc_8C0929BC,pc),r0; r0 set to 0x41c
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0928D8
	mov.b @(0x05,r14),r0
	mov 0x01,r6 ; r6 set to 0x01
	add 0x02,r0; r0 set to 0x3a
	mov.b r0,@(0x05,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0; r0 set to 0x3b
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0929BC,pc),r0; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s fr3,@(r0,r14)

loc_8C0928CC:
	lds.l @r15+,pr
	mov.l @(loc_8C0929C0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0928D8:
	lds.l @r15+,pr
	mov.l @(loc_8C0929C4,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;unused return
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0928E8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0929C8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C092900
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C0931E8
	lds.l @r15+,pr

loc_8C092900:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C092908:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf loc_8C092974
	mov.l @(loc_8C0929C8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0929BC,pc),r0; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0929B4
	mov.b @(0x06,r14),r0
	add 0x01,r0; r0 set to 0x39
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0929BC,pc),r0; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	bra loc_8C0929A8
	mov 0x01,r6

loc_8C092974:
	mov.l @(loc_8C0929C8,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0929BE,pc),r0; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0929B4
	mov.b @(0x05,r14),r0
	mov 0x00,r6 ; r6 set to 0x00
	fldi1 fr3
	add 0x01,r0; r0 set to 0x142
	fneg fr3
	mov.b r0,@(0x05,r14)
	mov 0x00,r0; r0 set to 0x00
	mov.b r0,@(0x06,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fmul fr3,fr2
	fmov.s fr2,@(r0,r14)
	fldi1 fr2
	fadd fr2,fr2
	fmov.s @(r0,r14),fr1
	fdiv fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov 0x40,r0; r0 set to 0x40
	mov.w r0,@(0x1C,r14)

loc_8C0929A8:
	lds.l @r15+,pr
	mov.l @(loc_8C0929C0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0929B4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0929BA:
	#data 0x019f
loc_8C0929BC:
	#data 0x041c
loc_8C0929BE:
	#data 0x0141
	#align4

loc_8C0929C0:
	#data bank03.loc_8c034e8c
loc_8C0929C4:
	#data bank04.loc_8c045748
loc_8C0929C8:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0929CC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf loc_8C092A42
	mov.l @(loc_8C092AAC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C092AA4,pc),r0; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C092A6a
	mov.b @(0x06,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x01,r6 ; r6 set to 0x01
	add 0x01,r0; r0 set to 0x39
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C092AA4,pc),r0; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	mov.l @(loc_8C092AB0,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_8C092A6a
	nop

loc_8c092a42:
	mov.l @(loc_8c092aac,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C092AA6,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c092a6a
	mov 0x00,r0
	fldi1 fr3
	mov.b r0,@(0x06,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	mov 0x17,r5
	fneg fr3
	mov 0x00,r6
	fmul fr3,fr2
	mov.l @(loc_8c092ab0,pc),r3
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C092A6A:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C092A7e
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0931E8
	mov.l @r15+,r14

loc_8C092A7E:
	mov.l @(loc_8C092AB4,pc),r3 ; r3 set to 0x8C26823c
	mov.w @(loc_8C092AA8,pc),r1 ; r1 set to 0x12c
	mov.l @r3,r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	mov.b r0,@r1
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C092A92:
	mov r4,r3
	mov.l @(loc_8C092AB8,pc),r1 ; r1 set to 0x8C1552D8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C092AA4:
	#data 0x041c
loc_8c092aa6:
	#data 0x0141
loc_8C092AA8:
	#data 0x012c
	#align4

loc_8C092AAC:
	#data bank03.loc_8c034dee
loc_8C092AB0:
	#data bank03.loc_8c034e8c
loc_8C092AB4:
	#data 0x8C26823c
loc_8C092AB8:
	#data bank15.loc_8c1552D8

;==============================================
loc_8C092ABC:
	mov.w @(loc_8C092BDC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C092BE8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C092BDC,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C092BDE,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C092BE0,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C092BEC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x42,r5 ; r5 set to 0x42
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C092BE2,pc),r0; r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r4)
	add 0x06,r0; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	add 0xFE,r0; r0 set to 0x1A1
	mov 0x00,r5 ; r5 set to 0x00
	add 0x42,r3
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4
	mov.l @(loc_8C092BF0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C092BF4,pc),r0; r0 set to 0x8C28C638
	mov.l @r0,r2
	mov.w @(loc_8C092BE4,pc),r0; r0 set to 0x158
	mov.l @(0x18,r4),r1
	mov.w @(r0,r1),r1
	add 0xD8,r0; r0 set to 0x130
	mov.w r1,@r2
	mov.w @(r0,r4),r1
	tst r1,r1
	bt/s loc_8C092B74
	mov.l @(0x18,r4),r2
	mova @(loc_8C092BF8,pc),r0 ; r0 set to loc_8c092BF8
	bra loc_8C092B78
	fmov.s @r0,fr3

loc_8C092B74:
	mova @(loc_8C092BFC,pc),r0 ; r0init to loc_8c092BFc
	fmov.s @r0,fr3

loc_8C092B78:
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r2),fr2
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C092BE6,pc),r0; r0 set to 0x41C, r0 set to 0x41c
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C092C00,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C092B94:
	mov.l @(0x5C,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x46,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0
	cmp/eq r0,r1
	bf loc_8c092bb6
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c092bbe

loc_8C092BB6:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0931e8
	mov.l @r15+,r14

loc_8C092BBE:
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C092BC8:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C092C0C,pc),r1 ; r1 set to 0x8C1552E8
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C092BDC:
	#data 0x00Dc
loc_8C092BDE:
	#data 0x012c
loc_8C092BE0:
	#data 0x01A3
loc_8C092BE2:
	#data 0x019c
loc_8C092BE4:
	#data 0x0158
loc_8C092BE6:
	#data 0x041c
	#align4

loc_8C092BE8:
	#data bank12.loc_8c129560
loc_8C092BEC:
	#data bank12.loc_8c1294C8
loc_8C092BF0:
	#data 0x8C2896B0
loc_8C092BF4:
	#data 0x8C28C638
loc_8C092BF8:
	#data 0x42D55555
loc_8C092BFC:
	#data 0xC2D55555
loc_8C092C00:
	#data bank03.loc_8c034e8c
loc_8C092C04:
	#data bank03.loc_8c034dee
loc_8C092C08:
	#data bank04.loc_8c045748
loc_8C092C0C:
	#data bank15.loc_8c1552E8

;==============================================
loc_8C092C10:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	mov.w @(0x144,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x13C,PC),r2
	add 0x01,r0
	mov.l @(0x14C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x136,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x132,PC),r0
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
	mov.w @(0x116,PC),r0
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
	mov.l @(0x110,PC),r11
	mov.b @(r0,r13),r2
	mov 0x00,r12
	mov 0x08,r3
	mov.b r2,@(r0,r14)
	mov 0x42,r4
	mov.w @(0xEA,PC),r0
	mov.b r12,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xE6,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov.w @(0xDC,PC),r0
	fmov @(r0,r11),fr4
	mova @(0xF4,PC),r0
	fmov @r0,fr13
	mova @(0xF4,PC),r0
	fmov @r0,fr14
	fadd fr3,fr4
	mov.w @(0xD0,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c092cba
	fmov fr13,fr5
	mova @(0xE8,PC),r0
	fmov fr14,fr5
	fmov @r0,fr2
	mov.w @(0xC2,PC),r0
	fmov @(r0,r11),fr4
	fadd fr2,fr4

loc_8C092CBA:
	mov 0x34,r0
	fmov fr4,@(r0,r14)
	mova @(0xDC,PC),r0
	fmov @r0,fr15
	mov.w @(0xB6,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fadd fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr5,@(r0,r14)
	mov r12,r0
	nop
	mov 0x15,r10
	mov.w r0,@(0x1C,r14)

loc_8C092CD8:
	mov 0x05,r5
	bsr loc_8c0925e8
	mov r14,r4
	tst r0,r0
	bt.s loc_8c092d12
	mov r0,r4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x21,r1
	add r4,r1
	fmov fr3,@(r0,r4)
	mov.w @(0x8A,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fadd fr15,fr3
	fmov fr3,@(r0,r4)
	mov.l r14,@(0x14,r4)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	add 0xFF,r0
	mov.b r0,@r1
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C092D12:
	dt r10
	bf loc_8c092cd8
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov.w @(0x58,PC),r0
	fmov @(r0,r11),fr4
	mov.w @(0x56,PC),r0
	fadd fr3,fr4
	mov.w @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c092d36
	fmov fr13,fr5
	mova @(0x78,PC),r0
	fmov fr14,fr5
	fmov @r0,fr2
	mov.w @(0x46,PC),r0
	fmov @(r0,r11),fr4
	fadd fr2,fr4

loc_8C092D36:
	mov 0x34,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x3E,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fadd fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr5,@(r0,r14)
	mov r12,r0
	nop
	mov 0x14,r11
	mov.w r0,@(0x1C,r14)

loc_8C092D50:
	mov 0x07,r5
	bsr loc_8c0925e8
	mov r14,r4
	tst r0,r0
	bt.s loc_8c092dca
	mov r0,r4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x16,PC),r0
	fmov @(r0,r13),fr3
	fadd fr15,fr3
	bra loc_8c092da8
	nop

;==============================================
loc_8c092d6c:
	#data 0x00dc
loc_8c092d6e:
	#data 0x00c0
loc_8c092d70:
	#data 0x012c
loc_8c092d72:
	#data 0x01a3
loc_8c092d74:
	#data 0x019c
loc_8c092d76:
	#data 0x0088
loc_8c092d78:
	#data 0x0130
loc_8c092d7a:
	#data 0x008c
loc_8c092d7c:
	#data 0x041c
	#align4

loc_8C092D80:
	#data bank12.loc_8c129560
loc_8C092D84:
	#data bank12.loc_8c1294C8
loc_8C092D88:
	#data 0x8C26A518
loc_8C092D8c:
	#data 0xC2555555
loc_8C092D90:
	#data 0xC2D55555
loc_8C092D94:
	#data 0x42D55555
loc_8C092D98:
	#data 0x42555555
loc_8C092D9c:
	#data 0xC24DB6Db
loc_8C092Da0:
	#data 0xC4995555
loc_8C092Da4:
	#data 0x44995555

;==============================================
loc_8C092DA8:
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x21,r1
	add r4,r1
	mov.l r14,@(0x14,r4)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	add 0xFF,r0
	mov.b r0,@r1
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C092DCA:
	dt r11
	bf loc_8c092d50
	mov 0x0A,r0
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov 0x14,r3
	mov.l r14,@(0x14,r14)
	mov.b r3,@(r0,r14)
	mov.w @(0xCA,PC),r3
	mov.l @(0x14,r14),r4
	add r3,r4
	mov r12,r0
	nop
	mov.w @(0xC2,PC),r2
	mov.b r0,@(0x2,r4)
	mov.b r0,@(0x3,r4)
	mov.b r0,@(0x4,r4)
	mov r2,r0
	nop
	add 0x3F,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov 0x20,r1
	mov.b r1,@(r0,r14)
	mov.w @(0xAE,PC),r0
	mov.w r0,@(0x1C,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr4
	mov.w @(0xA8,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c092e0e
	mova @(0xAC,PC),r0
	fmov @r0,fr4

loc_8C092E0E:
	mov 0x5C,r0
	fldi0 fr3
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x53,r3
	mov.w @(0x92,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0x90,PC),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x80,PC),r0
	fmov @r0,fr15
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x05,r1
	extu.b r2,r2
	cmp/gt r1,r2
	bf loc_8c092e50
	mova @(0x74,PC),r0
	fmov @r0,fr15

loc_8C092E50:
	mov 0x21,r0
	mov r14,r4
	mov.b @(r0,r14),r3
	mov 0x17,r5
	lds.l @r15+,pr
	extu.b r3,r3
	lds r3,fpul
	fmov @r15+,fr13
	mov.l @(0x64,PC),r3
	float fpul,fr3
	fmov @r15+,fr14
	fadd fr3,fr15
	ftrc fr15,fpul
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	sts fpul,r6
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C092E7A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xE0,r15
	mov r4,r14
	mov.w @(loc_8C092EA8,pc),r3 ; r3 set to 0xCc
	mov.l @(0x14,r14),r4
	mov 0x01,r12 ; r12 set to 0x01
	add r3,r4
	mov.b @(0x02,r4),r0
	cmp/pl r0
	bf/s loc_8C092EE0
	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C092ECc
	mov 0xFF,r0; r0 set to 0xFFFFFFFf
	bra loc_8C092EE0
	mov.b r0,@(0x02,r4)

;##############################################
loc_8c092ea8:
	#data 0x00cc
loc_8c092eaa:
	#data 0x00ff
loc_8c092eac:
	#data 0x0080
loc_8c092eae:
	#data 0x0130
loc_8c092eb0:
	#data 0x01a1
	#align4

loc_8c092eb4:
	#data 0x42200000
loc_8c092eb8:
	#data 0xC2200000
loc_8c092ebc:
	#data 0x8C2896B0
loc_8C092EC0:
	#data 0x41A00000
loc_8C092EC4:
	#data 0x42240000
loc_8C092EC8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c092ecc:
	mov r13,r0
	nop
	mov.b r0,@(0x02,r4)
	mov 0x02,r2
	mov.w @(0x1E,r14),r0
	cmp/gt r2,r0
	bt loc_8c092ee0
	mov r12,r0
	nop
	mov.b r0,@(0x04,r4)

loc_8c092ee0:
	mov.b @(0x03,r4),r0
	tst r0,r0
	bt loc_8c092eec
	mov.b @(0x03,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x03,r4)

loc_8c092eec:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8c092f6a
	mov.b @(0x05,r5),r0
	tst r0,r0
	bt loc_8c092f02
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C092FD6,pc),r0
	mov.b r12,@(r0,r14)

loc_8c092f02:
	mov.w @(loc_8C092FD6,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c092f18
	mov r12,r0
	nop
	mov.b r0,@(0x02,r4)
	mov 0x08,r0
	mov.b r0,@(0x03,r4)
	mov.w @(loc_8C092FD6,pc),r0
	mov.b r13,@(r0,r14)

loc_8c092f18:
	mov.b @(0x03,r4),r0
	tst r0,r0
	bt loc_8c092f24
	mov.w @(loc_8C092FD8,pc),r0
	bra loc_8c092f6a
	mov.b r13,@(r0,r14)

loc_8c092f24:
	mov.b @(0x02,r4),r0
	cmp/pz r0
	bt loc_8c092f32
	mov.b @(0x05,r14),r0
	add 0x01,r0
	bra loc_8c092f6a
	mov.b r0,@(0x05,r14)

loc_8c092f32:
	mov.w @(loc_8C092FD8,pc),r0
	mov 0x42,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r4),r0
	tst r0,r0
	bt loc_8c092f46
	mov.w @(loc_8C092FDA,pc),r0
	mov 0x5E,r3
	bra loc_8c092f4c
	mov.b r3,@(r0,r14)

loc_8c092f46:
	mov.w @(loc_8C092FDA,pc),r0
	mov 0x53,r2
	mov.b r2,@(r0,r14)

loc_8c092f4c:
	mov.w @(loc_8C092FDC,pc),r0
	mov.l @(loc_8C092FE0,pc),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c092f6a:
	mov 0x5C,r1
	mov.l @(loc_8c092fe4,pc),r3
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C092FDE,pc),r0
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c092fb2
	mov.w @(loc_8C092FDE,pc),r0
	mov.b r13,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bt loc_8c092fb2
	mov r14,r4
	add 0x20,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0931e8
	mov.l @r15+,r14

loc_8c092fb2:
	mov r14,r4
	add 0x20,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c092fe8,pc),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C092FC2:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C092FEC,pc),r1 ; r1 set to 0x8C1552F8
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c092fd6:
	#data 0x019e
loc_8c092fd8:
	#data 0x019c
loc_8c092fda:
	#data 0x01A1
loc_8c092fdc:
	#data 0x01Ac
loc_8c092fde:
	#data 0x012C
	#align4

loc_8c092fe0:
	#data 0x8C2896B0
loc_8C092FE4:
	#data bank03.loc_8c03340c
loc_8C092FE8:
	#data bank04.loc_8c045748
loc_8C092FEC:
	#data bank15.loc_8c1552F8


;==============================================
loc_8C092FF0:
	mov.l r14,@-r15
	mov.w @(0x138,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x148,PC),r3
	add 0x01,r0
	mov.w @(0x12C,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0x12A,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x126,PC),r0
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
	mov.w @(0x10A,PC),r0
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
	mov.l @(0x108,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r5
	mov 0x08,r3
	mov.b r2,@(r0,r4)
	mov 0x42,r6
	mov.w @(0xE0,PC),r0
	mov.b r5,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov.w @(0xDC,PC),r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	mov.w @(0xD6,PC),r0
	mov.w r0,@(0x1C,r4)
	mova @(0xE8,PC),r0
	fmov @r0,fr4
	mov.w @(0xD0,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c093072
	mova @(0xE0,PC),r0
	fmov @r0,fr4

loc_8C093072:
	mov 0x5C,r0
	fldi0 fr3
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x53,r3
	mov.w @(0xBA,PC),r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l @(0xC4,PC),r3
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x9A,PC),r2
	mov r2,r0
	nop
	add 0x3F,r0
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov 0x20,r1
	mov.b r1,@(r0,r4)
	mov r1,r0
	nop
	mov.b @(r0,r4),r2
	mov 0x05,r1
	extu.b r2,r2
	cmp/gt r1,r2
	bf.s loc_8c0930c2
	mov 0x14,r14
	mov 0x29,r14

loc_8C0930C2:
	mov 0x21,r0
	mov.l @(0x90,PC),r3
	mov.b @(r0,r4),r2
	mov 0x17,r5
	lds.l @r15+,pr
	add r2,r14
	mov r14,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0930D4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	mov.l @(0x14,r14),r4
	mov.w @(0x56,PC),r3
	tst r0,r0
	bf.s loc_8c093194
	add r3,r4
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0930fe
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x44,PC),r0
	mov.b r12,@(r0,r14)

loc_8C0930FE:
	mov.w @(0x40,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c093114
	mov r12,r0
	nop
	mov.b r0,@(0x2,r4)
	mov 0x08,r0
	mov.b r0,@(0x3,r4)
	mov.w @(0x2E,PC),r0
	mov.b r13,@(r0,r14)

loc_8C093114:
	mov.b @(0x3,r4),r0
	tst r0,r0
	bt loc_8c093120
	mov.w @(0x18,PC),r0
	bra loc_8c093194
	mov.b r13,@(r0,r14)

loc_8C093120:
	mov.b @(0x2,r4),r0
	cmp/pz r0
	bt loc_8c09315c
	mov.b @(0x5,r14),r0
	add 0x01,r0
	bra loc_8c093194
	mov.b r0,@(0x5,r14)

;##############################################
loc_8c09312e:
	#data 0x00dc
loc_8c093130:
	#data 0x00c0
loc_8c093132:
	#data 0x012c
loc_8c093134:
	#data 0x01a3
loc_8c093136:
	#data 0x019c
loc_8c093138:
	#data 0x0080
loc_8c09313a:
	#data 0x0130
loc_8c09313c:
	#data 0x01a1
loc_8c09313e:
	#data 0x00ff
loc_8c093140:
	#data 0x00cc
loc_8c093142:
	#data 0x019e
	#align4

loc_8C093144:
	#data bank12.loc_8c129560
loc_8C093148:
	#data bank12.loc_8c1294C8
loc_8C09314c:
	#data 0x42200000
loc_8C093150:
	#data 0xC2200000
loc_8C093154:
	#data 0x8C2896B0
loc_8C093158:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8C09315C:
	mov.w @(0x98,PC),r0
	mov 0x42,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r4),r0
	tst r0,r0
	bt loc_8c093170
	mov.w @(0x8E,PC),r0
	mov 0x5E,r3
	bra loc_8c093176
	mov.b r3,@(r0,r14)

loc_8C093170:
	mov.w @(0x86,PC),r0
	mov 0x53,r2
	mov.b r2,@(r0,r14)

loc_8C093176:
	mov.w @(0x82,PC),r0
	mov.l @(0x84,PC),r3
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

loc_8C093194:
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
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x42,PC),r0
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0931da
	mov.w @(0x36,PC),r0
	mov.b r13,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bt loc_8c0931da
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0931e8
	mov.l @r15+,r14

loc_8C0931DA:
	lds.l @r15+,pr
	mov.l @(0x28,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0931E8:
	mov 0x03,r0; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0931FE,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0931F2:
	mov.l @(loc_8C09320C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0931f8:
	#data 0x019c
loc_8c0931fa:
	#data 0x01a1
loc_8c0931fc:
	#data 0x01ac
loc_8c0931fe:
	#data 0x012c
	#align4

loc_8c093200:
	#data 0x8C2896B0
loc_8C093204:
	#data bank03.loc_8c03340c
loc_8C093208:
	#data bank04.loc_8c045748
loc_8C09320C:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c093210:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x138,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09323c
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x104,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c09323c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C093244:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C09333E,pc),r2 ; r2 set to 0x2A4
	mov 0x20,r0; r0 set to 0x20
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(loc_8C093340,pc),r1 ; r1 set to 0xCc
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C093358,pc),r3 ; r3 set to 0x8C28C63c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C09335C,pc),r2 ; r2 set to 0x8C28C640
	mov.l r1,@r2 ; r2 ??? bc r1 is ???
	mov.b @(r0,r14),r3
	mov.l @(loc_8C093360,pc),r0; r0 set to 0x8C155890
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

loc_8C09326C:
	mov r4,r3
	mov.l @(loc_8C093364,pc),r1 ; r1 set to 0x8C1558A0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09327E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C093342,pc),r0; r0 set to 0x20c
	mov.w @(loc_8C093344,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.l @(0x18,r14),r6
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C093368,pc),r3 ; r3 set to 0x8C129560
	mov.l @(r0,r6),r5
	mov.b @(0x04,r14),r0
	add 0x01,r0; r0 set to 0x20d
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C093344,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C093346,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C093348,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C09336C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x42,r7 ; r7 set to 0x42
	mov.b r4,@(r0,r14)
	mov 0x50,r3 ; r3 set to 0x50
	mov.w @(loc_8C09334A,pc),r0; r0 set to 0x19c
	mov.b r7,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r7,@(r0,r14)
	add 0x04,r0; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l @(loc_8C093370,pc),r3 ; r3 set to 0x8C2896B0
	mov 0x20,r7 ; r7 set to 0x20
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C09334C,pc),r0; r0 set to 0x13e
	mov.b r7,@(r0,r14)
	add 0x01,r0; r0 set to 0x13f
	mov.b r7,@(r0,r14)
	add 0xF1,r0; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C093374,pc),r2 ; r2 set to 0x8C26A524
	tst r3,r3
	bt/s loc_8C09337c
	fmov.s @r2,fr2 ; r2 ??
	mova @(loc_8C093378,pc),r0 ; r0 set to loc_8c093378
	bra loc_8C093380
	fmov.s @r0,fr3

;##############################################
loc_8C09333c:
	#data 0x2000
loc_8C09333E:
	#data 0x02A4
loc_8C093340:
	#data 0x00Cc
loc_8C093342:
	#data 0x020c
loc_8C093344:
	#data 0x00Dc
loc_8C093346:
	#data 0x012c
loc_8C093348:
	#data 0x01A3
loc_8C09334A:
	#data 0x019c
loc_8C09334C:
	#data 0x013e
	#align4

loc_8C093350:
	#data bank04.loc_8c044F12
loc_8C093354:
	#data loc_8c093244
loc_8C093358:
	#data 0x8C28C63c
loc_8C09335C:
	#data 0x8C28C640
loc_8C093360:
	#data bank15.loc_8c155890
loc_8C093364:
	#data bank15.loc_8c1558A0
loc_8C093368:
	#data bank12.loc_8c129560
loc_8C09336C:
	#data bank12.loc_8c1294C8
loc_8C093370:
	#data 0x8C2896B0
loc_8C093374:
	#data 0x8C26A524
loc_8C093378:
	#data 0xC3BAAAAb

;##############################################
loc_8c09337c:
	mova @(loc_8C0934B4,pc),r0
	fmov.s @r0,fr3

loc_8c093380:
	fadd fr3,fr2
	mov 0x34,r0
	fldi0 fr4
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0934B8,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0934AE,pc),r0
	fmov.s @(r0,r6),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r5),fr1
	fmov.s @(r0,r14),fr2
	mova @(loc_8C0934BC,pc),r0
	fsub fr2,fr1
	fmov.s @r0,fr2
	mov 0x5C,r0
	fdiv fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r5),fr0
	fmov.s @(r0,r14),fr1
	mova @(loc_8C0934C0,pc),r0
	fsub fr1,fr0
	fldi1 fr1
	fadd fr1,fr1
	fmul fr1,fr0
	fmov.s @r0,fr3
	mov 0x6C,r0
	fdiv fr3,fr0
	fmov.s fr0,@(r0,r14)
	mova @(loc_8C0934C4,pc),r0
	fmov.s @r0,fr4
	mov 0x6C,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr4,fr2
	bf loc_8c0933d6
	fmov.s fr4,@(r0,r14)

loc_8c0933d6:
	mov.l @(0x18,r14),r1
	mov.w @(loc_8C0934B0,pc),r0
	mov.l @(loc_8C0934C8,pc),r2
	mov.w @(r0,r1),r0
	mov.l @r2,r3
	mov.w r0,@r3
	mov 0x22,r0
	mov.l @(loc_8c0934cc,pc),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0934d0,pc),r3
	mov 0x01,r2
	mov r14,r4
	mov.b r2,@r14
	lds.l @r15+,pr 
	mov 0x04,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

loc_8C0933FE:
	mov r4,r3
	mov.l @(loc_8C0934D4,pc),r1 ; r1 set to 0x8C1558B0
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C093410:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0xB8,PC),r3
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
	mov 0x22,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c093476
	mov.l @(0x64,PC),r2
	mov.w @(0x48,PC),r0
	mov.l @r2,r3
	mov.w @r3,r1
	mov.w @(r0,r13),r3
	cmp/eq r3,r1
	bt loc_8c093476
	mov 0x22,r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8C093476:
	mov.w @(0x38,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09356c
	mov.l @(0x5C,PC),r3
	mov 0x02,r11
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c09349c
	mov 0x22,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09349c
	bsr loc_8c093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0934e4

loc_8C09349C:
	mov.l @(0x40,PC),r2
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.l @r2,r3
	mov r11,r0
	nop
	bra loc_8c0935ac
	mov.b r0,@(0x8,r3)

;==============================================
loc_8c0934ae:
	#data 0x041C
loc_8c0934b0:
	#data 0x0158
loc_8c0934b2:
	#data 0x019E
	#align4

loc_8c0934b4:
	#data 0x43BAAAAb
loc_8c0934b8:
	#data 0x43BAAAAa
loc_8c0934bc:
	#data 0x42000000
loc_8c0934c0:
	#data 0x44800000
loc_8c0934c4:
	#data 0xBF4DB6Db
loc_8c0934c8:
	#data 0x8C28C640
loc_8C0934CC:
	#data bank10.loc_8c104434
loc_8C0934D0:
	#data bank03.loc_8c034e8c
loc_8C0934D4:
	#data bank15.loc_8c1558B0
loc_8C0934D8:
	#data bank03.loc_8c034dee
loc_8C0934DC:
	#data bank05.loc_8c05264c
loc_8C0934e0:
	#data 0x8C28C63c

;==============================================
loc_8C0934E4:
	mov 0x04,r0
	mov.l @(0x150,PC),r2
	mov.b r0,@(0x5,r14)
	mov 0x00,r3
	mov.w @(0x13C,PC),r0
	mov.l @(r0,r14),r12
	add 0xED,r0
	mov.b r3,@(r0,r13)
	add 0x50,r0
	mov.b r11,@(r0,r13)
	add 0x08,r0
	mov.b r11,@(r0,r13)
	mov 0x01,r0
	mov.l @r2,r3
	mov r12,r5
	mov.b r0,@(0x8,r3)
	mov.w @(0x128,PC),r0
	mov.w @(0x124,PC),r3
	mov.b r3,@(r0,r13)
	mov.l @(0x130,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x12C,PC),r2
	mov 0x0F,r5
	mov 0x07,r6
	jsr @r2
	mov r14,r4
	mov.w @(0x114,PC),r4
	mov 0x00,r1
	mov.l @(0x124,PC),r3
	add r12,r4
	mov.l @(0x4,r4),r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bt loc_8c09353c
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mov.w @(0x100,PC),r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fadd fr3,fr2
	bra loc_8c09355a
	fmov fr2,@(r0,r12)

loc_8C09353C:
	mov.w @(0xF2,PC),r4
	mov.l @(0x10C,PC),r2
	add r12,r4
	mov.l @r4,r0
	and r2,r0
	or r1,r0
	tst r0,r0
	bt loc_8c09355a
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov.w @(0xE0,PC),r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r12)

loc_8C09355A:
	lds.l @r15+,pr
	mov r12,r5
	mov.l @(0xF4,PC),r3
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C09356C:
	mov.w @(0xC4,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c093594
	mov.b @(0x5,r14),r0
	mov 0x08,r6
	mov.l @(0xC0,PC),r3
	mov r14,r4
	add 0x02,r0
	mov.b r0,@(0x5,r14)
	mov 0x17,r5
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C093594:
	mov 0x22,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0935ac
	lds.l @r15+,pr
	mov.l @(0xB8,PC),r3
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0935AC:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0935B8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C09365C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C093634,pc),r0; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C093626
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov 0x08,r6 ; r6 set to 0x08
	add 0x01,r0; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov 0x17,r5 ; r5 set to 0x17
	mov.w @(loc_8C093634,pc),r0; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	mov.l @(loc_8C093640,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C093626:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09362c:
	#data 0x01B0
loc_8C09362e:
	#data 0x00C4
loc_8C093630:
	#data 0x01F7
loc_8C093632:
	#data 0x0414

loc_8C093634:
	#data 0x041c
	#align4

loc_8C093638:
	#data 0x8C28C63c
loc_8C09363C:
	#data bank05.loc_8c05248e
loc_8C093640:
	#data bank03.loc_8c034e8c
loc_8C093644:
	#data 0x04000000
loc_8C093648:
	#data 0x42AB6DB6
loc_8C09364c:
	#data 0x20000000
loc_8C093650:
	#data 0x424DB6Db
loc_8C093654:
	#data bank04.loc_8c04CE54
loc_8C093658:
	#data bank04.loc_8c045748
loc_8C09365C:
	#data bank03.loc_8c034dee

;==============================================
loc_8C093660:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C093778,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0936A0
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	fldi0 fr4
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x04,r6 ; r6 set to 0x04
	mov.w @(loc_8C093772,pc),r0; r0 set to 0x130
	mov 0x17,r5 ; r5 set to 0x17
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C09377C,pc),r2 ; r2 set to 0x8C034E8c
	fneg fr3
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_8C0936A0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0936A6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
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
	bf loc_8c0936fe
	bsr loc_8c09464e
	mov r14,r4
	mov.l @(0x8C,PC),r3
	mov 0xFF,r0
	mov.l @r3,r2
	mov.b r0,@(0x8,r2)

loc_8C0936FE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C093704:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C093774,pc),r0; r0 set to 0x1C8
	mov r4,r14
	mov.l @(r0,r14),r3
	mov.l r3,@r15
	mov.l @(loc_8C093778,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C093788,pc),r3 ; r3 set to 0x8C04CE54
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C093776,pc),r0; r0 set to 0x1Ea
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(0x18,r14),r2
	mov 0x02,r13 ; r13 set to 0x02
	mov.b r3,@(r0,r2)
	add 0x03,r0; r0 set to 0x1Ed
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	mov.b r13,@(r0,r3)
	add 0x08,r0; r0 set to 0x1F5
	mov.l @(0x18,r14),r3
	mov.b r13,@(r0,r3)
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0; r0 set to 0xF5
	tst r0,r0
	bt loc_8C09374e
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	bra loc_8C093984
	mov.l @r15+,r14

loc_8c09374e:
	mov.l @(loc_8C093784,pc),r3
	mov.l @r3,r2
	mov.b @(0x09,r2),r0
	tst r0,r0
	bt loc_8c093768
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c093768:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c093772:
	#data 0x0130
loc_8c093774:
	#data 0x01C8
loc_8c093776:
	#data 0x01EA
	#align4

loc_8c093778:
	#data bank03.loc_8c034dee
loc_8c09377c:
	#data bank03.loc_8c034e8c
loc_8c093780:
	#data bank03.loc_8c03340c
loc_8C093784:
	#data 0x8C28C63C
loc_8c093788:
	#data bank04.loc_8c04ce54

;==============================================
loc_8C09378C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0938BA,pc),r0; r0 set to 0x1C8
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x02,r13 ; r13 set to 0x02
	mov.l r3,@r15
	mov.l @(r0,r14),r12
	add 0x22,r0; r0 set to 0x1Ea
	mov.b r2,@(r0,r3)
	add 0x03,r0; r0 set to 0x1Ed
	mov.l @(0x18,r14),r3
	mov.b r13,@(r0,r3)
	add 0x08,r0; r0 set to 0x1F5
	mov.l @(0x18,r14),r3
	mov.b r13,@(r0,r3)
	mov.l @(loc_8C0938C0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0938C4,pc),r2 ; r2 set to 0x8C04CE54
	mov r12,r5
	jsr @r2
	mov r14,r4
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0; r0 set to 0xF5
	tst r0,r0
	bt loc_8C0937Da
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	bra loc_8C093984
	mov.l @r15+,r14

loc_8c0937da:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c093816
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x27,r3
	mov.w @(loc_8C0938BC,pc),r0
	mov.b r3,@(r0,r12)
	mov.l @(loc_8c0938c8,pc),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0938cc,pc),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r12,r4
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst 0x01,r0
	bt loc_8c093816
	mov.l @(loc_8c0938d0,pc),r2
	mov 0x02,r5
	jsr @r2
	mov r14,r4

loc_8c093816:
	mov.l @(loc_8C0938D4,pc),r2
	mov.l @r2,r3
	mov.b @(0x09,r3),r0
	cmp/ge r13,r0
	bf loc_8c093826
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c093826:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C093832:
	mov.w @(loc_8C0938BA,pc),r0; r0 set to 0x1C8
	mov 0x01,r2 ; r2 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r4 ; r4 set to 0x02
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.l @(r0,r14),r5
	add 0x22,r0; r0 set to 0x1Ea
	mov.b r2,@(r0,r3)
	add 0x03,r0; r0 set to 0x1Ed
	mov.l @(0x18,r14),r3
	mov.b r4,@(r0,r3)
	add 0x08,r0; r0 set to 0x1F5
	mov.l @(0x18,r14),r3
	mov.b r4,@(r0,r3)
	mov.l @(loc_8C0938C4,pc),r3 ; r3 set to 0x8C04CE54
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.b @(0x05,r14),r0
	add 0x01,r0; r0 set to 0x1F6
	mov.b r0,@(0x05,r14)
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0; r0 set to 0xF6
	tst r0,r0
	bt loc_8C093870
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C093984
	mov.l @r15+,r14

loc_8C093870:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C093876:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0938BA,pc),r0; r0 set to 0x1C8
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x02,r4 ; r4 set to 0x02
	mov.l r3,@r15
	mov.l @(r0,r14),r13
	add 0x22,r0; r0 set to 0x1Ea
	mov.b r2,@(r0,r3)
	add 0x03,r0; r0 set to 0x1Ed
	mov.l @(0x18,r14),r3
	mov r13,r5
	mov.b r4,@(r0,r3)
	add 0x08,r0; r0 set to 0x1F5
	mov.l @(0x18,r14),r3
	mov.b r4,@(r0,r3)
	mov.l @(loc_8C0938C4,pc),r3 ; r3 set to 0x8C04CE54
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0; r0 set to 0xF5
	tst r0,r0
	bt loc_8C0938D8
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C093984
	mov.l @r15+,r14

;##############################################
loc_8C0938BA:
	#data 0x01C8
loc_8c0938bc:
	#data 0x01A1
	#align4

loc_8C0938C0:
	#data bank03.loc_8c034dee
loc_8C0938C4:
	#data bank04.loc_8c04CE54
loc_8C0938C8:
	#data bank05.loc_8c05933c
loc_8C0938CC:
	#data bank05.loc_8c05A49c
loc_8C0938D0:
	#data bank04.loc_8c04223a
loc_8c0938d4:
	#data 0x8C28C63c

;----------------------------------------------
loc_8c0938d8:
	mov.l @(loc_8C0939E0,pc),r2
	mov.l @r2,r3
	mov.b @(0x09,r3),r0
	mov 0x03,r3
	cmp/ge r3,r0
	bf loc_8c0938fa
	bsr loc_8c093984
	mov r14,r4
	mov.w @(loc_8C0939D6,pc),r0
	mov 0x01,r3
	mov.l @r15,r2
	mov.l r2,@(r0,r13)
	add 0x42,r0
	mov.b r3,@(r0,r13)
	add 0xAB,r0
	mov 0x28,r2
	mov.b r2,@(r0,r13)

loc_8c0938fa:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c093904:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xD4,PC),r3
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
	bt loc_8c09395e
	mov.w @(0x84,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c09396a

loc_8c09395e:
	bsr loc_8c09464e
	mov r14,r4
	mov.l @(0x7C,PC),r2
	mov 0xFF,r0
	mov.l @r2,r3
	mov.b r0,@(0x8,r3)

loc_8c09396a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C093970:
	mov.w @(loc_8C0939DA,pc),r0; r0 set to 0x411
	mov.l @(0x18,r4),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C09397e
	rts
	mov 0x01,r0

loc_8C09397E:
	mov 0x00,r0; r0 set to 0x00
	rts
	nop

;----------------------------------------------
loc_8C093984:
	mov 0x08,r0; r0 set to 0x08
	mov.b r0,@(0x05,r4)
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0939DC,pc),r0; r0 set to 0x1Ea
	mov.l @(0x18,r4),r3
	mov.b r2,@(r0,r3)
	mov.w @(loc_8C0939DE,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C09399e
	mova @(loc_8C0939EC,pc),r0 ; r0 set to loc_8c0939Ec
	bra loc_8C0939A2
	fmov.s @r0,fr3

loc_8C09399E:
	mova @(loc_8C0939F0,pc),r0 ; r0init to loc_8c0939F0
	fmov.s @r0,fr3

loc_8C0939A2:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0939FC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fldi0 fr3
	mov 0x0D,r6 ; r6 set to 0x0D, r6 set to 0x0d
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0939F4,pc),r0 ; r0 set to loc_8c0939F4, r0 set to loc_8c0939F4
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0939F8,pc),r0 ; r0 set to loc_8c0939F8, r0 set to loc_8c0939F8
	fmov.s @r0,fr3
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8C0939C4:
	mov r4,r3
	mov.l @(loc_8C093A00,pc),r1 ; r1 set to 0x8C1558D4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0939d6:
	#data 0x01B4
loc_8c0939d8:
	#data 0x041c
loc_8C0939DA:
	#data 0x0411
loc_8C0939DC:
	#data 0x01Ea
loc_8C0939DE:
	#data 0x0130
loc_8c0939e0:
	#data 0x8C28C63c
loc_8C0939E4:
	#data bank03.loc_8c034dee
loc_8C0939E8:
	#data bank03.loc_8c03340c
loc_8C0939EC:
	#data 0xC1555555
loc_8C0939F0:
	#data 0x41555555
loc_8C0939F4:
	#data 0x41700000
loc_8C0939F8:
	#data 0xBF092492
loc_8C0939FC:
	#data bank03.loc_8c034e8c
loc_8C093A00:
	#data bank15.loc_8c1558D4

;==============================================
loc_8C093A04:
	mov.w @(loc_8C093B12,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C093B1C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C093B12,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C093B14,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C093B16,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C093B20,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C093B14,pc),r0; r0 set to 0x12c
	mov.l @(loc_8C093B24,pc),r1 ; r1 set to 0x8C28C640
	mov.b r3,@(r0,r4)
	add 0x2C,r0; r0 set to 0x158
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	lds.l @r15+,pr
	mov.w @(r0,r3),r3
	mov.l @r1,r2 ; r2 ??
	rts
	mov.w r3,@r2

;----------------------------------------------
loc_8C093A84:
	mov r4,r3
	mov.l @(loc_8C093B28,pc),r1 ; r1 set to 0x8C1558E4
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C093A96:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C093B24,pc),r13 ; r13 set to 0x8C28C640
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.w @(loc_8C093B18,pc),r0; r0 set to 0x158
	mov.l r3,@r15
	mov.l @r13,r2
	mov.w @r2,r3
	mov.l @r15,r2
	mov.w @(r0,r2),r1
	cmp/eq r1,r3
	bf loc_8C093AD2
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0; r0 set to 0x58
	tst r0,r0
	bf loc_8C093AD2
	mov.l @(loc_8C093B2C,pc),r3 ; r3 set to 0x8C28C63c
	mov.l @r3,r4
	mov.b @(0x08,r4),r0
	tst r0,r0
	bf loc_8C093ACc
	bra loc_8C093BD6
	nop

loc_8c093acc:
	mov.b @(0x08,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c093ade

loc_8C093AD2:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C09464e
	mov.l @r15+,r14

loc_8C093ADE:
	mov.w @(0x38,PC),r0
	mov 0x01,r3
	mov.l @r15,r4
	mov 0x28,r5
	mov.l @(r0,r4),r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x22,PC),r0
	mov.b r3,@(r0,r14)
	add 0x12,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0xF1,r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c093b34
	mov.l @r13,r3
	mov.b @(0x1,r4),r0
	mov.l @(0x28,PC),r1
	extu.b r0,r0
	shll2 r0
	shll r0
	bra loc_8c093b42
	fmov @(r0,r1),fr3

;##############################################
loc_8C093B12:
	#data 0x00Dc
loc_8C093B14:
	#data 0x012c
loc_8C093B16:
	#data 0x01A3
loc_8C093B18:
	#data 0x0158
loc_8C093B1a:
	#data 0x01C8
	#align4

loc_8C093B1C:
	#data bank12.loc_8c129560
loc_8C093B20:
	#data bank12.loc_8c1294C8
loc_8C093B24:
	#data 0x8C28C640
loc_8C093B28:
	#data bank15.loc_8c1558E4
loc_8C093B2C:
	#data 0x8C28C63c
loc_8C093B30:
	#data bank15.loc_8c155308

;==============================================
loc_8C093B34:
	mov.b @(0x1,r4),r0
	mov.l @(0x144,PC),r1
	extu.b r0,r0
	shll2 r0
	shll r0
	fmov @(r0,r1),fr3
	fneg fr3

loc_8C093B42:
	mov 0x34,r0
	mov.l @(0x138,PC),r1
	fmov @(r0,r4),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r3)
	mov.b @(0x1,r4),r0
	mov.l @r13,r3
	extu.b r0,r0
	shll2 r0
	shll r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x08,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r3)
	mov.w @(0x112,PC),r0
	mov.l @(0x11C,PC),r3
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c093b76
	fmov @r3,fr2
	mova @(0x114,PC),r0
	bra loc_8c093b7a
	fmov @r0,fr3

loc_8C093B76:
	mova @(0x114,PC),r0
	fmov @r0,fr3

loc_8C093B7A:
	fadd fr3,fr2
	mov 0x34,r0
	fmov fr2,@(r0,r14)
	mov 0x08,r0
	mov.l @r13,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	mov.l @r13,r3
	fmov @(r0,r3),fr2
	mova @(0xF8,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fldi0 fr2
	fmov fr2,@(r0,r14)
	mova @(0xEC,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mova @(0xE8,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r2
	mov r14,r4
	mov 0x17,r5
	mov.b r2,@r14
	mov 0x05,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xD0,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C093BD6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C093BE0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C093CA4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0; r0??
	tst r0,r0
	bf loc_8C093C58
	mov.b @(0x05,r14),r0
	mov 0x0A,r6 ; r6 set to 0x0a
	mov.l @(loc_8C093CA8,pc),r4 ; r4 set to 0x8C28C640
	mov 0x17,r5 ; r5 set to 0x17
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x04,r0; r0 set to 0x04
	mov.l @r4,r3
	fmov.s @(r0,r3),fr3
	mov 0x34,r0; r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mov 0x08,r0; r0 set to 0x08
	mov.l @r4,r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	mov.l @(loc_8C093CA0,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C093C58:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C093C5E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C093CA4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C093CAc
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C093DC4
	mov.l @r15+,r14

;##############################################
loc_8C093C7a:
	#data 0x0130
	#align4

loc_8C093C7C:
	#data bank15.loc_8c155308
loc_8C093C80:
	#data bank15.loc_8c15530c
loc_8C093C84:
	#data 0x8C26A524
loc_8C093C88:
	#data 0x43C15555
loc_8C093C8c:
	#data 0xC3C15555
loc_8C093C90:
	#data 0x41800000
loc_8C093C94:
	#data 0x41092492
loc_8C093C98:
	#data 0xBF892492
loc_8C093C9C:
	#data bank10.loc_8c104434
loc_8C093CA0:
	#data bank03.loc_8c034e8c
loc_8C093CA4:
	#data bank03.loc_8c034dee
loc_8C093CA8:
	#data 0x8C28C640

;==============================================
loc_8c093cac:
	mov.l @(loc_8C093DB8,pc),r2
	mov.l @r2,r3
	mov.b @(0x09,r3),r0
	tst r0,r0
	bt loc_8c093cbc
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c093cbc:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C093CC2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C093DBC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C093CDe
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C093DC4
	mov.l @r15+,r14

loc_8c093cde:
	mov.l @(loc_8C093DB8,pc),r2
	mov.l @r2,r3
	mov.b @(0x09,r3),r0
	mov 0x02,r3
	cmp/ge r3,r0
	bf loc_8c093cf0
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c093cf0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C093CF6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C093D14
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C093DC4
	mov.l @r15+,r14

loc_8C093D14:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C093D1A:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c093970
	mov.l r4,@r15
	extu.b r0,r0
	tst r0,r0
	bf loc_8c093d34
	mov.l @(0x8C,PC),r3
	mov.l @r3,r2
	mov.b @(0x9,r2),r0
	mov 0x03,r2
	cmp/ge r2,r0
	bf loc_8c093d3c

loc_8C093D34:
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c093dc4
	lds.l @r15+,pr

loc_8C093D3C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C093D44:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r4,r14
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
	tst r0,r0
	bt loc_8c093da8
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c093db0
	mov.w @(0x18,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fcmp/gt fr2,fr1
	bt loc_8c093db0

loc_8C093DA8:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c09464e
	mov.l @r15+,r14

loc_8C093DB0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c093db6:
	#data 0x041C
	#align4
loc_8c093db8:
	#data 0x8C28C63c
loc_8C093DBC:
	#data bank03.loc_8c034dee
loc_8C093DC0:
	#data bank03.loc_8c03340c

;==============================================
loc_8C093DC4:
	mov 0x06,r0; r0 set to 0x06
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C093EE8,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C093DD6
	mova @(loc_8C093EF4,pc),r0 ; r0 set to loc_8c093EF4
	bra loc_8C093DDa
	fmov.s @r0,fr3

loc_8C093DD6:
	mova @(loc_8C093EF8,pc),r0 ; r0init to loc_8c093EF8
	fmov.s @r0,fr3

loc_8C093DDA:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C093F04,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fldi0 fr3
	mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C093EFC,pc),r0 ; r0 set to loc_8c093EFC, r0 set to loc_8c093EFc
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C093F00,pc),r0 ; r0 set to loc_8c093F00, r0 set to loc_8c093F00
	fmov.s @r0,fr3
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8C093DFC:
	mov r4,r3
	mov.l @(loc_8C093F08,pc),r1 ; r1 set to 0x8C155900
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C093E0E:
	mov.w @(loc_8C093EEA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C093F0C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C093EEA,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C093EEC,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C093EEE,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C093F10,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C093EEC,pc),r0; r0 set to 0x12c
	mov.l @(loc_8C093F14,pc),r1 ; r1 set to 0x8C28C640
	mov.b r3,@(r0,r4)
	add 0x2C,r0; r0 set to 0x158
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	lds.l @r15+,pr
	mov.w @(r0,r3),r3
	mov.l @r1,r2 ; r2 ??
	rts
	mov.w r3,@r2

;----------------------------------------------
loc_8C093E8E:
	mov r4,r3
	mov.l @(loc_8C093F18,pc),r1 ; r1 set to 0x8C155910
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C093EA0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C093F14,pc),r13 ; r13 set to 0x8C28C640
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.w @(loc_8C093EF0,pc),r0; r0 set to 0x158
	mov.l r3,@r15
	mov.l @r13,r2
	mov.w @r2,r3
	mov.l @r15,r2
	mov.w @(r0,r2),r1
	cmp/eq r1,r3
	bf loc_8C093EDc
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0; r0 set to 0x58
	tst r0,r0
	bf loc_8C093EDc
	mov.l @(loc_8C093F1C,pc),r3 ; r3 set to 0x8C28C63c
	mov.l @r3,r4
	mov.b @(0x08,r4),r0
	tst r0,r0
	bf loc_8C093ED6
	bra loc_8C093FF6
	nop

loc_8c093ed6:
	mov.b @(0x08,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c093f20

loc_8C093EDC:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C09464e
	mov.l @r15+,r14

;##############################################
loc_8C093EE8:
	#data 0x0130
loc_8C093EEA:
	#data 0x00Dc
loc_8C093EEC:
	#data 0x012c
loc_8C093EEE:
	#data 0x01A3
loc_8C093EF0:
	#data 0x0158
	#align4

loc_8C093EF4:
	#data 0x41555555
loc_8C093EF8:
	#data 0xC1555555
loc_8C093EFC:
	#data 0x40892492
loc_8C093F00:
	#data 0xBD092492
loc_8C093F04:
	#data bank03.loc_8c034e8c
loc_8C093F08:
	#data bank15.loc_8c155900
loc_8C093F0C:
	#data bank12.loc_8c129560
loc_8C093F10:
	#data bank12.loc_8c1294C8
loc_8C093F14:
	#data 0x8C28C640
loc_8C093F18:
	#data bank15.loc_8c155910
loc_8C093F1C:
	#data 0x8C28C63c

;==============================================
loc_8C093F20:
	mov.w @(0x15A,PC),r0
	mov 0x01,r3
	mov.l @r15,r4
	mov 0x30,r5
	mov.l @(r0,r4),r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x14C,PC),r0
	mov.b r3,@(r0,r14)
	add 0x12,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0xF1,r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c093f54
	mov.l @r13,r3
	mov.b @(0x1,r4),r0
	mov.l @(0x138,PC),r1
	extu.b r0,r0
	shll2 r0
	shll r0
	bra loc_8c093f62
	fmov @(r0,r1),fr3

loc_8C093F54:
	mov.b @(0x1,r4),r0
	mov.l @(0x12C,PC),r1
	extu.b r0,r0
	shll2 r0
	shll r0
	fmov @(r0,r1),fr3
	fneg fr3

loc_8C093F62:
	mov 0x34,r0
	mov.l @(0x120,PC),r1
	fmov @(r0,r4),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r3)
	mov.b @(0x1,r4),r0
	mov.l @r13,r3
	extu.b r0,r0
	shll2 r0
	shll r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x08,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r3)
	mov.w @(0xFA,PC),r0
	mov.l @(0x104,PC),r3
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c093f96
	fmov @r3,fr2
	mova @(0xFC,PC),r0
	bra loc_8c093f9a
	fmov @r0,fr3

loc_8C093F96:
	mova @(0xFC,PC),r0
	fmov @r0,fr3

loc_8C093F9A:
	fadd fr3,fr2
	mov 0x34,r0
	fmov fr2,@(r0,r14)
	mov 0x08,r0
	mov.l @r13,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	mov.l @r13,r3
	fmov @(r0,r3),fr2
	mova @(0xE0,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fldi0 fr2
	fmov fr2,@(r0,r14)
	mova @(0xD4,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mova @(0xD0,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r2
	mov r14,r4
	mov 0x17,r5
	mov.b r2,@r14
	mov 0x06,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xB8,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C093FF6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C094000:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0940AC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0; r0??
	tst r0,r0
	bf loc_8C094078
	mov.b @(0x05,r14),r0
	mov 0x0B,r6 ; r6 set to 0x0b
	mov.l @(loc_8C0940B0,pc),r4 ; r4 set to 0x8C28C640
	mov 0x17,r5 ; r5 set to 0x17
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x04,r0; r0 set to 0x04
	mov.l @r4,r3
	fmov.s @(r0,r3),fr3
	mov 0x34,r0; r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mov 0x08,r0; r0 set to 0x08
	mov.l @r4,r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	mov.l @(loc_8C0940A8,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C094078:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c09407e:
	#data 0x01c8
loc_8c094080:
	#data 0x012c
loc_8c094082:
	#data 0x0130
	#align4

loc_8C094084:
	#data bank15.loc_8c1554E0
loc_8C094088:
	#data bank15.loc_8c1554E4
loc_8C09408c:
	#data 0x8C26A524
loc_8C094090:
	#data 0xC3C80000
loc_8C094094:
	#data 0x43C80000
loc_8C094098:
	#data 0x41800000
loc_8C09409c:
	#data 0x41092492
loc_8C0940a0:
	#data 0xBF892492
loc_8C0940A4:
	#data bank10.loc_8c104434
loc_8C0940A8:
	#data bank03.loc_8c034e8c
loc_8C0940AC:
	#data bank03.loc_8c034dee
loc_8C0940B0:
	#data 0x8C28C640

;==============================================
loc_8C0940B4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C094168,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C0940D0
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0941E2
	mov.l @r15+,r14

loc_8c0940d0:
	mov.l @(loc_8C09416C,pc),r2
	mov.l @r2,r3
	mov.b @(0x09,r3),r0
	tst r0,r0
	bt loc_8c0940e0
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c0940e0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0940E6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C094168,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C094102
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0941E2
	mov.l @r15+,r14

loc_8c094102:
	mov.l @(loc_8C09416C,pc),r2
	mov.l @r2,r3
	mov.b @(0x09,r3),r0
	mov 0x02,r3
	cmp/ge r3,r0
	bf loc_8c094114
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c094114:
	lds.l @r15+,pr 
	rts
	mov.l @r15+,r14

loc_8C09411A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C094138
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0941E2
	mov.l @r15+,r14

loc_8C094138:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C09413E:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c093970
	mov.l r4,@r15
	extu.b r0,r0
	tst r0,r0
	bf loc_8c094158
	mov.l @(0x1C,PC),r3
	mov.l @r3,r2
	mov.b @(0x9,r2),r0
	mov 0x03,r2
	cmp/ge r2,r0
	bf loc_8c094160

loc_8C094158:
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c0941e2
	lds.l @r15+,pr

loc_8C094160:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C094168:
	#data bank03.loc_8c034dee
loc_8c09416c:
	#data 0x8C28C63c

;==============================================
loc_8C094170:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x150,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x14C,PC),r3
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
	bt loc_8c0941d4
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0941dc
	mov.w @(0xF4,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fcmp/gt fr2,fr1
	bt loc_8c0941dc

loc_8C0941D4:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c09464e
	mov.l @r15+,r14

loc_8C0941DC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0941E2:
	mov 0x06,r0; r0 set to 0x06
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0942C0,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C0941F4
	mova @(loc_8C0942D0,pc),r0 ; r0 set to loc_8c0942D0
	bra loc_8C0941F8
	fmov.s @r0,fr3

loc_8C0941F4:
	mova @(loc_8C0942D4,pc),r0 ; r0init to loc_8c0942D4
	fmov.s @r0,fr3

loc_8C0941F8:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0942E0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fldi0 fr3
	mov 0x0F,r6 ; r6 set to 0x0F, r6 set to 0x0f
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0942D8,pc),r0 ; r0 set to loc_8c0942D8, r0 set to loc_8c0942D8
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0942DC,pc),r0 ; r0 set to loc_8c0942DC, r0 set to loc_8c0942Dc
	fmov.s @r0,fr3
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8C09421A:
	mov r4,r3
	mov.l @(loc_8C0942E4,pc),r1 ; r1 set to 0x8C15592c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09422C:
	mov.w @(loc_8C0942C2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0942E8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0942C2,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C0942C4,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0942C6,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0942EC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0942C4,pc),r0; r0 set to 0x12c
	mov.l @(loc_8C0942F0,pc),r1 ; r1 set to 0x8C28C640
	mov.b r3,@(r0,r4)
	add 0x2C,r0; r0 set to 0x158
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	lds.l @r15+,pr
	mov.w @(r0,r3),r3
	mov.l @r1,r2 ; r2 ??
	rts
	mov.w r3,@r2

;----------------------------------------------
loc_8C0942AC:
	mov r4,r3
	mov.l @(loc_8C0942F4,pc),r1 ; r1 set to 0x8C15593c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0942be:
	#data 0x041c
loc_8C0942C0:
	#data 0x0130
loc_8C0942C2:
	#data 0x00Dc
loc_8C0942C4:
	#data 0x012c
loc_8C0942C6:
	#data 0x01A3
	#align4

loc_8C0942C8:
	#data bank03.loc_8c034dee
loc_8C0942CC:
	#data bank03.loc_8c03340c
loc_8C0942D0:
	#data 0xC1555555
loc_8C0942D4:
	#data 0x41555555
loc_8C0942D8:
	#data 0x40892492
loc_8C0942DC:
	#data 0xBD092492
loc_8C0942E0:
	#data bank03.loc_8c034e8c
loc_8C0942E4:
	#data bank15.loc_8c15592c
loc_8C0942E8:
	#data bank12.loc_8c129560
loc_8C0942EC:
	#data bank12.loc_8c1294C8
loc_8C0942F0:
	#data 0x8C28C640
loc_8C0942F4:
	#data bank15.loc_8c15593c

;==============================================
loc_8C0942F8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x134,PC),r13
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.w @(0x124,PC),r0
	mov.l r3,@r15
	mov.l @r13,r2
	mov.w @r2,r3
	mov.l @r15,r2
	mov.w @(r0,r2),r1
	cmp/eq r1,r3
	bf loc_8c094330
	bsr loc_8c093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c094330
	mov.l @(0x118,PC),r3
	mov.l @r3,r4
	mov.b @(0x8,r4),r0
	tst r0,r0
	bt loc_8c094424
	mov.b @(0x8,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c09433c

loc_8C094330:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c09464e
	mov.l @r15+,r14

loc_8C09433C:
	mov.w @(0xF0,PC),r0
	mov 0x01,r3
	mov.l @r15,r4
	mov 0x10,r5
	mov.l @(r0,r4),r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xE2,PC),r0
	mov.b r3,@(r0,r14)
	add 0x10,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov 0x78,r3
	mov.b r3,@(r0,r14)
	add 0xF3,r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c094372
	mov.l @r13,r2
	mov.b @(0x1,r4),r0
	mov.l @(0xD8,PC),r1
	extu.b r0,r0
	shll2 r0
	shll r0
	bra loc_8c094380
	fmov @(r0,r1),fr3

loc_8C094372:
	mov.b @(0x1,r4),r0
	mov.l @(0xC8,PC),r1
	extu.b r0,r0
	shll2 r0
	shll r0
	fmov @(r0,r1),fr3
	fneg fr3

loc_8C094380:
	mov 0x34,r0
	mov.l @(0xC0,PC),r1
	fmov @(r0,r4),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r2)
	mov.b @(0x1,r4),r0
	mov.l @r13,r3
	extu.b r0,r0
	shll2 r0
	shll r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x08,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r3)
	mov.w @(0x8E,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0943b2
	mov.l @r13,r3
	mova @(0x98,PC),r0
	bra loc_8c0943b6
	fmov @r0,fr3

loc_8C0943B2:
	mova @(0x98,PC),r0
	fmov @r0,fr3

loc_8C0943B6:
	mov 0x04,r0
	fldi0 fr4
	fmov @(r0,r3),fr2
	mov 0x34,r0
	mov.l @(0x90,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr5
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	mov.l @r13,r2
	fmov @(r0,r2),fr1
	mov 0x5C,r0
	fsub fr2,fr1
	fdiv fr5,fr1
	fmov fr1,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x08,r0
	mov.l @r13,r2
	fmov @(r0,r2),fr1
	fsub fr2,fr1
	mov 0x60,r0
	fdiv fr5,fr1
	fmov fr1,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov r5,r0
	nop
	mov.l @(0x54,PC),r2
	mov.w r0,@(0x1C,r14)
	jsr @r2
	mov r14,r4
	mov 0x01,r3
	mov r14,r4
	mov 0x17,r5
	mov.b r3,@r14
	mov 0x07,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x40,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C094424:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09442e:
	#data 0x0158
loc_8c094430:
	#data 0x01c8
loc_8c094432:
	#data 0x012c
loc_8c094434:
	#data 0x0130
	#align4

loc_8c094438:
	#data 0x8c28c640
loc_8c09443c:
	#data 0x8c28c63c
loc_8C094440:
	#data bank15.loc_8c1556B8
loc_8C094444:
	#data bank15.loc_8c1556Bc
loc_8C094448:
	#data 0x42A00000
loc_8C09444c:
	#data 0xC2A00000
loc_8C094450:
	#data 0x8C26A524
loc_8C094454:
	#data 0x43AB6DB6
loc_8C094458:
	#data 0x41800000
loc_8C09445C:
	#data bank10.loc_8c104434
loc_8C094460:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C094464:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C094598,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0; r0??
	tst r0,r0
	bf loc_8C0944Dc
	mov.b @(0x05,r14),r0
	mov 0x0C,r6 ; r6 set to 0x0c
	mov.l @(loc_8C09459C,pc),r4 ; r4 set to 0x8C28C640
	mov 0x17,r5 ; r5 set to 0x17
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x04,r0; r0 set to 0x04
	mov.l @r4,r3
	fmov.s @(r0,r3),fr3
	mov 0x34,r0; r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mov 0x08,r0; r0 set to 0x08
	mov.l @r4,r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	mov.l @(loc_8C0945A0,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0944DC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0944E2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C094598,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C0944Fe
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C09461a
	mov.l @r15+,r14

loc_8c0944fe:
	mov.l @(loc_8C0945A4,pc),r2
	mov.l @r2,r3
	mov.b @(0x09,r3),r0
	tst r0,r0
	bt loc_8c09450e
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c09450e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C094514:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C094598,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C094530
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C09461a
	mov.l @r15+,r14

loc_8c094530:
	mov.l @(loc_8C0945A4,pc),r2
	mov.l @r2,r3
	mov.b @(0x09,r3),r0
	mov 0x02,r3
	cmp/ge r3,r0
	bf loc_8c094542
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c094542:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C094548:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	bsr loc_8C093970
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C094566
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C09461a
	mov.l @r15+,r14

loc_8C094566:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C09456C:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c093970
	mov.l r4,@r15
	extu.b r0,r0
	tst r0,r0
	bf loc_8c094586
	mov.l @(0x28,PC),r3
	mov.l @r3,r2
	mov.b @(0x9,r2),r0
	mov 0x03,r2
	cmp/ge r2,r0
	bf loc_8c09458e

loc_8C094586:
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c09461a
	lds.l @r15+,pr

loc_8C09458E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C094598:
	#data bank03.loc_8c034dee
loc_8C09459C:
	#data 0x8C28C640
loc_8C0945A0:
	#data bank03.loc_8c034e8c
loc_8c0945a4:
	#data 0x8C28C63c

;==============================================
loc_8C0945A8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xB0,PC),r3
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
	bt loc_8c09460c
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c094614
	mov.w @(0x5C,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fcmp/gt fr2,fr1
	bt loc_8c094614

loc_8C09460C:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c09464e
	mov.l @r15+,r14

loc_8C094614:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09461A:
	mov 0x06,r0; r0 set to 0x06
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C094660,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C09462c
	mova @(loc_8C09466C,pc),r0 ; r0 set to loc_8c09466c
	bra loc_8C094630
	fmov.s @r0,fr3

loc_8C09462C:
	mova @(loc_8C094670,pc),r0 ; r0init to loc_8c094670
	fmov.s @r0,fr3

loc_8C094630:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C094674,pc),r0 ; r0 set to loc_8c094674, r0 set to loc_8c094674
	fmov.s @r0,fr3
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	mov.l @(loc_8C094678,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x10,r6 ; r6 set to 0x10, r6 set to 0x10
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8C09464E:
	mov 0x03,r0; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C094662,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C094658:
	mov.l @(loc_8C09467C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09465e:
	#data 0x041c
loc_8C094660:
	#data 0x0130
loc_8C094662:
	#data 0x012c
	#align4

loc_8C094664:
	#data bank03.loc_8c034dee
loc_8C094668:
	#data bank03.loc_8c0334A8
loc_8C09466C:
	#data 0x40555555
loc_8C094670:
	#data 0xC0555555
loc_8C094674:
	#data 0x414DB6Db
loc_8C094678:
	#data bank03.loc_8c034e8c
loc_8C09467C:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c094680:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(0x164,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0946ba
	mov r0,r4
	mov.l @(0x154,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0x12A,PC),r2
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0946ba:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0946C2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0947DC,pc),r2 ; r2 set to 0x2A4
	mov 0x20,r0; r0 set to 0x20
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(loc_8C0947DE,pc),r1 ; r1 set to 0xCc
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C0947F8,pc),r3 ; r3 set to 0x8C28C648
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C0947FC,pc),r2 ; r2 set to 0x8C28C644
	mov.l r1,@r2 ; r2 ??? bc r1 is ???
	mov.b @(r0,r14),r3
	mov.l @(loc_8C094800,pc),r0; r0 set to 0x8C155958
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

loc_8C0946EA:
	mov r4,r3
	mov.l @(loc_8C094804,pc),r1 ; r1 set to 0x8C155988
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0946FC:
	mov.l r8,@-r15
	mov.w @(loc_8C0947E0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C094808,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0947E0,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C0947E2,pc),r0; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0947E4,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C09480C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8C0947F8,pc),r1 ; r1 set to 0x8C28C648
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0947E6,pc),r0; r0 set to 0x130
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	mov.l @r1,r2
	mov r5,r0; r0 set to 0x01
	nop
	mov.b r0,@(0x02,r2)
	mov 0x42,r5 ; r5 set to 0x42
	mov.w @(loc_8C0947E8,pc),r0; r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r4)
	add 0x06,r0; r0 set to 0x1A3
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8C09478e
	bra loc_8C094790
	mov 0x32,r3

loc_8C09478E:
	mov 0x30,r3 ; r3 set to 0x30

loc_8C094790:
	mov.w @(loc_8C0947EA,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C094810,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0947EC,pc),r0; r0 set to 0x1D2, r0 set to 0x1D2
	mov.l @(0x18,r4),r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt/s loc_8C094818
	add r4,r8 ; r8 ??? bc r4 is ???, r8 ??? bc r4 is ???
	mov.l @(loc_8C094814,pc),r1 ; r1 set to 0x42855555, r1 set to 0x42855555
	lds r1,fpul
	bra loc_8C09481e
	fsts fpul,fr3

;##############################################
loc_8C0947Da:
	#data 0x2100
loc_8C0947DC:
	#data 0x02A4
loc_8C0947DE:
	#data 0x00Cc
loc_8C0947E0:
	#data 0x00Dc
loc_8C0947E2:
	#data 0x012c
loc_8C0947E4:
	#data 0x01A3
loc_8C0947E6:
	#data 0x0130
loc_8C0947E8:
	#data 0x019c
loc_8C0947EA:
	#data 0x01A1
loc_8C0947EC:
	#data 0x01D2
	#align4

loc_8C0947F0:
	#data bank04.loc_8c044F12
loc_8C0947F4:
	#data loc_8c0946C2
loc_8C0947F8:
	#data 0x8C28C648
loc_8C0947FC:
	#data 0x8C28C644
loc_8C094800:
	#data bank15.loc_8c155958
loc_8C094804:
	#data bank15.loc_8c155988
loc_8C094808:
	#data bank12.loc_8c129560
loc_8C09480C:
	#data bank12.loc_8c1294C8
loc_8C094810:
	#data 0x8C2896B0
loc_8C094814:
	#data 0x42855555

;----------------------------------------------
loc_8C094818:
	mov.l @(loc_8C094954,pc),r2 ; r2 set to 0xC2855555
	lds r2,fpul
	fsts fpul,fr3

loc_8C09481E:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C094958,pc),r1 ; r1 set to 0x431A4924, r1 set to 0x431A4924
	mov 0x20,r6 ; r6 set to 0x20, r6 set to 0x20
	fadd fr3,fr2
	fldi0 fr4
	lds r1,fpul
	fmov.s fr2,@r8
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C094948,pc),r0; r0 set to 0x13E, r0 set to 0x13e
	mov.b r6,@(r0,r4)
	add 0x01,r0; r0 set to 0x13F, r0 set to 0x13f
	mov.b r6,@(r0,r4)
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C09494A,pc),r0; r0 set to 0x1D2, r0 set to 0x1D2
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C094866
	mov.w @(loc_8C09494C,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r2
	mov.l @(loc_8C09495C,pc),r0; r0 set to 0x8C155998, r0 set to 0x8C155998
	extu.b r2,r2
	shll2 r2
	bra loc_8C094874
	fmov.s @(r0,r2),fr2

loc_8C094866:
	mov.w @(loc_8C09494C,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.l @(loc_8C09495C,pc),r0; r0 set to 0x8C155998
	extu.b r3,r3
	shll2 r3
	fmov.s @(r0,r3),fr2
	fneg fr2

loc_8C094874:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C094960,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr2,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24, r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	lds.l @r15+,pr
	mov 0x14,r5 ; r5 set to 0x14, r5 set to 0x14
	jmp @r3
	mov.l @r15+,r8

loc_8C094888:
	mov.w @(0xC2,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09489e
	mov.w @(0xB6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0948a6

loc_8C09489E:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c094932
	mov.l @r15+,r14

loc_8C0948A6:
	mov.l @(0xBC,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0948c0
	mov.l @(0xB4,PC),r3
	mov 0x00,r0
	mov r14,r4
	mov.l @r3,r2
	mov.b r0,@(0x2,r2)
	lds.l @r15+,pr
	bra loc_8c095228
	mov.l @r15+,r14

loc_8C0948C0:
	mov 0x24,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0xA0,PC),r3
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
loc_8C09490E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C09496C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C094926
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C095228
	mov.l @r15+,r14

loc_8C094926:
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C094932:
	mov.b @(0x4,r4),r0
	mov 0x01,r6
	mov.l @(0x30,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r0
	mov.l @r2,r3
	mov.b r0,@(0x2,r3)
	mov.l @(0x1C,PC),r3
	jmp @r3
	mov 0x14,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C094948:
	#data 0x013e
loc_8C09494A:
	#data 0x01D2
loc_8C09494C:
	#data 0x01A3
loc_8C09494e:
	#data 0x019e
loc_8C094950:
	#data 0x019f
	#align4

loc_8C094954:
	#data 0xC2855555
loc_8C094958:
	#data 0x431A4924
loc_8C09495C:
	#data bank15.loc_8c155998
loc_8C094960:
	#data bank03.loc_8c034e8c
loc_8C094964:
	#data bank03.loc_8c03340c
loc_8C094968:
	#data 0x8C28C648
loc_8C09496C:
	#data bank03.loc_8c034dee
loc_8C094970:
	#data bank04.loc_8c045748

;==============================================
loc_8C094974:
	mov r4,r3
	mov.l @(loc_8C094AC0,pc),r1 ; r1 set to 0x8C1559A0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C094986:
	mov.l r14,@-r15
	mov r4,r14
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
	mov 0x17,r5
	mov.b @(r0,r1),r3
	mov.l @(0xD8,PC),r1
	mov.b r3,@(r0,r14)
	mov.w @(0xC0,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	add 0x28,r0
	mov.l @(0x18,r14),r3
	mov.l @r1,r2
	mov.w @(r0,r3),r3
	mov 0x24,r0
	mov.w r3,@r2
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	mov.l @(0xBC,PC),r0
	extu.b r6,r6
	mov.l @(0xBC,PC),r3
	shll2 r6
	mov.l @(r0,r6),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C094A26:
	mov.l @(0xA4,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x8C,PC),r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0
	cmp/eq r0,r1
	bf loc_8c094a72
	mov 0x24,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov.w @(0x66,PC),r3
	fmov fr3,@(r0,r14)
	mov.w @(0x5A,PC),r0
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0
	add r3,r0
	mov.b @(0x1,r0),r0
	and 0xFE,r0
	mov r0,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c094a98
	exts.b r4,r13
	cmp/pz r13
	bt loc_8c094a7e

loc_8C094A72:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c095228
	mov.l @r15+,r14

loc_8C094A7E:
	mov.w @(0x34,PC),r0
	mov 0x01,r3
	mov.l @(0x54,PC),r12
	mov.b r3,@(r0,r14)
	bra loc_8c094a8e
	nop

loc_8C094A8A:
	jsr @r12
	mov r14,r4

loc_8C094A8E:
	mov.w @(0x2C,PC),r2
	add r14,r2
	mov.b @(0x1,r2),r0
	cmp/eq r0,r13
	bf loc_8c094a8a

loc_8C094A98:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C094AA2:
	mov r4,r3
	mov.l @(loc_8C094ADC,pc),r1 ; r1 set to 0x8C1559D8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c094ab4:
	#data 0x00dc
loc_8c094ab6:
	#data 0x012c
loc_8c094ab8:
	#data 0x01a3
loc_8c094aba:
	#data 0x0130
loc_8c094abc:
	#data 0x0158
loc_8c094abe:
	#data 0x0150
	#align4

loc_8C094AC0:
	#data bank15.loc_8c1559A0
loc_8C094AC4:
	#data bank12.loc_8c129560
loc_8C094AC8:
	#data bank12.loc_8c1294C8
loc_8C094ACc:
	#data 0x8C28C644
loc_8C094AD0:
	#data bank15.loc_8c1559B0
loc_8C094AD4:
	#data bank03.loc_8c034e8c
loc_8C094AD8:
	#data bank03.loc_8c034dee
loc_8C094ADC:
	#data bank15.loc_8c1559D8

;==============================================
loc_8C094AE0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov.w @(loc_8C094C0E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C094C20,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C094C0E,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C094C10,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C094C12,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C094C24,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x42,r5 ; r5 set to 0x42
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C094C14,pc),r0; r0 set to 0x130
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	add 0x6C,r0; r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C094C16,pc),r0; r0 set to 0x1D2
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt/s loc_8C094B88
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C094C28,pc),r1 ; r1 set to 0x431CAAAa
	lds r1,fpul
	bra loc_8C094B8e
	fsts fpul,fr3

loc_8C094B88:
	mov.l @(loc_8C094C2C,pc),r2 ; r2 set to 0xC31CAAAa
	lds r2,fpul
	fsts fpul,fr3

loc_8C094B8E:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C094C30,pc),r1 ; r1 set to 0x4381A492, r1 set to 0x4381A492
	mov 0x40,r5 ; r5 set to 0x40, r5 set to 0x40
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C094C18,pc),r0; r0 set to 0x13E, r0 set to 0x13e
	mov.b r5,@(r0,r14)
	add 0x01,r0; r0 set to 0x13F, r0 set to 0x13f
	mov.b r5,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24, r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.b r5,@(r0,r14)
	mov.w @(loc_8C094C1A,pc),r0; r0 set to 0x255, r0 set to 0x255
	mov.b @(r0,r4),r0; r0??? bc r4 is ???, r0??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C094BC4
	mov.w @(loc_8C094C1C,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov 0x53,r2 ; r2 set to 0x53, r2 set to 0x53
	bra loc_8C094BD6
	mov.b r2,@(r0,r14)

loc_8C094BC4:
	mov.w @(loc_8C094C12,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8C094BD0
	bra loc_8C094BD2
	mov 0x44,r3

loc_8C094BD0:
	mov 0x42,r3 ; r3 set to 0x42

loc_8C094BD2:
	mov.w @(loc_8C094C1C,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r3,@(r0,r14)

loc_8C094BD6:
	mov.w @(loc_8C094C1E,pc),r0; r0 set to 0x1AC, r0 set to 0x1AC, r0 set to 0x1Ac
	mov.l @(loc_8C094C34,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r5,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C094C14,pc),r0; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_8C094C3c
	mov.w @(loc_8C094C12,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov.l @(loc_8C094C38,pc),r0; r0 set to 0x8C1559E8, r0 set to 0x8C1559E8, r0 set to 0x8C1559E8
	extu.b r3,r3
	shll2 r3
	shll r3
	fmov.s @(r0,r3),fr3
	bra loc_8C094C4c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C094C0E:
	#data 0x00Dc
loc_8C094C10:
	#data 0x012c
loc_8C094C12:
	#data 0x01A3
loc_8C094C14:
	#data 0x0130
loc_8C094C16:
	#data 0x01D2
loc_8C094C18:
	#data 0x013e
loc_8C094C1A:
	#data 0x0255
loc_8C094C1C:
	#data 0x01A1
loc_8C094C1E:
	#data 0x01Ac
	#align4

loc_8C094C20:
	#data bank12.loc_8c129560
loc_8C094C24:
	#data bank12.loc_8c1294C8
loc_8C094C28:
	#data 0x431CAAAa
loc_8C094C2C:
	#data 0xC31CAAAa
loc_8C094C30:
	#data 0x4381A492
loc_8C094C34:
	#data 0x8C2896B0
loc_8C094C38:
	#data bank15.loc_8c1559E8

;==============================================
loc_8C094C3C:
	mov.w @(loc_8C094D42,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	mov.l @(loc_8C094D48,pc),r0; r0 set to 0x8C1559E8
	extu.b r2,r2
	shll2 r2
	shll r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_8C094C4C:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x14,r5 ; r5 set to 0x14, r5 set to 0x14
	mov.w @(loc_8C094D42,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
	mov.b @(r0,r14),r3
	mov.l @(loc_8C094D4C,pc),r0; r0 set to 0x8C1559EC, r0 set to 0x8C1559Ec
	extu.b r3,r3
	shll2 r3
	shll r3
	fmov.s @(r0,r3),fr3
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	mov.l @(loc_8C094D50,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r14

loc_8C094C7E:
	mov.w @(loc_8C094D44,pc),r0; r0 set to 0x19F, r0 set to 0x19F, r0 set to 0x19f
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_8C094CB2
	mov.l @(loc_8C094D54,pc),r2 ; r2 set to 0x8C03340C, r2 set to 0x8C03340C, r2 set to 0x8C03340c
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8C094C9e
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C095228
	mov.l @r15+,r14

loc_8c094c9e:
	mov 0x24,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C094D46,pc),r0
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c094cba

loc_8C094CB2:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C094D22
	mov.l @r15+,r14

loc_8C094CBA:
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0x98,PC),r3
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

loc_8C094D02:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C094D58,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C094D1a
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C095228
	lds.l @r15+,pr

loc_8C094D1A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C094D22:
	mov.b @(0x04,r4),r0
	mov 0x06,r6 ; r6 set to 0x06
	mov.l @(loc_8C094D50,pc),r3 ; r3 set to 0x8C034E8c
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	jmp @r3
	mov 0x14,r5

loc_8C094D30:
	mov r4,r3
	mov.l @(loc_8C094D60,pc),r1 ; r1 set to 0x8C1559F8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C094D42:
	#data 0x01A3
loc_8C094D44:
	#data 0x019f
loc_8c094d46:
	#data 0x041c
	#align4

loc_8C094D48:
	#data bank15.loc_8c1559E8
loc_8C094D4C:
	#data bank15.loc_8c1559Ec
loc_8C094D50:
	#data bank03.loc_8c034e8c
loc_8C094D54:
	#data bank03.loc_8c03340c
loc_8C094D58:
	#data bank03.loc_8c034dee
loc_8C094D5C:
	#data bank04.loc_8c045748
loc_8C094D60:
	#data bank15.loc_8c1559F8

;==============================================
loc_8C094D64:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov.w @(loc_8C094EAE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C094EBC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C094EAE,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C094EB0,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C094EB2,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C094EC0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x42,r4 ; r4 set to 0x42
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C094EB4,pc),r0; r0 set to 0x130
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	add 0x6C,r0; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0x04,r0; r0 set to 0x1A1
	mov 0x45,r3 ; r3 set to 0x45
	mov.b r3,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C094EC4,pc),r3 ; r3 set to 0x8C2896B0
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x18,r14),r2
	mov 0x34,r0; r0 set to 0x34
	mov r0,r8 ; r8 set to 0x34
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C094EB4,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C094E26
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C094EC8,pc),r1 ; r1 set to 0x431CAAAa
	lds r1,fpul
	bra loc_8C094E2c
	fsts fpul,fr3

loc_8C094E26:
	mov.l @(loc_8C094ECC,pc),r2 ; r2 set to 0xC31CAAAa
	lds r2,fpul
	fsts fpul,fr3

loc_8C094E2C:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C094ED0,pc),r1 ; r1 set to 0x4381A492, r1 set to 0x4381A492
	mov 0x40,r5 ; r5 set to 0x40, r5 set to 0x40
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C094EB6,pc),r0; r0 set to 0x13E, r0 set to 0x13e
	mov.b r5,@(r0,r14)
	add 0x01,r0; r0 set to 0x13F, r0 set to 0x13f
	mov.b r5,@(r0,r14)
	add 0xF1,r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C094E5e
	mova @(loc_8C094ED4,pc),r0 ; r0 set to loc_8c094ED4, r0 set to loc_8c094ED4
	bra loc_8C094E62
	fmov.s @r0,fr2

loc_8C094E5E:
	mova @(loc_8C094ED8,pc),r0 ; r0init to loc_8c094ED8
	fmov.s @r0,fr2

loc_8C094E62:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C094EDC,pc),r0 ; r0 set to loc_8c094EDC, r0 set to loc_8c094EDc
	fmov.s @r0,fr3
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	mov.l @(loc_8C094EE0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x14,r5 ; r5 set to 0x14, r5 set to 0x14
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24, r0 set to 0x24
	mov.b r4,@(r0,r14)
	mov 0x07,r6 ; r6 set to 0x07, r6 set to 0x07
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r14

loc_8C094E8E:
	mov.w @(loc_8C094EB8,pc),r0; r0 set to 0x19F, r0 set to 0x19F, r0 set to 0x19f
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_8C094EFc
	mov.l @(loc_8C094EE4,pc),r2 ; r2 set to 0x8C03340C, r2 set to 0x8C03340C, r2 set to 0x8C03340c
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8C094EE8
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C095228
	mov.l @r15+,r14

;##############################################
loc_8C094EAE:
	#data 0x00Dc
loc_8C094EB0:
	#data 0x012c
loc_8C094EB2:
	#data 0x01A3
loc_8C094EB4:
	#data 0x0130
loc_8C094EB6:
	#data 0x013e
loc_8C094EB8:
	#data 0x019f
	#align4

loc_8C094EBC:
	#data bank12.loc_8c129560
loc_8C094EC0:
	#data bank12.loc_8c1294C8
loc_8C094EC4:
	#data 0x8C2896B0
loc_8C094EC8:
	#data 0x431CAAAa
loc_8C094ECC:
	#data 0xC31CAAAa
loc_8C094ED0:
	#data 0x4381A492
loc_8C094ED4:
	#data 0x41A00000
loc_8C094ED8:
	#data 0xC1A00000
loc_8C094EDC:
	#data 0x4191B6Db
loc_8C094EE0:
	#data bank03.loc_8c034e8c
loc_8C094EE4:
	#data bank03.loc_8c03340c

;==============================================
loc_8c094ee8:
	mov 0x24,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C095006,pc),r0
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c094f04

loc_8C094EFC:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C094D22
	mov.l @r15+,r14

loc_8C094F04:
	mov.l @(0x108,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0x104,PC),r3
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

loc_8C094F4C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C095010,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C094F64
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C095228
	lds.l @r15+,pr

loc_8C094F64:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C094F6C:
	mov r4,r3
	mov.l @(loc_8C095018,pc),r1 ; r1 set to 0x8C155A08
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C094F7E:
	mov.l r8,@-r15
	mov.w @(loc_8C095008,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C09501C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C095008,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C09500A,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09500C,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C095020,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x42,r5 ; r5 set to 0x42
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C09500E,pc),r0; r0 set to 0x130
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	add 0x6C,r0; r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r4)
	mov 0x21,r0; r0 set to 0x21
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8C095024
	bra loc_8C095026
	mov 0x50,r3

;##############################################
loc_8c095006:
	#data 0x041c
loc_8C095008:
	#data 0x00Dc
loc_8C09500A:
	#data 0x012c
loc_8C09500C:
	#data 0x01A3
loc_8C09500E:
	#data 0x0130
	#align4

loc_8C095010:
	#data bank03.loc_8c034dee
loc_8C095014:
	#data bank04.loc_8c045748
loc_8C095018:
	#data bank15.loc_8c155a08
loc_8C09501C:
	#data bank12.loc_8c129560
loc_8C095020:
	#data bank12.loc_8c1294C8

;----------------------------------------------
loc_8C095024:
	mov 0x4F,r3 ; r3 set to 0x4f

loc_8C095026:
	mov.w @(loc_8C095134,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C095140,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C095136,pc),r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r2
	tst r2,r2
	bt/s loc_8C09507a
	add r4,r8 ; r8 ??? bc r4 is ???, r8 ??? bc r4 is ???
	mov 0x21,r2 ; r2 set to 0x21, r2 set to 0x21
	mov.l @(loc_8C095144,pc),r1 ; r1 set to 0x8C155A1C, r1 set to 0x8C155A1c
	add r4,r2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???
	mov.b @r2,r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
	bra loc_8C09508e
	fmov.s @r1,fr3

loc_8C09507A:
	mov 0x21,r2 ; r2 set to 0x21
	mov.l @(loc_8C095144,pc),r1 ; r1 set to 0x8C155A1c
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.b @r2,r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r1 ; r1 ??? bc r2 is ???
	fmov.s @r1,fr3
	fneg fr3

loc_8C09508E:
	mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
	fmov.s @r8,fr2
	add r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	mov.l @(loc_8C095148,pc),r1 ; r1 set to 0x8C155A20, r1 set to 0x8C155A20
	fadd fr3,fr2
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	mov 0x20,r6 ; r6 set to 0x20, r6 set to 0x20
	fldi0 fr4
	fmov.s fr2,@r8
	mov.b @r3,r3
	fmov.s @(r0,r4),fr2
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r1 ; r1 ??? bc r3 is ???, r1 ??? bc r3 is ???
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C095138,pc),r0; r0 set to 0x13E, r0 set to 0x13e
	mov.b r6,@(r0,r4)
	add 0x01,r0; r0 set to 0x13F, r0 set to 0x13f
	mov.b r6,@(r0,r4)
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C095136,pc),r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C0950D8
	mova @(loc_8C09514C,pc),r0 ; r0 set to loc_8c09514C, r0 set to loc_8c09514c
	bra loc_8C0950Dc
	fmov.s @r0,fr3

loc_8C0950D8:
	mova @(loc_8C095150,pc),r0 ; r0init to loc_8c095150
	fmov.s @r0,fr3

loc_8C0950DC:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24, r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov 0x02,r0; r0 set to 0x02, r0 set to 0x02
	mov.w r0,@(0x1E,r4)
	mov 0x14,r5 ; r5 set to 0x14, r5 set to 0x14
	mov.w r0,@(0x1C,r4)
	mov 0x21,r0; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r4),r3
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	mov.l @(loc_8C095154,pc),r0; r0 set to 0x8C155A18, r0 set to 0x8C155A18
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x22,r0; r0 set to 0x22, r0 set to 0x22
	mov.l @(loc_8C095158,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r8

loc_8C095104:
	mov.w @(0x32,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09511a
	mov.w @(0x26,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c095122


loc_8C09511A:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c09521a
	mov.l @r15+,r14

loc_8C095122:
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c095160
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c095228
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C095134:
	#data 0x01A1
loc_8C095136:
	#data 0x0130
loc_8C095138:
	#data 0x013e
loc_8C09513a:
	#data 0x019f
loc_8C09513c:
	#data 0x019e
	#align4

loc_8C095140:
	#data 0x8C2896B0
loc_8C095144:
	#data bank15.loc_8c155a1c
loc_8C095148:
	#data bank15.loc_8c155a20
loc_8C09514C:
	#data 0x40D55555
loc_8C095150:
	#data 0xC0D55555
loc_8C095154:
	#data bank15.loc_8c155a18
loc_8C095158:
	#data bank03.loc_8c034e8c
loc_8C09515C:
	#data bank03.loc_8c03340c

;----------------------------------------------
loc_8C095160:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0951b2
	mov r14,r3
	mov 0x38,r0
	add r0,r3
	mov 0x22,r0
	mov.l r3,@-r15
	mov.b @(r0,r14),r0
	mov 0x1F,r4
	mov.l @(0xC4,PC),r3
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and r0,r4
	shll8 r4
	shll2 r4
	jsr @r3
	shll r4
	mov.l @r15+,r2
	mova @(0xB4,PC),r0
	fmov fr0,fr3
	fmov @r2,fr2
	fmov @r0,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0951b2
	mov.w @(0x1E,r14),r0
	mov 0x1F,r2
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	and r2,r3
	mov.b r3,@(r0,r14)

loc_8C0951B2:
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0x8C,PC),r3
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

loc_8C0951FA:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C095244,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C095212
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C095228
	lds.l @r15+,pr

loc_8C095212:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C09521A:
	mov.b @(0x4,r4),r0
	mov 0x01,r6
	mov.l @(0x2C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	jmp @r3
	mov 0x14,r5

;==============================================
loc_8C095228:
	mov 0x03,r0; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C09523A,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C095234:
	mov.l @(loc_8C095250,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09523A:
	#data 0x012c
	#align4

loc_8C09523C:
	#data bank11.loc_8c11E860
loc_8C095240:
	#data 0x41092492
loc_8C095244:
	#data bank03.loc_8c034dee
loc_8C095248:
	#data bank04.loc_8c045748
loc_8C09524C:
	#data bank03.loc_8c034e8c
loc_8C095250:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8C095254:
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
	bt.s loc_8c095292
	mov r0,r4
	mov.l @(0x150,PC),r3
	mov 0x20,r1
	mov.w @(0x13A,PC),r0
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	mov.w @(0x12E,PC),r0
	extu.w r2,r2
	mov.w @(0x12C,PC),r3
	mov.l r2,@(r0,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c095292:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0


;----------------------------------------------
loc_8C09529A:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(0x118,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0952d4
	mov r0,r4
	mov.l @(0x108,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0xEC,PC),r2
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8C0952D4:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
;unused
loc_8c0952dc:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0xD8,PC),r3
	mov 0x02,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09531a
	mov r0,r4
	mov.l @(0xC8,PC),r3
	mov 0x20,r1
	mov.w @(0xB2,PC),r0
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	mov.w @(0xA6,PC),r0
	extu.w r2,r2
	mov.w @(0xA4,PC),r3
	mov.l r2,@(r0,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c09531a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C095322:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0953C8,pc),r1 ; r1 set to 0x8C155ABc
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C095336:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0953B8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0953B8,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0953CC,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0953BA,pc),r0; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C0953BC,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0953BE,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0953D0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	mov r13,r5
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C0953D4,pc),r0; r0 set to 0x8C155ACc
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C095816
	mov.l @r15+,r14

;##############################################
loc_8c0953b2:
	#data 0x0158
loc_8c0953b4:
	#data 0x00Cc
loc_8c0953b6:
	#data 0x2200
loc_8C0953B8:
	#data 0x00Dc
loc_8C0953BA:
	#data 0x00C0
loc_8C0953BC:
	#data 0x012c
loc_8C0953BE:
	#data 0x01A3
	#align4

loc_8C0953C0:
	#data bank04.loc_8c044F12
loc_8C0953C4:
	#data loc_8c095322
loc_8C0953C8:
	#data bank15.loc_8c155aBc
loc_8C0953CC:
	#data bank12.loc_8c129560
loc_8C0953D0:
	#data bank12.loc_8c1294C8
loc_8C0953D4:
	#data bank15.loc_8c155aCc

;----------------------------------------------
loc_8C0953D8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0954BE,pc),r0; r0 set to 0x12c
	mov 0x01,r7 ; r7 set to 0x01
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r7,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	mov 0x02,r14 ; r14 set to 0x02
	mov 0x00,r6 ; r6 set to 0x00
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	mov.l @(loc_8C0954C8,pc),r5 ; r5 set to 0x8C155A7c
	fmov.s fr3,@(r0,r4)
	mov 0x31,r0; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0954C0,pc),r0; r0 set to 0x19c
	mov.b r14,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r6,@(r0,r4)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r4),r0; r0??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C09541e
	cmp/eq 0x01,r0
	bt loc_8C09543a
	cmp/eq 0x06,r0
	bt loc_8C095458
	cmp/eq 0x07,r0
	bt loc_8C09549c
	bra loc_8C095520
	nop

loc_8C09541E:
	mov.w @(loc_8C0954C2,pc),r0; r0 set to 0x1A3
	mov r6,r13
	mov.l @(loc_8C0954CC,pc),r3 ; r3 set to 0x8C155A3c
	mov.b @(r0,r4),r7
	add 0xFE,r0; r0 set to 0x1A1
	extu.b r7,r7
	mov r7,r5
	shll2 r5
	shll r7
	shll2 r5
	add 0x44,r7
	add r3,r5
	bra loc_8C095502
	mov.b r7,@(r0,r4)

loc_8C09543A:
	mov.w @(loc_8C0954C2,pc),r0; r0 set to 0x1A3
	mov r7,r13
	mov.l @(loc_8C0954D0,pc),r3 ; r3 set to 0x8C155A5c
	mov.b @(r0,r4),r5
	mov.w @(loc_8C0954C4,pc),r0; r0 set to 0x1A1
	extu.b r5,r5
	mov.l r5,@r15
	shll2 r5
	mov.l @r15,r2
	shll2 r5
	add r3,r5
	shll r2
	add 0x4E,r2
	bra loc_8C095502
	mov.b r2,@(r0,r4)

loc_8C095458:
	mov.w @(loc_8C0954C2,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r0; r0??? bc r4 is ???
	extu.b r0,r0
	shll2 r0
	shll2 r0
	add r0,r5
	mova @(loc_8C0954D4,pc),r0 ; r0 set to loc_8c0954D4
	fmov.s @r0,fr4
	mov.w @(loc_8C0954C6,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8C095478
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	bra loc_8C09547e
	fsub fr4,fr3

loc_8C095478:
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3

loc_8C09547E:
	mov.l @(loc_8C0954D8,pc),r1 ; r1 set to 0x42EBB6DB, r1 set to 0x42EBB6Db
	mov r14,r13
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	lds r1,fpul
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0954C2,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r3
	add 0xFE,r0; r0 set to 0x1A1, r0 set to 0x1A1
	add 0x6D,r3
	bra loc_8C095502
	mov.b r3,@(r0,r4)

loc_8C09549C:
	mov.w @(loc_8C0954C2,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r2
	mova @(loc_8C0954DC,pc),r0 ; r0 set to loc_8c0954Dc
	fmov.s @r0,fr4
	mov.w @(loc_8C0954C6,pc),r0; r0 set to 0x130
	extu.b r2,r2
	shll2 r2
	mov.w @(r0,r4),r3
	shll2 r2
	add r2,r5
	tst r3,r3
	bf/s loc_8C0954E0
	add 0x20,r5
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	bra loc_8C0954E6
	fsub fr4,fr3


;##############################################
loc_8C0954BE:
	#data 0x012c
loc_8C0954C0:
	#data 0x019c
loc_8C0954C2:
	#data 0x01A3
loc_8C0954C4:
	#data 0x01A1
loc_8C0954C6:
	#data 0x0130
	#align4

loc_8C0954C8:
	#data bank15.loc_8c155a7c
loc_8C0954CC:
	#data bank15.loc_8c155a3c
loc_8C0954D0:
	#data bank15.loc_8c155a5c
loc_8C0954D4:
	#data 0x43020000
loc_8C0954D8:
	#data 0x42EBB6Db
loc_8C0954DC:
	#data 0x42E60000

;----------------------------------------------
loc_8c0954e0:
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3

loc_8c0954e6:
	mov.l @(loc_8C0955FC,pc),r1
	mov 0x03,r13
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	lds r1,fpul 
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0955F2,pc),r0
	mov.b @(r0,r4),r3
	add 0xFE,r0
	add 0x6F,r3
	mov.b r3,@(r0,r4)

loc_8c095502:
	mov.w @(loc_8C0955F4,pc),r0
	mov.l @(loc_8C095600,pc),r3
	mov.w r6,@(r0,r4)
	add 0xF2,r0
	mov.b r6,@(r0,r4)
	add 0x26,r0
	mov.l r6,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c095520:
	fmov.s @r5+,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0
	fmov.s @r5+,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x60,r0
	fmov.s @r5+,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8c0955f6,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c095550
	mov 0x5C,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)

loc_8c095550:
	mov.w @(loc_8C0955F2,pc),r3
	extu.b r13,r0
	and r14,r0
	mov.l @(loc_8c095604,pc),r1
	add r4,r3
	mov.b @r3,r3
	extu.b r13,r13
	mov 0x17,r5
	extu.b r3,r3
	add r3,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r4)
	mov.l @(loc_8c095608,pc),r0
	mov.b @(r0,r13),r6
	add 0x04,r15
	mov.l @(loc_8c09560c,pc),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C095578:
	mov.w @(loc_8C0955F8,pc),r0; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	fldi0 fr4
	mov.b r3,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	mov.l @(loc_8C095610,pc),r1 ; r1 set to 0x43496DB6
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	lds r1,fpul
	fmov.s fr3,@(r0,r4)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C095614,pc),r0 ; r0 set to loc_8c095614
	fmov.s @r0,fr2
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C095618,pc),r0 ; r0 set to loc_8c095618
	fmov.s @r0,fr2
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C09561C,pc),r0 ; r0 set to loc_8c09561c
	fmov.s @r0,fr2
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0955F6,pc),r0; r0 set to 0x130
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8C0955Dc
	mov 0x5C,r0; r0 set to 0x5c
	mov.l @(loc_8C095620,pc),r1 ; r1 set to 0x42ECAAAa
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fneg fr2
	fmov.s fr2,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	bra loc_8C0955E4
	fsts fpul,fr2

loc_8C0955DC:
	mov.l @(loc_8C095624,pc),r1 ; r1 set to 0xC2ECAAAa
	mov 0x34,r0; r0 set to 0x34
	lds r1,fpul
	fsts fpul,fr2

loc_8C0955E4:
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	mov 0x06,r6 ; r6 set to 0x06, r6 set to 0x06
	mov.l @(loc_8C09560C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	jmp @r3
	mov 0x13,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0955f2:
	#data 0x01A3
loc_8c0955f4:
	#data 0x01Ac
loc_8C0955F6:
	#data 0x0130
loc_8C0955F8:
	#data 0x012c
	#align4

loc_8c0955fc:
	#data 0x42A72492
loc_8c095600:
	#data 0x8C2896B0
loc_8C095604:
	#data bank15.loc_8c155a34
loc_8C095608:
	#data bank15.loc_8c155aEc
loc_8C09560C:
	#data bank03.loc_8c034e8c
loc_8C095610:
	#data 0x43496DB6
loc_8C095614:
	#data 0x40200000
loc_8C095618:
	#data 0x40CDB6Db
loc_8C09561C:
	#data 0xBE892492
loc_8C095620:
	#data 0x42ECAAAa
loc_8C095624:
	#data 0xC2ECAAAa

;==============================================
loc_8C095628:
	mov.w @(loc_8C095700,pc),r0; r0 set to 0x19c
	mov 0x40,r3 ; r3 set to 0x40
	mov 0x00,r6 ; r6 set to 0x00
	mov.b r3,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r6,@(r0,r4)
	add 0x04,r0; r0 set to 0x1A1
	mov 0x43,r3 ; r3 set to 0x43
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r6,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r6,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4
	mov.l @(loc_8C095708,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r6,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_8C095702,pc),r0; r0 set to 0x12c
	mov.b r2,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x5C,r0; r0 set to 0x5c
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68
	mov.l @(loc_8C09570C,pc),r1 ; r1 set to 0x43496DB6
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6c
	lds r1,fpul
	fmov.s fr4,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C095710,pc),r0 ; r0 set to loc_8c095710
	fmov.s @r0,fr2
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C095714,pc),r0 ; r0 set to loc_8c095714
	fmov.s @r0,fr2
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C095704,pc),r0; r0 set to 0x130
	mov.w @(r0,r5),r2
	tst r2,r2
	bt loc_8C0956Ac
	mov.l @(loc_8C095718,pc),r1 ; r1 set to 0x42ECAAAa
	mov 0x34,r0; r0 set to 0x34
	lds r1,fpul
	bra loc_8C0956B4
	fsts fpul,fr2

loc_8C0956AC:
	mov.l @(loc_8C09571C,pc),r1 ; r1 set to 0xC2ECAAAa
	mov 0x34,r0; r0 set to 0x34
	lds r1,fpul
	fsts fpul,fr2

loc_8C0956B4:
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	mov 0x06,r6 ; r6 set to 0x06, r6 set to 0x06
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov.w @(loc_8C095706,pc),r0; r0 set to 0x20C, r0 set to 0x20c
	mov.l @(r0,r5),r3
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r3),fr2
	mova @(loc_8C095720,pc),r0 ; r0 set to loc_8c095720, r0 set to loc_8c095720
	mov.l @(loc_8C095724,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fsub fr3,fr2
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r4)
	jmp @r3
	mov 0x13,r5

loc_8C0956D8:
	mov.w @(loc_8C095702,pc),r0; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x0A,r6 ; r6 set to 0x0a
	mov.b r3,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x0A,r0; r0 set to 0x0a
	mov.w r0,@(0x1E,r4)
	mov 0x02,r0; r0 set to 0x02
	mov.w r0,@(0x1C,r4)
	mov 0x31,r0; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C095724,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov 0x17,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C095700:
	#data 0x019c
loc_8C095702:
	#data 0x012c
loc_8C095704:
	#data 0x0130
loc_8C095706:
	#data 0x020c
	#align4

loc_8C095708:
	#data 0x8C2896B0
loc_8C09570C:
	#data 0x43496DB6
loc_8C095710:
	#data 0x414DB6Db
loc_8C095714:
	#data 0xBF092492
loc_8C095718:
	#data 0x42ECAAAa
loc_8C09571C:
	#data 0xC2ECAAAa
loc_8C095720:
	#data 0x42800000
loc_8C095724:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C095728:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0xFF,r3
	mov r4,r14
	mov 0x31,r0
	fldi0 fr4
	mov 0x01,r2
	mov.l r5,@r15
	mov.b r3,@(r0,r14)
	mov.w @(0x102,PC),r0
	mov.l @(0x118,PC),r3
	mov.b r2,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr15
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	jsr @r3
	fmov fr3,@(r0,r14)
	mov 0x3F,r4
	and r0,r4
	mov.w @(0xD4,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c095784
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	neg r4,r4
	fneg fr3
	fmov fr3,@(r0,r14)
	mova @(0xDC,PC),r0
	fmov @r0,fr15

loc_8C095784:
	mov.l @r15,r3
	mov 0x34,r0
	lds r4,fpul
	fmov @(r0,r3),fr2
	mova @(0xD4,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	mov.l @(0xC4,PC),r3
	fsub fr15,fr2
	fmac fr0,fr3,fr2
	jsr @r3
	fmov fr2,@(r0,r14)
	mov.w @(0xA6,PC),r2
	mov 0x3F,r4
	and r0,r4
	mov.l @r15,r3
	sub r4,r2
	lds r2,fpul
	mov 0x38,r0
	fmov @(r0,r3),fr2
	mova @(0xB8,PC),r0
	fmov @r0,fr0
	mov 0x38,r0
	float fpul,fr3
	mov 0x02,r3
	mov 0x00,r4
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x88,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0957d8
	mov.w @(0x78,PC),r0
	mov 0x67,r2
	bra loc_8c0957de
	mov.b r2,@(r0,r14)

loc_8C0957D8:
	mov.w @(0x70,PC),r0
	mov 0x51,r3
	mov.b r3,@(r0,r14)

loc_8C0957DE:
	mov.w @(0x6C,PC),r0
	mov 0x1E,r5
	mov.l @(0x88,PC),r3
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0x78,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov 0x17,r5
	mov 0x0B,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x64,PC),r2
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

loc_8C095816:
	mov 0x20,r0; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C095878,pc),r0; r0 set to 0x8C155AF0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C09582A:
	mov 0x24,r0; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C09587C,pc),r1 ; r1 set to 0x8C155B10
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0; r0 set to 0x24
	shll2 r0; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c095844:
	#data 0x012c
loc_8c095846:
	#data 0x0130
loc_8c095848:
	#data 0x0084
loc_8c09584a:
	#data 0x019c
loc_8c09584c:
	#data 0x01a1
loc_8c09584e:
	#data 0x01ac
	#align4

loc_8c095850:
	#data 0x43195555
loc_8c095854:
	#data 0xC1555555
loc_8c095858:
	#data 0x41555555
loc_8C09585C:
	#data bank03.loc_8c03319e
loc_8c095860:
	#data 0xC3195555
loc_8c095864:
	#data 0x3FD55555
loc_8c095868:
	#data 0x40092492
loc_8c09586c:
	#data 0x8C2896B0
loc_8C095870:
	#data bank04.loc_8c042008
loc_8C095874:
	#data bank03.loc_8c034e8c
loc_8C095878:
	#data bank15.loc_8c155aF0
loc_8C09587C:
	#data bank15.loc_8c155b10

;==============================================
loc_8C095880:
	mov 0x34,r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x12C,PC),r3
	sts.l pr,@-r15
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x10C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0958d8
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0958d8
	mova @(0x104,PC),r0
	fmov @r0,fr4
	mov.w @(0xF0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0958c2
	mova @(0xFC,PC),r0
	fmov @r0,fr4

loc_8C0958C2:
	mov.l @(0xFC,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r14)

loc_8C0958D8:
	lds.l @r15+,pr
	mov.l @(0xE8,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0958E2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0xC4,PC),r3
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
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c095940
	mov 0x38,r0
	mov.l @r15,r3
	fmov @(r0,r14),fr3
	mov.w @(0x70,PC),r0
	fmov @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bt loc_8c09595c

loc_8C095940:
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09595c
	mov.w @(0x64,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09595c
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c09599c

loc_8C09595C:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov @(r0,r14),fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c095994
	mov 0x17,r5
	bra loc_8c095996
	mov 0x07,r6

loc_8C095994:
	mov 0x09,r6

loc_8C095996:
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r14,r4

loc_8C09599C:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x20,PC),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0959a8:
	#data 0x0141
loc_8c0959aa:
	#data 0x0130
loc_8c0959ac:
	#data 0x041c
loc_8c0959ae:
	#data 0x019e
loc_8c0959b0:
	#data 0x019f
	#align4

loc_8C0959B4:
	#data bank03.loc_8c034dee
loc_8C0959B8:
	#data 0x43055555
loc_8C0959Bc:
	#data 0xC3055555
loc_8C0959C0:
	#data 0x4384DB6d
loc_8C0959C4:
	#data bank04.loc_8c045748
loc_8C0959C8:
	#data 0x40800000
loc_8C0959CC:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0959D0:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	mov.l @(loc_8C095AE4,pc),r3 ; r3 set to 0x8C034DEe
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0; r0??
	cmp/pz r0
	bt loc_8C095A24
	lds.l @r15+,pr
	mov.l @(loc_8C095AE8,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C095A24:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C095A2A:
	mov.w @(loc_8C095ADE,pc),r0; r0 set to 0x158
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(r0,r5),r3
	mov.w @(loc_8C095AE0,pc),r0; r0 set to 0xCc
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8C095A44
	mov.l @(loc_8C095AE8,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C095A44:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C095AEC,pc),r1 ; r1 set to 0x8C155B1c
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C095A54:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x88,PC),r3
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
	mova @(0x50,PC),r0
	fmov @r0,fr4
	mov.w @(0x3E,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr3
	fcmp/gt fr2,fr3
	bf loc_8c095ad6
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x28,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fldi1 fr3
	fadd fr3,fr3
	fmov @(r0,r14),fr2
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x24,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)

loc_8C095AD6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C095ADE:
	#data 0x0158
loc_8C095AE0:
	#data 0x00Cc
loc_8C095AE2:
	#data 0x041c
	#align4

loc_8C095AE4:
	#data bank03.loc_8c034dee
loc_8C095AE8:
	#data bank04.loc_8c0450C0
loc_8C095AEC:
	#data bank15.loc_8c155b1c
loc_8C095Af0:
	#data 0x43362492
loc_8C095Af4:
	#data 0x40092492

;==============================================
loc_8C095AF8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C095C3C,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C095C34,pc),r0; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bf loc_8C095B6e
	mov.b @(0x05,r14),r0
	mov 0x13,r5 ; r5 set to 0x13
	mov r14,r4
	mov 0x07,r6 ; r6 set to 0x07
	add 0x01,r0; r0 set to 0x41d
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C095C34,pc),r0; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C095C40,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8C095B6E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C095B76:
	mov.l @(loc_8C095C3C,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;==============================================
loc_8C095B7C:
	mov.w @(loc_8C095C36,pc),r0; r0 set to 0x158
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	mov.w @(loc_8C095C38,pc),r0; r0 set to 0xCc
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8C095B9a
	lds.l @r15+,pr
	mov.l @(loc_8C095C44,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C095B9A:
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C095C48,pc),r1 ; r1 set to 0x8C155B28
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C095C4C,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C095BB2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x80,PC),r3
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
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0x32,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bf loc_8c095c2c
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x22,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fldi1 fr3
	fadd fr3,fr3
	fmov @(r0,r14),fr2
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x28,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)

loc_8C095C2C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C095C34:
	#data 0x041c
loc_8C095C36:
	#data 0x0158
loc_8C095C38:
	#data 0x00Cc
	#align4

loc_8C095C3C:
	#data bank03.loc_8c034dee
loc_8C095C40:
	#data bank03.loc_8c034e8c
loc_8C095C44:
	#data bank04.loc_8c0450C0
loc_8C095C48:
	#data bank15.loc_8c155b28
loc_8C095C4C:
	#data bank04.loc_8c045748
loc_8C095C50:
	#data 0x40092492

;==============================================
loc_8C095C54:
	mov.l r14,@-r15
	mov 0x34,r0; r0 set to 0x34
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov.l r12,@-r15
	sts.l pr,@-r15
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C095D2C,pc),r0; r0 set to 0x158
	mov.w @(r0,r13),r2
	mov.w @(loc_8C095D2E,pc),r0; r0 set to 0xCc
	extu.w r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8C095CE4
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C095C8e
	mov.b @(0x05,r14),r0
	add 0x01,r0; r0 set to 0xCd
	bra loc_8C095D22
	mov.b r0,@(0x05,r14)

loc_8C095C8E:
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf/s loc_8C095CC6
	mov 0x01,r12 ; r12 set to 0x01
	mov.l @(loc_8C095D34,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C095D38,pc),r2 ; r2 set to 0x8C2895F6
	mov.b @(0x02,r13),r0
	mov.b @r2,r3
	extu.b r0,r0
	shad r0, r12 ; r12 ??? bc r0is ???
	extu.b r3,r3
	tst r12,r3
	bf loc_8C095D22
	mov.b @(0x05,r14),r0
	mov 0x1B,r6 ; r6 set to 0x1b
	mov.l @(loc_8C095D3C,pc),r3 ; r3 set to 0x8C034E8c
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c095cc6:
	mov.l @(loc_8c095d34,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c095cf2
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c095cf2
	mov.b @(0x06,r13),r0
	add 0x01,r0
	mov.b r0,@(0x06,r13)

loc_8C095CE4:
	lds.l @r15+,pr
	mov.l @(loc_8C095D40,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c095cf2:
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r14),r2
	tst r12,r2
	bt loc_8c095d0e
	mov.b @(r0,r14),r2
	mov r0,r3
	add 0xBD,r3
	and r3,r2
	mov.b r2,@(r0,r14)
	mov 0x05,r5
	mov.w @(0x1E,r14),r0
	mov r0,r6
	bsr loc_8c09529a
	mov r13,r4

loc_8C095D0E:
	mov.w @(0x1E,PC),r0
	mov.b @(r0,r14),r0
	tst 0x02,r0
	bt loc_8c095d1e
	mov.w @(0x18,PC),r0
	mov 0x00,r2
	bra loc_8c095d22
	mov.b r2,@(r0,r14)

loc_8C095D1E:
	mov.w @(0x10,PC),r0
	mov.b r12,@(r0,r14)

loc_8C095D22:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C095D2C:
	#data 0x0158
loc_8C095D2E:
	#data 0x00Cc
loc_8C095D30:
	#data 0x0141
loc_8C095D32:
	#data 0x012C
	#align4

loc_8C095D34:
	#data bank03.loc_8c034dee
loc_8C095D38:
	#data 0x8C2895F6
loc_8C095D3C:
	#data bank03.loc_8c034e8c
loc_8C095D40:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C095D44:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r3
	mov 0x24,r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c095dc8
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0xA0,PC),r3
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
	bt loc_8c095dd4
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c095dbc
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0x58,PC),r3
	mov 0x0C,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C095DBC:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C095DC8:
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c095de0

loc_8C095DD4:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c095f3c
	mov.l @r15+,r14

loc_8C095DE0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C095DE8:
	mov 0x24,r0; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C095E14,pc),r1 ; r1 set to 0x8C155B34
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0; r0 set to 0x24
	shll2 r0; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C095E02:
	#data 0x019e
	#align4

loc_8C095E04:
	#data bank03.loc_8c034dee
loc_8C095E08:
	#data bank03.loc_8c03340c
loc_8C095E0C:
	#data bank03.loc_8c034e8c
loc_8C095E10:
	#data bank04.loc_8c045748
loc_8C095E14:
	#data bank15.loc_8c155b34

;==============================================
loc_8C095E18:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x130,PC),r3
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
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c095e78
	mov 0x38,r0
	mov.l @r15,r2
	fmov @(r0,r14),fr3
	mov.w @(0xDC,PC),r0
	fmov @(r0,r2),fr2
	fcmp/gt fr3,fr2
	bt loc_8c095e94

loc_8C095E78:
	mov.w @(0xD6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c095e94
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c095e94
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c095ed6

loc_8C095E94:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0xC0,PC),r0
	fmov @r0,fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov @(r0,r14),fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf.s loc_8c095ece
	mov 0x17,r5
	bra loc_8c095ed0
	mov 0x1D,r6

loc_8C095ECE:
	mov 0x1F,r6

loc_8C095ED0:
	mov.l @(0x8C,PC),r2
	jsr @r2
	mov r14,r4

loc_8C095ED6:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x84,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C095EE2:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	mov.l @(loc_8C095F58,pc),r3 ; r3 set to 0x8C034DEe
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0; r0??
	cmp/pz r0
	bt loc_8C095F36
	lds.l @r15+,pr
	mov.l @(loc_8C095F68,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C095F36:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C095F3C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C095F56,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C095F4A:
	mov.l @(loc_8C095F68,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c095f50:
	#data 0x041c
loc_8c095f52:
	#data 0x019e
loc_8c095f54:
	#data 0x019f
loc_8C095F56:
	#data 0x012c
	#align4

loc_8C095F58:
	#data bank03.loc_8c034dee
loc_8C095F5c:
	#data 0x40800000
loc_8C095F60:
	#data bank03.loc_8c034e8c
loc_8C095F64:
	#data bank04.loc_8c045748
loc_8C095F68:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c095f6c:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x138,PC),r3
	mov 0x00,r6
	mov 0x01,r5
	mov r4,r14
	fmov fr4,fr15
	fmov fr5,@r15
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c095fbc
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x20,r0
	mov 0x00,r5
	mov.l r3,@(0x10,r4)
	mov.w @(0x10A,PC),r3
	mov.b r5,@(r0,r4)
	mov 0x26,r0
	mov.l r14,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0x102,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c095fa6
	fneg fr15

loc_8c095fa6:
	mov.w @(0xFA,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(0xF8,PC),r0
	mov.w r3,@(r0,r4)
	add 0xFE,r0
	mov.b r5,@(r0,r4)
	add 0xF8,r0
	fmov fr15,@(r0,r4)
	mov.w @(0xEE,PC),r0
	fmov @r15,fr3
	fmov fr3,@(r0,r4)

loc_8c095fbc:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c095fca:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r12
	mov.l @(loc_8c0960b0,pc),r8
	mov.w @(loc_8C0960A0,pc),r9
	mov 0x00,r4
	mov 0x0C,r11
	mov r4,r14
	mov 0x01,r10
	mov r4,r13
	mov.l r5,@r15

loc_8c095fee:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r8
	mov r12,r4
	tst r0,r0
	bt/s loc_8c09601a
	mov r0,r4
	mov 0x20,r0
	mov.l @(loc_8c0960b4,pc),r2
	mov.l r2,@(0x10,r4)
	mov.b r10,@(r0,r4)
	mov 0x26,r0
	mov.l r12,@(0x18,r4)
	mov.w r9,@(r0,r4)
	add 0x68,r0
	mov.b r13,@(r0,r4)
	mov 0x10,r0
	mov.l @r15,r3
	add 0x01,r13
	mov.b @(r0,r3),r2
	mov.w @(loc_8C0960AA,pc),r0
	mov.b r2,@(r0,r4)

loc_8c09601a:
	add 0x01,r14
	exts.b r14,r3
	cmp/ge r11,r3
	bf loc_8c095fee
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
loc_8c096036:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.b @(0x6,r5),r0
	extu.b r0,r0
	shll2 r0
	shll2 r0
	shll r0
	lds r0,fpul
	mova @(0x64,PC),r0
	fmov @r0,fr2
	mov.w @(0x52,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bf.s loc_8c096066
	fmul fr2,fr4
	fneg fr4

loc_8c096066:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8C096070:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x20,r0; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0960AE,pc),r13 ; r13 set to 0x88
	tst r3,r3
	bf/s loc_8C0960C0
	add r14,r13 ; r13 ??? bc r14 is ???
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0960BC,pc),r1 ; r1 set to 0x8C155B3c
	mov r13,r6
	extu.b r0,r0; r0 set to 0x20
	mov.l @(0x18,r14),r5
	shll2 r0; r0 set to 0x80
	mov.l @(r0,r1),r3
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0960a0:
	#data 0x2201
loc_8c0960a2:
	#data 0x01d2
loc_8c0960a4:
	#data 0x0158
loc_8c0960a6:
	#data 0x009a
loc_8c0960a8:
	#data 0x0094
loc_8c0960aa:
	#data 0x0098
loc_8C0960Ac:
	#data 0x0130
loc_8C0960AE:
	#data 0x0088
	#align4

loc_8C0960B0:
	#data bank04.loc_8c044F12
loc_8C0960B4:
	#data loc_8c096070
loc_8C0960B8:
	#data 0x3FD55555
loc_8C0960BC:
	#data bank15.loc_8c155b3c

;==============================================
loc_8C0960C0:
	mov.w @(loc_8C0961B0,pc),r3 ; r3 set to 0x88
	mov r13,r5
	mov.l @(0x18,r14),r2
	add r2,r3 ; r3 ??? bc r2 is ???
	mov.l r3,@r15
	bsr loc_8C096036
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov 0x24,r0; r0 set to 0x24
	mov.l @(loc_8C0961B4,pc),r1 ; r1 set to 0x8C155B4c
	mov r14,r4
	mov.b @(r0,r3),r2
	mov r13,r5
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	mov.l @r15,r6
	extu.b r0,r0; r0 set to 0x24
	shll2 r0; r0 set to 0x90
	mov.l @(r0,r1),r3
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0960F0:
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	mov 0x08,r1 ; r1 set to 0x08
	add r6,r1 ; r1 ??? bc r6 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x0C,r1 ; r1 set to 0x0c
	add r6,r1 ; r1 ??? bc r6 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C09611A:
	mov.b @(0x2,r5),r0
	mov 0x0C,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c09613a
	mov.b @(0x3,r5),r0
	add 0xFF,r0
	mov.b r0,@(0x3,r5)
	extu.b r0,r0
	cmp/pl r0
	bt loc_8c09613a
	mov 0x02,r0
	mov.b r0,@(0x3,r5)
	mov.b @(0x2,r5),r0
	add 0x01,r0
	mov.b r0,@(0x2,r5)

loc_8C09613A:
	rts
	nop

;----------------------------------------------
loc_8C09613E:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c096160
	mov 0x02,r0
	mov.w r0,@(0x1C,r4)
	mov.b @r5,r3
	add 0x01,r3
	mov.b r3,@r5
	mov 0x08,r3
	mov.b @r5,r2
	cmp/ge r3,r2
	bf loc_8c096160
	mov 0x05,r1
	mov.b r1,@r5

loc_8C096160:
	rts
	nop

;----------------------------------------------
loc_8C096164:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c09617a
	mov 0x02,r0
	mov.w r0,@(0x1C,r4)
	mov.b @r5,r3
	add 0xFF,r3
	mov.b r3,@r5

loc_8C09617A:
	rts
	nop

;----------------------------------------------
loc_8c09617e:
	mov.l r14,@-r15
	mov.b @r6,r3
	mov.b @r5,r2
	cmp/eq r3,r2
	bt loc_8c0961ac
	mov.b @r6,r3
	mov.b r3,@r5
	mov.b @r5,r6
	mov.b @(0x06,r5),r0
	mov r6,r3
	shll r6
	tst r0,r0
	add r3,r6
	bt/s loc_8c0961a0
	mov 0x00,r14
	mov.b @(0x01,r5),r0
	mov r0,r14

loc_8c0961a0:
	mov.l @(loc_8c0961b8,pc),r3
	add r6,r14
	mov 0x19,r5
	mov r14,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c0961ac:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0961b0:
	#data 0x0088
	#align4

loc_8c0961b4:
	#data bank15.loc_8C155B4C
loc_8c0961b8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0961BC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r6,r13
	mov.l r12,@-r15
	mov.w @(loc_8C0962D8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0962D8,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0962E8,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0962DA,pc),r0; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0962DC,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0962DE,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0962EC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	mov r13,r6
	mov.b @(r0,r5),r2
	mov 0x00,r12 ; r12 set to 0x00
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0962DC,pc),r0; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	bsr loc_8C0960F0
	mov r14,r4
	mov 0x31,r0; r0 set to 0x31
	mov 0xF0,r2 ; r2 set to 0xFFFFFFF0
	mov.b r2,@(r0,r14)
	mov r12,r0; r0 set to 0x00
	nop
	mov 0x02,r4 ; r4 set to 0x02
	mov.b r0,@(0x07,r13)
	mov.b r0,@r13
	mov r4,r0; r0 set to 0x02
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x42,r5 ; r5 set to 0x42
	mov.w @(loc_8C0962E0,pc),r0; r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r14)
	mov r12,r0; r0 set to 0x00
	nop
	mov.b r0,@(0x02,r13)
	mov r4,r0; r0 set to 0x02
	nop
	mov.b r0,@(0x03,r13)
	mov r13,r5 ; r5 ??? bc r13 is ???
	lds.l @r15+,pr
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13
	bra loc_8C095FCa
	mov.l @r15+,r14

loc_8C096262:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x24,r0; r0 set to 0x24
	mov r5,r13
	mov.l r6,@r15
	mov r4,r14
	mov.b @(r0,r13),r3
	mov r13,r5
	mov.b r3,@(r0,r14)
	mov.l @r15,r6
	bsr loc_8C0960F0
	mov r14,r4
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0962F0,pc),r1 ; r1 set to 0x8C155B5c
	mov r13,r5
	extu.b r0,r0; r0 set to 0x24
	mov.l @r15,r6
	shll2 r0; r0 set to 0x90
	mov.l @(r0,r1),r3
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C096298:
	mov.w @(loc_8C0962E2,pc),r0; r0 set to 0x159
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r6,r13
	sts.l pr,@-r15
	mov.b @(r0,r5),r0; r0??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt/s loc_8C0962Ba
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0962DC,pc),r0; r0 set to 0x12c
	bra loc_8C096334
	mov.b r4,@(r0,r14)

loc_8C0962BA:
	mov.w @(loc_8C0962E4,pc),r0; r0 set to 0x158
	mov 0x04,r7 ; r7 set to 0x04
	mov.b @(r0,r5),r0; r0??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bt/s loc_8C0962F4
	mov 0x02,r6 ; r6 set to 0x02
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b r7,@r13
	mov r6,r0; r0 set to 0x02
	nop
	bra loc_8C096334
	mov.w r0,@(0x1C,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0962D8:
	#data 0x00Dc
loc_8C0962DA:
	#data 0x00C0
loc_8C0962DC:
	#data 0x012c
loc_8C0962DE:
	#data 0x01A3
loc_8C0962E0:
	#data 0x019c
loc_8C0962E2:
	#data 0x0159
loc_8C0962E4:
	#data 0x0158
	#align4

loc_8C0962E8:
	#data bank12.loc_8c129560
loc_8C0962EC:
	#data bank12.loc_8c1294C8
loc_8C0962F0:
	#data bank15.loc_8c155b5c

;==============================================
loc_8c0962f4:
	mov.l @(loc_8C096454,pc),r0
	mov.l @(loc_8C096450,pc),r2
	mov.b @r0,r1
	mov.w @r2,r3
	mov 0x01,r2
	extu.b r1,r1
	shad r1, r2
	extu.w r3,r3
	tst r2,r3
	bf loc_8c096334
	mov r4,r0
	nop
	mov.b r0,@(0x07,r13)
	mov.w @(0x1C,r5),r0
	cmp/pl r0
	bt/s loc_8c096324
	mov r13,r5
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b r7,@r13
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c096324:
	bsr loc_8c09611a
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c09613e
	mov.l @r15+,r14

loc_8C096334:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09633C:
	mov.w @(loc_8C096446,pc),r0; r0 set to 0x159
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r6,r13
	sts.l pr,@-r15
	mov.b @(r0,r5),r0; r0??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt/s loc_8C09635e
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C096448,pc),r0; r0 set to 0x12c
	bra loc_8C096376
	mov.b r4,@(r0,r14)

loc_8c09635e:
	mov r4,r0
	nop
	mov r13,r5
	mov.b r0,@(0x07,r13)
	bsr loc_8c096164
	mov r14,r4
	mov.b @r13,r2
	cmp/pz r2
	bt loc_8c096376
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8C096376:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C09637E:
	mov.w @(loc_8C096448,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C096458,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C09638A:
	mov.l @(loc_8C096458,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C096390:
	mov.w @(loc_8C09644A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C09645C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09644A,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C096448,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09644C,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C096460,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r7 ; r7 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov 0x42,r3 ; r3 set to 0x42
	mov.w @(loc_8C096448,pc),r0; r0 set to 0x12c
	mov r3,r2 ; r2 set to 0x42
	mov.b r7,@(r0,r4)
	add 0x70,r0; r0 set to 0x19c
	mov.b r3,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r2,@(r0,r4)
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov 0x31,r0; r0 set to 0x31
	mov 0xF0,r3 ; r3 set to 0xFFFFFFF0
	mov.b r3,@(r0,r4)
	mov.b r2,@r5
	mov r7,r0; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r5)
	mov 0x01,r0; r0 set to 0x01
	mov.b r0,@(0x01,r5)
	mov 0x55,r3 ; r3 set to 0x55
	mov.w @(loc_8C09644E,pc),r0; r0 set to 0x1A1
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r7,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r7,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4
	mov.l @(loc_8C096464,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r7,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bra loc_8C09617e
	lds.l @r15+,pr

;##############################################
loc_8C096446:
	#data 0x0159
loc_8C096448:
	#data 0x012c
loc_8C09644A:
	#data 0x00Dc
loc_8C09644C:
	#data 0x01A3
loc_8C09644E:
	#data 0x01A1
	#align4

loc_8c096450:
	#data 0x8C28962c
loc_8c096454:
	#data 0x8C28962b
loc_8C096458:
	#data bank04.loc_8c0450C0
loc_8C09645C:
	#data bank12.loc_8c129560
loc_8C096460:
	#data bank12.loc_8c1294C8
loc_8C096464:
	#data 0x8C2896B0

;---------------------------------------------
loc_8C096468:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r7 ; r7 set to 0x02
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov r6,r13
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	cmp/ge r7,r0
	bf/s loc_8C096496
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C096574,pc),r3 ; r3 set to 0x8C0450C0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C096568,pc),r0; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C096496:
	mov.l @(loc_8C09657C,pc),r0; r0 set to 0x8C28962b
	mov 0x01,r6 ; r6 set to 0x01
	mov.l @(loc_8C096578,pc),r3 ; r3 set to 0x8C28962c
	mov.b @r0,r1
	mov.w @r3,r2
	mov r6,r3 ; r3 set to 0x01
	extu.b r1,r1
	shad r1, r3 ; r3 ??? bc r1 is ???
	extu.w r2,r2
	tst r3,r2
	bf loc_8C09654e
	mov r6,r0; r0 set to 0x01
	nop
	mov.b r0,@(0x01,r5)
	mov.w @(loc_8C096568,pc),r0; r0 set to 0x12c
	mov.b r6,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov r0,r3 ; r3 set to 0x12c
	mov.b @(0x06,r5),r0
	cmp/hs r0,r3
	bt loc_8C0964C6
	mov.w @(loc_8C096568,pc),r0; r0 set to 0x12c
	bra loc_8C09654e
	mov.b r4,@(r0,r14)

loc_8c0964c6:
	cmp/eq r0,r3
	bf loc_8c0964d8
	mov r7,r0
	nop
	mov.b r0,@(0x01,r5)
	mov 0xFF,r3
	mov.w @(loc_8c096568,pc),r0
	mov.b r3,@r5
	mov.b r6,@(r0,r14)

loc_8c0964d8:
	mov.w @(loc_8C09656A,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c096536
	mov r6,r0
	nop
	mov.b r0,@(0x01,r5)
	mov 0xFF,r3
	mov.w @(loc_8C09656C,pc),r0
	mov.b r3,@r5
	mov.b r0,@(0x07,r13)
	mov.w @(loc_8C09656E,pc),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	tst r3,r3
	bf loc_8c096536
	mov.b @(0x05,r5),r0
	mov 0x03,r3
	add 0x01,r0
	mov.b r0,@(0x05,r5)
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8c096514
	mov 0x56,r6
	mov r4,r0
	nop
	mov 0x55,r6
	mov.b r0,@(0x05,r5)

loc_8c096514:
	mov.w @(loc_8C096570,pc),r0
	mov.l @(loc_8C096580,pc),r3
	mov.b r6,@(r0,r14)
	add 0x0B,r0
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

loc_8c096536:
	mov r13,r6
	bsr loc_8c09617e
	mov r14,r4
	mov.b @(0x07,r13),r0
	tst r0,r0
	bf loc_8c09654e
	lds.l @r15+,pr 
	mov.l @(loc_8c096584,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C09654E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C096556:
	mov.w @(loc_8C096568,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C096574,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C096562:
	mov.l @(loc_8C096574,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C096568:
	#data 0x012c
loc_8c09656a:
	#data 0x019e
loc_8c09656c:
	#data 0x00Ff
loc_8c09656e:
	#data 0x01A0
loc_8c096570:
	#data 0x01A1
	#align4

loc_8C096574:
	#data bank04.loc_8c0450C0
loc_8C096578:
	#data 0x8C28962c
loc_8C09657C:
	#data 0x8C28962b
loc_8c096580:
	#data 0x8C2896B0
loc_8C096584:
	#data bank04.loc_8c045748

;==============================================
;unused
loc_8c096588:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
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
	bt.s loc_8c0965dc
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x128,PC),r2
	mov.l r3,@(0x10,r4)
	mov.w @(0x126,PC),r5
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
	mov.w @(0x110,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0965dc:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0965E6:
	mov r4,r3
	mov.l @(loc_8C0966F0,pc),r1 ; r1 set to 0x8C155B84
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0965F8:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8C0965FE:
	mov 0x20,r0; r0 set to 0x20, r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0966F4,pc),r0; r0 set to 0x8C155B94, r0 set to 0x8C155B94
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C096612:
	mov r4,r3
	mov.l @(loc_8C0966F8,pc),r1 ; r1 set to 0x8C155BA0
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C096624:
	mov.w @(loc_8C0966E0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0966FC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0966E0,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C0966E2,pc),r0; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0966E4,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C096700,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0966E2,pc),r0; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r5,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C096704,pc),r0 ; r0 set to loc_8c096704
	fmov.s @r0,fr3
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0966E6,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C096710
	mov.l @(loc_8C096708,pc),r1 ; r1 set to 0xC3235555
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	lds r1,fpul
	fsts fpul,fr2
	fsub fr2,fr1
	fmov.s fr1,@(r0,r4)
	mova @(loc_8C09670C,pc),r0 ; r0 set to loc_8c09670c
	bra loc_8C096722
	fmov.s @r0,fr1

;##############################################
loc_8C0966da:
	#data 0x2300
loc_8C0966dc:
	#data 0x00Cc
loc_8C0966de:
	#data 0x0158
loc_8C0966E0:
	#data 0x00Dc
loc_8C0966E2:
	#data 0x012c
loc_8C0966E4:
	#data 0x01A3
loc_8C0966E6:
	#data 0x0130
	#align4

loc_8C0966E8:
	#data bank04.loc_8c044F12
loc_8C0966EC:
	#data loc_8c0965E6
loc_8C0966F0:
	#data bank15.loc_8c155b84
loc_8C0966F4:
	#data bank15.loc_8c155b94
loc_8C0966F8:
	#data bank15.loc_8c155bA0
loc_8C0966FC:
	#data bank12.loc_8c129560
loc_8C096700:
	#data bank12.loc_8c1294C8
loc_8C096704:
	#data 0x430B4924
loc_8C096708:
	#data 0xC3235555
loc_8C09670C:
	#data 0x3F555555

;==============================================
loc_8C096710:
	mov.l @(loc_8C09685C,pc),r1 ; r1 set to 0x43235555
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	lds r1,fpul
	fsts fpul,fr2
	fsub fr2,fr1
	fmov.s fr1,@(r0,r4)
	mova @(loc_8C096860,pc),r0 ; r0 set to loc_8c096860
	fmov.s @r0,fr1

loc_8C096722:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr1,@(r0,r4)
	mov.w @(loc_8C09684A,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C096736
	mov 0x04,r0; r0 set to 0x04, r0 set to 0x04
	mov.w r0,@(0x1C,r4)
	bra loc_8C09673c
	mov 0x30,r3

loc_8C096736:
	mov 0x10,r0; r0 set to 0x10
	mov 0x31,r3 ; r3 set to 0x31
	mov.w r0,@(0x1C,r4)

loc_8C09673C:
	mov.w @(loc_8C09684C,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C096864,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov 0x42,r5 ; r5 set to 0x42, r5 set to 0x42
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	mov.l @(loc_8C096868,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C09684E,pc),r0; r0 set to 0x19C, r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19D, r0 set to 0x19d
	mov.b r5,@(r0,r4)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	jmp @r3
	lds.l @r15+,pr

loc_8C096772:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C096850,pc),r4 ; r4 set to 0xCc
	mov.w @(loc_8C096852,pc),r0; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @(0x18,r14),r2
	mov.w @r4,r3
	mov.w @(r0,r2),r1
	cmp/eq r1,r3
	bt/s loc_8C096798
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x02,r0; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C096854,pc),r0; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c096798:
	mov 0x24,r0
	mov.b r5,@(r0,r14)
	mov.w @(loc_8C096856,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0967ac
	mov.w @(loc_8C096858,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0967be

loc_8c0967ac:
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C09685A,pc),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r3)
	bra loc_8c0967d2
	mov 0x05,r6

loc_8c0967be:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bt loc_8c0967de
	mov.b @(0x05,r14),r0
	mov 0x04,r6
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c0967d2:
	lds.l @r15+,pr 
	mov.l @(loc_8c096868,pc),r3
	mov 0x17,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c0967de:
	mov 0x5C,r1
	mov.l @(loc_8c09686c,pc),r3
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
	lds.l @r15+,pr 
	mov.l @(loc_8c096870,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;unused return
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c096810:
	mov.l r14,@-r15
	mov 0x00,r3
	mov 0x24,r0
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c096832
	mov.w @(0x28,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8c096832:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C096838:
	mov r4,r3
	mov.l @(loc_8C096874,pc),r1 ; r1 set to 0x8C155BAc
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09684A:
	#data 0x01A3
loc_8C09684C:
	#data 0x01A1
loc_8C09684E:
	#data 0x019c
loc_8C096850:
	#data 0x00Cc
loc_8C096852:
	#data 0x0158
loc_8C096854:
	#data 0x012c
loc_8c096856:
	#data 0x019e
loc_8c096858:
	#data 0x019f
loc_8c09685a:
	#data 0x01A0
	#align4

loc_8C09685C:
	#data 0x43235555
loc_8C096860:
	#data 0xBF555555
loc_8C096864:
	#data 0x8C2896B0
loc_8C096868:
	#data bank03.loc_8c034e8c
loc_8C09686C:
	#data bank03.loc_8c034dee
loc_8C096870:
	#data bank04.loc_8c045748
loc_8C096874:
	#data bank15.loc_8c155bAc

;==============================================
loc_8C096878:
	mov.w @(loc_8C0969B2,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0969B0,pc),r5 ; r5 set to 0xCc
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0969C0,pc),r3 ; r3 set to 0x8C129560
	add r4,r5 ; r5 ??? bc r4 is ???
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.l @(0x18,r4),r2
	mov.w @(loc_8C0969B2,pc),r0; r0 set to 0xDc
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C0969B4,pc),r0; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0969B6,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0969C4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0969B4,pc),r0; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov 0x02,r0; r0 set to 0x02
	mov.b r0,@(0x02,r5)
	mov 0x08,r0; r0 set to 0x08
	mov.b r0,@(0x03,r5)
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r5,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0969C8,pc),r0 ; r0 set to loc_8c0969C8
	fmov.s @r0,fr3
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0969B8,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C09693a
	mov.l @(loc_8C0969CC,pc),r1 ; r1 set to 0xC2F6AAAa
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	lds r1,fpul
	fsts fpul,fr2
	fsub fr2,fr1
	fmov.s fr1,@(r0,r4)
	mova @(loc_8C0969D0,pc),r0 ; r0 set to loc_8c0969D0
	bra loc_8C09694c
	fmov.s @r0,fr1

loc_8C09693A:
	mov.l @(loc_8C0969D4,pc),r1 ; r1 set to 0x42F6AAAa
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	lds r1,fpul
	fsts fpul,fr2
	fsub fr2,fr1
	fmov.s fr1,@(r0,r4)
	mova @(loc_8C0969D8,pc),r0 ; r0 set to loc_8c0969D8
	fmov.s @r0,fr1

loc_8C09694C:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr1,@(r0,r4)
	mov 0x3C,r0; r0 set to 0x3C, r0 set to 0x3c
	mov.w r0,@(0x1C,r4)
	mov 0x3F,r3 ; r3 set to 0x3F, r3 set to 0x3f
	mov.w @(loc_8C0969BA,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C0969DC,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov 0x42,r5 ; r5 set to 0x42, r5 set to 0x42
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C0969BC,pc),r0; r0 set to 0x19C, r0 set to 0x19c
	mov.l @(loc_8C0969E0,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19D, r0 set to 0x19d
	mov.b r5,@(r0,r4)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	jmp @r2
	lds.l @r15+,pr

loc_8C09698C:
	mov.l r14,@-r15
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x24,r0; r0 set to 0x24
	mov r4,r14
	sts.l pr,@-r15
	mov.b r5,@(r0,r14)
	mov.w @(loc_8C0969BE,pc),r0; r0 set to 0x1A0
	mov.w @(loc_8C0969B0,pc),r4 ; r4 set to 0xCc
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C0969E4
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0969B0:
	#data 0x00Cc
loc_8C0969B2:
	#data 0x00Dc
loc_8C0969B4:
	#data 0x012c
loc_8C0969B6:
	#data 0x01A3
loc_8C0969B8:
	#data 0x0130
loc_8C0969BA:
	#data 0x01A1
loc_8C0969BC:
	#data 0x019c
loc_8C0969BE:
	#data 0x01A0
	#align4

loc_8C0969C0:
	#data bank12.loc_8c129560
loc_8C0969C4:
	#data bank12.loc_8c1294C8
loc_8C0969C8:
	#data 0x430B4924
loc_8C0969CC:
	#data 0xC2F6AAAa
loc_8C0969D0:
	#data 0x40200000
loc_8C0969D4:
	#data 0x42F6AAAa
loc_8C0969D8:
	#data 0xC0200000
loc_8C0969DC:
	#data 0x8C2896B0
loc_8C0969E0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0969e4:
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
	mov.w @(loc_8C096AC8,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c096a40
	mov.w @(loc_8C096ACA,pc),r0
	mov 0x04,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x03,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x03,r4)
	mov.b @(0x03,r4),r0
	extu.b r0,r0
	cmp/pl r0
	bf loc_8c096a74
	mov.w @(loc_8C096ACC,pc),r0
	mov 0x3F,r2
	mov.l @(loc_8C096AD4,pc),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c096a40:
	mov.w @(loc_8C096ACE,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c096a58
	mov.b r5,@(r0,r14)
	mov.b @(0x02,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x02,r4),r0
	extu.b r0,r0
	cmp/pl r0
	bf loc_8c096a74

loc_8c096a58:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bf loc_8c096a74
	mov.l @(loc_8c096ad8,pc),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(loc_8c096adc,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c096a74:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8c096ae0,pc),r3
	mov 0x04,r6
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x17,r5
	lds.l @r15+,pr 
	jmp @r3
	mov.l @r15+,r14

;Unused return
loc_8c096a88:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c096a8e:
	mov.l r14,@-r15
	mov 0x00,r3
	mov 0x24,r0
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c096ab0
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x20,PC),r0
	mov.b r3,@(r0,r14)

loc_8c096ab0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C096AB6:
	mov r4,r3
	mov.l @(loc_8C096AE4,pc),r1 ; r1 set to 0x8C155BB8
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c096ac8:
	#data 0x019e
loc_8c096aca:
	#data 0x01A0
loc_8c096acc:
	#data 0x01A1
loc_8c096ace:
	#data 0x019F
loc_8c096ad0:
	#data 0x012c
	#align4

loc_8c096ad4:
	#data 0x8C2896B0
loc_8C096AD8:
	#data bank03.loc_8c034dee
loc_8C096ADC:
	#data bank04.loc_8c045748
loc_8C096AE0:
	#data bank03.loc_8c034e8c
loc_8C096AE4:
	#data bank15.loc_8c155bB8

;==============================================
loc_8C096AE8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C096C50,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C096C5C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C096C50,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C096C52,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C096C54,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C096C60,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov r14,r1
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C096C54,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r4
	mov.l @(loc_8C096C64,pc),r3 ; r3 set to 0x8C155B64
	mov.b @(r0,r4),r4
	mov 0x5C,r0; r0 set to 0x5c
	extu.b r4,r4
	shll2 r4
	shll2 r4
	add r3,r4
	mov.l @(loc_8C096C60,pc),r3 ; r3 set to 0x8C1294C8
	fmov.s @r4+,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fmov.s @r4+,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @r4+,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s @r4,fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x18,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.w @(loc_8C096C56,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_8C096BB0
	mov.l @(loc_8C096C68,pc),r1 ; r1 set to 0xC308AAAa
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fneg fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fmov.s @(r0,r14),fr2
	bra loc_8C096BBc
	fneg fr2

loc_8C096BB0:
	mov.l @(loc_8C096C6C,pc),r1 ; r1 set to 0x4308AAAa
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2

loc_8C096BBC:
	mov.l @(loc_8C096C70,pc),r1 ; r1 set to 0x431A4924, r1 set to 0x431A4924
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	mov.l @(loc_8C096C74,pc),r5 ; r5 set to 0x8C2896B0, r5 set to 0x8C2896B0
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C096C54,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf/s loc_8C096C00
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	mov.w @(loc_8C096C58,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov 0x4F,r1 ; r1 set to 0x4F, r1 set to 0x4f
	mov.b r1,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r5,r3
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	bra loc_8C096C24
	mov 0x06,r6

loc_8C096C00:
	mov.w @(loc_8C096C58,pc),r0; r0 set to 0x1A1
	mov 0x51,r3 ; r3 set to 0x51
	mov 0x08,r6 ; r6 set to 0x08
	mov.b r3,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r5,r3 ; r3 ??? bc r5 is ???
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)

loc_8C096C24:
	mov.l @(loc_8C096C78,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C096C5A,pc),r0; r0 set to 0x19C, r0 set to 0x19c
	mov 0x44,r4 ; r4 set to 0x44, r4 set to 0x44
	mov 0x30,r3 ; r3 set to 0x30, r3 set to 0x30
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19D, r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0xA0,r0; r0 set to 0x13D, r0 set to 0x13d
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13C, r0 set to 0x13c
	mov.b r3,@(r0,r14)
	add 0x02,r0; r0 set to 0x13E, r0 set to 0x13e
	mov 0x40,r2 ; r2 set to 0x40, r2 set to 0x40
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x13F, r0 set to 0x13f
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C096C50:
	#data 0x00Dc
loc_8C096C52:
	#data 0x012c
loc_8C096C54:
	#data 0x01A3
loc_8C096C56:
	#data 0x0130
loc_8C096C58:
	#data 0x01A1
loc_8C096C5A:
	#data 0x019c
	#align4

loc_8C096C5C:
	#data bank12.loc_8c129560
loc_8C096C60:
	#data bank12.loc_8c1294C8
loc_8C096C64:
	#data bank15.loc_8c155b64
loc_8C096C68:
	#data 0xC308AAAa
loc_8C096C6C:
	#data 0x4308AAAa
loc_8C096C70:
	#data 0x431A4924
loc_8C096C74:
	#data 0x8C2896B0
loc_8C096C78:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C096C7C:
	mov.l r14,@-r15
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x06,r14),r0
	mov.l @(loc_8C096DA8,pc),r1 ; r1 set to 0x8C155BC4
	extu.b r0,r0; r0 set to 0x24
	shll2 r0; r0 set to 0x90
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_8C096C96:
	mov.w @(loc_8C096DA0,pc),r0; r0 set to 0x19e
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C096D22
	mov.w @(loc_8C096DA2,pc),r0; r0 set to 0x19f
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C096D22
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C096DAC,pc),r3 ; r3 set to 0x8C03340c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C096CF8
	mov 0x02,r0; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C096CF8:
	mov.w @(loc_8C096DA4,pc),r0; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr4
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bf loc_8C096D12
	mov.b @(0x05,r14),r0
	add 0x01,r0; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov 0x3C,r0; r0 set to 0x3c
	bra loc_8C096D22
	mov.w r0,@(0x1C,r14)

loc_8C096D12:
	mov.l @(loc_8C096DB0,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C096DB4,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C096D22:
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x1E,r0; r0 set to 0x1e
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C096DB8,pc),r0 ; r0 set to loc_8c096DB8
	fmov.s @r0,fr3
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C096DBC,pc),r0 ; r0 set to loc_8c096DBc
	fmov.s @r0,fr3
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C096D42:
	mov 0x60,r1 ; r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x38,r0; r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0; r0 set to 0x5f
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pl r0
	bt loc_8C096D70
	mov 0x02,r0; r0 set to 0x02
	bra loc_8C096D80
	mov.b r0,@(0x04,r4)

loc_8C096D70:
	mov.w @(0x1C,r4),r0
	mov 0x01,r5 ; r5 set to 0x01
	tst r5,r0
	bt loc_8C096D80
	mov.l @(loc_8C096DB0,pc),r3 ; r3 set to 0x8C034DEe
	mov.w @(loc_8C096DA6,pc),r0; r0 set to 0x12c
	jmp @r3
	mov.b r5,@(r0,r4)

loc_8C096D80:
	mov.w @(loc_8C096DA6,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C096D88:
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r5,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0; r0 set to 0x23
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pl r0
	bt loc_8C096DC0
	mov 0x02,r0; r0 set to 0x02
	bra loc_8C096DD4
	mov.b r0,@(0x04,r4)

;##############################################
loc_8C096DA0:
	#data 0x019e
loc_8C096DA2:
	#data 0x019f
loc_8C096DA4:
	#data 0x041c
loc_8C096DA6:
	#data 0x012c
	#align4

loc_8C096DA8:
	#data bank15.loc_8c155bC4
loc_8C096DAC:
	#data bank03.loc_8c03340c
loc_8C096DB0:
	#data bank03.loc_8c034dee
loc_8C096DB4:
	#data bank04.loc_8c045748
loc_8C096DB8:
	#data 0x41092492
loc_8C096DBC:
	#data 0xBF092492

;==============================================
loc_8C096DC0:
	mov.w @(0x1C,r4),r0
	mov 0x1E,r3 ; r3 set to 0x1e
	cmp/ge r3,r0
	bt loc_8C096DDa
	mov.w @(0x1C,r4),r0
	tst 0x01,r0
	bt loc_8C096DD4
	mov.w @(loc_8C096DFC,pc),r0; r0 set to 0x12c
	bra loc_8C096DDa
	mov.b r5,@(r0,r4)

loc_8C096DD4:
	mov.w @(loc_8C096DFC,pc),r0; r0 set to 0x12c
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C096DDA:
	mov.l @(loc_8C096E00,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;unused
loc_8C096DE0:
	rts
	nop

;----------------------------------------------
loc_8C096DE4:
	mov.w @(loc_8C096DFC,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov 0x03,r0; r0 set to 0x03
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C096DF0:
	mov.w @(loc_8C096DFC,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C096E04,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C096DFC:
	#data 0x012c
	#align4

loc_8C096E00:
	#data bank03.loc_8c034dee
loc_8C096E04:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c096e08:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x11C,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c096e26
	mov r0,r4
	mov.l @(0x110,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c096e26:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0


;----------------------------------------------
loc_8C096E2E:
	mov r4,r3
	mov.l @(loc_8C096F34,pc),r1 ; r1 set to 0x8C155BCc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C096E40:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C096F22,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C096F20,pc),r5 ; r5 set to 0x2A4
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov.l @(0x18,r14),r2
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.w @(loc_8C096F22,pc),r0; r0 set to 0xDc
	mov.l @(loc_8C096F38,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C096F24,pc),r0; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C096F26,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C096F3C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x40,r6 ; r6 set to 0x40
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x42,r13 ; r13 set to 0x42
	mov.l @(loc_8C096F40,pc),r1 ; r1 set to 0x42E76DB6
	mov.b r3,@(r0,r14)
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.w @(loc_8C096F28,pc),r0; r0 set to 0x13e
	lds r1,fpul
	mov.b r6,@(r0,r14)
	add 0x01,r0; r0 set to 0x13f
	mov.b r6,@(r0,r14)
	add 0x5D,r0; r0 set to 0x19c
	mov.b r13,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r13,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C096F24,pc),r0; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0; r0 set to 0x3c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C096F44,pc),r0 ; r0 set to loc_8c096F44
	fmov.s @r0,fr4 ; r4 ??
	mov.w @(loc_8C096F2A,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C096F0a
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	bra loc_8C096F10
	fadd fr4,fr2

loc_8C096F0A:
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fsub fr4,fr2

loc_8C096F10:
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C096F26,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C096F4c
	mova @(loc_8C096F48,pc),r0 ; r0 set to loc_8c096F48, r0 set to loc_8c096F48
	bra loc_8C096F50
	fmov.s @r0,fr3

;##############################################
loc_8C096F20:
	#data 0x02A4
loc_8C096F22:
	#data 0x00Dc
loc_8C096F24:
	#data 0x012c
loc_8C096F26:
	#data 0x01A3
loc_8C096F28:
	#data 0x013e
loc_8C096F2A:
	#data 0x0130
	#align4

loc_8C096F2C:
	#data bank04.loc_8c044F12
loc_8C096F30:
	#data loc_8c096E2e
loc_8C096F34:
	#data bank15.loc_8c155bCc
loc_8C096F38:
	#data bank12.loc_8c129560
loc_8C096F3C:
	#data bank12.loc_8c1294C8
loc_8C096F40:
	#data 0x42E76DB6
loc_8C096F44:
	#data 0x42F00000
loc_8C096F48:
	#data 0xC0855555

;==============================================
loc_8c096f4c:
	mova @(loc_8C097044,pc),r0
	fmov.s @r0,fr3

loc_8c096f50:
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C097038,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c096f64
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c096f64:
	mov r4,r0
	nop
	mov.l @(loc_8c097048,pc),r3
	mov 0x00,r6
	mov.b r0,@(0x06,r5)
	mov 0x14,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C09703A,pc),r0
	mov 0x00,r4
	mov.l @(loc_8C09704C,pc),r3
	mov.b r13,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr 
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C096FA0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C097050,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8C096FB6
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C097018
	mov.l @r15+,r14

loc_8c096fb6:
	mov.w @(loc_8C09703C,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c096fc6
	mov.w @(loc_8C09703E,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c096fda

loc_8c096fc6:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8c097048,pc),r3
	mov 0x01,r6
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x14,r5
	lds.l @r15+,pr 
	jmp @r3
	mov.l @r15+,r14

loc_8c096fda:
	mov 0x5C,r1
	mov.l @(loc_8c097054,pc),r3
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(loc_8c097058,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C096FF8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C097058,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C097010
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C097018
	lds.l @r15+,pr

loc_8C097010:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C097018:
	mov.w @(loc_8C097040,pc),r6 ; r6 set to 0x2A4
	mov.l @(0x18,r4),r5
	add r5,r6 ; r6 ??? bc r5 is ???
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r6)
	mov.b @(0x04,r4),r0
	add 0x01,r0; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C097042,pc),r0; r0 set to 0x12c
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C097032:
	mov.l @(loc_8C09705C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c097038:
	#data 0x0130
loc_8c09703a:
	#data 0x01A1
loc_8c09703c:
	#data 0x019e
loc_8c09703e:
	#data 0x019F
loc_8C097040:
	#data 0x02A4
loc_8C097042:
	#data 0x012c
	#align4

loc_8c097044:
	#data 0xC0F00000
loc_8C097048:
	#data bank03.loc_8c034e8c
loc_8c09704c:
	#data 0x8C2896B0
loc_8C097050:
	#data bank03.loc_8c03340c
loc_8C097054:
	#data bank04.loc_8c045748
loc_8C097058:
	#data bank03.loc_8c034dee
loc_8C09705C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c097060:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c097084
	mov r0,r4
	mov.l @(0x124,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x108,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c097084:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C09708C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C09718A,pc),r2 ; r2 set to 0x2A4
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.l @(loc_8C0971A4,pc),r0; r0 set to 0x8C28C650
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.w @(loc_8C09718C,pc),r3 ; r3 set to 0xCc
	mov.l @(loc_8C0971A0,pc),r1 ; r1 set to 0x8C28C64c
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r2,@r1 ; r1 ??? bc r2 is ???
	mov.l r3,@r0; r0??? bc r3 is ???
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0971A8,pc),r2 ; r2 set to 0x8C155BE0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0970B2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C09718E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0971AC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C09718E,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C097190,pc),r0; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C097192,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0971B0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x42,r4 ; r4 set to 0x42
	mov.l @(loc_8C0971A4,pc),r2 ; r2 set to 0x8C28C650
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C097194,pc),r0; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0xBB,r0; r0 set to 0x158
	mov.l @(0x18,r14),r1
	mov.l @r2,r3
	mov.w @(r0,r1),r1
	add 0xD4,r0; r0 set to 0x12c
	mov.w r1,@r3
	mov.b r5,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r3
	mov.l @(loc_8C0971B4,pc),r1 ; r1 set to 0x42E76DB6
	fmov.s @(r0,r3),fr3
	lds r1,fpul
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov 0x3C,r0; r0 set to 0x3c
	fmov.s @(r0,r3),fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0971B8,pc),r0 ; r0 set to loc_8c0971B8
	fmov.s @r0,fr4 ; r4 ??
	mov.w @(loc_8C097196,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C097170
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	bra loc_8C097176
	fadd fr4,fr2

loc_8C097170:
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fsub fr4,fr2

loc_8C097176:
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C097192,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0971Bc
	mov 0x3C,r0; r0 set to 0x3C, r0 set to 0x3c
	mov.w r0,@(0x1C,r14)
	bra loc_8C0971C2
	mov 0x4F,r3

;##############################################
loc_8C097188:
	#data 0x2501
loc_8C09718A:
	#data 0x02A4
loc_8C09718C:
	#data 0x00Cc
loc_8C09718E:
	#data 0x00Dc
loc_8C097190:
	#data 0x012c
loc_8C097192:
	#data 0x01A3
loc_8C097194:
	#data 0x019c
loc_8C097196:
	#data 0x0130
	#align4

loc_8C097198:
	#data bank04.loc_8c044F12
loc_8C09719C:
	#data loc_8c09708c
loc_8C0971A0:
	#data 0x8C28C64c
loc_8C0971A4:
	#data 0x8C28C650
loc_8C0971A8:
	#data bank15.loc_8c155bE0
loc_8C0971AC:
	#data bank12.loc_8c129560
loc_8C0971B0:
	#data bank12.loc_8c1294C8
loc_8C0971B4:
	#data 0x42E76DB6
loc_8C0971B8:
	#data 0x42E95555

;==============================================
loc_8c0971bc:
	mov 0x14,r0
	mov 0x45,r3
	mov.w r0,@(0x1C,r14)

loc_8c0971c2:
	mov.w @(loc_8C09729E,pc),r0
	mov 0x00,r4
	mov 0x14,r5
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8C0972A8,pc),r3
	mov 0x02,r6
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(loc_8c0972ac,pc),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov r14,r4
	mov.l @r15+,r14

loc_8c0971f6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.l @(loc_8c0972b0,pc),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_8c097218
	mov.l @(loc_8C0972B4,pc),r3
	mov.w @(loc_8C0972A0,pc),r0
	mov.l @r3,r2
	mov.w @r2,r1
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r0
	cmp/eq r0,r1
	bt loc_8c097222

loc_8c097218:
	lds.l @r15+,pr 
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c097346
	mov.l @r15+,r14

loc_8c097222:
	mov.l @(0x18,r14),r2
	mov 0x34,r0
	mov.l @(loc_8C0972B8,pc),r1
	fmov.s @(r0,r2),fr3
	lds r1,fpul 
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0972BC,pc),r0
	fmov.s @r0,fr4
	mov.w @(loc_8C0972A2,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c09725a
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	bra loc_8c097260
	fadd fr4,fr2

loc_8c09725a:
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fsub fr4,fr2

loc_8c097260:
	fmov.s fr2,@(r0,r14)
	mov.b @(0x06,r14),r0
	tst r0,r0
	bt loc_8c097284
	mov.l @(loc_8c0972c0,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09733a
	mov.l @(loc_8C0972C4,pc),r2
	mov 0x01,r0
	mov.l @r2,r3
	mov.b r0,@(0x02,r3)
	bsr loc_8c097346
	mov r14,r4
	bra loc_8c09733a
	nop

loc_8c097284:
	mov.w @(loc_8C0972A4,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0972ec
	mov.b r13,@(r0,r14)
	add 0x62,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0972c8
	mov.w @(loc_8C09729E,pc),r0
	mov 0x4F,r3
	bra loc_8c0972ce
	mov.b r3,@(r0,r14)

;##############################################
loc_8C09729E:
	#data 0x01A1
loc_8C0972A0:
	#data 0x0158
loc_8C0972A2:
	#data 0x0130
loc_8C0972A4:
	#data 0x0141
	#align4

loc_8C0972A8:
	#data 0x8C2896B0
loc_8c0972ac:
	#data bank03.loc_8c034e8c
loc_8c0972b0:
	#data bank03.loc_8c03340c
loc_8C0972B4:
	#data 0x8C28C650
loc_8C0972B8:
	#data 0x42E76DB6
loc_8C0972BC:
	#data 0x42E95555
loc_8c0972c0:
	#data bank03.loc_8c034dee
loc_8C0972C4:
	#data 0x8C28C64C

;----------------------------------------------
loc_8c0972c8:
	mov.w @(loc_8C09735A,pc),r0
	mov 0x45,r2
	mov.b r2,@(r0,r14)

loc_8c0972ce:
	mov.w @(loc_8C09735C,pc),r0
	mov.l @(loc_8C097364,pc),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c0972ec:
	mov.w @(loc_8C09735E,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09730a
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8c097368,pc),r3
	mov 0x03,r6
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x14,r5
	lds.l @r15+,pr 
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09730a:
	mov.l @(loc_8c09736c,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c09733a
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C097360,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09733a
	mov.b @(0x06,r14),r0
	mov 0x14,r5
	mov.l @(loc_8c097368,pc),r3
	mov 0x03,r6
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4

loc_8c09733a:
	lds.l @r15+,pr 
	mov.l @(loc_8c097370,pc),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C097346:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C097362,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C097354:
	mov.l @(loc_8C097374,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09735a:
	#data 0x01A1
loc_8c09735c:
	#data 0x01Ac
loc_8c09735e:
	#data 0x019F
loc_8c097360:
	#data 0x0141
loc_8C097362:
	#data 0x012c
	#align4

loc_8c097364:
	#data 0x8C2896B0
loc_8C097368:
	#data bank03.loc_8c034e8c
loc_8C09736C:
	#data bank03.loc_8c034dee
loc_8C097370:
	#data bank04.loc_8c045748
loc_8C097374:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c097378:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x154,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c097396
	mov r0,r4
	mov.l @(0x148,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c097396:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C09739E:
	mov r4,r3
	mov.l @(loc_8C0974DC,pc),r1 ; r1 set to 0x8C155BF0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0973B0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0974C8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0974E0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0974C8,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C0974CA,pc),r0; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0974CC,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0974E4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r14)
	mov 0x00,r6 ; r6 set to 0x00
	mov.w @(loc_8C0974CA,pc),r0; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0; r0 set to 0x3c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0974E8,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C09744A:
	mov.w @(loc_8C0974CE,pc),r0; r0 set to 0x141, r0 set to 0x141
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_8C09749a
	mov.l @(loc_8C0974EC,pc),r1 ; r1 set to 0xC0092492, r1 set to 0xC0092492
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0974D0,pc),r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C097478
	mov.l @(loc_8C0974F0,pc),r1 ; r1 set to 0x3F555555, r1 set to 0x3F555555
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	lds r1,fpul
	bra loc_8C097480
	fsts fpul,fr2

loc_8c097478:
	mov.l @(loc_8C0974F4,pc),r1
	mov 0x34,r0
	lds r1,fpul 
	fsts fpul,fr2

loc_8c097480:
	fmov.s @(r0,r14),fr1
	mov.l @(loc_8C0974F8,pc),r3
	fadd fr2,fr1
	mov.w @(loc_8c0974ca,pc),r1
	add r14,r1
	fmov.s fr1,@(r0,r14)
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	mov r0,r2
	mov.b @(0x02,r14),r0
	xor r2,r0
	mov.b r0,@r1

loc_8C09749A:
	mov.l @(loc_8C0974FC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0974Ae
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0974B4
	mov.l @r15+,r14

loc_8C0974AE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0974B4:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0974CA,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0974C2:
	mov.l @(loc_8C097500,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0974C8:
	#data 0x00Dc
loc_8C0974CA:
	#data 0x012c
loc_8C0974CC:
	#data 0x01A3
loc_8C0974CE:
	#data 0x0141
loc_8C0974D0:
	#data 0x0130
	#align4

loc_8C0974D4:
	#data bank04.loc_8c044F12
loc_8C0974D8:
	#data loc_8c09739e
loc_8C0974DC:
	#data bank15.loc_8c155BF0
loc_8C0974E0:
	#data bank12.loc_8c129560
loc_8C0974E4:
	#data bank12.loc_8c1294C8
loc_8C0974E8:
	#data bank03.loc_8c034e8c
loc_8C0974EC:
	#data 0xC0092492
loc_8C0974F0:
	#data 0x3F555555
loc_8c0974f4:
	#data 0xBF555555
loc_8c0974f8:
	#data 0x8C26823c
loc_8C0974FC:
	#data bank03.loc_8c034dee
loc_8C097500:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C097504:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c097528
	mov r0,r4
	mov.l @(0x124,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x108,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c097528:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C097530:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C09762E,pc),r2 ; r2 set to 0x2A4
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.l @(loc_8C097648,pc),r0; r0 set to 0x8C28C658
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.w @(loc_8C097630,pc),r3 ; r3 set to 0xCc
	mov.l @(loc_8C097644,pc),r1 ; r1 set to 0x8C28C654
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r2,@r1 ; r1 ??? bc r2 is ???
	mov.l r3,@r0; r0??? bc r3 is ???
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09764C,pc),r2 ; r2 set to 0x8C155C00
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C097556:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C097632,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C097650,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C097632,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C097634,pc),r0; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C097636,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C097654,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x42,r4 ; r4 set to 0x42
	mov.l @(loc_8C097648,pc),r2 ; r2 set to 0x8C28C658
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C097638,pc),r0; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0xBB,r0; r0 set to 0x158
	mov.l @(0x18,r14),r1
	mov.l @r2,r3
	mov.w @(r0,r1),r1
	add 0xD4,r0; r0 set to 0x12c
	mov.w r1,@r3
	mov.b r5,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r3
	mov.l @(loc_8C097658,pc),r1 ; r1 set to 0x43340000
	fmov.s @(r0,r3),fr3
	lds r1,fpul
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov 0x3C,r0; r0 set to 0x3c
	fmov.s @(r0,r3),fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C09765C,pc),r0 ; r0 set to loc_8c09765c
	fmov.s @r0,fr4 ; r4 ??
	mov.w @(loc_8C09763A,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C097614
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	bra loc_8C09761a
	fadd fr4,fr2

loc_8C097614:
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fsub fr4,fr2

loc_8C09761A:
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C097636,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C097660
	mov 0x3C,r0; r0 set to 0x3C, r0 set to 0x3c
	mov.w r0,@(0x1C,r14)
	bra loc_8C097666
	mov 0x50,r3

;##############################################
loc_8C09762c:
	#data 0x2503
loc_8C09762E:
	#data 0x02A4
loc_8C097630:
	#data 0x00Cc
loc_8C097632:
	#data 0x00Dc
loc_8C097634:
	#data 0x012c
loc_8C097636:
	#data 0x01A3
loc_8C097638:
	#data 0x019c
loc_8C09763A:
	#data 0x0130
	#align4

loc_8C09763C:
	#data bank04.loc_8c044F12
loc_8C097640:
	#data loc_8c097530
loc_8C097644:
	#data 0x8C28C654
loc_8C097648:
	#data 0x8C28C658
loc_8C09764C:
	#data bank15.loc_8c155c00
loc_8C097650:
	#data bank12.loc_8c129560
loc_8C097654:
	#data bank12.loc_8c1294C8
loc_8C097658:
	#data 0x43340000
loc_8C09765C:
	#data 0x427D5555

;==============================================
loc_8c097660:
	mov 0x14,r0
	mov 0x46,r3
	mov.w r0,@(0x1C,r14)

loc_8c097666:
	mov.w @(loc_8C097742,pc),r0
	mov 0x00,r4
	mov 0x14,r5
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8C09774C,pc),r3
	mov 0x04,r6
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(loc_8c097750,pc),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov r14,r4
	mov.l @r15+,r14

loc_8c09769a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.l @(loc_8c097754,pc),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_8c0976bc
	mov.l @(loc_8C097758,pc),r3
	mov.w @(loc_8C097744,pc),r0
	mov.l @r3,r2
	mov.w @r2,r1
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r0
	cmp/eq r0,r1
	bt loc_8c0976c6

loc_8c0976bc:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0977ea
	mov.l @r15+,r14

loc_8c0976c6:
	mov.l @(0x18,r14),r2
	mov 0x34,r0
	mov.l @(loc_8C09775C,pc),r1
	fmov.s @(r0,r2),fr3
	lds r1,fpul 
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C097760,pc),r0
	fmov.s @r0,fr4
	mov.w @(loc_8C097746,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0976fe
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	bra loc_8c097704
	fadd fr4,fr2

loc_8c0976fe:
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fsub fr4,fr2

loc_8c097704:
	fmov.s fr2,@(r0,r14)
	mov.b @(0x06,r14),r0
	tst r0,r0
	bt loc_8c097728
	mov.l @(loc_8c097764,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0977de
	mov.l @(loc_8C097768,pc),r2
	mov 0x01,r0
	mov.l @r2,r3
	mov.b r0,@(0x02,r3)
	bsr loc_8c0977ea
	mov r14,r4
	bra loc_8c0977de
	nop

loc_8c097728:
	mov.w @(loc_8C097748,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c097790
	mov.b r13,@(r0,r14)
	add 0x62,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09776c
	mov.w @(loc_8C097742,pc),r0
	mov 0x50,r3
	bra loc_8c097772
	mov.b r3,@(r0,r14)

;##############################################
loc_8C097742:
	#data 0x01A1
loc_8C097744:
	#data 0x0158
loc_8C097746:
	#data 0x0130
loc_8C097748:
	#data 0x0141
	#align4

loc_8C09774C:
	#data 0x8C2896B0
loc_8c097750:
	#data bank03.loc_8c034e8c
loc_8c097754:
	#data bank03.loc_8c03340c
loc_8C097758:
	#data 0x8C28C658
loc_8C09775C:
	#data 0x43340000
loc_8C097760:
	#data 0x427D5555
loc_8c097764:
	#data bank03.loc_8c034dee
loc_8C097768:
	#data 0x8C28C654

;----------------------------------------------
loc_8c09776c:
	mov.w @(loc_8C0977FE,pc),r0
	mov 0x46,r2
	mov.b r2,@(r0,r14)

loc_8c097772:
	mov.w @(loc_8C097800,pc),r0
	mov.l @(loc_8C097808,pc),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c097790:
	mov.w @(loc_8C097802,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0977ae
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8c09780c,pc),r3
	mov 0x05,r6
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x14,r5
	lds.l @r15+,pr 
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0977ae:
	mov.l @(loc_8c097810,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0977de
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C097804,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0977de
	mov.b @(0x06,r14),r0
	mov 0x14,r5
	mov.l @(loc_8c09780c,pc),r3
	mov 0x05,r6
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4

loc_8c0977de:
	lds.l @r15+,pr
	mov.l @(loc_8c097814,pc),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0977EA:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C097806,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C0977F8:
	mov.l @(loc_8C097818,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0977fe:
	#data 0x01A1
loc_8c097800:
	#data 0x01Ac
loc_8c097802:
	#data 0x019F
loc_8c097804:
	#data 0x0141
loc_8C097806:
	#data 0x012c
	#align4

loc_8c097808:
	#data 0x8C2896B0
loc_8C09780C:
	#data bank03.loc_8c034e8c
loc_8C097810:
	#data bank03.loc_8c034dee
loc_8C097814:
	#data bank04.loc_8c045748
loc_8C097818:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c09781c:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x4,r15)
	mov r6,r0
	nop
	mov.l @(0xDC,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x8,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c097860
	mov r0,r4
	mov.l @(0xD0,PC),r3
	mov 0x26,r0
	mov.w @(0xBA,PC),r5
	mov.l r3,@(0x10,r4)
	mov.w @(0xB4,PC),r3
	add r4,r5
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@(0x2,r5)
	mov.b @(0x4,r15),r0
	mov.b r0,@(0x3,r5)
	mov.w @(0xA6,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	mov.w r2,@r5

loc_8c097860:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C097868:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C097904,pc),r2 ; r2 set to 0x2A4
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.l @(loc_8C097914,pc),r1 ; r1 set to 0x8C28C65c
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.w @(loc_8C097900,pc),r3 ; r3 set to 0xCc
	mov.l r2,@r1 ; r1 ??? bc r2 is ???
	mov.l @(loc_8C097918,pc),r2 ; r2 set to 0x8C28C660
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C09791C,pc),r1 ; r1 set to 0x8C155C74
	mov.l r3,@r2 ; r2 ??? bc r3 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C09788E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l @(loc_8C097918,pc),r13 ; r13 set to 0x8C28C660
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r13,r3
	mov.b @(0x02,r3),r0
	tst r0,r0
	bf/s loc_8C0978B0
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C097906,pc),r0; r0 set to 0x1A1
	mov 0x47,r2 ; r2 set to 0x47
	bra loc_8C0978B6
	mov.b r2,@(r0,r14)

loc_8C0978B0:
	mov.w @(loc_8C097906,pc),r0; r0 set to 0x1A1
	mov 0x4D,r3 ; r3 set to 0x4d
	mov.b r3,@(r0,r14)

loc_8C0978B6:
	mov.w @(loc_8C097908,pc),r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.l @(loc_8C097920,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	mov 0x10,r3 ; r3 set to 0x10, r3 set to 0x10
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x42,r2 ; r2 set to 0x42, r2 set to 0x42
	mov.w @(loc_8C097908,pc),r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r3,@(r0,r14)
	add 0xF0,r0; r0 set to 0x19C, r0 set to 0x19c
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x19D, r0 set to 0x19d
	mov 0x44,r3 ; r3 set to 0x44, r3 set to 0x44
	mov.b r3,@(r0,r14)
	add 0xBB,r0; r0 set to 0x158, r0 set to 0x158
	mov.l @r13,r2 ; r2 ??? bc r13 is ???, r2 ??? bc r13 is ???
	mov.w @r2,r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r1
	cmp/eq r1,r3
	bt loc_8C097924
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C097B04
	mov.l @r15+,r14

;##############################################
loc_8c0978fe:
	#data 0x2504
loc_8C097900:
	#data 0x00Cc
loc_8C097902:
	#data 0x0158
loc_8C097904:
	#data 0x02A4
loc_8C097906:
	#data 0x01A1
loc_8C097908:
	#data 0x01Ac
	#align4

loc_8C09790C:
	#data bank04.loc_8c044F12
loc_8C097910:
	#data loc_8c097868
loc_8C097914:
	#data 0x8C28C65c
loc_8C097918:
	#data 0x8C28C660
loc_8C09791C:
	#data bank15.loc_8c155c74
loc_8C097920:
	#data 0x8C2896B0

;----------------------------------------------
loc_8C097924:
	mov.w @(loc_8C097A4C,pc),r0; r0 set to 0xDc
	mov.w @(loc_8C097A4C,pc),r1 ; r1 set to 0xDc
	mov.l @(loc_8C097A58,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	add r14,r1 ; r1 ??? bc r14 is ???
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C097A4E,pc),r0; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C097A50,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C097A5C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x20,r5 ; r5 set to 0x20
	fldi0 fr4
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8C097A60,pc),r2 ; r2 set to 0x8C28C65c
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C097A52,pc),r0; r0 set to 0x13e
	mov.b r5,@(r0,r14)
	add 0x01,r0; r0 set to 0x13f
	mov.b r5,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov.l @r2,r0; r0??
	mov.l @r13,r3
	mov.b @(0x05,r0),r0
	mov.b r0,@(0x02,r3)
	mov.w @(loc_8C097A4E,pc),r0; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0; r0 set to 0x3c
	mov.l @(0x18,r14),r3
	mov 0x04,r1 ; r1 set to 0x04
	mov.l @(loc_8C097A64,pc),r4 ; r4 set to 0x8C155C10
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C097A68,pc),r5 ; r5 set to 0x8C155C60
	fmov.s fr3,@(r0,r14)
	mov.l @r13,r6
	mov.b @(0x03,r6),r0
	extu.b r0,r6 ; r6 set to 0x3c
	mov r6,r3 ; r3 set to 0x3c
	shll2 r3 ; r3 set to 0xF0
	add r3,r4 ; r4 set to 0x8C155D00
	add r4,r1 ; r1 set to 0x8C155D04
	mov 0x38,r0; r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C097A54,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0979Fe
	add r6,r5 ; r5 set to 0x8C155C9c
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r4,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x22,r0; r0 set to 0x22
	mov.b @r5,r3
	bra loc_8C097A10
	mov.b r3,@(r0,r14)

loc_8C0979FE:
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r4,fr3
	fmov.s @(r0,r14),fr2
	mov 0x22,r1 ; r1 set to 0x22
	add r14,r1 ; r1 ??? bc r14 is ???
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x01,r5),r0
	mov.b r0,@r1

loc_8C097A10:
	mov.l @(loc_8C097A6C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x14,r5 ; r5 set to 0x14, r5 set to 0x14
	mov 0x06,r6 ; r6 set to 0x06, r6 set to 0x06
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C097A24
	mov.l @r15+,r14

loc_8c097a24:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c097a70,pc),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_8c097a44
	mov.l @(loc_8c097a74,pc),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c097a78,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c097a7c

loc_8c097a44:
	lds.l @r15+,pr 
	mov r14,r4
	bra loc_8c097b04
	mov.l @r15+,r14

;##############################################
loc_8c097a4c:
	#data 0x00DC
loc_8c097a4e:
	#data 0x012C
loc_8c097a50:
	#data 0x01A3
loc_8c097a52:
	#data 0x013E
loc_8c097a54:
	#data 0x0130
	#align4

loc_8c097a58:
	#data bank12.loc_8C129560
loc_8c097a5c:
	#data bank12.loc_8C1294C8
loc_8c097a60:
	#data 0x8C28C65C
loc_8c097a64:
	#data bank15.loc_8C155C10
loc_8c097a68:
	#data bank15.loc_8C155C60
loc_8c097a6c:
	#data bank03.loc_8C034E8C
loc_8c097a70:
	#data bank03.loc_8c03340c
loc_8c097a74:
	#data bank04.loc_8c045748
loc_8c097a78:
	#data bank03.loc_8c034dee

;----------------------------------------------
loc_8c097a7c:
	mov 0x22,r0
	mov.l @(loc_8c097b1c,pc),r3
	mov.b @(r0,r14),r0
	mov 0x3F,r4
	extu.b r0,r0
	neg r0,r0
	add 0x50,r0
	and r0,r4
	shll8 r4
	jsr @r3
	shll2 r4
	mova @(loc_8C097B20,pc),r0
	mov.l @(loc_8c097b24,pc),r3
	fmov.s @r0,fr3
	mov 0x5C,r0
	mov 0x3F,r4
	fmul fr3,fr0
	fmov.s fr0,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	neg r0,r0
	add 0x50,r0
	and r0,r4
	shll8 r4
	jsr @r3
	shll2 r4
	mova @(loc_8C097B28,pc),r0
	fldi0 fr4
	fmov.s @r0,fr3
	mov 0x60,r0
	mov 0x5C,r1
	fmul fr3,fr0
	add r14,r1
	fmov.s fr0,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r14),fr1
	fmov.s @r1,fr2
	mov 0x68,r1
	add r14,r1
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr1
	fmov.s @r1,fr2
	mov 0x60,r1
	add r14,r1
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr1
	fmov.s @r1,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov 0x60,r0
	mov 0x6C,r1
	fmov.s @(r0,r14),fr1
	add r14,r1
	fmov.s @r1,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	lds.l @r15+,pr 
	rts
	mov.l @r15+,r14

loc_8C097B04:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C097B18,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C097B12:
	mov.l @(loc_8C097B2C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C097B18:
	#data 0x012c
	#align4

loc_8C097B1C:
	#data bank11.loc_8c11E2E0
loc_8c097b20:
	#data 0x41055555
loc_8C097B24:
	#data bank11.loc_8c11E860
loc_8c097b28:
	#data 0x412B6DB6
loc_8C097B2C:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c097b30:
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
	bt.s loc_8c097b5c
	mov r0,r4
	mov.l @(0x134,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x118,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c097b5c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0


;----------------------------------------------
loc_8C097B64:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x110,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c097b96
	mov r0,r4
	mov.l @(0x100,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @r15,r2
	mov.w @(0xDE,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C097B96:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C097B9E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C097C72,pc),r2 ; r2 set to 0x2A4
	mov 0x20,r0; r0 set to 0x20
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(loc_8C097C74,pc),r1 ; r1 set to 0xCc
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C097C84,pc),r3 ; r3 set to 0x8C28C668
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C097C88,pc),r2 ; r2 set to 0x8C28C664
	mov.l r1,@r2 ; r2 ??? bc r1 is ???
	mov.b @(r0,r14),r3
	mov.l @(loc_8C097C8C,pc),r0; r0 set to 0x8C155C84
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

loc_8C097BC6:
	mov r4,r3
	mov.l @(loc_8C097C90,pc),r1 ; r1 set to 0x8C155C90
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C097BD8:
	mov.w @(loc_8C097C76,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C097C94,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C097C76,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C097C78,pc),r0; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C097C7A,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C097C98,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8C097C88,pc),r1 ; r1 set to 0x8C28C664
	mov.b r3,@(r0,r4)
	mov 0x10,r3 ; r3 set to 0x10
	mov.l @r1,r2
	mov 0x34,r0; r0 set to 0x34
	mov.b r3,@r2
	mov.l @(loc_8C097C84,pc),r3 ; r3 set to 0x8C28C668
	mov.l @r3,r2
	mov.b r5,@r2
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov.w @(loc_8C097C7A,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r1 ; r1 ??? bc r4 is ???
	tst r1,r1
	bt loc_8C097C9c
	bra loc_8C097C9e
	mov 0x38,r2

;##############################################
loc_8C097C70:
	#data 0x2600
loc_8C097C72:
	#data 0x02A4
loc_8C097C74:
	#data 0x00Cc
loc_8C097C76:
	#data 0x00Dc
loc_8C097C78:
	#data 0x012c
loc_8C097C7A:
	#data 0x01A3
	#align4

loc_8C097C7C:
	#data bank04.loc_8c044F12
loc_8C097C80:
	#data loc_8c097B9e
loc_8C097C84:
	#data 0x8C28C668
loc_8C097C88:
	#data 0x8C28C664
loc_8C097C8C:
	#data bank15.loc_8c155c84
loc_8C097C90:
	#data bank15.loc_8c155c90
loc_8C097C94:
	#data bank12.loc_8c129560
loc_8C097C98:
	#data bank12.loc_8c1294C8

;----------------------------------------------
loc_8C097C9C:
	mov 0x36,r2 ; r2 set to 0x36

loc_8C097C9E:
	mov.w @(loc_8C097DBE,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov.l @(loc_8C097DC8,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.b r2,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C097DC0,pc),r0; r0 set to 0x1D2, r0 set to 0x1D2
	mov.l @(0x18,r4),r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8C097CDa
	mov.w @(loc_8C097DC2,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r1
	mov.l @(loc_8C097DCC,pc),r0; r0 set to 0x8C155CA0, r0 set to 0x8C155CA0
	extu.b r1,r1
	shll2 r1
	shll2 r1
	bra loc_8C097CEa
	fmov.s @(r0,r1),fr3

loc_8C097CDA:
	mov.w @(loc_8C097DC2,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r2
	mov.l @(loc_8C097DCC,pc),r0; r0 set to 0x8C155CA0
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_8C097CEA:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C097DC0,pc),r0; r0 set to 0x1D2, r0 set to 0x1D2
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C097D08
	mov.w @(loc_8C097DC2,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r2
	mov.l @(loc_8C097DD0,pc),r0; r0 set to 0x8C155CA4, r0 set to 0x8C155CA4
	extu.b r2,r2
	shll2 r2
	shll2 r2
	bra loc_8C097D18
	fmov.s @(r0,r2),fr3

loc_8C097D08:
	mov.w @(loc_8C097DC2,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.l @(loc_8C097DD0,pc),r0; r0 set to 0x8C155CA4
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	fneg fr3

loc_8C097D18:
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	mov.l @(loc_8C097DCC,pc),r5 ; r5 set to 0x8C155CA0, r5 set to 0x8C155CA0
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C097DC2,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.l @(loc_8C097DD4,pc),r1 ; r1 set to 0x41D55555, r1 set to 0x41D55555
	mov.b @(r0,r4),r3
	mov 0x08,r0; r0 set to 0x08, r0 set to 0x08
	lds r1,fpul
	extu.b r3,r3
	mov.l @(loc_8C097DD8,pc),r1 ; r1 set to 0x431A4924, r1 set to 0x431A4924
	shll2 r3
	shll2 r3
	add r5,r3
	fmov.s @(r0,r3),fr3
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C097DC2,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov 0x0C,r0; r0 set to 0x0C, r0 set to 0x0c
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r5 ; r5 ??? bc r3 is ???, r5 ??? bc r3 is ???
	fmov.s @(r0,r5),fr3
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	lds r1,fpul
	mov 0x42,r5 ; r5 set to 0x42, r5 set to 0x42
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	mov.l @(loc_8C097DDC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fsts fpul,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov.w @(loc_8C097DC4,pc),r0; r0 set to 0x19C, r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19D, r0 set to 0x19d
	mov.b r5,@(r0,r4)
	add 0xA1,r0; r0 set to 0x13E, r0 set to 0x13e
	mov 0x40,r5 ; r5 set to 0x40, r5 set to 0x40
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x13F, r0 set to 0x13f
	mov.b r5,@(r0,r4)
	add 0xFD,r0; r0 set to 0x13C, r0 set to 0x13c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x13D, r0 set to 0x13d
	mov.b r5,@(r0,r4)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C097D88:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x24,r0
	mov.l @(0x50,PC),r4
	mov 0x00,r3
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @r4,r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c097dac
	mov.l @r4,r2
	mov.b @r2,r3
	add 0xFF,r3
	mov.b r3,@r2
	extu.b r3,r3
	tst r3,r3
	bf loc_8c097de8

loc_8C097DAC:
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c097de8
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c097e92
	mov.l @r15+,r14

;##############################################
loc_8C097DBE:
	#data 0x01A1
loc_8C097DC0:
	#data 0x01D2
loc_8C097DC2:
	#data 0x01A3
loc_8C097DC4:
	#data 0x019c
	#align4

loc_8C097DC8:
	#data 0x8C2896B0
loc_8C097DCC:
	#data bank15.loc_8c155cA0
loc_8C097DD0:
	#data bank15.loc_8c155cA4
loc_8C097DD4:
	#data 0x41D55555
loc_8C097DD8:
	#data 0x431A4924
loc_8C097DDC:
	#data bank03.loc_8c034e8c
loc_8c097de0:
	#data 0x8C28C664
loc_8C097DE4:
	#data bank03.loc_8c0332E0

;----------------------------------------------
loc_8C097DE8:
	mov.w @(0xEA,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c097df8
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c097e18

loc_8C097DF8:
	mov.l @(0xE0,PC),r2
	mov 0x00,r1
	mov.b @(0x4,r14),r0
	mov 0x17,r5
	mov 0x01,r6
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r2,r3
	mov.b r1,@r3
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c097e60
	mov.l @r15+,r14

loc_8C097E18:
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0xC4,PC),r3
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

loc_8C097E60:
	mov.l r14,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x24,r0; r0 set to 0x24
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C097EE4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0; r0??
	cmp/pz r0
	bt loc_8C097E8c
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C097EDA,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	bra loc_8C097E92
	mov.l @r15+,r14

loc_8C097E8C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c097e92:
	mov.w @(loc_8c097eda,pc),r0
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	mov.b @(0x01,r4),r0
	mov.l @(0x18,r4),r3
	mov r0,r2
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bf loc_8c097eaa
	mov.l @(loc_8C097EDC,pc),r3
	mov.l @r3,r2
	mov.b r5,@r2

loc_8c097eaa:
	mov.l @(loc_8c097eec,pc),r2
	jmp @r2
	nop

loc_8C097EB0:
	mov 0x21,r0; r0 set to 0x21
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C097EF0,pc),r0; r0 set to 0x8C155CC0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C097EC4:
	mov r4,r3
	mov.l @(loc_8C097EF4,pc),r1 ; r1 set to 0x8C155CCc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C097ED6:
	#data 0x019e
loc_8C097ED8:
	#data 0x019f
loc_8C097EDA:
	#data 0x012c
	#align4

loc_8c097edc:
	#data 0x8C28C668
loc_8C097EE0:
	#data bank03.loc_8c034e8c
loc_8C097EE4:
	#data bank03.loc_8c034dee
loc_8C097EE8:
	#data bank04.loc_8c045748
loc_8C097EEC:
	#data bank04.loc_8c0450C0
loc_8C097EF0:
	#data bank15.loc_8c155cC0
loc_8C097EF4:
	#data bank15.loc_8c155ccc

;==============================================
loc_8C097EF8:
	mov.w @(loc_8C098030,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C09803C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C098030,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C098032,pc),r0; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C098034,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C098040,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8C098044,pc),r1 ; r1 set to 0x8C28C668
	mov.b r3,@(r0,r4)
	mov.l @r1,r2
	mov r5,r0; r0 set to 0x01
	nop
	mov.b r0,@(0x01,r2)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov 0x38,r1 ; r1 set to 0x38
	mov.w @(loc_8C098036,pc),r2 ; r2 set to 0x1F9
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x00,r3 ; r3 set to 0x00
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	mov.b @(r0,r2),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_8C097F98
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C098048,pc),r3 ; r3 set to 0x43676DB6
	lds r3,fpul
	bra loc_8C097F9e
	fsts fpul,fr3

loc_8C097F98:
	mov.l @(loc_8C09804C,pc),r3 ; r3 set to 0x43340000
	lds r3,fpul
	fsts fpul,fr3

loc_8C097F9E:
	fmov.s @r1,fr2
	mov.w @(loc_8C098036,pc),r0; r0 set to 0x1F9, r0 set to 0x1F9
	fadd fr3,fr2
	fmov.s fr2,@r1
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r0; r0??? bc r5 is ???, r0??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_8C097FB8
	mov 0x34,r2 ; r2 set to 0x34, r2 set to 0x34
	mova @(loc_8C098050,pc),r0 ; r0 set to loc_8c098050, r0 set to loc_8c098050
	bra loc_8C097FBc
	fmov.s @r0,fr4

loc_8C097FB8:
	mova @(loc_8C098054,pc),r0 ; r0init to loc_8c098054
	fmov.s @r0,fr4

loc_8C097FBC:
	mov.w @(loc_8C098038,pc),r0; r0 set to 0x1D2, r0 set to 0x1D2
	mov.b @(r0,r5),r3
	tst r3,r3
	bt/s loc_8C097FCa
	add r4,r2
	bra loc_8C097FCe
	fmov fr4,fr3

loc_8C097FCA:
	fmov fr4,fr3
	fneg fr3

loc_8C097FCE:
	fldi0 fr4
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s @r2,fr2
	fadd fr3,fr2
	fmov.s fr2,@r2
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C098038,pc),r0; r0 set to 0x1D2, r0 set to 0x1D2
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C097FF6
	mova @(loc_8C098058,pc),r0 ; r0 set to loc_8c098058, r0 set to loc_8c098058
	bra loc_8C097FFa
	fmov.s @r0,fr3

loc_8C097FF6:
	mova @(loc_8C09805C,pc),r0 ; r0init to loc_8c09805c
	fmov.s @r0,fr3

loc_8C097FFA:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C098060,pc),r2 ; r2 set to 0x8C28C664, r2 set to 0x8C28C664
	fmov.s fr3,@(r0,r4)
	mov 0x42,r5 ; r5 set to 0x42, r5 set to 0x42
	mov.w @(loc_8C09803A,pc),r0; r0 set to 0x19C, r0 set to 0x19c
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19D, r0 set to 0x19d
	mov.b r5,@(r0,r4)
	mov 0x14,r0; r0 set to 0x14, r0 set to 0x14
	mov.w r0,@(0x1C,r4)
	mov 0x06,r0; r0 set to 0x06, r0 set to 0x06
	mov.l @r2,r3
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.b r0,@(0x01,r3)
	mov.l @(loc_8C098064,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	jmp @r3
	lds.l @r15+,pr

loc_8C09801E:
	mov r4,r3
	mov.l @(loc_8C098068,pc),r1 ; r1 set to 0x8C155CDc
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C098030:
	#data 0x00Dc
loc_8C098032:
	#data 0x012c
loc_8C098034:
	#data 0x01A3
loc_8C098036:
	#data 0x01F9
loc_8C098038:
	#data 0x01D2
loc_8C09803A:
	#data 0x019c
	#align4

loc_8C09803C:
	#data bank12.loc_8c129560
loc_8C098040:
	#data bank12.loc_8c1294C8
loc_8C098044:
	#data 0x8C28C668
loc_8C098048:
	#data 0x43676DB6
loc_8C09804C:
	#data 0x43340000
loc_8C098050:
	#data 0x42E2AAAa
loc_8C098054:
	#data 0x42F00000
loc_8C098058:
	#data 0x40555555
loc_8C09805C:
	#data 0xC0555555
loc_8C098060:
	#data 0x8C28C664
loc_8C098064:
	#data bank03.loc_8c034e8c
loc_8C098068:
	#data bank15.loc_8c155cdc

;==============================================
loc_8C09806C:
	mov.l r14,@-r15
	mov 0x24,r0; r0 set to 0x24
	mov.l r13,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8C09817C,pc),r3 ; r3 set to 0x8C034DEe
	mov 0x00,r13 ; r13 set to 0x00
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0; r0 set to 0x23
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0; r0??
	tst r0,r0
	bf loc_8C0980C6
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C098176,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_8C09809e
	bra loc_8C0980A0
	mov 0x50,r0

loc_8c09809e:
	mov 0x14,r0

loc_8c0980a0:
	mov.w r0,@(0x1C,r14)
	mov 0x3C,r2
	mov.w @(loc_8C098178,pc),r0
	mov.l @(loc_8C098180,pc),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C0980C6:
	lds.l @r15+,pr
	mov.l @(loc_8C098184,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0980D2:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x24,r0
	mov 0x00,r3
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.b @(0x5,r2),r0
	tst r0,r0
	bt loc_8c0980ea
	bsr loc_8c09831a
	mov r14,r4

loc_8C0980EA:
	mov.l @(0x90,PC),r3
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
	bf loc_8c09816c
	mov.b @(0x5,r14),r0
	mov 0x20,r5
	mov.l @(0x4C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r5
	bsr loc_8c097b64
	mov r14,r4
	mov 0x02,r5
	bsr loc_8c097b64
	mov r14,r4
	mov 0x32,r0
	mov.l @(0x38,PC),r2
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x02,r0
	mov.l @r2,r3
	mov 0x17,r5
	mov 0x03,r6
	mov.b r0,@(0x2,r3)
	mov.l @(0x28,PC),r3
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4

loc_8C09816C:
	lds.l @r15+,pr
	mov.l @(0x14,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C098176:
	#data 0x01A3
loc_8c098178:
	#data 0x01A1
	#align4

loc_8C09817C:
	#data bank03.loc_8c034dee
loc_8c098180:
	#data 0x8C2896B0
loc_8C098184:
	#data bank04.loc_8c045748
loc_8C098188:
	#data bank04.loc_8c042008
loc_8C09818c:
	#data 0x8C28C664
loc_8C098190:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C098194:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x24,r0
	mov.l r12,@-r15
	mov 0x00,r12
	sts.l pr,@-r15
	mov.b r12,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.b @(0x5,r3),r0
	tst r0,r0
	bt loc_8c0981b0
	bsr loc_8c09831a
	mov r14,r4

loc_8C0981B0:
	mov.l @(0x114,PC),r13
	mov.l @r13,r3
	mov.b @(0x2,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x2,r3)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0981d2
	mov.l @r13,r2
	mov 0x03,r0
	mov.b r0,@(0x2,r2)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov 0x1F,r2
	add 0x01,r3
	and r2,r3
	mov.b r3,@(r0,r14)

loc_8C0981D2:
	mov 0x22,r0
	mov.l @(0xF4,PC),r3
	mov.b @(r0,r14),r0
	mov 0x1F,r4
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and r0,r4
	shll8 r4
	shll2 r4
	jsr @r3
	shll r4
	mova @(0xE4,PC),r0
	mov.l @(0xE4,PC),r3
	fmov @r0,fr3
	mov 0x5C,r0
	mov 0x1F,r4
	fmul fr3,fr0
	fmov fr0,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and r0,r4
	shll8 r4
	shll2 r4
	jsr @r3
	shll r4
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x5C,r1
	fmul fr3,fr0
	add r14,r1
	fmov fr0,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	mov 0x68,r1
	add r14,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	mov 0x60,r1
	add r14,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	mov 0x6C,r1
	add r14,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	fadd fr2,fr1
	mov.l @(0x8C,PC),r3
	fmov fr1,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c098264
	bsr loc_8c09831a
	mov r14,r4

loc_8C098264:
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0982b4
	mov.l @r13,r3
	mov.b @(0x1,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r3)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0982b4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c09828a
	bsr loc_8c09831a
	mov r14,r4

loc_8C09828A:
	mov.l @r13,r3
	mov 0x06,r0
	mov.b r0,@(0x1,r3)
	mov 0x26,r3
	mov.w @(0x2E,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0x3C,PC),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C0982B4:
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0982c2:
	#data 0x019e
loc_8c0982c4:
	#data 0x01a1
	#align4

loc_8c0982c8:
	#data 0x8c28c664
loc_8C0982CC:
	#data bank11.loc_8c11E2E0
loc_8C0982d0:
	#data 0x3FD55555
loc_8C0982D4:
	#data bank11.loc_8c11E860
loc_8C0982D8:
	#data 0x40092492
loc_8C0982DC:
	#data bank03.loc_8c034dee
loc_8C0982e0:
	#data 0x8C2896B0
loc_8C0982E4:
	#data bank04.loc_8c045748

;==============================================
loc_8C0982E8:
	mov.l r14,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x24,r0; r0 set to 0x24
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C098434,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0; r0??
	cmp/pz r0
	bt loc_8C098308
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C09830e
	mov.l @r15+,r14

loc_8C098308:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C09830E:
	mov.w @(loc_8C098426,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C098438,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;===============================================
loc_8C09831A:
	mov.l @(0x120,PC),r2
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r0
	mov 0x04,r6
	mov.b r0,@(0x5,r4)
	mov.l @r2,r3
	mov.b r0,@(0x1,r3)
	mov.l @(0x114,PC),r3
	jmp @r3
	mov 0x17,r5

loc_8C098330:
	mov r4,r3
	mov.l @(loc_8C098444,pc),r1 ; r1 set to 0x8C155CE8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C098342:
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	mov.w @(loc_8C09842A,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C098428,pc),r0; r0 set to 0x12e
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r4)
	add 0xFF,r0; r0 set to 0x12d
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.w @(loc_8C09842A,pc),r3 ; r3 set to 0xDc
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	add r3,r2
	mov.l @(loc_8C098448,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add 0x93,r0; r0 set to 0xC0
	mov.w @(loc_8C098426,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09842C,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C09844C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x42,r6 ; r6 set to 0x42
	mov 0x02,r7 ; r7 set to 0x02
	mov.b r3,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x0A,r3 ; r3 set to 0x0a
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov.w @(loc_8C09842E,pc),r0; r0 set to 0x19c
	mov.b r6,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r6,@(r0,r4)
	mov 0x22,r0; r0 set to 0x22
	mov.b r3,@(r0,r4)
	mov 0x32,r0; r0 set to 0x32
	mov.w r0,@(0x1C,r4)
	mov r7,r0; r0 set to 0x02
	nop
	mov.l @(loc_8C098450,pc),r6 ; r6 set to 0x8C28C664
	mov.w r0,@(0x1E,r4)
	mov.l @r6,r3 ; r3 ??
	mov.b r0,@(0x02,r3)
	mov 0x06,r0; r0 set to 0x06
	mov.l @r6,r3
	mov 0x03,r6 ; r6 set to 0x03
	mov.b r0,@(0x01,r3)
	mov 0x3C,r3 ; r3 set to 0x3c
	mov.w @(loc_8C098430,pc),r0; r0 set to 0x1A1
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4
	mov.l @(loc_8C098454,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C098440,pc),r2 ; r2 set to 0x8C034E8c
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C098426:
	#data 0x012c
loc_8C098428:
	#data 0x012e
loc_8C09842A:
	#data 0x00Dc
loc_8C09842C:
	#data 0x01A3
loc_8C09842E:
	#data 0x019c
loc_8C098430:
	#data 0x01A1
	#align4

loc_8C098434:
	#data bank03.loc_8c034dee
loc_8C098438:
	#data bank04.loc_8c0450C0
loc_8C09843c:
	#data 0x8C28C668
loc_8C098440:
	#data bank03.loc_8c034e8c
loc_8C098444:
	#data bank15.loc_8c155cE8
loc_8C098448:
	#data bank12.loc_8c129560
loc_8C09844C:
	#data bank12.loc_8c1294C8
loc_8C098450:
	#data 0x8C28C664
loc_8C098454:
	#data 0x8C2896B0

;==============================================
loc_8C098458:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x24,r0
	mov.l r12,@-r15
	mov 0x00,r12
	sts.l pr,@-r15
	mov.b r12,@(r0,r14)
	mov.w @(0x13C,PC),r0
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r14)
	add 0xFF,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x4,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c098486
	bsr loc_8c098602
	mov r14,r4

loc_8C098486:
	mov.l @(0x128,PC),r13
	mov.l @r13,r3
	mov.b @(0x2,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x2,r3)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0984a8
	mov.l @r13,r2
	mov 0x03,r0
	mov.b r0,@(0x2,r2)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov 0x1F,r2
	add 0x01,r3
	and r2,r3
	mov.b r3,@(r0,r14)

loc_8C0984A8:
	mov 0x22,r0
	mov.l @(0x108,PC),r3
	mov.b @(r0,r14),r0
	mov 0x1F,r4
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and r0,r4
	shll8 r4
	shll2 r4
	jsr @r3
	shll r4
	mova @(0xF4,PC),r0
	mov.l @(0xF8,PC),r3
	fmov @r0,fr3
	mov 0x5C,r0
	mov 0x1F,r4
	fmul fr3,fr0
	fmov fr0,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and r0,r4
	shll8 r4
	shll2 r4
	jsr @r3
	shll r4
	mova @(0xDC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x5C,r1
	fmul fr3,fr0
	add r14,r1
	fmov fr0,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	mov 0x68,r1
	add r14,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	mov 0x60,r1
	add r14,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	mov 0x6C,r1
	add r14,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	fadd fr2,fr1
	mov.l @(0xA0,PC),r3
	fmov fr1,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c098542
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c098602
	mov.l @r15+,r14

loc_8C098542:
	mov.w @(0x64,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09859a
	mov.l @r13,r3
	mov.b @(0x1,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r3)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09859a
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c098570
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c09831a
	mov.l @r15+,r14

loc_8C098570:
	mov.l @r13,r3
	mov 0x06,r0
	mov.b r0,@(0x1,r3)
	mov 0x26,r3
	mov.w @(0x30,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0x40,PC),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C09859A:
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0985a8:
	#data 0x012e
loc_8c0985aa:
	#data 0x019e
loc_8c0985ac:
	#data 0x01a1
	#align4

loc_8c0985b0:
	#data 0x8C28C664
loc_8C0985B4:
	#data bank11.loc_8c11E2E0
loc_8C0985B8:
	#data 0x3FD55555
loc_8C0985BC:
#data bank11.loc_8c11E860
loc_8C0985c0:
	#data 0x40092492
loc_8C0985C4:
	#data bank03.loc_8c034dee
loc_8C0985c8:
	#data 0x8C2896B0
loc_8C0985CC:
	#data bank04.loc_8c045748

;==============================================
loc_8C0985D0:
	mov.l r14,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x24,r0; r0 set to 0x24
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09871C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0; r0??
	cmp/pz r0
	bt loc_8C0985F0
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0985F6
	mov.l @r15+,r14

loc_8C0985F0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0985F6:
	mov.w @(loc_8C098710,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C098720,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C098602:
	mov.l @(0x120,PC),r2
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r0
	mov 0x04,r6
	mov.b r0,@(0x5,r4)
	mov.l @r2,r3
	mov.b r0,@(0x1,r3)
	mov.l @(0x114,PC),r3
	jmp @r3
	mov 0x17,r5

loc_8C098618:
	mov r4,r3
	mov.l @(loc_8C09872C,pc),r1 ; r1 set to 0x8C155CF8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09862A:
	mov.w @(loc_8C098712,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C098730,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C098712,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C098710,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C098714,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C098734,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x42,r6 ; r6 set to 0x42
	mov 0x02,r7 ; r7 set to 0x02
	mov.b r3,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x14,r3 ; r3 set to 0x14
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov.w @(loc_8C098716,pc),r0; r0 set to 0x19c
	mov.b r6,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r6,@(r0,r4)
	mov 0x22,r0; r0 set to 0x22
	mov.b r3,@(r0,r4)
	mov 0x32,r0; r0 set to 0x32
	mov.w r0,@(0x1C,r4)
	mov r7,r0; r0 set to 0x02
	nop
	mov.l @(loc_8C098738,pc),r6 ; r6 set to 0x8C28C664
	mov.w r0,@(0x1E,r4)
	mov.l @r6,r3 ; r3 ??
	mov.b r0,@(0x02,r3)
	mov 0x06,r0; r0 set to 0x06
	mov.l @r6,r3
	mov 0x03,r6 ; r6 set to 0x03
	mov.b r0,@(0x01,r3)
	mov 0x3C,r3 ; r3 set to 0x3c
	mov.w @(loc_8C098718,pc),r0; r0 set to 0x1A1
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4
	mov.l @(loc_8C09873C,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C098728,pc),r2 ; r2 set to 0x8C034E8c
	jmp @r2
	lds.l @r15+,pr

loc_8C0986FE:
	mov r4,r3
	mov.l @(loc_8C098740,pc),r1 ; r1 set to 0x8C155D08
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C098710:
	#data 0x012c
loc_8C098712:
	#data 0x00Dc
loc_8C098714:
	#data 0x01A3
loc_8C098716:
	#data 0x019c
loc_8C098718:
	#data 0x01A1
	#align4

loc_8C09871C:
	#data bank03.loc_8c034dee
loc_8C098720:
	#data bank04.loc_8c0450C0
loc_8C098724:
	#data 0x8C28C668
loc_8C098728:
	#data bank03.loc_8c034e8c
loc_8C09872C:
	#data bank15.loc_8c155cF8
loc_8C098730:
	#data bank12.loc_8c129560
loc_8C098734:
	#data bank12.loc_8c1294C8
loc_8C098738:
	#data 0x8C28C664
loc_8C09873C:
	#data 0x8C2896B0
loc_8C098740:
	#data bank15.loc_8c155d08

;==============================================
loc_8C098744:
	mov.w @(loc_8C09889A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C0988AC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09889A,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C09889C,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09889E,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0988B0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8C0988B4,pc),r1 ; r1 set to 0x41D55555
	mov.b r3,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r4),r2
	lds r1,fpul
	fmov.s @(r0,r2),fr3
	mov.l @(loc_8C0988B8,pc),r1 ; r1 set to 0x431A4924
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	fsts fpul,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov 0x31,r0; r0 set to 0x31
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x43,r2 ; r2 set to 0x43
	mov.w @(loc_8C0988A0,pc),r0; r0 set to 0x19c
	mov 0x42,r3 ; r3 set to 0x42
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r3,@(r0,r4)
	add 0xA2,r0; r0 set to 0x13f
	mov 0x38,r2 ; r2 set to 0x38
	mov.b r2,@(r0,r4)
	add 0xFF,r0; r0 set to 0x13e
	mov.b r2,@(r0,r4)
	mova @(loc_8C0988BC,pc),r0 ; r0 set to loc_8c0988Bc
	fmov.s @r0,fr4
	mov 0x50,r0; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov 0x5C,r0; r0 set to 0x5c
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C0988A2,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bt loc_8C098828
	mova @(loc_8C0988C0,pc),r0 ; r0 set to loc_8c0988C0
	bra loc_8C09882c
	fmov.s @r0,fr1

loc_8C098828:
	mova @(loc_8C0988C4,pc),r0 ; r0init to loc_8c0988C4
	fmov.s @r0,fr1

loc_8C09882C:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr1,@(r0,r4)
	mov 0x47,r3 ; r3 set to 0x47, r3 set to 0x47
	mov.w @(loc_8C0988A4,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov 0x11,r6 ; r6 set to 0x11, r6 set to 0x11
	mov.b r3,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C0988C8,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x10,r2 ; r2 set to 0x10, r2 set to 0x10
	mov.w @(loc_8C0988A6,pc),r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r2,@(r0,r4)
	mov.l @(loc_8C0988CC,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	jmp @r2
	lds.l @r15+,pr

loc_8C098864:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x3C,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c098880
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c098888

loc_8C098880:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c098a74
	mov.l @r15+,r14

loc_8C098888:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x44,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C09889A:
	#data 0x00Dc
loc_8C09889C:
	#data 0x012c
loc_8C09889E:
	#data 0x01A3
loc_8C0988A0:
	#data 0x019c
loc_8C0988A2:
	#data 0x0130
loc_8C0988A4:
	#data 0x01A1
loc_8C0988A6:
	#data 0x01Ac
loc_8C0988A8:
	#data 0x0159
	#align4

loc_8C0988AC:
	#data bank12.loc_8c129560
loc_8C0988B0:
	#data bank12.loc_8c1294C8
loc_8C0988B4:
	#data 0x41D55555
loc_8C0988B8:
	#data 0x431A4924
loc_8C0988BC:
	#data 0x3FA00000
loc_8C0988C0:
	#data 0x41555555
loc_8C0988C4:
	#data 0xC1555555
loc_8C0988C8:
	#data 0x8C2896B0
loc_8C0988CC:
	#data bank03.loc_8c034e8c
loc_8C0988D0:
	#data bank03.loc_8c03340c
loc_8C0988D4:
	#data bank15.loc_8c155d18

;==============================================
loc_8C0988D8:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x68,r1
	fmov @(r0,r14),fr2
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
	fmov @r1,fr3
	mov 0x6C,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xEC,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c098976
	mov.w @(0xE6,PC),r0
	mov 0x48,r3
	mov 0x00,r13
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0xDC,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x10,r2
	mov.w @(0xC0,PC),r0
	mov.w r2,@(r0,r14)
	add 0x04,r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c098982
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0xB8,PC),r3
	mov 0x12,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov 0x0E,r0
	mov.w r0,@(0x1C,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)


loc_8C098976:
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C098982:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09898A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C098A14,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst 0x07,r0
	bf loc_8C098A4a
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0; r0 set to 0x00
	nop
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0; r0 set to 0xFFFFFFFf
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0; r0??
	cmp/pl r0
	bt loc_8C0989Cc
	mov.b @(0x05,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @(loc_8C098A1C,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x13,r6 ; r6 set to 0x13
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x48,r0; r0 set to 0x48
	mov.l r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	bra loc_8C098A4a
	nop

loc_8C0989CC:
	mov.w @(0x1C,r14),r0
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8C098A18,pc),r6 ; r6 set to 0x8C2896B0
	cmp/gt r5,r0
	bf loc_8C098A24
	mov.w @(0x1C,r14),r0
	tst r5,r0
	bt loc_8C098A06
	mov.w @(loc_8C098A10,pc),r0; r0 set to 0x1A1
	mov 0x47,r2 ; r2 set to 0x47
	mov.b r2,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r6,r3
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r2 ; r2 ??? bc r3 is ???
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov 0x10,r3 ; r3 set to 0x10
	mov.w @(loc_8C098A12,pc),r0; r0 set to 0x1Ac
	bra loc_8C098A4a
	mov.w r3,@(r0,r14)

loc_8C098A06:
	mov.w @(loc_8C098A10,pc),r0; r0 set to 0x1A1
	mov 0x48,r1 ; r1 set to 0x48
	bra loc_8C098A2a
	mov.b r1,@(r0,r14)

;##############################################
loc_8c098a0e:
	#data 0x019e
loc_8C098A10:
	#data 0x01A1
loc_8C098A12:
	#data 0x01Ac
	#align4

loc_8C098A14:
	#data bank03.loc_8c034dee
loc_8C098A18:
	#data 0x8C2896B0
loc_8C098A1C:
	#data bank03.loc_8c034e8c
loc_8C098A20:
	#data bank04.loc_8c045748

;==============================================
loc_8c098a24:
	mov.w @(loc_8C098A8C,pc),r0
	mov 0x49,r3
	mov.b r3,@(r0,r14)

loc_8c098a2a:
	mov.w @(loc_8C098A8E,pc),r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r6,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.w @(loc_8C098A8E,pc),r0
	mov.w r4,@(r0,r14)

loc_8C098A4A:
	lds.l @r15+,pr
	mov.l @(loc_8C098A94,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C098A54:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c098a6c
	mov.l @r15,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)

loc_8C098A6C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C098A74:
	mov 0x03,r0; r0 set to 0x03
	mov.l @(loc_8C098A9C,pc),r1 ; r1 set to 0x8C28C668
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C098A90,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov 0x01,r0; r0 set to 0x01
	mov.l @r1,r2
	mov.b r0,@(0x0D,r2)

loc_8C098A86:
	mov.l @(loc_8C098AA0,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c098a8c:
	#data 0x01A1
loc_8c098a8e:
	#data 0x01AC
loc_8C098A90:
	#data 0x012c
	#align4

loc_8C098A94:
	#data bank04.loc_8c045748
loc_8C098A98:
	#data bank03.loc_8c034dee
loc_8C098A9C:
	#data 0x8C28C668
loc_8C098AA0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c098aa4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x14E,PC),r12
	mov 0x00,r14
	mov.l @(0x158,PC),r11
	mov 0x02,r13
	mov.l r4,@r15

loc_8c098aba:
	mov 0x02,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c098ad8
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x148,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.b r14,@(r0,r4)
	mov 0x26,r0
	mov.w r12,@(r0,r4)

loc_8c098ad8:
	add 0x01,r14
	extu.b r14,r3
	cmp/ge r13,r3
	bf loc_8c098aba
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C098AF2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C098C04,pc),r2 ; r2 set to 0x2A4
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.l @(loc_8C098C1C,pc),r1 ; r1 set to 0x8C155D24
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C098C18,pc),r3 ; r3 set to 0x8C28C66c
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C098B10:
mov.l r8,@-r15
	mov.w @(loc_8C098C06,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C098C20,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C098C06,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C098C08,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C098C0A,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C098C24,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x42,r5 ; r5 set to 0x42
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C098C0C,pc),r0; r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov 0x00,r5 ; r5 set to 0x00
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C098C0E,pc),r0; r0 set to 0x130
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r4)
	mov 0x24,r0; r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov.w @(loc_8C098C0E,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C098BC2
	add r4,r8 ; r8 ??? bc r4 is ???
	mov 0x20,r3 ; r3 set to 0x20
	mov.l @(loc_8C098C28,pc),r1 ; r1 set to 0x8C155D34
	add r4,r3 ; r3 ??? bc r4 is ???
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r1 ; r1 ??? bc r3 is ???
	bra loc_8C098BD6
	fmov.s @r1,fr3

loc_8C098BC2:
	mov 0x20,r2 ; r2 set to 0x20
	mov.l @(loc_8C098C28,pc),r1 ; r1 set to 0x8C155D34
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.b @r2,r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r1 ; r1 ??? bc r2 is ???
	fmov.s @r1,fr3
	fneg fr3

loc_8C098BD6:
	mov 0x20,r3 ; r3 set to 0x20, r3 set to 0x20
	fmov.s @r8,fr2
	add r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	mov.l @(loc_8C098C2C,pc),r1 ; r1 set to 0x8C155D38, r1 set to 0x8C155D38
	fadd fr3,fr2
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	fmov.s fr2,@r8
	mov.b @r3,r3
	fmov.s @(r0,r4),fr2
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r1 ; r1 ??? bc r3 is ???, r1 ??? bc r3 is ???
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x20,r0; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C098C30
	bra loc_8C098C32
	mov 0x04,r0

;##############################################
loc_8C098C02:
	#data 0x2601
loc_8C098C04:
	#data 0x02A4
loc_8C098C06:
	#data 0x00Dc
loc_8C098C08:
	#data 0x012c
loc_8C098C0A:
	#data 0x01A3
loc_8C098C0C:
	#data 0x019c
loc_8C098C0E:
	#data 0x0130
	#align4

loc_8C098C10:
	#data bank04.loc_8c044F12
loc_8C098C14:
	#data loc_8c098AF2
loc_8C098C18:
	#data 0x8C28C66c
loc_8C098C1C:
	#data bank15.loc_8c155d24
loc_8C098C20:
	#data bank12.loc_8c129560
loc_8C098C24:
	#data bank12.loc_8c1294C8
loc_8C098C28:
	#data bank15.loc_8c155d34
loc_8C098C2C:
	#data bank15.loc_8c155d38


;==============================================
loc_8C098C30:
	mov 0x01,r0; r0 set to 0x01

loc_8C098C32:
	mov.w r0,@(0x1C,r4)
	mov 0x11,r6 ; r6 set to 0x11, r6 set to 0x11
	mov.w @(loc_8C098D1A,pc),r0; r0 set to 0x1A0, r0 set to 0x1A0
	mov.l @(loc_8C098D24,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b r5,@(r0,r4)
	add 0xFE,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r8

;==============================================
loc_8C098C48:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	mov 0x01,r4
	extu.b r0,r0
	cmp/ge r4,r0
	bf.s loc_8c098c7e
	mov.l @(0x18,r14),r6
	mov.b @(0x2,r14),r0
	mov r4,r3
	mov.l @(0xC8,PC),r2
	extu.b r0,r0
	mov.b @r2,r5
	xor r4,r0
	shad r0,r3
	extu.b r5,r5
	tst r5,r3
	bf loc_8c098ce4
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	shad r0,r4
	tst r4,r5
	bf loc_8c098ce4
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r6),r2
	tst r2,r2
	bf loc_8c098ce4


loc_8C098C7E:
	mov 0x24,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.b @(0x5,r3),r0
	tst r0,r0
	bf loc_8c098c94
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c098cb4

loc_8C098C94:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x90,PC),r1
	mov 0x17,r5
	add 0x01,r0
	mov.l @(0x84,PC),r3
	lds r1,fpul
	mov 0x04,r6
	mov.b r0,@(0x4,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jmp @r3
	mov.l @r15+,r14

loc_8c098cb4:
	mov.w @(0x62,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c098cd4
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pz r3
	bt loc_8c098ce4
	mov.b r4,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8C098CD4:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x54,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C098CE4:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C098CE8:
	mov.w @(0x34,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c098cfa
	mov 0x00,r4
	mov.b r4,@(r0,r14)

loc_8C098CFA:
	mov.l @(0x38,PC),r3
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt.s loc_8c098d12
	mov r14,r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C098D12:
	lds.l @r15+,pr
	mov.l @(0x20,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c098d1a:
	#data 0x01a0
loc_8c098d1c:
	#data 0x03f0
loc_8c098d1e:
	#data 0x019f
loc_8c098d20:
	#data 0x0141
	#align4

loc_8C098D24:
	#data bank03.loc_8c034e8c
loc_8C098D28:
	#data 0x8C2895F6
loc_8C098D2c:
	#data 0x42CDB6Db
loc_8C098D30:
	#data bank15.loc_8c155d44
loc_8C098D34:
	#data bank03.loc_8c034dee
loc_8C098D38:
	#data bank04.loc_8c045748

;==============================================
loc_8C098D3C:
	mov.l @(0xD8,PC),r2
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0xC,r3),r0
	tst r0,r0
	bt.s loc_8c098daa
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c098da0
	mov.b @(0x5,r14),r0
	mov 0x3F,r3
	fldi0 fr4
	mov 0x00,r4
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
	mov 0x12,r6
	mov.w @(0x96,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x94,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x84,PC),r2
	mov 0x15,r5
	jsr @r2
	mov r14,r4

loc_8C098DA0:
	lds.l @r15+,pr
	mov.l @(0x80,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C098DAA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C098DB0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C098E28,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C098E12,pc),r2 ; r2 set to 0x150
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.b @(0x01,r2),r0
	tst r0,r0
	bt loc_8C098E06
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C098E14,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_8C098DD8
	mova @(loc_8C098E2C,pc),r0 ; r0 set to loc_8c098E2c
	bra loc_8C098DDc
	fmov.s @r0,fr3

loc_8C098DD8:
	mova @(loc_8C098E30,pc),r0 ; r0init to loc_8c098E30
	fmov.s @r0,fr3

loc_8C098DDC:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C098E14,pc),r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C098DEe
	mova @(loc_8C098E34,pc),r0 ; r0 set to loc_8c098E34, r0 set to loc_8c098E34
	bra loc_8C098DF2
	fmov.s @r0,fr3

loc_8c098dee:
	mova @(loc_8C098E38,pc),r0
	fmov.s @r0,fr3

loc_8c098df2:
	mov 0x68,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C098E3C,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C098E40,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r14)

loc_8C098E06:
	lds.l @r15+,pr
	mov.l @(loc_8C098E24,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C098E10:
	#data 0x01A1
loc_8C098E12:
	#data 0x0150
loc_8C098E14:
	#data 0x0130
	#align4

loc_8C098E18:
	#data 0x8C28C66c
loc_8C098E1c:
	#data 0x8C2896B0
loc_8C098E20:
	#data bank03.loc_8c034e8c
loc_8C098E24:
	#data bank04.loc_8c045748
loc_8C098E28:
	#data bank03.loc_8c034dee
loc_8C098E2C:
	#data 0x41555555
loc_8C098E30:
	#data 0xC1555555
loc_8C098E34:
	#data 0xBEA00000
loc_8c098e38:
	#data 0x3EA00000
loc_8c098e3c:
	#data 0x40CDB6Db
loc_8c098e40:
	#data 0xBF4DB6Db

;==============================================
loc_8C098E44:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x138,PC),r3
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
	mov.w @(0xF2,PC),r0
	mov 0x3F,r6
	mov.l @(0xFC,PC),r5
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c098ebc
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x60,r0
	mov.b r6,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov 0x02,r0
	mov.w r0,@(0x1E,r14)

loc_8C098EBC:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c098ef0
	mov.w @(0xB4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c098ef0
	mov.w @(0xAE,PC),r0
	mov.b r6,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)

loc_8C098EF0:
	mov.w @(0x90,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c098f74
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x7C,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x70,PC),r0
	mov.b r6,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.w @(0x54,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c098f3c
	mova @(0x58,PC),r0
	bra loc_8c098f40
	fmov @r0,fr3

loc_8C098F3C:
	mova @(0x54,PC),r0
	fmov @r0,fr3

loc_8C098F40:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x3E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c098f52
	mova @(0x48,PC),r0
	bra loc_8c098f56
	fmov @r0,fr3

loc_8C098F52:
	mova @(0x48,PC),r0
	fmov @r0,fr3

loc_8C098F56:
	mov 0x68,r0
	mov.l @(0x4C,PC),r3
	fmov fr3,@(r0,r14)
	mova @(0x40,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x15,r5
	fmov fr3,@(r0,r14)
	mova @(0x3C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x13,r6
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C098F74:
	lds.l @r15+,pr
	mov.l @(0x34,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c098f7e:
	#data 0x0141
loc_8c098f80:
	#data 0x019e
loc_8c098f82:
	#data 0x01a1
loc_8c098f84:
	#data 0x041c
loc_8c098f86:
	#data 0x0130
	#align4

loc_8C098F88:
	#data bank03.loc_8c034dee
loc_8C098F8c:
	#data 0x8C2896B0
loc_8C098F90:
	#data 0x41AD5555
loc_8C098F94:
	#data 0xC1AD5555
loc_8C098F98:
	#data 0xBEA00000
loc_8C098F9c:
	#data 0x3EA00000
loc_8C098Fa0:
	#data 0x40CDB6Db
loc_8C098Fa4:
	#data 0xBF4DB6Db
loc_8C098FA8:
	#data bank03.loc_8c034e8c
loc_8C098FAC:
	#data bank04.loc_8c045748

loc_8C098FB0:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x13C,PC),r3
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
	mov.w @(0xF2,PC),r0
	mov 0x3F,r6
	mov.l @(0x100,PC),r5
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c099028
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x60,r0
	mov.b r6,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov 0x02,r0
	mov.w r0,@(0x1E,r14)

loc_8C099028:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c09905c
	mov.w @(0xB4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c09905c
	mov.w @(0xAE,PC),r0
	mov.b r6,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)

loc_8C09905C:
	mov.w @(0x90,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c099084
	mov.b @(0x5,r14),r0
	mov 0x15,r5
	mov 0x14,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x78,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x80,PC),r3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C099084:
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C09908E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0990F8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C0990F2,pc),r2 ; r2 set to 0x150
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.b @(0x01,r2),r0
	tst r0,r0
	bt loc_8C09913c
	mov.b @(0x05,r14),r0
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0990F2,pc),r3 ; r3 set to 0x150
	add 0x01,r0
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b r0,@(0x05,r14)
	mov r4,r0; r0 set to 0x00
	nop
	mov.b r0,@(0x01,r3)
	mov 0x3F,r3 ; r3 set to 0x3f
	mov.w @(loc_8C0990EE,pc),r0; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0990F4,pc),r0; r0 set to 0x1Ac
	mov.l @(loc_8C0990FC,pc),r3 ; r3 set to 0x8C2896B0
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x02,r0; r0 set to 0x02
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0990F6,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8C09910c
	mova @(loc_8C099108,pc),r0 ; r0 set to loc_8c099108
	bra loc_8C099110
	fmov.s @r0,fr3

;##############################################
loc_8C0990Ea:
	#data 0x0141
loc_8C0990Ec:
	#data 0x019e
loc_8C0990EE:
	#data 0x01A1
loc_8C0990f0:
	#data 0x041c
loc_8C0990F2:
	#data 0x0150
loc_8C0990F4:
	#data 0x01Ac
loc_8C0990F6:
	#data 0x0130
	#align4

loc_8C0990F8:
	#data bank03.loc_8c034dee
loc_8C0990FC:
	#data 0x8C2896B0
loc_8C099100:
	#data bank03.loc_8c034e8c
loc_8C099104:
	#data bank04.loc_8c045748
loc_8C099108:
	#data 0x41BAAAAa

;----------------------------------------------
loc_8C09910C:
	mova @(loc_8C099238,pc),r0 ; r0init to loc_8c099238
	fmov.s @r0,fr3

loc_8C099110:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09922E,pc),r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C099122
	mova @(loc_8C09923C,pc),r0 ; r0 set to loc_8c09923C, r0 set to loc_8c09923c
	bra loc_8C099126
	fmov.s @r0,fr3

loc_8c099122:
	mova @(loc_8C099240,pc),r0
	fmov.s @r0,fr3

loc_8c099126:
	mov 0x68,r0
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(loc_8c099244,pc),r3
	mov 0x29,r5
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C09913C:
	lds.l @r15+,pr
	mov.l @(loc_8C099248,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C099146:
	mov.w @(0xE6,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	add r14,r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x1,r0),r0
	cmp/eq 0x02,r0
	bf.s loc_8c09916e
	mov 0x00,r13
	mov.w @(0xD2,PC),r2
	add r14,r2
	mov r13,r0
	nop
	mov.b r0,@(0x1,r2)
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8C09916E:
	mov 0x5C,r1
	mov.l @(0xD8,PC),r3
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
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0991bc
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c099222
	mov.l @r15+,r14

loc_8C0991BC:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0991f4
	mov.w @(0x66,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0991f4
	mov.w @(0x60,PC),r0
	mov 0x3E,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x6C,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C0991F4:
	lds.l @r15+,pr
	mov.l @(0x50,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C099200:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C09924C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bf loc_8C09921a
	lds.l @r15+,pr
	mov.l @(loc_8C099248,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C09921A:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C099222
	mov.l @r15+,r14

loc_8C099222:
	mov.w @(loc_8C099236,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C099254,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C09922E:
	#data 0x0130
loc_8C099230:
	#data 0x0150
loc_8C099232:
	#data 0x019E
loc_8C099234:
	#data 0x01A1
loc_8C099236:
	#data 0x012c
	#align4

loc_8C099238:
	#data 0xC1BAAAAa
loc_8C09923C:
	#data 0xBF555555
loc_8c099240:
	#data 0x3F555555
loc_8C099244:
	#data bank04.loc_8c04223a
loc_8C099248:
	#data bank04.loc_8c045748
loc_8C09924C:
	#data bank03.loc_8c034dee
loc_8C099250:
	#data 0x8C2896B0
loc_8C099254:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c099258:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x168,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09928e
	mov r0,r4
	mov.l @(0x158,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.w @(0x134,PC),r3
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.l @r15,r2
	mov.l r4,@(0x14,r2)

loc_8c09928e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C099296:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0993B8,pc),r2 ; r2 set to 0x2A4
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov.w @(loc_8C0993BC,pc),r0; r0 set to 0x19f
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C0993D4,pc),r3 ; r3 set to 0x8C28C674
	mov.w @(loc_8C0993BA,pc),r1 ; r1 set to 0xCc
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8C0993D8,pc),r2 ; r2 set to 0x8C28C670
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r1,@r2 ; r2 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0993DC,pc),r1 ; r1 set to 0x8C155D60
	extu.b r0,r0; r0 set to 0x9f
	shll2 r0; r0 set to 0x27c
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_8C0992C2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0993BE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0993E0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0993BE,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C0993C0,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0993C2,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0993E4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0993E8,pc),r0; r0 set to 0x8C155D70
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C099352:
	mov.w @(loc_8C0993C4,pc),r0; r0 set to 0x19c
	mov 0x42,r5 ; r5 set to 0x42
	mov.l @(loc_8C0993D8,pc),r2 ; r2 set to 0x8C28C670
	mov.l r8,@-r15
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r4)
	add 0xBB,r0; r0 set to 0x158
	mov.l @(0x18,r4),r1
	mov.l @r2,r3
	mov.w @(r0,r1),r1
	mov 0x24,r0; r0 set to 0x24
	mov.w r1,@r3
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	mov.w @(loc_8C0993C6,pc),r0; r0 set to 0x1D2
	mov.b @(r0,r3),r1
	tst r1,r1
	bt/s loc_8C099386
	add r4,r8 ; r8 ??? bc r4 is ???
	mov.l @(loc_8C0993EC,pc),r1 ; r1 set to 0x42F00000
	lds r1,fpul
	bra loc_8C09938c
	fsts fpul,fr3

loc_8C099386:
	mov.l @(loc_8C0993F0,pc),r3 ; r3 set to 0xC2F00000
	lds r3,fpul
	fsts fpul,fr3

loc_8C09938C:
	fmov.s @r8,fr2
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l @(loc_8C0993F4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
	fadd fr3,fr2
	fmov.s fr2,@r8
	jmp @r3
	mov.l @r15+,r8

loc_8C09939C:
	mov.l @(0x18,r4),r1
	mov 0x20,r6 ; r6 set to 0x20
	mov.w @(loc_8C0993C8,pc),r0; r0 set to 0x158
	mov.l @(loc_8C0993D8,pc),r2 ; r2 set to 0x8C28C670
	mov.w @(r0,r1),r0; r0??? bc r1 is ???
	mov.l @r2,r3
	mov.w r0,@r3
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0993F4,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov 0x15,r5

;==============================================
loc_8c0993b6:
	#data 0x2602
loc_8C0993B8:
	#data 0x02A4
loc_8C0993BA:
	#data 0x00Cc
loc_8C0993BC:
	#data 0x019f
loc_8C0993BE:
	#data 0x00Dc
loc_8C0993C0:
	#data 0x012c
loc_8C0993C2:
	#data 0x01A3
loc_8C0993C4:
	#data 0x019c
loc_8C0993C6:
	#data 0x01D2
loc_8C0993C8:
	#data 0x0158
	#align4

loc_8C0993CC:
	#data bank04.loc_8c044F12
loc_8C0993D0:
	#data loc_8c099296
loc_8C0993D4:
	#data 0x8C28C674
loc_8C0993D8:
	#data 0x8C28C670
loc_8C0993DC:
	#data bank15.loc_8c155d60
loc_8C0993E0:
	#data bank12.loc_8c129560
loc_8C0993E4:
	#data bank12.loc_8c1294C8
loc_8C0993E8:
	#data bank15.loc_8c155d70
loc_8C0993EC:
	#data 0x42F00000
loc_8C0993F0:
	#data 0xC2F00000
loc_8C0993F4:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0993F8:
	mov.l @(0x18,r4),r1
	mov.w @(loc_8C099520,pc),r0; r0 set to 0x158
	mov.l @(loc_8C099528,pc),r2 ; r2 set to 0x8C28C670
	mov.w @(r0,r1),r0; r0??? bc r1 is ???
	mov.l @r2,r3
	mov.w r0,@r3
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r3 ; r3 set to 0x00
	mov r0,r6 ; r6 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09952C,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov 0x15,r5

loc_8C099412:
	mov 0x20,r0; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C099530,pc),r0; r0 set to 0x8C155D7c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C099426:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C099522,pc),r0; r0 set to 0x19c
	mov 0x42,r4 ; r4 set to 0x42
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r2
	mov 0x34,r8 ; r8 set to 0x34
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.w @(loc_8C099524,pc),r0; r0 set to 0x1D2
	mov.b @(r0,r3),r2
	tst r2,r2
	bt/s loc_8C099464
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C099534,pc),r1 ; r1 set to 0x42F00000
	lds r1,fpul
	bra loc_8C09946a
	fsts fpul,fr3

loc_8C099464:
	mov.l @(loc_8C099538,pc),r2 ; r2 set to 0xC2F00000
	lds r2,fpul
	fsts fpul,fr3

loc_8C09946A:
	mov.l @(loc_8C099528,pc),r2 ; r2 set to 0x8C28C670, r2 set to 0x8C28C670
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???, r2 ??? bc r8 is ???
	mov.w @(loc_8C099520,pc),r0; r0 set to 0x158, r0 set to 0x158
	fadd fr3,fr2
	fmov.s fr2,@r8
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0; r0??? bc r3 is ???, r0??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C09948a
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	bra loc_8C09956c
	mov.l @r15+,r14

loc_8C09948A:
	mov.l @(loc_8C09953C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C099540,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r8
	jmp @r2
	mov.l @r15+,r14

loc_8C09949C:
	mov.l r14,@-r15
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C099528,pc),r2 ; r2 set to 0x8C28C670
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @r2,r3
	mov.w @(loc_8C099520,pc),r0; r0 set to 0x158
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0; r0??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C0994Cc
	mov r14,r4
	bra loc_8C09956c
	mov.l @r15+,r14

loc_8C0994CC:
	mov.l @(0x18,r14),r2
	mov.w @(loc_8C099526,pc),r0; r0 set to 0x140
	mov.b @(r0,r2),r1
	mov.b @(r0,r14),r3
	cmp/eq r1,r3
	bt loc_8C0994Ec
	mov.l @(0x18,r14),r6
	mov r14,r4
	mov.l @(loc_8C09952C,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x15,r5 ; r5 set to 0x15
	mov.b @(r0,r6),r6
	mov.l @(loc_8C099544,pc),r0; r0 set to 0x8C155D88
	shar r6
	mov.b @(r0,r6),r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0994EC:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0994F0:
	mov.l r14,@-r15
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C099528,pc),r2 ; r2 set to 0x8C28C670
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @r2,r3
	mov.w @(loc_8C099520,pc),r0; r0 set to 0x158
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0; r0??? bc r3 is ???
	cmp/eq r0,r1
	bt loc_8C099548
	mov r14,r4
	bra loc_8C09956c
	mov.l @r15+,r14

;##############################################
loc_8C099520:
	#data 0x0158
loc_8C099522:
	#data 0x019c
loc_8C099524:
	#data 0x01D2
loc_8C099526:
	#data 0x0140
	#align4

loc_8C099528:
	#data 0x8C28C670
loc_8C09952C:
	#data bank03.loc_8c034e8c
loc_8C099530:
	#data bank15.loc_8c155d7c
loc_8C099534:
	#data 0x42F00000
loc_8C099538:
	#data 0xC2F00000
loc_8C09953C:
	#data bank03.loc_8c034dee
loc_8C099540:
	#data bank04.loc_8c045748
loc_8C099544:
	#data bank15.loc_8c155d88

;==============================================
loc_8C099548:
	mov.l @(0x18,r14),r2
	mov.w @(loc_8C09957E,pc),r0; r0 set to 0x140
	mov.b @(r0,r2),r1
	mov.b @(r0,r14),r3
	cmp/eq r1,r3
	bt loc_8C099568
	mov.l @(0x18,r14),r6
	mov r14,r4
	mov.l @(loc_8C099588,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x15,r5 ; r5 set to 0x15
	mov.b @(r0,r6),r6
	mov.l @(loc_8C099584,pc),r0; r0 set to 0x8C155D8c
	shar r6
	mov.b @(r0,r6),r6
	jmp @r3
	mov.l @r15+,r14

loc_8C099568:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09956C:
	mov.b @(0x06,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mov.w @(loc_8C099580,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C099578:
	mov.l @(loc_8C09958C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09957E:
	#data 0x0140
loc_8C099580:
	#data 0x012c
	#align4

loc_8C099584:
	#data bank15.loc_8c155d8c
loc_8C099588:
	#data bank03.loc_8c034e8c
loc_8C09958C:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8C099590:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x118,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0995c8
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x108,PC),r3
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	mov.w @(0xF4,PC),r3
	mov.b r2,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xE8,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(0xE6,PC),r0
	mov.w r2,@(r0,r4)

loc_8c0995c8:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0995D4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C099BAe
	mov r4,r14
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0995F6
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0996BC,pc),r1 ; r1 set to 0x8C155D90
	extu.b r0,r0; r0 set to 0x20
	lds.l @r15+,pr
	shll2 r0; r0 set to 0x80
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0995F6:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0996C0,pc),r1 ; r1 set to 0x8C155DA0
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C099608:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8C0996AE,pc),r3 ; r3 set to 0xCc
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@(0x04,r15)
	mov.w @(loc_8C0996B0,pc),r3 ; r3 set to 0x2A4
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @(0x18,r14),r13
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.l r3,@r15
	bsr loc_8C099A90
	mov r14,r4
	mov.l @(0x04,r15),r3
	mov.w @(loc_8C0996AC,pc),r0; r0 set to 0x158
	mov.w @r3,r2
	mov.w @(r0,r13),r3
	cmp/eq r3,r2
	bt loc_8C09963c
	mov 0x02,r0; r0 set to 0x02
	bra loc_8C099670
	mov.b r0,@(0x04,r14)

loc_8c09963c:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09964a
	mov.l @r15,r3
	mov 0x01,r0
	mov.b r0,@(0x02,r3)

loc_8c09964a:
	mov.w @(loc_8C0996B2,pc),r0
	mov r13,r5
	mov.l @(loc_8c0996c4,pc),r2
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
	bsr loc_8c099b12
	mov r14,r4
	mov 0x20,r0
	mov.w r0,@(0x1E,r14)

loc_8C099670:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09967A:
	mov.l r14,@-r15
	mov 0x24,r0; r0 set to 0x24
	mov 0x0B,r3 ; r3 set to 0x0b
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0996C8,pc),r1 ; r1 set to 0x8C155DB0
	extu.b r0,r0; r0 set to 0x24
	shll2 r0; r0 set to 0x90
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_8C099694:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0996CC,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8C0996D0
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C099798
	mov.l @r15+,r14

;##############################################
loc_8C0996Aa:
	#data 0x2700
loc_8C0996AC:
	#data 0x0158
loc_8C0996AE:
	#data 0x00Cc
loc_8C0996B0:
	#data 0x02A4
loc_8c0996b2:
	#data 0x01A3
	#align4

loc_8C0996B4:
	#data bank04.loc_8c044F12
loc_8C0996B8:
	#data loc_8c0995D4
loc_8C0996BC:
	#data bank15.loc_8c155d90
loc_8C0996C0:
	#data bank15.loc_8c155dA0
loc_8C0996C4:
	#data bank13.loc_8c13AFBc
loc_8C0996C8:
	#data bank15.loc_8c155dB0
loc_8C0996CC:
	#data bank03.loc_8c03340c

;----------------------------------------------
loc_8c0996d0:
	mov.w @(loc_8C09980E,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0996e4
	mov.w @(loc_8C099810,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0996f8
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c0996e4:
	mov 0x5C,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	bra loc_8c099728
	fmov.s fr4,@(r0,r14)

loc_8c0996f8:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c099730
	fldi1 fr4
	fadd fr4,fr4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)

loc_8c099728:
	lds.l @r15+,pr 
	mov r14,r4
	bra loc_8c09975c
	mov.l @r15+,r14

loc_8c099730:
	mov 0x5C,r1
	mov.l @(loc_8c099818,pc),r3
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
	lds.l @r15+,pr 
	mov.l @(loc_8c09981c,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c09975c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C099812,pc),r3
	mov.l @(0x18,r14),r13
	mov 0x15,r5
	mov 0x0D,r6
	add r13,r3
	mov.l r3,@r15
	mov.b @(0x05,r14),r0
	mov.l @(loc_8c099820,pc),r3
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x01,r14),r0
	mov r0,r3
	mov.b @(0x01,r13),r0
	cmp/eq r0,r3
	bf loc_8c09978e
	mov.l @r15,r3
	mov 0x00,r0
	mov.b r0,@(0x02,r3)

loc_8c09978e:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c099798:
	mov 0x02,r0
	mov.w @(0x74,PC),r6
	mov.b r0,@(0x4,r4)
	mov.b @(0x1,r4),r0
	mov.l @(0x18,r4),r5
	mov r0,r3
	mov.b @(0x1,r5),r0
	cmp/eq r0,r3
	bf.s loc_8c0997b0
	add r5,r6
	mov 0x00,r0
	mov.b r0,@(0x2,r6)

loc_8c0997b0:
	rts
	nop

;----------------------------------------------
loc_8c0997b4:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x58,PC),r3
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
	bt loc_8c099808
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r14)

loc_8c099808:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09980E:
	#data 0x019E
loc_8C099810:
	#data 0x019F
loc_8C099812:
	#data 0x02A4
loc_8C099814:
	#data 0x012C
	#align4

loc_8c099818:
	#data bank03.loc_8c034dee
loc_8c09981c:
	#data bank04.loc_8c045748
loc_8c099820:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C099824:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C099958,pc),r3 ; r3 set to 0xCc
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @(0x18,r14),r13
	bsr loc_8C099A90
	mov r14,r4
	mov.l @r15,r2
	mov.w @(loc_8C09995A,pc),r0; r0 set to 0x158
	mov.w @r2,r3
	mov.w @(r0,r13),r2
	cmp/eq r2,r3
	bt loc_8C099852
	mov 0x02,r0; r0 set to 0x02
	bra loc_8C099878
	mov.b r0,@(0x04,r14)

loc_8C099852:
	mov.w @(loc_8C09995C,pc),r0; r0 set to 0x1A3
	mov r13,r5
	mov.l @(loc_8C099964,pc),r2 ; r2 set to 0x8C13AFBc
	mov.b @(r0,r14),r6
	mov 0x20,r0; r0 set to 0x20
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
	bsr loc_8C099B12
	mov r14,r4
	mov 0x18,r0; r0 set to 0x18
	mov.w r0,@(0x1E,r14)

loc_8C099878:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C099882:
	mov.l r14,@-r15
	mov 0x24,r0; r0 set to 0x24
	mov 0x0B,r3 ; r3 set to 0x0b
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C099968,pc),r1 ; r1 set to 0x8C155DB8
	extu.b r0,r0; r0 set to 0x24
	shll2 r0; r0 set to 0x90
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_8C09989C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C09996C,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov.l @(0x18,r14),r13
	tst r0,r0
	bf loc_8C0998Bc
	lds.l @r15+,pr
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8C0999F8
	mov.l @r15+,r14

loc_8C0998BC:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C0998Ee
	fldi1 fr4
	fadd fr4,fr4
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	bra loc_8C099924
	fmov.s fr2,@(r0,r14)

loc_8c0998ee:
	mov.w @(loc_8C09995E,pc),r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt/s loc_8c099918
	fldi0 fr15
	mov.w @(loc_8C09995E,pc),r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0
	fmov.s fr15,@(r0,r14)
	mov 0x60,r0
	fmov.s fr15,@(r0,r14)
	mov 0x68,r0
	fmov.s fr15,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr15,@(r0,r14)
	bsr loc_8c0999bc
	mov r14,r4

loc_8c099918:
	mov.w @(loc_8C099960,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c099930
	bra loc_8c09993c
	nop

loc_8C099924:
	lds.l @r15+,pr
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8C0999Bc
	mov.l @r15+,r14

;==============================================
loc_8C099930:
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c099970
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8C09993C:
	mov 0x5C,r0
	mov r14,r4
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	bra loc_8c0999bc
	mov.l @r15+,r14

;##############################################
loc_8C099958:
	#data 0x00Cc
loc_8C09995A:
	#data 0x0158
loc_8C09995C:
	#data 0x01A3
loc_8c09995e:
	#data 0x041c
loc_8c099960:
	#data 0x019e
loc_8c099962:
	#data 0x019F
	#align4

loc_8C099964:
	#data bank13.loc_8c13AFBc
loc_8C099968:
	#data bank15.loc_8c155dB8
loc_8C09996C:
	#data bank03.loc_8c03340c

;==============================================
loc_8C099970:
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
	mov.l @(0xD0,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0999bc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C099A7A,pc),r3
	mov.l @(0x18,r14),r13
	mov 0x15,r5
	mov 0x12,r6
	add r13,r3
	mov.l r3,@r15
	mov.b @(0x05,r14),r0
	mov.l @(loc_8c099a88,pc),r3
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x01,r14),r0
	mov r0,r3
	mov.b @(0x01,r13),r0
	cmp/eq r0,r3
	bf loc_8c0999ee
	mov.l @r15,r3
	mov 0x00,r0
	mov.b r0,@(0x02,r3)

loc_8c0999ee:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0999f8:
	mov 0x02,r0
	mov.w @(0x7C,PC),r6
	mov.b r0,@(0x4,r4)
	mov.b @(0x1,r4),r0
	mov.l @(0x18,r4),r5
	mov r0,r3
	mov.b @(0x1,r5),r0
	cmp/eq r0,r3
	bf.s loc_8c099a10
	add r5,r6
	mov 0x00,r0
	mov.b r0,@(0x2,r6)

loc_8c099a10:
	rts
	nop

;----------------------------------------------
loc_8c099a14:
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
	bt loc_8c099a68
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x14,PC),r0
	mov.b r3,@(r0,r14)

loc_8c099a68:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C099A6E:
	mov.w @(loc_8C099A7C,pc),r0; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r4)

loc_8C099A74:
	mov.l @(loc_8C099A8C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c099a7a:
	#data 0x02A4
loc_8C099A7C:
	#data 0x012c
	#align4

loc_8C099A80:
	#data bank03.loc_8c034dee
loc_8C099A84:
	#data bank04.loc_8c045748
loc_8C099A88:
	#data bank03.loc_8c034e8c
loc_8C099A8C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C099A90:
	mov.w @(loc_8C099BB2,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C099BB2,pc),r0; r0 set to 0xDc
	sts.l pr,@-r15
	mov.l @(0x18,r4),r2
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C099BC4,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C099BB4,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C099BB6,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C099BC8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x20,r2 ; r2 set to 0x20
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov 0x24,r3 ; r3 set to 0x24
	mov.w @(loc_8C099BB8,pc),r0; r0 set to 0x13d
	mov.b r2,@(r0,r4)
	add 0xFF,r0; r0 set to 0x13c
	mov.b r2,@(r0,r4)
	add 0x03,r0; r0 set to 0x13f
	mov.b r3,@(r0,r4)
	add 0xFF,r0; r0 set to 0x13e
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.b r3,@(r0,r4)
	mov r3,r0; r0 set to 0x24
	nop
	lds.l @r15+,pr
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8c099b12:
	mov 0x34,r0
	mov.l r14,@-r15
	fmov.s @(r0,r5),fr3
	mov r6,r14
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @r14,r3
	mov.w @(0x04,r14),r0
	lds r3,fpul 
	mov r0,r3
	mov.w @(loc_8C099BBA,pc),r0
	float fpul,fr4
	mov.w @(r0,r5),r2
	lds r3,fpul 
	tst r2,r2
	bt/s loc_8c099b3c
	float fpul,fr5
	fneg fr4
	fneg fr5

loc_8c099b3c:
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r2
	add r4,r2
	fadd fr5,fr3
	mov 0x42,r5
	fmov.s fr3,@(r0,r4)
	mov.w @(0x06,r14),r0
	fmov.s @r2,fr2
	mov r0,r3
	lds r3,fpul 
	mov 0x5C,r0
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	fmov.s fr4,@(r0,r4)
	mov.w @(0x02,r14),r0
	mov r0,r3
	lds r3,fpul 
	mov 0x60,r0
	float fpul,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C099BBC,pc),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	mov.b @(0x09,r14),r0
	mov.w @(loc_8C099BBE,pc),r1
	mov 0x00,r5
	mov.l @(loc_8C099BCC,pc),r3
	add r4,r1
	mov.b r0,@r1
	mov.w @(loc_8C099BC0,pc),r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov 0x15,r5
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.b @(0x08,r14),r0
	mov.l @(loc_8c099bd0,pc),r2
	extu.b r0,r6
	jmp @r2
	mov.l @r15+,r14

loc_8C099BAE:
	rts
	nop

;----------------------------------------------
loc_8C099BB2:
	#data 0x00Dc
loc_8C099BB4:
	#data 0x012c
loc_8C099BB6:
	#data 0x01A3
loc_8C099BB8:
	#data 0x013d
loc_8c099bba:
	#data 0x0130
loc_8c099bbc:
	#data 0x019c
loc_8c099bbe:
	#data 0x01A1
loc_8c099bc0:
	#data 0x01Ac
	#align4

loc_8C099BC4:
	#data bank12.loc_8c129560
loc_8C099BC8:
	#data bank12.loc_8c1294C8
loc_8c099bcc:
	#data 0x8C2896B0
loc_8C099BD0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C099BD4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C099CEE,pc),r0; r0 set to 0x255
	mov r4,r14
	mov.b r5,@r15
	mov.b @(r0,r14),r0; r0??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8C099C06
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8C099C06
	mov.l @(loc_8C099CF8,pc),r2 ; r2 set to 0x8C044F12
	mov 0x02,r5 ; r5 set to 0x02
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r2
	mov r6,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C099C46
	mov r0,r4 ; r4 ??? bc r0is ???
	mov.l @(loc_8C099CFC,pc),r2 ; r2 set to loc_8c09AE90
	bra loc_8C099C1a
	mov.l r2,@(0x10,r4)

loc_8C099C06:
	mov.l @(loc_8C099CF8,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r5 ; r5 set to 0x01
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r3
	mov r6,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C099C46
	mov r0,r4 ; r4 ??? bc r0is ???
	mov.l @(loc_8C099D00,pc),r3 ; r3 set to loc_8c099CAe
	mov.l r3,@(0x10,r4)

loc_8C099C1A:
	mov 0x20,r0; r0 set to 0x20, r0 set to 0x20
	mov.w @(loc_8C099CF0,pc),r3 ; r3 set to 0x2800, r3 set to 0x2800
	mov.w @(loc_8C099CF2,pc),r5 ; r5 set to 0x88, r5 set to 0x88
	mov.l r14,@(0x18,r4)
	mov.b @r15,r2
	add r4,r5 ; r5 ??? bc r4 is ???, r5 ??? bc r4 is ???
	mov.b r2,@(r0,r4)
	mov 0x26,r0; r0 set to 0x26, r0 set to 0x26
	mov.w r3,@(r0,r4)
	mov.b @(0x01,r14),r0
	mov.b r0,@(0x01,r4)
	extu.b r0,r0; r0 set to 0x26, r0 set to 0x26
	mov.w r0,@(0x02,r5)
	mov.w @(loc_8C099CF4,pc),r0; r0 set to 0x158, r0 set to 0x158
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov.w r3,@r5
	mov r4,r0; r0??? bc r4 is ???, r0??? bc r4 is ???
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C099C46:
	mov 0x00,r0; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C099C50:
	mov.l r14,@-r15
	mov 0x02,r6 ; r6 set to 0x02
	sts.l pr,@-r15
	mov.l @(loc_8C099CF8,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r14
	jsr @r3
	mov 0x01,r5 ; r5 set to 0x01
	tst r0,r0
	bt/s loc_8C099CA6
	mov r0,r4
	mov.w @(loc_8C099CF6,pc),r0; r0 set to 0x19e
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C099CF2,pc),r6 ; r6 set to 0x88
	mov.l @(loc_8C099D00,pc),r3 ; r3 set to loc_8c099CAe
	add r14,r6 ; r6 ??? bc r14 is ???
	mov.w @(loc_8C099CF0,pc),r2 ; r2 set to 0x2800
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19f
	mov.b r5,@(r0,r4)
	mov.w @(0x10,r6),r0
	mov.w @(loc_8C099CF2,pc),r5 ; r5 set to 0x88
	mov r0,r3 ; r3 set to 0x19f
	add 0x05,r3 ; r3 set to 0x1A4
	mov 0x20,r0; r0 set to 0x20
	mov.b r3,@(r0,r4)
	mov 0x26,r0; r0 set to 0x26
	mov.w r2,@(r0,r4)
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	extu.b r0,r0
	mov.w r0,@(0x02,r5)
	mov.w @(loc_8C099CF4,pc),r0; r0 set to 0x158
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.w r3,@r5
	mov r4,r0; r0??? bc r4 is ???
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C099CA6:
	mov 0x00,r0; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C099CAE:
	mov 0x20,r0; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C099D04,pc),r0; r0 set to 0x8C155DC0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C099CC2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C099CF2,pc),r5 ; r5 set to 0x88
	mov.w @(loc_8C099CF4,pc),r0; r0 set to 0x158
	mov.l @(0x18,r14),r4
	add r14,r5 ; r5 ??? bc r14 is ???
	mov.w @r5,r2
	mov.w @(r0,r4),r3
	cmp/eq r2,r3
	bt loc_8C099CDe
	mov.l @(loc_8C099D08,pc),r2 ; r2 set to loc_8c09AF14
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C099CDE:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C099D0C,pc),r1 ; r1 set to 0x8C155DEc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;##############################################
loc_8C099CEE:
	#data 0x0255
loc_8C099CF0:
	#data 0x2800
loc_8C099CF2:
	#data 0x0088
loc_8C099CF4:
	#data 0x0158
loc_8C099CF6:
	#data 0x019e
	#align4

loc_8C099CF8:
	#data bank04.loc_8c044F12
loc_8C099CFC:
	#data loc_8c09AE90
loc_8C099D00:
	#data loc_8c099CAe
loc_8C099D04:
	#data bank15.loc_8c155dC0
loc_8C099D08:
	#data loc_8c09AF14
loc_8C099D0C:
	#data bank15.loc_8c155dEc

;==============================================
loc_8C099D10:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C099E3E,pc),r3 ; r3 set to 0x88
	add 0x01,r0
	mov.w @(loc_8C099E40,pc),r1 ; r1 set to 0xDc
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C099E40,pc),r0; r0 set to 0xDc
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C099E4C,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C099E42,pc),r0; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C099E44,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C099E50,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8C099E54,pc),r1 ; r1 set to 0x8C13AFE4
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C099E42,pc),r0; r0 set to 0x12c
	mov.l @(loc_8C099E58,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r4,@(r0,r14)
	mov 0xFF,r0; r0 set to 0xFFFFFFFf
	mov.w r0,@(0x1C,r14)
	mov.l @r15,r6
	mov.b @(0x0D,r6),r0
	extu.b r0,r0; r0 set to 0xFf
	mov.b @(r0,r1),r6
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C099DA6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x34,r0; r0 set to 0x34
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)

loc_8C099DC2:
	mov.w @(loc_8C099E46,pc),r4 ; r4 set to 0x150, r4 set to 0x150
	mov.w @(loc_8C099E48,pc),r3 ; r3 set to 0xFE, r3 set to 0xFe
	add r13,r4 ; r4 ??? bc r13 is ???, r4 ??? bc r13 is ???
	mov.b @(0x01,r4),r0
	mov r0,r4 ; r4 set to 0x24
	and r3,r4 ; r4 ??
	exts.b r4,r2
	tst r2,r2
	bf loc_8C099DDe
	mov.w @(loc_8C099E42,pc),r0; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r1 ; r1 set to 0x00, r1 set to 0x00
	mov.b r1,@(r0,r14)
	bra loc_8C099E0a
	nop

loc_8C099DDE:
	exts.b r4,r5
	cmp/pz r5
	bt loc_8C099DF0
	lds.l @r15+,pr
	mov.l @(loc_8C099E5C,pc),r2 ; r2 set to loc_8c09AF14
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C099DF0:
	mov.w @(loc_8C099E46,pc),r2 ; r2 set to 0x150
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.b @(0x01,r2),r0
	cmp/eq r5,r0
	bt loc_8C099E04
	mov.l @(loc_8C099E60,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	bra loc_8C099DC2
	nop

loc_8C099E04:
	mov.w @(loc_8C099E42,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r14)

loc_8C099E0A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C099E12:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C099E3E,pc),r5 ; r5 set to 0x88
	mov.w @(loc_8C099E4A,pc),r0; r0 set to 0x158
	mov.l @(0x18,r14),r4
	add r14,r5 ; r5 ??? bc r14 is ???
	mov.w @r5,r2
	mov.w @(r0,r4),r3
	cmp/eq r2,r3
	bt loc_8C099E2e
	mov.l @(loc_8C099E5C,pc),r2 ; r2 set to loc_8c09AF14
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C099E2E:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C099E64,pc),r1 ; r1 set to 0x8C155DF4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C099E3E:
	#data 0x0088
loc_8C099E40:
	#data 0x00Dc
loc_8C099E42:
	#data 0x012c
loc_8C099E44:
	#data 0x01A3
loc_8C099E46:
	#data 0x0150
loc_8C099E48:
	#data 0x00Fe
loc_8C099E4A:
	#data 0x0158
	#align4

loc_8C099E4C:
	#data bank12.loc_8c129560
loc_8C099E50:
	#data bank12.loc_8c1294C8
loc_8C099E54:
	#data bank13.loc_8c13AFE4
loc_8C099E58:
	#data bank03.loc_8c034e8c
loc_8C099E5C:
	#data loc_8c09AF14
loc_8C099E60:
	#data bank03.loc_8c034dee
loc_8C099E64:
	#data bank15.loc_8c155dF4

;==============================================
loc_8C099E68:
	mov.w @(loc_8C099FCE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C099FD8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C099FCE,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C099FD0,pc),r0; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C099FD2,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C099FDC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x16,r6 ; r6 set to 0x16
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8C099FE0,pc),r1 ; r1 set to 0x41892492
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C099FD0,pc),r0; r0 set to 0x12c
	lds r1,fpul
	mov.b r5,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r3
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C099FE4,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r4)
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C099EF2:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0; r0 set to 0x34
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x00,r3 ; r3 set to 0x00
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C099FE8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0; r0??
	cmp/pz r0
	bt loc_8C099F1c
	lds.l @r15+,pr
	mov.l @(loc_8C099FEC,pc),r3 ; r3 set to loc_8c09AF14
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C099F1C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C099F22:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C099FD4,pc),r5 ; r5 set to 0x88
	mov.w @(loc_8C099FD6,pc),r0; r0 set to 0x158
	mov.l @(0x18,r14),r4
	add r14,r5 ; r5 ??? bc r14 is ???
	mov.w @r5,r2
	mov.w @(r0,r4),r3
	cmp/eq r2,r3
	bt loc_8C099F3e
	mov.l @(loc_8C099FEC,pc),r2 ; r2 set to loc_8c09AF14
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C099F3E:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C099FF0,pc),r1 ; r1 set to 0x8C155DFc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C099F4E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C099FCE,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C099FD4,pc),r13 ; r13 set to 0x88
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r13 ; r13 ??? bc r14 is ???
	mov.l @(loc_8C099FD8,pc),r3 ; r3 set to 0x8C129560
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @(0x18,r14),r2
	mov.w @(loc_8C099FCE,pc),r0; r0 set to 0xDc
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C099FD0,pc),r0; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C099FD2,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C099FDC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C099FD0,pc),r0; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov.b @(0x0D,r13),r0
	tst r0,r0
	bt loc_8C099FF4
	bra loc_8C099FF6
	mov 0x07,r4

;##############################################
loc_8C099FCE:
	#data 0x00Dc
loc_8C099FD0:
	#data 0x012c
loc_8C099FD2:
	#data 0x01A3
loc_8C099FD4:
	#data 0x0088
loc_8C099FD6:
	#data 0x0158
	#align4

loc_8C099FD8:
	#data bank12.loc_8c129560
loc_8C099FDC:
	#data bank12.loc_8c1294C8
loc_8C099FE0:
	#data 0x41892492
loc_8C099FE4:
	#data bank03.loc_8c034e8c
loc_8C099FE8:
	#data bank03.loc_8c034dee
loc_8C099FEC:
	#data loc_8c09AF14
loc_8C099FF0:
	#data bank15.loc_8c155dFc

;----------------------------------------------
loc_8C099FF4:
	mov 0x00,r4 ; r4 set to 0x00

loc_8C099FF6:
	mov 0x24,r0; r0 set to 0x24, r0 set to 0x24
	mov.b r4,@(r0,r14)
	mov r4,r0; r0 set to 0x00, r0??? bc r4 is ???
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.b @(0x0D,r13),r0
	mov.l @(loc_8C09A138,pc),r1 ; r1 set to 0x8C13AFE9, r1 set to 0x8C13AFE9
	extu.b r0,r0; r0 set to 0x00
	mov.l @(loc_8C09A13C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b @(r0,r1),r6
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C09A018:
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x38, r3 set to 0x38, r3 set to 0x38
	mov 0x24,r0; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09A140,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jmp @r3
	nop

loc_8C09A036:
	mov r4,r3
	mov.l @(loc_8C09A144,pc),r1 ; r1 set to 0x8C155E04
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C09A048:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xDA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xD2,PC),r2
	add 0x01,r0
	mov.l @(0xEC,PC),r3
	mov.b r0,@(0x4,r14)
	mov.l @(0x18,r14),r4
	mov.w @(0xCA,PC),r0
	mov.l @(0x18,r4),r4
	jsr @r3
	add r4,r2
	mov.w @(0xC4,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0xA8,PC),r0
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
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x00,r3
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x88,PC),r0
	mov.l @(0xA4,PC),r3
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x74,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.l @(0x94,PC),r0
	extu.b r2,r2
	shll2 r2
	fmov @(r0,r2),fr4
	mov.w @(0x6A,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_8c09a0d4
	mova @(0x88,PC),r0
	fmov @r0,fr3
	fsub fr3,fr4

loc_8C09A0D4:
	mov 0x34,r0
	mov.l @(0x64,PC),r3
	fmov @(r0,r14),fr3
	mov 0x17,r5
	mov 0x14,r6
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x70,PC),r2
	mov 0x1F,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C09A0F2:
	mov r4,r3
	mov.l @(loc_8C09A160,pc),r1 ; r1 set to 0x8C155E14
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C09A104:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09a124
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x18,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	add 0xFF,r2
	mov.b r2,@(r0,r3)

loc_8C09A124:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c09a12a:
	#data 0x00dc
loc_8c09a12c:
	#data 0x00c0
loc_8c09a12e:
	#data 0x012c
loc_8c09a130:
	#data 0x01a3
loc_8c09a132:
	#data 0x041c
loc_8c09a134:
	#data 0x0130
loc_8c09a136:
	#data 0x019e
	#align4

loc_8C09A138:
	#data bank13.loc_8c13AFE9
loc_8C09A13C:
	#data bank03.loc_8c034e8c
loc_8C09A140:
	#data bank03.loc_8c034dee
loc_8C09A144:
	#data bank15.loc_8c155e04
loc_8C09A148:
	#data bank12.loc_8c129560
loc_8C09A14C:
	#data bank12.loc_8c1294C8
loc_8c09a150:
	#data 0x8C26A524
loc_8C09A154:
	#data bank13.loc_8c13AFEc
loc_8C09A158:
	#data 0x43555555
loc_8C09A15C:
	#data bank04.loc_8c042008
loc_8C09A160:
	#data bank15.loc_8c155e14

;==============================================
loc_8C09A164:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x15C,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c09a19e
	mov.b @(0x5,r14),r0
	mov r14,r2
	mov.l @(0x15C,PC),r3
	add 0x34,r2
	add 0x01,r0
	mov r15,r1
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov 0x0C,r0
	mov r14,r5
	mov.l @(0x150,PC),r2
	mov 0x08,r7
	add 0x34,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x148,PC),r3
	mov 0x49,r5
	jsr @r3
	mov r14,r4

loc_8C09A19E:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09A1A6:
	mov.w @(loc_8C09A2CC,pc),r0; r0 set to 0x19f
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	add 0xFF,r2
	mov.b r2,@(r0,r3)
	bra loc_8C09AF14
	nop

loc_8C09A1B4:
	mov r4,r3
	mov.l @(loc_8C09A2E4,pc),r1 ; r1 set to 0x8C155E20
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09A1C6:
	mov.w @(loc_8C09A2CE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C09A2E8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09A2CE,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C09A2D0,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09A2D2,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C09A2D8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C09A2D0,pc),r0; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov 0x06,r0; r0 set to 0x06
	mov.w r0,@(0x1C,r4)
	mov 0x04,r0; r0 set to 0x04
	mov.w r0,@(0x1E,r4)
	mov 0x22,r0; r0 set to 0x22
	mov.b r5,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r3 ; r3 set to 0x22
	mov.w @(loc_8C09A2D4,pc),r0; r0 set to 0x19e
	mov.b r3,@(r0,r4)
	add 0x01,r0; r0 set to 0x19f
	lds.l @r15+,pr
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C09A250:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8C09A2EC,pc),r2 ; r2 set to 0x8C13AFFc
	mov r15,r1
	mov.l @(loc_8C09A2D8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x04,r1
	mov.l r4,@r15
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @r15,r1
	mov r15,r3 ; r3 ??? bc r15 is ???
	add 0x04,r3
	mov.b @(0x05,r1),r0
	extu.b r0,r0; r0 set to 0x0c
	shll2 r0; r0 set to 0x30
	add r3,r0; r0??? bc r3 is ???
	mov.l @r0,r1
	jsr @r1
	mov.l @r15,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C09A27E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bt loc_8C09A2C6
	mov 0x01,r5 ; r5 set to 0x01
	bsr loc_8C099BD4
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8C09A2C6
	mov 0x06,r0; r0 set to 0x06
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0; r0 set to 0x22
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0; r0 set to 0x21
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/pl r0
	bt loc_8C09A2C6
	mov.b @(0x05,r14),r0
	mov r14,r4
	add 0x01,r0; r0 set to 0x22
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	bra loc_8C09A2F0
	mov.l @r15+,r14

loc_8C09A2C6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09A2CC:
	#data 0x019f
loc_8C09A2CE:
	#data 0x00Dc
loc_8C09A2D0:
	#data 0x012c
loc_8C09A2D2:
	#data 0x01A3
loc_8C09A2D4:
	#data 0x019e
	#align4

loc_8C09A2D8:
	#data bank12.loc_8c1294C8
loc_8C09A2DC:
	#data bank10.loc_8c10235c
loc_8C09A2E0:
	#data bank04.loc_8c04223a
loc_8C09A2E4:
	#data bank15.loc_8c155e20
loc_8C09A2E8:
	#data bank12.loc_8c129560
loc_8C09A2EC:
	#data bank13.loc_8c13AFFc

;==============================================
loc_8c09a2f0:
	mov.w @(loc_8c09a42c,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c09a304
	mov.w @(loc_8c09a42e,pc),r0
	mov 0x04,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)

loc_8c09a304:
	rts
	nop

loc_8C09A308:
	mov.w @(loc_8C09A42E,pc),r0; r0 set to 0x19f
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C09A314
	bra loc_8C09AF14
	nop

loc_8C09A314:
	rts
	nop

;----------------------------------------------
loc_8C09A318:
	mov r4,r3
	mov.l @(loc_8C09A438,pc),r1 ; r1 set to 0x8C155E28
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09A32A:
	mov.w @(loc_8C09A430,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C09A43C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09A430,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C09A432,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09A434,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C09A440,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C09A432,pc),r0; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov 0x05,r0; r0 set to 0x05
	mov.w r0,@(0x1C,r4)
	mov r5,r0; r0 set to 0x00
	nop
	mov.w r0,@(0x1E,r4)
	lds.l @r15+,pr
	mov.w @(loc_8C09A42C,pc),r0; r0 set to 0x19e
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C09A3AA:
	mov r4,r3
	mov.l @(loc_8C09A444,pc),r1 ; r1 set to 0x8C155E30
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09A3BC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C099C50
	mov r4,r14
	mov r0,r4
	tst r4,r4
	bf loc_8C09A3D2
	mov.b @(0x05,r14),r0
	add 0x01,r0
	bra loc_8C09A3Ea
	mov.b r0,@(0x05,r14)

loc_8c09a3d2:
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c09a3ea
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8C09A3EA:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C09A3F0:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bf loc_8C09A3Fa
	bra loc_8C09AF14
	nop

loc_8c09a3fa:
	mov.w @(0x1E,r4),r0
	mov 0x01,r1
	mov.w @(loc_8C09A436,pc),r7
	mov r0,r6
	mov.l @(0x0C,r4),r5
	add 0xFF,r6

loc_8c09a406:
	mov 0x26,r0
	mov.w @(r0,r5),r2
	extu.w r2,r2
	cmp/eq r7,r2
	bf loc_8c09a454
	mov.w @(loc_8c09a42c,pc),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c09a420
	mov.w @(loc_8c09a42e,pc),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c09a448

loc_8c09a420:
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8c09a42c,pc),r0
	rts
	mov.b r1,@(r0,r4)

;----------------------------------------------
loc_8c09a42c:
	#data 0x019E
loc_8c09a42e:
	#data 0x019F
loc_8c09a430:
	#data 0x00DC
loc_8c09a432:
	#data 0x012C
loc_8c09a434:
	#data 0x01A3
loc_8C09A436:
	#data 0x2800
	#align4

loc_8c09a438:
	#data bank15.loc_8c155e28
loc_8c09a43c:
	#data bank12.loc_8c129560
loc_8c09a440:
	#data bank12.loc_8c1294c8
loc_8c09a444:
	#data bank15.loc_8c155e30

;==============================================
loc_8c09a448:
	add 0xFF,r6
	exts.w r6,r2
	cmp/pz r2
	bf loc_8c09a454
	bra loc_8c09a406
	mov.l @(0x0C,r5),r5

loc_8c09a454:
	rts
	nop

loc_8C09A458:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bf loc_8C09A462
	bra loc_8C09AF14
	nop

loc_8C09A462:
	rts
	nop

;----------------------------------------------
loc_8C09A466:
	mov r4,r3
	mov.l @(loc_8C09A57C,pc),r1 ; r1 set to 0x8C155E3c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09A478:
	mov.w @(0xF2,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xFC,PC),r3
	add 0x01,r0
	mov.w @(0xE6,PC),r2
	mov.b r0,@(0x4,r4)
	mov.l @(0x18,r4),r5
	mov.w @(0xE2,PC),r0
	mov.l @(0x18,r5),r6
	jsr @r3
	add r6,r2
	mov.w @(0xDC,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r6),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r6),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r6),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r6),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xC0,PC),r0
	mov.b @(r0,r6),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r6),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r6),r3
	mov r6,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xB8,PC),r1
	mov.b @(r0,r6),r2
	mov 0x00,r5
	lds r1,fpul
	mov 0x20,r3
	mov.b r2,@(r0,r4)
	mov.w @(0x94,PC),r0
	mov.b r5,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r6),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r6),fr3
	mov 0x42,r6
	fmov fr3,@(r0,r4)
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x7E,PC),r0
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	add 0x60,r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov r3,r0
	nop 
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c09a540
	mova @(0x60,PC),r0
	mov.l @(0x60,PC),r1
	fmov @r0,fr2
	mov 0x60,r0
	lds r1,fpul
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr1
	fsts fpul,fr2
	fadd fr2,fr1
	fmov fr1,@(r0,r4)

loc_8C09A540:
	mov.w @(0x34,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c09a54e
	mova @(0x48,PC),r0
	bra loc_8c09a552
	fmov @r0,fr4

loc_8C09A54E:
	mova @(0x48,PC),r0
	fmov @r0,fr4

loc_8C09A552:
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x12,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c09a59c
	mov.w @(0x10,PC),r0
	mov 0x30,r1
	bra loc_8c09a5a2
	mov.b r1,@(r0,r4)

;----------------------------------------------
loc_8c09a56e:
	#data 0x00dc
loc_8c09a570:
	#data 0x00c0
loc_8c09a572:
	#data 0x012c
loc_8c09a574:
	#data 0x01a3
loc_8c09a576:
	#data 0x013f
loc_8c09a578:
	#data 0x0130
loc_8c09a57a:
	#data 0x01a1
	#align4

loc_8C09A57C:
	#data bank15.loc_8c155e3c
loc_8C09A580:
	#data bank12.loc_8c129560
loc_8C09A584:
	#data bank12.loc_8c1294C8
loc_8C09A588:
	#data 0x42CDB6Db
loc_8C09A58c:
	#data 0x424DB6Db
loc_8C09A590:
	#data 0x42892492
loc_8C09A594:
	#data 0x42555555
loc_8C09A598:
	#data 0xC2555555

;===================================
loc_8C09A59C:
	mov.w @(0xE6,PC),r0
	mov 0x32,r3
	mov.b r3,@(r0,r4)

loc_8C09A5A2:
	mov.w @(0xE2,PC),r0
	mov 0x00,r6
	mov.l @(0xE8,PC),r3
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov 0x14,r5
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0xD8,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C09A5CA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C09A68A,pc),r0; r0 set to 0x19e
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8C09A626
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C09A698,pc),r3 ; r3 set to 0x8C03340c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C09A626
	lds.l @r15+,pr
	mov.l @(loc_8C09A69C,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c09a626:
	mov.l @(0x18,r14),r2
	mov.w @(0x1E,r2),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r2)
	mov.w @(loc_8C09A68C,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09a64c
	mov.w @(loc_8c09a68a,pc),r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c09a644
	exts.b r4,r0
	tst 0x01,r0
	bf loc_8c09a64c

loc_8c09a644:
	lds.l @r15+,pr 
	mov r14,r4
	bra loc_8c09af14
	mov.l @r15+,r14

loc_8c09a64c:
	mov.b @(0x04,r14),r0
	mov r14,r5
	mov.l @(loc_8c09a6a0,pc),r3
	add 0x34,r5
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x08,r7
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(loc_8c09a6a4,pc),r2
	mov 0x49,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C09A66C:
	bra loc_8C09AF14
	nop

loc_8C09A670:
	bra loc_8C09A466
	nop

loc_8C09A674:
	mov r4,r3
	mov.l @(loc_8C09A6A8,pc),r1 ; r1 set to 0x8C155E4c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09A686:
	#data 0x01A1
loc_8C09A688:
	#data 0x01Ac
loc_8C09A68A:
	#data 0x019e
loc_8c09a68c:
	#data 0x019f
	#align4

loc_8C09A690:
	#data 0x8C2896B0
loc_8C09A694:
	#data bank03.loc_8c034e8c
loc_8C09A698:
	#data bank03.loc_8c03340c
loc_8C09A69C:
	#data bank04.loc_8c045748
loc_8C09A6A0:
	#data bank10.loc_8c10235c
loc_8C09A6A4:
	#data bank04.loc_8c04223a
loc_8C09A6A8:
	#data bank15.loc_8c155e4c

;==============================================
loc_8C09A6AC:
	mov.w @(loc_8C09A7E8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C09A7F8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C09A7E8,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.l @(0x18,r4),r5
	mov.w @(loc_8C09A7EA,pc),r0; r0 set to 0xC0
	mov.l @(0x18,r5),r5
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C09A7EC,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09A7EE,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09A7FC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	mov.l @(loc_8C09A800,pc),r1 ; r1 set to 0x434DB6Db
	mov.b @(r0,r5),r2
	mov 0x00,r6 ; r6 set to 0x00
	lds r1,fpul
	mov 0x20,r3 ; r3 set to 0x20
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C09A7EC,pc),r0; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	mov 0x42,r5 ; r5 set to 0x42
	fmov.s fr3,@(r0,r4)
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C09A7F0,pc),r0; r0 set to 0x13f
	mov.b r3,@(r0,r4)
	add 0xFF,r0; r0 set to 0x13e
	mov.b r3,@(r0,r4)
	add 0xFF,r0; r0 set to 0x13d
	mov.b r3,@(r0,r4)
	add 0xFF,r0; r0 set to 0x13c
	mov.b r3,@(r0,r4)
	add 0x60,r0; r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r4)
	mov 0x5C,r0; r0 set to 0x5c
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C09A804,pc),r0 ; r0 set to loc_8c09A804
	fmov.s @r0,fr2
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C09A7F2,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C09A768
	mova @(loc_8C09A808,pc),r0 ; r0 set to loc_8c09A808
	bra loc_8C09A76c
	fmov.s @r0,fr2

loc_8C09A768:
	mova @(loc_8C09A80C,pc),r0 ; r0init to loc_8c09A80c
	fmov.s @r0,fr2

loc_8C09A76C:
	mov.l @(loc_8C09A810,pc),r1 ; r1 set to 0xC1D55555, r1 set to 0xC1D55555
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr2,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	lds r1,fpul
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C09A7EE,pc),r0; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C09A78e
	mov.w @(loc_8C09A7F4,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov 0x30,r1 ; r1 set to 0x30, r1 set to 0x30
	bra loc_8C09A794
	mov.b r1,@(r0,r4)

loc_8C09A78E:
	mov.w @(loc_8C09A7F4,pc),r0; r0 set to 0x1A1
	mov 0x32,r3 ; r3 set to 0x32
	mov.b r3,@(r0,r4)

loc_8C09A794:
	mov.w @(loc_8C09A7F6,pc),r0; r0 set to 0x1AC, r0 set to 0x1Ac
	mov 0x14,r5 ; r5 set to 0x14, r5 set to 0x14
	mov.l @(loc_8C09A814,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r6,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19E, r0 set to 0x19e
	mov.b r6,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r6,@(r0,r4)
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4, r0 set to 0xC4
	mov.l @(loc_8C09A818,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	shll r0; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jmp @r3
	lds.l @r15+,pr

loc_8C09A7BC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov.l @(0x18,r14),r13
	tst r0,r0
	bt/s loc_8C09A820
	mov.l @(0x18,r13),r12
	mov.l @(loc_8C09A81C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09A8C6
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C09A8F6
	mov.l @r15+,r14

;##############################################
loc_8C09A7E8:
	#data 0x00Dc
loc_8C09A7EA:
	#data 0x00C0
loc_8C09A7EC:
	#data 0x012c
loc_8C09A7EE:
	#data 0x01A3
loc_8C09A7F0:
	#data 0x013f
loc_8C09A7F2:
	#data 0x0130
loc_8C09A7F4:
	#data 0x01A1
loc_8C09A7F6:
	#data 0x01Ac
	#align4

loc_8C09A7F8:
	#data bank12.loc_8c129560
loc_8C09A7FC:
	#data bank12.loc_8c1294C8
loc_8C09A800:
	#data 0x434DB6Db
loc_8C09A804:
	#data 0xC24DB6Db
loc_8C09A808:
	#data 0x42555555
loc_8C09A80C:
	#data 0xC2555555
loc_8C09A810:
	#data 0xC1D55555
loc_8C09A814:
	#data 0x8C2896B0
loc_8C09A818:
	#data bank03.loc_8c034e8c
loc_8C09A81C:
	#data bank03.loc_8c034dee

;==============================================
loc_8c09a820:
	mov.w @(loc_8C09A932,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c09a86a
	mov 0x5C,r1
	mov.l @(loc_8c09a938,pc),r3
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
	bf loc_8c09a876

loc_8c09a86a:
	lds.l @r15+,pr 
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c09a8d0
	mov.l @r15+,r14

loc_8c09a876:
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C09A934,pc),r0
	fmov.s @(r0,r12),fr2
	fcmp/gt fr3,fr2
	bf loc_8c09a8b8
	fmov.s @(r0,r12),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1E,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r13)
	mov.w @(0x1E,r13),r0
	tst r0,r0
	bt loc_8c09a8a0
	lds.l @r15+,pr 
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c09af14
	mov.l @r15+,r14

loc_8c09a8a0:
	mov.b @(0x05,r14),r0
	mov 0x01,r6
	mov.l @(loc_8c09a93c,pc),r3
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x14,r5
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09a8b8:
	lds.l @r15+,pr 
	mov.l @(loc_8c09a940,pc),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C09A8C6:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09A8D0:
	mov.l @(0x18,r4),r3
	mov.w @(0x1E,r3),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r3)
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c09a8f2
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r4),r5
	tst r5,r5
	bt loc_8c09a8ee
	exts.b r5,r0
	tst 0x01,r0
	bf loc_8c09a8f2

loc_8C09A8EE:
	bra loc_8c09af14
	nop 

loc_8C09A8F2:
	bra loc_8c09a8f6
	nop 

;----------------------------------------------
loc_8C09A8F6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov r14,r5
	mov.l @(loc_8C09A944,pc),r3 ; r3 set to 0x8C10235c
	add 0x34,r5
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x08,r7 ; r7 set to 0x08
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C09A948,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C09AF14
	mov.l @r15+,r14

loc_8C09A920:
	mov r4,r3
	mov.l @(loc_8C09A94C,pc),r1 ; r1 set to 0x8C155E5c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09a932:
	#data 0x019e
loc_8c09a934:
	#data 0x041c
loc_8c09a936:
	#data 0x019F
	#align4

loc_8C09A938:
	#data bank03.loc_8c03340c
loc_8C09A93C:
	#data bank03.loc_8c034e8c
loc_8C09A940:
	#data bank04.loc_8c045748
loc_8C09A944:
	#data bank10.loc_8c10235c
loc_8C09A948:
	#data bank04.loc_8c04223a
loc_8C09A94C:
	#data bank15.loc_8c155e5c

;==============================================
loc_8C09A950:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C09AA1C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C09AA28,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C09AA1C,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C09AA1E,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(0x18,r14),r0; r0??? bc r14 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09AA20,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C09AA2C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x42,r5 ; r5 set to 0x42
	mov.l @(loc_8C09AA30,pc),r1 ; r1 set to 0x42CDB6Db
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C09AA1E,pc),r0; r0 set to 0x12c
	lds r1,fpul
	mov.b r4,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x20,r3 ; r3 set to 0x20
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C09AA22,pc),r0; r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13e
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13d
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13c
	mov.b r3,@(r0,r14)
	add 0x60,r0; r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x21,r0; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_8C09AA34
	mov.w @(loc_8C09AA24,pc),r0; r0 set to 0x1A1
	mov 0x40,r3 ; r3 set to 0x40
	bra loc_8C09AA3a
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09AA1C:
	#data 0x00Dc
loc_8C09AA1E:
	#data 0x012c
loc_8C09AA20:
	#data 0x01A3
loc_8C09AA22:
	#data 0x013f
loc_8C09AA24:
	#data 0x01A1
	#align4

loc_8C09AA28:
	#data bank12.loc_8c129560
loc_8C09AA2C:
	#data bank12.loc_8c1294C8
loc_8C09AA30:
	#data 0x42CDB6Db

;==============================================
loc_8c09aa34:
	mov.w @(loc_8C09AB22,pc),r0
	mov 0x3F,r2
	mov.b r2,@(r0,r14)

loc_8c09aa3a:
	mov.w @(loc_8C09AB24,pc),r0
	mov 0x14,r5
	mov.l @(loc_8C09AB34,pc),r3
	mov 0x00,r6
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(loc_8c09ab38,pc),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r3
	mov r14,r4
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.l @(loc_8c09ab3c,pc),r0
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov 0x22,r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C09AB26,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c09aa8a
	mov r14,r4
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	neg r2,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)

loc_8c09aa8a:
	lds.l @r15+,pr 
	mov.l @r15+,r14

loc_8C09AA8E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C09AB40,pc),r3 ; r3 set to 0x8C033674
	mov.w @(loc_8C09AB28,pc),r5 ; r5 set to 0x960
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C09AB2A,pc),r0; r0 set to 0x19e
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C09AABe
	mov.w @(loc_8C09AB2C,pc),r0; r0 set to 0x19f
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C09AACc
	mov.l @(loc_8C09AB44,pc),r2 ; r2 set to 0x8C03340c
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8C09AAC4
	lds.l @r15+,pr
	mov.l @(loc_8C09AB48,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C09AABE:
	mov.b @(r0,r14),r0
	tst 0x01,r0
	bf loc_8C09AACc

loc_8C09AAC4:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C09AF14
	mov.l @r15+,r14

loc_8C09AACC:
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r5
	mov 0x08,r7 ; r7 set to 0x08
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	add 0x34,r5
	mov.w @(loc_8C09AB2E,pc),r0; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09AB4C,pc),r3 ; r3 set to 0x8C10235c
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C09AB50,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C09AAF2:
	bra loc_8C09AF20
	nop

;----------------------------------------------
loc_8C09AAF6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c09ab0c
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c09ab12

loc_8C09AB0C:
	mov r14,r4
	bra loc_8c09af14
	mov.l @r15+,r14

loc_8C09AB12:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x3C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09ab22:
	#data 0x01A1
loc_8c09ab24:
	#data 0x01Ac
loc_8c09ab26:
	#data 0x0130
loc_8C09AB28:
	#data 0x0960
loc_8C09AB2A:
	#data 0x019e
loc_8C09AB2C:
	#data 0x019f
loc_8C09AB2E:
	#data 0x012c

loc_8c09ab30:
	#data 0x01D0
	#align4

loc_8c09ab34:
	#data 0x8C2896B0
loc_8C09AB38:
	#data bank03.loc_8c034e8c
loc_8C09AB3C:
	#data bank13.loc_8c13B008
loc_8C09AB40:
	#data bank03.loc_8c033674
loc_8C09AB44:
	#data bank03.loc_8c03340c
loc_8C09AB48:
	#data bank04.loc_8c045748
loc_8C09AB4C:
	#data bank10.loc_8c10235c
loc_8C09AB50:
	#data bank04.loc_8c04223a
loc_8C09AB54:
	#data bank15.loc_8c155e6c

;==============================================
loc_8C09AB58:
	mov.w @(loc_8C09AC82,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C09AC90,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09AC82,pc),r0; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C09AC84,pc),r0; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(0x18,r4),r0; r0??? bc r4 is ???
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C09AC86,pc),r0; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C09AC94,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x47,r2 ; r2 set to 0x47
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C09AC88,pc),r0; r0 set to 0x1A1
	mov.l @(loc_8C09AC98,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r4)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x34,r0; r0 set to 0x34
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C09AC9C,pc),r1 ; r1 set to 0x435EDB6d
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r4)
	lds r1,fpul
	mov 0x44,r2 ; r2 set to 0x44
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C09AC8C,pc),r5 ; r5 set to 0x88
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C09AC8A,pc),r0; r0 set to 0x19c
	mov.b r2,@(r0,r4)
	add 0x36,r0; r0 set to 0x1D2
	mov.l @(0x18,r4),r2
	mov.b @(r0,r2),r1 ; r1 ??? bc r2 is ???
	tst r1,r1
	bt/s loc_8C09AC30
	add r4,r5 ; r5 ??? bc r4 is ???
	mova @(loc_8C09ACA4,pc),r0 ; r0 set to loc_8c09ACA4
	mov.l @(loc_8C09ACA0,pc),r1 ; r1 set to 0xFFE80000
	mov.l r1,@(0x14,r5)
	fmov.s @r0,fr4
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C09ACA8,pc),r0 ; r0 set to loc_8c09ACA8
	bra loc_8C09AC48
	fmov.s @r0,fr1

loc_8C09AC30:
	mova @(loc_8C09ACB0,pc),r0 ; r0init to loc_8c09ACB0
	mov.l @(loc_8C09ACAC,pc),r1 ; r1 set to 0x180000
	mov.l r1,@(0x14,r5)
	fmov.s @r0,fr4
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C09ACB4,pc),r0 ; r0 set to loc_8c09ACB4
	fmov.s @r0,fr1 ; r1 ??

loc_8C09AC48:
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C09ACC0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr1,@(r0,r4)
	mova @(loc_8C09ACB8,pc),r0 ; r0 set to loc_8c09ACB8, r0 set to loc_8c09ACB8
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x60,r0; r0 set to 0x60, r0 set to 0x60
	mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C09ACBC,pc),r0 ; r0 set to loc_8c09ACBC, r0 set to loc_8c09ACBc
	fmov.s @r0,fr3
	mov 0x6C,r0; r0 set to 0x6C, r0 set to 0x6c
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C09AC66:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x34,r0; r0 set to 0x34
	mov.l @(loc_8C09ACC4,pc),r1 ; r1 set to 0x8C155E7c
	mov r14,r4
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0; r0 set to 0x34
	shll2 r0; r0 set to 0xD0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09AC82:
	#data 0x00Dc
loc_8C09AC84:
	#data 0x012c
loc_8C09AC86:
	#data 0x01A3
loc_8C09AC88:
	#data 0x01A1
loc_8C09AC8A:
	#data 0x019c
loc_8C09AC8C:
	#data 0x0088
	#align4

loc_8C09AC90:
	#data bank12.loc_8c129560
loc_8C09AC94:
	#data bank12.loc_8c1294C8
loc_8C09AC98:
	#data 0x8C2896B0
loc_8C09AC9C:
	#data 0x435EDB6d
loc_8C09ACA0:
	#data 0xFFE80000
loc_8C09ACA4:
	#data 0xC2200000
loc_8C09ACA8:
	#data 0x3F555555
loc_8C09ACAC:
	#data 0x00180000
loc_8C09ACB0:
	#data 0x42200000
loc_8C09ACB4:
	#data 0xBF555555
loc_8C09ACB8:
	#data 0x41CDB6Db
loc_8C09ACBC:
	#data 0xBF092492
loc_8C09ACC0:
	#data bank03.loc_8c034e8c
loc_8C09ACC4:
	#data bank15.loc_8c155e7c

;==============================================
loc_8C09ACC8:
	mov.w @(0xD0,PC),r5
	mov 0x34,r0
	add r4,r5
	mov.l @(0x14,r5),r3
	lds r3,fpul
	cmp/pz r3
	bt.s loc_8c09ace0
	float fpul,fr3
	mov.l @(0xC8,PC),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C09ACE0:
	mov.l @(0xC4,PC),r1
	mov.l @(0xC8,PC),r2
	lds r1,fpul
	fmov @(r0,r4),fr0
	fsts fpul,fr2
	fmul fr2,fr3
	lds r2,fpul
	fsts fpul,fr1
	fdiv fr1,fr3
	fadd fr3,fr0
	fmov fr0,@(r0,r4)
	mov.w @(0xA4,PC),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	cmp/pz r2
	bt loc_8c09ad08
	mov.b @(0x5,r4),r0
	add 0x01,r0
	bra loc_8c09ad0c
	mov.b r0,@(0x5,r4)

loc_8C09AD08:
	rts
	nop

;----------------------------------------------
loc_8C09AD0C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x9C,PC),r4
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
	bf loc_8c09ad4a
	mov.l @(0x88,PC),r3
	jsr @r3
	mov r14,r4
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

loc_8C09AD4A:
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
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r14),fr2
	fmov @(r0,r3),fr4
	fadd fr3,fr4
	fcmp/gt fr4,fr2
	bt loc_8c09ae0a
	mov.b @(0x5,r14),r0
	mov.w @(0x1E,PC),r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x38,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x10,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c09adc0
	add r14,r4
	mov.l @(0x24,PC),r3
	bra loc_8c09adc4
	mov.l r3,@(0x14,r4)

;##############################################
loc_8c09ad9c:
	#data 0x0088
loc_8c09ad9e:
	#data 0x014b
loc_8c09ada0:
	#data 0x01d2
	#align4

loc_8c09ada4:
	#data 0x4f800000
loc_8c09ada8:
	#data 0x3fd55555
loc_8c09adac:
	#data 0x47800000
loc_8c09adb0:
	#data 0x8c2895f0
loc_8C09ADB4:
	#data bank03.loc_8c034dee
loc_8C09ADB8:
	#data 0x433C9249
loc_8C09ADBc:
	#data 0x00290000

;----------------------------------------------
loc_8C09ADC0:
	mov.l @(0xF0,PC),r1
	mov.l r1,@(0x14,r4)

loc_8C09ADC4:
	mov.l @(0x14,r4),r3
	mov 0x34,r0
	lds r3,fpul
	cmp/pz r3
	bt.s loc_8c09add8
	float fpul,fr3
	mov.l @(0xE4,PC),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C09ADD8:
	mov.l @(0xE0,PC),r1
	mov 0x16,r5
	mov.l @(0xE0,PC),r2
	mov 0x04,r6
	lds r1,fpul
	fmov @(r0,r14),fr0
	fldi0 fr4
	fsts fpul,fr2
	fmul fr2,fr3
	lds r2,fpul
	mov.l @(0xD4,PC),r3
	fsts fpul,fr1
	fdiv fr1,fr3
	fadd fr3,fr0
	fmov fr0,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C09AE0A:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c09ae30
	mova @(0xB0,PC),r0
	mov.l @(0x18,r14),r2
	fmov @r0,fr2
	mov 0x38,r0
	fmov @(r0,r2),fr4
	fmov @(r0,r14),fr1
	fadd fr2,fr4
	fcmp/gt fr4,fr1
	bf loc_8c09ae30
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C09AE30:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09AE36:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	mov.w @(0x6E,PC),r5
	fmov @(r0,r3),fr3
	add r4,r5
	fmov fr3,@(r0,r4)
	mov.l @(0x14,r5),r3
	lds r3,fpul
	cmp/pz r3
	bt.s loc_8c09ae54
	float fpul,fr3
	mov.l @(0x68,PC),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8C09AE54:
	mov.l @(0x64,PC),r1
	mov.l @(0x68,PC),r2
	lds r1,fpul
	fmov @(r0,r4),fr0
	fsts fpul,fr2
	fmul fr2,fr3
	lds r2,fpul
	fsts fpul,fr1
	fdiv fr1,fr3
	fadd fr3,fr0
	fmov fr0,@(r0,r4)
	mov.w @(0x40,PC),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c09ae8c
	mov.l @(0x18,r4),r2
	mov.b @(r0,r2),r3
	cmp/pz r3
	bf loc_8c09af14
	mov.w @(0x30,PC),r0
	mov 0x08,r3
	mov.l @(0x18,r4),r2
	mov.b r3,@(r0,r2)
	add 0x09,r0
	mov.l @(0x18,r4),r2
	mov 0x00,r3
	mov.b r3,@(r0,r2)

loc_8C09AE8C:
	rts 
	nop 

;----------------------------------------------
loc_8C09AE90:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c09aea6
	mov.w @(0x12,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c09aed0

loc_8C09AEA6:
	mov r14,r4
	bra loc_8c09af14
	mov.l @r15+,r14

;##############################################
loc_8c09aeac:
	#data 0x0088
loc_8c09aeae:
	#data 0x014b
loc_8c09aeb0:
	#data 0x0142
loc_8c09aeb2:
	#data 0x01d0
	#align4

loc_8c09aeb4:
	#data 0xffd70000
loc_8c09aeb8:
	#data 0x4f800000
loc_8c09aebc:
	#data 0x3fd55555
loc_8c09aec0:
	#data 0x47800000
loc_8C09AEC4:
	#data bank03.loc_8c034e8c
loc_8C09AEC8:
	#data 0x442FB6Db
loc_8C09AECC:
	#data bank04.loc_8c045748

;----------------------------------------------
loc_8C09AED0:
	mov.b @(0x2,r4),r0
	mov 0x01,r6
	mov.l @(0x5C,PC),r2
	mov r6,r3
	extu.b r0,r0
	mov.b @r2,r5
	xor r6,r0
	shad r0,r3
	extu.b r5,r5
	tst r5,r3
	bf loc_8c09af10
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	shad r0,r6
	tst r6,r5
	bt loc_8c09af00
	mov.w @(0x38,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c09af10
	mov.w @(0x32,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c09af10

loc_8C09AF00:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x30,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C09AF10:
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09AF14:
	mov.w @(loc_8C09AF30,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09AF3C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C09AF20:
	mov.w @(loc_8C09AF30,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09AF3C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8c09af2c:
	#data 0x03f0
loc_8c09af2e:
	#data 0x03f1
loc_8c09af30:
	#data 0x012c
	#align4

loc_8c09af34:
	#data 0x8C2895F6
loc_8C09AF38:
	#data bank15.loc_8c155e88
loc_8C09AF3C:
	#data bank04.loc_8c0450C0

;==============================================
;Unused Function
loc_8c09af40:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0xF0,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09af80
	mov r0,r4
	mov.l @(0xE0,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0xD0,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

loc_8C09AF80:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;----------------------------------------------
loc_8C09AF8A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0xA4,PC),r3
	mov r4,r14
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c09afce
	mov r0,r4
	mov.l @(0x98,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x8A,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x00,r3
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.l r14,@(0x14,r4)
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09AFCE:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09AFD8:
	mov 0x20,r0; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C09B044,pc),r0; r0 set to 0x8C155E98
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C09AFEC:
	mov.l @(loc_8C09B048,pc),r5 ; r5 set to 0x8C2895F0
	mov 0x3B,r0; r0 set to 0x3b
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r5),r3
	mov 0x01,r0; r0 set to 0x01
	mov.w @(loc_8C09B03A,pc),r4 ; r4 set to 0x88
	extu.b r3,r3
	mov.l @(loc_8C09B04C,pc),r1 ; r1 set to 0x8C155EA8
	shad r3, r0; r0??? bc r3 is ???
	mov 0x3C,r3 ; r3 set to 0x3c
	add r5,r3 ; r3 set to 0x8C28962c
	mov.b @r3,r3 ; r3 ??
	add r14,r4 ; r4 ??? bc r14 is ???
	and r3,r0
	mov.b r0,@(0x0E,r4)
	mov r14,r4
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C09B01A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x20,r0; r0 set to 0x20
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C09B050
	bra loc_8C09B05a
	mov.l @(0x14,r14),r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09B038:
	#data 0x2801
loc_8C09B03A:
	#data 0x0088
	#align4

loc_8C09B03C:
	#data bank04.loc_8c044F12
loc_8C09B040:
	#data loc_8c09AFD8
loc_8C09B044:
	#data bank15.loc_8c155e98
loc_8C09B048:
	#data 0x8C2895F0
loc_8C09B04C:
	#data bank15.loc_8c155eA8

;----------------------------------------------
loc_8C09B050:
	mov.l @(loc_8C09B190,pc),r2 ; r2 set to 0x8C04223a
	mov 0x4C,r5 ; r5 set to 0x4c
	mov r14,r13
	jsr @r2
	mov.l @(0x18,r14),r4

loc_8C09B05A:
	mov.w @(loc_8C09B180,pc),r10; r10set to 0x88, r10set to 0x88
	add r13,r10; r10??? bc r13 is ???, r10??? bc r13 is ???
	mov.b @(0x0E,r10),r0
	tst r0,r0
	bt loc_8C09B068
	bra loc_8C09B246
	nop

loc_8c09b068:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C09B182,pc),r1
	add 0x01,r0
	mov.l @(loc_8c09b194,pc),r3
	mov.b r0,@(0x04,r14)
	add r14,r1
	mov.w @(loc_8C09B182,pc),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(loc_8C09B184,pc),r0
	mov 0x01,r13
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09B186,pc),r0
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
	mov.l @(loc_8c09b198,pc),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x42,r4
	mov.l @(loc_8c09b1a0,pc),r11
	mov.b @(r0,r1),r3
	mov 0x00,r5
	mov.b r3,@(r0,r14)
	mov 0x48,r3
	mov.w @(loc_8C09B188,pc),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8C09B19C,pc),r3
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x24,r0
	mov.b r5,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf/s loc_8c09b1ac
	mov 0x50,r4
	mov.w @(loc_8C09B18A,pc),r0
	mov 0x18,r2
	mov 0x10,r1
	mov.w @(loc_8C09B18E,pc),r9
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r1,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r4
	mov 0x07,r8
	mov r5,r12
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09B18C,pc),r0
	mov.w @(r0,r4),r2
	mov.w r2,@(r0,r14)

loc_8c09b13c:
	mov.l @(loc_8c09b1a4,pc),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8c09b16e
	mov r0,r4
	mov 0x20,r0
	mov.l @(loc_8c09b1a8,pc),r3
	mov.l r3,@(0x10,r4)
	mov.b r13,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov 0x26,r0
	mov.l @(0x18,r14),r3
	add 0x01,r12
	mov.l r3,@(0x18,r4)
	exts.w r12,r3
	cmp/ge r8,r3
	mov.l r14,@(0x14,r4)
	mov.w r9,@(r0,r4)
	mov.b @(0x01,r14),r0
	mov.b r0,@(0x01,r4)
	bf loc_8c09b13c

loc_8c09b16e:
	mov r12,r0
	nop
	mov 0x16,r5
	mov.w r0,@(0x04,r10)
	mov 0x08,r6
	jsr @r11
	mov r14,r4
	bra loc_8c09b246
	nop

;##############################################
loc_8c09b180:
	#data 0x0088
loc_8C09B182:
	#data 0x00DC
loc_8C09B184:
	#data 0x012C
loc_8C09B186:
	#data 0x01A3
loc_8C09B188:
	#data 0x019C
loc_8C09B18A:
	#data 0x013C
loc_8C09B18C:
	#data 0x0130
loc_8C09B18E:
	#data 0x2801
	#align4

loc_8c09b190:
	#data bank04.loc_8c04223a
loc_8c09b194:
	#data bank12.loc_8c129560
loc_8c09b198:
	#data bank12.loc_8c1294c8
loc_8C09B19C:
	#data 0x8C2896B0
loc_8c09b1a0:
	#data bank03.loc_8c034e8c
loc_8c09b1a4:
	#data bank04.loc_8c044f12
loc_8c09b1a8:
	#data loc_8c09afd8

;==============================================
loc_8c09b1ac:
	mov r0,r5
	mov.w @(loc_8C09B2BE,pc),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x08,r14),r2
	mov.l @(loc_8c09b2c8,pc),r4
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x08,r14),r2
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09B2C0,pc),r0
	mov.l @(0x08,r14),r2
	mov.w @(r0,r2),r1
	mov.w r1,@(r0,r14)
	mov 0x20,r0
	mov.l @(0x08,r14),r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c09b1e4
	add 0x04,r4

loc_8c09b1e4:
	mova @(loc_8C09B2CC,pc),r0
	fmov.s @r0,fr5
	mova @(loc_8C09B2D0,pc),r0
	fmov.s @r0,fr4
	mov.w @(loc_8C09B2C0,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c09b204
	mov.w @r4,r3
	mov 0x34,r0
	lds r3,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	bra loc_8c09b210
	fneg fr3

loc_8c09b204:
	mov.w @r4,r3
	mov 0x34,r0
	lds r3,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3

loc_8c09b210:
	add 0x02,r4
	fmov.s @(r0,r14),fr2
	mov.l @(loc_8C09B2D4,pc),r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	mov.w @r4,r3
	fmov.s @(r0,r14),fr1
	lds r3,fpul 
	float fpul,fr3
	lds r1,fpul 
	fsts fpul,fr2
	fmul fr2,fr3
	fdiv fr4,fr3
	fadd fr3,fr1
	fmov.s fr1,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r13,r3
	bt/s loc_8c09b240
	mov 0x16,r5
	bra loc_8c09b242
	mov 0x09,r6

loc_8c09b240:
	mov 0x0A,r6

loc_8c09b242:
	jsr @r11
	mov r14,r4

loc_8C09B246:
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
loc_8C09B258:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x20,r0; r0 set to 0x20
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C09B26e
	bra loc_8C09B270
	mov.l @(0x14,r14),r4

loc_8C09B26E:
	mov r14,r4

loc_8C09B270:
	mov.w @(loc_8C09B2C2,pc),r13 ; r13 set to 0x88, r13 set to 0x88
	add r4,r13 ; r13 ??? bc r4 is ???, r13 ??? bc r4 is ???
	mov.b @(0x0E,r13),r0
	tst r0,r0
	bf loc_8C09B30e
	mov.w @(loc_8C09B2C4,pc),r0; r0 set to 0x19F, r0 set to 0x19f
	mov 0x00,r12 ; r12 set to 0x00, r12 set to 0x00
	mov.l @(loc_8C09B2D8,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0; r0??, r0??
	cmp/pz r0
	bt loc_8C09B298
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???, r12 ??? bc r15 is ???
	mov.l @r15+,r13
	bra loc_8C09B636
	mov.l @r15+,r14

loc_8C09B298:
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C09B300
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf loc_8C09B30e
	mov r14,r4
	bra loc_8C09B2F6
	mov r12,r5

loc_8C09B2AC:
	mov.w @(0x16,PC),r0
	mov.l @(0xC,r4),r6
	mov.b @(r0,r6),r6
	extu.b r6,r3
	tst r3,r3
	bt loc_8c09b2f4
	mov r14,r4
	bra loc_8c09b2e4
	mov r12,r5

;##############################################
loc_8c09b2be:
	#data 0x013C
loc_8c09b2c0:
	#data 0x0130
loc_8C09B2C2:
	#data 0x0088
loc_8C09B2C4:
	#data 0x019f
loc_8C09B2C6:
	#data 0x019e
	#align4

loc_8C09B2C8:
	#data bank13.loc_8c13B010
loc_8c09b2cc:
	#data 0x3FD55555
loc_8c09b2d0:
	#data 0x43800000
loc_8c09b2d4:
	#data 0x40092492
loc_8C09B2D8:
	#data bank03.loc_8c034dee

;==============================================
loc_8C09B2DC:
	mov.w @(0x15A,PC),r0
	add 0x01,r5
	mov.b r6,@(r0,r4)
	mov.l @(0xC,r4),r4

loc_8C09B2E4:
	mov.w @(0x4,r13),r0
	exts.w r5,r3
	extu.w r0,r0
	cmp/ge r0,r3
	bf loc_8c09b2dc
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_8C09B2F4:
	add 0x01,r5

loc_8c09b2f6:
	mov.w @(0x04,r13),r0
	exts.w r5,r3
	extu.w r0,r0
	cmp/ge r0,r3
	bf loc_8c09b2ac

loc_8C09B300:
	lds.l @r15+,pr
	mov.l @(loc_8C09B448,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C09B30E:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09B318:
	mov r4,r3
	mov.l @(loc_8C09B44C,pc),r1 ; r1 set to 0x8C155EB8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09B32A:
	mov r4,r3
	mov.l @(loc_8C09B450,pc),r1 ; r1 set to 0x8C155EC8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09B33C:
	mov.l @(loc_8C09B454,pc),r5 ; r5 set to 0x8C2895F0
	mov 0x3C,r0; r0 set to 0x3c
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r13 ; r13 set to 0x01
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	mov 0x3B,r0; r0 set to 0x3b
	mov.b @(r0,r5),r2
	mov r13,r1 ; r1 set to 0x01
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???
	tst r1,r3
	bf/s loc_8C09B42e
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0; r0 set to 0x3c
	mov.b r0,@(0x04,r14)
	mov r4,r0; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C09B43C,pc),r0; r0 set to 0xDc
	mov.w @(loc_8C09B43C,pc),r1 ; r1 set to 0xDc
	mov.l @(0x14,r14),r2
	mov.l @(loc_8C09B458,pc),r3 ; r3 set to 0x8C129560
	add r14,r1 ; r1 ??? bc r14 is ???
	add r0,r2
	jsr @r3
	add 0xE4,r0; r0 set to 0xC0
	mov.w @(loc_8C09B43E,pc),r0; r0 set to 0x12c
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
	mov.l @(0x14,r14),r0; r0??? bc r14 is ???
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x14,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	mov.l @(0x14,r14),r3 ; r3 ??? bc r14 is ???
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	mov.l @(0x14,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09B440,pc),r0; r0 set to 0x1A3
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x14,r14),r2
	add 0x50,r2
	mov.l @(loc_8C09B45C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov.l @(0x14,r14),r1
	mov 0x24,r0; r0 set to 0x24
	mov 0x42,r5 ; r5 set to 0x42
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???
	mov.b r3,@(r0,r14)
	mov 0x48,r3 ; r3 set to 0x48
	mov.w @(loc_8C09B442,pc),r0; r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r14)
	add 0x04,r0; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l @(loc_8C09B460,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x60,r2 ; r2 set to 0x60
	mov.w @(loc_8C09B444,pc),r0; r0 set to 0x13f
	mov.b r2,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13e
	mov.b r2,@(r0,r14)
	add 0xFE,r0; r0 set to 0x13c
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0x13d
	mov 0x20,r1 ; r1 set to 0x20
	mov.l @(loc_8C09B464,pc),r2 ; r2 set to 0x8C11E730
	mov.b r1,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24
	jsr @r2
	mov.b r4,@(r0,r14)
	mov r0,r4 ; r4 set to 0x24
	tst r13,r4
	bt/s loc_8C09B420
	mov 0x16,r5 ; r5 set to 0x16
	bra loc_8C09B422
	mov 0x0C,r6

loc_8C09B420:
	mov 0x0D,r6 ; r6 set to 0x0d

loc_8C09B422:
	mov.l @(loc_8C09B468,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C09B43E,pc),r0; r0 set to 0x12C, r0 set to 0x12c
	bra loc_8C09B432
	mov.b r13,@(r0,r14)

loc_8C09B42E:
	mov.w @(loc_8C09B43E,pc),r0; r0 set to 0x12c
	mov.b r4,@(r0,r14)

loc_8C09B432:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
;----------------------------------------------
loc_8C09B43a:
	#data 0x019e
loc_8C09B43C:
	#data 0x00Dc
loc_8C09B43E:
	#data 0x012c
loc_8C09B440:
	#data 0x01A3
loc_8C09B442:
	#data 0x019c
loc_8C09B444:
	#data 0x013f
	#align4

loc_8C09B448:
	#data bank04.loc_8c045748
loc_8C09B44C:
	#data bank15.loc_8c155eB8
loc_8C09B450:
	#data bank15.loc_8c155eC8
loc_8C09B454:
	#data 0x8C2895F0
loc_8C09B458:
	#data bank12.loc_8c129560
loc_8C09B45C:
	#data bank12.loc_8c1294C8
loc_8C09B460:
	#data 0x8C2896B0
loc_8C09B464:
	#data bank11.loc_8c11e730
loc_8C09B468:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C09B46C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C09B500,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0; r0 set to 0x3c
	mov 0x01,r1 ; r1 set to 0x01
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0; r0 set to 0x3b
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???
	tst r1,r3
	bf loc_8C09B4E4
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C09B4Ae
	mov.l @(loc_8C09B504,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	exts.b r0,r0; r0??
	cmp/pz r0
	bt loc_8C09B4E4
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C09B508,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x0B,r6 ; r6 set to 0x0b
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C09B4AE:
	mov.l @(loc_8C09B504,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09B4C2
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C09B636
	mov.l @r15+,r14

loc_8c09b4c2:
	mov.w @(loc_8C09B4FC,pc),r0
	mov.b @(r0,r14),r0
	tst 0x01,r0
	bt loc_8c09b4da
	mov.w @(loc_8C09B4FC,pc),r0
	mov 0x01,r3
	mov 0x00,r5
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c09af8a
	mov r14,r4

loc_8c09b4da:
	lds.l @r15+,pr
	mov.l @(loc_8c09b50c,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C09B4E4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09B4EA:
	mov r4,r3
	mov.l @(loc_8C09B510,pc),r1 ; r1 set to 0x8C155ED8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c09b4fc:
	#data 0x0141
	#align4

loc_8C09B500:
	#data 0x8C2895F0
loc_8C09B504:
	#data bank03.loc_8c034dee
loc_8C09B508:
	#data bank03.loc_8c034e8c
loc_8C09B50C:
	#data bank04.loc_8c045748
loc_8C09B510:
	#data bank15.loc_8c155eD8


;==============================================
loc_8C09B514:
	mov.w @(0x134,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x138,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x126,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x11E,PC),r0
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
	mov.w @(0xFA,PC),r0
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
	mov.l @(0xEC,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x00,r2
	mov.w @(0xD6,PC),r6
	mov.b @(r0,r1),r3
	add r4,r6
	mov.b r3,@(r0,r4)
	mov.w @(0xC8,PC),r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r5
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xC0,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	mov.l @(0xC8,PC),r5
	fmov fr3,@(r0,r4)
	mov.w @r5,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x2,r5),r0
	add 0x04,r5
	mov.w r0,@(0x1C,r4)
	mov.l r5,@(0x18,r6)
	lds.l @r15+,pr

loc_8C09B5A6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0xB8,PC),r4
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
	bf loc_8c09b630
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bt loc_8c09b630
	mov.w @(0x82,PC),r6
	add r14,r6
	mov.l @(0x18,r6),r5
	mov.w @r5+,r4
	mov.w @r5+,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x78,PC),r0
	mov.l r5,@(0x18,r6)
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c09b5e8
	mov 0x34,r0
	neg r4,r4

loc_8C09B5E8:
	exts.w r4,r4
	mov.l @(0x7C,PC),r1
	lds r4,fpul
	mov 0x02,r5
	mov.l @(0x78,PC),r2
	fmov @(r0,r14),fr0
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2
	lds r2,fpul
	fmul fr2,fr3
	fsts fpul,fr1
	fdiv fr1,fr3
	fadd fr3,fr0
	fmov fr0,@(r0,r14)
	bsr loc_8c09af8a
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c09b630
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/pl r0
	bt loc_8c09b630
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c09b636
	mov.l @r15+,r14

loc_8C09B630:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09B636:
	mov 0x03,r0; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C09B64E,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C09B642:
	mov.l @(loc_8C09B670,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C09B64E,pc),r0; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09b64c:
	#data 0x00dc
loc_8c09b64e:
	#data 0x012c
loc_8c09b650:
	#data 0x01a3
loc_8c09b652:
	#data 0x041c
loc_8c09b654:
	#data 0x0088
loc_8c09b656:
	#data 0x0130
	#align4

loc_8C09B658:
	#data bank12.loc_8c129560
loc_8C09B65C:
	#data bank12.loc_8c1294C8
loc_8C09B660:
	#data bank15.loc_8c155eE8
loc_8C09B664:
	#data 0x8C2895F0
loc_8C09B668:
	#data 0x3FD55555
loc_8C09B66c:
	#data 0x43800000
loc_8C09B670:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8C09B674:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0x114,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09b6be
	mov r0,r4
	mov.l @(0x104,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0xE2,PC),r3
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

loc_8c09b6be:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09B6CA:
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8C09B6De
	mov.l @(0x18,r4),r14
	mov.l @(loc_8C09B7A0,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	mov.l @r15+,r14

loc_8C09B6DE:
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8C09B6Ec
	mov r14,r5
	bra loc_8C09B6F2
	mov.l @r15+,r14

loc_8C09B6EC:
	mov r14,r5
	bra loc_8C09B7B4
	mov.l @r15+,r14

loc_8c09b6f2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf/s loc_8c09b766
	mov r5,r13
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C09B78E,pc),r1
	add 0x01,r0
	mov.l @(loc_8c09b7a4,pc),r3
	mov.b r0,@(0x04,r14)
	add r14,r1
	mov.w @(loc_8C09B790,pc),r0
	mov.w @(loc_8C09B78E,pc),r2
	jsr @r3
	add r13,r2
	mov.w @(loc_8C09B792,pc),r0
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
	mov.w @(loc_8C09B794,pc),r0
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
	mov.l @(loc_8c09b7a8,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(loc_8c09b7ac,pc),r3
	mov.b @(r0,r13),r2
	mov 0x17,r5
	mov 0x00,r6
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x31,r0
	mov 0xF8,r2
	mov.b r2,@(r0,r14)

loc_8c09b766:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c09b7b0,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09b784
	lds.l @r15+,pr 
	mov.l @(loc_8c09b7a0,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09b784:
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09B78c:
	#data 0x2900
loc_8C09B78E:
	#data 0x00DC
loc_8C09B790:
	#data 0x00C0
loc_8C09B792:
	#data 0x012C
loc_8C09B794:
	#data 0x01A3
	#align4

loc_8c09b798:
	#data bank04.loc_8c044f12
loc_8c09b79c:
	#data loc_8c09b6ca
loc_8c09b7a0:
	#data bank04.loc_8c0450c0
loc_8c09b7a4:
	#data bank12.loc_8c129560
loc_8c09b7a8:
	#data bank12.loc_8c1294c8
loc_8c09b7ac:
	#data bank03.loc_8c034e8c
loc_8c09b7b0:
	#data bank03.loc_8c034dee

;==============================================
loc_8C09B7B4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bt loc_8C09B7C6
	bra loc_8C09B8D4
	nop

loc_8C09B7C6:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C09B8E8,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C09B8F8,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C09B8EA,pc),r0; r0 set to 0xC0
	mov.w @(loc_8C09B8E8,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C09B8EC,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09B8EE,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09B8FC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x42,r4 ; r4 set to 0x42
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C09B8F0,pc),r0; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x31,r0; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C09B8EE,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r5),r1
	tst r1,r1
	bt loc_8C09B836
	bra loc_8C09B838
	mov 0x04,r2

loc_8c09b836:
	mov 0x02,r2

loc_8c09b838:
	mov.w @(loc_8C09B8F2,pc),r0
	mov 0x21,r3
	add r14,r3
	mov.l @(loc_8c09b900,pc),r1
	mov.l r2,@(r0,r14)
	mov.w @(loc_8c09b8ee,pc),r0
	mov.b @r3,r3
	mov.b @(r0,r5),r0
	extu.b r3,r3
	extu.b r0,r0
	shll2 r0
	shll r0
	add r3,r0
	mov.b @(r0,r1),r0
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	add 0xFC,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8c09b8ee,pc),r0
	mov.b @(r0,r5),r3
	mov 0x21,r0
	extu.b r3,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	mov.b @(r0,r14),r2
	mov.l @(loc_8c09b904,pc),r0
	extu.b r2,r2
	add r2,r3
	shll r3
	mov.w @(r0,r3),r3
	lds r3,fpul 
	mova @(loc_8C09B908,pc),r0
	fmov.s @r0,fr2
	mov.w @(loc_8C09B8F4,pc),r0
	float fpul,fr3
	mov.w @(r0,r14),r3
	tst r3,r3
	fmov fr3,fr4
	bt/s loc_8c09b88e
	fmul fr2,fr4
	fneg fr4

loc_8c09b88e:
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	mov 0x00,r13
	mov 0x02,r6
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8c09b8ee,pc),r0
	mov.b @(r0,r5),r3
	add 0xFE,r0
	mov 0x16,r5
	extu.b r3,r3
	shll r3
	add 0x35,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8C09B90C,pc),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8c09b910,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c09b8ec,pc),r0
	bra loc_8c09b96a
	mov.b r13,@(r0,r14)

loc_8C09B8D4:
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	cmp/pl r0
	bf loc_8C09B914
	mov.w @(0x1E,r14),r0
	add 0xFF,r0; r0 set to 0x23
	bra loc_8C09B932
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09B8E8:
	#data 0x00Dc
loc_8C09B8EA:
	#data 0x00C0
loc_8C09B8EC:
	#data 0x012c
loc_8C09B8EE:
	#data 0x01A3
loc_8C09B8F0:
	#data 0x019c
loc_8c09b8f2:
	#data 0x00Cc
loc_8c09b8f4:
	#data 0x0130
	#align4

loc_8C09B8F8:
	#data bank12.loc_8c129560
loc_8C09B8FC:
	#data bank12.loc_8c1294C8
loc_8C09B900:
	#data bank15.loc_8c155f00
loc_8C09B904:
	#data bank15.loc_8c155f10
loc_8c09b908:
	#data 0x3FD55555
loc_8c09b90c:
	#data 0x8C2896B0
loc_8C09B910:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c09b914:
	tst r0,r0
	bf loc_8c09b932
	mov 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8C09B972,pc),r0
	extu.b r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r2,r3
	bf loc_8c09b932
	mov.l @(loc_8c09b978,pc),r2
	mov 0x3B,r5
	jsr @r2
	mov r14,r4

loc_8C09B932:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8C09B940
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	bra loc_8C09B96a
	mov.w r0,@(0x1C,r14)

loc_8C09B940:
	mov.w @(loc_8C09B974,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8C09B97C,pc),r3 ; r3 set to 0x8C034DEe
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0; r0??
	cmp/pz r0
	bt loc_8C09B95e
	lds.l @r15+,pr
	mov.l @(loc_8C09B980,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C09B95E:
	lds.l @r15+,pr
	mov.l @(loc_8C09B984,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C09B96A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c09b972:
	#data 0x00Cc
loc_8C09B974:
	#data 0x012c
	#align4

loc_8C09B978:
	#data bank04.loc_8c04223a
loc_8C09B97C:
	#data bank03.loc_8c034dee
loc_8C09B980:
	#data bank04.loc_8c0450C0
loc_8C09B984:
	#data bank04.loc_8c045748

;==============================================
loc_8C09B988:
	mov.l r14,@-r15
	mov 0x07,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(0x56,PC),r12
	mov.l @(0x5C,PC),r11

loc_8c09b99a:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09b9c4
	mov r0,r4
	mov.l @(0x50,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	mov 0x26,r0
	mov.w r12,@(r0,r4)
	mov.w @(0x34,PC),r0
	mov.w @(r0,r13),r3
	mov.w @(0x32,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)

loc_8c09b9c4:
	add 0xFF,r14
	exts.w r14,r3
	cmp/pz r3
	bt loc_8c09b99a
	mov r4,r0
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09B9DC:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09BA00,pc),r1 ; r1 set to 0x8C155F24
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09b9f0:
	#data 0x2A00
loc_8c09b9f2:
	#data 0x0158
loc_8c09b9f4:
	#data 0x00Cc
	#align4

loc_8C09B9F8:
	#data bank04.loc_8c044F12
loc_8C09B9FC:
	#data loc_8c09B9Dc
loc_8C09BA00:
	#data bank15.loc_8c155f24

;==============================================
loc_8C09BA04:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x150,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x148,PC),r2
	add 0x01,r0
	mov.l @(0x150,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x142,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x13E,PC),r0
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
	mov.w @(0x122,PC),r0
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
	mov.l @(0x118,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x00,r4
	mov.b r2,@(r0,r14)
	mov.w @(0xFC,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r5
	mov.w @(0xF8,PC),r0
	extu.b r5,r5
	mov.b @(r0,r13),r3
	shll2 r5
	shll2 r5
	tst r3,r3
	shll2 r5
	bt.s loc_8c09ba80
	add 0x58,r5
	neg r5,r5

loc_8C09BA80:
	exts.w r5,r5
	lds r5,fpul
	mova @(0xEC,PC),r0
	fmov @r0,fr2
	mov 0x34,r0
	fmov @(r0,r13),fr1
	mov 0x08,r3
	float fpul,fr3
	mov 0x42,r5
	fmul fr2,fr3
	fsub fr3,fr1
	fmov fr1,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xB6,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x06,r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x30,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xA8,PC),r3
	mov 0x15,r5
	mov.l r4,@(r0,r14)
	mov 0x1A,r6
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x94,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C09BAF4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bf loc_8C09BB3e
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf loc_8C09BB24
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C09BB5a
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x1C,r0; r0 set to 0x1c
	bra loc_8C09BB5a
	mov.w r0,@(0x1C,r14)

loc_8c09bb24:
	mov.w @(loc_8c09bb64,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x73,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09bb3e
	mov.l @(loc_8c09bb80,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09bb50

loc_8C09BB3E:
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C09BB64,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09BB50:
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C09BB5A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09BB60:
	#data 0x00Dc
loc_8C09BB62:
	#data 0x00C0

loc_8C09BB64:
	#data 0x012c
loc_8C09BB66:
	#data 0x01A3
loc_8C09BB68:
	#data 0x01D2
loc_8C09BB6a:
	#data 0x019C
	#align4

loc_8C09BB6C:
	#data bank12.loc_8c129560
loc_8C09BB70:
	#data bank12.loc_8c1294C8
loc_8C09BB74:
	#data 0x3FD55555
loc_8C09BB78:
	#data 0x8C2896B0
loc_8C09BB7C:
	#data bank03.loc_8c034e8c
loc_8C09BB80:
	#data bank03.loc_8c034dee
loc_8C09BB84:
	#data bank04.loc_8c045748

;==============================================
loc_8C09BB88:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09BB9C,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C09BB96:
	mov.l @(loc_8C09BBA0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09BB9C:
	#data 0x012c
	#align4

loc_8C09BBA0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c09bba4:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0xB6,PC),r11
	mov.l @(0xB8,PC),r10

loc_8c09bbba:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r10
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09bbe2
	mov r0,r4
	mov.w @(0xA6,PC),r0
	mov.l @(0xAC,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.l r13,@(r0,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)

loc_8c09bbe2:
	add 0xFF,r14
	exts.w r14,r3
	cmp/pz r3
	bt loc_8c09bbba
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
loc_8C09BBFC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w r5,@r15
	mov 0x01,r5
	mov.l @(0x6C,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09bc4e
	mov r0,r4
	mov.w @(0x58,PC),r0
	mov.l @(0x5C,PC),r3
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.l r14,@(0x18,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.w @r15,r3
	fmov @(r0,r14),fr2
	mova @(0x40,PC),r0
	extu.w r3,r3
	fmov @r0,fr0
	lds r3,fpul
	mov 0x38,r0
	mov.w @(0x2A,PC),r3
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C09BC4E:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09BC5A:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09BC80,pc),r1 ; r1 set to 0x8C155F34
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	mov.w @(loc_8C09BC72,pc),r0; r0 set to 0xD4
	mov.l @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09BC70:
	#data 0x2A01
loc_8C09BC72:
	#data 0x00D4
	#align4

loc_8C09BC74:
	#data bank04.loc_8c044F12
loc_8C09BC78:
	#data loc_8c09BC5a
loc_8C09BC7c:
	#data 0x40092492
loc_8C09BC80:
	#data bank15.loc_8c155f34

;==============================================
loc_8C09BC84:
	mov.l r14,@-r15
	mov r5,r14
	mov 0x42,r5
	mov.l r13,@-r15
	mov 0x5B,r3
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x116,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x04,r0
	mov.b r3,@(r0,r4)
	mov 0x00,r5
	add 0x0B,r0
	mov.l @(0x11C,PC),r3
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
	mov.w @(0xEC,PC),r1
	mov.w @(0xEC,PC),r0
	add r4,r1
	mov.l @(0xFC,PC),r3
	mov.w @(0xE4,PC),r2
	jsr @r3
	add r14,r2
	mov.w @(0xE2,PC),r0
	mov 0x01,r6
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
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
	mov.w @(0xC6,PC),r0
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
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov.w @(0xA2,PC),r0
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c09bd84
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c09bd28
	mov 0x24,r0
	mov 0x07,r5

loc_8C09BD28:
	mov.b r5,@(r0,r4)
	mov.w @(0x8C,PC),r0
	mov.l @(r0,r14),r5
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x84,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x7E,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c09bd48
	mov 0x58,r5
	mov 0xA8,r5

loc_8C09BD48:
	exts.w r5,r5
	lds r5,fpul
	mova @(0x80,PC),r0
	fmov @r0,fr4
	mov 0x34,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmov fr4,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r6
	extu.b r6,r5
	shll2 r5
	extu.b r6,r6
	shll2 r5
	shll r5
	tst r6,r6
	bt.s loc_8c09bd72
	mov 0x34,r0
	neg r5,r5

loc_8C09BD72:
	exts.w r5,r5
	fmov @(r0,r4),fr2
	lds r5,fpul
	fmov fr4,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	bra loc_8c09bd90
	mov 0x13,r13

loc_8C09BD84:
	mov r6,r0
	nop 
	mov.b r0,@(0x5,r4)
	mov 0x3C,r0
	mov 0x14,r13
	mov.w r0,@(0x1C,r4)

loc_8C09BD90:
	mov.l @(0x40,PC),r3
	mov r13,r6
	jsr @r3
	mov 0x17,r5
	mov.l @(0x3C,PC),r2
	jsr @r2
	nop 
	mov.w @(0x1E,PC),r1
	and 0x03,r0
	add 0x01,r0
	add r14,r1
	mov.b r0,@r1
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09bdb0:
	#data 0x019c
loc_8c09bdb2:
	#data 0x00dc
loc_8c09bdb4:
	#data 0x00c0
loc_8c09bdb6:
	#data 0x012c
loc_8c09bdb8:
	#data 0x01a3
loc_8c09bdba:
	#data 0x020c
loc_8c09bdbc:
	#data 0x041c
loc_8c09bdbe:
	#data 0x0130
loc_8c09bdc0:
	#data 0x0142
	#align4

loc_8c09bdc4:
	#data 0x8C2896B0
loc_8C09BDC8:
	#data bank12.loc_8c129560
loc_8C09BDCC:
	#data bank12.loc_8c1294C8
loc_8c09bdd0:
	#data 0x3FD55555
loc_8C09BDD4:
	#data bank03.loc_8c034e8c
loc_8C09BDD8:
	#data bank03.loc_8c03319e

;----------------------------------------------
loc_8C09BDDC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bf loc_8c09be8e
	mov.w @(0xDC,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c09be74
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09be58
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c09be58
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c09be96
	mov.b @(0x5,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xAE,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xA8,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c09be32
	mov 0x58,r4
	mov 0xA8,r4

loc_8C09BE32:
	exts.w r4,r4
	mov.l @(0xA4,PC),r1
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr1
	mov.w @(0x94,PC),r5
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2
	fmul fr2,fr3
	fsub fr3,fr1
	fmov fr1,@(r0,r14)
	bsr loc_8c09bbfc
	mov r14,r4
	lds.l @r15+,pr
	mov.w @(0x82,PC),r5
	mov r14,r4
	bra loc_8c09bbfc
	mov.l @r15+,r14

loc_8C09BE58:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c09be74
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x70,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C09BE74:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c09be8e
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x64,PC),r3
	mov 0x15,r6
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x17,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C09BE8E:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c09bec2
	mov.l @r15+,r14

loc_8C09BE96:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09BE9C:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C09BED8,pc),r3 ; r3 set to 0x8C034DEe
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	jsr @r3
	mov.l @r15,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09BEBa
	mov.l @r15,r4
	mov.l @(0x04,r15),r5
	add 0x08,r15
	bra loc_8C09BEC2
	lds.l @r15+,pr

loc_8C09BEBA:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C09BEC2:
	mov.w @(loc_8C09BECE,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09BEE8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09bece:
	#data 0x012c
loc_8c09bed0:
	#data 0x0141
loc_8c09bed2:
	#data 0x0130
loc_8c09bed4:
	#data 0x0088
loc_8c09bed6:
	#data 0x0110
	#align4

loc_8C09BED8:
	#data bank03.loc_8c034dee
loc_8C09BEDc:
	#data 0x3FD55555
loc_8C09BEE0:
	#data bank04.loc_8c045748
loc_8C09BEE4:
	#data bank03.loc_8c034e8c
loc_8C09BEE8:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8C09BEec:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov r12,r13
	mov.l r10,@-r15
	mov 0x08,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0xA8,PC),r11
	mov.l @(0xA8,PC),r9

loc_8c09bf06:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r9
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09bf38
	mov r0,r4
	mov 0x34,r0
	mov.l @(0x9C,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov r12,r0
	nop 
	mov.b r0,@(0x7,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)

loc_8c09bf38:
	add 0x01,r13
	cmp/hs r10,r13
	bf loc_8c09bf06
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
loc_8C09BF52:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0x54,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09bf90
	mov r0,r4
	mov 0x34,r0
	mov.l @(0x48,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x01,r0
	mov.b r0,@(0x7,r4)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.w @(0x22,PC),r3
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C09BF90:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09BF9A:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09BFB8,pc),r1 ; r1 set to 0x8C156064
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09BFae:
	#data 0x2A02
	#align4

loc_8C09BFB0:
	#data bank04.loc_8c044F12
loc_8C09BFB4:
	#data loc_8c09BF9a
loc_8C09BFB8:
	#data bank15.loc_8c156064

;==============================================
loc_8C09BFBC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0x15C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x154,PC),r2
	add 0x01,r0
	mov.l @(0x168,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x14E,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x14A,PC),r0
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
	mov.w @(0x12E,PC),r0
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
	mov.l @(0x12C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x00,r12
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x40,r3
	mov.b r12,@(r0,r14)
	mov.w @(0x10A,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov.b r12,@(r0,r14)
	mov.w @(0x100,PC),r1
	and 0x01,r0
	add 0x5D,r0
	mov.l @(0x114,PC),r3
	add r14,r1
	mov.b r0,@r1
	mov.w @(0xF6,PC),r0
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
	mov.l @(0xEC,PC),r2
	jsr @r2
	nop 
	mov.w @(0xD6,PC),r1
	and 0x03,r0
	add r14,r1
	mov.l r0,@r1
	mova @(0xE8,PC),r0
	fmov @r0,fr5
	mova @(0xE8,PC),r0
	fmov @r0,fr4
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c09c0ac
	mov 0x20,r0
	mov.l @(0xE0,PC),r3
	mov.b @(r0,r14),r5
	extu.b r5,r5
	shll2 r5
	add r3,r5
	mov.w @(0x2,r5),r0
	mov.w @r5,r4
	mov r0,r5
	mov.w @(0xB0,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c09c08e
	mov 0x34,r0
	neg r4,r4

loc_8C09C08E:
	exts.w r4,r4
	fmov @(r0,r14),fr2
	lds r4,fpul
	exts.w r5,r5
	fmov fr5,fr0
	float fpul,fr3
	lds r5,fpul
	fmac fr0,fr3,fr2
	fmov fr4,fr0
	float fpul,fr3
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C09C0AC:
	mov 0x20,r0
	mov.l @(0xA8,PC),r2
	mov.b @(r0,r14),r12
	mov.w @(0x7E,PC),r0
	extu.b r12,r12
	mov.l @(r0,r14),r3
	shll2 r12
	shll2 r12
	shll2 r3
	shll r12
	add r2,r12
	shll r3
	add 0x64,r0
	add r3,r12
	mov.w @(r0,r14),r3
	mov.w @r12+,r4
	tst r3,r3
	bt.s loc_8c09c0d4
	mov.w @r12+,r5
	neg r4,r4

loc_8C09C0D4:
	exts.w r4,r4
	fmov fr5,fr0
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	exts.w r5,r5
	float fpul,fr3
	lds r5,fpul
	mov 0x15,r5
	fmac fr0,fr3,fr2
	fmov fr4,fr0
	float fpul,fr3
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x3C,PC),r0
	mov.w @r12+,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.l @(0x5C,PC),r3
	mov.w r2,@(r0,r14)
	mov.w @r12,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x2C,PC),r0
	mov 0x40,r2
	mov.l @(0x50,PC),r3
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bra loc_8c09c164
	nop 

loc_8c09c126:
	#data 0x00dc
loc_8c09c128:
	#data 0x00c0
loc_8c09c12a:
	#data 0x012c
loc_8c09c12c:
	#data 0x01a3
loc_8c09c12e:
	#data 0x019c
loc_8c09c130:
	#data 0x01a1
loc_8c09c132:
	#data 0x01ac
loc_8c09c134:
	#data 0x00cc
loc_8c09c136:
	#data 0x0130
loc_8c09c138:
	#data 0x013f
	#align4

loc_8C09C13C:
	#data bank12.loc_8c129560
loc_8C09C140:
	#data bank12.loc_8c1294C8
loc_8C09C144:
	#data bank03.loc_8c03319e
loc_8C09C148:
	#data 0x8C2896B0
loc_8C09C14c:
	#data 0x3FD55555
loc_8C09C150:
	#data 0x40092492
loc_8C09C154:
	#data bank15.loc_8c155f44
loc_8C09C158:
	#data bank15.loc_8c155f64
loc_8C09C15C:
	#data bank03.loc_8c034e8c
loc_8C09C160:
	#data bank03.loc_8c03340c

;==============================================
loc_8C09C164:
	bt loc_8c09c170
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c09c17e

loc_8C09C170:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c09c1ce
	mov.l @r15+,r14

loc_8C09C17E:
	lds.l @r15+,pr
	mov.l @(0x64,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C09C18C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov r5,r3
	mov.l r5,@r15
	mov.b @(0x1,r14),r0
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bf loc_8c09c1ba
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09c1ba
	mov.l @(0x40,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09c1c6
	bsr loc_8c09bf52
	mov r14,r4

loc_8C09C1BA:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c09c1ce
	mov.l @r15+,r14

loc_8C09C1C6:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09C1CE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09C1E2,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09C1F0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09C1E0:
	#data 0x019e
loc_8C09C1E2:
	#data 0x012c
	#align4

loc_8C09C1E4:
	#data bank03.loc_8c0334A8
loc_8C09C1E8:
	#data bank04.loc_8c045748
loc_8C09C1EC:
	#data bank03.loc_8c034dee
loc_8C09C1F0:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c09c1f4:
	mov.l r14,@-r15
	mov 0x02,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(0x44,PC),r12
	mov.l @(0x44,PC),r11

loc_8c09c206:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09c222
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x38,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.w r12,@(r0,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)

loc_8c09c222:
	dt r14
	bf loc_8c09c206
	mov r4,r0
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09C236:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09C254,pc),r1 ; r1 set to 0x8C156074
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09c24a:
	#data 0x2A03
	#align4

loc_8C09C24C:
	#data bank04.loc_8c044F12
loc_8C09C250:
	#data loc_8c09C236
loc_8C09C254:
	#data bank15.loc_8c156074

;==============================================
loc_8C09C258:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(0x12E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x138,PC),r3
	add 0x01,r0
	mov.w @(0x122,PC),r2
	mov.b r0,@(0x4,r14)
	mov.w @(0x120,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x11C,PC),r0
	mov 0x01,r4
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
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
	mov.w @(0x100,PC),r0
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
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xF4,PC),r12
	mov.b @(r0,r5),r2
	mov 0x00,r13
	mov 0x40,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xD6,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r13,@(r0,r14)
	mov.w @(0xD2,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	jsr @r12
	mov.b r13,@(r0,r14)
	mov.l @(0xDC,PC),r1
	and 0x1F,r0
	shll r0
	mov.l @(0xE4,PC),r2
	mov.w @(r0,r1),r3
	mova @(0xD8,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	extu.w r3,r3
	lds r3,fpul
	mov 0x0B,r4
	mov.l @(0xD0,PC),r3
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @r2,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xA4,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c09c304
	mov r13,r11
	mov r13,r11
	mov 0xF5,r4

loc_8C09C304:
	lds r4,fpul
	mov 0x5C,r0
	float fpul,fr3
	jsr @r12
	fmov fr3,@(r0,r14)
	and 0x1F,r0
	lds r0,fpul
	mova @(0xAC,PC),r0
	fmov @r0,fr2
	mova @(0xAC,PC),r0
	fmov @r0,fr1
	mov 0x60,r0
	float fpul,fr3
	lds r11,fpul
	fmul fr2,fr3
	fneg fr3
	fadd fr1,fr3
	fmov fr3,@(r0,r14)
	float fpul,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x64,r0
	jsr @r12
	mov.w r0,@(0x1C,r14)
	mov.l @(0x8C,PC),r3
	mov 0x03,r6
	mov 0x17,r5
	and r0,r6
	jsr @r3
	mov r14,r4
	jsr @r12
	mov 0x5A,r11
	tst 0x03,r0
	bt loc_8c09c350
	mov 0x5F,r11

loc_8C09C350:
	mov.w @(0x4C,PC),r0
	mov r14,r4
	mov.l @(0x74,PC),r3
	mov.b r11,@(r0,r14)
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
	mov 0x40,r2
	mov.w @(0x28,PC),r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09c394:
	#data 0x00dc
loc_8c09c396:
	#data 0x00c0
loc_8c09c398:
	#data 0x012c
loc_8c09c39a:
	#data 0x01a3
loc_8c09c39c:
	#data 0x019c
loc_8c09c39e:
	#data 0x0130
loc_8c09c3a0:
	#data 0x01a1
loc_8c09c3a2:
	#data 0x013f
	#align4

loc_8C09C3A4:
	#data bank12.loc_8c129560
loc_8C09C3A8:
	#data bank12.loc_8c1294C8
loc_8C09C3AC:
	#data bank03.loc_8c03319e
loc_8C09C3B0:
	#data bank15.loc_8c156084
loc_8C09C3B4:
	#data 0x3FD55555
loc_8C09C3B8:
	#data 0x8C26A5A0
loc_8C09C3Bc:
	#data 0x8C26A5A8
loc_8C09C3c0:
	#data 0x40092492
loc_8C09C3c4:
	#data 0xC14DB6Db
loc_8C09C3C8:
	#data bank03.loc_8c034e8c
loc_8C09C3cc:
	#data 0x8C2896B0
loc_8C09C3D0:
	#data bank04.loc_8c045748

;==============================================
loc_8C09C3D4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov r5,r3
	mov.l r5,@r15
	mov.b @(0x01,r14),r0
	mov r0,r2
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bf loc_8C09C452
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8C09C452
	mov.w @(loc_8C09C470,pc),r0; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C09C452
	mov.l @(loc_8C09C474,pc),r2 ; r2 set to 0x8C03340c
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8C09C452
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C09C478,pc),r3 ; r3 set to 0x8C034DEe
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C09C47C,pc),r2 ; r2 set to 0x8C045748
	jmp @r2
	mov.l @r15+,r14

loc_8C09C452:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C09C45e
	mov.l @r15+,r14

loc_8C09C45E:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09C472,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09C480,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09C470:
	#data 0x019e
loc_8C09C472:
	#data 0x012c
	#align4

loc_8C09C474:
	#data bank03.loc_8c03340c
loc_8C09C478:
	#data bank03.loc_8c034dee
loc_8C09C47C:
	#data bank04.loc_8c045748
loc_8C09C480:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c09c484:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x54,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09c4be
	mov r0,r4
	mov.l @(0x48,PC),r3
	mov.w @(0x3A,PC),r2
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x22,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov.w @(0x28,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(0x26,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)

loc_8c09c4be:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09C4CA:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09C4EC,pc),r1 ; r1 set to 0x8C1560C4
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09c4de:
	#data 0x2A04
loc_8c09c4e0:
	#data 0x0158
loc_8c09c4e2:
	#data 0x00CC
	#align4

loc_8C09C4E4:
	#data bank04.loc_8c044F12
loc_8C09C4E8:
	#data loc_8c09C4Ca
loc_8C09C4EC:
	#data bank15.loc_8c1560C4

;==============================================
loc_8C09C4F0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x166,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x15E,PC),r2
	add 0x01,r0
	mov.l @(0x16C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x158,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x154,PC),r0
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
	mov 0x00,r4
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x42,r5
	mov.b r4,@(r0,r14)
	mov 0x18,r3
	mov.w @(0x112,PC),r0
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
	mov.l @(0x110,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	mov.l @(0xF4,PC),r2
	shll2 r4
	add r2,r4
	mov.w @r4,r3
	mov.w @(0x2,r4),r0
	lds r3,fpul
	mov r0,r3
	mov.w @(0xD2,PC),r0
	float fpul,fr4
	mov.w @(r0,r14),r1
	lds r3,fpul
	tst r1,r1
	bt.s loc_8c09c5a6
	float fpul,fr5
	fneg fr4

loc_8C09C5A6:
	mova @(0xDC,PC),r0
	mov.l @(0xE0,PC),r3
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fmul fr3,fr4
	fsub fr4,fr2
	fldi0 fr4
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mova @(0xC8,PC),r0
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr5,fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r4
	mov 0x04,r0
	extu.b r4,r4
	shll2 r4
	shll r4
	add r3,r4
	fmov @(r0,r4),fr5
	mov.w @(0x8A,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c09c5ea
	fmov @r4,fr4
	fneg fr4

loc_8C09C5EA:
	mov 0x5C,r0
	mov.l @(0xA0,PC),r3
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	mov 0x0B,r5
	fmov fr5,@(r0,r14)
	mov 0x08,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C09C606:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8C09C6A6
	mov.w @(loc_8C09C66E,pc),r0; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C09C6A6
	mov.w @(loc_8C09C670,pc),r0; r0 set to 0x19f
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C09C6A6
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	bra loc_8C09C694
	nop

;##############################################
loc_8c09c662:
	#data 0x00Dc
loc_8c09c664:
	#data 0x00C0
loc_8c09c666:
	#data 0x012C
loc_8c09c668:
	#data 0x01A3
loc_8c09c66a:
	#data 0x019C
loc_8c09c66c:
	#data 0x0130
loc_8C09C66E:
	#data 0x019e
loc_8C09C670:
	#data 0x019f
	#align4

loc_8C09C674:
	#data bank12.loc_8c129560
loc_8C09C678:
	#data bank12.loc_8c1294C8
loc_8C09C67c:
	#data 0x8C2896B0
loc_8C09C680:
	#data bank15.loc_8c1560D4
loc_8C09C684:
	#data 0x3FD55555
loc_8C09C688:
	#data 0x40092492
loc_8C09C68C:
	#data bank15.loc_8c1560E0
loc_8C09C690:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C09C694:
	mov.l @(loc_8C09C6BC,pc),r3 ; r3 set to 0x8C034DEe
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C09C6C0,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C09C6A6:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C09C6Ae
	mov.l @r15+,r14

loc_8C09C6AE:
	mov.w @(loc_8C09C6BA,pc),r0; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09C6C4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;##############################################
loc_8C09C6BA:
	#data 0x012c
	#align4

loc_8C09C6BC:
	#data bank03.loc_8c034dee
loc_8C09C6C0:
	#data bank04.loc_8c045748
loc_8C09C6C4:
	#data bank04.loc_8c0450C0

;----------------------------------------------
;Unused
loc_8c09c6c8:
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x01,r6
	mov.l @(0x158,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c09c6f4
	mov r0,r4
	mov.w @(0x130,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r2
	mov.l @(0x140,PC),r3
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c09c6f4:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C09C6FC:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09C830,pc),r1 ; r1 set to 0x8C156108
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C09C710:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xFE,PC),r6
	mov 0x01,r4
	mov.w @(0xFC,PC),r1
	sts.l pr,@-r15
	mov.l @(0x114,PC),r3
	add r5,r6
	mov.b r4,@r14
	add r14,r1
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @(0x18,r14),r2
	mov.w @(0xE8,PC),r0
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xE2,PC),r0
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
	add 0x50,r2
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x00,r7
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov 0x42,r2
	mov.b r7,@(r0,r14)
	mov.w @(0x94,PC),r0
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r14)
	add 0x6C,r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov r2,r3
	mov.b r3,@(r0,r14)
	add 0x9F,r0
	mov 0x70,r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r7,@(r0,r14)
	add 0x01,r0
	mov 0x40,r3
	mov.l @(0x94,PC),r7
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov 0x30,r2
	mov.b r2,@(r0,r14)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov.w @(0x6A,PC),r0
	fmov @(r0,r7),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fldi0 fr4
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x54,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c09c7e8
	mova @(0x74,PC),r0
	fmov @r0,fr2
	mov.w @(0x4A,PC),r0
	fmov @(r0,r7),fr1
	mov 0x34,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr1
	fneg fr1
	fmov fr1,@(r0,r14)

loc_8C09C7E8:
	mov.w @(0x3A,PC),r0
	mov.l @(0x60,PC),r3
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r5)
	mov 0x6C,r0
	fmov fr4,@(r0,r5)
	mov.b r4,@r6
	jsr @r3
	mov r14,r4
	mov.l @(0x4C,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	mov r14,r4
	mov 0x00,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09c814:
	#data 0x2b00
loc_8c09c816:
	#data 0x02a4
loc_8c09c818:
	#data 0x00dc
loc_8c09c81a:
	#data 0x012c
loc_8c09c81c:
	#data 0x01a3
loc_8c09c81e:
	#data 0x0130
loc_8c09c820:
	#data 0x008c
loc_8c09c822:
	#data 0x01d2
loc_8c09c824:
	#data 0x0088
loc_8c09c826:
	#data 0x041c
	#align4

loc_8C09C828:
	#data bank04.loc_8c044F12
loc_8C09C82C:
	#data loc_8c09C6Fc
loc_8C09C830:
	#data bank15.loc_8c156108
loc_8C09C834:
	#data bank12.loc_8c129560
loc_8C09C838:
	#data bank12.loc_8c1294C8
loc_8C09C83c:
	#data 0x8C26A518

loc_8C09C840:
	#data 0x42D55555
loc_8C09C844:
	#data 0xC1200000
loc_8C09C848:
	#data 0xC2D55555
loc_8C09C84C:
	#data bank10.loc_8c104434
loc_8C09C850:
	#data bank04.loc_8c045748
loc_8C09C854:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C09C858:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C09C946,pc),r3 ; r3 set to 0x2A4
	mov r5,r13
	mov.l @(loc_8C09C954,pc),r12 ; r12 set to 0x8C034E8c
	mov.l @(loc_8C09C950,pc),r10; r10set to 0x8C034DEe
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.l r3,@r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C09C896
	mov 0x00,r11 ; r11 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C09C908
	cmp/eq 0x02,r0
	bf loc_8C09C88a
	bra loc_8C09C9Fa
	nop

loc_8C09C88A:
	cmp/eq 0x03,r0
	bf loc_8C09C892
	bra loc_8C09CA38
	nop

loc_8C09C892:
	bra loc_8C09CA8e
	nop

loc_8C09C896:
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r10
	mov r14,r4
	exts.b r0,r0; r0??
	cmp/pz r0
	bf loc_8C09C8C0
	bra loc_8C09C9E6
	nop

loc_8C09C8C0:
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C09C8De
	mov 0x03,r0; r0 set to 0x03
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C09C948,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r13),r0; r0??? bc r13 is ???
	extu.b r0,r0
	mov.w r0,@(0x1E,r14)
	bra loc_8C09C8F0
	mov 0x01,r3

loc_8C09C8DE:
	mov.l @(loc_8C09C958,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	mov.w r0,@(0x1C,r14)
	mov.l @(loc_8C09C95C,pc),r1 ; r1 set to 0x8C1560F8
	and 0x0F,r0
	mov 0x06,r3 ; r3 set to 0x06
	mov.b @(r0,r1),r0
	extu.b r0,r0
	mov.w r0,@(0x1E,r14)

loc_8C09C8F0:
	mov 0x21,r0; r0 set to 0x21, r0 set to 0x21
	mov.b r3,@(r0,r14)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.w @(0x1E,r14),r0
	mov r0,r6 ; r6 set to 0x21, r6 set to 0x21
	mov 0x21,r0; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	add r3,r6 ; r6 ??? bc r3 is ???, r6 ??? bc r3 is ???
	jsr @r12
	mov r14,r4
	bra loc_8C09C9E6
	nop

loc_8c09c908:
	mov.w @(loc_8C09C94A,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c09c916
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09c920

loc_8c09c916:
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	bra loc_8c09c93c
	mov 0x05,r6

loc_8c09c920:
	mov.w @(loc_8C09C94C,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bf loc_8c09c960
	mov.w @(loc_8C09C94E,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8c09c960
	mov.b @(0x05,r14),r0
	mov 0x04,r6
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c09c93c:
	mov 0x17,r5
	jsr @r12
	mov r14,r4
	bra loc_8c09ca8e
	nop

;##############################################
loc_8c09c946:
	#data 0x02A4
loc_8c09c948:
	#data 0x01A3
loc_8C09C94A:
	#data 0x019F
loc_8C09C94C:
	#data 0x01D0
loc_8C09C94E:
	#data 0x0255

loc_8c09c950:
	#data bank03.loc_8c034dee
loc_8c09c954:
	#data bank03.loc_8c034e8c
loc_8c09c958:
	#data bank03.loc_8c03319e
loc_8c09c95c:
	#data bank15.loc_8c1560f8

;==============================================
loc_8c09c960:
	mov.w @(loc_8C09CA9E,pc),r0
	mov.b @(r0,r14),r0
	tst 0x01,r0
	bt loc_8c09c97e
	mov.w @(loc_8C09CA9E,pc),r0
	mov r13,r5
	mov.l @(loc_8c09caa4,pc),r3
	mov.b r11,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov r0,r7
	mov 0x20,r0
	mov.b @(r0,r14),r6
	extu.b r6,r6
	jsr @r3
	mov r14,r4

loc_8c09c97e:
	mov.w @(loc_8C09CA9E,pc),r0
	mov.b @(r0,r14),r0
	tst 0x02,r0
	bt loc_8c09c996
	mov.w @(loc_8C09CA9E,pc),r0
	mov r13,r5
	mov.l @(loc_8c09caa8,pc),r3
	mov.b r11,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov r0,r6
	jsr @r3
	mov r14,r4

loc_8c09c996:
	jsr @r10
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09c9e6
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c09c9be
	mov.b @(0x05,r14),r0
	mov 0x17,r5
	mov 0x04,r6
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	jsr @r12
	mov r14,r4
	bra loc_8c09c9e6
	nop

loc_8c09c9be:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c09c9e6
	mov.l @(loc_8c09caac,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8c09cab0,pc),r1
	and 0x0F,r0
	mov 0x17,r5
	mov.b @(r0,r1),r0
	extu.b r0,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	mov r0,r6
	mov 0x21,r0
	mov.b @(r0,r14),r3
	add r3,r6
	jsr @r12
	mov r14,r4

loc_8C09C9E6:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C09CAB4,pc),r3 ; r3 set to 0x8C045748
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09c9fa:
	jsr @r10
	mov r14,r4
	mov.w @(loc_8C09CA9E,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09ca8e
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mova @(loc_8C09CAB8,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09CAA0,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c09ca24
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c09ca24:
	mova @(loc_8C09CABC,pc),r0
	fldi0 fr4
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	bra loc_8c09ca8e
	fmov.s fr4,@(r0,r14)

loc_8c09ca38:
	mov 0x5C,r1
	mov.l @(0x84,PC),r3
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
	bf loc_8c09ca8e
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r11,r0
	nop 
	mov.b r0,@(0x5,r14)
	mov.w @(0x18,PC),r0
	mov.b r11,@(r0,r14)
	mov.l @r15,r3
	mov.b r11,@r3

loc_8C09CA8E:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c09ca9e:
	#data 0x0141
loc_8c09caa0:
	#data 0x0130
loc_8c09caa2:
	#data 0x012C
	#align4

loc_8C09CAA4:
	#data loc_8c09CAE0
loc_8C09CAA8:
	#data bank0e.loc_8c0e385c
loc_8C09CAAC:
	#data bank03.loc_8c03319e
loc_8C09CAB0:
	#data bank15.loc_8c1560F8
loc_8C09CAB4:
	#data bank04.loc_8c045748
loc_8c09cab8:
	#data 0x4162AAAa
loc_8c09cabc:
	#data 0x411A4924
loc_8C09CAC0:
	#data bank03.loc_8c0332E0

;==============================================
loc_8C09CAC4:
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf loc_8C09CAD2
	mov.b @(0x05,r4),r0
	add 0x01,r0
	bra loc_8C09CAD8
	mov.b r0,@(0x05,r4)

loc_8C09CAD2:
	mov.l @(loc_8C09CADC,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C09CAD8:
	rts
	nop

;----------------------------------------------
	#align4

loc_8C09CADC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C09CAE0:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0x50,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov.l r6,@(0xC,r15)
	mov 0x01,r6
	mov r6,r5
	mov.l r7,@(0x8,r15)
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c09cb1a
	mov r0,r4
	mov.w @(0x34,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0xC,r15),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x30,PC),r2
	mov.l @(0x8,r15),r3
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x14,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8C09CB1A:
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C09CB22:
	mov r4,r3
	mov.l @(loc_8C09CB40,pc),r1 ; r1 set to 0x8C156158
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;##############################################
loc_8C09CB34:
	#data 0x2B01
	#align4

loc_8C09CB38:
	#data bank04.loc_8c044F12
loc_8C09CB3C:
	#data loc_8c09CB22
loc_8C09CB40:
	#data bank15.loc_8c156158

;----------------------------------------------
loc_8C09CB44:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x15A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x152,PC),r2
	add 0x01,r0
	mov.l @(0x14,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0x14C,PC),r0
	mov.l @(0x158,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0x146,PC),r0
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
	mov.w @(0x12A,PC),r0
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
	mov.l @(0x124,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r14,r1
	mov.b @(r0,r4),r2
	mov 0x42,r5
	mov 0x00,r13
	mov.b r2,@(r0,r14)
	mov r4,r2
	mov.w @(0x102,PC),r0
	add 0x34,r2
	add 0x34,r1
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x24,r0
	mov.b r13,@(r0,r14)
	mov 0x10,r5
	mov.w @(0xF2,PC),r0
	mov.w @(r0,r4),r3
	mov.w r3,@(r0,r14)
	add 0x0C,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x14,r0
	mov.l @(0xE4,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.l @(0xE0,PC),r3
	mov.b @(r0,r14),r5
	extu.b r5,r5
	shll r5
	mov r5,r4
	shll r4
	add r3,r4
	mov.w @r4,r2
	shll2 r5
	mov.w @(0x2,r4),r0
	lds r2,fpul
	mov r0,r2
	mov 0x20,r0
	mov.b @(r0,r14),r4
	mov.l @(0xC8,PC),r0
	float fpul,fr4
	extu.b r4,r4
	lds r2,fpul
	shll2 r4
	mov.l @(r0,r4),r4
	mova @(0xC0,PC),r0
	float fpul,fr5
	fmov @r0,fr7
	add r5,r4
	mov.l @r4+,r2
	mova @(0xB8,PC),r0
	fmov @r0,fr6
	lds r2,fpul
	float fpul,fr3
	fmul fr7,fr3
	fdiv fr6,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xAC,PC),r0
	mov.l @r4,r2
	fmov @r0,fr8
	mov 0x60,r0
	lds r2,fpul
	float fpul,fr3
	fmul fr8,fr3
	fdiv fr6,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x7C,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c09cc44
	mov 0x5C,r0
	fneg fr4
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C09CC44:
	mov 0x34,r0
	fmov fr7,fr0
	fmov @(r0,r14),fr3
	fmac fr0,fr4,fr3
	fmov fr8,fr0
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmac fr0,fr5,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09cc64
	bra loc_8c09cc70
	mov 0x32,r4

loc_8C09CC64:
	mov.l @(0x6C,PC),r2
	jsr @r2
	nop 
	and 0x01,r0
	mov r0,r4
	add 0x39,r4

loc_8C09CC70:
	mov.w @(0x40,PC),r0
	mov.l @(0x64,PC),r3
	mov.b r4,@(r0,r14)
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
	mov.l @(0x48,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x44,PC),r3
	mov 0x09,r6
	mov 0x17,r5
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c09cca8:
	#data 0x00dc
loc_8c09ccaa:
	#data 0x00c0
loc_8c09ccac:
	#data 0x012c
loc_8c09ccae:
	#data 0x01a3
loc_8c09ccb0:
	#data 0x019c
loc_8c09ccb2:
	#data 0x0130
loc_8c09ccb4:
	#data 0x01a1
	#align4

loc_8C09CCB8:
	#data bank12.loc_8c129560
loc_8C09CCBC:
	#data bank12.loc_8c1294C8
loc_8C09CCC0:
	#data bank15.loc_8c156114
loc_8C09CCC4:
	#data bank15.loc_8c156150
loc_8C09CCC8:
	#data 0x3FD55555
loc_8C09CCCc:
	#data 0x47800000
loc_8C09CCD0:
	#data 0x40092492
loc_8C09CCD4:
	#data bank03.loc_8c03319e
loc_8C09CCD8:
	#data 0x8C2896B0
loc_8C09CCDC:
	#data bank04.loc_8c045748
loc_8C09CCE0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C09CCE4:
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
	mov.w @(0x58,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c09cd38
	mov.w @(0x52,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09cd4a

loc_8C09CD38:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x44,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09CD4A:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c09cd58
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	bra loc_8c09cd6e
	mov.w r0,@(0x1C,r14)

loc_8C09CD58:
	mov.l @(0x34,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c09cd6e
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1A,PC),r0
	mov.b r3,@(r0,r14)

loc_8C09CD6E:
	lds.l @r15+,pr
	mov.l @(0x20,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused return
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09CD7E:
	mov.l @(loc_8C09CD98,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09cd84:
	#data 0x019e
loc_8c09cd86:
	#data 0x019f
loc_8c09cd88:
	#data 0x012c
	#align4

loc_8C09CD8C:
	#data bank03.loc_8c034dee
loc_8C09CD90:
	#data bank03.loc_8c0332E0
loc_8C09CD94:
	#data bank04.loc_8c045748
loc_8C09CD98:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c09cd9c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x01,r6
	mov.l @(0x14C,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c09cdc8
	mov r0,r4
	mov.w @(0x126,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r2
	mov.l @(0x134,PC),r3
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c09cdc8:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C09CDD0:
	mov r4,r3
	mov.l @(loc_8C09CEF8,pc),r1 ; r1 set to 0x8C156164
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09CDE2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C09CEE0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C09CEE0,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C09CEE2,pc),r0; r0 set to 0xC0
	mov.l @(loc_8C09CEFC,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C09CEE4,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09CEE6,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r4),r2 ; r2 ??? bc r4 is ???
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09CF00,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x42,r5 ; r5 set to 0x42
	mov 0x31,r1 ; r1 set to 0x31
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C09CEE8,pc),r0; r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r5,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov.b r3,@(r0,r14)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C09CE5e
	add r14,r1 ; r1 ??? bc r14 is ???
	bra loc_8C09CE60
	mov 0x04,r3

loc_8C09CE5E:
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFc

loc_8C09CE60:
	mov.b @r1,r2
	add r3,r2
	mov.l @(loc_8C09CF00,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	mov.b r2,@r1
	mov r4,r2
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0C, r0 set to 0x0c
	mov.l @(loc_8C09CF04,pc),r1 ; r1 set to 0x43092492, r1 set to 0x43092492
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x21,r0; r0 set to 0x21, r0 set to 0x21
	mov.b r5,@(r0,r14)
	mov 0x20,r0; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_8C09CECc
	mov.w @(loc_8C09CEEA,pc),r0; r0 set to 0x1E9, r0 set to 0x1E9
	mov.b @(r0,r4),r0; r0??? bc r4 is ???, r0??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C09CEA2
	mov.w @(loc_8C09CEEC,pc),r0; r0 set to 0x1A1, r0 set to 0x1A1
	mov 0x38,r2 ; r2 set to 0x38, r2 set to 0x38
	bra loc_8C09CEA8
	mov.b r2,@(r0,r14)

loc_8c09cea2:
	mov.w @(loc_8c09ceec,pc),r0
	mov 0x41,r3
	mov.b r3,@(r0,r14)

loc_8c09cea8:
	mov.w @(loc_8C09CEEE,pc),r0
	mov.l @(loc_8C09CF08,pc),r3
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(loc_8c09cf0c,pc),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r3
	mov r14,r4

loc_8C09CECC:
	mov 0x20,r0; r0 set to 0x20
	mov.l @(loc_8C09CF10,pc),r3 ; r3 set to 0x8C034E8c
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x17,r5 ; r5 set to 0x17
	add 0x12,r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09cede:
	#data 0x2B02
loc_8C09CEE0:
	#data 0x00Dc
loc_8C09CEE2:
	#data 0x00C0
loc_8C09CEE4:
	#data 0x012c
loc_8C09CEE6:
	#data 0x01A3
loc_8C09CEE8:
	#data 0x019c
loc_8C09CEEA:
	#data 0x01E9
loc_8C09CEEC:
	#data 0x01A1
loc_8c09ceee:
	#data 0x01Ac
	#align4

loc_8C09CEF0:
	#data bank04.loc_8c044F12
loc_8C09CEF4:
	#data loc_8c09CDD0
loc_8C09CEF8:
	#data bank15.loc_8c156164
loc_8C09CEFC:
	#data bank12.loc_8c129560
loc_8C09CF00:
	#data bank12.loc_8c1294C8
loc_8C09CF04:
	#data 0x43092492
loc_8c09cf08:
	#data 0x8C2896B0
loc_8C09CF0C:
	#data bank04.loc_8c045748
loc_8C09CF10:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C09CF14:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c09cf2e
	mov.w @(0x92,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c09cf32

loc_8C09CF2E:
	bra loc_8c09cf60
	mov 0x02,r0

loc_8C09CF32:
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x31,r1
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c09cf48
	add r14,r1
	bra loc_8c09cf4a
	mov 0x04,r3


loc_8C09CF48:
	mov 0xFC,r3

loc_8C09CF4A:
	mov.b @r1,r2
	add r3,r2
	mov.l @(0x70,PC),r3
	mov.b r2,@r1
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09cf6a
	mov.b @(0x4,r14),r0
	add 0x01,r0

loc_8C09CF60:
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x54,PC),r0
	bra loc_8c09cfac
	mov.b r3,@(r0,r14)

loc_8C09CF6A:
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c09cf90
	mov.w @(0x48,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c09cf90
	mov.l @(0x48,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r13,r4
	mov.l @(0x40,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r13,r4
	mov 0x21,r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_8C09CF90:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c09cfac
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c09cfac
	lds.l @r15+,pr
	mov.l @(0x24,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C09CFAC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09CFB4:
	mov.l @(loc_8C09CFCC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09cfba:
	#data 0x01d0
loc_8c09cfbc:
	#data 0x012c
loc_8c09cfbe:
	#data 0x019e
	#align4

loc_8C09CFC0:
	#data bank03.loc_8c034dee
loc_8C09CFC4:
	#data bank0e.loc_8c0e3DBc
loc_8C09CFC8:
	#data bank04.loc_8c045748
loc_8C09CFCC:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8C09CFd0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x160,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09d012
	mov r0,r4
	mov.l @(0x154,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0x12C,PC),r3
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

loc_8c09d012:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09D01E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8c09d044
	mov.l @(0x18,r14),r5
	mov 0x20,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf.s loc_8c09d03e
	mov r14,r4
	mov.w @(0xF0,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r5)

loc_8C09D03E:
	mov.l @(0x104,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C09D044:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r1
	mov.l @(0xFC,PC),r0
	extu.b r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C09D056:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bt/s loc_8C09D06a
	mov r5,r13
	bra loc_8C09D1Bc
	nop

loc_8C09D06A:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C09D12E,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C09D14C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C09D130,pc),r0; r0 set to 0xC0
	mov.w @(loc_8C09D12E,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C09D132,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09D134,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09D150,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	fldi0 fr3
	mov.b @(r0,r13),r2
	mov 0x42,r3 ; r3 set to 0x42
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C09D154,pc),r5 ; r5 set to 0x8C15617c
	mov.b r2,@(r0,r14)
	mov 0x60,r2 ; r2 set to 0x60
	mov.w @(loc_8C09D136,pc),r0; r0 set to 0x19c
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0xA1,r0; r0 set to 0x13e
	mov 0x30,r3 ; r3 set to 0x30
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13d
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13c
	mov.b r3,@(r0,r14)
	add 0x03,r0; r0 set to 0x13f
	mov.b r2,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09D134,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r14),r0; r0??? bc r14 is ???
	extu.b r0,r0
	shll r0
	shll2 r0
	mov.l @(r0,r5),r3 ; r3 ??
	lds r3,fpul
	float fpul,fr3
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09D134,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	shll2 r3
	add r3,r5 ; r5 ??? bc r3 is ???
	mov.l @(0x04,r5),r3
	lds r3,fpul
	float fpul,fr3
	mov r2,r0; r0 set to 0x60
	nop
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09D138,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C09D15c
	mova @(loc_8C09D158,pc),r0 ; r0 set to loc_8c09D158
	fmov.s @r0,fr3
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???
	bra loc_8C09D16e
	fadd fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09d12a:
	#data 0x2C00
loc_8c09d12c:
	#data 0x02B0
loc_8C09D12E:
	#data 0x00Dc
loc_8C09D130:
	#data 0x00C0
loc_8C09D132:
	#data 0x012c
loc_8C09D134:
	#data 0x01A3
loc_8C09D136:
	#data 0x019c
loc_8C09D138:
	#data 0x0130
	#align4

loc_8C09D13C:
	#data bank04.loc_8c044F12
loc_8C09D140:
	#data loc_8c09D01e
loc_8C09D144:
	#data bank04.loc_8c0450C0
loc_8C09D148:
	#data bank15.loc_8c156170
loc_8C09D14C:
	#data bank12.loc_8c129560
loc_8C09D150:
	#data bank12.loc_8c1294C8
loc_8C09D154:
	#data bank15.loc_8c15617c
loc_8C09D158:
	#data 0x42D55555

;==============================================
loc_8c09d15c:
	mova @(loc_8C09D240,pc),r0
	fmov.s @r0,fr3
	mov 0x34,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fneg fr2

loc_8c09d16e:
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C09D244,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	mov 0x00,r6
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C09D238,pc),r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	extu.b r3,r3
	shll r3
	add 0x36,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8C09D248,pc),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C09D23A,pc),r0
	mov.b r4,@(r0,r14)
	mov.l @(loc_8c09d24c,pc),r2
	mov 0x14,r5
	jsr @r2
	mov r14,r4
	mov 0x31,r0
	mov 0xF8,r3
	mov.b r3,@(r0,r14)

loc_8c09d1bc:
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C09D23C,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09d218
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
	mov.w @(loc_8C09D23E,pc),r0
	fmov.s @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bt loc_8c09d218
	mov.l @(loc_8c09d250,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c09d21e

loc_8c09d218:
	mov 0x03,r0
	bra loc_8c09d230
	mov.b r0,@(0x04,r14)

loc_8c09d21e:
	mov.l @(loc_8c09d254,pc),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(loc_8c09d258,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09d230:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09D238:
	#data 0x01A3
loc_8C09D23A:
	#data 0x01A0
loc_8C09D23C:
	#data 0x019E
loc_8C09D23E:
	#data 0x041C
	#align4

loc_8C09D240:
	#data 0xC2D55555
loc_8C09D244:
	#data 0x43340000
loc_8C09D248:
	#data 0x8C2896B0
loc_8c09d24c:
	#data bank03.loc_8c034e8c
loc_8c09d250:
	#data bank03.loc_8c0332e0
loc_8c09d254:
	#data bank03.loc_8c034dee
loc_8c09d258:
	#data bank04.loc_8c045748

;==============================================
loc_8C09D25C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf/s loc_8C09D35e
	mov r5,r13
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C09D3B2,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C09D3C4,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C09D3B4,pc),r0; r0 set to 0xC0
	mov.w @(loc_8C09D3B2,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C09D3B6,pc),r0; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09D3B8,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09D3C8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0x42,r3 ; r3 set to 0x42
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C09D3BA,pc),r0; r0 set to 0x19c
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r12,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C09D3CC,pc),r0 ; r0 set to loc_8c09D3Cc
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09D3BC,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C09D304
	mova @(loc_8C09D3D0,pc),r0 ; r0 set to loc_8c09D3D0
	fmov.s @r0,fr3
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	bra loc_8C09D30e
	fneg fr2

loc_8c09d304:
	mova @(loc_8C09D3D4,pc),r0
	fmov.s @r0,fr3
	mov 0x34,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2

loc_8c09d30e:
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r13),fr3
	mov 0x07,r3
	mov 0x01,r7
	fmov.s fr3,@(r0,r14)
	mov r7,r5
	mov.w @(loc_8C09D3BE,pc),r0
	mov r7,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(loc_8C09D3D8,pc),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C09D3C0,pc),r0
	mov.l @(loc_8c09d3dc,pc),r2
	mov.b r12,@(r0,r14)
	jsr @r2
	mov r13,r4
	mov.l @(loc_8c09d3e0,pc),r3
	mov 0x10,r0
	mov 0x14,r5
	mov.w r0,@(0x1C,r14)
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov 0x31,r0
	mov 0xF8,r2
	mov.b r2,@(r0,r14)

loc_8c09d35e:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c09d398
	mov 0x5C,r1
	mov.l @(loc_8c09d3e4,pc),r3
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
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09d3ec

loc_8c09d398:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8c09d3a6
	mov r14,r4
	mov.w @(loc_8C09D3C2,pc),r0
	mov.b r12,@(r0,r13)

loc_8c09d3a6:
	lds.l @r15+,pr 
	mov.l @(loc_8c09d3e8,pc),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c09d3b2:
	#data 0x00DC
loc_8c09d3b4:
	#data 0x00C0
loc_8c09d3b6:
	#data 0x012C
loc_8c09d3b8:
	#data 0x01A3
loc_8c09d3ba:
	#data 0x019C
loc_8c09d3bc:
	#data 0x0130
loc_8C09D3BE:
	#data 0x01A1
loc_8C09D3C0:
	#data 0x01A0
loc_8C09D3C2:
	#data 0x02B0
	#align4

loc_8c09d3c4:
	#data bank12.loc_8c129560
loc_8c09d3c8:
	#data bank12.loc_8c1294c8
loc_8c09d3cc:
	#data 0xc1055555
loc_8c09d3d0:
	#data 0x42d55555
loc_8C09D3D4:
	#data 0xC2D55555
loc_8C09D3D8:
	#data 0x8C2896B0
loc_8c09d3dc:
	#data bank03.loc_8c03544c
loc_8c09d3e0:
	#data bank03.loc_8c034e8c
loc_8c09d3e4:
	#data bank03.loc_8c034dee
loc_8c09d3e8:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c09d3ec:
	lds.l @r15+,pr 
	mov.l @(loc_8c09d544,pc),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09d3fa:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x12C,PC),r0
	mov.l r12,@-r15
	mov 0x00,r12
	sts.l pr,@-r15
	mov.b r12,@(r0,r14)
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c09d4c8
	mov r5,r13
	mov.b @(0x4,r14),r0
	mov.w @(0x11A,PC),r1
	add 0x01,r0
	mov.l @(0x12C,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x112,PC),r0
	mov.w @(0x10E,PC),r2
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
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x43,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xCC,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r12,@(r0,r14)
	add 0x03,r0
	mov.b r12,@(r0,r14)
	add 0xFE,r0
	mov.b r12,@(r0,r14)
	add 0x05,r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	extu.b r3,r3
	shll r3
	add 0x30,r3
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
	mov 0x14,r5
	mov.w @(0x8C,PC),r0
	mov.l @(0xAC,PC),r2
	mov.b @(r0,r14),r6
	mov.l @(0xA4,PC),r0
	extu.b r6,r6
	shll r6
	mov.w @(r0,r6),r6
	jsr @r2
	mov r14,r4
	mov 0x31,r0
	mov 0xF8,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x78,PC),r0
	mov.w @(r0,r13),r2
	mov.w @(0x76,PC),r0
	extu.w r2,r2
	mov.l r2,@(r0,r14)

loc_8c09d4c8:
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c09d516
	mov.w @(0x62,PC),r0
	mov.w @(r0,r13),r2
	mov.w @(0x60,PC),r0
	extu.w r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8c09d516
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x4C,PC),r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	add 0x6E,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c09d516
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c09d516
	lds.l @r15+,pr
	mov.l @(0x38,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09d516:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c09d524
	mov r14,r4
	mov.w @(0x1C,PC),r0
	mov.b r12,@(r0,r13)

loc_8c09d524:
	lds.l @r15+,pr
	mov.l @(0x38,PC),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
loc_8c09d530:
	#data 0x012C
loc_8c09d532:
	#data 0x00DC
loc_8c09d534:
	#data 0x00C0
loc_8c09d536:
	#data 0x01A3
loc_8c09d538:
	#data 0x019C
loc_8c09d53a:
	#data 0x0158
loc_8c09d53c:
	#data 0x00CC
loc_8c09d53e:
	#data 0x0130
loc_8c09d540:
	#data 0x02B0
	#align4

loc_8c09d544:
	#data bank04.loc_8c045748
loc_8c09d548:
	#data bank12.loc_8c129560
loc_8c09d54c:
	#data bank12.loc_8c1294c8
loc_8c09d550:
	#data 0x8c2896b0
loc_8c09d554:
	#data bank15.loc_8c15618c
loc_8c09d558:
	#data bank03.loc_8c034e8c
loc_8c09d55c:
	#data bank03.loc_8c034dee
loc_8c09d560:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c09d564:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x78,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09d5a6
	mov r0,r4
	mov.l @(0x6C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0x52,PC),r3
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

loc_8c09d5a6:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14


;----------------------------------------------
loc_8c09d5b2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r3
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8c09d5f4
	mov.l @(0x18,r14),r5
	mov 0x20,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf.s loc_8c09d5d8
	mov r14,r4
	mov.w @(0x10,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r5)

loc_8c09d5d8:
	lds.l @r15+,pr
	mov.l @(0x14,PC),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09d5e4:
	#data 0x2c01
loc_8c09d5e6:
	#data 0x02b0
	#align4

loc_8c09d5e8:
	#data bank04.loc_8c044f12
loc_8c09d5ec:
	#data loc_8c09d5b2
loc_8c09d5f0:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c09d5f4:
	mov.b @(0x4,r14),r0
	tst r0,r0
	bt loc_8c09d5fe
	bra loc_8c09d704
	nop 

loc_8c09d5fe:
	mov.b @(0x4,r14),r0
	mov.w @(0x144,PC),r1
	add 0x01,r0
	mov.l @(0x14C,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x13C,PC),r0
	mov.w @(0x138,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0x136,PC),r0
	mov 0x01,r12
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
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
	mov.w @(0x11A,PC),r0
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
	mov.l @(0x110,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x114,PC),r13
	mov.b @(r0,r5),r2
	mov 0x42,r4
	mov.b r2,@(r0,r14)
	mov.w @(0xF6,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xF4,PC),r0
	fmov @r0,fr2
	mov 0x38,r0
	fmov @(r0,r5),fr1
	fadd fr2,fr1
	jsr @r13
	fmov fr1,@(r0,r14)
	and 0x1F,r0
	mov r0,r4
	add 0x20,r4
	exts.w r4,r3
	tst r12,r3
	bt.s loc_8c09d688
	mov 0x34,r0
	neg r4,r4

loc_8c09d688:
	exts.w r4,r4
	mov.l @(0xDC,PC),r1
	lds r4,fpul
	fmov @(r0,r14),fr2
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	jsr @r13
	fmov fr2,@(r0,r14)
	mov 0x1F,r4
	and r0,r4
	exts.w r4,r3
	tst r12,r3
	bt.s loc_8c09d6aa
	mov 0x38,r0
	neg r4,r4

loc_8c09d6aa:
	exts.w r4,r4
	mov.l @(0xBC,PC),r1
	lds r4,fpul
	mov 0x30,r3
	fmov @(r0,r14),fr2
	mov 0x00,r2
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x8E,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0x62,r0
	jsr @r13
	mov.b r2,@(r0,r14)
	mov 0x21,r1
	add r14,r1
	and 0x03,r0
	mov.b r0,@r1
	extu.b r0,r0
	tst r0,r0
	bt.s loc_8c09d6ee
	mov 0x07,r6
	mov 0x31,r0
	mov 0xF8,r2
	bra loc_8c09d6f4
	mov.b r2,@(r0,r14)

loc_8c09d6ee:
	mov 0x31,r0
	mov 0x08,r1
	mov.b r1,@(r0,r14)

loc_8c09d6f4:
	lds.l @r15+,pr
	mov.l @(0x78,PC),r3
	mov 0x15,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09d704:
	lds.l @r15+,pr
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x68,PC),r1
	mov.l @r15+,r12
	extu.b r0,r0
	shll2 r0
	mov.l @r15+,r13
	mov.l @(r0,r1),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C09D71A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C09D778,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09D742
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C09D770,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x15,r5 ; r5 set to 0x15
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x21,r0; r0 set to 0x21
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x08,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C09D742:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c09d748:
	#data 0x00dc
loc_8c09d74a:
	#data 0x00c0
loc_8c09d74c:
	#data 0x012c
loc_8c09d74e:
	#data 0x01a3
loc_8c09d750:
	#data 0x019c
loc_8c09d752:
	#data 0x013f
	#align4

loc_8C09D754:
	#data bank12.loc_8c129560
loc_8C09D758:
	#data bank12.loc_8c1294C8
loc_8C09D75c:
	#data 0x41555555
loc_8C09D760:
	#data 0x432B6DB6
loc_8C09D764:
	#data bank03.loc_8c03319e
loc_8C09D768:
	#data 0x3FD55555
loc_8C09D76c:
	#data 0x40092492
loc_8C09D770:
	#data bank03.loc_8c034e8c
loc_8C09D774:
	#data bank15.loc_8c156190
loc_8C09D778:
	#data bank03.loc_8c034dee

;==============================================
loc_8C09D77C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x03,r13 ; r13 set to 0x03
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C09D87C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09D826
	mov.l @(loc_8C09D880,pc),r2 ; r2 set to 0x8C26823c
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.l @r2,r3 ; r3 ??
	mov.l @(0x1C,r3),r1
	tst r13,r1
	bt/s loc_8C09D7Ae
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C09D86C,pc),r3 ; r3 set to 0x1A1
	mov 0x39,r0; r0 set to 0x39
	add r14,r3 ; r3 ??? bc r14 is ???
	bra loc_8C09D7B4
	mov.b r0,@r3

loc_8c09d7ae:
	mov.w @(loc_8c09d86c,pc),r0
	mov 0x35,r1
	mov.b r1,@(r0,r14)

loc_8c09d7b4:
	mov.w @(loc_8C09D86E,pc),r0
	mov.l @(loc_8C09D884,pc),r3
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(loc_8c09d888,pc),r12
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	jsr @r12
	mov.w r1,@(r0,r2)
	mov 0x22,r1
	add r14,r1
	and 0x0F,r0
	mov.b r0,@r1
	mov.w @(loc_8C09D870,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c09d7ee
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0x10,r3
	mov.b r3,@(r0,r14)

loc_8c09d7ee:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c09d810
	jsr @r12
	nop
	mov 0x64,r3
	mov.w @(loc_8c09d874,pc),r1
	and r13,r0
	mov.w @(loc_8C09D872,pc),r2
	mul.l r3,r0
	add r14,r1
	sts macl,r0
	add r2,r0
	mov.l r0,@r1
	bra loc_8c09d826
	nop

loc_8c09d810:
	jsr @r12
	nop
	mov 0x64,r3
	mov.w @(loc_8c09d874,pc),r1
	and r13,r0
	mov.w @(loc_8C09D876,pc),r2
	mul.l r3,r0
	add r14,r1
	sts macl,r0
	add r2,r0
	mov.l r0,@r1

loc_8C09D826:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09D830:
	mov.w @(loc_8C09D878,pc),r0; r0 set to 0x19f
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C09D862
	mov.w @(loc_8C09D874,pc),r0; r0 set to 0xCc
	mov.l @(loc_8C09D88C,pc),r3 ; r3 set to 0x8C033674
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C09D87C,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C09D890,pc),r3 ; r3 set to 0x8C0332E0
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C09D862
	lds.l @r15+,pr
	mov.l @(loc_8C09D894,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C09D862:
	lds.l @r15+,pr
	mov.l @(loc_8C09D898,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09D86C:
	#data 0x01A1
loc_8c09d86e:
	#data 0x01Ac
loc_8c09d870:
	#data 0x0130
loc_8c09d872:
	#data 0x03E8
loc_8C09D874:
	#data 0x00Cc
loc_8c09d876:
	#data 0x0708
loc_8C09D878:
	#data 0x019f
	#align4

loc_8C09D87C:
	#data bank03.loc_8c034dee
loc_8C09D880:
	#data 0x8C26823c
loc_8c09d884:
	#data 0x8C2896B0
loc_8C09D888:
	#data bank03.loc_8c03319e
loc_8C09D88C:
	#data bank03.loc_8c033674
loc_8C09D890:
	#data bank03.loc_8c0332E0
loc_8C09D894:
	#data bank04.loc_8c045748
loc_8C09D898:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c09d89c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r11
	mov r5,r0
	nop 
	mov.b r0,@(0x4,r15)
	mova @(0x104,PC),r0
	mov 0x1C,r4
	mov 0x00,r9
	mov r4,r10
	mov 0x03,r8
	mov r9,r14
	mov r8,r12
	mov r9,r13
	mov.l r4,@r15
	fmov @r0,fr14
	mova @(0xF4,PC),r0
	fmov @r0,fr15

loc_8c09d8d2:
	mov.l @(0xF4,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09d93c
	mov r0,r4
	mov 0x20,r1
	mov.l @(0xE4,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b r9,@(r0,r4)
	mov.l r11,@(0x18,r4)
	mov.b @(0x1,r11),r0
	mov.b r0,@(0x1,r4)
	mov.w @(0xBA,PC),r0
	mov.w @(r0,r11),r3
	tst r3,r3
	bt loc_8c09d910
	mov.l @r15,r3
	mov 0x34,r0
	fmov @(r0,r11),fr2
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	bra loc_8c09d91c
	fmac fr0,fr3,fr2

loc_8c09d910:
	lds r10,fpul
	mov 0x34,r0
	fmov @(r0,r11),fr2
	float fpul,fr3
	fmul fr15,fr3
	fsub fr3,fr2

loc_8c09d91c:
	fmov fr2,@(r0,r4)
	mov.w @(0x96,PC),r0
	mov.w @(0x96,PC),r3
	fmov @(r0,r11),fr3
	mov 0x38,r0
	fadd fr14,fr3
	fmov fr3,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov r14,r0
	nop 
	add 0x0A,r14
	mov.w r0,@(0x1C,r4)
	mov r8,r0
	nop 
	mov.w r0,@(0x1E,r4)

loc_8c09d93c:
	mov.l @r15,r3
	add 0x01,r13
	cmp/ge r12,r13
	add 0x40,r10
	add 0x40,r3
	bf.s loc_8c09d8d2
	mov.l r3,@r15
	mov r4,r0
	nop 
	add 0x08,r15
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
loc_8C09D966:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0x54,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09d9aa
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x40,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.w @(0x22,PC),r3
	mov.l r14,@(0x14,r4)
	mov.l @(0x18,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x21,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8C09D9AA:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c09d9b6:
	#data 0x0130
loc_8c09d9b8:
	#data 0x041c
loc_8c09d9ba:
	#data 0x2c02
loc_8c09d9bc:
	#data 0x2c01
	#align4

loc_8c09d9c0:
	#data 0xC1092492
loc_8c09d9c4:
	#data 0x3FD55555
loc_8C09D9C8:
	#data bank04.loc_8c044F12
loc_8C09D9CC:
	#data loc_8c09DA34

;==============================================
;unused
loc_8c09d9d0:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0x12C,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09da2a
	mov r0,r4
	mov.l @(0x120,PC),r3
	mov 0x20,r0
	mov 0x03,r2
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.w @(0xFC,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0xF2,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c09da10
	mova @(0x100,PC),r0
	bra loc_8c09da14
	fmov @r0,fr3

loc_8c09da10:
	mova @(0xFC,PC),r0
	fmov @r0,fr3

loc_8c09da14:
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov.w @(0xD6,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c09da2a:
	mov r4,r0
	nop 
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09DA34:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r0,r0
	cmp/ge r3,r0
	bt/s loc_8C09DA56
	mov.l @(0x18,r14),r5
	mov 0x20,r0; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r1
	mov.l @(loc_8C09DB18,pc),r0; r0 set to 0x8C15619c
	extu.b r1,r1
	shll2 r1
	mov.l @(r0,r1),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C09DA56:
	mov.l @(loc_8C09DB1C,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	cmp/eq 0x02,r0
	jmp @r3
	mov.l @r15+,r14

loc_8C09DA60:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf/s loc_8C09DABa
	mov r5,r13
	mov r13,r5
	bsr loc_8C09DDA4
	mov r14,r4
	mov.w @(loc_8C09DAFC,pc),r0; r0 set to 0xD0
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r14)
	add 0x01,r0; r0 set to 0xD1
	mov.b r3,@(r0,r14)
	mova @(loc_8C09DB20,pc),r0 ; r0 set to loc_8c09DB20
	fmov.s @r0,fr3 ; r3 ??
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov.w @(loc_8C09DAFE,pc),r0; r0 set to 0xCc
	fadd fr3,fr2
	mov.l @(loc_8C09DB24,pc),r3 ; r3 set to 0x8C03340c
	fmov.s fr2,@(r0,r14)
	mov 0x01,r0; r0 set to 0x01
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C09DAAa
	lds.l @r15+,pr
	mov.l @(loc_8C09DB1C,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09daaa:
	mov.l @(loc_8c09db28,pc),r2
	mov 0x16,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov 0x31,r0
	mov 0xF8,r3
	mov.b r3,@(r0,r14)

loc_8c09daba:
	mov.w @(loc_8c09dafc,pc),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pz r3
	bt loc_8c09dacc
	mov 0x0B,r3
	mov.b r3,@(r0,r14)

loc_8c09dacc:
	mov.w @(loc_8C09DB00,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c09dada
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c09dada:
	mov 0x24,r0
	mov.l @(loc_8c09db2c,pc),r1
	mov.b @(r0,r13),r2
	mov r13,r5
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov.b @(0x05,r14),r0
	lds.l @r15+,pr 
	extu.b r0,r0
	shll2 r0
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09daf6:
	#data 0x2c02
loc_8c09daf8:
	#data 0x0130
loc_8c09dafa:
	#data 0x041c
loc_8c09dafc:
	#data 0x00D0
loc_8c09dafe:
	#data 0x00CC
loc_8C09DB00:
	#data 0x00D1
	#align4

loc_8c09db04:
	#data bank04.loc_8c044f12
loc_8c09db08:
	#data loc_8c09da34
loc_8c09db0c:
	#data 0x43195555
loc_8c09db10:
	#data 0xc3195555
loc_8c09db14:
	#data 0xc1092492
loc_8c09db18:
	#data bank15.loc_8c15619c
loc_8c09db1c:
	#data bank04.loc_8c0450c0
loc_8c09db20:
	#data 0xc1892492
loc_8c09db24:
	#data bank03.loc_8c03340c
loc_8c09db28:
	#data bank03.loc_8c034e8c
loc_8c09db2c:
	#data bank15.loc_8c1561b0

;==============================================
loc_8c09db30:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r13)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c09db66
	mov 0x0C,r12
	mov 0x00,r14

loc_8c09db4a:
	mov 0x02,r5
	mov r14,r6
	bsr loc_8c09d966
	mov r13,r4
	tst r0,r0
	bt loc_8c09db5c
	add 0x01,r14
	cmp/gt r12,r14
	bf loc_8c09db4a

loc_8c09db5c:
	mov 0x0A,r0
	mov.w r0,@(0x1C,r13)
	mov.b @(0x5,r13),r0
	add 0x01,r0
	mov.b r0,@(0x5,r13)

loc_8c09db66:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C09DB70:
	mov.w @(loc_8C09DC2E,pc),r0; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09DC34,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0; r0 set to 0x12b
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0; r0??
	cmp/pz r0
	bt loc_8C09DBA2
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C09DC38,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x04,r6 ; r6 set to 0x04
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C09DBA2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09DBA8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C09DC34,pc),r3 ; r3 set to 0x8C034DEe
	mov 0x00,r13 ; r13 set to 0x00
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09DC0e
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C09DBD6
	mov.b @(0x04,r14),r0
	add 0x02,r0
	bra loc_8C09DC20
	mov.b r0,@(0x04,r14)

loc_8C09DBD6:
	mov r13,r0
	nop
	mov.b r0,@(0x04,r14)
	mov.b r0,@(0x05,r14)
	mova @(loc_8C09DC3C,pc),r0 ; r0 set to loc_8c09DC3c
	fmov.s @r0,fr4
	mov.w @(loc_8C09DC30,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C09DBF2
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C09DBF8
	fadd fr4,fr3

loc_8C09DBF2:
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_8C09DBF8:
	fmov.s fr3,@(r0,r14)
	mov r13,r0; r0??? bc r13 is ???
	nop
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C09DA60
	mov.l @r15+,r14

loc_8C09DC0E:
	mov.l @(loc_8C09DC40,pc),r3 ; r3 set to 0x8C0332E0
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C09DC20
	mov.w @(loc_8C09DC2E,pc),r0; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C09DC24
	mov.b r3,@(r0,r14)

loc_8C09DC20:
	mov.w @(loc_8C09DC2E,pc),r0; r0 set to 0x12c
	mov.b r13,@(r0,r14)

loc_8C09DC24:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09DC2E:
	#data 0x012c
loc_8C09DC30:
	#data 0x0130
	#align4

loc_8C09DC34:
	#data bank03.loc_8c034dee
loc_8C09DC38:
	#data bank03.loc_8c034e8c
loc_8C09DC3C:
	#data 0x43A00000
loc_8C09DC40:
	#data bank03.loc_8c0332E0

;==============================================
loc_8C09DC44:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x04,r14),r0
	mov.l @(0x14,r14),r13
	tst r0,r0
	bf/s loc_8C09DCD8
	mov 0x01,r12 ; r12 set to 0x01
	mov.l @r15,r5
	bsr loc_8C09DDA4
	mov r14,r4
	mov.w @(loc_8C09DD22,pc),r0; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFc
	mov.b r2,@(r0,r14)
	mov 0x31,r0; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0; r0 set to 0x21
	mov.b @(r0,r14),r0; r0??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8C09DC9c
	mova @(loc_8C09DD28,pc),r0 ; r0 set to loc_8c09DD28
	fmov.s @r0,fr3
	mov 0x05,r3 ; r3 set to 0x05
	mov.w @(loc_8C09DD24,pc),r0; r0 set to 0xCc
	fmov.s @(r0,r13),fr2
	mov 0x38,r0; r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x22,r0; r0 set to 0x22
	bra loc_8C09DCCc
	mov.b r3,@(r0,r14)

loc_8c09dc9c:
	mov 0x21,r0
	mov.b @(r0,r14),r1
	mov 0x13,r3
	mov.w @(loc_8c09dd24,pc),r0
	extu.b r1,r1
	neg r1,r1
	fmov.s @(r0,r13),fr2
	add 0x0C,r1
	lds r1,fpul 
	mova @(loc_8C09DD2C,pc),r0
	fmov.s @r0,fr0
	mov 0x38,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x22,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c09dccc
	mov 0x22,r0
	mov 0x07,r2
	mov.b r2,@(r0,r14)

loc_8c09dccc:
	mov 0x22,r0
	mov.l @(loc_8c09dd30,pc),r3
	mov.b @(r0,r14),r6
	mov 0x16,r5
	jsr @r3
	mov r14,r4

loc_8c09dcd8:
	mov.l @(loc_8c09dd34,pc),r2
	jsr @r2
	mov r14,r4
	mov r0,r4
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf/s loc_8c09dd0a
	mov 0x00,r11
	mov.b @(0x05,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c09dd08
	mov 0x22,r0
	mov.l @(loc_8c09dd30,pc),r3
	mov.b @(r0,r14),r2
	mov 0x16,r5
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c09dd08:
	mov r11,r4

loc_8c09dd0a:
	exts.b r4,r4
	cmp/pz r4
	bt loc_8c09dd3c
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c09dd38,pc),r2
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09dd22:
	#data 0x012C

loc_8c09dd24:
	#data 0x00CC
	#align4

loc_8c09dd28:
	#data 0x43AB2492
loc_8C09DD2C:
	#data 0x425EDB6D
loc_8c09dd30:
	#data bank03.loc_8c034e8c
loc_8c09dd34:
	#data bank03.loc_8c034dee
loc_8c09dd38:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c09dd3c:
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bt loc_8c09dd82
	mov.w @(loc_8C09DE50,pc),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c09dd6e
	mov.w @(loc_8C09DE52,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09dd5a
	mov.w @(loc_8C09DE50,pc),r0
	mov.b r12,@(r0,r13)

loc_8c09dd5a:
	mov.w @(loc_8C09DE54,pc),r0
	mov.b @(r0,r13),r3
	mov 0x21,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r2,r3
	bf loc_8c09dd6e
	mov.l @(loc_8c09de60,pc),r2
	jsr @r2
	mov r14,r4

loc_8c09dd6e:
	mov.l @(loc_8c09de64,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c09dd7e
	mov.w @(loc_8C09DE56,pc),r0
	bra loc_8c09dd82
	mov.b r12,@(r0,r14)

loc_8c09dd7e:
	mov.w @(loc_8C09DE56,pc),r0
	mov.b r11,@(r0,r14)

loc_8c09dd82:
	mov 0x21,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	cmp/ge r12,r4
	bf loc_8c09dd96
	mov 0x0C,r2
	cmp/ge r2,r4
	bt loc_8c09dd96
	mov.w @(loc_8C09DE56,pc),r0
	mov.b r11,@(r0,r14)

loc_8c09dd96:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c09dda4:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.b @(0x6,r4),r0
	tst r0,r0
	bf loc_8c09de00
	mov.w @(0xA2,PC),r1
	mov.w @(0xA2,PC),r0
	mov.l @(0xB0,PC),r3
	add r4,r1
	mov.w @(0x9A,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0x92,PC),r0
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
	mov.w @(0x7A,PC),r0
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
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)

loc_8c09de00:
	mov.w @(0x5A,PC),r0
	mov 0x42,r5
	mov 0x16,r3
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0xA0,r0
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	add 0x03,r0
	mov 0x1E,r2
	mov.b r2,@(r0,r4)
	add 0xFF,r0
	mov.b r2,@(r0,r4)
	add 0x62,r0
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	add 0x8C,r0
	mov.b r5,@(r0,r4)
	add 0x75,r0
	mov 0x34,r3
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.l @(0x3C,PC),r3
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov.l @r3,r2
	add 0x7C,r2
	mov.b @(0x2,r4),r0
	lds.l @r15+,pr
	extu.b r0,r0
	shll r0
	mov.w @(r0,r2),r1
	add 0x01,r1
	rts 
	mov.w r1,@(r0,r2)

;----------------------------------------------
loc_8C09DE50:
	#data 0x00D1
loc_8C09DE52:
	#data 0x019E
loc_8C09DE54:
	#data 0x00D0
loc_8C09DE56:
	#data 0x012C
loc_8C09DE58:
	#data 0x00DC
loc_8C09DE5a:
	#data 0x00C0
loc_8C09DE5c:
	#data 0x01A3
loc_8C09DE5e:
	#data 0x019C
	#align4

loc_8c09de60:
	#data bank04.loc_8c045748
loc_8c09de64:
	#data bank03.loc_8c0332e0
loc_8c09de68:
	#data bank12.loc_8C129560
loc_8c09de6c:
	#data bank12.loc_8C1294C8
loc_8c09de70:
	#data 0x8C2896B0

;==============================================
loc_8c09de74:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c09deac
	mov 0x04,r5
	mov 0x00,r6
	bsr loc_8c09d966
	mov r14,r4
	tst r0,r0
	bt loc_8c09dea2
	mov 0x04,r5
	mov 0x01,r6
	bsr loc_8c09d966
	mov r14,r4
	tst r0,r0
	bf loc_8c09dea2
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8c09dea2:
	mov 0x0A,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c09deac:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C09DEB2:
	mov.w @(loc_8C09DF88,pc),r0; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09DF8C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0; r0 set to 0x12b
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0; r0??
	cmp/pz r0
	bt loc_8C09DEE4
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C09DF90,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x04,r6 ; r6 set to 0x04
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C09DEE4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09DEEA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C09DF8C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09DF02
	mov.b @(0x04,r14),r0
	add 0x02,r0
	bra loc_8C09DF14
	mov.b r0,@(0x04,r14)

loc_8C09DF02:
	mov.l @(loc_8C09DF94,pc),r3 ; r3 set to 0x8C0332E0
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C09DF14
	mov.w @(loc_8C09DF88,pc),r0; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C09DF1a
	mov.b r3,@(r0,r14)

loc_8C09DF14:
	mov.w @(loc_8C09DF88,pc),r0; r0 set to 0x12c
	mov 0x00,r1 ; r1 set to 0x00
	mov.b r1,@(r0,r14)

loc_8C09DF1A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09DF20:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf.s loc_8c09df6c
	mov r5,r13
	mov r13,r5
	bsr loc_8c09dda4
	mov r14,r4
	mov.w @(0x50,PC),r0
	mov 0x3A,r2
	mov 0x00,r4
	mov.l @(0x58,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov 0x16,r5
	mov.b @(0x2,r14),r0
	mov 0x03,r6
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x2C,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x31,r0
	mov 0xF8,r3
	mov.b r3,@(r0,r14)

loc_8C09DF6C:
	mov 0x24,r0
	mov.l @(0x2C,PC),r1
	mov.b @(r0,r13),r2
	mov r13,r5
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov.b @(0x5,r14),r0
	lds.l @r15+,pr
	extu.b r0,r0
	shll2 r0
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09DF88:
	#data 0x012c
loc_8C09DF8a:
	#data 0x01A1
	#align4

loc_8C09DF8C:
	#data bank03.loc_8c034dee
loc_8C09DF90:
	#data bank03.loc_8c034e8c
loc_8C09DF94:
	#data bank03.loc_8c0332E0
loc_8C09DF98:
	#data 0x8C2896B0
loc_8C09DF9C:
	#data bank15.loc_8c1561Bc

;==============================================
loc_8C09DFA0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x04,r14),r0
	mov.l @(0x14,r14),r12
	tst r0,r0
	bf/s loc_8C09E026
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @r15,r5
	bsr loc_8C09DDA4
	mov r14,r4
	mov.w @(loc_8C09E09C,pc),r0; r0 set to 0x1A1
	mov 0x3A,r2 ; r2 set to 0x3a
	mov.l @(loc_8C09E0A4,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r13,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r13,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_8C09E09E,pc),r0; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	mov 0x24,r0; r0 set to 0x24
	mov.l @r15,r1
	mov.b @(r0,r1),r2 ; r2 ??? bc r1 is ???
	mov 0xFC,r1 ; r1 set to 0xFFFFFFFc
	mov.b r2,@(r0,r14)
	mov 0x31,r0; r0 set to 0x31
	mov.b r1,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r12),fr3 ; r3 ??? bc r12 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0; r0 set to 0x21
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C09E016
	mova @(loc_8C09E0A8,pc),r0 ; r0 set to loc_8c09E0A8
	fmov.s @r0,fr3
	mov.w @(loc_8C09E0A0,pc),r0; r0 set to 0xCc
	fmov.s @(r0,r12),fr2
	mov 0x38,r0; r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	bra loc_8C09E018
	mov 0x15,r2

loc_8c09e016:
	mov 0x07,r2

loc_8c09e018:
	mov 0x22,r0
	mov.l @(loc_8c09e0ac,pc),r3
	mov.b r2,@(r0,r14)
	mov 0x16,r5
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4

loc_8c09e026:
	mov.l @(loc_8c09e0b0,pc),r2
	jsr @r2
	mov r14,r4
	mov r0,r4
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8c09e056
	mov.b @(0x05,r12),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c09e054
	mov 0x22,r0
	mov.l @(loc_8c09e0ac,pc),r3
	mov.b @(r0,r14),r2
	mov 0x16,r5
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c09e054:
	mov r13,r4

loc_8c09e056:
	exts.b r4,r4
	cmp/pz r4
	bt loc_8c09e06c
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c09e0b4,pc),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c09e06c:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09e090
	mov.l @(loc_8c09e0b8,pc),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c09e0bc,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c09e08c
	mov.w @(loc_8c09e09e,pc),r0
	mov 0x01,r2
	bra loc_8c09e090
	mov.b r2,@(r0,r14)

loc_8c09e08c:
	mov.w @(loc_8c09e09e,pc),r0
	mov.b r13,@(r0,r14)

loc_8c09e090:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c09e09c:
	#data 0x01A1
loc_8c09e09e:
	#data 0x012C
loc_8c09e0a0:
	#data 0x00CC
	#align4

loc_8c09e0a4:
	#data 0x8c2896b0
loc_8c09e0a8:
	#data 0x43ab2492
loc_8c09e0ac:
	#data bank03.loc_8c034e8c
loc_8c09e0b0:
	#data bank03.loc_8c034dee
loc_8c09e0b4:
	#data bank04.loc_8c0450c0
loc_8c09e0b8:
	#data bank04.loc_8c045748
loc_8c09e0bc:
	#data bank03.loc_8c0332e0

;==============================================
;Unused
loc_8c09e0c0:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x04,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0x138,PC),r9
	mov.w @(0x11C,PC),r11

loc_8c09e0da:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r9
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09e116
	mov r0,r4
	mov 0x21,r0
	mov.l @(0x128,PC),r2
	extu.b r14,r3
	mov.l r2,@(0x10,r4)
	mov.b r14,@(r0,r4)
	mov.w @(0x104,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov r12,r3
	shad r14,r3
	mov.l r13,@(0x18,r4)
	mov.b @(0x1,r13),r0
	add 0x01,r14
	cmp/ge r10,r14
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov.w @(0xEC,PC),r0
	mov.b @(r0,r13),r2
	or r3,r2
	mov.b r2,@(r0,r13)
	bf loc_8c09e0da

loc_8c09e116:
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
loc_8C09E12A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C09E158
	mov.l @(0x18,r14),r13
	cmp/eq 0x01,r0
	bf loc_8C09E144
	bra loc_8C09E298
	nop

loc_8C09E144:
	cmp/eq 0x02,r0
	bf loc_8C09E14c
	bra loc_8C09E2D4
	nop

loc_8C09E14C:
	cmp/eq 0x03,r0
	bf loc_8C09E154
	bra loc_8C09E2E0
	nop

loc_8C09E154:
	bra loc_8C09E2E0
	nop

loc_8C09E158:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C09E1FE,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C09E218,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C09E200,pc),r0; r0 set to 0xC0
	mov.w @(loc_8C09E1FE,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C09E202,pc),r0; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09E204,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09E21C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0x31,r0; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x20,r3 ; r3 set to 0x20
	mov.w @(loc_8C09E206,pc),r0; r0 set to 0x19f
	mov.b r4,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_8C09E208,pc),r0; r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13e
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13d
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13c
	mov.b r3,@(r0,r14)
	add 0xF0,r0; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	add 0xA0,r0; r0 set to 0xCc
	mov 0x50,r3 ; r3 set to 0x50
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C09E20A,pc),r0; r0 set to 0x1F9
	mov.b @(r0,r13),r0; r0??? bc r13 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C09E220
	mov.w @(loc_8C09E20C,pc),r0; r0 set to 0x1A1
	mov 0x3B,r2 ; r2 set to 0x3b
	bra loc_8C09E226
	mov.b r2,@(r0,r14)

;##############################################
loc_8C09E1F8:
	#data 0x2C03
loc_8C09E1Fa:
	#data 0x00D4
loc_8C09E1Fc:
	#data 0x02B2
loc_8C09E1FE:
	#data 0x00Dc
loc_8C09E200:
	#data 0x00C0
loc_8C09E202:
	#data 0x012c
loc_8C09E204:
	#data 0x01A3
loc_8C09E206:
	#data 0x019f
loc_8C09E208:
	#data 0x013f
loc_8C09E20A:
	#data 0x01F9
loc_8C09E20C:
	#data 0x01A1
	#align4

loc_8C09E210:
	#data bank04.loc_8c044F12
loc_8C09E214:
	#data loc_8c09E12a
loc_8C09E218:
	#data bank12.loc_8c129560
loc_8C09E21C:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c09e220:
	mov.w @(loc_8C09E312,pc),r0
	mov 0x33,r3
	mov.b r3,@(r0,r14)

loc_8c09e226:
	mov.w @(loc_8C09E314,pc),r0
	mov.l @(loc_8C09E320,pc),r3
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov 0x40,r4
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.w @(loc_8C09E318,pc),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C09E316,pc),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x0F,r0
	mov.w @(r0,r14),r2
	or r3,r2
	mov.w r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r4
	mov.l @(loc_8c09e324,pc),r2
	extu.b r4,r4
	shll r4
	shll2 r4
	add r2,r4
	mov 0x04,r0
	fmov.s @r4,fr4
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C09E31A,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c09e280
	mov 0x34,r0
	fneg fr4

loc_8c09e280:
	fmov.s @(r0,r13),fr3
	mov 0x02,r5
	mov.l @(loc_8c09e328,pc),r3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c09e32c,pc),r2
	mov 0x15,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4

loc_8C09E298:
	mov 0x24,r0; r0 set to 0x24
	mov.l @(loc_8C09E330,pc),r1 ; r1 set to 0x8C1561F8
	mov.b @(r0,r13),r3
	mov r13,r5
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0; r0 set to 0x24
	shll2 r0; r0 set to 0x90
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C09E31C,pc),r0; r0 set to 0xCc
	mov.l @(r0,r14),r3
	tst r3,r3
	bf loc_8C09E2Cc
	mov.l @(loc_8C09E334,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C09E2Ec
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C09E68e
	mov.l @r15+,r14

loc_8C09E2CC:
	mov.l @(r0,r14),r3
	add 0xFF,r3
	bra loc_8C09E2Ec
	mov.l r3,@(r0,r14)

loc_8c09e2d4:
	mov.l @(loc_8c09e338,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09e2ec

loc_8C09E2E0:
	lds.l @r15+,pr
	mov.l @(loc_8C09E33C,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C09E2EC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09E2F4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	bsr loc_8C09E65a
	mov r5,r13
	exts.b r0,r0
	tst r0,r0
	bf loc_8C09E340
	mov r13,r5
	bsr loc_8C09E68e
	mov r14,r4
	bra loc_8C09E3A4
	nop

;##############################################
loc_8c09e312:
	#data 0x01A1
loc_8c09e314:
	#data 0x01Ac
loc_8c09e316:
	#data 0x019C
loc_8c09e318:
	#data 0x0200
loc_8c09e31a:
	#data 0x0130
loc_8C09E31C:
	#data 0x00Cc
	#align4

loc_8c09e320:
	#data 0x8C2896B0
loc_8C09E324:
	#data bank15.loc_8c1561C8
loc_8C09E328:
	#data bank0e.loc_8c0e4ADc
loc_8C09E32C:
	#data bank03.loc_8c034e8c
loc_8C09E330:
	#data bank15.loc_8c1561F8
loc_8C09E334:
	#data bank03.loc_8c03340c
loc_8C09E338:
	#data bank03.loc_8c034dee
loc_8C09E33C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C09E340:
	mov.l @(loc_8C09E470,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09E3A4
	mov.b @(0x05,r14),r0
	mov r13,r4
	mov r15,r5
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x20,r0; r0 set to 0x20
	mov.w r0,@(0x1C,r14)
	mov 0x10,r0; r0 set to 0x10
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C09E45A,pc),r0; r0 set to 0x20c
	mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r3),fr3
	mov.w @(loc_8C09E45A,pc),r0; r0 set to 0x20c
	fmov.s fr3,@r15
	mov.l @(r0,r13),r3
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r3),fr3
	mov 0x04,r0; r0 set to 0x04
	mov.l @(loc_8C09E474,pc),r3 ; r3 set to 0x8C03362c
	fmov.s fr3,@(r0,r15)
	jsr @r3
	add 0x34,r4
	extu.b r0,r0; r0 set to 0x04
	mov 0x22,r1 ; r1 set to 0x22
	shlr2 r0
	add r14,r1 ; r1 ??? bc r14 is ???
	shlr r0
	mov.b r0,@r1
	mov.w @(loc_8C09E45C,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C09E394
	mov.w @(loc_8C09E45E,pc),r3 ; r3 set to 0x384
	bra loc_8C09E396
	nop

loc_8c09e394:
	mov.w @(loc_8C09E460,pc),r3

loc_8c09e396:
	mov.w @(loc_8c09e462,pc),r0
	mov 0x15,r5
	mov 0x03,r6
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c09e478,pc),r3
	jsr @r3
	mov r14,r4

loc_8C09E3A4:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09E3AE:
	mov.w @(loc_8C09E464,pc),r0; r0 set to 0x19e
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C09E436
	mov r5,r13
	mov.l @(loc_8C09E47C,pc),r3 ; r3 set to 0x8C05264c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C09E44e
	mov.w @(loc_8C09E45A,pc),r0; r0 set to 0x20c
	mov.l @(r0,r13),r2
	add 0xA4,r0; r0 set to 0x1B0
	mov.l @(r0,r14),r3 ; r3 ??? bc r14 is ???
	cmp/eq r2,r3
	bf loc_8C09E436
	mov.w @(loc_8C09E45A,pc),r0; r0 set to 0x20c
	mov.l @(r0,r13),r3
	mov.w @(loc_8C09E466,pc),r0; r0 set to 0x420
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8C09E44e
	mov.w @(loc_8C09E468,pc),r0; r0 set to 0x2Ac
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b r2,@(r0,r13)
	mov.w @(loc_8C09E45A,pc),r0; r0 set to 0x20c
	mov.w @(loc_8C09E46A,pc),r2 ; r2 set to 0xC1
	mov.l @(r0,r13),r3
	add 0xEB,r0; r0 set to 0x1F7
	mov.b r2,@(r0,r13)
	mov.b r2,@(r0,r3)
	add 0x15,r0; r0 set to 0x20c
	mov.l @(loc_8C09E480,pc),r3 ; r3 set to 0x8C05248e
	mov.l @(r0,r13),r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C09E45A,pc),r0; r0 set to 0x20c
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x10,r5 ; r5 set to 0x10
	mov.l @(r0,r13),r2 ; r2 ??? bc r13 is ???
	add 0xEA,r0; r0 set to 0x1F6
	mov.b r3,@(r0,r2)
	add 0x16,r0; r0 set to 0x20c
	mov.l @(r0,r13),r2
	add 0xED,r0; r0 set to 0x1F9
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r3,@(r0,r2)
	mov.w @(loc_8C09E462,pc),r0; r0 set to 0xD0
	mov.w @(loc_8C09E46C,pc),r2 ; r2 set to 0x320
	mov.l @(loc_8C09E484,pc),r3 ; r3 set to 0x8C050552
	mov.l r2,@(r0,r14)
	mov 0x40,r0; r0 set to 0x40
	mov.w r0,@(0x1C,r14)
	mov 0x00,r0; r0 set to 0x00
	mov.w r0,@(0x1E,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0; r0 set to 0x01
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C09E45A,pc),r0; r0 set to 0x20c
	lds.l @r15+,pr
	mov.l @(r0,r13),r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09e436:
	mov r13,r5
	bsr loc_8c09e65a
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c09e44e
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c09e488

loc_8C09E44E:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C09E68e
	mov.l @r15+,r14

;##############################################
loc_8C09E45A:
	#data 0x020c
loc_8C09E45C:
	#data 0x01A3
loc_8C09E45E:
	#data 0x0384
loc_8c09e460:
	#data 0x0190
loc_8C09E462:
	#data 0x00D0
loc_8C09E464:
	#data 0x019e
loc_8C09E466:
	#data 0x0420
loc_8C09E468:
	#data 0x02Ac
loc_8C09E46A:
	#data 0x00C1
loc_8C09E46C:
	#data 0x0320
	#align4

loc_8C09E470:
	#data bank03.loc_8c034dee
loc_8C09E474:
	#data bank03.loc_8c03362c
loc_8C09E478:
	#data bank03.loc_8c034e8c
loc_8C09E47C:
	#data bank05.loc_8c05264c
loc_8C09E480:
	#data bank05.loc_8c05248e
loc_8C09E484:
	#data bank05.loc_8c050552

;----------------------------------------------
loc_8C09E488:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c09e4e2
	mov 0x10,r5
	mov r5,r0
	nop 
	mov.w r0,@(0x1E,r14)
	mov.w @(0xDE,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c09e4e2
	mov.w @(0xD8,PC),r0
	mov.w @(0xD8,PC),r2
	mov.w @(r0,r13),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c09e4e2
	mov.w @(r0,r13),r4
	mov 0xF6,r2
	mov.w @(0xCA,PC),r3
	mov 0x1F,r1
	extu.w r4,r4
	mov.l @(0xD4,PC),r0
	and r3,r4
	shad r2,r4
	mov.b @(r0,r4),r4
	mov 0x22,r0
	mov.b @(r0,r14),r2
	sub r2,r4
	and r1,r4
	exts.b r4,r4
	cmp/ge r5,r4
	bf loc_8c09e4d6
	mov.b @(r0,r14),r2
	bra loc_8c09e4d8
	add 0xFF,r2

loc_8C09E4D6:
	add 0x01,r2

loc_8C09E4D8:
	mov.b r2,@(r0,r14)
	mov 0x1F,r3
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)

loc_8C09E4E2:
	mov.w @(0x9E,PC),r0
	mov.l @(r0,r14),r1
	add 0xFF,r1
	cmp/pz r1
	bt.s loc_8c09e4f8
	mov.l r1,@(r0,r14)
	mov.l @(0xA4,PC),r3
	mov 0x03,r2
	mov.l r2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C09E4F8:
	mov.w @(0x8A,PC),r0
	mov.l @(0x9C,PC),r3
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x94,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C09E50E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.w @(0x6C,PC),r0
	mov 0x01,r3
	mov r5,r12
	mov r4,r14
	mov.b r3,@(r0,r12)
	add 0xDE,r0
	mov.l @(r0,r14),r13
	add 0x04,r0
	mov.l @(r0,r14),r3
	mov.l @(r0,r3),r2
	cmp/eq r14,r2
	bf loc_8c09e54e
	mov.w @(0x56,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c09e548
	mov.w @(0x50,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c09e558
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c09e558

loc_8C09E548:
	mov.w @(0x3C,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r12)

loc_8C09E54E:
	mov r12,r5
	bsr loc_8c09e68e
	mov r14,r4
	bra loc_8c09e632
	nop 

loc_8C09E558:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c09e5a4
	mov.w @(0x26,PC),r0
	mov.w @(r0,r13),r2
	tst r2,r2
	bt loc_8c09e5a4
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r13,r4
	tst r0,r0
	bt loc_8c09e5aa
	mov.w @(0x14,PC),r0
	mov 0x00,r3
	bra loc_8c09e5aa
	mov.w r3,@(r0,r13)

;##############################################
loc_8c09e57e:
	#data 0x0525
loc_8c09e580:
	#data 0x0340
loc_8c09e582:
	#data 0x3c00
loc_8c09e584:
	#data 0x00d4
loc_8c09e586:
	#data 0x00d0
loc_8c09e588:
	#data 0x01ea
loc_8c09e58a:
	#data 0x0420
loc_8c09e58c:
	#data 0x019f
loc_8c09e58e:
	#data 0x025c
	#align4

loc_8C09E590:
	#data bank15.loc_8c1561E8
loc_8C09E594:
	#data bank04.loc_8c045748
loc_8C09E598:
	#data bank03.loc_8c033674
loc_8C09E59C:
	#data bank03.loc_8c034dee
loc_8C09E5A0:
	#data bank05.loc_8c050610

;----------------------------------------------
loc_8C09E5A4:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C09E5AA:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c09e61a
	mov 0x04,r0
	mov.l @(0x104,PC),r1
	mov.w r0,@(0x1E,r14)
	mov.b @(0x2,r12),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov.l @(r0,r1),r6
	mov.w @(0xE2,PC),r0
	mov.w @(r0,r12),r3
	tst r3,r3
	bf.s loc_8c09e5d6
	mov 0x40,r7
	mov 0xC0,r7
 
loc_8C09E5D6:
	mov 0x34,r0
	mov r15,r4
	fmov @(r0,r14),fr3
	exts.w r7,r7
	mov 0x38,r0
	lds r7,fpul
	fmov fr3,@r4
	mov r15,r5
	fmov @(r0,r14),fr3
	mov 0x04,r0
	add 0x0C,r5
	mov.l @(0xDC,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	float fpul,fr3
	fmov @(r0,r6),fr2
	mova @(0xCC,PC),r0
	fmov @r0,fr0
	mova @(0xCC,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@r5
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r6),fr2
	mov 0x04,r0
	fadd fr3,fr2
	jsr @r3
	fmov fr2,@(r0,r5)
	extu.b r0,r0
	mov 0x22,r1
	shlr2 r0
	add r14,r1
	shlr r0
	mov.b r0,@r1

loc_8C09E61A:
	mov.w @(0x94,PC),r0
	mov.l @(0xB0,PC),r3
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.l @(0xAC,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov r14,r4

loc_8C09E632:
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09E63E:
	mov.w @(loc_8C09E6B4,pc),r0; r0 set to 0x1C8
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x25,r2 ; r2 set to 0x25
	mov.l @(r0,r4),r6
	add 0x22,r0; r0 set to 0x1Ea
	mov.b r3,@(r0,r5)
	add 0xCA,r0; r0 set to 0x1B4
	mov.l r5,@(r0,r6)
	add 0x42,r0; r0 set to 0x1F6
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r6)
	add 0xAB,r0; r0 set to 0x1A1
	bra loc_8C09E68e
	mov.b r2,@(r0,r6)

loc_8c09e65a:
	mov.b @(0x05,r5),r0
	tst r0,r0
	bf loc_8c09e684
	mov.b @(0x05,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c09e684
	mov.w @(loc_8c09e6b6,pc),r0
	mov.b @(r0,r5),r0
	cmp/eq 0x0F,r0
	bf loc_8c09e684
	mov.w @(loc_8C09E6B8,pc),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c09e684
	mov.w @(loc_8C09E6BA,pc),r0
	mov.l @(r0,r5),r2
	mov.w @(loc_8C09E6BC,pc),r0
	mov.w @(r0,r2),r3
	tst r3,r3
	bf loc_8c09e688

loc_8c09e684:
	rts
	mov 0x00,r0

loc_8c09e688:
	mov 0x01,r0
	rts
	nop

;----------------------------------------------
loc_8C09E68E:
	mov 0x20,r3 ; r3 set to 0x20
	mov.w @(loc_8C09E6B6,pc),r0; r0 set to 0x2B2
	add r4,r3 ; r3 ??? bc r4 is ???
	mov.b @r3,r3
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x04,r6 ; r6 set to 0x04
	extu.b r3,r3
	shad r3, r2 ; r2 ??? bc r3 is ???
	mov.b @(r0,r5),r3
	not r2,r2
	and r2,r3
	mov.b r3,@(r0,r5)
	mov 0x02,r0; r0 set to 0x02
	mov.l @(loc_8C09E6DC,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r0,@(0x04,r4)
	jmp @r3
	mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09e6b0:
	#data 0x0130
loc_8c09e6b2:
	#data 0x00D0
loc_8C09E6B4:
	#data 0x01C8
loc_8C09E6B6:
	#data 0x02B2
loc_8c09e6b8:
	#data 0x02Ac
loc_8c09e6ba:
	#data 0x020C
loc_8c09e6bc:
	#data 0x0420
	#align4

loc_8c09e6c0:
	#data 0x8C289608
loc_8c09e6c4:
	#data 0x3FD55555
loc_8c09e6c8:
	#data 0x432B6DB6
loc_8C09E6CC:
	#data bank03.loc_8c03362c
loc_8C09E6D0:
	#data bank03.loc_8c033674
loc_8C09E6D4:
	#data bank04.loc_8c04CC1c
loc_8C09E6D8:
	#data bank03.loc_8c034dee
loc_8C09E6DC:
	#data bank03.loc_8c034e8c

;==============================================
;unused
loc_8c09e6e0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x64,PC),r2
	mov 0x06,r13
	mov.l r4,@r15
	mov.w @r2,r3
	cmp/gt r13,r3
	bt loc_8c09e6fc
	bra loc_8c09e72a
	mov 0x00,r0

loc_8c09e6fc:
	mov.w @(0x50,PC),r12
	mov 0x00,r14
	mov.l @(0x54,PC),r11

loc_8c09e702:
	mov 0x01,r6
	mov r6,r5
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c09e720
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x48,PC),r3
	mov.w r12,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c09e720:
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c09e702
	mov r14,r0
	nop 

loc_8c09e72a:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09E738:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09E760,pc),r1 ; r1 set to 0x8C156310
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.w @(loc_8C09E752,pc),r6 ; r6 set to 0x2A4
	mov.l @(r0,r1),r3
	add r5,r6 ; r6 ??? bc r5 is ???
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09E750:
	#data 0x2D00
loc_8C09E752:
	#data 0x02A4
	#align4

loc_8C09E754:
	#data 0x8C287AE8
loc_8C09E758:
	#data bank04.loc_8c044F12
loc_8C09E75C:
	#data loc_8c09E738
loc_8C09E760:
	#data bank15.loc_8c156310

;==============================================
loc_8C09E764:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x138,PC),r1
	sts.l pr,@-r15
	mov.w @(0x134,PC),r2
	add r14,r1
	mov.w @(0x132,PC),r0
	mov.l @(0x140,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0x12C,PC),r0
	mov 0x01,r7
	mov r14,r1
	add 0x50,r1
	mov.b r7,@(r0,r14)
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
	mov.w @(0x110,PC),r0
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
	mov.b @(r0,r5),r2
	mov 0x00,r13
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x24,r0
	mov.b r13,@(r0,r14)
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf.s loc_8c09e7e8
	mov 0xFF,r4
	mov.w @(0xDC,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c09e7e8
	mov.w @(0xD4,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c09e7e8
	mov.w @(0xCE,PC),r0
	mov.b @(r0,r5),r1
	tst r1,r1
	bt loc_8c09e7ee

loc_8C09E7E8:
	mov r4,r0
	nop 
	mov.b r0,@(0x3,r6)

loc_8C09E7EE:
	mov.w @(0xC2,PC),r0
	mov 0x42,r6
	mov 0x30,r3
	mov.b r6,@(r0,r14)
	add 0x01,r0
	mov.b r6,@(r0,r14)
	add 0x04,r0
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
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	shll r0
	mov r0,r6
	shll r6
	mova @(0x98,PC),r0
	mov.l @(0x90,PC),r2
	fmov @r0,fr4
	mova @(0x94,PC),r0
	fmov @r0,fr5
	mov r7,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov.w @(0x74,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt.s loc_8c09e852
	add r2,r6
	mova @(0x84,PC),r0
	fmov @r0,fr4
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)

loc_8C09E852:
	mov.w @r6+,r3
	mov 0x34,r0
	fmov @(r0,r5),fr3
	mova @(0x78,PC),r0
	lds r3,fpul
	fadd fr4,fr3
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr2
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.w @r6,r3
	fmov @(r0,r5),fr2
	mova @(0x68,PC),r0
	lds r3,fpul
	fadd fr5,fr2
	fmov @r0,fr0
	mov.l @(0x64,PC),r3
	mov 0x38,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x58,PC),r2
	mov 0x03,r6
	mov 0x17,r5
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C09E894:
	mov r4,r3
	mov.l @(loc_8C09E8E4,pc),r1 ; r1 set to 0x8C15631c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09e8a6:
	#data 0x00Dc
loc_8c09e8a8:
	#data 0x00C0
loc_8c09e8aa:
	#data 0x012C
loc_8c09e8ac:
	#data 0x01A3
loc_8c09e8ae:
	#data 0x01D0
loc_8c09e8b0:
	#data 0x01E9
loc_8c09e8b2:
	#data 0x019F
loc_8c09e8b4:
	#data 0x019c
loc_8c09e8b6:
	#data 0x0130
	#align4

loc_8C09E8B8:
	#data bank12.loc_8c129560
loc_8C09E8BC:
	#data bank12.loc_8c1294C8
loc_8C09E8C0:
	#data 0x8C2896B0
loc_8C09E8C4:
	#data bank15.loc_8c156208
loc_8C09E8C8:
	#data 0xC2B40000
loc_8C09E8Cc:
	#data 0x4313DB6d
loc_8C09E8d0:
	#data 0x42B40000
loc_8C09E8d4:
	#data 0x3FD55555
loc_8C09E8d8:
	#data 0x40092492
loc_8C09E8DC:
	#data bank04.loc_8c045748
loc_8C09E8E0:
	#data bank03.loc_8c034e8c
loc_8C09E8E4:
	#data bank15.loc_8c15631c

;==============================================
loc_8C09E8E8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C09E9DC,pc),r3 ; r3 set to 0x8C034DEe
	mov r6,r13
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09E978
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C09E9D2,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C09E914
	bra loc_8C09E916
	mov 0x1E,r3

loc_8c09e914:
	mov 0x1B,r3

loc_8c09e916:
	mov.w @(loc_8C09E9D4,pc),r0
	mov 0x10,r4
	mov 0x01,r2
	mov.l r3,@(r0,r14)
	add 0x70,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.b @(0x02,r13),r0
	extu.b r3,r3
	shad r3, r2
	or r2,r0
	mov.b r0,@(0x02,r13)
	mov.b @(0x04,r13),r0
	add 0xFF,r0
	mov.b r0,@(0x04,r13)
	mov.w @(loc_8c09e9d2,pc),r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c09e9e0,pc),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mova @(loc_8C09E9E4,pc),r0
	fmov.s @r0,fr2
	lds r2,fpul 
	float fpul,fr3
	fmul fr2,fr3
	mova @(loc_8C09E9E8,pc),r0
	fmov.s @r0,fr1
	mov 0x5C,r0
	fdiv fr1,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09E9D6,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c09e974
	mov r14,r4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c09e974:
	bsr loc_8c09ed86
	nop

loc_8c09e978:
	mov.l @r15,r2
	mov.b @(0x05,r2),r0
	tst r0,r0
	bf loc_8c09e99a
	mov.w @(loc_8C09E9D8,pc),r0
	mov.l @r15,r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt loc_8c09e99a
	mov.b @(0x03,r13),r0
	cmp/eq 0xFF,r0
	bt loc_8c09e99a
	mov.l @(loc_8C09E9EC,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c09e9c8

loc_8c09e99a:
	mov 0x04,r0
	mov r14,r4
	mov.b r0,@(0x05,r14)
	mov 0xFF,r0
	mov.b r0,@(0x03,r13)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x01,r2
	mov.b @(0x02,r13),r0
	mov 0x17,r5
	extu.b r3,r3
	shad r3, r2
	or r2,r0
	mov.b r0,@(0x02,r13)
	mov 0x05,r6
	mov.w @(loc_8C09E9DA,pc),r0
	mov.b @(r0,r14),r7
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c09e9f0,pc),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09e9c8:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c09e9d2:
	#data 0x01A3
loc_8C09E9D4:
	#data 0x00CC
loc_8C09E9D6:
	#data 0x0130
loc_8C09E9D8:
	#data 0x0420
loc_8C09E9DA:
	#data 0x0141
	#align4

loc_8c09e9dc:
	#data bank03.loc_8C034DEE
loc_8c09e9e0:
	#data bank15.loc_8c156238
loc_8C09E9E4:
	#data 0x3FD55555
loc_8C09E9E8:
	#data 0x47800000
loc_8C09E9EC:
	#data 0x8C2895F0
loc_8c09e9f0:
	#data bank03.loc_8c034f54

;==============================================
loc_8c09e9f4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r6,r11
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r11),r0
	tst r0,r0
	bf.s loc_8c09ea66
	mov r5,r12
	mov 0x68,r1
	add r14,r1
	fmov @r1,fr3
	mov 0x5C,r1
	add r14,r1
	fmov @r1,fr2
	mov 0x34,r0
	mov 0x6C,r1
	fadd fr3,fr2
	fmov @(r0,r14),fr3
	add r14,r1
	fadd fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fmov @r1,fr2
	fadd fr3,fr2
	fmov @(r0,r14),fr3
	fadd fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bf loc_8c09ea66
	mov.w @(0x1E,r14),r0
	mov.l @(0xD0,PC),r3
	mov r0,r1
	mov.w @(0x1C,r14),r0
	add r0,r1
	jsr @r3
	mov 0x0C,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/pz r0
	bt.s loc_8c09ea62
	mov r14,r4
	mov 0x0B,r0
	mov.w r0,@(0x1E,r14)

loc_8c09ea62:
	bsr loc_8c09ed86
	nop

loc_8c09ea66:
	mov.l @(0xB8,PC),r2
	mov 0x00,r13
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c09ea7c
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x92,PC),r0
	bra loc_8c09eb7c
	mov.b r13,@(r0,r14)

loc_8c09ea7c:
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c09eaae
	mov.w @(0x88,PC),r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	tst r3,r3
	bt.s loc_8c09eaae
	mov.l r3,@(r0,r14)
	mov.w @(0x7E,PC),r0
	mov.w @(r0,r12),r1
	tst r1,r1
	bt loc_8c09eaae
	mov.b @(0x5,r12),r0
	tst r0,r0
	bf loc_8c09eaae
	mov.b @(0x3,r11),r0
	cmp/eq 0xFF,r0
	bt loc_8c09eaae
	mov.l @(0x7C,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c09ead0

loc_8c09eaae:
	mov 0x04,r0
	mov.l @(0x74,PC),r3
	mov.b r0,@(0x5,r14)
	mov 0xFF,r0
	mov.b r0,@(0x3,r11)
	mov 0x05,r6
	lds.l @r15+,pr
	mov.w @(0x54,PC),r0
	mov 0x17,r5
	mov r14,r4
	mov.l @r15+,r10
	mov.b @(r0,r14),r7
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09ead0:
	mov.w @(0x42,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c09eb6a
	mov.b @(r0,r14),r3
	mov 0x01,r11
	tst r11,r3
	bf loc_8c09eaea
	mov.w @(0x34,PC),r0
	mov.l @(r0,r14),r10
	mov.b @(0x3,r10),r0
	tst r0,r0
	bt loc_8c09eb30

loc_8c09eaea:
	mov 0x02,r0
	mov.l @(0x3C,PC),r3
	mov.b r0,@(0x4,r14)
	mov r14,r5
	mov.w @(0x16,PC),r0
	mov 0x01,r6
	mov.w @(0x20,PC),r7
	add 0x34,r5
	mov.b r13,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09eb0c:
	#data 0x012C
loc_8c09eb0e:
	#data 0x019F
loc_8c09eb10:
	#data 0x00CC
loc_8c09eb12:
	#data 0x0420
loc_8c09eb14:
	#data 0x0141
loc_8c09eb16:
	#data 0x019E
loc_8c09eb18:
	#data 0x01B0
loc_8c09eb1a:
	#data 0x0088

loc_8c09eb1c:
	#data bank12.loc_8c1292d4
loc_8c09eb20:
	#data bank03.loc_8c03340c
loc_8c09eb24:
	#data 0x8c2895f0
loc_8c09eb28:
	#data bank03.loc_8c034f54
loc_8c09eb2c:
	#data bank10.loc_8c10235c

;==============================================
loc_8c09eb30:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xB2,PC),r0
	mov.b r11,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r14),r3
	mov 0x23,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xA8,PC),r0
	mov.w r0,@(0x1C,r14)
	mov 0x08,r0
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov.b r13,@(r0,r14)
	bsr loc_8c09ee00
	mov r14,r4
	mov.w @(0x9A,PC),r0
	mov.b @(r0,r10),r2
	tst r2,r2
	bf loc_8c09eb60
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c09eb7c

loc_8c09eb60:
	mov r11,r0
	nop 
	mov.w r0,@(0x1C,r14)
	bra loc_8c09eb7c
	mov.w r0,@(0x1E,r14)

loc_8c09eb6a:
	lds.l @r15+,pr
	mov.l @(0x8C,PC),r3
	mov r14,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c09eb7c:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c09eb8a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x5C,PC),r0
	mov r4,r14
	mov r5,r13
	mov.l r6,@r15
	mov.l @(r0,r14),r3
	mov.l r3,@(0x4,r15)
	bsr loc_8c09ee00
	mov r14,r4
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c09ebcc
	mov.w @(0x48,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c09ebcc
	mov.w @(0x40,PC),r0
	mov.l @(0x4,r15),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c09ebcc
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c09ebcc
	mov.l @(0x3C,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c09ec08

loc_8c09ebcc:
	mov 0x04,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	mov 0xFF,r0
	mov.l @r15,r3
	mov 0x17,r5
	mov 0x05,r6
	mov.b r0,@(0x3,r3)
	mov.w @(0x18,PC),r0
	mov.b @(r0,r14),r7
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x1C,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09ebec:
	#data 0x012D
loc_8c09ebee:
	#data 0x01E0
loc_8c09ebf0:
	#data 0x0411
loc_8c09ebf2:
	#data 0x01B0
loc_8c09ebf4:
	#data 0x019F
loc_8c09ebf6:
	#data 0x0420
loc_8c09ebf8:
	#data 0x0141
	#align4

loc_8c09ebfc:
	#data bank04.loc_8c045748
loc_8c09ec00:
	#data 0x8c2895f0
loc_8c09ec04:
	#data bank03.loc_8c034f54

;==============================================
loc_8c09ec08:
	mov.w @(0x116,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bf.s loc_8c09ec1c
	mov 0x01,r4
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)

loc_8c09ec1c:
	mov.w @(0x104,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.w @(0xFE,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf.s loc_8c09ec4c
	mov 0x08,r4
	mov.w @(0x1C,r14),r0
	mov.l @(0xF8,PC),r3
	mov r0,r1
	jsr @r3
	mov r4,r0
	shll2 r0
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov 0x03,r2
	mov.b r2,@(r0,r14)

loc_8c09ec4c:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09ec68
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.w @(0xCA,PC),r0
	extu.b r3,r3
	add 0x01,r3
	mov.w r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c09ec68:
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c09ebcc
	mov.l @r15,r2
	mov.b @(0x9,r2),r0
	tst r0,r0
	bf loc_8c09ebcc
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c09eccc
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c09eccc
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov 0x31,r3
	mov.w @(0x8A,PC),r0
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x8C,PC),r3
	mov.l r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x74,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c09eccc:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C09ECD6:
	mov.w @(loc_8C09ED2A,pc),r0; r0 set to 0x19e
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C09ECFc
	mov 0x02,r0; r0 set to 0x02
	mov r14,r5
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C09ED2C,pc),r0; r0 set to 0x12c
	mov r14,r4
	mov.w @(loc_8C09ED2E,pc),r7 ; r7 set to 0x88
	mov 0x01,r6 ; r6 set to 0x01
	mov.b r3,@(r0,r14)
	add 0x34,r5
	mov.l @(loc_8C09ED40,pc),r3 ; r3 set to 0x8C10235c
	jmp @r3
	mov.l @r15+,r14

loc_8C09ECFC:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C09ED1c
	mov 0x04,r0; r0 set to 0x04
	mov.l @(loc_8C09ED44,pc),r3 ; r3 set to 0x8C034F54
	mov.b r0,@(0x05,r14)
	mov r14,r4
	mov.w @(loc_8C09ED30,pc),r0; r0 set to 0x141
	mov 0x05,r6 ; r6 set to 0x05
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(r0,r14),r7
	jmp @r3
	mov.l @r15+,r14

loc_8C09ED1C:
	mov r14,r4
	bra loc_8C09EE00
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09ed22:
	#data 0x01d0
loc_8c09ed24:
	#data 0x012d
loc_8c09ed26:
	#data 0x012e
loc_8c09ed28:
	#data 0x01a1
loc_8c09ed2a:
	#data 0x019e
loc_8c09ed2c:
	#data 0x012c
loc_8c09ed2e:
	#data 0x0088
loc_8c09ed30:
	#data 0x0141
	#align4

loc_8C09ED34:
	#data bank12.loc_8c129128
loc_8C09ED38:
	#data 0x8C2896B0
loc_8C09ED3C:
	#data bank04.loc_8c045748
loc_8C09ED40:
	#data bank10.loc_8c10235c
loc_8C09ED44:
	#data bank03.loc_8c034F54

;==============================================
loc_8C09ED48:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x13C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c09ed60
	mov.w @(0x122,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09ed6a

loc_8C09ED60:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x116,PC),r0
	mov.b r3,@(r0,r14)

loc_8C09ED6A:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09ED70:
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r4),r2
	mov 0x01,r3 ; r3 set to 0x01
	mov.b @(0x02,r6),r0
	extu.b r2,r2
	shad r2, r3 ; r3 ??? bc r2 is ???
	not r3,r3
	and r3,r0; r0??? bc r3 is ???
	mov.l @(loc_8C09EE90,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	mov.b r0,@(0x02,r6)

;==============================================
loc_8C09ED86:
	mov.l @(0x10C,PC),r7
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	mov r0,r6
	shll r6
	shll r6
	mov r0,r1
	add r7,r6
	mov.w @r6+,r3
	mova @(0xFC,PC),r0
	fmov @r0,fr4
	mova @(0xFC,PC),r0
	lds r3,fpul
	mov.w @r6,r3
	fmov @r0,fr6
	float fpul,fr3
	lds r3,fpul
	mov.w @(0x1C,r4),r0
	mov.l @(0xF4,PC),r3
	add r0,r1
	fmov fr3,fr5
	float fpul,fr3
	fmul fr4,fr5
	fmov fr3,fr7
	fmul fr6,fr7
	jsr @r3
	mov 0x0C,r0
	mov r0,r5
	cmp/pz r5
	bt loc_8c09edc4
	mov 0x0B,r5

loc_8C09EDC4:
	shll r5
	fmov fr4,fr2
	shll r5
	add r7,r5
	mov.w @r5+,r3
	mova @(0xD4,PC),r0
	fmov @r0,fr8
	mov 0x68,r0
	lds r3,fpul
	mov.w @r5,r3
	float fpul,fr3
	lds r3,fpul
	mov 0x04,r3
	fmov fr3,fr4
	float fpul,fr3
	fmul fr2,fr4
	fmov fr6,fr2
	fmov fr3,fr6
	fmul fr2,fr6
	fsub fr5,fr4
	fsub fr7,fr6
	fdiv fr8,fr4
	fdiv fr8,fr6
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr6,@(r0,r4)
	mov 0x23,r0
	lds.l @r15+,pr
	rts 
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8c09ee00:
	mov.w @(loc_8C09EE82,pc),r0
	mov.w @(loc_8C09EE84,pc),r6
	mov.l @(loc_8C09EEAC,pc),r1
	mov.l @(loc_8C09EEA8,pc),r3
	mov.l r14,@-r15
	mov.l @(r0,r4),r5
	add 0x49,r0
	add r5,r6
	mov.b @(r0,r5),r7
	mov.l @(0x04,r6),r0
	mov.l @r6,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c09ee24
	extu.b r7,r7
	tst r7,r7

loc_8c09ee24:
	mov.w @(loc_8C09EE86,pc),r0
	mov.b @(r0,r5),r14
	mov.l @(loc_8c09eeb0,pc),r0
	extu.b r14,r14
	shll2 r14
	mov.l @(r0,r14),r14
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mova @(loc_8C09EE98,pc),r0
	fmov.s @r0,fr2
	mova @(loc_8C09EE9C,pc),r0
	extu.b r3,r3
	fmov.s @r0,fr1
	shll2 r3
	mov.w @(loc_8C09EE88,pc),r0
	shll r3
	add r3,r14
	mov.w @r14+,r3
	lds r3,fpul 
	mov.w @r14+,r3
	float fpul,fr3
	lds r3,fpul 
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	float fpul,fr3
	fmul fr2,fr4
	fmov fr3,fr5
	bt/s loc_8c09ee62
	fmul fr1,fr5
	fneg fr4

loc_8c09ee62:
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r5),fr3
	fadd fr5,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @r14+,r3
	tst r3,r3
	bt/s loc_8c09eeb4
	mov 0x24,r0
	bra loc_8c09eeb6
	mov 0x07,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09ee7e:
	#data 0x0141
loc_8c09ee80:
	#data 0x012C
loc_8C09EE82:
	#data 0x01B0
loc_8C09EE84:
	#data 0x0414
loc_8C09EE86:
	#data 0x01F9
loc_8C09EE88:
	#data 0x0130
	#align4

loc_8c09ee8c:
	#data bank03.loc_8c034dee
loc_8c09ee90:
	#data bank04.loc_8c0450c0
loc_8c09ee94:
	#data bank15.loc_8c156208
loc_8C09EE98:
	#data 0x3FD55555
loc_8C09EE9C:
	#data 0x40092492
loc_8c09eea0:
	#data bank12.loc_8c1292d4
loc_8c09eea4:
	#data 0x40800000
loc_8C09EEA8:
	#data 0x20000000
loc_8C09EEAC:
	#data 0x04000000
loc_8c09eeb0:
	#data bank15.loc_8c156300

;==============================================
loc_8c09eeb4:
	mov 0x00,r3

loc_8c09eeb6:
	mov.b r3,@(r0,r4)
	mov 0x17,r5
	mov.l @(loc_8c09eec4,pc),r3
	mov 0x04,r6
	mov.w @r14,r7
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09eec4:
#data bank03.loc_8c034f54

;==============================================
;Unused
loc_8c09eec8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x104,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c09eeec
	mov r0,r4
	mov.w @(0xE2,PC),r3
	mov 0x26,r0
	mov.l @(0xF4,PC),r2
	mov.w r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c09eeec:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
loc_8C09EEF4:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09EFDC,pc),r1 ; r1 set to 0x8C156350
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C09EF08:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xB2,PC),r1
	sts.l pr,@-r15
	mov.w @(0xB0,PC),r0
	add r14,r1
	mov.w @(0xAA,PC),r2
	mov.l @(0xC4,PC),r3
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
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x88,PC),r3
	mov.b @(r0,r13),r2
	mov 0x44,r4
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x60,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	jsr @r3
	mov.b r4,@(r0,r14)
	mov 0x20,r1
	add r14,r1
	and 0x03,r0
	mov.b r0,@r1
	mov 0x21,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr4
	mov.w @(0x46,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c09ef92
	mova @(0x60,PC),r0
	fmov @r0,fr4

loc_8C09EF92:
	mov 0x34,r0
	mov.l @(0x5C,PC),r3
	fmov @(r0,r13),fr3
	mov 0x1A,r6
	mov 0x17,r5
	mov r14,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x2C,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C09EFB2:
	mov r4,r3
	mov.l @(loc_8C09EFF8,pc),r1 ; r1 set to 0x8C15635c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09efc4:
	#data 0x2d01
loc_8c09efc6:
	#data 0x00dc
loc_8c09efc8:
	#data 0x00c0
loc_8c09efca:
	#data 0x012c
loc_8c09efcc:
	#data 0x01a3
loc_8c09efce:
	#data 0x019c
loc_8c09efd0:
	#data 0x0130
loc_8c09efd2:
	#data 0x041c
	#align4

loc_8C09EFD4:
	#data bank04.loc_8c044F12
loc_8C09EFD8:
	#data loc_8c09EEF4
loc_8C09EFDC:
	#data bank15.loc_8c156350
loc_8C09EFE0:
	#data bank12.loc_8c129560
loc_8C09EFE4:
	#data bank12.loc_8c1294C8
loc_8C09EFE8:
	#data bank03.loc_8c03319e
loc_8C09EFEc:
	#data 0xC2A00000
loc_8C09EFf0:
	#data 0x42A00000
loc_8C09EFF4:
	#data bank03.loc_8c034e8c
loc_8C09EFF8:
	#data bank15.loc_8c15635c

;==============================================
loc_8C09EFFC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C09F14C,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09F06c
	mov.b @(0x05,r14),r0
	mov 0x20,r4 ; r4 set to 0x20
	mov.l @(loc_8C09F150,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x1C,r6 ; r6 set to 0x1c
	mov.w @(loc_8C09F13E,pc),r0; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	bsr loc_8C09F202
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???
	bsr loc_8C09F254
	mov r14,r4
	mov 0x20,r0; r0 set to 0x20
	mov.l @(loc_8C09F154,pc),r3 ; r3 set to 0x8C2896B0
	mov.b @(r0,r14),r2
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C09F140,pc),r0; r0 set to 0x1A1
	add 0x3E,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C09F158,pc),r2 ; r2 set to 0x8C045748
	jmp @r2
	mov.l @r15+,r14

loc_8C09F06C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09F074:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C09F14C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r5,r13
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r13,r5
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	bsr loc_8C09F254
	mov r14,r4
	mov.l @(loc_8C09F15C,pc),r2 ; r2 set to 0x8C0332E0
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8C09F0D6
	mov 0x02,r0; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C09F142,pc),r0; r0 set to 0x12c
	bra loc_8C09F136
	mov.b r3,@(r0,r14)

loc_8C09F0D6:
	mov.w @(loc_8C09F144,pc),r0; r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8C09F106
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C09F158,pc),r3 ; r3 set to 0x8C045748
	add 0x01,r0; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C09F144,pc),r0; r0 set to 0x41c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov 0x38,r0; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C09F150,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x1D,r6 ; r6 set to 0x1d
	mov 0x17,r5 ; r5 set to 0x17
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C09F106:
	mov.w @(loc_8C09F146,pc),r0; r0 set to 0x19f
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C09F122
	mov 0x03,r0; r0 set to 0x03
	mov.l @(loc_8C09F150,pc),r3 ; r3 set to 0x8C034E8c
	mov r14,r4
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	mov 0x1E,r6 ; r6 set to 0x1e
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C09F122:
	mov.w @(loc_8C09F148,pc),r0; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C09F136
	lds.l @r15+,pr
	mov.l @(loc_8C09F158,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C09F136:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09F13E:
	#data 0x013e
loc_8C09F140:
	#data 0x01A1
loc_8C09F142:
	#data 0x012c
loc_8C09F144:
	#data 0x041c
loc_8C09F146:
	#data 0x019f
loc_8C09F148:
	#data 0x019e
	#align4

loc_8C09F14C:
	#data bank03.loc_8c034dee
loc_8C09F150:
	#data bank03.loc_8c034e8c
loc_8C09F154:
	#data 0x8C2896B0
loc_8C09F158:
	#data bank04.loc_8c045748
loc_8C09F15C:
	#data bank03.loc_8c0332E0

;==============================================
;Player
loc_8C09F160:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x134,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09f1b6
	bsr loc_8c09f202
	mov r14,r4
	mov.w @(0x116,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c09f1a6
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x00,r4
	mov.w @(0x10A,PC),r0
	add 0x3E,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x10C,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C09F1A6:
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0xF8,PC),r3
	mov 0x1C,r6
	add 0xFF,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C09F1B6:
	mov.w @(0xD8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c09f1d0
	mov.l @(0xE4,PC),r3
	mov 0x03,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov 0x1E,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

loc_8C09F1D0:
	lds.l @r15+,pr
	mov.l @(0xD4,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C09F1DA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c09f1f6
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x9E,PC),r0
	mov.b r3,@(r0,r14)

loc_8C09F1F6:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09F1FC:
	mov.l @(loc_8C09F2AC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8c09f202:
	mov 0x20,r0
	mov.l @(loc_8c09f2b0,pc),r3
	mov.b @(r0,r4),r5
	mova @(loc_8C09F2B4,pc),r0
	fmov.s @r0,fr5
	mova @(loc_8C09F2B8,pc),r0
	extu.b r5,r5
	fmov.s @r0,fr2
	shll r5
	mov.w @(loc_8C09F296,pc),r0
	shll2 r5
	add r3,r5
	mov.l @r5+,r2
	lds r2,fpul 
	mov.w @(r0,r4),r2
	float fpul,fr3
	tst r2,r2
	fmul fr2,fr3
	fmov fr3,fr4
	bt/s loc_8c09f22e
	fdiv fr5,fr4
	fneg fr4

loc_8c09f22e:
	mov 0x5C,r0
	fldi0 fr3
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8c09f2bc,pc),r0
	mov.l @r5,r3
	fmov.s @r0,fr2
	mov 0x60,r0
	lds r3,fpul 
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C09F2C0,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	rts
	fmov.s fr3,@(r0,r4)

loc_8C09F254:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12 ; r12 set to 0x01
	mov.w @(loc_8C09F298,pc),r2 ; r2 set to 0x5A4
	mov r12,r3 ; r3 set to 0x01
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x00,r9 ; r9 set to 0x00
	mov.l r8,@-r15
	mov 0x03,r8 ; r8 set to 0x03
	fmov.s fr15,@-r15
	mov.l @(loc_8C09F2C4,pc),r13 ; r13 set to 0x8C268340
	sts.l pr,@-r15
	mov.b @(0x02,r5),r0
	mov.l @(loc_8C09F2A4,pc),r11 ; r11 set to 0x8C034E8c
	extu.b r0,r0
	and r12,r0
	neg r0,r0
	shad r0, r3 ; r3 ??? bc r0is ???
	mul.l r2,r3
	mova @(loc_8C09F2BC,pc),r0 ; r0 set to loc_8c09F2Bc
	fmov.s @r0,fr15
	sts macl,r3
	add r3,r13 ; r13 ??? bc r3 is ???
	bra loc_8C09F340
	mov r9,r10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09f28e:
	#data 0x019e
loc_8c09f290:
	#data 0x01a1
loc_8c09f292:
	#data 0x019f
loc_8c09f294:
	#data 0x012c
loc_8c09f296:
	#data 0x0130
loc_8C09F298:
	#data 0x05A4
	#align4

loc_8C09F29C:
	#data bank03.loc_8c034dee
loc_8C09F2a0:
	#data 0x8C2896B0
loc_8C09F2A4:
	#data bank03.loc_8c034e8c
loc_8C09F2A8:
	#data bank04.loc_8c045748
loc_8C09F2AC:
	#data bank04.loc_8c0450C0
loc_8C09F2B0:
	#data bank15.loc_8c156330
loc_8c09f2b4:
	#data 0x47800000
loc_8c09f2b8:
	#data 0x3FD55555
loc_8C09F2BC:
	#data 0x40092492
loc_8c09f2c0:
	#data 0xBF9A4924
loc_8C09F2C4:
	#data 0x8C268340

;==============================================
loc_8C09F2C8:
	mov.b @r13,r2
	tst r2,r2
	bt loc_8c09f33a
	mov.w @(0x86,PC),r0
	mov.b @(r0,r13),r2
	add 0x01,r0
	mov.b @(r0,r13),r4
	mov 0x34,r0
	extu.b r2,r2
	fmov @(r0,r14),fr5
	extu.b r4,r3
	add r3,r2
	lds r2,fpul
	extu.b r4,r4
	float fpul,fr3
	lds r4,fpul
	fmov fr3,fr4
	fmul fr15,fr4
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr0
	fmov @(r0,r14),fr2
	fsub fr3,fr5
	float fpul,fr3
	fsub fr0,fr2
	fmov fr15,fr0
	fmac fr0,fr3,fr2
	fmov fr5,fr0
	fmov fr2,fr6
	fsub fr4,fr6
	fmov fr4,fr2
	fmul fr4,fr2
	fmov fr6,fr3
	fmul fr6,fr3
	fmac fr0,fr5,fr3
	fcmp/gt fr3,fr2
	bf loc_8c09f328
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c09f33a
	mov 0x17,r5
	mov.b r12,@(r0,r14)
	mov 0x1B,r6
	jsr @r11
	mov r14,r4
	bra loc_8c09f344
	nop 

loc_8C09F328:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c09f33a
	mov 0x17,r5
	mov.b r9,@(r0,r14)
	mov 0x1C,r6
	jsr @r11
	mov r14,r4

loc_8C09F33A:
	mov.w @(0x1C,PC),r3
	add 0x01,r10
	add r3,r13

loc_8c09f340:
	cmp/ge r8,r10
	bf loc_8c09f2c8

loc_8c09f344:
	lds.l @r15+,pr 
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
loc_8c09f358:
	#data 0x013C
loc_8c09f35a:
	#data 0x0B48

;==============================================
;Unused
loc_8c09f35c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x14C,PC),r2
	mov 0x04,r13
	mov.l r4,@r15
	mov.w @r2,r3
	cmp/gt r13,r3
	bt loc_8c09f378
	bra loc_8c09f3a6
	mov 0x00,r0

loc_8c09f378:
	mov.w @(0x12C,PC),r12
	mov 0x00,r14
	mov.l @(0x13C,PC),r11

loc_8c09f37e:
	mov 0x01,r6
	mov r6,r5
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c09f39c
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x130,PC),r3
	mov.w r12,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c09f39c:
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c09f37e
	mov r14,r0
	nop 

loc_8c09f3a6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C09F3B4:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C09F4C4,pc),r1 ; r1 set to 0x8C15636c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14


;==============================================
loc_8C09F3C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xD6,PC),r1
	sts.l pr,@-r15
	mov.w @(0xD4,PC),r0
	add r14,r1
	mov.w @(0xCE,PC),r2
	mov.l @(0xEC,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0xCA,PC),r0
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
	mov.w @(0xAE,PC),r0
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
	mov 0x40,r5
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x31,r0
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x76,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x90,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.w @(r0,r13),r3
	mov r13,r5
	add 0x01,r3
	mov.w r3,@(r0,r14)
	bsr loc_8c09f580
	mov r14,r4
	mov r13,r5
	bsr loc_8c09f5cc
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf.s loc_8c09f466
	mov 0x32,r4
	mov 0x35,r4

loc_8C09F466:
	mov.w @(0x46,PC),r0
	mov.l @(0x64,PC),r3
	mov.b @(r0,r14),r2
	add 0xFE,r0
	extu.b r2,r2
	add r2,r4
	mov.b r4,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x10,r2
	mov.w @(0x1A,PC),r0
	mov.w @(r0,r14),r1
	or r2,r1
	mov.w r1,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(0x30,PC),r1
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8c09f4a8:
	#data 0x2d02
loc_8c09f4aa:
	#data 0x00dc
loc_8c09f4ac:
	#data 0x00c0
loc_8c09f4ae:
	#data 0x012c
loc_8c09f4b0:
	#data 0x01a3
loc_8c09f4b2:
	#data 0x019c
loc_8c09f4b4:
	#data 0x01ac
	#align4

loc_8c09f4b8:
	#data 0x8C287AE8
loc_8C09F4BC:
	#data bank04.loc_8c044F12
loc_8C09F4C0:
	#data loc_8c09F3B4
loc_8C09F4C4:
	#data bank15.loc_8c15636c
loc_8C09F4C8:
	#data bank12.loc_8c129560
loc_8C09F4CC:
	#data bank12.loc_8c1294C8
loc_8c09f4d0:
	#data 0x8C2896B0
loc_8C09F4D4:
	#data bank04.loc_8c045748

;==============================================
loc_8C09F4D8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r5),r0
	mov.w @(loc_8C09F5B2,pc),r4 ; r4 set to 0x2A4
	tst r0,r0
	bf/s loc_8C09F560
	add r5,r4 ; r4 ??? bc r5 is ???
	mov.w @(loc_8C09F5B4,pc),r0; r0 set to 0x1E9
	mov.b @(r0,r5),r0; r0??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C09F560
	mov.w @(loc_8C09F5B6,pc),r0; r0 set to 0x159
	mov.b @(r0,r5),r0; r0??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8C09F560
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov 0x31,r0; r0 set to 0x31
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C09F5B8,pc),r0; r0 set to 0x12d
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x12e
	mov.w @(r0,r5),r2
	add 0x01,r2
	mov.w r2,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C09F554
	mov.b @(0x05,r4),r0
	cmp/pz r0
	bt loc_8C09F53e
	mov.b @(0x05,r14),r0
	add 0x01,r0; r0 set to 0x12f
	mov.b r0,@(0x05,r14)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r5),r0; r0??? bc r5 is ???
	extu.b r0,r0
	neg r0,r0
	add 0x04,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09F53E:
	bsr loc_8C09F5Cc
	mov r14,r4
	mov.w @(loc_8C09F5BA,pc),r0; r0 set to 0x19e
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C09F574
	lds.l @r15+,pr
	mov.l @(loc_8C09F5C4,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c09f554:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c09f56c

loc_8C09F560:
	mov 0x02,r0; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C09F5BC,pc),r0; r0 set to 0x12c
	bra loc_8C09F574
	mov.b r3,@(r0,r14)

loc_8C09F56C:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c09f5cc
	mov.l @r15+,r14

loc_8C09F574:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09F57A:
	mov.l @(loc_8C09F5C8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C09F580:
	mov.w @(0x3A,PC),r6
	mov 0x04,r7
	add r4,r6
	mov 0x00,r4

loc_8C09F588:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	add 0x01,r4
	fmov fr3,@r6
	cmp/ge r7,r4
	fmov @(r0,r5),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r6)
	mov.w @(0x22,PC),r0
	mov.w @(r0,r5),r3
	add 0xF3,r0
	extu.w r3,r3
	mov.l r3,@(0x8,r6)
	mov.b @(r0,r5),r2
	extu.b r2,r2
	mov.l r2,@(0xC,r6)
	bf.s loc_8c09f588
	add 0x10,r6
	rts 
	nop 

;----------------------------------------------
loc_8C09F5B2:
	#data 0x02A4
loc_8C09F5B4:
	#data 0x01E9
loc_8C09F5B6:
	#data 0x0159
loc_8C09F5B8:
	#data 0x012d
loc_8C09F5BA:
	#data 0x019e
loc_8C09F5BC:
	#data 0x012c
loc_8C09F5Be:
	#data 0x0088
loc_8C09F5c0:
	#data 0x0158
	#align4

loc_8C09F5C4:
	#data bank04.loc_8c045748
loc_8C09F5C8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C09F5CC:
	mov.l r14,@-r15
	mov 0x34,r0; r0 set to 0x34
	mov.w @(loc_8C09F664,pc),r14 ; r14 set to 0x88
	mov.l r13,@-r15
	mov r4,r13
	add r13,r14 ; r14 ??? bc r13 is ???
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	fmov.s @r14,fr3
	fmov.s fr3,@(r0,r13)
	mov 0x04,r0; r0 set to 0x04
	fmov.s @(r0,r14),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s fr3,@(r0,r13)
	mov.w @(loc_8C09F666,pc),r0; r0 set to 0x158
	mov.l @(0x08,r14),r3
	mov.w r3,@(r0,r13)
	mov.b @(r0,r13),r6
	add 0x01,r0; r0 set to 0x159
	mov.l @(loc_8C09F668,pc),r3 ; r3 set to 0x8C034F54
	mov.b @(r0,r13),r5
	mov.l @(0x0C,r14),r7
	jsr @r3
	mov r13,r4
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x03,r5 ; r5 set to 0x03

loc_8C09F602:
	mov.l @(loc_8C09F66C,pc),r3 ; r3 set to 0x8C1294BC, r3 set to 0x8C1294Bc
	mov r14,r2
	mov r14,r1
	add 0x10,r2
	jsr @r3
	mov 0x10,r0; r0 set to 0x10, r0 set to 0x10
	add 0x01,r4 ; r4 set to 0x01
	cmp/ge r5,r4
	bf/s loc_8C09F602
	add 0x10,r14
	mov 0x20,r0; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	tst r3,r3
	bf loc_8C09F63a
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r12),fr3
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@r14
	fmov.s @(r0,r12),fr3
	mov 0x04,r0; r0 set to 0x04, r0 set to 0x04
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09F666,pc),r0; r0 set to 0x158, r0 set to 0x158
	mov.w @(r0,r12),r3
	add 0xF3,r0; r0 set to 0x14B, r0 set to 0x14b
	extu.w r3,r3
	mov.l r3,@(0x08,r14)
	bra loc_8C09F656
	mov.b @(r0,r12),r2

loc_8C09F63A:
	mov.l @(0x08,r13),r4
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	mov 0x38,r0; r0 set to 0x38
	fmov.s fr3,@r14
	fmov.s @(r0,r4),fr3
	mov 0x04,r0; r0 set to 0x04
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09F666,pc),r0; r0 set to 0x158
	mov.w @(r0,r4),r3
	add 0xF3,r0; r0 set to 0x14b
	extu.w r3,r3
	mov.l r3,@(0x08,r14)
	mov.b @(r0,r4),r2

loc_8C09F656:
	extu.b r2,r2
	mov.l r2,@(0x0C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09F664:
	#data 0x0088
loc_8C09F666:
	#data 0x0158
	#align4

loc_8C09F668:
	#data bank03.loc_8c034F54
loc_8C09F66C:
	#data bank12.loc_8c1294Bc

;==============================================
;unused
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0xC0,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09f6b6
	mov r0,r4
	mov.w @(0xAC,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0xAC,PC),r3
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

loc_8c09f6b6:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8c09f6be:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.b r0,@(0x08,r15)
	mov r6,r0
	nop
	mov 0x01,r6
	mov.l @(loc_8c09f744,pc),r3
	mov.b r0,@(0x04,r15)
	mov r6,r5
	mov.b r7,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c09f70e
	mov r0,r4
	mov.w @(loc_8C09F742,pc),r2
	mov 0x26,r0
	mov.l @(loc_8c09f748,pc),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov 0x21,r2
	mov.l @(0x18,r14),r3
	add r4,r2
	mov.l r3,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x01,r14),r0
	mov.b r0,@(0x01,r4)
	mov.b @(0x08,r15),r0
	mov.b r0,@r1
	mov.b @(0x04,r15),r0
	mov.b r0,@r2
	mov 0x23,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c09f70e:
	mov r4,r0
	nop
	add 0x0C,r15
	lds.l @r15+,pr 
	rts
	mov.l @r15+,r14

;==============================================
loc_8C09F71A:
	mov.l r14,@-r15
	mov 0x20,r0; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C09F74C,pc),r0; r0 set to 0x8C156384
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C09F730:
	mov r4,r3
	mov.l @(loc_8C09F750,pc),r1 ; r1 set to 0x8C156390
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09f742:
	#data 0x2E00
	#align4

loc_8C09F744:
	#data bank04.loc_8c044F12
loc_8C09F748:
	#data loc_8c09F71a
loc_8C09F74C:
	#data bank15.loc_8c156384
loc_8C09F750:
	#data bank15.loc_8c156390

;==============================================
loc_8C09F754:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(loc_8C09F8C2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C09F8C2,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C09F8D4,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C09F8C4,pc),r0; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???
	mov.w @(loc_8C09F8C6,pc),r0; r0 set to 0x12c
	mov 0x01,r12 ; r12 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09F8C8,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09F8D8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0x35,r2 ; r2 set to 0x35
	mov.w @(loc_8C09F8C6,pc),r0; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	mov 0x31,r0; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C09F8CA,pc),r0; r0 set to 0x1A1
	mov.l @(loc_8C09F8DC,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov 0x42,r4 ; r4 set to 0x42
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C09F8CC,pc),r0; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov.l @(loc_8C09F8E0,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x05,r6 ; r6 set to 0x05
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov r12,r0; r0 set to 0x01
	nop
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C09F80A:
	mov 0x24,r0; r0 set to 0x24, r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C09F8CE,pc),r0; r0 set to 0x159, r0 set to 0x159
	mov.b @(r0,r5),r0; r0??? bc r5 is ???, r0??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x09,r0
	bt loc_8C09F82a
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	bra loc_8C09FC18
	mov.l @r15+,r14

loc_8C09F82A:
	mov 0x34,r0; r0 set to 0x34
	mov.l @(loc_8C09F8E8,pc),r6 ; r6 set to 0x8C156378
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0; r0 set to 0x3c
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C09F8E4,pc),r0 ; r0 set to loc_8c09F8E4
	fmov.s @r0,fr4
	mov.w @(loc_8C09F8D0,pc),r0; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C09F86a
	mov r6,r4 ; r4 set to 0x8C156378
	mov 0x21,r3 ; r3 set to 0x21
	fmov fr4,fr0; r0??
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4 ; r4 ??? bc r3 is ???
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8C09F886
	fmac fr0,fr3,fr2

loc_8C09F86A:
	mov 0x21,r2 ; r2 set to 0x21
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.b @r2,r2
	mov 0x34,r0; r0 set to 0x34
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

loc_8C09F886:
	mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
	fmov.s fr2,@(r0,r14)
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov r14,r2
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C09F8F0,pc),r1 ; r1 set to 0x8C1563A0, r1 set to 0x8C1563A0
	add r0,r2
	mov r14,r4
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r6
	mov.w @(0x02,r6),r0
	mov r0,r3 ; r3 set to 0x38, r3 set to 0x38
	lds r3,fpul
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	mova @(loc_8C09F8EC,pc),r0 ; r0 set to loc_8c09F8EC, r0 set to loc_8c09F8Ec
	fmov.s @r0,fr0; r0??, r0??
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09F8C2:
	#data 0x00Dc
loc_8C09F8C4:
	#data 0x00C0
loc_8C09F8C6:
	#data 0x012c
loc_8C09F8C8:
	#data 0x01A3
loc_8C09F8CA:
	#data 0x01A1
loc_8C09F8CC:
	#data 0x019c
loc_8C09F8CE:
	#data 0x0159
loc_8C09F8D0:
	#data 0x0130
	#align4

loc_8C09F8D4:
	#data bank12.loc_8c129560
loc_8C09F8D8:
	#data bank12.loc_8c1294C8
loc_8C09F8DC:
	#data 0x8C2896B0
loc_8C09F8E0:
	#data bank03.loc_8c034e8c
loc_8C09F8E4:
	#data 0x3FD55555
loc_8C09F8E8:
	#data bank15.loc_8c156378
loc_8C09F8EC:
	#data 0x40092492
loc_8C09F8F0:
	#data bank15.loc_8c1563A0

;==============================================
loc_8C09F8F4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x00,r7 ; r7 set to 0x00
	mov.l r4,@r15
	mov r7,r6 ; r6 set to 0x00
	bsr loc_8C09F6Be
	mov 0x02,r5 ; r5 set to 0x02
	mov.l @r15,r2
	mov.b @(0x05,r2),r0
	add 0x01,r0
	mov.b r0,@(0x05,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C09F912:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C09FA46,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov.l @(loc_8C09FA54,pc),r2 ; r2 set to 0x8C034DEe
	add r5,r3 ; r3 ??? bc r5 is ???
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov 0x01,r6 ; r6 set to 0x01
	mov 0x03,r7 ; r7 set to 0x03
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(0x1C,r14),r0
	and r0,r6 ; r6 ??? bc r0is ???
	and r0,r7 ; r7 ??? bc r0is ???
	bsr loc_8C09F6Be
	mov r14,r4
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	mov.b @r2,r3
	tst r3,r3
	bt loc_8C09F95a
	mov.b @(0x05,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	mov r14,r4
	mov 0x06,r6 ; r6 set to 0x06
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C09FA58,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8C09F95A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09F962:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C09FA54,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09F98a
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C09FC18
	mov.l @r15+,r14

loc_8C09F98A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09F992:
	mov r4,r3
	mov.l @(loc_8C09FA5C,pc),r1 ; r1 set to 0x8C1563Ac
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09F9A4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C09FA48,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C09FA48,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C09FA60,pc),r3 ; r3 set to 0x8C129560
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r5,@r15
	mov.b @(0x04,r14),r0
	mov.l @(0x14,r14),r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C09FA4A,pc),r0; r0 set to 0xC0
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8C09FA4C,pc),r0; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0; r0 set to 0x50
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09FA4E,pc),r0; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0; r0 set to 0x1A4
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0; r0 set to 0x30
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C09FA64,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0; r0 set to 0x0c
	mov 0x24,r0; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
	mov.b r2,@(r0,r14)
	mov 0x30,r2 ; r2 set to 0x30
	mov.w @(loc_8C09FA4C,pc),r0; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C09FA50,pc),r0; r0 set to 0x1A1
	mov.l @(loc_8C09FA68,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0; r0 set to 0x1Ac
	mov.w r5,@(r0,r14)
	add 0xF2,r0; r0 set to 0x19e
	mov.b r5,@(r0,r14)
	add 0x26,r0; r0 set to 0x1C4
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0; r0 set to 0xC4
	shll r0; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x23,r0; r0 set to 0x23
	mov.b @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C09FA6c
	mov 0x42,r5 ; r5 set to 0x42
	mov.w @(loc_8C09FA52,pc),r0; r0 set to 0x19c
	bra loc_8C09FA72
	mov.b r5,@(r0,r14)

;##############################################
loc_8C09FA46:
	#data 0x02A4
loc_8C09FA48:
	#data 0x00Dc
loc_8C09FA4A:
	#data 0x00C0
loc_8C09FA4C:
	#data 0x012c
loc_8C09FA4E:
	#data 0x01A3
loc_8C09FA50:
	#data 0x01A1
loc_8C09FA52:
	#data 0x019c
	#align4

loc_8C09FA54:
	#data bank03.loc_8c034dee
loc_8C09FA58:
	#data bank03.loc_8c034e8c
loc_8C09FA5C:
	#data bank15.loc_8c1563Ac
loc_8C09FA60:
	#data bank12.loc_8c129560
loc_8C09FA64:
	#data bank12.loc_8c1294C8
loc_8C09FA68:
	#data 0x8C2896B0

;----------------------------------------------
loc_8C09FA6C:
	mov.w @(loc_8C09FB86,pc),r0; r0 set to 0x19c
	mov 0x60,r1 ; r1 set to 0x60
	mov.b r1,@(r0,r14)

loc_8C09FA72:
	mov.w @(loc_8C09FB88,pc),r0; r0 set to 0x19D, r0 set to 0x19d
	mov 0x1A,r3 ; r3 set to 0x1A, r3 set to 0x1a
	mov.b r5,@(r0,r14)
	add 0xA2,r0; r0 set to 0x13F, r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0; r0 set to 0x13E, r0 set to 0x13e
	mov.b r3,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0; r0 set to 0x3C, r0 set to 0x3c
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C09FB8A,pc),r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C09FAA4
	mov.l @(loc_8C09FB90,pc),r1 ; r1 set to 0xC2555555, r1 set to 0xC2555555
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34
	lds r1,fpul
	bra loc_8C09FAAc
	fsts fpul,fr3

loc_8C09FAA4:
	mov.l @(loc_8C09FB94,pc),r1 ; r1 set to 0x42555555
	mov 0x34,r0; r0 set to 0x34
	lds r1,fpul
	fsts fpul,fr3

loc_8C09FAAC:
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C09FB8A,pc),r0; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C09FAC0
	mova @(loc_8C09FB98,pc),r0 ; r0 set to loc_8c09FB98, r0 set to loc_8c09FB98
	bra loc_8C09FAC4
	fmov.s @r0,fr3

loc_8C09FAC0:
	mova @(loc_8C09FB9C,pc),r0 ; r0init to loc_8c09FB9c
	fmov.s @r0,fr3

loc_8C09FAC4:
	mov 0x68,r0; r0 set to 0x68, r0 set to 0x68
	mov.l @(loc_8C09FBA0,pc),r13 ; r13 set to 0x8C034E8C, r13 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r0; r0??? bc r14 is ???, r0??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C09FAE6
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	jsr @r13
	mov r14,r4
	bra loc_8C09FAFa
	nop

loc_8C09FAE6:
	mov 0x21,r0; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C09FAF4
	mov 0x17,r5 ; r5 set to 0x17
	bra loc_8C09FAF6
	mov 0x02,r6

loc_8C09FAF4:
	mov 0x03,r6 ; r6 set to 0x03

loc_8C09FAF6:
	jsr @r13
	mov r14,r4

loc_8C09FAFA:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C09FB06:
	mov 0x24,r0; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C09FB8C,pc),r0; r0 set to 0x159, r0 set to 0x159, r0 set to 0x159, r0 set to 0x159
	mov.b @(r0,r5),r0; r0??? bc r5 is ???, r0??? bc r5 is ???, r0??? bc r5 is ???, r0??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x09,r0
	bt loc_8C09FB26
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	bra loc_8C09FC2a
	mov.l @r15+,r14

loc_8C09FB26:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C09FBA4,pc),r1 ; r1 set to 0x8C1563Bc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C09FB36:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x68,r1 ; r1 set to 0x68
	mov r4,r14
	mov 0x5C,r0; r0 set to 0x5c
	mov.w @(loc_8C09FB8E,pc),r2 ; r2 set to 0x2A4
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r5,@r15
	mov r5,r3
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l r2,@(0x04,r15)
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov.l @(0x14,r14),r5
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	bsr loc_8C09FC42
	mov r14,r4
	mov.l @(loc_8C09FBA8,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C09FBAC,pc),r3 ; r3 set to 0x8C045748
	jsr @r3
	mov r14,r4
	mov.l @(0x04,r15),r2 ; r2 ??? bc r15 is ???
	mov.b @r2,r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bt loc_8C09FBBe
	mov.b @(0x05,r14),r0
	add 0x01,r0; r0 set to 0x5d
	mov.b r0,@(0x05,r14)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r14),r0; r0??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_8C09FBB0
	mov 0x17,r5 ; r5 set to 0x17
	bra loc_8C09FBB2
	mov 0x01,r6

;##############################################
loc_8C09FB86:
	#data 0x019c
loc_8C09FB88:
	#data 0x019d
loc_8C09FB8A:
	#data 0x0130
loc_8C09FB8C:
	#data 0x0159
loc_8C09FB8E:
	#data 0x02A4
	#align4

loc_8C09FB90:
	#data 0xC2555555
loc_8C09FB94:
	#data 0x42555555
loc_8C09FB98:
	#data 0xC2480000
loc_8C09FB9C:
	#data 0x42480000
loc_8C09FBA0:
	#data bank03.loc_8c034e8c
loc_8C09FBA4:
	#data bank15.loc_8c1563Bc
loc_8C09FBA8:
	#data bank03.loc_8c034dee
loc_8C09FBAC:
	#data bank04.loc_8c045748

;----------------------------------------------
loc_8C09FBB0:
	mov 0x04,r6 ; r6 set to 0x04

loc_8C09FBB2:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8C09FCB4,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	jmp @r2
	mov.l @r15+,r14

loc_8C09FBBE:
	mov.l @(loc_8C09FCB8,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C09FBDa
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8C09FC2a
	mov.l @r15+,r14

loc_8C09FBDA:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09FBE2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	mov.l @(0x14,r14),r5
	bsr loc_8C09FC42
	mov r14,r4
	mov.l @(loc_8C09FCBC,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09FC10
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C09FC2a
	mov.l @r15+,r14

loc_8C09FC10:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09FC18:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09FCB0,pc),r0; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C09FCC0,pc),r3 ; r3 set to 0x8C042008
	jmp @r3
	mov 0x2B,r5

loc_8C09FC2A:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09FCB0,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C09FC38:
	mov.l @(loc_8C09FCC4,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C09FCB0,pc),r0; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

loc_8C09FC42:
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0; r0 set to 0x3c
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x20,r0; r0 set to 0x20
	mov.b @(r0,r4),r0; r0??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C09FC80
	mov.w @(loc_8C09FCB2,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r2
	tst r2,r2
	bf loc_8C09FC70
	mov.l @(loc_8C09FCC8,pc),r1 ; r1 set to 0xC1D55555
	mov 0x34,r0; r0 set to 0x34
	lds r1,fpul
	bra loc_8C09FC78
	fsts fpul,fr3

loc_8C09FC70:
	mov.l @(loc_8C09FCCC,pc),r1 ; r1 set to 0x41D55555
	mov 0x34,r0; r0 set to 0x34
	lds r1,fpul
	fsts fpul,fr3

loc_8C09FC78:
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	bra loc_8C09FCA0
	fmov.s fr2,@(r0,r4)

loc_8C09FC80:
	mov.w @(loc_8C09FCB2,pc),r0; r0 set to 0x130
	mov.w @(r0,r4),r2
	tst r2,r2
	bf loc_8C09FC92
	mov.l @(loc_8C09FCD0,pc),r1 ; r1 set to 0xC2555555
	mov 0x34,r0; r0 set to 0x34
	lds r1,fpul
	bra loc_8C09FC9a
	fsts fpul,fr3

loc_8C09FC92:
	mov.l @(loc_8C09FCD4,pc),r1 ; r1 set to 0x42555555
	mov 0x34,r0; r0 set to 0x34
	lds r1,fpul
	fsts fpul,fr3

loc_8C09FC9A:
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)

loc_8C09FCA0:
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov 0x34,r0; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C09FCB0:
	#data 0x012c
loc_8C09FCB2:
	#data 0x0130
	#align4

loc_8C09FCB4:
	#data bank03.loc_8c034e8c
loc_8C09FCB8:
	#data bank03.loc_8c03340c
loc_8C09FCBC:
	#data bank03.loc_8c034dee
loc_8C09FCC0:
	#data bank04.loc_8c042008
loc_8C09FCC4:
	#data bank04.loc_8c0450C0
loc_8C09FCC8:
	#data 0xC1D55555
loc_8C09FCCC:
	#data 0x41D55555
loc_8C09FCD0:
	#data 0xC2555555
loc_8C09FCD4:
	#data 0x42555555

;==============================================
;unused
loc_8c09fcd8:
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
	bt.s loc_8c09fd1e
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

loc_8c09fd1e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C09FD26:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C09FD62,pc),r0; r0 set to 0x159
	mov.l @(0x18,r14),r5
	mov.b @(r0,r5),r0; r0??? bc r5 is ???
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8C09FD3c
	mov r14,r4
	bra loc_8C09FF18
	mov.l @r15+,r14

loc_8C09FD3C:
	mov 0x20,r0; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_8C09FD6C,pc),r0; r0 set to 0x8C1563D8
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C09FD4E:
	mov r4,r3
	mov.l @(loc_8C09FD70,pc),r1 ; r1 set to 0x8C1563Dc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c09fd60:
	#data 0x2E01
loc_8C09FD62:
	#data 0x0159
	#align4

loc_8C09FD64:
	#data bank04.loc_8c044F12
loc_8C09FD68:
	#data loc_8c09FD26
loc_8C09FD6C:
	#data bank15.loc_8c1563D8
loc_8C09FD70:
	#data bank15.loc_8c1563Dc

;==============================================
loc_8C09FD74:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x15E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x156,PC),r2
	add 0x01,r0
	mov.l @(0x160,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x150,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x14C,PC),r0
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
	mov.w @(0x130,PC),r0
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
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x10C,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	mov 0x00,r4
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0x10C,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov.w @(0xF6,PC),r0
	mov.l @(0x108,PC),r3
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
	mov 0x42,r4
	mov.w @(0xD4,PC),r0
	mov 0x17,r5
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.w @(0xC2,PC),r0
	extu.b r6,r6
	mov.b @(r0,r13),r2
	mov.l @(0xD4,PC),r0
	extu.b r2,r2
	shll2 r2
	add r2,r6
	mov.l @(0xD0,PC),r2
	mov.b @(r0,r6),r6
	jsr @r2
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt.s loc_8c09fe4a
	mov r13,r5
	mov.w @(0xA6,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C09FE4A:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

;==============================================
loc_8C09FE52:
	mov r4,r3
	mov.l @(loc_8C09FF04,pc),r1 ; r1 set to 0x8C1563Ec
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C09FE64:
	mov.l r14,@-r15
	mov 0x24,r0; r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mov r14,r3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0; r0 set to 0x38
	add r0,r3
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.l r3,@-r15
	mov 0x21,r3 ; r3 set to 0x21
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C09FF08,pc),r0; r0 set to 0x8C1563C4
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r2
	mova @(loc_8C09FF0C,pc),r0 ; r0 set to loc_8c09FF0c
	fmov.s @r0,fr0; r0??
	lds r2,fpul
	mov.l @r15+,r2
	float fpul,fr3
	fmov.s @r2,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	mov.l @(loc_8C09FF10,pc),r3 ; r3 set to 0x8C045748
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C09FF14,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C09FEC8
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C09FED0
	mov.l @r15+,r14

loc_8C09FEC8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09FED0:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C09FEE2,pc),r0; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)
;----------------------------------------------
loc_8c09fede:
	#data 0x00dc
loc_8c09fee0:
	#data 0x00c0
loc_8c09fee2:
	#data 0x012c
loc_8c09fee4:
	#data 0x01a3
loc_8c09fee6:
	#data 0x01a1
loc_8c09fee8:
	#data 0x019c
loc_8c09feea:
	#data 0x0130
	#align4

loc_8C09FEEC:
	#data bank12.loc_8c129560
loc_8C09FEF0:
	#data bank12.loc_8c1294C8
loc_8C09FEF4:
	#data bank15.loc_8c1563D4
loc_8C09FEF8:
	#data 0x8C2896B0
loc_8C09FEFC:
	#data bank15.loc_8c1563Cc
loc_8C09FF00:
	#data bank03.loc_8c034e8c
loc_8C09FF04:
	#data bank15.loc_8c1563Ec
loc_8C09FF08:
	#data bank15.loc_8c1563C4
loc_8C09FF0C:
	#data 0x40092492
loc_8C09FF10:
	#data bank04.loc_8c045748
loc_8C09FF14:
	#data bank03.loc_8c034dee

;==============================================
loc_8C09FF18:
	mov.l @(loc_8C09FF24,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C09FF22,pc),r0; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C09FF22:
	#data 0x012c
	#align4
loc_8C09FF24:
	#data bank04.loc_8c0450C0

;==============================================
;UNUSED
loc_8c09ff28:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0xB4,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c09ff6e
	mov r0,r4
	mov.w @(0x9E,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0xA0,PC),r3
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

loc_8c09ff6e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C09FF76:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(0x6C,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c09ffb8
	mov r0,r4
	mov.w @(0x52,PC),r2
	mov 0x26,r0
	mov.l @(0x58,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8C09FFB8:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C09FFC4:
	mov.l r14,@-r15
	mov 0x20,r0; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C09FFF8,pc),r0; r0 set to 0x8C156440
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C09FFDA:
	mov r4,r3
	mov.l @(loc_8C09FFFC,pc),r1 ; r1 set to 0x8C156448
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c09ffec:
	#data 0x2E02
	#align4

loc_8C09FFF0:
	#data bank04.loc_8c044F12
loc_8C09FFF4:
	#data loc_8c09FFC4
loc_8C09FFF8:
	#data bank15.loc_8c156440
loc_8C09FFFC:
	#data bank15.loc_8c156448
